void sub_1C5CA7574()
{
  OUTLINED_FUNCTION_247();
  v3 = v0;
  v674 = v4;
  v7 = v0;
  v5 = *v0;
  v6 = v7[1];
  v8 = *(v3 + 16);
  v9 = *(v3 + 17) | ((*(v3 + 21) | (*(v3 + 23) << 16)) << 32);
  v11 = v10;
  v12 = 0x1E6970000uLL;
  v13 = 0x1FBFC3000uLL;
  v14 = MEMORY[0x1E69E7CC0];
  switch(*(v3 + 32))
  {
    case 1:
      v670 = MEMORY[0x1E69E7CC0];
      v671 = v3;
      v231 = v8 | (v9 << 8);
      v2 = &selRef_removeAllItems;
      switch(v231)
      {
        case 1uLL:
        case 0xEuLL:
          goto LABEL_148;
        case 2uLL:
          v232 = sub_1C5CAB8D0(2);
          OUTLINED_FUNCTION_93(v232);

          OUTLINED_FUNCTION_3_1();
          OUTLINED_FUNCTION_287(v233, v234, v235, v236);
          v669 = v237;
          OUTLINED_FUNCTION_178();
          v238 = swift_allocObject();
          OUTLINED_FUNCTION_285(v238, xmmword_1C60311F0);
          v238[2].n128_u64[0] = v239;
          sub_1C5C64D74(0, &qword_1ED7DCE70, 0x1E6970550);
          OUTLINED_FUNCTION_120();
          v672 = v240;
          sub_1C6016AF0();
          OUTLINED_FUNCTION_312();

          OUTLINED_FUNCTION_210(v241, sel_setAllowedSectionIdentifiers_);

          v675 = objc_opt_self();
          OUTLINED_FUNCTION_183([v675 kindWithVariants_]);

          v6 = 0;
          v678 = MEMORY[0x1E69E7CC0];
          v243 = *(v11 + 16);
          v244 = v11 + 64;
          v668 = xmmword_1C60311D0;
          v667 = v11 + 64;
          while (2)
          {
            v245 = (v244 + 40 * v6);
            v3 = v6;
LABEL_72:
            if (v243 != v3)
            {
              if (v3 >= v243)
              {
                goto LABEL_294;
              }

              v6 = v3 + 1;
              if (!__OFADD__(v3, 1))
              {
                v246 = *v245;
                if (v246 <= 0x3F)
                {
                  v247 = *(v245 - 4);
                  v2 = *(v245 - 3);
                  v249 = *(v245 - 2);
                  v248 = *(v245 - 1);
                  *&v679 = v247;
                  *(&v679 + 1) = v2;
                  *&v680 = v249;
                  *(&v680 + 1) = v248;
                  v681 = v246;
                  switch(v246)
                  {
                    case 1u:
                      if (!v2)
                      {
                        goto LABEL_113;
                      }

                      v673 = v247;
                      switch(v249)
                      {
                        case 1:
                        case 14:
                          goto LABEL_91;
                        case 2:
                          v250 = objc_opt_self();
                          v251 = OUTLINED_FUNCTION_185(v250, sel_kindWithVariants_);
                          v252 = OUTLINED_FUNCTION_87_0();
                          v254 = [v252 v253];
                          goto LABEL_102;
                        case 3:
                        case 4:
                          objc_opt_self();
                          v284 = objc_opt_self();
                          v285 = OUTLINED_FUNCTION_185(v284, sel_kindWithVariants_);
                          v286 = OUTLINED_FUNCTION_175();
                          v251 = [v286 v287];

                          v288 = OUTLINED_FUNCTION_87_0();
                          v254 = [v288 v289];
LABEL_102:
                          v5 = v254;

                          goto LABEL_103;
                        case 5:
                          objc_opt_self();
                          v276 = OUTLINED_FUNCTION_182();
                          OUTLINED_FUNCTION_79(v276);
                          v238[2].n128_u64[0] = OUTLINED_FUNCTION_184();
                          v277 = objc_opt_self();
                          v238[2].n128_u64[1] = OUTLINED_FUNCTION_275(v277);
                          v278 = objc_opt_self();
                          v279 = OUTLINED_FUNCTION_275(v278);
                          OUTLINED_FUNCTION_280(v279);
                          OUTLINED_FUNCTION_120();
                          sub_1C6016AF0();
                          OUTLINED_FUNCTION_344();
                          v280 = [v5 kindWithKinds_];

                          v281 = objc_opt_self();
                          v282 = [v281 kindWithPlaylistEntryKind:v280 options:0];
                          v283 = [v282 variants];

                          v5 = [v281 kindWithVariants:v283 & 0xFFFFFFFFFFFFFFF7 playlistEntryKind:v280 options:0];
                          goto LABEL_103;
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 13:
                          goto LABEL_98;
                        default:
                          if (v249 == 18)
                          {
LABEL_91:
                            v272 = OUTLINED_FUNCTION_185(v242, sel_kindWithVariants_);
                          }

                          else
                          {
LABEL_98:
                            v272 = [objc_opt_self() unknownKind];
                          }

                          v275 = v272;
                          v5 = v275;
LABEL_103:
                          v1 = &v666;
                          MEMORY[0x1EEE9AC00](v275);
                          OUTLINED_FUNCTION_40_0();
                          *(v290 - 32) = v673;
                          *(v290 - 24) = v2;
                          *(v290 - 16) = v248;
                          v291 = objc_allocWithZone(MEMORY[0x1E6970550]);
                          break;
                      }

                      break;
                    case 2u:
                      if (!v2)
                      {
                        goto LABEL_113;
                      }

                      v257 = v247;
                      sub_1C5C64D74(0, &qword_1EC1A9EE8, 0x1E6970648);
                      v5 = [swift_getObjCClassFromMetadata() identityKind];
                      v1 = &v666;
                      MEMORY[0x1EEE9AC00](v5);
                      OUTLINED_FUNCTION_40_0();
                      *(v258 - 32) = v257;
                      *(v258 - 24) = v2;
                      *(v258 - 16) = v249;
                      v259 = objc_allocWithZone(MEMORY[0x1E6970550]);
                      break;
                    case 3u:
                      goto LABEL_310;
                    case 4u:
                      if ((v248 & 1) == 0)
                      {
                        switch(v249)
                        {
                          case 1:
                          case 14:
                            goto LABEL_93;
                          case 2:
                            v255 = v247;
                            v262 = objc_opt_self();
                            v263 = OUTLINED_FUNCTION_185(v262, sel_kindWithVariants_);
                            v264 = OUTLINED_FUNCTION_87_0();
                            v266 = [v264 v265];
                            goto LABEL_106;
                          case 3:
                          case 4:
                            v255 = v247;
                            objc_opt_self();
                            v299 = objc_opt_self();
                            v300 = OUTLINED_FUNCTION_185(v299, sel_kindWithVariants_);
                            v301 = OUTLINED_FUNCTION_175();
                            v263 = [v301 v302];

                            v303 = OUTLINED_FUNCTION_87_0();
                            v266 = [v303 v304];
                            goto LABEL_106;
                          case 5:
                            v255 = v247;
                            objc_opt_self();
                            v292 = OUTLINED_FUNCTION_182();
                            OUTLINED_FUNCTION_79(v292);
                            v238[2].n128_u64[0] = OUTLINED_FUNCTION_184();
                            v293 = objc_opt_self();
                            v238[2].n128_u64[1] = OUTLINED_FUNCTION_275(v293);
                            v294 = objc_opt_self();
                            v295 = OUTLINED_FUNCTION_275(v294);
                            OUTLINED_FUNCTION_280(v295);
                            OUTLINED_FUNCTION_120();
                            sub_1C6016AF0();
                            OUTLINED_FUNCTION_344();
                            v263 = [v5 kindWithKinds_];

                            v296 = objc_opt_self();
                            v297 = OUTLINED_FUNCTION_282(v296, sel_kindWithPlaylistEntryKind_options_);
                            [v297 variants];

                            v266 = OUTLINED_FUNCTION_329(v298, sel_kindWithVariants_playlistEntryKind_options_);
LABEL_106:
                            v5 = v266;

                            goto LABEL_107;
                          case 6:
                          case 7:
                          case 8:
                          case 9:
                          case 10:
                          case 11:
                          case 12:
                          case 13:
                            break;
                          default:
                            if (v249 != 18)
                            {
                              break;
                            }

LABEL_93:
                            v255 = v247;
                            v256 = OUTLINED_FUNCTION_185(v242, sel_kindWithVariants_);
                            goto LABEL_94;
                        }
                      }

                      v255 = v247;
                      v256 = [objc_opt_self() unknownKind];
LABEL_94:
                      v273 = v256;
                      v5 = v273;
LABEL_107:
                      v1 = &v666;
                      MEMORY[0x1EEE9AC00](v273);
                      OUTLINED_FUNCTION_39();
                      *(v305 - 16) = v255;
                      *(v305 - 8) = v2;
                      v306 = objc_allocWithZone(MEMORY[0x1E6970550]);
                      break;
                    case 5u:
                      if ((v249 & 1) == 0)
                      {
                        switch(v2)
                        {
                          case 1:
                          case 14:
                            goto LABEL_96;
                          case 2:
                            v260 = v247;
                            v267 = objc_opt_self();
                            v268 = OUTLINED_FUNCTION_185(v267, sel_kindWithVariants_);
                            v269 = OUTLINED_FUNCTION_87_0();
                            v271 = [v269 v270];
                            goto LABEL_110;
                          case 3:
                          case 4:
                            v260 = v247;
                            objc_opt_self();
                            v314 = objc_opt_self();
                            v315 = OUTLINED_FUNCTION_185(v314, sel_kindWithVariants_);
                            v316 = OUTLINED_FUNCTION_175();
                            v268 = [v316 v317];

                            v318 = OUTLINED_FUNCTION_87_0();
                            v271 = [v318 v319];
                            goto LABEL_110;
                          case 5:
                            v260 = v247;
                            objc_opt_self();
                            v307 = OUTLINED_FUNCTION_182();
                            OUTLINED_FUNCTION_79(v307);
                            v238[2].n128_u64[0] = OUTLINED_FUNCTION_184();
                            v308 = objc_opt_self();
                            v238[2].n128_u64[1] = OUTLINED_FUNCTION_275(v308);
                            v309 = objc_opt_self();
                            v310 = OUTLINED_FUNCTION_275(v309);
                            OUTLINED_FUNCTION_280(v310);
                            OUTLINED_FUNCTION_120();
                            sub_1C6016AF0();
                            OUTLINED_FUNCTION_344();
                            v268 = [v5 kindWithKinds_];

                            v311 = objc_opt_self();
                            v312 = OUTLINED_FUNCTION_282(v311, sel_kindWithPlaylistEntryKind_options_);
                            [v312 variants];

                            v271 = OUTLINED_FUNCTION_329(v313, sel_kindWithVariants_playlistEntryKind_options_);
LABEL_110:
                            v5 = v271;

                            goto LABEL_111;
                          case 6:
                          case 7:
                          case 8:
                          case 9:
                          case 10:
                          case 11:
                          case 12:
                          case 13:
                            break;
                          default:
                            if (v2 != 18)
                            {
                              break;
                            }

LABEL_96:
                            v260 = v247;
                            v261 = OUTLINED_FUNCTION_185(v242, sel_kindWithVariants_);
                            goto LABEL_97;
                        }
                      }

                      v260 = v247;
                      v261 = [objc_opt_self() unknownKind];
LABEL_97:
                      v274 = v261;
                      v5 = v274;
LABEL_111:
                      v1 = &v666;
                      MEMORY[0x1EEE9AC00](v274);
                      OUTLINED_FUNCTION_39();
                      *(v320 - 16) = v260;
                      v321 = objc_allocWithZone(MEMORY[0x1E6970550]);
                      break;
                    default:
                      goto LABEL_113;
                  }

                  v322 = OUTLINED_FUNCTION_8_2();
                  v242 = OUTLINED_FUNCTION_271(v322, v323, v324, v325);
                  v238 = v242;
                  if (v242)
                  {
                    v5 = &v678;
                    MEMORY[0x1C69535C0]();
                    OUTLINED_FUNCTION_317();
                    if (v166)
                    {
                      OUTLINED_FUNCTION_128(v326);
                      sub_1C6016B30();
                    }

                    OUTLINED_FUNCTION_303();
                    sub_1C6016B70();
                    OUTLINED_FUNCTION_257();
                    v244 = v667;
                    continue;
                  }
                }

LABEL_113:
                ++v3;
                v245 += 40;
                goto LABEL_72;
              }

              goto LABEL_295;
            }

            break;
          }

          sub_1C6016AF0();
          OUTLINED_FUNCTION_73();

          v569 = v674;
          [v674 setAllowedItemIdentifiers_];

          v570 = [v569 allowedItemIdentifiers];
          if (v570)
          {
            v571 = v570;
            v572 = sub_1C6016B10();
          }

          else
          {
            v572 = 0;
          }

          v593 = v671;
          v676 = v572;
          sub_1C5CB5A94(0);
          sub_1C5CB5B7C();
          v594 = sub_1C6017340();

          if (v594)
          {
            v595 = OUTLINED_FUNCTION_213(v669);
            *(v595 + 16) = v668;
            sub_1C6016940();
            OUTLINED_FUNCTION_99_0();
            v596 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
            *(v595 + 32) = OUTLINED_FUNCTION_137();
            sub_1C6016940();
            OUTLINED_FUNCTION_99_0();
            v597 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
            *(v595 + 40) = OUTLINED_FUNCTION_137();
            sub_1C6016940();
            OUTLINED_FUNCTION_99_0();
            v598 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
            *(v595 + 48) = OUTLINED_FUNCTION_137();
            sub_1C5C64D74(0, &qword_1EC1A9F08, 0x1E696AEB0);
            v599 = sub_1C6016AF0();

            [v569 setItemSortDescriptors_];
          }

          else
          {
            [v569 setSortUsingAllowedItemIdentifiers_];
          }

          if (qword_1EC1A9730 != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v600 = sub_1C60162D0();
          OUTLINED_FUNCTION_144(v600, qword_1EC1BE490);
          v601 = v569;
          OUTLINED_FUNCTION_180();
          v602 = v601;
          OUTLINED_FUNCTION_180();
          v185 = sub_1C60162B0();
          v603 = sub_1C6016F30();
          if (!OUTLINED_FUNCTION_167(v603))
          {

            sub_1C5CB5A3C(v593);
            sub_1C5CB5A3C(v593);

            goto LABEL_283;
          }

          v604 = OUTLINED_FUNCTION_340();
          v605 = OUTLINED_FUNCTION_259();
          OUTLINED_FUNCTION_112_0();
          v606 = swift_slowAlloc();
          OUTLINED_FUNCTION_295(v606);
          *v604 = 136447234;
          OUTLINED_FUNCTION_180();
          v607 = v593;
          sub_1C5CAF1A0();
          v608 = OUTLINED_FUNCTION_60();
          sub_1C5CB5A3C(v608);
          v609 = OUTLINED_FUNCTION_110_0();
          sub_1C5C6AB10(v609, v610, v611);
          OUTLINED_FUNCTION_114();

          *(v604 + 4) = v593;
          sub_1C5CB5A3C(v593);
          sub_1C5CB5A3C(v593);
          *(v604 + 12) = 2114;
          v612 = [v602 sectionKind];
          *(v604 + 14) = v612;
          *v605 = v612;

          *(v604 + 22) = 2082;
          v613 = [v602 allowedSectionIdentifiers];
          if (v613)
          {
            v614 = v613;
            v607 = v672;
            sub_1C6016B10();

            v615 = OUTLINED_FUNCTION_241();
            MEMORY[0x1C6953600](v615);
            OUTLINED_FUNCTION_61();
          }

          else
          {
            OUTLINED_FUNCTION_174();
          }

          v633 = OUTLINED_FUNCTION_108();
          sub_1C5C6AB10(v633, v634, v635);
          OUTLINED_FUNCTION_73();

          *(v604 + 24) = v607;

          *(v604 + 32) = 2114;
          v636 = [v602 itemKind];
          *(v604 + 34) = v636;
          v605[1] = v636;

          *(v604 + 42) = 2082;
          v637 = [v602 allowedItemIdentifiers];
          if (v637)
          {
            v638 = v637;
            v607 = v672;
            sub_1C6016B10();

            v639 = OUTLINED_FUNCTION_241();
            MEMORY[0x1C6953600](v639);
            OUTLINED_FUNCTION_61();
          }

          else
          {
            OUTLINED_FUNCTION_174();
          }

          v640 = OUTLINED_FUNCTION_108();
          sub_1C5C6AB10(v640, v641, v642);
          OUTLINED_FUNCTION_73();

          *(v604 + 44) = v607;

          _os_log_impl(&dword_1C5C61000, v185, v2, "[XSQ:Content:Library] apply(to:items:) | updating request [] %{public}s\nsectionKind=%{public}@\nallowedSectionIdentifiers=%{public}s\nitemKind=%{public}@\nallowedItemIdentifiers=%{public}s", v604, 0x34u);
          OUTLINED_FUNCTION_14_4(v643, &qword_1ED7DCC20, &qword_1ED7DCC30, 0x1E69E58C0);
          OUTLINED_FUNCTION_119();
          swift_arrayDestroy();
          v644 = OUTLINED_FUNCTION_28_0();
          MEMORY[0x1C6956920](v644);
          OUTLINED_FUNCTION_160();
          swift_arrayDestroy();
          v645 = OUTLINED_FUNCTION_17();
          MEMORY[0x1C6956920](v645);
          goto LABEL_281;
        case 3uLL:
          v492 = sub_1C5CAB8D0(3);
          OUTLINED_FUNCTION_93(v492);

          OUTLINED_FUNCTION_3_1();
          OUTLINED_FUNCTION_287(v493, v494, v495, v496);
          OUTLINED_FUNCTION_178();
          v497 = swift_allocObject();
          OUTLINED_FUNCTION_285(v497, xmmword_1C60311F0);
          v497[2].n128_u64[0] = v498;
          sub_1C5C64D74(0, &qword_1ED7DCE70, 0x1E6970550);
          OUTLINED_FUNCTION_120();
          v675 = v499;
          sub_1C6016AF0();
          OUTLINED_FUNCTION_312();

          OUTLINED_FUNCTION_210(v500, &selRef_setDelegated_ + 1);

          v501 = [objc_opt_self() kindWithVariants_];
          OUTLINED_FUNCTION_183(v501);

          v678 = MEMORY[0x1E69E7CC0];
          v502 = *(v11 + 16);
LABEL_208:
          OUTLINED_FUNCTION_305();
          while (v502)
          {
            OUTLINED_FUNCTION_308();
            if (!(!v468 & v166))
            {
              OUTLINED_FUNCTION_198();
              switch(v504)
              {
                case 1:
                  if (!0x1E6970000uLL)
                  {
                    goto LABEL_208;
                  }

                  v673 = v2;
                  if (!sub_1C5CAB8D0("rameworks/AssistantServices.framework/AssistantServices"))
                  {
                    v505 = [objc_opt_self() unknownKind];
                  }

                  OUTLINED_FUNCTION_104();
                  MEMORY[0x1EEE9AC00](v506);
                  OUTLINED_FUNCTION_40_0();
                  *(v507 - 32) = v1;
                  *(v507 - 24) = 0x1E6970000uLL;
                  *(v507 - 16) = v673;
                  v508 = objc_allocWithZone(MEMORY[0x1E6970550]);
                  break;
                case 2:
                  if (!0x1E6970000uLL)
                  {
                    goto LABEL_208;
                  }

                  v673 = v2;
                  sub_1C5C64D74(0, &qword_1EC1A9EE8, 0x1E6970648);
                  v513 = [swift_getObjCClassFromMetadata() identityKind];
                  OUTLINED_FUNCTION_104();
                  MEMORY[0x1EEE9AC00](v514);
                  OUTLINED_FUNCTION_40_0();
                  *(v515 - 32) = v1;
                  *(v515 - 24) = 0x1E6970000uLL;
                  *(v515 - 16) = "rameworks/AssistantServices.framework/AssistantServices";
                  v516 = objc_allocWithZone(MEMORY[0x1E6970550]);
                  break;
                case 3:
                  goto LABEL_309;
                case 4:
                  v673 = v2;
                  if ((v2 & 1) != 0 || !sub_1C5CAB8D0("rameworks/AssistantServices.framework/AssistantServices"))
                  {
                    v517 = [objc_opt_self() unknownKind];
                  }

                  OUTLINED_FUNCTION_122();
                  MEMORY[0x1EEE9AC00](v518);
                  OUTLINED_FUNCTION_39();
                  *(v519 - 16) = v1;
                  *(v519 - 8) = 0x1E6970000uLL;
                  v520 = objc_allocWithZone(MEMORY[0x1E6970550]);
                  break;
                case 5:
                  v673 = v2;
                  if (("rameworks/AssistantServices.framework/AssistantServices" & 1) != 0 || !sub_1C5CAB8D0(0x1E6970000))
                  {
                    v509 = [objc_opt_self() unknownKind];
                  }

                  OUTLINED_FUNCTION_122();
                  MEMORY[0x1EEE9AC00](v510);
                  OUTLINED_FUNCTION_39();
                  *(v511 - 16) = v1;
                  v512 = objc_allocWithZone(MEMORY[0x1E6970550]);
                  break;
                default:
                  goto LABEL_208;
              }

              v521 = OUTLINED_FUNCTION_8_2();
              OUTLINED_FUNCTION_271(v521, v522, v523, v524);
              OUTLINED_FUNCTION_148();
              v2 = v673;
              if (v497)
              {
                v5 = &v678;
                MEMORY[0x1C69535C0]();
                OUTLINED_FUNCTION_154();
                if (v166)
                {
                  v526 = OUTLINED_FUNCTION_128(v525);
                  OUTLINED_FUNCTION_270(v526);
                }

                sub_1C6016B70();
                OUTLINED_FUNCTION_257();
              }

              goto LABEL_208;
            }
          }

          OUTLINED_FUNCTION_269(v503);
          OUTLINED_FUNCTION_90();

          [(__n128 *)v497 setAllowedItemIdentifiers:v5];

          v527 = v671;
          if (qword_1EC1A9730 != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v558 = sub_1C60162D0();
          OUTLINED_FUNCTION_144(v558, qword_1EC1BE490);
          v559 = v497;
          OUTLINED_FUNCTION_180();
          v560 = v559;
          OUTLINED_FUNCTION_165();
          v185 = sub_1C60162B0();
          v561 = sub_1C6016F30();
          if (!OUTLINED_FUNCTION_167(v561))
          {
            goto LABEL_245;
          }

          v534 = OUTLINED_FUNCTION_340();
          v550 = OUTLINED_FUNCTION_259();
          OUTLINED_FUNCTION_112_0();
          v562 = swift_slowAlloc();
          OUTLINED_FUNCTION_295(v562);
          OUTLINED_FUNCTION_166(4.8756e-34);
          v537 = v671;
          sub_1C5CAF1A0();
          v563 = OUTLINED_FUNCTION_60();
          sub_1C5CB5A3C(v563);
          v564 = OUTLINED_FUNCTION_110_0();
          sub_1C5C6AB10(v564, v565, v566);
          OUTLINED_FUNCTION_114();

          OUTLINED_FUNCTION_283();
          sub_1C5CB5A3C(v671);
          *(v534 + 12) = 2114;
          v567 = [v11 sectionKind];
          *(v534 + 14) = v567;
          *v550 = v567;

          *(v534 + 22) = 2082;
          v557 = [v11 allowedSectionIdentifiers];
          if (v557)
          {
            goto LABEL_244;
          }

          goto LABEL_274;
        case 4uLL:
          v456 = sub_1C5CAB8D0(4);
          OUTLINED_FUNCTION_93(v456);

          OUTLINED_FUNCTION_3_1();
          OUTLINED_FUNCTION_287(v457, v458, v459, v460);
          OUTLINED_FUNCTION_178();
          v461 = swift_allocObject();
          OUTLINED_FUNCTION_285(v461, xmmword_1C60311F0);
          v461[2].n128_u64[0] = v462;
          sub_1C5C64D74(0, &qword_1ED7DCE70, 0x1E6970550);
          OUTLINED_FUNCTION_120();
          v675 = v463;
          sub_1C6016AF0();
          OUTLINED_FUNCTION_312();

          OUTLINED_FUNCTION_210(v464, &selRef_setDelegated_ + 1);

          v465 = [objc_opt_self() kindWithVariants_];
          OUTLINED_FUNCTION_183(v465);

          v678 = MEMORY[0x1E69E7CC0];
          v466 = *(v11 + 16);
LABEL_185:
          OUTLINED_FUNCTION_305();
          while (v466)
          {
            OUTLINED_FUNCTION_308();
            if (!(!v468 & v166))
            {
              OUTLINED_FUNCTION_198();
              switch(v469)
              {
                case 1:
                  if (!0x1E6970000uLL)
                  {
                    goto LABEL_185;
                  }

                  v673 = v2;
                  if (!sub_1C5CAB8D0("rameworks/AssistantServices.framework/AssistantServices"))
                  {
                    v470 = [objc_opt_self() unknownKind];
                  }

                  OUTLINED_FUNCTION_104();
                  MEMORY[0x1EEE9AC00](v471);
                  OUTLINED_FUNCTION_40_0();
                  *(v472 - 32) = v1;
                  *(v472 - 24) = 0x1E6970000uLL;
                  *(v472 - 16) = v673;
                  v473 = objc_allocWithZone(MEMORY[0x1E6970550]);
                  break;
                case 2:
                  if (!0x1E6970000uLL)
                  {
                    goto LABEL_185;
                  }

                  v673 = v2;
                  sub_1C5C64D74(0, &qword_1EC1A9EE8, 0x1E6970648);
                  v478 = [swift_getObjCClassFromMetadata() identityKind];
                  OUTLINED_FUNCTION_104();
                  MEMORY[0x1EEE9AC00](v479);
                  OUTLINED_FUNCTION_40_0();
                  *(v480 - 32) = v1;
                  *(v480 - 24) = 0x1E6970000uLL;
                  *(v480 - 16) = "rameworks/AssistantServices.framework/AssistantServices";
                  v481 = objc_allocWithZone(MEMORY[0x1E6970550]);
                  break;
                case 3:
LABEL_309:
                  *&v680 = "rameworks/AssistantServices.framework/AssistantServices";
                  *(&v680 + 1) = v2;
                  v681 = 3;
                  *&v679 = v1;
                  *(&v679 + 1) = 0x1E6970000uLL;
LABEL_310:
                  v676 = 0;
                  v677 = 0xE000000000000000;
                  goto LABEL_302;
                case 4:
                  v673 = v2;
                  if ((v2 & 1) != 0 || !sub_1C5CAB8D0("rameworks/AssistantServices.framework/AssistantServices"))
                  {
                    v482 = [objc_opt_self() unknownKind];
                  }

                  OUTLINED_FUNCTION_122();
                  MEMORY[0x1EEE9AC00](v483);
                  OUTLINED_FUNCTION_39();
                  *(v484 - 16) = v1;
                  *(v484 - 8) = 0x1E6970000uLL;
                  v485 = objc_allocWithZone(MEMORY[0x1E6970550]);
                  break;
                case 5:
                  v673 = v2;
                  if (("rameworks/AssistantServices.framework/AssistantServices" & 1) != 0 || !sub_1C5CAB8D0(0x1E6970000))
                  {
                    v474 = [objc_opt_self() unknownKind];
                  }

                  OUTLINED_FUNCTION_122();
                  MEMORY[0x1EEE9AC00](v475);
                  OUTLINED_FUNCTION_39();
                  *(v476 - 16) = v1;
                  v477 = objc_allocWithZone(MEMORY[0x1E6970550]);
                  break;
                default:
                  goto LABEL_185;
              }

              v486 = OUTLINED_FUNCTION_8_2();
              OUTLINED_FUNCTION_271(v486, v487, v488, v489);
              OUTLINED_FUNCTION_148();
              v2 = v673;
              if (v461)
              {
                v5 = &v678;
                MEMORY[0x1C69535C0]();
                OUTLINED_FUNCTION_154();
                if (v166)
                {
                  v491 = OUTLINED_FUNCTION_128(v490);
                  OUTLINED_FUNCTION_270(v491);
                }

                sub_1C6016B70();
                OUTLINED_FUNCTION_257();
              }

              goto LABEL_185;
            }
          }

          OUTLINED_FUNCTION_269(v467);
          OUTLINED_FUNCTION_90();

          [(__n128 *)v461 setAllowedItemIdentifiers:v5];

          v527 = v671;
          if (qword_1EC1A9730 != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v546 = sub_1C60162D0();
          OUTLINED_FUNCTION_144(v546, qword_1EC1BE490);
          v547 = v461;
          OUTLINED_FUNCTION_180();
          v548 = v547;
          OUTLINED_FUNCTION_165();
          v185 = sub_1C60162B0();
          v549 = sub_1C6016F30();
          if (!OUTLINED_FUNCTION_167(v549))
          {
            goto LABEL_245;
          }

          v534 = OUTLINED_FUNCTION_340();
          v550 = OUTLINED_FUNCTION_259();
          OUTLINED_FUNCTION_112_0();
          v551 = swift_slowAlloc();
          OUTLINED_FUNCTION_295(v551);
          OUTLINED_FUNCTION_166(4.8756e-34);
          v537 = v671;
          sub_1C5CAF1A0();
          v552 = OUTLINED_FUNCTION_60();
          sub_1C5CB5A3C(v552);
          v553 = OUTLINED_FUNCTION_110_0();
          sub_1C5C6AB10(v553, v554, v555);
          OUTLINED_FUNCTION_114();

          OUTLINED_FUNCTION_283();
          sub_1C5CB5A3C(v671);
          *(v534 + 12) = 2114;
          v556 = [v11 sectionKind];
          *(v534 + 14) = v556;
          *v550 = v556;

          *(v534 + 22) = 2082;
          v557 = [v11 allowedSectionIdentifiers];
          if (v557)
          {
LABEL_244:
            OUTLINED_FUNCTION_279(v557);

            v568 = OUTLINED_FUNCTION_241();
            MEMORY[0x1C6953600](v568);
            OUTLINED_FUNCTION_61();
          }

          else
          {
LABEL_274:
            OUTLINED_FUNCTION_174();
          }

          v623 = OUTLINED_FUNCTION_108();
          sub_1C5C6AB10(v623, v624, v625);
          OUTLINED_FUNCTION_73();

          *(v534 + 24) = v527;

          *(v534 + 32) = 2114;
          v626 = [v11 itemKind];
          *(v534 + 34) = v626;
          v550[1] = v626;

          *(v534 + 42) = 2082;
          v627 = [v11 allowedItemIdentifiers];
          if (!v627)
          {
            goto LABEL_278;
          }

          OUTLINED_FUNCTION_279(v627);

          v622 = OUTLINED_FUNCTION_241();
          goto LABEL_277;
        case 5uLL:
          v385 = sub_1C5CAB8D0(5);
          OUTLINED_FUNCTION_93(v385);

          OUTLINED_FUNCTION_3_1();
          OUTLINED_FUNCTION_287(v386, v387, v388, v389);
          OUTLINED_FUNCTION_178();
          v390 = swift_allocObject();
          OUTLINED_FUNCTION_285(v390, xmmword_1C60311F0);
          v390[2].n128_u64[0] = v391;
          v3 = sub_1C5C64D74(0, &qword_1ED7DCE70, 0x1E6970550);
          sub_1C6016AF0();
          OUTLINED_FUNCTION_250();

          v2 = 40;
          OUTLINED_FUNCTION_210(v392, &selRef_setDelegated_ + 1);

          objc_opt_self();
          v393 = OUTLINED_FUNCTION_312();
          v394 = OUTLINED_FUNCTION_213(v393);
          *(v394 + 16) = xmmword_1C60311D0;
          *(v394 + 32) = [objc_opt_self() kindWithVariants_];
          v395 = objc_opt_self();
          *(v394 + 40) = OUTLINED_FUNCTION_345(v395);
          v396 = objc_opt_self();
          *(v394 + 48) = OUTLINED_FUNCTION_345(v396);
          sub_1C5CB593C();
          v397 = sub_1C6016AF0();

          v398 = OUTLINED_FUNCTION_87_0();
          v400 = [v398 v399];

          v401 = v1;
          v1 = v3;
          [v401 0x1FBFC38E6];

          v402 = 0;
          v676 = MEMORY[0x1E69E7CC0];
          v403 = *(v11 + 16);
          v6 = v11 + 64;
          while (2)
          {
            v11 = v6 + 40 * v402;
LABEL_138:
            if (v403 != v402)
            {
              if (v402 >= v403)
              {
                goto LABEL_293;
              }

              if (!__OFADD__(v402, 1))
              {
                v404 = *v11;
                if (v404 <= 0x3F)
                {
                  v405 = *(v11 - 16);
                  v679 = *(v11 - 32);
                  v680 = v405;
                  v681 = v404;
                  v400 = &v679;
                  sub_1C5CAB570();
                  if (v406)
                  {
                    v397 = v406;
                    v400 = &v676;
                    MEMORY[0x1C69535C0]();
                    v407 = *((v676 & 0xFFFFFFFFFFFFFF8) + 0x18);
                    if (*((v676 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v407 >> 1)
                    {
                      OUTLINED_FUNCTION_128(v407);
                      sub_1C6016B30();
                    }

                    sub_1C6016B70();
                    v670 = v676;
                    ++v402;
                    continue;
                  }
                }

                ++v402;
                v11 += 40;
                goto LABEL_138;
              }

              goto LABEL_296;
            }

            break;
          }

          OUTLINED_FUNCTION_254();
          sub_1C6016AF0();
          OUTLINED_FUNCTION_73();

          v527 = v674;
          v528 = OUTLINED_FUNCTION_253();
          [v528 v529];

          if (qword_1EC1A9730 != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v530 = sub_1C60162D0();
          OUTLINED_FUNCTION_144(v530, qword_1EC1BE490);
          v531 = v674;
          OUTLINED_FUNCTION_328();
          v532 = v397;
          OUTLINED_FUNCTION_165();
          v185 = sub_1C60162B0();
          v533 = sub_1C6016F30();
          if (!OUTLINED_FUNCTION_167(v533))
          {
LABEL_245:

            sub_1C5CB5A3C(v527);
            sub_1C5CB5A3C(v527);

            goto LABEL_246;
          }

          v534 = OUTLINED_FUNCTION_340();
          v535 = OUTLINED_FUNCTION_259();
          OUTLINED_FUNCTION_112_0();
          v536 = swift_slowAlloc();
          OUTLINED_FUNCTION_295(v536);
          OUTLINED_FUNCTION_166(4.8756e-34);
          v537 = v674;
          sub_1C5CAF1A0();
          v538 = OUTLINED_FUNCTION_60();
          sub_1C5CB5A3C(v538);
          v539 = OUTLINED_FUNCTION_110_0();
          sub_1C5C6AB10(v539, v540, v541);
          OUTLINED_FUNCTION_114();

          OUTLINED_FUNCTION_283();
          sub_1C5CB5A3C(v674);
          *(v534 + 12) = 2114;
          v542 = [v11 sectionKind];
          *(v534 + 14) = v542;
          *v535 = v542;

          *(v534 + 22) = 2082;
          v543 = [v11 allowedSectionIdentifiers];
          if (v543)
          {
            v544 = v543;
            sub_1C6016B10();

            v545 = OUTLINED_FUNCTION_294();
            MEMORY[0x1C6953600](v545);
            OUTLINED_FUNCTION_61();
          }

          else
          {
            OUTLINED_FUNCTION_174();
          }

          v616 = OUTLINED_FUNCTION_108();
          sub_1C5C6AB10(v616, v617, v618);
          OUTLINED_FUNCTION_73();

          *(v534 + 24) = v537;

          *(v534 + 32) = 2114;
          v619 = [v11 itemKind];
          *(v534 + 34) = v619;
          v535[1] = v619;

          *(v534 + 42) = 2082;
          v620 = [v11 allowedItemIdentifiers];
          if (v620)
          {
            v621 = v620;
            sub_1C6016B10();

            v622 = OUTLINED_FUNCTION_294();
LABEL_277:
            MEMORY[0x1C6953600](v622);
            OUTLINED_FUNCTION_61();
          }

          else
          {
LABEL_278:
            OUTLINED_FUNCTION_174();
          }

          v628 = OUTLINED_FUNCTION_108();
          sub_1C5C6AB10(v628, v629, v630);
          OUTLINED_FUNCTION_73();

          *(v534 + 44) = v537;

          _os_log_impl(&dword_1C5C61000, v185, v2, "[XSQ:Content:Library] apply(to:items:) | updating request [] %{public}s\nsectionKind=%{public}@\nallowedSectionIdentifiers=%{public}s\nitemKind=%{public}@\nallowedItemIdentifiers=%{public}s", v534, 0x34u);
          OUTLINED_FUNCTION_14_4(v631, &qword_1ED7DCC20, &qword_1ED7DCC30, 0x1E69E58C0);
          OUTLINED_FUNCTION_119();
          swift_arrayDestroy();
          v632 = OUTLINED_FUNCTION_28_0();
          MEMORY[0x1C6956920](v632);
          OUTLINED_FUNCTION_160();
          swift_arrayDestroy();
          goto LABEL_280;
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
          goto LABEL_307;
        default:
          if (v231 != 18)
          {
LABEL_307:
            *&v679 = sub_1C6017840();
            *(&v679 + 1) = v661;
            OUTLINED_FUNCTION_21_1();
            MEMORY[0x1C69534E0](v662 - 34, v663 | 0x8000000000000000);
            sub_1C5CAF1A0();
            OUTLINED_FUNCTION_352();

            OUTLINED_FUNCTION_135();
            i = 1380;
            goto LABEL_303;
          }

LABEL_148:
          v408 = [objc_opt_self() kindWithVariants_];
          OUTLINED_FUNCTION_330(v408);

          OUTLINED_FUNCTION_3_1();
          OUTLINED_FUNCTION_287(v409, v410, v411, v412);
          v2 = 40;
          OUTLINED_FUNCTION_178();
          v1 = swift_allocObject();
          OUTLINED_FUNCTION_285(v1, xmmword_1C60311F0);
          v3 = 0;
          v414 = 0;
          *(v1 + 32) = v415;
          v678 = MEMORY[0x1E69E7CC0];
          v6 = *(v11 + 16);
LABEL_149:
          v416 = v3;
          v417 = v12;
LABEL_150:
          v418 = v11 + 40 * v414;
          while (v6 != v414)
          {
            if (v414 >= v6)
            {
LABEL_291:
              __break(1u);
LABEL_292:
              __break(1u);
LABEL_293:
              __break(1u);
LABEL_294:
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
LABEL_295:
              __break(1u);
              __break(1u);
LABEL_296:
              __break(1u);
              goto LABEL_297;
            }

            v419 = v414 + 1;
            if (__OFADD__(v414, 1))
            {
              goto LABEL_292;
            }

            v3 = *(v418 + 64);
            ++v414;
            v418 += 40;
            if (v3 <= 0x3F)
            {
              v5 = *(v418 + 8);
              v413 = *(v418 + 16);
              v13 = *(v418 - 8);
              v12 = *v418;
              v414 = v419;
              v416 = v3;
              v417 = *v418;
              switch(v3)
              {
                case 1:
                  v417 = 0;
                  v416 = 1;
                  if (!v12)
                  {
                    goto LABEL_150;
                  }

                  v675 = *(v418 + 16);
                  v673 = v5;
                  if (!sub_1C5CAB8D0(v5))
                  {
                    v420 = [objc_opt_self() unknownKind];
                  }

                  OUTLINED_FUNCTION_104();
                  MEMORY[0x1EEE9AC00](v421);
                  OUTLINED_FUNCTION_40_0();
                  *(v422 - 32) = v13;
                  *(v422 - 24) = v12;
                  *(v422 - 16) = v675;
                  v423 = objc_allocWithZone(MEMORY[0x1E6970550]);
LABEL_170:
                  v430 = OUTLINED_FUNCTION_8_2();
                  break;
                case 2:
                  v417 = 0;
                  v416 = 2;
                  if (!v12)
                  {
                    goto LABEL_150;
                  }

                  v675 = *(v418 + 16);
                  sub_1C5C64D74(0, &qword_1EC1A9EE8, 0x1E6970648);
                  v672 = [swift_getObjCClassFromMetadata() identityKind];
                  MEMORY[0x1EEE9AC00](v672);
                  OUTLINED_FUNCTION_40_0();
                  *(v428 - 32) = v13;
                  *(v428 - 24) = v12;
                  v673 = v5;
                  *(v428 - 16) = v5;
                  v429 = objc_allocWithZone(MEMORY[0x1E6970550]);
                  v430 = OUTLINED_FUNCTION_9_4();
                  v433 = v672;
                  break;
                case 3:
                  *&v680 = *(v418 + 8);
                  *(&v680 + 1) = v413;
                  v681 = 3;
                  *&v679 = v13;
                  *(&v679 + 1) = v12;
                  goto LABEL_310;
                case 4:
                  v673 = *(v418 + 8);
                  v675 = v413;
                  if ((v413 & 1) != 0 || !sub_1C5CAB8D0(v673))
                  {
                    v434 = [objc_opt_self() unknownKind];
                  }

                  OUTLINED_FUNCTION_122();
                  MEMORY[0x1EEE9AC00](v435);
                  OUTLINED_FUNCTION_39();
                  *(v436 - 16) = v13;
                  *(v436 - 8) = v12;
                  v437 = objc_allocWithZone(MEMORY[0x1E6970550]);
                  goto LABEL_170;
                case 5:
                  v675 = *(v418 + 16);
                  v673 = v5;
                  if ((v5 & 1) != 0 || !sub_1C5CAB8D0(v12))
                  {
                    v424 = [objc_opt_self() unknownKind];
                  }

                  OUTLINED_FUNCTION_122();
                  MEMORY[0x1EEE9AC00](v425);
                  OUTLINED_FUNCTION_39();
                  *(v426 - 16) = v13;
                  v427 = objc_allocWithZone(MEMORY[0x1E6970550]);
                  goto LABEL_170;
                default:
                  goto LABEL_150;
              }

              OUTLINED_FUNCTION_271(v430, v431, v433, v432);
              OUTLINED_FUNCTION_148();
              v2 = 40;
              v413 = v675;
              v5 = v673;
              if (v438)
              {
                MEMORY[0x1C69535C0]();
                OUTLINED_FUNCTION_154();
                if (v166)
                {
                  v440 = OUTLINED_FUNCTION_128(v439);
                  OUTLINED_FUNCTION_270(v440);
                }

                sub_1C6016B70();
                OUTLINED_FUNCTION_257();
                v413 = v675;
                v5 = v673;
                goto LABEL_149;
              }

              goto LABEL_150;
            }
          }

          *&v680 = v5;
          *(&v680 + 1) = v413;
          v681 = v416;
          *&v679 = v13;
          *(&v679 + 1) = v417;
          v676 = v1;
          sub_1C5D0CBDC(v670);
          sub_1C5C64D74(0, &qword_1ED7DCE70, 0x1E6970550);
          sub_1C6016AF0();
          OUTLINED_FUNCTION_347();
          [v674 setAllowedItemIdentifiers_];

          v327 = v671;
          if (qword_1EC1A9730 != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v441 = sub_1C60162D0();
          OUTLINED_FUNCTION_144(v441, qword_1EC1BE490);
          v442 = v674;
          OUTLINED_FUNCTION_180();
          v443 = v442;
          OUTLINED_FUNCTION_165();
          v185 = sub_1C60162B0();
          v333 = sub_1C6016F30();
          if (!OUTLINED_FUNCTION_209(v333))
          {
LABEL_181:

            sub_1C5CB5A3C(v327);
            sub_1C5CB5A3C(v327);
LABEL_246:

            goto LABEL_283;
          }

          OUTLINED_FUNCTION_64_0();
          v334 = swift_slowAlloc();
          OUTLINED_FUNCTION_97();
          v335 = swift_slowAlloc();
          OUTLINED_FUNCTION_72();
          v678 = swift_slowAlloc();
          OUTLINED_FUNCTION_166(4.8754e-34);
          v336 = v671;
          sub_1C5CAF1A0();
          v444 = OUTLINED_FUNCTION_60();
          sub_1C5CB5A3C(v444);
          v445 = OUTLINED_FUNCTION_110_0();
          sub_1C5C6AB10(v445, v446, v447);
          OUTLINED_FUNCTION_114();

          OUTLINED_FUNCTION_283();
          sub_1C5CB5A3C(v671);
          *(v334 + 12) = 2114;
          v448 = [v11 itemKind];
          *(v334 + 14) = v448;
          *v335 = v448;

          *(v334 + 22) = 2082;
          v342 = [v11 allowedItemIdentifiers];
LABEL_179:
          v449 = v342;
          if (v449)
          {
            v450 = v449;
            sub_1C6016B10();

            v451 = OUTLINED_FUNCTION_294();
            MEMORY[0x1C6953600](v451);
            OUTLINED_FUNCTION_61();
          }

          else
          {
            OUTLINED_FUNCTION_174();
          }

          v452 = OUTLINED_FUNCTION_108();
          sub_1C5C6AB10(v452, v453, v454);
          OUTLINED_FUNCTION_73();

          *(v334 + 24) = v336;

          _os_log_impl(&dword_1C5C61000, v185, v333, "[XSQ:Content:Library] apply(to:items:) | updating request [] %{public}s\nitemKind=%{public}@\nallowedItemIdentifiers=%{public}s", v334, 0x20u);
          sub_1C5CB5700(v335);
          v455 = OUTLINED_FUNCTION_37();
          MEMORY[0x1C6956920](v455);
          OUTLINED_FUNCTION_77_0();
          swift_arrayDestroy();
LABEL_280:
          OUTLINED_FUNCTION_55();
          MEMORY[0x1C6956920]();
LABEL_281:
          OUTLINED_FUNCTION_55();
          MEMORY[0x1C6956920]();
LABEL_282:

LABEL_283:
          OUTLINED_FUNCTION_237();
          return;
      }

    case 2:
      v202 = v8 | (v9 << 8);
      OUTLINED_FUNCTION_3_1();
      sub_1C5C6EFFC(0, v203, v204, v205);
      v206 = swift_allocObject();
      *(v206 + 16) = xmmword_1C60311E0;
      OUTLINED_FUNCTION_197();
      sub_1C5C64D74(v207, v208, v209);
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
      *(&v680 + 1) = sub_1C5C64D74(0, &qword_1ED7DCCD0, 0x1E696AD98);
      sub_1C6016940();
      v210 = OUTLINED_FUNCTION_106();
      *&v679 = sub_1C5CAEE98(v210, v211, v212);
      OUTLINED_FUNCTION_197();
      sub_1C5CB59B4(v213, v214, v215);
      OUTLINED_FUNCTION_223();
      sub_1C60174C0();
      sub_1C5E1F068(v206);
      v2 = &selRef_isNonPurgeable;
      v216 = [v674 mediaLibrary];
      v217 = objc_allocWithZone(MEMORY[0x1E6970618]);
      v218 = OUTLINED_FUNCTION_186();
      if (v218)
      {
        v1 = v218;
        [v218 setGroupingType_];
        sub_1C5CAF010(v1);
        if (qword_1EC1A9730 != -1)
        {
LABEL_297:
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v219 = sub_1C60162D0();
        OUTLINED_FUNCTION_144(v219, qword_1EC1BE490);
        v220 = v1;
        sub_1C5CB5A04(v3, &v679);
        v221 = v220;
        sub_1C5CB5A04(v3, &v679);
        v185 = v221;
        v186 = sub_1C60162B0();
        v222 = sub_1C6016F30();
        if (os_log_type_enabled(v186, v222))
        {
          v223 = OUTLINED_FUNCTION_334();
          OUTLINED_FUNCTION_97();
          v674 = swift_slowAlloc();
          OUTLINED_FUNCTION_112_0();
          v675 = swift_slowAlloc();
          *&v679 = v675;
          *v223 = 136446978;

          v224 = v3;
          sub_1C5CAF1A0();
          OUTLINED_FUNCTION_313();
          sub_1C5CB5A3C(v3);
          v225 = OUTLINED_FUNCTION_111();
          sub_1C5C6AB10(v225, v6, v226);
          OUTLINED_FUNCTION_250();

          *(v223 + 4) = v3;
          sub_1C5CB5A3C(v3);
          sub_1C5CB5A3C(v3);
          *(v223 + 12) = 2082;
          v227 = sub_1C5CB514C(v185);
          if (v227)
          {
            v224 = v227;
            sub_1C5C64D74(0, &qword_1EC1A9ED8, 0x1E6970608);
            sub_1C5CB59B4(&qword_1EC1A9EE0, &qword_1EC1A9ED8, 0x1E6970608);
            OUTLINED_FUNCTION_158();
            v228 = sub_1C6016D60();
            v230 = v229;
          }

          else
          {
            v230 = 0xE200000000000000;
            v228 = 23899;
          }

          sub_1C5C6AB10(v228, v230, &v679);
          OUTLINED_FUNCTION_73();

          *(v223 + 14) = v224;

          *(v223 + 22) = 2082;
          v376 = [v185 *(v2 + 2112)];
          if (v376)
          {
            v377 = v376;
            v378 = [v376 description];

            v224 = sub_1C6016940();
          }

          else
          {
            OUTLINED_FUNCTION_222();
          }

          v379 = v674;
          v380 = OUTLINED_FUNCTION_108();
          sub_1C5C6AB10(v380, v381, v382);
          OUTLINED_FUNCTION_73();

          *(v223 + 24) = v224;

          *(v223 + 32) = 2114;
          *(v223 + 34) = v185;
          *v379 = v1;

          _os_log_impl(&dword_1C5C61000, v186, v222, "[XSQ:Content:Library] apply(to:items:) | updating request [] %{public}s\nlegacyMediaQuery = { \n    filterPredicates: %{public}s,\n    library: %{public}s,\n    groupingType: .artist,\n} => %{public}@", v223, 0x2Au);
          sub_1C5CB5700(v379);
          v383 = OUTLINED_FUNCTION_37();
          MEMORY[0x1C6956920](v383);
          swift_arrayDestroy();
          v384 = OUTLINED_FUNCTION_16_1();
          MEMORY[0x1C6956920](v384);
          goto LABEL_260;
        }

        sub_1C5CB5A3C(v3);
        sub_1C5CB5A3C(v3);
LABEL_130:

        goto LABEL_282;
      }

      __break(1u);
      goto LABEL_299;
    case 3:
      goto LABEL_304;
    case 4:
      OUTLINED_FUNCTION_224();
      sub_1C6017540();
      OUTLINED_FUNCTION_21_1();
      MEMORY[0x1C69534E0](v656 - 4, v657 | 0x8000000000000000);
      sub_1C5CAF1A0();
      OUTLINED_FUNCTION_352();

      OUTLINED_FUNCTION_135();
      i = 1439;
      goto LABEL_303;
    case 5:
      if (v8)
      {
        goto LABEL_306;
      }

      if (v6 == 1)
      {
        OUTLINED_FUNCTION_3_1();
        sub_1C5C6EFFC(0, v167, v168, v169);
        v170 = swift_allocObject();
        *(v170 + 16) = xmmword_1C60311E0;
        OUTLINED_FUNCTION_197();
        sub_1C5C64D74(v171, v172, v173);
        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
        *(&v680 + 1) = sub_1C5C64D74(0, &qword_1ED7DCCD0, 0x1E696AD98);
        sub_1C6016940();
        v174 = OUTLINED_FUNCTION_106();
        *&v679 = sub_1C5CAEE98(v174, v175, v176);
        OUTLINED_FUNCTION_197();
        sub_1C5CB59B4(v177, v178, v179);
        OUTLINED_FUNCTION_223();
        sub_1C60174C0();
        sub_1C5E1F068(v170);
        v180 = OUTLINED_FUNCTION_274();
        v181 = objc_allocWithZone(MEMORY[0x1E6970618]);
        v182 = OUTLINED_FUNCTION_186();
        if (v182)
        {
          v183 = v182;
          sub_1C5CAF010(v182);
          if (qword_1EC1A9730 != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v184 = sub_1C60162D0();
          OUTLINED_FUNCTION_144(v184, qword_1EC1BE490);
          v185 = v183;
          v186 = sub_1C60162B0();
          v187 = sub_1C6016F30();
          if (os_log_type_enabled(v186, v187))
          {
            v188 = OUTLINED_FUNCTION_334();
            OUTLINED_FUNCTION_97();
            v674 = swift_slowAlloc();
            OUTLINED_FUNCTION_112_0();
            v675 = swift_slowAlloc();
            *&v679 = v675;
            *v188 = 136446978;
            v189 = v3;
            v190 = sub_1C5CAF1A0();
            OUTLINED_FUNCTION_351(v190, v191);
            OUTLINED_FUNCTION_73();

            v192 = OUTLINED_FUNCTION_322();
            if (v192)
            {
              v189 = v192;
              OUTLINED_FUNCTION_251();
              sub_1C5C64D74(v193, v194, v195);
              OUTLINED_FUNCTION_251();
              sub_1C5CB59B4(v196, v197, v198);
              OUTLINED_FUNCTION_157();
              LOWORD(v2) = 2082;
              v199 = sub_1C6016D60();
              v201 = v200;
            }

            else
            {
              v201 = 0xE200000000000000;
              v199 = 23899;
            }

            sub_1C5C6AB10(v199, v201, &v679);
            OUTLINED_FUNCTION_73();

            *(v188 + 14) = v189;

            *(v188 + 22) = v2;
            v573 = [v185 byte_1C603199E];
            if (v573)
            {
              v574 = v573;
              v575 = [v573 description];

              v189 = sub_1C6016940();
            }

            else
            {
              OUTLINED_FUNCTION_222();
            }

            v576 = OUTLINED_FUNCTION_108();
            sub_1C5C6AB10(v576, v577, v578);
            OUTLINED_FUNCTION_73();

            *(v188 + 24) = v189;

            *(v188 + 32) = 2114;
            *(v188 + 34) = v185;
            v579 = v674;
            *v674 = v183;

            OUTLINED_FUNCTION_325(&dword_1C5C61000, v580, v581, "[XSQ:Content:Library] apply(to:items:) | updating request [] %{public}s\nlegacyMediaQuery = { \n    filterPredicates: %{public}s,\n    library: %{public}s,\n} => %{public}@");
            sub_1C5CB5700(v579);
            v582 = OUTLINED_FUNCTION_47();
            MEMORY[0x1C6956920](v582);
            swift_arrayDestroy();
LABEL_259:
            OUTLINED_FUNCTION_55();
            MEMORY[0x1C6956920]();
LABEL_260:
            OUTLINED_FUNCTION_55();
            MEMORY[0x1C6956920]();

            goto LABEL_282;
          }

          goto LABEL_129;
        }

LABEL_299:
        __break(1u);
      }

      else
      {
        if (v6 != 2)
        {
LABEL_306:
          *&v679 = sub_1C6017840();
          *(&v679 + 1) = v658;
          OUTLINED_FUNCTION_21_1();
          MEMORY[0x1C69534E0](v659 - 21, v660 | 0x8000000000000000);
          sub_1C5CAF1A0();
          OUTLINED_FUNCTION_352();

          OUTLINED_FUNCTION_135();
          i = 1434;
          goto LABEL_303;
        }

        OUTLINED_FUNCTION_3_1();
        sub_1C5C6EFFC(0, v343, v344, v345);
        v346 = swift_allocObject();
        *(v346 + 16) = xmmword_1C60311E0;
        OUTLINED_FUNCTION_197();
        sub_1C5C64D74(v347, v348, v349);
        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
        *(&v680 + 1) = sub_1C5C64D74(0, &qword_1ED7DCCD0, 0x1E696AD98);
        sub_1C6016940();
        v350 = OUTLINED_FUNCTION_106();
        *&v679 = sub_1C5CAEE98(v350, v351, v352);
        OUTLINED_FUNCTION_197();
        sub_1C5CB59B4(v353, v354, v355);
        OUTLINED_FUNCTION_223();
        sub_1C60174C0();
        sub_1C5E1F068(v346);
        v356 = OUTLINED_FUNCTION_274();
        v357 = objc_allocWithZone(MEMORY[0x1E6970618]);
        v358 = OUTLINED_FUNCTION_186();
        if (v358)
        {
          v359 = v358;
          [v358 setGroupingType_];
          sub_1C5CAF010(v359);
          if (qword_1EC1A9730 != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v360 = sub_1C60162D0();
          OUTLINED_FUNCTION_144(v360, qword_1EC1BE490);
          v185 = v359;
          v186 = sub_1C60162B0();
          v361 = sub_1C6016F30();
          if (os_log_type_enabled(v186, v361))
          {
            v362 = OUTLINED_FUNCTION_334();
            OUTLINED_FUNCTION_97();
            v674 = swift_slowAlloc();
            OUTLINED_FUNCTION_112_0();
            v675 = swift_slowAlloc();
            *&v679 = v675;
            *v362 = 136446978;
            v363 = v3;
            v364 = sub_1C5CAF1A0();
            OUTLINED_FUNCTION_351(v364, v365);
            OUTLINED_FUNCTION_73();

            v366 = OUTLINED_FUNCTION_322();
            if (v366)
            {
              v363 = v366;
              OUTLINED_FUNCTION_251();
              sub_1C5C64D74(v367, v368, v369);
              OUTLINED_FUNCTION_251();
              sub_1C5CB59B4(v370, v371, v372);
              OUTLINED_FUNCTION_157();
              LOWORD(v2) = 2082;
              v373 = sub_1C6016D60();
              v375 = v374;
            }

            else
            {
              v375 = 0xE200000000000000;
              v373 = 23899;
            }

            sub_1C5C6AB10(v373, v375, &v679);
            OUTLINED_FUNCTION_73();

            *(v362 + 14) = v363;

            *(v362 + 22) = v2;
            v583 = [v185 byte_1C603199E];
            if (v583)
            {
              v584 = v583;
              v585 = [v583 description];

              v363 = sub_1C6016940();
            }

            else
            {
              OUTLINED_FUNCTION_222();
            }

            v586 = v674;
            v587 = OUTLINED_FUNCTION_108();
            sub_1C5C6AB10(v587, v588, v589);
            OUTLINED_FUNCTION_73();

            *(v362 + 24) = v363;

            *(v362 + 32) = 2114;
            *(v362 + 34) = v185;
            *v586 = v359;

            OUTLINED_FUNCTION_325(&dword_1C5C61000, v590, v591, "[XSQ:Content:Library] apply(to:items:) | updating request [] %{public}s\nlegacyMediaQuery = { \n    filterPredicates: %{public}s,\n    library: %{public}s,\n    groupingType: .album,\n} => %{public}@");
            sub_1C5CB5700(v586);
            v592 = OUTLINED_FUNCTION_37();
            MEMORY[0x1C6956920](v592);
            swift_arrayDestroy();
            goto LABEL_259;
          }

LABEL_129:

          goto LABEL_130;
        }
      }

      __break(1u);
LABEL_301:
      v676 = 0;
      v677 = 0xE000000000000000;
      v646 = OUTLINED_FUNCTION_43_1();
      sub_1C5CB58E0(v646, v647, v648, v649, 3u);
LABEL_302:
      sub_1C6017540();
      OUTLINED_FUNCTION_109();
      MEMORY[0x1C69534E0](0xD000000000000037);
      v650 = sub_1C5CAF1A0();
      MEMORY[0x1C69534E0](v650);

      v653 = v676;
      v654 = v677;
      v665 = 0;
      for (i = 1012; ; i = 1437)
      {
LABEL_303:
        v664 = i;
        OUTLINED_FUNCTION_323("Fatal error", v651, v652, v653, v654, "MediaPlaybackCore/MPCAssistantPlaybackQueue.swift");
        __break(1u);
LABEL_304:
        OUTLINED_FUNCTION_224();
        sub_1C6017540();
        OUTLINED_FUNCTION_109();
        MEMORY[0x1C69534E0](0xD000000000000037);
        sub_1C5CAF1A0();
        OUTLINED_FUNCTION_352();

        OUTLINED_FUNCTION_135();
      }

    default:
      v671 = v3;
      v15 = 0x1FB635000;
      v672 = objc_opt_self();
      OUTLINED_FUNCTION_330([v672 0x1FB635E20]);

      v17 = 0;
      v670 = v14;
      v678 = v14;
      v6 = *(v11 + 16);
      v18 = v11 + 64;
      v668 = xmmword_1C60311D0;
      v673 = v6;
      v667 = v11 + 64;
      while (2)
      {
        v3 = v18 + 40 * v17;
        v19 = v17;
LABEL_4:
        if (v6 != v19)
        {
          if (v19 >= v6)
          {
            __break(1u);
          }

          else
          {
            v17 = v19 + 1;
            if (!__OFADD__(v19, 1))
            {
              v1 = *v3;
              if (v1 <= 0x3F)
              {
                v20 = *(v3 - 32);
                v2 = *(v3 - 24);
                v11 = *(v3 - 16);
                v14 = *(v3 - 8);
                *&v679 = v20;
                *(&v679 + 1) = v2;
                *&v680 = v11;
                *(&v680 + 1) = v14;
                v681 = v1;
                switch(v1)
                {
                  case 1:
                    if (!v2)
                    {
                      v21 = OUTLINED_FUNCTION_307();
                      v25 = 1;
                      goto LABEL_26;
                    }

                    v675 = v14;
                    switch(v11)
                    {
                      case 1:
                      case 14:
                        goto LABEL_28;
                      case 2:
                        objc_opt_self();
                        v39 = OUTLINED_FUNCTION_88_0();
                        v41 = sub_1C5CB58E0(v39, v40, 2, v14, 1u);
                        v14 = OUTLINED_FUNCTION_189(v41, sel_kindWithVariants_);
                        v42 = OUTLINED_FUNCTION_87_0();
                        v15 = [v42 v43];

                        goto LABEL_41;
                      case 3:
                        objc_opt_self();
                        objc_opt_self();
                        v91 = OUTLINED_FUNCTION_80_0();
                        v94 = sub_1C5CB58E0(v91, v92, 3, v93, 1u);
                        v95 = OUTLINED_FUNCTION_189(v94, sel_kindWithVariants_);
                        v14 = OUTLINED_FUNCTION_273(v95, sel_kindWithSongKind_);

                        v96 = OUTLINED_FUNCTION_87_0();
                        v90 = [v96 v97];
                        goto LABEL_40;
                      case 4:
                        objc_opt_self();
                        objc_opt_self();
                        v98 = OUTLINED_FUNCTION_80_0();
                        v101 = sub_1C5CB58E0(v98, v99, 4, v100, 1u);
                        v102 = OUTLINED_FUNCTION_189(v101, sel_kindWithVariants_);
                        v14 = OUTLINED_FUNCTION_273(v102, sel_kindWithSongKind_);

                        v103 = OUTLINED_FUNCTION_87_0();
                        v90 = [v103 v104];
                        goto LABEL_40;
                      case 5:
                        v74 = objc_opt_self();
                        OUTLINED_FUNCTION_3_1();
                        v75 = OUTLINED_FUNCTION_195();
                        sub_1C5C6EFFC(v75, &qword_1ED7DCAF0, v76, v77);
                        v79 = OUTLINED_FUNCTION_213(v78);
                        OUTLINED_FUNCTION_79(v79);
                        v80 = OUTLINED_FUNCTION_88_0();
                        sub_1C5CB58E0(v80, v81, 5, v82, 1u);
                        *(v14 + 32) = OUTLINED_FUNCTION_188();
                        v83 = objc_opt_self();
                        *(v14 + 40) = OUTLINED_FUNCTION_281(v83);
                        v84 = objc_opt_self();
                        v85 = OUTLINED_FUNCTION_281(v84);
                        OUTLINED_FUNCTION_280(v85);
                        OUTLINED_FUNCTION_120();
                        v86 = sub_1C6016AF0();

                        v669 = [v74 kindWithKinds_];

                        v87 = objc_opt_self();
                        v88 = OUTLINED_FUNCTION_282(v87, sel_kindWithPlaylistEntryKind_options_);
                        v14 = [v88 variants];

                        v90 = OUTLINED_FUNCTION_155(v89, sel_kindWithVariants_playlistEntryKind_options_);
LABEL_40:
                        v15 = v90;

                        goto LABEL_41;
                      case 6:
                      case 7:
                      case 8:
                      case 9:
                      case 10:
                      case 11:
                      case 12:
                      case 13:
                        goto LABEL_35;
                      default:
                        if (v11 == 18)
                        {
LABEL_28:
                          v56 = OUTLINED_FUNCTION_43_1();
                          v60 = sub_1C5CB58E0(v56, v57, v58, v59, 1u);
                          v61 = OUTLINED_FUNCTION_189(v60, sel_kindWithVariants_);
                        }

                        else
                        {
LABEL_35:
                          v69 = objc_opt_self();
                          v70 = OUTLINED_FUNCTION_43_1();
                          sub_1C5CB58E0(v70, v71, v72, v73, 1u);
                          v61 = [v69 unknownKind];
                        }

                        v44 = v61;
                        v15 = v44;
LABEL_41:
                        MEMORY[0x1EEE9AC00](v44);
                        OUTLINED_FUNCTION_40_0();
                        *(v105 - 32) = v20;
                        *(v105 - 24) = v2;
                        *(v105 - 16) = v106;
                        v107 = objc_allocWithZone(MEMORY[0x1E6970550]);
                        break;
                    }

LABEL_51:
                    v159 = OUTLINED_FUNCTION_8_2();
                    OUTLINED_FUNCTION_271(v159, v160, v161, v162);
                    v163 = OUTLINED_FUNCTION_80_0();
                    v16 = sub_1C5CB587C(v163, v164, v11, v675, v1);
                    v6 = v673;
                    if (!v14)
                    {
                      goto LABEL_52;
                    }

                    goto LABEL_53;
                  case 2:
                    if (!v2)
                    {
                      v21 = OUTLINED_FUNCTION_307();
                      v25 = 2;
LABEL_26:
                      v16 = sub_1C5CB587C(v21, v22, v23, v24, v25);
                      goto LABEL_52;
                    }

                    sub_1C5C64D74(0, &qword_1EC1A9EE8, 0x1E6970648);
                    swift_getObjCClassFromMetadata();
                    OUTLINED_FUNCTION_203();

                    v15 = [v15 identityKind];
                    v669 = &v666;
                    MEMORY[0x1EEE9AC00](v15);
                    v1 = v14;
                    v14 = (&v666 - 6);
                    *(&v666 - 4) = v20;
                    *(&v666 - 3) = v2;
                    v664 = v11;
                    v32 = objc_allocWithZone(MEMORY[0x1E6970550]);
                    v33 = OUTLINED_FUNCTION_8_2();
                    OUTLINED_FUNCTION_271(v33, v34, v35, v36);
                    v37 = OUTLINED_FUNCTION_80_0();
                    v16 = sub_1C5CB587C(v37, v38, v11, v1, 2u);
                    if (&v666 == 48)
                    {
                      goto LABEL_52;
                    }

LABEL_53:
                    v15 = &v678;
                    MEMORY[0x1C69535C0](v16);
                    OUTLINED_FUNCTION_317();
                    if (v166)
                    {
                      OUTLINED_FUNCTION_128(v165);
                      sub_1C6016B30();
                    }

                    OUTLINED_FUNCTION_303();
                    sub_1C6016B70();
                    OUTLINED_FUNCTION_257();
                    v18 = v667;
                    break;
                  case 3:
                    goto LABEL_301;
                  case 4:
                    v675 = v14;
                    if ((v14 & 1) == 0)
                    {
                      switch(v11)
                      {
                        case 1:
                        case 14:
                          goto LABEL_30;
                        case 2:
                          objc_opt_self();
                          v46 = OUTLINED_FUNCTION_88_0();
                          v48 = sub_1C5CB58E0(v46, v47, 2, v14, 4u);
                          v14 = OUTLINED_FUNCTION_189(v48, sel_kindWithVariants_);
                          v49 = OUTLINED_FUNCTION_87_0();
                          v51 = [v49 v50];
                          goto LABEL_45;
                        case 3:
                          objc_opt_self();
                          objc_opt_self();
                          v124 = OUTLINED_FUNCTION_80_0();
                          v127 = sub_1C5CB58E0(v124, v125, 3, v126, 4u);
                          v128 = OUTLINED_FUNCTION_189(v127, sel_kindWithVariants_);
                          v14 = OUTLINED_FUNCTION_273(v128, sel_kindWithSongKind_);

                          v129 = OUTLINED_FUNCTION_87_0();
                          v51 = [v129 v130];
                          goto LABEL_45;
                        case 4:
                          objc_opt_self();
                          objc_opt_self();
                          v131 = OUTLINED_FUNCTION_80_0();
                          v134 = sub_1C5CB58E0(v131, v132, 4, v133, 4u);
                          v135 = OUTLINED_FUNCTION_189(v134, sel_kindWithVariants_);
                          v14 = OUTLINED_FUNCTION_273(v135, sel_kindWithSongKind_);

                          v136 = OUTLINED_FUNCTION_87_0();
                          v51 = [v136 v137];
                          goto LABEL_45;
                        case 5:
                          v108 = objc_opt_self();
                          OUTLINED_FUNCTION_3_1();
                          v109 = OUTLINED_FUNCTION_195();
                          sub_1C5C6EFFC(v109, &qword_1ED7DCAF0, v110, v111);
                          v113 = OUTLINED_FUNCTION_213(v112);
                          OUTLINED_FUNCTION_79(v113);
                          v114 = OUTLINED_FUNCTION_88_0();
                          sub_1C5CB58E0(v114, v115, 5, v116, 4u);
                          *(v14 + 32) = OUTLINED_FUNCTION_188();
                          v117 = objc_opt_self();
                          *(v14 + 40) = OUTLINED_FUNCTION_281(v117);
                          v118 = objc_opt_self();
                          v119 = OUTLINED_FUNCTION_281(v118);
                          OUTLINED_FUNCTION_280(v119);
                          OUTLINED_FUNCTION_120();
                          v120 = sub_1C6016AF0();

                          v669 = [v108 kindWithKinds_];

                          v121 = objc_opt_self();
                          v122 = OUTLINED_FUNCTION_282(v121, sel_kindWithPlaylistEntryKind_options_);
                          v14 = [v122 variants];

                          v51 = OUTLINED_FUNCTION_155(v123, sel_kindWithVariants_playlistEntryKind_options_);
LABEL_45:
                          v15 = v51;

                          goto LABEL_46;
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 13:
                          break;
                        default:
                          if (v11 != 18)
                          {
                            break;
                          }

LABEL_30:
                          v62 = OUTLINED_FUNCTION_43_1();
                          v66 = sub_1C5CB58E0(v62, v63, v64, v65, 4u);
                          v31 = OUTLINED_FUNCTION_189(v66, sel_kindWithVariants_);
                          goto LABEL_31;
                      }
                    }

                    v26 = objc_opt_self();
                    v27 = OUTLINED_FUNCTION_43_1();
                    sub_1C5CB58E0(v27, v28, v29, v30, 4u);
                    v31 = [v26 unknownKind];
LABEL_31:
                    v67 = v31;
                    v15 = v67;
LABEL_46:
                    MEMORY[0x1EEE9AC00](v67);
                    OUTLINED_FUNCTION_39();
                    *(v138 - 16) = v20;
                    *(v138 - 8) = v2;
                    v139 = objc_allocWithZone(MEMORY[0x1E6970550]);
                    goto LABEL_51;
                  case 5:
                    v675 = v14;
                    if ((v11 & 1) == 0)
                    {
                      switch(v2)
                      {
                        case 1:
                        case 14:
                          goto LABEL_33;
                        case 2:
                          v52 = objc_opt_self();
                          v14 = OUTLINED_FUNCTION_189(v52, sel_kindWithVariants_);
                          v53 = OUTLINED_FUNCTION_87_0();
                          v55 = [v53 v54];
                          goto LABEL_49;
                        case 3:
                        case 4:
                          objc_opt_self();
                          v153 = objc_opt_self();
                          v154 = OUTLINED_FUNCTION_189(v153, sel_kindWithVariants_);
                          v14 = OUTLINED_FUNCTION_273(v154, sel_kindWithSongKind_);

                          v155 = OUTLINED_FUNCTION_87_0();
                          v55 = [v155 v156];
                          goto LABEL_49;
                        case 5:
                          v140 = objc_opt_self();
                          OUTLINED_FUNCTION_3_1();
                          v141 = OUTLINED_FUNCTION_195();
                          sub_1C5C6EFFC(v141, &qword_1ED7DCAF0, v142, v143);
                          v145 = OUTLINED_FUNCTION_213(v144);
                          OUTLINED_FUNCTION_79(v145);
                          *(v14 + 32) = OUTLINED_FUNCTION_188();
                          v146 = objc_opt_self();
                          *(v14 + 40) = OUTLINED_FUNCTION_281(v146);
                          v147 = objc_opt_self();
                          v148 = OUTLINED_FUNCTION_281(v147);
                          OUTLINED_FUNCTION_280(v148);
                          OUTLINED_FUNCTION_120();
                          v149 = sub_1C6016AF0();

                          v669 = [v140 kindWithKinds_];

                          v150 = objc_opt_self();
                          v151 = OUTLINED_FUNCTION_282(v150, sel_kindWithPlaylistEntryKind_options_);
                          v14 = [v151 variants];

                          v55 = OUTLINED_FUNCTION_155(v152, sel_kindWithVariants_playlistEntryKind_options_);
LABEL_49:
                          v15 = v55;

                          goto LABEL_50;
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 13:
                          break;
                        default:
                          if (v2 != 18)
                          {
                            break;
                          }

LABEL_33:
                          v45 = OUTLINED_FUNCTION_189(v16, sel_kindWithVariants_);
                          goto LABEL_34;
                      }
                    }

                    v45 = [objc_opt_self() unknownKind];
LABEL_34:
                    v68 = v45;
                    v15 = v68;
LABEL_50:
                    MEMORY[0x1EEE9AC00](v68);
                    OUTLINED_FUNCTION_39();
                    *(v157 - 16) = v20;
                    v158 = objc_allocWithZone(MEMORY[0x1E6970550]);
                    goto LABEL_51;
                  default:
                    v21 = OUTLINED_FUNCTION_43_1();
                    v25 = 0;
                    goto LABEL_26;
                }

                continue;
              }

LABEL_52:
              ++v19;
              v3 += 40;
              goto LABEL_4;
            }
          }

          __break(1u);
          goto LABEL_291;
        }

        break;
      }

      sub_1C5C64D74(0, &qword_1ED7DCE70, 0x1E6970550);
      OUTLINED_FUNCTION_254();
      sub_1C6016AF0();
      OUTLINED_FUNCTION_73();

      v327 = v674;
      v328 = OUTLINED_FUNCTION_253();
      [v328 v329];

      if (qword_1EC1A9730 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v330 = sub_1C60162D0();
      OUTLINED_FUNCTION_144(v330, qword_1EC1BE490);
      v331 = v327;
      OUTLINED_FUNCTION_328();
      v332 = v14;
      OUTLINED_FUNCTION_165();
      v185 = sub_1C60162B0();
      v333 = sub_1C6016F30();
      if (OUTLINED_FUNCTION_209(v333))
      {
        OUTLINED_FUNCTION_64_0();
        v334 = swift_slowAlloc();
        OUTLINED_FUNCTION_97();
        v335 = swift_slowAlloc();
        OUTLINED_FUNCTION_72();
        v678 = swift_slowAlloc();
        OUTLINED_FUNCTION_166(4.8754e-34);
        v336 = v327;
        sub_1C5CAF1A0();
        v337 = OUTLINED_FUNCTION_60();
        sub_1C5CB5A3C(v337);
        v338 = OUTLINED_FUNCTION_110_0();
        sub_1C5C6AB10(v338, v339, v340);
        OUTLINED_FUNCTION_114();

        OUTLINED_FUNCTION_283();
        sub_1C5CB5A3C(v327);
        *(v334 + 12) = 2114;
        v341 = [v11 itemKind];
        *(v334 + 14) = v341;
        *v335 = v341;

        *(v334 + 22) = 2082;
        v342 = [v11 allowedItemIdentifiers];
        goto LABEL_179;
      }

      goto LABEL_181;
  }
}

uint64_t sub_1C5CAB438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C6014F20();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1C5CAB514(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (a2)
  {
    return 7104878;
  }

  a3();
  return sub_1C6017380();
}

void sub_1C5CAB570()
{
  OUTLINED_FUNCTION_247();
  v3 = *v0;
  v2 = v0[1];
  v4 = *(v0 + 16);
  v5 = *(v0 + 17) | ((*(v0 + 21) | (*(v0 + 23) << 16)) << 32);
  v6 = *(v0 + 24);
  v7 = *(v0 + 25) | ((*(v0 + 29) | (*(v0 + 31) << 16)) << 32);
  switch(*(v0 + 32))
  {
    case 1:
      if (!v2)
      {
        goto LABEL_18;
      }

      v8 = sub_1C5CAB8D0(v4 | (v5 << 8));
      if (!v8)
      {
        v8 = [objc_opt_self() unknownKind];
      }

      MEMORY[0x1EEE9AC00](v8);
      OUTLINED_FUNCTION_40_0();
      *(v9 - 32) = v3;
      *(v9 - 24) = v2;
      *(v9 - 16) = v6;
      *(v9 - 9) = BYTE6(v7);
      *(v9 - 11) = WORD2(v7);
      *(v9 - 15) = v7;
      v10 = objc_allocWithZone(MEMORY[0x1E6970550]);
      goto LABEL_12;
    case 2:
      if (!v2)
      {
        goto LABEL_18;
      }

      sub_1C5C64D74(0, &qword_1EC1A9EE8, 0x1E6970648);
      v14 = [swift_getObjCClassFromMetadata() identityKind];
      MEMORY[0x1EEE9AC00](v14);
      OUTLINED_FUNCTION_40_0();
      *(v15 - 32) = v3;
      *(v15 - 24) = v2;
      *(v15 - 16) = v4;
      *(v15 - 9) = BYTE6(v5);
      *(v15 - 11) = WORD2(v5);
      *(v15 - 15) = v5;
      v16 = objc_allocWithZone(MEMORY[0x1E6970550]);
LABEL_12:
      v17 = OUTLINED_FUNCTION_8_2();
      v21 = v1;
LABEL_17:
      sub_1C5E1ED90(v17, v18, v19, v20, v21);
LABEL_18:
      OUTLINED_FUNCTION_237();
      return;
    case 3:
      sub_1C6017540();
      OUTLINED_FUNCTION_109();
      MEMORY[0x1C69534E0](0xD000000000000037);
      v25 = sub_1C5CAF1A0();
      MEMORY[0x1C69534E0](v25);

      OUTLINED_FUNCTION_323("Fatal error", v26, v27, 0, 0xE000000000000000, "MediaPlaybackCore/MPCAssistantPlaybackQueue.swift");
      __break(1u);
      return;
    case 4:
      if ((v0[3] & 1) != 0 || (v11 = sub_1C5CAB8D0(v4 | (v5 << 8))) == 0)
      {
        v11 = [objc_opt_self() unknownKind];
      }

      MEMORY[0x1EEE9AC00](v11);
      OUTLINED_FUNCTION_39();
      *(v12 - 16) = v3;
      *(v12 - 8) = v2;
      v13 = objc_allocWithZone(MEMORY[0x1E6970550]);
      goto LABEL_12;
    case 5:
      if ((v4 & 1) != 0 || (v22 = sub_1C5CAB8D0(v0[1])) == 0)
      {
        v22 = [objc_opt_self() unknownKind];
      }

      v23 = v22;
      MEMORY[0x1EEE9AC00](v22);
      v28[2] = v3;
      v24 = objc_allocWithZone(MEMORY[0x1E6970550]);
      v17 = OUTLINED_FUNCTION_9_4();
      v19 = v23;
      v21 = v28;
      goto LABEL_17;
    default:
      goto LABEL_18;
  }
}

id sub_1C5CAB8D0(uint64_t a1)
{
  v1 = 0;
  switch(a1)
  {
    case 1:
    case 14:
      goto LABEL_4;
    case 2:
      objc_opt_self();
      v2 = [objc_opt_self() kindWithVariants_];
      v1 = OUTLINED_FUNCTION_350(v2, sel_kindWithSongKind_);

      break;
    case 3:
    case 4:
      v16 = objc_opt_self();
      objc_opt_self();
      v17 = [objc_opt_self() kindWithVariants_];
      v18 = OUTLINED_FUNCTION_87_0();
      v20 = [v18 v19];

      v1 = [v16 kindWithAlbumKind_];
      break;
    case 5:
      objc_opt_self();
      OUTLINED_FUNCTION_3_1();
      v3 = OUTLINED_FUNCTION_195();
      sub_1C5C6EFFC(v3, v4, v5, v6);
      v8 = OUTLINED_FUNCTION_213(v7);
      *(v8 + 16) = xmmword_1C60311D0;
      *(v8 + 32) = [objc_opt_self() kindWithVariants_];
      v9 = objc_opt_self();
      *(v8 + 40) = OUTLINED_FUNCTION_345(v9);
      v10 = objc_opt_self();
      *(v8 + 48) = OUTLINED_FUNCTION_345(v10);
      sub_1C5CB593C();
      sub_1C6016AF0();
      v11 = OUTLINED_FUNCTION_347();
      v12 = OUTLINED_FUNCTION_350(v11, sel_kindWithKinds_);

      v13 = objc_opt_self();
      v14 = [v13 kindWithPlaylistEntryKind:v12 options:0];
      v15 = [v14 variants];

      v1 = [v13 kindWithVariants:v15 & 0xFFFFFFFFFFFFFFF7 playlistEntryKind:v12 options:0];
      break;
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
      return v1;
    default:
      if (a1 == 18)
      {
LABEL_4:
        v1 = [objc_opt_self() kindWithVariants_];
      }

      break;
  }

  return v1;
}

uint64_t sub_1C5CABC0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1C6016900();
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1C5CB8390;
  *(v8 + 24) = v7;
  v11[4] = sub_1C5CB5C00;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1C5CFB534;
  v11[3] = &block_descriptor_112;
  v9 = _Block_copy(v11);

  [a1 setLibraryIdentifiersWithDatabaseID:v6 block:v9];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5CABDA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1C6016900();
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1C5CB5C40;
  *(v8 + 24) = v7;
  v11[4] = sub_1C5CB845C;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1C5CFB534;
  v11[3] = &block_descriptor_122;
  v9 = _Block_copy(v11);

  [a1 setLibraryIdentifiersWithDatabaseID:v6 block:v9];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5CABF0C(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1C5CB5C50;
  *(v5 + 24) = v4;
  v8[4] = sub_1C5CB5C60;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1C5CE5F58;
  v8[3] = &block_descriptor_131;
  v6 = _Block_copy(v8);

  [a1 setUniversalStoreIdentifiersWithBlock_];
  _Block_release(v6);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5CAC060(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1C5CB5C68;
  *(v7 + 24) = v6;
  v10[4] = sub_1C5CB8460;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1C5CE5F58;
  v10[3] = &block_descriptor_141;
  v8 = _Block_copy(v10);

  [a1 setUniversalStoreIdentifiersWithBlock_];
  _Block_release(v8);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_1C5CAC1C0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C6016900();
  [a1 setUniversalCloudLibraryID_];
}

uint64_t sub_1C5CAC220(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 17) | ((*(a1 + 21) | (*(a1 + 23) << 16)) << 32);
  v8 = *(a1 + 24);
  switch(*(a1 + 32))
  {
    case 1:
      if (*(a2 + 32) != 1)
      {
        return 0;
      }

      v18 = *(a1 + 31);
      v19 = *(a1 + 29);
      v20 = *(a1 + 25);
      v21 = a2[1];
      v22 = a2[2];
      v23 = a2[3];
      if (!v5)
      {
        if (v21)
        {
          return 0;
        }

        return (v6 | (v7 << 8)) == v22 && ((v20 << 8) | ((v19 | (v18 << 16)) << 40) | v8) == v23;
      }

      if (v21)
      {
        v24 = v4 == *a2 && v5 == v21;
        if (v24 || (sub_1C6017860() & 1) != 0)
        {
          return (v6 | (v7 << 8)) == v22 && ((v20 << 8) | ((v19 | (v18 << 16)) << 40) | v8) == v23;
        }
      }

      return 0;
    case 2:
      if (*(a2 + 32) != 2)
      {
        return 0;
      }

      v13 = a2[1];
      v14 = a2[2];
      if (v5)
      {
        if (!v13)
        {
          return 0;
        }

        v15 = v4 == *a2 && v5 == v13;
        if (!v15 && (sub_1C6017860() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v13)
      {
        return 0;
      }

      return (v6 | (v7 << 8)) == v14;
    case 3:
      if (*(a2 + 32) != 3)
      {
        return 0;
      }

      if (v4 == *a2 && v5 == a2[1])
      {
        return 1;
      }

      return sub_1C6017860();
    case 4:
      if (*(a2 + 32) != 4)
      {
        return 0;
      }

      v10 = a2[2];
      v11 = *(a2 + 24);
      v12 = v4 == *a2 && v5 == a2[1];
      if (!v12 && (sub_1C6017860() & 1) == 0)
      {
        return 0;
      }

      if (v8)
      {
        if ((v11 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((v11 & 1) != 0 || (v6 | (v7 << 8)) != v10)
      {
        return 0;
      }

      return 1;
    case 5:
      if (*(a2 + 32) != 5 || v4 != *a2)
      {
        return 0;
      }

      if (v6)
      {
        return (a2[2] & 1) != 0;
      }

      return (a2[2] & 1) == 0 && v5 == a2[1];
    default:
      if (*(a2 + 32))
      {
        return 0;
      }

      return v4 == *a2;
  }
}

uint64_t sub_1C5CAC450(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1C5CAC4A4(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1C5CB5C70;
  *(v5 + 24) = v4;
  v8[4] = sub_1C5CB8460;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1C5CE5F58;
  v8[3] = &block_descriptor_155;
  v6 = _Block_copy(v8);

  [a1 setUniversalStoreIdentifiersWithBlock_];
  _Block_release(v6);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5CAC5F8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1C5CB5C80;
  *(v7 + 24) = v6;
  v10[4] = sub_1C5CB8460;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1C5CE5F58;
  v10[3] = &block_descriptor_165;
  v8 = _Block_copy(v10);

  [a1 setUniversalStoreIdentifiersWithBlock_];
  _Block_release(v8);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_1C5CAC758(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C6016900();
  [a1 setGlobalPlaylistID_];
}

uint64_t sub_1C5CAC7B8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 0x80) == 0)
  {
    if ((a6 & 0x80) == 0 && a1 == a4)
    {
      if (a3)
      {
        if (a6)
        {
          return 1;
        }
      }

      else if ((a6 & 1) == 0 && a2 == a5)
      {
        return 1;
      }
    }

    return 0;
  }

  if ((a6 & 0x80) == 0)
  {
    return 0;
  }

  if (a1 != a4 || a2 != a5)
  {
    return sub_1C6017860();
  }

  return 1;
}

uint64_t sub_1C5CAC810(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  if (!(v7 >> 6))
  {
    v10 = *(a1 + 24);
    v20[0] = v4;
    v20[1] = v5;
    v20[2] = v6;
    v20[3] = v10;
    v21 = v7 & 0x3F;
    v11 = *(a2 + 32);
    if (v11 <= 0x3F)
    {
      v12 = *(a2 + 1);
      v18[0] = *a2;
      v18[1] = v12;
      v19 = v11;
      v13 = sub_1C5CAC220(v20, v18);
      return v13 & 1;
    }

    goto LABEL_21;
  }

  if (v7 >> 6 != 1)
  {
    if ((a2[4] & 0xC0) == 0x80)
    {
      v14 = *a2;
      v15 = a2[1];
      v16 = a2[2];
      if ((v6 & 0x80) != 0)
      {
        if ((v16 & 0x80) != 0)
        {
          v17 = v4 == v14 && v5 == v15;
          if (v17 || (sub_1C6017860() & 1) != 0)
          {
            goto LABEL_30;
          }
        }

        goto LABEL_21;
      }

      if ((v16 & 0x80) == 0 && v4 == v14)
      {
        if (v6)
        {
          if ((v16 & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        else if (v16 & 1 | (v5 != v15))
        {
          goto LABEL_21;
        }

LABEL_30:
        v13 = 1;
        return v13 & 1;
      }
    }

LABEL_21:
    v13 = 0;
    return v13 & 1;
  }

  if ((a2[4] & 0xC0) != 0x40)
  {
    goto LABEL_21;
  }

  if (v4 == *a2 && v5 == a2[1])
  {
    goto LABEL_30;
  }

  return sub_1C6017860();
}

void __swiftcall MPCAssistantXSchemeURLPlaybackQueue.init(contextID:)(MPCAssistantXSchemeURLPlaybackQueue *__return_ptr retstr, Swift::String_optional contextID)
{
  if (contextID.value._object)
  {
    v2 = sub_1C6016900();
  }

  else
  {
    v2 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContextID_];
}

void sub_1C5CACA28(void *a1@<X0>, uint64_t a2@<X8>)
{
  v299 = a2;
  v302 = a1;
  v4 = *v2;
  v3 = *(v2 + 8);
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = *(v2 + 32);
  OUTLINED_FUNCTION_6_2();
  sub_1C5CB5F2C(0, v8, v9, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_102();
  v13 = v11 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v290 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v290 - v19;
  MEMORY[0x1EEE9AC00](v18);
  switch(v7)
  {
    case 1:
      if (v3)
      {
        v55 = v3;

        v56 = v302;
        v57 = sub_1C5CB50F4(v302, &selRef_uniqueIdentifier);
        if (!v58)
        {
LABEL_29:
          sub_1C5CB5A3C(v301);
          sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
          sub_1C6016940();
          OUTLINED_FUNCTION_12_0(51);
          sub_1C6017540();

          OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_163(v61);
          sub_1C5CAF1A0();
          OUTLINED_FUNCTION_212();

          v62 = OUTLINED_FUNCTION_41();
          MEMORY[0x1C69534E0](v62);
          v63 = [v56 description];
          goto LABEL_50;
        }

        if (v4 == v57 && v3 == v58)
        {
        }

        else
        {
          v60 = sub_1C6017860();

          if ((v60 & 1) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        v56 = v302;
        v4 = sub_1C5CB50F4(v302, &selRef_uniqueIdentifier);
        v55 = v113;
      }

      v312 = v4;
      v313 = v55;
      v22 = v5;
      v314 = v5;
      v315 = 0;
      v316 = 2;
      v123 = v300;
      sub_1C5CACA28(v56, v306);
      if (v123)
      {

        switch(v6)
        {
          case 1:
          case 14:
            goto LABEL_87;
          case 2:
            v124 = OUTLINED_FUNCTION_245();
            if (([v124 v125] & 1) == 0)
            {
              goto LABEL_105;
            }

            v25 = 2;
            v3 = v55;
            v24 = v299;
            v23 = 1;
            goto LABEL_104;
          case 3:
            v209 = OUTLINED_FUNCTION_245();
            if (([v209 v210] & 1) == 0)
            {
              goto LABEL_105;
            }

            v23 = 1;
            v3 = v55;
            v24 = v299;
            v25 = 3;
            goto LABEL_104;
          case 4:
            v211 = OUTLINED_FUNCTION_245();
            if (([v211 v212] & 1) == 0)
            {
              goto LABEL_105;
            }

            v23 = 1;
            v25 = 4;
            goto LABEL_102;
          case 5:
            v207 = OUTLINED_FUNCTION_245();
            if (([v207 v208] & 1) == 0)
            {
              goto LABEL_105;
            }

            v23 = 1;
            v25 = 5;
LABEL_102:
            v3 = v55;
            goto LABEL_103;
          case 6:
          case 7:
          case 8:
          case 9:
          case 10:
          case 11:
          case 12:
          case 13:
            goto LABEL_95;
          default:
            if (v6 != 18)
            {
LABEL_95:

              sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
              sub_1C6016940();
              OUTLINED_FUNCTION_12_0(52);
              sub_1C6017540();
              MEMORY[0x1C69534E0](0xD000000000000018, 0x80000001C6046140);
              v303 = v6;
              type metadata accessor for INMediaItemType(0);
              sub_1C6017650();
              sub_1C6016880();
              OUTLINED_FUNCTION_92();
              OUTLINED_FUNCTION_2_3();
              v289 = sub_1C5CB8318(v205, v206, &unk_1C6035604);
              OUTLINED_FUNCTION_294();
              OUTLINED_FUNCTION_26();
              sub_1C6017280();
              OUTLINED_FUNCTION_90();
              goto LABEL_60;
            }

LABEL_87:
            v188 = OUTLINED_FUNCTION_245();
            if ([v188 v189])
            {
              v23 = 1;
              v3 = v55;
              goto LABEL_4;
            }

LABEL_105:

            sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
            sub_1C6016940();
            OUTLINED_FUNCTION_296();
            OUTLINED_FUNCTION_12_0(54);
            sub_1C6017540();

            OUTLINED_FUNCTION_11();
            OUTLINED_FUNCTION_163(v213);
            break;
        }

        goto LABEL_59;
      }

      v300 = 0;
      v126 = v306[1];
      v25 = v306[2];
      v302 = v306[3];
      v296 = v306[0];
      v297 = v307;

      if (qword_1EC1A9730 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v127 = sub_1C60162D0();
      __swift_project_value_buffer(v127, qword_1EC1BE490);
      OUTLINED_FUNCTION_90();

      v128 = sub_1C60162B0();
      sub_1C6016F30();
      sub_1C5CB5A3C(v301);
      v129 = OUTLINED_FUNCTION_162();
      if (os_log_type_enabled(v129, v130))
      {
        OUTLINED_FUNCTION_68_1();
        swift_slowAlloc();
        OUTLINED_FUNCTION_46();
        v131 = v25;
        v132 = swift_slowAlloc();
        v304 = v132;
        *v3 = 136446210;
        v133 = sub_1C5CAF1A0();
        OUTLINED_FUNCTION_260(v133, v134);
        OUTLINED_FUNCTION_118();

        *(v3 + 4) = v126;
        OUTLINED_FUNCTION_194();
        OUTLINED_FUNCTION_339(v135, v136, v137, v138);
        __swift_destroy_boxed_opaque_existential_0(v132);
        v25 = v131;
        OUTLINED_FUNCTION_55();
        MEMORY[0x1C6956920]();
        v139 = OUTLINED_FUNCTION_17();
        MEMORY[0x1C6956920](v139);
      }

      v3 = v126;
      v24 = v299;
      v4 = v296;
      v23 = v297;
      v22 = v302;
      goto LABEL_104;
    case 2:
      v46 = v302;
      v47 = sub_1C5CB50F4(v302, &selRef_uniqueIdentifier);
      if (v3)
      {
        if (!v48)
        {
          goto LABEL_49;
        }

        v49 = v4 == v47 && v3 == v48;
        if (!v49)
        {
          OUTLINED_FUNCTION_293();
          v50 = sub_1C6017860();

          if (v50)
          {
            goto LABEL_55;
          }

LABEL_49:
          sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
          sub_1C6016940();
          OUTLINED_FUNCTION_12_0(51);
          sub_1C6017540();

          OUTLINED_FUNCTION_11();
          v304 = v105 + 17;
          v305 = v104;
          sub_1C5CAF1A0();
          OUTLINED_FUNCTION_212();

          v106 = OUTLINED_FUNCTION_41();
          MEMORY[0x1C69534E0](v106);
          v63 = [v46 description];
LABEL_50:
          v107 = v63;
          sub_1C6016940();
          v109 = v108;

          v110 = OUTLINED_FUNCTION_258();
          MEMORY[0x1C69534E0](v110, v109);

          sub_1C6016880();
          OUTLINED_FUNCTION_92();
          OUTLINED_FUNCTION_2_3();
          sub_1C5CB8318(v111, v112, &unk_1C6035604);
          OUTLINED_FUNCTION_229();
          OUTLINED_FUNCTION_26();
          sub_1C6017280();
          OUTLINED_FUNCTION_54();

          goto LABEL_61;
        }
      }

      else if (v48)
      {

        goto LABEL_49;
      }

LABEL_55:
      v120 = v46;
      v25 = v6;
      if ([v120 collectionExistsWithPersistentID:v6 groupingType:2])
      {

        v23 = 2;
        v24 = v299;
        v22 = v5;
        goto LABEL_104;
      }

      sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
      sub_1C6016940();
      OUTLINED_FUNCTION_296();
      OUTLINED_FUNCTION_12_0(54);
      sub_1C6017540();

      OUTLINED_FUNCTION_11();
LABEL_58:
      v304 = v103;
      v305 = v101;
LABEL_59:
      sub_1C5CAF1A0();
      OUTLINED_FUNCTION_212();

      sub_1C6016880();
      OUTLINED_FUNCTION_92();
      OUTLINED_FUNCTION_2_3();
      sub_1C5CB8318(v121, v122, &unk_1C6035604);
      OUTLINED_FUNCTION_229();
      OUTLINED_FUNCTION_26();
      sub_1C6017280();
      OUTLINED_FUNCTION_54();
LABEL_60:

LABEL_61:

      swift_willThrow();
      return;
    case 3:
      v51 = &v290 - v21;
      OUTLINED_FUNCTION_293();
      sub_1C6014F00();
      v298 = v51;
      sub_1C5CB5CB0(v51, v20);
      sub_1C6014F20();
      v52 = OUTLINED_FUNCTION_95();
      OUTLINED_FUNCTION_336(v52);
      if (v49)
      {
        OUTLINED_FUNCTION_6_2();
        sub_1C5CB5D44(v20, v53, v54, MEMORY[0x1E69E6720], sub_1C5CB5F2C);
LABEL_43:
        sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
        sub_1C6016940();
        OUTLINED_FUNCTION_291();
        OUTLINED_FUNCTION_12_0(51);
        sub_1C6017540();

        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_163(v90);
        sub_1C5CAF1A0();
        OUTLINED_FUNCTION_212();

        v91 = OUTLINED_FUNCTION_41();
        MEMORY[0x1C69534E0](v91);
        v92 = [v302 description];
LABEL_44:
        v93 = v92;
        sub_1C6016940();
        v95 = v94;

        v96 = OUTLINED_FUNCTION_258();
        MEMORY[0x1C69534E0](v96, v95);

        sub_1C6016880();
        _s3__C4CodeOMa_4(0);
        OUTLINED_FUNCTION_2_3();
        v289 = sub_1C5CB8318(v97, v98, &unk_1C6035604);
        OUTLINED_FUNCTION_26();
        sub_1C6017280();
        OUTLINED_FUNCTION_54();

LABEL_45:
        swift_willThrow();
        OUTLINED_FUNCTION_6_2();
        sub_1C5CB5D44(v298, v99, v100, MEMORY[0x1E69E6720], sub_1C5CB5F2C);
        return;
      }

      v80 = sub_1C6014ED0();
      v82 = v81;
      v83 = *(v51 - 1);
      v84 = *(v83 + 8);
      v297 = v83 + 8;
      v84(v20, v51);
      v85 = v301;
      if (!v82)
      {
        goto LABEL_43;
      }

      v86 = sub_1C5CB50F4(v302, &selRef_uniqueIdentifier);
      if (!v87)
      {
        goto LABEL_42;
      }

      v296 = v84;
      if (v80 == v86 && v82 == v87)
      {
      }

      else
      {
        v89 = sub_1C6017860();

        if ((v89 & 1) == 0)
        {
LABEL_42:

          goto LABEL_43;
        }
      }

      sub_1C5CB5CB0(v298, v17);
      OUTLINED_FUNCTION_336(v17);
      if (v49)
      {

        OUTLINED_FUNCTION_6_2();
        sub_1C5CB5D44(v17, v186, v187, MEMORY[0x1E69E6720], sub_1C5CB5F2C);
LABEL_93:
        sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
        sub_1C6016940();
        OUTLINED_FUNCTION_291();
        OUTLINED_FUNCTION_12_0(152);
        sub_1C6017540();

        OUTLINED_FUNCTION_11();
        v304 = v195 + 13;
        v305 = v194;
        sub_1C5CAF1A0();
        OUTLINED_FUNCTION_212();

        v196 = OUTLINED_FUNCTION_41();
        MEMORY[0x1C69534E0](v196);
        v92 = [v302 description];
        goto LABEL_44;
      }

      v190 = sub_1C6014E80();
      v296(v17, v51);
      if (*(v190 + 16) < 2uLL)
      {
        __break(1u);
LABEL_132:
        OUTLINED_FUNCTION_0_6();
        swift_once();
        goto LABEL_121;
      }

      sub_1C5CD4534();
      if (v191 & 1) != 0 || (v192 = sub_1C5CAB4A4(), (v193))
      {

        goto LABEL_93;
      }

      v228 = v192;
      sub_1C5CB5CB0(v298, v13);
      OUTLINED_FUNCTION_336(v13);
      if (v49)
      {

        OUTLINED_FUNCTION_6_2();
        sub_1C5CB5D44(v13, v229, v230, MEMORY[0x1E69E6720], sub_1C5CB5F2C);
LABEL_118:
        v80 = v302;
        goto LABEL_119;
      }

      v231 = sub_1C6014E80();
      v232 = OUTLINED_FUNCTION_88_0();
      (v296)(v232);
      sub_1C5CFB96C(v231);
      OUTLINED_FUNCTION_176();

      if (!v51)
      {

        goto LABEL_118;
      }

      v233 = v80;
      OUTLINED_FUNCTION_158();
      v234 = sub_1C5CD4534();
      v85 = v301;
      v80 = v302;
      if (v235)
      {

LABEL_119:
        sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
        sub_1C6016940();
        OUTLINED_FUNCTION_291();
        OUTLINED_FUNCTION_12_0(151);
        sub_1C6017540();

        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_163(v236);
        sub_1C5CAF1A0();
        OUTLINED_FUNCTION_212();

        v237 = OUTLINED_FUNCTION_41();
        MEMORY[0x1C69534E0](v237);
        v92 = [v80 description];
        goto LABEL_44;
      }

      v317[0] = v233;
      v317[1] = v82;
      v317[2] = v228;
      v317[3] = v234;
      v318 = 1;
      if (qword_1EC1A9730 != -1)
      {
        goto LABEL_132;
      }

LABEL_121:
      v238 = sub_1C60162D0();
      v239 = __swift_project_value_buffer(v238, qword_1EC1BE490);
      OUTLINED_FUNCTION_276();

      v296 = v239;
      v240 = sub_1C60162B0();
      sub_1C6016F30();
      OUTLINED_FUNCTION_338();

      v241 = OUTLINED_FUNCTION_162();
      v243 = os_log_type_enabled(v241, v242);
      v295 = v82;
      if (v243)
      {
        OUTLINED_FUNCTION_123();
        v244 = swift_slowAlloc();
        OUTLINED_FUNCTION_72();
        v297 = swift_slowAlloc();
        v304 = v297;
        *v244 = 136446466;
        v245 = sub_1C5CAF1A0();
        OUTLINED_FUNCTION_260(v245, v246);
        OUTLINED_FUNCTION_113();

        OUTLINED_FUNCTION_331();
        v247 = sub_1C5CAF1A0();

        v248 = OUTLINED_FUNCTION_110_0();
        sub_1C5C6AB10(v248, v249, v250);
        OUTLINED_FUNCTION_114();

        *(v244 + 14) = v247;
        OUTLINED_FUNCTION_194();
        _os_log_impl(v251, v252, v253, v254, v244, 0x16u);
        OUTLINED_FUNCTION_179();
        swift_arrayDestroy();
        v255 = OUTLINED_FUNCTION_31_0();
        MEMORY[0x1C6956920](v255);
        v256 = OUTLINED_FUNCTION_37();
        MEMORY[0x1C6956920](v256);
      }

      v257 = v300;
      sub_1C5CACA28(v80, v308);
      if (v257)
      {

        OUTLINED_FUNCTION_276();
        v258 = v257;
        v259 = sub_1C60162B0();
        sub_1C6016F30();
        OUTLINED_FUNCTION_338();

        v260 = OUTLINED_FUNCTION_162();
        if (os_log_type_enabled(v260, v261))
        {
          OUTLINED_FUNCTION_123();
          v262 = swift_slowAlloc();
          OUTLINED_FUNCTION_72();
          v304 = swift_slowAlloc();
          *v262 = 136446466;
          v263 = sub_1C5CAF1A0();
          OUTLINED_FUNCTION_260(v263, v264);
          OUTLINED_FUNCTION_118();

          *(v262 + 4) = v85;
          *(v262 + 12) = 2082;
          swift_getErrorValue();
          v265 = sub_1C6017940();
          OUTLINED_FUNCTION_260(v265, v266);
          OUTLINED_FUNCTION_118();

          *(v262 + 14) = v85;
          OUTLINED_FUNCTION_194();
          _os_log_impl(v267, v268, v269, v270, v262, 0x16u);
          swift_arrayDestroy();
          v271 = OUTLINED_FUNCTION_37();
          MEMORY[0x1C6956920](v271);
          v272 = OUTLINED_FUNCTION_28_0();
          MEMORY[0x1C6956920](v272);
        }

        goto LABEL_45;
      }

      v300 = 0;
      v4 = v308[0];
      v290 = v308[1];
      v291 = v308[2];
      v302 = v308[3];
      v297 = v309;
      OUTLINED_FUNCTION_276();

      sub_1C5CB5698(v308, &v304);
      v273 = sub_1C60162B0();
      v274 = sub_1C6016F30();
      sub_1C5CB5A3C(v85);

      sub_1C5CB56D0(v308);
      if (os_log_type_enabled(v273, v274))
      {
        OUTLINED_FUNCTION_64_0();
        v275 = swift_slowAlloc();
        v296 = v4;
        v276 = v275;
        OUTLINED_FUNCTION_112_0();
        v321 = swift_slowAlloc();
        *v276 = 136446722;
        v277 = sub_1C5CAF1A0();
        sub_1C5C6AB10(v277, v278, &v321);
        OUTLINED_FUNCTION_118();

        *(v276 + 4) = v85;
        *(v276 + 12) = 2082;
        sub_1C5CAF1A0();
        OUTLINED_FUNCTION_99_0();

        v279 = OUTLINED_FUNCTION_159();
        sub_1C5C6AB10(v279, v280, v281);
        OUTLINED_FUNCTION_98();

        *(v276 + 14) = v317;
        *(v276 + 22) = 2082;
        v282 = sub_1C5CB5698(v308, &v304);
        sub_1C5CAE9DC(v282);
        OUTLINED_FUNCTION_99_0();
        sub_1C5CB56D0(v308);
        v283 = OUTLINED_FUNCTION_159();
        sub_1C5C6AB10(v283, v284, v285);
        OUTLINED_FUNCTION_98();

        *(v276 + 24) = v308;
        _os_log_impl(&dword_1C5C61000, v273, v274, "[XSQ:Content:Library] existingContent(in:) | converting sync ID to library entity [] \nsyncIDContent=%{public}s\nentityContent=%{public}s\nexistingContent=%{public}s", v276, 0x20u);
        OUTLINED_FUNCTION_160();
        swift_arrayDestroy();
        v286 = OUTLINED_FUNCTION_17();
        MEMORY[0x1C6956920](v286);
        v4 = v296;
        OUTLINED_FUNCTION_55();
        MEMORY[0x1C6956920]();
      }

      else
      {
      }

      OUTLINED_FUNCTION_6_2();
      sub_1C5CB5D44(v298, v287, v288, MEMORY[0x1E69E6720], sub_1C5CB5F2C);
LABEL_110:
      v24 = v299;
      v3 = v290;
      v25 = v291;
      v22 = v302;
      v23 = v297;
LABEL_104:
      *v24 = v4;
      *(v24 + 8) = v3;
      *(v24 + 16) = v25;
      *(v24 + 24) = v22;
      *(v24 + 32) = v23;
      return;
    case 4:
      v26 = objc_allocWithZone(MEMORY[0x1E6970570]);
      v27 = v302;
      v28 = [v26 initWithLibrary_];
      v29 = v301;
      sub_1C5CAB570();
      if (!v30)
      {
        __break(1u);
LABEL_134:
        __break(1u);
        return;
      }

      v31 = v30;
      v32 = sub_1C5CAEB08(v30);

      if (!v32)
      {
        sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
        sub_1C6016940();
        OUTLINED_FUNCTION_296();
        OUTLINED_FUNCTION_12_0(53);
        sub_1C6017540();

        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_163(v114);
        sub_1C5CAF1A0();
        OUTLINED_FUNCTION_212();

        sub_1C6016880();
        OUTLINED_FUNCTION_92();
        OUTLINED_FUNCTION_2_3();
        sub_1C5CB8318(v115, v116, &unk_1C6035604);
        OUTLINED_FUNCTION_229();
        OUTLINED_FUNCTION_26();
        sub_1C6017280();
        OUTLINED_FUNCTION_54();

        swift_willThrow();

        return;
      }

      v33 = [v32 modelKind];
      if (!v33)
      {
        goto LABEL_10;
      }

      v34 = v33;
      v35 = sub_1C5CAEC78(v34);
      if (v36)
      {

LABEL_10:
        v302 = sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
        sub_1C6016940();
        OUTLINED_FUNCTION_12_0(52);
        sub_1C6017540();

        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_163(v37);
        sub_1C5CAF1A0();
        OUTLINED_FUNCTION_212();

        v38 = OUTLINED_FUNCTION_41();
        MEMORY[0x1C69534E0](v38);
        v39 = [v32 description];
        sub_1C6016940();
        v40 = v32;
        v42 = v41;

        v43 = OUTLINED_FUNCTION_258();
        MEMORY[0x1C69534E0](v43, v42);

        sub_1C6016880();
        _s3__C4CodeOMa_4(0);
        OUTLINED_FUNCTION_2_3();
        sub_1C5CB8318(v44, v45, &unk_1C6035604);
        OUTLINED_FUNCTION_225();
        OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_164();
        sub_1C6017280();
        OUTLINED_FUNCTION_54();

        swift_willThrow();

        return;
      }

      v140 = v35;
      v141 = [v32 library];
      v298 = v34;
      if (!v141)
      {
        v302 = sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
        sub_1C6016940();
        OUTLINED_FUNCTION_12_0(54);
        sub_1C6017540();
        MEMORY[0x1C69534E0](0xD000000000000032, 0x80000001C6046080);
        sub_1C5CAF1A0();
        OUTLINED_FUNCTION_212();

        v197 = OUTLINED_FUNCTION_41();
        MEMORY[0x1C69534E0](v197);
        v198 = [v32 description];
        sub_1C6016940();
        v199 = v32;
        v201 = v200;

        v202 = OUTLINED_FUNCTION_258();
        MEMORY[0x1C69534E0](v202, v201);

        sub_1C6016880();
        _s3__C4CodeOMa_4(0);
        OUTLINED_FUNCTION_2_3();
        sub_1C5CB8318(v203, v204, &unk_1C6035604);
        OUTLINED_FUNCTION_225();
        OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_164();
        sub_1C6017280();
        OUTLINED_FUNCTION_54();

        swift_willThrow();

        return;
      }

      v295 = v28;
      v142 = v141;
      v143 = [v141 databaseID];
      v144 = sub_1C6016940();
      v146 = v145;

      v293 = v142;
      v147 = [v142 persistentID];
      v319[0] = v144;
      v319[1] = v146;
      v319[2] = v140;
      v319[3] = v147;
      v320 = 1;
      if (qword_1EC1A9730 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v148 = sub_1C60162D0();
      v149 = __swift_project_value_buffer(v148, qword_1EC1BE490);
      OUTLINED_FUNCTION_276();

      v150 = sub_1C60162B0();
      sub_1C6016F30();
      OUTLINED_FUNCTION_338();

      v151 = OUTLINED_FUNCTION_162();
      v153 = os_log_type_enabled(v151, v152);
      v294 = v32;
      v292 = v146;
      v296 = v149;
      if (v153)
      {
        OUTLINED_FUNCTION_123();
        v154 = swift_slowAlloc();
        OUTLINED_FUNCTION_72();
        v297 = swift_slowAlloc();
        v304 = v297;
        *v154 = 136446466;
        v155 = sub_1C5CAF1A0();
        OUTLINED_FUNCTION_260(v155, v156);
        OUTLINED_FUNCTION_113();

        OUTLINED_FUNCTION_331();
        v157 = sub_1C5CAF1A0();

        v158 = OUTLINED_FUNCTION_110_0();
        sub_1C5C6AB10(v158, v159, v160);
        OUTLINED_FUNCTION_114();

        *(v154 + 14) = v157;
        OUTLINED_FUNCTION_194();
        _os_log_impl(v161, v162, v163, v164, v154, 0x16u);
        OUTLINED_FUNCTION_179();
        swift_arrayDestroy();
        v165 = OUTLINED_FUNCTION_31_0();
        MEMORY[0x1C6956920](v165);
        v166 = OUTLINED_FUNCTION_37();
        MEMORY[0x1C6956920](v166);
      }

      v167 = v298;
      v168 = v300;
      sub_1C5CACA28(v27, v310);
      if (v168)
      {

        OUTLINED_FUNCTION_276();
        v169 = v168;
        v170 = sub_1C60162B0();
        sub_1C6016F30();
        OUTLINED_FUNCTION_338();

        v171 = OUTLINED_FUNCTION_162();
        if (os_log_type_enabled(v171, v172))
        {
          OUTLINED_FUNCTION_123();
          v173 = v167;
          v174 = swift_slowAlloc();
          OUTLINED_FUNCTION_72();
          v304 = swift_slowAlloc();
          *v174 = 136446466;
          v175 = sub_1C5CAF1A0();
          OUTLINED_FUNCTION_260(v175, v176);
          OUTLINED_FUNCTION_118();

          *(v174 + 4) = v29;
          *(v174 + 12) = 2082;
          swift_getErrorValue();
          v177 = sub_1C6017940();
          OUTLINED_FUNCTION_260(v177, v178);
          OUTLINED_FUNCTION_118();

          *(v174 + 14) = v29;
          OUTLINED_FUNCTION_194();
          _os_log_impl(v179, v180, v181, v182, v174, 0x16u);
          swift_arrayDestroy();
          v183 = OUTLINED_FUNCTION_37();
          MEMORY[0x1C6956920](v183);
          v167 = v173;
          OUTLINED_FUNCTION_55();
          MEMORY[0x1C6956920]();
        }

        v184 = v294;
        swift_willThrow();

        swift_unknownObjectRelease();
        return;
      }

      v300 = 0;
      v4 = v310[0];
      v290 = v310[1];
      v291 = v310[2];
      v302 = v310[3];
      v297 = v311;
      OUTLINED_FUNCTION_276();

      sub_1C5CB5698(v310, &v304);
      v214 = sub_1C60162B0();
      v215 = sub_1C6016F30();
      sub_1C5CB5A3C(v29);

      sub_1C5CB56D0(v310);
      if (os_log_type_enabled(v214, v215))
      {
        OUTLINED_FUNCTION_64_0();
        v216 = swift_slowAlloc();
        v296 = v4;
        v217 = v216;
        OUTLINED_FUNCTION_112_0();
        v321 = swift_slowAlloc();
        *v217 = 136446722;
        v218 = sub_1C5CAF1A0();
        sub_1C5C6AB10(v218, v219, &v321);
        OUTLINED_FUNCTION_118();

        *(v217 + 4) = v29;
        *(v217 + 12) = 2082;
        sub_1C5CAF1A0();
        OUTLINED_FUNCTION_99_0();

        v220 = OUTLINED_FUNCTION_159();
        sub_1C5C6AB10(v220, v221, v222);
        OUTLINED_FUNCTION_98();

        *(v217 + 14) = v319;
        *(v217 + 22) = 2082;
        v223 = sub_1C5CB5698(v310, &v304);
        sub_1C5CAE9DC(v223);
        OUTLINED_FUNCTION_99_0();
        sub_1C5CB56D0(v310);
        v224 = OUTLINED_FUNCTION_159();
        sub_1C5C6AB10(v224, v225, v226);
        OUTLINED_FUNCTION_98();

        *(v217 + 24) = v310;
        _os_log_impl(&dword_1C5C61000, v214, v215, "[XSQ:Content:Library] existingContent(in:) | converting library ULID to entity content [] \nsyncIDContent=%{public}s\nentityContent=%{public}s\nexistingContent=%{public}s", v217, 0x20u);
        swift_arrayDestroy();
        v227 = OUTLINED_FUNCTION_37();
        MEMORY[0x1C6956920](v227);
        v4 = v296;
        OUTLINED_FUNCTION_55();
        MEMORY[0x1C6956920]();
      }

      else
      {
      }

      swift_unknownObjectRelease();

      goto LABEL_110;
    case 5:
      v64 = objc_allocWithZone(MEMORY[0x1E6970570]);
      v65 = [v64 initWithLibrary_];
      sub_1C5CAB570();
      if (!v66)
      {
        goto LABEL_134;
      }

      v67 = v66;
      v68 = sub_1C5CAEB08(v66);

      if (!v68)
      {
        sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
        sub_1C6016940();
        OUTLINED_FUNCTION_12_0(54);
        sub_1C6017540();

        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_163(v117);
        sub_1C5CAF1A0();
        OUTLINED_FUNCTION_212();

        sub_1C6016880();
        _s3__C4CodeOMa_4(0);
        OUTLINED_FUNCTION_2_3();
        sub_1C5CB8318(v118, v119, &unk_1C6035604);
        OUTLINED_FUNCTION_225();
        OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_164();
        sub_1C6017280();
        OUTLINED_FUNCTION_54();

        swift_willThrow();

        return;
      }

      v69 = [v68 modelKind];
      if (!v69 || (v70 = sub_1C5CAEC78(v69), (v71 & 1) != 0))
      {
        v302 = sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
        sub_1C6016940();
        OUTLINED_FUNCTION_291();
        OUTLINED_FUNCTION_12_0(52);
        sub_1C6017540();

        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_163(v72);
        sub_1C5CAF1A0();
        OUTLINED_FUNCTION_212();

        v73 = OUTLINED_FUNCTION_41();
        MEMORY[0x1C69534E0](v73);
        v74 = [v68 description];
        sub_1C6016940();
        v76 = v75;

        v77 = OUTLINED_FUNCTION_258();
        MEMORY[0x1C69534E0](v77, v76);

        sub_1C6016880();
        _s3__C4CodeOMa_4(0);
        OUTLINED_FUNCTION_2_3();
        v289 = sub_1C5CB8318(v78, v79, &unk_1C6035604);
        OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_164();
        sub_1C6017280();
        OUTLINED_FUNCTION_54();

        swift_willThrow();

        return;
      }

      v185 = v70;

      v25 = 0;
      v22 = 0;
      v3 = v185;
      v23 = 5;
LABEL_103:
      v24 = v299;
      goto LABEL_104;
    default:
      if (([v302 hasSongs] & 1) == 0)
      {
        sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
        sub_1C6016940();
        OUTLINED_FUNCTION_296();
        OUTLINED_FUNCTION_12_0(50);
        sub_1C6017540();

        OUTLINED_FUNCTION_11();
        v103 = v102 + 24;
        goto LABEL_58;
      }

      v22 = v5;
      v23 = 0;
LABEL_4:
      v24 = v299;
      v25 = v6;
      goto LABEL_104;
  }
}

unint64_t sub_1C5CAE9DC(uint64_t a1)
{
  v2 = *(v1 + 32);
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      sub_1C6017540();

      OUTLINED_FUNCTION_89();
      v13 = 0xD000000000000012;
      v3 = OUTLINED_FUNCTION_147();
      MEMORY[0x1C69534E0](v3);
      v4 = OUTLINED_FUNCTION_246();
    }

    else
    {
      OUTLINED_FUNCTION_33();
      v13 = v8;
      v9 = OUTLINED_FUNCTION_147();
      v12 = sub_1C5CAF86C(v9, v10, v11);
      MEMORY[0x1C69534E0](v12);

      v4 = OUTLINED_FUNCTION_84();
    }

    MEMORY[0x1C69534E0](v4);
    return v13;
  }

  else
  {
    v5 = sub_1C5CAF1A0();
    MEMORY[0x1C69534E0](v5);

    v6 = OUTLINED_FUNCTION_84();
    MEMORY[0x1C69534E0](v6);
    return 0x7972617262696C2ELL;
  }
}

void *sub_1C5CAEB08(void *a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_3_1();
  v4 = OUTLINED_FUNCTION_195();
  sub_1C5C6EFFC(v4, v5, v6, v7);
  OUTLINED_FUNCTION_178();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C60311F0;
  v9 = objc_allocWithZone(type metadata accessor for LibraryObjectQuery());
  v10 = a1;
  *(v8 + 32) = sub_1C5CAF9CC();
  OUTLINED_FUNCTION_254();
  v11 = sub_1C6016AF0();
  v12 = [v11 objectEnumerator];

  [v2 updateTokensForResults_];
  OUTLINED_FUNCTION_254();
  v13 = sub_1C6016AF0();
  v14 = [v13 objectEnumerator];

  v15 = OUTLINED_FUNCTION_175();
  [v15 v16];

  if (sub_1C5C6AA20())
  {
    v17 = (v8 & 0xC000000000000001);
    sub_1C5C8CEE0();
    if ((v8 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1C6954040](0, v8);
    }

    else
    {
      v18 = *(v8 + 32);
    }

    OUTLINED_FUNCTION_73();

    v19 = *&v17[OBJC_IVAR____TtC17MediaPlaybackCore18LibraryObjectQuery_outputIdentifiers];
    v20 = v19;
  }

  else
  {

    return 0;
  }

  return v19;
}

uint64_t sub_1C5CAEC78(void *a1)
{
  v3 = [a1 identityKind];
  sub_1C5C64D74(0, &qword_1EC1A9FD0, 0x1E6970778);
  swift_getObjCClassFromMetadata();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_202();
  sub_1C5C64D74(0, &unk_1EC1A8C90, 0x1E69706A0);
  OUTLINED_FUNCTION_303();
  v6 = sub_1C60172D0();

  if (v6)
  {

    return 1;
  }

  else
  {
    sub_1C5C64D74(0, &qword_1EC1A8BF0, 0x1E6970638);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = v1;
    v10 = OUTLINED_FUNCTION_202();
    v11 = OUTLINED_FUNCTION_343(v10);

    if (v11)
    {

      return 2;
    }

    else
    {
      sub_1C5C64D74(0, &qword_1EC1A9EE8, 0x1E6970648);
      v12 = swift_getObjCClassFromMetadata();
      v13 = v1;
      v14 = OUTLINED_FUNCTION_202();
      v15 = OUTLINED_FUNCTION_343(v14);

      if (v15)
      {

        return 3;
      }

      else
      {
        sub_1C5C64D74(0, &unk_1EC1A9FE0, 0x1E6970680);
        v16 = swift_getObjCClassFromMetadata();
        v17 = v1;
        v18 = OUTLINED_FUNCTION_202();
        v19 = OUTLINED_FUNCTION_343(v18);

        if (v19)
        {

          return 4;
        }

        else
        {
          sub_1C5C64D74(0, &qword_1EC1A8B78, 0x1E6970730);
          v20 = [swift_getObjCClassFromMetadata() identityKind];
          v21 = OUTLINED_FUNCTION_343(v20);

          if (v21)
          {
            return 5;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }
}

id sub_1C5CAEE98(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v6 = *(v3 - 8);
    MEMORY[0x1EEE9AC00](v5);
    v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_1C6017850();
    (*(v6 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1C6016900();

  v11 = [swift_getObjCClassFromMetadata() predicateWithValue:v9 forProperty:v10];
  swift_unknownObjectRelease();

  return v11;
}

void sub_1C5CAF010(void *a1)
{
  OUTLINED_FUNCTION_109();
  v3 = sub_1C6016900();
  v4 = OUTLINED_FUNCTION_319();
  [v4 v5];

  sub_1C5C64D74(0, &qword_1EC1A9FD0, 0x1E6970778);
  v6 = [swift_getObjCClassFromMetadata() identityKind];
  v7 = OUTLINED_FUNCTION_87_0();
  [v7 v8];

  switch([a1 groupingType])
  {
    case 1uLL:
      v9 = &qword_1EC1A8BF0;
      v10 = 0x1E6970638;
      goto LABEL_6;
    case 2uLL:
    case 3uLL:
      v9 = &qword_1EC1A9EE8;
      v10 = 0x1E6970648;
      goto LABEL_6;
    case 4uLL:
      v9 = &unk_1EC1A9FD8;
      v10 = 0x1E6970658;
      goto LABEL_6;
    case 5uLL:
      v9 = &unk_1EC1A9FE0;
      v10 = 0x1E6970680;
LABEL_6:
      sub_1C5C64D74(0, v9, v10);
      v11 = [swift_getObjCClassFromMetadata() identityKind];
      [v1 setSectionKind_];

      break;
    default:
      return;
  }
}

uint64_t sub_1C5CAF1A0()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17) | ((*(v0 + 21) | (*(v0 + 23) << 16)) << 32);
  v5 = *(v0 + 24);
  switch(*(v0 + 32))
  {
    case 1:
      v13 = v3 | (v4 << 8);

      sub_1C6017540();
      OUTLINED_FUNCTION_242();
      MEMORY[0x1C69534E0](0xD000000000000014, 0x80000001C6045CD0);
      if (v1)
      {
        v14 = MEMORY[0x1E69E6158];
      }

      else
      {
        v2 = 0;
        OUTLINED_FUNCTION_306();
      }

      OUTLINED_FUNCTION_66_0(v14, v2, v1, v35, v36);
      OUTLINED_FUNCTION_15_2();
      OUTLINED_FUNCTION_337(v25, v26, sub_1C5C6EFFC, v27, v34);
      OUTLINED_FUNCTION_117_0();
      v28 = sub_1C5CAF5E0(v13);
      MEMORY[0x1C69534E0](v28);

      MEMORY[0x1C69534E0](0x69746E656469202CLL, 0xEE00203A72656966);
      goto LABEL_20;
    case 2:

      sub_1C6017540();
      OUTLINED_FUNCTION_242();
      MEMORY[0x1C69534E0](0xD00000000000001ALL, 0x80000001C6045CB0);
      if (v1)
      {
        v10 = MEMORY[0x1E69E6158];
      }

      else
      {
        v2 = 0;
        OUTLINED_FUNCTION_306();
      }

      OUTLINED_FUNCTION_66_0(v10, v2, v1, v35, v36);
      OUTLINED_FUNCTION_15_2();
      OUTLINED_FUNCTION_337(v22, v23, sub_1C5C6EFFC, v24, v33);
      MEMORY[0x1C69534E0](0x746E656469202C22, 0xEF203A7265696669);
LABEL_20:
      v29 = sub_1C60177D0();
      MEMORY[0x1C69534E0](v29);

      goto LABEL_21;
    case 3:
      v31 = 0x6E7953697269732ELL;
      v11 = OUTLINED_FUNCTION_147();
      MEMORY[0x1C69534E0](v11);
      v7 = OUTLINED_FUNCTION_246();
      goto LABEL_8;
    case 4:
      OUTLINED_FUNCTION_151();
      sub_1C6017540();
      OUTLINED_FUNCTION_242();
      MEMORY[0x1C69534E0](0x22222864696C752ELL, 0xE800000000000000);
      v8 = OUTLINED_FUNCTION_147();
      MEMORY[0x1C69534E0](v8);
      MEMORY[0x1C69534E0](0x65707974202C2222, 0xEA0000000000203ALL);
      if (v5)
      {
        goto LABEL_12;
      }

      v9 = v3 | (v4 << 8);
      goto LABEL_14;
    case 5:
      OUTLINED_FUNCTION_151();
      sub_1C6017540();
      OUTLINED_FUNCTION_242();
      OUTLINED_FUNCTION_109();
      MEMORY[0x1C69534E0](0xD000000000000011);
      v15 = sub_1C60177D0();
      MEMORY[0x1C69534E0](v15);

      OUTLINED_FUNCTION_117_0();
      if (v3)
      {
LABEL_12:
        OUTLINED_FUNCTION_306();
      }

      else
      {
        v9 = v1;
LABEL_14:
        v16 = sub_1C5CAF5E0(v9);
        v18 = MEMORY[0x1E69E6158];
      }

      OUTLINED_FUNCTION_66_0(v18, v16, v17, v35, v36);
      OUTLINED_FUNCTION_15_2();
      OUTLINED_FUNCTION_337(v19, v20, sub_1C5C6EFFC, v21, v32);
LABEL_21:
      v30 = OUTLINED_FUNCTION_84();
      MEMORY[0x1C69534E0](v30);
      return v37;
    default:
      v31 = 0x707974286C6C612ELL;
      v6 = sub_1C5CAF5E0(v2);
      MEMORY[0x1C69534E0](v6);

      v7 = OUTLINED_FUNCTION_84();
LABEL_8:
      MEMORY[0x1C69534E0](v7);
      return v31;
  }
}

uint64_t sub_1C5CAF5E0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_227(0x6E75u);
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      return 1735290739;
    case 2:
      return 0x6D75626C61;
    case 3:
      return 0x747369747261;
    case 4:
      v4 = 1919837543;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 5:
      return 0x7473696C79616C70;
    case 6:
    case 15:
      return OUTLINED_FUNCTION_215() & 0xFFFFFFFFFFFFLL | 0x5374000000000000;
    case 7:
      return OUTLINED_FUNCTION_215() & 0xFFFFFFFFFFFFLL | 0x4574000000000000;
    case 8:
      return OUTLINED_FUNCTION_215() & 0xFFFFFFFFFFFFLL | 0x5074000000000000;
    case 9:
      v3 = 0x53636973756DLL;
      goto LABEL_10;
    case 10:
      return 0x6F6F426F69647561;
    case 11:
      v4 = 1769369453;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 12:
      return 0x776F68537674;
    case 13:
      return 0x7045776F68537674;
    case 14:
      return 0x646956636973756DLL;
    case 16:
      v3 = 0x536F69646172;
LABEL_10:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6174000000000000;
      break;
    case 17:
      result = 0x6E6F6974617473;
      break;
    case 18:
      result = 0x636973756DLL;
      break;
    case 19:
      OUTLINED_FUNCTION_109();
      result = 0xD000000000000017;
      break;
    case 20:
      result = 1937204590;
      break;
    default:
      OUTLINED_FUNCTION_332();

      OUTLINED_FUNCTION_11();
      v8 = v5;
      v6 = sub_1C60177D0();
      MEMORY[0x1C69534E0](v6);

      v7 = OUTLINED_FUNCTION_84();
      MEMORY[0x1C69534E0](v7);
      result = v8;
      break;
  }

  return result;
}

unint64_t sub_1C5CAF86C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
    OUTLINED_FUNCTION_151();
    sub_1C6017540();

    OUTLINED_FUNCTION_89();
    MEMORY[0x1C69534E0](a1, a2);
    v10 = OUTLINED_FUNCTION_246();
    MEMORY[0x1C69534E0](v10);
    return 0xD000000000000011;
  }

  else
  {
    OUTLINED_FUNCTION_151();
    sub_1C6017540();
    OUTLINED_FUNCTION_242();
    MEMORY[0x1C69534E0](0x2844496D6164612ELL, 0xE800000000000000);
    v6 = sub_1C60177D0();
    MEMORY[0x1C69534E0](v6);

    OUTLINED_FUNCTION_117_0();
    if (a3)
    {
      OUTLINED_FUNCTION_306();
    }

    else
    {
      v7 = sub_1C5CAF5E0(a2);
      v9 = MEMORY[0x1E69E6158];
    }

    OUTLINED_FUNCTION_66_0(v9, v7, v8, v17, v18);
    OUTLINED_FUNCTION_15_2();
    OUTLINED_FUNCTION_337(v12, v13, sub_1C5C6EFFC, v14, v16);
    v15 = OUTLINED_FUNCTION_84();
    MEMORY[0x1C69534E0](v15);
    return v19;
  }
}

id sub_1C5CAF9CC()
{
  OUTLINED_FUNCTION_206();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC17MediaPlaybackCore18LibraryObjectQuery_outputIdentifiers] = 0;
  *&v1[OBJC_IVAR____TtC17MediaPlaybackCore18LibraryObjectQuery_parent] = 0;
  v3 = &v1[OBJC_IVAR____TtC17MediaPlaybackCore18LibraryObjectQuery_token];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR____TtC17MediaPlaybackCore18LibraryObjectQuery_inputIdentifiers] = v0;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1C5CAFAE0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC17MediaPlaybackCore18LibraryObjectQuery_inputIdentifiers);
  *(v1 + OBJC_IVAR____TtC17MediaPlaybackCore18LibraryObjectQuery_inputIdentifiers) = a1;
  return MEMORY[0x1EEE66BB8](a1, v2);
}

void sub_1C5CAFBB0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC17MediaPlaybackCore18LibraryObjectQuery_outputIdentifiers);
  *(v1 + OBJC_IVAR____TtC17MediaPlaybackCore18LibraryObjectQuery_outputIdentifiers) = a1;
  v2 = a1;
}

uint64_t sub_1C5CAFCB0(uint64_t result, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC17MediaPlaybackCore18LibraryObjectQuery_token);
  *v3 = result;
  v3[1] = a2;
  return result;
}

id sub_1C5CAFD38()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C5CAFDD0(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    v5 = sub_1C6016900();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithKey:v5 ascending:a3 & 1];

  return v6;
}

void sub_1C5CAFE3C()
{
  OUTLINED_FUNCTION_62_0();
  nullsub_1();
  *v0 = v1;
}

void sub_1C5CAFE64(uint64_t a1@<X8>)
{
  sub_1C5C6F04C();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t sub_1C5CAFE9C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1C69538A0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C5CAFEF0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C6016DD0();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_1C5CB0044(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1C60152A0();
}

uint64_t sub_1C5CB00B0(uint64_t a1)
{
  v2 = sub_1C5CB8318(&unk_1EC1A8E60, type metadata accessor for AVError, &unk_1C60346C0);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C5CB011C(uint64_t a1)
{
  v2 = sub_1C5CB8318(&unk_1EC1A8E60, type metadata accessor for AVError, &unk_1C60346C0);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1C5CB0188(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1A8E50, type metadata accessor for AVError, &unk_1C6035848);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1C5CB01F4@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_0_23();
  *a1 = result;
  return result;
}

uint64_t sub_1C5CB0228(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_27_1(a1);
  result = sub_1C5D2AB50(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1C5CB0250(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_27_1(a1);
  result = sub_1C5D8202C(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1C5CB02BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5CAFF48();
  *a1 = result;
  return result;
}

uint64_t sub_1C5CB02F8(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1AA2C0, type metadata accessor for MPCAssistantXSchemeURLError, &unk_1C60353FC);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1C5CB0364(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1AA2C0, type metadata accessor for MPCAssistantXSchemeURLError, &unk_1C60353FC);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1C5CB03D0(void *a1, uint64_t a2)
{
  v4 = sub_1C5CB8318(&qword_1EC1AA2C0, type metadata accessor for MPCAssistantXSchemeURLError, &unk_1C60353FC);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1C5CB0460(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5CB8318(&qword_1EC1AA2C0, type metadata accessor for MPCAssistantXSchemeURLError, &unk_1C60353FC);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1C5CB04F0(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1A9C60, type metadata accessor for MPCError, &unk_1C6031EC0);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1C5CB055C(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1A9C60, type metadata accessor for MPCError, &unk_1C6031EC0);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1C5CB05C8(void *a1, uint64_t a2)
{
  v4 = sub_1C5CB8318(&qword_1EC1A9C60, type metadata accessor for MPCError, &unk_1C6031EC0);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1C5CB0658(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5CB8318(&qword_1EC1A9C60, type metadata accessor for MPCError, &unk_1C6031EC0);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1C5CB06E8(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1A8E50, type metadata accessor for AVError, &unk_1C6035848);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1C5CB0754(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1A8E50, type metadata accessor for AVError, &unk_1C6035848);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1C5CB07C0(void *a1, uint64_t a2)
{
  v4 = sub_1C5CB8318(&qword_1EC1A8E50, type metadata accessor for AVError, &unk_1C6035848);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1C5CB0850(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5CB8318(&qword_1EC1A8E50, type metadata accessor for AVError, &unk_1C6035848);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1C5CB08E0(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1A9BC0, type metadata accessor for MPCPodcastsBehaviorError, &unk_1C60317A0);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1C5CB094C(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1A9BC0, type metadata accessor for MPCPodcastsBehaviorError, &unk_1C60317A0);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1C5CB09B8(void *a1, uint64_t a2)
{
  v4 = sub_1C5CB8318(&qword_1EC1A9BC0, type metadata accessor for MPCPodcastsBehaviorError, &unk_1C60317A0);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1C5CB0A48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5CB8318(&qword_1EC1A9BC0, type metadata accessor for MPCPodcastsBehaviorError, &unk_1C60317A0);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1C5CB0AC4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1C60152A0();
}

uint64_t sub_1C5CB0B44(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1AA140, type metadata accessor for MPCEnginePlayerError, &unk_1C6033E78);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1C5CB0BB0(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1AA140, type metadata accessor for MPCEnginePlayerError, &unk_1C6033E78);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1C5CB0C1C(void *a1, uint64_t a2)
{
  v4 = sub_1C5CB8318(&qword_1EC1AA140, type metadata accessor for MPCEnginePlayerError, &unk_1C6033E78);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1C5CB0CAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5CB8318(&qword_1EC1AA140, type metadata accessor for MPCEnginePlayerError, &unk_1C6033E78);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1C5CB0D3C(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1AA1E8, type metadata accessor for MPCExternalContentError, &unk_1C60347D4);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1C5CB0DA8(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1AA1E8, type metadata accessor for MPCExternalContentError, &unk_1C60347D4);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1C5CB0E14(void *a1, uint64_t a2)
{
  v4 = sub_1C5CB8318(&qword_1EC1AA1E8, type metadata accessor for MPCExternalContentError, &unk_1C60347D4);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1C5CB0EA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5CB8318(&qword_1EC1AA1E8, type metadata accessor for MPCExternalContentError, &unk_1C60347D4);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1C5CB0F34(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1A9CA8, type metadata accessor for MPCPlaybackEngineInternalError, &unk_1C60320C0);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1C5CB0FA0(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1A9CA8, type metadata accessor for MPCPlaybackEngineInternalError, &unk_1C60320C0);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1C5CB100C(void *a1, uint64_t a2)
{
  v4 = sub_1C5CB8318(&qword_1EC1A9CA8, type metadata accessor for MPCPlaybackEngineInternalError, &unk_1C60320C0);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1C5CB109C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5CB8318(&qword_1EC1A9CA8, type metadata accessor for MPCPlaybackEngineInternalError, &unk_1C60320C0);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1C5CB112C(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1A9CF0, type metadata accessor for MPCPlaybackSessionManagerError, &unk_1C60323C0);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1C5CB1198(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1A9CF0, type metadata accessor for MPCPlaybackSessionManagerError, &unk_1C60323C0);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1C5CB1204(void *a1, uint64_t a2)
{
  v4 = sub_1C5CB8318(&qword_1EC1A9CF0, type metadata accessor for MPCPlaybackSessionManagerError, &unk_1C60323C0);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1C5CB1294(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5CB8318(&qword_1EC1A9CF0, type metadata accessor for MPCPlaybackSessionManagerError, &unk_1C60323C0);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1C5CB1324(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1A9D38, type metadata accessor for MPCSuntoryError, &unk_1C60325C0);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1C5CB1390(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1A9D38, type metadata accessor for MPCSuntoryError, &unk_1C60325C0);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1C5CB13FC(void *a1, uint64_t a2)
{
  v4 = sub_1C5CB8318(&qword_1EC1A9D38, type metadata accessor for MPCSuntoryError, &unk_1C60325C0);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1C5CB148C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5CB8318(&qword_1EC1A9D38, type metadata accessor for MPCSuntoryError, &unk_1C60325C0);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1C5CB1508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C60179F0();
  sub_1C60168C0();
  return sub_1C6017A20();
}

uint64_t sub_1C5CB1568(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1AA2C8, type metadata accessor for MPCAssistantXSchemeURLError, &unk_1C6035550);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C5CB15D4(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1AA2C8, type metadata accessor for MPCAssistantXSchemeURLError, &unk_1C6035550);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1C5CB1640(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1AA2C0, type metadata accessor for MPCAssistantXSchemeURLError, &unk_1C60353FC);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1C5CB16AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5CB8318(&qword_1EC1AA2C0, type metadata accessor for MPCAssistantXSchemeURLError, &unk_1C60353FC);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1C5CB1730(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1A9C68, type metadata accessor for MPCError, &unk_1C6032014);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C5CB179C(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1A9C68, type metadata accessor for MPCError, &unk_1C6032014);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1C5CB1808(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1A9C60, type metadata accessor for MPCError, &unk_1C6031EC0);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1C5CB1874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5CB8318(&qword_1EC1A9C60, type metadata accessor for MPCError, &unk_1C6031EC0);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1C5CB18F8(uint64_t a1)
{
  sub_1C5CB8318(&qword_1EC1AA428, type metadata accessor for MPCPlaybackEngineEventType, &unk_1C6033974);
  sub_1C5CB8318(&unk_1EC1AA430, type metadata accessor for MPCPlaybackEngineEventType, &unk_1C603391C);

  return sub_1C6017710();
}

uint64_t sub_1C5CB19B4()
{
  v1 = OUTLINED_FUNCTION_62_0();
  result = sub_1C5CE36C8(v1, v2);
  *v0 = result;
  v0[1] = v4;
  return result;
}

uint64_t sub_1C5CB19DC(uint64_t a1)
{
  sub_1C5CB8318(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey, &unk_1C6032C48);
  sub_1C5CB8318(&qword_1EC1A8AD0, type metadata accessor for MPCPlaybackEngineEventPayloadKey, &unk_1C60322B8);

  return sub_1C6017710();
}

uint64_t sub_1C5CB1A98(uint64_t a1)
{
  sub_1C5CB8318(&qword_1EC1AA3C8, type metadata accessor for Name, &unk_1C6034230);
  sub_1C5CB8318(&qword_1EC1AA3D0, type metadata accessor for Name, &unk_1C60341D0);

  return sub_1C6017710();
}

uint64_t sub_1C5CB1B54(uint64_t a1)
{
  sub_1C5CB8318(&unk_1ED7DCD50, type metadata accessor for MPCPlaybackEngineEventItemMetadataKey, &unk_1C6035A58);
  sub_1C5CB8318(&qword_1EC1AA420, type metadata accessor for MPCPlaybackEngineEventItemMetadataKey, &unk_1C6033A5C);

  return sub_1C6017710();
}

uint64_t sub_1C5CB1C10(uint64_t a1)
{
  sub_1C5CB8318(&unk_1ED7DBB50, type metadata accessor for MPCPlaybackEngineEventAccountMetadataKey, &unk_1C6035640);
  sub_1C5CB8318(&unk_1EC1AA350, type metadata accessor for MPCPlaybackEngineEventAccountMetadataKey, &unk_1C60352F4);

  return sub_1C6017710();
}

uint64_t sub_1C5CB1CCC(uint64_t a1)
{
  sub_1C5CB8318(qword_1EC1A9300, type metadata accessor for MPCPlaybackEngineEventQueueReportingMetadataKey, &unk_1C6035704);
  sub_1C5CB8318(&qword_1EC1AA390, type metadata accessor for MPCPlaybackEngineEventQueueReportingMetadataKey, &unk_1C6034DF0);

  return sub_1C6017710();
}

uint64_t sub_1C5CB1D88(uint64_t a1)
{
  sub_1C5CB8318(&unk_1EC1AA840, type metadata accessor for MPCPlaybackEngineEventDeviceMetadataKey, &unk_1C6035680);
  sub_1C5CB8318(&qword_1EC1AA360, type metadata accessor for MPCPlaybackEngineEventDeviceMetadataKey, &unk_1C60351F4);

  return sub_1C6017710();
}

uint64_t sub_1C5CB1E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5CB8318(&qword_1EC1A8E50, type metadata accessor for AVError, &unk_1C6035848);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1C5CB1EC8(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1A9BC8, type metadata accessor for MPCPodcastsBehaviorError, &unk_1C60318F4);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C5CB1F34(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1A9BC8, type metadata accessor for MPCPodcastsBehaviorError, &unk_1C60318F4);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1C5CB1FA0(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1A9BC0, type metadata accessor for MPCPodcastsBehaviorError, &unk_1C60317A0);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1C5CB200C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5CB8318(&qword_1EC1A9BC0, type metadata accessor for MPCPodcastsBehaviorError, &unk_1C60317A0);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1C5CB2090(uint64_t a1)
{
  sub_1C5CB8318(&qword_1EC1A8A90, type metadata accessor for MPCPlaybackEngineEventItemAssetLoadInfoKey, &unk_1C60359D8);
  sub_1C5CB8318(&unk_1EC1AA400, type metadata accessor for MPCPlaybackEngineEventItemAssetLoadInfoKey, &unk_1C6033C5C);

  return sub_1C6017710();
}

uint64_t sub_1C5CB214C(uint64_t a1)
{
  sub_1C5CB8318(&qword_1EC1A8A58, type metadata accessor for MPCPlaybackEngineEventItemAssetTypeSelectionMetadataKey, &unk_1C6035A18);
  sub_1C5CB8318(&unk_1EC1AA410, type metadata accessor for MPCPlaybackEngineEventItemAssetTypeSelectionMetadataKey, &unk_1C6033B5C);

  return sub_1C6017710();
}

uint64_t sub_1C5CB2208(uint64_t a1)
{
  sub_1C5CB8318(&qword_1EC1AA3E8, type metadata accessor for FileAttributeKey, &unk_1C6035994);
  sub_1C5CB8318(&unk_1EC1AA3F0, type metadata accessor for FileAttributeKey, &unk_1C6033D64);

  return sub_1C6017710();
}

uint64_t sub_1C5CB22C4(uint64_t a1)
{
  sub_1C5CB8318(&qword_1EC1AA368, type metadata accessor for AVMetadataKey, &unk_1C603506C);
  sub_1C5CB8318(&qword_1EC1AA370, type metadata accessor for AVMetadataKey, &unk_1C603500C);

  return sub_1C6017710();
}

uint64_t sub_1C5CB2380(uint64_t a1)
{
  sub_1C5CB8318(&qword_1EC1AA378, type metadata accessor for AVMetadataExtraAttributeKey, &unk_1C60356C0);
  sub_1C5CB8318(&unk_1EC1AA380, type metadata accessor for AVMetadataExtraAttributeKey, &unk_1C6034EF8);

  return sub_1C6017710();
}

uint64_t sub_1C5CB243C(uint64_t a1)
{
  sub_1C5CB8318(&qword_1EC1A9E18, type metadata accessor for NSKeyValueChangeKey, &unk_1C6032D3C);
  sub_1C5CB8318(&qword_1EC1A9E20, type metadata accessor for NSKeyValueChangeKey, &unk_1C603168C);

  return sub_1C6017710();
}

uint64_t sub_1C5CB24F8(uint64_t a1)
{
  sub_1C5CB8318(&qword_1EC1A9E08, type metadata accessor for MPPlaybackSessionType, &unk_1C60319F0);
  sub_1C5CB8318(&qword_1EC1A9E10, type metadata accessor for MPPlaybackSessionType, &unk_1C6031998);

  return sub_1C6017710();
}

uint64_t sub_1C5CB25B4(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1AA148, type metadata accessor for MPCEnginePlayerError, &unk_1C6033FCC);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C5CB2620(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1AA148, type metadata accessor for MPCEnginePlayerError, &unk_1C6033FCC);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1C5CB268C(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1AA140, type metadata accessor for MPCEnginePlayerError, &unk_1C6033E78);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1C5CB26F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5CB8318(&qword_1EC1AA140, type metadata accessor for MPCEnginePlayerError, &unk_1C6033E78);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1C5CB277C(uint64_t a1)
{
  sub_1C5CB8318(&qword_1EC1A9DD8, type metadata accessor for Mode, &unk_1C6031DD0);
  sub_1C5CB8318(&qword_1EC1A9DE0, type metadata accessor for Mode, &unk_1C6031D78);

  return sub_1C6017710();
}

uint64_t sub_1C5CB2838(uint64_t a1)
{
  sub_1C5CB8318(&qword_1EC1AA3A8, type metadata accessor for WaitingReason, &unk_1C6034548);
  sub_1C5CB8318(&qword_1EC1AA3B0, type metadata accessor for WaitingReason, &unk_1C60344E8);

  return sub_1C6017710();
}

uint64_t sub_1C5CB29B0(uint64_t a1, uint64_t a2)
{
  sub_1C60179F0();
  OUTLINED_FUNCTION_252();
  swift_getWitnessTable();
  sub_1C60152B0();
  return sub_1C6017A20();
}

uint64_t sub_1C5CB2A10(uint64_t a1)
{
  sub_1C5CB8318(&qword_1EC1A9DF8, type metadata accessor for AVMediaCharacteristic, &unk_1C6031B48);
  sub_1C5CB8318(&qword_1EC1A9E00, type metadata accessor for AVMediaCharacteristic, &unk_1C6031AE8);

  return sub_1C6017710();
}

uint64_t sub_1C5CB2ACC(uint64_t a1)
{
  sub_1C5CB8318(&qword_1EC1AA3B8, type metadata accessor for RateDidChangeReason, &unk_1C6034388);
  sub_1C5CB8318(&qword_1EC1AA3C0, type metadata accessor for RateDidChangeReason, &unk_1C6034328);

  return sub_1C6017710();
}

uint64_t sub_1C5CB2B88(uint64_t a1)
{
  sub_1C5CB8318(&qword_1EC1A9DE8, type metadata accessor for Category, &unk_1C6031C90);
  sub_1C5CB8318(&qword_1EC1A9DF0, type metadata accessor for Category, &unk_1C6031C38);

  return sub_1C6017710();
}

uint64_t sub_1C5CB2C44(uint64_t a1)
{
  sub_1C5CB8318(&qword_1EC1A9DC8, type metadata accessor for MSVBackgroundTaskIdentifier, &unk_1C6032938);
  sub_1C5CB8318(&qword_1EC1A9DD0, type metadata accessor for MSVBackgroundTaskIdentifier, &unk_1C60328D8);
  return sub_1C6017710();
}

uint64_t sub_1C5CB2D00(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1AA1F0, type metadata accessor for MPCExternalContentError, &unk_1C6034928);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C5CB2D6C(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1AA1F0, type metadata accessor for MPCExternalContentError, &unk_1C6034928);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1C5CB2DD8(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1AA1E8, type metadata accessor for MPCExternalContentError, &unk_1C60347D4);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1C5CB2E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5CB8318(&qword_1EC1AA1E8, type metadata accessor for MPCExternalContentError, &unk_1C60347D4);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1C5CB2EC8(uint64_t a1)
{
  sub_1C5CB8318(&qword_1EC1AA3D8, type metadata accessor for Reason, &unk_1C60340D8);
  sub_1C5CB8318(&qword_1EC1AA3E0, type metadata accessor for Reason, &unk_1C6034078);

  return sub_1C6017710();
}

uint64_t sub_1C5CB2F84@<X0>(void *a2@<X8>)
{
  sub_1C6016900();
  result = OUTLINED_FUNCTION_347();
  *a2 = v2;
  return result;
}

uint64_t sub_1C5CB2FC4(uint64_t a1)
{
  sub_1C5CB8318(&qword_1EC1AA398, type metadata accessor for OpenExternalURLOptionsKey, &unk_1C60357C8);
  sub_1C5CB8318(&qword_1EC1AA3A0, type metadata accessor for OpenExternalURLOptionsKey, &unk_1C6034A1C);

  return sub_1C6017710();
}

uint64_t sub_1C5CB3080(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1A9CB0, type metadata accessor for MPCPlaybackEngineInternalError, &unk_1C6032214);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C5CB30EC(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1A9CB0, type metadata accessor for MPCPlaybackEngineInternalError, &unk_1C6032214);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1C5CB3158(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1A9CA8, type metadata accessor for MPCPlaybackEngineInternalError, &unk_1C60320C0);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1C5CB31C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5CB8318(&qword_1EC1A9CA8, type metadata accessor for MPCPlaybackEngineInternalError, &unk_1C60320C0);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1C5CB3248(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1A9CF8, type metadata accessor for MPCPlaybackSessionManagerError, &unk_1C6032514);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C5CB32B4(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1A9CF8, type metadata accessor for MPCPlaybackSessionManagerError, &unk_1C6032514);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1C5CB3320(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1A9CF0, type metadata accessor for MPCPlaybackSessionManagerError, &unk_1C60323C0);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1C5CB338C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5CB8318(&qword_1EC1A9CF0, type metadata accessor for MPCPlaybackSessionManagerError, &unk_1C60323C0);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1C5CB3410(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1A9D40, type metadata accessor for MPCSuntoryError, &unk_1C6032714);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C5CB347C(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1A9D40, type metadata accessor for MPCSuntoryError, &unk_1C6032714);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1C5CB34E8(uint64_t a1)
{
  v2 = sub_1C5CB8318(&qword_1EC1A9D38, type metadata accessor for MPCSuntoryError, &unk_1C60325C0);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1C5CB3554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5CB8318(&qword_1EC1A9D38, type metadata accessor for MPCSuntoryError, &unk_1C60325C0);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1C5CB3674(uint64_t a1)
{
  if (a1 < 16)
  {
    return 0;
  }

  sub_1C6017540();
  return 0;
}

uint64_t _s8_StorageCMa(uint64_t a1)
{
  result = qword_1EC1A9878;
  if (!qword_1EC1A9878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C5CB3710(uint64_t a1)
{
  result = sub_1C6014F20();
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

__n128 __swift_memcpy48_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1C5CB38FC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5CB391C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for JumpToTimeState.JumpToTimeInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for JumpToTimeState.JumpToTimeInfo(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C5CB3AD4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5CB3AF4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_1C5CB3F38()
{
  result = qword_1EC1A8E70;
  if (!qword_1EC1A8E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1A8E70);
  }

  return result;
}

void sub_1C5CB507C(uint64_t a1, void *a2)
{
  v3 = sub_1C6016AF0();

  [a2 setStoreIDs_];
}

uint64_t sub_1C5CB50F4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1C6016940();
    OUTLINED_FUNCTION_318();
  }

  return OUTLINED_FUNCTION_255();
}

uint64_t sub_1C5CB514C(void *a1)
{
  v1 = [a1 filterPredicates];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1C5C64D74(0, &qword_1EC1A9ED8, 0x1E6970608);
  sub_1C5CB59B4(&qword_1EC1A9EE0, &qword_1EC1A9ED8, 0x1E6970608);
  v3 = sub_1C6016D50();

  return v3;
}

uint64_t sub_1C5CB51E8(uint64_t a1, uint64_t a2)
{
  sub_1C6016940();
  sub_1C60169F0();
}

uint64_t sub_1C5CB523C(uint64_t a1, uint64_t a2)
{
  sub_1C6016940();
  sub_1C60179F0();
  sub_1C60169F0();
  v2 = sub_1C6017A20();

  return v2;
}

uint64_t sub_1C5CB52B0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C6016940();
  v4 = v3;
  if (v2 == sub_1C6016940() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C6017860();
  }

  return v7 & 1;
}

uint64_t sub_1C5CB5334(uint64_t a1, id *a2)
{
  v3 = sub_1C6016930();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C5CB53AC(uint64_t a1, id *a2)
{
  result = sub_1C6016920();
  *a2 = 0;
  return result;
}

uint64_t sub_1C5CB541C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C5CB54CC;
  v2 = OUTLINED_FUNCTION_252();

  return v3(v2);
}

uint64_t sub_1C5CB54CC()
{
  OUTLINED_FUNCTION_248();
  v1 = *v0;
  OUTLINED_FUNCTION_101();
  *v2 = v1;

  OUTLINED_FUNCTION_172();

  return v3();
}

unint64_t sub_1C5CB55D8()
{
  result = qword_1EC1A9E30;
  if (!qword_1EC1A9E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1A9E30);
  }

  return result;
}

void sub_1C5CB562C()
{
  if (!qword_1EC1A8D10)
  {
    v0 = sub_1C6016CC0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A8D10);
    }
  }
}

uint64_t sub_1C5CB5700(uint64_t a1)
{
  sub_1C5CB5B18(0, &qword_1ED7DCC20, &qword_1ED7DCC30, 0x1E69E58C0, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C5CB5788(uint64_t a1)
{
  if (!qword_1EC1A9E40)
  {
    sub_1C5C64D74(255, &unk_1EC1A9E48, 0x1E6970900);
    sub_1C5CB5808();
    v1 = sub_1C6016CC0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1A9E40);
    }
  }
}

unint64_t sub_1C5CB5808()
{
  result = qword_1ED7DCAE0;
  if (!qword_1ED7DCAE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED7DCAE0);
  }

  return result;
}

uint64_t sub_1C5CB586C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }

  return result;
}

uint64_t sub_1C5CB587C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  switch(a5 >> 6)
  {
    case 1:

      break;
    case 2:
      a1 = sub_1C5CB58D0(a1, a2, a3);
      break;
    case 3:
      return a1;
    default:
      a1 = sub_1C5CB58B4(a1, a2, a3, a4, a5);
      break;
  }

  return a1;
}

uint64_t sub_1C5CB58B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 1 <= 3)
  {
  }

  return result;
}

uint64_t sub_1C5CB58D0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }

  return result;
}

uint64_t sub_1C5CB58E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  switch(a5 >> 6)
  {
    case 1:

      break;
    case 2:
      result = sub_1C5CB586C(result, a2, a3);
      break;
    case 3:
      return result;
    default:
      result = sub_1C5CB5918(result, a2, a3, a4, a5);
      break;
  }

  return result;
}

uint64_t sub_1C5CB5918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 1 <= 3)
  {
  }

  return result;
}

unint64_t sub_1C5CB593C()
{
  result = qword_1EC1A9E58;
  if (!qword_1EC1A9E58)
  {
    sub_1C5C64D74(255, &unk_1EC1A8C90, 0x1E69706A0);
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC1A9E58);
  }

  return result;
}

uint64_t sub_1C5CB59B4(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C5C64D74(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C5CB5A94(uint64_t a1)
{
  if (!qword_1EC1A9EF0)
  {
    sub_1C5CB5B18(255, &qword_1EC1A9EF8, &qword_1ED7DCE70, 0x1E6970550, MEMORY[0x1E69E62F8]);
    v1 = sub_1C6017350();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1A9EF0);
    }
  }
}

void sub_1C5CB5B18(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1C5C64D74(255, a3, a4);
    v7 = OUTLINED_FUNCTION_120();
    v8 = a5(v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1C5CB5B7C()
{
  result = qword_1EC1A9F00;
  if (!qword_1EC1A9F00)
  {
    sub_1C5CB5B18(255, &qword_1EC1A9EF8, &qword_1ED7DCE70, 0x1E6970550, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1A9F00);
  }

  return result;
}

uint64_t block_copy_helper_110(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C5CB5C88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 0xF7u)
  {
    return sub_1C5CB58E0(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_1C5CB5C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 0xF7u)
  {
    return sub_1C5CB587C(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_1C5CB5CB0(uint64_t a1, uint64_t a2)
{
  sub_1C5CB5F2C(0, &unk_1ED7E01F0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5CB5D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_105();
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t sub_1C5CB5DC4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_1C6014F20() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1C5CAB438(v4, a1);
}

unint64_t sub_1C5CB5E54()
{
  result = qword_1ED7DCAA0;
  if (!qword_1ED7DCAA0)
  {
    sub_1C5C6EFFC(255, &qword_1ED7DCBC8, MEMORY[0x1E69E7508], MEMORY[0x1E69E6708]);
    sub_1C5CB5F2C(255, &qword_1ED7DCBD0, sub_1C5CB5F8C, MEMORY[0x1E69E6720]);
    sub_1C5CB6010(255);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &qword_1ED7DCAA0);
  }

  return result;
}

void sub_1C5CB5F2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_120();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1C5CB5F8C(uint64_t a1)
{
  if (!qword_1ED7DCBD8)
  {
    sub_1C5CB5B18(255, &qword_1ED7DCC20, &qword_1ED7DCC30, 0x1E69E58C0, MEMORY[0x1E69E6720]);
    v1 = sub_1C6017320();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED7DCBD8);
    }
  }
}

void sub_1C5CB6010(uint64_t a1)
{
  if (!qword_1ED7DCBB0)
  {
    sub_1C5C6EFFC(255, &unk_1ED7DCBB8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6708]);
    v1 = sub_1C6017350();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED7DCBB0);
    }
  }
}

uint64_t sub_1C5CB6098(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C5C8F8BC(result, a2);
  }

  return result;
}

unint64_t sub_1C5CB60AC()
{
  result = qword_1EC1A9FF0;
  if (!qword_1EC1A9FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1A9FF0);
  }

  return result;
}

unint64_t sub_1C5CB6188()
{
  result = qword_1EC1A8E78;
  if (!qword_1EC1A8E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1A8E78);
  }

  return result;
}

uint64_t objectdestroy_206Tm()
{
  sub_1C5CB587C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  OUTLINED_FUNCTION_107_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5CB6224(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5CB6244(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1C5CB642C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5CB644C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 96) = v3;
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C5CB67C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x1E && *(a1 + 33))
    {
      v2 = *a1 + 29;
    }

    else
    {
      v2 = ((*(a1 + 32) >> 1) & 0x1C | (*(a1 + 32) >> 6)) ^ 0x1F;
      if (v2 >= 0x1D)
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

uint64_t sub_1C5CB680C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1D)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 30;
    *(result + 8) = 0;
    if (a3 >= 0x1E)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1E)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_1C5CB689C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 33))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 5)
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

uint64_t sub_1C5CB68DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C5CB6950(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 17))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 16) & 0x7E | (*(a1 + 16) >> 7)) ^ 0x7F;
      if (v2 >= 0x7E)
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

uint64_t sub_1C5CB6998(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_1C5CB82B0(uint64_t a1, uint64_t a2)
{
  sub_1C6016940();
  sub_1C6016900();
  OUTLINED_FUNCTION_73();

  return v2;
}

uint64_t sub_1C5CB82E4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C6016940();
  MEMORY[0x1C6953550](v3);
  OUTLINED_FUNCTION_73();

  return v2;
}

uint64_t sub_1C5CB8318(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_14_4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  v5 = MEMORY[0x1E69E6720];

  sub_1C5CB5B18(0, a2, a3, a4, v5);
}

uint64_t OUTLINED_FUNCTION_20(uint64_t result)
{
  *(v1 + 312) = result;
  *v2 = 258;
  *(v2 + 2) = 34;
  return result;
}

unint64_t OUTLINED_FUNCTION_36()
{

  return sub_1C5C6AB10(0x6544206C61636F4CLL, 0xEC00000065636976, (v0 - 128));
}

uint64_t OUTLINED_FUNCTION_56(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_57(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_63()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_66_0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  a5 = a1;

  return DefaultStringInterpolation.appendInterpolation(describing:default:)(&a2, 7104878, 0xE300000000000000);
}

uint64_t OUTLINED_FUNCTION_67_0(uint64_t a1)
{
  *(v1 + 248) = v2;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(v1 + 264) = v3;

  return swift_bridgeObjectRetain_n();
}

void OUTLINED_FUNCTION_75_0()
{

  JUMPOUT(0x1C69534E0);
}

__n128 OUTLINED_FUNCTION_81(__n128 *a1)
{
  result = v1[10];
  a1[1] = result;
  return result;
}

unint64_t OUTLINED_FUNCTION_82()
{
  v2 = v0[39];
  v3 = v0[40];

  return sub_1C5C6AB10(v2, v3, v0 + 36);
}

uint64_t OUTLINED_FUNCTION_91()
{
}

id OUTLINED_FUNCTION_93(uint64_t a1)
{
  v5 = *(v2 - 192);

  return [v5 (v1 + 2840)];
}

void OUTLINED_FUNCTION_94_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v4 + 208);

  _os_log_impl(a1, v5, v8, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_96()
{
  *(v0 + 3) = 8;
}

unint64_t OUTLINED_FUNCTION_124_0()
{
  v3 = *(v0 + 248);

  return sub_1C5C6AB10(v3, v1, (v0 + 312));
}

uint64_t OUTLINED_FUNCTION_126_0()
{

  return sub_1C6017860();
}

uint64_t OUTLINED_FUNCTION_130_0()
{

  return sub_1C6017860();
}

uint64_t OUTLINED_FUNCTION_132()
{
  *v0 = 258;
  *(v0 + 2) = 34;
}

uint64_t OUTLINED_FUNCTION_133()
{
  *(v0 + 3) = 8;
}

uint64_t OUTLINED_FUNCTION_134(uint64_t a1, uint64_t a2)
{

  return sub_1C5CB58E0(a1, a2, v3, v2, v4);
}

id OUTLINED_FUNCTION_137()
{

  return sub_1C5CAFDD0(v0, v1, 1);
}

uint64_t OUTLINED_FUNCTION_145(uint64_t a1)
{
}

__n128 OUTLINED_FUNCTION_150(__n128 *a1)
{
  result = v1[13];
  a1[2] = result;
  a1[3].n128_u8[0] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_153(uint64_t a1, uint64_t a2)
{

  return sub_1C6017860();
}

id OUTLINED_FUNCTION_155(uint64_t a1, const char *a2)
{
  v6 = *(v4 - 232);

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_165()
{

  return sub_1C5CB5A04(v0, v1 - 176);
}

uint64_t OUTLINED_FUNCTION_166(float a1)
{
  *v2 = a1;

  return sub_1C5CB5A04(v1, v3 - 176);
}

BOOL OUTLINED_FUNCTION_167(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_168@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8);
  result = v1;
  *(v2 - 304) = a1 + 8;
  *(v2 - 312) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_180()
{

  return sub_1C5CB5A04(v0, v1 - 176);
}

BOOL OUTLINED_FUNCTION_181()
{
  *(v0 + 200) = v2;
  *(v0 + 208) = v1;

  return os_log_type_enabled(v1, v2);
}

uint64_t OUTLINED_FUNCTION_182()
{

  return swift_allocObject();
}

id OUTLINED_FUNCTION_183(uint64_t a1)
{

  return [v2 (v1 + 2278)];
}

id OUTLINED_FUNCTION_184()
{
  v2 = *(v0 - 184);

  return [v2 kindWithVariants_];
}

id OUTLINED_FUNCTION_185(uint64_t a1, const char *a2)
{
  v4 = *(v2 - 184);

  return [v4 a2];
}

id OUTLINED_FUNCTION_186()
{

  return sub_1C5E1EEDC(v0, v1);
}

uint64_t OUTLINED_FUNCTION_187(uint64_t a1, uint64_t a2)
{

  return sub_1C6017860();
}

id OUTLINED_FUNCTION_188()
{
  v2 = *(v0 - 208);

  return [v2 kindWithVariants_];
}

id OUTLINED_FUNCTION_189(uint64_t a1, const char *a2)
{
  v4 = *(v2 - 208);

  return [v4 a2];
}

void OUTLINED_FUNCTION_190(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_196()
{

  return swift_arrayDestroy();
}

BOOL OUTLINED_FUNCTION_209(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id OUTLINED_FUNCTION_210(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_211()
{

  return swift_bridgeObjectRetain_n();
}

void OUTLINED_FUNCTION_212()
{

  JUMPOUT(0x1C69534E0);
}

uint64_t OUTLINED_FUNCTION_213(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_214(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_218(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = v1;
  *(result + 40) = v3;
  *(result + 48) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_220()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_230(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = *(v4 + 184);
  v8 = *(v4 + 248);

  _os_log_impl(a1, v8, v7, a4, v5, 0xCu);
}

unint64_t OUTLINED_FUNCTION_231(uint64_t a1)
{

  return sub_1C5C6AB10(a1, 0xED00006563697665, (v1 - 128));
}

unint64_t OUTLINED_FUNCTION_232(uint64_t a1)
{

  return sub_1C5C6AB10(a1, v2, (v1 + 312));
}

void OUTLINED_FUNCTION_233(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

void OUTLINED_FUNCTION_234()
{

  JUMPOUT(0x1C69534E0);
}

uint64_t OUTLINED_FUNCTION_256@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 16) = *(v2 + 248);
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0x80;
  return result;
}

uint64_t OUTLINED_FUNCTION_259()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_260(uint64_t a1, unint64_t a2)
{

  return sub_1C5C6AB10(a1, a2, (v2 + 176));
}

uint64_t OUTLINED_FUNCTION_261()
{
}

uint64_t OUTLINED_FUNCTION_262@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 288) = a1;

  return sub_1C6017840();
}

uint64_t OUTLINED_FUNCTION_263()
{

  return sub_1C6016970();
}

uint64_t OUTLINED_FUNCTION_264(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
}

uint64_t OUTLINED_FUNCTION_265()
{
  *(v0 + 3) = 8;
}

void OUTLINED_FUNCTION_266(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

void OUTLINED_FUNCTION_267(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 0x1Cu);
}

BOOL OUTLINED_FUNCTION_268(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_269@<X0>(char a1@<W8>)
{
  *(v5 - 112) = v3;
  *(v5 - 104) = v4;
  *(v5 - 96) = a1;
  *(v5 - 128) = v2;
  *(v5 - 120) = v1;

  return sub_1C6016AF0();
}

uint64_t OUTLINED_FUNCTION_270(uint64_t a1)
{
  *(v2 - 208) = v1;

  return sub_1C6016B30();
}

id OUTLINED_FUNCTION_271(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{

  return sub_1C5E1ED90(a1, a2, a3, a4, v4);
}

BOOL OUTLINED_FUNCTION_272(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id OUTLINED_FUNCTION_273(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id OUTLINED_FUNCTION_274()
{
  v2 = *(v0 - 192);

  return [v2 mediaLibrary];
}

id OUTLINED_FUNCTION_275(void *a1)
{

  return [a1 (v1 + 3616)];
}

uint64_t OUTLINED_FUNCTION_276()
{

  return sub_1C5CB5A04(v1, v0 + 176);
}

uint64_t OUTLINED_FUNCTION_277()
{
  *(v1 + 4) = v0;
}

uint64_t OUTLINED_FUNCTION_278()
{
}

uint64_t OUTLINED_FUNCTION_279(uint64_t a1)
{

  return sub_1C6016B10();
}

unint64_t OUTLINED_FUNCTION_280(uint64_t a1)
{
  *(v1 + 48) = a1;

  return sub_1C5CB593C();
}

id OUTLINED_FUNCTION_281(void *a1)
{

  return [a1 (v1 + 3616)];
}

id OUTLINED_FUNCTION_282(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_283()
{
  *(v2 + 4) = v1;

  return sub_1C5CB5A3C(v0);
}

void OUTLINED_FUNCTION_284()
{

  JUMPOUT(0x1C69534E0);
}

void OUTLINED_FUNCTION_285(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  sub_1C5CAB570();
}

unint64_t OUTLINED_FUNCTION_286()
{
  *(v0 + 288) = *(v0 + 264);

  return sub_1C5CB60AC();
}

void OUTLINED_FUNCTION_287(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{

  sub_1C5C6EFFC(0, a2, v4 + 8, a4);
}

uint64_t OUTLINED_FUNCTION_302(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v3;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = v1;
  return result;
}

unint64_t OUTLINED_FUNCTION_321()
{
  v3 = *(v0 + 208);

  return sub_1C5C6AB10(v3, v1, (v0 + 312));
}

uint64_t OUTLINED_FUNCTION_322()
{
  *(v2 + 4) = v0;
  *(v2 + 12) = 2082;

  return sub_1C5CB514C(v1);
}

uint64_t OUTLINED_FUNCTION_323(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1C60176A0();
}

void OUTLINED_FUNCTION_324(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_325(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x2Au);
}

void OUTLINED_FUNCTION_326(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x12u);
}

uint64_t OUTLINED_FUNCTION_327(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2 & 1;

  return sub_1C60162B0();
}

uint64_t OUTLINED_FUNCTION_328()
{
  v2 = *(v0 - 216);

  return sub_1C5CB5A04(v2, v0 - 176);
}

id OUTLINED_FUNCTION_329(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id OUTLINED_FUNCTION_330(uint64_t a1)
{
  v5 = *(v2 - 192);

  return [v5 (v1 + 2278)];
}

uint64_t OUTLINED_FUNCTION_331()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2082;
}

uint64_t OUTLINED_FUNCTION_332()
{

  return sub_1C6017540();
}

uint64_t OUTLINED_FUNCTION_333()
{
  *(v0 + 4) = v1;
}

uint64_t OUTLINED_FUNCTION_334()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_335()
{

  return sub_1C6014E90();
}

uint64_t OUTLINED_FUNCTION_337@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, void (*a3)(void)@<X4>, uint64_t a4@<X8>, uint64_t a5)
{

  return sub_1C5CB5D44(&a5, a1, a4 + 8, a2, a3);
}

uint64_t OUTLINED_FUNCTION_338()
{

  return sub_1C5CB5A3C(v0);
}

void OUTLINED_FUNCTION_339(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_340()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_341()
{

  return sub_1C6017840();
}

uint64_t OUTLINED_FUNCTION_342(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C5CB58E0(a1, a2, a3, v3, v4);
}

id OUTLINED_FUNCTION_345(void *a1)
{

  return [a1 (v1 + 3616)];
}

uint64_t OUTLINED_FUNCTION_346(uint64_t a1)
{

  return sub_1C60162B0();
}

uint64_t OUTLINED_FUNCTION_347()
{
}

uint64_t OUTLINED_FUNCTION_348()
{
  *(v1 + 4) = v0;
}

uint64_t OUTLINED_FUNCTION_349()
{
  *(v0 + 200) = v1;
}

id OUTLINED_FUNCTION_350(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

unint64_t OUTLINED_FUNCTION_351(uint64_t a1, unint64_t a2)
{

  return sub_1C5C6AB10(a1, a2, (v2 - 128));
}

void OUTLINED_FUNCTION_352()
{

  JUMPOUT(0x1C69534E0);
}

id sub_1C5CB997C(uint64_t a1, uint64_t a2)
{
  result = [objc_allocWithZone(_MPCProtoDelegateInfoTokenB) init];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  result = [(_MPCProtoDelegateInfoTokenA *)a1 picRequestData];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = result;
  sub_1C6014F60();

  v7 = sub_1C60167D0();
  if (v2)
  {
    v10 = OUTLINED_FUNCTION_6_3();
    sub_1C5C8F8BC(v10, v11);
  }

  else
  {
    v12 = v7;
    v13 = v8;
    v14 = v9;
    v15 = OUTLINED_FUNCTION_6_3();
    sub_1C5C8F8BC(v15, v16);
    v17 = sub_1C6014F50();
    sub_1C5C8F8BC(v12, v13);
    [(_MPCProtoDelegateInfoTokenB *)v5 setPicData:v17];

    [(_MPCProtoDelegateInfoTokenB *)v5 setSessionID:v14];
    sub_1C60167B0();
    sub_1C5C8F8BC(v18, v19);
    OUTLINED_FUNCTION_11_0();
    v20 = sub_1C6014F50();
    v21 = OUTLINED_FUNCTION_11_0();
    sub_1C5C8F8BC(v21, v22);
    [(_MPCProtoDelegateInfoTokenB *)v5 setMachineIDData:v20];

    sub_1C60167A0();
    v23 = sub_1C6014F50();
    v24 = OUTLINED_FUNCTION_11_0();
    sub_1C5C8F8BC(v24, v25);
    [(_MPCProtoDelegateInfoTokenB *)v5 setHardwareInfoData:v23];

    v26 = objc_opt_self();
    v27 = [objc_opt_self() currentProcess];
    v28 = [v26 userAgentForProcessInfo_];

    if (!v28)
    {
      sub_1C6016940();
      v28 = sub_1C6016900();
    }

    [(_MPCProtoDelegateInfoTokenB *)v5 setUserAgent:v28];
  }

  return v5;
}

uint64_t sub_1C5CB9C5C()
{
  OUTLINED_FUNCTION_248();
  v1[69] = v0;
  v1[68] = v2;
  v1[67] = v3;
  sub_1C5CBD110(0);
  v1[70] = swift_task_alloc();
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C5CB9CEC()
{
  v1 = [(_MPCProtoDelegateInfoTokenE *)v0[67] playerDelegateInfoData];
  if (!v1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v1);
  }

  v2 = v1;
  v3 = v0[67];
  sub_1C6014F60();

  [(_MPCProtoDelegateInfoTokenE *)v3 sessionID];
  OUTLINED_FUNCTION_6_3();
  v6 = sub_1C60167C0();
  v8 = v7;
  v9 = v0[70];
  v10 = v0[69];
  v11 = v0[68];
  v12 = v0[67];
  v13 = OUTLINED_FUNCTION_6_3();
  sub_1C5C8F8BC(v13, v14);
  [(_MPCProtoDelegateInfoTokenE *)v12 expirationDate];
  sub_1C6014F70();
  v15 = sub_1C6015020();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v15);
  v16 = objc_allocWithZone(MEMORY[0x1E69E4408]);
  v17 = sub_1C5CBCE04(1, v6, v8, v9);
  v0[71] = v17;
  v0[62] = v11;
  v0[72] = sub_1C60177D0();
  v0[73] = v18;
  v19 = sub_1C6016900();
  v20 = [v10 accountForDSID_];
  v0[74] = v20;

  if (!v20)
  {
    v21 = v0 + 2;
    v31 = v0[68];
    v32 = v0[67];
    v33 = objc_opt_self();
    v34 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    v35 = [v33 specificAccountWithDSID_];

    v36 = [v35 identityAllowingDelegation_];
    v0[79] = v36;

    v37 = [objc_opt_self() defaultIdentityStore];
    v0[80] = v37;
    v38 = swift_allocObject();
    *(v38 + 16) = v17;
    *(v38 + 24) = v32;
    v0[54] = sub_1C5CBD168;
    v0[55] = v38;
    v0[50] = MEMORY[0x1E69E9820];
    v0[51] = 1107296256;
    v0[52] = sub_1C5CBAD78;
    v0[53] = &block_descriptor_28;
    v39 = _Block_copy(v0 + 50);
    v0[81] = v39;
    v40 = v17;
    v41 = v32;

    v0[2] = v0;
    v0[7] = v0 + 83;
    v0[3] = sub_1C5CBA550;
    v42 = swift_continuation_init();
    sub_1C5CBD170(0);
    v0[33] = v43;
    v0[26] = MEMORY[0x1E69E9820];
    v0[27] = 1107296256;
    v0[28] = sub_1C5DF5680;
    v0[29] = &block_descriptor_31;
    v0[30] = v42;
    [v37 insertPropertiesForUserIdentity:v36 usingBlock:v39 completionHandler:v0 + 26];
LABEL_10:
    v1 = v21;

    return MEMORY[0x1EEE6DEC8](v1);
  }

  if ([v20 isDelegated])
  {
    v21 = v0 + 18;
    v22 = v0[67];
    v23 = [objc_opt_self() defaultIdentityStore];
    v0[75] = v23;
    v24 = [v20 userIdentity];
    v0[76] = v24;
    v25 = swift_allocObject();
    *(v25 + 16) = v17;
    *(v25 + 24) = v22;
    v0[60] = sub_1C5CBD1F0;
    v0[61] = v25;
    v0[56] = MEMORY[0x1E69E9820];
    v0[57] = 1107296256;
    v0[58] = sub_1C5CBAC6C;
    v0[59] = &block_descriptor_41;
    v26 = _Block_copy(v0 + 56);
    v0[77] = v26;
    v27 = v17;
    v28 = v22;

    v0[18] = v0;
    v0[23] = v0 + 665;
    v0[19] = sub_1C5CBA3C0;
    v29 = swift_continuation_init();
    sub_1C5CBD170(0);
    v0[49] = v30;
    v0[42] = MEMORY[0x1E69E9820];
    v0[43] = 1107296256;
    v0[44] = sub_1C5DF5680;
    v0[45] = &block_descriptor_44;
    v0[46] = v29;
    [v23 updatePropertiesForUserIdentity:v24 usingBlock:v26 completionHandler:v0 + 42];
    goto LABEL_10;
  }

  v44 = v0[68];
  sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
  sub_1C6016940();
  v0[65] = 7;
  sub_1C6017540();
  MEMORY[0x1C69534E0](0xD00000000000004CLL, 0x80000001C60481F0);
  v0[66] = v44;
  v45 = sub_1C60177D0();
  MEMORY[0x1C69534E0](v45);

  sub_1C6016880();
  _s3__C4CodeOMa_2();
  sub_1C5CBCEF4();
  OUTLINED_FUNCTION_100();
  sub_1C6017280();

  swift_willThrow();

  OUTLINED_FUNCTION_172();

  return v4();
}

uint64_t sub_1C5CBA3C0()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 624) = *(v3 + 176);
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C5CBA4C0()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 616);
  v2 = *(v0 + 608);
  v3 = *(v0 + 600);

  _Block_release(v1);
  v4 = *(v0 + 592);

  OUTLINED_FUNCTION_5_1();

  return v5(v4);
}

uint64_t sub_1C5CBA550()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 656) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C5CBA65C()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 648);
  v2 = *(v0 + 552);

  _Block_release(v1);
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_1C5CBA774;
  v3 = swift_continuation_init();
  sub_1C5CB562C();
  *(v0 + 328) = v4;
  *(v0 + 272) = MEMORY[0x1E69E9820];
  *(v0 + 280) = 1107296256;
  *(v0 + 288) = sub_1C5E22268;
  *(v0 + 296) = &block_descriptor_34;
  *(v0 + 304) = v3;
  [v2 refreshWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 80);
}

uint64_t sub_1C5CBA774()
{
  OUTLINED_FUNCTION_248();
  v1 = *v0;
  OUTLINED_FUNCTION_101();
  *v2 = v1;
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1C5CBA844()
{
  v1 = *(v0 + 552);
  v2 = sub_1C6016900();

  v3 = [v1 accountForDSID_];

  if (v3)
  {
    v4 = *(v0 + 568);

    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_14_0();

    __asm { BRAA            X2, X16 }
  }

  v7 = *(v0 + 632);
  v8 = *(v0 + 568);
  v9 = *(v0 + 544);
  sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
  sub_1C6016940();
  *(v0 + 504) = 7;
  sub_1C6017540();
  MEMORY[0x1C69534E0](0xD000000000000034, 0x80000001C60481B0);
  *(v0 + 512) = v9;
  v10 = sub_1C60177D0();
  MEMORY[0x1C69534E0](v10);

  sub_1C6016880();
  _s3__C4CodeOMa_2();
  sub_1C5CBCEF4();
  OUTLINED_FUNCTION_100();
  sub_1C6017280();

  swift_willThrow();

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_14_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C5CBAA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8[77];
  v10 = v8[76];
  v11 = v8[75];
  v12 = v8[74];
  v13 = v8[71];
  swift_willThrow();

  _Block_release(v9);

  OUTLINED_FUNCTION_172();

  return v14();
}

uint64_t sub_1C5CBAB40()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[79];
  v4 = v0[71];
  swift_willThrow();

  _Block_release(v1);

  OUTLINED_FUNCTION_172();

  return v5();
}

void sub_1C5CBABD8(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    [a1 setDelegateToken_];
    v5 = [(_MPCProtoDelegateInfoTokenE *)a3 storefront];
    if (v5)
    {
      v6 = v5;
      [a1 setStorefrontIdentifier_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1C5CBAC6C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_1C5CBACD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [a1 setDelegated_];
  [a1 setDelegateToken_];
  v7 = [(_MPCProtoDelegateInfoTokenE *)a4 storefront];
  if (v7)
  {
    v8 = v7;
    [a1 setStorefrontIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1C5CBAD78(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

unint64_t sub_1C5CBAE80(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C6017720();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C5CBAECC(void *a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;
  a4;
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1C5CBD214;

  return sub_1C5CB9C5C();
}

uint64_t sub_1C5CBAF98()
{
  if ([v0 _whaStreamerStorage])
  {
    sub_1C6017390();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_1C6016790();
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1C5CBCF4C(v5);
    return 0;
  }
}

id sub_1C5CBB04C()
{
  if ([v0 isDelegated])
  {
    sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
    sub_1C6016940();
    OUTLINED_FUNCTION_4_1();
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD000000000000041, 0x80000001C6048110);
    v2 = [v0 description];
LABEL_8:
    v7 = v2;
    v8 = sub_1C6016940();
    v10 = v9;

    MEMORY[0x1C69534E0](v8, v10);

    sub_1C6016880();
    _s3__C4CodeOMa_2();
    sub_1C5CBCEF4();
    OUTLINED_FUNCTION_100();
    sub_1C6017280();

    swift_willThrow();
    return v1;
  }

  if (!sub_1C5CBAF98())
  {
    sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
    sub_1C6016940();
    OUTLINED_FUNCTION_4_1();
    sub_1C6017540();

    OUTLINED_FUNCTION_12_1();
    v2 = [v0 description];
    goto LABEL_8;
  }

  result = [objc_allocWithZone(_MPCProtoDelegateInfoTokenA) init];
  if (result)
  {
    v1 = result;
    v4 = sub_1C6016710();
    if (v5 >> 60 == 15)
    {
      v6 = 0;
    }

    else
    {
      v11 = v4;
      v12 = v5;
      v6 = sub_1C6014F50();
      sub_1C5CB6098(v11, v12);
    }

    v13 = OUTLINED_FUNCTION_11_0();
    [(_MPCProtoDelegateInfoTokenA *)v13 setPicRequestData:v14];

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5CBB360()
{
  OUTLINED_FUNCTION_248();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_1C6015020();
  v1[5] = v3;
  v1[6] = *(v3 - 8);
  v1[7] = swift_task_alloc();
  v4 = sub_1C6016770();
  v1[8] = v4;
  v1[9] = *(v4 - 8);
  v1[10] = swift_task_alloc();
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C5CBB474()
{
  v1 = sub_1C5CBAF98();
  v0[11] = v1;
  if (v1)
  {
    v2 = [(_MPCProtoDelegateInfoTokenB *)v0[3] picData];
    if (v2)
    {
      v3 = v2;
      v4 = sub_1C6014F60();
      v6 = v5;

      v0[12] = sub_1C6016730();
      v0[13] = v7;
      v15 = v0[3];
      sub_1C5C8F8BC(v4, v6);
      v16 = [(_MPCProtoDelegateInfoTokenB *)v15 machineIDData];
      if (v16)
      {
        v17 = v16;
        v18 = v0[3];
        v19 = sub_1C6014F60();
        v21 = v20;

        v0[14] = v19;
        v0[15] = v21;
        v22 = [(_MPCProtoDelegateInfoTokenB *)v18 hardwareInfoData];
        if (v22)
        {
          v23 = v22;
          v24 = v0[3];
          v25 = sub_1C6014F60();
          v27 = v26;

          v0[16] = v25;
          v0[17] = v27;
          v28 = [(_MPCProtoDelegateInfoTokenB *)v24 userAgent];
          if (v28)
          {
            v29 = v28;
            sub_1C6016940();
            v31 = v30;

            v0[18] = v31;
            v32 = swift_task_alloc();
            v0[19] = v32;
            *v32 = v0;
            v32[1] = sub_1C5CBB7FC;
            OUTLINED_FUNCTION_14_0();

            return MEMORY[0x1EEE41880]();
          }

LABEL_16:
          __break(1u);
          return MEMORY[0x1EEE41880]();
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }

  v8 = v0[4];
  sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
  sub_1C6016940();
  v0[2] = 16;
  sub_1C6017540();

  OUTLINED_FUNCTION_12_1();
  v9 = [v8 description];
  v10 = sub_1C6016940();
  v12 = v11;

  MEMORY[0x1C69534E0](v10, v12);

  sub_1C6016880();
  _s3__C4CodeOMa_2();
  sub_1C5CBCEF4();
  OUTLINED_FUNCTION_100();
  sub_1C6017280();

  swift_willThrow();

  OUTLINED_FUNCTION_172();

  return v13();
}

uint64_t sub_1C5CBB7FC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_101();
  *v6 = v5;
  v3[20] = v0;

  if (!v0)
  {
    v7 = v3[17];
    v8 = v3[16];
    v9 = v3[13];
    v10 = v3[12];

    sub_1C5C8F8BC(v8, v7);
    v11 = OUTLINED_FUNCTION_6_3();
    sub_1C5C8F8BC(v11, v12);
    sub_1C5C8F8BC(v10, v9);
  }

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

id sub_1C5CBB93C()
{
  result = [objc_allocWithZone(_MPCProtoDelegateInfoTokenE) init];
  if (result)
  {
    v2 = result;
    v3 = v0[20];
    v4 = [(_MPCProtoDelegateInfoTokenB *)v0[3] sessionID];
    [(_MPCProtoDelegateInfoTokenE *)v2 setSessionID:v4];
    v5 = sub_1C6016760();
    v7 = v6;
    v8 = sub_1C6016720();
    v10 = v9;
    v11 = v3;
    v12 = v0[10];
    v13 = v0[9];
    if (v11)
    {
      (*(v13 + 8))(v0[10], v0[8]);
      sub_1C5C8F8BC(v5, v7);

      OUTLINED_FUNCTION_172();

      return v14();
    }

    else
    {
      v15 = v8;
      v16 = v0[6];
      v24 = v0[7];
      v25 = v0[5];
      v17 = v5;
      v18 = v0[8];
      sub_1C5C8F8BC(v17, v7);
      v19 = sub_1C6014F50();
      sub_1C5C8F8BC(v15, v10);
      [(_MPCProtoDelegateInfoTokenE *)v2 setPlayerDelegateInfoData:v19];

      sub_1C6016750();
      sub_1C6014FC0();
      sub_1C6014F80();
      v21 = v20;
      (*(v16 + 8))(v24, v25);
      [(_MPCProtoDelegateInfoTokenE *)v2 setExpirationDate:v21];
      sub_1C6016740();
      v22 = sub_1C6016900();

      [(_MPCProtoDelegateInfoTokenE *)v2 setStorefront:v22];

      (*(v13 + 8))(v12, v18);

      OUTLINED_FUNCTION_5_1();

      return v23(v2);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5CBBB98()
{
  v1 = v0[17];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];

  sub_1C5C8F8BC(v2, v1);
  sub_1C5C8F8BC(v4, v3);
  sub_1C5C8F8BC(v6, v5);

  OUTLINED_FUNCTION_172();

  return v7();
}

uint64_t sub_1C5CBBCE4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1C5CBBDA8;

  return sub_1C5CBB360();
}

uint64_t sub_1C5CBBDA8()
{
  OUTLINED_FUNCTION_9();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_8_0();
  v6 = v5;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  v9 = v8[4];
  v10 = v8[3];
  v11 = v8[2];
  v12 = *v1;
  OUTLINED_FUNCTION_101();
  *v13 = v12;

  if (v2)
  {
    if (v9)
    {
      v14 = *(v6 + 32);
      v15 = sub_1C6014D30();

      (v14)[2](v14, 0, v15);
      _Block_release(v14);
    }

    else
    {
    }
  }

  else if (v9)
  {
    v16 = *(v6 + 32);
    (v16)[2](v16, v4, 0);

    _Block_release(v16);
  }

  else
  {
  }

  OUTLINED_FUNCTION_172();

  return v17();
}

id sub_1C5CBBF68(uint64_t a1)
{
  v3 = [v1 userIdentity];
  v4 = [objc_allocWithZone(MPCPlaybackRequestEnvironment) initWithUserIdentity_];

  v5 = [v4 _createStoreRequestContextWithTag_];
  return v5;
}

uint64_t sub_1C5CBBFF8()
{
  *(v1 + 24) = v0;
  OUTLINED_FUNCTION_235();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C5CBC024()
{
  OUTLINED_FUNCTION_13();
  v1 = sub_1C5CBBF68(0);
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  sub_1C5CBCFFC(0, &qword_1EC1AA640, &qword_1EC1AA648, 0x1E69E44B0);
  *v3 = v0;
  v3[1] = sub_1C5CBC140;
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DE38](v4, v5, v6, 0xD00000000000001CLL, v7, v8, v2, v9);
}

uint64_t sub_1C5CBC140()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_101();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C5CBC244()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_5_1();

  return v1();
}

uint64_t sub_1C5CBC2A4()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v1();
}

void sub_1C5CBC308(uint64_t a1, uint64_t a2)
{
  sub_1C5CBCA98(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = [objc_opt_self() sharedController];
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  aBlock[4] = sub_1C5CBCB20;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C5CBC7D8;
  aBlock[3] = &block_descriptor_0;
  v11 = _Block_copy(aBlock);

  [v8 getLeaseSessionWithRequestContext:a2 completionHandler:v11];
  _Block_release(v11);
}

void sub_1C5CBC4D8(void *a1, void *a2, uint64_t a3)
{
  sub_1C5CBCA98(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  if (a2)
  {
    aBlock[0] = a2;
    v10 = a2;
    sub_1C6016BB0();
  }

  else if (a1)
  {
    (*(v8 + 16))(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
    v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v12 = swift_allocObject();
    (*(v8 + 32))(v12 + v11, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    aBlock[4] = sub_1C5CBCBC8;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C5CBC74C;
    aBlock[3] = &block_descriptor_10;
    v13 = _Block_copy(aBlock);
    v14 = a1;

    [v14 reloadFairPlayKeyStatusWithCompletionHandler_];
    _Block_release(v13);
  }

  else
  {
    sub_1C6016BC0();
  }
}

uint64_t sub_1C5CBC6D0(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    sub_1C5CBCA98(0);
    return sub_1C6016BB0();
  }

  else
  {
    sub_1C5CBCA98(0);
    v5 = a1;
    return sub_1C6016BC0();
  }
}

void sub_1C5CBC74C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

void sub_1C5CBC7D8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1C5CBC864()
{
  OUTLINED_FUNCTION_248();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C5CBC8EC;

  return sub_1C5CBBFF8();
}

uint64_t sub_1C5CBC8EC()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 24) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_5_1();

    return v5(0);
  }

  else
  {
    OUTLINED_FUNCTION_235();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1C5CBCA10()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = [*(v0 + 24) hasOnlinePlaybackKeys];
  }

  else
  {
    v2 = 0;
  }

  OUTLINED_FUNCTION_5_1();

  return v3(v2);
}

void sub_1C5CBCA98(uint64_t a1)
{
  if (!qword_1EC1AA650)
  {
    sub_1C5CBCFFC(255, &qword_1EC1AA640, &qword_1EC1AA648, 0x1E69E44B0);
    sub_1C5CB5808();
    v1 = sub_1C6016BD0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1AA650);
    }
  }
}

uint64_t objectdestroyTm()
{
  sub_1C5CBCA98(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C5CBCBE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_1C5CBCA98(0);
  v7 = v3 + ((*(*(v6 - 8) + 80) + 16) & ~*(*(v6 - 8) + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_1C5CBCC74()
{
  OUTLINED_FUNCTION_13();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C5CBCD24;

  return sub_1C5CBBCE4(v2, v3, v4);
}

uint64_t sub_1C5CBCD24()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v1 = *v0;
  OUTLINED_FUNCTION_101();
  *v2 = v1;

  OUTLINED_FUNCTION_172();

  return v3();
}

id sub_1C5CBCE04(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1C6014F50();
  v11 = sub_1C6015020();
  v12 = 0;
  if (__swift_getEnumTagSinglePayload(a4, 1, v11) != 1)
  {
    v12 = sub_1C6014FB0();
    (*(*(v11 - 8) + 8))(a4, v11);
  }

  v13 = [v5 initWithType:a1 data:v10 expirationDate:v12];

  sub_1C5C8F8BC(a2, a3);
  return v13;
}

unint64_t sub_1C5CBCEF4()
{
  result = qword_1EC1AB170;
  if (!qword_1EC1AB170)
  {
    _s3__C4CodeOMa_2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB170);
  }

  return result;
}

uint64_t sub_1C5CBCF4C(uint64_t a1)
{
  sub_1C5CBCFA8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C5CBCFA8()
{
  if (!qword_1ED7E0200)
  {
    v0 = sub_1C6017350();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7E0200);
    }
  }
}

void sub_1C5CBCFFC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1C5C64D74(255, a3, a4);
    v5 = sub_1C6017350();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1C5CBD054()
{
  OUTLINED_FUNCTION_9();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1C5CBD218;

  return sub_1C5CBAECC(v2, v3, v5, v4);
}

void sub_1C5CBD110(uint64_t a1)
{
  if (!qword_1EC1A91D0)
  {
    sub_1C6015020();
    v1 = sub_1C6017350();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1A91D0);
    }
  }
}

void sub_1C5CBD170(uint64_t a1)
{
  if (!qword_1EC1AA658)
  {
    sub_1C5CB5808();
    v1 = sub_1C6016CC0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1AA658);
    }
  }
}

uint64_t block_destroy_helper_30(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

id sub_1C5CBD228()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_1EC1A9580 != -1)
  {
    OUTLINED_FUNCTION_2_4(&qword_1EC1A9580);
  }

  v3 = sub_1C60162D0();
  __swift_project_value_buffer(v3, qword_1EC1BE420);
  v4 = sub_1C60162B0();
  v5 = sub_1C6016F10();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    OUTLINED_FUNCTION_7_2(&dword_1C5C61000, v7, v8, "Podcasts/deinit");
    MEMORY[0x1C6956920](v6, -1, -1);
  }

  v10.receiver = v1;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

uint64_t sub_1C5CBD398(uint64_t a1, void *a2)
{
  qword_1EC1AA660 = a1;
  off_1EC1AA668 = a2;
}

uint64_t sub_1C5CBD3D0()
{
  v0 = sub_1C6016650();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69E7FA0], v0);
  v4 = sub_1C6016640();
  result = (*(v1 + 8))(v3, v0);
  dword_1EC1BE3B8 = v4;
  return result;
}

uint64_t sub_1C5CBD4C0()
{
  if (qword_1EC1A8FE8 != -1)
  {
    OUTLINED_FUNCTION_3_2(&qword_1EC1A8FE8);
  }

  return dword_1EC1BE3B8;
}

uint64_t sub_1C5CBD518(uint64_t result)
{
  v1 = result;
  if (qword_1EC1A8FE8 != -1)
  {
    result = OUTLINED_FUNCTION_3_2(&qword_1EC1A8FE8);
  }

  dword_1EC1BE3B8 = v1;
  return result;
}

uint64_t sub_1C5CBD57C(void *a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (sub_1C5CD4618(a2, v6, v7, v8, v9, v10, v11, v12, v23, v24, var60[0], var60[1], var60[2], var60[3], var60[4], var60[5], var60[6], var60[7], var60[8], var60[9], var60[10], var60[11], var60[12], var60[13]) == 4)
    {
      if (sub_1C5CBD748(a1, a2))
      {
        sub_1C5CBE21C(a1, a2);
      }
    }

    else
    {
      if (qword_1EC1A9580 != -1)
      {
        swift_once();
      }

      v14 = sub_1C60162D0();
      __swift_project_value_buffer(v14, qword_1EC1BE420);
      v15 = sub_1C60162B0();
      v16 = sub_1C6016F30();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        var60[0] = v18;
        *v17 = 136446210;
        type metadata accessor for MPCQueueControllerBehaviorType();
        v19 = sub_1C60169A0();
        v21 = sub_1C5C6AB10(v19, v20, var60);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_1C5C61000, v15, v16, "Podcasts/itemEnd: Skipping reporting, behavior mismatch: %{public}s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x1C6956920](v18, -1, -1);
        MEMORY[0x1C6956920](v17, -1, -1);
      }
    }
  }

  return 1;
}

uint64_t sub_1C5CBD748(void *a1, void *a2)
{
  v4 = [a1 type];
  v5 = sub_1C6016940();
  v7 = v6;
  if (v5 == sub_1C6016940() && v7 == v8)
  {
    goto LABEL_25;
  }

  v10 = sub_1C6017860();

  if (v10)
  {
    goto LABEL_26;
  }

  v4 = [a1 type];
  v11 = sub_1C6016940();
  v13 = v12;
  if (v11 == sub_1C6016940() && v13 == v14)
  {
    goto LABEL_25;
  }

  v16 = sub_1C6017860();

  if (v16)
  {
    goto LABEL_26;
  }

  v4 = [a1 type];
  v17 = sub_1C6016940();
  v19 = v18;
  if (v17 == sub_1C6016940() && v19 == v20)
  {
    goto LABEL_25;
  }

  v22 = sub_1C6017860();

  if (v22)
  {
    goto LABEL_26;
  }

  v4 = [a1 type];
  v23 = sub_1C6016940();
  v25 = v24;
  if (v23 == sub_1C6016940() && v25 == v26)
  {
LABEL_25:
  }

  else
  {
    v28 = sub_1C6017860();

    if ((v28 & 1) == 0)
    {
      if (qword_1EC1A9580 != -1)
      {
        swift_once();
      }

      v29 = sub_1C60162D0();
      __swift_project_value_buffer(v29, qword_1EC1BE420);
      v30 = sub_1C60162B0();
      v31 = sub_1C6016F10();
      if (!os_log_type_enabled(v30, v31))
      {
        goto LABEL_59;
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
LABEL_58:
      _os_log_impl(&dword_1C5C61000, v30, v31, v33, v32, 2u);
      MEMORY[0x1C6956920](v32, -1, -1);
LABEL_59:

      return 0;
    }
  }

LABEL_26:
  v34 = sub_1C5CD47E4();
  if (!v35)
  {
LABEL_35:
    if (qword_1EC1A9580 != -1)
    {
      swift_once();
    }

    v49 = sub_1C60162D0();
    __swift_project_value_buffer(v49, qword_1EC1BE420);
    v30 = sub_1C60162B0();
    v31 = sub_1C6016F10();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_59;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    goto LABEL_58;
  }

  v36 = v34;
  v37 = v35;
  v38 = sub_1C5CD47F0();
  if (!v39)
  {

    goto LABEL_35;
  }

  v40 = v38;
  v41 = v39;
  v42 = [a1 type];
  v43 = sub_1C6016940();
  v45 = v44;
  if (v43 == sub_1C6016940() && v45 == v46)
  {
  }

  else
  {
    v48 = sub_1C6017860();

    if ((v48 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  v50 = [a1 payload];
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5C660B0(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey, &unk_1C6032C48);
  v51 = sub_1C6016860();

  sub_1C5CFF1CC(v51, &v80);

  if (!v81)
  {

    sub_1C5CBCF4C(&v80);
    goto LABEL_54;
  }

  sub_1C5C64D74(0, &qword_1ED7DCCD0, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0 || (v52 = [v79 BOOLValue], v79, (v52 & 1) == 0))
  {

LABEL_54:
    if (qword_1EC1A9580 != -1)
    {
      swift_once();
    }

    v64 = sub_1C60162D0();
    __swift_project_value_buffer(v64, qword_1EC1BE420);
    v30 = sub_1C60162B0();
    v31 = sub_1C6016F30();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_59;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    goto LABEL_58;
  }

LABEL_43:
  ObjectType = swift_getObjectType();
  v54 = sub_1C5CD48E8(v40, v41, v36, v37, ObjectType);
  if (!v54)
  {

    if (qword_1EC1A9580 != -1)
    {
      swift_once();
    }

    v66 = sub_1C60162D0();
    __swift_project_value_buffer(v66, qword_1EC1BE420);
    v30 = sub_1C60162B0();
    v31 = sub_1C6016F10();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_59;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    goto LABEL_58;
  }

  v30 = v54;
  v55 = [a2 cursorUntilEvent_];
  if (sub_1C5CC1324(v40, v41, v36, v37) < 1)
  {

    if (qword_1EC1A9580 != -1)
    {
      swift_once();
    }

    v67 = sub_1C60162D0();
    __swift_project_value_buffer(v67, qword_1EC1BE420);
    v68 = sub_1C60162B0();
    v69 = sub_1C6016F10();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      MEMORY[0x1C6956920](v70, -1, -1);
    }

    swift_unknownObjectRelease();

    goto LABEL_59;
  }

  v56 = [v55 findPreviousEventWithType:@"item-pause" matchingPayload:0];
  if (v56)
  {
    v57 = v56;
    [v55 cursorUntilEvent_];
    v58 = swift_getObjectType();
    v59 = sub_1C5CD48F4(v40, v41, v36, v37, v58);

    if (!v59)
    {
      if (qword_1EC1A9580 != -1)
      {
        swift_once();
      }

      v75 = sub_1C60162D0();
      __swift_project_value_buffer(v75, qword_1EC1BE420);
      v76 = sub_1C60162B0();
      v77 = sub_1C6016F10();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        MEMORY[0x1C6956920](v78, -1, -1);
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return 0;
    }

    if (qword_1EC1A9580 != -1)
    {
      swift_once();
    }

    v60 = sub_1C60162D0();
    __swift_project_value_buffer(v60, qword_1EC1BE420);
    v61 = sub_1C60162B0();
    v62 = sub_1C6016F10();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      MEMORY[0x1C6956920](v63, -1, -1);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {

    if (qword_1EC1A9580 != -1)
    {
      swift_once();
    }

    v71 = sub_1C60162D0();
    __swift_project_value_buffer(v71, qword_1EC1BE420);
    v72 = sub_1C60162B0();
    v73 = sub_1C6016F10();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      MEMORY[0x1C6956920](v74, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  return 1;
}

void sub_1C5CBE21C(void *a1, void *a2)
{
  v3 = v2;
  sub_1C5CD47E4();
  if (v6)
  {
    v7 = sub_1C6016900();

    sub_1C5CD47F0();
    if (v8)
    {
      v9 = sub_1C6016900();

      if (MSVDeviceOSIsInternalInstall() && (v10 = MEMORY[0x1E69E6F90], sub_1C5CC53A8(0, qword_1ED7DCB30, type metadata accessor for MPCPlaybackEngineEventType, MEMORY[0x1E69E6F90]), v11 = swift_allocObject(), *(v11 + 16) = xmmword_1C6035C00, *(v11 + 32) = @"item-update", *(v11 + 40) = @"item-begin", type metadata accessor for MPCPlaybackEngineEventType(), v12 = @"item-update", v13 = @"item-begin", v46 = sub_1C6016AF0(), , sub_1C5CC53A8(0, &unk_1ED7DCB20, sub_1C5CC540C, v10), inited = swift_initStackObject(), *(inited + 16) = xmmword_1C6035C00, *(inited + 32) = @"queue-item-id", *(inited + 40) = v7, *(inited + 48) = @"queue-section-id", *(inited + 56) = v9, type metadata accessor for MPCPlaybackEngineEventPayloadKey(), sub_1C5CC547C(), sub_1C5C660B0(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey, &unk_1C6032C48), v15 = @"queue-item-id", v16 = v7, v17 = @"queue-section-id", v18 = v9, sub_1C6016880(), v19 = sub_1C6016840(), , v53 = sub_1C5CBEBDC, v54 = 0, aBlock = MEMORY[0x1E69E9820], v50 = 1107296256, v51 = sub_1C5D378E4, v52 = &block_descriptor_17, v20 = _Block_copy(&aBlock), , [a2 enumeratePreviousEventsWithTypes:v46 matchingPayload:v19 usingBlock:v20], v46, v19, _Block_release(v20), (swift_isEscapingClosureAtFileLocation() & 1) != 0))
      {
        __break(1u);
      }

      else
      {
        v21 = sub_1C6016940();
        v23 = v22;
        v24 = sub_1C6016940();
        aBlock = a1;
        v50 = a2;
        v51 = v21;
        v52 = v23;
        v53 = v24;
        v54 = v25;
        v26 = swift_allocObject();
        v27 = a1;
        swift_unknownObjectRetain();
        *(v26 + 16) = sub_1C5CBEBE0();
        v28 = v27;

        v29 = v3;
        sub_1C5CC095C(v28, a2, v29, v26, v28, v29);

        swift_unknownObjectRelease();
      }

      return;
    }
  }

  if (qword_1EC1A9580 != -1)
  {
    swift_once();
  }

  v30 = sub_1C60162D0();
  __swift_project_value_buffer(v30, qword_1EC1BE420);
  v31 = a1;
  oslog = sub_1C60162B0();
  v32 = sub_1C6016F20();

  if (os_log_type_enabled(oslog, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v48 = v34;
    *v33 = 136381187;
    aBlock = [v31 type];
    type metadata accessor for MPCPlaybackEngineEventType();
    v35 = sub_1C60169A0();
    v37 = sub_1C5C6AB10(v35, v36, &v48);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2081;
    aBlock = sub_1C5CD47E4();
    v50 = v38;
    sub_1C5C67444(0, &qword_1EC1A9480, MEMORY[0x1E69E6158]);
    v39 = sub_1C60169A0();
    v41 = sub_1C5C6AB10(v39, v40, &v48);

    *(v33 + 14) = v41;
    *(v33 + 22) = 2081;
    aBlock = sub_1C5CD47F0();
    v50 = v42;
    v43 = sub_1C60169A0();
    v45 = sub_1C5C6AB10(v43, v44, &v48);

    *(v33 + 24) = v45;
    _os_log_impl(&dword_1C5C61000, oslog, v32, "Podcasts: Unable to create a play event.\nEventType: %{private}s.\nItemID: %{private}s.\nSectionID: %{private}s.", v33, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C6956920](v34, -1, -1);
    MEMORY[0x1C6956920](v33, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1C5CBE7E8()
{
  v1 = v0;
  if (qword_1EC1A9580 != -1)
  {
    OUTLINED_FUNCTION_2_4(&qword_1EC1A9580);
  }

  v2 = sub_1C60162D0();
  __swift_project_value_buffer(v2, qword_1EC1BE420);
  v3 = sub_1C60162B0();
  v4 = sub_1C6016F10();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C5C61000, v3, v4, "Podcasts/unsubscribeFromEventStream", v5, 2u);
    MEMORY[0x1C6956920](v5, -1, -1);
  }

  *(v1 + OBJC_IVAR____TtC17MediaPlaybackCore32PodcastsPlayActivityFeedConsumer_subscription) = 0;

  return swift_unknownObjectRelease();
}

void sub_1C5CBE934(void *a1)
{
  if (qword_1EC1A9580 != -1)
  {
    swift_once();
  }

  v2 = sub_1C60162D0();
  __swift_project_value_buffer(v2, qword_1EC1BE420);
  v3 = a1;
  oslog = sub_1C60162B0();
  v4 = sub_1C6016F30();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136315651;
    *&v17 = [v3 type];
    type metadata accessor for MPCPlaybackEngineEventType();
    v7 = sub_1C60169A0();
    v9 = sub_1C5C6AB10(v7, v8, &v18);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2160;
    *(v5 + 14) = 1752392040;
    *(v5 + 22) = 2081;
    v10 = [v3 payload];
    type metadata accessor for MPCPlaybackEngineEventPayloadKey();
    sub_1C5C660B0(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey, &unk_1C6032C48);
    v11 = MEMORY[0x1E69E7CA0];
    v12 = sub_1C6016860();

    sub_1C5CFF1CC(v12, &v17);

    sub_1C5C67444(0, &qword_1ED7E0200, v11 + 8);
    v13 = sub_1C60169A0();
    v15 = sub_1C5C6AB10(v13, v14, &v18);

    *(v5 + 24) = v15;
    _os_log_impl(&dword_1C5C61000, oslog, v4, "Debug: \nEvent=%s\nMetadata=%{private,mask.hash}s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C6956920](v6, -1, -1);
    MEMORY[0x1C6956920](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1C5CBEBE0()
{
  v1 = v0;
  v2 = sub_1C6015020();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E6158];
  v7 = sub_1C6016880();
  v8 = [*v1 date];
  sub_1C6014FF0();

  sub_1C6014FE0();
  v10 = v9;
  result = (*(v3 + 8))(v5, v2);
  v12 = v10 * 1000.0;
  if (COERCE__INT64(fabs(v10 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_115;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_116:
    __break(1u);
    return result;
  }

  *(&v85 + 1) = MEMORY[0x1E69E7360];
  *&v84 = v12;
  sub_1C5C70758(&v84, v83);
  swift_isUniquelyReferenced_nonNull_native();
  v82 = v7;
  sub_1C5E361A8(v83, 0x7261745379616C70, 0xED0000656D695474);
  v13 = v82;
  sub_1C5CC198C(@"podcast-store-id", &v84);
  if (*(&v85 + 1))
  {
    v14 = MEMORY[0x1E69E6158];
    if (swift_dynamicCast())
    {
      *(&v85 + 1) = v14;
      v84 = v83[0];
      sub_1C5C70758(&v84, v83);
      swift_isUniquelyReferenced_nonNull_native();
      v82 = v13;
      sub_1C5E361A8(v83, 0x4974736163646F70, 0xE900000000000064);
      v13 = v82;
      goto LABEL_12;
    }
  }

  else
  {
    sub_1C5CBCF4C(&v84);
  }

  v15 = sub_1C5CE2084(0x4974736163646F70, 0xE900000000000064);
  if (v16)
  {
    v17 = v15;
    swift_isUniquelyReferenced_nonNull_native();
    *&v83[0] = v13;
    sub_1C5CC56E8(0, &qword_1EC1A9268, MEMORY[0x1E69E6DC8]);
    sub_1C6017660();
    v13 = *&v83[0];

    sub_1C5C70758((*(v13 + 56) + 32 * v17), &v84);
    sub_1C6017680();
  }

  else
  {
    v84 = 0u;
    v85 = 0u;
  }

  sub_1C5CBCF4C(&v84);
LABEL_12:
  sub_1C5CC198C(@"podcast-content-guid", &v84);
  if (*(&v85 + 1))
  {
    v18 = MEMORY[0x1E69E6158];
    if (swift_dynamicCast())
    {
      *(&v85 + 1) = v18;
      v84 = v83[0];
      sub_1C5C70758(&v84, v83);
      swift_isUniquelyReferenced_nonNull_native();
      v82 = v13;
      sub_1C5E361A8(v83, 0x47746E65746E6F63, 0xEB00000000444955);
      v13 = v82;
      goto LABEL_20;
    }
  }

  else
  {
    sub_1C5CBCF4C(&v84);
  }

  v19 = sub_1C5CE2084(0x47746E65746E6F63, 0xEB00000000444955);
  if (v20)
  {
    v21 = v19;
    swift_isUniquelyReferenced_nonNull_native();
    *&v83[0] = v13;
    sub_1C5CC56E8(0, &qword_1EC1A9268, MEMORY[0x1E69E6DC8]);
    sub_1C6017660();
    v13 = *&v83[0];

    sub_1C5C70758((*(v13 + 56) + 32 * v21), &v84);
    sub_1C6017680();
  }

  else
  {
    v84 = 0u;
    v85 = 0u;
  }

  sub_1C5CBCF4C(&v84);
LABEL_20:
  sub_1C5CC198C(@"podcast-item-type", &v84);
  if (*(&v85 + 1))
  {
    v22 = MEMORY[0x1E69E6158];
    if (swift_dynamicCast())
    {
      *(&v85 + 1) = v22;
      v84 = v83[0];
      sub_1C5C70758(&v84, v83);
      swift_isUniquelyReferenced_nonNull_native();
      v82 = v13;
      sub_1C5E361A8(v83, 0x657079546D657469, 0xE800000000000000);
      v13 = v82;
      goto LABEL_28;
    }
  }

  else
  {
    sub_1C5CBCF4C(&v84);
  }

  v23 = sub_1C5CE2084(0x657079546D657469, 0xE800000000000000);
  if (v24)
  {
    v25 = v23;
    swift_isUniquelyReferenced_nonNull_native();
    *&v83[0] = v13;
    sub_1C5CC56E8(0, &qword_1EC1A9268, MEMORY[0x1E69E6DC8]);
    sub_1C6017660();
    v13 = *&v83[0];

    sub_1C5C70758((*(v13 + 56) + 32 * v25), &v84);
    sub_1C6017680();
  }

  else
  {
    v84 = 0u;
    v85 = 0u;
  }

  sub_1C5CBCF4C(&v84);
LABEL_28:
  sub_1C5CC198C(@"podcast-media-type", &v84);
  if (*(&v85 + 1))
  {
    v26 = MEMORY[0x1E69E6158];
    if (swift_dynamicCast())
    {
      *(&v85 + 1) = v26;
      v84 = v83[0];
      sub_1C5C70758(&v84, v83);
      swift_isUniquelyReferenced_nonNull_native();
      v82 = v13;
      sub_1C5E361A8(v83, 0x707954616964656DLL, 0xE900000000000065);
      v13 = v82;
      goto LABEL_36;
    }
  }

  else
  {
    sub_1C5CBCF4C(&v84);
  }

  v27 = sub_1C5CE2084(0x707954616964656DLL, 0xE900000000000065);
  if (v28)
  {
    v29 = v27;
    swift_isUniquelyReferenced_nonNull_native();
    *&v83[0] = v13;
    sub_1C5CC56E8(0, &qword_1EC1A9268, MEMORY[0x1E69E6DC8]);
    sub_1C6017660();
    v13 = *&v83[0];

    sub_1C5C70758((*(v13 + 56) + 32 * v29), &v84);
    sub_1C6017680();
  }

  else
  {
    v84 = 0u;
    v85 = 0u;
  }

  sub_1C5CBCF4C(&v84);
LABEL_36:
  sub_1C5CC198C(@"podcast-price-type", &v84);
  if (*(&v85 + 1))
  {
    v30 = MEMORY[0x1E69E6158];
    if (swift_dynamicCast())
    {
      *(&v85 + 1) = v30;
      v84 = v83[0];
      sub_1C5C70758(&v84, v83);
      swift_isUniquelyReferenced_nonNull_native();
      v82 = v13;
      sub_1C5E361A8(v83, 0x54746E65746E6F63, 0xEB00000000657079);
      v13 = v82;
      goto LABEL_44;
    }
  }

  else
  {
    sub_1C5CBCF4C(&v84);
  }

  v31 = sub_1C5CE2084(0x54746E65746E6F63, 0xEB00000000657079);
  if (v32)
  {
    v33 = v31;
    swift_isUniquelyReferenced_nonNull_native();
    *&v83[0] = v13;
    sub_1C5CC56E8(0, &qword_1EC1A9268, MEMORY[0x1E69E6DC8]);
    sub_1C6017660();
    v13 = *&v83[0];

    sub_1C5C70758((*(v13 + 56) + 32 * v33), &v84);
    sub_1C6017680();
  }

  else
  {
    v84 = 0u;
    v85 = 0u;
  }

  sub_1C5CBCF4C(&v84);
LABEL_44:
  sub_1C5CC198C(@"item-duration", &v84);
  if (*(&v85 + 1))
  {
    v34 = MEMORY[0x1E69E63B0];
    if (swift_dynamicCast())
    {
      *(&v85 + 1) = v34;
      *&v84 = *&v83[0];
      sub_1C5C70758(&v84, v83);
      swift_isUniquelyReferenced_nonNull_native();
      v82 = v13;
      sub_1C5E361A8(v83, 0x4C746E65746E6F63, 0xED00006874676E65);
      v13 = v82;
      goto LABEL_52;
    }
  }

  else
  {
    sub_1C5CBCF4C(&v84);
  }

  v35 = sub_1C5CE2084(0x4C746E65746E6F63, 0xED00006874676E65);
  if (v36)
  {
    v37 = v35;
    swift_isUniquelyReferenced_nonNull_native();
    *&v83[0] = v13;
    sub_1C5CC56E8(0, &qword_1EC1A9268, MEMORY[0x1E69E6DC8]);
    sub_1C6017660();
    v13 = *&v83[0];

    sub_1C5C70758((*(v13 + 56) + 32 * v37), &v84);
    sub_1C6017680();
  }

  else
  {
    v84 = 0u;
    v85 = 0u;
  }

  sub_1C5CBCF4C(&v84);
LABEL_52:
  sub_1C5CC198C(@"podcast-feed-url", &v84);
  if (*(&v85 + 1))
  {
    v38 = MEMORY[0x1E69E6158];
    if (swift_dynamicCast())
    {
      *(&v85 + 1) = v38;
      v84 = v83[0];
      sub_1C5C70758(&v84, v83);
      swift_isUniquelyReferenced_nonNull_native();
      v82 = v13;
      sub_1C5E361A8(v83, 0x4674736163646F70, 0xEE004C5255646565);
      v13 = v82;
      goto LABEL_60;
    }
  }

  else
  {
    sub_1C5CBCF4C(&v84);
  }

  v39 = sub_1C5CE2084(0x4674736163646F70, 0xEE004C5255646565);
  if (v40)
  {
    v41 = v39;
    swift_isUniquelyReferenced_nonNull_native();
    *&v83[0] = v13;
    sub_1C5CC56E8(0, &qword_1EC1A9268, MEMORY[0x1E69E6DC8]);
    sub_1C6017660();
    v13 = *&v83[0];

    sub_1C5C70758((*(v13 + 56) + 32 * v41), &v84);
    sub_1C6017680();
  }

  else
  {
    v84 = 0u;
    v85 = 0u;
  }

  sub_1C5CBCF4C(&v84);
LABEL_60:
  sub_1C5CC198C(@"podcast-subscription-state", &v84);
  if (*(&v85 + 1))
  {
    v42 = MEMORY[0x1E69E6158];
    if (swift_dynamicCast())
    {
      *(&v85 + 1) = v42;
      v84 = v83[0];
      sub_1C5C70758(&v84, v83);
      swift_isUniquelyReferenced_nonNull_native();
      v82 = v13;
      sub_1C5E361A8(v83, 0x5374736163646F70, 0xEC00000065746174);
      v13 = v82;
      goto LABEL_68;
    }
  }

  else
  {
    sub_1C5CBCF4C(&v84);
  }

  v43 = sub_1C5CE2084(0x5374736163646F70, 0xEC00000065746174);
  if (v44)
  {
    v45 = v43;
    swift_isUniquelyReferenced_nonNull_native();
    *&v83[0] = v13;
    sub_1C5CC56E8(0, &qword_1EC1A9268, MEMORY[0x1E69E6DC8]);
    sub_1C6017660();
    v13 = *&v83[0];

    sub_1C5C70758((*(v13 + 56) + 32 * v45), &v84);
    sub_1C6017680();
  }

  else
  {
    v84 = 0u;
    v85 = 0u;
  }

  sub_1C5CBCF4C(&v84);
LABEL_68:
  sub_1C5CC198C(@"podcast-playback-setting-source", &v84);
  if (*(&v85 + 1))
  {
    v46 = MEMORY[0x1E69E6158];
    if (swift_dynamicCast())
    {
      *(&v85 + 1) = v46;
      v84 = v83[0];
      sub_1C5C70758(&v84, v83);
      swift_isUniquelyReferenced_nonNull_native();
      v82 = v13;
      sub_1C5E361A8(v83, 0xD000000000000015, 0x80000001C6048460);
      v13 = v82;
      goto LABEL_76;
    }
  }

  else
  {
    sub_1C5CBCF4C(&v84);
  }

  v47 = sub_1C5CE2084(0xD000000000000015, 0x80000001C6048460);
  if (v48)
  {
    v49 = v47;
    swift_isUniquelyReferenced_nonNull_native();
    *&v83[0] = v13;
    sub_1C5CC56E8(0, &qword_1EC1A9268, MEMORY[0x1E69E6DC8]);
    sub_1C6017660();
    v13 = *&v83[0];

    sub_1C5C70758((*(v13 + 56) + 32 * v49), &v84);
    sub_1C6017680();
  }

  else
  {
    v84 = 0u;
    v85 = 0u;
  }

  sub_1C5CBCF4C(&v84);
LABEL_76:
  sub_1C5CC198C(@"podcast-news-subscription-information", &v84);
  if (*(&v85 + 1))
  {
    v50 = MEMORY[0x1E69E6158];
    if (swift_dynamicCast())
    {
      *(&v85 + 1) = v50;
      v84 = v83[0];
      sub_1C5C70758(&v84, v83);
      swift_isUniquelyReferenced_nonNull_native();
      v82 = v13;
      sub_1C5E361A8(v83, 0xD000000000000014, 0x80000001C6048480);
      v13 = v82;
      goto LABEL_84;
    }
  }

  else
  {
    sub_1C5CBCF4C(&v84);
  }

  v51 = sub_1C5CE2084(0xD000000000000014, 0x80000001C6048480);
  if (v52)
  {
    v53 = v51;
    swift_isUniquelyReferenced_nonNull_native();
    *&v83[0] = v13;
    sub_1C5CC56E8(0, &qword_1EC1A9268, MEMORY[0x1E69E6DC8]);
    sub_1C6017660();
    v13 = *&v83[0];

    sub_1C5C70758((*(v13 + 56) + 32 * v53), &v84);
    sub_1C6017680();
  }

  else
  {
    v84 = 0u;
    v85 = 0u;
  }

  sub_1C5CBCF4C(&v84);
LABEL_84:
  sub_1C5CC198C(@"podcast-music-subscription-information", &v84);
  if (!*(&v85 + 1))
  {
    sub_1C5CBCF4C(&v84);
    goto LABEL_88;
  }

  sub_1C5CC5674(0);
  v55 = v54;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_88:
    v56 = sub_1C5CE2084(0xD000000000000015, 0x80000001C60484A0);
    if (v57)
    {
      v58 = v56;
      swift_isUniquelyReferenced_nonNull_native();
      *&v83[0] = v13;
      sub_1C5CC56E8(0, &qword_1EC1A9268, MEMORY[0x1E69E6DC8]);
      sub_1C6017660();
      v13 = *&v83[0];

      sub_1C5C70758((*(v13 + 56) + 32 * v58), &v84);
      sub_1C6017680();
    }

    else
    {
      v84 = 0u;
      v85 = 0u;
    }

    sub_1C5CBCF4C(&v84);
    goto LABEL_92;
  }

  *(&v85 + 1) = v55;
  *&v84 = *&v83[0];
  sub_1C5C70758(&v84, v83);
  swift_isUniquelyReferenced_nonNull_native();
  v82 = v13;
  sub_1C5E361A8(v83, 0xD000000000000015, 0x80000001C60484A0);
  v13 = v82;
LABEL_92:
  v59 = sub_1C5CC1D3C();
  v60 = MEMORY[0x1E69E6370];
  if (v59 != 2)
  {
    *(&v85 + 1) = MEMORY[0x1E69E6370];
    LOBYTE(v84) = v59 & 1;
    sub_1C5C70758(&v84, v83);
    swift_isUniquelyReferenced_nonNull_native();
    v82 = v13;
    sub_1C5E361A8(v83, 0x64656E6769537369, 0xEA00000000006E49);
    v13 = v82;
  }

  v61 = sub_1C5CC2078();
  if (v61 != 2)
  {
    *(&v85 + 1) = v60;
    LOBYTE(v84) = v61 & 1;
    sub_1C5C70758(&v84, v83);
    swift_isUniquelyReferenced_nonNull_native();
    v82 = v13;
    sub_1C5E361A8(v83, 0x6E696C66664F7369, 0xE900000000000065);
    v13 = v82;
  }

  v62 = MEMORY[0x1E69E63B0];
  v63 = sub_1C5CC2378();
  if ((v64 & 1) == 0)
  {
    *(&v85 + 1) = v62;
    *&v84 = v63;
    sub_1C5C70758(&v84, v83);
    swift_isUniquelyReferenced_nonNull_native();
    v82 = v13;
    sub_1C5E361A8(v83, 0xD000000000000011, 0x80000001C60484C0);
    v13 = v82;
  }

  v65 = sub_1C5CC25D8();
  if (v66)
  {
    *(&v85 + 1) = v6;
    *&v84 = v65;
    *(&v84 + 1) = v66;
    sub_1C5C70758(&v84, v83);
    swift_isUniquelyReferenced_nonNull_native();
    v82 = v13;
    sub_1C5E361A8(v83, 0x6B63616279616C70, 0xEC00000065746152);
    v13 = v82;
  }

  v67 = sub_1C5CC2F1C();
  if ((v68 & 1) == 0)
  {
    *(&v85 + 1) = v62;
    *&v84 = v67;
    sub_1C5C70758(&v84, v83);
    swift_isUniquelyReferenced_nonNull_native();
    v82 = v13;
    sub_1C5E361A8(v83, 0x6172754479616C70, 0xEC0000006E6F6974);
    v13 = v82;
  }

  sub_1C5CC35F4();
  if (v69 != 3)
  {
    if (v69)
    {
      if (v69 == 1)
      {
        v70 = 0xE900000000000063;
        v71 = 0x6974616D6F747561;
      }

      else
      {
        v70 = 0xE700000000000000;
        v71 = 0x6E776F6E6B6E75;
      }
    }

    else
    {
      v70 = 0xE600000000000000;
      v71 = 0x6C61756E616DLL;
    }

    *(&v85 + 1) = v6;
    *&v84 = v71;
    *(&v84 + 1) = v70;
    sub_1C5C70758(&v84, v83);
    swift_isUniquelyReferenced_nonNull_native();
    v82 = v13;
    sub_1C5E361A8(v83, 0x65707954706F7473, 0xE800000000000000);
    v72 = v82;
    v73 = NSPersistentStringFromMTStopReason();
    v74 = sub_1C6016940();
    v76 = v75;

    *(&v85 + 1) = v6;
    *&v84 = v74;
    *(&v84 + 1) = v76;
    sub_1C5C70758(&v84, v83);
    swift_isUniquelyReferenced_nonNull_native();
    v82 = v72;
    sub_1C5E361A8(v83, 0x73616552706F7473, 0xEA00000000006E6FLL);
    v13 = v82;
  }

  v77 = sub_1C5CC4170();
  if (v78)
  {
    *(&v85 + 1) = v6;
    *&v84 = v77;
    *(&v84 + 1) = v78;
    sub_1C5C70758(&v84, v83);
    swift_isUniquelyReferenced_nonNull_native();
    v82 = v13;
    sub_1C5E361A8(v83, 0x746E6F4379616C70, 0xEB00000000747865);
    v13 = v82;
  }

  v79 = sub_1C5CC4444();
  if (v80)
  {
    *(&v85 + 1) = v6;
    *&v84 = v79;
    *(&v84 + 1) = v80;
    sub_1C5C70758(&v84, v83);
    swift_isUniquelyReferenced_nonNull_native();
    v82 = v13;
    sub_1C5E361A8(v83, 0x4465636E61686E65, 0xEF6575676F6C6169);
    return v82;
  }

  return v13;
}

uint64_t sub_1C5CC00E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v28 = a3;
  v13 = sub_1C6016630();
  v32 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C6016690();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5C64D74(0, &qword_1ED7DCE50, 0x1E69E9610);
  v29 = sub_1C6016FD0();
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v20 = v28;
  v19[4] = a5;
  v19[5] = v20;
  v19[6] = a4;
  v19[7] = a6;
  v19[8] = a7;
  aBlock[4] = sub_1C5CC5AF4;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C5DBC798;
  aBlock[3] = &block_descriptor_39;
  v21 = _Block_copy(aBlock);

  v22 = a6;
  v23 = a7;

  sub_1C6016670();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C5C660B0(&qword_1ED7DC2A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v24 = MEMORY[0x1E69E7F60];
  sub_1C5CC53A8(0, &qword_1ED7DC288, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1C5CC5A78(&qword_1ED7DC280, &qword_1ED7DC288, v24);
  sub_1C60173B0();
  v25 = v29;
  MEMORY[0x1C6953AC0](0, v18, v15, v21);
  _Block_release(v21);

  (*(v32 + 8))(v15, v13);
  return (*(v30 + 8))(v18, v31);
}

void sub_1C5CC042C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v11 = MEMORY[0x1E69E6158];
  if (a2)
  {
    v45 = MEMORY[0x1E69E6158];
    v43 = a1;
    v44 = a2;
    swift_beginAccess();

    sub_1C5E2229C(&v43, 0x644972657375, 0xE600000000000000);
    swift_endAccess();
  }

  if (a5)
  {
    v45 = v11;
    v43 = a4;
    v44 = a5;
    swift_beginAccess();

    sub_1C5E2229C(&v43, 0x6449746E65696C63, 0xE800000000000000);
    swift_endAccess();
  }

  if (MSVDeviceOSIsInternalInstall())
  {
    sub_1C5CD47E4();
    if (v12)
    {
      v13 = sub_1C6016900();

      sub_1C5CD47F0();
      if (v14)
      {
        v15 = sub_1C6016900();

        if (qword_1EC1A9580 != -1)
        {
          swift_once();
        }

        v16 = sub_1C60162D0();
        __swift_project_value_buffer(v16, qword_1EC1BE420);
        v17 = a6;
        v18 = v13;
        v19 = v15;

        v20 = sub_1C60162B0();
        v21 = sub_1C6016F30();

        if (os_log_type_enabled(v20, v21))
        {
          v40 = v21;
          v22 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v43 = v41;
          *v22 = 141560323;
          *(v22 + 4) = 1752392040;
          *(v22 + 12) = 2081;
          *(v22 + 14) = sub_1C5C6AB10(2036427888, 0xE400000000000000, &v43);
          *(v22 + 22) = 2160;
          *(v22 + 24) = 1752392040;
          *(v22 + 32) = 2081;
          v23 = [v17 type];
          v24 = sub_1C6016940();
          v26 = v25;

          v27 = sub_1C5C6AB10(v24, v26, &v43);

          *(v22 + 34) = v27;
          *(v22 + 42) = 2160;
          *(v22 + 44) = 1752392040;
          *(v22 + 52) = 2113;
          *(v22 + 54) = v18;
          *(v22 + 62) = 2160;
          *(v22 + 64) = 1752392040;
          *(v22 + 72) = 2113;
          *(v22 + 74) = v19;
          *v42 = v18;
          v42[1] = v19;
          *(v22 + 82) = 2160;
          *(v22 + 84) = 1752392040;
          *(v22 + 92) = 2081;
          swift_beginAccess();
          v28 = v18;
          v29 = v19;

          v30 = sub_1C6016870();
          v32 = v31;

          v33 = sub_1C5C6AB10(v30, v32, &v43);

          *(v22 + 94) = v33;
          _os_log_impl(&dword_1C5C61000, v20, v40, "Reporting: %{private,mask.hash}s\nEVS: %{private,mask.hash}s\nItemID: %{private,mask.hash}@\nSectionID: %{private,mask.hash}@\nData: %{private,mask.hash}s", v22, 0x66u);
          sub_1C5CC55A0(0);
          swift_arrayDestroy();
          MEMORY[0x1C6956920](v42, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x1C6956920](v41, -1, -1);
          MEMORY[0x1C6956920](v22, -1, -1);
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  v34 = objc_opt_self();
  v35 = sub_1C6016900();
  swift_beginAccess();

  sub_1C5E10480();
  v37 = v36;

  v38 = sub_1C6016900();
  sub_1C5CC54F4(v35, 0, v37, v38, v34);

  v39 = [objc_opt_self() defaultCenter];
  if (qword_1EC1A9740 != -1)
  {
    swift_once();
  }

  [v39 postNotificationName:qword_1EC1BE4B8 object:a7];
}