@interface WCM_MavAntennaPolicy
- (WCM_MavAntennaPolicy)init;
- (id)createAntennaBlockingClientXpcArray:(id)array client_id:(int)client_id convBand:(unsigned __int8)band;
- (id)createConditionIdXpcElement:(unsigned int)element mav_antenna_block_client_id:(unsigned int)mav_antenna_block_client_id cellular_band:(unsigned int)cellular_band cellular_frequency_upper:(unsigned int)cellular_frequency_upper cellular_frequency_lower:(unsigned int)cellular_frequency_lower cellular_ant_mitigation:(unsigned int)cellular_ant_mitigation;
- (id)createDynamicAntBlockingWifiClientMappingsWithCellAntBlkEnableIdx1:(unsigned __int8)idx1 cellAntBlkEnableIdx2:(unsigned __int8)idx2;
- (id)createFaceIDPowerTableXpcElement:(unsigned int)element ant:(unsigned int)ant target_power_dbm:(unsigned int)target_power_dbm;
- (id)createHardcodedFcamClientMappings;
- (id)createHardcodedFidClientMappings;
- (id)createHardcodedJpgRegClientMappings;
- (id)createHardcodedRc1ClientMappings;
- (id)createHardcodedWifiClientMappings;
- (id)createPowerTableXpcElement:(unsigned int)element ant:(unsigned int)ant target_power_dbm:(unsigned int)target_power_dbm condition_id:(unsigned int)condition_id entry_num:(unsigned int)entry_num;
- (id)createSubframePowerBackOffTableXpcElement:(id)element condition_id:(unsigned int)condition_id;
- (id)createXpcClientObjectWithClientId:(int)id blockVoice:(BOOL)voice timeMultipler:(unint64_t)multipler antennaBandMappings:(id)mappings;
- (id)getFaceIDConfigDictionarySKUBased:(id)based;
- (id)getFaceIDPlatformPlistName;
- (id)getPlatformCidPlistName;
- (id)getPlatformPlistName;
- (int)convertBandToEurBandId:(id)id;
- (int)getMavClientIdforAntClient:(id)client;
- (void)addXpcBandEntriesWithAnt:(unint64_t)ant bandsToAddSet:(id)set bandArray:(id)array;
- (void)applyMavAntennaPolicyForPlatformId:(int)id sku:(int)sku;
- (void)createClientMappingsfromPlist:(int)plist;
- (void)createFaceIDpowerTablefromPlist;
- (void)initSfPboffParams;
- (void)reconfigureClientAntBlockingParamsWithCellAntBlkEnableIdx1:(unsigned __int8)idx1 cellAntBlkEnableIdx2:(unsigned __int8)idx2;
- (void)sendFaceIDPowerTables;
- (void)sendMavConfigitems;
@end

@implementation WCM_MavAntennaPolicy

- (WCM_MavAntennaPolicy)init
{
  v7.receiver = self;
  v7.super_class = WCM_MavAntennaPolicy;
  v2 = [(WCM_MavAntennaPolicy *)&v7 init];
  *(v2 + 8) = xmmword_100199130;
  v3 = [NSArray arrayWithObjects:@"wifi_client", @"rc3_client", @"rc1_client", @"fid_client", @"rcam_t_client", @"rcam_w_client", @"e85_u_client0", @"e85_d_client0", 0];
  v4 = *(v2 + 3);
  *(v2 + 3) = v3;

  v5 = *(v2 + 4);
  *(v2 + 4) = &__NSArray0__struct;

  return v2;
}

- (void)applyMavAntennaPolicyForPlatformId:(int)id sku:(int)sku
{
  v4 = *&id;
  self->mPlatformId = id;
  self->mSKU = sku;
  [(WCM_MavAntennaPolicy *)self initSfPboffParams];

  [(WCM_MavAntennaPolicy *)self createClientMappingsfromPlist:v4];
}

- (void)initSfPboffParams
{
  mPlatformId = self->mPlatformId;
  if (mPlatformId <= 57)
  {
    if (mPlatformId == 54)
    {
      mFixedPbOffBands = self->mFixedPbOffBands;
      v5 = &off_100285C40;
      goto LABEL_12;
    }

    if (mPlatformId == 57)
    {
      mFixedPbOffBands = self->mFixedPbOffBands;
      v5 = &off_100285C28;
      goto LABEL_12;
    }

LABEL_15:
    [WCM_Logging logLevel:3 message:@"SF Pboff Policy: Platform %u is not supported", mPlatformId];
    return;
  }

  if (mPlatformId == 58)
  {
    mFixedPbOffBands = self->mFixedPbOffBands;
    v5 = &off_100285C58;
    goto LABEL_12;
  }

  if (mPlatformId == 59)
  {
    mFixedPbOffBands = self->mFixedPbOffBands;
    v5 = &off_100285C70;
    goto LABEL_12;
  }

  if (mPlatformId != 60)
  {
    goto LABEL_15;
  }

  mFixedPbOffBands = self->mFixedPbOffBands;
  v5 = &off_100285C88;
LABEL_12:
  self->mFixedPbOffBands = v5;

  _objc_release_x1(self, mFixedPbOffBands);
}

- (id)getPlatformPlistName
{
  mPlatformId = self->mPlatformId;
  if (mPlatformId <= 57)
  {
    if (mPlatformId <= 53)
    {
      if (mPlatformId > 51)
      {
        if (mPlatformId != 52)
        {
          return @"antenna_block_policy_mav_p034";
        }

        return @"antenna_block_policy_mav_p033";
      }

      if (mPlatformId == 50)
      {
        return @"antenna_block_policy_mav_p031";
      }

      if (mPlatformId == 51)
      {
        return @"antenna_block_policy_mav_p032";
      }

      goto LABEL_30;
    }

    if (mPlatformId > 55)
    {
      if (mPlatformId == 56)
      {
        return @"antenna_block_policy_mav_p041";
      }

      else
      {
        return @"antenna_block_policy_mav_p042";
      }
    }

    else if (mPlatformId == 54)
    {
      return @"antenna_block_policy_mav_p043";
    }

    else
    {
      return @"antenna_block_policy_mav_p044";
    }
  }

  else
  {
    if (mPlatformId > 60)
    {
      if ((mPlatformId - 162) <= 0xC)
      {
        if (((1 << (mPlatformId + 94)) & 0x1405) != 0)
        {
          return @"antenna_block_policy_mav_dummy";
        }

        if (mPlatformId == 166)
        {
          return @"antenna_block_policy_mav_p045";
        }
      }

      if (mPlatformId == 61)
      {
        return @"antenna_block_policy_mav_p033";
      }

LABEL_30:
      [WCM_Logging logLevel:3 message:@"Ant Block Policy: Platform %u is not supported", mPlatformId];
      return 0;
    }

    if (mPlatformId == 58)
    {
      return @"antenna_block_policy_mav_p051";
    }

    else if (mPlatformId == 59)
    {
      return @"antenna_block_policy_mav_p052";
    }

    else
    {
      return @"antenna_block_policy_mav_p053";
    }
  }
}

- (id)getPlatformCidPlistName
{
  mPlatformId = self->mPlatformId;
  if (mPlatformId > 59)
  {
    if (mPlatformId > 167)
    {
      if (mPlatformId <= 171)
      {
        if (mPlatformId == 168)
        {
          return @"bb_CoEx-Table-CellCoex049_V7WiFiEnh";
        }

        if (mPlatformId == 170)
        {
          return @"bb_CoEx-Table-CellCoex050_V7WiFiEnh";
        }
      }

      else
      {
        switch(mPlatformId)
        {
          case 0xAC:
            return @"bb_CoEx-Table-CellCoex039_V7WiFiEnh";
          case 0xAE:
            return @"bb_CoEx-Table-CellCoex040_V7WiFiEnh";
          case 0xB4:
            return @"bb_CoEx-Table-CellCoex046_V7WiFiEnh";
        }
      }
    }

    else if (mPlatformId <= 161)
    {
      if (mPlatformId == 60)
      {
        return @"bb_CoEx-Table-CellCoex053_V8WiFiEnh";
      }

      if (mPlatformId == 61)
      {
        return @"bb_CoEx-Table-CellCoex033_V7WiFiEnh";
      }
    }

    else
    {
      switch(mPlatformId)
      {
        case 0xA2:
          return @"bb_CoEx-Table-CellCoex035_V7WiFiEnh";
        case 0xA4:
          return @"bb_CoEx-Table-CellCoex036_V7WiFiEnh";
        case 0xA6:
          return @"bb_CoEx-Table-CellCoex045_V7WiFiEnh";
      }
    }

    goto LABEL_44;
  }

  if (mPlatformId <= 54)
  {
    if (mPlatformId > 51)
    {
      if (mPlatformId != 52)
      {
        if (mPlatformId == 53)
        {
          return @"bb_CoEx-Table-CellCoex034_V7WiFiEnh";
        }

        else
        {
          return @"bb_CoEx-Table-CellCoex043_V7WiFiEnh";
        }
      }

      return @"bb_CoEx-Table-CellCoex033_V7WiFiEnh";
    }

    if (mPlatformId == 50)
    {
      return @"bb_CoEx-Table-CellCoex031_V7WiFiEnh";
    }

    if (mPlatformId == 51)
    {
      return @"bb_CoEx-Table-CellCoex032_V7WiFiEnh";
    }

LABEL_44:
    [WCM_Logging logLevel:3 message:@"Condition id Policy: Platform %u is not supported", mPlatformId];
    return 0;
  }

  if (mPlatformId <= 56)
  {
    if (mPlatformId == 55)
    {
      return @"bb_CoEx-Table-CellCoex044_V7WiFiEnh";
    }

    else
    {
      return @"bb_CoEx-Table-CellCoex041_V7WiFiEnh";
    }
  }

  else if (mPlatformId == 57)
  {
    return @"bb_CoEx-Table-CellCoex042_V7WiFiEnh";
  }

  else if (mPlatformId == 58)
  {
    return @"bb_CoEx-Table-CellCoex051_V8WiFiEnh";
  }

  else
  {
    return @"bb_CoEx-Table-CellCoex052_V8WiFiEnh";
  }
}

- (id)getFaceIDConfigDictionarySKUBased:(id)based
{
  basedCopy = based;
  v5 = basedCopy;
  if (!basedCopy)
  {
    goto LABEL_10;
  }

  mSKU = self->mSKU;
  if (mSKU > 2)
  {
    if (mSKU == 3)
    {
      v7 = @"C";
      goto LABEL_13;
    }

    if (mSKU == 4)
    {
      v7 = @"D";
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (mSKU == 1)
  {
    v7 = @"A";
    goto LABEL_13;
  }

  if (mSKU != 2)
  {
LABEL_9:
    [WCM_Logging logLevel:3 message:@"FaceId Config: SKU %u is not supported", self->mSKU];
LABEL_10:
    v8 = 0;
    goto LABEL_14;
  }

  v7 = @"B";
LABEL_13:
  v8 = [basedCopy objectForKey:v7];
LABEL_14:

  return v8;
}

- (id)getFaceIDPlatformPlistName
{
  mPlatformId = self->mPlatformId;
  if ((mPlatformId - 54) < 7)
  {
    return *(&off_1002413B8 + (mPlatformId - 54));
  }

  [WCM_Logging logLevel:3 message:@"Face id Policy: Platform %u is not supported", mPlatformId];
  return 0;
}

- (int)getMavClientIdforAntClient:(id)client
{
  clientCopy = client;
  if ([clientCopy isEqualToString:@"wifi_client"])
  {
    v5 = 0;
LABEL_18:
    self->mAntBlockClientId = v5;
    goto LABEL_19;
  }

  if ([clientCopy isEqualToString:@"rc3_client"])
  {
    v5 = 1;
    goto LABEL_18;
  }

  if ([clientCopy isEqualToString:@"rc1_client"])
  {
    v5 = 2;
    goto LABEL_18;
  }

  if ([clientCopy isEqualToString:@"fid_client"])
  {
    v5 = 3;
    goto LABEL_18;
  }

  if ([clientCopy isEqualToString:@"rcam_t_client"])
  {
    v5 = 4;
    goto LABEL_18;
  }

  if ([clientCopy isEqualToString:@"rcam_w_client"])
  {
    v5 = 5;
    goto LABEL_18;
  }

  if ([clientCopy isEqualToString:@"e85_u_client0"])
  {
    v5 = 6;
    goto LABEL_18;
  }

  if ([clientCopy isEqualToString:@"e85_d_client0"])
  {
    v5 = 7;
    goto LABEL_18;
  }

  v5 = -1;
  if (clientCopy)
  {
    goto LABEL_18;
  }

  mAntBlockClientId = self->mAntBlockClientId;
  self->mAntBlockClientId = mAntBlockClientId + 1;
  if ((mAntBlockClientId + 1) <= 15)
  {
    v5 = mAntBlockClientId + 1;
  }

  else
  {
    v5 = -1;
  }

LABEL_19:

  return v5;
}

- (void)createClientMappingsfromPlist:(int)plist
{
  v3 = *&plist;
  [WCM_Logging logLevel:4 message:@"Cellular controller create MavClientMappings from Plist"];
  v172 = 0;
  xarray = xpc_array_create(0, 0);
  if (xarray)
  {
    object = xpc_array_create(0, 0);
    if (!object)
    {
      v8 = 0;
      v22 = 0;
      v9 = 0;
LABEL_123:

      goto LABEL_124;
    }

    v126 = xpc_array_create(0, 0);
    if (!v126)
    {
      v8 = 0;
      v114 = 0;
      v9 = 0;
LABEL_122:

      v22 = v114;
      goto LABEL_123;
    }

    getPlatformPlistName = [(WCM_MavAntennaPolicy *)self getPlatformPlistName];
    v107 = getPlatformPlistName;
    if (getPlatformPlistName)
    {
      v6 = sub_10009D018(getPlatformPlistName, @"plist");
      if (v6)
      {
        v7 = v6;
        v171 = 0;
        v8 = [NSPropertyListSerialization propertyListWithData:v6 options:2 format:&v172 error:&v171];
        v9 = v171;
        if (v8)
        {
          [WCM_Logging logLevel:3 message:@"create Mav Client AntennaM appings from Plist: Antenna blocking policy Plist File Found"];
          v169 = 0u;
          v170 = 0u;
          v167 = 0u;
          v168 = 0u;
          selfCopy = self;
          v10 = self->mFixedAntClients;
          v11 = [(NSArray *)v10 countByEnumeratingWithState:&v167 objects:v183 count:16];
          if (v11)
          {
            v12 = v11;
            v136 = 0;
            v114 = 0;
            v13 = *v168;
            do
            {
              v14 = 0;
              v15 = v114;
              do
              {
                v16 = v15;
                if (*v168 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v17 = *(*(&v167 + 1) + 8 * v14);
                v18 = [v8 objectForKey:v17];

                v19 = [(WCM_MavAntennaPolicy *)selfCopy getMavClientIdforAntClient:v17];
                v15 = v18;
                if (v18)
                {
                  v20 = v19 == -1;
                }

                else
                {
                  v20 = 1;
                }

                if (!v20)
                {
                  v21 = [(WCM_MavAntennaPolicy *)selfCopy createAntennaBlockingClientXpcArray:v18 client_id:v19 convBand:1];

                  if (v21)
                  {
                    xpc_array_append_value(xarray, v21);
                    v136 = v21;
                  }

                  else
                  {
                    v136 = 0;
                  }

                  v15 = v18;
                }

                v14 = v14 + 1;
              }

              while (v12 != v14);
              v114 = v15;
              v12 = [(NSArray *)v10 countByEnumeratingWithState:&v167 objects:v183 count:16];
            }

            while (v12);
          }

          else
          {
            v136 = 0;
            v114 = 0;
          }

          v23 = selfCopy;
          getPlatformCidPlistName = [(WCM_MavAntennaPolicy *)selfCopy getPlatformCidPlistName];

          v105 = getPlatformCidPlistName;
          v25 = sub_10009D018(getPlatformCidPlistName, @"plist");

          v106 = v25;
          if (v25)
          {
            v166 = 0;
            v26 = [NSPropertyListSerialization propertyListWithData:v25 options:2 format:&v172 error:&v166];
            v104 = v166;

            if (v26)
            {
              [WCM_Logging logLevel:3 message:@"create Mav Client Antenna Mappings from Plist: Antenna condition id policy Plist File Found for device"];
              v103 = v26;
              v27 = [v26 objectForKey:@"config"];
              v28 = +[NSMutableDictionary dictionary];
              v162 = 0u;
              v163 = 0u;
              v164 = 0u;
              v165 = 0u;
              v102 = v27;
              obj = [v27 reverseObjectEnumerator];
              v110 = [obj countByEnumeratingWithState:&v162 objects:v182 count:16];
              if (v110)
              {
                v109 = *v163;
                v29 = &xpc_release_ptr;
                v117 = v28;
                do
                {
                  for (i = 0; i != v110; i = i + 1)
                  {
                    if (*v163 != v109)
                    {
                      v31 = i;
                      objc_enumerationMutation(obj);
                      i = v31;
                    }

                    v32 = *(*(&v162 + 1) + 8 * i);
                    if (v32)
                    {
                      v112 = i;
                      v33 = [v32 objectForKey:@"Policy"];
                      v158 = 0u;
                      v159 = 0u;
                      v160 = 0u;
                      v161 = 0u;
                      v111 = v33;
                      reverseObjectEnumerator = [v33 reverseObjectEnumerator];
                      v120 = [reverseObjectEnumerator countByEnumeratingWithState:&v158 objects:v181 count:16];
                      if (v120)
                      {
                        v128 = 0;
                        v118 = v32;
                        v119 = *v159;
                        do
                        {
                          for (j = 0; j != v120; j = j + 1)
                          {
                            if (*v159 != v119)
                            {
                              objc_enumerationMutation(reverseObjectEnumerator);
                            }

                            v35 = *(*(&v158 + 1) + 8 * j);
                            if (v35)
                            {
                              v121 = j;
                              v36 = [v35 objectForKey:@"cellular_frequency_upper"];
                              unsignedIntValue = [v36 unsignedIntValue];

                              v37 = [v35 objectForKey:@"cellular_frequency_lower"];
                              unsignedIntValue2 = [v37 unsignedIntValue];

                              v38 = [v35 objectForKey:@"cellular_band"];
                              v39 = [(WCM_MavAntennaPolicy *)v23 convertBandToEurBandId:v38];

                              v40 = [v32 objectForKey:@"condition_id"];
                              unsignedIntValue3 = [v40 unsignedIntValue];

                              v41 = [v35 objectForKey:@"antenna_info"];
                              v42 = [v35 objectForKey:@"antblock_client_id"];

                              if (v42)
                              {
                                v43 = [v35 objectForKey:@"antblock_client_id"];
                                unsignedIntValue4 = [v43 unsignedIntValue];

                                v45 = [v29[151] numberWithInt:unsignedIntValue4];
                                v46 = [v28 objectForKeyedSubscript:v45];

                                if (!v46)
                                {
                                  v47 = +[NSMutableDictionary dictionary];
                                  v48 = [v29[151] numberWithInt:unsignedIntValue4];
                                  [v28 setObject:v47 forKeyedSubscript:v48];
                                }

                                v132 = unsignedIntValue4;
                                v49 = [v29[151] numberWithInt:unsignedIntValue4];
                                v124 = [v28 objectForKeyedSubscript:v49];
                              }

                              else
                              {
                                v124 = 0;
                                v132 = 0xFFFFFFFFLL;
                              }

                              v50 = unsignedIntValue;
                              v156 = 0u;
                              v157 = 0u;
                              v154 = 0u;
                              v155 = 0u;
                              v51 = v41;
                              v52 = [v51 countByEnumeratingWithState:&v154 objects:v180 count:16];
                              v53 = unsignedIntValue3;
                              v123 = v51;
                              if (v52)
                              {
                                v54 = v52;
                                v55 = 0;
                                v130 = 0;
                                v140 = *v155;
                                do
                                {
                                  for (k = 0; k != v54; k = k + 1)
                                  {
                                    if (*v155 != v140)
                                    {
                                      objc_enumerationMutation(v51);
                                    }

                                    v57 = *(*(&v154 + 1) + 8 * k);
                                    if (v57)
                                    {
                                      v58 = [*(*(&v154 + 1) + 8 * k) objectForKey:@"target_power"];
                                      unsignedIntValue5 = [v58 unsignedIntValue];

                                      v60 = [v57 objectForKey:@"antenna_num"];
                                      unsignedIntValue6 = [v60 unsignedIntValue];

                                      v53 = unsignedIntValue3;
                                      [WCM_Logging logLevel:3 message:@"CIDDebug Coex Set ConditionID param -- policy cellularBand = %d, client_id = %u, Ufrequency = %uKHz, Lfrequency = %uKHz, Ant = %d, Targetpower = %d, Condition_id = %u", v39, v132, v50, unsignedIntValue2, unsignedIntValue6, unsignedIntValue5, unsignedIntValue3];
                                      if (unsignedIntValue5)
                                      {
                                        v55 = (1 << (unsignedIntValue6 - 1)) | v55;
                                        v62 = [(WCM_MavAntennaPolicy *)selfCopy createPowerTableXpcElement:v39 ant:unsignedIntValue6 target_power_dbm:unsignedIntValue5 condition_id:unsignedIntValue3 entry_num:v128];

                                        if (v62)
                                        {
                                          xpc_array_append_value(v126, v62);
                                          v136 = v62;
                                        }

                                        else
                                        {
                                          v136 = 0;
                                        }
                                      }

                                      else
                                      {
                                        v63 = [NSNumber numberWithUnsignedInt:unsignedIntValue6];
                                        v64 = [v124 objectForKeyedSubscript:v63];

                                        if (v64)
                                        {
                                          v65 = [NSNumber numberWithUnsignedInt:v39];
                                          [v64 addObject:v65];
                                          v130 = v64;
                                        }

                                        else
                                        {
                                          +[NSMutableSet set];
                                          v55 = v122 = v55;
                                          v66 = [NSNumber numberWithUnsignedInt:v39];
                                          [v55 addObject:v66];

                                          v65 = [NSNumber numberWithUnsignedInt:unsignedIntValue6];
                                          v130 = v55;
                                          v67 = v55;
                                          LODWORD(v55) = v122;
                                          [v124 setObject:v67 forKeyedSubscript:v65];
                                        }

                                        v55 = (0x10000 << (unsignedIntValue6 - 1)) | v55;
                                        v50 = unsignedIntValue;
                                        v53 = unsignedIntValue3;
                                        v51 = v123;
                                      }
                                    }
                                  }

                                  v54 = [v51 countByEnumeratingWithState:&v154 objects:v180 count:16];
                                }

                                while (v54);
                              }

                              else
                              {
                                v55 = 0;
                                v130 = 0;
                              }

                              if (unsignedIntValue2)
                              {
                                v23 = selfCopy;
                                v68 = v50;
                                v32 = v118;
                                if (v68 && v55)
                                {
                                  if (v132 == -1)
                                  {
                                    v69 = 8;
                                  }

                                  else
                                  {
                                    v69 = (v132 + 8);
                                  }

                                  v70 = [(WCM_MavAntennaPolicy *)selfCopy createConditionIdXpcElement:v53 mav_antenna_block_client_id:v69 cellular_band:v39 cellular_frequency_upper:unsignedIntValue cellular_frequency_lower:unsignedIntValue2 cellular_ant_mitigation:v55];

                                  if (v70)
                                  {
                                    xpc_array_append_value(object, v70);
                                    v136 = v70;
                                  }

                                  else
                                  {
                                    v136 = 0;
                                  }
                                }
                              }

                              else
                              {
                                v23 = selfCopy;
                                v32 = v118;
                              }

                              j = v121;
                              ++v128;

                              v28 = v117;
                              v29 = &xpc_release_ptr;
                            }
                          }

                          v120 = [reverseObjectEnumerator countByEnumeratingWithState:&v158 objects:v181 count:16];
                        }

                        while (v120);
                      }

                      i = v112;
                    }
                  }

                  v110 = [obj countByEnumeratingWithState:&v162 objects:v182 count:16];
                }

                while (v110);
              }

              v152 = 0u;
              v153 = 0u;
              v150 = 0u;
              v151 = 0u;
              v133 = v28;
              v131 = [v133 countByEnumeratingWithState:&v150 objects:v179 count:16];
              if (v131)
              {
                v129 = *v151;
                v71 = v136;
                do
                {
                  v72 = 0;
                  v73 = v71;
                  v74 = v114;
                  do
                  {
                    v137 = v74;
                    v139 = v73;
                    if (*v151 != v129)
                    {
                      objc_enumerationMutation(v133);
                    }

                    v141 = v72;
                    v75 = *(*(&v150 + 1) + 8 * v72);
                    v76 = objc_alloc_init(NSMutableArray);
                    v77 = [v133 objectForKeyedSubscript:v75];
                    v146 = 0u;
                    v147 = 0u;
                    v148 = 0u;
                    v149 = 0u;
                    v78 = [v77 countByEnumeratingWithState:&v146 objects:v178 count:16];
                    v135 = v75;
                    if (v78)
                    {
                      v79 = v78;
                      v80 = 0;
                      v81 = *v147;
                      do
                      {
                        v82 = 0;
                        v83 = v80;
                        do
                        {
                          if (*v147 != v81)
                          {
                            objc_enumerationMutation(v77);
                          }

                          v177[0] = *(*(&v146 + 1) + 8 * v82);
                          v176[0] = @"Cellular_Ant";
                          v176[1] = @"Cellular_Band_Array";
                          v84 = [v77 objectForKeyedSubscript:?];
                          v177[1] = v84;
                          v80 = [NSDictionary dictionaryWithObjects:v177 forKeys:v176 count:2];

                          [v76 addObject:v80];
                          v82 = v82 + 1;
                          v83 = v80;
                        }

                        while (v79 != v82);
                        v79 = [v77 countByEnumeratingWithState:&v146 objects:v178 count:16];
                      }

                      while (v79);
                    }

                    else
                    {
                      v80 = 0;
                    }

                    v174[0] = @"Block_Voice";
                    v174[1] = @"Duration_Granularity";
                    v175[0] = &off_100271118;
                    v175[1] = &off_100271130;
                    v174[2] = @"Policy";
                    v175[2] = v76;
                    v85 = [NSDictionary dictionaryWithObjects:v175 forKeys:v174 count:3];

                    v114 = v85;
                    v71 = -[WCM_MavAntennaPolicy createAntennaBlockingClientXpcArray:client_id:convBand:](selfCopy, "createAntennaBlockingClientXpcArray:client_id:convBand:", v85, [v135 unsignedIntValue] + 8, 0);

                    if (v71)
                    {
                      xpc_array_append_value(xarray, v71);
                    }

                    v72 = v141 + 1;
                    v73 = v71;
                    v74 = v114;
                  }

                  while ((v141 + 1) != v131);
                  v131 = [v133 countByEnumeratingWithState:&v150 objects:v179 count:16];
                }

                while (v131);
              }

              else
              {
                v71 = v136;
              }

              v136 = v71;

              v86 = xpc_copy(xarray);
              [(WCM_MavAntennaPolicy *)selfCopy setMEurekaConfig:v86];

              v87 = xpc_copy(object);
              [(WCM_MavAntennaPolicy *)selfCopy setMMavCiConfig:v87];

              v88 = xpc_copy(v126);
              [(WCM_MavAntennaPolicy *)selfCopy setMMavPtConfig:v88];

              v89 = xpc_array_create(0, 0);
              v142 = 0u;
              v143 = 0u;
              v144 = 0u;
              v145 = 0u;
              v90 = selfCopy->mFixedPbOffBands;
              v91 = [(NSArray *)v90 countByEnumeratingWithState:&v142 objects:v173 count:16];
              if (v91)
              {
                v92 = v91;
                v93 = 0;
                v94 = *v143;
                do
                {
                  for (m = 0; m != v92; m = m + 1)
                  {
                    if (*v143 != v94)
                    {
                      objc_enumerationMutation(v90);
                    }

                    v96 = *(*(&v142 + 1) + 8 * m);
                    if (v96)
                    {
                      v97 = [*(*(&v142 + 1) + 8 * m) objectForKey:@"band"];

                      v98 = [v96 objectForKey:@"cid"];
                      unsignedIntValue7 = [v98 unsignedIntValue];

                      v100 = [(WCM_MavAntennaPolicy *)selfCopy createSubframePowerBackOffTableXpcElement:v97 condition_id:unsignedIntValue7];

                      if (v100)
                      {
                        xpc_array_append_value(v89, v100);
                        v136 = v100;
                      }

                      else
                      {
                        v136 = 0;
                      }

                      v93 = v97;
                    }
                  }

                  v92 = [(NSArray *)v90 countByEnumeratingWithState:&v142 objects:v173 count:16];
                }

                while (v92);
              }

              else
              {
                v93 = 0;
              }

              v101 = xpc_copy(v89);
              [(WCM_MavAntennaPolicy *)selfCopy setMMavSfPboffConfig:v101];

              [(WCM_MavAntennaPolicy *)selfCopy createFaceIDpowerTablefromPlist];
            }

            else
            {
              [WCM_Logging logLevel:3 message:@"create Mav Client Antenna Mappings from Plist: No antenna condition id policy Plist File Found"];
            }

            v9 = v104;
          }

          v7 = v106;
          v8 = v136;
        }

        else
        {
          [WCM_Logging logLevel:3 message:@"create Mav ClientAntenna Mappings from Plist: No antenna blocking policy Plist File Found"];
          v114 = 0;
        }

        goto LABEL_121;
      }
    }

    else
    {
      [WCM_Logging logLevel:3 message:@"create Client Mappings from Plist: Ant Block Policy: Platform %u is not supported", v3];
    }

    v8 = 0;
    v114 = 0;
    v9 = 0;
LABEL_121:

    goto LABEL_122;
  }

LABEL_124:
}

- (void)createFaceIDpowerTablefromPlist
{
  getFaceIDPlatformPlistName = [(WCM_MavAntennaPolicy *)self getFaceIDPlatformPlistName];
  v4 = getFaceIDPlatformPlistName;
  if (getFaceIDPlatformPlistName)
  {
    v5 = sub_10009D018(getFaceIDPlatformPlistName, @"plist");
    if (v5)
    {
      v39 = 0;
      v40 = 0;
      v6 = [NSPropertyListSerialization propertyListWithData:v5 options:2 format:&v40 error:&v39];
      v7 = v39;
      if (v6)
      {
        [WCM_Logging logLevel:3 message:@"create FaceID power Tables from Plist: Face ID policy Plist File Found for device"];
        v8 = xpc_array_create(0, 0);
        if (v8)
        {
          v9 = [v6 objectForKey:@"Config"];
          v10 = [(WCM_MavAntennaPolicy *)self getFaceIDConfigDictionarySKUBased:v9];
          v11 = v10;
          if (v10)
          {
            v29 = v9;
            v30 = v7;
            v31 = v6;
            v32 = v5;
            v33 = v4;
            v28 = v10;
            [v10 objectForKey:@"Policy"];
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            obj = v38 = 0u;
            v12 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = 0;
              v15 = *v36;
              do
              {
                for (i = 0; i != v13; i = i + 1)
                {
                  if (*v36 != v15)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v17 = *(*(&v35 + 1) + 8 * i);
                  if (v17)
                  {
                    v18 = [*(*(&v35 + 1) + 8 * i) objectForKey:@"band"];
                    unsignedIntValue = [v18 unsignedIntValue];

                    v20 = [v17 objectForKey:@"target_power"];
                    unsignedIntValue2 = [v20 unsignedIntValue];

                    v22 = [v17 objectForKey:@"antenna_num"];
                    unsignedIntValue3 = [v22 unsignedIntValue];

                    v24 = [(WCM_MavAntennaPolicy *)self createFaceIDPowerTableXpcElement:unsignedIntValue ant:unsignedIntValue3 target_power_dbm:unsignedIntValue2];

                    if (v24)
                    {
                      if (!xpc_array_get_count(v8))
                      {
                        v25 = [(WCM_MavAntennaPolicy *)self createFaceIDPowerTableXpcElement:0 ant:0 target_power_dbm:0];
                        if (v25)
                        {
                          xpc_array_append_value(v8, v25);
                        }
                      }

                      xpc_array_append_value(v8, v24);
                      v14 = v24;
                    }

                    else
                    {
                      v14 = 0;
                    }
                  }
                }

                v13 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
              }

              while (v13);
            }

            else
            {
              v14 = 0;
            }

            v5 = v32;
            v4 = v33;
            v11 = v28;
            if (xpc_array_get_count(v8))
            {
              v26 = [(WCM_MavAntennaPolicy *)self createFaceIDPowerTableXpcElement:244 ant:0 target_power_dbm:0];
              if (v26)
              {
                xpc_array_append_value(v8, v26);
              }
            }

            v27 = xpc_copy(v8);
            [(WCM_MavAntennaPolicy *)self setMMavFaceIdPtConfig:v27];

            v7 = v30;
            v6 = v31;
            v9 = v29;
          }

          else
          {
            [WCM_Logging logLevel:3 message:@"Face ID Policy Table not found for the SKU"];
            [(WCM_MavAntennaPolicy *)self setMMavFaceIdPtConfig:0];
          }
        }
      }

      else
      {
        [WCM_Logging logLevel:3 message:@"create FaceID power Tables from Plist: No Face ID policy Plist File Found"];
      }
    }
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Face ID policy is not found for this platform"];
  }
}

- (void)sendFaceIDPowerTables
{
  xdict = xpc_dictionary_create(0, 0, 0);
  if (xdict)
  {
    mMavFaceIdPtConfig = [(WCM_MavAntennaPolicy *)self mMavFaceIdPtConfig];

    if (mMavFaceIdPtConfig)
    {
      v4 = +[WCM_PolicyManager singleton];
      cellularController = [v4 cellularController];

      if (cellularController)
      {
        [WCM_Logging logLevel:4 message:@"sendFaceIDPowerTables"];
        v6 = xpc_array_create(0, 0);
        v7 = xpc_array_create(0, 0);
        if (v7)
        {
          v8 = v7;
          mMavFaceIdPtConfig2 = [(WCM_MavAntennaPolicy *)self mMavFaceIdPtConfig];
          v10 = xpc_copy(mMavFaceIdPtConfig2);

          count = xpc_array_get_count(v10);
          if (count >= 1)
          {
            v12 = count & 0x7FFFFFFF;
            v13 = (count + 1);
            v14 = 1;
            do
            {
              v15 = xpc_array_get_value(v10, v14 - 1);
              xpc_array_append_value(v6, v15);
              if (v12 == v14 || (v14 & 7) == 0)
              {
                xpc_dictionary_set_value(xdict, "kWCMCellularTransparentMessageInformationSet", v6);
                [cellularController sendMessage:1223 withArgs:xdict];
                v16 = xpc_array_create(0, 0);

                v6 = v16;
              }

              ++v14;
            }

            while (v13 != v14);
          }
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        [WCM_Logging logLevel:4 message:@"create FaceID Power Tables failed due controller being NULL"];
      }
    }

    else
    {
      [WCM_Logging logLevel:0 message:@"Baseband FaceID config is null"];
    }
  }
}

- (void)sendMavConfigitems
{
  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3)
  {
    xdict = v3;
    v4 = xpc_dictionary_create(0, 0, 0);
    if (!v4)
    {
LABEL_36:

      v3 = xdict;
      goto LABEL_37;
    }

    v5 = xpc_dictionary_create(0, 0, 0);
    if (!v5)
    {
LABEL_35:

      goto LABEL_36;
    }

    v6 = xpc_dictionary_create(0, 0, 0);
    if (v6)
    {
      mEurekaConfig = [(WCM_MavAntennaPolicy *)self mEurekaConfig];
      if (mEurekaConfig)
      {
        v8 = mEurekaConfig;
        mMavCiConfig = [(WCM_MavAntennaPolicy *)self mMavCiConfig];
        if (mMavCiConfig)
        {
          v10 = mMavCiConfig;
          mMavPtConfig = [(WCM_MavAntennaPolicy *)self mMavPtConfig];

          if (mMavPtConfig)
          {
            v12 = +[WCM_PolicyManager singleton];
            cellularController = [v12 cellularController];

            if (cellularController)
            {
              v14 = xpc_dictionary_create(0, 0, 0);
              mEurekaConfig2 = [(WCM_MavAntennaPolicy *)self mEurekaConfig];
              v16 = xpc_copy(mEurekaConfig2);

              xpc_dictionary_set_value(v4, "kWCMCellularSetAntBlocking_ClientInformationSet", v16);
              [cellularController sendMessage:1224 withArgs:v4];
              v17 = xpc_dictionary_create(0, 0, 0);
              if (v17)
              {
                v44 = v16;
                v45 = v6;
                v18 = [(WCM_MavAntennaPolicy *)self createConditionIdXpcElement:0 mav_antenna_block_client_id:0 cellular_band:0 cellular_frequency_upper:0 cellular_frequency_lower:0 cellular_ant_mitigation:0];
                v19 = xpc_array_create(0, 0);
                v42 = v18;
                xpc_array_append_value(v19, v18);
                v41 = v19;
                xpc_dictionary_set_value(v17, "kWCMCellularTransparentMessageInformationSet", v19);
                v46 = cellularController;
                v43 = v17;
                [cellularController sendMessage:1223 withArgs:v17];
                [WCM_Logging logLevel:4 message:@"Sending CID config params"];
                v20 = xpc_array_create(0, 0);
                mMavCiConfig2 = [(WCM_MavAntennaPolicy *)self mMavCiConfig];
                v22 = xpc_copy(mMavCiConfig2);

                v23 = xpc_array_create(0, 0);
                if (xpc_array_get_count(v22))
                {
                  v24 = 0;
                  do
                  {
                    v25 = xpc_array_get_value(v22, v24);
                    xpc_array_append_value(v23, v25);
                    if (((v24 + 1) & 7) == 0 || v24 + 1 == xpc_array_get_count(v22))
                    {
                      xpc_dictionary_set_value(v5, "kWCMCellularTransparentMessageInformationSet", v23);
                      [v46 sendMessage:1223 withArgs:v5];
                      v26 = xpc_array_create(0, 0);

                      v23 = v26;
                    }

                    ++v24;
                  }

                  while (xpc_array_get_count(v22) > v24);
                }

                [WCM_Logging logLevel:4 message:@"Sending CID Pboff params"];
                v27 = xpc_array_create(0, 0);
                mMavPtConfig2 = [(WCM_MavAntennaPolicy *)self mMavPtConfig];
                v29 = xpc_copy(mMavPtConfig2);

                v30 = xpc_array_create(0, 0);
                if (xpc_array_get_count(v29))
                {
                  v31 = 0;
                  do
                  {
                    v32 = xpc_array_get_value(v29, v31);
                    xpc_array_append_value(v30, v32);
                    if (((v31 + 1) & 7) == 0 || v31 + 1 == xpc_array_get_count(v29))
                    {
                      xpc_dictionary_set_value(xdict, "kWCMCellularTransparentMessageInformationSet", v30);
                      [v46 sendMessage:1223 withArgs:xdict];
                      v33 = xpc_array_create(0, 0);

                      v30 = v33;
                    }

                    ++v31;
                  }

                  while (xpc_array_get_count(v29) > v31);
                }

                [WCM_Logging logLevel:4 message:@"Sending SF Pboff params"];
                v34 = xpc_array_create(0, 0);
                mMavSfPboffConfig = [(WCM_MavAntennaPolicy *)self mMavSfPboffConfig];
                v36 = xpc_copy(mMavSfPboffConfig);

                v37 = xpc_array_create(0, 0);
                if (xpc_array_get_count(v36))
                {
                  v38 = 0;
                  do
                  {
                    v39 = xpc_array_get_value(v36, v38);
                    xpc_array_append_value(v37, v39);
                    if (((v38 + 1) & 7) == 0 || v38 + 1 == xpc_array_get_count(v36))
                    {
                      xpc_dictionary_set_value(v45, "kWCMCellularTransparentMessageInformationSet", v37);
                      [v46 sendMessage:1223 withArgs:v45];
                      v40 = xpc_array_create(0, 0);

                      v37 = v40;
                    }

                    ++v38;
                  }

                  while (xpc_array_get_count(v36) > v38);
                }

                [(WCM_MavAntennaPolicy *)self sendFaceIDPowerTables];

                v6 = v45;
                cellularController = v46;
                v17 = v43;
                v16 = v44;
              }
            }

            else
            {
              [WCM_Logging logLevel:4 message:@"create Mav ClientMappings failed due controller being NULL"];
            }

            goto LABEL_34;
          }
        }

        else
        {
        }
      }

      [WCM_Logging logLevel:0 message:@"Baseband eur config is null"];
    }

LABEL_34:

    goto LABEL_35;
  }

LABEL_37:
}

- (id)createAntennaBlockingClientXpcArray:(id)array client_id:(int)client_id convBand:(unsigned __int8)band
{
  bandCopy = band;
  arrayCopy = array;
  v9 = +[NSMutableDictionary dictionary];
  if (arrayCopy)
  {
    v10 = [arrayCopy objectForKey:@"Block_Voice"];
    bOOLValue = [v10 BOOLValue];

    v12 = [arrayCopy objectForKey:@"Duration_Granularity"];
    unsignedIntValue = [v12 unsignedIntValue];

    v14 = [arrayCopy objectForKey:@"Policy"];
    if (v14)
    {
      v36 = bOOLValue;
      v37 = arrayCopy;
      v50 = 0u;
      v51 = 0u;
      v35 = unsignedIntValue;
      v48 = 0u;
      v49 = 0u;
      v15 = v14;
      v43 = [v15 countByEnumeratingWithState:&v48 objects:v53 count:16];
      v16 = 0;
      if (!v43)
      {
        goto LABEL_23;
      }

      v42 = *v49;
      v39 = v9;
      obj = v15;
      v38 = bandCopy;
      while (1)
      {
        for (i = 0; i != v43; i = i + 1)
        {
          v18 = v16;
          if (*v49 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v48 + 1) + 8 * i);
          v20 = +[NSMutableSet set];
          v21 = [v19 objectForKey:@"Cellular_Ant"];
          unsignedIntValue2 = [v21 unsignedIntValue];

          v16 = [v19 objectForKey:@"Cellular_Band_Array"];

          if (bandCopy != 1)
          {
            if (!v16)
            {
              goto LABEL_21;
            }

            v30 = +[NSMutableSet set];
            v31 = [NSNumber numberWithUnsignedLongLong:unsignedIntValue2];
            [v9 setObject:v30 forKeyedSubscript:v31];

            v29 = v16;
LABEL_20:
            v32 = [NSNumber numberWithUnsignedLongLong:unsignedIntValue2];
            [v9 setObject:v29 forKeyedSubscript:v32];

            goto LABEL_21;
          }

          v41 = unsignedIntValue2;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v23 = v16;
          v24 = [v23 countByEnumeratingWithState:&v44 objects:v52 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v45;
            do
            {
              for (j = 0; j != v25; j = j + 1)
              {
                if (*v45 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = [NSNumber numberWithInt:[(WCM_MavAntennaPolicy *)self convertBandToEurBandId:*(*(&v44 + 1) + 8 * j)]];
                [v20 addObject:v28];
              }

              v25 = [v23 countByEnumeratingWithState:&v44 objects:v52 count:16];
            }

            while (v25);
          }

          v29 = v20;
          v9 = v39;
          bandCopy = v38;
          unsignedIntValue2 = v41;
          if (v20)
          {
            goto LABEL_20;
          }

LABEL_21:
        }

        v15 = obj;
        v43 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
        if (!v43)
        {
LABEL_23:

          v33 = [(WCM_MavAntennaPolicy *)self createXpcClientObjectWithClientId:client_id blockVoice:v36 timeMultipler:v35 antennaBandMappings:v9];
          arrayCopy = v37;
          goto LABEL_25;
        }
      }
    }
  }

  v33 = 0;
  v16 = 0;
  v15 = 0;
LABEL_25:

  return v33;
}

- (void)addXpcBandEntriesWithAnt:(unint64_t)ant bandsToAddSet:(id)set bandArray:(id)array
{
  setCopy = set;
  arrayCopy = array;
  v9 = xpc_array_create(0, 0);
  if (v9)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = setCopy;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = xpc_uint64_create([*(*(&v18 + 1) + 8 * v14) unsignedIntValue]);
          xpc_array_append_value(v9, v15);

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    v16 = xpc_dictionary_create(0, 0, 0);
    v17 = v16;
    if (v16)
    {
      xpc_dictionary_set_value(v16, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v9);
      xpc_dictionary_set_uint64(v17, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", ant);
      xpc_array_append_value(arrayCopy, v17);
    }
  }
}

- (id)createXpcClientObjectWithClientId:(int)id blockVoice:(BOOL)voice timeMultipler:(unint64_t)multipler antennaBandMappings:(id)mappings
{
  mappingsCopy = mappings;
  v11 = xpc_dictionary_create(0, 0, 0);
  if (v11)
  {
    v12 = xpc_uint64_create(id);
    xpc_dictionary_set_value(v11, "kWCMCellularSetAntBlocking_ClientId", v12);
    v13 = xpc_BOOL_create(voice);
    xpc_dictionary_set_value(v11, "kWCMCellularSetAntBlocking_BlockVoice", v13);
    v14 = xpc_uint64_create(multipler);
    xpc_dictionary_set_value(v11, "kWCMCellularSetAntBlocking_TimeMultiplier", v14);
    v15 = xpc_array_create(0, 0);
    if (v15)
    {
      v26 = v13;
      v27 = v12;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v28 = mappingsCopy;
      v16 = mappingsCopy;
      v17 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v30;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v30 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v29 + 1) + 8 * i);
            unsignedLongValue = [v21 unsignedLongValue];
            v23 = [v16 objectForKeyedSubscript:v21];
            [(WCM_MavAntennaPolicy *)self addXpcBandEntriesWithAnt:unsignedLongValue bandsToAddSet:v23 bandArray:v15];
          }

          v18 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v18);
      }

      xpc_dictionary_set_value(v11, "kWCMCellularSetAntBlocking_BandInformationSet", v15);
      v24 = v11;
      v12 = v27;
      mappingsCopy = v28;
      v13 = v26;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)createHardcodedWifiClientMappings
{
  v2 = +[WCM_PolicyManager singleton];
  activeCoexFeatures = [v2 activeCoexFeatures];
  v4 = [activeCoexFeatures containsObject:@"BB22_N79_DYNAMIC_ANTENNA_BLOCKING"];

  if ((v4 & 1) == 0)
  {
    [WCM_Logging logLevel:0 message:@"ERROR: This should never happen. createHardcodedWifiClientMappings"];
    objc_exception_throw(NSInternalInconsistencyException);
  }

  [WCM_Logging logLevel:4 message:@"cellular controller createHardcodedWifiClientMappings"];
  v5 = +[WCM_PolicyManager singleton];
  platformManager = [v5 platformManager];
  wrmPlatformId = [platformManager wrmPlatformId];

  v8 = +[NSMutableDictionary dictionary];
  if (wrmPlatformId - 13 <= 3)
  {
    v9 = +[NSMutableSet set];
    v10 = [NSNumber numberWithUnsignedLongLong:8];
    [v8 setObject:v9 forKeyedSubscript:v10];

    v11 = [NSNumber numberWithUnsignedLongLong:8];
    v12 = [v8 objectForKeyedSubscript:v11];
    [v12 addObject:&off_100271148];

    if (wrmPlatformId == 14)
    {
      v13 = +[NSMutableSet set];
      v14 = [NSNumber numberWithUnsignedLongLong:3];
      [v8 setObject:v13 forKeyedSubscript:v14];

      v15 = [NSNumber numberWithUnsignedLongLong:3];
      v16 = [v8 objectForKeyedSubscript:v15];
      [v16 addObject:&off_100271160];

      v17 = [NSNumber numberWithUnsignedLongLong:3];
      v18 = [v8 objectForKeyedSubscript:v17];
      [v18 addObject:&off_100271178];

      v19 = [NSNumber numberWithUnsignedLongLong:3];
      v20 = [v8 objectForKeyedSubscript:v19];
      v21 = v20;
      v22 = &off_100271190;
LABEL_13:
      [v20 addObject:v22];
      goto LABEL_14;
    }
  }

  if ((wrmPlatformId & 0xFFFFFFFD) == 0xD)
  {
    v23 = +[NSMutableSet set];
    v24 = [NSNumber numberWithUnsignedLongLong:3];
    [v8 setObject:v23 forKeyedSubscript:v24];

    v25 = [NSNumber numberWithUnsignedLongLong:3];
    v26 = [v8 objectForKeyedSubscript:v25];
    [v26 addObject:&off_1002711A8];
  }

  if (wrmPlatformId == 146)
  {
    v29 = +[NSMutableSet set];
    v30 = [NSNumber numberWithUnsignedLongLong:4];
    [v8 setObject:v29 forKeyedSubscript:v30];

    v19 = [NSNumber numberWithUnsignedLongLong:4];
    v20 = [v8 objectForKeyedSubscript:v19];
    v21 = v20;
    v22 = &off_100271148;
    goto LABEL_13;
  }

  if (wrmPlatformId == 144)
  {
    v27 = +[NSMutableSet set];
    v28 = [NSNumber numberWithUnsignedLongLong:6];
    [v8 setObject:v27 forKeyedSubscript:v28];

    v19 = [NSNumber numberWithUnsignedLongLong:6];
    v20 = [v8 objectForKeyedSubscript:v19];
    v21 = v20;
    v22 = &off_1002711C0;
    goto LABEL_13;
  }

  if (wrmPlatformId != 16)
  {
    goto LABEL_15;
  }

  v19 = +[NSMutableSet set];
  v21 = [NSNumber numberWithUnsignedLongLong:3];
  [v8 setObject:v19 forKeyedSubscript:v21];
LABEL_14:

LABEL_15:

  return v8;
}

- (id)createDynamicAntBlockingWifiClientMappingsWithCellAntBlkEnableIdx1:(unsigned __int8)idx1 cellAntBlkEnableIdx2:(unsigned __int8)idx2
{
  idx2Copy = idx2;
  idx1Copy = idx1;
  v6 = +[WCM_PolicyManager singleton];
  activeCoexFeatures = [v6 activeCoexFeatures];
  v8 = [activeCoexFeatures containsObject:@"BB22_N79_DYNAMIC_ANTENNA_BLOCKING"];

  if ((v8 & 1) == 0)
  {
    [WCM_Logging logLevel:0 message:@"ERROR: This should never happen. createN79MitigationWifiClientMappingsWithCellAntBlkEnableIdx1"];
    objc_exception_throw(NSInternalInconsistencyException);
  }

  [WCM_Logging logLevel:4 message:@"cellular controller createN79MitigationWifiClientMappings idx1: %d and idx2: %d", idx1Copy, idx2Copy];
  v9 = +[WCM_PolicyManager singleton];
  platformManager = [v9 platformManager];
  [platformManager wrmPlatformId];

  v11 = +[NSMutableDictionary dictionary];
  v12 = +[NSMutableSet set];
  v13 = [NSNumber numberWithUnsignedLongLong:idx1Copy];
  [v11 setObject:v12 forKeyedSubscript:v13];

  v14 = [NSNumber numberWithUnsignedLongLong:idx1Copy];
  v15 = [v11 objectForKeyedSubscript:v14];
  [v15 addObject:&off_100271148];

  if (idx2Copy)
  {
    v16 = +[NSMutableSet set];
    v17 = [NSNumber numberWithUnsignedLongLong:idx2Copy];
    [v11 setObject:v16 forKeyedSubscript:v17];

    v18 = [NSNumber numberWithUnsignedLongLong:idx2Copy];
    v19 = [v11 objectForKeyedSubscript:v18];
    [v19 addObject:&off_100271148];
  }

  return v11;
}

- (id)createHardcodedRc1ClientMappings
{
  v2 = +[WCM_PolicyManager singleton];
  activeCoexFeatures = [v2 activeCoexFeatures];
  v4 = [activeCoexFeatures containsObject:@"BB22_N79_DYNAMIC_ANTENNA_BLOCKING"];

  if ((v4 & 1) == 0)
  {
    [WCM_Logging logLevel:0 message:@"ERROR: This should never happen. createHardcodedRc1ClientMappings"];
    objc_exception_throw(NSInternalInconsistencyException);
  }

  [WCM_Logging logLevel:4 message:@"cellular controller createHardcodedRc1ClientMappings"];
  v5 = +[WCM_PolicyManager singleton];
  platformManager = [v5 platformManager];
  wrmPlatformId = [platformManager wrmPlatformId];

  v8 = +[NSMutableDictionary dictionary];
  if (wrmPlatformId - 13 <= 3)
  {
    v9 = +[NSMutableSet set];
    v10 = [NSNumber numberWithUnsignedLongLong:8];
    [v8 setObject:v9 forKeyedSubscript:v10];

    v11 = [NSNumber numberWithUnsignedLongLong:8];
    v12 = [v8 objectForKeyedSubscript:v11];
    [v12 addObject:&off_100271148];

    if (wrmPlatformId == 14)
    {
      v13 = +[NSMutableSet set];
      v14 = [NSNumber numberWithUnsignedLongLong:2];
      [v8 setObject:v13 forKeyedSubscript:v14];

      v15 = [NSNumber numberWithUnsignedLongLong:2];
      v16 = [v8 objectForKeyedSubscript:v15];
      [v16 addObject:&off_1002711D8];

LABEL_10:
      v20 = +[NSMutableSet set];
      v18 = 4;
      v21 = [NSNumber numberWithUnsignedLongLong:4];
      [v8 setObject:v20 forKeyedSubscript:v21];
      v22 = &off_100271208;
      goto LABEL_11;
    }
  }

  switch(wrmPlatformId)
  {
    case 0xFu:
      v20 = +[NSMutableSet set];
      v18 = 2;
      v21 = [NSNumber numberWithUnsignedLongLong:2];
      [v8 setObject:v20 forKeyedSubscript:v21];
      v22 = &off_1002711D8;
      break;
    case 0xDu:
      v17 = +[NSMutableSet set];
      v18 = 2;
      v19 = [NSNumber numberWithUnsignedLongLong:2];
      [v8 setObject:v17 forKeyedSubscript:v19];

      v20 = [NSNumber numberWithUnsignedLongLong:2];
      v21 = [v8 objectForKeyedSubscript:v20];
      [v21 addObject:&off_1002711D8];
      v22 = &off_1002711F0;
      break;
    case 0xEu:
      goto LABEL_10;
    default:
      goto LABEL_12;
  }

LABEL_11:

  v23 = [NSNumber numberWithUnsignedLongLong:v18];
  v24 = [v8 objectForKeyedSubscript:v23];
  [v24 addObject:v22];

LABEL_12:

  return v8;
}

- (id)createHardcodedFcamClientMappings
{
  v2 = +[WCM_PolicyManager singleton];
  activeCoexFeatures = [v2 activeCoexFeatures];
  v4 = [activeCoexFeatures containsObject:@"BB22_N79_DYNAMIC_ANTENNA_BLOCKING"];

  if ((v4 & 1) == 0)
  {
    [WCM_Logging logLevel:0 message:@"ERROR: This should never happen. createHardcodedFcamClientMappings"];
    objc_exception_throw(NSInternalInconsistencyException);
  }

  [WCM_Logging logLevel:4 message:@"cellular controller createHardcodedFcamClientMappings"];
  v5 = +[WCM_PolicyManager singleton];
  platformManager = [v5 platformManager];
  wrmPlatformId = [platformManager wrmPlatformId];

  v8 = +[NSMutableDictionary dictionary];
  if (wrmPlatformId <= 15)
  {
    if (wrmPlatformId != 13 && wrmPlatformId != 14)
    {
      if (wrmPlatformId != 15)
      {
        goto LABEL_13;
      }

      v9 = +[NSMutableSet set];
      v10 = [NSNumber numberWithUnsignedLongLong:8];
      [v8 setObject:v9 forKeyedSubscript:v10];
      v11 = &off_100271148;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (wrmPlatformId == 16)
  {
LABEL_11:
    v16 = +[NSMutableSet set];
    v17 = [NSNumber numberWithUnsignedLongLong:8];
    [v8 setObject:v16 forKeyedSubscript:v17];

    v9 = [NSNumber numberWithUnsignedLongLong:8];
    v10 = [v8 objectForKeyedSubscript:v9];
    [v10 addObject:&off_100271148];
    v11 = &off_100271220;
    goto LABEL_12;
  }

  if (wrmPlatformId == 19 || wrmPlatformId == 20)
  {
    v12 = +[NSMutableSet set];
    v13 = [NSNumber numberWithUnsignedLongLong:8];
    [v8 setObject:v12 forKeyedSubscript:v13];

    v14 = [NSNumber numberWithUnsignedLongLong:8];
    v15 = [v8 objectForKeyedSubscript:v14];
    [v15 addObject:&off_100271148];

    v9 = [NSNumber numberWithUnsignedLongLong:8];
    v10 = [v8 objectForKeyedSubscript:v9];
    [v10 addObject:&off_100271220];
    v11 = &off_100271208;
LABEL_12:

    v18 = [NSNumber numberWithUnsignedLongLong:8];
    v19 = [v8 objectForKeyedSubscript:v18];
    [v19 addObject:v11];
  }

LABEL_13:

  return v8;
}

- (id)createHardcodedFidClientMappings
{
  v2 = +[WCM_PolicyManager singleton];
  activeCoexFeatures = [v2 activeCoexFeatures];
  v4 = [activeCoexFeatures containsObject:@"BB22_N79_DYNAMIC_ANTENNA_BLOCKING"];

  if ((v4 & 1) == 0)
  {
    [WCM_Logging logLevel:0 message:@"ERROR: This should never happen. createHardcodedFidClientMappings"];
    objc_exception_throw(NSInternalInconsistencyException);
  }

  [WCM_Logging logLevel:4 message:@"cellular controller createHardcodedFidClientMappings"];
  v5 = +[WCM_PolicyManager singleton];
  platformManager = [v5 platformManager];
  wrmPlatformId = [platformManager wrmPlatformId];

  v8 = +[NSMutableDictionary dictionary];
  if (wrmPlatformId == 20 || wrmPlatformId == 13)
  {
    v10 = +[NSMutableSet set];
    v11 = [NSNumber numberWithUnsignedLongLong:2];
    [v8 setObject:v10 forKeyedSubscript:v11];

    v12 = [NSNumber numberWithUnsignedLongLong:2];
    v13 = [v8 objectForKeyedSubscript:v12];
    [v13 addObject:&off_1002711F0];

    v14 = [NSNumber numberWithUnsignedLongLong:2];
    v15 = [v8 objectForKeyedSubscript:v14];
    [v15 addObject:&off_1002711D8];
  }

  return v8;
}

- (id)createHardcodedJpgRegClientMappings
{
  v2 = +[WCM_PolicyManager singleton];
  activeCoexFeatures = [v2 activeCoexFeatures];
  v4 = [activeCoexFeatures containsObject:@"BB22_N79_DYNAMIC_ANTENNA_BLOCKING"];

  if ((v4 & 1) == 0)
  {
    [WCM_Logging logLevel:0 message:@"ERROR: This should never happen. createHardcodedJpgRegClientMappings"];
    objc_exception_throw(NSInternalInconsistencyException);
  }

  [WCM_Logging logLevel:4 message:@"cellular controller createHardcodedJpgRegClientMappings"];
  v5 = +[WCM_PolicyManager singleton];
  platformManager = [v5 platformManager];
  wrmPlatformId = [platformManager wrmPlatformId];

  v8 = +[NSMutableDictionary dictionary];
  if (wrmPlatformId == 146)
  {
    v9 = +[NSMutableSet set];
    v10 = [NSNumber numberWithUnsignedLongLong:6];
    [v8 setObject:v9 forKeyedSubscript:v10];

    v11 = [NSNumber numberWithUnsignedLongLong:6];
    v12 = [v8 objectForKeyedSubscript:v11];
    [v12 addObject:&off_100271220];

    v13 = [NSNumber numberWithUnsignedLongLong:6];
    v14 = [v8 objectForKeyedSubscript:v13];
    [v14 addObject:&off_100271208];
  }

  return v8;
}

- (void)reconfigureClientAntBlockingParamsWithCellAntBlkEnableIdx1:(unsigned __int8)idx1 cellAntBlkEnableIdx2:(unsigned __int8)idx2
{
  idx2Copy = idx2;
  idx1Copy = idx1;
  v7 = +[WCM_PolicyManager singleton];
  activeCoexFeatures = [v7 activeCoexFeatures];
  v9 = [activeCoexFeatures containsObject:@"BB22_N79_DYNAMIC_ANTENNA_BLOCKING"];

  if ((v9 & 1) == 0)
  {
    [WCM_Logging logLevel:0 message:@"ERROR: This should never happen. reconfigureClientAntBlockingParamsWithCellAntBlkEnableIdx1"];
    objc_exception_throw(NSInternalInconsistencyException);
  }

  [WCM_Logging logLevel:4 message:@"cellular controller reconfigure antenna blocking to cellAntBlkEnableIdx1 %d and cellAntBlkEnableIdx2 %d", idx1Copy, idx2Copy];
  v10 = objc_autoreleasePoolPush();
  v11 = +[WCM_PolicyManager singleton];
  platformManager = [v11 platformManager];
  wrmPlatformId = [platformManager wrmPlatformId];

  v14 = xpc_dictionary_create(0, 0, 0);
  if (v14)
  {
    v15 = xpc_array_create(0, 0);
    if (v15)
    {
      if (wrmPlatformId == 22)
      {
        [(WCM_MavAntennaPolicy *)self createDynamicAntBlockingWifiClientMappingsWithCellAntBlkEnableIdx1:idx1Copy cellAntBlkEnableIdx2:idx2Copy];
      }

      else
      {
        [(WCM_MavAntennaPolicy *)self createHardcodedWifiClientMappings];
      }
      v29 = ;
      v16 = [(WCM_MavAntennaPolicy *)self createXpcClientObjectWithClientId:0 blockVoice:0 timeMultipler:250 antennaBandMappings:v29];
      if (v16)
      {
        xpc_array_append_value(v15, v16);
      }

      createHardcodedRc1ClientMappings = [(WCM_MavAntennaPolicy *)self createHardcodedRc1ClientMappings];
      v17 = [(WCM_MavAntennaPolicy *)self createXpcClientObjectWithClientId:1 blockVoice:1 timeMultipler:250 antennaBandMappings:?];
      if (v17)
      {
        xpc_array_append_value(v15, v17);
      }

      v30 = v10;
      createHardcodedFcamClientMappings = [(WCM_MavAntennaPolicy *)self createHardcodedFcamClientMappings];
      v18 = [(WCM_MavAntennaPolicy *)self createXpcClientObjectWithClientId:2 blockVoice:1 timeMultipler:250 antennaBandMappings:?];
      if (v18)
      {
        xpc_array_append_value(v15, v18);
      }

      v28 = v16;
      createHardcodedFidClientMappings = [(WCM_MavAntennaPolicy *)self createHardcodedFidClientMappings];
      v20 = [(WCM_MavAntennaPolicy *)self createXpcClientObjectWithClientId:3 blockVoice:1 timeMultipler:250 antennaBandMappings:createHardcodedFidClientMappings];
      if (v20)
      {
        xpc_array_append_value(v15, v20);
      }

      createHardcodedJpgRegClientMappings = [(WCM_MavAntennaPolicy *)self createHardcodedJpgRegClientMappings];
      v22 = [(WCM_MavAntennaPolicy *)self createXpcClientObjectWithClientId:2 blockVoice:0 timeMultipler:250 antennaBandMappings:createHardcodedJpgRegClientMappings];
      if (v22)
      {
        xpc_array_append_value(v15, v22);
      }

      xpc_dictionary_set_value(v14, "kWCMCellularSetAntBlocking_ClientInformationSet", v15);
      v23 = [v14 description];
      [WCM_Logging logLevel:4 message:@"cellular controller final args: %@", v23];

      v24 = +[WCM_PolicyManager singleton];
      cellularController = [v24 cellularController];

      [cellularController sendMessage:1221 withArgs:v14];
      v10 = v30;
    }
  }

  objc_autoreleasePoolPop(v10);
}

- (id)createConditionIdXpcElement:(unsigned int)element mav_antenna_block_client_id:(unsigned int)mav_antenna_block_client_id cellular_band:(unsigned int)cellular_band cellular_frequency_upper:(unsigned int)cellular_frequency_upper cellular_frequency_lower:(unsigned int)cellular_frequency_lower cellular_ant_mitigation:(unsigned int)cellular_ant_mitigation
{
  cellular_ant_mitigationCopy = cellular_ant_mitigation;
  v13 = xpc_array_create(0, 0);
  v14 = xpc_dictionary_create(0, 0, 0);
  v15 = xpc_uint64_create(0xAuLL);
  v26 = 1000 * cellular_frequency_upper;
  v27 = 1000 * cellular_frequency_lower;
  v16 = xpc_uint64_create(element);
  xpc_array_append_value(v13, v16);

  v17 = xpc_uint64_create(mav_antenna_block_client_id);
  xpc_array_append_value(v13, v17);

  v18 = xpc_uint64_create(cellular_band);
  xpc_array_append_value(v13, v18);

  for (i = 0; i != 4; ++i)
  {
    v20 = xpc_uint64_create(*(&v26 + i));
    xpc_array_append_value(v13, v20);
  }

  for (j = 0; j != 4; ++j)
  {
    v22 = xpc_uint64_create(*(&v27 + j));
    xpc_array_append_value(v13, v22);
  }

  for (k = 0; k != 4; ++k)
  {
    v24 = xpc_uint64_create(*(&cellular_ant_mitigationCopy + k));
    xpc_array_append_value(v13, v24);
  }

  xpc_dictionary_set_value(v14, "kWCMCellularTransparentMessage_Type", v15);
  xpc_dictionary_set_value(v14, "kWCMCellularTransparentMessage_ByteList", v13);

  return v14;
}

- (id)createPowerTableXpcElement:(unsigned int)element ant:(unsigned int)ant target_power_dbm:(unsigned int)target_power_dbm condition_id:(unsigned int)condition_id entry_num:(unsigned int)entry_num
{
  entry_numCopy = entry_num;
  condition_idCopy = condition_id;
  target_power_dbmCopy = target_power_dbm;
  v12 = xpc_array_create(0, 0);
  v13 = xpc_dictionary_create(0, 0, 0);
  v14 = xpc_uint64_create(0xBuLL);
  v15 = xpc_uint64_create(element);
  xpc_array_append_value(v12, v15);

  v16 = xpc_uint64_create(ant);
  xpc_array_append_value(v12, v16);

  v17 = xpc_uint64_create(2 * ((5 * target_power_dbmCopy) & 0x7Fu));
  xpc_array_append_value(v12, v17);

  v18 = xpc_uint64_create(condition_idCopy);
  xpc_array_append_value(v12, v18);

  v19 = xpc_uint64_create(entry_numCopy);
  xpc_array_append_value(v12, v19);

  xpc_dictionary_set_value(v13, "kWCMCellularTransparentMessage_Type", v14);
  xpc_dictionary_set_value(v13, "kWCMCellularTransparentMessage_ByteList", v12);

  return v13;
}

- (id)createFaceIDPowerTableXpcElement:(unsigned int)element ant:(unsigned int)ant target_power_dbm:(unsigned int)target_power_dbm
{
  v8 = xpc_array_create(0, 0);
  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = xpc_uint64_create(0xDuLL);
  v11 = xpc_uint64_create(element);
  xpc_array_append_value(v8, v11);

  v12 = xpc_uint64_create(ant);
  xpc_array_append_value(v8, v12);

  v13 = xpc_uint64_create(target_power_dbm);
  xpc_array_append_value(v8, v13);

  xpc_dictionary_set_value(v9, "kWCMCellularTransparentMessage_Type", v10);
  xpc_dictionary_set_value(v9, "kWCMCellularTransparentMessage_ByteList", v8);

  return v9;
}

- (id)createSubframePowerBackOffTableXpcElement:(id)element condition_id:(unsigned int)condition_id
{
  condition_idCopy = condition_id;
  elementCopy = element;
  v7 = xpc_array_create(0, 0);
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = xpc_uint64_create(0xCuLL);
  v10 = xpc_uint64_create(condition_idCopy);
  xpc_array_append_value(v7, v10);

  LOBYTE(v10) = [(WCM_MavAntennaPolicy *)self convertBandToEurBandId:elementCopy];
  v11 = xpc_uint64_create(v10);
  xpc_array_append_value(v7, v11);

  xpc_dictionary_set_value(v8, "kWCMCellularTransparentMessage_Type", v9);
  xpc_dictionary_set_value(v8, "kWCMCellularTransparentMessage_ByteList", v7);

  return v8;
}

- (int)convertBandToEurBandId:(id)id
{
  idCopy = id;
  if ([idCopy isEqualToString:@"n79"])
  {
    v4 = 202;
  }

  else if ([idCopy isEqualToString:@"n1"])
  {
    v4 = 182;
  }

  else if ([idCopy isEqualToString:@"n77"])
  {
    v4 = 200;
  }

  else if ([idCopy isEqualToString:@"n78"])
  {
    v4 = 201;
  }

  else if ([idCopy isEqualToString:@"b1"])
  {
    v4 = 120;
  }

  else if ([idCopy isEqualToString:@"b38"])
  {
    v4 = 157;
  }

  else
  {
    if ([idCopy isEqualToString:@"b3"])
    {
      goto LABEL_14;
    }

    if ([idCopy isEqualToString:@"n38"])
    {
      goto LABEL_16;
    }

    if ([idCopy isEqualToString:@"b25"])
    {
      v4 = 144;
      goto LABEL_31;
    }

    if ([idCopy isEqualToString:@"b7"])
    {
      v4 = 126;
      goto LABEL_31;
    }

    if ([idCopy isEqualToString:@"n7"])
    {
      v4 = 186;
      goto LABEL_31;
    }

    if ([idCopy isEqualToString:@"b40"])
    {
      v4 = 159;
      goto LABEL_31;
    }

    if ([idCopy isEqualToString:@"b4"])
    {
      v4 = 123;
      goto LABEL_31;
    }

    if ([idCopy isEqualToString:@"b42"])
    {
      v4 = 161;
      goto LABEL_31;
    }

    if ([idCopy isEqualToString:@"n40"])
    {
      v4 = 219;
      goto LABEL_31;
    }

    if ([idCopy isEqualToString:@"n38"])
    {
LABEL_16:
      v4 = 190;
      goto LABEL_31;
    }

    if ([idCopy isEqualToString:@"n41"])
    {
      v4 = 191;
      goto LABEL_31;
    }

    if ([idCopy isEqualToString:@"b41"])
    {
      v4 = 160;
      goto LABEL_31;
    }

    if ([idCopy isEqualToString:@"n48"])
    {
      v4 = 222;
      goto LABEL_31;
    }

    if ([idCopy isEqualToString:@"b48"])
    {
      v4 = 178;
      goto LABEL_31;
    }

    if ([idCopy isEqualToString:@"n30"])
    {
      v4 = 227;
      goto LABEL_31;
    }

    if ([idCopy isEqualToString:@"b30"])
    {
      v4 = 149;
      goto LABEL_31;
    }

    if ([idCopy isEqualToString:@"n66"])
    {
      v4 = 194;
      goto LABEL_31;
    }

    if ([idCopy isEqualToString:@"b66"])
    {
      v4 = 168;
      goto LABEL_31;
    }

    if ([idCopy isEqualToString:@"n3"])
    {
      v4 = 184;
      goto LABEL_31;
    }

    if ([idCopy isEqualToString:@"b3"])
    {
LABEL_14:
      v4 = 122;
    }

    else if ([idCopy isEqualToString:@"n70"])
    {
      v4 = 195;
    }

    else if ([idCopy isEqualToString:@"b34"])
    {
      v4 = 153;
    }

    else if ([idCopy isEqualToString:@"b2"])
    {
      v4 = 121;
    }

    else if ([idCopy isEqualToString:@"n2"])
    {
      v4 = 183;
    }

    else if ([idCopy isEqualToString:@"b5"])
    {
      v4 = 124;
    }

    else if ([idCopy isEqualToString:@"n18"])
    {
      v4 = 225;
    }

    else if ([idCopy isEqualToString:@"b18"])
    {
      v4 = 137;
    }

    else
    {
      [WCM_Logging logLevel:0 message:@"MavAntPolicy Plist Error: Unrecognized band in plist, rectify %@", idCopy];
      v4 = 244;
    }
  }

LABEL_31:

  return v4;
}

@end