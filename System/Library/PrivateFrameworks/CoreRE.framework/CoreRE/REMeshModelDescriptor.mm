@interface REMeshModelDescriptor
- (BOOL)validateWithParts:(id)parts payloadSize:(FixedInlineArray<unsigned)long error:(8UL> *)error;
- (MeshModel)meshModelWithMeshModelContext:(SEL)context inverseBindPoseBuffers:(MeshModelContext *)buffers allocator:(const void *)allocator;
- (REMeshModelDescriptor)initWithCoder:(id)coder;
- (REMeshModelDescriptor)initWithMeshAssetModel:(const void *)model inverseBindPoseAttributes:(id)attributes deformerBuilders:(void *)builders payloadBuilder:(void *)builder deformationModelData:(void *)data;
- (REMeshModelDescriptor)initWithName:(REMeshModelDescriptor *)self modelPartIndexToResourcePartIndexMap:(SEL)map skeletonCount:(id)count skinningModel:(id)model blendShapeModel:(unsigned int)shapeModel lods:(id)lods boundingBoxMin:(id)min boundingBoxMax:(id)max;
- (REMeshModelDescriptor)initWithResourceDefinitionModel:(const void *)model inverseBindPoseAttributes:(id)attributes deformerBuilders:(void *)builders payloadBuilder:(void *)builder levels:(DynamicArray<re:(void *)levels :MeshResourceDefinition::Level> *)a7 deformationModelData:;
- (unint64_t)estimateContainerSize;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMeshModelDescriptor

- (REMeshModelDescriptor)initWithMeshAssetModel:(const void *)model inverseBindPoseAttributes:(id)attributes deformerBuilders:(void *)builders payloadBuilder:(void *)builder deformationModelData:(void *)data
{
  v68 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v53 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = *(model + 26);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = 80;
    v13 = MEMORY[0x1E69E9B18];
    while (1)
    {
      v14 = *(model + 26);
      if (v14 <= v11)
      {
        v54 = 0;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v63 = 0u;
        v44 = MEMORY[0x1E69E9C10];
        *buf = 136315906;
        v56 = "operator[]";
        v57 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v45 = 3;
        }

        else
        {
          v45 = 2;
        }

        v58 = 797;
        v59 = 2048;
        v60 = v11;
        v61 = 2048;
        v62 = v14;
        _os_log_send_and_compose_impl(v45, &v54, &v63, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v46, data);
        _os_crash_msg();
        __break(1u);
      }

      if (v11 >= *(model + 21) || (v15 = *(model + 23), v16 = *(v15 + v10), v65 = 0u, v66 = 0u, v63 = 0u, v64 = 0u, v16 == -1))
      {
        v21 = v13[1];
        v63 = *v13;
        v64 = v21;
        v22 = v13[3];
        v65 = v13[2];
        v66 = v22;
      }

      else
      {
        v17 = (v15 + v10);
        v18 = v17[6];
        v19 = v17[7];
        v20 = v17[8];
        v63 = v17[5];
        v64 = v18;
        v65 = v19;
        v66 = v20;
      }

      v23 = *(model + 28);
      v24 = [[REMeshPartDescriptor alloc] initWithMeshAssetPart:v23 + v12 - 80 partTransform:&v63 payloadBuilder:builder];
      if (!v24)
      {
        break;
      }

      v25 = [*builder count];
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v25];
      [v52 addObject:v26];

      [*builder addObject:v24];
      ++v11;
      v10 += 144;
      v12 += 256;
      if (v9 == v11)
      {
        goto LABEL_10;
      }
    }

    v28 = *re::assetTypesLogObjects(0);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }
  }

  else
  {
LABEL_10:
    if ([attributesCopy count] && *(model + 21))
    {
      builder = [[REMeshSkinningModelDescriptor alloc] initWithMeshSkinningData:model + 152 meshParts:*(model + 28) inverseBindPoseAttributes:*(model + 26) deformerBuilders:attributesCopy payloadBuilder:builders, builder];
    }

    else
    {
      builder = 0;
    }

    if (*(model + 16))
    {
      v27 = [[REMeshBlendShapeModelDescriptor alloc] initWithMeshBlendShapeData:model + 112 meshPartCount:*(model + 26) payloadBuilder:builder deformationModelData:data];
    }

    else
    {
      v27 = 0;
    }

    v30 = *(model + 36);
    if (!v30)
    {
LABEL_26:
      v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(model + 1)];
      self = -[REMeshModelDescriptor initWithName:modelPartIndexToResourcePartIndexMap:skeletonCount:skinningModel:blendShapeModel:lods:boundingBoxMin:boundingBoxMax:](self, "initWithName:modelPartIndexToResourcePartIndexMap:skeletonCount:skinningModel:blendShapeModel:lods:boundingBoxMin:boundingBoxMax:", v40, v52, [attributesCopy count], builder, v27, v53, *(model + 2), *(model + 4));

      selfCopy = self;
      goto LABEL_27;
    }

    v31 = *(model + 38);
    v32 = v31 + 48 * v30;
    while (1)
    {
      v33 = *(v31 + 24);
      v34 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v33];
      if (v33)
      {
        break;
      }

LABEL_25:
      v36 = [REMeshLevelOfDetailDescriptor alloc];
      LODWORD(v37) = *v31;
      LODWORD(v38) = *(v31 + 4);
      v39 = [(REMeshLevelOfDetailDescriptor *)v36 initWithPartIndicesOnModel:v34 minScreenArea:v37 maxViewDepth:v38];
      [v53 addObject:v39];

      v31 += 48;
      if (v31 == v32)
      {
        goto LABEL_26;
      }
    }

    v12 = 0;
    while (1)
    {
      v23 = *(v31 + 24);
      if (v23 <= v12)
      {
        break;
      }

      v35 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(*(v31 + 40) + 8 * v12)];
      [v34 addObject:v35];

      if (v33 == ++v12)
      {
        goto LABEL_25;
      }
    }

    v54 = 0;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v63 = 0u;
    v28 = MEMORY[0x1E69E9C10];
    *buf = 136315906;
    v56 = "operator[]";
    v57 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v42 = 3;
    }

    else
    {
      v42 = 2;
    }

    v58 = 797;
    v59 = 2048;
    v60 = v12;
    v61 = 2048;
    v62 = v23;
    _os_log_send_and_compose_impl(v42, &v54, &v63, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v46, data);
    _os_crash_msg();
    __break(1u);
  }

  v43 = *(v23 + v12);
  *buf = 136315138;
  v56 = v43;
  _os_log_error_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_ERROR, "Failed to create REMeshPartDescriptor for part %s", buf, 0xCu);
LABEL_17:

  selfCopy = 0;
LABEL_27:

  return selfCopy;
}

- (REMeshModelDescriptor)initWithResourceDefinitionModel:(const void *)model inverseBindPoseAttributes:(id)attributes deformerBuilders:(void *)builders payloadBuilder:(void *)builder levels:(DynamicArray<re:(void *)levels :MeshResourceDefinition::Level> *)a7 deformationModelData:
{
  buildersCopy = builders;
  v62 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v13 = *(model + 16);
  var2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  levelsCopy = levels;
  v47 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v13];
  if (v13)
  {
    v15 = 0;
    while (1)
    {
      v16 = *(model + 16);
      if (v16 <= v15)
      {
        break;
      }

      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(*(model + 18) + 8 * v15)];
      [v47 addObject:v17];

      if (v13 == ++v15)
      {
        goto LABEL_5;
      }
    }

    v48 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    v36 = MEMORY[0x1E69E9C10];
    v49 = 136315906;
    v50 = "operator[]";
    v51 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v37 = 3;
    }

    else
    {
      v37 = 2;
    }

    v52 = 797;
    v53 = 2048;
    v54 = v15;
    v55 = 2048;
    v56 = v16;
    _os_log_send_and_compose_impl(v37, &v48, &v57, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, buildersCopy, levelsCopy);
    _os_crash_msg();
    __break(1u);
LABEL_26:
    v48 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    v38 = MEMORY[0x1E69E9C10];
    v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v49 = 136315906;
    v50 = "operator[]";
    v51 = 1024;
    if (v39)
    {
      v40 = 3;
    }

    else
    {
      v40 = 2;
    }

    v52 = 789;
    v53 = 2048;
    v54 = v8;
    v55 = 2048;
    v56 = var2;
    _os_log_send_and_compose_impl(v40, &v48, &v57, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, buildersCopy, levelsCopy);
    _os_crash_msg();
    __break(1u);
  }

LABEL_5:
  builderCopy = builder;
  v46 = var2;
  if (*(model + 2))
  {
    v8 = 0;
    do
    {
      v18 = *(model + 4) + 40 * v8;
      v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(v18 + 16)];
      v20 = *(v18 + 16);
      if (v20)
      {
        v21 = *(v18 + 32);
        v22 = 8 * v20;
        do
        {
          v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*v21];
          [v19 addObject:v23];

          ++v21;
          v22 -= 8;
        }

        while (v22);
      }

      v24 = [REMeshLevelOfDetailDescriptor alloc];
      var2 = a7->var2;
      if (var2 <= v8)
      {
        goto LABEL_26;
      }

      v27 = (a7->var4 + 8 * v8);
      LODWORD(v25) = *v27;
      LODWORD(v26) = v27[1];
      v28 = [(REMeshLevelOfDetailDescriptor *)v24 initWithPartIndicesOnModel:v19 minScreenArea:v25 maxViewDepth:v26];
      var2 = v46;
      [v46 addObject:v28];
    }

    while (++v8 < *(model + 2));
  }

  v29 = *(model + 21);
  v30 = 0;
  if ([attributesCopy count] && v29)
  {
    v30 = [[REMeshSkinningModelDescriptor alloc] initWithSkinningData:model + 152 inverseBindPoseAttributes:attributesCopy deformerBuilders:buildersCopy payloadBuilder:builderCopy];
  }

  if (*(model + 26))
  {
    v31 = -[REMeshBlendShapeModelDescriptor initWithBlendShapeData:meshPartCount:payloadBuilder:deformationModelData:]([REMeshBlendShapeModelDescriptor alloc], "initWithBlendShapeData:meshPartCount:payloadBuilder:deformationModelData:", model + 192, [v47 count], builderCopy, levelsCopy);
  }

  else
  {
    v31 = 0;
  }

  if (*(model + 6))
  {
    v32 = *(model + 7);
  }

  else
  {
    v32 = model + 49;
  }

  v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v32];
  v34 = -[REMeshModelDescriptor initWithName:modelPartIndexToResourcePartIndexMap:skeletonCount:skinningModel:blendShapeModel:lods:boundingBoxMin:boundingBoxMax:](self, "initWithName:modelPartIndexToResourcePartIndexMap:skeletonCount:skinningModel:blendShapeModel:lods:boundingBoxMin:boundingBoxMax:", v33, v47, [attributesCopy count], v30, v31, var2, *(model + 10), *(model + 12));

  return v34;
}

- (MeshModel)meshModelWithMeshModelContext:(SEL)context inverseBindPoseBuffers:(MeshModelContext *)buffers allocator:(const void *)allocator
{
  allocatorCopy = allocator;
  v135 = *MEMORY[0x1E69E9840];
  modelPartIndexToResourcePartIndexMap = [(REMeshModelDescriptor *)self modelPartIndexToResourcePartIndexMap];
  v8 = [modelPartIndexToResourcePartIndexMap count];

  v114 = 0uLL;
  v115 = 0;
  re::FixedArray<re::MeshPart>::init<>(&v114, a6, v8);
  selfCopy2 = self;
  if (v8)
  {
    v10 = 0;
    v11 = 0;
    perMeshPartBlendShapeBufferIndex2 = &v128;
    do
    {
      modelPartIndexToResourcePartIndexMap2 = [(REMeshModelDescriptor *)selfCopy2 modelPartIndexToResourcePartIndexMap];
      v14 = [modelPartIndexToResourcePartIndexMap2 objectAtIndexedSubscript:v11];

      v15 = [buffers->var0 objectAtIndexedSubscript:{objc_msgSend(v14, "unsignedIntegerValue")}];
      v16 = v15;
      if (v15)
      {
        objc_msgSend_meshPartWithPayloadBuffer_partIndexInModel_(v15);
      }

      else
      {
        bzero(&v128, 0x220uLL);
      }

      v17 = *(&v114 + 1);
      if (*(&v114 + 1) <= v11)
      {
        goto LABEL_68;
      }

      v18 = re::MeshPart::operator=(v115 + v10, &v128);
      if (v128.var0[12].var1.var0.var0.var0[0])
      {
        if (v128.var0[12].var1.var0.var0.var0[0])
        {
        }
      }

      *&v128.var0[12].var1.var0.var0.var0[8] = &str_67;
      *v128.var0[12].var1.var0.var0.var0 = 0;
      re::FixedArray<re::StringID>::deinit(v128.var0[8].var1.var0.var0.var0);
      re::AttributeTable::~AttributeTable(&v128);

      ++v11;
      v10 += 544;
      selfCopy2 = self;
    }

    while (v8 != v11);
  }

  lods = [(REMeshModelDescriptor *)selfCopy2 lods];
  v20 = [lods count];

  v112 = 0uLL;
  v113 = 0;
  re::FixedArray<re::BindPoint>::init<>(&v112, a6, v20);
  v92 = v20;
  if (v20)
  {
    v11 = 0;
    v21 = 48;
    do
    {
      perMeshPartBlendShapeBufferIndex2 = *(&v112 + 1);
      if (*(&v112 + 1) <= v11)
      {
        goto LABEL_72;
      }

      perMeshPartBlendShapeBufferIndex2 = v113;
      lods2 = [(REMeshModelDescriptor *)self lods];
      v23 = [lods2 objectAtIndexedSubscript:v11];

      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      modelPartIndices = [v23 modelPartIndices];
      v25 = [modelPartIndices countByEnumeratingWithState:&v108 objects:v129 count:16];
      if (!v25)
      {
        goto LABEL_22;
      }

      v26 = *v109;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v109 != v26)
          {
            objc_enumerationMutation(modelPartIndices);
          }

          v28 = *(&v112 + 1);
          if (*(&v112 + 1) <= v11)
          {
            *v130 = 0;
            memset(&v128, 0, 80);
            v78 = MEMORY[0x1E69E9C10];
            v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v119[0]) = 136315906;
            *(v119 + 4) = "operator[]";
            WORD6(v119[0]) = 1024;
            if (v79)
            {
              v80 = 3;
            }

            else
            {
              v80 = 2;
            }

            *(v119 + 14) = 468;
            WORD1(v119[1]) = 2048;
            *(&v119[1] + 4) = v11;
            WORD6(v119[1]) = 2048;
            *(&v119[1] + 14) = v28;
            _os_log_send_and_compose_impl(v80, v130, &v128, 80, &dword_1E1C61000, v78, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v119, 38, v89, allocatorCopy);
            _os_crash_msg();
            __break(1u);
LABEL_64:
            v116 = 0;
            v120 = 0u;
            v121 = 0u;
            memset(v119, 0, sizeof(v119));
            v17 = MEMORY[0x1E69E9C10];
            v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v130 = 136315906;
            *&v130[4] = "operator[]";
            *&v130[12] = 1024;
            if (v81)
            {
              v82 = 3;
            }

            else
            {
              v82 = 2;
            }

            *&v130[14] = 468;
            v131 = 2048;
            v132 = v21;
            v133 = 2048;
            v134 = v28;
            _os_log_send_and_compose_impl(v82, &v116, v119, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v130, 38, v89, allocatorCopy);
            _os_crash_msg();
            __break(1u);
LABEL_68:
            *&v112 = 0;
            v120 = 0u;
            v121 = 0u;
            memset(v119, 0, sizeof(v119));
            v83 = MEMORY[0x1E69E9C10];
            v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v130 = 136315906;
            *&v130[4] = "operator[]";
            *&v130[12] = 1024;
            if (v84)
            {
              v85 = 3;
            }

            else
            {
              v85 = 2;
            }

            *&v130[14] = 468;
            v131 = 2048;
            v132 = v11;
            v133 = 2048;
            v134 = v17;
            _os_log_send_and_compose_impl(v85, &v112, v119, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v130, 38, v89, allocatorCopy);
            _os_crash_msg();
            __break(1u);
LABEL_72:
            *v130 = 0;
            memset(&v128, 0, 80);
            v86 = MEMORY[0x1E69E9C10];
            v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v119[0]) = 136315906;
            *(v119 + 4) = "operator[]";
            WORD6(v119[0]) = 1024;
            if (v87)
            {
              v88 = 3;
            }

            else
            {
              v88 = 2;
            }

            *(v119 + 14) = 468;
            WORD1(v119[1]) = 2048;
            *(&v119[1] + 4) = v11;
            WORD6(v119[1]) = 2048;
            *(&v119[1] + 14) = perMeshPartBlendShapeBufferIndex2;
            _os_log_send_and_compose_impl(v88, v130, &v128, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v119, 38, v89, allocatorCopy);
            _os_crash_msg();
            __break(1u);
          }

          v29 = v113;
          v128.var0[0].var0 = [*(*(&v108 + 1) + 8 * i) unsignedIntValue];
          re::DynamicArray<re::TransitionCondition *>::add(&v29[48 * v11 + 8], &v128);
        }

        v25 = [modelPartIndices countByEnumeratingWithState:&v108 objects:v129 count:16];
      }

      while (v25);
LABEL_22:

      [v23 maxViewDepth];
      v30 = &perMeshPartBlendShapeBufferIndex2[48 * v11];
      *(v30 + 1) = v31;
      [v23 minScreenArea];
      *v30 = v32;

      ++v11;
    }

    while (v11 != v92);
  }

  for (j = 0; j != 720; j += 40)
  {
    v34 = (&v128 + j);
    v34->var0[0].var0 = 0;
    v34->var0[0].var1.var0.var1 = 0;
  }

  skinningModel = [(REMeshModelDescriptor *)self skinningModel];
  v36 = skinningModel == 0;

  if (!v36)
  {
    DWORD2(v119[2]) = 1;
    *&v121 = 0;
    v120 = 0uLL;
    DWORD2(v121) = 0;
    v122[1] = 0;
    v122[0] = 0;
    v123 = 1;
    v126 = 0;
    v124 = 0;
    v125 = 0;
    v127 = 0;
    *&v119[2] = 0;
    *&v119[0] = a6;
    *(&v119[1] + 1) = 0;
    *(v119 + 8) = *allocatorCopy;
    re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::init(&v119[1] + 8, a6, 1uLL);
    re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::init(v122, a6, 1uLL);
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    skinningModel2 = [(REMeshModelDescriptor *)self skinningModel];
    skinningParts = [skinningModel2 skinningParts];

    v39 = [skinningParts countByEnumeratingWithState:&v104 objects:v118 count:16];
    if (v39)
    {
      v40 = *v105;
      do
      {
        for (k = 0; k != v39; ++k)
        {
          if (*v105 != v40)
          {
            objc_enumerationMutation(skinningParts);
          }

          [*(*(&v104 + 1) + 8 * k) addToSkinningModelBuilder:v119 payloadBuffers:buffers->var1];
        }

        v39 = [skinningParts countByEnumeratingWithState:&v104 objects:v118 count:16];
      }

      while (v39);
    }

    *v130 = 0;
    re::SkinningModelBuilder::buildDeformationModel(v119, v130, &v128);

    re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::~BucketArray(v122);
    re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::~BucketArray(&v119[1] + 8);
  }

  blendShapeModel = [(REMeshModelDescriptor *)self blendShapeModel];
  v43 = blendShapeModel == 0;

  if (!v43)
  {
    v101 = 0;
    v102 = 0;
    v103 = 0;
    blendShapeModel2 = [(REMeshModelDescriptor *)self blendShapeModel];
    perMeshPartBlendShapeBufferIndex = [blendShapeModel2 perMeshPartBlendShapeBufferIndex];
    re::FixedArray<int>::init<>(&v101, a6, [perMeshPartBlendShapeBufferIndex count]);

    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    blendShapeModel3 = [(REMeshModelDescriptor *)self blendShapeModel];
    perMeshPartBlendShapeBufferIndex2 = [blendShapeModel3 perMeshPartBlendShapeBufferIndex];

    v47 = [perMeshPartBlendShapeBufferIndex2 countByEnumeratingWithState:&v97 objects:v117 count:16];
    if (v47)
    {
      v21 = 0;
      v11 = *v98;
      do
      {
        for (m = 0; m != v47; ++m)
        {
          if (*v98 != v11)
          {
            objc_enumerationMutation(perMeshPartBlendShapeBufferIndex2);
          }

          unsignedIntValue = [*(*(&v97 + 1) + 8 * m) unsignedIntValue];
          v28 = v102;
          if (v102 <= v21)
          {
            goto LABEL_64;
          }

          *(v103 + 4 * v21++) = unsignedIntValue;
        }

        v47 = [perMeshPartBlendShapeBufferIndex2 countByEnumeratingWithState:&v97 objects:v117 count:16];
      }

      while (v47);
    }

    blendShapeModel4 = [(REMeshModelDescriptor *)self blendShapeModel];
    v51 = [blendShapeModel4 blendShapeIndexType] != 0;

    *v130 = 0;
    blendShapeModel5 = [(REMeshModelDescriptor *)self blendShapeModel];
    blendShapeBuffers = [blendShapeModel5 blendShapeBuffers];
    re::BlendShapeModelBuilder::BlendShapeModelBuilder(v119, a6, v130, [blendShapeBuffers count], v51, &v101, &v128);

    blendShapeModel6 = [(REMeshModelDescriptor *)self blendShapeModel];
    blendShapeBuffers2 = [blendShapeModel6 blendShapeBuffers];
    v56 = [blendShapeBuffers2 count];

    if (v56)
    {
      for (n = 0; n != v56; ++n)
      {
        blendShapeModel7 = [(REMeshModelDescriptor *)self blendShapeModel];
        blendShapeBuffers3 = [blendShapeModel7 blendShapeBuffers];
        v60 = [blendShapeBuffers3 objectAtIndexedSubscript:n];

        blendShapeModel8 = [(REMeshModelDescriptor *)self blendShapeModel];
        blendShapeGroupNames = [blendShapeModel8 blendShapeGroupNames];
        v63 = [blendShapeGroupNames objectAtIndexedSubscript:n];

        if (v63)
        {
          v64 = v63;
          uTF8String = [v63 UTF8String];
          *v130 = 0;
          *&v130[8] = &str_67;
        }

        else
        {
          re::StringID::invalid(v130);
        }

        v66 = [v60 addToBlendShapeModelBuilder:v119 blendShapeIndex:n blendShapeGroupName:v130 payloadBuffers:buffers->var1];
        if (v130[0])
        {
          if (v130[0])
          {
          }
        }
      }
    }

    if (v101 && v102)
    {
      (*(*v101 + 40))();
    }
  }

  name = [(REMeshModelDescriptor *)self name];
  v68 = name;
  uTF8String2 = [name UTF8String];
  *&retstr->var0.var0 = 0;
  retstr->var0.var1 = &str_67;
  [(REMeshModelDescriptor *)self boundingBoxMin];
  v94 = v70;
  [(REMeshModelDescriptor *)self boundingBoxMax];
  *&retstr->var2.var1 = v114;
  *&retstr->var1.var0.var0.var0.var0 = v94;
  *&retstr->var1.var1.var0.var1[1] = v71;
  v114 = 0uLL;
  *&retstr->var3.var0.var0.var0.var0.var0 = v115;
  v115 = 0;
  [(REMeshModelDescriptor *)self boundingBoxMin];
  v95 = v72;
  [(REMeshModelDescriptor *)self boundingBoxMax];
  v73 = 0;
  *&retstr->var3.var0.var1.var0.var1[1] = v95;
  *&retstr->var3.var1.var1 = v74;
  *&retstr->var4.var0[0].var0 = v112;
  v112 = 0uLL;
  *&retstr->var4.var0[0].var1.var0.var0.var0[8] = v113;
  v113 = 0;
  do
  {
    var0 = v128.var0[v73].var0;
    v128.var0[v73].var0 = 0;
    retstr->var4.var0[v73].var1.var0.var1 = var0;
    std::__function::__value_func<void ()(void *)>::__value_func[abi:nn200100](&retstr->var4.var0[v73 + 1], &v128.var0[v73].var1);
    ++v73;
  }

  while (v73 != 18);

  for (ii = 680; ii != -40; ii -= 40)
  {
    std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100]((&v128 + ii));
  }

  re::FixedArray<re::MeshLodLevelInfo>::deinit(&v112);
  return re::FixedArray<re::MeshPart>::deinit(&v114);
}

- (REMeshModelDescriptor)initWithName:(REMeshModelDescriptor *)self modelPartIndexToResourcePartIndexMap:(SEL)map skeletonCount:(id)count skinningModel:(id)model blendShapeModel:(unsigned int)shapeModel lods:(id)lods boundingBoxMin:(id)min boundingBoxMax:(id)max
{
  v29 = v8;
  v30 = v9;
  countCopy = count;
  modelCopy = model;
  lodsCopy = lods;
  minCopy = min;
  maxCopy = max;
  v31.receiver = self;
  v31.super_class = REMeshModelDescriptor;
  v21 = [(REMeshModelDescriptor *)&v31 init];
  if (v21)
  {
    v22 = [countCopy copy];
    name = v21->_name;
    v21->_name = v22;

    v24 = [modelCopy copy];
    modelPartIndexToResourcePartIndexMap = v21->_modelPartIndexToResourcePartIndexMap;
    v21->_modelPartIndexToResourcePartIndexMap = v24;

    v21->_skeletonCount = shapeModel;
    objc_storeStrong(&v21->_skinningModel, lods);
    objc_storeStrong(&v21->_blendShapeModel, min);
    v26 = [maxCopy copy];
    lods = v21->_lods;
    v21->_lods = v26;

    *v21->_boundingBoxMin = v29;
    *v21->_boundingBoxMax = v30;
  }

  return v21;
}

- (REMeshModelDescriptor)initWithCoder:(id)coder
{
  v44 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = self->_name;
  self->_name = v5;

  v7 = self->_name;
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"partIndices"];
  modelPartIndexToResourcePartIndexMap = self->_modelPartIndexToResourcePartIndexMap;
  self->_modelPartIndexToResourcePartIndexMap = v11;

  v13 = [coderCopy decodeIntegerForKey:@"skeletonCount"];
  v14 = HIDWORD(v13) != 0;
  self->_skeletonCount = v13;
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"skinningModel"];
  skinningModel = self->_skinningModel;
  self->_skinningModel = v15;

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"blendShapeModel"];
  blendShapeModel = self->_blendShapeModel;
  self->_blendShapeModel = v17;

  v19 = MEMORY[0x1E695DFD8];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"lods"];
  lods = self->_lods;
  self->_lods = v22;

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v24 = self->_modelPartIndexToResourcePartIndexMap;
  v25 = [(NSArray *)v24 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v25)
  {
    v26 = *v40;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v40 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v14 |= [*(*(&v39 + 1) + 8 * i) unsignedIntegerValue] >> 32 != 0;
      }

      v25 = [(NSArray *)v24 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v25);
  }

  *self->_boundingBoxMin = 0;
  *&self->_boundingBoxMin[8] = 0;
  [coderCopy decodeFloatForKey:@"boundingBoxMin.x"];
  *self->_boundingBoxMin = v28;
  [coderCopy decodeFloatForKey:@"boundingBoxMin.y"];
  *&self->_boundingBoxMin[4] = v29;
  [coderCopy decodeFloatForKey:@"boundingBoxMin.z"];
  *self->_boundingBoxMax = 0;
  *&self->_boundingBoxMin[8] = v30;
  *&self->_boundingBoxMax[8] = 0;
  [coderCopy decodeFloatForKey:@"boundingBoxMax.x"];
  *self->_boundingBoxMax = v31;
  [coderCopy decodeFloatForKey:@"boundingBoxMax.y"];
  *&self->_boundingBoxMax[4] = v32;
  [coderCopy decodeFloatForKey:@"boundingBoxMax.z"];
  *&self->_boundingBoxMax[8] = v34;
  if (v14)
    v35 = {;
    [coderCopy failWithError:v35];

LABEL_13:
    selfCopy = 0;
    goto LABEL_14;
  }

  if (!v7)
    v37 = {;
    [coderCopy failWithError:v37];

    goto LABEL_13;
  }

  selfCopy = self;
LABEL_14:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_modelPartIndexToResourcePartIndexMap forKey:@"partIndices"];
  [coderCopy encodeInt:self->_skeletonCount forKey:@"skeletonCount"];
  [coderCopy encodeObject:self->_skinningModel forKey:@"skinningModel"];
  [coderCopy encodeObject:self->_blendShapeModel forKey:@"blendShapeModel"];
  [coderCopy encodeObject:self->_lods forKey:@"lods"];
  LODWORD(v4) = *self->_boundingBoxMin;
  [coderCopy encodeFloat:@"boundingBoxMin.x" forKey:v4];
  LODWORD(v5) = *&self->_boundingBoxMin[4];
  [coderCopy encodeFloat:@"boundingBoxMin.y" forKey:v5];
  LODWORD(v6) = *&self->_boundingBoxMin[8];
  [coderCopy encodeFloat:@"boundingBoxMin.z" forKey:v6];
  LODWORD(v7) = *self->_boundingBoxMax;
  [coderCopy encodeFloat:@"boundingBoxMax.x" forKey:v7];
  LODWORD(v8) = *&self->_boundingBoxMax[4];
  [coderCopy encodeFloat:@"boundingBoxMax.y" forKey:v8];
  LODWORD(v9) = *&self->_boundingBoxMax[8];
  [coderCopy encodeFloat:@"boundingBoxMax.z" forKey:v9];
}

- (BOOL)validateWithParts:(id)parts payloadSize:(FixedInlineArray<unsigned)long error:(8UL> *)error
{
  v57 = *MEMORY[0x1E69E9840];
  partsCopy = parts;
  v9 = [(_anonymous_namespace_ *)partsCopy count];
  v10 = [(NSArray *)self->_modelPartIndexToResourcePartIndexMap count];
  v42 = 1;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  re::DynamicOverflowArray<unsigned long long,3ul>::setCapacity(&v40, 0);
  v42 += 2;
  if ((v9 & 0x3F) != 0)
  {
    v11 = (v9 >> 6) + 1;
  }

  else
  {
    v11 = v9 >> 6;
  }

  v45 = v9;
  *&v56[0] = 0;
  re::DynamicOverflowArray<unsigned long long,3ul>::resize(&v40, v11, v56);
  errorCopy = error;
  v35 = partsCopy;
  if (v10)
  {
    v12 = 0;
    v13 = 1;
    while (1)
    {
      v14 = [(NSArray *)self->_modelPartIndexToResourcePartIndexMap objectAtIndexedSubscript:v12];
      unsignedIntegerValue = [(NSArray *)v14 unsignedIntegerValue];
      if (HIDWORD(unsignedIntegerValue))
      {
        break;
      }

      if (unsignedIntegerValue >= v9)
      {
        v29 = @"REMeshModelDescriptor: mesh part index out of range";
        goto LABEL_32;
      }

      v16 = unsignedIntegerValue >> 6;
      v17 = v41;
      if (v41 <= unsignedIntegerValue >> 6)
      {
        v46 = 0;
        memset(v56, 0, sizeof(v56));
        v31 = MEMORY[0x1E69E9C10];
        v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v48 = 136315906;
        v49 = "operator[]";
        v50 = 1024;
        if (v32)
        {
          v33 = 3;
        }

        else
        {
          v33 = 2;
        }

        v51 = 866;
        v52 = 2048;
        v53 = v16;
        v54 = 2048;
        v55 = v17;
        _os_log_send_and_compose_impl(v33, &v46, v56, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v48, 38, errorCopy, v35);
        _os_crash_msg();
        __break(1u);
      }

      if (v42)
      {
        v19 = *(&v43 + v16);
        v20 = 1 << unsignedIntegerValue;
        if ((v19 & (1 << unsignedIntegerValue)) != 0)
        {
LABEL_33:
          goto LABEL_34;
        }

        v18 = &v43;
      }

      else
      {
        v18 = v44;
        v19 = v44[v16];
        v20 = 1 << unsignedIntegerValue;
        if ((v19 & (1 << unsignedIntegerValue)) != 0)
        {
          goto LABEL_33;
        }
      }

      v18[v16] = v20 | v19;

      v12 = v13;
      if (v10 <= v13++)
      {
        goto LABEL_15;
      }
    }

    v29 = @"REMeshModelDescriptor: mesh part index overflow";
LABEL_32:
    goto LABEL_34;
  }

LABEL_15:
  skinningModel = self->_skinningModel;
  v23 = v35;
  if (skinningModel && ![(REMeshSkinningModelDescriptor *)skinningModel validateWithPayloadSize:errorCopy partsOnResource:v35 modelPartIndexToResourcePartIndex:self->_modelPartIndexToResourcePartIndexMap skeletonCount:self->_skeletonCount error:a5]|| (blendShapeModel = self->_blendShapeModel) != 0 && ![(REMeshBlendShapeModelDescriptor *)blendShapeModel validateWithPayloadSize:errorCopy partCountOnModel:v10 error:a5])
  {
    v28 = 0;
  }

  else if ([(NSArray *)self->_lods count])
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v14 = self->_lods;
    v25 = [(NSArray *)v14 countByEnumeratingWithState:&v36 objects:v47 count:16];
    if (v25)
    {
      v26 = *v37;
LABEL_22:
      v27 = 0;
      while (1)
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(v14);
        }

        if (([*(*(&v36 + 1) + 8 * v27) validateWithModelPartCount:-[_anonymous_namespace_ count](v35 error:{"count"), a5}] & 1) == 0)
        {
          break;
        }

        if (v25 == ++v27)
        {
          v25 = [(NSArray *)v14 countByEnumeratingWithState:&v36 objects:v47 count:16];
          v28 = 1;
          if (v25)
          {
            goto LABEL_22;
          }

          goto LABEL_35;
        }
      }

LABEL_34:
      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

LABEL_35:

    v23 = v35;
  }

  else
  {
    v28 = 1;
  }

  if (v40 && (v42 & 1) == 0)
  {
    (*(*v40 + 40))();
  }

  return v28;
}

- (unint64_t)estimateContainerSize
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  InstanceSize = class_getInstanceSize(v3);
  if (self->_name && (v5 = objc_opt_class(), v6 = class_getInstanceSize(v5), name = self->_name, InstanceSize += v6, name))
  {
    v8 = [(NSString *)name lengthOfBytesUsingEncoding:4]+ 1;
  }

  else
  {
    v8 = 0;
  }

  if (self->_modelPartIndexToResourcePartIndexMap)
  {
    v9 = objc_opt_class();
    v10 = class_getInstanceSize(v9);
    modelPartIndexToResourcePartIndexMap = self->_modelPartIndexToResourcePartIndexMap;
  }

  else
  {
    modelPartIndexToResourcePartIndexMap = 0;
    v10 = 0;
  }

  v12 = [(NSArray *)modelPartIndexToResourcePartIndexMap count];
  v13 = objc_opt_class();
  v14 = class_getInstanceSize(v13);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v15 = self->_modelPartIndexToResourcePartIndexMap;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v37 objects:v42 count:16];
  v17 = v8 + InstanceSize + v10 + 8 * v12;
  if (v16)
  {
    v18 = *v38;
    do
    {
      v19 = 0;
      do
      {
        if (*v38 != v18)
        {
          objc_enumerationMutation(v15);
        }

        if (*(*(&v37 + 1) + 8 * v19))
        {
          v20 = v14;
        }

        else
        {
          v20 = 0;
        }

        v17 += v20;
        ++v19;
      }

      while (v16 != v19);
      v16 = [(NSArray *)v15 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v16);
  }

  estimateContainerSize = [(REMeshSkinningModelDescriptor *)self->_skinningModel estimateContainerSize];
  estimateContainerSize2 = [(REMeshBlendShapeModelDescriptor *)self->_blendShapeModel estimateContainerSize];
  if (self->_lods)
  {
    v23 = objc_opt_class();
    v24 = class_getInstanceSize(v23);
    lods = self->_lods;
  }

  else
  {
    lods = 0;
    v24 = 0;
  }

  v26 = [(NSArray *)lods count];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v27 = self->_lods;
  v28 = [(NSArray *)v27 countByEnumeratingWithState:&v33 objects:v41 count:16];
  v29 = estimateContainerSize + v17 + estimateContainerSize2 + v24 + 8 * v26;
  if (v28)
  {
    v30 = *v34;
    do
    {
      v31 = 0;
      do
      {
        if (*v34 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v29 += [*(*(&v33 + 1) + 8 * v31++) estimateContainerSize];
      }

      while (v28 != v31);
      v28 = [(NSArray *)v27 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v28);
  }

  return v29;
}

@end