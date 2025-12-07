double MovieHeaderExtendLastSampleDecodeDuration(uint64_t a1)
{
  if (*(a1 + 408))
  {
    OUTLINED_FUNCTION_369();
    OUTLINED_FUNCTION_71_8(*(v2 + 416), v3, v4, v5, v6, v7, v8, v9, v20);
    OUTLINED_FUNCTION_71_8(*(v1 + 416), v10, v11, v12, v13, v14, v15, v16, v21);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    OUTLINED_FUNCTION_90_4();
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_90_4();

    return FigSignalErrorAtGM(v18);
  }

  return result;
}

double MovieTrackAppendSampleInformation(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, CMTime *a8, _BYTE *a9, unint64_t *a10, const __CFArray *a11, const char *a12, CMTime *a13, CMTime *a14)
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v20 = a13;
  v19 = a14;
  v21 = a11;
  v22 = a9;
  v324 = 0;
  value = 0;
  v23 = *(a2 + 232);
  v24 = *(a2 + 768);
  if (v24)
  {
    v25 = *(a2 + 776) == 0;
  }

  else
  {
    v25 = 0;
  }

  if (a6 != a6 || a7 != a7 || a9 != a9)
  {
    goto LABEL_54;
  }

  if (a7 >= 1)
  {
    p_timescale = &a8[1].timescale;
    v27 = a7;
    while (v23 == *(p_timescale - 6) && v23 == *p_timescale && v23 == p_timescale[6])
    {
      p_timescale += 18;
      if (!--v27)
      {
        goto LABEL_13;
      }
    }

LABEL_54:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_114();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

LABEL_13:
  if (v25)
  {
    if (!v24)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  HIDWORD(v264) = v25;
  HIDWORD(v307) = a3;
  v285 = a4;
  v328 = 0;
  memcpy(__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
  v326 = 0;
  if (MovieTrackGetMediaTypeForSampleDescriptionID(a2, a5, &v328))
  {
    return result;
  }

  LODWORD(v307) = v328;
  v280 = v16;
  HIDWORD(v296) = a5;
  v38 = HIDWORD(v307);
  v39 = a11;
  if (v328 == 1936684398 && *(a2 + 240))
  {
    v40 = *(a2 + 244);
    v41 = *(a2 + 248);
    memcpy(__dst, v14, sizeof(__dst));
    v42 = *a10 / v41;
    v326 = v42;
    if (a9 != 1 || v42 != 1)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_114();
      result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_247:
      v16 = v280;
      a4 = v285;
      a5 = HIDWORD(v296);
      LODWORD(a3) = HIDWORD(v307);
      v21 = a11;
      goto LABEL_248;
    }

    v43 = __dst[0].value / v40;
    __dst[0].value /= v40;
    a5 = HIDWORD(v296);
    v38 = HIDWORD(v307);
    v39 = a11;
    if (v15 != 1 || v43 != 1)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_114();
      result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      v21 = a11;
      LODWORD(a3) = HIDWORD(v307);
      v16 = v280;
      a4 = v285;
LABEL_248:
      v25 = HIDWORD(v264);
      if (v89)
      {
        return result;
      }

      v24 = *(a2 + 768);
      if (!v24)
      {
        goto LABEL_20;
      }

LABEL_15:
      p_value = &value;
      if (!v25)
      {
        p_value = 0;
      }

      v29 = &v324;
      if (!v25)
      {
        v29 = 0;
      }

      result = TrackFragmentBuilderAppendSampleInformation(v24, a3, a4, a5, v16, v15, v14, v22, a10, v21, a12, p_value, v29);
      if (v31)
      {
        return result;
      }

LABEL_20:
      if (v20)
      {
        CMTimeMake(__dst, value, v23);
        result = *&__dst[0].value;
        *v20 = __dst[0];
      }

      if (v19)
      {
        CMTimeMake(__dst, v324, v23);
        result = *&__dst[0].value;
        *v19 = __dst[0];
      }

      v32 = *(a2 + 16);
      *(a2 + 16) = v32 | 0x2001;
      if (*(a2 + 922))
      {
        OUTLINED_FUNCTION_30_19(v32);
      }

      return result;
    }

    v16 = (v40 * v280);
    v275 = __dst;
    v322 = &v326;
  }

  else
  {
    v322 = a10;
    v275 = v14;
  }

  *v312 = v16;
  v317 = a9;
  v290 = v14;
  v301 = v15;
  v269 = a13;
  if (v38)
  {
    rhs.value = 0;
    v44 = *(a2 + 432);
    if (v44 < 1)
    {
      v49 = 0;
      v48 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v50 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_48_15();
      OUTLINED_FUNCTION_19_33();
      v45 = destination.value;
      OUTLINED_FUNCTION_48_15();
      OUTLINED_FUNCTION_19_33();
      value_high = HIDWORD(destination.value);
      OUTLINED_FUNCTION_48_15();
      OUTLINED_FUNCTION_19_33();
      v47 = bswap32(v45);
      v48 = bswap32(value_high);
      v49 = bswap32(destination.timescale);
      v50 = v47 + 1;
      v51 = v44 - 1;
      if (v44 == 1)
      {
        v52 = 0;
        v53 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_48_15();
        OUTLINED_FUNCTION_19_33();
        v52 = bswap32(destination.timescale);
        OUTLINED_FUNCTION_48_15();
        OUTLINED_FUNCTION_19_33();
        v53 = bswap32(HIDWORD(destination.value));
      }
    }

    v54 = v52 == v49 && v53 == v48;
    if (v54)
    {
      v55 = v51;
    }

    else
    {
      v55 = v51 + 1;
    }

    MakeTableReadyToWrite((a2 + 440), (a2 + 448));
    lhs.value = bswap32(v50);
    lhs.timescale = bswap32(HIDWORD(v296));
    v56 = *(a2 + 448);
    v57 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v57 || v57(v56, 12, 12 * v55, &lhs, &rhs))
    {
      return result;
    }

    *(a2 + 432) = v55 + 1;
    lhs.value = 0;
    v58 = *(a2 + 392);
    v14 = v290;
    LODWORD(v15) = v301;
    if (v285 <= 4000000000)
    {
      if (!v58)
      {
        MakeTableReadyToWrite((a2 + 368), (a2 + 376));
        LODWORD(rhs.value) = bswap32(v285);
        if (CMByteStreamAppend())
        {
          return result;
        }

        ++*(a2 + 360);
        v59 = v285;
        goto LABEL_60;
      }
    }

    else if (!v58)
    {
      UpgradeTo64BitChunkOffsets(a2);
    }

    MakeTableReadyToWrite((a2 + 392), (a2 + 400));
    destination.value = bswap64(v285);
    if (CMByteStreamAppend())
    {
      return result;
    }

    ++*(a2 + 384);
    v59 = destination.value;
LABEL_60:
    v39 = a11;
    if (*(a2 + 304) > v59)
    {
      v59 = *(a2 + 304);
    }

    *(a2 + 304) = v59;
  }

  if (v15 == 1)
  {
    if (AddSampleToTimeToSampleTable(a2, v312[0], v275->value, v33, v34, v35, v36, v37, v230, v231, v232, v238, v244, v250, v257, v264, a13, v275, v280, v285))
    {
      return result;
    }

    OUTLINED_FUNCTION_88_7();
    v39 = a11;
    if (v54)
    {
      memset(&destination, 0, sizeof(destination));
      lhs = v275[1];
      rhs = v275[2];
      CMTimeSubtract(&destination, &lhs, &rhs);
      v229 = AddSampleToCompositionOffsetTable(a2, v312[0], destination.value, v224, v225, v226, v227, v228, v230, v231, v232, v238, v244, v251, v258, v264, v269, v275, v280, v285);
      v39 = a11;
      if (v229)
      {
        return result;
      }
    }
  }

  else if (v15 >= 1)
  {
    v60 = v301;
    v61 = v275 + 1;
    do
    {
      if (AddSampleToTimeToSampleTable(a2, 1, v61[-1].value, v33, v34, v35, v36, v37, v230, v231, v232, v238, v244, v250, v257, v264, v269, v275, v280, v285))
      {
        return result;
      }

      v39 = a11;
      if (v307 == 1986618469)
      {
        memset(&destination, 0, sizeof(destination));
        v62 = *&v61->value;
        lhs.epoch = v61->epoch;
        *&lhs.value = v62;
        v63 = *&v61[1].value;
        rhs.epoch = v61[1].epoch;
        *&rhs.value = v63;
        CMTimeSubtract(&destination, &lhs, &rhs);
        v69 = AddSampleToCompositionOffsetTable(a2, 1, destination.value, v64, v65, v66, v67, v68, v230, v231, v232, v238, v244, v250, v257, v264, v269, v275, v280, v285);
        v39 = a11;
        if (v69)
        {
          return result;
        }
      }

      v61 += 3;
      --v60;
    }

    while (v60);
  }

  v70 = *(a2 + 292);
  LODWORD(v71) = *(a2 + 288);
  v72 = *(a2 + 728);
  if (v72)
  {
    LODWORD(v71) = *(v72 + 8) + v71;
  }

  v22 = a9;
  v259 = a14;
  if (a9 != 1 || v71)
  {
    if (a9 == 1 && *v322 == v70)
    {
      goto LABEL_119;
    }

    LODWORD(lhs.value) = 0;
    destination.value = 0;
    if (!(*(a2 + 608))(a2))
    {
      OUTLINED_FUNCTION_98_3();
      if (v71)
      {
        LODWORD(lhs.value) = bswap32(v70);
        if (v71 >= 1)
        {
          v71 = v71;
          while (1)
          {
            v74 = OUTLINED_FUNCTION_41_17(*(a2 + 328));
            if (v74)
            {
              break;
            }

            if (!--v71)
            {
              goto LABEL_90;
            }
          }

LABEL_278:
          v39 = a11;
          v14 = v290;
          v22 = a9;
          goto LABEL_279;
        }

LABEL_90:
        *(a2 + 316) = 0;
        *(a2 + 292) = 0;
        if (v70 < 0x10000)
        {
          if (v70 <= 255)
          {
            if (v70 <= 15)
            {
              v75 = 4;
            }

            else
            {
              v75 = 8;
            }
          }

          else
          {
            v75 = 16;
          }
        }

        else
        {
          v75 = 32;
        }

        if (*(a2 + 296) > v75)
        {
          v75 = *(a2 + 296);
        }

        *(a2 + 296) = v75;
      }
    }

    v39 = a11;
    if (v312[0] < 1)
    {
LABEL_118:
      v14 = v290;
      v22 = a9;
      goto LABEL_119;
    }

    v76 = 0;
    while (1)
    {
      v77 = a9 == 1 ? 0 : v76;
      v78 = v322[v77];
      if (v78 >> 31)
      {
        break;
      }

      OUTLINED_FUNCTION_98_3();
      LODWORD(lhs.value) = bswap32(v78);
      v74 = OUTLINED_FUNCTION_41_17(*(a2 + 328));
      if (v74)
      {
        goto LABEL_278;
      }

      if (v78 <= 0xF)
      {
        v79 = 4;
      }

      else
      {
        v79 = 8;
      }

      if (v78 > 0xFF)
      {
        v79 = 16;
      }

      if (v78 >> 16)
      {
        v80 = 32;
      }

      else
      {
        v80 = v79;
      }

      if (*(a2 + 296) > v80)
      {
        v80 = *(a2 + 296);
      }

      *(a2 + 296) = v80;
      ++v76;
      v39 = a11;
      if (v312[0] == v76)
      {
        goto LABEL_118;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_114();
    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v230, v231, v232);
    goto LABEL_278;
  }

  v73 = *v322;
  if (*v322 >> 31)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_114();
    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v230, v231, v232);
    v39 = a11;
LABEL_279:
    v81 = v312[0];
    if (v74)
    {
      return result;
    }

    goto LABEL_120;
  }

  *(a2 + 316) = v73;
  *(a2 + 292) = v73;
LABEL_119:
  v81 = v312[0];
  *(a2 + 312) += v312[0];
  *(a2 + 840) = 0;
  *(a2 + 16) |= 0x2000uLL;
LABEL_120:
  v82 = *(a2 + 288);
  v83 = *(a2 + 728);
  if (v83)
  {
    v82 += *(v83 + 8);
  }

  v252 = (v81 - 1);
  if (v81 < 1)
  {
    goto LABEL_155;
  }

  v84 = 0;
  v323 = v82;
  while (1)
  {
    v333[0] = 0;
    v332 = 0;
    v85 = v84 + v323 + 1;
    if (!v39)
    {
      v88 = *(a2 + 488);
      destination.value = 0;
      if (!v88)
      {
        goto LABEL_133;
      }

      goto LABEL_131;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v39, v84);
    if (ValueAtIndex)
    {
      FigMovieGetSampleDependencyFlagsFromSampleAttachments(ValueAtIndex, v333 + 1, v333, &v332);
    }

    v87 = *(a2 + 488);
    destination.value = 0;
    if (!v87)
    {
      break;
    }

    if (LOBYTE(v333[0]))
    {
      goto LABEL_133;
    }

LABEL_131:
    LODWORD(lhs.value) = bswap32(v85);
    OUTLINED_FUNCTION_107_3();
    v89 = OUTLINED_FUNCTION_41_17(*(a2 + 496));
    if (v89)
    {
      goto LABEL_154;
    }

    OUTLINED_FUNCTION_21_25();
LABEL_133:
    if (v332)
    {
      LODWORD(lhs.value) = bswap32(v85);
      destination.value = 0;
      MakeTableReadyToWrite((a2 + 512), (a2 + 520));
      v89 = OUTLINED_FUNCTION_41_17(*(a2 + 520));
      if (v89)
      {
        goto LABEL_154;
      }

      ++*(a2 + 504);
    }

    LOBYTE(lhs.value) = HIBYTE(v333[0]);
    destination.value = 0;
    if (!*(a2 + 536))
    {
      if (!HIBYTE(v333[0]))
      {
        goto LABEL_144;
      }

      LOBYTE(rhs.value) = 0;
      MakeTableReadyToWrite((a2 + 536), (a2 + 544));
      v90 = v82;
      if (((v84 + v323 + 1) & 0xFFFFFFFE) != 0)
      {
        do
        {
          v89 = CMByteStreamAppend();
          if (v89)
          {
            goto LABEL_153;
          }

          OUTLINED_FUNCTION_31_20();
        }

        while (--v90);
      }

      v22 = a9;
    }

    MakeTableReadyToWrite((a2 + 536), (a2 + 544));
    v89 = CMByteStreamAppend();
    if (v89)
    {
      goto LABEL_154;
    }

    OUTLINED_FUNCTION_31_20();
LABEL_144:
    v39 = a11;
    ++v84;
    ++v82;
    if (v84 == v312[0])
    {
      goto LABEL_155;
    }
  }

  if (!LOBYTE(v333[0]))
  {
    goto LABEL_133;
  }

  OUTLINED_FUNCTION_107_3();
  if (((v84 + v323 + 1) & 0xFFFFFFFE) == 0)
  {
    goto LABEL_133;
  }

  v91 = 1;
  v92 = v82;
  while (1)
  {
    LODWORD(lhs.value) = bswap32(v91);
    v89 = OUTLINED_FUNCTION_41_17(*(a2 + 496));
    if (v89)
    {
      break;
    }

    OUTLINED_FUNCTION_21_25();
    ++v91;
    if (!--v92)
    {
      v14 = v290;
      v22 = a9;
      goto LABEL_133;
    }
  }

  v14 = v290;
LABEL_153:
  v22 = a9;
LABEL_154:
  v21 = a11;
  if (v89 << 16)
  {
    v89 = v89;
    v19 = a14;
    v20 = v269;
    v15 = v301;
    v16 = v280;
    a4 = v285;
    a5 = HIDWORD(v296);
    LODWORD(a3) = HIDWORD(v307);
    goto LABEL_248;
  }

LABEL_155:
  OUTLINED_FUNCTION_88_7();
  if (v54)
  {
    LOBYTE(destination.value) = 0;
    v20 = v269;
    v15 = v301;
    if (v94)
    {
      if (v312[0] > 0)
      {
        while (1)
        {
          LOBYTE(lhs.value) = 0;
          LOBYTE(rhs.value) = 0;
          v124 = OUTLINED_FUNCTION_106_2();
          if (FigMovieGetVideoSyncSampleEntryFromSampleAttachment(v124, &lhs, &rhs))
          {
            return result;
          }

          OUTLINED_FUNCTION_101_3();
          OUTLINED_FUNCTION_57_10();
          OUTLINED_FUNCTION_12_44();
          OUTLINED_FUNCTION_54_17();
          AddSampleGroupForGroupType(v125, v126, v127, v128, v129, v130, v131, 1, &lhs, &destination, &destination >> 32, &destination >> 48, &destination >> 56, v232, v238, v244, v252, v259, v264, v269, v275, v280, v285, v290, v296, v301, v307, *v312, v317);
          if (v132)
          {
            return result;
          }

          if (LOBYTE(destination.value))
          {
            *(a2 + 16) |= 0x5000000uLL;
          }

          OUTLINED_FUNCTION_47_15();
          if (v54)
          {
            LOBYTE(lhs.value) = 0;
            while (1)
            {
              memset(&destination, 0, 20);
              LOBYTE(rhs.value) = 0;
              v133 = OUTLINED_FUNCTION_106_2();
              if (FigMovieGetVideoTemporalLayerEntryFromSampleAttachment(v133, &destination, &rhs))
              {
                return result;
              }

              MovieSampleGroupTypeSpecMakeBasic(1953719148);
              OUTLINED_FUNCTION_57_10();
              OUTLINED_FUNCTION_13_37();
              OUTLINED_FUNCTION_54_17();
              AddSampleGroupForGroupType(v134, v135, v136, v137, v138, v139, v140, 20, &destination, &lhs, &lhs >> 32, &lhs >> 48, &lhs >> 56, v232, v238, v244, v252, v259, v264, v269, v275, v280, v285, v290, v296, v301, v307, *v312, v317);
              if (v141)
              {
                return result;
              }

              if (LOBYTE(lhs.value))
              {
                *(a2 + 16) |= 0x5000000uLL;
              }

              OUTLINED_FUNCTION_47_15();
              if (v54)
              {
                LOBYTE(destination.value) = 0;
                v15 = v301;
                do
                {
                  LOBYTE(lhs.value) = 0;
                  OUTLINED_FUNCTION_106_2();
                  FigCFDictionaryGetBooleanIfPresent();
                  OUTLINED_FUNCTION_100_5();
                  OUTLINED_FUNCTION_13_37();
                  OUTLINED_FUNCTION_54_17();
                  AddSampleGroupForGroupType(v142, v143, v144, v145, v146, v147, v148, 0, 0, &destination, &destination >> 32, &destination >> 48, &destination >> 56, v232, v238, v244, v252, v259, v264, v269, v275, v280, v285, v290, v296, v301, v307, *v312, v317);
                  if (v149 || !LOBYTE(destination.value))
                  {
                    if (v149)
                    {
                      return result;
                    }
                  }

                  else
                  {
                    *(a2 + 16) |= 0x5000000uLL;
                  }

                  OUTLINED_FUNCTION_47_15();
                }

                while (!v54);
                LOBYTE(destination.value) = 0;
                do
                {
                  LOBYTE(lhs.value) = 0;
                  OUTLINED_FUNCTION_106_2();
                  FigCFDictionaryGetBooleanIfPresent();
                  OUTLINED_FUNCTION_99_4();
                  OUTLINED_FUNCTION_13_37();
                  OUTLINED_FUNCTION_54_17();
                  AddSampleGroupForGroupType(v150, v151, v152, v153, v154, v155, v156, 0, 0, &destination, &destination >> 32, &destination >> 48, &destination >> 56, v232, v238, v244, v252, v259, v264, v269, v275, v280, v285, v290, v296, v301, v307, *v312, v317);
                  if (v123 || !LOBYTE(destination.value))
                  {
                    if (v123)
                    {
                      goto LABEL_216;
                    }
                  }

                  else
                  {
                    *(a2 + 16) |= 0x5000000uLL;
                  }

                  OUTLINED_FUNCTION_47_15();
                }

                while (!v54);
                goto LABEL_215;
              }
            }
          }
        }
      }

LABEL_215:
      v123 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_101_3();
      OUTLINED_FUNCTION_37_21();
      v178 = OUTLINED_FUNCTION_9_46();
      AddSampleGroupForGroupType(v178, v179, v180, v181, v182, v183, 0, 0, 0, &destination, &destination >> 32, &destination >> 48, &destination >> 56, v232, v238, v244, v252, a14, v264, v269, v275, v280, v285, v290, v296, v301, v307, *v312, a9);
      if (v184 || !LOBYTE(destination.value))
      {
        if (v184)
        {
          return result;
        }
      }

      else
      {
        OUTLINED_FUNCTION_14_41();
      }

      LOBYTE(lhs.value) = 0;
      MovieSampleGroupTypeSpecMakeBasic(1953719148);
      OUTLINED_FUNCTION_37_21();
      v192 = OUTLINED_FUNCTION_13_37();
      OUTLINED_FUNCTION_16_33(v192, v193, v194, v195, v196, v197, v198, v199, 0, &lhs, &lhs >> 32, &lhs >> 48, &lhs >> 56, v234, v240, v246, v253, v260, v265, v271, v276, v281, v286, v292, v297, v303, v308, v313, v318);
      if (v200 || !LOBYTE(lhs.value))
      {
        if (v200)
        {
          return result;
        }
      }

      else
      {
        OUTLINED_FUNCTION_14_41();
      }

      LOBYTE(destination.value) = 0;
      OUTLINED_FUNCTION_100_5();
      OUTLINED_FUNCTION_37_21();
      v201 = OUTLINED_FUNCTION_13_37();
      OUTLINED_FUNCTION_16_33(v201, v202, v203, v204, v205, v206, v207, v208, 0, &destination, &destination >> 32, &destination >> 48, &destination >> 56, v236, v242, v248, v255, v262, v267, v273, v278, v283, v288, v294, v299, v305, v310, v315, v320);
      if (v209 || !LOBYTE(destination.value))
      {
        if (v209)
        {
          return result;
        }
      }

      else
      {
        OUTLINED_FUNCTION_14_41();
      }

      LOBYTE(destination.value) = 0;
      OUTLINED_FUNCTION_99_4();
      OUTLINED_FUNCTION_37_21();
      v210 = OUTLINED_FUNCTION_13_37();
      OUTLINED_FUNCTION_16_33(v210, v211, v212, v213, v214, v215, v216, v217, 0, &destination, &destination >> 32, &destination >> 48, &destination >> 56, v237, v243, v249, v256, v263, v268, v274, v279, v284, v289, v295, v300, v306, v311, v316, v321);
      if (!v123 && LOBYTE(destination.value))
      {
        OUTLINED_FUNCTION_14_41();
      }
    }

LABEL_216:
    v19 = v259;
    v95 = v312[0];
    v22 = v317;
    if (v123)
    {
      return result;
    }

LABEL_217:
    v157 = *(a2 + 224);
    if (v15 == 1)
    {
      v158 = v275[1].value - v275[2].value;
      v159 = v158 + v157;
      v160 = v158 + v157 + v275->value * v252;
      v161 = v275->value * v95;
      v162 = v160 + v275->value;
      LODWORD(v163) = v158;
    }

    else
    {
      if (v15 < 1)
      {
        v161 = 0;
        LODWORD(v158) = 0x80000000;
        LODWORD(v163) = 0x7FFFFFFF;
        v159 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_238:
        if (v163 >= *(a2 + 116))
        {
          LODWORD(v163) = *(a2 + 116);
        }

        if (v158 <= *(a2 + 112))
        {
          v174 = *(a2 + 112);
        }

        else
        {
          v174 = v158;
        }

        *(a2 + 112) = v174;
        *(a2 + 116) = v163;
        *(a2 + 224) = v161 + v157;
        v324 = v157;
        value = v159;
        lhs.value = 0;
        v175 = 12 * *(a2 + 432);
        OUTLINED_FUNCTION_48_15();
        CMBlockBufferCopyDataBytes(*(a2 + 440), v175 - 12, 0xCuLL, &destination);
        LODWORD(destination.value) = bswap32(bswap32(HIDWORD(destination.value)) + v95);
        v176 = *(a2 + 448);
        v177 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v177)
        {
          v89 = v177(v176, 4, v175 - 8, &destination, &lhs);
          if (!v89)
          {
            *(a2 + 288) += v312[0];
          }
        }

        else
        {
          v89 = -12782;
        }

        goto LABEL_247;
      }

      v161 = 0;
      v164 = v15 & 0x7FFFFFFF;
      v165 = v275 + 1;
      LODWORD(v166) = 0x80000000;
      v160 = 0x8000000000000000;
      v159 = 0x7FFFFFFFFFFFFFFFLL;
      LODWORD(v163) = 0x7FFFFFFF;
      v162 = 0x8000000000000000;
      v167 = *(a2 + 224);
      do
      {
        v168 = v165[-1].value;
        v169 = v165->value - v165[1].value;
        v170 = v169 + v167;
        v167 += v168;
        v161 += v168;
        if (v170 < v159)
        {
          v159 = v170;
        }

        v171 = v170 + v168;
        if (v160 < v170)
        {
          v162 = v171;
        }

        if (v160 <= v170)
        {
          v160 = v170;
        }

        if (v169 < v163)
        {
          v163 = v165->value - v165[1].value;
        }

        if (v169 > v166)
        {
          v166 = v165->value - v165[1].value;
        }

        v165 += 3;
        --v164;
      }

      while (v164);
      LODWORD(v158) = v166;
    }

    v172 = *(a2 + 88);
    v173 = *(a2 + 96);
    if (v159 < v172)
    {
      v172 = v159;
    }

    *(a2 + 88) = v172;
    if (v173 < v160)
    {
      *(a2 + 96) = v160;
      *(a2 + 104) = v162;
    }

    goto LABEL_238;
  }

  v19 = a14;
  v20 = v269;
  v15 = v301;
  v95 = v312[0];
  if (v93 != 1936684398)
  {
    goto LABEL_217;
  }

  LOWORD(destination.value) = 0;
  LOBYTE(lhs.value) = 0;
  LOBYTE(rhs.value) = 0;
  HIBYTE(v333[0]) = 0;
  if (a12)
  {
    if (!FigMovieGetAudioRollRecoveryValueFromSampleBufferAttachment(a12, &destination, &lhs, v333 + 1))
    {
      value_low = LOWORD(destination.value);
      goto LABEL_160;
    }

    return result;
  }

  value_low = 0;
LABEL_160:
  LOWORD(destination.value) = __rev16(value_low);
  if (HIBYTE(v333[0]))
  {
    v97 = LOBYTE(lhs.value) == 0;
  }

  else
  {
    v97 = 1;
  }

  v98 = !v97;
  MovieSampleGroupTypeSpecMakeBasic(1919904876);
  OUTLINED_FUNCTION_37_21();
  v99 = OUTLINED_FUNCTION_9_46();
  AddSampleGroupForGroupType(v99, v100, v101, v102, v103, v104, v98, 2, &destination, &rhs, &rhs >> 32, &rhs >> 48, &rhs >> 56, v232, v238, v244, v252, a14, v264, v269, v275, v280, v285, v290, v296, v301, v307, *v312, a9);
  if (LOBYTE(rhs.value))
  {
    *(a2 + 16) |= 0x3000000uLL;
  }

  v106 = a11;
  if (!v105)
  {
    LOBYTE(lhs.value) = 0;
    if (a11)
    {
      if (v312[0] > 0)
      {
        while (1)
        {
          LOWORD(destination.value) = 0;
          LOBYTE(rhs.value) = 0;
          v107 = CFArrayGetValueAtIndex(v106, 0);
          if (FigMovieGetAudioIndependentSampleDecoderRefreshCountFromSampleAttachment(v107, &destination, &rhs))
          {
            return result;
          }

          LOWORD(destination.value) = bswap32(LOWORD(destination.value)) >> 16;
          OUTLINED_FUNCTION_103_3();
          OUTLINED_FUNCTION_57_10();
          OUTLINED_FUNCTION_12_44();
          OUTLINED_FUNCTION_54_17();
          AddSampleGroupForGroupType(v108, v109, v110, v111, v112, v113, v114, 2, &destination, &lhs, &lhs >> 32, &lhs >> 48, &lhs >> 56, v233, v239, v245, v252, v259, v264, v270, v275, v280, v285, v291, v296, v302, v307, *v312, v317);
          if (v115)
          {
            return result;
          }

          if (LOBYTE(lhs.value))
          {
            *(a2 + 16) |= 0x9000000uLL;
          }

          OUTLINED_FUNCTION_47_15();
          if (v54)
          {
            LOBYTE(lhs.value) = 0;
            do
            {
              destination.value = 0;
              *&destination.timescale = 0;
              SeamUUIDBytesFromSampleAttachmentArray = FigMovieGetSeamUUIDBytesFromSampleAttachmentArray(v106, 0, &destination);
              OUTLINED_FUNCTION_102_3();
              OUTLINED_FUNCTION_37_21();
              OUTLINED_FUNCTION_12_44();
              OUTLINED_FUNCTION_54_17();
              AddSampleGroupForGroupType(v117, v118, v119, v120, v121, v122, SeamUUIDBytesFromSampleAttachmentArray, 16, &destination, &lhs, &lhs >> 32, &lhs >> 48, &lhs >> 56, v233, v239, v245, v252, v259, v264, v270, v275, v280, v285, v291, v296, v302, v307, *v312, v317);
              if (v123 || !LOBYTE(lhs.value))
              {
                if (v123)
                {
                  goto LABEL_185;
                }
              }

              else
              {
                *(a2 + 16) |= 0x11000000uLL;
              }

              OUTLINED_FUNCTION_47_15();
            }

            while (!v54);
            break;
          }
        }
      }

      v123 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_103_3();
      OUTLINED_FUNCTION_37_21();
      v185 = OUTLINED_FUNCTION_9_46();
      AddSampleGroupForGroupType(v185, v186, v187, v188, v189, v190, 0, 0, 0, &lhs, &lhs >> 32, &lhs >> 48, &lhs >> 56, v233, v239, v245, v252, v259, v264, v270, v275, v280, v285, v291, v296, v302, v307, *v312, v317);
      if (v191 || !LOBYTE(lhs.value))
      {
        if (v191)
        {
          return result;
        }
      }

      else
      {
        OUTLINED_FUNCTION_30_19(*(a2 + 16));
      }

      LOBYTE(lhs.value) = 0;
      OUTLINED_FUNCTION_102_3();
      OUTLINED_FUNCTION_37_21();
      v218 = OUTLINED_FUNCTION_9_46();
      AddSampleGroupForGroupType(v218, v219, v220, v221, v222, v223, 0, 0, 0, &lhs, &lhs >> 32, &lhs >> 48, &lhs >> 56, v235, v241, v247, v254, v261, v266, v272, v277, v282, v287, v293, v298, v304, v309, v314, v319);
      if (!v123 && LOBYTE(lhs.value))
      {
        OUTLINED_FUNCTION_30_19(*(a2 + 16));
      }
    }

LABEL_185:
    v15 = v302;
    goto LABEL_216;
  }

  return result;
}

uint64_t MovieInformationPerformPostParsingForHeaderWriting(uint64_t a1)
{
  LODWORD(value) = 0;
  v2 = *(a1 + 304);
  if (v2 < 2)
  {
    if (v2 == 1)
    {
      v20 = **(a1 + 320);
      MovieTrackGetBasicInfo(v20, 0, &value);
      v21 = *(a1 + 252);
      v22 = value;
      if (value >= v21)
      {
        v21 = value + 1;
        *(a1 + 252) = value + 1;
      }

      if (!v22)
      {
        *(v20 + 144) = v21;
        *(a1 + 252) = v21 + 1;
      }
    }
  }

  else
  {
    v3 = *(a1 + 252);
    OUTLINED_FUNCTION_73_7();
    v5 = malloc_type_calloc(v2, 8uLL, v4);
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      for (i = 0; i != v2; ++i)
      {
        if (*(a1 + 304) <= i)
        {
          v9 = 0;
        }

        else
        {
          v9 = *(*(a1 + 320) + v7);
        }

        MovieTrackGetBasicInfo(v9, 0, &value);
        v10 = value;
        if (value >= v3)
        {
          v3 = value + 1;
          *(a1 + 252) = value + 1;
        }

        *&v6[v7] = v10;
        v7 += 8;
      }

      v11 = 0;
      v12 = v6 - 8;
      v13 = 1;
      do
      {
        v14 = &v6[8 * v11];
        if (*v14)
        {
          v15 = v13;
          v16 = v12;
          while (--v15 >= 1)
          {
            v17 = *v16;
            v16 -= 8;
            if (v17 == *v14)
            {
              goto LABEL_15;
            }
          }
        }

        else
        {
LABEL_15:
          v14[4] = 1;
          *v14 = v3++;
          *(a1 + 252) = v3;
        }

        ++v11;
        v12 += 8;
        ++v13;
      }

      while (v11 != v2);
      v18 = 0;
      v19 = v6;
      do
      {
        if (v19[4])
        {
          *(*(*(a1 + 320) + 8 * v18) + 144) = *v19;
        }

        ++v18;
        v19 += 8;
      }

      while (v2 != v18);
      free(v6);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_2();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v88, cf, v92);
    }
  }

  v23 = *MEMORY[0x1E695E480];
  value = 0;
  Mutable = CFArrayCreateMutable(v23, 4, MEMORY[0x1E695E9C0]);
  v25 = OUTLINED_FUNCTION_80_6();
  MovieInformationCreateQuickTimeMetadataReaderFromByteStream(v25, v26);
  if (value)
  {
    CFArrayAppendValue(Mutable, value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v27 = OUTLINED_FUNCTION_80_6();
  MovieInformationCreateQuickTimeUserDataReaderFromByteStream(v27, v28);
  if (value)
  {
    CFArrayAppendValue(Mutable, value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v29 = OUTLINED_FUNCTION_80_6();
  MovieInformationCreateISOUserDataReaderFromByteStream(v29, v30);
  if (value)
  {
    CFArrayAppendValue(Mutable, value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v31 = OUTLINED_FUNCTION_80_6();
  MovieInformationCreateiTunesMetadataReaderFromByteStream(v31, v32);
  if (value)
  {
    CFArrayAppendValue(Mutable, value);
    if (value)
    {
      CFRelease(value);
    }
  }

  createMetadataItemsPerFormatDictionary();
  v34 = v33;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (!v34)
  {
    URLBytes = *(a1 + 304);
    if (URLBytes >= 1)
    {
      v35 = 0;
      v93 = *MEMORY[0x1E695FFA0];
      do
      {
        if (*(a1 + 304) <= v35)
        {
          v36 = 0;
        }

        else
        {
          v36 = *(*(a1 + 320) + 8 * v35);
        }

        if (*(v36 + 288) >= 1)
        {
          value = 0;
          v37 = *(v36 + 64);
          if (v37)
          {
            Count = CFArrayGetCount(v37);
          }

          else
          {
            Count = 0;
          }

          CMBaseObject = CMByteStreamGetCMBaseObject();
          v43 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v43)
          {
            v43(CMBaseObject, v93, 0, &value);
          }

          if (Count < 1)
          {
LABEL_60:
            v34 = 0;
          }

          else
          {
            v44 = 0;
            while (1)
            {
              HIBYTE(v97) = 0;
              MovieTrackGetDataSourceAtIndex(a1, v36, v44, &v97 + 7, &v98, v40, v41, v42, v88, cf, v93, URLBytes, v97, v98, value, v100, v101, v102, v103, v104, v105, v106, v107, v108);
              if (v45)
              {
                break;
              }

              if (HIBYTE(v97))
              {
                if (!value)
                {
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_3_2();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v88, cf, v93);
                  break;
                }

                v45 = MovieTrackSetDataSourceAtIndex(a1, v36, v44, 1, value);
                if (v45)
                {
                  break;
                }
              }

              if (Count == ++v44)
              {
                goto LABEL_60;
              }
            }

            v34 = v45;
          }

          if (value)
          {
            CFRelease(value);
          }

          if (v34)
          {
            return v34;
          }

          v46 = UpgradeTo32BitSampleSizes(v36);
          if (v46)
          {
            return v46;
          }

          if ((*(v36 + 584))(v36) >= 1)
          {
            v47 = 0;
            do
            {
              v48 = (*(v36 + 592))(v36, v47);
              if (v48 <= 15)
              {
                v49 = 4;
              }

              else
              {
                v49 = 8;
              }

              if (v48 > 255)
              {
                v49 = 16;
              }

              if (v48 >= 0x10000)
              {
                v49 = 32;
              }

              if (*(v36 + 296) > v49)
              {
                v49 = *(v36 + 296);
              }

              *(v36 + 296) = v49;
              v47 = (v47 + 1);
            }

            while (v47 < (*(v36 + 584))(v36));
          }

          if ((*(v36 + 624))(v36) >= 1)
          {
            v50 = 0;
            do
            {
              v51 = (*(v36 + 616))(v36, v50);
              v52 = *(v36 + 304);
              if (v52 <= v51)
              {
                v52 = v51;
              }

              *(v36 + 304) = v52;
              v50 = (v50 + 1);
            }

            while (v50 < (*(v36 + 624))(v36));
          }

          if (*(v36 + 440))
          {
            v53 = v35;
            v54 = v23;
            v55 = (*(v36 + 624))(v36);
            v56 = *(v36 + 432);
            LODWORD(v100) = 0;
            value = 0;
            v64 = OUTLINED_FUNCTION_91_5(v55, v57, v58, v59, v60, v61, v62, v63, v88, cf, v93, URLBytes, v97, v98);
            v65 = HIDWORD(value);
            LODWORD(v100) = 0;
            value = 0;
            OUTLINED_FUNCTION_91_5(v64, v66, v67, v68, v69, v70, v71, v72, v89, cfa, v94, URLBytesa, v97, v98);
            v73 = v100;
            LODWORD(v100) = 0;
            v98 = 0;
            value = 0;
            MakeTableReadyToWrite((v36 + 440), (v36 + 448));
            value = __PAIR64__(v65, bswap32(v55));
            LODWORD(v100) = v73;
            v74 = *(v36 + 448);
            v75 = *(*(CMBaseObjectGetVTable() + 16) + 16);
            if (!v75)
            {
              return 4294954514;
            }

            v46 = v75(v74, 12, 12 * v56, &value, &v98);
            if (v46)
            {
              return v46;
            }

            *(v36 + 432) = v56 + 1;
            v23 = v54;
            v35 = v53;
          }
        }

        value = 0;
        v76 = CFArrayCreateMutable(v23, 3, MEMORY[0x1E695E9C0]);
        v77 = OUTLINED_FUNCTION_58_7();
        MovieTrackCreateQuickTimeMetadataReaderFromByteStream(v77, v78, v79);
        if (value)
        {
          CFArrayAppendValue(v76, value);
          if (value)
          {
            CFRelease(value);
            value = 0;
          }
        }

        v80 = OUTLINED_FUNCTION_58_7();
        MovieTrackCreateQuickTimeUserDataReaderFromByteStream(v80, v81, v82);
        if (value)
        {
          CFArrayAppendValue(v76, value);
          if (value)
          {
            CFRelease(value);
            value = 0;
          }
        }

        v83 = OUTLINED_FUNCTION_58_7();
        MovieTrackCreateISOUserDataReaderFromByteStream(v83, v84, v85);
        if (value)
        {
          CFArrayAppendValue(v76, value);
          if (value)
          {
            CFRelease(value);
          }
        }

        createMetadataItemsPerFormatDictionary();
        v34 = v86;
        if (v76)
        {
          CFRelease(v76);
        }

        if (v34)
        {
          return v34;
        }

        ++v35;
      }

      while (v35 != URLBytes);
    }

    return 0;
  }

  return v34;
}

void createMetadataItemsPerFormatDictionary()
{
  OUTLINED_FUNCTION_216_0();
  v3 = v2;
  cf = 0;
  v17 = 0;
  Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v3 && (Count = CFArrayGetCount(v3), Count >= 1))
  {
    v7 = Count;
    v8 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v8);
      if (FigMetadataCopyAllMetadataItems(v1, ValueAtIndex, &v17))
      {
        break;
      }

      if (!v17)
      {
        OUTLINED_FUNCTION_613();
        v17 = CFArrayCreate(v10, v11, v12, MEMORY[0x1E695E9C0]);
      }

      FigMetadataReaderGetFigBaseObject();
      v14 = v13;
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v15 || v15(v14, @"format", v1, &cf))
      {
        break;
      }

      CFDictionaryAddValue(Mutable, cf, v17);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v17)
      {
        CFRelease(v17);
        v17 = 0;
      }

      if (v7 == ++v8)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    *v0 = Mutable;
    Mutable = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  OUTLINED_FUNCTION_90_4();
}

void MovieTrackInsertEmptySegment()
{
  OUTLINED_FUNCTION_36_20();
  v15 = *v2;
  *v16 = v2[1];
  *&v16[16] = v2[2];
  *&v21.value = *MEMORY[0x1E6960CC0];
  v3 = *(MEMORY[0x1E6960CC0] + 16);
  v21.epoch = v3;
  *&time1.start.value = *(v2 + 24);
  time1.start.epoch = *(v2 + 5);
  v14 = *&v21.value;
  *&time2.start.value = *&v21.value;
  time2.start.epoch = v3;
  if (CMTimeCompare(&time1.start, &time2.start) >= 1)
  {
    *&time1.start.value = v15;
    time1.start.epoch = *v16;
    *&time2.start.value = v14;
    time2.start.epoch = v3;
    if ((CMTimeCompare(&time1.start, &time2.start) & 0x80000000) == 0)
    {
      v4 = *(v0 + 816);
      if (v4 >= 1)
      {
        v5 = OUTLINED_FUNCTION_28_22(v4);
        *&time1.start.epoch = v6;
        *&time1.duration.timescale = v7;
        *&time1.start.value = v5;
        CMTimeRangeGetEnd(&v21, &time1);
        *&time1.start.value = v15;
        time1.start.epoch = *v16;
        time2.start = v21;
        if ((CMTimeCompare(&time1.start, &time2.start) & 0x80000000) == 0 || (*&time2.start.value = v15, time2.start.epoch = *v16, duration = *&v16[8], CMTimeRangeMake(&time1, &time2.start, &duration), duration = **&MEMORY[0x1E6960C70], v17 = *&v16[8], CMTimeRangeMake(&time2, &duration, &v17), InsertMediaSegmentIntoTrack(v0 + 808, &time1, &time2), !v8))
        {
          MovieTrackInvalidateEnhancedGaplessInfo(v0);
          *&time1.start.value = *v1;
          time1.start.epoch = *(v1 + 16);
          v9 = OUTLINED_FUNCTION_177();
          NoteEditSegmentModification(v9, v10, v11, 0);
          v12 = OUTLINED_FUNCTION_177();
          UpdateDurationsForEditSegmentChange(v12, v13);
        }
      }
    }
  }
}

void MovieTrackInsertMediaSegment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a4 + 12) & 0x1D) == 1)
  {
    v19 = v5;
    v20 = v4;
    v21 = v6;
    v22 = v7;
    OUTLINED_FUNCTION_36_20();
    time1 = *v9;
    OUTLINED_FUNCTION_107(MEMORY[0x1E6960CC0]);
    if ((CMTimeCompare(&time1, v17) & 0x80000000) == 0)
    {
      OUTLINED_FUNCTION_74_10();
      v10 = *(a4 + 16);
      v17[0] = *a4;
      v17[1] = v10;
      v17[2] = *(a4 + 32);
      InsertMediaSegmentIntoTrack(v4 + 808, &time1, v17);
      if (!v11)
      {
        MovieTrackInvalidateEnhancedGaplessInfo(v4);
        time1 = *v5;
        v12 = OUTLINED_FUNCTION_177();
        NoteEditSegmentModification(v12, v13, v14, 0);
        v15 = OUTLINED_FUNCTION_177();
        UpdateDurationsForEditSegmentChange(v15, v16);
      }
    }
  }
}

void InsertMediaSegmentIntoTrack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_369();
  v103 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E6960CC0];
  if ((*(v6 + 12) & 0x1D) != 1 || (*&time1[0].start.value = *a3, time1[0].start.epoch = *(a3 + 16), *time2 = *MEMORY[0x1E6960CC0], *&time2[16] = *(MEMORY[0x1E6960CC0] + 16), (CMTimeCompare(&time1[0].start, time2) & 0x80000000) == 0))
  {
    *&time1[0].start.value = *(a3 + 24);
    time1[0].start.epoch = *(a3 + 40);
    v79 = *v7;
    *time2 = *v7;
    v8 = *(v7 + 2);
    *&time2[16] = v8;
    End = CMTimeCompare(&time1[0].start, time2);
    if ((End & 0x80000000) == 0)
    {
      v17 = *(v4 + 3);
      if (v17)
      {
        *&time1[0].start.value = *v4;
        time1[0].start.epoch = v4[2];
        *time2 = v79;
        *&time2[16] = v8;
        End = CMTimeCompare(&time1[0].start, time2);
        if ((End & 0x80000000) != 0)
        {
          return;
        }

        v17 = *(v4 + 3);
      }

      if ((v17 & 1) == 0)
      {
        *time2 = v79;
        *&time2[16] = v8;
        v18 = *(v3 + 8);
        if (v18 >= 1)
        {
          v19 = OUTLINED_FUNCTION_28_22(v18);
          *&time1[0].start.epoch = v20;
          *&time1[0].duration.timescale = v21;
          *&time1[0].start.value = v19;
          End = CMTimeRangeGetEnd(time2, time1);
        }

        *v4 = *time2;
        v4[2] = *&time2[16];
      }

      *&v100[12] = 0u;
      v22 = *(a3 + 16);
      *time2 = *a3;
      *&time2[16] = v22;
      *v100 = 0u;
      *v100 = *(a3 + 32);
      *&v100[16] = *v4;
      v23 = *(v4 + 3);
      *&v100[24] = *(v4 + 2);
      v24 = v4[2];
      v85 = v4[5];
      v83 = *(v4 + 3);
      v25 = v79;
      *&v98.value = v79;
      v98.epoch = v8;
      v26 = *(v3 + 8);
      v101 = *v4;
      v102 = *(v4 + 2);
      if (v26 >= 1)
      {
        OUTLINED_FUNCTION_45_15();
        v29 = v27 + v26 * v28;
        v30 = *(v29 - 48);
        v31 = *(v29 - 16);
        *&time1[0].start.epoch = *(v29 - 32);
        *&time1[0].duration.timescale = v31;
        *&time1[0].start.value = v30;
        End = CMTimeRangeGetEnd(&v98, time1);
      }

      if ((v23 & 1) != 0 && (End = OUTLINED_FUNCTION_33_19(End, v10, v11, v12, v13, v14, v15, v16, v79, *(&v79 + 1), v83.n128_i64[0], v83.n128_i64[1], v85, v86, *&lhs.start.value, lhs.start.epoch, lhs.duration.value, *&lhs.duration.timescale, lhs.duration.epoch, v89.value, *&v89.timescale, v89.epoch, v90, rhs.value, *&rhs.timescale, rhs.epoch, v92, v93.value, *&v93.timescale, v93.epoch, v94, v95.value, *&v95.timescale, v95.epoch, v96, time1[0].start.value, time1[0].start.timescale, time1[0].start.flags, time1[0].start.epoch), End))
      {
        if (OUTLINED_FUNCTION_33_19(End, v32, v11, v12, v13, v14, v15, v16, v79, *(&v79 + 1), v83.n128_i64[0], v83.n128_i64[1], v85, v87, *&lhs.start.value, lhs.start.epoch, lhs.duration.value, *&lhs.duration.timescale, lhs.duration.epoch, v89.value, *&v89.timescale, v89.epoch, v90, rhs.value, *&rhs.timescale, rhs.epoch, v92, v93.value, *&v93.timescale, v93.epoch, v94, v95.value, *&v95.timescale, v95.epoch, v96, time1[0].start.value, time1[0].start.timescale, time1[0].start.flags, time1[0].start.epoch) >= 1)
        {
          InsertUninitializedEditsIntoTrack(v3, *(v3 + 8), 2);
          if (!v69)
          {
            v70 = 3 * v26;
            v71 = *v3 + 96 * v26;
            v72 = *&v98.value;
            *(v71 + 64) = v98.epoch;
            *(v71 + 48) = v72;
            v73 = *v3 + 96 * v26;
            OUTLINED_FUNCTION_67_12();
            v95 = v98;
            CMTimeSubtract(&time1[0].start, &lhs.start, &v95);
            v74 = *&time1[0].start.value;
            *(v73 + 88) = time1[0].start.epoch;
            *(v73 + 72) = v74;
            v75 = *v3 + 32 * v70;
            v76 = *MEMORY[0x1E6960C70];
            *(v75 + 16) = *(MEMORY[0x1E6960C70] + 16);
            *v75 = v76;
            v77 = *v3 + 32 * v70;
            *(v77 + 24) = v80;
            *(v77 + 40) = v8;
            v78 = *v3 + 32 * v70;
            *(v78 + 96) = *time2;
            *(v78 + 112) = *&time2[16];
            *(v78 + 128) = *v100;
            *(v78 + 140) = *&v100[12];
            *(v78 + 156) = v23;
            *(v78 + 160) = v24;
            *(v78 + 168) = *v84;
            *(v78 + 184) = *&v84[16];
          }
        }

        else
        {
          memcpy(time1, MEMORY[0x1E6960C78], sizeof(time1));
          *&v95.value = v80;
          v95.epoch = v8;
          *&v93.value = v80;
          v93.epoch = v8;
          *&lhs.start.value = v80;
          lhs.start.epoch = v8;
          rhs = *v84;
          CMTimeAdd(&v93, &lhs.start, &rhs);
          OUTLINED_FUNCTION_67_12();
          EditIndexStartingAtTimeInTrackSplitEditIfNecessary = FindEditIndexStartingAtTimeInTrackSplitEditIfNecessary(v3, &lhs.start);
          if ((EditIndexStartingAtTimeInTrackSplitEditIfNecessary & 0x80000000) == 0)
          {
            v34 = EditIndexStartingAtTimeInTrackSplitEditIfNecessary;
            if (EditIndexStartingAtTimeInTrackSplitEditIfNecessary < *(v3 + 8))
            {
              v35 = EditIndexStartingAtTimeInTrackSplitEditIfNecessary - 1;
              if (EditIndexStartingAtTimeInTrackSplitEditIfNecessary)
              {
                v36 = v35;
              }

              else
              {
                v36 = 0;
              }

              v37 = EditIndexStartingAtTimeInTrackSplitEditIfNecessary;
              v38 = *v3 + 96 * EditIndexStartingAtTimeInTrackSplitEditIfNecessary;
              v39 = *(v38 + 48);
              rhs.epoch = *(v38 + 64);
              *&rhs.value = v39;
              v89 = v93;
              v40 = CMTimeAdd(&lhs.start, &rhs, &v89);
              v49 = *&lhs.start.value;
              *(v38 + 64) = lhs.start.epoch;
              *(v38 + 48) = v49;
              if (v34 && (OUTLINED_FUNCTION_7_64(v40, v41, v42, v43, v44, v45, v46, v47, v49, v80, *(&v80 + 1), v48), OUTLINED_FUNCTION_59_12(), v40 = CombineEditSegmentsIfPossible(v50, time1, v50), v40))
              {
                OUTLINED_FUNCTION_45_15();
                if (!CombineEditSegmentsIfPossible(v65 + v35 * v66, v65 + v37 * v66, v65 + v35 * v66))
                {
                  --v34;
                  goto LABEL_27;
                }

                if (!DeleteEditsFromTrack(v3, v34--, 1))
                {
                  goto LABEL_27;
                }
              }

              else
              {
                OUTLINED_FUNCTION_7_64(v40, v41, v42, v43, v44, v45, v46, v47, v49, v80, *(&v80 + 1), v48);
                OUTLINED_FUNCTION_45_15();
                OUTLINED_FUNCTION_59_12();
                if (CombineEditSegmentsIfPossible(time1, v51, v51))
                {
LABEL_26:
                  v35 = v34;
LABEL_27:
                  OUTLINED_FUNCTION_45_15();
                  v57 = (v55 + v35 * v56);
                  v58 = v57[3];
                  v59 = v57[5];
                  *&lhs.start.epoch = v57[4];
                  *&lhs.duration.timescale = v59;
                  *&lhs.start.value = v58;
                  CMTimeRangeGetEnd(&v95, &lhs);
                  lhs.start = v95;
                  UpdateTrackStartTimes(v3, v34 + 1, &lhs.start.value);
                  DeleteEditsWithZeroDuration(v3, v36);
                  return;
                }

                InsertUninitializedEditsIntoTrack(v3, v34, 1);
                if (!v52)
                {
                  OUTLINED_FUNCTION_45_15();
                  OUTLINED_FUNCTION_22_25(v53 + v37 * v54, v81, v82, *v84, *&v84[16]);
                  goto LABEL_26;
                }
              }
            }
          }
        }
      }

      else
      {
        v60 = *(v3 + 8);
        if (v60 >= 1)
        {
          OUTLINED_FUNCTION_7_64(End, v60, v11, v12, v13, v14, v15, v16, v25, v79, *(&v79 + 1), v22);
          OUTLINED_FUNCTION_59_12();
          OUTLINED_FUNCTION_45_15();
          v64 = v62 + v61 * v63 - 96;
          if (CombineEditSegmentsIfPossible(v64, time1, v64))
          {
            return;
          }

          LODWORD(v60) = *(v3 + 8);
        }

        InsertUninitializedEditsIntoTrack(v3, v60, 1);
        if (!v67)
        {
          OUTLINED_FUNCTION_22_25(*v3 + 96 * v26, v79, *(&v79 + 1), v83, v85);
        }
      }
    }
  }
}

void MovieTrackFragmentInsertMediaSegment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 12) & 0x1D) == 1)
  {
    v12 = v3;
    v13 = v4;
    v14 = v5;
    OUTLINED_FUNCTION_216_0();
    v7 = v6;
    time1 = *v8;
    OUTLINED_FUNCTION_107(MEMORY[0x1E6960CC0]);
    if ((CMTimeCompare(&time1, v10) & 0x80000000) == 0)
    {
      OUTLINED_FUNCTION_74_10();
      v9 = v3[1];
      v10[0] = *v3;
      v10[1] = v9;
      v10[2] = v3[2];
      InsertMediaSegmentIntoTrack(v7 + 784, &time1, v10);
    }
  }
}

uint64_t MovieTrackDeleteSegment(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v14 = *a3;
  v15 = *(a3 + 2);
  v12 = *(a3 + 24);
  v13 = *(a3 + 5);
  v5 = DeleteTrackSegment(a2 + 808, &v14, &v12);
  if (!v5)
  {
    MovieTrackInvalidateEnhancedGaplessInfo(a2);
    v14 = *a3;
    v15 = *(a3 + 2);
    v6 = OUTLINED_FUNCTION_177();
    NoteEditSegmentModification(v6, v7, v8, 0);
    v9 = OUTLINED_FUNCTION_177();
    UpdateDurationsForEditSegmentChange(v9, v10);
  }

  return v5;
}

uint64_t DeleteTrackSegment(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_369();
  *&v102.value = *MEMORY[0x1E6960CC0];
  v5 = *(MEMORY[0x1E6960CC0] + 16);
  v102.epoch = v5;
  v100 = 0uLL;
  v101 = 0;
  *&range.start.value = *v6;
  range.start.epoch = *(v6 + 16);
  v99 = *v7;
  v14 = OUTLINED_FUNCTION_53_15(v8, v6, v7, v9, v10, v11, v12, v13, v102.value, *&v102.timescale, range.start.value);
  *&v103 = CMTimeAdd(v16, v14, v15);
  *&v17 = OUTLINED_FUNCTION_23_33(v103, a3[2], v87, *a3, a3[1], range.start.epoch, range.duration.value, *&range.duration.timescale, range.duration.epoch, *&v99.value, v99.epoch);
  if (!v17)
  {
    return 0;
  }

  if (OUTLINED_FUNCTION_23_33(v17, a3[2], v88, *a3, a3[1], range.start.epoch, range.duration.value, *&range.duration.timescale, range.duration.epoch, *&v99.value, v99.epoch) < 1)
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_15_38();
  *&v99.value = v89;
  v99.epoch = v5;
  v26 = OUTLINED_FUNCTION_53_15(v18, v19, v20, v21, v22, v23, v24, v25, v89, *(&v89 + 1), range.start.value);
  if (CMTimeCompare(v26, v27) < 0)
  {
    return 4294954516;
  }

  v28 = *(v3 + 8);
  if (v28 < 1)
  {
    return 0;
  }

  v29 = OUTLINED_FUNCTION_28_22(v28);
  *&range.start.epoch = v30;
  *&range.duration.timescale = v31;
  *&range.start.value = v29;
  CMTimeRangeGetEnd(&v102, &range);
  OUTLINED_FUNCTION_15_38();
  v99 = v102;
  v40 = OUTLINED_FUNCTION_53_15(v32, v33, v34, v35, v36, v37, v38, v39, v90, v94, range.start.value);
  if ((CMTimeCompare(v40, v41) & 0x80000000) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_15_38();
  EditIndexStartingAtTimeInTrackSplitEditIfNecessary = FindEditIndexStartingAtTimeInTrackSplitEditIfNecessary(v3, &range.start);
  if ((EditIndexStartingAtTimeInTrackSplitEditIfNecessary & 0x80000000) != 0)
  {
    return 4294954516;
  }

  v50 = EditIndexStartingAtTimeInTrackSplitEditIfNecessary;
  if (EditIndexStartingAtTimeInTrackSplitEditIfNecessary >= *(v3 + 8))
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_84_5(EditIndexStartingAtTimeInTrackSplitEditIfNecessary, v43, v44, v45, v46, v47, v48, v49, v91, v95, range.start.value, *&range.start.timescale, range.start.epoch, range.duration.value, *&range.duration.timescale, range.duration.epoch, v99.value, *&v99.timescale, v99.epoch, v100);
  v99 = v102;
  v59 = OUTLINED_FUNCTION_53_15(v51, v52, v53, v54, v55, v56, v57, v58, v92, v96, range.start.value);
  v61 = CMTimeCompare(v59, v60);
  if ((v61 & 0x80000000) != 0)
  {
    OUTLINED_FUNCTION_84_5(v61, v62, v63, v64, v65, v66, v67, v68, v93, v97, range.start.value, *&range.start.timescale, range.start.epoch, range.duration.value, *&range.duration.timescale, range.duration.epoch, v99.value, *&v99.timescale, v99.epoch, v100);
    v69 = FindEditIndexStartingAtTimeInTrackSplitEditIfNecessary(v3, &range.start);
    if (v69 < 0 || v69 >= *(v3 + 8))
    {
      return 4294954516;
    }
  }

  v70 = OUTLINED_FUNCTION_624();
  v73 = DeleteEditsFromTrack(v70, v71, v72);
  if (v73)
  {
    return v73;
  }

  OUTLINED_FUNCTION_15_38();
  v74 = OUTLINED_FUNCTION_624();
  UpdateTrackStartTimes(v74, v75, v76);
  if (v50)
  {
    v77 = *(v3 + 8);
    if (v50 >= v77)
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_45_15();
    if (CombineEditSegmentsIfPossible(v78 + v50 * v79 - 96, v78 + v50 * v79, v78 + v50 * v79 - 96))
    {
      v85 = OUTLINED_FUNCTION_624();
      v73 = DeleteEditsFromTrack(v85, v86, 1);
      if (v73)
      {
        return v73;
      }
    }
  }

  v77 = *(v3 + 8);
LABEL_16:
  v80 = (v77 - 1);
  if (v77 < 1 || (*(*v3 + 96 * v80 + 12) & 0x1D) == 1)
  {
    v81 = 0;
  }

  else
  {
    v81 = DeleteEditsFromTrack(v3, v80, 1);
    v77 = *(v3 + 8);
  }

  if (v50 >= v77)
  {
    v82 = v77 - 1;
  }

  else
  {
    v82 = v50;
  }

  if (v50)
  {
    v83 = v50 - 1;
  }

  else
  {
    v83 = 0;
  }

  if (v82 >= v83)
  {
    DeleteEditsWithZeroDuration(v3, v83);
  }

  return v81;
}

uint64_t MovieTrackFragmentDeleteSegment(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  v6 = *(a2 + 2);
  v3 = *(a2 + 24);
  v4 = *(a2 + 5);
  return DeleteTrackSegment(a1 + 784, &v5, &v3);
}

uint64_t FragmentCursorEnsureAccessorAndCopySampleGroupDescription()
{
  OUTLINED_FUNCTION_279_0();
  v4 = *v1;
  if (*v1)
  {
    v5 = 0;
  }

  else
  {
    v6 = *(*(v0 + 200) + 104);
    if (!v6)
    {
      return v10;
    }

    v7 = v1;
    v8 = MovieSampleGroupCollectionLookupAndRetainSampleGroup(v6, v2, v3);
    if (!v8)
    {
      return v10;
    }

    v5 = v8;
    if (MovieSampleGroupAccessorCreate(v8, v7))
    {
LABEL_8:
      CFRelease(v5);
      return v10;
    }

    v4 = *v7;
  }

  MovieSampleGroupAccessorCopyDescriptionForSample(v4, (*(v0 + 80) - *(*(v0 + 208) + 16) + 1), &v10);
  if (v5)
  {
    goto LABEL_8;
  }

  return v10;
}

void SampleGroupDeepCopyApplier(uint64_t a1, CFTypeRef cf)
{
  cfa = 0;
  v4 = CFGetAllocator(cf);
  if (!MovieSampleGroupCreateDeepCopy(v4, a1, &cfa))
  {
    MovieSampleGroupCollectionAddSampleGroup(cf, cfa);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }
}

void UpgradeTo64BitChunkOffsets(uint64_t a1)
{
  v20 = 0;
  blockBufferOut = 0;
  v2 = *(a1 + 360);
  if (v2)
  {
    OUTLINED_FUNCTION_156_0();
    v9 = CMBlockBufferCreateWithMemoryBlock(v3, v4, v5, v6, v7, v8, v5, 1u, &blockBufferOut);
    v10 = blockBufferOut;
    if (v9)
    {
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_496();
    CMBlockBufferGetDataPointer(v11, v12, v13, v14, v15);
    if (v2 >= 1)
    {
      v16 = 0;
      do
      {
        *v20++ = bswap64((*(a1 + 616))(a1, v16));
        v16 = (v16 + 1);
      }

      while (v2 != v16);
    }

    *(a1 + 384) = v2;
    v17 = blockBufferOut;
    if (blockBufferOut)
    {
      v17 = CFRetain(blockBufferOut);
    }

    *(a1 + 392) = v17;
  }

  *(a1 + 360) = 0;
  v18 = *(a1 + 368);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 368) = 0;
  }

  v19 = *(a1 + 376);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 376) = 0;
  }

  *(a1 + 616) = GetChunkOffset_co64;
  *(a1 + 624) = GetChunkCount_co64;
  *(a1 + 632) = GetChunkTable_co64;
  v10 = blockBufferOut;
LABEL_14:
  if (v10)
  {
    CFRelease(v10);
  }
}

void AddFragmentRunSampleSizes()
{
  OUTLINED_FUNCTION_471();
  if ((*(v1 + 52) & 2) != 0)
  {
    OUTLINED_FUNCTION_76_10();
    if (v2 == v3)
    {
      v6 = 0;
      v7 = v0 + 4 * kPerSampleInfo_SizeIndex[v5] + 56;
      v8 = 4 * kPerSampleInfo_SizeInInt32s[v5];
      do
      {
        if (CMByteStreamAppend())
        {
          break;
        }

        ++v6;
        v7 += v8;
      }

      while (v6 < *(v0 + 40));
    }
  }

  else
  {
    OUTLINED_FUNCTION_55_16();
    if (v2 == v3)
    {
      v4 = 0;
      do
      {
        if (CMByteStreamAppend())
        {
          break;
        }

        ++v4;
      }

      while (v4 < *(v0 + 40));
    }
  }

  OUTLINED_FUNCTION_652();
}

void AddSampleGroupForGroupType(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, _DWORD *cf, int32x2_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, const void *a28, _BYTE *a29)
{
  OUTLINED_FUNCTION_296_0();
  a26 = v29;
  a27 = v32;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v30;
  v45 = v44;
  cf = 0;
  a13 = 0;
  v46 = *(v44 + 72);
  v47 = v31;
  if (v46)
  {
    v46 = MovieSampleGroupCollectionLookupAndRetainSampleGroup(v46, v30, v31);
  }

  a15 = v46;
  if (v36)
  {
    v48 = v46 == 0;
  }

  else
  {
    v48 = 0;
  }

  v49 = v48;
  if (v48)
  {
    v50 = CFGetAllocator(v45);
    v51 = *(v45 + 288);
    v52 = *(v45 + 728);
    if (v52)
    {
      v51 += *(v52 + 8);
    }

    if (v42)
    {
      if (MovieSampleGroupCreateCompact(v50, v43, v47, &a15))
      {
        goto LABEL_33;
      }
    }

    else if (MovieSampleGroupCreate(v50, v43, v47, &a15))
    {
      goto LABEL_33;
    }

    if (MovieTrackAddAndRetainSampleGroupDescriptionArray(v45, v43, &cf))
    {
      goto LABEL_33;
    }

    if (MovieSampleGroupSetDescriptionArray(a15, cf))
    {
      goto LABEL_33;
    }

    if (MovieTrackAddSampleGroup(v45, a15))
    {
      goto LABEL_33;
    }

    v53 = (v51 + v38);
    if (v53)
    {
      MovieSampleGroupAppendSamplesWithDescriptionIndex(a15, v53, 0);
      if (v54)
      {
        goto LABEL_33;
      }
    }

    v46 = a15;
  }

  if (!v46)
  {
    v57 = 0;
LABEL_32:
    *a29 = (v49 | v57) & 1;
    goto LABEL_33;
  }

  a9 = 0;
  if (v36)
  {
    MovieSampleGroupAddDescription(v46, v34, a28, &a9, &a13);
    if (v55)
    {
      goto LABEL_33;
    }

    v46 = a15;
    v56 = a9;
  }

  else
  {
    v56 = 0;
  }

  MovieSampleGroupAppendSamplesWithDescriptionIndex(v46, v40, v56);
  if (!v58)
  {
    v57 = a13 != 0;
    goto LABEL_32;
  }

LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

  if (a15)
  {
    CFRelease(a15);
  }

  OUTLINED_FUNCTION_207_0();
}

double InsertUninitializedEditsIntoTrack(char **a1, int a2, int a3)
{
  if ((a2 & 0x80000000) == 0)
  {
    v5 = *(a1 + 2);
    v6 = v5 - a2;
    if (v5 >= a2)
    {
      v8 = *(a1 + 3);
      if (v8 - v5 >= a3)
      {
        v17 = a3;
        if (v6 > 0)
        {
          memmove(&(*a1)[96 * a2 + 96 * a3], &(*a1)[96 * a2], 96 * v6);
        }

        bzero(&(*a1)[96 * a2], 96 * v17);
        goto LABEL_15;
      }

      if (v8 <= 2147483642)
      {
        v9 = v8 + 5;
        OUTLINED_FUNCTION_73_7();
        v11 = malloc_type_calloc(v9, 0x60uLL, v10);
        v13 = v11;
        v14 = *a1;
        if (*a1)
        {
          v15 = *(a1 + 2) - a2;
          if (a2)
          {
            memmove(v11, v14, 96 * a2);
            v14 = *a1;
          }

          if (v15 >= 1)
          {
            memmove(&v13[96 * a2 + 96 * a3], &v14[96 * a2], 96 * v15);
            v14 = *a1;
          }

          free(v14);
        }

        *a1 = v13;
        *(a1 + 3) = v9;
LABEL_15:
        *(a1 + 2) += a3;
        return result;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

uint64_t DeleteEditsFromTrack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = v3 - (a3 + a2);
  if (v3 < a3 + a2)
  {
    return 4294954516;
  }

  if (v4 >= 1)
  {
    memmove((*a1 + 96 * a2), (*a1 + 96 * (a3 + a2)), 96 * v4);
    v3 = *(a1 + 8);
  }

  v7 = v3 - a3;
  *(a1 + 8) = v7;
  bzero((*a1 + 96 * v7), 96 * a3);
  return 0;
}

void DeleteEditsWithZeroDuration(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_471();
    v7 = v6;
    v8 = *(v6 + 8);
    v9 = v8 > v5 && v4 <= v5;
    if (v9 && v8 > v4)
    {
      v14 = *MEMORY[0x1E6960CC0];
      v11 = *(MEMORY[0x1E6960CC0] + 16);
      do
      {
        v12 = *v7 + 96 * v3;
        v13 = *(v12 + 72);
        time1.epoch = *(v12 + 88);
        *&time1.value = v13;
        *&time2.value = v14;
        time2.epoch = v11;
        if (CMTimeCompare(&time1, &time2))
        {
          ++v3;
        }

        else
        {
          if (DeleteEditsFromTrack(v7, v3, 1))
          {
            return;
          }

          --v2;
        }
      }

      while (v3 <= v2);
    }
  }
}

void MovieTrackSetDataSourceAtIndex_cold_1(void *a1, uint64_t a2, _DWORD *a3)
{
  MovieInformationReportParsingFailureMessage(a1, a2, "Data source index is invalid", 2u);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a3 = v4;
}

void MovieTrackCopyExternalDataReferenceSchemes_cold_1(uint64_t a1, void *a2, const void *a3, _DWORD *a4)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
  *a4 = v6;
  FigSimpleMutexUnlock();

  CFRelease(a3);
}

double SampleGroupDescCollectingApplierFunction_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double SampleGroupDescCollectingApplierFunction_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void MovieTrackGetSampleDescriptionInformationAtIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieTrackGetSampleDescriptionInformationAtIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieTrackAddParsedDataReference_cold_1(uint64_t a1, _DWORD *a2)
{
  MovieInformationReportParsingFailureMessage(0, a1, "External data reference must have reference data", 2u);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a2 = v3;
}

void MovieTrackAddParsedDataReference_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieTrackAddParsedDataReference_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieTrackAddParsedDataReference_cold_4(uint64_t a1, _DWORD *a2)
{
  MovieInformationReportParsingFailureMessage(0, a1, "Unexpected value for data reference flags", 2u);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a2 = v3;
}

void MovieSampleAccessorStepCursor_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleAccessorStepCursor_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleAccessorStepCursor_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleAccessorMoveToLastSampleInDecodeOrder_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleAccessorCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void resetTrackCursor_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void resetTrackCursor_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void resetTrackCursor_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void resetTrackCursor_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FragmentCursorGetDTSTimeValue_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double FragmentCursorGetDTSTimeValue_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double MovieSampleAccessorGetPTSTimeValue_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double MovieSampleAccessorGetPTSTimeValue_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double MovieSampleAccessorGetSampleDuration_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double MovieSampleAccessorGetSampleDuration_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void locateChunk_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void locateChunk_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void locateChunk_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void locateChunk_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void locateChunk_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void locateChunk_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void locateChunk_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void locateChunk_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void locateChunk_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void locateChunk_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double MovieSampleAccessorComputePlayableHorizon_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_216_0();
  PTSTimeValue = MovieSampleAccessorGetPTSTimeValue(v7);
  CMTimeMake(v4, PTSTimeValue, *(*v5 + 232));
  return MovieTrackGetMediaDuration(*v5, a4);
}

double FragmentCursorGetSampleFlags_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double FragmentCursorGetSampleFlags_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void MovieTrackFindOrAddSampleDescription_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieTrackFindOrAddSampleDescription_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieTrackFindOrAddSampleDescription_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieTrackFindOrAddSampleDescription_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieTrackFindOrAddSampleDescription_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double AllSampleGroupCollectionApplierFunction_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void MovieSampleAccessorCreateSampleDependencyAttributeDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieTrackReplaceFormatDescriptionArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieTrackReplaceFormatDescriptionArray_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieTrackReplaceFormatDescriptionArray_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieTrackSetMediaTimeScale_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieTrackSetMediaTimeScale_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieTrackGetBasicInfo_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieTrackSetLanguageCodeString_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double MovieTrackCreateSampleDescriptionAtomLocationDictionary_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void MovieTrackCreateSampleDescriptionAtomLocationDictionary_cold_2(const void *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);

  CFRelease(a1);
}

double MovieTrackCreateSampleDescriptionAtomLocationDictionary_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double MovieTrackCreateSampleDescriptionAtomLocationDictionary_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void MovieTrackCreateEditSegmentArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieTrackAddRunContributionToEditSegmentArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t MovieTrackInitializeLowestDisplayStartTimeAndHighestDisplayEndTime_cold_1(uint64_t a1, void *a2)
{
  v9 = OUTLINED_FUNCTION_107(MEMORY[0x1E6960C70]);
  v10 = v3;
  result = MovieTrackGetDisplayTimeRange(v4, v5, &v8, &v9);
  if (!result)
  {
    v7 = v9.n128_u64[0];
    a2[11] = v8.value;
    a2[12] = 0xFFFFFFFF80000000;
    a2[13] = v7;
  }

  return result;
}

void MovieTrackAddParsedSampleDescriptionAndDataRefIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieTrackAddParsedSampleDescriptionAndDataRefIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieTrackAddParsedSampleDescriptionAndDataRefIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ConvertSampleDescriptionsToFormatDescriptions_cold_1(void *a1, uint64_t a2, _DWORD *a3)
{
  MovieInformationReportParsingFailureMessage(a1, a2, "MediaType is zero", 2u);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a3 = v4;
}

double ConvertSampleDescriptionsToFormatDescriptions_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double ConvertSampleDescriptionsToFormatDescriptions_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double ConvertSampleDescriptionsToFormatDescriptions_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void ConvertSampleDescriptionsToFormatDescriptions_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ConvertSampleDescriptionsToFormatDescriptions_cold_6(void *a1, uint64_t a2, _DWORD *a3)
{
  MovieInformationReportParsingFailureMessage(a1, a2, "Track has no sample descriptions", 2u);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a3 = v4;
}

void EnsureTrackReferenceArrayCapacityForAddition_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void EnsureTrackReferenceArrayCapacityForAddition_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

BOOL NewTrackAlternateGroupAssignment_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
  return OUTLINED_FUNCTION_2_14(v0);
}

void MovieInformationAddNewPerTrackInfo_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieInformationAddNewPerTrackInfo_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieInformationAddNewPerTrackInfo_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieTrackCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double MovieInformationCreateQTLoadSettingsDictionary_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double MovieInformationCreateQTLoadSettingsDictionary_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double MovieInformationCreateQTLoadSettingsDictionary_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double MovieInformationCreateQTLoadSettingsDictionary_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void MovieInformationSetMovieTimeScale_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieSampleTableSet_stz2_cold_1(uint64_t a1, _DWORD *a2)
{
  MovieInformationReportParsingFailureMessage(0, a1, "Unexpected stz2 field size", 2u);
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a2 = v3;
}

void MovieInformationLockForWrite_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieInformationUnlockForWrite_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieInformationEnsureMutationsWillNotify_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieInformationCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieTrackSetLastSampleDecodeDuration_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieTrackSetLastSampleDecodeDuration_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieTrackSetLastSampleDecodeDuration_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieInformationBeginBuildingMovieFragment_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

BOOL MovieInformationBeginBuildingMovieFragment_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  return OUTLINED_FUNCTION_2_14(v0);
}

void MakeTableReadyToWrite_cold_1(uint64_t a1, uint64_t a2, CMBlockBufferRef *a3, OpaqueCMBlockBuffer *a4)
{
  OUTLINED_FUNCTION_369();
  if (!CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0x10u, 0, v4))
  {
    if (a4 && CMBlockBufferGetDataLength(a4))
    {
      OUTLINED_FUNCTION_496();
      CMBlockBufferAppendBufferReference(v7, v8, v9, v10, 0);
    }

    v11 = *a3;
    v12 = *v4;
    *a3 = *v4;
    if (v12)
    {
      CFRetain(v12);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    CMByteStreamCreateWritableForBlockBuffer();
  }

  if (*v4)
  {
    CFRelease(*v4);
  }
}

void MovieInformationSetParsedIFFItemInformation_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MovieInformationSetParsedIFFItemInformation_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double DeepCopySampleGroupDescriptionArraysApplierFunction_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void FigMutableCompositionCreate(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  v23 = 0;
  OUTLINED_FUNCTION_0_145();
  MEMORY[0x19A8D3660]();
  if (!CMDerivedObjectCreate())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = malloc_type_calloc(0x30uLL, 1uLL, 0xD0897101uLL);
    *v7 = 1;
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = FigSimpleMutexCreate();
    v8 = OUTLINED_FUNCTION_383();
    v7[5] = CFDictionaryCreateMutable(v8, v9, v10, v11);
    v23 = v7;
    v7[1] = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    v12 = malloc_type_calloc(0xA8uLL, 1uLL, 0xCE15D8CEuLL);
    *v12 = 0x100000001;
    v12[1] = FigSimpleMutexCreate();
    v12[2] = 0;
    *(v12 + 6) = 1;
    v12[4] = 0;
    v13 = OUTLINED_FUNCTION_383();
    v12[5] = CFBagCreateMutable(v13, v14, v15);
    v12[7] = FigSimpleMutexCreate();
    v16 = MEMORY[0x1E695E9E8];
    v17 = OUTLINED_FUNCTION_383();
    v12[8] = CFDictionaryCreateMutable(v17, v18, v19, v16);
    v12[9] = FigSimpleMutexCreate();
    *(v12 + 5) = 0u;
    *(v12 + 6) = 0u;
    v12[14] = 0;
    v12[15] = FigSimpleMutexCreate();
    v12[16] = 64;
    OUTLINED_FUNCTION_82_7();
    v12[17] = malloc_type_calloc(0x40uLL, 0x10uLL, v20);
    v12[18] = 1;
    v21 = OUTLINED_FUNCTION_383();
    v12[19] = CFDictionaryCreateMutable(v21, v22, 0, v16);
    v12[20] = v7;
    FigAtomicIncrement32();
    *(DerivedStorage + 8) = v12;
    *a4 = 0;
  }

  compositionSharedCache_releaseAndClear(&v23);
  OUTLINED_FUNCTION_843();
}

uint64_t mutableComposition_setMetadata(void *a1, const __CFArray *a2, __CFDictionary *a3)
{
  v29 = 0;
  FigSimpleMutexLock();
  allocator = *MEMORY[0x1E695E480];
  v6 = compositionTable_createAvailableMetadataReaderPropertiesArray(*MEMORY[0x1E695E480], a1, &v29);
  v7 = v29;
  if (!v6)
  {
    v8 = MEMORY[0x1E695E4D0];
    if (v29)
    {
      Count = CFArrayGetCount(v29);
      if (Count >= 1)
      {
        v10 = Count;
        v11 = 0;
        v12 = *v8;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v11);
          CFDictionarySetValue(a3, ValueAtIndex, v12);
          ++v11;
        }

        while (v10 != v11);
      }
    }

    compositionTable_releaseAndClearMetadata(a1);
    if (a2)
    {
      v14 = CFArrayGetCount(a2);
      v15 = *v8;
      if (v14 >= 1)
      {
        v16 = v14;
        value = *v8;
        for (i = 0; i != v16; ++i)
        {
          v18 = CFArrayGetValueAtIndex(a2, i);
          if (v18)
          {
            v19 = v18;
            v20 = CFGetTypeID(v18);
            if (v20 == CFDictionaryGetTypeID())
            {
              v21 = CFDictionaryGetValue(v19, @"format");
              v22 = CFDictionaryGetValue(v19, @"items");
              if (v21)
              {
                v23 = v22;
                if (v22)
                {
                  v24 = @"iTunesMetadataReader";
                  if (!FigCFEqual())
                  {
                    v24 = @"QuickTimeMetadataReader";
                    if (!FigCFEqual())
                    {
                      v24 = @"QuickTimeUserDataReader";
                      if (!FigCFEqual())
                      {
                        if (FigCFEqual())
                        {
                          v24 = @"ISOUserDataReader";
                        }

                        else
                        {
                          v24 = 0;
                        }
                      }
                    }
                  }

                  Mutable = a1[10];
                  if (!Mutable)
                  {
                    Mutable = CFDictionaryCreateMutable(allocator, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    a1[10] = Mutable;
                  }

                  CFDictionarySetValue(Mutable, v21, v23);
                  if (v24)
                  {
                    CFDictionarySetValue(a3, v24, value);
                  }
                }
              }
            }
          }
        }

        v6 = 0;
        v15 = value;
      }
    }

    else
    {
      v15 = *v8;
    }

    CFDictionarySetValue(a3, @"MetadataReaderTypes", v15);
    CFDictionarySetValue(a3, @"MetadataReaders", v15);
  }

  FigSimpleMutexUnlock();
  if (v7)
  {
    CFRelease(v7);
  }

  return v6;
}

void mutableComposition_CreateMutableCopy(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*MEMORY[0x1E695E4B0] != a1)
  {
    v6 = DerivedStorage;
    if (CMBaseObjectGetVTable() == &kMutableComposition_VTable)
    {
      OUTLINED_FUNCTION_0_145();
      MEMORY[0x19A8D3660]();
      if (!CMDerivedObjectCreate())
      {
        v7 = CMBaseObjectGetDerivedStorage();
        compositionTable_createCopy(a1, *(v6 + 8), (v7 + 8));
        *a3 = 0;
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }
}

uint64_t mutableComposition_GetTrackCompatibleWithAssetTrack(uint64_t a1, const void *a2, uint64_t a3, _DWORD *a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 8);
  v25 = 0;
  v26 = 0;
  v24 = 0;
  if (!a2)
  {
    v22 = 4294954516;
    goto LABEL_17;
  }

  v8 = *MEMORY[0x1E695E480];
  v9 = compositionSharedCache_copyFormatReaderForAssetURL(v7[20], a2, *MEMORY[0x1E695E480], &v26);
  if (!v9)
  {
    FigSimpleMutexLock();
    v10 = v26;
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v11)
    {
      v22 = 4294954514;
LABEL_14:
      FigSimpleMutexUnlock();
      goto LABEL_15;
    }

    v12 = v11(v10, a3, &v25, &v24);
    if (v12)
    {
      v22 = v12;
      goto LABEL_14;
    }

    v13 = v7[2];
    v14 = v24;
    cf = 0;
    FigTrackReaderGetFigBaseObject();
    v16 = v15;
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v17)
    {
LABEL_13:
      v22 = 4294954453;
      goto LABEL_14;
    }

    v18 = v17(v16, @"TrackFormatDescriptionArray", v8, &cf);
    v19 = cf;
    if (v18)
    {
      CompatibleTrackForFormatDescriptionArrayAndMediaType = -1;
      if (!cf)
      {
LABEL_9:
        if ((CompatibleTrackForFormatDescriptionArrayAndMediaType & 0x8000000000000000) == 0)
        {
          v21 = *(v7[4] + 168 * CompatibleTrackForFormatDescriptionArrayAndMediaType + 4);
          FigSimpleMutexUnlock();
          v22 = 0;
          if (a4)
          {
            *a4 = v21;
          }

          goto LABEL_15;
        }

        goto LABEL_13;
      }
    }

    else
    {
      CompatibleTrackForFormatDescriptionArrayAndMediaType = compositionTable_findCompatibleTrackForFormatDescriptionArrayAndMediaType(v7, 0, v13, cf, v14);
      v19 = cf;
      if (!cf)
      {
        goto LABEL_9;
      }
    }

    CFRelease(v19);
    goto LABEL_9;
  }

  v22 = v9;
LABEL_15:
  if (v25)
  {
    CFRelease(v25);
  }

LABEL_17:
  if (v26)
  {
    CFRelease(v26);
  }

  return v22;
}

void mutableComposition_SetTrackEditList(uint64_t a1, int a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3 < 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else
  {
    v9 = DerivedStorage;
    v10 = *(DerivedStorage + 8);
    v11 = OUTLINED_FUNCTION_502();
    compositionEditSegment_validateSegments(v11, v12, 1);
    if (!v13)
    {
      FigSimpleMutexLock();
      OUTLINED_FUNCTION_54_18();
      if (v15 != v16)
      {
LABEL_7:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_11();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, v32, v33);
        v18 = 0;
      }

      else
      {
        v17 = (*(v10 + 32) + 16);
        while (*(v17 - 3) != a2)
        {
          v17 += 21;
          if (!--v14)
          {
            goto LABEL_7;
          }
        }

        compositionEditSegment_releaseSegmentsAndRemoveURLsFromBag(*v17, *(v17 - 1), *(v10 + 40));
        if (v17[1] < a3)
        {
          free(*v17);
          OUTLINED_FUNCTION_11_50();
          *v17 = malloc_type_calloc(a3, 0x6CuLL, v19);
          v17[1] = a3;
        }

        *(v17 - 1) = a3;
        if (a3)
        {
          compositionEditSegment_copySegmentsAndAddURLsToBag(*v17, a4, a3, *(v10 + 40));
          if (a3 < 2)
          {
            v29 = *(v17 - 1);
          }

          else
          {
            v20 = *v17;
            *(v17 - 1) = 0;
            v21 = a3 - 1;
            v22 = v20;
            do
            {
              v23 = (v20 + 108);
              v24 = OUTLINED_FUNCTION_151_1();
              if (!compositionEditSegment_combineEditSegmentsIfPossible(v24, v25, v20 + 108, v26))
              {
                if (v20 != v22)
                {
                  memcpy(v22, v20, 0x6CuLL);
                  *v20 = 0u;
                  v20[1] = 0u;
                  v20[2] = 0u;
                  v20[3] = 0u;
                  v20[4] = 0u;
                  v20[5] = 0u;
                  *(v20 + 92) = 0u;
                }

                v22 = (v22 + 108);
                ++*(v17 - 1);
              }

              v20 = (v20 + 108);
              --v21;
            }

            while (v21);
            if (v23 != v22)
            {
              v27 = OUTLINED_FUNCTION_502();
              memcpy(v27, v28, 0x6CuLL);
              *v23 = 0u;
              v23[1] = 0u;
              v23[2] = 0u;
              v23[3] = 0u;
              v23[4] = 0u;
              v23[5] = 0u;
              *(v23 + 92) = 0u;
            }

            v29 = *(v17 - 1) + 1;
            *(v17 - 1) = v29;
          }

          if (v29 >= 1)
          {
            v30 = *v17 + 108 * v29;
            if ((*(v30 - 96) & 0x1D) != 1)
            {
              *(v30 - 16) = 0u;
              *(v30 - 28) = 0u;
              *(v30 - 44) = 0u;
              *(v30 - 60) = 0u;
              *(v30 - 76) = 0u;
              *(v30 - 92) = 0u;
              *(v30 - 108) = 0u;
              --*(v17 - 1);
            }
          }
        }

        OUTLINED_FUNCTION_40_17();
        v18 = 1;
      }

      FigSimpleMutexUnlock();
      if (v18)
      {
        if (*v9)
        {
          mutableComposition_postPossiblyDeferredTracksChangedNotification(a1);
        }
      }

      compositionTable_discardUnusedAssets(v10);
    }
  }
}

uint64_t mutableComposition_InsertAssetSegmentIntoTrack(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, CMTime *a6, __n128 *a7)
{
  CMBaseObjectGetDerivedStorage();
  v13 = 4294954516;
  if (!a3)
  {
    return v13;
  }

  if (!a4)
  {
    return v13;
  }

  OUTLINED_FUNCTION_29();
  if (!v15)
  {
    return v13;
  }

  v16 = v14;
  v17 = v14[1];
  OUTLINED_FUNCTION_69_8();
  OUTLINED_FUNCTION_106(MEMORY[0x1E6960CC0]);
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    return v13;
  }

  OUTLINED_FUNCTION_350();
  if (!v15 && (v18 & 1) != 0)
  {
    return v13;
  }

  FigSimpleMutexLock();
  if (*(v17 + 16) < 1)
  {
LABEL_14:
    FigSimpleMutexUnlock();
    return v13;
  }

  v19 = *(v17 + 32);
  while (*(v19 + 4) != a2)
  {
    OUTLINED_FUNCTION_47_16();
    if (v15)
    {
      v13 = 4294954516;
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_69_8();
  time2 = *a6;
  v23 = *a7;
  v24 = a7[1].n128_u64[0];
  compositionTable_insertAssetSegmentIntoTrack(v17, v21, a3, a4, &time1.value, &time2, &v23);
  if (v22)
  {
    v13 = v22;
    goto LABEL_14;
  }

  ++*(v17 + 4);
  FigSimpleMutexUnlock();
  if (*v16)
  {
    mutableComposition_postPossiblyDeferredTracksChangedNotification(a1);
  }

  return 0;
}

uint64_t mutableComposition_InsertAssetSegment(uint64_t a1, const void *a2, CMTime *a3, __int128 *a4, __int128 *a5)
{
  v9 = *(CMBaseObjectGetDerivedStorage() + 8);
  v69 = 0;
  v70[0] = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  if (!a2)
  {
    v18 = 0;
    v38 = 4294954516;
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_29();
  if (!v11 || (v12 = v10, time1 = *a3, v52 = *MEMORY[0x1E6960CC0], time2 = **&MEMORY[0x1E6960CC0], CMTimeCompare(&time1, &time2) < 0) || OUTLINED_FUNCTION_42_18(v13, *(a4 + 2), v40, v43, v47, a1, v52, *a4, *(a4 + 1), time1.epoch) < 1 || (OUTLINED_FUNCTION_350(), !v11) && (v15 & 1) != 0)
  {
    v18 = 0;
    goto LABEL_59;
  }

  if (v16 == 1 && (OUTLINED_FUNCTION_42_18(v14, *(a5 + 2), v41, v44, v48, v51, v53, *a5, *(a5 + 1), time1.epoch) & 0x80000000) != 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v42, v45, v49);
    goto LABEL_63;
  }

  v54 = *MEMORY[0x1E695E480];
  v17 = compositionSharedCache_copyFormatReaderForAssetURL(*(v9 + 160), a2, *MEMORY[0x1E695E480], v70);
  if (v17)
  {
LABEL_63:
    v38 = v17;
    v18 = 0;
    goto LABEL_51;
  }

  v18 = v70[0];
  if (!v70[0])
  {
LABEL_59:
    v38 = 4294954516;
    goto LABEL_51;
  }

  v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v19)
  {
    v18 = 0;
    v38 = 4294954514;
    goto LABEL_51;
  }

  v17 = v19(v18, &v69);
  if (v17)
  {
    goto LABEL_63;
  }

  FigSimpleMutexLock();
  OUTLINED_FUNCTION_29();
  if (!v11)
  {
    compositionTable_getDuration(v9, &time1);
    *a5 = time1;
  }

  OUTLINED_FUNCTION_15_39();
  v22 = malloc_type_calloc(v20, 8uLL, v21);
  v18 = v22;
  if (v22)
  {
    v46 = v12;
    v23 = *(v9 + 16);
    v64 = 0;
    if (v23 >= 1)
    {
      v24 = 0;
      do
      {
        v22[v24] = v24;
        v24 = v64 + 1;
        v64 = v24;
      }

      while (v24 < *(v9 + 16));
    }

    if (v69 < 1)
    {
      v36 = v23;
LABEL_47:
      time1 = *a5;
      time2 = *a4;
      tableTrack_InsertEmptyEditsInTracks(v51, v18, v36, &time1, &time2);
      if (!v28)
      {
        ++*(v9 + 4);
        FigSimpleMutexUnlock();
        if (*v46)
        {
          mutableComposition_postPossiblyDeferredTracksChangedNotification(v51);
        }

        v38 = 0;
        goto LABEL_51;
      }

LABEL_60:
      v38 = v28;
    }

    else
    {
      v25 = 0;
      while (1)
      {
        LODWORD(time2.value) = 0;
        v26 = v70[0];
        v27 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v27)
        {
          break;
        }

        v28 = v27(v26, v25, &v66, &v67, &time2);
        if (v28)
        {
          goto LABEL_60;
        }

        FigTrackReaderGetFigBaseObject();
        v30 = v29;
        v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v31)
        {
          break;
        }

        v28 = v31(v30, @"TrackFormatDescriptionArray", v54, &v68);
        if (v28)
        {
          goto LABEL_60;
        }

        v58 = *a5;
        v59 = *(a5 + 2);
        v60 = *a4;
        v61 = *(a4 + 2);
        *&time1.value = *&a3->value;
        epoch = a3->epoch;
        v57 = v61;
        v56 = v60;
        time1.epoch = epoch;
        v62 = a2;
        value = time2.value;
        v64 = 0;
        compositionTable_insertEditSegmentsFromAsset(v51, v18, v23, v68, v67, &time1, 1, &v64);
        if (v28)
        {
          goto LABEL_60;
        }

        if (v23 < 1)
        {
          v36 = v23;
        }

        else
        {
          v33 = 0;
          v34 = 0;
          v35 = v64;
          v36 = v23;
          do
          {
            v37 = v18[v33];
            if (v37 == v35)
            {
              --v36;
            }

            else
            {
              if (v33 != v34)
              {
                v18[v34] = v37;
              }

              ++v34;
            }

            ++v33;
          }

          while (v23 != v33);
        }

        if (v68)
        {
          CFRelease(v68);
          v68 = 0;
        }

        if (v66)
        {
          CFRelease(v66);
          v66 = 0;
        }

        ++v25;
        v23 = v36;
        if (v25 >= v69)
        {
          goto LABEL_47;
        }
      }

      v38 = 4294954514;
    }
  }

  else
  {
    v38 = 4294954510;
  }

  FigSimpleMutexUnlock();
LABEL_51:
  if (v66)
  {
    CFRelease(v66);
  }

LABEL_53:
  if (v70[0])
  {
    CFRelease(v70[0]);
  }

  if (v68)
  {
    CFRelease(v68);
  }

  free(v18);
  return v38;
}

uint64_t mutableComposition_InsertEmptyTrackSegment(uint64_t a1, int a2, __int128 *a3, __int128 *a4)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_29();
  if (!v9)
  {
    return 4294954516;
  }

  v10 = v8;
  v11 = v8[1];
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_54_18();
  if (v12 != v13)
  {
LABEL_8:
    v17 = 4294954516;
LABEL_9:
    FigSimpleMutexUnlock();
    return v17;
  }

  v14 = *(v11 + 32);
  while (*(v14 + 4) != a2)
  {
    OUTLINED_FUNCTION_47_16();
    if (v9)
    {
      goto LABEL_8;
    }
  }

  v19 = *a3;
  v20 = *(a3 + 2);
  v18 = *a4;
  compositionTable_insertEmptyTrackSegment(v11, v14, &v19, &v18);
  if (v16)
  {
    v17 = v16;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_40_17();
  FigSimpleMutexUnlock();
  if (*v10)
  {
    mutableComposition_postPossiblyDeferredTracksChangedNotification(a1);
  }

  return 0;
}

uint64_t mutableComposition_InsertEmptySegment(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_29();
  if (!v3)
  {
    return 4294954516;
  }

  v4 = v2;
  v5 = v2[1];
  v6 = FigSimpleMutexLock();
  v19 = *(v5 + 16);
  if (v19 < 1)
  {
    v28 = 0;
  }

  else
  {
    v32 = a1;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = MEMORY[0x1E6960CC0];
    do
    {
      v24 = *(v5 + 32);
      v25 = v24 + v20;
      if (*(v24 + v20 + 8) >= 1)
      {
        v35 = *v23;
        v26 = *(v25 + 8);
        if (v26 >= 1)
        {
          v27 = *(v24 + v20 + 16) + 108 * v26;
          OUTLINED_FUNCTION_88_8(v6, v7, v8, v9, v10, v11, v12, v13, *(v27 - 60), *(v27 - 44), *(v27 - 28), v14, v15, v16, v31, v32, time2.value, *&time2.timescale, time2.epoch, v34, v35.value, *&v35.timescale, v35.epoch, v36, v17, v18, *&time1.value);
        }

        OUTLINED_FUNCTION_61_14();
        time2 = v35;
        v6 = CMTimeCompare(&time1, &time2);
        if ((v6 & 0x80000000) != 0)
        {
          OUTLINED_FUNCTION_61_14();
          OUTLINED_FUNCTION_78_7();
          compositionTable_insertEmptyTrackSegment(v5, v25, &time1, &time2);
          if (v6)
          {
            v30 = v6;
            FigSimpleMutexUnlock();
            return v30;
          }

          ++v22;
        }

        v19 = *(v5 + 16);
      }

      ++v21;
      v20 += 168;
    }

    while (v21 < v19);
    if (v22 < 1)
    {
      v28 = 0;
    }

    else
    {
      ++*(v5 + 4);
      v28 = 1;
    }

    a1 = v32;
  }

  FigSimpleMutexUnlock();
  v30 = 0;
  if (v28 && *v4)
  {
    mutableComposition_postPossiblyDeferredTracksChangedNotification(a1);
    return 0;
  }

  return v30;
}

uint64_t mutableComposition_InsertSegmentArrayIntoTrack(uint64_t a1, int a2, const __CFArray *a3, const __CFArray *a4, const __CFArray *a5, const __CFArray *a6, uint64_t a7)
{
  v157 = a6;
  HIDWORD(v142) = a2;
  v173 = *MEMORY[0x1E69E9840];
  v143 = a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  v21 = *(DerivedStorage + 8);
  v166 = *MEMORY[0x1E6960CC0];
  v167 = *(MEMORY[0x1E6960CC0] + 16);
  v164 = v166;
  v165 = v167;
  v159 = v166;
  v162 = v166;
  v158 = v167;
  v163 = v167;
  v22 = 4294954516;
  theArray = a3;
  if (!a3 || !a4 || !a5)
  {
    v23 = 0;
    goto LABEL_59;
  }

  v23 = 0;
  if (v157)
  {
    v24 = DerivedStorage;
    v25 = *(a7 + 12);
    if ((v25 & 0x1D) == 1 || (v25 & 1) == 0)
    {
      v148 = a7;
      if ((v25 & 0x1D) == 1 && (*&v168.start.value = *a7, v168.start.epoch = *(a7 + 16), OUTLINED_FUNCTION_8_51(DerivedStorage, v13, v14, v15, v16, v17, v18, v19, v135, v139, v142, v143, v145, a7, v150, v152, v154, theArray, v157, v167, v166), v26 = OUTLINED_FUNCTION_46_14(), CMTimeCompare(v26, v27) < 0))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_5();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v136, v140, v142);
        v22 = v134;
      }

      else
      {
        v141 = v7;
        Count = CFArrayGetCount(theArray);
        if (CFArrayGetCount(a4) != Count || CFArrayGetCount(a5) != Count || CFArrayGetCount(v157) != Count)
        {
          v20 = 0;
          v23 = 0;
          v22 = 4294954516;
          goto LABEL_59;
        }

        if (Count >= 1)
        {
          OUTLINED_FUNCTION_63_12();
          v23 = malloc_type_calloc(Count, 8uLL, v29);
          if (!v23)
          {
            v20 = 0;
            v22 = 4294954510;
            goto LABEL_59;
          }

          OUTLINED_FUNCTION_15_39();
          v31 = malloc_type_calloc(Count, 8uLL, v30);
          v20 = v31;
          if (!v31)
          {
            v22 = 4294954510;
            goto LABEL_55;
          }

          v137 = v24;
          v146 = v21;
          v153 = Count;
          v155 = v31;
          v32 = 0;
          v151 = a4;
          while (1)
          {
            valuePtr = 0;
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v32);
            if (!ValueAtIndex)
            {
              v35 = 0;
LABEL_81:
              v101 = 0;
              v22 = 4294954516;
              goto LABEL_52;
            }

            v34 = ValueAtIndex;
            v35 = CFArrayGetValueAtIndex(a4, v32);
            if (!v35)
            {
              goto LABEL_81;
            }

            TypeID = CFNumberGetTypeID();
            if (TypeID != CFGetTypeID(v35))
            {
              goto LABEL_82;
            }

            CFNumberGetValue(v35, kCFNumberSInt32Type, &valuePtr);
            v37 = OUTLINED_FUNCTION_151_1();
            v35 = CFArrayGetValueAtIndex(v37, v38);
            if (!v35)
            {
              goto LABEL_81;
            }

            v39 = CFDictionaryGetTypeID();
            if (v39 != CFGetTypeID(v35))
            {
LABEL_82:
              fig_log_get_emitter();
              OUTLINED_FUNCTION_3_2();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
              v22 = v133;
              v35 = 0;
              v101 = 0;
              goto LABEL_52;
            }

            v40 = a5;
            CMTimeMakeFromDictionary(&v168.start, v35);
            value = v168.start.value;
            flags = v168.start.flags;
            timescale = v168.start.timescale;
            epoch = v168.start.epoch;
            v35 = CFArrayGetValueAtIndex(v157, v32);
            if (!v35)
            {
              break;
            }

            v43 = CFDictionaryGetTypeID();
            if (v43 != CFGetTypeID(v35) || (v44 = CMTimeMakeFromDictionary(&v168.start, v35), v169 = v168.start.value, v52 = v168.start.flags, v170 = v168.start.timescale, (v168.start.flags & 0x1D) != 1) || (v53 = v168.start.epoch, v168.start.value = v169, v168.start.timescale = v170, OUTLINED_FUNCTION_8_51(v44, v45, v46, v47, v48, v49, v50, v51, v137, v141, v142, v143, v146, v148, v151, v153, v155, theArray, v157, v158, v159), v54 = OUTLINED_FUNCTION_46_14(), CMTimeCompare(v54, v55) < 0))
            {
LABEL_66:
              fig_log_get_emitter();
              OUTLINED_FUNCTION_3_2();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
              v22 = v115;
              v35 = 0;
              v101 = 0;
LABEL_51:
              Count = v153;
              goto LABEL_52;
            }

            CFURLGetTypeID();
            v56 = OUTLINED_FUNCTION_203_0();
            if (v35 == CFGetTypeID(v56) || (CFNullGetTypeID(), v57 = OUTLINED_FUNCTION_203_0(), v35 == CFGetTypeID(v57)))
            {
              *(v155 + 8 * v32) = 1;
              OUTLINED_FUNCTION_11_50();
              v61 = malloc_type_calloc(v58, v59, v60);
              v23[v32] = v61;
              if (!v61)
              {
                goto LABEL_66;
              }

              if ((flags & 0x1D) == 1)
              {
                v168.start.value = value;
                OUTLINED_FUNCTION_41_18();
                OUTLINED_FUNCTION_8_51(v62, v63, v64, v65, v66, v67, v68, v69, v137, v141, v142, v143, v146, v148, v151, v153, v155, theArray, v157, v158, v159);
                v70 = OUTLINED_FUNCTION_46_14();
                if (CMTimeCompare(v70, v71) < 0)
                {
                  goto LABEL_66;
                }

                CFURLGetTypeID();
                v72 = OUTLINED_FUNCTION_203_0();
                if (v35 != CFGetTypeID(v72) || !valuePtr)
                {
                  goto LABEL_66;
                }

                *(v23[v32] + 96) = CFRetain(v34);
                v73 = v23[v32];
                *(v73 + 104) = valuePtr;
                *v73 = value;
                *(v73 + 8) = timescale;
                *(v73 + 12) = flags;
                *(v73 + 16) = epoch;
                v74 = v23[v32];
                v75 = v170;
                *(v74 + 24) = v169;
                *(v74 + 32) = v75;
                *(v74 + 36) = v52;
                *(v74 + 40) = v53;
                v61 = v23[v32];
              }

              v76 = MEMORY[0x1E6960C70];
              v61[3] = *MEMORY[0x1E6960C70];
              *(v61 + 8) = *(v76 + 16);
              v77 = v23[v32];
              *(v77 + 72) = v169;
              *(v77 + 80) = v170;
              *(v77 + 84) = v52;
              *(v77 + 88) = v53;
            }

            else
            {
              OUTLINED_FUNCTION_0_145();
              MEMORY[0x19A8D3660](&FigMutableCompositionGetClassID_sRegisterFigMutableCompositionBaseTypeOnce);
              CMBaseClassGetCFTypeID();
              v78 = OUTLINED_FUNCTION_203_0();
              if (v35 != CFGetTypeID(v78))
              {
                goto LABEL_66;
              }

              if (CMBaseObjectGetVTable() != &kMutableComposition_VTable)
              {
                goto LABEL_66;
              }

              if ((flags & 0x1D) != 1)
              {
                goto LABEL_66;
              }

              v168.start.value = value;
              OUTLINED_FUNCTION_41_18();
              OUTLINED_FUNCTION_8_51(v79, v80, v81, v82, v83, v84, v85, v86, v137, v141, v142, v143, v146, v148, v151, v153, v155, theArray, v157, v158, v159);
              v87 = OUTLINED_FUNCTION_46_14();
              if (CMTimeCompare(v87, v88) < 0 || !valuePtr)
              {
                goto LABEL_66;
              }

              v35 = *(CMBaseObjectGetDerivedStorage() + 8);
              FigSimpleMutexLock();
              if (v35[2] < 1)
              {
LABEL_50:
                v22 = 4294954516;
                v101 = 1;
                goto LABEL_51;
              }

              v89 = valuePtr;
              v90 = v35[4];
              while (*(v90 + 4) != v89)
              {
                OUTLINED_FUNCTION_47_16();
                if (v91)
                {
                  goto LABEL_50;
                }
              }

              v168.start.value = value;
              OUTLINED_FUNCTION_41_18();
              v93 = v92;
              v161.value = v169;
              v161.timescale = v170;
              v161.flags = v52;
              v161.epoch = v53;
              v95 = v94;
              v99 = compositionTable_copyAssetSegmentsFromTrackForTimeRange(v35, v96, &v168.start, &v161.value, v94, v92, v97, v98);
              if (v99)
              {
                Count = v153;
                v20 = v155;
                v22 = v99;
LABEL_53:
                if (!v35)
                {
                  goto LABEL_55;
                }

LABEL_54:
                FigSimpleMutexUnlock();
                goto LABEL_55;
              }

              FigSimpleMutexUnlock();
              compositionEditSegment_validateSegments(*v95, *v93, 0);
              if (v100)
              {
                v101 = 0;
                Count = v153;
                v22 = v100;
LABEL_52:
                v20 = v155;
                if (!v101)
                {
                  goto LABEL_55;
                }

                goto LABEL_53;
              }

              mutableComposition_addAssetsForURLsFromCompositionForSegments(v143, v34, *v95, *v93);
            }

            a5 = v40;
            a4 = v151;
            Count = v153;
            if (++v32 == v153)
            {
              v105 = FigSimpleMutexLock();
              v113 = *(v146 + 16);
              if (v113 < 1)
              {
                v22 = 4294954516;
                v20 = v155;
                goto LABEL_54;
              }

              v114 = *(v146 + 32);
              v20 = v155;
              while (*(v114 + 4) != HIDWORD(v142))
              {
                v114 += 168;
                if (!--v113)
                {
                  v22 = 4294954516;
                  goto LABEL_54;
                }
              }

              OUTLINED_FUNCTION_8_51(v105, v106, v107, v108, v109, v110, v111, v112, v137, v141, v142, v143, v146, v148, v151, v153, v155, theArray, v157, v158, v159);
              v116 = *(v114 + 8);
              if (v116 >= 1)
              {
                v117 = OUTLINED_FUNCTION_2_126(v116);
                *&v168.start.epoch = v118;
                *&v168.duration.timescale = v119;
                *&v168.start.value = v117;
                CMTimeRangeGetEnd(&v161, &v168);
              }

              v120 = 0;
              v163 = v161.epoch;
              v121 = *(v149 + 12) & 0x1D;
              v162 = *&v161.value;
              v91 = v121 == 1;
              v122 = &v162;
              if (v91)
              {
                v122 = v149;
              }

              v164 = *v122;
              v165 = *(v122 + 2);
              v166 = v164;
              v167 = v165;
              do
              {
                v123 = v23[v120];
                v124 = v20[v120];
                *&v168.start.value = v166;
                v168.start.epoch = v167;
                compositionEditSegment_adjustSegmentStartTimes(v123, v124, &v168.start);
                inserted = compositionTable_insertEditSegmentsIntoTrack(v147, v114);
                if (inserted)
                {
                  v22 = inserted;
                  goto LABEL_54;
                }

                if (v20[v120] >= 1)
                {
                  v126 = 0;
                  v127 = 72;
                  do
                  {
                    v128 = v23[v120] + v127;
                    *&v168.start.value = v166;
                    v168.start.epoch = v167;
                    v129 = *v128;
                    v161.epoch = *(v128 + 16);
                    *&v161.value = v129;
                    v130 = OUTLINED_FUNCTION_46_14();
                    CMTimeAdd(v132, v130, v131);
                    ++v126;
                    v127 += 108;
                  }

                  while (v126 < v20[v120]);
                }

                ++v120;
              }

              while (v120 != Count);
              ++*(v147 + 4);
              FigSimpleMutexUnlock();
              if (*v138)
              {
                mutableComposition_postPossiblyDeferredTracksChangedNotification(v144);
              }

              v22 = 0;
LABEL_55:
              v102 = 0;
              do
              {
                v103 = v23[v102];
                if (v103)
                {
                  compositionEditSegment_releaseSegmentsAndRemoveURLsFromBag(v103, v20[v102], 0);
                  free(v23[v102]);
                }

                ++v102;
              }

              while (Count != v102);
              goto LABEL_59;
            }
          }

          v101 = 0;
          v22 = 4294954516;
          goto LABEL_51;
        }

        v22 = 0;
      }
    }

    v20 = 0;
    v23 = 0;
  }

LABEL_59:
  free(v23);
  free(v20);
  return v22;
}

double mutableComposition_AddAssetForURL(uint64_t a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(CMBaseObjectGetDerivedStorage() + 8);
  v24[0] = 0;
  cf = 0;
  if (a2 && a3)
  {
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v12 || v12(a3, @"assetProperty_FormatReader", v24, 0, 0))
    {
      goto LABEL_12;
    }

    if (v24[0] != 2)
    {
      goto LABEL_9;
    }

    v13 = CFGetAllocator(a3);
    FigAssetGetCMBaseObject();
    v15 = v14;
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v16)
    {
      v17 = v16(v15, @"assetProperty_FormatReader", v13, &cf);
      v18 = cf;
      if (v17)
      {
        goto LABEL_10;
      }

      if (CMBaseObjectGetVTable() != &kComposite_FormatReader_VTable)
      {
LABEL_9:
        compositionTable_addAssetForURL(v11, a2, a3);
        v18 = cf;
LABEL_10:
        if (v18)
        {
          CFRelease(v18);
        }

        goto LABEL_12;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf, v23, v24[1]);
    }

LABEL_12:
    OUTLINED_FUNCTION_843();
    return result;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_843();

  return FigSignalErrorAtGM(v20, a9);
}

uint64_t mutableComposition_InsertMutableCompositionSegmentIntoTrack(uint64_t a1, int a2, const void *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v82 = *(DerivedStorage + 8);
  v89 = 0;
  v90 = 0;
  if (!a3)
  {
    OUTLINED_FUNCTION_75_8();
    v18 = 4294954516;
    goto LABEL_21;
  }

  v15 = DerivedStorage;
  v80 = a6;
  OUTLINED_FUNCTION_0_145();
  MEMORY[0x19A8D3660]();
  CFTypeID = CMBaseClassGetCFTypeID();
  v17 = CFGetTypeID(a3);
  v7 = 0;
  v18 = 4294954516;
  if (!a4)
  {
    v8 = 0;
    goto LABEL_21;
  }

  v78 = v15;
  v8 = 0;
  if (CFTypeID == v17)
  {
    OUTLINED_FUNCTION_29();
    if (v19)
    {
      OUTLINED_FUNCTION_74_11();
      *&v87.value = *MEMORY[0x1E6960CC0];
      v20 = *(MEMORY[0x1E6960CC0] + 16);
      v29 = OUTLINED_FUNCTION_33_20(v21, v22, v23, v24, v25, v26, v27, v28, v78, v80, v82, a1, v87.value, *&v87.timescale, v87.value, *&v87.timescale, v20, v88, v89, v90, v91[0].value);
      if ((CMTimeCompare(v29, v30) & 0x80000000) == 0)
      {
        OUTLINED_FUNCTION_350();
        if (v19 || (v31 & 1) == 0)
        {
          if (v32 != 1 || (OUTLINED_FUNCTION_5_88(), v41 = OUTLINED_FUNCTION_33_20(v33, v34, v35, v36, v37, v38, v39, v40, v79, v81, v83, v85, v86, *(&v86 + 1), v86, *(&v86 + 1), v20, v88, v89, v90, v91[0].value), (CMTimeCompare(v41, v42) & 0x80000000) == 0))
          {
            if (CMBaseObjectGetVTable() == &kMutableComposition_VTable)
            {
              v43 = *(CMBaseObjectGetDerivedStorage() + 8);
              FigSimpleMutexLock();
              OUTLINED_FUNCTION_54_18();
              if (v44 != v45)
              {
                OUTLINED_FUNCTION_75_8();
              }

              else
              {
                v46 = *(v43 + 32);
                while (*(v46 + 4) != a4)
                {
                  OUTLINED_FUNCTION_47_16();
                  if (v19)
                  {
                    OUTLINED_FUNCTION_75_8();
LABEL_18:
                    v18 = 4294954516;
                    goto LABEL_20;
                  }
                }

                OUTLINED_FUNCTION_74_11();
                v87 = *v81;
                v51 = compositionTable_copyAssetSegmentsFromTrackForTimeRange(v43, v48, v91, &v87.value, &v90, &v89, v49, v50);
                if (v51)
                {
                  v18 = v51;
                  v7 = v89;
                  v8 = v90;
                }

                else
                {
                  FigSimpleMutexUnlock();
                  v7 = v89;
                  v8 = v90;
                  compositionEditSegment_validateSegments(v90, v89, 0);
                  v53 = v85;
                  if (v52)
                  {
                    v18 = v52;
                    goto LABEL_21;
                  }

                  mutableComposition_addAssetsForURLsFromCompositionForSegments(v85, a3, v8, v7);
                  FigSimpleMutexLock();
                  OUTLINED_FUNCTION_54_18();
                  if (v44 != v45)
                  {
                    goto LABEL_18;
                  }

                  v55 = *(v83 + 32);
                  while (*(v55 + 4) != a2)
                  {
                    v55 += 168;
                    if (!--v54)
                    {
                      goto LABEL_18;
                    }
                  }

                  OUTLINED_FUNCTION_29();
                  if (!v19)
                  {
                    *&v87.value = v86;
                    v87.epoch = v20;
                    OUTLINED_FUNCTION_43_16();
                    if (v44 == v45)
                    {
                      v57 = OUTLINED_FUNCTION_2_126(v56);
                      OUTLINED_FUNCTION_86_7(v58, v59, v60, v61, v62, v63, v64, v65, v57, v66, v67, v68, v69, v70, v79, v81, v83, v85, v86, *(&v86 + 1), v87.value, *&v87.timescale, v87.epoch, v88, v89, v90, v71, v72, *&v91[0].value);
                    }

                    v91[0] = v87;
                    epoch = v87.epoch;
                    *a7 = *&v87.value;
                    *(a7 + 16) = epoch;
                  }

                  OUTLINED_FUNCTION_5_88();
                  compositionEditSegment_adjustSegmentStartTimes(v8, v7, v91);
                  v74 = OUTLINED_FUNCTION_177();
                  inserted = compositionTable_insertEditSegmentsIntoTrack(v74, v75);
                  if (!inserted)
                  {
                    OUTLINED_FUNCTION_40_17();
                    FigSimpleMutexUnlock();
                    if (*v79)
                    {
                      mutableComposition_postPossiblyDeferredTracksChangedNotification(v53);
                    }

                    v18 = 0;
                    goto LABEL_21;
                  }

                  v18 = inserted;
                }
              }

LABEL_20:
              FigSimpleMutexUnlock();
              goto LABEL_21;
            }
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_20_0();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          v18 = v77;
        }
      }
    }

    OUTLINED_FUNCTION_75_8();
  }

LABEL_21:
  compositionEditSegment_releaseSegmentsAndRemoveURLsFromBag(v8, v7, 0);
  free(v8);
  return v18;
}

uint64_t mutableComposition_InsertMutableCompositionSegment(void *a1, const void *a2, CMTime *a3, __n128 *a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2 || (v12 = DerivedStorage, v13 = *(DerivedStorage + 8), OUTLINED_FUNCTION_0_145(), MEMORY[0x19A8D3660](), CFTypeID = CMBaseClassGetCFTypeID(), CFTypeID != CFGetTypeID(a2)) || (OUTLINED_FUNCTION_29(), !v14) || (time1 = *a3, v101 = *MEMORY[0x1E6960CC0], *&time2.value = *MEMORY[0x1E6960CC0], CFTypeID = *(MEMORY[0x1E6960CC0] + 16), time2.epoch = CFTypeID, CMTimeCompare(&time1, &time2) < 0) || (OUTLINED_FUNCTION_9_47(a4), OUTLINED_FUNCTION_58_8(v15, v16, v17, v18, v19, v20, v21, v22, v81, v85, v88, v91, v94, a4, v98, v101, a5, v106, *&time2.value, time2.epoch) < 1) || (OUTLINED_FUNCTION_350(), !v14) && (v23 & 1) != 0)
  {
    OUTLINED_FUNCTION_52_16();
    v74 = 4294954516;
    goto LABEL_55;
  }

  if (v24 == 1)
  {
    OUTLINED_FUNCTION_9_47(v105);
    if ((OUTLINED_FUNCTION_58_8(v25, v26, v27, v28, v29, v30, v31, v32, v82, v86, v89, v92, v95, v97, v99, v102, v105, v107, *&time2.value, time2.epoch) & 0x80000000) != 0)
    {
      CFTypeID = 8206;
      goto LABEL_69;
    }
  }

  if (CMBaseObjectGetVTable() != &kMutableComposition_VTable)
  {
    CFTypeID = 8209;
LABEL_69:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v82, DWORD2(v82), v86);
    v74 = v80;
    OUTLINED_FUNCTION_52_16();
    goto LABEL_55;
  }

  v33 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigSimpleMutexLock();
  v103 = v33;
  v34 = *(v33 + 16);
  OUTLINED_FUNCTION_63_12();
  v6 = malloc_type_calloc(v34, 8uLL, v35);
  if (!v6)
  {
    v7 = 0;
    a3 = 0;
LABEL_64:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v82, DWORD2(v82), v86);
    v74 = v79;
    CFTypeID = 0;
LABEL_65:
    FigSimpleMutexUnlock();
    a1 = 0;
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_15_39();
  v7 = malloc_type_calloc(v34, 8uLL, v36);
  if (!v7)
  {
    a3 = 0;
    goto LABEL_64;
  }

  v93 = a3;
  a3 = malloc_type_calloc(v34, 8uLL, 0x6004044C4A2DFuLL);
  if (!a3)
  {
    goto LABEL_64;
  }

  v37 = malloc_type_calloc(v34, 4uLL, 0x100004052888210uLL);
  if (!v37)
  {
    goto LABEL_64;
  }

  v87 = v37;
  v90 = a2;
  v83 = v12;
  v84 = a1;
  v100 = v34;
  if (v34 >= 1)
  {
    v38 = 0;
    v39 = 0;
    v40 = v34;
    v41 = v37;
    while (1)
    {
      v42 = *(v103 + 32);
      OUTLINED_FUNCTION_9_47(v93);
      OUTLINED_FUNCTION_169(v97);
      v46 = compositionTable_copyAssetSegmentsFromTrackForTimeRange(v43, v42 + v38, &time1, &time2.value, &v6[v39], &v7[v39], v44, v45);
      if (v46)
      {
        break;
      }

      compositionEditSegment_validateSegments(v6[v39], v7[v39], 0);
      if (v47 || (*v41 = *(v42 + v38), v47 = compositionTableTrack_copyTrackFormatDescriptionArrayForTrackCompatibility(v103, v42 + v38), v47))
      {
        v74 = v47;
        goto LABEL_60;
      }

      ++v39;
      ++v41;
      v38 += 168;
      if (!--v40)
      {
        goto LABEL_22;
      }
    }

    v74 = v46;
LABEL_60:
    CFTypeID = v87;
    v34 = v100;
    goto LABEL_65;
  }

LABEL_22:
  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_29();
  if (!v14)
  {
    compositionTable_getDuration(v13, &time1);
    *v105->n128_u64 = time1;
  }

  OUTLINED_FUNCTION_15_39();
  v51 = malloc_type_calloc(v48, v49, v50);
  a1 = v51;
  CFTypeID = v87;
  if (v51)
  {
    v52 = *(v13 + 16);
    if (v52 >= 1)
    {
      v53 = 0;
      do
      {
        v51[v53] = v53;
        ++v53;
      }

      while (v53 < *(v13 + 16));
    }

    if (v100 < 1)
    {
LABEL_42:
      OUTLINED_FUNCTION_9_47(v105);
      OUTLINED_FUNCTION_169(v97);
      v69 = OUTLINED_FUNCTION_502();
      tableTrack_InsertEmptyEditsInTracks(v69, v70, v71, v72, v73);
      if (!v64)
      {
        ++*(v13 + 4);
        FigSimpleMutexUnlock();
        v34 = v100;
        if (*v83)
        {
          mutableComposition_postPossiblyDeferredTracksChangedNotification(v84);
        }

        v74 = 0;
        goto LABEL_46;
      }
    }

    else
    {
      v54 = 0;
      while (1)
      {
        mutableComposition_addAssetsForURLsFromCompositionForSegments(v84, v90, v6[v54], v7[v54]);
        OUTLINED_FUNCTION_9_47(v105);
        compositionEditSegment_adjustSegmentStartTimes(v55, v56, &time1);
        v57 = OUTLINED_FUNCTION_502();
        compositionTable_insertEditSegmentsFromAsset(v57, v58, v52, v59, v60, v61, v62, v63);
        if (v64)
        {
          break;
        }

        if (v52 < 1)
        {
          v67 = v52;
        }

        else
        {
          v65 = 0;
          v66 = 0;
          v67 = v52;
          do
          {
            v68 = a1[v65];
            if (v68)
            {
              if (v65 != v66)
              {
                a1[v66] = v68;
              }

              ++v66;
            }

            else
            {
              --v67;
            }

            ++v65;
          }

          while (v52 != v65);
        }

        ++v54;
        v52 = v67;
        if (v54 == v100)
        {
          goto LABEL_42;
        }
      }
    }

    v74 = v64;
  }

  else
  {
    v74 = 4294954510;
  }

  v34 = v100;
  FigSimpleMutexUnlock();
LABEL_46:
  if (v6 && v34 >= 1)
  {
    for (i = 0; i != v34; ++i)
    {
      v76 = v6[i];
      if (v76)
      {
        compositionEditSegment_releaseSegmentsAndRemoveURLsFromBag(v76, v7[i], 0);
        free(v6[i]);
      }

      if (a3)
      {
        v77 = *(&a3->value + i);
        if (v77)
        {
          CFRelease(v77);
        }
      }
    }
  }

LABEL_55:
  free(v6);
  free(v7);
  free(a3);
  free(CFTypeID);
  free(a1);
  return v74;
}

double mutableComposition_GetTrackCompatibleWithMutableCompositionTrack(uint64_t a1, const void *a2, int a3, _DWORD *a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 8);
  if (a2)
  {
    if (a3)
    {
      OUTLINED_FUNCTION_0_145();
      MEMORY[0x19A8D3660]();
      CFTypeID = CMBaseClassGetCFTypeID();
      if (CFTypeID != CFGetTypeID(a2))
      {
        return result;
      }

      if (CMBaseObjectGetVTable() == &kMutableComposition_VTable)
      {
        v10 = *(CMBaseObjectGetDerivedStorage() + 8);
        FigSimpleMutexLock();
        if (*(v10 + 16) < 1)
        {
LABEL_10:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_5();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, 0, v17);
        }

        else
        {
          v11 = *(v10 + 32);
          while (v11[1] != a3)
          {
            OUTLINED_FUNCTION_47_16();
            if (v12)
            {
              goto LABEL_10;
            }
          }

          v13 = *v11;
          if (!compositionTableTrack_copyTrackFormatDescriptionArrayForTrackCompatibility(v10, v11))
          {
            FigSimpleMutexUnlock();
            FigSimpleMutexLock();
            CompatibleTrackForFormatDescriptionArrayAndMediaType = compositionTable_findCompatibleTrackForFormatDescriptionArrayAndMediaType(v7, 0, *(v7 + 16), 0, v13);
            if (CompatibleTrackForFormatDescriptionArrayAndMediaType < 0)
            {
              FigSimpleMutexUnlock();
            }

            else
            {
              v15 = *(*(v7 + 32) + 168 * CompatibleTrackForFormatDescriptionArrayAndMediaType + 4);
              FigSimpleMutexUnlock();
              if (a4)
              {
                *a4 = v15;
              }
            }

            return result;
          }
        }

        FigSimpleMutexUnlock();
        return result;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t mutableComposition_CopyAsset(const void *a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = CFGetAllocator(a1);
  v17 = 0;
  if (!a4)
  {
    return 0;
  }

  v10 = v9;
  if (!a2)
  {
    v14 = *(DerivedStorage + 24);
    if (v14)
    {
      v17 = CFRetain(v14);
LABEL_11:
      v13 = 0;
      *a4 = v17;
      return v13;
    }
  }

  cf = 0;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v11)
  {
    v12 = v11(a1, a2, a3, &cf);
    if (v12)
    {
      return v12;
    }

    v13 = FigAssetCreateWithFormatReader(v10, cf, 0, 0, &v17);
    CFRelease(cf);
    if (a2 || v13)
    {
      if (v13)
      {
        return v13;
      }
    }

    else
    {
      *(DerivedStorage + 24) = CFRetain(v17);
    }

    goto LABEL_11;
  }

  return 4294954514;
}

void composite_formatReader_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, __CFArray **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *DerivedStorage;
  v35 = 0;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  if (a2)
  {
    v10 = DerivedStorage;
    if (CFEqual(a2, @"Identifier"))
    {
      v11 = kFigFormatReaderIdentifier_Composite;
LABEL_4:
      v12 = CFRetain(*v11);
LABEL_12:
      *a4 = v12;
      return;
    }

    if (CFEqual(a2, @"Duration") || CFEqual(a2, @"NominalDuration") || CFEqual(a2, @"EstimatedDuration"))
    {
      v13 = *CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_106(MEMORY[0x1E6960CC0]);
      FigSimpleMutexLock();
      compositionTable_getDuration(v13, &v31);
      FigSimpleMutexUnlock();
      v30 = v31;
      v12 = CMTimeCopyAsDictionary(&v30, a3);
      goto LABEL_12;
    }

    if (CFEqual(a2, @"AccurateDurationIsKnown") || CFEqual(a2, @"SampleCursorTimeAccuracyIsExact"))
    {
      v11 = MEMORY[0x1E695E4D0];
      goto LABEL_4;
    }

    if (CFEqual(a2, @"TrackReferenceDictionary"))
    {
      FigSimpleMutexLock();
      v14 = *(v9 + 48);
      if (v14)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(a3, 0, v14);
      }

      else
      {
        MutableCopy = 0;
      }

      *a4 = MutableCopy;
      FigSimpleMutexUnlock();
      return;
    }

    if (CFEqual(a2, @"CanMutate"))
    {
      v11 = MEMORY[0x1E695E4D0];
      if (!*(v10 + 24))
      {
        v11 = MEMORY[0x1E695E4C0];
      }

      goto LABEL_4;
    }

    if (CFEqual(a2, @"AlternateGroupArray") || CFEqual(a2, @"AlternateGroupAssignmentsArray"))
    {
      v12 = compositeFormatReader_copyAlternateGroupArray(a1, a3);
      goto LABEL_12;
    }

    if (CFEqual(a2, @"QuickTimeUserDataReader"))
    {
      v16 = OUTLINED_FUNCTION_283();
      compositionTable_copyQuickTimeUserDataReader(v16, v17);
      return;
    }

    if (CFEqual(a2, @"QuickTimeMetadataReader"))
    {
      v18 = OUTLINED_FUNCTION_283();
      compositionTable_copyQuickTimeMetadataReader(v18, v19);
      return;
    }

    if (CFEqual(a2, @"ISOUserDataReader"))
    {
      v20 = OUTLINED_FUNCTION_283();
      compositionTable_copyISOUserDataReader(v20, v21);
      return;
    }

    if (CFEqual(a2, @"iTunesMetadataReader"))
    {
      v22 = OUTLINED_FUNCTION_283();
      compositionTable_copyiTunesMetadataReader(v22, v23);
      return;
    }

    if (CFEqual(a2, @"MetadataReaders"))
    {
      compositionTable_copyQuickTimeUserDataReader(v9, &v35);
      compositionTable_copyQuickTimeMetadataReader(v9, &v34);
      compositionTable_copyISOUserDataReader(v9, &v33);
      compositionTable_copyiTunesMetadataReader(v9, &v32);
      v24 = v35;
      v25 = v33;
      v26 = v34;
      v27 = v32;
      if (!v35 && !v33 && !v34 && !v32)
      {
        return;
      }

      Mutable = CFArrayCreateMutable(a3, 0, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v29 = Mutable;
        if (v26)
        {
          CFArrayAppendValue(Mutable, v26);
        }

        if (v27)
        {
          CFArrayAppendValue(v29, v27);
        }

        if (v24)
        {
          CFArrayAppendValue(v29, v24);
        }

        if (v25)
        {
          CFArrayAppendValue(v29, v25);
        }

        *a4 = v29;
        if (!v24)
        {
          goto LABEL_54;
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_5();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30.value, v30.timescale, LODWORD(v30.epoch));
        if (!v24)
        {
          goto LABEL_54;
        }
      }

      CFRelease(v24);
LABEL_54:
      if (v26)
      {
        CFRelease(v26);
      }

      if (v25)
      {
        CFRelease(v25);
      }

      if (v27)
      {
        CFRelease(v27);
      }

      return;
    }

    if (CFEqual(a2, @"MetadataReaderTypes"))
    {

      compositionTable_createAvailableMetadataReaderPropertiesArray(a3, v9, a4);
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }
}

uint64_t composite_formatReader_CopyTrackByID(const void *a1, int a2, void *a3, _DWORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *DerivedStorage;
  FigSimpleMutexLock();
  v10 = *(v9 + 16);
  if (v10 < 1)
  {
LABEL_5:
    FigSimpleMutexUnlock();
    return 4294954453;
  }

  else
  {
    v11 = (*(v9 + 32) + 4);
    while (*v11 != a2)
    {
      v11 += 42;
      if (!--v10)
      {
        goto LABEL_5;
      }
    }

    if (a4)
    {
      *a4 = *(v11 - 1);
    }

    FigSimpleMutexUnlock();
    if (!a3)
    {
      return 0;
    }

    FigSimpleMutexLock();
    Value = CFDictionaryGetValue(*(DerivedStorage + 16), a2);
    *a3 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    FigSimpleMutexUnlock();
    if (*a3)
    {
      return 0;
    }

    CFGetAllocator(a1);
    v14 = *CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    v15 = *(v14 + 16);
    if (v15 < 1)
    {
LABEL_16:
      FigSimpleMutexUnlock();
      v12 = 4294954453;
    }

    else
    {
      v16 = (*(v14 + 32) + 4);
      while (*v16 != a2)
      {
        v16 += 42;
        if (!--v15)
        {
          goto LABEL_16;
        }
      }

      v17 = *(v16 - 1);
      FigSimpleMutexUnlock();
      FigTrackReaderGetClassID();
      v18 = CMDerivedObjectCreate();
      if (v18 || (v19 = CMBaseObjectGetDerivedStorage(), FigEditCursorServiceGetClassID(), v18 = CMDerivedObjectCreate(), v18) || (v27 = v17, v20 = CMBaseObjectGetDerivedStorage(), FigEditCursorServiceGetClassID(), v18 = CMDerivedObjectCreate(), v18) || (v26 = CMBaseObjectGetDerivedStorage(), FigSampleCursorServiceGetClassID(), v18 = CMDerivedObjectCreate(), v18))
      {
        v12 = v18;
      }

      else
      {
        v21 = CMBaseObjectGetDerivedStorage();
        *v19 = v14;
        FigAtomicIncrement32();
        *(v19 + 8) = a2;
        *(v19 + 12) = v27;
        *(v19 + 16) = 0;
        *(v19 + 24) = 0;
        *(v19 + 32) = 0;
        *v20 = v14;
        FigAtomicIncrement32();
        *(v20 + 8) = a2;
        *(v20 + 12) = v27;
        *v26 = v14;
        FigAtomicIncrement32();
        *(v26 + 8) = v27;
        *v21 = v14;
        FigAtomicIncrement32();
        v12 = 0;
        *(v21 + 8) = a2;
        *(v21 + 12) = v27;
      }
    }

    if (!v12)
    {
      FigSimpleMutexLock();
      v22 = CFDictionaryContainsKey(*(DerivedStorage + 16), a2);
      v23 = *(DerivedStorage + 16);
      if (v22)
      {
        v24 = CFDictionaryGetValue(v23, a2);
      }

      else
      {
        CFDictionarySetValue(v23, a2, 0);
        v24 = 0;
      }

      *a3 = v24;
      if (v24)
      {
        CFRetain(v24);
      }

      FigSimpleMutexUnlock();
      return 0;
    }
  }

  return v12;
}

uint64_t composite_formatReader_CopyTrackByType(const void *a1, uint64_t a2, int a3, void *a4, int *a5)
{
  v10 = *CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v11 = *(v10 + 16);
  if (v11 < 1)
  {
LABEL_7:
    FigSimpleMutexUnlock();
    return 4294954453;
  }

  v12 = (*(v10 + 32) + 4);
  while (*(v12 - 1) != a3)
  {
LABEL_6:
    v12 += 42;
    if (!--v11)
    {
      goto LABEL_7;
    }
  }

  if (a2)
  {
    --a2;
    goto LABEL_6;
  }

  v14 = *v12;
  FigSimpleMutexUnlock();
  if (!v14)
  {
    return 4294954453;
  }

  if (a5)
  {
    *a5 = v14;
  }

  return composite_formatReader_CopyTrackByID(a1, v14, a4, 0);
}

uint64_t compositionTable_getMaxEditRate(void *a1, int a2, float *a3)
{
  v62 = *MEMORY[0x1E69E9840];
  cf = 0;
  v57 = 0;
  FigSimpleMutexLock();
  v6 = a1[2];
  if (v6 < 1)
  {
LABEL_5:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v45, v46, v49);
LABEL_6:
    v9 = v8;
  }

  else
  {
    v7 = (a1[4] + 8);
    while (*(v7 - 1) != a2)
    {
      v7 += 21;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    if (*v7 >= 1)
    {
      v9 = 0;
      HIDWORD(v53) = 0;
      v10 = 0;
      v11 = *MEMORY[0x1E695E480];
      v12 = @"MaxEditRate";
      v13 = 1.0;
      v14 = 72;
      while (1)
      {
        v15 = v7[1] + v14;
        if ((*(v15 - 60) & 0x1D) == 1)
        {
          v8 = compositionTable_copyConcreteTrackReaderForAssetURLTrackIDMediaType(a1, *(v15 + 24), *(v15 + 32), *(v7 - 2), v11, &v57);
          if (v8)
          {
            goto LABEL_6;
          }

          v16 = v57;
          FigTrackReaderGetFigBaseObject();
          if (*(*(CMBaseObjectGetVTable() + 8) + 48))
          {
            v17 = OUTLINED_FUNCTION_151_1();
            v19 = v18(v17);
            if (v19)
            {
              v9 = v19;
            }

            else
            {
              v52 = v12;
              HIDWORD(v55) = 1065353216;
              CFNumberGetValue(cf, kCFNumberFloat32Type, &v55 + 4);
              v20 = v7[1] + v14;
              v50 = *(v20 + 16);
              v60 = *(v20 - 48);
              v21 = *(v20 - 36);
              v61 = *(v20 - 40);
              v58 = *v20;
              v22 = *(v20 + 12);
              v59 = *(v20 + 8);
              if ((v21 & 0x1D) == 1 && (v22 & 0x1D) == 1)
              {
                OUTLINED_FUNCTION_80_7();
                time.epoch = v24;
                v47 = v24;
                if (CMTimeGetSeconds(&time) != 0.0 && OUTLINED_FUNCTION_35_16(v25, v26, v27, v28, v29, v30, v31, v32, v45, v47, v50, v52, v53, time.value, time.timescale, time.flags, time.epoch, v55, cf, v57, v58, v59) != 0.0)
                {
                  OUTLINED_FUNCTION_80_7();
                  time.epoch = v33;
                  Seconds = CMTimeGetSeconds(&time);
                  v43 = Seconds / OUTLINED_FUNCTION_35_16(v35, v36, v37, v38, v39, v40, v41, v42, v45, v48, v51, v52, v53, time.value, time.timescale, time.flags, time.epoch, v55, cf, v57, v58, v59);
                  *(&v55 + 1) = *(&v55 + 1) * v43;
                }
              }

              if (HIDWORD(v53))
              {
                v12 = v52;
                if (v13 < *(&v55 + 1))
                {
                  v13 = *(&v55 + 1);
                }
              }

              else
              {
                v13 = *(&v55 + 1);
                v12 = v52;
              }

              v9 = 0;
              HIDWORD(v53) = 1;
            }
          }

          else
          {
            v9 = 4294954514;
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (v16)
          {
            CFRelease(v16);
            v57 = 0;
          }
        }

        ++v10;
        v14 += 108;
        if (v10 >= *v7)
        {
          goto LABEL_35;
        }
      }
    }

    v9 = 0;
    v13 = 1.0;
LABEL_35:
    *a3 = v13;
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  return v9;
}

uint64_t compositionTable_copyTrackHasAudioSampleDependencyInformation(uint64_t a1, int a2, void *a3)
{
  v35 = 0;
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_54_18();
  if (v7 != v8)
  {
LABEL_5:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, v33, cf);
    v11 = v10;
    FigSimpleMutexUnlock();
    if (!v11)
    {
      goto LABEL_6;
    }

    return v11;
  }

  v9 = (*(a1 + 32) + 8);
  while (*(v9 - 1) != a2)
  {
    v9 += 21;
    if (!--v6)
    {
      goto LABEL_5;
    }
  }

  v15 = *v9;
  if (*v9 <= 0)
  {
    FigSimpleMutexUnlock();
    goto LABEL_6;
  }

  v16 = 0;
  v11 = 0;
  v17 = *MEMORY[0x1E695E480];
  v32 = *MEMORY[0x1E695E4D0];
  v18 = 1;
  do
  {
    v19 = v9[1] + v16;
    if ((*(v19 + 12) & 0x1D) != 1)
    {
      v20 = 1;
      goto LABEL_15;
    }

    v21 = *(v19 + 96);
    v22 = *(v19 + 104);
    cf = 0;
    v23 = compositionTable_copyConcreteTrackReaderForAssetURLTrackIDMediaType(a1, v21, v22, *(v9 - 2), v17, &v35);
    if (v23)
    {
      v11 = v23;
      v30 = v35;
      FigSimpleMutexUnlock();
      if (v30)
      {
        CFRelease(v30);
      }

      return v11;
    }

    v24 = v35;
    FigTrackReaderGetFigBaseObject();
    v26 = v25;
    v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v27)
    {
      v11 = v27(v26, @"HasAudioSampleDependencyInformation", v17, &cf);
      v28 = cf;
      if (v11)
      {
        v29 = 0;
      }

      else
      {
        v29 = cf == v32;
      }

      v20 = !v29;
      if (!cf)
      {
        goto LABEL_30;
      }

LABEL_29:
      CFRelease(v28);
      cf = 0;
      goto LABEL_30;
    }

    v20 = 1;
    v11 = 4294954514;
    v28 = cf;
    if (cf)
    {
      goto LABEL_29;
    }

LABEL_30:
    if (v24)
    {
      CFRelease(v24);
      v35 = 0;
    }

    v15 = *v9;
LABEL_15:
    if (v18 >= v15)
    {
      break;
    }

    ++v18;
    v16 += 108;
  }

  while ((v20 & 1) != 0);
  FigSimpleMutexUnlock();
  if (v11)
  {
    return v11;
  }

  if (!v20)
  {
    v12 = MEMORY[0x1E695E4D0];
    goto LABEL_7;
  }

LABEL_6:
  v12 = MEMORY[0x1E695E4C0];
LABEL_7:
  v13 = *v12;
  if (*v12)
  {
    v13 = CFRetain(v13);
  }

  v11 = 0;
  *a3 = v13;
  return v11;
}

uint64_t compositionTable_copyConcreteTrackReaderForAssetURLTrackIDMediaType(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const __CFAllocator *a5, CFTypeRef *a6)
{
  cf = 0;
  v20 = 0;
  v9 = compositionTable_copyFormatReaderForAssetURL(a1, a2, a5, &v20);
  if (v9)
  {
    v13 = v9;
    v10 = v20;
    if (v20)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (!a3)
  {
    v10 = v20;
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v14)
    {
      v12 = v14(v10, 0, a4, &cf, 0);
      if (v12)
      {
LABEL_7:
        v13 = v12;
        if (!v10)
        {
          goto LABEL_15;
        }

LABEL_14:
        CFRelease(v10);
        goto LABEL_15;
      }

      goto LABEL_11;
    }

LABEL_13:
    v13 = 4294954514;
    if (!v10)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v18 = 0;
  v10 = v20;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v11(v10, a3, &cf, &v18);
  if (v12)
  {
    goto LABEL_7;
  }

  if (v18 != a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v17, cf);
    goto LABEL_7;
  }

LABEL_11:
  v13 = 0;
  *a6 = cf;
  cf = 0;
  if (v10)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t compositeSuper_editCursorService_CreateCursorAtTrackTime(const void *a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *DerivedStorage;
  v21 = 0;
  FigSimpleMutexLock();
  v7 = *(v6 + 16);
  if (v7 < 1)
  {
LABEL_5:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19.value, v19.timescale, LODWORD(v19.epoch));
    v10 = v9;
    v11 = *(v6 + 4);
    FigSimpleMutexUnlock();
    if (v10)
    {
      return v10;
    }

    v12 = 0;
  }

  else
  {
    v8 = (*(v6 + 32) + 8);
    while (*(v8 - 1) != *(DerivedStorage + 8))
    {
      v8 += 21;
      if (!--v7)
      {
        goto LABEL_5;
      }
    }

    if (*v8 < 1)
    {
      FigSimpleMutexUnlock();
      return 4294954775;
    }

    v13 = 0;
    v14 = 156;
    do
    {
      v12 = v13++;
      if (v13 >= *v8)
      {
        break;
      }

      v15 = v8[1] + v14;
      v16 = *v15;
      time1.epoch = *(v15 + 16);
      *&time1.value = v16;
      OUTLINED_FUNCTION_130_0();
      v14 += 108;
    }

    while (CMTimeCompare(&time1, &v19) < 1);
    v11 = *(v6 + 4);
    FigSimpleMutexUnlock();
  }

  CFGetAllocator(a1);
  FigEditCursorGetClassID();
  v10 = CMDerivedObjectCreate();
  if (!v10)
  {
    v17 = CMBaseObjectGetDerivedStorage();
    *v17 = a1;
    CFRetain(a1);
    *(v17 + 8) = v12;
    *(v17 + 16) = v11;
    *a3 = v21;
  }

  return v10;
}

uint64_t compositeSuper_editCursor_Copy(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  CFGetAllocator(a1);
  FigEditCursorGetClassID();
  v2 = CMDerivedObjectCreate();
  if (!v2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v4 = OUTLINED_FUNCTION_20_27(DerivedStorage);
    v5 = CFRetain(v4);
    OUTLINED_FUNCTION_36_21(v5, v6, v7, v8, v9, v10, v11, v12, v14, 0);
  }

  return v2;
}

uint64_t compositeSuper_editCursor_GetEditSegment(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = CMBaseObjectGetDerivedStorage();
  v5 = *v4;
  FigSimpleMutexLock();
  if (*(v5 + 4) != *(DerivedStorage + 16))
  {
    goto LABEL_6;
  }

  v6 = *(v5 + 16);
  if (v6 < 1)
  {
    goto LABEL_6;
  }

  v7 = (*(v5 + 32) + 8);
  while (*(v7 - 1) != *(v4 + 8))
  {
    v7 += 21;
    if (!--v6)
    {
      goto LABEL_6;
    }
  }

  v12 = *(DerivedStorage + 8);
  if (v12 < 0 || v12 >= *v7)
  {
LABEL_6:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v9 = v8;
    FigSimpleMutexUnlock();
    if (!v9)
    {
      OUTLINED_FUNCTION_29();
      if (v10)
      {
        return 4294954511;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v13 = v7[1] + 108 * v12;
    v14 = OUTLINED_FUNCTION_627();
    memcpy(v14, v15, 0x60uLL);
    v9 = *(v13 + 96);
    v16 = *(v13 + 104);
    if (v9)
    {
      CFRetain(*(v13 + 96));
    }

    FigSimpleMutexUnlock();
    OUTLINED_FUNCTION_29();
    if (v10)
    {
      if (!v9)
      {
        return 4294954511;
      }

      v17 = *(v4 + 12);
      FigSimpleMutexLock();
      v18 = *(v5 + 144);
      if (v18 < 2)
      {
        v20 = 1;
      }

      else
      {
        v19 = 0;
        v20 = 1;
        while (1)
        {
          v21 = *(*(v5 + 136) + v19 + 16);
          if (v21)
          {
            if (CFEqual(v21, v9))
            {
              v22 = *(v5 + 136) + v19;
              if (*(v22 + 24) == v16 && *(v22 + 28) == v17)
              {
                break;
              }
            }
          }

          ++v20;
          v18 = *(v5 + 144);
          v19 += 16;
          if (v20 >= v18)
          {
            goto LABEL_29;
          }
        }

        v18 = *(v5 + 144);
      }

LABEL_29:
      if (v20 == v18)
      {
        *(v5 + 144) = v18 + 1;
        v23 = *(v5 + 128);
        if (v18 >= v23)
        {
          v24 = 2 * v23;
          OUTLINED_FUNCTION_82_7();
          v26 = malloc_type_calloc(v24, 0x10uLL, v25);
          memcpy(v26, *(v5 + 136), 16 * *(v5 + 128));
          free(*(v5 + 136));
          *(v5 + 128) = v24;
          *(v5 + 136) = v26;
        }

        v27 = CFRetain(v9);
        v28 = *(v5 + 136) + 16 * v18;
        *v28 = v27;
        *(v28 + 8) = v16;
        *(v28 + 12) = v17;
      }

      FigSimpleMutexUnlock();
      *(a2 + 16) = v20;
    }

    if (v9)
    {
      CFRelease(v9);
      return 0;
    }
  }

  return v9;
}

uint64_t compositeProxy_editCursorService_CreateCursorAtTrackTime()
{
  OUTLINED_FUNCTION_207();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v51 = 0;
  v52 = 0;
  v49 = 0;
  v50 = 0;
  cf = 0;
  v4 = *(MEMORY[0x1E6960C98] + 16);
  v46 = *MEMORY[0x1E6960C98];
  *v47 = v4;
  *&v47[16] = *(MEMORY[0x1E6960C98] + 32);
  v45 = 0;
  *v0 = 0;
  v5 = *(v1 + 2);
  *(v1 + 2) = 0;
  v6 = *(*DerivedStorage + 4);
  v7 = DerivedStorage[2];
  CFGetAllocator(v2);
  v8 = OUTLINED_FUNCTION_151_1();
  v12 = compositionTable_copyConcreteTrackReaderForEpoch(v8, v9, v7, v10, v11);
  if (v12 == -12843)
  {
    v13 = 0;
    v14 = 4294954775;
    goto LABEL_36;
  }

  v14 = v12;
  if (v12)
  {
    goto LABEL_35;
  }

  v15 = v52;
  v16 = CFGetAllocator(v2);
  FigTrackReaderGetFigBaseObject();
  v18 = v17;
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v19)
  {
    goto LABEL_11;
  }

  v20 = v19(v18, @"EditCursorService", v16, &v51);
  if (v20 == -12784)
  {
    CFGetAllocator(v2);
    FigEditCursorGetClassID();
    v23 = CMDerivedObjectCreate();
    if (!v23)
    {
      v27 = CMBaseObjectGetDerivedStorage();
      *v27 = *DerivedStorage;
      FigAtomicIncrement32();
      v27[1] = v5;
      v26 = v27 + 2;
      goto LABEL_14;
    }

    goto LABEL_34;
  }

  v14 = v20;
  if (v20)
  {
LABEL_35:
    v13 = 0;
    goto LABEL_36;
  }

  v21 = v51;
  v43 = *v1;
  v44 = *(v1 + 2);
  v22 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v22)
  {
LABEL_11:
    v13 = 0;
    v14 = 4294954514;
    goto LABEL_36;
  }

  *v40 = v43;
  *&v41 = v44;
  v23 = v22(v21, v40, &v50);
  if (v23 || (CFGetAllocator(v2), FigEditCursorGetClassID(), v23 = CMDerivedObjectCreate(), v23))
  {
LABEL_34:
    v14 = v23;
    goto LABEL_35;
  }

  v24 = CMBaseObjectGetDerivedStorage();
  *v24 = *DerivedStorage;
  FigAtomicIncrement32();
  v25 = v50;
  v50 = 0;
  v24[1] = v25;
  v24[2] = v5;
  v26 = v24 + 3;
LABEL_14:
  *v26 = v6;
  if (DerivedStorage[2] != 1936684398)
  {
    goto LABEL_30;
  }

  FigTrackReaderGetFigBaseObject();
  v29 = v28;
  v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v30)
  {
    v30(v29, @"EditsExcludePrimingAndRemainderDuration", *MEMORY[0x1E695E480], &cf);
  }

  if (cf == *MEMORY[0x1E695E4D0])
  {
LABEL_30:
    v13 = 0;
    goto LABEL_31;
  }

  v31 = *DerivedStorage;
  v32 = CFGetAllocator(v2);
  v40[0] = 0;
  if (v5 < 1 || *(v31 + 144) <= v5)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40[0], LODWORD(v40[1]), v41);
    v13 = 0;
    if (TrackGaplessSourceTimeRange)
    {
      goto LABEL_52;
    }

    goto LABEL_21;
  }

  v33 = compositionTable_copyFormatReaderForAssetURL(v31, *(*(v31 + 136) + 16 * v5), v32, v40);
  v13 = v40[0];
  if (v33)
  {
    v14 = v33;
    if (v40[0])
    {
      CFRelease(v40[0]);
    }

    goto LABEL_35;
  }

LABEL_21:
  TrackGaplessSourceTimeRange = FigGaplessInfoGetTrackGaplessSourceTimeRange(v13, v15, &v46);
  if (!TrackGaplessSourceTimeRange)
  {
    if ((BYTE12(v46) & 0x1D) == 1 || (v47[20] & 0x1D) == 1)
    {
      if ((BYTE12(v46) & 1) == 0)
      {
        v46 = *MEMORY[0x1E6960CC0];
        *v47 = *(MEMORY[0x1E6960CC0] + 16);
      }

      if ((v47[20] & 1) == 0)
      {
        *&v47[8] = *MEMORY[0x1E6960C88];
        *&v47[24] = *(MEMORY[0x1E6960C88] + 16);
      }

      *(v1 + 2) = v5;
      v35 = v49;
      v36 = CFGetAllocator(v2);
      *v40 = v46;
      v41 = *v47;
      v37 = *v1;
      v42 = *&v47[16];
      v43 = v37;
      v44 = *(v1 + 2);
      TrackGaplessSourceTimeRange = FigGaplessAudioEditCursorCreate(v35, v40, &v43, v36, &v45);
      if (!TrackGaplessSourceTimeRange)
      {
        v38 = v45;
LABEL_33:
        v14 = 0;
        *v0 = v38;
        v45 = 0;
        goto LABEL_36;
      }

      goto LABEL_52;
    }

LABEL_31:
    v38 = v49;
    if (v49)
    {
      v38 = CFRetain(v49);
    }

    goto LABEL_33;
  }

LABEL_52:
  v14 = TrackGaplessSourceTimeRange;
LABEL_36:
  if (v52)
  {
    CFRelease(v52);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  return v14;
}

uint64_t compositeProxy_editCursor_Copy(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v5 = *(DerivedStorage + 8);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v6)
  {
    v7 = v6(v5, &cf);
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      CFGetAllocator(a1);
      FigEditCursorGetClassID();
      v8 = CMDerivedObjectCreate();
      if (!v8)
      {
        v9 = CMBaseObjectGetDerivedStorage();
        OUTLINED_FUNCTION_20_27(v9);
        FigAtomicIncrement32();
        v10 = cf;
        cf = 0;
        v11 = *(DerivedStorage + 16);
        *(a1 + 8) = v10;
        *(a1 + 16) = v11;
        *(a1 + 24) = *(DerivedStorage + 24);
        *a2 = 0;
      }
    }
  }

  else
  {
    v8 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t compositeProxy_editCursor_GetEditSegment(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(*(CMBaseObjectGetVTable() + 16) + 24))
  {
    return 4294954514;
  }

  v4 = OUTLINED_FUNCTION_235();
  result = v5(v4);
  if (!result)
  {
    v7 = *(DerivedStorage + 16);
    *(a2 + 64) = v7;
    *(a2 + 16) = v7;
  }

  return result;
}

uint64_t compositeSimple_editCursor_Copy(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  CFGetAllocator(a1);
  FigEditCursorGetClassID();
  v2 = CMDerivedObjectCreate();
  if (!v2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_20_27(DerivedStorage);
    v4 = FigAtomicIncrement32();
    OUTLINED_FUNCTION_36_21(v4, v5, v6, v7, v8, v9, v10, v11, v13, 0);
  }

  return v2;
}

uint64_t compositeProxy_sampleCursorService_CreateCursorAtPresentationTimeStamp(uint64_t a1, __int128 *a2, void *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v36 = 0;
  cf = 0;
  v34 = 0;
  v35 = 0;
  *a3 = 0;
  v11 = *(a2 + 2);
  *(a2 + 2) = 0;
  v12 = *DerivedStorage;
  v13 = *(*DerivedStorage + 4);
  v14 = DerivedStorage[3];
  v15 = CFGetAllocator(a1);
  v16 = compositionTable_copyConcreteTrackReaderForEpoch(v12, v11, v14, v15, &cf);
  if (v16 == -12843)
  {
    ProxySampleCursor = 4294954454;
    goto LABEL_13;
  }

  ProxySampleCursor = v16;
  if (!v16)
  {
    v18 = cf;
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v19 || v19(v18, &v36))
    {
      CFGetAllocator(a1);
      OUTLINED_FUNCTION_203_0();
      FigTrackReaderGetFigBaseObject();
      v21 = v20;
      v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v22)
      {
        goto LABEL_12;
      }

      v23 = v22(v21, @"CaptionSampleCursorService", v14, &v36);
      if (v23)
      {
        goto LABEL_22;
      }
    }

    v24 = v36;
    v32 = *a2;
    v33 = *(a2 + 2);
    v25 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v25)
    {
      v38 = v32;
      v39 = v33;
      v23 = v25(v24, &v38, &v35, a4, a5);
      if (!v23)
      {
        v26 = v35;
        v27 = CFGetAllocator(a1);
        ProxySampleCursor = compositeProxy_createProxySampleCursor(v26, v27, &v34);
        if (!ProxySampleCursor)
        {
          v28 = CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_20_27(v28);
          FigAtomicIncrement32();
          v29 = v34;
          v30 = v35;
          v34 = 0;
          v35 = 0;
          *(a1 + 8) = DerivedStorage[2];
          *(a1 + 16) = v30;
          *(a1 + 24) = v11;
          *(a1 + 32) = v13;
          *a3 = v29;
        }

        goto LABEL_13;
      }

LABEL_22:
      ProxySampleCursor = v23;
      goto LABEL_13;
    }

LABEL_12:
    ProxySampleCursor = 4294954514;
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  return ProxySampleCursor;
}

uint64_t compositeProxy_sampleCursorService_CreateCursorNearPresentationTimeStamp(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4, uint64_t a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v34 = 0;
  cf = 0;
  v32 = 0;
  v33 = 0;
  *a4 = 0;
  v13 = *(a2 + 16);
  *(a2 + 16) = 0;
  v14 = *DerivedStorage;
  v29 = *(*DerivedStorage + 4);
  v15 = DerivedStorage[3];
  v16 = CFGetAllocator(a1);
  v17 = compositionTable_copyConcreteTrackReaderForEpoch(v14, v13, v15, v16, &cf);
  if (v17 == -12843)
  {
    ProxySampleCursor = 4294954454;
    goto LABEL_11;
  }

  ProxySampleCursor = v17;
  if (!v17)
  {
    v19 = cf;
    v20 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v20)
    {
      v21 = v20(v19, &v34);
      if (v21)
      {
        goto LABEL_20;
      }

      v22 = v34;
      OUTLINED_FUNCTION_68_11();
      v23 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v23)
      {
        v36 = v30;
        v37 = v31;
        v21 = v23(v22, &v36, a3, &v33, a5, a6);
        if (!v21)
        {
          v24 = v33;
          v25 = CFGetAllocator(a1);
          ProxySampleCursor = compositeProxy_createProxySampleCursor(v24, v25, &v32);
          if (!ProxySampleCursor)
          {
            v26 = CMBaseObjectGetDerivedStorage();
            OUTLINED_FUNCTION_20_27(v26);
            FigAtomicIncrement32();
            v27 = v33;
            *(a1 + 8) = DerivedStorage[2];
            *(a1 + 16) = v27;
            *(a1 + 24) = v13;
            *(a1 + 32) = v29;
            *a4 = v32;
            v32 = 0;
            v33 = 0;
          }

          goto LABEL_11;
        }

LABEL_20:
        ProxySampleCursor = v21;
        goto LABEL_11;
      }
    }

    ProxySampleCursor = 4294954514;
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  return ProxySampleCursor;
}

uint64_t compositeProxy_sampleCursor_GetPresentationTimeStamp(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(*(CMBaseObjectGetVTable() + 16) + 40))
  {
    return 4294954514;
  }

  v4 = OUTLINED_FUNCTION_235();
  result = v5(v4);
  if (!result)
  {
    *(a2 + 16) = *(DerivedStorage + 24);
  }

  return result;
}

uint64_t compositeProxy_sampleCursor_GetDecodeTimeStamp(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(*(CMBaseObjectGetVTable() + 16) + 48))
  {
    return 4294954514;
  }

  v4 = OUTLINED_FUNCTION_235();
  result = v5(v4);
  if (!result)
  {
    *(a2 + 16) = *(DerivedStorage + 24);
  }

  return result;
}

uint64_t compositeProxy_sampleCursor_CreateSampleBuffer()
{
  OUTLINED_FUNCTION_207();
  sampleBufferOut = 0;
  sbuf = 0;
  v27 = 0;
  cf = 0;
  timingArrayEntriesNeededOut = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (v1)
  {
    v5 = CMBaseObjectGetDerivedStorage();
    v6 = *(v4 + 16);
    if (v5)
    {
      v7 = *(v5 + 16);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v6 = *(DerivedStorage + 16);
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (!v8)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v10 = 4294954514;
    goto LABEL_29;
  }

  SampleTimingInfoArray = v8(v6, v7, &sbuf);
  if (SampleTimingInfoArray)
  {
    goto LABEL_12;
  }

  SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(sbuf, 0, 0, &timingArrayEntriesNeededOut);
  if (SampleTimingInfoArray)
  {
    goto LABEL_12;
  }

  if (timingArrayEntriesNeededOut)
  {
    if (timingArrayEntriesNeededOut > 0x38E38E38E38E38ELL)
    {
LABEL_11:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, timingArrayEntriesNeededOut, v27);
LABEL_12:
      v10 = SampleTimingInfoArray;
      v11 = 0;
      v12 = 0;
LABEL_13:
      v13 = 0;
      goto LABEL_29;
    }

    v14 = 72 * timingArrayEntriesNeededOut;
  }

  else
  {
    v14 = 0;
  }

  v15 = malloc_type_malloc(v14, 0x1000040FF89C88EuLL);
  if (!v15)
  {
    goto LABEL_11;
  }

  v12 = v15;
  v16 = CMSampleBufferGetSampleTimingInfoArray(sbuf, timingArrayEntriesNeededOut, v15, 0);
  if (v16)
  {
    goto LABEL_40;
  }

  v17 = timingArrayEntriesNeededOut;
  if (timingArrayEntriesNeededOut)
  {
    v18 = *(v4 + 24);
    p_epoch = &v12->decodeTimeStamp.epoch;
    do
    {
      *(p_epoch - 3) = v18;
      *p_epoch = v18;
      p_epoch += 9;
      --v17;
    }

    while (v17);
  }

  v20 = CFGetAllocator(sbuf);
  v16 = CMSampleBufferCreateCopyWithNewTiming(v20, sbuf, timingArrayEntriesNeededOut, v12, &sampleBufferOut);
  if (v16)
  {
LABEL_40:
    v10 = v16;
    v11 = 0;
    goto LABEL_13;
  }

  v13 = compositeProxy_sampleCursor_copyFormatDescriptionReplacementTable(v2);
  FormatDescription = CMSampleBufferGetFormatDescription(sampleBufferOut);
  mutableComposition_copyReplacedFormatDescription(v13, FormatDescription, &v27);
  v11 = v27;
  if (v27 == FormatDescription)
  {
    v23 = sampleBufferOut;
    if (sampleBufferOut)
    {
      CFRetain(sampleBufferOut);
    }

    goto LABEL_28;
  }

  CFGetAllocator(sbuf);
  CopyWithNewFormatDescription = FigSampleBufferCreateCopyWithNewFormatDescription();
  if (!CopyWithNewFormatDescription)
  {
    v23 = cf;
LABEL_28:
    v10 = 0;
    *v0 = v23;
    cf = 0;
    goto LABEL_29;
  }

  v10 = CopyWithNewFormatDescription;
LABEL_29:
  if (sbuf)
  {
    CFRelease(sbuf);
  }

  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  free(v12);
  return v10;
}

uint64_t compositeProxy_sampleCursor_CopyFormatDescription(uint64_t a1, CFTypeRef *a2)
{
  cf = 0;
  v11 = 0;
  v4 = *(CMBaseObjectGetDerivedStorage() + 16);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 160);
  if (v5)
  {
    v6 = v5(v4, &v11);
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v7 = compositeProxy_sampleCursor_copyFormatDescriptionReplacementTable(a1);
      mutableComposition_copyReplacedFormatDescription(v7, v11, &cf);
      if (a2)
      {
        *a2 = cf;
        cf = 0;
      }

      if (v7)
      {
        CFRelease(v7);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v8;
}

CFTypeRef compositeProxy_sampleCursor_copyFormatDescriptionReplacementTable(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *DerivedStorage;
  if (DerivedStorage[8] == *(*DerivedStorage + 4) && (v3 = *(v2 + 16), v3 >= 1))
  {
    v4 = (*(v2 + 32) + 112);
    while (*(v4 - 27) != DerivedStorage[2])
    {
      v4 += 21;
      if (!--v3)
      {
        goto LABEL_6;
      }
    }

    v5 = *v4;
    if (*v4)
    {
      CFRetain(*v4);
    }
  }

  else
  {
LABEL_6:
    v5 = 0;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t compositionSharedCache_copyFormatReaderForAssetURL(uint64_t a1, const void *a2, const __CFAllocator *a3, uint64_t a4)
{
  cf = 0;
  v5 = compositionSharedCache_copyAssetForAssetURL(a1, a2, a3, &cf);
  v6 = cf;
  if (v5)
  {
LABEL_4:
    v11 = v5;
    if (!v6)
    {
      return v11;
    }

    goto LABEL_7;
  }

  v7 = CFGetAllocator(cf);
  FigAssetGetCMBaseObject();
  v9 = v8;
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v10)
  {
    v5 = v10(v9, @"assetProperty_FormatReader", v7, a4);
    goto LABEL_4;
  }

  v11 = 4294954514;
  if (v6)
  {
LABEL_7:
    CFRelease(v6);
  }

  return v11;
}

uint64_t compositionTableTrack_copyTrackFormatDescriptionArrayForTrackCompatibility(uint64_t a1, unint64_t a2)
{
  cf = 0;
  v20 = 0;
  if (*(a1 + 32) > a2)
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_16_34();
  if (!(!v6 & v5))
  {
    v18 = 4294954516;
    goto LABEL_8;
  }

  v7 = v4;
  v8 = *(v3 + 1);
  if (v8 < 1 || (v9 = *(v3 + 2) + 108 * v8, (v10 = *(v9 - 12)) == 0))
  {
    v11 = 0;
LABEL_7:
    v18 = 0;
    *v7 = v11;
    v20 = 0;
    goto LABEL_8;
  }

  v13 = *MEMORY[0x1E695E480];
  v14 = compositionTable_copyConcreteTrackReaderForAssetURLTrackIDMediaType(v2, v10, *(v9 - 4), *v3, *MEMORY[0x1E695E480], &cf);
  if (v14)
  {
    v18 = v14;
  }

  else
  {
    FigTrackReaderGetFigBaseObject();
    v16 = v15;
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v17)
    {
      v18 = v17(v16, @"TrackFormatDescriptionArray", v13, &v20);
      v11 = v20;
      if (v18)
      {
        if (v20)
        {
          CFRelease(v20);
        }

        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v18 = 4294954514;
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v18;
}

void mutableCompositionTrack_setMetadata(void *a1, const __CFArray *a2, __CFDictionary *a3)
{
  theArray = 0;
  allocator = *MEMORY[0x1E695E480];
  v5 = compositionTableTrack_createAvailableMetadataReaderPropertiesArray(*MEMORY[0x1E695E480], a1, &theArray);
  v6 = theArray;
  if (!v5)
  {
    v7 = MEMORY[0x1E695E4D0];
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v9 = Count;
        v10 = 0;
        v11 = *v7;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v6, v10);
          CFDictionarySetValue(a3, ValueAtIndex, v11);
          ++v10;
        }

        while (v9 != v10);
      }
    }

    compositionTableTrack_releaseAndClearMetadata(a1);
    if (a2)
    {
      v13 = CFArrayGetCount(a2);
      v14 = *v7;
      if (v13 >= 1)
      {
        v15 = v13;
        value = *v7;
        for (i = 0; i != v15; ++i)
        {
          v17 = CFArrayGetValueAtIndex(a2, i);
          if (v17)
          {
            v18 = v17;
            v19 = CFGetTypeID(v17);
            if (v19 == CFDictionaryGetTypeID())
            {
              v20 = CFDictionaryGetValue(v18, @"format");
              v21 = CFDictionaryGetValue(v18, @"items");
              if (v20)
              {
                v22 = v21;
                if (v21)
                {
                  v23 = @"QuickTimeMetadataReader";
                  if (!FigCFEqual())
                  {
                    v23 = @"QuickTimeUserDataReader";
                    if (!FigCFEqual())
                    {
                      if (FigCFEqual())
                      {
                        v23 = @"ISOUserDataReader";
                      }

                      else
                      {
                        v23 = 0;
                      }
                    }
                  }

                  Mutable = a1[9];
                  if (!Mutable)
                  {
                    Mutable = CFDictionaryCreateMutable(allocator, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    a1[9] = Mutable;
                  }

                  CFDictionarySetValue(Mutable, v20, v22);
                  if (v23)
                  {
                    v25 = OUTLINED_FUNCTION_627();
                    CFDictionarySetValue(v25, v26, value);
                  }
                }
              }
            }
          }
        }

        v14 = value;
      }
    }

    else
    {
      v14 = *v7;
    }

    CFDictionarySetValue(a3, @"MetadataReaderTypes", v14);
    CFDictionarySetValue(a3, @"MetadataReaders", v14);
  }

  if (v6)
  {

    CFRelease(v6);
  }
}

double compositionTable_insertAssetSegmentIntoTrack(uint64_t a1, unint64_t a2, uint64_t a3, int a4, __int128 *a5, uint64_t a6, __n128 *a7)
{
  memset(v46, 0, 44);
  v45 = 0u;
  v43 = 0u;
  memset(v44, 0, sizeof(v44));
  v14 = MEMORY[0x1E6960CC0];
  if ((*(a5 + 3) & 0x1D) != 1 || (*&time1.start.value = *a5, time1.start.epoch = *(a5 + 2), OUTLINED_FUNCTION_68_11(), (CMTimeCompare(&time1.start, &time2) & 0x80000000) == 0))
  {
    *&time1.start.value = *a6;
    time1.start.epoch = *(a6 + 16);
    v41 = *v14;
    *&time2.value = *v14;
    v16 = *(v14 + 2);
    time2.epoch = v16;
    if (CMTimeCompare(&time1.start, &time2) >= 1)
    {
      OUTLINED_FUNCTION_350();
      if (v19 || (v17 & 1) == 0)
      {
        if (v18 == 1 && (*&time1.start.value = *a7, time1.start.epoch = a7[1].n128_i64[0], *&time2.value = v41, time2.epoch = v16, CMTimeCompare(&time1.start, &time2) < 0))
        {
          fig_log_get_emitter();
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v41, DWORD2(v41), LODWORD(time2.value));
        }

        else if (*(a1 + 32) <= a2)
        {
          OUTLINED_FUNCTION_25_24();
          if (v20 > a2)
          {
            OUTLINED_FUNCTION_29();
            if (!v19)
            {
              *&time2.value = v41;
              time2.epoch = v16;
              OUTLINED_FUNCTION_43_16();
              if (v32 == v33)
              {
                v34 = OUTLINED_FUNCTION_2_126(v29);
                *&time1.start.epoch = v35;
                *&time1.duration.timescale = v36;
                *&time1.start.value = v34;
                End = CMTimeRangeGetEnd(&time2, &time1);
              }

              *a7 = OUTLINED_FUNCTION_361_0(End, v22, v23, v24, v25, v26, v27, v28, v30, v41, *(&v41 + 1), v31, time2.value);
              a7[1].n128_u64[0] = v37;
            }

            v45 = *a7;
            *&v46[0] = a7[1].n128_u64[0];
            *(v46 + 8) = *a6;
            v38 = *(a6 + 16);
            v43 = *a5;
            *&v44[0] = *(a5 + 2);
            *(&v44[1] + 1) = v38;
            *(v44 + 8) = *(v46 + 8);
            *(&v46[1] + 1) = v38;
            *&v46[2] = a3;
            DWORD2(v46[2]) = a4;
            v39 = OUTLINED_FUNCTION_235();
            compositionTable_insertEditSegmentsIntoTrack(v39, v40);
          }
        }
      }
    }
  }

  return result;
}

uint64_t compositionTable_insertEditSegmentsIntoTrack(uint64_t a1, unint64_t a2)
{
  v125 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) > a2)
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_16_34();
  if (!(!v14 & v13))
  {
    return 4294954516;
  }

  v15 = v7;
  if (v7 < 1)
  {
    return 0;
  }

  v16 = v6;
  v17 = *(a2 + 8);
  v123 = *(v6 + 48);
  v18 = *(v6 + 60);
  v124 = *(v6 + 56);
  v19 = *MEMORY[0x1E6960CC0];
  v105 = *MEMORY[0x1E6960CC0];
  *&lhs.start.value = *MEMORY[0x1E6960CC0];
  v20 = *(MEMORY[0x1E6960CC0] + 16);
  lhs.start.epoch = v20;
  if (v17 >= 1)
  {
    OUTLINED_FUNCTION_23_34();
    v23 = v21 + v17 * v22;
    v24 = *(v23 - 60);
    v25 = *(v23 - 28);
    *&range.start.epoch = *(v23 - 44);
    *&range.duration.timescale = v25;
    *&range.start.value = v24;
    End = CMTimeRangeGetEnd(&lhs.start, &range);
  }

  OUTLINED_FUNCTION_361_0(End, v5, v6, v7, v8, v9, v10, v11, v19, v105, *(&v105 + 1), v12, lhs.start.value);
  if ((v18 & 1) == 0 || (v34 = OUTLINED_FUNCTION_31_21(v26, v27, v28, v29, v30, v31, v32, v33, v106, v109, *&lhs.start.value, lhs.start.epoch, lhs.duration.value, *&lhs.duration.timescale, lhs.duration.epoch, v112.value, *&v112.timescale, v112.epoch, v113, v114.value, *&v114.timescale, v114.epoch, v115, v116.value, *&v116.timescale, v116.epoch, v117, rhs.value, *&rhs.timescale, rhs.epoch, v119, range.start.value, range.start.timescale, range.start.flags, range.start.epoch), !v34))
  {
    if (*(a2 + 8) >= 1)
    {
      OUTLINED_FUNCTION_51_17();
      compositionEditSegment_copySegmentsAndAddURLsToBag(&range, v16, 1, 0);
      v62 = *(a2 + 16) + 108 * *(a2 + 8) - 108;
      v63 = compositionEditSegment_combineEditSegmentsIfPossible(v62, &range, v62, 0);
      if (v63)
      {
        v64 = 108;
      }

      else
      {
        v64 = 0;
      }

      v15 -= v63 != 0;
      v16 += v64;
      compositionEditSegment_releaseSegmentsAndRemoveURLsFromBag(&range, 1, 0);
    }

    OUTLINED_FUNCTION_79_10();
    while (1)
    {
      v42 = v15-- < 1;
      if (v42)
      {
        break;
      }

      OUTLINED_FUNCTION_77_9();
      if (v14)
      {
        v65 = OUTLINED_FUNCTION_298();
        result = compositionTable_insertUninitializedEditsIntoTrack(v65, v66, v67, v68);
        if (result)
        {
          return result;
        }

        OUTLINED_FUNCTION_23_34();
        v61 = (v69 + v17 * v70);
        v60 = *(a1 + 40);
LABEL_31:
        compositionEditSegment_copySegmentsAndAddURLsToBag(v61, v16, v15 + 1, v60);
        return 0;
      }
    }

    return 0;
  }

  if (OUTLINED_FUNCTION_31_21(v34, v35, v36, v37, v38, v39, v40, v41, v107, v110, *&lhs.start.value, lhs.start.epoch, lhs.duration.value, *&lhs.duration.timescale, lhs.duration.epoch, v112.value, *&v112.timescale, v112.epoch, v113, v114.value, *&v114.timescale, v114.epoch, v115, v116.value, *&v116.timescale, v116.epoch, v117, rhs.value, *&rhs.timescale, rhs.epoch, v119, range.start.value, range.start.timescale, range.start.flags, range.start.epoch) >= 1)
  {
    while ((*(v16 + 12) & 0x1D) != 1)
    {
      v16 += 108;
      v42 = v15-- <= 1;
      if (v42)
      {
        v15 = 0;
        break;
      }
    }

    OUTLINED_FUNCTION_79_10();
    while (1)
    {
      v42 = v15-- < 1;
      if (v42)
      {
        return 0;
      }

      OUTLINED_FUNCTION_77_9();
      if (v14)
      {
        v123 = *(v16 + 48);
        v124 = *(v16 + 56);
        v43 = OUTLINED_FUNCTION_298();
        result = compositionTable_insertUninitializedEditsIntoTrack(v43, v44, v45, v46);
        if (result)
        {
          return result;
        }

        OUTLINED_FUNCTION_23_34();
        v49 = v17 * v48;
        v51 = v50 + v49;
        *(v51 + 48) = v121;
        *(v51 + 64) = v122;
        v52 = *(a2 + 16) + v49;
        OUTLINED_FUNCTION_55_17();
        *&rhs.value = v53;
        rhs.epoch = v54;
        CMTimeSubtract(&range.start, &lhs.start, &rhs);
        v55 = *&range.start.value;
        *(v52 + 88) = range.start.epoch;
        *(v52 + 72) = v55;
        v56 = *(a2 + 16) + v49;
        v57 = MEMORY[0x1E6960C70];
        *v56 = *MEMORY[0x1E6960C70];
        *(v56 + 16) = *(v57 + 16);
        v58 = *(a2 + 16) + v49;
        *(v58 + 24) = v108;
        *(v58 + 40) = v20;
        v59 = *(a2 + 16) + v49;
        *(v59 + 96) = 0;
        *(v59 + 104) = 0;
        v60 = *(a1 + 40);
        v61 = (v59 + 108);
        goto LABEL_31;
      }
    }
  }

  OUTLINED_FUNCTION_51_17();
  *&rhs.value = v108;
  rhs.epoch = v20;
  *&v116.value = v108;
  v71 = 72;
  v72 = v15;
  v116.epoch = v20;
  do
  {
    lhs.start = v116;
    OUTLINED_FUNCTION_169(v16 + v71);
    CMTimeAdd(&v116, &lhs.start, &v114);
    v71 += 108;
    --v72;
  }

  while (v72);
  OUTLINED_FUNCTION_55_17();
  v73 = OUTLINED_FUNCTION_298();
  EditIndexStartingAtTimeInTrackSplitEditIfNecessary = compositionTable_findEditIndexStartingAtTimeInTrackSplitEditIfNecessary(v73, v74);
  if (EditIndexStartingAtTimeInTrackSplitEditIfNecessary < 0)
  {
    return 4294954516;
  }

  v76 = EditIndexStartingAtTimeInTrackSplitEditIfNecessary;
  if (EditIndexStartingAtTimeInTrackSplitEditIfNecessary >= *(a2 + 8))
  {
    return 4294954516;
  }

  v77 = EditIndexStartingAtTimeInTrackSplitEditIfNecessary - 1;
  if (EditIndexStartingAtTimeInTrackSplitEditIfNecessary)
  {
    v78 = EditIndexStartingAtTimeInTrackSplitEditIfNecessary - 1;
  }

  else
  {
    v78 = 0;
  }

  OUTLINED_FUNCTION_23_34();
  v81 = v79 + v76 * v80;
  v82 = *(v81 + 48);
  v114.epoch = *(v81 + 64);
  *&v114.value = v82;
  v112 = v116;
  CMTimeAdd(&lhs.start, &v114, &v112);
  v83 = *&lhs.start.value;
  *(v81 + 64) = lhs.start.epoch;
  *(v81 + 48) = v83;
  if (!v76)
  {
    v84 = 0;
    goto LABEL_47;
  }

  compositionEditSegment_copySegmentsAndAddURLsToBag(&range, v16, 1, *(a1 + 40));
  OUTLINED_FUNCTION_23_34();
  if (!compositionEditSegment_combineEditSegmentsIfPossible(v85 + v77 * v86, &range, v85 + v77 * v86, *(a1 + 40)) || (v16 += 108, --v15, v15))
  {
LABEL_46:
    compositionEditSegment_releaseSegmentsAndRemoveURLsFromBag(&range, 1, *(a1 + 40));
    v84 = v76;
LABEL_47:
    v91 = v15 - 1;
    if (v15 >= 1)
    {
      compositionEditSegment_copySegmentsAndAddURLsToBag(&range, (v16 + 108 * v91), 1, *(a1 + 40));
      v92 = compositionEditSegment_combineEditSegmentsIfPossible(&range, *(a2 + 16) + 108 * v84, *(a2 + 16) + 108 * v84, *(a1 + 40));
      compositionEditSegment_releaseSegmentsAndRemoveURLsFromBag(&range, 1, *(a1 + 40));
      if (!v92 || (--v15, v91))
      {
        v93 = OUTLINED_FUNCTION_298();
        result = compositionTable_insertUninitializedEditsIntoTrack(v93, v94, v84, v15);
        if (result)
        {
          return result;
        }

        OUTLINED_FUNCTION_23_34();
        compositionEditSegment_copySegmentsAndAddURLsToBag((v95 + v84 * v96), v16, v15, *(a1 + 40));
        v84 = v84 + v15 - 1;
      }
    }

    OUTLINED_FUNCTION_23_34();
    v99 = OUTLINED_FUNCTION_64_11((v97 + v84 * v98));
    *&lhs.start.epoch = v100;
    *&lhs.duration.timescale = v101;
    *&lhs.start.value = v99;
    CMTimeRangeGetEnd(&rhs, &lhs);
    lhs.start = rhs;
    compositionTableTrack_updateTrackStartTimes(a2, v84 + 1, &lhs.start.value);
    v102 = OUTLINED_FUNCTION_298();
    compositionTable_deleteEditsWithZeroDuration(v102, v103, v78, v104);
    return 0;
  }

  OUTLINED_FUNCTION_23_34();
  if (!compositionEditSegment_combineEditSegmentsIfPossible(v87 + v77 * v88, v87 + v76 * v88, v87 + v77 * v88, *(a1 + 40)) || (v89 = OUTLINED_FUNCTION_298(), result = compositionTable_deleteEditsFromTrack(v89, v90), !result))
  {
    v15 = 0;
    --v76;
    goto LABEL_46;
  }

  return result;
}

uint64_t compositionTable_insertUninitializedEditsIntoTrack(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (v4 > a2)
  {
    return 4294954516;
  }

  result = 4294954516;
  if ((a3 & 0x8000000000000000) == 0 && v4 + 168 * *(a1 + 16) > a2)
  {
    v9 = a2[1];
    v10 = v9 - a3;
    if (v9 >= a3)
    {
      v12 = a2[3];
      if (v12 - v9 >= a4)
      {
        if (v10 >= 1)
        {
          memmove((a2[2] + 108 * a3 + 108 * a4), (a2[2] + 108 * a3), 108 * v10);
        }

        OUTLINED_FUNCTION_23_34();
        bzero((v20 + a3 * v21), a4 * v21);
      }

      else
      {
        v13 = 5;
        if (a4 > 5)
        {
          v13 = a4;
        }

        v14 = v12 + v13;
        OUTLINED_FUNCTION_11_50();
        v16 = malloc_type_calloc(v14, 0x6CuLL, v15);
        v17 = v16;
        v18 = a2[2];
        if (v18)
        {
          v19 = a2[1] - a3;
          if (a3)
          {
            memmove(v16, v18, 108 * a3);
            v18 = a2[2];
          }

          if (v19 >= 1)
          {
            memmove(&v17[108 * a3 + 108 * a4], &v18[108 * a3], 108 * v19);
            v18 = a2[2];
          }

          free(v18);
        }

        a2[2] = v17;
        a2[3] = v14;
      }

      result = 0;
      a2[1] += a4;
    }
  }

  return result;
}

unint64_t compositionTable_findEditIndexStartingAtTimeInTrackSplitEditIfNecessary(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 32) > a2)
  {
    return -1;
  }

  OUTLINED_FUNCTION_16_34();
  if (!(!v6 & v5))
  {
    return -1;
  }

  v7 = v4;
  time1 = *v4;
  EditSegmentByTime = compositionTableTrack_findEditSegmentByTime(a2, &time1);
  if ((EditSegmentByTime & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_62_12();
    OUTLINED_FUNCTION_130_0();
    if (CMTimeCompare(&time1, &v40.start))
    {
      v10 = (*(a2 + 16) + 108 * EditSegmentByTime);
      v49 = **&MEMORY[0x1E6960CC0];
      v48 = v49;
      v47 = v49;
      v45 = *&v7->value;
      epoch = v7->epoch;
      v11 = OUTLINED_FUNCTION_64_11(v10);
      v25 = OUTLINED_FUNCTION_33_20(v13, v14, v15, v16, v17, v18, v19, v20, *v12, v12[1], v12[2], v12[3], v12[4], v12[5], v11.n128_i64[0], v11.n128_i64[1], v21, v22, v23, v24, v45);
      CMTimeMapTimeFromRangeToRange(v27, v25, v26, &v40);
      v28 = EditSegmentByTime + 1;
      v29 = OUTLINED_FUNCTION_627();
      if (compositionTable_insertUninitializedEditsIntoTrack(v29, v30, EditSegmentByTime + 1, 1))
      {
        return -1;
      }

      v31 = *(a2 + 16) + 108 * EditSegmentByTime;
      OUTLINED_FUNCTION_351();
      OUTLINED_FUNCTION_65_12();
      CMTimeSubtract(&v48, &time1, &v40.start);
      time1 = v49;
      OUTLINED_FUNCTION_65_12();
      CMTimeSubtract(&v47, &time1, &v40.start);
      v32 = *&v7->value;
      *(v31 + 172) = v7->epoch;
      *(v31 + 156) = v32;
      OUTLINED_FUNCTION_65_12();
      OUTLINED_FUNCTION_87_3(v48.epoch, v40.start.value, *&v40.start.timescale, v40.start.epoch, v40.duration.value, *&v40.duration.timescale, v40.duration.epoch, time1.value, *&time1.timescale, time1.epoch, v42, v43, v44, v48.value, *&v48.timescale, epoch);
      v33 = *&time1.value;
      *(v31 + 196) = time1.epoch;
      *(v31 + 180) = v33;
      v34 = *&v49.value;
      *(v31 + 124) = v49.epoch;
      *(v31 + 108) = v34;
      OUTLINED_FUNCTION_65_12();
      OUTLINED_FUNCTION_87_3(v47.epoch, v40.start.value, *&v40.start.timescale, v40.start.epoch, v40.duration.value, *&v40.duration.timescale, v40.duration.epoch, time1.value, *&time1.timescale, time1.epoch, v42, v43, v44, v47.value, *&v47.timescale, epoch);
      v35 = *&time1.value;
      *(v31 + 148) = time1.epoch;
      *(v31 + 132) = v35;
      *(v31 + 204) = *(v31 + 96);
      *(v31 + 212) = *(v31 + 104);
      v36 = v48.epoch;
      *(v31 + 72) = *&v48.value;
      *(v31 + 88) = v36;
      v37 = v47.epoch;
      *(v31 + 24) = *&v47.value;
      *(v31 + 40) = v37;
      OUTLINED_FUNCTION_29();
      if (v6)
      {
        if (v38)
        {
          CFRetain(v38);
          v39 = *(v31 + 204);
          if (v39)
          {
            CFBagAddValue(*(a1 + 40), v39);
          }
        }
      }

      return v28;
    }
  }

  return EditSegmentByTime;
}

uint64_t compositionTable_deleteEditsFromTrack(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 32) > a2)
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_16_34();
  if (!(!v6 & v5))
  {
    return 4294954516;
  }

  v7 = v4;
  v8 = v3;
  v9 = v4 + v3;
  if (v4 + v3 > *(a2 + 8))
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_23_34();
  compositionEditSegment_releaseSegmentsAndRemoveURLsFromBag(v12 + v8 * v10, v7, *(v11 + 40));
  v13 = *(a2 + 8);
  if (v13 - v9 >= 1)
  {
    memmove((*(a2 + 16) + 108 * v8), (*(a2 + 16) + 108 * v9), 108 * (v13 - v9));
    v13 = *(a2 + 8);
  }

  v14 = v13 - v7;
  *(a2 + 8) = v14;
  bzero((*(a2 + 16) + 108 * v14), 108 * v7);
  return 0;
}

uint64_t compositionTable_deleteEditsWithZeroDuration(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = a4;
    v5 = a3;
    v7 = *(a2 + 8);
    v8 = v7 > a4 && a3 <= a4;
    if (v8 && v7 > a3)
    {
      v10 = result;
      v19 = *MEMORY[0x1E6960CC0];
      do
      {
        OUTLINED_FUNCTION_62_12();
        OUTLINED_FUNCTION_18_30(v11, v12, v13, v14, v15, v16, v17, v18, v19);
        result = CMTimeCompare(&time1, &time2);
        if (result)
        {
          ++v5;
        }

        else
        {
          result = compositionTable_deleteEditsFromTrack(v10, a2);
          if (result)
          {
            return result;
          }

          --v4;
        }
      }

      while (v5 <= v4);
    }
  }

  return result;
}

void compositionTable_insertEditSegmentsFromAsset(uint64_t a1, uint64_t *a2, uint64_t a3, const void *a4, int a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = *(CMBaseObjectGetDerivedStorage() + 8);
  v14 = *(v13 + 16);
  v15 = v13;
  v16 = 0;
  while (1)
  {
    CompatibleTrackForFormatDescriptionArrayAndMediaType = compositionTable_findCompatibleTrackForFormatDescriptionArrayAndMediaType(v15, v16, v14, a4, a5);
    if (CompatibleTrackForFormatDescriptionArrayAndMediaType < 0)
    {
      v22 = CompatibleTrackForFormatDescriptionArrayAndMediaType;
      compositionTable_addTrack(v13, a5, 0, 0, &v22);
      CompatibleTrackForFormatDescriptionArrayAndMediaType = v22;
      goto LABEL_9;
    }

    v18 = a2;
    v19 = a3;
    if (a3 >= 1)
    {
      break;
    }

LABEL_6:
    v14 = *(v13 + 16);
    v16 = CompatibleTrackForFormatDescriptionArrayAndMediaType + 1;
    v15 = v13;
  }

  while (1)
  {
    v20 = *v18++;
    if (v20 == CompatibleTrackForFormatDescriptionArrayAndMediaType)
    {
      break;
    }

    if (!--v19)
    {
      goto LABEL_6;
    }
  }

  v22 = CompatibleTrackForFormatDescriptionArrayAndMediaType;
LABEL_9:
  inserted = compositionTable_insertEditSegmentsIntoTrack(v13, *(v13 + 32) + 168 * CompatibleTrackForFormatDescriptionArrayAndMediaType);
  if (a8 && !inserted)
  {
    *a8 = v22;
  }

  OUTLINED_FUNCTION_843();
}

void compositionTable_insertEmptyTrackSegment(uint64_t a1, uint64_t a2, uint64_t a3, CMTime *a4)
{
  OUTLINED_FUNCTION_36_20();
  time1 = *v8;
  OUTLINED_FUNCTION_49_13(MEMORY[0x1E6960CC0]);
  v9 = CMTimeCompare(&time1, &time2);
  if (v9 >= 1)
  {
    time1 = *v6;
    OUTLINED_FUNCTION_19_34(v9, v10, v11, v12, v13, v14, v15, v16, v50);
    if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0 && *(v5 + 32) <= v4)
    {
      OUTLINED_FUNCTION_25_24();
      if (v17 > v4)
      {
        OUTLINED_FUNCTION_43_16();
        if (v26 == v27)
        {
          OUTLINED_FUNCTION_19_34(v18, v19, v20, v21, v22, v23, v24, v25, v51);
          v29 = OUTLINED_FUNCTION_2_126(v28);
          OUTLINED_FUNCTION_88_8(v30, v31, v32, v33, v34, v35, v36, v37, v29, v38, v39, v40, v41, v42, v52, v54, v56, v58, v59, v61, time2.value, *&time2.timescale, time2.epoch, v64, v43, v44, *&time1.value);
          time1 = time2;
          if ((OUTLINED_FUNCTION_34_20(time2.epoch, *&time2.value, v53, v55, v57, v60, v62, *&time2.value, time2.epoch) & 0x80000000) != 0)
          {
            time2 = *a4;
            v45 = OUTLINED_FUNCTION_177();
            compositionTable_insertAssetSegmentIntoTrack(v45, v46, 0, 0, v47, v48, v49);
          }
        }
      }
    }
  }
}

uint64_t compositionTable_deleteTrackSegment()
{
  OUTLINED_FUNCTION_36_20();
  v6 = OUTLINED_FUNCTION_56_14(v2, v3, v4, v5);
  v15 = OUTLINED_FUNCTION_33_20(v7, v8, v9, v10, v11, v12, v13, v14, v136, v147, time2.value, *&time2.timescale, time2.epoch, v156, v6.n128_i64[0], v6.n128_i64[1], *(v10 + 16), 0, 0, 0, v160.n128_i8[0]);
  CMTimeAdd(v17, v15, v16);
  OUTLINED_FUNCTION_5_88();
  OUTLINED_FUNCTION_49_13(MEMORY[0x1E6960CC0]);
  v26 = OUTLINED_FUNCTION_33_20(v18, v19, v20, v21, v22, v23, v24, v25, v137, v148, time2.value, *&time2.timescale, time2.epoch, v156, time1.value, *&time1.timescale, time1.epoch, v158, *(&v158 + 1), v159, v160.n128_i8[0]);
  if (!CMTimeCompare(v26, v27))
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_88();
  OUTLINED_FUNCTION_19_34(v28, v29, v30, v31, v32, v33, v34, v35, v138);
  v44 = OUTLINED_FUNCTION_33_20(v36, v37, v38, v39, v40, v41, v42, v43, v139, v149, time2.value, *&time2.timescale, time2.epoch, v156, time1.value, *&time1.timescale, time1.epoch, v158, *(&v158 + 1), v159, v160.n128_i8[0]);
  if (CMTimeCompare(v44, v45) < 1)
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_3_51();
  OUTLINED_FUNCTION_19_34(v46, v47, v48, v49, v50, v51, v52, v53, v140);
  v62 = OUTLINED_FUNCTION_33_20(v54, v55, v56, v57, v58, v59, v60, v61, v141, v150, time2.value, *&time2.timescale, time2.epoch, v156, time1.value, *&time1.timescale, time1.epoch, v158, *(&v158 + 1), v159, v160.n128_i8[0]);
  if (CMTimeCompare(v62, v63) < 0)
  {
    return 4294954516;
  }

  if (*(v1 + 32) > v0)
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_25_24();
  if (v64 <= v0)
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_43_16();
  if (v73 != v74)
  {
    return 0;
  }

  OUTLINED_FUNCTION_19_34(v65, v66, v67, v68, v69, v70, v71, v72, v142);
  v76 = OUTLINED_FUNCTION_2_126(v75);
  OUTLINED_FUNCTION_86_7(v77, v78, v79, v80, v81, v82, v83, v84, v76, v85, v86, v87, v88, v89, v143, v151, time2.value, *&time2.timescale, time2.epoch, v156, time1.value, *&time1.timescale, time1.epoch, v158, *(&v158 + 1), v159, v90, v91, v160);
  epoch = time1.epoch;
  v160 = *&time1.value;
  if ((OUTLINED_FUNCTION_34_20(time1.epoch, *&time1.value, v144, v152, *&time2.value, time2.epoch, v156, *&time1.value, time1.epoch) & 0x80000000) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_351();
  v92 = OUTLINED_FUNCTION_177();
  EditIndexStartingAtTimeInTrackSplitEditIfNecessary = compositionTable_findEditIndexStartingAtTimeInTrackSplitEditIfNecessary(v92, v93);
  if ((EditIndexStartingAtTimeInTrackSplitEditIfNecessary & 0x8000000000000000) != 0)
  {
    return 4294954516;
  }

  v95 = EditIndexStartingAtTimeInTrackSplitEditIfNecessary;
  OUTLINED_FUNCTION_60_12();
  if (v73 == v74)
  {
    return 4294954516;
  }

  OUTLINED_FUNCTION_76_11(v96, v97, v98, v99, v100, v101, v102, v103, v145, v153, time2.value, *&time2.timescale, time2.epoch, v156, time1.value, *&time1.timescale, time1.epoch, v158);
  *&time2.value = v160;
  time2.epoch = epoch;
  v104 = CMTimeCompare(&time1, &time2);
  if ((v104 & 0x80000000) != 0)
  {
    OUTLINED_FUNCTION_76_11(v104, v105, v106, v107, v108, v109, v110, v111, v146, v154, time2.value, *&time2.timescale, time2.epoch, v156, time1.value, *&time1.timescale, time1.epoch, v158);
    v113 = OUTLINED_FUNCTION_177();
    if ((compositionTable_findEditIndexStartingAtTimeInTrackSplitEditIfNecessary(v113, v114) & 0x8000000000000000) != 0)
    {
      return 4294954516;
    }

    OUTLINED_FUNCTION_60_12();
    if (v73 == v74)
    {
      return 4294954516;
    }
  }

  v115 = OUTLINED_FUNCTION_177();
  v117 = compositionTable_deleteEditsFromTrack(v115, v116);
  if (v117)
  {
    return v117;
  }

  OUTLINED_FUNCTION_351();
  v118 = OUTLINED_FUNCTION_627();
  compositionTableTrack_updateTrackStartTimes(v118, v119, v120);
  if (v95)
  {
    v121 = *(v0 + 8);
    if (v95 >= v121)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_50_12();
    if (OUTLINED_FUNCTION_57_11(v124, v122 + v95 * v123))
    {
      v134 = OUTLINED_FUNCTION_177();
      v117 = compositionTable_deleteEditsFromTrack(v134, v135);
      if (v117)
      {
        return v117;
      }
    }
  }

  v121 = *(v0 + 8);
LABEL_22:
  if (v121 < 1 || (*(*(v0 + 16) + 108 * v121 - 96) & 0x1D) == 1)
  {
    v112 = 0;
  }

  else
  {
    v132 = OUTLINED_FUNCTION_177();
    v112 = compositionTable_deleteEditsFromTrack(v132, v133);
    v121 = *(v0 + 8);
  }

  if (v95 >= v121)
  {
    v125 = v121 - 1;
  }

  else
  {
    v125 = v95;
  }

  if (v95)
  {
    v126 = v95 - 1;
  }

  else
  {
    v126 = 0;
  }

  if (v125 >= v126)
  {
    v128 = OUTLINED_FUNCTION_177();
    compositionTable_deleteEditsWithZeroDuration(v128, v129, v130, v131);
  }

  return v112;
}

uint64_t compositionTable_scaleTrackSegment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, __int128 *a5)
{
  OUTLINED_FUNCTION_36_20();
  *(&v211 + 1) = 0;
  v213 = **&MEMORY[0x1E6960CC0];
  v14 = OUTLINED_FUNCTION_56_14(v10, v11, v12, v13);
  v23 = OUTLINED_FUNCTION_32_20(v15, v16, v17, v18, v19, v20, v21, v22, v213.value, *&v213.timescale, v14.n128_i64[0], v14.n128_i64[1], *(v18 + 16), 0, 0, 0, v213.value, *&v213.timescale, v213.epoch, v214, time.start.value);
  CMTimeAdd(v25, v23, v24);
  OUTLINED_FUNCTION_5_88();
  Seconds = CMTimeGetSeconds(&time.start);
  OUTLINED_FUNCTION_26_25();
  v27 = CMTimeGetSeconds(&time.start);
  OUTLINED_FUNCTION_26_25();
  OUTLINED_FUNCTION_78_7();
  v36 = OUTLINED_FUNCTION_32_20(v28, v29, v30, v31, v32, v33, v34, v35, v190, v202, v210.value, *&v210.timescale, v210.epoch, v211, *(&v211 + 1), v212, v213.value, *&v213.timescale, v213.epoch, v214, time.start.value);
  result = CMTimeCompare(v36, v37);
  if (result)
  {
    OUTLINED_FUNCTION_26_25();
    OUTLINED_FUNCTION_18_30(v39, v40, v41, v42, v43, v44, v45, v46, v191);
    v55 = OUTLINED_FUNCTION_32_20(v47, v48, v49, v50, v51, v52, v53, v54, v192, v203, v210.value, *&v210.timescale, v210.epoch, v211, *(&v211 + 1), v212, v213.value, *&v213.timescale, v213.epoch, v214, time.start.value);
    if (CMTimeCompare(v55, v56) < 1)
    {
      return 4294954516;
    }

    OUTLINED_FUNCTION_5_88();
    OUTLINED_FUNCTION_18_30(v57, v58, v59, v60, v61, v62, v63, v64, v193);
    v73 = OUTLINED_FUNCTION_32_20(v65, v66, v67, v68, v69, v70, v71, v72, v194, v204, v210.value, *&v210.timescale, v210.epoch, v211, *(&v211 + 1), v212, v213.value, *&v213.timescale, v213.epoch, v214, time.start.value);
    if (CMTimeCompare(v73, v74) < 1)
    {
      return 4294954516;
    }

    OUTLINED_FUNCTION_3_51();
    OUTLINED_FUNCTION_18_30(v75, v76, v77, v78, v79, v80, v81, v82, v195);
    v91 = OUTLINED_FUNCTION_32_20(v83, v84, v85, v86, v87, v88, v89, v90, v196, v205, v210.value, *&v210.timescale, v210.epoch, v211, *(&v211 + 1), v212, v213.value, *&v213.timescale, v213.epoch, v214, time.start.value);
    if (CMTimeCompare(v91, v92) < 0)
    {
      return 4294954516;
    }

    if (*(v6 + 32) > v5)
    {
      return 4294954516;
    }

    OUTLINED_FUNCTION_25_24();
    if (v93 <= v5)
    {
      return 4294954516;
    }

    OUTLINED_FUNCTION_43_16();
    if (v102 != v103)
    {
      return 4294954516;
    }

    OUTLINED_FUNCTION_18_30(v94, v95, v96, v97, v98, v99, v100, v101, v197);
    v105 = OUTLINED_FUNCTION_2_126(v104);
    *&time.start.epoch = v106;
    *&time.duration.timescale = v107;
    *&time.start.value = v105;
    End = CMTimeRangeGetEnd(&v210, &time);
    v213 = v210;
    *&time.start.value = *v7;
    time.start.epoch = *(v7 + 16);
    v116 = OUTLINED_FUNCTION_32_20(End, v109, v110, v111, v112, v113, v114, v115, v198, v206, v210.value, *&v210.timescale, v210.epoch, v211, *(&v211 + 1), v212, v210.value, *&v210.timescale, v210.epoch, v214, time.start.value);
    if ((CMTimeCompare(v116, v117) & 0x80000000) == 0)
    {
      return 0;
    }

    OUTLINED_FUNCTION_3_51();
    v118 = OUTLINED_FUNCTION_177();
    EditIndexStartingAtTimeInTrackSplitEditIfNecessary = compositionTable_findEditIndexStartingAtTimeInTrackSplitEditIfNecessary(v118, v119);
    if ((EditIndexStartingAtTimeInTrackSplitEditIfNecessary & 0x8000000000000000) != 0)
    {
      return 4294954516;
    }

    v121 = EditIndexStartingAtTimeInTrackSplitEditIfNecessary;
    OUTLINED_FUNCTION_60_12();
    if (v102 == v103)
    {
      return 4294954516;
    }

    OUTLINED_FUNCTION_72_8(v122, v123, v124, v125, v126, v127, v128, v129, v199, v207, v210.value, *&v210.timescale, v210.epoch, v211);
    v138 = OUTLINED_FUNCTION_32_20(v130, v131, v132, v133, v134, v135, v136, v137, v200, v208, v213.value, *&v213.timescale, v213.epoch, v211, *(&v211 + 1), v212, v213.value, *&v213.timescale, v213.epoch, v214, time.start.value);
    v140 = CMTimeCompare(v138, v139);
    if ((v140 & 0x80000000) != 0)
    {
      OUTLINED_FUNCTION_72_8(v140, v141, v142, v143, v144, v145, v146, v147, v201, v209, v210.value, *&v210.timescale, v210.epoch, v211);
      v149 = OUTLINED_FUNCTION_177();
      v151 = compositionTable_findEditIndexStartingAtTimeInTrackSplitEditIfNecessary(v149, v150);
      if ((v151 & 0x8000000000000000) != 0)
      {
        return 4294954516;
      }

      v148 = v151;
      OUTLINED_FUNCTION_60_12();
      if (v102 == v103)
      {
        return 4294954516;
      }
    }

    else
    {
      v148 = *(v5 + 8);
    }

    if (v121 != v148 - 1 || (OUTLINED_FUNCTION_50_12(), v154 = v152 + v121 * v153, v155 = *(v154 + 72), time.start.epoch = *(v154 + 88), *&time.start.value = v155, v164 = OUTLINED_FUNCTION_32_20(v156, v157, v158, v159, v160, v161, v162, v163, v201, v209, *a4, a4[1], a4[2], v211, *(&v211 + 1), v212, v213.value, *&v213.timescale, v213.epoch, v214, v155), CMTimeCompare(v164, v165)))
    {
      v170 = v148 - v121;
      if (v148 > v121)
      {
        v171 = 108 * v121 + 72;
        v172 = Seconds / v27;
        do
        {
          v173 = *(v5 + 16) + v171;
          v174 = *v173;
          v210.epoch = *(v173 + 16);
          *&v210.value = v174;
          CMTimeMultiplyByFloat64(&time.start, &v210, v172);
          v175 = *&time.start.value;
          *(v173 + 16) = time.start.epoch;
          *v173 = v175;
          v171 += 108;
          --v170;
        }

        while (v170);
      }
    }

    else
    {
      OUTLINED_FUNCTION_50_12();
      v168 = v166 + v121 * v167;
      v169 = *a5;
      *(v168 + 88) = *(a5 + 2);
      *(v168 + 72) = v169;
    }

    OUTLINED_FUNCTION_3_51();
    compositionTableTrack_updateTrackStartTimes(v5, v121, &time.start.value);
    if (!v121 || v121 >= *(v5 + 8) || (OUTLINED_FUNCTION_50_12(), !OUTLINED_FUNCTION_57_11(v178, v176 + v121 * v177)) || (v179 = OUTLINED_FUNCTION_177(), result = compositionTable_deleteEditsFromTrack(v179, v180), --v148, !result))
    {
      if (v148 < 1 || v148 >= *(v5 + 8) || (OUTLINED_FUNCTION_50_12(), !OUTLINED_FUNCTION_57_11(v183, v181 + v148 * v182)) || (v184 = OUTLINED_FUNCTION_177(), result = compositionTable_deleteEditsFromTrack(v184, v185), !result))
      {
        v186 = OUTLINED_FUNCTION_177();
        compositionTable_deleteEditsWithZeroDuration(v186, v187, v188, v189);
        return 0;
      }
    }
  }

  return result;
}

uint64_t compositionTable_copyAssetSegmentsFromTrackForTimeRange(uint64_t a1, unint64_t a2, CMTime *a3, uint64_t *a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  v256 = **&MEMORY[0x1E6960C70];
  epoch = v256.epoch;
  v254 = 0uLL;
  v255 = 0;
  range.start = *a3;
  v15 = OUTLINED_FUNCTION_22_26(a1, a2, a3, a4, a5, a6, a7, a8, v189, v199, v256.value, *&v256.timescale, v226, v235, *a4, a4[1], a4[2], toRange.duration.value, *&toRange.duration.timescale, toRange.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v245, dur.value, *&dur.timescale, dur.epoch, v247, v248.value, *&v248.timescale, v248.epoch, v249, time2.value, *&time2.timescale, time2.epoch, v251, range.start.value);
  CMTimeAdd(v17, v15, v16);
  *&v253.value = v209;
  v253.epoch = v256.epoch;
  OUTLINED_FUNCTION_29();
  if (!v18 || (OUTLINED_FUNCTION_7_65(), *&toRange.start.value = *MEMORY[0x1E6960CC0], v19 = *(MEMORY[0x1E6960CC0] + 16), v28 = OUTLINED_FUNCTION_22_26(v20, v21, v22, v23, v24, v25, v26, v27, v190, v200, v209, *(&v209 + 1), toRange.start.value, *&toRange.start.timescale, toRange.start.value, *&toRange.start.timescale, v19, toRange.duration.value, *&toRange.duration.timescale, toRange.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v245, dur.value, *&dur.timescale, dur.epoch, v247, v248.value, *&v248.timescale, v248.epoch, v249, time2.value, *&time2.timescale, time2.epoch, v251, range.start.value), CMTimeCompare(v28, v29) < 0) || (OUTLINED_FUNCTION_29(), !v18) || (*&range.start.value = *a4, range.start.epoch = a4[2], v38 = OUTLINED_FUNCTION_22_26(v30, v31, v32, v33, v34, v35, v36, v37, v191, v201, v210, v218, v227, v236, v227, v236, v19, toRange.duration.value, *&toRange.duration.timescale, toRange.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v245, dur.value, *&dur.timescale, dur.epoch, v247, v248.value, *&v248.timescale, v248.epoch, v249, time2.value, *&time2.timescale, time2.epoch, v251, range.start.value), CMTimeCompare(v38, v39) < 1) || *(a1 + 32) > a2 || (OUTLINED_FUNCTION_25_24(), v40 <= a2))
  {
    v71 = 0;
    v186 = 4294954516;
    goto LABEL_29;
  }

  if (*(a2 + 8) >= 1)
  {
    *&v228 = v8;
    OUTLINED_FUNCTION_7_65();
    EditSegmentByTime = compositionTableTrack_findEditSegmentByTime(a2, &range);
    OUTLINED_FUNCTION_28_23();
    v42 = compositionTableTrack_findEditSegmentByTime(a2, &range);
    v43 = OUTLINED_FUNCTION_64_11((*(a2 + 16) + 108 * EditSegmentByTime));
    *&range.start.epoch = v44;
    *&range.duration.timescale = v45;
    *&range.start.value = v43;
    CMTimeRangeGetEnd(&v256, &range);
    v46 = OUTLINED_FUNCTION_64_11((*(a2 + 16) + 108 * v42));
    *&range.start.epoch = v47;
    *&range.duration.timescale = v48;
    *&range.start.value = v46;
    CMTimeRangeGetEnd(&v253, &range);
    OUTLINED_FUNCTION_7_65();
    v57 = OUTLINED_FUNCTION_22_26(v49, v50, v51, v52, v53, v54, v55, v56, v192, v9, v211, v219, v228, *(&v228 + 1), v256.value, *&v256.timescale, v256.epoch, toRange.duration.value, *&toRange.duration.timescale, toRange.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v245, dur.value, *&dur.timescale, dur.epoch, v247, v248.value, *&v248.timescale, v248.epoch, v249, time2.value, *&time2.timescale, time2.epoch, v251, range.start.value);
    v59 = v42 - EditSegmentByTime;
    if (CMTimeCompare(v57, v58) < 0)
    {
      v60 = v59 + 1;
    }

    else
    {
      v60 = 0;
    }

    OUTLINED_FUNCTION_28_23();
    OUTLINED_FUNCTION_27_21();
    v69 = OUTLINED_FUNCTION_22_26(v61, v62, v63, v64, v65, v66, v67, v68, v193, v203, v212, v220, v229, v237, toRange.start.value, *&toRange.start.timescale, toRange.start.epoch, toRange.duration.value, *&toRange.duration.timescale, toRange.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v245, dur.value, *&dur.timescale, dur.epoch, v247, v248.value, *&v248.timescale, v248.epoch, v249, time2.value, *&time2.timescale, time2.epoch, v251, range.start.value);
    if (CMTimeCompare(v69, v70) <= 0)
    {
      v71 = v60;
    }

    else
    {
      v71 = v60 + 1;
    }

    if (v71 > 0)
    {
      OUTLINED_FUNCTION_11_50();
      v73 = malloc_type_calloc(v71, 0x6CuLL, v72);
      if (v73)
      {
        v74 = v73;
        if (v60 < 1)
        {
          v75 = v60;
          v9 = v202;
          v8 = v228;
        }

        else
        {
          v75 = v59 + 1;
          compositionEditSegment_copySegmentsAndAddURLsToBag(v73, (*(a2 + 16) + 108 * EditSegmentByTime), v60, 0);
          OUTLINED_FUNCTION_7_65();
          v84 = OUTLINED_FUNCTION_22_26(v76, v77, v78, v79, v80, v81, v82, v83, v192, v202, v211, v219, v228, *(&v228 + 1), *(v74 + 6), *(v74 + 7), *(v74 + 8), toRange.duration.value, *&toRange.duration.timescale, toRange.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v245, dur.value, *&dur.timescale, dur.epoch, v247, v248.value, *&v248.timescale, v248.epoch, v249, time2.value, *&time2.timescale, time2.epoch, v251, range.start.value);
          if (CMTimeCompare(v84, v85) >= 1)
          {
            OUTLINED_FUNCTION_7_65();
            v94 = OUTLINED_FUNCTION_22_26(v86, v87, v88, v89, v90, v91, v92, v93, v194, v204, v213, v221, v230, v238, *(v74 + 6), *(v74 + 7), *(v74 + 8), toRange.duration.value, *&toRange.duration.timescale, toRange.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v245, v213, v221, epoch, v247, v213, v221, epoch, v249, v213, v221, epoch, v251, range.start.value);
            CMTimeSubtract(v96, v94, v95);
            OUTLINED_FUNCTION_3_51();
            v97 = *(v74 + 4);
            *&range.start.value = *(v74 + 3);
            *&range.start.epoch = v97;
            *&range.duration.timescale = *(v74 + 5);
            v98 = *v74;
            v99 = *(v74 + 2);
            *&toRange.start.epoch = *(v74 + 1);
            *&toRange.duration.timescale = v99;
            *&toRange.start.value = v98;
            CMTimeMapTimeFromRangeToRange(&dur, &rhs, &range, &toRange);
            range.start = dur;
            OUTLINED_FUNCTION_62_12();
            v108 = OUTLINED_FUNCTION_22_26(v100, v101, v102, v103, v104, v105, v106, v107, v195, v205, v214, v222, v231, v239, toRange.start.value, *&toRange.start.timescale, toRange.start.epoch, toRange.duration.value, *&toRange.duration.timescale, toRange.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v245, dur.value, *&dur.timescale, dur.epoch, v247, v248.value, *&v248.timescale, v248.epoch, v249, time2.value, *&time2.timescale, time2.epoch, v251, range.start.value);
            v111 = CMTimeSubtract(v110, v108, v109);
            v112 = *&a3->value;
            *(v74 + 8) = a3->epoch;
            *(v74 + 3) = v112;
            *&toRange.start.value = *(v74 + 72);
            toRange.start.epoch = *(v74 + 11);
            rhs = time2;
            v120 = OUTLINED_FUNCTION_73_8(v111, v113, v114, v115, v116, v117, v118, v119, v196, v206, v215, v223, v232, v240, toRange.start.value);
            v122 = CMTimeSubtract(v121, v120, &rhs);
            *(v74 + 72) = *&range.start.value;
            *(v74 + 11) = range.start.epoch;
            v123 = *&dur.value;
            *(v74 + 2) = dur.epoch;
            *v74 = v123;
            *&toRange.start.value = *(v74 + 24);
            toRange.start.epoch = *(v74 + 5);
            rhs = v248;
            v131 = OUTLINED_FUNCTION_73_8(v122, v124, v125, v126, v127, v128, v129, v130, v197, v207, v216, v224, v233, v241, toRange.start.value);
            CMTimeSubtract(v132, v131, &rhs);
            *(v74 + 24) = *&range.start.value;
            *(v74 + 5) = range.start.epoch;
          }

          OUTLINED_FUNCTION_28_23();
          OUTLINED_FUNCTION_27_21();
          v141 = OUTLINED_FUNCTION_22_26(v133, v134, v135, v136, v137, v138, v139, v140, v194, v204, v213, v221, v230, v238, toRange.start.value, *&toRange.start.timescale, toRange.start.epoch, toRange.duration.value, *&toRange.duration.timescale, toRange.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v245, dur.value, *&dur.timescale, dur.epoch, v247, v248.value, *&v248.timescale, v248.epoch, v249, time2.value, *&time2.timescale, time2.epoch, v251, range.start.value);
          v9 = v202;
          v8 = v228;
          if (CMTimeCompare(v141, v142) < 0)
          {
            memset(&time2, 0, sizeof(time2));
            v143 = &v74[108 * v60];
            OUTLINED_FUNCTION_28_23();
            OUTLINED_FUNCTION_62_12();
            v152 = OUTLINED_FUNCTION_22_26(v144, v145, v146, v147, v148, v149, v150, v151, v192, v202, v211, v219, v228, *(&v228 + 1), toRange.start.value, *&toRange.start.timescale, toRange.start.epoch, toRange.duration.value, *&toRange.duration.timescale, toRange.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v245, dur.value, *&dur.timescale, dur.epoch, v247, v248.value, *&v248.timescale, v248.epoch, v249, time2.value, *&time2.timescale, time2.epoch, v251, range.start.value);
            CMTimeSubtract(v154, v152, v153);
            memset(&v248, 0, sizeof(v248));
            dur = time2;
            v155 = *(v143 - 60);
            v156 = *(v143 - 28);
            *&range.start.epoch = *(v143 - 44);
            *&range.duration.timescale = v156;
            *&range.start.value = v155;
            v157 = *(v143 - 108);
            v158 = *(v143 - 76);
            *&toRange.start.epoch = *(v143 - 92);
            *&toRange.duration.timescale = v158;
            *&toRange.start.value = v157;
            CMTimeMapDurationFromRangeToRange(&v248, &dur, &range, &toRange);
            v159 = *&time2.value;
            *(v143 - 20) = time2.epoch;
            *(v143 - 36) = v159;
            v160 = *&v248.value;
            *(v143 - 68) = v248.epoch;
            *(v143 - 84) = v160;
          }
        }

        if (v71 <= v75)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

LABEL_31:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v186 = v188;
    goto LABEL_29;
  }

  *&v253.value = v228;
  v253.epoch = v19;
  v71 = 1;
  OUTLINED_FUNCTION_11_50();
  v74 = malloc_type_calloc(1uLL, 0x6CuLL, v161);
  if (!v74)
  {
    goto LABEL_31;
  }

LABEL_27:
  v162 = &v74[108 * v71];
  OUTLINED_FUNCTION_27_21();
  time2 = *a3;
  v171 = OUTLINED_FUNCTION_73_8(v163, v164, v165, v166, v167, v168, v169, v170, v192, v202, v211, v219, v228, *(&v228 + 1), toRange.start.value);
  v173 = CMTimeMaximum(v172, v171, &time2);
  v174 = *&range.start.value;
  *(v162 - 44) = range.start.epoch;
  *(v162 - 60) = v174;
  *&toRange.start.value = v254;
  toRange.start.epoch = v255;
  v175 = *(v162 - 60);
  time2.epoch = *(v162 - 44);
  *&time2.value = v175;
  v183 = OUTLINED_FUNCTION_73_8(v173, v176, v177, v178, v179, v180, v181, v182, v198, v208, v217, v225, v234, v242, v254);
  CMTimeSubtract(v184, v183, &time2);
  v185 = *&range.start.value;
  *(v162 - 20) = range.start.epoch;
  *(v162 - 36) = v185;
LABEL_28:
  v186 = 0;
  *v8 = v71;
  *v9 = v74;
  v71 = 0;
LABEL_29:
  compositionEditSegment_releaseSegmentsAndRemoveURLsFromBag(0, v71, 0);
  return v186;
}

void compositionTable_createAvailableMetadataReaderPropertiesArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void mutableComposition_DeleteTrack_cold_1(CFDictionaryRef *a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  Count = CFDictionaryGetCount(*a1);
  keys = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  if (!keys)
  {
    v10 = 0;
    if (!Mutable)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v10 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  v23 = v10;
  if (v10)
  {
    v21 = a1;
    CFDictionaryGetKeysAndValues(*a1, keys, v10);
    if (Count <= 0)
    {
LABEL_20:
      if (!CFDictionaryGetCount(Mutable))
      {
        goto LABEL_26;
      }

      v14 = *v21;
      *v21 = Mutable;
      if (Mutable)
      {
        CFRetain(Mutable);
      }
    }

    else
    {
      v11 = 0;
      v22 = Count;
      while (1)
      {
        v12 = keys[v11];
        v13 = v10[v11];
        v14 = CFArrayCreateMutable(v24, 0, MEMORY[0x1E695E9C0]);
        v15 = CFArrayGetCount(v13);
        if (v15 > 0)
        {
          break;
        }

LABEL_17:
        if (v14)
        {
          CFRelease(v14);
        }

        ++v11;
        v10 = v23;
        if (v11 == v22)
        {
          goto LABEL_20;
        }
      }

      v16 = v15;
      v17 = 0;
      while (1)
      {
        *a3 = 0;
        *a2 = 0;
        if (!FigCFArrayGetInt32AtIndex())
        {
          break;
        }

        v18 = v17 + 1;
        if (!FigCFArrayGetInt32AtIndex())
        {
          break;
        }

        v19 = *(a4 + 4);
        if (v19 != *a3 && v19 != *a2)
        {
          FigCFArrayAppendInt32();
          FigCFArrayAppendInt32();
          if (v14)
          {
            if (CFArrayGetCount(v14))
            {
              CFDictionarySetValue(Mutable, v12, v14);
            }
          }
        }

        v17 = v18 + 1;
        if (v17 >= v16)
        {
          goto LABEL_17;
        }
      }

      v10 = v23;
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

LABEL_26:
  if (Mutable)
  {
LABEL_27:
    CFRelease(Mutable);
  }

LABEL_28:
  free(keys);
  free(v10);
}

void mutableComposition_SetTrackProperty_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a2 = v3;
}

void mutableComposition_SetTrackProperty_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a2 = v3;
}

void mutableComposition_SetTrackProperty_cold_3(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a2 = v3;
}

void composite_trackReader_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void composite_trackReader_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void composite_trackReader_CopyProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void composite_trackReader_CopyProperty_cold_4(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  OUTLINED_FUNCTION_207();
  v9 = *(v8 + 96);
  if (v9)
  {
    CFArrayAppendValue(v5, v9);
  }

  if (*a4)
  {
    CFArrayAppendValue(v5, *a4);
  }

  v10 = *(v6 + 88);
  if (v10)
  {
    CFArrayAppendValue(v5, v10);
  }

  *v4 = v5;
}

void composite_trackReader_CopyProperty_cold_5(uint64_t a1)
{
  OUTLINED_FUNCTION_12_45(a1);
  OUTLINED_FUNCTION_48_16();
  if (!(v4 ^ v5 | v3))
  {
    OUTLINED_FUNCTION_53_16();
    v8 = (v7 + 120);
    while (*(v8 - 29) != v6)
    {
      OUTLINED_FUNCTION_44_19();
      if (v3)
      {
        goto LABEL_9;
      }
    }

    if (*v8)
    {
      *v2 = CFRetain(*v8);
    }
  }

LABEL_9:
  *v1 = 0;
}

void composite_trackReader_CopyProperty_cold_6(uint64_t a1)
{
  OUTLINED_FUNCTION_12_45(a1);
  OUTLINED_FUNCTION_48_16();
  if (!(v4 ^ v5 | v3))
  {
    OUTLINED_FUNCTION_53_16();
    v8 = (v7 + 128);
    while (*(v8 - 31) != v6)
    {
      OUTLINED_FUNCTION_44_19();
      if (v3)
      {
        goto LABEL_9;
      }
    }

    if (*v8)
    {
      *v2 = CFRetain(*v8);
    }
  }

LABEL_9:
  *v1 = 0;
}

void composite_trackReader_CopyProperty_cold_7(uint64_t a1)
{
  OUTLINED_FUNCTION_12_45(a1);
  OUTLINED_FUNCTION_48_16();
  if (!(v4 ^ v5 | v3))
  {
    OUTLINED_FUNCTION_53_16();
    v8 = (v7 + 136);
    while (*(v8 - 33) != v6)
    {
      OUTLINED_FUNCTION_44_19();
      if (v3)
      {
        goto LABEL_9;
      }
    }

    if (*v8)
    {
      *v2 = CFRetain(*v8);
    }
  }

LABEL_9:
  *v1 = 0;
}

void composite_trackReader_CopyProperty_cold_8(uint64_t a1)
{
  OUTLINED_FUNCTION_12_45(a1);
  OUTLINED_FUNCTION_48_16();
  if (!(v4 ^ v5 | v3))
  {
    OUTLINED_FUNCTION_53_16();
    v8 = (v7 + 144);
    while (*(v8 - 35) != v6)
    {
      OUTLINED_FUNCTION_44_19();
      if (v3)
      {
        goto LABEL_9;
      }
    }

    if (*v8)
    {
      *v2 = CFRetain(*v8);
    }
  }

LABEL_9:
  *v1 = 0;
}

void composite_trackReader_CopyProperty_cold_9(uint64_t a1)
{
  OUTLINED_FUNCTION_12_45(a1);
  OUTLINED_FUNCTION_48_16();
  if (!(v4 ^ v5 | v3))
  {
    OUTLINED_FUNCTION_53_16();
    v8 = (v7 + 152);
    while (*(v8 - 37) != v6)
    {
      OUTLINED_FUNCTION_44_19();
      if (v3)
      {
        goto LABEL_9;
      }
    }

    if (*v8)
    {
      *v2 = CFRetain(*v8);
    }
  }

LABEL_9:
  *v1 = 0;
}

void compositionTableTrack_createAvailableMetadataReaderPropertiesArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void compositeProxy_sampleCursor_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void compositeProxy_sampleCursor_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void mutableComposition_CreateReconstitutedMetadataProperty_cold_1(uint64_t a1, const void *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, v5);

  CFRelease(a2);
}

double mutableComposition_CreateReconstitutedMetadataProperty_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void compositionTableTrack_setFormatDescriptionReplacementTable_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void compositionTableTrack_setFormatDescriptionReplacementTable_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void compositionTableTrack_setFormatDescriptionReplacementTable_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void compositionTableTrack_setFormatDescriptionReplacementTable_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigPartialSampleTableBrokerOfferNewPartialSampleTable(uint64_t a1, const void *a2)
{
  v18 = *(MEMORY[0x1E6960C98] + 16);
  v19 = *MEMORY[0x1E6960C98];
  v25 = *MEMORY[0x1E6960C98];
  v26 = v18;
  v17 = *(MEMORY[0x1E6960C98] + 32);
  v4 = OUTLINED_FUNCTION_2_127(v17);
  if (v4)
  {
    return v4;
  }

  FigSimpleMutexLock();
  for (i = 0; ; ++i)
  {
    while (1)
    {
      Count = *(a1 + 24);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        v8 = 0;
LABEL_13:
        v10 = FigCFWeakReferenceHolderCreateWithReferencedObject();
        CFArrayInsertValueAtIndex(*(a1 + 24), i, v10);
        if (v10)
        {
          CFRelease(v10);
        }

        FigSimpleMutexUnlock();
        if (v8)
        {
          CFRelease(v8);
        }

        goto LABEL_17;
      }

      CFArrayGetValueAtIndex(*(a1 + 24), i);
      v7 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v7)
      {
        break;
      }

      CFArrayRemoveValueAtIndex(*(a1 + 24), i);
    }

    v8 = v7;
    v22 = v19;
    v23 = v18;
    v24 = v17;
    if (v7 == a2)
    {
      break;
    }

    DecodeTimeRange = FigPartialSampleTableGetDecodeTimeRange(v7, &v22, 0);
    if (DecodeTimeRange)
    {
      goto LABEL_31;
    }

    *&time1.value = v22;
    time1.epoch = v23;
    *&time2.value = v25;
    time2.epoch = v26;
    if (CMTimeCompare(&time1, &time2) > 0)
    {
      goto LABEL_13;
    }

    CFRelease(v8);
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17.n128_u64[0], v17.n128_u32[2], v18);
LABEL_31:
  v11 = DecodeTimeRange;
  FigSimpleMutexUnlock();
  CFRelease(v8);
  if (v11)
  {
    return v11;
  }

LABEL_17:
  v25 = v19;
  v26 = v18;
  v11 = OUTLINED_FUNCTION_2_127(v17);
  if (!v11)
  {
    FigSimpleMutexLock();
    v12 = 0;
    while (1)
    {
      v13 = *(a1 + 32);
      if (v13)
      {
        v13 = CFArrayGetCount(v13);
      }

      if (v12 >= v13)
      {
        break;
      }

      CFArrayGetValueAtIndex(*(a1 + 32), v12);
      v14 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v14)
      {
        v15 = v14;
        v22 = v25;
        v23 = v26;
        v24 = v27;
        if (pstBroker_tableTimeRangeIsRelevantToInterestToken(&v22, v14))
        {
          CFArrayAppendValue(v15[9], a2);
        }

        CFRelease(v15);
        ++v12;
      }

      else
      {
        CFArrayRemoveValueAtIndex(*(a1 + 32), v12);
      }
    }

    FigSimpleMutexUnlock();
  }

  return v11;
}

uint64_t FigPartialSampleTableBrokerCopyInterestTokenForAdjacentTables(CFMutableArrayRef *a1, uint64_t a2, __CFArray **a3)
{
  v21 = 0;
  v6 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v6, 2, MEMORY[0x1E695E9C0]);
  v8 = *(MEMORY[0x1E6960C98] + 16);
  *&v20.start.value = *MEMORY[0x1E6960C98];
  *&v20.start.epoch = v8;
  *&v20.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  start = **&MEMORY[0x1E6960C70];
  if (!a3)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17.start.value, v17.start.timescale, LODWORD(v17.start.epoch));
LABEL_24:
    v15 = DecodeTimeRange;
    goto LABEL_17;
  }

  DecodeTimeRange = FigPartialSampleTableGetDecodeTimeRange(a2, &v20, &start);
  if (DecodeTimeRange)
  {
    goto LABEL_24;
  }

  CMTimeMake(&v17.start, 2, 1);
  start = v17.start;
  v10 = CFGetAllocator(a1);
  v17 = v20;
  CMTimeRangeGetEnd(&v18, &v17);
  v17.start = start;
  DecodeTimeRange = FigPartialSampleTableBrokerInterestTokenCreate(v10, &v18.value, &v17.start.value, 1, &v21);
  if (DecodeTimeRange)
  {
    goto LABEL_24;
  }

  FigSimpleMutexLock();
  v11 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  CFArrayAppendValue(a1[4], v11);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = pstBroker_associateRelevantTablesWithNewInterestToken(a1, v21);
  if (v12)
  {
    goto LABEL_22;
  }

  CFArrayAppendValue(Mutable, v21);
  if (v21)
  {
    CFRelease(v21);
    v21 = 0;
  }

  v13 = CFGetAllocator(a1);
  *&v17.start.value = *&v20.start.value;
  v17.start.epoch = v20.start.epoch;
  v18 = start;
  v12 = FigPartialSampleTableBrokerInterestTokenCreate(v13, &v17.start.value, &v18.value, -1, &v21);
  if (v12)
  {
    goto LABEL_22;
  }

  v14 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  CFArrayAppendValue(a1[4], v14);
  if (v14)
  {
    CFRelease(v14);
  }

  v12 = pstBroker_associateRelevantTablesWithNewInterestToken(a1, v21);
  if (v12)
  {
LABEL_22:
    v15 = v12;
  }

  else
  {
    CFArrayAppendValue(Mutable, v21);
    if (v21)
    {
      CFRelease(v21);
      v21 = 0;
    }

    v15 = 0;
    *a3 = Mutable;
    Mutable = 0;
  }

  FigSimpleMutexUnlock();
LABEL_17:
  if (v21)
  {
    CFRelease(v21);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v15;
}

void FigPartialSampleTableBrokerCreate_cold_2(uint64_t a1, const void *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  *a3 = v5;

  CFRelease(a2);
}

void FigPartialSampleTableBrokerCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigPartialSampleTableBrokerCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigPartialSampleTableBrokerFindAndRetainPartialSampleTableCoveringDecodeTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigPartialSampleTableBrokerFindAndRetainPartialSampleTableCoveringDecodeTime_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigPartialSampleTableBrokerFindAndRetainPartialSampleTableCoveringDecodeTime_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigPartialSampleTableBrokerInterestTokenCreate_cold_2(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = v4;

  CFRelease(a1);
}

void FigPartialSampleTableBrokerInterestTokenCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigPartialSampleTableBrokerInterestTokenCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMetadataConverterCreateForQuickTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMetadataConverterCreateForQuickTime_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void qtiso_FigMetadataConverterCreateConvertedItem_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void qtiso_FigMetadataConverterCreateConvertedItem_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void qtiso_FigMetadataConverterCreateConvertedItem_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void qtiso_FigMetadataConverterCreateConvertedItem_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void qtiso_FigMetadataConverterCreateConvertedItem_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigMetadataCreateSampleBuffer(const __CFAllocator *a1, uint64_t a2, uint64_t a3, CMFormatDescriptionRef desc, const CMSampleTimingInfo *a5, CMSampleBufferRef *a6)
{
  blockBufferOut = 0;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  DataLength = 0;
  if (CMFormatDescriptionGetMediaSubType(desc) == 1835360888)
  {
    appended = CMBlockBufferCreateEmpty(a1, 8u, 0, &blockBufferOut);
    if (!appended)
    {
      appended = FigAtomWriterInitWithBlockBuffer();
      if (!appended)
      {
        if (a2 < 1)
        {
LABEL_10:
          DataLength = CMBlockBufferGetDataLength(blockBufferOut);
          appended = CMSampleBufferCreate(a1, blockBufferOut, 1u, 0, 0, desc, 1, 1, a5, 1, &DataLength, a6);
        }

        else
        {
          v13 = (a3 + 4);
          while (1)
          {
            appended = FigAtomWriterBeginAtom();
            if (appended)
            {
              break;
            }

            CFDataGetBytePtr(*v13);
            CFDataGetLength(*v13);
            appended = FigAtomWriterAppendData();
            if (appended)
            {
              break;
            }

            appended = FigAtomWriterEndAtom();
            if (appended)
            {
              break;
            }

            v13 = (v13 + 12);
            if (!--a2)
            {
              goto LABEL_10;
            }
          }
        }
      }
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, v17, sampleSizeArray);
  }

  v14 = appended;
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v14;
}

uint64_t FigCaptionRendererLayoutDecouple_ApplyDecouplingAndSafeRegion(uint64_t a1, uint64_t a2)
{
  v79[0] = 0;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v5 = *(ProtocolVTable + 16)) == 0)
  {
    v52 = 4294954508;
LABEL_45:
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v61, v63, v64);
    return v52;
  }

  v6 = *(v5 + 24);
  if (!v6)
  {
    v52 = 4294954514;
    goto LABEL_45;
  }

  v7 = v6(a1, v79);
  if (v7)
  {
    v52 = v7;
    goto LABEL_45;
  }

  Count = CFArrayGetCount(v79[0]);
  if (!Count)
  {
    return 0;
  }

  v9 = Count;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  if (!Mutable)
  {
    return 0;
  }

  v11 = Mutable;
  if (v9 >= 1)
  {
    v12 = v9 + 1;
    v13 = MEMORY[0x1E695EFF8];
    v14 = MEMORY[0x1E695F060];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v79[0], v12 - 2);
      v78 = 0;
      FigCaptionRendererBaseProtocolGetProtocolID();
      OUTLINED_FUNCTION_4_102();
      v16 = CMBaseObjectGetProtocolVTable();
      if (!v16 || (v17 = *(v16 + 16)) == 0)
      {
        v52 = 4294954508;
        goto LABEL_51;
      }

      v18 = *(v17 + 8);
      if (!v18)
      {
        v52 = 4294954514;
        goto LABEL_51;
      }

      v19 = v18(ValueAtIndex, &v78);
      if (v19)
      {
        break;
      }

      if (v78 && !strcmp(v78, "FigCaptionRendererCaption"))
      {
        v77 = *v13;
        v76 = *v14;
        FigCaptionRendererNodeProtocolGetProtocolID();
        OUTLINED_FUNCTION_4_102();
        v20 = CMBaseObjectGetProtocolVTable();
        if (v20)
        {
          v21 = *(v20 + 16);
          if (v21)
          {
            v22 = *(v21 + 120);
            if (v22)
            {
              v22(ValueAtIndex, &v76);
            }
          }
        }

        FigCaptionRendererNodeProtocolGetProtocolID();
        OUTLINED_FUNCTION_4_102();
        v23 = CMBaseObjectGetProtocolVTable();
        if (v23)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *(v24 + 136);
            if (v25)
            {
              v25(ValueAtIndex, &v77);
            }
          }
        }

        v70 = v76;
        v72 = v77;
        TextObject = FigCaptionRendererLayoutDecouple_CreateTextObject(ValueAtIndex);
        if (!TextObject)
        {
          goto LABEL_43;
        }

        *TextObject = v72;
        *(TextObject + 1) = v70;
        CFArrayAppendValue(v11, TextObject);
      }

      if (--v12 <= 1)
      {
        goto LABEL_26;
      }
    }

    v52 = v19;
LABEL_51:
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v61, v63, v64);
    goto LABEL_52;
  }

LABEL_26:
  v27 = *(MEMORY[0x1E695F050] + 16);
  v74 = *MEMORY[0x1E695F050];
  v75 = v27;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v28 = CMBaseObjectGetProtocolVTable();
  if (v28)
  {
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = *(v29 + 104);
      if (v30)
      {
        v30(a1, &v74);
      }
    }
  }

  v31 = FCRGetOverscanSafeRectForViewport(a2);
  v35 = fcr_applyDecouplingAndSafeRegion(v11, v74.f64[0], v74.f64[1], *&v75, *(&v75 + 1), v31 - v74.f64[0], v32 - v74.f64[1], v33, v34);
  if (*(a2 + 392) < -0.5 || *(a2 + 400) < -0.5)
  {
    FCRGetVideoPresentationBounds(*(a2 + 376), *(a2 + 384), *(a2 + 344), *(a2 + 352), *(a2 + 360), *(a2 + 368));
    v38.f64[0] = v36;
    v38.f64[1] = v37;
    if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vclezq_f64(v38), vclezq_f64(*(a2 + 360))))) & 1) == 0)
    {
      v73 = v74;
      v66 = v36;
      v68 = *(a2 + 344);
      v62 = v37;
      v65 = *(a2 + 360);
      v39 = CFArrayGetCount(v11);
      v40.f64[0] = v66;
      if (v39 >= 1)
      {
        v41 = 0;
        __asm { FMOV            V0.2D, #0.5 }

        v71 = _Q0;
        v40.f64[1] = v62;
        v67 = vdivq_f64(v65, v40);
        v69 = vaddq_f64(vmulq_f64(v65, _Q0), v68);
        do
        {
          v47 = CFArrayGetValueAtIndex(v11, v41);
          v48 = vmulq_f64(v47[1], v71);
          *v47 = vsubq_f64(vsubq_f64(vmlaq_f64(v69, v67, vsubq_f64(vaddq_f64(vaddq_f64(v73, *v47), v48), v69)), v48), v73);
          ++v41;
        }

        while (v41 < CFArrayGetCount(v11));
      }
    }

    if (*(a2 + 392) < -0.5)
    {
      v57 = FCRGetOverscanSafeRectAspectFill(*(a2 + 344), *(a2 + 352), *(a2 + 360), *(a2 + 368));
      fcr_applyDecouplingAndSafeRegion(v11, v74.f64[0], v74.f64[1], *&v75, *(&v75 + 1), v57, v58, v59, v60);
    }

    goto LABEL_38;
  }

  if (v35)
  {
LABEL_38:
    fcr_setNewPositions(v11, 2);
  }

  v49 = *(a2 + 456);
  if (v49 > 0.0)
  {
    v51 = *(a2 + 424);
    v50 = *(a2 + 472);
  }

  else
  {
    v50 = *(a2 + 472);
    v51 = *(a2 + 424);
    if (v50 <= 0.0 && v51 <= 0.0 && *(a2 + 440) <= 0.0)
    {
      goto LABEL_43;
    }
  }

  if (fcr_moveIntoSafeRegion(v11, *(a2 + 344) + v51, *(a2 + 352) + v50, *(a2 + 360) - (v51 + *(a2 + 440)), *(a2 + 368) - (v49 + v50)))
  {
    if (*(a2 + 759))
    {
      v55 = v11;
      if (*(a2 + 761))
      {
        v56 = 2;
      }

      else
      {
        v56 = 0;
      }

      goto LABEL_65;
    }

    if (*(a2 + 761))
    {
      v55 = v11;
      v56 = 1;
LABEL_65:
      fcr_setNewPositions(v55, v56);
    }
  }

LABEL_43:
  v52 = 0;
LABEL_52:
  if (CFArrayGetCount(v11) >= 1)
  {
    do
    {
      v54 = CFArrayGetValueAtIndex(v11, 0);
      CFArrayRemoveValueAtIndex(v11, 0);
      FigCaptionRendererLayoutDecouple_ReleaseTextObject(v54);
    }

    while (CFArrayGetCount(v11) > 0);
  }

  CFRelease(v11);
  return v52;
}