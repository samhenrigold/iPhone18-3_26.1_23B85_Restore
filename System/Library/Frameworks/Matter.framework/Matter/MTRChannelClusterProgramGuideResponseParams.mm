@interface MTRChannelClusterProgramGuideResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRChannelClusterProgramGuideResponseParams)init;
- (MTRChannelClusterProgramGuideResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRChannelClusterProgramGuideResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRChannelClusterProgramGuideResponseParams

- (MTRChannelClusterProgramGuideResponseParams)init
{
  v8.receiver = self;
  v8.super_class = MTRChannelClusterProgramGuideResponseParams;
  v2 = [(MTRChannelClusterProgramGuideResponseParams *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    paging = v2->_paging;
    v2->_paging = v3;

    array = [MEMORY[0x277CBEA60] array];
    programList = v2->_programList;
    v2->_programList = array;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRChannelClusterProgramGuideResponseParams);
  paging = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
  [(MTRChannelClusterProgramGuideResponseParams *)v4 setPaging:paging];

  programList = [(MTRChannelClusterProgramGuideResponseParams *)self programList];
  [(MTRChannelClusterProgramGuideResponseParams *)v4 setProgramList:programList];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: paging:%@ programList:%@; >", v5, self->_paging, self->_programList];;

  return v6;
}

- (MTRChannelClusterProgramGuideResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v17.receiver = self;
  v17.super_class = MTRChannelClusterProgramGuideResponseParams;
  v7 = [(MTRChannelClusterProgramGuideResponseParams *)&v17 init];
  if (!v7)
  {
    v11 = 0;
    goto LABEL_10;
  }

  objc_msgSend__responseDataForCommand_clusterID_commandID_error_(MTRBaseDevice);
  if (v16)
  {
    sub_2393C5AAC(v15);
    sub_2393C5ADC(v8, *(v16 + 8), *(v16 + 24));
    v9 = sub_2393C6FD0(v15, 256);
    if (!v9)
    {
      v13[0] = 0;
      v13[72] = 0;
      sub_2393C5AAC(v14);
      sub_2393C5ADC(v14, 0, 0);
      v9 = sub_238F05F80(v13, v15);
      if (!v9)
      {
        v9 = [(MTRChannelClusterProgramGuideResponseParams *)v7 _setFieldsFromDecodableStruct:v13];
        if (!v9)
        {
          v11 = v7;
          goto LABEL_8;
        }
      }
    }

    sub_238DD3F98(v9, v10, error);
  }

  v11 = 0;
LABEL_8:
  sub_238EA1758(&v16);
LABEL_10:

  return v11;
}

- (MTRChannelClusterProgramGuideResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRChannelClusterProgramGuideResponseParams;
  v4 = [(MTRChannelClusterProgramGuideResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRChannelClusterProgramGuideResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
    if (!v6)
    {
      v8 = v5;
      goto LABEL_6;
    }

    sub_238DD3F98(v6, v7, 0);
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct
{
  v5 = objc_opt_new();
  [(MTRChannelClusterProgramGuideResponseParams *)self setPaging:v5];

  if (*struct != 1 || (sub_238DE36B8(struct, v6)[56] & 1) == 0)
  {
    paging = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    [paging setPreviousToken:0];
LABEL_22:

    goto LABEL_23;
  }

  v7 = objc_opt_new();
  paging2 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
  [paging2 setPreviousToken:v7];

  v10 = sub_238DE36B8(struct, v9);
  if ((v10[56] & 1) == 0)
  {
    goto LABEL_189;
  }

  if (*v10 == 1)
  {
    v12 = MEMORY[0x277CCABB0];
    v13 = sub_238DE36B8(struct, v11);
    if ((v13[56] & 1) == 0)
    {
      goto LABEL_189;
    }

    paging4 = [v12 numberWithUnsignedShort:{LOWORD(sub_238E0A934(v13, v14)->super.isa)}];
    paging3 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    previousToken = [paging3 previousToken];
    [previousToken setLimit:paging4];
  }

  else
  {
    paging4 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    paging3 = [paging4 previousToken];
    [paging3 setLimit:0];
  }

  v20 = sub_238DE36B8(struct, v19);
  if ((v20[56] & 1) == 0)
  {
    goto LABEL_189;
  }

  if (v20[8] == 1)
  {
    v22 = sub_238DE36B8(struct, v21);
    if ((v22[56] & 1) == 0)
    {
      goto LABEL_189;
    }

    v24 = sub_238DE36B8(v22 + 8, v23);
    v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v24 length:v24[1] encoding:4];
    paging5 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    previousToken2 = [paging5 previousToken];
    [previousToken2 setAfter:v25];

    paging6 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    previousToken3 = [paging6 previousToken];
    after = [previousToken3 after];

    if (!after)
    {
      v32 = 0x6E9200000000;
LABEL_43:
      v86 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
      v87 = 47;
      goto LABEL_184;
    }
  }

  else
  {
    paging7 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    previousToken4 = [paging7 previousToken];
    [previousToken4 setAfter:0];
  }

  v35 = sub_238DE36B8(struct, v31);
  if ((v35[56] & 1) == 0)
  {
    goto LABEL_189;
  }

  if (v35[32] != 1)
  {
    paging = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    previousToken5 = [paging previousToken];
    [previousToken5 setBefore:0];

    goto LABEL_22;
  }

  v37 = sub_238DE36B8(struct, v36);
  if ((v37[56] & 1) == 0)
  {
    goto LABEL_189;
  }

  v39 = sub_238DE36B8(v37 + 32, v38);
  v40 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v39 length:v39[1] encoding:4];
  paging8 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
  previousToken6 = [paging8 previousToken];
  [previousToken6 setBefore:v40];

  paging9 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
  previousToken7 = [paging9 previousToken];
  before = [previousToken7 before];

  if (!before)
  {
    v32 = 0x6E9B00000000;
    goto LABEL_43;
  }

LABEL_23:
  if (*(struct + 72) != 1 || (sub_238DE36B8(struct + 72, v46)[56] & 1) == 0)
  {
    paging10 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    [paging10 setNextToken:0];
LABEL_45:

    goto LABEL_46;
  }

  v48 = objc_opt_new();
  paging11 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
  [paging11 setNextToken:v48];

  v51 = sub_238DE36B8(struct + 72, v50);
  if ((v51[56] & 1) == 0)
  {
    goto LABEL_189;
  }

  if (*v51 == 1)
  {
    v53 = MEMORY[0x277CCABB0];
    v54 = sub_238DE36B8(struct + 72, v52);
    if ((v54[56] & 1) == 0)
    {
      goto LABEL_189;
    }

    paging13 = [v53 numberWithUnsignedShort:{LOWORD(sub_238E0A934(v54, v55)->super.isa)}];
    paging12 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    nextToken = [paging12 nextToken];
    [nextToken setLimit:paging13];
  }

  else
  {
    paging13 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    paging12 = [paging13 nextToken];
    [paging12 setLimit:0];
  }

  v61 = sub_238DE36B8(struct + 72, v60);
  if ((v61[56] & 1) == 0)
  {
    goto LABEL_189;
  }

  if (v61[8] == 1)
  {
    v63 = sub_238DE36B8(struct + 72, v62);
    if ((v63[56] & 1) == 0)
    {
      goto LABEL_189;
    }

    v65 = sub_238DE36B8(v63 + 8, v64);
    v66 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v65 length:v65[1] encoding:4];
    paging14 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    nextToken2 = [paging14 nextToken];
    [nextToken2 setAfter:v66];

    paging15 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    nextToken3 = [paging15 nextToken];
    after2 = [nextToken3 after];

    if (!after2)
    {
      v32 = 0x6EB200000000;
      goto LABEL_43;
    }
  }

  else
  {
    paging16 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    nextToken4 = [paging16 nextToken];
    [nextToken4 setAfter:0];
  }

  v75 = sub_238DE36B8(struct + 72, v72);
  if ((v75[56] & 1) == 0)
  {
LABEL_189:
    sub_238EA195C();
  }

  if (v75[32] != 1)
  {
    paging10 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
    nextToken5 = [paging10 nextToken];
    [nextToken5 setBefore:0];

    goto LABEL_45;
  }

  v77 = sub_238DE36B8(struct + 72, v76);
  if ((v77[56] & 1) == 0)
  {
    goto LABEL_189;
  }

  v79 = sub_238DE36B8(v77 + 32, v78);
  v80 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v79 length:v79[1] encoding:4];
  paging17 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
  nextToken6 = [paging17 nextToken];
  [nextToken6 setBefore:v80];

  paging18 = [(MTRChannelClusterProgramGuideResponseParams *)self paging];
  nextToken7 = [paging18 nextToken];
  before2 = [nextToken7 before];

  if (!before2)
  {
    v32 = 0x6EBB00000000;
    goto LABEL_43;
  }

LABEL_46:
  v213 = objc_opt_new();
  sub_238EA3774(v220, struct + 144);
  v214 = 47;
  v89 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
  while (sub_238EA1A80(v220) && sub_238EA3810(v220))
  {
    v90 = objc_opt_new();
    v91 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v220[11] length:v220[12] encoding:4];
    [v90 setIdentifier:v91];

    identifier = [v90 identifier];

    if (!identifier)
    {
      v212 = 0x6ED000000000;
      goto LABEL_181;
    }

    v93 = objc_opt_new();
    [v90 setChannel:v93];

    v94 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v221];
    channel = [v90 channel];
    [channel setMajorNumber:v94];

    v96 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v222];
    channel2 = [v90 channel];
    [channel2 setMinorNumber:v96];

    if (v223[0] == 1)
    {
      v99 = sub_238DE36B8(v223, v98);
      v100 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v99 length:v99[1] encoding:4];
      channel3 = [v90 channel];
      [channel3 setName:v100];

      channel4 = [v90 channel];
      name = [channel4 name];

      if (!name)
      {
        v212 = 0x6ED900000000;
        goto LABEL_181;
      }
    }

    else
    {
      channel5 = [v90 channel];
      [channel5 setName:0];
    }

    if (v224[0] == 1)
    {
      v106 = sub_238DE36B8(v224, v104);
      v107 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v106 length:v106[1] encoding:4];
      channel6 = [v90 channel];
      [channel6 setCallSign:v107];

      channel7 = [v90 channel];
      callSign = [channel7 callSign];

      if (!callSign)
      {
        v212 = 0x6EE200000000;
        goto LABEL_181;
      }
    }

    else
    {
      channel8 = [v90 channel];
      [channel8 setCallSign:0];
    }

    if (v225[0] == 1)
    {
      v113 = sub_238DE36B8(v225, v111);
      v114 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v113 length:v113[1] encoding:4];
      channel9 = [v90 channel];
      [channel9 setAffiliateCallSign:v114];

      channel10 = [v90 channel];
      affiliateCallSign = [channel10 affiliateCallSign];

      if (!affiliateCallSign)
      {
        v212 = 0x6EEB00000000;
        goto LABEL_181;
      }
    }

    else
    {
      channel11 = [v90 channel];
      [channel11 setAffiliateCallSign:0];
    }

    if (v226[0] == 1)
    {
      v120 = sub_238DE36B8(v226, v118);
      v121 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v120 length:v120[1] encoding:4];
      channel12 = [v90 channel];
      [channel12 setIdentifier:v121];

      channel13 = [v90 channel];
      identifier2 = [channel13 identifier];

      if (!identifier2)
      {
        v212 = 0x6EF400000000;
        goto LABEL_181;
      }
    }

    else
    {
      channel14 = [v90 channel];
      [channel14 setIdentifier:0];
    }

    if (v227[0] == 1)
    {
      channel16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{LOBYTE(sub_238DE36D8(v227, v125)->super.isa)}];
      channel15 = [v90 channel];
      [channel15 setType:channel16];
    }

    else
    {
      channel16 = [v90 channel];
      [channel16 setType:0];
    }

    v129 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v228];
    [v90 setStartTime:v129];

    v130 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v229];
    [v90 setEndTime:v130];

    v131 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v230 length:v231 encoding:4];
    [v90 setTitle:v131];

    title = [v90 title];

    if (!title)
    {
      v212 = 0x6F0300000000;
      goto LABEL_181;
    }

    if (v232[0] == 1)
    {
      v134 = sub_238DE36B8(v232, v133);
      v135 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v134 length:v134[1] encoding:4];
      [v90 setSubtitle:v135];

      subtitle = [v90 subtitle];

      if (!subtitle)
      {
        v212 = 0x6F0900000000;
        goto LABEL_181;
      }
    }

    else
    {
      [v90 setSubtitle:0];
    }

    if (v233[0] == 1)
    {
      v138 = sub_238DE36B8(v233, v137);
      v139 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v138 length:v138[1] encoding:4];
      [v90 setDescriptionString:v139];

      descriptionString = [v90 descriptionString];

      if (!descriptionString)
      {
        v212 = 0x6F1200000000;
        goto LABEL_181;
      }
    }

    else
    {
      [v90 setDescriptionString:0];
    }

    if (v234[0] == 1)
    {
      v141 = objc_opt_new();
      v143 = sub_238DE36B8(v234, v142);
      sub_2393C5AAC(v217);
      v215 = 0;
      v216 = 0;
      sub_2393C5BDC(v217, v143);
      v218 = 0uLL;
      while (sub_238E43364(&v215))
      {
        v144 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v218 length:*(&v218 + 1) encoding:4];
        if (!v144)
        {
          v212 = 0x6F2100000000;
LABEL_166:
          v209 = v214;
          goto LABEL_180;
        }

        [v141 addObject:v144];
      }

      if (v215 != 33)
      {
        v212 = v215;
        if (v215)
        {
          goto LABEL_186;
        }
      }

      [v90 setAudioLanguages:v141];
    }

    else
    {
      [v90 setAudioLanguages:0];
    }

    if (v235[0] == 1)
    {
      v141 = objc_opt_new();
      v146 = sub_238DE36B8(v235, v145);
      sub_2393C5AAC(v217);
      v215 = 0;
      v216 = 0;
      sub_2393C5BDC(v217, v146);
      v218 = 0uLL;
      while (sub_238E43364(&v215))
      {
        v147 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v218 length:*(&v218 + 1) encoding:4];
        if (!v147)
        {
          v212 = 0x6F3800000000;
          goto LABEL_166;
        }

        [v141 addObject:v147];
      }

      if (v215 != 33)
      {
        v212 = v215;
        if (v215)
        {
LABEL_186:
          v89 = v216;
          LODWORD(v214) = v212;
          goto LABEL_166;
        }
      }

      [v90 setRatings:v141];
    }

    else
    {
      [v90 setRatings:0];
    }

    if (v236[0] == 1)
    {
      v149 = sub_238DE36B8(v236, v148);
      v150 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v149 length:v149[1] encoding:4];
      [v90 setThumbnailUrl:v150];

      thumbnailUrl = [v90 thumbnailUrl];

      if (!thumbnailUrl)
      {
        v212 = 0x6F4900000000;
        goto LABEL_181;
      }
    }

    else
    {
      [v90 setThumbnailUrl:0];
    }

    if (v237[0] == 1)
    {
      v153 = sub_238DE36B8(v237, v152);
      v154 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v153 length:v153[1] encoding:4];
      [v90 setPosterArtUrl:v154];

      posterArtUrl = [v90 posterArtUrl];

      if (!posterArtUrl)
      {
        v212 = 0x6F5200000000;
        goto LABEL_181;
      }
    }

    else
    {
      [v90 setPosterArtUrl:0];
    }

    if (v238[0] == 1)
    {
      v157 = sub_238DE36B8(v238, v156);
      v158 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v157 length:v157[1] encoding:4];
      [v90 setDvbiUrl:v158];

      dvbiUrl = [v90 dvbiUrl];

      if (!dvbiUrl)
      {
        v212 = 0x6F5B00000000;
        goto LABEL_181;
      }
    }

    else
    {
      [v90 setDvbiUrl:0];
    }

    if (v239[0] == 1)
    {
      v161 = sub_238DE36B8(v239, v160);
      v162 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v161 length:v161[1] encoding:4];
      [v90 setReleaseDate:v162];

      releaseDate = [v90 releaseDate];

      if (!releaseDate)
      {
        v212 = 0x6F6400000000;
        goto LABEL_181;
      }
    }

    else
    {
      [v90 setReleaseDate:0];
    }

    if (v240[0] == 1)
    {
      v165 = sub_238DE36B8(v240, v164);
      v166 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v165 length:v165[1] encoding:4];
      [v90 setParentalGuidanceText:v166];

      parentalGuidanceText = [v90 parentalGuidanceText];

      if (!parentalGuidanceText)
      {
        v212 = 0x6F6D00000000;
        goto LABEL_181;
      }
    }

    else
    {
      [v90 setParentalGuidanceText:0];
    }

    if (v241[0] == 1)
    {
      v169 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*sub_238DE3698(v241, v168)}];
      [v90 setRecordingFlag:v169];
    }

    else
    {
      [v90 setRecordingFlag:0];
    }

    if (v242[0] == 1 && (sub_238DE36B8(v242, v170)[32] & 1) != 0)
    {
      v171 = objc_opt_new();
      [v90 setSeriesInfo:v171];

      v173 = sub_238DE36B8(v242, v172);
      if ((v173[32] & 1) == 0)
      {
        goto LABEL_190;
      }

      v174 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v173 length:*(v173 + 1) encoding:4];
      seriesInfo = [v90 seriesInfo];
      [seriesInfo setSeason:v174];

      seriesInfo2 = [v90 seriesInfo];
      season = [seriesInfo2 season];

      if (!season)
      {
        v212 = 0x6F7F00000000;
        goto LABEL_181;
      }

      v179 = sub_238DE36B8(v242, v178);
      if (v179[32] != 1)
      {
LABEL_190:
        sub_238EA195C();
      }

      v180 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(v179 + 2) length:*(v179 + 3) encoding:4];
      seriesInfo3 = [v90 seriesInfo];
      [seriesInfo3 setEpisode:v180];

      seriesInfo4 = [v90 seriesInfo];
      episode = [seriesInfo4 episode];

      if (!episode)
      {
        v212 = 0x6F8400000000;
        goto LABEL_181;
      }
    }

    else
    {
      [v90 setSeriesInfo:0];
    }

    if (v243[0] == 1)
    {
      v141 = objc_opt_new();
      v185 = sub_238DE36B8(v243, v184);
      sub_2393C5AAC(v217);
      v215 = 0;
      v216 = 0;
      sub_2393C5BDC(v217, v185);
      v218 = 0uLL;
      LOBYTE(v219) = 0;
      while (1)
      {
        v186 = sub_238EA1A80(&v215);
        LODWORD(v187) = v215;
        if (v215)
        {
          v186 = 0;
        }

        if (!v186)
        {
          break;
        }

        v218 = 0uLL;
        LOBYTE(v219) = 0;
        v187 = sub_238F063FC(&v218, v217);
        v215 = v187;
        v216 = v188;
        if (v187)
        {
          break;
        }

        v189 = objc_opt_new();
        v190 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v218 length:*(&v218 + 1) encoding:4];
        [v189 setCategory:v190];

        category = [v189 category];

        if (!category)
        {
          v212 = 0x6F9500000000;
          goto LABEL_178;
        }

        if (v219 == 1)
        {
          v193 = sub_238DE36B8(&v219, v192);
          v194 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v193 length:v193[1] encoding:4];
          [v189 setSubCategory:v194];

          subCategory = [v189 subCategory];

          if (!subCategory)
          {
            v212 = 0x6F9B00000000;
            goto LABEL_178;
          }
        }

        else
        {
          [v189 setSubCategory:0];
        }

        [v141 addObject:v189];
      }

      if (v187 != 33)
      {
        v212 = v215;
        if (v215)
        {
          goto LABEL_187;
        }
      }

      [v90 setCategoryList:v141];
    }

    else
    {
      [v90 setCategoryList:0];
    }

    if (v244[0] == 1)
    {
      v141 = objc_opt_new();
      v197 = sub_238DE36B8(v244, v196);
      sub_2393C5AAC(v217);
      v215 = 0;
      v216 = 0;
      sub_2393C5BDC(v217, v197);
      v219 = 0u;
      v218 = 0u;
      while (sub_238E433BC(&v215))
      {
        v198 = objc_opt_new();
        v199 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v218 length:*(&v218 + 1) encoding:4];
        [v198 setName:v199];

        name2 = [v198 name];

        if (!name2)
        {
          v212 = 0x6FB600000000;
LABEL_173:

          goto LABEL_179;
        }

        v201 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v219 length:*(&v219 + 1) encoding:4];
        [v198 setRole:v201];

        role = [v198 role];

        if (!role)
        {
          v212 = 0x6FBB00000000;
          goto LABEL_173;
        }

        [v141 addObject:v198];
      }

      if (v215 != 33)
      {
        v212 = v215;
        if (v215)
        {
LABEL_187:
          v89 = v216;
          v209 = v212;
          goto LABEL_180;
        }
      }

      [v90 setCastList:v141];
    }

    else
    {
      [v90 setCastList:0];
    }

    if (v245[0] == 1)
    {
      v141 = objc_opt_new();
      v204 = sub_238DE36B8(v245, v203);
      sub_2393C5AAC(v217);
      v215 = 0;
      v216 = 0;
      sub_2393C5BDC(v217, v204);
      v219 = 0u;
      v218 = 0u;
      while (sub_238E433BC(&v215))
      {
        v189 = objc_opt_new();
        v205 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v218 length:*(&v218 + 1) encoding:4];
        [v189 setName:v205];

        name3 = [v189 name];

        if (!name3)
        {
          v212 = 0x6FD300000000;
          goto LABEL_178;
        }

        v207 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v219 length:*(&v219 + 1) encoding:4];
        [v189 setRole:v207];

        role2 = [v189 role];

        if (!role2)
        {
          v212 = 0x6FD800000000;
LABEL_178:

LABEL_179:
          v89 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
          v209 = 47;
LABEL_180:

          v214 = v209;
LABEL_181:

          v86 = v89;
          v87 = v214;
LABEL_182:
          v32 = v212 & 0xFFFFFFFF00000000;
          goto LABEL_183;
        }

        [v141 addObject:v189];
      }

      if (v215 != 33)
      {
        v212 = v215;
        if (v215)
        {
          goto LABEL_187;
        }
      }

      [v90 setExternalIDList:v141];
    }

    else
    {
      [v90 setExternalIDList:0];
    }

    [v213 addObject:v90];
  }

  if (LODWORD(v220[0]) != 33)
  {
    v212 = v220[0];
    v87 = LODWORD(v220[0]);
    if (LODWORD(v220[0]))
    {
      v86 = v220[1];
      goto LABEL_182;
    }
  }

  [(MTRChannelClusterProgramGuideResponseParams *)self setProgramList:v213];
  v86 = 0;
  v32 = 0;
  v87 = 0;
LABEL_183:

LABEL_184:
  v210 = v87 | v32;
  v211 = v86;
  result.mFile = v211;
  result.mError = v210;
  result.mLine = HIDWORD(v210);
  return result;
}

@end