VFXMeshSource *sub_1AF328B2C(void *key, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, key);
  if (!Value)
  {
    v7 = objc_msgSend_data(key, v4, v5);
    v10 = objc_msgSend_semantic(key, v8, v9);
    if (objc_msgSend_isEqualToString_(v10, v11, *MEMORY[0x1E697A920]))
    {
      v14 = VFXMeshSourceSemanticPosition;
    }

    else if (objc_msgSend_isEqualToString_(v10, v12, *MEMORY[0x1E697A908]))
    {
      v14 = VFXMeshSourceSemanticNormal;
    }

    else if (objc_msgSend_isEqualToString_(v10, v12, *MEMORY[0x1E697A8F8]))
    {
      v14 = VFXMeshSourceSemanticColor;
    }

    else if (objc_msgSend_isEqualToString_(v10, v12, *MEMORY[0x1E697A918]))
    {
      v14 = VFXMeshSourceSemanticTexcoord;
    }

    else if (objc_msgSend_isEqualToString_(v10, v12, *MEMORY[0x1E697A910]))
    {
      v14 = VFXMeshSourceSemanticTangent;
    }

    else if (objc_msgSend_isEqualToString_(v10, v12, *MEMORY[0x1E697A928]))
    {
      v14 = VFXMeshSourceSemanticVertexCrease;
    }

    else if (objc_msgSend_isEqualToString_(v10, v12, *MEMORY[0x1E697A900]))
    {
      v14 = VFXMeshSourceSemanticEdgeCrease;
    }

    else if (objc_msgSend_isEqualToString_(v10, v12, *MEMORY[0x1E697A8F0]))
    {
      v14 = VFXMeshSourceSemanticBoneWeights;
    }

    else
    {
      isEqualToString = objc_msgSend_isEqualToString_(v10, v12, *MEMORY[0x1E697A8E8]);
      if (!isEqualToString)
      {
        v38 = sub_1AF0D5194(isEqualToString, v12);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF851C(v38, v12, v13, v39, v40, v41, v42, v43);
        }

        goto LABEL_21;
      }

      v14 = VFXMeshSourceSemanticBoneIndices;
    }

    v10 = *v14;
LABEL_21:
    v16 = objc_msgSend_vectorCount(key, v12, v13);
    v19 = objc_msgSend_floatComponents(key, v17, v18);
    v22 = objc_msgSend_componentsPerVector(key, v20, v21);
    v25 = objc_msgSend_bytesPerComponent(key, v23, v24);
    v28 = objc_msgSend_dataOffset(key, v26, v27);
    v31 = objc_msgSend_dataStride(key, v29, v30);
    Value = objc_msgSend_meshSourceWithData_semantic_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(VFXMeshSource, v32, v7, v10, v16, v19, v22, v25, v28, v31);
    v35 = objc_msgSend__encodeDataAsHalf(key, v33, v34);
    objc_msgSend_set_encodeDataAsHalf_(Value, v36, v35);
    CFDictionarySetValue(theDict, key, Value);
  }

  return Value;
}

VFXMeshElement *sub_1AF328DA0(void *key, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, key);
  if (!Value)
  {
    v7 = objc_msgSend_data(key, v4, v5);
    v10 = objc_msgSend_primitiveType(key, v8, v9);
    v13 = v10;
    if (v10 >= 5)
    {
      v14 = sub_1AF0D5194(v10, v11);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF8554(v14, v11, v12, v15, v16, v17, v18, v19);
      }
    }

    v20 = objc_msgSend_primitiveCount(key, v11, v12);
    v23 = objc_msgSend_indicesChannelCount(key, v21, v22);
    hasInterleavedIndicesChannels = objc_msgSend_hasInterleavedIndicesChannels(key, v24, v25);
    v29 = objc_msgSend_bytesPerIndex(key, v27, v28);
    Value = objc_msgSend_meshElementWithData_primitiveType_primitiveCount_indicesChannelCount_interleavedIndicesChannels_bytesPerIndex_(VFXMeshElement, v30, v7, v13, v20, v23, hasInterleavedIndicesChannels, v29);
    objc_msgSend_primitiveRange(key, v31, v32);
    if (v33)
    {
      v35 = objc_msgSend_primitiveRange(key, v33, v34);
      objc_msgSend_setPrimitiveRange_(Value, v36, v35, v36);
    }

    objc_msgSend_pointSize(key, v33, v34);
    *&v37 = v37;
    objc_msgSend_setPointSize_(Value, v38, v39, v37);
    objc_msgSend_minimumPointScreenSpaceRadius(key, v40, v41);
    *&v42 = v42;
    objc_msgSend_setMinimumPointScreenSpaceRadius_(Value, v43, v44, v42);
    objc_msgSend_maximumPointScreenSpaceRadius(key, v45, v46);
    *&v47 = v47;
    objc_msgSend_setMaximumPointScreenSpaceRadius_(Value, v48, v49, v47);
    CFDictionarySetValue(theDict, key, Value);
  }

  return Value;
}

void sub_1AF328EFC(void *a1, void *a2, uint64_t a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_shaderModifiers(a2, a2, a3);
  if (objc_msgSend_count(v5, v6, v7))
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    v8 = objc_alloc(MEMORY[0x1E695DF90]);
    v11 = objc_msgSend_count(v5, v9, v10);
    v13 = objc_msgSend_initWithCapacity_(v8, v12, v11);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = sub_1AF3292C0;
    v36[3] = &unk_1E7A7F0B0;
    v36[4] = v13;
    v36[5] = &v37;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v5, v14, v36);
    if (*(v38 + 24) == 1)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        if (objc_msgSend_blendMode(a1, v17, v18) != 1)
        {
          objc_msgSend_setBlendMode_(a1, v15, 1);
        }
      }

      else
      {
        v19 = sub_1AF0D5194(isKindOfClass, v17);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          sub_1AFDF858C(v21, buf, v19);
        }
      }
    }

    objc_msgSend_setShaderModifiers_(a1, v15, v13);
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v24 = objc_msgSend_customMaterialAttributeNames(a2, v22, v23, 0);
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v32, v41, 16);
    if (v27)
    {
      v28 = *v33;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v33 != v28)
          {
            objc_enumerationMutation(v24);
          }

          v30 = *(*(&v32 + 1) + 8 * i);
          v31 = objc_msgSend_valueForKey_(a2, v26, v30);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_msgSend_setValue_forKey_(a1, v26, v31, v30);
          }
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v32, v41, 16);
      }

      while (v27);
    }

    _Block_object_dispose(&v37, 8);
  }
}

void sub_1AF3291B0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_propertyName(a2, a2, a3);
  if (v5)
  {
    v7 = v5;
    if ((objc_msgSend_isEqualToString_(v5, v6, @"ambient") & 1) == 0)
    {
      v9 = objc_msgSend_propertyWithName_(*(a1 + 32), v8, v7);
      if (v9)
      {
        v10 = *(a1 + 40);
        v11 = *(a1 + 48);

        sub_1AF327894(v9, a2, v10, v11);
      }

      else
      {
        v25 = objc_alloc_init(VFXMaterialProperty);
        sub_1AF327894(v25, a2, *(a1 + 40), *(a1 + 48));
        v20 = *(a1 + 32);
        v23 = objc_msgSend_propertyName(a2, v21, v22);
        objc_msgSend_setValue_forKey_(v20, v24, v25, v23);
      }
    }
  }

  else
  {
    v12 = sub_1AF0D5194(0, v6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF85D4(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }
}

void *sub_1AF3292C0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = _SCNShadableConvertShaderToMetalIfNeeded();
  v7 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v5, v6, @"scn_frame", @"vfx_frame");
  v9 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v7, v8, @"scn_node", @"vfx_node");
  if (objc_msgSend_containsString_(v9, v10, @"#pragma transparent"))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  if (objc_msgSend_isEqualToString_(a2, v11, *MEMORY[0x1E697A9E0]))
  {
    v13 = VFXShaderModifierEntryPointSurface;
  }

  else if (objc_msgSend_isEqualToString_(a2, v12, *MEMORY[0x1E697A9C8]))
  {
    v13 = VFXShaderModifierEntryPointFragment;
  }

  else if (objc_msgSend_isEqualToString_(a2, v12, *MEMORY[0x1E697A9D0]))
  {
    v13 = VFXShaderModifierEntryPointVertex;
  }

  else
  {
    result = objc_msgSend_isEqualToString_(a2, v12, *MEMORY[0x1E697A9D8]);
    if (!result)
    {
      return result;
    }

    v13 = VFXShaderModifierEntryPointLighting;
  }

  v15 = *(a1 + 32);
  v16 = *v13;

  return objc_msgSend_setValue_forKey_(v15, v12, v9, v16);
}

VFXPhysicsShape *sub_1AF3293F8(void *a1, const __CFDictionary *a2, uint64_t a3, void *a4)
{
  v69 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a2, a1);
  if (!Value)
  {
    v11 = objc_msgSend_sourceObject(a1, v8, v9);
    v14 = objc_msgSend_options(a1, v12, v13);
    v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, *MEMORY[0x1E697A998]);
    if (objc_msgSend_isEqualToString_(v16, v17, *MEMORY[0x1E697A990]))
    {
      v19 = 0;
    }

    else if (objc_msgSend_isEqualToString_(v16, v18, *MEMORY[0x1E697A988]))
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    v20 = objc_msgSend_objectForKeyedSubscript_(v14, v18, *MEMORY[0x1E697A970]);
    if (v20)
    {
      v23 = objc_msgSend_BOOLValue(v20, v21, v22) ^ 1;
    }

    else
    {
      v23 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = sub_1AF3264A4(v11, a2, a3, a4);
      v26 = objc_msgSend_shapeWithNode_flattened_(VFXPhysicsShape, v25, v24, v23);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = sub_1AF327DA8(v11, a2, a3, a4);
        v26 = objc_msgSend_shapeWithModel_(VFXPhysicsShape, v29, v28);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v63 = v19;
          v50 = objc_msgSend_array(MEMORY[0x1E695DF70], v48, v49);
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v51, &v64, v68, 16);
          if (v52)
          {
            v55 = v52;
            v56 = *v65;
            do
            {
              v57 = 0;
              do
              {
                if (*v65 != v56)
                {
                  objc_enumerationMutation(v11);
                }

                v58 = sub_1AF3293F8(*(*(&v64 + 1) + 8 * v57), a2, a3, a4);
                if (v58)
                {
                  objc_msgSend_addObject_(v50, v59, v58);
                }

                ++v57;
              }

              while (v55 != v57);
              v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v59, &v64, v68, 16);
            }

            while (v55);
          }

          v60 = objc_msgSend_transforms(a1, v53, v54);
          Value = objc_msgSend_shapeWithShapes_transforms_(VFXPhysicsShape, v61, v50, v60);
          objc_msgSend_setType_(Value, v62, v63);
          goto LABEL_17;
        }

        if (v11)
        {
          Value = 0;
          objc_msgSend_setType_(0, v48, v19);
          goto LABEL_17;
        }

        v26 = objc_msgSend_shapeWithModel_(VFXPhysicsShape, v48, 0);
      }
    }

    Value = v26;
    objc_msgSend_setType_(v26, v27, v19);
LABEL_17:
    v31 = objc_msgSend_objectForKeyedSubscript_(v14, v30, *MEMORY[0x1E697A980]);
    if (v31)
    {
      v33 = v31;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_floatValue(v33, v34, v35);
        objc_msgSend_setScale_(Value, v37, v38, *vdupq_lane_s32(v36, 0).i64);
      }

      else
      {
        objc_msgSend_float3Value(v33, v34, v35);
        objc_msgSend_setScale_(Value, v39, v40, v41);
      }
    }

    v42 = objc_msgSend_objectForKeyedSubscript_(v14, v32, *MEMORY[0x1E697A978]);
    if (v42)
    {
      objc_msgSend_floatValue(v42, v43, v44);
      objc_msgSend_setMargin_(Value, v45, v46);
    }

    CFDictionarySetValue(a2, a1, Value);
  }

  return Value;
}

uint64_t sub_1AF329F7C(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend__setCFXProgram(*(a1 + 32), a2, a3);
  v5 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](v5, sel__startObservingProgram, v4);
}

void sub_1AF32A280(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = objc_alloc_init(VFXShaderArgument);
  objc_msgSend_setName_(v11, v6, a2);
  v8 = sub_1AF1F1B4C(a3, v7);
  objc_msgSend_setType_(v11, v9, v8);
  objc_msgSend_setValue_forKey_(*(*(a1 + 32) + 48), v10, v11, a2);
}

uint64_t sub_1AF32A318(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AF1CF8AC(*(a1 + 32), a2);

  return sub_1AF14E518(v2, v3, v4);
}

void sub_1AF32A688(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_owner(*(a1 + 32), a2, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass))
  {
    v8 = objc_msgSend___CFObject(v4, v5, v6);
    v9 = *(a1 + 40);

    sub_1AF16E18C(v8, v9);
  }

  else
  {
    v10 = sub_1AF0D5194(isKindOfClass, v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF88A4();
    }
  }
}

uint64_t sub_1AF32A7BC(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend__setCFXProgram(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v4, v5);
  v9 = objc_msgSend_owner(*(a1 + 32), v7, v8);
  v13 = objc_msgSend_worldRef(v9, v10, v11);

  return objc_msgSend_postNotificationName_object_(v6, v12, @"kCFXWorldDidUpdateNotification", v13);
}

uint64_t sub_1AF32AA40(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, a3);
  v6 = *(*(a1 + 32) + 8);

  return objc_msgSend_postNotificationName_object_userInfo_(v4, v5, @"VFXShadableInterfaceDidChangeNotificationName", v6, 0);
}

CFHashCode sub_1AF32AD28(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_libraryProvider(*(a1 + 32), a2, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return MEMORY[0x1EEE66B58](v3, sel__libraryHash, v4);
  }

  else if (v3)
  {

    return CFHash(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF32ADB4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_libraryProvider(*(a1 + 32), a2, a3);

  return MEMORY[0x1EEE66B58](v4, sel_libraryForDevice_, a2);
}

void sub_1AF32B16C(uint64_t a1, void *a2, __CFString *a3)
{
  if (objc_msgSend_isEqualToString_(a2, a2, @"VFXShaderModifierEntryPointVertex"))
  {
    v7 = 0;
    goto LABEL_9;
  }

  if (objc_msgSend_isEqualToString_(a2, v6, @"VFXShaderModifierEntryPointSurface"))
  {
    v7 = 1;
    goto LABEL_9;
  }

  if (objc_msgSend_isEqualToString_(a2, v6, @"VFXShaderModifierEntryPointFragment"))
  {
    v7 = 2;
    goto LABEL_9;
  }

  isEqualToString = objc_msgSend_isEqualToString_(a2, v6, @"VFXShaderModifierEntryPointLighting");
  if (isEqualToString)
  {
    v7 = 3;
LABEL_9:
    v9 = objc_msgSend_rangeOfString_(a3, v6, @";");
    if (v10 != 1)
    {
      v12 = VFXGetResourceBundle(v9, v10, v11);
      PathComponent = objc_msgSend_lastPathComponent(a3, v13, v14);
      v18 = objc_msgSend_stringByDeletingPathExtension(PathComponent, v16, v17);
      v21 = objc_msgSend_pathExtension(a3, v19, v20);
      v24 = objc_msgSend_stringByDeletingLastPathComponent(a3, v22, v23);
      v26 = objc_msgSend_pathForResource_ofType_inDirectory_(v12, v25, v18, v21, v24);
      if (v26)
      {
        v27 = objc_msgSend_stringWithContentsOfFile_encoding_error_(MEMORY[0x1E696AEC0], v10, v26, 4, 0);
        if (v27)
        {
          a3 = v27;
        }
      }
    }

    v28 = objc_msgSend_length(a3, v10, v11);
    v30 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_options_range_(a3, v29, @"(//.*|/\\*(.|\n)*?\\*/)", &stru_1F2575650, 1024, 0, v28);
    v33 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v31, v32);
    v35 = objc_msgSend_stringByTrimmingCharactersInSet_(v30, v34, v33);
    if (objc_msgSend_length(v35, v36, v37))
    {
      v38 = sub_1AF14863C(a3, v7, 0, 1, 0);
      CFArrayAppendValue(*(a1 + 32), v38);

      CFRelease(v38);
    }

    return;
  }

  v39 = sub_1AF0D5194(isEqualToString, v6);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF8998();
  }
}

void sub_1AF32B73C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  sub_1AF1C5A68(v4, *(*(a1 + 32) + 200));
  sub_1AF1C584C(v4, v5, *(*(a1 + 32) + 176));
  sub_1AF1C59B4(v4, v6, *(*(a1 + 32) + 180));
  sub_1AF1C5BF8(v4, *(*(a1 + 32) + 192));
  sub_1AF1C5900(v4, v7, *(*(a1 + 32) + 184));
  sub_1AF1C5B50(v4, *(*(a1 + 32) + 216));
  v8 = *(*(a1 + 32) + 208);

  sub_1AF1C5798(v4, v8);
}

void sub_1AF32BBC4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF1C5798(v4, v5);
}

void sub_1AF32BD18(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF1C584C(v4, v5, v6);
}

void sub_1AF32BE64(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF1C5900(v4, v5, v6);
}

void sub_1AF32BFB8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF1C59B4(v4, v5, v6);
}

void sub_1AF32C0FC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF1C5A68(v4, v5);
}

uint64_t sub_1AF32C268(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v5 = *(*(a1 + 32) + 216);

  return sub_1AF1C5B50(v4, v5);
}

uint64_t sub_1AF32C3E0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v5 = *(*(a1 + 32) + 192);

  return sub_1AF1C5BF8(v4, v5);
}

double sub_1AF32CB80(uint64_t a1)
{
  sub_1AF1C8DC8(*(a1 + 32), 0);
  v2 = *(a1 + 32);

  return sub_1AF1C8D3C(v2, 0);
}

void *sub_1AF32CD28(void *a1, const char *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, a2, &v13, v17, 16);
  if (!v3)
  {
    return 0;
  }

  v6 = v3;
  v7 = 0;
  v8 = *v14;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(a1);
      }

      v10 = *(*(&v13 + 1) + 8 * i);
      if (v7)
      {
        while (!v10)
        {
LABEL_11:
          v7 = objc_msgSend_parentNode(v7, v4, v5);
          if (!v7)
          {
            return v7;
          }
        }

        v11 = v10;
        while (v11 != v7)
        {
          v11 = objc_msgSend_parentNode(v11, v4, v5);
          if (!v11)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v7 = *(*(&v13 + 1) + 8 * i);
      }
    }

    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v4, &v13, v17, 16);
  }

  while (v6);
  return v7;
}

double sub_1AF32CF08(uint64_t a1, const char *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_skinnerRef(*(a1 + 32), a2, a3);
  v7 = *(a1 + 40);
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = objc_msgSend_nodeRef(v7, v4, v5);
  v11 = sub_1AF1C9224(v6, v8);
  v12 = *(a1 + 40);
  if (v11)
  {
    v13 = objc_msgSend_nodeRef(v12, v9, v10);
    if (!sub_1AF1C8FB4(v6, v13))
    {
      v17 = objc_msgSend_nodeRef(*(a1 + 40), v14, v15);
      v18 = sub_1AF1C9280(v6, v17);
      if (!v18)
      {
        v20 = sub_1AF0D5194(v18, v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(a1 + 40);
          v21 = *(a1 + 48);
          v25 = 138412546;
          v26 = v21;
          v27 = 2112;
          v28 = v22;
          _os_log_impl(&dword_1AF0CE000, v20, OS_LOG_TYPE_DEFAULT, "Warning: Failed to transpose skeleton\nold skeleton: %@\nnew skeleton: %@", &v25, 0x16u);
        }
      }
    }

    return result;
  }

  if (!v12)
  {
    sub_1AF1C8DC8(v6, 0);
LABEL_11:
    v24 = v6;
    v23 = 0;
    goto LABEL_12;
  }

  v23 = objc_msgSend_nodeRef(v12, v9, v10);
  v24 = v6;
LABEL_12:

  return sub_1AF1C8D3C(v24, v23);
}

void sub_1AF32EDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF32EE28(uint64_t a1, const char *a2)
{
  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x1E695DF70]);
    v8 = objc_msgSend_count(*(a1 + 32), v6, v7);
    *(*(*(a1 + 40) + 8) + 40) = objc_msgSend_initWithCapacity_(v5, v9, v8);
    v4 = *(*(*(a1 + 40) + 8) + 40);
  }

  return objc_msgSend_addObject_(v4, a2, a2);
}

uint64_t sub_1AF32F098(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 24);

    return objc_msgSend_removeWorldReference_(a2, v5, v6);
  }

  return result;
}

uint64_t sub_1AF32F0F8(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 24);

    return objc_msgSend_addWorldReference_(a2, v5, v6);
  }

  return result;
}

id sub_1AF32F644(uint64_t a1, void *a2)
{
  result = a2;
  *(*(a1 + 32) + 24) = result;
  return result;
}

void sub_1AF33095C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v4 = sub_1AF0D5194(v2, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF8E18();
    }

    objc_end_catch();
    JUMPOUT(0x1AF330850);
  }

  _Unwind_Resume(exception_object);
}

void VFXSetPerformanceStatisticsEnabled(uint64_t result)
{
  v1 = result;
  if (qword_1ED739AE0 != -1)
  {
    sub_1AFDF8EE8();
  }

  if (byte_1EB658CD8 != v1)
  {
    byte_1EB658CD8 = v1;
    if (v1)
    {
      if (qword_1EB658D00 != -1)
      {
        sub_1AFDF8EFC();
      }
    }
  }
}

uint64_t sub_1AF332204(uint64_t a1, uint64_t a2)
{
  if (qword_1ED739AE0 != -1)
  {
    sub_1AFDF8EE8();
  }

  return byte_1EB658CD8;
}

void sub_1AF33223C()
{
  v0 = getenv("VFX_ENABLE_COLLECTION");
  if (v0 && !strcmp(v0, "YES"))
  {
    byte_1EB658CD8 = 1;
    if (qword_1EB658D00 != -1)
    {
      sub_1AFDF8EFC();
    }
  }
}

float32_t sub_1AF332294(uint64_t a1, _BYTE *a2, int a3)
{
  *a2 = 2;
  v3 = *(a1 + 328);
  if (v3 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0 / v3;
  }

  v5 = &a2[52 * a3];
  v5->i32[1] = *(a1 + 4);
  v5->i32[2] = vcvtas_u32_f32(v4);
  v6.f64[0] = *(a1 + 104);
  v7 = *(a1 + 96);
  v5->f32[3] = v7;
  v8.f64[0] = *(a1 + 128) + *(a1 + 136) + *(a1 + 144);
  v8.f64[1] = *(a1 + 152);
  v6.f64[1] = *(a1 + 168);
  v9 = vcvt_hight_f32_f64(vcvt_f32_f64(v6), *(a1 + 184));
  v5[1] = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 112)), v8);
  v5[2] = v9;
  result = *(a1 + 288);
  v5[3].f32[1] = result;
  v5[3].i32[0] = *(a1 + 280);
  a2[1] = a3;
  return result;
}

void sub_1AF332334(uint64_t a1)
{
  if (qword_1EB658CE0 != -1)
  {
    sub_1AFDF8F10();
  }

  os_unfair_lock_lock(&dword_1EB658CE8);
  sub_1AF332294(a1, &_vfxPerformanceData, (byte_1EB6C2C5D & 1) == 0);

  os_unfair_lock_unlock(&dword_1EB658CE8);
}

void VFXGetPerformanceStatistics(_OWORD *a1@<X8>)
{
  if (qword_1EB658CE0 != -1)
  {
    sub_1AFDF8F24();
  }

  os_unfair_lock_lock(&dword_1EB658CE8);
  v2 = unk_1EB6C2CAC;
  a1[4] = xmmword_1EB6C2C9C;
  a1[5] = v2;
  *(a1 + 92) = unk_1EB6C2CB8;
  v3 = unk_1EB6C2C6C;
  *a1 = _vfxPerformanceData;
  a1[1] = v3;
  v4 = unk_1EB6C2C8C;
  a1[2] = xmmword_1EB6C2C7C;
  a1[3] = v4;

  os_unfair_lock_unlock(&dword_1EB658CE8);
}

void *VFXGetPerformanceStatisticsAsPlist()
{
  memset(v2, 0, 108);
  VFXGetPerformanceStatistics(v2);
  return sub_1AF33248C(v2, BYTE1(v2[0]), v0);
}

void *sub_1AF33248C(unsigned __int8 *a1, const char *a2, uint64_t a3)
{
  v3 = a2;
  v5 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, a3);
  v6 = &a1[52 * v3];
  v8 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v7, *(v6 + 2));
  objc_msgSend_setObject_forKeyedSubscript_(v5, v9, v8, @"vfx.fps");
  v11 = *(v6 + 1);
  v10 = v6 + 4;
  v13 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v12, v11);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v14, v13, @"vfx.primcnt");
  LODWORD(v15) = v10[2];
  v18 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v16, v17, v15);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v19, v18, @"vfx.frmtime");
  LODWORD(v20) = v10[3];
  v23 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v21, v22, v20);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v24, v23, @"vfx.phytime");
  LODWORD(v25) = v10[4];
  v28 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v26, v27, v25);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v29, v28, @"vfx.vfxCoreTime");
  LODWORD(v30) = v10[5];
  v33 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v31, v32, v30);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v34, v33, @"vfx.animtime");
  LODWORD(v35) = v10[8];
  v38 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v36, v37, v35);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v39, v38, @"vfx.clientTime");
  LODWORD(v40) = v10[6];
  v43 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v41, v42, v40);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v44, v43, @"vfx.rendertime");
  LODWORD(v45) = v10[7];
  v48 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v46, v47, v45);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v49, v48, @"vfx.consttime");
  LODWORD(v50) = v10[9];
  v53 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v51, v52, v50);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v54, v53, @"vfx.cpuidletime");
  LODWORD(v55) = v10[10];
  v58 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v56, v57, v55);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v59, v58, @"vfx.cawaittime");
  if (*a1 < 2u)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v5, v60, &unk_1F25D47A8, @"vfx.shaderCompilationTime");
    objc_msgSend_setObject_forKeyedSubscript_(v5, v68, &unk_1F25D47A8, @"vfx.shaderGenerationCount");
  }

  else
  {
    LODWORD(v62) = v10[12];
    v63 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v60, v61, v62);
    objc_msgSend_setObject_forKeyedSubscript_(v5, v64, v63, @"vfx.shaderCompilationTime");
    v66 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v65, v10[11]);
    objc_msgSend_setObject_forKeyedSubscript_(v5, v67, v66, @"vfx.shaderGenerationCount");
  }

  v69 = sub_1AF332728();
  v71 = objc_msgSend_objectForKeyedSubscript_(v69, v70, @"Device Utilization %");
  objc_msgSend_setObject_forKeyedSubscript_(v5, v72, v71, @"vfx.deviceutil");
  v74 = objc_msgSend_objectForKeyedSubscript_(v69, v73, @"Renderer Utilization %");
  objc_msgSend_setObject_forKeyedSubscript_(v5, v75, v74, @"vfx.rendererutil");
  v77 = objc_msgSend_objectForKeyedSubscript_(v69, v76, @"Tiler Utilization %");
  objc_msgSend_setObject_forKeyedSubscript_(v5, v78, v77, @"vfx.tilerutil");

  return v5;
}

uint64_t sub_1AF332728()
{
  v2 = CACurrentMediaTime();
  if (v2 - *&qword_1EB636660 > 1.0)
  {
    v3 = dword_1EB658CEC;
    if (!dword_1EB658CEC)
    {
      existing = 0;
      v4 = *MEMORY[0x1E696CD60];
      v5 = IOServiceMatching("IOAcceleratorES");
      if (!IOServiceGetMatchingServices(v4, v5, &existing))
      {
        dword_1EB658CEC = IOIteratorNext(existing);
      }

      IOObjectRelease(existing);
      v3 = dword_1EB658CEC;
    }

    CFProperty = IORegistryEntryCreateCFProperty(v3, @"PerformanceStatistics", *MEMORY[0x1E695E480], 0);
    if (CFProperty)
    {
      v7 = CFProperty;
      if (qword_1EB658CF0)
      {
        CFRelease(qword_1EB658CF0);
      }

      qword_1EB658CF0 = v7;
    }

    qword_1EB636660 = *&v2;
  }

  return objc_msgSend_copy(qword_1EB658CF0, v0, v1);
}

uint64_t _VFXStartCollectingPerformanceStatisticsForPid(int a1)
{
  v18 = a1;
  v1 = CSSymbolicatorCreateWithPid();
  v3 = v2;
  if (CSIsNull())
  {
    return 0;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x4012000000;
  v13 = sub_1AF3329E8;
  v14 = nullsub_189;
  v15 = "";
  v16 = 0;
  v17 = 0;
  CSSymbolicatorForeachSymbolWithMangledNameAtTime();
  v5 = v11[6];
  v6 = v11[7];
  if (CSIsNull() || (CSSymbolicatorGetTask(), (mapped_memory_cache_for_task = create_mapped_memory_cache_for_task()) == 0))
  {
    CSRelease();
    v4 = 0;
  }

  else
  {
    if ((atomic_load_explicit(byte_1ED73AAB0, memory_order_acquire) & 1) == 0)
    {
      sub_1AFDF8F38();
    }

    v19 = &v18;
    v8 = sub_1AF333280(qword_1ED73AAB8, &v18, &unk_1AFE22A40, &v19);
    v8[3] = v1;
    v8[4] = v3;
    v8[5] = v5;
    v8[6] = v6;
    v4 = 1;
    v8[7] = mapped_memory_cache_for_task;
  }

  _Block_object_dispose(&v10, 8);
  return v4;
}

void sub_1AF3329CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_1AF3329E8(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t sub_1AF3329F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CSIsNull();
  if ((result & 1) == 0)
  {
    v7 = *(*(a1 + 32) + 8);
    *(v7 + 48) = a2;
    *(v7 + 56) = a3;
  }

  return result;
}

uint64_t _VFXStopCollectingPerformanceStatisticsForPid(int a1)
{
  v4 = a1;
  if ((atomic_load_explicit(byte_1ED73AAB0, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDF8F80();
  }

  sub_1AF3334C0(v3, qword_1ED73AAB8);
  v1 = sub_1AF33376C(v3, &v4);
  if (v1)
  {
    destroy_mapped_memory_cache();
    v1[5] = 0;
    v1[6] = 0;
    v1[7] = 0;
    CSRelease();
    v1[3] = 0;
    v1[4] = 0;
    sub_1AF145C50(v3, v1);
  }

  sub_1AF144AE4(v3);
  return 1;
}

uint64_t *_VFXGetPerformanceStatisticsForPid(int a1)
{
  v4 = a1;
  if ((atomic_load_explicit(byte_1ED73AAB0, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDF8F80();
  }

  sub_1AF3334C0(v3, qword_1ED73AAB8);
  v1 = sub_1AF33376C(v3, &v4);
  if (v1)
  {
    if (CSSymbolGetRange())
    {
      clear_mapped_memory();
      v1 = 0;
      mapped_memory_read();
    }

    else
    {
      v1 = 0;
    }
  }

  sub_1AF144AE4(v3);
  return v1;
}

void sub_1AF332BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1AF144AE4(va);
  _Unwind_Resume(a1);
}

void *_VFXGetCollectedShadersForPid()
{
  v54 = *MEMORY[0x1E69E9840];
  CSSymbolicatorCreateWithPid();
  if (CSIsNull())
  {
    v1 = &unk_1F25D47B8;
  }

  else
  {
    v52[0] = 0;
    v52[1] = v52;
    v52[2] = 0x4012000000;
    v52[3] = sub_1AF3329E8;
    v52[4] = nullsub_189;
    v52[5] = "";
    v52[6] = 0;
    v52[7] = 0;
    v47 = MEMORY[0x1E69E9820];
    v48 = 3221225472;
    v49 = sub_1AF333234;
    v50 = &unk_1E7A7F220;
    v51 = v52;
    CSSymbolicatorForeachSymbolWithMangledNameAtTime();
    if (CSIsNull())
    {
      CSRelease();
      v1 = &unk_1F25D47E0;
    }

    else
    {
      CSSymbolicatorGetTask();
      if (create_mapped_memory_cache_for_task())
      {
        if (CSSymbolGetRange())
        {
          clear_mapped_memory();
          v46 = 0;
          v1 = &unk_1F25D4858;
          mapped_memory_read();
        }

        else
        {
          v1 = &unk_1F25D4830;
        }
      }

      else
      {
        CSRelease();
        v1 = &unk_1F25D4808;
      }
    }

    _Block_object_dispose(v52, 8);
  }

  v41 = v1;
  if (objc_msgSend_valueForKey_(v1, v0, @"containerPath"))
  {
    v4 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v2, v3);
    v7 = objc_msgSend_temporaryDirectory(v4, v5, v6);
    v9 = objc_msgSend_URLByAppendingPathComponent_(v7, v8, @"VFXShaderCache");
    v12 = objc_msgSend_path(v9, v10, v11);
    v41 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v13, v14);
    v40 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v15, v16);
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v18 = objc_msgSend_contentsOfDirectoryAtPath_error_(v40, v17, v12, 0);
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v42, v53, 16);
    if (v21)
    {
      v22 = *v43;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v43 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v42 + 1) + 8 * i);
          if (objc_msgSend_hasPrefix_(v24, v20, @"commonProfile_"))
          {
            v26 = objc_msgSend_pathExtension(v24, v20, v25);
            if (objc_msgSend_isEqualToString_(v26, v27, @"metal"))
            {
              v28 = objc_msgSend_stringByAppendingPathComponent_(v12, v20, v24);
              v30 = objc_msgSend_stringWithContentsOfFile_encoding_error_(MEMORY[0x1E696AEC0], v29, v28, 4, 0);
              v32 = objc_msgSend_substringFromIndex_(v24, v31, 14);
              v35 = objc_msgSend_stringByDeletingPathExtension(v32, v33, v34);
              if (v30)
              {
                if (v35)
                {
                  objc_msgSend_setValue_forKey_(v41, v20, v30, v35);
                  v37 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v36, v28);
                  objc_msgSend_removeItemAtURL_error_(v40, v38, v37, 0);
                }
              }
            }
          }
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v20, &v42, v53, 16);
      }

      while (v21);
    }
  }

  return v41;
}

void sub_1AF333010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t VFXGetShaderCollectionOutputURL(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a3);
  v6 = objc_msgSend_temporaryDirectory(v3, v4, v5);

  return objc_msgSend_URLByAppendingPathComponent_(v6, v7, @"VFXShaderCache");
}

CFTypeRef VFXSetShaderCollectionEnabled(CFTypeRef result, const char *a2, uint64_t a3)
{
  if (byte_1EB658CF8 != result)
  {
    byte_1EB658CF8 = result;
    if (result)
    {
      v22[3] = v3;
      v22[4] = v4;
      v5 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a3);
      v8 = objc_msgSend_temporaryDirectory(v5, v6, v7);
      v10 = objc_msgSend_URLByAppendingPathComponent_(v8, v9, @"VFXShaderCache");
      v13 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v11, v12);
      v16 = objc_msgSend_path(v10, v14, v15);
      if (objc_msgSend_fileExistsAtPath_(v13, v17, v16))
      {
        objc_msgSend_removeItemAtURL_error_(v13, v18, v10, 0);
      }

      v22[0] = 0;
      DirectoryAtURL_withIntermediateDirectories_attributes_error = objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v13, v18, v10, 1, 0, v22);
      if ((DirectoryAtURL_withIntermediateDirectories_attributes_error & 1) == 0)
      {
        v21 = sub_1AF0D5194(DirectoryAtURL_withIntermediateDirectories_attributes_error, v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF8FE0(v10, v22, v21);
        }

        v10 = 0;
      }

      return sub_1AF28A34C(v10);
    }
  }

  return result;
}

uint64_t sub_1AF333168(uint64_t a1, uint64_t a2)
{
  if (byte_1EB658CF8)
  {
    v2 = 1;
  }

  else
  {
    if (qword_1ED737C00 != -1)
    {
      sub_1AFDF906C();
    }

    v2 = byte_1ED734620;
  }

  return v2 & 1;
}

void *sub_1AF3331B8(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], a2, a3);
  result = objc_msgSend_BOOLForKey_(v3, v4, @"com.apple.vfx.traceResources");
  byte_1ED734620 = result;
  return result;
}

char *sub_1AF3331EC(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a3);
  v6 = objc_msgSend_temporaryDirectory(v3, v4, v5);
  v9 = objc_msgSend_path(v6, v7, v8);
  PathComponent = objc_msgSend_stringByDeletingLastPathComponent(v9, v10, v11);
  v15 = objc_msgSend_UTF8String(PathComponent, v13, v14);
  result = strncpy(byte_1EB6C2B59, v15, 0x100uLL);
  result[256] = 0;
  return result;
}

uint64_t sub_1AF333234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CSIsNull();
  if ((result & 1) == 0)
  {
    v7 = *(*(a1 + 32) + 8);
    *(v7 + 48) = a2;
    *(v7 + 56) = a3;
  }

  return result;
}

uint64_t *sub_1AF333280(void *a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t sub_1AF3334C0(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_1AF14505C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_1AF333538(a1, i + 4, i + 1);
  }

  return a1;
}

uint64_t *sub_1AF333538(void *a1, int *a2, _OWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t *sub_1AF33376C(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1AF333820(uint64_t a1, void *a2, void *a3)
{

  return __cxa_atexit(sub_1AF332AF4, a2, a3);
}

double sub_1AF333840()
{
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 8) = 0u;
  *(v0 + 40) = 1065353216;
  return result;
}

uint64_t sub_1AF333A9C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  sub_1AF1C5A68(v4, *(*(a1 + 32) + 200));
  sub_1AF1C5C98(v4, *(*(a1 + 32) + 176));
  sub_1AF1C584C(v4, v5, *(*(a1 + 32) + 180));
  sub_1AF1C59B4(v4, v6, *(*(a1 + 32) + 184));
  sub_1AF1C5BF8(v4, *(*(a1 + 32) + 192));
  sub_1AF1C5900(v4, v7, *(*(a1 + 32) + 188));
  sub_1AF1C5EB0(v4, *(*(a1 + 32) + 228));
  sub_1AF1C5F04(v4, *(*(a1 + 32) + 232));
  sub_1AF1C5DE8(v4, *(*(a1 + 32) + 208));
  sub_1AF1C5E4C(v4, *(*(a1 + 32) + 216));
  sub_1AF1C5FAC(v4, *(*(a1 + 32) + 236));
  sub_1AF1C5FC8(v4, *(*(a1 + 32) + 240), *(*(a1 + 32) + 248), *(*(a1 + 32) + 256), *(*(a1 + 32) + 264));
  sub_1AF1C5F58(v4, *(*(a1 + 32) + 224));
  v8 = *(*(a1 + 32) + 272);

  return sub_1AF1C6100(v4, v8);
}

uint64_t sub_1AF334190(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return sub_1AF1C6100(v4, v5);
}

void sub_1AF3342EC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF1C584C(v4, v5, v6);
}

void sub_1AF334440(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF1C5900(v4, v5, v6);
}

void sub_1AF33459C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF1C59B4(v4, v5, v6);
}

uint64_t sub_1AF3346E8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return sub_1AF1C5C98(v4, v5);
}

void sub_1AF33482C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF1C5A68(v4, v5);
}

uint64_t sub_1AF3349A0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v5 = *(*(a1 + 32) + 208);

  return sub_1AF1C5DE8(v4, v5);
}

uint64_t sub_1AF334AF4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return sub_1AF1C5F58(v4, v5);
}

uint64_t sub_1AF334D9C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return sub_1AF1C5E4C(v4, v5);
}

uint64_t sub_1AF334F80(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  sub_1AF1C5FAC(v4, *(a1 + 40));
  v7 = objc_msgSend_modelRef(*(a1 + 32), v5, v6);
  v8 = *(*(a1 + 32) + 240);
  v9 = *(*(a1 + 32) + 248);
  v10 = *(*(a1 + 32) + 256);
  v11 = *(*(a1 + 32) + 264);

  return sub_1AF1C5FC8(v7, v8, v9, v10, v11);
}

uint64_t sub_1AF335060(uint64_t a1, uint64_t a2)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = MEMORY[0x1E697A058];
      return *v2;
    }

    if (a1 == 3)
    {
      v2 = MEMORY[0x1E697A060];
      return *v2;
    }
  }

  else
  {
    if (!a1)
    {
      v2 = MEMORY[0x1E697A068];
      return *v2;
    }

    if (a1 == 1)
    {
      v2 = MEMORY[0x1E697A070];
      return *v2;
    }
  }

  v3 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF9080(v3);
  }

  return 0;
}

uint64_t sub_1AF33529C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return sub_1AF1C5F04(v4, v5);
}

uint64_t sub_1AF335358(uint64_t a1, uint64_t a2)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      v2 = MEMORY[0x1E6979578];
      return *v2;
    }

    if (a1 == 1)
    {
      v2 = MEMORY[0x1E6979570];
      return *v2;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v2 = MEMORY[0x1E6979580];
        return *v2;
      case 3:
        v2 = MEMORY[0x1E6979560];
        return *v2;
      case 4:
        v2 = MEMORY[0x1E6979568];
        return *v2;
    }
  }

  v4 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF9080(v4);
  }

  return 0;
}

uint64_t sub_1AF3355C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return sub_1AF1C5EB0(v4, v5);
}

uint64_t sub_1AF335734(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return sub_1AF1C5BF8(v4, v5);
}

uint64_t sub_1AF336414(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (a2)
  {
    sub_1AF1CEA20(a2, a2);
    (*(a1 + 16))(a1, 0.0);

    return sub_1AF1CEA9C(a2, v5);
  }

  else
  {
    v7 = *(a1 + 16);
    a3.n128_u64[0] = 0;

    return v7(a3);
  }
}

uint64_t sub_1AF336580(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend___CFObject(a1, a2, a3);
  if (!sub_1AF16D234(v3))
  {
    return 0;
  }

  return sub_1AF1C3FAC(v3, v4);
}

uint64_t sub_1AF336964(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_immediateMode(VFXTransaction, a2, a3);
  if (v4)
  {
    v6 = *(*(a1 + 32) + 16);

    return v6();
  }

  else
  {
    v8 = sub_1AF0D5194(v4, v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF91C8(a1);
    }

    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1);
    (*(*(a1 + 32) + 16))();
    return objc_msgSend_setImmediateMode_(VFXTransaction, v10, 0);
  }
}

uint64_t sub_1AF3371F8(uint64_t a1)
{
  Weak = objc_loadWeak((*(a1 + 32) + 8));

  return objc_msgSend_start_(_TtC3VFX14VFXGazeTracker, v1, Weak);
}

void sub_1AF33724C(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_stop(*(a1 + 32), a2, a3);
  v4 = *(a1 + 32);
}

uint64_t sub_1AF337288(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, a3);
  Weak = objc_loadWeak((*(a1 + 32) + 8));

  return objc_msgSend_postNotificationName_object_(v4, v5, @"kCFXWorldDidUpdateEnabledTriggersNotification", Weak);
}

void sub_1AF337C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_1AF3450A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF337CB8(uint64_t a1, const char *a2)
{
  v115 = *MEMORY[0x1E69E9840];
  *(a1 + 56) = objc_msgSend_newSceneWithURL_(qword_1EB658D30, a2, a2);
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v3, @"VFX export preview %.02f", 0x3FE51EB860000000);
  v5 = *(a1 + 56);
  v7 = objc_msgSend_dataWithString_(VFXUSKData_helper, v6, v4);
  objc_msgSend_setDictionaryMetadataWithKey_dictionaryKey_value_(v5, v8, @"customLayerData", @"creator", v7);
  v10 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v9, *(a1 + 24));
  v12 = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v11, *(a1 + 56), v10, qword_1EB658E30);
  v14 = objc_msgSend_dataWithString_(VFXUSKData_helper, v13, *(a1 + 8));
  objc_msgSend_setDictionaryMetadataWithKey_dictionaryKey_value_(v12, v15, @"assetInfo", @"name", v14);
  v17 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v16, @"component");
  v19 = objc_msgSend_dataWithToken_(VFXUSKData_helper, v18, v17);
  objc_msgSend_setMetadataWithKey_value_(v12, v20, @"kind", v19);
  v21 = *(a1 + 56);
  v23 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v22, *(a1 + 8));
  v25 = objc_msgSend_dataWithToken_(VFXUSKData_helper, v24, v23);
  objc_msgSend_setMetadataWithKey_value_(v21, v26, @"defaultPrim", v25);
  v27 = *(a1 + 56);
  v29 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v28, @"Y");
  v31 = objc_msgSend_dataWithToken_(VFXUSKData_helper, v30, v29);
  objc_msgSend_setMetadataWithKey_value_(v27, v32, @"upAxis", v31);
  v35 = objc_msgSend_worldRef(*a1, v33, v34);
  v37 = sub_1AF1CFBAC(v35, v36);
  v38 = *(a1 + 56);
  v41 = objc_msgSend_dataWithDouble_(VFXUSKData_helper, v39, v40, v37);
  objc_msgSend_setMetadataWithKey_value_(v38, v42, @"metersPerUnit", v41);
  sub_1AF338F60(a1, v43, v44);
  sub_1AF339204(a1, v45, v46);
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v49 = objc_msgSend_rootNode(*a1, v47, v48);
  v52 = objc_msgSend_childNodes(v49, v50, v51);
  v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v53, &v109, v114, 16);
  if (v54)
  {
    v56 = v54;
    v57 = *v110;
    do
    {
      for (i = 0; i != v56; ++i)
      {
        if (*v110 != v57)
        {
          objc_enumerationMutation(v52);
        }

        sub_1AF3392F8(a1, *(*(&v109 + 1) + 8 * i), v55);
      }

      v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v59, &v109, v114, 16);
    }

    while (v56);
  }

  sub_1AF339464(a1);
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v62 = objc_msgSend_rootNode(*a1, v60, v61);
  v65 = objc_msgSend_childNodes(v62, v63, v64);
  v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v66, &v105, v113, 16);
  if (v67)
  {
    v70 = v67;
    v71 = *v106;
    do
    {
      for (j = 0; j != v70; ++j)
      {
        if (*v106 != v71)
        {
          objc_enumerationMutation(v65);
        }

        v73 = *(*(&v105 + 1) + 8 * j);
        v74 = sub_1AF339A70(a1, v68);
        sub_1AF339578(a1, v73, v74, 0, 0);
      }

      v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v68, &v105, v113, 16);
    }

    while (v70);
  }

  sub_1AF339ADC(a1, v68, v69);
  sub_1AF339BD0((a1 + 440), v75);
  sub_1AF339C58(a1, v76, v77);
  if (*(a1 + 472) > 0.0)
  {
    objc_msgSend_startTime(*a1, v78, v79);
    v83 = v82 / *(a1 + 504) + 0.0;
    v84 = v83;
    if (vabdd_f64(v83, v84) >= 0.001)
    {
      if (1.0 - (v83 - v84) < 0.001)
      {
        v83 = v84 + 1.0;
      }
    }

    else
    {
      v83 = v83;
    }

    objc_msgSend_endTime(*a1, v80, v81);
    v88 = v87 / *(a1 + 504) + 0.0;
    v89 = v88;
    if (vabdd_f64(v88, v89) >= 0.001)
    {
      if (1.0 - (v88 - v89) < 0.001)
      {
        v88 = v89 + 1.0;
      }
    }

    else
    {
      v88 = v88;
    }

    v90 = *(a1 + 464);
    if (v90 == -1.0 || v90 > v83)
    {
      *(a1 + 464) = v83;
      v90 = v83;
    }

    v91 = *(a1 + 472);
    if (v91 == -1.0 || v91 < v88)
    {
      *(a1 + 472) = v88;
    }

    v92 = *(a1 + 56);
    v93 = objc_msgSend_dataWithDouble_(VFXUSKData_helper, v85, v86, v90);
    objc_msgSend_setMetadataWithKey_value_(v92, v94, @"startTimeCode", v93);
    v95 = *(a1 + 56);
    v98 = objc_msgSend_dataWithDouble_(VFXUSKData_helper, v96, v97, *(a1 + 472));
    objc_msgSend_setMetadataWithKey_value_(v95, v99, @"endTimeCode", v98);
  }

  v100 = *(a1 + 480);
  if (v100 >= 1)
  {
    v101 = *(a1 + 56);
    v102 = objc_msgSend_dataWithInt_(VFXUSKData_helper, v78, v100);
    objc_msgSend_setMetadataWithKey_value_(v101, v103, @"timeCodesPerSecond", v102);
  }

  return *(a1 + 56);
}

void sub_1AF338188()
{
  v0 = dlopen("/System/Library/PrivateFrameworks/USDKit.framework/USDKit", 2);
  if (v0 || (v0 = dlopen("../SharedFrameworks/USDKit.framework/USDKit", 2)) != 0)
  {
    v2 = v0;
    qword_1EB658D10 = NSClassFromString(&cfstr_Uskobjectpath.isa);
    qword_1EB658D08 = NSClassFromString(&cfstr_Usktoken.isa);
    qword_1EB658D18 = NSClassFromString(&cfstr_Uskdata.isa);
    qword_1EB658D30 = NSClassFromString(&cfstr_Uskscene.isa);
    v3 = dlsym(v2, "USKDataTypeResourcePath");
    if (v3)
    {
      v4 = *v3;
    }

    else
    {
      v4 = 0;
    }

    qword_1EB658D38 = v4;
    v5 = dlsym(v2, "USKDataTypeInt");
    if (v5)
    {
      v6 = *v5;
    }

    else
    {
      v6 = 0;
    }

    qword_1EB658D40 = v6;
    v7 = dlsym(v2, "USKDataTypeBool");
    if (v7)
    {
      v8 = *v7;
    }

    else
    {
      v8 = 0;
    }

    qword_1EB658D48 = v8;
    v9 = dlsym(v2, "USKDataTypeDouble3");
    if (v9)
    {
      v10 = *v9;
    }

    else
    {
      v10 = 0;
    }

    qword_1EB658D50 = v10;
    v11 = dlsym(v2, "USKDataTypeDouble4x4");
    if (v11)
    {
      v12 = *v11;
    }

    else
    {
      v12 = 0;
    }

    qword_1EB658D58 = v12;
    v13 = dlsym(v2, "USKDataTypeDouble4x4Array");
    if (v13)
    {
      v14 = *v13;
    }

    else
    {
      v14 = 0;
    }

    qword_1EB658D60 = v14;
    v15 = dlsym(v2, "USKDataTypeFloat");
    if (v15)
    {
      v16 = *v15;
    }

    else
    {
      v16 = 0;
    }

    qword_1EB658D68 = v16;
    v17 = dlsym(v2, "USKDataTypeFloat2");
    if (v17)
    {
      v18 = *v17;
    }

    else
    {
      v18 = 0;
    }

    qword_1EB658D70 = v18;
    v19 = dlsym(v2, "USKDataTypeFloat3");
    if (v19)
    {
      v20 = *v19;
    }

    else
    {
      v20 = 0;
    }

    qword_1EB658D78 = v20;
    v21 = dlsym(v2, "USKDataTypeFloat4");
    if (v21)
    {
      v22 = *v21;
    }

    else
    {
      v22 = 0;
    }

    qword_1EB658D80 = v22;
    v23 = dlsym(v2, "USKDataTypeFloat2Array");
    if (v23)
    {
      v24 = *v23;
    }

    else
    {
      v24 = 0;
    }

    qword_1EB658D88 = v24;
    v25 = dlsym(v2, "USKDataTypeFloat3Array");
    if (v25)
    {
      v26 = *v25;
    }

    else
    {
      v26 = 0;
    }

    qword_1EB658D90 = v26;
    v27 = dlsym(v2, "USKDataTypeFloatArray");
    if (v27)
    {
      v28 = *v27;
    }

    else
    {
      v28 = 0;
    }

    qword_1EB658D98 = v28;
    v29 = dlsym(v2, "USKDataTypeIntArray");
    if (v29)
    {
      v30 = *v29;
    }

    else
    {
      v30 = 0;
    }

    qword_1EB658DA0 = v30;
    v31 = dlsym(v2, "USKDataTypeObjectPath");
    if (v31)
    {
      v32 = *v31;
    }

    else
    {
      v32 = 0;
    }

    qword_1EB658DA8 = v32;
    v33 = dlsym(v2, "USKDataTypeObjectPathArray");
    if (v33)
    {
      v34 = *v33;
    }

    else
    {
      v34 = 0;
    }

    qword_1EB658DB0 = v34;
    v35 = dlsym(v2, "USKDataTypeQuatf");
    if (v35)
    {
      v36 = *v35;
    }

    else
    {
      v36 = 0;
    }

    qword_1EB658DB8 = v36;
    v37 = dlsym(v2, "USKDataTypeQuatfArray");
    if (v37)
    {
      v38 = *v37;
    }

    else
    {
      v38 = 0;
    }

    qword_1EB658DC0 = v38;
    v39 = dlsym(v2, "USKDataTypeStringArray");
    if (v39)
    {
      v40 = *v39;
    }

    else
    {
      v40 = 0;
    }

    qword_1EB658DC8 = v40;
    v41 = dlsym(v2, "USKDataTypeToken");
    if (v41)
    {
      v42 = *v41;
    }

    else
    {
      v42 = 0;
    }

    qword_1EB658DD0 = v42;
    v43 = dlsym(v2, "USKDataTypeTokenArray");
    if (v43)
    {
      v44 = *v43;
    }

    else
    {
      v44 = 0;
    }

    qword_1EB658DD8 = v44;
    v45 = dlsym(v2, "USKNodeTypeCamera");
    if (v45)
    {
      v46 = *v45;
    }

    else
    {
      v46 = 0;
    }

    qword_1EB658DE0 = v46;
    v47 = dlsym(v2, "USKNodeTypeMaterial");
    if (v47)
    {
      v48 = *v47;
    }

    else
    {
      v48 = 0;
    }

    qword_1EB658DE8 = v48;
    v49 = dlsym(v2, "USKNodeTypeMesh");
    if (v49)
    {
      v50 = *v49;
    }

    else
    {
      v50 = 0;
    }

    qword_1EB658DF0 = v50;
    v51 = dlsym(v2, "USKNodeTypeMeshGroup");
    if (v51)
    {
      v52 = *v51;
    }

    else
    {
      v52 = 0;
    }

    qword_1EB658DF8 = v52;
    v53 = dlsym(v2, "USKNodeTypeScope");
    if (v53)
    {
      v54 = *v53;
    }

    else
    {
      v54 = 0;
    }

    qword_1EB658E00 = v54;
    v55 = dlsym(v2, "USKNodeTypeShader");
    if (v55)
    {
      v56 = *v55;
    }

    else
    {
      v56 = 0;
    }

    qword_1EB658E08 = v56;
    v57 = dlsym(v2, "USKNodeTypeSkeletalAnimation");
    if (v57)
    {
      v58 = *v57;
    }

    else
    {
      v58 = 0;
    }

    qword_1EB658E10 = v58;
    v59 = dlsym(v2, "USKNodeTypeSkeleton");
    if (v59)
    {
      v60 = *v59;
    }

    else
    {
      v60 = 0;
    }

    qword_1EB658E18 = v60;
    v61 = dlsym(v2, "USKNodeTypeSkeletonRoot");
    if (v61)
    {
      v62 = *v61;
    }

    else
    {
      v62 = 0;
    }

    qword_1EB658E20 = v62;
    v63 = dlsym(v2, "USKNodeTypeBlendShape");
    if (v63)
    {
      v64 = *v63;
    }

    else
    {
      v64 = 0;
    }

    qword_1EB658E28 = v64;
    v65 = dlsym(v2, "USKNodeTypeTransform");
    if (v65)
    {
      v66 = *v65;
    }

    else
    {
      v66 = 0;
    }

    qword_1EB658E30 = v66;
    v67 = dlsym(v2, "USKRoleTypeColor");
    if (v67)
    {
      v68 = *v67;
    }

    else
    {
      v68 = 0;
    }

    qword_1EB658E38 = v68;
    v69 = dlsym(v2, "USKRoleTypeNone");
    if (v69)
    {
      v70 = *v69;
    }

    else
    {
      v70 = 0;
    }

    qword_1EB658E40 = v70;
    v71 = dlsym(v2, "USKRoleTypeNormal");
    if (v71)
    {
      v72 = *v71;
    }

    else
    {
      v72 = 0;
    }

    qword_1EB658E48 = v72;
    v73 = dlsym(v2, "USKRoleTypePoint");
    if (v73)
    {
      v74 = *v73;
    }

    else
    {
      v74 = 0;
    }

    qword_1EB658E50 = v74;
    v75 = dlsym(v2, "USKRoleTypeVector");
    if (v75)
    {
      v76 = *v75;
    }

    else
    {
      v76 = 0;
    }

    qword_1EB658E58 = v76;
    v77 = dlsym(v2, "USKRoleTypeTextureCoordinate");
    if (v77)
    {
      v78 = *v77;
    }

    else
    {
      v78 = 0;
    }

    qword_1EB658E60 = v78;
    v79 = dlsym(v2, "USKSchemaTypeBindingAPI");
    if (v79)
    {
      v80 = *v79;
    }

    else
    {
      v80 = 0;
    }

    qword_1EB658E68 = v80;
    byte_1EB658D28 = 1;
  }

  else
  {
    v81 = sub_1AF0D5194(0, v1);
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF925C(v81);
    }
  }
}

uint64_t sub_1AF338864(uint64_t a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  *(a1 + 16) = a5;
  *(a1 + 72) = 0;
  *(a1 + 64) = a1 + 72;
  *(a1 + 80) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 88) = objc_msgSend_setWithCapacity_(MEMORY[0x1E695DFA8], a2, 8, a4);
  *(a1 + 104) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 112) = 0;
  *(a1 + 128) = 0;
  *(a1 + 120) = a1 + 128;
  *(a1 + 152) = 0;
  *(a1 + 144) = a1 + 152;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  *(a1 + 168) = a1 + 176;
  *(a1 + 184) = 0;
  *(a1 + 200) = 0;
  *(a1 + 192) = a1 + 200;
  *(a1 + 208) = 0;
  *(a1 + 232) = 0;
  *(a1 + 224) = 0;
  *(a1 + 248) = a1 + 256;
  *(a1 + 216) = a1 + 224;
  *(a1 + 240) = 0;
  *(a1 + 256) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = a1 + 280;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = a1 + 328;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 416) = a1 + 424;
  *(a1 + 392) = a1 + 400;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 468) = 0u;
  *(a1 + 488) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 496) = xmmword_1AFE47B40;
  v7 = sub_1AF338AE8(a3, v6);
  *(a1 + 8) = v7;
  *(a1 + 24) = objc_msgSend_stringByAppendingString_(@"/", v8, v7);
  return a1;
}

void sub_1AF338A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char **a21)
{
  *(v21 - 88) = a1;
  sub_1AF338EFC(a20, *a21);
  _Unwind_Resume(*(v21 - 88));
}

uint64_t sub_1AF338AE8(void *a1, const char *a2)
{
  v17 = 0;
  v3 = objc_msgSend_regularExpressionWithPattern_options_error_(MEMORY[0x1E696AE70], a2, @"[^A-Za-z0-9]", 1, &v17);
  v6 = objc_msgSend_length(a1, v4, v5);
  v8 = objc_msgSend_stringByReplacingMatchesInString_options_range_withTemplate_(v3, v7, a1, 0, 0, v6, @"_");
  v11 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x1E696AB08], v9, v10);
  v13 = objc_msgSend_characterAtIndex_(v8, v12, 0);
  if (objc_msgSend_characterIsMember_(v11, v14, v13))
  {
    return objc_msgSend_stringByAppendingString_(@"_", v15, v8);
  }

  return v8;
}

uint64_t sub_1AF338BA4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x1B271C6B0](*v2, 0x1080C406BDE4C18);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t **sub_1AF338C1C(uint64_t **a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v4 = *v2;
      if (*v2)
      {
        sub_1AF112128(v4 + 64, *(v4 + 72));
        sub_1AF112128(v4 + 32, *(v4 + 40));
        v5 = *(v4 + 8);
        if (v5)
        {
          *(v4 + 16) = v5;
          operator delete(v5);
        }

        MEMORY[0x1B271C6B0](v4, 0x10A0C402AA64608);
      }

      ++v2;
    }

    while (v2 != v3);
  }

  v6 = a1[3];
  for (i = a1[4]; v6 != i; ++v6)
  {
    v8 = *v6;
    if (*v6)
    {
      sub_1AF112128(v8 + 72, *(v8 + 80));
      sub_1AF112128(v8 + 48, *(v8 + 56));
      sub_1AF112128(v8 + 24, *(v8 + 32));
      v9 = *v8;
      if (*v8)
      {
        *(v8 + 8) = v9;
        operator delete(v9);
      }

      MEMORY[0x1B271C6B0](v8, 0x10A0C400C584343);
    }
  }

  sub_1AF112128((a1 + 6), a1[7]);
  v10 = a1[3];
  if (v10)
  {
    a1[4] = v10;
    operator delete(v10);
  }

  v11 = *a1;
  if (*a1)
  {
    a1[1] = v11;
    operator delete(v11);
  }

  return a1;
}

void sub_1AF338D50(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1AF338D50(a1, *a2);
    sub_1AF338D50(a1, a2[1]);
    sub_1AF338DAC((a2 + 4));

    operator delete(a2);
  }
}

void sub_1AF338DAC(uint64_t a1)
{
  v2 = (a1 + 24);
  sub_1AF338DF4(&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_1AF338DF4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1AF338E48(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1AF338E48(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void sub_1AF338E98(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1AF338E98(a1, *a2);
    sub_1AF338E98(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void sub_1AF338EFC(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1AF338EFC(a1, *a2);
    sub_1AF338EFC(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_1AF338F60(uint64_t a1, const char *a2, uint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v4 = objc_msgSend_rootNode(*a1, a2, a3);
  v7 = objc_msgSend_childNodes(v4, v5, v6);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v37, v41, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v38;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(v7);
        }

        sub_1AF339E50(a1, *(*(&v37 + 1) + 8 * i), v11);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v15, &v37, v41, 16);
    }

    while (v12);
  }

  sub_1AF33A13C(a1 + 344, v10, v11);
  v18 = *(a1 + 368);
  v19 = *(a1 + 376);
  if (v18 != v19)
  {
    do
    {
      v20 = *v18;
      v21 = **v18;
      v22 = (*v18)[1];
      if (v21 == v22)
      {
LABEL_13:
        if (v21 != v22)
        {
          v23 = *v21;
          do
          {
            v36 = *v21;
            if (v23 != v36)
            {
              sub_1AF33AEA0(a1 + 248, &v36, &v36);
            }

            ++v21;
          }

          while (v21 != v22);
        }
      }

      else
      {
        while (sub_1AF33A3C0(*v21, v16, v17))
        {
          if (++v21 == v22)
          {
            v21 = *v20;
            v22 = v20[1];
            goto LABEL_13;
          }
        }
      }

      ++v18;
    }

    while (v18 != v19);
    v18 = *(a1 + 368);
    v19 = *(a1 + 376);
  }

  if (v18 != v19)
  {
    v24 = (a1 + 280);
    do
    {
      v25 = *(a1 + 272);
      if (v25 != v24)
      {
        v26 = *v18;
        do
        {
          if (*(v25[5] + 56) == v26)
          {
            v30 = **v26;
            if (v30)
            {
              v31 = v25[4];
              v32 = objc_msgSend_parentNode(v30, v16, v17);
              if (v32)
              {
                v33 = v32;
                do
                {
                  if (v31)
                  {
                    v34 = v31;
                    while (1)
                    {
                      v34 = objc_msgSend_parentNode(v34, v16, v17);
                      if (!v34)
                      {
                        break;
                      }

                      if (v33 == v34)
                      {
                        v35 = objc_msgSend_rootNode(*a1, v16, v17);
                        if (v35 != v33 && sub_1AF33A3C0(v33, v16, v17))
                        {
                          v26[12] = v33;
                        }

                        goto LABEL_25;
                      }
                    }
                  }

                  v33 = objc_msgSend_parentNode(v33, v16, v17);
                }

                while (v33);
              }
            }
          }

LABEL_25:
          v27 = v25[1];
          if (v27)
          {
            do
            {
              v28 = v27;
              v27 = *v27;
            }

            while (v27);
          }

          else
          {
            do
            {
              v28 = v25[2];
              v29 = *v28 == v25;
              v25 = v28;
            }

            while (!v29);
          }

          v25 = v28;
        }

        while (v28 != v24);
      }

      ++v18;
    }

    while (v18 != v19);
    v18 = *(a1 + 368);
    v19 = *(a1 + 376);
  }

  while (v18 != v19)
  {
    v36 = sub_1AF33A418(*v18, v16, v17);
    if (v36)
    {
      sub_1AF33AEA0(a1 + 96, &v36, &v36);
    }

    ++v18;
  }
}

void *sub_1AF339204(id *a1, const char *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = objc_msgSend_rootNode(*a1, a2, a3, 0);
  v7 = objc_msgSend_childNodes(v4, v5, v6);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v15, v19, 16);
  if (result)
  {
    v11 = result;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v7);
        }

        sub_1AF33AFDC(a1, *(*(&v15 + 1) + 8 * v13), v10);
        v13 = v13 + 1;
      }

      while (v11 != v13);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v14, &v15, v19, 16);
      v11 = result;
    }

    while (result);
  }

  return result;
}

void *sub_1AF3392F8(double *a1, void *a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_animationKeys(a2, a2, a3))
  {
    v7 = objc_msgSend_animationKeys(a2, v5, v6);
    if (objc_msgSend_count(v7, v8, v9))
    {
      v10 = objc_msgSend_animationKeys(a2, v5, v6);
      v13 = objc_msgSend_count(v10, v11, v12);
      if (v13)
      {
        v14 = v13;
        v15 = 0;
        while (1)
        {
          v16 = objc_msgSend_animationKeys(a2, v5, v6);
          v18 = objc_msgSend_objectAtIndexedSubscript_(v16, v17, v15);
          v20 = objc_msgSend_animationPlayerForKey_(a2, v19, v18);
          if (v20)
          {
            break;
          }

          if (v14 == ++v15)
          {
            goto LABEL_9;
          }
        }

        v21 = objc_msgSend_animation(v20, v5, v6);
        v24 = objc_msgSend_caAnimation(v21, v22, v23);
        sub_1AF33B1F8(a1, v24);
      }
    }
  }

LABEL_9:
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v25 = objc_msgSend_childNodes(a2, v5, v6, 0);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v32, v36, 16);
  if (result)
  {
    v28 = result;
    v29 = *v33;
    do
    {
      v30 = 0;
      do
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(v25);
        }

        sub_1AF3392F8(a1, *(*(&v32 + 1) + 8 * v30));
        v30 = v30 + 1;
      }

      while (v28 != v30);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v31, &v32, v36, 16);
      v28 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1AF339464(uint64_t result)
{
  v1 = *(result + 504);
  if (v1 == 0.0)
  {
    *(result + 504) = 0x3FA5555555555555;
    v1 = 0.0416666667;
  }

  v2 = *(result + 496);
  if (v2 >= 0.0)
  {
    v3 = 1.0 / v1 + 0.0;
    v4 = v3;
    if (vabdd_f64(v3, v4) >= 0.001)
    {
      if (1.0 - (v3 - v4) < 0.001)
      {
        v3 = v4 + 1.0;
      }
    }

    else
    {
      v3 = v3;
    }

    *(result + 480) = (v3 + 0.5);
    v5 = *(result + 488) / v1 + 0.0;
    v6 = v5;
    if (vabdd_f64(v5, v6) >= 0.001)
    {
      if (1.0 - (v5 - v6) < 0.001)
      {
        v5 = v6 + 1.0;
      }
    }

    else
    {
      v5 = v5;
    }

    *(result + 464) = v5;
    v7 = v2 / v1 + 0.0;
    v8 = v7;
    if (vabdd_f64(v7, v8) >= 0.001)
    {
      if (1.0 - (v7 - v8) < 0.001)
      {
        v7 = v8 + 1.0;
      }
    }

    else
    {
      v7 = v7;
    }

    *(result + 472) = v7;
  }

  return result;
}

void *sub_1AF339578(void *result, void *a2, char *a3, id **a4, uint64_t a5)
{
  v8 = a2;
  v9 = result;
  v87 = *MEMORY[0x1E69E9840];
  v84 = a2;
  v10 = result[32];
  if (v10)
  {
    v11 = result + 32;
    do
    {
      v12 = v10[4];
      v13 = v12 >= a2;
      v14 = v12 < a2;
      if (v13)
      {
        v11 = v10;
      }

      v10 = v10[v14];
    }

    while (v10);
    if (v11 != result + 32 && v11[4] <= a2)
    {
      return result;
    }
  }

  v15 = sub_1AF33A89C((result + 43), a2);
  if (v15 && v15[16])
  {
    a3 = v15[16];
  }

  v16 = sub_1AF33B47C(v9, a3, v8);
  v20 = objc_msgSend_stringByAppendingPathComponent_(a3, v17, v16);
  for (i = v9[46]; i != v9[47]; ++i)
  {
    v22 = *i;
    if (***i == v8)
    {
      goto LABEL_17;
    }
  }

  v22 = 0;
LABEL_17:
  v25 = (a4 | objc_msgSend_skinner(v8, v18, v19)) == 0;
  for (j = v9[46]; j != v9[47]; j += 8)
  {
    if (*(*j + 96) == v8)
    {
      v31 = qword_1EB658E20;
      v32 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v23, v20);
      v29 = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v33, v9[7], v32, v31);
      v30 = 0;
      a5 = 1;
      if (!v29)
      {
        goto LABEL_59;
      }

      goto LABEL_44;
    }
  }

  if (v22)
  {
    v29 = sub_1AF33B600(v22, v9[7], v20);
    v30 = 1;
    a4 = v22;
    if (!v29)
    {
      goto LABEL_59;
    }

    goto LABEL_44;
  }

  if (objc_msgSend_model(v8, v23, v24))
  {
    if (!v25)
    {
      v39 = v9[38];
      v38 = v9[39];
      if (v39 >= v38)
      {
        v41 = v9[37];
        v42 = (v39 - v41) >> 4;
        v43 = v42 + 1;
        if ((v42 + 1) >> 60)
        {
          sub_1AF10A1D0();
        }

        v44 = v38 - v41;
        if (v44 >> 3 > v43)
        {
          v43 = v44 >> 3;
        }

        if (v44 >= 0x7FFFFFFFFFFFFFF0)
        {
          v45 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v45 = v43;
        }

        if (v45)
        {
          sub_1AF33C820((v9 + 37), v45);
        }

        v75 = (16 * v42);
        *v75 = v8;
        v75[1] = a4;
        v40 = 16 * v42 + 16;
        v76 = v9[37];
        v77 = v9[38] - v76;
        v78 = 16 * v42 - v77;
        memcpy(v75 - v77, v76, v77);
        v79 = v9[37];
        v9[37] = v78;
        v9[38] = v40;
        v9[39] = 0;
        if (v79)
        {
          operator delete(v79);
        }
      }

      else
      {
        *v39 = v8;
        v39[1] = a4;
        v40 = (v39 + 2);
      }

      v9[38] = v40;
      if ((a5 & 1) == 0)
      {
        a5 = 0;
        goto LABEL_59;
      }

      v29 = sub_1AF33B978(v9, v8, v20, v16);
      v85 = &v84;
      v30 = 0;
      sub_1AF33AD00((v9 + 40), &v84, &unk_1AFE22A40, &v85)[5] = v29;
      a5 = 1;
      v8 = v84;
      if (!v29)
      {
        goto LABEL_59;
      }

      goto LABEL_44;
    }

    v29 = sub_1AF33B978(v9, v8, v20, v16);
    a4 = 0;
  }

  else
  {
    if (objc_msgSend_camera(v8, v27, v28))
    {
      v36 = objc_msgSend_camera(v8, v34, v35);
      v37 = sub_1AF33BAC0(v9, v8, v20, v36);
    }

    else
    {
      v46 = qword_1EB658E30;
      v47 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v34, v20);
      v37 = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v48, v9[7], v47, v46);
    }

    v29 = v37;
  }

  v30 = 0;
  if (!v29)
  {
    goto LABEL_59;
  }

LABEL_44:
  if ((objc_msgSend_isHidden(v8, v27, v28) & 1) != 0 || (objc_msgSend_opacity(v84, v49, v50), v52 == 0.0))
  {
    v53 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v49, v29, @"visibility", qword_1EB658DD0, qword_1EB658E40);
    v55 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v54, @"invisible");
    objc_msgSend_setTokenValue_(v53, v56, v55);
  }

  v57 = objc_msgSend_animationKeys(v84, v49, v51);
  v60 = v84;
  if (v57)
  {
    v61 = objc_msgSend_animationKeys(v84, v58, v84);
    v64 = objc_msgSend_count(v61, v62, v63);
    v60 = v84;
    if (v64)
    {
      v65 = v9[13];
      if (!v65)
      {
        goto LABEL_57;
      }

      v66 = v9 + 13;
      do
      {
        v67 = v65[4];
        v13 = v67 >= v84;
        v68 = v67 < v84;
        if (v13)
        {
          v66 = v65;
        }

        v65 = v65[v68];
      }

      while (v65);
      if (v66 == v9 + 13 || (v59 = v66[4], v84 < v59))
      {
LABEL_57:
        sub_1AF33BD2C(v9, v29, v84);
        v60 = v84;
      }
    }
  }

  sub_1AF33BDE0(v9, v29, v60, v30, v59);
  v8 = v84;
LABEL_59:
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v69 = objc_msgSend_childNodes(v8, v27, v28, 0);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v70, &v80, v86, 16);
  v71 = result;
  if (result)
  {
    v72 = *v81;
    do
    {
      v73 = 0;
      do
      {
        if (*v81 != v72)
        {
          objc_enumerationMutation(v69);
        }

        sub_1AF339578(v9, *(*(&v80 + 1) + 8 * v73), v20, a4, a5);
        v73 = (v73 + 1);
      }

      while (v71 != v73);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v74, &v80, v86, 16);
      v71 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1AF339A70(uint64_t a1, const char *a2)
{
  result = *(a1 + 32);
  if (!result)
  {
    v4 = objc_msgSend_stringByAppendingPathComponent_(*(a1 + 24), a2, @"Geom");
    *(a1 + 32) = v4;
    v6 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v5, v4);
    objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v7, *(a1 + 56), v6, qword_1EB658E00);
    return *(a1 + 32);
  }

  return result;
}

void *sub_1AF339ADC(id *a1, const char *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = objc_msgSend_rootNode(*a1, a2, a3, 0);
  v7 = objc_msgSend_childNodes(v4, v5, v6);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v15, v19, 16);
  if (result)
  {
    v11 = result;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v7);
        }

        sub_1AF342BF4(a1, *(*(&v15 + 1) + 8 * v13), v10);
        v13 = v13 + 1;
      }

      while (v11 != v13);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v14, &v15, v19, 16);
      v11 = result;
    }

    while (result);
  }

  return result;
}

uint64_t **sub_1AF339BD0(uint64_t **result, const char *a2)
{
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    do
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      if (v5)
      {
        v6 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, a2, v5, @"blendShapes", qword_1EB658DD8, qword_1EB658E40);
        result = objc_msgSend_setTokenArray_(v6, v7, *(v4 + 24));
      }

      ++v2;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_1AF339C58(void *result, const char *a2, char *a3)
{
  v4 = result[37];
  v5 = result[38];
  if (v4 != v5)
  {
    v6 = result + 35;
    v7 = result + 41;
    do
    {
      v8 = *v4;
      v9 = v4[1];
      v28 = *v4;
      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v20 = *v6;
        if (!*v6)
        {
          goto LABEL_29;
        }

        v21 = result + 35;
        do
        {
          v22 = v20[4];
          v18 = v22 >= v8;
          v23 = v22 < v8;
          if (v18)
          {
            v21 = v20;
          }

          v20 = v20[v23];
        }

        while (v20);
        if (v21 == v6)
        {
          goto LABEL_29;
        }

        if (v8 < v21[4])
        {
          goto LABEL_29;
        }

        v29 = &v28;
        v10 = sub_1AF33A710((result + 34), &v28, &unk_1AFE22A40, &v29)[5];
        v9 = *(v10 + 56);
        if (!v9)
        {
          goto LABEL_29;
        }
      }

      v11 = v9[16];
      if (!v11)
      {
        v11 = sub_1AF339A70(result, a2);
      }

      v12 = sub_1AF33B47C(result, v11, v28);
      v14 = objc_msgSend_stringByAppendingPathComponent_(v11, v13, v12);
      v15 = result[41];
      if (!v15)
      {
        goto LABEL_15;
      }

      v16 = result + 41;
      do
      {
        v17 = v15[4];
        v18 = v17 >= v28;
        v19 = v17 < v28;
        if (v18)
        {
          v16 = v15;
        }

        v15 = v15[v19];
      }

      while (v15);
      if (v16 != v7 && v28 >= v16[4])
      {
        v29 = &v28;
        a3 = sub_1AF33AD00((result + 40), &v28, &unk_1AFE22A40, &v29)[5];
        if (a3)
        {
LABEL_16:
          if (v9[16])
          {
            sub_1AF343810(result, v28, a3, v9, v10);
          }
        }
      }

      else
      {
LABEL_15:
        a3 = sub_1AF33B978(result, v28, v14, v12);
        if (a3)
        {
          goto LABEL_16;
        }
      }

LABEL_29:
      v4 += 2;
    }

    while (v4 != v5);
  }

  v24 = result[46];
  v25 = result[47];
  while (v24 != v25)
  {
    v26 = *v24;
    if (sub_1AF33A418(*v24, a2, a3))
    {
      v27 = sub_1AF343A48(result, v26, a3);
      if (v27)
      {
        sub_1AF3443A8(v26, v27);
      }
    }

    ++v24;
  }
}

void *sub_1AF339E50(void *a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = a2;
  if (objc_msgSend_skinner(a2, a2, a3))
  {
    v7 = objc_msgSend_skinner(a2, v5, v6);
    objc_msgSend_skeleton(v7, v8, v9);
    operator new();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = objc_msgSend_childNodes(a2, v5, v6, 0);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v17, v22, 16);
  v13 = result;
  if (result)
  {
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v10);
        }

        sub_1AF339E50(a1, *(*(&v17 + 1) + 8 * v15));
        v15 = v15 + 1;
      }

      while (v13 != v15);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v16, &v17, v22, 16);
      v13 = result;
    }

    while (result);
  }

  return result;
}

void sub_1AF33A13C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (*a1 != v4)
  {
    do
    {
      v6 = *v3;
      v7 = (*v3)[1];
      if ((*v3)[2] != v7)
      {
        if (!*v6)
        {
          *v6 = sub_1AF33A7E0(a1, *v3 + 8, a3);
          v7 = v6[1];
        }

        v8 = sub_1AF33A89C(a1, *v7);
        if (!v8)
        {
          sub_1AF33A8FC(a1);
        }

        v9 = v6[1];
        v10 = v6[2];
        while (v9 != v10)
        {
          v11 = *v9++;
          v31 = v11;
          sub_1AF33AEA0(a1 + 48, &v31, &v31);
        }

        sub_1AF33A998(v6, v8);
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v12 = *(a1 + 24);
        v13 = *(a1 + 32);
        if (v12 != v13)
        {
          do
          {
            v14 = *v12;
            v30 = v14;
            if (v14 != v8)
            {
              v15 = v8[1];
              v16 = v15 - *v8;
              if (v15 != *v8)
              {
                v17 = 0;
                v18 = **v14;
                v19 = v16 >> 3;
                if (v19 <= 1)
                {
                  v19 = 1;
                }

                while (*(*v8 + 8 * v17) != v18)
                {
                  if (v19 == ++v17)
                  {
                    goto LABEL_25;
                  }
                }

                if (v17 != -1)
                {
                  v20 = *a1;
                  v21 = *(a1 + 8);
                  while (v20 != v21)
                  {
                    if ((*v20)[7] == v30)
                    {
                      sub_1AF33A998(*v20, v8);
                    }

                    ++v20;
                  }

                  sub_1AF141BD4(&v31, &v30);
                }
              }
            }

LABEL_25:
            ++v12;
          }

          while (v12 != v13);
          v22 = v31;
          v23 = v32;
          if (v31 != v32)
          {
            do
            {
              v24 = *v22;
              v26 = *(a1 + 24);
              v25 = *(a1 + 32);
              if (v26 != v25)
              {
                v27 = v25 - (v26 + 8);
                if (v25 != v26 + 8)
                {
                  memmove(*(a1 + 24), (v26 + 8), v25 - (v26 + 8));
                }

                *(a1 + 32) = v26 + v27;
              }

              if (v24)
              {
                sub_1AF112128(v24 + 72, *(v24 + 80));
                sub_1AF112128(v24 + 48, *(v24 + 56));
                sub_1AF112128(v24 + 24, *(v24 + 32));
                v28 = *v24;
                if (*v24)
                {
                  *(v24 + 8) = v28;
                  operator delete(v28);
                }

                MEMORY[0x1B271C6B0](v24, 0x10A0C400C584343);
              }

              ++v22;
            }

            while (v22 != v23);
            v22 = v31;
          }

          if (v22)
          {
            v32 = v22;
            operator delete(v22);
          }
        }
      }

      ++v3;
    }

    while (v3 != v4);
    v3 = *a1;
    v4 = *(a1 + 8);
  }

  while (v3 != v4)
  {
    v29 = *v3++;
    sub_1AF33AA5C(v29);
  }
}

void sub_1AF33A3A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1AF33A418(void ***a1, const char *a2, uint64_t a3)
{
  v3 = **a1;
  if (v3)
  {
    while (1)
    {
      v5 = objc_msgSend_animationKeys(v3, a2, a3);
      if (objc_msgSend_count(v5, v6, v7))
      {
        break;
      }

      v3 = objc_msgSend_parentNode(v3, v8, v9);
      if (!v3)
      {

        return sub_1AF33AF6C(a1, a2, a3);
      }
    }
  }

  return v3;
}

__n128 sub_1AF33A488(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v12 = a2;
  sub_1AF33A510(a1 + 8, &v12);
  v13 = &v12;
  v5 = sub_1AF33A62C(a1 + 32, &v12, &unk_1AFE22A40, &v13);
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[3];
  *(v5 + 5) = a3[2];
  *(v5 + 6) = v8;
  *(v5 + 3) = v6;
  *(v5 + 4) = v7;
  result = a3[4];
  v10 = a3[5];
  v11 = a3[7];
  *(v5 + 9) = a3[6];
  *(v5 + 10) = v11;
  *(v5 + 7) = result;
  *(v5 + 8) = v10;
  return result;
}

void sub_1AF33A510(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_1AF10A1D0();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_1AF33A5E4(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_1AF33A5E4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1AF10A1D0();
}

void *sub_1AF33A62C(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void *sub_1AF33A710(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void *sub_1AF33A7E0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a2 + 1) - *a2;
  if (!(v4 >> 3))
  {
    return 0;
  }

  if (v4 >> 3 == 1)
  {
    return *v3;
  }

  v6 = *v3;
  if (v4 < 9)
  {
    return *v3;
  }

  v8 = 1;
  do
  {
    if (v6)
    {
      v9 = *(v3 + 8 * v8);
      while (!v9)
      {
LABEL_13:
        result = objc_msgSend_parentNode(v6, a2, a3);
        v6 = result;
        if (!result)
        {
          goto LABEL_16;
        }
      }

      result = v9;
      while (v6 != result)
      {
        result = objc_msgSend_parentNode(result, a2, a3);
        if (!result)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      result = 0;
    }

LABEL_16:
    ++v8;
    v3 = *a2;
    v6 = result;
  }

  while (v8 < (*(a2 + 1) - *a2) >> 3);
  return result;
}

uint64_t *sub_1AF33A89C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  while (v2 != v3)
  {
    result = *v2;
    v5 = **v2;
    v6 = (*v2)[1];
    v7 = v6 - v5;
    if (v6 != v5)
    {
      v8 = 0;
      v9 = v7 >> 3;
      if (v9 <= 1)
      {
        v9 = 1;
      }

      while (*(v5 + 8 * v8) != a2)
      {
        if (v9 == ++v8)
        {
          goto LABEL_10;
        }
      }

      if (v8 != -1)
      {
        return result;
      }
    }

LABEL_10:
    ++v2;
  }

  return 0;
}

__n128 sub_1AF33A998(void *a1, uint64_t a2)
{
  a1[7] = a2;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; *(v8 + 8) = v13)
  {
    v5 = *v2++;
    v15 = v5;
    v16 = &v15;
    v6 = sub_1AF33A62C((a1 + 4), &v15, &unk_1AFE22A40, &v16);
    v7 = a1[7];
    v16 = &v15;
    v8 = sub_1AF33A62C(v7 + 72, &v15, &unk_1AFE22A40, &v16);
    v9 = *(v6 + 3);
    v10 = *(v6 + 4);
    v11 = *(v6 + 6);
    *(v8 + 5) = *(v6 + 5);
    *(v8 + 6) = v11;
    *(v8 + 3) = v9;
    *(v8 + 4) = v10;
    result = *(v6 + 7);
    v13 = *(v6 + 8);
    v14 = *(v6 + 10);
    *(v8 + 9) = *(v6 + 9);
    *(v8 + 10) = v14;
    *(v8 + 7) = result;
  }

  return result;
}

void *sub_1AF33AA5C(void *result)
{
  v9 = 0;
  v1 = result[1];
  if (result[2] != v1)
  {
    v2 = result;
    v3 = 0;
    do
    {
      v4 = *v2[7];
      v5 = *(v2[7] + 8) - v4;
      if (v5)
      {
        v6 = 0;
        v7 = *(v1 + 8 * v3);
        v8 = v5 >> 3;
        if ((v5 >> 3) <= 1)
        {
          v8 = 1;
        }

        while (*(v4 + 8 * v6) != v7)
        {
          if (v8 == ++v6)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v6 = -1;
      }

      v10 = &v9;
      result = sub_1AF33ADD0((v2 + 8), &v9, &unk_1AFE22A40, &v10);
      result[5] = v6;
      v3 = v9 + 1;
      v9 = v3;
      v1 = v2[1];
    }

    while (v3 < (v2[2] - v1) >> 3);
  }

  return result;
}

void *sub_1AF33AB28(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v40 = a2;
  sub_1AF33A510(a1, &v40);
  v7 = objc_msgSend_name(v40, v5, v6);
  v9 = sub_1AF338AE8(v7, v8);
  v11 = objc_msgSend_stringByAppendingPathComponent_(a3, v10, v9);
  v41 = &v40;
  sub_1AF33AD00(a1 + 24, &v40, &unk_1AFE22A40, &v41)[5] = v11;
  objc_msgSend_transform(v40, v12, v13);
  v34 = vcvtq_f64_f32(*v15.f32);
  v35 = vcvt_hight_f64_f32(v14);
  v32 = vcvtq_f64_f32(*v16.f32);
  v33 = vcvtq_f64_f32(*v14.f32);
  v30 = vcvtq_f64_f32(*v17.f32);
  v31 = vcvt_hight_f64_f32(v15);
  v41 = &v40;
  v28 = vcvt_hight_f64_f32(v17);
  v29 = vcvt_hight_f64_f32(v16);
  v18 = sub_1AF33A62C(a1 + 48, &v40, &unk_1AFE22A40, &v41);
  v18[3] = v33;
  v18[4] = v35;
  v18[5] = v34;
  v18[6] = v31;
  v18[7] = v32;
  v18[8] = v29;
  v18[9] = v30;
  v18[10] = v28;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v21 = objc_msgSend_childNodes(v40, v19, v20);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v36, v42, 16);
  if (result)
  {
    v24 = result;
    v25 = *v37;
    do
    {
      v26 = 0;
      do
      {
        if (*v37 != v25)
        {
          objc_enumerationMutation(v21);
        }

        sub_1AF33AB28(a1, *(*(&v36 + 1) + 8 * v26), v11);
        v26 = v26 + 1;
      }

      while (v24 != v26);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v27, &v36, v42, 16);
      v24 = result;
    }

    while (result);
  }

  return result;
}

void *sub_1AF33AD00(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void *sub_1AF33ADD0(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void *sub_1AF33AEA0(uint64_t a1, unint64_t *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1AF33AF6C(uint64_t *a1, const char *a2, uint64_t a3)
{
  v7 = *a1;
  if (a1[1] == *a1)
  {
    return 0;
  }

  v14 = v4;
  v15 = v3;
  v16 = v5;
  v17 = v6;
  v9 = 0;
  while (1)
  {
    v10 = objc_msgSend_animationKeys(*(v7 + 8 * v9), a2, a3, v14, v15, v16, v17);
    if (objc_msgSend_count(v10, v11, v12))
    {
      break;
    }

    ++v9;
    v7 = *a1;
    if (v9 >= (a1[1] - *a1) >> 3)
    {
      return 0;
    }
  }

  return *(*a1 + 8 * v9);
}

void *sub_1AF33AFDC(void *a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v24 = a2;
  if (objc_msgSend_model(a2, a2, a3) && objc_msgSend_morpher(a2, v5, v6))
  {
    v7 = objc_msgSend_morpher(a2, v5, v6);
    v10 = objc_msgSend_weights(v7, v8, v9);
    objc_msgSend_count(v10, v11, v12);
    operator new();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = objc_msgSend_childNodes(a2, v5, v6, 0);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v20, v25, 16);
  v16 = result;
  if (result)
  {
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v13);
        }

        sub_1AF33AFDC(a1, *(*(&v20 + 1) + 8 * v18));
        v18 = v18 + 1;
      }

      while (v16 != v18);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v19, &v20, v25, 16);
      v16 = result;
    }

    while (result);
  }

  return result;
}

unint64_t sub_1AF33B1F8(double *a1, void *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_1AF33B408(a1, a2, v4);
  }

  else
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      v8 = objc_msgSend_keyTimes(a2, v6, v7);
      result = objc_msgSend_count(v8, v9, v10);
      if (result >= 2)
      {
        v13 = objc_msgSend_count(v8, v11, v12);
        v15 = objc_msgSend_objectAtIndexedSubscript_(v8, v14, v13 - 1);
        objc_msgSend_doubleValue(v15, v16, v17);
        v19 = v18;
        v21 = objc_msgSend_objectAtIndexedSubscript_(v8, v20, 0);
        result = objc_msgSend_doubleValue(v21, v22, v23);
        v27 = v19 - v26;
        if (v27 >= 0.0001)
        {
          objc_msgSend_duration(a2, v24, v25);
          v29 = v28 / v27;
          v31 = objc_msgSend_objectAtIndexedSubscript_(v8, v30, 0);
          objc_msgSend_doubleValue(v31, v32, v33);
          v35 = v34;
          objc_msgSend_beginTime(a2, v36, v37);
          v41 = v40 + v35 * v29;
          v42 = a1[62];
          if (v42 >= 0.0)
          {
            v43 = a1[61];
            if (v43 > v41)
            {
              v43 = v41;
            }

            a1[61] = v43;
            if (v42 >= v41)
            {
              v41 = v42;
            }
          }

          else
          {
            a1[61] = v41;
          }

          a1[62] = v41;
          v44 = objc_msgSend_count(v8, v38, v39);
          v46 = objc_msgSend_objectAtIndexedSubscript_(v8, v45, v44 - 1);
          objc_msgSend_doubleValue(v46, v47, v48);
          v50 = v49;
          objc_msgSend_beginTime(a2, v51, v52);
          v56 = v55 + v50 * v29;
          v57 = a1[62];
          if (v57 >= 0.0)
          {
            v58 = a1[61];
            if (v58 > v56)
            {
              v58 = v56;
            }

            a1[61] = v58;
            if (v57 >= v56)
            {
              v56 = v57;
            }
          }

          else
          {
            a1[61] = v56;
          }

          a1[62] = v56;
          result = objc_msgSend_count(v8, v53, v54);
          if (result >= 2)
          {
            v60 = objc_msgSend_objectAtIndexedSubscript_(v8, v59, 1);
            objc_msgSend_doubleValue(v60, v61, v62);
            v64 = v63;
            v66 = objc_msgSend_objectAtIndexedSubscript_(v8, v65, 0);
            result = objc_msgSend_doubleValue(v66, v67, v68);
            v70 = v29 * (v64 - v69);
            if (v70 > 0.001)
            {
              v71 = a1[63];
              if (v71 == 0.0 || v71 > v70)
              {
                a1[63] = v70;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void *sub_1AF33B408(double *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_animations(a2, a2, a3);
  result = objc_msgSend_count(v5, v6, v7);
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v12 = objc_msgSend_animations(a2, v9, v10);
      v14 = objc_msgSend_objectAtIndex_(v12, v13, i);
      sub_1AF33B1F8(a1, v14);
      v17 = objc_msgSend_animations(a2, v15, v16);
      result = objc_msgSend_count(v17, v18, v19);
    }
  }

  return result;
}

void *sub_1AF33B47C(uint64_t a1, char *a2, void *a3)
{
  v6 = objc_msgSend_name(a3, a2, a3);
  if (!v6 && (!objc_msgSend_model(a3, v7, v8) || (v11 = objc_msgSend_model(a3, v7, v10), (v6 = objc_msgSend_name(v11, v12, v13)) == 0)) || (v9 = v6, !objc_msgSend_length(v6, v7, v8)))
  {
    v14 = MEMORY[0x1E696AD98];
    v15 = *(a1 + 240);
    *(a1 + 240) = v15 + 1;
    v16 = objc_msgSend_numberWithUnsignedLong_(v14, v7, v15);
    v19 = objc_msgSend_stringValue(v16, v17, v18);
    v9 = objc_msgSend_stringByAppendingString_(@"Node_", v20, v19);
  }

  v21 = sub_1AF338AE8(v9, v7);
  v23 = objc_msgSend_stringByAppendingPathComponent_(a2, v22, v21);
  v26 = objc_msgSend_UTF8String(v23, v24, v25);
  sub_1AF13D250(&__p, v26);
  if (a1 + 72 != sub_1AF33C394(a1 + 64, &__p))
  {
    v28 = objc_msgSend_stringByAppendingString_(v21, v27, @"_");
    v29 = MEMORY[0x1E696AD98];
    v30 = *(a1 + 240);
    *(a1 + 240) = v30 + 1;
    v32 = objc_msgSend_numberWithUnsignedLong_(v29, v31, v30);
    v35 = objc_msgSend_stringValue(v32, v33, v34);
    v21 = objc_msgSend_stringByAppendingString_(v28, v36, v35);
    v38 = objc_msgSend_stringByAppendingPathComponent_(a2, v37, v21);
    v41 = objc_msgSend_UTF8String(v38, v39, v40);
    sub_1AF2737B0(&__p, v41);
  }

  sub_1AF33C414((a1 + 64), &__p, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v21;
}

void sub_1AF33B5E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AF33B600(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 104);
  if (!v3)
  {
    *(a1 + 128) = a3;
    v6 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], a2, (*(a1 + 8) - *a1) >> 3);
    v50 = 0;
    v51 = 0;
    v52 = 0;
    sub_1AF33C630(&v50, (*(a1 + 8) - *a1) >> 3);
    __p = 0;
    v48 = 0;
    v49 = 0;
    sub_1AF33C630(&__p, (*(a1 + 8) - *a1) >> 3);
    v8 = *a1;
    v9 = *(a1 + 8);
    if (*a1 != v9)
    {
      v10 = (a1 + 80);
      do
      {
        v46 = *v8;
        if (v46)
        {
          *&v45[0] = &v46;
          v11 = sub_1AF33AD00(a1 + 24, &v46, &unk_1AFE22A40, v45);
          objc_msgSend_addObject_(v6, v12, v11[5]);
          *&v45[0] = &v46;
          v13 = sub_1AF33A62C(a1 + 48, &v46, &unk_1AFE22A40, v45);
          sub_1AF33C6D0(&v50, v13 + 3);
          v16 = *v10;
          if (!*v10)
          {
            goto LABEL_13;
          }

          v17 = (a1 + 80);
          do
          {
            v18 = v16[4];
            v19 = v18 >= v46;
            v20 = v18 < v46;
            if (v19)
            {
              v17 = v16;
            }

            v16 = v16[v20];
          }

          while (v16);
          if (v17 != v10 && v46 >= v17[4])
          {
            *&v45[0] = &v46;
            v25 = sub_1AF33A62C(a1 + 72, &v46, &unk_1AFE22A40, v45);
            sub_1AF33C6D0(&__p, v25 + 3);
          }

          else
          {
LABEL_13:
            objc_msgSend_worldTransform(v46, v14, v15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
            v45[0] = vcvtq_f64_f32(*v21.f32);
            v45[1] = vcvt_hight_f64_f32(v21);
            v45[2] = vcvtq_f64_f32(*v22.f32);
            v45[3] = vcvt_hight_f64_f32(v22);
            v45[4] = vcvtq_f64_f32(*v23.f32);
            v45[5] = vcvt_hight_f64_f32(v23);
            v45[6] = vcvtq_f64_f32(*v24.f32);
            v45[7] = vcvt_hight_f64_f32(v24);
            sub_1AF33C6D0(&__p, v45);
          }
        }

        ++v8;
      }

      while (v8 != v9);
    }

    v26 = *(a1 + 128);
    if (*(a1 + 96))
    {
      v28 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v7, v26);
      v3 = 0;
    }

    else
    {
      v29 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v7, v26);
      v3 = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v30, a2, v29, qword_1EB658E20);
      v32 = objc_msgSend_stringByAppendingPathComponent_(*(a1 + 128), v31, @"Skeleton");
      v28 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v33, v32);
    }

    *(a1 + 112) = v28;
    v34 = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v27, a2);
    *(a1 + 104) = v34;
    v36 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v35, v34, @"joints", qword_1EB658DC8, qword_1EB658E40);
    objc_msgSend_setStringArray_(v36, v37, v6);
    v39 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v38, *(a1 + 104), @"restTransforms", qword_1EB658D60, qword_1EB658E40);
    objc_msgSend_setDouble4x4Array_count_(v39, v40, v50, (v51 - v50) >> 7);
    v42 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v41, *(a1 + 104), @"bindTransforms", qword_1EB658D60, qword_1EB658E40);
    objc_msgSend_setDouble4x4Array_count_(v42, v43, __p, (v48 - __p) >> 7);
    if (!v3)
    {
      v3 = *(a1 + 104);
    }

    if (__p)
    {
      v48 = __p;
      operator delete(__p);
    }

    if (v50)
    {
      v51 = v50;
      operator delete(v50);
    }
  }

  return v3;
}

void sub_1AF33B934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1AF33B978(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v25 = a2;
  v6 = *(a1 + 424);
  if (v6)
  {
    v8 = a1 + 424;
    do
    {
      v9 = *(v6 + 32);
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v8 = v6;
      }

      v6 = *(v6 + 8 * v11);
    }

    while (v6);
    if (v8 != a1 + 424 && *(v8 + 32) <= a2)
    {
      v26 = &v25;
      v12 = sub_1AF33A710(a1 + 416, &v25, &unk_1AFE22A40, &v26);
      sub_1AF33C868(v12[5], *(a1 + 56), v4);
      v4 = objc_msgSend_stringByAppendingPathComponent_(v4, v13, a4);
      a2 = v25;
    }
  }

  if (!sub_1AF33C938(a1, a2, a3))
  {
    return 0;
  }

  v15 = qword_1EB658DF0;
  v16 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v14, v4);
  v18 = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v17, *(a1 + 56), v16, v15);
  v21 = objc_msgSend_model(v25, v19, v20);
  sub_1AF33C9D4(a1, v18, v4, v21);
  if (objc_msgSend_morpher(v25, v22, v23))
  {
    sub_1AF33DC24(a1, v18, v4, v25);
  }

  return v18;
}

uint64_t sub_1AF33BAC0(uint64_t a1, const char *a2, uint64_t a3, void *a4)
{
  v6 = qword_1EB658DE0;
  v7 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, a2, a3);
  v9 = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v8, *(a1 + 56), v7, v6);
  if (objc_msgSend_usesOrthographicProjection(a4, v10, v11))
  {
    v13 = @"orthographic";
  }

  else
  {
    v13 = @"perspective";
  }

  v14 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v12, v9, @"projection", qword_1EB658DD0, qword_1EB658E40);
  v16 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v15, v13);
  objc_msgSend_setTokenValue_(v14, v17, v16);
  if ((objc_msgSend_usesOrthographicProjection(a4, v18, v19) & 1) == 0)
  {
    objc_msgSend_fieldOfView(a4, v20, v21);
    v23 = tan(v22 / 180.0 * 3.14159265 * 0.5);
    objc_msgSend_focalLength(a4, v24, v25);
    *&v23 = v23 * v26 + v23 * v26;
    v28 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v27, v9, @"horizontalAperture", qword_1EB658D68, qword_1EB658E40);
    LODWORD(v29) = LODWORD(v23);
    objc_msgSend_setFloatValue_(v28, v30, v31, v29);
    v33 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v32, v9, @"verticalAperture", qword_1EB658D68, qword_1EB658E40);
    LODWORD(v34) = LODWORD(v23);
    objc_msgSend_setFloatValue_(v33, v35, v36, v34);
  }

  v37 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v20, v9, @"focalLength", qword_1EB658D68, qword_1EB658E40);
  objc_msgSend_focalLength(a4, v38, v39);
  objc_msgSend_setFloatValue_(v37, v40, v41);
  v43 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v42, v9, @"clippingRange", qword_1EB658D70, qword_1EB658E40);
  objc_msgSend_zNear(a4, v44, v45);
  v70 = v46;
  objc_msgSend_zFar(a4, v47, v48);
  objc_msgSend_setFloat2Value_(v43, v49, v50, COERCE_DOUBLE(__PAIR64__(v51, v70)));
  if (objc_msgSend_depthOfField(a4, v52, v53))
  {
    v55 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v54, v9, @"fStop", qword_1EB658D68, qword_1EB658E40);
    v58 = objc_msgSend_depthOfField(a4, v56, v57);
    objc_msgSend_fStop(v58, v59, v60);
    objc_msgSend_setFloatValue_(v55, v61, v62);
    v64 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v63, v9, @"focusDistance", qword_1EB658D68, qword_1EB658E40);
    objc_msgSend_focusDistance(a4, v65, v66);
    objc_msgSend_setFloatValue_(v64, v67, v68);
  }

  return v9;
}

void *sub_1AF33BD2C(uint64_t a1, const char *a2, void *a3)
{
  v6 = objc_msgSend_animationKeys(a3, a2, a3);
  result = objc_msgSend_count(v6, v7, v8);
  if (result)
  {
    v12 = result;
    v13 = 0;
    while (1)
    {
      v14 = objc_msgSend_animationKeys(a3, v10, v11);
      v16 = objc_msgSend_objectAtIndexedSubscript_(v14, v15, v13);
      result = objc_msgSend_animationPlayerForKey_(a3, v17, v16);
      if (result)
      {
        break;
      }

      if (v12 == ++v13)
      {
        return result;
      }
    }

    v18 = objc_msgSend_animation(result, v10, v11);
    v21 = objc_msgSend_caAnimation(v18, v19, v20);

    return sub_1AF341FE8(a1, a2, v21);
  }

  return result;
}

uint64_t sub_1AF33BDE0@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, void *a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  objc_msgSend_transform(a3, a2, a3);
  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v11, *MEMORY[0x1E69E9B18]), vceqq_f32(v12, *(MEMORY[0x1E69E9B18] + 16))), vandq_s8(vceqq_f32(v13, *(MEMORY[0x1E69E9B18] + 32)), vceqq_f32(v14, *(MEMORY[0x1E69E9B18] + 48))))) & 0x80000000) == 0)
  {
    if (objc_msgSend_count(*(a1 + 88), v9, v10))
    {
      if ((objc_msgSend_containsObject_(*(a1 + 88), v9, @"xformOp:transform") & 1) == 0)
      {
        objc_msgSend_position(a3, v9, v15);
        if ((VFXVector3EqualToVector3(v16, 0) & 1) == 0 && (objc_msgSend_containsObject_(*(a1 + 88), v17, @"xformOp:translate") & 1) == 0)
        {
          v19 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v17, a2, @"xformOp:translate", qword_1EB658D50, qword_1EB658E40);
          objc_msgSend_position(a3, v20, v21);
          v113 = v22;
          objc_msgSend_position(a3, v23, v24);
          v114 = vcvtq_f64_f32(__PAIR64__(v25, v113));
          objc_msgSend_position(a3, v26, v27);
          v28.f64[0] = *&v28.f64[1];
          v118 = v114;
          v119 = v28;
          objc_msgSend_setDouble3Value_(v19, v29, &v118);
          objc_msgSend_addObject_(*(a1 + 88), v30, @"xformOp:translate");
        }

        objc_msgSend_orientation(a3, v17, v18);
        v34 = vceqq_f32(v33, xmmword_1AFE201A0);
        v34.i32[0] = vminvq_u32(v34);
        if ((v34.i32[0] & 0x80000000) == 0 && (objc_msgSend_containsObject_(*(a1 + 88), v31, @"xformOp:orient") & 1) == 0 && (objc_msgSend_containsObject_(*(a1 + 88), v31, @"xformOp:rotateXYZ") & 1) == 0)
        {
          if (objc_msgSend_containsObject_(*(a1 + 88), v31, @"xformOp:rotateX") & 1) != 0 || (objc_msgSend_containsObject_(*(a1 + 88), v35, @"xformOp:rotateY") & 1) != 0 || (objc_msgSend_containsObject_(*(a1 + 88), v35, @"xformOp:rotateZ"))
          {
            objc_msgSend_eulerAngles(a3, v35, v36);
            if (v39 != 0.0 && (objc_msgSend_containsObject_(*(a1 + 88), v37, @"xformOp:rotateX") & 1) == 0)
            {
              v40 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v37, a2, @"xformOp:rotateX", qword_1EB658D68, qword_1EB658E40);
              objc_msgSend_eulerAngles(a3, v41, v42);
              v44 = v43 / 3.14159265 * 180.0;
              *&v44 = v44;
              objc_msgSend_setFloatValue_(v40, v45, v46, v44);
              objc_msgSend_addObject_(*(a1 + 88), v47, @"xformOp:rotateX");
            }

            objc_msgSend_eulerAngles(a3, v37, v38);
            LODWORD(v50) = HIDWORD(v50);
            if (*(&v50 + 1) != 0.0 && (objc_msgSend_containsObject_(*(a1 + 88), v48, @"xformOp:rotateY", v50) & 1) == 0)
            {
              v51 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v48, a2, @"xformOp:rotateY", qword_1EB658D68, qword_1EB658E40);
              objc_msgSend_eulerAngles(a3, v52, v53);
              v55 = v54 / 3.14159265 * 180.0;
              *&v55 = v55;
              objc_msgSend_setFloatValue_(v51, v56, v57, v55);
              objc_msgSend_addObject_(*(a1 + 88), v58, @"xformOp:rotateY");
            }

            objc_msgSend_eulerAngles(a3, v48, v49, v50);
            v34.i32[0] = v34.i32[2];
            if (*&v34.i32[2] != 0.0 && (objc_msgSend_containsObject_(*(a1 + 88), v31, @"xformOp:rotateZ", *v34.i64) & 1) == 0)
            {
              v59 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v31, a2, @"xformOp:rotateZ", qword_1EB658D68, qword_1EB658E40);
              objc_msgSend_eulerAngles(a3, v60, v61);
              v63 = v62 / 3.14159265 * 180.0;
              *&v63 = v63;
              objc_msgSend_setFloatValue_(v59, v64, v65, v63);
              objc_msgSend_addObject_(*(a1 + 88), v66, @"xformOp:rotateZ");
            }
          }

          else
          {
            objc_msgSend_orientation(a3, v35, v36);
            v115 = v76;
            v78 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v77, a2, @"xformOp:orient", qword_1EB658DB8, qword_1EB658E40);
            objc_msgSend_setQuatfValue_(v78, v79, v80, v115);
            objc_msgSend_addObject_(*(a1 + 88), v81, @"xformOp:orient");
          }
        }

        objc_msgSend_scale(a3, v31, v32, *v34.i64);
        __asm { FMOV            V1.4S, #1.0 }

        v88 = vceqq_f32(v87, _Q1);
        v88.i32[3] = v88.i32[2];
        if ((vminvq_u32(v88) & 0x80000000) == 0 && (objc_msgSend_containsObject_(*(a1 + 88), v9, @"xformOp:scale") & 1) == 0)
        {
          v89 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v9, a2, @"xformOp:scale", qword_1EB658D50, qword_1EB658E40);
          objc_msgSend_scale(a3, v90, v91);
          v116 = v92;
          objc_msgSend_scale(a3, v93, v94);
          v117 = vcvtq_f64_f32(__PAIR64__(v95, v116));
          objc_msgSend_scale(a3, v96, v97);
          v98.f64[0] = *&v98.f64[1];
          v118 = v117;
          v119 = v98;
          objc_msgSend_setDouble3Value_(v89, v99, &v118);
          objc_msgSend_addObject_(*(a1 + 88), v100, @"xformOp:scale");
        }
      }
    }

    else if ((a4 & 1) == 0)
    {
      v67 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v9, a2, @"xformOp:transform", qword_1EB658D58, qword_1EB658E40);
      objc_msgSend_transform(a3, v68, v69);
      v118 = vcvtq_f64_f32(*v70.f32);
      v119 = vcvt_hight_f64_f32(v70);
      v120 = vcvtq_f64_f32(*v71.f32);
      v121 = vcvt_hight_f64_f32(v71);
      v122 = vcvtq_f64_f32(*v72.f32);
      v123 = vcvt_hight_f64_f32(v72);
      v124 = vcvtq_f64_f32(*v73.f32);
      v125 = vcvt_hight_f64_f32(v73);
      objc_msgSend_setDouble4x4Value_(v67, v74, &v118);
      objc_msgSend_addObject_(*(a1 + 88), v75, @"xformOp:transform");
    }
  }

  v102 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v9, 8);
  for (i = 0; i != 8; ++i)
  {
    v104 = off_1E7A7F330[i];
    if (objc_msgSend_containsObject_(*(a1 + 88), v101, v104))
    {
      v106 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v101, v104);
      objc_msgSend_addObject_(v102, v107, v106);
    }
  }

  if (objc_msgSend_count(v102, v101, v105))
  {
    v110 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v108, a2, @"xformOpOrder", qword_1EB658DD8, qword_1EB658E40);
    objc_msgSend_setTokenArray_(v110, v111, v102);
  }

  return objc_msgSend_removeAllObjects(*(a1 + 88), v108, v109);
}

uint64_t sub_1AF33C394(uint64_t a1, char *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_1AF13D428((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (sub_1AF13D428(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

void *sub_1AF33C414(uint64_t **a1, uint64_t ***a2, uint64_t a3)
{
  result = *sub_1AF33C494(a1, &v4, a2);
  if (!result)
  {
    sub_1AF33C51C();
  }

  return result;
}

char *sub_1AF33C494(uint64_t a1, char **a2, uint64_t ***a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((sub_1AF13D428(a3, v4 + 32) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((sub_1AF13D428(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 8;
      v4 = *(v7 + 1);
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_1AF33C5B0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1AF33C5CC(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1AF33C5CC(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_1AF33C630(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 7)
  {
    if (!(a2 >> 57))
    {
      sub_1AF33C7D8(a1, a2);
    }

    sub_1AF10A1D0();
  }
}

void sub_1AF33C6D0(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v13 = (v4 - *a1) >> 7;
    v14 = v13 + 1;
    if ((v13 + 1) >> 57)
    {
      sub_1AF10A1D0();
    }

    v15 = v5 - *a1;
    if (v15 >> 6 > v14)
    {
      v14 = v15 >> 6;
    }

    if (v15 >= 0x7FFFFFFFFFFFFF80)
    {
      v16 = 0x1FFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      sub_1AF33C7D8(a1, v16);
    }

    v17 = (v13 << 7);
    v18 = *a2;
    v19 = a2[1];
    v20 = a2[3];
    v17[2] = a2[2];
    v17[3] = v20;
    *v17 = v18;
    v17[1] = v19;
    v21 = a2[4];
    v22 = a2[5];
    v23 = a2[7];
    v17[6] = a2[6];
    v17[7] = v23;
    v17[4] = v21;
    v17[5] = v22;
    v12 = (v13 << 7) + 128;
    v24 = *(a1 + 8) - *a1;
    v25 = v17 - v24;
    memcpy(v17 - v24, *a1, v24);
    v26 = *a1;
    *a1 = v25;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[3];
    v4[2] = a2[2];
    v4[3] = v8;
    *v4 = v6;
    v4[1] = v7;
    v9 = a2[4];
    v10 = a2[5];
    v11 = a2[7];
    v4[6] = a2[6];
    v4[7] = v11;
    v4[4] = v9;
    v4[5] = v10;
    v12 = (v4 + 8);
  }

  *(a1 + 8) = v12;
}

void sub_1AF33C7D8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    operator new();
  }

  sub_1AF10A1D0();
}

void sub_1AF33C820(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1AF10A1D0();
}

uint64_t sub_1AF33C868(uint64_t a1, const char *a2, void *a3)
{
  v6 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, a2, a3);
  v8 = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v7, a2, v6, qword_1EB658E20);
  v10 = objc_msgSend_stringByAppendingPathComponent_(a3, v9, @"Skeleton");
  v12 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v11, v10);
  *(a1 + 8) = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v13, a2, v12, qword_1EB658E18);
  v15 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v14, v8, @"skel:skeleton", qword_1EB658DA8, qword_1EB658E40);
  objc_msgSend_setObjectPath_(v15, v16, v12);
  return v8;
}

uint64_t sub_1AF33C938(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_model(a2, a2, a3);
  v6 = objc_msgSend_mesh(v3, v4, v5);
  if (objc_msgSend_meshElementCount(v6, v7, v8) < 1)
  {
    return 0;
  }

  v10 = 0;
  while (1)
  {
    v11 = objc_msgSend_meshElementAtIndex_(v6, v9, v10);
    if (!objc_msgSend_primitiveType(v11, v12, v13) || objc_msgSend_primitiveType(v11, v14, v15) == 4)
    {
      break;
    }

    result = objc_msgSend_primitiveType(v11, v16, v17);
    if (result == 1)
    {
      return result;
    }

    if (++v10 >= objc_msgSend_meshElementCount(v6, v19, v20))
    {
      return 0;
    }
  }

  return 1;
}

void sub_1AF33C9D4(void *a1, const char *a2, void *a3, void *a4)
{
  v346 = a3;
  v349 = a1;
  v376 = *MEMORY[0x1E69E9840];
  v354 = a2;
  v5 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, a2, a2, @"subdivisionScheme", qword_1EB658DD0, qword_1EB658E40);
  v7 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v6, @"none");
  objc_msgSend_setTokenValue_(v5, v8, v7);
  v353 = a4;
  if (objc_msgSend_modelSourceChannels(a4, v9, v10) && (v13 = objc_msgSend_modelSourceChannels(a4, v11, v12), objc_msgSend_count(v13, v14, v15) >= 2))
  {
    v16 = objc_msgSend_modelSourceChannels(a4, v11, v12);
    v350 = objc_msgSend_count(v16, v17, v18);
    v348 = 1;
  }

  else
  {
    v348 = 0;
    v350 = 1;
  }

  v355 = objc_msgSend_mesh(v353, v11, v12);
  v21 = objc_msgSend_meshElementCount(v355, v19, v20);
  if (v21 < 1)
  {
    v37 = 0;
    v370 = 0;
    v371 = 0;
    v372 = 0;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = v355;
    do
    {
      v27 = objc_msgSend_meshElementAtIndex_(v26, v22, v25);
      v30 = objc_msgSend_primitiveCount(v27, v28, v29);
      if (objc_msgSend_primitiveType(v27, v31, v32) == 1 && objc_msgSend_indexCount(v27, v33, v34) >= 3)
      {
        v24 = v24 + 3 * objc_msgSend_indexCount(v27, v33, v34) - 6;
      }

      else
      {
        v24 += objc_msgSend_indexCount(v27, v33, v34);
      }

      v23 += v30;
      ++v25;
      v26 = v355;
      v21 = objc_msgSend_meshElementCount(v355, v35, v36);
    }

    while (v25 < v21);
    v37 = v24;
    v370 = 0;
    v371 = 0;
    v372 = 0;
    if (v23)
    {
      sub_1AF17C384(&v370, v23);
    }
  }

  v345 = &v345;
  MEMORY[0x1EEE9AC00](v21);
  v361 = &v345 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v41)
  {
    v42 = v350;
    v43 = v361;
    bzero(v361, 24 * ((24 * v350 - 24) / 0x18) + 24);
    do
    {
      sub_1AF17A60C(v43, v37);
      v43 += 3;
      --v42;
    }

    while (v42);
  }

  v368 = 0u;
  v369 = 0u;
  v366 = 0u;
  v367 = 0u;
  v44 = objc_msgSend_meshElements(v355, v38, v39);
  v358 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v45, &v366, v375, 16);
  if (v358)
  {
    v359 = 0;
    v48 = *v367;
    v356 = v44;
    *&v357 = v48;
    do
    {
      for (i = 0; i != v358; ++i)
      {
        if (*v367 != v357)
        {
          objc_enumerationMutation(v356);
        }

        v49 = *(*(&v366 + 1) + 8 * i);
        if (objc_msgSend_data(v49, v46, v47))
        {
          v50 = objc_msgSend_data(v49, v46, v47);
          v53 = objc_msgSend_bytes(v50, v51, v52);
          if (objc_msgSend_primitiveType(v49, v54, v55) == 4)
          {
            v58 = 0;
            v59 = 4 * v359;
            while (objc_msgSend_primitiveCount(v49, v56, v57) > v58)
            {
              v60 = objc_msgSend_bytesPerIndex(v49, v56, v57);
              switch(v60)
              {
                case 1:
                  v63 = *v53;
                  break;
                case 4:
                  v63 = *v53;
                  break;
                case 2:
                  v63 = *v53;
                  break;
                default:
                  v63 = *v53;
                  break;
              }

              *&v370[4 * v58++ + v59] = v63;
              v53 += objc_msgSend_bytesPerIndex(v49, v61, v62);
            }
          }

          v362.i64[0] = objc_msgSend_indicesChannelCount(v49, v56, v57);
          if (objc_msgSend_hasInterleavedIndicesChannels(v49, v64, v65))
          {
            v68 = v362.i64[0];
          }

          else
          {
            v68 = 1;
          }

          if (v362.i64[0])
          {
            v363.i64[0] = 0;
            do
            {
              hasInterleavedIndicesChannels = objc_msgSend_hasInterleavedIndicesChannels(v49, v66, v67);
              v72 = v363.i64[0];
              if ((hasInterleavedIndicesChannels & 1) == 0)
              {
                v73 = objc_msgSend_indexCount(v49, v70, v71);
                v72 = v73 * v363.i64[0];
              }

              v74 = objc_msgSend_primitiveType(v49, v70, v71);
              v77 = &v361[24 * v363.i64[0]];
              if (v74 == 1)
              {
                for (j = 2; j < objc_msgSend_indexCount(v49, v75, v76); ++j)
                {
                  v79 = objc_msgSend_bytesPerIndex(v49, v66, v67);
                  v82 = objc_msgSend_bytesPerIndex(v49, v80, v81);
                  v85 = v79 * (2 * v68 + v72);
                  switch(v82)
                  {
                    case 1:
                      v86 = v53[v85];
                      break;
                    case 4:
                      v86 = *&v53[v85];
                      break;
                    case 2:
                      v86 = *&v53[v85];
                      break;
                    default:
                      v86 = v53[v85];
                      break;
                  }

                  v373.i32[0] = v86;
                  v87 = objc_msgSend_bytesPerIndex(v49, v83, v84);
                  v90 = objc_msgSend_bytesPerIndex(v49, v88, v89);
                  v93 = v87 * (v68 + v72);
                  switch(v90)
                  {
                    case 1:
                      v94 = v53[v93];
                      break;
                    case 4:
                      v94 = *&v53[v93];
                      break;
                    case 2:
                      v94 = *&v53[v93];
                      break;
                    default:
                      v94 = v53[v93];
                      break;
                  }

                  LODWORD(v364) = v94;
                  v95 = objc_msgSend_bytesPerIndex(v49, v91, v92);
                  v98 = objc_msgSend_bytesPerIndex(v49, v96, v97);
                  v99 = v95 * v72;
                  switch(v98)
                  {
                    case 1:
                      v100 = v53[v99];
                      break;
                    case 4:
                      v100 = *&v53[v99];
                      break;
                    case 2:
                      v100 = *&v53[v99];
                      break;
                    default:
                      v100 = v53[v99];
                      break;
                  }

                  v365 = v100;
                  if (j)
                  {
                    v101 = &v364;
                  }

                  else
                  {
                    v101 = &v365;
                  }

                  sub_1AF121C58(v77, v101);
                  if (j)
                  {
                    v102 = &v365;
                  }

                  else
                  {
                    v102 = &v364;
                  }

                  sub_1AF121C58(v77, v102);
                  sub_1AF121C58(v77, &v373);
                  v72 += v68;
                }
              }

              else
              {
                for (k = 0; k < objc_msgSend_indexCount(v49, v75, v76); ++k)
                {
                  v104 = objc_msgSend_bytesPerIndex(v49, v66, v67);
                  v107 = objc_msgSend_bytesPerIndex(v49, v105, v106);
                  v108 = v104 * v72;
                  switch(v107)
                  {
                    case 1:
                      v109 = v53[v108];
                      break;
                    case 4:
                      v109 = *&v53[v108];
                      break;
                    case 2:
                      v109 = *&v53[v108];
                      break;
                    default:
                      v109 = v53[v108];
                      break;
                  }

                  v373.i32[0] = v109;
                  sub_1AF121C58(v77, &v373);
                  v72 += v68;
                }
              }

              ++v363.i64[0];
            }

            while (v363.i64[0] != v362.i64[0]);
          }

          v110 = objc_msgSend_primitiveCount(v49, v66, v67);
          v359 += v110;
        }
      }

      v358 = objc_msgSend_countByEnumeratingWithState_objects_count_(v356, v46, &v366, v375, 16);
    }

    while (v358);
  }

  else
  {
    v359 = 0;
  }

  v111 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v46, v354, @"faceVertexCounts", qword_1EB658DA0, qword_1EB658E40);
  objc_msgSend_setIntArray_count_(v111, v112, v370, v359);
  v115 = 0;
  i = 0;
  v116 = 0;
  LODWORD(v356) = v348 ^ 1;
  v358 = @"kGeometrySourceSemanticPosition";
  v352 = @"kGeometrySourceSemanticNormal";
  v351 = @"kGeometrySourceSemanticColor";
  v347 = @"kGeometrySourceSemanticTexcoord";
  while (1)
  {
    v117 = objc_msgSend_meshSources(v355, v113, v114);
    v120 = objc_msgSend_count(v117, v118, v119);
    if (i >= v120)
    {
      break;
    }

    v123 = objc_msgSend_meshSources(v355, v121, v122);
    v125 = objc_msgSend_objectAtIndexedSubscript_(v123, v124, i);
    v128 = objc_msgSend_vectorCount(v125, v126, v127);
    v131 = objc_msgSend_data(v125, v129, v130);
    v134 = objc_msgSend_bytes(v131, v132, v133);
    v137 = objc_msgSend_dataOffset(v125, v135, v136);
    v140 = objc_msgSend_semantic(v125, v138, v139);
    isEqualToString = objc_msgSend_isEqualToString_(v140, v141, v358);
    v145 = isEqualToString;
    v146 = isEqualToString;
    if (((isEqualToString | v356) & 1) == 0)
    {
      if (i >= v350)
      {
        v146 = 0;
      }

      else
      {
        v147 = objc_msgSend_meshSourceChannels(v355, v143, v144);
        v149 = objc_msgSend_objectAtIndexedSubscript_(v147, v148, i);
        v146 = objc_msgSend_intValue(v149, v150, v151) != 0;
      }
    }

    LODWORD(v359) = v116;
    v152 = v134 + v137;
    if (v145 & 1) != 0 || (v153 = objc_msgSend_semantic(v125, v143, v144), (objc_msgSend_isEqualToString_(v153, v154, v352)) || (v157 = objc_msgSend_semantic(v125, v155, v156), objc_msgSend_isEqualToString_(v157, v158, v351)))
    {
      v373 = 0uLL;
      v374.i64[0] = 0;
      sub_1AF179938(&v373, v128);
      v164 = v128;
      if (v128 >= 1)
      {
        do
        {
          *&v163 = *v152;
          DWORD2(v163) = *(v152 + 8);
          v364 = v163;
          sub_1AF1083F4(&v373, &v364);
          if (v145)
          {
            v167.i64[0] = *v152;
            v167.i32[2] = *(v152 + 8);
            if (v115)
            {
              v168 = v363;
              v168.i32[3] = 0;
              v167.i32[3] = 0;
              v169 = vminnmq_f32(v168, v167);
              v170 = v362;
              v170.i32[3] = 0;
              v362 = vmaxnmq_f32(v170, v167);
              v363 = v169;
              v115 = 1;
            }

            else
            {
              v115 = 1;
              v362 = v167;
              v363 = v167;
            }
          }

          v152 += objc_msgSend_dataStride(v125, v165, v166);
          --v164;
        }

        while (v164);
      }

      *&v364 = objc_msgSend_semantic(v125, v161, v162);
      v171 = sub_1AF33E508(&v364, v146);
      v172 = v146;
      v173 = qword_1EB658D90;
      v176 = objc_msgSend_semantic(v125, v174, v175);
      v178 = objc_msgSend_isEqualToString_(v176, v177, v358);
      v180 = &qword_1EB658E50;
      if ((v178 & 1) == 0)
      {
        v181 = objc_msgSend_isEqualToString_(v176, v179, v352);
        v180 = &qword_1EB658E48;
        if ((v181 & 1) == 0)
        {
          v182 = objc_msgSend_isEqualToString_(v176, v179, v347);
          v180 = &qword_1EB658E60;
          if ((v182 & 1) == 0)
          {
            v183 = objc_msgSend_isEqualToString_(v176, v179, v351);
            v180 = &qword_1EB658E40;
            if (v183)
            {
              v180 = &qword_1EB658E38;
            }
          }
        }
      }

      v184 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v179, v354, v171, v173, *v180);
      objc_msgSend_setFloat3Array_count_(v184, v185, v373.i64[0], v128);
      if (v172)
      {
        if ((v145 & 1) == 0)
        {
          v188 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v186, @"faceVarying");
          v190 = objc_msgSend_dataWithToken_(VFXUSKData_helper, v189, v188);
          objc_msgSend_setMetadataWithKey_value_(v184, v191, @"interpolation", v190);
        }

        *&v364 = objc_msgSend_semantic(v125, v186, v187);
        v193 = sub_1AF33E5D0(&v364, v192);
        v197 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v194, v354, v193, qword_1EB658DA0, qword_1EB658E40);
        if (v348)
        {
          v198 = objc_msgSend_meshSourceChannels(v355, v195, v196);
          v200 = objc_msgSend_objectAtIndexedSubscript_(v198, v199, i);
          v203 = objc_msgSend_intValue(v200, v201, v202);
        }

        else
        {
          v203 = 0;
        }

        objc_msgSend_setIntArray_count_(v197, v195, *&v361[24 * v203], (*&v361[24 * v203 + 8] - *&v361[24 * v203]) >> 2);
      }

      else
      {
        v204 = objc_msgSend_semantic(v125, v186, v187);
        if (objc_msgSend_isEqualToString_(v204, v205, v351))
        {
          v206 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v113, @"vertex");
          v208 = objc_msgSend_dataWithToken_(VFXUSKData_helper, v207, v206);
          objc_msgSend_setMetadataWithKey_value_(v184, v209, @"interpolation", v208);
        }
      }

      if (v373.i64[0])
      {
        v373.i64[1] = v373.i64[0];
        operator delete(v373.i64[0]);
      }

LABEL_120:
      v116 = v359;
      goto LABEL_121;
    }

    v210 = objc_msgSend_semantic(v125, v159, v160);
    if (!objc_msgSend_isEqualToString_(v210, v211, v347))
    {
      goto LABEL_120;
    }

    v373 = 0uLL;
    v374.i64[0] = 0;
    sub_1AF33E688(&v373, v128);
    v215 = v128;
    if (v128 >= 1)
    {
      do
      {
        LODWORD(v214) = *v152;
        *(&v214 + 1) = 1.0 - *(v152 + 4);
        v216 = v373.i64[1];
        if (v373.i64[1] >= v374.i64[0])
        {
          v357 = v214;
          v218 = (v373.i64[1] - v373.i64[0]) >> 3;
          if ((v218 + 1) >> 61)
          {
            sub_1AF10A1D0();
          }

          v219 = (v374.i64[0] - v373.i64[0]) >> 2;
          if (v219 <= v218 + 1)
          {
            v219 = v218 + 1;
          }

          if (v374.i64[0] - v373.i64[0] >= 0x7FFFFFFFFFFFFFF8uLL)
          {
            v220 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v220 = v219;
          }

          if (v220)
          {
            sub_1AF1233A0(&v373, v220);
          }

          *(8 * v218) = v357;
          v217 = 8 * v218 + 8;
          v221 = (8 * v218 - (v373.i64[1] - v373.i64[0]));
          memcpy(v221, v373.i64[0], v373.i64[1] - v373.i64[0]);
          v222 = v373.i64[0];
          v373.i64[0] = v221;
          v373.i64[1] = v217;
          v374.i64[0] = 0;
          if (v222)
          {
            operator delete(v222);
          }
        }

        else
        {
          *v373.i64[1] = v214;
          v217 = v216 + 8;
        }

        v373.i64[1] = v217;
        v152 += objc_msgSend_dataStride(v125, v212, v213);
        --v215;
      }

      while (v215);
    }

    *&v364 = objc_msgSend_semantic(v125, v212, v213);
    v224 = sub_1AF33E508(&v364, 0);
    v225 = v359;
    if (v359 >= 1)
    {
      v226 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v223, v359);
      v229 = objc_msgSend_stringValue(v226, v227, v228);
      v224 = objc_msgSend_stringByAppendingString_(v224, v230, v229);
    }

    v231 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v223, v354, v224, qword_1EB658D88, qword_1EB658E60);
    objc_msgSend_setFloat2Array_count_(v231, v232, v373.i64[0], v128);
    if (v146)
    {
      v234 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v233, @"faceVarying");
      v236 = objc_msgSend_dataWithToken_(VFXUSKData_helper, v235, v234);
      objc_msgSend_setMetadataWithKey_value_(v231, v237, @"interpolation", v236);
      *&v364 = objc_msgSend_semantic(v125, v238, v239);
      v241 = sub_1AF33E5D0(&v364, v240);
      v245 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v242, v354, v241, qword_1EB658DA0, qword_1EB658E40);
      if (v348)
      {
        v246 = objc_msgSend_meshSourceChannels(v355, v243, v244);
        v248 = objc_msgSend_objectAtIndexedSubscript_(v246, v247, i);
        v251 = objc_msgSend_intValue(v248, v249, v250);
      }

      else
      {
        v251 = 0;
      }

      objc_msgSend_setIntArray_count_(v245, v243, *&v361[24 * v251], (*&v361[24 * v251 + 8] - *&v361[24 * v251]) >> 2);
    }

    else
    {
      v252 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v233, @"vertex");
      v254 = objc_msgSend_dataWithToken_(VFXUSKData_helper, v253, v252);
      objc_msgSend_setMetadataWithKey_value_(v231, v255, @"interpolation", v254);
    }

    if (v373.i64[0])
    {
      v373.i64[1] = v373.i64[0];
      operator delete(v373.i64[0]);
    }

    v116 = v225 + 1;
LABEL_121:
    ++i;
  }

  if (v115)
  {
    v256 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v121, v354, @"extent", qword_1EB658D90, qword_1EB658E40);
    v373 = v363;
    v374 = v362;
    objc_msgSend_setFloat3Array_count_(v256, v257, &v373, 2);
  }

  if (objc_msgSend_meshElementCount(v355, v121, v122) > 1)
  {
    v373 = 0uLL;
    v374.i64[0] = 0;
    v271 = MEMORY[0x1E695DFA8];
    v272 = objc_msgSend_meshElementCount(v355, v258, v259);
    v276 = objc_msgSend_setWithCapacity_(v271, v273, v272);
    v277 = 0;
    for (m = 0; m < objc_msgSend_meshElementCount(v355, v274, v275); ++m)
    {
      v280 = objc_msgSend_meshElementAtIndex_(v355, v279, m);
      v283 = objc_msgSend_materials(v353, v281, v282);
      if (m >= objc_msgSend_count(v283, v284, v285))
      {
        Material = objc_msgSend_firstMaterial(v353, v286, v287);
      }

      else
      {
        v288 = objc_msgSend_materials(v353, v286, v287);
        Material = objc_msgSend_objectAtIndex_(v288, v289, m);
      }

      v293 = Material;
      if (Material)
      {
        v294 = sub_1AF33E728(v349, Material, v292);
        v297 = objc_msgSend_stringValue(v294, v295, v296);
        PathComponent = objc_msgSend_lastPathComponent(v297, v298, v299);
        v302 = objc_msgSend_stringByAppendingPathComponent_(v346, v301, PathComponent);
        v304 = objc_msgSend_stringByAppendingString_(v302, v303, @"_meshGroup");
        if (objc_msgSend_containsObject_(v276, v305, v304))
        {
          v307 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v306, m);
          v310 = objc_msgSend_stringValue(v307, v308, v309);
          v304 = objc_msgSend_stringByAppendingString_(v304, v311, v310);
        }

        objc_msgSend_addObject_(v276, v306, v304);
        v313 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v312, v304);
        v315 = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v314, v349[7], v313, qword_1EB658DF8);
        v317 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v316, v315, @"elementType", qword_1EB658DD0, qword_1EB658E40);
        v319 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v318, @"face");
        objc_msgSend_setTokenValue_(v317, v320, v319);
        v322 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v321, v315, @"familyName", qword_1EB658DD0, qword_1EB658E40);
        v324 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v323, @"materialBind");
        objc_msgSend_setTokenValue_(v322, v325, v324);
        sub_1AF121C28(&v373, 0);
        v328 = 0;
        v329 = v277;
        while (objc_msgSend_primitiveCount(v280, v326, v327) > v328)
        {
          LODWORD(v364) = v329;
          sub_1AF121C58(&v373, &v364);
          ++v328;
          ++v329;
        }

        v331 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v330, v315, @"indices", qword_1EB658DA0, qword_1EB658E40);
        v332 = v373.i64[0];
        v335 = objc_msgSend_primitiveCount(v280, v333, v334);
        objc_msgSend_setIntArray_count_(v331, v336, v332, v335);
        v338 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v337, v315, @"material:binding", qword_1EB658DA8, qword_1EB658E40);
        objc_msgSend_setObjectPath_(v338, v339, v294);
        if (!m && objc_msgSend_isDoubleSided(v293, v291, v292))
        {
          v340 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v291, v354, @"doubleSided", qword_1EB658D48, qword_1EB658E40);
          objc_msgSend_setBoolValue_(v340, v341, 1);
        }
      }

      v277 += objc_msgSend_primitiveCount(v280, v291, v292);
    }

    if (v373.i64[0])
    {
      v373.i64[1] = v373.i64[0];
      operator delete(v373.i64[0]);
    }
  }

  else
  {
    v261 = objc_msgSend_firstMaterial(v353, v258, v259);
    if (v261)
    {
      v262 = sub_1AF33E728(v349, v261, v260);
      v264 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v263, v354, @"material:binding", qword_1EB658DA8, qword_1EB658E40);
      objc_msgSend_setObjectPath_(v264, v265, v262);
      if (objc_msgSend_isDoubleSided(v261, v266, v267))
      {
        v269 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v268, v354, @"doubleSided", qword_1EB658D48, qword_1EB658E40);
        objc_msgSend_setBoolValue_(v269, v270, 1);
      }
    }
  }

  if (v350)
  {
    v342 = &v361[24 * v350 - 24];
    v343 = -24 * v350;
    do
    {
      v344 = *v342;
      if (*v342)
      {
        *(v342 + 1) = v344;
        operator delete(v344);
      }

      v342 -= 24;
      v343 += 24;
    }

    while (v343);
  }

  if (v370)
  {
    v371 = v370;
    operator delete(v370);
  }
}

void sub_1AF33DADC(_Unwind_Exception *exception_object)
{
  v3 = v1[5];
  if (v3)
  {
    v4 = v1[17] + 24 * v3 - 24;
    v5 = -24 * v3;
    do
    {
      v6 = *v4;
      if (*v4)
      {
        *(v4 + 8) = v6;
        operator delete(v6);
      }

      v4 -= 24;
      v5 += 24;
    }

    while (v5);
  }

  v7 = v1[35];
  if (v7)
  {
    v1[36] = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1AF33DC24(uint64_t a1, char *a2, void *a3, void *a4)
{
  v4 = a4;
  *(&v223[1] + 4) = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_model(a4, a2, a3);
  v8 = objc_msgSend_mesh(v5, v6, v7);
  v11 = objc_msgSend_morpher(v4, v9, v10);
  if (objc_msgSend_calculationMode(v11, v12, v13))
  {
    v205 = 0uLL;
  }

  else
  {
    v16 = objc_msgSend_meshSources(v8, v14, v15);
    result = objc_msgSend_count(v16, v17, v18);
    if (result)
    {
      v205 = 0uLL;
      for (i = 0; i < result; ++i)
      {
        v21 = objc_msgSend_meshSources(v8, v14, v15);
        v23 = objc_msgSend_objectAtIndexedSubscript_(v21, v22, i);
        v26 = objc_msgSend_semantic(v23, v24, v25);
        if (objc_msgSend_isEqualToString_(v26, v27, @"kGeometrySourceSemanticPosition"))
        {
          *&v205 = v23;
        }

        else
        {
          v30 = objc_msgSend_semantic(v23, v28, v29);
          isEqualToString = objc_msgSend_isEqualToString_(v30, v31, @"kGeometrySourceSemanticNormal");
          v33 = *(&v205 + 1);
          if (isEqualToString)
          {
            v33 = v23;
          }

          *(&v205 + 1) = v33;
        }

        v34 = objc_msgSend_meshSources(v8, v28, v29);
        result = objc_msgSend_count(v34, v35, v36);
      }
    }

    else
    {
      v205 = 0uLL;
    }

    if (v205 == 0)
    {
      return result;
    }
  }

  v37 = MEMORY[0x1E695DF70];
  v38 = objc_msgSend_targets(v11, v14, v15);
  v41 = objc_msgSend_count(v38, v39, v40);
  v200 = objc_msgSend_arrayWithCapacity_(v37, v42, v41);
  v43 = MEMORY[0x1E695DF70];
  v46 = objc_msgSend_targets(v11, v44, v45);
  v49 = objc_msgSend_count(v46, v47, v48);
  v199 = objc_msgSend_arrayWithCapacity_(v43, v50, v49);
  v53 = objc_msgSend_targets(v11, v51, v52);
  if (objc_msgSend_count(v53, v54, v55))
  {
    v204 = 0;
    v206 = v4;
    do
    {
      v58 = objc_msgSend_targets(v11, v56, v57);
      v60 = objc_msgSend_objectAtIndexedSubscript_(v58, v59, v204);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        v102 = sub_1AF0D5194(isKindOfClass, v62);
        if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF92A0(v222, v60, v223, v102);
        }

        goto LABEL_74;
      }

      v63 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v62, v204);
      v66 = objc_msgSend_stringValue(v63, v64, v65);
      v68 = objc_msgSend_stringByAppendingString_(@"blendShape", v67, v66);
      v70 = objc_msgSend_stringByAppendingPathComponent_(a3, v69, v68);
      v72 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v71, v70);
      v73 = sub_1AF341EE8(a1, v68, a3);
      v75 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v74, v73);
      objc_msgSend_addObject_(v200, v76, v75);
      objc_msgSend_addObject_(v199, v77, v72);
      v201 = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v78, *(a1 + 56), v72, qword_1EB658E28);
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v219 = 0;
      v220 = 0;
      v221 = 0;
      v216 = 0;
      v217 = 0;
      v218 = 0;
      while (1)
      {
        v86 = objc_msgSend_meshSources(v60, v79, v80);
        if (v83 >= objc_msgSend_count(v86, v87, v88))
        {
          break;
        }

        v91 = objc_msgSend_meshSources(v60, v89, v90);
        v93 = objc_msgSend_objectAtIndexedSubscript_(v91, v92, v83);
        v96 = objc_msgSend_semantic(v93, v94, v95);
        if (objc_msgSend_isEqualToString_(v96, v97, @"kGeometrySourceSemanticPosition"))
        {
          v82 = objc_msgSend_vectorCount(v93, v98, v99);
          sub_1AF179938(&v219, v82);
        }

        else
        {
          v100 = objc_msgSend_semantic(v93, v98, v99);
          if (objc_msgSend_isEqualToString_(v100, v101, @"kGeometrySourceSemanticNormal"))
          {
            v81 = objc_msgSend_vectorCount(v93, v79, v80);
            sub_1AF179938(&v216, v81);
            v84 = v93;
          }

          v93 = v85;
        }

        ++v83;
        v85 = v93;
      }

      if (v82 <= v81)
      {
        v105 = v81;
      }

      else
      {
        v105 = v82;
      }

      v213 = 0;
      v214 = 0;
      v215 = 0;
      sub_1AF17A60C(&v213, v105);
      if (v85)
      {
        v109 = (objc_msgSend_calculationMode(v11, v106, v107) | v205) != 0;
        if (v84)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v109 = 0;
        if (v84)
        {
LABEL_33:
          v110 = (objc_msgSend_calculationMode(v11, v106, v107) | *(&v205 + 1)) != 0;
          goto LABEL_36;
        }
      }

      v110 = 0;
LABEL_36:
      v212 = 0;
      if (v105 >= 1)
      {
        do
        {
          *&v108 = 0;
          v208 = v108;
          *&v108 = 0;
          v207 = v108;
          v209 = 0.0;
          *&v108 = 0;
          v210 = v108;
          if (v109)
          {
            v111 = objc_msgSend_data(v85, v106, v107);
            v114 = objc_msgSend_bytes(v111, v112, v113);
            v117 = objc_msgSend_dataOffset(v85, v115, v116);
            v118 = v212;
            v121 = v114 + v117 + objc_msgSend_dataStride(v85, v119, v120) * v118;
            *&v122 = *v121;
            v210 = v122;
            v209 = *(v121 + 8);
            if (!objc_msgSend_calculationMode(v11, v123, v124))
            {
              v125 = objc_msgSend_data(v205, v106, v107);
              v128 = objc_msgSend_bytes(v125, v126, v127);
              v131 = objc_msgSend_dataOffset(v205, v129, v130);
              v132 = v212;
              v135 = (v128 + v131 + objc_msgSend_dataStride(v205, v133, v134) * v132);
              *(&v136 + 1) = *(&v210 + 1);
              *&v136 = vsub_f32(*&v210, *v135);
              v210 = v136;
              v209 = v209 - v135[1].f32[0];
            }

            v4 = v206;
          }

          if (v110)
          {
            v137 = objc_msgSend_data(v84, v106, v107);
            v140 = objc_msgSend_bytes(v137, v138, v139);
            v143 = objc_msgSend_dataOffset(v84, v141, v142);
            v144 = v212;
            v147 = v140 + v143 + objc_msgSend_dataStride(v84, v145, v146) * v144;
            *&v148 = *v147;
            v208 = v148;
            LODWORD(v148) = *(v147 + 8);
            v207 = v148;
            if (!objc_msgSend_calculationMode(v11, v149, v150))
            {
              v151 = objc_msgSend_data(*(&v205 + 1), v106, v107);
              v154 = objc_msgSend_bytes(v151, v152, v153);
              v157 = objc_msgSend_dataOffset(*(&v205 + 1), v155, v156);
              v158 = v212;
              v161 = (v154 + v157 + objc_msgSend_dataStride(*(&v205 + 1), v159, v160) * v158);
              *(&v162 + 1) = *(&v208 + 1);
              *&v162 = vsub_f32(*&v208, *v161);
              v208 = v162;
              v163 = v207;
              *&v163 = *&v207 - v161[1].f32[0];
              v207 = v163;
            }

            v4 = v206;
          }

          if (*&v210 != 0.0 || (v164.i32[0] = vdup_lane_s32(*&v210, 1).u32[0], v164.i64[1] = v208, v164.f32[1] = v209, (vaddvq_s32(vbicq_s8(xmmword_1AFE20C60, vceqzq_f32(v164))) & 0xF) != 0) || (*(&v108 + 1) = *(&v207 + 1), *&v207 != 0.0))
          {
            if (v109)
            {
              v165 = v210;
              *(&v165 + 2) = v209;
              v211 = v165;
              sub_1AF1083F4(&v219, &v211);
            }

            if (v110)
            {
              v166 = v208;
              DWORD2(v166) = v207;
              v211 = v166;
              sub_1AF1083F4(&v216, &v211);
            }

            sub_1AF121C58(&v213, &v212);
          }

          v167 = ++v212;
        }

        while (v105 > v167);
      }

      if (v220 != v219)
      {
        v168 = objc_msgSend_semantic(v85, v106, v107);
        v170 = objc_msgSend_isEqualToString_(v168, v169, @"kGeometrySourceSemanticPosition");
        v172 = @"offsets";
        if ((v170 & 1) == 0)
        {
          if (objc_msgSend_isEqualToString_(v168, v171, @"kGeometrySourceSemanticNormal", @"offsets"))
          {
            v173 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v171, v201, @"normalOffsets", qword_1EB658D90, qword_1EB658E58);
LABEL_60:
            objc_msgSend_setFloat3Array_count_(v173, v174, v219, (v220 - v219) >> 4);
            goto LABEL_61;
          }

          v172 = &stru_1F2575650;
        }

        v173 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v171, v201, v172, qword_1EB658D90, qword_1EB658E58);
        goto LABEL_60;
      }

LABEL_61:
      if (v217 != v216)
      {
        v175 = objc_msgSend_semantic(v84, v106, v107);
        v177 = objc_msgSend_isEqualToString_(v175, v176, @"kGeometrySourceSemanticPosition");
        v179 = @"offsets";
        if ((v177 & 1) == 0)
        {
          if (objc_msgSend_isEqualToString_(v175, v178, @"kGeometrySourceSemanticNormal", @"offsets"))
          {
            v180 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v178, v201, @"normalOffsets", qword_1EB658D90, qword_1EB658E58);
LABEL_67:
            objc_msgSend_setFloat3Array_count_(v180, v181, v216, (v217 - v216) >> 4);
            goto LABEL_68;
          }

          v179 = &stru_1F2575650;
        }

        v180 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v178, v201, v179, qword_1EB658D90, qword_1EB658E58);
        goto LABEL_67;
      }

LABEL_68:
      v182 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v106, v201, @"pointIndices", qword_1EB658DA0, qword_1EB658E40);
      objc_msgSend_setIntArray_count_(v182, v183, v213, (v214 - v213) >> 2);
      if (v213)
      {
        v214 = v213;
        operator delete(v213);
      }

      if (v216)
      {
        v217 = v216;
        operator delete(v216);
      }

      if (v219)
      {
        v220 = v219;
        operator delete(v219);
      }

LABEL_74:
      v184 = objc_msgSend_targets(v11, v103, v104);
      ++v204;
    }

    while (v204 < objc_msgSend_count(v184, v185, v186));
  }

  v187 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v56, a2, @"skel:blendShapes", qword_1EB658DD8, qword_1EB658E40);
  objc_msgSend_setTokenArray_(v187, v188, v200);
  v190 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v189, a2, @"skel:blendShapeTargets", qword_1EB658DB0, qword_1EB658E40);
  objc_msgSend_setObjectPathArray_(v190, v191, v199);
  result = objc_msgSend_applyType_(a2, v192, qword_1EB658E68);
  v193 = *(a1 + 424);
  if (v193)
  {
    v194 = a1 + 424;
    do
    {
      v195 = *(v193 + 32);
      v196 = v195 >= v4;
      v197 = v195 < v4;
      if (v196)
      {
        v194 = v193;
      }

      v193 = *(v193 + 8 * v197);
    }

    while (v193);
    if (v194 != a1 + 424 && *(v194 + 32) <= v4)
    {
      *(*(v194 + 40) + 24) = v200;
    }
  }

  return result;
}

void sub_1AF33E484(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 184);
  if (v3)
  {
    *(v1 - 176) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 160);
  if (v4)
  {
    *(v1 - 152) = v4;
    operator delete(v4);
  }

  v5 = *(v1 - 136);
  if (v5)
  {
    *(v1 - 128) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

__CFString *sub_1AF33E508(void **a1, const char *a2)
{
  v2 = a2;
  if (objc_msgSend_isEqualToString_(*a1, a2, @"kGeometrySourceSemanticPosition"))
  {
    return @"points";
  }

  if (objc_msgSend_isEqualToString_(*a1, v4, @"kGeometrySourceSemanticNormal"))
  {
    v7 = @"normals";
    v8 = @"primvars:normals";
    v9 = v2 == 0;
  }

  else
  {
    if (objc_msgSend_isEqualToString_(*a1, v6, @"kGeometrySourceSemanticTexcoord"))
    {
      return @"primvars:st";
    }

    isEqualToString = objc_msgSend_isEqualToString_(*a1, v10, @"kGeometrySourceSemanticColor");
    v7 = &stru_1F2575650;
    v8 = @"primvars:displayColor";
    v9 = isEqualToString == 0;
  }

  if (v9)
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

__CFString *sub_1AF33E5D0(void **a1, const char *a2)
{
  if (objc_msgSend_isEqualToString_(*a1, a2, @"kGeometrySourceSemanticPosition"))
  {
    return @"faceVertexIndices";
  }

  if (objc_msgSend_isEqualToString_(*a1, v3, @"kGeometrySourceSemanticNormal"))
  {
    return @"primvars:normals:indices";
  }

  if (objc_msgSend_isEqualToString_(*a1, v5, @"kGeometrySourceSemanticTexcoord"))
  {
    return @"primvars:st:indices";
  }

  if (objc_msgSend_isEqualToString_(*a1, v6, @"kGeometrySourceSemanticColor"))
  {
    return @"primvars:displayColor:indices";
  }

  return &stru_1F2575650;
}

void sub_1AF33E688(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_1AF1233A0(a1, a2);
    }

    sub_1AF10A1D0();
  }
}

id sub_1AF33E728(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v179[2] = *MEMORY[0x1E69E9840];
  v174 = a2;
  v4 = a1[16];
  v168 = a1 + 15;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = a1 + 16;
  do
  {
    v6 = v4[4];
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = v4[v8];
  }

  while (v4);
  if (v5 != a1 + 16 && v5[4] <= a2)
  {
    __p.__r_.__value_.__r.__words[0] = &v174;
    return sub_1AF33AD00(v168, &v174, &unk_1AFE22A40, &__p)[5];
  }

  else
  {
LABEL_9:
    v9 = objc_msgSend_name(a2, a2, a3);
    if (!v9 || (v12 = v9, !objc_msgSend_length(v9, v10, v11)))
    {
      v13 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v10, v3[17]);
      v16 = objc_msgSend_stringValue(v13, v14, v15);
      v12 = objc_msgSend_stringByAppendingString_(@"Material_", v17, v16);
    }

    v18 = sub_1AF338AE8(v12, v10);
    v21 = objc_msgSend_UTF8String(v18, v19, v20);
    sub_1AF13D250(&__p, v21);
    v24 = v3 + 19;
    if (v3 + 19 != sub_1AF33C394((v3 + 18), &__p))
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      sub_1AF340C28(&__str, size + 1);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if (size)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        memmove(p_str, p_p, size);
      }

      *(&p_str->__r_.__value_.__l.__data_ + size) = 95;
      std::to_string(&v175, v3[20]);
      if ((v175.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &v175;
      }

      else
      {
        v28 = v175.__r_.__value_.__r.__words[0];
      }

      if ((v175.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = HIBYTE(v175.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v29 = v175.__r_.__value_.__l.__size_;
      }

      v30 = std::string::append(&__str, v28, v29);
      v31 = *&v30->__r_.__value_.__l.__data_;
      *&v177[1] = *(&v30->__r_.__value_.__l + 2);
      v177[0] = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v175.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (v24 != sub_1AF33C394((v3 + 18), v177))
      {
        v33 = 1;
        do
        {
          v34 = v3;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v35 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v35 = __p.__r_.__value_.__l.__size_;
          }

          sub_1AF340C28(&__str, v35 + 4);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v36 = &__str;
          }

          else
          {
            v36 = __str.__r_.__value_.__r.__words[0];
          }

          if (v35)
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v37 = &__p;
            }

            else
            {
              v37 = __p.__r_.__value_.__r.__words[0];
            }

            memmove(v36, v37, v35);
          }

          strcpy(v36 + v35, "_un_");
          std::to_string(&v175, v33);
          if ((v175.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v38 = &v175;
          }

          else
          {
            v38 = v175.__r_.__value_.__r.__words[0];
          }

          if ((v175.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v39 = HIBYTE(v175.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v39 = v175.__r_.__value_.__l.__size_;
          }

          v40 = std::string::append(&__str, v38, v39);
          v3 = v34;
          v41 = v40->__r_.__value_.__r.__words[0];
          v179[0] = v40->__r_.__value_.__l.__size_;
          *(v179 + 7) = *(&v40->__r_.__value_.__r.__words[1] + 7);
          v42 = HIBYTE(v40->__r_.__value_.__r.__words[2]);
          v40->__r_.__value_.__l.__size_ = 0;
          v40->__r_.__value_.__r.__words[2] = 0;
          v40->__r_.__value_.__r.__words[0] = 0;
          if (SBYTE7(v177[1]) < 0)
          {
            operator delete(*&v177[0]);
          }

          *&v177[0] = v41;
          *(&v177[0] + 1) = v179[0];
          *(v177 + 15) = *(v179 + 7);
          BYTE7(v177[1]) = v42;
          if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v175.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          ++v33;
        }

        while (v24 != sub_1AF33C394((v3 + 18), v177));
      }

      if ((SBYTE7(v177[1]) & 0x80u) == 0)
      {
        v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v32, v177);
      }

      else
      {
        v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v32, *&v177[0]);
      }

      v18 = v43;
      if (SBYTE7(v177[1]) < 0)
      {
        operator delete(*&v177[0]);
      }
    }

    v44 = objc_msgSend_UTF8String(v18, v22, v23);
    sub_1AF13D250(v177, v44);
    sub_1AF340CB4(v3 + 18, v177, v177);
    if (SBYTE7(v177[1]) < 0)
    {
      operator delete(*&v177[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v46 = sub_1AF33F5F8(v3, v45);
    v48 = objc_msgSend_stringByAppendingPathComponent_(v46, v47, v18);
    v50 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v49, v48);
    v167 = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v51, v3[7], v50, qword_1EB658DE8);
    v53 = objc_msgSend_stringByAppendingPathComponent_(v48, v52, @"surfaceShader");
    v55 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v54, v53);
    v57 = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v56, v3[7], v55, qword_1EB658E08);
    v59 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v58, v57, @"info:id", qword_1EB658DD0, qword_1EB658E40);
    v61 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v60, @"UsdPreviewSurface");
    objc_msgSend_setTokenValue_(v59, v62, v61);
    objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v63, v57, @"outputs:surface", qword_1EB658DD0, qword_1EB658E40);
    v66 = objc_msgSend_emission(v174, v64, v65);
    if (objc_msgSend_selfIllumination(v174, v67, v68))
    {
      v71 = objc_msgSend_selfIllumination(v174, v69, v70);
      objc_msgSend_contents(v71, v72, v73);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!objc_msgSend_emission(v174, v74, v75) || (v78 = objc_msgSend_emission(v174, v76, v77), objc_msgSend_contents(v78, v79, v80), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (v83 = objc_msgSend_emission(v174, v81, v82), objc_msgSend_contents(v83, v84, v85), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v66 = objc_msgSend_selfIllumination(v174, v76, v77);
        }
      }
    }

    memset(v177, 0, 24);
    sub_1AF33F664(v177, 8uLL);
    v88 = objc_msgSend_normal(v174, v86, v87);
    sub_1AF13D250(&__str, "rgb");
    sub_1AF341028(&__p, @"normal", v88, &qword_1EB658E48, &__str, 0);
    v91 = *(&v177[0] + 1);
    if (*(&v177[0] + 1) >= *&v177[1])
    {
      *(&v177[0] + 1) = sub_1AF340ED8(v177, &__p);
      if (SHIBYTE(v171) < 0)
      {
        operator delete(v170[0]);
      }
    }

    else
    {
      v92 = *&__p.__r_.__value_.__l.__data_;
      *(*(&v177[0] + 1) + 16) = *(&__p.__r_.__value_.__l + 2);
      *v91 = v92;
      v93 = *v170;
      *(v91 + 40) = v171;
      *(v91 + 24) = v93;
      v170[1] = 0;
      v171 = 0;
      v170[0] = 0;
      v94 = v173;
      *(v91 + 48) = v172;
      *(v91 + 64) = v94;
      *(&v177[0] + 1) = v91 + 80;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v95 = *(&v177[0] + 1);
    if (!objc_msgSend_shadingModel(v174, v89, v90))
    {
      v98 = objc_msgSend_metalness(v174, v96, v97);
      sub_1AF13D250(&__str, "r");
      sub_1AF341028(&__p, @"metallic", v98, &qword_1EB658E40, &__str, 0);
      v101 = *(&v177[0] + 1);
      if (*(&v177[0] + 1) >= *&v177[1])
      {
        *(&v177[0] + 1) = sub_1AF340ED8(v177, &__p);
        if (SHIBYTE(v171) < 0)
        {
          operator delete(v170[0]);
        }
      }

      else
      {
        v102 = *&__p.__r_.__value_.__l.__data_;
        *(*(&v177[0] + 1) + 16) = *(&__p.__r_.__value_.__l + 2);
        *v101 = v102;
        v103 = *v170;
        *(v101 + 40) = v171;
        *(v101 + 24) = v103;
        v170[1] = 0;
        v171 = 0;
        v170[0] = 0;
        v104 = v173;
        *(v101 + 48) = v172;
        *(v101 + 64) = v104;
        *(&v177[0] + 1) = v101 + 80;
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v106 = objc_msgSend_roughness(v174, v99, v100);
      sub_1AF13D250(&__str, "r");
      sub_1AF341028(&__p, @"roughness", v106, &qword_1EB658E40, &__str, 0);
      v107 = *(&v177[0] + 1);
      if (*(&v177[0] + 1) >= *&v177[1])
      {
        *(&v177[0] + 1) = sub_1AF340ED8(v177, &__p);
        if (SHIBYTE(v171) < 0)
        {
          operator delete(v170[0]);
        }
      }

      else
      {
        v108 = *&__p.__r_.__value_.__l.__data_;
        *(*(&v177[0] + 1) + 16) = *(&__p.__r_.__value_.__l + 2);
        *v107 = v108;
        v109 = *v170;
        *(v107 + 40) = v171;
        *(v107 + 24) = v109;
        v170[1] = 0;
        v171 = 0;
        v170[0] = 0;
        v110 = v173;
        *(v107 + 48) = v172;
        *(v107 + 64) = v110;
        *(&v177[0] + 1) = v107 + 80;
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    v111 = objc_msgSend_diffuse(v174, v96, v97);
    sub_1AF13D250(&__str, "rgb");
    sub_1AF341028(&__p, @"diffuseColor", v111, &qword_1EB658E38, &__str, 0);
    v112 = *(&v177[0] + 1);
    if (*(&v177[0] + 1) >= *&v177[1])
    {
      *(&v177[0] + 1) = sub_1AF340ED8(v177, &__p);
      if (SHIBYTE(v171) < 0)
      {
        operator delete(v170[0]);
      }
    }

    else
    {
      v113 = *&__p.__r_.__value_.__l.__data_;
      *(*(&v177[0] + 1) + 16) = *(&__p.__r_.__value_.__l + 2);
      *v112 = v113;
      v114 = *v170;
      *(v112 + 40) = v171;
      *(v112 + 24) = v114;
      v170[1] = 0;
      v171 = 0;
      v170[0] = 0;
      v115 = v173;
      *(v112 + 48) = v172;
      *(v112 + 64) = v115;
      *(&v177[0] + 1) = v112 + 80;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_1AF13D250(&__str, "rgb");
    sub_1AF341028(&__p, @"emissiveColor", v66, &qword_1EB658E38, &__str, 0);
    v118 = *(&v177[0] + 1);
    if (*(&v177[0] + 1) >= *&v177[1])
    {
      *(&v177[0] + 1) = sub_1AF340ED8(v177, &__p);
      if (SHIBYTE(v171) < 0)
      {
        operator delete(v170[0]);
      }
    }

    else
    {
      v119 = *&__p.__r_.__value_.__l.__data_;
      *(*(&v177[0] + 1) + 16) = *(&__p.__r_.__value_.__l + 2);
      *v118 = v119;
      v120 = *v170;
      *(v118 + 40) = v171;
      *(v118 + 24) = v120;
      v170[1] = 0;
      v171 = 0;
      v170[0] = 0;
      v121 = v173;
      *(v118 + 48) = v172;
      *(v118 + 64) = v121;
      *(&v177[0] + 1) = v118 + 80;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v122 = objc_msgSend_transparent(v174, v116, v117);
    sub_1AF13D250(&__str, "a");
    LODWORD(v123) = 1.0;
    v126 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v124, v125, v123);
    sub_1AF341028(&__p, @"opacity", v122, &qword_1EB658E40, &__str, v126);
    v129 = *(&v177[0] + 1);
    if (*(&v177[0] + 1) >= *&v177[1])
    {
      *(&v177[0] + 1) = sub_1AF340ED8(v177, &__p);
      if (SHIBYTE(v171) < 0)
      {
        operator delete(v170[0]);
      }
    }

    else
    {
      v130 = *&__p.__r_.__value_.__l.__data_;
      *(*(&v177[0] + 1) + 16) = *(&__p.__r_.__value_.__l + 2);
      *v129 = v130;
      v131 = *v170;
      *(v129 + 40) = v171;
      *(v129 + 24) = v131;
      v170[1] = 0;
      v171 = 0;
      v170[0] = 0;
      v132 = v173;
      *(v129 + 48) = v172;
      *(v129 + 64) = v132;
      *(&v177[0] + 1) = v129 + 80;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v133 = objc_msgSend_ambientOcclusion(v174, v127, v128);
    sub_1AF13D250(&__str, "r");
    sub_1AF341028(&__p, @"occlusion", v133, &qword_1EB658E40, &__str, 0);
    v136 = *(&v177[0] + 1);
    if (*(&v177[0] + 1) >= *&v177[1])
    {
      *(&v177[0] + 1) = sub_1AF340ED8(v177, &__p);
      if (SHIBYTE(v171) < 0)
      {
        operator delete(v170[0]);
      }
    }

    else
    {
      v137 = *&__p.__r_.__value_.__l.__data_;
      *(*(&v177[0] + 1) + 16) = *(&__p.__r_.__value_.__l + 2);
      *v136 = v137;
      v138 = *v170;
      *(v136 + 40) = v171;
      *(v136 + 24) = v138;
      v170[1] = 0;
      v171 = 0;
      v170[0] = 0;
      v139 = v173;
      *(v136 + 48) = v172;
      *(v136 + 64) = v139;
      *(&v177[0] + 1) = v136 + 80;
    }

    v163 = v95;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v140 = *(&v177[0] + 1);
    v141 = *&v177[0];
    if (*&v177[0] != *(&v177[0] + 1))
    {
      do
      {
        v142 = *(v141 + 8);
        if (v142 && objc_msgSend_contents(v142, v134, v135))
        {
          *(v141 + 56) = sub_1AF33F740(v3, *(v141 + 8), v135);
        }

        v141 += 80;
      }

      while (v141 != v140);
      v140 = *(&v177[0] + 1);
      v141 = *&v177[0];
    }

    v164 = v55;
    v165 = v48;
    v166 = v50;
    if (v140 != v141)
    {
      v143 = 0;
      do
      {
        v144 = v141 + 80 * v143;
        if (*(v144 + 56))
        {
          v145 = *(v144 + 64) == 0;
        }

        else
        {
          v145 = 0;
        }

        if (v145)
        {
          v147 = *v144;
          memset(&__p, 0, sizeof(__p));
          __str.__r_.__value_.__r.__words[0] = v141 + 80 * v143;
          sub_1AF141BD4(&__p, &__str);
          v146 = v143 + 1;
          v140 = *(&v177[0] + 1);
          v141 = *&v177[0];
          if (v143 + 1 < 0xCCCCCCCCCCCCCCCDLL * ((*(&v177[0] + 1) - *&v177[0]) >> 4))
          {
            v148 = v57;
            v149 = 80 * v143;
            v150 = v143 + 1;
            do
            {
              v151 = v141 + v149;
              if (objc_msgSend_isEqualToString_(*(v144 + 56), v134, *(v141 + v149 + 136), v163))
              {
                v152 = objc_msgSend_stringByAppendingString_(v147, v134, @"_");
                v147 = objc_msgSend_stringByAppendingString_(v152, v153, *(v151 + 80));
                __str.__r_.__value_.__r.__words[0] = v151 + 80;
                sub_1AF141BD4(&__p, &__str);
              }

              ++v150;
              v140 = *(&v177[0] + 1);
              v141 = *&v177[0];
              v149 += 80;
            }

            while (v150 < 0xCCCCCCCCCCCCCCCDLL * ((*(&v177[0] + 1) - *&v177[0]) >> 4));
            v57 = v148;
          }

          v154 = *&__p.__r_.__value_.__l.__data_;
          v155 = __p.__r_.__value_.__r.__words[0];
          if (__p.__r_.__value_.__r.__words[0] != __p.__r_.__value_.__l.__size_)
          {
            do
            {
              v156 = *v155++;
              *(v156 + 64) = v147;
            }

            while (v155 != *(&v154 + 1));
          }

          if (v154)
          {
            __p.__r_.__value_.__l.__size_ = v154;
            operator delete(v154);
            v140 = *(&v177[0] + 1);
            v141 = *&v177[0];
          }
        }

        else
        {
          v146 = v143 + 1;
        }

        v143 = v146;
      }

      while (v146 < 0xCCCCCCCCCCCCCCCDLL * ((v140 - v141) >> 4));
    }

    for (i = v166; v141 != v140; v141 += 80)
    {
      sub_1AF33FC84(v3, v141, (v163 - 80), v165, v57, v167, v166);
    }

    v157 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v134, v167, @"outputs:surface", qword_1EB658DD0, qword_1EB658E40, v163);
    v178 = objc_msgSend_pathByAppendingPropertyComponent_(v164, v158, @"outputs:surface");
    v160 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v159, &v178, 1);
    objc_msgSend_setConnectionWithTargetPaths_(v157, v161, v160);
    __str.__r_.__value_.__r.__words[0] = &v174;
    sub_1AF33AD00(v168, &v174, &unk_1AFE22A40, &__str)[5] = v166;
    __p.__r_.__value_.__r.__words[0] = v177;
    sub_1AF341E44(&__p);
  }

  return i;
}

void sub_1AF33F470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  a16 = (v44 - 160);
  sub_1AF341E44(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF33F5F8(uint64_t a1, const char *a2)
{
  result = *(a1 + 40);
  if (!result)
  {
    v4 = objc_msgSend_stringByAppendingPathComponent_(*(a1 + 24), a2, @"Materials");
    *(a1 + 40) = v4;
    v6 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v5, v4);
    objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v7, *(a1 + 56), v6, qword_1EB658E00);
    return *(a1 + 40);
  }

  return result;
}

uint64_t *sub_1AF33F664(uint64_t *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x333333333333334)
    {
      sub_1AF340D58(result, a2);
    }

    sub_1AF10A1D0();
  }

  return result;
}

void sub_1AF33F72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AF340E44(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF33F740(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_contents(a2, a2, a3);
  v8 = *(a1 + 176);
  if (v8)
  {
    v9 = a1 + 176;
    do
    {
      v10 = *(v8 + 32);
      v11 = v10 >= v5;
      v12 = v10 < v5;
      if (v11)
      {
        v9 = v8;
      }

      v8 = *(v8 + 8 * v12);
    }

    while (v8);
    if (v9 != a1 + 176 && v5 >= *(v9 + 32))
    {
      v110 = objc_msgSend_contents(a2, v6, v7);
      v111 = &v110;
      return sub_1AF33AD00(a1 + 168, &v110, &unk_1AFE22A40, &v111)[5];
    }
  }

  v110 = 0;
  objc_msgSend_contents(a2, v6, v7);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_msgSend_contents(a2, v13, v14), objc_opt_class(), (objc_opt_isKindOfClass()) || objc_msgSend_contentsAbsoluteURL(a2, v13, v14))
  {
    v15 = objc_msgSend_contentsAbsoluteURL(a2, v13, v14);
    v17 = sub_1AF341548(v15, v16);
    if (v17 || (v20 = objc_msgSend_contents(a2, v18, v19), (v17 = sub_1AF341548(v20, v21)) != 0))
    {
      v22 = v17;
      v23 = objc_msgSend_pathExtension(v17, v18, v19);
      v26 = objc_msgSend_lowercaseString(v23, v24, v25);
      PathComponent = objc_msgSend_lastPathComponent(v22, v27, v28);
      v32 = objc_msgSend_stringByDeletingPathExtension(PathComponent, v30, v31);
      v34 = sub_1AF338AE8(v32, v33);
      v36 = objc_msgSend_stringByAppendingPathExtension_(v34, v35, v26);
      LOBYTE(v111) = 0;
      v37 = sub_1AF3410FC(a1, v36, v22, &v111);
      if (v37 < 1)
      {
        v44 = @"textures";
        v46 = objc_msgSend_stringByAppendingPathComponent_(@"textures", v38, v36);
      }

      else
      {
        v39 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v38, v37);
        v42 = objc_msgSend_stringValue(v39, v40, v41);
        v44 = objc_msgSend_stringByAppendingPathComponent_(@"textures", v43, v42);
        v46 = objc_msgSend_stringByAppendingPathComponent_(v44, v45, v36);
      }

      v48 = v46;
      if (v111 == 1)
      {
        v49 = objc_msgSend_stringByAppendingPathComponent_(*(a1 + 16), v47, v46);
        v52 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v50, v51);
        v54 = objc_msgSend_stringByAppendingPathComponent_(*(a1 + 16), v53, v44);
        objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v52, v55, v54, 1, 0, &v110);
        objc_msgSend_copyItemAtPath_toPath_error_(v52, v56, v22, v49, &v110);
      }

      return v48;
    }
  }

  else
  {
    objc_msgSend_contents(a2, v13, v14);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v57 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v18, @"texgen_%lu.png", *(a1 + 184));
      v48 = objc_msgSend_stringByAppendingPathComponent_(@"textures", v58, v57);
      v60 = objc_msgSend_stringByAppendingPathComponent_(*(a1 + 16), v59, v48);
      v109 = objc_msgSend_contents(a2, v61, v62);
      v111 = &v109;
      sub_1AF33AD00(a1 + 168, &v109, &unk_1AFE22A40, &v111)[5] = v48;
      v65 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v63, v64);
      v67 = objc_msgSend_stringByAppendingPathComponent_(*(a1 + 16), v66, @"textures");
      objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v65, v68, v67, 1, 0, &v110);
      v71 = objc_msgSend_contents(a2, v69, v70);
      v73 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v72, v60);
      objc_msgSend_writeToURL_(v71, v74, v73);
      return v48;
    }
  }

  CFXImageRef = objc_msgSend_getCFXImageRef(a2, v18, v19);
  v109 = CFXImageRef;
  if (!CFXImageRef)
  {
    return 0;
  }

  v76 = CFXImageRef;
  v77 = *(a1 + 200);
  if (v77)
  {
    v78 = a1 + 192;
    v79 = a1 + 200;
    do
    {
      v80 = *(v77 + 32);
      v11 = v80 >= v76;
      v81 = v80 < v76;
      if (v11)
      {
        v79 = v77;
      }

      v77 = *(v77 + 8 * v81);
    }

    while (v77);
    if (v79 != a1 + 200 && v76 >= *(v79 + 32))
    {
      v96 = MEMORY[0x1E696AEC0];
      v111 = &v109;
      v97 = sub_1AF341D08(v78, &v109, &unk_1AFE22A40, &v111);
      v99 = v97 + 5;
      if (*(v97 + 63) < 0)
      {
        v99 = *v99;
      }

      return objc_msgSend_stringWithUTF8String_(v96, v98, v99);
    }
  }

  v103[0] = MEMORY[0x1E69E9820];
  v103[1] = 3221225472;
  v104 = sub_1AF34133C;
  v105 = &unk_1E7A7F2F0;
  v106 = a2;
  v107 = a1;
  v108 = v76;
  v82 = sub_1AF197210(v76, 0);
  if (!v82 && ((v93 = sub_1AF197458(v76, v83)) == 0 || (v82 = CFRetain(v93)) == 0) || (v84 = v82, v85 = CGImageSourceCreateWithData(v82, 0), Type = CGImageSourceGetType(v85), v88 = objc_msgSend_typeWithIdentifier_(MEMORY[0x1E6982C40], v87, Type), v91 = objc_msgSend_preferredFilenameExtension(v88, v89, v90), v102[0] = MEMORY[0x1E69E9820], v102[1] = 3221225472, v102[2] = sub_1AF341490, v102[3] = &unk_1E7A7F310, v102[4] = v84, v48 = v104(v103, v91, v102), CFRelease(v84), CFRelease(v85), !v48))
  {
    v94 = sub_1AF196A24(v76, v92);
    if (v94)
    {
      v101[0] = MEMORY[0x1E69E9820];
      v101[1] = 3221225472;
      v101[2] = sub_1AF3414A0;
      v101[3] = &unk_1E7A7F310;
      v101[4] = v94;
      return v104(v103, @"png", v101);
    }

    return 0;
  }

  return v48;
}

id sub_1AF33FC84(uint64_t a1, const char *a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v308[1] = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 1);
  if (!v8 || !objc_msgSend_contents(v8, a2, a3))
  {
    return 0;
  }

  if (!*(a2 + 7))
  {
    v41 = objc_msgSend_stringByAppendingString_(@"inputs:", v15, *a2);
    objc_msgSend_contents(*(a2 + 1), v42, v43);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v47 = objc_msgSend_contents(*(a2 + 1), v45, v46);
    if (isKindOfClass)
    {
      v301.n128_u64[0] = 0;
      v296 = 0.0;
      v297.n128_u64[0] = 0;
      v295.i64[0] = 0;
      objc_msgSend_getRed_green_blue_alpha_(v47, v48, &v301, &v297, &v295, &v296);
      *&v51 = v301.n128_f64[0];
      v52 = (a2 + 24);
      v53 = *(a2 + 47);
      if ((v53 & 0x80) != 0)
      {
        if (*(a2 + 4) == 1)
        {
          v145 = **v52;
          if (v145 == 103)
          {
            goto LABEL_58;
          }

          if (v145 == 114)
          {
            goto LABEL_35;
          }
        }

        if (*(a2 + 4) == 1)
        {
          v54 = **v52;
          goto LABEL_41;
        }
      }

      else if (v53 == 1)
      {
        v54 = *v52;
        if (v54 != 103)
        {
          if (v54 != 114)
          {
LABEL_41:
            if (v54 == 98)
            {
              v288 = *v295.i64;
              v146 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v49, a5, v41, qword_1EB658D68, *(a2 + 2), v296, v51);
              *&v150 = sub_1AF341DDC(a2, v152);
              v151 = v288;
              goto LABEL_59;
            }

            goto LABEL_43;
          }

LABEL_35:
          v293 = v301.n128_f64[0];
          v146 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v49, a5, v41, qword_1EB658D68, *(a2 + 2), v296);
          *&v150 = sub_1AF341DDC(a2, v147);
          v151 = v293;
LABEL_59:
          *&v150 = *&v150 * v151;
          goto LABEL_60;
        }

LABEL_58:
        v290 = v297.n128_f64[0];
        *&v50 = *v295.i64;
        v146 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v49, a5, v41, qword_1EB658D68, *(a2 + 2), v296, v51, v50);
        *&v150 = sub_1AF341DDC(a2, v163);
        v151 = v290;
        goto LABEL_59;
      }

LABEL_43:
      if ((v53 & 0x80) != 0)
      {
        if (*(a2 + 4) != 1)
        {
LABEL_50:
          v289 = v297.n128_f64[0];
          v294 = v301.n128_f64[0];
          v156 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v49, a5, v41, qword_1EB658D78, *(a2 + 2), v296);
LABEL_120:
          objc_msgSend_setFloat3Value_(v156, v157, v158, COERCE_DOUBLE(__PAIR64__(LODWORD(v289), LODWORD(v294))));
          return 0;
        }

        v52 = *v52;
      }

      else if (v53 != 1)
      {
        goto LABEL_50;
      }

      v153 = *(a2 + 2);
      if (*v52 != 97)
      {
        v289 = v297.n128_f64[0];
        v294 = v301.n128_f64[0];
        v156 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v49, a5, v41, qword_1EB658D78, v153, v296);
        goto LABEL_120;
      }

      v154 = v296;
      v146 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v49, a5, v41, qword_1EB658D68, v153);
      *&v150 = sub_1AF341DDC(a2, v155) * v154;
LABEL_60:
      objc_msgSend_setFloatValue_(v146, v148, v149, v150);
      return 0;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    v138 = objc_msgSend_contents(*(a2 + 1), v136, v137);
    objc_msgSend_floatValue(v138, v139, v140);
    v292 = v142;
    v143 = (a2 + 24);
    v144 = a2[47];
    if (v144 < 0)
    {
      if (*(a2 + 4) != 3)
      {
LABEL_57:
        v146 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v141, a5, v41, qword_1EB658D68, *(a2 + 2));
        *&v150 = *v292.i32 * sub_1AF341DDC(a2, v162);
        goto LABEL_60;
      }

      v143 = *v143;
    }

    else if (v144 != 3)
    {
      goto LABEL_57;
    }

    v159 = *v143;
    v160 = *(v143 + 2);
    if (v159 == 26482 && v160 == 98)
    {
      v275 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v141, a5, v41, qword_1EB658D78, *(a2 + 2));
      objc_msgSend_setFloat3Value_(v275, v276, v277, *vdupq_lane_s32(v292, 0).i64);
      return 0;
    }

    goto LABEL_57;
  }

  v287 = a5;
  v16 = objc_msgSend_stringByAppendingString_(*(a2 + 6), v15, @"_texCoordReader");
  v18 = objc_msgSend_stringByAppendingPathComponent_(a4, v17, v16);
  v291 = a1;
  v285 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v19, v18);
  v21 = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v20, *(a1 + 56));
  v23 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v22, v21, @"info:id", qword_1EB658DD0, qword_1EB658E40);
  v25 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v24, @"UsdPrimvarReader_float2");
  objc_msgSend_setTokenValue_(v23, v26, v25);
  objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v27, v21, @"outputs:result", qword_1EB658D70, qword_1EB658E40);
  v29 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v28, v21, @"inputs:varname", qword_1EB658DD0, qword_1EB658E40);
  if (objc_msgSend_isEqualToString_(*a2, v30, *a3))
  {
    v32 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v31, a6, @"inputs:frame:stPrimvarName", qword_1EB658DD0, qword_1EB658E40);
    v34 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v33, *(a2 + 6));
    objc_msgSend_setTokenValue_(v32, v35, v34);
    v308[0] = objc_msgSend_pathByAppendingPropertyComponent_(a7, v36, @"inputs:frame:stPrimvarName");
    v38 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v37, v308, 1);
    objc_msgSend_setConnectionWithTargetPaths_(v29, v39, v38);
  }

  else if (!a3[7] || (objc_msgSend_isEqualToString_(a3[6], v31, *(a2 + 6)) & 1) == 0)
  {
    v55 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v31, *(a2 + 6));
    objc_msgSend_setTokenValue_(v29, v56, v55);
  }

  objc_msgSend_contentsTransform(*(a2 + 1), v31, v40);
  v281 = v58;
  v283 = v57;
  v278 = v60;
  v279 = v59;
  if (!VFXMatrix4IsIdentity(v57, v58, v59, v60))
  {
    v66 = objc_msgSend_stringByAppendingString_(*(a2 + 8), v61, @"_transform2D");
    v68 = objc_msgSend_stringByAppendingPathComponent_(a4, v67, v66);
    v62 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v69, v68);
    p_vtable = &OBJC_METACLASS___VFXAvoidOccluderConstraint.vtable;
    v71 = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v70, *(a1 + 56), v62, qword_1EB658E08);
    v73 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v72, @"math");
    v75 = objc_msgSend_dataWithToken_(VFXUSKData_helper, v74, v73);
    objc_msgSend_setDictionaryMetadataWithKey_dictionaryKey_value_(v71, v76, @"sdrMetadata", @"role", v75);
    v78 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v77, v71, @"info:id", qword_1EB658DD0, qword_1EB658E40);
    v80 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v79, @"UsdTransform2d");
    objc_msgSend_setTokenValue_(v78, v81, v80);
    v83 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v82, v71, @"inputs:in", qword_1EB658D70, qword_1EB658E40);
    v307 = objc_msgSend_pathByAppendingPropertyComponent_(v285, v84, @"outputs:result");
    v64 = 0x1E695D000uLL;
    v86 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v85, &v307, 1);
    objc_msgSend_setConnectionWithTargetPaths_(v83, v87, v86);
    v88 = 0;
    v89 = *MEMORY[0x1E69E9B18];
    v90 = *(MEMORY[0x1E69E9B18] + 16);
    v91 = vmulq_f32(v283, v283);
    *v91.i8 = vadd_f32(*v91.i8, *&vextq_s8(v91, v91, 8uLL));
    v92 = vmulq_f32(v281, v281);
    *v92.f32 = vadd_f32(*v92.f32, *&vextq_s8(v92, v92, 8uLL));
    v93 = vsqrt_f32(vadd_f32(vzip1_s32(*v91.i8, *v92.f32), vzip2_s32(*v91.i8, *v92.f32)));
    v94 = vmulq_f32(v279, v279);
    v95 = vadd_f32(*v94.i8, *&vextq_s8(v94, v94, 8uLL));
    v95.f32[0] = sqrtf(vaddv_f32(v95));
    *v92.f32 = v93;
    v92.i64[1] = __PAIR64__(1.0, v95.u32[0]);
    __asm { FMOV            V5.4S, #1.0 }

    v100 = vdivq_f32(_Q5, v92);
    v101 = *(MEMORY[0x1E69E9B18] + 32);
    v102 = *(MEMORY[0x1E69E9B18] + 48);
    v103 = vdupq_lane_s32(v93, 0);
    v104 = vdivq_f32(v281, vdupq_lane_s32(v93, 1));
    v105 = vdivq_f32(v279, vdupq_lane_s32(v95, 0));
    v106 = vzip1q_s32(v104, v102);
    v297 = v283;
    v298 = v281;
    v299 = v279;
    v300 = v278;
    do
    {
      *(&v301 + v88) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v89, COERCE_FLOAT(*(&v297 + v88))), v90, v297.n128_u64[v88 / 8], 1), v101, *(&v297 + v88), 2), xmmword_1AFE47A00, *(&v297 + v88), 3);
      v88 += 16;
    }

    while (v88 != 64);
    v107 = 0;
    v112.i64[0] = 0;
    v112.i32[2] = 0;
    v108 = vdivq_f32(v283, v103);
    v109 = vzip1q_s32(v108, v105);
    v110.i64[0] = 0;
    v110.i64[1] = v100.u32[2];
    v111.i32[0] = 0;
    v111.i64[1] = 0;
    v111.i32[1] = v100.i32[1];
    v112.i32[3] = v100.i32[3];
    v297 = v301;
    v298 = v302;
    v299 = v303;
    v300 = v304;
    do
    {
      *(&v301 + v107) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v100.u32[0], COERCE_FLOAT(*(&v297 + v107))), v111, v297.n128_u64[v107 / 8], 1), v110, *(&v297 + v107), 2), v112, *(&v297 + v107), 3);
      v107 += 16;
    }

    while (v107 != 64);
    v113 = 0;
    v114 = vzip1q_s32(v109, v106);
    v115 = vzip2q_s32(v104, v102);
    v116 = vzip2q_s32(v108, v105);
    v117 = vzip1q_s32(v116, v115);
    v118 = vzip2q_s32(v109, v106);
    v119 = vzip2q_s32(v116, v115);
    v297 = v301;
    v298 = v302;
    v299 = v303;
    v300 = v304;
    v65 = &unk_1EB658000;
    do
    {
      *(&v301 + v113) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v114, COERCE_FLOAT(*(&v297 + v113))), v118, v297.n128_u64[v113 / 8], 1), v117, *(&v297 + v113), 2), v119, *(&v297 + v113), 3);
      v113 += 16;
    }

    while (v113 != 64);
    v120 = 0;
    v297 = v301;
    v298 = v302;
    v299 = v303;
    v300 = v304;
    do
    {
      *(&v301 + v120) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v89, COERCE_FLOAT(*(&v297 + v120))), v90, v297.n128_u64[v120 / 8], 1), v101, *(&v297 + v120), 2), xmmword_1AFE21180, *(&v297 + v120), 3);
      v120 += 16;
    }

    while (v120 != 64);
    v121 = v304;
    v122 = vmulq_n_f32(v108, v93.f32[0]);
    v123 = vmulq_lane_f32(v104, v93, 1);
    v122.i32[1] = vnegq_f32(v122).i32[1];
    v123.f32[0] = -v123.f32[0];
    v121.n128_u32[1] = vnegq_f32(v304).u32[1];
    v297.n128_u32[2] = 0;
    v297.n128_u64[0] = 0;
    v295.i32[2] = 0;
    v295.i64[0] = 0;
    sub_1AF3041C0(&v301, &v297, &v295, v122, v123, vmulq_n_f32(v105, v95.f32[0]), v121);
    v125 = 0.0;
    v126 = 0.0;
    _Q2 = v301;
    v128 = vmulq_f32(_Q2, _Q2);
    v129 = vadd_f32(*v128.i8, *&vextq_s8(v128, v128, 8uLL));
    v129.f32[0] = vaddv_f32(v129);
    if (v129.f32[0] == 0.0)
    {
      goto LABEL_62;
    }

    v130 = v301.n128_f32[3];
    _KR00_8 = *(v301.n128_i64 + 4);
    __asm { FMLA            S1, S9, V2.S[3] }

    v133 = _S1 / v129.f32[0];
    v134 = (_S1 / v129.f32[0]);
    if (v134 <= 0.4999)
    {
      if (v134 >= -0.4999)
      {
        v164 = *&v128.i32[1];
        v165 = v128.i64[1];
        v280 = v301.n128_f32[0];
        v282 = *v128.i32;
        v286 = atan2f(((v301.n128_f32[0] * v301.n128_f32[3]) + (v301.n128_f32[1] * v301.n128_f32[2])) + ((v301.n128_f32[0] * v301.n128_f32[3]) + (v301.n128_f32[1] * v301.n128_f32[2])), *&v128.i32[3] + (*&v128.i32[2] + (-*v128.i32 - *&v128.i32[1])));
        v284 = asinf(v133 + v133);
        v129.f32[0] = atan2f(((*(&_KR00_8 + 1) * v130) + (v280 * *&_KR00_8)) + ((*(&_KR00_8 + 1) * v130) + (v280 * *&_KR00_8)), *(&v165 + 1) + ((v282 - v164) - *&v165));
        v125 = COERCE_DOUBLE(__PAIR64__(LODWORD(v284), LODWORD(v286)));
        v126 = v129.f32[0];
        goto LABEL_62;
      }

      v129.f32[0] = atan2f(v301.n128_f32[0], v301.n128_f32[3]);
      *&v125 = v129.f32[0] + v129.f32[0];
      v135 = &dword_1AFE21DB8;
    }

    else
    {
      v129.f32[0] = atan2f(v301.n128_f32[0], v301.n128_f32[3]);
      *&v125 = v129.f32[0] + v129.f32[0];
      v135 = &dword_1AFE21AFC;
    }

    HIDWORD(v125) = *v135;
    v126 = 0.0;
LABEL_62:
    v166 = v126;
    if (v126 != 0.0)
    {
      v167 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v124, v71, @"inputs:rotation", qword_1EB658D68, qword_1EB658E40, *&v129, v125);
      v168 = v166 / 3.14159265 * 180.0;
      *&v168 = v168;
      objc_msgSend_setFloatValue_(v167, v169, v170, v168);
    }

    v171 = *v295.i64;
    if (*v295.i32 != 0.0 || (LODWORD(v171) = v295.i32[1], *&v295.i32[1] != 0.0))
    {
      v172 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v124, v71, @"inputs:scale", qword_1EB658D70, qword_1EB658E40, v171, *&v278);
      objc_msgSend_setFloat2Value_(v172, v173, v174, *v295.i64);
    }

    v175 = v297.n128_f64[0];
    if (v297.n128_f32[0] != 0.0 || (LODWORD(v175) = v297.n128_u32[1], v297.n128_f32[1] != 0.0))
    {
      v176 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v124, v71, @"inputs:translation", qword_1EB658D70, qword_1EB658E40, v175, *&v278);
      objc_msgSend_setFloat2Value_(v176, v177, v178, v297.n128_f64[0]);
    }

    objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v124, v71, @"outputs:result", qword_1EB658D70, qword_1EB658E40, v175, *&v278);
    goto LABEL_71;
  }

  v62 = v285;
  p_vtable = (&OBJC_METACLASS___VFXAvoidOccluderConstraint + 24);
  v64 = 0x1E695D000;
  v65 = &unk_1EB658000;
LABEL_71:
  v179 = objc_msgSend_stringByAppendingString_(*(a2 + 8), v61, @"_texture", *&v278);
  v181 = objc_msgSend_stringByAppendingPathComponent_(a4, v180, v179);
  v183 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v182, v181);
  v185 = objc_msgSend_world_nodeAtPath_type_(p_vtable + 297, v184, *(v291 + 56), v183, qword_1EB658E08);
  v187 = objc_msgSend_node_propertyWithName_type_role_(p_vtable + 297, v186, v185, @"info:id", v65[442], qword_1EB658E40);
  v189 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v188, @"UsdUVTexture");
  objc_msgSend_setTokenValue_(v187, v190, v189);
  if (objc_msgSend_isEqualToString_(*a2, v191, *a3))
  {
    v193 = objc_msgSend_node_propertyWithName_type_role_(p_vtable + 297, v192, v185, @"inputs:scale", qword_1EB658D80, qword_1EB658E40);
    objc_msgSend_setFloat4Value_(v193, v194, v195, 2.00000048);
    v197 = objc_msgSend_node_propertyWithName_type_role_(p_vtable + 297, v196, v185, @"inputs:bias", qword_1EB658D80, qword_1EB658E40);
    __asm { FMOV            V0.4S, #-1.0 }

    objc_msgSend_setFloat4Value_(v197, v199, v200, *&_Q0);
  }

  v201 = objc_msgSend_node_propertyWithName_type_role_(p_vtable + 297, v192, v185, @"inputs:file", qword_1EB658D38, qword_1EB658E40);
  objc_msgSend_setResourcePath_(v201, v202, *(a2 + 7));
  if (v62)
  {
    v204 = objc_msgSend_node_propertyWithName_type_role_(p_vtable + 297, v203, v185, @"inputs:st", qword_1EB658D70, qword_1EB658E40);
    v306 = objc_msgSend_pathByAppendingPropertyComponent_(v62, v205, @"outputs:result");
    v207 = objc_msgSend_arrayWithObjects_count_(*(v64 + 3784), v206, &v306, 1);
    objc_msgSend_setConnectionWithTargetPaths_(v204, v208, v207);
  }

  v209 = objc_msgSend_node_propertyWithName_type_role_(p_vtable + 297, v203, v185, @"inputs:wrapS", v65[442], qword_1EB658E40);
  v213 = objc_msgSend_wrapS(*(a2 + 1), v210, v211) - 1;
  if (v213 > 3)
  {
    v214 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v212, @"repeat");
  }

  else
  {
    v214 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v212, off_1E7A7F370[v213]);
  }

  objc_msgSend_setTokenValue_(v209, v215, v214);
  v217 = objc_msgSend_node_propertyWithName_type_role_(p_vtable + 297, v216, v185, @"inputs:wrapT", v65[442], qword_1EB658E40);
  v221 = objc_msgSend_wrapT(*(a2 + 1), v218, v219) - 1;
  if (v221 > 3)
  {
    v222 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v220, @"repeat");
  }

  else
  {
    v222 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v220, off_1E7A7F370[v221]);
  }

  objc_msgSend_setTokenValue_(v217, v223, v222);
  if (objc_msgSend_minificationFilter(*(a2 + 1), v224, v225))
  {
    v228 = objc_msgSend_node_propertyWithName_type_role_(p_vtable + 297, v226, v185, @"inputs:minFilter", qword_1EB658DD0, qword_1EB658E40);
    v231 = objc_msgSend_minificationFilter(*(a2 + 1), v229, v230);
    if (v231 == 1)
    {
      v233 = @"nearest";
    }

    else
    {
      v233 = &stru_1F2575650;
    }

    if (v231 == 2)
    {
      v234 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v232, @"linear");
    }

    else
    {
      v234 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v232, v233);
    }

    objc_msgSend_setTokenValue_(v228, v235, v234);
  }

  if (objc_msgSend_magnificationFilter(*(a2 + 1), v226, v227))
  {
    v237 = objc_msgSend_node_propertyWithName_type_role_(p_vtable + 297, v236, v185, @"inputs:magFilter", qword_1EB658DD0, qword_1EB658E40);
    v240 = objc_msgSend_magnificationFilter(*(a2 + 1), v238, v239);
    if (v240 == 1)
    {
      v242 = @"nearest";
    }

    else
    {
      v242 = &stru_1F2575650;
    }

    if (v240 == 2)
    {
      v243 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v241, @"linear");
    }

    else
    {
      v243 = objc_msgSend_tokenWithString_(VFXUSKToken_helper, v241, v242);
    }

    objc_msgSend_setTokenValue_(v237, v244, v243);
  }

  if (a2[47] >= 0)
  {
    v245 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v236, (a2 + 24));
  }

  else
  {
    v245 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v236, *(a2 + 3));
  }

  v248 = v245;
  v249 = *(a2 + 47);
  if ((v249 & 0x80u) != 0)
  {
    v249 = *(a2 + 4);
  }

  if (v249 == 1)
  {
    v250 = &qword_1EB658D68;
  }

  else
  {
    v250 = &qword_1EB658D78;
  }

  v251 = *v250;
  if (objc_msgSend_textureComponents(*(a2 + 1), v246, v247) == 8)
  {
    v254 = qword_1EB658D68;
    v255 = 0x1E695D000;
    v256 = objc_msgSend_stringByAppendingString_(@"outputs:", v252, @"r");
  }

  else
  {
    v255 = 0x1E695D000uLL;
    if (objc_msgSend_textureComponents(*(a2 + 1), v252, v253) == 4)
    {
      v254 = qword_1EB658D68;
      v256 = objc_msgSend_stringByAppendingString_(@"outputs:", v258, @"g");
    }

    else if (objc_msgSend_textureComponents(*(a2 + 1), v258, v259) == 2)
    {
      v254 = qword_1EB658D68;
      v256 = objc_msgSend_stringByAppendingString_(@"outputs:", v260, @"b");
    }

    else
    {
      v262 = objc_msgSend_textureComponents(*(a2 + 1), v260, v261);
      if (v262 == 1)
      {
        v264 = @"a";
      }

      else
      {
        v264 = v248;
      }

      if (v262 == 1)
      {
        v254 = qword_1EB658D68;
      }

      else
      {
        v254 = v251;
      }

      v256 = objc_msgSend_stringByAppendingString_(@"outputs:", v263, v264);
    }
  }

  v265 = v256;
  objc_msgSend_node_propertyWithName_type_role_(p_vtable + 297, v257, v185, v256, v254, qword_1EB658E40);
  v267 = objc_msgSend_stringByAppendingString_(@"inputs:", v266, *a2);
  v269 = objc_msgSend_node_propertyWithName_type_role_(p_vtable + 297, v268, v287, v267, v254, *(a2 + 2));
  v305 = objc_msgSend_pathByAppendingPropertyComponent_(v183, v270, v265);
  v272 = objc_msgSend_arrayWithObjects_count_(*(v255 + 3784), v271, &v305, 1);
  objc_msgSend_setConnectionWithTargetPaths_(v269, v273, v272);
  return v183;
}

uint64_t sub_1AF340C28(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AF10A1D0();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
}

uint64_t sub_1AF340CB4(uint64_t **a1, uint64_t ***a2, uint64_t a3)
{
  v3 = *sub_1AF33C494(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void sub_1AF340D58(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_1AF10A1D0();
}

void sub_1AF340DB0(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 5);
      *(a4 + 24) = v8;
      *(v6 + 4) = 0;
      *(v6 + 5) = 0;
      *(v6 + 3) = 0;
      v9 = v6[4];
      *(a4 + 48) = v6[3];
      *(a4 + 64) = v9;
      v6 += 5;
      a4 += 80;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 3));
      }

      v5 += 5;
    }
  }
}

uint64_t sub_1AF340E44(uint64_t a1)
{
  sub_1AF340E7C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1AF340E7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 80;
      *(a1 + 16) = v2 - 80;
      if (*(v2 - 33) < 0)
      {
        operator delete(*(v2 - 56));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_1AF340ED8(uint64_t a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_1AF10A1D0();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_1AF340D58(a1, v6);
  }

  v7 = 80 * v2;
  v17 = 0;
  v18 = v7;
  *(&v19 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  v9 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(v7 + 24) = v9;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v10 = a2[4];
  *(v7 + 48) = a2[3];
  *(v7 + 64) = v10;
  *&v19 = 80 * v2 + 80;
  v11 = *(a1 + 8);
  v12 = 80 * v2 + *a1 - v11;
  sub_1AF340DB0(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_1AF340E44(&v17);
  return v16;
}

void sub_1AF341014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1AF340E44(va);
  _Unwind_Resume(a1);
}

std::string *sub_1AF341028(std::string *a1, std::string::size_type a2, void *a3, std::string::size_type *a4, std::string *__str, std::string::size_type a6)
{
  a1[1].__r_.__value_.__r.__words[0] = 0;
  a1[1].__r_.__value_.__l.__size_ = 0;
  a1[1].__r_.__value_.__r.__words[2] = 0;
  a1[2].__r_.__value_.__l.__size_ = 0;
  a1[2].__r_.__value_.__r.__words[2] = 0;
  a1[2].__r_.__value_.__r.__words[0] = @"st";
  a1->__r_.__value_.__r.__words[0] = a2;
  a1->__r_.__value_.__l.__size_ = a3;
  a1->__r_.__value_.__r.__words[2] = *a4;
  std::string::operator=(a1 + 1, __str);
  if (objc_msgSend_mappingChannel(a3, v9, v10) >= 1)
  {
    v13 = MEMORY[0x1E696AD98];
    v14 = objc_msgSend_mappingChannel(a3, v11, v12);
    v16 = objc_msgSend_numberWithInteger_(v13, v15, v14);
    v19 = objc_msgSend_stringValue(v16, v17, v18);
    a1[2].__r_.__value_.__r.__words[0] = objc_msgSend_stringByAppendingString_(@"st", v20, v19);
  }

  a1[3].__r_.__value_.__r.__words[0] = a6;
  return a1;
}

void sub_1AF3410E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AF3410FC(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  *a4 = 1;
  v7 = objc_msgSend_UTF8String(a2, a2, a3);
  sub_1AF13D250(v30, v7);
  v10 = objc_msgSend_UTF8String(a3, v8, v9);
  sub_1AF13D250(__p, v10);
  v11 = sub_1AF33C394(a1 + 216, v30);
  v12 = v11;
  if (a1 + 224 == v11)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    sub_1AF341604(&v25, __p);
    v33 = v30;
    v23 = sub_1AF3418D0((a1 + 216), v30, &unk_1AFE22A40, &v33, &v32) + 7;
    if (v23 != &v25)
    {
      sub_1AF341A68(v23, v25, v26, 0xAAAAAAAAAAAAAAABLL * ((v26 - v25) >> 3));
    }

    v34 = &v25;
    sub_1AF338DF4(&v34);
    v15 = 0;
  }

  else
  {
    v13 = *(v11 + 56);
    v14 = *(v11 + 64) - v13;
    if (v14)
    {
      v15 = 0;
      v16 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 3);
      if ((v29 & 0x80u) == 0)
      {
        v17 = v29;
      }

      else
      {
        v17 = __p[1];
      }

      if ((v29 & 0x80u) == 0)
      {
        v18 = __p;
      }

      else
      {
        v18 = __p[0];
      }

      if (v16 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = v16;
      }

      while (1)
      {
        v20 = *(v13 + 23);
        v21 = v20;
        if ((v20 & 0x80u) != 0)
        {
          v20 = *(v13 + 8);
        }

        if (v20 == v17)
        {
          v22 = v21 >= 0 ? v13 : *v13;
          if (!memcmp(v22, v18, v17))
          {
            break;
          }
        }

        ++v15;
        v13 += 24;
        if (v19 == v15)
        {
          goto LABEL_20;
        }
      }

      *a4 = 0;
    }

    else
    {
LABEL_20:
      sub_1AF341604((v12 + 56), __p);
      v15 = -1431655765 * ((*(v12 + 64) - *(v12 + 56)) >> 3) - 1;
    }
  }

  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  return v15;
}

void sub_1AF3412F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1AF34133C(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  v7 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a3);
  v9 = objc_msgSend_stringByAppendingPathComponent_(*(v6 + 16), v8, @"textures");
  objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v7, v10, v9, 1, 0, 0);
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, @"texgen_%lu", *(v6 + 184));
  v14 = objc_msgSend_stringByAppendingPathExtension_(v12, v13, a2);
  v16 = objc_msgSend_stringByAppendingPathComponent_(@"textures", v15, v14);
  v18 = objc_msgSend_stringByAppendingPathComponent_(*(v6 + 16), v17, v16);
  v26 = objc_msgSend_contents(*(a1 + 32), v19, v20);
  v27 = &v26;
  sub_1AF33AD00(v6 + 168, &v26, &unk_1AFE22A40, &v27)[5] = v16;
  v23 = objc_msgSend_UTF8String(v16, v21, v22);
  v27 = (a1 + 48);
  v24 = sub_1AF341D08(v6 + 192, (a1 + 48), &unk_1AFE22A40, &v27);
  sub_1AF2737B0((v24 + 5), v23);
  if ((*(a3 + 16))(a3, v18))
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1AF3414A0(uint64_t a1, const __CFString *a2)
{
  v3 = CFURLCreateWithFileSystemPath(0, a2, kCFURLPOSIXPathStyle, 0);
  v6 = objc_msgSend_identifier(*MEMORY[0x1E6982F28], v4, v5);
  v7 = CGImageDestinationCreateWithURL(v3, v6, 1uLL, 0);
  CFRelease(v3);
  if (v7)
  {
    CGImageDestinationAddImage(v7, *(a1 + 32), 0);
    CGImageDestinationFinalize(v7);
    CFRelease(*(a1 + 32));
    v8 = v7;
  }

  else
  {
    v8 = *(a1 + 32);
  }

  CFRelease(v8);
  return v7 != 0;
}

void *sub_1AF341548(void *a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v3, v4);
      goto LABEL_4;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = objc_msgSend_query(v2, v7, v8);
      if (!objc_msgSend_length(v9, v10, v11))
      {
        v2 = objc_msgSend_path(v2, v12, v13);
        v5 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v14, v15);
        if (v2)
        {
LABEL_4:
          if (objc_msgSend_fileExistsAtPath_(v5, v6, v2))
          {
            return v2;
          }
        }
      }
    }

    else
    {
      objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v7, v8);
    }

    return 0;
  }

  return v2;
}

uint64_t sub_1AF341604(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1AF3416A4(a1, a2);
  }

  else
  {
    sub_1AF341644(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void *sub_1AF341644(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_1AF13D384(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_1AF3416A4(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1AF10A1D0();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_1AF3417E4(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_1AF13D384(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_1AF34183C(&v17);
  return v11;
}

void sub_1AF3417D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AF34183C(va);
  _Unwind_Resume(a1);
}

void sub_1AF3417E4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1AF10A1D0();
}

uint64_t sub_1AF34183C(uint64_t a1)
{
  sub_1AF341874(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1AF341874(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void *sub_1AF3418D0(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *sub_1AF33C494(a1, &v7, a2);
  if (!v5)
  {
    sub_1AF341978();
  }

  return v5;
}

uint64_t sub_1AF341A1C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1AF338DAC(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1AF341A68(uint64_t *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_1AF341C08(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_1AF341C48(a1, v10);
    }

    sub_1AF10A1D0();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8++, v6++);
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v15 = *(v11 - 1);
      v11 -= 3;
      if (v15 < 0)
      {
        operator delete(*v11);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = __str;
      do
      {
        std::string::operator=(v8++, v14++);
        v13 -= 24;
      }

      while (v13);
      v11 = a1[1];
    }

    a1[1] = sub_1AF341C94(a1, (v6 + v12), a3, v11);
  }
}

void sub_1AF341C08(uint64_t a1)
{
  if (*a1)
  {
    sub_1AF338E48(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_1AF341C48(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1AF3417E4(a1, a2);
  }

  sub_1AF10A1D0();
}

char *sub_1AF341C94(int a1, __int128 *a2, __int128 *a3, char *__dst)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_1AF13D384(__dst, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        *(__dst + 2) = *(v6 + 2);
        *__dst = v7;
      }

      v6 = (v6 + 24);
      __dst += 24;
    }

    while (v6 != a3);
  }

  return __dst;
}

void *sub_1AF341D08(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

float sub_1AF341DDC(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 72))
  {
    return 1.0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 1.0;
  }

  v5 = *(a1 + 72);

  objc_msgSend_floatValue(v5, v3, v4);
  return result;
}

void sub_1AF341E44(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1AF341E98(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1AF341E98(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 80)
  {
    if (*(i - 33) < 0)
    {
      operator delete(*(i - 56));
    }
  }

  a1[1] = v2;
}

uint64_t sub_1AF341EE8(uint64_t a1, const char *a2, void *a3)
{
  v3 = a3;
  v6 = objc_msgSend_length(a3, a2, a3);
  v8 = sub_1AF339A70(a1, v7);
  if (v6 > objc_msgSend_length(v8, v9, v10))
  {
    v12 = sub_1AF339A70(a1, v11);
    v14 = sub_1AF339A70(a1, v13);
    v17 = objc_msgSend_length(v14, v15, v16);
    v19 = objc_msgSend_substringToIndex_(v3, v18, v17);
    if (objc_msgSend_isEqualToString_(v12, v20, v19))
    {
      v21 = sub_1AF339A70(a1, v11);
      v24 = objc_msgSend_length(v21, v22, v23);
      v3 = objc_msgSend_substringFromIndex_(v3, v25, v24);
    }
  }

  v26 = objc_msgSend_stringByAppendingString_(v3, v11, @":");
  v28 = objc_msgSend_stringByAppendingString_(v26, v27, a2);
  if (objc_msgSend_characterAtIndex_(v28, v29, 0) == 47)
  {
    v28 = objc_msgSend_substringFromIndex_(v28, v30, 1);
  }

  return objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v28, v30, @"/", @":");
}

uint64_t sub_1AF341FE8(uint64_t a1, const char *a2, void *a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_1AF342B78(a1, a2, a3);
  }

  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {
    return result;
  }

  v9 = objc_msgSend_keyTimes(a3, v7, v8);
  result = objc_msgSend_count(v9, v10, v11);
  if (!result)
  {
    return result;
  }

  v14 = objc_msgSend_count(v9, v12, v13);
  v16 = objc_msgSend_objectAtIndexedSubscript_(v9, v15, v14 - 1);
  objc_msgSend_doubleValue(v16, v17, v18);
  v20 = v19;
  v22 = objc_msgSend_objectAtIndexedSubscript_(v9, v21, 0);
  result = objc_msgSend_doubleValue(v22, v23, v24);
  v28 = v20 - v27;
  if (v20 - v27 < 0.0001)
  {
    return result;
  }

  objc_msgSend_duration(a3, v25, v26);
  v30 = v29;
  v33 = objc_msgSend_keyPath(a3, v31, v32);
  v35 = objc_msgSend_componentsSeparatedByString_(v33, v34, @".");
  v38 = objc_msgSend_count(v35, v36, v37) - 1;
  v40 = objc_msgSend_objectAtIndex_(v35, v39, v38);
  if (objc_msgSend_count(v35, v41, v42) < 2)
  {
    v45 = 0;
    goto LABEL_21;
  }

  if (objc_msgSend_isEqualToString_(v40, v43, @"x"))
  {
    v45 = @"X";
  }

  else if (objc_msgSend_isEqualToString_(v40, v43, @"y"))
  {
    v45 = @"Y";
  }

  else if (objc_msgSend_isEqualToString_(v40, v43, @"z"))
  {
    v45 = @"Z";
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(v40, v43, @"w"))
    {
      v45 = 0;
      if (!v38)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    v45 = @"W";
  }

  v38 = objc_msgSend_count(v35, v43, v44) - 2;
  v40 = objc_msgSend_objectAtIndex_(v35, v46, v38);
  if (!v38)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (objc_msgSend_isEqualToString_(v40, v43, @"euler"))
  {
    v47 = objc_msgSend_objectAtIndex_(v35, v43, v38 - 1);
    v49 = objc_msgSend_stringByAppendingString_(v47, v48, @".");
    v40 = objc_msgSend_stringByAppendingString_(v49, v50, v40);
  }

LABEL_21:
  v51 = v30 / v28;
  if (objc_msgSend_isEqualToString_(v40, v43, @"transform"))
  {
    if (objc_msgSend_count(v9, v52, v53))
    {
      v55 = 0;
      do
      {
        v56 = objc_msgSend_objectAtIndexedSubscript_(v9, v54, v55);
        objc_msgSend_doubleValue(v56, v57, v58);
        v60 = v59;
        objc_msgSend_beginTime(a3, v61, v62);
        v64 = v63 + v60 * v51;
        v67 = objc_msgSend_values(a3, v65, v66);
        v69 = objc_msgSend_objectAtIndexedSubscript_(v67, v68, v55);
        objc_msgSend_VFXMatrix4Value(v69, v70, v71);
        v294 = vcvtq_f64_f32(*v73.f32);
        v296 = vcvtq_f64_f32(*v72.f32);
        v291 = vcvtq_f64_f32(*v74.f32);
        v292 = vcvt_hight_f64_f32(v72);
        v289 = vcvt_hight_f64_f32(v74);
        v290 = vcvt_hight_f64_f32(v73);
        v287 = vcvt_hight_f64_f32(v75);
        v288 = vcvtq_f64_f32(*v75.f32);
        v77 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v76, a2, @"xformOp:transform", qword_1EB658D58, qword_1EB658E40);
        v301[0] = v296;
        v301[1] = v292;
        v301[2] = v294;
        v301[3] = v290;
        v301[4] = v291;
        v301[5] = v289;
        v301[6] = v288;
        v301[7] = v287;
        v79 = v64 / *(a1 + 504) + 0.0;
        v80 = v79;
        if (vabdd_f64(v79, v80) >= 0.001)
        {
          if (1.0 - (v79 - v80) < 0.001)
          {
            v79 = v80 + 1.0;
          }

          objc_msgSend_setDouble4x4Value_atTime_(v77, v78, v301, v79);
        }

        else
        {
          objc_msgSend_setDouble4x4Value_atTime_(v77, v78, v301, v79);
        }

        ++v55;
      }

      while (v55 < objc_msgSend_count(v9, v81, v82));
    }

    return objc_msgSend_addObject_(*(a1 + 88), v54, @"xformOp:transform");
  }

  if (objc_msgSend_isEqualToString_(v40, v52, @"position"))
  {
    if (!v45)
    {
      if (objc_msgSend_count(v9, v83, v84))
      {
        v146 = 0;
        do
        {
          v147 = objc_msgSend_objectAtIndexedSubscript_(v9, v88, v146);
          objc_msgSend_doubleValue(v147, v148, v149);
          v151 = v150;
          objc_msgSend_beginTime(a3, v152, v153);
          v155 = v154 + v151 * v51;
          v158 = objc_msgSend_values(a3, v156, v157);
          v160 = objc_msgSend_objectAtIndexedSubscript_(v158, v159, v146);
          objc_msgSend_VFXFloat3Value(v160, v161, v162);
          v298 = v163;
          v165 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v164, a2, @"xformOp:translate", qword_1EB658D78, qword_1EB658E40);
          v168 = v155 / *(a1 + 504) + 0.0;
          v169 = v168;
          if (vabdd_f64(v168, v169) >= 0.001)
          {
            if (1.0 - (v168 - v169) < 0.001)
            {
              v168 = v169 + 1.0;
            }

            objc_msgSend_setFloat3Value_atTime_(v165, v166, v167, v298, v168);
          }

          else
          {
            objc_msgSend_setFloat3Value_atTime_(v165, v166, v167, v298, v168);
          }

          ++v146;
        }

        while (v146 < objc_msgSend_count(v9, v170, v171));
      }

      v116 = *(a1 + 88);
      v117 = @"xformOp:translate";
      goto LABEL_62;
    }

    v85 = objc_msgSend_stringByAppendingString_(@"xformOp:translate", v83, v45);
    if (objc_msgSend_count(v9, v86, v87))
    {
      v89 = 0;
      do
      {
        v90 = objc_msgSend_objectAtIndexedSubscript_(v9, v88, v89);
        objc_msgSend_doubleValue(v90, v91, v92);
        v94 = v93;
        objc_msgSend_beginTime(a3, v95, v96);
        v98 = v97 + v94 * v51;
        v101 = objc_msgSend_values(a3, v99, v100);
        v103 = objc_msgSend_objectAtIndexedSubscript_(v101, v102, v89);
        objc_msgSend_floatValue(v103, v104, v105);
        v107 = v106;
        v109 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v108, a2, v85, qword_1EB658D68, qword_1EB658E40);
        v112 = v98 / *(a1 + 504) + 0.0;
        v113 = v112;
        if (vabdd_f64(v112, v113) >= 0.001)
        {
          if (1.0 - (v112 - v113) < 0.001)
          {
            v112 = v113 + 1.0;
          }
        }

        else
        {
          v112 = v112;
        }

        LODWORD(v113) = v107;
        objc_msgSend_setFloatValue_atTime_(v109, v110, v111, v113, v112);
        ++v89;
      }

      while (v89 < objc_msgSend_count(v9, v114, v115));
    }
  }

  else
  {
    if ((objc_msgSend_isEqualToString_(v40, v83, @"orientation") & 1) != 0 || objc_msgSend_isEqualToString_(v40, v118, @"quaternion"))
    {
      if (objc_msgSend_count(v9, v118, v119))
      {
        v120 = 0;
        do
        {
          v121 = objc_msgSend_objectAtIndexedSubscript_(v9, v88, v120);
          objc_msgSend_doubleValue(v121, v122, v123);
          v125 = v124;
          objc_msgSend_beginTime(a3, v126, v127);
          v129 = v128 + v125 * v51;
          v132 = objc_msgSend_values(a3, v130, v131);
          v134 = objc_msgSend_objectAtIndexedSubscript_(v132, v133, v120);
          objc_msgSend_VFXFloat4Value(v134, v135, v136);
          v297 = v137;
          v139 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v138, a2, @"xformOp:orient", qword_1EB658DB8, qword_1EB658E40);
          v142 = v129 / *(a1 + 504) + 0.0;
          v143 = v142;
          if (vabdd_f64(v142, v143) >= 0.001)
          {
            if (1.0 - (v142 - v143) < 0.001)
            {
              v142 = v143 + 1.0;
            }

            objc_msgSend_setQuatfValue_atTime_(v139, v140, v141, v297, v142);
          }

          else
          {
            objc_msgSend_setQuatfValue_atTime_(v139, v140, v141, v297, v142);
          }

          ++v120;
        }

        while (v120 < objc_msgSend_count(v9, v144, v145));
      }

      v116 = *(a1 + 88);
      v117 = @"xformOp:orient";
      goto LABEL_62;
    }

    if ((objc_msgSend_isEqualToString_(v40, v118, @"eulerAngles") & 1) != 0 || objc_msgSend_isEqualToString_(v40, v172, @"rotation.euler"))
    {
      if (!v45)
      {
        if (objc_msgSend_count(v9, v172, v173))
        {
          v204 = 0;
          v293 = vdupq_n_s64(0x4066800000000000uLL);
          v295 = vdupq_n_s64(0x400921FB54442D18uLL);
          do
          {
            v205 = objc_msgSend_objectAtIndexedSubscript_(v9, v88, v204);
            objc_msgSend_doubleValue(v205, v206, v207);
            v209 = v208;
            objc_msgSend_beginTime(a3, v210, v211);
            v213 = v212 + v209 * v51;
            v216 = objc_msgSend_values(a3, v214, v215);
            v218 = objc_msgSend_objectAtIndexedSubscript_(v216, v217, v204);
            objc_msgSend_VFXFloat3Value(v218, v219, v220);
            v299 = v221;
            v223 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v222, a2, @"xformOp:rotateXYZ", qword_1EB658D78, qword_1EB658E40);
            v226 = v213 / *(a1 + 504) + 0.0;
            v227 = v226;
            if (vabdd_f64(v226, v227) >= 0.001)
            {
              if (1.0 - (v226 - v227) < 0.001)
              {
                v226 = v227 + 1.0;
              }
            }

            else
            {
              v226 = v226;
            }

            objc_msgSend_setFloat3Value_atTime_(v223, v224, v225, COERCE_DOUBLE(vcvt_f32_f64(vmulq_f64(vdivq_f64(vcvtq_f64_f32(v299), v295), v293))), v226);
            ++v204;
          }

          while (v204 < objc_msgSend_count(v9, v228, v229));
        }

        v116 = *(a1 + 88);
        v117 = @"xformOp:rotateXYZ";
        goto LABEL_62;
      }

      v85 = objc_msgSend_stringByAppendingString_(@"xformOp:rotate", v172, v45);
      if (objc_msgSend_count(v9, v174, v175))
      {
        v176 = 0;
        do
        {
          v177 = objc_msgSend_objectAtIndexedSubscript_(v9, v88, v176);
          objc_msgSend_doubleValue(v177, v178, v179);
          v181 = v180;
          objc_msgSend_beginTime(a3, v182, v183);
          v185 = v184 + v181 * v51;
          v188 = objc_msgSend_values(a3, v186, v187);
          v190 = objc_msgSend_objectAtIndexedSubscript_(v188, v189, v176);
          objc_msgSend_floatValue(v190, v191, v192);
          v194 = v193;
          v196 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v195, a2, v85, qword_1EB658D68, qword_1EB658E40);
          v199 = v185 / *(a1 + 504) + 0.0;
          v200 = v199;
          if (vabdd_f64(v199, v200) >= 0.001)
          {
            if (1.0 - (v199 - v200) < 0.001)
            {
              v199 = v200 + 1.0;
            }
          }

          else
          {
            v199 = v199;
          }

          v201 = v194 / 3.14159265 * 180.0;
          *&v201 = v201;
          objc_msgSend_setFloatValue_atTime_(v196, v197, v198, v201, v199);
          ++v176;
        }

        while (v176 < objc_msgSend_count(v9, v202, v203));
      }
    }

    else
    {
      result = objc_msgSend_isEqualToString_(v40, v172, @"scale");
      if (!result)
      {
        return result;
      }

      if (!v45)
      {
        if (objc_msgSend_count(v9, v230, v231))
        {
          v261 = 0;
          do
          {
            v262 = objc_msgSend_objectAtIndexedSubscript_(v9, v88, v261);
            objc_msgSend_doubleValue(v262, v263, v264);
            v266 = v265;
            objc_msgSend_beginTime(a3, v267, v268);
            v270 = v269 + v266 * v51;
            v273 = objc_msgSend_values(a3, v271, v272);
            v275 = objc_msgSend_objectAtIndexedSubscript_(v273, v274, v261);
            objc_msgSend_VFXFloat3Value(v275, v276, v277);
            v300 = v278;
            v280 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v279, a2, @"xformOp:scale", qword_1EB658D78, qword_1EB658E40);
            v283 = v270 / *(a1 + 504) + 0.0;
            v284 = v283;
            if (vabdd_f64(v283, v284) >= 0.001)
            {
              if (1.0 - (v283 - v284) < 0.001)
              {
                v283 = v284 + 1.0;
              }

              objc_msgSend_setFloat3Value_atTime_(v280, v281, v282, v300, v283);
            }

            else
            {
              objc_msgSend_setFloat3Value_atTime_(v280, v281, v282, v300, v283);
            }

            ++v261;
          }

          while (v261 < objc_msgSend_count(v9, v285, v286));
        }

        v116 = *(a1 + 88);
        v117 = @"xformOp:scale";
        goto LABEL_62;
      }

      v85 = objc_msgSend_stringByAppendingString_(@"xformOp:scale", v230, v45);
      if (objc_msgSend_count(v9, v232, v233))
      {
        v234 = 0;
        do
        {
          v235 = objc_msgSend_objectAtIndexedSubscript_(v9, v88, v234);
          objc_msgSend_doubleValue(v235, v236, v237);
          v239 = v238;
          objc_msgSend_beginTime(a3, v240, v241);
          v243 = v242 + v239 * v51;
          v246 = objc_msgSend_values(a3, v244, v245);
          v248 = objc_msgSend_objectAtIndexedSubscript_(v246, v247, v234);
          objc_msgSend_floatValue(v248, v249, v250);
          v252 = v251;
          v254 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v253, a2, v85, qword_1EB658D68, qword_1EB658E40);
          v257 = v243 / *(a1 + 504) + 0.0;
          v258 = v257;
          if (vabdd_f64(v257, v258) >= 0.001)
          {
            if (1.0 - (v257 - v258) < 0.001)
            {
              v257 = v258 + 1.0;
            }
          }

          else
          {
            v257 = v257;
          }

          LODWORD(v258) = v252;
          objc_msgSend_setFloatValue_atTime_(v254, v255, v256, v258, v257);
          ++v234;
        }

        while (v234 < objc_msgSend_count(v9, v259, v260));
      }
    }
  }

  v116 = *(a1 + 88);
  v117 = v85;
LABEL_62:

  return objc_msgSend_addObject_(v116, v88, v117);
}

void *sub_1AF342B78(uint64_t a1, const char *a2, void *a3)
{
  v6 = objc_msgSend_animations(a3, a2, a3);
  result = objc_msgSend_count(v6, v7, v8);
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v13 = objc_msgSend_animations(a3, v10, v11);
      v15 = objc_msgSend_objectAtIndex_(v13, v14, i);
      sub_1AF341FE8(a1, a2, v15);
      v18 = objc_msgSend_animations(a3, v16, v17);
      result = objc_msgSend_count(v18, v19, v20);
    }
  }

  return result;
}

void *sub_1AF342BF4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2;
  v77 = *MEMORY[0x1E69E9840];
  v75 = a2;
  v5 = *(a1 + 424);
  if (v5)
  {
    v6 = a1 + 424;
    do
    {
      v7 = *(v5 + 32);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v5;
      }

      v5 = *(v5 + 8 * v9);
    }

    while (v5);
    if (v6 != a1 + 424 && *(v6 + 32) <= a2)
    {
      if (objc_msgSend_animationKeys(a2, a2, a3))
      {
        v10 = objc_msgSend_animationKeys(v3, a2, a3);
        if (objc_msgSend_count(v10, v11, v12))
        {
          v13 = objc_msgSend_animationKeys(v3, a2, a3);
          v15 = objc_msgSend_objectAtIndexedSubscript_(v13, v14, 0);
          v17 = sub_1AF342FF0(a1, v16);
          v19 = sub_1AF338AE8(v15, v18);
          v21 = objc_msgSend_stringByAppendingPathComponent_(v17, v20, v19);
          v23 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v22, v21);
          v25 = objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v24, *(a1 + 56), v23, qword_1EB658E10);
          v72 = &v75;
          v26 = sub_1AF33A710(a1 + 416, &v75, &unk_1AFE22A40, &v72);
          sub_1AF34305C(v26[5], v23, v25);
          v29 = objc_msgSend_animationKeys(v75, v27, v28);
          v32 = objc_msgSend_count(v29, v30, v31);
          v72 = 0;
          v73 = 0;
          v74 = 0;
          memset(v71, 0, sizeof(v71));
          sub_1AF3430D4(v71, v32);
          if (v32)
          {
            for (i = 0; i != v32; ++i)
            {
              v36 = objc_msgSend_animationKeys(v75, v33, v34);
              v38 = objc_msgSend_objectAtIndexedSubscript_(v36, v37, i);
              v40 = objc_msgSend_animationPlayerForKey_(v75, v39, v38);
              if (v40)
              {
                v41 = objc_msgSend_animation(v40, v33, v34);
                v44 = objc_msgSend_caAnimation(v41, v42, v43);
                sub_1AF34317C(a1, v25, v44, &v72, v71);
              }
            }
          }

          v45 = objc_msgSend_node_propertyWithName_type_role_(VFXUSKHelper, v33, v25, @"blendShapeWeights", qword_1EB658D98, qword_1EB658E40);
          __p = 0;
          v69 = 0;
          v70 = 0;
          sub_1AF121C28(&__p, v32);
          v47 = v72;
          if (v73 != v72)
          {
            v48 = 0;
            do
            {
              v49 = v47[v48];
              v50 = __p;
              if (v32)
              {
                v51 = v71[0];
                v52 = __p;
                v53 = v32;
                do
                {
                  v54 = *v51;
                  v51 += 3;
                  *v52++ = *(v54 + 4 * v48);
                  --v53;
                }

                while (v53);
              }

              v55 = v49 / *(a1 + 504) + 0.0;
              v56 = v55;
              if (vabdd_f64(v55, v56) >= 0.001)
              {
                if (1.0 - (v55 - v56) < 0.001)
                {
                  v55 = v56 + 1.0;
                }

                objc_msgSend_setFloatArray_count_atTime_(v45, v46, v50, (v69 - v50) >> 2, v55);
              }

              else
              {
                objc_msgSend_setFloatArray_count_atTime_(v45, v46, v50, (v69 - v50) >> 2, v55);
              }

              ++v48;
              v47 = v72;
            }

            while (v48 < (v73 - v72) >> 3);
          }

          if (__p)
          {
            v69 = __p;
            operator delete(__p);
          }

          __p = v71;
          sub_1AF179AF8(&__p);
          if (v72)
          {
            v73 = v72;
            operator delete(v72);
          }

          v3 = v75;
        }
      }
    }
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v57 = objc_msgSend_childNodes(v3, a2, a3, 0);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v58, &v64, v76, 16);
  v60 = result;
  if (result)
  {
    v61 = *v65;
    do
    {
      v62 = 0;
      do
      {
        if (*v65 != v61)
        {
          objc_enumerationMutation(v57);
        }

        sub_1AF342BF4(a1, *(*(&v64 + 1) + 8 * v62));
        v62 = v62 + 1;
      }

      while (v60 != v62);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v63, &v64, v76, 16);
      v60 = result;
    }

    while (result);
  }

  return result;
}

void sub_1AF342F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char *__p, char *a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  __p = &a21;
  sub_1AF179AF8(&__p);
  if (a24)
  {
    a25 = a24;
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AF342FF0(uint64_t a1, const char *a2)
{
  result = *(a1 + 48);
  if (!result)
  {
    v4 = objc_msgSend_stringByAppendingPathComponent_(*(a1 + 24), a2, @"Animations");
    *(a1 + 48) = v4;
    v6 = objc_msgSend_objectPathWithString_(VFXUSKObjectPath_helper, v5, v4);
    objc_msgSend_world_nodeAtPath_type_(VFXUSKHelper, v7, *(a1 + 56), v6, qword_1EB658E00);
    return *(a1 + 48);
  }

  return result;
}