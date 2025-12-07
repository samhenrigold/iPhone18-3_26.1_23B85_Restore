id IFDefaultLog(uint64_t a1)
{
  if (IFDefaultLog_onceToken != -1)
  {
    IFDefaultLog_cold_1();
  }

  v2 = IFDefaultLog_log;

  return v2;
}

uint64_t __IFDefaultLog_block_invoke()
{
  v0 = os_log_create("com.apple.iconservices", "foundation");
  v1 = IFDefaultLog_log;
  IFDefaultLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t CopyImageBlockSetCallback(void *a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = a1;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      CopyImageBlockSetCallback_cold_1();
    }

    v5 = [v4 __IS_copyCGImageBlockSetWithProvider:a2];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [a1 blockSet];
      if (v5)
      {
        CGImageBlockSetRetain();
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

void ReleaseInfoCallback(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      ReleaseInfoCallback_cold_1();
    }
  }
}

void __CGImageProviderAuxInfo_block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695F2C8];
  v3[0] = *MEMORY[0x1E695E4D0];
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  v1 = CGImageProviderAuxInfo_auxiliaryInfo;
  CGImageProviderAuxInfo_auxiliaryInfo = v0;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_1B9DFF0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id IFTopLevelAppBundlePlistKeys()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = +[IFPlistParser topLevelAppBundleIconKeys];
  v2 = [v0 setWithArray:v1];

  return v2;
}

id IFPossibleResourceFilenames(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [[IFPlistParser alloc] initWithInfoDictionary:v4];
    v6 = [(IFPlistParser *)v5 catalogAssetNamesReturningPlistExcerpt:0];

    if (v6)
    {
      v7 = [MEMORY[0x1E695DFD8] setWithObject:@"Assets.car"];
    }

    else
    {
      v9 = [(IFPlistParser *)v5 looseFilesNamesReturningPlistExcerpt:0];
      if (v9)
      {
        v10 = [[IFResourceNames alloc] initWithRootNames:v9 variants:&unk_1F37E4D50];
        v11 = [(IFResourceNames *)v10 extrapolateFullNamesForIOS];
        v12 = [(IFResourceNames *)v10 extrapolateFullNamesForMacOS];
        v7 = [v12 setByAddingObjectsFromSet:v11];
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid infoDictionary"];
    logAndSetError(v5, -2, a2);
    v7 = 0;
  }

  return v7;
}

void logAndSetError(void *a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = IFDefaultLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    logAndSetError_cold_1(v5, a2, v6);
  }

  if (a3)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5, *MEMORY[0x1E696A578]];
    v10[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

    *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.iconServices.assetCapture.error" code:a2 userInfo:v8];
  }
}

uint64_t _appendPlatformInfo(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v9 = v3;
    v3 = [v3 platformForICC];
    v4 = v9;
    if (v3)
    {
      v5 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*a2];
      v6 = +[IFPlatformInfo sharedInstance];
      v7 = [v6 iconPlatformStringFromPlatform:{objc_msgSend(v9, "platformForICC")}];

      [v5 setObject:v7 forKey:@"ISIconPlatform"];
      *a2 = [v5 copy];

      v4 = v9;
    }
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

BOOL _captureCatalogAssets(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v11 = [a2 catalogAssetNamesReturningPlistExcerpt:a4];
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = [v9 assetCatalogURL];

  if (!v12)
  {
    v24 = MEMORY[0x1E696AEC0];
    v25 = [v9 bundleURL];
    v26 = [v24 stringWithFormat:@"Bundle '%@' declared catalog asset but couldn't find catalog", v25];
    logAndSetError(v26, -4, a5);

LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  v13 = [v9 assetCatalogURL];
  v14 = [v13 lastPathComponent];
  v15 = [v10 URLByAppendingPathComponent:v14];

  v16 = [v9 assetCatalogURL];
  v17 = [v11 allObjects];
  v28 = 0;
  v18 = CUIGeneratePlaceholderAssetCatalog(v16, v15, v17, &v28);
  v19 = v28;

  if (!v18)
  {
    v20 = MEMORY[0x1E696AEC0];
    v21 = [v9 assetCatalogURL];
    v22 = [v11 allObjects];
    v23 = [v20 stringWithFormat:@"Failed to thin asset catalog %@ to %@ items only. Error: %@", v21, v22, v19];
    logAndSetError(v23, -3, a5);
  }

LABEL_8:
  return v18;
}

uint64_t _captureLooseFileAssets(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v62 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v49 = a3;
  v10 = [a2 looseFilesNamesReturningPlistExcerpt:a4];
  if (v10)
  {
    v11 = [[IFResourceNames alloc] initWithRootNames:v10 variants:&unk_1F37E4D68];
    v12 = [(IFResourceNames *)v11 extrapolateFullNamesForIOS];
    v13 = [(IFResourceNames *)v11 extrapolateFullNamesForMacOS];
    v14 = [v13 setByAddingObjectsFromSet:v12];
    v15 = [v14 allObjects];

    v16 = [v9 URLsForResources:v15];
    v17 = v16;
    if (v16 && [v16 count])
    {
      v47 = v15;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      obj = v17;
      v18 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
      if (v18)
      {
        v19 = v18;
        v41 = v17;
        v42 = a5;
        v43 = v12;
        v44 = v11;
        v45 = v10;
        v46 = v9;
        v20 = 0;
        v21 = *v52;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v52 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v51 + 1) + 8 * i);
            v24 = [v23 lastPathComponent];
            v25 = [v49 URLByAppendingPathComponent:v24];

            v26 = [MEMORY[0x1E696AC08] defaultManager];
            v50 = 0;
            v27 = [v26 copyItemAtURL:v23 toURL:v25 error:&v50];
            v28 = v50;

            if ((v27 & 1) == 0)
            {
              v30 = IFDefaultLog(v29);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
              {
                *buf = 138412802;
                v56 = v23;
                v57 = 2112;
                v58 = v25;
                v59 = 2112;
                v60 = v28;
                _os_log_impl(&dword_1B9DEC000, v30, OS_LOG_TYPE_INFO, "Failed to copy file %@ to %@. Error: %@", buf, 0x20u);
              }

              ++v20;
            }
          }

          v19 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
        }

        while (v19);
        v31 = v20;
        v10 = v45;
        v9 = v46;
        v12 = v43;
        v11 = v44;
        a5 = v42;
        v17 = v41;
      }

      else
      {
        v31 = 0;
      }

      v15 = v47;
      if ([obj count] != v31)
      {
        v36 = 1;
        goto LABEL_22;
      }

      v37 = MEMORY[0x1E696AEC0];
      v38 = [v9 bundleURL];
      v39 = [v37 stringWithFormat:@"Failed to retrieve file assets %@ from %@", v47, v38];
      logAndSetError(v39, -5, a5);
    }

    else
    {
      v32 = MEMORY[0x1E696AEC0];
      [v9 bundleURL];
      v34 = v33 = v17;
      v35 = [v32 stringWithFormat:@"File assets %@ were declared but we were unable to find them in %@", v15, v34];
      logAndSetError(v35, -4, a5);

      v17 = v33;
    }

    v36 = 0;
LABEL_22:

    goto LABEL_23;
  }

  v36 = 0;
LABEL_23:

  return v36;
}

uint64_t IFCaptureIconContent(void *a1, void *a2, void *a3, void *a4, NSObject **a5)
{
  v46 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = v9;
  v13 = v10;
  v14 = v11;
  v15 = v14;
  if (v12)
  {
    if (v13)
    {
      v16 = IFDefaultLog(v14);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v12;
        _os_log_impl(&dword_1B9DEC000, v16, OS_LOG_TYPE_INFO, "Capturing icon content for %@", buf, 0xCu);
      }

      v17 = [(IFBundle *)[IFVariantAgnosticBundle alloc] initWithURL:v12];
      v18 = v17;
      if (!v17 || ![(IFBundle *)v17 bundle])
      {
        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create bundle at %@", v12];
        logAndSetError(v20, -1, a5);
        v28 = 0;
LABEL_45:

        goto LABEL_46;
      }

      v19 = [(IFVariantAgnosticBundle *)v18 infoDictionary];
      v20 = v19;
      if (!v19 || ![v19 count])
      {
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to read Info.plist at %@", v12];
        logAndSetError(v23, -1, a5);
        v28 = 0;
LABEL_44:

        goto LABEL_45;
      }

      v21 = [IFPlistParser alloc];
      v22 = [(IFVariantAgnosticBundle *)v18 infoDictionary];
      v23 = [(IFPlistParser *)v21 initWithInfoDictionary:v22];

      [(IFPlistParser *)v23 setCaptureAccentColorInfo:1];
      if (v15)
      {
        v24 = [(IFPlistParser *)v23 subDictionaryForAlternateIconName:v15 variants:&unk_1F37E4D80];
        v25 = [[IFPlistParser alloc] initWithInfoDictionary:v24];

        [(IFPlistParser *)v25 setCaptureAccentColorInfo:1];
        v23 = v25;
      }

      v26 = [(IFPlistParser *)v23 hasGraphicIconReturningPlistExcerpt:a4];
      if (v26)
      {
        v27 = IFDefaultLog(v26);
        v28 = 1;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v12;
          _os_log_impl(&dword_1B9DEC000, v27, OS_LOG_TYPE_INFO, "Graphic icon configuration set for %@", buf, 0xCu);
        }

        goto LABEL_43;
      }

      *buf = 0;
      v32 = _captureCatalogAssets(v18, v23, v13, a4, buf);
      v33 = *buf;
      v34 = v33;
      if (v32)
      {
        _appendPlatformInfo(v18, a4);
        v27 = 0;
        v28 = 1;
LABEL_42:

LABEL_43:
        goto LABEL_44;
      }

      v43 = v33;
      if ([v33 code] == -4)
      {
        if (a4)
        {
          v27 = 0;
          *a4 = 0;
LABEL_27:
          v44 = 0;
          v35 = _captureLooseFileAssets(v18, v23, v13, a4, &v44);
          v36 = v44;
          v42 = v36;
          if (v35)
          {
            _appendPlatformInfo(v18, a4);
            v28 = 1;
            v34 = v43;
          }

          else
          {
            v37 = v36;
            if ([v36 code]== -4)
            {
              v34 = v43;
              if (a4)
              {
                *a4 = 0;
              }
            }

            else
            {
              v38 = v37;
              v34 = v43;
              if (v38)
              {
                if (v27)
                {
                  v38 = v27;
                }

                v39 = v38;

                v27 = v39;
              }
            }

            if (v27)
            {
              if (a5)
              {
                v40 = v27;
                v28 = 0;
                *a5 = v27;
              }

              else
              {
                v28 = 0;
              }
            }

            else
            {
              v28 = 1;
            }
          }

          goto LABEL_42;
        }
      }

      else if (v34)
      {
        v27 = v34;
        goto LABEL_27;
      }

      v27 = 0;
      goto LABEL_27;
    }

    v29 = MEMORY[0x1E696AEC0];
    v30 = @"Invalid destination url";
  }

  else
  {
    v29 = MEMORY[0x1E696AEC0];
    v30 = @"Invalid bundle url";
  }

  v31 = [v29 stringWithFormat:v30];
  logAndSetError(v31, -2, a5);

  v28 = 0;
LABEL_46:

  return v28;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

id sub_1B9E05D28()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EBBE49D8 = result;
  return result;
}

uint64_t sub_1B9E05D7C()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4B10);
  __swift_project_value_buffer(v0, qword_1EBBE4B10);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1B9E05EA4()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4B28);
  __swift_project_value_buffer(v0, qword_1EBBE4B28);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E05F94()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4B40);
  __swift_project_value_buffer(v0, qword_1EBBE4B40);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E06084()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4B58);
  __swift_project_value_buffer(v0, qword_1EBBE4B58);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E06174()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4B70);
  __swift_project_value_buffer(v0, qword_1EBBE4B70);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E06264()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4B88);
  __swift_project_value_buffer(v0, qword_1EBBE4B88);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E06354()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4BA0);
  __swift_project_value_buffer(v0, qword_1EBBE4BA0);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E06444()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4BB8);
  __swift_project_value_buffer(v0, qword_1EBBE4BB8);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E06534()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4BD0);
  __swift_project_value_buffer(v0, qword_1EBBE4BD0);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E06624()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4BE8);
  __swift_project_value_buffer(v0, qword_1EBBE4BE8);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E06714()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4C00);
  __swift_project_value_buffer(v0, qword_1EBBE4C00);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E06804()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4C18);
  __swift_project_value_buffer(v0, qword_1EBBE4C18);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E068F4()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4C30);
  __swift_project_value_buffer(v0, qword_1EBBE4C30);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E069E4()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4C48);
  __swift_project_value_buffer(v0, qword_1EBBE4C48);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E06AD4()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4C60);
  __swift_project_value_buffer(v0, qword_1EBBE4C60);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E06BC4()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4C78);
  __swift_project_value_buffer(v0, qword_1EBBE4C78);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E06CB4()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4C90);
  __swift_project_value_buffer(v0, qword_1EBBE4C90);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E06DA4()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4CA8);
  __swift_project_value_buffer(v0, qword_1EBBE4CA8);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E06E94()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4CC0);
  __swift_project_value_buffer(v0, qword_1EBBE4CC0);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E06F84()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4CD8);
  __swift_project_value_buffer(v0, qword_1EBBE4CD8);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E07074()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4CF0);
  __swift_project_value_buffer(v0, qword_1EBBE4CF0);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E07164()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4D08);
  __swift_project_value_buffer(v0, qword_1EBBE4D08);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E07254()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4D20);
  __swift_project_value_buffer(v0, qword_1EBBE4D20);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E07344()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4D38);
  __swift_project_value_buffer(v0, qword_1EBBE4D38);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E07434()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4D50);
  __swift_project_value_buffer(v0, qword_1EBBE4D50);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E07524()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4D68);
  __swift_project_value_buffer(v0, qword_1EBBE4D68);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E07614()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4D80);
  __swift_project_value_buffer(v0, qword_1EBBE4D80);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E076E0(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_1B9E25210();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_1B9E07758@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1B9E25210();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __CUISubtypeFromIndex(uint64_t a1, uint64_t a2)
{
  if (a1 == -1)
  {
    if (a2 >= 0x20)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return dword_1B9E3B768[a2];
    }
  }

  else if (a2)
  {
    if (a1 > 3)
    {
      if (a1 == 5)
      {
        if (a2 == 1)
        {
          return 3648;
        }

        goto LABEL_35;
      }

      if (a1 == 4)
      {
        v2 = a2 - 8;
        if (a2 - 8) < 0x18 && ((0xF18063u >> v2))
        {
          v3 = &unk_1B9E3B7E8;
          return v3[v2];
        }

LABEL_35:
        __CUISubtypeFromIndex_cold_1(a1, a2);
      }

LABEL_18:
      if (a1 <= 2 && a2 < 0x20 && ((0x713FFEFFu >> (a2 - 1)) & 1) != 0)
      {
        return dword_1B9E3B854[a2 - 1];
      }

      goto LABEL_35;
    }

    if (a1)
    {
      if (a1 == 3)
      {
        v2 = a2 - 5;
        if ((a2 - 5) < 3)
        {
          v3 = &unk_1B9E3B848;
          return v3[v2];
        }

        goto LABEL_35;
      }

      goto LABEL_18;
    }

    v4 = 1864;
    if (a2 <= 26)
    {
      if (a2 == 1)
      {
        return v4;
      }

      if (a2 == 26)
      {
        return 1964;
      }

      goto LABEL_35;
    }

    if (a2 == 27)
    {
      return 2234;
    }

    if (a2 == 31)
    {
      return 1665;
    }

    if (a2 != 32)
    {
      goto LABEL_35;
    }
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t CUIValidateIdiomSubtypes(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  result = 1;
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if ((a1 - 6) >= 2)
      {
        if (a1 != 8)
        {
          return result;
        }

        if (v3 == 3648)
        {
          v5 = 3648;
          goto LABEL_58;
        }
      }

LABEL_57:
      v5 = 0;
      *a2 = 0;
LABEL_58:
      if (v5 != v3)
      {
        _CUILog(4, "CoreUI: %s passed a device subtype '%d' and idiom '%d':%s that are not a matching pair, subtype is not valid with given idiom. Assuming subtype should be 0 instead.", "_Bool CUIValidateIdiomSubtypes(NSInteger, NSUInteger *)", v3, a1, *(&gThemeIdioms + 3 * a1 + 2));
        return 0;
      }

      return result;
    }

    if (a1 == 4)
    {
      goto LABEL_57;
    }

    if (v3 <= 483)
    {
      if (((v3 - 384) > 0x3E || ((1 << (v3 + 0x80)) & 0x4000400000000041) == 0) && v3 != 320 && v3 != 340)
      {
        goto LABEL_57;
      }

      return result;
    }

    if ((v3 - 484) > 0x1E)
    {
      goto LABEL_57;
    }

    v6 = 1 << (v3 + 28);
    v7 = 1074008065;
LABEL_42:
    if ((v6 & v7) != 0)
    {
      return result;
    }

    goto LABEL_57;
  }

  if ((a1 - 1) < 2)
  {
    if (v3 <= 2435)
    {
      if (v3 > 2223)
      {
        if (v3 <= 2339)
        {
          if (v3 != 2224 && v3 != 2266)
          {
            goto LABEL_57;
          }
        }

        else if (((v3 - 2340) > 0x30 || ((1 << (v3 - 36)) & 0x1000000100001) == 0) && v3 != 2420)
        {
          goto LABEL_57;
        }
      }

      else if (v3 > 1791)
      {
        if (v3 != 1792 && v3 != 2160)
        {
          goto LABEL_57;
        }
      }

      else if ((v3 - 568) >= 3 && v3 != 163)
      {
        goto LABEL_57;
      }
    }

    else if (v3 > 2751)
    {
      if (v3 <= 2867)
      {
        if ((v3 - 2752) > 0x2C)
        {
          goto LABEL_57;
        }

        v6 = 1 << (v3 + 64);
        v7 = 0x100004000001;
        goto LABEL_42;
      }

      if (v3 != 2868 && v3 != 3024 && v3 != 32401)
      {
        goto LABEL_57;
      }
    }

    else if (v3 <= 2621)
    {
      if (v3 != 2436 && v3 != 2532 && v3 != 2556)
      {
        goto LABEL_57;
      }
    }

    else if (((v3 - 2688) > 0x30 || ((1 << (v3 + 0x80)) & 0x1100000000001) == 0) && v3 != 2622)
    {
      goto LABEL_57;
    }
  }

  else if (!a1 || a1 == 3 && v3 != 720 && v3 != 3840)
  {
    goto LABEL_57;
  }

  return result;
}

uint64_t CUIParseDeploymentTarget(char *a1, int a2)
{
  if ("any")
  {
    v4 = &gThemeDeploymentTargets;
    if (!strcasecmp(a1, "any"))
    {
      return *v4;
    }

    while (1)
    {
      v5 = *(v4 + 5);
      if (!v5)
      {
        break;
      }

      v4 += 6;
      if (!strcasecmp(a1, v5))
      {
        return *v4;
      }
    }
  }

  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a1];
  v8 = [v7 componentsSeparatedByString:@"."];
  v9 = [v8 count];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_msgSend(v8 objectAtIndexedSubscript:{0), "intValue"}];
    if (v10 == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = [objc_msgSend(v8 objectAtIndexedSubscript:{1), "intValue"}];
    }
  }

  else
  {
    v12 = 0;
    v11 = 0x7FFFFFFF;
  }

  if (a2 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = a2;
  }

  if (v13 <= 4)
  {
    if ((v13 - 1) < 4)
    {
      goto LABEL_16;
    }

LABEL_58:
    fprintf(*MEMORY[0x1E69E9848], "assuming --deployment-target %s == --deployment-target any\n", a1);
    return 0;
  }

  if (v13 == 8)
  {
    if (v11 <= 1)
    {
      v14 = v12 < 1;
LABEL_37:
      v15 = 9;
      goto LABEL_40;
    }

    if (v11 == 2)
    {
      return 11;
    }

    goto LABEL_56;
  }

  if (v13 != 7)
  {
    if (v13 != 5)
    {
      goto LABEL_58;
    }

    if (v11 < 3)
    {
      return 0;
    }

    if (v11 == 3)
    {
      return 1;
    }

    if (v11 < 5)
    {
      return 2;
    }

    if (v11 == 5)
    {
      goto LABEL_39;
    }

    if (v11 < 7)
    {
      return 5;
    }

    if (v11 == 7)
    {
      return 6;
    }

    if (v11 < 9)
    {
      return 7;
    }

    if (v11 == 9)
    {
      return 8;
    }

    if (v11 <= 0xA)
    {
      goto LABEL_54;
    }

    if (v11 == 11)
    {
      return 11;
    }

LABEL_56:
    if (v11 < 0x1B)
    {
      return 12;
    }

    goto LABEL_58;
  }

LABEL_16:
  if (v11 < 10)
  {
    return 0;
  }

  if (v11 == 10)
  {
    return 1;
  }

  if (v11 < 0xC)
  {
    return 2;
  }

  if (v11 != 12)
  {
    if (v11 < 0xE)
    {
      return 5;
    }

    if (v11 == 14)
    {
      return 6;
    }

    if (v11 < 0x10)
    {
      return 7;
    }

    if (v11 == 16)
    {
      return 8;
    }

    if (v11 <= 0x11)
    {
LABEL_54:
      v14 = v12 < 4;
      goto LABEL_37;
    }

    if (v11 != 18)
    {
      goto LABEL_56;
    }

    return 11;
  }

LABEL_39:
  v14 = v12 < 2;
  v15 = 3;
LABEL_40:
  if (v14)
  {
    return v15;
  }

  else
  {
    return v15 + 1;
  }
}

uint64_t CUIWatchSubTypeFallbackOrder(uint64_t result, void *a2)
{
  if (result > 445)
  {
    if (result <= 495)
    {
      if (result == 446)
      {
        v3 = 430;
LABEL_21:
        [a2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v3)}];
LABEL_22:
        [a2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", 340)}];
        goto LABEL_23;
      }

      if (result != 484)
      {
        return result;
      }
    }

    else
    {
      if (result != 496)
      {
        if (result == 514)
        {
          [a2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", 502)}];
        }

        else if (result != 502)
        {
          return result;
        }
      }

      [a2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", 484)}];
    }

    v3 = 390;
    goto LABEL_21;
  }

  if (result > 389)
  {
    if (result != 390 && result != 430)
    {
      return result;
    }

    goto LABEL_22;
  }

  if (result != 340)
  {
    if (result != 384)
    {
      return result;
    }

    goto LABEL_24;
  }

LABEL_23:
  [a2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", 384)}];
LABEL_24:
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:320];

  return [a2 addObject:v4];
}

__CFString *OUTLINED_FUNCTION_0_2(uint64_t a1, uint64_t a2)
{

  return CUIPlatformNameForPlatform(a2);
}

__CFString *OUTLINED_FUNCTION_1_1(uint64_t a1, uint64_t a2)
{

  return CUIPlatformNameForPlatform(a2);
}

char *CUIConvertCompressionTypeToString(unsigned int a1)
{
  if (a1 > 0xC)
  {
    return 0;
  }

  else
  {
    return off_1E7ED9A08[a1];
  }
}

const char *CUIConvertPixelFormatToString(int a1)
{
  if (a1 > 1246774598)
  {
    if (a1 <= 1380401716)
    {
      if (a1 == 1246774599)
      {
        return "JPEG";
      }

      if (a1 == 1346651680)
      {
        return "PDF";
      }
    }

    else
    {
      switch(a1)
      {
        case 1380401717:
          return "RGB5";
        case 1398163232:
          return "SVG";
        case 1380401751:
          return "RGBW";
      }
    }
  }

  else if (a1 <= 1195454773)
  {
    if (a1 == 1095911234)
    {
      return "ARGB";
    }

    if (a1 == 1145132097)
    {
      return "DATA";
    }
  }

  else
  {
    switch(a1)
    {
      case 1195454774:
        return "GA16";
      case 1195456544:
        return "GA8";
      case 1212500294:
        return "HEIF";
    }
  }

  return "(Unknown)";
}

uint64_t CUILogHandle(uint64_t a1, uint64_t a2)
{
  if (__onceToken != -1)
  {
    CUILogHandle_cold_1();
  }

  return __handle;
}

os_log_t __CUILogHandle_block_invoke()
{
  result = os_log_create("com.apple.coreui", "framework");
  __handle = result;
  return result;
}

void _CUILog(int a1, const char *a2, ...)
{
  va_start(va, a2);
  v16 = *MEMORY[0x1E69E9840];
  if (_CUILog___onceDefaultToken != -1)
  {
    _CUILog_cold_1();
  }

  if (a1 != 3 || _CUILog___showDebugLogs == 1)
  {
    v4 = objc_autoreleasePoolPush();
    if (__logToStderr == 1)
    {
      va_copy(buf, va);
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a2];
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v5 arguments:va];

      if (a1 <= 2)
      {
        if (a1 != 1 && a1 != 2)
        {
          goto LABEL_40;
        }

        goto LABEL_20;
      }

      if (a1 == 3)
      {
LABEL_20:
        fprintf(*MEMORY[0x1E69E9848], "%s\n", [v6 UTF8String]);
        goto LABEL_40;
      }

      if (a1 != 4)
      {
LABEL_40:

        objc_autoreleasePoolPop(v4);
        return;
      }

      fprintf(*MEMORY[0x1E69E9848], "%s\n", [v6 UTF8String]);
LABEL_30:
      qword_1EBBE4728 = [v6 UTF8String];
      goto LABEL_40;
    }

    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a2];
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v7 arguments:va];

    if (a1 > 2)
    {
      if (a1 != 3)
      {
        if (a1 != 4)
        {
          goto LABEL_40;
        }

        if (__onceToken != -1)
        {
          _CUILog_cold_2();
        }

        v11 = __handle;
        if (os_log_type_enabled(__handle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v6;
          _os_log_impl(&dword_1B9DEC000, v11, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          if (__onceToken != -1)
          {
            _CUILog_cold_2();
          }
        }

        v12 = __handle;
        if (os_log_type_enabled(__handle, OS_LOG_TYPE_FAULT))
        {
          _CUILog_cold_4(v6, v12);
        }

        goto LABEL_30;
      }

      if (__onceToken != -1)
      {
        _CUILog_cold_2();
      }

      v14 = __handle;
      if (!os_log_type_enabled(__handle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_40;
      }

      *buf = 138543362;
      *&buf[4] = v6;
      v9 = v14;
      v10 = OS_LOG_TYPE_DEBUG;
    }

    else if (a1 == 1)
    {
      if (__onceToken != -1)
      {
        _CUILog_cold_2();
      }

      v13 = __handle;
      if (!os_log_type_enabled(__handle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }

      *buf = 138543362;
      *&buf[4] = v6;
      v9 = v13;
      v10 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_40;
      }

      if (__onceToken != -1)
      {
        _CUILog_cold_2();
      }

      v8 = __handle;
      if (!os_log_type_enabled(__handle, OS_LOG_TYPE_INFO))
      {
        goto LABEL_40;
      }

      *buf = 138543362;
      *&buf[4] = v6;
      v9 = v8;
      v10 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_1B9DEC000, v9, v10, "%{public}@", buf, 0xCu);
    goto LABEL_40;
  }
}

BOOL __copyBlock(uint64_t a1, uint64_t a2, const char *a3)
{
  NamedBlock = BOMStorageGetNamedBlock(a1, a3);
  if (!NamedBlock)
  {
    return 1;
  }

  v7 = NamedBlock;
  v8 = BOMStorageNewNamedBlock(a2, a3);
  v9 = BOMStorageSizeOfBlock(a1, v7);
  v10 = malloc_type_malloc(v9, 0xE31AF694uLL);
  if (BOMStorageCopyFromBlock(a1, v7, v10))
  {
    free(v10);
    return 0;
  }

  v12 = BOMStorageCopyToBlock(a2, v8, v10, v9);
  free(v10);
  if (v12)
  {
    return 0;
  }

  return !BOMStorageCommit(a2);
}

BOOL __copyTree(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v4 = a4;
  v7 = BOMTreeOpenWithName(a1, a3, 0);
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  if (BOMTreePageSize(v7) <= 0x400)
  {
    v4 = BOMTreePageSize(v8);
  }

  v9 = BOMTreeUsesNumericKeys(v8);
  v10 = BOMTreeNewWithOptions(a2, 0, a3, v4, v9);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = BOMTreeIteratorNew(v8, 0, 0, 0);
  if (!v12)
  {
    return 0;
  }

  for (i = v12; !BOMTreeIteratorIsAtEnd(i); BOMTreeIteratorNext(i))
  {
    v14 = BOMTreeIteratorKey(i);
    v15 = BOMTreeIteratorKeySize(i);
    v16 = BOMTreeIteratorValue(i);
    v17 = BOMTreeIteratorValueSize(i);
    BOMTreeSetValue(v11, v14, v15, v16, v17);
  }

  v18 = !BOMStorageCommit(a2);
  BOMTreeIteratorFree(i);
  BOMTreeFree(v11);
  return v18;
}

double CUIEdgeInsetsInsetRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  result = a1 + a6;
  v9 = a3 - (a8 + a6);
  if (v9 <= 0.0)
  {
    return result + v9 * 0.5;
  }

  return result;
}

double CUIEdgeInsetsOutsetRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  result = a1 - a6;
  v9 = a3 - (-a6 - a8);
  if (v9 <= 0.0)
  {
    return result + v9 * 0.5;
  }

  return result;
}

unsigned __int16 *CUIFillRenditionKeyForCARKeyArray(unsigned __int16 *result, uint64_t a2, uint64_t a3)
{
  if (!result || !a2)
  {
    CUIFillRenditionKeyForCARKeyArray_cold_1();
  }

  v5 = *(a3 + 8);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    do
    {
      result = CUIRenditionKeySetValueForAttribute(v6, *(a3 + 12 + 4 * v7), *(a2 + 2 * v7), (v5 + 1));
      ++v7;
      v5 = *(a3 + 8);
    }

    while (v5 > v7);
  }

  return result;
}

unsigned __int16 *CUIRenditionKeySetValueForAttribute(unsigned __int16 *result, int a2, int a3, unsigned int a4)
{
  if (result)
  {
    if (!a4)
    {
      CUIRenditionKeySetValueForAttribute_cold_3();
    }

    v4 = *result;
    if (result[1] | v4)
    {
      LODWORD(v5) = 0;
      v6 = result + 3;
      while (v4 != a2)
      {
        LODWORD(v5) = v5 + 1;
        v7 = *v6;
        v4 = *(v6 - 1);
        v6 += 2;
        if (v7)
        {
          v8 = 0;
        }

        else
        {
          v8 = v4 == 0;
        }

        if (v8)
        {
          goto LABEL_11;
        }
      }

      if (a3)
      {
        result[2 * v5 + 1] = a3;
      }

      else
      {
        v11 = 0;
        if (result[1])
        {
          goto LABEL_22;
        }

        while (1)
        {
          v12 = v11;
          if (!result[2 * v11])
          {
            break;
          }

          do
          {
LABEL_22:
            ++v11;
          }

          while (result[2 * v11 + 1]);
        }

        if (a4 <= v11)
        {
          CUIRenditionKeySetValueForAttribute_cold_1();
        }

        if (v11 > v5)
        {
          v5 = v5;
          v13 = &result[2 * v5 + 2];
          do
          {
            *(v13 - 1) = *v13;
            ++v5;
            v13 += 2;
          }

          while (v5 < v12);
        }
      }
    }

    else
    {
LABEL_11:
      if (a3)
      {
        v9 = 0;
        if (result[1])
        {
          goto LABEL_14;
        }

        while (result[2 * v9])
        {
          do
          {
LABEL_14:
            ++v9;
          }

          while (result[2 * v9 + 1]);
        }

        if ((a4 - 1) <= v9)
        {
          CUIRenditionKeySetValueForAttribute_cold_2();
        }

        v10 = &result[2 * v9];
        *v10 = a2;
        v10[1] = a3;
        *(v10 + 1) = 0;
      }
    }
  }

  return result;
}

const char *CUIDefaultThemeRenditionKeyFormat(int a1, unsigned int a2)
{
  switch(a1)
  {
    case 4:
      return "tmfk";
    case 2:
      if (a2 >= 6)
      {
        if (a2 >= 0xB)
        {
          if (a2 == 11)
          {
            return "tmfk";
          }

          else if (a2 >= 0xD)
          {
            if (a2 == 13)
            {
              return "tmfk";
            }

            else if (a2 >= 0xF)
            {
              if (a2 == 15)
              {
                return "tmfk";
              }

              else if (a2 >= 0x11)
              {
                return "tmfk";
              }

              else
              {
                return "tmfk";
              }
            }

            else
            {
              return "tmfk";
            }
          }

          else
          {
            return "tmfk";
          }
        }

        else
        {
          return "tmfk";
        }
      }

      else
      {
        return "tmfk";
      }

    case 1:
      v4 = "tmfk";
      v5 = "tmfk";
      if (a2 < 0xF)
      {
        v5 = "tmfk";
      }

      if (a2 != 13)
      {
        v4 = v5;
      }

      if (a2 >= 0xD)
      {
        return v4;
      }

      else
      {
        return "tmfk";
      }

    default:
      _CUILog(4, "CoreUI: Unable to provide key format for custom theme semantics", v2, v3);
      return 0;
  }
}

uint64_t CUIRenditionKeyIndexForAttribute(unsigned __int16 *a1, int a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *a1;
  if (!a1[1] && v3 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v6 = a1 + 3;
  while (v3 != a2)
  {
    v7 = *v6;
    v3 = *(v6 - 1);
    result = (result + 1);
    v6 += 2;
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = v3 == 0;
    }

    if (v8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t CUIRenditionKeyTokenCount(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    while (*(a1 + 4 * v1))
    {
      ++v1;
    }
  }

  return v1;
}

BOOL CUIRenditionKeyHasIdentifier(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = (a1 + 12);
  for (i = 0xFFFFFFFFLL; ; --i)
  {
    v5 = *v3++;
    if (v5 == a2)
    {
      break;
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return i != 0;
}

uint64_t CUIRenditionKeyFormatRemoveAttribute(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    v3 = 0;
    v4 = result + 12;
    while (*(v4 + 4 * v3) != a2)
    {
      if (v2 == ++v3)
      {
        return result;
      }
    }

    if (v3 + 1 < v2)
    {
      do
      {
        *(v4 + 4 * v3) = *(result + 16 + 4 * v3);
        ++v3;
      }

      while (v2 - 1 != v3);
    }

    *(result + 8) = v2 - 1;
  }

  return result;
}

unsigned __int16 *CUIRenditionKeyValueForAttribute(unsigned __int16 *result, int a2)
{
  if (result)
  {
    v2 = *result;
    if (result[1])
    {
      v3 = 0;
    }

    else
    {
      v3 = v2 == 0;
    }

    if (v3)
    {
      return 0;
    }

    else
    {
      v4 = 0;
      v5 = result + 3;
      while (v2 != a2)
      {
        ++v4;
        v6 = *v5;
        v2 = *(v5 - 1);
        v5 += 2;
        if (v6)
        {
          v7 = 0;
        }

        else
        {
          v7 = v2 == 0;
        }

        if (v7)
        {
          return 0;
        }
      }

      return result[2 * v4 + 1];
    }
  }

  return result;
}

uint64_t CUIFillCARKeyArrayForRenditionKey2(uint64_t result, int *a2, uint64_t a3, uint64_t *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!result || !a2)
  {
    CUIFillCARKeyArrayForRenditionKey2_cold_1();
  }

  v5 = a4;
  v6 = result;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  if (!a4)
  {
    v5 = v13;
    result = CUIRenditionKeyInitializeAttributeIndexWithKeyFormat(v13, a3);
  }

  v7 = *a2;
  if (*a2)
  {
    v10 = *v5;
    v9 = v5 + 1;
    v8 = v10;
    v11 = a2 + 1;
    do
    {
      if ((v8 & (1 << v7)) != 0)
      {
        *(v6 + 2 * *(v9 + v7)) = *(v11 - 1);
      }

      v12 = *v11++;
      LOWORD(v7) = v12;
    }

    while (v12);
  }

  return result;
}

uint64_t CUIRenditionKeyInitializeAttributeIndexWithKeyFormat(uint64_t result, uint64_t a2)
{
  *(result + 192) = 0;
  *(result + 160) = 0u;
  *(result + 176) = 0u;
  *(result + 128) = 0u;
  *(result + 144) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  *(result + 80) = 0u;
  if (*(a2 + 8))
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a2 + 12 + 4 * v2);
      *(result + 8 + v5) = v2;
      if (v5 <= 0x1C)
      {
        *(result + 80 + 4 * v4++) = v5;
      }

      v3 |= 1 << v5;
      ++v2;
      LODWORD(v5) = *(a2 + 8);
      if (v5 >= 0x40)
      {
        v5 = 64;
      }

      else
      {
        v5 = v5;
      }
    }

    while (v2 < v5);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *(result + 76) = v4;
  *result = v3;
  return result;
}

void CUIRenditionKeyStandardize(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(v14, 0, 92);
  v6 = *(a3 + 8);
  if (v6 - 23 > 0xFFFFFFE7)
  {
    v7 = v14;
  }

  else
  {
    v7 = malloc_type_calloc(v6 + 3, 4uLL, 0x100004052888210uLL);
    v6 = *(a3 + 8);
  }

  v8 = v7;
  if (v6)
  {
    v9 = v6;
    v10 = (a3 + 12);
    v8 = v7;
    do
    {
      v12 = *v10++;
      v11 = v12;
      v13 = CUIRenditionKeyValueForAttribute(a2, v12);
      if (v13)
      {
        *v8 = v11;
        *(v8 + 1) = v13;
        v8 += 4;
      }

      --v9;
    }

    while (v9);
  }

  *v8 = 0;
  CUIRenditionKeyCopy(a1, v7, (*(a3 + 8) + 1));
  if (v7 != v14)
  {
    free(v7);
  }
}

void *CUIRenditionKeyCopy(void *a1, char *a2, unsigned int a3)
{
  if (!a1 || !a2)
  {
    CUIRenditionKeyCopy_cold_2();
  }

    ;
  }

  if (i >= a3)
  {
    CUIRenditionKeyCopy_cold_1();
  }

  return memmove(a1, a2, 4 * i + 4);
}

uint64_t CUICompareRenditionKey(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (!v4)
  {
    return 0;
  }

  v7 = (a3 + 12);
  while (1)
  {
    v8 = *v7;
    v7 += 2;
    v9 = CUIRenditionKeyValueForAttribute(a1, v8);
    v10 = CUIRenditionKeyValueForAttribute(a2, v8);
    v11 = v9 > v10 ? 1 : v3;
    v3 = v9 < v10 ? -1 : v11;
    if (v9 != v10)
    {
      break;
    }

    if (!--v4)
    {
      return 0;
    }
  }

  return v3;
}

unint64_t CUICopyKeySignatureWithPrefix(char *a1, unint64_t a2, int *a3, uint64_t a4, uint64_t *a5, unsigned int a6)
{
  v39 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    CUICopyKeySignatureWithPrefix_cold_1();
  }

  memset(v38, 0, 44);
  v12 = *(a4 + 8);
  if (v12 < 0x16)
  {
    v13 = v38;
  }

  else
  {
    v13 = malloc_type_calloc(v12, 2uLL, 0x1000040BDFB0063uLL);
  }

  CUIFillCARKeyArrayForRenditionKey2(v13, a3, a4, a5);
  if (a2)
  {
    v15 = a1 + 1;
    do
    {
      v16 = a6;
      v14 = v15;
      a6 /= 0xAu;
      *(v15 - 1) = (v16 - 10 * a6) | 0x30;
      if (v16 < 0xA)
      {
        break;
      }

      ++v15;
      --a2;
    }

    while (a2);
  }

  else
  {
    v14 = a1;
  }

  v17 = v14 - a1;
  if ((v14 - a1) >= 2)
  {
    v18 = 1;
    v19 = a1;
    do
    {
      v20 = *v19;
      v21 = v17 - v18;
      *v19++ = a1[v21];
      a1[v21] = v20;
    }

    while (v17 >> 1 > v18++);
  }

  v23 = _CUICopySortedKeySignature(v14, a2, v13, 2 * *(a4 + 8));
  if (v23 < 0)
  {
    if (v13 != v38)
    {
      free(v13);
    }

    return -1;
  }

  v24 = v23;
  if (v13 != v38)
  {
    free(v13);
  }

  if (a2 - v24 < 0x11)
  {
    return -1;
  }

  if (v24 < 0x61)
  {
    return v24;
  }

  v25 = 0;
  v26 = 0;
  do
  {
    v27 = &a3[v25];
    v28 = *(v27 + 1);
    if (!*(v27 + 1))
    {
      break;
    }

    v29 = *v27;
    if (a5 && (*a5 & (1 << v29)) != 0)
    {
      LODWORD(v30) = *(a5 + v29 + 8);
LABEL_23:
      v31 = 8 * v25;
      if (v30 >= 4)
      {
        v31 = 4 * v25 + 16;
      }

      v32 = (v28 << v31) ^ v26;
      if (v30 <= 0xB)
      {
        v26 = v32;
      }

      goto LABEL_32;
    }

    v33 = *(a4 + 8);
    if (v33)
    {
      v30 = 0;
      while (*(a4 + 12 + 4 * v30) != v29)
      {
        if (v33 == ++v30)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_23;
    }

LABEL_32:
    ++v25;
  }

  while (v25 != 21);
  v24 += 16;
  v34 = &v14[v24];
  v14[v24] = 0;
  v35 = 16;
  do
  {
    if (v26)
    {
      if ((v26 & 0xF) >= 0xA)
      {
        v36 = (v26 & 0xF) + 87;
      }

      else
      {
        v36 = v26 & 0xF | 0x30;
      }

      *--v34 = v36;
      v26 >>= 4;
    }

    else
    {
      *--v34 = 48;
    }

    --v35;
  }

  while (v35);
  return v24;
}

uint64_t CUIMaxScaleForTargetPlatform(uint64_t a1)
{
  if ((a1 - 1) >= 2)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t CUIMinScaleForTargetPlatform(uint64_t a1)
{
  if ((a1 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

double CUIPointSizeForDimensionForVectorGlyph(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    if (a1 == 4)
    {
      return 17.0;
    }

    v2 = &__VectorGlyphDimension2ToPointSizeTableEmbedded;
    if (a1 == 5)
    {
      v2 = &__VectorGlyphDimension2ToPointSizeTableEmbedded;
    }
  }

  else
  {
    v2 = &__VectorGlyphDimension2ToPointSizeTableForMac;
  }

  return v2[a2];
}

uint64_t CUIMaxDimensionForVectorGlyph(uint64_t a1)
{
  if (a1 == 4)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t CUIPreferredVectorGlyphConfigurationsForPlatform(unint64_t a1)
{
  if (a1 < 6)
  {
    return *(&off_1E7EE02F8 + a1);
  }

  _CUILog(4, "CoreUI: CUIPreferredVectorGlyphConfigurationsForPlatform() called with an unknown platform '%d'", a1);
  return 0;
}

__CFString *CUIPlatformNameForPlatform(uint64_t a1)
{
  result = &stru_1F37DEE28;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        return kCUIPlatformAppleTV;
      case 4:
        return kCUIPlatformWatch;
      case 5:
        return kCUIPlatformVision;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      return kCUIPlatformiOS;
    }

    else if (a1 == 2)
    {
      return kCUIPlatformMaciOS;
    }
  }

  else
  {
    return kCUIPlatformMac;
  }

  return result;
}

uint64_t CUIPlatformForPlatformString(void *a1)
{
  if ([a1 isEqualToString:kCUIPlatformMac] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"osx"))
  {
    return 0;
  }

  if ([a1 isEqualToString:kCUIPlatformMaciOS])
  {
    return 2;
  }

  if ([a1 isEqualToString:kCUIPlatformiOS] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"iphoneos"))
  {
    return 1;
  }

  if ([a1 isEqualToString:kCUIPlatformAppleTV])
  {
    return 3;
  }

  if ([a1 isEqualToString:kCUIPlatformWatch])
  {
    return 4;
  }

  if ([a1 isEqualToString:kCUIPlatformVision])
  {
    return 5;
  }

  if ([a1 isEqualToString:@"xros"])
  {
    return 5;
  }

  return -1;
}

uint64_t CUIRenditionKeyTokenIsBaseKeyOfKeyList(uint64_t a1, unsigned __int16 *a2)
{
  v3 = 0;
  if (a1)
  {
    while (*(a1 + 4 * v3))
    {
      ++v3;
    }
  }

  v4 = 0;
  if (a2)
  {
    while (*&a2[2 * v4])
    {
      ++v4;
    }
  }

  if (v4 < v3)
  {
    return 0;
  }

  if (v3)
  {
    v6 = v3;
    v7 = (a1 + 2);
    v8 = (a1 + 2);
    while (1)
    {
      v10 = *v8;
      v8 += 2;
      v9 = v10;
      if (v10)
      {
        if (v9 != CUIRenditionKeyValueForAttribute(a2, *(v7 - 1)))
        {
          break;
        }
      }

      v7 = v8;
      if (!--v6)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

const char *CUICGBlendModeFromLSRDescription(void *a1)
{
  result = [a1 UTF8String];
  if (result)
  {
    v2 = result;
    v3 = off_1E7EE0048;
    v4 = 28;
    while (strcasecmp(*v3, v2))
    {
      v3 += 3;
      if (!--v4)
      {
        return 0;
      }
    }

    return *(v3 - 2);
  }

  return result;
}

__CFString *CUIBlendModeLSRDescriptionFromCGBlendMode(int a1)
{
  v1 = off_1E7EE0048;
  v2 = 28;
  while (*(v1 - 1) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      return @"normal";
    }
  }

  return [MEMORY[0x1E696AEC0] stringWithUTF8String:*v1];
}

__CFString *CUIBlendModeDescriptionFromCGBlendMode(int a1)
{
  if (a1)
  {
    v1 = &qword_1E7EE0058;
    v2 = 28;
    while (--v2)
    {
      v3 = v1 + 3;
      v4 = *v1;
      v1 += 3;
      if (v4 == a1)
      {
        v5 = *(v3 - 1);
        return [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
      }
    }

    return @"Normal";
  }

  else
  {
    v5 = "Normal";
    return [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
  }
}

const char *CUIThemeAttributeNameToString(int a1)
{
  if ((a1 - 1) > 0x1B)
  {
    return "UNKNOWN";
  }

  else
  {
    return off_1E7EE0328[a1 - 1];
  }
}

void *CUIKeyFormatToArrayString(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  if (*(a1 + 8))
  {
    v3 = 0;
    do
    {
      [v2 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", CUIThemeAttributeNameToString(*(a1 + 12 + 4 * v3++)))}];
    }

    while (*(a1 + 8) > v3);
  }

  return v2;
}

void CUISetThemeCleanupQueue(void *a1)
{
  v2 = a1;
  os_unfair_lock_lock(&__themeCleanupQueueLock);
  v3 = __themeCleanupQueue;
  __themeCleanupQueue = a1;
  os_unfair_lock_unlock(&__themeCleanupQueueLock);
}

id CUIGetThemeCleanupQueue()
{
  os_unfair_lock_lock(&__themeCleanupQueueLock);
  v0 = __themeCleanupQueue;
  os_unfair_lock_unlock(&__themeCleanupQueueLock);
  v1 = MEMORY[0x1E69E96A0];
  if (v0)
  {
    v1 = v0;
  }

  v2 = v1;

  return v2;
}

unsigned __int16 *_CUIRenditionKeySetIntegerValueForAttribute(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 16)
  {
    _CUIRenditionKeySetIntegerValueForAttribute_cold_1(a2, a3);
  }

  return CUIRenditionKeySetValueForAttribute(a1, a2, a3, 0x16u);
}

_DWORD *CUIBitVectorCreate(unsigned int a1)
{
  if (a1 <= 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = a1;
  }

  v2 = ((v1 - 1) >> 5) + 1;
  v3 = malloc_type_malloc(4 * v2 + 8, 0xE343BF1CuLL);
  bzero(v3, 4 * v2 + 8);
  __CFSetLastAllocationEventName();
  *v3 = 0;
  v3[1] = v2;
  return v3;
}

void *CUIBitVectorCopy(unsigned int *a1)
{
  v2 = a1[1];
  v3 = malloc_type_malloc(4 * v2 + 8, 0xE343BF1CuLL);
  bzero(v3, 4 * v2 + 8);
  __CFSetLastAllocationEventName();
  *v3 = 0;
  v3[1] = v2;
  v4 = 4 * a1[1] + 8;

  return memcpy(v3, a1, v4);
}

void CUIBitVectorDestroy(os_unfair_lock_s *a1)
{
  if (a1)
  {
    os_unfair_lock_lock(a1);

    free(a1);
  }
}

uint64_t CUIBitVectorSetBit(os_unfair_lock_s *a1, unsigned int a2)
{
  os_unfair_lock_lock(a1);
  if (a2 >> 5 >= a1[1]._os_unfair_lock_opaque)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = 1;
    a1[(a2 >> 5) + 2]._os_unfair_lock_opaque |= 1 << a2;
  }

  os_unfair_lock_unlock(a1);
  return v4;
}

uint64_t CUIBitVectorUnSetBit(os_unfair_lock_s *a1, unsigned int a2)
{
  os_unfair_lock_lock(a1);
  if (a2 >> 5 >= a1[1]._os_unfair_lock_opaque)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = 1;
    a1[(a2 >> 5) + 2]._os_unfair_lock_opaque &= ~(1 << a2);
  }

  os_unfair_lock_unlock(a1);
  return v4;
}

uint64_t CUIBitVectorIsBitSet(os_unfair_lock_s *a1, unsigned int a2)
{
  os_unfair_lock_lock(a1);
  if (a2 >> 5 >= a1[1]._os_unfair_lock_opaque)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = (a1[(a2 >> 5) + 2]._os_unfair_lock_opaque >> a2) & 1;
  }

  os_unfair_lock_unlock(a1);
  return v4;
}

uint64_t CUIBitVectorNumberOfBitsSet(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1);
  os_unfair_lock_opaque = a1[1]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque)
  {
    LODWORD(v3) = 0;
    v4 = a1 + 2;
    do
    {
      v5 = v4->_os_unfair_lock_opaque;
      ++v4;
      v6 = vcnt_s8(v5);
      v6.i16[0] = vaddlv_u8(v6);
      v3 = (v6.i32[0] + v3);
      --os_unfair_lock_opaque;
    }

    while (os_unfair_lock_opaque);
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(a1);
  return v3;
}

uint64_t CUIBitVectorNumberOfBitsSetInBucket(uint64_t a1, unsigned int a2)
{
  v2 = vcnt_s8(*(a1 + 4 * (a2 >> 5) + 8));
  v2.i16[0] = vaddlv_u8(v2);
  return v2.u32[0];
}

uint64_t CUIBitVectorBucketValue(os_unfair_lock_s *a1, unsigned int a2)
{
  os_unfair_lock_lock(a1);
  os_unfair_lock_opaque = a1[(a2 >> 5) + 2]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(a1);
  return os_unfair_lock_opaque;
}

uint64_t CUIBitVectorSetBitRange(os_unfair_lock_s *a1, unsigned int a2, unsigned int a3)
{
  os_unfair_lock_lock(a1);
  if (a2 >= a3)
  {
LABEL_5:
    os_unfair_lock_unlock(a1);
    return 1;
  }

  else
  {
    os_unfair_lock_opaque = a1[1]._os_unfair_lock_opaque;
    while (a2 >> 5 < os_unfair_lock_opaque)
    {
      a1[(a2 >> 5) + 2]._os_unfair_lock_opaque |= 1 << a2;
      if (a3 == ++a2)
      {
        goto LABEL_5;
      }
    }

    os_unfair_lock_unlock(a1);
    return 0xFFFFFFFFLL;
  }
}

_DWORD *CUIBitVectorBitAnd(os_unfair_lock_s *a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a1);
  os_unfair_lock_lock(a2);
  os_unfair_lock_opaque = a1[1]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque == a2[1]._os_unfair_lock_opaque)
  {
    v5 = malloc_type_malloc(4 * os_unfair_lock_opaque + 8, 0xE343BF1CuLL);
    bzero(v5, 4 * os_unfair_lock_opaque + 8);
    __CFSetLastAllocationEventName();
    *v5 = 0;
    v5[1] = os_unfair_lock_opaque;
    if (a1[1]._os_unfair_lock_opaque)
    {
      v6 = 2;
      do
      {
        v5[v6] = a2[v6]._os_unfair_lock_opaque & a1[v6]._os_unfair_lock_opaque;
        v7 = v6++ - 1;
      }

      while (v7 < a1[1]._os_unfair_lock_opaque);
    }
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(a2);
  os_unfair_lock_unlock(a1);
  return v5;
}

_DWORD *CUIBitVectorBitOrForBucket(os_unfair_lock_s *a1, os_unfair_lock_s *a2, unsigned int a3)
{
  os_unfair_lock_lock(a1);
  os_unfair_lock_lock(a2);
  os_unfair_lock_opaque = a1[1]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque == a2[1]._os_unfair_lock_opaque)
  {
    v7 = malloc_type_malloc(4 * os_unfair_lock_opaque + 8, 0xE343BF1CuLL);
    bzero(v7, 4 * os_unfair_lock_opaque + 8);
    __CFSetLastAllocationEventName();
    *v7 = 0;
    v7[1] = os_unfair_lock_opaque;
    if (a1[1]._os_unfair_lock_opaque)
    {
      v8 = 0;
      v9 = a1 + 2;
      v10 = v7 + 2;
      do
      {
        if (a3 == v8)
        {
          v10[a3] = a2[a3 + 2]._os_unfair_lock_opaque | v9[a3]._os_unfair_lock_opaque;
        }

        else
        {
          v10[v8] = v9[v8]._os_unfair_lock_opaque;
        }

        ++v8;
      }

      while (v8 < a1[1]._os_unfair_lock_opaque);
    }

    os_unfair_lock_unlock(a2);
  }

  else
  {
    os_unfair_lock_unlock(a2);
    v7 = 0;
  }

  os_unfair_lock_unlock(a1);
  return v7;
}

os_unfair_lock_s *CUIBitVectorToData(os_unfair_lock_s *a1, size_t *a2)
{
  os_unfair_lock_lock(a1);
  v4 = 4 * a1[1]._os_unfair_lock_opaque + 4;
  *a2 = v4;
  v5 = malloc_type_malloc(v4, 0x66860228uLL);
  v6 = v5;
  v5->_os_unfair_lock_opaque = a1[1]._os_unfair_lock_opaque;
  if (a1[1]._os_unfair_lock_opaque)
  {
    v7 = 0;
    do
    {
      v5[v7 + 1] = a1[v7 + 2];
      ++v7;
    }

    while (v7 < a1[1]._os_unfair_lock_opaque);
  }

  __CFSetLastAllocationEventName();
  os_unfair_lock_unlock(a1);
  return v6;
}

_DWORD *CUIBitVectorFromData(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = 4 * v2;
  if (4 * v2 + 4 != a2)
  {
    return 0;
  }

  v5 = malloc_type_malloc(v3 + 8, 0xE343BF1CuLL);
  bzero(v5, v3 + 8);
  __CFSetLastAllocationEventName();
  *v5 = 0;
  v5[1] = v2;
  if (v2)
  {
    v6 = a1 + 1;
    v7 = 2;
    do
    {
      v8 = *v6++;
      v5[v7++] = v8;
      --v2;
    }

    while (v2);
  }

  return v5;
}

BOOL CUIBitVectorEqual(os_unfair_lock_s *a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a1);
  os_unfair_lock_lock(a2);
  os_unfair_lock_opaque = a1[1]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque == a2[1]._os_unfair_lock_opaque)
  {
    if (os_unfair_lock_opaque)
    {
      v5 = a1 + 2;
      v6 = a2 + 2;
      v7 = os_unfair_lock_opaque - 1;
      do
      {
        v9 = v5->_os_unfair_lock_opaque;
        ++v5;
        v8 = v9;
        v11 = v6->_os_unfair_lock_opaque;
        ++v6;
        v10 = v11;
        v13 = v7-- != 0;
        v14 = v8 == v10;
      }

      while (v8 == v10 && v13);
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  os_unfair_lock_unlock(a2);
  os_unfair_lock_unlock(a1);
  return v14;
}

_BYTE *CUIBitVectorToString(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1);
  v2 = (34 * a1[1]._os_unfair_lock_opaque) | 1;
  v3 = malloc_type_calloc((2 * a1[1]._os_unfair_lock_opaque + 32 * a1[1]._os_unfair_lock_opaque) | 1, 1uLL, 0x100004077774924uLL);
  os_unfair_lock_opaque = a1[1]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque)
  {
    v5 = 0;
    os_unfair_lock_opaque = 0;
    do
    {
      v6 = 0;
      v3[os_unfair_lock_opaque] = 91;
      v7 = (os_unfair_lock_opaque + 1);
      os_unfair_lock_opaque += 2;
      v8 = &v3[v7];
      v9 = v7 << 32;
      do
      {
        if ((a1[v5 + 2]._os_unfair_lock_opaque >> v6))
        {
          v10 = 49;
        }

        else
        {
          v10 = 48;
        }

        v8[v6] = v10;
        ++os_unfair_lock_opaque;
        ++v6;
        v9 += 0x100000000;
      }

      while (v6 != 32);
      v3[v9 >> 32] = 93;
      ++v5;
    }

    while (v5 < a1[1]._os_unfair_lock_opaque);
  }

  if (os_unfair_lock_opaque >= v2)
  {
    CUIBitVectorToString_cold_1();
  }

  __CFSetLastAllocationEventName();
  os_unfair_lock_unlock(a1);
  return v3;
}

BOOL CUIGeneratePlaceholderWhilePreservingAssetCatalog(void *a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v66 = *MEMORY[0x1E69E9840];
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 1;
  v10 = objc_autoreleasePoolPush();
  v59 = 0uLL;
  if (![a3 count])
  {
    *(v61 + 6) = 0;
    goto LABEL_33;
  }

  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v11 = -[CUIPlaceholderCUICommonAssetStorage initWithPath:forWriting:]([CUIPlaceholderCUICommonAssetStorage alloc], "initWithPath:forWriting:", [a1 path], 0);
  v12 = -[CUIPlaceholderCUIMutableCommonAssetStorage initWithPath:]([CUIPlaceholderCUIMutableCommonAssetStorage alloc], "initWithPath:", [a2 path]);
  v13 = v12;
  if (v11 && v12)
  {
    v37 = v10;
    if (a4)
    {
      v51 = 0;
      v52 = &v51;
      v53 = 0x2020000000;
      LOBYTE(v54) = 0;
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __CUIGeneratePlaceholderWhilePreservingAssetCatalog_block_invoke;
      v50[3] = &unk_1E7EE09A8;
      v50[5] = a3;
      v50[6] = &v51;
      v50[4] = v11;
      [(CUIPlaceholderCUICommonAssetStorage *)v11 enumerateKeysAndObjectsUsingBlock:v50];
      if (!*(v52 + 24))
      {
        a4 &= ~1uLL;
      }

      v38 = a4;
      _Block_object_dispose(&v51, 8);
    }

    else
    {
      v38 = a4;
    }

    v14 = [(CUIPlaceholderCUICommonAssetStorage *)v11 keyFormat];
    -[CUIPlaceholderCUIMutableCommonAssetStorage setThinningArguments:](v13, "setThinningArguments:", [MEMORY[0x1E696AEC0] stringWithFormat:@"Placeholder '%@' [%@]", objc_msgSend(a3, "componentsJoinedByString:", @", "), -[CUIPlaceholderCUICommonAssetStorage thinningArguments](v11, "thinningArguments")]);
    [(CUIPlaceholderCUIMutableCommonAssetStorage *)v13 setAuthoringTool:[(CUIPlaceholderCUICommonAssetStorage *)v11 authoringTool]];
    [(CUIPlaceholderCUIMutableCommonAssetStorage *)v13 setDeploymentPlatformVersion:[(CUIPlaceholderCUICommonAssetStorage *)v11 deploymentPlatformVersion]];
    -[CUIPlaceholderCUIMutableCommonAssetStorage setKeyFormatData:](v13, "setKeyFormatData:", [MEMORY[0x1E695DEF0] dataWithBytes:v14 length:4 * (*(v14 + 8) + 3)]);
    [(CUIPlaceholderCUIMutableCommonAssetStorage *)v13 setKeySemantics:[(CUIPlaceholderCUICommonAssetStorage *)v11 keySemantics]];
    [(CUIPlaceholderCUIMutableCommonAssetStorage *)v13 setDeploymentPlatform:[(CUIPlaceholderCUICommonAssetStorage *)v11 deploymentPlatformString]];
    [(CUIPlaceholderCUIMutableCommonAssetStorage *)v13 setDeploymentPlatformVersion:[(CUIPlaceholderCUICommonAssetStorage *)v11 deploymentPlatformVersion]];
    [(CUIPlaceholderCUIMutableCommonAssetStorage *)v13 setSchemaVersion:[(CUIPlaceholderCUICommonAssetStorage *)v11 schemaVersion]];
    [(CUIPlaceholderCUIMutableCommonAssetStorage *)v13 setStorageVersion:[(CUIPlaceholderCUICommonAssetStorage *)v11 storageVersion]];
    v36 = a2;
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v15 = [(NSDictionary *)[(CUIPlaceholderCUICommonAssetStorage *)v11 appearances] allKeys];
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v46 objects:v65 count:16];
    if (v16)
    {
      v17 = *v47;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v47 != v17)
          {
            objc_enumerationMutation(v15);
          }

          [(CUIPlaceholderCUIMutableCommonAssetStorage *)v13 setAppearanceIdentifier:[(CUIPlaceholderCUICommonAssetStorage *)v11 appearanceIdentifierForName:*(*(&v46 + 1) + 8 * i)] forName:*(*(&v46 + 1) + 8 * i)];
        }

        v16 = [(NSArray *)v15 countByEnumeratingWithState:&v46 objects:v65 count:16];
      }

      while (v16);
    }

    v45 = 0u;
    v44 = 0u;
    v43 = 0u;
    v42 = 0u;
    v19 = [-[CUIPlaceholderCUICommonAssetStorage localizations](v11 "localizations")];
    v20 = [v19 countByEnumeratingWithState:&v42 objects:v64 count:16];
    if (v20)
    {
      v21 = *v43;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v43 != v21)
          {
            objc_enumerationMutation(v19);
          }

          [(CUIPlaceholderCUIMutableCommonAssetStorage *)v13 setLocalizationIdentifier:[(CUIPlaceholderCUICommonAssetStorage *)v11 localizationIdentifierForName:*(*(&v42 + 1) + 8 * j)] forName:*(*(&v42 + 1) + 8 * j)];
        }

        v20 = [v19 countByEnumeratingWithState:&v42 objects:v64 count:16];
      }

      while (v20);
    }

    a2 = v36;
    v23 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __CUIGeneratePlaceholderWhilePreservingAssetCatalog_block_invoke_3;
    v40[3] = &unk_1E7EE09D0;
    v40[4] = v23;
    v40[5] = v24;
    v40[6] = v11;
    v40[7] = a3;
    v40[13] = v14;
    v40[14] = v38;
    v41 = v59;
    v40[8] = v13;
    v40[9] = v25;
    v40[10] = v26;
    v40[11] = &v55;
    v40[12] = &v60;
    [(CUIPlaceholderCUICommonAssetStorage *)v11 enumerateKeysAndObjectsUsingBlock:v40];
    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v54 = malloc_type_calloc((*(v14 + 8) + 1), 4uLL, 0x100004052888210uLL);
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __CUIGeneratePlaceholderWhilePreservingAssetCatalog_block_invoke_5;
    v39[3] = &unk_1E7EE09F8;
    v39[4] = v26;
    v39[5] = v11;
    v39[6] = v23;
    v39[7] = v13;
    v39[8] = v24;
    v39[9] = &v51;
    v39[10] = &v60;
    v39[11] = v14;
    [v25 enumerateObjectsUsingBlock:v39];
    free(v52[3]);

    _Block_object_dispose(&v51, 8);
    v10 = v37;
    goto LABEL_30;
  }

  if (v11)
  {
    if (!v12)
    {
      goto LABEL_29;
    }
  }

  else
  {
    *(v61 + 6) = -2;
    if (!v12)
    {
LABEL_29:
      *(v61 + 6) = -1;
    }
  }

LABEL_30:

  [(CUIPlaceholderCUIMutableCommonAssetStorage *)v13 setRenditionCount:*(v56 + 6)];
  if (![(CUIPlaceholderCUIMutableCommonAssetStorage *)v13 writeToDiskAndCompact:1])
  {
    *(v61 + 6) = -4;
  }

  _Block_object_dispose(&v55, 8);
LABEL_33:
  objc_autoreleasePoolPop(v10);
  if (!a5)
  {
    goto LABEL_48;
  }

  v27 = 0;
  v28 = *(v61 + 6);
  if (v28 <= -3)
  {
    if (v28 == -4)
    {
      v29 = MEMORY[0x1E696ABC0];
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"ERROR saving/compacting to outputfile failed", *MEMORY[0x1E696A588], 0}];
    }

    else
    {
      if (v28 != -3)
      {
        goto LABEL_47;
      }

      v29 = MEMORY[0x1E696ABC0];
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"ERROR saving to outputfile failed", *MEMORY[0x1E696A588], 0}];
    }

LABEL_45:
    v30 = v33;
    v31 = *MEMORY[0x1E696A798];
    v32 = 5;
    goto LABEL_46;
  }

  switch(v28)
  {
    case -2:
      v29 = MEMORY[0x1E696ABC0];
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"ERROR inputfile not a valid Asset catalog", *MEMORY[0x1E696A588], 0}];
      goto LABEL_45;
    case -1:
      v29 = MEMORY[0x1E696ABC0];
      v32 = *__error();
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"ERROR creating outputfile", *MEMORY[0x1E696A588], 0}];
      v31 = *MEMORY[0x1E696A798];
      goto LABEL_46;
    case 0:
      v29 = MEMORY[0x1E696ABC0];
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Passed Invalid namesToPreserve", *MEMORY[0x1E696A588], 0}];
      v31 = *MEMORY[0x1E696A798];
      v32 = 45;
LABEL_46:
      v27 = [v29 errorWithDomain:v31 code:v32 userInfo:v30];
      break;
  }

LABEL_47:
  *a5 = v27;
LABEL_48:
  v34 = *(v61 + 6);
  if (v34 < 0)
  {
    [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  }

  _Block_object_dispose(&v60, 8);
  return v34 == 1;
}

void sub_1B9E17104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&STACK[0x228], 8);
  _Unwind_Resume(a1);
}

void *__CUIGeneratePlaceholderWhilePreservingAssetCatalog_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) hasPrefix:a2];
  if (result)
  {
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void __CUIGeneratePlaceholderWhilePreservingAssetCatalog_block_invoke_3(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v6 = CUIRenditionKeyValueForAttribute(a2, 1);
  v7 = CUIRenditionKeyValueForAttribute(a2, 17);
  KeyTokenToData = __createKeyTokenToData(a2, *(a1 + 104));
  if (v6 != 9 || v7)
  {
    v9 = [*(a1 + 48) renditionNameForKeyBaseList:a2];
    v10 = *(a1 + 56);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __CUIGeneratePlaceholderWhilePreservingAssetCatalog_block_invoke_4;
    v13[3] = &unk_1E7EE0980;
    v13[4] = v9;
    v13[5] = &v14;
    [v10 enumerateObjectsUsingBlock:v13];
    v11 = v15;
    if (*(v15 + 24) == 1)
    {
      if (*(a1 + 112))
      {
        if (v6 == 1010 || (v12 = CUIRenditionKeyValueForAttribute(a2, 2), v11 = v15, v12 == 220))
        {
          *(v11 + 24) = 0;
          goto LABEL_11;
        }

        if ((v15[3] & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      [*(a1 + 64) setRenditionKey:objc_msgSend(*(a1 + 48) hotSpot:"renditionKeyForName:hotSpot:" forName:{objc_msgSend(v9, "UTF8String"), a1 + 120), objc_msgSend(v9, "UTF8String"), *(a1 + 120), *(a1 + 128)}];
      if (![*(a1 + 64) setAsset:a3 forKey:KeyTokenToData])
      {
        *(*(*(a1 + 96) + 8) + 24) = -3;
        goto LABEL_12;
      }

      [*(a1 + 72) addObject:KeyTokenToData];
      [*(a1 + 80) addObject:a3];
      ++*(*(*(a1 + 88) + 8) + 24);
    }
  }

  else
  {
    [*(a1 + 32) addObject:KeyTokenToData];
    [*(a1 + 40) addObject:a3];
  }

LABEL_11:

LABEL_12:
  _Block_object_dispose(&v14, 8);
}

void sub_1B9E17484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __createKeyTokenToData(int *a1, uint64_t a2)
{
  v4 = malloc_type_calloc(*(a2 + 8), 2uLL, 0x1000040BDFB0063uLL);
  CUIFillCARKeyArrayForRenditionKey(v4, a1, a2);
  v5 = objc_alloc(MEMORY[0x1E695DEF0]);
  v6 = 2 * *(a2 + 8);

  return [v5 initWithBytesNoCopy:v4 length:v6 freeWhenDone:1];
}

void *__CUIGeneratePlaceholderWhilePreservingAssetCatalog_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) hasPrefix:a2];
  if (result)
  {
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __CUIGeneratePlaceholderWhilePreservingAssetCatalog_block_invoke_5(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) objectAtIndex:?];
  CUIFillRenditionKeyForCARKeyArray(*(*(*(a1 + 72) + 8) + 24), [a2 bytes], *(a1 + 88));
  v10 = -[CUIPlaceholderCUIThemeRendition initWithCSIData:forKey:version:]([CUIPlaceholderCUIThemeRendition alloc], "initWithCSIData:forKey:version:", v4, *(*(*(a1 + 72) + 8) + 24), [*(a1 + 40) distilledInCoreUIVersion]);
  v5 = [(CUIPlaceholderCUIThemeRendition *)v10 isInternalLink];
  v6 = v10;
  if (v5)
  {
    KeyTokenToData = __createKeyTokenToData([-[CUIPlaceholderCUIThemeRendition linkingToRendition](v10 "linkingToRendition")], *(a1 + 88));
    v8 = [*(a1 + 48) indexOfObject:KeyTokenToData];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL && ([*(a1 + 56) setAsset:objc_msgSend(*(a1 + 64) forKey:{"objectAtIndex:", v8), objc_msgSend(*(a1 + 48), "objectAtIndex:", v8)}] & 1) == 0)
    {
      *(*(*(a1 + 80) + 8) + 24) = -3;
    }

    v6 = v10;
  }

  return MEMORY[0x1EEE66BB8](v5, v6);
}

unsigned int *BOMStorageNewWithOptionsAndSys(const char *a1, uint64_t a2, __int128 *a3)
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v3 = BomSys_default();
  }

  v5 = (*(v3 + 2))(*(v3 + 1), a1, 1538, 420);
  if (v5 == -1)
  {
    v8 = __error();
    v9 = strerror(*v8);
    _CUILog(4, "%s can't open: '%s' %s", "BOMStorage BOMStorageNewWithOptionsAndSys(const char *, CFDictionaryRef, BomSys *)", a1, v9);
  }

  else
  {
    v6 = v5;
    bzero(v10, 0x470uLL);
    v11 = v6;
    v12 = v3;
    if (!_WriteRootPage(v10))
    {
      (*(v3 + 3))(*(v3 + 1), v6);
      return BOMStorageOpenWithSys(a1, 1, v3);
    }
  }

  return 0;
}

uint64_t _WriteRootPage(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 1120);
  }

  else
  {
    v2 = 0;
  }

  v3 = 1;
  v4 = BOMStreamWithFileAndSys(*(a1 + 1028), 0, 0x200uLL, 1, 0, v2);
  if (v4)
  {
    v5 = v4;
    BOMStreamWriteUInt32(v4, 0x424F4D53u);
    BOMStreamWriteUInt32(v5, 0x746F7265u);
    BOMStreamWriteUInt32(v5, 1u);
    BOMStreamWriteUInt32(v5, *(a1 + 1056));
    BOMStreamWriteUInt32(v5, *(a1 + 1060));
    BOMStreamWriteUInt32(v5, *(a1 + 1064));
    BOMStreamWriteUInt32(v5, *(a1 + 1096));
    BOMStreamWriteUInt32(v5, *(a1 + 1100));
    v3 = BOMStreamFree(v5);
    if ((*(v2 + 64))(*(v2 + 8), *(a1 + 1028)))
    {
      v6 = __error();
      v7 = strerror(*v6);
      _CUILog(4, "%s fsync: '%s'", "int _WriteRootPage(BOMStorage)", v7);
      return 1;
    }
  }

  return v3;
}

unsigned int *BOMStorageOpenWithSys(const char *a1, int a2, __int128 *a3)
{
  v3 = a3;
  v77 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v3 = BomSys_default();
  }

  v71 = 0u;
  v72 = 0u;
  v70 = 0u;
  memset(v69, 0, sizeof(v69));
  v6 = (*(v3 + 2))(*(v3 + 1), a1, 2 * (a2 != 0), 420);
  if (v6 != -1)
  {
    v7 = v6;
    if ((*(v3 + 9))(*(v3 + 1), v6, v69) != -1)
    {
      v8 = BOMStreamWithFileAndSys(v7, 0, 0x200uLL, 0, 0, v3);
      if (!v8)
      {
        v32 = __error();
        v33 = strerror(*v32);
        v34 = BOMExceptionHandlerMessage("can't read from: '%s' %s", a1, v33);
        v18 = *__error();
        v19 = v34;
        v20 = 287;
        goto LABEL_18;
      }

      v9 = v8;
      if (BOMStreamReadUInt32(v8) == 1112493395 && BOMStreamReadUInt32(v9) == 1953460837)
      {
        UInt32 = BOMStreamReadUInt32(v9);
        if (UInt32 == 1)
        {
          v11 = malloc_type_calloc(1uLL, 0x470uLL, 0x10A0040835A29DFuLL);
          if (!v11)
          {
            v37 = __error();
            v38 = strerror(*v37);
            v39 = BOMExceptionHandlerMessage("calloc: %s", v38);
            v40 = __error();
            _BOMExceptionHandlerCall(v39, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 318, *v40);
            BOMStreamFree(v9);
            (*(v3 + 3))(*(v3 + 1), v7);
            return v11;
          }

          __CFSetLastAllocationEventName();
          *(v11 + 140) = v3;
          v11[257] = v7;
          v12 = v70;
          v11[258] = v70;
          v11[259] = v12;
          v11[263] = v11[263] & 0xFFFFFFF6 | a2 & 1;
          v11[264] = BOMStreamReadUInt32(v9);
          v11[265] = BOMStreamReadUInt32(v9);
          v11[266] = BOMStreamReadUInt32(v9);
          v11[274] = BOMStreamReadUInt32(v9);
          v11[275] = BOMStreamReadUInt32(v9);
          v11[263] &= ~4u;
          *(v11 + 141) = 0;
          BOMStreamFree(v9);
          v13 = v11[265];
          v14 = v11[266];
          v15 = __CFADD__(v14, v13);
          v16 = v14 + v13;
          if (v15)
          {
            v17 = BOMExceptionHandlerMessage("%s: stream invalid; overflow of admin offset+size", a1);
            v18 = *__error();
            v19 = v17;
            v20 = 347;
          }

          else
          {
            v41 = v11[258];
            if (v16 <= v41)
            {
              v43 = v11[274];
              v44 = v11[275];
              v15 = __CFADD__(v44, v43);
              v45 = v44 + v43;
              if (v15)
              {
                v46 = BOMExceptionHandlerMessage("%s: stream invalid; overflow of toc offset+size", a1);
                v18 = *__error();
                v19 = v46;
                v20 = 361;
              }

              else
              {
                if (v45 <= v41)
                {
                  if (a2)
                  {
                    if (v41 <= 0x800)
                    {
                      v48 = 2048;
                    }

                    else
                    {
                      v48 = v11[258];
                    }

                    v11[262] = v48;
                    _CreateMapAddress(v11, v48);
                    v49 = *(v11 + 130);
                    if (!v49)
                    {
                      goto LABEL_19;
                    }

                    v11[263] |= 0xAu;
                    v50 = v11[274];
                    if (v50)
                    {
                      v51 = BOMStreamWithFileAndSys(v11[257], v50, v11[275], 0, (v49 + v50), v3);
                      if (!v51)
                      {
                        goto LABEL_19;
                      }

                      BOMStreamFree(v51);
                    }
                  }

                  else
                  {
                    v52 = *(v3 + 12);
                    if (!v52)
                    {
                      goto LABEL_50;
                    }

                    v53 = v52(*(v3 + 1), 0);
                    v54 = CUILogRenditionLogEnabled();
                    if (v54)
                    {
                      v56 = CUILogHandle(v54, v55);
                      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
                      {
                        *buf = 136446466;
                        v74 = a1;
                        v75 = 2050;
                        v76 = v53;
                        _os_log_impl(&dword_1B9DEC000, v56, OS_LOG_TYPE_INFO, "CoreUI %{public}s %{public}p", buf, 0x16u);
                      }
                    }

                    if (v53 == -1)
                    {
LABEL_50:
                      v11[262] = 0;
                      *(v11 + 130) = 0;
                      v11[263] &= ~2u;
                      v60 = __error();
                      v61 = strerror(*v60);
                      _CUILog(1, "mmap failed for '%s' using regular file reading '%s'", a1, v61);
                    }

                    else
                    {
                      (*(*(v11 + 140) + 24))(*(*(v11 + 140) + 8), v11[257]);
                      v11[257] = -1;
                      v57 = v11[263];
                      v11[262] = v11[258];
                      *(v11 + 130) = v53;
                      v11[263] = v57 | 0xA;
                      v58 = v11[265];
                      if (v58 && (v57 & 4) == 0)
                      {
                        madvise((v53 + v58), v11[266], 3);
                      }

                      v59 = v11[274];
                      if (v59 && (v11[263] & 4) == 0)
                      {
                        madvise((*(v11 + 130) + v59), v11[275], 3);
                      }
                    }
                  }

                  _CreateBlockTable(v11);
                  v62 = v11[265];
                  if (v62)
                  {
                    if (!a2 && (v11[263] & 2) != 0)
                    {
                      v64 = BOMStreamWithAddress(*(v11 + 130) + v62, v11[266], 0);
                    }

                    else
                    {
                      v63 = malloc_type_calloc(1uLL, v11[266], 0x5DFBE76CuLL);
                      *(v11 + 141) = v63;
                      if (!v63)
                      {
                        v65 = __error();
                        v66 = strerror(*v65);
                        _CUILog(4, "%s: malloc: %s", "BOMStorage BOMStorageOpenWithSys(const char *, Boolean, BomSys *)", v66);
                        return 0;
                      }

                      v64 = BOMStreamWithFileAndSys(v7, v11[265], v11[266], 0, v63, v3);
                    }

                    v67 = v64;
                    if (!v64)
                    {
                      v68 = BOMExceptionHandlerMessage("can't read from %s unable to create a BOMStream", a1);
                      v18 = *__error();
                      v19 = v68;
                      v20 = 455;
                      goto LABEL_18;
                    }

                    if (_ReadBlockTable(v11, v64) || _ReadFreeList(v11, v67))
                    {
                      goto LABEL_19;
                    }

                    BOMStreamFree(v67);
                  }

                  else
                  {
                    *(v11 + 136) = _BOMFreeListAllocate();
                  }

                  __strlcpy_chk();
                  return v11;
                }

                v47 = BOMExceptionHandlerMessage("%s: stream invalid; toc range is outside of file", a1);
                v18 = *__error();
                v19 = v47;
                v20 = 368;
              }
            }

            else
            {
              v42 = BOMExceptionHandlerMessage("%s: stream invalid; admin range is outside of file", a1);
              v18 = *__error();
              v19 = v42;
              v20 = 354;
            }
          }

LABEL_18:
          _BOMExceptionHandlerCall(v19, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v20, v18);
          goto LABEL_19;
        }

        v36 = BOMExceptionHandlerMessage("%s has an unknown version: 0x%X", a1, UInt32);
        v29 = *__error();
        v30 = v36;
        v31 = 308;
      }

      else
      {
        v28 = BOMExceptionHandlerMessage("%s is not a BOMStorage file\n", a1);
        v29 = *__error();
        v30 = v28;
        v31 = 294;
      }

      _BOMExceptionHandlerCall(v30, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v31, v29);
      BOMStreamFree(v9);
LABEL_19:
      (*(v3 + 3))(*(v3 + 1), v7);
      return 0;
    }

    v25 = __error();
    v26 = strerror(*v25);
    v27 = BOMExceptionHandlerMessage("fstat: %s", v26);
    v18 = *__error();
    v19 = v27;
    v20 = 278;
    goto LABEL_18;
  }

  v21 = __error();
  v22 = strerror(*v21);
  v23 = BOMExceptionHandlerMessage("can't open: '%s' %s", a1, v22);
  v24 = __error();
  _BOMExceptionHandlerCall(v23, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 271, *v24);
  return 0;
}

void _CreateMapAddress(uint64_t a1, unsigned int a2)
{
  v3 = a2 % *MEMORY[0x1E69E9AC8];
  if (v3)
  {
    v4 = *MEMORY[0x1E69E9AC8] - v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 + a2;
  v6 = (*(*(a1 + 1120) + 96))(*(*(a1 + 1120) + 8), 0, v5, 3, 4098, 0xFFFFFFFFLL, 0);
  *(a1 + 1040) = v6;
  if (v6 == -1)
  {
    v7 = __error();
    v8 = strerror(*v7);
    _CUILog(4, "%s can't mmap memory of size '%d' error: '%s'", "int _CreateMapAddress(BOMStorage, unsigned int)", v5, v8);
    *(a1 + 1040) = 0;
  }

  *(a1 + 1048) = v5;
}

void *_CreateBlockTable(void *result)
{
  if (*(result + 1052))
  {
    v1 = result;
    result[134] = malloc_type_calloc(1uLL, 0x800uLL, 0x100004000313F17uLL);
    result = malloc_type_calloc(1uLL, 0x400uLL, 0x1000040BEE6EA24uLL);
    v1[135] = result;
    *(v1 + 267) = 256;
  }

  return result;
}

uint64_t _ReadBlockTable(uint64_t a1, uint64_t a2)
{
  result = BOMStreamReadUInt32(a2);
  if (result)
  {
    v5 = result;
    if (result >> 29 || (v6 = (8 * result), v6 > *(a1 + 1064)))
    {
      v7 = BOMExceptionHandlerMessage("bad value for block table count");
      v8 = __error();
      _BOMExceptionHandlerCall(v7, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1610, *v8);
      return 1;
    }

    else if (*(a1 + 1052))
    {
      _ExpandBlockTable(a1, result);
      v10 = 0;
      v11 = 4 * v5;
      v12 = 4;
      do
      {
        *(*(a1 + 1072) + v12 - 4) = BOMStreamReadUInt32(a2);
        *(*(a1 + 1072) + v12) = BOMStreamReadUInt32(a2);
        *(*(a1 + 1080) + v10) &= ~1u;
        v12 += 8;
        v10 += 4;
      }

      while (v11 != v10);
      return 0;
    }

    else
    {
      DataPointer = BOMStreamGetDataPointer(a2, v6);
      result = 0;
      *(a1 + 1072) = DataPointer;
      *(a1 + 1068) = v5;
    }
  }

  return result;
}

uint64_t _ReadFreeList(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 1052) & 1) == 0)
  {
    v3 = _BOMFreeListAllocate();
    result = 0;
    *(a1 + 1088) = v3;
    return result;
  }

  UInt32 = BOMStreamReadUInt32(a2);
  *(a1 + 1088) = _BOMFreeListAllocate();
  if (!UInt32)
  {
    return 0;
  }

  v7 = (8 * UInt32);
  if (v7 < 1)
  {
    v13 = BOMExceptionHandlerMessage("_ReadFreeList: tring to read %d byte for freelist table.", v7);
    v14 = __error();
    _BOMExceptionHandlerCall(v13, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1755, *v14);
  }

  else
  {
    v8 = malloc_type_malloc(v7, 0x2D95399uLL);
    if (v8)
    {
      v9 = v8;
      BOMStreamReadBuffer(a2, v8, v7);
      v10 = *(a1 + 1088);
      v11 = *(v10 + 16);
      v12 = BOMStreamGetByteOrder(a2) == 1;
      v11(v10, v9, v7, v12);
      free(v9);
      return 0;
    }
  }

  return 1;
}

void *BOMStorageOpenInRAM(const void *a1, unint64_t a2, char a3)
{
  if (a2 <= 0x1FF)
  {
    v3 = BOMExceptionHandlerMessage("stream invalid; root page is outside of address range");
    v4 = *__error();
    v5 = v3;
    v6 = 489;
LABEL_14:
    _BOMExceptionHandlerCall(v5, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v6, v4);
    return 0;
  }

  v8 = a2;
  v10 = BOMStreamWithAddress(a1, 512, 0);
  if (!v10)
  {
    v26 = BOMExceptionHandlerMessage("can't read from memory %p", a1);
    v4 = *__error();
    v5 = v26;
    v6 = 497;
    goto LABEL_14;
  }

  v11 = v10;
  if (BOMStreamReadUInt32(v10) == 1112493395 && BOMStreamReadUInt32(v11) == 1953460837)
  {
    UInt32 = BOMStreamReadUInt32(v11);
    if (UInt32 == 1)
    {
      v13 = malloc_type_calloc(1uLL, 0x470uLL, 0x10A0040835A29DFuLL);
      if (!v13)
      {
        v29 = __error();
        v30 = strerror(*v29);
        _CUILog(4, "%s: malloc: %s", "BOMStorage BOMStorageOpenInRAM(void *, size_t, Boolean)", v30);
        BOMStreamFree(v11);
        return v13;
      }

      v13[140] = BomSys_default();
      *(v13 + 257) = -1;
      *(v13 + 258) = v8;
      *(v13 + 259) = v8;
      *(v13 + 263) = *(v13 + 263) & 0xFFFFFFF6 | a3 & 1;
      *(v13 + 264) = BOMStreamReadUInt32(v11);
      *(v13 + 265) = BOMStreamReadUInt32(v11);
      *(v13 + 266) = BOMStreamReadUInt32(v11);
      *(v13 + 274) = BOMStreamReadUInt32(v11);
      *(v13 + 275) = BOMStreamReadUInt32(v11);
      *(v13 + 263) |= 6u;
      BOMStreamFree(v11);
      v14 = *(v13 + 265);
      v15 = *(v13 + 266);
      v16 = __CFADD__(v15, v14);
      v17 = v15 + v14;
      if (v16)
      {
        v18 = BOMExceptionHandlerMessage(" <memory>: stream invalid; overflow of admin offset+size");
        v19 = *__error();
        v20 = v18;
        v21 = 552;
      }

      else
      {
        v31 = *(v13 + 258);
        if (v17 <= v31)
        {
          v33 = *(v13 + 274);
          v34 = *(v13 + 275);
          v16 = __CFADD__(v34, v33);
          v35 = v34 + v33;
          if (v16)
          {
            v36 = BOMExceptionHandlerMessage("<memory>: stream invalid; overflow of toc offset+size");
            v19 = *__error();
            v20 = v36;
            v21 = 566;
          }

          else
          {
            if (v35 <= v31)
            {
              *(v13 + 262) = v31;
              v13[130] = a1;
              _CreateBlockTable(v13);
              v38 = *(v13 + 265);
              if (v38)
              {
                v39 = BOMStreamWithAddress(v13[130] + v38, *(v13 + 266), 0);
                if (!v39)
                {
                  v41 = __error();
                  v42 = strerror(*v41);
                  v43 = BOMExceptionHandlerMessage("can't read from <memory>: %s", v42);
                  v19 = *__error();
                  v20 = v43;
                  v21 = 592;
                  goto LABEL_26;
                }

                v40 = v39;
                if (_ReadBlockTable(v13, v39) || _ReadFreeList(v13, v40))
                {
                  goto LABEL_27;
                }

                BOMStreamFree(v40);
              }

              else
              {
                v13[136] = _BOMFreeListAllocate();
              }

              __strlcpy_chk();
              return v13;
            }

            v37 = BOMExceptionHandlerMessage("<memory>: stream invalid; toc range is outside file");
            v19 = *__error();
            v20 = v37;
            v21 = 573;
          }
        }

        else
        {
          v32 = BOMExceptionHandlerMessage("<memory>: stream invalid; admin range is outside of file");
          v19 = *__error();
          v20 = v32;
          v21 = 559;
        }
      }

LABEL_26:
      _BOMExceptionHandlerCall(v20, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v21, v19);
LABEL_27:
      free(v13);
      return 0;
    }

    v28 = BOMExceptionHandlerMessage("<memory> has an unknown version: 0x%X", UInt32);
    v23 = *__error();
    v24 = v28;
    v25 = 517;
  }

  else
  {
    v22 = BOMExceptionHandlerMessage("%s is not a BOMStorage file", "<memory>");
    v23 = *__error();
    v24 = v22;
    v25 = 504;
  }

  _BOMExceptionHandlerCall(v24, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v25, v23);
  BOMStreamFree(v11);
  return 0;
}

uint64_t BOMStorageFree(_BYTE *a1)
{
  if (!a1)
  {
    return 1;
  }

  if ((a1[1052] & 0x10) != 0 && BOMStorageCommit(a1))
  {
    return 1;
  }

  v3 = *(a1 + 134);
  if (v3)
  {
    if (a1[1052])
    {
      free(v3);
      v4 = *(a1 + 135);
      if (v4)
      {
        free(v4);
      }
    }
  }

  v5 = *(a1 + 136);
  if (v5)
  {
    v5[4](*(a1 + 136));
    free(v5);
  }

  if (*(a1 + 130))
  {
    if ((*(a1 + 263) & 8) != 0)
    {
      v6 = *(a1 + 263) & 3;
      v7 = (*(*(a1 + 140) + 104))(*(*(a1 + 140) + 8));
      if (v6 != 2 && v7 == -1)
      {
        v8 = __error();
        _BOMExceptionHandlerCall("munmap failed", 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1521, *v8);
      }
    }
  }

  if (*(a1 + 257) != -1)
  {
    (*(*(a1 + 140) + 24))(*(*(a1 + 140) + 8));
  }

  v9 = *(a1 + 141);
  if (v9)
  {
    free(v9);
  }

  free(a1);
  return 0;
}

BOOL BOMStorageCommit(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 1052);
  if ((v2 & 0x10) == 0)
  {
    return 0;
  }

  if (*(a1 + 1028) == -1)
  {
    v3 = 0;
    *(a1 + 1036) = *(a1 + 1032);
    goto LABEL_8;
  }

  _FlushWriteCache(a1);
  if (_AdjustFileSize(a1, 0, 0))
  {
    return 1;
  }

  v5 = *(a1 + 1088);
  v6 = 8 * (*(a1 + 1068) + *(v5 + 8));
  v7 = (v6 + 24);
  if (v6 == -24)
  {
    v8 = 0;
  }

  else
  {
    v8 = (*(v5 + 48))(v5, (v6 + 39) & 0xFFFFFFF0);
    if (!v8)
    {
      v8 = (*(a1 + 1032) + 15) & 0xFFFFFFF0;
    }
  }

  v9 = *(a1 + 1060);
  v10 = *(a1 + 1064);
  *(a1 + 1060) = v8;
  *(a1 + 1064) = v7;
  if (v9 && v10)
  {
    (*(*(a1 + 1088) + 40))();
  }

  v11 = v8;
  v3 = 1;
  v12 = BOMStreamWithFile(*(a1 + 1028), v11, v7, 1, 0);
  if (v12)
  {
    v13 = v12;
    v14 = *(a1 + 1068);
    BOMStreamWriteUInt32(v12, *(a1 + 1068));
    if (v14)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        if (v16 >= *(a1 + 1068))
        {
          _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)", v16);
          v18 = -1;
        }

        else
        {
          v17 = bswap32(*(*(a1 + 1072) + v15));
          if (*(a1 + 1052))
          {
            v18 = *(*(a1 + 1072) + v15);
          }

          else
          {
            v18 = v17;
          }
        }

        BOMStreamWriteUInt32(v13, v18);
        if (v16 >= *(a1 + 1068))
        {
          _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)", v16);
          v20 = 0;
        }

        else
        {
          v19 = bswap32(*(*(a1 + 1072) + v15 + 4));
          if (*(a1 + 1052))
          {
            v20 = *(*(a1 + 1072) + v15 + 4);
          }

          else
          {
            v20 = v19;
          }
        }

        BOMStreamWriteUInt32(v13, v20);
        ++v16;
        v15 += 8;
      }

      while (8 * v14 != v15);
    }

    BOMStreamWriteUInt32(v13, *(*(a1 + 1088) + 8));
    __len = 0;
    v21 = *(a1 + 1088);
    v22 = *(v21 + 24);
    v23 = BOMStreamGetByteOrder(v13) == 1;
    v24 = v22(v21, v23, &__len);
    BOMStreamWriteBuffer(v13, v24, __len);
    free(v24);
    v25 = BOMStreamFree(v13);
    if (_AdjustFileSize(a1, 0, 0))
    {
      return 1;
    }

    *(a1 + 1036) = *(a1 + 1032);
    v3 = (_WriteRootPage(a1) | v25) != 0;
    v2 = *(a1 + 1052);
LABEL_8:
    *(a1 + 1052) = v2 & 0xFFFFFFEF;
  }

  return v3;
}

uint64_t BOMStorageGetSys(uint64_t result)
{
  if (result)
  {
    return *(result + 1120);
  }

  return result;
}

uint64_t BOMStorageIsOpenForWriting(uint64_t result)
{
  if (result)
  {
    return *(result + 1052) & 1;
  }

  return result;
}

BOOL BOMStorageMemoryMapped(_BOOL8 result)
{
  if (result)
  {
    return (*(result + 1052) & 6) == 2;
  }

  return result;
}

uint64_t BOMStorageInRam(uint64_t result)
{
  if (result)
  {
    return (*(result + 1052) >> 2) & 1;
  }

  return result;
}

uint64_t BOMStorageNewBlock(uint64_t a1)
{
  if (!a1 || (*(a1 + 1052) & 1) == 0)
  {
    return 0;
  }

  v1 = (*(a1 + 1056) + 1);
  *(a1 + 1056) = v1;
  v3 = *(a1 + 1068);
  if (v1 >= v3)
  {
    _ExpandBlockTable(a1, v3 + 8);
  }

  return v1;
}

void _ExpandBlockTable(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 1068);
  if (v3 < a2)
  {
    v5 = 8 * a2;
    v6 = reallocf(*(a1 + 1072), v5);
    *(a1 + 1072) = v6;
    bzero(&v6[8 * v3], v5 - 8 * v3);
    v7 = *(a1 + 1068);
    v8 = 4 * a2;
    v9 = reallocf(*(a1 + 1080), v8);
    *(a1 + 1080) = v9;
    if (v8 > 4 * v7)
    {
      bzero(&v9[4 * v7], v8 - 4 * v7);
    }

    *(a1 + 1068) = a2;
  }

  if (!*(a1 + 1072) || !*(a1 + 1080))
  {
    v10 = *__error();

    _BOMExceptionHandlerCall("Out of memory.", 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1704, v10);
  }
}

uint64_t BOMStorageNewNamedBlock(uint64_t a1, const char *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 1052) & 1) == 0)
  {
    return 0;
  }

  if (_tocGet(a1, a2))
  {
    _CUILog(4, "%s: block named '%s' already exists", "BOMBlockID BOMStorageNewNamedBlock(BOMStorage, const char *)", a2);
    return 0;
  }

  v4 = BOMStorageNewBlock(a1);
  v6 = strnlen(a2, 0xFFuLL);
  v7 = v6;
  if (v6 < 0xFF)
  {
    if (*(a1 + 1096))
    {
      v8 = *(a1 + 1100);
    }

    else
    {
      v8 = 4;
    }

    v9 = v6 + v8;
    v10 = v9 + 5;
    if (v9 == -5)
    {
      v11 = 0;
    }

    else
    {
      v11 = (*(*(a1 + 1088) + 48))();
      if (!v11)
      {
        v11 = (*(a1 + 1032) + 15) & 0xFFFFFFF0;
      }
    }

    _ExpandMapAddress(a1, v11 + v10);
    v12 = *(a1 + 1096);
    if (v12)
    {
      v13 = BOMStreamWithAddress(*(a1 + 1040) + v12, *(a1 + 1100), 0);
      if (!v13)
      {
        return v4;
      }

      v14 = v13;
      UInt32 = BOMStreamReadUInt32(v13);
    }

    else
    {
      UInt32 = 0;
      v14 = 0;
    }

    v16 = BOMStreamWithAddress(*(a1 + 1040) + v11, v10, 1);
    if (v16)
    {
      v17 = v16;
      BOMStreamWriteUInt32(v16, UInt32 + 1);
      if (v14)
      {
        v22 = v11;
        for (i = v10; UInt32; --UInt32)
        {
          v18 = BOMStreamReadUInt32(v14);
          UInt8 = BOMStreamReadUInt8(v14);
          v20 = UInt8;
          v21 = UInt8;
          BOMStreamReadBuffer(v14, __dst, UInt8);
          BOMStreamWriteUInt32(v17, v18);
          BOMStreamWriteUInt8(v17, v20);
          BOMStreamWriteBuffer(v17, __dst, v21);
        }

        BOMStreamFree(v14);
        if (*(a1 + 1096) && *(a1 + 1100))
        {
          (*(*(a1 + 1088) + 40))();
        }

        v10 = i;
        v11 = v22;
      }

      BOMStreamWriteUInt32(v17, v4);
      BOMStreamWriteUInt8(v17, v7);
      BOMStreamWriteBuffer(v17, a2, v7);
      BOMStreamFree(v17);
      *(a1 + 1096) = v11;
      *(a1 + 1100) = v10;
      _AdjustFileSize(a1, v11, v10);
      if (*(a1 + 1028) != -1)
      {
        _AddToWriteCache(a1, v11, v10);
      }

      *(a1 + 1052) |= 0x10u;
    }
  }

  else
  {
    _CUILog(4, "%s: name length '%s' is > %d", "void _tocSet(BOMStorage, BOMBlockID, const char *)", a2, 255);
  }

  return v4;
}

uint64_t _tocGet(uint64_t a1, const char *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v4 = *(a1 + 1096);
  if (!v4)
  {
    return 0;
  }

  v5 = *(a1 + 1100);
  if (!v5)
  {
    return 0;
  }

  v6 = (*(a1 + 1052) & 2) != 0 ? BOMStreamWithAddress(*(a1 + 1040) + v4, *(a1 + 1100), 0) : BOMStreamWithFile(*(a1 + 1028), v4, v5, 0, 0);
  v7 = v6;
  if (!v6)
  {
    return 0;
  }

  UInt32 = BOMStreamReadUInt32(v6);
  if (UInt32)
  {
    v9 = UInt32;
    while (1)
    {
      v10 = BOMStreamReadUInt32(v7);
      UInt8 = BOMStreamReadUInt8(v7);
      BOMStreamReadBuffer(v7, __s2, UInt8);
      __s2[UInt8] = 0;
      if (!strncmp(a2, __s2, 0xFFuLL))
      {
        break;
      }

      if (!--v9)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v10 = 0;
  }

  BOMStreamFree(v7);
  v12 = *(a1 + 1068);
  if (v10 <= v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a1 + 1052);
  if ((v14 & 2) != 0 && (v14 & 5) == 0 && v13)
  {
    v15 = *(a1 + 1040);
    if (v12 <= v13)
    {
      _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)", v13);
      v12 = *(a1 + 1068);
      v16 = 0xFFFFFFFFLL;
    }

    else
    {
      v16 = bswap32(*(*(a1 + 1072) + 8 * v13));
    }

    if (v12 <= v13)
    {
      _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)", v13);
      v20 = 0;
    }

    else
    {
      v18 = *(*(a1 + 1072) + 8 * v13 + 4);
      v19 = bswap32(v18);
      if (*(a1 + 1052))
      {
        v20 = v18;
      }

      else
      {
        v20 = v19;
      }
    }

    madvise((v15 + v16), v20, 3);
    return v10;
  }

  return v13;
}

uint64_t BOMStorageSizeOfBlock(uint64_t a1, unsigned int a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (*(a1 + 1056) < a2)
    {
      return 0;
    }

    v5 = *(a1 + 1068);
    if (v5 <= a2)
    {
      _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)", a2);
      v5 = *(a1 + 1068);
    }

    else
    {
      v6 = *(*(a1 + 1072) + 8 * a2);
      v7 = bswap32(v6);
      if ((*(a1 + 1052) & 1) == 0)
      {
        v6 = v7;
      }

      if (v6 != -1)
      {
LABEL_16:
        if (v5 > a2)
        {
          v10 = *(*(a1 + 1072) + 8 * a2 + 4);
          v11 = bswap32(v10);
          if (*(a1 + 1052))
          {
            return v10;
          }

          else
          {
            return v11;
          }
        }

        _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)", a2);
        return 0;
      }
    }

    if (v5 <= a2)
    {
      _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)", a2);
      v5 = *(a1 + 1068);
    }

    else
    {
      v8 = *(*(a1 + 1072) + 8 * a2 + 4);
      v9 = bswap32(v8);
      if ((*(a1 + 1052) & 1) == 0)
      {
        v8 = v9;
      }

      if (v8 == -1)
      {
        return 0;
      }
    }

    goto LABEL_16;
  }

  return result;
}

double BOMStorageFreeBlock(uint64_t a1, unsigned int a2)
{
  if (a1 && a2 && *(a1 + 1056) >= a2)
  {
    v4 = *(a1 + 1068);
    if (v4 <= a2)
    {
      _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)", a2);
      v4 = *(a1 + 1068);
      v6 = -1;
    }

    else
    {
      v5 = bswap32(*(*(a1 + 1072) + 8 * a2));
      if (*(a1 + 1052))
      {
        v6 = *(*(a1 + 1072) + 8 * a2);
      }

      else
      {
        v6 = v5;
      }
    }

    if (v4 <= a2)
    {
      _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)", a2);
LABEL_19:
      result = NAN;
      *(*(a1 + 1072) + 8 * a2) = -1;
      return result;
    }

    v8 = bswap32(*(*(a1 + 1072) + 8 * a2 + 4));
    if (*(a1 + 1052))
    {
      v9 = *(*(a1 + 1072) + 8 * a2 + 4);
    }

    else
    {
      v9 = v8;
    }

    if (v6 != -1 || v9 != -1)
    {
      if (v6)
      {
        if (v9)
        {
          (*(*(a1 + 1088) + 40))();
        }
      }

      goto LABEL_19;
    }
  }

  return result;
}

void BOMStorageFreeNamedBlock(uint64_t a1, const char *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v4 = _tocGet(a1, a2);
      if (v4)
      {
        BOMStorageFreeBlock(a1, v4);
        if (*(a1 + 1096))
        {
          v5 = strlen(a2);
          v6 = *(a1 + 1100);
          if (v6)
          {
            v7 = (*(*(a1 + 1088) + 48))();
            if (!v7)
            {
              v7 = (*(a1 + 1032) + 15) & 0xFFFFFFF0;
            }
          }

          else
          {
            v7 = 0;
          }

          v8 = (v6 - v5 - 5);
          _ExpandMapAddress(a1, v7 + v8);
          v9 = BOMStreamWithAddress(*(a1 + 1040) + *(a1 + 1096), *(a1 + 1100), 0);
          if (v9)
          {
            v10 = v9;
            v11 = BOMStreamWithAddress(*(a1 + 1040) + v7, v8, 1);
            if (v11)
            {
              v12 = v11;
              UInt32 = BOMStreamReadUInt32(v10);
              BOMStreamWriteUInt32(v12, UInt32 - 1);
              for (; UInt32; --UInt32)
              {
                v14 = BOMStreamReadUInt32(v10);
                UInt8 = BOMStreamReadUInt8(v10);
                BOMStreamReadBuffer(v10, __s1, UInt8);
                __s1[UInt8] = 0;
                if (strcmp(__s1, a2))
                {
                  BOMStreamWriteUInt32(v12, v14);
                  BOMStreamWriteUInt8(v12, UInt8);
                  BOMStreamWriteBuffer(v12, __s1, UInt8);
                }
              }

              BOMStreamFree(v10);
              BOMStreamFree(v12);
              if (*(a1 + 1096) && *(a1 + 1100))
              {
                (*(*(a1 + 1088) + 40))();
              }

              *(a1 + 1096) = v7;
              *(a1 + 1100) = v8;
              _AdjustFileSize(a1, v7, v8);
              if (*(a1 + 1028) != -1)
              {
                _AddToWriteCache(a1, v7, v8);
              }

              *(a1 + 1052) |= 0x10u;
            }
          }
        }
      }
    }
  }
}

uint64_t BOMStorageCopyToBlock(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  if (!a1)
  {
    return 1;
  }

  v4 = a2;
  if (!a2 || *(a1 + 1056) < a2 || (*(a1 + 1052) & 1) == 0)
  {
    return 1;
  }

  if (*(a1 + 1068) <= a2)
  {
    _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)", a2);
    v9 = 0;
  }

  else
  {
    v9 = *(*(a1 + 1072) + 8 * a2 + 4);
  }

  return BOMStorageCopyToBlockRange(a1, v4, a3, a4, 0, v9);
}

uint64_t BOMStorageCopyToBlockRange(uint64_t a1, unsigned int a2, const void *a3, size_t a4, unint64_t a5, unint64_t a6)
{
  result = 1;
  if (a1 && a2 && *(a1 + 1056) >= a2 && (*(a1 + 1052) & 1) != 0)
  {
    v13 = *(a1 + 1068);
    if (v13 <= a2)
    {
      _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)", a2);
      v13 = *(a1 + 1068);
      LODWORD(v14) = -1;
    }

    else
    {
      LODWORD(v14) = *(*(a1 + 1072) + 8 * a2);
    }

    if (v13 <= a2)
    {
      _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)", a2);
      LODWORD(v15) = 0;
    }

    else
    {
      LODWORD(v15) = *(*(a1 + 1072) + 8 * a2 + 4);
      v16 = bswap32(v15);
      if ((*(a1 + 1052) & 1) == 0)
      {
        LODWORD(v15) = v16;
      }
    }

    v17 = a6 + a5;
    v18 = v15;
    v19 = v15 - (a6 + a5);
    if (v15 < a6 + a5)
    {
      v20 = *__error();
      v21 = "BOMStorageCopyToBlockRange: length extends beyond block size";
      v22 = 842;
      goto LABEL_20;
    }

    if (v15 <= a5)
    {
      v15 = a5;
    }

    else
    {
      v15 = v15;
    }

    v23 = v15 + a4;
    if (((v15 + a4) | v15 | a4) >> 32)
    {
      v24 = BOMExceptionHandlerMessage("ERROR in %s: %s [%s:%d]", "BOMStorageCopyToBlockRange", "data size extends beyond block size overflow", "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 859);
      v20 = *__error();
      v21 = v24;
      v22 = 859;
      goto LABEL_20;
    }

    __len = v19;
    v25 = v23 - a6;
    if ((v23 - a6) >> 32 || HIDWORD(a6))
    {
      BOMStorageCopyToBlockRange_cold_5();
      return 1;
    }

    v49 = v14;
    if (v18 != v25 || (v14 = v14, v14 < *(a1 + 1036)))
    {
      if (v14 && v18)
      {
        (*(*(a1 + 1088) + 40))();
        v25 = v23 - a6;
      }

      if (v23 == a6)
      {
        v14 = 0;
      }

      else
      {
        v26 = v25;
        v27 = (*(*(a1 + 1088) + 48))();
        v25 = v26;
        v14 = v27;
        if (!v27)
        {
          v14 = (*(a1 + 1032) + 15) & 0xFFFFFFF0;
        }
      }

      v28 = (*(a1 + 1072) + 8 * a2);
      *v28 = v14;
      v28[1] = v25;
    }

    result = 0;
    if (v14 && v23 != a6)
    {
      v47 = v25;
      v29 = v25 + v14;
      if (HIDWORD(v29))
      {
        BOMStorageCopyToBlockRange_cold_4();
        return 1;
      }

      if (_ExpandMapAddress(a1, v29))
      {
        return 1;
      }

      if (a5 && (v30 = *(a1 + 1040)) != 0)
      {
        v31 = v49;
        memmove((v30 + v14), (v30 + v49), a5);
        v32 = a5;
      }

      else
      {
        v32 = 0;
        v31 = v49;
      }

      v33 = v17 + v31;
      v34 = __len;
      if (HIDWORD(v33))
      {
        BOMStorageCopyToBlockRange_cold_3();
        return 1;
      }

      v35 = a5 + a4 + v14;
      if (((a5 + a4) | v35) >> 32)
      {
        v36 = BOMExceptionHandlerMessage("ERROR in %s: %s [%s:%d]", "BOMStorageCopyToBlockRange", "unsigned 32-bit integer addition overflow", "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 922);
        v20 = *__error();
        v21 = v36;
        v22 = 922;
      }

      else
      {
        if (v18 <= a5 || v14 < v49 || v14 >= v18 + v49)
        {
          if (a4)
          {
            v39 = v32;
            memmove((*(a1 + 1040) + v14 + v32), a3, a4);
            v32 = v39 + a4;
          }

          if (v32 < v47)
          {
            v40 = v47 - v32;
            if (HIDWORD(v40))
            {
              BOMStorageCopyToBlockRange_cold_2();
              return 1;
            }

            v41 = v32;
            memmove((*(a1 + 1040) + v14 + v32), (*(a1 + 1040) + v33), v40);
            v32 = v41 + v40;
          }
        }

        else
        {
          if (HIDWORD(__len))
          {
            BOMStorageCopyToBlockRange_cold_1();
            return 1;
          }

          if (v18 != v17)
          {
            v37 = v32;
            memmove((*(a1 + 1040) + v35), (*(a1 + 1040) + v33), __len);
            v32 = v37;
            v34 = __len;
          }

          if (a4)
          {
            v38 = v32;
            memmove((*(a1 + 1040) + v14 + v32), a3, a4);
            v34 = __len;
            v32 = v38 + a4;
          }

          v32 += v34;
        }

        v42 = *(a1 + 1080);
        if (v42)
        {
          *(v42 + 4 * a2) |= 1u;
        }

        else
        {
          v43 = v32;
          v44 = BOMExceptionHandlerMessage("BOM blockShadowTable is null");
          v45 = __error();
          _BOMExceptionHandlerCall(v44, 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 973, *v45);
          v32 = v43;
        }

        v46 = v47;
        if (v32 == v47)
        {
          if (*(a1 + 1028) == -1)
          {
            if ((v14 + v47) > *(a1 + 1032))
            {
              *(a1 + 1032) = v14 + v47;
            }
          }

          else
          {
            _AddToWriteCache(a1, v14, v47);
            v46 = v47;
          }

          result = _AdjustFileSize(a1, v14, v46);
          if (!result)
          {
            *(a1 + 1052) |= 0x10u;
            return result;
          }

          return 1;
        }

        v20 = *__error();
        v21 = "BOMStorageCopyToBlockRange: internal consistency error";
        v22 = 978;
      }

LABEL_20:
      _BOMExceptionHandlerCall(v21, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v22, v20);
      return 1;
    }
  }

  return result;
}

uint64_t _ExpandMapAddress(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 1048);
  if (v3 < a2)
  {
    if (v3 >= 0x100000)
    {
      LODWORD(v4) = v3 + 0x100000;
    }

    else
    {
      LODWORD(v4) = 2 * v3;
    }

    if (v4 <= a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = v4;
    }

    v5 = v4 % *MEMORY[0x1E69E9AC8];
    v6 = *MEMORY[0x1E69E9AC8] - v5;
    if (!v5)
    {
      v6 = 0;
    }

    v7 = (v6 + v4);
    v8 = (*(*(a1 + 1120) + 96))(*(*(a1 + 1120) + 8), 0, v7, 3, 4098, 0xFFFFFFFFLL, 0);
    if (v8 == -1)
    {
      v13 = *__error();
      v14 = "mmap failed";
      v12 = 1;
      v15 = 1547;
    }

    else
    {
      v9 = v8;
      if (vm_copy(*MEMORY[0x1E69E9A60], *(a1 + 1040), *(a1 + 1048), v8))
      {
        v10 = __error();
        _BOMExceptionHandlerCall("vm_copy failed", 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1551, *v10);
      }

      if ((*(*(a1 + 1120) + 104))(*(*(a1 + 1120) + 8), *(a1 + 1040), *(a1 + 1048)) != -1)
      {
        *(a1 + 1040) = v9;
        *(a1 + 1048) = v7;
        if (!v9)
        {
          goto LABEL_17;
        }

        return 0;
      }

      v13 = *__error();
      v14 = "munmap failed";
      v12 = 1;
      v15 = 1554;
    }

    _BOMExceptionHandlerCall(v14, 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v15, v13);
    return v12;
  }

  if (!*(a1 + 1040))
  {
LABEL_17:
    v11 = __error();
    _BOMExceptionHandlerCall("Out of memory.", 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1567, *v11);
  }

  return 0;
}

void _AddToWriteCache(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || !a3)
  {
    return;
  }

  v3 = a2;
  v5 = (a1 + 1104);
  v6 = *(a1 + 1104);
  if (!v6)
  {
    *(a1 + 1104) = _newFreeListEntry(a2, a3);
    v12 = 1;
LABEL_23:
    *(a1 + 1112) = v12;
LABEL_24:
    if (*(a1 + 1112) < 0x10u)
    {
      v15 = *v5;
      if (*v5)
      {
        v16 = 0;
        do
        {
          v17 = *(v15 + 3);
          if (v17 < 0xFFFF)
          {
            v18 = *v15;
            v16 = v15;
          }

          else
          {
            v18 = *v15;
            if (v16)
            {
              v19 = v16;
            }

            else
            {
              v19 = v5;
            }

            *v19 = v18;
            _WriteAddress(a1, *(v15 + 2), v17);
            free(v15);
            --*(a1 + 1112);
          }

          v15 = v18;
        }

        while (v18);
      }
    }

    else
    {

      _FlushWriteCache(a1);
    }

    return;
  }

  v7 = v6[2];
  if (v7 <= a2)
  {
    while (1)
    {
      v8 = v6;
      v6 = *v6;
      if (!v6)
      {
        break;
      }

      v9 = v6[2];
      if (v9 >= a2)
      {
        v11 = v8[3];
        if (v11 + v8[2] != a2)
        {
          goto LABEL_6;
        }

        v8[3] = v11 + a3;
        if (a3 + a2 == v6[2])
        {
          v8[3] = v6[3] + v11 + a3;
          *v8 = *v6;
          free(v6);
          v12 = *(a1 + 1112) - 1;
          goto LABEL_23;
        }

        goto LABEL_24;
      }
    }

    v14 = v8[3];
    if (v14 + v8[2] == a2)
    {
      v8[3] = v14 + a3;
      goto LABEL_24;
    }

    v13 = _newFreeListEntry(a2, a3);
    if (v13)
    {
      *v13 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v8 = 0;
    v9 = v6[2];
LABEL_6:
    if (a3 + a2 == v9)
    {
      v10 = v6[3] + a3;
      v6[2] = a2;
      v6[3] = v10;
      goto LABEL_24;
    }

    v13 = _newFreeListEntry(a2, a3);
    if (v13)
    {
      *v13 = v6;
      if (v7 <= v3)
      {
LABEL_21:
        *v8 = v13;
      }

      else
      {
        *v5 = v13;
      }

      v12 = *(a1 + 1112) + 1;
      goto LABEL_23;
    }
  }

  v20 = *__error();

  _BOMExceptionHandlerCall("Out of memory.", 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 2136, v20);
}

uint64_t _AdjustFileSize(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    if ((a3 + a2) <= *(a1 + 1032))
    {
      return 0;
    }

    else
    {
      result = 0;
      *(a1 + 1032) = a3 + a2;
    }
  }

  else
  {
    v5 = (*(*(a1 + 1120) + 56))(*(*(a1 + 1120) + 8), *(a1 + 1028), 0, 2);
    if (v5 == -1)
    {
      v7 = __error();
      v8 = strerror(*v7);
      _CUILog(4, "%s: lseek: %s", "int _AdjustFileSize(BOMStorage, unsigned int, unsigned int)", v8);
      return 1;
    }

    else
    {
      v6 = v5;
      result = 0;
      *(a1 + 1032) = v6;
    }
  }

  return result;
}

uint64_t BOMStorageCopyFromBlock(uint64_t a1, unsigned int a2, void *a3)
{
  if (!a1 || !a2)
  {
    if (a1)
    {
      if (!a2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v12 = __error();
      _BOMExceptionHandlerCall("BOMStorageCopyFromBlock: !storage", 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1010, *v12);
      if (!a2)
      {
LABEL_13:
        v5 = *__error();
        v6 = "BOMStorageCopyFromBlock: !bid";
        v7 = 1012;
        goto LABEL_14;
      }
    }

    return 1;
  }

  if (*(a1 + 1056) < a2)
  {
    v5 = *__error();
    v6 = "BOMStorageCopyFromBlock: bid > storage->blocks";
    v7 = 1016;
LABEL_14:
    _BOMExceptionHandlerCall(v6, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v7, v5);
    return 1;
  }

  if (*(a1 + 1068) <= a2)
  {
    _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)", a2);
    v11 = 0;
  }

  else
  {
    v9 = *(*(a1 + 1072) + 8 * a2 + 4);
    v10 = bswap32(v9);
    if (*(a1 + 1052))
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }
  }

  return BOMStorageCopyFromBlockRange(a1, a2, 0, v11, a3);
}

uint64_t BOMStorageCopyFromBlockRange(uint64_t a1, unsigned int a2, uint64_t a3, size_t __len, void *__dst)
{
  if (!a1 || !a2 || !__dst)
  {
    if (a1)
    {
      if (a2)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v16 = __error();
      _BOMExceptionHandlerCall("BOMStorageCopyFromBlockRange: !storage", 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1112, *v16);
      if (a2)
      {
LABEL_8:
        if (!__dst)
        {
          goto LABEL_17;
        }

        return 1;
      }
    }

    v17 = __error();
    _BOMExceptionHandlerCall("BOMStorageCopyFromBlockRange: !bid", 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1114, *v17);
    if (!__dst)
    {
LABEL_17:
      v8 = *__error();
      v9 = "BOMStorageCopyFromBlockRange: !data";
      v10 = 1116;
      goto LABEL_43;
    }

    return 1;
  }

  if (*(a1 + 1056) < a2)
  {
    v8 = *__error();
    v9 = "BOMStorageCopyRangeFromBlockRange: bad block (bid > storage->blocks)";
    v10 = 1122;
LABEL_43:
    _BOMExceptionHandlerCall(v9, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v10, v8);
    return 1;
  }

  v13 = *(a1 + 1068);
  if (v13 <= a2)
  {
    _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)", a2);
    v13 = *(a1 + 1068);
  }

  else
  {
    v14 = *(*(a1 + 1072) + 8 * a2);
    v15 = bswap32(v14);
    if ((*(a1 + 1052) & 1) == 0)
    {
      v14 = v15;
    }

    if (v14 != -1)
    {
      goto LABEL_25;
    }
  }

  if (v13 <= a2)
  {
    _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)", a2);
    v13 = *(a1 + 1068);
  }

  else
  {
    v18 = *(*(a1 + 1072) + 8 * a2 + 4);
    v19 = bswap32(v18);
    if ((*(a1 + 1052) & 1) == 0)
    {
      v18 = v19;
    }

    if (v18 == -1)
    {
      v8 = *__error();
      v9 = "BOMStorageCopyRangeFromBlockRange: reading from free block";
      v10 = 1127;
      goto LABEL_43;
    }
  }

LABEL_25:
  if (v13 <= a2)
  {
    _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)", a2);
    v13 = *(a1 + 1068);
    v21 = -1;
  }

  else
  {
    v20 = bswap32(*(*(a1 + 1072) + 8 * a2));
    if (*(a1 + 1052))
    {
      v21 = *(*(a1 + 1072) + 8 * a2);
    }

    else
    {
      v21 = v20;
    }
  }

  if (v13 <= a2)
  {
    _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)", a2);
    v22 = 0;
  }

  else
  {
    v22 = *(*(a1 + 1072) + 8 * a2 + 4);
    v23 = bswap32(v22);
    if ((*(a1 + 1052) & 1) == 0)
    {
      v22 = v23;
    }
  }

  if (__CFADD__(v22, v21))
  {
    v8 = *__error();
    v9 = "BOMStorageCopyRangeFromBlockRange: 32-bit overflow with block address+size";
    v10 = 1137;
    goto LABEL_43;
  }

  if (v22 + v21 > *(a1 + 1032))
  {
    v8 = *__error();
    v9 = "BOMStorageCopyRangeFromBlockRange: block extends past end of storage";
    v10 = 1141;
    goto LABEL_43;
  }

  if (__CFADD__(__len, a3))
  {
    BOMStorageCopyFromBlockRange_cold_1();
    return 1;
  }

  if (__len + a3 > v22)
  {
    v8 = *__error();
    v9 = "BOMStorageCopyRangeFromBlockRange: length extends beyond block size";
    v10 = 1156;
    goto LABEL_43;
  }

  if (v22)
  {
    if (!v21)
    {
      v8 = *__error();
      v9 = "BOMStorageCopyRangeFromBlockRange: bad block address";
      v10 = 1164;
      goto LABEL_43;
    }

    v25 = *(a1 + 1080);
    if (v25 && (*(v25 + 4 * a2) & 1) != 0)
    {
      v26 = *(a1 + 1052);
    }

    else
    {
      v26 = *(a1 + 1052);
      if ((v26 & 1) != 0 && *(a1 + 1028) != -1)
      {
        goto LABEL_55;
      }
    }

    if ((v26 & 2) != 0)
    {
      v29 = (*(a1 + 1040) + v21 + a3);
      goto LABEL_64;
    }

LABEL_55:
    v27 = *(a1 + 1028);
    if ((v26 & 2) == 0)
    {
      v28 = BOMStreamWithFile(v27, v21, v22, 0, 0);
      BOMStreamReadBuffer(v28, __dst, __len);
      BOMStreamFree(v28);
      return 0;
    }

    v30 = BOMStreamWithFile(v27, v21, v22, 0, (*(a1 + 1040) + v21));
    if (!v30)
    {
      v8 = *__error();
      v9 = "BOMStorageCopyRangeFromBlockRange: !stream";
      v10 = 1189;
      goto LABEL_43;
    }

    BOMStreamFree(v30);
    v31 = *(a1 + 1080);
    if (v31)
    {
      *(v31 + 4 * a2) |= 1u;
    }

    else
    {
      v32 = BOMExceptionHandlerMessage("BOM blockShadowTable is null");
      v33 = __error();
      _BOMExceptionHandlerCall(v32, 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1196, *v33);
    }

    v29 = (*(a1 + 1040) + v21 + a3);
LABEL_64:
    memmove(__dst, v29, __len);
  }

  return 0;
}

uint64_t BOMStorageReadFromBlock(uint64_t a1, unsigned int a2)
{
  if (!a1 || !a2)
  {
    if (a1)
    {
      if (!a2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v10 = __error();
      _BOMExceptionHandlerCall("BOMStorageCopyFromBlock: !storage", 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1029, *v10);
      if (!a2)
      {
LABEL_13:
        v4 = *__error();
        v5 = "BOMStorageCopyFromBlock: !bid";
        v6 = 1032;
        goto LABEL_27;
      }
    }

    return 0;
  }

  if (*(a1 + 1056) < a2)
  {
    v4 = *__error();
    v5 = "BOMStorageCopyRangeFromBlockRange: bad block (bid > storage->blocks)";
    v6 = 1039;
LABEL_27:
    _BOMExceptionHandlerCall(v5, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v6, v4);
    return 0;
  }

  v7 = *(a1 + 1068);
  if (v7 <= a2)
  {
    _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)", a2);
    v7 = *(a1 + 1068);
    v9 = -1;
  }

  else
  {
    v8 = bswap32(*(*(a1 + 1072) + 8 * a2));
    if (*(a1 + 1052))
    {
      v9 = *(*(a1 + 1072) + 8 * a2);
    }

    else
    {
      v9 = v8;
    }
  }

  if (v7 <= a2)
  {
    _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)", a2);
    v11 = 0;
  }

  else
  {
    v11 = *(*(a1 + 1072) + 8 * a2 + 4);
    v12 = bswap32(v11);
    if ((*(a1 + 1052) & 1) == 0)
    {
      v11 = v12;
    }

    if (v9 == -1 && v11 == -1)
    {
      v4 = *__error();
      v5 = "BOMStorageCopyRangeFromBlockRange: reading from free block";
      v6 = 1048;
      goto LABEL_27;
    }
  }

  if (__CFADD__(v11, v9))
  {
    v4 = *__error();
    v5 = "BOMStorageCopyRangeFromBlockRange: 32-bit overflow with block address+size";
    v6 = 1054;
    goto LABEL_27;
  }

  if (v11 + v9 > *(a1 + 1032))
  {
    v4 = *__error();
    v5 = "BOMStorageCopyRangeFromBlockRange: block extends past end of storage";
    v6 = 1058;
    goto LABEL_27;
  }

  if (!v11)
  {
    return 0;
  }

  v14 = *(a1 + 1080);
  if (v14 && (*(v14 + 4 * a2) & 1) != 0)
  {
    v15 = *(a1 + 1052);
LABEL_39:
    if ((v15 & 2) == 0)
    {
      return 0;
    }

    return *(a1 + 1040) + v9;
  }

  v15 = *(a1 + 1052);
  if ((v15 & 1) == 0)
  {
    goto LABEL_39;
  }

  v16 = *(a1 + 1028);
  if (v16 == -1)
  {
    goto LABEL_39;
  }

  if ((v15 & 2) == 0)
  {
    return 0;
  }

  v17 = BOMStreamWithFile(v16, v9, v11, 0, (*(a1 + 1040) + v9));
  if (!v17)
  {
    v4 = *__error();
    v5 = "BOMStorageCopyRangeFromBlockRange: !stream";
    v6 = 1086;
    goto LABEL_27;
  }

  BOMStreamFree(v17);
  v18 = *(a1 + 1080);
  if (v18)
  {
    *(v18 + 4 * a2) |= 1u;
  }

  else
  {
    v19 = BOMExceptionHandlerMessage("BOM blockShadowTable is null");
    v20 = __error();
    _BOMExceptionHandlerCall(v19, 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1093, *v20);
  }

  return *(a1 + 1040) + v9;
}

void _FlushWriteCache(uint64_t a1)
{
  for (i = *(a1 + 1104); i; i = *(a1 + 1104))
  {
    *(a1 + 1104) = *i;
    _WriteAddress(a1, i[2], i[3]);
    free(i);
  }

  *(a1 + 1112) = 0;
}

uint64_t BOMStorageCompact(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a1 || (*(a1 + 1052) & 1) == 0 || *(a1 + 1028) == -1)
  {
    return 1;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  v2 = *(a1 + 1120);
  BOMStorageCommit(a1);
  __strlcpy_chk();
  v3 = (*(v2 + 72))(*(v2 + 8), *(a1 + 1028), &v36);
  if (v3 == -1)
  {
    v4 = __error();
    v5 = strerror(*v4);
    v6 = BOMExceptionHandlerMessage("fstat: %s", v5);
    v7 = __error();
    _BOMExceptionHandlerCall(v6, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1319, *v7);
  }

  __strlcpy_chk();
  v8 = strrchr(__s, 47);
  if (v8)
  {
    *v8 = 0;
  }

  else
  {
    __strlcpy_chk();
  }

  __strlcat_chk();
  if (!mktemp(__s))
  {
    _CUILog(4, "%s: mktemp can't get temp file %s", "int BOMStorageCompact(BOMStorage)", __s);
    return 1;
  }

  v10 = BOMStorageNewWithOptionsAndSys(__s, v9, v2);
  if (!v10)
  {
    goto LABEL_56;
  }

  v11 = v10;
  if (*(a1 + 1056))
  {
    v12 = 1;
    do
    {
      if (v12 != BOMStorageNewBlock(v11))
      {
        _CUILog(4, "%s: unable to reserve block %d");
        goto LABEL_56;
      }

      v13 = *(a1 + 1068);
      if (v13 <= v12)
      {
        _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)", v12);
        v13 = *(a1 + 1068);
      }

      else
      {
        v14 = *(*(a1 + 1072) + 8 * v12);
        v15 = bswap32(v14);
        if ((*(a1 + 1052) & 1) == 0)
        {
          v14 = v15;
        }

        if (v14 != -1)
        {
          goto LABEL_26;
        }
      }

      if (v13 <= v12)
      {
        _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)", v12);
        v13 = *(a1 + 1068);
      }

      else
      {
        v16 = *(*(a1 + 1072) + 8 * v12 + 4);
        v17 = bswap32(v16);
        if ((*(a1 + 1052) & 1) == 0)
        {
          v16 = v17;
        }

        if (v16 == -1)
        {
          BOMStorageFreeBlock(v11, v12);
          goto LABEL_39;
        }
      }

LABEL_26:
      if (v13 <= v12)
      {
        _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)", v12);
        v20 = 0;
      }

      else
      {
        v18 = *(*(a1 + 1072) + 8 * v12 + 4);
        v19 = bswap32(v18);
        if (*(a1 + 1052))
        {
          v20 = v18;
        }

        else
        {
          v20 = v19;
        }
      }

      v21 = malloc_type_malloc(v20, 0x2D8649F0uLL);
      if (BOMStorageCopyFromBlock(a1, v12, v21) || (*(a1 + 1068) <= v12 ? (_CUILog(4, "CoreUI: bid %d >= blockTableCount %d", "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)", v12), v24 = 0) : (v22 = *(*(a1 + 1072) + 8 * v12 + 4), v23 = bswap32(v22), (*(a1 + 1052) & 1) != 0) ? (v24 = v22) : (v24 = v23), BOMStorageCopyToBlock(v11, v12, v21, v24)))
      {
        _CUILog(4, "%s: unable to copy block %d", "int BOMStorageCompact(BOMStorage)", v12);
        free(v21);
        goto LABEL_56;
      }

      free(v21);
LABEL_39:
      v12 = (v12 + 1);
    }

    while (v12 <= *(a1 + 1056));
  }

  if (*(a1 + 1096))
  {
    v25 = *(a1 + 1100);
    *(v11 + 1100) = v25;
    if (v25)
    {
      v26 = (*(*(v11 + 1088) + 48))();
      if (!v26)
      {
        v26 = (*(v11 + 1032) + 15) & 0xFFFFFFF0;
      }
    }

    else
    {
      v26 = 0;
    }

    *(v11 + 1096) = v26;
    _ExpandMapAddress(v11, v26 + v25);
    memmove((*(v11 + 1040) + *(v11 + 1096)), (*(a1 + 1040) + *(a1 + 1096)), v25);
    _AdjustFileSize(v11, v26, v25);
    if (*(v11 + 1028) != -1)
    {
      _AddToWriteCache(v11, v26, v25);
    }

    *(v11 + 1052) |= 0x10u;
  }

  BOMStorageCommit(v11);
  v27 = malloc_type_malloc(0x470uLL, 0x10A0040835A29DFuLL);
  if (!v27)
  {
    BOMStorageFree(v11);
    v34 = __error();
    strerror(*v34);
    _CUILog(4, "%s: malloc: %s");
LABEL_56:
    unlink(__s);
    return 1;
  }

  v28 = v27;
  memcpy(v27, a1, 0x470uLL);
  BOMStorageFree(v28);
  if ((*(v2 + 88))(*(v2 + 8), __s, v46))
  {
    v29 = __error();
    v30 = strerror(*v29);
    _CUILog(4, "%s: rename: '%s' '%s' failed %s", "int BOMStorageCompact(BOMStorage)", __s, v46, v30);
    BOMStorageFree(v11);
    v31 = 1;
    v32 = BOMStorageOpenWithSys(v46, 1, v2);
    if (v32)
    {
      v33 = v32;
      memcpy(a1, v32, 0x470uLL);
      free(v33);
    }
  }

  else
  {
    if (v3 != -1)
    {
      (*(v2 + 112))(*(v2 + 8), *(v11 + 1028), WORD2(v36));
      (*(v2 + 120))(*(v2 + 8), *(v11 + 1028), v37, DWORD1(v37));
    }

    memcpy(a1, v11, 0x470uLL);
    __strlcpy_chk();
    free(v11);
    return 0;
  }

  return v31;
}

uint64_t _BOMStoragePrintDiagnostics(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = MEMORY[0x1E69E9848];
    fprintf(*MEMORY[0x1E69E9848], "   # blocks : %d\n", *(result + 1056));
    fprintf(*v2, "   adm size : %d\n", *(v1 + 1064));
    fprintf(*v2, "   bt size  : %d\n", (8 * *(v1 + 1068)) | 4);
    fprintf(*v2, "   fl size  : %d\n", *(*(v1 + 1088) + 8));
    return fprintf(*v2, "   toc size : %d\n", *(v1 + 1100));
  }

  return result;
}

uint64_t BOMStorageDump(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  v3 = *(a1 + 1096);
  if (!v3)
  {
    return 1;
  }

  v5 = *(a1 + 1100);
  if (!v5)
  {
    return 1;
  }

  v6 = BOMStreamWithAddress(*(a1 + 1040) + v3, v5, 0);
  if (!v6)
  {
    return 2;
  }

  v7 = v6;
  UInt32 = BOMStreamReadUInt32(v6);
  v9 = "read/write";
  v10 = *(a1 + 1052);
  if ((v10 & 1) == 0)
  {
    v9 = "readonly";
  }

  if ((~v10 & 0x11) == 0)
  {
    v9 = "read/write [dirty]";
  }

  v11 = MEMORY[0x1E69E9858];
  fprintf(*MEMORY[0x1E69E9858], "Storage: open %s (%u blocks)\n", v9, *(a1 + 1056));
  fprintf(*v11, "    ToC: %u entries (%u bytes)\n", UInt32, *(a1 + 1100));
  if (!UInt32)
  {
    v26 = 0;
    goto LABEL_65;
  }

  v28 = 0;
  do
  {
    v12 = BOMStreamReadUInt32(v7);
    UInt8 = BOMStreamReadUInt8(v7);
    BOMStreamReadBuffer(v7, &__dst, UInt8);
    *(&__dst + UInt8) = 0;
    BOMStorageSizeOfBlock(a1, v12);
    v14 = *v11;
    if (a2)
    {
      fprintf(v14, "    Bid: 0x%08x (%u) '%s' (%lu bytes)");
    }

    else
    {
      fprintf(v14, "    Bid: '%s' (%lu bytes)");
    }

    if (__dst == 0x6F666E496D6F42 || (__dst == 1752457552 ? (v15 = WORD2(__dst) == 115) : (v15 = 0), v15 || __dst == 0x7865646E494C48 || (__dst == 1684949334 ? (v16 = *(&__dst + 3) == 7890276) : (v16 = 0), v16 || (__dst == 1702521171 ? (v17 = *(&__dst + 3) == 3421797) : (v17 = 0), v17))))
    {
      fwrite(" [BOM]\n", 7uLL, 1uLL, *v11);
    }

    else
    {
      if (__dst == 0x547463656A6F7250 && *(&__dst + 1) == 0x656C6261546761)
      {
        fwrite(" [Metabom]\n", 0xBuLL, 1uLL, *v11);
        v28 |= 0x10u;
        v23 = a2 | 0x210000;
        v24 = a1;
        p_dst = "ProjectTagTable";
      }

      else if (__dst == 0x546567616B636150 && *(&__dst + 1) == 0x656C6261546761)
      {
        fwrite(" [Metabom]\n", 0xBuLL, 1uLL, *v11);
        v28 |= 0x20u;
        v23 = a2 | 0x210000;
        v24 = a1;
        p_dst = "PackageTagTable";
      }

      else if (__dst == 0x5467615468746150 && *(&__dst + 5) == 0x656C6261546761)
      {
        fwrite(" [Metabom]\n", 0xBuLL, 1uLL, *v11);
        v28 |= 0x40u;
        v23 = a2 | 0x210000;
        v24 = a1;
        p_dst = "PathTagTable";
      }

      else if (__dst == 0x547463656A6F7250 && *(&__dst + 1) == 0x657254687461506FLL && v30 == 101)
      {
        fwrite(" [Metabom]\n", 0xBuLL, 1uLL, *v11);
        v28 |= 0x80u;
        v23 = a2 | 0x1310000;
        v24 = a1;
        p_dst = "ProjectToPathTree";
      }

      else
      {
        if ((v28 & 0x20) == 0)
        {
          fputc(10, *v11);
          goto LABEL_50;
        }

        fwrite(" [Package]\n", 0xBuLL, 1uLL, *v11);
        p_dst = &__dst;
        v23 = a2 | 0x230000;
        v24 = a1;
      }

      BOMStorageDumpTree(v24, p_dst, v23);
    }

LABEL_50:
    --UInt32;
  }

  while (UInt32);
  v26 = 0;
  if ((v28 & 0xF0) != 0 && (v28 & 0xF0) != 0xF0)
  {
    fprintf(*MEMORY[0x1E69E9848], "WARNING: file appears to be a corrupt Metabom! (found %04x expected %04x or %04x)\n", v28 & 0xF0, 240, 0);
    v26 = 3;
  }

LABEL_65:
  BOMStreamFree(v7);
  return v26;
}

uint64_t BOMStorageDumpBlock(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a1)
  {
    if (*(a1 + 1096))
    {
      if (*(a1 + 1100))
      {
        v4 = a3;
        v6 = _tocGet(a1, a2);
        if (v6)
        {
          v7 = v6;
          v8 = BOMStorageSizeOfBlock(a1, v6);
          v9 = BOMStorageReadFromBlock(a1, v7);
          fprintf(*MEMORY[0x1E69E9858], "        %s ", a2);
          BOMValueDump(v9, v8, "        ", v4);
        }
      }
    }
  }

  return 1;
}

_DWORD *_newFreeListEntry(int a1, int a2)
{
  v4 = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = 0;
    v4[2] = a1;
    v4[3] = a2;
  }

  else
  {
    v6 = __error();
    v7 = strerror(*v6);
    _CUILog(4, "%s: malloc: %s", "FreeListEntry _newFreeListEntry(unsigned int, unsigned int)", v7);
  }

  return v5;
}

uint64_t (*_WriteAddress(uint64_t a1, unsigned int a2, unsigned int a3))(void *)
{
  v3 = BOMStreamWithFile(*(a1 + 1028), a2, a3, 1, (*(a1 + 1040) + a2));
  if (v3)
  {
    v4 = v3;
    BOMStreamFlush(v3);

    return BOMStreamFree(v4);
  }

  else
  {
    v6 = *__error();

    return _BOMExceptionHandlerCall("Unable to create write stream.", 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 2209, v6);
  }
}

uint64_t BomSys_init(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = malloc_type_malloc(0x80uLL, 0x800408754F03FuLL);
  v5 = *&off_1F37DE7F8;
  v4[4] = xmmword_1F37DE7E8;
  v4[5] = v5;
  v6 = *&off_1F37DE818;
  v4[6] = xmmword_1F37DE808;
  v4[7] = v6;
  v7 = *&off_1F37DE7B8;
  *v4 = gDefaultSys;
  v4[1] = v7;
  v8 = *&off_1F37DE7D8;
  v4[2] = xmmword_1F37DE7C8;
  v4[3] = v8;
  *(v4 + 1) = a2;
  *a1 = v4;
  __CFSetLastAllocationEventName();
  return 0;
}

void BomSys_free(void *a1)
{
  if (a1 != &gDefaultNOMMAPSys && a1 != 0 && a1 != &gDefaultSys)
  {
    free(a1);
  }
}

void BomSys_set_open(__int128 *a1, uint64_t a2)
{
  v3 = a1 == &gDefaultNOMMAPSys || a1 == 0 || a1 == &gDefaultSys;
  if (v3 || *a1)
  {
    _CUILog(4, "ignoring call to alter shared Sys %s", "void BomSys_set_open(BomSys *, BomSys_open_call)");
  }

  else if (a2)
  {
    *(a1 + 2) = a2;
  }

  else
  {
    *(a1 + 2) = BomSys_open;
  }
}

void BomSys_set_close(__int128 *a1, uint64_t a2)
{
  v3 = a1 == &gDefaultNOMMAPSys || a1 == 0 || a1 == &gDefaultSys;
  if (v3 || *a1)
  {
    _CUILog(4, "%s ignoring call to alter shared Sys", "void BomSys_set_close(BomSys *, BomSys_close_call)");
  }

  else if (a2)
  {
    *(a1 + 3) = a2;
  }

  else
  {
    *(a1 + 3) = BomSys_close;
  }
}

void BomSys_set_fcntl(__int128 *a1, uint64_t a2)
{
  v3 = a1 == &gDefaultNOMMAPSys || a1 == 0 || a1 == &gDefaultSys;
  if (v3 || *a1)
  {
    _CUILog(4, "%s ignoring call to alter shared Sys", "void BomSys_set_fcntl(BomSys *, BomSys_fcntl_call)");
  }

  else if (a2)
  {
    *(a1 + 4) = a2;
  }

  else
  {
    *(a1 + 4) = BomSys_fcntl;
  }
}

void BomSys_set_read(__int128 *a1, uint64_t a2)
{
  v3 = a1 == &gDefaultNOMMAPSys || a1 == 0 || a1 == &gDefaultSys;
  if (v3 || *a1)
  {
    _CUILog(4, "%s ignoring call to alter shared Sys", "void BomSys_set_read(BomSys *, BomSys_read_call)");
  }

  else if (a2)
  {
    *(a1 + 5) = a2;
  }

  else
  {
    *(a1 + 5) = BomSys_read;
  }
}

void BomSys_set_write(__int128 *a1, uint64_t a2)
{
  v3 = a1 == &gDefaultNOMMAPSys || a1 == 0 || a1 == &gDefaultSys;
  if (v3 || *a1)
  {
    _CUILog(4, "%s ignoring call to alter shared Sys", "void BomSys_set_write(BomSys *, BomSys_write_call)");
  }

  else if (a2)
  {
    *(a1 + 6) = a2;
  }

  else
  {
    *(a1 + 6) = BomSys_write;
  }
}

void BomSys_set_lseek(__int128 *a1, uint64_t a2)
{
  v3 = a1 == &gDefaultNOMMAPSys || a1 == 0 || a1 == &gDefaultSys;
  if (v3 || *a1)
  {
    _CUILog(4, "%s ignoring call to alter shared Sys", "void BomSys_set_lseek(BomSys *, BomSys_lseek_call)");
  }

  else if (a2)
  {
    *(a1 + 7) = a2;
  }

  else
  {
    *(a1 + 7) = BomSys_lseek;
  }
}

void BomSys_set_fsync(__int128 *a1, uint64_t a2)
{
  v3 = a1 == &gDefaultNOMMAPSys || a1 == 0 || a1 == &gDefaultSys;
  if (v3 || *a1)
  {
    _CUILog(4, "%s ignoring call to alter shared Sys", "void BomSys_set_fsync(BomSys *, BomSys_fsync_call)");
  }

  else if (a2)
  {
    *(a1 + 8) = a2;
  }

  else
  {
    *(a1 + 8) = BomSys_fsync;
  }
}

void BomSys_set_fstat(__int128 *a1, uint64_t a2)
{
  v3 = a1 == &gDefaultNOMMAPSys || a1 == 0 || a1 == &gDefaultSys;
  if (v3 || *a1)
  {
    _CUILog(4, "%s ignoring call to alter shared Sys", "void BomSys_set_fstat(BomSys *, BomSys_fstat_call)");
  }

  else if (a2)
  {
    *(a1 + 9) = a2;
  }

  else
  {
    *(a1 + 9) = BomSys_fstat;
  }
}

void BomSys_set_fstatfs(__int128 *a1, uint64_t a2)
{
  v3 = a1 == &gDefaultNOMMAPSys || a1 == 0 || a1 == &gDefaultSys;
  if (v3 || *a1)
  {
    _CUILog(4, "%s ignoring call to alter shared Sys", "void BomSys_set_fstatfs(BomSys *, BomSys_fstatfs_call)");
  }

  else if (a2)
  {
    *(a1 + 10) = a2;
  }

  else
  {
    *(a1 + 10) = BomSys_fstatfs;
  }
}

void BomSys_set_rename(__int128 *a1, uint64_t a2)
{
  v3 = a1 == &gDefaultNOMMAPSys || a1 == 0 || a1 == &gDefaultSys;
  if (v3 || *a1)
  {
    _CUILog(4, "%s ignoring call to alter shared Sys", "void BomSys_set_rename(BomSys *, BomSys_rename_call)");
  }

  else if (a2)
  {
    *(a1 + 11) = a2;
  }

  else
  {
    *(a1 + 11) = BomSys_rename;
  }
}

void BomSys_set_mmap(__int128 *a1, uint64_t a2)
{
  v3 = a1 == &gDefaultNOMMAPSys || a1 == 0 || a1 == &gDefaultSys;
  if (v3 || *a1)
  {
    _CUILog(4, "%s ignoring call to alter shared Sys", "void BomSys_set_mmap(BomSys *, BomSys_mmap_call)");
  }

  else if (a2)
  {
    *(a1 + 12) = a2;
  }

  else
  {
    *(a1 + 12) = BomSys_mmap;
  }
}

void BomSys_set_munmap(__int128 *a1, uint64_t a2)
{
  v3 = a1 == &gDefaultNOMMAPSys || a1 == 0 || a1 == &gDefaultSys;
  if (v3 || *a1)
  {
    _CUILog(4, "%s ignoring call to alter shared Sys", "void BomSys_set_munmap(BomSys *, BomSys_munmap_call)");
  }

  else if (a2)
  {
    *(a1 + 13) = a2;
  }

  else
  {
    *(a1 + 13) = BomSys_munmap;
  }
}

void **BOMStackNew()
{
  v0 = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040468F112EuLL);
  if (v0)
  {
    __CFSetLastAllocationEventName();
    v0[1] = 1024;
    v1 = malloc_type_calloc(1uLL, 0x2000uLL, 0x80040B8603338uLL);
    *v0 = v1;
    if (!v1)
    {
      BOMStackFree(v0);
      v3 = BOMExceptionHandlerMessage("Allocating BOMStack failed");
      v4 = __error();
      _BOMFatalException(v3, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Common/BOMStack.c", 40, *v4);
    }
  }

  return v0;
}

void BOMStackFree(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

uint64_t *BOMStackPop(uint64_t *result)
{
  if (result)
  {
    v1 = *result;
    if (*result && (v2 = result[2]) != 0)
    {
      v3 = v2 - 1;
      result[2] = v3;
      result = *(v1 + 8 * v3);
      *(v1 + 8 * v3) = 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *BOMStackPeek(void *result)
{
  if (result)
  {
    if (*result && (v1 = result[2]) != 0)
    {
      return *(*result + 8 * v1 - 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void BOMStackPush(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *a1;
    if (*a1)
    {
      v5 = *(a1 + 8);
      if (*(a1 + 16) + 1 >= v5)
      {
        if (v5 == 0xFFFFFFF)
        {
          v10 = BOMExceptionHandlerMessage("BOMStack is full can't grow anymore");
          v11 = __error();
          _BOMFatalException(v10, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Common/BOMStack.c", 105, *v11);
        }

        v6 = 2 * v5;
        if (2 * v5 >= 0xFFFFFFF)
        {
          v6 = 0xFFFFFFFLL;
        }

        v7 = 8 * v6;
        *(a1 + 8) = v6;
        v8 = reallocf(v3, 8 * v6);
        *a1 = v8;
        if (!v8)
        {
          v12 = BOMExceptionHandlerMessage("BOMStack got blown");
          v13 = __error();
          _BOMFatalException(v12, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Common/BOMStack.c", 124, *v13);
        }

        v3 = v8;
        if (v7 > 8 * v5)
        {
          bzero(&v8[8 * v5], v7 - 8 * v5);
        }
      }

      v9 = *(a1 + 16);
      *(a1 + 16) = v9 + 1;
      *(v3 + v9) = a2;
    }
  }
}

uint64_t BOMStackCount(uint64_t result)
{
  if (result)
  {
    if (*result)
    {
      return *(result + 16);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void BOMExceptionHandlerSet(void *a1)
{
  if (__BOMExceptionHandlerKey___onceHandler != -1)
  {
    BOMExceptionHandlerSet_cold_1();
  }

  if (pthread_setspecific(__BOMExceptionHandlerKey___key, a1))
  {

    _CUILog(4, "BOMExceptionHandlerSet couldn't pthread_setspecific");
  }
}

void __defaultHandler(uint64_t a1)
{
  if (*(a1 + 24))
  {
    _CUILog(4, "[%s:%u] %s");
  }

  else
  {
    _CUILog(4, "%s");
  }

  if (*(a1 + 8))
  {
    abort();
  }
}

void _BOMFatalException(void *a1, const char *a2, int a3, int a4)
{
  v7 = a1;
  v8 = __BOMGlobalExceptionHandler(a1);
  if (!v7)
  {
    v7 = __BOMExceptionMessageString();
  }

  v11 = v7;
  v12 = 0;
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = __defaultHandler;
  }

  LOBYTE(v12) = 1;
  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = "";
  }

  v13 = v10;
  v14 = a3;
  v15 = a4;
  v9(&v11);
  abort();
}

void *__BOMGlobalExceptionHandler(uint64_t a1)
{
  if (__BOMExceptionHandlerKey___onceHandler != -1)
  {
    BOMExceptionHandlerSet_cold_1();
  }

  v2 = __BOMExceptionHandlerKey___key;

  return pthread_getspecific(v2);
}

void *__BOMExceptionMessageString()
{
  if (__BOMExceptionMessageString___onceMessage != -1)
  {
    __BOMExceptionMessageString_cold_1();
  }

  v0 = pthread_getspecific(__BOMExceptionMessageString___key);
  if (!v0)
  {
    v0 = malloc_type_calloc(0x1000uLL, 1uLL, 0x100004077774924uLL);
    __CFSetLastAllocationEventName();
    if (pthread_setspecific(__BOMExceptionMessageString___key, v0))
    {
      _CUILog(4, "__BOMExceptionMessageString couldn't pthread_setspecific");
    }
  }

  return v0;
}

uint64_t (*_BOMExceptionHandlerCall(void *a1, unsigned __int8 a2, const char *a3, int a4, int a5))(void *)
{
  v9 = a1;
  result = __BOMGlobalExceptionHandler(a1);
  if (result)
  {
    v11 = result;
    if (!v9)
    {
      v9 = __BOMExceptionMessageString();
    }

    v13[0] = v9;
    v12 = "";
    v13[1] = a2;
    if (a3)
    {
      v12 = a3;
    }

    v13[2] = v12;
    v14 = a4;
    v15 = a5;
    return v11(v13);
  }

  return result;
}

char *BOMExceptionHandlerMessage(const char *a1, ...)
{
  va_start(va, a1);
  v2 = __BOMExceptionMessageString();
  vsnprintf(v2, 0x1000uLL, a1, va);
  return v2;
}

void *_BOMFreeListAllocate()
{
  v0 = malloc_type_malloc(0x48uLL, 0x1080040D23F5C74uLL);
  if (v0)
  {
    __CFSetLastAllocationEventName();
    v0[2] = _dense_initialize;
    v0[3] = _dense_serialize;
    v0[4] = _dense_deallocate;
    v0[7] = _dense_clear;
    v0[5] = _dense_addFreeRange;
    v0[6] = _dense_allocateRange;
    v0[8] = _dense_print;
    v1 = malloc_type_malloc(0x18uLL, 0x10A0040DF6760FDuLL);
    if (v1)
    {
      v2 = v1;
      v3 = malloc_type_calloc(0x20uLL, 8uLL, 0x2004093837F09uLL);
      *v2 = v3;
      if (v3)
      {
        v2[1] = 0;
        *(v2 + 4) = 32;
        *v0 = v2;
        *(v0 + 2) = 0;
        return v0;
      }

      free(v0);
      v4 = v2;
    }

    else
    {
      v4 = v0;
    }

    free(v4);
    return 0;
  }

  return v0;
}

uint64_t _dense_initialize(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  if ((a3 & 7) == 0 && (a3 >> 3) >= 1)
  {
    v5 = result;
    v6 = (a3 >> 3) & 0x7FFFFFFF;
    v7 = (a2 + 4);
    do
    {
      v8 = *(v7 - 1);
      v9 = bswap32(v8);
      v10 = bswap32(*v7);
      if (a4)
      {
        v11 = v9;
      }

      else
      {
        v11 = v8;
      }

      if (a4)
      {
        v12 = v10;
      }

      else
      {
        v12 = *v7;
      }

      result = (*(v5 + 40))(v5, v11, v12);
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  return result;
}

char *_dense_serialize(uint64_t **a1, int a2, size_t *a3)
{
  v4 = *a1;
  v5 = 8 * *(a1 + 2);
  *a3 = v5;
  result = malloc_type_malloc(v5, 0x8ACBCD47uLL);
  if (result)
  {
    v7 = *(v4 + 4);
    if (v7 < 1)
    {
      v14 = 0;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = *v4;
      v11 = vcltz_s32(vshl_n_s32(vdup_n_s32(a2 == 0), 0x1FuLL));
      do
      {
        v12 = *(v10 + 8 * v8);
        if (v12)
        {
          v13 = &result[8 * v9];
          do
          {
            *v13++ = vbsl_s8(v11, v12[1], vrev32_s8(v12[1]));
            v12 = *v12;
            ++v9;
          }

          while (v12);
          v7 = *(v4 + 4);
        }

        ++v8;
      }

      while (v8 < v7);
      v14 = v9;
    }

    v15 = v4[1];
    if (v15)
    {
      v16 = &result[8 * v14];
      v17 = vcltz_s32(vshl_n_s32(vdup_n_s32(a2 == 0), 0x1FuLL));
      do
      {
        *v16++ = vbsl_s8(v17, v15[1], vrev32_s8(v15[1]));
        v15 = *v15;
      }

      while (v15);
    }
  }

  return result;
}

void _dense_deallocate(uint64_t a1)
{
  v2 = *a1;
  (*(a1 + 56))();
  free(*v2);
  free(v2);
  *a1 = 0;
}

void *_dense_clear(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*v1 + 8 * i);
      *(*v1 + 8 * i) = 0;
      if (v4)
      {
        do
        {
          v5 = *v4;
          free(v4);
          v4 = v5;
        }

        while (v5);
        v2 = *(v1 + 16);
      }
    }
  }

  result = *(v1 + 8);
  *(v1 + 8) = 0;
  if (result)
  {
    do
    {
      v7 = *result;
      free(result);
      result = v7;
    }

    while (v7);
  }

  return result;
}

_DWORD *_dense_addFreeRange(_DWORD *result, int a2, unint64_t a3)
{
  if (a3)
  {
    v5 = result;
    v6 = *result;
    if (a3 < 0x10000)
    {
      v8 = *(v6 + 16);
      if (v8 <= a3)
      {
        v9 = a3 + 1;
        v10 = (8 * (a3 + 1));
        v11 = *v6;
        if (v8 <= a3)
        {
          v12 = malloc_type_realloc(v11, v10, 0x1F9D68D3uLL);
          *v6 = v12;
          bzero(&v12[8 * *(v6 + 16)], 8 * (v9 - v8));
        }

        else
        {
          *v6 = malloc_type_realloc(v11, v10, 0x2AEB1F5BuLL);
        }

        *(v6 + 16) = v9;
        v6 = *v5;
      }

      v13 = *(*v6 + 8 * a3);
      result = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
      result[2] = a2;
      result[3] = a3;
      *result = v13;
      *(*v6 + 8 * a3) = result;
    }

    else
    {
      v7 = *(v6 + 8);
      result = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
      result[2] = a2;
      result[3] = a3;
      *result = v7;
      *(v6 + 8) = result;
    }

    ++v5[2];
  }

  return result;
}

uint64_t _dense_allocateRange(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (v5 > a2)
  {
    v6 = *(*v4 + 8 * a2);
    if (v6)
    {
      v7 = v6[2];
      v8 = *v6;
      free(v6);
      *(*v4 + 8 * a2) = v8;
      --*(a1 + 8);
      return v7;
    }
  }

  LODWORD(v9) = 0;
  v10 = a2 + 1;
  while (1)
  {
    v11 = v10 + v9;
    if (v10 + v9 >= v5)
    {
      break;
    }

    v12 = *(*v4 + 8 * v11);
    v9 = (v9 + 1);
    if (v12)
    {
      v7 = v12[2];
      v13 = *v12;
      free(v12);
      *(*v4 + 8 * v11) = v13;
      goto LABEL_19;
    }
  }

  v16 = v4[1];
  v15 = v4 + 1;
  v14 = v16;
  if (!v16)
  {
    return 0;
  }

  v17 = *(v14 + 3);
  if (v17 < a2)
  {
    while (1)
    {
      v18 = v14;
      v14 = *v14;
      if (!v14)
      {
        return 0;
      }

      v17 = *(v14 + 3);
      if (v17 >= a2)
      {
        goto LABEL_15;
      }
    }
  }

  v18 = 0;
LABEL_15:
  v19 = *v14;
  v7 = *(v14 + 2);
  v9 = (v17 - a2);
  free(v14);
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v15;
  }

  *v20 = v19;
LABEL_19:
  --*(a1 + 8);
  (*(a1 + 40))(a1, (v7 + a2), v9);
  return v7;
}

uint64_t _dense_print(uint64_t result, FILE *__stream, int a3)
{
  v5 = *result;
  v6 = *(*result + 16);
  if (v6 >= 1)
  {
    for (i = 0; i < v6; ++i)
    {
      v8 = *(*v5 + 8 * i);
      if (v8)
      {
        v9 = 0;
        do
        {
          ++v9;
          v8 = *v8;
        }

        while (v8);
        if (v9 == 1)
        {
          v10 = "y";
        }

        else
        {
          v10 = "ies";
        }

        result = fprintf(__stream, "Size %d: %d entr%s\n", i, v9, v10);
        v6 = *(v5 + 16);
      }
    }
  }

  v11 = *(v5 + 8);
  if (v11)
  {
    if (a3)
    {
      fwrite("Large sizes:\n\t", 0xEuLL, 1uLL, __stream);
    }

    v12 = 1;
    if (!a3)
    {
      goto LABEL_17;
    }

    while (1)
    {
      fprintf(__stream, "%d ", *(v11 + 3));
      v11 = *v11;
      if (!v11)
      {
        break;
      }

      while (1)
      {
        ++v12;
        if (a3)
        {
          break;
        }

LABEL_17:
        v11 = *v11;
        if (!v11)
        {
          v13 = "ies";
          if (v12 == 1)
          {
            v13 = "y";
          }

          return fprintf(__stream, "Large sizes: %d entr%s\n", v12, v13);
        }
      }
    }

    return fputc(10, __stream);
  }

  return result;
}

_DWORD *BOMTreeNewWithName(uint64_t a1, char *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = BOMStorageNewNamedBlock(a1, a2);
  if (!v4)
  {
    return 0;
  }

  return _BOMTreeNew(a1, a2, v4, 0, 0);
}

_DWORD *_BOMTreeNew(uint64_t a1, char *a2, uint64_t a3, int a4, char a5)
{
  result = _newBOMTree(a1, a2);
  if (result)
  {
    v11 = result;
    result[4] = a3;
    if ((a4 - 1) >= 0x2F)
    {
      v12 = a4;
    }

    else
    {
      v12 = 48;
    }

    if (!v12)
    {
      v12 = 4096;
    }

    result[76] = v12;
    v13 = v12 - 16;
    result[77] = v13 >> 3;
    result[78] = (v13 >> 3) + 1;
    result[79] = v13 >> 4;
    result[89] = result[89] & 0xFFFFFFFB | (4 * (a5 & 1));
    v14 = _NewPage(result, 0);
    *(v11 + 3) = v14;
    *(v14 + 2) |= 1u;
    v11[89] |= 1u;
    BOMTreeFree(v11);

    return _BOMTreeOpen(a1, a2, a3, 1);
  }

  return result;
}

_DWORD *BOMTreeNewWithOptions(uint64_t a1, uint64_t a2, char *a3, int a4, char a5)
{
  if (!a1)
  {
    return 0;
  }

  v8 = a2;
  if (!a2 && !a3)
  {
    return 0;
  }

  if (!a2)
  {
    v8 = BOMStorageNewNamedBlock(a1, a3);
    if (!v8)
    {
      return 0;
    }
  }

  return _BOMTreeNew(a1, a3, v8, a4, a5);
}

uint64_t BOMTreeOpenWithName(uint64_t a1, char *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = a3;
  NamedBlock = BOMStorageGetNamedBlock(a1, a2);
  if (!NamedBlock)
  {
    return 0;
  }

  return _BOMTreeOpen(a1, a2, NamedBlock, v4);
}

uint64_t _BOMTreeOpen(uint64_t a1, char *a2, uint64_t a3, char a4)
{
  v5 = a3;
  v8 = _newBOMTree(a1, a2);
  v9 = v8;
  if (!v8)
  {
    return v9;
  }

  *v8 = a1;
  v8[4] = v5;
  v10 = BOMStorageSizeOfBlock(a1, v5);
  v11 = *v9;
  if ((*(v9 + 356) & 0x40) != 0)
  {
    v13 = BOMStorageReadFromBlock(v11, v5);
    if (v13)
    {
      v14 = v13;
      v12 = BOMStreamWithAddress(v13, v10, 0);
      if (!BOMStorageInRam(*v9))
      {
        madvise(v14, v10, 3);
        if (!v12)
        {
          goto LABEL_25;
        }

        goto LABEL_8;
      }

      if (v12)
      {
        goto LABEL_8;
      }
    }

LABEL_25:
    BOMTreeFree(v9);
    return 0;
  }

  v12 = BOMStreamWithBlockID(v11, v5, v10, 0);
  if (!v12)
  {
    goto LABEL_25;
  }

LABEL_8:
  if (BOMStreamReadUInt32(v12) != 1953654117)
  {
    if (a2)
    {
      _CUILog(4, "%s: '%s' is not a BOMTree");
    }

    else
    {
      _CUILog(4, "%s: '<Tree %d>' is not a BOMTree");
    }

    goto LABEL_24;
  }

  if (BOMStreamReadUInt32(v12) != 1)
  {
    if (a2)
    {
      _CUILog(4, "%s: BOMTree '%s' has an unknown version: 0x%X");
    }

    else
    {
      _CUILog(4, "%s: BOMTree '<Tree %d>' has an unknown version: 0x%X");
    }

LABEL_24:
    BOMStreamFree(v12);
    goto LABEL_25;
  }

  UInt32 = BOMStreamReadUInt32(v12);
  *(v9 + 304) = BOMStreamReadUInt32(v12);
  *(v9 + 20) = BOMStreamReadUInt32(v12);
  *(v9 + 356) = *(v9 + 356) & 0xFFFFFFFB | (4 * (BOMStreamReadUInt8(v12) & 1));
  if (!BOMStreamAtEOF(v12))
  {
    *(v9 + 348) = BOMStreamReadUInt32(v12);
    if (!BOMStreamAtEOF(v12))
    {
      *(v9 + 352) = BOMStreamReadUInt32(v12);
    }
  }

  BOMStreamFree(v12);
  v16 = *(v9 + 304) - 16;
  *(v9 + 308) = v16 >> 3;
  *(v9 + 312) = (v16 >> 3) + 1;
  *(v9 + 316) = v16 >> 4;
  v17 = _NewPage(v9, UInt32);
  *(v9 + 24) = v17;
  if (!v17 || _ReadPage(v9, v17))
  {
    goto LABEL_25;
  }

  *(v9 + 356) = *(v9 + 356) & 0xFFFFFFFD | (2 * (a4 & 1));
  return v9;
}

uint64_t BOMTreeFree(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((*(result + 356) & 1) != 0 && BOMTreeCommit(result))
    {
      return 1;
    }

    else
    {
      v2 = *(v1 + 296);
      if (v2 && CFArrayGetCount(v2))
      {
        _CUILog(4, "%s: BOMTree '%s' still has iterators active", "int BOMTreeFree(BOMTree)", *(v1 + 8));
      }

      for (i = 32; i != 288; i += 8)
      {
        v4 = *(v1 + i);
        if (v4)
        {
          if ((v4[2] & 2) != 0)
          {
            _WritePage(v1, *(v1 + i));
          }

          _FreePage(v1, v4);
          *(v1 + i) = 0;
        }
      }

      _FreePage(v1, *(v1 + 24));
      *(v1 + 24) = 0;
      v5 = *(v1 + 8);
      if (v5 && (*(v1 + 356) & 0x20) != 0)
      {
        free(v5);
        *(v1 + 8) = 0;
      }

      v6 = *(v1 + 296);
      if (v6)
      {
        CFRelease(v6);
        *(v1 + 296) = 0;
      }

      v7 = *(v1 + 336);
      if (v7)
      {
        free(v7);
        *(v1 + 336) = 0;
      }

      v8 = *(v1 + 320);
      if (v8)
      {
        free(v8);
      }

      free(v1);
      return 0;
    }
  }

  return result;
}

uint64_t BOMTreeCommit(uint64_t a1)
{
  if (!a1 || (*(a1 + 356) & 1) == 0)
  {
    return 0;
  }

  for (i = 32; i != 288; i += 8)
  {
    v5 = *(a1 + i);
    if (v5 && (*(v5 + 4) & 2) != 0)
    {
      _WritePage(a1, v5);
    }
  }

  _WritePage(a1, *(a1 + 24));
  v2 = 1;
  v6 = BOMStreamWithBlockID(*a1, *(a1 + 16), 0x1DuLL, 1);
  if (v6)
  {
    v7 = v6;
    BOMStreamWriteUInt32(v6, 0x74726565u);
    BOMStreamWriteUInt32(v7, 1u);
    BOMStreamWriteUInt32(v7, **(a1 + 24));
    BOMStreamWriteUInt32(v7, *(a1 + 304));
    BOMStreamWriteUInt32(v7, *(a1 + 20));
    BOMStreamWriteUInt8(v7, (*(a1 + 356) & 4) != 0);
    if ((*(a1 + 356) & 4) != 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(a1 + 348);
    }

    BOMStreamWriteUInt32(v7, v8);
    BOMStreamWriteUInt32(v7, 0);
    if (!BOMStreamFree(v7))
    {
      v2 = 0;
      *(a1 + 356) &= ~1u;
    }
  }

  return v2;
}

void _FreePage(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = -1;
    *(a2 + 1) = -1;
    *(a2 + 4) = 0;
    if ((*(a1 + 356) & 0x40) == 0)
    {
      free(*(a2 + 3));
    }

    free(a2);
  }
}

uint64_t BOMTreeRemoveAndFree(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    v3 = BOMTreeIteratorNew(result, 0, 0, 0);
    if (v3)
    {
      for (i = v3; !BOMTreeIteratorIsAtEnd(i); BOMTreeIteratorNext(i))
      {
        v5 = BOMTreeIteratorKey(i);
        v6 = BOMTreeIteratorKeySize(i);
        BOMTreeRemoveValue(v1, v5, v6);
      }

      BOMTreeIteratorFree(i);
      BOMStorageFreeBlock(v2, **(v1 + 24));
      _FreePage(v1, *(v1 + 24));
      *(v1 + 24) = 0;
      v7 = *(v1 + 8);
      if (v7)
      {
        BOMStorageFreeNamedBlock(v2, v7);
      }

      else
      {
        BOMStorageFreeBlock(v2, *(v1 + 16));
      }

      v8 = *(v1 + 8);
      if (v8 && (*(v1 + 356) & 0x20) != 0)
      {
        free(v8);
        *(v1 + 8) = 0;
      }

      v9 = *(v1 + 296);
      if (v9)
      {
        CFRelease(v9);
      }

      free(v1);
      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void *BOMTreeIteratorNew(uint64_t a1, void *a2, size_t a3, BOOL *a4)
{
  v8 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A00408C39C337uLL);
  v9 = v8;
  if (!v8)
  {
    return v9;
  }

  *v8 = a1;
  BOMTreeIteratorSet(v8, a2, a3, a4);
  v10 = *(a1 + 296);
  if (!v10)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    *(a1 + 296) = Mutable;
    if (!Mutable)
    {
      v15 = __error();
      _BOMExceptionHandlerCall("Out of memory.", 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMTree.c", 2688, *v15);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v11 = BOMCFArrayMaxRange(v10);
  v13 = v12;
  v17.location = v11;
  v17.length = v13;
  if (!CFArrayContainsValue(*(a1 + 296), v17, v9))
  {
    Mutable = *(a1 + 296);
LABEL_6:
    CFArrayAppendValue(Mutable, v9);
  }

LABEL_8:
  if ((*(*v9 + 356) & 4) == 0)
  {
    v9[3] = malloc_type_malloc(v9[4], 0xE2286860uLL);
  }

  v9[5] = malloc_type_malloc(v9[6], 0x62594550uLL);
  __CFSetLastAllocationEventName();
  return v9;
}

uint64_t BOMTreeIteratorIsAtEnd(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 57);
  if ((v2 & 8) != 0)
  {
    return 1;
  }

  if ((v2 & 1) != 0 || (v3 = *(a1 + 8)) == 0 || *v3 != *(a1 + 16))
  {
    v4 = _revalidateIterator(a1);
    v2 = *(a1 + 57);
    if (!v4)
    {
      v2 |= 8u;
      *(a1 + 57) = v2;
    }
  }

  return (v2 >> 3) & 1;
}

uint64_t *BOMTreeIteratorKey(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    if ((*(result + 57) & 8) != 0)
    {
      return 0;
    }

    if (((*(result + 57) & 1) != 0 || (v2 = result[1]) == 0 || *v2 != *(result + 4)) && !_revalidateIterator(result))
    {
      result = 0;
      *(v1 + 57) |= 8u;
      return result;
    }

    v3 = *v1;
    v4 = *(*v1 + 356);
    if ((v4 & 4) == 0)
    {
      if ((*(v1 + 57) & 2) != 0)
      {
        return v1[3];
      }

      if ((v4 & 0x40) != 0)
      {
        v8 = *(v3 + 348);
        if (v8 >= 1)
        {
LABEL_18:
          v9 = v1[4];
          if (v8 > v9)
          {
            v10 = v1[3];
            if (v10)
            {
              free(v10);
              v1[3] = 0;
              v9 = v1[4];
            }

            if (v8 <= 2 * v9)
            {
              v11 = 2 * v9;
            }

            else
            {
              v11 = v8;
            }

            v1[4] = v11;
            v1[3] = malloc_type_malloc(v11, 0xCCA19725uLL);
          }

          v12 = *v1;
          if ((*(*v1 + 356) & 0x40) == 0)
          {
            v13 = *(*(v1[1] + 24) + 8 * *(v1 + 5) + 4);
            goto LABEL_31;
          }

          v14 = *(v12 + 348);
          v15 = v1[1];
          if (v14 < 1)
          {
            v13 = bswap32(*(*(v15 + 24) + 8 * *(v1 + 5) + 4));
LABEL_31:
            if (BOMStorageCopyFromBlock(*v12, v13, v1[3]))
            {
              return 0;
            }

            goto LABEL_34;
          }

          v16 = *(v15 + 32);
          if (v16)
          {
            memcpy(v1[3], (v16 + *(v1 + 5) * v14), v14);
LABEL_34:
            *(v1 + 57) |= 2u;
            return v1[3];
          }

          return 0;
        }

        v5 = bswap32(*(*(v1[1] + 24) + 8 * *(v1 + 5) + 4));
      }

      else
      {
        v5 = *(*(v1[1] + 24) + 8 * *(v1 + 5) + 4);
      }

      v8 = BOMStorageSizeOfBlock(*v3, v5);
      goto LABEL_18;
    }

    v6 = *(*(v1[1] + 24) + 8 * *(v1 + 5) + 4);
    v7 = bswap32(v6);
    if ((v4 & 0x40) != 0)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

uint64_t BOMTreeIteratorKeySize(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((*(result + 57) & 8) != 0)
    {
      return 0;
    }

    if (((*(result + 57) & 1) != 0 || (v2 = *(result + 8)) == 0 || *v2 != *(result + 16)) && !_revalidateIterator(result))
    {
      result = 0;
      *(v1 + 57) |= 8u;
      return result;
    }

    v3 = *v1;
    v4 = *(*v1 + 356);
    if ((v4 & 4) != 0)
    {
      return 0;
    }

    if ((v4 & 0x40) != 0)
    {
      result = *(v3 + 348);
      if (result >= 1)
      {
        return result;
      }

      v5 = bswap32(*(*(*(v1 + 8) + 24) + 8 * *(v1 + 20) + 4));
    }

    else
    {
      v5 = *(*(*(v1 + 8) + 24) + 8 * *(v1 + 20) + 4);
    }

    v6 = *v3;

    return BOMStorageSizeOfBlock(v6, v5);
  }

  return result;
}

uint64_t BOMTreeRemoveValue(uint64_t a1, void *a2, size_t a3)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      v5 = *(a1 + 356);
      if (a3 || (v5 & 4) != 0)
      {
        if ((v5 & 2) != 0)
        {
          v6 = *(a1 + 24);
          result = _findRemove(a1, &v6, 0, 0, 0, 0, a2, a3, 0);
          if (!result)
          {
            --*(a1 + 20);
            *(a1 + 356) |= 1u;
          }
        }

        else
        {
          _CUILog(4, "%s BOMTree '%s' is read-only can't remove value", "int BOMTreeRemoveValue(BOMTree, void *, size_t)", *(a1 + 8));
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t BOMTreeIteratorNext(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((*(result + 57) & 8) == 0)
    {
      if ((*(result + 57) & 1) == 0 && (v2 = *(result + 8)) != 0 && *v2 == *(result + 16) || (result = _revalidateIterator(result), result))
      {
        if (*(v1 + 56))
        {
          v3 = *(v1 + 20) + 1;
          *(v1 + 20) = v3;
          v4 = *(v1 + 8);
          if (v3 >= *(v4 + 16))
          {
            *(v1 + 20) = 0;
            v5 = *(v4 + 8);
            if (!v5 || (*(v1 + 16) = v5, result = _findPage(*v1, v5), (*(v1 + 8) = result) == 0))
            {
              *(v1 + 57) |= 8u;
            }
          }
        }

        else
        {
          *(v1 + 56) = 1;
        }

        v6 = *(v1 + 57) & 0xF9;
      }

      else
      {
        v6 = *(v1 + 57) | 8;
      }

      *(v1 + 57) = v6;
    }
  }

  return result;
}

void BOMTreeIteratorFree(_BYTE *a1)
{
  if (a1)
  {
    v2 = a1[57];
    a1[56] = 0;
    v3 = v2 | 9;
    a1[57] = v3;
    v4 = *(a1 + 3);
    if (v4 && (*(*a1 + 356) & 4) == 0)
    {
      free(v4);
      *(a1 + 3) = 0;
      v3 = a1[57];
    }

    v5 = v3 & 0xFD;
    a1[57] = v5;
    v6 = *(a1 + 5);
    if (v6)
    {
      free(v6);
      *(a1 + 5) = 0;
      v5 = a1[57];
    }

    a1[57] = v5 & 0xFB;
    *(a1 + 4) = -1;
    *(a1 + 1) = 0;
    v7 = *a1;
    v8 = *(*a1 + 296);
    if (v8)
    {
      v9 = BOMCFArrayMaxRange(v8);
      v11 = v10;
      v14.location = v9;
      v14.length = v11;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(v7 + 296), v14, a1);
      if (FirstIndexOfValue != -1)
      {
        CFArrayRemoveValueAtIndex(*(v7 + 296), FirstIndexOfValue);
        if (!CFArrayGetCount(*(v7 + 296)))
        {
          CFRelease(*(v7 + 296));
          *(v7 + 296) = 0;
        }
      }
    }

    free(a1);
  }
}

uint64_t (*_WritePage(uint64_t a1, unsigned int *a2))(void *)
{
  v4 = *(a1 + 304);
  if ((*(a1 + 356) & 4) == 0)
  {
    v5 = *(a1 + 348);
    if (v5 >= 1)
    {
      v4 += v5 * *(a2 + 8);
    }
  }

  result = BOMStreamWithBlockID(*a1, *a2, v4, 1);
  if (result)
  {
    v7 = result;
    BOMStreamWriteUInt16(result, a2[1] & 1);
    BOMStreamWriteUInt16(v7, *(a2 + 8));
    BOMStreamWriteUInt32(v7, a2[2]);
    BOMStreamWriteUInt32(v7, a2[3]);
    if (*(a2 + 8))
    {
      v8 = 0;
      v9 = 0;
      do
      {
        BOMStreamWriteUInt32(v7, *(*(a2 + 3) + v8));
        BOMStreamWriteUInt32(v7, *(*(a2 + 3) + v8 + 4));
        ++v9;
        v10 = *(a2 + 8);
        v8 += 8;
      }

      while (v9 < v10);
    }

    else
    {
      v10 = 0;
    }

    BOMStreamWriteUInt32(v7, *(*(a2 + 3) + 8 * v10));
    if ((*(a1 + 356) & 4) == 0)
    {
      v11 = *(a1 + 348);
      if (v11 >= 1)
      {
        v12 = malloc_type_malloc(v11, 0xED7B97B4uLL);
        if (*(a2 + 8))
        {
          v13 = 0;
          v14 = 4;
          do
          {
            v15 = BOMStorageSizeOfBlock(*a1, *(*(a2 + 3) + v14));
            v16 = *(a1 + 348);
            if (v15 != v16)
            {
              v17 = BOMExceptionHandlerMessage("%s blockSize %d != tree->keySize %d", "_WritePage", v15, v16);
              v18 = __error();
              _BOMFatalException(v17, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMTree.c", 1417, *v18);
            }

            BOMStorageCopyFromBlock(*a1, *(*(a2 + 3) + v14), v12);
            BOMStreamWriteBuffer(v7, v12, *(a1 + 348));
            ++v13;
            v14 += 8;
          }

          while (v13 < *(a2 + 8));
        }

        free(v12);
      }
    }

    result = BOMStreamFree(v7);
    *(a2 + 2) &= ~2u;
  }

  return result;
}

uint64_t BOMTreeStorage(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t BOMTreeSetValue(uint64_t a1, void *a2, size_t a3, const void *a4, size_t a5)
{
  v24 = 0;
  v5 = 1;
  if (a1)
  {
    if (a2)
    {
      v11 = *(a1 + 356);
      if (a3 || (v11 & 4) != 0)
      {
        if ((v11 & 2) == 0)
        {
          _CUILog(4, "%s: BOMTree '%s' is read-only tree can't update values", "int BOMTreeSetValue(BOMTree, void *, size_t, void *, size_t)", *(a1 + 8));
          return v5;
        }

        v12 = BOMStackNew();
        if (!_findPagesForKey(a1, v12, a2, a3))
        {
          BOMStackFree(v12);
          return v5;
        }

        if (v12)
        {
          if ((*(a1 + 356) & 4) != 0)
          {
            v17 = a2;
          }

          else
          {
            v13 = BOMStackPeek(v12);
            if (!v13)
            {
              v19 = 0;
              goto LABEL_27;
            }

            v14 = v13;
            IndexForKey = _findIndexForKey(a1, v13, a2, a3, &v24);
            if (v24)
            {
              v16 = (v14[3] + 8 * IndexForKey);
              v18 = *v16;
              v17 = v16[1];
              if (v18)
              {
LABEL_17:
                if (!BOMStorageCopyToBlock(*a1, v18, a4, a5) && !_PageSetValue(a1, v12, a2, a3, v17, v18))
                {
                  if (!v24)
                  {
                    ++*(a1 + 20);
                  }

                  v5 = 0;
                  *(a1 + 356) |= 1u;
                  v19 = 1;
LABEL_27:
                  while (!BOMStackIsEmpty(v12))
                  {
                    v21 = BOMStackPop(v12);
                    *(v21 + 2) &= ~8u;
                  }

                  BOMStackFree(v12);
                  if (v19)
                  {
                    if ((*(a1 + 356) & 4) == 0)
                    {
                      v22 = *(a1 + 348);
                      if (v22 != -1)
                      {
                        if (!v22)
                        {
                          v5 = 0;
                          *(a1 + 348) = a3;
                          return v5;
                        }

                        if (v22 != a3)
                        {
                          v5 = 0;
                          *(a1 + 348) = -1;
                          return v5;
                        }
                      }
                    }

                    return 0;
                  }

                  return v5;
                }

LABEL_25:
                v19 = 0;
                v5 = 1;
                goto LABEL_27;
              }
            }

            else
            {
              v20 = BOMStorageNewBlock(*a1);
              if (!v20)
              {
                goto LABEL_25;
              }

              v17 = v20;
              if (BOMStorageCopyToBlock(*a1, v20, a2, a3))
              {
                goto LABEL_25;
              }
            }
          }

          v18 = BOMStorageNewBlock(*a1);
          if (!v18)
          {
            goto LABEL_25;
          }

          goto LABEL_17;
        }
      }
    }
  }

  return v5;
}

uint64_t _findIndexForKey(uint64_t a1, uint64_t a2, void *__s1, size_t a4, BOOL *a5)
{
  if (*(a2 + 16))
  {
    v9 = 0;
    v10 = *(a2 + 16) - 1;
    while (1)
    {
      v11 = v9 + ((v10 - v9) >> 1);
      v12 = *(*(a2 + 24) + 8 * v11 + 4);
      v13 = *(a1 + 356);
      v14 = bswap32(v12);
      if ((v13 & 0x40) != 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = *(*(a2 + 24) + 8 * v11 + 4);
      }

      if (!v15)
      {
        v18 = 0;
        v16 = 0;
        goto LABEL_28;
      }

      if ((v13 & 4) != 0)
      {
        v16 = 0;
        if ((v13 & 0x40) != 0)
        {
          v18 = v14;
        }

        else
        {
          v18 = v12;
        }

        goto LABEL_28;
      }

      if ((v13 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      v16 = *(a1 + 348);
      if (v16 < 1)
      {
        break;
      }

LABEL_12:
      v17 = *(a1 + 344);
      v18 = *(a1 + 336);
      if (v16 > v17)
      {
        v19 = (2 * v17);
        if (v16 > v19)
        {
          LODWORD(v19) = v16;
        }

        *(a1 + 344) = v19;
        if (v18)
        {
          free(v18);
          *(a1 + 336) = 0;
          LODWORD(v19) = *(a1 + 344);
        }

        v18 = malloc_type_malloc(v19, 0x67B7B83AuLL);
        *(a1 + 336) = v18;
      }

      if ((*(a1 + 356) & 0x40) != 0)
      {
        v21 = *(a1 + 348);
        if (v21 >= 1)
        {
          memcpy(v18, (*(a2 + 32) + v21 * v11), v21);
          goto LABEL_28;
        }

        v20 = bswap32(*(*(a2 + 24) + 8 * v11 + 4));
      }

      else
      {
        v20 = *(*(a2 + 24) + 8 * v11 + 4);
      }

      BOMStorageCopyFromBlock(*a1, v20, v18);
LABEL_28:
      if ((*(a1 + 356) & 4) != 0)
      {
        if (v18 <= __s1)
        {
          v24 = 0;
        }

        else
        {
          v24 = -1;
        }

        if (v18 < __s1)
        {
          v23 = 1;
        }

        else
        {
          v23 = v24;
        }

        goto LABEL_44;
      }

      if (v18 == __s1)
      {
        if (!a5)
        {
          return v11;
        }

        v23 = 0;
        v25 = 1;
        goto LABEL_48;
      }

      if (__s1)
      {
        if (!v18)
        {
          v23 = 1;
          goto LABEL_44;
        }

        if (a4 >= v16)
        {
          v22 = v16;
        }

        else
        {
          v22 = a4;
        }

        v23 = memcmp(__s1, v18, v22);
        if (v23)
        {
          goto LABEL_44;
        }

        if (v16 <= a4)
        {
          v23 = v16 < a4;
          goto LABEL_44;
        }
      }

      v23 = -1;
LABEL_44:
      if (!a5)
      {
        goto LABEL_49;
      }

      v25 = v23 == 0;
LABEL_48:
      *a5 = v25;
LABEL_49:
      if (v10 == v9)
      {
        if (v23 <= 0)
        {
          return v11;
        }

        else
        {
          return (v11 + 1);
        }
      }

      if (v23 >= 1)
      {
        if (v11 == v10)
        {
          v9 += (v10 - v9) >> 1;
        }

        else
        {
          v9 = v11 + 1;
        }
      }

      else
      {
        if ((v23 & 0x80000000) == 0)
        {
          return v11;
        }

        v10 = v11 - ((v10 - v9) > 1);
      }
    }

    v12 = v14;
LABEL_11:
    v16 = BOMStorageSizeOfBlock(*a1, v12);
    goto LABEL_12;
  }

  v11 = 0;
  if (a5)
  {
    *a5 = 0;
  }

  return v11;
}

uint64_t _PageSetValue(uint64_t a1, uint64_t *a2, void *a3, size_t a4, int a5, int a6)
{
  v53 = 0;
  v6 = 1;
  if (a5)
  {
    if (a6)
    {
      v13 = BOMStackPop(a2);
      if (v13)
      {
        v14 = v13;
        v15 = (*(v13 + 2) & 1) == 0;
        _invalidateIteratorsForPageID(a1, *v13);
        IndexForKey = _findIndexForKey(a1, v14, a3, a4, &v53);
        v17 = *(v14 + 24);
        if (v53)
        {
          v18 = *(v14 + 16);
        }

        else
        {
          if (*(v17 + 8 * IndexForKey + 4))
          {
            v19 = *(a1 + 356);
            if ((v19 & 8) != 0)
            {
              *(a1 + 356) = v19 & 0xFFFFFFF7;
              v17 = *(v14 + 24);
            }

            v20 = *(v14 + 16);
            v21 = v20 - IndexForKey;
            if (v20 != IndexForKey)
            {
              v22 = v20 + v15;
              v23 = *(v14 + 16);
              do
              {
                v24 = v17 + 8 * v23--;
                v25 = 8 * v22--;
                v26 = *(v17 + 8 * v22);
                *(v24 + 4) = *(v17 + 8 * v23 + 4);
                *(v17 + v25) = v26;
                --v21;
              }

              while (v21);
            }
          }

          else
          {
            LOWORD(v20) = *(v14 + 16);
          }

          *(v17 + 8 * IndexForKey + 4) = a5;
          v18 = v20 + 1;
          *(v14 + 16) = v20 + 1;
        }

        *(v17 + 8 * (IndexForKey + v15)) = a6;
        *(v14 + 4) |= 2u;
        if (*(a1 + 308) >= v18)
        {
          v6 = 0;
        }

        else
        {
          v27 = _NewPage(a1, 0);
          if (v27)
          {
            v28 = v27;
            *(v27 + 2) = *(v27 + 2) & 0xFFFC | *(v14 + 4) & 1 | 2;
            if ((*(v14 + 4) & 1) == 0 || (v29 = *v27, v30 = *v14, *(v27 + 2) = *(v14 + 8), *(v14 + 8) = v29, *(v27 + 3) = v30, v31 = *(v27 + 2), !v31))
            {
LABEL_22:
              if ((*(a1 + 356) & 8) != 0)
              {
                LODWORD(v34) = *(a1 + 308) - 1;
                v33 = *(v14 + 16);
              }

              else
              {
                v33 = *(v14 + 16);
                LODWORD(v34) = v33 >> 1;
              }

              v35 = *(v14 + 24);
              v36 = *(v28 + 24);
              if (v34 + 1 >= v33)
              {
                v38 = *(v28 + 16);
                v34 = v34;
                v40 = v33;
              }

              else
              {
                v34 = v34;
                v37 = v34 + 1;
                v38 = *(v28 + 16);
                do
                {
                  v39 = (v35 + 8 * v37);
                  *(v36 + 8 * v38++) = *v39;
                  *(v28 + 16) = v38;
                  *v39 = 0;
                  ++v37;
                  v40 = *(v14 + 16);
                }

                while (v37 < v40);
                LOWORD(v33) = *(v14 + 16);
              }

              v41 = 8 * v40;
              *(v36 + 8 * v38) = *(v35 + v41);
              *(v35 + v41) = 0;
              *(v14 + 16) = v33 - v38;
              v42 = v35 + 8 * v34;
              v45 = *(v42 + 4);
              v43 = (v42 + 4);
              v44 = v45;
              if ((*(v14 + 4) & 1) == 0)
              {
                *v43 = 0;
                *(v14 + 16) = v33 - v38 - 1;
              }

              _addPageToCache(a1, v28);
              if (BOMStackIsEmpty(a2))
              {
                v46 = _NewPage(a1, 0);
                v6 = 1;
                if (v46)
                {
                  v47 = v46;
                  v48 = v46[3];
                  *v48 = *v14;
                  v48[1] = v44;
                  v48[2] = *v28;
                  *(v46 + 8) = 1;
                  *(v46 + 2) |= 2u;
                  _addPageToCache(a1, v14);
                  v6 = 0;
                  *(a1 + 24) = v47;
                }
              }

              else
              {
                v6 = _PageSetValue(a1, a2, a3, a4, v44, *v28);
              }

              goto LABEL_41;
            }

            Page = _findPage(a1, v31);
            if (Page)
            {
              if (Page[3] == *v14)
              {
                Page[3] = *v28;
                *(Page + 2) |= 2u;
                goto LABEL_22;
              }

              v49 = *__error();
              v50 = "internal btree error";
              v6 = 1;
              v51 = 2210;
            }

            else
            {
              v49 = *__error();
              v50 = "missing tree page";
              v6 = 1;
              v51 = 2206;
            }

            _BOMExceptionHandlerCall(v50, 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMTree.c", v51, v49);
          }

          else
          {
            v6 = 1;
          }
        }

LABEL_41:
        *(v14 + 4) &= ~8u;
      }
    }
  }

  return v6;
}

uint64_t BOMTreeGetValueSize(uint64_t a1, void *a2, size_t a3, uint64_t *a4)
{
  result = 1;
  if (a1 && a2 && a4 && (a3 || (*(a1 + 356) & 4) != 0))
  {
    PagesForKey = _findPagesForKey(a1, 0, a2, a3);
    if (PagesForKey && (v10 = PagesForKey, v15 = 0, IndexForKey = _findIndexForKey(a1, PagesForKey, a2, a3, &v15), v15))
    {
      v12 = bswap32(*(*(v10 + 24) + 8 * IndexForKey));
      if ((*(a1 + 356) & 0x40) != 0)
      {
        v13 = v12;
      }

      else
      {
        v13 = *(*(v10 + 24) + 8 * IndexForKey);
      }

      v14 = BOMStorageSizeOfBlock(*a1, v13);
      result = 0;
      *a4 = v14;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t BOMTreeValueExists(uint64_t a1, void *a2, size_t a3)
{
  result = 0;
  v7 = 0;
  if (a1 && a2)
  {
    if (a3 || (*(a1 + 356) & 4) != 0)
    {
      result = _findPagesForKey(a1, 0, a2, a3);
      if (result)
      {
        _findIndexForKey(a1, result, a2, a3, &v7);
        return v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t BOMTreeGetValue(uint64_t a1, void *a2, size_t a3)
{
  result = 0;
  v18 = 0;
  if (a1 && a2)
  {
    if (!a3 && (*(a1 + 356) & 4) == 0)
    {
      return 0;
    }

    result = _findPagesForKey(a1, 0, a2, a3);
    if (!result)
    {
      return result;
    }

    v7 = result;
    IndexForKey = _findIndexForKey(a1, result, a2, a3, &v18);
    if (!v18)
    {
      return 0;
    }

    v9 = IndexForKey;
    v10 = bswap32(*(*(v7 + 24) + 8 * IndexForKey));
    v11 = (*(a1 + 356) & 0x40) != 0 ? v10 : *(*(v7 + 24) + 8 * IndexForKey);
    result = BOMStorageSizeOfBlock(*a1, v11);
    if (result)
    {
      v12 = result;
      v13 = *(a1 + 320);
      if (v13)
      {
        if (result <= *(a1 + 328))
        {
          goto LABEL_19;
        }

        free(*(a1 + 320));
        *(a1 + 320) = 0;
        v14 = (2 * *(a1 + 328));
        if (v12 <= v14)
        {
          result = v14;
        }

        else
        {
          result = v12;
        }

        *(a1 + 328) = result;
        v15 = 4263778202;
      }

      else
      {
        *(a1 + 328) = result;
        result = result;
        v15 = 1261575674;
      }

      v13 = malloc_type_malloc(result, v15);
      *(a1 + 320) = v13;
LABEL_19:
      v16 = bswap32(*(*(v7 + 24) + 8 * v9));
      if ((*(a1 + 356) & 0x40) != 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = *(*(v7 + 24) + 8 * v9);
      }

      if (!BOMStorageCopyFromBlock(*a1, v17, v13))
      {
        return *(a1 + 320);
      }

      return 0;
    }
  }

  return result;
}

uint64_t BOMTreeReadValue(uint64_t a1, void *a2, size_t a3)
{
  result = 0;
  v11 = 0;
  if (a1 && a2)
  {
    if (!a3 && (*(a1 + 356) & 4) == 0)
    {
      return 0;
    }

    result = _findPagesForKey(a1, 0, a2, a3);
    if (!result)
    {
      return result;
    }

    v7 = result;
    IndexForKey = _findIndexForKey(a1, result, a2, a3, &v11);
    if (v11)
    {
      v9 = bswap32(*(*(v7 + 24) + 8 * IndexForKey));
      if ((*(a1 + 356) & 0x40) != 0)
      {
        v10 = v9;
      }

      else
      {
        v10 = *(*(v7 + 24) + 8 * IndexForKey);
      }

      return BOMStorageReadFromBlock(*a1, v10);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _findRemove(uint64_t a1, unsigned int **a2, unint64_t a3, uint64_t a4, unsigned int *a5, unsigned int *a6, void *a7, size_t a8, char *a9)
{
  v13 = a2;
  v15 = a9;
  v77 = 0;
  v16 = *a2;
  v76 = 0;
  v75 = 0;
  if (!a9)
  {
    v15 = &v75;
  }

  v74 = v15;
  IndexForKey = _findIndexForKey(a1, v16, a7, a8, &v77);
  v18 = IndexForKey;
  *(v16 + 20) = IndexForKey;
  if (*(v16 + 4))
  {
    if (!v77)
    {
      return 1;
    }

    goto LABEL_43;
  }

  if (IndexForKey)
  {
    Page = _findPage(a1, *(*(v16 + 24) + 8 * (IndexForKey - 1)));
    v20 = *(Page + 2);
    if ((v20 & 8) == 0)
    {
      v69 = v16;
LABEL_12:
      v70 = 0;
      *(Page + 2) = v20 | 8;
      goto LABEL_16;
    }

    v70 = 1;
    v69 = v16;
  }

  else if (a3)
  {
    Page = _findPage(a1, *(*(a3 + 24) + 8 * *(a3 + 16)));
    v20 = *(Page + 2);
    if ((v20 & 8) == 0)
    {
      v69 = a5;
      goto LABEL_12;
    }

    v70 = 1;
    v69 = a5;
  }

  else
  {
    v69 = 0;
    Page = 0;
    v70 = 1;
  }

LABEL_16:
  v71 = a4;
  if (v18 == *(v16 + 16))
  {
    if (a4)
    {
      a4 = _findPage(a1, **(a4 + 24));
      v22 = *(a4 + 4);
      if ((v22 & 8) == 0)
      {
        v23 = a6;
LABEL_22:
        v68 = 0;
        *(a4 + 4) = v22 | 8;
        goto LABEL_26;
      }

      v68 = 1;
      v23 = a6;
    }

    else
    {
      v23 = 0;
      v68 = 1;
    }
  }

  else
  {
    a4 = _findPage(a1, *(*(v16 + 24) + 8 * (v18 + 1)));
    v22 = *(a4 + 4);
    if ((v22 & 8) == 0)
    {
      v23 = v16;
      goto LABEL_22;
    }

    v68 = 1;
    v23 = v16;
  }

LABEL_26:
  v66 = v13;
  v24 = _findPage(a1, *(*(v16 + 24) + 8 * v18));
  v76 = v24;
  if (!v24)
  {
    v64 = __error();
    _BOMFatalException("BOMTree in invalid state - nextNode is NULL!", "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMTree.c", 1819, *v64);
  }

  v25 = *(v24 + 2);
  if ((v25 & 8) == 0)
  {
    *(v24 + 2) = v25 | 8;
  }

  if (a3)
  {
    *(a3 + 4) &= ~4u;
  }

  if (v71)
  {
    *(v71 + 4) &= ~4u;
  }

  *(v24 + 2) &= ~4u;
  result = _findRemove(a1, &v76, Page, a4, v69, v23, a7, a8, v74);
  if ((v70 & 1) == 0)
  {
    *(Page + 2) &= ~8u;
  }

  if ((v68 & 1) == 0)
  {
    *(a4 + 4) &= ~8u;
  }

  if ((v25 & 8) == 0 && v76)
  {
    *(v76 + 4) &= ~8u;
  }

  if (!result)
  {
    a4 = v71;
    v13 = v66;
    if ((*(v16 + 4) & 1) == 0 || !v77)
    {
      if (!*v74)
      {
        return 0;
      }

      goto LABEL_44;
    }

LABEL_43:
    _invalidateIteratorsForPageID(a1, *v16);
LABEL_44:
    v26 = *(v16 + 16);
    v27 = *(v16 + 24);
    v28 = v26 - v18;
    if (v26 == v18)
    {
      v29 = 0;
      v30 = 0;
      *(v27 + 8 * (v18 - 1) + 4) = 0;
    }

    else
    {
      v31 = (v27 + 8 * v18);
      v30 = *v31;
      v29 = v31[1];
      v32 = v18;
      do
      {
        *(v27 + 8 * v32) = *(v27 + 8 * (v32 + 1));
        ++v32;
        --v28;
      }

      while (v28);
    }

    *(v27 + 8 * v26) = 0;
    *(v16 + 16) = v26 - 1;
    if (*(v16 + 4))
    {
      if ((*(a1 + 356) & 4) == 0 && v29)
      {
        BOMStorageFreeBlock(*a1, v29);
      }

      if (v30)
      {
        BOMStorageFreeBlock(*a1, v30);
      }
    }

    v33 = *(v16 + 4);
    *(v16 + 4) = v33 | 2;
    v34 = *(v16 + 16);
    if (v33)
    {
      v35 = a6;
      if (a6 && v18 == v34)
      {
        *(*(a6 + 3) + 8 * a6[5] + 4) = *(*(v16 + 24) + 8 * (v18 - 1) + 4);
        *(a6 + 2) |= 2u;
        v34 = *(v16 + 16);
      }
    }

    else
    {
      v35 = a6;
    }

    v36 = *(a1 + 316);
    if (v36 <= v34)
    {
      result = 0;
      *v74 = 0;
      return result;
    }

    v37 = *(a1 + 24);
    if (v16 != v37)
    {
      v38 = *v13;
      if (!(a3 | a4))
      {
LABEL_112:
        result = 0;
        *v13 = v38;
        return result;
      }

      if (a3)
      {
        v39 = a3;
      }

      else
      {
        v39 = a4;
      }

      v40 = a5;
      if (!a3)
      {
        v40 = v35;
      }

      v41 = a3;
      if (a4)
      {
        v42 = a3 != 0;
      }

      else
      {
        v42 = 0;
      }

      v65 = v41;
      v67 = v13;
      if (v42)
      {
        v43 = *(v41 + 16);
        v44 = *(a4 + 16);
        if (v43 >= v44)
        {
          if (v43 <= v44)
          {
            v63 = *(*(v35 + 3) + 8 * v35[5]);
            if (*v38 == v63)
            {
              v39 = a4;
            }

            else
            {
              v39 = v41;
            }

            if (*v38 != v63)
            {
              v35 = a5;
            }
          }

          else
          {
            v39 = v41;
            v35 = a5;
          }
        }

        else
        {
          v39 = a4;
        }
      }

      else
      {
        v35 = v40;
      }

      v47 = *(v39 + 16);
      v48 = a4;
      v49 = v39 == a4;
      v50 = v39 == a4;
      if (v49)
      {
        v51 = v38;
      }

      else
      {
        v51 = v39;
      }

      if (v38[1])
      {
        v52 = v35;
        _invalidateIteratorsForPageID(a1, *v39);
        v35 = v52;
      }

      v53 = v35[5] - (v39 != v48);
      if ((v51[1] & 1) == 0)
      {
        v54 = *(v51 + 8);
        *(*(v51 + 3) + 8 * v54 + 4) = *(*(v35 + 3) + 8 * v53 + 4);
        *(v51 + 8) = v54 + 1;
        *(v51 + 2) |= 2u;
      }

      if (v36 < v47)
      {
        v55 = a1;
        v56 = v35;
        _shiftKeysAndValues(v55, v38, v39, v50);
        v57 = *(*(v51 + 3) + 8 * *(v51 + 8) - 4);
        v58 = *(v56 + 3) + 8 * v53;
        v60 = *(v58 + 4);
        v59 = (v58 + 4);
        v13 = v67;
        if (v60 != v57)
        {
          *v59 = v57;
          *(v56 + 2) |= 2u;
        }

        v61 = 0;
        if ((v51[1] & 1) == 0)
        {
          v62 = *(v51 + 8) - 1;
          *(v51 + 8) = v62;
          *(*(v51 + 3) + 8 * v62 + 4) = 0;
          *(v51 + 2) |= 2u;
        }

        goto LABEL_111;
      }

      _shiftKeysAndValues(a1, v39, v38, v39 != v48);
      v13 = v67;
      if (v42)
      {
        *(v65 + 8) = *v48;
        *(v48 + 12) = *v65;
        *(v65 + 4) |= 2u;
      }

      else if (v65)
      {
        *(v65 + 8) = 0;
        v48 = v65;
      }

      else
      {
        if (!v48)
        {
LABEL_110:
          *(v38 + 2) &= ~8u;
          _removePageFromCache(a1, v38);
          BOMStorageFreeBlock(*a1, *v38);
          _FreePage(a1, v38);
          v38 = 0;
          v61 = 1;
LABEL_111:
          *v74 = v61;
          goto LABEL_112;
        }

        *(v48 + 12) = 0;
      }

      *(v48 + 4) |= 2u;
      goto LABEL_110;
    }

    if ((*(v37 + 4) & 1) == 0 && !*(v37 + 16))
    {
      v45 = **(v37 + 24);
      if (v45)
      {
        v46 = _findPage(a1, v45);
        *(v46 + 2) &= ~8u;
        _removePageFromCache(a1, v46);
        *(a1 + 24) = v46;
        BOMStorageFreeBlock(*a1, *v37);
        _FreePage(a1, v37);
      }
    }

    return 0;
  }

  return result;
}