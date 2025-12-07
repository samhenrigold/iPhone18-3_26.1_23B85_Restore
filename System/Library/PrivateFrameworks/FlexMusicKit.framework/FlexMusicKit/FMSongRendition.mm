@interface FMSongRendition
+ (id)coalesceMixParamsA:(id)a withMixParamsB:(id)b;
- (FMSongRendition)initWithSong:(id)song andOptions:(id)options;
- (double)_maxPeakAndLoudness:(double *)loudness missingPeakValueCount:(int *)count missingLoudnessCount:(int *)loudnessCount;
- (id)avCompositionWithAudioMix:(id *)mix includeShortenedOutroFadeOut:(BOOL)out;
- (id)description;
- (id)timedMetadataItemsWithIdentifier:(id)identifier;
@end

@implementation FMSongRendition

- (FMSongRendition)initWithSong:(id)song andOptions:(id)options
{
  songCopy = song;
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = FMSongRendition;
  v9 = [(FMSongRendition *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_song, song);
    objc_storeStrong(&v10->_options, options);
  }

  return v10;
}

- (id)description
{
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_trackA(self, a2, v2, v3, v4);
  v12 = objc_msgSend_description(v7, v8, v9, v10, v11);
  v16 = objc_msgSend_stringWithFormat_(v6, v13, @"\nTrackA: %@", v14, v15, v12);
  v20 = objc_msgSend_stringByAppendingString_(@"\nFMTracks:", v17, v16, v18, v19);

  v21 = MEMORY[0x277CCACA8];
  v26 = objc_msgSend_trackB(self, v22, v23, v24, v25);
  v31 = objc_msgSend_description(v26, v27, v28, v29, v30);
  v35 = objc_msgSend_stringWithFormat_(v21, v32, @"\nTrackB: %@", v33, v34, v31);
  v39 = objc_msgSend_stringByAppendingString_(v20, v36, v35, v37, v38);

  return v39;
}

+ (id)coalesceMixParamsA:(id)a withMixParamsB:(id)b
{
  v220 = *MEMORY[0x277D85DE8];
  aCopy = a;
  bCopy = b;
  v11 = bCopy;
  if (!bCopy)
  {
    goto LABEL_4;
  }

  v12 = objc_msgSend_volumeKeyFrames(bCopy, v7, v8, v9, v10);
  if (objc_msgSend_count(v12, v13, v14, v15, v16) == 1)
  {
    v21 = objc_msgSend_volumeKeyFrames(v11, v17, v18, v19, v20);
    v26 = objc_msgSend_lastObject(v21, v22, v23, v24, v25);
    objc_msgSend_value(v26, v27, v28, v29, v30);
    v32 = v31;

    if (v32 == 1.0)
    {
LABEL_4:
      v37 = aCopy;
LABEL_10:
      v59 = v37;
      goto LABEL_11;
    }
  }

  else
  {
  }

  if (!aCopy)
  {
LABEL_9:
    v37 = v11;
    goto LABEL_10;
  }

  v38 = objc_msgSend_volumeKeyFrames(aCopy, v33, v34, v35, v36);
  if (objc_msgSend_count(v38, v39, v40, v41, v42) == 1)
  {
    v47 = objc_msgSend_volumeKeyFrames(aCopy, v43, v44, v45, v46);
    v52 = objc_msgSend_lastObject(v47, v48, v49, v50, v51);
    objc_msgSend_value(v52, v53, v54, v55, v56);
    v58 = v57;

    if (v58 == 1.0)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v59 = objc_opt_new();
  v212 = 0u;
  v213 = 0u;
  v214 = 0u;
  v215 = 0u;
  v65 = objc_msgSend_volumeKeyFrames(aCopy, v61, v62, v63, v64);
  v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v66, &v212, v219, 16);
  if (v67)
  {
    v68 = v67;
    v69 = *v213;
    do
    {
      for (i = 0; i != v68; ++i)
      {
        if (*v213 != v69)
        {
          objc_enumerationMutation(v65);
        }

        v71 = *(*(&v212 + 1) + 8 * i);
        v72 = [FMKeyFrame alloc];
        v77 = objc_msgSend_sampleTime(v71, v73, v74, v75, v76);
        v81 = objc_msgSend_initWithValue_atTime_(v72, v78, v77, v79, v80, 0.0);
        objc_msgSend_appendVolumeKeyframe_(v59, v82, v81, v83, v84);
      }

      v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v85, &v212, v219, 16);
    }

    while (v68);
  }

  v210 = 0u;
  v211 = 0u;
  v208 = 0u;
  v209 = 0u;
  v90 = objc_msgSend_volumeKeyFrames(v11, v86, v87, v88, v89);
  v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v90, v91, &v208, v218, 16);
  if (v92)
  {
    v93 = v92;
    v94 = *v209;
    do
    {
      for (j = 0; j != v93; ++j)
      {
        if (*v209 != v94)
        {
          objc_enumerationMutation(v90);
        }

        v96 = *(*(&v208 + 1) + 8 * j);
        v97 = [FMKeyFrame alloc];
        v102 = objc_msgSend_sampleTime(v96, v98, v99, v100, v101);
        v106 = objc_msgSend_initWithValue_atTime_(v97, v103, v102, v104, v105, 0.0);
        objc_msgSend_insertVolumeKeyframe_(v59, v107, v106, v108, v109);
      }

      v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(v90, v110, &v208, v218, 16);
    }

    while (v93);
  }

  v111 = objc_opt_new();
  v116 = objc_msgSend_volumeKeyFrames(v59, v112, v113, v114, v115);
  if (objc_msgSend_count(v116, v117, v118, v119, v120) != 1)
  {
    v124 = 0;
    do
    {
      v125 = objc_msgSend_objectAtIndexedSubscript_(v116, v121, v124, v122, v123);
      v130 = objc_msgSend_sampleTime(v125, v126, v127, v128, v129);

      v134 = objc_msgSend_objectAtIndexedSubscript_(v116, v131, ++v124, v132, v133);
      v139 = objc_msgSend_sampleTime(v134, v135, v136, v137, v138);

      v140 = [FMKeyFrame alloc];
      v144 = objc_msgSend_initWithValue_atTime_(v140, v141, (v139 + v130) / 2, v142, v143, 0.0);
      objc_msgSend_addObject_(v111, v145, v144, v146, v147);
    }

    while (v124 < objc_msgSend_count(v116, v148, v149, v150, v151) - 1);
  }

  v206 = 0u;
  v207 = 0u;
  v204 = 0u;
  v205 = 0u;
  v152 = v111;
  v154 = objc_msgSend_countByEnumeratingWithState_objects_count_(v152, v153, &v204, v217, 16);
  if (v154)
  {
    v158 = v154;
    v159 = *v205;
    do
    {
      for (k = 0; k != v158; ++k)
      {
        if (*v205 != v159)
        {
          objc_enumerationMutation(v152);
        }

        objc_msgSend_insertVolumeKeyframe_(v59, v155, *(*(&v204 + 1) + 8 * k), v156, v157);
      }

      v158 = objc_msgSend_countByEnumeratingWithState_objects_count_(v152, v155, &v204, v217, 16);
    }

    while (v158);
  }

  v202 = 0u;
  v203 = 0u;
  v200 = 0u;
  v201 = 0u;
  v165 = objc_msgSend_volumeKeyFrames(v59, v161, v162, v163, v164, 0);
  v167 = objc_msgSend_countByEnumeratingWithState_objects_count_(v165, v166, &v200, v216, 16);
  if (v167)
  {
    v172 = v167;
    v173 = *v201;
    do
    {
      for (m = 0; m != v172; ++m)
      {
        if (*v201 != v173)
        {
          objc_enumerationMutation(v165);
        }

        v175 = *(*(&v200 + 1) + 8 * m);
        v176 = objc_msgSend_sampleTime(v175, v168, v169, v170, v171);
        objc_msgSend_volumeValueAtTime_(aCopy, v177, v176, v178, v179);
        v181 = v180;
        v186 = objc_msgSend_sampleTime(v175, v182, v183, v184, v185);
        objc_msgSend_volumeValueAtTime_(v11, v187, v186, v188, v189);
        if (fabsf(v181) == INFINITY)
        {
          v195 = 1.0;
        }

        else
        {
          v195 = v181;
        }

        if (fabsf(*&v194) == INFINITY)
        {
          *&v194 = 1.0;
        }

        *&v194 = v195 * *&v194;
        objc_msgSend_setValue_(v175, v190, v191, v192, v193, v194);
      }

      v172 = objc_msgSend_countByEnumeratingWithState_objects_count_(v165, v168, &v200, v216, 16);
    }

    while (v172);
  }

  objc_msgSend_removeRedundantVolumeKeyFrames(v59, v196, v197, v198, v199);
LABEL_11:

  return v59;
}

- (id)avCompositionWithAudioMix:(id *)mix includeShortenedOutroFadeOut:(BOOL)out
{
  outCopy = out;
  v235 = *MEMORY[0x277D85DE8];
  v212 = objc_msgSend_composition(MEMORY[0x277CE6548], a2, mix, out, v4);
  v11 = objc_msgSend_song(self, v7, v8, v9, v10);
  timescale = objc_msgSend_sampleRate(v11, v12, v13, v14, v15);

  if (outCopy && (objc_msgSend_options(self, v16, v17, v18, v19), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKey_(v20, v21, @"OutroCanBeShortened", v22, v23), v24 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend_BOOLValue(v24, v25, v26, v27, v28), v24, v20, v29))
  {
    v211 = objc_msgSend__buildOutroFadeoutMixParams(self, v16, v17, v18, v19);
  }

  else
  {
    v211 = 0;
  }

  v214 = 0;
  v30 = *MEMORY[0x277CE5E48];
  v222 = *MEMORY[0x277CE6240];
  v31 = 1;
  selfCopy = self;
  v220 = *MEMORY[0x277CE5E48];
  do
  {
    v32 = v31;
    if (v31)
    {
      objc_msgSend_trackA(self, v16, v17, v18, v19);
    }

    else
    {
      objc_msgSend_trackB(self, v16, v17, v18, v19);
    }
    v35 = ;
    if (v35)
    {
      v216 = v32;
      v218 = objc_msgSend_addMutableTrackWithMediaType_preferredTrackID_(v212, v33, v30, 0, v34);
      v227 = 0u;
      v228 = 0u;
      v229 = 0u;
      v230 = 0u;
      v215 = v35;
      obj = objc_msgSend_clips(v35, v36, v37, v38, v39);
      v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, &v227, v234, 16);
      if (v41)
      {
        v42 = v41;
        v43 = *v228;
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v228 != v43)
            {
              objc_enumerationMutation(obj);
            }

            v45 = *(*(&v227 + 1) + 8 * i);
            v46 = objc_autoreleasePoolPush();
            v51 = objc_msgSend_url(v45, v47, v48, v49, v50);

            if (v51)
            {
              v56 = MEMORY[0x277CE6650];
              v57 = objc_msgSend_url(v45, v52, v53, v54, v55);
              v232 = v222;
              v233 = MEMORY[0x277CBEC38];
              v59 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v58, &v233, &v232, 1);
              v62 = objc_msgSend_URLAssetWithURL_options_(v56, v60, v57, v59, v61);

              v63 = dispatch_semaphore_create(0);
              v225[0] = MEMORY[0x277D85DD0];
              v225[1] = 3221225472;
              v225[2] = sub_24B7EA354;
              v225[3] = &unk_27900E970;
              v64 = v63;
              v226 = v64;
              objc_msgSend_loadValuesAsynchronouslyForKeys_completionHandler_(v62, v65, &unk_285EA8730, v225, v66);
              v67 = dispatch_time(0, 20000000000);
              if (dispatch_semaphore_wait(v64, v67))
              {
                v71 = FlexLogForCategory(0);
                if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
                {
                  v76 = objc_msgSend_url(v45, v72, v73, v74, v75);
                  LODWORD(buf.start.value) = 138412290;
                  *(&buf.start.value + 4) = v76;
                  _os_log_impl(&dword_24B7E5000, v71, OS_LOG_TYPE_DEFAULT, "Timed out waiting for tracks to load for asset: %@", &buf, 0xCu);
                }
              }

              else
              {
                v71 = objc_msgSend_tracksWithMediaType_(v62, v68, v220, v69, v70);
                if (objc_msgSend_count(v71, v77, v78, v79, v80))
                {
                  v84 = objc_msgSend_tracksWithMediaType_(v62, v81, v220, v82, v83);
                  v88 = objc_msgSend_objectAtIndex_(v84, v85, 0, v86, v87);

                  v93 = objc_msgSend_offset(v45, v89, v90, v91, v92);
                  CMTimeMake(&start.start, v93, timescale);
                  v98 = objc_msgSend_duration(v45, v94, v95, v96, v97);
                  CMTimeMake(&duration, v98, timescale);
                  CMTimeRangeMake(&buf, &start.start, &duration);
                  v103 = objc_msgSend_position(v45, v99, v100, v101, v102);
                  CMTimeMake(&start.start, v103, timescale);
                  objc_msgSend_insertTimeRange_ofTrack_atTime_error_(v218, v104, &buf, v88, &start, 0);
                }

                else
                {
                  v88 = FlexLogForCategory(0);
                  if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
                  {
                    v109 = objc_msgSend_url(v45, v105, v106, v107, v108);
                    LODWORD(buf.start.value) = 138412290;
                    *(&buf.start.value + 4) = v109;
                    _os_log_impl(&dword_24B7E5000, v88, OS_LOG_TYPE_DEFAULT, "0 audio tracks found in asset: %@", &buf, 0xCu);
                  }
                }
              }
            }

            objc_autoreleasePoolPop(v46);
          }

          v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v110, &v227, v234, 16);
        }

        while (v42);
      }

      if (mix)
      {
        v35 = v215;
        v115 = objc_msgSend_mixParameters(v215, v111, v112, v113, v114);

        v32 = v216;
        if (!v115)
        {
LABEL_42:

          self = selfCopy;
          v30 = v220;
          goto LABEL_43;
        }

        v120 = v214;
        if (!v214)
        {
          v120 = objc_msgSend_array(MEMORY[0x277CBEB18], v116, v117, v118, v119);
        }

        v214 = v120;
        v121 = objc_msgSend_audioMixInputParametersWithTrack_(MEMORY[0x277CE6540], v116, v218, v118, v119, v211);
        v126 = objc_msgSend_mixParameters(v215, v122, v123, v124, v125);
        v129 = objc_msgSend_coalesceMixParamsA_withMixParamsB_(FMSongRendition, v127, v126, v211, v128);

        v134 = objc_msgSend_volumeKeyFrames(v129, v130, v131, v132, v133);
        v139 = objc_msgSend_count(v134, v135, v136, v137, v138);
        v143 = v139 - 1;
        if (v139 >= 1)
        {
          v144 = v139;
          v145 = 0;
          do
          {
            v150 = objc_msgSend_objectAtIndexedSubscript_(v134, v140, v145, v141, v142);
            if (v145 < v143 && (objc_msgSend_objectAtIndexedSubscript_(v134, v146, v145 + 1, v148, v149), (v151 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v152 = v151;
              memset(&buf, 0, sizeof(buf));
              v153 = objc_msgSend_sampleTime(v150, v146, v147, v148, v149);
              CMTimeMake(&start.start, v153, timescale);
              v158 = objc_msgSend_sampleTime(v152, v154, v155, v156, v157);
              v163 = objc_msgSend_sampleTime(v150, v159, v160, v161, v162);
              CMTimeMake(&duration, v158 - v163, timescale);
              CMTimeRangeMake(&buf, &start.start, &duration);
              objc_msgSend_value(v150, v164, v165, v166, v167);
              v169 = v168;
              objc_msgSend_value(v152, v170, v171, v172, v173);
              LODWORD(v175) = v174;
              start = buf;
              objc_msgSend_setVolumeRampFromStartVolume_toEndVolume_timeRange_(v121, v176, &start, v177, v178, COERCE_DOUBLE(__PAIR64__(buf.duration.flags, v169)), v175);

              ++v145;
            }

            else
            {
              memset(&buf, 0, sizeof(buf));
              v179 = objc_msgSend_sampleTime(v150, v146, v147, v148, v149);
              CMTimeMake(&start.start, v179, timescale);
              v184 = objc_msgSend_duration(selfCopy, v180, v181, v182, v183);
              v189 = objc_msgSend_sampleTime(v150, v185, v186, v187, v188);
              CMTimeMake(&duration, v184 - v189, timescale);
              CMTimeRangeMake(&buf, &start.start, &duration);
              if (buf.duration.value >= 1)
              {
                objc_msgSend_value(v150, v190, v191, v192, v193);
                v195 = v194;
                objc_msgSend_value(v150, v196, v197, v198, v199);
                LODWORD(v201) = v200;
                start = buf;
                objc_msgSend_setVolumeRampFromStartVolume_toEndVolume_timeRange_(v121, v202, &start, v203, v204, COERCE_DOUBLE(__PAIR64__(buf.duration.flags, v195)), v201);
              }

              ++v145;
            }
          }

          while (v145 != v144);
        }

        objc_msgSend_addObject_(v214, v140, v121, v141, v142);
      }

      v32 = v216;
      v35 = v215;
      goto LABEL_42;
    }

LABEL_43:

    v31 = 0;
  }

  while ((v32 & 1) != 0);
  if (mix)
  {
    if (v214)
    {
      v205 = objc_msgSend_audioMix(MEMORY[0x277CE6538], v16, v17, v18, v19);
      objc_msgSend_setInputParameters_(v205, v206, v214, v207, v208);
    }

    else
    {
      v205 = 0;
    }

    v209 = v205;
    *mix = v205;
  }

  return v212;
}

- (id)timedMetadataItemsWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9 = objc_msgSend_song(self, v5, v6, v7, v8);
  v12 = objc_msgSend_timedMetadataItemsWithIdentifier_forRendition_(v9, v10, identifierCopy, self, v11);

  return v12;
}

- (double)_maxPeakAndLoudness:(double *)loudness missingPeakValueCount:(int *)count missingLoudnessCount:(int *)loudnessCount
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v8 = objc_msgSend_timedMetadataItemsWithIdentifier_(self, a2, @"FMTimedMetadataIdentifierSegment", count, loudnessCount);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_24B7EA5D4;
  v16[3] = &unk_27900E998;
  v16[4] = &v33;
  v16[5] = &v21;
  v16[6] = &v29;
  v16[7] = &v25;
  v16[8] = &v17;
  objc_msgSend_enumerateObjectsUsingBlock_(v8, v9, v16, v10, v11);
  if (loudness)
  {
    v12 = v26[3];
    if (v12 <= 0.0)
    {
      v13 = -INFINITY;
    }

    else
    {
      v13 = v30[3] / v12;
    }

    v30[3] = v13;
    *loudness = v13;
  }

  if (count)
  {
    *count = *(v22 + 6);
  }

  if (loudnessCount)
  {
    *loudnessCount = *(v18 + 6);
  }

  v14 = v34[3];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  return v14;
}

@end