uint64_t static PillMetrics.truncatedLine(from:maxWidth:)(const __CFAttributedString *a1, double a2)
{
  v2 = CTLineCreateWithAttributedString(a1);
  TruncatedLineWithTokenHandler = CTLineCreateTruncatedLineWithTokenHandler();

  return TruncatedLineWithTokenHandler;
}

__n128 PillMetrics.pillMetrics.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = &v1[OBJC_IVAR___SLHighlightPillMetrics____lazy_storage___pillMetrics];
  v4 = *&v1[OBJC_IVAR___SLHighlightPillMetrics____lazy_storage___pillMetrics + 80];
  v42 = *&v1[OBJC_IVAR___SLHighlightPillMetrics____lazy_storage___pillMetrics + 64];
  v43 = v4;
  v5 = *&v1[OBJC_IVAR___SLHighlightPillMetrics____lazy_storage___pillMetrics + 112];
  v44 = *&v1[OBJC_IVAR___SLHighlightPillMetrics____lazy_storage___pillMetrics + 96];
  v45 = v5;
  v6 = *&v1[OBJC_IVAR___SLHighlightPillMetrics____lazy_storage___pillMetrics + 16];
  v39[0] = *&v1[OBJC_IVAR___SLHighlightPillMetrics____lazy_storage___pillMetrics];
  v39[1] = v6;
  v7 = *&v1[OBJC_IVAR___SLHighlightPillMetrics____lazy_storage___pillMetrics + 48];
  v40 = *&v1[OBJC_IVAR___SLHighlightPillMetrics____lazy_storage___pillMetrics + 32];
  v41 = v7;
  *&v46[32] = v40;
  *&v46[48] = v7;
  *v46 = v39[0];
  *&v46[16] = v6;
  *&v46[96] = v44;
  *&v46[112] = v5;
  *&v46[64] = v42;
  *&v46[80] = v4;
  if (_s11SocialLayer23SLDHighlightPillMetrics33_00C2B47D0280335DFFDBB3BC8927527ALLVSgWOg(v46) == 1)
  {
    closure #1 in PillMetrics.pillMetrics.getter(v1, v38);
    v33 = *&v38[64];
    v34 = *&v38[80];
    v35 = *&v38[96];
    v36 = *&v38[112];
    v29 = *v38;
    v30 = *&v38[16];
    v31 = *&v38[32];
    v32 = *&v38[48];
    destructiveProjectEnumData for SecKeyRef.SecKeyConversionErrors();
    v8 = *(v3 + 5);
    v37[4] = *(v3 + 4);
    v37[5] = v8;
    v9 = *(v3 + 7);
    v37[6] = *(v3 + 6);
    v37[7] = v9;
    v10 = *(v3 + 1);
    v37[0] = *v3;
    v37[1] = v10;
    v11 = *(v3 + 3);
    v37[2] = *(v3 + 2);
    v37[3] = v11;
    v12 = v29;
    v13 = v30;
    v14 = v32;
    *(v3 + 2) = v31;
    *(v3 + 3) = v14;
    *v3 = v12;
    *(v3 + 1) = v13;
    v15 = v33;
    v16 = v34;
    v17 = v36;
    *(v3 + 6) = v35;
    *(v3 + 7) = v17;
    *(v3 + 4) = v15;
    *(v3 + 5) = v16;
    outlined init with copy of SLDHighlightPillMetrics(v38, v28);
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v37, &_s11SocialLayer23SLDHighlightPillMetrics33_00C2B47D0280335DFFDBB3BC8927527ALLVSgMd, &_s11SocialLayer23SLDHighlightPillMetrics33_00C2B47D0280335DFFDBB3BC8927527ALLVSgMR);
    v18 = *&v38[120];
    v26 = *&v38[104];
    v27 = *&v38[88];
    v24 = *&v38[56];
    v25 = *&v38[72];
    v22 = *&v38[8];
    v23 = *&v38[40];
    v21 = *&v38[24];
    v19 = v38[0];
  }

  else
  {
    v18 = *&v46[120];
    v26 = *&v46[104];
    v27 = *&v46[88];
    v24 = *&v46[56];
    v25 = *&v46[72];
    v22 = *&v46[8];
    v23 = *&v46[40];
    v21 = *&v46[24];
    v19 = v46[0];
  }

  outlined init with copy of (NSAttributedStringKey, Any)(v39, v37, &_s11SocialLayer23SLDHighlightPillMetrics33_00C2B47D0280335DFFDBB3BC8927527ALLVSgMd, &_s11SocialLayer23SLDHighlightPillMetrics33_00C2B47D0280335DFFDBB3BC8927527ALLVSgMR);
  *a1 = v19;
  *(a1 + 8) = v22;
  *(a1 + 24) = v21;
  *(a1 + 40) = v23;
  *(a1 + 56) = v24;
  *(a1 + 72) = v25;
  result = v26;
  *(a1 + 88) = v27;
  *(a1 + 104) = v26;
  *(a1 + 120) = v18;
  return result;
}

void closure #1 in PillMetrics.pillMetrics.getter(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributedString();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = OBJC_IVAR___SLHighlightPillMetrics_metrics;
  outlined init with copy of HighlightDisambiguationPillMetricVariant(&a1[OBJC_IVAR___SLHighlightPillMetrics_metrics], &v208);
  v6 = v211;
  v7 = v212;
  __swift_project_boxed_opaque_existential_1(&v208, v211);
  v200 = (*(*&v7 + 168))(v6, COERCE_DOUBLE(*&v7));
  v201 = v8;
  v199 = v9;
  v191 = v10;
  v11 = OBJC_IVAR___SLHighlightPillMetrics_tag;
  [*&a1[OBJC_IVAR___SLHighlightPillMetrics_tag] maxWidth];
  v196 = v12;
  [a1 avatarKnockoutWidth];
  v188 = v13;
  outlined init with copy of HighlightDisambiguationPillMetricVariant(&a1[v5], v205);
  v14 = v206;
  v15 = v207;
  __swift_project_boxed_opaque_existential_1(v205, v206);
  v16 = (*(v15 + 88))(v14, v15);
  v18 = v17;
  v202 = v19;
  v21 = v20;
  outlined init with copy of HighlightDisambiguationPillMetricVariant(&a1[v5], v224);
  v22 = v225;
  v23 = v226;
  __swift_project_boxed_opaque_existential_1(v224, v225);
  v24 = (*(v23 + 192))(v22, v23);
  v26 = v25;
  __swift_destroy_boxed_opaque_existential_0(v224);
  __swift_destroy_boxed_opaque_existential_0(v205);
  __swift_destroy_boxed_opaque_existential_0(&v208);
  [a1 specMaxWidth];
  v28 = v27;
  [*&a1[v11] maxWidth];
  v30 = v29;
  [a1 avatarContainerWidth];
  v32 = v31;
  [*&a1[v11] maxWidth];
  v187 = v33;
  v189 = v24;
  v190 = v26;
  if (v33 <= 0.0)
  {
    LOBYTE(v208) = 0;
    v209 = v200;
    v210 = v201;
    v73 = v191;
    v211 = v199;
    v212 = v191;
    v213 = v196;
    v215 = 0;
    v216 = 0;
    v214 = 0.0;
    v217 = v188;
    v218 = v16;
    v219 = v18;
    v220 = v202;
    v221 = v21;
    v222 = v24;
    v223 = v26;
    outlined init with copy of SLDHighlightPillMetrics(&v208, v205);
    v74 = 0;
    TruncatedLineWithTokenHandler = 0;
    v72 = 0;
    v186 = 0.0;
    v75 = v188;
    v76 = v16;
    v77 = v18;
    v78 = v202;
    v79 = v24;
LABEL_57:
    v193 = v21;
    v195 = v77;
    v204 = v78;
    LOBYTE(v208) = v74;
    *(&v208 + 1) = v224[0];
    HIDWORD(v208) = *(v224 + 3);
    v209 = v200;
    v210 = v201;
    v211 = v199;
    v212 = v73;
    v213 = v196;
    v214 = v186;
    v215 = TruncatedLineWithTokenHandler;
    v216 = v72;
    v217 = v75;
    v218 = v76;
    v219 = v77;
    v220 = v78;
    v221 = v21;
    v222 = v79;
    v223 = v26;
    v176 = v73;
    v177 = v76;
    v178 = v75;
    outlined destroy of SLDHighlightPillMetrics(&v208);
    *a2 = v187 > 0.0;
    *(a2 + 8) = v200;
    *(a2 + 16) = v201;
    *(a2 + 24) = v199;
    *(a2 + 32) = v176;
    *(a2 + 40) = v196;
    *(a2 + 48) = v186;
    *(a2 + 56) = TruncatedLineWithTokenHandler;
    *(a2 + 64) = v72;
    *(a2 + 72) = v178;
    *(a2 + 80) = v177;
    *(a2 + 88) = v195;
    *(a2 + 96) = v204;
    *(a2 + 104) = v193;
    *(a2 + 112) = v189;
    *(a2 + 120) = v190;
    return;
  }

  v34 = v191;
  v197 = v16;
  v35 = v191 + v24 + v21 + v18 + v201 + v32;
  if (v30 >= v28)
  {
    v36 = v28;
  }

  else
  {
    v36 = v30;
  }

  v37 = v36 - v35;
  outlined init with copy of HighlightDisambiguationPillMetricVariant(&a1[v5], &v208);
  v38 = v211;
  v39 = v212;
  __swift_project_boxed_opaque_existential_1(&v208, v211);
  (*(*&v39 + 128))(v38, COERCE_DOUBLE(*&v39));
  __swift_destroy_boxed_opaque_existential_0(&v208);
  outlined init with copy of HighlightDisambiguationPillMetricVariant(&a1[v5], &v208);
  v40 = v211;
  v41 = v212;
  __swift_project_boxed_opaque_existential_1(&v208, v211);
  v42 = (*(*&v41 + 128))(v40, COERCE_DOUBLE(*&v41));
  __swift_destroy_boxed_opaque_existential_0(&v208);
  v185 = v35;
  if ((v42 & 1) == 0)
  {
    v80 = v18;
    outlined init with copy of HighlightDisambiguationPillMetricVariant(&a1[v5], &v208);
    v81 = v211;
    v82 = v212;
    __swift_project_boxed_opaque_existential_1(&v208, v211);
    v83 = (*(*&v82 + 144))(v81, COERCE_DOUBLE(*&v82));
    __swift_destroy_boxed_opaque_existential_0(&v208);
    v84 = *&a1[v11];
    outlined init with copy of HighlightDisambiguationPillMetricVariant(&a1[v5], &v208);
    if (v83)
    {
      v85 = v84;
      v86 = specialized static PillMetrics.localizedSenderOrNumContactsString(for:metrics:)(v85, &v208);
      v88 = v87;

      __swift_destroy_boxed_opaque_existential_0(&v208);
      outlined init with copy of HighlightDisambiguationPillMetricVariant(&a1[v5], &v208);
      v89 = specialized static PillMetrics.senderNameAttributedString(for:metrics:)(v86, v88, &v208);
    }

    else
    {
      v113 = v211;
      v114 = v212;
      __swift_project_boxed_opaque_existential_1(&v208, v211);
      v115 = v5;
      v116 = *(*&v114 + 16);
      v117 = v84;
      LOBYTE(v113) = v116(v113, *&v114);
      outlined init with copy of HighlightDisambiguationPillMetricVariant(&a1[v115], v205);
      v118 = v206;
      v119 = v207;
      __swift_project_boxed_opaque_existential_1(v205, v206);
      v120 = (*(v119 + 40))(v118, v119);
      outlined init with copy of HighlightDisambiguationPillMetricVariant(&a1[v115], v224);
      v121 = v225;
      v122 = v226;
      __swift_project_boxed_opaque_existential_1(v224, v225);
      v123 = (*(v122 + 24))(v121, v122);
      v124 = [v123 localization];

      v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v127 = v126;

      v128 = specialized static PillMetrics.localizedFromSenderAttributedString(for:prefix:multiline:maxSenderNames:localization:)(v117, v113 & 1, 0, v120, v125, v127);
      v130 = v129;
      v132 = v131;
      v5 = v115;

      __swift_destroy_boxed_opaque_existential_0(v224);
      __swift_destroy_boxed_opaque_existential_0(v205);
      __swift_destroy_boxed_opaque_existential_0(&v208);
      outlined init with copy of HighlightDisambiguationPillMetricVariant(&a1[v115], &v208);
      v133 = v128;

      specialized static PillMetrics.fromSenderAttributedString(for:metrics:multiline:)(v133, v130, v132, &v208);
      v89 = v134;

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    __swift_destroy_boxed_opaque_existential_0(&v208);
    v135 = v189;
    v192 = v21;
    v194 = v80;
    v136 = v89;
    v137 = CTLineCreateWithAttributedString(v136);
    TruncatedLineWithTokenHandler = CTLineCreateTruncatedLineWithTokenHandler();

    if (TruncatedLineWithTokenHandler)
    {
      BoundsWithOptions = CTLineGetBoundsWithOptions(TruncatedLineWithTokenHandler, 0);
      width = BoundsWithOptions.size.width;
      height = BoundsWithOptions.size.height;
    }

    else
    {
      width = 0.0;
      height = 0.0;
    }

    v16 = v201;
    outlined init with copy of HighlightDisambiguationPillMetricVariant(&a1[v5], &v208);
    v140 = v211;
    v141 = v212;
    __swift_project_boxed_opaque_existential_1(&v208, v211);
    v142 = height + (*(*&v141 + 168))(v140, COERCE_DOUBLE(*&v141));
    __swift_destroy_boxed_opaque_existential_0(&v208);
    outlined init with copy of HighlightDisambiguationPillMetricVariant(&a1[v5], &v208);
    v143 = v211;
    v144 = v212;
    __swift_project_boxed_opaque_existential_1(&v208, v211);
    (*(*&v144 + 168))(v143, COERCE_DOUBLE(*&v144));
    v146 = v145;

    v147 = v142 + v146;
    __swift_destroy_boxed_opaque_existential_0(&v208);
    v72 = 0;
    v54 = v188;
    v66 = v197;
    v148 = v202;
    v34 = v190;
    v149 = v191;
    goto LABEL_56;
  }

  outlined init with copy of HighlightDisambiguationPillMetricVariant(&a1[v5], &v208);
  v43 = v211;
  v44 = v212;
  __swift_project_boxed_opaque_existential_1(&v208, v211);
  v45 = (*(*&v44 + 88))(v43, COERCE_DOUBLE(*&v44));
  v194 = v46;
  v198 = v45;
  v203 = v47;
  v49 = v48;
  __swift_destroy_boxed_opaque_existential_0(&v208);
  outlined init with copy of HighlightDisambiguationPillMetricVariant(&a1[v5], &v208);
  v50 = v211;
  v51 = v212;
  __swift_project_boxed_opaque_existential_1(&v208, v211);
  v52 = (*(*&v51 + 144))(v50, COERCE_DOUBLE(*&v51));
  __swift_destroy_boxed_opaque_existential_0(&v208);
  v53 = *&a1[v11];
  v54 = v188;
  v192 = v49;
  v55 = &a1[v5];
  if ((v52 & 1) == 0)
  {
    outlined init with copy of HighlightDisambiguationPillMetricVariant(v55, &v208);
    v90 = v211;
    v91 = v212;
    __swift_project_boxed_opaque_existential_1(&v208, v211);
    v184 = v5;
    v92 = *(*&v91 + 16);
    v93 = v53;
    LOBYTE(v90) = v92(v90, *&v91);
    outlined init with copy of HighlightDisambiguationPillMetricVariant(&a1[v5], v205);
    v94 = v206;
    v95 = v207;
    __swift_project_boxed_opaque_existential_1(v205, v206);
    v96 = (*(v95 + 40))(v94, v95);
    outlined init with copy of HighlightDisambiguationPillMetricVariant(&a1[v184], v224);
    v97 = v225;
    v98 = v226;
    __swift_project_boxed_opaque_existential_1(v224, v225);
    v99 = (*(v98 + 24))(v97, v98);
    v100 = [v99 localization];

    v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v102;

    v104 = specialized static PillMetrics.localizedFromSenderAttributedString(for:prefix:multiline:maxSenderNames:localization:)(v93, v90 & 1, 1, v96, v101, v103);
    v60 = v105;
    v107 = v106;

    __swift_destroy_boxed_opaque_existential_0(v224);
    __swift_destroy_boxed_opaque_existential_0(v205);
    __swift_destroy_boxed_opaque_existential_0(&v208);
    outlined init with copy of HighlightDisambiguationPillMetricVariant(&a1[v184], &v208);
    v5 = v104;

    specialized static PillMetrics.fromSenderAttributedString(for:metrics:multiline:)(v5, v60, v107, &v208);
    v109 = v108;

    __swift_destroy_boxed_opaque_existential_0(&v208);
    v181 = v109;
    attributedStringSplitByLineBreak(inString:)(v109);
    v111 = v110;
    if (v110 >> 62)
    {
      v64 = __CocoaSet.count.getter();
    }

    else
    {
      v64 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v182 = v5;
    if (v64 < 1)
    {
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSAttributedString, 0x277CCA898);
      AttributedString.init(stringLiteral:)();
      v183 = NSAttributedString.init(_:)();
    }

    else if ((v111 & 0xC000000000000001) != 0)
    {
      v183 = MEMORY[0x231934AB0](0, v111);
      if (v64 != 1)
      {
        v112 = MEMORY[0x231934AB0](1, v111);
        goto LABEL_37;
      }
    }

    else
    {
      if (!*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_62;
      }

      v183 = *(v111 + 32);
      if (v64 != 1)
      {
        if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v112 = *(v111 + 40);
LABEL_37:
        v151 = v112;
        v152 = CTLineCreateWithAttributedString(v183);
        TruncatedLineWithTokenHandler = CTLineCreateTruncatedLineWithTokenHandler();

        v153 = TruncatedLineWithTokenHandler;
        v154 = CTLineCreateWithAttributedString(v151);
        v72 = CTLineCreateTruncatedLineWithTokenHandler();

        v155 = v72;
        v156 = 0.0;
        x = 0.0;
        y = 0.0;
        width = 0.0;
        v159 = 0.0;
        if (TruncatedLineWithTokenHandler)
        {

          v228 = CTLineGetBoundsWithOptions(v153, 0);
          x = v228.origin.x;
          y = v228.origin.y;
          width = v228.size.width;
          v159 = v228.size.height;
        }

        v160 = 0.0;
        v161 = 0.0;
        v162 = 0.0;
        if (v72)
        {

          v229 = CTLineGetBoundsWithOptions(v155, 0);
          v156 = v229.origin.x;
          v160 = v229.origin.y;
          v161 = v229.size.width;
          v162 = v229.size.height;
        }

        v230.origin.x = x;
        v230.origin.y = y;
        v230.size.width = width;
        v230.size.height = v159;
        v163 = CGRectGetHeight(v230);
        v231.origin.x = v156;
        v231.origin.y = v160;
        v231.size.width = v161;
        v231.size.height = v162;
        v164 = CGRectGetHeight(v231);

        v165 = v163 + v164;
        v16 = v201;
        v54 = v188;
        v66 = v198;
        v34 = v190;
        v5 = v184;
        goto LABEL_53;
      }
    }

    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSAttributedString, 0x277CCA898);
    AttributedString.init(stringLiteral:)();
    v112 = NSAttributedString.init(_:)();
    goto LABEL_37;
  }

  outlined init with copy of HighlightDisambiguationPillMetricVariant(v55, &v208);
  v56 = v53;
  v57 = specialized static PillMetrics.localizedSenderOrNumContactsString(for:metrics:)(v56, &v208);
  v59 = v58;

  __swift_destroy_boxed_opaque_existential_0(&v208);
  outlined init with copy of HighlightDisambiguationPillMetricVariant(&a1[v5], &v208);
  v60 = specialized static PillMetrics.senderNameAttributedString(for:metrics:)(v57, v59, &v208);
  __swift_destroy_boxed_opaque_existential_0(&v208);
  outlined init with copy of HighlightDisambiguationPillMetricVariant(&a1[v5], &v208);
  v61 = v211;
  v62 = v212;
  __swift_project_boxed_opaque_existential_1(&v208, v211);
  LOBYTE(v56) = (*(*&v62 + 136))(v61, COERCE_DOUBLE(*&v62));
  __swift_destroy_boxed_opaque_existential_0(&v208);
  v34 = v190;
  v16 = v201;
  if ((v56 & 1) == 0)
  {
    v150 = CTLineCreateWithAttributedString(v60);
    TruncatedLineWithTokenHandler = CTLineCreateTruncatedLineWithTokenHandler();

    if (!TruncatedLineWithTokenHandler)
    {

      v72 = 0;
      v161 = 0.0;
      width = 0.0;
      v66 = v198;
LABEL_52:
      outlined init with copy of HighlightDisambiguationPillMetricVariant(&a1[v5], &v208);
      specialized static PillMetrics.doubleLineFontHeight(for:)(&v208);
      v165 = v167;

      __swift_destroy_boxed_opaque_existential_0(&v208);
LABEL_53:
      if (width <= v161)
      {
        width = v161;
      }

      outlined init with copy of HighlightDisambiguationPillMetricVariant(&a1[v5], &v208);
      v168 = v211;
      v169 = v212;
      __swift_project_boxed_opaque_existential_1(&v208, v211);
      v170 = v165 + (*(*&v169 + 168))(v168, COERCE_DOUBLE(*&v169));
      __swift_destroy_boxed_opaque_existential_0(&v208);
      outlined init with copy of HighlightDisambiguationPillMetricVariant(&a1[v5], &v208);
      v171 = v211;
      v172 = v212;
      __swift_project_boxed_opaque_existential_1(&v208, v211);
      (*(*&v172 + 168))(v171, COERCE_DOUBLE(*&v172));
      v147 = v170 + v173;
      __swift_destroy_boxed_opaque_existential_0(&v208);
      v149 = v191;
      v135 = v189;
      v148 = v203;
LABEL_56:
      v74 = 1;
      LOBYTE(v208) = 1;
      *(&v208 + 1) = v224[0];
      HIDWORD(v208) = *(v224 + 3);
      v209 = v200;
      v210 = v16;
      v211 = v199;
      v212 = v149;
      v196 = v185 + width;
      v213 = v185 + width;
      v214 = v147;
      v186 = v147;
      v215 = TruncatedLineWithTokenHandler;
      v216 = v72;
      v217 = v54;
      v218 = v66;
      v21 = v192;
      v219 = v194;
      v220 = v148;
      v221 = v192;
      v222 = v135;
      v223 = v34;
      v73 = v149;
      v174 = v34;
      v175 = v148;
      outlined init with copy of SLDHighlightPillMetrics(&v208, v205);
      v75 = v54;
      v76 = v66;
      v77 = v194;
      v78 = v175;
      v26 = v174;
      v79 = v135;
      goto LABEL_57;
    }

    v72 = 0;
    v66 = v198;
    goto LABEL_46;
  }

  v63 = *&a1[OBJC_IVAR___SLHighlightPillMetrics_style];
  v64 = specialized static PillMetrics.senderLabelMultilineWithLineWrap(fullString:maxLineWidth:style:)(v60, v63, v37);

  if (!(v64 >> 62))
  {
    v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_10;
  }

LABEL_62:
  v65 = __CocoaSet.count.getter();
LABEL_10:
  v66 = v198;
  if (v65 < 1)
  {
    TruncatedLineWithTokenHandler = 0;
    goto LABEL_43;
  }

  if ((v64 & 0xC000000000000001) != 0)
  {
    v179 = MEMORY[0x231934AB0](0, v64);
    TruncatedLineWithTokenHandler = v179;
    if (v65 != 1)
    {
      v180 = v179;
      v71 = MEMORY[0x231934AB0](1, v64);
      goto LABEL_16;
    }

LABEL_43:
    v166 = TruncatedLineWithTokenHandler;

    v72 = 0;
    goto LABEL_44;
  }

  if (!*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_66;
  }

  TruncatedLineWithTokenHandler = *(v64 + 32);
  v68 = TruncatedLineWithTokenHandler;
  if (v65 == 1)
  {
    goto LABEL_43;
  }

  if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v69 = *(v64 + 40);
    v70 = v68;
    v71 = v69;
LABEL_16:
    v72 = v71;

LABEL_44:
    if (!TruncatedLineWithTokenHandler)
    {
      width = 0.0;
LABEL_49:

      if (v72)
      {
        v233 = CTLineGetBoundsWithOptions(v72, 0);
        v161 = v233.size.width;
      }

      else
      {
        v161 = 0.0;
      }

      goto LABEL_52;
    }

LABEL_46:
    v232 = CTLineGetBoundsWithOptions(TruncatedLineWithTokenHandler, 0);
    width = v232.size.width;
    goto LABEL_49;
  }

LABEL_67:
  __break(1u);
}

id PillMetrics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PillMetrics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PillMetrics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double PillMetrics.margins.getter()
{
  PillMetrics.pillMetrics.getter(v1);
  outlined destroy of SLDHighlightPillMetrics(v1);
  return *&v1[1];
}

double PillMetrics.pillSize.getter()
{
  PillMetrics.pillMetrics.getter(v1);
  outlined destroy of SLDHighlightPillMetrics(v1);
  return *&v1[5];
}

uint64_t PillMetrics.hasValidMetricsForDrawing.getter()
{
  PillMetrics.pillMetrics.getter(v1);
  outlined destroy of SLDHighlightPillMetrics(v1);
  return v1[0];
}

id PillMetrics.firstLine.getter()
{
  PillMetrics.pillMetrics.getter(v3);
  v0 = v4;
  v1 = v4;
  outlined destroy of SLDHighlightPillMetrics(v3);
  return v0;
}

id PillMetrics.secondLine.getter()
{
  PillMetrics.pillMetrics.getter(v3);
  v0 = v4;
  v1 = v4;
  outlined destroy of SLDHighlightPillMetrics(v3);
  return v0;
}

double PillMetrics.overlappedAvatarKnockoutBorderWidth.getter()
{
  PillMetrics.pillMetrics.getter(v1);
  outlined destroy of SLDHighlightPillMetrics(v1);
  return *&v1[9];
}

double PillMetrics.labelHorizontalMargins.getter()
{
  PillMetrics.pillMetrics.getter(v1);
  outlined destroy of SLDHighlightPillMetrics(v1);
  return *&v1[10];
}

double PillMetrics.specMaxWidth.getter()
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightPillMetrics_metrics, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 80))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

double PillMetrics.minimumLabelHorizontalMargines.getter()
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightPillMetrics_metrics, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 88))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

double PillMetrics.avatarDiameter.getter()
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightPillMetrics_metrics, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 96))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

double PillMetrics.avatarContainerWidth.getter()
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightPillMetrics_metrics, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 112))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

double PillMetrics.avatarKnockoutWidth.getter()
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightPillMetrics_metrics, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 120))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

double PillMetrics.overlappedAvatarVisibleWidth.getter()
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightPillMetrics_metrics, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 104))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

uint64_t PillMetrics.useDoubleLinedLabel.getter()
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightPillMetrics_metrics, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 128))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v1 & 1;
}

double PillMetrics.chevronSize.getter()
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightPillMetrics_metrics, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 192))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

id static PillMetrics.metricsPlaceholder(for:variant:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a1;
  switch(a2)
  {
    case 0:
      a3[3] = &type metadata for iOSPillMetric;
      a3[4] = &protocol witness table for iOSPillMetric;
      goto LABEL_13;
    case 1:
      a3[3] = &type metadata for iOSPillMetric;
      a3[4] = &protocol witness table for iOSPillMetric;
      goto LABEL_15;
    case 2:
      a3[3] = &type metadata for MacPillMetric;
      a3[4] = &protocol witness table for MacPillMetric;
      goto LABEL_13;
    case 3:
      a3[3] = &type metadata for MacPillMetric;
      a3[4] = &protocol witness table for MacPillMetric;
      goto LABEL_15;
    case 4:
      a3[3] = &type metadata for MacSafariBannerPillMetrics;
      a3[4] = &protocol witness table for MacSafariBannerPillMetrics;
      goto LABEL_13;
    case 5:
      a3[3] = &type metadata for MacSafariBannerPillMetrics;
      a3[4] = &protocol witness table for MacSafariBannerPillMetrics;
      goto LABEL_15;
    case 6:
      a3[3] = &type metadata for iOSSafariBannerPillMetrics;
      a3[4] = &protocol witness table for iOSSafariBannerPillMetrics;
      goto LABEL_13;
    case 7:
      a3[3] = &type metadata for iOSSafariBannerPillMetrics;
      a3[4] = &protocol witness table for iOSSafariBannerPillMetrics;
      goto LABEL_15;
    case 8:
      a3[3] = &type metadata for TVPillMetrics;
      a3[4] = &protocol witness table for TVPillMetrics;
      *a3 = a1;
      a3[1] = 0x4059000000000000;
      v6 = a3 + 2;
      goto LABEL_17;
    case 9:
      a3[3] = &type metadata for VisionPillMetric;
      a3[4] = &protocol witness table for VisionPillMetric;
      goto LABEL_13;
    case 10:
      a3[3] = &type metadata for VisionPillMetric;
      a3[4] = &protocol witness table for VisionPillMetric;
      goto LABEL_15;
    case 11:
      a3[3] = &type metadata for VisionSafariBannerPillMetric;
      a3[4] = &protocol witness table for VisionSafariBannerPillMetric;
LABEL_13:
      v5 = swift_allocObject();
      v3 = a1;
      *a3 = v5;
      *(v5 + 16) = a1;
      *(v5 + 24) = 0;
      goto LABEL_16;
    case 12:
      a3[3] = &type metadata for VisionSafariBannerPillMetric;
      a3[4] = &protocol witness table for VisionSafariBannerPillMetric;
LABEL_15:
      v5 = swift_allocObject();
      v3 = a1;
      *a3 = v5;
      *(v5 + 16) = a1;
      *(v5 + 24) = 1;
LABEL_16:
      *(v5 + 32) = 0x4059000000000000;
      v6 = (v5 + 40);
LABEL_17:
      *v6 = 1;

      result = v3;
      break;
    default:
      type metadata accessor for SLHighlightPillMetricVariant(0);
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return result;
}

uint64_t static PillMetrics.maxSendersToDisplay(style:variant:)(uint64_t a1, uint64_t a2)
{
  static PillMetrics.metricsPlaceholder(for:variant:)(a1, a2, v9);
  v2 = v10;
  v3 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v4 = (*(v3 + 40))(v2, v3);
  v5 = v10;
  v6 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v7 = (*(v6 + 48))(v5, v6);
  if (v7 > v4)
  {
    v4 = v7;
  }

  __swift_destroy_boxed_opaque_existential_0(v9);
  return v4;
}

uint64_t static PillMetrics.chevronFontDescriptor(style:variant:)(uint64_t a1, uint64_t a2)
{
  static PillMetrics.metricsPlaceholder(for:variant:)(a1, a2, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 184))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

double static PillMetrics.chevronSize(style:variant:)(uint64_t a1, uint64_t a2)
{
  static PillMetrics.metricsPlaceholder(for:variant:)(a1, a2, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 192))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

uint64_t PillMetrics.imageCount.getter()
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightPillMetrics_metrics, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 64))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

uint64_t PillMetrics.shouldDisplayPin.getter()
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightPillMetrics_metrics, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 72))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v1 & 1;
}

uint64_t PillMetrics.chevronFontDescriptor.getter()
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightPillMetrics_metrics, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 184))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

uint64_t PillMetrics.baseFont.getter()
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightPillMetrics_metrics, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 152))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double _s11SocialLayer23SLDHighlightPillMetrics33_00C2B47D0280335DFFDBB3BC8927527ALLVSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return result;
}

void specialized static PillMetrics.fromSenderAttributedString(for:metrics:multiline:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  if (![v7 length])
  {

    return;
  }

  v8 = [v7 length];
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_47;
  }

  v9 = v8;
  v75 = a3;
  v81 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183D7F0;
  v11 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v12 = a4[3];
  v13 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v12);
  v14 = *(v13 + 152);
  v79 = v11;
  v15 = v14(v12, v13);
  type metadata accessor for CTFontRef(0);
  v16 = MEMORY[0x277D740C0];
  *(inited + 40) = v15;
  v17 = *v16;
  v80 = v18;
  *(inited + 64) = v18;
  *(inited + 72) = v17;
  v19 = a4[3];
  v20 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v19);
  v21 = *(v20 + 24);
  v22 = v17;
  v23 = v21(v19, v20);
  v24 = [v23 userInterfaceStyle];

  v77 = v22;
  if (v24)
  {
    v25 = 1.0;
    v26 = 1.0;
    v27 = 1.0;
  }

  else
  {
    v25 = 0.0;
    v26 = 0.0;
    v27 = 0.0;
  }

  GenericRGB = CGColorCreateGenericRGB(v25, v26, v27, 1.0);
  type metadata accessor for CGColorRef(0);
  v29 = MEMORY[0x277CCA318];
  *(inited + 80) = GenericRGB;
  v30 = *v29;
  v78 = v31;
  *(inited + 104) = v31;
  *(inited + 112) = v30;
  v32 = a4[3];
  v33 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v32);
  v34 = *(v33 + 24);
  v76 = v30;
  v35 = v34(v32, v33);
  v36 = [v35 localization];

  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v40 = MEMORY[0x277D837D0];
  *(inited + 144) = MEMORY[0x277D837D0];
  *(inited + 120) = v37;
  *(inited + 128) = v39;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
  swift_arrayDestroy();
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_23183D7F0;
  *(v41 + 32) = v79;
  v43 = a4[3];
  v42 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v43);
  *(v41 + 40) = (*(v42 + 160))(v43, v42);
  *(v41 + 64) = v80;
  *(v41 + 72) = v77;
  v44 = a4[3];
  v45 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v44);
  v46 = (*(v45 + 24))(v44, v45);
  v47 = [v46 userInterfaceStyle];

  if (v47)
  {
    v48 = 1.0;
    v49 = 1.0;
    v50 = 1.0;
  }

  else
  {
    v48 = 0.0;
    v49 = 0.0;
    v50 = 0.0;
  }

  *(v41 + 80) = CGColorCreateGenericRGB(v48, v49, v50, 1.0);
  *(v41 + 104) = v78;
  *(v41 + 112) = v76;
  v51 = a4[3];
  v52 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v51);
  v53 = (*(v52 + 24))(v51, v52);
  v54 = [v53 localization];

  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;

  *(v41 + 144) = v40;
  *(v41 + 120) = v55;
  *(v41 + 128) = v57;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v41);
  swift_setDeallocating();
  swift_arrayDestroy();
  v58 = *(a2 + 16);
  if (!v58)
  {
LABEL_26:

    v67 = *(v75 + 16);
    if (!v67)
    {
LABEL_42:

      return;
    }

    v68 = (v75 + 40);
    while (1)
    {
      v69 = *(v68 - 1);
      v70 = *v68;
      v71 = v69 + *v68;
      if (__OFADD__(v69, *v68))
      {
        goto LABEL_44;
      }

      if (v9 >= v71)
      {
        v72 = v69 + *v68;
      }

      else
      {
        v72 = v9;
      }

      if (v69 <= 0 && v71 > 0)
      {
        goto LABEL_40;
      }

      if (v69 < v9)
      {
        break;
      }

LABEL_28:
      v68 += 2;
      if (!--v67)
      {
        goto LABEL_42;
      }
    }

    v65 = __OFSUB__(v72, v69);
    v72 -= v69;
    if (v65)
    {
      goto LABEL_46;
    }

LABEL_40:
    if (v72 >= 1)
    {
      type metadata accessor for NSAttributedStringKey(0);
      lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      [v81 setAttributes:isa range:{v69, v70}];
    }

    goto LABEL_28;
  }

  v59 = (a2 + 40);
  while (1)
  {
    v60 = *(v59 - 1);
    v61 = *v59;
    v62 = v60 + *v59;
    if (__OFADD__(v60, *v59))
    {
      break;
    }

    if (v9 >= v62)
    {
      v63 = v60 + *v59;
    }

    else
    {
      v63 = v9;
    }

    if (v60 <= 0 && v62 > 0)
    {
      goto LABEL_24;
    }

    if (v60 < v9)
    {
      v65 = __OFSUB__(v63, v60);
      v63 -= v60;
      if (v65)
      {
        goto LABEL_45;
      }

LABEL_24:
      if (v63 >= 1)
      {
        type metadata accessor for NSAttributedStringKey(0);
        lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
        v66 = Dictionary._bridgeToObjectiveC()().super.isa;
        [v81 setAttributes:v66 range:{v60, v61}];
      }
    }

    v59 += 2;
    if (!--v58)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

void specialized static PillMetrics.doubleLineFontHeight(for:)(void *a1)
{
  v2 = type metadata accessor for AttributedString();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  LOBYTE(v3) = (*(v4 + 16))(v3, v4);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 24))(v5, v6);
  v8 = [v7 localization];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._countAndFlagsBits = 0x6C6F686563616C50;
  v12._object = 0xEB00000000726564;
  v13.value._countAndFlagsBits = v9;
  v13.value._object = v11;
  v28 = NameAttributionLocAttributedString(prefix:name:multiline:localization:)((v3 & 1), v12, 1, v13);
  isa = v28.localizedString.super.super.isa;
  rawValue = v28.baseFontTargetRanges._rawValue;
  v16 = v28.senderFontTargetRanges._rawValue;

  v17 = isa;

  specialized static PillMetrics.fromSenderAttributedString(for:metrics:multiline:)(v17, rawValue, v16, a1);
  v19 = v18;

  attributedStringSplitByLineBreak(inString:)(v19);
  v21 = v20;
  if (!(v20 >> 62))
  {
    v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22 >= 1)
    {
      goto LABEL_3;
    }

LABEL_10:
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSAttributedString, 0x277CCA898);
    AttributedString.init(stringLiteral:)();
    v23 = NSAttributedString.init(_:)();
    goto LABEL_11;
  }

  v22 = __CocoaSet.count.getter();
  if (v22 < 1)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v21 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x231934AB0](0, v21);
    if (v22 != 1)
    {
      v24 = MEMORY[0x231934AB0](1, v21);
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = *(v21 + 32);
  if (v22 == 1)
  {
LABEL_11:

    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSAttributedString, 0x277CCA898);
    AttributedString.init(stringLiteral:)();
    v25 = NSAttributedString.init(_:)();
    goto LABEL_12;
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v24 = *(v21 + 40);
LABEL_8:
    v25 = v24;

LABEL_12:
    v26 = CTLineCreateWithAttributedString(v23);
    CTLineGetBoundsWithOptions(v26, 0);
    v27 = CTLineCreateWithAttributedString(v25);
    CTLineGetBoundsWithOptions(v27, 0);

    return;
  }

LABEL_16:
  __break(1u);
}

id specialized static PillMetrics.localizedSenderOrNumContactsString(for:metrics:)(id a1, void *a2)
{
  v4 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v74[0] = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v74 - v9;
  v11 = [a1 groupName];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v16 = 0;
    v15 = 0xE000000000000000;
  }

  v17 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v17 = v16;
  }

  if (!v17)
  {
    v21 = [a1 sendersToDisplay];
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SLPerson, off_278924EF0);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v22 >> 62)
    {
      v23 = __CocoaSet.count.getter();
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v23 != 1 || [a1 allSendersCount] != 1)
    {
      String.LocalizationValue.init(stringLiteral:)();
      v38 = a2[3];
      v39 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v38);
      v40 = (*(v39 + 24))(v38, v39);
      v41 = [v40 localization];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v74[0];
      v43 = (*(v74[0] + 16))(v8, v10, v5);
      v44 = SLFrameworkBundle(v43);
      static Locale.current.getter();
      String.init(localized:table:bundle:localization:locale:comment:)();
      (*(v42 + 8))(v10, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_23183D7E0;
      v46 = [a1 allSendersCount];
      v47 = MEMORY[0x277D83C10];
      *(v45 + 56) = MEMORY[0x277D83B88];
      *(v45 + 64) = v47;
      *(v45 + 32) = v46;
LABEL_21:
      v20 = static String.localizedStringWithFormat(_:_:)();

      return v20;
    }

    v24 = [a1 sendersToDisplay];
    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
    if (v25 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
LABEL_15:

        if ((v26 & 0xC000000000000001) == 0)
        {
          if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_52;
          }

          v27 = *(v26 + 32);
LABEL_18:
          v28 = v27;

          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
          v29 = [a1 meSender];
          v30 = static NSObject.== infix(_:_:)();

          if (v30)
          {
            String.LocalizationValue.init(stringLiteral:)();
            v31 = a2[3];
            v32 = a2[4];
            __swift_project_boxed_opaque_existential_1(a2, v31);
            v33 = (*(v32 + 24))(v31, v32);
            v34 = [v33 localization];

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v35 = v74[0];
            v36 = (*(v74[0] + 16))(v8, v10, v5);
            v37 = SLFrameworkBundle(v36);
            static Locale.current.getter();
            v20 = String.init(localized:table:bundle:localization:locale:comment:)();
            (*(v35 + 8))(v10, v5);
            return v20;
          }

          v24 = [a1 sendersToDisplay];
          v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v48;
          if (!(v48 >> 62))
          {
            if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_26;
            }

            goto LABEL_53;
          }

LABEL_52:
          if (__CocoaSet.count.getter())
          {
LABEL_26:

            if ((v26 & 0xC000000000000001) == 0)
            {
              if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_56;
              }

              v49 = *(v26 + 32);
LABEL_29:
              v50 = v49;

              v51 = [v50 shortDisplayName];

              v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v54 = v53;

              if ((v54 & 0x2000000000000000) != 0)
              {
                v55 = HIBYTE(v54) & 0xF;
              }

              else
              {
                v55 = v52 & 0xFFFFFFFFFFFFLL;
              }

              a1 = [a1 sendersToDisplay];
              v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
              v26 = v56;
              if (!v55)
              {

                if (!(v26 >> 62))
                {
                  result = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (!result)
                  {
LABEL_61:

LABEL_62:
                    String.LocalizationValue.init(stringLiteral:)();
                    v65 = a2[3];
                    v66 = a2[4];
                    __swift_project_boxed_opaque_existential_1(a2, v65);
                    v67 = (*(v66 + 24))(v65, v66);
                    v68 = [v67 localization];

                    static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v69 = v74[0];
                    v70 = (*(v74[0] + 16))(v8, v10, v5);
                    v71 = SLFrameworkBundle(v70);
                    static Locale.current.getter();
                    String.init(localized:table:bundle:localization:locale:comment:)();
                    (*(v69 + 8))(v10, v5);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
                    v72 = swift_allocObject();
                    *(v72 + 16) = xmmword_23183D7E0;
                    v73 = MEMORY[0x277D83C10];
                    *(v72 + 56) = MEMORY[0x277D83B88];
                    *(v72 + 64) = v73;
                    *(v72 + 32) = 1;
                    goto LABEL_21;
                  }

LABEL_41:
                  if ((v26 & 0xC000000000000001) != 0)
                  {
                    v61 = MEMORY[0x231934AB0](0, v26);
                  }

                  else
                  {
                    if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      __break(1u);
                      goto LABEL_65;
                    }

                    v61 = *(v26 + 32);
                  }

                  v62 = v61;

                  v63 = SLFormattedDisplayNameForPerson(v62);
                  if (v63)
                  {
                    v64 = v63;
                    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();

                    return v20;
                  }

                  goto LABEL_62;
                }

LABEL_60:
                result = __CocoaSet.count.getter();
                if (!result)
                {
                  goto LABEL_61;
                }

                goto LABEL_41;
              }

              if (!(v56 >> 62))
              {
                if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_35;
                }

                goto LABEL_57;
              }

LABEL_56:
              if (__CocoaSet.count.getter())
              {
LABEL_35:

                if ((v26 & 0xC000000000000001) == 0)
                {
                  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    v57 = *(v26 + 32);
LABEL_38:
                    v58 = v57;

                    v59 = [v58 shortDisplayName];

                    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    return v60;
                  }

                  __break(1u);
                  goto LABEL_60;
                }

LABEL_58:
                v57 = MEMORY[0x231934AB0](0, v26);
                goto LABEL_38;
              }

LABEL_57:

              __break(1u);
              goto LABEL_58;
            }

LABEL_54:
            v49 = MEMORY[0x231934AB0](0, v26);
            goto LABEL_29;
          }

LABEL_53:

          __break(1u);
          goto LABEL_54;
        }

LABEL_50:
        v27 = MEMORY[0x231934AB0](0, v26);
        goto LABEL_18;
      }
    }

    else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_50;
  }

  result = [a1 groupName];
  if (!result)
  {
LABEL_65:
    __break(1u);
    return result;
  }

  v19 = result;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v20;
}

id specialized static PillMetrics.localizedFromSenderAttributedString(for:prefix:multiline:maxSenderNames:localization:)(void *a1, int a2, int a3, uint64_t a4, uint64_t a5, void *rawValue)
{
  v124 = a5;
  v125 = a4;
  v121 = a3;
  v122 = a2;
  v8 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v8 - 8);
  v120 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for String.LocalizationValue();
  v10 = *(v119 - 8);
  v11 = MEMORY[0x28223BE20](v119);
  v118 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v117 = &v110 - v13;
  v14 = [a1 groupName];
  if (v14)
  {
    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v19 = 0;
    v18 = 0xE000000000000000;
  }

  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v19;
  }

  if (v20)
  {
    result = [a1 groupName];
    if (result)
    {
      v22 = result;
LABEL_9:
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26._countAndFlagsBits = v23;
      v26._object = v25;
      v27.value._countAndFlagsBits = v124;
      v27.value._object = rawValue;
      v28 = NameAttributionLocAttributedString(prefix:name:multiline:localization:)((v122 & 1), v26, v121 & 1, v27);

      return v28;
    }

LABEL_119:
    __break(1u);
    return result;
  }

  v29 = &selRef_numberWithFloat_;
  v30 = [a1 sendersToDisplay];
  v31 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SLPerson, off_278924EF0);
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v32 >> 62)
  {
LABEL_88:
    v33 = __CocoaSet.count.getter();
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v33 == 1 && [a1 allSendersCount] == 1)
  {
    v34 = [a1 *(v29 + 1592)];
    v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;
    if (v35 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
LABEL_16:

        if ((v36 & 0xC000000000000001) == 0)
        {
          if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_106;
          }

          v37 = *(v36 + 32);
LABEL_19:
          v38 = v37;

          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
          v39 = [a1 meSender];
          v40 = static NSObject.== infix(_:_:)();

          if (v40)
          {
            v41.value._countAndFlagsBits = v124;
            v41.value._object = rawValue;
            return MeAttributionLocAttributedString(prefix:multiline:localization:)((v122 & 1), v121 & 1, v41);
          }

          v34 = [a1 *(v29 + 1592)];
          v79 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v79;
          if (!(v79 >> 62))
          {
            if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_64;
            }

            goto LABEL_107;
          }

LABEL_106:
          if (__CocoaSet.count.getter())
          {
LABEL_64:

            if ((v36 & 0xC000000000000001) == 0)
            {
              if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_110;
              }

              v80 = *(v36 + 32);
LABEL_67:
              v81 = v80;

              v32 = &selRef_numberWithFloat_;
              v82 = [v81 shortDisplayName];

              v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v85 = v84;

              if ((v85 & 0x2000000000000000) != 0)
              {
                v86 = HIBYTE(v85) & 0xF;
              }

              else
              {
                v86 = v83 & 0xFFFFFFFFFFFFLL;
              }

              v36 = [a1 *(v29 + 1592)];
              v87 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
              v31 = v87;
              if (!v86)
              {

                if (!(v31 >> 62))
                {
                  result = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (!result)
                  {
LABEL_115:

LABEL_116:
                    v75 = v122 & 1;
                    v76 = v121 & 1;
                    v74 = 1;
                    goto LABEL_61;
                  }

LABEL_80:
                  if ((v31 & 0xC000000000000001) != 0)
                  {
                    v90 = MEMORY[0x231934AB0](0, v31);
                  }

                  else
                  {
                    if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      __break(1u);
                      goto LABEL_119;
                    }

                    v90 = *(v31 + 32);
                  }

                  v91 = v90;

                  v92 = SLFormattedDisplayNameForPerson(v91);
                  if (v92)
                  {
                    v93 = v92;
                    v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v96 = v95;

                    v97._countAndFlagsBits = v94;
                    v97._object = v96;
                    v98.value._countAndFlagsBits = v124;
                    v98.value._object = rawValue;
                    v99 = NameAttributionLocAttributedString(prefix:name:multiline:localization:)((v122 & 1), v97, v121 & 1, v98);

                    return v99;
                  }

                  goto LABEL_116;
                }

LABEL_114:
                result = __CocoaSet.count.getter();
                if (!result)
                {
                  goto LABEL_115;
                }

                goto LABEL_80;
              }

              if (!(v87 >> 62))
              {
                if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_73;
                }

                goto LABEL_111;
              }

LABEL_110:
              if (__CocoaSet.count.getter())
              {
LABEL_73:

                if ((v31 & 0xC000000000000001) == 0)
                {
                  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    v88 = *(v31 + 32);
LABEL_76:
                    v89 = v88;

                    v22 = [v89 *(v32 + 3432)];

                    goto LABEL_9;
                  }

                  __break(1u);
                  goto LABEL_114;
                }

LABEL_112:
                v88 = MEMORY[0x231934AB0](0, v31);
                goto LABEL_76;
              }

LABEL_111:

              __break(1u);
              goto LABEL_112;
            }

LABEL_108:
            v80 = MEMORY[0x231934AB0](0, v36);
            goto LABEL_67;
          }

LABEL_107:

          __break(1u);
          goto LABEL_108;
        }

LABEL_104:
        v37 = MEMORY[0x231934AB0](0, v36);
        goto LABEL_19;
      }
    }

    else if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_104;
  }

  if (v125 < 2)
  {
    v74 = [a1 allSendersCount];
    v75 = v122 & 1;
    v76 = v121 & 1;
LABEL_61:
    v77 = v124;
    v78 = rawValue;
    return NumContactsAttributionLocAttributedString(prefix:numContacts:multiline:localization:)(v75, v74, v76, *&v77);
  }

  v42 = [a1 *(v29 + 1592)];
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v43 = v32 & 0xFFFFFFFFFFFFFF8;
  if (!(v32 >> 62))
  {
    v44 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v115 = rawValue;
    if (v44)
    {
      goto LABEL_24;
    }

LABEL_90:
    v123._rawValue = MEMORY[0x277D84F90];
    goto LABEL_91;
  }

  v44 = __CocoaSet.count.getter();
  v115 = rawValue;
  if (!v44)
  {
    goto LABEL_90;
  }

LABEL_24:
  rawValue = 0;
  v45 = v32 & 0xC000000000000001;
  v111 = (v10 + 1);
  v112 = (v10 + 2);
  v123._rawValue = MEMORY[0x277D84F90];
  v10 = &lazy cache variable for type metadata for NSObject;
  v116 = v32;
  v113 = v32 & 0xFFFFFFFFFFFFFF8;
  v114 = v44;
  while (2)
  {
    v29 = rawValue;
    while (1)
    {
      if (v45)
      {
        v47 = MEMORY[0x231934AB0](v29, v32);
      }

      else
      {
        if (v29 >= *(v43 + 16))
        {
          goto LABEL_87;
        }

        v47 = *(v32 + 8 * v29 + 32);
      }

      rawValue = v47;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      if (*(v123._rawValue + 2) >= v125)
      {

        goto LABEL_91;
      }

      v127 = (v29 + 1);
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
      v48 = [a1 meSender];
      v49 = static NSObject.== infix(_:_:)();

      v126 = rawValue;
      if ((v49 & 1) == 0)
      {
        break;
      }

      v31 = v45;
      rawValue = v123._rawValue;
      v50 = v117;
      String.LocalizationValue.init(stringLiteral:)();
      v51 = v119;
      v52 = (*v112)(v118, v50, v119);
      v53 = SLFrameworkBundle(v52);

      static Locale.current.getter();
      v54 = String.init(localized:table:bundle:localization:locale:comment:)();
      v56 = v55;
      (*v111)(v50, v51);
      v57 = HIBYTE(v56) & 0xF;
      if ((v56 & 0x2000000000000000) == 0)
      {
        v57 = v54 & 0xFFFFFFFFFFFFLL;
      }

      if (v57)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v110 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v123._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v123._rawValue + 2) + 1, 1, v123._rawValue);
        }

        rawValue = v127;
        v68 = *(v123._rawValue + 2);
        v67 = *(v123._rawValue + 3);
        v69 = v68 + 1;
        v43 = v113;
        if (v68 >= v67 >> 1)
        {
          v123._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, v123._rawValue);
        }

        v44 = v114;
        v45 = v110;
        goto LABEL_58;
      }

      v43 = v113;
      v44 = v114;
      v45 = v31;
      v10 = &lazy cache variable for type metadata for NSObject;
      v46 = v127;
LABEL_28:
      ++v29;
      v32 = v116;
      if (v46 == v44)
      {
        goto LABEL_91;
      }
    }

    v31 = v43;
    v58 = [rawValue shortDisplayName];
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;

    v62 = HIBYTE(v61) & 0xF;
    if ((v61 & 0x2000000000000000) == 0)
    {
      v62 = v59 & 0xFFFFFFFFFFFFLL;
    }

    if (v62)
    {
      v63 = [rawValue shortDisplayName];
    }

    else
    {
      v63 = SLFormattedDisplayNameForPerson(rawValue);
      if (!v63)
      {

LABEL_27:
        v46 = v127;
        v10 = &lazy cache variable for type metadata for NSObject;
        goto LABEL_28;
      }
    }

    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v64;

    v65 = HIBYTE(v56) & 0xF;
    if ((v56 & 0x2000000000000000) == 0)
    {
      v65 = v54 & 0xFFFFFFFFFFFFLL;
    }

    if (!v65)
    {

      goto LABEL_27;
    }

    v70 = swift_isUniquelyReferenced_nonNull_native();
    rawValue = v127;
    if ((v70 & 1) == 0)
    {
      v123._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v123._rawValue + 2) + 1, 1, v123._rawValue);
    }

    v68 = *(v123._rawValue + 2);
    v71 = *(v123._rawValue + 3);
    v69 = v68 + 1;
    if (v68 >= v71 >> 1)
    {
      v123._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v68 + 1, 1, v123._rawValue);
    }

LABEL_58:

    v72 = v123._rawValue;
    *(v123._rawValue + 2) = v69;
    v73 = &v72[16 * v68];
    *(v73 + 4) = v54;
    *(v73 + 5) = v56;
    v32 = v116;
    v10 = &lazy cache variable for type metadata for NSObject;
    if (rawValue != v44)
    {
      continue;
    }

    break;
  }

LABEL_91:

  v100 = [a1 allSendersCount];
  if (*(v123._rawValue + 2) >= v100)
  {
LABEL_95:
    v103 = 0;
    v104 = v115;
    v105 = v122;
    goto LABEL_96;
  }

  v101 = [a1 allSendersCount];
  v102 = *(v123._rawValue + 2);
  v103 = v101 - v102;
  v104 = v115;
  v105 = v122;
  if (__OFSUB__(v101, v102))
  {
    __break(1u);
    goto LABEL_95;
  }

LABEL_96:
  v106 = formattedDisplayNameListAndNOthers(prefix:names:nOthers:localization:)((v105 & 1), v123, v103, 0);

  v107 = (v106._object >> 56) & 0xF;
  if ((v106._object & 0x2000000000000000) == 0)
  {
    v107 = v106._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v107)
  {
    v108.value._countAndFlagsBits = v124;
    v108.value._object = v104;
    v109 = ListOfNamesAttributionLocAttributedString(prefix:listOfNamesString:multiline:localization:)((v105 & 1), v106, v121 & 1, v108);

    return v109;
  }

  v74 = [a1 allSendersCount];
  v75 = v105 & 1;
  v76 = v121 & 1;
  v77 = v124;
  v78 = v104;
  return NumContactsAttributionLocAttributedString(prefix:numContacts:multiline:localization:)(v75, v74, v76, *&v77);
}

id specialized static PillMetrics.senderNameAttributedString(for:metrics:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for AttributedString();
  MEMORY[0x28223BE20](v6 - 8);
  if (String.count.getter() < 1)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSMutableAttributedString, 0x277CCAB48);
    AttributedString.init(stringLiteral:)();
    v9 = NSAttributedString.init(_:)();
  }

  else
  {
    v7 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v8 = MEMORY[0x231934530](a1, a2);
    v9 = [v7 initWithString_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183D7F0;
  v11 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v12 = a3[3];
  v13 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v12);
  v14 = *(v13 + 160);
  v15 = v11;
  v16 = v14(v12, v13);
  type metadata accessor for CTFontRef(0);
  v17 = MEMORY[0x277D740C0];
  *(inited + 40) = v16;
  v18 = *v17;
  *(inited + 64) = v19;
  *(inited + 72) = v18;
  v20 = a3[3];
  v21 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v20);
  v22 = *(v21 + 24);
  v23 = v18;
  v24 = v22(v20, v21);
  v25 = [v24 userInterfaceStyle];

  if (v25)
  {
    v26 = 1.0;
    v27 = 1.0;
    v28 = 1.0;
  }

  else
  {
    v26 = 0.0;
    v27 = 0.0;
    v28 = 0.0;
  }

  GenericRGB = CGColorCreateGenericRGB(v26, v27, v28, 1.0);
  type metadata accessor for CGColorRef(0);
  v30 = MEMORY[0x277CCA318];
  *(inited + 80) = GenericRGB;
  v31 = *v30;
  *(inited + 104) = v32;
  *(inited + 112) = v31;
  v33 = a3[3];
  v34 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v33);
  v35 = *(v34 + 24);
  v36 = v31;
  v37 = v35(v33, v34);
  v38 = [v37 localization];

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  *(inited + 144) = MEMORY[0x277D837D0];
  *(inited + 120) = v39;
  *(inited + 128) = v41;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
  swift_arrayDestroy();
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v43 = v9;
  [v43 setAttributes:isa range:{0, objc_msgSend(v43, sel_length)}];

  return v43;
}

CTLineRef specialized static PillMetrics.senderLabelMultilineWithLineWrap(fullString:maxLineWidth:style:)(const __CFAttributedString *a1, void *a2, CGFloat a3)
{
  v6 = type metadata accessor for AttributedString();
  MEMORY[0x28223BE20](v6 - 8);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = CTLineCreateWithAttributedString(a1);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v9 = result;
  BoundsWithOptions = CTLineGetBoundsWithOptions(result, 0);
  if (CGRectGetWidth(BoundsWithOptions) <= a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    result = swift_allocObject();
    *(result + 1) = xmmword_23183DF50;
    *(result + 4) = v9;
    return result;
  }

  v10 = CTLineCreateWithAttributedString(a1);
  TruncatedLineWithTokenHandler = CTLineCreateTruncatedLineWithTokenHandler();

  v12 = [a2 localization];
  if (!v12)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = MEMORY[0x231934530](v13);
  }

  v14 = [objc_allocWithZone(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier_];

  v15 = [(__CFAttributedString *)a1 length];
  v16 = [(__CFAttributedString *)a1 length];
  v17 = v16 - 1;
  if (__OFSUB__(v16, 1))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_27;
  }

  v34 = TruncatedLineWithTokenHandler;
  TruncatedLineWithTokenHandler = &selRef_numberWithFloat_;
  while (1)
  {
    v18 = [(__CFAttributedString *)a1 string];
    if (!v18)
    {
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = MEMORY[0x231934530](v19);
    }

    v38.location = 0;
    v38.length = v15;
    v20 = SLDGetHyphenationPosition(v18, v17, v38, v14);

    if (v20 == -1 || v20 >= v17)
    {
      TruncatedLineWithTokenHandler = 0;
      HyphenatedLineWithOffset = v34;
      goto LABEL_25;
    }

    v22 = v9;
    v23 = MEMORY[0x231934530](45, 0xE100000000000000);
    HyphenatedLineWithOffset = CTLineCreateHyphenatedLineWithOffset();

    v41 = CTLineGetBoundsWithOptions(HyphenatedLineWithOffset, 0);
    if (CGRectGetWidth(v41) <= a3)
    {
      break;
    }

LABEL_7:

    v17 = v20;
  }

  v24 = [(__CFAttributedString *)a1 length];
  v25 = v24 - v20;
  if (__OFSUB__(v24, v20))
  {
    __break(1u);
    goto LABEL_34;
  }

  v37.location = 0;
  v37.length = v15;
  v39.location = v20;
  v39.length = v25;
  v26 = NSUnionRange(v37, v39);
  if (v26.location || v26.length != v15)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSAttributedString, 0x277CCA898);
    AttributedString.init(stringLiteral:)();
    v27 = NSAttributedString.init(_:)();
  }

  else
  {
    v27 = [(__CFAttributedString *)a1 attributedSubstringFromRange:v20, v25];
  }

  v28 = v27;
  if ([v27 length] < 1)
  {

    goto LABEL_7;
  }

  v30 = CTLineCreateWithAttributedString(v28);
  TruncatedLineWithTokenHandler = CTLineCreateTruncatedLineWithTokenHandler();

LABEL_25:
  v36 = MEMORY[0x277D84F90];
  if (!HyphenatedLineWithOffset)
  {

    return MEMORY[0x277D84F90];
  }

  a1 = HyphenatedLineWithOffset;
  MEMORY[0x2319346D0]();
  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_35;
  }

LABEL_27:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (TruncatedLineWithTokenHandler)
  {
    v31 = TruncatedLineWithTokenHandler;
    MEMORY[0x2319346D0]();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    return v36;
  }

  else
  {
    v32 = v36;

    return v32;
  }
}

uint64_t specialized static PillMetrics.accessibilityLabel(for:)(void *a1)
{
  v2 = [a1 sendersToDisplay];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SLPerson, off_278924EF0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    goto LABEL_10;
  }

  v5 = [a1 groupName];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = 0;
    v9 = 0xE000000000000000;
  }

  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v10;
  }

  if (!v11)
  {
    return 0;
  }

LABEL_10:
  v12 = specialized static PillMetrics.localizedFromSenderAttributedString(for:prefix:multiline:maxSenderNames:localization:)(a1, 0, 0, 3, 0, 0);
  v13 = [v12 string];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v14;
}

uint64_t specialized static PillMetrics.pillHeight(style:variant:maxWidth:)(void *a1, uint64_t a2, double a3)
{
  switch(a2)
  {
    case 0:
      v5 = &type metadata for iOSPillMetric;
      v6 = &protocol witness table for iOSPillMetric;
      v36 = &type metadata for iOSPillMetric;
      v37 = &protocol witness table for iOSPillMetric;
      goto LABEL_13;
    case 1:
      v5 = &type metadata for iOSPillMetric;
      v6 = &protocol witness table for iOSPillMetric;
      v36 = &type metadata for iOSPillMetric;
      v37 = &protocol witness table for iOSPillMetric;
      goto LABEL_15;
    case 2:
      v5 = &type metadata for MacPillMetric;
      v6 = &protocol witness table for MacPillMetric;
      v36 = &type metadata for MacPillMetric;
      v37 = &protocol witness table for MacPillMetric;
      goto LABEL_13;
    case 3:
      v5 = &type metadata for MacPillMetric;
      v6 = &protocol witness table for MacPillMetric;
      v36 = &type metadata for MacPillMetric;
      v37 = &protocol witness table for MacPillMetric;
      goto LABEL_15;
    case 4:
      v5 = &type metadata for MacSafariBannerPillMetrics;
      v6 = &protocol witness table for MacSafariBannerPillMetrics;
      v36 = &type metadata for MacSafariBannerPillMetrics;
      v37 = &protocol witness table for MacSafariBannerPillMetrics;
      goto LABEL_13;
    case 5:
      v5 = &type metadata for MacSafariBannerPillMetrics;
      v6 = &protocol witness table for MacSafariBannerPillMetrics;
      v36 = &type metadata for MacSafariBannerPillMetrics;
      v37 = &protocol witness table for MacSafariBannerPillMetrics;
      goto LABEL_15;
    case 6:
      v5 = &type metadata for iOSSafariBannerPillMetrics;
      v6 = &protocol witness table for iOSSafariBannerPillMetrics;
      v36 = &type metadata for iOSSafariBannerPillMetrics;
      v37 = &protocol witness table for iOSSafariBannerPillMetrics;
      goto LABEL_13;
    case 7:
      v5 = &type metadata for iOSSafariBannerPillMetrics;
      v6 = &protocol witness table for iOSSafariBannerPillMetrics;
      v36 = &type metadata for iOSSafariBannerPillMetrics;
      v37 = &protocol witness table for iOSSafariBannerPillMetrics;
      goto LABEL_15;
    case 8:
      v5 = &type metadata for TVPillMetrics;
      v6 = &protocol witness table for TVPillMetrics;
      v36 = &type metadata for TVPillMetrics;
      v37 = &protocol witness table for TVPillMetrics;
      v34[0] = a1;
      *&v34[1] = a3;
      v8 = &v35;
      goto LABEL_17;
    case 9:
      v5 = &type metadata for VisionPillMetric;
      v6 = &protocol witness table for VisionPillMetric;
      v36 = &type metadata for VisionPillMetric;
      v37 = &protocol witness table for VisionPillMetric;
      goto LABEL_13;
    case 10:
      v5 = &type metadata for VisionPillMetric;
      v6 = &protocol witness table for VisionPillMetric;
      v36 = &type metadata for VisionPillMetric;
      v37 = &protocol witness table for VisionPillMetric;
      goto LABEL_15;
    case 11:
      v5 = &type metadata for VisionSafariBannerPillMetric;
      v6 = &protocol witness table for VisionSafariBannerPillMetric;
      v36 = &type metadata for VisionSafariBannerPillMetric;
      v37 = &protocol witness table for VisionSafariBannerPillMetric;
LABEL_13:
      v7 = swift_allocObject();
      v34[0] = v7;
      *(v7 + 16) = a1;
      *(v7 + 24) = 0;
      goto LABEL_16;
    case 12:
      v5 = &type metadata for VisionSafariBannerPillMetric;
      v6 = &protocol witness table for VisionSafariBannerPillMetric;
      v36 = &type metadata for VisionSafariBannerPillMetric;
      v37 = &protocol witness table for VisionSafariBannerPillMetric;
LABEL_15:
      v7 = swift_allocObject();
      v34[0] = v7;
      *(v7 + 16) = a1;
      *(v7 + 24) = 1;
LABEL_16:
      *(v7 + 32) = a3;
      v8 = (v7 + 40);
LABEL_17:
      *v8 = 1;
      __swift_project_boxed_opaque_existential_1(v34, v5);
      v9 = v6[21];
      v10 = a1;
      v9();
      v11 = v36;
      v12 = v37;
      __swift_project_boxed_opaque_existential_1(v34, v36);
      if ((v12[16])(v11, v12))
      {
        specialized static PillMetrics.doubleLineFontHeight(for:)(v34);
      }

      else
      {
        v13 = v36;
        v14 = v37;
        __swift_project_boxed_opaque_existential_1(v34, v36);
        (v14[12])(v13, v14);
        v15 = v36;
        v16 = v37;
        __swift_project_boxed_opaque_existential_1(v34, v36);
        LOBYTE(v15) = (v16[2])(v15, v16);
        v17 = v36;
        v18 = v37;
        __swift_project_boxed_opaque_existential_1(v34, v36);
        v19 = (v18[3])(v17, v18);
        v20 = [v19 localization];

        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24._countAndFlagsBits = 0x6C6F686563616C50;
        v24._object = 0xEB00000000726564;
        v25.value._countAndFlagsBits = v21;
        v25.value._object = v23;
        v38 = NameAttributionLocAttributedString(prefix:name:multiline:localization:)((v15 & 1), v24, 0, v25);
        isa = v38.localizedString.super.super.isa;
        rawValue = v38.baseFontTargetRanges._rawValue;
        v28 = v38.senderFontTargetRanges._rawValue;

        v29 = isa;

        specialized static PillMetrics.fromSenderAttributedString(for:metrics:multiline:)(v29, rawValue, v28, v34);
        v31 = v30;

        v32 = CTLineCreateWithAttributedString(v31);

        CTLineGetBoundsWithOptions(v32, 0);
      }

      result = __swift_destroy_boxed_opaque_existential_0(v34);
      break;
    default:
      type metadata accessor for SLHighlightPillMetricVariant(0);
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return result;
}

uint64_t specialized static PillMetrics.pillMargins(style:variant:maxWidth:)(void *a1, uint64_t a2, double a3)
{
  switch(a2)
  {
    case 0:
      v5 = &type metadata for iOSPillMetric;
      v6 = &protocol witness table for iOSPillMetric;
      v14 = &type metadata for iOSPillMetric;
      v15 = &protocol witness table for iOSPillMetric;
      goto LABEL_13;
    case 1:
      v5 = &type metadata for iOSPillMetric;
      v6 = &protocol witness table for iOSPillMetric;
      v14 = &type metadata for iOSPillMetric;
      v15 = &protocol witness table for iOSPillMetric;
      goto LABEL_15;
    case 2:
      v5 = &type metadata for MacPillMetric;
      v6 = &protocol witness table for MacPillMetric;
      v14 = &type metadata for MacPillMetric;
      v15 = &protocol witness table for MacPillMetric;
      goto LABEL_13;
    case 3:
      v5 = &type metadata for MacPillMetric;
      v6 = &protocol witness table for MacPillMetric;
      v14 = &type metadata for MacPillMetric;
      v15 = &protocol witness table for MacPillMetric;
      goto LABEL_15;
    case 4:
      v5 = &type metadata for MacSafariBannerPillMetrics;
      v6 = &protocol witness table for MacSafariBannerPillMetrics;
      v14 = &type metadata for MacSafariBannerPillMetrics;
      v15 = &protocol witness table for MacSafariBannerPillMetrics;
      goto LABEL_13;
    case 5:
      v5 = &type metadata for MacSafariBannerPillMetrics;
      v6 = &protocol witness table for MacSafariBannerPillMetrics;
      v14 = &type metadata for MacSafariBannerPillMetrics;
      v15 = &protocol witness table for MacSafariBannerPillMetrics;
      goto LABEL_15;
    case 6:
      v5 = &type metadata for iOSSafariBannerPillMetrics;
      v6 = &protocol witness table for iOSSafariBannerPillMetrics;
      v14 = &type metadata for iOSSafariBannerPillMetrics;
      v15 = &protocol witness table for iOSSafariBannerPillMetrics;
      goto LABEL_13;
    case 7:
      v5 = &type metadata for iOSSafariBannerPillMetrics;
      v6 = &protocol witness table for iOSSafariBannerPillMetrics;
      v14 = &type metadata for iOSSafariBannerPillMetrics;
      v15 = &protocol witness table for iOSSafariBannerPillMetrics;
      goto LABEL_15;
    case 8:
      v5 = &type metadata for TVPillMetrics;
      v6 = &protocol witness table for TVPillMetrics;
      v14 = &type metadata for TVPillMetrics;
      v15 = &protocol witness table for TVPillMetrics;
      v12[0] = a1;
      *&v12[1] = a3;
      v8 = &v13;
      goto LABEL_17;
    case 9:
      v5 = &type metadata for VisionPillMetric;
      v6 = &protocol witness table for VisionPillMetric;
      v14 = &type metadata for VisionPillMetric;
      v15 = &protocol witness table for VisionPillMetric;
      goto LABEL_13;
    case 10:
      v5 = &type metadata for VisionPillMetric;
      v6 = &protocol witness table for VisionPillMetric;
      v14 = &type metadata for VisionPillMetric;
      v15 = &protocol witness table for VisionPillMetric;
      goto LABEL_15;
    case 11:
      v5 = &type metadata for VisionSafariBannerPillMetric;
      v6 = &protocol witness table for VisionSafariBannerPillMetric;
      v14 = &type metadata for VisionSafariBannerPillMetric;
      v15 = &protocol witness table for VisionSafariBannerPillMetric;
LABEL_13:
      v7 = swift_allocObject();
      v12[0] = v7;
      *(v7 + 16) = a1;
      *(v7 + 24) = 0;
      goto LABEL_16;
    case 12:
      v5 = &type metadata for VisionSafariBannerPillMetric;
      v6 = &protocol witness table for VisionSafariBannerPillMetric;
      v14 = &type metadata for VisionSafariBannerPillMetric;
      v15 = &protocol witness table for VisionSafariBannerPillMetric;
LABEL_15:
      v7 = swift_allocObject();
      v12[0] = v7;
      *(v7 + 16) = a1;
      *(v7 + 24) = 1;
LABEL_16:
      *(v7 + 32) = a3;
      v8 = (v7 + 40);
LABEL_17:
      *v8 = 1;
      __swift_project_boxed_opaque_existential_1(v12, v5);
      v9 = v6[21];
      v10 = a1;
      v9();
      result = __swift_destroy_boxed_opaque_existential_0(v12);
      break;
    default:
      type metadata accessor for SLHighlightPillMetricVariant(0);
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributionTextPrefix and conformance AttributionTextPrefix()
{
  result = lazy protocol witness table cache variable for type AttributionTextPrefix and conformance AttributionTextPrefix;
  if (!lazy protocol witness table cache variable for type AttributionTextPrefix and conformance AttributionTextPrefix)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributionTextPrefix and conformance AttributionTextPrefix);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HighlightPillSenderNameAttribute and conformance HighlightPillSenderNameAttribute()
{
  result = lazy protocol witness table cache variable for type HighlightPillSenderNameAttribute and conformance HighlightPillSenderNameAttribute;
  if (!lazy protocol witness table cache variable for type HighlightPillSenderNameAttribute and conformance HighlightPillSenderNameAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HighlightPillSenderNameAttribute and conformance HighlightPillSenderNameAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HighlightPillSenderNameAttribute and conformance HighlightPillSenderNameAttribute;
  if (!lazy protocol witness table cache variable for type HighlightPillSenderNameAttribute and conformance HighlightPillSenderNameAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HighlightPillSenderNameAttribute and conformance HighlightPillSenderNameAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HighlightPillNumContactsAttribute and conformance HighlightPillNumContactsAttribute()
{
  result = lazy protocol witness table cache variable for type HighlightPillNumContactsAttribute and conformance HighlightPillNumContactsAttribute;
  if (!lazy protocol witness table cache variable for type HighlightPillNumContactsAttribute and conformance HighlightPillNumContactsAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HighlightPillNumContactsAttribute and conformance HighlightPillNumContactsAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HighlightPillNumContactsAttribute and conformance HighlightPillNumContactsAttribute;
  if (!lazy protocol witness table cache variable for type HighlightPillNumContactsAttribute and conformance HighlightPillNumContactsAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HighlightPillNumContactsAttribute and conformance HighlightPillNumContactsAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HighlightPillListOfNamesAttribute and conformance HighlightPillListOfNamesAttribute()
{
  result = lazy protocol witness table cache variable for type HighlightPillListOfNamesAttribute and conformance HighlightPillListOfNamesAttribute;
  if (!lazy protocol witness table cache variable for type HighlightPillListOfNamesAttribute and conformance HighlightPillListOfNamesAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HighlightPillListOfNamesAttribute and conformance HighlightPillListOfNamesAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HighlightPillListOfNamesAttribute and conformance HighlightPillListOfNamesAttribute;
  if (!lazy protocol witness table cache variable for type HighlightPillListOfNamesAttribute and conformance HighlightPillListOfNamesAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HighlightPillListOfNamesAttribute and conformance HighlightPillListOfNamesAttribute);
  }

  return result;
}

uint64_t type metadata completion function for AttributeScopes.HighlightPillAttributes(uint64_t a1)
{
  result = type metadata accessor for AttributeScopes.FoundationAttributes();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VisionPillMetric(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for VisionPillMetric(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SLDHighlightPillMetrics(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SLDHighlightPillMetrics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s11SocialLayer23SLDHighlightPillMetrics33_00C2B47D0280335DFFDBB3BC8927527ALLVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned CKShare?, @unowned NSError?) -> () with result type (URL, CKShare)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_So7CKShareCtMd, &_s10Foundation3URLV_So7CKShareCtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v15 = swift_allocError();
    *v16 = a4;
    v17 = a4;
    v18 = v14;
    v19 = v15;
  }

  else
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = (*(v8 + 32))(v13, v10, v7);
    if (a3)
    {
      *&v13[*(v11 + 48)] = a3;
      v20 = *(*(v14 + 64) + 40);
      v21 = a3;
      outlined init with take of (URL, CKShare)(v13, v20);
      return swift_continuation_throwingResume();
    }

    __break(1u);
  }

  return MEMORY[0x282200958](v18, v19);
}

uint64_t one-time initialization function for fileProviderCollaborationInitiation()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.fileProviderCollaborationInitiation);
  __swift_project_value_buffer(v0, static Log.fileProviderCollaborationInitiation);
  return Logger.init(subsystem:category:)();
}

uint64_t Log.fileProviderCollaborationInitiation.unsafeMutableAddressor()
{
  if (one-time initialization token for fileProviderCollaborationInitiation != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Log.fileProviderCollaborationInitiation);
}

uint64_t static Log.fileProviderCollaborationInitiation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for fileProviderCollaborationInitiation != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Log.fileProviderCollaborationInitiation);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t FileProviderCollaborationInitiationRequest.Response.shareURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FileProviderCollaborationInitiationRequest.Response.recipients.getter()
{
  type metadata accessor for FileProviderCollaborationInitiationRequest.Response(0);
}

id FileProviderCollaborationInitiationRequest.Response.metadata.getter()
{
  v1 = *(v0 + *(type metadata accessor for FileProviderCollaborationInitiationRequest.Response(0) + 24));

  return v1;
}

void FileProviderCollaborationInitiationRequest.Response.recipientPayloads.getter()
{
  v1 = *(v0 + *(type metadata accessor for FileProviderCollaborationInitiationRequest.Response(0) + 20));
  v3 = v0;
  specialized Sequence.reduce<A>(into:_:)(MEMORY[0x277D84F98], partial apply for closure #1 in FileProviderCollaborationInitiationRequest.Response.recipientPayloads.getter, &v2, v1);
}

void closure #1 in FileProviderCollaborationInitiationRequest.Response.recipientPayloads.getter(uint64_t a1, void **a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SocialLayer38CollaborationInitiationResponsePayloadVSgMd, &_s11SocialLayer38CollaborationInitiationResponsePayloadVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = *a2;
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 16))(v7, a3, v9);
  v10 = type metadata accessor for CollaborationInitiationResponsePayload(0);
  (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  specialized Dictionary.subscript.setter(v7, v8);
}

uint64_t FileProviderCollaborationInitiationRequest.Response.init(shareURL:recipients:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for FileProviderCollaborationInitiationRequest.Response(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

Swift::Int FileProviderCollaborationInitiationRequest.Errors.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x231934D10](0);
  return Hasher._finalize()();
}

uint64_t key path setter for FileProviderCollaborationInitiationRequest.url : FileProviderCollaborationInitiationRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 168))(v6);
}

uint64_t FileProviderCollaborationInitiationRequest.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11SocialLayer42FileProviderCollaborationInitiationRequest_url;
  swift_beginAccess();
  v4 = type metadata accessor for URL();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t FileProviderCollaborationInitiationRequest.url.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11SocialLayer42FileProviderCollaborationInitiationRequest_url;
  swift_beginAccess();
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t FileProviderCollaborationInitiationRequest.__allocating_init(url:shareOptions:recipients:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtC11SocialLayer42FileProviderCollaborationInitiationRequest_url;
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 32))(v8 + v9, a1, v10);
  *(v8 + 16) = a3;
  *(v8 + 24) = a2;
  *(v8 + OBJC_IVAR____TtC11SocialLayer42FileProviderCollaborationInitiationRequest_metadata) = a4;
  return v8;
}

uint64_t FileProviderCollaborationInitiationRequest.init(url:shareOptions:recipients:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC11SocialLayer42FileProviderCollaborationInitiationRequest_url;
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 32))(v4 + v9, a1, v10);
  *(v4 + 16) = a3;
  *(v4 + 24) = a2;
  *(v4 + OBJC_IVAR____TtC11SocialLayer42FileProviderCollaborationInitiationRequest_metadata) = a4;
  return v4;
}

uint64_t FileProviderCollaborationInitiationRequest.initiateCollaboration()(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v2[26] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_So7CKShareCtMd, &_s10Foundation3URLV_So7CKShareCtMR);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](FileProviderCollaborationInitiationRequest.initiateCollaboration(), 0, 0);
}

{
  v30 = v1;
  v29[1] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 336);
  v3 = *(v1 + 328);
  v4 = *(v1 + 304);
  v5 = *(v1 + 384);
  swift_willThrow();

  v6 = *(v1 + 344);
  if (v5)
  {
    v7 = *(v1 + 288);
    v8 = *(v1 + 256);
    v9 = *(v1 + 232);
    (*(v1 + 272))();
    URL.stopAccessingSecurityScopedResource()();
    v7(v8, v9);
  }

  v10 = v6;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v27 = *(v1 + 288);
    v13 = *(v1 + 272);
    v14 = *(v1 + 256);
    v15 = *(v1 + 232);
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29[0] = v28;
    *v16 = 136315394;
    v13();
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9290]);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v27(v14, v15);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v29);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    *(v1 + 144) = v6;
    v21 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v22 = String.init<A>(reflecting:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v29);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_231772000, v11, v12, "Failed to initiate collaboration on url: %s, error: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2319361B0](v28, -1, -1);
    MEMORY[0x2319361B0](v16, -1, -1);
  }

  swift_willThrow();

  v25 = *(v1 + 8);

  return v25();
}

uint64_t FileProviderCollaborationInitiationRequest.initiateCollaboration()()
{
  v139 = v0;
  v138[1] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for fileProviderCollaborationInitiation != -1)
  {
    goto LABEL_88;
  }

  while (1)
  {
    v1 = type metadata accessor for Logger();
    *(v0 + 264) = __swift_project_value_buffer(v1, static Log.fileProviderCollaborationInitiation);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      LODWORD(v137) = v3;
      v4 = *(v0 + 256);
      v6 = *(v0 + 232);
      v5 = *(v0 + 240);
      v7 = *(v0 + 200);
      v8 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v138[0] = v136;
      *v8 = 136315650;
      (*(*v7 + 112))();
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
      lazy protocol witness table accessor for type TUHandle and conformance NSObject();
      v9 = Set.description.getter();
      v11 = v10;

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v138);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      (*(*v7 + 160))(v13);
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9290]);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v5 + 8))(v4, v6);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v138);

      *(v8 + 14) = v17;
      *(v8 + 22) = 2080;
      v19 = (*(*v7 + 136))(v18);
      v20 = [v19 optionsGroups];

      if (!v20)
      {
        goto LABEL_98;
      }

      v22 = v7 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
      v23 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for _SWCollaborationOptionsGroup, 0x277CDC6D0);
      v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = MEMORY[0x231934700](v24, v23);
      v27 = v26;

      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v138);

      *(v8 + 24) = v28;
      _os_log_impl(&dword_231772000, v2, v137, "Received request to initiate collaboration with: %s, url: %s, optionsGroup: %s", v8, 0x20u);
      v29 = v136;
      swift_arrayDestroy();
      MEMORY[0x2319361B0](v29, -1, -1);
      MEMORY[0x2319361B0](v8, -1, -1);
    }

    else
    {
      v30 = *(v0 + 200);

      v22 = v30 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    }

    v31 = *(v0 + 256);
    v33 = *(v0 + 232);
    v32 = *(v0 + 240);
    v34 = *(v0 + 200);
    v35 = *(*v34 + 160);
    v36 = (*v34 + 160) & 0xFFFFFFFFFFFFLL | 0xBC8000000000000;
    *(v0 + 272) = v35;
    *(v0 + 280) = v36;
    v35();
    *(v0 + 384) = URL.startAccessingSecurityScopedResource()();
    v37 = *(v32 + 8);
    *(v0 + 288) = v37;
    *(v0 + 296) = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v38 = v37(v31, v33);
    (v35)(v38);
    URL._bridgeToObjectiveC()(v39);
    v41 = v40;
    *(v0 + 304) = v40;
    v42 = v37(v31, v33);
    v43 = *(*v34 + 112);
    v44 = *v34 + 112;
    *(v0 + 312) = v43;
    *(v0 + 320) = v44 & 0xFFFFFFFFFFFFLL | 0x970C000000000000;
    v45 = v43(v42);
    v46 = v45;
    v47 = MEMORY[0x277D84FA0];
    v134 = v41;
    v135 = v22;
    v136 = v44;
    v137 = v43;
    if ((v45 & 0xC000000000000001) != 0)
    {
      v138[0] = MEMORY[0x277D84FA0];
      __CocoaSet.makeIterator()();
      v48 = __CocoaSet.Iterator.next()();
      if (v48)
      {
        v49 = v48;
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
        v50 = v49;
        v51 = MEMORY[0x277D84FA0];
        do
        {
          *(v0 + 184) = v50;
          swift_dynamicCast();
          v52 = [*(v0 + 176) type];
          v53 = *(v0 + 176);
          if (v52 == 3)
          {
            v54 = *(v51 + 16);
            if (*(v51 + 24) <= v54)
            {
              specialized _NativeSet.resize(capacity:)(v54 + 1);
              v51 = v138[0];
            }

            v55 = NSObject._rawHashValue(seed:)(*(v51 + 40));
            v56 = v51 + 56;
            v57 = -1 << *(v51 + 32);
            v58 = v55 & ~v57;
            v59 = v58 >> 6;
            if (((-1 << v58) & ~*(v51 + 56 + 8 * (v58 >> 6))) != 0)
            {
              v60 = __clz(__rbit64((-1 << v58) & ~*(v51 + 56 + 8 * (v58 >> 6)))) | v58 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v61 = 0;
              v62 = (63 - v57) >> 6;
              do
              {
                if (++v59 == v62 && (v61 & 1) != 0)
                {
                  __break(1u);
                  goto LABEL_85;
                }

                v63 = v59 == v62;
                if (v59 == v62)
                {
                  v59 = 0;
                }

                v61 |= v63;
                v64 = *(v56 + 8 * v59);
              }

              while (v64 == -1);
              v60 = __clz(__rbit64(~v64)) + (v59 << 6);
            }

            *(v56 + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v60;
            *(*(v51 + 48) + 8 * v60) = v53;
            ++*(v51 + 16);
          }

          else
          {
          }

          v50 = __CocoaSet.Iterator.next()();
        }

        while (v50);
      }

      else
      {
        v51 = v47;
      }
    }

    else
    {
      v65 = *(v45 + 32);
      v132 = ((1 << v65) + 63) >> 6;
      if ((v65 & 0x3Fu) > 0xD)
      {

        if (!swift_stdlib_isStackAllocationSafe())
        {
          v128 = swift_slowAlloc();
          v51 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo8TUHandleCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So8I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(v128, v132, v46, closure #1 in closure #2 in CloudKitCollaborationInitiationRequest.initiateCollaboration());

          MEMORY[0x2319361B0](v128, -1, -1);
          goto LABEL_43;
        }
      }

      v131[1] = v131;
      MEMORY[0x28223BE20](v45);
      v67 = v131 - ((v66 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v67, v66);
      v133 = 0;
      v68 = 0;
      v69 = 1 << *(v46 + 32);
      v70 = -1;
      if (v69 < 64)
      {
        v70 = ~(-1 << v69);
      }

      v71 = v70 & *(v46 + 56);
      v72 = (v69 + 63) >> 6;
      while (v71)
      {
        v73 = __clz(__rbit64(v71));
        v71 &= v71 - 1;
LABEL_36:
        v76 = v73 | (v68 << 6);
        if ([*(*(v46 + 48) + 8 * v76) type] == 3)
        {
          *&v67[(v76 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v76;
          v77 = __OFADD__(v133++, 1);
          if (v77)
          {
            __break(1u);
            goto LABEL_40;
          }
        }
      }

      v74 = v68;
      while (1)
      {
        v68 = v74 + 1;
        if (__OFADD__(v74, 1))
        {
          goto LABEL_86;
        }

        if (v68 >= v72)
        {
          break;
        }

        v75 = *(v46 + 56 + 8 * v68);
        ++v74;
        if (v75)
        {
          v73 = __clz(__rbit64(v75));
          v71 = (v75 - 1) & v75;
          goto LABEL_36;
        }
      }

LABEL_40:
      v51 = specialized _NativeSet.extractSubset(using:count:)(v67, v132, v133, v46);
    }

LABEL_43:
    specialized Sequence.compactMap<A>(_:)(v51);

    isa = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 328) = isa;

    v80 = v137(v79);
    v81 = v80;
    v132 = isa;
    v133 = 0;
    if ((v80 & 0xC000000000000001) == 0)
    {
      break;
    }

    v138[0] = v47;
    __CocoaSet.makeIterator()();
    v82 = __CocoaSet.Iterator.next()();
    if (!v82)
    {
LABEL_62:

      goto LABEL_79;
    }

    v83 = v82;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
    v84 = v83;
    v47 = MEMORY[0x277D84FA0];
    while (1)
    {
      *(v0 + 168) = v84;
      swift_dynamicCast();
      v85 = [*(v0 + 160) type];
      v86 = *(v0 + 160);
      if (v85 == 2)
      {
        break;
      }

LABEL_47:
      v84 = __CocoaSet.Iterator.next()();
      if (!v84)
      {
        goto LABEL_62;
      }
    }

    v87 = *(v47 + 16);
    if (*(v47 + 24) <= v87)
    {
      specialized _NativeSet.resize(capacity:)(v87 + 1);
    }

    v47 = v138[0];
    v88 = NSObject._rawHashValue(seed:)(*(v138[0] + 40));
    v89 = v47 + 56;
    v90 = -1 << *(v47 + 32);
    v91 = v88 & ~v90;
    v92 = v91 >> 6;
    if (((-1 << v91) & ~*(v47 + 56 + 8 * (v91 >> 6))) != 0)
    {
      v93 = __clz(__rbit64((-1 << v91) & ~*(v47 + 56 + 8 * (v91 >> 6)))) | v91 & 0x7FFFFFFFFFFFFFC0;
LABEL_61:
      *(v89 + ((v93 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v93;
      *(*(v47 + 48) + 8 * v93) = v86;
      ++*(v47 + 16);
      goto LABEL_47;
    }

    v94 = 0;
    v95 = (63 - v90) >> 6;
    while (++v92 != v95 || (v94 & 1) == 0)
    {
      v96 = v92 == v95;
      if (v92 == v95)
      {
        v92 = 0;
      }

      v94 |= v96;
      v97 = *(v89 + 8 * v92);
      if (v97 != -1)
      {
        v93 = __clz(__rbit64(~v97)) + (v92 << 6);
        goto LABEL_61;
      }
    }

LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    swift_once();
  }

  v98 = *(v80 + 32);
  v99 = (((1 << v98) + 63) >> 6);
  if ((v98 & 0x3Fu) > 0xD)
  {

    if (swift_stdlib_isStackAllocationSafe())
    {

      goto LABEL_64;
    }

    v129 = swift_slowAlloc();
    v47 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo8TUHandleCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So8I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(v129, v99, v81, closure #3 in closure #2 in CloudKitCollaborationInitiationRequest.initiateCollaboration());

    MEMORY[0x2319361B0](v129, -1, -1);
    v133 = 0;
  }

  else
  {
LABEL_64:
    v136 = v131;
    v137 = v99;
    MEMORY[0x28223BE20](v80);
    v101 = v131 - ((v100 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v101, v100);
    v102 = 0;
    v103 = 0;
    v104 = 1 << *(v81 + 32);
    v105 = -1;
    if (v104 < 64)
    {
      v105 = ~(-1 << v104);
    }

    v106 = v105 & *(v81 + 56);
    v107 = (v104 + 63) >> 6;
    while (v106)
    {
      v108 = __clz(__rbit64(v106));
      v106 &= v106 - 1;
LABEL_74:
      v111 = v108 | (v103 << 6);
      if ([*(*(v81 + 48) + 8 * v111) type] == 2)
      {
        *&v101[(v111 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v111;
        v77 = __OFADD__(v102++, 1);
        if (v77)
        {
          __break(1u);
          goto LABEL_78;
        }
      }
    }

    v109 = v103;
    while (1)
    {
      v103 = v109 + 1;
      if (__OFADD__(v109, 1))
      {
        goto LABEL_87;
      }

      if (v103 >= v107)
      {
        break;
      }

      v110 = *(v81 + 56 + 8 * v103);
      ++v109;
      if (v110)
      {
        v108 = __clz(__rbit64(v110));
        v106 = (v110 - 1) & v110;
        goto LABEL_74;
      }
    }

LABEL_78:
    v47 = specialized _NativeSet.extractSubset(using:count:)(v101, v137, v102, v81);
  }

LABEL_79:
  v112 = *(v0 + 200);
  specialized Sequence.compactMap<A>(_:)(v47);

  v113.super.isa = Array._bridgeToObjectiveC()().super.isa;
  *(v0 + 336) = v113;

  v115 = *(*v112 + 136);
  v116 = (v115)(v114);
  v21 = [v116 optionsGroups];
  if (!v21)
  {
    __break(1u);
    goto LABEL_96;
  }

  v117 = v21;

  v118 = CKSharingAccessTypeFromOptionsGroups();
  v119 = v115();
  v21 = [v119 optionsGroups];
  if (!v21)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v120 = v21;

  v121 = CKSharingPermissionTypeFromOptionsGroups();
  v122 = v115();
  v21 = [v122 optionsGroups];
  if (!v21)
  {
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    return MEMORY[0x282200938](v21);
  }

  v123 = v21;
  v124 = *(v0 + 224);

  v125 = objc_opt_self();
  v126 = CKSharingAllowOthersToInviteFromOptionsGroups();

  *(v0 + 16) = v0;
  *(v0 + 56) = v124;
  *(v0 + 24) = FileProviderCollaborationInitiationRequest.initiateCollaboration();
  v127 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy10Foundation3URLV_So7CKShareCts5Error_pGMd, &_sSccy10Foundation3URLV_So7CKShareCts5Error_pGMR);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned CKShare?, @unowned NSError?) -> () with result type (URL, CKShare);
  *(v0 + 104) = &block_descriptor_4;
  *(v0 + 112) = v127;
  [v125 shareFileOrFolderURL:v134 emailAddresses:v132 phoneNumbers:v113.super.isa accessType:v118 permissionType:v121 allowOthersToInvite:v126 completionHandler:v0 + 80];
  v21 = (v0 + 16);

  return MEMORY[0x282200938](v21);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 344) = v1;
  if (v1)
  {
    v2 = FileProviderCollaborationInitiationRequest.initiateCollaboration();
  }

  else
  {
    v2 = FileProviderCollaborationInitiationRequest.initiateCollaboration();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[38];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[25];
  outlined init with take of (URL, CKShare)(v0[28], v7);
  v0[44] = *(v7 + *(v8 + 48));
  (*(v5 + 32))(v4, v7, v6);

  v0[45] = [objc_allocWithZone(MEMORY[0x277CDC708]) initWithMetadata_];
  v10 = swift_task_alloc();
  v0[46] = v10;
  v11 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for _SWStartCollaborationActionResponse, 0x277CDC710);
  *v10 = v0;
  v10[1] = FileProviderCollaborationInitiationRequest.initiateCollaboration();
  v12 = v0[25];

  return MEMORY[0x2822008A0](v0 + 19, 0, 0, 0xD000000000000017, 0x8000000231847440, partial apply for closure #5 in FileProviderCollaborationInitiationRequest.initiateCollaboration(), v12, v11);
}

{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = FileProviderCollaborationInitiationRequest.initiateCollaboration();
  }

  else
  {
    v2 = FileProviderCollaborationInitiationRequest.initiateCollaboration();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 312);
  v17 = *(v0 + 288);
  v18 = *(v0 + 384);
  v4 = *(v0 + 248);
  v5 = *(v0 + 232);
  v6 = *(v0 + 192);
  v7 = *(v0 + 152);
  v8 = (*(*(v0 + 240) + 16))(v6, v4, v5);
  v9 = v3(v8);
  v10 = [v7 updatedMetadata];

  v17(v4, v5);
  v11 = type metadata accessor for FileProviderCollaborationInitiationRequest.Response(0);
  *(v6 + *(v11 + 20)) = v9;
  *(v6 + *(v11 + 24)) = v10;
  if (v18 == 1)
  {
    v12 = *(v0 + 288);
    v13 = *(v0 + 256);
    v14 = *(v0 + 232);
    (*(v0 + 272))();
    URL.stopAccessingSecurityScopedResource()();
    v12(v13, v14);
  }

  v15 = *(v0 + 8);

  return v15();
}

{
  v31 = v0;
  v30[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 352);
  v2 = *(v0 + 288);
  v3 = *(v0 + 384);
  v4 = *(v0 + 248);
  v5 = *(v0 + 232);

  v6 = v2(v4, v5);
  v7 = *(v0 + 376);
  if (v3)
  {
    v8 = *(v0 + 288);
    v9 = *(v0 + 256);
    v10 = *(v0 + 232);
    (*(v0 + 272))(v6);
    URL.stopAccessingSecurityScopedResource()();
    v8(v9, v10);
  }

  v11 = v7;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v28 = *(v0 + 288);
    v14 = *(v0 + 272);
    v15 = *(v0 + 256);
    v16 = *(v0 + 232);
    v17 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30[0] = v29;
    *v17 = 136315394;
    v14();
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9290]);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v28(v15, v16);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v30);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    *(v0 + 144) = v7;
    v22 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v23 = String.init<A>(reflecting:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v30);

    *(v17 + 14) = v25;
    _os_log_impl(&dword_231772000, v12, v13, "Failed to initiate collaboration on url: %s, error: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2319361B0](v29, -1, -1);
    MEMORY[0x2319361B0](v17, -1, -1);
  }

  swift_willThrow();

  v26 = *(v0 + 8);

  return v26();
}

void closure #5 in FileProviderCollaborationInitiationRequest.initiateCollaboration()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo35_SWStartCollaborationActionResponseCs5Error_pGMd, &_sScCySo35_SWStartCollaborationActionResponseCs5Error_pGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*a2 + 160))(v10);
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  v16 = [objc_allocWithZone(MEMORY[0x277CDC708]) initWithMetadata_];
  (*(v5 + 16))(v7, a1, v4);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  (*(v5 + 32))(v18 + v17, v7, v4);
  aBlock[4] = partial apply for closure #1 in closure #5 in FileProviderCollaborationInitiationRequest.initiateCollaboration();
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed _SWActionResponse?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_20;
  v19 = _Block_copy(aBlock);

  SWPerformActionForDocumentURL();
  _Block_release(v19);
}

uint64_t closure #1 in closure #5 in FileProviderCollaborationInitiationRequest.initiateCollaboration()(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
  }

  else
  {
    if (a1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v4 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo35_SWStartCollaborationActionResponseCs5Error_pGMd, &_sScCySo35_SWStartCollaborationActionResponseCs5Error_pGMR);
        return CheckedContinuation.resume(returning:)();
      }
    }

    lazy protocol witness table accessor for type FileProviderCollaborationInitiationRequest.Errors and conformance FileProviderCollaborationInitiationRequest.Errors();
    swift_allocError();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo35_SWStartCollaborationActionResponseCs5Error_pGMd, &_sScCySo35_SWStartCollaborationActionResponseCs5Error_pGMR);
  return CheckedContinuation.resume(throwing:)();
}

void thunk for @escaping @callee_guaranteed (@guaranteed _SWActionResponse?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t FileProviderCollaborationInitiationRequest.deinit()
{

  v1 = OBJC_IVAR____TtC11SocialLayer42FileProviderCollaborationInitiationRequest_url;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t FileProviderCollaborationInitiationRequest.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11SocialLayer42FileProviderCollaborationInitiationRequest_url;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t protocol witness for CollaborationInitiationRequest.initiateCollaboration() in conformance FileProviderCollaborationInitiationRequest(uint64_t a1)
{
  v6 = (*(**v1 + 192) + **(**v1 + 192));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of CollaborationInitiationRequest.initiateCollaboration();

  return v6(a1);
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient(0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientVGMd, &_ss11_SetStorageCy11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v33 + 72);
      outlined init with take of CloudKitCollaborationInitiationRequest.Response.Recipient(v20 + v21 * (v17 | (v9 << 6)), v5);
      Hasher.init(_seed:)();
      NSObject.hash(into:)();
      type metadata accessor for URL();
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9270]);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = outlined init with take of CloudKitCollaborationInitiationRequest.Response.Recipient(v5, *(v8 + 48) + v16 * v21);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo8TUHandleCGMd, &_ss11_SetStorageCySo8TUHandleCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v5 + 40));
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void specialized closure #1 in _NativeSet.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        specialized _NativeSet.extractSubset(using:count:)(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo8TUHandleCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So8I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    specialized closure #1 in _NativeSet.filter(_:)(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

Swift::Int specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo8TUHandleCGMd, &_ss11_SetStorageCySo8TUHandleCGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v9 + 40);
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type FileProviderCollaborationInitiationRequest.Errors and conformance FileProviderCollaborationInitiationRequest.Errors()
{
  result = lazy protocol witness table cache variable for type FileProviderCollaborationInitiationRequest.Errors and conformance FileProviderCollaborationInitiationRequest.Errors;
  if (!lazy protocol witness table cache variable for type FileProviderCollaborationInitiationRequest.Errors and conformance FileProviderCollaborationInitiationRequest.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileProviderCollaborationInitiationRequest.Errors and conformance FileProviderCollaborationInitiationRequest.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FileProviderCollaborationInitiationRequest.Errors and conformance FileProviderCollaborationInitiationRequest.Errors;
  if (!lazy protocol witness table cache variable for type FileProviderCollaborationInitiationRequest.Errors and conformance FileProviderCollaborationInitiationRequest.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileProviderCollaborationInitiationRequest.Errors and conformance FileProviderCollaborationInitiationRequest.Errors);
  }

  return result;
}

uint64_t type metadata completion function for FileProviderCollaborationInitiationRequest(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of FileProviderCollaborationInitiationRequest.initiateCollaboration()(uint64_t a1)
{
  v6 = (*(*v1 + 192) + **(*v1 + 192));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of CollaborationInitiationRequest.initiateCollaboration();

  return v6(a1);
}

void type metadata completion function for FileProviderCollaborationInitiationRequest.Response(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Set<TUHandle>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for OS_dispatch_queue(319, &lazy cache variable for type metadata for SWCollaborationMetadata, 0x277CDC698);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t partial apply for closure #1 in closure #5 in FileProviderCollaborationInitiationRequest.initiateCollaboration()(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo35_SWStartCollaborationActionResponseCs5Error_pGMd, &_sScCySo35_SWStartCollaborationActionResponseCs5Error_pGMR);

  return closure #1 in closure #5 in FileProviderCollaborationInitiationRequest.initiateCollaboration()(a1, a2);
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

objc_class *one-time initialization function for resourceBundle()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  resourceBundle.super.isa = result;
  return result;
}

uint64_t one-time initialization function for preview()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.preview);
  __swift_project_value_buffer(v0, static ImageResource.preview);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x231934120](0x77656976657250, 0xE700000000000000, resourceBundle.super.isa);
}

uint64_t one-time initialization function for slAttributionViewMarqueeMask()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.slAttributionViewMarqueeMask);
  __swift_project_value_buffer(v0, static ImageResource.slAttributionViewMarqueeMask);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x231934120](0xD00000000000001CLL, 0x8000000231847520, resourceBundle.super.isa);
}

uint64_t ImageResource.preview.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for ImageResource();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static ImageResource.preview.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ImageResource();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

void __SLDAssetCatalog_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "Couldn't get sociallayerd's asset catalog. Error: %@", &v2, 0xCu);
}

void SLDCreateGroupPhotoImageWithGroupID_cold_2()
{
  v0 = dlerror();
  v1 = abort_report_np("%s", v0);
  SLDCreateGroupPhotoImageWithData_cold_1(v1, v2);
}

void SLDCreateGroupPhotoImageWithData_cold_1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = [a1 length];
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "SLDCreateGroupPhotoImageWithData had group photo data, but the group photo image ref was still nil. groupPhotoData.length: %li", &v3, 0xCu);
}

void SLDValidateSupplementaryData_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  _os_log_fault_impl(&dword_231772000, a2, OS_LOG_TYPE_FAULT, "#SLDCK supplementaryData is supposed to be a dictionary, not a %@", v5, 0xCu);
}

void SLDValidateSupplementaryData_cold_2()
{
  OUTLINED_FUNCTION_11();
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_15(v0, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_231772000, v2, v3, "#SLDCK supplementaryData keys must be strings, not %@");
}

void SLDValidateSupplementaryData_cold_3()
{
  OUTLINED_FUNCTION_11();
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_15(v0, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_231772000, v2, v3, "#SLDCK supplementaryData values must be NSURLs, not %@");
}

void __SLDStorageDirectory_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __SLDStorageDirectory_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __SLSendPortraitFeedbackTypeAppButtonForAttribution_block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) uniqueIdentifier];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_0_1(&dword_231772000, v2, v3, "SLSendPortraitFeedbackTypeAppButtonForAttribution: error sending feedback for attribution: [%@] error: [%@]", v4, v5, v6, v7);
}

void __SLSendPortraitFeedbackTypeDisplayedHighlight_block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) identifier];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_0_1(&dword_231772000, v2, v3, "SLSendPortraitFeedbackTypeDisplayedForHighlight: error sending feedback for highlight: [%@] error: [%@]", v4, v5, v6, v7);
}

void __SLSendPortraitFeedbackTypeUserInteractedWithHighlight_block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) identifier];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_0_1(&dword_231772000, v2, v3, "SLSendPortraitFeedbackTypeUserInteractedWithHighlight: error sending feedback for highlight: [%@] error: [%@]", v4, v5, v6, v7);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  MEMORY[0x2821148B0](framesetter, stringRange.location, stringRange.length, frameAttributes, fitRange, constraints, *&constraints.height);
  result.height = v6;
  result.width = v5;
  return result;
}

CGRect CTLineGetBoundsWithOptions(CTLineRef line, CTLineBoundsOptions options)
{
  MEMORY[0x282114910](line, options);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}