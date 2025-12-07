@interface TSCH3DFillTextureCoordinates
+ (id)coordinates;
- (TSCH3DFillTextureCoordinates)init;
- (id)packageForRenderingLightingModel:(id)model;
- (void)addTexcoordsToProcessor:(id)processor renderingLightingModel:(id)model texcoords:(id)texcoords;
@end

@implementation TSCH3DFillTextureCoordinates

+ (id)coordinates
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (TSCH3DFillTextureCoordinates)init
{
  v3.receiver = self;
  v3.super_class = TSCH3DFillTextureCoordinates;
  return [(TSCH3DFillTextureCoordinates *)&v3 init];
}

- (id)packageForRenderingLightingModel:(id)model
{
  modelCopy = model;
  if (!modelCopy)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v5, v6, v7, "[TSCH3DFillTextureCoordinates packageForRenderingLightingModel:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFillTextureCoordinates.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 44, 0, "invalid nil value for '%{public}s'", "renderingLightingModel");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = objc_msgSend_lightingModel(modelCopy, v3, v5, v6, v7);
  v28 = objc_msgSend_materials(v23, v24, v25, v26, v27);

  return v28;
}

- (void)addTexcoordsToProcessor:(id)processor renderingLightingModel:(id)model texcoords:(id)texcoords
{
  processorCopy = processor;
  modelCopy = model;
  selfCopy = self;
  texcoordsCopy = texcoords;
  v84 = objc_msgSend_packageForRenderingLightingModel_(self, v9, v10, v11, v12, modelCopy);
  v89 = objc_msgSend_materialEnumerator(v84, v13, v14, v15, v16);
  v20 = 0.0;
  while (1)
  {
    v21 = objc_msgSend_nextObject(v89, v17, v20, v18, v19);
    v26 = v21;
    if (!v21)
    {
      break;
    }

    v28 = objc_msgSend_textureEnumerator(v21, v22, v23, v24, v25);
    for (i = 0; ; i = 1)
    {
      v34 = objc_msgSend_nextObject(v28, v27, v29, v30, v31);
      if (!v34)
      {
        break;
      }

      v38 = objc_msgSend_pool(TSCH3DTexturePool, v33, v35, v36, v37);
      v42 = v38;
      if (v38)
      {
        objc_msgSend_coordinateConverterForTexture_material_(v38, v39, v40, v41);
      }

      else
      {
        v92[0] = 0;
        v92[1] = 0;
      }

      v90 = xmmword_2764D5ED0;
      if ((sub_2761C3DB8(v92, &v90, 0x3400000034000000) & 1) == 0)
      {
        v47 = MEMORY[0x277D81150];
        v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "[TSCH3DFillTextureCoordinates addTexcoordsToProcessor:renderingLightingModel:texcoords:]");
        v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, v50, v51, v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFillTextureCoordinates.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v54, v55, v56, v57, v48, v53, 62, 0, "3D TODO implement texcoord conversion");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60, v61);
      }
    }

    if (i)
    {
      if (byte_280A46430 == 1)
      {
        v62 = objc_opt_class();
        v63 = NSStringFromSelector(a2);
        v68 = objc_msgSend_defaultShaderVariables(v26, v64, v65, v66, v67);
        v73 = objc_msgSend_texcoords(v68, v69, v70, v71, v72);
        NSLog(&cfstr_PAddingTexcoor.isa, v62, selfCopy, v63, v73);
      }

      v74 = objc_msgSend_defaultShaderVariables(v26, v33, v35, v36, v37);
      v79 = objc_msgSend_texcoords(v74, v75, v76, v77, v78);
      v90 = 0uLL;
      v91 = 0;
      objc_msgSend_attribute_resource_specs_(processorCopy, v80, v81, v82, v83, v79, texcoordsCopy, &v90);
    }
  }
}

@end