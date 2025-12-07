@interface MTRPushAVStreamTransportClusterFindTransportResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRPushAVStreamTransportClusterFindTransportResponseParams)init;
- (MTRPushAVStreamTransportClusterFindTransportResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRPushAVStreamTransportClusterFindTransportResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRPushAVStreamTransportClusterFindTransportResponseParams

- (MTRPushAVStreamTransportClusterFindTransportResponseParams)init
{
  v6.receiver = self;
  v6.super_class = MTRPushAVStreamTransportClusterFindTransportResponseParams;
  v2 = [(MTRPushAVStreamTransportClusterFindTransportResponseParams *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEA60] array];
    transportConfigurations = v2->_transportConfigurations;
    v2->_transportConfigurations = array;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRPushAVStreamTransportClusterFindTransportResponseParams);
  transportConfigurations = [(MTRPushAVStreamTransportClusterFindTransportResponseParams *)self transportConfigurations];
  [(MTRPushAVStreamTransportClusterFindTransportResponseParams *)v4 setTransportConfigurations:transportConfigurations];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: transportConfigurations:%@ >", v5, self->_transportConfigurations];;

  return v6;
}

- (MTRPushAVStreamTransportClusterFindTransportResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v15.receiver = self;
  v15.super_class = MTRPushAVStreamTransportClusterFindTransportResponseParams;
  v7 = [(MTRPushAVStreamTransportClusterFindTransportResponseParams *)&v15 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  objc_msgSend__responseDataForCommand_clusterID_commandID_error_(MTRBaseDevice);
  if (v14)
  {
    sub_2393C5AAC(v13);
    sub_2393C5ADC(v13, *(v14 + 8), *(v14 + 24));
    v8 = sub_2393C6FD0(v13, 256);
    if (!v8)
    {
      sub_2393C5AAC(v12);
      sub_2393C5ADC(v12, 0, 0);
      v12[72] = 0;
      v8 = sub_238EFD1FC(v12, v13);
      if (!v8)
      {
        v8 = [(MTRPushAVStreamTransportClusterFindTransportResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
        if (!v8)
        {
          v10 = v7;
          goto LABEL_8;
        }
      }
    }

    sub_238DD3F98(v8, v9, error);
  }

  v10 = 0;
LABEL_8:
  sub_238EA1758(&v14);
LABEL_10:

  return v10;
}

- (MTRPushAVStreamTransportClusterFindTransportResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRPushAVStreamTransportClusterFindTransportResponseParams;
  v4 = [(MTRPushAVStreamTransportClusterFindTransportResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRPushAVStreamTransportClusterFindTransportResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  v4 = objc_opt_new();
  sub_238E71468(v237, struct);
  v230 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
  while (sub_238E714BC(v237))
  {
    v5 = objc_opt_new();
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v238];
    [v5 setConnectionID:v6];

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v239];
    [v5 setTransportStatus:v7];

    if (v240[0] == 1)
    {
      v8 = objc_opt_new();
      [v5 setTransportOptions:v8];

      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*sub_238DE36B8(v240, v9)}];
      transportOptions = [v5 transportOptions];
      [transportOptions setStreamUsage:v10];

      if (sub_238DE36B8(v240, v12)[2] == 1 && (v14 = sub_238DE36B8(v240, v13), (BYTE2(sub_238E0A934(v14 + 2, v15)->super.isa) & 1) != 0))
      {
        v17 = MEMORY[0x277CCABB0];
        v18 = sub_238DE36B8(v240, v16);
        v20 = sub_238E0A934(v18 + 2, v19);
        if ((BYTE2(v20->super.isa) & 1) == 0)
        {
          goto LABEL_73;
        }

        transportOptions3 = [v17 numberWithUnsignedShort:LOWORD(v20->super.isa)];
        transportOptions2 = [v5 transportOptions];
        [transportOptions2 setVideoStreamID:transportOptions3];
      }

      else
      {
        transportOptions3 = [v5 transportOptions];
        [transportOptions3 setVideoStreamID:0];
      }

      if (sub_238DE36B8(v240, v23)[8] == 1 && (v25 = sub_238DE36B8(v240, v24), (BYTE2(sub_238E0A934(v25 + 8, v26)->super.isa) & 1) != 0))
      {
        v28 = MEMORY[0x277CCABB0];
        v29 = sub_238DE36B8(v240, v27);
        v31 = sub_238E0A934(v29 + 8, v30);
        if (BYTE2(v31->super.isa) != 1)
        {
          goto LABEL_73;
        }

        transportOptions5 = [v28 numberWithUnsignedShort:LOWORD(v31->super.isa)];
        transportOptions4 = [v5 transportOptions];
        [transportOptions4 setAudioStreamID:transportOptions5];
      }

      else
      {
        transportOptions5 = [v5 transportOptions];
        [transportOptions5 setAudioStreamID:0];
      }

      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{*(sub_238DE36B8(v240, v34) + 7)}];
      transportOptions6 = [v5 transportOptions];
      [transportOptions6 setEndpointID:v35];

      v38 = sub_238DE36B8(v240, v37);
      v39 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(v38 + 2) length:*(v38 + 3) encoding:4];
      transportOptions7 = [v5 transportOptions];
      [transportOptions7 setUrl:v39];

      transportOptions8 = [v5 transportOptions];
      v42 = [transportOptions8 url];

      if (!v42)
      {
        v226 = 0x95DD00000000;
        goto LABEL_69;
      }

      v43 = objc_opt_new();
      transportOptions9 = [v5 transportOptions];
      [transportOptions9 setTriggerOptions:v43];

      v46 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{sub_238DE36B8(v240, v45)[32]}];
      transportOptions10 = [v5 transportOptions];
      triggerOptions = [transportOptions10 triggerOptions];
      [triggerOptions setTriggerType:v46];

      if (sub_238DE36B8(v240, v49)[40] == 1 && (v51 = sub_238DE36B8(v240, v50), (sub_238DE36B8(v51 + 40, v52)[72] & 1) != 0))
      {
        transportOptions12 = objc_opt_new();
        v55 = sub_238DE36B8(v240, v54);
        v57 = sub_238DE36B8(v55 + 40, v56);
        if ((v57[72] & 1) == 0)
        {
          sub_238EA195C();
        }

        sub_2393C5AAC(v233);
        v231 = 0;
        v232 = 0;
        sub_2393C5BDC(v233, v57);
        LOBYTE(v234) = 0;
        v235 = 0;
        v236[0] = 0;
        while (sub_238EA1A80(&v231) && sub_238EA45DC(&v231))
        {
          v58 = objc_opt_new();
          v59 = v58;
          if (v235)
          {
            v60 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v234];
            [v59 setZone:v60];
          }

          else
          {
            [v58 setZone:0];
          }

          if (v236[0] == 1)
          {
            v62 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{LOBYTE(sub_238DE36D8(v236, v61)->super.isa)}];
            [v59 setSensitivity:v62];
          }

          else
          {
            [v59 setSensitivity:0];
          }

          [transportOptions12 addObject:v59];
        }

        if (v231 != 33)
        {
          v64 = v231;
          if (v231)
          {
            v226 = v231 & 0xFFFFFFFF00000000;
            v230 = v232;

            goto LABEL_70;
          }
        }

        transportOptions11 = [v5 transportOptions];
        triggerOptions2 = [transportOptions11 triggerOptions];
        [triggerOptions2 setMotionZones:transportOptions12];
      }

      else
      {
        transportOptions12 = [v5 transportOptions];
        transportOptions11 = [transportOptions12 triggerOptions];
        [transportOptions11 setMotionZones:0];
      }

      if (sub_238DE36B8(v240, v66)[128] == 1 && (v68 = sub_238DE36B8(v240, v67), (BYTE1(sub_238DE36D8(v68 + 128, v69)->super.isa) & 1) != 0))
      {
        v71 = MEMORY[0x277CCABB0];
        v72 = sub_238DE36B8(v240, v70);
        v74 = sub_238DE36D8(v72 + 128, v73);
        if (v74[1] != 1)
        {
LABEL_73:
          sub_238EA195C();
        }

        transportOptions14 = [v71 numberWithUnsignedChar:*v74];
        transportOptions13 = [v5 transportOptions];
        triggerOptions3 = [transportOptions13 triggerOptions];
        [triggerOptions3 setMotionSensitivity:transportOptions14];
      }

      else
      {
        transportOptions14 = [v5 transportOptions];
        transportOptions13 = [transportOptions14 triggerOptions];
        [transportOptions13 setMotionSensitivity:0];
      }

      if (sub_238DE36B8(v240, v78)[132] == 1)
      {
        v79 = objc_opt_new();
        transportOptions15 = [v5 transportOptions];
        triggerOptions4 = [transportOptions15 triggerOptions];
        [triggerOptions4 setMotionTimeControl:v79];

        v82 = MEMORY[0x277CCABB0];
        v84 = sub_238DE36B8(v240, v83);
        v86 = [v82 numberWithUnsignedShort:{*sub_238DE3698(v84 + 132, v85)}];
        transportOptions16 = [v5 transportOptions];
        triggerOptions5 = [transportOptions16 triggerOptions];
        motionTimeControl = [triggerOptions5 motionTimeControl];
        [motionTimeControl setInitialDuration:v86];

        v90 = MEMORY[0x277CCABB0];
        v92 = sub_238DE36B8(v240, v91);
        v94 = [v90 numberWithUnsignedShort:{*(sub_238DE3698(v92 + 132, v93) + 1)}];
        transportOptions17 = [v5 transportOptions];
        triggerOptions6 = [transportOptions17 triggerOptions];
        motionTimeControl2 = [triggerOptions6 motionTimeControl];
        [motionTimeControl2 setAugmentationDuration:v94];

        v98 = MEMORY[0x277CCABB0];
        v100 = sub_238DE36B8(v240, v99);
        v102 = [v98 numberWithUnsignedInt:{*(sub_238DE3698(v100 + 132, v101) + 1)}];
        transportOptions18 = [v5 transportOptions];
        triggerOptions7 = [transportOptions18 triggerOptions];
        motionTimeControl3 = [triggerOptions7 motionTimeControl];
        [motionTimeControl3 setMaxDuration:v102];

        v106 = MEMORY[0x277CCABB0];
        v108 = sub_238DE36B8(v240, v107);
        transportOptions20 = [v106 numberWithUnsignedShort:{*(sub_238DE3698(v108 + 132, v109) + 4)}];
        transportOptions19 = [v5 transportOptions];
        triggerOptions8 = [transportOptions19 triggerOptions];
        motionTimeControl4 = [triggerOptions8 motionTimeControl];
        [motionTimeControl4 setBlindDuration:transportOptions20];
      }

      else
      {
        transportOptions20 = [v5 transportOptions];
        transportOptions19 = [transportOptions20 triggerOptions];
        [transportOptions19 setMotionTimeControl:0];
      }

      if (sub_238DE36B8(v240, v114)[148] == 1)
      {
        v116 = MEMORY[0x277CCABB0];
        v117 = sub_238DE36B8(v240, v115);
        transportOptions22 = [v116 numberWithUnsignedShort:{LOWORD(sub_238E0A934(v117 + 148, v118)->super.isa)}];
        transportOptions21 = [v5 transportOptions];
        triggerOptions9 = [transportOptions21 triggerOptions];
        [triggerOptions9 setMaxPreRollLen:transportOptions22];
      }

      else
      {
        transportOptions22 = [v5 transportOptions];
        transportOptions21 = [transportOptions22 triggerOptions];
        [transportOptions21 setMaxPreRollLen:0];
      }

      v123 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{sub_238DE36B8(v240, v122)[152]}];
      transportOptions23 = [v5 transportOptions];
      [transportOptions23 setIngestMethod:v123];

      v125 = objc_opt_new();
      transportOptions24 = [v5 transportOptions];
      [transportOptions24 setContainerOptions:v125];

      v128 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{sub_238DE36B8(v240, v127)[160]}];
      transportOptions25 = [v5 transportOptions];
      containerOptions = [transportOptions25 containerOptions];
      [containerOptions setContainerType:v128];

      if (sub_238DE36B8(v240, v131)[168] == 1)
      {
        v132 = objc_opt_new();
        transportOptions26 = [v5 transportOptions];
        containerOptions2 = [transportOptions26 containerOptions];
        [containerOptions2 setCmafContainerOptions:v132];

        v135 = MEMORY[0x277CCABB0];
        v137 = sub_238DE36B8(v240, v136);
        v139 = [v135 numberWithUnsignedChar:{*sub_238DE36B8(v137 + 168, v138)}];
        transportOptions27 = [v5 transportOptions];
        containerOptions3 = [transportOptions27 containerOptions];
        cmafContainerOptions = [containerOptions3 cmafContainerOptions];
        [cmafContainerOptions setCmafInterface:v139];

        v143 = MEMORY[0x277CCABB0];
        v145 = sub_238DE36B8(v240, v144);
        v147 = [v143 numberWithUnsignedShort:{*(sub_238DE36B8(v145 + 168, v146) + 1)}];
        transportOptions28 = [v5 transportOptions];
        containerOptions4 = [transportOptions28 containerOptions];
        cmafContainerOptions2 = [containerOptions4 cmafContainerOptions];
        [cmafContainerOptions2 setSegmentDuration:v147];

        v151 = MEMORY[0x277CCABB0];
        v153 = sub_238DE36B8(v240, v152);
        v155 = [v151 numberWithUnsignedShort:{*(sub_238DE36B8(v153 + 168, v154) + 2)}];
        transportOptions29 = [v5 transportOptions];
        containerOptions5 = [transportOptions29 containerOptions];
        cmafContainerOptions3 = [containerOptions5 cmafContainerOptions];
        [cmafContainerOptions3 setChunkDuration:v155];

        v159 = MEMORY[0x277CCABB0];
        v161 = sub_238DE36B8(v240, v160);
        v163 = [v159 numberWithUnsignedChar:{sub_238DE36B8(v161 + 168, v162)[6]}];
        transportOptions30 = [v5 transportOptions];
        containerOptions6 = [transportOptions30 containerOptions];
        cmafContainerOptions4 = [containerOptions6 cmafContainerOptions];
        [cmafContainerOptions4 setSessionGroup:v163];

        v168 = sub_238DE36B8(v240, v167);
        v170 = sub_238DE36B8(v168 + 168, v169);
        v171 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(v170 + 1) length:*(v170 + 2) encoding:4];
        transportOptions31 = [v5 transportOptions];
        containerOptions7 = [transportOptions31 containerOptions];
        cmafContainerOptions5 = [containerOptions7 cmafContainerOptions];
        [cmafContainerOptions5 setTrackName:v171];

        transportOptions32 = [v5 transportOptions];
        containerOptions8 = [transportOptions32 containerOptions];
        cmafContainerOptions6 = [containerOptions8 cmafContainerOptions];
        trackName = [cmafContainerOptions6 trackName];

        if (!trackName)
        {
          v226 = 0x962500000000;
LABEL_69:
          v64 = 47;
LABEL_70:

          goto LABEL_71;
        }

        v180 = sub_238DE36B8(v240, v179);
        if (sub_238DE36B8(v180 + 168, v181)[24] == 1)
        {
          v183 = sub_238DE36B8(v240, v182);
          v185 = sub_238DE36B8(v183 + 168, v184);
          v187 = sub_238DE36B8(v185 + 24, v186);
          transportOptions34 = [MEMORY[0x277CBEA90] dataWithBytes:*v187 length:v187[1]];
          transportOptions33 = [v5 transportOptions];
          containerOptions9 = [transportOptions33 containerOptions];
          cmafContainerOptions7 = [containerOptions9 cmafContainerOptions];
          [cmafContainerOptions7 setCencKey:transportOptions34];
        }

        else
        {
          transportOptions34 = [v5 transportOptions];
          transportOptions33 = [transportOptions34 containerOptions];
          containerOptions9 = [transportOptions33 cmafContainerOptions];
          [containerOptions9 setCencKey:0];
        }

        v195 = sub_238DE36B8(v240, v194);
        if (sub_238DE36B8(v195 + 168, v196)[48] == 1)
        {
          v198 = sub_238DE36B8(v240, v197);
          v200 = sub_238DE36B8(v198 + 168, v199);
          v202 = sub_238DE36B8(v200 + 48, v201);
          transportOptions36 = [MEMORY[0x277CBEA90] dataWithBytes:*v202 length:v202[1]];
          transportOptions35 = [v5 transportOptions];
          containerOptions10 = [transportOptions35 containerOptions];
          cmafContainerOptions8 = [containerOptions10 cmafContainerOptions];
          [cmafContainerOptions8 setCencKeyID:transportOptions36];
        }

        else
        {
          transportOptions36 = [v5 transportOptions];
          transportOptions35 = [transportOptions36 containerOptions];
          containerOptions10 = [transportOptions35 cmafContainerOptions];
          [containerOptions10 setCencKeyID:0];
        }

        v208 = sub_238DE36B8(v240, v207);
        if (sub_238DE36B8(v208 + 168, v209)[72] == 1)
        {
          v211 = MEMORY[0x277CCABB0];
          v212 = sub_238DE36B8(v240, v210);
          v214 = sub_238DE36B8(v212 + 168, v213);
          transportOptions38 = [v211 numberWithBool:{LOBYTE(sub_238DE36D8(v214 + 72, v215)->super.isa)}];
          transportOptions37 = [v5 transportOptions];
          containerOptions11 = [transportOptions37 containerOptions];
          cmafContainerOptions9 = [containerOptions11 cmafContainerOptions];
          [cmafContainerOptions9 setMetadataEnabled:transportOptions38];
        }

        else
        {
          transportOptions38 = [v5 transportOptions];
          transportOptions37 = [transportOptions38 containerOptions];
          containerOptions11 = [transportOptions37 cmafContainerOptions];
          [containerOptions11 setMetadataEnabled:0];
        }
      }

      else
      {
        transportOptions38 = [v5 transportOptions];
        transportOptions37 = [transportOptions38 containerOptions];
        [transportOptions37 setCmafContainerOptions:0];
      }

      if (sub_238DE36B8(v240, v218)[256] == 1)
      {
        v220 = MEMORY[0x277CCABB0];
        v221 = sub_238DE36B8(v240, v219);
        transportOptions40 = [v220 numberWithUnsignedInt:{*sub_238DE3698(v221 + 256, v222)}];
        transportOptions39 = [v5 transportOptions];
        [transportOptions39 setExpiryTime:transportOptions40];
      }

      else
      {
        transportOptions40 = [v5 transportOptions];
        [transportOptions40 setExpiryTime:0];
      }
    }

    else
    {
      [v5 setTransportOptions:0];
    }

    v225 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v240[272]];
    [v5 setFabricIndex:v225];

    [v4 addObject:v5];
  }

  if (LODWORD(v237[0]) == 33 || (v64 = LODWORD(v237[0]), !LODWORD(v237[0])))
  {
    [(MTRPushAVStreamTransportClusterFindTransportResponseParams *)self setTransportConfigurations:v4];

    v227 = 0;
    v228 = 0;
    goto LABEL_75;
  }

  v230 = v237[1];
  v226 = v237[0] & 0xFFFFFFFF00000000;
LABEL_71:

  v228 = v64 | v226;
  v227 = v230;
LABEL_75:
  result.mFile = v227;
  result.mError = v228;
  result.mLine = HIDWORD(v228);
  return result;
}

@end