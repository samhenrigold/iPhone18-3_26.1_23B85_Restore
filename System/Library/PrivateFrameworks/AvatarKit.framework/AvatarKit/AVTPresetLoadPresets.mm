@interface AVTPresetLoadPresets
@end

@implementation AVTPresetLoadPresets

void ____AVTPresetLoadPresets_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = AVTPresetCategoryFromString(a2);
  AVTPresetCategoryToComponentType(v5, v6);
  if (!gPresets[v5])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = gPresets[v5];
    gPresets[v5] = v7;
  }

  if (v5 != 40)
  {
    [v4 enumerateObjectsUsingBlock:{MEMORY[0x1E69E9820], 3221225472}];
  }
}

void ____AVTPresetLoadPresets_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = objc_alloc_init(AVTPreset);
  v7 = [v5 objectForKeyedSubscript:?];
  identifier = v6->_identifier;
  v6->_identifier = v7;

  if (!v6->_identifier)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:a3];
    v10 = v6->_identifier;
    v6->_identifier = v9;
  }

  v6->_category = *(a1 + 32);
  v53 = [v5 objectForKeyedSubscript:?];
  if (v53 && ([v53 isEqualToString:?] & 1) == 0)
  {
    v11 = +[AVTAssetLibrary sharedAssetLibrary];
    v12 = [v11 assetWithType:? identifier:?];

    if (v12)
    {
      v57 = v12;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
      assets = v6->_assets;
      v6->_assets = v14;

      v6->_editableColorCount = [v12 editableColorCount];
      [(AVTPreset *)v6 rebuildSpecializationSettings];
    }

    else
    {
      v16 = avt_default_log(v13);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v56 = v53;
        _os_log_impl(&dword_1BB472000, v16, OS_LOG_TYPE_DEFAULT, "failed to find asset named %@", buf, 0xCu);
      }
    }
  }

  v17 = [v5 objectForKeyedSubscript:?];
  v18 = v17;
  if (v17 && [v17 count])
  {
    v54 = v6;
    v52 = v5;
    v19 = MEMORY[0x1E695DF70];
    [v18 count];
    v20 = [v19 arrayWithCapacity:?];
    v51 = v18;
    v21 = v18;
    v22 = [v21 countByEnumeratingWithState:? objects:? count:?];
    if (v22)
    {
      v23 = v22;
      v24 = MEMORY[0];
      do
      {
        for (i = 0; i != v23; i = (i + 1))
        {
          if (MEMORY[0] != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = +[AVTAssetLibrary sharedAssetLibrary];
          v27 = [v26 assetWithType:? identifier:?];

          if (v27)
          {
            editableColorCount = v54->_editableColorCount;
            v30 = [v27 editableColorCount];
            if (editableColorCount <= v30)
            {
              v31 = v30;
            }

            else
            {
              v31 = editableColorCount;
            }

            v54->_editableColorCount = v31;
            [(NSArray *)v20 addObject:?];
          }

          else
          {
            v32 = avt_default_log(v28);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v56 = v53;
              _os_log_impl(&dword_1BB472000, v32, OS_LOG_TYPE_DEFAULT, "failed to find asset named %@", buf, 0xCu);
            }
          }
        }

        v23 = [v21 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v23);
    }

    v6 = v54;
    v33 = v54->_assets;
    v54->_assets = v20;

    [(AVTPreset *)v54 rebuildSpecializationSettings];
    v18 = v51;
    v5 = v52;
  }

  v34 = [v5 objectForKeyedSubscript:?];
  morphVariant = v6->_morphVariant;
  v6->_morphVariant = v34;

  v36 = [v5 objectForKeyedSubscript:?];
  imageVariant = v6->_imageVariant;
  v6->_imageVariant = v36;

  v38 = [v5 objectForKeyedSubscript:?];
  materialVariant = v6->_materialVariant;
  v6->_materialVariant = v38;

  v40 = [v5 objectForKeyedSubscript:?];
  v41 = v40;
  if (v40)
  {
    [v40 floatValue];
  }

  else
  {
    v42 = 1.0;
  }

  v6->_morphVariantIntensity = v42;
  v43 = [v5 objectForKeyedSubscript:?];
  v44 = v43;
  if (v43)
  {
    [v43 floatValue];
  }

  else
  {
    v45 = 0.0;
  }

  v6->_bodyPoseVariantIntensity = v45;
  v46 = [v5 objectForKeyedSubscript:?];
  v47 = v46;
  if (v46)
  {
    [v46 floatValue];
  }

  else
  {
    v48 = 1.0;
  }

  v6->_textureAssetPresence = v48;
  v49 = [v5 objectForKeyedSubscript:?];
  tags = v6->_tags;
  v6->_tags = v49;

  [gPresets[*(a1 + 32)] addObject:?];
}

void ____AVTPresetLoadPresets_block_invoke_358(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  if (AVTPresetCategoryFromString(a2) != 40)
  {
    [v4 enumerateObjectsUsingBlock:?];
  }
}

void ____AVTPresetLoadPresets_block_invoke_2_361(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = gPresets[*(a1 + 32)];
  v4 = a2;
  v5 = [v3 objectAtIndex:?];
  v6 = [v4 objectForKeyedSubscript:?];
  v7 = v5[11];
  v5[11] = v6;

  v8 = [v4 objectForKeyedSubscript:?];
  v9 = v5[12];
  v5[12] = v8;

  v10 = [v4 objectForKeyedSubscript:?];
  v11 = v5[13];
  v5[13] = v10;

  v12 = [v4 objectForKeyedSubscript:?];

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = ____AVTPresetLoadPresets_block_invoke_3;
  v17 = &unk_1E7F490D8;
  v18 = v5;
  v13 = v5;
  [v12 enumerateKeysAndObjectsUsingBlock:?];
}

void ____AVTPresetLoadPresets_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = AVTPresetCategoryFromString(v5);
  if (v7 == 40)
  {
    v8 = avt_default_log(40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      ____AVTPresetLoadPresets_block_invoke_3_cold_2(v5, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  else
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v30 = ____AVTPresetLoadPresets_block_invoke_374;
    v31 = &unk_1E7F497B0;
    v34 = v7;
    v32 = *(a1 + 32);
    v15 = v5;
    v33 = v15;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30(v29, v6);
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v17 = v6;
        v18 = [v17 countByEnumeratingWithState:0 objects:? count:?];
        if (v18)
        {
          v19 = v18;
          v20 = MEMORY[0];
          do
          {
            for (i = 0; i != v19; i = (i + 1))
            {
              if (MEMORY[0] != v20)
              {
                objc_enumerationMutation(v17);
              }

              v30(v29, *(8 * i));
            }

            v19 = [v17 countByEnumeratingWithState:? objects:? count:?];
          }

          while (v19);
        }
      }

      else
      {
        v22 = avt_default_log(isKindOfClass);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          ____AVTPresetLoadPresets_block_invoke_3_cold_1(v15, v22, v23, v24, v25, v26, v27, v28);
        }
      }
    }

    v8 = v32;
  }
}

void ____AVTPresetLoadPresets_block_invoke_374(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:?];
  if (v4)
  {
    v5 = gPresets[a1[6]];
    v6 = [v5 countByEnumeratingWithState:0 objects:? count:?];
    if (v6)
    {
      v7 = v6;
      v8 = MEMORY[0];
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (MEMORY[0] != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(8 * v9);
        v11 = [v10 identifier];
        v12 = [v11 isEqualToString:?];

        if (v12)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:? objects:? count:?];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v14 = v10;

      if (v14)
      {
        goto LABEL_16;
      }
    }

    else
    {
LABEL_10:
    }

    v15 = avt_default_log(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      ____AVTPresetLoadPresets_block_invoke_374_cold_1(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  v14 = 0;
LABEL_16:
  v23 = [v3 objectForKeyedSubscript:?];
  v24 = [v3 objectForKeyedSubscript:?];
  v25 = [v3 objectForKeyedSubscript:?];
  v26 = [v3 objectForKeyedSubscript:?];
  v27 = [v3 objectForKeyedSubscript:?];
  v28 = v27;
  if (v27)
  {
    [v27 floatValue];
    v30 = v29;
    if (v14)
    {
      goto LABEL_30;
    }

LABEL_20:
    if (!v23 && !v24 && !v25 && !v26)
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

  v30 = 1.0;
  if (!v14)
  {
    goto LABEL_20;
  }

LABEL_30:
  v36 = objc_alloc_init(AVTPresetDependency);
  v37 = v36;
  if (v36)
  {
    v36->_category = a1[6];
    [(AVTPhysicsRig *)v36 setChainRoot:v14];
    [(AVTPhysicsRig *)v37 setPhysicsBody:v23];
    v37[2] = v30;
  }

  else
  {
    [(AVTPhysicsRig *)0 setChainRoot:v14];
    [(AVTPhysicsRig *)0 setPhysicsBody:v23];
  }

  [(AVTPhysicsRig *)v37 setPhysicsBehavior:v24];
  [(AVTPresetDependency *)v37 setMaterialVariant:v25];
  [(AVTPresetDependency *)v37 setVisibilityRules:v26];
  v38 = *(a1[4] + 80);
  if (!v38)
  {
    v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v40 = a1[4];
    v41 = *(v40 + 80);
    *(v40 + 80) = v39;

    v38 = *(a1[4] + 80);
  }

  [v38 addObject:?];

LABEL_24:
  v31 = [v3 objectForKeyedSubscript:?];
  if (v31)
  {
    v32 = *(a1[4] + 112);
    if (!v32)
    {
      v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v34 = a1[4];
      v35 = *(v34 + 112);
      *(v34 + 112) = v33;

      v32 = *(a1[4] + 112);
    }

    [v32 objectForKeyedSubscript:?];
    if (objc_claimAutoreleasedReturnValue())
    {
      ____AVTPresetLoadPresets_block_invoke_374_cold_2();
    }

    [*(a1[4] + 112) setObject:? forKeyedSubscript:?];
  }
}

void ____AVTPresetLoadPresets_block_invoke_3_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_1BB472000, a2, a3, "Error: error in preset dependency: value for %@ is not a dictionary", a5, a6, a7, a8, v8, DWORD2(v8));
}

void ____AVTPresetLoadPresets_block_invoke_3_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_1BB472000, a2, a3, "Error: error in preset dependency: can't convert %@ to a category", a5, a6, a7, a8, v8, DWORD2(v8));
}

void ____AVTPresetLoadPresets_block_invoke_374_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "targetPreset";
}

@end