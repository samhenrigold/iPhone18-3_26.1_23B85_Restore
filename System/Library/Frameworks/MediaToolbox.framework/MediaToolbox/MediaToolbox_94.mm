void itemfig_createRenderTriplesForMultichannelVideoTargets()
{
  OUTLINED_FUNCTION_649();
  v448 = v0;
  v2 = v1;
  v4 = v3;
  ValueAtIndex = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  value_low = v13;
  v16 = v15;
  v510 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  UInt32 = *(DerivedStorage + 1);
  v19 = CMBaseObjectGetDerivedStorage();
  v495 = 0;
  v493 = 0u;
  *v494 = 0u;
  v491 = 0;
  v492 = 0;
  if (value_low)
  {
    v8 = 0;
    OUTLINED_FUNCTION_15_0();
    v10 = 0;
    goto LABEL_532;
  }

  theArray = v12;
  HIDWORD(v447) = v8;
  v475 = v10;
  v438 = UInt32;
  v439 = v19;
  v452 = DerivedStorage;
  v20 = MEMORY[0x1E695E480];
  v477 = v16;
  if (!*(DerivedStorage + 82))
  {
    FigSimpleMutexLock();
    v32 = *(v439 + 272);
    if (v32)
    {
      value_low = CFRetain(v32);
      FigSimpleMutexUnlock();
      if (value_low)
      {
        v451 = value_low;
        if (CFArrayGetCount(value_low) >= 1)
        {
          value_low = DerivedStorage;
          v33 = *(DerivedStorage + 136);
          v442 = v4;
          v445 = v2;
          v440 = ValueAtIndex;
          if (v33)
          {
            CFArrayRemoveAllValues(v33);
            goto LABEL_139;
          }

          Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
          *(DerivedStorage + 136) = Mutable;
          if (Mutable)
          {
LABEL_139:
            v133 = *(DerivedStorage + 81);
            v2 = v16;
            if (v133)
            {
              Count = CFArrayGetCount(v133);
              if (Count >= 1)
              {
                value_low = Count;
                v135 = 0;
                v4 = MEMORY[0x1E695E9C0];
                do
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 81), v135);
                  v136 = *(ValueAtIndex + 216);
                  if (v136)
                  {
                    CFArrayRemoveAllValues(v136);
                  }

                  else
                  {
                    v137 = OUTLINED_FUNCTION_383();
                    v139 = CFArrayCreateMutable(v137, v138, v4);
                    *(ValueAtIndex + 216) = v139;
                    if (!v139)
                    {
                      goto LABEL_590;
                    }
                  }

                  ++v135;
                }

                while (value_low != v135);
              }
            }

            v10 = v451;
            value_low = DerivedStorage;
            v140 = *(DerivedStorage + 141);
            if (v140)
            {
              CFArrayRemoveAllValues(v140);
              v8 = MEMORY[0x1E695E480];
            }

            else
            {
              v8 = MEMORY[0x1E695E480];
              v141 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
              *(DerivedStorage + 141) = v141;
              if (!v141)
              {
                OUTLINED_FUNCTION_41_0();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", p_tagCollection, v411, v413);
                goto LABEL_605;
              }
            }

            v449 = CFArrayGetCount(v451);
            if (v449 < 1)
            {
              LODWORD(v458) = 0;
            }

            else
            {
              v143 = 0;
              isa = v8->isa;
              alloca = *(MEMORY[0x1E6963198] + 8);
              theArrayb = *MEMORY[0x1E6963198];
              *&v142 = 136315394;
              v446 = v142;
              do
              {
                v454 = v143;
                value = CFArrayGetValueAtIndex(v451, v143);
                v145 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                if (v145)
                {
                  LODWORD(v458) = v145(value, isa, &v492);
                }

                else
                {
                  OUTLINED_FUNCTION_311_0();
                }

                if (v492)
                {
                  v472 = CFArrayGetCount(v492);
                  if (v472 >= 1)
                  {
                    DataChannelByIndex = 0;
                    while (1)
                    {
                      v4 = CFArrayGetValueAtIndex(v492, DataChannelByIndex);
                      v147 = CMBaseObjectGetDerivedStorage();
                      *&v508 = 0;
                      CountOfDataChannels = FigDataChannelGroupGetCountOfDataChannels(v4, v148);
                      if (CountOfDataChannels < 1 || (ValueAtIndex = CountOfDataChannels, (v150 = *(v147 + 648)) == 0))
                      {
                        value_low = 0;
                        OUTLINED_FUNCTION_158_0();
                        v16 = 0;
                        DerivedStorage = 0;
                        goto LABEL_224;
                      }

                      v151 = CFArrayGetCount(v150);
                      if (v151 < 1)
                      {
                        value_low = 0;
LABEL_272:
                        OUTLINED_FUNCTION_158_0();
                        v16 = 0;
                        DerivedStorage = 0;
                        v2 = v477;
                        goto LABEL_224;
                      }

                      v2 = v151;
                      v152 = OUTLINED_FUNCTION_383();
                      value_low = CFDictionaryCreateMutable(v152, v153, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                      if (!value_low)
                      {
                        goto LABEL_272;
                      }

                      v154 = 0;
                      v155 = 0;
                      keya = 0;
                      v462 = ValueAtIndex;
                      v465 = v4;
                      do
                      {
                        LODWORD(v467[0]) = v154;
                        theDict = v155;
                        DataChannelByIndex = FigDataChannelGroupGetDataChannelByIndex(v4, v155);
                        v156 = 0;
                        ValueAtIndex = 0;
                        do
                        {
                          v4 = CFArrayGetValueAtIndex(*(v147 + 648), v156);
                          if (FigTagCollectionCreateMutableCopy())
                          {
                            OUTLINED_FUNCTION_158_0();
                            v16 = 0;
                            DerivedStorage = 0;
                            v181 = 1;
                            OUTLINED_FUNCTION_366_0();
                            goto LABEL_225;
                          }

                          if (*(v4 + 200))
                          {
                            FigTagCollectionAddTagsFromCollection();
                          }

                          if (*(v147 + 1097))
                          {
                            v511.value = alloca;
                            *&v511.category = theArrayb;
                            CMTagCollectionAddTag(v508, v511);
                          }

                          if (CMTagCollectionContainsTagsOfCollection(v508, DataChannelByIndex) || (v512.value = *"vyna", *&v512.category = 0x40000005706C7972, CMTagCollectionContainsTag(DataChannelByIndex, v512)) && *(v147 + 1040) == *v4)
                          {
                            tagCollection.value = 0;
                            UInt32 = FigCFNumberCreateUInt32();
                            if (!UInt32 || (v157 = FigCFNumberCreateUInt32()) == 0)
                            {
                              OUTLINED_FUNCTION_41_0();
                              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", p_tagCollection, v411, v413);
                              DerivedStorage = 0;
                              v16 = 0;
                              OUTLINED_FUNCTION_366_0();
                              goto LABEL_245;
                            }

                            v4 = v157;
                            OUTLINED_FUNCTION_627();
                            if (FigCFDictionaryGetValueIfPresent())
                            {
                              if (tagCollection.value)
                              {
                                v158 = CFArrayGetCount(tagCollection.value);
                                if (v158 >= 1)
                                {
                                  v159 = v158;
                                  ValueAtIndex = 0;
                                  while (1)
                                  {
                                    CFArrayGetValueAtIndex(tagCollection.value, ValueAtIndex);
                                    if (FigCFEqual())
                                    {
                                      break;
                                    }

                                    if (v159 == ++ValueAtIndex)
                                    {
                                      goto LABEL_182;
                                    }
                                  }

LABEL_221:
                                  v16 = 0;
                                  goto LABEL_222;
                                }
                              }
                            }

                            else
                            {
                              v160 = OUTLINED_FUNCTION_383();
                              v162 = CFArrayCreateMutable(v160, v161, MEMORY[0x1E695E9C0]);
                              v163 = OUTLINED_FUNCTION_627();
                              CFDictionarySetValue(v163, v164, v162);
                              tagCollection.value = v162;
                              CFRelease(v162);
                            }

LABEL_182:
                            CFArrayAppendValue(tagCollection.value, UInt32);
                            if (*(v147 + 1097))
                            {
                              v513.value = alloca;
                              *&v513.category = theArrayb;
                              v165 = CMTagCollectionContainsTag(DataChannelByIndex, v513);
                              v166 = keya;
                              if (v165)
                              {
                                v166 = 1;
                              }

                              keya = v166;
                            }

                            CFRelease(UInt32);
                            CFRelease(v4);
                            ValueAtIndex = 1;
                          }

                          if (v508)
                          {
                            CFRelease(v508);
                            *&v508 = 0;
                          }

                          ++v156;
                        }

                        while (v156 != v2);
                        if (!ValueAtIndex)
                        {
                          OUTLINED_FUNCTION_158_0();
                          goto LABEL_221;
                        }

                        v155 = theDict + 1;
                        v154 = 1;
                        ValueAtIndex = v462;
                        v4 = v465;
                      }

                      while ((theDict + 1) != v462);
                      v16 = FigCFDictionaryCopyArrayOfKeys();
                      if (CFArrayGetCount(v16) < 1)
                      {
                        LODWORD(v467[0]) = 1;
                        goto LABEL_248;
                      }

                      v4 = 0;
                      DataChannelByIndex = 1;
                      while (2)
                      {
                        CFArrayGetValueAtIndex(v16, v4);
                        SInt32 = FigCFNumberGetSInt32();
                        v168 = OUTLINED_FUNCTION_624();
                        v170 = CFDictionaryGetValue(v168, v169);
                        ValueAtIndex = v170;
                        if (!v170 || (v171 = CFArrayGetCount(v170), v171 < 2))
                        {
                          v2 = DataChannelByIndex;
                          goto LABEL_215;
                        }

                        LODWORD(theDict) = DataChannelByIndex;
                        UInt32 = (v171 + 1);
                        while (2)
                        {
                          v172 = OUTLINED_FUNCTION_195_0();
                          CFArrayGetValueAtIndex(v172, v173);
                          v174 = FigCFNumberGetSInt32();
                          v175 = CMBaseObjectGetDerivedStorage();
                          switch(SInt32)
                          {
                            case 1635088502:
                              v176 = 1040;
                              break;
                            case 1668047728:
                              v176 = 1048;
                              break;
                            case 1751216244:
                              v176 = 1080;
                              break;
                            case 1935832172:
                              goto LABEL_205;
                            default:
                              v176 = 1040;
                              switch(SInt32)
                              {
                                case 1986618469:
                                  goto LABEL_209;
                                case 1952807028:
LABEL_205:
                                  v176 = 1056;
                                  break;
                                case 1936684398:
                                  v176 = 1036;
                                  break;
                                default:
                                  goto LABEL_220;
                              }

                              break;
                          }

LABEL_209:
                          v177 = *(v175 + v176);
                          if (v177)
                          {
                            if (v174 != v177)
                            {
                              v178 = OUTLINED_FUNCTION_195_0();
                              CFArrayRemoveValueAtIndex(v178, v179);
                            }

                            UInt32 = (UInt32 - 1);
                            if (UInt32 <= 1)
                            {
                              v2 = DataChannelByIndex;
                              goto LABEL_215;
                            }

                            continue;
                          }

                          break;
                        }

LABEL_220:
                        v2 = 0;
LABEL_215:
                        if (CFArrayGetCount(ValueAtIndex) == 1)
                        {
                          DataChannelByIndex = v2;
                        }

                        else
                        {
                          DataChannelByIndex = 0;
                        }

                        if (++v4 < CFArrayGetCount(v16))
                        {
                          continue;
                        }

                        break;
                      }

                      LODWORD(v467[0]) = v2;
                      if (!DataChannelByIndex)
                      {
                        OUTLINED_FUNCTION_158_0();
LABEL_222:
                        DerivedStorage = 0;
                        OUTLINED_FUNCTION_366_0();
LABEL_224:
                        v181 = v180 == 0;
                        goto LABEL_225;
                      }

LABEL_248:
                      DerivedStorage = FigCFDictionaryCopyArrayOfValues();
                      v4 = 0;
                      OUTLINED_FUNCTION_366_0();
                      if (DerivedStorage)
                      {
LABEL_249:
                        v183 = CFArrayGetCount(DerivedStorage);
                        goto LABEL_251;
                      }

LABEL_250:
                      v183 = 0;
LABEL_251:
                      if (v4 >= v183)
                      {
                        break;
                      }

                      tagCollection.value = 0;
                      CFArrayGetValueAtIndex(DerivedStorage, v4);
                      LODWORD(newCollectionOut.value) = 0;
                      FigCFArrayGetInt32AtIndex();
                      if (LODWORD(newCollectionOut.value))
                      {
                        TrackStorage = itemfig_getTrackStorage(v2, LODWORD(newCollectionOut.value), &tagCollection);
                        if (TrackStorage)
                        {
                          goto LABEL_274;
                        }

                        ValueAtIndex = tagCollection.value;
                        CFArrayAppendValue(*(tagCollection.value + 216), value);
                        if (!FigCFArrayContainsInt32())
                        {
                          FigCFArrayAppendInt32();
                        }

                        OUTLINED_FUNCTION_33();
                        v185 = v185 || v184 == 1635088502;
                        if (v185)
                        {
                          v186 = *(ValueAtIndex + 208);
                          if (v186)
                          {
                            if (CFArrayGetCount(v186) >= 1)
                            {
                              v187 = *(ValueAtIndex + 232);
                              if (v187)
                              {
                                CFRelease(v187);
                                *(ValueAtIndex + 232) = 0;
                              }

                              v188 = OUTLINED_FUNCTION_383();
                              *(ValueAtIndex + 232) = CFArrayCreateMutableCopy(v188, v189, v190);
                            }
                          }
                        }

                        ++v4;
                        if (DerivedStorage)
                        {
                          goto LABEL_249;
                        }

                        goto LABEL_250;
                      }

                      OUTLINED_FUNCTION_41_0();
                      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", p_tagCollection, v411, v413);
LABEL_274:
                      UInt32 = 0;
LABEL_245:
                      v4 = 0;
                      if (!TrackStorage)
                      {
                        goto LABEL_271;
                      }

                      v181 = 1;
LABEL_225:
                      if (value_low)
                      {
                        CFRelease(value_low);
                      }

                      if (v508)
                      {
                        CFRelease(v508);
                      }

                      if (UInt32)
                      {
                        CFRelease(UInt32);
                      }

                      if (v4)
                      {
                        CFRelease(v4);
                      }

                      if (v16)
                      {
                        CFRelease(v16);
                      }

                      if (DerivedStorage)
                      {
                        CFRelease(DerivedStorage);
                      }

                      if (!v181)
                      {
                        goto LABEL_282;
                      }

                      if (++DataChannelByIndex == v472)
                      {
                        goto LABEL_276;
                      }
                    }

                    if (keya)
                    {
                      CFArrayAppendValue(*(v147 + 1128), value);
                    }

                    OUTLINED_FUNCTION_158_0();
LABEL_271:
                    v180 = v467[0];
                    goto LABEL_224;
                  }
                }

LABEL_276:
                LODWORD(newCollectionOut.value) = 0;
                LOBYTE(v498.value) = 0;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                value_low = LODWORD(newCollectionOut.value);
                v4 = LOBYTE(v498.value);
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v498.value);
                OUTLINED_FUNCTION_425();
                if (v185)
                {
                  v193 = v192;
                }

                else
                {
                  v193 = value_low;
                }

                if (v193)
                {
                  LODWORD(tagCollection.value) = v446;
                  *(&tagCollection.value + 4) = "itemfig_createRenderTriplesForMultichannelVideoTargets";
                  LOWORD(tagCollection.flags) = 2112;
                  *(&tagCollection.flags + 2) = v492;
                  LODWORD(v411) = 22;
                  p_tagCollection = &tagCollection;
                  OUTLINED_FUNCTION_108();
                  _os_log_send_and_compose_impl(v194, v195, v196, v197, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v4, "<<<< FigFilePlayer >>>> %s: No matched track for video target with channel group: %@");
                  value_low = LODWORD(newCollectionOut.value);
                }

                OUTLINED_FUNCTION_16();
                OUTLINED_FUNCTION_635(v198, v199, v200, v201, v202);
LABEL_282:
                if (v492)
                {
                  CFRelease(v492);
                  v492 = 0;
                }

                v143 = v454 + 1;
                v8 = MEMORY[0x1E695E480];
              }

              while (v454 + 1 != v449);
            }

            v203 = *(v452 + 1128);
            if (v203 && CFArrayGetCount(v203) >= 1)
            {
              v204 = CMBaseObjectGetDerivedStorage();
              v10 = v451;
              if (*(v204 + 1120))
              {
LABEL_294:
                value_low = CMBaseObjectGetDerivedStorage();
                tagCollection.value = 0;
                newCollectionOut.value = 0;
                v508 = *MEMORY[0x1E6963198];
                v8 = MEMORY[0x1E695E480];
                v207 = CMTagCollectionCreate(*MEMORY[0x1E695E480], &v508, 1, &newCollectionOut);
                if (v207)
                {
                  v214 = v207;
                  goto LABEL_577;
                }

                v208 = *(value_low + 1128);
                if (!v208 || CFArrayGetCount(v208) < 1)
                {
                  v214 = 0;
                  goto LABEL_577;
                }

                v4 = @"FDCR_ProcessingStateDidChange";
                while (1)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(*(value_low + 1128), 0);
                  if (!CFDictionaryContainsKey(*(value_low + 1136), ValueAtIndex))
                  {
                    if (!*(value_low + 1120))
                    {
                      OUTLINED_FUNCTION_41_0();
                      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", p_tagCollection, v411, v413);
LABEL_608:
                      v214 = v211;
                      goto LABEL_575;
                    }

                    if (!*(*(CMBaseObjectGetVTable() + 16) + 40))
                    {
                      v214 = -12782;
LABEL_575:
                      v2 = v477;
LABEL_576:
                      v10 = v451;
                      v8 = MEMORY[0x1E695E480];
LABEL_577:
                      v460 = v214;
                      if (newCollectionOut.value)
                      {
                        CFRelease(newCollectionOut.value);
                        v214 = v460;
                      }

                      if (tagCollection.value)
                      {
                        CFRelease(tagCollection.value);
                        v214 = v460;
                      }

                      if (!v214)
                      {
                        LODWORD(v458) = 0;
                        goto LABEL_311;
                      }

LABEL_605:
                      v8 = 0;
                      OUTLINED_FUNCTION_15_0();
                      goto LABEL_532;
                    }

                    v209 = OUTLINED_FUNCTION_249();
                    v211 = v210(v209);
                    if (v211)
                    {
                      goto LABEL_608;
                    }

                    CMNotificationCenterGetDefaultLocalCenter();
                    OUTLINED_FUNCTION_186();
                    v211 = FigNotificationCenterAddWeakListener();
                    if (v211)
                    {
                      goto LABEL_608;
                    }

                    if (*(*(CMBaseObjectGetVTable() + 16) + 32))
                    {
                      v212 = OUTLINED_FUNCTION_732();
                      v213(v212);
                    }

                    CFDictionarySetValue(*(value_low + 1136), ValueAtIndex, tagCollection.value);
                    v2 = v477;
                    if (tagCollection.value)
                    {
                      CFRelease(tagCollection.value);
                      tagCollection.value = 0;
                    }
                  }

                  OUTLINED_FUNCTION_378_0();
                  if (v185)
                  {
                    v214 = 0;
                    goto LABEL_576;
                  }
                }
              }

              value_low = v204;
              v8 = *(v204 + 128);
              if (v8)
              {
                if (*(v204 + 1097))
                {
                  *&v508 = 0;
                  v4 = *(v204 + 1104);
                  if (*(*(CMBaseObjectGetVTable() + 16) + 32))
                  {
                    v205 = OUTLINED_FUNCTION_266();
                    v10 = v451;
                    if (v206(v205))
                    {
                      goto LABEL_605;
                    }

                    goto LABEL_294;
                  }

                  v8 = 0;
                  OUTLINED_FUNCTION_15_0();
                  OUTLINED_FUNCTION_311_0();
LABEL_568:
                  v10 = v451;
                  goto LABEL_532;
                }

                v8 = 0;
              }

              OUTLINED_FUNCTION_15_0();
              goto LABEL_532;
            }

            itemfig_releaseAIMEDataAndAllAIMEDataChannelResources(v2);
            v10 = v451;
LABEL_311:
            v215 = *(v452 + 1088);
            if (!v215 || (v216 = CFArrayGetCount(v215), v216 < 1))
            {
              OUTLINED_FUNCTION_164_0();
              ValueAtIndex = 0;
              UInt32 = 0;
              DerivedStorage = 0;
              v466 = 0;
LABEL_513:
              if (v440)
              {
                *v440 = v466;
                v16 = 0;
              }

              else
              {
                v16 = v466;
              }

              if (v442)
              {
                *v442 = DerivedStorage;
                DerivedStorage = 0;
              }

              OUTLINED_FUNCTION_157_0();
              if (v445)
              {
                *v404 = UInt32;
                UInt32 = 0;
              }

              goto LABEL_532;
            }

            v217 = v216;
            v4 = 0;
            v466 = 0;
            DerivedStorage = 0;
            UInt32 = 0;
            ValueAtIndex = 0;
            value_low = 0;
            v218 = v8;
            v8 = 0;
            allocatora = *v218;
            v430 = @"ChannelDescription";
            v428 = &v494[1];
            v436 = @"DemuxLayerID";
            v422 = @"PreventDisplaySleepDuringVideoPlayback";
            v434 = *MEMORY[0x1E695E4D0];
            v432 = *MEMORY[0x1E695E4C0];
            v416 = @"VideoEnhancementMode";
            v420 = @"ObeyEmptyMediaMarkers";
            v418 = @"PropagatePerFrameHDRDisplayMetadata";
            v426 = @"AttachmentCollectorMetadataSourceBuffers";
            v424 = @"MappingFromFormatDescriptionsToSidebandVideoPropertiesLookupIDs";
            v437 = @"ControlTimebase";
            v463 = @"SampleBufferConsumer";
            v435 = @"OutputArrayOfSampleBufferConsumers";
            v473 = v216;
            while (1)
            {
              v490 = 0;
              v489 = 0;
              FigCFArrayGetInt32AtIndex();
              itemfig_getTrackStorage(v2, v490, &v489);
              if (!v489)
              {
LABEL_586:
                OUTLINED_FUNCTION_41_0();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_587:
                OUTLINED_FUNCTION_157_0();
                goto LABEL_588;
              }

              v219 = *(v489 + 27);
              if (v219)
              {
                *&v474.category = v489;
                if (CFArrayGetCount(v219) >= 1)
                {
                  OUTLINED_FUNCTION_33();
                  v230 = v185 || v228 == 1635088502;
                  theArrayc = UInt32;
                  v450 = v4;
                  if (!v230)
                  {
                    if (!DerivedStorage)
                    {
                      v231 = OUTLINED_FUNCTION_391_0(v220, v221, v222, v223, v224, v225, v226, v227, p_tagCollection, v411, v413, v414, v416, v418, v420, v422, v424, v426, v428, v430, v432, v434, v435, v436, v437, v438, v439, v440, v442, v445, v446, *(&v446 + 1), v447, v448, v4, v451, v452, v454, value, v458, v463, v466, v467[0], v467[1], theDict, v473, *&v474.category, v474.value, v477, allocatora);
                      v233 = CFArrayCreateMutable(v231, v232, &_MergedGlobals);
                      v229 = *&v474.category;
                      DerivedStorage = v233;
                      if (!v233)
                      {
                        goto LABEL_586;
                      }
                    }

                    v234 = *(v229 + 264);
                    if (v234)
                    {
                      CFRelease(v234);
                      v229 = *&v474.category;
                      *(*&v474.category + 264) = 0;
                    }

                    if (!*(v229 + 240))
                    {
                      v235 = OUTLINED_FUNCTION_391_0(v234, v221, v222, v223, v224, v225, v226, v227, p_tagCollection, v411, v413, v414, v416, v418, v420, v422, v424, v426, v428, v430, v432, v434, v435, v436, v437, v438, v439, v440, v442, v445, v446, *(&v446 + 1), v447, v448, v450, v451, v452, v454, value, v458, v463, v466, v467[0], v467[1], theDict, v473, *&v474.category, v474.value, v477, allocatora);
                      v237 = CFDictionaryCreateMutable(v235, v236, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                      v229 = *&v474.category;
                      *(*&v474.category + 240) = v237;
                      if (!v237)
                      {
                        goto LABEL_586;
                      }
                    }

                    LODWORD(v493) = *v229;
                    *v467 = *MEMORY[0x1E6960C70];
                    v508 = *MEMORY[0x1E6960C70];
                    v4 = *(MEMORY[0x1E6960C70] + 16);
                    OUTLINED_FUNCTION_183_0();
                    v238 = OUTLINED_FUNCTION_490();
                    if (fp_createCommonRenderPipelineOptionsForTrack(v238, v239, v240, v241, v242, 0, v243))
                    {
                      goto LABEL_587;
                    }

                    itemfig_reuseExistingRenderPipeline(*(v452 + 448), &v493);
                    v244 = v494[1];
                    v245 = *&v474.category;
                    if (!v494[1])
                    {
                      v508 = *v467;
                      OUTLINED_FUNCTION_183_0();
                      v294 = OUTLINED_FUNCTION_490();
                      CommonRenderPipelineOptionsForTrack = fp_createCommonRenderPipelineOptionsForTrack(v294, v295, v296, v297, v298, 1, v299);
                      if (CommonRenderPipelineOptionsForTrack)
                      {
                        goto LABEL_587;
                      }

                      v308 = OUTLINED_FUNCTION_391_0(CommonRenderPipelineOptionsForTrack, v301, v302, v303, v304, v305, v306, v307, p_tagCollection, v411, v413, v414, v416, v418, v420, v422, v424, v426, v428, v430, v432, v434, v435, v436, v437, v438, v439, v440, v442, v445, v446, *(&v446 + 1), v447, v448, v450, v451, v452, v454, value, v458, v463, v466, v467[0], v467[1], theDict, v473, *&v474.category, v474.value, v477, allocatora);
                      if (FigRenderPipelineCreateForFanOutToArrayOfSampleBufferConsumers(v308, v309, v428))
                      {
                        goto LABEL_587;
                      }

                      v244 = v494[1];
                      v245 = *&v474.category;
                    }

                    *&v446 = v244;
                    v246 = *(v245 + 216);
                    theDict = *(v245 + 240);
                    v454 = CMBaseObjectGetDerivedStorage();
                    cf = 0;
                    *type = 0;
                    *&newCollectionOut.value = *v467;
                    newCollectionOut.epoch = v4;
                    *&v498.value = *v467;
                    v498.epoch = v4;
                    v247 = v246;
                    FPSupport_getDataQueueWaterLevels(&newCollectionOut, &v498);
                    if (v246)
                    {
                      v256 = CFArrayGetCount(v246);
                      v467[0] = CFArrayCreateMutable(allocatora, v256, MEMORY[0x1E695E9C0]);
                      if (v467[0])
                      {
                        if (v256 >= 1)
                        {
                          value = v256;
                          v458 = v247;
                          v257 = 0;
                          while (1)
                          {
                            v258 = CFArrayGetValueAtIndex(v458, v257);
                            v259 = CFDictionaryGetValue(theDict, v258);
                            cf = v259;
                            if (v259)
                            {
                              CFRetain(v259);
                            }

                            else
                            {
                              v497 = v498;
                              v496 = newCollectionOut;
                              v217 = v473;
                              if (!*(*(CMBaseObjectGetVTable() + 16) + 32))
                              {
                                break;
                              }

                              v508 = *&v497.value;
                              epoch = v497.epoch;
                              tagCollection = v496;
                              v260 = OUTLINED_FUNCTION_266_0();
                              v262 = v261(v260);
                              if (v262)
                              {
                                LODWORD(v458) = v262;
                                v2 = v477;
                                UInt32 = theArrayc;
LABEL_354:
                                v217 = v473;
                                goto LABEL_355;
                              }

                              v263 = *(v454 + 328);
                              FigDataQueueGetCMBaseObject();
                              v265 = v264;
                              v266 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                              if (v266)
                              {
                                v266(v265, v437, v263);
                              }

                              CFDictionarySetValue(theDict, v258, cf);
                              UInt32 = theArrayc;
                            }

                            v217 = v473;
                            FigDataQueueGetCMBaseObject();
                            v268 = v267;
                            v269 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                            if (!v269)
                            {
                              break;
                            }

                            v270 = v269(v268, v463, allocatora, type);
                            if (v270)
                            {
                              LODWORD(v458) = v270;
                              goto LABEL_352;
                            }

                            CFArrayAppendValue(v467[0], *type);
                            v2 = v477;
                            if (cf)
                            {
                              CFRelease(cf);
                              cf = 0;
                            }

                            if (*type)
                            {
                              CFRelease(*type);
                              *type = 0;
                            }

                            if (value == ++v257)
                            {
                              goto LABEL_349;
                            }
                          }

                          OUTLINED_FUNCTION_311_0();
LABEL_352:
                          v2 = v477;
                          goto LABEL_355;
                        }

LABEL_349:
                        FigRenderPipelineGetFigBaseObject();
                        v274 = v273;
                        v275 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                        if (!v275)
                        {
                          OUTLINED_FUNCTION_311_0();
                          goto LABEL_354;
                        }

                        v217 = v473;
                        LODWORD(v458) = v275(v274, v435, v467[0]);
LABEL_355:
                        CFRelease(v467[0]);
                        v4 = v450;
                        if (cf)
                        {
                          CFRelease(cf);
                        }

LABEL_357:
                        if (*type)
                        {
                          CFRelease(*type);
                        }

                        if (v458)
                        {
                          goto LABEL_587;
                        }

                        v276 = v494[1];
                        if (v494[1])
                        {
                          v276 = CFRetain(v494[1]);
                        }

                        *(*&v474.category + 264) = v276;
                        CFArrayAppendValue(DerivedStorage, &v493);
                        itemfig_resetRenderTriple(&v493);
                        LODWORD(v458) = 0;
                        goto LABEL_363;
                      }
                    }

                    else
                    {
                      v271 = OUTLINED_FUNCTION_391_0(v248, v249, v250, v251, v252, v253, v254, v255, p_tagCollection, v411, v413, v414, v416, v418, v420, v422, v424, v426, v428, v430, v432, v434, v435, v436, v437, v438, v439, v440, v442, v445, v446, *(&v446 + 1), v447, v448, v450, v451, v452, v454, value, v458, v463, v466, v467[0], v467[1], theDict, v473, *&v474.category, v474.value, v477, allocatora);
                      v467[0] = CFArrayCreateMutable(v271, v272, MEMORY[0x1E695E9C0]);
                      if (v467[0])
                      {
                        goto LABEL_349;
                      }
                    }

                    OUTLINED_FUNCTION_41_0();
                    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", p_tagCollection, v411, v413);
                    LODWORD(v458) = v397;
                    v4 = v450;
                    v217 = v473;
                    goto LABEL_357;
                  }

                  *&v508 = 0;
                  tagCollection.value = 0;
                  newCollectionOut.value = 0;
                  itemfig_getTrackStorage(v2, v490, &v508);
                  v4 = v508;
                  if (v508)
                  {
                    if (!FigTagCollectionCreateMutableCopy())
                    {
                      if (*(v4 + 200))
                      {
                        FigTagCollectionAddTagsFromCollection();
                      }

                      v277 = *(v4 + 272);
                      if (v277)
                      {
                        CFRelease(v277);
                        *(v4 + 272) = 0;
                      }

                      v278 = *(v4 + 216);
                      if (v278)
                      {
                        v279 = CFArrayGetCount(v278);
                        if (v279 >= 1)
                        {
                          v280 = v279;
                          v281 = 0;
                          theDict = v4;
                          do
                          {
                            v282 = CFArrayGetValueAtIndex(*(v4 + 216), v281);
                            v283 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                            if (v283)
                            {
                              v283(v282, allocatora, &newCollectionOut);
                            }

                            if (newCollectionOut.value)
                            {
                              v284 = CFArrayGetCount(newCollectionOut.value);
                              if (v284 >= 1)
                              {
                                v285 = v284;
                                v286 = 0;
                                while (1)
                                {
                                  v287 = CFArrayGetValueAtIndex(newCollectionOut.value, v286);
                                  v288 = CFDictionaryGetValue(v287, v430);
                                  if (CMTagCollectionContainsTagsOfCollection(tagCollection.value, v288))
                                  {
                                    v289 = CFDictionaryGetValue(v287, @"ChannelSpecificSettings");
                                    v290 = CFDictionaryGetValue(v289, @"DestinationPixelBufferAttributes");
                                    if (v290)
                                    {
                                      break;
                                    }
                                  }

                                  if (v285 == ++v286)
                                  {
                                    goto LABEL_385;
                                  }
                                }

                                v291 = *(theDict + 34);
                                *(theDict + 34) = v290;
                                CFRetain(v290);
                                if (v291)
                                {
                                  CFRelease(v291);
                                }
                              }

LABEL_385:
                              UInt32 = theArrayc;
                              v4 = theDict;
                              if (newCollectionOut.value)
                              {
                                CFRelease(newCollectionOut.value);
                                newCollectionOut.value = 0;
                              }
                            }

                            ++v281;
                          }

                          while (v281 != v280);
                        }
                      }
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_41_0();
                    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", p_tagCollection, v411, v413);
                  }

                  if (tagCollection.value)
                  {
                    CFRelease(tagCollection.value);
                  }

                  v2 = v439;
                  v292 = allocatora;
                  if (HIDWORD(v447))
                  {
                    v293 = *(*&v474.category + 272);
                    if (v293)
                    {
                      v4 = CFRetain(v293);
                    }

                    else
                    {
                      FigSimpleMutexLock();
                      v310 = *(v439 + 504);
                      if (v310)
                      {
                        v4 = CFRetain(v310);
                      }

                      else
                      {
                        v4 = 0;
                      }

                      FigSimpleMutexUnlock();
                    }

                    v311 = FPSupport_CopyDestinationPixelBufferAttributesWithIOSurfaceSupport(v4, 1, &v491);
                    if (v4)
                    {
                      v312 = v311;
                      CFRelease(v4);
                      v311 = v312;
                    }

                    if (v311)
                    {
LABEL_601:
                      OUTLINED_FUNCTION_157_0();
                      v10 = v451;
                      UInt32 = theArrayc;
                      goto LABEL_589;
                    }
                  }

                  if (_os_feature_enabled_impl())
                  {
                    *&v508 = 0;
                    if (itemfig_createRenderTriplesForVideoTrackSampleAttachmentCollectors(v477, v490, v489 + 32, &v508))
                    {
                      goto LABEL_583;
                    }

                    if (v508)
                    {
                      LODWORD(theDict) = CFArrayGetCount(v508) > 0;
                    }

                    else
                    {
                      LODWORD(theDict) = 0;
                    }

                    UInt32 = theArrayc;
                    if (theArrayc)
                    {
                      FigCFArrayAppendArray();
                      if (v508)
                      {
                        CFRelease(v508);
                      }
                    }

                    else
                    {
                      UInt32 = v508;
                    }

                    v292 = allocatora;
                    v2 = v439;
                  }

                  else
                  {
                    LODWORD(theDict) = 0;
                  }

                  theArrayc = UInt32;
                  if (!v466)
                  {
                    v313 = OUTLINED_FUNCTION_165_0();
                    v466 = CFArrayCreateMutable(v313, v314, &_MergedGlobals);
                    if (!v466)
                    {
                      OUTLINED_FUNCTION_41_0();
                      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", p_tagCollection, v411, v413);
                      OUTLINED_FUNCTION_157_0();
                      v466 = 0;
                      goto LABEL_584;
                    }
                  }

                  v315 = v489;
                  v316 = *(v489 + 31);
                  if (v316)
                  {
                    CFRelease(v316);
                    *(v315 + 31) = 0;
                  }

                  v317 = *(v315 + 28);
                  if (v317)
                  {
                    CFArrayRemoveAllValues(v317);
                  }

                  else
                  {
                    v318 = OUTLINED_FUNCTION_165_0();
                    *(v315 + 28) = CFArrayCreateMutable(v318, v319, MEMORY[0x1E695E9C0]);
                  }

                  v320 = *(v315 + 29);
                  if (v320)
                  {
                    v320 = CFArrayGetCount(v320);
                  }

                  if (v320 <= 1)
                  {
                    v4 = 1;
                  }

                  else
                  {
                    v4 = v320;
                  }

                  if (v4 >= 1)
                  {
                    while (1)
                    {
                      if (ValueAtIndex)
                      {
                        CFRelease(ValueAtIndex);
                      }

                      UInt32 = theArrayc;
                      if (v8)
                      {
                        CFRelease(v8);
                      }

                      if (value_low)
                      {
                        CFRelease(value_low);
                      }

                      if (*(v2 + 972))
                      {
                        value_low = CFStringCreateWithCString(v292, (v2 + 972), 0x600u);
                        AllocatorForMedia = FigGetAllocatorForMedia();
                        p_tagCollection = value_low;
                        v411 = v4;
                        v8 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"%@.%d");
                        ValueAtIndex = CFDictionaryCreateMutable(v292, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                        if (!ValueAtIndex)
                        {
                          goto LABEL_586;
                        }

                        FigCFDictionarySetValue();
                      }

                      else
                      {
                        OUTLINED_FUNCTION_164_0();
                        ValueAtIndex = 0;
                      }

                      *&v508 = 0;
                      if (FigImageQueueTableCreateWithOptions(v292, ValueAtIndex, &v508))
                      {
                        break;
                      }

                      v315 = v489;
                      CFArrayAppendValue(*(v489 + 28), v508);
                      if (v508)
                      {
                        CFRelease(v508);
                      }

                      if (v4-- <= 1)
                      {
                        goto LABEL_433;
                      }
                    }

LABEL_583:
                    OUTLINED_FUNCTION_157_0();
LABEL_584:
                    UInt32 = theArrayc;
LABEL_588:
                    v10 = v451;
LABEL_589:
                    v16 = v466;
                    goto LABEL_532;
                  }

LABEL_433:
                  LODWORD(v493) = *v315;
                  v474 = *MEMORY[0x1E6960C70];
                  v508 = *MEMORY[0x1E6960C70];
                  v4 = *(MEMORY[0x1E6960C70] + 16);
                  OUTLINED_FUNCTION_183_0();
                  OUTLINED_FUNCTION_410();
                  OUTLINED_FUNCTION_263_0();
                  if (fp_createCommonRenderPipelineOptionsForTrack(v323, v324, v325, v326, v327, 0, v328))
                  {
                    goto LABEL_583;
                  }

                  if (!v494[1])
                  {
                    tagCollection.value = 0;
                    v508 = v474;
                    OUTLINED_FUNCTION_183_0();
                    OUTLINED_FUNCTION_410();
                    OUTLINED_FUNCTION_263_0();
                    if (fp_createCommonRenderPipelineOptionsForTrack(v329, v330, v331, v332, v333, 1, v334))
                    {
                      goto LABEL_583;
                    }

                    v335 = *(v315 + 28);
                    if (v335 && CFArrayGetCount(v335) == 1 && ((v336 = *(v315 + 29)) == 0 || !CFArrayGetCount(v336)))
                    {
                      v388 = CFArrayGetValueAtIndex(*(v315 + 28), 0);
                      v410 = *(v315 + 27);
                      v412 = v388;
                      OUTLINED_FUNCTION_19();
                      if (fp_createFigImageQueueArrayForVideoRenderPipeline(v389, v390, v391, v392, v393, v394, v395, v396, v410, v412, 1, &tagCollection))
                      {
                        goto LABEL_601;
                      }

                      v4 = 0;
                      v2 = tagCollection.value;
                    }

                    else
                    {
                      v337 = OUTLINED_FUNCTION_165_0();
                      v338 = MEMORY[0x1E695E9C0];
                      v2 = CFArrayCreateMutable(v337, v339, MEMORY[0x1E695E9C0]);
                      v340 = OUTLINED_FUNCTION_165_0();
                      v342 = CFArrayCreateMutable(v340, v341, v338);
                      v4 = v342;
                      if (!v2 || !v342)
                      {
LABEL_611:
                        OUTLINED_FUNCTION_41_0();
                        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                        goto LABEL_584;
                      }

                      for (i = 0; ; i = v476 + 1)
                      {
                        v344 = *(v315 + 28);
                        if (v344)
                        {
                          v344 = CFArrayGetCount(v344);
                        }

                        if (i >= v344)
                        {
                          break;
                        }

                        newCollectionOut.value = 0;
                        v476 = i;
                        v345 = CFArrayGetValueAtIndex(*(v315 + 28), i);
                        OUTLINED_FUNCTION_75_0();
                        if (FigImageQueueTableUpdateToMatchOutputsArray(v346, v347, v348, v349, fp_imageQueueTableWillReleaseImageQueueCallback, v477) || FigImageQueueTableCopyFigImageQueueArray(v345, &newCollectionOut.value))
                        {
                          goto LABEL_584;
                        }

                        v350 = CFArrayGetCount(newCollectionOut.value);
                        v514.location = 0;
                        v514.length = v350;
                        CFArrayAppendArray(v2, newCollectionOut.value, v514);
                        if (newCollectionOut.value)
                        {
                          CFRelease(newCollectionOut.value);
                        }

                        if (v350 >= 1)
                        {
                          v351 = *(v315 + 29);
                          if (v351)
                          {
                            v351 = CFArrayGetCount(v351);
                          }

                          if (v476 < v351)
                          {
                            v508 = 0uLL;
                            v498.value = 0;
                            if (!FigCFArrayGetValueAtIndex())
                            {
                              goto LABEL_611;
                            }

                            FigTagCollectionGetTagsWithCategory();
                            if (v498.value != 1)
                            {
                              goto LABEL_611;
                            }

                            FigTagGetSInt64Value();
                            v352 = OUTLINED_FUNCTION_165_0();
                            v354 = CFDictionaryCreateMutable(v352, v353, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                            if (!v354)
                            {
                              goto LABEL_611;
                            }

                            v355 = v354;
                            FigCFDictionarySetInt32();
                            v356 = v350 + 1;
                            do
                            {
                              CFArrayAppendValue(v4, v355);
                              --v356;
                            }

                            while (v356 > 1);
                            CFRelease(v355);
                          }
                        }
                      }

                      tagCollection.value = v2;
                    }

                    v357 = fp_buildVideoRenderPipelineForTrack(v438, v477, *v315, v491, 0, *(v315 + 3), 0, 1, v2, v4, theDict, v428);
                    if (tagCollection.value)
                    {
                      v358 = v357;
                      CFRelease(tagCollection.value);
                      v357 = v358;
                    }

                    v2 = v439;
                    if (v4)
                    {
                      v359 = v357;
                      CFRelease(v4);
                      v357 = v359;
                    }

                    if (v357)
                    {
                      goto LABEL_583;
                    }
                  }

                  if (v491)
                  {
                    CFRelease(v491);
                    v491 = 0;
                  }

                  v360 = v494[1];
                  if (v494[1])
                  {
                    v360 = CFRetain(v494[1]);
                  }

                  *(v315 + 31) = v360;
                  CFArrayAppendValue(v466, &v493);
                  itemfig_resetRenderTriple(&v493);
                  v361 = 0;
                  UInt32 = theArrayc;
                  v362 = v489;
                  while (1)
                  {
                    v363 = *(v362 + 28);
                    if (v363)
                    {
                      v363 = CFArrayGetCount(v363);
                    }

                    if (v361 >= v363)
                    {
                      break;
                    }

                    v364 = CFArrayGetValueAtIndex(*(v362 + 28), v361);
                    FigImageQueueTableSetTimebase(v364, *(v452 + 328));
                    ++v361;
                  }

                  if (*(v2 + 240))
                  {
                    v365 = v434;
                  }

                  else
                  {
                    v365 = v432;
                  }

                  FigRenderPipelineGetFigBaseObject();
                  v367 = v366;
                  v368 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (v368)
                  {
                    v368(v367, v422, v365);
                  }

                  v369 = *(v452 + 1184);
                  if (v369)
                  {
                    FigRenderPipelineGetFigBaseObject();
                    v371 = v370;
                    v372 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                    if (v372)
                    {
                      v372(v371, v416, v369);
                    }
                  }

                  FigRenderPipelineGetFigBaseObject();
                  v374 = v373;
                  v375 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (v375)
                  {
                    v375(v374, v420, v434);
                  }

                  if (*(v452 + 1192))
                  {
                    v376 = v434;
                  }

                  else
                  {
                    v376 = v432;
                  }

                  FigRenderPipelineGetFigBaseObject();
                  v378 = v377;
                  v379 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (v379)
                  {
                    v379(v378, v418, v376);
                  }

                  itemfig_updateRotationOnVideoRenderPipeline(v477, *v362);
                  itemfig_applyEnhancementFilterOptions();
                  itemfig_applyDisableColorMatching();
                  v380 = *(v362 + 32);
                  FigRenderPipelineGetFigBaseObject();
                  v382 = v381;
                  v383 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (v383)
                  {
                    v383(v382, v426, v380);
                  }

                  v384 = *(v362 + 35);
                  FigRenderPipelineGetFigBaseObject();
                  v386 = v385;
                  v387 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  v10 = v451;
                  if (v387)
                  {
                    v217 = v473;
                    v387(v386, v424, v384);
                    LODWORD(v458) = 0;
                    v2 = v477;
                  }

                  else
                  {
                    LODWORD(v458) = 0;
                    v2 = v477;
                    v217 = v473;
                  }

                  v4 = v450;
                }
              }

LABEL_363:
              if (++v4 == v217)
              {
                goto LABEL_513;
              }
            }
          }

LABEL_590:
          OUTLINED_FUNCTION_41_0();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        }

        v8 = 0;
        OUTLINED_FUNCTION_15_0();
        goto LABEL_568;
      }

      v8 = 0;
    }

    else
    {
      FigSimpleMutexUnlock();
      OUTLINED_FUNCTION_164_0();
    }

    ValueAtIndex = 0;
    UInt32 = 0;
    OUTLINED_FUNCTION_157_0();
    DerivedStorage = 0;
    OUTLINED_FUNCTION_256_0();
    goto LABEL_532;
  }

  v21 = v16;
  UInt32 = CMBaseObjectGetDerivedStorage();
  v22 = CMBaseObjectGetDerivedStorage();
  v497.value = 0;
  v496.value = 0;
  DerivedStorage = *v20;
  v23 = CFArrayCreateMutable(*v20, 0, &_MergedGlobals);
  if (!v23)
  {
    OUTLINED_FUNCTION_41_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", p_tagCollection, v411, v413);
LABEL_594:
    v28 = 0;
    value_low = 0;
    goto LABEL_525;
  }

  v24 = v23;
  v25 = v2;
  alloc = DerivedStorage;
  v26 = CFArrayCreateMutable(DerivedStorage, 0, &_MergedGlobals);
  if (!v26)
  {
    OUTLINED_FUNCTION_41_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", p_tagCollection, v411, v413);
    CFRelease(v24);
    goto LABEL_594;
  }

  DerivedStorage = v26;
  v2 = v16;
  if (!_os_feature_enabled_impl() || itemfig_countOfEnabledVideoTracks(v16) != 1)
  {
    goto LABEL_8;
  }

  if (itemfig_createRenderTriplesForVideoTrackSampleAttachmentCollectors(v16, *(UInt32 + 260), UInt32 + 276, &v497))
  {
    v471 = 0;
    v28 = 0;
    goto LABEL_520;
  }

  if (v497.value)
  {
    v27 = CFArrayGetCount(v497.value) > 0;
  }

  else
  {
LABEL_8:
    v27 = 0;
  }

  if (UInt32[82] && theArray && UInt32[103])
  {
    v405 = OUTLINED_FUNCTION_732();
    v28 = 0;
    v471 = 0;
    if (!itemfig_reuseRenderTriplesForVideoComposition(v405, v406, DerivedStorage, v475))
    {
      UInt32 = ValueAtIndex;
      goto LABEL_523;
    }

    goto LABEL_520;
  }

  v455 = v27;
  v444 = v25;
  v464 = DerivedStorage;
  v468 = v24;
  v453 = v22;
  valuea = UInt32;
  if (*(v22 + 972))
  {
    v16 = alloc;
    v28 = CFStringCreateWithCString(alloc, (v22 + 972), 0x600u);
    v29 = CFDictionaryCreateMutable(alloc, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v29)
    {
      OUTLINED_FUNCTION_41_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", p_tagCollection, v411, v413);
      v471 = 0;
      goto LABEL_520;
    }

    v30 = v29;
    v461 = v28;
    FigCFDictionarySetValue();
    v31 = v30;
  }

  else
  {
    v31 = 0;
    v461 = 0;
  }

  playeritemfig_releaseVideoCompositionObjects(v21);
  v34 = CMBaseObjectGetDerivedStorage();
  v35 = CMBaseObjectGetDerivedStorage();
  newCollectionOut.value = 0;
  v498.value = 0;
  v36 = *(v34 + 776);
  v16 = CFGetAllocator(v21);
  v37 = *(v34 + 832);
  v38 = alloc;
  if (v37)
  {
    CFRelease(v37);
    *(v34 + 832) = 0;
  }

  v39 = *(v34 + 840);
  if (v39)
  {
    CFRelease(v39);
    *(v34 + 840) = 0;
  }

  v40 = OUTLINED_FUNCTION_165_0();
  v471 = v31;
  key = CFArrayCreateMutable(v40, v41, v42);
  v441 = ValueAtIndex;
  v443 = v4;
  if (!key)
  {
    OUTLINED_FUNCTION_41_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", p_tagCollection, v411, v413);
    v459 = v407;
    ChannelDescriptionFromVideoCompositorOutputBufferDescription = 0;
    UInt32 = 0;
    ValueAtIndex = 0;
    goto LABEL_99;
  }

  if (v36)
  {
    v43 = OUTLINED_FUNCTION_165_0();
    ValueAtIndex = CFArrayCreateMutable(v43, v44, v45);
    if (!ValueAtIndex)
    {
      goto LABEL_600;
    }
  }

  else
  {
    ValueAtIndex = 0;
  }

  v46 = *(v34 + 864);
  if (v46)
  {
    CFArrayRemoveAllValues(v46);
  }

  else
  {
    v47 = OUTLINED_FUNCTION_165_0();
    v50 = CFArrayCreateMutable(v47, v48, v49);
    *(v34 + 864) = v50;
    if (!v50)
    {
LABEL_600:
      OUTLINED_FUNCTION_41_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      v459 = v408;
      ChannelDescriptionFromVideoCompositorOutputBufferDescription = 0;
      goto LABEL_572;
    }
  }

  v51 = *(v34 + 856);
  if (v51)
  {
    CFArrayRemoveAllValues(v51);
  }

  else
  {
    v52 = OUTLINED_FUNCTION_165_0();
    v55 = CFArrayCreateMutable(v52, v53, v54);
    *(v34 + 856) = v55;
    if (!v55)
    {
      goto LABEL_600;
    }
  }

  ChannelDescriptionFromVideoCompositorOutputBufferDescription = itemfig_createChannelDescriptionFromVideoCompositorOutputBufferDescription(v21, v56, v57, v58, v59, v60, v61, v62, p_tagCollection, v411, v413, v414, v415, v417, v419, v421, v423, v425, v427, v429, v431, v433);
  if (v36)
  {
    v64 = CFArrayGetCount(v36);
  }

  else
  {
    v64 = 0;
  }

  if (v64 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v64;
  }

  if (v4 >= 1)
  {
    v65 = v4;
    while (1)
    {
      *&v508 = 0;
      v66 = FigImageQueueTableCreateWithOptions(v16, v31, &v508);
      if (v66)
      {
        break;
      }

      CFArrayAppendValue(*(v34 + 856), v508);
      if (v508)
      {
        CFRelease(v508);
      }

      if (!--v65)
      {
        goto LABEL_47;
      }
    }

    v459 = v66;
LABEL_572:
    UInt32 = key;
    goto LABEL_99;
  }

LABEL_47:
  FigSimpleMutexLock();
  v67 = *(v35 + 272);
  v480 = v4;
  if (!v67)
  {
    FigSimpleMutexUnlock();
    v68 = 0;
    goto LABEL_65;
  }

  v68 = CFRetain(v67);
  FigSimpleMutexUnlock();
  if (!v68)
  {
LABEL_65:
    UInt32 = key;
LABEL_66:
    v81 = *(v34 + 864);
    theArraya = v68;
    if ((!v81 || !CFArrayGetCount(v81)) && dword_1EAF16A10)
    {
      LODWORD(cf) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v82 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v83 = cf;
      v16 = type[0];
      os_log_type_enabled(v82, type[0]);
      OUTLINED_FUNCTION_121();
      if (v185)
      {
        v85 = v84;
      }

      else
      {
        v85 = v83;
      }

      if (v85)
      {
        if (v477)
        {
          v86 = (CMBaseObjectGetDerivedStorage() + 2096);
        }

        else
        {
          v86 = "";
        }

        v87 = *(v34 + 776);
        LODWORD(tagCollection.value) = 136316162;
        *(&tagCollection.value + 4) = "itemfig_updateVideoProcessorImageQueueArrayForMultichannelFVTs";
        LOWORD(tagCollection.flags) = 2048;
        *(&tagCollection.flags + 2) = v477;
        HIWORD(tagCollection.epoch) = 2082;
        v503 = v86;
        v504 = 2114;
        v505 = v87;
        v506 = 2114;
        v507 = ChannelDescriptionFromVideoCompositorOutputBufferDescription;
        LODWORD(v411) = 52;
        p_tagCollection = &tagCollection;
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl(v88, v89, v90, v91, v92, v93, v16, v94);
        v4 = v480;
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414(v95, v96, v97, v98, v99);
      v2 = v477;
    }

    if (v4 < 1)
    {
LABEL_96:
      matched = 0;
      *(v34 + 832) = UInt32;
      *(v34 + 840) = ValueAtIndex;
      ValueAtIndex = 0;
      UInt32 = 0;
    }

    else
    {
      v100 = 0;
      while (1)
      {
        v101 = CFArrayGetValueAtIndex(*(v34 + 856), v100);
        v16 = CFArrayGetValueAtIndex(*(v34 + 776), v100);
        OUTLINED_FUNCTION_75_0();
        matched = FigImageQueueTableUpdateToMatchOutputsArray(v101, v102, v103, v104, fp_imageQueueTableWillReleaseImageQueueCallback, v2);
        if (matched)
        {
          break;
        }

        matched = FigImageQueueTableCopyFigImageQueueArray(v101, &newCollectionOut.value);
        if (matched)
        {
          break;
        }

        if (ValueAtIndex)
        {
          if (newCollectionOut.value)
          {
            v105 = CFArrayGetCount(newCollectionOut.value);
            if (v105 >= 1)
            {
              v106 = v105;
              do
              {
                CFArrayAppendValue(ValueAtIndex, v16);
                --v106;
              }

              while (v106);
            }
          }
        }

        FigCFArrayAppendArray();
        if (newCollectionOut.value)
        {
          CFRelease(newCollectionOut.value);
          newCollectionOut.value = 0;
        }

        if (++v100 == v4)
        {
          goto LABEL_96;
        }
      }
    }

    goto LABEL_97;
  }

  allocator = CFArrayGetCount(v68);
  UInt32 = key;
  if (allocator < 1)
  {
    goto LABEL_66;
  }

  theArraya = v68;
  v69 = 0;
  while (1)
  {
    v70 = CFArrayGetValueAtIndex(theArraya, v69);
    v71 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (!v71)
    {
      matched = -12782;
LABEL_77:
      v38 = alloc;
      goto LABEL_97;
    }

    matched = v71(v70, v16, &v498);
    if (matched)
    {
      v2 = v477;
      goto LABEL_77;
    }

    if (v498.value)
    {
      theDicta = CFArrayGetCount(v498.value);
      if (theDicta >= 1)
      {
        break;
      }
    }

LABEL_62:
    ++v69;
    v2 = v477;
    if (v69 == allocator)
    {
      v38 = alloc;
      v68 = theArraya;
      goto LABEL_66;
    }
  }

  v73 = 0;
  while (1)
  {
    v74 = CFArrayGetValueAtIndex(v498.value, v73);
    v76 = FigDataChannelGroupGetCountOfDataChannels(v74, v75);
    if (v76 < 1)
    {
      break;
    }

    v77 = v76;
    v78 = 0;
    while (1)
    {
      FigDataChannelGroupGetDataChannelByIndex(v74, v78);
      v79 = OUTLINED_FUNCTION_201_0();
      if (!CMTagCollectionContainsTagsOfCollection(v79, v80))
      {
        break;
      }

      if (v77 == ++v78)
      {
        CFArrayAppendValue(*(v34 + 864), v70);
        v4 = v480;
        UInt32 = key;
        goto LABEL_62;
      }
    }

    ++v73;
    v4 = v480;
    UInt32 = key;
    if (v73 == theDicta)
    {
      goto LABEL_62;
    }
  }

  matched = 0;
  v2 = v477;
  UInt32 = key;
  v38 = alloc;
LABEL_97:
  v459 = matched;
  if (theArraya)
  {
    CFRelease(theArraya);
  }

LABEL_99:
  if (newCollectionOut.value)
  {
    CFRelease(newCollectionOut.value);
  }

  if (v498.value)
  {
    CFRelease(v498.value);
  }

  if (ChannelDescriptionFromVideoCompositorOutputBufferDescription)
  {
    CFRelease(ChannelDescriptionFromVideoCompositorOutputBufferDescription);
  }

  if (UInt32)
  {
    CFRelease(UInt32);
  }

  if (ValueAtIndex)
  {
    CFRelease(ValueAtIndex);
  }

  if (v459)
  {
    DerivedStorage = v464;
    v24 = v468;
    v28 = v461;
    goto LABEL_520;
  }

  v107 = CMBaseObjectGetDerivedStorage();
  *&v508 = 0;
  v115 = itemfig_createChannelDescriptionFromVideoCompositorOutputBufferDescription(v2, v108, v109, v110, v111, v112, v113, v114, p_tagCollection, v411, v413, v414, v415, v417, v419, v421, v423, v425, v427, v429, v431, v433);
  v116 = *(v107 + 872);
  if (v116)
  {
    CFRelease(v116);
    *(v107 + 872) = 0;
  }

  v117 = *(v107 + 864);
  if (!v117 || CFArrayGetCount(v117) < 1)
  {
    goto LABEL_129;
  }

  OUTLINED_FUNCTION_417_0();
  while (2)
  {
    v118 = CFArrayGetValueAtIndex(*(v107 + 864), ValueAtIndex);
    v119 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v119)
    {
      v119(v118, v38, &v508);
    }

    if (!v508)
    {
LABEL_125:
      if (++ValueAtIndex == v4)
      {
        goto LABEL_129;
      }

      continue;
    }

    break;
  }

  v120 = CFArrayGetCount(v508);
  if (v120 < 1)
  {
LABEL_123:
    v2 = v477;
    v38 = alloc;
    if (v508)
    {
      CFRelease(v508);
      *&v508 = 0;
    }

    goto LABEL_125;
  }

  v121 = v120;
  v122 = 0;
  while (1)
  {
    v123 = CFArrayGetValueAtIndex(v508, v122);
    CFDictionaryGetValue(v123, @"ChannelDescription");
    v124 = OUTLINED_FUNCTION_201_0();
    if (CMTagCollectionContainsTagsOfCollection(v124, v125))
    {
      v126 = CFDictionaryGetValue(v123, @"ChannelSpecificSettings");
      v127 = CFDictionaryGetValue(v126, @"DestinationPixelBufferAttributes");
      if (v127)
      {
        break;
      }
    }

    if (v121 == ++v122)
    {
      goto LABEL_123;
    }
  }

  v128 = *(v107 + 872);
  *(v107 + 872) = v127;
  CFRetain(v127);
  v2 = v477;
  if (v128)
  {
    CFRelease(v128);
  }

LABEL_129:
  if (v115)
  {
    CFRelease(v115);
  }

  v4 = v443;
  v25 = v444;
  UInt32 = v441;
  DerivedStorage = v464;
  v24 = v468;
  ValueAtIndex = v475;
  v28 = v461;
  v16 = valuea;
  if (v508)
  {
    CFRelease(v508);
  }

  if (!HIDWORD(v447))
  {
    goto LABEL_621;
  }

  v129 = valuea[109];
  if (v129)
  {
    v130 = CFRetain(v129);
  }

  else
  {
    FigSimpleMutexLock();
    v16 = v453;
    v131 = *(v453 + 504);
    if (v131)
    {
      v130 = CFRetain(v131);
    }

    else
    {
      v130 = 0;
    }

    FigSimpleMutexUnlock();
  }

  v398 = FPSupport_CopyDestinationPixelBufferAttributesWithIOSurfaceSupport(v130, 1, &v496);
  if (v130)
  {
    v399 = v130;
    v400 = v398;
    CFRelease(v399);
    v398 = v400;
  }

  if (!v398)
  {
LABEL_621:
    v401 = OUTLINED_FUNCTION_489();
    if (!itemfig_createRenderTriplesForVideoComposition(v401, v402, v403, v455, v471, v468, v464))
    {
LABEL_523:
      *UInt32 = v24;
      *v4 = DerivedStorage;
      *v25 = v497.value;
      v497.value = 0;
      goto LABEL_524;
    }
  }

LABEL_520:
  CFRelease(v24);
  CFRelease(DerivedStorage);
  if (v497.value)
  {
    CFRelease(v497.value);
  }

LABEL_524:
  value_low = v471;
LABEL_525:
  if (v496.value)
  {
    CFRelease(v496.value);
  }

  if (value_low)
  {
    CFRelease(value_low);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  v8 = 0;
  OUTLINED_FUNCTION_15_0();
  v10 = 0;
LABEL_532:
  itemfig_resetRenderTriple(&v493);
  if (v491)
  {
    CFRelease(v491);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (DerivedStorage)
  {
    CFRelease(DerivedStorage);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v492)
  {
    CFRelease(v492);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (UInt32)
  {
    CFRelease(UInt32);
  }

  if (ValueAtIndex)
  {
    CFRelease(ValueAtIndex);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (value_low)
  {
    CFRelease(value_low);
  }

  OUTLINED_FUNCTION_651();
}

void itemfig_ReportAudioPlaybackThroughFigLog(uint64_t a1)
{
  v147 = *MEMORY[0x1E69E9840];
  v119 = 0;
  v120 = 0;
  cf = 0;
  desc = 0;
  v116 = 0;
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v5 = OUTLINED_FUNCTION_283_0(DerivedStorage);
    if (v5)
    {
      if (!*CMBaseObjectGetDerivedStorage())
      {
        v6 = *(v1 + 1036);
        if (v6)
        {
          v7 = *(v1 + 1008);
          v8 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v8)
          {
            if (!v8(v7, v6, &v119, 0) && !itemfig_copyFormatDescription(v119, &desc))
            {
              v9 = desc;
              RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(desc);
              if (RichestDecodableFormat)
              {
                v11 = RichestDecodableFormat;
                if (!itemfig_getTrackStorage(a1, *(v1 + 1036), &v120))
                {
                  if (*(v120 + 16))
                  {
                    FigRenderPipelineGetFigBaseObject();
                    v13 = v12;
                    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                    if (v14)
                    {
                      v14(v13, @"SpatializationEnabled", *MEMORY[0x1E695E480], &cf);
                    }

                    AudioFormatDescriptionSpatializationEligibility = FPSupport_GetAudioFormatDescriptionSpatializationEligibility(v9, &v116);
                    v16 = OUTLINED_FUNCTION_234();
                    itemfig_isSpatializationAllowed(v16, v17, 0, v18, v19, v20, v21, v22, v78, v81, v84, v87, v91, SWORD2(v91), SBYTE6(v91), HIBYTE(v91), v99, v103, v107, v112, v116, cf, desc, v119, v120, *v121, *&v121[8], *&v121[16], v122);
                    v24 = v23;
                    itemfig_isSpatializationAllowed(a1, 1, 0, v25, v26, v27, v28, v29, v79, v82, v85, v88, v92, v95, v97, v98, v100, v104, v108, v113, v116, cf, desc, v119, v120, *v121, *&v121[8], *&v121[16], v122);
                    v31 = v30;
                    v32 = cf;
                    if (cf)
                    {
                      v33 = cf == *MEMORY[0x1E695E4D0];
                    }

                    else
                    {
                      v33 = 0;
                    }

                    v34 = v33;
                    if (AudioFormatDescriptionSpatializationEligibility == 1)
                    {
                      v35 = v34;
                    }

                    else
                    {
                      v35 = 0;
                    }

                    if (dword_1EAF16A10)
                    {
                      HIDWORD(v105) = v35;
                      v109 = __PAIR64__(v24, v31);
                      OUTLINED_FUNCTION_397_0();
                      v36 = OUTLINED_FUNCTION_187_0();
                      v44 = OUTLINED_FUNCTION_346_0(v36, v37, v38, v39, v40, v41, v42, v43, v80, v83, v86, v89, v93, v101, v105, v109, *v114, v114[2], v114[3], v114[4]);
                      os_log_type_enabled(v44, type);
                      OUTLINED_FUNCTION_46();
                      if (v2)
                      {
                        v102 = v44;
                        v45 = CMBaseObjectGetDerivedStorage();
                        v46 = CMBaseObjectGetDerivedStorage();
                        mFormatID = v11->mASBD.mFormatID;
                        v48 = mFormatID >> 24;
                        v49 = MEMORY[0x1E69E9830];
                        if ((mFormatID & 0x80000000) != 0)
                        {
                          v50 = __maskrune(HIBYTE(v11->mASBD.mFormatID), 0x40000uLL);
                          v49 = MEMORY[0x1E69E9830];
                          LODWORD(mFormatID) = v11->mASBD.mFormatID;
                        }

                        else
                        {
                          v50 = *(MEMORY[0x1E69E9830] + 4 * v48 + 60) & 0x40000;
                        }

                        if (v50)
                        {
                          v51 = v48;
                        }

                        else
                        {
                          v51 = 46;
                        }

                        v96 = v51;
                        v52 = BYTE2(mFormatID);
                        if (BYTE2(mFormatID) > 0x7Fu)
                        {
                          v53 = __maskrune(BYTE2(mFormatID), 0x40000uLL);
                          v49 = MEMORY[0x1E69E9830];
                          LODWORD(mFormatID) = v11->mASBD.mFormatID;
                        }

                        else
                        {
                          v53 = *(v49 + 4 * BYTE2(mFormatID) + 60) & 0x40000;
                        }

                        v54 = v45 + 972;
                        v90 = v46 + 2096;
                        if (v53)
                        {
                          v55 = v52;
                        }

                        else
                        {
                          v55 = 46;
                        }

                        v94 = v55;
                        v56 = BYTE1(mFormatID);
                        if (BYTE1(mFormatID) > 0x7Fu)
                        {
                          v57 = __maskrune(BYTE1(mFormatID), 0x40000uLL);
                          v49 = MEMORY[0x1E69E9830];
                          LOBYTE(mFormatID) = v11->mASBD.mFormatID;
                        }

                        else
                        {
                          v57 = *(v49 + 4 * BYTE1(mFormatID) + 60) & 0x40000;
                        }

                        if (v57)
                        {
                          v58 = v56;
                        }

                        else
                        {
                          v58 = 46;
                        }

                        v59 = mFormatID;
                        if (mFormatID > 0x7Fu)
                        {
                          v60 = __maskrune(mFormatID, 0x40000uLL);
                        }

                        else
                        {
                          v60 = *(v49 + 4 * mFormatID + 60) & 0x40000;
                        }

                        *&v121[4] = "itemfig_ReportAudioPlaybackThroughFigLog";
                        v61 = "yes";
                        v122 = v54;
                        *v121 = 136318722;
                        if (v60)
                        {
                          v62 = v59;
                        }

                        else
                        {
                          v62 = 46;
                        }

                        *&v121[12] = 2048;
                        if (AudioFormatDescriptionSpatializationEligibility)
                        {
                          v63 = "yes";
                        }

                        else
                        {
                          v63 = "no";
                        }

                        *&v121[14] = v5;
                        if (v111)
                        {
                          v64 = "yes";
                        }

                        else
                        {
                          v64 = "no";
                        }

                        *&v121[22] = 2082;
                        v123 = 2048;
                        if (v110)
                        {
                          v65 = "yes";
                        }

                        else
                        {
                          v65 = "no";
                        }

                        v124 = a1;
                        if (v34)
                        {
                          v66 = "yes";
                        }

                        else
                        {
                          v66 = "no";
                        }

                        v125 = 2082;
                        if (!v106)
                        {
                          v61 = "no";
                        }

                        v126 = v90;
                        v127 = 1024;
                        v128 = v96;
                        v129 = 1024;
                        v130 = v94;
                        v131 = 1024;
                        v132 = v58;
                        v133 = 1024;
                        v134 = v62;
                        v135 = 1024;
                        v136 = v116;
                        v137 = 2080;
                        v138 = v63;
                        v139 = 2080;
                        v140 = v64;
                        v141 = 2080;
                        v142 = v65;
                        v143 = 2080;
                        v144 = v66;
                        v145 = 2080;
                        v146 = v61;
                        OUTLINED_FUNCTION_66();
                        OUTLINED_FUNCTION_108();
                        _os_log_send_and_compose_impl(v67, v68, v69, v70, v71, v102, type, v72);
                      }

                      OUTLINED_FUNCTION_7();
                      OUTLINED_FUNCTION_238_0(v73, v74, v75, v76, v77);
                      v32 = cf;
                    }

                    if (v32)
                    {
                      CFRelease(v32);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if (v119)
  {
    CFRelease(v119);
  }

  if (desc)
  {
    CFRelease(desc);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void playerfig_updateResourceUsageOnGlobalResourceArbiter(uint64_t a1, const void *a2)
{
  v3 = v2;
  v44 = 0;
  v45 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 1176))
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v35, v37);
    goto LABEL_44;
  }

  v6 = DerivedStorage;
  if (*(DerivedStorage + 536) != a2 || FigPlayerResourceArbiterGetGlobalSingleton(&v45))
  {
    goto LABEL_44;
  }

  if (!a2)
  {
LABEL_43:
    FigPlayerResourceArbiterSetSpecifierForConsumer(v45, v44, *(v6 + 1176));
    goto LABEL_44;
  }

  if (FigPlayerResourceArbiterPlayerSpecifierCreate(&v44) || !itemfig_GetDimensions() && (FigPlayerResourceArbiterPlayerSpecifierSetResolutionCeiling(v44, 0.0, 0.0) || FigPlayerResourceArbiterPlayerSpecifierSetResolutionFloor(v44, 0.0, 0.0)))
  {
    goto LABEL_44;
  }

  v7 = *(v6 + 814) || *(v6 + 813) != 0;
  if (FigPlayerResourceArbiterPlayerSpecifierSetIsMuted(v44, v7) || FigPlayerResourceArbiterPlayerSpecifierSetIsFullyActive(v44, *(v6 + 60) == 2) || FigPlayerResourceArbiterPlayerSpecifierSetPlayerRole(v44, *(v6 + 1184)))
  {
    goto LABEL_44;
  }

  cf = 0;
  v8 = CMBaseObjectGetDerivedStorage();
  if (*v8)
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v35, v37);
    v12 = v32;
    v15 = 0.0;
    goto LABEL_20;
  }

  v9 = *(v8 + 1040);
  if (!v9)
  {
    goto LABEL_23;
  }

  v10 = CFGetAllocator(a2);
  itemfig_CopyTrackProperty(a2, v9, @"NominalFrameRate", v10, &cf);
  v12 = v11;
  v13 = cf;
  if (v12)
  {
    v15 = 0.0;
    if (!cf)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  FigCFNumberGetFloat32();
  v15 = v14;
  v13 = cf;
  if (cf)
  {
LABEL_19:
    CFRelease(v13);
  }

LABEL_20:
  if (!v12 && (FigPlayerResourceArbiterPlayerSpecifierSetFrameRateCeiling(v44, v15) || FigPlayerResourceArbiterPlayerSpecifierSetFrameRateFloor(v44, v15)))
  {
    goto LABEL_44;
  }

LABEL_23:
  v16 = CMBaseObjectGetDerivedStorage();
  v17 = OUTLINED_FUNCTION_337_0(v16);
  if (!v17)
  {
    goto LABEL_42;
  }

  v40 = v17;
  CMBaseObjectGetDerivedStorage();
  v18 = *(v2 + 1088);
  if (!v18 || (Count = CFArrayGetCount(v18), Count < 1))
  {
LABEL_41:
    CFRelease(v40);
    goto LABEL_42;
  }

  v19 = 0;
  v41 = *(MEMORY[0x1E6960648] + 8);
  v42 = *MEMORY[0x1E6960648];
  v20 = *(MEMORY[0x1E6960690] + 8);
  tag = *MEMORY[0x1E6960690];
  v21 = *(MEMORY[0x1E69606A0] + 8);
  v38 = a2;
  while (1)
  {
    v47 = 0;
    cf = 0;
    FigCFArrayGetInt32AtIndex();
    itemfig_getTrackStorage(a2, v47, &cf);
    v22 = cf;
    if (cf)
    {
      v23 = *(cf + 29);
      if (v23)
      {
        v24 = CFArrayGetCount(v23);
        if (v24 >= 1)
        {
          v25 = v24;
          v34 = v3;
          v36 = v6;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v22[29], v26);
            if (!CMTagCollectionContainsCategory(ValueAtIndex, kCMTagCategory_PackingType) || (v48.value = v41, *&v48.category = v42, CMTagCollectionContainsTag(ValueAtIndex, v48)))
            {
              *&v49.category = tag;
              v49.value = v20;
              if (CMTagCollectionContainsTag(ValueAtIndex, v49))
              {
                v28 = 1;
              }

              v30 = OUTLINED_FUNCTION_331_0();
              v50.value = v21;
              if (CMTagCollectionContainsTag(v30, v50))
              {
                v27 = 1;
              }
            }

            ++v26;
          }

          while (v25 != v26);
          v3 = v34;
          v6 = v36;
          if (v28)
          {
            if (v27)
            {
              break;
            }
          }
        }
      }
    }

    ++v19;
    a2 = v38;
    if (v19 == Count)
    {
      goto LABEL_41;
    }
  }

  CFRelease(v40);
  if (!FigPlayerResourceArbiterPlayerSpecifierSetIsMVStereo(v44, 1))
  {
LABEL_42:
    v31 = CMBaseObjectGetDerivedStorage();
    if (FigPlayerResourceArbiterPlayerSpecifierSetDesiredRate(v44, *(v31 + 48)))
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_44:
  if (v44)
  {
    CFRelease(v44);
  }
}

void itemfig_getFrameDropCountFromAllVideoPipelines(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 648);
  FigSimpleMutexUnlock();
  if (v4)
  {
    Count = CFArrayGetCount(*(DerivedStorage + 648));
    if (Count < 1)
    {
      v4 = 0;
    }

    else
    {
      v6 = Count;
      v7 = 0;
      v4 = 0;
      v8 = @"PerformanceDictionary";
      v9 = *MEMORY[0x1E695E480];
      v19 = *MEMORY[0x1E695E480];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 648), v7);
        if (*(ValueAtIndex + 1) == 1986618469)
        {
          if (ValueAtIndex[2])
          {
            theDict = 0;
            FigRenderPipelineGetFigBaseObject();
            v12 = v11;
            v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v13)
            {
              if (!v13(v12, v8, v9, &theDict))
              {
                Value = CFDictionaryGetValue(theDict, @"ImageQueuePerformanceArray");
                if (Value)
                {
                  v15 = Value;
                  v16 = v8;
                  if (CFArrayGetCount(Value) >= 1)
                  {
                    v18 = a2;
                    v17 = 0;
                    do
                    {
                      CFArrayGetValueAtIndex(v15, v17);
                      if (FigCFDictionaryGetInt32IfPresent())
                      {
                        break;
                      }

                      ++v17;
                    }

                    while (CFArrayGetCount(v15) > v17);
                    a2 = v18;
                  }
                }

                else
                {
                  v16 = v8;
                }

                FigCFDictionaryGetCFIndexIfPresent();
                OUTLINED_FUNCTION_310_0();
                FigCFDictionaryGetCFIndexIfPresent();
                CFRelease(theDict);
                v8 = v16;
                v9 = v19;
              }
            }
          }
        }

        ++v7;
      }

      while (v7 != v6);
    }
  }

  *a2 = v4;
}

void fp_buildAudioRenderPipelineForTrack()
{
  OUTLINED_FUNCTION_649();
  v204 = v0;
  v202 = v2;
  v203 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v218 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = CMBaseObjectGetDerivedStorage();
  v207 = 0;
  v208 = 0;
  cf = 0;
  desc = 0;
  HasTrackOfType = FPSupport_HasTrackOfType(*(v12 + 1008), 1986618469);
  if (dword_1EAF16A10)
  {
    LODWORD(v212) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_454(v14, v15, v16, v17, v18);
  }

  if (itemfig_getTrackStorage(v8, v6, &v208))
  {
    OUTLINED_FUNCTION_141_0();
    v23 = 0;
    goto LABEL_16;
  }

  v19 = *(DerivedStorage + 880);
  if (v19)
  {
    v20 = SecTaskCopyValueForEntitlement(v19, @"com.apple.coremedia.allow-protected-content-playback", 0);
    if (v20)
    {
      v21 = v20;
      v22 = CFBooleanGetValue(v20) != 0;
      CFRelease(v21);
    }

    else
    {
      v22 = 0;
    }

    v24 = SecTaskCopyValueForEntitlement(*(DerivedStorage + 880), @"com.apple.coreaudio.allow-amr-decode", 0);
    v23 = v24;
    if (v24)
    {
      CFBooleanGetValue(v24);
      v25 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v25 = 1;
LABEL_12:
  v26 = *(v12 + 1008);
  v27 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v27)
  {
    v28 = 0;
    NextRenderPipelineIdentifierString = 0;
    v30 = 0;
    goto LABEL_18;
  }

  v198 = v25;
  if (v27(v26, v6, &v207, 0) || itemfig_copyFormatDescription(v207, &desc))
  {
    OUTLINED_FUNCTION_141_0();
LABEL_16:
    v28 = 0;
    NextRenderPipelineIdentifierString = 0;
    v30 = 0;
    goto LABEL_18;
  }

  FigSimpleMutexLock();
  v31 = *(DerivedStorage + 472);
  if (v31)
  {
    v32 = CFRetain(v31);
  }

  else
  {
    v32 = 0;
  }

  FigSimpleMutexUnlock();
  v33 = MEMORY[0x1E695E480];
  v200 = v32;
  if (!v4)
  {
    v35 = FigFormatDescriptionRetain();
    goto LABEL_69;
  }

  v217[0].value = 0;
  v212 = 0;
  v213.value = 0;
  v36 = CMBaseObjectGetDerivedStorage();
  *type = 0;
  v37 = PKDIsContentKeyBossEnabled();
  v38 = *v33;
  if (!v37)
  {
    FigAssetGetCMBaseObject();
    v40 = v39;
    v41 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v41)
    {
      if (!v41(v40, @"assetProperty_DefaultContentKeySession", v38, v217))
      {
        value = v217[0].value;
        if (v217[0].value)
        {
          v43 = *(*(CMBaseObjectGetVTable() + 16) + 80);
          if (v43)
          {
            v43(value, @"AudibleGroupID", &v212);
            OUTLINED_FUNCTION_786();
LABEL_141:
            v48 = 1;
            if (v44 && v212 && CFDataGetLength(v212) == 4)
            {
              v48 = 0;
              *(v36 + 952) = *CFDataGetBytePtr(v212);
            }

            goto LABEL_44;
          }
        }
      }
    }

    goto LABEL_43;
  }

  FigAssetGetCMBaseObject();
  v46 = v45;
  v47 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v47)
  {
LABEL_43:
    v48 = 1;
    goto LABEL_44;
  }

  v77 = v47(v46, @"assetProperty_ContentKeyBoss", v38, &v213);
  v48 = 1;
  if (!v77 && v213.value && !FigContentKeySpecifierCreate(3, @"AudibleGroupID", 0, 0, type))
  {
    v78 = *(CMBaseObjectGetVTable() + 16);
    if (v78)
    {
      v79 = v78;
    }

    else
    {
      v79 = 0;
    }

    if (v79[13] && *v79 >= 2uLL)
    {
      v86 = OUTLINED_FUNCTION_195_0();
      v88 = v87(v86);
      v44 = 1;
      v48 = 1;
      if (!v88)
      {
        goto LABEL_141;
      }
    }

    else
    {
      v48 = 1;
    }
  }

LABEL_44:
  if (*type)
  {
    CFRelease(*type);
  }

  if (v213.value)
  {
    CFRelease(v213.value);
  }

  if (v212)
  {
    CFRelease(v212);
  }

  if (v217[0].value)
  {
    CFRelease(v217[0].value);
  }

  if (!v48)
  {
    v22 = 1;
  }

  v49 = desc;
  v211 = *(v12 + 952);
  if (!v211)
  {
    goto LABEL_55;
  }

  v196 = v22;
  v217[0].value = 0;
  v212 = 0;
  v213.value = 0;
  keys = @"AudibleGroupID";
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(desc);
  theDict = CMAudioFormatDescriptionGetChannelLayout(v49, &v213);
  Extensions = CMFormatDescriptionGetExtensions(v49);
  MagicCookie = CMAudioFormatDescriptionGetMagicCookie(v49, &v212);
  v52 = v38;
  v54 = OUTLINED_FUNCTION_343_0(MagicCookie, v53, &v211);
  *type = v54;
  if (v54)
  {
    if (Extensions)
    {
      v56 = v54;
      Count = CFDictionaryGetCount(Extensions);
      MutableCopy = CFDictionaryCreateMutableCopy(v52, Count + 1, Extensions);
      v58 = v56;
      v38 = v52;
      CFDictionaryAddValue(MutableCopy, @"AudibleGroupID", v58);
    }

    else
    {
      MutableCopy = CFDictionaryCreate(v38, &keys, type, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v22 = v196;
    if (MutableCopy)
    {
      v59 = CMAudioFormatDescriptionCreate(v38, StreamBasicDescription, v213.value, theDict, v212, MagicCookie, MutableCopy, v217) == 0;
    }

    else
    {
      v59 = 1;
    }

    if (*type)
    {
      CFRelease(*type);
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

  else
  {
    v59 = 1;
    v22 = v196;
  }

  v33 = MEMORY[0x1E695E480];
  if (!v59 || (v35 = v217[0].value) == 0)
  {
LABEL_55:
    v35 = FigFormatDescriptionRetain();
  }

  v32 = v200;
LABEL_69:
  v60 = *(DerivedStorage + 952);
  if (v60)
  {
    AudioDeviceUIDFromPassthroughHelper = FPSupport_GetAudioDeviceUIDFromPassthroughHelper(v60, v34);
  }

  else
  {
    AudioDeviceUIDFromPassthroughHelper = *(DerivedStorage + 712);
  }

  v197 = AudioDeviceUIDFromPassthroughHelper;
  if (!itemfig_isAtmosSupported(v8))
  {
    goto LABEL_106;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(v35);
  if (MediaSubType != 1667574579)
  {
    if (MediaSubType != 1667575091)
    {
      if (MediaSubType == 1700997939)
      {
        goto LABEL_99;
      }

      if (MediaSubType != 1700998451)
      {
        if (MediaSubType == 1885547315)
        {
          goto LABEL_99;
        }

        if (MediaSubType != 1885692723)
        {
          if (MediaSubType == 1902324531)
          {
            goto LABEL_99;
          }

          if (MediaSubType != 2053464883)
          {
            if (MediaSubType == 2053319475)
            {
              goto LABEL_99;
            }

            if (MediaSubType != 1902469939)
            {
LABEL_106:
              v195 = 0;
              v71 = 1;
              goto LABEL_107;
            }
          }
        }
      }
    }

    v217[0].value = 0;
    FormatList = CMAudioFormatDescriptionGetFormatList(v35, v217);
    if (!FormatList || v217[0].value <= 0x2FuLL)
    {
      goto LABEL_106;
    }

    mFormatID = FormatList->mASBD.mFormatID;
    v65 = mFormatID == 1667574579 || mFormatID == 1700997939;
    v66 = v65 || mFormatID == 1885547315;
    v67 = v66 || mFormatID == 2053319475;
    if (!v67 && mFormatID != 1902324531)
    {
      goto LABEL_106;
    }
  }

LABEL_99:
  if (v32)
  {
    v217[0].value = 0;
    v69 = *(CMBaseObjectGetVTable() + 16);
    if (v69)
    {
      v70 = *(v69 + 48);
      if (v70)
      {
        v70(v32, *MEMORY[0x1E69B01E8], *v33, v217);
      }
    }

    FigCFEqual();
    if (v217[0].value)
    {
      CFRelease(v217[0].value);
    }
  }

  FPSupport_IsDisplayModeSwitchInProgress();
  v71 = 0;
  v195 = 1;
LABEL_107:
  NextRenderPipelineIdentifierString = fp_createNextRenderPipelineIdentifierString(v10);
  if (NextRenderPipelineIdentifierString)
  {
    v72 = *(DerivedStorage + 1208);
    if (v72 && FigMockRenderPipelineFactoryCreateMockRenderPipeline(*(DerivedStorage + 1208), *MEMORY[0x1E695E480], 0, &cf))
    {
      goto LABEL_110;
    }

    if (cf)
    {
      v73 = 1;
LABEL_177:
      if (v72 || !*(DerivedStorage + 1140))
      {
        goto LABEL_197;
      }

      v112 = v73;
      v213.value = 0;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetValue();
      FigGetAllocatorForMedia();
      FigGetDefaultLowWaterDurationForSpeedRampRenderPipelines(v217);
      v114 = OUTLINED_FUNCTION_308_0();
      v119 = FigSpeedRampRenderPipelineCreate(v114, v115, v116, v117, v118);
      if (v213.value)
      {
        v120 = cf;
        cf = v213.value;
        CFRetain(v213.value);
        if (v120)
        {
          CFRelease(v120);
        }

        if (v213.value)
        {
          CFRelease(v213.value);
        }
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      v73 = v112;
      if (!v119)
      {
LABEL_197:
        if ((v73 & 1) != 0 || !*(DerivedStorage + 1141) || !_os_feature_enabled_impl())
        {
          goto LABEL_261;
        }

        v213.value = 0;
        v121 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigCFDictionarySetValue();
        FigGetAllocatorForMedia();
        FigGetDefaultLowWaterDurationForWarehouseRenderPipelines(v217);
        v122 = OUTLINED_FUNCTION_308_0();
        v127 = FigWarehouseRenderPipelineCreate(v122, v123, v124, v125, v126);
        if (v213.value)
        {
          v128 = cf;
          cf = v213.value;
          CFRetain(v213.value);
          if (v128)
          {
            CFRelease(v128);
          }

          if (v213.value)
          {
            CFRelease(v213.value);
          }
        }

        if (v121)
        {
          CFRelease(v121);
        }

        if (!v127)
        {
LABEL_261:
          if (*(DerivedStorage + 1140))
          {
            FigRenderPipelineGetFigBaseObject();
            if (*(*(CMBaseObjectGetVTable() + 8) + 56))
            {
              v129 = OUTLINED_FUNCTION_400_0();
              v130(v129);
            }
          }

          if (*(v12 + 2136))
          {
            FigRenderPipelineGetFigBaseObject();
            if (*(*(CMBaseObjectGetVTable() + 8) + 56))
            {
              v131 = OUTLINED_FUNCTION_400_0();
              v132(v131);
            }
          }

          v133 = MEMORY[0x1E695E4C0];
          if (cf)
          {
            if (*(DerivedStorage + 131))
            {
              FigRenderPipelineGetFigBaseObject();
              v135 = v134;
              v136 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v136)
              {
                v136(v135, @"ShouldCompensateForNeroScreenLatency", *v133);
              }
            }
          }

          FigRenderPipelineGetFigBaseObject();
          if (*(*(CMBaseObjectGetVTable() + 8) + 56))
          {
            v137 = OUTLINED_FUNCTION_400_0();
            v138(v137);
          }

          FigSimpleMutexLock();
          v139 = *(DerivedStorage + 16);
          if (v139)
          {
            v30 = CFRetain(v139);
            FigSimpleMutexUnlock();
            if (v30)
            {
              FigRenderPipelineGetFigBaseObject();
              if (*(*(CMBaseObjectGetVTable() + 8) + 56))
              {
                v140 = OUTLINED_FUNCTION_400_0();
                v141(v140);
              }
            }
          }

          else
          {
            FigSimpleMutexUnlock();
            v30 = 0;
          }

          if (*(DerivedStorage + 1139))
          {
            FigRenderPipelineGetFigBaseObject();
            v143 = v142;
            v144 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v144)
            {
              v144(v143, @"IgnoreAudioDeviceLatencyInStartupSync", *MEMORY[0x1E695E4D0]);
            }
          }

          if (v200)
          {
            v217[0].value = 0;
            v145 = *(CMBaseObjectGetVTable() + 16);
            if (v145)
            {
              v146 = *(v145 + 48);
              if (v146)
              {
                v146(v200, *MEMORY[0x1E69AFC90], *MEMORY[0x1E695E480], v217);
              }
            }

            if (v217[0].value)
            {
              FigRenderPipelineGetFigBaseObject();
              if (*(*(CMBaseObjectGetVTable() + 8) + 56))
              {
                v147 = OUTLINED_FUNCTION_148();
                v148(v147);
              }

              CFRelease(v217[0].value);
            }
          }

          v149 = v208;
          if (*(v208 + 120) && *(v208 + 128))
          {
            FigRenderPipelineGetFigBaseObject();
            v151 = v150;
            v152 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v152)
            {
              v152(v151, @"EnableSweepFilter", *MEMORY[0x1E695E4D0]);
            }

            FigRenderPipelineGetFigBaseObject();
            if (*(*(CMBaseObjectGetVTable() + 8) + 56))
            {
              v153 = OUTLINED_FUNCTION_148();
              v154(v153);
            }

            v28 = CFNumberCreate(0, kCFNumberFloat32Type, (v149 + 136));
            FigRenderPipelineGetFigBaseObject();
            if (*(*(CMBaseObjectGetVTable() + 8) + 56))
            {
              v155 = OUTLINED_FUNCTION_148();
              v156(v155);
            }
          }

          else
          {
            v28 = 0;
          }

          v157 = *(v149 + 152);
          if (v157)
          {
            FigRenderPipelineGetFigBaseObject();
            v159 = v158;
            v160 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v160)
            {
              v160(v159, @"CinematicAudioParameters", v157);
            }
          }

          v161 = *(v12 + 984);
          if (v161)
          {
            FigRenderPipelineGetFigBaseObject();
            v163 = v162;
            v164 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v164)
            {
              v164(v163, @"AudioDeviceChannelMap", v161);
            }
          }

          v165 = *(v12 + 1536);
          if (v165)
          {
            FigRenderPipelineGetFigBaseObject();
            v167 = v166;
            v168 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v168)
            {
              v168(v167, @"AudioQueueClockDevice", v165);
            }
          }

          FigRenderPipelineGetFigBaseObject();
          v170 = v169;
          v171 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          v32 = v200;
          if (v171)
          {
            v171(v170, @"AllowsPrebuffering", *v133);
          }

          if (cf)
          {
            DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_85_0(DefaultLocalCenter);
            v173 = CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_85_0(v173);
            v174 = CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_85_0(v174);
            v175 = CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_85_0(v175);
            v176 = CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_85_0(v176);
            v177 = CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_85_0(v177);
            v178 = CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_85_0(v178);
            v179 = cf;
          }

          else
          {
            v179 = 0;
          }

          *v204 = v179;
          cf = 0;
          if (v200)
          {
            goto LABEL_250;
          }

          goto LABEL_18;
        }
      }

LABEL_110:
      v30 = 0;
      v28 = 0;
      v32 = v200;
      if (!v200)
      {
        goto LABEL_18;
      }

LABEL_250:
      CFRelease(v32);
      goto LABEL_18;
    }

    FigSimpleMutexLock();
    v74 = *(DerivedStorage + 176);
    if (v74)
    {
      v75 = CFRetain(v74);
      FigSimpleMutexUnlock();
      v189 = v75;
      if (v75)
      {
        v76 = (v198 & 1) != 0 || !CFBooleanGetValue(v23) || *(DerivedStorage + 896) != 0;
        v183 = v76;
        v187 = CMBaseObjectGetDerivedStorage();
        v212 = 0;
        v185 = *MEMORY[0x1E695E480];
        v80 = FigCFDictionaryCreateMutableCopy();
        v81 = v80;
        cf = 0;
        if (v22)
        {
          CFDictionarySetValue(v80, @"AllowAudibleContent", *MEMORY[0x1E695E4D0]);
        }

        theDicta = v81;
        if (!v183)
        {
          CFDictionarySetValue(v81, @"AllowAMRDecode", *MEMORY[0x1E695E4D0]);
        }

        if ((v71 & 1) == 0)
        {
          CFDictionarySetValue(v81, @"AllowAtmosDecode", *MEMORY[0x1E695E4D0]);
        }

        FigSimpleMutexLock();
        v82 = v187[59];
        if (v82)
        {
          v83 = CFRetain(v82);
          FigSimpleMutexUnlock();
          v84 = v83;
          v85 = v81;
          if (v84)
          {
            v188 = v84;
            CFDictionarySetValue(v81, @"AudioSession", v84);
          }

          else
          {
            v188 = 0;
          }
        }

        else
        {
          FigSimpleMutexUnlock();
          v188 = 0;
          v85 = v81;
        }

        CFDictionarySetValue(v85, @"LoggingID", NextRenderPipelineIdentifierString);
        FigCFDictionarySetValue();
        FigBufferedAirPlayAudioRenderPipelineCreate(v185, v189, v85, &v212);
        LODWORD(v75) = v89;
        if (!v89)
        {
          if (dword_1EAF16A10)
          {
            *type = 0;
            LOBYTE(keys) = 0;
            v186 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v184 = keys;
            v90 = os_log_type_enabled(v186, keys);
            if (OUTLINED_FUNCTION_109_0(v90))
            {
              if (v10)
              {
                v91 = (CMBaseObjectGetDerivedStorage() + 972);
              }

              else
              {
                v91 = "";
              }

              LODWORD(v213.value) = 136315906;
              *(&v213.value + 4) = "playerfig_createBufferedAirPlayAudioRenderPipeline";
              LOWORD(v213.flags) = 2048;
              *(&v213.flags + 2) = v10;
              HIWORD(v213.epoch) = 2082;
              v214 = v91;
              v215 = 2048;
              v216 = v212;
              OUTLINED_FUNCTION_108();
              _os_log_send_and_compose_impl(v92, v93, v94, v95, v96, v186, v184, v97, &v213, 42);
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_524(v98, v99, v100, v101, v102);
            v85 = theDicta;
          }

          cf = v212;
          v212 = 0;
        }

        if (v188)
        {
          CFRelease(v188);
        }

        if (v85)
        {
          CFRelease(v85);
        }

        if (v212)
        {
          CFRelease(v212);
        }

        CFRelease(v189);
        v73 = 0;
LABEL_165:
        if (!cf)
        {
          theDictb = v73;
          v190 = *(DerivedStorage + 120);
          if (v198)
          {
            v199 = 0;
            v103 = HasTrackOfType;
          }

          else
          {
            v104 = CFBooleanGetValue(v23);
            v103 = HasTrackOfType;
            if (v104)
            {
              v199 = *(DerivedStorage + 896) == 0;
            }

            else
            {
              v199 = 0;
            }
          }

          v105 = v103 == 0;
          v212 = 0;
          v106 = *MEMORY[0x1E695E480];
          CMTimeMake(v217, 1, 2);
          CMTimeMake(&v213, 1, 1);
          v107 = OUTLINED_FUNCTION_195_0();
          FPSupport_createRenderPipelineOptions(v107, v108, v190, v109, v110, v197, v22, v199, v203, 0, 0, v195, v202, v105, 0, 0, 0, v200, 0, 0, 0, NextRenderPipelineIdentifierString, &v212);
          if (v111 || (FigAudioQueueRenderPipelineCreate(v106, v212, &cf), v111))
          {
            LODWORD(v75) = v111;
            v73 = theDictb;
          }

          else
          {
            FigRenderPipelineGetFigBaseObject();
            v181 = v180;
            v182 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            v73 = theDictb;
            if (v182)
            {
              v182(v181, @"HandleFormatDescriptionChanges", *MEMORY[0x1E695E4D0]);
            }

            LODWORD(v75) = 0;
          }

          if (v212)
          {
            CFRelease(v212);
          }
        }

        if (v75)
        {
          goto LABEL_110;
        }

        goto LABEL_177;
      }
    }

    else
    {
      FigSimpleMutexUnlock();
      LODWORD(v75) = 0;
    }

    v73 = 1;
    goto LABEL_165;
  }

  v30 = 0;
  v28 = 0;
  if (v32)
  {
    goto LABEL_250;
  }

LABEL_18:
  FigFormatDescriptionRelease();
  FigFormatDescriptionRelease();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v207)
  {
    CFRelease(v207);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (NextRenderPipelineIdentifierString)
  {
    CFRelease(NextRenderPipelineIdentifierString);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  OUTLINED_FUNCTION_651();
}

void itemfig_applyAudioProcessingUnitsToTrack(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_442_0(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v4)
  {
    if (*(a2 + 16) && *(v2 + 1528) | *(a2 + 96))
    {
      v6 = DerivedStorage;
      MutableCopy = FigCFArrayCreateMutableCopy();
      if (MutableCopy)
      {
        v8 = MutableCopy;
        if (*(v2 + 1528))
        {
          CFArrayGetCount(*(v2 + 1528));
          v9 = OUTLINED_FUNCTION_284();
          v19.location = 0;
          CFArrayAppendArray(v9, v10, v19);
        }

        FigRenderPipelineGetFigBaseObject();
        v12 = v11;
        v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v13)
        {
          if (!v13(v12, @"AudioProcessingUnits", v8) && *(a2 + 16) == *(v6 + 584))
          {
            v14 = *(v6 + 640);
            *(v6 + 640) = v8;
            CFRetain(v8);
            if (v14)
            {
              CFRelease(v14);
            }
          }
        }

        CFRelease(v8);
      }

      else
      {
        OUTLINED_FUNCTION_111();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v16, v17);
      }
    }

    CFRelease(v4);
  }
}

uint64_t itemfig_applyAllAudioCurvesToTrack(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 16);
  if (result)
  {
    FigRenderPipelineGetFigBaseObject();
    VTable = CMBaseObjectGetVTable();
    v5 = *(VTable + 8);
    result = VTable + 8;
    if (*(v5 + 56))
    {
      v6 = OUTLINED_FUNCTION_188();
      result = v7(v6);
      if (!result)
      {
        result = *(a2 + 16);
        if (result)
        {
          FigRenderPipelineGetFigBaseObject();
          v8 = CMBaseObjectGetVTable();
          v9 = *(v8 + 8);
          result = v8 + 8;
          if (*(v9 + 56))
          {
            v10 = OUTLINED_FUNCTION_228();

            return v11(v10);
          }
        }
      }
    }
  }

  return result;
}

void itemfig_applyTimePitchAlgorithmToTrack()
{
  OUTLINED_FUNCTION_327_0();
  v75 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = OUTLINED_FUNCTION_442_0(DerivedStorage);
  v6 = CMBaseObjectGetDerivedStorage();
  if (v5)
  {
    v7 = v6;
    if (*v6)
    {
LABEL_24:
      CFRelease(v5);
      return;
    }

    v8 = *(v0 + 112);
    if (v8)
    {
      if (dword_1EAF16A10)
      {
        OUTLINED_FUNCTION_147();
        v9 = OUTLINED_FUNCTION_248_0();
        v17 = OUTLINED_FUNCTION_126(v9, v10, v11, v12, v13, v14, v15, v16, v56, v59, v62, *v65, v65[2], v65[3], v65[4]);
        OUTLINED_FUNCTION_830(v17, v18, v19, v20, v21, v22, v23, v24, v57, v60, v63, v66, v68, v70, v72);
        OUTLINED_FUNCTION_37();
        if (!v3)
        {
          goto LABEL_16;
        }

        if (v1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_122_0();
        OUTLINED_FUNCTION_39();
        v46 = "<<<< FigFilePlayer >>>> %s: [%p|%{public}s] <TrackID %d>: Setting TimePitchAlgorithm: %{public}@ on RenderPipeline %p.";
LABEL_15:
        OUTLINED_FUNCTION_43_0(v41, v42, v74, v43, &dword_1962D5000, v44, v45, v46);
        OUTLINED_FUNCTION_179_0();
LABEL_16:
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_449(v47, v48, v49, v50, v51);
      }
    }

    else
    {
      v8 = *(v2 + 1512);
      if (dword_1EAF16A10)
      {
        OUTLINED_FUNCTION_147();
        v25 = OUTLINED_FUNCTION_248_0();
        v33 = OUTLINED_FUNCTION_126(v25, v26, v27, v28, v29, v30, v31, v32, v56, v59, v62, *v65, v65[2], v65[3], v65[4]);
        OUTLINED_FUNCTION_830(v33, v34, v35, v36, v37, v38, v39, v40, v58, v61, v64, v67, v69, v71, v73);
        OUTLINED_FUNCTION_37();
        if (!v3)
        {
          goto LABEL_16;
        }

        if (v1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_114();
        OUTLINED_FUNCTION_39();
        v46 = "<<<< FigFilePlayer >>>> %s: [%p|%{public}s]: Setting TimePitchAlgorithm: %{public}@ on RenderPipeline %p.";
        goto LABEL_15;
      }
    }

    FigRenderPipelineGetFigBaseObject();
    v53 = v52;
    v54 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v54)
    {
      v54(v53, @"TimePitchAlgorithm", v8);
    }

    if (*(v0 + 16) == *(v7 + 73))
    {
      v55 = *(v7 + 81);
      *(v7 + 81) = v8;
      if (v8)
      {
        CFRetain(v8);
      }

      if (v55)
      {
        CFRelease(v55);
      }
    }

    goto LABEL_24;
  }
}

void fp_createAudioRenderPipelineOptionsForTrack()
{
  OUTLINED_FUNCTION_193();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v173[2] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v162 = 0;
  v163 = 0;
  v173[0] = 0;
  v173[1] = 0;
  v170 = 0;
  v171[0] = 0;
  v171[1] = 0;
  v172 = 0;
  v160 = 0;
  v161 = 0;
  v169[0] = 0;
  v169[1] = 0;
  v159 = 0;
  time = **&MEMORY[0x1E6960C70];
  v10 = OUTLINED_FUNCTION_273_0();
  if (fp_createCommonRenderPipelineOptionsForTrack(v10, v11, v12, v6, 1936684398, v4, v13))
  {
    v15 = 0;
LABEL_97:
    v49 = 0;
    v50 = 0;
    DefaultEnhanced = 0;
    goto LABEL_76;
  }

  v14 = v169[0];
  v15 = v169[0] != 0;
  v16 = *(DerivedStorage + 1008);
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v17)
  {
    v49 = 0;
    v50 = 0;
    DefaultEnhanced = 0;
    goto LABEL_76;
  }

  if (v17(v16, v6, &v163, 0) || itemfig_copyFormatDescription(v163, &v162))
  {
    goto LABEL_97;
  }

  v143 = v14 != 0;
  v144 = v14;
  v18 = v162;
  v19 = *(DerivedStorage + 960);
  if (!v19)
  {
    v19 = *(DerivedStorage + 968);
  }

  DefaultEnhanced = FigGaplessInfoCopyAndEnhance_CorrectingWithTrackReader(v162, v163, v19);
  v21 = MEMORY[0x1E695E480];
  if (dword_1EAF16A10)
  {
    v158 = 0;
    HIDWORD(v157) = 0;
    FigCFDictionaryGetInt64IfPresent();
    FigCFDictionaryGetInt32IfPresent();
    if (*(DerivedStorage + 152))
    {
      dictionaryRepresentation = 0;
      FigTrackReaderGetFigBaseObject();
      v23 = v22;
      v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v24)
      {
        if (!v24(v23, @"UneditedTrackDuration", *v21, &dictionaryRepresentation))
        {
          memset(&v155, 0, sizeof(v155));
          CMTimeMakeFromDictionary(&v155, dictionaryRepresentation);
          if (dictionaryRepresentation)
          {
            CFRelease(dictionaryRepresentation);
          }

          v34 = v158;
          if (v158 >= 1)
          {
            memset(&v154, 0, sizeof(v154));
            v35 = CMTimeMake(&v154, v158, SHIDWORD(v157));
            OUTLINED_FUNCTION_365_0(v35, v36, v37, v38, v39, v40, v41, v42, v43, v134, v136, v138, v140, v143, v14, v145, v149, rhs.value, *&rhs.timescale, rhs.epoch, *v152, 0, 0, 0, v153, v154.value, *&v154.timescale, v154.epoch, v44, v155.value);
            rhs = v154;
            CMTimeSubtract(&time, &lhs, &rhs);
            CMTimeAbsoluteValue(&v152[8], &time);
            CMTimeMakeWithSeconds(&time, 10.0, *&v152[16]);
            lhs = *&v152[8];
            v34 = CMTimeCompare(&lhs, &time);
            if (v34 >= 1)
            {
              if (dword_1EAF16A10)
              {
                LODWORD(rhs.value) = 0;
                HIBYTE(v149) = 0;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                value = rhs.value;
                v145 = os_log_and_send_and_compose_flags_and_os_log_type;
                HIDWORD(v140) = 0;
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                OUTLINED_FUNCTION_134();
                if (!v48)
                {
                  v47 = value;
                }

                if (v47)
                {
                  LODWORD(v140) = v47;
                  if (v8)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  if (*(DerivedStorage + 960))
                  {
                    v51 = "client";
                  }

                  else
                  {
                    v51 = "asset";
                  }

                  time = v154;
                  CMTimeGetSeconds(&time);
                  OUTLINED_FUNCTION_292_0(v52, v53, v54, v55, v56, v57, v58, v59, v134, v136, v138, v140, v143, v144, v145, v149, rhs.value, *&rhs.timescale, rhs.epoch, *v152, *&v152[16], *&v152[24], v153, v154.value, *&v154.timescale, v154.epoch, *&v155.value, v155.epoch, dictionaryRepresentation, v157, v158, v159, v160, v161, v162, v163, lhs.value, *&lhs.timescale, lhs.epoch, v165, v166[0], v166[1], v166[2], v166[3], time.value);
                  LODWORD(lhs.value) = 136316418;
                  OUTLINED_FUNCTION_214_0("fp_createAudioRenderPipelineOptionsForTrack");
                  LOWORD(v166[0]) = v60;
                  *(v166 + 2) = v51;
                  WORD1(v166[1]) = v61;
                  *(&v166[1] + 4) = v0;
                  WORD2(v166[2]) = v61;
                  *(&v166[2] + 6) = v62;
                  OUTLINED_FUNCTION_36_0();
                  OUTLINED_FUNCTION_108();
                  _os_log_send_and_compose_impl(v63, v64, v65, v66, v67, v145, v68, v69);
                }

                OUTLINED_FUNCTION_7();
                v32.n128_f64[0] = OUTLINED_FUNCTION_238_0(v70, v71, v72, v73, v74);
              }
            }
          }

          if (*(DerivedStorage + 152))
          {
            OUTLINED_FUNCTION_365_0(v34, v25, v26, v27, v28, v29, v30, v31, v32, v134, v136, v138, v140, v143, v144, v145, v149, rhs.value, *&rhs.timescale, rhs.epoch, *v152, *&v152[8], *&v152[16], *&v152[24], v153, 0, 0, 0, v33, v155.value);
            *&v152[8] = *(DerivedStorage + 140);
            *&v152[24] = *(DerivedStorage + 156);
            CMTimeSubtract(&time, &lhs, &v152[8]);
            CMTimeAbsoluteValue(&v154, &time);
            CMTimeMakeWithSeconds(&time, 10.0, v154.timescale);
            lhs = v154;
            if (CMTimeCompare(&lhs, &time) >= 1)
            {
              if (dword_1EAF16A10)
              {
                *&v152[8] = 0;
                LOBYTE(rhs.value) = 0;
                v75 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v76 = *&v152[8];
                v146 = v75;
                HIDWORD(v141) = LOBYTE(rhs.value);
                os_log_type_enabled(v75, rhs.value);
                OUTLINED_FUNCTION_134();
                if (v48)
                {
                  v78 = v77;
                }

                else
                {
                  v78 = v76;
                }

                if (v78)
                {
                  if (v8)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  time = *(DerivedStorage + 140);
                  CMTimeGetSeconds(&time);
                  OUTLINED_FUNCTION_292_0(v79, v80, v81, v82, v83, v84, v85, v86, v135, v137, v139, v141, v143, v144, v146, v150, rhs.value, *&rhs.timescale, rhs.epoch, *v152, *&v152[16], *&v152[24], v153, v154.value, *&v154.timescale, v154.epoch, *&v155.value, v155.epoch, dictionaryRepresentation, v157, v158, v159, v160, v161, v162, v163, lhs.value, *&lhs.timescale, lhs.epoch, v165, v166[0], v166[1], v166[2], v166[3], time.value);
                  LODWORD(lhs.value) = 136316162;
                  OUTLINED_FUNCTION_214_0("fp_createAudioRenderPipelineOptionsForTrack");
                  LOWORD(v166[0]) = v87;
                  *(v166 + 2) = v0;
                  WORD1(v166[1]) = v87;
                  *(&v166[1] + 4) = v88;
                  OUTLINED_FUNCTION_33_0();
                  v89 = OUTLINED_FUNCTION_35();
                  _os_log_send_and_compose_impl(v89, v90, v91, v92, v93, v147, v142, v94);
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_238_0(v95, v96, v97, v98, v99);
              }
            }
          }
        }
      }
    }
  }

  if (DefaultEnhanced)
  {
    v100 = 0;
  }

  else
  {
    DefaultEnhanced = FigGaplessInfoCreateDefaultEnhanced(v18);
    v100 = DefaultEnhanced != 0;
  }

  v148 = v2;
  GradualDecoderRefresh = FigGaplessInfoCreateGradualDecoderRefresh(v18);
  v50 = GradualDecoderRefresh;
  if (GradualDecoderRefresh)
  {
    v102 = v173;
    v103 = v171;
    v172 = @"gdrCount";
    v170 = GradualDecoderRefresh;
    v104 = 1;
  }

  else
  {
    v104 = 0;
    v102 = &v172;
    v103 = &v170;
  }

  v105 = *v21;
  FigTrackReaderGetFigBaseObject();
  v107 = v106;
  v108 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v108)
  {
    v108(v107, @"EditsExcludePrimingAndRemainderDuration", v105, &v161);
  }

  v109 = *MEMORY[0x1E695E4D0];
  if (v161 == *MEMORY[0x1E695E4D0])
  {
    if (DefaultEnhanced)
    {
      v110 = v100;
    }

    else
    {
      v110 = 1;
    }

    if (v110)
    {
      v2 = v148;
      if (!DefaultEnhanced)
      {
        goto LABEL_62;
      }
    }

    else
    {
      LODWORD(v155.value) = 0;
      LOBYTE(v154.value) = 0;
      v111 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      value_low = LOBYTE(v154.value);
      v113 = os_log_type_enabled(v111, v154.value);
      if (OUTLINED_FUNCTION_71_0(v113))
      {
        LODWORD(lhs.value) = 136315138;
        *(&lhs.value + 4) = "fp_createAudioRenderPipelineOptionsForTrack";
        OUTLINED_FUNCTION_36_0();
        OUTLINED_FUNCTION_51_0();
        _os_log_send_and_compose_impl(v114, v115, v116, v117, v118, v119, value_low, v120);
      }

      v2 = v148;
      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_449(v121, v122, v123, v124, v125);
    }

    CFRelease(DefaultEnhanced);
    DefaultEnhanced = 0;
    goto LABEL_62;
  }

  if (DefaultEnhanced)
  {
    *v102 = @"iTunesGaplessInfo";
    *v103 = DefaultEnhanced;
    ++v104;
  }

  v2 = v148;
LABEL_62:
  v126 = v144;
  FigTrackReaderGetFigBaseObject();
  v128 = v127;
  v129 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v129)
  {
    v129(v128, @"HasSeamSamples", v105, &v160);
    v129 = v160;
  }

  if (v129 == v109)
  {
    SInt32 = FigCFNumberCreateSInt32();
    if (SInt32)
    {
      v49 = SInt32;
      v173[v104 - 1] = @"BossTrack_BonusAudioPrimingPacketCountAtStart";
      v171[v104++ - 1] = SInt32;
      goto LABEL_69;
    }
  }

  v49 = 0;
  if (v104)
  {
LABEL_69:
    v169[v144 != 0] = CFDictionaryCreate(v105, &v172, &v170, v104, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v144)
    {
      v15 = 2;
      FigCFCreateCombinedDictionary();
      goto LABEL_76;
    }

    v126 = v169[0];
    v15 = 1;
    goto LABEL_72;
  }

  v15 = v143;
LABEL_72:
  v131 = 0;
  if (v15 && v126)
  {
    v131 = CFRetain(v126);
  }

  v159 = v131;
LABEL_76:
  if (v163)
  {
    CFRelease(v163);
  }

  if (DefaultEnhanced)
  {
    CFRelease(DefaultEnhanced);
  }

  if (v162)
  {
    CFRelease(v162);
    v162 = 0;
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v161)
  {
    CFRelease(v161);
    v161 = 0;
  }

  if (v160)
  {
    CFRelease(v160);
    v160 = 0;
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (v15)
  {
    v132 = 8 * v15;
    do
    {
      v133 = *&v168[v132];
      if (v133)
      {
        CFRelease(v133);
      }

      v132 -= 8;
    }

    while (v132);
  }

  *v2 = v159;
  OUTLINED_FUNCTION_191();
}

uint64_t itemfig_canItemAudioTrackReusePreviousItemAudioRenderPipeline(uint64_t a1)
{
  v227 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  v7 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v208 = 0;
  v206 = 0;
  if (!*(v7 + 584))
  {
    if (!dword_1EAF16A10)
    {
      goto LABEL_78;
    }

    v20 = OUTLINED_FUNCTION_34_0(v7, v8, v9, v10, v11, v12, v13, v14, v152, v161, v170, v179, v188, v197);
    OUTLINED_FUNCTION_111_0(v20, v21, v22, v23, v24, v25, v26, v27, v153, v162, v171, v180, v189, v198);
    OUTLINED_FUNCTION_40();
    if (!v2)
    {
      goto LABEL_76;
    }

    if (v6)
    {
      CMBaseObjectGetDerivedStorage();
      if (!a1)
      {
        goto LABEL_39;
      }
    }

    else if (!a1)
    {
      goto LABEL_39;
    }

    goto LABEL_19;
  }

  v1 = v7;
  if (!*(v7 + 688))
  {
    if (!dword_1EAF16A10)
    {
      goto LABEL_78;
    }

    v28 = OUTLINED_FUNCTION_34_0(v7, v8, v9, v10, v11, v12, v13, v14, v152, v161, v170, v179, v188, v197);
    OUTLINED_FUNCTION_111_0(v28, v29, v30, v31, v32, v33, v34, v35, v154, v163, v172, v181, v190, v199);
    OUTLINED_FUNCTION_40();
    if (!v2)
    {
      goto LABEL_76;
    }

    if (v6)
    {
      CMBaseObjectGetDerivedStorage();
      if (!a1)
      {
LABEL_39:
        OUTLINED_FUNCTION_1_0();
LABEL_40:
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl(v68, v69, v70, v71, v72, v73, v1, v74);
        goto LABEL_76;
      }
    }

    else if (!a1)
    {
      goto LABEL_39;
    }

LABEL_19:
    CMBaseObjectGetDerivedStorage();
    goto LABEL_39;
  }

  v15 = *(DerivedStorage + 1008);
  v16 = *(DerivedStorage + 1036);
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v17 || v17(v15, v16, &cf, 0) || itemfig_copyFormatDescription(cf, &v206) || itemfig_getTrackStorage(a1, *(DerivedStorage + 1036), &v208))
  {
    goto LABEL_78;
  }

  v18 = _os_feature_enabled_impl();
  if (*(v1 + 176))
  {
    if (_os_feature_enabled_impl())
    {
      goto LABEL_23;
    }

    v19 = "buffered airplay audio";
  }

  else
  {
    if (v18)
    {
      goto LABEL_23;
    }

    v19 = "audio";
  }

  v36 = FPSupport_RenderPipelineSupportsGaplessTransitionWithFormats(*(v1 + 584), *(v1 + 688), v206);
  if (!v36)
  {
    if (dword_1EAF16A10)
    {
      v75 = OUTLINED_FUNCTION_34_0(v36, v37, v38, v39, v40, v41, v42, v43, v152, v161, v170, v179, v188, v197);
      OUTLINED_FUNCTION_111_0(v75, v76, v77, v78, v79, v80, v81, v82, v156, v165, v174, v183, v192, v201);
      OUTLINED_FUNCTION_40();
      if (!v15)
      {
        goto LABEL_76;
      }

      if (v6)
      {
        v83 = (CMBaseObjectGetDerivedStorage() + 972);
      }

      else
      {
        v83 = "";
      }

      if (a1)
      {
        v102 = (CMBaseObjectGetDerivedStorage() + 2096);
      }

      else
      {
        v102 = "";
      }

      v209 = 136316418;
      v210 = "itemfig_canItemAudioTrackReusePreviousItemAudioRenderPipeline";
      v211 = 2048;
      v212 = v6;
      v213 = 2082;
      v214 = v83;
      v215 = 2048;
      v216 = a1;
      v217 = 2082;
      v218 = v102;
      v219 = 2082;
      v220 = v19;
      goto LABEL_40;
    }

    goto LABEL_78;
  }

LABEL_23:
  v44 = v208;
  v45 = OUTLINED_FUNCTION_373();
  v49 = playerfig_determineAudioProcessingTapRoles(v45, v46, v47, v48);
  if (*(v1 + 632) || *(v1 + 624))
  {
    if (dword_1EAF16A10)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_28();
      if (v3)
      {
        if (v6)
        {
          v67 = (CMBaseObjectGetDerivedStorage() + 972);
        }

        else
        {
          v67 = "";
        }

        if (a1)
        {
          v92 = (CMBaseObjectGetDerivedStorage() + 2096);
        }

        else
        {
          v92 = "";
        }

        v93 = *(v44 + 88);
        v94 = *(DerivedStorage + 1480);
        v209 = 136317186;
        v210 = "itemfig_canItemAudioTrackReusePreviousItemAudioRenderPipeline";
        v211 = 2048;
        v212 = v6;
        v213 = 2082;
        v214 = v67;
        v215 = 2048;
        v216 = a1;
        v217 = 2082;
        v218 = v92;
        v219 = 2048;
        v220 = 0;
        v221 = 2048;
        v222 = 0;
        v223 = 2048;
        v224 = v93;
        v225 = 2048;
        v226 = v94;
        OUTLINED_FUNCTION_36();
        _os_log_send_and_compose_impl(v95, v96, v97, v98, v99, v100, 0, v101, &v209, 92);
      }

      OUTLINED_FUNCTION_2();
      goto LABEL_77;
    }

    goto LABEL_78;
  }

  v57 = *(v44 + 112);
  if (v57)
  {
    if (v57 != *(v1 + 648))
    {
      if (dword_1EAF16A10)
      {
        v58 = OUTLINED_FUNCTION_34_0(v49, v50, v51, v52, v53, v54, v55, v56, v152, v161, v170, 0, 0, 0);
        OUTLINED_FUNCTION_111_0(v58, v59, v60, v61, v62, v63, v64, v65, v155, v164, v173, v182, v191, v200);
        OUTLINED_FUNCTION_40();
        if (v44)
        {
          if (v6)
          {
            CMBaseObjectGetDerivedStorage();
          }

          if (!a1)
          {
            goto LABEL_94;
          }

          goto LABEL_93;
        }

LABEL_76:
        OUTLINED_FUNCTION_7();
LABEL_77:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_78:
      v135 = 0;
      goto LABEL_79;
    }
  }

  else if (*(DerivedStorage + 1512) != *(v1 + 648))
  {
    if (!dword_1EAF16A10)
    {
      goto LABEL_78;
    }

    v84 = OUTLINED_FUNCTION_34_0(v49, v50, v51, v52, v53, v54, v55, v56, v152, v161, v170, 0, 0, 0);
    OUTLINED_FUNCTION_111_0(v84, v85, v86, v87, v88, v89, v90, v91, v157, v166, v175, v184, v193, v202);
    OUTLINED_FUNCTION_40();
    if (!v44)
    {
      goto LABEL_76;
    }

    if (v6)
    {
      CMBaseObjectGetDerivedStorage();
    }

    if (!a1)
    {
      goto LABEL_94;
    }

LABEL_93:
    CMBaseObjectGetDerivedStorage();
LABEL_94:
    OUTLINED_FUNCTION_1_0();
    goto LABEL_40;
  }

  shouldEnableSpatializationForTrack = itemfig_shouldEnableSpatializationForTrack(a1, *(DerivedStorage + 1036));
  if (shouldEnableSpatializationForTrack != *(v1 + 656))
  {
    if (!dword_1EAF16A10)
    {
      goto LABEL_78;
    }

    v127 = OUTLINED_FUNCTION_34_0(shouldEnableSpatializationForTrack, v104, v105, v106, v107, v108, v109, v110, v152, v161, v170, 0, 0, 0);
    OUTLINED_FUNCTION_111_0(v127, v128, v129, v130, v131, v132, v133, v134, v159, v168, v177, v186, v195, v204);
    OUTLINED_FUNCTION_40();
    if (!v44)
    {
      goto LABEL_76;
    }

    if (v6)
    {
      CMBaseObjectGetDerivedStorage();
    }

    if (!a1)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  v111 = FPSupport_AudioProcessingUnitsConfigurationsAreDifferent(*(DerivedStorage + 1528), *(v1 + 640));
  if (v111)
  {
    if (!dword_1EAF16A10)
    {
      goto LABEL_78;
    }

    v119 = OUTLINED_FUNCTION_34_0(v111, v112, v113, v114, v115, v116, v117, v118, v152, v161, v170, 0, 0, 0);
    OUTLINED_FUNCTION_111_0(v119, v120, v121, v122, v123, v124, v125, v126, v158, v167, v176, v185, v194, v203);
    OUTLINED_FUNCTION_40();
    if (!v44)
    {
      goto LABEL_76;
    }

    if (v6)
    {
      CMBaseObjectGetDerivedStorage();
    }

    if (!a1)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  if (dword_1EAF16A10)
  {
    v137 = OUTLINED_FUNCTION_34_0(v111, v112, v113, v114, v115, v116, v117, v118, v152, v161, v170, 0, 0, 0);
    OUTLINED_FUNCTION_111_0(v137, v138, v139, v140, v141, v142, v143, v144, v160, v169, v178, v187, v196, v205);
    OUTLINED_FUNCTION_40();
    if (v44)
    {
      if (v6)
      {
        CMBaseObjectGetDerivedStorage();
      }

      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl(v145, v146, v147, v148, v149, v150, v1, v151);
    }

    OUTLINED_FUNCTION_109();
    v135 = 1;
    OUTLINED_FUNCTION_70_0();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v135 = 1;
  }

LABEL_79:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v206)
  {
    CFRelease(v206);
  }

  return v135;
}

void itemfig_InformStakeholdersOfBestAvailableAudioContentType(uint64_t a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v4 = OUTLINED_FUNCTION_337_0(DerivedStorage);
    if (v4)
    {
      v5 = v4;
      v6 = CMBaseObjectGetDerivedStorage();
      if (*(v1 + 1328))
      {
        v7 = v6;
        v8 = *(v1 + 1036);
        v9 = MEMORY[0x1E69B06C0];
        if (v8)
        {
          TrackAudioChannelCount = itemfig_getTrackAudioChannelCount(a1, v8, 0);
          isTrackAtmos = itemfig_isTrackAtmos(a1, *(v1 + 1036));
          v12 = MEMORY[0x1E69B06B0];
          if (!isTrackAtmos)
          {
            v12 = MEMORY[0x1E69B06B8];
          }

          if (TrackAudioChannelCount >= 3)
          {
            v9 = v12;
          }
        }

        FigSimpleMutexLock();
        v13 = *(v7 + 472);
        if (v13)
        {
          v14 = CFRetain(v13);
          FigSimpleMutexUnlock();
          if (v14)
          {
            v15 = *v9;
            v16 = *(CMBaseObjectGetVTable() + 16);
            if (v16)
            {
              v17 = *(v16 + 56);
              if (v17)
              {
                v17(v14, *MEMORY[0x1E69AFD40], v15);
              }
            }

            CFRelease(v14);
          }
        }

        else
        {
          FigSimpleMutexUnlock();
        }
      }

      CFRelease(v5);
    }

    else
    {
      OUTLINED_FUNCTION_239();

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }
}

void playerfig_AudioPlayResourcePreempted(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = OUTLINED_FUNCTION_645(result, a2);
    if (!*v3)
    {
      if (*(v3 + 536))
      {
        playerfig_pauseForInternalReason(v2, 30);
        OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
        OUTLINED_FUNCTION_355_0();
        OUTLINED_FUNCTION_357_0();
        OUTLINED_FUNCTION_160_0();
        playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
      }
    }
  }
}

uint64_t playerfig_renderPipelineRequiresManualRestart(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_163_0(result, a2);
    CFRetain(v2);
    OUTLINED_FUNCTION_120_0();

    return FigDeferNotificationToDispatchQueue();
  }

  return result;
}

__CFDictionary *itemfig_createFailedNotificationPayloadWithContentStream(CFTypeRef a1, __CFDictionary *a2)
{
  FailedNotificationPayload = a2;
  cf = 0;
  if (a2)
  {
    if (a1)
    {
      CMBaseObject = CMByteStreamGetCMBaseObject();
      v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v4)
      {
        v4(CMBaseObject, *MEMORY[0x1E6960DD8], *MEMORY[0x1E695E480], &cf);
        a1 = cf;
      }

      else
      {
        a1 = 0;
      }
    }

    FailedNotificationPayload = itemfig_createFailedNotificationPayload(a1, FailedNotificationPayload);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return FailedNotificationPayload;
}

__CFDictionary *itemfig_createFailedNotificationPayload(uint64_t a1, const void *a2)
{
  if (!a2)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = Mutable;
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, @"Result", a2);
    if (a1)
    {
      v6 = OUTLINED_FUNCTION_228();
      CFDictionarySetValue(v6, v7, v8);
    }
  }

  return v5;
}

void playerfig_postDeferredCurrentItemDidChangeNotificationWithReason()
{
  OUTLINED_FUNCTION_565();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_440_0(DerivedStorage);
  if (CFArrayGetCount(*(v1 + 528)) >= 1 && (v4 = OUTLINED_FUNCTION_233_0()) != 0)
  {
    v5 = CFRetain(v4);
  }

  else
  {
    v5 = 0;
  }

  FigSimpleMutexUnlock();
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (v0)
    {
      v6 = (CMBaseObjectGetDerivedStorage() + 972);
    }

    else
    {
      v6 = "";
    }

    strncpy(__dst, v6, 8uLL);
    if (v5)
    {
      v7 = (CMBaseObjectGetDerivedStorage() + 2096);
    }

    else
    {
      v7 = "";
    }

    strncpy(__dst, v7, 8uLL);
    OUTLINED_FUNCTION_197();
    kdebug_trace();
  }

  OUTLINED_FUNCTION_601();
  v8 = OUTLINED_FUNCTION_198_0();
  NotificationPayloadForProperties = playerfig_createNotificationPayloadForProperties(v8, v9, v10, v11, v12, v13, v14, v15, v19, v21);
  v17 = NotificationPayloadForProperties;
  if (NotificationPayloadForProperties)
  {
    if (v2)
    {
      CFDictionarySetValue(NotificationPayloadForProperties, @"ReasonForCurrentItemDidChange", v2);
    }

    if (v5)
    {
      OUTLINED_FUNCTION_167(MEMORY[0x1E6960C70]);
      itemfig_getDurationIfReady(v5, __dst);
      OUTLINED_FUNCTION_29();
      if (v18)
      {
        FigCFDictionarySetCMTime();
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v22, v23);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  if (v17)
  {
    CFRelease(v17);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t playerfig_updateStartHostTimeEstimatesOfItemAtIndexAndFollowingItems(uint64_t a1, CFIndex a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 528);
  if (v4)
  {
    Count = CFArrayGetCount(v4);
  }

  else
  {
    Count = 0;
  }

  if (Count <= a2)
  {
    return 0;
  }

  while (1)
  {
    CFArrayGetValueAtIndex(*(DerivedStorage + 528), a2);
    if (a2 >= 1)
    {
      CFArrayGetValueAtIndex(*(DerivedStorage + 528), a2 - 1);
    }

    v6 = OUTLINED_FUNCTION_502();
    result = itemfig_updateStartHostTimeEstimate(v6, v7);
    if (result)
    {
      break;
    }

    if (Count == ++a2)
    {
      return 0;
    }
  }

  return result;
}

void itemfig_vendAccessLogWhenItemStopsBeingCurrent(uint64_t a1)
{
  v66 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    *(CMBaseObjectGetDerivedStorage() + 2044) = 7;
  }

  itemfig_reportingAgentReportRateChanged();
  if (*(DerivedStorage + 1745))
  {
    v3 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v3)
    {
      v4 = v3;
      itemfig_commitAccessLogEntry(v3, a1);
      if (dword_1EAF16A10 >= 2)
      {
        if (*(DerivedStorage + 1281))
        {
          v5 = *(DerivedStorage + 1560);
          if (v5)
          {
            if (CFArrayGetCount(v5) >= 1)
            {
              cf = 0;
              if (!FigPlaybackItemLogCreateW3CLogData(*(DerivedStorage + 1560), &cf))
              {
                v6 = cf;
                Current = CFAbsoluteTimeGetCurrent();
                if (v6)
                {
                  v8 = *&Current;
                  Length = CFStringGetLength(v6);
                  v10 = *MEMORY[0x1E695E480];
                  v11 = OUTLINED_FUNCTION_249();
                  Mutable = CFArrayCreateMutable(v11, v12, v13);
                  theArray = Mutable;
                  if (Length > 799)
                  {
                    v15 = 0;
                    v16 = (Length + 799) / 0x320uLL;
                    DerivedStorage = 1;
                    do
                    {
                      if (Length >= 0x320)
                      {
                        v17 = 800;
                      }

                      else
                      {
                        v17 = Length;
                      }

                      v18 = v6;
                      v67.location = v15;
                      v67.length = v17;
                      v19 = CFStringCreateWithSubstring(v10, v6, v67);
                      if (v19)
                      {
                        v20 = v19;
                        v54 = v16;
                        v55 = v19;
                        v53 = DerivedStorage;
                        v52 = v8;
                        v21 = OUTLINED_FUNCTION_249();
                        v23 = CFStringCreateWithFormat(v21, v22, @"[%.3f: %d/%d] %@");
                        CFRelease(v20);
                        if (v23)
                        {
                          CFArrayAppendValue(theArray, v23);
                          CFRelease(v23);
                        }
                      }

                      Length -= v17;
                      v15 += v17;
                      v25 = DerivedStorage++ >= v16 || Length <= 0;
                      v6 = v18;
                    }

                    while (!v25);
                  }

                  else
                  {
                    CFArrayAppendValue(Mutable, v6);
                  }

                  if (theArray)
                  {
                    CFRetain(theArray);
                    v26 = OUTLINED_FUNCTION_413();
                    CFRelease(v26);
                    if (DerivedStorage)
                    {
                      v28 = &unk_1EAF16000;
                      if (CFArrayGetCount(DerivedStorage) >= 1)
                      {
                        v29 = 0;
                        *&v27 = 136315395;
                        v58 = v27;
                        do
                        {
                          v30 = OUTLINED_FUNCTION_266();
                          ValueAtIndex = CFArrayGetValueAtIndex(v30, v31);
                          if (v28[644] >= 2u)
                          {
                            v33 = ValueAtIndex;
                            OUTLINED_FUNCTION_397_0();
                            v41 = OUTLINED_FUNCTION_346_0(qword_1EAF16A08, v34, v35, v36, v37, v38, v39, v40, v52, v53, v54, v55, v56, theArray, v58, *(&v58 + 1), v59, SBYTE2(v59), SBYTE3(v59), SBYTE4(v59));
                            os_log_type_enabled(v41, BYTE3(v59));
                            OUTLINED_FUNCTION_134();
                            if (v45)
                            {
                              v46 = v44;
                            }

                            else
                            {
                              v46 = HIDWORD(v59);
                            }

                            if (v46)
                            {
                              v61 = v58;
                              v62 = "itemfig_vendAccessLogWhenItemStopsBeingCurrent";
                              v63 = 2113;
                              v64 = v33;
                              OUTLINED_FUNCTION_146();
                              OUTLINED_FUNCTION_108();
                              v51 = _os_log_send_and_compose_impl(v47, v48, v49, v50, &dword_1962D5000, v41, BYTE3(v59), "<<<< FigFilePlayer >>>> %s: %{private}@");
                            }

                            else
                            {
                              v51 = 0;
                            }

                            OUTLINED_FUNCTION_88_0(qword_1EAF16A08, v42, v43, v51, v51 != &v65);
                            v28 = &unk_1EAF16000;
                          }

                          ++v29;
                        }

                        while (v29 < CFArrayGetCount(DerivedStorage));
                      }

                      CFRelease(DerivedStorage);
                    }
                  }
                }

                CFRelease(cf);
              }
            }
          }
        }
      }

      CFRelease(v4);
    }
  }
}

uint64_t playerfig_scheduleEmptyConfigurationsToVideoTargetsForItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_327_0();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v7 = *(DerivedStorage + 256);
  if (v7)
  {
    v8 = CFRetain(v7);
  }

  else
  {
    v8 = 0;
  }

  FigSimpleMutexUnlock();
  v9 = OUTLINED_FUNCTION_293();
  DataChannelConfigurationAndSetIdentifiers = playerfig_createDataChannelConfigurationAndSetIdentifiers(v9, v10, v11, v12);
  if (DataChannelConfigurationAndSetIdentifiers)
  {
LABEL_23:
    v31 = DataChannelConfigurationAndSetIdentifiers;
    if (v8)
    {
      goto LABEL_21;
    }

    return v31;
  }

  if (v8 && CFArrayGetCount(v8) >= 1)
  {
    OUTLINED_FUNCTION_332_0();
    do
    {
      v14 = OUTLINED_FUNCTION_415_0();
      ValueAtIndex = CFArrayGetValueAtIndex(v14, v15);
      if (*(a3 + 12))
      {
        OUTLINED_FUNCTION_130_0();
        VTable = CMBaseObjectGetVTable();
        v27 = *(VTable + 16);
        v26 = VTable + 16;
        if (!*(v27 + 64))
        {
LABEL_19:
          v31 = 4294954514;
LABEL_20:
          if (v8)
          {
            goto LABEL_21;
          }

          return v31;
        }

        v28 = OUTLINED_FUNCTION_315_0(v26, v19, v20, v21, v22, v23, v24, v25, v33);
        DataChannelConfigurationAndSetIdentifiers = v29(ValueAtIndex, 0, v28);
        if (DataChannelConfigurationAndSetIdentifiers)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v17 = *(*(CMBaseObjectGetVTable() + 16) + 72);
        if (!v17)
        {
          goto LABEL_19;
        }

        DataChannelConfigurationAndSetIdentifiers = v17(ValueAtIndex, 0);
        if (DataChannelConfigurationAndSetIdentifiers)
        {
          goto LABEL_23;
        }
      }

      OUTLINED_FUNCTION_220_0();
    }

    while (!v30);
  }

  v31 = 0;
  if (!v3)
  {
    goto LABEL_20;
  }

  *(v6 + 916) = 0;
  if (v8)
  {
LABEL_21:
    CFRelease(v8);
  }

  return v31;
}

void itemfig_ExternalProtectionStatusChanged(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_163_0(a1, a2);
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  CMBaseObjectGetDerivedStorage();
  if (v3)
  {
    if (v2)
    {
      CFRetain(v2);
    }

    OUTLINED_FUNCTION_120_0();
    FigDeferNotificationToDispatchQueue();

    CFRelease(v3);
  }
}

void itemfig_DeferredUnlikelyToKeepUp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  OUTLINED_FUNCTION_216_0();
  v6 = *(CMBaseObjectGetDerivedStorage() + 8);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v8 = *(DerivedStorage + 1952);
  if (v8)
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v9)
    {
      v9(v8, @"playerStats", 304, 0, 0);
    }
  }

  FigSimpleMutexUnlock();
  playerfig_updatePlaybackStateAndBossRate(v6, 6, 0);
  OUTLINED_FUNCTION_206_0();

  itemfig_DeferredPostNotificationOnDispatchQueue(v10, v11, v12, v13, a5);
}

void itemfig_DeferredPlayableRangeChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  OUTLINED_FUNCTION_187();
  v7 = *(CMBaseObjectGetDerivedStorage() + 8);
  CMBaseObjectGetDerivedStorage();
  NotificationPayloadForProperties = playerfig_createNotificationPayloadForProperties(v7, v5, v8, v9, v10, v11, v12, v13, @"PlayableTimeIntervals", 0);
  v15 = NotificationPayloadForProperties;
  if (a5 && NotificationPayloadForProperties)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v17 = CMBaseObjectGetDerivedStorage();
    v18 = *(DerivedStorage + 1192);
    v19 = *(v17 + 1424);
    if (v18 >= v19)
    {
      v20 = *(v17 + 1424);
    }

    else
    {
      v20 = *(DerivedStorage + 1192);
    }

    if (!v19)
    {
      v20 = *(DerivedStorage + 1192);
    }

    if (v18)
    {
      v21 = v20;
    }

    else
    {
      v21 = *(v17 + 1424);
    }

    if (v21 >= 1 && (Value = FigCFDictionaryGetValue()) != 0 && CFArrayGetCount(Value) >= 1)
    {
      OUTLINED_FUNCTION_132_0(MEMORY[0x1E6960CC0]);
      itemfig_getNonNegativeCurrentTime(v5, &v34);
      v23 = OUTLINED_FUNCTION_396();
      ValueAtIndex = CFArrayGetValueAtIndex(v23, v24);
      time = v34;
      Seconds = CMTimeGetSeconds(&time);
      CFDictionaryGetValue(ValueAtIndex, @"end");
      FigCFNumberGetFloat64();
      v28 = v27 - Seconds >= v21;
    }

    else
    {
      v28 = 0;
    }

    v29 = *MEMORY[0x1E695E4D0];
    if (v29 != CFDictionaryGetValue(a5, @"FPM_IsFilling") || v28)
    {
      v31 = @"Full";
    }

    else
    {
      v31 = @"Filling";
    }

    FigSimpleMutexLock();
    v32 = FigCFArrayContainsValue();
    FigSimpleMutexUnlock();
    if (v28 && !v32)
    {
      OUTLINED_FUNCTION_228();
      OUTLINED_FUNCTION_408_0();
      CMNotificationCenterPostNotification();
      playerfig_configureDownloadInPlayQueueAndItemsToPrebuffer(v7);
    }

    CFDictionarySetValue(v15, @"CurrentBufferState", v31);
    OUTLINED_FUNCTION_228();
    OUTLINED_FUNCTION_426();
    CMNotificationCenterPostNotification();
  }

  else
  {
    OUTLINED_FUNCTION_228();
    OUTLINED_FUNCTION_426();
    CMNotificationCenterPostNotification();
    if (!v15)
    {
      goto LABEL_29;
    }
  }

  CFRelease(v15);
LABEL_29:
  CFRelease(v5);
}

void itemfig_ReachedOverlappedStartTime(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = DerivedStorage;
  if (dword_1EAF16A10 >= 2)
  {
    v14 = OUTLINED_FUNCTION_30_0(DerivedStorage, v6, v7, v8, v9, v10, v11, v12, v41, v43, v45, v47, SBYTE2(v47), SBYTE3(v47), SHIDWORD(v47));
    OUTLINED_FUNCTION_311(v14, v15, v16, v17, v18, v19, v20, v21, v42, v44, v46, v48, v49, v50, v51);
    OUTLINED_FUNCTION_40();
    if (v3)
    {
      if (a2)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_139();
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl(v22, v23, v24, v25, v26, v27, v2, v28);
      OUTLINED_FUNCTION_612();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414(v29, v30, v31, v32, v33);
  }

  if (!*v13)
  {
    v34 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v34)
    {
      v35 = v34;
      v36 = CMBaseObjectGetDerivedStorage();
      if (!*v36)
      {
        v37 = v36;
        v38 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
        if (v38)
        {
          v39 = v38;
          *v38 = CFRetain(v35);
          if (a2)
          {
            v40 = CFRetain(a2);
          }

          else
          {
            v40 = 0;
          }

          v39[1] = v40;
          dispatch_async_f(v37[13], v39, itemfig_DeferReachedOverlappedStartTime_f);
        }
      }

      CFRelease(v35);
    }
  }
}

void itemfig_BossDisturbPlayback(uint64_t a1, uint64_t a2)
{
  if (!*CMBaseObjectGetDerivedStorage())
  {
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v2)
    {
      v3 = v2;
      if (!*CMBaseObjectGetDerivedStorage())
      {
        OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
        OUTLINED_FUNCTION_355_0();
        OUTLINED_FUNCTION_357_0();
        OUTLINED_FUNCTION_160_0();
        playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
      }

      CFRelease(v3);
    }
  }
}

uint64_t itemfig_UpdateLastPlayedOutOrLastPlayedDateIfNecessary(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  v23 = 0;
  FigSimpleMutexLock();
  if (FigFileDoesFileExist() == 1 && !*(DerivedStorage + 2184) && (v3 = *(DerivedStorage + 2144)) != 0 && (FigAssetDownloadStorageManagementCopyDownloadStartDateForAssetAtURL(*(DerivedStorage + 112), v3, &v23), v23))
  {
    v4 = *MEMORY[0x1E695E480];
    Current = CFAbsoluteTimeGetCurrent();
    v6 = CFDateCreate(v4, Current);
    if (v6)
    {
      v7 = 0;
      v8 = *(DerivedStorage + 112);
      v9 = *(DerivedStorage + 2144);
      cf = 0;
      if (v8 && v9)
      {
        v28 = **&MEMORY[0x1E6960C70];
        v27 = v28;
        itemfig_GetDuration(a1, &v28);
        if (v10 || (v28.flags & 1) == 0)
        {
          goto LABEL_14;
        }

        v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v11)
        {
          v11(a1, &v27);
        }

        time = v28;
        CMTimeMultiplyByFloat64(&time2, &time, 0.95);
        time = v27;
        if (CMTimeCompare(&time, &time2) < 0)
        {
LABEL_14:
          v12 = OUTLINED_FUNCTION_284();
          if (FigAssetDownloadStorageManagementCopyLastPlayedOutDateForAssetAtURL(v12, v13, v14))
          {
            v15 = 1;
          }

          else
          {
            v15 = cf == 0;
          }

          v7 = !v15;
          if (cf)
          {
            CFRelease(cf);
          }
        }

        else
        {
          v7 = 1;
        }
      }

      IsMediaplaybackd = FigServer_IsMediaplaybackd();
      v17 = *(DerivedStorage + 112);
      if (!IsMediaplaybackd)
      {
        FigAssetDownloadStorageManagementSetLastPlayedDateForAssetAtURL(v17, *(DerivedStorage + 2144), v6, v7);
        OUTLINED_FUNCTION_786();
        if ((v19 & v7) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      FPSupport_CreatePayloadForLastPlayedDateNotification(v17, v6, v7, &v22);
      if (!v18)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        if (v7)
        {
LABEL_27:
          *(DerivedStorage + 2184) = 1;
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_243();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, v22, v23);
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_28:
  if (v22)
  {
    CFRelease(v22);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return FigSimpleMutexUnlock();
}

void itemfig_advanceToNextItem(uint64_t a1)
{
  v225 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = v3;
    CMBaseObjectGetDerivedStorage();
    v5 = OUTLINED_FUNCTION_413();
    v6 = CFGetAllocator(v5);
    if (FigDeferredTransactionCreate(v6, &cf))
    {
LABEL_108:
      CFRelease(v4);
      if (cf)
      {
        CFRelease(cf);
      }

      return;
    }

    if (dword_1EAF16A10)
    {
      LODWORD(v201) = 0;
      BYTE4(v196) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_46();
      if (&unk_1EAF16000)
      {
        v8 = (CMBaseObjectGetDerivedStorage() + 972);
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        v203.n128_u32[0] = 136316162;
        OUTLINED_FUNCTION_29_0();
        v205 = v8;
        *v206 = v9;
        *&v206[2] = a1;
        *&v206[10] = v10;
        *&v206[12] = v11;
        OUTLINED_FUNCTION_146();
        OUTLINED_FUNCTION_36();
        _os_log_send_and_compose_impl(v12, v13, v14, v15, v16, v17, 0, v18);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0(v19, v20, v21, v22, v23);
    }

    v24 = playerfig_doingGapless(v4);
    v25 = MEMORY[0x1E6960C70];
    if (v24)
    {
      if (a1)
      {
        *(CMBaseObjectGetDerivedStorage() + 2044) = 7;
      }

      itemfig_reportingAgentReportRateChanged();
      if (CFArrayGetCount(*(v1 + 528)) >= 2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 528), 1);
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (CMTimebaseGetRate(*(DerivedStorage + 328)) != 0.0)
        {
          if (ValueAtIndex)
          {
            *(CMBaseObjectGetDerivedStorage() + 2044) = 7;
          }

          itemfig_reportingAgentReportRateChanged();
        }
      }

      FigSimpleMutexLock();
      v29 = *(v1 + 216);
      if (v29)
      {
        v30 = CFArrayGetCount(v29) > 0;
      }

      else
      {
        v30 = 0;
      }

      FigSimpleMutexUnlock();
      FigSimpleMutexLock();
      v31 = *(v1 + 256);
      if (v31)
      {
        v32 = CFArrayGetCount(v31) > 0;
      }

      else
      {
        v32 = 0;
      }

      FigSimpleMutexUnlock();
      Count = CFArrayGetCount(*(v1 + 528));
      if (Count < 2)
      {
        v42 = 0;
        v41 = 0;
      }

      else
      {
        v41 = CFArrayGetValueAtIndex(*(v1 + 528), 1);
        Count = CMBaseObjectGetDerivedStorage();
        v42 = Count;
      }

      if ((v30 || v32) && v41 && *(v1 + 536) != a1 && (Count = itemfig_hasEnqueuedFirstVideoFrame(v41), Count))
      {
        OUTLINED_FUNCTION_233_0();
        v52 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        v53 = *(v52 + 896);
        if (v53)
        {
          FigLayerSynchronizerSetConfigurationWithDeferredTransaction(v53, 0, cf);
        }

        FigSimpleMutexUnlock();
        v54 = FigUseVideoReceiverForCALayer();
        if (v54)
        {
          v26 = 0;
        }

        else
        {
          v26 = v30;
        }

        if (v26)
        {
          v54 = itemfig_handleReadyToDisplayVideoLatch(v41, 3, cf);
        }

        if (v32 && !*(v42 + 916))
        {
          v62 = OUTLINED_FUNCTION_627();
          v54 = playerfig_scheduleVideoTargetImageQueueConfigurationTransitionForItem(v62, v63, v64, v65, v66, v67, v68, v69, v175, v178, v181, v184, v187, v190, v193, v196, v201, cf, SHIDWORD(cf), v203.n128_u64[0], v203.n128_i64[1], v204, v205, *v206, *&v206[8], *&v206[16], *&v206[24], v207, *v208, *&v208[8], *&v208[16], v209.n128_u64[0], v209.n128_i64[1], v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235);
        }

        if (*(v42 + 625))
        {
          *(v42 + 625) = 0;
          if (dword_1EAF16A10 >= 2)
          {
            v70 = OUTLINED_FUNCTION_161_0(v54, v55, v56, v57, v58, v59, v60, v61, v175, v178, v181, v184, v187, v190, v193, v196, SBYTE4(v196), v201);
            OUTLINED_FUNCTION_433_0(v70, v71, v72, v73, v74, v75, v76, v77, v177, v180, v183, v186, v189, v192, v195, v198, typea, v201);
            OUTLINED_FUNCTION_28();
            if (v30)
            {
              v193 = (CMBaseObjectGetDerivedStorage() + 972);
              if (a1)
              {
                v161 = (CMBaseObjectGetDerivedStorage() + 2096);
              }

              else
              {
                v161 = "";
              }

              *&v162 = *(v1 + 48);
              FigPlayerPlaybackStateGetDescription(*(v1 + 52));
              v203.n128_u32[0] = 136316930;
              OUTLINED_FUNCTION_174_0();
              *&v206[12] = v161;
              *&v206[20] = v163;
              *&v206[22] = v41;
              *&v206[30] = v163;
              v207 = v162;
              *v208 = v164;
              *&v208[2] = v165;
              OUTLINED_FUNCTION_146();
              OUTLINED_FUNCTION_23();
              _os_log_send_and_compose_impl(v166, v167, v168, v169, v170, v171, &unk_1EAF16000, v172);
            }

            OUTLINED_FUNCTION_2();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v173 = OUTLINED_FUNCTION_273_0();
          itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(v173, v174);
          v25 = MEMORY[0x1E6960C70];
          v209 = *MEMORY[0x1E6960C70];
          OUTLINED_FUNCTION_294_0(*(MEMORY[0x1E6960C70] + 16), v209, v175, v178, v181, v184, v187, v190, v193, v196, v201, cf, v203, v204, v205, *v206, *&v206[8], *&v206[16], *&v206[24], v207, *v208, *&v208[8], *&v208[16], v209.n128_i64[0]);
          goto LABEL_63;
        }
      }

      else
      {
        if (dword_1EAF16A10)
        {
          v43 = OUTLINED_FUNCTION_161_0(Count, v34, v35, v36, v37, v38, v39, v40, v175, v178, v181, v184, v187, v190, v193, v196, SBYTE4(v196), v201);
          OUTLINED_FUNCTION_433_0(v43, v44, v45, v46, v47, v48, v49, v50, v176, v179, v182, v185, v188, v191, v194, v197, type, v201);
          OUTLINED_FUNCTION_28();
          if (v30)
          {
            v193 = (CMBaseObjectGetDerivedStorage() + 972);
            if (a1)
            {
              v51 = (CMBaseObjectGetDerivedStorage() + 2096);
            }

            else
            {
              v51 = "";
            }

            v190 = v51;
            if (v41)
            {
              v78 = "YES";
            }

            else
            {
              v78 = "NO";
            }

            if (*(v1 + 536) == a1)
            {
              v79 = "NO";
            }

            else
            {
              v79 = "YES";
            }

            v184 = v79;
            v187 = v78;
            if (v30 || v32)
            {
              v80 = "YES";
            }

            else
            {
              v80 = "NO";
            }

            itemfig_hasEnqueuedFirstVideoFrame(v41);
            v203.n128_u32[0] = 136317186;
            OUTLINED_FUNCTION_29_0();
            v205 = v193;
            *v206 = v81;
            *&v206[2] = a1;
            *&v206[10] = v82;
            *&v206[12] = v190;
            *&v206[20] = v82;
            *&v206[22] = v187;
            *&v206[30] = v82;
            v207 = v184;
            *v208 = v82;
            *&v208[2] = v80;
            *&v208[10] = v82;
            *&v208[12] = v83;
            OUTLINED_FUNCTION_146();
            OUTLINED_FUNCTION_23();
            _os_log_send_and_compose_impl(v84, v85, v86, v87, v88, v89, &unk_1EAF16000, v90);
          }

          OUTLINED_FUNCTION_2();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        LOBYTE(v26) = 0;
      }

      v25 = MEMORY[0x1E6960C70];
    }

    else
    {
      LOBYTE(v26) = 0;
    }

LABEL_63:
    v91 = *(v1 + 536);
    if (v91 == a1)
    {
      v92 = 0;
      *(v1 + 544) = 0;
    }

    else
    {
      v93 = CMBaseObjectGetDerivedStorage();
      if (v93)
      {
        v92 = *(v93 + 1329) != 0;
      }

      else
      {
        v92 = 0;
      }
    }

    OUTLINED_FUNCTION_198_0();
    OUTLINED_FUNCTION_439();
    playerfig_gracefullyRemoveItemFromPlayQueue(v94, v95, v96, v97, 0, 0);
    playerfig_postDeferredCurrentItemDidChangeNotificationWithReason();
    if (FigUseVideoReceiverForCALayer())
    {
      itemfig_clearAllImageQueueTables(a1);
    }

    else
    {
      itemfig_removeAllImageQueues(a1);
      if (!*(v1 + 536))
      {
        playerfig_freeTransitionImageQueueAndSlot(v4);
      }
    }

    v98 = !v92;
    if (v91 == a1)
    {
      v98 = 0;
    }

    if (!v98)
    {
      v99 = OUTLINED_FUNCTION_198();
      playerfig_prepareWorkingItem(v99, v100, v101);
    }

    if (CFArrayGetCount(*(v1 + 528)) < 1)
    {
      v113 = OUTLINED_FUNCTION_312();
      playeritemfig_releaseRenderPipelines(v113, v114, v115, v116, v117, v118, v119, v120, v175, v178, v181, v184, v187, v190, v193, v196, v201, cf, v203.n128_i64[0], v203.n128_i64[1], v204, v205, *v206, *&v206[8]);
    }

    else
    {
      v102 = OUTLINED_FUNCTION_233_0();
      v103 = CMBaseObjectGetDerivedStorage();
      v111 = v103;
      if (*(v103 + 625))
      {
        *(v103 + 625) = 0;
        if (dword_1EAF16A10 >= 2)
        {
          v112 = OUTLINED_FUNCTION_161_0(v103, v104, v105, v106, v107, v108, v109, v110, v175, v178, v181, v184, v187, v190, v193, v196, SBYTE4(v196), v201);
          os_log_type_enabled(v112, BYTE4(v196));
          OUTLINED_FUNCTION_37();
          if (v25)
          {
            v193 = (CMBaseObjectGetDerivedStorage() + 972);
            if (a1)
            {
              v121 = (CMBaseObjectGetDerivedStorage() + 2096);
            }

            else
            {
              v121 = "";
            }

            *&v122 = *(v1 + 48);
            FigPlayerPlaybackStateGetDescription(*(v1 + 52));
            v203.n128_u32[0] = 136316930;
            OUTLINED_FUNCTION_174_0();
            *&v206[12] = v121;
            *&v206[20] = v123;
            *&v206[22] = v102;
            *&v206[30] = v123;
            v207 = v122;
            *v208 = v124;
            *&v208[2] = v125;
            OUTLINED_FUNCTION_146();
            OUTLINED_FUNCTION_43_0(v126, v127, &v209, v128, &dword_1962D5000, v129, v130, "<<<< FigFilePlayer >>>> %s: [%p|%{public}s] <%p|%{public}s> calling BossSetRate(%p, %1.2f) in state %{public}s");
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_449(v131, v132, v133, v134, v135);
          v25 = MEMORY[0x1E6960C70];
        }

        v136 = OUTLINED_FUNCTION_273_0();
        itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(v136, v137);
        v209 = *v25;
        OUTLINED_FUNCTION_294_0(v25[1].n128_i64[0], v209, v175, v178, v181, v184, v187, v190, v193, v196, v201, cf, v203, v204, v205, *v206, *&v206[8], *&v206[16], *&v206[24], v207, *v208, *&v208[8], *&v208[16], v209.n128_i64[0]);
      }

      if (FigUseVideoReceiverForCALayer())
      {
        v138 = 1;
      }

      else
      {
        v138 = v26;
      }

      if ((v138 & 1) == 0)
      {
        itemfig_handleReadyToDisplayVideoLatch(v102, 3, cf);
      }

      playerfig_scheduleVideoSlotAndVideoTargetConfigurationSwitchAndPossiblyStartBossForNextItem(v4);
      if (*(v1 + 584) && *(v111 + 1874))
      {
        v201 = 0;
        itemfig_getTrackStorage(v102, *(v111 + 1036), &v201);
        if (v201 && *(v201 + 2))
        {
          if (dword_1EAF16A10 >= 2)
          {
            v139 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_134();
            if (v141)
            {
              v142 = v140;
            }

            else
            {
              v142 = 0;
            }

            if (v142)
            {
              v203.n128_u32[0] = 136315138;
              *(v203.n128_u64 + 4) = "itemfig_advanceToNextItem";
              OUTLINED_FUNCTION_146();
              OUTLINED_FUNCTION_38();
              _os_log_send_and_compose_impl(v143, v144, v145, v146, v147, v148, 0, v149);
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_238_0(v150, v151, v152, v153, v154);
          }

          itemfig_updateVolumeOffset(v102);
          v155 = OUTLINED_FUNCTION_293();
          itemfig_applyAudioProcessingUnitsToTrack(v155, v156);
          v157 = OUTLINED_FUNCTION_293();
          itemfig_applyAllAudioCurvesToTrack(v157, v158);
          itemfig_applyAdjustTargetLevel(v102);
          itemfig_applyAdjustCompressionProfile(v102);
        }

        *(v111 + 1874) = 0;
      }

      v159 = OUTLINED_FUNCTION_627();
      playerfig_updateResourceUsageOnGlobalResourceArbiter(v159, v160);
    }

    FigDeferredTransactionCommit(cf, 0);
    goto LABEL_108;
  }
}

void itemfig_metricEventPublishPlaybackEndEvent()
{
  v24 = 0;
  OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
  cf = 0;
  if (v0)
  {
    v1 = v0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 2232))
    {
      if (*(DerivedStorage + 128))
      {
        FigGetAllocatorForMedia();
        OUTLINED_FUNCTION_179();
        CMByteStreamGetCMBaseObject();
        if (*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          v3 = OUTLINED_FUNCTION_188();
          v4(v3);
        }
      }

      DurationIfReady = itemfig_getDurationIfReady(v1, v23);
      OUTLINED_FUNCTION_92_0(DurationIfReady, v6, v7, v8, v9, v10, v11, v12, v19, v20, v21, *&cf, v23[0]);
      Seconds = CMTimeGetSeconds(v13);
      if (Seconds < 1)
      {
        v15 = 0;
      }

      else
      {
        v15 = FigCFNumberGetSInt64() / Seconds;
      }

      AllocatorForMedia = FigGetAllocatorForMedia();
      if (!FigMetricItemPlaybackEndEventCreate(AllocatorForMedia, v15, &cf) && *(*(CMBaseObjectGetVTable() + 16) + 40))
      {
        v17 = OUTLINED_FUNCTION_265();
        v18(v17);
      }
    }
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void itemfig_reportingAgentReportRateChanged()
{
  OUTLINED_FUNCTION_193();
  if (!v1 || (v2 = v0, DerivedStorage = CMBaseObjectGetDerivedStorage(), v4 = FigCFWeakReferenceHolderCopyReferencedObject(), v5 = CMBaseObjectGetDerivedStorage(), !v4))
  {
    OUTLINED_FUNCTION_191();
    return;
  }

  if (*(DerivedStorage + 2048) != v2)
  {
    v6 = v5;
    FigSimpleMutexLock();
    if (!*(DerivedStorage + 1952))
    {
      goto LABEL_51;
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v7 = OUTLINED_FUNCTION_245();
      v8(v7);
    }

    if (*(DerivedStorage + 1952))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        v9 = OUTLINED_FUNCTION_382_0();
        v10(v9);
      }

      if (*(DerivedStorage + 1952))
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          v11 = OUTLINED_FUNCTION_382_0();
          v12(v11);
        }

        if (*(DerivedStorage + 1952) && *(*(CMBaseObjectGetVTable() + 16) + 16))
        {
          OUTLINED_FUNCTION_245();
          OUTLINED_FUNCTION_408_0();
          v13();
        }
      }
    }

    *(DerivedStorage + 2048) = v2;
    if (!*(DerivedStorage + 2040))
    {
      v14 = v2 != 0.0 && *(v6 + 52) == 4;
      if (v14)
      {
        if (*(DerivedStorage + 2041))
        {
          CFAbsoluteTimeGetCurrent();
        }

        if (*(DerivedStorage + 1952) && *(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          v15 = OUTLINED_FUNCTION_245();
          v16(v15);
        }

        *(DerivedStorage + 2040) = 1;
      }
    }

    if (v2 != 0.0)
    {
      goto LABEL_51;
    }

    v17 = CMBaseObjectGetDerivedStorage();
    if (v17)
    {
      v18 = v17;
      if (*(v17 + 1952))
      {
        v19 = *(v17 + 648);
        if (v19 && CFArrayGetCount(v19) >= 1)
        {
          v20 = 0;
          v21 = 0;
          do
          {
            if (*(CFArrayGetValueAtIndex(*(v18 + 648), 0) + 8))
            {
              OUTLINED_FUNCTION_363_0();
              if (v14)
              {
                ++v20;
              }

              if (v22 == 1986618469)
              {
                ++v21;
              }
            }

            OUTLINED_FUNCTION_220_0();
          }

          while (!v14);
          if (v20 >= 1)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v21 = 0;
        }

        if (v21 >= 1)
        {
LABEL_45:
          if (*(v18 + 1952) && *(*(CMBaseObjectGetVTable() + 16) + 56))
          {
            OUTLINED_FUNCTION_373();
            OUTLINED_FUNCTION_333();
            v23();
          }
        }
      }
    }

    if (*(DerivedStorage + 1952) && *(*(CMBaseObjectGetVTable() + 16) + 16))
    {
      OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_408_0();
      v24();
    }

LABEL_51:
    FigSimpleMutexUnlock();
  }

  OUTLINED_FUNCTION_191();

  CFRelease(v25);
}

const __CFArray *itemfig_hasEnqueuedFirstVideoFrame(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = 0;
  if (!a1)
  {
    return 0;
  }

  v3 = DerivedStorage;
  itemfig_getVideoTargetTableForVideoTrack(a1, &v14);
  if (v14)
  {
    result = FigImageQueueTableWasFirstImageEnqueued(v14);
    if (result)
    {
      return result;
    }
  }

  v5 = *(v3 + 1088);
  if (v5)
  {
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        FigCFArrayGetInt32AtIndex();
        v9 = OUTLINED_FUNCTION_403_0();
        itemfig_getTrackStorage(v9, v10, v11);
      }
    }
  }

  result = *(v3 + 856);
  if (!result)
  {
    return result;
  }

  if (CFArrayGetCount(result) < 1)
  {
    return 0;
  }

  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 856), 0);
    result = FigImageQueueTableWasFirstImageEnqueued(ValueAtIndex);
    if (result)
    {
      break;
    }

    OUTLINED_FUNCTION_378_0();
    if (v13)
    {
      return 0;
    }
  }

  return result;
}

void playerfig_syncMomentSourceCallback(uint64_t a1, const void *a2)
{
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = v3;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!*DerivedStorage)
    {
      v6 = DerivedStorage;
      FigSimpleMutexLock();
      if (*(v6 + 112))
      {
        v7 = pthread_main_np();
        v8 = *(v6 + 112);
        if (v7)
        {
          FigLayerSynchronizerSynchronizeToMoment(v8, a2, 0);
        }

        else
        {
          FigLayerSynchronizerSynchronizeToMomentWithDeferredTransaction(v8, a2);
        }
      }

      FigSimpleMutexUnlock();
    }

    CFRelease(v4);
  }
}

void itemfig_assureContentProtectionReadyForInspection(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_279_0();
  if (!itemfig_assureBasicsReadyForInspection(a1))
  {
    CFGetAllocator(a1);
    OUTLINED_FUNCTION_179();
    FigAssetGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v3 = OUTLINED_FUNCTION_188();
      if (!v4(v3))
      {
        if (!BOOLean || !CFBooleanGetValue(BOOLean) || *(v1 + 1200) || (CFGetAllocator(a1), OUTLINED_FUNCTION_413(), FigAssetGetCMBaseObject(), *(*(CMBaseObjectGetVTable() + 8) + 48)) && (v5 = OUTLINED_FUNCTION_308(), !v6(v5)))
        {
          if (!*(v1 + 1200) && *(v1 + 1208))
          {
            FigCPEProtectorCreateForScheme(*MEMORY[0x1E695E480], @"com.apple.basicAES", 0, v1 + 1200);
          }
        }
      }
    }

    if (BOOLean)
    {
      CFRelease(BOOLean);
    }
  }
}

void itemfig_networkActivitySubmitMetricsForInitialStartupIfAvailable(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 2056);
  if (v2)
  {
    v3 = *(DerivedStorage + 1968);
    if (v3 != 0.0)
    {
      v4 = *(DerivedStorage + 1992);
      if (v4 != 0.0)
      {
        v5 = *(DerivedStorage + 2032);
        if (v5 != 0.0)
        {
          FigNWActivitySubmitMetricsForInitialStartup(v2, v3, v4, v5);
          v6 = *(DerivedStorage + 2056);
          if (v6)
          {
            CFRelease(v6);
            *(DerivedStorage + 2056) = 0;
          }
        }
      }
    }
  }
}

uint64_t itemfig_lookForEmptyEditAndMapTime(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  OUTLINED_FUNCTION_375_0();
  v8 = v7;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  *&v18.start.value = *v9;
  v18.start.epoch = *(v9 + 16);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v10)
  {
    goto LABEL_10;
  }

  *&range.start.value = *&v18.start.value;
  range.start.epoch = v18.start.epoch;
  v11 = v10(v8, &range, &v23);
  if (v11 == -12521)
  {
LABEL_3:
    v12 = 0;
    *a4 = 1;
    goto LABEL_11;
  }

  v12 = v11;
  if (!v11)
  {
    v13 = v23;
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v14)
    {
      v15 = v14(v13, v22);
      if (v15)
      {
        v12 = v15;
      }

      else
      {
        range = v22[1];
        OUTLINED_FUNCTION_130_0();
        if (!CMTimeRangeContainsTime(&range, &v18.start) || (v22[0].start.flags & 1) == 0)
        {
          goto LABEL_3;
        }

        v16 = *v5;
        v19.epoch = *(v5 + 2);
        range = v22[1];
        v18 = v22[0];
        *&v19.value = v16;
        CMTimeMapTimeFromRangeToRange(&v20, &v19, &range, &v18);
        v12 = 0;
        *v4 = v20;
      }

      goto LABEL_11;
    }

LABEL_10:
    v12 = 4294954514;
  }

LABEL_11:
  if (v23)
  {
    CFRelease(v23);
  }

  return v12;
}

uint64_t itemfig_createAccessLogEntry()
{
  OUTLINED_FUNCTION_375_0();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  number = 0;
  theDict = 0;
  v174 = 0;
  value = 0;
  if (!v0)
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf.value, cf.timescale, LODWORD(cf.epoch));
    v9 = v171;
LABEL_103:
    v35 = 0;
    goto LABEL_61;
  }

  v4 = v3;
  if (!*(v3 + 128))
  {
    v35 = 0;
    v9 = 4294954513;
    goto LABEL_61;
  }

  CMByteStreamGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v6 = MEMORY[0x1E695E480];
  if (*(*(VTable + 8) + 48))
  {
    v7 = OUTLINED_FUNCTION_401_0();
    v9 = v8(v7);
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = 4294954514;
  }

  cf.value = 0;
  Mutable = CFDictionaryCreateMutable(*v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  theDict = Mutable;
  if (!Mutable)
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf.value, cf.timescale, LODWORD(cf.epoch));
    goto LABEL_103;
  }

  CFDictionaryAddValue(Mutable, @"s-playback-type", @"FILE");
  CMByteStreamGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v11 = OUTLINED_FUNCTION_401_0();
    if (!v12(v11))
    {
      v79 = CFDictionaryGetValue(cf.value, @"URL");
      if (v79)
      {
        CFDictionaryAddValue(theDict, @"uri", v79);
      }

      v80 = CFDictionaryGetValue(cf.value, @"TotalReadTime");
      if (v80)
      {
        CFDictionaryAddValue(theDict, @"c-transfer-duration", v80);
      }

      v81 = CFDictionaryGetValue(cf.value, @"TotalBytesRead");
      if (!v81)
      {
        goto LABEL_13;
      }

      v16 = v81;
      v14 = theDict;
      v15 = @"bytes";
      goto LABEL_12;
    }
  }

  v13 = *(v4 + 112);
  if (v13)
  {
    CFURLGetString(v13);
    v14 = OUTLINED_FUNCTION_292();
LABEL_12:
    CFDictionaryAddValue(v14, v15, v16);
  }

LABEL_13:
  CMByteStreamGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v17 = OUTLINED_FUNCTION_401_0();
    v18(v17);
  }

  if (*(v4 + 1040))
  {
    cf.value = 0;
    valuePtr = 0;
    if (*(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v19 = OUTLINED_FUNCTION_489();
      if (!v20(v19))
      {
        FigTrackReaderGetFigBaseObject();
        v85 = v84;
        v86 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v86)
        {
          if (!v86(v85, @"NominalFrameRate", *v6, &valuePtr) && valuePtr)
          {
            CFDictionarySetValue(theDict, @"c-nominal-framerate", valuePtr);
            CFRelease(valuePtr);
          }
        }
      }
    }
  }

  v21 = CFDateCreate(*v6, *(v4 + 1568));
  if (v21)
  {
    v22 = v21;
    CFDictionarySetValue(theDict, @"date", v21);
    CFRelease(v22);
    v23 = CFDictionaryGetValue(theDict, @"c-transfer-duration");
    if (v23)
    {
      CFNumberGetValue(v23, kCFNumberDoubleType, (v4 + 1688));
    }

    v24 = CFDictionaryGetValue(theDict, @"bytes");
    if (v24)
    {
      CFNumberGetValue(v24, kCFNumberSInt64Type, (v4 + 1672));
    }

    CFDictionaryRemoveValue(theDict, @"c-transfer-duration");
    CFDictionaryRemoveValue(theDict, @"bytes");
    v31 = *(v4 + 1672) - *(v4 + 1664);
    if (v31 < 0)
    {
      v31 = 0;
    }

    else
    {
      v32 = *(v4 + 1680);
      v33 = *(v4 + 1688) - v32;
      if (v33 >= 0.0)
      {
        if (v33 <= 0.0)
        {
          v35 = 0;
          v34 = 0.0;
        }

        else
        {
          v25 = 8.0;
          v32 = v31 * 8.0;
          v34 = v32 / v33;
          v35 = 1;
        }

        v36 = OUTLINED_FUNCTION_142_0(theDict, @"c-observed-bitrate", v34, v32, v25, v26, v27, v28, v29, v30, *&cf.value);
        if (v36)
        {
          goto LABEL_60;
        }

LABEL_29:
        cf.value = v31;
        v36 = itemfig_addCFNumberToAccessLogEntry();
        if (v36)
        {
          goto LABEL_60;
        }

        if (*(v4 + 1738))
        {
          v36 = OUTLINED_FUNCTION_142_0(theDict, @"c-startup-time", *(v4 + 1608), v37, v38, v39, v40, v41, v42, v43, *&cf.value);
          v35 = 1;
          if (v36)
          {
            goto LABEL_60;
          }
        }

        DoubleIfPresent = FigCFDictionaryGetDoubleIfPresent();
        if (DoubleIfPresent)
        {
          OUTLINED_FUNCTION_126_0(DoubleIfPresent, v45, v46, v47, v48, v49, v50, v51, cf.value, *&cf.timescale, cf.epoch, valuePtr, v174, value, number, theDict);
          FigCFDictionarySetDouble();
        }

        v36 = FigCFDictionaryGetDoubleIfPresent();
        if (v36)
        {
          OUTLINED_FUNCTION_126_0(v36, v52, v53, v54, v55, v56, v57, v58, cf.value, *&cf.timescale, cf.epoch, valuePtr, v174, value, number, theDict);
          v36 = FigCFDictionarySetDouble();
        }

        if (*(v4 + 1616) != 0.0)
        {
          v87 = OUTLINED_FUNCTION_126_0(v36, v52, v53, v54, v55, v56, v57, v58, cf.value, *&cf.timescale, cf.epoch, valuePtr, v174, value, number, theDict);
          v36 = OUTLINED_FUNCTION_142_0(v87, @"c-playback-setup-ts", v88, v89, v90, v91, v92, v93, v94, v95, *&cf.value);
          v35 = 1;
          if (v36)
          {
            goto LABEL_60;
          }
        }

        if (*(v4 + 1624) != 0.0)
        {
          v96 = OUTLINED_FUNCTION_126_0(v36, v52, v53, v54, v55, v56, v57, v58, cf.value, *&cf.timescale, cf.epoch, valuePtr, v174, value, number, theDict);
          v36 = OUTLINED_FUNCTION_142_0(v96, @"c-basics-ready-ts", v97, v98, v99, v100, v101, v102, v103, v104, *&cf.value);
          v35 = 1;
          if (v36)
          {
            goto LABEL_60;
          }
        }

        if (*(v4 + 1632) != 0.0)
        {
          v105 = OUTLINED_FUNCTION_126_0(v36, v52, v53, v54, v55, v56, v57, v58, cf.value, *&cf.timescale, cf.epoch, valuePtr, v174, value, number, theDict);
          v36 = OUTLINED_FUNCTION_142_0(v105, @"c-rp-setup-ts", v106, v107, v108, v109, v110, v111, v112, v113, *&cf.value);
          v35 = 1;
          if (v36)
          {
            goto LABEL_60;
          }
        }

        if (*(v4 + 1640) != 0.0)
        {
          v114 = OUTLINED_FUNCTION_126_0(v36, v52, v53, v54, v55, v56, v57, v58, cf.value, *&cf.timescale, cf.epoch, valuePtr, v174, value, number, theDict);
          v36 = OUTLINED_FUNCTION_142_0(v114, @"c-playback-ready-ts", v115, v116, v117, v118, v119, v120, v121, v122, *&cf.value);
          v35 = 1;
          if (v36)
          {
            goto LABEL_60;
          }
        }

        CMByteStreamGetCMBaseObject();
        v59 = CMBaseObjectGetVTable();
        v73 = *(v59 + 8);
        v36 = v59 + 8;
        if (*(v73 + 48))
        {
          v74 = OUTLINED_FUNCTION_401_0();
          v36 = v75(v74);
          if (!v36)
          {
            if (value)
            {
              CFDictionarySetValue(theDict, @"c-disk-backed", value);
              CFRelease(value);
              v35 = 1;
            }
          }
        }

        v76 = *(v4 + 1696);
        if (v76 > 0.0)
        {
          v36 = OUTLINED_FUNCTION_142_0(theDict, @"c-duration-at-item-preparation", v76, v66, v67, v68, v69, v70, v71, v72, *&cf.value);
          if (v36)
          {
            goto LABEL_60;
          }

          v35 = 1;
        }

        v77 = *(v4 + 1704);
        if (v77 <= 0.0)
        {
          goto LABEL_45;
        }

        v36 = OUTLINED_FUNCTION_142_0(theDict, @"c-duration-at-likely-to-keep-up", v77, v66, v67, v68, v69, v70, v71, v72, *&cf.value);
        if (!v36)
        {
          v35 = 1;
LABEL_45:
          v78 = *(v4 + 1320);
          if (v78)
          {
            CFDictionarySetValue(theDict, @"c-service-identifier", v78);
            v35 = 1;
          }

          if ((*(v4 + 1228) & 1) == 0 || (v36 = number) == 0 || (valuePtr = 0, v36 = CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr), valuePtr < 1) || (OUTLINED_FUNCTION_107(v4 + 1216), Seconds = CMTimeGetSeconds(&cf), v36 = OUTLINED_FUNCTION_142_0(theDict, @"sc-indicated-bitrate", valuePtr / Seconds * 8.0, 8.0, v149, v150, v151, v152, v153, v154, *&cf.value), !v36) && (v162 = OUTLINED_FUNCTION_358_0(v36, v155, v156, v157, v158, v159, v160, v161, cf.value, *&cf.timescale, cf.epoch, valuePtr, v174, value, number, theDict), v36 = OUTLINED_FUNCTION_142_0(v162, @"c-duration-downloaded", v163, v164, v165, v166, v167, v168, v169, v170, *&cf.value), !v36))
          {
            if (!*(v4 + 1736))
            {
              v9 = 0;
              goto LABEL_61;
            }

            v123 = *(v4 + 1584);
            if (*(v4 + 1592) != 0.0)
            {
              v123 = v123 + (CFAbsoluteTimeGetCurrent() - *(v4 + 1592)) * fabsf(*(DerivedStorage + 48));
            }

            OUTLINED_FUNCTION_358_0(v36, v60, v78, v61, v62, v63, v64, v65, cf.value, *&cf.timescale, cf.epoch, valuePtr, v174, value, number, theDict);
            *&cf.value = v123;
            v36 = itemfig_addCFNumberToAccessLogEntry();
            if (!v36)
            {
              if (!*(v4 + 1737) || (v36 = OUTLINED_FUNCTION_142_0(theDict, @"c-start-time", *(v4 + 1576), v124, v125, v126, v127, v128, v129, v130, *&cf.value), v35 = 1, !v36))
              {
                itemfig_getFrameDropCountFromAllVideoPipelines(v1, (v4 + 1728));
                OUTLINED_FUNCTION_358_0(v131, v132, v133, v134, v135, v136, v137, v138, cf.value, *&cf.timescale, cf.epoch, valuePtr, v174, value, number, theDict);
                cf.value = v139;
                v36 = itemfig_addCFNumberToAccessLogEntry();
                if (!v36)
                {
                  OUTLINED_FUNCTION_358_0(v36, v140, v141, v142, v143, v144, v145, v146, cf.value, *&cf.timescale, cf.epoch, valuePtr, v174, value, number, theDict);
                  cf.value = v147;
                  v36 = itemfig_addCFNumberToAccessLogEntry();
                }
              }
            }
          }
        }

LABEL_60:
        v9 = v36;
        goto LABEL_61;
      }
    }

    v35 = 0;
    goto LABEL_29;
  }

  v35 = 0;
  v9 = 4294954434;
LABEL_61:
  if (number)
  {
    CFRelease(number);
  }

  if (!v9)
  {
    v82 = theDict;
    if (v35)
    {
      v9 = 0;
      goto LABEL_68;
    }

    v9 = 4294954513;
    if (!theDict)
    {
      goto LABEL_68;
    }

    goto LABEL_65;
  }

  v82 = theDict;
  if (theDict)
  {
LABEL_65:
    CFRelease(v82);
    v82 = 0;
  }

LABEL_68:
  *v0 = v82;
  return v9;
}

uint64_t itemfig_addCFNumberToAccessLogEntry()
{
  OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_219_0();
  v5 = CFNumberCreate(v2, v3, v4);
  if (!v5)
  {
    return 4294954434;
  }

  v6 = v5;
  CFDictionarySetValue(v1, v0, v5);
  CFRelease(v6);
  return 0;
}

void itemfig_removeImageQueueListenersForObsoleteImageQueues()
{
  OUTLINED_FUNCTION_649();
  OUTLINED_FUNCTION_207();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v0)
  {
    Count = CFArrayGetCount(v0);
  }

  else
  {
    Count = 0;
  }

  if (*DerivedStorage)
  {
    goto LABEL_17;
  }

  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  v7 = v6;
  if (!v1 || !v6)
  {
LABEL_13:
    if (v7)
    {
      goto LABEL_14;
    }

LABEL_17:
    OUTLINED_FUNCTION_651();
    return;
  }

  if (CFArrayGetCount(v1) >= 1)
  {
    OUTLINED_FUNCTION_402_0();
    do
    {
      v8 = OUTLINED_FUNCTION_389_0();
      ValueAtIndex = CFArrayGetValueAtIndex(v8, v9);
      if (Count < 1 || (v11 = OUTLINED_FUNCTION_312(), v14.length = Count, !CFArrayContainsValue(v11, v14, ValueAtIndex)))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
      }

      ++v3;
    }

    while (v2 != v3);
    goto LABEL_13;
  }

LABEL_14:
  OUTLINED_FUNCTION_651();

  CFRelease(v12);
}

void playerfig_DeferredSynchronousFrameEnqueued(const void *a1)
{
  if (FigUseVideoReceiverForCALayer())
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!*DerivedStorage)
    {
      v3 = DerivedStorage;
      FigSimpleMutexLock();
      v4 = *(v3 + 27);
      if (v4)
      {
        Count = CFArrayGetCount(v4);
        v6 = objc_autoreleasePoolPush();
        [MEMORY[0x1E6979518] begin];
        if (!pthread_main_np())
        {
          [MEMORY[0x1E6979518] activateBackground:1];
        }

        [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
        if (Count >= 1)
        {
          do
          {
            [CFArrayGetValueAtIndex(*(v3 + 27) 0)];
            OUTLINED_FUNCTION_377_0();
          }

          while (!v7);
        }

        [MEMORY[0x1E6979518] commit];
        objc_autoreleasePoolPop(v6);
      }

      FigSimpleMutexUnlock();
    }
  }

  CFRelease(a1);
}

uint64_t playerfig_setBossRateAndAnchorTime(uint64_t a1, int a2, __int128 *a3, __int128 *a4, float a5)
{
  v169 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 0;
  }

  OUTLINED_FUNCTION_440_0(DerivedStorage);
  v20 = *(v5 + 536);
  if (v20)
  {
    v20 = CMBaseObjectGetDerivedStorage();
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (*(v5 + 48) != a5)
  {
    v22 = *(v5 + 52) != 4 || dword_1EAF16A10 == 0;
    if (!v22)
    {
      v23 = OUTLINED_FUNCTION_114_0(v20, v13, v14, v15, v16, v17, v18, v19, v128, v132, v136, v141, v146, v150, SBYTE2(v150), SBYTE3(v150), SHIDWORD(v150));
      os_log_type_enabled(v23, BYTE3(v150));
      OUTLINED_FUNCTION_70();
      if (&unk_1EAF16000)
      {
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        LODWORD(v162.value) = 136316162;
        OUTLINED_FUNCTION_47();
        *(&v162.flags + 2) = a1;
        HIWORD(v162.epoch) = 2082;
        v163 = v24;
        *v164 = v25;
        *&v164[2] = v26;
        *&v164[10] = v25;
        *&v164[12] = v27;
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_51_0();
        _os_log_send_and_compose_impl(v28, v29, v30, v31, v32, v33, BYTE3(v150), v34);
      }

      OUTLINED_FUNCTION_187_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_454(v35, v36, v37, v38, v39);
    }
  }

  if (*(v5 + 568))
  {
    *(v5 + 568) = 0;
    playerfig_postDeferredPrerollWasCancelledNotification(a1, *(v5 + 576));
  }

  if ((*(a3 + 12) & 1) == 0)
  {
    OUTLINED_FUNCTION_29();
    if (v22 && CFArrayGetCount(*(v5 + 528)) >= 1)
    {
      v40 = OUTLINED_FUNCTION_233_0();
      v41 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v41)
      {
        v41(v40, a3);
      }

      if ((*(a3 + 12) & 1) == 0)
      {
        v42 = MEMORY[0x1E6960CC0];
        *a3 = *MEMORY[0x1E6960CC0];
        *(a3 + 2) = *(v42 + 16);
      }
    }
  }

  if (CFArrayGetCount(*(v5 + 528)) >= 1)
  {
    v43 = OUTLINED_FUNCTION_233_0();
    v44 = CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_221_0();
    if (v22)
    {
      itemfig_invalidateRampOutTimer(v43);
    }

    else if (FigPlaybackBossGetRate(*(v44 + 352)) == 0.0)
    {
      *(v44 + 1352) = 0;
    }

    OUTLINED_FUNCTION_29();
    if (v22)
    {
      if (!dword_1EAF16A10)
      {
LABEL_56:
        v103 = *a3;
        *(v44 + 564) = *(a3 + 2);
        *(v44 + 548) = v103;
        v104 = *a4;
        *(v44 + 588) = *(a4 + 2);
        *(v44 + 572) = v104;
        goto LABEL_57;
      }

      v54 = OUTLINED_FUNCTION_114_0(v45, v46, v47, v48, v49, v50, v51, v52, v128, v132, v136, v141, v146, v150, SBYTE2(v150), SBYTE3(v150), SHIDWORD(v150));
      OUTLINED_FUNCTION_437_0(v54, v55, v56, v57, v58, v59, v60, v61, v129, v133, v137, v142, v147, v151, v154, typea, v159);
      OUTLINED_FUNCTION_106_0();
      if (!&unk_1EAF16000)
      {
LABEL_55:
        OUTLINED_FUNCTION_187_0();
        OUTLINED_FUNCTION_2();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_56;
      }

      if (a1)
      {
        v62 = (CMBaseObjectGetDerivedStorage() + 972);
      }

      else
      {
        v62 = "";
      }

      v144 = v62;
      v71 = *(v5 + 536);
      if (v71)
      {
        v72 = (CMBaseObjectGetDerivedStorage() + 2096);
      }

      else
      {
        v72 = "";
      }

      v139 = v72;
      OUTLINED_FUNCTION_200_0();
      Seconds = CMTimeGetSeconds(&time);
      v82 = OUTLINED_FUNCTION_340_0(v74, v75, v76, v77, v78, v79, v80, v81, v128, v132, v139, v144, v146, v150, v162.value, *&v162.timescale, v162.epoch, v163, *v164, *&v164[8], *&v164[16], *&v164[24], v165, v166, *(&v166 + 1), v167, *&time.value, time.epoch);
      v91 = OUTLINED_FUNCTION_340_0(v83, v84, v85, v86, v87, v88, v89, v90, v131, v135, v140, v145, v149, v153, v162.value, *&v162.timescale, v162.epoch, v163, *v164, *&v164[8], *&v164[16], *&v164[24], v165, v166, *(&v166 + 1), v167, *&time.value, time.epoch);
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&time, HostTimeClock);
      LODWORD(v162.value) = 136316930;
      *(&v162.value + 4) = "playerfig_setBossRateAndAnchorTime";
      LOWORD(v162.flags) = 2048;
      *(&v162.flags + 2) = a1;
      HIWORD(v162.epoch) = 2082;
      v163 = v141;
      *v164 = 2048;
      *&v164[2] = v71;
      *&v164[10] = 2082;
      *&v164[12] = v136;
      *&v164[20] = 2048;
      *&v164[22] = Seconds;
      *&v164[30] = 2048;
      v165 = *&v82;
      LOWORD(v166) = 2048;
      *(&v166 + 2) = v91 - CMTimeGetSeconds(&time);
      OUTLINED_FUNCTION_32();
    }

    else
    {
      if (!v21 || (*(v21 + 584) & v53) != 1 || !dword_1EAF16A10)
      {
        goto LABEL_56;
      }

      v63 = OUTLINED_FUNCTION_114_0(v45, v46, v47, v48, v49, v50, v51, v52, v128, v132, v136, v141, v146, v150, SBYTE2(v150), SBYTE3(v150), SHIDWORD(v150));
      OUTLINED_FUNCTION_437_0(v63, v64, v65, v66, v67, v68, v69, v70, v130, v134, v138, v143, v148, v152, v155, typeb, v160);
      OUTLINED_FUNCTION_106_0();
      if (!&unk_1EAF16000)
      {
        goto LABEL_55;
      }

      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      v93 = *(v5 + 536);
      if (v93)
      {
        LODWORD(v141) = &unk_1EAF16000;
        CMBaseObjectGetDerivedStorage();
      }

      LODWORD(v162.value) = 136316162;
      OUTLINED_FUNCTION_47();
      *(&v162.flags + 2) = a1;
      HIWORD(v162.epoch) = 2082;
      v163 = v94;
      *v164 = v95;
      *&v164[2] = v93;
      *&v164[10] = 2082;
      *&v164[12] = v96;
      OUTLINED_FUNCTION_32();
    }

    v97 = OUTLINED_FUNCTION_34();
    _os_log_send_and_compose_impl(v97, v98, v99, v100, v101, v146, &unk_1EAF16000, v102);
    goto LABEL_55;
  }

LABEL_57:
  playerfig_cleanupOverlappedOutroComponents(a1, 0);
  v105 = playerfig_isCurrentItemQuiescent(a1);
  if (v105)
  {
    if (dword_1EAF16A10)
    {
      v118 = OUTLINED_FUNCTION_114_0(v105, v106, v107, v108, v109, v110, v111, v112, v128, v132, v136, v141, v146, v150, SBYTE2(v150), SBYTE3(v150), SHIDWORD(v150));
      os_log_type_enabled(v118, type);
      OUTLINED_FUNCTION_125();
      if (v22)
      {
        v120 = v119;
      }

      else
      {
        v120 = v161;
      }

      if (v120)
      {
        LODWORD(v162.value) = 136315138;
        *(&v162.value + 4) = "playerfig_setBossRateAndAnchorTime";
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_45_0();
        _os_log_send_and_compose_impl(v121, v122, v123, v124, v125, v126, type, v127);
      }

      OUTLINED_FUNCTION_2();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigSimpleMutexUnlock();
    OUTLINED_FUNCTION_200_0();
    OUTLINED_FUNCTION_351();
    playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
    if (*(v5 + 536))
    {
      matched = 0;
      *(CMBaseObjectGetDerivedStorage() + 2044) = a2;
      return matched;
    }

    return 0;
  }

  v113 = *(v5 + 536);
  if (v113)
  {
    if (*(v21 + 352))
    {
      if (*(v21 + 1745))
      {
        v114 = 0.0;
        if (*(v5 + 52) == 4)
        {
          v114 = *(v5 + 48);
        }

        itemfig_updateAccessLogEntry(a1, v113, v114);
        v113 = *(v5 + 536);
      }

      itemfig_reportingAgentReportPlayStartMovieTime(v113);
      itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(*(v5 + 536), 0);
      OUTLINED_FUNCTION_200_0();
      OUTLINED_FUNCTION_351();
      matched = itemfig_matchBossRateToPlayerRateAndPlaybackState(v115, &time, &v162);
      OUTLINED_FUNCTION_221_0();
      v116 = !v22;
      LOBYTE(time.value) = v116;
      FigCFArrayApplyFunction();
    }

    else
    {
      matched = 0;
    }

    if (*(v5 + 52) == 4)
    {
      OUTLINED_FUNCTION_221_0();
      if (!v22)
      {
        itemfig_ReportAudioPlaybackThroughFigLog(*(v5 + 536));
      }
    }

    if (*(v5 + 536))
    {
      *(CMBaseObjectGetDerivedStorage() + 2044) = a2;
    }
  }

  else
  {
    matched = 0;
  }

  FigSimpleMutexUnlock();
  return matched;
}

void itemfig_rampOut(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = OUTLINED_FUNCTION_283_0(DerivedStorage);
  if (v4)
  {
    v5 = v4;
    v6 = *(v1 + 2072);
    voucher_adopt();
    *(v1 + 1352) = 1;
    playerfig_applySoftwareVolume(v5, @"SoftwareVolume2", 1, 0.0, *(v1 + 1336));
    itemfig_ReachedEndGuts(a1);

    CFRelease(v5);
  }
}

void playerfig_stopResetDisturbReprepareAndResumeWithTransaction()
{
  OUTLINED_FUNCTION_193();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_565();
  v180 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (dword_1EAF16A10)
  {
    LODWORD(v170.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value = 0;
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_70();
    if (v8)
    {
      if (v0)
      {
        v11 = (CMBaseObjectGetDerivedStorage() + 972);
      }

      else
      {
        v11 = "";
      }

      if (v4)
      {
        v12 = v4;
      }

      else
      {
        v12 = "";
      }

      LODWORD(time2.value) = 136315906;
      *(&time2.value + 4) = "playerfig_stopResetDisturbReprepareAndResumeWithTransaction";
      LOWORD(time2.flags) = 2048;
      *(&time2.flags + 2) = v0;
      HIWORD(time2.epoch) = 2082;
      v173 = v11;
      v174 = 2082;
      v175 = v12;
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_51_0();
      _os_log_send_and_compose_impl(v13, v14, v15, v16, v17, v18, 0, v19);
      value = v170.value;
    }

    OUTLINED_FUNCTION_134_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_454(v20, v21, v22, v23, v24);
  }

  if (!v6)
  {
    if (FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &cf))
    {
      goto LABEL_51;
    }

    LODWORD(v6) = cf;
  }

  FigSimpleMutexLock();
  v25 = OUTLINED_FUNCTION_198();
  playerfig_cleanupOverlappedOutroComponents(v25, v26);
  if ((v1->flags & 1) == 0 && (*(v8 + 12) & 1) == 0)
  {
    OUTLINED_FUNCTION_221_0();
    if (!(v28 ^ v29 | v27))
    {
      v30 = *(DerivedStorage + 528);
      if (v30)
      {
        if (CFArrayGetCount(v30) >= 1)
        {
          v31 = OUTLINED_FUNCTION_233_0();
          v32 = CMBaseObjectGetDerivedStorage();
          v33 = CMTimebaseCopySource(*(v32 + 328));
          memset(&v170, 0, sizeof(v170));
          CMSyncGetTime(&v170, v33);
          outRelativeRate = 0.0;
          type = **&MEMORY[0x1E6960C70];
          outRelativeToClockOrTimebaseAnchorTime = type;
          RelativeRateAndAnchorTime = CMSyncGetRelativeRateAndAnchorTime(*(v32 + 328), v33, &outRelativeRate, &type, &outRelativeToClockOrTimebaseAnchorTime);
          if (!RelativeRateAndAnchorTime && outRelativeRate > 0.0)
          {
            v179[0] = outRelativeToClockOrTimebaseAnchorTime;
            OUTLINED_FUNCTION_370_0(RelativeRateAndAnchorTime, v35, v36, v37, v38, v39, v40, v41, v138, v142, v146, v150, v156, v160, rhs.value, *&rhs.timescale, rhs.epoch, v165, outRelativeToClockOrTimebaseAnchorTime.value, *&outRelativeToClockOrTimebaseAnchorTime.timescale, outRelativeToClockOrTimebaseAnchorTime.epoch, v167, type.value, *&type.timescale, type.epoch, *&outRelativeRate, *&v170.value);
            v42 = CMTimeCompare(v179, &time2);
            if (v42 < 1)
            {
              if (!dword_1EAF16A10)
              {
                goto LABEL_43;
              }

              v83 = OUTLINED_FUNCTION_271_0(v42, v43, v44, v45, v46, v47, v48, v49, v138, v142, v146, v150, v156, v160, rhs.value, *&rhs.timescale, rhs.epoch, v165, SBYTE2(v165), SBYTE3(v165), SHIDWORD(v165));
              OUTLINED_FUNCTION_432_0(v83, v84, v85, v86, v87, v88, v89, v90, v140, v144, v148, v152, v158, v162, rhs.value, *&rhs.timescale, rhs.epoch, v165, SBYTE2(v165), BYTE3(v165), SHIDWORD(v165));
              OUTLINED_FUNCTION_106_0();
              if (value)
              {
                v153 = v1;
                if (v0)
                {
                  v91 = CMBaseObjectGetDerivedStorage();
                  v99 = (v91 + 972);
                }

                else
                {
                  v99 = "";
                }

                if (v31)
                {
                  v91 = CMBaseObjectGetDerivedStorage();
                }

                OUTLINED_FUNCTION_370_0(v91, v92, v93, v94, v95, v96, v97, v98, v138, v142, v146, v153, v156, v160, rhs.value, *&rhs.timescale, rhs.epoch, v165, outRelativeToClockOrTimebaseAnchorTime.value, *&outRelativeToClockOrTimebaseAnchorTime.timescale, outRelativeToClockOrTimebaseAnchorTime.epoch, v167, type.value, *&type.timescale, type.epoch, *&outRelativeRate, *&v170.value);
                OUTLINED_FUNCTION_660(v111, v112, v113, v114, v115, v116, v117, v118, v141, v145, v149, v155, v159, v163, rhs.value, *&rhs.timescale, rhs.epoch, v165, *&outRelativeToClockOrTimebaseAnchorTime.value);
                CMTimeSubtract(v179, &time2, &rhs);
                CMTimeGetSeconds(v179);
                LODWORD(time2.value) = 136316418;
                OUTLINED_FUNCTION_270_0("playerfig_stopResetDisturbReprepareAndResumeWithTransaction");
                v173 = v99;
                OUTLINED_FUNCTION_326_0();
                *(v119 + 54) = v120;
                OUTLINED_FUNCTION_59();
                v121 = OUTLINED_FUNCTION_34();
                _os_log_send_and_compose_impl(v121, v122, v123, v124, v125, v156, v8, v126);
              }
            }

            else
            {
              *v1 = type;
              HostTimeClock = CMClockGetHostTimeClock();
              OUTLINED_FUNCTION_384_0(HostTimeClock, v51, HostTimeClock, v52, v53, v54, v55, v56, v138, v142, v146, v150, v156, v160, rhs.value, *&rhs.timescale, rhs.epoch, v165, *&outRelativeToClockOrTimebaseAnchorTime.value);
              v58 = CMSyncConvertTime(v179, &time2, v33, v57);
              *v8 = v179[0];
              if (!dword_1EAF16A10)
              {
                goto LABEL_43;
              }

              v66 = OUTLINED_FUNCTION_271_0(v58, v59, v60, v61, v62, v63, v64, v65, v138, v142, v146, v150, v156, v160, rhs.value, *&rhs.timescale, rhs.epoch, v165, SBYTE2(v165), SBYTE3(v165), SHIDWORD(v165));
              OUTLINED_FUNCTION_432_0(v66, v67, v68, v69, v70, v71, v72, v73, v139, v143, v147, v151, v157, v161, rhs.value, *&rhs.timescale, rhs.epoch, v165, SBYTE2(v165), BYTE3(v165), SHIDWORD(v165));
              OUTLINED_FUNCTION_106_0();
              if (value)
              {
                if (v0)
                {
                  v74 = CMBaseObjectGetDerivedStorage();
                  v82 = (v74 + 972);
                }

                else
                {
                  v82 = "";
                }

                v154 = v82;
                if (v31)
                {
                  v74 = CMBaseObjectGetDerivedStorage();
                }

                OUTLINED_FUNCTION_384_0(v74, v75, v76, v77, v78, v79, v80, v81, v138, v142, v146, v154, v156, v160, rhs.value, *&rhs.timescale, rhs.epoch, v165, *&outRelativeToClockOrTimebaseAnchorTime.value);
                rhs = v170;
                CMTimeSubtract(v179, &time2, &rhs);
                Seconds = CMTimeGetSeconds(v179);
                OUTLINED_FUNCTION_419_0();
                v101 = CMTimeGetSeconds(v179);
                v179[0] = *v160;
                CMTimeGetSeconds(v179);
                LODWORD(time2.value) = 136316930;
                OUTLINED_FUNCTION_270_0("playerfig_stopResetDisturbReprepareAndResumeWithTransaction");
                v173 = v150;
                OUTLINED_FUNCTION_326_0();
                *(v102 + 54) = Seconds;
                v176 = v103;
                v177 = v101;
                v178 = v103;
                *(v102 + 74) = v104;
                OUTLINED_FUNCTION_59();
                v105 = OUTLINED_FUNCTION_34();
                _os_log_send_and_compose_impl(v105, v106, v107, v108, v109, v156, v8, v110);
              }
            }

            OUTLINED_FUNCTION_2();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v8 = v160;
          }

LABEL_43:
          if (v33)
          {
            CFRelease(v33);
          }
        }
      }
    }
  }

  if (*(DerivedStorage + 536))
  {
    v127 = CMBaseObjectGetDerivedStorage();
    playerfig_pauseRenderPipelines(v0);
    *(v127 + 1033) = 0;
  }

  v128 = OUTLINED_FUNCTION_312();
  playeritemfig_releaseRenderPipelines(v128, v129, v6, v130, v131, v132, v133, v134, v138, v142, v146, v150, v156, v160, rhs.value, *&rhs.timescale, rhs.epoch, v165, outRelativeToClockOrTimebaseAnchorTime.value, *&outRelativeToClockOrTimebaseAnchorTime.timescale, outRelativeToClockOrTimebaseAnchorTime.epoch, v167, type.value, *&type.timescale);
  playerfig_disturbPlayQueue(v0);
  v135 = OUTLINED_FUNCTION_624();
  playerfig_repreparePlayQueue(v135, v136);
  if (*(DerivedStorage + 536) && *(CMBaseObjectGetDerivedStorage() + 352))
  {
    itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(*(DerivedStorage + 536), 0);
    OUTLINED_FUNCTION_419_0();
    time2 = *v8;
    itemfig_matchBossRateToPlayerRateAndPlaybackState(v137, v179, &time2);
  }

  playerfig_updateStartHostTimeEstimatesOfAllItems(v0);
  FigSimpleMutexUnlock();
LABEL_51:
  FigDeferredTransactionCommit(cf, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_191();
}

uint64_t fp_createCommonRenderPipelineOptionsForTrack(const void *a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6, __CFDictionary **a7)
{
  HIDWORD(v104) = a5;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v116 = 0;
  v117 = 0;
  v13 = FigCFWeakReferenceHolderCopyReferencedObject();
  v14 = CMBaseObjectGetDerivedStorage();
  if (!v13)
  {
    Mutable = 0;
    v28 = 0;
    v32 = 0;
    goto LABEL_75;
  }

  v15 = v14;
  v100 = a3;
  v16 = *MEMORY[0x1E695E480];
  v17 = OUTLINED_FUNCTION_249();
  Mutable = CFDictionaryCreateMutable(v17, v18, v19, v20);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_374();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v89, DWORD2(v89), v96);
    v32 = v88;
    v28 = 0;
    goto LABEL_75;
  }

  itemfig_assureContentProtectionReadyForInspection(a1);
  LODWORD(v104) = a4;
  if (!a6 || !DerivedStorage[150])
  {
    v33 = 0;
    v28 = 0;
    goto LABEL_24;
  }

  *&v89 = a7;
  v22 = v13;
  v23 = FigCPECreateFormatDescriptionIdentifierForTrackIDAndIndex(v16, a4, 0);
  v24 = OUTLINED_FUNCTION_249();
  v28 = CFDictionaryCreateMutable(v24, v25, v26, v27);
  FigSimpleMutexLock();
  v29 = DerivedStorage[150];
  v30 = *(v15 + 168);
  v31 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v31)
  {
    FigSimpleMutexUnlock();
    v32 = 4294954514;
    goto LABEL_19;
  }

  v32 = v31(v29, @"NeroTransport", v30);
  FigSimpleMutexUnlock();
  if (v32)
  {
LABEL_19:
    v33 = v23;
    goto LABEL_20;
  }

  v33 = v23;
  if (a2)
  {
    CFDictionarySetValue(v28, @"Destination", @"DestinationNero");
  }

  v34 = *(v15 + 880);
  if (v34)
  {
    CFDictionarySetValue(v28, @"ClientSecTask", v34);
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
  {
LABEL_14:
    if (!*(*(CMBaseObjectGetVTable() + 16) + 104))
    {
      v32 = 4294954514;
      goto LABEL_20;
    }

    v38 = OUTLINED_FUNCTION_284();
    v32 = v39(v38);
LABEL_16:
    if (!v32)
    {
      goto LABEL_17;
    }

LABEL_20:
    v13 = v22;
    if (!v33)
    {
      goto LABEL_75;
    }

LABEL_74:
    CFRelease(v33);
    goto LABEL_75;
  }

  v35 = OUTLINED_FUNCTION_284();
  v37 = v36(v35);
  if (v37 != -12164)
  {
    v32 = v37;
    if (v37 != -12782)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

LABEL_17:
  v13 = v22;
  a7 = v89;
LABEL_24:
  OUTLINED_FUNCTION_373_0();
  if (v52 && itemfig_useDroppableFramesMinimumInterval(a1))
  {
    v89 = *MEMORY[0x1E6960C70];
    *&__src[0].value = v89;
    v40 = *(MEMORY[0x1E6960C70] + 16);
    __src[0].epoch = v40;
    __dst[0] = v89;
    *&__dst[1] = v40;
    FPSupport_GetDisplayRefreshInformation(0, __src, __dst);
    memset(&v115, 0, sizeof(v115));
    CMBaseObjectGetDerivedStorage();
    *&v114 = 0;
    v119[0] = 0;
    *&v115.value = v89;
    v115.epoch = v40;
    if (*(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v41 = OUTLINED_FUNCTION_392_0();
      if (!v42(v41))
      {
        FigTrackReaderGetFigBaseObject();
        v44 = v43;
        v45 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v45)
        {
          if (!v45(v44, @"MinSampleDuration", v16, v119))
          {
            CMTimeMakeFromDictionary(&v115, v119[0]);
          }
        }
      }
    }

    if (v114)
    {
      CFRelease(v114);
    }

    if (v119[0])
    {
      CFRelease(v119[0]);
    }

    CMBaseObjectGetDerivedStorage();
    *&v114 = 0;
    v119[0] = 0;
    valuePtr = 1065353216;
    if (*(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v46 = OUTLINED_FUNCTION_392_0();
      if (!v47(v46))
      {
        FigTrackReaderGetFigBaseObject();
        v49 = v48;
        v50 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v50)
        {
          if (!v50(v49, @"MaxEditRate", v16, v119))
          {
            CFNumberGetValue(v119[0], kCFNumberFloat32Type, &valuePtr);
          }
        }
      }
    }

    if (v114)
    {
      CFRelease(v114);
    }

    if (v119[0])
    {
      CFRelease(v119[0]);
    }

    v114 = *&v115.value;
    OUTLINED_FUNCTION_344_0(v115.epoch);
    FigCFDictionarySetFloat32();
    if ((*(v100 + 12) & 1) == 0)
    {
      OUTLINED_FUNCTION_29();
      if (v52)
      {
        *v100 = __src[0];
      }
    }

    v114 = *v100;
    OUTLINED_FUNCTION_344_0(*(v100 + 16));
    OUTLINED_FUNCTION_29();
    if (v52)
    {
      v114 = __dst[0];
      OUTLINED_FUNCTION_344_0(*&__dst[1]);
    }
  }

  v51 = MEMORY[0x1E695E4D0];
  if (!*(v15 + 821))
  {
    v52 = HIDWORD(v104) == 1935832172 || HIDWORD(v104) == 1668310898;
    if (v52)
    {
      FigCFDictionarySetValue();
    }
  }

  TrackStorage = itemfig_getTrackStorage(a1, v104, &v116);
  if (!TrackStorage)
  {
    if (*(v116 + 8))
    {
      v54 = v51;
    }

    else
    {
      v54 = MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(Mutable, @"BossTrack_EnableForStepping", *v54);
    if (!DerivedStorage[101] || ((OUTLINED_FUNCTION_373_0(), !v52) ? (v56 = v55 == 1635088502) : (v56 = 1), !v56))
    {
      if (HIDWORD(v104) != 1835365473 || !DerivedStorage[102])
      {
        goto LABEL_73;
      }
    }

    *&__src[1].value = OUTLINED_FUNCTION_386(MEMORY[0x1E6960CC0]);
    __src[1].epoch = v57;
    *&__src[2].value = *&__src[1].value;
    *&__src[3].value = *&__src[1].value;
    __src[2].epoch = v57;
    __src[3].epoch = v57;
    FigVideoCompositionWindowGetFromSerializedConfigurationForTrack(v58, v104, __src);
    if (!TrackStorage)
    {
      memcpy(__dst, __src, sizeof(__dst));
      IsZero = FigVideoCompositionTimeWindowDurationIsZero(__dst);
      if (!IsZero)
      {
        v66 = OUTLINED_FUNCTION_274_0(IsZero, @"BossTrack_ExtendedTemporalWindowDurationBefore", v60, v61, v62, v63, v64, v65, v89, *(&v89 + 1), v96, v100, v104, a1, __src[0].value, *&__src[0].timescale, *&__dst[1]);
        v73 = OUTLINED_FUNCTION_274_0(v66, @"BossTrack_ExtendedTemporalWindowDurationAfter", v67, v68, v69, v70, v71, v72, v90, v93, v97, v101, v105, v109, __src[1].value, *&__src[1].timescale, *&__dst[1]);
        v80 = OUTLINED_FUNCTION_274_0(v73, @"BossTrack_ExtendedTemporalWindowDurationBeforeWhenSeeking", v74, v75, v76, v77, v78, v79, v91, v94, v98, v102, v106, v110, __src[2].value, *&__src[2].timescale, *&__dst[1]);
        OUTLINED_FUNCTION_274_0(v80, @"BossTrack_ExtendedTemporalWindowDurationAfterWhenSeeking", v81, v82, v83, v84, v85, v86, v92, v95, v99, v103, v107, v111, __src[3].value, *&__src[3].timescale, *&__dst[1]);
      }

LABEL_73:
      v32 = 0;
      *a7 = Mutable;
      Mutable = 0;
      if (!v33)
      {
        goto LABEL_75;
      }

      goto LABEL_74;
    }
  }

  v32 = TrackStorage;
  if (v33)
  {
    goto LABEL_74;
  }

LABEL_75:
  if (v117)
  {
    CFRelease(v117);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v32;
}

uint64_t fp_setPropertyOnAllAudioRenderPipelines()
{
  OUTLINED_FUNCTION_216_0();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 584))
  {
    FigRenderPipelineGetFigBaseObject();
    if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
LABEL_12:
      v7 = 4294954514;
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_206_0();
    v3 = v2();
    if (v3)
    {
LABEL_14:
      v7 = v3;
      goto LABEL_13;
    }
  }

  v4 = *(DerivedStorage + 664);
  if (v4 && CFArrayGetCount(v4) >= 1)
  {
    OUTLINED_FUNCTION_417_0();
    do
    {
      CFArrayGetValueAtIndex(*(DerivedStorage + 664), v0);
      FigRenderPipelineGetFigBaseObject();
      if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_206_0();
      v3 = v5();
      if (v3)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_377_0();
    }

    while (!v6);
  }

  v7 = 0;
LABEL_13:
  FigSimpleMutexUnlock();
  return v7;
}

uint64_t itemfig_createRenderTriplesForVideoTrackSampleAttachmentCollectors(uint64_t a1, int a2, CFMutableArrayRef *a3, __CFArray **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v73 = 0;
  v74[0] = 0;
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  v68 = 0;
  v69 = 0;
  value = 0;
  if (!a3 || (v7 = DerivedStorage, v8 = *MEMORY[0x1E695E480], v9 = OUTLINED_FUNCTION_165_0(), (Mutable = CFArrayCreateMutable(v9, v10, v11)) == 0))
  {
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v16 = v61;
LABEL_56:
    v59 = 0;
    goto LABEL_59;
  }

  v13 = Mutable;
  FigCFArrayRemoveAllValues();
  v62 = a4;
  if (a2)
  {
    cf[0] = 0;
    v14 = *(v7 + 1008);
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v15)
    {
      v16 = v15(v14, a2, cf, 0);
      v17 = cf[0];
      if (!v16)
      {
        itemfig_copyFormatDescription(cf[0], v74);
        v17 = cf[0];
      }

      if (v17)
      {
        CFRelease(v17);
      }
    }

    else
    {
      v16 = 4294954514;
    }
  }

  else
  {
    v16 = 0;
  }

  Count = CFArrayGetCount(*(v7 + 648));
  if (Count < 1)
  {
LABEL_54:
    if (!v62)
    {
      goto LABEL_58;
    }

    *v62 = v13;
    goto LABEL_56;
  }

  v19 = Count;
  v20 = 0;
  v64 = v74[0];
  v63 = v7 + 692;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v7 + 648), v20);
    if (ValueAtIndex[1] == 1835365473)
    {
      break;
    }

LABEL_45:
    if (v19 == ++v20)
    {
      goto LABEL_54;
    }
  }

  v22 = ValueAtIndex;
  v23 = *(v7 + 1008);
  v24 = *ValueAtIndex;
  v25 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v25)
  {
    v16 = 4294954514;
    goto LABEL_58;
  }

  CommonRenderPipelineOptionsForTrack = v25(v23, v24, &v69, 0);
  if (CommonRenderPipelineOptionsForTrack)
  {
    goto LABEL_74;
  }

  CommonRenderPipelineOptionsForTrack = itemfig_copyFormatDescription(v69, &v68);
  if (CommonRenderPipelineOptionsForTrack)
  {
    goto LABEL_74;
  }

  if (!v73)
  {
    CommonRenderPipelineOptionsForTrack = FigSampleAttachmentCollectionRulesCopyForFilePlayback(v8, v64, &v73);
    if (CommonRenderPipelineOptionsForTrack)
    {
      goto LABEL_74;
    }
  }

  v27 = v68;
  if (*(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    v29 = OUTLINED_FUNCTION_293();
    v28 = v30(v29) != 0;
  }

  else
  {
    v28 = 0;
  }

  if (v69)
  {
    CFRelease(v69);
    v69 = 0;
  }

  if (v27)
  {
    CFRelease(v27);
    v68 = 0;
  }

  v31 = OUTLINED_FUNCTION_245();
  hasTrackReference = itemfig_hasTrackReference(v31, v32, v33, 1, a2);
  v35 = !v28;
  if (!hasTrackReference)
  {
    v35 = 1;
  }

  if (v35)
  {
LABEL_44:
    v16 = 0;
    goto LABEL_45;
  }

  if (!*a3)
  {
    v36 = OUTLINED_FUNCTION_165_0();
    v38 = CFArrayCreateMutable(v36, v37, MEMORY[0x1E695E9C0]);
    *a3 = v38;
    if (!v38)
    {
      goto LABEL_73;
    }
  }

  if (!*(v7 + 464))
  {
LABEL_32:
    if (*(&v71 + 1))
    {
LABEL_43:
      CFArrayAppendValue(v13, &v70);
      itemfig_resetRenderTriple(&v70);
      goto LABEL_44;
    }

LABEL_33:
    v40 = (v22 + 4);
    v39 = *(v22 + 2);
    if (v39)
    {
      CFRelease(v39);
      *v40 = 0;
    }

    itemfig_resetRenderTriple(&v70);
    CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
    v41 = OUTLINED_FUNCTION_165_0();
    CommonRenderPipelineOptionsForTrack = CMBufferQueueCreate(v41, v42, v43, v44);
    if (CommonRenderPipelineOptionsForTrack)
    {
      goto LABEL_74;
    }

    CFArrayAppendValue(*a3, value);
    FigRenderPipelineCreateForBufferQueue(v8, value, 0, v22 + 2);
    if (CommonRenderPipelineOptionsForTrack)
    {
      goto LABEL_74;
    }

    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    LODWORD(v70) = *v22;
    OUTLINED_FUNCTION_167(v63);
    v45 = OUTLINED_FUNCTION_490();
    CommonRenderPipelineOptionsForTrack = fp_createCommonRenderPipelineOptionsForTrack(v45, v46, v47, v48, 1835365473, 0, v49);
    if (CommonRenderPipelineOptionsForTrack)
    {
      goto LABEL_74;
    }

    *(&v71 + 1) = CFRetain(*v40);
    v50 = v72;
    if (v72)
    {
      v50 = CFRetain(v72);
    }

    *(&v70 + 1) = v50;
    goto LABEL_43;
  }

  LODWORD(v70) = *v22;
  OUTLINED_FUNCTION_167(v63);
  v51 = OUTLINED_FUNCTION_490();
  CommonRenderPipelineOptionsForTrack = fp_createCommonRenderPipelineOptionsForTrack(v51, v52, v53, v54, 1835365473, 0, v55);
  if (CommonRenderPipelineOptionsForTrack)
  {
    goto LABEL_74;
  }

  itemfig_reuseExistingRenderPipeline(*(v7 + 464), &v70);
  if (!*(&v71 + 1))
  {
    goto LABEL_33;
  }

  cf[0] = 0;
  FigRenderPipelineGetFigBaseObject();
  v57 = v56;
  v58 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v58)
  {
    v58(v57, @"SourceSampleBufferQueue", v8, cf);
  }

  if (cf[0])
  {
    CFArrayAppendValue(*a3, cf[0]);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    goto LABEL_32;
  }

LABEL_73:
  OUTLINED_FUNCTION_120();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_74:
  v16 = CommonRenderPipelineOptionsForTrack;
LABEL_58:
  v59 = v13;
LABEL_59:
  itemfig_resetRenderTriple(&v70);
  if (v69)
  {
    CFRelease(v69);
  }

  if (v68)
  {
    CFRelease(v68);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v59)
  {
    CFRelease(v59);
  }

  if (v74[0])
  {
    CFRelease(v74[0]);
  }

  if (v73)
  {
    CFRelease(v73);
  }

  return v16;
}

uint64_t itemfig_reuseRenderTriplesForVideoComposition(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  OUTLINED_FUNCTION_471();
  v28 = v8;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *(DerivedStorage + 648);
  if (v10)
  {
    theArray = v4;
    v32 = 0;
    value = 0u;
    *cf = 0u;
    if (CFArrayGetCount(v10) >= 1)
    {
      OUTLINED_FUNCTION_402_0();
      v25 = *MEMORY[0x1E695E4D0];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 648), v7);
        v12 = ValueAtIndex;
        v13 = ValueAtIndex[1];
        if (v13 == 1986618469)
        {
          goto LABEL_7;
        }

        if (v13 != 1835365473)
        {
          break;
        }

        SInt32 = FigCFNumberCreateSInt32();
        v16 = FigCFArrayContainsValue();
        if (SInt32)
        {
          CFRelease(SInt32);
          LOBYTE(SInt32) = 0;
        }

        v14 = 1;
        if (!v16)
        {
          goto LABEL_12;
        }

LABEL_14:
        LODWORD(value) = *v12;
        OUTLINED_FUNCTION_167(DerivedStorage + 692);
        CommonRenderPipelineOptionsForTrack = fp_createCommonRenderPipelineOptionsForTrack(v28, 0, v29, v17, v18, 0, &value + 1);
        if (CommonRenderPipelineOptionsForTrack)
        {
          v23 = CommonRenderPipelineOptionsForTrack;
          goto LABEL_27;
        }

        itemfig_reuseExistingRenderPipeline(*(DerivedStorage + 392), &value);
        if (!cf[1])
        {
          v23 = 4294950069;
          goto LABEL_27;
        }

        *(v12 + 2) = CFRetain(cf[1]);
        FigRenderPipelineGetFigBaseObject();
        v21 = v20;
        v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v22)
        {
          v22(v21, @"ObeyEmptyMediaMarkers", v25);
        }

        if (v14)
        {
          if ((SInt32 & 1) == 0)
          {
            CFArrayAppendValue(theArray, &value);
          }
        }

        else
        {
          CFArrayAppendValue(v5, &value);
          FigStartForwardingMediaServicesProcessDeathNotification();
        }

        itemfig_resetRenderTriple(&value);
LABEL_12:
        if (v6 == ++v7)
        {
          goto LABEL_24;
        }
      }

      if (v13 != 1635088502)
      {
        goto LABEL_12;
      }

LABEL_7:
      v14 = 0;
      LOBYTE(SInt32) = 1;
      if (!*(ValueAtIndex + 8))
      {
        goto LABEL_12;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v32 = 0;
    value = 0u;
    *cf = 0u;
  }

LABEL_24:
  if (a4)
  {
    itemfig_setTimebaseOnVideoProcessorImageQueueTables(v28);
  }

  v23 = 0;
LABEL_27:
  itemfig_resetRenderTriple(&value);
  return v23;
}

void itemfig_enableImageQueueTimingAndSetDurationOnFigImageQueueArray()
{
  OUTLINED_FUNCTION_187();
  FigImageQueueArraySetProperty(v0, @"EnableImageQueueTiming", *MEMORY[0x1E695E4D0]);
  OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
  DurationIfReady = itemfig_getDurationIfReady(v1, &v18);
  if (!v10 && (v19 & 1) != 0)
  {
    OUTLINED_FUNCTION_92_0(DurationIfReady, v3, v4, v5, v6, v7, v8, v9, v14, v15, v16, v17, v18);
    v13 = CMTimeCopyAsDictionary(v11, v12);
    FigImageQueueArraySetProperty(v0, @"Duration", v13);
    if (v13)
    {
      CFRelease(v13);
    }
  }
}

void itemfig_updateRotationOnVideoRenderPipeline(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  v12 = 0;
  if (a2 || (a2 = *(DerivedStorage + 1040), a2))
  {
    if (!itemfig_getTrackStorage(a1, a2, &v13))
    {
      VideoMatrixRotationAngleAndFlips = itemfig_getVideoMatrixRotationAngleAndFlips(a1, &v12 + 1, &v12);
      v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &VideoMatrixRotationAngleAndFlips);
      v6 = v13;
      if (*(v13 + 16))
      {
        FigRenderPipelineGetFigBaseObject();
        if (*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          v7 = OUTLINED_FUNCTION_123_0();
          v8(v7);
        }
      }

      if (*(v6 + 248))
      {
        FigRenderPipelineGetFigBaseObject();
        if (*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          v9 = OUTLINED_FUNCTION_123_0();
          v10(v9);
        }
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }
  }
}

void itemfig_updatePriorImageQueueGaugeOnRenderPipelines(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 2200))
  {
    if (!*(DerivedStorage + 656))
    {
      if (*(DerivedStorage + 1040))
      {
        OUTLINED_FUNCTION_313_0();
        if (!itemfig_getTrackStorage(a1, v3, v4) && v8 && *(v8 + 16))
        {
          v5 = FigCFWeakReferenceHolderCopyReferencedObject();
          FigRenderPipelineGetFigBaseObject();
          if (*(*(CMBaseObjectGetVTable() + 8) + 56))
          {
            v6 = OUTLINED_FUNCTION_308();
            v7(v6);
          }

          if (v5)
          {
            CFRelease(v5);
          }
        }
      }
    }
  }
}

uint64_t itemfig_hasTrackReference(uint64_t a1, const void *a2, int a3, int a4, int a5)
{
  theDict = 0;
  cf = 0;
  value = 0;
  if (a3 && (!a4 || a5))
  {
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 120);
    if (v7)
    {
      if (!v7(a1, &cf))
      {
        FigFormatReaderGetFigBaseObject();
        v9 = v8;
        v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v10)
        {
          if (!v10(v9, @"TrackReferenceDictionary", *MEMORY[0x1E695E480], &theDict))
          {
            if (theDict)
            {
              if (CFDictionaryGetValueIfPresent(theDict, a2, &value))
              {
                if (value)
                {
                  Count = CFArrayGetCount(value);
                  v12 = Count;
                  if ((Count & 1) == 0 && Count >= 1)
                  {
                    v13 = 0;
                    do
                    {
                      FigCFArrayGetInt32AtIndex();
                      FigCFArrayGetInt32AtIndex();
                      v13 += 2;
                    }

                    while (v13 < v12);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  return 0;
}

void itemfig_CopyFormatReader(uint64_t a1, void *a2)
{
  if (!*CMBaseObjectGetDerivedStorage() && a2)
  {
    v4 = OUTLINED_FUNCTION_179();
    if (!itemfig_assureBasicsReadyForInspection(v4))
    {
      v5 = *(v2 + 1008);
      if (v5)
      {
        v6 = CFRetain(v5);
      }

      else
      {
        v6 = 0;
      }

      *a2 = v6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }
}

void fp_postClosedCaptionNotificationIfEnabled(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_845();
  v22 = v21;
  v24 = v23;
  CMBaseObjectGetDerivedStorage();
  v25 = FigCFWeakReferenceHolderCopyReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v25)
  {
    v27 = DerivedStorage;
    if (*(DerivedStorage + 304))
    {
      OUTLINED_FUNCTION_313_0();
      FigCaptionCommandCreatePropertyList(v24, v22, v28);
      if (cf)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        CFRelease(cf);
      }
    }

    else if (*(DerivedStorage + 306))
    {
      FigSimpleMutexLock();
      v29 = *(v27 + 312);
      if (v29 && CFArrayGetCount(v29) >= 1)
      {
        OUTLINED_FUNCTION_332_0();
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v27 + 312), v20);
          v31 = objc_autoreleasePoolPush();
          [ValueAtIndex processCaptionCommand:v24 data:v22];
          objc_autoreleasePoolPop(v31);
          OUTLINED_FUNCTION_220_0();
        }

        while (!v32);
      }

      FigSimpleMutexUnlock();
    }

    CFRelease(v25);
  }

  OUTLINED_FUNCTION_843();
}

uint64_t playerfig_updateStartHostTimeEstimatesOfItemAndFollowingItems(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  CFArrayGetCount(*(DerivedStorage + 528));
  v5 = OUTLINED_FUNCTION_173_0();
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v5, v9, a2);
  if (FirstIndexOfValue != -1)
  {
    playerfig_updateStartHostTimeEstimatesOfItemAtIndexAndFollowingItems(a1, FirstIndexOfValue);
  }

  return FigSimpleMutexUnlock();
}

uint64_t itemfig_createTrackFormatDetailsDictionary(uint64_t a1, uint64_t a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  OUTLINED_FUNCTION_327_0();
  v48 = *MEMORY[0x1E69E9840];
  theArray = 0;
  v41 = 0;
  v39 = 0;
  cf = 0;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  *values = 0u;
  *keys = 0u;
  v43 = 0u;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v8)
  {
    goto LABEL_24;
  }

  v9 = v8(v4, &v41 + 4, &v41);
  if (v9)
  {
    goto LABEL_39;
  }

  MTCopyStringsForMediaTypeAndSubType(v41, 0, &cf, 0);
  if (v9)
  {
    goto LABEL_39;
  }

  FigTrackReaderGetFigBaseObject();
  v11 = v10;
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v12)
  {
LABEL_24:
    Mutable = 0;
    v23 = 0;
    v33 = 4294954514;
    goto LABEL_25;
  }

  v9 = v12(v11, @"TrackFormatDescriptionArray", *MEMORY[0x1E695E480], &theArray);
  if (v9)
  {
LABEL_39:
    v33 = v9;
    Mutable = 0;
    v23 = 0;
    goto LABEL_25;
  }

  Count = CFArrayGetCount(theArray);
  v14 = OUTLINED_FUNCTION_622();
  Mutable = CFArrayCreateMutable(v14, v15, v16);
  if (Mutable)
  {
    v18 = OUTLINED_FUNCTION_622();
    v21 = CFArrayCreateMutable(v18, v19, v20);
    v23 = v21;
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        MediaSubType = CMFormatDescriptionGetMediaSubType(ValueAtIndex);
        v39 = MediaSubType;
        v28 = OUTLINED_FUNCTION_441_0(MediaSubType, v27, &v39);
        CFArrayGetCount(Mutable);
        v29 = OUTLINED_FUNCTION_265();
        v21 = CFArrayContainsValue(v29, v49, v28);
        if (!v21)
        {
          value = 0;
          MTCopyStringsForMediaTypeAndSubType(v41, v39, 0, &value);
          if (value)
          {
            CFArrayAppendValue(Mutable, v28);
            CFArrayAppendValue(v23, value);
            CFRelease(value);
          }
        }

        if (v28)
        {
          CFRelease(v28);
        }
      }
    }

    v30 = HIDWORD(v41) != v5[260] && HIDWORD(v41) != v5[259] && HIDWORD(v41) != v5[264] && HIDWORD(v41) != v5[262] && HIDWORD(v41) != v5[270];
    keys[0] = @"TrackID";
    values[0] = OUTLINED_FUNCTION_441_0(v21, v22, &v41 + 4);
    keys[1] = @"MediaTypeString";
    values[1] = CFRetain(cf);
    *&v43 = @"MediaType";
    *&v46 = OUTLINED_FUNCTION_441_0(values[1], v31, &v41);
    *(&v43 + 1) = @"MediaSubTypeString";
    *(&v46 + 1) = CFRetain(v23);
    *&v44 = @"MediaSubType";
    *&v47 = CFRetain(Mutable);
    *(&v44 + 1) = @"ChosenForPlayback";
    v32 = MEMORY[0x1E695E4C0];
    if (!v30)
    {
      v32 = MEMORY[0x1E695E4D0];
    }

    *(&v47 + 1) = CFRetain(*v32);
    v33 = 0;
    *a4 = CFDictionaryCreate(a3, keys, values, 6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  else
  {
    v23 = 0;
    v33 = 4294967188;
  }

LABEL_25:
  for (j = 0; j != 6; ++j)
  {
    v35 = values[j];
    if (v35)
    {
      CFRelease(v35);
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v33;
}

void itemfig_copySidebandVideoPropertiesArrayForTrackWithID(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *value, CFArrayRef theArray, CFTypeRef cf, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_427_0();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  cf = 0;
  value = 0;
  if (v29)
  {
    a9 = 0;
    if (v27)
    {
      itemfig_getTrackStorage(v31, v27, &a9);
      v33 = *(a9 + 280);
      v34 = FigCFDictionaryCopyArrayOfKeys();
      theArray = v34;
      if (v34)
      {
        goto LABEL_4;
      }

LABEL_19:
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      goto LABEL_20;
    }

LABEL_33:
    Mutable = 0;
    goto LABEL_23;
  }

  if (!v27)
  {
    goto LABEL_33;
  }

  v47 = *(DerivedStorage + 1008);
  v48 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v48)
  {
    goto LABEL_22;
  }

  if (v48(v47, v27, &cf, 0))
  {
    goto LABEL_21;
  }

  CFGetAllocator(v31);
  OUTLINED_FUNCTION_413();
  FigTrackReaderGetFigBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
LABEL_22:
    Mutable = 0;
    goto LABEL_23;
  }

  v49 = OUTLINED_FUNCTION_308();
  if (v50(v49))
  {
    goto LABEL_21;
  }

  v33 = 0;
  v34 = theArray;
  if (!theArray)
  {
    goto LABEL_19;
  }

LABEL_4:
  Count = CFArrayGetCount(v34);
  v36 = OUTLINED_FUNCTION_489();
  Mutable = CFArrayCreateMutable(v36, v37, v38);
  if (Count < 1)
  {
LABEL_20:
    *v25 = Mutable;
LABEL_21:
    Mutable = 0;
    goto LABEL_23;
  }

  v40 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v40);
    v42 = OUTLINED_FUNCTION_204_0();
    if (MTSidebandVideoPropertiesCreateMutableFromFormatDescription(v42, v43, v44))
    {
      break;
    }

    if (v33)
    {
      CFDictionaryGetValue(v33, ValueAtIndex);
      v45 = value;
      SInt16 = FigCFNumberGetSInt16();
      MTSidebandVideoPropertiesSetLookupID(v45, SInt16);
    }

    CFArrayAppendValue(Mutable, value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    if (Count == ++v40)
    {
      goto LABEL_20;
    }
  }

LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (value)
  {
    CFRelease(value);
  }

  OUTLINED_FUNCTION_424_0();
}

CFTypeRef playerfig_createVideoChannelSettingsForItemWithVideoTrackAndImageQueue(const void *a1, const void *a2, uint64_t a3, CFMutableDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  v10 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v12 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  itemfig_GetDimensions();
  if (*(DerivedStorage + 76))
  {
    v11 = 0.0;
    v12 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
  }

  v13 = CFGetAllocator(a1);
  v14 = *(DerivedStorage + 241);
  v15 = *(DerivedStorage + 76);

  return FPSupport_CreateVideoChannelSettingsForTrackWithID(v13, a1, a2, a3, v14, 0.0, 0.0, v10, v9, v12, v11, 0, v15, a4);
}

uint64_t playerfig_sendConfigurationsToMultichannelVideoTargetsForItemAtHostTime(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFDictionaryGetCount() < 1)
  {
    return 0;
  }

  v5 = FigCFDictionaryCopyArrayOfKeys();
  v6 = FigCFDictionaryCopyArrayOfValues();
  v7 = v6;
  if (!v5)
  {
    Count = 0;
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  Count = CFArrayGetCount(v5);
  if (!v7)
  {
    goto LABEL_6;
  }

LABEL_4:
  v9 = CFArrayGetCount(v7);
LABEL_7:
  if (Count == v9)
  {
    if (Count < 1)
    {
LABEL_18:
      v31 = 0;
      if (v5)
      {
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
      v11 = OUTLINED_FUNCTION_415_0();
      v13 = CFArrayGetValueAtIndex(v11, v12);
      Value = CFDictionaryGetValue(*(DerivedStorage + 1136), ValueAtIndex);
      if (Value)
      {
        FigDataChannelConfigurationAddDataChannelResource(v13, Value);
      }

      if (*(a3 + 12))
      {
        OUTLINED_FUNCTION_130_0();
        VTable = CMBaseObjectGetVTable();
        v26 = *(VTable + 16);
        v25 = VTable + 16;
        if (!*(v26 + 64))
        {
          v31 = 4294954514;
          if (v5)
          {
            goto LABEL_21;
          }

          goto LABEL_22;
        }

        OUTLINED_FUNCTION_315_0(v25, v18, v19, v20, v21, v22, v23, v24, v33);
        v27 = OUTLINED_FUNCTION_396();
        v29 = v28(v27);
        if (v29)
        {
          goto LABEL_27;
        }
      }

      else if (*(*(CMBaseObjectGetVTable() + 16) + 72))
      {
        v15 = OUTLINED_FUNCTION_396();
        v16(v15);
      }

      OUTLINED_FUNCTION_220_0();
      if (v30)
      {
        goto LABEL_18;
      }
    }
  }

  OUTLINED_FUNCTION_429();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, DWORD2(v33), v34);
LABEL_27:
  v31 = v29;
  if (v5)
  {
LABEL_21:
    CFRelease(v5);
  }

LABEL_22:
  if (v7)
  {
    CFRelease(v7);
  }

  return v31;
}

uint64_t playerfig_setClientVideoLayerArray()
{
  OUTLINED_FUNCTION_187();
  v106 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (FigUseVideoReceiverForCALayer())
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v84, v85, v86);
    v4 = v82;
    goto LABEL_7;
  }

  if (!v0 || !CFArrayGetCount(v0))
  {
    v0 = 0;
  }

  if (FigCFEqual())
  {
    v4 = 0;
LABEL_7:
    v5 = 0;
    Mutable = 0;
    v7 = 0;
    OUTLINED_FUNCTION_368_0();
    v9 = 0;
    goto LABEL_67;
  }

  v90 = v2;
  v89 = CFRetain(v1);
  FigSimpleMutexLock();
  theArray = *(DerivedStorage + 216);
  *(DerivedStorage + 216) = 0;
  FigSimpleMutexUnlock();
  v9 = *(DerivedStorage + 208);
  if (v9)
  {
    Count = CFArrayGetCount(*(DerivedStorage + 208));
  }

  else
  {
    Count = 0;
  }

  v88 = v1;
  if (v0)
  {
    v11 = CFArrayGetCount(v0);
  }

  else
  {
    v11 = 0;
  }

  v1 = *MEMORY[0x1E695E480];
  v12 = OUTLINED_FUNCTION_265();
  Mutable = CFArrayCreateMutable(v12, v13, v14);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v84, v85, v86);
    v4 = v83;
    v7 = 0;
LABEL_84:
    OUTLINED_FUNCTION_368_0();
    v5 = v89;
    v2 = v90;
    goto LABEL_66;
  }

  v15 = OUTLINED_FUNCTION_265();
  v7 = CFArrayCreateMutable(v15, v16, v17);
  if (!v7)
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v84, v85, v86);
LABEL_83:
    v4 = v27;
    goto LABEL_84;
  }

  if (v11 >= 1)
  {
    for (i = 0; i != v11; ++i)
    {
      v19 = OUTLINED_FUNCTION_627();
      ValueAtIndex = CFArrayGetValueAtIndex(v19, v20);
      if (!v9 || (v22 = OUTLINED_FUNCTION_383(), v107.length = Count, v23 = CFArrayContainsValue(v22, v107, ValueAtIndex), v24 = Mutable, !v23))
      {
        v24 = v7;
      }

      CFArrayAppendValue(v24, ValueAtIndex);
    }
  }

  CFArrayGetCount(v7);
  v25 = OUTLINED_FUNCTION_292();
  v108.location = 0;
  CFArrayAppendArray(v25, v26, v108);
  v27 = FigDeferredTransactionCreate(v1, &cf);
  if (v27)
  {
    goto LABEL_83;
  }

  if (theArray && CFArrayGetCount(theArray) >= 1)
  {
    playerfig_clearVideoLayers(theArray, 1, cf);
  }

  if (*DerivedStorage)
  {
    v4 = 0;
    OUTLINED_FUNCTION_368_0();
    v5 = v89;
    v2 = v90;
    goto LABEL_67;
  }

  FigSimpleMutexLock();
  v28 = *(DerivedStorage + 528);
  if (v28 && CFArrayGetCount(v28) >= 1)
  {
    v29 = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
    itemfig_handleReadyToDisplayVideoLatch(v29, 4, cf);
  }

  *(DerivedStorage + 208) = Mutable;
  CFRetain(Mutable);
  v30 = CFArrayGetCount(*(DerivedStorage + 208));
  v0 = CFArrayCreateMutable(v1, v30, MEMORY[0x1E695E9C0]);
  if (v30 < 1)
  {
LABEL_36:
    v34 = FigCFCopyCompactDescription();
    v35 = FigCFCopyCompactDescription();
    if (dword_1EAF16A10)
    {
      OUTLINED_FUNCTION_397_0();
      v43 = OUTLINED_FUNCTION_346_0(qword_1EAF16A08, v36, v37, v38, v39, v40, v41, v42, v84, v85, v86, v34, v88, v89, v90, theArray, *v92, v92[2], v92[3], v92[4]);
      if (os_log_type_enabled(v43, type))
      {
        v44 = v94;
      }

      else
      {
        v44 = v94 & 0xFFFFFFFE;
      }

      if (v44)
      {
        if (v88)
        {
          v45 = (CMBaseObjectGetDerivedStorage() + 972);
        }

        else
        {
          v45 = "";
        }

        v96 = 136316162;
        v97 = "playerfig_setClientVideoLayerArray";
        v98 = 2048;
        v99 = v88;
        v100 = 2082;
        v101 = v45;
        v102 = 2112;
        v103 = v87;
        v104 = 2112;
        v105 = v35;
        OUTLINED_FUNCTION_146();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v60, v61, v62, v63, v64, v65, type, v66);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_345_0(v67, v68, v69, v70, v71);
      v34 = v87;
    }

    if (v34)
    {
      CFRelease(v34);
    }

    if (v35)
    {
      CFRelease(v35);
    }

    FPSupport_AppendDeferredTransactionChangeForAttachingFigVideoLayersToClientLayers();
    FPSupport_AppendDeferredTransactionChangeForSettingEdgeAntialiasingMaskOnLayers(cf, 0, v0);
    FigSimpleMutexLock();
    v1 = *(DerivedStorage + 216);
    *(DerivedStorage + 216) = v0;
    FigSimpleMutexUnlock();
    if (CFArrayGetCount(*(DerivedStorage + 528)) >= 1)
    {
      CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
      v72 = CMBaseObjectGetDerivedStorage();
      if (!*v72)
      {
        v73 = v72;
        FigSimpleMutexLock();
        v74 = *(v73 + 112);
        if (v74)
        {
          CFRelease(v74);
          *(v73 + 112) = 0;
        }

        FigSimpleMutexUnlock();
      }
    }

    if (Count >= v11)
    {
      v75 = playerfig_removeExcessImageQueuesAndSlotsFromAllWorkingOrLameDuckItems(v88, cf);
    }

    else
    {
      v75 = playerfig_gracefullyAddImageQueues(v88, cf);
    }

    v5 = v89;
    v2 = v90;
    if (v75 || (v80 = *(DerivedStorage + 528)) != 0 && CFArrayGetCount(v80) >= 1 && (v81 = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0), itemfig_handleReadyToDisplayVideoLatch(v81, 3, cf)))
    {
      FigSimpleMutexUnlock();
      v76 = OUTLINED_FUNCTION_270();
      playerfig_rebuildRenderPipelines_disturbIfInLameDuckGapOrMainVideoStillEnabled(v76, v77, v78);
      FigSimpleMutexLock();
    }

    v0 = 0;
    v4 = 0;
  }

  else
  {
    while (1)
    {
      v31 = [FigVideoLayer alloc];
      v32 = [(FigVideoLayer *)v31 initWithDeferredTransaction:cf];
      if (!v32)
      {
        break;
      }

      v33 = v32;
      CFArrayAppendValue(v0, v32);
      if (*(DerivedStorage + 241))
      {
        FBLSupportAppendDeferredTransactionChangeToSetAllowsDisplayCompositing(cf, v33, 0, "playerfig_setClientVideoLayerArray");
      }

      if (!--v30)
      {
        goto LABEL_36;
      }
    }

    OUTLINED_FUNCTION_397_0();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v47 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v92[3]);
    if (OUTLINED_FUNCTION_71_0(v47))
    {
      v96 = 136315138;
      v97 = "playerfig_setClientVideoLayerArray";
      OUTLINED_FUNCTION_146();
      OUTLINED_FUNCTION_36();
      _os_log_send_and_compose_impl(v48, v49, v50, v51, v52, v53, v92[3], v54);
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_449(v55, v56, v57, v58, v59);
    v1 = 0;
    v4 = 4294954434;
    v5 = v89;
    v2 = v90;
  }

  FigSimpleMutexUnlock();
LABEL_66:
  v8 = theArray;
LABEL_67:
  FPSupport_AppendDeferredTransactionChangeToRelease(cf, v8);
  FPSupport_AppendDeferredTransactionChangeToRelease(cf, v1);
  FPSupport_AppendDeferredTransactionChangeToRelease(cf, v0);
  FPSupport_AppendDeferredTransactionChangeToRelease(cf, v9);
  FigDeferredTransactionCommit(cf, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  objc_autoreleasePoolPop(v2);
  return v4;
}