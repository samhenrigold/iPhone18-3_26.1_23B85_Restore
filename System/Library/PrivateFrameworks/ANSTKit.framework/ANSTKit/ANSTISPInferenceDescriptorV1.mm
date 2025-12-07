@interface ANSTISPInferenceDescriptorV1
+ (BOOL)_getInputDescriptors:(id *)descriptors outputDescriptors:(id *)outputDescriptors forConfiguration:(id)configuration withError:(id *)error;
+ (id)_assetURLForConfiguration:(id)configuration withError:(id *)error;
- (ANSTISPInferenceDescriptorV1)initWithCoder:(id)coder;
- (ANSTISPInferenceDescriptorV1)initWithConfiguration:(id)configuration error:(id *)error;
- (ANSTISPInferenceDescriptorV1)initWithName:(id)name version:(unint64_t)version assetURL:(id)l assetType:(int64_t)type e5FunctionName:(id)functionName inputDescriptors:(id)descriptors outputDescriptors:(id)outputDescriptors configuration:(id)self0 error:(id *)self1;
- (ANSTTensorDescriptor)outputBoxRegressionDescriptor;
- (ANSTTensorDescriptor)outputCenternessDescriptor;
- (ANSTTensorDescriptor)outputFaceAttributesDescriptor;
- (ANSTTensorDescriptor)outputFaceLandmarkDescriptor;
- (ANSTTensorDescriptor)outputFacePoseDescriptor;
- (ANSTTensorDescriptor)outputHairMapDescriptor;
- (ANSTTensorDescriptor)outputHandAssociationDescriptor;
- (ANSTTensorDescriptor)outputHandBoxRegressionDescriptor;
- (ANSTTensorDescriptor)outputHandCenternessDescriptor;
- (ANSTTensorDescriptor)outputHandLogitsDescriptor;
- (ANSTTensorDescriptor)outputHandPoseDescriptor;
- (ANSTTensorDescriptor)outputLogitsDescriptor;
- (ANSTTensorDescriptor)outputPersonMapDescriptor;
- (ANSTTensorDescriptor)outputPriorMaskMapDescriptor;
- (ANSTTensorDescriptor)outputSaliencyDescriptor;
- (ANSTTensorDescriptor)outputSalientFaceBoxRegressionDescriptor;
- (ANSTTensorDescriptor)outputSalientFaceCenternessDescriptor;
- (ANSTTensorDescriptor)outputSalientFaceLogitsDescriptor;
- (ANSTTensorDescriptor)outputSalientPersonMapDescriptor;
- (ANSTTensorDescriptor)outputSemanticMapDescriptor;
- (ANSTTensorDescriptor)outputSkinMapDescriptor;
- (ANSTTensorDescriptor)outputSkinToneDescriptor;
- (ANSTTensorDescriptor)outputSkyMapDescriptor;
- (ANSTTensorDescriptor)outputSmudgeConfidenceDescriptor;
- (ANSTTensorDescriptor)outputSubjectIDMapDescriptor;
- (id)newPostprocessorWithError:(id *)error;
@end

@implementation ANSTISPInferenceDescriptorV1

- (ANSTISPInferenceDescriptorV1)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = ANSTISPInferenceDescriptorV1;
  return [(ANSTISPInferenceDescriptor *)&v4 initWithCoder:coder];
}

- (ANSTISPInferenceDescriptorV1)initWithName:(id)name version:(unint64_t)version assetURL:(id)l assetType:(int64_t)type e5FunctionName:(id)functionName inputDescriptors:(id)descriptors outputDescriptors:(id)outputDescriptors configuration:(id)self0 error:(id *)self1
{
  nameCopy = name;
  lCopy = l;
  functionNameCopy = functionName;
  descriptorsCopy = descriptors;
  outputDescriptorsCopy = outputDescriptors;
  configurationCopy = configuration;
  result = objc_msgSend_doesNotRecognizeSelector_(self, v22, a2);
  __break(1u);
  return result;
}

- (ANSTISPInferenceDescriptorV1)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  if (objc_msgSend_useE5(configurationCopy, v7, v8))
  {
    v11 = @"main";
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_msgSend_copy(configurationCopy, v9, v10);

  v13 = objc_opt_class();
  v15 = objc_msgSend__nameForConfiguration_withError_(v13, v14, v12, error);
  if (!v15)
  {
    selfCopy = 0;
    v18 = 0;
LABEL_10:
    v22 = 0;
    v25 = 0;
    goto LABEL_12;
  }

  v16 = objc_opt_class();
  v18 = objc_msgSend__assetURLForConfiguration_withError_(v16, v17, v12, error);
  if (!v18)
  {
    selfCopy = 0;
    goto LABEL_10;
  }

  v19 = objc_opt_class();
  v30 = 0;
  v31 = 0;
  InputDescriptors_outputDescriptors_forConfiguration_withError = objc_msgSend__getInputDescriptors_outputDescriptors_forConfiguration_withError_(v19, v20, &v31, &v30, v12, error);
  v22 = v31;
  v25 = v30;
  if (InputDescriptors_outputDescriptors_forConfiguration_withError)
  {
    v26 = objc_msgSend_version(v12, v23, v24);
    v29.receiver = self;
    v29.super_class = ANSTISPInferenceDescriptorV1;
    self = [(ANSTISPInferenceDescriptor *)&v29 initWithName:v15 version:v26 assetURL:v18 assetType:2 e5FunctionName:v11 inputDescriptors:v22 outputDescriptors:v25 configuration:v12 error:error];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

LABEL_12:

  return selfCopy;
}

+ (id)_assetURLForConfiguration:(id)configuration withError:(id *)error
{
  v39[2] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v8 = objc_msgSend_bundleForClass_(MEMORY[0x277CCA8D8], v7, self);
  v10 = objc_msgSend_URLForResource_withExtension_subdirectory_(v8, v9, @"anst", @"mlmodelc", @"Models");

  if (v10)
  {
    if (objc_msgSend_useE5(configurationCopy, v11, v12))
    {
      objc_msgSend_URLByAppendingPathComponent_(v10, v13, @"v2_4.espresso.net");
    }

    else
    {
      objc_msgSend_URLByAppendingPathComponent_(v10, v13, @"model.espresso.net");
    }
    v14 = ;
    v16 = v14;
    if (v14)
    {
      v16 = v14;
      error = v16;
    }

    else
    {
      if (error)
      {
        v26 = MEMORY[0x277CCA9B8];
        v27 = *MEMORY[0x277CCA050];
        v28 = *MEMORY[0x277CCA760];
        v36[0] = *MEMORY[0x277CCA068];
        v36[1] = v28;
        v37[0] = @"Unable to retrieve the asset URL.";
        v37[1] = v10;
        v36[2] = *MEMORY[0x277CCA170];
        v29 = objc_msgSend_stringByAppendingPathExtension_(@"anst", v15, @"mlmodelc");
        v31 = objc_msgSend_stringByAppendingPathComponent_(@"Models", v30, v29);
        v37[2] = v31;
        v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v32, v37, v36, 3);
        *error = objc_msgSend_errorWithDomain_code_userInfo_(v26, v34, v27, 4, v33);
      }

      error = 0;
    }
  }

  else
  {
    if (!error)
    {
      goto LABEL_13;
    }

    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA050];
    v19 = *MEMORY[0x277CCA068];
    v39[0] = @"Unable to retrieve the base URL for the asset.";
    v20 = *MEMORY[0x277CCA170];
    v38[0] = v19;
    v38[1] = v20;
    v16 = objc_msgSend_stringByAppendingPathExtension_(@"anst", v11, @"mlmodelc");
    v22 = objc_msgSend_stringByAppendingPathComponent_(@"Models", v21, v16);
    v39[1] = v22;
    v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, v39, v38, 2);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v17, v25, v18, 4, v24);

    error = 0;
  }

LABEL_13:

  return error;
}

+ (BOOL)_getInputDescriptors:(id *)descriptors outputDescriptors:(id *)outputDescriptors forConfiguration:(id)configuration withError:(id *)error
{
  v332 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v12 = configurationCopy;
  if (!(descriptors | outputDescriptors))
  {
    LOBYTE(error) = 1;
    goto LABEL_12;
  }

  objc_msgSend_useE5(configurationCopy, v10, v11);
  v296 = 0;
  bzero(v294, 0xE88uLL);
  bzero(v331, 0x32EA0uLL);
  v293 = 0;
  memset(v292, 0, sizeof(v292));
  AcANSTCreate(&v296, &v293, v292, v331);
  if (!v13)
  {
    v13 = AcANSTGetParams(v296, v331, v292, v294);
    if (!v13)
    {
      v23 = objc_alloc(MEMORY[0x277CBEB18]);
      v24 = 25;
      v18 = objc_msgSend_initWithCapacity_(v23, v25, 25);
      v27 = &v295;
      do
      {
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27);
        objc_msgSend_addObject_(v18, v29, v28);

        v27 += 8;
        --v24;
      }

      while (v24);
      if (v296)
      {
        AcANSTDestroy(v296);
      }

      if (descriptors)
      {
        v30 = [ANSTPixelBufferDescriptor alloc];
        v327 = *MEMORY[0x277CC4DE8];
        v328 = MEMORY[0x277CBEC10];
        v32 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v31, &v328, &v327, 1);
        v20 = objc_msgSend_initWithName_width_height_pixelFormatType_pixelBufferAttributes_error_(v30, v33, @"input_image", 512, 384, 1111970369, v32, error);

        if (!v20)
        {
          goto LABEL_10;
        }

        v34 = [ANSTTensorDescriptor alloc];
        if (objc_msgSend_useE5(v12, v35, v36))
        {
          v39 = 104;
        }

        else
        {
          v39 = 102;
        }

        v326[0] = xmmword_22E661C58;
        v326[1] = unk_22E661C68;
        if (objc_msgSend_useE5(v12, v37, v38))
        {
          v41 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v34, v40, @"last_mask", v39, 4, v326, 64, error);
        }

        else
        {
          v41 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v34, v40, @"last_mask", v39, 4, v326, 1, error);
        }

        if (!v41)
        {
LABEL_9:

LABEL_10:
          LOBYTE(error) = 0;
LABEL_11:

          goto LABEL_12;
        }

        v42 = v41;
        v43 = [ANSTTensorDescriptor alloc];
        if (objc_msgSend_useE5(v12, v44, v45))
        {
          v48 = 104;
        }

        else
        {
          v48 = 102;
        }

        v325[0] = xmmword_22E661C58;
        v325[1] = unk_22E661C68;
        if (objc_msgSend_useE5(v12, v46, v47))
        {
          v50 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v43, v49, @"last_salient_mask", v48, 4, v325, 64, error);
        }

        else
        {
          v50 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v43, v49, @"last_salient_mask", v48, 4, v325, 1, error);
        }

        if (!v50)
        {

          goto LABEL_9;
        }

        v52 = v50;
        v324[0] = v20;
        v324[1] = v42;
        v324[2] = v50;
        *descriptors = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v51, v324, 3);
      }

      if (outputDescriptors)
      {
        v53 = [ANSTTensorDescriptor alloc];
        if (objc_msgSend_useE5(v12, v54, v55))
        {
          v58 = 104;
        }

        else
        {
          v58 = 102;
        }

        v323[0] = xmmword_22E661AD8;
        v323[1] = unk_22E661AE8;
        if (objc_msgSend_useE5(v12, v56, v57))
        {
          v60 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v53, v59, @"logits@output", v58, 4, v323, 64, error);
        }

        else
        {
          v60 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v53, v59, @"logits@output", v58, 4, v323, 1, error);
        }

        if (!v60)
        {
          goto LABEL_10;
        }

        v61 = v60;
        v62 = [ANSTTensorDescriptor alloc];
        if (objc_msgSend_useE5(v12, v63, v64))
        {
          v67 = 104;
        }

        else
        {
          v67 = 102;
        }

        v322[0] = xmmword_22E661C38;
        v322[1] = unk_22E661C48;
        if (objc_msgSend_useE5(v12, v65, v66))
        {
          v69 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v62, v68, @"centerness@output", v67, 4, v322, 64, error);
        }

        else
        {
          v69 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v62, v68, @"centerness@output", v67, 4, v322, 1, error);
        }

        if (v69)
        {
          v70 = v69;
          v71 = [ANSTTensorDescriptor alloc];
          if (objc_msgSend_useE5(v12, v72, v73))
          {
            v76 = 104;
          }

          else
          {
            v76 = 102;
          }

          v321[0] = xmmword_22E661BB8;
          v321[1] = unk_22E661BC8;
          if (objc_msgSend_useE5(v12, v74, v75))
          {
            v78 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v71, v77, @"bbox_reg@output", v76, 4, v321, 64, error);
          }

          else
          {
            v78 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v71, v77, @"bbox_reg@output", v76, 4, v321, 1, error);
          }

          if (v78)
          {
            v79 = v78;
            v80 = [ANSTTensorDescriptor alloc];
            if (objc_msgSend_useE5(v12, v81, v82))
            {
              v85 = 104;
            }

            else
            {
              v85 = 102;
            }

            v320[0] = xmmword_22E661B18;
            v320[1] = unk_22E661B28;
            if (objc_msgSend_useE5(v12, v83, v84))
            {
              v87 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v80, v86, @"face_pose@output", v85, 4, v320, 64, error);
            }

            else
            {
              v87 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v80, v86, @"face_pose@output", v85, 4, v320, 1, error);
            }

            if (v87)
            {
              v88 = v87;
              v89 = [ANSTTensorDescriptor alloc];
              if (objc_msgSend_useE5(v12, v90, v91))
              {
                v94 = 104;
              }

              else
              {
                v94 = 102;
              }

              v319[0] = xmmword_22E661AF8;
              v319[1] = unk_22E661B08;
              if (objc_msgSend_useE5(v12, v92, v93))
              {
                v96 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v89, v95, @"face_attributes@output", v94, 4, v319, 64, error);
              }

              else
              {
                v96 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v89, v95, @"face_attributes@output", v94, 4, v319, 1, error);
              }

              if (v96)
              {
                v286 = v96;
                v97 = [ANSTTensorDescriptor alloc];
                if (objc_msgSend_useE5(v12, v98, v99))
                {
                  v102 = 104;
                }

                else
                {
                  v102 = 102;
                }

                v318[0] = xmmword_22E661B18;
                v318[1] = unk_22E661B28;
                if (objc_msgSend_useE5(v12, v100, v101))
                {
                  v104 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v97, v103, @"face_skintone@output", v102, 4, v318, 64, error);
                }

                else
                {
                  v104 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v97, v103, @"face_skintone@output", v102, 4, v318, 1, error);
                }

                if (v104)
                {
                  v288 = v104;
                  v105 = [ANSTTensorDescriptor alloc];
                  if (objc_msgSend_useE5(v12, v106, v107))
                  {
                    v110 = 104;
                  }

                  else
                  {
                    v110 = 102;
                  }

                  v317[0] = xmmword_22E661B38;
                  v317[1] = unk_22E661B48;
                  if (objc_msgSend_useE5(v12, v108, v109))
                  {
                    v112 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v105, v111, @"id_map@output", v110, 4, v317, 64, error);
                  }

                  else
                  {
                    v112 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v105, v111, @"id_map@output", v110, 4, v317, 1, error);
                  }

                  if (v112)
                  {
                    v287 = v112;
                    v113 = [ANSTTensorDescriptor alloc];
                    if (objc_msgSend_useE5(v12, v114, v115))
                    {
                      v118 = 104;
                    }

                    else
                    {
                      v118 = 102;
                    }

                    v316[0] = xmmword_22E661C38;
                    v316[1] = unk_22E661C48;
                    if (objc_msgSend_useE5(v12, v116, v117))
                    {
                      v120 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v113, v119, @"hand_logits@output", v118, 4, v316, 64, error);
                    }

                    else
                    {
                      v120 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v113, v119, @"hand_logits@output", v118, 4, v316, 1, error);
                    }

                    if (v120)
                    {
                      v285 = v120;
                      v121 = [ANSTTensorDescriptor alloc];
                      if (objc_msgSend_useE5(v12, v122, v123))
                      {
                        v126 = 104;
                      }

                      else
                      {
                        v126 = 102;
                      }

                      v315[0] = xmmword_22E661C38;
                      v315[1] = unk_22E661C48;
                      if (objc_msgSend_useE5(v12, v124, v125))
                      {
                        v128 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v121, v127, @"hand_ctrness@output", v126, 4, v315, 64, error);
                      }

                      else
                      {
                        v128 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v121, v127, @"hand_ctrness@output", v126, 4, v315, 1, error);
                      }

                      if (v128)
                      {
                        v284 = v128;
                        v129 = [ANSTTensorDescriptor alloc];
                        if (objc_msgSend_useE5(v12, v130, v131))
                        {
                          v134 = 104;
                        }

                        else
                        {
                          v134 = 102;
                        }

                        v314[0] = xmmword_22E661BB8;
                        v314[1] = unk_22E661BC8;
                        if (objc_msgSend_useE5(v12, v132, v133))
                        {
                          v136 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v129, v135, @"hand_bbox_reg@output", v134, 4, v314, 64, error);
                        }

                        else
                        {
                          v136 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v129, v135, @"hand_bbox_reg@output", v134, 4, v314, 1, error);
                        }

                        if (v136)
                        {
                          v283 = v136;
                          v137 = [ANSTTensorDescriptor alloc];
                          if (objc_msgSend_useE5(v12, v138, v139))
                          {
                            v142 = 104;
                          }

                          else
                          {
                            v142 = 102;
                          }

                          v313[0] = xmmword_22E661C38;
                          v313[1] = unk_22E661C48;
                          if (objc_msgSend_useE5(v12, v140, v141))
                          {
                            v144 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v137, v143, @"hand_pose@output", v142, 4, v313, 64, error);
                          }

                          else
                          {
                            v144 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v137, v143, @"hand_pose@output", v142, 4, v313, 1, error);
                          }

                          if (v144)
                          {
                            v282 = v144;
                            v145 = [ANSTTensorDescriptor alloc];
                            if (objc_msgSend_useE5(v12, v146, v147))
                            {
                              v150 = 104;
                            }

                            else
                            {
                              v150 = 102;
                            }

                            v312[0] = xmmword_22E661B58;
                            v312[1] = unk_22E661B68;
                            if (objc_msgSend_useE5(v12, v148, v149))
                            {
                              v152 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v145, v151, @"sf_cls_logits@output", v150, 4, v312, 64, error);
                            }

                            else
                            {
                              v152 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v145, v151, @"sf_cls_logits@output", v150, 4, v312, 1, error);
                            }

                            v281 = v152;
                            if (v152)
                            {
                              v153 = [ANSTTensorDescriptor alloc];
                              if (objc_msgSend_useE5(v12, v154, v155))
                              {
                                v158 = 104;
                              }

                              else
                              {
                                v158 = 102;
                              }

                              v311[0] = xmmword_22E661B58;
                              v311[1] = unk_22E661B68;
                              if (objc_msgSend_useE5(v12, v156, v157))
                              {
                                v160 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v153, v159, @"sf_ctrness@output", v158, 4, v311, 64, error);
                              }

                              else
                              {
                                v160 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v153, v159, @"sf_ctrness@output", v158, 4, v311, 1, error);
                              }

                              v280 = v160;
                              if (v160)
                              {
                                v161 = [ANSTTensorDescriptor alloc];
                                if (objc_msgSend_useE5(v12, v162, v163))
                                {
                                  v166 = 104;
                                }

                                else
                                {
                                  v166 = 102;
                                }

                                v310[0] = xmmword_22E661B78;
                                v310[1] = unk_22E661B88;
                                if (objc_msgSend_useE5(v12, v164, v165))
                                {
                                  v168 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v161, v167, @"sf_bbox_reg@output", v166, 4, v310, 64, error);
                                }

                                else
                                {
                                  v168 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v161, v167, @"sf_bbox_reg@output", v166, 4, v310, 1, error);
                                }

                                v279 = v168;
                                if (v168)
                                {
                                  v169 = [ANSTTensorDescriptor alloc];
                                  if (objc_msgSend_useE5(v12, v170, v171))
                                  {
                                    v174 = 104;
                                  }

                                  else
                                  {
                                    v174 = 102;
                                  }

                                  v309[0] = xmmword_22E661B98;
                                  v309[1] = unk_22E661BA8;
                                  if (objc_msgSend_useE5(v12, v172, v173))
                                  {
                                    v176 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v169, v175, @"face_landmark@output", v174, 4, v309, 64, error);
                                  }

                                  else
                                  {
                                    v176 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v169, v175, @"face_landmark@output", v174, 4, v309, 1, error);
                                  }

                                  v278 = v176;
                                  if (v176)
                                  {
                                    v177 = [ANSTTensorDescriptor alloc];
                                    if (objc_msgSend_useE5(v12, v178, v179))
                                    {
                                      v182 = 104;
                                    }

                                    else
                                    {
                                      v182 = 102;
                                    }

                                    v308[0] = xmmword_22E661BB8;
                                    v308[1] = unk_22E661BC8;
                                    if (objc_msgSend_useE5(v12, v180, v181))
                                    {
                                      v184 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v177, v183, @"hand_associations@output", v182, 4, v308, 64, error);
                                    }

                                    else
                                    {
                                      v184 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v177, v183, @"hand_associations@output", v182, 4, v308, 1, error);
                                    }

                                    v290 = v184;
                                    if (v184)
                                    {
                                      v185 = [ANSTTensorDescriptor alloc];
                                      if (objc_msgSend_useE5(v12, v186, v187))
                                      {
                                        v190 = 104;
                                      }

                                      else
                                      {
                                        v190 = 102;
                                      }

                                      v307[0] = xmmword_22E661BD8;
                                      v307[1] = unk_22E661BE8;
                                      if (objc_msgSend_useE5(v12, v188, v189))
                                      {
                                        v192 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v185, v191, @"smudge_predict@output", v190, 4, v307, 64, error);
                                      }

                                      else
                                      {
                                        v192 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v185, v191, @"smudge_predict@output", v190, 4, v307, 1, error);
                                      }

                                      v289 = v192;
                                      if (v192)
                                      {
                                        v193 = [ANSTTensorDescriptor alloc];
                                        if (objc_msgSend_useE5(v12, v194, v195))
                                        {
                                          v198 = 104;
                                        }

                                        else
                                        {
                                          v198 = 102;
                                        }

                                        v306[0] = xmmword_22E661C58;
                                        v306[1] = unk_22E661C68;
                                        if (objc_msgSend_useE5(v12, v196, v197))
                                        {
                                          v200 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v193, v199, @"prior_mask@output", v198, 4, v306, 64, error);
                                        }

                                        else
                                        {
                                          v200 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v193, v199, @"prior_mask@output", v198, 4, v306, 1, error);
                                        }

                                        v277 = v200;
                                        if (v200)
                                        {
                                          v201 = [ANSTTensorDescriptor alloc];
                                          if (objc_msgSend_useE5(v12, v202, v203))
                                          {
                                            v206 = 104;
                                          }

                                          else
                                          {
                                            v206 = 102;
                                          }

                                          v305[0] = xmmword_22E661BF8;
                                          v305[1] = unk_22E661C08;
                                          if (objc_msgSend_useE5(v12, v204, v205))
                                          {
                                            v208 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v201, v207, @"person@output", v206, 4, v305, 64, error);
                                          }

                                          else
                                          {
                                            v208 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v201, v207, @"person@output", v206, 4, v305, 1, error);
                                          }

                                          v274 = v208;
                                          if (v208)
                                          {
                                            v209 = [ANSTTensorDescriptor alloc];
                                            if (objc_msgSend_useE5(v12, v210, v211))
                                            {
                                              v214 = 104;
                                            }

                                            else
                                            {
                                              v214 = 102;
                                            }

                                            v304[0] = xmmword_22E661BF8;
                                            v304[1] = unk_22E661C08;
                                            if (objc_msgSend_useE5(v12, v212, v213))
                                            {
                                              v216 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v209, v215, @"salient_person@output", v214, 4, v304, 64, error);
                                            }

                                            else
                                            {
                                              v216 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v209, v215, @"salient_person@output", v214, 4, v304, 1, error);
                                            }

                                            v273 = v216;
                                            if (v216)
                                            {
                                              v217 = [ANSTTensorDescriptor alloc];
                                              if (objc_msgSend_useE5(v12, v218, v219))
                                              {
                                                v222 = 104;
                                              }

                                              else
                                              {
                                                v222 = 102;
                                              }

                                              v303[0] = xmmword_22E661BF8;
                                              v303[1] = unk_22E661C08;
                                              if (objc_msgSend_useE5(v12, v220, v221))
                                              {
                                                v224 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v217, v223, @"skin@output", v222, 4, v303, 64, error);
                                              }

                                              else
                                              {
                                                v224 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v217, v223, @"skin@output", v222, 4, v303, 1, error);
                                              }

                                              v272 = v224;
                                              if (v224)
                                              {
                                                v225 = [ANSTTensorDescriptor alloc];
                                                if (objc_msgSend_useE5(v12, v226, v227))
                                                {
                                                  v230 = 104;
                                                }

                                                else
                                                {
                                                  v230 = 102;
                                                }

                                                v302[0] = xmmword_22E661BF8;
                                                v302[1] = unk_22E661C08;
                                                if (objc_msgSend_useE5(v12, v228, v229))
                                                {
                                                  v232 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v225, v231, @"hair@output", v230, 4, v302, 64, error);
                                                }

                                                else
                                                {
                                                  v232 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v225, v231, @"hair@output", v230, 4, v302, 1, error);
                                                }

                                                v271 = v232;
                                                if (v232)
                                                {
                                                  v233 = [ANSTTensorDescriptor alloc];
                                                  if (objc_msgSend_useE5(v12, v234, v235))
                                                  {
                                                    v238 = 104;
                                                  }

                                                  else
                                                  {
                                                    v238 = 102;
                                                  }

                                                  v301[0] = xmmword_22E661BF8;
                                                  v301[1] = unk_22E661C08;
                                                  if (objc_msgSend_useE5(v12, v236, v237))
                                                  {
                                                    v240 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v233, v239, @"sky@output", v238, 4, v301, 64, error);
                                                  }

                                                  else
                                                  {
                                                    v240 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v233, v239, @"sky@output", v238, 4, v301, 1, error);
                                                  }

                                                  v276 = v240;
                                                  if (v240)
                                                  {
                                                    v241 = [ANSTTensorDescriptor alloc];
                                                    if (objc_msgSend_useE5(v12, v242, v243))
                                                    {
                                                      v246 = 104;
                                                    }

                                                    else
                                                    {
                                                      v246 = 102;
                                                    }

                                                    v300[0] = xmmword_22E661C18;
                                                    v300[1] = unk_22E661C28;
                                                    if (objc_msgSend_useE5(v12, v244, v245))
                                                    {
                                                      v248 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v241, v247, @"viseg@output", v246, 4, v300, 64, error);
                                                    }

                                                    else
                                                    {
                                                      v248 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v241, v247, @"viseg@output", v246, 4, v300, 1, error);
                                                    }

                                                    v275 = v248;
                                                    if (v248)
                                                    {
                                                      v249 = [ANSTTensorDescriptor alloc];
                                                      if (objc_msgSend_useE5(v12, v250, v251))
                                                      {
                                                        v254 = 104;
                                                      }

                                                      else
                                                      {
                                                        v254 = 102;
                                                      }

                                                      v299[0] = xmmword_22E661C38;
                                                      v299[1] = unk_22E661C48;
                                                      if (objc_msgSend_useE5(v12, v252, v253))
                                                      {
                                                        v256 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v249, v255, @"saliency@output", v254, 4, v299, 64, error);
                                                      }

                                                      else
                                                      {
                                                        v256 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v249, v255, @"saliency@output", v254, 4, v299, 1, error);
                                                      }

                                                      v291 = v256;
                                                      if (v256)
                                                      {
                                                        v257 = [ANSTTensorDescriptor alloc];
                                                        if (objc_msgSend_useE5(v12, v258, v259))
                                                        {
                                                          v262 = 104;
                                                        }

                                                        else
                                                        {
                                                          v262 = 102;
                                                        }

                                                        v298[0] = xmmword_22E661C58;
                                                        v298[1] = unk_22E661C68;
                                                        if (objc_msgSend_useE5(v12, v260, v261))
                                                        {
                                                          v264 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v257, v263, @"salient_person_prior_mask@output", v262, 4, v298, 64, error);
                                                        }

                                                        else
                                                        {
                                                          v264 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v257, v263, @"salient_person_prior_mask@output", v262, 4, v298, 1, error);
                                                        }

                                                        v266 = v264;
                                                        v267 = v264 != 0;
                                                        if (v264)
                                                        {
                                                          v297[0] = v61;
                                                          v297[1] = v70;
                                                          v297[2] = v79;
                                                          v297[3] = v88;
                                                          v297[4] = v286;
                                                          v297[5] = v288;
                                                          v297[6] = v287;
                                                          v297[7] = v285;
                                                          v297[8] = v284;
                                                          v297[9] = v283;
                                                          v297[10] = v282;
                                                          v297[11] = v281;
                                                          v297[12] = v280;
                                                          v297[13] = v279;
                                                          v297[14] = v278;
                                                          v297[15] = v290;
                                                          v297[16] = v289;
                                                          v297[17] = v277;
                                                          v297[18] = v274;
                                                          v297[19] = v273;
                                                          v297[20] = v272;
                                                          v297[21] = v271;
                                                          v297[22] = v276;
                                                          v297[23] = v275;
                                                          v297[24] = v291;
                                                          v297[25] = v264;
                                                          *outputDescriptors = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v265, v297, 26);
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v267 = 0;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v267 = 0;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v267 = 0;
                                                  }
                                                }

                                                else
                                                {
                                                  v267 = 0;
                                                }
                                              }

                                              else
                                              {
                                                v267 = 0;
                                              }
                                            }

                                            else
                                            {
                                              v267 = 0;
                                            }
                                          }

                                          else
                                          {
                                            v267 = 0;
                                          }
                                        }

                                        else
                                        {
                                          v267 = 0;
                                        }
                                      }

                                      else
                                      {
                                        v267 = 0;
                                      }
                                    }

                                    else
                                    {
                                      v267 = 0;
                                    }
                                  }

                                  else
                                  {
                                    v267 = 0;
                                  }
                                }

                                else
                                {
                                  v267 = 0;
                                }
                              }

                              else
                              {
                                v267 = 0;
                              }
                            }

                            else
                            {
                              v267 = 0;
                            }

                            v268 = v286;
                            v269 = v287;
                            v270 = v288;

                            v144 = v282;
                          }

                          else
                          {
                            v267 = 0;
                            v268 = v286;
                            v269 = v287;
                            v270 = v288;
                          }

                          if (!v267)
                          {
                            goto LABEL_10;
                          }

                          goto LABEL_259;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_10;
      }

LABEL_259:
      LOBYTE(error) = 1;
      goto LABEL_11;
    }
  }

  v15 = v13;
  if (v296)
  {
    AcANSTDestroy(v296);
  }

  if (error)
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA068];
    v330[0] = @"Unable to get underlying network metadata.";
    v329[0] = v17;
    v329[1] = @"AcReturn";
    v18 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v14, v15);
    v330[1] = v18;
    v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v330, v329, 2);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v16, v21, @"ANSTErrorDomain", 3, v20);
    goto LABEL_9;
  }

LABEL_12:

  return error;
}

- (id)newPostprocessorWithError:(id *)error
{
  v5 = [_ANSTISPInferencePostprocessorV1 alloc];

  return objc_msgSend_initWithInferenceDescriptor_error_(v5, v6, self, error);
}

- (ANSTTensorDescriptor)outputLogitsDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 0);

  return v5;
}

- (ANSTTensorDescriptor)outputCenternessDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 1);

  return v5;
}

- (ANSTTensorDescriptor)outputBoxRegressionDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 2);

  return v5;
}

- (ANSTTensorDescriptor)outputFacePoseDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 3);

  return v5;
}

- (ANSTTensorDescriptor)outputFaceAttributesDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 4);

  return v5;
}

- (ANSTTensorDescriptor)outputSkinToneDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 5);

  return v5;
}

- (ANSTTensorDescriptor)outputSubjectIDMapDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 6);

  return v5;
}

- (ANSTTensorDescriptor)outputHandLogitsDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 7);

  return v5;
}

- (ANSTTensorDescriptor)outputHandCenternessDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 8);

  return v5;
}

- (ANSTTensorDescriptor)outputHandBoxRegressionDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 9);

  return v5;
}

- (ANSTTensorDescriptor)outputHandPoseDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 10);

  return v5;
}

- (ANSTTensorDescriptor)outputSalientFaceLogitsDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 11);

  return v5;
}

- (ANSTTensorDescriptor)outputSalientFaceCenternessDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 12);

  return v5;
}

- (ANSTTensorDescriptor)outputSalientFaceBoxRegressionDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 13);

  return v5;
}

- (ANSTTensorDescriptor)outputFaceLandmarkDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 14);

  return v5;
}

- (ANSTTensorDescriptor)outputHandAssociationDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 15);

  return v5;
}

- (ANSTTensorDescriptor)outputSmudgeConfidenceDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 16);

  return v5;
}

- (ANSTTensorDescriptor)outputPriorMaskMapDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 17);

  return v5;
}

- (ANSTTensorDescriptor)outputPersonMapDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 18);

  return v5;
}

- (ANSTTensorDescriptor)outputSalientPersonMapDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 19);

  return v5;
}

- (ANSTTensorDescriptor)outputSkinMapDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 20);

  return v5;
}

- (ANSTTensorDescriptor)outputHairMapDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 21);

  return v5;
}

- (ANSTTensorDescriptor)outputSkyMapDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 22);

  return v5;
}

- (ANSTTensorDescriptor)outputSemanticMapDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 23);

  return v5;
}

- (ANSTTensorDescriptor)outputSaliencyDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 24);

  return v5;
}

@end