@interface ANSTISPInferenceDescriptorV3
- (ANSTISPInferenceDescriptorV3)initWithCoder:(id)coder;
- (ANSTISPInferenceDescriptorV3)initWithConfiguration:(id)configuration error:(id *)error;
- (id)newPostprocessorWithError:(id *)error;
@end

@implementation ANSTISPInferenceDescriptorV3

- (ANSTISPInferenceDescriptorV3)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = ANSTISPInferenceDescriptorV3;
  return [(ANSTISPInferenceDescriptor *)&v4 initWithCoder:coder];
}

- (ANSTISPInferenceDescriptorV3)initWithConfiguration:(id)configuration error:(id *)error
{
  v93[2] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v90 = configurationCopy;
  if ((objc_msgSend_isSkinToneEnabled(configurationCopy, v5, v6) & 1) != 0 || (objc_msgSend_isBodyKeypointsEnabled(configurationCopy, v7, v8) & 1) != 0 || objc_msgSend_isDepthEnabled(configurationCopy, v7, v9))
  {
    v10 = @"full";
    v82 = 1;
  }

  else
  {
    v82 = 0;
    v10 = @"regular";
  }

  v87 = v10;
  v86 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"anst_v3.5_%@", v10);
  v85 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v11, @"/AppleInternal/Library/Application Support/com.apple.ANSTKit/anst_v3.mlmodelc");
  v84 = objc_msgSend_URLByAppendingPathComponent_(v85, v12, @"model.bundle");
  v14 = objc_msgSend_descriptorWithName_width_height_pixelFormatType_(ANSTPixelBufferDescriptor, v13, @"images_tensor", 512, 384, 1111970369);
  v93[0] = v14;
  v16 = objc_msgSend_descriptorWithName_dataType_n_c_h_w_(ANSTTensorDescriptor, v15, @"memory", 104, 1, 2, 96, 128);
  v93[1] = v16;
  v83 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v17, v93, 2);

  v76 = MEMORY[0x277CBEB18];
  v81 = objc_msgSend_descriptorWithName_dataType_n_c_h_w_(ANSTTensorDescriptor, v18, @"logits_output", 104, 1, 12, 48, 64);
  v92[0] = v81;
  v80 = objc_msgSend_descriptorWithName_dataType_n_c_h_w_(ANSTTensorDescriptor, v19, @"centerness_output", 104, 1, 1, 48, 64);
  v92[1] = v80;
  v79 = objc_msgSend_descriptorWithName_dataType_n_c_h_w_(ANSTTensorDescriptor, v20, @"bbox_reg_output", 104, 1, 4, 48, 64);
  v92[2] = v79;
  v78 = objc_msgSend_descriptorWithName_dataType_n_c_h_w_(ANSTTensorDescriptor, v21, @"face_pose_output", 104, 1, 3, 48, 64);
  v92[3] = v78;
  v77 = objc_msgSend_descriptorWithName_dataType_n_c_h_w_(ANSTTensorDescriptor, v22, @"face_attributes_output", 104, 1, 2, 48, 64);
  v92[4] = v77;
  v75 = objc_msgSend_descriptorWithName_dataType_n_c_h_w_(ANSTTensorDescriptor, v23, @"id_map_output", 104, 1, 64, 48, 64);
  v92[5] = v75;
  v74 = objc_msgSend_descriptorWithName_dataType_n_c_h_w_(ANSTTensorDescriptor, v24, @"hand_logits_output", 104, 1, 1, 48, 64);
  v92[6] = v74;
  v73 = objc_msgSend_descriptorWithName_dataType_n_c_h_w_(ANSTTensorDescriptor, v25, @"hand_ctrness_output", 104, 1, 1, 48, 64);
  v92[7] = v73;
  v72 = objc_msgSend_descriptorWithName_dataType_n_c_h_w_(ANSTTensorDescriptor, v26, @"hand_bbox_reg_output", 104, 1, 4, 48, 64);
  v92[8] = v72;
  v71 = objc_msgSend_descriptorWithName_dataType_n_c_h_w_(ANSTTensorDescriptor, v27, @"hand_pose_output", 104, 1, 1, 48, 64);
  v92[9] = v71;
  v70 = objc_msgSend_descriptorWithName_dataType_n_c_h_w_(ANSTTensorDescriptor, v28, @"face_landmark_output", 104, 1, 98, 12, 64);
  v92[10] = v70;
  v69 = objc_msgSend_descriptorWithName_dataType_n_c_h_w_(ANSTTensorDescriptor, v29, @"hand_associations_output", 104, 1, 4, 48, 64);
  v92[11] = v69;
  v68 = objc_msgSend_descriptorWithName_dataType_n_c_h_w_(ANSTTensorDescriptor, v30, @"smudge_predict_output", 104, 1, 1, 1, 1);
  v92[12] = v68;
  v67 = objc_msgSend_descriptorWithName_dataType_n_c_h_w_(ANSTTensorDescriptor, v31, @"avg_feat_output", 104, 1, 1, 1, 1);
  v92[13] = v67;
  v66 = objc_msgSend_descriptorWithName_dataType_n_c_h_w_(ANSTTensorDescriptor, v32, @"prior_mask_output", 104, 1, 2, 96, 128);
  v92[14] = v66;
  v65 = objc_msgSend_descriptorWithName_dataType_n_c_h_w_(ANSTTensorDescriptor, v33, @"salient_head_output", 104, 1, 1, 80, 127);
  v92[15] = v65;
  v35 = objc_msgSend_descriptorWithName_width_height_pixelFormatType_(ANSTPixelBufferDescriptor, v34, @"person_output", 256, 192, 1278226488);
  v92[16] = v35;
  v37 = objc_msgSend_descriptorWithName_width_height_pixelFormatType_(ANSTPixelBufferDescriptor, v36, @"salient_person_output", 127, 80, 1278226488);
  v92[17] = v37;
  v39 = objc_msgSend_descriptorWithName_width_height_pixelFormatType_(ANSTPixelBufferDescriptor, v38, @"skin_output", 256, 192, 1278226488);
  v92[18] = v39;
  v41 = objc_msgSend_descriptorWithName_width_height_pixelFormatType_(ANSTPixelBufferDescriptor, v40, @"hair_output", 256, 192, 1278226488);
  v92[19] = v41;
  v43 = objc_msgSend_descriptorWithName_width_height_pixelFormatType_(ANSTPixelBufferDescriptor, v42, @"sky_output", 256, 192, 1278226488);
  v92[20] = v43;
  v45 = objc_msgSend_descriptorWithName_dataType_n_c_h_w_(ANSTTensorDescriptor, v44, @"viseg_output", 104, 1, 2, 192, 256);
  v92[21] = v45;
  v47 = objc_msgSend_descriptorWithName_dataType_n_c_h_w_(ANSTTensorDescriptor, v46, @"saliency_output", 104, 1, 1, 56, 76);
  v92[22] = v47;
  v49 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v48, v92, 23);
  v51 = objc_msgSend_arrayWithArray_(v76, v50, v49);

  if (v82)
  {
    v54 = objc_msgSend_descriptorWithName_dataType_n_c_h_w_(ANSTTensorDescriptor, v52, @"face_skintone_output", 104, 1, 1, 48, 64);
    objc_msgSend_addObject_(v51, v55, v54);

    v57 = objc_msgSend_descriptorWithName_dataType_n_c_h_w_(ANSTTensorDescriptor, v56, @"keypoints_output", 104, 1, 17, 48, 64);
    objc_msgSend_addObject_(v51, v58, v57);

    v60 = objc_msgSend_descriptorWithName_dataType_n_c_h_w_(ANSTTensorDescriptor, v59, @"depth_output", 104, 1, 1, 192, 256);
    objc_msgSend_addObject_(v51, v61, v60);
  }

  v62 = objc_msgSend_version(v90, v52, v53);
  v91.receiver = self;
  v91.super_class = ANSTISPInferenceDescriptorV3;
  v63 = [(ANSTISPInferenceDescriptor *)&v91 initWithName:v86 version:v62 assetURL:v84 assetType:0 e5FunctionName:v87 inputDescriptors:v83 outputDescriptors:v51 configuration:v90 error:error];

  return v63;
}

- (id)newPostprocessorWithError:(id *)error
{
  v5 = [ANSTISPInferencePostprocessorV3 alloc];

  return objc_msgSend_initWithInferenceDescriptor_error_(v5, v6, self, error);
}

@end