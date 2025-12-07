@interface EstablishCurrentEventForCurrentItem
@end

@implementation EstablishCurrentEventForCurrentItem

void __fpic_EstablishCurrentEventForCurrentItem_block_invoke()
{
  OUTLINED_FUNCTION_182();
  v605 = v0;
  v2 = v1;
  v710 = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  v6 = *(DerivedStorage + 160);
  if (v6 && !*(DerivedStorage + 1143))
  {
    *v695 = *MEMORY[0x1E6960CC0];
    *&v696 = *(MEMORY[0x1E6960CC0] + 16);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v7)
    {
      v7(v6, v695);
    }

    v8 = CMBaseObjectGetDerivedStorage();
    if (*(v8 + 1142) && !*(v8 + 1141))
    {
      *(v5 + 1143) = 1;
    }

    else
    {
      v9 = *(v5 + 160);
      *lhs = *v695;
      *&lhs[16] = v696;
      *rhs = *&kMomentsAreCloseThreshold.value;
      *&rhs[16] = 0;
      CMTimeAdd(time, lhs, rhs);
      v10 = fpic_BufferIncludesTime(v9, time, MEMORY[0x1E6960CC0]);
      *(v5 + 1143) = v10;
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    v478 = CMBaseObjectGetDerivedStorage();
    Count = CFArrayGetCount(*(v478 + 200));
    if (*(v478 + 1143))
    {
      v480 = Count;
      v655 = (v478 + 604);
      if ((*(v478 + 616) & 1) == 0)
      {
        v481 = *(v478 + 160);
        v482 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v482)
        {
          v482(v481, v655);
        }
      }

      if (v480 >= 1)
      {
        v483 = 0;
        LODWORD(v645) = 0;
        do
        {
          CFArrayGetValueAtIndex(*(v478 + 200), v483);
          v484 = OUTLINED_FUNCTION_104_0();
          v486 = v485(v484);
          v487 = FigPlayerInterstitialEventIsPreRoll(v486);
          if (v487)
          {
            OUTLINED_FUNCTION_144_1(v487, v488, v489, v490, v491, v492, v493, v494, v525, v534, v543, v552, v560, v569, v578, v587, v596, v605, v614, v623, v632, v645, v655);
            FigPlayerInterstitialEventSetStartTime(v486, time);
            OUTLINED_FUNCTION_104_0();
            fpic_EnsureEventHasResolvedProperties();
            LODWORD(v645) = 1;
          }

          ++v483;
        }

        while (v480 != v483);
        if (v645 && dword_1EAF178D0)
        {
          *rhs = 0;
          v705[0] = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v496 = v705[0];
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v705[0]);
          OUTLINED_FUNCTION_28();
          if (v480)
          {
            OUTLINED_FUNCTION_144_1(v497, v498, v499, v500, v501, v502, v503, v504, v525, v534, v543, v552, v560, v569, v578, v587, v596, v605, v614, v623, v632, v645, v655);
            CMTimeGetSeconds(time);
            *lhs = 136315650;
            *&lhs[4] = "fpic_SetStartTimesForPrerollEvents";
            OUTLINED_FUNCTION_121_2();
            *&lhs[22] = v505;
            *&lhs[24] = v506;
            OUTLINED_FUNCTION_23_43();
            OUTLINED_FUNCTION_65();
            _os_log_send_and_compose_impl(v507, v508, v509, v510, v511, v512, v496, v513);
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_417(v514, v515, v516, v517, v518);
        }
      }
    }

    fpic_SortEventsInAddOrder();
    fpic_UpdatePlaybackItemEventList();
    fpic_PostNotification(v3, @"fpiResolvePropertiesChange", 0);
  }

LABEL_8:
  if (!*(v5 + 1143))
  {
    goto LABEL_225;
  }

  v686 = 0;
  *v684 = 0u;
  *v685 = 0u;
  fpic_GetEffectiveCurrentItemMoment(v684);
  WORD2(v680) = 0;
  LODWORD(v680) = 0;
  *v681 = OUTLINED_FUNCTION_150_3(MEMORY[0x1E6960C70]);
  v646 = *(v11 + 16);
  v682 = v646;
  *rhs = v684[0];
  v12 = HIDWORD(v684[1]);
  *&rhs[8] = v684[1];
  v13 = v685[0];
  v14 = *&v685[1];
  v15 = v686;
  v16 = v684;
  *type = *(&v686 + 2);
  v17 = *(v2 + 72);
  *&type[4] = HIWORD(v686);
  *v705 = v17;
  v18 = *(v2 + 84);
  *&v705[8] = *(v2 + 80);
  v19 = BYTE1(v686);
  if ((v18 & 1) != 0 && v686 && (v20 = *(v2 + 88), *time = v684[0], *&time[8] = v684[1], *&time[16] = v685[0], *lhs = *(v2 + 72), *&lhs[8] = *(v2 + 80), *&lhs[12] = v18, *&lhs[16] = v20, v21 = OUTLINED_FUNCTION_55_18(), v23 = CMTimeCompare(v21, v22), v23 >= 1) && (OUTLINED_FUNCTION_54_19(v23, v24, v25, v26, v27, v28, v29, v30, v525, v534, v543, v552, v560, v569, v578, v587, v596, v605, v614, v623, v632, v646, v655, v664, v671[0], v671[1], v672, *(&v672 + 1), v673, v674, *type, *&type[8], v676[0], v676[1], v677, v678, v679, v680, v681[0], v681[1], v682, v683, v684[0], v684[1], v685[0], v685[1], v686, v687, v688, v689, theArray[0], theArray[1], v691, v692, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v694, *(&v694 + 1), *v695, v695[2], v695[3]), *lhs = kMaxNotificationDelay, *&lhs[16] = 0, v31 = OUTLINED_FUNCTION_55_18(), v33 = CMTimeCompare(v31, v32), (v33 & 0x80000000) != 0))
  {
    memset(time, 0, 24);
    OUTLINED_FUNCTION_54_19(v33, v34, v35, v36, v37, v38, v39, v40, v525, v534, v543, v552, v560, v569, v578, v587, v596, v605, v614, v623, v632, v646, v655, v664, v671[0], v671[1], v672, *(&v672 + 1), v673, v674, *type, *&type[8], v676[0], v676[1], v677, v678, v679, v680, v681[0], v681[1], v682, v683, v684[0], v684[1], v685[0], v685[1], v686, v687, v688, v689, theArray[0], theArray[1], v691, v692, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v694, *(&v694 + 1), *v695, v695[2], v695[3]);
    *rhs = *v705;
    *&rhs[8] = *&v705[8];
    if (v19)
    {
      *lhs = *time;
      *&lhs[16] = *&time[16];
      v14 = v14 - CMTimeGetSeconds(lhs);
    }
  }

  else
  {
    v18 = v12;
    v20 = v13;
  }

  v684[0] = *rhs;
  *(&v686 + 2) = *type;
  HIWORD(v686) = *&type[4];
  v684[1] = __PAIR64__(v18, *&rhs[8]);
  v685[0] = v20;
  *&v685[1] = v14;
  LOBYTE(v686) = v15;
  BYTE1(v686) = v19;
  *theArray = *v684;
  v691 = v20;
  LODWORD(v679) = *type;
  WORD2(v679) = *&type[4];
  v41 = CMBaseObjectGetDerivedStorage();
  *&v697 = 0;
  *v695 = 0u;
  v696 = 0u;
  if ((*(v41 + 1076) & 1) == 0)
  {
    goto LABEL_33;
  }

  v42 = v41;
  if (*(CMBaseObjectGetDerivedStorage() + 1088))
  {
    goto LABEL_33;
  }

  v43 = v42 + 1064;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_75_9();
  if (!v45)
  {
    OUTLINED_FUNCTION_14_59();
    if (v47)
    {
      v44 = v46;
    }
  }

  *v705 = *v44;
  *&v706 = *(v44 + 16);
  v48 = *(v44 + 24);
  v49 = *(v44 + 32);
  v50 = *(v44 + 33);
  *(&v694 + 2) = *(v44 + 34);
  WORD3(v694) = *(v44 + 38);
  *type = *v43;
  v676[0] = *(v43 + 16);
  *lhs = *theArray;
  *&lhs[16] = v691;
  *&lhs[24] = v14;
  lhs[32] = v15;
  lhs[33] = v19;
  *&lhs[34] = v679;
  *&lhs[38] = WORD2(v679);
  fpic_MakeMomentFromTime(type, lhs, time);
  v51 = *&time[24];
  LODWORD(v52) = v709;
  v53 = BYTE1(v709);
  OUTLINED_FUNCTION_141_2(v54, v55, v56, v57, v58, v59, v60, v61, v525, v534, v543, v552, v560, v569, v578, v587, v596, v605, v614, v623, v632, v646, v655, v664, v671[0], v671[1], v672, *(&v672 + 1), v673, v674, *time, *&time[8], *&time[16], v676[1], v677, v678, v679, v680, v681[0], v681[1], v682, v683, v684[0], v684[1], v685[0], v685[1], v686, v687, v688, *(&v709 + 2));
  HIWORD(v709) = v62;
  *&rhs[16] = v706;
  *rhs = *v705;
  *&rhs[24] = v48;
  LOBYTE(v694) = v49;
  BYTE1(v694) = v50;
  TimeWithDateAndMoment = fpic_MomentGreaterThan(time, rhs);
  if (TimeWithDateAndMoment)
  {
    if (v49)
    {
      *lhs = *v705;
      v73 = v706;
    }

    else
    {
      if (v50)
      {
        OUTLINED_FUNCTION_68_12(TimeWithDateAndMoment, v64, v65, v66, v67, v68, v69, v70, v71, v526, v535, v544, v553, v561, v570, v579, v588, v597, v606, v615, v624, v633, v647, *v656, *&v656[2], v671[0], v671[1], v672, *(&v672 + 1), v673, v674, v72, *type);
        OUTLINED_FUNCTION_141_2(v74, v75, v76, v77, v78, v79, v80, v81, v527, v536, v545, v554, v562, v571, v580, v589, v598, v607, v616, v625, v634, v648, v657, v665, v671[0], v671[1], v672, *(&v672 + 1), v673, v674, *type, *&type[8], v676[0], v676[1], v677, v678, v679, v680, v681[0], v681[1], v682, v683, v684[0], v684[1], v685[0], v685[1], v686, v687, v688, v689);
        HIWORD(v709) = WORD2(v689);
        TimeWithDateAndMoment = FigCreateTimeWithDateAndMoment(time, lhs, v48);
        goto LABEL_26;
      }

      *lhs = *v656;
      v73 = v647;
    }

    *&lhs[16] = v73;
LABEL_26:
    v71 = *lhs;
    *type = *lhs;
    v676[0] = *&lhs[16];
    goto LABEL_27;
  }

  v50 = v53;
  v48 = v51;
LABEL_27:
  OUTLINED_FUNCTION_68_12(TimeWithDateAndMoment, v64, v65, v66, v67, v68, v69, v70, v71, v526, v535, v544, v553, v561, v570, v579, v588, v597, v606, v615, v624, v633, v647, *v656, *&v656[2], v671[0], v671[1], v672, *(&v672 + 1), v673, v674, v72, *type);
  *&time[24] = v48;
  LOBYTE(v709) = v52;
  BYTE1(v709) = v50;
  *(&v709 + 2) = v689;
  HIWORD(v709) = WORD2(v689);
  fpic_AddTimeToMoment(time, &kJumpForwardTolerance, v695);
  if ((!v15 || !v52) && (!v19 || !v50) || (OUTLINED_FUNCTION_60_15(v82, v83, v84, v85, v86, v87, v88, v89, v90, v525, v534, v543, v552, v560, v569, v578, v587, v596, v605, v614, v623, v635, v646, v655, v664, v671[0], v671[1], v672, *(&v672 + 1), v673, v674, *type, *&type[8], v676[0], v676[1], v677, v678, v679, SWORD2(v679), v680, v681[0], v681[1], v682, v683, v684[0], v684[1], v685[0], v685[1], v686, v687, v688, v689, v91, theArray[0]), *lhs = *type, *&lhs[16] = v676[0], *&lhs[24] = v48, lhs[32] = v52, lhs[33] = v50, *&lhs[34] = v689, *&lhs[38] = WORD2(v689), v92 = OUTLINED_FUNCTION_55_18(), !(v94 = fpic_MomentGreaterThan(v92, v93))) || (v104 = OUTLINED_FUNCTION_60_15(v94, v95, v96, v97, v98, v99, v100, v101, v102, v525, v534, v543, v552, v560, v569, v578, v587, v596, v605, v614, v623, v636, v646, v655, v664, v671[0], v671[1], v672, *(&v672 + 1), v673, v674, *type, *&type[8], v676[0], v676[1], v677, v678, v679, SWORD2(v679), v680, v681[0], v681[1], v682, v683, v684[0], v684[1], v685[0], v685[1], v686, v687, v688, v689, v103, theArray[0]), OUTLINED_FUNCTION_181_2(v105, v106, v107, v108, v109, v110, v111, v112, v104, v528, v537, v546, v555, v563, v572, v581, v590, v599, v608, v617, v626, v637, v649, v658, v666, v671[0], v671[1], v672, *(&v672 + 1), v673, v674, *type, *&type[8], v676[0], v676[1], v677, v678, v679, v680, v681[0], v681[1], v682, v683, v684[0], v684[1], v685[0], v685[1], v686, v687, v688, v689, theArray[0], theArray[1], v691, v692, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v694, *(&v694 + 1), v113, *v695), v114 = OUTLINED_FUNCTION_55_18(), v116 = fpic_MomentGreaterThan(v114, v115)))
  {
LABEL_33:
    LOBYTE(v50) = v19;
    LOBYTE(v52) = v15;
    v48 = v14;
    goto LABEL_34;
  }

  if (dword_1EAF178D0 >= 3)
  {
    *rhs = 0;
    HIBYTE(v688) = 0;
    v149 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v150 = HIBYTE(v688);
    os_log_type_enabled(v149, HIBYTE(v688));
    OUTLINED_FUNCTION_7_22();
    if (v15)
    {
      *time = *theArray;
      v151.n128_f64[0] = OUTLINED_FUNCTION_165_2(v691);
      v152 = v151.n128_u64[0];
      OUTLINED_FUNCTION_68_12(v153, v154, v155, v156, v157, v158, v159, v160, v151, v525, v534, v543, v552, v560, v569, v578, v587, v596, v605, v614, v623, v638, v646, v655, v664, v671[0], v671[1], v672, *(&v672 + 1), v673, v674, v161, *type);
      Seconds = CMTimeGetSeconds(time);
      *lhs = 136316162;
      *&lhs[4] = "fpic_ClampItemMomentToGateMoment";
      *&lhs[12] = 2048;
      *&lhs[14] = v152;
      *&lhs[22] = 2048;
      *&lhs[24] = v14;
      *&lhs[32] = 2048;
      *&lhs[34] = Seconds;
      *&lhs[42] = 2048;
      *&lhs[44] = v48;
      OUTLINED_FUNCTION_23_43();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl(v163, v164, v165, v166, v167, v168, v150, v169);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524(v252, v253, v254, v255, v256);
  }

  OUTLINED_FUNCTION_67_13(v116, v117, v118, v119, v120, v121, v122, v123, v525, v534, v543, v552, v560, v569, v578, v587, v596, v605, v614, v623, v638, v646, v655, v664, v671[0], v671[1], v672, *(&v672 + 1), v673, v674, *type);
  LODWORD(v679) = v689;
  WORD2(v679) = WORD2(v689);
LABEL_34:
  *v684 = *theArray;
  v685[0] = v691;
  *(&v686 + 2) = v679;
  HIWORD(v686) = WORD2(v679);
  *&v685[1] = v48;
  LOBYTE(v686) = v52;
  BYTE1(v686) = v50;
  v124 = *(v2 + 40);
  v639 = *(v2 + 48);
  v125 = *(*(v2 + 32) + 8);
  *&v694 = v686;
  *rhs = *theArray;
  *&rhs[16] = *v685;
  v126 = CMBaseObjectGetDerivedStorage();
  v127 = *(v126 + 320);
  *time = *(v126 + 304);
  *&time[16] = v127;
  OUTLINED_FUNCTION_139_2(*(v126 + 336), v525, v534, v543, v552, v560, v569, v578, v587, v596, v605, v614, v623, v639, v646, v655, v664, v671[0], v671[1], v672, *(&v672 + 1), v673, v674, *type, *&type[8], v676[0], v676[1], v677, v678, v679, v680, v681[0], v681[1], v682, v683, v684[0], v684[1], v685[0], v685[1], v686, v687, v688, v689, theArray[0], theArray[1], v691, v692, *rhs, *&rhs[16], v694);
  v128 = OUTLINED_FUNCTION_55_18();
  if (!fpic_MomentGreaterThan(v128, v129) || *(CMBaseObjectGetDerivedStorage() + 900))
  {
    goto LABEL_87;
  }

  memset(v705, 0, sizeof(v705));
  *&v706 = 0;
  v130 = *(v126 + 320);
  *time = *(v126 + 304);
  *&time[16] = v130;
  OUTLINED_FUNCTION_139_2(*(v126 + 336), v529, v538, v547, *(&v547 + 1), v564, v573, v582, v591, FirstIndexOfValue, v609, v618, v627, v640, v650, *v659, *&v659[2], v671[0], v671[1], v672, *(&v672 + 1), v673, v674, *type, *&type[8], v676[0], v676[1], v677, v678, v679, v680, v681[0], v681[1], v682, v683, v684[0], v684[1], v685[0], v685[1], v686, v687, v688, v689, theArray[0], theArray[1], v691, v692, *rhs, *&rhs[16], v694);
  v131 = OUTLINED_FUNCTION_55_18();
  fpic_SubtractMomentFromMoment(v131, v132, v133);
  OUTLINED_FUNCTION_185_2();
  *lhs = kJumpForwardTolerance;
  *&lhs[16] = 0;
  v134 = OUTLINED_FUNCTION_55_18();
  v52 = "fpic_CheckTimeJumpedBackward";
  if (CMTimeCompare(v134, v135) >= 1 && !*(CMBaseObjectGetDerivedStorage() + 888))
  {
    v564 = v125;
    v627 = CFArrayGetCount(*(v126 + 208));
    if (v627 < 1)
    {
LABEL_84:
      *(v126 + 1145) = 0;
      goto LABEL_87;
    }

    v171 = 0;
    v618 = v126 + 88;
    *&v170 = 136316674;
    v547 = v170;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v126 + 208), v171);
      v52 = (*(v126 + 88))(v124, v640, ValueAtIndex);
      *&v697 = 0;
      *v695 = 0u;
      v696 = 0u;
      fpic_EventDateTimeMoment(v52, v695);
      memset(type, 0, sizeof(type));
      v676[0] = 0;
      fpic_PredictEventGroupDurationOnPrimary(v124, ValueAtIndex, v640, 1, 0, type);
      *time = *rhs;
      *&time[16] = *&rhs[16];
      v709 = v694;
      OUTLINED_FUNCTION_181_2(v173, v174, v175, v176, v177, v178, v179, v180, *rhs, v529, v538, v547, *(&v547 + 1), v564, v573, v582, v591, FirstIndexOfValue, v609, v618, v627, v640, v650, *v659, *&v659[2], v671[0], v671[1], v672, *(&v672 + 1), v673, v674, *type, *&type[8], v676[0], v676[1], v677, v678, v679, v680, v681[0], v681[1], v682, v683, v684[0], v684[1], v685[0], v685[1], v686, v687, v688, v689, theArray[0], theArray[1], v691, v692, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], v694, *(&v694 + 1), *&rhs[16], *v695);
      OUTLINED_FUNCTION_67_13(v181, v182, v183, v184, v185, v186, v187, v188, v530, v539, v548, v556, v565, v574, v583, v592, v601, v610, v619, v628, v641, v651, v660, v667, v671[0], v671[1], v672, *(&v672 + 1), v673, v674, *type);
      v189 = OUTLINED_FUNCTION_55_18();
      LODWORD(v125) = !fpic_MomentCanBeCurrent(v189, v190, theArray) && FigPlayerInterstitialEventIsPostRoll(v52) == 0;
      v191 = CFSetContainsValue(*(v126 + 688), ValueAtIndex);
      CurrentlyPlayingEvent = fpic_GetCurrentlyPlayingEvent(v124);
      v16 = FigPlayerInterstitialEventCopyIdentifier(v52);
      if ((v125 & 1) == 0 && (v191 || ValueAtIndex == CurrentlyPlayingEvent))
      {
        if (FigPlayerInterstitialEventCueOnce(v52))
        {
          *time = 0;
          FigCFDictionaryGetInt32IfPresent();
          LODWORD(v125) = *time > 0;
        }

        else
        {
          LODWORD(v125) = 0;
        }

        if (*(CMBaseObjectGetDerivedStorage() + 896) && fpic_isEventInSameGroupAsAnotherEvent(v124, ValueAtIndex, *(v126 + 904), 0))
        {
          CMBaseObjectGetDerivedStorage();
          FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
          CMBaseObjectGetDerivedStorage();
          v209 = FigCFArrayGetFirstIndexOfValue();
          v193 = FirstIndexOfValue < v209;
          v194 = FirstIndexOfValue >= v209;
        }

        else
        {
          v193 = 0;
          v194 = 1;
        }

        if (dword_1EAF178D0)
        {
          HIDWORD(v591) = v193;
          LODWORD(FirstIndexOfValue) = v194;
          LODWORD(theArray[0]) = 0;
          LOBYTE(v689) = 0;
          v195 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v196 = theArray[0];
          v582 = v195;
          HIDWORD(v573) = v689;
          if (os_log_type_enabled(v195, v689))
          {
            v197 = v196;
          }

          else
          {
            v197 = v196 & 0xFFFFFFFE;
          }

          if (v197)
          {
            *time = *(v126 + 304);
            *&time[16] = *(v126 + 320);
            v48 = CMTimeGetSeconds(time);
            *time = *rhs;
            v198 = OUTLINED_FUNCTION_165_2(*&rhs[16]);
            *lhs = v547;
            *&lhs[4] = "fpic_CheckTimeJumpedBackward";
            v199 = "";
            if (v125 | HIDWORD(v591))
            {
              v199 = " do not";
            }

            *&lhs[12] = 2048;
            *&lhs[14] = v124;
            *&lhs[22] = 2048;
            *&lhs[24] = v48;
            *&lhs[32] = 2048;
            *&lhs[34] = v198;
            *&lhs[42] = 1024;
            *&lhs[44] = v125;
            *&lhs[48] = 2080;
            *&lhs[50] = v199;
            *&lhs[58] = 2112;
            *&lhs[60] = v52;
            OUTLINED_FUNCTION_23_43();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl(v200, v201, v202, v203, &dword_1962D5000, v582, HIDWORD(v573), "<<<< FigPlayerInterstitial >>>> %s: %p: Time jump-back from %f to %f, once=%d;%s reconsider event %@");
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_414(v204, v205, v206, v207, v208);
          v194 = FirstIndexOfValue;
        }

        if (!v125 || ValueAtIndex == CurrentlyPlayingEvent)
        {
          fpic_ResetCurrentEventList(v124, v640, (v564 + 24));
          if (((v125 | !v194) & 1) == 0)
          {
            break;
          }
        }
      }

      if (v16)
      {
        goto LABEL_77;
      }

LABEL_78:
      if (v627 == ++v171)
      {
        goto LABEL_84;
      }
    }

    fpic_ForgetPastEvent();
    if (!v16)
    {
      goto LABEL_78;
    }

LABEL_77:
    CFRelease(v16);
    goto LABEL_78;
  }

  if (*(CMBaseObjectGetDerivedStorage() + 888) && dword_1EAF178D0)
  {
    v695[0] = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v136 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v137 = v695[0];
    v125 = type[0];
    os_log_type_enabled(v136, type[0]);
    OUTLINED_FUNCTION_134();
    if (v47)
    {
      v139 = v138;
    }

    else
    {
      v139 = v137;
    }

    if (v139)
    {
      *time = *rhs;
      v140 = OUTLINED_FUNCTION_165_2(*&rhs[16]);
      v141 = *(v126 + 888);
      *lhs = 136315906;
      *&lhs[4] = "fpic_CheckTimeJumpedBackward";
      *&lhs[12] = 2048;
      *&lhs[14] = v124;
      *&lhs[22] = 2048;
      *&lhs[24] = v140;
      *&lhs[32] = 1024;
      *&lhs[34] = v141;
      OUTLINED_FUNCTION_23_43();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl(v142, v143, v144, v145, v146, v147, v125, v148);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0(v210, v211, v212, v213, v214);
  }

  v215 = *&rhs[16];
  *(v126 + 304) = *rhs;
  *(v126 + 320) = v215;
  *(v126 + 336) = v694;
LABEL_87:
  v216 = *(v2 + 40);
  v217 = *(*(v2 + 32) + 8);
  *type = *v684;
  *v676 = *v685;
  v677 = v686;
  v218 = CMBaseObjectGetDerivedStorage();
  if (!*(CMBaseObjectGetDerivedStorage() + 1144))
  {
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_75_9();
    if (!v220)
    {
      OUTLINED_FUNCTION_14_59();
      if (v47)
      {
        v219 = v221;
      }
    }

    v222 = *(v219 + 16);
    *v705 = *v219;
    v706 = v222;
    v707 = *(v219 + 32);
    if (!*(v218 + 1146) && !*(CMBaseObjectGetDerivedStorage() + 900))
    {
      v223 = CMBaseObjectGetDerivedStorage();
      if (!*(v223 + 888))
      {
        OUTLINED_FUNCTION_229_2(v223, v224, v225, v226, v227, v228, v229, v230, v231, v529, v538, v547, *(&v547 + 1), v564, v573, v582, v591, FirstIndexOfValue, v609, v618, v627, v640, v650, *v659, *&v659[2], v671[0], v671[1], v672, *(&v672 + 1), v673, v674, v232, *type, v676[0]);
        *lhs = *v705;
        *&lhs[16] = v706;
        *&lhs[32] = v707;
        v259 = OUTLINED_FUNCTION_55_18();
        if (fpic_MomentGreaterThan(v259, v260))
        {
          if (!*(v218 + 376) && !*(v218 + 377) || (*time = *type, *&time[16] = *v676, v709 = v677, v261 = *(v218 + 360), *lhs = *(v218 + 344), *&lhs[16] = v261, *&lhs[32] = *(v218 + 376), v262 = OUTLINED_FUNCTION_55_18(), !fpic_MomentsAreCloseWithTolerance(v262, v263, v264)))
          {
            v265 = OUTLINED_FUNCTION_171();
            fpic_ResetCurrentEventList(v265, v266, v267);
            v704 = 0;
            v703 = 0u;
            memset(lhs, 0, sizeof(lhs));
            v701 = 0;
            v699 = 0u;
            v700 = 0u;
            v697 = 0u;
            v698 = 0u;
            *v695 = 0u;
            v696 = 0u;
            if (dword_1EAF178D0)
            {
              LODWORD(theArray[0]) = 0;
              LOBYTE(v689) = 0;
              v268 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v269 = v689;
              os_log_type_enabled(v268, v689);
              OUTLINED_FUNCTION_40();
              if (v125)
              {
                *time = *v705;
                *&time[16] = v706;
                v709 = v707;
                v270 = OUTLINED_FUNCTION_55_18();
                MomentDesc = fpic_getMomentDesc(v270, v271);
                OUTLINED_FUNCTION_229_2(MomentDesc, v273, v274, v275, v276, v277, v278, v279, v280, v529, v538, v547, *(&v547 + 1), v564, v573, v582, v591, FirstIndexOfValue, v609, v618, v627, v640, v650, *v659, *&v659[2], v671[0], v671[1], v672, *(&v672 + 1), v673, v674, v281, *type, v676[0]);
                v52 = v695;
                fpic_getMomentDesc(time, v695);
                v282 = *(v217 + 24);
                if (v282)
                {
                  LODWORD(v282) = CFArrayGetCount(v282);
                }

                *rhs = 136316162;
                *&rhs[4] = "fpic_CheckTimeJumpedForward";
                *&rhs[12] = 2048;
                *&rhs[14] = v216;
                *&rhs[22] = 2080;
                *&rhs[24] = lhs;
                LOWORD(v694) = 2080;
                *(&v694 + 2) = v695;
                WORD5(v694) = 1024;
                HIDWORD(v694) = v282;
                LODWORD(v538) = 48;
                v529 = rhs;
                OUTLINED_FUNCTION_65();
                _os_log_send_and_compose_impl(v283, v284, v285, v286, v287, v288, v269, v289);
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_414(v519, v520, v521, v522, v523);
            }
          }
        }
      }
    }
  }

  if (!*(CMBaseObjectGetDerivedStorage() + 900))
  {
    v233 = *(v2 + 56);
    v234 = *v685;
    *(v233 + 304) = *v684;
    *(v233 + 320) = v234;
    *(v233 + 336) = v686;
  }

  v235 = *(v2 + 40);
  v236 = CMBaseObjectGetDerivedStorage();
  if (!*(v236 + 1028) || (v237 = v236, !fpic_isEventResolvableOnPrimaryTimeline()))
  {
    OUTLINED_FUNCTION_147_1();
    goto LABEL_159;
  }

  if (*(v237 + 1029))
  {
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_2_166();
    if (v238)
    {
      if (dword_1EAF178D0)
      {
        OUTLINED_FUNCTION_175_1();
        v246 = OUTLINED_FUNCTION_103_4(qword_1EAF178C8, v239, v240, v241, v242, v243, v244, v245, v529, v538, v547, *(&v547 + 1), v564, v573, v582, v591, FirstIndexOfValue, v609, v618, v627, v640, v650, *v659, *&v659[2], v671[0], v671[1], v672, *(&v672 + 1), v673, v674, *type, *&type[8], v676[0], v676[1], v677, v678, v679, v680, v681[0], v681[1], v682, v683, v684[0], v684[1], v685[0], v685[1], v686, v687, v688, v689, theArray[0], theArray[1], v691, v692, rhs[0], *&rhs[8], *&rhs[16], *&rhs[24], v694, *(&v694 + 1), v695[0]);
        v247 = v695[0];
        v248 = rhs[0];
        os_log_type_enabled(v246, rhs[0]);
        OUTLINED_FUNCTION_134();
        if (v47)
        {
          v250 = v249;
        }

        else
        {
          v250 = v247;
        }

        if (v250)
        {
          v251 = CMBaseObjectGetDerivedStorage();
          if (*(v251 + 376))
          {
            OUTLINED_FUNCTION_231_0();
            *&lhs[16] = v257;
            *lhs = *v258;
          }

          else if (*(v251 + 377))
          {
            v290 = *(v251 + 368);
            v291 = *(v251 + 320);
            *time = *(v251 + 304);
            *&time[16] = v291;
            v709 = *(v251 + 336);
            FigCreateTimeWithDateAndMoment(time, lhs, v290);
          }

          else
          {
            *lhs = *v659;
            *&lhs[16] = v650;
          }

          CMTimeGetSeconds(lhs);
          *lhs = 136315650;
          *&lhs[4] = "fpic_establishIntendedEventToSeekInto";
          OUTLINED_FUNCTION_121_2();
          *&lhs[22] = v292;
          *&lhs[24] = v293;
          OUTLINED_FUNCTION_82_1();
          v529 = lhs;
          OUTLINED_FUNCTION_65();
          _os_log_send_and_compose_impl(v294, v295, v296, v297, v298, v299, v248, v300);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_238_0(v301, v302, v303, v304, v305);
      }

      *(v237 + 376) = 0;
      *(v237 + 1029) = 0;
    }
  }

  v216 = fpic_UnwrapEvent();
  v306 = FigPlayerInterstitialEventCopyIdentifier(v216);
  v307 = CMBaseObjectGetDerivedStorage();
  theArray[0] = 0;
  *v695 = *v659;
  *&v696 = v650;
  *rhs = *MEMORY[0x1E6960CC0];
  *&rhs[16] = *(MEMORY[0x1E6960CC0] + 16);
  if (!*(v307 + 904))
  {
    goto LABEL_150;
  }

  v308 = v307;
  v309 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v309)
  {
    v310 = v309;
    v311 = fpic_UnwrapEvent();
    v312 = fpic_copyEventsScheduledAtSameMomentAsEvent(v235, v311, theArray);
    if (v312)
    {
      LODWORD(v52) = v312;
    }

    else
    {
      v627 = v306;
      v640 = v216;
      for (i = 0; ; ++i)
      {
        v314 = theArray[0];
        if (theArray[0])
        {
          v314 = CFArrayGetCount(theArray[0]);
        }

        if (i >= v314)
        {
          break;
        }

        v16 = CFArrayGetValueAtIndex(theArray[0], i);
        OUTLINED_FUNCTION_313_1();
        v315 = fpic_UnwrapEvent();
        *time = *v659;
        *&time[16] = v650;
        if (*(v308 + 904) == v16)
        {
          break;
        }

        memset(lhs, 0, 24);
        FigPlayerInterstitialEventGetResumptionOffset(v315, lhs);
        if (CFDictionaryContainsKey(*(v308 + 672), v16))
        {
          Value = CFDictionaryGetValue(*(v308 + 672), v16);
          CMTimeMakeFromDictionary(time, Value);
        }

        else
        {
          OUTLINED_FUNCTION_313_1();
          fpic_GetEventDuration(v318);
          OUTLINED_FUNCTION_185_2();
        }

        if ((lhs[12] & 0x11) == 1)
        {
          v317 = lhs;
        }

        else
        {
          v317 = time;
        }

        *type = *v317;
        v676[0] = *(v317 + 2);
        *v705 = *time;
        *&v706 = *&time[16];
        fpic_AccumulateDuration(rhs, v705);
        fpic_AccumulateDuration(v695, type);
      }

      v319 = v308 + 408;
      *(v308 + 424) = v696;
      *(v308 + 408) = *v695;
      v320 = v308 + 456;
      *(v308 + 472) = *&rhs[16];
      *(v308 + 456) = *rhs;
      if (dword_1EAF178D0)
      {
        *v705 = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v321 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v322 = *v705;
        v323 = type[0];
        os_log_type_enabled(v321, type[0]);
        OUTLINED_FUNCTION_202();
        if (v47)
        {
          LODWORD(v16) = v324;
        }

        else
        {
          LODWORD(v16) = v322;
        }

        if (v16)
        {
          *time = *v319;
          v48 = OUTLINED_FUNCTION_165_2(*(v319 + 16));
          *time = *v320;
          OUTLINED_FUNCTION_165_2(*(v320 + 16));
          *lhs = 136315906;
          OUTLINED_FUNCTION_211_0("fpic_recalculatePlayedOutResumptionOffsetUpToIntendedEventToSeekInto");
          *&lhs[12] = v325;
          *(v326 + 14) = v235;
          *&lhs[22] = v325;
          *&lhs[24] = v48;
          *&lhs[32] = v325;
          *(v326 + 34) = v327;
          OUTLINED_FUNCTION_23_43();
          OUTLINED_FUNCTION_65();
          _os_log_send_and_compose_impl(v328, v329, v330, v331, v332, v333, v323, v334);
        }

        v306 = v627;
        v216 = v640;
        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        LODWORD(v52) = 0;
      }

      else
      {
        LODWORD(v52) = 0;
        v306 = v627;
        v216 = v640;
      }
    }

    CFRelease(v310);
    if (theArray[0])
    {
      CFRelease(theArray[0]);
    }

    if (!v52)
    {
LABEL_150:
      OUTLINED_FUNCTION_184();
      fpic_GetEventStartMoment(v335, v336);
      OUTLINED_FUNCTION_44_23();
      LODWORD(v16) = v709;
      LOBYTE(v52) = BYTE1(v709);
      LODWORD(v680) = *(&v709 + 2);
      WORD2(v680) = HIWORD(v709);
      *(v237 + 1028) = 0;
      if (dword_1EAF178D0)
      {
        OUTLINED_FUNCTION_175_1();
        v344 = OUTLINED_FUNCTION_103_4(qword_1EAF178C8, v337, v338, v339, v340, v341, v342, v343, v529, v538, v547, *(&v547 + 1), v564, v573, v582, v591, FirstIndexOfValue, v609, v618, v627, v640, v650, *v659, *&v659[2], v671[0], v671[1], v672, *(&v672 + 1), v673, v674, *type, *&type[8], v676[0], v676[1], v677, v678, v679, v680, v681[0], v681[1], v682, v683, v684[0], v684[1], v685[0], v685[1], v686, v687, v688, v689, theArray[0], theArray[1], v691, v692, rhs[0], *&rhs[8], *&rhs[16], *&rhs[24], v694, *(&v694 + 1), v695[0]);
        v345 = v695[0];
        v346 = rhs[0];
        os_log_type_enabled(v344, rhs[0]);
        OUTLINED_FUNCTION_134();
        if (v47)
        {
          v348 = v347;
        }

        else
        {
          v348 = v345;
        }

        if (v348)
        {
          *lhs = 136315650;
          *&lhs[4] = "fpic_establishIntendedEventToSeekInto";
          OUTLINED_FUNCTION_121_2();
          *&lhs[22] = 2112;
          *&lhs[24] = v306;
          OUTLINED_FUNCTION_23_43();
          OUTLINED_FUNCTION_65();
          _os_log_send_and_compose_impl(v349, v350, v351, v352, v353, v354, v346, v355);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_238_0(v356, v357, v358, v359, v360);
      }

      if (v306)
      {
        goto LABEL_158;
      }

      goto LABEL_159;
    }
  }

  else
  {
    OUTLINED_FUNCTION_120();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v529, v538, v547);
    LOBYTE(v52) = v524;
    if (!v524)
    {
      goto LABEL_150;
    }
  }

  OUTLINED_FUNCTION_147_1();
  if (v306)
  {
LABEL_158:
    CFRelease(v306);
  }

LABEL_159:
  if (CFArrayGetCount(*(*(v2 + 56) + 656)))
  {
    goto LABEL_225;
  }

  if (fpic_ShouldIgnoreInterstitialsDueToExternalPlaybackStrategy(*(v2 + 40)))
  {
    goto LABEL_225;
  }

  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_2_166();
  if (v361 || *(CMBaseObjectGetDerivedStorage() + 896) && (!v216 || *(*(v2 + 56) + 1028)))
  {
    goto LABEL_225;
  }

  if (*(CMBaseObjectGetDerivedStorage() + 900))
  {
    goto LABEL_225;
  }

  v362 = *(v2 + 64);
  *time = 0;
  if (v362)
  {
    v363 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v363)
    {
      if (!v363(v362, time) && *time < 0.0 && !*(CMBaseObjectGetDerivedStorage() + 896))
      {
        goto LABEL_225;
      }
    }
  }

  v364 = *(v2 + 56);
  v365 = *(v364 + 240);
  *v671 = *(v364 + 224);
  v672 = v365;
  v673 = *(v364 + 256);
  v366 = *(v364 + 208);
  if (v366)
  {
    v367 = CFArrayGetCount(v366);
    if (v216)
    {
      v368 = v216;
      if (v16)
      {
        goto LABEL_179;
      }

LABEL_177:
      if (!v686 || !BYTE1(v686))
      {
        goto LABEL_204;
      }

      goto LABEL_179;
    }

    v387 = v367;
    if (v367 < 1)
    {
      goto LABEL_203;
    }

    v388 = 0;
    v389 = 0;
    v368 = 0;
    v640 = 0;
    do
    {
      v390 = CFArrayGetValueAtIndex(*(*(v2 + 56) + 208), v388);
      v391 = (*(*(v2 + 56) + 88))(*(v2 + 40), *(v2 + 48), v390);
      v392 = (*(*(v2 + 56) + 96))(*(v2 + 40), *(v2 + 48), v390);
      v393 = *(v2 + 56);
      if (*(v393 + 160) == v392 && !CFSetContainsValue(*(v393 + 688), v390))
      {
        v709 = 0;
        memset(time, 0, sizeof(time));
        fpic_EventDateTimeMoment(v391, time);
        if (FigPlayerInterstitialEventIsPostRoll(v391))
        {
          if (!v389)
          {
            v389 = v391;
          }
        }

        else
        {
          v394 = v709;
          if (v709 && v686 || BYTE1(v709) && BYTE1(v686))
          {
            LODWORD(v627) = BYTE1(v709);
            memset(rhs, 0, 24);
            fpic_PredictEventGroupDurationOnPrimary(*(v2 + 40), v390, *(v2 + 48), 0, 0, rhs);
            *lhs = *v684;
            *&lhs[16] = *v685;
            *&lhs[32] = v686;
            OUTLINED_FUNCTION_200_2();
            *v705 = *rhs;
            *&v706 = *&rhs[16];
            if (fpic_MomentCanBeCurrent(lhs, v695, v705))
            {
              *lhs = *v681;
              *&lhs[16] = v682;
              *&lhs[24] = v48;
              lhs[32] = v16;
              lhs[33] = v52;
              *&lhs[34] = v680;
              *&lhs[38] = WORD2(v680);
              OUTLINED_FUNCTION_200_2();
              if (fpic_MomentGreaterThan(lhs, v695))
              {
                OUTLINED_FUNCTION_44_23();
                LODWORD(v680) = *(&v709 + 2);
                WORD2(v680) = HIWORD(v709);
                v368 = v391;
                LOBYTE(v52) = v627;
                LODWORD(v16) = v394;
              }
            }

            else
            {
              CFSetSetValue(*(*(v2 + 56) + 688), v390);
            }
          }

          v216 = 0;
        }
      }

      ++v388;
    }

    while (v387 != v388);
    if (!v368 && v389)
    {
      fpic_GetEarliestStartForPostroll(time);
      OUTLINED_FUNCTION_44_23();
      LOBYTE(v16) = v709;
      LOBYTE(v52) = BYTE1(v709);
      LODWORD(v680) = *(&v709 + 2);
      v368 = v389;
      WORD2(v680) = HIWORD(v709);
      if (v709)
      {
        goto LABEL_179;
      }

      goto LABEL_177;
    }

    if (!v368)
    {
LABEL_203:
      v395 = CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_43_21(v395, v396, v397, v398, v399, v400, v401, v402, v403, v529, v538, v547, *(&v547 + 1), v564, v573, v582, v591, FirstIndexOfValue, v609, v618, v627, v640, v650, v404);
      goto LABEL_204;
    }
  }

  else
  {
    v368 = v216;
    if (!v216)
    {
      goto LABEL_203;
    }
  }

  if (!v16)
  {
    goto LABEL_177;
  }

LABEL_179:
  SnapOptions = FigPlayerInterstitialEventGetSnapOptions(v368);
  v370 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_43_21(v370, v371, v372, v373, v374, v375, v376, v377, v378, v529, v538, v547, *(&v547 + 1), v564, v573, v582, v591, FirstIndexOfValue, v609, v618, v627, v640, v650, v379);
  v380 = *(v2 + 56);
  *(v380 + 224) = *v681;
  *(v380 + 240) = v682;
  *(v380 + 248) = v48;
  *(v380 + 256) = v16;
  *(v380 + 257) = v52;
  *(v380 + 258) = v680;
  *(v380 + 262) = WORD2(v680);
  v381 = *(v2 + 56);
  v382 = MEMORY[0x1E6960CC0];
  v383 = *MEMORY[0x1E6960CC0];
  *(v381 + 432) = *MEMORY[0x1E6960CC0];
  v384 = *(v382 + 16);
  *(v381 + 448) = v384;
  v385 = *(v2 + 56);
  *(v385 + 496) = v384;
  *(v385 + 480) = v383;
  v386 = *(v2 + 56);
  *(v386 + 504) = v383;
  *(v386 + 520) = v384;
  fpic_GatePrimaryBufferingAtCurrentEvent(*(v2 + 40), SnapOptions & 1);
LABEL_204:
  v405 = *(v2 + 56);
  if (!v216)
  {
    *(v405 + 408) = *v659;
    *(v405 + 424) = v650;
    v406 = *(v2 + 56);
    *(v406 + 472) = v650;
    *(v406 + 456) = *v659;
    v405 = *(v2 + 56);
  }

  OUTLINED_FUNCTION_208_1(v405);
  if (!fpic_MomentsAreCloseWithTolerance(v671, time, &kMomentsAreCloseThreshold))
  {
    OUTLINED_FUNCTION_208_1(*(v2 + 56));
    v407 = fpic_CreateMomentDesc(time);
    *time = *v684;
    *&time[16] = *v685;
    v709 = v686;
    v408 = fpic_CreateMomentDesc(time);
    if (dword_1EAF178D0)
    {
      OUTLINED_FUNCTION_175_1();
      v416 = OUTLINED_FUNCTION_103_4(qword_1EAF178C8, v409, v410, v411, v412, v413, v414, v415, v529, v538, v547, *(&v547 + 1), v564, v573, v582, v591, FirstIndexOfValue, v609, v618, v627, v640, v650, *v659, *&v659[2], v671[0], v671[1], v672, *(&v672 + 1), v673, v674, *type, *&type[8], v676[0], v676[1], v677, v678, v679, v680, v681[0], v681[1], v682, v683, v684[0], v684[1], v685[0], v685[1], v686, v687, v688, v689, theArray[0], theArray[1], v691, v692, rhs[0], *&rhs[8], *&rhs[16], *&rhs[24], v694, *(&v694 + 1), v695[0]);
      v424 = OUTLINED_FUNCTION_258_2(v416, v417, v418, v419, v420, v421, v422, v423, v531, v540, v549, v557, v566, v575, v584, v593, v602, v611, v620, v629, v642, v652, v661, v668, v671[0], v671[1], v672, *(&v672 + 1), v673, v674, *type, *&type[8], v676[0], v676[1], v677, v678, v679, v680, v681[0], v681[1], v682, v683, v684[0], v684[1], v685[0], v685[1], v686, v687, v688, v689, theArray[0], theArray[1], v691, v692, rhs[0], *&rhs[8], *&rhs[16], *&rhs[24], v694, *(&v694 + 1), v695[0]);
      if (OUTLINED_FUNCTION_115_1(v424))
      {
        v425 = *(v2 + 40);
        *lhs = 136315906;
        *&lhs[4] = "fpic_EstablishCurrentEventForCurrentItem_block_invoke";
        *&lhs[12] = 2048;
        *&lhs[14] = v425;
        *&lhs[22] = 2112;
        *&lhs[24] = v408;
        *&lhs[32] = 2112;
        *&lhs[34] = v407;
        OUTLINED_FUNCTION_23_43();
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_448(v426, v427, v428, v429, v430, v431, v432, v433);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414(v434, v435, v436, v437, v438);
      if (dword_1EAF178D0 >= 2)
      {
        OUTLINED_FUNCTION_175_1();
        v446 = OUTLINED_FUNCTION_103_4(qword_1EAF178C8, v439, v440, v441, v442, v443, v444, v445, v532, v541, v550, v558, v567, v576, v585, v594, v603, v612, v621, v630, v643, v653, v662, v669, v671[0], v671[1], v672, *(&v672 + 1), v673, v674, *type, *&type[8], v676[0], v676[1], v677, v678, v679, v680, v681[0], v681[1], v682, v683, v684[0], v684[1], v685[0], v685[1], v686, v687, v688, v689, theArray[0], theArray[1], v691, v692, rhs[0], *&rhs[8], *&rhs[16], *&rhs[24], v694, *(&v694 + 1), v695[0]);
        v454 = OUTLINED_FUNCTION_258_2(v446, v447, v448, v449, v450, v451, v452, v453, v533, v542, v551, v559, v568, v577, v586, v595, v604, v613, v622, v631, v644, v654, v663, v670, v671[0], v671[1], v672, *(&v672 + 1), v673, v674, *type, *&type[8], v676[0], v676[1], v677, v678, v679, v680, v681[0], v681[1], v682, v683, v684[0], v684[1], v685[0], v685[1], v686, v687, v688, v689, theArray[0], theArray[1], v691, v692, rhs[0], *&rhs[8], *&rhs[16], *&rhs[24], v694, *(&v694 + 1), v695[0]);
        if (OUTLINED_FUNCTION_115_1(v454))
        {
          *lhs = 136315138;
          *&lhs[4] = "fpic_EstablishCurrentEventForCurrentItem_block_invoke";
          OUTLINED_FUNCTION_23_43();
          OUTLINED_FUNCTION_108();
          OUTLINED_FUNCTION_448(v455, v456, v457, v458, v459, v460, v461, v462);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_414(v463, v464, v465, v466, v467);
      }
    }

    v468 = *(v2 + 56);
    v469 = *(v468 + 240);
    *v695 = *(v468 + 224);
    v696 = v469;
    *&v697 = *(v468 + 256);
    CMBaseObjectGetDerivedStorage();
    v470 = FigCFDictionaryCopyArrayOfKeys();
    if (v470)
    {
      v471 = v470;
      if (CFArrayGetCount(v470) >= 1)
      {
        v472 = 0;
        do
        {
          OUTLINED_FUNCTION_624();
          v473 = FigCFArrayGetValueAtIndex();
          v474 = fpic_UnwrapEvent();
          fpic_EventDateTimeMoment(v474, lhs);
          *time = *v695;
          *&time[16] = v696;
          v709 = v697;
          v475 = OUTLINED_FUNCTION_55_18();
          if (!fpic_MomentsAreCloseWithTolerance(v475, v476, &kMomentsAreCloseThreshold))
          {
            v477 = CMBaseObjectGetDerivedStorage();
            CFDictionaryRemoveValue(*(v477 + 672), v473);
          }

          ++v472;
        }

        while (v472 < CFArrayGetCount(v471));
      }

      CFRelease(v471);
    }

    if (v407)
    {
      CFRelease(v407);
    }

    if (v408)
    {
      CFRelease(v408);
    }
  }

LABEL_225:
  OUTLINED_FUNCTION_181();
}

@end