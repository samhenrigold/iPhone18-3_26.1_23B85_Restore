void specialized $defer #1 <A>() in LazySubviewPrefetcher.update(info:owner:)(_BYTE *a1, uint64_t a2, char a3)
{
  if ((*a1 & 1) == 0)
  {
    v5 = *(a2 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 48) = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v5 + 2);

      *(a2 + 48) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9 + 1, 1, v5);

      v5 = *(a2 + 48);
    }

    v8 = *(v5 + 2);
    v7 = *(v5 + 3);
    if (v8 >= v7 >> 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v5);
      *(a2 + 48) = v5;
    }

    *(v5 + 2) = v8 + 1;
    *(*(a2 + 48) + v8 + 32) = a3;
  }
}

void specialized LazySubviewPrefetcher.makeLayoutPrefetchResult(info:offset:owner:)(char a2@<W2>, _BYTE *a3@<X8>, uint64_t x3_0@<X3>)
{
  v5 = a2 & 0xA;
  if ((byte_1F00451C8 & 1) != 0 || (a2 & 0xA) == 0 || (LOBYTE(v9) = 1, v6 = a2, v7 = x3_0, specialized LazySubviewPrefetcher.makeLayoutPrefetchResult(info:offset:axis:owner:)(a2, x3_0, 0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &v10, &type metadata for LazyHStackLayout, v9, _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE12proposeSizes2at8subviews7context5cache2inySi_AA01_C15Layout_SubviewsVAA01_cM17_PlacementContextVAfA01_cm9_ProposedG0VztFAA0c6HStackM0V_Tt1B5, outlined destroy of _LazyStack_Cache<LazyHStackLayout>, COERCE_CGFLOAT(&unk_1F004C5E0), closure #1 in LazyLayoutViewCache.signalPrefetch()partial apply), a2 = v6, x3_0 = v7, (v8 = v10) == 0))
  {
    v8 = 0;
    if ((byte_1F00451C9 & 1) == 0 && v5)
    {
      LOBYTE(v9) = 1;
      specialized LazySubviewPrefetcher.makeLayoutPrefetchResult(info:offset:axis:owner:)(a2, x3_0, 0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &v10, &type metadata for LazyHStackLayout, v9, _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE12proposeSizes2at8subviews7context5cache2inySi_AA01_C15Layout_SubviewsVAA01_cM17_PlacementContextVAfA01_cm9_ProposedG0VztFAA0c6HStackM0V_Tt1B5, outlined destroy of _LazyStack_Cache<LazyHStackLayout>, COERCE_CGFLOAT(&unk_1F004C5E0), closure #1 in LazyLayoutViewCache.signalPrefetch()partial apply);
      v8 = v10;
    }
  }

  *a3 = v8;
}

{
  v5 = a2 & 5;
  v6 = byte_1F00451F0 != 1 || v5 == 0;
  if (v6 || (LOBYTE(v11) = 2, v7 = a2, v8 = x3_0, specialized LazySubviewPrefetcher.makeLayoutPrefetchResult(info:offset:axis:owner:)(a2, x3_0, 1, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &v12, &type metadata for LazyVStackLayout, v11, _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE12proposeSizes2at8subviews7context5cache2inySi_AA01_C15Layout_SubviewsVAA01_cM17_PlacementContextVAfA01_cm9_ProposedG0VztFAA0c6VStackM0V_Tt1B5, outlined destroy of _LazyStack_Cache<LazyVStackLayout>, COERCE_CGFLOAT(&unk_1F004C4A0), partial apply for closure #1 in LazyLayoutViewCache.signalPrefetch()), a2 = v7, x3_0 = v8, (v9 = v12) == 0))
  {
    if (byte_1F00451F1 != 1 || v5 == 0)
    {
      v9 = 0;
    }

    else
    {
      LOBYTE(v11) = 2;
      specialized LazySubviewPrefetcher.makeLayoutPrefetchResult(info:offset:axis:owner:)(a2, x3_0, 1, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &v12, &type metadata for LazyVStackLayout, v11, _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE12proposeSizes2at8subviews7context5cache2inySi_AA01_C15Layout_SubviewsVAA01_cM17_PlacementContextVAfA01_cm9_ProposedG0VztFAA0c6VStackM0V_Tt1B5, outlined destroy of _LazyStack_Cache<LazyVStackLayout>, COERCE_CGFLOAT(&unk_1F004C4A0), partial apply for closure #1 in LazyLayoutViewCache.signalPrefetch());
      v9 = v12;
    }
  }

  *a3 = v9;
}

void specialized LazySubviewPrefetcher.makeLayoutPrefetchResult(info:offset:axis:owner:)(char a1@<W2>, uint64_t a2@<X3>, int a3@<W4>, unint64_t *a4@<X6>, uint64_t (*a5)(void)@<X7>, _BYTE *a6@<X8>, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, __int128 *, char *, uint64_t *, uint64_t, uint64_t, unint64_t), void (*a10)(char *), CGFloat a11, uint64_t a12)
{
  LODWORD(v155) = a3;
  v156 = a2;
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, a4, a5, a7, type metadata accessor for _LazyStack_Cache);
  v16 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v18 = v131 - v17;
  v157 = *(v12 + 64);
  type metadata accessor for LazyLayoutViewCache();
  Value = AGGraphGetValue();
  v20 = *(*Value + 280);
  v158 = *(*Value + 288);
  v21 = floor(*(*AGGraphGetValue() + 296));
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_163;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  if (v21 >= 9.22337204e18)
  {
    goto LABEL_164;
  }

  if (v20 < 0 || v158 < 0)
  {
    goto LABEL_11;
  }

  if ((v156 * v157) >> 64 != (v156 * v157) >> 63)
  {
    goto LABEL_166;
  }

  v22 = v21 * 0.75;
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  if (v156 * v157 > v22)
  {
LABEL_11:
    *a6 = 0;
    return;
  }

  v149 = v156 * v157;
  if (v155)
  {
    if (!Axis.Set.contains(_:)(SwiftUI_Axis_vertical) || (a1 & 5) == 0)
    {
      goto LABEL_11;
    }

    v151 = v18;
    v152 = a7;
    v132 = a6;
    v23 = SwiftUI_Edge_bottom;
  }

  else
  {
    if (!Axis.Set.contains(_:)(SwiftUI_Axis_horizontal) || (a1 & 0xA) == 0)
    {
      goto LABEL_11;
    }

    v151 = v18;
    v152 = a7;
    v132 = a6;
    v23 = SwiftUI_Edge_trailing;
  }

  v150 = Edge.Set.contains(_:)(v23);
  AGGraphGetValue();

  v148 = *AGGraphGetValue();

  type metadata accessor for CGPoint(0);
  v24 = AGGraphGetValue();
  v25 = *v24;
  v26 = v24[1];
  v27 = AGGraphGetValue();
  v28 = *v27;
  v29 = v27[1];
  v30 = AGGraphGetValue();
  v31 = *v30;
  v32 = *(v30 + 8);
  v33 = *(v30 + 16);
  v34 = *(v30 + 24);
  v35 = *(v30 + 32);
  v36 = *(v30 + 40);

  AGGraphGetValue();

  v37 = *AGGraphGetValue();

  v131[1] = *v12;
  AGGraphGetValue();
  v180 = 1;
  v38 = v35 - (v25 - v33);
  v166 = 0u;
  v167 = 0u;
  v39 = v36 - (v26 - v34);
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  v173 = 1;
  v174 = v31;
  v175 = v32;
  v145 = v32;
  v144 = v25;
  v176 = v25;
  v177 = v26;
  v142 = v26;
  v178 = v38;
  v179 = v39;
  specialized ViewTransform.forEach(inverted:_:)(0, &v174, &v166, 0.0);
  v40 = *&v167;
  if (v173)
  {
    v40 = v28;
  }

  v140 = v40;
  if (v173)
  {
    v41 = v29;
  }

  else
  {
    v41 = *(&v167 + 1);
  }

  v139 = v41;
  if (v173)
  {
    v42 = 0.0;
  }

  else
  {
    v42 = *&v168;
  }

  v138 = v42;
  if (v173)
  {
    v43 = 0.0;
  }

  else
  {
    v43 = *(&v168 + 1);
  }

  if (v173)
  {
    v44 = 0.0;
  }

  else
  {
    v44 = *&v169;
  }

  v136 = v44;
  v137 = v43;
  if (v173)
  {
    v45 = 0.0;
  }

  else
  {
    v45 = *(&v169 + 1);
  }

  v135 = v45;
  if (v173)
  {
    v46 = v28;
  }

  else
  {
    v46 = *&v172;
  }

  if (v173)
  {
    v47 = v29;
  }

  else
  {
    v47 = *(&v172 + 1);
  }

  v153 = v47;
  v154 = v46;
  if (v173)
  {
    v48 = 0.0;
  }

  else
  {
    v48 = *(&v171 + 1);
  }

  if (v173)
  {
    v49 = 0.0;
  }

  else
  {
    v49 = *&v171;
  }

  v50 = *(&v170 + 1);
  if (v173)
  {
    v51 = v28;
  }

  else
  {
    v51 = *&v170;
  }

  v146 = v29;
  v147 = v28;
  if (v173)
  {
    v50 = v29;
    v52 = 0.0;
  }

  else
  {
    v52 = *&v166;
  }

  if (v173)
  {
    v53 = 0.0;
  }

  else
  {
    v53 = *(&v166 + 1);
  }

  v133 = v50;
  v134 = v51;
  if (v37 == 1)
  {
    v54 = v52;
    v55 = v53;
    v56 = v28 - CGRectGetMaxX(*(&v50 - 3));
    v141 = v49 + v56 - v52;
    v143 = v48 + v53 - v53;
    v52 = v56;
  }

  else
  {
    v141 = v49;
    v143 = v48;
  }

  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v166 = 0u;
  v173 = 1;
  v174 = v31;
  v175 = v145;
  v176 = v144;
  v177 = v142;
  v178 = v38;
  v179 = v39;
  specialized ViewTransform.forEach(inverted:_:)(0, &v174, &v166, v142);
  if (v37)
  {
    v58 = *(&v166 + 1);
    v57 = *&v166;
    v60 = *(&v170 + 1);
    v59 = *&v170;
    if (v173)
    {
      v58 = 0.0;
      v57 = 0.0;
      v60 = v146;
      v59 = v147;
    }

    CGRectGetMaxX(*&v57);
  }

  v61 = AGGraphGetValue();
  v62 = *(*v61 + 232);
  v63 = *(*v61 + 240);
  v65 = *(*v61 + 248);
  v64 = *(*v61 + 256);
  *&v166 = v52;
  *(&v166 + 1) = v53;
  *&v167 = v140;
  *(&v167 + 1) = v139;
  *&v168 = v138;
  *(&v168 + 1) = v137;
  *&v169 = v136;
  *(&v169 + 1) = v135;
  *&v170 = v134;
  *(&v170 + 1) = v133;
  v66 = v141;
  v67 = v143;
  *&v171 = v141;
  *(&v171 + 1) = v143;
  *&v172 = v154;
  *(&v172 + 1) = v153;
  if (v148)
  {
    ScrollGeometry.outsetForAX(limit:)(__PAIR128__(*&v146, *&v147));
    v67 = *(&v171 + 1);
    v66 = *&v171;
    v153 = *(&v172 + 1);
    v154 = *&v172;
  }

  v181.origin.x = v62;
  v181.origin.y = v63;
  v181.size.width = v65;
  v181.size.height = v64;
  IsNull = CGRectIsNull(v181);
  v69 = 0.0;
  v70 = 0.0;
  if (v150)
  {
    if (!IsNull)
    {
      if (v155)
      {
        v71 = v64;
      }

      else
      {
        v71 = v65;
      }

      if (v155)
      {
        v72 = v63;
      }

      else
      {
        v72 = v62;
      }

      v73 = v72 + v71;
      if (v73 >= v72)
      {
        v74 = v72;
      }

      else
      {
        v74 = v73;
      }

      if (v72 > v73)
      {
        v73 = v72;
      }

      if (v74 <= v73)
      {
        v70 = v73;
      }
    }

    v182.origin.x = v66;
    v182.origin.y = v67;
    v76 = v153;
    v75 = v154;
    v182.size.width = v154;
    v182.size.height = v153;
    v77 = v12;
    if (!CGRectIsNull(v182))
    {
      if (v155)
      {
        v78 = v76;
      }

      else
      {
        v78 = v75;
      }

      if (v155)
      {
        v79 = v67;
      }

      else
      {
        v79 = v66;
      }

      v80 = v79 + v78;
      if (v80 >= v79)
      {
        v81 = v79;
      }

      else
      {
        v81 = v80;
      }

      if (v79 > v80)
      {
        v80 = v79;
      }

      if (v81 <= v80)
      {
        v69 = v80;
      }
    }

    if (v69 >= v70)
    {
      goto LABEL_161;
    }
  }

  else
  {
    if (!IsNull)
    {
      if (v155)
      {
        v82 = v64;
      }

      else
      {
        v82 = v65;
      }

      if (v155)
      {
        v83 = v63;
      }

      else
      {
        v83 = v62;
      }

      v84 = v83 + v82;
      if (v83 + v82 >= v83)
      {
        v85 = v83;
      }

      else
      {
        v85 = v83 + v82;
      }

      if (v83 <= v84)
      {
        v83 = v84;
      }

      if (v85 <= v83)
      {
        v70 = v85;
      }
    }

    v183.origin.x = v66;
    v183.origin.y = v67;
    v87 = v153;
    v86 = v154;
    v183.size.width = v154;
    v183.size.height = v153;
    if (!CGRectIsNull(v183))
    {
      if (v155)
      {
        v88 = v87;
      }

      else
      {
        v88 = v86;
      }

      if (v155)
      {
        v89 = v67;
      }

      else
      {
        v89 = v66;
      }

      v90 = v89 + v88;
      if (v89 + v88 >= v89)
      {
        v91 = v89;
      }

      else
      {
        v91 = v89 + v88;
      }

      if (v89 <= v90)
      {
        v89 = v90;
      }

      if (v91 <= v89)
      {
        v69 = v91;
      }
    }

    v77 = v12;
    if (v70 >= v69)
    {
      goto LABEL_161;
    }
  }

  v155 = a10;
  v92 = *MEMORY[0x1E698D3F8];
  AGGraphGetValue();

  LazyLayoutViewCache.subviews(context:)(v92, &v166);

  v93 = *(**AGGraphGetValue() + 400);

  v93(v16, v16);

  if (v150)
  {
    v94 = v149 + v158 + 1;
    v95 = v77;
    v96 = v151;
    goto LABEL_131;
  }

  v97 = (v156 + 1) * v157;
  if (((v156 + 1) * v157) >> 64 == v97 >> 63)
  {
    v94 = v20 - v97;
    v98 = v20 - v97 < 0;
    v96 = v151;
    if (v98)
    {
      goto LABEL_160;
    }

    v95 = v77;
LABEL_131:
    v165 = MEMORY[0x1E69E7CC0];
    v99 = AGGraphGetValue();
    v100 = *v99;
    v101 = *(v99 + 8);
    v102 = *(v99 + 20);
    LOBYTE(v174) = *(v99 + 16);
    a9(v94, &v166, v96, &v165, v100, v101, v174 | (v102 << 32));
    v103 = v165;
    v104 = *(v165 + 16);
    if (v104)
    {
      v151 = v96;
      v156 = a12;
      v154 = a11;
      if (v157 != v104)
      {
        *(v95 + 64) = v104;
      }

      v105 = 0;
      v106 = (v103 + 64);
      v158 = v103;
      while (1)
      {
        if (v105 >= *(v103 + 16))
        {
          goto LABEL_165;
        }

        v108 = *(v106 - 4);
        if (*(v108 + 224) == 1)
        {
          break;
        }

LABEL_138:
        ++v105;
        v106 += 48;
        if (v104 == v105)
        {

          v126 = AGGraphGetValue();
          v127 = *v126;
          v128 = *(*v126 + 156);
          swift_beginAccess();
          v129 = *(v127 + 32);

          LOBYTE(v129) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutF033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt2g5(v129);
          swift_endAccess();
          LOBYTE(v159[0]) = 10;
          v130 = swift_allocObject();
          *(v130 + 16) = v128;
          *(v130 + 24) = v129 & 1;
          static Update.enqueueAction(reason:_:)(v159, v156, v130);

          v155(v151);
          outlined destroy of _LazyLayout_Subviews(&v166);
          *v132 = 2;
          return;
        }
      }

      v109 = (v108 + 264);
      v110 = (v108 + 257);
      v111 = 0uLL;
      v112 = 0uLL;
      if ((*(v108 + 296) & 1) == 0)
      {
        v111 = *v109;
        v112 = *(v108 + 280);
        v163[0] = *(v108 + 241);
        *(v163 + 3) = *(v108 + 244);
        v161[0] = *v110;
        *(v161 + 3) = *(v108 + 260);
      }

      v113 = *(v106 - 3);
      v115 = *(v106 - 1);
      v116 = *v106;
      v164 = *(v106 - 16);
      v114 = v164;
      v162 = v116;
      v160 = 0;
      *(v108 + 232) = v113;
      *(v108 + 240) = v114;
      *(v108 + 241) = v163[0];
      *(v108 + 244) = *(v163 + 3);
      *(v108 + 248) = v115;
      *(v108 + 256) = v116;
      *v110 = v161[0];
      *(v108 + 260) = *(v161 + 3);
      *v109 = v111;
      *(v108 + 280) = v112;
      *(v108 + 296) = 0;
      swift_beginAccess();
      v117 = *(v108 + 16);
      swift_unownedRetainStrong();
      if (!v117)
      {
        goto LABEL_171;
      }

      v118 = *(v117 + 228);
      swift_retain_n();

      *(v108 + 208) = v118;
      v119 = *(v108 + 16);
      v120 = swift_unownedRetainStrong();
      if (!v119)
      {
        goto LABEL_172;
      }

      if (((*(*v119 + 360))(v120) & 1) == 0)
      {
        goto LABEL_152;
      }

      if (one-time initialization token for v7 != -1)
      {
        swift_once();
      }

      v121 = static Semantics.v7;
      if (one-time initialization token for forced != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (byte_1ED53C51C == 1)
      {
        v122 = dyld_program_sdk_at_least();
        v103 = v158;
        if ((v122 & 1) == 0)
        {
LABEL_152:

LABEL_153:
          v107 = 0;
          goto LABEL_137;
        }
      }

      else
      {
        v103 = v158;
        if (static Semantics.forced < v121)
        {
          goto LABEL_152;
        }
      }

      swift_beginAccess();
      v123 = v119[4];
      BloomFilter.init(hashValue:)(&type metadata for UsingGraphicsRenderer);
      v124 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA21UsingGraphicsRendererV_Tt0B5(v123, v159[0]);
      if (v124)
      {
        v125 = *(v124 + 72);

        if (v125)
        {
          goto LABEL_153;
        }
      }

      else
      {
      }

      v107 = 1;
LABEL_137:
      *(v108 + 212) = v107;

      goto LABEL_138;
    }

LABEL_160:
    v155(v96);
    outlined destroy of _LazyLayout_Subviews(&v166);
LABEL_161:
    *v132 = 0;
    return;
  }

LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
}

uint64_t specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(double a1, double a2, double a3, double a4)
{
  v72 = *MEMORY[0x1E69E9840];
  v57 = type metadata accessor for OSSignpostID();
  v58 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v49[-v10];
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v11 = static Signpost.bodyInvoke;
    v12 = word_1ED539040;
    v13 = HIBYTE(word_1ED539040);
    v14 = byte_1ED539042;
    v15 = static os_signpost_type_t.begin.getter();
    v68 = v11;
    LOBYTE(v69) = v12;
    BYTE1(v69) = v13;
    BYTE2(v69) = v14;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v56 = *(&v11 + 1);
    LODWORD(v60) = v15;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_18DDAB4C0;
    v17 = AGTypeID.description.getter();
    v19 = v18;
    v20 = MEMORY[0x1E69E6158];
    *(v16 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v22 = v21;
    *(v16 + 64) = v21;
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    v23 = specialized static Tracing.libraryName(defining:)();
    *(v16 + 96) = v20;
    *(v16 + 104) = v22;
    *(v16 + 72) = v23;
    *(v16 + 80) = v24;
    v61 = v16;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v13)
    {
      v67 = v60;
      v65 = _signpostLog;
      v66 = &dword_18D018000;
      *&v68 = v11;
      *(&v68 + 1) = v56;
      LOBYTE(v69) = v12;
      v63[0] = "%{public}@.body [in %{public}@]";
      v63[1] = 31;
      v64 = 2;
      v62 = v61;
      v25 = v50;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v67, &v66, &v65, &v68, v50, v63, &v62);
      (*(v58 + 8))(v25, v57);
LABEL_34:

      break;
    }

    if (v11 == 20)
    {
      v26 = 3;
    }

    else
    {
      v26 = 4;
    }

    v27 = bswap32(v11) | (4 * WORD1(v11));
    v28 = v60;
    v29 = v58 + 16;
    v51 = *(v58 + 16);
    v30 = v51(v59, v50, v57);
    v31 = 0;
    LOBYTE(v63[0]) = 1;
    v55 = 16 * *(&v11 + 1);
    v58 = v29;
    v56 = (v29 - 8);
    v54 = v61 + 32;
    v53 = v11;
    v52 = *(&v11 + 1);
LABEL_11:
    v60 = v49;
    MEMORY[0x1EEE9AC00](v30);
    v33 = &v49[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v34 = v33 + 8;
    v35 = v26;
    v36 = v33 + 8;
    do
    {
      *(v36 - 1) = 0;
      *v36 = 0;
      v36 += 16;
      --v35;
    }

    while (v35);
    v37 = v54 + 40 * v31;
    while (1)
    {
      v38 = *(v61 + 16);
      if (v31 == v38)
      {
        LOBYTE(v63[0]) = 0;
LABEL_19:
        v42 = v53;
        if (v53 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v33[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v33[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v33[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v42 != 20 && v33[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v43 = *v56;
        v44 = v59;
        v45 = v57;
        (*v56)(v59, v57);
        v46 = __swift_project_value_buffer(v45, static OSSignpostID.continuation);
        v30 = v51(v44, v46, v45);
        v26 = v52;
        if ((v63[0] & 1) == 0)
        {
          v47 = v57;
          v43(v59, v57);
          v43(v50, v47);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v31 >= v38)
      {
        break;
      }

      ++v31;
      outlined init with copy of AnyTrackedValue(v37, &v68);
      v39 = v70;
      v40 = v71;
      __swift_project_boxed_opaque_existential_1(&v68, v70);
      *(v34 - 1) = CVarArg.kdebugValue(_:)(v27 | v28, v39, v40);
      *v34 = v41 & 1;
      v34 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v68);
      v37 += 40;
      if (!--v26)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  *&v68 = a1;
  *(&v68 + 1) = a2;
  v69 = a3;
  v70 = *&a4;
  LOWORD(v71) = 256;
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>(0);
  return AGGraphSetOutputValue();
}

double specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(_OWORD *a1)
{
  v47 = a1;
  v72 = *MEMORY[0x1E69E9840];
  v54 = type metadata accessor for OSSignpostID();
  v55 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v46[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v48 = &v46[-v3];
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v4 = static Signpost.bodyInvoke;
    v5 = word_1ED539040;
    v6 = HIBYTE(word_1ED539040);
    v7 = byte_1ED539042;
    v8 = static os_signpost_type_t.begin.getter();
    v66 = v4;
    v67 = v5;
    v68 = v6;
    v69 = v7;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v57 = *(&v4 + 1);
    LODWORD(v58) = v8;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_18DDAB4C0;
    v10 = AGTypeID.description.getter();
    v12 = v11;
    v13 = MEMORY[0x1E69E6158];
    *(v9 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v15 = v14;
    *(v9 + 64) = v14;
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    v16 = specialized static Tracing.libraryName(defining:)();
    *(v9 + 96) = v13;
    *(v9 + 104) = v15;
    *(v9 + 72) = v16;
    *(v9 + 80) = v17;
    v59 = v9;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v6)
    {
      v65 = v58;
      v63 = _signpostLog;
      v64 = &dword_18D018000;
      *&v66 = v4;
      *(&v66 + 1) = v57;
      v67 = v5;
      v61[0] = "%{public}@.body [in %{public}@]";
      v61[1] = 31;
      v62 = 2;
      v60 = v59;
      v18 = v48;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v65, &v64, &v63, &v66, v48, v61, &v60);
      (*(v55 + 8))(v18, v54);
LABEL_34:

      break;
    }

    if (v4 == 20)
    {
      v19 = 3;
    }

    else
    {
      v19 = 4;
    }

    v20 = bswap32(v4) | (4 * WORD1(v4));
    v21 = v58;
    v22 = v55 + 16;
    v49 = *(v55 + 16);
    v23 = v49(v56, v48, v54);
    v24 = 0;
    LOBYTE(v61[0]) = 1;
    v58 = v19;
    v52 = 16 * v19;
    v55 = v22;
    v53 = (v22 - 8);
    v51 = v59 + 32;
    v50 = v4;
LABEL_11:
    v57 = v46;
    MEMORY[0x1EEE9AC00](v23);
    v26 = &v46[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v27 = v26 + 8;
    v28 = v58;
    v29 = v26 + 8;
    do
    {
      *(v29 - 1) = 0;
      *v29 = 0;
      v29 += 16;
      --v28;
    }

    while (v28);
    v30 = v51 + 40 * v24;
    v31 = v58;
    while (1)
    {
      v32 = *(v59 + 16);
      if (v24 == v32)
      {
        LOBYTE(v61[0]) = 0;
LABEL_19:
        v36 = v50;
        if (v50 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v26[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v26[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v26[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v36 != 20 && v26[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v37 = *v53;
        v38 = v56;
        v39 = v54;
        (*v53)(v56, v54);
        v40 = __swift_project_value_buffer(v39, static OSSignpostID.continuation);
        v23 = v49(v38, v40, v39);
        if ((v61[0] & 1) == 0)
        {
          v41 = v54;
          v37(v56, v54);
          v37(v48, v41);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v24 >= v32)
      {
        break;
      }

      ++v24;
      outlined init with copy of AnyTrackedValue(v30, &v66);
      v33 = v70;
      v34 = v71;
      __swift_project_boxed_opaque_existential_1(&v66, v70);
      *(v27 - 1) = CVarArg.kdebugValue(_:)(v20 | v21, v33, v34);
      *v27 = v35 & 1;
      v27 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v66);
      v30 += 40;
      if (!--v31)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  v42 = swift_allocObject();
  v43 = v47;
  v44 = v47[1];
  v42[1] = *v47;
  v42[2] = v44;
  v42[3] = *(v43 + 32);
  *(v42 + 57) = *(v43 + 41);
  outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(v43, &v66, &lazy cache variable for type metadata for UncheckedSendable<_GlassContainerStorageView>, &type metadata for _GlassContainerStorageView, type metadata accessor for UncheckedSendable);
  AGGraphSetUpdate();
  *&v66 = partial apply for closure #1 in _GlassContainerStorageView.body.getter;
  *(&v66 + 1) = v42;
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for ModifiedContent<GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, _GeometryGroupEffect>, type metadata accessor for GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, &type metadata for _GeometryGroupEffect, type metadata accessor for ModifiedContent);
  AGGraphSetOutputValue();

  return result;
}

double specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(const void *a1)
{
  v75 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v56 = v2;
  v57 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v58 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v49 - v6;
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v8 = static Signpost.bodyInvoke;
  v9 = word_1ED539040;
  v10 = HIBYTE(word_1ED539040);
  v11 = byte_1ED539042;
  v12 = static os_signpost_type_t.begin.getter();
  v62 = v8;
  v69 = v8;
  LODWORD(v60) = v9;
  v70 = v9;
  v71 = v10;
  v72 = v11;
  if (Signpost.isEnabled.getter())
  {
    v55 = *(&v8 + 1);
    LODWORD(v59) = v12;
    v49 = a1;
    v50 = v7;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18DDAB4C0;
    v14 = AGTypeID.description.getter();
    v16 = v15;
    v17 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v19 = v18;
    *(v13 + 64) = v18;
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v20 = specialized static Tracing.libraryName(defining:)();
    *(v13 + 96) = v17;
    *(v13 + 104) = v19;
    *(v13 + 72) = v20;
    *(v13 + 80) = v21;
    v61 = v13;
    if (one-time initialization token for _signpostLog == -1)
    {
      v22 = v55;
      if (v10)
      {
LABEL_6:
        v68 = v59;
        v66 = _signpostLog;
        v67 = &dword_18D018000;
        *&v69 = v62;
        *(&v69 + 1) = v22;
        v70 = v60;
        v64[0] = "%{public}@.body [in %{public}@]";
        v64[1] = 31;
        v65 = 2;
        v63 = v61;
        v23 = v50;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v68, &v67, &v66, &v69, v50, v64, &v63);
        (*(v57 + 8))(v23, v56);
LABEL_35:

        a1 = v49;
        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      v22 = v55;
      if (v10)
      {
        goto LABEL_6;
      }
    }

    v24 = v62;
    if (v62 == 20)
    {
      v25 = 3;
    }

    else
    {
      v25 = 4;
    }

    v26 = bswap32(v62) | (4 * WORD1(v62));
    LODWORD(v62) = v59;
    v27 = v57 + 16;
    v51 = *(v57 + 16);
    v28 = v51(v58, v50, v56);
    v29 = 0;
    LOBYTE(v64[0]) = 1;
    v60 = v25;
    v57 = v27;
    v54 = 16 * v25;
    v55 = (v27 - 8);
    v52 = v24;
    v53 = v61 + 32;
    do
    {
      v59 = &v49;
      MEMORY[0x1EEE9AC00](v28);
      v31 = &v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      v32 = v31 + 8;
      v33 = v60;
      v34 = v31 + 8;
      do
      {
        *(v34 - 1) = 0;
        *v34 = 0;
        v34 += 16;
        --v33;
      }

      while (v33);
      v35 = v53 + 40 * v29;
      v36 = v60;
      while (1)
      {
        v37 = *(v61 + 16);
        if (v29 == v37)
        {
          break;
        }

        if (v29 >= v37)
        {
          __break(1u);
        }

        ++v29;
        outlined init with copy of AnyTrackedValue(v35, &v69);
        v38 = v73;
        v39 = v74;
        __swift_project_boxed_opaque_existential_1(&v69, v73);
        *(v32 - 1) = CVarArg.kdebugValue(_:)(v26 | v62, v38, v39);
        *v32 = v40 & 1;
        v32 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v69);
        v35 += 40;
        if (!--v36)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v64[0]) = 0;
LABEL_20:
      v41 = v52;
      if (v52 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v31[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v31[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v31[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v41 != 20 && v31[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v42 = v56;
      v43 = *v55;
      v44 = v58;
      (*v55)(v58, v56);
      v45 = __swift_project_value_buffer(v42, static OSSignpostID.continuation);
      v28 = v51(v44, v45, v42);
    }

    while ((v64[0] & 1) != 0);
    v46 = v56;
    v43(v58, v56);
    v43(v50, v46);
    goto LABEL_35;
  }

LABEL_36:
  AGGraphClearUpdate();
  v47 = swift_allocObject();
  memcpy((v47 + 16), a1, 0x230uLL);
  outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(a1, &v69, &lazy cache variable for type metadata for UncheckedSendable<GlassEntryContainerView>, &type metadata for GlassEntryContainerView, type metadata accessor for UncheckedSendable);
  AGGraphSetUpdate();
  *&v69 = partial apply for closure #1 in GlassEntryContainerView.body.getter;
  *(&v69 + 1) = v47;
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for GeometryReader<GlassEntryView>, lazy protocol witness table accessor for type GlassEntryView and conformance GlassEntryView, &type metadata for GlassEntryView, type metadata accessor for GeometryReader);
  AGGraphSetOutputValue();

  return result;
}

uint64_t specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(const void *a1)
{
  v69 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v56 = v2;
  v57 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v58 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v48 - v6;
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v8 = static Signpost.bodyInvoke;
  v9 = word_1ED539040;
  v10 = HIBYTE(word_1ED539040);
  v11 = byte_1ED539042;
  v12 = static os_signpost_type_t.begin.getter();
  v62 = v8;
  *v68 = v8;
  LODWORD(v60) = v9;
  v68[16] = v9;
  v68[17] = v10;
  v68[18] = v11;
  if (Signpost.isEnabled.getter())
  {
    v55 = *(&v8 + 1);
    LODWORD(v59) = v12;
    v49 = a1;
    v50 = v7;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18DDAB4C0;
    v14 = AGTypeID.description.getter();
    v16 = v15;
    v17 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v19 = v18;
    *(v13 + 64) = v18;
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v20 = specialized static Tracing.libraryName(defining:)();
    *(v13 + 96) = v17;
    *(v13 + 104) = v19;
    *(v13 + 72) = v20;
    *(v13 + 80) = v21;
    v61 = v13;
    if (one-time initialization token for _signpostLog == -1)
    {
      v22 = v55;
      if (v10)
      {
LABEL_6:
        v66 = v59;
        v64 = _signpostLog;
        v65 = &dword_18D018000;
        *v68 = v62;
        *&v68[8] = v22;
        v68[16] = v60;
        v67[0] = "%{public}@.body [in %{public}@]";
        v67[1] = 31;
        LOBYTE(v67[2]) = 2;
        v63 = v61;
        v23 = v50;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v66, &v65, &v64, v68, v50, v67, &v63);
        (*(v57 + 8))(v23, v56);
LABEL_35:

        a1 = v49;
        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      v22 = v55;
      if (v10)
      {
        goto LABEL_6;
      }
    }

    v24 = v62;
    if (v62 == 20)
    {
      v25 = 3;
    }

    else
    {
      v25 = 4;
    }

    v26 = bswap32(v62) | (4 * WORD1(v62));
    LODWORD(v62) = v59;
    v27 = v57 + 16;
    v51 = *(v57 + 16);
    v28 = v51(v58, v50, v56);
    v29 = 0;
    LOBYTE(v67[0]) = 1;
    v60 = v25;
    v57 = v27;
    v54 = 16 * v25;
    v55 = (v27 - 8);
    v52 = v24;
    v53 = v61 + 32;
    do
    {
      v59 = &v48;
      MEMORY[0x1EEE9AC00](v28);
      v31 = &v48 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      v32 = v31 + 8;
      v33 = v60;
      v34 = v31 + 8;
      do
      {
        *(v34 - 1) = 0;
        *v34 = 0;
        v34 += 16;
        --v33;
      }

      while (v33);
      v35 = v53 + 40 * v29;
      v36 = v60;
      while (1)
      {
        v37 = *(v61 + 16);
        if (v29 == v37)
        {
          break;
        }

        if (v29 >= v37)
        {
          __break(1u);
        }

        ++v29;
        outlined init with copy of AnyTrackedValue(v35, v68);
        v38 = *&v68[24];
        v39 = *&v68[32];
        __swift_project_boxed_opaque_existential_1(v68, *&v68[24]);
        *(v32 - 1) = CVarArg.kdebugValue(_:)(v26 | v62, v38, v39);
        *v32 = v40 & 1;
        v32 += 16;
        __swift_destroy_boxed_opaque_existential_1(v68);
        v35 += 40;
        if (!--v36)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v67[0]) = 0;
LABEL_20:
      v41 = v52;
      if (v52 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v31[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v31[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v31[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v41 != 20 && v31[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v42 = v56;
      v43 = *v55;
      v44 = v58;
      (*v55)(v58, v56);
      v45 = __swift_project_value_buffer(v42, static OSSignpostID.continuation);
      v28 = v51(v44, v45, v42);
    }

    while ((v67[0] & 1) != 0);
    v46 = v56;
    v43(v58, v56);
    v43(v50, v46);
    goto LABEL_35;
  }

LABEL_36:
  AGGraphClearUpdate();
  memcpy(v67, a1, 0x11CuLL);
  GlassEffectView.body.getter(v68);
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, GlassMaterialEffect>, type metadata accessor for _VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, &type metadata for GlassMaterialEffect, type metadata accessor for ModifiedContent);
  AGGraphSetOutputValue();
  memcpy(v67, v68, 0x194uLL);
  return outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>(v67, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, GlassMaterialEffect>, type metadata accessor for _VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, &type metadata for GlassMaterialEffect, type metadata accessor for ModifiedContent);
}

{
  v72 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v57 = v2;
  v58 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v59 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v49 - v6;
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v8 = static Signpost.bodyInvoke;
  v9 = word_1ED539040;
  v10 = HIBYTE(word_1ED539040);
  v11 = byte_1ED539042;
  v12 = static os_signpost_type_t.begin.getter();
  v63 = v8;
  v70[0] = v8;
  LODWORD(v61) = v9;
  LOBYTE(v70[1]) = v9;
  v13 = v10;
  BYTE1(v70[1]) = v10;
  BYTE2(v70[1]) = v11;
  if (Signpost.isEnabled.getter())
  {
    v56 = *(&v8 + 1);
    LODWORD(v60) = v12;
    v50 = a1;
    v51 = v7;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18DDAB4C0;
    v15 = AGTypeID.description.getter();
    v17 = v16;
    v18 = MEMORY[0x1E69E6158];
    *(v14 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v20 = v19;
    *(v14 + 64) = v19;
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    v21 = specialized static Tracing.libraryName(defining:)();
    *(v14 + 96) = v18;
    *(v14 + 104) = v20;
    *(v14 + 72) = v21;
    *(v14 + 80) = v22;
    v62 = v14;
    if (one-time initialization token for _signpostLog == -1)
    {
      v23 = v56;
      if (v13)
      {
LABEL_6:
        v69 = v60;
        v67 = _signpostLog;
        v68 = &dword_18D018000;
        *&v70[0] = v63;
        *(&v70[0] + 1) = v23;
        LOBYTE(v70[1]) = v61;
        v65[0] = "%{public}@.body [in %{public}@]";
        v65[1] = 31;
        v66 = 2;
        v64 = v62;
        v24 = v51;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v69, &v68, &v67, v70, v51, v65, &v64);
        (*(v58 + 8))(v24, v57);
LABEL_35:

        a1 = v50;
        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      v23 = v56;
      if (v13)
      {
        goto LABEL_6;
      }
    }

    v25 = v63;
    if (v63 == 20)
    {
      v26 = 3;
    }

    else
    {
      v26 = 4;
    }

    v27 = bswap32(v63) | (4 * WORD1(v63));
    LODWORD(v63) = v60;
    v28 = v58 + 16;
    v52 = *(v58 + 16);
    v29 = v52(v59, v51, v57);
    v30 = 0;
    LOBYTE(v65[0]) = 1;
    v61 = v26;
    v58 = v28;
    v55 = 16 * v26;
    v56 = (v28 - 8);
    v53 = v25;
    v54 = v62 + 32;
    do
    {
      v60 = &v49;
      MEMORY[0x1EEE9AC00](v29);
      v32 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = v32 + 8;
      v34 = v61;
      v35 = v32 + 8;
      do
      {
        *(v35 - 1) = 0;
        *v35 = 0;
        v35 += 16;
        --v34;
      }

      while (v34);
      v36 = v54 + 40 * v30;
      v37 = v61;
      while (1)
      {
        v38 = *(v62 + 16);
        if (v30 == v38)
        {
          break;
        }

        if (v30 >= v38)
        {
          __break(1u);
        }

        ++v30;
        outlined init with copy of AnyTrackedValue(v36, v70);
        v39 = *(&v70[1] + 1);
        v40 = *&v70[2];
        __swift_project_boxed_opaque_existential_1(v70, *(&v70[1] + 1));
        *(v33 - 1) = CVarArg.kdebugValue(_:)(v27 | v63, v39, v40);
        *v33 = v41 & 1;
        v33 += 16;
        __swift_destroy_boxed_opaque_existential_1(v70);
        v36 += 40;
        if (!--v37)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v65[0]) = 0;
LABEL_20:
      v42 = v53;
      if (v53 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v32[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v32[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v32[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v42 != 20 && v32[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v43 = v57;
      v44 = *v56;
      v45 = v59;
      (*v56)(v59, v57);
      v46 = __swift_project_value_buffer(v43, static OSSignpostID.continuation);
      v29 = v52(v45, v46, v43);
    }

    while ((v65[0] & 1) != 0);
    v47 = v57;
    v44(v59, v57);
    v44(v51, v47);
    goto LABEL_35;
  }

LABEL_36:
  AGGraphClearUpdate();
  memcpy(v70, a1, sizeof(v70));
  v71 = 256;
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _ShapeView<ConcentricRectangle, ForegroundStyle>(0);
  return AGGraphSetOutputValue();
}

void specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(uint64_t a1, double a2)
{
  v47 = a1;
  v71 = *MEMORY[0x1E69E9840];
  v54 = type metadata accessor for OSSignpostID();
  v55 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v46 - v5;
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v6 = static Signpost.bodyInvoke;
    v7 = word_1ED539040;
    v8 = HIBYTE(word_1ED539040);
    v9 = byte_1ED539042;
    v10 = static os_signpost_type_t.begin.getter();
    v67 = v6;
    LOBYTE(v68) = v7;
    BYTE1(v68) = v8;
    BYTE2(v68) = v9;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v57 = *(&v6 + 1);
    LODWORD(v58) = v10;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_18DDAB4C0;
    v12 = AGTypeID.description.getter();
    v14 = v13;
    v15 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v17 = v16;
    *(v11 + 64) = v16;
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    v18 = specialized static Tracing.libraryName(defining:)();
    *(v11 + 96) = v15;
    *(v11 + 104) = v17;
    *(v11 + 72) = v18;
    *(v11 + 80) = v19;
    v59 = v11;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v8)
    {
      v63 = v58;
      v61 = _signpostLog;
      v62 = &dword_18D018000;
      *&v67 = v6;
      *(&v67 + 1) = v57;
      LOBYTE(v68) = v7;
      v64 = "%{public}@.body [in %{public}@]";
      *&v65 = 31;
      BYTE8(v65) = 2;
      v60 = v59;
      v20 = v48;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v63, &v62, &v61, &v67, v48, &v64, &v60);
      (*(v55 + 8))(v20, v54);
LABEL_34:

      break;
    }

    if (v6 == 20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 4;
    }

    v22 = bswap32(v6) | (4 * WORD1(v6));
    v23 = v58;
    v24 = v55 + 16;
    v49 = *(v55 + 16);
    v25 = v49(v56, v48, v54);
    v26 = 0;
    LOBYTE(v64) = 1;
    v58 = v21;
    v52 = 16 * v21;
    v55 = v24;
    v53 = (v24 - 8);
    v51 = v59 + 32;
    v50 = v6;
LABEL_11:
    v57 = &v46;
    MEMORY[0x1EEE9AC00](v25);
    v28 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = v28 + 8;
    v30 = v58;
    v31 = v28 + 8;
    do
    {
      *(v31 - 1) = 0;
      *v31 = 0;
      v31 += 16;
      --v30;
    }

    while (v30);
    v32 = v51 + 40 * v26;
    v33 = v58;
    while (1)
    {
      v34 = *(v59 + 16);
      if (v26 == v34)
      {
        LOBYTE(v64) = 0;
LABEL_19:
        v38 = v50;
        if (v50 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v28[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v28[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v28[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v38 != 20 && v28[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v39 = *v53;
        v40 = v56;
        v41 = v54;
        (*v53)(v56, v54);
        v42 = __swift_project_value_buffer(v41, static OSSignpostID.continuation);
        v25 = v49(v40, v42, v41);
        if ((v64 & 1) == 0)
        {
          v43 = v54;
          v39(v56, v54);
          v39(v48, v43);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v26 >= v34)
      {
        break;
      }

      ++v26;
      outlined init with copy of AnyTrackedValue(v32, &v67);
      v35 = *(&v68 + 1);
      v36 = v69;
      __swift_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
      *(v29 - 1) = CVarArg.kdebugValue(_:)(v22 | v23, v35, v36);
      *v29 = v37 & 1;
      v29 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v67);
      v32 += 40;
      if (!--v33)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_39:
    swift_once();
  }

  AGGraphClearUpdate();
  if (one-time initialization token for symbolImage != -1)
  {
    swift_once();
  }

  v44 = static SummarySymbol.symbolImage;
  v45 = v47;
  SummarySymbol.gradient.getter(v47, &v64, a2);
  *&v67 = v44;
  *(&v67 + 1) = v64;
  v68 = v65;
  v69 = v66;
  v70 = v45;

  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>(0, &lazy cache variable for type metadata for ModifiedContent<Image, _ForegroundStyleModifier2<AngularGradient, Color>>, type metadata accessor for _ForegroundStyleModifier2<AngularGradient, Color>, &type metadata for Image);
  AGGraphSetOutputValue();
}

double specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v52 = a3;
  *(&v51 + 1) = a2;
  *&v51 = a1;
  v76 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v60 = v4;
  v61 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v50[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v50[-v8];
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v9 = static Signpost.bodyInvoke;
  v10 = word_1ED539040;
  v11 = HIBYTE(word_1ED539040);
  v12 = byte_1ED539042;
  v13 = static os_signpost_type_t.begin.getter();
  v72 = v9;
  LOBYTE(v73) = v10;
  BYTE1(v73) = v11;
  BYTE2(v73) = v12;
  if (Signpost.isEnabled.getter())
  {
    v63 = *(&v9 + 1);
    LODWORD(v64) = v13;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18DDAB4C0;
    v15 = AGTypeID.description.getter();
    v17 = v16;
    v18 = MEMORY[0x1E69E6158];
    *(v14 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v20 = v19;
    *(v14 + 64) = v19;
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    v21 = specialized static Tracing.libraryName(defining:)();
    *(v14 + 96) = v18;
    *(v14 + 104) = v20;
    *(v14 + 72) = v21;
    *(v14 + 80) = v22;
    v65 = v14;
    if (one-time initialization token for _signpostLog == -1)
    {
      v23 = v63;
      if (v11)
      {
LABEL_6:
        v71 = v64;
        v69 = _signpostLog;
        v70 = &dword_18D018000;
        *&v72 = v9;
        *(&v72 + 1) = v23;
        LOBYTE(v73) = v10;
        v67[0] = "%{public}@.body [in %{public}@]";
        v67[1] = 31;
        v68 = 2;
        v66 = v65;
        v24 = v54;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v71, &v70, &v69, &v72, v54, v67, &v66);
        (*(v61 + 8))(v24, v60);
LABEL_35:

        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      v23 = v63;
      if (v11)
      {
        goto LABEL_6;
      }
    }

    if (v9 == 20)
    {
      v25 = 3;
    }

    else
    {
      v25 = 4;
    }

    v26 = bswap32(v9) | (4 * WORD1(v9));
    v27 = v64;
    v28 = v61 + 16;
    v55 = *(v61 + 16);
    v29 = v55(v62, v54, v60);
    v30 = 0;
    LOBYTE(v67[0]) = 1;
    v64 = v25;
    v61 = v28;
    v58 = 16 * v25;
    v59 = (v28 - 8);
    v57 = v65 + 32;
    v56 = v9;
    do
    {
      v63 = v50;
      MEMORY[0x1EEE9AC00](v29);
      v32 = &v50[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
      v33 = v32 + 8;
      v34 = v64;
      v35 = v32 + 8;
      do
      {
        *(v35 - 1) = 0;
        *v35 = 0;
        v35 += 16;
        --v34;
      }

      while (v34);
      v36 = v57 + 40 * v30;
      v37 = v64;
      while (1)
      {
        v38 = *(v65 + 16);
        if (v30 == v38)
        {
          break;
        }

        if (v30 >= v38)
        {
          __break(1u);
        }

        ++v30;
        outlined init with copy of AnyTrackedValue(v36, &v72);
        v39 = v74;
        v40 = v75;
        __swift_project_boxed_opaque_existential_1(&v72, v74);
        *(v33 - 1) = CVarArg.kdebugValue(_:)(v26 | v27, v39, v40);
        *v33 = v41 & 1;
        v33 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v72);
        v36 += 40;
        if (!--v37)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v67[0]) = 0;
LABEL_20:
      v42 = v56;
      if (v56 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v32[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v32[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v32[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v42 != 20 && v32[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v43 = v60;
      v44 = *v59;
      v45 = v62;
      (*v59)(v62, v60);
      v46 = __swift_project_value_buffer(v43, static OSSignpostID.continuation);
      v29 = v55(v45, v46, v43);
    }

    while ((v67[0] & 1) != 0);
    v47 = v60;
    v44(v62, v60);
    v44(v54, v47);
    goto LABEL_35;
  }

LABEL_36:
  AGGraphClearUpdate();
  v72 = v51;
  v73 = v52;
  v74 = v53;
  _TestApp.RootView.body.getter(v67);
  v48 = v67[0];
  AGGraphSetUpdate();
  *&v72 = v48;
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  AGGraphSetOutputValue();

  return result;
}

uint64_t specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(int a1)
{
  v46 = a1;
  v71 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v53 = v1;
  v54 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v55 = &v45[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v45[-v5];
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v6 = static Signpost.bodyInvoke;
    v7 = word_1ED539040;
    v8 = HIBYTE(word_1ED539040);
    v9 = byte_1ED539042;
    v10 = static os_signpost_type_t.begin.getter();
    v65 = v6;
    v66 = v7;
    v67 = v8;
    v68 = v9;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v56 = *(&v6 + 1);
    LODWORD(v57) = v10;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_18DDAB4C0;
    v12 = AGTypeID.description.getter();
    v14 = v13;
    v15 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v17 = v16;
    *(v11 + 64) = v16;
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    v18 = specialized static Tracing.libraryName(defining:)();
    *(v11 + 96) = v15;
    *(v11 + 104) = v17;
    *(v11 + 72) = v18;
    *(v11 + 80) = v19;
    v58 = v11;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v8)
    {
      v64 = v57;
      v62 = _signpostLog;
      v63 = &dword_18D018000;
      *&v65 = v6;
      *(&v65 + 1) = v56;
      v66 = v7;
      v60[0] = "%{public}@.body [in %{public}@]";
      v60[1] = 31;
      v61 = 2;
      v59 = v58;
      v20 = v47;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v64, &v63, &v62, &v65, v47, v60, &v59);
      (*(v54 + 8))(v20, v53);
LABEL_34:

      break;
    }

    if (v6 == 20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 4;
    }

    v22 = bswap32(v6) | (4 * WORD1(v6));
    v23 = v57;
    v24 = v54 + 16;
    v48 = *(v54 + 16);
    v25 = v48(v55, v47, v53);
    v26 = 0;
    LOBYTE(v60[0]) = 1;
    v57 = v21;
    v54 = v24;
    v51 = 16 * v21;
    v52 = (v24 - 8);
    v50 = v58 + 32;
    v49 = v6;
LABEL_11:
    v56 = v45;
    MEMORY[0x1EEE9AC00](v25);
    v28 = &v45[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v29 = v28 + 8;
    v30 = v57;
    v31 = v28 + 8;
    do
    {
      *(v31 - 1) = 0;
      *v31 = 0;
      v31 += 16;
      --v30;
    }

    while (v30);
    v32 = v50 + 40 * v26;
    v33 = v57;
    while (1)
    {
      v34 = *(v58 + 16);
      if (v26 == v34)
      {
        LOBYTE(v60[0]) = 0;
LABEL_19:
        v38 = v49;
        if (v49 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v28[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v28[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v28[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v38 != 20 && v28[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v39 = v53;
        v40 = *v52;
        v41 = v55;
        (*v52)(v55, v53);
        v42 = __swift_project_value_buffer(v39, static OSSignpostID.continuation);
        v25 = v48(v41, v42, v39);
        if ((v60[0] & 1) == 0)
        {
          v43 = v53;
          v40(v55, v53);
          v40(v47, v43);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v26 >= v34)
      {
        break;
      }

      ++v26;
      outlined init with copy of AnyTrackedValue(v32, &v65);
      v35 = v69;
      v36 = v70;
      __swift_project_boxed_opaque_existential_1(&v65, v69);
      *(v29 - 1) = CVarArg.kdebugValue(_:)(v22 | v23, v35, v36);
      *v29 = v37 & 1;
      v29 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v65);
      v32 += 40;
      if (!--v33)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  LOBYTE(v65) = v46 & 1;
  *(&v65 + 1) = 256;
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _ShapeView<Capsule, ForegroundStyle>(0);
  return AGGraphSetOutputValue();
}

{
  v46 = a1;
  v71 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v53 = v1;
  v54 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v55 = &v45[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v45[-v5];
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v6 = static Signpost.bodyInvoke;
    v7 = word_1ED539040;
    v8 = HIBYTE(word_1ED539040);
    v9 = byte_1ED539042;
    v10 = static os_signpost_type_t.begin.getter();
    v65 = v6;
    v66 = v7;
    v67 = v8;
    v68 = v9;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v56 = *(&v6 + 1);
    LODWORD(v57) = v10;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_18DDAB4C0;
    v12 = AGTypeID.description.getter();
    v14 = v13;
    v15 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v17 = v16;
    *(v11 + 64) = v16;
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    v18 = specialized static Tracing.libraryName(defining:)();
    *(v11 + 96) = v15;
    *(v11 + 104) = v17;
    *(v11 + 72) = v18;
    *(v11 + 80) = v19;
    v58 = v11;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v8)
    {
      v64 = v57;
      v62 = _signpostLog;
      v63 = &dword_18D018000;
      *&v65 = v6;
      *(&v65 + 1) = v56;
      v66 = v7;
      v60[0] = "%{public}@.body [in %{public}@]";
      v60[1] = 31;
      v61 = 2;
      v59 = v58;
      v20 = v47;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v64, &v63, &v62, &v65, v47, v60, &v59);
      (*(v54 + 8))(v20, v53);
LABEL_34:

      break;
    }

    if (v6 == 20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 4;
    }

    v22 = bswap32(v6) | (4 * WORD1(v6));
    v23 = v57;
    v24 = v54 + 16;
    v48 = *(v54 + 16);
    v25 = v48(v55, v47, v53);
    v26 = 0;
    LOBYTE(v60[0]) = 1;
    v57 = v21;
    v54 = v24;
    v51 = 16 * v21;
    v52 = (v24 - 8);
    v50 = v58 + 32;
    v49 = v6;
LABEL_11:
    v56 = v45;
    MEMORY[0x1EEE9AC00](v25);
    v28 = &v45[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v29 = v28 + 8;
    v30 = v57;
    v31 = v28 + 8;
    do
    {
      *(v31 - 1) = 0;
      *v31 = 0;
      v31 += 16;
      --v30;
    }

    while (v30);
    v32 = v50 + 40 * v26;
    v33 = v57;
    while (1)
    {
      v34 = *(v58 + 16);
      if (v26 == v34)
      {
        LOBYTE(v60[0]) = 0;
LABEL_19:
        v38 = v49;
        if (v49 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v28[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v28[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v28[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v38 != 20 && v28[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v39 = v53;
        v40 = *v52;
        v41 = v55;
        (*v52)(v55, v53);
        v42 = __swift_project_value_buffer(v39, static OSSignpostID.continuation);
        v25 = v48(v41, v42, v39);
        if ((v60[0] & 1) == 0)
        {
          v43 = v53;
          v40(v55, v53);
          v40(v47, v43);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v26 >= v34)
      {
        break;
      }

      ++v26;
      outlined init with copy of AnyTrackedValue(v32, &v65);
      v35 = v69;
      v36 = v70;
      __swift_project_boxed_opaque_existential_1(&v65, v69);
      *(v29 - 1) = CVarArg.kdebugValue(_:)(v22 | v23, v35, v36);
      *v29 = v37 & 1;
      v29 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v65);
      v32 += 40;
      if (!--v33)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  LOBYTE(v65) = v46 & 1;
  *(&v65 + 1) = 256;
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _ShapeView<DefaultGlassEffectShape, ForegroundStyle>(0);
  return AGGraphSetOutputValue();
}

uint64_t specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(_OWORD *a1)
{
  v94 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v65 = v2;
  v66 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v67 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v58 - v6;
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v8 = static Signpost.bodyInvoke;
  v9 = word_1ED539040;
  v10 = HIBYTE(word_1ED539040);
  v11 = byte_1ED539042;
  v12 = static os_signpost_type_t.begin.getter();
  v71 = v8;
  v78 = v8;
  LODWORD(v69) = v9;
  LOBYTE(v79) = v9;
  BYTE1(v79) = v10;
  BYTE2(v79) = v11;
  if (Signpost.isEnabled.getter())
  {
    v64 = *(&v8 + 1);
    LODWORD(v68) = v12;
    v58 = a1;
    v59 = v7;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18DDAB4C0;
    v14 = AGTypeID.description.getter();
    v16 = v15;
    v17 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v19 = v18;
    *(v13 + 64) = v18;
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v20 = specialized static Tracing.libraryName(defining:)();
    *(v13 + 96) = v17;
    *(v13 + 104) = v19;
    *(v13 + 72) = v20;
    *(v13 + 80) = v21;
    v70 = v13;
    if (one-time initialization token for _signpostLog == -1)
    {
      v22 = v64;
      if (v10)
      {
LABEL_6:
        v77 = v68;
        v75 = _signpostLog;
        v76 = &dword_18D018000;
        *&v78 = v71;
        *(&v78 + 1) = v22;
        LOBYTE(v79) = v69;
        v73[0] = "%{public}@.body [in %{public}@]";
        v73[1] = 31;
        v74 = 2;
        v72 = v70;
        v23 = v59;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v77, &v76, &v75, &v78, v59, v73, &v72);
        (*(v66 + 8))(v23, v65);
LABEL_35:

        a1 = v58;
        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      v22 = v64;
      if (v10)
      {
        goto LABEL_6;
      }
    }

    v24 = v71;
    if (v71 == 20)
    {
      v25 = 3;
    }

    else
    {
      v25 = 4;
    }

    v26 = bswap32(v71) | (4 * WORD1(v71));
    LODWORD(v71) = v68;
    v27 = v66 + 16;
    v60 = *(v66 + 16);
    v28 = v60(v67, v59, v65);
    v29 = 0;
    LOBYTE(v73[0]) = 1;
    v69 = v25;
    v66 = v27;
    v63 = 16 * v25;
    v64 = (v27 - 8);
    v61 = v24;
    v62 = v70 + 32;
    do
    {
      v68 = &v58;
      MEMORY[0x1EEE9AC00](v28);
      v31 = &v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      v32 = v31 + 8;
      v33 = v69;
      v34 = v31 + 8;
      do
      {
        *(v34 - 1) = 0;
        *v34 = 0;
        v34 += 16;
        --v33;
      }

      while (v33);
      v35 = v62 + 40 * v29;
      v36 = v69;
      while (1)
      {
        v37 = *(v70 + 16);
        if (v29 == v37)
        {
          break;
        }

        if (v29 >= v37)
        {
          __break(1u);
        }

        ++v29;
        outlined init with copy of AnyTrackedValue(v35, &v78);
        v38 = *(&v79 + 1);
        v39 = v80;
        __swift_project_boxed_opaque_existential_1(&v78, *(&v79 + 1));
        *(v32 - 1) = CVarArg.kdebugValue(_:)(v26 | v71, v38, v39);
        *v32 = v40 & 1;
        v32 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v78);
        v35 += 40;
        if (!--v36)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v73[0]) = 0;
LABEL_20:
      v41 = v61;
      if (v61 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v31[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v31[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v31[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v41 != 20 && v31[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v42 = v65;
      v43 = *v64;
      v44 = v67;
      (*v64)(v67, v65);
      v45 = __swift_project_value_buffer(v42, static OSSignpostID.continuation);
      v28 = v60(v44, v45, v42);
    }

    while ((v73[0] & 1) != 0);
    v46 = v65;
    v43(v67, v65);
    v43(v59, v46);
    goto LABEL_35;
  }

LABEL_36:
  AGGraphClearUpdate();
  v47 = a1[12];
  v48 = a1[13];
  v49 = a1[10];
  v89 = a1[11];
  v90 = v47;
  v50 = a1[14];
  v91 = v48;
  v92 = v50;
  v51 = a1[8];
  v52 = a1[9];
  v53 = a1[6];
  v85 = a1[7];
  v86 = v51;
  v87 = v52;
  v88 = v49;
  v54 = a1[4];
  v83 = a1[5];
  v84 = v53;
  v55 = a1[1];
  v78 = *a1;
  v79 = v55;
  v56 = a1[2];
  v81 = a1[3];
  v82 = v54;
  v80 = v56;
  v93 = 256;
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _ShapeView<PartialContainerRelativeShape, ForegroundStyle>(0);
  return AGGraphSetOutputValue();
}

uint64_t specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(__int128 *a1)
{
  v45 = a1;
  v68 = *MEMORY[0x1E69E9840];
  v52 = type metadata accessor for OSSignpostID();
  v53 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v44[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v46 = &v44[-v3];
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v4 = static Signpost.bodyInvoke;
    v5 = word_1ED539040;
    v6 = HIBYTE(word_1ED539040);
    v7 = byte_1ED539042;
    v8 = static os_signpost_type_t.begin.getter();
    v64 = v4;
    LOBYTE(v65) = v5;
    BYTE1(v65) = v6;
    BYTE2(v65) = v7;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v55 = *(&v4 + 1);
    LODWORD(v56) = v8;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_18DDAB4C0;
    v10 = AGTypeID.description.getter();
    v12 = v11;
    v13 = MEMORY[0x1E69E6158];
    *(v9 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v15 = v14;
    *(v9 + 64) = v14;
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    v16 = specialized static Tracing.libraryName(defining:)();
    *(v9 + 96) = v13;
    *(v9 + 104) = v15;
    *(v9 + 72) = v16;
    *(v9 + 80) = v17;
    v57 = v9;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v6)
    {
      v63 = v56;
      v61 = _signpostLog;
      v62 = &dword_18D018000;
      *&v64 = v4;
      *(&v64 + 1) = v55;
      LOBYTE(v65) = v5;
      v59[0] = "%{public}@.body [in %{public}@]";
      v59[1] = 31;
      v60 = 2;
      v58 = v57;
      v18 = v46;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v63, &v62, &v61, &v64, v46, v59, &v58);
      (*(v53 + 8))(v18, v52);
LABEL_34:

      break;
    }

    if (v4 == 20)
    {
      v19 = 3;
    }

    else
    {
      v19 = 4;
    }

    v20 = bswap32(v4) | (4 * WORD1(v4));
    v21 = v56;
    v22 = v53 + 16;
    v47 = *(v53 + 16);
    v23 = v47(v54, v46, v52);
    v24 = 0;
    LOBYTE(v59[0]) = 1;
    v56 = v19;
    v50 = 16 * v19;
    v53 = v22;
    v51 = (v22 - 8);
    v49 = v57 + 32;
    v48 = v4;
LABEL_11:
    v55 = v44;
    MEMORY[0x1EEE9AC00](v23);
    v26 = &v44[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v27 = v26 + 8;
    v28 = v56;
    v29 = v26 + 8;
    do
    {
      *(v29 - 1) = 0;
      *v29 = 0;
      v29 += 16;
      --v28;
    }

    while (v28);
    v30 = v49 + 40 * v24;
    v31 = v56;
    while (1)
    {
      v32 = *(v57 + 16);
      if (v24 == v32)
      {
        LOBYTE(v59[0]) = 0;
LABEL_19:
        v36 = v48;
        if (v48 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v26[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v26[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v26[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v36 != 20 && v26[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v37 = *v51;
        v38 = v54;
        v39 = v52;
        (*v51)(v54, v52);
        v40 = __swift_project_value_buffer(v39, static OSSignpostID.continuation);
        v23 = v47(v38, v40, v39);
        if ((v59[0] & 1) == 0)
        {
          v41 = v52;
          v37(v54, v52);
          v37(v46, v41);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v24 >= v32)
      {
        break;
      }

      ++v24;
      outlined init with copy of AnyTrackedValue(v30, &v64);
      v33 = *(&v65 + 1);
      v34 = v66;
      __swift_project_boxed_opaque_existential_1(&v64, *(&v65 + 1));
      *(v27 - 1) = CVarArg.kdebugValue(_:)(v20 | v21, v33, v34);
      *v27 = v35 & 1;
      v27 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v64);
      v30 += 40;
      if (!--v31)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  v42 = v45[1];
  v64 = *v45;
  v65 = v42;
  v66 = v45[2];
  v67 = 256;
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _ShapeView<UnevenRoundedRectangle._Inset, ForegroundStyle>(0);
  return AGGraphSetOutputValue();
}

uint64_t specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)()
{
  v68 = *MEMORY[0x1E69E9840];
  v0 = type metadata accessor for OSSignpostID();
  v1 = *(v0 - 8);
  v51 = v0;
  v52 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v53 = &v43[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v43[-v4];
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v5 = static Signpost.bodyInvoke;
    v6 = word_1ED539040;
    v7 = HIBYTE(word_1ED539040);
    v8 = byte_1ED539042;
    v9 = static os_signpost_type_t.begin.getter();
    v62 = v5;
    v63 = v6;
    v64 = v7;
    v65 = v8;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v50 = *(&v5 + 1);
    LODWORD(v54) = v9;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_18DDAB4C0;
    v11 = AGTypeID.description.getter();
    v13 = v12;
    v14 = MEMORY[0x1E69E6158];
    *(v10 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v16 = v15;
    *(v10 + 64) = v15;
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    v17 = specialized static Tracing.libraryName(defining:)();
    *(v10 + 96) = v14;
    *(v10 + 104) = v16;
    *(v10 + 72) = v17;
    *(v10 + 80) = v18;
    v55 = v10;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v7)
    {
      v61 = v54;
      v59 = _signpostLog;
      v60 = &dword_18D018000;
      *&v62 = v5;
      *(&v62 + 1) = v50;
      v63 = v6;
      v57[0] = "%{public}@.body [in %{public}@]";
      v57[1] = 31;
      v58 = 2;
      v56 = v55;
      v19 = v44;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v61, &v60, &v59, &v62, v44, v57, &v56);
      (*(v52 + 8))(v19, v51);
LABEL_34:

      break;
    }

    if (v5 == 20)
    {
      v20 = 3;
    }

    else
    {
      v20 = 4;
    }

    v21 = bswap32(v5) | (4 * WORD1(v5));
    v22 = v54;
    v23 = v52 + 16;
    v45 = *(v52 + 16);
    v24 = v45(v53, v44, v51);
    v25 = 0;
    LOBYTE(v57[0]) = 1;
    v52 = v23;
    v49 = 16 * *(&v5 + 1);
    v50 = (v23 - 8);
    v48 = v55 + 32;
    v47 = v5;
    v46 = *(&v5 + 1);
LABEL_11:
    v54 = v43;
    MEMORY[0x1EEE9AC00](v24);
    v27 = &v43[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v28 = v27 + 8;
    v29 = v20;
    v30 = v27 + 8;
    do
    {
      *(v30 - 1) = 0;
      *v30 = 0;
      v30 += 16;
      --v29;
    }

    while (v29);
    v31 = v48 + 40 * v25;
    while (1)
    {
      v32 = *(v55 + 16);
      if (v25 == v32)
      {
        LOBYTE(v57[0]) = 0;
LABEL_19:
        v36 = v47;
        if (v47 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v27[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v27[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v27[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v36 != 20 && v27[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v37 = v51;
        v38 = *v50;
        v39 = v53;
        (*v50)(v53, v51);
        v40 = __swift_project_value_buffer(v37, static OSSignpostID.continuation);
        v24 = v45(v39, v40, v37);
        v20 = v46;
        if ((v57[0] & 1) == 0)
        {
          v41 = v51;
          v38(v53, v51);
          v38(v44, v41);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v25 >= v32)
      {
        break;
      }

      ++v25;
      outlined init with copy of AnyTrackedValue(v31, &v62);
      v33 = v66;
      v34 = v67;
      __swift_project_boxed_opaque_existential_1(&v62, v66);
      *(v28 - 1) = CVarArg.kdebugValue(_:)(v21 | v22, v33, v34);
      *v28 = v35 & 1;
      v28 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v62);
      v31 += 40;
      if (!--v20)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  LOWORD(v62) = 256;
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _ShapeView<ImplicitContainerShape, ForegroundStyle>(0);
  return AGGraphSetOutputValue();
}

uint64_t specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(uint64_t a1, void (*a2)(void), double a3)
{
  v49 = a2;
  v74 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v56 = v4;
  v57 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v48 - v8;
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v9 = static Signpost.bodyInvoke;
  v10 = word_1ED539040;
  v11 = HIBYTE(word_1ED539040);
  v12 = byte_1ED539042;
  v13 = static os_signpost_type_t.begin.getter();
  v68 = v9;
  v69 = v10;
  v70 = v11;
  v71 = v12;
  if (Signpost.isEnabled.getter())
  {
    LODWORD(v60) = v13;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18DDAB4C0;
    v15 = AGTypeID.description.getter();
    v17 = v16;
    v18 = MEMORY[0x1E69E6158];
    *(v14 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v20 = v19;
    *(v14 + 64) = v19;
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    v21 = specialized static Tracing.libraryName(defining:)();
    *(v14 + 96) = v18;
    *(v14 + 104) = v20;
    *(v14 + 72) = v21;
    *(v14 + 80) = v22;
    v61 = v14;
    if (one-time initialization token for _signpostLog == -1)
    {
      if (v11)
      {
LABEL_6:
        v67 = v60;
        v65 = _signpostLog;
        v66 = &dword_18D018000;
        v68 = v9;
        v69 = v10;
        v63[0] = "%{public}@.body [in %{public}@]";
        v63[1] = 31;
        v64 = 2;
        v62 = v61;
        v23 = v50;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v67, &v66, &v65, &v68, v50, v63, &v62);
        (*(v57 + 8))(v23, v56);
LABEL_35:

        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      if (v11)
      {
        goto LABEL_6;
      }
    }

    if (v9 == 20)
    {
      v24 = 3;
    }

    else
    {
      v24 = 4;
    }

    v25 = bswap32(v9) | (4 * WORD1(v9));
    v26 = v60;
    v27 = v57 + 16;
    v51 = *(v57 + 16);
    v28 = v51(v58, v50, v56);
    v29 = 0;
    LOBYTE(v63[0]) = 1;
    v60 = v24;
    v57 = v27;
    v54 = 16 * v24;
    v55 = (v27 - 8);
    v53 = v61 + 32;
    v52 = v9;
    do
    {
      v59 = &v48;
      MEMORY[0x1EEE9AC00](v28);
      v31 = &v48 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      v32 = v31 + 8;
      v33 = v60;
      v34 = v31 + 8;
      do
      {
        *(v34 - 1) = 0;
        *v34 = 0;
        v34 += 16;
        --v33;
      }

      while (v33);
      v35 = v53 + 40 * v29;
      v36 = v60;
      while (1)
      {
        v37 = *(v61 + 16);
        if (v29 == v37)
        {
          break;
        }

        if (v29 >= v37)
        {
          __break(1u);
        }

        ++v29;
        outlined init with copy of AnyTrackedValue(v35, &v68);
        v38 = v72;
        v39 = v73;
        __swift_project_boxed_opaque_existential_1(&v68, v72);
        *(v32 - 1) = CVarArg.kdebugValue(_:)(v25 | v26, v38, v39);
        *v32 = v40 & 1;
        v32 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v68);
        v35 += 40;
        if (!--v36)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v63[0]) = 0;
LABEL_20:
      v41 = v52;
      if (v52 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v31[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v31[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v31[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v41 != 20 && v31[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v42 = v56;
      v43 = *v55;
      v44 = v58;
      (*v55)(v58, v56);
      v45 = __swift_project_value_buffer(v42, static OSSignpostID.continuation);
      v28 = v51(v44, v45, v42);
    }

    while ((v63[0] & 1) != 0);
    v46 = v56;
    v43(v58, v56);
    v43(v50, v46);
    goto LABEL_35;
  }

LABEL_36:
  AGGraphClearUpdate();
  AGGraphSetUpdate();
  *&v68 = a3;
  WORD4(v68) = 256;
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  v49(0);
  return AGGraphSetOutputValue();
}

void specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(int a1, void *a2, void *a3)
{
  v56 = a3;
  v57 = a2;
  v55 = a1;
  v84 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  v65 = v3;
  v66 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v67 = &v54[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v54[-v7];
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v8 = static Signpost.bodyInvoke;
    v9 = word_1ED539040;
    v10 = HIBYTE(word_1ED539040);
    v11 = byte_1ED539042;
    v12 = static os_signpost_type_t.begin.getter();
    v76 = v8;
    v77 = v9;
    v78 = v10;
    v79 = v11;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v64 = *(&v8 + 1);
    LODWORD(v68) = v12;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18DDAB4C0;
    v14 = AGTypeID.description.getter();
    v16 = v15;
    v17 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v19 = v18;
    *(v13 + 64) = v18;
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v20 = specialized static Tracing.libraryName(defining:)();
    *(v13 + 96) = v17;
    *(v13 + 104) = v19;
    *(v13 + 72) = v20;
    *(v13 + 80) = v21;
    v69 = v13;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v10)
    {
      v75 = v68;
      v73 = _signpostLog;
      v74 = &dword_18D018000;
      *&v76 = v8;
      *(&v76 + 1) = v64;
      v77 = v9;
      v71[0] = "%{public}@.body [in %{public}@]";
      v71[1] = 31;
      v72 = 2;
      v70 = v69;
      v22 = v58;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v75, &v74, &v73, &v76, v58, v71, &v70);
      (*(v66 + 8))(v22, v65);
LABEL_34:

      break;
    }

    if (v8 == 20)
    {
      v23 = 3;
    }

    else
    {
      v23 = 4;
    }

    v24 = bswap32(v8) | (4 * WORD1(v8));
    v25 = v68;
    v26 = v66 + 16;
    v59 = *(v66 + 16);
    v27 = v59(v67, v58, v65);
    v28 = 0;
    LOBYTE(v71[0]) = 1;
    v63 = 16 * v23;
    v66 = v26;
    v64 = (v26 - 8);
    v62 = v69 + 32;
    v61 = *(&v8 + 1);
    v60 = v23;
LABEL_11:
    v68 = v54;
    MEMORY[0x1EEE9AC00](v27);
    v30 = &v54[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v31 = v30 + 8;
    v32 = v23;
    v33 = v30 + 8;
    do
    {
      *(v33 - 1) = 0;
      *v33 = 0;
      v33 += 16;
      --v32;
    }

    while (v32);
    v34 = v62 + 40 * v28;
    while (1)
    {
      v35 = *(v69 + 16);
      if (v28 == v35)
      {
        LOBYTE(v71[0]) = 0;
LABEL_19:
        v39 = v61;
        if (v61 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        v23 = v60;
        if (v30[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v30[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v30[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v39 != 20 && v30[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v40 = v65;
        v41 = *v64;
        v42 = v67;
        (*v64)(v67, v65);
        v43 = __swift_project_value_buffer(v40, static OSSignpostID.continuation);
        v27 = v59(v42, v43, v40);
        if ((v71[0] & 1) == 0)
        {
          v44 = v65;
          v41(v67, v65);
          v41(v58, v44);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v28 >= v35)
      {
        break;
      }

      ++v28;
      outlined init with copy of AnyTrackedValue(v34, &v76);
      v36 = v80;
      v37 = v81;
      __swift_project_boxed_opaque_existential_1(&v76, v80);
      *(v31 - 1) = CVarArg.kdebugValue(_:)(v24 | v25, v36, v37);
      *v31 = v38 & 1;
      v31 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v76);
      v34 += 40;
      if (!--v23)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_40:
    swift_once();
  }

  AGGraphClearUpdate();
  v45 = v55 & 1;
  if (v55)
  {
    v46 = 1.0;
  }

  else
  {
    v46 = 0.0;
  }

  type metadata accessor for ColorBox<CGColorRef>(0);
  v47 = swift_allocObject();
  v48 = v56;
  *(v47 + 16) = v56;
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for FontBox<Font.PlatformFontProvider>, lazy protocol witness table accessor for type Font.PlatformFontProvider and conformance Font.PlatformFontProvider, &type metadata for Font.PlatformFontProvider, type metadata accessor for FontBox);
  v49 = swift_allocObject();
  v50 = v57;
  *(v49 + 16) = v57;
  KeyPath = swift_getKeyPath();
  v52 = v48;
  v53 = v50;
  AGGraphSetUpdate();
  *&v76 = v46;
  *(&v76 + 1) = v47;
  v77 = v45;
  v80 = closure #1 in _IntelligenceSupport.AnimatingSummarySymbol.body.getter;
  v81 = 0;
  v82 = KeyPath;
  v83 = v49;
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>, _EnvironmentKeyWritingModifier<Font?>>(0);
  AGGraphSetOutputValue();
}

void specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(uint64_t a1, uint64_t a2, int a3, char *a4)
{
  v5 = v4;
  v51 = a3;
  v53 = a2;
  v52 = a1;
  v80 = *MEMORY[0x1E69E9840];
  v60 = type metadata accessor for OSSignpostID();
  v61 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v62 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v54 = v50 - v9;
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v10 = static Signpost.bodyInvoke;
    v11 = word_1ED539040;
    v12 = HIBYTE(word_1ED539040);
    v13 = byte_1ED539042;
    v14 = static os_signpost_type_t.begin.getter();
    v72 = v10;
    v73 = v11;
    v74 = v12;
    v75 = v13;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v63 = *(&v10 + 1);
    LODWORD(v64) = v14;
    v50[0] = a4;
    v50[1] = v5;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_18DDAB4C0;
    v16 = AGTypeID.description.getter();
    v18 = v17;
    v19 = MEMORY[0x1E69E6158];
    *(v15 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v5 = v20;
    *(v15 + 64) = v20;
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    v21 = specialized static Tracing.libraryName(defining:)();
    *(v15 + 96) = v19;
    *(v15 + 104) = v5;
    *(v15 + 72) = v21;
    *(v15 + 80) = v22;
    v65 = v15;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v12)
    {
      v71 = v64;
      v69 = _signpostLog;
      v70 = &dword_18D018000;
      *&v72 = v10;
      *(&v72 + 1) = v63;
      v73 = v11;
      v67[0] = "%{public}@.body [in %{public}@]";
      v67[1] = 31;
      v68 = 2;
      v66 = v65;
      v23 = v54;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v71, &v70, &v69, &v72, v54, v67, &v66);
      (*(v61 + 8))(v23, v60);
LABEL_34:

      a4 = v50[0];
      break;
    }

    if (v10 == 20)
    {
      v24 = 3;
    }

    else
    {
      v24 = 4;
    }

    v25 = bswap32(v10) | (4 * WORD1(v10));
    v26 = v64;
    v27 = v61 + 16;
    v55 = *(v61 + 16);
    v28 = v55(v62, v54, v60);
    v29 = 0;
    LOBYTE(v67[0]) = 1;
    v64 = v24;
    v58 = 16 * v24;
    v61 = v27;
    v59 = (v27 - 8);
    v57 = v65 + 32;
    v56 = *(&v10 + 1);
LABEL_11:
    v63 = v50;
    MEMORY[0x1EEE9AC00](v28);
    a4 = v50 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = a4 + 8;
    v32 = v64;
    v33 = a4 + 8;
    do
    {
      *(v33 - 1) = 0;
      *v33 = 0;
      v33 += 16;
      --v32;
    }

    while (v32);
    v34 = v57 + 40 * v29;
    v35 = v64;
    while (1)
    {
      v36 = *(v65 + 16);
      if (v29 == v36)
      {
        LOBYTE(v67[0]) = 0;
LABEL_19:
        v39 = v56;
        if (v56 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (a4[8] == 1)
        {
          kdebug_trace_string();
        }

        if (a4[24] == 1)
        {
          kdebug_trace_string();
        }

        if (a4[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v39 != 20 && a4[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v40 = *v59;
        v41 = v62;
        v42 = v60;
        (*v59)(v62, v60);
        v43 = __swift_project_value_buffer(v42, static OSSignpostID.continuation);
        v28 = v55(v41, v43, v42);
        if ((v67[0] & 1) == 0)
        {
          v44 = v60;
          v40(v62, v60);
          v40(v54, v44);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v29 >= v36)
      {
        break;
      }

      ++v29;
      outlined init with copy of AnyTrackedValue(v34, &v72);
      v37 = v76;
      v5 = v77;
      __swift_project_boxed_opaque_existential_1(&v72, v76);
      *(v31 - 1) = CVarArg.kdebugValue(_:)(v25 | v26, v37, v5);
      *v31 = v38 & 1;
      v31 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v72);
      v34 += 40;
      if (!--v35)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_39:
    swift_once();
  }

  AGGraphClearUpdate();
  v45 = v51 & 1;
  v46 = v52;
  v47 = v53;
  outlined copy of Text.Storage(v52, v53, v51 & 1);
  v48 = one-time initialization token for topLeading;

  if (v48 != -1)
  {
    swift_once();
  }

  v49 = static Alignment.topLeading;
  LOBYTE(v67[0]) = v45;
  AGGraphSetUpdate();
  *&v72 = v46;
  *(&v72 + 1) = v47;
  v73 = v67[0];
  v76 = a4;
  v77 = closure #1 in _IntelligenceSupport.AnimatingText.body.getter;
  v78 = 0;
  v79 = v49;
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>(0, &lazy cache variable for type metadata for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>, type metadata accessor for _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>, &type metadata for Text);
  AGGraphSetOutputValue();
  outlined consume of Text.Storage(v72, *(&v72 + 1), v73);
}

uint64_t specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(int a1, double a2, double a3, double a4)
{
  v52 = a1;
  v77 = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  v59 = v7;
  v60 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v51[-v11];
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v12 = static Signpost.bodyInvoke;
    v13 = word_1ED539040;
    v14 = HIBYTE(word_1ED539040);
    v15 = byte_1ED539042;
    v16 = static os_signpost_type_t.begin.getter();
    v71 = v12;
    v72 = v13;
    v73 = v14;
    v74 = v15;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v62 = *(&v12 + 1);
    LODWORD(v63) = v16;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_18DDAB4C0;
    v18 = AGTypeID.description.getter();
    v20 = v19;
    v21 = MEMORY[0x1E69E6158];
    *(v17 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v23 = v22;
    *(v17 + 64) = v22;
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    v24 = specialized static Tracing.libraryName(defining:)();
    *(v17 + 96) = v21;
    *(v17 + 104) = v23;
    *(v17 + 72) = v24;
    *(v17 + 80) = v25;
    v64 = v17;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v14)
    {
      v70 = v63;
      v68 = _signpostLog;
      v69 = &dword_18D018000;
      *&v71 = v12;
      *(&v71 + 1) = v62;
      v72 = v13;
      v66[0] = "%{public}@.body [in %{public}@]";
      v66[1] = 31;
      v67 = 2;
      v65 = v64;
      v26 = v53;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v70, &v69, &v68, &v71, v53, v66, &v65);
      (*(v60 + 8))(v26, v59);
LABEL_34:

      break;
    }

    if (v12 == 20)
    {
      v27 = 3;
    }

    else
    {
      v27 = 4;
    }

    v28 = bswap32(v12) | (4 * WORD1(v12));
    v29 = v63;
    v30 = v60 + 16;
    v54 = *(v60 + 16);
    v31 = v54(v61, v53, v59);
    v32 = 0;
    LOBYTE(v66[0]) = 1;
    v63 = v27;
    v57 = 16 * v27;
    v60 = v30;
    v58 = (v30 - 8);
    v56 = v64 + 32;
    v55 = v12;
LABEL_11:
    v62 = v51;
    MEMORY[0x1EEE9AC00](v31);
    v34 = &v51[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v35 = v34 + 8;
    v36 = v63;
    v37 = v34 + 8;
    do
    {
      *(v37 - 1) = 0;
      *v37 = 0;
      v37 += 16;
      --v36;
    }

    while (v36);
    v38 = v56 + 40 * v32;
    v39 = v63;
    while (1)
    {
      v40 = *(v64 + 16);
      if (v32 == v40)
      {
        LOBYTE(v66[0]) = 0;
LABEL_19:
        v44 = v55;
        if (v55 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v34[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v34[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v34[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v44 != 20 && v34[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v45 = *v58;
        v46 = v61;
        v47 = v59;
        (*v58)(v61, v59);
        v48 = __swift_project_value_buffer(v47, static OSSignpostID.continuation);
        v31 = v54(v46, v48, v47);
        if ((v66[0] & 1) == 0)
        {
          v49 = v59;
          v45(v61, v59);
          v45(v53, v49);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v32 >= v40)
      {
        break;
      }

      ++v32;
      outlined init with copy of AnyTrackedValue(v38, &v71);
      v41 = v75;
      v42 = v76;
      __swift_project_boxed_opaque_existential_1(&v71, v75);
      *(v35 - 1) = CVarArg.kdebugValue(_:)(v28 | v29, v41, v42);
      *v35 = v43 & 1;
      v35 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v71);
      v38 += 40;
      if (!--v39)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  *&v71 = a2;
  *(&v71 + 1) = a3;
  v72 = v52 & 1;
  v75 = *&a4;
  LOWORD(v76) = 256;
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _ShapeView<RoundedRectangle._Inset, ForegroundStyle>(0);
  return AGGraphSetOutputValue();
}

double specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(void))
{
  v51 = a4;
  v53 = a2;
  v50 = a1;
  v75 = *MEMORY[0x1E69E9840];
  v59 = type metadata accessor for OSSignpostID();
  v60 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v61 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v52 = v49 - v7;
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v8 = static Signpost.bodyInvoke;
  v9 = word_1ED539040;
  v10 = HIBYTE(word_1ED539040);
  v11 = byte_1ED539042;
  v12 = static os_signpost_type_t.begin.getter();
  v71 = v8;
  LOBYTE(v72) = v9;
  BYTE1(v72) = v10;
  BYTE2(v72) = v11;
  if (Signpost.isEnabled.getter())
  {
    v62 = *(&v8 + 1);
    LODWORD(v63) = v12;
    v49[0] = a3;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18DDAB4C0;
    v14 = AGTypeID.description.getter();
    v16 = v15;
    v17 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v19 = v18;
    *(v13 + 64) = v18;
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v20 = specialized static Tracing.libraryName(defining:)();
    *(v13 + 96) = v17;
    *(v13 + 104) = v19;
    *(v13 + 72) = v20;
    *(v13 + 80) = v21;
    v64 = v13;
    if (one-time initialization token for _signpostLog == -1)
    {
      v22 = v62;
      if (v10)
      {
LABEL_6:
        v68 = v63;
        v66 = _signpostLog;
        v67 = &dword_18D018000;
        *&v71 = v8;
        *(&v71 + 1) = v22;
        LOBYTE(v72) = v9;
        v69[0] = "%{public}@.body [in %{public}@]";
        v69[1] = 31;
        v70 = 2;
        v65 = v64;
        v23 = v52;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v68, &v67, &v66, &v71, v52, v69, &v65);
        (*(v60 + 8))(v23, v59);
LABEL_35:

        a3 = v49[0];
        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      v22 = v62;
      if (v10)
      {
        goto LABEL_6;
      }
    }

    if (v8 == 20)
    {
      v24 = 3;
    }

    else
    {
      v24 = 4;
    }

    v25 = bswap32(v8) | (4 * WORD1(v8));
    v26 = v63;
    v27 = v60 + 16;
    v54 = *(v60 + 16);
    v28 = v54(v61, v52, v59);
    v29 = 0;
    LOBYTE(v69[0]) = 1;
    v63 = v24;
    v57 = 16 * v24;
    v60 = v27;
    v58 = (v27 - 8);
    v56 = v64 + 32;
    v55 = v8;
    do
    {
      v62 = v49;
      MEMORY[0x1EEE9AC00](v28);
      v31 = v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      v32 = v31 + 8;
      v33 = v63;
      v34 = v31 + 8;
      do
      {
        *(v34 - 1) = 0;
        *v34 = 0;
        v34 += 16;
        --v33;
      }

      while (v33);
      v35 = v56 + 40 * v29;
      v36 = v63;
      while (1)
      {
        v37 = *(v64 + 16);
        if (v29 == v37)
        {
          break;
        }

        if (v29 >= v37)
        {
          __break(1u);
        }

        ++v29;
        outlined init with copy of AnyTrackedValue(v35, &v71);
        v38 = *(&v72 + 1);
        v39 = v73;
        __swift_project_boxed_opaque_existential_1(&v71, *(&v72 + 1));
        *(v32 - 1) = CVarArg.kdebugValue(_:)(v25 | v26, v38, v39);
        *v32 = v40 & 1;
        v32 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v71);
        v35 += 40;
        if (!--v36)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v69[0]) = 0;
LABEL_20:
      v41 = v55;
      if (v55 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v31[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v31[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v31[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v41 != 20 && v31[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v42 = *v58;
      v43 = v61;
      v44 = v59;
      (*v58)(v61, v59);
      v45 = __swift_project_value_buffer(v44, static OSSignpostID.continuation);
      v28 = v54(v43, v45, v44);
    }

    while ((v69[0] & 1) != 0);
    v46 = v59;
    v42(v61, v59);
    v42(v52, v46);
    goto LABEL_35;
  }

LABEL_36:
  AGGraphClearUpdate();
  v47 = *(v50 + 16);
  v71 = *v50;
  v72 = v47;
  v73 = *(v50 + 32);
  v74 = 256;
  outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(v50, v69, a3, v53, type metadata accessor for UncheckedSendable);
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  v51(0);
  AGGraphSetOutputValue();

  return result;
}

double specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(__int128 *a1)
{
  v45 = a1;
  v68 = *MEMORY[0x1E69E9840];
  v52 = type metadata accessor for OSSignpostID();
  v53 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v44 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v46 = &v44 - v3;
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v4 = static Signpost.bodyInvoke;
    v5 = word_1ED539040;
    v6 = HIBYTE(word_1ED539040);
    v7 = byte_1ED539042;
    v8 = static os_signpost_type_t.begin.getter();
    v64 = v4;
    LOBYTE(v65) = v5;
    BYTE1(v65) = v6;
    BYTE2(v65) = v7;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v55 = *(&v4 + 1);
    LODWORD(v56) = v8;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_18DDAB4C0;
    v10 = AGTypeID.description.getter();
    v12 = v11;
    v13 = MEMORY[0x1E69E6158];
    *(v9 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v15 = v14;
    *(v9 + 64) = v14;
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    v16 = specialized static Tracing.libraryName(defining:)();
    *(v9 + 96) = v13;
    *(v9 + 104) = v15;
    *(v9 + 72) = v16;
    *(v9 + 80) = v17;
    v57 = v9;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v6)
    {
      v61 = v56;
      v59 = _signpostLog;
      v60 = &dword_18D018000;
      *&v64 = v4;
      *(&v64 + 1) = v55;
      LOBYTE(v65) = v5;
      v62[0] = "%{public}@.body [in %{public}@]";
      v62[1] = 31;
      v63 = 2;
      v58 = v57;
      v18 = v46;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v61, &v60, &v59, &v64, v46, v62, &v58);
      (*(v53 + 8))(v18, v52);
LABEL_34:

      break;
    }

    if (v4 == 20)
    {
      v19 = 3;
    }

    else
    {
      v19 = 4;
    }

    v20 = bswap32(v4) | (4 * WORD1(v4));
    v21 = v56;
    v22 = v53 + 16;
    v47 = *(v53 + 16);
    v23 = v47(v54, v46, v52);
    v24 = 0;
    LOBYTE(v62[0]) = 1;
    v56 = v19;
    v50 = 16 * v19;
    v53 = v22;
    v51 = (v22 - 8);
    v49 = v57 + 32;
    v48 = v4;
LABEL_11:
    v55 = &v44;
    MEMORY[0x1EEE9AC00](v23);
    v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = v26 + 8;
    v28 = v56;
    v29 = v26 + 8;
    do
    {
      *(v29 - 1) = 0;
      *v29 = 0;
      v29 += 16;
      --v28;
    }

    while (v28);
    v30 = v49 + 40 * v24;
    v31 = v56;
    while (1)
    {
      v32 = *(v57 + 16);
      if (v24 == v32)
      {
        LOBYTE(v62[0]) = 0;
LABEL_19:
        v36 = v48;
        if (v48 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v26[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v26[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v26[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v36 != 20 && v26[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v37 = *v51;
        v38 = v54;
        v39 = v52;
        (*v51)(v54, v52);
        v40 = __swift_project_value_buffer(v39, static OSSignpostID.continuation);
        v23 = v47(v38, v40, v39);
        if ((v62[0] & 1) == 0)
        {
          v41 = v52;
          v37(v54, v52);
          v37(v46, v41);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v24 >= v32)
      {
        break;
      }

      ++v24;
      outlined init with copy of AnyTrackedValue(v30, &v64);
      v33 = *(&v65 + 1);
      v34 = *v66;
      __swift_project_boxed_opaque_existential_1(&v64, *(&v65 + 1));
      *(v27 - 1) = CVarArg.kdebugValue(_:)(v20 | v21, v33, v34);
      *v27 = v35 & 1;
      v27 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v64);
      v30 += 40;
      if (!--v31)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  v42 = v45[1];
  v64 = *v45;
  v65 = v42;
  *v66 = v45[2];
  *&v66[10] = *(v45 + 42);
  v67 = 256;
  outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(v45, v62, &lazy cache variable for type metadata for UncheckedSendable<MeshGradient>, &type metadata for MeshGradient, type metadata accessor for UncheckedSendable);
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _ShapeView<Rectangle, MeshGradient>(0);
  AGGraphSetOutputValue();

  return result;
}

uint64_t specialized EventListenerPhase.updateValue()()
{
  v1 = v0;
  v109[6] = *MEMORY[0x1E69E9840];
  result = specialized ResettableGestureRule.resetIfNeeded()();
  if ((result & 1) == 0)
  {
    return result;
  }

  v108 = 0;
  memset(v107, 0, sizeof(v107));
  type metadata accessor for [EventID : EventType](0);
  v3 = *AGGraphGetValue();
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v73 = v3;

  v9 = 0;
  v75 = v0;
  if (!v7)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v12 = v9;
LABEL_17:
      v13 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v14 = v13 | (v12 << 6);
      v15 = (*(v73 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      outlined init with copy of AnyTrackedValue(*(v73 + 56) + 40 * v14, &v87);
      *&v93[0] = v16;
      *(&v93[0] + 1) = v17;
      outlined init with take of AnyTrackedValue(&v87, &v93[1]);
LABEL_18:
      v104 = v93[0];
      v105[0] = v93[1];
      v105[1] = v93[2];
      v106 = v94;
      v18 = *&v93[0];
      if (!*&v93[0])
      {

        outlined init with copy of Scrollable?(v107, v93, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
        if (!*(&v93[1] + 1))
        {
          outlined destroy of ViewList?(v93, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
          type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for EventListenerPhase<SpatialEvent>.Value, &type metadata for SpatialEvent, &protocol witness table for SpatialEvent, type metadata accessor for EventListenerPhase.Value);
          if (!AGGraphGetOutputValue())
          {
            v94 = 0uLL;
            v95 = 0uLL;
            memset(v93, 0, sizeof(v93));
            v96 = -256;
            outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v93, type metadata accessor for GesturePhase<SpatialEvent>?);
            v60 = 0;
            v49 = 0;
            v50 = 0;
            v52 = 0;
            v53 = 0;
            v61 = 0;
            v62 = 0;
            v63 = 0;
            v58 = 0;
            v59 = 0;
            v74 = 5;
            v51 = 1;
            goto LABEL_68;
          }

          v94 = 0uLL;
          v95 = 0uLL;
          memset(v93, 0, sizeof(v93));
          v96 = -256;
          outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v93, type metadata accessor for GesturePhase<SpatialEvent>?);
          return outlined destroy of ViewList?(v107, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
        }

        outlined init with take of AnyTrackedValue(v93, v101);
        if ((*(v1 + 20) & 1) == 0)
        {
          AGGraphClearUpdate();
          Value = AGGraphGetValue();
          v30 = v1;
          v31 = *Value;
          v32 = *(Value + 8);
          v34 = *(Value + 16);
          v33 = *(Value + 24);
          v35 = *(Value + 32);
          v36 = *(Value + 40);
          type metadata accessor for CGPoint(0);

          v37 = AGGraphGetValue();
          v38 = *v37;
          v39 = v37[1];
          result = AGGraphSetUpdate();
          v40 = *(v30 + 24);
          if (!v40)
          {
            __break(1u);
            return result;
          }

          v41 = *(v30 + 32);
          type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(EventID, EventType)>, type metadata accessor for (EventID, EventType), MEMORY[0x1E69E6F90]);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_18DDA6EB0;
          *(v42 + 32) = v40;
          *(v42 + 40) = v41;
          outlined init with copy of AnyTrackedValue(v101, v42 + 48);
          v43 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(v42);
          swift_setDeallocating();
          outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v42 + 32, type metadata accessor for (EventID, EventType));
          swift_deallocClassInstance();
          *&v87 = v43;
          *&v93[0] = 1;
          memset(v93 + 8, 0, 32);
          BYTE8(v93[2]) = 2;
          v109[0] = v31;
          v109[1] = v32;
          *&v109[2] = v38;
          *&v109[3] = v39;
          *&v109[4] = v35 - (v38 - v34);
          *&v109[5] = v36 - (v39 - v33);

          specialized defaultConvertEventLocations<A>(_:coordinateSpace:transform:)(&v87, v93, v109);

          outlined destroy of GlassEntryView?(v93, &lazy cache variable for type metadata for CoordinateSpace?, &type metadata for CoordinateSpace, MEMORY[0x1E69E6720]);
          v44 = v87;
          if (*(v87 + 16))
          {
            v45 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v41);
            if (v46)
            {
              outlined init with copy of AnyTrackedValue(*(v44 + 56) + 40 * v45, v93);

              __swift_destroy_boxed_opaque_existential_1(v101);
              outlined init with take of AnyTrackedValue(v93, v101);

              v1 = v75;
              goto LABEL_50;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
        }

LABEL_50:
        outlined init with copy of AnyTrackedValue(v101, v93);
        SpatialEvent.init(_:)(v93, &v87);
        if (v88 == 1)
        {
          v94 = 0u;
          v95 = 0u;
          memset(v93, 0, sizeof(v93));
          v96 = -256;
          outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v93, type metadata accessor for GesturePhase<SpatialEvent>?);
          outlined destroy of ViewList?(v107, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
          v84 = v90;
          v85 = v91;
          LOBYTE(v86) = v92;
          v81 = v87;
          v82 = v88;
          v83 = v89;
          outlined destroy of GlassEntryView?(&v81, &lazy cache variable for type metadata for SpatialEvent?, &type metadata for SpatialEvent, MEMORY[0x1E69E6720]);
          return __swift_destroy_boxed_opaque_existential_1(v101);
        }

        v81 = v87;
        v82 = v88;
        v83 = v89;
        v84 = v90;
        v85 = v91;
        v48 = v92;
        LOBYTE(v86) = v92;
        v49 = *(&v87 + 1);
        v50 = *(&v88 + 1);
        v51 = v88;
        v53 = *(&v89 + 1);
        v52 = v89;
        v54 = v90;
        v68 = v91;
        v70 = v87;
        v56 = v102;
        v55 = v103;
        __swift_project_boxed_opaque_existential_1(v101, v102);
        (*(v55 + 8))(v80, v56, v55);
        v94 = 0u;
        v95 = 0u;
        memset(v93, 0, sizeof(v93));
        v96 = -256;
        outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v93, type metadata accessor for GesturePhase<SpatialEvent>?);
        if (LOBYTE(v80[0]) >= 2u)
        {
          if (LOBYTE(v80[0]) != 2)
          {
            outlined destroy of GlassEntryView?(&v81, &lazy cache variable for type metadata for SpatialEvent?, &type metadata for SpatialEvent, MEMORY[0x1E69E6720]);
            v60 = 0;
            v49 = 0;
            v51 = 0;
            v50 = 0;
            v52 = 0;
            v53 = 0;
            v61 = 0;
            v62 = 0;
            v63 = 0;
            *(&v68 + 1) = 0;
            v71 = 768;
            v74 = 4;
LABEL_67:
            __swift_destroy_boxed_opaque_existential_1(v101);
            v58 = *(&v68 + 1);
            v59 = v71;
            goto LABEL_68;
          }

          v57 = v48 | 0x200;
        }

        else
        {
          v57 = v48 | 0x100;
        }

        v71 = v57;
        v74 = 5;
        v60 = v70;
        v62 = *(&v54 + 1);
        v61 = v54;
        v63 = v68;
        goto LABEL_67;
      }

      v19 = *(&v104 + 1);
      outlined init with take of AnyTrackedValue(v105, &v81);
      v20 = *(&v82 + 1);
      v21 = v83;
      __swift_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
      (*(v21 + 24))(v93, v20, v21);
      if (*&v93[0])
      {
        break;
      }

      v1 = v75;
      v28 = *(v75 + 24);
      if (v28 && v18 == v28 && *(v75 + 32) == v19)
      {

        __swift_destroy_boxed_opaque_existential_1(&v81);
        v74 = 0;
        goto LABEL_66;
      }

      __swift_destroy_boxed_opaque_existential_1(&v81);
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v1 = v75;
    if ((*(v75 + 21) & 1) == 0)
    {
      v22 = *(v75 + 24);
      if (!v22 || v18 != v22 || *(v75 + 32) != v19)
      {
        v23 = *(&v82 + 1);
        v24 = v83;
        __swift_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
        v25 = *(v24 + 8);
        v26 = v24;
        v1 = v75;
        v25(v93, v23, v26);
        if (LOBYTE(v93[0]))
        {
          if (!*(v75 + 24) || (type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for EventListener<SpatialEvent>, &type metadata for SpatialEvent, &protocol witness table for SpatialEvent, type metadata accessor for EventListener), (*AGGraphGetValue() & 1) == 0))
          {

            __swift_destroy_boxed_opaque_existential_1(&v81);
            v47 = 1;
            goto LABEL_65;
          }
        }
      }
    }

    outlined init with copy of AnyTrackedValue(&v81, v109);
    outlined init with copy of AnyTrackedValue(v109, v80);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for SpatialEventType, &protocol descriptor for SpatialEventType);
    if (swift_dynamicCast())
    {
      outlined init with take of AnyTrackedValue(v78, v101);
      outlined init with copy of AnyTrackedValue(v101, v77);
      SpatialEvent.init(_:)(v77, &v87);
      __swift_destroy_boxed_opaque_existential_1(v101);
      __swift_destroy_boxed_opaque_existential_1(v109);
      v93[2] = v89;
      v94 = v90;
      v95 = v91;
      LOBYTE(v96) = v92;
      v93[0] = v87;
      v93[1] = v88;
      outlined destroy of SpatialEvent(v93);
      v27 = *(v1 + 24);
      if (v27)
      {
        if (*(v1 + 32) != v19 || v18 != v27)
        {
          type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for EventListener<SpatialEvent>, &type metadata for SpatialEvent, &protocol witness table for SpatialEvent, type metadata accessor for EventListener);
          if (*AGGraphGetValue() != 1)
          {
            goto LABEL_64;
          }
        }

        outlined destroy of ViewList?(v107, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
      }

      else
      {
        outlined destroy of ViewList?(v107, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
        *(v1 + 24) = v18;
        *(v1 + 32) = v19;
      }

      outlined init with copy of AnyTrackedValue(&v81, v107);
    }

    else
    {
      v79 = 0;
      memset(v78, 0, sizeof(v78));
      __swift_destroy_boxed_opaque_existential_1(v109);
      outlined destroy of ViewList?(v78, &lazy cache variable for type metadata for SpatialEventType?, &lazy cache variable for type metadata for SpatialEventType, &protocol descriptor for SpatialEventType);
      if (!*(v1 + 24) || (type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for EventListener<SpatialEvent>, &type metadata for SpatialEvent, &protocol witness table for SpatialEvent, type metadata accessor for EventListener), (*AGGraphGetValue() & 1) == 0))
      {

        __swift_destroy_boxed_opaque_existential_1(&v81);
        v47 = 3;
        goto LABEL_65;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v81);
  }

  while (v7);
LABEL_7:
  if (v8 <= v9 + 1)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = v8;
  }

  v11 = v10 - 1;
  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v8)
    {
      v7 = 0;
      *&v94 = 0;
      v9 = v11;
      memset(v93, 0, sizeof(v93));
      goto LABEL_18;
    }

    v7 = *(v4 + 8 * v12);
    ++v9;
    if (v7)
    {
      v9 = v12;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_64:

  __swift_destroy_boxed_opaque_existential_1(&v81);
  v47 = 2;
LABEL_65:
  v74 = v47;
LABEL_66:
  v94 = 0u;
  v95 = 0u;
  memset(v93, 0, sizeof(v93));
  v96 = -256;
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v93, type metadata accessor for GesturePhase<SpatialEvent>?);
  v60 = 0;
  v49 = 0;
  v51 = 0;
  v50 = 0;
  v52 = 0;
  v53 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v58 = 0;
  v59 = 768;
LABEL_68:
  v76 = v61;
  v69 = *(v1 + 24);
  *&v93[0] = v60;
  *(&v93[0] + 1) = v49;
  *&v93[1] = v51;
  *(&v93[1] + 1) = v50;
  *&v93[2] = v52;
  *(&v93[2] + 1) = v53;
  *&v94 = v61;
  *(&v94 + 1) = v62;
  *&v95 = v63;
  *(&v95 + 1) = v58;
  v96 = v59;
  v99 = v69;
  v100 = v74;
  v64 = v63;
  v65 = v58;
  v66 = v62;
  v67 = v59;
  v72 = v59;
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for EventListenerPhase<SpatialEvent>.Value, &type metadata for SpatialEvent, &protocol witness table for SpatialEvent, type metadata accessor for EventListenerPhase.Value);
  *&v81 = v60;
  *(&v81 + 1) = v49;
  *&v82 = v51;
  *(&v82 + 1) = v50;
  *&v83 = v52;
  *(&v83 + 1) = v53;
  *&v84 = v76;
  *(&v84 + 1) = v66;
  *&v85 = v64;
  *(&v85 + 1) = v65;
  v86 = v67;
  outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(&v81, &v87, &lazy cache variable for type metadata for GesturePhase<SpatialEvent>, &type metadata for SpatialEvent, type metadata accessor for GesturePhase);
  AGGraphSetOutputValue();
  *&v87 = v60;
  *(&v87 + 1) = v49;
  *&v88 = v51;
  *(&v88 + 1) = v50;
  *&v89 = v52;
  *(&v89 + 1) = v53;
  *&v90 = v76;
  *(&v90 + 1) = v66;
  *&v91 = v64;
  *(&v91 + 1) = v65;
  v92 = v72;
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v87, type metadata accessor for GesturePhase<SpatialEvent>?);
  outlined destroy of ViewList?(v107, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
  *&v93[0] = v60;
  *(&v93[0] + 1) = v49;
  *&v93[1] = v51;
  *(&v93[1] + 1) = v50;
  *&v93[2] = v52;
  *(&v93[2] + 1) = v53;
  *&v94 = v76;
  *(&v94 + 1) = v66;
  *&v95 = v64;
  *(&v95 + 1) = v65;
  v96 = v72;
  v97 = v101[0];
  v98 = WORD2(v101[0]);
  v99 = v69;
  v100 = v74;
  return outlined destroy of EventListenerPhase<SpatialEvent>.Value(v93);
}

{
  v1 = v0;
  v91 = *MEMORY[0x1E69E9840];
  result = specialized ResettableGestureRule.resetIfNeeded()();
  if ((result & 1) == 0)
  {
    return result;
  }

  v90 = 0;
  memset(v89, 0, sizeof(v89));
  type metadata accessor for [EventID : EventType](0);
  v3 = *AGGraphGetValue();
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v67 = v3;

  v9 = 0;
  v10 = &lazy cache variable for type metadata for TappableEventType;
  if (!v7)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v13 = v9;
LABEL_17:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = v14 | (v13 << 6);
      v16 = (*(v67 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      outlined init with copy of AnyTrackedValue(*(v67 + 56) + 40 * v15, &v82);
      *&v85 = v17;
      *(&v85 + 1) = v18;
      outlined init with take of AnyTrackedValue(&v82, &v86);
LABEL_18:
      *v79 = v85;
      *&v79[16] = v86;
      *&v79[32] = v87;
      v80 = v88;
      v19 = v85;
      if (!v85)
      {

        outlined init with copy of Scrollable?(v89, v79, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
        if (!*&v79[24])
        {
          outlined destroy of ViewList?(v79, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
          type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for EventListenerPhase<TappableEvent>.Value, &type metadata for TappableEvent, &protocol witness table for TappableEvent, type metadata accessor for EventListenerPhase.Value);
          OutputValue = AGGraphGetOutputValue();
          outlined consume of GesturePhase<TappableEvent>?(0, 0, 0, 0, 65280);
          if (!OutputValue)
          {
            v56 = 0;
            v58 = 0;
            v64 = 0;
            v63 = 5;
            v54 = 1;
            goto LABEL_67;
          }

          return outlined destroy of ViewList?(v89, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
        }

        outlined init with take of AnyTrackedValue(v79, &v82);
        if ((*(v1 + 20) & 1) == 0)
        {
          AGGraphClearUpdate();
          Value = AGGraphGetValue();
          v38 = *Value;
          v39 = *(Value + 8);
          v41 = *(Value + 16);
          v40 = *(Value + 24);
          v42 = *(Value + 32);
          v43 = *(Value + 40);
          type metadata accessor for CGPoint(0);

          v44 = AGGraphGetValue();
          v45 = *v44;
          v46 = v44[1];
          result = AGGraphSetUpdate();
          v47 = *(v1 + 24);
          if (!v47)
          {
            __break(1u);
            return result;
          }

          v48 = *(v1 + 32);
          type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(EventID, EventType)>, type metadata accessor for (EventID, EventType), MEMORY[0x1E69E6F90]);
          v49 = swift_allocObject();
          *(v49 + 16) = xmmword_18DDA6EB0;
          *(v49 + 32) = v47;
          *(v49 + 40) = v48;
          outlined init with copy of AnyTrackedValue(&v82, v49 + 48);
          v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(v49);
          swift_setDeallocating();
          outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v49 + 32, type metadata accessor for (EventID, EventType));
          swift_deallocClassInstance();
          v74 = v50;
          *v79 = 1;
          memset(&v79[8], 0, 32);
          v79[40] = 2;
          *&v85 = v38;
          *(&v85 + 1) = v39;
          *&v86 = v45;
          *(&v86 + 1) = v46;
          *&v87 = v42 - (v45 - v41);
          *(&v87 + 1) = v43 - (v46 - v40);

          specialized defaultConvertEventLocations<A>(_:coordinateSpace:transform:)(&v74, v79, &v85);

          outlined destroy of GlassEntryView?(v79, &lazy cache variable for type metadata for CoordinateSpace?, &type metadata for CoordinateSpace, MEMORY[0x1E69E6720]);
          v51 = v74;
          if (*(v74 + 16))
          {
            v52 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v48);
            if (v53)
            {
              outlined init with copy of AnyTrackedValue(*(v51 + 56) + 40 * v52, v79);

              __swift_destroy_boxed_opaque_existential_1(&v82);
              outlined init with take of AnyTrackedValue(v79, &v82);

              goto LABEL_50;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
        }

LABEL_50:
        outlined init with copy of AnyTrackedValue(&v82, v79);
        TappableEvent.init(_:)(v79, &v74);
        v54 = v76;
        if (v76 == 1)
        {
          outlined consume of GesturePhase<TappableEvent>?(0, 0, 0, 0, 65280);
          outlined destroy of ViewList?(v89, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
          outlined consume of PhysicalButtonEvent?(v74, v75, 1);
          return __swift_destroy_boxed_opaque_existential_1(&v82);
        }

        v57 = v74;
        v56 = v75;
        v58 = v77;
        v59 = v78;
        v60 = v83;
        v61 = v84;
        __swift_project_boxed_opaque_existential_1(&v82, v83);
        (*(v61 + 8))(v79, v60, v61);
        outlined consume of GesturePhase<TappableEvent>?(0, 0, 0, 0, 65280);
        if (v79[0] >= 2u)
        {
          if (v79[0] != 2)
          {
            outlined consume of PhysicalButtonEvent?(v57, v56, v54);
            OutputValue = 0;
            v56 = 0;
            v54 = 0;
            v58 = 0;
            v63 = 4;
            v64 = 768;
LABEL_66:
            __swift_destroy_boxed_opaque_existential_1(&v82);
            goto LABEL_67;
          }

          OutputValue = v57;
          v62 = 512;
        }

        else
        {
          OutputValue = v57;
          v62 = 256;
        }

        v64 = v62 & 0xFFFFFFFE | v59 & 1;
        v63 = 5;
        goto LABEL_66;
      }

      v20 = v10;
      v21 = v1;
      v68 = *&v79[8];
      outlined init with take of AnyTrackedValue(&v79[16], &v85);
      v22 = *(&v86 + 1);
      v23 = v87;
      __swift_project_boxed_opaque_existential_1(&v85, *(&v86 + 1));
      (*(v23 + 24))(&v82, v22, v23);
      if (v82)
      {
        break;
      }

      v1 = v21;
      v36 = *(v21 + 24);
      if (v36 && v19 == v36 && *(v21 + 32) == v68)
      {

        __swift_destroy_boxed_opaque_existential_1(&v85);
        v63 = 0;
        goto LABEL_65;
      }

      __swift_destroy_boxed_opaque_existential_1(&v85);
      v10 = v20;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v1 = v21;
    if ((*(v21 + 21) & 1) == 0)
    {
      v24 = *(v21 + 24);
      if (!v24 || v19 != v24 || *(v21 + 32) != v68)
      {
        v25 = *(&v86 + 1);
        v26 = v87;
        __swift_project_boxed_opaque_existential_1(&v85, *(&v86 + 1));
        v27 = *(v26 + 8);
        v28 = v26;
        v1 = v21;
        v27(&v82, v25, v28);
        if (v82)
        {
          if (!*(v21 + 24) || (type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for EventListener<TappableEvent>, &type metadata for TappableEvent, &protocol witness table for TappableEvent, type metadata accessor for EventListener), (*AGGraphGetValue() & 1) == 0))
          {

            __swift_destroy_boxed_opaque_existential_1(&v85);
            v63 = 1;
            goto LABEL_65;
          }
        }
      }
    }

    outlined init with copy of AnyTrackedValue(&v85, &v82);
    outlined init with copy of AnyTrackedValue(&v82, v71);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
    v10 = v20;
    type metadata accessor for AnyTrackedValue(0, v20, &protocol descriptor for TappableEventType);
    if (swift_dynamicCast())
    {
      outlined init with take of AnyTrackedValue(v69, &v74);
      outlined init with copy of AnyTrackedValue(&v74, v71);
      v30 = v72;
      v29 = v73;
      __swift_project_boxed_opaque_existential_1(v71, v72);
      (*(*(v29 + 8) + 8))(v69, v30);
      v32 = v72;
      v31 = v73;
      __swift_project_boxed_opaque_existential_1(v71, v72);
      (*(*(v31 + 8) + 16))(v69, v32);
      v34 = v72;
      v33 = v73;
      __swift_project_boxed_opaque_existential_1(v71, v72);
      (*(*(v33 + 8) + 48))(v69, v34);
      __swift_destroy_boxed_opaque_existential_1(&v74);
      __swift_destroy_boxed_opaque_existential_1(&v82);
      __swift_destroy_boxed_opaque_existential_1(v71);
      v35 = *(v1 + 24);
      if (v35)
      {
        if (*(v1 + 32) != v68 || v19 != v35)
        {
          type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for EventListener<TappableEvent>, &type metadata for TappableEvent, &protocol witness table for TappableEvent, type metadata accessor for EventListener);
          if (*AGGraphGetValue() != 1)
          {
            goto LABEL_64;
          }
        }

        outlined destroy of ViewList?(v89, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
      }

      else
      {
        outlined destroy of ViewList?(v89, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
        *(v1 + 24) = v19;
        *(v1 + 32) = v68;
      }

      outlined init with copy of AnyTrackedValue(&v85, v89);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v82);
      v70 = 0;
      memset(v69, 0, sizeof(v69));
      outlined destroy of ViewList?(v69, &lazy cache variable for type metadata for TappableEventType?, v20, &protocol descriptor for TappableEventType);
      if (!*(v1 + 24) || (type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for EventListener<TappableEvent>, &type metadata for TappableEvent, &protocol witness table for TappableEvent, type metadata accessor for EventListener), (*AGGraphGetValue() & 1) == 0))
      {

        __swift_destroy_boxed_opaque_existential_1(&v85);
        v63 = 3;
        goto LABEL_65;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v85);
  }

  while (v7);
LABEL_7:
  if (v8 <= v9 + 1)
  {
    v11 = v9 + 1;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11 - 1;
  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v13 >= v8)
    {
      v7 = 0;
      v88 = 0;
      v86 = 0u;
      v87 = 0u;
      v9 = v12;
      v85 = 0u;
      goto LABEL_18;
    }

    v7 = *(v4 + 8 * v13);
    ++v9;
    if (v7)
    {
      v9 = v13;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_64:

  __swift_destroy_boxed_opaque_existential_1(&v85);
  v63 = 2;
LABEL_65:
  outlined consume of GesturePhase<TappableEvent>?(0, 0, 0, 0, 65280);
  OutputValue = 0;
  v56 = 0;
  v54 = 0;
  v58 = 0;
  v64 = 768;
LABEL_67:
  v65 = *(v1 + 24);
  v66 = *(v1 + 32);
  *v79 = OutputValue;
  *&v79[8] = v56;
  *&v79[16] = v54;
  *&v79[24] = v58;
  *&v79[32] = v64;
  *&v79[40] = v65;
  v80 = v66;
  v81 = v63;
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for EventListenerPhase<TappableEvent>.Value, &type metadata for TappableEvent, &protocol witness table for TappableEvent, type metadata accessor for EventListenerPhase.Value);
  outlined copy of GesturePhase<TappableEvent>(OutputValue, v56, v54, v58, v64, SBYTE1(v64));
  AGGraphSetOutputValue();
  outlined consume of GesturePhase<TappableEvent>?(OutputValue, v56, v54, v58, v64);
  outlined destroy of ViewList?(v89, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
  *v79 = OutputValue;
  *&v79[8] = v56;
  *&v79[16] = v54;
  *&v79[24] = v58;
  *&v79[32] = v64;
  *&v79[34] = v82;
  *&v79[38] = WORD2(v82);
  *&v79[40] = v65;
  v80 = v66;
  v81 = v63;
  return outlined destroy of EventListenerPhase<TappableEvent>.Value(v79);
}

id specialized GestureComponentResponder.init(modifier:inputs:)(int a1, uint64_t a2)
{
  v5 = *(*v2 + 416);
  type metadata accessor for TapComponent<TouchEvent>(0);
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  *(v2 + *(*v2 + 424)) = 0;
  *(v2 + *(*v2 + 432)) = 0;
  *(v2 + *(*v2 + 440)) = 0;
  v7 = (v2 + *(*v2 + 456));
  *v7 = 0;
  v7[1] = 0;
  *(v2 + *(*v2 + 448)) = a1;
  v8 = *(a2 + 48);
  *(v2 + 120) = *(a2 + 32);
  *(v2 + 136) = v8;
  *(v2 + 152) = *(a2 + 64);
  v9 = *(a2 + 16);
  *(v2 + 88) = *a2;
  *(v2 + 200) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 168) = *(a2 + 80);
  *(v2 + 104) = v9;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v11 = MEMORY[0x1E69E7CC0];
    *(v2 + 176) = result;
    *(v2 + 40) = v11;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = v11;
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v12 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v13 = *(v12 + 208);

    swift_beginAccess();
    *(v2 + 24) = v13;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized _LazyStack_Cache.reset()(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v7 = type metadata accessor for IndexSet();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  __asm { FMOV            V1.2D, #-1.0 }

  *(v3 + 80) = 0u;
  *(v3 + 96) = _Q1;
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, a1, a2, a3, type metadata accessor for _LazyStack_Cache);
  v17 = (v3 + *(v16 + 60));
  v18 = MEMORY[0x1E69E7CC0];
  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  *v17 = v19;
  v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v18);

  v17[1] = v20;
  v23[1] = v18;
  lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [Int] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = type metadata accessor for EstimationCache(0);
  return (*(v8 + 40))(v17 + *(v21 + 24), v10, v7);
}

void specialized LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(double *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, double a10)
{
  specialized LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(a1, a2, a3, a4, a5, a6, a7, a8, a9.n128_f64[0], a10, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, 0, partial apply for specialized closure #1 in LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:), specialized LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:));
}

{
  specialized LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(a1, a2, a3, a4, a5, a6, a7, a8, a9.n128_f64[0], a10, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, 1u, partial apply for specialized closure #1 in LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:), specialized LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:));
}

void specialized LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(double *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, unint64_t *a11, uint64_t (*a12)(void), uint64_t a13, unsigned __int8 a14, uint64_t *a15, double (*a16)(double))
{
  v102 = a4;
  v97 = a16;
  v101 = a15;
  v100 = a14;
  v108 = a6;
  v109 = a7;
  v110 = a8;
  v22 = type metadata accessor for EstimationCache(0);
  MEMORY[0x1EEE9AC00](v22);
  v99 = (&v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v111[0] = a3;
  *&v111[1] = a9;
  *&v111[2] = a10;
  v107 = 0;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v25 = *a1;
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, a11, a12, a13, type metadata accessor for _LazyStack_Cache);
  v27 = (a5 + *(v26 + 60));
  v28 = *(*v27 + 16);
  v30 = *(a5 + 48);
  v29 = *(a5 + 56);
  if (v30 != v29 && *(a5 + 24) != 1 && *a5 == a3 && *(a5 + 8) == a9 && *(a5 + 16) == a10)
  {
    *a2 = v30;
    v107 = v29;
    v25 = *(a5 + 64);
    v31 = v30;
    if (v30 >= a3)
    {
      *(v24 + 16) = 1;
      if (__OFSUB__(v30, a3))
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      *a2 = v30 - a3;
      v31 = v30 - a3;
    }

    if (__OFSUB__(v29, v31))
    {
      goto LABEL_51;
    }

    if (v29 - v31 <= 1)
    {
      v49 = __OFADD__(v29, a3);
      v29 += a3;
      if (v49)
      {
LABEL_54:
        __break(1u);
        return;
      }

      v107 = v29;
    }
  }

  else
  {
    if (v28)
    {
      v31 = *a2;
      if (*a2 < 0)
      {
        goto LABEL_11;
      }

      goto LABEL_5;
    }

    if (a3 + 0x4000000000000000 < 0)
    {
      __break(1u);
      goto LABEL_48;
    }

    v29 = 2 * a3;
    v107 = 2 * a3;
    v31 = *a2;
  }

  if (v31 < v29)
  {
LABEL_11:
    v83 = (v24 + 16);
    v91 = v28;
    v85 = v27;
    v84 = v30;
    v92 = a1;
    v32 = swift_allocObject();
    v95 = a2;
    v33 = v32;
    *(v32 + 16) = 0;
    v82 = (v32 + 16);
    v34 = a3;
    v35 = swift_allocObject();
    v36 = MEMORY[0x1E69E7CC0];
    v37 = v22;
    *(v35 + 16) = MEMORY[0x1E69E7CC0];
    v38 = (v35 + 16);
    v39 = swift_allocObject();
    v93 = v39;
    *(v39 + 16) = 0;
    v94 = (v39 + 16);
    v96 = swift_allocBox();
    v41 = v40;
    *v40 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v36);
    v41[1] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v36);
    v86 = v37;
    type metadata accessor for IndexSet();
    v105 = v36;
    lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
    v98 = v24;
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [Int] and conformance [A]();
    v87 = v41;
    v42 = v98;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    v44 = (v43 + 16);
    v106 = v31;
    v45 = v34;
    v105 = 2 * v34;
    MEMORY[0x1EEE9AC00](v43);
    v89 = v35;
    *(&v82 - 12) = v35;
    *(&v82 - 11) = v111;
    v88 = v46;
    *(&v82 - 10) = v46;
    *(&v82 - 9) = v42;
    *(&v82 - 8) = &v108;
    *(&v82 - 7) = v33;
    v90 = v33;
    v47 = v96;
    *(&v82 - 6) = v93;
    *(&v82 - 5) = v47;
    *(&v82 - 4) = v95;
    *(&v82 - 24) = v100;
    *(&v82 - 2) = &v107;
    _LazyLayout_Subviews.apply(from:style:to:)(&v106, &v105, v101, (&v82 - 14));
    swift_beginAccess();
    if (*v44 == 1)
    {
      if (v91)
      {
        v48 = v94;
        swift_beginAccess();
        *v92 = v25 + *v48;
        goto LABEL_45;
      }

      HasDeadlinePassed = 1;
      v57 = v92;
    }

    else
    {
      v51 = v108;
      v50 = v109;
      v52 = v110;
      v53 = HIDWORD(v110);
      swift_beginAccess();
      if (*(*v38 + 16))
      {
        v102 = v50;
        v54 = v83;
        swift_beginAccess();
        if (*v54)
        {
          *v54 = 0;
          v55 = v82;
        }

        else
        {
          v55 = v82;
          swift_beginAccess();
          v101 = v38;
          v58 = v51;
          v59 = *v55;

          v104[0] = v52;
          v61 = (v97)(v60, v59, v58, v102, v52 | (v53 << 32), a10);
          v63 = v62;

          v64 = v94;
          swift_beginAccess();
          *v64 = v63 + v61 + *v64;
          v65 = v59 == 0;
          if (v59)
          {
            v66 = *&v63;
          }

          else
          {
            v66 = 0;
          }

          swift_beginAccess();
          v38 = v101;
          EstimationCache.add(length:spacing:count:)(v66, v65, 1, v61);
          swift_endAccess();
        }

        if (__OFADD__(*v95, v45))
        {
          goto LABEL_50;
        }

        *v95 += v45;
        swift_beginAccess();
        swift_beginAccess();
        swapSubviews(_:_:)(v55, v38);
        swift_endAccess();
        swift_endAccess();
      }

      HasDeadlinePassed = AGGraphHasDeadlinePassed();
      *v44 = HasDeadlinePassed;
      v57 = v92;
      if (v91)
      {
        goto LABEL_44;
      }
    }

    v67 = v87;
    swift_beginAccess();
    v68 = v45;
    v69 = v99;
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v67, v99, type metadata accessor for EstimationCache);
    v70 = *v69;

    v71 = v85;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v103[0] = *v71;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v70, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, v103);
    *v71 = v103[0];
    v73 = v69[1];

    v74 = swift_isUniquelyReferenced_nonNull_native();
    v103[0] = v71[1];
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v73, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v74, v103);
    v71[1] = v103[0];
    IndexSet.formUnion(_:)();
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v69, type metadata accessor for EstimationCache);
    v75 = COERCE_DOUBLE(EstimationCache.average.getter());
    if (v68)
    {
      if (v84 == 0x8000000000000000 && v68 == -1)
      {
        goto LABEL_52;
      }

      v78 = v84 / v68 * v68;
      if ((v84 / v68 * v68) >> 64 == v78 >> 63)
      {
        v79 = 0.0;
        if ((v76 & 1) == 0)
        {
          v79 = v75;
        }

        v80 = (v77 + v79) * v78;
        if ((v84 / v68 < 1) | v76 & 1)
        {
          v25 = v80;
        }

        else
        {
          v25 = v80 - v75;
        }

LABEL_44:
        v81 = v94;
        swift_beginAccess();
        *v57 = v25 + *v81;
        if ((HasDeadlinePassed & 1) == 0)
        {
LABEL_46:

          return;
        }

LABEL_45:
        AGGraphCancelUpdate();
        goto LABEL_46;
      }

      goto LABEL_49;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

LABEL_5:
}

void specialized closure #1 in LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(uint64_t a1, BOOL *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, char a16, void *a17, double (*a18)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, double), void (*a19)(uint64_t *__return_ptr, _OWORD *))
{
  if ((*(a1 + 101) & 1) != 0 || *(a1 + 102) == 1)
  {
    type metadata accessor for EstimationCache(0);
    swift_projectBox();
    swift_beginAccess();
    if (*(*(a3 + 16) + 16))
    {
      swift_beginAccess();
      if (*(a6 + 16))
      {
        swift_beginAccess();
        *(a6 + 16) = 0;
      }

      else
      {
        swift_beginAccess();
        v26 = *(a12 + 16);

        LOBYTE(v71) = a11 & 1;
        v28 = a18(v27, v26, a9, a10, a11 & 0xFFFFFFFF00000001, a8);
        v30 = v29;

        swift_beginAccess();
        *(a13 + 16) = v30 + v28 + *(a13 + 16);
        swift_beginAccess();
        v31 = *(a12 + 16) == 0;
        if (*(a12 + 16))
        {
          v32 = *&v30;
        }

        else
        {
          v32 = 0;
        }

        swift_beginAccess();
        EstimationCache.add(length:spacing:count:)(v32, v31, 1, v28);
        swift_endAccess();
      }

      if (__OFADD__(*a15, a4))
      {
        goto LABEL_55;
      }

      *a15 += a4;
      swift_beginAccess();
      swift_beginAccess();
      swapSubviews(_:_:)((a12 + 16), (a3 + 16));
      swift_endAccess();
      swift_endAccess();
    }

    HasDeadlinePassed = AGGraphHasDeadlinePassed();
    swift_beginAccess();
    *(a5 + 16) = HasDeadlinePassed;
    swift_beginAccess();
    if (*(a6 + 16))
    {
      swift_beginAccess();
      *(a6 + 16) = 0;
    }

    else
    {
      if (a16)
      {
        v34 = *&a7;
      }

      else
      {
        v34 = 0;
      }

      if (a16)
      {
        v35 = 0.0;
      }

      else
      {
        v35 = a7;
      }

      swift_beginAccess();
      v36 = *(a12 + 16);
      if (v36)
      {
        if (!*(v36 + 16))
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
          return;
        }

        outlined init with copy of _LazyLayout_Subview(v36 + 32, &v71);
      }

      else
      {
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v71 = 0u;
      }

      LazyLayoutViewCache.item(data:)((a1 + 16));

      v67 = v34;
      v68 = (a16 & 1) == 0;
      v69 = v35;
      v70 = a16 & 1;
      LayoutProxy.lengthThatFits(_:in:)(&v67, a16 & 1);
      v38 = v37;
      MEMORY[0x1EEE9AC00](v39);
      *&v40 = COERCE_DOUBLE(_sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(a19));
      v42 = v41;
      outlined destroy of GlassEntryView?(&v71, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
      v43 = *&v40;
      if (v42)
      {
        v43 = 0.0;
      }

      v44 = v38 + v43;
      swift_beginAccess();
      *(a13 + 16) = v44 + *(a13 + 16);
    }

    if (__OFADD__(*a15, a4))
    {
      __break(1u);
    }

    else
    {
      *a15 += a4;
      if ((a4 & 0x8000000000000000) == 0)
      {
        if (a4)
        {
          swift_beginAccess();
          do
          {
            outlined init with copy of _LazyLayout_Subview(a1, &v71);
            v45 = *(a3 + 16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(a3 + 16) = v45;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v45 + 2) + 1, 1, v45);
              *(a3 + 16) = v45;
            }

            v48 = *(v45 + 2);
            v47 = *(v45 + 3);
            if (v48 >= v47 >> 1)
            {
              v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v45);
            }

            *(v45 + 2) = v48 + 1;
            v49 = &v45[112 * v48];
            v50 = v71;
            v51 = v73;
            *(v49 + 3) = v72;
            *(v49 + 4) = v51;
            *(v49 + 2) = v50;
            v52 = v74;
            v53 = v75;
            v54 = v77;
            *(v49 + 7) = v76;
            *(v49 + 8) = v54;
            *(v49 + 5) = v52;
            *(v49 + 6) = v53;
            *(a3 + 16) = v45;
            --a4;
          }

          while (a4);
          swift_endAccess();
        }

        swift_beginAccess();
        swift_beginAccess();
        swapSubviews(_:_:)((a12 + 16), (a3 + 16));
        swift_endAccess();
        swift_endAccess();
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  outlined init with copy of _LazyLayout_Subview(a1, &v71);
  swift_beginAccess();
  specialized Array.append(_:)(&v71);
  swift_endAccess();
  swift_beginAccess();
  if (*(*(a3 + 16) + 16) == a4)
  {
    type metadata accessor for EstimationCache(0);
    swift_projectBox();
    if (a4)
    {
      swift_beginAccess();
      if (*(a6 + 16))
      {
        swift_beginAccess();
        *(a6 + 16) = 0;
      }

      else
      {
        swift_beginAccess();
        v56 = *(a12 + 16);

        LOBYTE(v67) = a11 & 1;
        v58 = a18(v57, v56, a9, a10, a11 & 0xFFFFFFFF00000001, a8);
        v60 = v59;

        swift_beginAccess();
        *(a13 + 16) = v60 + v58 + *(a13 + 16);
        swift_beginAccess();
        v61 = *(a12 + 16) == 0;
        if (*(a12 + 16))
        {
          v62 = *&v60;
        }

        else
        {
          v62 = 0;
        }

        swift_beginAccess();
        EstimationCache.add(length:spacing:count:)(v62, v61, 1, v58);
        swift_endAccess();
      }

      if (__OFADD__(*a15, a4))
      {
        goto LABEL_57;
      }

      *a15 += a4;
      swift_beginAccess();
      swift_beginAccess();
      swapSubviews(_:_:)((a12 + 16), (a3 + 16));
      swift_endAccess();
      swift_endAccess();
    }

    v63 = AGGraphHasDeadlinePassed();
    swift_beginAccess();
    *(a5 + 16) = v63;
  }

LABEL_42:
  swift_beginAccess();
  v55 = (*(a5 + 16) & 1) != 0 || *a15 >= *a17;
  *a2 = v55;
}

uint64_t specialized LazyStack<>.resolvedPlacerProperties(subviews:context:cache:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v66 = a3;
  v67 = a7;
  v12 = a6 & 0xFFFFFFFF00000000;
  v59 = type metadata accessor for IndexSet();
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for EstimationCache(0);
  MEMORY[0x1EEE9AC00](v55);
  v65 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StackPlacement<LazyHStackLayout>?(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for StackPlacement);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v52 - v21;
  v60 = a6;
  v61 = v12;
  LOBYTE(v21) = a6 & 1;
  v23 = v66;
  LOBYTE(v70[0]) = v21;
  v62 = a1;
  v63 = a4;
  v64 = a5;
  specialized LazyStack<>.placer(subviews:context:cache:)(a2, v66, a4, a5, v12 | v21, v17);
  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v17, type metadata accessor for StackPlacement<LazyHStackLayout>?);
    type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>)(0);
    return (*(*(v24 - 8) + 56))(v67, 1, 1, v24);
  }

  outlined init with take of StackPlacement<LazyHStackLayout>(v17, v22, &lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout);
  v26 = *(v22 + 4);
  v54 = *(v22 + 56);
  v58 = *(v22 + 40);
  v27 = *(a2 + 152);
  v28 = 0.0;
  if (*(a2 + 12) != *MEMORY[0x1E698D3F8])
  {
    v28 = *AGGraphGetValue();
  }

  v29 = *(v23 + 96);
  v30 = v65;
  if (v29 <= 0.0 || v27 <= 0.0)
  {
    v33 = 0;
    v34 = *(v23 + 104);
    if (v34 > 0.0 && v28 > 0.0)
    {
      v33 = vabdd_f64(v34, v28) >= 0.01;
    }

    goto LABEL_17;
  }

  v31 = vabdd_f64(v29, v27);
  v32 = *(v23 + 104);
  if (v32 <= 0.0 || v28 <= 0.0)
  {
    if (v31 < 0.01)
    {
      v33 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v33 = vabdd_f64(v32, v28) >= 0.01;
    if (v31 < 0.01)
    {
      goto LABEL_17;
    }
  }

  v33 = 1;
LABEL_17:
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for _LazyStack_Cache);
  v36 = (v23 + *(v35 + 60));
  v37 = *v36;
  if (*(*v36 + 16))
  {
    v38 = !v33;
  }

  else
  {
    v38 = 0;
  }

  if (v38)
  {
    v47 = 0;
    LOBYTE(v33) = 0;
  }

  else
  {
    v53 = v22;
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v36, v30, type metadata accessor for EstimationCache);
    v39 = MEMORY[0x1E69E7CC0];
    *v36 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v40 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v39);

    v36[1] = v40;
    *&v70[0] = v39;
    lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [Int] and conformance [A]();
    v41 = v56;
    v42 = v59;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v57 + 40))(v36 + *(v55 + 24), v41, v42);
    v69 = 0;
    v70[0] = 0.0;
    v68 = v60 & 1;
    specialized LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(v70, &v69, v26, v62, v23, v63, v64, v61 | v60 & 1, *&v58, *(&v58 + 1), &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, 0, partial apply for specialized closure #1 in LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:), specialized LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:));
    _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e45VyxG0E0RtzrlE24resolvedPlacerProperties33_973ghijk738subviews7context5cacheAA0D9PlacementAJLLVyxG_AA0qH0AJLLVyxGtSgAA01_C15m49_SubviewsV_AA01_cr1_Q7ContextVAFztFSSyXEfu0_AA0c6L7R0V_Tg5AEyALGTf1c_n(v23, v43);
    if (*(v23 + 104) > v28)
    {
      v44 = *(v23 + 104);
    }

    else
    {
      v44 = v28;
    }

    specialized sufficientlyDiffers<A, B, C>(lhs:rhs:ratio:baseline:)(v45, v37, 0.9, v44);
    v47 = v46;

    if (v47)
    {
      outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v30, type metadata accessor for EstimationCache);
    }

    else
    {
      outlined assign with take of EstimationCache(v30, v36);
      LOBYTE(v33) = 0;
    }

    v22 = v53;
  }

  type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>)(0);
  v49 = v48;
  v50 = v67;
  v51 = v67 + *(v48 + 48);
  outlined init with take of StackPlacement<LazyHStackLayout>(v22, v67, &lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout);
  *v51 = v26;
  *(v51 + 24) = v54;
  *(v51 + 8) = v58;
  *(v51 + 40) = v33;
  *(v51 + 41) = v47 & 1;
  *(v51 + 48) = v27;
  *(v51 + 56) = v28;
  return (*(*(v49 - 8) + 56))(v50, 0, 1, v49);
}

{
  v66 = a3;
  v67 = a7;
  v12 = a6 & 0xFFFFFFFF00000000;
  v59 = type metadata accessor for IndexSet();
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for EstimationCache(0);
  MEMORY[0x1EEE9AC00](v55);
  v65 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StackPlacement<LazyVStackLayout>?(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for StackPlacement);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v52 - v21;
  v60 = a6;
  v61 = v12;
  LOBYTE(v21) = a6 & 1;
  v23 = v66;
  LOBYTE(v70[0]) = v21;
  v62 = a1;
  v63 = a4;
  v64 = a5;
  specialized LazyStack<>.placer(subviews:context:cache:)(a2, v66, a4, a5, v12 | v21, v17);
  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v17, type metadata accessor for StackPlacement<LazyVStackLayout>?);
    type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>)(0);
    return (*(*(v24 - 8) + 56))(v67, 1, 1, v24);
  }

  outlined init with take of StackPlacement<LazyHStackLayout>(v17, v22, &lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout);
  v26 = *(v22 + 4);
  v54 = *(v22 + 56);
  v58 = *(v22 + 40);
  v27 = *(a2 + 160);
  v28 = 0.0;
  if (*(a2 + 12) != *MEMORY[0x1E698D3F8])
  {
    v28 = *(AGGraphGetValue() + 8);
  }

  v29 = *(v23 + 96);
  v30 = v65;
  if (v29 <= 0.0 || v27 <= 0.0)
  {
    v33 = 0;
    v34 = *(v23 + 104);
    if (v34 > 0.0 && v28 > 0.0)
    {
      v33 = vabdd_f64(v34, v28) >= 0.01;
    }

    goto LABEL_17;
  }

  v31 = vabdd_f64(v29, v27);
  v32 = *(v23 + 104);
  if (v32 <= 0.0 || v28 <= 0.0)
  {
    if (v31 < 0.01)
    {
      v33 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v33 = vabdd_f64(v32, v28) >= 0.01;
    if (v31 < 0.01)
    {
      goto LABEL_17;
    }
  }

  v33 = 1;
LABEL_17:
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for _LazyStack_Cache);
  v36 = (v23 + *(v35 + 60));
  v37 = *v36;
  if (*(*v36 + 16))
  {
    v38 = !v33;
  }

  else
  {
    v38 = 0;
  }

  if (v38)
  {
    v47 = 0;
    LOBYTE(v33) = 0;
  }

  else
  {
    v53 = v22;
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v36, v30, type metadata accessor for EstimationCache);
    v39 = MEMORY[0x1E69E7CC0];
    *v36 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v40 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v39);

    v36[1] = v40;
    *&v70[0] = v39;
    lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [Int] and conformance [A]();
    v41 = v56;
    v42 = v59;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v57 + 40))(v36 + *(v55 + 24), v41, v42);
    v69 = 0;
    v70[0] = 0.0;
    v68 = v60 & 1;
    specialized LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(v70, &v69, v26, v62, v23, v63, v64, v61 | v60 & 1, *&v58, *(&v58 + 1), &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, 1u, partial apply for specialized closure #1 in LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:), specialized LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:));
    _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e45VyxG0E0RtzrlE24resolvedPlacerProperties33_973ghijk738subviews7context5cacheAA0D9PlacementAJLLVyxG_AA0qH0AJLLVyxGtSgAA01_C15m49_SubviewsV_AA01_cr1_Q7ContextVAFztFSSyXEfu0_AA0c6L7R0V_Tg5AEyALGTf1c_n(v23, v43);
    if (*(v23 + 104) > v28)
    {
      v44 = *(v23 + 104);
    }

    else
    {
      v44 = v28;
    }

    specialized sufficientlyDiffers<A, B, C>(lhs:rhs:ratio:baseline:)(v45, v37, 0.9, v44);
    v47 = v46;

    if (v47)
    {
      outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v30, type metadata accessor for EstimationCache);
    }

    else
    {
      outlined assign with take of EstimationCache(v30, v36);
      LOBYTE(v33) = 0;
    }

    v22 = v53;
  }

  type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>)(0);
  v49 = v48;
  v50 = v67;
  v51 = v67 + *(v48 + 48);
  outlined init with take of StackPlacement<LazyHStackLayout>(v22, v67, &lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout);
  *v51 = v26;
  *(v51 + 24) = v54;
  *(v51 + 8) = v58;
  *(v51 + 40) = v33;
  *(v51 + 41) = v47 & 1;
  *(v51 + 48) = v27;
  *(v51 + 56) = v28;
  return (*(*(v49 - 8) + 56))(v50, 0, 1, v49);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE23resolveIndexAndPosition33_973C9973BC16DEAF0CF3109FFDE31321LL8subviews7context5cache6placer10propertiesSi5index_12CoreGraphics7CGFloatV8positiontSgAA01_C15Layout_SubviewsV_AA01_cY17_PlacementContextVAFzAA0D9PlacementAJLLVyxGzAA19PlacementPropertiesAJLLVyxGtFAA0c6HStackY0V_Tt4B5(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v105 = a4;
  v109 = a1;
  v123 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 8);
  v9 = 0.0;
  if (*(a2 + 12) != *MEMORY[0x1E698D3F8])
  {
    v9 = *AGGraphGetValue();
  }

  v10 = *a5;
  v12 = *(a5 + 8);
  v11 = *(a5 + 16);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for _LazyStack_Cache);
  v14 = *(a3 + *(v13 + 60));
  v15 = *(v14 + 16);
  v106 = *(v13 + 60);
  if (v15)
  {
    v17 = COERCE_DOUBLE(EstimationCache.average.getter());
    if (v18)
    {
      v17 = 0.0;
    }

    v19 = v16 + v17;
    v20 = *(v14 + 16) == 0;
  }

  else
  {
    v20 = 1;
    v19 = 32.0;
  }

  v108 = 2 * v10;
  if (v19 <= 0.0)
  {
    v20 = 1;
  }

  v107 = v20;
  v21 = *(a5 + 24);
  v22 = *(a5 + 32);
  LODWORD(v118) = v8;
  KeyPath = swift_getKeyPath();
  v23 = MEMORY[0x1E69E7DE0];
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for EnvironmentFetch<CGFloat>, MEMORY[0x1E69E7DE0], type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v8);
  v117[0] = KeyPath;
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, CGFloat>, &type metadata for EnvironmentValues, v23, MEMORY[0x1E69E77A8]);

  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  lazy protocol witness table accessor for type EnvironmentFetch<CGFloat> and conformance EnvironmentFetch<A>();
  lazy protocol witness table accessor for type EnvironmentFetch<CGFloat> and conformance EnvironmentFetch<A>();
  v122 = 0;
  v90 = v24;
  v25 = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

  if (*(a3 + 24) & 1) != 0 || v10 != *a3 || v12 != *(a3 + 8) || v11 != *(a3 + 16) || (*(a5 + 40))
  {
    goto LABEL_11;
  }

  v35 = *(a3 + 64);
  if (v25 == 1.0)
  {
    v36 = round(v35);
    v37 = *(a3 + 72);
    v38 = round(v37);
    if (v36 <= v38)
    {
      goto LABEL_37;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v36 = v25 * round(v35 / v25);
  v37 = *(a3 + 72);
  v38 = v25 * round(v37 / v25);
  if (v36 > v38)
  {
    goto LABEL_53;
  }

LABEL_37:
  a5 = *(a3 + 48);
  if (v36 <= v21 && (v22 <= v38 || v21 <= v38 && (*(a3 + 40) & 1) == 0 && *(a3 + 32) == *(a3 + 56)))
  {
    return a5;
  }

  v38 = v21 - v37;
  v12 = 0.01;
  v36 = v9 + v9;
  if (v21 - v37 + 0.01 > 0.0 && v38 < v36)
  {
    return *(a3 + 56);
  }

LABEL_54:
  v41 = v21 - v35;
  if (v21 - v35 + v12 > 0.0 && v41 < v36)
  {
    return a5;
  }

  if (v41 >= 0.0)
  {
    v42 = v38;
  }

  else
  {
    v42 = v21 - v35;
    if (v38 < 0.0)
    {
      if (v41 > v38)
      {
        v42 = v21 - v35;
      }

      else
      {
        v42 = v38;
      }
    }
  }

  if (v42 >= 0.0 || v9 * 3.0 <= -v42)
  {
    if (!v107)
    {
LABEL_99:
      v118 = v108;
      v77 = _ViewList_Node.estimatedCount(style:)(&v118);
      if (v10 != 1)
      {
        if (!v10)
        {
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        if (v77 == 0x8000000000000000 && v10 == -1)
        {
LABEL_150:
          __break(1u);
        }

        v77 /= v10;
      }

      v78 = v77 - 1;
      if (__OFSUB__(v77, 1))
      {
        goto LABEL_138;
      }

      v79 = round(v41 / v19);
      if ((*&v79 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_139:
        __break(1u);
        goto LABEL_140;
      }

      if (v79 <= -9.22337204e18)
      {
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

      if (v79 >= 9.22337204e18)
      {
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

      v80 = v78 & ~(v78 >> 63);
      v81 = v80 * v10;
      if ((v80 * v10) >> 64 != (v80 * v10) >> 63)
      {
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }

      if (v78 >= v79)
      {
        v78 = v79;
      }

      v82 = v78 & ~(v78 >> 63);
      v83 = v82 * v10;
      if ((v82 * v10) >> 64 != (v82 * v10) >> 63)
      {
        goto LABEL_143;
      }

      v39 = __OFADD__(a5, v83);
      v84 = a5 + v83;
      if (v39)
      {
LABEL_144:
        __break(1u);
        goto LABEL_145;
      }

      v85 = v35 + v19 * v82;
      if (v85 + v12 >= 0.0 && v85 + -0.01 <= v21)
      {
        v87 = v84 & ~(v84 >> 63);
        if (v81 >= v87)
        {
          return v87;
        }

        else
        {
          return v81;
        }
      }
    }

LABEL_11:
    v118 = v108;
    v26 = _ViewList_Node.estimatedCount(style:)(&v118);
    if (v10 != 1)
    {
      if (!v10)
      {
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      if (v26 == 0x8000000000000000 && v10 == -1)
      {
        goto LABEL_128;
      }

      v26 /= v10;
    }

    v27 = *(a2 + 32);
    v28 = 0.0;
    if (v27 > 0.0)
    {
      v29 = v21 / v27;
      v28 = 1.0;
      if (v29 < 1.0)
      {
        v28 = 0.0;
        if (v29 >= 0.0)
        {
          v28 = v29;
        }
      }
    }

    if (__OFSUB__(v26, 1))
    {
      __break(1u);
    }

    else
    {
      v30 = (v26 - 1) & ~((v26 - 1) >> 63);
      v31 = v30 * v10;
      if ((v30 * v10) >> 64 == (v30 * v10) >> 63)
      {
        v32 = v28 * v26 + 0.5;
        if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v32 > -9.22337204e18)
          {
            if (v32 < 9.22337204e18)
            {
              v33 = v32 * v10;
              if ((v32 * v10) >> 64 == v33 >> 63)
              {
                v34 = v33 & ~(v33 >> 63);
                if (v34 >= v31)
                {
                  a5 = v31;
                }

                else
                {
                  a5 = v34;
                }

                if (a5 < 1 || v107)
                {
                  return a5;
                }

                EstimationCache.average.getter();
                if (v10 == -1 && v31 == 0x8000000000000000)
                {
                  goto LABEL_130;
                }

                if (a5 < v10)
                {
                  return a5;
                }

                if (*(a2 + 208) <= 0.0)
                {
                  return a5;
                }

                v39 = __OFSUB__(a5, v10);
                a5 -= v10;
                if (!v39)
                {
                  return a5;
                }

LABEL_129:
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
                __break(1u);
LABEL_138:
                __break(1u);
                goto LABEL_139;
              }

              goto LABEL_126;
            }

LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
            goto LABEL_127;
          }

LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

LABEL_123:
        __break(1u);
        goto LABEL_124;
      }
    }

    __break(1u);
    goto LABEL_123;
  }

  if (v107)
  {
    goto LABEL_11;
  }

  v43 = *(a3 + 56);
  v44 = v43 - a5;
  if (__OFSUB__(v43, a5))
  {
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v45 = ceil(v9 / v19);
  if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  if (v45 <= -9.22337204e18)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v45 >= 9.22337204e18)
  {
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  if (v44 <= v45)
  {
    v44 = v45;
  }

  v96 = v44;
  if (v41 >= 0.0)
  {
    v46 = v43;
  }

  else
  {
    v46 = a5;
  }

  if (v41 >= 0.0)
  {
    v47 = v37;
  }

  else
  {
    v47 = v35;
  }

  v48 = v10 & 0x7FFFFFFFFFFFFFFFLL;
  v95 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v94 = v109[17];
  v49 = v109[15];
  v93 = v109[14];
  v92 = v49;
  v50 = 2;
  v91 = v10 & 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    v51 = v50 * v96;
    if ((v50 * v96) >> 64 != (v50 * v96) >> 63)
    {
      goto LABEL_131;
    }

    v39 = __OFSUB__(v46, v51);
    v52 = v46 - v51;
    v53 = v108;
    if (v39)
    {
      goto LABEL_132;
    }

    v101 = v52;
    v54 = v52 & ~(v52 >> 63);
    v55 = swift_allocObject();
    v104 = v55;
    v56 = MEMORY[0x1E69E7CC0];
    *(v55 + 16) = MEMORY[0x1E69E7CC0];
    v103 = (v55 + 16);
    v113 = v54;
    v115 = 0;
    v116 = 1;
    v114 = 3;
    v57 = swift_allocObject();
    *(v57 + 16) = v56;
    v102 = (v57 + 16);
    v112 = v46;
    v58 = v46;
    if (v48 != 1)
    {
      if (!v48)
      {
        goto LABEL_135;
      }

      v59 = v46 % v48;
      v58 = v46;
      if (v46 % v48)
      {
        v60 = v48 - v59;
        if (__OFSUB__(v48, v59))
        {
          goto LABEL_136;
        }

        v39 = __OFADD__(v46, v60);
        v58 = v46 + v60;
        if (v39)
        {
          goto LABEL_137;
        }
      }
    }

    v98 = v50;
    v39 = __OFADD__(v58, v95);
    v61 = v58 + v95;
    if (v39)
    {
      goto LABEL_133;
    }

    v112 = v61;
    v111 = v54;
    MEMORY[0x1EEE9AC00](v57);
    v89[2] = &v115;
    v89[3] = &v114;
    v89[4] = v53;
    v89[5] = &v113;
    v89[6] = &v112;
    v89[7] = v62;
    v100 = v62;
    v90 = v104;
    v63 = swift_allocObject();
    if (__OFADD__(v54, v94))
    {
      goto LABEL_134;
    }

    v64 = v63;
    v99 = v89;
    *(v63 + 16) = v54 + v94;
    v118 = v93;
    KeyPath = v92;
    v110 = v53;
    v120 = &v118;
    v121 = 1;
    MEMORY[0x1EEE9AC00](v93);
    v88[2] = v109;
    v88[3] = v64;
    v88[4] = closure #1 in LazyStack<>.collectBackwards(from:to:subviews:style:atEnd:)partial apply;
    v88[5] = v89;

    _ViewList_Node.applyNodes(from:style:transform:to:)(&v111, &v110, &v120, closure #1 in closure #1 in _LazyLayout_Subviews.apply(from:style:to:)partial apply, v88);
    v66 = v65;

    v67 = v102;
    swift_beginAccess();
    v68 = *v67;
    v69 = v101;
    v70 = v103;
    if (*(v68 + 16))
    {
      swift_beginAccess();
      v71 = *v70;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v97 = v66;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v71[2] + 1, 1, v71);
      }

      v74 = v71[2];
      v73 = v71[3];
      if (v74 >= v73 >> 1)
      {
        v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), v74 + 1, 1, v71);
      }

      v71[2] = v74 + 1;
      v71[v74 + 4] = v68;
      *v103 = v71;
      swift_endAccess();
      *v102 = MEMORY[0x1E69E7CC0];

      LOBYTE(v66) = v97;
    }

    swift_beginAccess();
    v75 = *(v104 + 16);

    v76 = v105;
    specialized StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:)(v75, v46, v69 < 1, v66 & 1, 0, &lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, v47, specialized flushBackwards #1 <A>(includeEmpty:) in StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:), specialized LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:));

    if (*(v76 + 112) <= v21 + v12)
    {
      return *(v105 + 96);
    }

    v48 = v91;
    if (v69 >= 1)
    {
      v50 = 2 * v98;
      if (v98 <= 7)
      {
        continue;
      }
    }

    goto LABEL_99;
  }
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE23resolveIndexAndPosition33_973C9973BC16DEAF0CF3109FFDE31321LL8subviews7context5cache6placer10propertiesSi5index_12CoreGraphics7CGFloatV8positiontSgAA01_C15Layout_SubviewsV_AA01_cY17_PlacementContextVAFzAA0D9PlacementAJLLVyxGzAA19PlacementPropertiesAJLLVyxGtFAA0c6VStackY0V_Tt4B5(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v105 = a4;
  v109 = a1;
  v123 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 8);
  v9 = 0.0;
  if (*(a2 + 12) != *MEMORY[0x1E698D3F8])
  {
    v9 = *(AGGraphGetValue() + 8);
  }

  v10 = *a5;
  v12 = *(a5 + 8);
  v11 = *(a5 + 16);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for _LazyStack_Cache);
  v14 = *(a3 + *(v13 + 60));
  v15 = *(v14 + 16);
  v106 = *(v13 + 60);
  if (v15)
  {
    v17 = COERCE_DOUBLE(EstimationCache.average.getter());
    if (v18)
    {
      v17 = 0.0;
    }

    v19 = v16 + v17;
    v20 = *(v14 + 16) == 0;
  }

  else
  {
    v20 = 1;
    v19 = 32.0;
  }

  v108 = 2 * v10;
  if (v19 <= 0.0)
  {
    v20 = 1;
  }

  v107 = v20;
  v21 = *(a5 + 24);
  v22 = *(a5 + 32);
  LODWORD(v118) = v8;
  KeyPath = swift_getKeyPath();
  v23 = MEMORY[0x1E69E7DE0];
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for EnvironmentFetch<CGFloat>, MEMORY[0x1E69E7DE0], type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v8);
  v117[0] = KeyPath;
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, CGFloat>, &type metadata for EnvironmentValues, v23, MEMORY[0x1E69E77A8]);

  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  lazy protocol witness table accessor for type EnvironmentFetch<CGFloat> and conformance EnvironmentFetch<A>();
  lazy protocol witness table accessor for type EnvironmentFetch<CGFloat> and conformance EnvironmentFetch<A>();
  v122 = 0;
  v90 = v24;
  v25 = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

  if (*(a3 + 24) & 1) != 0 || v10 != *a3 || v12 != *(a3 + 8) || v11 != *(a3 + 16) || (*(a5 + 40))
  {
    goto LABEL_11;
  }

  v35 = *(a3 + 64);
  if (v25 == 1.0)
  {
    v36 = round(v35);
    v37 = *(a3 + 72);
    v38 = round(v37);
    if (v36 <= v38)
    {
      goto LABEL_37;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v36 = v25 * round(v35 / v25);
  v37 = *(a3 + 72);
  v38 = v25 * round(v37 / v25);
  if (v36 > v38)
  {
    goto LABEL_53;
  }

LABEL_37:
  a5 = *(a3 + 48);
  if (v36 <= v21 && (v22 <= v38 || v21 <= v38 && (*(a3 + 40) & 1) == 0 && *(a3 + 32) == *(a3 + 56)))
  {
    return a5;
  }

  v38 = v21 - v37;
  v12 = 0.01;
  v36 = v9 + v9;
  if (v21 - v37 + 0.01 > 0.0 && v38 < v36)
  {
    return *(a3 + 56);
  }

LABEL_54:
  v41 = v21 - v35;
  if (v21 - v35 + v12 > 0.0 && v41 < v36)
  {
    return a5;
  }

  if (v41 >= 0.0)
  {
    v42 = v38;
  }

  else
  {
    v42 = v21 - v35;
    if (v38 < 0.0)
    {
      if (v41 > v38)
      {
        v42 = v21 - v35;
      }

      else
      {
        v42 = v38;
      }
    }
  }

  if (v42 >= 0.0 || v9 * 3.0 <= -v42)
  {
    if (!v107)
    {
LABEL_99:
      v118 = v108;
      v77 = _ViewList_Node.estimatedCount(style:)(&v118);
      if (v10 != 1)
      {
        if (!v10)
        {
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        if (v77 == 0x8000000000000000 && v10 == -1)
        {
LABEL_150:
          __break(1u);
        }

        v77 /= v10;
      }

      v78 = v77 - 1;
      if (__OFSUB__(v77, 1))
      {
        goto LABEL_138;
      }

      v79 = round(v41 / v19);
      if ((*&v79 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_139:
        __break(1u);
        goto LABEL_140;
      }

      if (v79 <= -9.22337204e18)
      {
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

      if (v79 >= 9.22337204e18)
      {
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

      v80 = v78 & ~(v78 >> 63);
      v81 = v80 * v10;
      if ((v80 * v10) >> 64 != (v80 * v10) >> 63)
      {
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }

      if (v78 >= v79)
      {
        v78 = v79;
      }

      v82 = v78 & ~(v78 >> 63);
      v83 = v82 * v10;
      if ((v82 * v10) >> 64 != (v82 * v10) >> 63)
      {
        goto LABEL_143;
      }

      v39 = __OFADD__(a5, v83);
      v84 = a5 + v83;
      if (v39)
      {
LABEL_144:
        __break(1u);
        goto LABEL_145;
      }

      v85 = v35 + v19 * v82;
      if (v85 + v12 >= 0.0 && v85 + -0.01 <= v21)
      {
        v87 = v84 & ~(v84 >> 63);
        if (v81 >= v87)
        {
          return v87;
        }

        else
        {
          return v81;
        }
      }
    }

LABEL_11:
    v118 = v108;
    v26 = _ViewList_Node.estimatedCount(style:)(&v118);
    if (v10 != 1)
    {
      if (!v10)
      {
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      if (v26 == 0x8000000000000000 && v10 == -1)
      {
        goto LABEL_128;
      }

      v26 /= v10;
    }

    v27 = *(a2 + 40);
    v28 = 0.0;
    if (v27 > 0.0)
    {
      v29 = v21 / v27;
      v28 = 1.0;
      if (v29 < 1.0)
      {
        v28 = 0.0;
        if (v29 >= 0.0)
        {
          v28 = v29;
        }
      }
    }

    if (__OFSUB__(v26, 1))
    {
      __break(1u);
    }

    else
    {
      v30 = (v26 - 1) & ~((v26 - 1) >> 63);
      v31 = v30 * v10;
      if ((v30 * v10) >> 64 == (v30 * v10) >> 63)
      {
        v32 = v28 * v26 + 0.5;
        if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v32 > -9.22337204e18)
          {
            if (v32 < 9.22337204e18)
            {
              v33 = v32 * v10;
              if ((v32 * v10) >> 64 == v33 >> 63)
              {
                v34 = v33 & ~(v33 >> 63);
                if (v34 >= v31)
                {
                  a5 = v31;
                }

                else
                {
                  a5 = v34;
                }

                if (a5 < 1 || v107)
                {
                  return a5;
                }

                EstimationCache.average.getter();
                if (v10 == -1 && v31 == 0x8000000000000000)
                {
                  goto LABEL_130;
                }

                if (a5 < v10)
                {
                  return a5;
                }

                if (*(a2 + 200) <= 0.0)
                {
                  return a5;
                }

                v39 = __OFSUB__(a5, v10);
                a5 -= v10;
                if (!v39)
                {
                  return a5;
                }

LABEL_129:
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
                __break(1u);
LABEL_138:
                __break(1u);
                goto LABEL_139;
              }

              goto LABEL_126;
            }

LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
            goto LABEL_127;
          }

LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

LABEL_123:
        __break(1u);
        goto LABEL_124;
      }
    }

    __break(1u);
    goto LABEL_123;
  }

  if (v107)
  {
    goto LABEL_11;
  }

  v43 = *(a3 + 56);
  v44 = v43 - a5;
  if (__OFSUB__(v43, a5))
  {
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v45 = ceil(v9 / v19);
  if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  if (v45 <= -9.22337204e18)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v45 >= 9.22337204e18)
  {
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  if (v44 <= v45)
  {
    v44 = v45;
  }

  v96 = v44;
  if (v41 >= 0.0)
  {
    v46 = v43;
  }

  else
  {
    v46 = a5;
  }

  if (v41 >= 0.0)
  {
    v47 = v37;
  }

  else
  {
    v47 = v35;
  }

  v48 = v10 & 0x7FFFFFFFFFFFFFFFLL;
  v95 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v94 = v109[17];
  v49 = v109[15];
  v93 = v109[14];
  v92 = v49;
  v50 = 2;
  v91 = v10 & 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    v51 = v50 * v96;
    if ((v50 * v96) >> 64 != (v50 * v96) >> 63)
    {
      goto LABEL_131;
    }

    v39 = __OFSUB__(v46, v51);
    v52 = v46 - v51;
    v53 = v108;
    if (v39)
    {
      goto LABEL_132;
    }

    v101 = v52;
    v54 = v52 & ~(v52 >> 63);
    v55 = swift_allocObject();
    v104 = v55;
    v56 = MEMORY[0x1E69E7CC0];
    *(v55 + 16) = MEMORY[0x1E69E7CC0];
    v103 = (v55 + 16);
    v113 = v54;
    v115 = 0;
    v116 = 1;
    v114 = 3;
    v57 = swift_allocObject();
    *(v57 + 16) = v56;
    v102 = (v57 + 16);
    v112 = v46;
    v58 = v46;
    if (v48 != 1)
    {
      if (!v48)
      {
        goto LABEL_135;
      }

      v59 = v46 % v48;
      v58 = v46;
      if (v46 % v48)
      {
        v60 = v48 - v59;
        if (__OFSUB__(v48, v59))
        {
          goto LABEL_136;
        }

        v39 = __OFADD__(v46, v60);
        v58 = v46 + v60;
        if (v39)
        {
          goto LABEL_137;
        }
      }
    }

    v98 = v50;
    v39 = __OFADD__(v58, v95);
    v61 = v58 + v95;
    if (v39)
    {
      goto LABEL_133;
    }

    v112 = v61;
    v111 = v54;
    MEMORY[0x1EEE9AC00](v57);
    v89[2] = &v115;
    v89[3] = &v114;
    v89[4] = v53;
    v89[5] = &v113;
    v89[6] = &v112;
    v89[7] = v62;
    v100 = v62;
    v90 = v104;
    v63 = swift_allocObject();
    if (__OFADD__(v54, v94))
    {
      goto LABEL_134;
    }

    v64 = v63;
    v99 = v89;
    *(v63 + 16) = v54 + v94;
    v118 = v93;
    KeyPath = v92;
    v110 = v53;
    v120 = &v118;
    v121 = 1;
    MEMORY[0x1EEE9AC00](v93);
    v88[2] = v109;
    v88[3] = v64;
    v88[4] = closure #1 in LazyStack<>.collectBackwards(from:to:subviews:style:atEnd:)partial apply;
    v88[5] = v89;

    _ViewList_Node.applyNodes(from:style:transform:to:)(&v111, &v110, &v120, partial apply for closure #1 in closure #1 in _LazyLayout_Subviews.apply(from:style:to:), v88);
    v66 = v65;

    v67 = v102;
    swift_beginAccess();
    v68 = *v67;
    v69 = v101;
    v70 = v103;
    if (*(v68 + 16))
    {
      swift_beginAccess();
      v71 = *v70;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v97 = v66;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v71[2] + 1, 1, v71);
      }

      v74 = v71[2];
      v73 = v71[3];
      if (v74 >= v73 >> 1)
      {
        v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), v74 + 1, 1, v71);
      }

      v71[2] = v74 + 1;
      v71[v74 + 4] = v68;
      *v103 = v71;
      swift_endAccess();
      *v102 = MEMORY[0x1E69E7CC0];

      LOBYTE(v66) = v97;
    }

    swift_beginAccess();
    v75 = *(v104 + 16);

    v76 = v105;
    specialized StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:)(v75, v46, v69 < 1, v66 & 1, 0, &lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, v47, specialized flushBackwards #1 <A>(includeEmpty:) in StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:), specialized LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:));

    if (*(v76 + 112) <= v21 + v12)
    {
      return *(v105 + 96);
    }

    v48 = v91;
    if (v69 >= 1)
    {
      v50 = 2 * v98;
      if (v98 <= 7)
      {
        continue;
      }
    }

    goto LABEL_99;
  }
}

uint64_t specialized LazyStack<>.placer(subviews:context:cache:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v28 = *(a1 + 136);
  v29 = *(a1 + 152);
  if (*(a1 + 296))
  {
    ScrollGeometry.outsetForAX(limit:)(*(a1 + 280));
  }

  v31.origin.y = *(&v28 + 1);
  v31.size.height = *(&v29 + 1);
  *&v31.origin.x = v28;
  *&v31.size.width = v29;
  result = CGRectIsNull(v31);
  v13 = 0.0;
  v14 = 0.0;
  if (result)
  {
    goto LABEL_18;
  }

  v15 = *&v28 + *&v29;
  if (*&v28 + *&v29 >= *&v28)
  {
    v14 = *&v28;
  }

  else
  {
    v14 = *&v28 + *&v29;
  }

  if (*&v28 > v15)
  {
    v15 = *&v28;
  }

  if (v14 > v15)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v15;
  }

  if (v14 > v15)
  {
    v14 = 0.0;
  }

  v16 = v14 > 0.0 ? v14 : 0.0;
  if (v16 >= v13)
  {
LABEL_18:
    _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e26VyxG0E0RtzrlE6placer33_973ghijk578subviews7context5cacheAA0D9PlacementAJLLVyxGSgAA01_C15M43_SubviewsV_AA01_cp1_O7ContextVAFztFSSyXEfu_SNy12CoreGraphics7CGFloatVGTf1c_n(v14, v13);
LABEL_19:
    specialized _LazyStack_Cache.reset()(&lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout);
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for StackPlacement);
    v18 = *(*(v17 - 8) + 56);

    return v18(a6, 1, 1, v17);
  }

  if (v16 > v13)
  {
    __break(1u);
    return result;
  }

  v19 = *(a1 + 40);
  if (v19 <= 0.0 || *(a1 + 32) <= 0.0)
  {
    _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e26VyxG0E0RtzrlE6placer33_973ghijk578subviews7context5cacheAA0D9PlacementAJLLVyxGSgAA01_C15M44_SubviewsV_AA01_cp1_O7ContextVAFztFSSyXEfu0_SNy12CoreGraphics7CGFloatVGTf1c_n(v16, v13);
    goto LABEL_19;
  }

  v20 = v16;
  v21 = v13;
  if ((*(a2 + 24) & 1) != 0 || *a2 != 1 || v19 != *(a2 + 8) || v19 != *(a2 + 16))
  {
    specialized _LazyStack_Cache.reset()(&lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout);
  }

  v27 = *(a1 + 48);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for StackPlacement);
  v23 = v22;
  *(a6 + 152) = 0u;
  *(a6 + 168) = 0u;
  *(a6 + 184) = 0u;
  *(a6 + 200) = 0u;
  *(a6 + 216) = 0u;
  *(a6 + 232) = 0u;
  *(a6 + 248) = 0u;
  v24 = (a6 + *(v22 + 104));
  v25 = MEMORY[0x1E69E7CC0];
  *v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v24[1] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v25);
  type metadata accessor for EstimationCache(0);
  type metadata accessor for IndexSet();
  lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [Int] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *a6 = a3;
  *(a6 + 8) = a4;
  *(a6 + 16) = a5 & 1;
  *(a6 + 20) = HIDWORD(a5);
  *(a6 + 32) = 1;
  *(a6 + 40) = v19;
  *(a6 + 48) = v19;
  *(a6 + 24) = 0;
  *(a6 + 56) = v20;
  *(a6 + 64) = v21;
  *(a6 + 72) = v27;
  *(a6 + 80) = 0;
  *(a6 + 88) = 1;
  *(a6 + 96) = 0;
  *(a6 + 104) = 0;
  *(a6 + 112) = 0;
  *(a6 + 120) = 0;
  *(a6 + 128) = 1;
  v26 = MEMORY[0x1E69E7CC0];
  *(a6 + 136) = MEMORY[0x1E69E7CC0];
  *(a6 + 144) = 0;
  *(a6 + 264) = v26;
  *(a6 + 272) = xmmword_18DDAB4E0;
  *(a6 + 288) = xmmword_18DDAB4F0;
  *(a6 + 304) = xmmword_18DDAB4F0;
  *(a6 + 320) = 0;
  return (*(*(v23 - 8) + 56))(a6, 0, 1, v23);
}

{
  v28 = *(a1 + 136);
  v29 = *(a1 + 152);
  if (*(a1 + 296))
  {
    ScrollGeometry.outsetForAX(limit:)(*(a1 + 280));
  }

  *&v31.origin.x = v28;
  *&v31.size.width = v29;
  v31.origin.y = *(&v28 + 1);
  v31.size.height = *(&v29 + 1);
  result = CGRectIsNull(v31);
  v13 = 0.0;
  v14 = 0.0;
  if (result)
  {
    goto LABEL_18;
  }

  v15 = *(&v28 + 1) + *(&v29 + 1);
  if (*(&v28 + 1) + *(&v29 + 1) >= *(&v28 + 1))
  {
    v14 = *(&v28 + 1);
  }

  else
  {
    v14 = *(&v28 + 1) + *(&v29 + 1);
  }

  if (*(&v28 + 1) > v15)
  {
    v15 = *(&v28 + 1);
  }

  if (v14 > v15)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v15;
  }

  if (v14 > v15)
  {
    v14 = 0.0;
  }

  v16 = v14 > 0.0 ? v14 : 0.0;
  if (v16 >= v13)
  {
LABEL_18:
    _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e26VyxG0E0RtzrlE6placer33_973ghijk578subviews7context5cacheAA0D9PlacementAJLLVyxGSgAA01_C15M43_SubviewsV_AA01_cp1_O7ContextVAFztFSSyXEfu_SNy12CoreGraphics7CGFloatVGTf1c_n(v14, v13);
LABEL_19:
    specialized _LazyStack_Cache.reset()(&lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout);
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for StackPlacement);
    v18 = *(*(v17 - 8) + 56);

    return v18(a6, 1, 1, v17);
  }

  if (v16 > v13)
  {
    __break(1u);
    return result;
  }

  v19 = *(a1 + 32);
  if (v19 <= 0.0 || *(a1 + 40) <= 0.0)
  {
    _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e26VyxG0E0RtzrlE6placer33_973ghijk578subviews7context5cacheAA0D9PlacementAJLLVyxGSgAA01_C15M44_SubviewsV_AA01_cp1_O7ContextVAFztFSSyXEfu0_SNy12CoreGraphics7CGFloatVGTf1c_n(v16, v13);
    goto LABEL_19;
  }

  v20 = v16;
  v21 = v13;
  if ((*(a2 + 24) & 1) != 0 || *a2 != 1 || v19 != *(a2 + 8) || v19 != *(a2 + 16))
  {
    specialized _LazyStack_Cache.reset()(&lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout);
  }

  v27 = *(a1 + 48);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for StackPlacement);
  v23 = v22;
  *(a6 + 152) = 0u;
  *(a6 + 168) = 0u;
  *(a6 + 184) = 0u;
  *(a6 + 200) = 0u;
  *(a6 + 216) = 0u;
  *(a6 + 232) = 0u;
  *(a6 + 248) = 0u;
  v24 = (a6 + *(v22 + 104));
  v25 = MEMORY[0x1E69E7CC0];
  *v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v24[1] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v25);
  type metadata accessor for EstimationCache(0);
  type metadata accessor for IndexSet();
  lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [Int] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *a6 = a3;
  *(a6 + 8) = a4;
  *(a6 + 16) = a5 & 1;
  *(a6 + 20) = HIDWORD(a5);
  *(a6 + 32) = 1;
  *(a6 + 40) = v19;
  *(a6 + 48) = v19;
  *(a6 + 24) = 1;
  *(a6 + 56) = v20;
  *(a6 + 64) = v21;
  *(a6 + 72) = v27;
  *(a6 + 80) = 0;
  *(a6 + 88) = 1;
  *(a6 + 96) = 0;
  *(a6 + 104) = 0;
  *(a6 + 112) = 0;
  *(a6 + 120) = 0;
  *(a6 + 128) = 1;
  v26 = MEMORY[0x1E69E7CC0];
  *(a6 + 136) = MEMORY[0x1E69E7CC0];
  *(a6 + 144) = 0;
  *(a6 + 264) = v26;
  *(a6 + 272) = xmmword_18DDAB4E0;
  *(a6 + 288) = xmmword_18DDAB4F0;
  *(a6 + 304) = xmmword_18DDAB4F0;
  *(a6 + 320) = 0;
  return (*(*(v23 - 8) + 56))(a6, 0, 1, v23);
}

void specialized sufficientlyDiffers<A, B, C>(lhs:rhs:ratio:baseline:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v6 = a1 + 64;
  v7 = 1.0 / a3 * a4;
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = a2 + 64;

  v14 = 0;
LABEL_5:
  if (v10)
  {
    v15 = v14;
LABEL_10:
    v16 = 0;
    v17 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v18 = *(*(v13 + 48) + ((v15 << 9) | (8 * v17)));
    v19 = 1 << *(a2 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(a2 + 64);
    v22 = (v19 + 63) >> 6;
    while (v21)
    {
LABEL_20:
      v24 = *(a2 + 48);
      v25 = (v16 << 9) | (8 * __clz(__rbit64(v21)));
      v26 = *(v24 + v25);
      v21 &= v21 - 1;
      if (v26 >= v18)
      {
        v27 = v18;
      }

      else
      {
        v27 = *(v24 + v25);
      }

      if (v18 > v26)
      {
        v26 = v18;
      }

      if (v26 == 0.0)
      {
        v14 = v15;
        goto LABEL_5;
      }

      if (v26 <= v7)
      {
        if (v27 == v26)
        {
          v14 = v15;
          goto LABEL_5;
        }
      }

      else if (v27 / v26 > a3)
      {
        v14 = v15;
        goto LABEL_5;
      }
    }

    while (1)
    {
      v23 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v23 >= v22)
      {
        goto LABEL_31;
      }

      v21 = *(v12 + 8 * v23);
      ++v16;
      if (v21)
      {
        v16 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v11)
      {
LABEL_31:

        return;
      }

      v10 = *(v6 + 8 * v15);
      ++v14;
      if (v10)
      {
        goto LABEL_10;
      }
    }
  }

  __break(1u);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE16collectBackwards33_973C9973BC16DEAF0CF3109FFDE31321LL4from2to8subviews5style5atEndSaySayAA01_C14Layout_SubviewVGGSi_SiAA01_cS9_SubviewsVAA23_ViewList_IteratorStyleVSbztFAA0c6HStackS0V_Tt4B5Tm(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, _BYTE *a5, uint64_t a6)
{
  v28 = a5;
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  v12 = (v10 + 16);
  v35 = a1;
  v33 = 0;
  v34 = 1;
  v32 = 3;
  result = swift_allocObject();
  v14 = result;
  *(result + 16) = v11;
  v15 = (result + 16);
  v16 = a4 >> 1;
  v17 = (a4 >> 1) - 1;
  if (a4 >> 1 == 1)
  {
LABEL_6:
    v19 = __OFADD__(a2, v17);
    v21 = a2 + v17;
    if (v19)
    {
      __break(1u);
    }

    else
    {
      v30 = a1;
      v31 = v21;
      v29[0] = a4;
      MEMORY[0x1EEE9AC00](result);
      v27[2] = &v33;
      v27[3] = &v32;
      v27[4] = a4;
      v27[5] = &v35;
      v27[6] = &v31;
      v27[7] = v14;
      v27[8] = v10;
      v22 = _LazyLayout_Subviews.apply(from:style:to:)(&v30, v29, a6, v27);
      *v28 = v22 & 1;
      swift_beginAccess();
      a6 = *(v14 + 16);
      if (!*(a6 + 16))
      {
LABEL_12:
        swift_beginAccess();
        v26 = *(v10 + 16);

        return v26;
      }

      swift_beginAccess();
      v11 = *v12;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_9:
        v23 = MEMORY[0x1E69E7CC0];
        v25 = v11[2];
        v24 = v11[3];
        if (v25 >= v24 >> 1)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v11);
        }

        v11[2] = v25 + 1;
        v11[v25 + 4] = a6;
        *v12 = v11;
        swift_endAccess();
        *v15 = v23;

        goto LABEL_12;
      }
    }

    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
    goto LABEL_9;
  }

  if (!v16)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = a2 % v16;
  if (!(a2 % v16))
  {
    goto LABEL_6;
  }

  v19 = __OFSUB__(v16, v18);
  v20 = v16 - v18;
  if (v19)
  {
    goto LABEL_16;
  }

  v19 = __OFADD__(a2, v20);
  a2 += v20;
  if (!v19)
  {
    goto LABEL_6;
  }

LABEL_17:
  __break(1u);
  return result;
}

void specialized StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:)(uint64_t a1, unint64_t a2, int a3, unsigned int a4, int a5, unint64_t *a6, uint64_t (*a7)(void), uint64_t a8, double a9, void (*a10)(void, unint64_t *, char *, void, char *, _WORD *, __n128), double (*a11)(unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, double))
{
  v144 = a8;
  v142 = a6;
  v13 = v11;
  v139 = a5;
  v19 = type metadata accessor for IndexSet();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = *(a1 + 16);
  if (v148)
  {
    v146 = a4;
    v135 = a3;
    v147 = a2;
    v13[12] = a2;
    *(v13 + 14) = a9;
    *(v13 + 104) = 1;
    v13[15] = 0;
    *(v13 + 128) = 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v13[17];
    v143 = (v13 + 17);
    if (isUniquelyReferenced_nonNull_native)
    {
      specialized Array.replaceSubrange<A>(_:with:)(0, *(v24 + 16));
    }

    else
    {
      v25 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI19_LazyLayout_SubviewV_Tt1g5(0, *(v24 + 24) >> 1);

      v13[17] = v25;
    }

    v13[18] = 0;
    outlined destroy of GlassEntryView?((v13 + 19), &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
    *(v13 + 19) = 0u;
    *(v13 + 21) = 0u;
    *(v13 + 23) = 0u;
    *(v13 + 25) = 0u;
    *(v13 + 27) = 0u;
    *(v13 + 29) = 0u;
    *(v13 + 31) = 0u;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v27 = v13[33];
    if (v26)
    {
      specialized Array.replaceSubrange<A>(_:with:)(0, *(v27 + 16));
    }

    else
    {
      v28 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI25_LazyLayout_PlacedSubviewV_Tt1g5(0, *(v27 + 24) >> 1);

      v13[33] = v28;
    }

    v29 = v144;
    v30 = v142;
    *(v13 + 17) = xmmword_18DDAB4E0;
    *(v13 + 18) = xmmword_18DDAB4F0;
    *(v13 + 19) = xmmword_18DDAB4F0;
    *(v13 + 320) = 0;
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, v30, a7, v29, type metadata accessor for StackPlacement);
    v32 = (v13 + *(v31 + 104));
    v33 = MEMORY[0x1E69E7CC0];
    v34 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

    *v32 = v34;
    v35 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v33);

    v32[1] = v35;
    v169 = v33;
    lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [Int] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v36 = type metadata accessor for EstimationCache(0);
    (*(v20 + 40))(v32 + *(v36 + 24), v22, v19);
    v175[0] = 0;
    v174 = 0;
    if ((v146 & 1) == 0)
    {
      v39 = v143;
      goto LABEL_12;
    }

    v37 = v13[4];
    v38 = v147 - v37;
    v39 = v143;
    if (!__OFSUB__(v147, v37))
    {
      v147 -= v37;
      v13[12] = v38;
      v174 = 1;
LABEL_12:
      v136 = a11;
      v134 = a10;

      swift_beginAccess();
      swift_beginAccess();
      v40 = 0;
      v41 = 0;
      v42 = 0;
      LODWORD(v144) = *MEMORY[0x1E698D3F8];
      v43 = 8 * v148 + 24;
      v145 = a1;
      v142 = v13;
      while (1)
      {
        v44 = *(a1 + v43);

        *v39 = v44;
        if (v40 == 1)
        {
          v41 = 1;
          LOBYTE(v175[0]) = 1;
          if (!*(v44 + 16))
          {
            v44 = v42;
            goto LABEL_138;
          }

          if (!v42)
          {
            goto LABEL_154;
          }

          if (!*(v42 + 16))
          {
            goto LABEL_148;
          }

          outlined init with copy of _LazyLayout_Subview(v42 + 32, &v169);
          if (v172 == 1)
          {

            outlined destroy of _LazyLayout_Subview(&v169);
            goto LABEL_40;
          }

          v58 = v173;

          outlined destroy of _LazyLayout_Subview(&v169);
          if (v58 == 1)
          {
LABEL_40:
            outlined init with copy of _LazyLayout_Subview(v42 + 32, &v169);

            v59 = *(v13 + 24);
            v60 = v13[5];
            v61 = v13;
            if (*(v13 + 24))
            {
              v62 = v13[5];
            }

            else
            {
              v62 = 0;
            }

            if (v59)
            {
              v63 = 0;
            }

            else
            {
              v63 = v60;
            }

            if (!*(v44 + 16))
            {
              goto LABEL_151;
            }

            outlined init with copy of _LazyLayout_Subview(v44 + 32, v168);

            v141 = *(v61 + 1);
            v140 = *(v61 + 16);
            v64 = v170;
            v137 = v169;
            v65 = *(LazyLayoutViewCache.item(data:)(v171) + 44);

            v138 = v64;
            if (v65 == v144)
            {
              InputValue = &static LayoutComputer.defaultValue;
              if (one-time initialization token for defaultValue != -1)
              {
                swift_once();
                InputValue = &static LayoutComputer.defaultValue;
              }
            }

            else
            {
              InputValue = AGGraphGetInputValue();
            }

            v75 = *InputValue;
            v76 = one-time initialization token for lockAssertionsAreEnabled;

            if (v76 != -1)
            {
              swift_once();
            }

            a1 = v145;
            if (lockAssertionsAreEnabled)
            {
              if (one-time initialization token for _lock != -1)
              {
                swift_once();
              }

              if (!_MovableLockIsOwner(static Update._lock))
              {
                goto LABEL_156;
              }
            }

            *&v161 = v62;
            BYTE8(v161) = v59 ^ 1;
            *&v162 = v63;
            BYTE8(v162) = v59;
            v77 = (*(*v75 + 128))(&v161, v59);

            outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(v168, &v161, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
            if (v161)
            {
              v157 = v164;
              v158 = v165;
              v159 = v166;
              v160 = v167;
              v154 = v161;
              v155 = v162;
              v156 = v163;
              *&v78 = v141;
              v13 = v142;
              if (v140)
              {
                v79 = DWORD2(v154);
                v80 = *(LazyLayoutViewCache.item(data:)(&v155) + 44);

                v151 = v79;
                v152 = v80;
                v81 = v144;
                v153 = v144;
                LayoutProxy.spacing()();
                v150 = *AGGraphGetValue();
                v82 = *(LazyLayoutViewCache.item(data:)(v171) + 44);

                v151 = v138;
                v152 = v82;
                v153 = v81;
                LayoutProxy.spacing()();
                *&v78 = COERCE_DOUBLE(Spacing.distanceToSuccessorView(along:layoutDirection:preferring:)(v59, &v150, &v149));
                LOBYTE(v82) = v83;

                if (v82)
                {
                  swift_beginAccess();
                  v84 = &dbl_1EAB21528;
                  if (!v59)
                  {
                    v84 = static Spacing.defaultValue;
                  }

                  v78 = *v84;
                }
              }

              outlined destroy of _LazyLayout_Subview(&v154);
              v85 = *&v78;
            }

            else
            {
              v85 = 0.0;
              v13 = v142;
            }

            outlined destroy of GlassEntryView?(v168, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
            outlined destroy of _LazyLayout_Subview(&v169);
            v39 = v143;
          }

          else
          {
            v97 = *v13;
            v98 = v13[1];
            v99 = *(v13 + 6);
            v100 = *(v13 + 5);
            v168[0] = *(v13 + 16);
            v77 = v136(v42, v44, v97, v98, v168[0] | (v100 << 32), v99);
            v85 = v101;
          }

          v102 = a9 - v77;
          if (v146)
          {
            v103 = a9 - v77;
          }

          else
          {
            v103 = a9;
          }

          v104 = v103 - v85;
          v105 = v147;
          if (v147)
          {
            v102 = v104;
          }

          if (v146)
          {
            a9 = v102;
            *(v13 + 14) = v102;
          }

          if (v85 + a9 <= *(v13 + 7) && (v139 & 1) == 0)
          {
LABEL_141:
            v13[17] = v42;
            v13[18] = v44;
            v130 = swift_isUniquelyReferenced_nonNull_native();
            v131 = v13[17];
            if (v130)
            {
              specialized Array.replaceSubrange<A>(_:with:)(0, *(v131 + 16));
            }

            else
            {
              v132 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI19_LazyLayout_SubviewV_Tt1g5(0, *(v131 + 24) >> 1);

              *v39 = v132;
            }

            return;
          }

          v106 = v13[4];
          v107 = __OFSUB__(v105, v106);
          v108 = v105 - v106;
          if (v107)
          {
            goto LABEL_150;
          }

          if ((v108 & 0x8000000000000000) == 0)
          {
            v13[12] = v108;
            v105 = v108;
          }

          v147 = v105;
          v13[17] = v42;
          v13[18] = v44;
          v109 = swift_isUniquelyReferenced_nonNull_native();
          v53 = v13[17];
          if (v109)
          {
            v110 = *(v53 + 2);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v110, 1, v53);
            }

            swift_arrayDestroy();
            if (v110)
            {
              v111 = &v53[112 * v110];
              v112 = *(v53 + 2) - v110;
              memmove(v53 + 32, v111 + 32, 112 * v112);
              *(v53 + 2) = v112;
            }

            v41 = 1;
          }

          else
          {
            v113 = MEMORY[0x1E69E7CC0];
            if (*(v53 + 3) >= 2uLL)
            {
              type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_LazyLayout_Subview>, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6F90]);
              v113 = swift_allocObject();
              v114 = _swift_stdlib_malloc_size(v113);
              v113[2] = 0;
              v113[3] = 2 * ((v114 - 32) / 112);
            }

            v53 = v113;
            v41 = 1;
          }

          goto LABEL_137;
        }

        if (v40)
        {
          break;
        }

        v45 = v13;
        v46 = v39;
        v47 = a1;
        v48 = v41;
        v49 = MEMORY[0x1E69E7CC0];
        if (v42)
        {
          v50 = v42;
        }

        else
        {
          v50 = MEMORY[0x1E69E7CC0];
        }

        v45[17] = v50;
        v45[18] = v44;
        v51 = swift_isUniquelyReferenced_nonNull_native();
        v52 = v45;
        v53 = v45[17];
        if (v51)
        {
          v54 = *(v53 + 2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54, 1, v53);
          }

          swift_arrayDestroy();
          if (v54)
          {
            v55 = &v53[112 * v54];
            v56 = *(v53 + 2) - v54;
            memmove(v53 + 32, v55 + 32, 112 * v56);
            *(v53 + 2) = v56;
          }
        }

        else
        {
          if (*(v53 + 3) >= 2uLL)
          {
            type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_LazyLayout_Subview>, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6F90]);
            v49 = swift_allocObject();
            v57 = _swift_stdlib_malloc_size(v49);
            v49[2] = 0;
            v49[3] = 2 * ((v57 - 32) / 112);
          }

          v53 = v49;
        }

        v41 = v48;
        a1 = v47;
        v39 = v46;
        v13 = v52;
LABEL_137:
        *v39 = v53;
LABEL_138:
        if (__OFADD__(v40, 1))
        {
          __break(1u);
LABEL_146:

          swift_beginAccess();
          LOBYTE(v175[0]) = 1;
          swift_beginAccess();
          v174 = 1;
          (v134)(v135 & 1, v13, &v174, v139 & 1, v175 + 1, v175);
          return;
        }

        ++v40;
        v43 -= 8;
        v42 = v44;
        if (v148 == v40)
        {
          goto LABEL_146;
        }
      }

      v174 = 1;
      if (!*(v44 + 16))
      {
        v146 = 1;
        v44 = v42;
        goto LABEL_138;
      }

      if (!v42)
      {
        goto LABEL_155;
      }

      if (!*(v42 + 16))
      {
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

      outlined init with copy of _LazyLayout_Subview(v42 + 32, &v169);
      if (v172 == 1)
      {

        outlined destroy of _LazyLayout_Subview(&v169);
      }

      else
      {
        v67 = v173;

        outlined destroy of _LazyLayout_Subview(&v169);
        if (v67 != 1)
        {
          v115 = *v13;
          v116 = v13[1];
          v117 = *(v13 + 6);
          v118 = *(v13 + 5);
          v168[0] = *(v13 + 16);
          v88 = v136(v42, v44, v115, v116, v168[0] | (v118 << 32), v117);
          v96 = v119;

          v39 = v143;
LABEL_119:
          v120 = v147;
          if (v147)
          {
            a9 = a9 - v88 - v96;
          }

          else
          {
            a9 = a9 - v88;
          }

          *(v13 + 14) = a9;
          if (v96 + a9 <= *(v13 + 7) && (v139 & 1) == 0)
          {
            goto LABEL_141;
          }

          v121 = v13[4];
          v107 = __OFSUB__(v120, v121);
          v122 = v120 - v121;
          if (v107)
          {
            goto LABEL_149;
          }

          if ((v41 & (v122 >= 0)) == 1)
          {
            v13[12] = v122;
            v120 = v122;
          }

          v123 = v41;
          v147 = v120;
          v13[17] = v42;
          v13[18] = v44;
          v124 = swift_isUniquelyReferenced_nonNull_native();
          v53 = v13[17];
          if (v124)
          {
            v125 = *(v53 + 2);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v125, 1, v53);
            }

            swift_arrayDestroy();
            if (v125)
            {
              v126 = &v53[112 * v125];
              v127 = *(v53 + 2) - v125;
              memmove(v53 + 32, v126 + 32, 112 * v127);
              *(v53 + 2) = v127;
            }

            v146 = 1;
          }

          else
          {
            v128 = MEMORY[0x1E69E7CC0];
            if (*(v53 + 3) >= 2uLL)
            {
              type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_LazyLayout_Subview>, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6F90]);
              v128 = swift_allocObject();
              v129 = _swift_stdlib_malloc_size(v128);
              v128[2] = 0;
              v128[3] = 2 * ((v129 - 32) / 112);
            }

            v146 = 1;
            v53 = v128;
          }

          v41 = v123;
          a1 = v145;
          goto LABEL_137;
        }
      }

      v146 = v41;
      outlined init with copy of _LazyLayout_Subview(v42 + 32, &v169);

      v68 = v13;
      v69 = *(v13 + 24);
      if (v69)
      {
        v70 = v68[5];
      }

      else
      {
        v70 = 0;
      }

      if (v69)
      {
        v71 = 0;
      }

      else
      {
        v71 = v68[5];
      }

      if (!*(v44 + 16))
      {
        goto LABEL_152;
      }

      outlined init with copy of _LazyLayout_Subview(v44 + 32, v168);

      v141 = *(v68 + 1);
      v140 = *(v68 + 16);
      v72 = v170;
      v137 = v169;
      v73 = *(LazyLayoutViewCache.item(data:)(v171) + 44);

      v138 = v72;
      if (v73 == v144)
      {
        v74 = &static LayoutComputer.defaultValue;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          v74 = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        v74 = AGGraphGetInputValue();
      }

      v86 = *v74;
      v87 = one-time initialization token for lockAssertionsAreEnabled;

      if (v87 != -1)
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
          goto LABEL_156;
        }
      }

      *&v161 = v70;
      BYTE8(v161) = v69 ^ 1;
      *&v162 = v71;
      BYTE8(v162) = v69;
      v88 = (*(*v86 + 128))(&v161, v69);

      outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(v168, &v161, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
      if (v161)
      {
        v157 = v164;
        v158 = v165;
        v159 = v166;
        v160 = v167;
        v154 = v161;
        v155 = v162;
        v156 = v163;
        v39 = v143;
        v41 = v146;
        if (v140)
        {
          v89 = DWORD2(v154);
          v90 = *(LazyLayoutViewCache.item(data:)(&v155) + 44);

          v151 = v89;
          v152 = v90;
          v91 = v144;
          v153 = v144;
          LayoutProxy.spacing()();
          v150 = *AGGraphGetValue();
          v92 = *(LazyLayoutViewCache.item(data:)(v171) + 44);

          v151 = v138;
          v152 = v92;
          v153 = v91;
          LayoutProxy.spacing()();
          v93 = Spacing.distanceToSuccessorView(along:layoutDirection:preferring:)(v69, &v150, &v149);
          LOBYTE(v92) = v94;

          if (v92)
          {
            swift_beginAccess();
            v95 = &dbl_1EAB21528;
            if (!v69)
            {
              v95 = static Spacing.defaultValue;
            }

            v141 = *v95;
          }

          else
          {
            v141 = *&v93;
          }

          v41 = v146;
        }

        outlined destroy of _LazyLayout_Subview(&v154);
        v96 = v141;
      }

      else
      {
        v96 = 0.0;
        v39 = v143;
        v41 = v146;
      }

      outlined destroy of GlassEntryView?(v168, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
      outlined destroy of _LazyLayout_Subview(&v169);
      v13 = v142;
      goto LABEL_119;
    }

LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void specialized Sequence.min(by:)(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = *(a1 + 16);
  if (!v3)
  {

    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
    return;
  }

  v4 = *(a1 + 80);
  v101 = *(a1 + 64);
  v102 = v4;
  v103 = *(a1 + 96);
  v5 = *(a1 + 48);
  v99 = *(a1 + 32);
  v100 = v5;

  outlined init with copy of _LazyLayout_PlacedSubview(&v99, &v94);
  v96 = v101;
  v97 = v102;
  v98 = v103;
  v94 = v99;
  v95 = v100;
  v6 = v3 - 1;
  if (v3 == 1)
  {
LABEL_3:

    v7 = v97;
    a3[2] = v96;
    a3[3] = v7;
    a3[4] = v98;
    v8 = v95;
    *a3 = v94;
    a3[1] = v8;
    return;
  }

  v104 = *MEMORY[0x1E698D3F8];
  v10 = (a1 + 112);
  while (1)
  {
    v11 = v10[1];
    v89 = *v10;
    v90 = v11;
    v12 = v10[3];
    v91 = v10[2];
    v92 = v12;
    v93 = v10[4];
    v13 = v89;
    if ((*(v89 + 173) & 1) != 0 || *(v89 + 174) == 1)
    {
      outlined init with copy of _LazyLayout_PlacedSubview(&v89, &v85);
LABEL_11:
      v14 = INFINITY;
      goto LABEL_12;
    }

    if (*(v89 + 44) == v104)
    {
      outlined init with copy of _LazyLayout_PlacedSubview(&v89, &v85);
      Value = &static LayoutComputer.defaultValue;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
        Value = &static LayoutComputer.defaultValue;
      }
    }

    else
    {
      outlined init with copy of _LazyLayout_PlacedSubview(&v89, &v85);
      Value = AGGraphGetValue();
    }

    v18 = *Value;
    v19 = *(&v89 + 1);
    v20 = v90;
    v21 = *(&v90 + 1);
    v22 = v91;
    v23 = *(&v91 + 1);
    v25 = v92;
    v24 = *&v93;
    v26 = one-time initialization token for lockAssertionsAreEnabled;

    if (v26 != -1)
    {
      swift_once();
    }

    v27 = lockAssertionsAreEnabled;
    if (lockAssertionsAreEnabled)
    {
      if (one-time initialization token for _lock != -1)
      {
        swift_once();
      }

      if (!_MovableLockIsOwner(static Update._lock))
      {
        break;
      }
    }

    v85 = v19;
    v86 = v20;
    v87 = v21;
    v88 = v22;
    v28 = (*(*v18 + 120))(&v85);
    v30 = v29;

    if (*(v13 + 44) == v104)
    {
      v31 = &static LayoutComputer.defaultValue;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
        v31 = &static LayoutComputer.defaultValue;
      }
    }

    else
    {
      v31 = AGGraphGetValue();
    }

    v46 = *v31;
    if (v27)
    {
      v47 = one-time initialization token for _lock;

      if (v47 != -1)
      {
        swift_once();
      }

      if (!_MovableLockIsOwner(static Update._lock))
      {
        break;
      }
    }

    else
    {
    }

    v85 = v19;
    v86 = v20;
    v87 = v21;
    v88 = v22;
    v48 = (*(*v46 + 120))(&v85);
    v50 = v49;

    swift_beginAccess();
    v105.origin.x = *(&v25 + 1) - v23 * v28;
    v105.origin.y = v24 - *&v25 * v30;
    v105.size.width = v48;
    v105.size.height = v50;
    v106 = CGRectIntersection(v105, *(a2 + 16));
    if (!CGRectIsEmpty(v106))
    {
      goto LABEL_11;
    }

    if (*(v13 + 44) == v104)
    {
      v51 = &static LayoutComputer.defaultValue;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
        v51 = &static LayoutComputer.defaultValue;
      }
    }

    else
    {
      v51 = AGGraphGetValue();
    }

    v65 = *v51;
    if (v27)
    {
      v66 = one-time initialization token for _lock;

      if (v66 != -1)
      {
        swift_once();
      }

      if (!_MovableLockIsOwner(static Update._lock))
      {
        break;
      }
    }

    else
    {
    }

    v85 = v19;
    v86 = v20;
    v87 = v21;
    v88 = v22;
    v67 = (*(*v65 + 120))(&v85);
    v69 = v68;

    if (*(v13 + 44) == v104)
    {
      v70 = &static LayoutComputer.defaultValue;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
        v70 = &static LayoutComputer.defaultValue;
      }
    }

    else
    {
      v70 = AGGraphGetValue();
    }

    v77 = *v70;
    if (v27)
    {
      v78 = one-time initialization token for _lock;

      if (v78 != -1)
      {
        swift_once();
      }

      if (!_MovableLockIsOwner(static Update._lock))
      {
        break;
      }
    }

    else
    {
    }

    v85 = v19;
    v86 = v20;
    v87 = v21;
    v88 = v22;
    (*(*v77 + 120))(&v85);

    v14 = sqrt((*(&v25 + 1) - v23 * v67) * (*(&v25 + 1) - v23 * v67) + (v24 - *&v25 * v69) * (v24 - *&v25 * v69));
LABEL_12:
    v15 = v94;
    if ((*(v94 + 173) & 1) != 0 || *(v94 + 174) == 1)
    {
      if (v14 != INFINITY)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (*(v94 + 44) == v104)
      {
        v17 = &static LayoutComputer.defaultValue;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          v17 = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        v17 = AGGraphGetValue();
      }

      v32 = *v17;
      v33 = *(&v94 + 1);
      v34 = v95;
      v35 = *(&v95 + 1);
      v36 = v96;
      v37 = *(&v96 + 1);
      v39 = *&v97;
      v38 = *&v98;
      v83 = *(&v97 + 1);
      v40 = one-time initialization token for lockAssertionsAreEnabled;

      if (v40 != -1)
      {
        swift_once();
      }

      v41 = lockAssertionsAreEnabled;
      if (lockAssertionsAreEnabled)
      {
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          break;
        }
      }

      v85 = v33;
      v86 = v34;
      v87 = v35;
      v88 = v36;
      v42 = (*(*v32 + 120))(&v85);
      v44 = v43;

      if (*(v15 + 44) == v104)
      {
        v45 = &static LayoutComputer.defaultValue;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          v45 = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        v45 = AGGraphGetValue();
      }

      v52 = *v45;
      if (v41)
      {
        v53 = one-time initialization token for _lock;

        if (v53 != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          break;
        }
      }

      else
      {
      }

      v54 = v37;
      v55 = v39;
      v56 = v39 * v44;
      v57 = v83 - v37 * v42;
      v58 = v38;
      v59 = v38 - v56;
      v85 = v33;
      v86 = v34;
      v87 = v35;
      v88 = v36;
      v60 = (*(*v52 + 120))(&v85);
      v62 = v61;

      swift_beginAccess();
      v107.origin.x = v57;
      v107.origin.y = v59;
      v107.size.width = v60;
      v107.size.height = v62;
      v108 = CGRectIntersection(v107, *(a2 + 16));
      if (CGRectIsEmpty(v108))
      {
        if (*(v15 + 44) == v104)
        {
          v63 = &static LayoutComputer.defaultValue;
          v64 = v58;
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
            v63 = &static LayoutComputer.defaultValue;
          }
        }

        else
        {
          v63 = AGGraphGetValue();
          v64 = v58;
        }

        v71 = *v63;
        if (v41)
        {
          v72 = one-time initialization token for _lock;

          if (v72 != -1)
          {
            swift_once();
          }

          if (!_MovableLockIsOwner(static Update._lock))
          {
            break;
          }
        }

        else
        {
        }

        v85 = v33;
        v86 = v34;
        v87 = v35;
        v88 = v36;
        v73 = (*(*v71 + 120))(&v85);
        v75 = v74;

        if (*(v15 + 44) == v104)
        {
          v76 = &static LayoutComputer.defaultValue;
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
            v76 = &static LayoutComputer.defaultValue;
          }
        }

        else
        {
          v76 = AGGraphGetValue();
        }

        v79 = *v76;
        if (v41)
        {
          v80 = one-time initialization token for _lock;

          if (v80 != -1)
          {
            swift_once();
          }

          if (!_MovableLockIsOwner(static Update._lock))
          {
            break;
          }
        }

        else
        {
        }

        v85 = v33;
        v86 = v34;
        v87 = v35;
        v88 = v36;
        (*(*v79 + 120))(&v85);

        if (v14 < sqrt((v83 - v54 * v73) * (v83 - v54 * v73) + (v64 - v55 * v75) * (v64 - v55 * v75)))
        {
LABEL_15:
          outlined destroy of _LazyLayout_PlacedSubview(&v94);
          v96 = v91;
          v97 = v92;
          v98 = v93;
          v94 = v89;
          v95 = v90;
          goto LABEL_7;
        }
      }

      else if (v14 != INFINITY)
      {
        goto LABEL_15;
      }
    }

    outlined destroy of _LazyLayout_PlacedSubview(&v89);
LABEL_7:
    v10 += 5;
    if (!--v6)
    {
      goto LABEL_3;
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized Sequence.min(by:)(uint64_t a1@<X0>, void (*a2)(float64x2_t *__return_ptr, uint64_t, __int128 *)@<X1>, uint64_t a3@<X8>)
{
  v40 = 0;
  v41 = 0;
  v39 = a1;
  specialized EnumeratedSequence.Iterator.next()(&v33);
  if (*(&v33 + 1))
  {
    v22 = a3;
    v46 = v3;
    *&v32[32] = v35;
    *&v32[48] = v36;
    *&v32[64] = v37;
    *&v32[80] = v38;
    *v32 = v33;
    *&v32[16] = v34;
    v6 = v39;
    v7 = v40;
    v8 = v41;
    v9 = *(v39 + 16);

    if (v7 == v9)
    {
LABEL_3:

      v10 = *&v32[48];
      *(v22 + 32) = *&v32[32];
      *(v22 + 48) = v10;
      *(v22 + 64) = *&v32[64];
      *(v22 + 80) = *&v32[80];
      v11 = *&v32[16];
      *v22 = *v32;
      *(v22 + 16) = v11;
    }

    else
    {
      v15 = (v6 + 80 * v7 + 32);
      while (v7 < v9)
      {
        v30[0] = *v15;
        v16 = v15[1];
        v17 = v15[2];
        v18 = v15[4];
        v30[3] = v15[3];
        v30[4] = v18;
        v30[1] = v16;
        v30[2] = v17;
        v19 = v15[3];
        v27 = v15[2];
        v28 = v19;
        v29 = v15[4];
        v20 = v15[1];
        v25 = *v15;
        v26 = v20;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_15;
        }

        *v31 = v8;
        *&v31[24] = v26;
        *&v31[40] = v27;
        *&v31[56] = v28;
        *&v31[72] = v29;
        *&v31[8] = v25;
        outlined init with copy of _LazyLayout_PlacedSubview(v30, v24);
        a2(v42, v8, &v25);
        if (v43 & 1) != 0 || (v23 = v42[0], v27 = *&v32[40], v28 = *&v32[56], v29 = *&v32[72], v25 = *&v32[8], v26 = *&v32[24], a2(v44, *v32, &v25), (v45) || (v21 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v23, v23), vmulq_f64(v44[0], v44[0]))), (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v21, 1), v21)).u8[0] & 1) == 0))
        {
          outlined destroy of (offset: Int, element: _LazyLayout_PlacedSubview)(v31);
        }

        else
        {
          outlined destroy of (offset: Int, element: _LazyLayout_PlacedSubview)(v32);
          *&v32[32] = *&v31[32];
          *&v32[48] = *&v31[48];
          *&v32[64] = *&v31[64];
          *&v32[80] = *&v31[80];
          *v32 = *v31;
          *&v32[16] = *&v31[16];
        }

        ++v7;
        v9 = *(v6 + 16);
        v15 += 5;
        ++v8;
        if (v7 == v9)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }
  }

  else
  {
    v12 = v33;

    *&v32[32] = v35;
    *&v32[48] = v36;
    *&v32[64] = v37;
    *&v32[80] = v38;
    *v32 = v33;
    *&v32[16] = v34;
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v32, type metadata accessor for (offset: Int, element: _LazyLayout_PlacedSubview)?);
    *a3 = v12;
    *(a3 + 8) = 0;
    v13 = v37;
    *(a3 + 48) = v36;
    *(a3 + 64) = v13;
    *(a3 + 80) = v38;
    v14 = v35;
    *(a3 + 16) = v34;
    *(a3 + 32) = v14;
  }
}