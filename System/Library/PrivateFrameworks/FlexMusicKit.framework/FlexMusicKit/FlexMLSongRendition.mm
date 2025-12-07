@interface FlexMLSongRendition
- (FlexMLSongRendition)initWithSong:(id)song options:(id)options andSummary:(id)summary forDuration:(id *)duration;
- (void)_buildTracks;
- (void)_calculateDuration:(id *)duration;
@end

@implementation FlexMLSongRendition

- (FlexMLSongRendition)initWithSong:(id)song options:(id)options andSummary:(id)summary forDuration:(id *)duration
{
  summaryCopy = summary;
  v24.receiver = self;
  v24.super_class = FlexMLSongRendition;
  v12 = [(FMSongRendition *)&v24 initWithSong:song andOptions:options];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_summary, summary);
    v22 = *&duration->var0;
    var3 = duration->var3;
    objc_msgSend__calculateDuration_(v13, v14, &v22, v15, v16);
    objc_msgSend__buildTracks(v13, v17, v18, v19, v20);
  }

  return v13;
}

- (void)_calculateDuration:(id *)duration
{
  v7 = objc_msgSend_song(self, a2, duration, v3, v4);
  v12 = objc_msgSend_sampleRate(v7, v8, v9, v10, v11);

  memset(&v39, 0, sizeof(v39));
  time = *duration;
  CMTimeConvertScale(&v39, &time, v12, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  memset(&time, 0, sizeof(time));
  v17 = objc_msgSend_summary(self, v13, v14, v15, v16);
  v22 = v17;
  if (v17)
  {
    objc_msgSend_duration(v17, v18, v19, v20, v21);
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  memset(&v37, 0, sizeof(v37));
  v36 = time;
  CMTimeConvertScale(&v37, &v36, v12, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  memset(&v36, 0, sizeof(v36));
  lhs = v39;
  rhs = v37;
  CMTimeSubtract(&v36, &lhs, &rhs);
  lhs = v36;
  v33 = *MEMORY[0x277CC08F0];
  *&rhs.value = *MEMORY[0x277CC08F0];
  v23 = *(MEMORY[0x277CC08F0] + 16);
  rhs.epoch = v23;
  if (CMTimeCompare(&lhs, &rhs) < 0)
  {
    *&v36.value = v33;
    v36.epoch = v23;
  }

  objc_msgSend_setDuration_(self, v24, v39.value, v25, v26, v33);
  objc_msgSend_setDurationOfSilence_(self, v27, v36.value, v28, v29);
  objc_msgSend_setDurationOfMusic_(self, v30, v37.value, v31, v32);
}

- (void)_buildTracks
{
  v279 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_summary(self, a2, v2, v3, v4);
  v11 = objc_msgSend_song(self, v7, v8, v9, v10);
  v16 = objc_msgSend_sampleRate(v11, v12, v13, v14, v15);

  v257 = objc_opt_new();
  v253 = objc_opt_new();
  v259 = objc_opt_new();
  v258 = objc_opt_new();
  v21 = objc_msgSend_song(self, v17, v18, v19, v20);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v27 = objc_msgSend_song(self, v23, v24, v25, v26);
    v256 = objc_msgSend_audioFileURL(v27, v28, v29, v30, v31);
  }

  else
  {
    v256 = 0;
  }

  v252 = v6;
  v276 = 0u;
  v277 = 0u;
  v274 = 0u;
  v275 = 0u;
  obj = objc_msgSend_segments(v6, v23, v24, v25, v26, self);
  v260 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v32, &v274, v278, 16);
  v33 = 0;
  if (v260)
  {
    v255 = *v275;
    v34 = 1;
    v35 = MEMORY[0x277CC08F0];
    v36 = v253;
    do
    {
      for (i = 0; i != v260; ++i)
      {
        v262 = v33;
        if (*v275 != v255)
        {
          objc_enumerationMutation(obj);
        }

        v38 = *(*(&v274 + 1) + 8 * i);
        v43 = objc_opt_new();
        memset(&v273, 0, sizeof(v273));
        if (v38)
        {
          objc_msgSend_summaryTime(v38, v39, v40, v41, v42);
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        CMTimeConvertScale(&v273, &time, v16, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        objc_msgSend_setPosition_(v43, v44, v273.value, v45, v46);
        objc_msgSend_setUrl_(v43, v47, v256, v48, v49);
        memset(&time, 0, sizeof(time));
        if (v38)
        {
          objc_msgSend_trackTime(v38, v50, v51, v52, v53);
        }

        else
        {
          memset(&v271, 0, sizeof(v271));
        }

        CMTimeConvertScale(&time, &v271, v16, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        objc_msgSend_setOffset_(v43, v54, time.value, v55, v56);
        memset(&v271, 0, sizeof(v271));
        if (v38)
        {
          objc_msgSend_duration(v38, v57, v58, v59, v60);
        }

        else
        {
          memset(&v270, 0, sizeof(v270));
        }

        CMTimeConvertScale(&v271, &v270, v16, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        v263 = v43;
        objc_msgSend_setDuration_(v43, v61, v271.value, v62, v63);
        v64 = v257;
        if (v34)
        {
          v65 = v259;
        }

        else
        {
          v64 = v36;
          v65 = v258;
        }

        v261 = v64;
        v66 = v65;
        v71 = objc_msgSend_gainFunction(v38, v67, v68, v69, v70);
        v76 = v71;
        if (v71 && objc_msgSend_count(v71, v72, v73, v74, v75))
        {
          v77 = objc_msgSend_sortedArrayUsingSelector_(v76, v72, sel_compare_, v74, v75);

          if (objc_msgSend_count(v77, v78, v79, v80, v81) == 1)
          {
            v86 = objc_msgSend_firstObject(v77, v82, v83, v84, v85);
            objc_msgSend_gain(v86, v87, v88, v89, v90);
            v92 = v91;

            v93 = [FMKeyFrame alloc];
            LODWORD(v94) = v92;
            v98 = objc_msgSend_initWithValue_atTime_(v93, v95, 0, v96, v97, v94);
            objc_msgSend_appendVolumeKeyframe_(v66, v99, v98, v100, v101);
          }

          if (objc_msgSend_count(v77, v82, v83, v84, v85) != 1)
          {
            v102 = 0;
            do
            {
              memset(&v270, 0, sizeof(v270));
              v103 = objc_msgSend_objectAtIndexedSubscript_(v77, v72, v102, v74, v75);
              v108 = v103;
              if (v103)
              {
                objc_msgSend_segmentTime(v103, v104, v105, v106, v107);
              }

              else
              {
                memset(&v270, 0, sizeof(v270));
              }

              memset(&v269, 0, sizeof(v269));
              v109 = v102 + 1;
              v113 = objc_msgSend_objectAtIndexedSubscript_(v77, v110, v109, v111, v112);
              v118 = v113;
              if (v113)
              {
                objc_msgSend_segmentTime(v113, v114, v115, v116, v117);
              }

              else
              {
                memset(&v269, 0, sizeof(v269));
              }

              v122 = objc_msgSend_objectAtIndexedSubscript_(v77, v119, v109 - 1, v120, v121);
              objc_msgSend_gain(v122, v123, v124, v125, v126);
              v128 = v127;

              v132 = objc_msgSend_objectAtIndexedSubscript_(v77, v129, v109, v130, v131);
              objc_msgSend_gain(v132, v133, v134, v135, v136);
              v138 = v137;

              memset(&v268, 0, sizeof(v268));
              if (v38)
              {
                objc_msgSend_summaryTime(v38, v139, v140, v141, v142);
              }

              else
              {
                memset(&lhs, 0, sizeof(lhs));
              }

              rhs = v270;
              CMTimeAdd(&v268, &lhs, &rhs);
              memset(&lhs, 0, sizeof(lhs));
              rhs = v269;
              time2 = v270;
              CMTimeSubtract(&lhs, &rhs, &time2);
              v143 = v109 - 1;
              if (v109 == 1)
              {
                rhs = v268;
                time2 = *v35;
                if (CMTimeCompare(&rhs, &time2))
                {
                  v144 = [FMKeyFrame alloc];
                  v148 = objc_msgSend_initWithValue_atTime_(v144, v145, 0, v146, v147, 0.0);
                  objc_msgSend_appendVolumeKeyframe_(v66, v149, v148, v150, v151);
                }
              }

              rhs = lhs;
              time2 = *v35;
              if (CMTimeCompare(&rhs, &time2) < 0)
              {
                CMTimeMake(&rhs, 1, lhs.timescale);
                lhs = rhs;
              }

              memset(&rhs, 0, sizeof(rhs));
              time2 = v268;
              CMTimeConvertScale(&rhs, &time2, v16, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
              memset(&time2, 0, sizeof(time2));
              v264 = lhs;
              CMTimeConvertScale(&time2, &v264, v16, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
              v152 = [FMKeyFrame alloc];
              LODWORD(v153) = v128;
              v157 = objc_msgSend_initWithValue_atTime_(v152, v154, rhs.value, v155, v156, v153);
              objc_msgSend_appendVolumeKeyframe_(v66, v158, v157, v159, v160);

              v161 = [FMKeyFrame alloc];
              LODWORD(v162) = v138;
              v166 = objc_msgSend_initWithValue_atTime_(v161, v163, time2.value + rhs.value, v164, v165, v162);
              objc_msgSend_appendVolumeKeyframe_(v66, v167, v166, v168, v169);

              v102 = v143 + 1;
            }

            while (objc_msgSend_count(v77, v170, v171, v172, v173) - 1 > (v143 + 1));
          }

          v76 = v77;
          v36 = v253;
        }

        objc_msgSend_addObject_(v261, v72, v263, v74, v75);
        v34 ^= 1u;

        v33 = v263;
      }

      v260 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v174, &v274, v278, 16);
    }

    while (v260);
  }

  objc_msgSend_removeRedundantVolumeKeyFrames(v259, v175, v176, v177, v178);
  objc_msgSend_removeRedundantVolumeKeyFrames(v258, v179, v180, v181, v182);
  if (v33)
  {
    v187 = v251;
    v188 = objc_msgSend_durationOfMusic(v251, v183, v184, v185, v186);
    v193 = objc_msgSend_position(v33, v189, v190, v191, v192);
    v198 = objc_msgSend_duration(v33, v194, v195, v196, v197);
    v203 = objc_msgSend_duration(v33, v199, v200, v201, v202);
    objc_msgSend_setDuration_(v33, v204, v188 - (v193 + v198) + v203, v205, v206);
    v211 = v252;
    if (objc_msgSend_durationOfSilence(v251, v207, v208, v209, v210))
    {
      v212 = objc_opt_new();
      v217 = objc_msgSend_position(v33, v213, v214, v215, v216);
      v222 = objc_msgSend_duration(v33, v218, v219, v220, v221);
      objc_msgSend_setPosition_(v212, v223, v222 + v217, v224, v225);
      v230 = objc_msgSend_durationOfSilence(v251, v226, v227, v228, v229);
      objc_msgSend_setDuration_(v212, v231, v230, v232, v233);
      objc_msgSend_addObject_(v257, v234, v212, v235, v236);
    }
  }

  else
  {
    v187 = v251;
    objc_msgSend_durationOfSilence(v251, v183, v184, v185, v186);
    v211 = v252;
  }

  v237 = [FMTrack alloc];
  v240 = objc_msgSend_initWithClips_mixParameters_(v237, v238, v257, v259, v239);
  objc_msgSend_setTrackA_(v187, v241, v240, v242, v243);

  v244 = [FMTrack alloc];
  v247 = objc_msgSend_initWithClips_mixParameters_(v244, v245, v253, v258, v246);
  objc_msgSend_setTrackB_(v187, v248, v247, v249, v250);
}

@end