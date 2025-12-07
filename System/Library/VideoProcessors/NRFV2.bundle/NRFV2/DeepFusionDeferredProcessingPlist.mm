@interface DeepFusionDeferredProcessingPlist
- (id)addBackModulationBandsForModel:(int)model;
- (id)chromaBoostBandsForModel:(int)model isSyntheticLongWithRealLong:(BOOL)long;
- (id)darkEdgeSuppressionBandsForModel:(int)model;
- (id)desaturationDataForModel:(int)model;
- (id)fusionDataForModel:(int)model;
- (id)haloSuppressionBandsForModel:(int)model;
- (id)noiseTuningForModel:(int)model;
- (int)readBandData:(id)data into:(id)into;
- (int)readChromaBoostBandData:(id)data into:(id)into key:(id)key;
- (int)readDarkEdgeSuppressionBandData:(id)data into:(id)into;
- (int)readDesaturationData:(id)data into:(id)into;
- (int)readHaloSuppressionBandData:(id)data into:(id)into;
- (int)readPlist:(id)plist;
@end

@implementation DeepFusionDeferredProcessingPlist

- (id)addBackModulationBandsForModel:(int)model
{
  if (objc_msgSend_count(self->addBackModulationBands, a2, *&model, v3) <= model)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_objectAtIndexedSubscript_(self->addBackModulationBands, v6, model, v7);
  }

  return v8;
}

- (id)noiseTuningForModel:(int)model
{
  if (objc_msgSend_count(self->noiseTuning, a2, *&model, v3) <= model)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_objectAtIndexedSubscript_(self->noiseTuning, v6, model, v7);
  }

  return v8;
}

- (id)fusionDataForModel:(int)model
{
  if (objc_msgSend_count(self->fusionData, a2, *&model, v3) <= model)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_objectAtIndexedSubscript_(self->fusionData, v6, model, v7);
  }

  return v8;
}

- (id)chromaBoostBandsForModel:(int)model isSyntheticLongWithRealLong:(BOOL)long
{
  v5 = !long | (2 * model);
  if (v5 >= objc_msgSend_count(self->chromaBoostMaskBands, a2, *&model, long))
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_objectAtIndexedSubscript_(self->chromaBoostMaskBands, v6, v5, v7);
  }

  return v8;
}

- (id)desaturationDataForModel:(int)model
{
  if (objc_msgSend_count(self->desaturationData, a2, *&model, v3) <= model)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_objectAtIndexedSubscript_(self->desaturationData, v6, model, v7);
  }

  return v8;
}

- (id)haloSuppressionBandsForModel:(int)model
{
  if (objc_msgSend_count(self->haloSuppressionBands, a2, *&model, v3) <= model)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_objectAtIndexedSubscript_(self->haloSuppressionBands, v6, model, v7);
  }

  return v8;
}

- (id)darkEdgeSuppressionBandsForModel:(int)model
{
  if (objc_msgSend_count(self->darkEdgeSupressionBands, a2, *&model, v3) <= model)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_objectAtIndexedSubscript_(self->darkEdgeSupressionBands, v6, model, v7);
  }

  return v8;
}

- (int)readBandData:(id)data into:(id)into
{
  intoCopy = into;
  v8 = objc_msgSend_valueForKey_(data, v6, @"Bands", v7);
  v9 = v8;
  if (!v8)
  {
    sub_2958AB82C(v165);
    v156 = v165[0];
    goto LABEL_41;
  }

  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  obj = v8;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v161, v160, 16);
  if (!v11)
  {
    v156 = 0;
    goto LABEL_40;
  }

  v12 = v11;
  v158 = v9;
  v13 = *v162;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v162 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v161 + 1) + 8 * i);
      v16 = objc_opt_new();
      v17 = [GainValueArray alloc];
      v20 = objc_msgSend_objectForKeyedSubscript_(v15, v18, @"TextureFlatnessThreshold", v19);
      v23 = objc_msgSend_initWithArray_(v17, v21, v20, v22);
      v24 = v16[1];
      v16[1] = v23;

      v25 = [GainValueArray alloc];
      v28 = objc_msgSend_objectForKeyedSubscript_(v15, v26, @"DeghostingYMinValue", v27);
      v31 = objc_msgSend_initWithArray_(v25, v29, v28, v30);
      v32 = v16[2];
      v16[2] = v31;

      v33 = [GainValueArray alloc];
      v36 = objc_msgSend_objectForKeyedSubscript_(v15, v34, @"DeghostingUVMinValue", v35);
      v39 = objc_msgSend_initWithArray_(v33, v37, v36, v38);
      v40 = v16[3];
      v16[3] = v39;

      v41 = [GainValueArray alloc];
      v44 = objc_msgSend_objectForKeyedSubscript_(v15, v42, @"SkinYSlope", v43);
      v47 = objc_msgSend_initWithArray_(v41, v45, v44, v46);
      v48 = v16[4];
      v16[4] = v47;

      v49 = [GainValueArray alloc];
      v52 = objc_msgSend_objectForKeyedSubscript_(v15, v50, @"SkinUVSlope", v51);
      v55 = objc_msgSend_initWithArray_(v49, v53, v52, v54);
      v56 = v16[5];
      v16[5] = v55;

      v57 = [GainValueArray alloc];
      v60 = objc_msgSend_objectForKeyedSubscript_(v15, v58, @"SkyLumaSlope", v59);
      v63 = objc_msgSend_initWithArray_(v57, v61, v60, v62);
      v64 = v16[6];
      v16[6] = v63;

      v65 = [GainValueArray alloc];
      v68 = objc_msgSend_objectForKeyedSubscript_(v15, v66, @"YSlope", v67);
      v71 = objc_msgSend_initWithArray_(v65, v69, v68, v70);
      v72 = v16[7];
      v16[7] = v71;

      v73 = [GainValueArray alloc];
      v76 = objc_msgSend_objectForKeyedSubscript_(v15, v74, @"YAlpha", v75);
      v79 = objc_msgSend_initWithArray_(v73, v77, v76, v78);
      v80 = v16[8];
      v16[8] = v79;

      v81 = [GainValueArray alloc];
      v84 = objc_msgSend_objectForKeyedSubscript_(v15, v82, @"UVAlpha", v83);
      v87 = objc_msgSend_initWithArray_(v81, v85, v84, v86);
      v88 = v16[9];
      v16[9] = v87;

      if (!objc_msgSend_count(intoCopy, v89, v90, v91))
      {
        v95 = [GainValueArray alloc];
        v98 = objc_msgSend_objectForKeyedSubscript_(v15, v96, @"TextureClippingThresholdLow", v97);
        v101 = objc_msgSend_initWithArray_(v95, v99, v98, v100);
        v102 = v16[10];
        v16[10] = v101;

        v103 = [GainValueArray alloc];
        v106 = objc_msgSend_objectForKeyedSubscript_(v15, v104, @"TextureClippingThresholdHigh", v105);
        v109 = objc_msgSend_initWithArray_(v103, v107, v106, v108);
        v110 = v16[11];
        v16[11] = v109;

        v111 = [GainValueArray alloc];
        v114 = objc_msgSend_objectForKeyedSubscript_(v15, v112, @"TextureShadingSuppressionInversePower", v113);
        v117 = objc_msgSend_initWithArray_(v111, v115, v114, v116);
        v118 = v16[12];
        v16[12] = v117;
      }

      if ((objc_msgSend_isValid(v16[1], v92, v93, v94, v158) & 1) == 0)
      {
        sub_2958AB40C();
LABEL_38:

        v156 = -1;
        goto LABEL_39;
      }

      if ((objc_msgSend_isValid(v16[2], v119, v120, v121) & 1) == 0)
      {
        sub_2958AB464();
        goto LABEL_38;
      }

      if ((objc_msgSend_isValid(v16[3], v122, v123, v124) & 1) == 0)
      {
        sub_2958AB4BC();
        goto LABEL_38;
      }

      if ((objc_msgSend_isValid(v16[4], v125, v126, v127) & 1) == 0)
      {
        sub_2958AB514();
        goto LABEL_38;
      }

      if ((objc_msgSend_isValid(v16[5], v128, v129, v130) & 1) == 0)
      {
        sub_2958AB56C();
        goto LABEL_38;
      }

      if ((objc_msgSend_isValid(v16[6], v131, v132, v133) & 1) == 0)
      {
        sub_2958AB5C4();
        goto LABEL_38;
      }

      if ((objc_msgSend_isValid(v16[7], v134, v135, v136) & 1) == 0)
      {
        sub_2958AB61C();
        goto LABEL_38;
      }

      if ((objc_msgSend_isValid(v16[8], v137, v138, v139) & 1) == 0)
      {
        sub_2958AB674();
        goto LABEL_38;
      }

      if ((objc_msgSend_isValid(v16[9], v140, v141, v142) & 1) == 0)
      {
        sub_2958AB6CC();
        goto LABEL_38;
      }

      if (objc_msgSend_count(intoCopy, v143, v144, v145))
      {
        goto LABEL_22;
      }

      if ((objc_msgSend_isValid(v16[10], v146, v147, v148) & 1) == 0)
      {
        sub_2958AB724();
        goto LABEL_38;
      }

      if ((objc_msgSend_isValid(v16[11], v149, v150, v151) & 1) == 0)
      {
        sub_2958AB77C();
        goto LABEL_38;
      }

      if ((objc_msgSend_isValid(v16[12], v152, v153, v154) & 1) == 0)
      {
        sub_2958AB7D4();
        goto LABEL_38;
      }

LABEL_22:
      objc_msgSend_addObject_(intoCopy, v146, v16, v148);
    }

    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v155, &v161, v160, 16);
    if (v12)
    {
      continue;
    }

    break;
  }

  v156 = 0;
LABEL_39:
  v9 = v158;
LABEL_40:

LABEL_41:
  return v156;
}

- (int)readChromaBoostBandData:(id)data into:(id)into key:(id)key
{
  intoCopy = into;
  v10 = objc_msgSend_objectForKeyedSubscript_(data, v8, key, v9);
  v13 = v10;
  if (!v10)
  {
    sub_2958ABA9C(v78);
LABEL_26:
    v69 = v78[0];
    goto LABEL_23;
  }

  v14 = objc_msgSend_valueForKey_(v10, v11, @"Bands", v12);
  if (!v14)
  {
    sub_2958ABA14(v78);
    goto LABEL_26;
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v14;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v74, v73, 16);
  if (!v16)
  {
    v69 = 0;
    goto LABEL_22;
  }

  v17 = v16;
  v71 = v13;
  v18 = *v75;
  while (2)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v75 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v74 + 1) + 8 * i);
      v21 = objc_opt_new();
      v22 = [GainValueArray alloc];
      v25 = objc_msgSend_objectForKeyedSubscript_(v20, v23, @"ColorMatchThresholdStart", v24);
      v28 = objc_msgSend_initWithArray_(v22, v26, v25, v27);
      v29 = v21[1];
      v21[1] = v28;

      v30 = [GainValueArray alloc];
      v33 = objc_msgSend_objectForKeyedSubscript_(v20, v31, @"ColorMatchThresholdEnd", v32);
      v36 = objc_msgSend_initWithArray_(v30, v34, v33, v35);
      v37 = v21[2];
      v21[2] = v36;

      v38 = [GainValueArray alloc];
      v41 = objc_msgSend_objectForKeyedSubscript_(v20, v39, @"EdgeMatchThresholdStart", v40);
      v44 = objc_msgSend_initWithArray_(v38, v42, v41, v43);
      v45 = v21[3];
      v21[3] = v44;

      v46 = [GainValueArray alloc];
      v49 = objc_msgSend_objectForKeyedSubscript_(v20, v47, @"EdgeMatchThresholdEnd", v48);
      v52 = objc_msgSend_initWithArray_(v46, v50, v49, v51);
      v53 = v21[4];
      v21[4] = v52;

      if ((objc_msgSend_isValid(v21[1], v54, v55, v56) & 1) == 0)
      {
        sub_2958AB8B4();
LABEL_20:

        v69 = -1;
        goto LABEL_21;
      }

      if ((objc_msgSend_isValid(v21[2], v57, v58, v59) & 1) == 0)
      {
        sub_2958AB90C();
        goto LABEL_20;
      }

      if ((objc_msgSend_isValid(v21[3], v60, v61, v62) & 1) == 0)
      {
        sub_2958AB964();
        goto LABEL_20;
      }

      if ((objc_msgSend_isValid(v21[4], v63, v64, v65) & 1) == 0)
      {
        sub_2958AB9BC();
        goto LABEL_20;
      }

      objc_msgSend_addObject_(intoCopy, v66, v21, v67);
    }

    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v68, &v74, v73, 16);
    if (v17)
    {
      continue;
    }

    break;
  }

  v69 = 0;
LABEL_21:
  v13 = v71;
LABEL_22:

LABEL_23:
  return v69;
}

- (int)readHaloSuppressionBandData:(id)data into:(id)into
{
  intoCopy = into;
  v8 = objc_msgSend_valueForKey_(data, v6, @"Bands", v7);
  v9 = v8;
  if (v8)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v8;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v32, v31, 16);
    if (v11)
    {
      v12 = v11;
      v13 = *v33;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v32 + 1) + 8 * i);
          v16 = objc_opt_new();
          v17 = [GainValueArray alloc];
          v20 = objc_msgSend_objectForKeyedSubscript_(v15, v18, @"HaloSuppressionStrength", v19);
          v23 = objc_msgSend_initWithArray_(v17, v21, v20, v22);
          v24 = v16[1];
          v16[1] = v23;

          if (!v16[1])
          {
            sub_2958ABB24(v16);
            v28 = -1;
            goto LABEL_13;
          }

          objc_msgSend_addObject_(intoCopy, v25, v16, v26);
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v32, v31, 16);
        if (v12)
        {
          continue;
        }

        break;
      }

      v28 = 0;
    }

    else
    {
      v28 = 0;
    }

LABEL_13:
  }

  else
  {
    sub_2958ABB8C(v36);
    v28 = v36[0];
  }

  return v28;
}

- (int)readDarkEdgeSuppressionBandData:(id)data into:(id)into
{
  intoCopy = into;
  v8 = objc_msgSend_valueForKey_(data, v6, @"Bands", v7);
  v9 = v8;
  if (!v8)
  {
    sub_2958ABD1C(v53);
    v44 = v53[0];
    goto LABEL_20;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v8;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v49, v48, 16);
  if (!v11)
  {
    v44 = 0;
    goto LABEL_19;
  }

  v12 = v11;
  v46 = v9;
  v13 = *v50;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v50 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v49 + 1) + 8 * i);
      v16 = objc_opt_new();
      v17 = [GainValueArray alloc];
      v20 = objc_msgSend_objectForKeyedSubscript_(v15, v18, @"DarkEdgeSuppressionLumaThresholdLow", v19);
      v23 = objc_msgSend_initWithArray_(v17, v21, v20, v22);
      v24 = v16[2];
      v16[2] = v23;

      if (!v16[2])
      {
        sub_2958ABCC4();
LABEL_17:

        v44 = -1;
        goto LABEL_18;
      }

      v25 = [GainValueArray alloc];
      v28 = objc_msgSend_objectForKeyedSubscript_(v15, v26, @"DarkEdgeSuppressionLumaThresholdHigh", v27);
      v31 = objc_msgSend_initWithArray_(v25, v29, v28, v30);
      v32 = v16[1];
      v16[1] = v31;

      if (!v16[1])
      {
        sub_2958ABC6C();
        goto LABEL_17;
      }

      v33 = [GainValueArray alloc];
      v36 = objc_msgSend_objectForKeyedSubscript_(v15, v34, @"DarkEdgeSuppressionLumaDiffThreshold", v35);
      v39 = objc_msgSend_initWithArray_(v33, v37, v36, v38);
      v40 = v16[3];
      v16[3] = v39;

      if (!v16[3])
      {
        sub_2958ABC14();
        goto LABEL_17;
      }

      objc_msgSend_addObject_(intoCopy, v41, v16, v42);
    }

    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v43, &v49, v48, 16);
    if (v12)
    {
      continue;
    }

    break;
  }

  v44 = 0;
LABEL_18:
  v9 = v46;
LABEL_19:

LABEL_20:
  return v44;
}

- (int)readDesaturationData:(id)data into:(id)into
{
  dataCopy = data;
  intoCopy = into;
  if (!dataCopy)
  {
    sub_2958ABEAC(&v42);
    v40 = v42;
    goto LABEL_6;
  }

  v7 = [GainValueArray alloc];
  v10 = objc_msgSend_objectForKeyedSubscript_(dataCopy, v8, @"YThresh", v9);
  v13 = objc_msgSend_initWithArray_(v7, v11, v10, v12);
  v14 = intoCopy[1];
  intoCopy[1] = v13;

  v15 = [GainValueArray alloc];
  v18 = objc_msgSend_objectForKeyedSubscript_(dataCopy, v16, @"Sigma", v17);
  v21 = objc_msgSend_initWithArray_(v15, v19, v18, v20);
  v22 = intoCopy[2];
  intoCopy[2] = v21;

  v23 = [GainValueArray alloc];
  v26 = objc_msgSend_objectForKeyedSubscript_(dataCopy, v24, @"Strength", v25);
  v29 = objc_msgSend_initWithArray_(v23, v27, v26, v28);
  v30 = intoCopy[3];
  intoCopy[3] = v29;

  if ((objc_msgSend_isValid(intoCopy[1], v31, v32, v33) & 1) == 0)
  {
    sub_2958ABDA4();
LABEL_11:
    v40 = -1;
    goto LABEL_6;
  }

  if ((objc_msgSend_isValid(intoCopy[2], v34, v35, v36) & 1) == 0)
  {
    sub_2958ABDFC();
    goto LABEL_11;
  }

  if ((objc_msgSend_isValid(intoCopy[3], v37, v38, v39) & 1) == 0)
  {
    sub_2958ABE54();
    goto LABEL_11;
  }

  v40 = 0;
LABEL_6:

  return v40;
}

- (int)readPlist:(id)plist
{
  plistCopy = plist;
  v170[0] = @"ModelLowEIT";
  v170[1] = @"ModelHighEIT";
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v5, v170, 2);
  v7 = 0x29EDB8000uLL;
  obj = objc_opt_new();
  v163 = objc_opt_new();
  v153 = objc_opt_new();
  v152 = objc_opt_new();
  v151 = objc_opt_new();
  v150 = objc_opt_new();
  v149 = objc_opt_new();
  v148 = objc_opt_new();
  v155 = plistCopy;
  if (!plistCopy)
  {
    sub_2958AC86C(v171);
LABEL_53:
    v92 = 0;
    v84 = 0;
    v145 = 0;
    v144 = 0;
    v100 = 0;
    v13 = 0;
    v143 = v171[0];
    goto LABEL_38;
  }

  if (objc_msgSend_count(v6, v8, v9, v10) != 2)
  {
    sub_2958ABF34(v171);
    goto LABEL_53;
  }

  v13 = 0;
  v14 = 0;
  v161 = 0;
  v162 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 1;
  v147 = v6;
  do
  {
    v159 = v15;
    v160 = v14;
    v19 = v18;
    v158 = objc_msgSend_objectAtIndexedSubscript_(v6, v11, v17, v12);
    v22 = objc_msgSend_objectForKeyedSubscript_(v155, v20, v158, v21);
    if (!v22)
    {
      sub_2958AC7E4(v171);
      v143 = v171[0];
      goto LABEL_50;
    }

    v157 = v16;
    v23 = v7;
    v24 = objc_opt_new();

    v27 = objc_msgSend_objectForKeyedSubscript_(v22, v25, @"AddBackModulation", v26);
    BandData_into = objc_msgSend_readBandData_into_(self, v28, v27, v24);

    if (BandData_into)
    {
      sub_2958ABFBC(BandData_into, v171);
      v143 = v171[0];
      v13 = v24;
      goto LABEL_33;
    }

    v156 = v19;
    objc_msgSend_addObject_(obj, v30, v24, v31);
    v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    v164[0] = @"SL_EV0_LONG";
    v164[1] = @"SL_EV0";
    v33 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v32, v164, 2);
    v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v166, v165, 16);
    if (v35)
    {
      v36 = v35;
      v37 = *v167;
      v13 = v24;
      while (2)
      {
        v38 = 0;
        v39 = v13;
        do
        {
          if (*v167 != v37)
          {
            objc_enumerationMutation(v33);
          }

          v40 = *(*(&v166 + 1) + 8 * v38);
          v13 = objc_opt_new();

          v43 = objc_msgSend_objectForKeyedSubscript_(v22, v41, @"ChromaBoost", v42);
          ChromaBoostBandData_into_key = objc_msgSend_readChromaBoostBandData_into_key_(self, v44, v43, v13, v40);

          if (ChromaBoostBandData_into_key)
          {
            sub_2958AC04C(ChromaBoostBandData_into_key, v33, v171);
            goto LABEL_32;
          }

          objc_msgSend_addObject_(v163, v46, v13, v47);
          ++v38;
          v39 = v13;
        }

        while (v36 != v38);
        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v48, &v166, v165, 16);
        if (v36)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v13 = v24;
    }

    v49 = objc_opt_new();
    v52 = objc_msgSend_objectForKeyedSubscript_(v22, v50, @"Desaturation", v51);
    DesaturationData_into = objc_msgSend_readDesaturationData_into_(self, v53, v52, v49);

    if (DesaturationData_into)
    {
      sub_2958AC0E4(DesaturationData_into, v49, v171);
LABEL_32:
      v143 = v171[0];
      v6 = v147;
LABEL_33:
      v144 = v162;
      goto LABEL_34;
    }

    objc_msgSend_addObject_(v153, v55, v49, v56);
    v57 = objc_opt_new();

    v60 = objc_msgSend_objectForKeyedSubscript_(v22, v58, @"NoiseTuning", v59);
    Plist = objc_msgSend_readPlist_(v57, v61, v60, v62);

    v160 = v57;
    objc_msgSend_addObject_(v152, v64, v57, v65);
    v6 = v147;
    if (Plist)
    {
      sub_2958AC17C(Plist, v49, v171);
LABEL_47:
      v143 = v171[0];
      goto LABEL_33;
    }

    v66 = objc_opt_new();

    if (!v66)
    {
      sub_2958AC73C(v49, v171);
      v144 = 0;
      v143 = v171[0];
LABEL_34:
      v145 = v161;
LABEL_35:
      v16 = v157;
      goto LABEL_36;
    }

    v69 = objc_msgSend_objectForKeyedSubscript_(v22, v67, @"Fusion", v68);
    v72 = objc_msgSend_readPlist_(v66, v70, v69, v71);

    v162 = v66;
    objc_msgSend_addObject_(v151, v73, v66, v74);
    if (v72)
    {
      sub_2958AC214(v72, v49, v171);
      goto LABEL_47;
    }

    v75 = objc_opt_new();

    if (!v75)
    {
      sub_2958AC694(v49, v171);
      v145 = 0;
      v143 = v171[0];
      v144 = v162;
      goto LABEL_35;
    }

    v78 = objc_msgSend_objectForKeyedSubscript_(v22, v76, @"HighlightTuning", v77);
    v81 = objc_msgSend_readPlist_(v75, v79, v78, v80);

    v161 = v75;
    objc_msgSend_addObject_(v150, v82, v75, v83);
    if (v81)
    {
      sub_2958AC2AC(v81, v49, v171);
      goto LABEL_47;
    }

    v84 = objc_opt_new();

    v87 = objc_msgSend_objectForKeyedSubscript_(v22, v85, @"HaloSuppression", v86);
    HaloSuppressionBandData_into = objc_msgSend_readHaloSuppressionBandData_into_(self, v88, v87, v84);

    if (HaloSuppressionBandData_into)
    {
      sub_2958AC344(HaloSuppressionBandData_into, v49, v171);
      v143 = v171[0];
      v159 = v84;
      goto LABEL_33;
    }

    objc_msgSend_addObject_(v149, v90, v84, v91);
    v92 = objc_opt_new();

    v95 = objc_msgSend_objectForKeyedSubscript_(v22, v93, @"DarkEdgeSuppression", v94);
    DarkEdgeSuppressionBandData_into = objc_msgSend_readDarkEdgeSuppressionBandData_into_(self, v96, v95, v92);

    if (DarkEdgeSuppressionBandData_into)
    {
      sub_2958AC3DC(DarkEdgeSuppressionBandData_into, v49, v171);
      v143 = v171[0];
      v16 = v92;
      v159 = v84;
LABEL_50:
      v145 = v161;
      v144 = v162;
LABEL_36:

      v92 = v16;
      v84 = v159;
LABEL_37:
      v100 = v160;
      goto LABEL_38;
    }

    objc_msgSend_addObject_(v148, v98, v92, v99);

    v18 = 0;
    v100 = v160;
    v14 = v160;
    v15 = v84;
    v16 = v92;
    v17 = 1;
    v7 = v23;
  }

  while ((v156 & 1) != 0);
  objc_storeStrong(&self->addBackModulationBands, obj);
  objc_storeStrong(&self->noiseTuning, v152);
  objc_storeStrong(&self->fusionData, v151);
  objc_storeStrong(&self->highlightTuning, v150);
  objc_storeStrong(&self->chromaBoostMaskBands, v163);
  objc_storeStrong(&self->desaturationData, v153);
  objc_storeStrong(&self->haloSuppressionBands, v149);
  objc_storeStrong(&self->darkEdgeSupressionBands, v148);
  v103 = objc_msgSend_objectForKeyedSubscript_(v155, v101, @"ModelSwitchEITThreshold", v102);

  if (v103)
  {
    v106 = objc_msgSend_objectForKeyedSubscript_(v155, v104, @"ModelSwitchEITThreshold", v105);
    objc_msgSend_floatValue(v106, v107, v108, v109);
    self->modelSwitchEITThreshold = v110;

    v113 = objc_msgSend_objectForKeyedSubscript_(v155, v111, @"DenseRegistrationMotionScoreThreshold", v112);

    if (v113)
    {
      v116 = objc_msgSend_objectForKeyedSubscript_(v155, v114, @"DenseRegistrationMotionScoreThreshold", v115);
      objc_msgSend_floatValue(v116, v117, v118, v119);
      self->denseRegistrationMotionScoreThreshold = v120;

      v121 = [GainValueArray alloc];
      v124 = objc_msgSend_objectForKeyedSubscript_(v155, v122, @"EV0BlurThreshold", v123);
      v127 = objc_msgSend_initWithArray_(v121, v125, v124, v126);
      EV0BlurThreshold = self->EV0BlurThreshold;
      self->EV0BlurThreshold = v127;

      if (objc_msgSend_isValid(self->EV0BlurThreshold, v129, v130, v131))
      {
        v132 = [GainValueArray alloc];
        v135 = objc_msgSend_objectForKeyedSubscript_(v155, v133, @"FilteredChromaAlpha", v134);
        v138 = objc_msgSend_initWithArray_(v132, v136, v135, v137);
        filteredChromaAlpha = self->filteredChromaAlpha;
        self->filteredChromaAlpha = v138;

        if (objc_msgSend_isValid(self->filteredChromaAlpha, v140, v141, v142))
        {
          v143 = 0;
LABEL_30:
          v145 = v161;
          v144 = v162;
          goto LABEL_37;
        }

        sub_2958AC4FC(v171);
      }

      else
      {
        sub_2958AC474(v171);
      }
    }

    else
    {
      sub_2958AC584(v171);
    }

    v143 = v171[0];
    goto LABEL_30;
  }

  sub_2958AC60C(v171);
  v143 = v171[0];
  v145 = v161;
  v144 = v162;
LABEL_38:

  return v143;
}

@end