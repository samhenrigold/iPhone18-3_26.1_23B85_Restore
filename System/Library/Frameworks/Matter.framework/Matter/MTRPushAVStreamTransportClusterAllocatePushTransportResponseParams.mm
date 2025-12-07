@interface MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams)init;
- (MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams

- (MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams)init
{
  v6.receiver = self;
  v6.super_class = MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams;
  v2 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    transportConfiguration = v2->_transportConfiguration;
    v2->_transportConfiguration = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams);
  transportConfiguration = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)v4 setTransportConfiguration:transportConfiguration];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: transportConfiguration:%@ >", v5, self->_transportConfiguration];;

  return v6;
}

- (MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v19.receiver = self;
  v19.super_class = MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams;
  v7 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)&v19 init];
  if (!v7)
  {
    v11 = 0;
    goto LABEL_10;
  }

  objc_msgSend__responseDataForCommand_clusterID_commandID_error_(MTRBaseDevice);
  if (v18)
  {
    sub_2393C5AAC(v17);
    sub_2393C5ADC(v8, *(v18 + 8), *(v18 + 24));
    v9 = sub_2393C6FD0(v17, 256);
    if (!v9)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v9 = sub_238F24B98(&v13, v17);
      if (!v9)
      {
        v9 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)v7 _setFieldsFromDecodableStruct:&v13];
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
  sub_238EA1758(&v18);
LABEL_10:

  return v11;
}

- (MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams;
  v4 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self setTransportConfiguration:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*struct];
  transportConfiguration = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  [transportConfiguration setConnectionID:v6];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(struct + 2)];
  transportConfiguration2 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  [transportConfiguration2 setTransportStatus:v8];

  if (*(struct + 8) != 1)
  {
    transportConfiguration3 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    [transportConfiguration3 setTransportOptions:0];
LABEL_64:

    transportConfiguration17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(struct + 280)];
    transportConfiguration4 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    [transportConfiguration4 setFabricIndex:transportConfiguration17];

    v79 = 0;
    v75 = 0;
    v78 = 0;
    goto LABEL_65;
  }

  v10 = objc_opt_new();
  transportConfiguration5 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  [transportConfiguration5 setTransportOptions:v10];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*sub_238DE36B8(struct + 8, v12)}];
  transportConfiguration6 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  transportOptions = [transportConfiguration6 transportOptions];
  [transportOptions setStreamUsage:v13];

  if (sub_238DE36B8(struct + 8, v16)[2] == 1 && (v18 = sub_238DE36B8(struct + 8, v17), (BYTE2(sub_238E0A934(v18 + 2, v19)->super.isa) & 1) != 0))
  {
    v21 = MEMORY[0x277CCABB0];
    v22 = sub_238DE36B8(struct + 8, v20);
    v24 = sub_238E0A934(v22 + 2, v23);
    if ((BYTE2(v24->super.isa) & 1) == 0)
    {
      goto LABEL_67;
    }

    transportConfiguration8 = [v21 numberWithUnsignedShort:LOWORD(v24->super.isa)];
    transportConfiguration7 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    transportOptions2 = [transportConfiguration7 transportOptions];
    [transportOptions2 setVideoStreamID:transportConfiguration8];
  }

  else
  {
    transportConfiguration8 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    transportConfiguration7 = [transportConfiguration8 transportOptions];
    [transportConfiguration7 setVideoStreamID:0];
  }

  if (sub_238DE36B8(struct + 8, v29)[8] == 1 && (v31 = sub_238DE36B8(struct + 8, v30), (BYTE2(sub_238E0A934(v31 + 8, v32)->super.isa) & 1) != 0))
  {
    v34 = MEMORY[0x277CCABB0];
    v35 = sub_238DE36B8(struct + 8, v33);
    v37 = sub_238E0A934(v35 + 8, v36);
    if ((BYTE2(v37->super.isa) & 1) == 0)
    {
      goto LABEL_67;
    }

    transportConfiguration10 = [v34 numberWithUnsignedShort:LOWORD(v37->super.isa)];
    transportConfiguration9 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    transportOptions3 = [transportConfiguration9 transportOptions];
    [transportOptions3 setAudioStreamID:transportConfiguration10];
  }

  else
  {
    transportConfiguration10 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    transportConfiguration9 = [transportConfiguration10 transportOptions];
    [transportConfiguration9 setAudioStreamID:0];
  }

  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{*(sub_238DE36B8(struct + 8, v41) + 7)}];
  transportConfiguration11 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  transportOptions4 = [transportConfiguration11 transportOptions];
  [transportOptions4 setEndpointID:v42];

  v46 = sub_238DE36B8(struct + 8, v45);
  v47 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(v46 + 2) length:*(v46 + 3) encoding:4];
  transportConfiguration12 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  transportOptions5 = [transportConfiguration12 transportOptions];
  [transportOptions5 setUrl:v47];

  transportConfiguration13 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  transportOptions6 = [transportConfiguration13 transportOptions];
  v52 = [transportOptions6 url];

  if (!v52)
  {
    v75 = 0x92D700000000;
    goto LABEL_51;
  }

  v53 = objc_opt_new();
  transportConfiguration14 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  transportOptions7 = [transportConfiguration14 transportOptions];
  [transportOptions7 setTriggerOptions:v53];

  v57 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{sub_238DE36B8(struct + 8, v56)[32]}];
  transportConfiguration15 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  transportOptions8 = [transportConfiguration15 transportOptions];
  triggerOptions = [transportOptions8 triggerOptions];
  [triggerOptions setTriggerType:v57];

  if (sub_238DE36B8(struct + 8, v61)[40] == 1 && (v63 = sub_238DE36B8(struct + 8, v62), (sub_238DE36B8(v63 + 40, v64)[72] & 1) != 0))
  {
    transportConfiguration17 = objc_opt_new();
    v67 = sub_238DE36B8(struct + 8, v66);
    v69 = sub_238DE36B8(v67 + 40, v68);
    if ((v69[72] & 1) == 0)
    {
      sub_238EA195C();
    }

    sub_2393C5AAC(v265);
    v263 = 0;
    v264 = 0;
    sub_2393C5BDC(v265, v69);
    LOBYTE(v266) = 0;
    v267 = 0;
    v268[0] = 0;
    while (sub_238EA1A80(&v263) && sub_238EA45DC(&v263))
    {
      v70 = objc_opt_new();
      v71 = v70;
      if (v267)
      {
        v72 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v266];
        [v71 setZone:v72];
      }

      else
      {
        [v70 setZone:0];
      }

      if (v268[0] == 1)
      {
        v74 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{LOBYTE(sub_238DE36D8(v268, v73)->super.isa)}];
        [v71 setSensitivity:v74];
      }

      else
      {
        [v71 setSensitivity:0];
      }

      [transportConfiguration17 addObject:{v71, v263}];
    }

    if (v263 != 33)
    {
      v78 = v263;
      if (v263)
      {
        v79 = v264;
        v75 = v263 & 0xFFFFFFFF00000000;
LABEL_65:

        goto LABEL_66;
      }
    }

    transportConfiguration16 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    transportOptions9 = [transportConfiguration16 transportOptions];
    triggerOptions2 = [transportOptions9 triggerOptions];
    [triggerOptions2 setMotionZones:transportConfiguration17];
  }

  else
  {
    transportConfiguration17 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    transportConfiguration16 = [transportConfiguration17 transportOptions];
    transportOptions9 = [transportConfiguration16 triggerOptions];
    [transportOptions9 setMotionZones:0];
  }

  if (sub_238DE36B8(struct + 8, v81)[128] != 1 || (v83 = sub_238DE36B8(struct + 8, v82), (BYTE1(sub_238DE36D8(v83 + 128, v84)->super.isa) & 1) == 0))
  {
    transportConfiguration18 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    transportOptions10 = [transportConfiguration18 transportOptions];
    triggerOptions3 = [transportOptions10 triggerOptions];
    [triggerOptions3 setMotionSensitivity:0];
    goto LABEL_39;
  }

  v86 = MEMORY[0x277CCABB0];
  v87 = sub_238DE36B8(struct + 8, v85);
  v89 = sub_238DE36D8(v87 + 128, v88);
  if ((v89[1] & 1) == 0)
  {
LABEL_67:
    sub_238EA195C();
  }

  transportConfiguration18 = [v86 numberWithUnsignedChar:*v89];
  transportOptions10 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  triggerOptions3 = [transportOptions10 transportOptions];
  v92TriggerOptions = [triggerOptions3 triggerOptions];
  [v92TriggerOptions setMotionSensitivity:transportConfiguration18];

LABEL_39:
  if (sub_238DE36B8(struct + 8, v94)[132] == 1)
  {
    v95 = objc_opt_new();
    transportConfiguration19 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    transportOptions11 = [transportConfiguration19 transportOptions];
    triggerOptions4 = [transportOptions11 triggerOptions];
    [triggerOptions4 setMotionTimeControl:v95];

    v99 = MEMORY[0x277CCABB0];
    v101 = sub_238DE36B8(struct + 8, v100);
    v103 = [v99 numberWithUnsignedShort:{*sub_238DE3698(v101 + 132, v102)}];
    transportConfiguration20 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    transportOptions12 = [transportConfiguration20 transportOptions];
    triggerOptions5 = [transportOptions12 triggerOptions];
    motionTimeControl = [triggerOptions5 motionTimeControl];
    [motionTimeControl setInitialDuration:v103];

    v108 = MEMORY[0x277CCABB0];
    v110 = sub_238DE36B8(struct + 8, v109);
    v112 = [v108 numberWithUnsignedShort:{*(sub_238DE3698(v110 + 132, v111) + 1)}];
    transportConfiguration21 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    transportOptions13 = [transportConfiguration21 transportOptions];
    triggerOptions6 = [transportOptions13 triggerOptions];
    motionTimeControl2 = [triggerOptions6 motionTimeControl];
    [motionTimeControl2 setAugmentationDuration:v112];

    v117 = MEMORY[0x277CCABB0];
    v119 = sub_238DE36B8(struct + 8, v118);
    v121 = [v117 numberWithUnsignedInt:{*(sub_238DE3698(v119 + 132, v120) + 1)}];
    transportConfiguration22 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    transportOptions14 = [transportConfiguration22 transportOptions];
    triggerOptions7 = [transportOptions14 triggerOptions];
    motionTimeControl3 = [triggerOptions7 motionTimeControl];
    [motionTimeControl3 setMaxDuration:v121];

    v126 = MEMORY[0x277CCABB0];
    v128 = sub_238DE36B8(struct + 8, v127);
    transportConfiguration24 = [v126 numberWithUnsignedShort:{*(sub_238DE3698(v128 + 132, v129) + 4)}];
    transportConfiguration23 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    transportOptions15 = [transportConfiguration23 transportOptions];
    triggerOptions8 = [transportOptions15 triggerOptions];
    motionTimeControl4 = [triggerOptions8 motionTimeControl];
    [motionTimeControl4 setBlindDuration:transportConfiguration24];
  }

  else
  {
    transportConfiguration24 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    transportConfiguration23 = [transportConfiguration24 transportOptions];
    transportOptions15 = [transportConfiguration23 triggerOptions];
    [transportOptions15 setMotionTimeControl:0];
  }

  if (sub_238DE36B8(struct + 8, v135)[148] == 1)
  {
    v137 = MEMORY[0x277CCABB0];
    v138 = sub_238DE36B8(struct + 8, v136);
    transportConfiguration26 = [v137 numberWithUnsignedShort:{LOWORD(sub_238E0A934(v138 + 148, v139)->super.isa)}];
    transportConfiguration25 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    transportOptions16 = [transportConfiguration25 transportOptions];
    triggerOptions9 = [transportOptions16 triggerOptions];
    [triggerOptions9 setMaxPreRollLen:transportConfiguration26];
  }

  else
  {
    transportConfiguration26 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    transportConfiguration25 = [transportConfiguration26 transportOptions];
    transportOptions16 = [transportConfiguration25 triggerOptions];
    [transportOptions16 setMaxPreRollLen:0];
  }

  v145 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{sub_238DE36B8(struct + 8, v144)[152]}];
  transportConfiguration27 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  transportOptions17 = [transportConfiguration27 transportOptions];
  [transportOptions17 setIngestMethod:v145];

  v148 = objc_opt_new();
  transportConfiguration28 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  transportOptions18 = [transportConfiguration28 transportOptions];
  [transportOptions18 setContainerOptions:v148];

  v152 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{sub_238DE36B8(struct + 8, v151)[160]}];
  transportConfiguration29 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  transportOptions19 = [transportConfiguration29 transportOptions];
  containerOptions = [transportOptions19 containerOptions];
  [containerOptions setContainerType:v152];

  if (sub_238DE36B8(struct + 8, v156)[168] != 1)
  {
    transportConfiguration30 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
    transportOptions20 = [transportConfiguration30 transportOptions];
    containerOptions2 = [transportOptions20 containerOptions];
    [containerOptions2 setCmafContainerOptions:0];
LABEL_60:

    if (sub_238DE36B8(struct + 8, v253)[256] == 1)
    {
      v255 = MEMORY[0x277CCABB0];
      v256 = sub_238DE36B8(struct + 8, v254);
      transportConfiguration3 = [v255 numberWithUnsignedInt:{*sub_238DE3698(v256 + 256, v257)}];
      transportConfiguration31 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
      transportOptions21 = [transportConfiguration31 transportOptions];
      [transportOptions21 setExpiryTime:transportConfiguration3];
    }

    else
    {
      transportConfiguration3 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
      transportConfiguration31 = [transportConfiguration3 transportOptions];
      [transportConfiguration31 setExpiryTime:0];
    }

    goto LABEL_64;
  }

  v157 = objc_opt_new();
  transportConfiguration32 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  transportOptions22 = [transportConfiguration32 transportOptions];
  containerOptions3 = [transportOptions22 containerOptions];
  [containerOptions3 setCmafContainerOptions:v157];

  v161 = MEMORY[0x277CCABB0];
  v163 = sub_238DE36B8(struct + 8, v162);
  v165 = [v161 numberWithUnsignedChar:{*sub_238DE36B8(v163 + 168, v164)}];
  transportConfiguration33 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  transportOptions23 = [transportConfiguration33 transportOptions];
  containerOptions4 = [transportOptions23 containerOptions];
  cmafContainerOptions = [containerOptions4 cmafContainerOptions];
  [cmafContainerOptions setCmafInterface:v165];

  v170 = MEMORY[0x277CCABB0];
  v172 = sub_238DE36B8(struct + 8, v171);
  v174 = [v170 numberWithUnsignedShort:{*(sub_238DE36B8(v172 + 168, v173) + 1)}];
  transportConfiguration34 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  transportOptions24 = [transportConfiguration34 transportOptions];
  containerOptions5 = [transportOptions24 containerOptions];
  cmafContainerOptions2 = [containerOptions5 cmafContainerOptions];
  [cmafContainerOptions2 setSegmentDuration:v174];

  v179 = MEMORY[0x277CCABB0];
  v181 = sub_238DE36B8(struct + 8, v180);
  v183 = [v179 numberWithUnsignedShort:{*(sub_238DE36B8(v181 + 168, v182) + 2)}];
  transportConfiguration35 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  transportOptions25 = [transportConfiguration35 transportOptions];
  containerOptions6 = [transportOptions25 containerOptions];
  cmafContainerOptions3 = [containerOptions6 cmafContainerOptions];
  [cmafContainerOptions3 setChunkDuration:v183];

  v188 = MEMORY[0x277CCABB0];
  v190 = sub_238DE36B8(struct + 8, v189);
  v192 = [v188 numberWithUnsignedChar:{sub_238DE36B8(v190 + 168, v191)[6]}];
  transportConfiguration36 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  transportOptions26 = [transportConfiguration36 transportOptions];
  containerOptions7 = [transportOptions26 containerOptions];
  cmafContainerOptions4 = [containerOptions7 cmafContainerOptions];
  [cmafContainerOptions4 setSessionGroup:v192];

  v198 = sub_238DE36B8(struct + 8, v197);
  v200 = sub_238DE36B8(v198 + 168, v199);
  v201 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(v200 + 1) length:*(v200 + 2) encoding:4];
  transportConfiguration37 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  transportOptions27 = [transportConfiguration37 transportOptions];
  containerOptions8 = [transportOptions27 containerOptions];
  cmafContainerOptions5 = [containerOptions8 cmafContainerOptions];
  [cmafContainerOptions5 setTrackName:v201];

  transportConfiguration38 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
  transportOptions28 = [transportConfiguration38 transportOptions];
  containerOptions9 = [transportOptions28 containerOptions];
  cmafContainerOptions6 = [containerOptions9 cmafContainerOptions];
  trackName = [cmafContainerOptions6 trackName];

  if (trackName)
  {
    v212 = sub_238DE36B8(struct + 8, v211);
    if (sub_238DE36B8(v212 + 168, v213)[24] == 1)
    {
      v215 = sub_238DE36B8(struct + 8, v214);
      v217 = sub_238DE36B8(v215 + 168, v216);
      v219 = sub_238DE36B8(v217 + 24, v218);
      transportConfiguration40 = [MEMORY[0x277CBEA90] dataWithBytes:*v219 length:v219[1]];
      transportConfiguration39 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
      transportOptions29 = [transportConfiguration39 transportOptions];
      containerOptions10 = [transportOptions29 containerOptions];
      cmafContainerOptions7 = [containerOptions10 cmafContainerOptions];
      [cmafContainerOptions7 setCencKey:transportConfiguration40];
    }

    else
    {
      transportConfiguration40 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
      transportConfiguration39 = [transportConfiguration40 transportOptions];
      transportOptions29 = [transportConfiguration39 containerOptions];
      containerOptions10 = [transportOptions29 cmafContainerOptions];
      [containerOptions10 setCencKey:0];
    }

    v229 = sub_238DE36B8(struct + 8, v228);
    if (sub_238DE36B8(v229 + 168, v230)[48] == 1)
    {
      v232 = sub_238DE36B8(struct + 8, v231);
      v234 = sub_238DE36B8(v232 + 168, v233);
      v236 = sub_238DE36B8(v234 + 48, v235);
      transportConfiguration42 = [MEMORY[0x277CBEA90] dataWithBytes:*v236 length:v236[1]];
      transportConfiguration41 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
      transportOptions30 = [transportConfiguration41 transportOptions];
      containerOptions11 = [transportOptions30 containerOptions];
      cmafContainerOptions8 = [containerOptions11 cmafContainerOptions];
      [cmafContainerOptions8 setCencKeyID:transportConfiguration42];
    }

    else
    {
      transportConfiguration42 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
      transportConfiguration41 = [transportConfiguration42 transportOptions];
      transportOptions30 = [transportConfiguration41 containerOptions];
      containerOptions11 = [transportOptions30 cmafContainerOptions];
      [containerOptions11 setCencKeyID:0];
    }

    v243 = sub_238DE36B8(struct + 8, v242);
    if (sub_238DE36B8(v243 + 168, v244)[72] == 1)
    {
      v246 = MEMORY[0x277CCABB0];
      v247 = sub_238DE36B8(struct + 8, v245);
      v249 = sub_238DE36B8(v247 + 168, v248);
      transportConfiguration30 = [v246 numberWithBool:{LOBYTE(sub_238DE36D8(v249 + 72, v250)->super.isa)}];
      transportOptions20 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
      containerOptions2 = [transportOptions20 transportOptions];
      v227ContainerOptions = [containerOptions2 containerOptions];
      cmafContainerOptions9 = [v227ContainerOptions cmafContainerOptions];
      [cmafContainerOptions9 setMetadataEnabled:transportConfiguration30];
    }

    else
    {
      transportConfiguration30 = [(MTRPushAVStreamTransportClusterAllocatePushTransportResponseParams *)self transportConfiguration];
      transportOptions20 = [transportConfiguration30 transportOptions];
      containerOptions2 = [transportOptions20 containerOptions];
      v227ContainerOptions = [containerOptions2 cmafContainerOptions];
      [v227ContainerOptions setMetadataEnabled:0];
    }

    goto LABEL_60;
  }

  v75 = 0x931F00000000;
LABEL_51:
  v79 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
  v78 = 47;
LABEL_66:
  v261 = v78 | v75;
  v262 = v79;
  result.mFile = v262;
  result.mError = v261;
  result.mLine = HIDWORD(v261);
  return result;
}

@end