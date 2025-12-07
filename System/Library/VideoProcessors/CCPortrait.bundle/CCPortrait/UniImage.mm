@interface UniImage
+ (UniImage)imageWithCIImage:(id)image;
+ (UniImage)imageWithMTLTexture:(id)texture;
+ (UniImage)imageWithObject:(id)object;
+ (id)_cleanupParameterDescription:(id)description;
+ (id)_objectsForNames:(id)names forKernel:(id)kernel;
+ (id)_orderedInputNamesForKernel:(id)kernel inputImageSet:(id)set outputImageSet:(id)imageSet showNonImageParams:(BOOL)params;
+ (id)_stringForObject:(id)object objectToStringMap:(id)map;
+ (id)_textureDescriptionForDot:(id)dot;
+ (void)metalRenderImageArray:(id)array queue:(id)queue waitUntilScheduled:(BOOL)scheduled waitUntilCompleted:(BOOL)completed;
- (CGRect)extent;
- (UniImage)initWithCIImage:(id)image;
- (UniImage)initWithKernel:(id)kernel;
- (UniImage)initWithMTLTexture:(id)texture;
- (UniImage)initWithObject:(id)object;
- (id)coreImageRender:(id)render;
- (id)coreImageRender:(id)render subRect:(CGRect)rect outputTexture:(id)texture;
- (id)debugQuickLookObject;
- (id)description;
- (void)metalRender;
- (void)metalRender:(id)render waitUntilScheduled:(BOOL)scheduled waitUntilCompleted:(BOOL)completed;
@end

@implementation UniImage

- (UniImage)initWithKernel:(id)kernel
{
  kernelCopy = kernel;
  v12.receiver = self;
  v12.super_class = UniImage;
  v6 = [(UniImage *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->kernel, kernel);
    image = v7->image;
    v7->image = 0;

    texture = v7->texture;
    v7->texture = 0;

    buffer = v7->buffer;
    v7->buffer = 0;
  }

  return v7;
}

- (UniImage)initWithCIImage:(id)image
{
  imageCopy = image;
  if (imageCopy)
  {
    v13.receiver = self;
    v13.super_class = UniImage;
    v6 = [(UniImage *)&v13 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->image, image);
      texture = v7->texture;
      v7->texture = 0;

      kernel = v7->kernel;
      v7->kernel = 0;

      buffer = v7->buffer;
      v7->buffer = 0;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (UniImage)imageWithCIImage:(id)image
{
  if (image)
  {
    imageCopy = image;
    v4 = objc_alloc(objc_opt_class());
    v6 = objc_msgSend_initWithCIImage_(v4, v5, imageCopy);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (UniImage)initWithMTLTexture:(id)texture
{
  textureCopy = texture;
  v14.receiver = self;
  v14.super_class = UniImage;
  v6 = [(UniImage *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->texture, texture);
    v9 = objc_msgSend_imageWithMTLTexture_options_(MEMORY[0x29EDB9178], v8, v7->texture, MEMORY[0x29EDB8EA0]);
    image = v7->image;
    v7->image = v9;

    kernel = v7->kernel;
    v7->kernel = 0;

    buffer = v7->buffer;
    v7->buffer = 0;
  }

  return v7;
}

+ (UniImage)imageWithMTLTexture:(id)texture
{
  textureCopy = texture;
  v4 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_initWithMTLTexture_(v4, v5, textureCopy);

  return v6;
}

- (UniImage)initWithObject:(id)object
{
  objectCopy = object;
  v6 = objectCopy;
  if (!objectCopy)
  {
    goto LABEL_10;
  }

  if (!objc_msgSend_conformsToProtocol_(objectCopy, v5, &unk_2A1CA0A70))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = objc_msgSend_initWithCIImage_(self, v9, v6);
      goto LABEL_6;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v6;
      goto LABEL_7;
    }

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v8 = objc_msgSend_initWithMTLTexture_(self, v7, v6);
LABEL_6:
  v10 = v8;
  self = v10;
LABEL_7:
  v11 = v10;
LABEL_11:

  return v11;
}

+ (UniImage)imageWithObject:(id)object
{
  objectCopy = object;
  v4 = [UniImage alloc];
  v6 = objc_msgSend_initWithObject_(v4, v5, objectCopy);

  return v6;
}

- (CGRect)extent
{
  v4 = objc_msgSend_image(self, a2, v2);

  if (v4)
  {
    objc_msgSend_extent(self->image, v5, v6);
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v15 = objc_msgSend_texture(self, v5, v6);

    if (v15)
    {
      v18 = objc_msgSend_texture(self, v16, v17);
      v20 = objc_msgSend__mtlTextureForImage_(UniKernel, v19, v18);

      if (v20 && objc_msgSend_conformsToProtocol_(v20, v21, &unk_2A1CA0A70))
      {
        v12 = objc_msgSend_width(v20, v22, v23);
        v14 = objc_msgSend_height(v20, v24, v25);
        v8 = 0.0;
        v10 = 0.0;
      }

      else
      {
        v8 = *MEMORY[0x29EDB90E0];
        v10 = *(MEMORY[0x29EDB90E0] + 8);
        v12 = *(MEMORY[0x29EDB90E0] + 16);
        v14 = *(MEMORY[0x29EDB90E0] + 24);
      }
    }

    else
    {
      v8 = *MEMORY[0x29EDB90E0];
      v10 = *(MEMORY[0x29EDB90E0] + 8);
      v12 = *(MEMORY[0x29EDB90E0] + 16);
      v14 = *(MEMORY[0x29EDB90E0] + 24);
    }
  }

  v26 = v8;
  v27 = v10;
  v28 = v12;
  v29 = v14;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA050];
  v4 = objc_opt_class();
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"<%@: %p", v4, self);
  v9 = objc_msgSend_texture(self, v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_texture(self, v10, v11);
    v14 = objc_msgSend_conformsToProtocol_(v12, v13, &unk_2A1CA0A70);

    v17 = objc_msgSend_texture(self, v15, v16);
    v20 = v17;
    if (v14)
    {
      shortTextureDescription(v17);
    }

    else
    {
      objc_msgSend_description(v17, v18, v19);
    }
    v21 = ;
    objc_msgSend_appendString_(v6, v22, v21);
  }

  v23 = objc_msgSend_image(self, v10, v11);

  if (v23)
  {
    v26 = MEMORY[0x29EDBA0F8];
    v27 = objc_msgSend_image(self, v24, v25);
    v29 = objc_msgSend_stringWithFormat_(v26, v28, @" image = %@", v27);
    objc_msgSend_appendString_(v6, v30, v29);
  }

  v31 = objc_msgSend_buffer(self, v24, v25);

  if (v31)
  {
    v34 = MEMORY[0x29EDBA0F8];
    v35 = objc_msgSend_buffer(self, v32, v33);
    v37 = objc_msgSend_stringWithFormat_(v34, v36, @" buffer = %@", v35);
    objc_msgSend_appendString_(v6, v38, v37);
  }

  v39 = objc_msgSend_kernel(self, v32, v33);

  if (v39)
  {
    v42 = MEMORY[0x29EDBA0F8];
    v43 = objc_msgSend_kernel(self, v40, v41);
    v45 = objc_msgSend_stringWithFormat_(v42, v44, @" kernel = %@", v43);
    objc_msgSend_appendString_(v6, v46, v45);
  }

  objc_msgSend_appendString_(v6, v40, @">");

  return v6;
}

- (id)debugQuickLookObject
{
  v4 = objc_msgSend_image(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_image(self, v5, v6);
    if (!v7)
    {
LABEL_12:
      v16 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v8 = objc_msgSend_texture(self, v5, v6);

    if (!v8)
    {
      goto LABEL_12;
    }

    v11 = MEMORY[0x29EDB9178];
    v12 = objc_msgSend_texture(self, v9, v10);
    v7 = objc_msgSend_imageWithMTLTexture_options_(v11, v13, v12, 0);

    if (!v7)
    {
      goto LABEL_12;
    }
  }

  v14 = NSSelectorFromString(&cfstr_Initwithciimag.isa);
  v15 = NSClassFromString(&cfstr_Nsbitmapimager.isa);
  if (!v15)
  {
    v15 = NSClassFromString(&cfstr_Uiimage.isa);
  }

  v16 = 0;
  if (v15 && v14)
  {
    v17 = [v15 alloc];
    v16 = objc_msgSend_performSelector_withObject_(v17, v18, v14, v7);
  }

LABEL_13:

  return v16;
}

+ (void)metalRenderImageArray:(id)array queue:(id)queue waitUntilScheduled:(BOOL)scheduled waitUntilCompleted:(BOOL)completed
{
  completedCopy = completed;
  scheduledCopy = scheduled;
  arrayCopy = array;
  queueCopy = queue;
  v578 = objc_msgSend_set(MEMORY[0x29EDB8E20], v9, v10);
  v574 = objc_msgSend_array(MEMORY[0x29EDB8DE8], v11, v12);
  v15 = objc_msgSend_set(MEMORY[0x29EDB8E20], v13, v14);
  v18 = objc_msgSend_weakObjectsPointerArray(MEMORY[0x29EDBA0A0], v16, v17);
  v21 = objc_msgSend_lastObject(arrayCopy, v19, v20);
  v24 = objc_msgSend_kernel(v21, v22, v23);

  v572 = v24;
  v27 = objc_msgSend_getRenderOrder(v24, v25, v26);
  v590 = 0u;
  v591 = 0u;
  v592 = 0u;
  v593 = 0u;
  v28 = arrayCopy;
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v590, v589, 16);
  if (v30)
  {
    v31 = v30;
    v32 = *v591;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v591 != v32)
        {
          objc_enumerationMutation(v28);
        }

        sub_2956B918C(*(*(&v590 + 1) + 8 * i), v15, v18);
      }

      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v34, &v590, v589, 16);
    }

    while (v31);
  }

  v35 = v27;
  if (v35 && (v36 = objc_msgSend_pointerAtIndex_(v35, v37, 0)) != 0)
  {
    v39 = objc_msgSend_pointerAtIndex_(v35, v38, 0);
    v42 = objc_msgSend_device(v39, v40, v41);
    v45 = v42;
    if (!queueCopy)
    {
      queueCopy = objc_msgSend_newCommandQueue(v42, v43, v44);
    }

    v569 = v45;
    objc_opt_class();
    objc_opt_class();
    v46 = MEMORY[0x29EDB8E20];
    v49 = objc_msgSend_count(v35, v47, v48);
    v575 = objc_msgSend_setWithCapacity_(v46, v50, v49);
    v583 = 0u;
    v584 = 0u;
    v585 = 0u;
    v586 = 0u;
    v570 = v35;
    obj = v35;
    v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v51, &v583, v582, 16);
    if (v52)
    {
      v53 = v52;
      v54 = 0;
      v579 = *v584;
      v573 = queueCopy;
      do
      {
        v55 = 0;
        do
        {
          if (*v584 != v579)
          {
            objc_enumerationMutation(obj);
          }

          v56 = *(*(&v583 + 1) + 8 * v55);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            sub_2956CE0C0();
          }

          v57 = v56;
          if (!v57)
          {
            goto LABEL_103;
          }

          v58 = objc_opt_class();
          if (v58 == objc_opt_class())
          {
            v75 = objc_msgSend_mk(v57, v59, v60);

            if (v75)
            {
              v78 = objc_msgSend_mk(v57, v76, v77);
              v65 = objc_msgSend_label(v78, v79, v80);

              v83 = objc_msgSend_length(@"run kernel: modify_blurmap_apply", v81, v82);
              v85 = objc_msgSend_substringWithRange_(@"run kernel: modify_blurmap_apply", v84, 12, v83 - 12);
              isEqualToString = objc_msgSend_isEqualToString_(v65, v86, v85);

              v91 = "run kernel: modify_blurmap_apply";
              if ((isEqualToString & 1) != 0
                || (v92 = objc_msgSend_length(@"run kernel: modify_blurmap_glasses_apply", v89, v90), objc_msgSend_substringWithRange_(@"run kernel: modify_blurmap_glasses_apply", v93, 12, v92 - 12), v94 = objc_claimAutoreleasedReturnValue(), v96 = objc_msgSend_isEqualToString_(v65, v95, v94), v94, v91 = "run kernel: modify_blurmap_glasses_apply", (v96 & 1) != 0)
                || (v99 = objc_msgSend_length(@"run kernel: threshold_hard_apply", v97, v98), objc_msgSend_substringWithRange_(@"run kernel: threshold_hard_apply", v100, 12, v99 - 12), v101 = objc_claimAutoreleasedReturnValue(), v103 = objc_msgSend_isEqualToString_(v65, v102, v101), v101, v91 = "run kernel: threshold_hard_apply", (v103 & 1) != 0)
                || (v106 = objc_msgSend_length(@"run kernel: map_linear_apply", v104, v105), objc_msgSend_substringWithRange_(@"run kernel: map_linear_apply", v107, 12, v106 - 12), v108 = objc_claimAutoreleasedReturnValue(), v110 = objc_msgSend_isEqualToString_(v65, v109, v108), v108, v91 = "run kernel: map_linear_apply", (v110 & 1) != 0)
                || (v113 = objc_msgSend_length(@"run kernel: map_linear_no_secondary_tex_apply", v111, v112), objc_msgSend_substringWithRange_(@"run kernel: map_linear_no_secondary_tex_apply", v114, 12, v113 - 12), v115 = objc_claimAutoreleasedReturnValue(), v117 = objc_msgSend_isEqualToString_(v65, v116, v115), v115, v91 = "run kernel: map_linear_no_secondary_tex_apply", (v117 & 1) != 0)
                || (v120 = objc_msgSend_length(@"run kernel: disparity_refinement_bicubic_upscale", v118, v119), objc_msgSend_substringWithRange_(@"run kernel: disparity_refinement_bicubic_upscale", v121, 12, v120 - 12), v122 = objc_claimAutoreleasedReturnValue(), v124 = objc_msgSend_isEqualToString_(v65, v123, v122), v122, v91 = "run kernel: disparity_refinement_bicubic_upscale", (v124 & 1) != 0)
                || (v127 = objc_msgSend_length(@"run kernel: disparity_refinement_slm_passthrough", v125, v126), objc_msgSend_substringWithRange_(@"run kernel: disparity_refinement_slm_passthrough", v128, 12, v127 - 12), v129 = objc_claimAutoreleasedReturnValue(), v131 = objc_msgSend_isEqualToString_(v65, v130, v129), v129, v91 = "run kernel: disparity_refinement_slm_passthrough", (v131 & 1) != 0)
                || (v134 = objc_msgSend_length(@"run kernel: disparity_refinement_calcweightsX", v132, v133), objc_msgSend_substringWithRange_(@"run kernel: disparity_refinement_calcweightsX", v135, 12, v134 - 12), v136 = objc_claimAutoreleasedReturnValue(), v138 = objc_msgSend_isEqualToString_(v65, v137, v136), v136, v91 = "run kernel: disparity_refinement_calcweightsX", (v138 & 1) != 0)
                || (v141 = objc_msgSend_length(@"run kernel: disparity_refinement_calcweightsY", v139, v140), objc_msgSend_substringWithRange_(@"run kernel: disparity_refinement_calcweightsY", v142, 12, v141 - 12), v143 = objc_claimAutoreleasedReturnValue(), v145 = objc_msgSend_isEqualToString_(v65, v144, v143), v143, v91 = "run kernel: disparity_refinement_calcweightsY", (v145 & 1) != 0)
                || (v148 = objc_msgSend_length(@"run kernel: disparity_refinement_preproc", v146, v147), objc_msgSend_substringWithRange_(@"run kernel: disparity_refinement_preproc", v149, 12, v148 - 12), v150 = objc_claimAutoreleasedReturnValue(), v152 = objc_msgSend_isEqualToString_(v65, v151, v150), v150, v91 = "run kernel: disparity_refinement_preproc", (v152 & 1) != 0)
                || (v155 = objc_msgSend_length(@"run kernel: disparity_refinement_sample", v153, v154), objc_msgSend_substringWithRange_(@"run kernel: disparity_refinement_sample", v156, 12, v155 - 12), v157 = objc_claimAutoreleasedReturnValue(), v159 = objc_msgSend_isEqualToString_(v65, v158, v157), v157, v91 = "run kernel: disparity_refinement_sample", (v159 & 1) != 0)
                || (v162 = objc_msgSend_length(@"run kernel: disparity_refinement_antialias", v160, v161), objc_msgSend_substringWithRange_(@"run kernel: disparity_refinement_antialias", v163, 12, v162 - 12), v164 = objc_claimAutoreleasedReturnValue(), v166 = objc_msgSend_isEqualToString_(v65, v165, v164), v164, v91 = "run kernel: disparity_refinement_antialias", (v166 & 1) != 0)
                || (v169 = objc_msgSend_length(@"run kernel: facemask_calc", v167, v168), objc_msgSend_substringWithRange_(@"run kernel: facemask_calc", v170, 12, v169 - 12), v171 = objc_claimAutoreleasedReturnValue(), v173 = objc_msgSend_isEqualToString_(v65, v172, v171), v171, v91 = "run kernel: facemask_calc", (v173 & 1) != 0)
                || (v176 = objc_msgSend_length(@"run kernel: facemask_apply", v174, v175), objc_msgSend_substringWithRange_(@"run kernel: facemask_apply", v177, 12, v176 - 12), v178 = objc_claimAutoreleasedReturnValue(), v180 = objc_msgSend_isEqualToString_(v65, v179, v178), v178, v91 = "run kernel: facemask_apply", (v180 & 1) != 0)
                || (v183 = objc_msgSend_length(@"run kernel: fpDisparityRefinementPreprocessing", v181, v182), objc_msgSend_substringWithRange_(@"run kernel: fpDisparityRefinementPreprocessing", v184, 12, v183 - 12), v185 = objc_claimAutoreleasedReturnValue(), v187 = objc_msgSend_isEqualToString_(v65, v186, v185), v185, v91 = "run kernel: fpDisparityRefinementPreprocessing", (v187 & 1) != 0)
                || (v190 = objc_msgSend_length(@"run kernel: fp_slm_calc", v188, v189), objc_msgSend_substringWithRange_(@"run kernel: fp_slm_calc", v191, 12, v190 - 12), v192 = objc_claimAutoreleasedReturnValue(), v194 = objc_msgSend_isEqualToString_(v65, v193, v192), v192, v91 = "run kernel: fp_slm_calc", (v194 & 1) != 0)
                || (v197 = objc_msgSend_length(@"run kernel: fp_slm_calc_eyes", v195, v196), objc_msgSend_substringWithRange_(@"run kernel: fp_slm_calc_eyes", v198, 12, v197 - 12), v199 = objc_claimAutoreleasedReturnValue(), v201 = objc_msgSend_isEqualToString_(v65, v200, v199), v199, v91 = "run kernel: fp_slm_calc_eyes", (v201 & 1) != 0)
                || (v204 = objc_msgSend_length(@"run kernel: segmentation_fusion_apply", v202, v203), objc_msgSend_substringWithRange_(@"run kernel: segmentation_fusion_apply", v205, 12, v204 - 12), v206 = objc_claimAutoreleasedReturnValue(), v208 = objc_msgSend_isEqualToString_(v65, v207, v206), v206, v91 = "run kernel: segmentation_fusion_apply", (v208 & 1) != 0)
                || (v211 = objc_msgSend_length(@"run kernel: slm_shiftmap_calcminmax", v209, v210), objc_msgSend_substringWithRange_(@"run kernel: slm_shiftmap_calcminmax", v212, 12, v211 - 12), v213 = objc_claimAutoreleasedReturnValue(), v215 = objc_msgSend_isEqualToString_(v65, v214, v213), v213, v91 = "run kernel: slm_shiftmap_calcminmax", (v215 & 1) != 0)
                || (v218 = objc_msgSend_length(@"run kernel: slm_calc", v216, v217), objc_msgSend_substringWithRange_(@"run kernel: slm_calc", v219, 12, v218 - 12), v220 = objc_claimAutoreleasedReturnValue(), v222 = objc_msgSend_isEqualToString_(v65, v221, v220), v220, v91 = "run kernel: slm_calc", (v222 & 1) != 0)
                || (v225 = objc_msgSend_length(@"run kernel: slm_calc_eyes", v223, v224), objc_msgSend_substringWithRange_(@"run kernel: slm_calc_eyes", v226, 12, v225 - 12), v227 = objc_claimAutoreleasedReturnValue(), v229 = objc_msgSend_isEqualToString_(v65, v228, v227), v227, v91 = "run kernel: slm_calc_eyes", (v229 & 1) != 0)
                || (v232 = objc_msgSend_length(@"run kernel: eye_protection_face_calc", v230, v231), objc_msgSend_substringWithRange_(@"run kernel: eye_protection_face_calc", v233, 12, v232 - 12), v234 = objc_claimAutoreleasedReturnValue(), v236 = objc_msgSend_isEqualToString_(v65, v235, v234), v234, v91 = "run kernel: eye_protection_face_calc", (v236 & 1) != 0)
                || (v239 = objc_msgSend_length(@"run kernel: eye_protection_glasses_face_calc", v237, v238), objc_msgSend_substringWithRange_(@"run kernel: eye_protection_glasses_face_calc", v240, 12, v239 - 12), v241 = objc_claimAutoreleasedReturnValue(), v243 = objc_msgSend_isEqualToString_(v65, v242, v241), v241, v91 = "run kernel: eye_protection_glasses_face_calc", (v243 & 1) != 0)
                || (v246 = objc_msgSend_length(@"run kernel: crispHair_BlurX", v244, v245), objc_msgSend_substringWithRange_(@"run kernel: crispHair_BlurX", v247, 12, v246 - 12), v248 = objc_claimAutoreleasedReturnValue(), v250 = objc_msgSend_isEqualToString_(v65, v249, v248), v248, v91 = "run kernel: crispHair_BlurX", (v250 & 1) != 0)
                || (v253 = objc_msgSend_length(@"run kernel: crispHair_BlurY", v251, v252), objc_msgSend_substringWithRange_(@"run kernel: crispHair_BlurY", v254, 12, v253 - 12), v255 = objc_claimAutoreleasedReturnValue(), v257 = objc_msgSend_isEqualToString_(v65, v256, v255), v255, v91 = "run kernel: crispHair_BlurY", (v257 & 1) != 0)
                || (v260 = objc_msgSend_length(@"run kernel: crispHair_expandedDispX", v258, v259), objc_msgSend_substringWithRange_(@"run kernel: crispHair_expandedDispX", v261, 12, v260 - 12), v262 = objc_claimAutoreleasedReturnValue(), v264 = objc_msgSend_isEqualToString_(v65, v263, v262), v262, v91 = "run kernel: crispHair_expandedDispX", (v264 & 1) != 0)
                || (v267 = objc_msgSend_length(@"run kernel: crispHair_expandedDispY", v265, v266), objc_msgSend_substringWithRange_(@"run kernel: crispHair_expandedDispY", v268, 12, v267 - 12), v269 = objc_claimAutoreleasedReturnValue(), v271 = objc_msgSend_isEqualToString_(v65, v270, v269), v269, v91 = "run kernel: crispHair_expandedDispY", (v271 & 1) != 0)
                || (v274 = objc_msgSend_length(@"run kernel: crispHairDownsamplingSingle", v272, v273), objc_msgSend_substringWithRange_(@"run kernel: crispHairDownsamplingSingle", v275, 12, v274 - 12), v276 = objc_claimAutoreleasedReturnValue(), v278 = objc_msgSend_isEqualToString_(v65, v277, v276), v276, v91 = "run kernel: crispHairDownsamplingSingle", (v278 & 1) != 0)
                || (v281 = objc_msgSend_length(@"run kernel: blurmap_x_smoothing", v279, v280), objc_msgSend_substringWithRange_(@"run kernel: blurmap_x_smoothing", v282, 12, v281 - 12), v283 = objc_claimAutoreleasedReturnValue(), v285 = objc_msgSend_isEqualToString_(v65, v284, v283), v283, v91 = "run kernel: blurmap_x_smoothing", (v285 & 1) != 0)
                || (v288 = objc_msgSend_length(@"run kernel: blurmap_y_smoothing", v286, v287), objc_msgSend_substringWithRange_(@"run kernel: blurmap_y_smoothing", v289, 12, v288 - 12), v290 = objc_claimAutoreleasedReturnValue(), v292 = objc_msgSend_isEqualToString_(v65, v291, v290), v290, v91 = "run kernel: blurmap_y_smoothing", (v292 & 1) != 0)
                || (v295 = objc_msgSend_length(@"run kernel: blurmap_x_smoothing_scaled", v293, v294), objc_msgSend_substringWithRange_(@"run kernel: blurmap_x_smoothing_scaled", v296, 12, v295 - 12), v297 = objc_claimAutoreleasedReturnValue(), v299 = objc_msgSend_isEqualToString_(v65, v298, v297), v297, v91 = "run kernel: blurmap_x_smoothing_scaled", (v299 & 1) != 0)
                || (v302 = objc_msgSend_length(@"run kernel: blurmap_y_smoothing_scaled", v300, v301), objc_msgSend_substringWithRange_(@"run kernel: blurmap_y_smoothing_scaled", v303, 12, v302 - 12), v304 = objc_claimAutoreleasedReturnValue(), v306 = objc_msgSend_isEqualToString_(v65, v305, v304), v304, v91 = "run kernel: blurmap_y_smoothing_scaled", (v306 & 1) != 0)
                || (v309 = objc_msgSend_length(@"run kernel: blurmap_x_smoothing_unbiased", v307, v308), objc_msgSend_substringWithRange_(@"run kernel: blurmap_x_smoothing_unbiased", v310, 12, v309 - 12), v311 = objc_claimAutoreleasedReturnValue(), v313 = objc_msgSend_isEqualToString_(v65, v312, v311), v311, v91 = "run kernel: blurmap_x_smoothing_unbiased", (v313 & 1) != 0)
                || (v316 = objc_msgSend_length(@"run kernel: blurmap_y_smoothing_unbiased", v314, v315), objc_msgSend_substringWithRange_(@"run kernel: blurmap_y_smoothing_unbiased", v317, 12, v316 - 12), v318 = objc_claimAutoreleasedReturnValue(), v320 = objc_msgSend_isEqualToString_(v65, v319, v318), v318, v91 = "run kernel: blurmap_y_smoothing_unbiased", (v320 & 1) != 0)
                || (v323 = objc_msgSend_length(@"run kernel: blurmap_x_smoothing_scaled_unbiased", v321, v322), objc_msgSend_substringWithRange_(@"run kernel: blurmap_x_smoothing_scaled_unbiased", v324, 12, v323 - 12), v325 = objc_claimAutoreleasedReturnValue(), v327 = objc_msgSend_isEqualToString_(v65, v326, v325), v325, v91 = "run kernel: blurmap_x_smoothing_scaled_unbiased", (v327 & 1) != 0)
                || (v330 = objc_msgSend_length(@"run kernel: blurmap_y_smoothing_scaled_unbiased", v328, v329), objc_msgSend_substringWithRange_(@"run kernel: blurmap_y_smoothing_scaled_unbiased", v331, 12, v330 - 12), v332 = objc_claimAutoreleasedReturnValue(), v334 = objc_msgSend_isEqualToString_(v65, v333, v332), v332, v91 = "run kernel: blurmap_y_smoothing_scaled_unbiased", (v334 & 1) != 0)
                || (v337 = objc_msgSend_length(@"run kernel: sparserendering_preprocess", v335, v336), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_preprocess", v338, 12, v337 - 12), v339 = objc_claimAutoreleasedReturnValue(), v341 = objc_msgSend_isEqualToString_(v65, v340, v339), v339, v91 = "run kernel: sparserendering_preprocess", (v341 & 1) != 0)
                || (v344 = objc_msgSend_length(@"run kernel: sparserendering_preprocess_scaled", v342, v343), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_preprocess_scaled", v345, 12, v344 - 12), v346 = objc_claimAutoreleasedReturnValue(), v348 = objc_msgSend_isEqualToString_(v65, v347, v346), v346, v91 = "run kernel: sparserendering_preprocess_scaled", (v348 & 1) != 0)
                || (v351 = objc_msgSend_length(@"run kernel: sparserendering_prefilter_x", v349, v350), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_prefilter_x", v352, 12, v351 - 12), v353 = objc_claimAutoreleasedReturnValue(), v355 = objc_msgSend_isEqualToString_(v65, v354, v353), v353, v91 = "run kernel: sparserendering_prefilter_x", (v355 & 1) != 0)
                || (v358 = objc_msgSend_length(@"run kernel: sparserendering_prefilter_y", v356, v357), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_prefilter_y", v359, 12, v358 - 12), v360 = objc_claimAutoreleasedReturnValue(), v362 = objc_msgSend_isEqualToString_(v65, v361, v360), v360, v91 = "run kernel: sparserendering_prefilter_y", (v362 & 1) != 0)
                || (v365 = objc_msgSend_length(@"run kernel: sparserendering_sample_withAlpha", v363, v364), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_sample_withAlpha", v366, 12, v365 - 12), v367 = objc_claimAutoreleasedReturnValue(), v369 = objc_msgSend_isEqualToString_(v65, v368, v367), v367, v91 = "run kernel: sparserendering_sample_withAlpha", (v369 & 1) != 0)
                || (v372 = objc_msgSend_length(@"run kernel: sparserendering_sample_noAlpha", v370, v371), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_sample_noAlpha", v373, 12, v372 - 12), v374 = objc_claimAutoreleasedReturnValue(), v376 = objc_msgSend_isEqualToString_(v65, v375, v374), v374, v91 = "run kernel: sparserendering_sample_noAlpha", (v376 & 1) != 0)
                || (v379 = objc_msgSend_length(@"run kernel: sparserendering_antialias_x", v377, v378), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_antialias_x", v380, 12, v379 - 12), v381 = objc_claimAutoreleasedReturnValue(), v383 = objc_msgSend_isEqualToString_(v65, v382, v381), v381, v91 = "run kernel: sparserendering_antialias_x", (v383 & 1) != 0)
                || (v386 = objc_msgSend_length(@"run kernel: sparserendering_antialias_y", v384, v385), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_antialias_y", v387, 12, v386 - 12), v388 = objc_claimAutoreleasedReturnValue(), v390 = objc_msgSend_isEqualToString_(v65, v389, v388), v388, v91 = "run kernel: sparserendering_antialias_y", (v390 & 1) != 0)
                || (v393 = objc_msgSend_length(@"run kernel: sparserendering_yuv_out_1", v391, v392), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_yuv_out_1", v394, 12, v393 - 12), v395 = objc_claimAutoreleasedReturnValue(), v397 = objc_msgSend_isEqualToString_(v65, v396, v395), v395, v91 = "run kernel: sparserendering_yuv_out_1", (v397 & 1) != 0)
                || (v400 = objc_msgSend_length(@"run kernel: sparserendering_yuv_out_2", v398, v399), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_yuv_out_2", v401, 12, v400 - 12), v402 = objc_claimAutoreleasedReturnValue(), v404 = objc_msgSend_isEqualToString_(v65, v403, v402), v402, v91 = "run kernel: sparserendering_yuv_out_2", (v404 & 1) != 0)
                || (v407 = objc_msgSend_length(@"run kernel: sparserendering_extractY", v405, v406), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_extractY", v408, 12, v407 - 12), v409 = objc_claimAutoreleasedReturnValue(), v411 = objc_msgSend_isEqualToString_(v65, v410, v409), v409, v91 = "run kernel: sparserendering_extractY", (v411 & 1) != 0)
                || (v414 = objc_msgSend_length(@"run kernel: sparserendering_sample_noAlpha_ray", v412, v413), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_sample_noAlpha_ray", v415, 12, v414 - 12), v416 = objc_claimAutoreleasedReturnValue(), v418 = objc_msgSend_isEqualToString_(v65, v417, v416), v416, v91 = "run kernel: sparserendering_sample_noAlpha_ray", (v418 & 1) != 0)
                || (v421 = objc_msgSend_length(@"run kernel: sparserendering_add_noise", v419, v420), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_add_noise", v422, 12, v421 - 12), v423 = objc_claimAutoreleasedReturnValue(), v425 = objc_msgSend_isEqualToString_(v65, v424, v423), v423, v91 = "run kernel: sparserendering_add_noise", (v425 & 1) != 0)
                || (v428 = objc_msgSend_length(@"run kernel: sparserendering_blend_raytraced", v426, v427), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_blend_raytraced", v429, 12, v428 - 12), v430 = objc_claimAutoreleasedReturnValue(), v432 = objc_msgSend_isEqualToString_(v65, v431, v430), v430, v91 = "run kernel: sparserendering_blend_raytraced", (v432 & 1) != 0)
                || (v435 = objc_msgSend_length(@"run kernel: disparity_refinement_extract_positive_blur_values", v433, v434), objc_msgSend_substringWithRange_(@"run kernel: disparity_refinement_extract_positive_blur_values", v436, 12, v435 - 12), v437 = objc_claimAutoreleasedReturnValue(), v439 = objc_msgSend_isEqualToString_(v65, v438, v437), v437, v91 = "run kernel: disparity_refinement_extract_positive_blur_values", (v439 & 1) != 0)
                || (v442 = objc_msgSend_length(@"run kernel: disparity_refinement_extract_negative_blur_values", v440, v441), objc_msgSend_substringWithRange_(@"run kernel: disparity_refinement_extract_negative_blur_values", v443, 12, v442 - 12), v444 = objc_claimAutoreleasedReturnValue(), v446 = objc_msgSend_isEqualToString_(v65, v445, v444), v444, v91 = "run kernel: disparity_refinement_extract_negative_blur_values", (v446 & 1) != 0)
                || (v449 = objc_msgSend_length(@"run kernel: sparserendering_antialias_x_4chan", v447, v448), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_antialias_x_4chan", v450, 12, v449 - 12), v451 = objc_claimAutoreleasedReturnValue(), v453 = objc_msgSend_isEqualToString_(v65, v452, v451), v451, v91 = "run kernel: sparserendering_antialias_x_4chan", (v453 & 1) != 0)
                || (v456 = objc_msgSend_length(@"run kernel: sparserendering_antialias_y_4chan", v454, v455), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_antialias_y_4chan", v457, 12, v456 - 12), v458 = objc_claimAutoreleasedReturnValue(), v460 = objc_msgSend_isEqualToString_(v65, v459, v458), v458, v91 = "run kernel: sparserendering_antialias_y_4chan", (v460 & 1) != 0)
                || (v463 = objc_msgSend_length(@"run kernel: sparserendering_add_noise_only", v461, v462), objc_msgSend_substringWithRange_(@"run kernel: sparserendering_add_noise_only", v464, 12, v463 - 12), v465 = objc_claimAutoreleasedReturnValue(), v467 = objc_msgSend_isEqualToString_(v65, v466, v465), v465, v91 = "run kernel: sparserendering_add_noise_only", (v467 & 1) != 0)
                || (v470 = objc_msgSend_length(@"run kernel: median3x3_oneChannel", v468, v469), objc_msgSend_substringWithRange_(@"run kernel: median3x3_oneChannel", v471, 12, v470 - 12), v472 = objc_claimAutoreleasedReturnValue(), v474 = objc_msgSend_isEqualToString_(v65, v473, v472), v472, v91 = "run kernel: median3x3_oneChannel", (v474 & 1) != 0)
                || (v477 = objc_msgSend_length(@"run kernel: median3x3_twoChannel", v475, v476), objc_msgSend_substringWithRange_(@"run kernel: median3x3_twoChannel", v478, 12, v477 - 12), v479 = objc_claimAutoreleasedReturnValue(), v481 = objc_msgSend_isEqualToString_(v65, v480, v479), v479, v91 = "run kernel: median3x3_twoChannel", (v481 & 1) != 0)
                || (v484 = objc_msgSend_length(@"run kernel: sobel_oneChannel", v482, v483), objc_msgSend_substringWithRange_(@"run kernel: sobel_oneChannel", v485, 12, v484 - 12), v486 = objc_claimAutoreleasedReturnValue(), v488 = objc_msgSend_isEqualToString_(v65, v487, v486), v486, v91 = "run kernel: sobel_oneChannel", (v488 & 1) != 0)
                || (v491 = objc_msgSend_length(@"run kernel: sobel_yChannel_Thresholded", v489, v490), objc_msgSend_substringWithRange_(@"run kernel: sobel_yChannel_Thresholded", v492, 12, v491 - 12), v493 = objc_claimAutoreleasedReturnValue(), v495 = objc_msgSend_isEqualToString_(v65, v494, v493), v493, v91 = "run kernel: sobel_yChannel_Thresholded", (v495 & 1) != 0)
                || (v498 = objc_msgSend_length(@"run kernel: blendBackgroundBlur", v496, v497), objc_msgSend_substringWithRange_(@"run kernel: blendBackgroundBlur", v499, 12, v498 - 12), v500 = objc_claimAutoreleasedReturnValue(), v502 = objc_msgSend_isEqualToString_(v65, v501, v500), v500, v91 = "run kernel: blendBackgroundBlur", v502))
              {
                v503 = uni_activity(v88);
                v504 = _os_activity_create(&dword_295691000, v91, v503, OS_ACTIVITY_FLAG_DEFAULT);

                v505 = v57;
                queueCopy = v573;
                goto LABEL_104;
              }

              queueCopy = v573;
LABEL_102:

              goto LABEL_103;
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v63 = objc_msgSend_inputs(v57, v61, v62);
            v65 = objc_msgSend_objectForKeyedSubscript_(v63, v64, @"desiredFormat");

            if (v65)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v68 = objc_msgSend_unsignedIntegerValue(v65, v66, v67);
                v69 = uni_activity(v68);
                v70 = "texture view of misc type";
                if (v68 == 70)
                {
                  v70 = "linear to sRGB texture view";
                }

                if (v68 == 71)
                {
                  v71 = "sRGB to linear texture view";
                }

                else
                {
                  v71 = v70;
                }

                v72 = _os_activity_create(&dword_295691000, v71, v69, OS_ACTIVITY_FLAG_DEFAULT);

                queueCopy = v573;
                goto LABEL_100;
              }
            }

            goto LABEL_102;
          }

          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v72 = uni_activity(isKindOfClass);
            v74 = "run kernel: Gaussian Blur";
LABEL_99:
            v65 = _os_activity_create(&dword_295691000, v74, v72, OS_ACTIVITY_FLAG_DEFAULT);
LABEL_100:

            v505 = v57;
            goto LABEL_104;
          }

          objc_opt_class();
          v506 = objc_opt_isKindOfClass();
          if (v506)
          {
            v72 = uni_activity(v506);
            v74 = "run kernel: Guided Filter";
            goto LABEL_99;
          }

          objc_opt_class();
          v507 = objc_opt_isKindOfClass();
          if (v507)
          {
            v72 = uni_activity(v507);
            v74 = "run kernel: Highlight Recovery";
            goto LABEL_99;
          }

          objc_opt_class();
          v508 = objc_opt_isKindOfClass();
          if (v508)
          {
            v72 = uni_activity(v508);
            v74 = "run kernel: Morphology";
            goto LABEL_99;
          }

LABEL_103:

          v65 = uni_activity(v509);
          v505 = _os_activity_create(&dword_295691000, "kernel run", v65, OS_ACTIVITY_FLAG_DEFAULT);
LABEL_104:

          v511 = uni_logger_render(v510);
          if (os_log_type_enabled(v511, OS_LOG_TYPE_DEBUG))
          {
            sub_2956CE0EC(v587, v54, &v588, v511);
          }

          v513 = objc_msgSend_run_(v57, v512, queueCopy);
          v515 = objc_msgSend_objectAtIndexedSubscript_(v513, v514, 0);
          if (!v515)
          {
            sub_2956CE1B0();
          }

          v516 = v515;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if ((objc_msgSend_conformsToProtocol_(v516, v517, &unk_2A1CA1FD8) & 1) == 0)
            {
              sub_2956CE184();
            }

            objc_msgSend_writeDebugTextures_filesWritten_(v57, v518, v516, v575);
            objc_msgSend_commit(v516, v519, v520);
            if (scheduledCopy)
            {
              objc_msgSend_waitUntilScheduled(v516, v521, v522);
            }

            v523 = objc_msgSend_shouldWriteDebugTextures(UniKernel, v521, v522);
            if (v523)
            {
              v523 = objc_msgSend_waitUntilCompleted(v516, v524, v525);
            }

            v526 = uni_logger_render(v523);
            if (os_log_type_enabled(v526, OS_LOG_TYPE_INFO))
            {
              v528 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v527, @"%@", v57);
              v529 = v528;
              v532 = objc_msgSend_UTF8String(v529, v530, v531);
              *buf = 136315138;
              v581 = v532;
              _os_log_impl(&dword_295691000, v526, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
            }

            if ((objc_msgSend_containsObject_(v578, v533, v516) & 1) == 0)
            {
              objc_msgSend_addObject_(v574, v534, v516);
              objc_msgSend_addObject_(v578, v535, v516);
            }

            ++v54;
          }

          ++v55;
        }

        while (v53 != v55);
        v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v536, &v583, v582, 16);
      }

      while (v53);
    }

    if (completedCopy)
    {
      v539 = objc_msgSend_lastObject(v574, v537, v538);
      objc_msgSend_waitUntilCompleted(v539, v540, v541);
    }

    v542 = objc_msgSend_processInfo(MEMORY[0x29EDBA0B0], v537, v538);
    v545 = objc_msgSend_processName(v542, v543, v544);

    v546 = MEMORY[0x29EDBA0F8];
    v547 = getpid();
    v549 = objc_msgSend_stringWithFormat_(v546, v548, @"_pid%d", v547);
    v551 = v549;
    if (v545)
    {
      v552 = objc_msgSend_stringByAppendingString_(v545, v550, v549);
    }

    else
    {
      v552 = v549;
    }

    v555 = objc_opt_new();
    v558 = objc_msgSend_temporaryDirectory(v555, v556, v557);
    v559 = v558;
    v562 = objc_msgSend_fileSystemRepresentation(v559, v560, v561);

    v563 = MEMORY[0x29EDBA0F8];
    v564 = atomic_load(dword_2A1388980);
    v566 = objc_msgSend_stringWithFormat_(v563, v565, @"/%s/%@_%d.dot", v562, v552, v564);
    atomic_fetch_add_explicit(dword_2A1388980, 1u, memory_order_relaxed);
    v567 = objc_opt_class();
    objc_msgSend__spewDot_filename_(v567, v568, obj, v566);

    v554 = v572;
    v553 = v569;
    v35 = v570;
  }

  else
  {
    v553 = uni_logger_api(v36);
    if (os_log_type_enabled(v553, OS_LOG_TYPE_INFO))
    {
      *v587 = 136446210;
      v588 = "+[UniImage metalRenderImageArray:queue:waitUntilScheduled:waitUntilCompleted:]";
      _os_log_impl(&dword_295691000, v553, OS_LOG_TYPE_INFO, "%{public}s Nothing to do ... ", v587, 0xCu);
    }

    v554 = v572;
  }
}

- (void)metalRender:(id)render waitUntilScheduled:(BOOL)scheduled waitUntilCompleted:(BOOL)completed
{
  completedCopy = completed;
  scheduledCopy = scheduled;
  renderCopy = render;
  v9 = objc_opt_class();
  selfCopy = self;
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v10, &selfCopy, 1);
  objc_msgSend_metalRenderImageArray_queue_waitUntilScheduled_waitUntilCompleted_(v9, v12, v11, renderCopy, scheduledCopy, completedCopy);
}

- (void)metalRender
{
  v3 = objc_opt_class();
  selfCopy = self;
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v4, &selfCopy, 1);
  objc_msgSend_metalRenderImageArray_queue_waitUntilScheduled_waitUntilCompleted_(v3, v6, v5, 0, 1, 1);
}

+ (id)_textureDescriptionForDot:(id)dot
{
  dotCopy = dot;
  if (!dotCopy)
  {
    sub_2956CE208();
  }

  v4 = dotCopy;
  objc_opt_class();
  v7 = v4;
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend_texture(v4, v5, v6);
  }

  v8 = objc_msgSend_pixelFormat(v7, v5, v6);
  v11 = objc_msgSend_device(v7, v9, v10);
  v12 = pixelFormatName(v8, v11);

  if (!v12)
  {
    sub_2956CE1DC();
  }

  v15 = MEMORY[0x29EDBA0F8];
  v16 = objc_msgSend_width(v7, v13, v14);
  v19 = objc_msgSend_height(v7, v17, v18);
  v21 = objc_msgSend_stringWithFormat_(v15, v20, @"%ldx%ld\\n%s", v16, v19, v12);

  return v21;
}

+ (id)_cleanupParameterDescription:(id)description
{
  v3 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(description, a2, @"", &stru_2A1C8D648);
  v5 = objc_msgSend_substringToIndex_(v3, v4, 1);
  isEqualToString = objc_msgSend_isEqualToString_(v5, v6, @"{");

  if (isEqualToString)
  {
    v10 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v3, v8, 0, 1, &stru_2A1C8D648);

    v3 = v10;
  }

  v11 = objc_msgSend_length(v3, v8, v9);
  v13 = objc_msgSend_substringFromIndex_(v3, v12, v11 - 1);
  v15 = objc_msgSend_isEqualToString_(v13, v14, @"}");

  if (v15)
  {
    v18 = objc_msgSend_length(v3, v16, v17);
    v20 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v3, v19, v18 - 1, 1, &stru_2A1C8D648);

    v3 = v20;
  }

  v21 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v3, v16, @"", &stru_2A1C8D648);;

  v24 = objc_msgSend_string(MEMORY[0x29EDBA050], v22, v23);
  v26 = objc_msgSend_componentsSeparatedByString_(v21, v25, @"\n");
  v29 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x29EDB9F50], v27, v28);
  v32 = objc_msgSend_invertedSet(v29, v30, v31);

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v33 = v26;
  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v47, v46, 16);
  if (v35)
  {
    v37 = v35;
    v38 = *v48;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v48 != v38)
        {
          objc_enumerationMutation(v33);
        }

        v40 = *(*(&v47 + 1) + 8 * i);
        v41 = objc_msgSend_rangeOfCharacterFromSet_(v40, v36, v32);
        if (v41 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v42 = objc_msgSend_substringFromIndex_(v40, v36, v41);
          objc_msgSend_appendString_(v24, v43, v42);

          objc_msgSend_appendString_(v24, v44, @"\\l");
        }
      }

      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v36, &v47, v46, 16);
    }

    while (v37);
  }

  return v24;
}

+ (id)_objectsForNames:(id)names forKernel:(id)kernel
{
  namesCopy = names;
  kernelCopy = kernel;
  v7 = MEMORY[0x29EDB8DE8];
  v10 = objc_msgSend_count(namesCopy, v8, v9);
  v12 = objc_msgSend_arrayWithCapacity_(v7, v11, v10);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = namesCopy;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v31, v30, 16);
  if (v15)
  {
    v18 = v15;
    v19 = *v32;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(v13);
        }

        v21 = *(*(&v31 + 1) + 8 * i);
        v22 = objc_msgSend_inputs(kernelCopy, v16, v17);
        v24 = objc_msgSend_objectForKey_(v22, v23, v21);

        if (v24)
        {
          objc_msgSend_conformsToProtocol_(v24, v25, &unk_2A1CA0A70);
          objc_msgSend_addObject_(v12, v26, v24);
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v31, v30, 16);
    }

    while (v18);
  }

  v28 = objc_msgSend_arrayWithArray_(MEMORY[0x29EDB8D80], v27, v12);

  return v28;
}

+ (id)_orderedInputNamesForKernel:(id)kernel inputImageSet:(id)set outputImageSet:(id)imageSet showNonImageParams:(BOOL)params
{
  paramsCopy = params;
  kernelCopy = kernel;
  setCopy = set;
  imageSetCopy = imageSet;
  v11 = MEMORY[0x29EDB8DE8];
  v14 = objc_msgSend_inputs(kernelCopy, v12, v13);
  v17 = objc_msgSend_count(v14, v15, v16);
  v19 = objc_msgSend_arrayWithCapacity_(v11, v18, v17);

  v60 = setCopy;
  v61 = imageSetCopy;
  v81[0] = setCopy;
  v81[1] = imageSetCopy;
  objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v20, v81, 2);
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v80 = 0u;
  v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v77, v76, 16);
  if (v64)
  {
    v63 = *v78;
    do
    {
      v24 = 0;
      do
      {
        if (*v78 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v65 = v24;
        v25 = *(*(&v77 + 1) + 8 * v24);
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v26 = objc_msgSend_inputs(kernelCopy, v22, v23);
        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v72, v71, 16);
        if (v28)
        {
          v31 = v28;
          v32 = *v73;
          do
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v73 != v32)
              {
                objc_enumerationMutation(v26);
              }

              v34 = *(*(&v72 + 1) + 8 * i);
              v35 = objc_msgSend_inputs(kernelCopy, v29, v30);
              v37 = objc_msgSend_objectForKeyedSubscript_(v35, v36, v34);

              if (v37 && objc_msgSend_containsObject_(v25, v38, v37))
              {
                objc_msgSend_addObject_(v19, v39, v34);
              }
            }

            v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v72, v71, 16);
          }

          while (v31);
        }

        v24 = v65 + 1;
      }

      while (v65 + 1 != v64);
      v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v77, v76, 16);
    }

    while (v64);
  }

  if (paramsCopy)
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v42 = objc_msgSend_inputs(kernelCopy, v40, v41);
    v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v67, v66, 16);
    if (v44)
    {
      v47 = v44;
      v48 = *v68;
      do
      {
        for (j = 0; j != v47; ++j)
        {
          if (*v68 != v48)
          {
            objc_enumerationMutation(v42);
          }

          v50 = *(*(&v67 + 1) + 8 * j);
          v51 = objc_msgSend_inputs(kernelCopy, v45, v46);
          v53 = objc_msgSend_objectForKeyedSubscript_(v51, v52, v50);

          if (v53 && (objc_msgSend_containsObject_(v60, v54, v50) & 1) == 0 && (objc_msgSend_containsObject_(v61, v55, v50) & 1) == 0)
          {
            objc_msgSend_addObject_(v19, v56, v50);
          }
        }

        v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v45, &v67, v66, 16);
      }

      while (v47);
    }
  }

  v57 = objc_msgSend_arrayWithArray_(MEMORY[0x29EDB8D80], v40, v19);

  return v57;
}

+ (id)_stringForObject:(id)object objectToStringMap:(id)map
{
  objectCopy = object;
  mapCopy = map;
  if (!mapCopy)
  {
    sub_2956CE234();
  }

  v8 = mapCopy;
  v11 = objc_msgSend_objectForKey_(mapCopy, v7, objectCopy);
  if (!v11)
  {
    v12 = objc_msgSend_count(v8, v9, v10);
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v13, @"%ld", v12);
    objc_msgSend_setObject_forKey_(v8, v14, v11, objectCopy);
  }

  v15 = v11;

  return v15;
}

- (id)coreImageRender:(id)render
{
  renderCopy = render;
  v7 = objc_msgSend_image(self, v5, v6);
  v10 = objc_msgSend_texture(self, v8, v9);
  v13 = objc_msgSend_kernel(self, v11, v12);
  if (!v13)
  {
    sub_2956CE28C();
  }

  v15 = objc_msgSend__mtlTextureForImage_(UniKernel, v14, v10);

  v17 = 0;
  if (renderCopy && v15 && v7)
  {
    v18 = objc_msgSend__outputTextureForTexture_force_(UniKernel, v16, v15, 0);
    if (!v18)
    {
      sub_2956CE260();
    }

    v19 = v18;
    v20 = objc_alloc(MEMORY[0x29EDB9188]);
    v22 = objc_msgSend_initWithMTLTexture_commandBuffer_(v20, v21, v19, 0);
    v24 = v22;
    if (v22)
    {
      objc_msgSend_setColorSpace_(v22, v23, 0);
      objc_msgSend_setClamped_(v24, v25, 0);
      v33 = 0;
      v27 = objc_msgSend_startTaskToRender_toDestination_error_(renderCopy, v26, v7, v24, &v33);
      v28 = v33;
      v32 = v28;
      v17 = objc_msgSend_waitUntilCompletedAndReturnError_(v27, v29, &v32);
      v30 = v32;
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (id)coreImageRender:(id)render subRect:(CGRect)rect outputTexture:(id)texture
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  renderCopy = render;
  textureCopy = texture;
  v15 = objc_msgSend_image(self, v13, v14);
  v18 = objc_msgSend_imageByCroppingToRect_(v15, v16, v17, x, y, width, height);

  v21 = objc_msgSend_kernel(self, v19, v20);
  if (!v21)
  {
    sub_2956CE2E4();
  }

  v23 = 0;
  if (renderCopy && textureCopy && v18)
  {
    v24 = objc_msgSend__outputTextureForTexture_force_(UniKernel, v22, textureCopy, 0);
    if (!v24)
    {
      sub_2956CE2B8();
    }

    v25 = v24;
    v26 = objc_alloc(MEMORY[0x29EDB9188]);
    v28 = objc_msgSend_initWithMTLTexture_commandBuffer_(v26, v27, v25, 0);
    v30 = v28;
    if (v28)
    {
      objc_msgSend_setColorSpace_(v28, v29, 0);
      objc_msgSend_setClamped_(v30, v31, 0);
      objc_msgSend_extent(v18, v32, v33);
      v35 = -v34;
      objc_msgSend_extent(v18, v36, v37);
      CGAffineTransformMakeTranslation(&v49, v35, -v38);
      v40 = objc_msgSend_imageByApplyingTransform_(v18, v39, &v49);

      v48 = 0;
      v42 = objc_msgSend_startTaskToRender_toDestination_error_(renderCopy, v41, v40, v30, &v48);
      v43 = v48;
      v47 = v43;
      v23 = objc_msgSend_waitUntilCompletedAndReturnError_(v42, v44, &v47);
      v45 = v47;

      v18 = v40;
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

@end