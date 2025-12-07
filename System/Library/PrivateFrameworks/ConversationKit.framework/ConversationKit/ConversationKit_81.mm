Swift::Void __swiftcall LocalParticipantControlsView.layoutViews()()
{
  v2 = *&v0;
  v3 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_69_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v489 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v489 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_32();
  v490 = v16;
  v17 = type metadata accessor for FloatingPointRoundingRule();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17();
  v533 = v19 - v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_32();
  v532 = v22;
  OUTLINED_FUNCTION_13_2();
  v24 = *MEMORY[0x1E69E7D40] & v23;
  v542 = *(v24 + 0x250);
  v543 = v24 + 592;
  v542();
  OUTLINED_FUNCTION_12_102();
  if (v26)
  {
    if (v25)
    {
      static Layout.LocalParticipantViewCameraControls.iOS.getter(v552);
      v27 = *v552;
    }

    else
    {
      static Layout.LocalParticipantViewCameraControls.iOS.getter(v552);
      v27 = *&v552[7];
    }
  }

  else
  {
    static Layout.LocalParticipantViewCameraControls.iOS.getter(v552);
    v27 = *&v552[3];
  }

  v528 = v27;
  OUTLINED_FUNCTION_23_59();
  v28();
  OUTLINED_FUNCTION_12_102();
  if (v26)
  {
    if (v29)
    {
      static Layout.LocalParticipantViewCameraControls.iOS.getter(v553);
      v30 = *v553;
    }

    else
    {
      static Layout.LocalParticipantViewCameraControls.iOS.getter(v553);
      v30 = *&v553[8];
    }
  }

  else
  {
    static Layout.LocalParticipantViewCameraControls.iOS.getter(v553);
    v30 = *&v553[3];
  }

  v527 = v30;
  OUTLINED_FUNCTION_23_59();
  v31();
  OUTLINED_FUNCTION_12_102();
  if (v25)
  {
    static Layout.LocalParticipantViewCameraControls.iOS.getter(v554);
    v33 = v554[9];
  }

  else
  {
    v33 = 0;
    if (v32 == 3)
    {
      static Layout.LocalParticipantViewCameraControls.iOS.getter(v554);
      v33 = v554[11];
    }
  }

  OUTLINED_FUNCTION_23_59();
  v35 = v34();
  v495 = v7;
  v501 = v11;
  v502 = v1;
  v505 = v14;
  v496 = v33;
  switch(v35)
  {
    case 1:
      OUTLINED_FUNCTION_44_23();
      v36 = v0 + 6;
      break;
    case 2:
      OUTLINED_FUNCTION_44_23();
      v36 = v0 + 1;
      break;
    case 3:
      OUTLINED_FUNCTION_44_23();
      v36 = v0 + 2;
      break;
    default:
      OUTLINED_FUNCTION_44_23();
      v36 = v0 + 5;
      break;
  }

  v37 = *v36;
  type metadata accessor for AppUtilities();
  v536 = static AppUtilities.isRTL.getter();
  static Layout.LocalParticipantViewCameraControls.iOS.getter(v555);
  v515 = *&v555[12];
  [v0 bounds];
  Width = CGRectGetWidth(v557);
  v39 = v528;
  v40 = Width - v528 - v37;
  v42 = *(v18 + 104);
  v43 = v532;
  v538 = *MEMORY[0x1E69E7048];
  v41 = v538;
  (v42)(v532, v538, v17);
  v539 = *MEMORY[0x1E69E7040];
  v44 = v533;
  v42(v533);
  v45 = OUTLINED_FUNCTION_6_128();
  v48 = OUTLINED_FUNCTION_26_56(v45, v46, v47, v40, v39);
  v525 = v49;
  v526 = v48;
  v523 = v51;
  v524 = v50;
  v52 = *(v18 + 8);
  v53 = OUTLINED_FUNCTION_339();
  v52(v53);
  v54 = OUTLINED_FUNCTION_20_64();
  v52(v54);
  (v42)(v43, v41, v17);
  v55 = v539;
  (v42)(v44, v539, v17);
  v56 = OUTLINED_FUNCTION_6_128();
  v59 = OUTLINED_FUNCTION_26_56(v56, v57, v58, v39, v39);
  v546 = v60;
  v547 = v59;
  v545 = v61;
  *&v544 = v62;
  v63 = OUTLINED_FUNCTION_339();
  v52(v63);
  v64 = OUTLINED_FUNCTION_20_64();
  v52(v64);
  [v0 bounds];
  Height = CGRectGetHeight(v558);
  v66 = v527;
  v67 = Height - v527 - v37;
  v68 = OUTLINED_FUNCTION_17_75();
  v42(v68);
  (v42)(v44, v55, v17);
  v69 = OUTLINED_FUNCTION_6_128();
  v549.origin.x = OUTLINED_FUNCTION_26_56(v69, v70, v71, v39, v67);
  v549.origin.y = v72;
  v549.size.width = v73;
  v549.size.height = v74;
  v75 = OUTLINED_FUNCTION_339();
  v52(v75);
  v76 = OUTLINED_FUNCTION_20_64();
  v52(v76);
  OUTLINED_FUNCTION_19_57();
  v77 = CGRectGetWidth(v559) - v39 - v37;
  OUTLINED_FUNCTION_19_57();
  v78 = CGRectGetHeight(v560) - v66 - v37;
  v79 = OUTLINED_FUNCTION_17_75();
  v42(v79);
  (v42)(v44, v539, v17);
  v80 = OUTLINED_FUNCTION_6_128();
  v548 = OUTLINED_FUNCTION_26_56(v80, v81, v82, v77, v78);
  v550 = v83;
  v85 = v84;
  v87 = v86;
  v88 = OUTLINED_FUNCTION_339();
  v52(v88);
  v89 = OUTLINED_FUNCTION_20_64();
  v52(v89);
  OUTLINED_FUNCTION_19_57();
  MidX = CGRectGetMidX(v561);
  v520 = v37 * 0.5;
  v91 = MidX - v37 * 0.5;
  OUTLINED_FUNCTION_19_57();
  v92 = CGRectGetHeight(v562) - v66 - v37;
  v93 = OUTLINED_FUNCTION_17_75();
  v42(v93);
  v517 = v42;
  v518 = v18 + 104;
  (v42)(v44, v539, v17);
  v94 = OUTLINED_FUNCTION_6_128();
  v534 = OUTLINED_FUNCTION_26_56(v94, v95, v96, v91, v92);
  v535 = v97;
  v530 = v99;
  v531 = v98;
  v100 = OUTLINED_FUNCTION_339();
  v52(v100);
  v521 = v17;
  v519 = v18 + 8;
  v516 = v52;
  (v52)(v43, v17);
  OUTLINED_FUNCTION_19_57();
  v101 = (CGRectGetWidth(v563) - (v39 + v39) - v37) / 3.0;
  v102 = v39 + v101;
  OUTLINED_FUNCTION_19_57();
  v103 = CGRectGetHeight(v564) - v66 - v37;
  OUTLINED_FUNCTION_19_57();
  v104 = CGRectGetWidth(v565) - v39 - v101 - v37;
  OUTLINED_FUNCTION_19_57();
  CGRectGetHeight(v566);
  v537 = v37;
  OUTLINED_FUNCTION_22_55();
  if (v105)
  {
    v107 = v102;
  }

  else
  {
    v107 = v104;
  }

  if (v105)
  {
    v108 = v103;
  }

  else
  {
    v108 = v106;
  }

  v493 = v108;
  v494 = v107;
  if (v105)
  {
    v109 = v104;
  }

  else
  {
    v109 = v102;
  }

  if (!v105)
  {
    v106 = v103;
  }

  v491 = v106;
  v492 = v109;
  if (v105)
  {
    x = v548;
  }

  else
  {
    x = v549.origin.x;
  }

  v500 = x;
  if (v105)
  {
    y = v550;
  }

  else
  {
    y = v549.origin.y;
  }

  if (v105)
  {
    v112 = v85;
  }

  else
  {
    v112 = v549.size.width;
  }

  if (v105)
  {
    v113 = v87;
  }

  else
  {
    v113 = v549.size.height;
  }

  if (v105)
  {
    v114 = v549.origin.x;
  }

  else
  {
    v114 = v548;
  }

  if (v105)
  {
    v115 = v549.origin.y;
  }

  else
  {
    v115 = v550;
  }

  v540 = v85;
  v541 = v87;
  if (v105)
  {
    v116 = v549.size.width;
  }

  else
  {
    v116 = v85;
  }

  if (v105)
  {
    v87 = v549.size.height;
  }

  if (v105)
  {
    v117 = v547;
  }

  else
  {
    v117 = v526;
  }

  v118 = v525;
  if (v105)
  {
    v118 = *&v546;
  }

  v513 = v118;
  v514 = v117;
  v119 = v524;
  if (v105)
  {
    v119 = v545;
  }

  v545 = v119;
  v120 = v523;
  if (v105)
  {
    v120 = *&v544;
  }

  v512 = v120;
  v551[2] = MEMORY[0x1E69E7CC0];
  v551[1] = MEMORY[0x1E69E7CC0];
  v121 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraFlipButton);
  v122 = [v121 leadingAnchor];
  v123 = [v0 leadingAnchor];
  v124 = [v122 constraintEqualToAnchor:v123 constant:10.0];

  v125 = [v121 bottomAnchor];
  v126 = [*&v2 bottomAnchor];
  v127 = [v125 constraintEqualToAnchor:v126 constant:-10.0];

  *&v546 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR));
  v128 = swift_allocObject();
  v544 = xmmword_1BC4BA930;
  *(v128 + 16) = xmmword_1BC4BA930;
  *(v128 + 32) = v124;
  *(v128 + 40) = v127;
  v129 = v124;
  v529 = v127;
  specialized Array.append<A>(contentsOf:)(v128);
  OUTLINED_FUNCTION_23_59();
  v131 = v130();
  v509 = v121;
  v498 = v112;
  v499 = y;
  v497 = v113;
  v506 = v115;
  v507 = v87;
  v508 = v116;
  if (v131 == 1)
  {
    [v121 setTranslatesAutoresizingMaskIntoConstraints_];
    v132 = [*&v2 subviews];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
    v133 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v556[0] = v121;
    MEMORY[0x1EEE9AC00](v134);
    *(&v489 - 2) = v556;
    LOBYTE(v132) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v489 - 4), v133);
    v489 = 0;

    if ((v132 & 1) == 0)
    {
      [*&v2 addSubview_];
    }

    v135 = OUTLINED_FUNCTION_11_112();
    OUTLINED_FUNCTION_30_40(v135);
    v136 = v529;
    *(v137 + 32) = v129;
    *(v137 + 40) = v136;
    v138 = v129;
    v139 = v136;
    specialized Array.append<A>(contentsOf:)(v135);
  }

  else
  {
    [v121 setFrame_];
    v489 = 0;
  }

  v140 = v537;
  v141 = v530;
  v142 = v531;
  v143 = v534;
  v522 = v129;
  OUTLINED_FUNCTION_34_40();
  v144 += 59;
  v145 = *v144;
  v146 = v144;
  if ((*v144)())
  {
    OUTLINED_FUNCTION_34_40();
    v148 = (*(v147 + 496))();
    [v148 sizeToFit];
  }

  v547 = v2;
  v149 = static Platform.current.getter();
  v150 = COERCE_DOUBLE(&lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>);
  v151 = &off_1E7FE9000;
  v510 = v146;
  v511 = v145;
  if (v149 == 1)
  {
    if (one-time initialization token for shared != -1)
    {
      goto LABEL_426;
    }

    goto LABEL_76;
  }

  v504 = v114;
  v542();
  OUTLINED_FUNCTION_9_105();
  if (v25 || (OUTLINED_FUNCTION_15_67(), OUTLINED_FUNCTION_5_18(), ((*(v161 + 640))() & 1) != 0))
  {
    MaxX = CGRectGetMaxX(v549);
    v567.origin.x = v143;
    v567.origin.y = v535;
    v567.size.width = v142;
    v567.size.height = v141;
    MinX = CGRectGetMinX(v567);
    v164 = v520;
    v165 = (MaxX + MinX) * 0.5 - v520;
    v568.origin.x = OUTLINED_FUNCTION_18_66();
    v568.size.height = v141;
    v166 = v141;
    v167 = CGRectGetMaxX(v568);
    v569.origin.x = v548;
    v569.origin.y = v550;
    v569.size.width = v540;
    v569.size.height = v541;
    v168 = (v167 + CGRectGetMinX(v569)) * 0.5 - v164;
  }

  else
  {
    v169 = v548;
    v570.origin.x = v548;
    v570.origin.y = v550;
    v570.size.width = v540;
    v570.size.height = v541;
    v170 = CGRectGetMinX(v570);
    v172 = v549.origin.x;
    v171 = v549.origin.y;
    v174 = v549.size.width;
    v173 = v549.size.height;
    v175 = v170 - CGRectGetMaxX(v549) - (v140 + v140);
    v166 = v141;
    v176 = v175 / 3.0;
    v571.origin.x = v172;
    v571.origin.y = v171;
    v571.size.width = v174;
    v571.size.height = v173;
    v165 = CGRectGetMaxX(v571) + v176;
    v572.origin.x = v169;
    v572.origin.y = v550;
    v572.size.width = v540;
    v572.size.height = v541;
    v168 = CGRectGetMinX(v572) - v176 - v140;
  }

  v573.origin.x = OUTLINED_FUNCTION_18_66();
  v573.size.height = v166;
  MinY = CGRectGetMinY(v573);
  v121 = v532;
  *&v2 = v538;
  v178 = v521;
  v145 = v517;
  (v517)(v532, v538, v521);
  v179 = v533;
  v180 = OUTLINED_FUNCTION_8_112();
  (v145)(v180);
  v181 = v547;
  v182 = MinY;
  v183 = v537;
  v550 = specialized CGRect.rounded(originRule:sizeRule:toScaleOf:)(v121, v179, *&v547, v165, v182, v537, v537);
  v549.size.width = v185;
  v549.size.height = v184;
  v187 = v186;
  v188 = OUTLINED_FUNCTION_206();
  v189 = v516;
  v516(v188);
  v189(v121, v178);
  v574.origin.x = OUTLINED_FUNCTION_18_66();
  v574.size.height = v166;
  v190 = CGRectGetMinY(v574);
  (v145)(v121, *&v2, v178);
  v191 = OUTLINED_FUNCTION_8_112();
  (v145)(v191);
  v192 = specialized CGRect.rounded(originRule:sizeRule:toScaleOf:)(v121, v179, *&v181, v168, v190, v183, v183);
  v194 = v193;
  v196 = v195;
  v198 = v197;
  v199 = OUTLINED_FUNCTION_206();
  (v189)(v199);
  v189(v121, v178);
  OUTLINED_FUNCTION_13_2();
  v201 = *((*MEMORY[0x1E69E7D40] & v200) + 0x280);
  v202 = v201();
  if ((v202 & 0x1000000000000) != 0)
  {
    OUTLINED_FUNCTION_22_55();
    v205 = v550;
    if (!v203)
    {
      v205 = v192;
    }

    v207 = v549.size.width;
    v206 = v549.size.height;
    if (v203)
    {
      v208 = v187;
    }

    else
    {
      v206 = v194;
      v208 = v196;
    }

    if (!v203)
    {
      v207 = v198;
    }

    v202 = [v204 setFrame_];
  }

  v209 = (v201)(v202);
  v210 = v504;
  if ((v209 & 0x10000000000) != 0)
  {
    OUTLINED_FUNCTION_22_55();
    v213 = v550;
    if (v211)
    {
      v213 = v192;
    }

    v215 = v549.size.width;
    v214 = v549.size.height;
    if (v211)
    {
      v214 = v194;
    }

    if (v211)
    {
      v216 = v196;
    }

    else
    {
      v216 = v187;
    }

    if (v211)
    {
      v215 = v198;
    }

    [v212 setFrame_];
  }

  v217 = objc_opt_self();
  v218 = [v217 currentDevice];
  v219 = [v218 userInterfaceIdiom];

  if (v219)
  {
    v140 = v537;
    v143 = v534;
    v114 = v210;
    goto LABEL_135;
  }

  swift_beginAccess();
  v140 = v537;
  v143 = v534;
  v114 = v210;
  if (static AmbientState.isPresented == 1)
  {
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for shared);
    }

    if (Features.isICUIRedesignEnabled.getter())
    {
      OUTLINED_FUNCTION_15_67();
      OUTLINED_FUNCTION_5_18();
      v121 = (*(v220 + 616))();
      v221 = [v121 view];

      if (v221)
      {
        v542();
        OUTLINED_FUNCTION_9_105();
        if (v25)
        {
          v222 = [v217 currentDevice];
          v223 = [v222 userInterfaceIdiom];

          if (!v223 && static AmbientState.isPresented == 1 && (Features.isICUIRedesignEnabled.getter() & 1) != 0)
          {
            OUTLINED_FUNCTION_15_67();
            OUTLINED_FUNCTION_5_18();
            v225 = v490;
            (*(v224 + 712))();
            v226 = *(v225 + 9);
            OUTLINED_FUNCTION_0_229();
            outlined destroy of UIFontTextStyle(v225, v227);
            v228 = v226 ^ 1;
          }

          else
          {
            v228 = 0;
          }
        }

        else
        {
          v228 = 1;
        }

        [v221 setHidden_];

        goto LABEL_135;
      }

      goto LABEL_430;
    }
  }

LABEL_135:
  while (2)
  {
    while (2)
    {
      v229 = COERCE_DOUBLE(&selRef_isRecordingAllowed);
      v230 = v547;
      v231 = [*&v547 superview];
      if (v231)
      {
        v232 = v231;
        [v231 bounds];
        OUTLINED_FUNCTION_31_41();
      }

      else
      {
        [*&v230 bounds];
        OUTLINED_FUNCTION_31_41();
      }

      v575.origin.x = OUTLINED_FUNCTION_4_154();
      v233 = CGRectGetHeight(v575);
      [*&v230 bounds];
      v576.origin.x = OUTLINED_FUNCTION_4_154();
      v577 = CGRectIntersection(v576, v588);
      v520 = v233 - CGRectGetHeight(v577);
      v234 = *MEMORY[0x1E69E7D40] & **&v230;
      v503 = *(v234 + 0x190);
      *&v504 = v234 + 400;
      v235 = v503();
      v236 = v535;
      if (v235)
      {
        v237 = v235;
        v238 = [v237 superview];
        if (v238)
        {

          v239 = swift_allocObject();
          *(v239 + 16) = xmmword_1BC4BA7F0;
          v240 = [v237 leadingAnchor];
          v241 = [*&v230 leadingAnchor];
          v145 = 0x1E7FE9000;
          v242 = OUTLINED_FUNCTION_24_59();

          *(v239 + 32) = v242;
          v243 = [v237 trailingAnchor];
          v244 = [*&v230 trailingAnchor];
          v245 = OUTLINED_FUNCTION_24_59();

          *(v239 + 40) = v245;
          v246 = [v237 topAnchor];
          v247 = [*&v230 topAnchor];
          v248 = OUTLINED_FUNCTION_24_59();

          *(v239 + 48) = v248;
          v249 = [v237 bottomAnchor];

          v250 = [*&v230 bottomAnchor];
          v2 = COERCE_DOUBLE([v249 constraintEqualToAnchor:v250 constant:v520]);

          *(v239 + 56) = v2;
          specialized Array.append<A>(contentsOf:)(v239);
        }

        else
        {
        }
      }

      v251 = *((*MEMORY[0x1E69E7D40] & **&v230) + 0x3A8);
      v252 = (*MEMORY[0x1E69E7D40] & **&v230) + 936;
      v251();
      v253 = specialized Array.count.getter();

      if (v253)
      {
        v255 = (v251)(v254);
        specialized Array.append<A>(contentsOf:)(v255);
        v256 = [*(*&v230 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraFlipButtonWithText) superview];
        if (v256)
        {

          v257 = (v251)();
        }

        else
        {
          v150 = v230;
          v151 = (v251)();
          v556[0] = MEMORY[0x1E69E7CC0];
          specialized Array.count.getter();
          OUTLINED_FUNCTION_33_44();
          while (v251 != v252)
          {
            if (v230 == 0.0)
            {
              if (v252 >= v121[2])
              {
                goto LABEL_411;
              }

              *&v258 = *(v151 + 8 * v252 + 32);
            }

            else
            {
              v261 = OUTLINED_FUNCTION_206();
              v258 = COERCE_DOUBLE(MEMORY[0x1BFB22010](v261));
            }

            v2 = v258;
            if (__OFADD__(v252, 1))
            {
              goto LABEL_410;
            }

            outlined bridged method (pb) of @objc NSLayoutConstraint.identifier.getter(*&v258);
            if (v259 == 0.0)
            {
              v150 = -2.68156159e154;
            }

            else
            {
              v150 = v259;
            }

            v260._object = 0x80000001BC4F7A70;
            v260._countAndFlagsBits = 0xD000000000000010;
            v145 = String.hasPrefix(_:)(v260);

            if (v145)
            {
            }

            else
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v145 = *(v556[0] + 16);
              OUTLINED_FUNCTION_40_26();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              OUTLINED_FUNCTION_40_26();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v150 = COERCE_DOUBLE(v556);
              specialized ContiguousArray._endMutation()();
            }

            ++v252;
          }

          v257 = v556[0];
          v230 = v547;
          v229 = COERCE_DOUBLE(&selRef_isRecordingAllowed);
        }

        v254 = specialized Array.append<A>(contentsOf:)(v257);
      }

      (v542)(v254);
      OUTLINED_FUNCTION_9_105();
      if (!v25)
      {
        v264 = [*(*&v230 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraBlurButton) setFrame_];
        v265 = (*((*MEMORY[0x1E69E7D40] & **&v230) + 0x280))(v264);
        if (v265)
        {
          v266 = *(*&v230 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cinematicFramingButton);
          v267 = sel_setFrame_;
          v268 = v143;
          v269 = v236;
          v271 = v530;
          v270 = v531;
          goto LABEL_168;
        }

LABEL_367:
        v428 = objc_opt_self();
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v428 deactivateConstraints_];

        v430.super.isa = Array._bridgeToObjectiveC()().super.isa;

        [v428 activateConstraints_];

        v431 = v529;
        goto LABEL_368;
      }

      if (v511())
      {
        v262 = OUTLINED_FUNCTION_11_112();
        *(v262 + 16) = v544;
        *(v262 + 32) = (*((*MEMORY[0x1E69E7D40] & **&v230) + 0x1F0))();
        v263 = (v262 + 40);
      }

      else
      {
        v262 = swift_allocObject();
        *(v262 + 16) = xmmword_1BC4BAC30;
        v263 = (v262 + 32);
      }

      v272 = v515;
      v273 = *(*&v230 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_videoPauseButton);
      *v263 = v273;
      v274 = v273;
      v556[0] = MEMORY[0x1E69E7CC0];
      specialized Array.count.getter();
      OUTLINED_FUNCTION_33_44();
      while (v251 != v252)
      {
        if (v230 == 0.0)
        {
          if (v252 >= v121[2])
          {
            goto LABEL_388;
          }

          *&v275 = *(v262 + 8 * v252 + 32);
        }

        else
        {
          v277 = OUTLINED_FUNCTION_206();
          v275 = COERCE_DOUBLE(MEMORY[0x1BFB22010](v277));
        }

        v2 = v275;
        if (__OFADD__(v252, 1))
        {
          __break(1u);
LABEL_388:
          __break(1u);
LABEL_389:
          __break(1u);
LABEL_390:
          __break(1u);
LABEL_391:
          __break(1u);
LABEL_392:
          __break(1u);
LABEL_393:
          __break(1u);
LABEL_394:
          __break(1u);
LABEL_395:
          __break(1u);
LABEL_396:
          __break(1u);
LABEL_397:
          __break(1u);
LABEL_398:
          __break(1u);
LABEL_399:
          __break(1u);
LABEL_400:
          __break(1u);
LABEL_401:
          __break(1u);
LABEL_402:
          v484 = (v145)();
          if (!v484 || (v485 = v484, v151 = [v484 superview], v485, !v151))
          {
            OUTLINED_FUNCTION_34_40();
            v151 = v490;
            (*(v486 + 712))();
            v487 = *(v151 + 7);
            OUTLINED_FUNCTION_0_229();
            outlined destroy of UIFontTextStyle(v151, v488);
            if (v487 <= 9 && ((1 << v487) & 0x207) != 0)
            {

              LocalParticipantControlsView.layoutStagingButtons(topRightCornerFrame:)(v526, v525, v524, v523);
              v431 = v522;
              v430.super.isa = v529;
LABEL_368:

              return;
            }

LABEL_298:
            v549.size.width = *(*&v2 + **&v230);
            [*&v549.size.width setFrame_];
            v578.origin.x = OUTLINED_FUNCTION_4_154();
            v347 = CGRectGetHeight(v578);
            v579.origin.x = OUTLINED_FUNCTION_4_154();
            v150 = 0.0;
            v348 = v347 + CGRectGetHeight(v579) * -0.94;
            v349 = v535;
            *&v145 = MEMORY[0x1E69E7CC0];
            v350 = -(v348 - v520);
            v351 = v530;
            v352 = v531;
            v121 = *&v547;
            while (2)
            {
              if (*&v550 == *&v150)
              {

                specialized Array.append<A>(contentsOf:)(v145);
                v365 = v547;
                OUTLINED_FUNCTION_13_2();
                v367 = *((*MEMORY[0x1E69E7D40] & v366) + 0x2C8);
                v368 = v501;
                v367();
                v369 = *(v368 + 7);
                OUTLINED_FUNCTION_0_229();
                outlined destroy of UIFontTextStyle(v368, v370);
                if (VideoMessageController.State.rawValue.getter(v369) == 0x7964616572 && v371 == 0xE500000000000000)
                {

                  v375 = v507;
                  v374 = v508;
                }

                else
                {
                  v373 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  v375 = v507;
                  v374 = v508;
                  if ((v373 & 1) == 0)
                  {
                    v376 = *(*&v365 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraBlurButton);
                    [v376 setFrame_];
LABEL_344:
                    v397 = v509;
                    v399 = v499;
                    v398 = v500;
                    v401 = v497;
                    v400 = v498;
                    OUTLINED_FUNCTION_5_18();
                    if (((*(v402 + 640))() & 1) != 0 && [*(*&v365 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_tuFeatures) scEnabled])
                    {
                      [*(*&v365 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cinematicFramingButton) setFrame_];
                      [v376 setFrame_];
                    }

                    v403 = v397;
                    v404 = [v397 setFrame_];
                    v405 = v502;
                    (v367)(v404);
                    v406 = *(v405 + 7);
                    OUTLINED_FUNCTION_0_229();
                    outlined destroy of UIFontTextStyle(v405, v407);
                    if (VideoMessageController.State.rawValue.getter(v406) == 0x7964616572 && v408 == 0xE500000000000000)
                    {
                      goto LABEL_358;
                    }

                    v410 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    v411 = *&v403;
                    if (v410)
                    {
                      goto LABEL_359;
                    }

                    OUTLINED_FUNCTION_38_41();
                    v412 = v495;
                    v367();
                    v413 = *(v412 + 7);
                    OUTLINED_FUNCTION_0_229();
                    outlined destroy of UIFontTextStyle(v412, v414);
                    if (VideoMessageController.State.rawValue.getter(v413) == v403 && v415 == 0xEF676E6964726F63)
                    {
LABEL_358:

                      v411 = *&v403;
                      goto LABEL_359;
                    }

                    v417 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    v411 = *&v403;
                    if ((v417 & 1) == 0)
                    {
                      goto LABEL_367;
                    }

LABEL_359:
                    v418 = swift_allocObject();
                    v419 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSo9UIControlC_Tt1g5(v418, 3);
                    *v420 = v376;
                    *(v420 + 8) = v411;
                    v421 = v549.size.width;
                    *(v420 + 16) = v549.size.width;
                    v150 = v411;
                    *&v2 = v419 & 0xC000000000000001;
                    v145 = v419 & 0xFFFFFFFFFFFFFF8;
                    v422 = v376;
                    v423 = *&v150;
                    v424 = *&v421;
                    v151 = 0;
                    v121 = &selRef_isRecordingAllowed;
                    while (v151 != 3)
                    {
                      if (v2 == 0.0)
                      {
                        if (v151 >= *((v419 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_423;
                        }

                        v425 = *(v419 + 8 * v151 + 32);
                      }

                      else
                      {
                        v425 = MEMORY[0x1BFB22010](v151, v419);
                      }

                      v426 = v425;
                      ++v151;
                      OUTLINED_FUNCTION_15_67();
                      OUTLINED_FUNCTION_5_18();
                      v150 = COERCE_DOUBLE((*(v427 + 496))());
                      [*&v150 center];

                      [v426 center];
                      [v426 setCenter_];
                    }

LABEL_366:

                    goto LABEL_367;
                  }
                }

                v376 = *(*&v365 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraBlurButton);
                [v376 setFrame_];
                goto LABEL_344;
              }

              if (*&v549.size.height)
              {
                OUTLINED_FUNCTION_46_29();
              }

              else
              {
                OUTLINED_FUNCTION_32_35();
                if (v26)
                {
                  goto LABEL_418;
                }

                v353 = *(*&v229 + 8 * *&v150 + 32);
              }

              v354 = v353;
              if (__OFADD__(*&v150, 1))
              {
                goto LABEL_417;
              }

              v355 = OUTLINED_FUNCTION_11_112();
              v356 = [v354 bottomAnchor];
              v357 = [v121 bottomAnchor];
              v358 = [v356 constraintEqualToAnchor:v357 constant:v350];

              *(v355 + 32) = v358;
              v359 = [v354 centerXAnchor];
              v360 = [v121 centerXAnchor];
              v2 = COERCE_DOUBLE([v359 constraintEqualToAnchor_]);

              *(v355 + 40) = v2;
              v151 = v145 >> 62;
              if (v145 >> 62)
              {
                v361 = OUTLINED_FUNCTION_45_32();
              }

              else
              {
                v361 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v229 = v548;
              v362 = v361 + 2;
              if (__OFADD__(v361, 2))
              {
                goto LABEL_419;
              }

              if (swift_isUniquelyReferenced_nonNull_bridgeObject())
              {
                if (!v151)
                {
                  v151 = v145 & 0xFFFFFFFFFFFFFF8;
                  if (v362 > *((v145 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
LABEL_313:
                    *&v145 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)());
                    v151 = v145 & 0xFFFFFFFFFFFFFF8;
                  }

                  OUTLINED_FUNCTION_35_34();
                  if (v335 != v280)
                  {
                    goto LABEL_420;
                  }

                  *&v2 = v355 & 0xFFFFFFFFFFFFFF8;
                  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
                  swift_arrayInitWithCopy();

                  v363 = *(v151 + 16);
                  v280 = __OFADD__(v363, 2);
                  v364 = v363 + 2;
                  if (v280)
                  {
                    goto LABEL_421;
                  }

                  *(v151 + 16) = v364;
                  ++*&v150;
                  continue;
                }
              }

              else if (!v151)
              {
                goto LABEL_313;
              }

              break;
            }

            OUTLINED_FUNCTION_45_32();
            OUTLINED_FUNCTION_33_5();
            goto LABEL_313;
          }

LABEL_297:

          goto LABEL_298;
        }

        v276 = [*&v275 superview];
        if (v276)
        {

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v145 = *(v556[0] + 16);
          OUTLINED_FUNCTION_40_26();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          OUTLINED_FUNCTION_40_26();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v252;
      }

      v229 = *v556;
      v550 = COERCE_DOUBLE(specialized Array.count.getter());
      v150 = 0.0;
      *&v549.size.height = *&v229 & 0xC000000000000001;
      v121 = (*&v229 + 32);
      *&v549.size.width = MEMORY[0x1E69E7CC0];
      v548 = v229;
      *&v541 = *&v229 + 32;
      while (*&v150 != *&v550)
      {
        if (*&v549.size.height)
        {
          OUTLINED_FUNCTION_46_29();
        }

        else
        {
          OUTLINED_FUNCTION_32_35();
          if (v26)
          {
            goto LABEL_390;
          }

          v278 = v121[*&v150];
        }

        v279 = v278;
        v280 = __OFADD__(*&v150, 1);
        *&v281 = *&v150 + 1;
        if (v280)
        {
          goto LABEL_389;
        }

        v282 = [v278 constraints];
        v230 = COERCE_DOUBLE(type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8));
        *&v145 = COERCE_DOUBLE(static Array._unconditionallyBridgeFromObjectiveC(_:)());

        v549.origin.y = v281;
        if (v145 >> 62)
        {
          v283 = OUTLINED_FUNCTION_45_32();
        }

        else
        {
          v283 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v2 = v549.size.width;
        v284 = *&v549.size.width >> 62;
        if (*&v549.size.width >> 62)
        {
          v285 = __CocoaSet.count.getter();
        }

        else
        {
          v285 = *((*&v549.size.width & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *&v549.origin.x = v283;
        v280 = __OFADD__(v285, v283);
        v286 = v285 + v283;
        if (v280)
        {
          goto LABEL_391;
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (v284)
          {
LABEL_197:
            __CocoaSet.count.getter();
            OUTLINED_FUNCTION_33_5();
          }

LABEL_198:
          v2 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)());
          v287 = *&v2 & 0xFFFFFFFFFFFFFF8;
          goto LABEL_199;
        }

        if (v284)
        {
          goto LABEL_197;
        }

        v287 = *&v2 & 0xFFFFFFFFFFFFFF8;
        if (v286 > *((*&v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_198;
        }

LABEL_199:
        v549.size.width = v2;
        v288 = *(v287 + 16);
        v289 = (*(v287 + 24) >> 1) - v288;
        *&v150 = v287 + 8 * v288;
        v545 = *&v287;
        if (v145 >> 62)
        {
          if ((v145 & 0x8000000000000000) != 0)
          {
            v151 = v145;
          }

          else
          {
            v151 = v145 & 0xFFFFFFFFFFFFFF8;
          }

          *&v290 = COERCE_DOUBLE(__CocoaSet.count.getter());
          if (*&v290 == 0.0)
          {
            goto LABEL_216;
          }

          v230 = *&v290;
          *&v291 = COERCE_DOUBLE(__CocoaSet.count.getter());
          if (v289 < v291)
          {
            goto LABEL_415;
          }

          if (*&v230 < 1)
          {
            goto LABEL_416;
          }

          v540 = *&v291;
          v292 = *&v150 + 32;
          lazy protocol witness table accessor for type [NSLayoutConstraint] and conformance [A]();
          v293 = 0;
          v2 = *&v145;
          do
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18NSLayoutConstraintCGMd, &_sSaySo18NSLayoutConstraintCGMR);
            v294 = specialized protocol witness for Collection.subscript.read in conformance [A](v556, v293, v145);
            v296 = *v295;
            v297 = OUTLINED_FUNCTION_39_27();
            v294(v297);
            *(v292 + 8 * v293++) = v121;
          }

          while (*&v230 != v293);
          v229 = v548;
          v151 = *&v540;
          v121 = *&v541;
LABEL_212:

          v150 = v549.origin.y;
          if (v151 < *&v549.origin.x)
          {
            goto LABEL_392;
          }

          if (v151 > 0)
          {
            v298 = *(*&v545 + 16);
            v280 = __OFADD__(v298, v151);
            v299 = v298 + v151;
            if (v280)
            {
              goto LABEL_412;
            }

            *(*&v545 + 16) = v299;
          }
        }

        else
        {
          v151 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v151)
          {
            if (v289 < v151)
            {
              goto LABEL_414;
            }

            swift_arrayInitWithCopy();
            goto LABEL_212;
          }

LABEL_216:

          v150 = v549.origin.y;
          if (*&v549.origin.x > 0)
          {
            goto LABEL_392;
          }
        }
      }

      specialized Array.append<A>(contentsOf:)(*&v549.size.width);
      v150 = 0.0;
      v230 = MEMORY[0x1E69E7CC0];
      while (*&v150 != *&v550)
      {
        if (*&v549.size.height)
        {
          OUTLINED_FUNCTION_46_29();
        }

        else
        {
          OUTLINED_FUNCTION_32_35();
          if (v26)
          {
            goto LABEL_394;
          }

          v300 = v121[*&v150];
        }

        v301 = v300;
        v280 = __OFADD__(*&v150, 1);
        *&v302 = *&v150 + 1;
        if (v280)
        {
          goto LABEL_393;
        }

        v303 = [v300 constraints];
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
        *&v145 = COERCE_DOUBLE(static Array._unconditionallyBridgeFromObjectiveC(_:)());

        v549.size.width = v302;
        if (v145 >> 62)
        {
          v304 = OUTLINED_FUNCTION_45_32();
        }

        else
        {
          v304 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v305 = *&v230 >> 62;
        if (*&v230 >> 62)
        {
          OUTLINED_FUNCTION_41_31(*&v230 & 0xFFFFFFFFFFFFFF8);
          v322 = v321;
          v306 = __CocoaSet.count.getter();
          v304 = v322;
        }

        else
        {
          v306 = *((*&v230 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *&v2 = v306 + v304;
        if (__OFADD__(v306, v304))
        {
          goto LABEL_395;
        }

        *&v549.origin.y = v304;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (v305)
          {
LABEL_238:
            OUTLINED_FUNCTION_41_31(*&v230 & 0xFFFFFFFFFFFFFF8);
            __CocoaSet.count.getter();
            OUTLINED_FUNCTION_33_5();
          }

LABEL_239:
          *&v549.origin.x = OUTLINED_FUNCTION_43_32();
          v307 = *&v549.origin.x & 0xFFFFFFFFFFFFFF8;
          goto LABEL_240;
        }

        if (v305)
        {
          goto LABEL_238;
        }

        v307 = *&v230 & 0xFFFFFFFFFFFFFF8;
        if (*&v2 > *((*&v230 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_239;
        }

        v549.origin.x = v230;
LABEL_240:
        v308 = *(v307 + 16);
        v309 = (*(v307 + 24) >> 1) - v308;
        *&v150 = v307 + 8 * v308;
        v545 = *&v307;
        if (v145 >> 62)
        {
          if ((v145 & 0x8000000000000000) != 0)
          {
            v151 = v145;
          }

          else
          {
            v151 = v145 & 0xFFFFFFFFFFFFFF8;
          }

          v310 = __CocoaSet.count.getter();
          if (!v310)
          {
            goto LABEL_257;
          }

          v311 = v310;
          *&v312 = COERCE_DOUBLE(__CocoaSet.count.getter());
          if (v309 < v312)
          {
LABEL_407:
            __break(1u);
LABEL_408:
            __break(1u);
LABEL_409:
            __break(1u);
LABEL_410:
            __break(1u);
LABEL_411:
            __break(1u);
LABEL_412:
            __break(1u);
LABEL_413:
            __break(1u);
LABEL_414:
            __break(1u);
LABEL_415:
            __break(1u);
LABEL_416:
            __break(1u);
LABEL_417:
            __break(1u);
LABEL_418:
            __break(1u);
LABEL_419:
            __break(1u);
LABEL_420:
            __break(1u);
LABEL_421:
            __break(1u);
LABEL_422:
            __break(1u);
LABEL_423:
            __break(1u);
            goto LABEL_424;
          }

          if (v311 < 1)
          {
            goto LABEL_422;
          }

          v540 = *&v312;
          v313 = *&v150 + 32;
          lazy protocol witness table accessor for type [NSLayoutConstraint] and conformance [A]();
          v314 = 0;
          v2 = *&v145;
          do
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18NSLayoutConstraintCGMd, &_sSaySo18NSLayoutConstraintCGMR);
            v315 = specialized protocol witness for Collection.subscript.read in conformance [A](v556, v314, v145);
            v317 = *v316;
            v318 = OUTLINED_FUNCTION_39_27();
            v315(v318);
            *(v313 + 8 * v314++) = v121;
          }

          while (v311 != v314);
          v229 = v548;
          v151 = *&v540;
          v121 = *&v541;
LABEL_253:

          v230 = v549.origin.x;
          v150 = v549.size.width;
          if (v151 < *&v549.origin.y)
          {
            goto LABEL_396;
          }

          if (v151 > 0)
          {
            v319 = *(*&v545 + 16);
            v280 = __OFADD__(v319, v151);
            v320 = v319 + v151;
            if (v280)
            {
              goto LABEL_413;
            }

            *(*&v545 + 16) = v320;
          }
        }

        else
        {
          v151 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v151)
          {
            if (v309 < v151)
            {
              goto LABEL_407;
            }

            swift_arrayInitWithCopy();
            goto LABEL_253;
          }

LABEL_257:

          v230 = v549.origin.x;
          v150 = v549.size.width;
          if (*&v549.origin.y > 0)
          {
            goto LABEL_396;
          }
        }
      }

      specialized Array.append<A>(contentsOf:)(*&v230);
      v323 = 0;
      v230 = MEMORY[0x1E69E7CC0];
      *&v145 = COERCE_DOUBLE(0x1E696ACD8uLL);
      while (*&v550 != v323)
      {
        if (*&v549.size.height)
        {
          OUTLINED_FUNCTION_46_29();
        }

        else
        {
          OUTLINED_FUNCTION_32_35();
          if (v26)
          {
            goto LABEL_398;
          }

          v324 = *(*&v229 + 8 * v323 + 32);
        }

        v2 = *&v324;
        if (__OFADD__(v323, 1))
        {
          goto LABEL_397;
        }

        v325 = OUTLINED_FUNCTION_11_112();
        v326 = [*&v2 widthAnchor];
        v327 = [v326 constraintEqualToConstant_];

        v325[2].n128_u64[0] = v327;
        v328 = [*&v2 heightAnchor];
        v329 = [*&v2 widthAnchor];
        v330 = [v328 constraintEqualToAnchor_];

        v325[2].n128_u64[1] = v330;
        v331 = *&v230 >> 62;
        if (*&v230 >> 62)
        {
          OUTLINED_FUNCTION_41_31(*&v230 & 0xFFFFFFFFFFFFFF8);
          v332 = __CocoaSet.count.getter();
        }

        else
        {
          v332 = *((*&v230 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *&v2 = v332 + 2;
        v229 = v548;
        if (__OFADD__(v332, 2))
        {
          goto LABEL_399;
        }

        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (!v331)
          {
            v333 = *&v230 & 0xFFFFFFFFFFFFFF8;
            if (*&v2 <= *((*&v230 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_278;
            }

            goto LABEL_277;
          }

LABEL_276:
          OUTLINED_FUNCTION_41_31(*&v230 & 0xFFFFFFFFFFFFFF8);
          __CocoaSet.count.getter();
          OUTLINED_FUNCTION_33_5();
          goto LABEL_277;
        }

        if (v331)
        {
          goto LABEL_276;
        }

LABEL_277:
        v230 = COERCE_DOUBLE(OUTLINED_FUNCTION_43_32());
        v333 = *&v230 & 0xFFFFFFFFFFFFFF8;
LABEL_278:
        OUTLINED_FUNCTION_35_34();
        if (v335 != v280)
        {
          goto LABEL_400;
        }

        *&v2 = v333 + 8 * v334;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
        swift_arrayInitWithCopy();

        v336 = *(v333 + 16);
        v280 = __OFADD__(v336, 2);
        v337 = v336 + 2;
        if (v280)
        {
          goto LABEL_401;
        }

        *(v333 + 16) = v337;
        ++v323;
      }

      specialized Array.append<A>(contentsOf:)(*&v230);
      if (static Platform.current.getter() != 1)
      {
        swift_beginAccess();
        v230 = COERCE_DOUBLE(&OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_effectsButton);
        v2 = v547;
        v151 = v521;
        v145 = v503;
        if (static AmbientState.isPresented == 1)
        {
          if (one-time initialization token for shared != -1)
          {
            goto LABEL_428;
          }

          goto LABEL_288;
        }

LABEL_289:
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0(&one-time initialization token for shared);
        }

        if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
        {
          goto LABEL_298;
        }

        OUTLINED_FUNCTION_23_59();
        v344();
        OUTLINED_FUNCTION_9_105();
        if (!v25)
        {
          goto LABEL_298;
        }

        v345 = [objc_opt_self() currentDevice];
        v151 = [v345 userInterfaceIdiom];

        if (v151)
        {
          goto LABEL_298;
        }

        v346 = (v145)();
        if (!v346)
        {
          goto LABEL_402;
        }

        v151 = v346;
        goto LABEL_297;
      }

      v151 = *&v547;
      v338 = LocalParticipantControlsView.generateIPadSupportedButtons()();
      [v151 bounds];
      if (v536)
      {
        v343 = v528 + CGRectGetMinX(*&v339);
      }

      else
      {
        v343 = CGRectGetMaxX(*&v339) - v528 - v140;
      }

      [v151 bounds];
      MaxY = CGRectGetMaxY(v580);
      v378 = specialized Array.count.getter();
      if (v378)
      {
        v379 = v378;
        if (v378 >= 1)
        {
          v380 = 0;
          v381 = MaxY - v527 - v140;
          v145 = v338 & 0xC000000000000001;
          OUTLINED_FUNCTION_22_55();
          if (v25)
          {
            v384 = v383;
          }

          else
          {
            v384 = v382;
          }

          do
          {
            if (*&v145 == 0.0)
            {
              v385 = *(v338 + 8 * v380 + 32);
            }

            else
            {
              v385 = MEMORY[0x1BFB22010](v380, v338);
            }

            ++v380;
            v386 = v385;
            v2 = COERCE_DOUBLE([*&v547 traitCollection]);
            [*&v2 displayScale];
            v388 = v387;

            v389 = ceil(v140 * v388) / v388;
            [v386 setFrame_];

            v343 = v384 + v343;
          }

          while (v379 != v380);
          goto LABEL_335;
        }

        __break(1u);
LABEL_428:
        OUTLINED_FUNCTION_0(&one-time initialization token for shared);
LABEL_288:
        if (Features.isICUIRedesignEnabled.getter())
        {
          goto LABEL_289;
        }

        TUDeviceHasHomeButton();
        [*&v2 bounds];
        CGRectGetWidth(v581);
        [*&v2 bounds];
        CGRectGetHeight(v582);
        v432 = v532;
        v433 = v538;
        v434 = v517;
        (v517)(v532, v538, v151);
        v435 = OUTLINED_FUNCTION_8_112();
        v434(v435);
        OUTLINED_FUNCTION_29_43();
        v550 = specialized CGRect.rounded(originRule:sizeRule:toScaleOf:)(v436, v437, v438, v439, v440, v441, v442);
        v549.size.height = v443;
        v445 = v444;
        v447 = v446;
        v448 = OUTLINED_FUNCTION_206();
        v449 = v516;
        v516(v448);
        v449(v432, v151);
        [*&v2 bounds];
        CGRectGetHeight(v583);
        (v434)(v432, v433, v151);
        v450 = OUTLINED_FUNCTION_8_112();
        v434(v450);
        OUTLINED_FUNCTION_29_43();
        v458 = specialized CGRect.rounded(originRule:sizeRule:toScaleOf:)(v451, v452, v453, v454, v455, v456, v457);
        v460 = v459;
        v462 = v461;
        v464 = v463;
        v465 = OUTLINED_FUNCTION_206();
        (v449)(v465);
        v449(v432, v151);
        OUTLINED_FUNCTION_22_55();
        v467 = v550;
        if (!v466)
        {
          v467 = v458;
        }

        v468 = v549.size.height;
        if (v466)
        {
          v469 = v445;
        }

        else
        {
          v468 = v460;
          v469 = v462;
        }

        if (v466)
        {
          v470 = v447;
        }

        else
        {
          v470 = v464;
        }

        v471 = v509;
        [v509 setFrame_];
        v472 = *(*&v2 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraBlurButton);
        [v471 frame];
        CGRectGetMinX(v584);
        [v471 frame];
        CGRectGetMinY(v585);
        OUTLINED_FUNCTION_29_43();
        [v473 v474];
        [v472 frame];
        CGRectGetMinX(v586);
        [v472 frame];
        CGRectGetMinY(v587);
        OUTLINED_FUNCTION_29_43();
LABEL_168:
        [v266 v267];
        goto LABEL_367;
      }

LABEL_335:

      OUTLINED_FUNCTION_15_67();
      OUTLINED_FUNCTION_5_18();
      v391 = v505;
      (*(v390 + 712))();
      v392 = *(v391 + 7);
      OUTLINED_FUNCTION_0_229();
      outlined destroy of UIFontTextStyle(v391, v393);
      v394 = VideoMessageController.State.rawValue.getter(v392);
      v150 = v395;
      if (v394 == 0x7964616552746F6ELL && *&v395 == 0xE800000000000000)
      {

        goto LABEL_366;
      }

      v151 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v151)
      {

        goto LABEL_367;
      }

      v475 = 0;
      v551[0] = MEMORY[0x1E69E7CC0];
      v476 = v520 * 0.5;
      v121 = *&v547;
      while (1)
      {
        if (*&v550 == v475)
        {

          specialized Array.append<A>(contentsOf:)(v551[0]);
          goto LABEL_367;
        }

        if (*&v549.size.height)
        {
          v477 = COERCE_DOUBLE(MEMORY[0x1BFB22010](v475, *&v229));
        }

        else
        {
          if (v475 >= *(*&v229 + 16))
          {
            goto LABEL_425;
          }

          *&v477 = *(*&v229 + 8 * v475 + 32);
        }

        v150 = v477;
        if (__OFADD__(v475, 1))
        {
          break;
        }

        v478 = OUTLINED_FUNCTION_11_112();
        v479 = [*&v150 trailingAnchor];
        v480 = [v121 trailingAnchor];
        Layout.LocalParticipantViewCameraControls.init()(v556);
        v481 = *&v556[7];
        v482 = [objc_opt_self() currentDevice];
        [v482 userInterfaceIdiom];

        v483 = [v479 constraintEqualToAnchor:v480 constant:-v481];
        v478[2].n128_u64[0] = v483;
        v151 = [*&v150 centerYAnchor];
        v2 = COERCE_DOUBLE([v121 centerYAnchor]);
        v229 = v548;
        *&v145 = COERCE_DOUBLE([v151 constraintEqualToAnchor:*&v2 constant:v476]);

        v478[2].n128_f64[1] = *&v145;
        v150 = COERCE_DOUBLE(v551);
        specialized Array.append<A>(contentsOf:)(v478);
        ++v475;
      }

LABEL_424:
      __break(1u);
LABEL_425:
      __break(1u);
LABEL_426:
      OUTLINED_FUNCTION_0(&one-time initialization token for shared);
LABEL_76:
      v150 = *(*&v150 + 3056);
      if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
      {
        continue;
      }

      break;
    }

    OUTLINED_FUNCTION_15_67();
    OUTLINED_FUNCTION_5_18();
    v153 = (*(v152 + 616))();
    v154 = [v153 *(v151 + 3792)];

    if (v154)
    {
      v542();
      OUTLINED_FUNCTION_9_105();
      if (v25)
      {
        v155 = 0;
      }

      else
      {
        v155 = 1;
      }

      [v154 setHidden_];

      v151 = LocalParticipantControlsView.generateIPadSupportedButtons()();
      v156 = specialized Array.count.getter();
      v157 = 0;
      v121 = (v151 & 0xC000000000000001);
      while (v156 != v157)
      {
        if (v121)
        {
          v160 = OUTLINED_FUNCTION_206();
          v158 = COERCE_DOUBLE(MEMORY[0x1BFB22010](v160));
        }

        else
        {
          if (v157 >= *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_409;
          }

          *&v158 = *(v151 + 8 * v157 + 32);
        }

        v2 = v158;
        if (__OFADD__(v157, 1))
        {
          goto LABEL_408;
        }

        v150 = v547;
        v542();
        OUTLINED_FUNCTION_9_105();
        if (v25)
        {
          v159 = 1;
        }

        else
        {
          v159 = 0;
        }

        [*&v2 setHidden_];

        ++v157;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_430:
  __break(1u);
}

uint64_t LocalParticipantControlsView.generateIPadSupportedButtons()()
{
  v1 = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x280);
  if ((v2() & 0x1000000) != 0)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraFlipButton);
    MEMORY[0x1BFB20CC0]();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v1 = v10;
  }

  if (v2())
  {
    v4 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cinematicFramingButton);
    MEMORY[0x1BFB20CC0]();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v1 = v10;
  }

  if ((v2() & 0x100) != 0)
  {
    v5 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraBlurButton);
    MEMORY[0x1BFB20CC0]();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v1 = v10;
  }

  if ((v2() & 0x10000) != 0)
  {
    v6 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_effectsButton);
    MEMORY[0x1BFB20CC0]();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v1 = v10;
  }

  if ((v2() & 0x1000000000000) != 0)
  {
    v7 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_studioLightButton);
    MEMORY[0x1BFB20CC0]();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v1 = v10;
  }

  if ((v2() & 0x10000000000) != 0)
  {
    v8 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_reactionEffectGestureButton);
    MEMORY[0x1BFB20CC0]();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return v10;
  }

  return v1;
}

void LocalParticipantControlsView.layoutStagingButtons(topRightCornerFrame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v9 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v4 safeAreaInsets];
  v14 = v13;
  v51 = objc_opt_self();
  v15 = [v51 currentDevice];
  v16 = [v15 userInterfaceIdiom];

  v17 = &off_1E7FE9000;
  if (v16)
  {
    goto LABEL_6;
  }

  swift_beginAccess();
  if (static AmbientState.isPresented != 1)
  {
    goto LABEL_6;
  }

  if (one-time initialization token for shared != -1)
  {
LABEL_31:
    swift_once();
  }

  if (Features.isICUIRedesignEnabled.getter())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BC4BC370;
    v19 = *(v5 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraBlurButton);
    v20 = *(v5 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_studioLightButton);
    *(v18 + 32) = v19;
    *(v18 + 40) = v20;
    v21 = *(v5 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_reactionEffectGestureButton);
    v50 = v18;
    *(v18 + 48) = v21;
    v14 = v14 + 20.0;
    v22 = v19;
    v23 = v20;
    v24 = v21;
  }

  else
  {
LABEL_6:
    (*((*MEMORY[0x1E69E7D40] & *v5) + 0x2C8))();
    v25 = *v12;
    outlined destroy of UIFontTextStyle(v12, type metadata accessor for LocalParticipantControlsView.ViewModel);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v26 = swift_allocObject();
    if (v25 == 1)
    {
      v27 = *(v5 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cinematicFramingButton);
      *(v26 + 16) = xmmword_1BC4BA930;
      v28 = *(v5 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraBlurButton);
      *(v26 + 32) = v27;
      *(v26 + 40) = v28;
      v50 = v26;
      v29 = v27;
    }

    else
    {
      *(v26 + 16) = xmmword_1BC4BAC30;
      v28 = *(v5 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraBlurButton);
      v50 = v26;
      *(v26 + 32) = v28;
    }

    v30 = v28;
    [*(v5 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_reactionEffectGestureButton) *(v17 + 3888)];
    [*(v5 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_studioLightButton) *(v17 + 3888)];
  }

  [*(v5 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_effectsButton) *(v17 + 3888)];
  v31 = v50;
  v32 = specialized Array.count.getter();
  v17 = 0;
  v33 = v31 & 0xC000000000000001;
  v34 = v31 & 0xFFFFFFFFFFFFFF8;
  v48 = &v53;
  v49 = &v55;
  while (v32 != v17)
  {
    if (v33)
    {
      v35 = MEMORY[0x1BFB22010](v17, v50);
    }

    else
    {
      if (v17 >= *(v34 + 16))
      {
        goto LABEL_30;
      }

      v35 = *(v50 + 8 * v17 + 32);
    }

    v36 = v35;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v37 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x250);
    v12 = ((*MEMORY[0x1E69E7D40] & *v5) + 592);
    v38 = v37();
    if (v38 == 2)
    {
      v40 = &v52;
      v41 = v48;
    }

    else
    {
      v39 = 0.0;
      if (v38 != 3)
      {
        goto LABEL_21;
      }

      v40 = &v54;
      v41 = v49;
    }

    v42 = Layout.LocalParticipantViewCameraControls.init()(v40);
    v39 = *v41;
    v43 = [v51 currentDevice];
    [v43 userInterfaceIdiom];

LABEL_21:
    v44 = v37();
    if (v44 >= 2)
    {
      if (v44 == 2)
      {
        v45 = Layout.LocalParticipantViewCameraControls.init()(v56);
        v46 = v56[0];
      }

      else
      {
        v45 = Layout.LocalParticipantViewCameraControls.init()(v57);
        v46 = *&v57[7];
      }
    }

    else
    {
      v45 = Layout.LocalParticipantViewCameraControls.init()(v58);
      v46 = *&v58[3];
    }

    v47 = [v51 currentDevice];
    [v47 userInterfaceIdiom];

    [v36 setFrame_];
    ++v17;
  }
}

BOOL LocalParticipantControlsView.styleSupportsCinematicFramingButton.getter()
{
  if (static Platform.current.getter() != 1 && (LocalParticipantControlsView.styleSupportsSC.getter() & 1) == 0)
  {
    return 0;
  }

  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x250);
  return v1() == 3 || v1() == 2;
}

id LocalParticipantControlsView.styleSupportsSC.getter()
{
  if (static Platform.current.getter())
  {
    return 0;
  }

  else
  {
    return [*(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_tuFeatures) scEnabled];
  }
}

BOOL LocalParticipantControlsView.styleSupportsReactionEffectGestureButton.getter()
{
  OUTLINED_FUNCTION_5_18();
  v0 += 74;
  v1 = *v0;
  (*v0)();
  OUTLINED_FUNCTION_9_105();
  if (v3)
  {
    return 1;
  }

  v1();
  OUTLINED_FUNCTION_12_102();
  return v3 != 0;
}

uint64_t LocalParticipantControlsView.shouldShowEffectsButton.getter()
{
  v1 = v0;
  v2 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) != 0 || (v5 = MEMORY[0x1E69E7D40], v6 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x250), v6() == 2) || ((*((*v5 & *v0) + 0x2C8))(), v7 = v4[2], v8 = outlined destroy of UIFontTextStyle(v4, type metadata accessor for LocalParticipantControlsView.ViewModel), v7 != 1) || !(v6)(v8))
  {
    v9 = 0;
  }

  else
  {
    v9 = (*((*v5 & *v1) + 0x390))();
  }

  return v9 & 1;
}

uint64_t LocalParticipantControlsView.shouldShowCameraFlipButton.getter()
{
  v1 = v0;
  v2 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 userInterfaceIdiom];

  v10 = MEMORY[0x1E69E7D40];
  if (!v9)
  {
    swift_beginAccess();
    if (static AmbientState.isPresented == 1)
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if (Features.isICUIRedesignEnabled.getter())
      {
        (*((*v10 & *v1) + 0x2C8))();
        v11 = v7[9];
        outlined destroy of UIFontTextStyle(v7, type metadata accessor for LocalParticipantControlsView.ViewModel);
        if (v11)
        {
          goto LABEL_12;
        }
      }
    }
  }

  (*((*v10 & *v1) + 0x2C8))();
  v12 = v4[3];
  v13 = outlined destroy of UIFontTextStyle(v4, type metadata accessor for LocalParticipantControlsView.ViewModel);
  if (v12 == 1 && (*((*v10 & *v1) + 0x250))(v13) && (((*((*v10 & *v1) + 0x390))() & 1) != 0 || ((*((*v10 & *v1) + 0x398))() & 1) != 0))
  {
    v14 = (*((*v10 & *v1) + 0x3A0))() ^ 1;
  }

  else
  {
LABEL_12:
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t LocalParticipantControlsView.shouldShowCameraBlurButton.getter()
{
  v1 = v0;
  v2 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x250))(v6) == 2)
  {
    goto LABEL_11;
  }

  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (!v11)
  {
    swift_beginAccess();
    if (static AmbientState.isPresented == 1)
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if (Features.isICUIRedesignEnabled.getter())
      {
        (*((*v9 & *v1) + 0x2C8))();
        v12 = v8[9];
        outlined destroy of UIFontTextStyle(v8, type metadata accessor for LocalParticipantControlsView.ViewModel);
        if (v12)
        {
          goto LABEL_11;
        }
      }
    }
  }

  (*((*v9 & *v1) + 0x2C8))();
  v13 = v4[1];
  outlined destroy of UIFontTextStyle(v4, type metadata accessor for LocalParticipantControlsView.ViewModel);
  if (v13 != 1 || !LocalParticipantControlsView.styleSupportsCameraBlurButton.getter())
  {
LABEL_11:
    v14 = 0;
  }

  else
  {
    v14 = (*((*v9 & *v1) + 0x390))();
  }

  return v14 & 1;
}

uint64_t LocalParticipantControlsView.shouldShowCinematicFramingButton.getter()
{
  v1 = v0;
  v2 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x250))(v6) == 2)
  {
    goto LABEL_11;
  }

  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (!v11)
  {
    swift_beginAccess();
    if (static AmbientState.isPresented == 1)
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if (Features.isICUIRedesignEnabled.getter())
      {
        (*((*v9 & *v1) + 0x2C8))();
        v12 = v8[9];
        outlined destroy of UIFontTextStyle(v8, type metadata accessor for LocalParticipantControlsView.ViewModel);
        if (v12)
        {
          goto LABEL_11;
        }
      }
    }
  }

  (*((*v9 & *v1) + 0x2C8))();
  v13 = *v4;
  outlined destroy of UIFontTextStyle(v4, type metadata accessor for LocalParticipantControlsView.ViewModel);
  if (v13 != 1 || !LocalParticipantControlsView.styleSupportsCinematicFramingButton.getter())
  {
LABEL_11:
    v14 = 0;
  }

  else
  {
    v14 = (*((*v9 & *v1) + 0x390))();
  }

  return v14 & 1;
}

uint64_t LocalParticipantControlsView.shouldShowReactionEffectGestureButton.getter()
{
  v1 = v0;
  v2 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x250))(v6) == 2)
  {
    goto LABEL_11;
  }

  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (!v11)
  {
    swift_beginAccess();
    if (static AmbientState.isPresented == 1)
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if (Features.isICUIRedesignEnabled.getter())
      {
        (*((*v9 & *v1) + 0x2C8))();
        v12 = v8[9];
        outlined destroy of UIFontTextStyle(v8, type metadata accessor for LocalParticipantControlsView.ViewModel);
        if (v12)
        {
          goto LABEL_11;
        }
      }
    }
  }

  (*((*v9 & *v1) + 0x2C8))();
  v13 = v4[5];
  outlined destroy of UIFontTextStyle(v4, type metadata accessor for LocalParticipantControlsView.ViewModel);
  if (v13 != 1 || !LocalParticipantControlsView.styleSupportsReactionEffectGestureButton.getter())
  {
LABEL_11:
    v14 = 0;
  }

  else
  {
    v14 = (*((*v9 & *v1) + 0x390))();
  }

  return v14 & 1;
}

uint64_t LocalParticipantControlsView.shouldShowStudioLightButton.getter()
{
  v1 = v0;
  v2 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x250))(v6) == 2)
  {
    goto LABEL_11;
  }

  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (!v11)
  {
    swift_beginAccess();
    if (static AmbientState.isPresented == 1)
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if (Features.isICUIRedesignEnabled.getter())
      {
        (*((*v9 & *v1) + 0x2C8))();
        v12 = v8[9];
        outlined destroy of UIFontTextStyle(v8, type metadata accessor for LocalParticipantControlsView.ViewModel);
        if (v12)
        {
          goto LABEL_11;
        }
      }
    }
  }

  (*((*v9 & *v1) + 0x2C8))();
  v13 = v4[6];
  outlined destroy of UIFontTextStyle(v4, type metadata accessor for LocalParticipantControlsView.ViewModel);
  if (v13 != 1 || !LocalParticipantControlsView.styleSupportsReactionEffectGestureButton.getter())
  {
LABEL_11:
    v14 = 0;
  }

  else
  {
    v14 = (*((*v9 & *v1) + 0x390))();
  }

  return v14 & 1;
}

uint64_t LocalParticipantControlsView.buttonVisibilityMapping()()
{
  v1 = LocalParticipantControlsView.shouldShowEffectsButton.getter();
  v2 = LocalParticipantControlsView.shouldShowCameraFlipButton.getter();
  v3 = LocalParticipantControlsView.shouldShowCameraBlurButton.getter();
  v26 = LocalParticipantControlsView.shouldShowCinematicFramingButton.getter();
  v27 = LocalParticipantControlsView.shouldShowReactionEffectGestureButton.getter();
  v28 = LocalParticipantControlsView.shouldShowStudioLightButton.getter();
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x250))() != 2;
  v6 = (*((*v4 & *v0) + 0x398))();
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo9UIControlC_SbtGMd, &_ss23_ContiguousArrayStorageCySo9UIControlC_SbtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4D4E70;
  v10 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_effectsButton);
  *(inited + 32) = v10;
  *(inited + 40) = v1 & 1;
  v11 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraFlipButton);
  *(inited + 48) = v11;
  *(inited + 56) = v2 & v5;
  v12 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraFlipButtonWithText);
  *(inited + 64) = v12;
  if ((v2 & v5) == 1)
  {
    v13 = v6 & (v8 != 0);
  }

  else
  {
    v13 = v2;
  }

  *(inited + 72) = v13 & 1;
  v14 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraBlurButton);
  *(inited + 80) = v14;
  *(inited + 88) = v3 & 1;
  v15 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cinematicFramingButton);
  *(inited + 96) = v15;
  *(inited + 104) = v26 & 1;
  v16 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_reactionEffectGestureButton);
  *(inited + 112) = v16;
  *(inited + 120) = v27 & 1;
  v17 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_studioLightButton);
  *(inited + 128) = v17;
  *(inited + 136) = v28 & 1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIControl, 0x1E69DC8F0);
  lazy protocol witness table accessor for type UIControl and conformance NSObject();
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v24 = v17;
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t LocalParticipantControlsView.updateControlsAlphaCommon(animated:)(char a1)
{
  v3 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_collapseButton);
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x250);
  v10 = v9(v4);
  v11 = 0.0;
  if (v10 == 2)
  {
    v11 = 1.0;
  }

  [v7 setAlpha_];
  v12 = LocalParticipantControlsView.buttonVisibilityMapping()();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  if (a1)
  {
    v15 = objc_opt_self();
    aBlock[4] = partial apply for closure #1 in LocalParticipantControlsView.updateControlsAlphaCommon(animated:);
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_127;
    v16 = _Block_copy(aBlock);

    [v15 animateWithDuration:v16 animations:0.25];
    _Block_release(v16);
  }

  else
  {

    closure #1 in LocalParticipantControlsView.updateControlsAlphaCommon(animated:)(v13, v12);
  }

  v18 = *(v1 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_videoPauseButton);
  (*((*v8 & *v1) + 0x2C8))(v17);
  v19 = v6[7];
  outlined destroy of UIFontTextStyle(v6, type metadata accessor for LocalParticipantControlsView.ViewModel);
  if (VideoMessageController.State.rawValue.getter(v19) == 0x676E696D726177 && v20 == 0xE700000000000000)
  {

    v24 = 1.0;
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v24 = 1.0;
    if ((v22 & 1) == 0)
    {
      v25 = (v9)(v23, 1.0);
      v24 = 1.0;
      if (v25 == 3)
      {
        v24 = 0.0;
      }
    }
  }

  [v18 setAlpha_];
}

void closure #1 in LocalParticipantControlsView.updateControlsAlphaCommon(animated:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 64);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    while (v7)
    {
      v10 = v9;
LABEL_10:
      v11 = __clz(__rbit64(v7)) | (v10 << 6);
      v7 &= v7 - 1;
      v12 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x438);
      v13 = *(*(a2 + 48) + 8 * v11);
      v12();
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

      v7 = *(a2 + 64 + 8 * v10);
      ++v9;
      if (v7)
      {
        v9 = v10;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

Swift::Void __swiftcall LocalParticipantControlsView.updateControlsAlpha(animated:)(Swift::Bool animated)
{
  v2 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_69_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  LocalParticipantControlsView.updateControlsAlphaCommon(animated:)(0);
  OUTLINED_FUNCTION_13_2();
  v12 = *((*MEMORY[0x1E69E7D40] & v11) + 0x2C8);
  v12();
  v13 = v10[7];
  OUTLINED_FUNCTION_0_229();
  outlined destroy of UIFontTextStyle(v10, v14);
  v16 = VideoMessageController.State.rawValue.getter(v13) == 0x6552657669746361 && v15 == 0xEF676E6964726F63;
  if (!v16)
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_13;
    }

    (v12)(v18);
    v19 = *(v1 + 7);
    OUTLINED_FUNCTION_0_229();
    outlined destroy of UIFontTextStyle(v1, v20);
    if (VideoMessageController.State.rawValue.getter(v19) != 0x7964616572 || v21 != 0xE500000000000000)
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v24 = 0;
      if ((v23 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_65();
  (*(v25 + 592))();
  OUTLINED_FUNCTION_9_105();
  v24 = v16;
LABEL_16:
  OUTLINED_FUNCTION_65();
  if (((*(v26 + 472))() & 1) != 0 || v24)
  {
    OUTLINED_FUNCTION_65();
    v28 = (*(v27 + 496))();
    v29 = v28;
    v30 = 0.0;
    if (v24)
    {
      v30 = 1.0;
    }

    [v28 setAlpha_];
  }

  OUTLINED_FUNCTION_65();
  v32 = (*(v31 + 352))();
  if (v32)
  {
    v33 = v32;
    v34 = [v32 view];

    if (v34)
    {
      v12();
      v35 = *(v6 + 7);
      OUTLINED_FUNCTION_0_229();
      outlined destroy of UIFontTextStyle(v6, v36);
      if (VideoMessageController.State.rawValue.getter(v35) == 0xD000000000000014 && 0x80000001BC4F1C50 == v37)
      {

        v40 = 0.0;
      }

      else
      {
        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v40 = 1.0;
        if (v39)
        {
          v40 = 0.0;
        }
      }

      [v34 setAlpha_];
    }

    else
    {
      __break(1u);
    }
  }
}

void closure #3 in LocalParticipantControlsView.changed(_:from:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x220))();
    v6 = v5;

    if (v4)
    {
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(1, ObjectType, v6);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t outlined bridged method (pb) of @objc NSLayoutConstraint.identifier.getter(void *a1)
{
  v1 = [a1 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined destroy of UIFontTextStyle(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type UIControl and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UIControl and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UIControl and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIControl, 0x1E69DC8F0);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIControl and conformance NSObject);
  }

  return result;
}

ConversationKit::ButtonVisibilityManager __swiftcall ButtonVisibilityManager.init(shouldShowEffectsButton:shouldShowCameraFlipButton:shouldShowCameraBlurButton:shouldShowCinematicFramingButton:shouldShowReactionEffectGestureButton:shouldShowStudioLightButton:styleSupportsButtonShelf:shouldShowOnlyCameraFlipPreRecording:isIPhone:)(Swift::Bool shouldShowEffectsButton, Swift::Bool shouldShowCameraFlipButton, Swift::Bool shouldShowCameraBlurButton, Swift::Bool shouldShowCinematicFramingButton, Swift::Bool shouldShowReactionEffectGestureButton, Swift::Bool shouldShowStudioLightButton, Swift::Bool styleSupportsButtonShelf, Swift::Bool shouldShowOnlyCameraFlipPreRecording, Swift::Bool isIPhone)
{
  v9 = 256;
  if (!shouldShowCameraFlipButton)
  {
    v9 = 0;
  }

  v10 = v9 & 0xFFFFFFFFFFFFFFFELL | shouldShowEffectsButton;
  v11 = 0x10000;
  if (!shouldShowCameraBlurButton)
  {
    v11 = 0;
  }

  v12 = 0x1000000;
  if (!shouldShowCinematicFramingButton)
  {
    v12 = 0;
  }

  v13 = v10 | v11 | v12;
  v14 = 0x100000000;
  if (!shouldShowReactionEffectGestureButton)
  {
    v14 = 0;
  }

  v15 = 0x10000000000;
  if (!shouldShowStudioLightButton)
  {
    v15 = 0;
  }

  v16 = 0x1000000000000;
  if (!styleSupportsButtonShelf)
  {
    v16 = 0;
  }

  v17 = v14 | v15;
  v18 = 0x100000000000000;
  if (!shouldShowOnlyCameraFlipPreRecording)
  {
    v18 = 0;
  }

  v19 = v13 | v17 | v16 | v18;
  v20 = isIPhone;
  result.shouldShowEffectsButton = v19;
  result.shouldShowCameraFlipButton = BYTE1(v19);
  result.shouldShowCameraBlurButton = BYTE2(v19);
  result.shouldShowCinematicFramingButton = BYTE3(v19);
  result.shouldShowReactionEffectGestureButton = BYTE4(v19);
  result.shouldShowStudioLightButton = BYTE5(v19);
  result.styleSupportsButtonShelf = BYTE6(v19);
  result.shouldShowOnlyCameraFlipPreRecording = HIBYTE(v19);
  result.isIPhone = v20;
  return result;
}

Swift::Bool __swiftcall ButtonVisibilityManager.shouldShowButton(_:)(ConversationKit::ButtonVisibilityManager::ButtonType a1)
{
  switch(a1)
  {
    case ConversationKit_ButtonVisibilityManager_ButtonType_cameraFlip:
      LOBYTE(v1) = (v1 & 0x1000000000100) == 256;
      break;
    case ConversationKit_ButtonVisibilityManager_ButtonType_cameraFlipWithText:
      if ((v1 & 0x1000000000100) == 0x100)
      {
        LOBYTE(v1) = HIBYTE(v1) & 1 & (v2 ^ 1);
      }

      else
      {
        LOBYTE(v1) = BYTE1(v1) & 1;
      }

      break;
    case ConversationKit_ButtonVisibilityManager_ButtonType_cameraBlur:
      v1 = (v1 >> 16) & 1;
      break;
    case ConversationKit_ButtonVisibilityManager_ButtonType_cinematicFraming:
      v1 = (v1 >> 24) & 1;
      break;
    case ConversationKit_ButtonVisibilityManager_ButtonType_reactionEffectGesture:
      v1 = HIDWORD(v1) & 1;
      break;
    case ConversationKit_ButtonVisibilityManager_ButtonType_studioLight:
      v1 = (v1 >> 40) & 1;
      break;
    default:
      return v1 & 1;
  }

  return v1 & 1;
}

Swift::Int ButtonVisibilityManager.ButtonType.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ButtonVisibilityManager.ButtonType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  ButtonVisibilityManager.ButtonType.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ButtonVisibilityManager.ButtonType and conformance ButtonVisibilityManager.ButtonType()
{
  result = lazy protocol witness table cache variable for type ButtonVisibilityManager.ButtonType and conformance ButtonVisibilityManager.ButtonType;
  if (!lazy protocol witness table cache variable for type ButtonVisibilityManager.ButtonType and conformance ButtonVisibilityManager.ButtonType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonVisibilityManager.ButtonType and conformance ButtonVisibilityManager.ButtonType);
  }

  return result;
}

uint64_t __swift_memcpy9_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ButtonVisibilityManager(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[9])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ButtonVisibilityManager(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ButtonVisibilityManager.ButtonType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

void onNextMainRunLoop(do:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() mainRunLoop];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13NSRunLoopModeaGMd, "h:\b");
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BC4BA940;
  v6 = *MEMORY[0x1E695DA28];
  *(v5 + 32) = *MEMORY[0x1E695DA28];
  type metadata accessor for NSRunLoopMode(0);
  v7 = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10[4] = a1;
  v10[5] = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed () -> ();
  v10[3] = &block_descriptor_128;
  v9 = _Block_copy(v10);

  [v4 performInModes:isa block:v9];
  _Block_release(v9);
}

void *ConversationHUDViewController.__allocating_init(recipe:presentationSize:controlsManager:context:sidebarStateStream:shutterButtonDodging:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a3;
  OUTLINED_FUNCTION_0_91();
  v12 = objc_allocWithZone(v6);
  OUTLINED_FUNCTION_3_109();
  return ConversationHUDViewController.init(recipe:presentationSize:controlsManager:context:sidebarStateStream:shutterButtonDodging:)(v13, a2, v10, a4, a5, a6);
}

id ConversationHUDViewController.presentShareCardViewController(_:)(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_shareCardViewController);
  *(v1 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_shareCardViewController) = a1;
  v3 = a1;

  v4 = &v3[OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_delegate];
  OUTLINED_FUNCTION_3_5(&v3[OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_delegate], v9);
  *(v4 + 1) = &protocol witness table for ConversationHUDViewController;
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_13_2();
  (*((*MEMORY[0x1E69E7D40] & v5) + 0x4C0))();
  v6 = OUTLINED_FUNCTION_101_6();
  return [v6 v7];
}

Swift::Void __swiftcall ConversationHUDViewController.presentMoreMenuViewController(_:)(UIViewController *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_moreMenuViewController);
  *(v1 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_moreMenuViewController) = a1;
  v3 = a1;

  OUTLINED_FUNCTION_13_2();
  (*((*MEMORY[0x1E69E7D40] & v4) + 0x4C0))();
  v5 = OUTLINED_FUNCTION_101_6();

  [v5 v6];
}

uint64_t HUDShadowProperties.init(color:opacity:radius:offset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, float a3@<S0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

uint64_t key path getter for ConversationHUDViewController.controlsManager : ConversationHUDViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x130))();
  *a2 = result;
  return result;
}

id ConversationHUDViewController.controlsManager.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsManager;
  OUTLINED_FUNCTION_19_1(a1);
  v3 = *(v1 + v2);

  return v3;
}

void ConversationHUDViewController.controlsManager.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsManager;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  OUTLINED_FUNCTION_13_2();
  (*((*MEMORY[0x1E69E7D40] & v6) + 0x4E0))();
}

uint64_t ConversationHUDViewController.controlsManager.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t ConversationHUDViewController.controlsManager.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x4E0))(result);
  }

  return result;
}

uint64_t key path getter for ConversationHUDViewController.context : ConversationHUDViewController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x148))();
  *a2 = result;
  return result;
}

uint64_t ConversationHUDViewController.context.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_context;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t ConversationHUDViewController.context.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_context;
  result = OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t key path getter for ConversationHUDViewController.ephemeralAlertCancellable : ConversationHUDViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x160))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationHUDViewController.ephemeralAlertCancellable : ConversationHUDViewController(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x168);

  return v2(v3);
}

uint64_t key path getter for ConversationHUDViewController.secondaryButtonCancellable : ConversationHUDViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x178))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationHUDViewController.secondaryButtonCancellable : ConversationHUDViewController(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x180);

  return v2(v3);
}

double key path getter for ConversationHUDViewController.shadowProperties : ConversationHUDViewController@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & **a1) + 0x190))(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t key path setter for ConversationHUDViewController.shadowProperties : ConversationHUDViewController(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v7 = *(a1 + 32);
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x198);
  v4 = *&v6[0];
  return v3(v6);
}

id ConversationHUDViewController.shadowProperties.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_shadowProperties);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v5;

  return v3;
}

void ConversationHUDViewController.shadowProperties.setter(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_shadowProperties);
  OUTLINED_FUNCTION_3_5(v3, v4);
  v5 = *v1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v6;
  *(v1 + 32) = *(a1 + 32);
}

uint64_t key path getter for ConversationHUDViewController.deferPillUpdates : ConversationHUDViewController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1A8))();
  *a2 = result & 1;
  return result;
}

void ConversationHUDViewController.deferPillUpdates.didset()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  v4 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_deferPillUpdates;
  v5 = swift_beginAccess();
  if ((*(v0 + v4) & 1) == 0)
  {
    if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x1C0))(v5))
    {
      v6 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
      __swift_storeEnumTagSinglePayload(v3, 1, 1, v6);
      ConversationHUDViewController.showSecondaryPill(buttonType:)();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
    }

    else
    {
      ConversationHUDViewController.hideSecondaryPill(remove:)(0);
    }
  }
}

uint64_t ConversationHUDViewController.deferPillUpdates.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_deferPillUpdates;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void ConversationHUDViewController.deferPillUpdates.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_deferPillUpdates;
  OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = v2;
  ConversationHUDViewController.deferPillUpdates.didset();
}

uint64_t ConversationHUDViewController.deferPillUpdates.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t key path getter for ConversationHUDViewController.pillShouldBeShowing : ConversationHUDViewController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1C0))();
  *a2 = result & 1;
  return result;
}

uint64_t ConversationHUDViewController.pillShouldBeShowing.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_pillShouldBeShowing;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t ConversationHUDViewController.pillShouldBeShowing.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_pillShouldBeShowing;
  result = OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = v2;
  return result;
}

void ConversationHUDViewController.wantsSecondaryPill(buttonType:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v194 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v197 = &v194 - v15;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v194 - v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_68_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v194 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v194 - v24;
  type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  swift_storeEnumTagMultiPayload();
  LOBYTE(v5) = static ConversationControlsSecondaryPillButtonType.== infix(_:_:)(v5, v1);
  OUTLINED_FUNCTION_0_230();
  v28 = _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v1, v27);
  if (v5)
  {
    goto LABEL_84;
  }

  v29 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v3) + 0x4B0))(v28))
  {
    goto LABEL_84;
  }

  v195 = v10;
  v196 = v13;
  v30 = v29;
  v31 = *((*v29 & *v3) + 0x130);
  v31();
  OUTLINED_FUNCTION_13_62();
  LODWORD(v30) = (*((*v30 & v32) + 0x928))();

  if (v30 >= 0x20)
  {
    v34 = (v31)();
    v35 = *&v34[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_featureFlags];
    swift_unknownObjectRetain();

    LODWORD(v34) = [v35 sharePlayInCallsEnabled];
    v36 = swift_unknownObjectRelease();
    if (!v34)
    {
      goto LABEL_84;
    }

    v37 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x480);
    v37(v36);
    v194 = type metadata accessor for ConversationControlsRecipe(0);
    if (__swift_getEnumTagSinglePayload(v25, 1, v194))
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
      OUTLINED_FUNCTION_8_113();
    }

    else
    {
      outlined init with copy of ConversationControlsType(v25, v207);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
    }

    v205[0] = 6;
    memset(&v205[1], 0, 32);
    v206 = 7;
    OUTLINED_FUNCTION_25_58();
    OUTLINED_FUNCTION_289();
    outlined init with copy of Notice?(v109, v110, v111, v112);
    OUTLINED_FUNCTION_71_14();
    if (v44)
    {
      OUTLINED_FUNCTION_30_20();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v122, v123, v124);
      OUTLINED_FUNCTION_30_20();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v125, v126, v127);
      OUTLINED_FUNCTION_40_27();
      if (v44)
      {
        goto LABEL_72;
      }
    }

    else
    {
      OUTLINED_FUNCTION_88_10(v113, v114, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
      OUTLINED_FUNCTION_40_27();
      if (!v44)
      {
        v198 = v203;
        v199 = *v204;
        OUTLINED_FUNCTION_49_26(*&v204[9]);
        OUTLINED_FUNCTION_84_10();
        v115 = OUTLINED_FUNCTION_72_16();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v115, v116, &_s15ConversationKit0A12ControlsTypeOSgMR);
        v117 = OUTLINED_FUNCTION_73_11();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v117, v118, &_s15ConversationKit0A12ControlsTypeOSgMR);
        outlined destroy of ConversationControlsType(v200);
        v119 = OUTLINED_FUNCTION_70_9();
        v121 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v119, v120, &_s15ConversationKit0A12ControlsTypeOSgMR);
        if (&_s15ConversationKit0A12ControlsTypeOSgMd)
        {
          goto LABEL_4;
        }

        goto LABEL_63;
      }

      OUTLINED_FUNCTION_30_20();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v156, v157, v158);
      OUTLINED_FUNCTION_30_20();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v159, v160, v161);
      outlined destroy of ConversationControlsType(v200);
    }

    v121 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v201, &_s15ConversationKit0A12ControlsTypeOSg_ADtMd, &_s15ConversationKit0A12ControlsTypeOSg_ADtMR);
LABEL_63:
    v37(v121);
    if (__swift_getEnumTagSinglePayload(v22, 1, v194))
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
      OUTLINED_FUNCTION_8_113();
    }

    else
    {
      outlined init with copy of ConversationControlsType(v22, v207);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
    }

    memset(v205, 0, sizeof(v205));
    v206 = 7;
    OUTLINED_FUNCTION_25_58();
    OUTLINED_FUNCTION_289();
    outlined init with copy of Notice?(v162, v163, v164, v165);
    OUTLINED_FUNCTION_71_14();
    if (!v44)
    {
      OUTLINED_FUNCTION_88_10(v166, v167, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
      OUTLINED_FUNCTION_40_27();
      if (!v44)
      {
        v198 = v203;
        v199 = *v204;
        OUTLINED_FUNCTION_49_26(*&v204[9]);
        OUTLINED_FUNCTION_84_10();
        v168 = OUTLINED_FUNCTION_72_16();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v168, v169, &_s15ConversationKit0A12ControlsTypeOSgMR);
        v170 = OUTLINED_FUNCTION_73_11();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v170, v171, &_s15ConversationKit0A12ControlsTypeOSgMR);
        outlined destroy of ConversationControlsType(v200);
        v172 = OUTLINED_FUNCTION_70_9();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v172, v173, &_s15ConversationKit0A12ControlsTypeOSgMR);
        if ((&_s15ConversationKit0A12ControlsTypeOSgMd & 1) == 0)
        {
          goto LABEL_84;
        }

        goto LABEL_4;
      }

      OUTLINED_FUNCTION_30_20();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v188, v189, v190);
      OUTLINED_FUNCTION_30_20();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v191, v192, v193);
      outlined destroy of ConversationControlsType(v200);
LABEL_82:
      v154 = &_s15ConversationKit0A12ControlsTypeOSg_ADtMd;
      v155 = &_s15ConversationKit0A12ControlsTypeOSg_ADtMR;
      goto LABEL_83;
    }

    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v174, v175, v176);
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v177, v178, v179);
    OUTLINED_FUNCTION_40_27();
    if (!v44)
    {
      goto LABEL_82;
    }

LABEL_72:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v201, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
  }

LABEL_4:
  v33 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x480);
  v33();
  type metadata accessor for ConversationControlsRecipe(0);
  if (OUTLINED_FUNCTION_74_0(v2))
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
    OUTLINED_FUNCTION_8_113();
  }

  else
  {
    outlined init with copy of ConversationControlsType(v2, v207);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  }

  OUTLINED_FUNCTION_15_68(10);
  OUTLINED_FUNCTION_25_58();
  OUTLINED_FUNCTION_289();
  outlined init with copy of Notice?(v38, v39, v40, v41);
  OUTLINED_FUNCTION_71_14();
  if (v44)
  {
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v52, v53, v54);
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v55, v56, v57);
    OUTLINED_FUNCTION_40_27();
    if (v44)
    {
      goto LABEL_60;
    }

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_88_10(v42, v43, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
  OUTLINED_FUNCTION_40_27();
  if (v44)
  {
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v58, v59, v60);
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v61, v62, v63);
    outlined destroy of ConversationControlsType(v200);
LABEL_18:
    v51 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v201, &_s15ConversationKit0A12ControlsTypeOSg_ADtMd, &_s15ConversationKit0A12ControlsTypeOSg_ADtMR);
    goto LABEL_19;
  }

  v198 = v203;
  v199 = *v204;
  OUTLINED_FUNCTION_49_26(*&v204[9]);
  OUTLINED_FUNCTION_84_10();
  v45 = OUTLINED_FUNCTION_72_16();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v45, v46, &_s15ConversationKit0A12ControlsTypeOSgMR);
  v47 = OUTLINED_FUNCTION_73_11();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v47, v48, &_s15ConversationKit0A12ControlsTypeOSgMR);
  outlined destroy of ConversationControlsType(v200);
  v49 = OUTLINED_FUNCTION_70_9();
  v51 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v49, v50, &_s15ConversationKit0A12ControlsTypeOSgMR);
  if (&_s15ConversationKit0A12ControlsTypeOSgMd)
  {
    goto LABEL_84;
  }

LABEL_19:
  (v33)(v51);
  if (OUTLINED_FUNCTION_74_0(v18))
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v18, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
    OUTLINED_FUNCTION_8_113();
  }

  else
  {
    outlined init with copy of ConversationControlsType(v18, v207);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v18, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  }

  OUTLINED_FUNCTION_15_68(11);
  OUTLINED_FUNCTION_25_58();
  OUTLINED_FUNCTION_289();
  outlined init with copy of Notice?(v64, v65, v66, v67);
  OUTLINED_FUNCTION_71_14();
  if (v44)
  {
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v77, v78, v79);
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v80, v81, v82);
    OUTLINED_FUNCTION_40_27();
    if (v44)
    {
      goto LABEL_60;
    }

    goto LABEL_30;
  }

  OUTLINED_FUNCTION_88_10(v68, v69, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
  OUTLINED_FUNCTION_40_27();
  if (v44)
  {
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v83, v84, v85);
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v86, v87, v88);
    outlined destroy of ConversationControlsType(v200);
LABEL_30:
    v76 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v201, &_s15ConversationKit0A12ControlsTypeOSg_ADtMd, &_s15ConversationKit0A12ControlsTypeOSg_ADtMR);
    goto LABEL_31;
  }

  v198 = v203;
  v199 = *v204;
  OUTLINED_FUNCTION_49_26(*&v204[9]);
  OUTLINED_FUNCTION_84_10();
  v70 = OUTLINED_FUNCTION_72_16();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v70, v71, &_s15ConversationKit0A12ControlsTypeOSgMR);
  v72 = OUTLINED_FUNCTION_73_11();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v72, v73, &_s15ConversationKit0A12ControlsTypeOSgMR);
  outlined destroy of ConversationControlsType(v200);
  v74 = OUTLINED_FUNCTION_70_9();
  v76 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v74, v75, &_s15ConversationKit0A12ControlsTypeOSgMR);
  if (&_s15ConversationKit0A12ControlsTypeOSgMd)
  {
    goto LABEL_84;
  }

LABEL_31:
  v89 = v197;
  (v33)(v76);
  if (OUTLINED_FUNCTION_74_0(v89))
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v89, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
    OUTLINED_FUNCTION_8_113();
  }

  else
  {
    outlined init with copy of ConversationControlsType(v89, v207);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v89, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  }

  OUTLINED_FUNCTION_15_68(25);
  OUTLINED_FUNCTION_25_58();
  OUTLINED_FUNCTION_289();
  outlined init with copy of Notice?(v90, v91, v92, v93);
  OUTLINED_FUNCTION_71_14();
  if (v44)
  {
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v103, v104, v105);
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v106, v107, v108);
    OUTLINED_FUNCTION_40_27();
    if (!v44)
    {
      goto LABEL_50;
    }

LABEL_60:
    v154 = &_s15ConversationKit0A12ControlsTypeOSgMd;
    v155 = &_s15ConversationKit0A12ControlsTypeOSgMR;
LABEL_83:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v201, v154, v155);
    goto LABEL_84;
  }

  OUTLINED_FUNCTION_88_10(v94, v95, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
  OUTLINED_FUNCTION_40_27();
  if (v44)
  {
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v128, v129, v130);
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v131, v132, v133);
    outlined destroy of ConversationControlsType(v200);
LABEL_50:
    v102 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v201, &_s15ConversationKit0A12ControlsTypeOSg_ADtMd, &_s15ConversationKit0A12ControlsTypeOSg_ADtMR);
    goto LABEL_51;
  }

  v198 = v203;
  v199 = *v204;
  OUTLINED_FUNCTION_49_26(*&v204[9]);
  OUTLINED_FUNCTION_84_10();
  v96 = OUTLINED_FUNCTION_72_16();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v96, v97, &_s15ConversationKit0A12ControlsTypeOSgMR);
  v98 = OUTLINED_FUNCTION_73_11();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v98, v99, &_s15ConversationKit0A12ControlsTypeOSgMR);
  outlined destroy of ConversationControlsType(v200);
  v100 = OUTLINED_FUNCTION_70_9();
  v102 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v100, v101, &_s15ConversationKit0A12ControlsTypeOSgMR);
  if (&_s15ConversationKit0A12ControlsTypeOSgMd)
  {
    goto LABEL_84;
  }

LABEL_51:
  v134 = v196;
  (v33)(v102);
  if (OUTLINED_FUNCTION_74_0(v134))
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v134, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
    OUTLINED_FUNCTION_8_113();
  }

  else
  {
    outlined init with copy of ConversationControlsType(v134, v207);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v134, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  }

  OUTLINED_FUNCTION_15_68(27);
  OUTLINED_FUNCTION_25_58();
  OUTLINED_FUNCTION_289();
  outlined init with copy of Notice?(v135, v136, v137, v138);
  OUTLINED_FUNCTION_71_14();
  if (v44)
  {
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v148, v149, v150);
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v151, v152, v153);
    OUTLINED_FUNCTION_40_27();
    if (!v44)
    {
      goto LABEL_74;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_88_10(v139, v140, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
  OUTLINED_FUNCTION_40_27();
  if (!v44)
  {
    v198 = v203;
    v199 = *v204;
    OUTLINED_FUNCTION_49_26(*&v204[9]);
    OUTLINED_FUNCTION_84_10();
    v141 = OUTLINED_FUNCTION_72_16();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v141, v142, &_s15ConversationKit0A12ControlsTypeOSgMR);
    v143 = OUTLINED_FUNCTION_73_11();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v143, v144, &_s15ConversationKit0A12ControlsTypeOSgMR);
    outlined destroy of ConversationControlsType(v200);
    v145 = OUTLINED_FUNCTION_70_9();
    v147 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v145, v146, &_s15ConversationKit0A12ControlsTypeOSgMR);
    if (&_s15ConversationKit0A12ControlsTypeOSgMd)
    {
      goto LABEL_84;
    }

    goto LABEL_75;
  }

  OUTLINED_FUNCTION_30_20();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v180, v181, v182);
  OUTLINED_FUNCTION_30_20();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v183, v184, v185);
  outlined destroy of ConversationControlsType(v200);
LABEL_74:
  v147 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v201, &_s15ConversationKit0A12ControlsTypeOSg_ADtMd, &_s15ConversationKit0A12ControlsTypeOSg_ADtMR);
LABEL_75:
  v186 = v195;
  (v33)(v147);
  if (OUTLINED_FUNCTION_74_0(v186))
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v186, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  }

  else
  {
    outlined init with copy of ConversationControlsType(v186, &v201);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v186, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
    *&v207[25] = *&v202[9];
    *v207 = v201;
    *&v207[16] = *v202;
    if (v202[24] != 7 || *v207 != 4 || (v187 = vorrq_s8(*&v207[8], *&v207[24]), *&vorr_s8(*v187.i8, *&vextq_s8(v187, v187, 8uLL))))
    {
      outlined destroy of ConversationControlsType(v207);
    }
  }

LABEL_84:
  OUTLINED_FUNCTION_30_0();
}

void ConversationHUDViewController.cnkContentAlpha.didset()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_secondaryPillView);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_cnkContentAlpha;
    swift_beginAccess();
    [v2 setAlpha_];
  }

  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1F8))();
  v6 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_cnkContentAlpha;
  swift_beginAccess();
  [v5 setAlpha_];

  v7 = *(v1 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView + 8);
    ObjectType = swift_getObjectType();
    v10 = *(v1 + v6);
    v11 = *(v8 + 32);
    v12 = v7;
    v11(ObjectType, v8, v10);
  }

  v13 = (*((*v4 & *v1) + 0x210))();
  if (v13)
  {
    v14 = v13;
    v15 = [v13 view];

    if (v15)
    {
      [v15 setAlpha_];
    }

    else
    {
      __break(1u);
    }
  }
}

double ConversationHUDViewController.cnkContentAlpha.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_cnkContentAlpha;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void ConversationHUDViewController.cnkContentAlpha.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_cnkContentAlpha;
  OUTLINED_FUNCTION_3_5(v1 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_cnkContentAlpha, v4);
  *(v1 + v3) = a1;
  ConversationHUDViewController.cnkContentAlpha.didset();
}

uint64_t ConversationHUDViewController.cnkContentAlpha.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t ConversationHUDViewController.deferPillUpdates.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t key path getter for ConversationHUDViewController.backgroundMaterialView : ConversationHUDViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1F8))();
  *a2 = result;
  return result;
}

id ConversationHUDViewController.backgroundMaterialView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController____lazy_storage___backgroundMaterialView;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController____lazy_storage___backgroundMaterialView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController____lazy_storage___backgroundMaterialView);
  }

  else
  {
    v4 = closure #1 in ConversationHUDViewController.backgroundMaterialView.getter(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in ConversationHUDViewController.backgroundMaterialView.getter(void *a1)
{
  v2 = [objc_opt_self() effectWithStyle_];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x1E0);
  v6 = v3;
  v5();
  [v6 setAlpha_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  static Layout.ConversationControls.values.getter(v23);
  [v6 _setContinuousCornerRadius_];

  v7 = *((*v4 & *a1) + 0x468);
  if (v7())
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    (*(v9 + 40))(ObjectType, v9);
    v12 = v11;
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
  }

  [v6 _setCaptureView_];

  v14 = v7();
  if (v14)
  {
    v15 = v13;
    v16 = swift_getObjectType();
    v17 = (*(v15 + 40))(v16, v15);
    v19 = v18;
    v21 = v20;
    swift_unknownObjectRelease();

    v14 = MEMORY[0x1BFB209B0](v17, v19);
  }

  [v6 _setGroupName_];

  return v6;
}

void ConversationHUDViewController.backgroundMaterialView.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController____lazy_storage___backgroundMaterialView);
  *(v1 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController____lazy_storage___backgroundMaterialView) = a1;
}

void (*ConversationHUDViewController.backgroundMaterialView.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = ConversationHUDViewController.backgroundMaterialView.getter();
  return ConversationHUDViewController.backgroundMaterialView.modify;
}

void ConversationHUDViewController.backgroundMaterialView.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController____lazy_storage___backgroundMaterialView);
  *(v1 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController____lazy_storage___backgroundMaterialView) = v2;
}

uint64_t key path getter for ConversationHUDViewController.findoView : ConversationHUDViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x210))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationHUDViewController.findoView : ConversationHUDViewController(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x218);
  v4 = *a1;
  return v3(v2);
}

void *ConversationHUDViewController.findoView.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoView;
  OUTLINED_FUNCTION_19_1(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void ConversationHUDViewController.findoView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoView;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double ConversationHUDViewController.contentInsetForCornerRadius.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x148))();
  result = 0.0;
  if (v1 != 2)
  {
    static Layout.ConversationControls.values.getter(v3);
    return v3[13];
  }

  return result;
}

BOOL ConversationHUDViewController.isUsingFindo.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for shared);
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_293();
  return (*(v0 + 328))() == 2;
}

uint64_t ConversationHUDViewController.shouldShowFindoView.getter()
{
  if (!ConversationHUDViewController.isUsingFindo.getter())
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_293();
  v2 = (*(v1 + 528))();
  v3 = v2;
  if (v2)
  {
  }

  if (*(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_sidebarStateStream))
  {
    SidebarStateStream.currentState.getter();
  }

  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_isMacScreenLocked) ^ 1;
  }

  else
  {
LABEL_8:
    v4 = 0;
  }

  return v4 & 1;
}

void *ConversationHUDViewController.init(recipe:presentationSize:controlsManager:context:sidebarStateStream:shutterButtonDodging:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_0_91();
  v15 = v14;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_ephemeralAlertCancellable) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_secondaryButtonCancellable) = 0;
  v16 = v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_shadowProperties;
  v17 = [objc_opt_self() blackColor];
  static Layout.ConversationControls.values.getter(v44);
  v18 = v45;
  static Layout.ConversationControls.values.getter(v46);
  v19 = v46[12];
  static Layout.ConversationControls.values.getter(v47);
  *v16 = v17;
  *(v16 + 8) = v18;
  *(v16 + 16) = v19;
  *(v16 + 24) = v48;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_deferPillUpdates) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_pillShouldBeShowing) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_cnkContentAlpha) = 0x3FF0000000000000;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController____lazy_storage___backgroundMaterialView) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoView) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_isMacScreenLocked) = 0;
  v20 = (v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView);
  *v20 = 0;
  v20[1] = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_menuContainerView) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_secondaryPillView) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_detailsHeightLayoutConstraint) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_detailsWidthLayoutConstraint) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_topConstraint) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_bottomConstraint) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_shareCardViewController) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_moreMenuViewController) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoViewTrailingConstraint) = 0;
  v21 = (v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoTapAction);
  *v21 = 0;
  v21[1] = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_cancellables) = MEMORY[0x1E69E7CC0];
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v22 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_recipe;
  type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  OUTLINED_FUNCTION_30_2(v6 + v22, v43);
  outlined assign with copy of ConversationControlsRecipe?(v15, v6 + v22);
  swift_endAccess();
  v27 = (v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_presentationSize);
  *v27 = v8;
  v27[1] = v7;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsManager) = a2;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_context) = a3;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_sidebarStateStream) = a4;
  v28 = (v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_shutterButtonDodging);
  *v28 = a5;
  v28[1] = a6;

  v29 = a2;
  v30 = OUTLINED_FUNCTION_33_0();
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v30, v31);
  type metadata accessor for ConversationHUDViewController(0);
  OUTLINED_FUNCTION_3_0();
  v34 = objc_msgSendSuper2(v32, v33);
  v35 = MEMORY[0x1E69E7D40];
  v36 = *((*MEMORY[0x1E69E7D40] & *v34) + 0x4C8);
  v37 = v34;
  v38 = OUTLINED_FUNCTION_3_109();
  v39 = v36(v38);
  (*((*v35 & *v37) + 0x4E0))(v39);
  ConversationHUDViewController.observeSidebarState()();

  v40 = OUTLINED_FUNCTION_33_0();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v40, v41);

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v15, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  return v37;
}

uint64_t type metadata accessor for ConversationHUDViewController(uint64_t a1)
{
  result = type metadata singleton initialization cache for ConversationHUDViewController;
  if (!type metadata singleton initialization cache for ConversationHUDViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id ConversationHUDViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ConversationHUDViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_ephemeralAlertCancellable) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_secondaryButtonCancellable) = 0;
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_shadowProperties;
  v2 = [objc_opt_self() blackColor];
  static Layout.ConversationControls.values.getter(v11);
  v3 = v12;
  static Layout.ConversationControls.values.getter(v13);
  v4 = v13[12];
  static Layout.ConversationControls.values.getter(v14);
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v15;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_deferPillUpdates) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_pillShouldBeShowing) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_cnkContentAlpha) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController____lazy_storage___backgroundMaterialView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_isMacScreenLocked) = 0;
  v5 = (v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_menuContainerView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_secondaryPillView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_detailsHeightLayoutConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_detailsWidthLayoutConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_topConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_bottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_shareCardViewController) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_moreMenuViewController) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoViewTrailingConstraint) = 0;
  v6 = (v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoTapAction);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_cancellables) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ConversationHUDViewController.loadView()()
{
  v1 = [objc_allocWithZone(type metadata accessor for PassthroughView()) init];
  [v0 setView_];
}

Swift::Void __swiftcall ConversationHUDViewController.viewDidLoad()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ConversationHUDViewController(0);
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  ConversationHUDViewController.setupRootView()();
  [v0 setOverrideUserInterfaceStyle_];
  v1 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for isTranslationStartedDidChangeNotification != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_289();
  [v2 v3];
}

Swift::Void __swiftcall ConversationHUDViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for ConversationHUDViewController(0);
  objc_msgSendSuper2(&v13, sel_traitCollectionDidChange_, isa);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (isa)
  {
    v5 = [(objc_class *)isa preferredContentSizeCategory];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
    {

      goto LABEL_13;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v12 = *(v1 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView);
  if (v12)
  {
    v12 = [v12 traitCollectionDidChange_];
  }

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x4C0))(v12);
LABEL_13:
  OUTLINED_FUNCTION_194_0();
}

void ConversationHUDViewController.viewWillTransition(to:with:)(void *a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_0_91();
  swift_getObjectType();
  v32 = v1;
  v33 = type metadata accessor for ConversationHUDViewController(0);
  v4 = OUTLINED_FUNCTION_3_109();
  objc_msgSendSuper2(v5, v6, a1, v4);
  [v1 preferredContentSize];
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v7 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v7, &static Logger.conversationControls);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v9))
  {
    v10 = OUTLINED_FUNCTION_23();
    v26 = swift_slowAlloc();
    *v10 = 136446722;
    v11 = _typeName(_:qualified:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v26);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    OUTLINED_FUNCTION_3_109();
    v14 = CGSize.debugDescription.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v26);

    *(v10 + 14) = v16;
    *(v10 + 22) = 2082;
    v17 = CGSize.debugDescription.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v26);

    *(v10 + 24) = v19;
    _os_log_impl(&dword_1BBC58000, v8, v9, "[%{public}s] willTransition(to size: %{public}s, with coordinator:) , preffered contentSize %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_20();
  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  v30 = partial apply for closure #1 in ConversationHUDViewController.viewWillTransition(to:with:);
  v31 = v20;
  v26 = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v29 = &block_descriptor_129;
  v21 = _Block_copy(&v26);
  v22 = v2;

  OUTLINED_FUNCTION_20();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  v30 = partial apply for closure #2 in ConversationHUDViewController.viewWillTransition(to:with:);
  v31 = v23;
  v26 = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v29 = &block_descriptor_8_1;
  v24 = _Block_copy(&v26);
  v25 = v22;

  [a1 animateAlongsideTransition:v21 completion:v24];
  _Block_release(v24);
  _Block_release(v21);
}

id ConversationHUDViewController.setupRootView()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  result = [v0 view];
  if (result)
  {
    v4 = result;
    v5 = [result layer];

    [v5 setAllowsGroupOpacity_];
    ConversationHUDViewController.setupMaterialView()();
    ConversationHUDViewController.setupControlsView(animated:)();
    v6 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
    ConversationHUDViewController.setupSecondaryPill(buttonType:)();
    OUTLINED_FUNCTION_158();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, v11, v12);
    OUTLINED_FUNCTION_13_2();
    v13 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & v14) + 0x4C0))();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v6);
    ConversationHUDViewController.showSecondaryPill(buttonType:)();
    OUTLINED_FUNCTION_158();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v18, v19, v20);
    OUTLINED_FUNCTION_13_2();
    result = (*((*v13 & v21) + 0x148))();
    if (result == 1)
    {
      OUTLINED_FUNCTION_5_27();
      return (*(v22 + 432))(1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void ConversationHUDViewController.setupMaterialView()()
{
  OUTLINED_FUNCTION_137();
  (*(v1 + 1232))();
  v2 = OUTLINED_FUNCTION_12_101();
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  OUTLINED_FUNCTION_137();
  v4 += 63;
  v5 = *v4;
  v6 = (*v4)();
  [v3 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC4BC370;
  v8 = v5();
  v9 = [v8 leadingAnchor];

  v10 = OUTLINED_FUNCTION_12_101();
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10;
  v12 = [v10 leadingAnchor];

  v13 = [v9 constraintEqualToAnchor_];
  *(v7 + 32) = v13;
  v14 = v5();
  v15 = [v14 topAnchor];

  v16 = OUTLINED_FUNCTION_12_101();
  if (!v16)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v17 = v16;
  v18 = [v16 topAnchor];

  v19 = [v15 constraintEqualToAnchor_];
  *(v7 + 40) = v19;
  v20 = v5();
  v21 = [v20 trailingAnchor];

  v22 = OUTLINED_FUNCTION_12_101();
  if (!v22)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = objc_opt_self();
  v25 = [v23 trailingAnchor];

  v26 = [v21 constraintEqualToAnchor_];
  *(v7 + 48) = v26;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v24 activateConstraints_];

  OUTLINED_FUNCTION_13_2();
  if ((*((*MEMORY[0x1E69E7D40] & v28) + 0x148))())
  {
    return;
  }

  v29 = v5();
  v30 = [v29 bottomAnchor];

  v31 = [v0 view];
  if (!v31)
  {
    goto LABEL_14;
  }

  v32 = v31;
  v33 = [v31 bottomAnchor];

  v34 = [v30 constraintEqualToAnchor_];
  [v34 setActive_];
}

void ConversationHUDViewController.platterHostingViewController(_:)()
{
  OUTLINED_FUNCTION_29();
  v2 = type metadata accessor for UIHostingControllerSizingOptions();
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  v4 = type metadata accessor for ConversationControlsRecipe(0);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_20();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = &v0[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoTapAction];
  v8 = *&v0[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoTapAction];
  v9 = *&v0[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoTapAction + 8];
  *v7 = partial apply for closure #1 in ConversationHUDViewController.platterHostingViewController(_:);
  v7[1] = v6;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
  OUTLINED_FUNCTION_1_197();
  v10 = OUTLINED_FUNCTION_40_2();
  _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v10, v11);
  OUTLINED_FUNCTION_13_2();
  v12 = MEMORY[0x1E69E7D40];
  v14 = (*((*MEMORY[0x1E69E7D40] & v13) + 0x130))();
  OUTLINED_FUNCTION_13_2();
  LOBYTE(v9) = (*((*v12 & v15) + 0x148))();
  type metadata accessor for FindoViewModel(0);
  swift_allocObject();

  v16 = v0;
  v32 = FindoViewModel.init(recipe:controlsManager:menuHostViewController:context:showDetailsView:)(v1, v14, v0, &protocol witness table for ConversationHUDViewController, v9, partial apply for closure #1 in ConversationHUDViewController.platterHostingViewController(_:), v6);
  State.init(wrappedValue:)();
  v17 = v28;
  v18 = v29;
  v19 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit25UISecureHostingControllerCyAA9FindoViewVGMd, &_s15ConversationKit25UISecureHostingControllerCyAA9FindoViewVGMR));
  v28 = 0;
  v29 = v17;
  v30 = v18;
  UIHostingController.init(rootView:)();
  OUTLINED_FUNCTION_24_1();
  UIHostingController.safeAreaRegions.setter();
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  v20 = v19;
  v21 = [v20 view];
  if (v21)
  {
    v22 = v21;
    v23 = [objc_opt_self() clearColor];
    [v22 setBackgroundColor_];

    v24 = [v20 view];
    if (v24)
    {
      v25 = v24;
      v31 = type metadata accessor for ConversationHUDViewController(0);
      v28 = v16;
      objc_allocWithZone(MEMORY[0x1E69DD060]);
      v26 = v16;
      v27 = @nonobjc UITapGestureRecognizer.init(target:action:)(&v28, sel_handleFindoTap);
      [v25 addGestureRecognizer_];

      OUTLINED_FUNCTION_30_0();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void closure #1 in ConversationHUDViewController.platterHostingViewController(_:)(uint64_t a1)
{
  v1 = type metadata accessor for ConversationControlsRecipe(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v19 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = MEMORY[0x1E69E7D40];
    if ((*((*MEMORY[0x1E69E7D40] & *Strong) + 0x4B0))())
    {
LABEL_3:

      return;
    }

    (*((*v9 & *v8) + 0x480))();
    if (__swift_getEnumTagSinglePayload(v6, 1, v1))
    {

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
    }

    else
    {
      _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v6, v3);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if (Features.isICUIRedesignEnabled.getter() & 1) != 0 && (v20 = 0, memset(v19, 0, sizeof(v19)), v21 = 7, v10 = static ConversationControlsType.== infix(_:_:)(v3, v19), outlined destroy of ConversationControlsType(v19), (v10) || v3[*(v1 + 44)] != 2)
      {
        v12 = _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v3, type metadata accessor for ConversationControlsRecipe);
      }

      else
      {
        v11 = v3[*(v1 + 48)];
        v12 = _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v3, type metadata accessor for ConversationControlsRecipe);
        if ((v11 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v13 = (*((*v9 & *v8) + 0x468))(v12);
      if (!v13)
      {
        goto LABEL_3;
      }

      v14 = v13;
      ObjectType = swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v14, ObjectType, &protocol descriptor for InCallConversationControlsViewControllerDelegate))
      {
        v17 = v16;
        v18 = swift_getObjectType();
        (*(v17 + 16))(v18, v17);
        swift_unknownObjectRelease();
        goto LABEL_3;
      }

      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall ConversationHUDViewController.handleFindoTap()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoTapAction);
  if (v1)
  {

    v1(v2);
    v3 = OUTLINED_FUNCTION_46();

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v3, v4);
  }
}

void ConversationHUDViewController.setupFindoView()()
{
  OUTLINED_FUNCTION_29();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_18_67();
  type metadata accessor for ConversationControlsRecipe(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for shared);
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
  {
    goto LABEL_18;
  }

  v8 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_293();
  if (!(*(v9 + 528))())
  {
    OUTLINED_FUNCTION_293();
    (*(v12 + 1152))();
    OUTLINED_FUNCTION_22_56();
    if (v13)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
LABEL_18:
      OUTLINED_FUNCTION_30_0();
      return;
    }

    v14 = OUTLINED_FUNCTION_4_155();
    _s15ConversationKit0A14ControlsRecipeVWObTm_3(v14, v1);
    ConversationHUDViewController.platterHostingViewController(_:)();
    v16 = v15;
    v17 = [v15 view];
    if (v17)
    {
      v18 = v17;
      [v17 setTranslatesAutoresizingMaskIntoConstraints_];
      [v0 addChildViewController_];
      v19 = OUTLINED_FUNCTION_53_2();
      if (v19)
      {
        v20 = v19;
        [v19 addSubview_];

        v21 = [v18 trailingAnchor];
        v22 = OUTLINED_FUNCTION_53_2();
        if (v22)
        {
          v23 = v22;
          v47 = v16;
          v24 = [v22 trailingAnchor];

          v25 = [v21 constraintLessThanOrEqualToAnchor:v24 constant:-24.0];
          v26 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoViewTrailingConstraint;
          v27 = *&v0[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoViewTrailingConstraint];
          *&v0[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoViewTrailingConstraint] = v25;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_1BC4BC370;
          v29 = [v18 topAnchor];
          v30 = OUTLINED_FUNCTION_53_2();
          if (v30)
          {
            v31 = v30;
            v32 = [v30 topAnchor];

            v33 = [v29 constraintEqualToAnchor_];
            *(v28 + 32) = v33;
            v34 = [v18 leadingAnchor];
            v35 = [v0 view];
            if (v35)
            {
              v36 = v35;
              v37 = [v35 leadingAnchor];

              v38 = [v34 constraintEqualToAnchor_];
              *(v28 + 40) = v38;
              v39 = *&v0[v26];
              if (v39)
              {
                v40 = objc_opt_self();
                *(v28 + 48) = v39;
                type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
                v41 = v39;
                OUTLINED_FUNCTION_32_2();
                isa = Array._bridgeToObjectiveC()().super.isa;

                [v40 activateConstraints_];

                [v47 didMoveToParentViewController_];
                OUTLINED_FUNCTION_11_23();
                v44 = *((*v8 & v43) + 0x218);
                v45 = v47;
                v44(v47);

                OUTLINED_FUNCTION_0_195();
                _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v1, v46);
                goto LABEL_18;
              }

LABEL_24:
              __break(1u);
              return;
            }

LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_30_0();
}

void ConversationHUDViewController.makeControlsView(recipe:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  v99 = (v6 - v7);
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v98 - v9;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v11, static Logger.conversationKit);
  OUTLINED_FUNCTION_1_197();
  _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v3, v10);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_18_0(v13))
  {
    v14 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_23();
    v98 = v4;
    OUTLINED_FUNCTION_97_9();
    v101 = v15;
    *v14 = 136315138;
    outlined init with copy of ConversationControlsType(v10, v102);
    v16 = specialized >> prefix<A>(_:)(v102);
    v18 = v17;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v102, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
    OUTLINED_FUNCTION_0_195();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v10, v19);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v101);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_1BBC58000, v12, v13, "[HUDController] makeControlsView: type=%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
    OUTLINED_FUNCTION_91_13();
    v4 = v98;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {

    OUTLINED_FUNCTION_0_195();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v10, v21);
  }

  v22 = v1;
  ConversationHUDViewController.makeSystemApertureControlsView(for:)();
  if (v23)
  {
    v24 = v23;
    v99 = v1;
    v25 = v3;
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    OUTLINED_FUNCTION_52(v11, &static Logger.conversationControls);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v27))
    {
      v28 = OUTLINED_FUNCTION_42();
      v29 = OUTLINED_FUNCTION_23();
      v102[0] = v29;
      *v28 = 136446210;
      _typeName(_:qualified:)();
      OUTLINED_FUNCTION_103_6();
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v32);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_1BBC58000, v26, v27, "[%{public}s] makeControlsView using makeSystemApertureControlsView", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_26();
    }

    v34 = *MEMORY[0x1E69DDC70];
    [v24 setMinimumContentSizeCategory_];
    [v24 setMaximumContentSizeCategory_];
    if (*(v25 + *(v4 + 64)) & 1) != 0 || (OUTLINED_FUNCTION_9_106(25), OUTLINED_FUNCTION_65_17(), OUTLINED_FUNCTION_75_14(), (v34))
    {
      v35 = v24;
      addStatusTapTo #1 (_:) in ConversationHUDViewController.makeControlsView(recipe:)(v35, v99);
    }

    goto LABEL_27;
  }

  OUTLINED_FUNCTION_9_106(6);
  v103 = 7;
  v36 = OUTLINED_FUNCTION_59_17();
  static ConversationControlsType.== infix(_:_:)(v36, v37);
  OUTLINED_FUNCTION_75_14();
  v38 = MEMORY[0x1E69E7D40];
  if ((v1 & 1) != 0 && (OUTLINED_FUNCTION_293(), v39 += 38, v40 = *v39, v41 = (*v39)(), v42 = *&v41[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_featureFlags], swift_unknownObjectRetain(), v41, v22 = [v42 sharePlayInCallsEnabled], swift_unknownObjectRelease(), (v22 & 1) == 0))
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    OUTLINED_FUNCTION_52(v11, &static Logger.conversationControls);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v68))
    {
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_97_9();
      v69 = OUTLINED_FUNCTION_23();
      v102[0] = v69;
      v70 = OUTLINED_FUNCTION_85_9(4.8751e-34);
      v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, v102);

      *(v3 + 4) = v72;
      OUTLINED_FUNCTION_63_15(&dword_1BBC58000, v73, v74, "[%{public}s] makeControlsView using OngoingTelephonyControlsView");
      __swift_destroy_boxed_opaque_existential_1(v69);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_91_13();
      OUTLINED_FUNCTION_27();
    }

    OUTLINED_FUNCTION_1_197();
    v75 = v3;
    v76 = v99;
    v77 = _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v75, v99);
    (v40)(v77);
    v78 = OUTLINED_FUNCTION_24_1();
    objc_allocWithZone(type metadata accessor for OngoingTelephonyControlsView(v78));
    v79 = v1;
    v80 = OngoingTelephonyControlsView.init(recipe:controlsManager:menuHostViewController:)(v76, v1, v1, &protocol witness table for ConversationHUDViewController);
    addStatusTapTo #1 (_:) in ConversationHUDViewController.makeControlsView(recipe:)(v80, v79);
  }

  else
  {
    OUTLINED_FUNCTION_9_106(28);
    v103 = 7;
    v43 = OUTLINED_FUNCTION_59_17();
    static ConversationControlsType.== infix(_:_:)(v43, v44);
    OUTLINED_FUNCTION_75_14();
    if (v22)
    {
      if (one-time initialization token for conversationControls != -1)
      {
LABEL_30:
        OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
      }

LABEL_19:
      OUTLINED_FUNCTION_52(v11, &static Logger.conversationControls);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_18_0(v52))
      {
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_97_9();
        v53 = OUTLINED_FUNCTION_23();
        v102[0] = v53;
        v54 = OUTLINED_FUNCTION_85_9(4.8751e-34);
        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v102);

        *(v3 + 4) = v56;
        OUTLINED_FUNCTION_63_15(&dword_1BBC58000, v57, v58, "[%{public}s] makeControlsView using IntelligenceControlsViewContainer");
        __swift_destroy_boxed_opaque_existential_1(v53);
        OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_91_13();
        OUTLINED_FUNCTION_27();
      }

      OUTLINED_FUNCTION_293();
      v60 = (*(v59 + 304))();
      OUTLINED_FUNCTION_11_23();
      v62 = (*((*v38 & v61) + 0x148))();
      OUTLINED_FUNCTION_1_197();
      v63 = v3;
      v64 = v99;
      _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v63, v99);
      objc_allocWithZone(type metadata accessor for IntelligenceControlsViewContainer(0));
      v65 = v1;
      v66 = IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)(v65, v60, v62, v64, 1.0);
      addStatusTapTo #1 (_:) in ConversationHUDViewController.makeControlsView(recipe:)(v66, v65);
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_9_106(29);
    v103 = 7;
    v45 = OUTLINED_FUNCTION_59_17();
    static ConversationControlsType.== infix(_:_:)(v45, v46);
    OUTLINED_FUNCTION_75_14();
    OUTLINED_FUNCTION_9_106(30);
    v103 = 7;
    v47 = OUTLINED_FUNCTION_59_17();
    static ConversationControlsType.== infix(_:_:)(v47, v48);
    OUTLINED_FUNCTION_75_14();
    OUTLINED_FUNCTION_9_106(21);
    v103 = 7;
    v49 = OUTLINED_FUNCTION_59_17();
    static ConversationControlsType.== infix(_:_:)(v49, v50);
    OUTLINED_FUNCTION_75_14();
    OUTLINED_FUNCTION_9_106(22);
    v103 = 7;
    v81 = OUTLINED_FUNCTION_59_17();
    static ConversationControlsType.== infix(_:_:)(v81, v82);
    OUTLINED_FUNCTION_75_14();
    if (v22)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    OUTLINED_FUNCTION_52(v11, &static Logger.conversationControls);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v84))
    {
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_97_9();
      v85 = OUTLINED_FUNCTION_23();
      v102[0] = v85;
      v86 = OUTLINED_FUNCTION_85_9(4.8751e-34);
      v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v87, v102);

      *(v3 + 4) = v88;
      OUTLINED_FUNCTION_63_15(&dword_1BBC58000, v89, v90, "[%{public}s] makeControlsView using ConversationHUDControlsView");
      __swift_destroy_boxed_opaque_existential_1(v85);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_91_13();
      OUTLINED_FUNCTION_27();
    }

    OUTLINED_FUNCTION_1_197();
    v91 = v99;
    _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v3, v99);
    OUTLINED_FUNCTION_11_23();
    v93 = (*((*v38 & v92) + 0x130))();
    OUTLINED_FUNCTION_11_23();
    v95 = (*((*v38 & v94) + 0x148))();
    v102[3] = type metadata accessor for ConversationHUDViewController(0);
    v102[4] = &protocol witness table for ConversationHUDViewController;
    v102[0] = v1;
    objc_allocWithZone(type metadata accessor for ConversationHUDControlsView(0));
    v96 = v1;
    v97 = *(ConversationHUDControlsView.init(recipe:controlsManager:context:menuHostViewController:moreMenuButtonDelegate:)(v91, v93, v95, v1, &protocol witness table for ConversationHUDViewController, v102) + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_statusView);
    addStatusTapTo #1 (_:) in ConversationHUDViewController.makeControlsView(recipe:)(v97, v96);
  }

LABEL_27:
  OUTLINED_FUNCTION_30_0();
}

void addStatusTapTo #1 (_:) in ConversationHUDViewController.makeControlsView(recipe:)(void *a1, void *a2)
{
  v6[3] = type metadata accessor for ConversationHUDViewController(0);
  v6[0] = a2;
  objc_allocWithZone(MEMORY[0x1E69DD060]);
  v4 = a2;
  v5 = @nonobjc UITapGestureRecognizer.init(target:action:)(v6, sel_statusViewTapped);
  [v5 setDelegate_];
  [a1 addGestureRecognizer_];
}

void ConversationHUDViewController.makeSystemApertureControlsView(for:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for ConversationControlsRecipe(0);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v150 - v11;
  OUTLINED_FUNCTION_13_2();
  v13 = MEMORY[0x1E69E7D40];
  v15 = *((*MEMORY[0x1E69E7D40] & v14) + 0x468);
  v16 = v15();
  if (!v16)
  {
    goto LABEL_14;
  }

  v17 = v16;
  v152 = ObjectType;
  v18 = swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v17, v18, &protocol descriptor for SystemConversationControlsViewControllerDelegate))
  {
    swift_unknownObjectRelease();
LABEL_14:
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v46 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v46, &static Logger.conversationControls);
    v47 = v0;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = OUTLINED_FUNCTION_30_1();
      v153[0] = swift_slowAlloc();
      *v50 = 136446466;
      v51 = _typeName(_:qualified:)();
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, v153);

      *(v50 + 4) = v53;
      *(v50 + 12) = 2080;
      v55 = (v15)(v54);
      if (v55)
      {
        v155 = v55;
        v156.i64[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A30ControlsViewControllerDelegate_pMd, &_s15ConversationKit0A30ControlsViewControllerDelegate_pMR);
        v57 = String.init<A>(reflecting:)();
        v59 = v58;
      }

      else
      {
        v59 = 0xE300000000000000;
        v57 = 7104878;
      }

      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, v153);

      *(v50 + 14) = v68;
      _os_log_impl(&dword_1BBC58000, v48, v49, "[%{public}s] makeSystemApertureControlsView returning nil for delegate: %s", v50, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_26();
    }

    goto LABEL_27;
  }

  v20 = v19;
  v21 = swift_getObjectType();
  if ((*(v20 + 56))(v21, v20))
  {
    v22 = OUTLINED_FUNCTION_59_17();
    outlined init with copy of ConversationControlsType(v22, v23);
    if (v158 == 7)
    {
      v24 = vorrq_s8(v156, v157);
      v25 = vorr_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
      if (v155 == 5 && !*&v25)
      {
LABEL_7:
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
        }

        v26 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v26, &static Logger.conversationControls);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_46_1(v28))
        {
          OUTLINED_FUNCTION_42();
          v29 = OUTLINED_FUNCTION_38_32();
          v155 = v29;
          v30 = OUTLINED_FUNCTION_54_22(4.8751e-34);
          v32 = v12;
          v33 = v3;
          v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v155);

          *(v9 + 4) = v34;
          v3 = v33;
          v12 = v32;
          v13 = MEMORY[0x1E69E7D40];
          OUTLINED_FUNCTION_44_24(&dword_1BBC58000, v35, v36, "[%{public}s] makeSystemApertureControlsView using SystemApertureIncomingCallControlsView");
          __swift_destroy_boxed_opaque_existential_1(v29);
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_3_26();
        }

        OUTLINED_FUNCTION_1_197();
        v37 = OUTLINED_FUNCTION_33_0();
        _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v37, v38);
        OUTLINED_FUNCTION_283();
        (*((*v13 & v39) + 0x130))();
        v40 = OUTLINED_FUNCTION_24_1();
        v9 = v3;
        objc_allocWithZone(type metadata accessor for SystemApertureIncomingCallControlsView(v40));
        v41 = v1;
        OUTLINED_FUNCTION_30_20();
        if (SystemApertureIncomingCallControlsView.init(recipe:controlsManager:menuHostViewController:)(v42, v43, v44, v45))
        {
          OUTLINED_FUNCTION_28_0();
          swift_unknownObjectRelease();
          goto LABEL_27;
        }

        goto LABEL_53;
      }

      if (v155 == 6 && !*&v25)
      {
        goto LABEL_30;
      }

      if (v155 == 7 && !*&v25)
      {
        goto LABEL_7;
      }

      if (v155 == 8 && !*&v25)
      {
LABEL_30:
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
        }

        v69 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v69, &static Logger.conversationControls);
        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.default.getter();
        v72 = OUTLINED_FUNCTION_46_1(v71);
        v151 = v3;
        if (v72)
        {
          OUTLINED_FUNCTION_42();
          v73 = OUTLINED_FUNCTION_38_32();
          v155 = v73;
          OUTLINED_FUNCTION_54_22(4.8751e-34);
          OUTLINED_FUNCTION_103_6();
          v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, v76);

          *(v9 + 4) = v77;
          OUTLINED_FUNCTION_44_24(&dword_1BBC58000, v78, v79, "[%{public}s] makeSystemApertureControlsView using SystemApertureOngoingTelephonyControlsView");
          __swift_destroy_boxed_opaque_existential_1(v73);
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_3_26();
        }

        OUTLINED_FUNCTION_17_76();
        v80 += 38;
        v81 = *v80;
        v82 = (*v80)();
        v83 = *&v82[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_featureFlags];
        swift_unknownObjectRetain();

        v84 = [v83 sharePlayInCallsEnabled];
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_1_197();
        v85 = _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v151, v12);
        (v81)(v85);
        if (v84)
        {
          OUTLINED_FUNCTION_176();
          v87 = (*(v86 + 328))();
          objc_allocWithZone(type metadata accessor for SystemApertureControlsView(0));
          v88 = v1;
          v89 = OUTLINED_FUNCTION_40_2();
          SystemApertureControlsView.init(recipe:controlsManager:context:menuHostViewController:)(v89, v90, v87, v1, v91);
          OUTLINED_FUNCTION_77_14(v92, v93);
          OUTLINED_FUNCTION_83_10(v94);
        }

        else
        {
          objc_allocWithZone(type metadata accessor for SystemApertureOngoingTelephonyControlsView(0));
          v102 = v1;
          OUTLINED_FUNCTION_40_2();
          SystemApertureOngoingTelephonyControlsView.init(recipe:controlsManager:menuHostViewController:)();
          OUTLINED_FUNCTION_28_0();
        }

        swift_unknownObjectRelease();
        goto LABEL_27;
      }

      if (v155 == 21 && !*&v25 || v155 == 22 && !*&v25)
      {
        goto LABEL_45;
      }

      if (v155 == 28 && !*&v25)
      {
        v9 = v3;
LABEL_53:
        v151 = v9;
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
        }

        v103 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v103, &static Logger.conversationControls);
        v96 = Logger.logObject.getter();
        v104 = static os_log_type_t.default.getter();
        if (!OUTLINED_FUNCTION_46_1(v104))
        {
          goto LABEL_58;
        }

        OUTLINED_FUNCTION_42();
        v155 = OUTLINED_FUNCTION_38_32();
        OUTLINED_FUNCTION_54_22(4.8751e-34);
        v100 = v13;
        OUTLINED_FUNCTION_103_6();
LABEL_57:
        v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, v101);
        v13 = v100;

        *(v9 + 4) = v105;
        OUTLINED_FUNCTION_44_24(&dword_1BBC58000, v106, v107, "[%{public}s] makeSystemApertureControlsView using IntelligenceControlsViewContainer");
        OUTLINED_FUNCTION_9_7();
        OUTLINED_FUNCTION_3_26();
LABEL_58:

        OUTLINED_FUNCTION_17_76();
        v109 = (*(v108 + 304))();
        OUTLINED_FUNCTION_283();
        v111 = (*((*v13 & v110) + 0x148))();
        OUTLINED_FUNCTION_1_197();
        v112 = v151;
LABEL_59:
        _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v112, v12);
        objc_allocWithZone(type metadata accessor for IntelligenceControlsViewContainer(0));
        IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)(v1, v109, v111, v12, 1.0);
        OUTLINED_FUNCTION_28_0();
        swift_unknownObjectRelease();
        goto LABEL_27;
      }

      if (v155 == 29 && !*&v25)
      {
LABEL_45:
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
        }

        v151 = v3;
        v95 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v95, &static Logger.conversationControls);
        v96 = Logger.logObject.getter();
        v97 = static os_log_type_t.default.getter();
        if (!OUTLINED_FUNCTION_46_1(v97))
        {
          goto LABEL_58;
        }

        OUTLINED_FUNCTION_42();
        v153[0] = OUTLINED_FUNCTION_38_32();
        v98 = OUTLINED_FUNCTION_54_22(4.8751e-34);
        v100 = v13;
        v101 = v153;
        goto LABEL_57;
      }

      if (v155 == 30 && !*&v25)
      {
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
        }

        v113 = v3;
        v114 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v114, &static Logger.conversationControls);
        v115 = Logger.logObject.getter();
        v116 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_46_1(v116))
        {
          OUTLINED_FUNCTION_42();
          v153[0] = OUTLINED_FUNCTION_38_32();
          v117 = OUTLINED_FUNCTION_54_22(4.8751e-34);
          v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v118, v153);

          *(v9 + 4) = v119;
          OUTLINED_FUNCTION_44_24(&dword_1BBC58000, v120, v121, "[%{public}s] makeSystemApertureControlsView using IntelligenceControlsViewContainer");
          OUTLINED_FUNCTION_9_7();
          OUTLINED_FUNCTION_3_26();
        }

        v122 = MEMORY[0x1E69E7D40];
        OUTLINED_FUNCTION_176();
        v109 = (*(v123 + 304))();
        OUTLINED_FUNCTION_283();
        v111 = (*((*v122 & v124) + 0x148))();
        OUTLINED_FUNCTION_1_197();
        v112 = v113;
        goto LABEL_59;
      }
    }

    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v125 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v125, &static Logger.conversationControls);
    OUTLINED_FUNCTION_1_197();
    _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v3, v9);
    v126 = Logger.logObject.getter();
    v127 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v127))
    {
      v128 = OUTLINED_FUNCTION_30_1();
      v154 = swift_slowAlloc();
      *v128 = 136446466;
      v129 = _typeName(_:qualified:)();
      v151 = v3;
      v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v130, &v154);

      *(v128 + 4) = v131;
      *(v128 + 12) = 2082;
      outlined init with copy of ConversationControlsType(v9, v153);
      specialized >> prefix<A>(_:)(v153);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v153, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
      OUTLINED_FUNCTION_0_195();
      _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v9, v132);
      v133 = OUTLINED_FUNCTION_32_2();
      v136 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v134, v135);
      v13 = MEMORY[0x1E69E7D40];

      *(v128 + 14) = v136;
      _os_log_impl(&dword_1BBC58000, v126, v127, "[%{public}s] makeSystemApertureControlsView using SystemApertureControlsView for recipeType: %{public}s", v128, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {

      OUTLINED_FUNCTION_0_195();
      _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v9, v137);
    }

    OUTLINED_FUNCTION_1_197();
    v138 = OUTLINED_FUNCTION_33_0();
    _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v138, v139);
    OUTLINED_FUNCTION_283();
    (*((*v13 & v140) + 0x130))();
    OUTLINED_FUNCTION_283();
    v142 = (*((*v13 & v141) + 0x148))();
    objc_allocWithZone(type metadata accessor for SystemApertureControlsView(0));
    v143 = v1;
    v144 = OUTLINED_FUNCTION_40_2();
    SystemApertureControlsView.init(recipe:controlsManager:context:menuHostViewController:)(v144, v145, v142, v1, v146);
    OUTLINED_FUNCTION_77_14(v147, v148);
    OUTLINED_FUNCTION_83_10(v149);
    swift_unknownObjectRelease();
    outlined destroy of ConversationControlsType(&v155);
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v60 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v60, &static Logger.conversationControls);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v62))
    {
      v63 = OUTLINED_FUNCTION_42();
      v155 = OUTLINED_FUNCTION_23();
      *v63 = 136446210;
      _typeName(_:qualified:)();
      OUTLINED_FUNCTION_103_6();
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, v66);

      *(v63 + 4) = v67;
      _os_log_impl(&dword_1BBC58000, v61, v62, "[%{public}s] makeSystemApertureControlsView returning nil since NOT in SystemAperture", v63, 0xCu);
      OUTLINED_FUNCTION_9_7();
      OUTLINED_FUNCTION_26();
    }

    swift_unknownObjectRelease();
  }

LABEL_27:
  OUTLINED_FUNCTION_30_0();
}

void ConversationHUDViewController.setupControlsView(animated:)()
{
  OUTLINED_FUNCTION_48_2();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_18_67();
  v8 = type metadata accessor for ConversationControlsRecipe(v7);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_13_2();
  v13 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & v14) + 0x480))();
  if (__swift_getEnumTagSinglePayload(v1, 1, v8) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
LABEL_24:
    OUTLINED_FUNCTION_20_6();
    return;
  }

  v15 = OUTLINED_FUNCTION_4_155();
  _s15ConversationKit0A14ControlsRecipeVWObTm_3(v15, v12);
  v16 = &v0[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView];
  v17 = *&v0[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView];
  if (v17)
  {
    [v17 removeFromSuperview];
  }

  v79 = v12;
  ConversationHUDViewController.makeControlsView(recipe:)();
  v19 = v18;
  v21 = v20;
  ObjectType = swift_getObjectType();
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  type metadata accessor for UILayoutPriority(0);
  v82 = 1144750080;
  v81 = 1120403456;
  lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority();
  v23 = v19;
  static _UIKitNumericRawRepresentable.+ infix(_:_:)();
  LODWORD(v24) = v80[0];
  [v23 setContentCompressionResistancePriority:1 forAxis:v24];

  OUTLINED_FUNCTION_11_23();
  (*((*v13 & v25) + 0x1E0))();
  (*(v21 + 32))(ObjectType, v21);
  v26 = *v16;
  *v16 = v23;
  *(v16 + 1) = v21;
  v27 = v23;

  type metadata accessor for ConversationHUDControlsView(0);
  if (swift_dynamicCastClass())
  {
    ConversationHUDViewController.setupFindoView()();
  }

  OUTLINED_FUNCTION_293();
  v28 += 63;
  v29 = *v28;
  v30 = (*v28)();
  v31 = [v30 contentView];

  [v31 addSubview_];
  if ((v4 & 1) != 0 && ([v27 isHidden] & 1) == 0)
  {
    [v27 setAlpha_];
    objc_opt_self();
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
    }

    OUTLINED_FUNCTION_0_1();
    (*(v32 + 1056))();
    OUTLINED_FUNCTION_24();
    v33 = swift_allocObject();
    *(v33 + 16) = v27;
    *(v33 + 24) = v21;
    v80[4] = partial apply for closure #1 in MultiwayViewController.fadeInView(view:duration:);
    v80[5] = v33;
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 1107296256;
    OUTLINED_FUNCTION_6_5();
    v80[2] = v34;
    v80[3] = &block_descriptor_121_0;
    v35 = _Block_copy(v80);
    v36 = v27;

    v37 = OUTLINED_FUNCTION_99_5();
    [v38 v39];
    _Block_release(v35);
  }

  v40 = swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v27, v40, &protocol descriptor for FaceTimeControlsView))
  {
    v42 = v41;
    OUTLINED_FUNCTION_293();
    v44 = *(v43 + 328);
    v45 = v27;
    v46 = &selRef_statusViewTapped;
    if (v44() != 2)
    {
      v47 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_293();
      (*(v48 + 304))();
      OUTLINED_FUNCTION_13_62();
      LOBYTE(v47) = (*((*v47 & v49) + 0x380))();

      if ((v47 & 1) == 0)
      {
        v46 = &selRef_showCallDetailsButtonTapped;
      }
    }

    v50 = *v46;
    v51 = swift_getObjectType();
    v52 = (*(v42 + 80))(v51, v42);
    [v52 addTarget:v2 action:v50 forControlEvents:64];
  }

  v53 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1BC4BA930;
  v55 = [v27 leadingAnchor];
  v56 = v29();
  v57 = [v56 leadingAnchor];

  v58 = [v55 constraintEqualToAnchor_];
  *(v54 + 32) = v58;
  v59 = [v27 trailingAnchor];
  v60 = v29();
  v61 = [v60 trailingAnchor];

  v62 = [v59 constraintEqualToAnchor_];
  *(v54 + 40) = v62;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v53 activateConstraints_];

  OUTLINED_FUNCTION_11_23();
  v64 = MEMORY[0x1E69E7D40];
  if (!(*((*MEMORY[0x1E69E7D40] & v65) + 0x148))())
  {
    v66 = v29();
    v67 = [v66 bottomAnchor];

    v68 = [v2 view];
    if (!v68)
    {
      goto LABEL_26;
    }

    v69 = v68;
    v70 = [v68 bottomAnchor];

    v71 = [v67 constraintEqualToAnchor_];
    [v71 setActive_];

    v64 = MEMORY[0x1E69E7D40];
  }

  v72 = v29();
  [v72 setHidden_];

  OUTLINED_FUNCTION_11_23();
  v74 = (*((*v64 & v73) + 0x210))();
  if (!v74)
  {
LABEL_23:
    v77 = v27;
    ConversationHUDViewController.verticallyConstrainView(_:above:spacing:)(v77, 0, 0.0);

    ConversationHUDViewController.constrainSecondaryPillToControlsViewIfNeeded()();
    OUTLINED_FUNCTION_0_195();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v79, v78);
    goto LABEL_24;
  }

  v75 = v74;
  v76 = [v74 view];

  if (v76)
  {
    [v76 setHidden_];

    goto LABEL_23;
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t ConversationHUDViewController.updateControlsView()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_18_67();
  type metadata accessor for ConversationControlsRecipe(v4);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  OUTLINED_FUNCTION_13_2();
  (*((*MEMORY[0x1E69E7D40] & v12) + 0x480))();
  OUTLINED_FUNCTION_22_56();
  if (v13)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  }

  v15 = OUTLINED_FUNCTION_4_155();
  _s15ConversationKit0A14ControlsRecipeVWObTm_3(v15, v11);
  v16 = v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView;
  v17 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView);
  if (v17)
  {
    v18 = *(v16 + 8);
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_1_197();
    v20 = OUTLINED_FUNCTION_44_0();
    _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v20, v21);
    v22 = *(v18 + 56);
    v23 = v17;
    v22(v8, ObjectType, v18);
  }

  OUTLINED_FUNCTION_0_195();
  return _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v11, v24);
}

void ConversationHUDViewController.verticallyConstrainView(_:above:spacing:)(void *a1, void *a2, double a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18NSLayoutConstraintCSgGMd, &_ss23_ContiguousArrayStorageCySo18NSLayoutConstraintCSgGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAA20;
  v8 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_topConstraint;
  v9 = *(v3 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_topConstraint);
  *(inited + 32) = v9;
  v10 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_bottomConstraint;
  v11 = *(v4 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_bottomConstraint);
  *(inited + 40) = v11;
  v12 = MEMORY[0x1E69E7CC0];
  v58 = MEMORY[0x1E69E7CC0];
  v13 = v11;
  v14 = v9;
  for (i = 0; i != 2; ++i)
  {
    v16 = *(inited + 8 * i + 32);
    if (v16)
    {
      v17 = v16;
      MEMORY[0x1BFB20CC0]();
      if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  v18 = objc_opt_self();
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v56 = v18;
  [v18 deactivateConstraints_];

  LOBYTE(isa) = ConversationHUDViewController.shouldShowFindoView.getter();
  v20 = [a1 topAnchor];
  if ((isa & 1) == 0)
  {
    v55 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x1F8);
    v32 = v55();
    v33 = [v32 contentView];

    v34 = [v33 &_OBJC_LABEL_PROTOCOL___NSItemProviderReading];
    v35 = [v20 constraintEqualToAnchor_];

    v36 = *(v4 + v8);
    *(v4 + v8) = v35;

    if (a2)
    {
      v37 = a2;
    }

    else
    {
      v37 = a1;
    }

    v28 = [v37 0x1FBB20D25];
    v22 = a2;
    v38 = v55();
    v30 = [v38 contentView];

    v31 = [v30 0x1FBB20D25];
    goto LABEL_18;
  }

  v21 = [v4 view];
  v22 = a2;
  if (!v21)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  v23 = v21;
  v24 = [v21 topAnchor];

  v25 = [v20 constraintEqualToAnchor_];
  v26 = *(v4 + v8);
  *(v4 + v8) = v25;

  if (a2)
  {
    v27 = a2;
  }

  else
  {
    v27 = a1;
  }

  v28 = [v27 bottomAnchor];
  v29 = [v4 view];
  if (!v29)
  {
    goto LABEL_28;
  }

  v30 = v29;
  v31 = [v29 bottomAnchor];
LABEL_18:
  v39 = v31;

  v40 = [v28 constraintEqualToAnchor_];
  v41 = *(v4 + v10);
  *(v4 + v10) = v40;

  v42 = swift_initStackObject();
  *(v42 + 16) = xmmword_1BC4BAA20;
  v43 = *(v4 + v8);
  *(v42 + 32) = v43;
  v44 = *(v4 + v10);
  *(v42 + 40) = v44;
  v45 = v44;
  v46 = v43;
  for (j = 0; j != 2; ++j)
  {
    v48 = *(v42 + 8 * j + 32);
    if (v48)
    {
      v49 = v48;
      MEMORY[0x1BFB20CC0]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      OUTLINED_FUNCTION_33_0();
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v50 = Array._bridgeToObjectiveC()().super.isa;

  [v56 activateConstraints_];

  if (v22)
  {
    v51 = v22;
    v52 = [v51 topAnchor];
    v53 = [a1 bottomAnchor];
    v54 = [v52 constraintEqualToAnchor:v53 constant:a3];

    [v54 setActive_];
  }
}

void ConversationHUDViewController.isTranslationStartedDidChange(_:)()
{
  v1 = v0;
  ConversationHUDViewController.updateFindoTrailingConstraint()();
  OUTLINED_FUNCTION_137();
  v3 = (*(v2 + 1216))();
  if (one-time initialization token for shared != -1)
  {
    v3 = swift_once();
  }

  if (CallTranslationHUDViewModel.isTranslationStarted.getter(v3, v4))
  {
    OUTLINED_FUNCTION_293();
    if ((*(v5 + 1128))())
    {
      v7 = v6;
      ObjectType = swift_getObjectType();
      (*(v7 + 8))(ObjectType, v7);
      swift_unknownObjectRelease();
    }

    objc_opt_self();
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
    }

    OUTLINED_FUNCTION_0_1();
    (*(v9 + 1056))();
    OUTLINED_FUNCTION_20();
    v10 = swift_allocObject();
    *(v10 + 16) = v0;
    v21 = partial apply for closure #1 in ConversationHUDViewController.isTranslationStartedDidChange(_:);
    v22 = v10;
    v17 = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    OUTLINED_FUNCTION_6_5();
    v19 = v11;
    v20 = &block_descriptor_115_1;
    v12 = _Block_copy(&v17);
    v13 = v1;

    v14 = OUTLINED_FUNCTION_99_5();
    [v15 v16];
    _Block_release(v12);
  }
}

void ConversationHUDViewController.updateFindoTrailingConstraint()()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x210))();
  if (!v2)
  {
    goto LABEL_27;
  }

  v28 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy15ConversationKit9FindoViewVGMd, &_s7SwiftUI19UIHostingControllerCy15ConversationKit9FindoViewVGMR);
  if (swift_dynamicCastClass())
  {
    dispatch thunk of UIHostingController.rootView.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMR);
    State.wrappedValue.getter();

    v3 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoViewTrailingConstraint;
    v4 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoViewTrailingConstraint);
    v5 = *(*v29 + 376);
    v6 = v4;
    v7 = v5();
    v8 = [v28 view];
    v9 = v8;
    if (v7)
    {
      if (!v8)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v10 = [v8 trailingAnchor];

      v11 = OUTLINED_FUNCTION_53_2();
      if (!v11)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v12 = v11;
      v13 = [v11 trailingAnchor];

      v14 = [v10 constraintEqualToAnchor:v13 constant:-24.0];
    }

    else
    {
      if (!v8)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v10 = [v8 trailingAnchor];

      v17 = OUTLINED_FUNCTION_53_2();
      if (!v17)
      {
LABEL_32:
        __break(1u);
        return;
      }

      v18 = v17;
      v13 = [v17 trailingAnchor];

      Layout.MultiwayFaceTime.init()(v30);
      v14 = [v10 constraintLessThanOrEqualToAnchor:v13 constant:-24.0 - v31];
    }

    v19 = v14;

    if (v4)
    {
      if (v19)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
        v20 = v6;
        v21 = v19;
        v22 = static NSObject.== infix(_:_:)();

        if (v22)
        {

LABEL_26:

          goto LABEL_27;
        }
      }
    }

    else if (!v19)
    {

      goto LABEL_26;
    }

    v23 = *(v1 + v3);
    if (v23)
    {
      [v23 setActive_];
      v24 = *(v1 + v3);
    }

    else
    {
      v24 = 0;
    }

    *(v1 + v3) = v19;
    v25 = v19;

    if (v19)
    {
      [v25 setActive_];
    }

    v26 = OUTLINED_FUNCTION_53_2();
    if (v26)
    {
      v27 = v26;
      [v26 layoutIfNeeded];

LABEL_27:
      OUTLINED_FUNCTION_30_0();
      return;
    }

    __break(1u);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_30_0();
}

void __swiftcall ConversationHUDViewController.setupMenuContainerView()(UIView_optional *__return_ptr retstr)
{
  v5 = v1;
  ConversationHUDViewController.menuContainerFrame.getter();
  OUTLINED_FUNCTION_0_137();
  v8 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v9 = *&v1[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_menuContainerView];
  *&v5[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_menuContainerView] = v8;
  v10 = v8;

  OUTLINED_FUNCTION_11_23();
  v11 = MEMORY[0x1E69E7D40];
  if (!(*((*MEMORY[0x1E69E7D40] & v12) + 0x468))())
  {
    v15 = v10;
LABEL_8:

    OUTLINED_FUNCTION_11_23();
    (*((*v11 & v16) + 0x4C0))();
    return;
  }

  v13 = OUTLINED_FUNCTION_111_10();
  if (((*(v2 + 32))(v13) & 1) == 0)
  {
    v15 = v10;
    goto LABEL_7;
  }

  v14 = [v5 view];
  if (v14)
  {
    v15 = v14;
    [v14 addSubview_];
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  __break(1u);
}

Swift::Void __swiftcall ConversationHUDViewController.disableMenuContainerViewInteraction()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_menuContainerView);
  if (v1)
  {
    v2 = one-time initialization token for conversationControls;
    v8 = v1;
    if (v2 != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v3 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v3, &static Logger.conversationControls);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v6, v7, "disableMenuContainerViewInteraction");
      OUTLINED_FUNCTION_26();
    }

    [v8 setUserInteractionEnabled_];
  }
}

Swift::Void __swiftcall ConversationHUDViewController.teardownMenuContainerView()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_menuContainerView;
  [*(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_menuContainerView) removeFromSuperview];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  OUTLINED_FUNCTION_13_2();
  v4 = *((*MEMORY[0x1E69E7D40] & v3) + 0x4C0);

  v4();
}

void ConversationHUDViewController.setupSecondaryPill(buttonType:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSg_ADtMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSg_ADtMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v153 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  v158 = v9 - v10;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_68_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v153 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v153 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v153 - v19;
  type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_17();
  v159 = v22 - v23;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v24);
  v160 = &v153 - v25;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v26);
  v161 = &v153 - v27;
  OUTLINED_FUNCTION_13_2();
  if ((*((*MEMORY[0x1E69E7D40] & v28) + 0x1A8))())
  {
    goto LABEL_41;
  }

  v29 = OUTLINED_FUNCTION_32_2();
  outlined init with copy of Notice?(v29, v30, v31, v32);
  OUTLINED_FUNCTION_22_5(v20);
  if (v60)
  {
    v33 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_176();
    (*(v34 + 304))();
    OUTLINED_FUNCTION_13_62();
    v36 = *v33 & v35;
    v37 = v161;
    (*(v36 + 2560))();

    OUTLINED_FUNCTION_22_5(v20);
    if (!v60)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_87();
    v37 = v161;
    _s15ConversationKit0A14ControlsRecipeVWObTm_3(v20, v161);
  }

  ConversationHUDViewController.wantsSecondaryPill(buttonType:)();
  if ((v38 & 1) == 0)
  {
    goto LABEL_14;
  }

  v39 = MEMORY[0x1E69E7D40];
  if (*&v0[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView])
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_17_76();
  v41 = (*(v40 + 528))();
  if (!v41)
  {
LABEL_14:
    OUTLINED_FUNCTION_0_230();
    v51 = v37;
    goto LABEL_40;
  }

LABEL_10:
  OUTLINED_FUNCTION_17_76();
  v43 = (*(v42 + 1128))();
  if (v43)
  {
    v44 = v43;
    ObjectType = swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v44, ObjectType, &protocol descriptor for SystemConversationControlsViewControllerDelegate))
    {
      v47 = v46;
      v48 = swift_getObjectType();
      v49 = (*(v47 + 56))(v48, v47);
      swift_unknownObjectRelease();
      v39 = MEMORY[0x1E69E7D40];
      if (v49)
      {
        OUTLINED_FUNCTION_0_230();
        v51 = v161;
LABEL_40:
        _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v51, v50);
LABEL_41:
        OUTLINED_FUNCTION_30_0();
        return;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_17_76();
  v156 = *(v52 + 304);
  v155 = v52 + 304;
  v156();
  OUTLINED_FUNCTION_13_62();
  (*((*v39 & v53) + 0x9D0))(v168);

  v157 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_secondaryPillView;
  v54 = *&v2[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_secondaryPillView];
  v55 = v161;
  if (v54)
  {
    _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v54 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_buttonType, v17);
    OUTLINED_FUNCTION_86_8(v17);
    _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v55, v14);
    OUTLINED_FUNCTION_86_8(v14);
    v56 = *(v3 + 48);
    outlined init with copy of Notice?(v17, v6, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
    outlined init with copy of Notice?(v14, &v6[v56], &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
    OUTLINED_FUNCTION_22_5(v6);
    if (v60)
    {
      v57 = OUTLINED_FUNCTION_46();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v57, v58, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
      OUTLINED_FUNCTION_22_5(&v6[v56]);
      if (v60)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
        v55 = v161;
        v59 = v157;
        goto LABEL_43;
      }
    }

    else
    {
      outlined init with copy of Notice?(v6, v1, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
      OUTLINED_FUNCTION_22_5(&v6[v56]);
      if (!v60)
      {
        v105 = &v6[v56];
        v106 = v160;
        _s15ConversationKit0A14ControlsRecipeVWObTm_3(v105, v160);
        v107 = static ConversationControlsSecondaryPillButtonType.== infix(_:_:)(v1, v106);
        _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v106, type metadata accessor for ConversationControlsSecondaryPillButtonType);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
        _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v1, type metadata accessor for ConversationControlsSecondaryPillButtonType);
        v39 = MEMORY[0x1E69E7D40];
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
        v55 = v161;
        v59 = v157;
        if (v107)
        {
LABEL_43:
          outlined init with copy of Notice?(v168, &v163, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
          if (!v164)
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v168, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
            OUTLINED_FUNCTION_0_230();
            _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v55, v132);
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v163, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
            goto LABEL_41;
          }

          outlined init with take of TapInteractionHandler(&v163, v165);
          v108 = v167;
          __swift_project_boxed_opaque_existential_1(v165, v166);
          v109 = OUTLINED_FUNCTION_28_0();
          v111 = v110(v109, v108);
          v113 = v112;
          v114 = *&v2[v59];
          if (v114)
          {
            v115 = v111;
            v116 = *((*v39 & *v114) + 0xC8);
            v117 = v114;
            v116(&v163);

            v118 = v164;
            if (v164)
            {
              v119 = __swift_project_boxed_opaque_existential_1(&v163, v164);
              v120 = *(v118 - 8);
              MEMORY[0x1EEE9AC00](v119);
              OUTLINED_FUNCTION_8();
              v123 = v122 - v121;
              (*(v120 + 16))(v122 - v121);
              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v163, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
              v124 = OUTLINED_FUNCTION_32_2();
              v126 = v125(v124);
              v128 = v127;
              (*(v120 + 8))(v123, v118);
              if (v115 == v126 && v113 == v128)
              {

                v131 = v161;
LABEL_64:
                outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v168, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
                OUTLINED_FUNCTION_0_230();
                v152 = v131;
                goto LABEL_65;
              }

              v130 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v131 = v161;
              v39 = MEMORY[0x1E69E7D40];
              if (v130)
              {
                goto LABEL_64;
              }
            }

            else
            {
              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v163, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);

              v39 = MEMORY[0x1E69E7D40];
            }
          }

          else
          {
          }

          if (one-time initialization token for conversationControls != -1)
          {
            OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
          }

          v133 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_52(v133, &static Logger.conversationControls);
          v134 = v2;
          v135 = Logger.logObject.getter();
          v136 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v135, v136))
          {
            v137 = OUTLINED_FUNCTION_42();
            v138 = OUTLINED_FUNCTION_23();
            *&v163 = v138;
            *v137 = 136315138;
            v162 = (*((*MEMORY[0x1E69E7D40] & *v134) + 0x148))();
            v139 = String.init<A>(reflecting:)();
            v141 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, v140, &v163);

            *(v137 + 4) = v141;
            _os_log_impl(&dword_1BBC58000, v135, v136, "[%s] SecondaryButton needs update (activity doesn't match currentActivity)", v137, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v138);
            OUTLINED_FUNCTION_3_26();
            v39 = MEMORY[0x1E69E7D40];
            OUTLINED_FUNCTION_27();
          }

          v142 = *&v2[v59];
          if (v142)
          {
            outlined init with copy of IDSLookupManager(v165, &v163);
            OUTLINED_FUNCTION_5_27();
            v144 = *(v143 + 208);
            v145 = v142;
            v144(&v163);

            v146 = *&v2[v59];
            if (v146)
            {
              v164 = type metadata accessor for ConversationHUDViewController(0);
              *&v163 = v134;
              v147 = *((*v39 & *v146) + 0x1C8);
              v148 = v134;
              v149 = v146;
              v147(&v163, sel_secondaryButtonTapped_);

              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v168, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
              OUTLINED_FUNCTION_0_230();
              _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v161, v150);
              __swift_destroy_boxed_opaque_existential_1(&v163);
LABEL_66:
              __swift_destroy_boxed_opaque_existential_1(v165);
              goto LABEL_41;
            }
          }

          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v168, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
          OUTLINED_FUNCTION_0_230();
          v152 = v161;
LABEL_65:
          _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v152, v151);
          goto LABEL_66;
        }

        goto LABEL_26;
      }

      v61 = OUTLINED_FUNCTION_46();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v61, v62, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
      OUTLINED_FUNCTION_0_230();
      _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v1, v63);
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSg_ADtMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSg_ADtMR);
    v55 = v161;
    v59 = v157;
LABEL_26:
    v64 = *&v2[v59];
    if (v64)
    {
      [v64 removeFromSuperview];
    }
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v65 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v65, &static Logger.conversationControls);
  OUTLINED_FUNCTION_5_143();
  v66 = v159;
  _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v55, v159);
  v67 = v2;
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();

  v70 = os_log_type_enabled(v68, v69);
  v71 = v157;
  if (v70)
  {
    v72 = OUTLINED_FUNCTION_30_1();
    v154 = swift_slowAlloc();
    v165[0] = v154;
    *v72 = 136315394;
    LOBYTE(v163) = (*((*v39 & *v67) + 0x148))();
    v73 = String.init<A>(reflecting:)();
    v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, v165);

    *(v72 + 4) = v75;
    *(v72 + 12) = 2080;
    OUTLINED_FUNCTION_5_143();
    v76 = v66;
    v77 = v66;
    v78 = v158;
    _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v76, v158);
    OUTLINED_FUNCTION_86_8(v78);
    specialized >> prefix<A>(_:)();
    v80 = v79;
    v82 = v81;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v78, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
    OUTLINED_FUNCTION_0_230();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v77, v83);
    v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v82, v165);
    v39 = MEMORY[0x1E69E7D40];

    *(v72 + 14) = v84;
    _os_log_impl(&dword_1BBC58000, v68, v69, "[%s] Setup SecondaryButton, type: %s", v72, 0x16u);
    swift_arrayDestroy();
    v55 = v161;
    OUTLINED_FUNCTION_27();
    v71 = v157;
    OUTLINED_FUNCTION_27();
  }

  else
  {

    OUTLINED_FUNCTION_0_230();
    v85 = _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v66, v86);
  }

  v87 = (v156)(v85);
  v88 = (*((*v39 & *v67) + 0x148))();
  OUTLINED_FUNCTION_5_143();
  v89 = v160;
  _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v55, v160);
  outlined init with copy of Notice?(v168, v165, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
  v90 = objc_allocWithZone(type metadata accessor for ConversationHUDSecondaryPillView(0));
  v91 = v67;
  v92 = v88;
  v93 = v90;
  ConversationHUDSecondaryPillView.init(controlsManager:controlsContext:buttonType:menuHostViewController:activity:)(v87, v92, v89, v2, &protocol witness table for ConversationHUDViewController, v165);
  v94 = OUTLINED_FUNCTION_24_1();
  v166 = type metadata accessor for ConversationHUDViewController(v94);
  v165[0] = v91;
  v95 = *((*v39 & *v90) + 0x1C8);
  v96 = v91;
  v95(v165, sel_secondaryButtonTapped_);
  __swift_destroy_boxed_opaque_existential_1(v165);
  v97 = v90;
  [v97 setTranslatesAutoresizingMaskIntoConstraints_];
  [v97 setAlpha_];

  v98 = *&v2[v71];
  *&v2[v71] = v93;
  v99 = v97;

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for shared);
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
  {
    OUTLINED_FUNCTION_176();
    v104 = (*(v103 + 504))();
    v102 = [v104 contentView];

    [v102 addSubview_];
    v101 = v161;
    goto LABEL_39;
  }

  v100 = [v96 view];
  v101 = v161;
  if (v100)
  {
    v102 = v100;
    [v100 addSubview_];
LABEL_39:

    ConversationHUDViewController.constrainSecondaryPillToControlsViewIfNeeded()();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v168, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
    OUTLINED_FUNCTION_0_230();
    v51 = v101;
    goto LABEL_40;
  }

  __break(1u);
}

uint64_t ConversationHUDViewController.shouldConstrainSecondaryPillAboveControlsView.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x468))();
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = v1;
  ObjectType = swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v2, ObjectType, &protocol descriptor for InCallConversationControlsViewControllerDelegate))
  {
    swift_unknownObjectRelease();
LABEL_5:
    v7 = 0;
    return v7 & 1;
  }

  v5 = v4;
  v6 = swift_getObjectType();
  (*(v5 + 24))(&v9, v6, v5);
  swift_unknownObjectRelease();
  v7 = v9 ^ 1;
  return v7 & 1;
}

void ConversationHUDViewController.constrainSecondaryPillToControlsViewIfNeeded()()
{
  if (ConversationHUDViewController.shouldShowFindoView.getter())
  {
    v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x210))();
    v38 = [v1 view];
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView);
    if (v2)
    {
      v38 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView);
      v3 = v2;
    }

    else
    {
      v38 = 0;
    }
  }

  v4 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_secondaryPillView);
  if (!v4)
  {
    goto LABEL_22;
  }

  if (!v38)
  {
    return;
  }

  v5 = v4;
  v38 = v38;
  v6 = (ConversationHUDViewController.shouldConstrainSecondaryPillAboveControlsView.getter() & 1) == 0;
  if (v6)
  {
    v7 = v38;
  }

  else
  {
    v7 = v5;
  }

  if (v6)
  {
    v8 = v5;
  }

  else
  {
    v8 = v38;
  }

  if ((ConversationHUDViewController.shouldShowFindoView.getter() & 1) == 0)
  {
    v23 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView);
    if (!v23)
    {

      v34 = v7;
      goto LABEL_23;
    }

    v36 = v8;
    v37 = v7;
    v35 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1BC4BA930;
    v25 = v5;
    v26 = v23;
    v27 = [v25 leadingAnchor];
    v28 = [v26 leadingAnchor];
    v29 = [v27 constraintEqualToAnchor_];

    *(v24 + 32) = v29;
    v30 = [v25 trailingAnchor];

    v31 = [v26 trailingAnchor];
    v32 = [v30 constraintEqualToAnchor_];

    *(v24 + 40) = v32;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
    v22.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v35 activateConstraints_];

    goto LABEL_21;
  }

  v36 = v8;
  v37 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BC4BA930;
  v10 = v5;
  v11 = [v10 leadingAnchor];
  v12 = [v0 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_28;
  }

  v13 = v12;
  v14 = [v12 leadingAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  *(v9 + 32) = v15;
  v16 = [v10 trailingAnchor];

  v17 = [v0 view];
  if (!v17)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v18 = v17;
  v19 = objc_opt_self();
  v20 = [v18 trailingAnchor];

  v21 = [v16 constraintEqualToAnchor_];
  *(v9 + 40) = v21;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  v22.super.isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 activateConstraints_];
LABEL_21:

  v33 = ConversationHUDViewController.secondaryPillVerticalMargin.getter();
  ConversationHUDViewController.verticallyConstrainView(_:above:spacing:)(v37, v36, v33);

LABEL_22:
  v34 = v38;
LABEL_23:
}

void ConversationHUDViewController.showSecondaryPill(buttonType:)()
{
  OUTLINED_FUNCTION_48_2();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_18_67();
  v8 = type metadata accessor for ConversationControlsSecondaryPillButtonType(v7);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v14 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v81 - v16;
  OUTLINED_FUNCTION_13_2();
  v18 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & v19) + 0x1C8))(1);
  OUTLINED_FUNCTION_13_2();
  if ((*((*v18 & v20) + 0x1A8))())
  {
    goto LABEL_35;
  }

  outlined init with copy of Notice?(v4, v1, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
  OUTLINED_FUNCTION_22_56();
  if (v21)
  {
    OUTLINED_FUNCTION_176();
    (*(v22 + 304))();
    OUTLINED_FUNCTION_13_62();
    (*((*v18 & v23) + 0xA00))();

    OUTLINED_FUNCTION_22_56();
    if (!v21)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_87();
    _s15ConversationKit0A14ControlsRecipeVWObTm_3(v1, v17);
  }

  ConversationHUDViewController.wantsSecondaryPill(buttonType:)();
  if ((v24 & 1) == 0)
  {
LABEL_34:
    OUTLINED_FUNCTION_0_230();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v17, v80);
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_176();
  v26 = (*(v25 + 1128))();
  if (!v26)
  {
LABEL_18:
    v43 = objc_opt_self();
    OUTLINED_FUNCTION_5_143();
    _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v17, v14);
    v44 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = v2;
    OUTLINED_FUNCTION_13_87();
    _s15ConversationKit0A14ControlsRecipeVWObTm_3(v14, v46 + v44);
    OUTLINED_FUNCTION_24();
    v47 = swift_allocObject();
    *(v47 + 16) = partial apply for closure #1 in ConversationHUDViewController.showSecondaryPill(buttonType:);
    *(v47 + 24) = v45;
    v89 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    v90 = v47;
    OUTLINED_FUNCTION_13_11();
    v86 = 1107296256;
    v87 = thunk for @escaping @callee_guaranteed () -> ();
    v88 = &block_descriptor_103;
    v48 = _Block_copy(&v85);
    v49 = v2;

    [v43 performWithoutAnimation_];
    _Block_release(v48);
    LOBYTE(v48) = swift_isEscapingClosureAtFileLocation();

    if (v48)
    {
      __break(1u);
    }

    else
    {
      v50 = *&v49[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_secondaryPillView];
      if (!v50)
      {
LABEL_27:
        _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v17, type metadata accessor for ConversationControlsSecondaryPillButtonType);

        goto LABEL_35;
      }

      v51 = v50;
      [v51 alpha];
      if (v52 != 0.0)
      {
        OUTLINED_FUNCTION_0_230();
        _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v17, v71);

        goto LABEL_35;
      }

      v82 = v51;
      v83 = v43;
      if (one-time initialization token for conversationControls == -1)
      {
LABEL_22:
        v53 = type metadata accessor for Logger();
        __swift_project_value_buffer(v53, &static Logger.conversationControls);
        v54 = v49;
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = OUTLINED_FUNCTION_42();
          v85 = OUTLINED_FUNCTION_23();
          *v57 = 136315138;
          v84 = (*((*v18 & *v54) + 0x148))();
          v58 = String.init<A>(reflecting:)();
          v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, &v85);

          *(v57 + 4) = v60;
          _os_log_impl(&dword_1BBC58000, v55, v56, "[%s] Showing SecondaryButton", v57, 0xCu);
          OUTLINED_FUNCTION_9_7();
          OUTLINED_FUNCTION_27();
        }

        v61 = v82;
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
        }

        OUTLINED_FUNCTION_0_1();
        (*(v62 + 1056))();
        OUTLINED_FUNCTION_24();
        v63 = swift_allocObject();
        *(v63 + 16) = v61;
        *(v63 + 24) = v54;
        v89 = partial apply for closure #2 in ConversationHUDViewController.showSecondaryPill(buttonType:);
        v90 = v63;
        OUTLINED_FUNCTION_13_11();
        v86 = 1107296256;
        OUTLINED_FUNCTION_6_5();
        v87 = v64;
        v88 = &block_descriptor_109_0;
        v65 = _Block_copy(&v85);
        v66 = v54;
        v67 = v61;

        v68 = OUTLINED_FUNCTION_99_5();
        [v69 v70];
        _Block_release(v65);

        goto LABEL_27;
      }
    }

    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    goto LABEL_22;
  }

  v27 = v26;
  ObjectType = swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v27, ObjectType, &protocol descriptor for SystemConversationControlsViewControllerDelegate) || (v29 = OUTLINED_FUNCTION_111_10(), ((*(v8 + 56))(v29, v8) & 1) == 0))
  {
    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v30 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView;
  v31 = *&v0[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView];
  if (!v31 || (v32 = swift_getObjectType(), !dynamic_cast_existential_1_conditional(v31, v32, &protocol descriptor for SystemApertureFaceTimeControlsView)))
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v72 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v72, &static Logger.conversationControls);
    v73 = v2;
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = OUTLINED_FUNCTION_42();
      v77 = swift_slowAlloc();
      *v76 = 138543362;
      v78 = *&v2[v30];
      *(v76 + 4) = v78;
      *v77 = v78;
      v79 = v78;
      _os_log_impl(&dword_1BBC58000, v74, v75, "Unable to show app launch pill view in system aperture for controlsView: %{public}@", v76, 0xCu);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v77, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_3_26();
      OUTLINED_FUNCTION_27();
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    goto LABEL_34;
  }

  v34 = v33;
  v35 = one-time initialization token for conversationControls;
  v36 = v31;
  if (v35 != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v37 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v37, &static Logger.conversationControls);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_46_1(v39))
  {
    v40 = OUTLINED_FUNCTION_33();
    *v40 = 0;
    _os_log_impl(&dword_1BBC58000, v38, v35, "[SystemAperture] Showing SecondaryButton", v40, 2u);
    OUTLINED_FUNCTION_27();
  }

  v41 = swift_getObjectType();
  v88 = type metadata accessor for ConversationHUDViewController(0);
  v85 = v2;
  (*(v34 + 24))(v17, v2, &protocol witness table for ConversationHUDViewController, &v85, sel_secondaryButtonTapped_, v41, v34);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_0_230();
  _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v17, v42);
  __swift_destroy_boxed_opaque_existential_1(&v85);
LABEL_35:
  OUTLINED_FUNCTION_20_6();
}

uint64_t closure #1 in ConversationHUDViewController.showSecondaryPill(buttonType:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(a2, &v10 - v5);
  v7 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  ConversationHUDViewController.setupSecondaryPill(buttonType:)();
  v8 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
  return (*((*MEMORY[0x1E69E7D40] & *a1) + 0x4C0))(v8);
}

id closure #2 in ConversationHUDViewController.showSecondaryPill(buttonType:)(void *a1, void *a2)
{
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0x1E0))();

  return [a1 setAlpha_];
}

void ConversationHUDViewController.hideSecondaryPill(remove:)(char a1)
{
  v4 = v1;
  v6 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1C8))(0);
  OUTLINED_FUNCTION_13_2();
  if ((*((*v6 & v7) + 0x1A8))())
  {
    return;
  }

  OUTLINED_FUNCTION_176();
  v9 = (*(v8 + 1128))();
  if (v9)
  {
    v10 = v9;
    ObjectType = swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v10, ObjectType, &protocol descriptor for SystemConversationControlsViewControllerDelegate))
    {
      v12 = OUTLINED_FUNCTION_111_10();
      if ((*(v2 + 56))(v12, v2))
      {
        v13 = *&v1[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView];
        if (v13)
        {
          v14 = swift_getObjectType();
          if (dynamic_cast_existential_1_conditional(v13, v14, &protocol descriptor for SystemApertureFaceTimeControlsView))
          {
            v16 = v15;
            v17 = one-time initialization token for conversationControls;
            v45 = v13;
            if (v17 != -1)
            {
              OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
            }

            v18 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_52(v18, &static Logger.conversationControls);
            v19 = Logger.logObject.getter();
            v20 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v19, v20))
            {
              *OUTLINED_FUNCTION_33() = 0;
              OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v21, v22, "[SystemAperture] Hiding SecondaryButton");
              OUTLINED_FUNCTION_26();
            }

            v23 = swift_getObjectType();
            (*(v16 + 32))(v23, v16);
            swift_unknownObjectRelease();

            return;
          }
        }
      }
    }

    swift_unknownObjectRelease();
  }

  v24 = *&v4[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_secondaryPillView];
  if (v24)
  {
    v25 = v24;
    [v25 alpha];
    if (v26 != 0.0)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
      }

      v27 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v27, &static Logger.conversationControls);
      v28 = v4;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v29, v30))
      {
        swift_slowAlloc();
        v31 = OUTLINED_FUNCTION_38_32();
        aBlock = v31;
        *v3 = 136315394;
        (*((*v6 & *v28) + 0x148))();
        v32 = String.init<A>(reflecting:)();
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &aBlock);

        *(v3 + 4) = v34;
        *(v3 + 12) = 1024;
        *(v3 + 14) = a1 & 1;
        _os_log_impl(&dword_1BBC58000, v29, v30, "[%s] Hiding SecondaryButton, should remove: %{BOOL}d", v3, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v31);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_3_26();
      }
    }

    objc_opt_self();
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
    }

    OUTLINED_FUNCTION_0_1();
    (*(v35 + 1056))();
    OUTLINED_FUNCTION_20();
    v36 = swift_allocObject();
    *(v36 + 16) = v25;
    v50 = partial apply for closure #1 in MultiwayViewController.fadeOutView(view:duration:completion:);
    v51 = v36;
    aBlock = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v48 = thunk for @escaping @callee_guaranteed () -> ();
    v49 = &block_descriptor_87;
    v37 = _Block_copy(&aBlock);
    v38 = v25;

    OUTLINED_FUNCTION_20();
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = swift_allocObject();
    *(v40 + 16) = v39;
    *(v40 + 24) = a1 & 1;
    v50 = partial apply for closure #2 in ConversationHUDViewController.hideSecondaryPill(remove:);
    v51 = v40;
    aBlock = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v48 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v49 = &block_descriptor_94;
    v41 = _Block_copy(&aBlock);

    v42 = OUTLINED_FUNCTION_99_5();
    [v43 v44];
    _Block_release(v41);
    _Block_release(v37);
  }
}

void closure #2 in ConversationHUDViewController.hideSecondaryPill(remove:)(char a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1 & 1) != 0 && (a3)
    {
      v7 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_secondaryPillView;
      v8 = *&Strong[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_secondaryPillView];
      if (v8)
      {
        v9 = one-time initialization token for conversationControls;
        v10 = v8;
        if (v9 != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        __swift_project_value_buffer(v11, &static Logger.conversationControls);
        v12 = v6;
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();

        v15 = os_log_type_enabled(v13, v14);
        v16 = MEMORY[0x1E69E7D40];
        if (v15)
        {
          v36 = v10;
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v37 = v18;
          *v17 = 136315138;
          v19 = v16;
          (*((*v16 & *v12) + 0x148))();
          v20 = String.init<A>(reflecting:)();
          v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v37);

          *(v17 + 4) = v22;
          _os_log_impl(&dword_1BBC58000, v13, v14, "[%s] Removing SecondaryButton", v17, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v18);
          MEMORY[0x1BFB23DF0](v18, -1, -1);
          v23 = v17;
          v10 = v36;
          MEMORY[0x1BFB23DF0](v23, -1, -1);
        }

        else
        {
          v19 = MEMORY[0x1E69E7D40];
        }

        [v10 removeFromSuperview];
        v33 = *&v6[v7];
        *&v6[v7] = 0;

        v34 = *&v12[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView];
        if (v34)
        {
          v35 = v34;
          ConversationHUDViewController.verticallyConstrainView(_:above:spacing:)(v35, 0, 0.0);
        }

        (*((*v19 & *v12) + 0x4C0))();
      }

      else
      {
        if (one-time initialization token for conversationControls != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        __swift_project_value_buffer(v24, &static Logger.conversationControls);
        v25 = v6;
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v37 = v29;
          *v28 = 136315138;
          (*((*MEMORY[0x1E69E7D40] & *v25) + 0x148))();
          v30 = String.init<A>(reflecting:)();
          v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v37);

          *(v28 + 4) = v32;
          _os_log_impl(&dword_1BBC58000, v26, v27, "[%s] Unexpectedly found nil secondaryPillView while attempting to remove it", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v29);
          MEMORY[0x1BFB23DF0](v29, -1, -1);
          MEMORY[0x1BFB23DF0](v28, -1, -1);
        }
      }
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall ConversationHUDViewController.statusViewTapped()()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_18_67();
  v6 = type metadata accessor for ConversationControlsRecipe(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_13_2();
  v11 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & v12) + 0x480))();
  OUTLINED_FUNCTION_22_56();
  if (!v13)
  {
    v14 = OUTLINED_FUNCTION_4_155();
    _s15ConversationKit0A14ControlsRecipeVWObTm_3(v14, v10);
    OUTLINED_FUNCTION_283();
    v16 = *((*v11 & v15) + 0x130);
    v16();
    OUTLINED_FUNCTION_13_62();
    (*((*v11 & v17) + 0x2A0))();
    v19 = v18;

    ObjectType = swift_getObjectType();
    v21 = (*(v19 + 464))(ObjectType, v19);
    v22 = swift_unknownObjectRelease();
    if (v21)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
      }

      v23 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v23, &static Logger.conversationControls);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_18_0(v25))
      {
        v26 = OUTLINED_FUNCTION_33();
        *v26 = 0;
        _os_log_impl(&dword_1BBC58000, v24, v25, "Deep linking to in-call scene to show call details card for PTT call", v26, 2u);
        OUTLINED_FUNCTION_4_4();
      }

      OUTLINED_FUNCTION_176();
      v28 = (*(v27 + 1128))();
      if (!v28)
      {
        goto LABEL_53;
      }

      v29 = v28;
      v30 = swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v29, v30, &protocol descriptor for SystemConversationControlsViewControllerDelegate))
      {
        v32 = v31;
        v33 = swift_getObjectType();
        (*(v32 + 40))(v33, v32);
      }

      goto LABEL_52;
    }

    v34 = (v16)(v22);
    v35 = ConversationControlsManager.isActiveCallGreenTea3P()();

    if (v35)
    {
      v36 = (v16)();
      ConversationControlsManager.openGreenTea3PApp(dismissBannerOnAppOpen:)(1);

LABEL_53:
      OUTLINED_FUNCTION_0_195();
      _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v10, v63);
      goto LABEL_54;
    }

    OUTLINED_FUNCTION_176();
    v37 += 141;
    v38 = *v37;
    v39 = (*v37)();
    if (v39)
    {
      v40 = v39;
      v41 = swift_getObjectType();
      v43 = dynamic_cast_existential_1_conditional(v40, v41, &protocol descriptor for SystemConversationControlsViewControllerDelegate);
      if (v43)
      {
        v65 = v42;
LABEL_21:
        v16();
        OUTLINED_FUNCTION_13_62();
        v45 = (*((*v11 & v44) + 0x380))();

        if ((v45 & 1) == 0)
        {
          goto LABEL_34;
        }

        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0(&one-time initialization token for shared);
        }

        if (v46 = static Features.shared, (Features.isICUIRedesignEnabled.getter()) && (v68 = 0, v66 = 0u, v67 = 0u, OUTLINED_FUNCTION_65_17(), OUTLINED_FUNCTION_75_14(), (v46) || *(v10 + v6[11]) != 2 || *(v10 + v6[12]) == 1)
        {
          if (v43)
          {
            if (one-time initialization token for conversationControls != -1)
            {
              OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
            }

            v47 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_52(v47, &static Logger.conversationControls);
            v48 = Logger.logObject.getter();
            v49 = static os_log_type_t.info.getter();
            if (OUTLINED_FUNCTION_18_0(v49))
            {
              v50 = OUTLINED_FUNCTION_33();
              *v50 = 0;
              _os_log_impl(&dword_1BBC58000, v48, v49, "Deep linking to in-call scene to show an AV-less call details card", v50, 2u);
              OUTLINED_FUNCTION_4_4();
            }

            v51 = swift_getObjectType();
            v65[3](v51);
            goto LABEL_52;
          }
        }

        else
        {
LABEL_34:
          if (v43)
          {
            if (ConversationControlsRecipe.allowsDeepLinkToFullScreenCallUI.getter())
            {
              goto LABEL_51;
            }

            OUTLINED_FUNCTION_9_106(25);
            v69 = 7;
            swift_unknownObjectRetain();
            static ConversationControlsType.== infix(_:_:)(v10, &v66);
            OUTLINED_FUNCTION_75_14();
            swift_unknownObjectRelease();
            if (v10)
            {
              v52 = swift_getObjectType();
              v65[4](v52);
LABEL_52:
              swift_unknownObjectRelease();
              goto LABEL_53;
            }
          }
        }

        OUTLINED_FUNCTION_176();
        if (((*(v53 + 1200))() & 1) == 0)
        {
          if (one-time initialization token for shared != -1)
          {
            OUTLINED_FUNCTION_0(&one-time initialization token for shared);
          }

          if (v54 = static Features.shared, v55 = Features.isICUIRedesignEnabled.getter(), (v55) && (v68 = 0, v66 = 0u, v67 = 0u, OUTLINED_FUNCTION_65_17(), v55 = OUTLINED_FUNCTION_75_14(), (v54) || *(v10 + v6[11]) != 2 || *(v10 + v6[12]) == 1)
          {
            v56 = (v38)(v55);
            if (v56)
            {
              v57 = v56;
              v58 = swift_getObjectType();
              if (dynamic_cast_existential_1_conditional(v57, v58, &protocol descriptor for InCallConversationControlsViewControllerDelegate))
              {
                v60 = v59;
                v61 = swift_getObjectType();
                (*(v60 + 16))(v61, v60);
                swift_unknownObjectRelease();
                goto LABEL_52;
              }

              swift_unknownObjectRelease();
            }
          }
        }

        if (*(v10 + v6[16]) != 1)
        {
          OUTLINED_FUNCTION_0_195();
          _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v10, v64);
          swift_unknownObjectRelease();
          goto LABEL_54;
        }

        if (!v43)
        {
          goto LABEL_53;
        }

LABEL_51:
        v62 = swift_getObjectType();
        v65[2](v62);
        goto LABEL_52;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v43 = 0;
    }

    v65 = 0;
    goto LABEL_21;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
LABEL_54:
  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ConversationHUDViewController.showCallDetailsButtonTapped()()
{
  v1 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_137();
  v2 += 41;
  v3 = *v2;
  if ((*v2)() == 2)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v4 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v4, &static Logger.conversationControls);
    v5 = v0;
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = OUTLINED_FUNCTION_42();
      v21 = OUTLINED_FUNCTION_23();
      *v7 = 136315138;
      v3();
      v8 = String.init<A>(reflecting:)();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v21);

      *(v7 + 4) = v10;
      _os_log_impl(&dword_1BBC58000, oslog, v6, "%s Unable to handle call details button press", v7, 0xCu);
      OUTLINED_FUNCTION_9_7();
      OUTLINED_FUNCTION_26();
    }

    else
    {
    }
  }

  else
  {
    OUTLINED_FUNCTION_293();
    (*(v11 + 304))();
    OUTLINED_FUNCTION_13_62();
    (*((*v1 & v12) + 0x398))(1);

    OUTLINED_FUNCTION_11_23();
    v14 = (*((*v1 & v13) + 0x468))();
    if (v14)
    {
      v15 = v14;
      ObjectType = swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v15, ObjectType, &protocol descriptor for SystemConversationControlsViewControllerDelegate))
      {
        v18 = v17;
        v19 = swift_getObjectType();
        (*(v18 + 16))(v19, v18);
      }

      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall ConversationHUDViewController.secondaryButtonTapped(_:)(UITapGestureRecognizer *a1)
{
  v2 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x130))(a1);
  OUTLINED_FUNCTION_20();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  ConversationControlsManager.secondaryPillButtonTapped(completion:)(partial apply for closure #1 in ConversationHUDViewController.secondaryButtonTapped(_:), v3);
}

void closure #1 in ConversationHUDViewController.secondaryButtonTapped(_:)(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, &static Logger.conversationControls);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315394;
      (*((*MEMORY[0x1E69E7D40] & *v6) + 0x148))();
      v11 = String.init<A>(reflecting:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v14);

      *(v9 + 4) = v13;
      *(v9 + 12) = 1024;
      *(v9 + 14) = a1 & 1;
      _os_log_impl(&dword_1BBC58000, v7, v8, "[%s] secondaryButtonTapped completion, hideButton?:%{BOOL}d", v9, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1BFB23DF0](v10, -1, -1);
      MEMORY[0x1BFB23DF0](v9, -1, -1);
    }

    if (a1)
    {
      ConversationHUDViewController.hideSecondaryPill(remove:)(1);
    }
  }
}

void ConversationHUDViewController.hudControlsSize.getter()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x210))();
  if (v2)
  {
    v3 = v2;
    if (ConversationHUDViewController.isUsingFindo.getter())
    {
      v4 = [v3 view];
      if (v4)
      {
        v5 = v4;
        v6 = (*((*v1 & *v0) + 0x498))();
        OUTLINED_FUNCTION_45_33(v7, v8, v9, v10, v6, sel_systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority_);
        OUTLINED_FUNCTION_0_137();

LABEL_8:
        return;
      }

      __break(1u);
      return;
    }
  }

  v11 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView);
  if (v11)
  {
    v12 = *((*v1 & *v0) + 0x498);
    v5 = v11;
    v13 = v12();
    OUTLINED_FUNCTION_45_33(v14, v15, v16, v17, v13, sel_systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority_);
    OUTLINED_FUNCTION_0_137();
    goto LABEL_8;
  }
}

double ConversationHUDViewController.defaultControlsSize.getter()
{
  v3 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x448))();
  OUTLINED_FUNCTION_0_137();
  if (v4 != 0.0 || v2 != 0.0)
  {
    v5 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_secondaryPillView);
    if (v5)
    {
      v6 = *((*v3 & *v0) + 0x498);
      v7 = v5;
      v8 = v6();
      OUTLINED_FUNCTION_45_33(v9, v10, v11, v12, v8, sel_systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority_);
      ConversationHUDViewController.secondaryPillVerticalMargin.getter();
    }
  }

  return v1;
}

double ConversationHUDViewController.secondaryPillVerticalMargin.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x148))();
  result = 0.0;
  if (v1 == 2)
  {
    Layout.MultiwayFaceTime.init()(v3);
    return v4;
  }

  return result;
}

void *ConversationHUDViewController.menuContainerFrame.getter()
{
  static Layout.ConversationControls.values.getter(v3);
  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result bounds];

    return static Layout.ConversationControls.values.getter(v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t key path getter for ConversationHUDViewController.delegate : ConversationHUDViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x468))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for ConversationHUDViewController.delegate : ConversationHUDViewController(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x470);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t ConversationHUDViewController.delegate.getter()
{
  OUTLINED_FUNCTION_37_1(OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_delegate);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t ConversationHUDViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_delegate);
  OUTLINED_FUNCTION_3_5(v4, v5);
  *(v2 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ConversationHUDViewController.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_30_2(v5, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return InCallControlsBaseCell.delegate.modify;
}

uint64_t key path setter for ConversationHUDViewController.recipe : ConversationHUDViewController(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of Notice?(a1, &v8 - v5, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x488))(v6);
}

uint64_t ConversationHUDViewController.recipe.didset(uint64_t a1)
{
  v111 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v112 = &v95[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v95[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v95[-v8];
  v10 = type metadata accessor for ConversationControlsRecipe(0);
  MEMORY[0x1EEE9AC00](v10);
  v113 = &v95[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = __swift_project_value_buffer(v12, static Logger.conversationKit);
  v14 = v1;
  v110 = v13;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v109 = v12;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v118[0] = v18;
    *v17 = 136315138;
    v19 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_recipe;
    swift_beginAccess();
    v20 = v6;
    if (__swift_getEnumTagSinglePayload(v14 + v19, 1, v10))
    {
      v122 = 0;
      v120 = 0u;
      v121 = 0u;
      v123 = -1;
    }

    else
    {
      outlined init with copy of ConversationControlsType(v14 + v19, &v120);
    }

    v21 = specialized >> prefix<A>(_:)(&v120);
    v23 = v22;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v120, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v118);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_1BBC58000, v15, v16, "[HUDController] recipe.didSet: type=%s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1BFB23DF0](v18, -1, -1);
    MEMORY[0x1BFB23DF0](v17, -1, -1);

    v12 = v109;
    v6 = v20;
  }

  else
  {
  }

  v25 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_recipe;
  swift_beginAccess();
  outlined init with copy of Notice?(v14 + v25, v9, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  }

  v27 = v113;
  _s15ConversationKit0A14ControlsRecipeVWObTm_3(v9, v113);
  if ([v14 isViewLoaded])
  {
    v28 = *(v14 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView);
    if (!v28)
    {
      goto LABEL_28;
    }

    ObjectType = swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v28, ObjectType, &protocol descriptor for ControlsViewUpdating))
    {
      v31 = v30;
      v32 = swift_getObjectType();
      v33 = *(v31 + 8);
      v34 = v12;
      v35 = v28;
      LOBYTE(v32) = v33(v27, v32, v31);

      v12 = v34;
      if (v32)
      {
        goto LABEL_34;
      }

LABEL_28:
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v12, &static Logger.conversationControls);
      v61 = v14;
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();

      v64 = os_log_type_enabled(v62, v63);
      v65 = MEMORY[0x1E69E7D40];
      if (v64)
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v115 = v67;
        *v66 = 136315138;
        LOBYTE(v114) = (*((*v65 & *v61) + 0x148))();
        v68 = String.init<A>(reflecting:)();
        v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &v115);

        *(v66 + 4) = v70;
        _os_log_impl(&dword_1BBC58000, v62, v63, "[%s] ConversationHUDViewController: update recipe -> setupControlsView", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v67);
        MEMORY[0x1BFB23DF0](v67, -1, -1);
        MEMORY[0x1BFB23DF0](v66, -1, -1);
      }

      v27 = v113;
      ConversationControlsRecipe.requiresAnimation(from:)(v111);
      ConversationHUDViewController.setupControlsView(animated:)();
LABEL_39:
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
      {
        goto LABEL_49;
      }

      v87 = (*((*v65 & *v14) + 0x210))();
      if (v87)
      {
        v88 = v87;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy15ConversationKit9FindoViewVGMd, &_s7SwiftUI19UIHostingControllerCy15ConversationKit9FindoViewVGMR);
        if (swift_dynamicCastClass())
        {
          dispatch thunk of UIHostingController.rootView.getter();

          v115 = v116;
          v116 = v117;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMR);
          State.wrappedValue.getter();
          (*(*v114 + 560))(v27);

          ConversationHUDViewController.updateFindoTrailingConstraint()();

LABEL_49:
          v92 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
          v93 = v112;
          __swift_storeEnumTagSinglePayload(v112, 1, 1, v92);
          ConversationHUDViewController.setupSecondaryPill(buttonType:)();
          v94 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v93, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
          (*((*v65 & *v14) + 0x4C0))(v94);
          __swift_storeEnumTagSinglePayload(v93, 1, 1, v92);
          ConversationHUDViewController.showSecondaryPill(buttonType:)();
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v93, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
          return _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v27, type metadata accessor for ConversationControlsRecipe);
        }
      }

      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&dword_1BBC58000, v89, v90, "Unable to cast to FindoView", v91, 2u);
        MEMORY[0x1BFB23DF0](v91, -1, -1);
      }

      goto LABEL_49;
    }

    v36 = &v27[*(v10 + 60)];
    v37 = *v36;
    v38 = *(v36 + 1);
    v39 = *(v36 + 2);
    v109 = *(v36 + 3);
    v40 = *(v36 + 4);
    v108 = v36[40];
    outlined init with copy of Notice?(v111, v6, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v10);
    v105 = v38;
    v107 = v37;
    if (EnumTagSinglePayload == 1)
    {
      v42 = v28;
      v43 = v37;
      v44 = v108;
      outlined copy of ConversationControlsRecipe.Actions?(v43, v38, v39, v109, v40, v108);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
      if (v44 >= 0xFE)
      {

        goto LABEL_34;
      }

      v102 = v39;
      v50 = 0;
      v101 = 0;
      v59 = 0;
      v60 = 0;
      v106 = 0;
      v104 = 254;
      v57 = v105;
      v58 = v107;
    }

    else
    {
      v45 = &v6[*(v10 + 60)];
      v46 = *(v45 + 1);
      v100 = *v45;
      v47 = *(v45 + 3);
      v99 = *(v45 + 2);
      v103 = v47;
      v106 = *(v45 + 4);
      v104 = v45[40];
      v98 = v28;
      v48 = v37;
      v49 = v38;
      v50 = v100;
      v102 = v39;
      v51 = v39;
      v52 = v104;
      v53 = v108;
      outlined copy of ConversationControlsRecipe.Actions?(v48, v49, v51, v109, v40, v108);
      v101 = v46;
      v54 = v46;
      v55 = v99;
      outlined copy of ConversationControlsRecipe.Actions?(v50, v54, v99, v103, v106, v52);
      _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v6, type metadata accessor for ConversationControlsRecipe);
      if (v53 > 0xFD)
      {

        v56 = v52 > 0xFD;
        v57 = v105;
        v58 = v107;
        v59 = v55;
        v60 = v103;
        if (v56)
        {
          goto LABEL_34;
        }

        goto LABEL_27;
      }

      if (v52 <= 0xFD)
      {
        v71 = v101;
        *&v120 = v50;
        *(&v120 + 1) = v101;
        v72 = v55;
        *&v121 = v55;
        *(&v121 + 1) = v103;
        v73 = v106;
        v122 = v106;
        v123 = v52;
        v97 = v40;
        v74 = v105;
        v118[0] = v107;
        v118[1] = v105;
        v75 = v109;
        v118[2] = v102;
        v118[3] = v109;
        v118[4] = v40;
        v76 = v108;
        v119 = v108;
        v96 = static ConversationControlsRecipe.Actions.== infix(_:_:)(v118, &v120);
        outlined consume of ConversationControlsRecipe.Actions?(v100, v71, v72, v103, v73, v52);

        outlined consume of ConversationControlsRecipe.Actions?(v107, v74, v102, v75, v97, v76);
        if ((v96 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_34:
        if (one-time initialization token for conversationControls != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v12, &static Logger.conversationControls);
        v77 = v14;
        v78 = Logger.logObject.getter();
        v79 = static os_log_type_t.default.getter();

        v80 = os_log_type_enabled(v78, v79);
        v65 = MEMORY[0x1E69E7D40];
        if (v80)
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v115 = v82;
          *v81 = 136315138;
          LOBYTE(v114) = (*((*v65 & *v77) + 0x148))();
          v83 = String.init<A>(reflecting:)();
          v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, &v115);

          *(v81 + 4) = v85;
          _os_log_impl(&dword_1BBC58000, v78, v79, "[%s] ConversationHUDViewController: update recipe -> updateControlsView", v81, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v82);
          v86 = v82;
          v27 = v113;
          MEMORY[0x1BFB23DF0](v86, -1, -1);
          MEMORY[0x1BFB23DF0](v81, -1, -1);
        }

        ConversationHUDViewController.updateControlsView()();
        goto LABEL_39;
      }

      v57 = v105;
      v58 = v107;
      v59 = v55;
      v60 = v103;
    }

LABEL_27:
    outlined consume of ConversationControlsRecipe.Actions?(v58, v57, v102, v109, v40, v108);
    outlined consume of ConversationControlsRecipe.Actions?(v50, v101, v59, v60, v106, v104);
    goto LABEL_28;
  }

  return _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v27, type metadata accessor for ConversationControlsRecipe);
}

uint64_t ConversationHUDViewController.recipe.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_recipe;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return outlined init with copy of Notice?(v1 + v3, a1, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
}

uint64_t ConversationHUDViewController.recipe.setter(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_44_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_101();
  v8 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_recipe;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of Notice?(v1 + v8, v2, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_30_2(v1 + v8, v16);
  outlined assign with copy of ConversationControlsRecipe?(a1, v1 + v8);
  swift_endAccess();
  ConversationHUDViewController.recipe.didset(v2);
  OUTLINED_FUNCTION_92_0();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, v10, v11);
  OUTLINED_FUNCTION_92_0();
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, v13, v14);
}

void (*ConversationHUDViewController.recipe.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OUTLINED_FUNCTION_40_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  v3[4] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[5] = v9;
  v10 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_recipe;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of Notice?(v1 + v10, v9, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  return ConversationHUDViewController.recipe.modify;
}

void ConversationHUDViewController.recipe.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    outlined init with copy of Notice?(*(*a1 + 40), v3, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
    ConversationHUDViewController.recipe.setter(v3);
    v5 = OUTLINED_FUNCTION_40_2();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, v6, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  }

  else
  {
    ConversationHUDViewController.recipe.setter(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

double ConversationHUDViewController.presentationSize.getter()
{
  OUTLINED_FUNCTION_37_1(OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_presentationSize);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return *v0;
}

uint64_t ConversationHUDViewController.presentationSize.setter()
{
  OUTLINED_FUNCTION_0_91();
  v3 = OUTLINED_FUNCTION_37_1(OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_presentationSize);
  result = OUTLINED_FUNCTION_3_5(v3, v4);
  *v0 = v2;
  v0[1] = v1;
  return result;
}

double ConversationHUDViewController.systemApertureElement.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_13_2();
  (*((*MEMORY[0x1E69E7D40] & v5) + 0x480))();
  v6 = type metadata accessor for ConversationControlsRecipe(0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v6))
  {
    v7 = 0;
    v8 = 0;
    v12 = 0u;
    v13 = xmmword_1BC4C9460;
    v11 = 0u;
    v10 = 0u;
  }

  else
  {
    memcpy(__dst, (v1 + *(v6 + 72)), 0x49uLL);
    outlined init with copy of Notice?(__dst, v14, &_s15ConversationKit21SystemApertureElementVSgMd, &_s15ConversationKit21SystemApertureElementVSgMR);
    v12 = __dst[1];
    v13 = __dst[0];
    v10 = __dst[3];
    v11 = __dst[2];
    v7 = *&__dst[4];
    v8 = BYTE8(__dst[4]);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  *a1 = v13;
  *(a1 + 16) = v12;
  result = *&v11;
  *(a1 + 32) = v11;
  *(a1 + 48) = v10;
  *(a1 + 64) = v7;
  *(a1 + 72) = v8;
  return result;
}

Swift::Void __swiftcall ConversationHUDViewController.updatePreferredContentSize()()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v7 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v7, &static Logger.conversationControls);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v9))
  {
    v10 = OUTLINED_FUNCTION_33();
    *v10 = 0;
    _os_log_impl(&dword_1BBC58000, v8, v9, "ConversationHUDViewController: updatePreferredContentSize", v10, 2u);
    OUTLINED_FUNCTION_3_26();
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v1, *MEMORY[0x1E69E8020], v3);
  v11 = _dispatchPreconditionTest(_:)();
  v12 = OUTLINED_FUNCTION_33_0();
  v13(v12);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v15 = *MEMORY[0x1E69DDCE0];
  v14 = *(MEMORY[0x1E69DDCE0] + 8);
  v16 = *(MEMORY[0x1E69DDCE0] + 16);
  v17 = *(MEMORY[0x1E69DDCE0] + 24);
  v18 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_176();
  v19 += 150;
  v20 = *v19;
  if ((*v19)())
  {
    static Layout.ConversationControls.values.getter(v49);
    v22 = v49[7];
    v21 = v49[8];
    v23 = [v2 view];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 SBUISA_layoutMode];

      if ((v25 - 2) >= 3)
      {
        [v2 setPreferredContentSize_];
      }

      else
      {
        [v2 preferredContentSize];
        v14 = (v26 - v22) * 0.5;
        v16 = -v21;
        v15 = 0.0;
        v17 = v14;
      }

      goto LABEL_12;
    }

LABEL_26:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_176();
  (*(v27 + 1104))();
  [v2 setPreferredContentSize_];
LABEL_12:
  OUTLINED_FUNCTION_176();
  v30 += 141;
  v31 = *v30;
  v32 = (*v30)();
  if (v32)
  {
    v33 = v32;
    ObjectType = swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v33, ObjectType, &protocol descriptor for SystemConversationControlsViewControllerDelegate))
    {
      v35 = OUTLINED_FUNCTION_111_10();
      (*(v1 + 48))(v35, v1, v15, v14, v16, v17);
    }

    v32 = swift_unknownObjectRelease();
  }

  if ((v31)(v32))
  {
    v37 = v36;
    v38 = swift_getObjectType();
    v39 = v20();
    (*(v37 + 16))(v39 & 1, v38, v37);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_176();
  (*(v40 + 304))();
  OUTLINED_FUNCTION_13_62();
  (*((*v18 & v41) + 0xAD0))();

  OUTLINED_FUNCTION_283();
  v43 = (*((*v18 & v42) + 0x210))();
  if (v43)
  {
    v44 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy15ConversationKit9FindoViewVGMd, &_s7SwiftUI19UIHostingControllerCy15ConversationKit9FindoViewVGMR);
    if (swift_dynamicCastClass())
    {
      dispatch thunk of UIHostingController.rootView.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMd, &_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMR);
      State.wrappedValue.getter();

      v46 = *&v2[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_shutterButtonDodging];
      if (v46)
      {
        v47 = (*(*v48 + 376))(v45);
        v46(v47 & 1);
      }
    }
  }
}

Swift::Void __swiftcall ConversationHUDViewController.updatePresentationSize(to:)(CGSize to)
{
  height = to.height;
  static Layout.ConversationControls.values.getter(v8);
  v4 = v8[0];
  v5 = OUTLINED_FUNCTION_37_1(OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_presentationSize);
  v7 = OUTLINED_FUNCTION_3_5(v5, v6);
  *v1 = v4;
  v1[1] = height;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x4C0))(v7);
}

Swift::Void __swiftcall ConversationHUDViewController.updateBackgroundBlur()()
{
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x468))())
  {
    v2 = v1;
    OUTLINED_FUNCTION_176();
    v3 += 63;
    v4 = *v3;
    v5 = (*v3)();
    v6 = [v5 effect];

    if (v6)
    {
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (!v7)
      {
      }
    }

    else
    {
      v7 = 0;
    }

    ObjectType = swift_getObjectType();
    v9 = (*(v2 + 48))(ObjectType, v2);
    v10 = v9;
    if ((((v7 == 0) ^ v9) & 1) == 0)
    {
      v11 = v4();
      if (v10)
      {
        v12 = [objc_opt_self() effectWithStyle_];
      }

      else
      {
        v12 = 0;
      }

      [v11 setEffect_];
    }

    v13 = v4();
    v16 = [v13 contentView];

    [v16 setClipsToBounds_];
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_194_0();
  }

  else
  {
    OUTLINED_FUNCTION_194_0();
  }
}

Swift::Void __swiftcall ConversationHUDViewController.updateBackgroundCornerRadius()()
{
  OUTLINED_FUNCTION_48_2();
  v1 = v0;
  swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView);
  if (v2 && (ObjectType = swift_getObjectType(), dynamic_cast_existential_1_conditional(v2, ObjectType, &protocol descriptor for FaceTimeControlsView)) && (v5 = v4, v6 = swift_getObjectType(), v7 = *(v5 + 96), v8 = v2, v28 = v7(v6, v5), v8, v28))
  {
    static Layout.ConversationControls.values.getter(v30);
    v9 = v30[19] * 0.5;
    v10 = v9 + ConversationHUDViewController.contentInsetForCornerRadius.getter();
    [v28 frame];
    v11 = CGRectGetHeight(v31) * 0.5;
    v12 = v11 + ConversationHUDViewController.contentInsetForCornerRadius.getter();
    if (v10 > v12)
    {
      v13 = v10;
    }

    else
    {
      v13 = v12;
    }

    v14 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1F8);
    v15 = v14();
    [v15 _continuousCornerRadius];
    v17 = v16;

    if (v17 != v13)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
      }

      v18 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v18, &static Logger.conversationControls);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_18_0(v20))
      {
        v21 = OUTLINED_FUNCTION_30_1();
        v22 = OUTLINED_FUNCTION_23();
        v29 = v22;
        *v21 = 136446466;
        v23 = _typeName(_:qualified:)();
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v29);

        *(v21 + 4) = v25;
        *(v21 + 12) = 2048;
        *(v21 + 14) = v13;
        _os_log_impl(&dword_1BBC58000, v19, v20, "[%{public}s] updating corner radius to %f", v21, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v22);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_4_4();
      }

      [v14() _setContinuousCornerRadius_];
    }

    OUTLINED_FUNCTION_20_6();
  }

  else
  {
    OUTLINED_FUNCTION_20_6();
  }
}

Swift::Void __swiftcall ConversationHUDViewController.updateControlsManagerObservers()()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v66 = &v60 - v4;
  v67 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  OUTLINED_FUNCTION_1();
  v64 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v60 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit0D31ControlsSecondaryPillButtonTypeO_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit0D31ControlsSecondaryPillButtonTypeO_GMR);
  OUTLINED_FUNCTION_1();
  v61 = v10;
  v62 = v9;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v60 - v12;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8DebounceVy_AA9PublishedV9PublisherVy15ConversationKit0F31ControlsSecondaryPillButtonTypeO_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO8DebounceVy_AA9PublishedV9PublisherVy15ConversationKit0F31ControlsSecondaryPillButtonTypeO_GSo17OS_dispatch_queueCGMR);
  OUTLINED_FUNCTION_1();
  v65 = v14;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  v63 = &v60 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit14EphemeralAlertVSg_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit14EphemeralAlertVSg_GMR);
  OUTLINED_FUNCTION_1();
  v19 = v18;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v60 - v21;
  OUTLINED_FUNCTION_13_2();
  v23 = MEMORY[0x1E69E7D40];
  v25 = *((*MEMORY[0x1E69E7D40] & v24) + 0x130);
  v25();
  OUTLINED_FUNCTION_13_62();
  (*((*v23 & v26) + 0x8F0))();

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_6_10();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v27, &_s7Combine9PublishedV9PublisherVy15ConversationKit14EphemeralAlertVSg_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit14EphemeralAlertVSg_GMR, v28);
  v29 = Publisher<>.sink(receiveValue:)();

  v30 = v17;
  v31 = v23;
  (*(v19 + 8))(v22, v30);
  OUTLINED_FUNCTION_11_23();
  v33 = (*((*v23 & v32) + 0x168))(v29);
  (v25)(v33);
  OUTLINED_FUNCTION_13_62();
  (*((*v23 & v34) + 0xA18))();

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_0_1();
  v36 = (*(v35 + 1056))();
  v37 = v60;
  MEMORY[0x1BFB21570](v36);
  OUTLINED_FUNCTION_158();
  type metadata accessor for NSObject(v38, v39, v40);
  v41 = static OS_dispatch_queue.main.getter();
  v69 = v41;
  type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v42 = v66;
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  OUTLINED_FUNCTION_6_10();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v47, v48, v49, v50);
  OUTLINED_FUNCTION_158();
  lazy protocol witness table accessor for type TUCall and conformance TUCall(v51, v52, v53, v54);
  v55 = v62;
  Publisher.debounce<A>(for:scheduler:options:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v42, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  (*(v64 + 8))(v37, v67);
  (*(v61 + 8))(v13, v55);
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Debounce<Published<ConversationControlsSecondaryPillButtonType>.Publisher, OS_dispatch_queue> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_AA9PublishedV9PublisherVy15ConversationKit0F31ControlsSecondaryPillButtonTypeO_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO8DebounceVy_AA9PublishedV9PublisherVy15ConversationKit0F31ControlsSecondaryPillButtonTypeO_GSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BE50]);
  v56 = Publisher<>.sink(receiveValue:)();

  v57 = OUTLINED_FUNCTION_33_0();
  v58(v57);
  OUTLINED_FUNCTION_11_23();
  (*((*v31 & v59) + 0x180))(v56);
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ConversationHUDViewController.updateControlsManagerObservers()(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = MEMORY[0x1E69E7D40];
    v8 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x130);
    v9 = v8();
    v10 = (*((*v7 & *v9) + 0x928))();

    v11 = v10 >> 5;
    if (v11 != 1)
    {
      if (v11 == 2)
      {
        if (v10)
        {
LABEL_6:
          v12 = v8();
          (*((*v7 & *v12) + 0xAD8))();

          v13 = *&v6[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView];
          if (!v13)
          {
            goto LABEL_17;
          }

          ObjectType = swift_getObjectType();
          if (!dynamic_cast_existential_1_conditional(v13, ObjectType, &protocol descriptor for FaceTimeControlsView))
          {
            goto LABEL_17;
          }

          v16 = v15;
          v17 = swift_getObjectType();
          v18 = *(v16 + 32);
          v19 = v13;
          v20 = v4;
          v21 = v19;
          outlined copy of ConversationControlsRecipe.View?(v3, v2);
          v18(v3, v2, v20, v17, v16);
          goto LABEL_16;
        }
      }

      else if (v11 != 3 || v10 != 96)
      {
        goto LABEL_6;
      }
    }

    if (!v3)
    {
LABEL_17:

      return;
    }

    v22 = one-time initialization token for conversationControls;
    v23 = v3;
    v24 = v2;
    if (v22 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, &static Logger.conversationControls);
    v26 = v23;
    v27 = v24;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = v37;
      *v30 = 136315138;
      v31 = v26;
      v32 = v27;
      v33 = String.init<A>(reflecting:)();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v38);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1BBC58000, v28, v29, "Ephemeral alert %s attempted to present over staging; ignoring and discarding.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1BFB23DF0](v37, -1, -1);
      v36 = v30;
      v7 = MEMORY[0x1E69E7D40];
      MEMORY[0x1BFB23DF0](v36, -1, -1);
    }

    v21 = v8();
    (*((*v7 & *v21) + 0x8E0))(0, 0, 0);

LABEL_16:
    goto LABEL_17;
  }
}

void closure #2 in ConversationHUDViewController.updateControlsManagerObservers()(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_storeEnumTagMultiPayload();
    v11 = static ConversationControlsSecondaryPillButtonType.== infix(_:_:)(a1, v8);
    _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v8, type metadata accessor for ConversationControlsSecondaryPillButtonType);
    if (v11)
    {
      ConversationHUDViewController.hideSecondaryPill(remove:)(1);
    }

    else
    {
      _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(a1, v5);
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
      ConversationHUDViewController.showSecondaryPill(buttonType:)();

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMR);
    }
  }
}

void ConversationHUDViewController.observeSidebarState()()
{
  OUTLINED_FUNCTION_29();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_101();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy15ConversationKit12SidebarStateOs5NeverOGSo9NSRunLoopCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy15ConversationKit12SidebarStateOs5NeverOGSo9NSRunLoopCGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_sidebarStateStream))
  {
    v21 = v6;
    v20 = SidebarStateStream.states.getter();
    v22[0] = v20;
    v9 = [objc_opt_self() mainRunLoop];
    v22[3] = v9;
    type metadata accessor for NSRunLoop.SchedulerOptions();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15ConversationKit12SidebarStateOs5NeverOGMd, &_s7Combine12AnyPublisherVy15ConversationKit12SidebarStateOs5NeverOGMR);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSRunLoop, 0x1E695DFD0);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<SidebarState, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15ConversationKit12SidebarStateOs5NeverOGMd, &_s7Combine12AnyPublisherVy15ConversationKit12SidebarStateOs5NeverOGMR, MEMORY[0x1E695BED8]);
    lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop, 0x1E695DFD0, MEMORY[0x1E696A010]);
    Publisher.receive<A>(on:options:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);

    OUTLINED_FUNCTION_20();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<SidebarState, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy15ConversationKit12SidebarStateOs5NeverOGSo9NSRunLoopCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy15ConversationKit12SidebarStateOs5NeverOGSo9NSRunLoopCGMR, MEMORY[0x1E695BE98]);
    OUTLINED_FUNCTION_92_0();
    Publisher<>.sink(receiveValue:)();
    OUTLINED_FUNCTION_28_0();

    (*(v21 + 8))(v8, v4);
    OUTLINED_FUNCTION_30_2(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_cancellables, v22);
    v14 = OUTLINED_FUNCTION_44_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
    OUTLINED_FUNCTION_92_0();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v16, v17, v18, v19);
    AnyCancellable.store<A>(in:)();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ConversationHUDViewController.observeSidebarState()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x210))();
    if (v4)
    {
      v5 = v4;
      v6 = [v4 view];

      if (!v6)
      {
        __break(1u);
        return;
      }

      [v6 setHidden_];
    }
  }
}

uint64_t ConversationHUDViewController.systemAperturePreferredContentSize.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView);
  if (!v1 || (v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView + 8), v11[0] = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView), v11[1] = v2, v3 = v1, __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit12ControlsView_pMd, &_s15ConversationKit12ControlsView_pMR), __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit42SystemAperturePreferredContentSizeProvider_pMd, &_s15ConversationKit42SystemAperturePreferredContentSizeProvider_pMR), (swift_dynamicCast() & 1) == 0))
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    goto LABEL_6;
  }

  if (!*(&v9 + 1))
  {
LABEL_6:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v8, &_s15ConversationKit42SystemAperturePreferredContentSizeProvider_pSgMd, &_s15ConversationKit42SystemAperturePreferredContentSizeProvider_pSgMR);
    return OUTLINED_FUNCTION_46();
  }

  outlined init with take of TapInteractionHandler(&v8, v11);
  v4 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v5 = OUTLINED_FUNCTION_28_0();
  v6(v5, v4);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return OUTLINED_FUNCTION_46();
}

Swift::Bool __swiftcall ConversationHUDViewController.gestureRecognizer(_:shouldReceive:)(UIGestureRecognizer *_, UITouch shouldReceive)
{
  v2 = [(objc_class *)shouldReceive.super.isa view];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (!v2)
    {

      v2 = 0;
    }
  }

  v4 = v2 == 0;

  return v4;
}

id ConversationHUDViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x1BFB209B0](a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id ConversationHUDViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationHUDViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for ConversationControlsViewController.delegate.modify in conformance ConversationHUDViewController(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x478))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

void (*protocol witness for ConversationControlsViewController.recipe.modify in conformance ConversationHUDViewController(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x490))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

void (*protocol witness for ConversationControlsViewController.controlsManager.modify in conformance ConversationHUDViewController(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x140))();
  return protocol witness for ControlsView.cnkContentAlpha.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

uint64_t ConversationHUDViewController.shareCardViewControllerDidDismiss(_:)(uint64_t a1, void *a2)
{
  v3 = *(v2 + *a2);
  *(v2 + *a2) = 0;

  OUTLINED_FUNCTION_13_2();
  v5 = *((*MEMORY[0x1E69E7D40] & v4) + 0x4C0);

  return v5();
}

Swift::Void __swiftcall ConversationHUDViewController.peoplePickerAdded(_:shouldAddOtherInvitedToRemoteMembers:)(Swift::OpaquePointer _, Swift::Bool shouldAddOtherInvitedToRemoteMembers)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x130);
  v4();
  OUTLINED_FUNCTION_13_62();
  osloga = (*((*v3 & v5) + 0x2C0))();

  if (osloga)
  {
    v4();
    OUTLINED_FUNCTION_13_62();
    (*((*v3 & v6) + 0x2A0))();

    addPeople(_:toConversation:onActiveCall:shouldAddOtherInvitedToRemoteMembers:)();
    swift_unknownObjectRelease();
    [v2 dismissPeoplePicker];
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v7 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v7, &static Logger.conversationControls);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = OUTLINED_FUNCTION_33();
      *v9 = 0;
      _os_log_impl(&dword_1BBC58000, oslog, v8, "Unable to add remote members, no conversation.", v9, 2u);
      OUTLINED_FUNCTION_27();
    }
  }

  OUTLINED_FUNCTION_194_0();
}

Swift::Void __swiftcall ConversationHUDViewController.dismissPeoplePicker()()
{
  v1 = v0;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v4))
  {
    v5 = OUTLINED_FUNCTION_33();
    *v5 = 0;
    _os_log_impl(&dword_1BBC58000, v3, v4, "Dismiss peoplePicker", v5, 2u);
    OUTLINED_FUNCTION_27();
  }

  [v1 dismissViewControllerAnimated:1 completion:0];
}

void type metadata completion function for ConversationHUDViewController(uint64_t a1)
{
  type metadata accessor for ConversationControlsRecipe?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of ConversationHUDViewController.shadowProperties.setter(uint64_t *a1)
{
  v2 = *(a1 + 2);
  v3 = a1[4];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x198);
  v6 = *a1;
  v7 = v2;
  v8 = *(a1 + 1);
  v9 = v3;
  return v4(&v6);
}

uint64_t _s15ConversationKit0A14ControlsRecipeVWObTm_3(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_24_1();
  v4(v3);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return a2;
}

uint64_t partial apply for closure #1 in ConversationHUDViewController.showSecondaryPill(buttonType:)()
{
  v1 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return closure #1 in ConversationHUDViewController.showSecondaryPill(buttonType:)(v3, v4);
}

uint64_t _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_24_1();
  v4(v3);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return a2;
}

id ShareCardHeaderView.body.getter@<X0>(char *a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, int a5@<W1>)
{
  closure #1 in ShareCardHeaderView.body.getter(a1, a5, a2, a3, a4);
  v9 = *&a1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationDidChangePublisher];
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_0_231(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine18PassthroughSubjectCyyts5NeverOGAA5GroupVyAA19_ConditionalContentVy15ConversationKit09ShareCardn10PlayHeaderD0VAN0no6StatusqD0VGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine18PassthroughSubjectCyyts5NeverOGAA5GroupVyAA19_ConditionalContentVy15ConversationKit09ShareCardn10PlayHeaderD0VAN0no6StatusqD0VGGGMR);
  *(a4 + *(v11 + 52)) = v9;
  v12 = (a4 + *(v11 + 56));
  *v12 = partial apply for closure #2 in ShareCardHeaderView.body.getter;
  v12[1] = v5;
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_0_231(v13);
  v14 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine18PassthroughSubjectCyyts5NeverOGAA5GroupVyAA012_ConditionalD0Vy15ConversationKit09ShareCardo10PlayHeaderF0VAP0op6StatusrF0VGGGAA25_AppearanceActionModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine18PassthroughSubjectCyyts5NeverOGAA5GroupVyAA012_ConditionalD0Vy15ConversationKit09ShareCardo10PlayHeaderF0VAP0op6StatusrF0VGGGAA25_AppearanceActionModifierVGMR) + 36));
  *v14 = partial apply for closure #3 in ShareCardHeaderView.body.getter;
  v14[1] = v5;
  v14[2] = 0;
  v14[3] = 0;
  swift_retain_n();
  v15 = a1;
  v18 = a2;

  v16 = v15;

  return v18;
}

void closure #1 in ShareCardHeaderView.body.getter(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a2;
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32[-v12];
  v14 = type metadata accessor for ShareCardStatusHeaderView(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy15ConversationKit09ShareCardH14PlayHeaderViewVAF0hi6StatuskL0V_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOy15ConversationKit09ShareCardH14PlayHeaderViewVAF0hi6StatuskL0V_GMR);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32[-v18];
  v36 = a3;
  v37 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit19ShareCardHeaderViewV0hC0OGMd, &_s7SwiftUI5StateVy15ConversationKit19ShareCardHeaderViewV0hC0OGMR);
  State.wrappedValue.getter();
  v20 = v35;
  if (v35)
  {
    v21 = a1;
    v22 = v20;
    v23 = ShareCardSharePlayHeaderView.init(controlsManager:app:)(v21, v22);
    v25 = v24;
    *v19 = v23;
    *(v19 + 1) = v24;
    v19[16] = v26;
    *(v19 + 3) = v27;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ShareCardSharePlayHeaderView and conformance ShareCardSharePlayHeaderView();
    lazy protocol witness table accessor for type ShareCardStatusHeaderView and conformance ShareCardStatusHeaderView();
    v28 = v23;
    v29 = v25;

    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v30 = type metadata accessor for ConversationControlsRecipe(0);
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v30);
    outlined init with copy of ConversationControlsRecipe?(v13, v10);
    v31 = a1;
    State.init(wrappedValue:)();
    outlined destroy of ConversationControlsRecipe?(v13);
    *v16 = v31;
    *(v16 + 4) = v33 & 1;
    outlined init with copy of ShareCardStatusHeaderView(v16, v19);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ShareCardSharePlayHeaderView and conformance ShareCardSharePlayHeaderView();
    lazy protocol witness table accessor for type ShareCardStatusHeaderView and conformance ShareCardStatusHeaderView();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ShareCardStatusHeaderView(v16);
  }
}

uint64_t closure #2 in ShareCardHeaderView.body.getter(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

void ShareCardHeaderView.updateView()(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = MEMORY[0x1E69E7D40];
  v8 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x988))();
  if (v8)
  {
    v9 = v8;
    if ([v8 state] == 1)
    {
      TUConversationActivitySession.generateType.getter(&v13);
      if (v13 != 6)
      {
        v13 = a3;
        v14 = a4;

        v12 = a3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit19ShareCardHeaderViewV0hC0OGMd, &_s7SwiftUI5StateVy15ConversationKit19ShareCardHeaderViewV0hC0OGMR);
        State.wrappedValue.setter();

        return;
      }
    }
  }

  v10 = (*((*v7 & *a1) + 0x860))();
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = v10;
  if (((*((*v7 & *v10) + 0x80))() & 1) == 0)
  {

LABEL_9:
    v13 = a3;
    v14 = a4;
    goto LABEL_10;
  }

  v13 = a3;
  v14 = a4;
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit19ShareCardHeaderViewV0hC0OGMd, &_s7SwiftUI5StateVy15ConversationKit19ShareCardHeaderViewV0hC0OGMR);
  State.wrappedValue.setter();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<SubscriptionView<PassthroughSubject<(), Never>, Group<_ConditionalContent<ShareCardSharePlayHeaderView, ShareCardStatusHeaderView>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<PassthroughSubject<(), Never>, Group<_ConditionalContent<ShareCardSharePlayHeaderView, ShareCardStatusHeaderView>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<PassthroughSubject<(), Never>, Group<_ConditionalContent<ShareCardSharePlayHeaderView, ShareCardStatusHeaderView>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine18PassthroughSubjectCyyts5NeverOGAA5GroupVyAA012_ConditionalD0Vy15ConversationKit09ShareCardo10PlayHeaderF0VAP0op6StatusrF0VGGGAA25_AppearanceActionModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine18PassthroughSubjectCyyts5NeverOGAA5GroupVyAA012_ConditionalD0Vy15ConversationKit09ShareCardo10PlayHeaderF0VAP0op6StatusrF0VGGGAA25_AppearanceActionModifierVGMR);
    lazy protocol witness table accessor for type SubscriptionView<PassthroughSubject<(), Never>, Group<_ConditionalContent<ShareCardSharePlayHeaderView, ShareCardStatusHeaderView>>> and conformance SubscriptionView<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<PassthroughSubject<(), Never>, Group<_ConditionalContent<ShareCardSharePlayHeaderView, ShareCardStatusHeaderView>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SubscriptionView<PassthroughSubject<(), Never>, Group<_ConditionalContent<ShareCardSharePlayHeaderView, ShareCardStatusHeaderView>>> and conformance SubscriptionView<A, B>()
{
  result = lazy protocol witness table cache variable for type SubscriptionView<PassthroughSubject<(), Never>, Group<_ConditionalContent<ShareCardSharePlayHeaderView, ShareCardStatusHeaderView>>> and conformance SubscriptionView<A, B>;
  if (!lazy protocol witness table cache variable for type SubscriptionView<PassthroughSubject<(), Never>, Group<_ConditionalContent<ShareCardSharePlayHeaderView, ShareCardStatusHeaderView>>> and conformance SubscriptionView<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI16SubscriptionViewVy7Combine18PassthroughSubjectCyyts5NeverOGAA5GroupVyAA19_ConditionalContentVy15ConversationKit09ShareCardn10PlayHeaderD0VAN0no6StatusqD0VGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine18PassthroughSubjectCyyts5NeverOGAA5GroupVyAA19_ConditionalContentVy15ConversationKit09ShareCardn10PlayHeaderD0VAN0no6StatusqD0VGGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubscriptionView<PassthroughSubject<(), Never>, Group<_ConditionalContent<ShareCardSharePlayHeaderView, ShareCardStatusHeaderView>>> and conformance SubscriptionView<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of ShareCardStatusHeaderView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareCardStatusHeaderView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ShareCardSharePlayHeaderView and conformance ShareCardSharePlayHeaderView()
{
  result = lazy protocol witness table cache variable for type ShareCardSharePlayHeaderView and conformance ShareCardSharePlayHeaderView;
  if (!lazy protocol witness table cache variable for type ShareCardSharePlayHeaderView and conformance ShareCardSharePlayHeaderView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShareCardSharePlayHeaderView and conformance ShareCardSharePlayHeaderView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShareCardStatusHeaderView and conformance ShareCardStatusHeaderView()
{
  result = lazy protocol witness table cache variable for type ShareCardStatusHeaderView and conformance ShareCardStatusHeaderView;
  if (!lazy protocol witness table cache variable for type ShareCardStatusHeaderView and conformance ShareCardStatusHeaderView)
  {
    type metadata accessor for ShareCardStatusHeaderView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShareCardStatusHeaderView and conformance ShareCardStatusHeaderView);
  }

  return result;
}

uint64_t outlined destroy of ShareCardStatusHeaderView(uint64_t a1)
{
  v2 = type metadata accessor for ShareCardStatusHeaderView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 ClarityUIPreviewNavigationDestination.init(contact:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *a3 = *a1;
  *(a3 + 16) = v3;
  *(a3 + 24) = v4;
  result = *a2;
  v6 = *(a2 + 16);
  *(a3 + 32) = *a2;
  *(a3 + 48) = v6;
  *(a3 + 64) = *(a2 + 32);
  return result;
}

uint64_t ClarityPreviewView.init(navigationPath:contact:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  outlined init with take of Binding<NavigationPath>(a1, a4);
  v9 = type metadata accessor for ClarityPreviewView(0);
  v10 = a4 + v9[5];
  *v10 = *a2;
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;
  v11 = a4 + v9[6];
  v12 = *(a3 + 16);
  *v11 = *a3;
  *(v11 + 16) = v12;
  *(v11 + 32) = *(a3 + 32);
  v13 = v9[7];
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_232(&one-time initialization token for shared);
  }

  *(a4 + v13) = static ClarityCameraModel.shared;
  v14 = v9[8];
  v15 = one-time initialization token for shared;

  if (v15 != -1)
  {
    swift_once();
  }

  *(a4 + v14) = static ClarityUICallHistory.shared;
}

uint64_t type metadata accessor for ClarityPreviewView(uint64_t a1)
{
  result = type metadata singleton initialization cache for ClarityPreviewView;
  if (!type metadata singleton initialization cache for ClarityPreviewView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void ClarityPreviewView.navigationPath.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd, &_s7SwiftUI7BindingVyAA14NavigationPathVGMR);

  JUMPOUT(0x1BFB20050);
}

uint64_t key path setter for ClarityPreviewView.navigationPath : ClarityPreviewView(uint64_t a1)
{
  v2 = type metadata accessor for NavigationPath();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return ClarityPreviewView.navigationPath.setter();
}