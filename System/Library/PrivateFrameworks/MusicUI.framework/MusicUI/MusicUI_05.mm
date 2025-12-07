uint64_t sub_2166F97E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SongDetailPageView(0, *(v4 + 16), *(v4 + 24), a4);
  v9 = *(*(v8 - 1) + 80);
  v10 = v4 + ((v9 + 32) & ~v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v10);

  v11 = v10 + v8[9];

  v12 = type metadata accessor for MappedSection(0);
  v13 = (v11 + v12[6]);
  v14 = _s7SectionV6HeaderVMa(0);
  if (!OUTLINED_FUNCTION_4_16(v14))
  {
    v15 = OUTLINED_FUNCTION_20_11();
    v6 = _s7SectionV6HeaderV12HeaderLockupOMa(v15);
    v16 = OUTLINED_FUNCTION_88_0();
    if (!__swift_getEnumTagSinglePayload(v16, v17, v6))
    {
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:

          goto LABEL_18;
        case 1u:
          v24 = OUTLINED_FUNCTION_9_12();
          v25 = type metadata accessor for ComposerSectionHeader(v24);
          v26 = v25[5];
          v7 = sub_21700D7A4();
          if (!OUTLINED_FUNCTION_21_2(&v13[v26]))
          {
            OUTLINED_FUNCTION_50();
            (*(v27 + 8))(&v13[v26], v7);
          }

          OUTLINED_FUNCTION_8_9(v25[6]);

          OUTLINED_FUNCTION_8_9(v25[10]);

          v28 = OUTLINED_FUNCTION_13_4(v25[11]);
          if (v29)
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v28);
          }

          v30 = OUTLINED_FUNCTION_20_11();
          v6 = type metadata accessor for ContentDescriptor(v30);
          v31 = OUTLINED_FUNCTION_88_0();
          if (!__swift_getEnumTagSinglePayload(v31, v32, v6))
          {

            v7 = *(v6 + 24);
            v33 = sub_217005EF4();
            if (!OUTLINED_FUNCTION_5_17(v33))
            {
              OUTLINED_FUNCTION_3_10();
              v34 = OUTLINED_FUNCTION_15_7();
              v35(v34);
            }
          }

          break;
        case 2u:
          if (*(v13 + 1))
          {

            if (*(v13 + 7))
            {
              __swift_destroy_boxed_opaque_existential_1Tm(v13 + 4);
            }
          }

          if (*(v13 + 10))
          {

            if (*(v13 + 16))
            {
              __swift_destroy_boxed_opaque_existential_1Tm(v13 + 13);
            }
          }

          type metadata accessor for DefaultSectionHeader(0);
          v19 = OUTLINED_FUNCTION_20_11();
          v6 = type metadata accessor for Artwork(v19);
          v20 = OUTLINED_FUNCTION_88_0();
          if (!__swift_getEnumTagSinglePayload(v20, v21, v6))
          {
            sub_21700C4B4();
            OUTLINED_FUNCTION_9_0();
            (*(v22 + 8))(v13);
            v6 = *(v6 + 20);
            sub_21700C444();
            OUTLINED_FUNCTION_9_0();
            (*(v23 + 8))(&v13[v6]);
          }

          break;
        case 3u:
          if (*(v13 + 1))
          {

            if (*(v13 + 7))
            {
              __swift_destroy_boxed_opaque_existential_1Tm(v13 + 4);
            }
          }

LABEL_18:

          break;
        default:
          break;
      }
    }
  }

  v18 = (v11 + v12[7]);
  type metadata accessor for MappedSection.Content(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 4u:
    case 5u:
    case 0xDu:
    case 0x17u:
    case 0x35u:
    case 0x3Au:
    case 0x3Bu:
      goto LABEL_128;
    case 1u:
      sub_21700C1E4();
      OUTLINED_FUNCTION_9_0();
      (*(v192 + 8))(v18);
      v148 = &qword_27CAB7938;
      v149 = &unk_217017C10;
      goto LABEL_130;
    case 2u:
      v119 = OUTLINED_FUNCTION_9_12();
      type metadata accessor for AnimatedTextListItem(v119);
      goto LABEL_81;
    case 3u:
    case 7u:
    case 0xBu:
    case 0xEu:
    case 0xFu:
    case 0x12u:
    case 0x13u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Fu:
    case 0x20u:
    case 0x21u:
    case 0x24u:
    case 0x2Du:
    case 0x33u:
    case 0x34u:
    case 0x36u:
    case 0x37u:
    case 0x38u:
    case 0x39u:
    case 0x3Du:
      goto LABEL_176;
    case 6u:
      v181 = OUTLINED_FUNCTION_9_12();
      v182 = type metadata accessor for MappedArtistLatestReleaseAndTopSongs(v181);
      v183 = v182[5];
      v184 = sub_21700D7A4();
      if (!__swift_getEnumTagSinglePayload(&v18[v183], 1, v184))
      {
        OUTLINED_FUNCTION_50();
        (*(v185 + 8))(&v18[v183], v184);
      }

      v355 = v184;
      v186 = &v18[v182[6]];
      if (!OUTLINED_FUNCTION_17_13(v186))
      {
        v187 = v186 + *(v5 + 20);
        v188 = _s7SectionV6HeaderV12HeaderLockupOMa(0);
        if (!OUTLINED_FUNCTION_18_8(v188))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:

              goto LABEL_246;
            case 1u:
              __swift_destroy_boxed_opaque_existential_1Tm(v187);
              v335 = type metadata accessor for ComposerSectionHeader(0);
              if (!__swift_getEnumTagSinglePayload(v187 + v335[5], 1, v355))
              {
                OUTLINED_FUNCTION_50();
                (*(v336 + 8))(v187 + v337);
              }

              v338 = (v187 + v335[11]);
              if (v338[3])
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v338);
              }

              v339 = v187 + v335[12];
              v340 = type metadata accessor for ContentDescriptor(0);
              if (!OUTLINED_FUNCTION_18_8(v340))
              {

                v341 = v335[6];
                v352 = sub_217005EF4();
                if (!__swift_getEnumTagSinglePayload(v339 + v341, 1, v352))
                {
                  OUTLINED_FUNCTION_50();
                  (*(v342 + 8))(v339 + v341);
                }
              }

              break;
            case 2u:
              if (*(v187 + 8))
              {

                if (*(v187 + 56))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v187 + 32));
                }
              }

              if (*(v187 + 80))
              {

                if (*(v187 + 128))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v187 + 104));
                }
              }

              v324 = v187 + *(type metadata accessor for DefaultSectionHeader(0) + 32);
              v325 = type metadata accessor for Artwork(0);
              if (!OUTLINED_FUNCTION_27_7(v325))
              {
                sub_21700C4B4();
                OUTLINED_FUNCTION_9_0();
                (*(v326 + 8))(v324);
                v351 = v324;
                v327 = *(v187 + 20);
                sub_21700C444();
                OUTLINED_FUNCTION_9_0();
                (*(v328 + 8))(v351 + v327);
              }

              break;
            case 3u:
              if (*(v187 + 8))
              {

                if (*(v187 + 56))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v187 + 32));
                }
              }

LABEL_246:

              break;
            default:
              break;
          }
        }
      }

      v189 = &v18[v182[8]];
      if (!OUTLINED_FUNCTION_17_13(v189))
      {
        v190 = (v189 + *(v5 + 20));
        v191 = _s7SectionV6HeaderV12HeaderLockupOMa(0);
        if (!__swift_getEnumTagSinglePayload(v190, 1, v191))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:

              goto LABEL_251;
            case 1u:
              __swift_destroy_boxed_opaque_existential_1Tm(v190);
              v343 = type metadata accessor for ComposerSectionHeader(0);
              v353 = v343[5];
              if (!__swift_getEnumTagSinglePayload(&v190[v353], 1, v355))
              {
                OUTLINED_FUNCTION_50();
                (*(v344 + 8))(&v190[v353], v355);
              }

              v345 = &v190[v343[11]];
              if (*(v345 + 3))
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v345);
              }

              v346 = &v190[v343[12]];
              v347 = type metadata accessor for ContentDescriptor(0);
              if (!OUTLINED_FUNCTION_21_2(v346))
              {

                v348 = *(v347 + 24);
                v349 = sub_217005EF4();
                if (!OUTLINED_FUNCTION_21_2(v346 + v348))
                {
                  OUTLINED_FUNCTION_50();
                  (*(v350 + 8))(v346 + v348, v349);
                }
              }

              break;
            case 2u:
              if (*(v190 + 1))
              {

                if (*(v190 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v190 + 4);
                }
              }

              if (*(v190 + 10))
              {

                if (*(v190 + 16))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v190 + 13);
                }
              }

              v329 = &v190[*(type metadata accessor for DefaultSectionHeader(0) + 32)];
              v330 = type metadata accessor for Artwork(0);
              if (!OUTLINED_FUNCTION_21_2(v329))
              {
                sub_21700C4B4();
                OUTLINED_FUNCTION_9_0();
                (*(v331 + 8))(v329);
                v332 = *(v330 + 20);
                sub_21700C444();
                OUTLINED_FUNCTION_9_0();
                (*(v333 + 8))(v329 + v332, v334);
              }

              break;
            case 3u:
              if (*(v190 + 1))
              {

                if (*(v190 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v190 + 4);
                }
              }

LABEL_251:

              break;
            default:
              break;
          }
        }
      }

LABEL_128:

      goto LABEL_177;
    case 8u:
      OUTLINED_FUNCTION_24_9();
      v83 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v83))
      {
        OUTLINED_FUNCTION_2_11();
        v84 = OUTLINED_FUNCTION_108();
        v85(v84);
      }

      v86 = type metadata accessor for ContainerDetailTracklistFooterLockup(0);
      OUTLINED_FUNCTION_1_15(v86);
      v87 = OUTLINED_FUNCTION_25_5();
      v88 = type metadata accessor for ContentDescriptor(v87);
      if (!OUTLINED_FUNCTION_19_3(v88))
      {

        v89 = *(v7 + 24);
        v90 = sub_217005EF4();
        if (!OUTLINED_FUNCTION_21_2(v6 + v89))
        {
          OUTLINED_FUNCTION_50();
          (*(v91 + 8))(v6 + v89, v90);
        }
      }

      OUTLINED_FUNCTION_8_9(*(v5 + 32));

      if (*&v18[*(v5 + 36) + 8])
      {
      }

      goto LABEL_176;
    case 9u:
      v92 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v92))
      {
        OUTLINED_FUNCTION_2_11();
        v93 = OUTLINED_FUNCTION_108();
        v94(v93);
      }

      v95 = OUTLINED_FUNCTION_24_9();
      v96 = type metadata accessor for CuratorDetailHeaderComponentModel(v95);
      __swift_destroy_boxed_opaque_existential_1Tm(&v18[v96[5]]);
      OUTLINED_FUNCTION_8_9(v96[6]);

      v97 = v96[7];
      v354 = sub_217005EF4();
      if (!__swift_getEnumTagSinglePayload(&v18[v97], 1, v354))
      {
        OUTLINED_FUNCTION_50();
        (*(v98 + 8))(&v18[v97]);
      }

      v99 = &v18[v96[8]];
      v100 = type metadata accessor for Artwork(0);
      if (!OUTLINED_FUNCTION_18_8(v100))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v101 + 8))(v99);
        v102 = *(v97 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v103 + 8))(&v99[v102]);
      }

      v104 = &v18[v96[10]];
      if (!OUTLINED_FUNCTION_21_2(v104))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v105 + 8))(v104);
        v106 = *(v97 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v107 + 8))(v104 + v106);
      }

      v108 = &v18[v96[11]];
      v109 = type metadata accessor for VideoArtwork(0);
      if (!OUTLINED_FUNCTION_27_7(v109))
      {

        v110 = *(v104 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v111 + 8))(&v108[v110]);
      }

      v112 = OUTLINED_FUNCTION_20_11();
      v113 = type metadata accessor for ContentDescriptor(v112);
      v114 = OUTLINED_FUNCTION_88_0();
      if (!__swift_getEnumTagSinglePayload(v114, v115, v113))
      {

        v116 = *(v113 + 24);
        if (!__swift_getEnumTagSinglePayload(&v18[v116], 1, v354))
        {
          OUTLINED_FUNCTION_50();
          (*(v117 + 8))(&v18[v116], v118);
        }
      }

      goto LABEL_177;
    case 0xAu:
      v154 = OUTLINED_FUNCTION_9_12();
      v155 = type metadata accessor for EmptyStateLockup(v154);
      v156 = v155[5];
      v157 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_17_13(&v18[v156]))
      {
        OUTLINED_FUNCTION_2_11();
        (*(v158 + 8))(&v18[v156], v157);
      }

      OUTLINED_FUNCTION_8_9(v155[7]);

      OUTLINED_FUNCTION_8_9(v155[8]);

      OUTLINED_FUNCTION_8_9(v155[9]);

      v159 = &v18[v155[10]];
      v5 = type metadata accessor for Artwork(0);
      if (!OUTLINED_FUNCTION_17_13(v159))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v160 + 8))(v159);
        v161 = *(v5 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v162 + 8))(v159 + v161);
      }

      v163 = OUTLINED_FUNCTION_20_11();
      v164 = type metadata accessor for ColorSchemeArtwork(v163);
      v165 = OUTLINED_FUNCTION_88_0();
      if (!__swift_getEnumTagSinglePayload(v165, v166, v164))
      {
        v167 = OUTLINED_FUNCTION_88_0();
        if (!__swift_getEnumTagSinglePayload(v167, v168, v5))
        {
          sub_21700C4B4();
          OUTLINED_FUNCTION_9_0();
          (*(v169 + 8))(v18);
          v170 = *(v5 + 20);
          sub_21700C444();
          OUTLINED_FUNCTION_9_0();
          (*(v171 + 8))(&v18[v170]);
        }

        v18 += *(v164 + 20);
        v172 = OUTLINED_FUNCTION_88_0();
        if (!__swift_getEnumTagSinglePayload(v172, v173, v5))
        {
          goto LABEL_159;
        }
      }

      goto LABEL_177;
    case 0xCu:
      v71 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v71))
      {
        OUTLINED_FUNCTION_2_11();
        v72 = OUTLINED_FUNCTION_108();
        v73(v72);
      }

      v74 = type metadata accessor for GroupedTextListLockup(0);
      OUTLINED_FUNCTION_1_15(v74);
      v75 = OUTLINED_FUNCTION_25_5();
      v76 = type metadata accessor for ModalPresentationDescriptor(v75);
      if (!OUTLINED_FUNCTION_19_3(v76))
      {

        v77 = *(v7 + 40);
        sub_21700D284();
        OUTLINED_FUNCTION_9_0();
        (*(v78 + 8))(v6 + v77);
      }

      goto LABEL_176;
    case 0x10u:
      v129 = OUTLINED_FUNCTION_9_12();
      type metadata accessor for InlineUpsell(v129);
      v130 = OUTLINED_FUNCTION_16_14();
      if (!OUTLINED_FUNCTION_5_17(v130))
      {
        OUTLINED_FUNCTION_3_10();
        v131 = OUTLINED_FUNCTION_15_7();
        v132(v131);
      }

      OUTLINED_FUNCTION_6_20();

      OUTLINED_FUNCTION_8_9(*(v5 + 28));

      OUTLINED_FUNCTION_8_9(*(v5 + 32));

      v133 = OUTLINED_FUNCTION_13_4(*(v5 + 36));
      if (v134)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v133);
      }

      v135 = OUTLINED_FUNCTION_13_4(*(v5 + 40));
      if (v136)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v135);
      }

      v137 = *(v5 + 44);
      goto LABEL_139;
    case 0x11u:
      v52 = OUTLINED_FUNCTION_9_12();
      type metadata accessor for LandingUpsell(v52);
      v53 = OUTLINED_FUNCTION_16_14();
      if (!OUTLINED_FUNCTION_5_17(v53))
      {
        OUTLINED_FUNCTION_3_10();
        v54 = OUTLINED_FUNCTION_15_7();
        v55(v54);
      }

      OUTLINED_FUNCTION_6_20();

      OUTLINED_FUNCTION_8_9(*(v5 + 28));

      OUTLINED_FUNCTION_8_9(*(v5 + 32));

      OUTLINED_FUNCTION_8_9(*(v5 + 36));

      v56 = OUTLINED_FUNCTION_13_4(*(v5 + 40));
      if (v57)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v56);
      }

      v58 = OUTLINED_FUNCTION_13_4(*(v5 + 44));
      if (v59)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v58);
      }

      v60 = OUTLINED_FUNCTION_13_4(*(v5 + 48));
      if (v61)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v60);
      }

      v62 = &v18[*(v5 + 52)];
      v63 = type metadata accessor for Artwork(0);
      if (!__swift_getEnumTagSinglePayload(v62, 1, v63))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v64 + 8))(v62);
        v65 = *(v63 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v66 + 8))(v62 + v65);
      }

      v18 += *(v5 + 56);
      v67 = OUTLINED_FUNCTION_88_0();
      if (__swift_getEnumTagSinglePayload(v67, v68, v63))
      {
        goto LABEL_177;
      }

      sub_21700C4B4();
      OUTLINED_FUNCTION_9_0();
      (*(v69 + 8))(v18);
      v70 = *(v63 + 20);
      goto LABEL_160;
    case 0x14u:
      v142 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v142))
      {
        OUTLINED_FUNCTION_2_11();
        v143 = OUTLINED_FUNCTION_108();
        v144(v143);
      }

      v145 = type metadata accessor for ListSection(0);
      OUTLINED_FUNCTION_1_15(v145);
      OUTLINED_FUNCTION_8_9(v146);

      OUTLINED_FUNCTION_8_9(*(v5 + 28));

      goto LABEL_176;
    case 0x15u:

      __swift_destroy_boxed_opaque_existential_1Tm(v18 + 1);
      v174 = type metadata accessor for GradientListRowModel(0);
      v175 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_5_17(v175))
      {
        OUTLINED_FUNCTION_3_10();
        v176 = OUTLINED_FUNCTION_15_7();
        v177(v176);
      }

      v178 = OUTLINED_FUNCTION_13_4(*(v174 + 28));
      if (v179)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v178);
      }

      v180 = &v18[*(v174 + 32)];
      if (*(v180 + 4))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v180 + 1);
      }

      goto LABEL_121;
    case 0x16u:
      v221 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v221))
      {
        OUTLINED_FUNCTION_2_11();
        v222 = OUTLINED_FUNCTION_108();
        v223(v222);
      }

      v224 = type metadata accessor for ParagraphComponentModel(0);
      OUTLINED_FUNCTION_1_15(v224);
      OUTLINED_FUNCTION_8_9(v225);
      goto LABEL_152;
    case 0x18u:
      sub_21700C924();
      OUTLINED_FUNCTION_9_0();
      (*(v147 + 8))(v18);
      v148 = &qword_27CAB7940;
      v149 = &unk_21701C440;
LABEL_130:
      __swift_instantiateConcreteTypeFromMangledNameV2(v148, v149);
      goto LABEL_176;
    case 0x19u:
      v150 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v150))
      {
        OUTLINED_FUNCTION_2_11();
        v151 = OUTLINED_FUNCTION_108();
        v152(v151);
      }

      v153 = type metadata accessor for PopoverSelector(0);
      OUTLINED_FUNCTION_1_15(v153);
LABEL_152:

      goto LABEL_174;
    case 0x1Du:
      v207 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v207))
      {
        OUTLINED_FUNCTION_2_11();
        v208 = OUTLINED_FUNCTION_108();
        v209(v208);
      }

      ContextLockup = type metadata accessor for SearchQueryContextLockup(0);
      OUTLINED_FUNCTION_1_15(ContextLockup);
      OUTLINED_FUNCTION_8_9(v211);

      OUTLINED_FUNCTION_8_9(*(v5 + 32));

      OUTLINED_FUNCTION_8_9(*(v5 + 36));

      OUTLINED_FUNCTION_8_9(*(v5 + 40));

      goto LABEL_176;
    case 0x1Eu:
      __swift_destroy_boxed_opaque_existential_1Tm(v18);

      v70 = *(type metadata accessor for MappedSearchResultsList(0) + 24);
      sub_21700D194();
      goto LABEL_161;
    case 0x22u:
      v124 = OUTLINED_FUNCTION_9_12();
      type metadata accessor for SocialOnboardingNotificationSettingsPageLockup(v124);
      v125 = OUTLINED_FUNCTION_16_14();
      if (!OUTLINED_FUNCTION_5_17(v125))
      {
        OUTLINED_FUNCTION_3_10();
        v126 = OUTLINED_FUNCTION_15_7();
        v127(v126);
      }

      goto LABEL_87;
    case 0x23u:
      __swift_destroy_boxed_opaque_existential_1Tm(v18);

      v123 = *(type metadata accessor for SocialOnboardingPrivacySettingsPageLockup(0) + 48);
      goto LABEL_170;
    case 0x25u:

      __swift_destroy_boxed_opaque_existential_1Tm(v18 + 2);
      v5 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup(0);
      v257 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_5_17(v257))
      {
        OUTLINED_FUNCTION_3_10();
        v258 = OUTLINED_FUNCTION_15_7();
        v259(v258);
      }

LABEL_174:
      v128 = *(v5 + 28);
      goto LABEL_175;
    case 0x26u:
      v44 = type metadata accessor for Artwork(0);
      if (!OUTLINED_FUNCTION_4_16(v44))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v45 + 8))(v18);
        v5 = *(v5 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v46 + 8))(&v18[v5]);
      }

      v47 = type metadata accessor for SocialOnboardingWelcomePageLockup(0);
      OUTLINED_FUNCTION_11_13(v47);
      v48 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_5_17(v48))
      {
        OUTLINED_FUNCTION_3_10();
        v49 = OUTLINED_FUNCTION_15_7();
        v50(v49);
      }

      OUTLINED_FUNCTION_8_9(*(v5 + 28));

LABEL_87:
      v128 = *(v5 + 32);
      goto LABEL_175;
    case 0x27u:
      OUTLINED_FUNCTION_24_9();
      v226 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v226))
      {
        OUTLINED_FUNCTION_2_11();
        v227 = OUTLINED_FUNCTION_108();
        v228(v227);
      }

      v229 = type metadata accessor for SocialProfileDetailHeaderLockup(0);
      OUTLINED_FUNCTION_1_15(v229);
      v231 = &v18[v230];

      v232 = *(type metadata accessor for ContentDescriptor(0) + 24);
      v233 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_26_11(v233))
      {
        OUTLINED_FUNCTION_3_10();
        (*(v234 + 8))(&v231[v232], v6);
      }

      OUTLINED_FUNCTION_8_9(*(v5 + 28));

      OUTLINED_FUNCTION_8_9(*(v5 + 32));

      v235 = OUTLINED_FUNCTION_20_11();
      v236 = type metadata accessor for Artwork(v235);
      if (!OUTLINED_FUNCTION_4_16(v236))
      {
LABEL_159:
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v237 + 8))(v18);
        v70 = *(v5 + 20);
LABEL_160:
        sub_21700C444();
LABEL_161:
        OUTLINED_FUNCTION_9_0();
        (*(v238 + 8))(&v18[v70], v239);
      }

      goto LABEL_177;
    case 0x28u:
      OUTLINED_FUNCTION_24_9();
      v240 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v240))
      {
        OUTLINED_FUNCTION_2_11();
        v241 = OUTLINED_FUNCTION_108();
        v242(v241);
      }

      v243 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
      OUTLINED_FUNCTION_1_15(v243);
      v245 = &v18[v244];

      v246 = *(type metadata accessor for ContentDescriptor(0) + 24);
      v247 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_26_11(v247))
      {
        OUTLINED_FUNCTION_3_10();
        (*(v248 + 8))(&v245[v246], v6);
      }

      OUTLINED_FUNCTION_8_9(*(v5 + 28));

      OUTLINED_FUNCTION_8_9(*(v5 + 32));

      OUTLINED_FUNCTION_8_9(*(v5 + 44));

      OUTLINED_FUNCTION_8_9(*(v5 + 48));

      OUTLINED_FUNCTION_8_9(*(v5 + 52));

      OUTLINED_FUNCTION_8_9(*(v5 + 56));

      v249 = OUTLINED_FUNCTION_25_5();
      v250 = type metadata accessor for Artwork(v249);
      if (!OUTLINED_FUNCTION_19_3(v250))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v251 + 8))(v6);
        v252 = *(v245 + 5);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v253 + 8))(v6 + v252);
      }

      OUTLINED_FUNCTION_8_9(*(v5 + 68));
      goto LABEL_176;
    case 0x29u:
      v193 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v193))
      {
        OUTLINED_FUNCTION_2_11();
        v194 = OUTLINED_FUNCTION_108();
        v195(v194);
      }

      FriendsButtonComponentModel = type metadata accessor for SocialProfileFindFriendsButtonComponentModel(0);
      OUTLINED_FUNCTION_1_15(FriendsButtonComponentModel);
      OUTLINED_FUNCTION_8_9(v197);

      v137 = *(v5 + 28);
      goto LABEL_139;
    case 0x2Au:
      v138 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v138))
      {
        OUTLINED_FUNCTION_2_11();
        v139 = OUTLINED_FUNCTION_108();
        v140(v139);
      }

      v141 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader(0);
      OUTLINED_FUNCTION_11_13(v141);
      goto LABEL_176;
    case 0x2Bu:
      v198 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v198))
      {
        OUTLINED_FUNCTION_2_11();
        v199 = OUTLINED_FUNCTION_108();
        v200(v199);
      }

      v201 = type metadata accessor for SocialProfileFollowRequestResponseHeader(0);
      OUTLINED_FUNCTION_1_15(v201);
      OUTLINED_FUNCTION_8_9(v202);

      OUTLINED_FUNCTION_8_9(*(v5 + 28));

      v203 = OUTLINED_FUNCTION_13_4(*(v5 + 32));
      if (v204)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v203);
      }

      v137 = *(v5 + 36);
LABEL_139:
      v205 = OUTLINED_FUNCTION_13_4(v137);
      if (v206)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v205);
      }

      goto LABEL_177;
    case 0x2Cu:
      v79 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v79))
      {
        OUTLINED_FUNCTION_2_11();
        v80 = OUTLINED_FUNCTION_108();
        v81(v80);
      }

      v82 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel(0);
      OUTLINED_FUNCTION_11_13(v82);
      goto LABEL_176;
    case 0x2Eu:
      v51 = OUTLINED_FUNCTION_9_12();
      type metadata accessor for SocialOnboardingSharedPlaylistPageLockup(v51);
LABEL_81:
      v120 = OUTLINED_FUNCTION_16_14();
      if (!OUTLINED_FUNCTION_5_17(v120))
      {
        OUTLINED_FUNCTION_3_10();
        v121 = OUTLINED_FUNCTION_15_7();
        v122(v121);
      }

      goto LABEL_176;
    case 0x2Fu:
      v36 = OUTLINED_FUNCTION_9_12();
      type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup(v36);
      v37 = OUTLINED_FUNCTION_16_14();
      if (!OUTLINED_FUNCTION_5_17(v37))
      {
        OUTLINED_FUNCTION_3_10();
        v38 = OUTLINED_FUNCTION_15_7();
        v39(v38);
      }

LABEL_121:

      goto LABEL_176;
    case 0x30u:
      v40 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v40))
      {
        OUTLINED_FUNCTION_2_11();
        v41 = OUTLINED_FUNCTION_108();
        v42(v41);
      }

      v43 = type metadata accessor for SocialProfileHorizontalLockupSection(0);
      OUTLINED_FUNCTION_1_15(v43);

      if (*&v18[*(v5 + 28)] == 1)
      {
        goto LABEL_177;
      }

LABEL_176:

LABEL_177:
      v260 = v12[9];
      v261 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_23_4(v11 + v260))
      {
        OUTLINED_FUNCTION_50();
        (*(v262 + 8))(v11 + v260, v261);
      }

      v263 = v11 + v12[10];
      v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7948, &unk_217017C20);
      if (!OUTLINED_FUNCTION_17_13(v263))
      {

        v265 = *(v264 + 36);
        sub_21700CDF4();
        OUTLINED_FUNCTION_9_0();
        (*(v266 + 8))(v263 + v265);
      }

      sub_2166B8588(*(v10 + v8[11]), *(v10 + v8[11] + 8));
      v267 = (v10 + v8[12]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7920, &unk_217028D10);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v268 = type metadata accessor for ToolbarConfiguration(0);
        if (!OUTLINED_FUNCTION_14_9(v268))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              v269 = type metadata accessor for ContentDescriptor(0);
              if (!OUTLINED_FUNCTION_14_9(v269))
              {

                v270 = *(v10 + 24);
                v271 = sub_217005EF4();
                if (!OUTLINED_FUNCTION_22_8(&v267[v270]))
                {
                  OUTLINED_FUNCTION_50();
                  (*(v272 + 8))(&v267[v270], v271);
                }
              }

              v273 = type metadata accessor for ArtistPageToolbarContent(0);
              v274 = v273[5];
              sub_21700C384();
              OUTLINED_FUNCTION_9_0();
              (*(v275 + 8))(&v267[v274]);
              v276 = v273[6];
              sub_21700DFD4();
              OUTLINED_FUNCTION_9_0();
              (*(v277 + 8))(&v267[v276]);

              sub_2166B8588(*&v267[v273[8]], *&v267[v273[8] + 8]);

              v278 = type metadata accessor for ArtistPageToolbarContentProvider(0);
              goto LABEL_221;
            case 1u:
              if (!OUTLINED_FUNCTION_23_4(v267))
              {
                OUTLINED_FUNCTION_50();
                (*(v299 + 8))(v267, v261);
              }

              v300 = type metadata accessor for CuratorDetailHeaderComponentModel(0);
              __swift_destroy_boxed_opaque_existential_1Tm(&v267[v300[5]]);
              OUTLINED_FUNCTION_28_0();
              v301 = v300[7];
              v302 = sub_217005EF4();
              if (!OUTLINED_FUNCTION_22_8(&v267[v301]))
              {
                OUTLINED_FUNCTION_50();
                (*(v303 + 8))(&v267[v301], v302);
              }

              v304 = &v267[v300[8]];
              v305 = type metadata accessor for Artwork(0);
              if (!OUTLINED_FUNCTION_23_4(v304))
              {
                sub_21700C4B4();
                OUTLINED_FUNCTION_9_0();
                (*(v306 + 8))(v304);
                v307 = *(v305 + 20);
                sub_21700C444();
                OUTLINED_FUNCTION_9_0();
                (*(v308 + 8))(v304 + v307);
              }

              v309 = &v267[v300[10]];
              if (!OUTLINED_FUNCTION_23_4(v309))
              {
                sub_21700C4B4();
                OUTLINED_FUNCTION_9_0();
                (*(v310 + 8))(v309);
                v311 = *(v305 + 20);
                sub_21700C444();
                OUTLINED_FUNCTION_9_0();
                (*(v312 + 8))(v309 + v311);
              }

              v313 = &v267[v300[11]];
              v314 = type metadata accessor for VideoArtwork(0);
              if (!OUTLINED_FUNCTION_4_16(v314))
              {

                v315 = *(v309 + 20);
                sub_21700C444();
                OUTLINED_FUNCTION_9_0();
                (*(v316 + 8))(&v313[v315]);
              }

              v317 = &v267[v300[12]];
              v318 = type metadata accessor for ContentDescriptor(0);
              if (!OUTLINED_FUNCTION_23_4(v317))
              {

                v319 = *(v318 + 24);
                if (!OUTLINED_FUNCTION_22_8(v317 + v319))
                {
                  OUTLINED_FUNCTION_50();
                  (*(v320 + 8))(v317 + v319, v302);
                }
              }

              v278 = type metadata accessor for CuratorPageToolbarContentProvider(0);
              goto LABEL_221;
            case 2u:
              v282 = sub_21700C4B4();
              if (!OUTLINED_FUNCTION_14_9(v282))
              {
                OUTLINED_FUNCTION_50();
                (*(v283 + 8))(v267, v10);
              }

              v284 = type metadata accessor for SocialProfileDescriptor(0);
              OUTLINED_FUNCTION_28_0();
              OUTLINED_FUNCTION_28_0();
              OUTLINED_FUNCTION_28_0();
              v285 = *(v284 + 32);
              sub_217005EF4();
              OUTLINED_FUNCTION_9_0();
              (*(v286 + 8))(&v267[v285]);
              v278 = type metadata accessor for SocialProfilePageToolbarContentProvider(0);
              goto LABEL_221;
            case 3u:
              v287 = type metadata accessor for ContentDescriptor(0);
              if (!OUTLINED_FUNCTION_14_9(v287))
              {

                v288 = *(v10 + 24);
                v289 = sub_217005EF4();
                if (!OUTLINED_FUNCTION_22_8(&v267[v288]))
                {
                  OUTLINED_FUNCTION_50();
                  (*(v290 + 8))(&v267[v288], v289);
                }
              }

              v291 = type metadata accessor for GenericMusicItemToolbarContent(0);
              v292 = *(v291 + 20);
              sub_2170067A4();
              OUTLINED_FUNCTION_9_0();
              (*(v293 + 8))(&v267[v292]);
              v294 = &v267[*(v291 + 24)];
              type metadata accessor for MenuContext(0);
              if (!swift_getEnumCaseMultiPayload())
              {
                sub_21700C8E4();
                OUTLINED_FUNCTION_9_0();
                (*(v295 + 8))(v294);
                v296 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0, &unk_21701F4F0) + 48);
                v297 = sub_21700C924();
                if (!__swift_getEnumTagSinglePayload(&v294[v296], 1, v297))
                {
                  OUTLINED_FUNCTION_50();
                  (*(v298 + 8))(&v294[v296], v297);
                }
              }

              v278 = type metadata accessor for GenericMusicItemToolbarContentProvider(0);
LABEL_221:
              v321 = &v267[*(v278 + 20)];

              v322 = *(type metadata accessor for ToolbarProperties(0) + 24);
              sub_217009124();
              OUTLINED_FUNCTION_9_0();
              (*(v323 + 8))(&v321[v322]);
              break;
            case 4u:
              if (*(v267 + 3))
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v267);
              }

              if (*(v267 + 8))
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v267 + 5);
              }

              v280 = *(type metadata accessor for ReplayPageToolbarProvider(0) + 36);
              sub_217009124();
              OUTLINED_FUNCTION_9_0();
              (*(v281 + 8))(&v267[v280]);

              swift_unknownObjectRelease();
              break;
            default:
              break;
          }
        }
      }

      else
      {
      }

      return swift_deallocObject();
    case 0x31u:
      __swift_destroy_boxed_opaque_existential_1Tm(v18);

      goto LABEL_176;
    case 0x32u:
      v254 = OUTLINED_FUNCTION_9_12();
      v123 = *(type metadata accessor for Spacer(v254) + 20);
LABEL_170:
      v255 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_17_13(&v18[v123]))
      {
        OUTLINED_FUNCTION_2_11();
        (*(v256 + 8))(&v18[v123], v255);
      }

      goto LABEL_177;
    case 0x3Cu:
      v212 = OUTLINED_FUNCTION_9_12();
      type metadata accessor for VerticalArtworkListItem(v212);
      v213 = OUTLINED_FUNCTION_16_14();
      if (!OUTLINED_FUNCTION_5_17(v213))
      {
        OUTLINED_FUNCTION_3_10();
        v214 = OUTLINED_FUNCTION_15_7();
        v215(v214);
      }

      OUTLINED_FUNCTION_6_20();

      OUTLINED_FUNCTION_25_5();
      sub_21700C4B4();
      OUTLINED_FUNCTION_9_0();
      (*(v216 + 8))(v6);
      v217 = *(type metadata accessor for Artwork(0) + 20);
      sub_21700C444();
      OUTLINED_FUNCTION_9_0();
      (*(v218 + 8))(v6 + v217);
      v219 = OUTLINED_FUNCTION_13_4(*(v5 + 32));
      if (v220)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v219);
      }

      v128 = *(v5 + 36);
LABEL_175:
      OUTLINED_FUNCTION_8_9(v128);
      goto LABEL_176;
    default:
      goto LABEL_177;
  }
}

uint64_t sub_2166FBDA8()
{
  v1 = (type metadata accessor for RemoveFromPlaylistAction(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v2);
  v4 = v1[7];
  sub_21700C8E4();
  OUTLINED_FUNCTION_34();
  (*(v5 + 8))(v2 + v4);
  v6 = v1[8];
  sub_21700C924();
  OUTLINED_FUNCTION_34();
  (*(v7 + 8))(v2 + v6);

  return swift_deallocObject();
}

uint64_t sub_2166FBF34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2167D1450();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2166FBF8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A20, &unk_217017F20);
  OUTLINED_FUNCTION_2(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  v4 = v0 + v3;
  v5 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup(0);
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v5))
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v4 + 16));
    v6 = *(v5 + 24);
    v7 = sub_21700D7A4();
    if (!__swift_getEnumTagSinglePayload(v4 + v6, 1, v7))
    {
      OUTLINED_FUNCTION_50();
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_2166FC0D0(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[7];
LABEL_7:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A20, &unk_217017F20);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[9];
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30, &qword_217017F30);
  OUTLINED_FUNCTION_17();
  if (*(v13 + 84) == a2)
  {
    v8 = v12;
    v9 = a3[10];
    goto LABEL_7;
  }

  v15 = *(a1 + a3[12]);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

void sub_2166FC220(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[7];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A20, &unk_217017F20);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[9];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30, &qword_217017F30);
      OUTLINED_FUNCTION_17();
      if (*(v15 + 84) != a3)
      {
        *(a1 + a4[12]) = (a2 - 1);
        return;
      }

      v10 = v14;
      v11 = a4[10];
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_2166FC36C()
{
  sub_217008A64();
  OUTLINED_FUNCTION_34();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_2166FC4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for OpenFinancePageAction.Kind(0);
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_2166FC590(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 8) = (a2 - 1);
      return result;
    }

    v9 = type metadata accessor for OpenFinancePageAction.Kind(0);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2166FC688()
{
  type metadata accessor for PromptRemoveAppWithAccessAction(0);
  OUTLINED_FUNCTION_117();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v4 + 8))(v1 + v3);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();
  if (*(v1 + v3 + *(v0 + 44) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2166FC7D4(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for SocialOnboardingPrivacySettingsPageLockup(0);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30, &qword_217017F30);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_2166FC8CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for SocialOnboardingPrivacySettingsPageLockup(0);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30, &qword_217017F30);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a4[6];
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_2166FCABC()
{
  type metadata accessor for FollowUserAction(0);
  OUTLINED_FUNCTION_117();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  sub_2170075A4();
  OUTLINED_FUNCTION_1();

  v4 = *(v0 + 32);
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v5 + 8))(v1 + v3 + v4);
  v6 = OUTLINED_FUNCTION_8_11();
  v7(v6);

  return swift_deallocObject();
}

uint64_t sub_2166FCC1C()
{
  type metadata accessor for UnfollowUserAction(0);
  OUTLINED_FUNCTION_117();
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  sub_2170075A4();
  OUTLINED_FUNCTION_1();

  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(v0 + v2);

  v4 = OUTLINED_FUNCTION_8_11();
  v5(v4);

  return swift_deallocObject();
}

uint64_t sub_2166FCD70()
{
  v1 = type metadata accessor for OpenSocialProfileEditAction(0);
  OUTLINED_FUNCTION_2(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v9 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);

  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v10 + 8))(v0 + v3);
  (*(v8 + 8))(v0 + v9, v6);

  return swift_deallocObject();
}

uint64_t sub_2166FCEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FlowAction(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2166FCF5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_110();
  result = type metadata accessor for FlowAction(v8);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2166FD084()
{

  return swift_deallocObject();
}

uint64_t sub_2166FD128()
{

  return swift_deallocObject();
}

uint64_t sub_2166FD170()
{
  sub_217007324();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_2166FD1EC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_68_1();

  return swift_deallocObject();
}

uint64_t sub_2166FD220()
{
  sub_21700C084();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_2166FD2A0()
{
  type metadata accessor for GoToArtistContext(0);
  OUTLINED_FUNCTION_43_0();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    sub_21700C1E4();
  }

  else if (EnumCaseMultiPayload == 1)
  {
    sub_21700BA44();
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }

    sub_21700C084();
  }

  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v0 + v2);
LABEL_8:

  return swift_deallocObject();
}

uint64_t sub_2166FD390()
{
  type metadata accessor for FlowActionPageView(0);
  OUTLINED_FUNCTION_43_0();
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v4 = v0 + v3;
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v5 + 8))(v0 + v3);
  v6 = type metadata accessor for FlowAction(0);
  v7 = (v0 + v3 + v6[5]);
  type metadata accessor for FlowAction.Destination(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      goto LABEL_37;
    case 2u:

      v14 = *(type metadata accessor for ContentDescriptor(0) + 24);
      v15 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_87_2(v15))
      {
        OUTLINED_FUNCTION_50();
        (*(v16 + 8))(&v7[v14], v1);
      }

      v17 = &qword_27CAB80F0;
      v18 = &unk_217019010;
      goto LABEL_21;
    case 3u:

      goto LABEL_22;
    case 4u:
    case 0x15u:

      v8 = *(type metadata accessor for ContentDescriptor(0) + 24);
      v9 = sub_217005EF4();
      goto LABEL_29;
    case 5u:
      type metadata accessor for GoToArtistContext(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
        sub_21700C1E4();
      }

      else if (EnumCaseMultiPayload == 1)
      {
        sub_21700BA44();
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          goto LABEL_37;
        }

LABEL_35:
        sub_21700C084();
      }

LABEL_36:
      OUTLINED_FUNCTION_9_0();
      (*(v30 + 8))(v7, v31);
LABEL_37:

      v32 = v6[8];
      v33 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_23_4(v4 + v32))
      {
        OUTLINED_FUNCTION_50();
        (*(v34 + 8))(v4 + v32, v33);
      }

      v35 = v4 + v6[9];
      v36 = type metadata accessor for ReferrerInfo(0);
      if (!__swift_getEnumTagSinglePayload(v35, 1, v36))
      {
        if (!OUTLINED_FUNCTION_23_4(v35))
        {
          OUTLINED_FUNCTION_50();
          (*(v37 + 8))(v35, v33);
        }
      }

      v38 = (v4 + v6[10]);
      if (v38[3])
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
      }

      v39 = (v4 + v6[11]);
      v40 = type metadata accessor for Page.Header(0);
      if (!OUTLINED_FUNCTION_23_4(v39))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        v41 = *(v40 + 20);
        v42 = sub_21700D7A4();
        if (!__swift_getEnumTagSinglePayload(&v39[v41], 1, v42))
        {
          OUTLINED_FUNCTION_50();
          (*(v43 + 8))(&v39[v41], v42);
        }

        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_89();

        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_89();
      }

      return swift_deallocObject();
    case 6u:
    case 7u:
      goto LABEL_35;
    case 8u:
      sub_2170073D4();
      goto LABEL_36;
    case 9u:
      sub_217007324();
      goto LABEL_36;
    case 0xAu:
      sub_21700C384();
      goto LABEL_36;
    case 0xBu:
      sub_2170072A4();
      goto LABEL_36;
    case 0xCu:
      sub_217006F54();
      goto LABEL_36;
    case 0xDu:
      sub_21700C1E4();
      OUTLINED_FUNCTION_9_0();
      (*(v19 + 8))(v7);
      v17 = &qword_27CAB80D0;
      v18 = &qword_21701D6B0;
      goto LABEL_21;
    case 0xEu:
      sub_21700C924();
      OUTLINED_FUNCTION_9_0();
      (*(v20 + 8))(v7);
      v17 = &qword_27CAB80C8;
      v18 = &unk_217019000;
LABEL_21:
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
      OUTLINED_FUNCTION_8_9(*(v21 + 48));
      goto LABEL_22;
    case 0xFu:

      v25 = *(type metadata accessor for ContentDescriptor(0) + 24);
      v26 = sub_217005EF4();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v7[v25], 1, v26);
      v28 = *(v26 - 8);
      if (!EnumTagSinglePayload)
      {
        (*(v28 + 8))(&v7[v25], v26);
      }

      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F8, &unk_217038C80);
      (*(v28 + 8))(&v7[*(v29 + 48)], v26);
      goto LABEL_37;
    case 0x10u:
      sub_21700C1E4();
      OUTLINED_FUNCTION_9_0();
      (*(v23 + 8))(v7);
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C0, &unk_217036050) + 48);
      v9 = sub_21700C2F4();
      goto LABEL_29;
    case 0x11u:
      sub_21700C924();
      OUTLINED_FUNCTION_9_0();
      (*(v10 + 8))(v7);
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B8, &unk_217018FF0) + 48);
      v9 = sub_21700C8E4();
LABEL_29:
      if (!OUTLINED_FUNCTION_87_2(v9))
      {
        OUTLINED_FUNCTION_50();
        (*(v24 + 8))(&v7[v8], v1);
      }

      goto LABEL_37;
    case 0x12u:
      sub_21700C734();
      goto LABEL_36;
    case 0x14u:
      type metadata accessor for ReportableMusicItem(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          sub_21700C924();
          goto LABEL_36;
        case 1u:
          sub_217006E94();
          goto LABEL_36;
        case 2u:
        case 3u:
          goto LABEL_35;
        case 4u:
          v45 = sub_21700C4B4();
          if (!__swift_getEnumTagSinglePayload(v7, 1, v45))
          {
            OUTLINED_FUNCTION_50();
            (*(v46 + 8))(v7, v45);
          }

          v47 = type metadata accessor for SocialProfileDescriptor(0);
          OUTLINED_FUNCTION_8_9(v47[5]);

          OUTLINED_FUNCTION_8_9(v47[6]);

          OUTLINED_FUNCTION_8_9(v47[7]);

          v11 = v47[8];
          goto LABEL_9;
        case 5u:

          goto LABEL_22;
        default:
          goto LABEL_37;
      }

      goto LABEL_37;
    case 0x16u:

      goto LABEL_22;
    case 0x17u:
      goto LABEL_22;
    case 0x18u:

      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACA4E0, &unk_217019020) + 48);
LABEL_9:
      sub_217005EF4();
      OUTLINED_FUNCTION_9_0();
      (*(v12 + 8))(&v7[v11], v13);
      goto LABEL_37;
    case 0x19u:

LABEL_22:

      goto LABEL_37;
    case 0x1Au:

      goto LABEL_37;
    default:
      goto LABEL_37;
  }
}

uint64_t sub_2166FDD0C()
{

  return swift_deallocObject();
}

uint64_t sub_2166FDD94()
{
  v1 = type metadata accessor for RoutedPageIntent(0);
  OUTLINED_FUNCTION_43_0();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v0 + v3;
  v5 = type metadata accessor for ReferrerInfo(0);
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v5))
  {
    v6 = sub_217005EF4();
    if (!OUTLINED_FUNCTION_23_4(v0 + v3))
    {
      OUTLINED_FUNCTION_50();
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  v8 = *(v1 + 20);
  v9 = sub_217005EF4();
  if (!__swift_getEnumTagSinglePayload(v4 + v8, 1, v9))
  {
    OUTLINED_FUNCTION_50();
    (*(v10 + 8))(v4 + v8, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_2166FDF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2166FDFB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2166FE060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81E0, qword_217019170);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2166FE114(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81E0, qword_217019170);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2166FE1EC()
{

  return swift_deallocObject();
}

uint64_t sub_2166FE288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217006A94();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 36));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2166FE334(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217006A94();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2166FE3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2166FE498(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2166FE550()
{
  v1 = type metadata accessor for OpenFinancePageAction(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v0 + v2);

  v4 = *(v1 + 24);
  type metadata accessor for OpenFinancePageAction.Kind(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_217005EF4();
    OUTLINED_FUNCTION_34();
    (*(v5 + 8))(v0 + v2 + v4);
  }

  return swift_deallocObject();
}

uint64_t sub_2166FE6AC(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    OUTLINED_FUNCTION_17();
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      sub_21700C554();
      OUTLINED_FUNCTION_17();
      if (*(v14 + 84) == a2)
      {
        v11 = v13;
        v12 = a3[6];
      }

      else
      {
        v11 = type metadata accessor for MenuConfiguration(0);
        v12 = a3[7];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void *sub_2166FE7CC(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      sub_21700C554();
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        v10 = type metadata accessor for MenuConfiguration(0);
        v11 = a4[7];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_2166FE8E0()
{
  v1 = type metadata accessor for SearchAction(0);
  v2 = (*(*(v1 - 8) + 80) + 56) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (*(v0 + v2 + 8))
  {
  }

  v3 = *(v1 + 20);
  v4 = sub_21700D284();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_2166FEA34()
{
  v2 = type metadata accessor for ShareMusicItemAction(0);
  v3 = (*(*(v2 - 8) + 80) + 24) & ~*(*(v2 - 8) + 80);
  v34 = *(*(v2 - 8) + 64);
  v4 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  v7 = *(v5 + 80);

  v8 = v0 + v3;
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v9 + 8))(v0 + v3);
  v10 = v0 + v3 + *(v2 + 20);
  v11 = type metadata accessor for ShareableMusicItem(0);
  if (!OUTLINED_FUNCTION_4_16(v11))
  {
    OUTLINED_FUNCTION_108();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        sub_21700C1E4();
        goto LABEL_32;
      case 1u:
        sub_21700C384();
        goto LABEL_32;
      case 2u:
        sub_2170072A4();
        goto LABEL_32;
      case 3u:
        sub_21700C554();
        goto LABEL_32;
      case 4u:
        sub_217006F54();
        goto LABEL_32;
      case 5u:
        v17 = sub_21700C4B4();
        if (!OUTLINED_FUNCTION_4_16(v17))
        {
          OUTLINED_FUNCTION_50();
          v18 = OUTLINED_FUNCTION_108();
          v19(v18);
        }

        v20 = type metadata accessor for SocialProfileDescriptor(0);
        OUTLINED_FUNCTION_6_21(v20);
        OUTLINED_FUNCTION_8_13();
        OUTLINED_FUNCTION_8_13();
        v21 = *(v1 + 32);
        sub_217005EF4();
        OUTLINED_FUNCTION_34();
        (*(v22 + 8))(v10 + v21);
        v23 = type metadata accessor for MusicFriendsInviteDescriptor(0);
        OUTLINED_FUNCTION_6_21(v23);
        OUTLINED_FUNCTION_8_13();
        break;
      case 6u:
        sub_21700C254();
        goto LABEL_32;
      case 7u:
        sub_217006B84();
        goto LABEL_32;
      case 8u:
        sub_21700BA44();
        goto LABEL_32;
      case 9u:
        sub_21700C924();
        goto LABEL_32;
      case 0xAu:
        sub_21700C994();
        goto LABEL_32;
      case 0xBu:
        sub_21700BEA4();
        goto LABEL_32;
      case 0xCu:
        v12 = sub_21700C4B4();
        if (!OUTLINED_FUNCTION_4_16(v12))
        {
          OUTLINED_FUNCTION_50();
          v13 = OUTLINED_FUNCTION_108();
          v14(v13);
        }

        v15 = type metadata accessor for ShareURLDescriptor(0);
        OUTLINED_FUNCTION_8_13();
        v16 = *(v15 + 28);
        goto LABEL_26;
      case 0xDu:
        v24 = sub_21700C4B4();
        if (!OUTLINED_FUNCTION_4_16(v24))
        {
          OUTLINED_FUNCTION_50();
          v25 = OUTLINED_FUNCTION_108();
          v26(v25);
        }

        v27 = type metadata accessor for SocialProfileDescriptor(0);
        OUTLINED_FUNCTION_6_21(v27);
        OUTLINED_FUNCTION_8_13();
        OUTLINED_FUNCTION_8_13();
        v16 = *(v1 + 32);
LABEL_26:
        sub_217005EF4();
        OUTLINED_FUNCTION_34();
        (*(v28 + 8))(v10 + v16);
        break;
      case 0xEu:
        sub_21700C084();
        goto LABEL_32;
      case 0xFu:
        sub_21700C644();
        goto LABEL_32;
      case 0x10u:
        sub_21700C2F4();
        goto LABEL_32;
      case 0x11u:
        sub_2170073D4();
        goto LABEL_32;
      case 0x12u:
        sub_217007324();
        goto LABEL_32;
      case 0x13u:
        sub_217007264();
        goto LABEL_32;
      case 0x14u:
        sub_217007064();
        goto LABEL_32;
      case 0x15u:
        sub_2170070F4();
LABEL_32:
        OUTLINED_FUNCTION_34();
        (*(v29 + 8))(v10);
        break;
      default:
        break;
    }
  }

  v30 = *(v2 + 24);
  v31 = sub_217005EF4();
  if (!__swift_getEnumTagSinglePayload(v8 + v30, 1, v31))
  {
    OUTLINED_FUNCTION_50();
    (*(v32 + 8))(v8 + v30, v31);
  }

  (*(v6 + 8))(v0 + ((v3 + v34 + v7) & ~v7), v4);

  return swift_deallocObject();
}

uint64_t sub_2166FEF1C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2166FEF54()
{

  return swift_deallocObject();
}

uint64_t sub_2166FEFB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21700D284();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2166FF03C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2166FF0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2166FF100(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SongDetailContentView(255, *a1, a1[1], a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7BE8, &qword_217019E70);
  OUTLINED_FUNCTION_11_3();
  sub_2170089F4();
  OUTLINED_FUNCTION_5_19();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_21();
  sub_21669E098(v4, v5, &qword_217019E70, v6);
  OUTLINED_FUNCTION_0_9();
  return swift_getWitnessTable();
}

uint64_t sub_2166FF1F8()
{
  OUTLINED_FUNCTION_92();
  v2 = sub_21700C084();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_2166FF23C()
{
  OUTLINED_FUNCTION_92();
  v2 = sub_21700C084();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_2166FF284(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
LABEL_15:

    return __swift_getEnumTagSinglePayload(v9, v3, v8);
  }

  if (v3 != 2147483646)
  {
    sub_21700C084();
    OUTLINED_FUNCTION_17();
    if (*(v14 + 84) == v3)
    {
      v8 = v13;
      v15 = a3[11];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84E0, &qword_217019FC0);
      OUTLINED_FUNCTION_17();
      if (*(v17 + 84) == v3)
      {
        v8 = v16;
        v15 = a3[12];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
        v15 = a3[13];
      }
    }

    v9 = v4 + v15;
    goto LABEL_15;
  }

  v10 = *(v4 + a3[9]);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  v11 = v10 - 1;
  if (v11 < 0)
  {
    v11 = -1;
  }

  return (v11 + 1);
}

void sub_2166FF3FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v5 + a4[9]) = v4;
      return;
    }

    sub_21700C084();
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[11];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84E0, &qword_217019FC0);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[12];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
        v14 = a4[13];
      }
    }

    v11 = v5 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_2166FF564(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SongDetailHeaderView(255, *a1, a1[1], a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB84A8, &qword_217019F80);
  OUTLINED_FUNCTION_11_3();
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_3();
  sub_217008044();

  return swift_getWitnessTable();
}

uint64_t sub_2166FF6A4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2166FF6FC()
{
  v1 = *(type metadata accessor for SongDetailLyricsButton(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_21700C084();
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_2166FF7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84E0, &qword_217019FC0);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) != v3)
    {
      v13 = *(v4 + *(a3 + 28) + 8);
      if (v13 > 1)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_2166FF8BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84E0, &qword_217019FC0);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      *(v5 + *(a4 + 28) + 8) = -v4;
      return;
    }

    v10 = v12;
    v11 = v5 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_2166FF9BC()
{
  v0 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  sub_21700C084();
  sub_2167FCC68(&qword_27CAB8618, &qword_27CAB8608, &qword_21701A200, sub_2167FCC38);
  sub_2167FDEE4(&qword_27CAB86B0, MEMORY[0x277CD8238], MEMORY[0x277CD8258]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2166FFAA0()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2166FFB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 24);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_2166FFC18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 24) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2166FFD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2166FFD94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2166FFEA4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2166FFF08()
{
  v1 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_2166FFFC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_110();
  type metadata accessor for TopSearchLockup(v6);
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    sub_2170067A4();
    OUTLINED_FUNCTION_17();
    if (*(v12 + 84) != a2)
    {
      v14 = *(v3 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v9 = v11;
    v10 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

void sub_2167000BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_110();
  type metadata accessor for TopSearchLockup(v8);
  OUTLINED_FUNCTION_17();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    sub_2170067A4();
    OUTLINED_FUNCTION_17();
    if (*(v14 + 84) != a3)
    {
      *(v4 + *(a4 + 24)) = a2 + 1;
      return;
    }

    v11 = v13;
    v12 = v4 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_2167001A0(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[7];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
        v11 = a3[8];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void *sub_2167002CC(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
        v11 = a4[8];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_216700400()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8C00, &qword_21701B140);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB75D0, &qword_217017420);
  sub_21680D978();
  OUTLINED_FUNCTION_18_10();
  sub_21680DFBC(v0, &qword_27CAB75D0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216700520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 120);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 36);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
      v10 = *(a3 + 40);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_216700604(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 120) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 36);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
      v10 = *(a4 + 40);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_2167006F4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8D38, &qword_21701B600);
  OUTLINED_FUNCTION_34();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_21670075C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8D38, &qword_21701B600);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(a1);
  return a1;
}

__n128 sub_216700804(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_216700838()
{
  v1 = *(v0 + 16);
  v2 = OUTLINED_FUNCTION_43_9();
  v6 = type metadata accessor for LibraryAction(v2, v3, v4, v5);
  v7 = (*(*(v6 - 8) + 80) + 40) & ~*(*(v6 - 8) + 80);
  v8 = OUTLINED_FUNCTION_43_9();
  type metadata accessor for LibraryActionType(v8, v9, v10, v11);
  if (swift_getEnumCaseMultiPayload() <= 5)
  {
    (*(*(v1 - 8) + 8))(v0 + v7, v1);
  }

  v12 = *(v6 + 44);
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v13 + 8))(v0 + v7 + v12);

  return swift_deallocObject();
}

uint64_t sub_21670098C()
{
  OUTLINED_FUNCTION_41_8();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_216700A14()
{
  OUTLINED_FUNCTION_41_8();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_216700A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    v8 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_216700B78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216700C50(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_5_21();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v6 + 84) == a2)
  {
    v7 = *(a3 + 20);
  }

  else
  {
    type metadata accessor for SplitPosterLockup.Item(0);
    v7 = *(a3 + 24);
  }

  v8 = OUTLINED_FUNCTION_19_1(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_216700D10()
{
  OUTLINED_FUNCTION_21_0();
  if (v4)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    OUTLINED_FUNCTION_17();
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 20);
    }

    else
    {
      type metadata accessor for SplitPosterLockup.Item(0);
      v8 = *(v5 + 24);
    }

    v9 = OUTLINED_FUNCTION_19_1(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_216700DD0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_5_21();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  OUTLINED_FUNCTION_17();
  if (*(v6 + 84) == a2)
  {
    v7 = *(a3 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
    v7 = *(a3 + 36);
  }

  v8 = OUTLINED_FUNCTION_19_1(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_216700E9C()
{
  OUTLINED_FUNCTION_21_0();
  if (v4)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    OUTLINED_FUNCTION_17();
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      v8 = *(v5 + 36);
    }

    v9 = OUTLINED_FUNCTION_19_1(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_216700F90()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_216700FC8()
{

  return swift_deallocObject();
}

uint64_t sub_216701000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_2167010BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_216701168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2167011FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216701324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MappedSection.Content(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2167013E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MappedSection.Content(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_2167014CC()
{
  v4 = *(type metadata accessor for PageListSectionView(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v0 + v5;
  type metadata accessor for MappedSection.Content(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 4u:
    case 5u:
    case 0xDu:
    case 0x17u:
    case 0x35u:
    case 0x3Au:
    case 0x3Bu:
      goto LABEL_2;
    case 1u:
      sub_21700C1E4();
      OUTLINED_FUNCTION_9_0();
      (*(v167 + 8))(v0 + v5);
      v118 = &qword_27CAB7938;
      v119 = &unk_217017C10;
      goto LABEL_105;
    case 2u:
      v90 = OUTLINED_FUNCTION_10_14();
      type metadata accessor for AnimatedTextListItem(v90);
      goto LABEL_57;
    case 3u:
    case 7u:
    case 0xBu:
    case 0xEu:
    case 0xFu:
    case 0x12u:
    case 0x13u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Fu:
    case 0x20u:
    case 0x21u:
    case 0x24u:
    case 0x2Du:
    case 0x33u:
    case 0x34u:
    case 0x36u:
    case 0x37u:
    case 0x38u:
    case 0x39u:
    case 0x3Du:
      goto LABEL_153;
    case 6u:
      v150 = OUTLINED_FUNCTION_10_14();
      type metadata accessor for MappedArtistLatestReleaseAndTopSongs(v150);
      v151 = OUTLINED_FUNCTION_15_13();
      if (!OUTLINED_FUNCTION_7_21(v151))
      {
        OUTLINED_FUNCTION_4_23();
        v152 = OUTLINED_FUNCTION_16_19();
        v153(v152);
      }

      v154 = v6 + *(v1 + 24);
      v155 = _s7SectionV6HeaderVMa(0);
      v156 = OUTLINED_FUNCTION_19_2();
      if (!__swift_getEnumTagSinglePayload(v156, v157, v155))
      {
        v158 = (v154 + *(v155 + 20));
        v159 = _s7SectionV6HeaderV12HeaderLockupOMa(0);
        v160 = OUTLINED_FUNCTION_19_2();
        if (!__swift_getEnumTagSinglePayload(v160, v161, v159))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:

              goto LABEL_181;
            case 1u:
              __swift_destroy_boxed_opaque_existential_1Tm(v158);
              v249 = type metadata accessor for ComposerSectionHeader(0);
              v268 = v249[5];
              if (!OUTLINED_FUNCTION_20_1(&v158[v268]))
              {
                OUTLINED_FUNCTION_4_23();
                (*(v250 + 8))(&v158[v268], v2);
              }

              v251 = &v158[v249[11]];
              if (*(v251 + 3))
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v251);
              }

              v252 = &v158[v249[12]];
              v253 = type metadata accessor for ContentDescriptor(0);
              v254 = OUTLINED_FUNCTION_19_2();
              if (!__swift_getEnumTagSinglePayload(v254, v255, v253))
              {

                v256 = *(v253 + 24);
                v257 = sub_217005EF4();
                v269 = v256;
                v258 = &v252[v256];
                v259 = v257;
                if (!__swift_getEnumTagSinglePayload(v258, 1, v257))
                {
                  (*(*(v259 - 8) + 8))(&v252[v269], v259);
                }
              }

              break;
            case 2u:
              if (*(v158 + 1))
              {

                if (*(v158 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v158 + 4);
                }
              }

              if (*(v158 + 10))
              {

                if (*(v158 + 16))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v158 + 13);
                }
              }

              v235 = &v158[*(type metadata accessor for DefaultSectionHeader(0) + 32)];
              v236 = type metadata accessor for Artwork(0);
              v237 = OUTLINED_FUNCTION_19_2();
              if (!__swift_getEnumTagSinglePayload(v237, v238, v236))
              {
                sub_21700C4B4();
                OUTLINED_FUNCTION_9_0();
                (*(v239 + 8))(v235);
                v240 = *(v236 + 20);
                sub_21700C444();
                OUTLINED_FUNCTION_9_0();
                (*(v241 + 8))(&v235[v240], v242);
              }

              break;
            case 3u:
              if (*(v158 + 1))
              {

                if (*(v158 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v158 + 4);
                }
              }

LABEL_181:

              break;
            default:
              break;
          }
        }
      }

      v162 = v6 + *(v1 + 32);
      v163 = OUTLINED_FUNCTION_19_2();
      if (!__swift_getEnumTagSinglePayload(v163, v164, v155))
      {
        v165 = v162 + *(v155 + 20);
        v166 = _s7SectionV6HeaderV12HeaderLockupOMa(0);
        if (!OUTLINED_FUNCTION_4_16(v166))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:

              goto LABEL_186;
            case 1u:
              __swift_destroy_boxed_opaque_existential_1Tm(v165);
              v260 = type metadata accessor for ComposerSectionHeader(0);
              v261 = v260[5];
              if (!OUTLINED_FUNCTION_20_1(v165 + v261))
              {
                OUTLINED_FUNCTION_4_23();
                (*(v262 + 8))(v165 + v261, v2);
              }

              v263 = (v165 + v260[11]);
              if (v263[3])
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v263);
              }

              v264 = v165 + v260[12];
              v265 = type metadata accessor for ContentDescriptor(0);
              if (!OUTLINED_FUNCTION_15_10(v265))
              {

                v266 = *(v165 + 24);
                v267 = sub_217005EF4();
                if (!OUTLINED_FUNCTION_23_8(v267))
                {
                  (*(*(v165 - 8) + 8))(v264 + v266, v165);
                }
              }

              break;
            case 2u:
              if (*(v165 + 8))
              {

                if (*(v165 + 56))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v165 + 32));
                }
              }

              if (*(v165 + 80))
              {

                if (*(v165 + 128))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v165 + 104));
                }
              }

              v243 = v165 + *(type metadata accessor for DefaultSectionHeader(0) + 32);
              v244 = type metadata accessor for Artwork(0);
              if (!OUTLINED_FUNCTION_15_10(v244))
              {
                sub_21700C4B4();
                OUTLINED_FUNCTION_9_0();
                (*(v245 + 8))(v243);
                v246 = *(v165 + 20);
                sub_21700C444();
                OUTLINED_FUNCTION_9_0();
                (*(v247 + 8))(v243 + v246, v248);
              }

              break;
            case 3u:
              if (*(v165 + 8))
              {

                if (*(v165 + 56))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v165 + 32));
                }
              }

LABEL_186:

              break;
            default:
              break;
          }
        }
      }

LABEL_2:

      goto LABEL_154;
    case 8u:
      v54 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_14_9(v54))
      {
        OUTLINED_FUNCTION_3_11();
        v55 = OUTLINED_FUNCTION_116();
        v56(v55);
      }

      v57 = type metadata accessor for ContainerDetailTracklistFooterLockup(0);
      OUTLINED_FUNCTION_1_31(v57);
      v58 = OUTLINED_FUNCTION_21_14();
      v59 = type metadata accessor for ContentDescriptor(v58);
      if (!OUTLINED_FUNCTION_15_10(v59))
      {

        v60 = *(v3 + 24);
        v61 = sub_217005EF4();
        if (!OUTLINED_FUNCTION_23_8(v61))
        {
          (*(*(v3 - 8) + 8))(v2 + v60, v3);
        }
      }

      OUTLINED_FUNCTION_93_0(*(v1 + 32));

      if (*(v6 + *(v1 + 36) + 8))
      {
      }

      goto LABEL_153;
    case 9u:
      v62 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_14_9(v62))
      {
        OUTLINED_FUNCTION_3_11();
        v63 = OUTLINED_FUNCTION_116();
        v64(v63);
      }

      v65 = type metadata accessor for CuratorDetailHeaderComponentModel(0);
      __swift_destroy_boxed_opaque_existential_1Tm((v6 + v65[5]));
      OUTLINED_FUNCTION_93_0(v65[6]);

      v66 = v65[7];
      v67 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_22_8(v6 + v66))
      {
        OUTLINED_FUNCTION_3_11();
        (*(v68 + 8))(v6 + v66, v67);
      }

      v69 = v6 + v65[8];
      v70 = type metadata accessor for Artwork(0);
      v71 = OUTLINED_FUNCTION_19_2();
      if (!__swift_getEnumTagSinglePayload(v71, v72, v70))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v73 + 8))(v69);
        v74 = *(v70 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v75 + 8))(v69 + v74);
      }

      v76 = v6 + v65[10];
      v77 = OUTLINED_FUNCTION_19_2();
      if (!__swift_getEnumTagSinglePayload(v77, v78, v70))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v79 + 8))(v76);
        v80 = *(v70 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v81 + 8))(v76 + v80);
      }

      v82 = v6 + v65[11];
      v83 = type metadata accessor for VideoArtwork(0);
      if (!OUTLINED_FUNCTION_4_16(v83))
      {

        v84 = *(v76 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v85 + 8))(v82 + v84);
      }

      v6 += v65[12];
      v86 = type metadata accessor for ContentDescriptor(0);
      v87 = OUTLINED_FUNCTION_12_17();
      if (__swift_getEnumTagSinglePayload(v87, v88, v86))
      {
        goto LABEL_154;
      }

      v89 = *(v86 + 24);
      goto LABEL_147;
    case 0xAu:
      v124 = OUTLINED_FUNCTION_10_14();
      v125 = type metadata accessor for EmptyStateLockup(v124);
      v126 = v125[5];
      v127 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_22_8(v6 + v126))
      {
        OUTLINED_FUNCTION_3_11();
        (*(v128 + 8))(v6 + v126, v127);
      }

      OUTLINED_FUNCTION_93_0(v125[7]);

      OUTLINED_FUNCTION_93_0(v125[8]);

      OUTLINED_FUNCTION_93_0(v125[9]);

      v129 = v6 + v125[10];
      v130 = type metadata accessor for Artwork(0);
      if (!OUTLINED_FUNCTION_22_8(v129))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v131 + 8))(v129);
        v132 = *(v130 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v133 + 8))(v129 + v132);
      }

      v134 = v6 + v125[11];
      v135 = type metadata accessor for ColorSchemeArtwork(0);
      v136 = OUTLINED_FUNCTION_12_17();
      if (__swift_getEnumTagSinglePayload(v136, v137, v135))
      {
        goto LABEL_154;
      }

      v138 = OUTLINED_FUNCTION_12_17();
      if (!__swift_getEnumTagSinglePayload(v138, v139, v130))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v140 + 8))(v134);
        v141 = *(v130 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v142 + 8))(v134 + v141);
      }

      v6 = v134 + *(v135 + 20);
      goto LABEL_134;
    case 0xCu:
      v42 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_14_9(v42))
      {
        OUTLINED_FUNCTION_3_11();
        v43 = OUTLINED_FUNCTION_116();
        v44(v43);
      }

      v45 = type metadata accessor for GroupedTextListLockup(0);
      OUTLINED_FUNCTION_1_31(v45);
      v46 = OUTLINED_FUNCTION_21_14();
      v47 = type metadata accessor for ModalPresentationDescriptor(v46);
      if (!OUTLINED_FUNCTION_15_10(v47))
      {

        v48 = *(v3 + 40);
        sub_21700D284();
        OUTLINED_FUNCTION_9_0();
        (*(v49 + 8))(v2 + v48);
      }

      goto LABEL_153;
    case 0x10u:
      v99 = OUTLINED_FUNCTION_10_14();
      type metadata accessor for InlineUpsell(v99);
      v100 = OUTLINED_FUNCTION_15_13();
      if (!OUTLINED_FUNCTION_7_21(v100))
      {
        OUTLINED_FUNCTION_4_23();
        v101 = OUTLINED_FUNCTION_16_19();
        v102(v101);
      }

      OUTLINED_FUNCTION_6_25();

      OUTLINED_FUNCTION_93_0(*(v1 + 28));

      OUTLINED_FUNCTION_93_0(*(v1 + 32));

      v103 = OUTLINED_FUNCTION_17_19(*(v1 + 36));
      if (v104)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v103);
      }

      v105 = OUTLINED_FUNCTION_17_19(*(v1 + 40));
      if (v106)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v105);
      }

      v107 = *(v1 + 44);
      goto LABEL_114;
    case 0x11u:
      v23 = OUTLINED_FUNCTION_10_14();
      type metadata accessor for LandingUpsell(v23);
      v24 = OUTLINED_FUNCTION_15_13();
      if (!OUTLINED_FUNCTION_7_21(v24))
      {
        OUTLINED_FUNCTION_4_23();
        v25 = OUTLINED_FUNCTION_16_19();
        v26(v25);
      }

      OUTLINED_FUNCTION_6_25();

      OUTLINED_FUNCTION_93_0(*(v1 + 28));

      OUTLINED_FUNCTION_93_0(*(v1 + 32));

      OUTLINED_FUNCTION_93_0(*(v1 + 36));

      v27 = OUTLINED_FUNCTION_17_19(*(v1 + 40));
      if (v28)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v27);
      }

      v29 = OUTLINED_FUNCTION_17_19(*(v1 + 44));
      if (v30)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v29);
      }

      v31 = OUTLINED_FUNCTION_17_19(*(v1 + 48));
      if (v32)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
      }

      v33 = v6 + *(v1 + 52);
      v34 = type metadata accessor for Artwork(0);
      if (!OUTLINED_FUNCTION_20_1(v33))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v35 + 8))(v33);
        v36 = *(v34 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v37 + 8))(v33 + v36);
      }

      v6 += *(v1 + 56);
      v38 = OUTLINED_FUNCTION_12_17();
      if (__swift_getEnumTagSinglePayload(v38, v39, v34))
      {
        goto LABEL_154;
      }

      sub_21700C4B4();
      OUTLINED_FUNCTION_9_0();
      (*(v40 + 8))(v6);
      v41 = *(v34 + 20);
      goto LABEL_136;
    case 0x14u:
      v112 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_14_9(v112))
      {
        OUTLINED_FUNCTION_3_11();
        v113 = OUTLINED_FUNCTION_116();
        v114(v113);
      }

      v115 = type metadata accessor for ListSection(0);
      OUTLINED_FUNCTION_1_31(v115);
      OUTLINED_FUNCTION_93_0(v116);

      OUTLINED_FUNCTION_93_0(*(v1 + 28));

      goto LABEL_153;
    case 0x15u:

      __swift_destroy_boxed_opaque_existential_1Tm((v6 + 8));
      v143 = type metadata accessor for GradientListRowModel(0);
      v144 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_7_21(v144))
      {
        OUTLINED_FUNCTION_4_23();
        v145 = OUTLINED_FUNCTION_16_19();
        v146(v145);
      }

      v147 = OUTLINED_FUNCTION_17_19(*(v143 + 28));
      if (v148)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v147);
      }

      v149 = v6 + *(v143 + 32);
      if (*(v149 + 32))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v149 + 8));
      }

      goto LABEL_96;
    case 0x16u:
      v196 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_14_9(v196))
      {
        OUTLINED_FUNCTION_3_11();
        v197 = OUTLINED_FUNCTION_116();
        v198(v197);
      }

      v199 = type metadata accessor for ParagraphComponentModel(0);
      OUTLINED_FUNCTION_1_31(v199);
      OUTLINED_FUNCTION_93_0(v200);
      goto LABEL_127;
    case 0x18u:
      sub_21700C924();
      OUTLINED_FUNCTION_9_0();
      (*(v117 + 8))(v0 + v5);
      v118 = &qword_27CAB7940;
      v119 = &unk_21701C440;
LABEL_105:
      __swift_instantiateConcreteTypeFromMangledNameV2(v118, v119);
      goto LABEL_153;
    case 0x19u:
      v120 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_14_9(v120))
      {
        OUTLINED_FUNCTION_3_11();
        v121 = OUTLINED_FUNCTION_116();
        v122(v121);
      }

      v123 = type metadata accessor for PopoverSelector(0);
      OUTLINED_FUNCTION_1_31(v123);
LABEL_127:

      goto LABEL_151;
    case 0x1Du:
      v182 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_14_9(v182))
      {
        OUTLINED_FUNCTION_3_11();
        v183 = OUTLINED_FUNCTION_116();
        v184(v183);
      }

      ContextLockup = type metadata accessor for SearchQueryContextLockup(0);
      OUTLINED_FUNCTION_1_31(ContextLockup);
      OUTLINED_FUNCTION_93_0(v186);

      OUTLINED_FUNCTION_93_0(*(v1 + 32));

      OUTLINED_FUNCTION_93_0(*(v1 + 36));

      OUTLINED_FUNCTION_93_0(*(v1 + 40));

      goto LABEL_153;
    case 0x1Eu:
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + v5));

      v41 = *(type metadata accessor for MappedSearchResultsList(0) + 24);
      sub_21700D194();
      goto LABEL_137;
    case 0x22u:
      v94 = OUTLINED_FUNCTION_10_14();
      type metadata accessor for SocialOnboardingNotificationSettingsPageLockup(v94);
      v95 = OUTLINED_FUNCTION_15_13();
      if (!OUTLINED_FUNCTION_7_21(v95))
      {
        OUTLINED_FUNCTION_4_23();
        v96 = OUTLINED_FUNCTION_16_19();
        v97(v96);
      }

      goto LABEL_63;
    case 0x23u:
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + v5));

      v89 = *(type metadata accessor for SocialOnboardingPrivacySettingsPageLockup(0) + 48);
      goto LABEL_146;
    case 0x25u:

      __swift_destroy_boxed_opaque_existential_1Tm((v6 + 16));
      v1 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup(0);
      v231 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_7_21(v231))
      {
        OUTLINED_FUNCTION_4_23();
        v232 = OUTLINED_FUNCTION_16_19();
        v233(v232);
      }

LABEL_151:
      v98 = *(v1 + 28);
      goto LABEL_152;
    case 0x26u:
      v15 = type metadata accessor for Artwork(0);
      if (!OUTLINED_FUNCTION_14_9(v15))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v16 + 8))(v0 + v5);
        v1 = *(v1 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v17 + 8))(v6 + v1);
      }

      v18 = type metadata accessor for SocialOnboardingWelcomePageLockup(0);
      OUTLINED_FUNCTION_11_19(v18);
      v19 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_7_21(v19))
      {
        OUTLINED_FUNCTION_4_23();
        v20 = OUTLINED_FUNCTION_16_19();
        v21(v20);
      }

      OUTLINED_FUNCTION_93_0(*(v1 + 28));

LABEL_63:
      v98 = *(v1 + 32);
      goto LABEL_152;
    case 0x27u:
      v201 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_14_9(v201))
      {
        OUTLINED_FUNCTION_3_11();
        v202 = OUTLINED_FUNCTION_116();
        v203(v202);
      }

      v204 = type metadata accessor for SocialProfileDetailHeaderLockup(0);
      OUTLINED_FUNCTION_1_31(v204);
      v206 = v6 + v205;

      v207 = *(type metadata accessor for ContentDescriptor(0) + 24);
      v208 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_20_1(v206 + v207))
      {
        OUTLINED_FUNCTION_4_23();
        (*(v209 + 8))(v206 + v207, v208);
      }

      OUTLINED_FUNCTION_93_0(*(v1 + 28));

      OUTLINED_FUNCTION_93_0(*(v1 + 32));

      v6 += *(v1 + 44);
      v130 = type metadata accessor for Artwork(0);
LABEL_134:
      v210 = OUTLINED_FUNCTION_12_17();
      if (!__swift_getEnumTagSinglePayload(v210, v211, v130))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v212 + 8))(v6);
        v41 = *(v130 + 20);
LABEL_136:
        sub_21700C444();
LABEL_137:
        OUTLINED_FUNCTION_9_0();
        (*(v213 + 8))(v6 + v41, v214);
      }

      goto LABEL_154;
    case 0x28u:
      v215 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_14_9(v215))
      {
        OUTLINED_FUNCTION_3_11();
        v216 = OUTLINED_FUNCTION_116();
        v217(v216);
      }

      v218 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
      OUTLINED_FUNCTION_1_31(v218);
      v220 = v6 + v219;

      v221 = *(type metadata accessor for ContentDescriptor(0) + 24);
      v222 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_20_1(v220 + v221))
      {
        OUTLINED_FUNCTION_4_23();
        (*(v223 + 8))(v220 + v221, v222);
      }

      OUTLINED_FUNCTION_93_0(*(v1 + 28));

      OUTLINED_FUNCTION_93_0(*(v1 + 32));

      OUTLINED_FUNCTION_93_0(*(v1 + 44));

      OUTLINED_FUNCTION_93_0(*(v1 + 48));

      OUTLINED_FUNCTION_93_0(*(v1 + 52));

      OUTLINED_FUNCTION_93_0(*(v1 + 56));

      v224 = OUTLINED_FUNCTION_21_14();
      v225 = type metadata accessor for Artwork(v224);
      if (!OUTLINED_FUNCTION_15_10(v225))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v226 + 8))(v222);
        v227 = *(v220 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v228 + 8))(v222 + v227);
      }

      v98 = *(v1 + 68);
      goto LABEL_152;
    case 0x29u:
      v168 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_14_9(v168))
      {
        OUTLINED_FUNCTION_3_11();
        v169 = OUTLINED_FUNCTION_116();
        v170(v169);
      }

      FriendsButtonComponentModel = type metadata accessor for SocialProfileFindFriendsButtonComponentModel(0);
      OUTLINED_FUNCTION_1_31(FriendsButtonComponentModel);
      OUTLINED_FUNCTION_93_0(v172);

      v107 = *(v1 + 28);
      goto LABEL_114;
    case 0x2Au:
      v108 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_14_9(v108))
      {
        OUTLINED_FUNCTION_3_11();
        v109 = OUTLINED_FUNCTION_116();
        v110(v109);
      }

      v111 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader(0);
      OUTLINED_FUNCTION_11_19(v111);
      goto LABEL_153;
    case 0x2Bu:
      v173 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_14_9(v173))
      {
        OUTLINED_FUNCTION_3_11();
        v174 = OUTLINED_FUNCTION_116();
        v175(v174);
      }

      v176 = type metadata accessor for SocialProfileFollowRequestResponseHeader(0);
      OUTLINED_FUNCTION_1_31(v176);
      OUTLINED_FUNCTION_93_0(v177);

      OUTLINED_FUNCTION_93_0(*(v1 + 28));

      v178 = OUTLINED_FUNCTION_17_19(*(v1 + 32));
      if (v179)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v178);
      }

      v107 = *(v1 + 36);
LABEL_114:
      v180 = OUTLINED_FUNCTION_17_19(v107);
      if (v181)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v180);
      }

      goto LABEL_154;
    case 0x2Cu:
      v50 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_14_9(v50))
      {
        OUTLINED_FUNCTION_3_11();
        v51 = OUTLINED_FUNCTION_116();
        v52(v51);
      }

      v53 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel(0);
      OUTLINED_FUNCTION_11_19(v53);
      goto LABEL_153;
    case 0x2Eu:
      v22 = OUTLINED_FUNCTION_10_14();
      type metadata accessor for SocialOnboardingSharedPlaylistPageLockup(v22);
LABEL_57:
      v91 = OUTLINED_FUNCTION_15_13();
      if (!OUTLINED_FUNCTION_7_21(v91))
      {
        OUTLINED_FUNCTION_4_23();
        v92 = OUTLINED_FUNCTION_16_19();
        v93(v92);
      }

      goto LABEL_153;
    case 0x2Fu:
      v7 = OUTLINED_FUNCTION_10_14();
      type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup(v7);
      v8 = OUTLINED_FUNCTION_15_13();
      if (!OUTLINED_FUNCTION_7_21(v8))
      {
        OUTLINED_FUNCTION_4_23();
        v9 = OUTLINED_FUNCTION_16_19();
        v10(v9);
      }

LABEL_96:

      goto LABEL_153;
    case 0x30u:
      v11 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_14_9(v11))
      {
        OUTLINED_FUNCTION_3_11();
        v12 = OUTLINED_FUNCTION_116();
        v13(v12);
      }

      v14 = type metadata accessor for SocialProfileHorizontalLockupSection(0);
      OUTLINED_FUNCTION_1_31(v14);

      if (*(v6 + *(v1 + 28)) == 1)
      {
        goto LABEL_154;
      }

LABEL_153:

LABEL_154:

      return swift_deallocObject();
    case 0x31u:
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + v5));

      goto LABEL_153;
    case 0x32u:
      v229 = OUTLINED_FUNCTION_10_14();
      v89 = *(type metadata accessor for Spacer(v229) + 20);
LABEL_146:
      v67 = sub_21700D7A4();
LABEL_147:
      if (!OUTLINED_FUNCTION_22_8(v6 + v89))
      {
        OUTLINED_FUNCTION_3_11();
        (*(v230 + 8))(v6 + v89, v67);
      }

      goto LABEL_154;
    case 0x3Cu:
      v187 = OUTLINED_FUNCTION_10_14();
      type metadata accessor for VerticalArtworkListItem(v187);
      v188 = OUTLINED_FUNCTION_15_13();
      if (!OUTLINED_FUNCTION_7_21(v188))
      {
        OUTLINED_FUNCTION_4_23();
        v189 = OUTLINED_FUNCTION_16_19();
        v190(v189);
      }

      OUTLINED_FUNCTION_6_25();

      OUTLINED_FUNCTION_21_14();
      sub_21700C4B4();
      OUTLINED_FUNCTION_9_0();
      (*(v191 + 8))(v2);
      v192 = *(type metadata accessor for Artwork(0) + 20);
      sub_21700C444();
      OUTLINED_FUNCTION_9_0();
      (*(v193 + 8))(v2 + v192);
      v194 = OUTLINED_FUNCTION_17_19(*(v1 + 32));
      if (v195)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v194);
      }

      v98 = *(v1 + 36);
LABEL_152:
      OUTLINED_FUNCTION_93_0(v98);
      goto LABEL_153;
    default:
      goto LABEL_154;
  }
}

uint64_t sub_216702EBC()
{

  return swift_deallocObject();
}

uint64_t sub_216702F00(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[12];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
        v11 = a3[14];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_21670302C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[12];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
        v11 = a4[14];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_216703154(uint64_t a1)
{
  result = sub_2166D65B0(&qword_280E439E8, _s6LockupVMa);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2167031AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2167031F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216703240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
    v9 = a1 + *(a3 + 72);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2167032D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
    v8 = v5 + *(a4 + 72);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216703384()
{
  v1 = type metadata accessor for ReplayPageContentView(0);
  OUTLINED_FUNCTION_43_0();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  sub_2166B8588(*(v0 + v3), *(v0 + v3 + 8));
  swift_unknownObjectRelease();

  v4 = *(v1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v5 + 8))(v0 + v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

__n128 sub_216703528(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21670355C()
{
  OUTLINED_FUNCTION_49();
  v1 = type metadata accessor for ReplayPageContentView(0);
  OUTLINED_FUNCTION_43_0();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for MappedReplayPage(0);
  OUTLINED_FUNCTION_1();
  sub_2166B8588(*(v0 + v3), *(v0 + v3 + 8));
  swift_unknownObjectRelease();

  v7 = *(v1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v8 + 8))(v0 + v3 + v7);
  }

  else
  {
  }

  OUTLINED_FUNCTION_7_22();

  v9 = *(v6 + 24);
  sub_21700D194();
  OUTLINED_FUNCTION_9_0();
  (*(v10 + 8))(v0 + v5 + v9);

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_21670377C()
{
  OUTLINED_FUNCTION_49();
  v1 = type metadata accessor for ReplayPageContentView(0);
  OUTLINED_FUNCTION_43_0();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for MappedReplayPage(0);
  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();
  sub_2166B8588(*(v0 + v3), *(v0 + v3 + 8));
  swift_unknownObjectRelease();

  v7 = *(v1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v8 + 8))(v0 + v3 + v7);
  }

  else
  {
  }

  OUTLINED_FUNCTION_7_22();

  v9 = *(v6 + 24);
  sub_21700D194();
  OUTLINED_FUNCTION_9_0();
  (*(v10 + 8))(v0 + v5 + v9);

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_2167039A0()
{
  v1 = (type metadata accessor for MappedReplayPage(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[8];
  sub_21700D194();
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v0 + v2 + v3);

  return swift_deallocObject();
}

uint64_t sub_216703AAC()
{

  return swift_deallocObject();
}

uint64_t sub_216703AEC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB62D8, &qword_21701C700);
  sub_216826B9C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216703C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SectionContent(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 36) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216703CDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SectionContent(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

__n128 sub_216703DE0(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_216703DF4()
{
  v2 = OUTLINED_FUNCTION_13_13();
  type metadata accessor for GridView(v2, v3);
  OUTLINED_FUNCTION_43_3();
  v5 = v0 + ((*(v4 + 80) + 64) & ~*(v4 + 80));
  OUTLINED_FUNCTION_50();
  (*(v6 + 8))(v5);
  __swift_destroy_boxed_opaque_existential_1Tm((v5 + v1[19]));
  OUTLINED_FUNCTION_32_11((v5 + v1[21]));

  OUTLINED_FUNCTION_46_8(v5 + v1[24]);
  v7 = v1[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008844();
    OUTLINED_FUNCTION_9_0();
    (*(v8 + 8))(v5 + v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216703F50()
{

  return swift_deallocObject();
}

uint64_t sub_216703F90()
{
  v2 = OUTLINED_FUNCTION_13_13();
  type metadata accessor for GridView(v2, v3);
  OUTLINED_FUNCTION_43_3();
  v5 = v0 + ((*(v4 + 80) + 64) & ~*(v4 + 80));
  OUTLINED_FUNCTION_50();
  (*(v6 + 8))(v5);
  __swift_destroy_boxed_opaque_existential_1Tm((v5 + v1[19]));
  OUTLINED_FUNCTION_32_11((v5 + v1[21]));

  OUTLINED_FUNCTION_46_8(v5 + v1[24]);
  v7 = v1[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008844();
    OUTLINED_FUNCTION_9_0();
    (*(v8 + 8))(v5 + v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2167041B4(uint64_t *a1)
{
  v1 = a1[5];
  v2 = OUTLINED_FUNCTION_30_7();
  type metadata accessor for GridView.HorizontalGridView(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F8, &unk_21701D170);
  v4 = sub_2170075B4();
  v28 = v1;
  v5 = OUTLINED_FUNCTION_30_7();
  type metadata accessor for GridView.ItemView(v5, v6);
  OUTLINED_FUNCTION_12_6();
  v22 = v4;
  WitnessTable = swift_getWitnessTable();
  v27 = MEMORY[0x277D84038];
  OUTLINED_FUNCTION_30_7();
  sub_21700B174();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8860, &unk_21701A550);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB88D8, &qword_21701D180);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0, &qword_21702FD10);
  sub_2170089F4();
  OUTLINED_FUNCTION_11_20();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_27();
  v7 = swift_getWitnessTable();
  OUTLINED_FUNCTION_21_15(v7, MEMORY[0x277CE0760]);
  swift_getWitnessTable();
  v8 = MEMORY[0x277CE04A0];
  sub_2166D9530(&qword_280E2A8D8, &qword_27CAB8860, &unk_21701A550, MEMORY[0x277CE04A0]);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A8C8, &qword_27CAB88D8, &qword_21701D180, v8);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_5();
  sub_2166D9530(v9, &qword_27CAB93F0, &qword_21702FD10, v10);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_30_7();
  v11 = sub_217009EE4();
  v12 = sub_2170086D4();
  OUTLINED_FUNCTION_23_9();
  v13 = swift_getWitnessTable();
  v14 = MEMORY[0x277CDD980];
  OUTLINED_FUNCTION_22_21();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v16 = OUTLINED_FUNCTION_45_7(&v23);
  v23 = OpaqueTypeMetadata2;
  v24 = v16;
  OUTLINED_FUNCTION_20_15();
  OUTLINED_FUNCTION_30_7();
  swift_getOpaqueTypeMetadata2();
  sub_2170089F4();
  sub_2170089F4();
  OUTLINED_FUNCTION_19_0();
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93E8, &unk_21701D160);
  OUTLINED_FUNCTION_19_0();
  v17 = sub_2170089F4();
  v23 = v22;
  v24 = MEMORY[0x277D84030];
  v25 = v17;
  v26 = WitnessTable;
  v27 = MEMORY[0x277D84038];
  OUTLINED_FUNCTION_30_7();
  sub_21700B174();
  OUTLINED_FUNCTION_27_11();
  sub_2170089F4();
  OUTLINED_FUNCTION_10_17();
  sub_2166D9530(v18, &qword_27CAB93E8, &unk_21701D160, v19);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_21700B494();
  sub_2170089F4();
  OUTLINED_FUNCTION_27_11();
  sub_2170089F4();
  OUTLINED_FUNCTION_36_7();
  sub_2170089F4();
  sub_2170089F4();
  sub_217009564();
  OUTLINED_FUNCTION_1_33();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_32();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_216704714()
{
  v2 = OUTLINED_FUNCTION_13_13();
  type metadata accessor for GridView.HorizontalGridView(v2, v3);
  OUTLINED_FUNCTION_117();
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);

  v6 = v1 + v5;

  v15 = OUTLINED_FUNCTION_31_14(v7, v8, v9, v10, v11, v12, v13, v14, v19);
  (*(v16 + 8))(v6 + v17, v15);
  OUTLINED_FUNCTION_32_11((v6 + *(v0 + 100)));
  OUTLINED_FUNCTION_46_8(v6 + *(v0 + 116));
  return swift_deallocObject();
}

uint64_t sub_216704808()
{
  v2 = OUTLINED_FUNCTION_13_13();
  type metadata accessor for GridView.HorizontalGridView(v2, v3);
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_26_2();
  v5 = v1 + v4;

  v14 = OUTLINED_FUNCTION_31_14(v6, v7, v8, v9, v10, v11, v12, v13, v18);
  (*(v15 + 8))(v5 + v16, v14);
  OUTLINED_FUNCTION_32_11((v5 + *(v0 + 100)));
  OUTLINED_FUNCTION_46_8(v5 + *(v0 + 116));
  return swift_deallocObject();
}

uint64_t sub_2167048EC(uint64_t a1)
{
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2167049D0(__int128 *a1)
{
  v19 = a1[1];
  v20 = *a1;
  v2 = sub_2170075B4();
  v21 = v20;
  v22 = v19;
  v23 = a1[2];
  type metadata accessor for GridView.ItemView(255, &v21);
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93E8, &unk_21701D160);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_217009B44();
  OUTLINED_FUNCTION_19_0();
  v3 = sub_2170089F4();
  OUTLINED_FUNCTION_12_6();
  WitnessTable = swift_getWitnessTable();
  *&v21 = v2;
  *(&v21 + 1) = MEMORY[0x277D84030];
  *&v22 = v3;
  *(&v22 + 1) = WitnessTable;
  *&v23 = MEMORY[0x277D84038];
  sub_21700B174();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9438, &qword_21701D360);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  OUTLINED_FUNCTION_11_20();
  v5 = swift_getWitnessTable();
  OUTLINED_FUNCTION_21_15(v5, MEMORY[0x277CDF678]);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_17();
  sub_2166D9530(v6, &qword_27CAB93E8, &unk_21701D160, v7);
  swift_getWitnessTable();
  sub_216839810(&qword_280E2A6F0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_27();
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2AC38, &qword_27CAB9438, &qword_21701D360, MEMORY[0x277CE01A0]);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  v8 = sub_21700B454();
  v9 = swift_getWitnessTable();
  *&v21 = v8;
  *(&v21 + 1) = v9;
  swift_getOpaqueTypeMetadata2();
  sub_2170089F4();
  sub_2170089F4();
  OUTLINED_FUNCTION_36_7();
  sub_2170089F4();
  OUTLINED_FUNCTION_27_11();
  sub_2170089F4();
  *&v21 = v8;
  *(&v21 + 1) = v9;
  OUTLINED_FUNCTION_45_7(&v21);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_217008044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9440, qword_21701D368);
  OUTLINED_FUNCTION_19_0();
  v10 = sub_2170089F4();
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A8D0, &qword_27CAB9440, qword_21701D368, MEMORY[0x277CE04A0]);
  v11 = swift_getWitnessTable();
  *&v21 = v10;
  *(&v21 + 1) = v11;
  swift_getOpaqueTypeMetadata2();
  *&v21 = v10;
  *(&v21 + 1) = v11;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_19_0();
  v12 = sub_217008B64();
  v13 = sub_217009B84();
  v14 = swift_getWitnessTable();
  *&v21 = v12;
  *(&v21 + 1) = v13;
  v15 = MEMORY[0x277CDE478];
  *&v22 = v14;
  *(&v22 + 1) = MEMORY[0x277CDE478];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0, &qword_21702FD10);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  *&v21 = v12;
  *(&v21 + 1) = v13;
  *&v22 = v14;
  *(&v22 + 1) = v15;
  OUTLINED_FUNCTION_45_7(&v21);
  OUTLINED_FUNCTION_7_5();
  sub_2166D9530(v16, &qword_27CAB93F0, &qword_21702FD10, v17);
  return swift_getWitnessTable();
}

uint64_t sub_216704EE8(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[9];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      v14 = a3[10];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_21670501C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[9];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      v14 = a4[10];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216705190()
{

  return swift_deallocObject();
}

uint64_t sub_2167051C8()
{

  OUTLINED_FUNCTION_181();

  return swift_deallocObject();
}

uint64_t sub_2167051FC()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_216705230()
{

  OUTLINED_FUNCTION_68_1();

  return swift_deallocObject();
}

uint64_t sub_216705268()
{

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

uint64_t sub_2167052A4()
{
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_2167052E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21700C924();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAB6AF0, &unk_21701D840);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_2167053DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_21700C924();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAB6AF0, &unk_21701D840);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2167054E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21670553C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2167055DC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_216705614()
{
  sub_217005974();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v1 + v4, v0);

  return swift_deallocObject();
}

uint64_t sub_216705700()
{

  return swift_deallocObject();
}

__n128 sub_2167057B0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2167057BC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_110();
  v5 = type metadata accessor for PopoverSelector(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_216705800()
{
  v0 = OUTLINED_FUNCTION_110();
  type metadata accessor for PopoverSelector(v0);
  v1 = OUTLINED_FUNCTION_54();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_21670583C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PopoverSelector(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_2167058F8(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_110();
  result = type metadata accessor for PopoverSelector(v8);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = OUTLINED_FUNCTION_54();

    return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_2167059D8()
{
  type metadata accessor for PopoverSelectorView.ButtonView(0);
  OUTLINED_FUNCTION_4_4();
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = sub_21700D7A4();
  if (!OUTLINED_FUNCTION_9_1(v8))
  {
    (*(*(v2 - 8) + 8))(v7, v2);
  }

  v9 = type metadata accessor for PopoverSelector(0);
  OUTLINED_FUNCTION_10_18(v9);
  OUTLINED_FUNCTION_7_7(*(v2 + 28));

  OUTLINED_FUNCTION_7_7(*(v0 + 20));

  if (*(v1 + v6 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + v6 + 32));
  }

  return swift_deallocObject();
}

uint64_t sub_216705B04()
{
  type metadata accessor for PopoverSelectorView.ButtonView(0);
  OUTLINED_FUNCTION_4_4();
  v4 = (*(v3 + 80) + 88) & ~*(v3 + 80);

  if (*(v1 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 48));
  }

  v5 = sub_21700D7A4();
  if (!OUTLINED_FUNCTION_9_1(v5))
  {
    (*(*(v2 - 8) + 8))(v1 + v4, v2);
  }

  v6 = type metadata accessor for PopoverSelector(0);
  OUTLINED_FUNCTION_10_18(v6);
  OUTLINED_FUNCTION_7_7(*(v2 + 28));

  OUTLINED_FUNCTION_7_7(*(v0 + 20));

  return swift_deallocObject();
}

uint64_t sub_216705C2C()
{

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  }

  return swift_deallocObject();
}

uint64_t sub_216705C9C()
{

  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  }

  return swift_deallocObject();
}

uint64_t sub_216705D04()
{
  v0 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  sub_217009354();
  sub_2166D9530(&qword_27CAB9D38, &qword_27CAB9D10, &qword_21701EB08, MEMORY[0x277CDF028]);
  sub_21685466C(&qword_27CAB9D40, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216705E1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216705E64(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216705EB0()
{

  return swift_deallocObject();
}

uint64_t sub_216705F18()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_65_3();

  return swift_deallocObject();
}

__n128 sub_216705F54(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_216705F6C()
{

  OUTLINED_FUNCTION_65_3();

  return swift_deallocObject();
}

uint64_t sub_216705FEC()
{

  return swift_deallocObject();
}

uint64_t sub_216706070(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_11_1();
    return (v3 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    v6 = OUTLINED_FUNCTION_19_1(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_2167060F8()
{
  OUTLINED_FUNCTION_21_0();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    v5 = OUTLINED_FUNCTION_19_1(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_2167061A0()
{
  v2 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_4_4();
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v4 + 8))(v1 + v5, v2);
  v10 = v1 + v9;
  v11 = type metadata accessor for ContentDescriptor(0);
  if (!__swift_getEnumTagSinglePayload(v1 + v9, 1, v11))
  {

    v12 = *(v11 + 24);
    v13 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v10 + v12, 1, v13))
    {
      (*(*(v13 - 8) + 8))(v10 + v12, v13);
    }
  }

  v14 = v10 + *(v0 + 20);
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_9_0();
    (*(v15 + 8))(v14);
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0, &unk_21701F4F0) + 48);
    v17 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v14 + v16, 1, v17))
    {
      (*(*(v17 - 8) + 8))(v14 + v16, v17);
    }
  }

  v18 = (v10 + *(v0 + 32));
  if (v18[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  return swift_deallocObject();
}

uint64_t sub_216706468()
{
  sub_2170067A4();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_2167064E4()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21670652C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_11_1();
    return (v3 + 1);
  }

  else
  {
    if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350) - 8) + 84) == a2)
    {
      v6 = *(a3 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
      v6 = *(a3 + 28);
    }

    v7 = OUTLINED_FUNCTION_19_1(v6);

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void sub_216706604()
{
  OUTLINED_FUNCTION_21_0();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350) - 8);
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
      v8 = *(v5 + 28);
    }

    v9 = OUTLINED_FUNCTION_19_1(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_2167066D8()
{
  type metadata accessor for PosterLockupView.Card(0);
  OUTLINED_FUNCTION_4_4();
  v3 = (*(v2 + 80) + 81) & ~*(v2 + 80);

  if (*(v1 + 72) != 1)
  {
  }

  v4 = v1 + v3;

  sub_216684F5C(*(v4 + 8), *(v4 + 16));
  v5 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008844();
    OUTLINED_FUNCTION_9_0();
    (*(v6 + 8))(v4 + v5);
  }

  else
  {
  }

  v7 = *(v0 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v8 + 8))(v4 + v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216706884(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_11_1();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
    v7 = OUTLINED_FUNCTION_19_1(*(a3 + 24));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_216706918(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
    v6 = OUTLINED_FUNCTION_19_1(*(a4 + 24));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_2167069A4()
{
  v0 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  sub_21686C170(&unk_27CABA220);
  OUTLINED_FUNCTION_5_5();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216706A34(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_21686CE9C(*v3, *(v3 + 8));
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t sub_216706A88(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_216706B1C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216706BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216706C80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216706D2C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[10];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA338, &unk_217020060);
        v11 = a3[11];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_216706E58(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[10];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA338, &unk_217020060);
        v11 = a4[11];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_216706FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_216707084(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216707110()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA398, &qword_2170203A8);
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_8();
  v2(v1);
  return v0;
}

uint64_t sub_216707170()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216870FC0();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2167071DC()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216870FAC();
  *v0 = result & 1;
  return result;
}

uint64_t sub_216707240()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216870F38();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_216707274()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216870DDC();
  *v0 = result;
  return result;
}

uint64_t sub_2167072A8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2167072E0()
{

  return swift_deallocObject();
}

uint64_t sub_216707320()
{

  return swift_deallocObject();
}

uint64_t sub_216707358()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA380, &qword_217020390);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA420, &unk_21706D110);
  sub_21687534C();
  OUTLINED_FUNCTION_3_41();
  sub_21669E098(v0, &qword_27CABA420, &unk_21706D110, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21670740C()
{
  sub_217009BE4();
  sub_217008AD4();
  sub_2168752B0(&qword_280E2A6D8, MEMORY[0x277CDE500], MEMORY[0x277CDE4F8]);
  sub_2168752B0(&qword_280E2AD60, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  OUTLINED_FUNCTION_2_9();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216707504()
{
  sub_2170068C4();
  OUTLINED_FUNCTION_34();
  v0 = OUTLINED_FUNCTION_11_22();
  v1(v0);

  return swift_deallocObject();
}

uint64_t sub_2167075AC()
{
  v1 = sub_21700B8D4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 113) & ~*(v2 + 80);

  swift_unknownObjectRelease();

  sub_2166B8588(*(v0 + 96), *(v0 + 104));
  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_216707690()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  OUTLINED_FUNCTION_2(v1);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);

  sub_2166B8588(*(v0 + 40), *(v0 + 48));

  v4 = sub_2170098A4();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v0 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_2167077B4()
{
  v1 = (type metadata accessor for SearchResultsListSection(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[9];
  sub_21700D194();
  OUTLINED_FUNCTION_34();
  (*(v4 + 8))(v2 + v3);

  return swift_deallocObject();
}

uint64_t sub_2167078B0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA508, &qword_2170209F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA550, &unk_217020A40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA500, &qword_2170209E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA4F8, &qword_2170209E0);
  OUTLINED_FUNCTION_3_42();
  sub_21687E120(v0, &qword_27CABA500, &qword_2170209E8, v1);
  sub_21687C2EC();
  swift_getOpaqueTypeConformance2();
  sub_21687C5A0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2167079C4()
{

  return swift_deallocObject();
}

uint64_t sub_2167079FC()
{
  v1 = sub_2170068C4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = (v4 + *(v5 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v4, v1);

  sub_2166B8588(*(v0 + v6 + 32), *(v0 + v6 + 40));

  return swift_deallocObject();
}

uint64_t sub_216707ADC()
{
  sub_2170068C4();
  OUTLINED_FUNCTION_34();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 17) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_216707BBC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MappedReplayModel(0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
      v10 = *(a3 + 36);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_216707C94(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for MappedReplayModel(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
      v10 = *(a4 + 36);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_216707D70()
{
  OUTLINED_FUNCTION_49();
  v1 = type metadata accessor for ReplaySwiftMusicContentView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[5];

  v4 = v3 + *(type metadata accessor for MappedReplayModel(0) + 20);

  v5 = v4 + *(type metadata accessor for MappedReplayYearModel(0) + 20);

  v6 = *(type metadata accessor for MappedReplayPage(0) + 24);
  sub_21700D194();
  OUTLINED_FUNCTION_34();
  (*(v7 + 8))(v5 + v6);

  v8 = (v2 + v1[7]);
  if (v8[1])
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v8 + 2);
    if (v8[10])
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v8 + 7);
    }
  }

  v9 = (v2 + v1[8]);

  __swift_destroy_boxed_opaque_existential_1Tm(v9 + 2);
  if (v9[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v9 + 7);
  }

  v10 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2170098A4();
    if (!__swift_getEnumTagSinglePayload(v2 + v10, 1, v11))
    {
      (*(*(v11 - 8) + 8))(v2 + v10, v11);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_216708010()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA6C8, &qword_217020F08);
  type metadata accessor for ObjectGraph(255);
  sub_216880B70();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2167080FC()
{
  type metadata accessor for OpenAddToPlaylistAction(0);
  OUTLINED_FUNCTION_117();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v9 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);

  v10 = *(v0 + 28);
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v11 + 8))(v1 + v3 + v10);
  (*(v8 + 8))(v1 + v9, v6);

  return swift_deallocObject();
}

uint64_t sub_21670824C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for ProcessDeepLinkAction(0);
  OUTLINED_FUNCTION_43_3();
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v27 = *(v10 + 64);
  v26 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  v13 = *(v11 + 80);
  (*(v4 + 8))(v0 + v5, v2);
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v14 + 8))(v0 + v9);
  v15 = *(v1 + 28);
  v16 = sub_217005EF4();
  OUTLINED_FUNCTION_34();
  v18 = v0 + v9 + v15;
  v19 = *(v17 + 8);
  v19(v18, v16);
  v20 = v0 + v9 + *(v1 + 32);
  v21 = type metadata accessor for ReferrerInfo(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v21);
  v23 = v27;
  v24 = v26;
  if (!EnumTagSinglePayload)
  {
    if (!__swift_getEnumTagSinglePayload(v20, 1, v16))
    {
      v19(v20, v16);
    }

    v24 = v26;
    v23 = v27;
  }

  (*(v12 + 8))(v0 + ((v9 + v23 + v13) & ~v13), v24);

  return swift_deallocObject();
}

uint64_t sub_216708500()
{
  OUTLINED_FUNCTION_49();
  type metadata accessor for RemoveFromPlaylistAction(0);
  OUTLINED_FUNCTION_43_3();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v9 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);

  v10 = v0 + v3;
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v11 + 8))(v0 + v3);
  v12 = *(v1 + 28);
  sub_21700C8E4();
  OUTLINED_FUNCTION_9_0();
  (*(v13 + 8))(v10 + v12);
  v14 = *(v1 + 32);
  sub_21700C924();
  OUTLINED_FUNCTION_9_0();
  (*(v15 + 8))(v10 + v14);
  (*(v8 + 8))(v0 + v9, v6);
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_21670869C()
{
  OUTLINED_FUNCTION_49();
  type metadata accessor for OpenMoveToFolderAction(0);
  OUTLINED_FUNCTION_43_3();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v9 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);

  sub_21700C924();
  OUTLINED_FUNCTION_9_0();
  (*(v10 + 8))(v0 + v3);
  v11 = *(v1 + 28);
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v12 + 8))(v0 + v3 + v11);
  (*(v8 + 8))(v0 + v9, v6);
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_216708808()
{
  OUTLINED_FUNCTION_49();
  type metadata accessor for PromptHideFromProfileAction(0);
  OUTLINED_FUNCTION_117();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v9 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);

  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v10 + 8))(v1 + v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3 + *(v0 + 28)));
  (*(v8 + 8))(v1 + v9, v6);
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_216708950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216708A00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216708AAC()
{

  return swift_deallocObject();
}

uint64_t sub_216708AEC()
{

  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

uint64_t sub_216708B20()
{
  v1 = (type metadata accessor for SourceBundleLoader(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v1[7];
  sub_21700CB44();
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v0 + v2 + v3);

  return swift_deallocObject();
}

uint64_t sub_216708E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_21700F7D4();
  }
}

uint64_t sub_216709028(uint64_t a1, char a2)
{
  sub_21700E614();
}

uint64_t sub_2167090DC(uint64_t a1, char a2)
{
  sub_21700E614();
}

uint64_t sub_21670936C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2167092C4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_216709684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_216709724(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216709874()
{

  return swift_deallocObject();
}

__n128 sub_2167099D4(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_2167099E0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_216709A74(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216709B18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB488, &qword_217023770);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_216709C28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2168B03F0();
  *a1 = result;
  return result;
}

uint64_t sub_216709C80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2168B02FC();
  *a1 = result;
  return result;
}

uint64_t sub_216709CDC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216709D48()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_216709D80()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB520, &qword_217023978) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB528, &qword_217023988);
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v3))
  {
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_216709E94()
{

  return swift_deallocObject();
}

uint64_t sub_216709ED4()
{

  return swift_deallocObject();
}

uint64_t sub_216709F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContainerDetailTracklistFooterLockup(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 > 1)
    {
      return (v8 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_216709FDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ContainerDetailTracklistFooterLockup(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_21670A0CC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217006E94();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_12:
    v9 = a1 + v12;
    goto LABEL_13;
  }

  if (a2 != 2147483646)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    v12 = a3[7];
    goto LABEL_12;
  }

  v13 = *(a1 + a3[6]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_21670A1F0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217006E94();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 2147483646)
      {
        *(a1 + a4[6]) = a2;
        return;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
      v14 = a4[7];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI7BindingVy05MusicB04LinkVSgGSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21670A320()
{

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  }

  return swift_deallocObject();
}

uint64_t sub_21670A380@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217008E74();
  *a1 = result;
  return result;
}

uint64_t sub_21670A3BC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB600, &unk_217023E48);
  OUTLINED_FUNCTION_34();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_21670A42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PopoverAccessoryButton(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_21670A4E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PopoverAccessoryButton(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_21670A5A4()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_21670A5D8()
{

  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

__n128 sub_21670A860(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_21670AA24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21670AA78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21670AAF4()
{
  v1 = (type metadata accessor for GoToAlbumAction(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  v7 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);

  sub_21700C084();
  OUTLINED_FUNCTION_9_0();
  (*(v8 + 8))(v0 + v2);
  v9 = v1[8];
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v10 + 8))(v0 + v2 + v9);
  (*(v6 + 8))(v0 + v7, v4);

  return swift_deallocObject();
}

uint64_t sub_21670AC7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21700D284();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21670AD04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21670AD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21700D194();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21670AE0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21700D194();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21670AE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
    v8 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20) + 24);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_21670AF78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20) + 24) = a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21670B054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_21670B0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

__n128 sub_21670B1BC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21670B214()
{
  v1 = _s6ActionVMa(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 32));
  }

  v3 = *(v1 + 20);
  v4 = sub_217007F04();
  if (!__swift_getEnumTagSinglePayload(v2 + v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21670B364@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2168D38EC();
  *a1 = result;
  return result;
}

uint64_t sub_21670B458()
{
  sub_21700DFD4();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_21670B508()
{

  return swift_deallocObject();
}

uint64_t sub_21670B57C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1[1];
  v10 = *a1;
  type metadata accessor for PageViewEnvironmentModifier(255, *a1, v9, a4);
  OUTLINED_FUNCTION_6_32();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_3();
  sub_2170097A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB9F8, &unk_217054400);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA00, &qword_217024DD0);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA08, &qword_217024DD8);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA10, &unk_217024DE0);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  type metadata accessor for PopoverBubbleTipRequestManager(255);
  OUTLINED_FUNCTION_7_31();
  swift_getWitnessTable();
  v4 = MEMORY[0x277CE0868];
  sub_2166D9530(&qword_280E2A7F0, &qword_27CABB9F8, &unk_217054400, MEMORY[0x277CE0868]);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A7D8, &qword_27CABBA00, &qword_217024DD0, v4);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A7E0, &qword_27CABBA08, &qword_217024DD8, v4);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A7C0, &qword_27CABBA10, &unk_217024DE0, v4);
  swift_getWitnessTable();
  sub_2166B4B88(&qword_280E30968, type metadata accessor for PopoverBubbleTipRequestManager, &unk_21703A2E0);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA18, &unk_2170543F0);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA20, &qword_217024DF0);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  type metadata accessor for ObjectGraph(255);
  swift_getOpaqueTypeConformance2();
  sub_2166D9530(&qword_280E2A7E8, &qword_27CABBA18, &unk_2170543F0, v4);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A7A8, &qword_27CABBA20, &qword_217024DF0, v4);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v6 = type metadata accessor for CatalogPagePresenter(255, v10, v9, v5);
  type metadata accessor for ViewAppearanceLifecycleModifier(255, v6, &off_282924570, v7);
  OUTLINED_FUNCTION_11_27();
  sub_2170089F4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PageRenderMetricsViewModifier(255);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_2170089F4();
  swift_getOpaqueTypeConformance2();
  sub_2166B4B88(&qword_280E314E0, type metadata accessor for PageRenderMetricsViewModifier, &unk_217034F58);
  swift_getWitnessTable();
  sub_2168E341C();
  return swift_getWitnessTable();
}

uint64_t sub_21670BA80(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PageViewContentViewModifier(255, *a1, a1[1], a4);
  OUTLINED_FUNCTION_1_50();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_3();
  sub_2170097A4();
  OUTLINED_FUNCTION_7_31();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PageNavigationModifier(255);
  OUTLINED_FUNCTION_11_3();
  sub_2170089F4();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_27_17();
  sub_2166B4B88(v4, v5, &unk_21706B898);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_2170089F4();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_21670BC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *(v5 + 24);
  OUTLINED_FUNCTION_56_9(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_4();
  v7 = (v5 + ((*(v6 + 80) + 48) & ~*(v6 + 80)));
  v8 = sub_2166B8588(*v7, v7[1]);
  v16 = OUTLINED_FUNCTION_45_13(v8, v9, v10, v11, v12, v13, v14, v15, v22);
  (*(v17 + 8))(v7 + v18, v16);

  v19 = v4[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v20 + 8))(v7 + v19);
  }

  else
  {
  }

  sub_216684F5C(*(v7 + v4[25]), *(v7 + v4[25] + 8));
  sub_2166B8588(*(v7 + v4[26]), *(v7 + v4[26] + 8));
  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_21670BE88()
{

  return swift_deallocObject();
}

uint64_t sub_21670BEC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216A403B4();
  *a1 = result & 1;
  return result;
}

__n128 sub_21670BF2C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_21670BF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *(v5 + 24);
  OUTLINED_FUNCTION_56_9(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_4();
  v7 = (v5 + ((*(v6 + 80) + 48) & ~*(v6 + 80)));
  v8 = sub_2166B8588(*v7, v7[1]);
  v16 = OUTLINED_FUNCTION_45_13(v8, v9, v10, v11, v12, v13, v14, v15, v22);
  (*(v17 + 8))(v7 + v18, v16);

  OUTLINED_FUNCTION_54_4(v4[16]);

  OUTLINED_FUNCTION_54_4(v4[21]);

  v19 = v4[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v20 + 8))(v7 + v19);
  }

  else
  {
  }

  OUTLINED_FUNCTION_42_14();

  return swift_deallocObject();
}

uint64_t sub_21670C124()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v18 = *(v0 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  v6 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_56_9(v9, v10, v11, v12, v18);
  OUTLINED_FUNCTION_4_4();
  v14 = (v8 + *(v13 + 80) + 8) & ~*(v13 + 80);
  (*(v5 + 8))(v0 + v6, AssociatedTypeWitness);

  sub_2166B8588(*(v0 + v14), *(v0 + v14 + 8));
  (*(*(v2 - 8) + 8))(v0 + v14 + v1[13], v2);

  OUTLINED_FUNCTION_54_4(v1[16]);

  OUTLINED_FUNCTION_54_4(v1[21]);

  v15 = v1[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v16 + 8))(v0 + v14 + v15);
  }

  else
  {
  }

  OUTLINED_FUNCTION_42_14();
  return swift_deallocObject();
}

uint64_t sub_21670C3B0()
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80)));

  return swift_deallocObject();
}

void sub_21670C458()
{
  OUTLINED_FUNCTION_49();
  v1 = *v0;
  v2 = v0[2];
  v3 = OUTLINED_FUNCTION_10_23();
  type metadata accessor for DefaultLoadingStyle(v3, v4, v5, v6);
  OUTLINED_FUNCTION_23_16();
  swift_getWitnessTable();
  v7 = OUTLINED_FUNCTION_22_11();
  type metadata accessor for PageLoadingView(v7, v8);
  v9 = OUTLINED_FUNCTION_10_23();
  type metadata accessor for CatalogPagePresenter.State(v9, v10, v11, v12);
  OUTLINED_FUNCTION_34_4();
  sub_21700F164();
  OUTLINED_FUNCTION_34_4();
  sub_217007E04();
  v13 = OUTLINED_FUNCTION_10_23();
  type metadata accessor for SongDetailPageView(v13, v14, v15, v16);
  v17 = OUTLINED_FUNCTION_10_23();
  type metadata accessor for CatalogPagePresenter(v17, v18, v19, v20);
  OUTLINED_FUNCTION_34_4();
  sub_21700F164();
  OUTLINED_FUNCTION_34_4();
  sub_217009B34();
  sub_2170089F4();
  v21 = OUTLINED_FUNCTION_10_23();
  type metadata accessor for SearchPageListContentView(v21, v22, v23, v24);
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA40, &qword_217024F38);
  OUTLINED_FUNCTION_11_3();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA48, &qword_217024F40);
  OUTLINED_FUNCTION_11_3();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA50, &qword_217024F48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA58, &unk_217024F50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9000, &qword_21701C310);
  v25 = OUTLINED_FUNCTION_12_24();
  type metadata accessor for CatalogSectionView(v25, v26, v2, v27);
  OUTLINED_FUNCTION_15_22();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_34_4();
  sub_21700B4E4();
  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_21700B084();
  OUTLINED_FUNCTION_32_15();
  sub_2166D9530(v28, &qword_27CAB9000, &qword_21701C310, v29);
  OUTLINED_FUNCTION_46_12();
  OUTLINED_FUNCTION_14_20();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_31_20();
  sub_2166B4B88(v30, v31, &unk_21706B560);
  v32 = OUTLINED_FUNCTION_22_11();
  type metadata accessor for PaginatingShelfCollection(v32, v33);
  _s27BannerNavigationItemAdaptorVMa(255);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_217009564();
  sub_217009564();
  sub_217009564();
  sub_21700F164();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA60, &unk_217024F60);
  OUTLINED_FUNCTION_11_3();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA68, &qword_217057700);
  OUTLINED_FUNCTION_37_15();
  sub_2170089F4();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA70, &unk_217024F70);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA78, &unk_2170708C0);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA80, &qword_217024F80);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_217009564();
  OUTLINED_FUNCTION_37_15();
  sub_217009564();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9278, &qword_21701C850);
  OUTLINED_FUNCTION_11_3();
  sub_2170089F4();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9290, &unk_21701C860);
  OUTLINED_FUNCTION_37_15();
  sub_2170089F4();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9298, &unk_2170544C0);
  OUTLINED_FUNCTION_11_3();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB92A0, &unk_21701C870);
  OUTLINED_FUNCTION_11_3();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA88, &qword_217024F88);
  OUTLINED_FUNCTION_11_3();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB92A8, &unk_217024F90);
  OUTLINED_FUNCTION_11_3();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB92B0, &unk_21701C880);
  OUTLINED_FUNCTION_11_3();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB92B8, &qword_217024FA0);
  OUTLINED_FUNCTION_11_3();
  sub_2170089F4();
  OUTLINED_FUNCTION_25_15();
  swift_getWitnessTable();
  v34 = MEMORY[0x277CE0868];
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_24_16();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2168E41B0();
  swift_getWitnessTable();
  sub_2168E42C0();
  swift_getWitnessTable();
  sub_2168E4548();
  OUTLINED_FUNCTION_21_7();
  sub_2166D9530(v35, &qword_27CABBA58, &unk_217024F50, v36);
  OUTLINED_FUNCTION_20_19();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_18_18();
  sub_2166B4B88(v37, v38, &unk_21706FBF8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_17_26();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_6();
  sub_2166D9530(v39, &qword_27CABBA60, &unk_217024F60, v40);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A7B0, &qword_27CABBA68, &qword_217057700, v34);
  swift_getWitnessTable();
  swift_getWitnessTable();
  v41 = MEMORY[0x277CE0328];
  sub_2166D9530(&qword_280E2AC10, &qword_27CABBA70, &unk_217024F70, MEMORY[0x277CE0328]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2AC08, &qword_27CABBA78, &unk_2170708C0, v41);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2ABE8, &qword_27CABBA80, &qword_217024F80, v41);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A738, &qword_27CAB9278, &qword_21701C850, v34);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A768, &qword_27CAB9290, &unk_21701C860, v34);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A778, &qword_27CAB9298, &unk_2170544C0, v34);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A7B8, &qword_27CAB92A0, &unk_21701C870, v34);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A790, &qword_27CABBA88, &qword_217024F88, v34);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A770, &qword_27CAB92A8, &unk_217024F90, v34);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A788, &qword_27CAB92B0, &unk_21701C880, v34);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A7F8, &qword_27CAB92B8, &qword_217024FA0, v34);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_24_0();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_24_0();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_24_0();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_22_25();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_22_11();
  sub_217008B74();
  type metadata accessor for PageViewContentViewModifier(255, v1, v2, v42);
  OUTLINED_FUNCTION_12_24();
  sub_2170089F4();
  sub_2170089F4();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9150, &qword_21701C740);
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBAA0, &qword_217024FC0);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  v43 = OUTLINED_FUNCTION_11_27();
  type metadata accessor for PageViewEnvironmentModifier(v43, v44, v2, v45);
  sub_2170089F4();
  OUTLINED_FUNCTION_30_16();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_29_16();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_50();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_28_2();
  sub_2166D9530(v46, &qword_27CAB9150, &qword_21701C740, v47);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A748, &qword_27CABBAA0, &qword_217024FC0, v34);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_32();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_21670D228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_14_21();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    type metadata accessor for MusicEvent(0);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) != v3)
    {
      OUTLINED_FUNCTION_37_16();
      return OUTLINED_FUNCTION_22_1(*(v13 + 8));
    }

    v8 = v10;
    v9 = v4 + *(a3 + 36);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_21670D2FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_14_21();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    type metadata accessor for MusicEvent(0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      OUTLINED_FUNCTION_37_16();
      *(v14 + 8) = (v4 - 1);
      return;
    }

    v10 = v12;
    v11 = v5 + *(a4 + 36);
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_21670D3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_14_21();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    type metadata accessor for MusicEvent(0);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v12 = *(a3 + 36);
    }

    else
    {
      if (v3 == 0x7FFFFFFF)
      {
        OUTLINED_FUNCTION_37_16();
        return OUTLINED_FUNCTION_22_1(*(v13 + 24));
      }

      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
      v12 = *(a3 + 52);
    }

    v9 = v4 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_21670D4D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_14_21();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    type metadata accessor for MusicEvent(0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 36);
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        OUTLINED_FUNCTION_37_16();
        *(v15 + 24) = (v4 - 1);
        return;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
      v14 = *(a4 + 52);
    }

    v11 = v5 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_21670D628()
{
  if (*(v0 + 40) >= 2uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21670D668()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21670D6A0()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_21670D6E8(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[11];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      v14 = a3[18];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_21670D81C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[11];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
      v14 = a4[18];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21670D94C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21670D984()
{

  return swift_deallocObject();
}

uint64_t sub_21670DAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_110();
  type metadata accessor for JSSearchResultsPage.QueryContext(v6);
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_6_35(*(a3 + 24));
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
    v10 = v3 + *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

void sub_21670DB7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_110();
  type metadata accessor for JSSearchResultsPage.QueryContext(v8);
  OUTLINED_FUNCTION_17();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
    v12 = v4 + *(a4 + 28);
  }

  __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_21670DC68(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBC90, &qword_217025830);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return a2;
}

uint64_t sub_21670DCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    type metadata accessor for JSSearchResultsPage.QueryContext(0);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) != a2)
    {
      return OUTLINED_FUNCTION_6_35(*(a3 + 28));
    }

    v8 = v10;
    v9 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_21670DDB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for JSSearchResultsPage.QueryContext(0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 24);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21670DF04(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_110();
  Context = type metadata accessor for JSSearchResultsPage.QueryContext(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, Context);
}

uint64_t sub_21670DF48(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_110();
  Context = type metadata accessor for JSSearchResultsPage.QueryContext(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, Context);
}

uint64_t sub_21670E024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_21670E0D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21670E180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21700D284();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21670E208(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21670E288(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[11];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[13];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
        v11 = a3[14];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_21670E3B4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[11];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[13];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
        v11 = a4[14];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_21670E4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710);
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_21670E58C()
{
  OUTLINED_FUNCTION_14_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710);
    v7 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_21670E638()
{
  v1 = type metadata accessor for ContainerDetailArtworkView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  v4 = type metadata accessor for Artwork(0);
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v4))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_34();
    (*(v5 + 8))(v0 + v2);
    v6 = *(v4 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_34();
    (*(v7 + 8))(v3 + v6);
  }

  v8 = v3 + *(v1 + 20);
  v9 = type metadata accessor for VideoArtwork(0);
  if (!__swift_getEnumTagSinglePayload(v8, 1, v9))
  {

    v10 = *(v9 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_34();
    (*(v11 + 8))(v8 + v10);
  }

  return swift_deallocObject();
}

uint64_t sub_21670E7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217006EC4();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
    v9 = a1 + *(a3 + 40);
    goto LABEL_8;
  }

  v10 = *(a1 + *(a3 + 36));
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_21670E8AC()
{
  OUTLINED_FUNCTION_14_8();
  sub_217006EC4();
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + *(v2 + 36)) = (v0 - 1);
      return;
    }

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
    v7 = v1 + *(v2 + 40);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_21670E97C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB76F8, &qword_217017590);
  sub_2167C505C();
  swift_getOpaqueTypeConformance2();
  sub_2170063B4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_2170089F4();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_21670EAB4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_21700BEA4();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_12:
    v9 = a1 + v12;
    goto LABEL_13;
  }

  if (a2 != 2147483646)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    v12 = a3[7];
    goto LABEL_12;
  }

  v13 = *(a1 + a3[6]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_21670EBD8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_21700BEA4();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 2147483646)
      {
        *(a1 + a4[6]) = a2;
        return;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
      v14 = a4[7];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21670EDB8()
{
  sub_21700C384();
  OUTLINED_FUNCTION_34();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_21670EE58()
{
  OUTLINED_FUNCTION_17_6();
  result = sub_2170090A4();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_21670EE8C()
{
  OUTLINED_FUNCTION_17_6();
  result = sub_217008FA4();
  *v0 = result;
  return result;
}

uint64_t sub_21670EEEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) != a2)
    {
      v13 = *(a1 + *(a3 + 28) + 8);
      if (v13 > 1)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_21670EFF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = -a2;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21670F0F4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
    v9 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_21670F188(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
    v8 = v5 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21670F214()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC130, &unk_2170265B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC128, &qword_2170265B0);
  sub_21700C384();
  sub_2169033A0();
  OUTLINED_FUNCTION_4_32();
  sub_216906924(v0, v1, MEMORY[0x277CD8440]);
  swift_getOpaqueTypeConformance2();
  sub_2169035CC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21670F4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670) - 8) + 84) == a2)
  {
    v6 = OUTLINED_FUNCTION_34_2();
LABEL_10:

    return __swift_getEnumTagSinglePayload(v6, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_217005EF4();
    v6 = a1 + *(a3 + 28);
    goto LABEL_10;
  }

  v8 = *(a1 + *(a3 + 24) + 8);
  if (v8 >= 0xFFFFFFFF)
  {
    LODWORD(v8) = -1;
  }

  v9 = v8 - 1;
  if (v9 < 0)
  {
    v9 = -1;
  }

  return (v9 + 1);
}

uint64_t sub_21670F594(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v9 = sub_217005EF4();
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21670F670(uint64_t *a1)
{
  v1 = *(a1 + 2);
  v3[0] = *(a1 + 1);
  v3[1] = v1;
  type metadata accessor for MusicMetricsContextModifier(255, v3);
  sub_2170089F4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21670F714()
{
  OUTLINED_FUNCTION_80_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
  OUTLINED_FUNCTION_17();
  if (*(v3 + 84) == v1)
  {
    v4 = OUTLINED_FUNCTION_73();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }

  else
  {
    v8 = *(v0 + *(v2 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

void sub_21670F7B8()
{
  OUTLINED_FUNCTION_14_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
  OUTLINED_FUNCTION_17();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_54();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24)) = (v0 - 1);
  }
}

uint64_t sub_21670F860()
{
  type metadata accessor for FlowcaseLockupView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v4 + 8))(v1 + v3);
  }

  else
  {
  }

  v5 = v1 + v3 + *(v0 + 20);
  if (*(v5 + 40))
  {
    if (*(v5 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21670F98C()
{
  sub_2170067A4();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_21670FA14()
{
  v2 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_4_4();
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v4 + 8))(v1 + v5, v2);
  v10 = v1 + v9;
  v11 = type metadata accessor for ContentDescriptor(0);
  if (!OUTLINED_FUNCTION_20_1(v1 + v9))
  {

    v12 = *(v11 + 24);
    v13 = sub_217005EF4();
    if (!OUTLINED_FUNCTION_20_1(v10 + v12))
    {
      (*(*(v13 - 8) + 8))(v10 + v12, v13);
    }
  }

  v14 = v10 + *(v0 + 20);
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_9_0();
    (*(v15 + 8))(v14);
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0, &unk_21701F4F0) + 48);
    v17 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v14 + v16, 1, v17))
    {
      (*(*(v17 - 8) + 8))(v14 + v16, v17);
    }
  }

  v18 = (v10 + *(v0 + 32));
  if (v18[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  return swift_deallocObject();
}

uint64_t sub_21670FCB4()
{
  OUTLINED_FUNCTION_13_21();
  if (v2)
  {
    return OUTLINED_FUNCTION_0_11(*(v0 + 24));
  }

  OUTLINED_FUNCTION_29_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  v4 = OUTLINED_FUNCTION_19_1(*(v1 + 44));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_21670FD2C()
{
  OUTLINED_FUNCTION_4_33();
  if (v3)
  {
    *(v1 + 24) = v0;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
    v5 = OUTLINED_FUNCTION_11_6(*(v4 + 44));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_21670FDA8()
{
  type metadata accessor for FlowcaseLockupView.ContentView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v1 + v3;
  if (*(v1 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));
  }

  v5 = v4 + v0[11];
  v6 = type metadata accessor for Artwork(0);
  if (!OUTLINED_FUNCTION_20_1(v5))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v7 + 8))(v5);
    v8 = *(v6 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v9 + 8))(v5 + v8);
  }

  v10 = v4 + v0[12];
  if (!OUTLINED_FUNCTION_20_1(v10))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v11 + 8))(v10);
    v12 = *(v6 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v13 + 8))(v10 + v12);
  }

  sub_216684F5C(*(v4 + v0[15]), *(v4 + v0[15] + 8));

  return swift_deallocObject();
}

uint64_t sub_21670FF98()
{
  OUTLINED_FUNCTION_80_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_17();
  if (*(v3 + 84) != v1)
  {
    return OUTLINED_FUNCTION_0_11(*(v0 + *(v2 + 20) + 8));
  }

  v4 = OUTLINED_FUNCTION_73();

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_216710034()
{
  OUTLINED_FUNCTION_14_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_17();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_54();

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_27_20();
  }
}

uint64_t sub_2167100C4()
{
  OUTLINED_FUNCTION_13_21();
  if (v2)
  {
    return OUTLINED_FUNCTION_0_11(*(v0 + 8));
  }

  OUTLINED_FUNCTION_29_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
  v4 = OUTLINED_FUNCTION_19_1(*(v1 + 36));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_21671013C()
{
  OUTLINED_FUNCTION_4_33();
  if (v3)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
    v5 = OUTLINED_FUNCTION_11_6(*(v4 + 36));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_2167101B4()
{
  v0 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  type metadata accessor for ActionButtonStyle(255);
  sub_21669E098(&qword_27CABC690, &qword_27CABC658, &qword_217064E60, &unk_21702C8E0);
  sub_2166D4620(&qword_280E404C0, type metadata accessor for ActionButtonStyle, &unk_21702C99C);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2167102A8()
{
  OUTLINED_FUNCTION_13_21();
  if (v3)
  {
    return OUTLINED_FUNCTION_0_11(*(v1 + 8));
  }

  OUTLINED_FUNCTION_29_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    v6 = *(v2 + 32);
  }

  v7 = OUTLINED_FUNCTION_19_1(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_21671036C()
{
  OUTLINED_FUNCTION_4_33();
  if (v4)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    v5 = v3;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
    OUTLINED_FUNCTION_17();
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
      v8 = *(v5 + 32);
    }

    v9 = OUTLINED_FUNCTION_11_6(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

uint64_t sub_21671043C()
{
  OUTLINED_FUNCTION_13_21();
  if (v2)
  {
    return OUTLINED_FUNCTION_0_11(*(v0 + 8));
  }

  OUTLINED_FUNCTION_29_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  v4 = OUTLINED_FUNCTION_19_1(*(v1 + 20));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_2167104B4()
{
  OUTLINED_FUNCTION_4_33();
  if (v3)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
    v5 = OUTLINED_FUNCTION_11_6(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_216710564()
{
  OUTLINED_FUNCTION_80_0();
  type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_17();
  if (*(v3 + 84) != v1)
  {
    return OUTLINED_FUNCTION_0_11(*(v0 + *(v2 + 20) + 8));
  }

  v4 = OUTLINED_FUNCTION_73();

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_2167105F4()
{
  OUTLINED_FUNCTION_14_8();
  type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_17();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_54();

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_27_20();
  }
}

uint64_t sub_216710680(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC848, &qword_2170274C0);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return a2;
}

uint64_t sub_21671071C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_216710754()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2167107A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2167107EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216710860(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_216710900(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21671098C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MenuActionType(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v9 = *(a1 + *(a3 + 20));
      if (v9 >= 2)
      {
        return ((v9 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
    v8 = a1 + *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216710A74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MenuActionType(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + *(a4 + 20)) = a2 + 1;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216710C80(uint64_t a1, uint64_t a2)
{
  v4 = sub_217006924();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 3)
  {
    return EnumTagSinglePayload - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216710CC8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_217006924();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_216710D28(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[13];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
      v14 = a3[14];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_216710E5C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[13];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
      v14 = a4[14];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216710F8C(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_15:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[12];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[15];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710);
        OUTLINED_FUNCTION_17();
        if (*(v18 + 84) == a2)
        {
          v8 = v17;
          v14 = a3[18];
        }

        else
        {
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA338, &unk_217020060);
          v14 = a3[19];
        }
      }
    }

    v9 = a1 + v14;
    goto LABEL_15;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_216711158(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[12];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[15];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8, &unk_217026710);
        OUTLINED_FUNCTION_17();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[18];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA338, &unk_217020060);
          v14 = a4[19];
        }
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t get_enum_tag_for_layout_string_7MusicUI12PosterLockupV4KindO013SquareArtworkE0V3TopVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
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

uint64_t sub_216711344(uint64_t a1)
{
  result = sub_2166D5AF0(qword_280E44990, type metadata accessor for PosterLockup, &unk_217028088);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2167113C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21700D284();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = sub_21700C924();
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_2167114A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_21700D284();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = sub_21700C924();
      v14 = *(a4 + 24);
    }

    v11 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216711588()
{
  v1 = (type metadata accessor for GoToTVEpisodeAction(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  v7 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);

  sub_2170073D4();
  OUTLINED_FUNCTION_9_0();
  (*(v8 + 8))(v0 + v2);
  v9 = v1[7];
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v10 + 8))(v0 + v2 + v9);
  (*(v6 + 8))(v0 + v7, v4);

  return swift_deallocObject();
}

uint64_t sub_216711710()
{

  return swift_deallocObject();
}

uint64_t sub_216711748()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  OUTLINED_FUNCTION_2(v7);
  v9 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  v10 = sub_2170098A4();
  if (!__swift_getEnumTagSinglePayload(v0 + v9, 1, v10))
  {
    OUTLINED_FUNCTION_50();
    (*(v11 + 8))(v0 + v9, v10);
  }

  return swift_deallocObject();
}

uint64_t sub_2167118F8()
{
  OUTLINED_FUNCTION_17_6();
  result = sub_2169223FC();
  *v0 = result;
  return result;
}

uint64_t sub_21671198C()
{

  return swift_deallocObject();
}

uint64_t sub_2167119C4()
{
  v1 = OUTLINED_FUNCTION_23_21();
  type metadata accessor for ShelfCollection(v1, v2);
  OUTLINED_FUNCTION_117();
  v4 = v0 + ((*(v3 + 80) + 80) & ~*(v3 + 80));

  OUTLINED_FUNCTION_31_23();
  (*(v5 + 8))(v4 + v6);

  return swift_deallocObject();
}

__n128 sub_216711AC8(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void sub_216711ADC()
{
  OUTLINED_FUNCTION_149();
  v11 = *(v1 + 16);
  v2 = OUTLINED_FUNCTION_23_21();
  type metadata accessor for ShelfCollection(v2, v3);
  OUTLINED_FUNCTION_117();
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v7 = *(v11 - 8);
  v8 = (v5 + *(v6 + 64) + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v1 + v5;

  v10 = *(v7 + 8);
  v10(v9 + *(v0 + 92), v11);

  v10(v1 + v8, v11);
  swift_deallocObject();
  OUTLINED_FUNCTION_148_0();
}

uint64_t sub_216711C34()
{

  return swift_deallocObject();
}

void sub_216711CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_149();
  a29 = v30;
  a30 = v31;
  v33 = *v32;
  v34 = v32[1];
  v35 = v32[3];
  v36 = v32[7];
  v45 = v32[6];
  v37 = sub_2170075B4();
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12_6();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  a13 = v37;
  a14 = AssociatedTypeWitness;
  a15 = v34;
  a16 = WitnessTable;
  a17 = AssociatedConformanceWitness;
  sub_21700B174();
  OUTLINED_FUNCTION_19_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_34_4();
  v41 = sub_21700B4E4();
  OUTLINED_FUNCTION_0_2();
  v42 = swift_getWitnessTable();
  a13 = v33;
  a14 = v41;
  a15 = v35;
  a16 = v42;
  a17 = v45;
  a18 = v36;
  v43 = type metadata accessor for _ShelfCollection(255, &a13);
  OUTLINED_FUNCTION_11_31();
  v44 = swift_getWitnessTable();
  a13 = v43;
  a14 = v44;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_34_4();
  sub_217009564();
  a13 = v43;
  a14 = v44;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_6_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_148_0();
}

uint64_t sub_216711E58()
{
  v2 = OUTLINED_FUNCTION_23_21();
  type metadata accessor for _ShelfCollection(v2, v3);
  OUTLINED_FUNCTION_117();
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  OUTLINED_FUNCTION_50();
  (*(v6 + 8))(v1 + v5);
  OUTLINED_FUNCTION_7_7(*(v0 + 80));

  return swift_deallocObject();
}

uint64_t sub_216711F90(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  type metadata accessor for _ShelfCollection.ContentView(255, v3);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_2170085A4();
  return swift_getWitnessTable();
}

uint64_t sub_216712038(uint64_t a1)
{
  v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCCA8, &qword_217028DA0);
  sub_217008024();
  sub_21700B084();
  sub_217009564();
  sub_21700AD94();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_1();
  v62 = v1;
  swift_getWitnessTable();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16_28(OpaqueTypeMetadata2, v3, v4, v5, v6, v7, v8, v9, v62, v69, v76, v83, v90, v97);
  OUTLINED_FUNCTION_19_0();
  sub_217008044();
  swift_getWitnessTable();
  v10 = swift_getOpaqueTypeMetadata2();
  v18 = OUTLINED_FUNCTION_16_28(v10, v11, v12, v13, v14, v15, v16, v17, v63, v70, v77, v84, v91, v98);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCCB0, &unk_217028DA8);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0, &qword_21702FD10);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCC88, &unk_2170541D0);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCC90, &unk_217028930);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7980, &qword_217017C60);
  OUTLINED_FUNCTION_16_28(v19, v20, v21, v22, v23, v24, v25, v26, v64, v71, v78, v85, v92, v99);
  sub_2166D9530(&qword_280E2A838, &qword_27CABCCB0, &unk_217028DA8, MEMORY[0x277CDE2D0]);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_32();
  sub_2166D9530(v27, &qword_27CAB93F0, &qword_21702FD10, v28);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A760, &qword_27CABCC88, &unk_2170541D0, v18);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A740, &qword_27CABCC90, &unk_217028930, v18);
  swift_getWitnessTable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7990, &qword_217017C68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7998, &qword_217017C70);
  sub_2167CBD04();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_29_19(OpaqueTypeConformance2, v30, v31, v32, v33, v34, v35, v36, v65, v72, v79, v86, v93, v100);
  v37 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_29_19(v37, v38, v39, v40, v41, v42, v43, v44, v66, v73, v80, v87, v94, v101);
  sub_2167B2E14();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v45 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16_28(v45, v46, v47, v48, v49, v50, v51, v52, v67, v74, v81, v88, v95, v102);
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_34_4();
  sub_217009564();
  v53 = sub_2166D9530(&qword_280E48588, &qword_27CABCCA8, &qword_217028DA0, MEMORY[0x277CBCC18]);
  OUTLINED_FUNCTION_29_19(v53, v54, v55, v56, v57, v58, v59, v60, v68, v75, v82, v89, v96, v103);
  swift_getWitnessTable();
  sub_217008B74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCCB8, &qword_217028DB8);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A780, &qword_27CABCCB8, &qword_217028DB8, v18);
  return swift_getWitnessTable();
}

uint64_t sub_21671269C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2167126D4()
{

  return swift_deallocObject();
}

uint64_t sub_21671270C()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48) >= 2uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216712764()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD78, &qword_217028EF0);
  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_3_12();
  v1(v0);
  OUTLINED_FUNCTION_2_7();

  return swift_deallocObject();
}

uint64_t sub_216712820()
{
  sub_217006224();
  OUTLINED_FUNCTION_1();

  v0 = OUTLINED_FUNCTION_3_12();
  v1(v0);
  OUTLINED_FUNCTION_2_7();

  return swift_deallocObject();
}

uint64_t sub_2167128C8()
{
  sub_217006224();
  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_3_12();
  v1(v0);
  OUTLINED_FUNCTION_2_7();

  return swift_deallocObject();
}

uint64_t sub_216712978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_110();
  v7 = type metadata accessor for MusicMetrics.PageFields(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3;
  }

  else
  {
    if (a2 == 254)
    {
      v10 = *(v3 + *(a3 + 20) + 40);
      if (v10 > 1)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = sub_217007CA4();
    v9 = v3 + *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_216712A40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_110();
  result = type metadata accessor for MusicMetrics.PageFields(v8);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v11 = v4;
  }

  else
  {
    if (a3 == 254)
    {
      *(v4 + *(a4 + 20) + 40) = -a2;
      return result;
    }

    v10 = sub_217007CA4();
    v11 = v4 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216712B30()
{
  v1 = type metadata accessor for MusicPageMetricsModifier(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = *(type metadata accessor for MusicMetrics.PageFields(0) + 28);
  v4 = sub_217005EF4();
  if (!__swift_getEnumTagSinglePayload(v2 + v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  v5 = v2 + v1[5];
  if (*(v5 + 40))
  {
    if (*(v5 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
    }
  }

  else
  {
  }

  v6 = v2 + v1[6];
  if (*(v6 + 40))
  {
    if (*(v6 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }
  }

  else
  {
  }

  v7 = v1[7];
  sub_217007CA4();
  OUTLINED_FUNCTION_34();
  (*(v8 + 8))(v2 + v7);

  return swift_deallocObject();
}

uint64_t sub_216712D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    v8 = a1 + *(a3 + 28);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}