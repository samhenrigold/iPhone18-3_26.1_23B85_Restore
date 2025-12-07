uint64_t csu_preprocessVideoDeviceDict(void *a1, void *a2)
{
  v4 = [a1 objectForKeyedSubscript:@"baseCaptureDeviceUniqueName"];
  v5 = [a1 objectForKeyedSubscript:@"uniqueName"];
  if (([(__CFString *)v5 hasPrefix:@"Front"]& 1) != 0)
  {
    v26 = 2;
  }

  else
  {
    v26 = [(__CFString *)v5 hasPrefix:@"Back"];
  }

  result = objc_msgSend_isEqualToString_(v5);
  v25 = v5;
  if (result)
  {
    v22 = 0;
    v23 = 0;
    v8 = kFigCaptureVideoSourceUniqueID_BackWide;
LABEL_6:
    v9 = *v8;
    v10 = 2;
    goto LABEL_22;
  }

  result = objc_msgSend_isEqualToString_(v5);
  if (result)
  {
    v22 = 0;
    v23 = 0;
    v9 = @"com.apple.avfoundation.avcapturedevice.built-in_video:2";
    v10 = 3;
    goto LABEL_22;
  }

  result = objc_msgSend_isEqualToString_(v5);
  if (result)
  {
    v22 = 0;
    v23 = 0;
    v11 = kFigCaptureVideoSourceUniqueID_BackSuperWide;
LABEL_11:
    v9 = *v11;
    v10 = 7;
    goto LABEL_22;
  }

  result = objc_msgSend_isEqualToString_(v5);
  if (result)
  {
    v22 = 0;
    v23 = 0;
    v9 = @"com.apple.avfoundation.avcapturedevice.private.built-in_pointcloud:1";
    v26 = 1;
    v10 = 10;
    goto LABEL_22;
  }

  if (objc_msgSend_isEqualToString_(v5))
  {
    v9 = @"com.apple.avfoundation.avcapturedevice.built-in_video:3";
    v34[0] = @"com.apple.avfoundation.avcapturedevice.built-in_video:0";
    v34[1] = @"com.apple.avfoundation.avcapturedevice.built-in_video:2";
    result = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
    v22 = 0;
    v23 = result;
    v10 = 4;
    goto LABEL_22;
  }

  if (objc_msgSend_isEqualToString_(v5))
  {
    v9 = @"com.apple.avfoundation.avcapturedevice.built-in_video:6";
    v33[0] = @"com.apple.avfoundation.avcapturedevice.built-in_video:0";
    v33[1] = @"com.apple.avfoundation.avcapturedevice.built-in_video:5";
    result = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
    v22 = 0;
    v23 = result;
    v10 = 8;
    goto LABEL_22;
  }

  if (objc_msgSend_isEqualToString_(v5))
  {
    v9 = @"com.apple.avfoundation.avcapturedevice.built-in_video:7";
    v32[0] = @"com.apple.avfoundation.avcapturedevice.built-in_video:0";
    v32[1] = @"com.apple.avfoundation.avcapturedevice.built-in_video:2";
    v32[2] = @"com.apple.avfoundation.avcapturedevice.built-in_video:5";
    result = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
    v22 = 0;
    v23 = result;
    v10 = 9;
    goto LABEL_22;
  }

  if (objc_msgSend_isEqualToString_(v5))
  {
    v9 = @"com.apple.avfoundation.avcapturedevice.built-in_video:9";
    v31[0] = @"com.apple.avfoundation.avcapturedevice.built-in_video:0";
    v31[1] = @"com.apple.avfoundation.avcapturedevice.private.built-in_pointcloud:1";
    result = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
    v22 = result;
    v23 = 0;
    v10 = 13;
    goto LABEL_22;
  }

  result = objc_msgSend_isEqualToString_(v5);
  if (result)
  {
    v22 = 0;
    v23 = 0;
    v8 = kFigCaptureVideoSourceUniqueID_FrontWide;
    goto LABEL_6;
  }

  result = objc_msgSend_isEqualToString_(v5);
  if (result)
  {
    v22 = 0;
    v23 = 0;
    v11 = kFigCaptureVideoSourceUniqueID_FrontSuperWide;
    goto LABEL_11;
  }

  result = objc_msgSend_isEqualToString_(v5);
  if (result)
  {
    v22 = 0;
    v23 = 0;
    v9 = @"com.apple.avfoundation.avcapturedevice.built-in_video:1";
    v25 = @"Front Camera";
    v10 = 11;
  }

  else
  {
    result = objc_msgSend_isEqualToString_(v5);
    if (result)
    {
      v22 = 0;
      v23 = 0;
      v9 = @"com.apple.avfoundation.avcapturedevice.built-in_video:99";
      v10 = 5;
    }

    else if (objc_msgSend_isEqualToString_(v5))
    {
      v9 = @"com.apple.avfoundation.avcapturedevice.built-in_video:4";
      v30[0] = @"com.apple.avfoundation.avcapturedevice.built-in_video:1";
      v30[1] = @"com.apple.avfoundation.avcapturedevice.built-in_video:99";
      result = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
      v22 = 0;
      v23 = result;
      v10 = 6;
    }

    else
    {
      if (objc_msgSend_isEqualToString_(v5))
      {
        v9 = @"com.apple.avfoundation.avcapturedevice.built-in_video:4";
        v29[0] = @"com.apple.avfoundation.avcapturedevice.built-in_video:1";
        v29[1] = @"com.apple.avfoundation.avcapturedevice.built-in_video:99";
        result = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
        v22 = 0;
        v23 = result;
        v21 = 12;
        v25 = @"Front TrueDepth Camera";
        goto LABEL_23;
      }

      result = objc_msgSend_isEqualToString_(v5);
      if (result)
      {
        v22 = 0;
        v23 = 0;
        v9 = @"com.apple.avfoundation.avcapturedevice.private.built-in_metadata:1";
        v10 = 17;
      }

      else
      {
        result = objc_msgSend_isEqualToString_(v5);
        if (result)
        {
          v22 = 0;
          v23 = 0;
          v9 = @"com.apple.avfoundation.avcapturedevice.private.built-in_metadata:1";
          v25 = @"Front Metadata Camera";
          v10 = 18;
        }

        else
        {
          result = objc_msgSend_isEqualToString_(v5);
          if (result)
          {
            v22 = 0;
            v23 = 0;
            v9 = @"com.apple.avfoundation.avcapturedevice.private.built-in_metadata:2";
            v10 = 19;
          }

          else
          {
            result = objc_msgSend_isEqualToString_(v5);
            if (!result)
            {
              return result;
            }

            v22 = 0;
            v23 = 0;
            v9 = @"com.apple.avfoundation.avcapturedevice.private.built-in_metadata:3";
            v10 = 20;
          }
        }
      }
    }
  }

LABEL_22:
  v21 = v10;
LABEL_23:
  v24 = v9;
  if (v9 && v26)
  {
    if (v4)
    {
      v12 = 0;
      v13 = *MEMORY[0x1E695E480];
      while (1)
      {
        memset(v28, 0, sizeof(v28));
        result = OUTLINED_FUNCTION_37(result, v7, v28, v27);
        if (result)
        {
          v14 = result;
          while (2)
          {
            v15 = 0;
            do
            {
              OUTLINED_FUNCTION_49_7();
              if (!v16)
              {
                objc_enumerationMutation(a2);
              }

              v17 = *(*(&v28[0] + 1) + 8 * v15);
              [v17 objectForKeyedSubscript:@"uniqueName"];
              v18 = OUTLINED_FUNCTION_28();
              result = objc_msgSend_isEqualToString_(v18);
              if (result)
              {
                v12 = v17;
                goto LABEL_37;
              }

              ++v15;
            }

            while (v14 != v15);
            result = OUTLINED_FUNCTION_37(result, v19, v28, v27);
            v14 = result;
            if (result)
            {
              continue;
            }

            break;
          }
        }

LABEL_37:
        if (!v12)
        {
          break;
        }

        v20 = CFPropertyListCreateDeepCopy(v13, v12, 1uLL);
        FigCFDictionaryAddEntriesToDictionaryWithRecursion();
        [a1 removeAllObjects];
        [OUTLINED_FUNCTION_12_0() addEntriesFromDictionary:?];
        result = [v12 objectForKeyedSubscript:@"baseCaptureDeviceUniqueName"];
        if (!result)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
LABEL_39:
      [a1 setObject:v25 forKeyedSubscript:@"localizedName"];
      [a1 setObject:v24 forKeyedSubscript:@"uniqueID"];
      [OUTLINED_FUNCTION_27_1() setObject:? forKeyedSubscript:?];
      [a1 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v21), @"deviceType"}];
      [a1 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v26), @"position"}];
      [a1 setObject:v23 forKeyedSubscript:@"synchronizedStreamUniqueIDs"];
      return [a1 setObject:v22 forKeyedSubscript:@"unsynchronizedStreamUniqueIDs"];
    }
  }

  return result;
}

id csu_createMultiStreamSourceFormatsArrayAndAddAVCompressionSettingsAttribute(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v498 = a5;
  v5 = a2;
  v6 = [objc_msgSend(a2 objectForKeyedSubscript:{@"MultiStream", "objectForKeyedSubscript:", @"AVCaptureDeviceFormats"}];
  v7 = [objc_msgSend(v5 objectForKeyedSubscript:{@"MultiStream", "objectForKeyedSubscript:", 0x1F217E9D0}];
  v8 = [MEMORY[0x1E695DF70] array];
  k = &v655;
  OUTLINED_FUNCTION_1_68();
  v656 = 3221225472;
  v657 = __csu_removeExperimentalDeviceFormats_block_invoke;
  v658 = &unk_1E7997840;
  v659 = v10;
  [v6 enumerateKeysAndObjectsUsingBlock:&v655];
  [v6 removeObjectsForKeys:v8];
  v11 = [MEMORY[0x1E695DF70] array];
  *&v722 = MEMORY[0x1E69E9820];
  *(&v722 + 1) = 3221225472;
  *&v723 = __csu_removeUnsupportedDeviceFormatsAndDependentPresets_block_invoke;
  *(&v723 + 1) = &unk_1E7997868;
  *&v724 = v11;
  [v6 enumerateKeysAndObjectsUsingBlock:&v722];
  [v6 removeObjectsForKeys:v11];
  v12 = [MEMORY[0x1E695DF70] array];
  OUTLINED_FUNCTION_1_68();
  v656 = 3221225472;
  v657 = __csu_removeUnsupportedDeviceFormatsAndDependentPresets_block_invoke_2;
  v658 = &unk_1E7997890;
  v659 = v7;
  v660 = v11;
  v661 = v13;
  [v7 enumerateKeysAndObjectsUsingBlock:&v655];
  [v7 removeObjectsForKeys:v12];
  v620 = v6;
  csu_mergeInCommonEntries(v6);
  [v5 objectForKeyedSubscript:@"localizedName"];
  v14 = [objc_msgSend(v5 objectForKeyedSubscript:{@"MultiStream", "objectForKeyedSubscript:", 0x1F217E9D0}];
  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  OUTLINED_FUNCTION_1_68();
  v656 = 3221225472;
  v657 = __csu_resolveSessionPresetAliases_block_invoke;
  v658 = &unk_1E7991CA0;
  v659 = v14;
  v660 = v16;
  [v14 enumerateKeysAndObjectsUsingBlock:&v655];
  [v14 addEntriesFromDictionary:v15];

  v607 = v14;
  csu_mergeInCommonEntries(v14);
  v17 = [objc_msgSend(v5 objectForKeyedSubscript:{@"deviceType", "intValue"}];
  v18 = v17;
  if (v17 <= 9 && ((1 << v17) & 0x310) != 0 && ([+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")] & 1) == 0)
  {
    OUTLINED_FUNCTION_47_9();
    v19 = OUTLINED_FUNCTION_43_10(qword_1EB58DF58);
    v20 = OUTLINED_FUNCTION_61_5(v19);
    if (OUTLINED_FUNCTION_6(v20))
    {
      LODWORD(v722) = 136315138;
      *(&v722 + 4) = "csu_getDepthDataFormatsDict";
      OUTLINED_FUNCTION_15_20();
      OUTLINED_FUNCTION_58_1(v21, v22, &v655, v23, &dword_1AC90E000);
      LODWORD(v12) = v708;
    }

    OUTLINED_FUNCTION_1_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v24 = [objc_msgSend(v5 objectForKeyedSubscript:{@"MultiStream", "objectForKeyedSubscript:", @"DepthDataFormats"}];
  v596 = v5;
  v597 = v24;
  if (v24)
  {
    v25 = v24;
    csu_mergeInCommonEntries(v24);
    if (v18 != 13)
    {
      v614 = a1 ? *(a1 + 40) : 0;
      memset(v749, 0, 64);
      v610 = [(FigCaptureSourceStreamsContainer *)a1 portTypesSupportingDepth];
      v616 = [v610 countByEnumeratingWithState:v749 objects:&v655 count:16];
      if (v616)
      {
        v615 = **&v749[1];
        v612 = *off_1E798BDE8;
        v12 = *off_1E798AC38;
        v439 = *off_1E798AC30;
        do
        {
          v440 = 0;
          do
          {
            if (**&v749[1] != v615)
            {
              objc_enumerationMutation(v610);
            }

            v619 = v440;
            if (!a1 || ((v441 = *(a1 + 12), v103 = v441 > 8, v442 = (1 << v441) & 0x10E, !v103) ? (v443 = v442 == 0) : (v443 = 1), v443))
            {
              objd = 0;
            }

            else
            {
              objd = [objc_msgSend(v614 objectForKeyedSubscript:{*(*(&v749[0] + 1) + 8 * v440)), "getProperty:error:", v612, 0}];
            }

            v621 = [v25 allKeys];
            v634 = [v621 countByEnumeratingWithState:&v737 objects:&v722 count:16];
            if (v634)
            {
              OUTLINED_FUNCTION_51_9();
              v628 = v444;
              do
              {
                for (i = 0; i != v634; ++i)
                {
                  OUTLINED_FUNCTION_51_9();
                  if (v446 != v628)
                  {
                    objc_enumerationMutation(v621);
                  }

                  v447 = *(v738 + 8 * i);
                  v448 = [OUTLINED_FUNCTION_8_8() objectForKeyedSubscript:?];
                  k = [v448 objectForKeyedSubscript:0x1F216B190];
                  v449 = [v448 objectForKeyedSubscript:0x1F216B1B0];
                  v450 = [objc_msgSend(v448 objectForKeyedSubscript:{0x1F217EE90), "intValue"}];
                  if (!v450)
                  {
                    v450 = [k intValue];
                  }

                  v451 = [objc_msgSend(v448 objectForKeyedSubscript:{0x1F217EEB0), "intValue"}];
                  if (!v451)
                  {
                    v451 = [v449 intValue];
                  }

                  v639 = v447;
                  v452 = [k intValue] < 1 || objc_msgSend(v449, "intValue") < 1;
                  v453 = [objc_msgSend(v448 objectForKeyedSubscript:{0x1F217EED0), "BOOLValue"}];
                  if (!v452 && (v453 & 1) == 0)
                  {
                    OUTLINED_FUNCTION_35_11();
                    v454 = OUTLINED_FUNCTION_59_6();
                    if (v454)
                    {
                      v455 = v454;
                      v456 = *v698;
LABEL_439:
                      v457 = 0;
                      while (1)
                      {
                        if (*v698 != v456)
                        {
                          objc_enumerationMutation(objd);
                        }

                        k = v697[v457];
                        v458 = [objc_msgSend(k objectForKeyedSubscript:{v12), "intValue"}];
                        v459 = [objc_msgSend(k objectForKeyedSubscript:{v439), "intValue"}];
                        if (v450 == v458 && v451 == v459)
                        {
                          break;
                        }

                        if (v450 == v459 && v451 == v458)
                        {
                          break;
                        }

                        if (v455 == ++v457)
                        {
                          v455 = OUTLINED_FUNCTION_59_6();
                          if (v455)
                          {
                            goto LABEL_439;
                          }

                          goto LABEL_452;
                        }
                      }
                    }

                    else
                    {
LABEL_452:
                      [v597 setObject:0 forKeyedSubscript:v639];
                    }
                  }

                  v25 = v597;
                }

                v634 = [v621 countByEnumeratingWithState:&v737 objects:&v722 count:16];
              }

              while (v634);
            }

            v440 = v619 + 1;
            v5 = v596;
          }

          while (v619 + 1 != v616);
          v616 = [v610 countByEnumeratingWithState:v749 objects:&v655 count:16];
        }

        while (v616);
      }
    }
  }

  if (a1 && *(a1 + 8) == 14)
  {
    v547 = [MEMORY[0x1E695DF90] dictionary];
    v542 = [MEMORY[0x1E695DF90] dictionary];
    [objc_msgSend(v5 objectForKeyedSubscript:{@"MultiStream", "objectForKeyedSubscript:", @"FigCaptureStreamFormats"}];
    v651 = 0u;
    v652 = 0u;
    v653 = 0u;
    v654 = 0u;
    v26 = v620;
    v27 = [v620 countByEnumeratingWithState:&v651 objects:v650 count:16];
    if (v27)
    {
      v12 = v27;
      obj = 0;
      v28 = *v652;
      k = MEMORY[0x1E695E110];
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v652 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = *(*(&v651 + 1) + 8 * j);
          v31 = [v26 objectForKeyedSubscript:v30];
          v32 = [objc_msgSend(v31 objectForKeyedSubscript:{@"Width", "intValue"}];
          v33 = [objc_msgSend(v31 objectForKeyedSubscript:{@"Height", "intValue"}];
          [v31 objectForKeyedSubscript:@"CaptureStreamFormat"];
          if ([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_4() "objectForKeyedSubscript:{"objectForKeyedSubscript:", @"Binned", "BOOLValue"}")] || v32 != 1920)
          {
            v26 = v620;
          }

          else
          {
            v443 = v33 == 1440;
            v26 = v620;
            if (v443)
            {
              v34 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(v620, "objectForKeyedSubscript:", v30)}];
              [v34 setObject:k forKeyedSubscript:0x1F217F970];
              [OUTLINED_FUNCTION_50_10() setObject:? forKeyedSubscript:?];
              [OUTLINED_FUNCTION_50_10() setObject:? forKeyedSubscript:?];
              [OUTLINED_FUNCTION_50_10() setObject:? forKeyedSubscript:?];
              [OUTLINED_FUNCTION_50_10() setObject:? forKeyedSubscript:?];
              [v547 setObject:v34 forKeyedSubscript:v30];
              obj = v30;
            }
          }
        }

        v12 = [v26 countByEnumeratingWithState:&v651 objects:v650 count:16];
      }

      while (v12);
    }

    else
    {
      obj = 0;
    }

    v648 = 0u;
    v649 = 0u;
    v646 = 0u;
    v647 = 0u;
    v36 = [v607 countByEnumeratingWithState:&v646 objects:v645 count:16];
    if (v36)
    {
      v37 = v36;
      v12 = *v647;
      while (2)
      {
        for (k = 0; k != v37; ++k)
        {
          OUTLINED_FUNCTION_49_7();
          if (!v443)
          {
            objc_enumerationMutation(v607);
          }

          v38 = *(*(&v646 + 1) + 8 * k);
          v39 = OUTLINED_FUNCTION_8_8();
          if (objc_msgSend_isEqualToString_(v39))
          {
            [v607 objectForKeyedSubscript:v38];
            v40 = [OUTLINED_FUNCTION_17() dictionaryWithDictionary:?];
            [v40 setObject:obj forKeyedSubscript:@"DeviceFormat"];
            v35 = v542;
            [v542 setObject:v40 forKeyedSubscript:v38];
            goto LABEL_38;
          }
        }

        v37 = [v607 countByEnumeratingWithState:&v646 objects:v645 count:16];
        if (v37)
        {
          continue;
        }

        break;
      }

      v35 = v542;
    }

    else
    {
      v35 = v542;
    }
  }

  else
  {
    v35 = v607;
    v547 = v620;
  }

LABEL_38:
  AllAVCaptureSessionPresets = FigCaptureStreamUtilitiesGetAllAVCaptureSessionPresets();
  v543 = v35;
  v629 = [v35 objectForKeyedSubscript:@"AVCaptureSessionPresetHigh"];
  v708 = 0u;
  v709 = 0u;
  v710 = 0u;
  v711 = 0u;
  obja = AllAVCaptureSessionPresets;
  v43 = OUTLINED_FUNCTION_1_18(v629, v42, &v708, &v655);
  if (v43)
  {
    v12 = v43;
    v44 = *v709;
    do
    {
      for (m = 0; m != v12; ++m)
      {
        if (*v709 != v44)
        {
          objc_enumerationMutation(obja);
        }

        v46 = *(*(&v708 + 1) + 8 * m);
        if (([v46 isEqual:{@"AVCaptureSessionPresetInputPriority", v467, v474}] & 1) == 0)
        {
          v47 = [v543 objectForKeyedSubscript:v46];
          if (v47)
          {
            k = v47;
            v48 = [v47 objectForKeyedSubscript:@"DeviceFormat"];
            v49 = [v547 objectForKeyedSubscript:v48];
            if (v49)
            {
              v50 = v49;
              if (![v49 objectForKeyedSubscript:0x1F217E9D0])
              {
                v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
                [v50 setObject:v51 forKeyedSubscript:0x1F217E9D0];
              }

              [OUTLINED_FUNCTION_8_8() addObject:?];
              if (k == v629)
              {
                [v50 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F217E490];
              }

              [k objectForKeyedSubscript:@"MinFrameRate"];
              [OUTLINED_FUNCTION_15() setObject:? forKeyedSubscript:?];
              [k objectForKeyedSubscript:@"MaxFrameRate"];
              [OUTLINED_FUNCTION_15() setObject:? forKeyedSubscript:?];
              v52 = [objc_msgSend(k objectForKeyedSubscript:{@"MaxIntegrationTime", "intValue"}];
              if (v52)
              {
                [MEMORY[0x1E696AD98] numberWithInt:v52];
                [OUTLINED_FUNCTION_15() setObject:? forKeyedSubscript:?];
              }

              if ([k objectForKeyedSubscript:0x1F217E4B0])
              {
                [OUTLINED_FUNCTION_15() setObject:? forKeyedSubscript:?];
              }
            }

            else
            {
              v737 = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              k = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v53 = v737;
              if (os_log_type_enabled(k, type[0]))
              {
                v54 = v53;
              }

              else
              {
                v54 = v53 & 0xFFFFFFFE;
              }

              if (v54)
              {
                LODWORD(v749[0]) = 136315650;
                *(v749 + 4) = "csu_addDeviceFormatDefaultsFromPresets";
                WORD6(v749[0]) = 2114;
                *(v749 + 14) = v48;
                WORD3(v749[1]) = 2114;
                *(&v749[1] + 1) = v46;
                LODWORD(v474) = 32;
                v467 = v749;
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_1_4();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }
        }
      }

      v12 = [obja countByEnumeratingWithState:&v708 objects:&v655 count:16];
    }

    while (v12);
  }

  if (a1)
  {
    v55 = *(a1 + 32);
  }

  else
  {
    v55 = 0;
  }

  v56 = a4;
  v748 = 0;
  v608 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v57 = [objc_msgSend(v596 objectForKeyedSubscript:{@"MultiStream", "objectForKeyedSubscript:", @"FigCaptureStreamFormats"}];
  v561 = [v596 objectForKeyedSubscript:@"mediaType"];
  v630 = [v596 objectForKeyedSubscript:@"localizedName"];
  v577 = v55;
  v58 = [v55 getProperty:*off_1E798C1B8 error:0];
  v59 = off_1E7989000;
  if (v58)
  {
    v60 = v58;
    v555 = v57;
    if (dword_1EB58DF60)
    {
      OUTLINED_FUNCTION_47_9();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      if (OUTLINED_FUNCTION_63_7(os_log_and_send_and_compose_flags_and_os_log_type))
      {
        LODWORD(v12) = v57;
      }

      else
      {
        LODWORD(v12) = v57 & 0xFFFFFFFE;
      }

      if (v12)
      {
        [v60 count];
        OUTLINED_FUNCTION_8_33(4.8152e-34);
        *(v62 + 14) = v630;
        WORD3(v723) = 1024;
        DWORD2(v723) = v63;
        OUTLINED_FUNCTION_15_20();
        OUTLINED_FUNCTION_7_4();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v59 = off_1E7989000;
    }

    v64 = -[__objc2_class sensorIDStringFromModuleInfo:](v59[242], "sensorIDStringFromModuleInfo:", [v577 getProperty:*off_1E798C078 error:{0, v467}]);
    [[(__objc2_class *)v59[242] sharedInstance] cameraTuningParameters];
    [v577 portType];
    if (![objc_msgSend(OUTLINED_FUNCTION_4() "objectForKeyedSubscript:{"objectForKeyedSubscript:", v64}")])
    {
      OUTLINED_FUNCTION_47_9();
      v65 = OUTLINED_FUNCTION_43_10(qword_1EB58DF58);
      if (OUTLINED_FUNCTION_61_5(v65))
      {
        k = v12;
      }

      else
      {
        k = v12 & 0xFFFFFFFE;
      }

      if (k)
      {
        [v577 portType];
        OUTLINED_FUNCTION_8_33(4.8152e-34);
        *(v66 + 14) = v64;
        WORD3(v723) = v67;
        *(&v723 + 1) = v68;
        OUTLINED_FUNCTION_15_20();
        OUTLINED_FUNCTION_58_1(k, v69, &v655, v70, &dword_1AC90E000);
      }

      OUTLINED_FUNCTION_1_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v71 = [objc_msgSend(a4 objectForKeyedSubscript:{0x1F21A0730), "BOOLValue"}];
    HIDWORD(v524) = v71;
    v744 = 0u;
    v745 = 0u;
    v746 = 0u;
    v747 = 0u;
    v72 = v57;
    v74 = OUTLINED_FUNCTION_1_18(v71, v73, &v744, v749);
    if (v74)
    {
      v75 = v74;
      v76 = *v745;
      v502 = 0x1F217E410;
      v563 = 0x1F217E5B0;
      v613 = *off_1E798C9A0;
      v625 = *off_1E798CA98;
      v611 = *off_1E798CB50;
      v593 = *off_1E798CB18;
      v592 = *off_1E798CB08;
      v590 = *off_1E798CB20;
      v588 = *off_1E798CB10;
      v559 = 0x1F217E510;
      v573 = 0x1F217E590;
      v575 = 0x1F217E4F0;
      v569 = 0x1F217EC50;
      v571 = 0x1F217EC30;
      v565 = 0x1F217E530;
      v567 = 0x1F217ED10;
      v506 = 0x1F217ED30;
      v500 = 0x1F217E4D0;
      v522 = *off_1E798CA48;
      v520 = *off_1E798C9F8;
      v518 = *off_1E798C9D8;
      v516 = *off_1E798C9F0;
      v514 = *off_1E798BE88;
      v512 = *off_1E798C280;
      v508 = 0x1F217EB90;
      v510 = *off_1E798C288;
      v504 = 0x1F217EF30;
      v549 = 0x1F217F750;
      v551 = 0x1F217EA90;
      v545 = 0x1F217EA50;
      v538 = 0x1F217E850;
      v540 = 0x1F217EA70;
      v534 = 0x1F217E550;
      v536 = 0x1F217F5D0;
      v530 = 0x1F2180050;
      v532 = 0x1F217E570;
      v528 = 0x1F217FE10;
      v526 = *MEMORY[0x1E6966130];
      v594 = v60;
      v553 = *v745;
LABEL_81:
      k = 0;
      v557 = v75;
      while (1)
      {
        if (*v745 != v76)
        {
          objc_enumerationMutation(v72);
        }

        v586 = k;
        v636 = *(*(&v744 + 1) + 8 * k);
        v77 = [v72 objectForKeyedSubscript:?];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v77 = [v72 objectForKeyedSubscript:v77];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            OUTLINED_FUNCTION_0();
            OUTLINED_FUNCTION_2_5();
            FigDebugAssert3(v226);
          }
        }

        v78 = [objc_msgSend(v77 objectForKeyedSubscript:{@"Unsupported", "BOOLValue"}];
        if ((v78 & 1) == 0)
        {
          v80 = OUTLINED_FUNCTION_11_28();
          v78 = OUTLINED_FUNCTION_29_9(v80, v81, &stru_1F216A3D0, v77);
          if ((v78 & 0x80000000) == 0)
          {
            LODWORD(v584) = v78;
            v78 = [v60 count];
            if (v78 > v584)
            {
              v581 = [objc_msgSend(v60 objectAtIndexedSubscript:{v584), "mutableCopy"}];
              [v581 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v584), 0x1F217E450}];
              if ((objc_msgSend_isEqualToString_(v561) & 1) == 0)
              {
                [v581 setObject:v561 forKeyedSubscript:v502];
              }

              context = objc_autoreleasePoolPush();
              n = [v77 objectForKeyedSubscript:v563];
              if (!n)
              {
                if ([objc_msgSend(v77 objectForKeyedSubscript:{@"HasFESCompanionFormat", "BOOLValue"}])
                {
                  v743 = v77;
                  n = [MEMORY[0x1E695DEC8] arrayWithObjects:&v743 count:1];
                }

                else
                {
                  n = 0;
                }
              }

              objb = v77;
              if ([n count])
              {
                v617 = [MEMORY[0x1E695DF70] array];
                v739 = 0u;
                v740 = 0u;
                v741 = 0u;
                v742 = 0u;
                v84 = OUTLINED_FUNCTION_1_18(v617, v83, &v739, &v737);
                if (v84)
                {
                  v85 = v84;
                  v75 = *v740;
                  v627 = n;
                  do
                  {
                    for (n = 0; n != v85; ++n)
                    {
                      if (*v740 != v75)
                      {
                        objc_enumerationMutation(v627);
                      }

                      v86 = *(*(&v739 + 1) + 8 * n);
                      v87 = [objb mutableCopy];
                      [v87 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"FES"];
                      OUTLINED_FUNCTION_44_9([v86 objectForKeyedSubscript:@"FESWidth"]);
                      OUTLINED_FUNCTION_44_9([v86 objectForKeyedSubscript:@"FESHeight"]);
                      OUTLINED_FUNCTION_44_9([v86 objectForKeyedSubscript:@"MaxFrameRate"]);
                      [v87 setObject:MEMORY[0x1E695E110] forKeyedSubscript:0x1F217E9B0];
                      v736 = 0;
                      v88 = OUTLINED_FUNCTION_11_28();
                      v91 = csu_resolveFormatIndexForNamedStreamFormat(v88, v89, @"[FESCompanionFormat]", v87, v60, v90);
                      if ((v91 & 0x80000000) == 0)
                      {
                        v92 = v91;
                        if ([v60 count] > v91)
                        {
                          v93 = [v60 objectAtIndexedSubscript:v92];
                          if ([objc_msgSend(v596 objectForKeyedSubscript:{@"geometricDistortionCorrection", "BOOLValue"}])
                          {
                            v94 = 1;
                          }

                          else
                          {
                            v94 = [objc_msgSend(v596 objectForKeyedSubscript:{@"geometricDistortionCorrectionForSmartCropEnabled", "BOOLValue"}];
                          }

                          v95 = [objc_msgSend(v93 objectForKeyedSubscript:{v613), "objectForKeyedSubscript:", v625}];
                          v96 = [objc_msgSend(v95 objectForKeyedSubscript:{v611), "BOOLValue"}];
                          v97 = 0;
                          if (v94)
                          {
                            v98 = 0;
                            if (v96)
                            {
                              v99 = [objc_msgSend(v95 objectForKeyedSubscript:{v593), "intValue"}];
                              v100 = [objc_msgSend(v95 objectForKeyedSubscript:{v592), "intValue"}];
                              v101 = [objc_msgSend(v95 objectForKeyedSubscript:{v590), "intValue"}];
                              v102 = [objc_msgSend(v95 objectForKeyedSubscript:{v588), "intValue"}];
                              v103 = v101 <= v99 && v102 <= v100;
                              v104 = !v103;
                              if (v104)
                              {
                                v97 = v102;
                              }

                              else
                              {
                                v97 = 0;
                              }

                              if (v104)
                              {
                                v98 = v101;
                              }

                              else
                              {
                                v98 = 0;
                              }
                            }
                          }

                          else
                          {
                            v98 = 0;
                          }

                          *&v708 = 0x1F216B190;
                          *&v722 = [MEMORY[0x1E696AD98] numberWithInt:v736];
                          *(&v708 + 1) = 0x1F216B1B0;
                          *(&v722 + 1) = [MEMORY[0x1E696AD98] numberWithInt:HIDWORD(v736)];
                          *&v709 = 0x1F217E450;
                          *&v723 = [MEMORY[0x1E696AD98] numberWithInt:v92];
                          *(&v709 + 1) = 0x1F217E5D0;
                          v105 = [objb objectForKeyedSubscript:@"SIFREnabled"];
                          v106 = MEMORY[0x1E695E110];
                          if (v105)
                          {
                            v106 = v105;
                          }

                          *(&v723 + 1) = v106;
                          *&v710 = 0x1F217E6B0;
                          v107 = [v86 objectForKeyedSubscript:?];
                          if (v107)
                          {
                            v108 = v107;
                          }

                          else
                          {
                            v108 = &unk_1F2244590;
                          }

                          *&v724 = v108;
                          *(&v710 + 1) = 0x1F217E6D0;
                          [v86 objectForKeyedSubscript:?];
                          OUTLINED_FUNCTION_7_39();
                          *(&v724 + 1) = v109;
                          *&v711 = 0x1F217E7F0;
                          [v86 objectForKeyedSubscript:?];
                          OUTLINED_FUNCTION_7_39();
                          *&v725 = v110;
                          *(&v711 + 1) = 0x1F217E810;
                          [v86 objectForKeyedSubscript:?];
                          OUTLINED_FUNCTION_7_39();
                          *(&v725 + 1) = v111;
                          v712 = 0x1F217E6F0;
                          [v86 objectForKeyedSubscript:?];
                          OUTLINED_FUNCTION_7_39();
                          v726 = v112;
                          v713 = 0x1F217E710;
                          [v86 objectForKeyedSubscript:?];
                          OUTLINED_FUNCTION_7_39();
                          v727 = v113;
                          v714 = 0x1F217E730;
                          [v86 objectForKeyedSubscript:?];
                          OUTLINED_FUNCTION_7_39();
                          v728 = v114;
                          v715 = 0x1F217E750;
                          [v86 objectForKeyedSubscript:?];
                          OUTLINED_FUNCTION_7_39();
                          v729 = v115;
                          v716 = 0x1F217E770;
                          [v86 objectForKeyedSubscript:?];
                          OUTLINED_FUNCTION_7_39();
                          v730 = v116;
                          v717 = 0x1F217E790;
                          [v86 objectForKeyedSubscript:?];
                          OUTLINED_FUNCTION_7_39();
                          v731 = v117;
                          v718 = 0x1F217EBB0;
                          v732 = [MEMORY[0x1E696AD98] numberWithInt:v98];
                          v719 = 0x1F217EBD0;
                          v733 = [MEMORY[0x1E696AD98] numberWithInt:v97];
                          v720 = 0x1F217E7B0;
                          [v86 objectForKeyedSubscript:?];
                          OUTLINED_FUNCTION_7_39();
                          v734 = v118;
                          v721 = 0x1F217E7D0;
                          [v86 objectForKeyedSubscript:?];
                          OUTLINED_FUNCTION_7_39();
                          v735 = v119;
                          [v617 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v722, &v708, 18)}];
                          v56 = a4;
                          v60 = v594;
                        }
                      }
                    }

                    v85 = [v627 countByEnumeratingWithState:&v739 objects:&v737 count:16];
                  }

                  while (v85);
                }

                [v581 setObject:v617 forKeyedSubscript:v563];
                v77 = objb;
              }

              if ([v77 objectForKeyedSubscript:v575])
              {
                [v77 objectForKeyedSubscript:v575];
                v75 = [OUTLINED_FUNCTION_53_0() mutableCopy];
                [v75 setObject:MEMORY[0x1E695E110] forKeyedSubscript:0x1F217E5D0];
                [v75 setObject:0 forKeyedSubscript:@"SIFRBinningFactor"];
                if ([n objectForKeyedSubscript:@"SensorWidth"])
                {
                  [OUTLINED_FUNCTION_27_1() objectForKeyedSubscript:?];
                  [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                }

                if ([n objectForKeyedSubscript:@"SensorHeight"])
                {
                  OUTLINED_FUNCTION_41_9();
                  [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                }

                [n objectForKeyedSubscript:@"FES"];
                [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                [n objectForKeyedSubscript:@"FESWidth"];
                [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                [n objectForKeyedSubscript:@"FESHeight"];
                [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                [OUTLINED_FUNCTION_23_12() objectForKeyedSubscript:?];
                [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                v120 = OUTLINED_FUNCTION_11_28();
                if ((OUTLINED_FUNCTION_29_9(v120, v121, @"[NonSIFRCompanionFormat]", v75) & 0x80000000) == 0 && OUTLINED_FUNCTION_42_10() > v75)
                {
                  v706[0] = 0x1F217E450;
                  v707[0] = OUTLINED_FUNCTION_32_9();
                  v707[1] = MEMORY[0x1E695E110];
                  v706[1] = 0x1F217E5D0;
                  v706[2] = 0x1F217E6F0;
                  v122 = [n objectForKeyedSubscript:?];
                  v75 = &unk_1F2244590;
                  if (v122)
                  {
                    v123 = v122;
                  }

                  else
                  {
                    v123 = &unk_1F2244590;
                  }

                  v707[2] = v123;
                  v706[3] = 0x1F217E710;
                  [OUTLINED_FUNCTION_118_0() objectForKeyedSubscript:?];
                  OUTLINED_FUNCTION_18_16();
                  v707[3] = v124;
                  [v581 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v707, v706, 4), v575}];
                }
              }

              if ([v77 objectForKeyedSubscript:v559])
              {
                n = [v77 mutableCopy];
                [n setObject:&unk_1F22445A8 forKeyedSubscript:@"SIFRBinningFactor"];
                v125 = OUTLINED_FUNCTION_11_28();
                if ((OUTLINED_FUNCTION_21_18(v125, v126, @"[FullBinSIFRCompanionFormat]") & 0x80000000) == 0 && OUTLINED_FUNCTION_42_10() > v75)
                {
                  OUTLINED_FUNCTION_32_9();
                  v127 = [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                  [OUTLINED_FUNCTION_48_10(v127 v128];
                }
              }

              if ([v77 objectForKeyedSubscript:v565])
              {
                v135 = [v77 objectForKeyedSubscript:v565];
                if (([objc_msgSend(v135 objectForKeyedSubscript:{@"Unsupported", "BOOLValue"}] & 1) == 0)
                {
                  n = [v77 mutableCopy];
                  if ([v135 objectForKeyedSubscript:@"SensorWidth"])
                  {
                    OUTLINED_FUNCTION_34_12();
                    [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                  }

                  if ([v135 objectForKeyedSubscript:@"SensorHeight"])
                  {
                    OUTLINED_FUNCTION_28_9();
                    [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                  }

                  if ([v135 objectForKeyedSubscript:@"FES"])
                  {
                    OUTLINED_FUNCTION_34_12();
                    [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                  }

                  if ([v135 objectForKeyedSubscript:@"FESWidth"])
                  {
                    OUTLINED_FUNCTION_34_12();
                    [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                  }

                  if ([v135 objectForKeyedSubscript:@"FESHeight"])
                  {
                    [v135 objectForKeyedSubscript:@"FESHeight"];
                    [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                  }

                  if (OUTLINED_FUNCTION_28_9())
                  {
                    OUTLINED_FUNCTION_28_9();
                    [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                  }

                  [n setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"OptimizedForMidFrameSynchronization"];
                  v136 = OUTLINED_FUNCTION_11_28();
                  if ((OUTLINED_FUNCTION_21_18(v136, v137, @"[MidFrameSynchronizationOptimizedCompanionFormat]") & 0x80000000) == 0 && OUTLINED_FUNCTION_42_10() > v135)
                  {
                    OUTLINED_FUNCTION_32_9();
                    v138 = [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                    [OUTLINED_FUNCTION_48_10(v138 v139];
                  }
                }
              }

              if ([v77 objectForKeyedSubscript:v573])
              {
                v146 = [v77 objectForKeyedSubscript:v573];
                n = [v77 mutableCopy];
                if ([v146 objectForKeyedSubscript:@"SensorWidth"])
                {
                  OUTLINED_FUNCTION_28_9();
                  [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                }

                if ([v146 objectForKeyedSubscript:@"SensorHeight"])
                {
                  OUTLINED_FUNCTION_28_9();
                  [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                }

                if ([v146 objectForKeyedSubscript:0x1F217E6F0])
                {
                  OUTLINED_FUNCTION_28_9();
                  [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                }

                if ([OUTLINED_FUNCTION_39() objectForKeyedSubscript:?])
                {
                  [OUTLINED_FUNCTION_39() objectForKeyedSubscript:?];
                  [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                }

                if (OUTLINED_FUNCTION_28_9())
                {
                  OUTLINED_FUNCTION_28_9();
                  [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                }

                [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
                v147 = OUTLINED_FUNCTION_11_28();
                if ((OUTLINED_FUNCTION_21_18(v147, v148, @"[ActionCameraCompanionFormat]") & 0x80000000) == 0 && OUTLINED_FUNCTION_42_10() > v146)
                {
                  OUTLINED_FUNCTION_32_9();
                  v149 = [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                  [OUTLINED_FUNCTION_48_10(v149 v150];
                }
              }

              if ([v77 objectForKeyedSubscript:v571])
              {
                [v77 objectForKeyedSubscript:v571];
                v157 = [OUTLINED_FUNCTION_53_0() mutableCopy];
                [OUTLINED_FUNCTION_27_1() objectForKeyedSubscript:?];
                [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                [n objectForKeyedSubscript:@"FESHeight"];
                [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                [v157 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"FES"];
                if ([n objectForKeyedSubscript:@"SensorWidth"])
                {
                  OUTLINED_FUNCTION_41_9();
                  [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                }

                if ([n objectForKeyedSubscript:@"SensorHeight"])
                {
                  OUTLINED_FUNCTION_41_9();
                  [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                }

                if ([n objectForKeyedSubscript:@"SIFRBinningFactor"])
                {
                  OUTLINED_FUNCTION_41_9();
                  [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                }

                if ([OUTLINED_FUNCTION_23_12() objectForKeyedSubscript:?])
                {
                  [OUTLINED_FUNCTION_23_12() objectForKeyedSubscript:?];
                  [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                }

                v158 = OUTLINED_FUNCTION_11_28();
                if ((OUTLINED_FUNCTION_29_9(v158, v159, @"[DepthCompanionFormat]", v157) & 0x80000000) == 0 && OUTLINED_FUNCTION_42_10() > v157)
                {
                  *&v690 = 0x1F217E450;
                  *type = OUTLINED_FUNCTION_32_9();
                  *(&v690 + 1) = 0x1F216B190;
                  v160 = [OUTLINED_FUNCTION_27_1() objectForKeyedSubscript:?];
                  if (v160)
                  {
                    v161 = v160;
                  }

                  else
                  {
                    v161 = &unk_1F2244590;
                  }

                  v697 = v161;
                  *&v691 = 0x1F216B1B0;
                  [n objectForKeyedSubscript:@"FESHeight"];
                  OUTLINED_FUNCTION_18_16();
                  v698 = v162;
                  *(&v691 + 1) = 0x1F217E5D0;
                  v163 = [v77 objectForKeyedSubscript:@"SIFREnabled"];
                  v164 = MEMORY[0x1E695E110];
                  if (v163)
                  {
                    v164 = v163;
                  }

                  v699 = v164;
                  *&v692 = 0x1F217E6B0;
                  [n objectForKeyedSubscript:?];
                  OUTLINED_FUNCTION_18_16();
                  v700 = v165;
                  *(&v692 + 1) = 0x1F217E6D0;
                  [n objectForKeyedSubscript:?];
                  OUTLINED_FUNCTION_18_16();
                  v701 = v166;
                  *&v693 = 0x1F217E7F0;
                  [n objectForKeyedSubscript:?];
                  OUTLINED_FUNCTION_18_16();
                  v702 = v167;
                  *(&v693 + 1) = 0x1F217E810;
                  [n objectForKeyedSubscript:?];
                  OUTLINED_FUNCTION_18_16();
                  v703 = v168;
                  v694 = 0x1F217E6F0;
                  [n objectForKeyedSubscript:?];
                  OUTLINED_FUNCTION_18_16();
                  v704 = v169;
                  v695 = 0x1F217E710;
                  [OUTLINED_FUNCTION_118_0() objectForKeyedSubscript:?];
                  OUTLINED_FUNCTION_18_16();
                  v705 = v170;
                  [v581 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", type, &v690, 10), v571}];
                }
              }

              if ([v77 objectForKeyedSubscript:v569])
              {
                [v77 objectForKeyedSubscript:v569];
                v171 = [OUTLINED_FUNCTION_53_0() mutableCopy];
                [OUTLINED_FUNCTION_27_1() objectForKeyedSubscript:?];
                [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                [n objectForKeyedSubscript:@"FESHeight"];
                [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                [v171 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"FES"];
                if ([n objectForKeyedSubscript:@"SensorWidth"])
                {
                  OUTLINED_FUNCTION_41_9();
                  [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                }

                if ([n objectForKeyedSubscript:@"SensorHeight"])
                {
                  OUTLINED_FUNCTION_41_9();
                  [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                }

                if ([n objectForKeyedSubscript:@"SIFRBinningFactor"])
                {
                  OUTLINED_FUNCTION_41_9();
                  [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                }

                if ([OUTLINED_FUNCTION_23_12() objectForKeyedSubscript:?])
                {
                  [OUTLINED_FUNCTION_23_12() objectForKeyedSubscript:?];
                  [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                }

                v172 = OUTLINED_FUNCTION_11_28();
                if ((OUTLINED_FUNCTION_29_9(v172, v173, @"[FSDNetCompanionFormat]", v171) & 0x80000000) == 0 && OUTLINED_FUNCTION_42_10() > v171)
                {
                  v683[0] = 0x1F217E450;
                  *&v684 = OUTLINED_FUNCTION_32_9();
                  v683[1] = 0x1F216B190;
                  v174 = [OUTLINED_FUNCTION_27_1() objectForKeyedSubscript:?];
                  if (v174)
                  {
                    v175 = v174;
                  }

                  else
                  {
                    v175 = &unk_1F2244590;
                  }

                  *(&v684 + 1) = v175;
                  v683[2] = 0x1F216B1B0;
                  [n objectForKeyedSubscript:@"FESHeight"];
                  OUTLINED_FUNCTION_7_39();
                  *&v685 = v176;
                  v683[3] = 0x1F217E5D0;
                  v177 = [v77 objectForKeyedSubscript:@"SIFREnabled"];
                  v178 = MEMORY[0x1E695E110];
                  if (v177)
                  {
                    v178 = v177;
                  }

                  *(&v685 + 1) = v178;
                  v683[4] = 0x1F217E6B0;
                  [n objectForKeyedSubscript:?];
                  OUTLINED_FUNCTION_7_39();
                  *&v686 = v179;
                  v683[5] = 0x1F217E6D0;
                  [n objectForKeyedSubscript:?];
                  OUTLINED_FUNCTION_7_39();
                  *(&v686 + 1) = v180;
                  v683[6] = 0x1F217E7F0;
                  [n objectForKeyedSubscript:?];
                  OUTLINED_FUNCTION_7_39();
                  *&v687 = v181;
                  v683[7] = 0x1F217E810;
                  [n objectForKeyedSubscript:?];
                  OUTLINED_FUNCTION_7_39();
                  *(&v687 + 1) = v182;
                  v683[8] = 0x1F217E6F0;
                  [n objectForKeyedSubscript:?];
                  OUTLINED_FUNCTION_7_39();
                  v688 = v183;
                  v683[9] = 0x1F217E710;
                  [OUTLINED_FUNCTION_118_0() objectForKeyedSubscript:?];
                  OUTLINED_FUNCTION_7_39();
                  v689 = v184;
                  [v581 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v684, v683, 10), v569}];
                }
              }

              if ([v77 objectForKeyedSubscript:v567])
              {
                v185 = [v77 objectForKeyedSubscript:v567];
                v186 = [v77 mutableCopy];
                if ([v185 objectForKeyedSubscript:@"SensorWidth"])
                {
                  OUTLINED_FUNCTION_34_12();
                  [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                }

                if ([v185 objectForKeyedSubscript:@"SensorHeight"])
                {
                  OUTLINED_FUNCTION_34_12();
                  [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                }

                if ([v185 objectForKeyedSubscript:0x1F217E6F0])
                {
                  OUTLINED_FUNCTION_34_12();
                  [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                }

                if ([OUTLINED_FUNCTION_39() objectForKeyedSubscript:?])
                {
                  [OUTLINED_FUNCTION_39() objectForKeyedSubscript:?];
                  [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                }

                if (OUTLINED_FUNCTION_28_9())
                {
                  OUTLINED_FUNCTION_28_9();
                  [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                }

                if (OUTLINED_FUNCTION_34_12())
                {
                  OUTLINED_FUNCTION_34_12();
                  [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                }

                [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
                [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
                [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
                [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
                [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
                v187 = OUTLINED_FUNCTION_11_28();
                v77 = objb;
                if ((OUTLINED_FUNCTION_21_18(v187, v188, @"[StereoVideoCompanionFormat]") & 0x80000000) == 0 && OUTLINED_FUNCTION_42_10() > v185)
                {
                  OUTLINED_FUNCTION_32_9();
                  v189 = [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                  [OUTLINED_FUNCTION_48_10(v189 v190];
                }
              }

              objc_autoreleasePoolPop(context);
              v197 = v581;
              if ([objc_msgSend(v77 objectForKeyedSubscript:{@"HasSensorHDRCompanionFormat", "BOOLValue"}])
              {
                v198 = [v77 mutableCopy];
                [v198 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"HDR"];
                v199 = OUTLINED_FUNCTION_11_28();
                v201 = OUTLINED_FUNCTION_21_18(v199, v200, @"[SensorHDRCompanionFormat]");
                if ((v201 & 0x80000000) == 0)
                {
                  v202 = v201;
                  if ([v60 count] > v201)
                  {
                    [MEMORY[0x1E696AD98] numberWithInt:v202];
                    [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
                  }
                }
              }

              if ([objc_msgSend(v596 objectForKeyedSubscript:{@"geometricDistortionCorrection", "BOOLValue"}])
              {
                v203 = 1;
              }

              else
              {
                v203 = [objc_msgSend(v596 objectForKeyedSubscript:{@"geometricDistortionCorrectionForSmartCropEnabled", "BOOLValue"}];
              }

              v204 = [objc_msgSend(v581 objectForKeyedSubscript:{v613), "objectForKeyedSubscript:", v625}];
              v205 = [objc_msgSend(v204 objectForKeyedSubscript:{v611), "BOOLValue"}];
              if (v203 && v205)
              {
                v206 = [objc_msgSend(v204 objectForKeyedSubscript:{v593), "intValue"}];
                v207 = v206;
                v215 = [OUTLINED_FUNCTION_46_9(v206 v208];
                v750.size.width = v207;
                v750.size.height = v215;
                v750.origin.x = 0.0;
                v750.origin.y = 0.0;
                v216 = CGRectCreateDictionaryRepresentation(v750);
                v217 = BWGetGeometricDistortionCorrectionStrengthFromDimensions(v207 | (v215 << 32), SHIDWORD(v524));
                v681[0] = v522;
                v682[0] = OUTLINED_FUNCTION_32_9();
                v681[1] = v520;
                v682[1] = [MEMORY[0x1E696AD98] numberWithInt:v215];
                v682[2] = v216;
                v681[2] = v518;
                v681[3] = v516;
                v682[3] = [MEMORY[0x1E696AD98] numberWithDouble:v217];
                v218 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v682 forKeys:v681 count:4];
                v679 = v625;
                v680 = v218;
                k = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v680 forKeys:&v679 count:1];
                v748 = [v577 setProperty:v514 value:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v584)}];
                if (v748 || (v748 = [v577 setProperty:v512 value:k]) != 0)
                {
                  OUTLINED_FUNCTION_1_5();
                  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
                  break;
                }

                v219 = [v577 getProperty:v510 error:&v748];
                if (v748)
                {
                  OUTLINED_FUNCTION_14_21();
                  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
                  break;
                }

                v220 = [v219 objectForKeyedSubscript:v625];
                if (!v220)
                {
                  LODWORD(v467) = 0;
                  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v467, v496, v476, v480, v484, v488, v492, v494);
                  v748 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58DF58, 0xFFFFCE11, "<<<< FigCaptureSourceBackingsProvider >>>>", 0x148A, v496, v462, v463, v473);
                  if (v748)
                  {
                    goto LABEL_251;
                  }

                  goto LABEL_252;
                }

                v197 = v582;
                [v582 setObject:v220 forKeyedSubscript:v508];
                v221 = [objc_msgSend(v204 objectForKeyedSubscript:{v590), "intValue"}];
                v222 = [objc_msgSend(v204 objectForKeyedSubscript:{v588), "intValue"}];
                if (v221 > v207 || v222 > v215)
                {
                  v224 = v222;
                  [MEMORY[0x1E696AD98] numberWithInt:v221];
                  [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
                  [MEMORY[0x1E696AD98] numberWithInt:v224];
                  [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
                }
              }

              v225 = csu_secondaryNativeResolutionZoomFactorsForFormatIndex([v577 portType], v60, v584);
              if ([v225 count])
              {
                [v197 setObject:v225 forKeyedSubscript:v504];
              }

              v655 = 0x1F217E6F0;
              v656 = 0x1F217E710;
              v657 = @"SensorCenterOffsetX";
              v658 = @"SensorCenterOffsetY";
              v659 = 0x1F217E770;
              v660 = 0x1F217E790;
              v661 = 0x1F217E7B0;
              v662 = 0x1F217E7D0;
              v663 = 0x1F217E7F0;
              v664 = 0x1F217E810;
              v665 = 0x1F217E6B0;
              v666 = 0x1F217E6D0;
              v667 = v551;
              v668 = v549;
              v669 = v545;
              v670 = v540;
              v671 = v538;
              v672 = @"FrontHorizontalScaleFactor";
              v673 = v536;
              v674 = v534;
              v675 = v532;
              v676 = v526;
              v677 = v530;
              v678 = v528;
              BWAddEntriesWithKeysFromDictionaryToDictionary(objb, [MEMORY[0x1E695DEC8] arrayWithObjects:&v655 count:24], v197);
              v78 = [v608 setObject:v197 forKeyedSubscript:v636];
              v76 = v553;
              v72 = v555;
              v75 = v557;
            }
          }
        }

        k = v586 + 1;
        if ((v586 + 1) == v75)
        {
          v75 = OUTLINED_FUNCTION_1_18(v78, v79, &v744, v749);
          if (v75)
          {
            goto LABEL_81;
          }

          break;
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    v464 = OUTLINED_FUNCTION_43_10(qword_1EB58DF58);
    if (OUTLINED_FUNCTION_63_7(v464))
    {
      v465 = v57;
    }

    else
    {
      v465 = v57 & 0xFFFFFFFE;
    }

    if (v465)
    {
      OUTLINED_FUNCTION_8_33(4.8151e-34);
      *(v466 + 14) = v630;
      OUTLINED_FUNCTION_15_20();
      OUTLINED_FUNCTION_7_4();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_1_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v748)
  {
LABEL_251:
    [v608 removeAllObjects];
  }

LABEL_252:
  v550 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v227 = [MEMORY[0x1E695DF70] array];
  csu_deviceSupportsWideColor(a1, a3);
  if (a1)
  {
    [objc_msgSend(*(a1 + 16) "supportedProperties")];
    v228 = *(a1 + 32);
  }

  else
  {
    [objc_msgSend(0 "supportedProperties")];
    v228 = 0;
  }

  [objc_msgSend(v228 supportedProperties];
  if (a1)
  {
    v229 = *(a1 + 32);
  }

  else
  {
    v229 = 0;
  }

  isEqualToString = objc_msgSend_isEqualToString_([v229 portType]);
  v560 = v227;
  if ((isEqualToString & 1) != 0 || (!a1 ? (v232 = 0) : (v232 = *(a1 + 32)), isEqualToString = objc_msgSend_isEqualToString_([v232 portType]), isEqualToString))
  {
    if (!a1)
    {
      [v597 count];
      v234 = 0xFFFFFFFFLL;
      goto LABEL_272;
    }

    v233 = *(a1 + 8);
    v234 = 0xFFFFFFFFLL;
    if (v233 <= 0x14 && ((1 << v233) & 0x1E7FFC) != 0)
    {
      v235 = FigCaptureFrontCameraRotationAngle(isEqualToString, v231);
      if (v235 % 180 == 90)
      {
        v234 = FigCaptureNormalizeAngle(v235 - 90);
      }
    }
  }

  else
  {
    v234 = 0xFFFFFFFFLL;
  }

  v236 = [v597 count];
  if (a1)
  {
    if (v236)
    {
      v237 = *(a1 + 12);
      if (v237 <= 8 && ((1 << v237) & 0x10E) != 0)
      {
        v238 = [-[FigCaptureSourceStreamsContainer portTypesSupportingDepth](a1) firstObject];
        if (v238)
        {
          [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{v238), "getProperty:error:", *off_1E798BDE8, 0}];
        }
      }
    }
  }

LABEL_272:
  OUTLINED_FUNCTION_36_12();
  v541 = OUTLINED_FUNCTION_62_5(v239, v240, v241, v242, v243, v244, v245, v246, v468, v474, v476, v480, v484, v488, v492, v494, v496, v498, v500, v502, v504, v506, v508, v510, v512, v514, v516, v518, v520, v522, v524, v526, v528, v530, v532, v534, v536, v538, v540, v543, v545, v547);
  if (v541)
  {
    OUTLINED_FUNCTION_51_9();
    v539 = v247;
    v570 = 0x1F217E490;
    v585 = 0x1F217F970;
    v587 = 0x1F217F950;
    v558 = 0x1F217FA50;
    v574 = 0x1F217F6D0;
    v556 = 0x1F217F9B0;
    v554 = 0x1F217FA70;
    v583 = 0x1F217FA90;
    v566 = 0x1F217FAD0;
    v552 = 0x1F217FB30;
    v578 = 0x1F217FE30;
    contexta = @"GeometricDistortionCorrectionCaptureStreamFormat";
    v576 = *MEMORY[0x1E6966130];
    v562 = @"ProResSupported";
    v564 = 0x1F217FFB0;
    v618 = *off_1E798C078;
    v568 = 0x1F217F9F0;
    while (1)
    {
      OUTLINED_FUNCTION_51_9();
      if (v249 != v539)
      {
        v250 = v248;
        objc_enumerationMutation(v548);
        v248 = v250;
      }

      v546 = v248;
      v251 = *(v738 + 8 * v248);
      v572 = [v548 objectForKeyedSubscript:v251];
      if (([v251 hasSuffix:@"CinematicFraming"] & 1) == 0)
      {
        [v251 hasSuffix:@"GeometricDistortionCorrection"];
      }

      v601 = [MEMORY[0x1E695DF90] dictionary];
      v589 = v251;
      [v601 setObject:v572 forKeyedSubscript:v251];
      v252 = [v572 objectForKeyedSubscript:@"Variants"];
      if (v252)
      {
        v253 = v252;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v601 addEntriesFromDictionary:v253];
        }

        [v572 setObject:0 forKeyedSubscript:@"Variants"];
      }

      v591 = [v601 allKeys];
      v254 = [v591 countByEnumeratingWithState:type objects:&v722 count:16];
      v602 = v254;
      if (v254)
      {
        v600 = *v698;
        do
        {
          v262 = 0;
          do
          {
            if (*v698 != v600)
            {
              objc_enumerationMutation(v591);
            }

            v609 = v262;
            v263 = v697[v262];
            v264 = [v601 objectForKeyedSubscript:v263];
            if (([objc_msgSend(v264 objectForKeyedSubscript:{@"Unsupported", "BOOLValue"}] & 1) == 0)
            {
              if ((objc_msgSend_isEqualToString_(v263) & 1) == 0)
              {
                v265 = [v572 mutableCopy];
                [v265 setValuesForKeysWithDictionary:v264];
                [v265 setObject:0 forKeyedSubscript:v570];
                v264 = v265;
              }

              v266 = [objc_msgSend(v264 objectForKeyedSubscript:{v587), "BOOLValue"}];
              v267 = [objc_msgSend(v264 objectForKeyedSubscript:{v585), "BOOLValue"}];
              v268 = a1;
              if (a1)
              {
                v268 = *(a1 + 8) == 14;
              }

              v637 = v263;
              if (((v266 | v267) & 1) != 0 || v268)
              {
                k = [v264 objectForKeyedSubscript:v568];
                v469 = v263;
                v475 = @"CinematicFraming";
                v269 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@"];
                v270 = [v608 objectForKeyedSubscript:k];
                v271 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v264];
                if (v270)
                {
                  v272 = v271;
                  [v271 setObject:k forKeyedSubscript:@"CaptureStreamFormat"];
                  [v272 setObject:0 forKeyedSubscript:v568];
                  k = v558;
                  v273 = [objc_msgSend(v264 objectForKeyedSubscript:{v558), "intValue"}];
                  if (v273)
                  {
                    v273 = [v272 setObject:objc_msgSend(v264 forKeyedSubscript:{"objectForKeyedSubscript:", v558), @"MaxFrameRateOverride"}];
                  }

                  OUTLINED_FUNCTION_31_11(v273, v274, v275, v276, v277, v278, v279, v280, v469, @"CinematicFraming", v477, v481, v485, v489, v493, v495, v497, v499, v501, v503, v505, v507, v509, v511, v513, v515, v517, v519, v521, v523, v525, v527, v529, v531, v533, v535, v537, v539, v541, v544, v546, v548, v550, v552, v554, v556, v558, v560, v562, v564, v566, v568, v570, v572, v574);
                  OUTLINED_FUNCTION_30_5();
                  v470 = v281;
                  OUTLINED_FUNCTION_9_32();
                  SourceFormatDictFromDeviceFormat = csu_createSourceFormatDictFromDeviceFormat(v282, v283, v284, v285, v286, v287, v288, k, v470, v56, v478, v482, v486, v490);
                  v263 = v637;
                  if (!SourceFormatDictFromDeviceFormat && ([OUTLINED_FUNCTION_46_9(0 v289] & 1) == 0)
                  {
                    [v560 addObject:v269];
                  }

                  v296 = MEMORY[0x1E695E118];
                  [SourceFormatDictFromDeviceFormat setObject:MEMORY[0x1E695E118] forKeyedSubscript:v556];
                  [SourceFormatDictFromDeviceFormat setObject:v296 forKeyedSubscript:v554];
                }

                else
                {
                  SourceFormatDictFromDeviceFormat = 0;
                  v263 = v637;
                }
              }

              else
              {
                SourceFormatDictFromDeviceFormat = 0;
              }

              v297 = v56;
              if ([objc_msgSend(v264 objectForKeyedSubscript:{v583), "BOOLValue"}])
              {
                k = [v264 objectForKeyedSubscript:v566];
                v469 = v263;
                v475 = @"SmartCrop";
                v298 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@"];
                v299 = [v608 objectForKeyedSubscript:k];
                v300 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v264];
                if (v299)
                {
                  v301 = v300;
                  [v300 setObject:k forKeyedSubscript:@"CaptureStreamFormat"];
                  [v301 setObject:0 forKeyedSubscript:v566];
                  k = v552;
                  v302 = [objc_msgSend(v264 objectForKeyedSubscript:{v552), "intValue"}];
                  if (v302)
                  {
                    v302 = [v301 setObject:objc_msgSend(v264 forKeyedSubscript:{"objectForKeyedSubscript:", v552), @"MaxFrameRateOverride"}];
                  }

                  OUTLINED_FUNCTION_31_11(v302, v303, v304, v305, v306, v307, v308, v309, v469, @"SmartCrop", v477, v481, v485, v489, v493, v495, v497, v499, v501, v503, v505, v507, v509, v511, v513, v515, v517, v519, v521, v523, v525, v527, v529, v531, v533, v535, v537, v539, v541, v544, v546, v548, v550, v552, v554, v556, v558, v560, v562, v564, v566, v568, v570, v572, v574);
                  OUTLINED_FUNCTION_30_5();
                  v471 = v310;
                  OUTLINED_FUNCTION_9_32();
                  v604 = csu_createSourceFormatDictFromDeviceFormat(v311, v312, v313, v314, v315, v316, v317, k, v471, v297, v479, v483, v487, v491);
                  v263 = v637;
                  if (!v604)
                  {
                    [v560 addObject:v298];
                    goto LABEL_309;
                  }
                }

                else
                {
                  v604 = 0;
                  v263 = v637;
                }
              }

              else
              {
LABEL_309:
                v604 = 0;
              }

              if ([v264 objectForKeyedSubscript:contexta])
              {
                v318 = [v264 objectForKeyedSubscript:contexta];
                v469 = v263;
                v475 = @"GeometricDistortionCorrection";
                v631 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@"];
                v319 = [v608 objectForKeyedSubscript:v318];
                [MEMORY[0x1E695DF90] dictionaryWithDictionary:v264];
                if (v319)
                {
                  OUTLINED_FUNCTION_40_10();
                  [v320 setObject:? forKeyedSubscript:?];
                  [k setObject:0 forKeyedSubscript:contexta];
                  OUTLINED_FUNCTION_30_5();
                  v472 = v321;
                  OUTLINED_FUNCTION_9_32();
                  v336 = csu_createSourceFormatDictFromDeviceFormat(v322, v323, v324, v325, v326, v327, v328, v319, v472, v297, v477, v481, v485, v489);
                  v337 = v578;
                  v263 = v637;
                  if (!v336)
                  {
                    if (([OUTLINED_FUNCTION_46_9(0 v329] & 1) == 0)
                    {
                      [v560 addObject:v631];
                    }

                    v336 = 0;
                  }
                }

                else
                {
                  v336 = 0;
                  v337 = v578;
                  v263 = v637;
                }
              }

              else
              {
                v336 = 0;
                v337 = v578;
              }

              v605 = v336;
              if ([OUTLINED_FUNCTION_12_0() objectForKeyedSubscript:?])
              {
                v338 = [OUTLINED_FUNCTION_12_0() objectForKeyedSubscript:?];
                v469 = v263;
                v475 = @"FastSwitchingMain";
                v339 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@"];
                v340 = [v608 objectForKeyedSubscript:v338];
                [MEMORY[0x1E695DF90] dictionaryWithDictionary:v264];
                if (v340)
                {
                  OUTLINED_FUNCTION_40_10();
                  [v341 setObject:? forKeyedSubscript:?];
                  [k setObject:0 forKeyedSubscript:v337];
                  OUTLINED_FUNCTION_9_32();
                  k = csu_createSourceFormatDictFromDeviceFormat(v342, v343, v344, v345, v346, v347, v348, v340, a3, a4, 0, 0, 0, 0);
                  v336 = v605;
                  v263 = v637;
                  if (!k)
                  {
                    if (([OUTLINED_FUNCTION_46_9(0 v349] & 1) == 0)
                    {
                      [v560 addObject:v339];
                    }

                    goto LABEL_324;
                  }
                }

                else
                {
                  k = 0;
                  v336 = v605;
                  v263 = v637;
                }
              }

              else
              {
LABEL_324:
                k = 0;
              }

              v356 = [v264 objectForKeyedSubscript:v576];
              if (v356)
              {
                v364 = [OUTLINED_FUNCTION_12_0() objectForKeyedSubscript:?];
                v356 = FigCapturePixelFormatTypeFromPlistValue(v364, v365);
                v366 = v356 != 2016686642;
              }

              else
              {
                v366 = 1;
              }

              v367 = [OUTLINED_FUNCTION_46_9(v356 v357];
              v599 = k;
              if ((v367 & 1) != 0 || v366)
              {
                if (v367)
                {
                  goto LABEL_344;
                }
              }

              else
              {
                v368 = [objc_msgSend(v264 objectForKeyedSubscript:{v564), "intValue"}];
                v369 = [objc_msgSend(a4 objectForKeyedSubscript:{v562), "BOOLValue"}];
                if (!v369 || BWGetDiskCapacityInGB(v369, v370) < v368)
                {
                  goto LABEL_344;
                }
              }

              OUTLINED_FUNCTION_9_32();
              v379 = csu_createSourceFormatDictFromDeviceFormat(v371, v372, v373, v374, v375, v376, v377, v378, a3, a4, SourceFormatDictFromDeviceFormat, v336, k, v604);
              if (v379)
              {
                v387 = v379;
                v388 = [MEMORY[0x1E695DF70] array];
                [v550 addObject:v387];
                v389 = [OUTLINED_FUNCTION_23_12() addObject:?];
                if (v336)
                {
                  v389 = [OUTLINED_FUNCTION_118_0() addObject:?];
                }

                if (SourceFormatDictFromDeviceFormat)
                {
                  v389 = [v388 addObject:?];
                }

                v598 = v387;
                if (v604)
                {
                  v389 = [OUTLINED_FUNCTION_12_0() addObject:?];
                }
              }

              else
              {
                if (([OUTLINED_FUNCTION_46_9(0 v380] & 1) == 0)
                {
                  [v560 addObject:v263];
                }

LABEL_344:
                v389 = [MEMORY[0x1E695DF70] array];
                v388 = v389;
                v598 = 0;
              }

              v693 = 0u;
              v692 = 0u;
              v691 = 0u;
              v690 = 0u;
              v638 = OUTLINED_FUNCTION_1_18(v389, v390, &v690, &v708);
              if (!v638)
              {
                goto LABEL_386;
              }

              v632 = *v691;
              v622 = v388;
              while (2)
              {
                v391 = 0;
LABEL_348:
                if (*v691 != v632)
                {
                  objc_enumerationMutation(v622);
                }

                v392 = *(*(&v690 + 1) + 8 * v391);
                if (v234 != -1)
                {
                  [MEMORY[0x1E696AD98] numberWithInt:v234];
                  [OUTLINED_FUNCTION_47() setObject:? forKeyedSubscript:?];
                  v393 = [v392 objectForKeyedSubscript:0x1F217EC70];
                  v684 = 0u;
                  v685 = 0u;
                  v686 = 0u;
                  v687 = 0u;
                  v394 = [v393 countByEnumeratingWithState:&v684 objects:v749 count:16];
                  if (v394)
                  {
                    v395 = v394;
                    v396 = *v685;
                    do
                    {
                      for (ii = 0; ii != v395; ++ii)
                      {
                        if (*v685 != v396)
                        {
                          objc_enumerationMutation(v393);
                        }

                        k = *(*(&v684 + 1) + 8 * ii);
                        [MEMORY[0x1E696AD98] numberWithInt:v234];
                        [OUTLINED_FUNCTION_28() setObject:? forKeyedSubscript:?];
                      }

                      v395 = [v393 countByEnumeratingWithState:&v684 objects:v749 count:16];
                    }

                    while (v395);
                  }
                }

                if (![objc_msgSend(v392 objectForKeyedSubscript:{0x1F217EC70), "count"}])
                {
                  [v392 setObject:0 forKeyedSubscript:0x1F217ECF0];
                  [v392 setObject:0 forKeyedSubscript:0x1F217ECD0];
                  [v392 setObject:0 forKeyedSubscript:0x1F217ED50];
                }

                v398 = +[FigCaptureCameraParameters sharedInstance];
                v399 = [(FigCaptureSourceStreamsContainer *)a1 streamProvidingSDOFRenderingParameters];
                if (v399)
                {
                  v400 = [(FigCaptureCameraParameters *)v398 sensorIDDictionaryForStream:v399];
                }

                else
                {
                  v400 = 0;
                }

                if ([v392 objectForKeyedSubscript:0x1F217FF70])
                {
                  if ([v400 valueForKeyPath:@"CinematicVideoParameters.simulatedVideoAperture"])
                  {
                    [OUTLINED_FUNCTION_47() setObject:? forKeyedSubscript:?];
                  }

                  k = [v400 valueForKeyPath:@"CinematicVideoParameters.minimumSimulatedVideoAperture"];
                  [k floatValue];
                  if (v401 > 0.0)
                  {
                    [v392 setObject:k forKeyedSubscript:0x1F217EDD0];
                    k = [v400 valueForKeyPath:@"CinematicVideoParameters.maximumSimulatedVideoAperture"];
                    [k floatValue];
                    if (v402 > 0.0)
                    {
                      [v392 setObject:k forKeyedSubscript:0x1F217EDF0];
                    }
                  }
                }

                v403 = [v392 objectForKeyedSubscript:0x1F217F090];
                if (v399 && v403)
                {
                  v404 = [v399 getProperty:v618 error:0];
                  v623 = v400;
                  if ([v399 portType] && (v405 = objc_msgSend(v399, "portType"), v406 = +[FigCaptureCameraParameters sensorIDStringFromModuleInfo:](FigCaptureCameraParameters, "sensorIDStringFromModuleInfo:", v404), LODWORD(v407) = 1.0, v408 = -[FigCaptureCameraParameters sdofRenderingVersionForPortType:sensorIDString:zoomFactor:](v398, "sdofRenderingVersionForPortType:sensorIDString:zoomFactor:", v405, v406, v407), v408))
                  {
                    v410 = v408;
                    LODWORD(v409) = 1.0;
                    v411 = [FigCaptureCameraParameters sdofTuningParametersForSensorIDDictionary:v400 zoomFactor:v409];
                    if (v410 >= 5)
                    {
                      v412 = [MEMORY[0x1E696AD60] stringWithFormat:@"SLMv%d", v410];
                      goto LABEL_377;
                    }
                  }

                  else
                  {
                    v411 = 0;
                  }

                  v412 = @"SLM";
LABEL_377:
                  v413 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.simulatedAperture", v412];
                  v414 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.minimumSimulatedAperture", v412];
                  v469 = v412;
                  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.maximumSimulatedAperture"];
                  if ([v411 valueForKeyPath:v413])
                  {
                    [OUTLINED_FUNCTION_47() setObject:? forKeyedSubscript:?];
                  }

                  k = [v411 valueForKeyPath:v414];
                  [k floatValue];
                  if (v415 > 0.0)
                  {
                    [v392 setObject:k forKeyedSubscript:0x1F217EDD0];
                    v416 = [OUTLINED_FUNCTION_39() valueForKeyPath:?];
                    [v416 floatValue];
                    if (v417 > 0.0)
                    {
                      [v392 setObject:v416 forKeyedSubscript:0x1F217EDF0];
                    }
                  }

                  if ([v623 valueForKeyPath:@"PortraitLightingParameters.effectStrength"])
                  {
                    [OUTLINED_FUNCTION_47() setObject:? forKeyedSubscript:?];
                    [v623 valueForKeyPath:@"PortraitLightingParameters.minEffectStrength"];
                    [OUTLINED_FUNCTION_47() setObject:? forKeyedSubscript:?];
                    [v623 valueForKeyPath:@"PortraitLightingParameters.maxEffectStrength"];
                    [OUTLINED_FUNCTION_47() setObject:? forKeyedSubscript:?];
                  }
                }

                if (++v391 == v638)
                {
                  v638 = [v622 countByEnumeratingWithState:&v690 objects:&v708 count:16];
                  if (!v638)
                  {
LABEL_386:

                    v56 = a4;
                    break;
                  }

                  continue;
                }

                goto LABEL_348;
              }
            }

            v262 = v609 + 1;
          }

          while (v609 + 1 != v602);
          v254 = [v591 countByEnumeratingWithState:type objects:&v722 count:16];
          v602 = v254;
        }

        while (v254);
      }

      if (v546 + 1 == v541)
      {
        v541 = OUTLINED_FUNCTION_62_5(v254, v255, v256, v257, v258, v259, v260, v261, v469, v475, v477, v481, v485, v489, v493, v495, v497, v499, v501, v503, v505, v507, v509, v511, v513, v515, v517, v519, v521, v523, v525, v527, v529, v531, v533, v535, v537, v539, v541, v544, v546, v548);
        if (!v541)
        {
          break;
        }
      }
    }
  }

  [v550 sortUsingFunction:csu_compareSourceFormats context:0];
  if ([v560 count])
  {
    *v499 = v560;
  }

  v722 = 0u;
  v723 = 0u;
  v724 = 0u;
  v725 = 0u;
  v418 = v544;
  v421 = OUTLINED_FUNCTION_37(v419, v420, &v722, &v655);
  if (v421)
  {
    v422 = v421;
    objc = 0;
    v423 = *v723;
    v633 = *MEMORY[0x1E6983558];
    v626 = *MEMORY[0x1E69837F0];
    v624 = *MEMORY[0x1E69837C8];
    do
    {
      for (jj = 0; jj != v422; ++jj)
      {
        if (*v723 != v423)
        {
          objc_enumerationMutation(v418);
        }

        v425 = *(*(&v722 + 1) + 8 * jj);
        v426 = [v418 objectForKeyedSubscript:v425];
        v427 = [v426 objectForKeyedSubscript:@"VideoCodec"];
        v428 = [v548 objectForKeyedSubscript:{objc_msgSend(v426, "objectForKeyedSubscript:", @"DeviceFormat"}];
        if (v428)
        {
          v430 = v428;
          v431 = [objc_msgSend(v428 objectForKeyedSubscript:{0x1F216B190), "intValue"}];
          v432 = [objc_msgSend(v430 objectForKeyedSubscript:{0x1F216B1B0), "intValue"}];
          v433 = [objc_msgSend(v426 objectForKeyedSubscript:{@"VideoCompressionProperties", "mutableCopy"}];
          v428 = [v433 objectForKeyedSubscript:v633];
          if (v428)
          {
            [v426 objectForKeyedSubscript:@"MaxFrameRate"];
            [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
            [v433 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v626];
            [v433 setObject:&unk_1F22445C0 forKeyedSubscript:v624];
            v434 = MEMORY[0x1E695DF20];
            v435 = [MEMORY[0x1E696AD98] numberWithInt:v431];
            v436 = [v434 dictionaryWithObjectsAndKeys:{v427, @"AVVideoCodecKey", v435, @"AVVideoWidthKey", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v432), @"AVVideoHeightKey", v433, @"AVVideoCompressionPropertiesKey", 0}];
            v437 = objc;
            if (!objc)
            {
              v437 = objc_alloc_init(MEMORY[0x1E695DF90]);
            }

            objc = v437;
            v428 = [v437 setObject:v436 forKeyedSubscript:v425];
          }

          v56 = a4;
        }

        v418 = v544;
      }

      v422 = OUTLINED_FUNCTION_37(v428, v429, &v722, &v655);
    }

    while (v422);
  }

  else
  {
    objc = 0;
  }

  [v56 setObject:objc forKeyedSubscript:@"AVCaptureSessionPresetCompressionSettings"];

  return v550;
}

void *csu_createVideoCaptureSourceInfoForCaptureDeviceFromModelSpecificPlist_cold_1(void *a1, void *a2, uint64_t a3)
{
  v6 = [(FigCaptureSourceStreamsContainer *)a1 switchOverZoomFactors];
  result = [v6 count];
  if (result)
  {
    [a2 setObject:v6 forKeyedSubscript:a3];
    [(FigCaptureSourceStreamsContainer *)a1 switchOverZoomFactorsWithoutFudge];
    return [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
  }

  return result;
}

uint64_t __csu_removeUnsupportedDeviceFormatsAndDependentPresets_block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t __csu_resolveSessionPresetAliases_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

CGAffineTransform *mscsnu_getTransformFromSensorSpaceToSampleBufferWithNondisruptiveSwitching@<X0>(void *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  FigCaptureGetTransformFromSensorSpaceToSampleBuffer(a1, a3);
  v21 = *(MEMORY[0x1E695EFD0] + 16);
  v22 = *MEMORY[0x1E695EFD0];
  *&v24.a = *MEMORY[0x1E695EFD0];
  *&v24.c = v21;
  v20 = *(MEMORY[0x1E695EFD0] + 32);
  *&v24.tx = v20;
  v5 = *off_1E798B710;
  if (![a2 objectForKeyedSubscript:*off_1E798B710] || objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", v5), "BOOLValue"))
  {
    v6 = [a2 objectForKeyedSubscript:*off_1E798B220];
    v7 = [a2 objectForKeyedSubscript:*off_1E798B218];
    v8 = v6 ? [v6 objectForKeyedSubscript:{objc_msgSend(objc_msgSend(v6, "allKeys"), "firstObject")}] : objc_msgSend(v7, "firstObject");
    v9 = v8;
    if (v8)
    {
      v10 = *off_1E798B508;
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B508), "floatValue"}];
      if (v11 > 0.0)
      {
        v12 = v11;
        [objc_msgSend(v9 objectForKeyedSubscript:{v10), "floatValue"}];
        if (v13 > 0.0)
        {
          v14 = v12 == 2.0;
          if (v13 == 2.0)
          {
            v14 = 1;
          }

          if (v12 != v13 && v14)
          {
            v16 = (v12 / v13);
            *&v26.a = v22;
            *&v26.c = v21;
            *&v26.tx = v20;
            CGAffineTransformScale(&v24, &v26, v16, v16);
            t1 = v24;
            CGAffineTransformTranslate(&v26, &t1, (1.0 / v16 + -1.0) * 0.5, (1.0 / v16 + -1.0) * 0.5);
            v24 = v26;
          }
        }
      }
    }
  }

  v26 = v24;
  result = CGAffineTransformIsIdentity(&v26);
  if ((result & 1) == 0)
  {
    v18 = a3[1];
    *&t1.a = *a3;
    *&t1.c = v18;
    *&t1.tx = a3[2];
    t2 = v24;
    result = CGAffineTransformConcat(&v26, &t1, &t2);
    v19 = *&v26.c;
    *a3 = *&v26.a;
    a3[1] = v19;
    a3[2] = *&v26.tx;
  }

  return result;
}

void BWAddMinimumValidBufferRectForGDCIfNeededToSampleBuffer()
{
  OUTLINED_FUNCTION_12_30();
  v49 = v0;
  v50 = v7;
  v8 = v6;
  v10 = v9;
  v12 = v11;
  v13 = v5;
  if (v6)
  {
    v14 = *v6;
  }

  else
  {
    v14 = 0;
  }

  ValidBufferRect = FigCaptureMetadataUtilitiesGetValidBufferRect(v5);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  FigCaptureMetadataUtilitiesGetFinalCropRect(v13);
  OUTLINED_FUNCTION_26_2();
  v55.origin.x = 0.0;
  v55.origin.y = 0.0;
  v55.size.width = 1.0;
  v55.size.height = 1.0;
  v22 = CGRectEqualToRect(v51, v55);
  v23 = [objc_msgSend(v13 objectForKeyedSubscript:{*off_1E798A690), "BOOLValue"}];
  v24 = [objc_msgSend(v13 objectForKeyedSubscript:{*off_1E798A698), "intValue"}];
  if (!v22 && v23 && v24 != 1)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    if ([MEMORY[0x1E69916C0] getGDCParams:&v42 cameraInfo:v10 metadata:v13])
    {
      goto LABEL_12;
    }

    if (v14)
    {
      if ([v14 updateGDCParams:&v42])
      {
LABEL_12:
        OUTLINED_FUNCTION_1_5();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
        goto LABEL_23;
      }
    }

    else
    {
      v14 = [objc_alloc(MEMORY[0x1E69916C0]) initWithGDCParams:&v42];
      if (!v14)
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
LABEL_23:
        if (!v8)
        {
          goto LABEL_24;
        }

        goto LABEL_19;
      }
    }

    v26 = OUTLINED_FUNCTION_3_0();
    [v14 preGDCCropRectFromRect:{FigCaptureMetadataUtilitiesNormalizedSensorRectFromNormalizedBufferRect(v27, v28, v26, v29, v30, v31)}];
    v36 = FigCaptureMetadataUtilitiesNormalizedBufferRectFromNormalizedSensorRect(v13, v12, v32, v33, v34, v35);
    FigCaptureMetadataUtilitiesDenormalizeCropRect(v36, v37, v38, v39, v12, SHIDWORD(v12));
    OUTLINED_FUNCTION_26_2();
    if (!CGRectIsNull(v52))
    {
      v53.origin.x = ValidBufferRect;
      v53.origin.y = v17;
      v53.size.width = v19;
      v53.size.height = v21;
      v56.origin.x = v1;
      v56.origin.y = v2;
      v56.size.width = v3;
      v56.size.height = v4;
      if (!CGRectContainsRect(v53, v56))
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v40, v41, v42, *(&v42 + 1), v43, *(&v43 + 1), v44, DWORD2(v44));
      }

      OUTLINED_FUNCTION_3_0();
      FigCaptureMetadataUtilitiesRoundDenormalizedRectToRawSensorCFABoundary(v13);
      v57.origin.x = ValidBufferRect;
      v57.origin.y = v17;
      v57.size.width = v19;
      v57.size.height = v21;
      CGRectIntersection(v54, v57);
      FigCFDictionarySetCGRect();
    }
  }

  if (!v8)
  {
LABEL_24:

    goto LABEL_25;
  }

LABEL_19:
  if (!*v8)
  {
    *v8 = v14;
  }

LABEL_25:
  OUTLINED_FUNCTION_11_29();
}

uint64_t CMIOExtensionFigCaptureDeviceCreate(uint64_t a1, void *a2, CFTypeRef *a3)
{
  if (objc_opt_class() && objc_opt_class())
  {
    v6 = [MEMORY[0x1E6963468] sharedInstance];

    CMIOExtensionFigCaptureDeviceCreateInternal(a1, a2, v6, a3);
  }

  return 4294954514;
}

uint64_t CMIOExtensionFigCaptureDeviceInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(DerivedStorage + 24) & 1) == 0)
  {
    v2 = DerivedStorage;
    os_unfair_lock_lock((DerivedStorage + 28));
    *(v2 + 24) = 1;

    v3 = *(v2 + 8);
    v12 = OUTLINED_FUNCTION_1_3(v4, v5, v6, v7, v8, v9, v10, v11, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58);
    if (v12)
    {
      v20 = v12;
      v21 = MEMORY[0];
      do
      {
        v22 = 0;
        do
        {
          if (MEMORY[0] != v21)
          {
            objc_enumerationMutation(v3);
          }

          v23 = *(8 * v22);
          if (v23)
          {
            VTable = CMBaseObjectGetVTable();
            v25 = *(VTable + 8);
            v12 = VTable + 8;
            v26 = *(v25 + 24);
            if (v26)
            {
              v12 = v26(v23);
            }
          }

          ++v22;
        }

        while (v20 != v22);
        v12 = OUTLINED_FUNCTION_1_3(v12, v13, v14, v15, v16, v17, v18, v19, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59);
        v20 = v12;
      }

      while (v12);
    }

    os_unfair_lock_unlock((v2 + 28));
  }

  return 0;
}

void CMIOExtensionFigCaptureDeviceFinalize(uint64_t a1)
{
  CMIOExtensionFigCaptureDeviceInvalidate(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 32);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 32) = 0;
  }
}

uint64_t FigSampleBufferAutofocusProcessorCopyTimestampedExposureModes(uint64_t a1, const __CFArray *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *MEMORY[0x1E695E480];
  if (a2)
  {
    Count = CFArrayGetCount(a2);
  }

  else
  {
    Count = 0;
  }

  Mutable = CFArrayCreateMutable(v5, Count, MEMORY[0x1E695E9C0]);
  FigSimpleMutexLock();
  v8 = 0;
  v9 = DerivedStorage + 17376;
  v10 = *off_1E798A5C0;
  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_5:
  for (i = CFArrayGetCount(a2); v8 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v8);
    CMTimeMakeFromDictionary(&time, ValueAtIndex);
    Seconds = CMTimeGetSeconds(&time);
    v14 = 0;
    Value = 0;
    do
    {
      if (Seconds == *(v9 + v14))
      {
        Value = CFDictionaryGetValue(*(v9 + 16 * v8 + 8), v10);
      }

      v14 += 16;
    }

    while (v14 != 320);
    if (!Value)
    {
      break;
    }

    CFArrayAppendValue(Mutable, Value);
    CFRelease(Value);
    ++v8;
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_6:
    ;
  }

  FigSimpleMutexUnlock();
  if (a3 && v8 >= i)
  {
    if (Mutable)
    {
      v16 = CFRetain(Mutable);
    }

    else
    {
      v16 = 0;
    }

    *a3 = v16;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return 0;
}

uint64_t configureDevice_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  v7 = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v1, v9, v10, v11, v12, vars0, vars8);
  emitter = fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14, "|___ fsbp_Autofocus ___|", 0x265, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t processBuffer_cold_7(int a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_22();
  v3 = a1;
  return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v4, v5, v6, v7, v8, vars0, vars8);
}

uint64_t processBuffer_cold_8(int a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_22();
  v3 = a1;
  return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v4, v5, v6, v7, v8, vars0, vars8);
}

uint64_t FigExternalStorageDeviceManagerCreate_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4BALL, "<<< FigExternalStorageDeviceManager >>>", 0x333, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManagerCreate_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4BALL, "<<< FigExternalStorageDeviceManager >>>", 0x330, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManagerCreate_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4BALL, "<<< FigExternalStorageDeviceManager >>>", 0x32D, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManagerCreate_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4BALL, "<<< FigExternalStorageDeviceManager >>>", 0x32A, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManagerCreate_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4BALL, "<<< FigExternalStorageDeviceManager >>>", 0x327, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManagerCreate_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B9, "<<< FigExternalStorageDeviceManager >>>", 0x31F, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B9, "<<< FigExternalStorageDeviceManager >>>", 0x83, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B8, "<<< FigExternalStorageDeviceManager >>>", 0x82, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_BeginMonitoring_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B9, "<<< FigExternalStorageDeviceManager >>>", 0x178, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B3, "<<< FigExternalStorageDeviceManager >>>", 0x1DC, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4BALL, "<<< FigExternalStorageDeviceManager >>>", 0x1D3, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4BALL, "<<< FigExternalStorageDeviceManager >>>", 0x1CE, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4BALL, "<<< FigExternalStorageDeviceManager >>>", 0x1B8, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B3, "<<< FigExternalStorageDeviceManager >>>", 0x1B3, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B3, "<<< FigExternalStorageDeviceManager >>>", 0x1B0, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B9, "<<< FigExternalStorageDeviceManager >>>", 0x1AA, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B9, "<<< FigExternalStorageDeviceManager >>>", 0x1A9, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B9, "<<< FigExternalStorageDeviceManager >>>", 0x1A8, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_12(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B9, "<<< FigExternalStorageDeviceManager >>>", 0x1A7, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_13(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B9, "<<< FigExternalStorageDeviceManager >>>", 0x1A5, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4BALL, "<<< FigExternalStorageDeviceManager >>>", 0x22B, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4BALL, "<<< FigExternalStorageDeviceManager >>>", 0x229, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4BALL, "<<< FigExternalStorageDeviceManager >>>", 0x226, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B3, "<<< FigExternalStorageDeviceManager >>>", 0x235, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B3, "<<< FigExternalStorageDeviceManager >>>", 0x207, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B3, "<<< FigExternalStorageDeviceManager >>>", 0x204, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B9, "<<< FigExternalStorageDeviceManager >>>", 0x1FB, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B9, "<<< FigExternalStorageDeviceManager >>>", 0x1FA, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B9, "<<< FigExternalStorageDeviceManager >>>", 0x1F9, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_12(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B9, "<<< FigExternalStorageDeviceManager >>>", 0x1F8, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_13(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B9, "<<< FigExternalStorageDeviceManager >>>", 0x1F6, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B4, "<<< FigExternalStorageDeviceManager >>>", 0x26C, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B3, "<<< FigExternalStorageDeviceManager >>>", 0x269, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B3, "<<< FigExternalStorageDeviceManager >>>", 0x266, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B4, "<<< FigExternalStorageDeviceManager >>>", 0x287, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B3, "<<< FigExternalStorageDeviceManager >>>", 0x280, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B3, "<<< FigExternalStorageDeviceManager >>>", 0x27D, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B4, "<<< FigExternalStorageDeviceManager >>>", 0x29F, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B3, "<<< FigExternalStorageDeviceManager >>>", 0x29C, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B3, "<<< FigExternalStorageDeviceManager >>>", 0x299, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B3, "<<< FigExternalStorageDeviceManager >>>", 0x2CE, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B3, "<<< FigExternalStorageDeviceManager >>>", 0x2CB, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_12(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFCE10, "<<< FigExternalStorageDeviceManager >>>", 0x2D9, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_13(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B3, "<<< FigExternalStorageDeviceManager >>>", 0x2D6, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_14(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B3, "<<< FigExternalStorageDeviceManager >>>", 0x2D3, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_15(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B3, "<<< FigExternalStorageDeviceManager >>>", 0x2DF, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_16(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B9, "<<< FigExternalStorageDeviceManager >>>", 0x2B5, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_17(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B9, "<<< FigExternalStorageDeviceManager >>>", 0x2B4, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_18(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B8, "<<< FigExternalStorageDeviceManager >>>", 0x2B3, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_19(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B9, "<<< FigExternalStorageDeviceManager >>>", 0x2AF, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t fesdm_updateArrayWithNextAvailableURL_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4BALL, "<<< FigExternalStorageDeviceManager >>>", 0x196, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t fesdm_updateArrayWithNextAvailableURL_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4BALL, "<<< FigExternalStorageDeviceManager >>>", 0x194, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t fesdm_updateArrayWithNextAvailableURL_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B3, "<<< FigExternalStorageDeviceManager >>>", 0x18E, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t fesdm_updateArrayWithNextAvailableURL_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B9, "<<< FigExternalStorageDeviceManager >>>", 0x18B, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t fesdm_updateArrayWithNextAvailableURL_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6B8, 0xFFFFB4B9, "<<< FigExternalStorageDeviceManager >>>", 0x18A, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

void __getPLSimpleDCIMDirectoryClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPLSimpleDCIMDirectoryClass(void)_block_invoke") description:{@"FigExternalStorageDeviceManager.m", 28, @"Unable to find class %s", "PLSimpleDCIMDirectory"}];
  __break(1u);
}

void __getPLSimpleDCIMDirectoryClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *PhotoLibraryServicesCoreLibrary(void)") description:{@"FigExternalStorageDeviceManager.m", 27, @"%s", *a1}];
  __break(1u);
}

void __getICCameraDeviceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getICCameraDeviceClass(void)_block_invoke") description:{@"FigExternalStorageDeviceManager.m", 33, @"Unable to find class %s", "ICCameraDevice"}];
  __break(1u);
}

void __getICCameraDeviceClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *ImageCaptureCoreLibrary(void)") description:{@"FigExternalStorageDeviceManager.m", 32, @"%s", *a1}];
  __break(1u);
}

uint64_t CMIOExtensionFigCaptureStreamCreate(uint64_t a1, void *a2, void *a3, CFTypeRef *a4)
{
  if (initializeGlobalsOnce_initializeGlobalsOnceToken != -1)
  {
    dispatch_once(&initializeGlobalsOnce_initializeGlobalsOnceToken, &__block_literal_global_76);
  }

  if (objc_opt_class())
  {
    FigCaptureStreamGetClassID();
  }

  return 4294954514;
}

id cmioefcs_copyVideoOutputConfigurations(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    return 0;
  }

  v2 = DerivedStorage;
  os_unfair_lock_lock((DerivedStorage + 20));
  v3 = [*(v2 + 96) copy];
  os_unfair_lock_unlock((v2 + 20));
  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = *off_1E798CA80;
    v9[0] = *off_1E798CA98;
    v9[1] = v7;
    v10[0] = v4;
    v10[1] = v5;
    v9[2] = *off_1E798CAB8;
    v10[2] = v6;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];
  }

  return v3;
}

uint64_t CMIOExtensionFigCaptureStreamInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(DerivedStorage + 16) & 1) == 0)
  {
    v3 = DerivedStorage;
    CMIOExtensionFigCaptureStreamStop(a1);
    os_unfair_lock_lock((v3 + 20));
    *(v3 + 16) = 1;
    *v3 = 0;

    *(v3 + 8) = 0;
    v4 = *(v3 + 24);
    if (v4)
    {
      CFRelease(v4);
    }

    *(v3 + 24) = 0;
    v5 = *(v3 + 32);
    if (v5)
    {
      CFRelease(v5);
    }

    *(v3 + 32) = 0;
    v6 = *(v3 + 40);
    if (v6)
    {
      CFRelease(v6);
    }

    *(v3 + 40) = 0;
    v7 = *(v3 + 48);
    if (v7)
    {
      CFRelease(v7);
    }

    *(v3 + 48) = 0;
    v8 = *(v3 + 56);
    if (v8)
    {
      CFRelease(v8);
    }

    *(v3 + 56) = 0;

    *(v3 + 64) = 0;
    *(v3 + 72) = 0;

    *(v3 + 96) = 0;
    *(v3 + 256) = 0;

    *(v3 + 112) = 0;
    *(v3 + 120) = 0;

    *(v3 + 144) = 0;
    *(v3 + 152) = 0;

    *(v3 + 176) = 0;
    *(v3 + 184) = 0;

    *(v3 + 248) = 0;
    *(v3 + 80) = 0;
    os_unfair_lock_unlock((v3 + 20));
  }

  return 0;
}

id cmioefcs_copyVideoOutputsEnabled(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    return 0;
  }

  v2 = DerivedStorage;
  os_unfair_lock_lock((DerivedStorage + 20));
  v6[0] = [MEMORY[0x1E696AD98] numberWithBool:{*(v2 + 104), *off_1E798CA98}];
  v5[1] = *off_1E798CA80;
  v6[1] = [MEMORY[0x1E696AD98] numberWithBool:*(v2 + 136)];
  v5[2] = *off_1E798CAB8;
  v6[2] = [MEMORY[0x1E696AD98] numberWithBool:*(v2 + 168)];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
  os_unfair_lock_unlock((v2 + 20));
  return v3;
}

uint64_t cmioefcs_setObjectDetectionConfiguration_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6D8, 0xFFFFCE0FLL, "<<<< CMIOExtensionFigCaptureStream >>>>", 0x5DD, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

uint64_t cmioefcs_captureAsyncStillImage_cold_1(_DWORD *a1)
{
  v6 = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v1, v8, v9, v10, v11, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6D8, 0xFFFFCE12, "<<<< CMIOExtensionFigCaptureStream >>>>", 0x78A, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t cmioefcs_captureAsyncStillImage_cold_2(_DWORD *a1)
{
  v6 = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v1, v8, v9, v10, v11, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E6D8, 0xFFFFCE12, "<<<< CMIOExtensionFigCaptureStream >>>>", 0x78B, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

BOOL flashlightServer_handleReplyMessage_cold_2()
{
  OUTLINED_FUNCTION_2_74();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  v2 = v0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v3, v4, v5, v6, v7, vars0, vars8);
  return OUTLINED_FUNCTION_1_81();
}

BOOL flashlightServer_handleReplyMessage_cold_3()
{
  OUTLINED_FUNCTION_2_74();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  v2 = v0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v3, v4, v5, v6, v7, vars0, vars8);
  return OUTLINED_FUNCTION_1_81();
}

BOOL flashlightServer_handleReplyMessage_cold_5()
{
  OUTLINED_FUNCTION_2_74();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  v2 = v0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v3, v4, v5, v6, v7, vars0, vars8);
  return OUTLINED_FUNCTION_1_81();
}

BOOL flashlightServer_handleReplyMessage_cold_6()
{
  OUTLINED_FUNCTION_2_74();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  v2 = v0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v3, v4, v5, v6, v7, vars0, vars8);
  return OUTLINED_FUNCTION_1_81();
}

BOOL flashlightServer_handleReplyMessage_cold_8()
{
  OUTLINED_FUNCTION_2_74();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  v2 = v0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v3, v4, v5, v6, v7, vars0, vars8);
  return OUTLINED_FUNCTION_1_81();
}

BOOL flashlightServer_handleReplyMessage_cold_10()
{
  OUTLINED_FUNCTION_2_74();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  v2 = v0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v3, v4, v5, v6, v7, vars0, vars8);
  return OUTLINED_FUNCTION_1_81();
}

BOOL flashlightServer_handleReplyMessage_cold_12()
{
  OUTLINED_FUNCTION_2_74();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  v2 = v0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v3, v4, v5, v6, v7, vars0, vars8);
  return OUTLINED_FUNCTION_1_81();
}

BOOL flashlightServer_handleReplyMessage_cold_13()
{
  OUTLINED_FUNCTION_2_74();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  v2 = v0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v3, v4, v5, v6, v7, vars0, vars8);
  return OUTLINED_FUNCTION_1_81();
}

BOOL flashlightServer_handleNoReplyMessage_cold_2()
{
  OUTLINED_FUNCTION_2_74();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  v2 = v0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v3, v4, v5, v6, v7, vars0, vars8);
  return OUTLINED_FUNCTION_1_81();
}

void __FigCaptureSessionAttachSession_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_unfair_lock_lock((DerivedStorage + 384));
  v4 = *(DerivedStorage + 456);
  os_unfair_lock_unlock((DerivedStorage + 384));
  if (v4 != 2)
  {
    v8 = 1;
    goto LABEL_9;
  }

  if (*(DerivedStorage + 712))
  {
    v8 = 1;
    goto LABEL_9;
  }

  *(*(*(a1 + 32) + 8) + 24) = 2;
  v5 = CMBaseObjectGetDerivedStorage();
  os_unfair_lock_lock((v5 + 384));
  v6 = *(v5 + 512);
  os_unfair_lock_unlock((v5 + 384));
  if (![*(DerivedStorage + 512) supportsAttachingSessionConfiguration:v6])
  {
    v8 = 1;
    goto LABEL_9;
  }

  os_unfair_lock_lock((v5 + 384));
  *(v5 + 712) = CFRetain(*(a1 + 40));
  v7 = *(DerivedStorage + 720);
  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(DerivedStorage + 720) = v7;
  }

  if ([v7 objectForKeyedSubscript:*(v5 + 8)])
  {
    os_unfair_lock_unlock((v5 + 384));
    goto LABEL_8;
  }

  v105 = [[BWFigCaptureSession alloc] initWithFigCaptureSession:?];
  v100 = v5;
  v101 = a1;
  v17 = *(v5 + 512);
  v18 = *(v5 + 8);
  v19 = *(a1 + 40);
  v136 = 0;
  v20 = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3(v90);
  }

  v21 = [*(v20 + 752) createAndBeginLiveExtension];
  v22 = *(v20 + 728);
  if (!v22)
  {
    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(v20 + 728) = v22;
  }

  v97 = DerivedStorage;
  v98 = v1;
  v99 = v21;
  [v22 setObject:v21 forKeyedSubscript:v18];
  v108 = v19;
  v23 = [[FigCaptureSessionParsedConfiguration alloc] initWithSessionConfiguration:v17 clientSetsUserInitiatedCaptureRequestTime:captureSession_clientSetsUserInitiatedCaptureRequestTime(v19) restrictions:*(v20 + 496)];
  if (!v23)
  {
    v81 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFEFLL, "<<<< FigCaptureSession >>>>", 0x3DE6, v1, v24, v25, v91);
    v87 = v21;
    if (!v81)
    {
      goto LABEL_62;
    }

    goto LABEL_66;
  }

  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v104 = v23;
  obj = [(FigCaptureSessionParsedConfiguration *)v23 parsedCameraSourceConfigurations];
  v26 = [(NSArray *)obj countByEnumeratingWithState:&v132 objects:v131 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v133;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v133 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v132 + 1) + 8 * i);
        v31 = [v30 cameraConfiguration];
        v32 = [*(v20 + 784) cameraSourcePipelineCompatibleWithCameraConfiguration:v31];
        [*(v20 + 784) addCameraSourcePipeline:v32 sessionID:v18];
        [(FigCaptureCameraSourcePipeline *)v32 registerAttachedSessionID:v18];
        v33 = [v31 source];
        [(FigCaptureCameraSourcePipeline *)v32 captureSource];
        v34 = OUTLINED_FUNCTION_26_13();
        v36 = FigVideoCaptureSourceActivateAttachedCaptureSource(v34, v35, v18);
        if (v36)
        {
          v81 = v36;
          OUTLINED_FUNCTION_1_5();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v91);
LABEL_65:
          v87 = v99;
          goto LABEL_66;
        }

        os_unfair_lock_lock((v20 + 384));
        v37 = *(v20 + 736);
        if (!v37)
        {
          v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
          *(v20 + 736) = v37;
        }

        [v37 setObject:v33 forKeyedSubscript:v18];
        os_unfair_lock_unlock((v20 + 384));
        v38 = [v30 metadataObjectConnectionConfigurations];
        OUTLINED_FUNCTION_86_0();
        v40 = [v39 countByEnumeratingWithState:? objects:? count:?];
        if (v40)
        {
          v41 = v40;
          do
          {
            for (j = 0; j != v41; ++j)
            {
              OUTLINED_FUNCTION_21_20();
              if (!v9)
              {
                objc_enumerationMutation(v38);
              }

              [(FigCaptureCameraSourcePipeline *)v32 setMetadataObjectConnectionConfiguration:v18 forSessionID:?];
              [(FigCaptureCameraSourcePipeline *)v32 addMetadataOutputNetworksForSessionID:v18 graph:*(v20 + 752), v43, v44, v45, v46, v47, v91, v93, v94, v96, v97, v98, v99, v100, v101, v102, v104, v105, obj, v108, v109, v110, v111, v112, v113, v114];
            }

            OUTLINED_FUNCTION_86_0();
            v41 = OUTLINED_FUNCTION_64(v48, v49, v50, v51);
          }

          while (v41);
        }
      }

      v27 = [(NSArray *)obj countByEnumeratingWithState:&v132 objects:v131 count:16];
    }

    while (v27);
  }

  *v127 = 0u;
  v128 = 0u;
  *v125 = 0u;
  v126 = 0u;
  [(FigCaptureSessionParsedConfiguration *)v104 parsedMetadataSinkConfigurations];
  OUTLINED_FUNCTION_85();
  v103 = v52;
  v53 = v108;
  obja = [v52 countByEnumeratingWithState:? objects:? count:?];
  if (!obja)
  {
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_91_5();
  do
  {
    v54 = 0;
    do
    {
      OUTLINED_FUNCTION_40_12();
      if (!v9)
      {
        objc_enumerationMutation(v103);
      }

      v55 = *(v125[1] + 8 * v54);
      v56 = [*(v20 + 784) cameraSourcePipelineWithSessionID:v18];
      v138[0] = 0;
      v57 = CMBaseObjectGetDerivedStorage();
      if (!_FigIsCurrentDispatchQueue())
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_5();
        FigDebugAssert3(v82);
      }

      v58 = [v55 metadataObjectConnectionConfiguration];
      v59 = [(FigCaptureCameraSourcePipeline *)v56 motionAttachmentsSource];
      captureSession_createMetadataSinkPipelineConfiguration(v53, v55, v59, v138);
      if (v138[0])
      {
        OUTLINED_FUNCTION_14_21();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v91, v93, v94, v96, v97, v98, v99, v100);
LABEL_52:
        v81 = v138[0];
        if (v138[0])
        {
          goto LABEL_64;
        }

        goto LABEL_53;
      }

      v65 = [(FigCaptureCameraSourcePipeline *)v56 metadataOutputsByCategoryForSessionID:v18 connectionConfiguration:v58, v60, v61, v62, v63, v64, v91, v93, v94, v96, v97, v98, v99, v100, v101, v103, v104, v105, obja, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125[0], v125[1], v126, *(&v126 + 1), v127[0], v127[1], v128, *(&v128 + 1), v129, v130];
      [v56 sourceID];
      v66 = [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
      if (v66)
      {
        v67 = *(v66 + 24);
        v68 = *(v66 + 32);
      }

      else
      {
        v67 = 0;
        v68 = 0;
      }

      v69 = [v58 underlyingDeviceType];
      FigCaptureBuildSinkPipelineName(v67, v68, v69, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Metadata Sink Pipeline", v18]);
      v70 = [FigCaptureMetadataSinkPipeline alloc];
      v71 = [(FigCaptureCameraSourcePipeline *)v56 captureDevice];
      v72 = captureSession_inferenceScheduler(v108);
      v73 = *(v57 + 36);
      v137[0] = *(v57 + 20);
      v137[1] = v73;
      v95 = v72;
      OUTLINED_FUNCTION_2_5();
      v80 = [(FigCaptureMetadataSinkPipeline *)v74 initWithConfiguration:v75 graph:v76 name:v77 videoPreviewOutput:v78 offlineVISMotionDataSourceOutput:v79 metadataSourceOutputsByCategory:v65 captureDevice:v71 faceTrackingPipelineStage:0 clientAuditToken:v137 inferenceScheduler:v95 delegate:v105];
      if (v80)
      {
        [*(v57 + 784) addMetadataSinkPipeline:v80 sessionID:v18];
        v53 = v108;
        goto LABEL_52;
      }

      v83 = v98;
      OUTLINED_FUNCTION_9_38();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v91, v93, v94, v96, v97, v98, v99, v100);
      v81 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFCE14, "<<<< FigCaptureSession >>>>", 0x3DCE, v83, v84, v85, v92);
      v53 = v108;
      if (v81)
      {
LABEL_64:
        OUTLINED_FUNCTION_36_14();
        LODWORD(v91) = v81;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v91);
        goto LABEL_65;
      }

LABEL_53:
      v54 = v54 + 1;
    }

    while (obja != v54);
    OUTLINED_FUNCTION_85();
    v86 = [v103 countByEnumeratingWithState:? objects:? count:?];
    obja = v86;
  }

  while (v86);
LABEL_60:
  v87 = v99;
  [*(v20 + 752) commitLiveExtension:v99 withError:&v136];
  if (!v136 || (v81 = [v136 code]) == 0)
  {
LABEL_62:

    v88 = v100;
    v89 = v105;
    [*(v97 + 720) setObject:v105 forKeyedSubscript:*(v100 + 8)];
    v81 = 0;
    a1 = v101;
    goto LABEL_69;
  }

LABEL_66:
  [*(v20 + 752) cancelLiveExtension:v87];
  [*(v20 + 728) setObject:0 forKeyedSubscript:v18];
  if (![*(v20 + 728) count])
  {

    *(v20 + 728) = 0;
  }

  v88 = v100;
  a1 = v101;
  v89 = v105;
LABEL_69:

  os_unfair_lock_unlock(v88 + 96);
  if (v81)
  {
    OUTLINED_FUNCTION_36_14();
    LODWORD(v91) = v81;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v91, v93, v94, v96, v97, v98, v99, v100);
    v8 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v8 = 1;
  *(*(*(a1 + 32) + 8) + 24) = 1;
LABEL_9:
  if (v8)
  {
    v9 = *(*(*(a1 + 32) + 8) + 24) == 1 || dword_1ED844050 == 0;
    if (!v9)
    {
      LOBYTE(v132) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v11 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v132);
      if (OUTLINED_FUNCTION_5_2(v11))
      {
        OUTLINED_FUNCTION_7_4();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_16_1(v12, v13, v14, v15, v16);
    }
  }
}

uint64_t FigCaptureSessionMotionCompensatedTemporalFilteringStatusForVideoCaptureConnectionConfiguration(uint64_t result, void *a2)
{
  if (result)
  {
    v3 = result;
    result = FigCapturePixelFormatIs420([objc_msgSend(objc_msgSend(result "sourceConfiguration")]);
    if (result)
    {
      if ([v3 stereoVideoCaptureEnabled])
      {
        v4 = FigCapturePlatformIdentifier();
        result = 0;
        if (!a2 || v4 < 12)
        {
          return result;
        }
      }

      else if (!a2)
      {
        return 0;
      }

      [a2 maxFrameRateClientOverride];
      v6 = v5;
      v7 = [objc_msgSend(a2 "requiredFormat")];
      result = 0;
      v8 = HIDWORD(v7);
      v9 = HIDWORD(v7) * v7;
      v11 = v6 == 240 && v9 == 2073600;
      v12 = v9 == 8294400 && v6 == 120;
      if (!v12 && !v11)
      {
        if (FigCapturePlatformIdentifier() <= 11)
        {
          v13 = 290304000;
        }

        else
        {
          v13 = 539136000;
        }

        if ([a2 videoStabilizationStrength] >= 3 && (v7 == 3840 && v8 == 2160 || v7 == 2160 && v8 == 3840))
        {
          v14 = cs_actionCamera2p8kOutputDimensions([a2 videoStabilizationStrength]);
          v9 = HIDWORD(v14) * v14;
        }

        if (v9 * v6 <= v13)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }
    }
  }

  return result;
}

uint64_t FigCaptureSessionMotionCompensatedTemporalFilteringEnabled(void *a1, void *a2, void *a3, void *a4, int a5, int a6, int *a7)
{
  v13 = [objc_msgSend(a3 objectForKeyedSubscript:{@"MSTFBand0ModulationOnlyWhenRequired", "BOOLValue"}];
  result = objc_msgSend_isEqualToString_([objc_msgSend(a1 "videoSettings")]);
  if (result && (!a2 || (result = [a2 isMomentCaptureMovieRecording], result)))
  {
    v15 = FigCapturePlatformIdentifier();
    if (FigCapturePlatformIdentifier() <= 11)
    {
      v16 = 290304000;
    }

    else
    {
      v16 = 539136000;
    }

    v17 = [objc_msgSend(a4 "requiredFormat")];
    if (a6 == 1)
    {
      v18 = a5 & (v13 ^ 1);
      result = 1;
    }

    else if (v15 > 11 || 30 * v17 * HIDWORD(v17) >= v16)
    {
      v18 = 0;
      result = 0;
    }

    else
    {
      result = a6 == 2;
      if ((result & a5) != 0)
      {
        v18 = 2;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 0;
  }

  *a7 = v18;
  return result;
}

uint64_t captureSession_setRestoreForcedOffOverCaptureActiveSlaveStreamEnabled(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(CMBaseObjectGetDerivedStorage() + 776) objectForKeyedSubscript:a2];
  if (v4)
  {
    v4 = v4[2];
  }

  return [v4 setRestorationOfForcedOffOverCaptureActiveSlaveStreamEnabled:a3];
}

void __FigCaptureSessionDetachFromClient_block_invoke(uint64_t a1)
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_10();
    kdebug_trace();
  }

  if (dword_1ED844050)
  {
    v65 = 0;
    v64 = 0;
    v2 = OUTLINED_FUNCTION_101_3();
    v3 = OUTLINED_FUNCTION_8_26(v2);
    if (OUTLINED_FUNCTION_6(v3))
    {
      v4 = *(a1 + 48);
      v5 = *(*(a1 + 40) + 104);
      *v61 = 136315650;
      *&v61[4] = "FigCaptureSessionDetachFromClient_block_invoke";
      *&v61[12] = 2114;
      *&v61[14] = v5;
      *&v61[22] = 2048;
      *&v61[24] = v4;
      OUTLINED_FUNCTION_29_12();
      v55 = v61;
      OUTLINED_FUNCTION_8_0();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_17_8(v6, v7, v8, v9, v10);
  }

  OUTLINED_FUNCTION_94_2();
  *(v11 + 24) = 1;
  *(*(a1 + 40) + 454) = 0;
  captureSession_cleanupSavedPreviewImageQueueData(*(a1 + 48));
  captureSession_destroyAudioSessionForMicPipeline(*(a1 + 48));
  [+[FigCaptureDisplayLayoutMonitor sharedDisplayLayoutMonitor](FigCaptureDisplayLayoutMonitor "sharedDisplayLayoutMonitor")];
  [*(*(a1 + 40) + 120) invalidate];

  v12 = *(a1 + 40);
  *(v12 + 120) = 0;
  os_unfair_lock_lock((v12 + 84));
  v13 = *(a1 + 40);
  *(v13 + 52) = *(v13 + 20);
  *(v13 + 68) = *(v13 + 36);
  v14 = *(a1 + 40);
  *&v15 = -1;
  *(&v15 + 1) = -1;
  *(v14 + 20) = v15;
  *(v14 + 36) = v15;
  v62 = OUTLINED_FUNCTION_56_10(*(a1 + 40));
  v63 = v16;
  PIDFromAuditToken = FigCaptureGetPIDFromAuditToken(&v62);
  v18 = *(a1 + 40);
  v18[4]._os_unfair_lock_opaque = PIDFromAuditToken;
  os_unfair_lock_unlock(v18 + 21);
  v19 = *(a1 + 40);
  v20 = *(v19 + 104);
  *v61 = OUTLINED_FUNCTION_56_10(v19);
  *&v61[16] = v21;
  if (v20)
  {
    v23 = OUTLINED_FUNCTION_56_10(v22);
    *(v20 + 24) = v24;
    *(v20 + 8) = v23;
    v62 = *v61;
    v63 = *&v61[16];
    *(v20 + 40) = FigCaptureGetPIDFromAuditToken(&v62);
    [v20 _updateLoggingPrefix];
  }

  OUTLINED_FUNCTION_41_11();
  captureSession_updateSessionStateWithApplicationAndLayoutState(v25, v26, v27, v28, v29);
  v30 = *(a1 + 40);
  v31 = *(v30 + 368);
  if (v31)
  {
    CFRelease(v31);
    v30 = *(a1 + 40);
    *(v30 + 368) = 0;
  }

  os_unfair_lock_lock((v30 + 384));
  v32 = *(*(a1 + 40) + 504);
  v33 = *(a1 + 40);
  *(v33 + 453) = 0;
  os_unfair_lock_unlock((v33 + 384));
  v34 = 0;
  if (captureSession_shouldEnableDeferredNodePrepare([v32 connectionConfigurations]))
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v35 = [v32 connectionConfigurations];
    v36 = [v35 countByEnumeratingWithState:&v57 objects:v56 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v58;
      v34 = 1;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v58 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v57 + 1) + 8 * i);
          v41 = [objc_msgSend(v40 sinkConfiguration];
          if (v41 <= 0x10 && ((1 << v41) & 0x1A9C0) != 0)
          {
            v41 = [objc_msgSend(v40 "sinkConfiguration")];
            v34 &= v41;
          }
        }

        v37 = OUTLINED_FUNCTION_64(v41, v42, &v57, v56);
      }

      while (v37);
    }

    else
    {
      v34 = 1;
    }
  }

  OUTLINED_FUNCTION_94_2();
  *(v44 + 24) = v34 & 1;
  if (dword_1ED844050)
  {
    v65 = 0;
    v64 = 0;
    v45 = OUTLINED_FUNCTION_101_3();
    v46 = OUTLINED_FUNCTION_8_26(v45);
    if (OUTLINED_FUNCTION_6(v46))
    {
      OUTLINED_FUNCTION_94_2();
      LODWORD(v47) = *(v47 + 24);
      *v61 = 136315394;
      *&v61[4] = "FigCaptureSessionDetachFromClient_block_invoke";
      *&v61[12] = 1024;
      *&v61[14] = v47;
      OUTLINED_FUNCTION_8_0();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_17_8(v48, v49, v50, v51, v52);
  }

  OUTLINED_FUNCTION_94_2();
  captureSession_transitionToSessionLaunchPrewarmStatus(v54, *(v53 + 24));
  *(*(a1 + 40) + 168) = 0;
}

uint64_t captureSession_clientIsVisualIntelligenceCamera(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 0;
  }

  v3 = *(DerivedStorage + 88);

  return FigCaptureClientApplicationIDIsVisualIntelligenceCamera(v3, v2);
}

void captureSession_externalStorageDeviceManagerCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v6 = DerivedStorage;
    if (*(DerivedStorage + 944))
    {
      if (dword_1ED844050)
      {
        v22 = 0;
        v21 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_56_0(v8, v9, v10, v11, v12);
      }

      dispatch_get_global_queue(0, 0);
      OUTLINED_FUNCTION_8_7();
      v15 = 3221225472;
      v16 = __captureSession_externalStorageDeviceManagerCallback_block_invoke;
      v17 = &__block_descriptor_56_e5_v8__0l;
      v18 = a1;
      v19 = a3;
      v20 = v6;
      dispatch_async(v13, block);
    }
  }
}

void captureSession_teardownGraph()
{
  OUTLINED_FUNCTION_60();
  v1 = v0;
  v148 = v2;
  v151 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3(v145);
  }

  if (dword_1ED844050)
  {
    v199 = 0;
    v198 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v11 = OUTLINED_FUNCTION_111_3(os_log_and_send_and_compose_flags_and_os_log_type);
    if (OUTLINED_FUNCTION_31(v11))
    {
      v12 = *(DerivedStorage + 104);
      v13 = *(DerivedStorage + 776);
      LODWORD(v196[0]) = 136315650;
      *(v196 + 4) = "captureSession_teardownGraph";
      WORD6(v196[0]) = 2114;
      *(v196 + 14) = v12;
      WORD3(v196[1]) = 2112;
      *(&v196[1] + 1) = v13;
      OUTLINED_FUNCTION_29_12();
      v146 = v196;
      OUTLINED_FUNCTION_7_4();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_56_0(v14, v15, v16, v17, v18);
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_10();
    kdebug_trace();
  }

  if (!v151 && v5)
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3(v144);
  }

  v150 = v7;
  v156 = v1;
  if (*(DerivedStorage + 776))
  {
    theArray = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(DerivedStorage + 776), "count")}];
    v154 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(DerivedStorage + 776), "count")}];
    v149 = [*(DerivedStorage + 512) allCameraSourcesAreMetadataCameras];
    v192 = 0u;
    v193 = 0u;
    v194 = 0u;
    v195 = 0u;
    v20 = *(DerivedStorage + 776);
    v21 = OUTLINED_FUNCTION_102_2();
    v19 = DerivedStorage;
    if (v21)
    {
      v22 = v21;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          OUTLINED_FUNCTION_21_20();
          if (!v24)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [*(v19 + 776) objectForKeyedSubscript:{*(*(&v192 + 1) + 8 * i), v146}];
          if (v25)
          {
            v26 = v25;
            if (*(v25 + 8))
            {
              if (*(v25 + 16))
              {
                [(__CFArray *)theArray addObject:?];
                [v154 addObject:*(v26 + 16)];
                [*(v26 + 16) unregisterForAEMatrixMetadata];
                [*(v26 + 16) setStillImageCaptureEnabled:0];
                [*(v26 + 16) setSmartStyleAttachedMediaTimeMachineDelegate:0];
                [*(v26 + 16) setAdaptiveUnifiedBracketingController:0];
                memset(v191, 0, 64);
                v27 = [*(v26 + 16) captureStreams];
                v28 = [v27 countByEnumeratingWithState:v191 objects:v190 count:16];
                if (v28)
                {
                  v29 = v28;
                  do
                  {
                    for (j = 0; j != v29; ++j)
                    {
                      OUTLINED_FUNCTION_10_18();
                      if (!v24)
                      {
                        objc_enumerationMutation(v27);
                      }

                      v31 = [*(*(&v191[0] + 1) + 8 * j) setStillImageCaptureDelegate:0];
                    }

                    v29 = OUTLINED_FUNCTION_1_18(v31, v32, v191, v190);
                  }

                  while (v29);
                }
              }
            }
          }

          v19 = DerivedStorage;
        }

        v22 = OUTLINED_FUNCTION_102_2();
      }

      while (v22);
    }

    v1 = v156;
    if ((v5 & 1) == 0)
    {
      v189 = 0u;
      v188 = 0u;
      v187 = 0u;
      v186 = 0u;
      obj = *(v19 + 776);
      if ([obj countByEnumeratingWithState:&v186 objects:v185 count:16])
      {
        v153 = *v187;
        do
        {
          if (*v187 != v153)
          {
            objc_enumerationMutation(obj);
          }

          v33 = [*(v19 + 776) objectForKeyedSubscript:{**(&v186 + 1), v146}];
          if (v33)
          {
            v19 = *(v33 + 16);
          }

          else
          {
            v19 = 0;
          }

          v34 = [v19 synchronizedStreamsGroup];
          memset(v184, 0, sizeof(v184));
          v35 = [v19 captureStreams];
          v36 = [v35 countByEnumeratingWithState:v184 objects:v183 count:16];
          if (v36)
          {
            v37 = v36;
            v38 = 0;
            do
            {
              for (k = 0; k != v37; ++k)
              {
                OUTLINED_FUNCTION_10_18();
                if (!v24)
                {
                  objc_enumerationMutation(v35);
                }

                v40 = *(*(&v184[0] + 1) + 8 * k);
                if ([objc_msgSend(v40 "stream")])
                {
                  v41 = [v40 stream];
                  if (v41 == [objc_msgSend(v34 "syncGroup")])
                  {
                    v38 = v40;
                  }

                  else
                  {
                    [v40 stop];
                  }
                }
              }

              v37 = [v35 countByEnumeratingWithState:v184 objects:v183 count:16];
            }

            while (v37);
            if (v38)
            {
              [v38 stop];
            }
          }

          v182 = 0u;
          v181 = 0u;
          v180 = 0u;
          v179 = 0u;
          v42 = [v19 captureStreams];
          v43 = [v42 countByEnumeratingWithState:&v179 objects:v178 count:16];
          v1 = v156;
          if (v43)
          {
            v44 = v43;
            v19 = *v180;
            do
            {
              for (m = 0; m != v44; ++m)
              {
                OUTLINED_FUNCTION_10_18();
                if (!v24)
                {
                  objc_enumerationMutation(v42);
                }

                v46 = [*(*(&v179 + 1) + 8 * m) resignStreamStartStopDelegate];
              }

              v44 = OUTLINED_FUNCTION_1_18(v46, v47, &v179, v178);
            }

            while (v44);
          }

          OUTLINED_FUNCTION_83_3();
        }

        while (!v24 || [obj countByEnumeratingWithState:&v186 objects:v185 count:16]);
      }

      FigVideoCaptureSourcesDeactivateWithDevices(theArray, v154, v148);
      if (v1)
      {
        memset(v177, 0, sizeof(v177));
        v50 = *(DerivedStorage + 776);
        v51 = OUTLINED_FUNCTION_1_18(v48, v49, v177, v176);
        if (v51)
        {
          v52 = v51;
          do
          {
            for (n = 0; n != v52; ++n)
            {
              OUTLINED_FUNCTION_10_18();
              if (!v24)
              {
                objc_enumerationMutation(v50);
              }

              v54 = [*(DerivedStorage + 776) objectForKeyedSubscript:{*(*(&v177[0] + 1) + 8 * n), v146}];
              if (v54)
              {
                v54 = v54[2];
              }

              v55 = [v54 invalidateForParallelGraphRebuild];
            }

            v52 = OUTLINED_FUNCTION_1_18(v55, v56, v177, v176);
          }

          while (v52);
        }
      }

      v19 = DerivedStorage;

      *(DerivedStorage + 776) = 0;
    }
  }

  else
  {
    v149 = 0;
    v19 = DerivedStorage;
  }

  if ([objc_msgSend(*(v19 + 784) movieFileSinkPipelines] || objc_msgSend(objc_msgSend(*(v19 + 784), "audioFileSinkPipelines"), "count"))
  {
    v57 = objc_alloc_init(MEMORY[0x1E695DF70]);
    memset(v175, 0, sizeof(v175));
    v58 = [*(v19 + 784) movieFileSinkPipelines];
    v59 = [v58 countByEnumeratingWithState:v175 objects:v174 count:16];
    if (v59)
    {
      v60 = v59;
      do
      {
        for (ii = 0; ii != v60; ++ii)
        {
          OUTLINED_FUNCTION_10_18();
          if (!v24)
          {
            objc_enumerationMutation(v58);
          }

          [*(*(&v175[0] + 1) + 8 * ii) sinkID];
          v62 = [OUTLINED_FUNCTION_8() addObject:?];
        }

        v60 = OUTLINED_FUNCTION_1_18(v62, v63, v175, v174);
      }

      while (v60);
    }

    memset(v173, 0, sizeof(v173));
    v64 = [*(DerivedStorage + 784) audioFileSinkPipelines];
    v65 = [v64 countByEnumeratingWithState:v173 objects:v172 count:16];
    if (v65)
    {
      v67 = v65;
      do
      {
        v68 = 0;
        do
        {
          OUTLINED_FUNCTION_10_18();
          if (!v24)
          {
            objc_enumerationMutation(v64);
          }

          [*(*(&v173[0] + 1) + 8 * v68) sinkID];
          v69 = [OUTLINED_FUNCTION_8() addObject:?];
          ++v68;
        }

        while (v67 != v68);
        v65 = OUTLINED_FUNCTION_1_18(v69, v70, v173, v172);
        v67 = v65;
      }

      while (v65);
    }

    v171 = 0u;
    v170 = 0u;
    v169 = 0u;
    v168 = 0u;
    v71 = OUTLINED_FUNCTION_64(v65, v66, &v168, v167);
    v19 = DerivedStorage;
    if (v71)
    {
      v72 = v71;
      v73 = *v169;
      allocator = *MEMORY[0x1E695E480];
      do
      {
        for (jj = 0; jj != v72; ++jj)
        {
          if (*v169 != v73)
          {
            objc_enumerationMutation(v57);
          }

          v75 = *(*(&v168 + 1) + 8 * jj);
          v76 = [-[FigCaptureMovieFileSinkPipeline movieFileSinkNodes](objc_msgSend(*(DerivedStorage + 784) movieFileSinkPipelineWithSinkID:{v75)), "objectAtIndexedSubscript:", 0}];
          if (!v76)
          {
            v76 = -[FigCaptureAudioFileSinkPipeline audioFileSinkNode]([*(DerivedStorage + 784) audioFileSinkPipelineWithSinkID:v75]);
            if (!v76)
            {
              continue;
            }
          }

          v78 = v76;
          v76 = [v76 lastFileSize];
          if (v76)
          {
            v79 = v76;
            if (!*(DerivedStorage + 880))
            {
              *(DerivedStorage + 880) = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
            }

            objc_msgSend_lastFileDuration(v78);
            v80 = CMTimeCopyAsDictionary(v197, allocator);
            [*(DerivedStorage + 880) setObject:v80 forKeyedSubscript:v75];

            if (!*(DerivedStorage + 888))
            {
              *(DerivedStorage + 888) = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
            }

            v76 = [*(DerivedStorage + 888) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", v79), v75}];
          }
        }

        v72 = OUTLINED_FUNCTION_64(v76, v77, &v168, v167);
      }

      while (v72);
    }

    LOBYTE(v1) = v156;
  }

  memset(v166, 0, sizeof(v166));
  v81 = [*(v19 + 784) previewSinkPipelines];
  v82 = [v81 countByEnumeratingWithState:v166 objects:v165 count:16];
  if (v82)
  {
    v83 = v82;
    do
    {
      for (kk = 0; kk != v83; ++kk)
      {
        OUTLINED_FUNCTION_89();
        if (!v24)
        {
          objc_enumerationMutation(v81);
        }

        v85 = *(*(&v166[0] + 1) + 8 * kk);
        if ([v85 sinkID] && (*(v19 + 452) != 1 || *(v19 + 448) != 1))
        {
          if ([v85 imageQueueSinkNode])
          {
            if (!*(v19 + 560))
            {
              *(v19 + 560) = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
            }

            if (!*(v19 + 576))
            {
              *(v19 + 576) = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
            }

            [v85 previewRotationDegrees];
            [*(v19 + 576) setObject:objc_msgSend(OUTLINED_FUNCTION_17() forKeyedSubscript:{"numberWithInt:"), objc_msgSend(v85, "sinkID")}];
          }

          [*(v19 + 560) setObject:objc_msgSend(v85 forKeyedSubscript:{"imageQueueSinkNode"), objc_msgSend(v85, "sinkID")}];
          if ((v1 & 1) == 0)
          {
            [objc_msgSend(objc_msgSend(objc_msgSend(v85 "imageQueueSinkNode")];
          }
        }

        v86 = [*(v19 + 528) containsObject:v85];
      }

      v83 = OUTLINED_FUNCTION_64(v86, v87, v166, v165);
    }

    while (v83);
  }

  memset(v164, 0, sizeof(v164));
  v88 = [*(v19 + 784) stillImageSinkPipelineSessionStorages];
  v89 = [v88 countByEnumeratingWithState:v164 objects:v163 count:16];
  if (v89)
  {
    v90 = v89;
    do
    {
      for (mm = 0; mm != v90; ++mm)
      {
        OUTLINED_FUNCTION_21_20();
        if (!v24)
        {
          objc_enumerationMutation(v88);
        }

        v92 = *(*(&v164[0] + 1) + 8 * mm);
        v93 = [objc_msgSend(v92 "primaryStillImageSinkPipeline")];
        if ([v92 preparedBracket] && !*(v19 + 592))
        {
          *(v19 + 592) = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
        }

        v94 = [*(v19 + 592) setObject:objc_msgSend(v92 forKeyedSubscript:{"preparedBracket"), v93}];
        if ((v1 & 1) == 0)
        {
          [objc_msgSend(objc_msgSend(v92 "primaryStillImageSinkPipeline")];
          v94 = [objc_msgSend(objc_msgSend(v92 "primaryStillImageSinkPipeline")];
        }
      }

      v90 = OUTLINED_FUNCTION_64(v94, v95, v164, v163);
    }

    while (v90);
  }

  memset(v162, 0, sizeof(v162));
  v155 = [*(v19 + 784) movieFileSinkPipelines];
  if ([v155 countByEnumeratingWithState:v162 objects:v161 count:16])
  {
    OUTLINED_FUNCTION_91_5();
    do
    {
      v96 = 0;
      do
      {
        OUTLINED_FUNCTION_40_12();
        if (!v24)
        {
          objc_enumerationMutation(v155);
        }

        v97 = *(*(&v162[0] + 1) + 8 * v96);
        v98 = CMBaseObjectGetDerivedStorage();
        if (!_FigIsCurrentDispatchQueue())
        {
          OUTLINED_FUNCTION_0();
          OUTLINED_FUNCTION_2_5();
          FigDebugAssert3(v120);
        }

        if ([objc_msgSend(v97 "pendingIrisRecordings")])
        {
          allocatora = v96;
          os_unfair_lock_lock((v98 + 384));
          v99 = *(v98 + 480);
          os_unfair_lock_unlock((v98 + 384));
          if (!v99)
          {
            mach_absolute_time();
          }

          memset(v196, 0, sizeof(v196));
          v100 = [v97 pendingIrisRecordings];
          v101 = [v100 countByEnumeratingWithState:v196 objects:v197 count:16];
          if (v101)
          {
            v102 = v101;
            v19 = **&v196[1];
            do
            {
              for (nn = 0; nn != v102; ++nn)
              {
                OUTLINED_FUNCTION_10_18();
                if (!v24)
                {
                  objc_enumerationMutation(v100);
                }

                v104 = *(*(&v196[0] + 1) + 8 * nn);
                v105 = [v104 irisMovieInfo];
                if (!v105)
                {
                  v105 = +[BWIrisMovieInfo emptyIrisMovieInfoWithFigCaptureMovieFileRecordingSettings:](BWIrisMovieInfo, "emptyIrisMovieInfoWithFigCaptureMovieFileRecordingSettings:", [v104 settings]);
                }

                [v104 enqueuedHostTime];
                [v105 setProcessingTimeInMilliseconds:FigHostTimeToNanoseconds() / 1000000.0];
                [v97 sinkID];
                v106 = OUTLINED_FUNCTION_26_13();
                captureSession_postNotificationsForIrisRequestCompletedWithError(v106, v107, v105, 4294951863, v108);
              }

              v102 = OUTLINED_FUNCTION_1_18(v109, v110, v196, v197);
            }

            while (v102);
          }

          [objc_msgSend(v97 "pendingIrisRecordings")];
          LOBYTE(v1) = v156;
          v96 = allocatora;
        }

        if ((v1 & 1) == 0)
        {
          v111 = [(FigCaptureMovieFileSinkPipeline *)v97 movieFileSinkNodes];
          OUTLINED_FUNCTION_86_0();
          v113 = [v112 countByEnumeratingWithState:? objects:? count:?];
          if (v113)
          {
            v114 = v113;
            v19 = MEMORY[0];
            do
            {
              for (i1 = 0; i1 != v114; ++i1)
              {
                OUTLINED_FUNCTION_10_18();
                if (!v24)
                {
                  objc_enumerationMutation(v111);
                }

                [*(8 * i1) setRecordingStatusDelegate:0];
              }

              OUTLINED_FUNCTION_86_0();
              v114 = OUTLINED_FUNCTION_1_18(v116, v117, v118, v119);
            }

            while (v114);
          }
        }

        OUTLINED_FUNCTION_83_3();
      }

      while (!v24);
    }

    while ([v155 countByEnumeratingWithState:v162 objects:v161 count:16]);
  }

  os_unfair_lock_lock((v19 + 384));
  *(v19 + 337) = [-[FigCaptureMicSourcePipeline sourceNode](objc_msgSend(*(v19 + 784) "micSourcePipeline"))];
  os_unfair_lock_unlock((v19 + 384));
  v121 = CMBaseObjectGetDerivedStorage();
  os_unfair_lock_lock((v121 + 384));
  if (notify_is_valid_token(*(v121 + 664)))
  {
    if (dword_1ED844050)
    {
      v199 = 0;
      v198 = 0;
      v122 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v123 = OUTLINED_FUNCTION_111_3(v122);
      if (OUTLINED_FUNCTION_31(v123))
      {
        v124 = *(v121 + 104);
        v125 = *(v121 + 656);
        LODWORD(v196[0]) = 136315650;
        *(v196 + 4) = "captureSession_stopMonitoringForFigAssetWriterWritingVideoNotification";
        WORD6(v196[0]) = 2114;
        *(v196 + 14) = v124;
        WORD3(v196[1]) = 2112;
        *(&v196[1] + 1) = v125;
        OUTLINED_FUNCTION_29_12();
        v147 = v196;
        OUTLINED_FUNCTION_7_4();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_56_0(v126, v127, v128, v129, v130);
    }

    *(v121 + 656) = 0;
    notify_cancel(*(v121 + 664));
    *(v121 + 664) = -1;
  }

  *(v121 + 672) = 0;
  os_unfair_lock_unlock((v121 + 384));
  [+[FigCaptureDisplayLayoutMonitor sharedContinuityDisplayLayoutMonitor](FigCaptureDisplayLayoutMonitor "sharedContinuityDisplayLayoutMonitor")];
  if ((v1 & 1) == 0)
  {
    v132 = *(v19 + 832);
    if (v132)
    {
      objc_setProperty_nonatomic(v132, v131, 0, 16);
    }
  }

  *(v19 + 784) = 0;
  *(v19 + 808) = 0;
  *(v19 + 816) = 0;

  *(v19 + 528) = 0;
  *(v19 + 792) = 0;

  *(v19 + 800) = 0;
  *(v19 + 696) = 0;
  os_unfair_lock_lock((v19 + 384));
  v133 = *(v19 + 744);
  if (v133)
  {
    dispatch_group_leave(v133);

    *(v19 + 744) = 0;
  }

  *(v19 + 608) = 0;
  os_unfair_lock_unlock((v19 + 384));

  *(v19 + 752) = 0;
  captureSession_stopMonitoringAudioPlaybackAndRouteChangeNotifications(v9);
  if ((v151 & 1) == 0)
  {
    if ([*(DerivedStorage + 904) count])
    {
      v134 = [*(DerivedStorage + 904) allKeys];
      OUTLINED_FUNCTION_85();
      v136 = [v135 countByEnumeratingWithState:? objects:? count:?];
      if (v136)
      {
        v137 = v136;
        do
        {
          for (i2 = 0; i2 != v137; ++i2)
          {
            OUTLINED_FUNCTION_10_18();
            if (!v24)
            {
              objc_enumerationMutation(v134);
            }

            v139 = *(8 * i2);
            [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
            [*(DerivedStorage + 904) setObject:0 forKeyedSubscript:v139];
          }

          OUTLINED_FUNCTION_85();
          v137 = OUTLINED_FUNCTION_1_18(v140, v141, v142, v143);
        }

        while (v137);
      }
    }
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_10();
    kdebug_trace();
  }

  OUTLINED_FUNCTION_128_0();
}

void __captureSession_startObservingInvalidAudioRecordingState_block_invoke(uint64_t a1)
{
  if (dword_1ED844050)
  {
    LODWORD(v91) = 0;
    type[0] = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v3 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_5_24(v3))
    {
      LODWORD(v68[0]) = 136315394;
      OUTLINED_FUNCTION_2_75();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_13_0(v4, v5, v6, v7, v8);
  }

  dispatch_source_cancel(*(*(a1 + 32) + 208));
  dispatch_release(*(*(a1 + 32) + 208));
  *(*(a1 + 32) + 208) = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3(v63);
  }

  if (objc_msgSend_isEqualToString_(*(DerivedStorage + 88)))
  {
    v10 = [MEMORY[0x1E69AED10] sharedInstance];
    v11 = [v10 attributeForKey:*MEMORY[0x1E69AEB50]];
    objc_opt_class();
    OUTLINED_FUNCTION_44_11();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v14 = OUTLINED_FUNCTION_64(isKindOfClass, v13, &v91, v90);
      if (v14)
      {
        v15 = v14;
        v16 = *v92;
        v17 = MEMORY[0x1E69AEB48];
        while (2)
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v92 != v16)
            {
              objc_enumerationMutation(v11);
            }

            v19 = *(*(&v91 + 1) + 8 * i);
            *v68 = 0u;
            v69 = 0u;
            [objc_msgSend(v19 objectForKeyedSubscript:{*v17), "getBytes:length:", v68, 32}];
            *type = *v68;
            *&type[16] = v69;
            FigCaptureGetPIDFromAuditToken(type);
            os_unfair_lock_lock((DerivedStorage + 84));
            v20 = *(DerivedStorage + 36);
            *type = *(DerivedStorage + 20);
            *&type[16] = v20;
            if (FigCaptureAuditTokenIsValid(type))
            {
              v21 = *(DerivedStorage + 20);
              v22 = *(DerivedStorage + 36);
            }

            else
            {
              v21 = *(DerivedStorage + 52);
              v22 = *(DerivedStorage + 68);
            }

            *type = v21;
            *&type[16] = v22;
            *v87 = *v68;
            v88 = v69;
            v23 = FigCaptureAuditTokenProcessesAreEqual(type, v87);
            os_unfair_lock_unlock((DerivedStorage + 84));
            if (v23)
            {
              os_unfair_lock_lock((DerivedStorage + 384));
              v26 = *(DerivedStorage + 456);
              os_unfair_lock_unlock((DerivedStorage + 384));
              if (!v26)
              {
                OUTLINED_FUNCTION_69_3();
                v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v35 = OUTLINED_FUNCTION_106_3(v27, v28, v29, v30, v31, v32, v33, v34, v64, v66, v68[0], v68[1], v69, *(&v69 + 1), v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87[0]);
                if (OUTLINED_FUNCTION_6(v35))
                {
                  v36 = *(DerivedStorage + 104);
                  *type = 136315394;
                  *&type[4] = "captureSession_checkForInvalidAudioRecordingState";
                  *&type[12] = 2114;
                  *&type[14] = v36;
                  LODWORD(v67) = 22;
                  v65 = type;
                  OUTLINED_FUNCTION_8_0();
                  v37 = _os_log_send_and_compose_impl();
                }

                else
                {
                  v37 = 0;
                }

                OUTLINED_FUNCTION_17_8(qword_1ED844048, 0, 1, v37, v37 != v68);
                FigCaptureGetFrameworkRadarComponent();
                OUTLINED_FUNCTION_69_3();
                v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v46 = OUTLINED_FUNCTION_106_3(v38, v39, v40, v41, v42, v43, v44, v45, v65, v67, v68[0], v68[1], v69, *(&v69 + 1), v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87[0]);
                if (OUTLINED_FUNCTION_6(v46))
                {
                  *type = 136315138;
                  *&type[4] = "captureSession_checkForInvalidAudioRecordingState";
                  OUTLINED_FUNCTION_43_0();
                  OUTLINED_FUNCTION_8_0();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_8_1();
                v52 = OUTLINED_FUNCTION_17_8(v47, v48, v49, v50, v51);
                LOWORD(v68[0]) = 0;
                OUTLINED_FUNCTION_6_0(v52, v53, v54, v55, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
                OUTLINED_FUNCTION_13_18();
                OUTLINED_FUNCTION_10();
                FigCapturePleaseFileRadar(v56, v57, v58, v59, v60, 4222, v61, v62, v68);
                free(v15);
                return;
              }
            }
          }

          v15 = OUTLINED_FUNCTION_64(v24, v25, &v91, v90);
          if (v15)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v64, v66, v68[0], v68[1], v69, *(&v69 + 1), v70, v71);
    }
  }
}

void *__captureSession_commitInflightConfiguration_block_invoke_756(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3(v6);
  }

  v3 = [DerivedStorage[98] cameraSourcePipelineWithSessionID:v1];
  result = [DerivedStorage[91] objectForKeyedSubscript:v1];
  if (result)
  {
    [DerivedStorage[94] prepareLiveExtensionToBecomeLive:result];
    [(FigCaptureCameraSourcePipeline *)v3 activateSecureMetadataOutputConfigurationForSessionID:v1];
    v5 = DerivedStorage[91];

    return [v5 setObject:0 forKeyedSubscript:v1];
  }

  return result;
}

void captureSession_liveReconfigureForOutputAspectRatioChange()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v4 = v3;
  v226 = mach_absolute_time();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v283 = 0u;
  v284 = 0u;
  v285 = 0u;
  v286 = 0u;
  v247 = v2;
  v5 = [v2 connectionConfigurations];
  v6 = [v5 countByEnumeratingWithState:&v283 objects:v282 count:16];
  if (v6)
  {
    v7 = v6;
    v0 = *v284;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        OUTLINED_FUNCTION_49_7();
        if (!v9)
        {
          objc_enumerationMutation(v5);
        }

        m = *(*(&v283 + 1) + 8 * i);
        v11 = [m mediaType];
        if (v11 == 1986618469)
        {
          if (m)
          {
            v248 = [objc_msgSend(m "sourceConfiguration")];
            if (dword_1ED844050)
            {
              v13 = m;
              OUTLINED_FUNCTION_34_14();
              v14 = OUTLINED_FUNCTION_24_16(qword_1ED844048);
              if (os_log_type_enabled(v14, type))
              {
                v15 = v281;
              }

              else
              {
                v15 = v281 & 0xFFFFFFFE;
              }

              if (v15)
              {
                FigCaptureStringForAspectRatio(v248);
                v270 = 136315394;
                OUTLINED_FUNCTION_60_7("captureSession_liveReconfigureForOutputAspectRatioChange");
                *(v17 + 14) = v16;
                OUTLINED_FUNCTION_11_33();
                OUTLINED_FUNCTION_8_0();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_2_4();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              m = v13;
            }

            [*(DerivedStorage + 752) beginConfiguration];
            captureSession_buildGraphDidBecomeLiveObserver(v4, [v247 isMultiCamSession]);
            obj = m;
            v243 = FigCaptureConvertDimensionsForAspectRatio([objc_msgSend(objc_msgSend(m "sourceConfiguration")], v248);
            v18 = [*(DerivedStorage + 784) cameraSourcePipelines];
            memset(v279, 0, 64);
            v19 = [v18 countByEnumeratingWithState:v279 objects:v278 count:16];
            if (v19)
            {
              m = v19;
              do
              {
                v27 = 0;
                do
                {
                  OUTLINED_FUNCTION_6_30();
                  if (!v9)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v28 = *(v279[1] + 8 * v27);
                  if (dword_1ED844050)
                  {
                    OUTLINED_FUNCTION_34_14();
                    v29 = OUTLINED_FUNCTION_24_16(qword_1ED844048);
                    v30 = v281;
                    if (os_log_type_enabled(v29, type))
                    {
                      v31 = v30;
                    }

                    else
                    {
                      v31 = v30 & 0xFFFFFFFE;
                    }

                    if (v31)
                    {
                      BWStringFromDimensions();
                      OUTLINED_FUNCTION_67_6(4.8152e-34);
                      *(v32 + 4) = "captureSession_liveReconfigureForOutputAspectRatioChange";
                      v272 = 2114;
                      *(v32 + 14) = v33;
                      v274 = 2114;
                      v275 = *&v28;
                      OUTLINED_FUNCTION_5_58();
                      OUTLINED_FUNCTION_13();
                      _os_log_send_and_compose_impl();
                    }

                    OUTLINED_FUNCTION_2_4();
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }

                  v34 = [(FigCaptureCameraSourcePipeline *)v28 liveReconfigureForOutputDimensions:v243 aspectRatio:v248];
                  ++v27;
                }

                while (m != v27);
                v19 = OUTLINED_FUNCTION_1_18(v34, v35, v279, v278);
                m = v19;
              }

              while (v19);
            }

            v36 = [OUTLINED_FUNCTION_79_3(v19 v20];
            IsSpatial = [(FigCaptureMicSourcePipeline *)v36 sourceNode];
            if (IsSpatial)
            {
              v45 = IsSpatial;
              IsSpatial = BWAudioCaptureModeIsSpatial([IsSpatial audioCaptureMode]);
              if (IsSpatial)
              {
                [objc_msgSend(objc_msgSend(obj "sourceConfiguration")];
                v47 = v46;
                [objc_msgSend(obj "sourceConfiguration")];
                v50 = *&v48;
                if (dword_1ED844050)
                {
                  OUTLINED_FUNCTION_34_14();
                  v51 = OUTLINED_FUNCTION_24_16(qword_1ED844048);
                  LODWORD(m) = v281;
                  v52 = os_log_type_enabled(v51, type);
                  if (OUTLINED_FUNCTION_31(v52))
                  {
                    v270 = 136315906;
                    v271 = "captureSession_liveReconfigureForOutputAspectRatioChange";
                    v272 = 2048;
                    v273 = v47;
                    v274 = 2048;
                    v275 = v50;
                    v276 = 2114;
                    v277 = v45;
                    OUTLINED_FUNCTION_11_33();
                    OUTLINED_FUNCTION_8_0();
                    _os_log_send_and_compose_impl();
                    LODWORD(m) = v281;
                  }

                  OUTLINED_FUNCTION_2_4();
                  OUTLINED_FUNCTION_56_0(v53, v54, v55, v56, v57);
                }

                *&v48 = v47;
                *&v49 = v50;
                IsSpatial = [v45 updateStereoAudioCapturePairedCameraBaseFieldOfView:v48 zoomFactor:v49];
              }
            }

            memset(v269, 0, sizeof(v269));
            obja = [OUTLINED_FUNCTION_79_3(IsSpatial v38];
            v58 = [obja countByEnumeratingWithState:v269 objects:v268 count:16];
            v0 = off_1E7989000;
            if (v58)
            {
              m = v58;
              OUTLINED_FUNCTION_91_5();
              do
              {
                for (j = 0; j != m; ++j)
                {
                  OUTLINED_FUNCTION_40_12();
                  if (!v9)
                  {
                    objc_enumerationMutation(obja);
                  }

                  v60 = *(v269[1] + 8 * j);
                  *&v61 = OUTLINED_FUNCTION_48_13();
                  v62[72] = v61;
                  v62[73] = v61;
                  v62[74] = v61;
                  v62[75] = v61;
                  v63 = [v247 connectionConfigurations];
                  v64 = [v63 countByEnumeratingWithState:v266 objects:v265 count:16];
                  if (v64)
                  {
                    while (2)
                    {
                      for (k = 0; k != v64; ++k)
                      {
                        OUTLINED_FUNCTION_6_30();
                        if (!v9)
                        {
                          objc_enumerationMutation(v63);
                        }

                        v66 = *(v267 + 8 * k);
                        isKindOfClass = [objc_msgSend(v60 "sinkID")];
                        if (isKindOfClass)
                        {
                          objc_opt_class();
                          isKindOfClass = objc_opt_isKindOfClass();
                          if (isKindOfClass)
                          {
                            v69 = [v66 outputWidth];
                            v64 = v69 | ([v66 outputHeight] << 32);
                            goto LABEL_54;
                          }
                        }
                      }

                      v64 = OUTLINED_FUNCTION_37(isKindOfClass, v68, v266, v265);
                      if (v64)
                      {
                        continue;
                      }

                      break;
                    }
                  }

LABEL_54:
                  if (dword_1ED844050)
                  {
                    OUTLINED_FUNCTION_34_14();
                    v70 = OUTLINED_FUNCTION_24_16(qword_1ED844048);
                    v71 = v281;
                    if (os_log_type_enabled(v70, type))
                    {
                      v72 = v71;
                    }

                    else
                    {
                      v72 = v71 & 0xFFFFFFFE;
                    }

                    if (v72)
                    {
                      BWStringFromDimensions();
                      OUTLINED_FUNCTION_67_6(4.8152e-34);
                      OUTLINED_FUNCTION_15_25(v73, v74);
                      v275 = *&v60;
                      OUTLINED_FUNCTION_5_58();
                      OUTLINED_FUNCTION_13();
                      _os_log_send_and_compose_impl();
                    }

                    OUTLINED_FUNCTION_2_4();
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }

                  [FigCaptureVideoDataSinkPipeline liveReconfigureForOutputDimensions:v60 stabilizationCropDimensions:v64];
                }

                m = [obja countByEnumeratingWithState:v269 objects:v268 count:16];
              }

              while (m);
            }

            v75 = [*(v232 + 784) movieFileSinkPipelines];
            v244 = -[FigCaptureCameraSourcePipeline trueVideoCaptureEnabled]([*(v232 + 784) firstColorCameraSourcePipeline]);
            *&v76 = OUTLINED_FUNCTION_48_13();
            v77[60] = v76;
            v77[61] = v76;
            v77[62] = v76;
            v77[63] = v76;
            objb = v75;
            v80 = OUTLINED_FUNCTION_37(v78, v79, v263, v262);
            if (v80)
            {
              v88 = v80;
              v235 = 0;
              OUTLINED_FUNCTION_91_5();
              do
              {
                v89 = 0;
                do
                {
                  OUTLINED_FUNCTION_40_12();
                  if (!v9)
                  {
                    objc_enumerationMutation(objb);
                  }

                  v90 = *(v264 + 8 * v89);
                  *&v91 = OUTLINED_FUNCTION_48_13();
                  v92[48] = v91;
                  v92[49] = v91;
                  v92[50] = v91;
                  v92[51] = v91;
                  v93 = [v247 connectionConfigurations];
                  v94 = [v93 countByEnumeratingWithState:v260 objects:v259 count:16];
                  if (v94)
                  {
                    v95 = v94;
                    while (2)
                    {
                      for (m = 0; m != v95; ++m)
                      {
                        OUTLINED_FUNCTION_6_30();
                        if (!v9)
                        {
                          objc_enumerationMutation(v93);
                        }

                        v96 = *(v261 + 8 * m);
                        [objc_msgSend(v96 "sinkConfiguration")];
                        [v90 sinkID];
                        v97 = [OUTLINED_FUNCTION_28() isEqual:?];
                        if (v97)
                        {
                          objc_opt_class();
                          v97 = objc_opt_isKindOfClass();
                          if (v97)
                          {
                            v100 = [v96 outputWidth];
                            v99 = v100 | ([v96 outputHeight] << 32);
                            goto LABEL_79;
                          }
                        }
                      }

                      v95 = OUTLINED_FUNCTION_37(v97, v98, v260, v259);
                      if (v95)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v99 = 0;
LABEL_79:
                  if (dword_1ED844050)
                  {
                    OUTLINED_FUNCTION_34_14();
                    v101 = OUTLINED_FUNCTION_24_16(qword_1ED844048);
                    if (OUTLINED_FUNCTION_103_4(v101))
                    {
                      v102 = m;
                    }

                    else
                    {
                      v102 = m & 0xFFFFFFFE;
                    }

                    if (v102)
                    {
                      BWStringFromDimensions();
                      OUTLINED_FUNCTION_67_6(4.8152e-34);
                      OUTLINED_FUNCTION_15_25(v103, v104);
                      v275 = *&v90;
                      OUTLINED_FUNCTION_5_58();
                      OUTLINED_FUNCTION_13();
                      _os_log_send_and_compose_impl();
                      LODWORD(m) = v281;
                    }

                    OUTLINED_FUNCTION_2_4();
                    OUTLINED_FUNCTION_56_0(v105, v106, v107, v108, v109);
                  }

                  [(FigCaptureMovieFileSinkPipeline *)v90 liveReconfigureForOutputDimensions:v99];
                  if (v244 && [(FigCaptureMovieFileSinkPipeline *)v90 ispProcessingSession:v110])
                  {
                    v235 = [(FigCaptureMovieFileSinkPipeline *)v90 ispProcessingSession:v117];
                  }

                  v89 = (v89 + 1);
                }

                while (v89 != v88);
                v80 = [objb countByEnumeratingWithState:v263 objects:v262 count:16];
                v88 = v80;
              }

              while (v80);
            }

            else
            {
              v235 = 0;
            }

            if (v244)
            {
              v124 = *(v232 + 872);
              if (v124)
              {

                v80 = v235;
                *(v232 + 872) = v80;
                if (dword_1ED844050)
                {
                  OUTLINED_FUNCTION_34_14();
                  v125 = OUTLINED_FUNCTION_24_16(qword_1ED844048);
                  v126 = os_log_type_enabled(v125, type);
                  if (OUTLINED_FUNCTION_5_24(v126))
                  {
                    v127 = *(v232 + 104);
                    v128 = *(v232 + 872);
                    v270 = 136315650;
                    v271 = "captureSession_liveReconfigureForOutputAspectRatioChange";
                    v272 = 2114;
                    v273 = v127;
                    v274 = 2048;
                    v275 = v128;
                    OUTLINED_FUNCTION_5_58();
                    OUTLINED_FUNCTION_7_4();
                    _os_log_send_and_compose_impl();
                  }

                  OUTLINED_FUNCTION_2_4();
                  v80 = OUTLINED_FUNCTION_13_0(v129, v130, v131, v132, v133);
                }
              }
            }

            v134 = [OUTLINED_FUNCTION_79_3(v80 v81];
            v255 = 0u;
            v256 = 0u;
            v257 = 0u;
            v258 = 0u;
            v241 = v134;
            v135 = [v134 countByEnumeratingWithState:&v255 objects:v254 count:16];
            if (v135)
            {
              v136 = v135;
              v245 = *v256;
              do
              {
                for (n = 0; n != v136; ++n)
                {
                  if (*v256 != v245)
                  {
                    objc_enumerationMutation(v241);
                  }

                  v138 = *(*(&v255 + 1) + 8 * n);
                  *&v139 = OUTLINED_FUNCTION_48_13();
                  v140[24] = v139;
                  v140[25] = v139;
                  v140[26] = v139;
                  v140[27] = v139;
                  v141 = [v247 connectionConfigurations];
                  v142 = [v141 countByEnumeratingWithState:v252 objects:v251 count:16];
                  if (v142)
                  {
                    v143 = v142;
                    while (2)
                    {
                      for (m = 0; m != v143; ++m)
                      {
                        OUTLINED_FUNCTION_6_30();
                        if (!v9)
                        {
                          objc_enumerationMutation(v141);
                        }

                        v144 = *(v253 + 8 * m);
                        v145 = [objc_msgSend(v144 "sinkConfiguration")];
                        if (v145 == 1)
                        {
                          objc_opt_class();
                          v145 = objc_opt_isKindOfClass();
                          if (v145)
                          {
                            v148 = [v144 outputWidth];
                            v147 = v148 | ([v144 outputHeight] << 32);
                            goto LABEL_115;
                          }
                        }
                      }

                      v143 = OUTLINED_FUNCTION_37(v145, v146, v252, v251);
                      if (v143)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v147 = 0;
LABEL_115:
                  if (dword_1ED844050)
                  {
                    OUTLINED_FUNCTION_34_14();
                    v149 = OUTLINED_FUNCTION_24_16(qword_1ED844048);
                    if (OUTLINED_FUNCTION_103_4(v149))
                    {
                      v150 = m;
                    }

                    else
                    {
                      v150 = m & 0xFFFFFFFE;
                    }

                    if (v150)
                    {
                      BWStringFromDimensions();
                      OUTLINED_FUNCTION_67_6(4.8152e-34);
                      OUTLINED_FUNCTION_15_25(v151, v152);
                      v275 = *&v138;
                      OUTLINED_FUNCTION_5_58();
                      OUTLINED_FUNCTION_13();
                      _os_log_send_and_compose_impl();
                      LODWORD(m) = v281;
                    }

                    OUTLINED_FUNCTION_2_4();
                    OUTLINED_FUNCTION_56_0(v153, v154, v155, v156, v157);
                  }

                  [v138 liveReconfigureForOutputDimensions:v147];
                }

                v136 = [v241 countByEnumeratingWithState:&v255 objects:v254 count:16];
              }

              while (v136);
            }

            mach_absolute_time();
            *&v158 = OUTLINED_FUNCTION_48_13();
            v159[12] = v158;
            v159[13] = v158;
            v159[14] = v158;
            v159[15] = v158;
            [OUTLINED_FUNCTION_79_3(v160 v161];
            OUTLINED_FUNCTION_95_0();
            v236 = v168;
            v242 = [v168 countByEnumeratingWithState:? objects:? count:?];
            if (v242)
            {
              objc = *v250;
              do
              {
                v169 = 0;
                do
                {
                  if (*v250 != objc)
                  {
                    objc_enumerationMutation(v236);
                  }

                  v246 = v169;
                  *&v170 = OUTLINED_FUNCTION_48_13();
                  *v171 = v170;
                  v171[1] = v170;
                  v171[2] = v170;
                  v171[3] = v170;
                  v173 = [v172 stillImageSinkPipelines];
                  OUTLINED_FUNCTION_112_0();
                  v175 = [v174 countByEnumeratingWithState:? objects:? count:?];
                  if (v175)
                  {
                    v176 = v175;
                    do
                    {
                      for (ii = 0; ii != v176; ++ii)
                      {
                        OUTLINED_FUNCTION_89();
                        if (!v9)
                        {
                          objc_enumerationMutation(v173);
                        }

                        v178 = *(v249[18] + 8 * ii);
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          if (dword_1ED844050)
                          {
                            OUTLINED_FUNCTION_34_14();
                            v179 = OUTLINED_FUNCTION_24_16(qword_1ED844048);
                            v180 = v281;
                            LODWORD(v0) = type;
                            if (os_log_type_enabled(v179, type))
                            {
                              v181 = v180;
                            }

                            else
                            {
                              v181 = v180 & 0xFFFFFFFE;
                            }

                            if (v181)
                            {
                              FigCaptureStringForAspectRatio(v248);
                              OUTLINED_FUNCTION_67_6(4.8152e-34);
                              OUTLINED_FUNCTION_15_25(v182, v183);
                              v275 = *&v178;
                              OUTLINED_FUNCTION_5_58();
                              OUTLINED_FUNCTION_13();
                              _os_log_send_and_compose_impl();
                            }

                            OUTLINED_FUNCTION_2_4();
                            OUTLINED_FUNCTION_13_0(v184, v185, v186, v187, v188);
                          }

                          [v178 liveReconfigureForAspectRatio:v248];
                        }
                      }

                      OUTLINED_FUNCTION_112_0();
                      v176 = [v173 countByEnumeratingWithState:? objects:? count:?];
                    }

                    while (v176);
                  }

                  v169 = v246 + 1;
                }

                while (v246 + 1 != v242);
                OUTLINED_FUNCTION_95_0();
                v242 = [v236 countByEnumeratingWithState:? objects:? count:?];
              }

              while (v242);
            }

            if (dword_1ED844050)
            {
              OUTLINED_FUNCTION_34_14();
              v189 = OUTLINED_FUNCTION_24_16(qword_1ED844048);
              if (OUTLINED_FUNCTION_112_4(v189))
              {
                v190 = v0;
              }

              else
              {
                v190 = v0 & 0xFFFFFFFE;
              }

              if (v190)
              {
                mach_absolute_time();
                FigHostTimeToNanoseconds();
                v270 = 136315650;
                OUTLINED_FUNCTION_60_7("captureSession_liveReconfigureForOutputAspectRatioChange");
                *(v191 + 14) = @"Still pipelines live reconfiguration";
                v274 = 2048;
                v275 = v192;
                OUTLINED_FUNCTION_5_58();
                OUTLINED_FUNCTION_7_4();
                _os_log_send_and_compose_impl();
                LODWORD(v0) = v281;
              }

              OUTLINED_FUNCTION_2_4();
              OUTLINED_FUNCTION_17_8(v193, v194, v195, v196, v197);
            }

            v249[0] = 0;
            if (([*(v234 + 752) commitConfigurationWithID:objc_msgSend(*(v234 + 512) error:{"configurationID"), v249}] & 1) == 0)
            {
              OUTLINED_FUNCTION_34_14();
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v208 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
              if (OUTLINED_FUNCTION_5_2(v208))
              {
                v270 = 136315394;
                v271 = "captureSession_liveReconfigureForOutputAspectRatioChange";
                v272 = 2114;
                v273 = *v249;
                OUTLINED_FUNCTION_11_33();
                OUTLINED_FUNCTION_7_4();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_1_4();
              OUTLINED_FUNCTION_16_1(v209, v210, v211, v212, v213);
            }
          }

          goto LABEL_155;
        }
      }

      v7 = OUTLINED_FUNCTION_37(v11, v12, &v283, v282);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_155:
  if (dword_1ED844050)
  {
    OUTLINED_FUNCTION_34_14();
    v198 = OUTLINED_FUNCTION_24_16(qword_1ED844048);
    if (OUTLINED_FUNCTION_112_4(v198))
    {
      v199 = v0;
    }

    else
    {
      v199 = v0 & 0xFFFFFFFE;
    }

    if (v199)
    {
      mach_absolute_time();
      FigHostTimeToNanoseconds();
      v270 = 136315650;
      OUTLINED_FUNCTION_60_7("captureSession_liveReconfigureForOutputAspectRatioChange");
      *(v200 + 14) = @"Graph live reconfiguration";
      v274 = 2048;
      v275 = v201;
      OUTLINED_FUNCTION_5_58();
      OUTLINED_FUNCTION_7_4();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_17_8(v202, v203, v204, v205, v206);
  }

  OUTLINED_FUNCTION_128_0();
}

void __captureSession_stopGraph_block_invoke(uint64_t a1)
{
  v11 = 0;
  mach_absolute_time();
  [*(a1 + 32) stop:&v11];
  if (*(a1 + 56) == 1)
  {
    mach_absolute_time();
    FigHostTimeToNanoseconds();
    if (dword_1ED844050)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v4 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      if (OUTLINED_FUNCTION_5_24(v4))
      {
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_8_0();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_13_0(v5, v6, v7, v8, v9);
    }
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_10();
    kdebug_trace();
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    objc_setProperty_nonatomic(v10, v2, 0, 16);
  }
}

void __captureSession_activateCameraCaptureSourcesAndCreateDevices_block_invoke(uint64_t a1, int a2, int a3, int a4, void *a5)
{
  v10 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) referencedObject] && *(*(a1 + 40) + 896) == a2)
  {
    if (dword_1ED844050)
    {
      OUTLINED_FUNCTION_25_15();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v33))
      {
        v12 = v34;
      }

      else
      {
        v12 = v34 & 0xFFFFFFFE;
      }

      if (v12)
      {
        OUTLINED_FUNCTION_7_46();
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    switch(a4)
    {
      case 2:
        if ((a3 & 1) == 0)
        {
          OUTLINED_FUNCTION_25_15();
          v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v19 = os_log_type_enabled(v18, v33);
          if (OUTLINED_FUNCTION_31(v19))
          {
            OUTLINED_FUNCTION_7_46();
            OUTLINED_FUNCTION_5();
            OUTLINED_FUNCTION_13();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_1_4();
          OUTLINED_FUNCTION_56_0(v25, v26, v27, v28, v29);
          v13 = 0;
          goto LABEL_24;
        }

        OUTLINED_FUNCTION_25_15();
        v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v17 = os_log_type_enabled(v16, v33);
        if (OUTLINED_FUNCTION_5_24(v17))
        {
          OUTLINED_FUNCTION_2_75();
          OUTLINED_FUNCTION_8_0();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_1_4();
        OUTLINED_FUNCTION_13_0(v20, v21, v22, v23, v24);
        break;
      case 1:
        v13 = a3 ^ 1;
LABEL_24:
        v30 = OUTLINED_FUNCTION_9_19();
        captureSession_updateSessionStateWithNewInputCondition(v30, v31, v13, v32, 0);
        break;
      case 0:
        v13 = a3 ^ 1;
        if (a5)
        {
          os_unfair_lock_lock((*(a1 + 40) + 384));

          v14 = [a5 copy];
          v15 = *(a1 + 40);
          *(v15 + 408) = v14;
          os_unfair_lock_unlock((v15 + 384));
        }

        goto LABEL_24;
    }
  }

  objc_autoreleasePoolPop(v10);
}

void __captureSession_startObservingForAudiomxdDeath_block_invoke_2(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    OUTLINED_FUNCTION_19_20();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v3 = OUTLINED_FUNCTION_8_5(os_log_and_send_and_compose_flags_and_os_log_type);
    if (OUTLINED_FUNCTION_6(v3))
    {
      OUTLINED_FUNCTION_2_75();
      OUTLINED_FUNCTION_8_0();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_17_8(v4, v5, v6, v7, v8);
    OUTLINED_FUNCTION_41_11();
    captureSession_updateSessionStateWithNewInputCondition(v9, v10, v11, v12, v13);
    [*(*(a1 + 32) + 280) removeObserverForType:1 observer:*(*(a1 + 32) + 344) name:*MEMORY[0x1E698D558]];

    *(*(a1 + 32) + 344) = 0;
  }
}

void __captureSession_startObservingForAudiomxdDeath_block_invoke_2_972(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*v1)
  {
    if (dword_1ED844050)
    {
      OUTLINED_FUNCTION_19_20();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v4 = OUTLINED_FUNCTION_8_5(os_log_and_send_and_compose_flags_and_os_log_type);
      if (OUTLINED_FUNCTION_6(v4))
      {
        OUTLINED_FUNCTION_2_75();
        OUTLINED_FUNCTION_8_0();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_17_8(v5, v6, v7, v8, v9);
      v1 = *(a1 + 32);
    }

    *(*(a1 + 32) + 280) = 0;
    captureSession_notificationPayloadWithErrorStatus(*(a1 + 56), 4294951751);
    v10 = OUTLINED_FUNCTION_8();
    captureSession_postNotificationWithPayload(v10, @"DidStopRunning", v11);
  }
}

uint64_t __captureSession_createMultiCamClientCompositingCallback_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (![*(a1 + 32) referencedObject])
  {
    v19 = 0;
LABEL_7:
    v20 = 4294954516;
    goto LABEL_5;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v19 = 0;
    v20 = 4294954511;
    goto LABEL_5;
  }

  v18 = DerivedStorage;
  os_unfair_lock_lock((DerivedStorage + 264));
  v19 = *(v18 + 272);
  os_unfair_lock_unlock((v18 + 264));
  if (!v19)
  {
    goto LABEL_7;
  }

  v20 = v19[2](v19, *(a1 + 40), a2, a3, a4, a5, a6, a7, a8, a9);
LABEL_5:

  return v20;
}

id cs_containingBundleIdentifierForSecureCaptureExtensionBundleIdentifier(uint64_t a1)
{
  v4 = 0;
  v1 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:a1 allowPlaceholder:0 error:&v4];
  if (v4)
  {
    return 0;
  }

  v2 = v1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  else
  {
    return [objc_msgSend(objc_msgSend(v2 "containingBundleRecord")];
  }
}

uint64_t captureSession_servicePendingIrisRecordings_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_servicePendingIrisRecordings_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t cs_removeEmptyPendingIrisRecording_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_updateRunningCondition_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

void FigCaptureSessionPrewarm_cold_3(uint64_t a1, const void *a2, void *a3)
{
  os_unfair_lock_lock(&sPocketDetectionState);
  v6 = qword_1EB58E920;
  qword_1EB58E920 = a2;
  qword_1EB58E928 = a1;
  CFRetain(a2);
  if (v6)
  {
    CFRelease(v6);
  }

  cs_cancelPocketDetectionTimeoutTimer();
  v7 = qword_1EB58E930;
  if (!qword_1EB58E930)
  {
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v7 = dispatch_queue_create("com.apple.coremedia.capturesession.timeOutForPocketDetectionNeeded", v8);
    qword_1EB58E930 = v7;
  }

  v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v7);
  dispatch_time(0, 0x28FA6B000);
  v10 = OUTLINED_FUNCTION_26_13();
  dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x4190AB00uLL);
  *a3 = MEMORY[0x1E69E9820];
  a3[1] = 3221225472;
  a3[2] = __cs_setPocketDetectionNeeded_block_invoke;
  a3[3] = &unk_1E7990178;
  a3[4] = v9;
  a3[5] = a2;
  dispatch_source_set_event_handler(v9, a3);
  qword_1EB58E938 = v9;
  dispatch_activate(v9);
  os_unfair_lock_unlock(&sPocketDetectionState);
}

uint64_t FigCaptureSessionCreate_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_50_12(a1, a2, a3, a4, a5, a6, a7, a8, v23, v25, v27, v29, SWORD2(v29), SBYTE6(v29), SHIBYTE(v29));
  v16 = OUTLINED_FUNCTION_4_1(v8, v9, v10, v11, v12, v13, v14, v15, v24, v26, v28, v30, v31, v32, v33);
  if (OUTLINED_FUNCTION_5_2(v16))
  {
    OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_7_4();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_1_4();
  return OUTLINED_FUNCTION_16_1(v17, v18, v19, v20, v21);
}

uint64_t FigCaptureSessionCreate_cold_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_50_12(a1, a2, a3, a4, a5, a6, a7, a8, v23, v25, v27, v29, SWORD2(v29), SBYTE6(v29), SHIBYTE(v29));
  v16 = OUTLINED_FUNCTION_4_1(v8, v9, v10, v11, v12, v13, v14, v15, v24, v26, v28, v30, v31, v32, v33);
  if (OUTLINED_FUNCTION_5_2(v16))
  {
    OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_7_4();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_1_4();
  return OUTLINED_FUNCTION_16_1(v17, v18, v19, v20, v21);
}

void FigCaptureSessionCreate_cold_4(int a1, CFTypeRef *a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_1_5();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v7, v8, v9, v10, v11, vars0, vars8);
  if (*a2)
  {
    CFRelease(*a2);
  }

  *a3 = a1;
}

uint64_t captureSession_destroyAudioSessionForMicPipeline_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_destroyAudioSessionForMicPipeline_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_destroyAudioSessionForMicPipeline_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_destroyAudioSessionForMicPipeline_cold_4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_startObservingAudioInterruptionNotification_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_startObservingAudioInterruptionNotification_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_startObservingAudioInterruptionNotification_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

void cs_isPocketDetectionNeeded_cold_1(void *a1, _BYTE *a2)
{
  v3 = a1;
  if (!cs_bundleIdentifierIsSecureCaptureExtension(a1) || (v3 = cs_containingBundleIdentifierForSecureCaptureExtensionBundleIdentifier(v3)) != 0)
  {
    os_unfair_lock_lock(&sPocketDetectionState);
    if (qword_1EB58E920)
    {
      LOBYTE(v3) = CFEqual(v3, qword_1EB58E920) != 0;
    }

    else
    {
      LOBYTE(v3) = 0;
    }

    os_unfair_lock_unlock(&sPocketDetectionState);
  }

  else
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v5, v6, v7, v8, v9, vars0, vars8);
  }

  *a2 = v3;
}

uint64_t captureSession_fileStartRecording_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_fileStartRecording_cold_4()
{
  OUTLINED_FUNCTION_76_4();
  v2 = v1;
  OUTLINED_FUNCTION_4_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *(v0 + 72), 0xFFFFBFE7, "<<<< FigCaptureSession >>>>", 0x2BC6, v2, v3, v4, v8);
  return OUTLINED_FUNCTION_28_11(v5);
}

uint64_t captureSession_fileStartRecording_cold_6(uint64_t a1, _DWORD *a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_1_5();
  result = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v8, v9, v10, v11, v12, v13, vars0, vars8);
  if (*a2 == -16805)
  {
    *a2 = -16419;
  }

  *a4 = a3;
  return result;
}

uint64_t captureSession_fileStartRecording_cold_7()
{
  OUTLINED_FUNCTION_76_4();
  v2 = v1;
  OUTLINED_FUNCTION_4_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *(v0 + 72), 0xFFFFCE14, "<<<< FigCaptureSession >>>>", 0x2C1D, v2, v3, v4, v8);
  return OUTLINED_FUNCTION_28_11(v5);
}

uint64_t captureSession_fileStartRecording_cold_8()
{
  OUTLINED_FUNCTION_76_4();
  v2 = v1;
  OUTLINED_FUNCTION_4_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *(v0 + 72), 0xFFFFBFE7, "<<<< FigCaptureSession >>>>", 0x2BC5, v2, v3, v4, v8);
  return OUTLINED_FUNCTION_28_11(v5);
}

uint64_t captureSession_startDeferredGraphSetup_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_waitForGraphToStart_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_startDeferredGraphSetupWork_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t __captureSession_updateRunningCondition_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t __captureSession_updateRunningCondition_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_stopRunningInternal_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_transitionToSessionStatus_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_transitionToSessionStatus_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_startGraph_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFCE14, "<<<< FigCaptureSession >>>>", 0x2F25, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t __captureSession_startAVConferenceBackgroundRunningTrackingTimerIfNeeded_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_stopObservingInvalidAudioRecordingState_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_commitInflightConfiguration_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_commitInflightConfiguration_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFEFLL, "<<<< FigCaptureSession >>>>", 0x46DE, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_commitInflightConfiguration_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFEFLL, "<<<< FigCaptureSession >>>>", 0x46DB, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_commitInflightConfiguration_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFEFLL, "<<<< FigCaptureSession >>>>", 0x46E4, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_updateGraphConfiguration_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_updateGraphConfiguration_cold_5(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFEFLL, "<<<< FigCaptureSession >>>>", 0x40A0, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

uint64_t captureSession_updateGraphConfiguration_cold_6(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFEFLL, "<<<< FigCaptureSession >>>>", 0x409D, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

uint64_t __captureSession_commitInflightConfiguration_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t __captureSession_commitInflightConfiguration_block_invoke_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFEFLL, "<<<< FigCaptureSession >>>>", 0x3E56, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

uint64_t captureSession_buildGraphWithConfiguration_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_buildGraphWithConfiguration_cold_2()
{
  OUTLINED_FUNCTION_76_4();
  v2 = v1;
  OUTLINED_FUNCTION_4_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *(v0 + 72), 0xFFFFCE14, "<<<< FigCaptureSession >>>>", 0x3435, v2, v3, v4, v8);
  return OUTLINED_FUNCTION_28_11(v5);
}

uint64_t captureSession_buildGraphWithConfiguration_cold_4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_buildGraphWithConfiguration_cold_8(uint64_t a1, uint64_t *a2)
{
  if (captureSession_clientIsCameraOrDerivative(a1))
  {
    IsSecureCaptureExtension = 1;
  }

  else
  {
    IsSecureCaptureExtension = cs_bundleIdentifierIsSecureCaptureExtension(*a2);
  }

  os_unfair_lock_lock(&sFigCaptureSessionPrewarming);
  qword_1ED844938 = CFAbsoluteTimeGetCurrent();
  os_unfair_lock_unlock(&sFigCaptureSessionPrewarming);
  return cs_initMemoryPoolSize(IsSecureCaptureExtension, *a2);
}

uint64_t captureSession_buildGraphWithConfiguration_cold_10()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_buildGraphWithConfiguration_cold_17()
{
  OUTLINED_FUNCTION_76_4();
  v2 = v1;
  OUTLINED_FUNCTION_4_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *(v0 + 72), 0xFFFFCE14, "<<<< FigCaptureSession >>>>", 0x37DD, v2, v3, v4, v8);
  return OUTLINED_FUNCTION_28_11(v5);
}

uint64_t captureSession_buildGraphWithConfiguration_cold_18()
{
  OUTLINED_FUNCTION_76_4();
  v2 = v1;
  OUTLINED_FUNCTION_4_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *(v0 + 72), 0xFFFFCE14, "<<<< FigCaptureSession >>>>", 0x383F, v2, v3, v4, v8);
  return OUTLINED_FUNCTION_28_11(v5);
}

uint64_t captureSession_buildGraphWithConfiguration_cold_20()
{
  OUTLINED_FUNCTION_76_4();
  v2 = v1;
  OUTLINED_FUNCTION_4_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *(v0 + 72), 0xFFFFCE14, "<<<< FigCaptureSession >>>>", 0x3892, v2, v3, v4, v8);
  return OUTLINED_FUNCTION_28_11(v5);
}

void *captureSession_buildGraphWithConfiguration_cold_21(uint64_t a1, void *a2, void *a3, void *a4)
{
  [a2 sourceID];
  v6 = [OUTLINED_FUNCTION_8() objectForKeyedSubscript:?];
  if (v6)
  {
    v7 = *(v6 + 24);
    v8 = *(v6 + 32);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  result = FigCaptureBuildSinkPipelineName(v7, v8, [a3 underlyingDeviceType], @"Movie File Sink Pipeline");
  *a4 = result;
  return result;
}

uint64_t captureSession_buildGraphWithConfiguration_cold_23()
{
  OUTLINED_FUNCTION_76_4();
  v2 = v1;
  OUTLINED_FUNCTION_4_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *(v0 + 72), 0xFFFFCE14, "<<<< FigCaptureSession >>>>", 0x3960, v2, v3, v4, v8);
  return OUTLINED_FUNCTION_28_11(v5);
}

uint64_t captureSession_buildGraphWithConfiguration_cold_24()
{
  OUTLINED_FUNCTION_76_4();
  v2 = v1;
  OUTLINED_FUNCTION_4_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *(v0 + 72), 0xFFFFCE14, "<<<< FigCaptureSession >>>>", 0x3979, v2, v3, v4, v8);
  return OUTLINED_FUNCTION_28_11(v5);
}

uint64_t captureSession_buildGraphWithConfiguration_cold_25()
{
  OUTLINED_FUNCTION_76_4();
  v2 = v1;
  OUTLINED_FUNCTION_4_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *(v0 + 72), 0xFFFFCE14, "<<<< FigCaptureSession >>>>", 0x398A, v2, v3, v4, v8);
  return OUTLINED_FUNCTION_28_11(v5);
}

uint64_t captureSession_buildGraphWithConfiguration_cold_27()
{
  OUTLINED_FUNCTION_76_4();
  v2 = v1;
  OUTLINED_FUNCTION_4_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *(v0 + 72), 0xFFFFCE0ELL, "<<<< FigCaptureSession >>>>", 0x3464, v2, v3, v4, v8);
  return OUTLINED_FUNCTION_28_11(v5);
}

uint64_t captureSession_buildGraphWithConfiguration_cold_28()
{
  OUTLINED_FUNCTION_76_4();
  v2 = v1;
  OUTLINED_FUNCTION_4_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *(v0 + 72), 0xFFFFCE0ELL, "<<<< FigCaptureSession >>>>", 0x345F, v2, v3, v4, v8);
  return OUTLINED_FUNCTION_28_11(v5);
}

uint64_t captureSession_updateGraphForVideoPreviewSinkConfigurationChanges_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_updateGraphForMetadataConnectionConfigurationChanges_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_updateGraphForStillImageSinkConfigurationChanges_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_updateGraphForSourceConfigurationChanges_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_updateGraphForCinematographyConfigurationChanges_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_updateGraphForVideoDataSinkConfigurationChanges_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_stopGraph_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_updateGraphConnectionEnabledState_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_updateInflightConfigurationWithIrisSinkPropertyForKey_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_startMonitoringForFigAssetWriterWritingVideoNotificationIfNecessary_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_createDepthDataPipelineConfiguration_cold_1(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_1_5();
  result = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v9, v10, v11, v12, v13, v14, vars0, vars8);
  if (*a2)
  {
    v8 = 0;
  }

  else
  {
    v8 = a3;
  }

  *a4 = v8;
  return result;
}

void __captureSession_startObservingForAudiomxdDeath_block_invoke_cold_1(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  captureSession_stopMonitoringAudioPlaybackAndRouteChangeNotifications(a1);
  if (!*a2)
  {
    if (*(a2 + 280))
    {
      *a3 = MEMORY[0x1E69E9820];
      a3[1] = 3221225472;
      a3[2] = __captureSession_startObservingForAudiomxdDeath_block_invoke_2;
      a3[3] = &__block_descriptor_56_e5_v8__0l;
      a3[4] = a2;
      a3[5] = *(a4 + 40);
      a3[6] = a1;
      captureSession_performBlockOnWorkerQueueSynchronously(a1, a3);
    }
  }
}

uint64_t captureSession_createStillImageSinkPipeline_cold_6()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_createStillImageSinkPipeline_cold_14()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_createStillImageSinkPipeline_cold_15(void *a1, void *a2, int *a3)
{
  cs_stillImageDepthDataType(a1);
  [OUTLINED_FUNCTION_17() setDepthDataType:?];
  FigCaptureSourceGetIntAttribute([a1 source], @"PearlModuleType", a3);
  [OUTLINED_FUNCTION_17() setPearlModuleType:?];
  if (*a3)
  {
    OUTLINED_FUNCTION_14_21();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v8, v9, v10, v11, v12, vars0, vars8);
    return 0;
  }

  else
  {
    [a2 setSifrStillImageCaptureEnabledIfAvailable:{objc_msgSend(a2, "sifrStillImageCaptureEnabledIfAvailable") & (objc_msgSend(objc_msgSend(a1, "requiredFormat"), "isSIFRStillImageCaptureWithDepthDataDisabled") ^ 1)}];
    return 1;
  }
}

uint64_t captureSession_createStillImageSinkPipeline_cold_17(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFCE14, "<<<< FigCaptureSession >>>>", 0x279A, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_handlePlaybackOrRouteStateChange_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

void __getBMStreamsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getBMStreamsClass(void)_block_invoke") description:{@"FigCaptureSession.m", 204, @"Unable to find class %s", "BMStreams"}];
  __break(1u);
}

void BiomeStreamsLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *BiomeStreamsLibrary(void)") description:{@"FigCaptureSession.m", 202, @"%s", *a1}];
  __break(1u);
}

void __getBMDiscoverabilitySignalEventClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getBMDiscoverabilitySignalEventClass(void)_block_invoke") description:{@"FigCaptureSession.m", 203, @"Unable to find class %s", "BMDiscoverabilitySignalEvent"}];
  __break(1u);
}

void __captureSession_prepareCellularRadioForNetworkConnection_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"int soft_symptom_send(symptom_t)") description:{@"FigCaptureSession.m", 217, @"%s", dlerror()}];
  __break(1u);
}

void __captureSession_prepareCellularRadioForNetworkConnection_block_invoke_cold_2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"int soft_symptom_set_qualifier(symptom_t description:{uint64_t, uint32_t)"), @"FigCaptureSession.m", 216, @"%s", dlerror()}];
  __break(1u);
}

void __captureSession_prepareCellularRadioForNetworkConnection_block_invoke_cold_3()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"symptom_t soft_symptom_new(symptom_framework_t description:{symptom_ident_t)"), @"FigCaptureSession.m", 215, @"%s", dlerror()}];
  __break(1u);
}

void __captureSession_prepareCellularRadioForNetworkConnection_block_invoke_cold_4()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"symptom_framework_t soft_symptom_framework_init(symptom_ident_t description:{const char *)"), @"FigCaptureSession.m", 214, @"%s", dlerror()}];
  __break(1u);
}

void SymptomReporterLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *SymptomReporterLibrary(void)") description:{@"FigCaptureSession.m", 213, @"%s", *a1}];
  __break(1u);
}

uint64_t __captureSession_detachFromHostSession_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

CFTypeRef captureSession_CopyProperty_cold_1(uint64_t a1, void *a2)
{
  IsCameraOrDerivative = captureSession_clientIsCameraOrDerivative(a1);
  v4 = MEMORY[0x1E695E4D0];
  if (!IsCameraOrDerivative)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  result = CFRetain(*v4);
  *a2 = result;
  return result;
}

uint64_t captureSession_CopyProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFCE14, "<<<< FigCaptureSession >>>>", 0x5E4C, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_SetProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFCE14, "<<<< FigCaptureSession >>>>", 0x5C61, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_SetProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFCE14, "<<<< FigCaptureSession >>>>", 0x5C59, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_SetProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFCE14, "<<<< FigCaptureSession >>>>", 0x5C58, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_FileSinkStartRecording_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFF0, "<<<< FigCaptureSession >>>>", 0x60D5, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_FileSinkStartRecording_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFF0, "<<<< FigCaptureSession >>>>", 0x60D4, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_StillImageSinkCaptureImage_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFEFLL, "<<<< FigCaptureSession >>>>", 0x6152, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_StillImageSinkCaptureImage_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFF0, "<<<< FigCaptureSession >>>>", 0x6151, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_StillImageSinkCaptureImage_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFF0, "<<<< FigCaptureSession >>>>", 0x6150, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_StillImageSinkPrepareToCaptureBracket_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFF0, "<<<< FigCaptureSession >>>>", 0x6176, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_StillImageSinkPrepareToCaptureBracket_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFF0, "<<<< FigCaptureSession >>>>", 0x6175, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_IrisStillImageSinkCaptureImage_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFF0, "<<<< FigCaptureSession >>>>", 0x619A, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_IrisStillImageSinkCaptureImage_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFF0, "<<<< FigCaptureSession >>>>", 0x6199, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_IrisStillImageSinkPrepareToCapture_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFEFLL, "<<<< FigCaptureSession >>>>", 0x61C5, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_IrisStillImageSinkPrepareToCapture_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFEFLL, "<<<< FigCaptureSession >>>>", 0x61C4, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_IrisStillImageSinkBeginMomentCapture_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFEFLL, "<<<< FigCaptureSession >>>>", 0x61E7, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_IrisStillImageSinkBeginMomentCapture_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFEFLL, "<<<< FigCaptureSession >>>>", 0x61E6, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_IrisStillImageSinkBeginMomentCapture_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFF0, "<<<< FigCaptureSession >>>>", 0x61E5, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_IrisStillImageSinkCommitMomentCaptureToStillImageCapture_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFF0, "<<<< FigCaptureSession >>>>", 0x6266, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_IrisStillImageSinkCommitMomentCaptureToStillImageCapture_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFF0, "<<<< FigCaptureSession >>>>", 0x6265, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_IrisStillImageSinkCommitMomentCaptureToStillImageCapture_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFF0, "<<<< FigCaptureSession >>>>", 0x6264, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_IrisStillImageSinkCommitMomentCaptureToMovieRecording_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFF0, "<<<< FigCaptureSession >>>>", 0x62E0, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_IrisStillImageSinkCommitMomentCaptureToMovieRecording_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFF0, "<<<< FigCaptureSession >>>>", 0x62DF, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_IrisStillImageSinkCommitMomentCaptureToMovieRecording_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFF0, "<<<< FigCaptureSession >>>>", 0x62DE, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_IrisStillImageSinkCommitMomentCaptureToMovieRecording_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFF0, "<<<< FigCaptureSession >>>>", 0x62DD, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_IrisStillImageSinkCancelMomentCapture_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFF0, "<<<< FigCaptureSession >>>>", 0x634E, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_IrisStillImageSinkCancelMomentCapture_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFF0, "<<<< FigCaptureSession >>>>", 0x634D, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

uint64_t captureSession_setPreviewSinkProperty_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_setPreviewSinkProperty_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_setSectionPropertyInternal_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_updateInflightConfigurationWithVideoDataSinkPropertyForKey_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_captureStillImageNow_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_captureStillImageNow_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFF0, "<<<< FigCaptureSession >>>>", 0x1C05, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_captureStillImageNow_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFE7, "<<<< FigCaptureSession >>>>", 0x1C08, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_captureStillImageNow_cold_4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t captureSession_captureStillImageNow_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFE7, "<<<< FigCaptureSession >>>>", 0x1C07, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_captureStillImageNow_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFCE14, "<<<< FigCaptureSession >>>>", 0x1C04, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t captureSession_captureStillImageNow_cold_9(os_unfair_lock_s *a1, int *a2)
{
  OUTLINED_FUNCTION_4_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v11, v13, v14, v15, v16, v17, vars0, vars8);
  v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFF0, "<<<< FigCaptureSession >>>>", 0x1C03, v2, v5, v6, v12);
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  os_unfair_lock_lock(a1 + 96);
  if (a1[114]._os_unfair_lock_opaque)
  {
    v9 = v8;
  }

  else
  {
    v9 = -16409;
  }

  *a2 = v9;
  os_unfair_lock_unlock(a1 + 96);
  return 0;
}

uint64_t cs_IrisStillImageSinkPrepareMovieRecording_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t FigImageControl_Focus_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE0ELL, "|___ fsbp_IC_Focus ___|", 0xB3E, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigImageControl_Focus_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE0ELL, "|___ fsbp_IC_Focus ___|", 0xB39, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigImageControl_Focus_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE0ELL, "|___ fsbp_IC_Focus ___|", 0xB34, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

void FigImageControl_Focus_cold_5(const void *a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v8, v10, v11, v12, v13, v14, v15, v16);
  v5 = OUTLINED_FUNCTION_9_1();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 0xFFFFCE0ELL, "|___ fsbp_IC_Focus ___|", 0xB1D, v2, v6, v7, v9);

  CFRelease(a1);
}

uint64_t FigImageControl_Focus_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE0ELL, "|___ fsbp_IC_Focus ___|", 0xB18, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigImageControl_Focus_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE0ELL, "|___ fsbp_IC_Focus ___|", 0xB15, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigImageControl_Focus_cold_8(char a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v9, v11, v12, v13, v14, v15, v16, v17);
  v5 = OUTLINED_FUNCTION_9_1();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 0xFFFFCE0ELL, "|___ fsbp_IC_Focus ___|", 0xB10, v2, v6, v7, v10);
  return a1 & 1;
}

uint64_t FigImageControl_Focus_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE0ELL, "|___ fsbp_IC_Focus ___|", 0xB09, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

__SecTask *FigCaptureCurrentProcessHasEntitlement(__CFString *a1)
{
  v4 = 0u;
  v5 = 0u;
  FigCaptureGetCurrentProcessAuditToken(&v4);
  v3[0] = v4;
  v3[1] = v5;
  return FigCaptureClientHasEntitlement(v3, a1);
}

uint64_t ubn_insertOutputRouterForInputAfterPreviousInputForBufferType(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v8 = [objc_msgSend(a3 outputSampleBufferRouterForBufferType:{a4), "outputSampleBufferRouter"}];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
  v10 = 1;
  [a2 addOutputSampleBufferRouter:v9 forBufferTypes:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v13, 1)}];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
  [a3 addOutputSampleBufferRouter:a1 forBufferTypes:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v12, 1)}];
  return v10;
}

uint64_t pgs_iir_TestCorrectionFitsForSmoothParameter(uint64_t a1, double *a2, uint64_t *a3, float a4, double *a5, uint64_t a6, float32x2_t *a7, float32x2_t *a8, BOOL *a9)
{
  if (!a9)
  {
    OUTLINED_FUNCTION_2_8();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v9, v32, v33, v34, v35, v36, v37);
    v28 = OUTLINED_FUNCTION_2_8();
    v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, 0xFFFFCE14, "(Fig)", 0x17F, v9, v29, v30, v31);
    goto LABEL_8;
  }

  FigMotionInterpolateQuaternionsByAngle(a3, a4, a5);
  v39[0] = v17;
  v39[1] = v18;
  v39[2] = v19;
  v39[3] = v20;
  v38[0] = FigMotionMultiplyByInverseOfQuaternion(v39, a3);
  v38[1] = v21;
  v38[2] = v22;
  v38[3] = v23;
  v24 = pgs_computeTransformFromCameraMotion(v38, a2, a7, a8, &v33 + 4, *(a6 + 4));
  if (v24)
  {
    v25 = v24;
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v25, v9, v32, v33, v34, v35, v36, v37);
    goto LABEL_8;
  }

  *(a1 + 44) = 1065353216;
  v25 = pgs_limitTransformToOverscan(a1, (a6 + 88), &v33 + 4);
  if (v25)
  {
LABEL_8:
    v26 = 0;
    goto LABEL_5;
  }

  v26 = *(a1 + 44) >= 1.0;
LABEL_5:
  *a9 = v26;
  return v25;
}

uint64_t pgs_computeTransformFromCameraMotion_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0xBD, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

void fcdv_handleDeviceUnrecoverableError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  [objc_msgSend(a5 objectForKeyedSubscript:{*off_1E7989F68), "intValue"}];

  [BWFigCaptureDeviceVendor _handleDeviceUnrecoverableError:a2 fromDevice:?];
}

BOOL mv2ip_pixelBufferContainsValidContent(__CVBuffer *a1)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  HasAttachment = CVBufferHasAttachment(a1, *MEMORY[0x1E6965D70]);
  v7 = 1;
  if (PixelFormatType == 1278226536 && !HasAttachment)
  {
    v7 = 1;
    if (!CVPixelBufferLockBaseAddress(a1, 1uLL))
    {
      BaseAddress = CVPixelBufferGetBaseAddress(a1);
      if (BaseAddress)
      {
        v9 = BaseAddress;
        if (mv2ip_getFP16MinMaxFromBuffer_onceToken != -1)
        {
          dispatch_once(&mv2ip_getFP16MinMaxFromBuffer_onceToken, &__block_literal_global_83);
        }

        v10 = vld1q_dup_s16(v9);
        if (Height)
        {
          v11 = 0;
          v12 = (Width & 0x3F) - (Width & 0x38);
          do
          {
            if (Width >= 0x40)
            {
              v14 = v9;
              v15 = Width >> 6;
              do
              {
                v10 = vmaxq_f16(vmaxq_f16(vmaxq_f16(vmaxq_f16(*v14, v14[1]), vmaxq_f16(v14[2], v14[3])), vmaxq_f16(vmaxq_f16(v14[4], v14[5]), vmaxq_f16(v14[6], v14[7]))), v10);
                v14 += 8;
                --v15;
              }

              while (v15);
              v13 = &v9[64 * (Width >> 6)];
            }

            else
            {
              v13 = v9;
            }

            if ((Width & 0x3F) >= 8)
            {
              v16 = v13;
              v17 = (Width >> 3) & 7;
              do
              {
                v18 = *v16++;
                v10 = vmaxq_f16(v18, v10);
                --v17;
              }

              while (v17);
            }

            if (v12)
            {
              v24 = v10;
              __memcpy_chk();
              if (v12 <= 7)
              {
                v19 = *(&v25.i16[-1] + 2 * (Width & 0x3F) - ((2 * Width) & 0x70));
                v20 = (Width & 0x3F) - (Width & 0x38);
                do
                {
                  v25.i16[v20++] = v19;
                }

                while (v20 != 8);
              }

              v10 = vmaxq_f16(v25, v24);
            }

            v9 += BytesPerRow >> 1;
            ++v11;
          }

          while (v11 != Height);
        }

        v21 = vpmax_f16(*v10.i8, *&vextq_s8(v10, v10, 8uLL));
        v22 = vpmax_f16(v21, v21);
        return vcvtq_f32_f16(vpmax_f16(v22, v22)).f32[0] > 0.49804;
      }

      else
      {
        return 1;
      }
    }
  }

  return v7;
}

void *FigCaptureCinematicFramingUpdateSampleBufferMetadata(void *a1, CMAttachmentBearerRef target, int a3)
{
  HIDWORD(v56) = a3;
  v3 = target;
  result = CMGetAttachment(target, *off_1E798A3C8, 0);
  if (result)
  {
    v6 = result;
    v115 = 0u;
    v116 = 0u;
    v7 = *off_1E798B220;
    v8 = [result objectForKeyedSubscript:*off_1E798B220];
    v9 = MEMORY[0x1E695E480];
    v57 = v6;
    v59 = v3;
    if (v8)
    {
      v54 = v7;
      DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], v8, 1uLL);
      v111 = 0u;
      v112 = 0u;
      v113 = 0u;
      v114 = 0u;
      v67 = [DeepCopy countByEnumeratingWithState:&v111 objects:v110 count:16];
      if (v67)
      {
        v63 = *v112;
        v11 = *off_1E798ACE8;
        v12 = *off_1E798B5C0;
        v13 = *off_1E798B470;
        v14 = *off_1E798B5D0;
        v65 = DeepCopy;
        v61 = *off_1E798ACE8;
        do
        {
          v15 = 0;
          do
          {
            if (*v112 != v63)
            {
              objc_enumerationMutation(DeepCopy);
            }

            v71 = v15;
            v16 = *(*(&v111 + 1) + 8 * v15);
            v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v106 = 0u;
            v107 = 0u;
            v108 = 0u;
            v109 = 0u;
            v69 = v16;
            v18 = [objc_msgSend(DeepCopy objectForKeyedSubscript:{v16), "objectForKeyedSubscript:", v11}];
            v19 = [v18 countByEnumeratingWithState:&v106 objects:v105 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v107;
              do
              {
                for (i = 0; i != v20; ++i)
                {
                  if (*v107 != v21)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v23 = *(*(&v106 + 1) + 8 * i);
                  FigCaptureUpdateToDisplayCoordinates(a1, v23, v12);
                  FigCaptureUpdateToDisplayCoordinates(a1, v23, v13);
                  FigCaptureUpdateToDisplayCoordinates(a1, v23, v14);
                  if (FigCFDictionaryGetCGRectIfPresent() && OUTLINED_FUNCTION_0_81())
                  {
                    [v17 addObject:v23];
                  }
                }

                v20 = [v18 countByEnumeratingWithState:&v106 objects:v105 count:16];
              }

              while (v20);
            }

            DeepCopy = v65;
            v11 = v61;
            [objc_msgSend(v65 objectForKeyedSubscript:{v69, v54), "setObject:forKeyedSubscript:", v17, v61}];
            v15 = v71 + 1;
          }

          while (v71 + 1 != v67);
          v67 = [v65 countByEnumeratingWithState:&v111 objects:v110 count:16];
        }

        while (v67);
      }

      v6 = v57;
      [v57 setObject:DeepCopy forKeyedSubscript:{v54, v54}];

      v3 = v59;
      v9 = MEMORY[0x1E695E480];
    }

    v24 = *off_1E798B218;
    v25 = [v6 objectForKeyedSubscript:*off_1E798B218];
    if (v25)
    {
      v26 = CFPropertyListCreateDeepCopy(*v9, v25, 1uLL);
      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v35 = OUTLINED_FUNCTION_9_15(v27, v28, v29, v30, v31, v32, v33, v34, v53, v56, v57, v59, v61, v63, v65, v67, v69, v24, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103);
      if (v35)
      {
        v36 = v35;
        v37 = MEMORY[0];
        v38 = *off_1E798B5C0;
        v39 = *off_1E798B470;
        v40 = *off_1E798B5D0;
        do
        {
          for (j = 0; j != v36; ++j)
          {
            if (MEMORY[0] != v37)
            {
              objc_enumerationMutation(v26);
            }

            v42 = *(8 * j);
            FigCaptureUpdateToDisplayCoordinates(a1, v42, v38);
            FigCaptureUpdateToDisplayCoordinates(a1, v42, v39);
            FigCaptureUpdateToDisplayCoordinates(a1, v42, v40);
            CGRectIfPresent = FigCFDictionaryGetCGRectIfPresent();
            if (CGRectIfPresent)
            {
              CGRectIfPresent = OUTLINED_FUNCTION_0_81();
              if (CGRectIfPresent)
              {
                CGRectIfPresent = [v27 addObject:v42];
              }
            }
          }

          v36 = OUTLINED_FUNCTION_9_15(CGRectIfPresent, v44, v45, v46, v47, v48, v49, v50, v55, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104);
        }

        while (v36);
      }

      v6 = v58;
      [v58 setObject:v27 forKeyedSubscript:v72];

      v3 = v60;
    }

    if (HIDWORD(v56))
    {
      v51 = *off_1E798A518;
      v52 = CMGetAttachment(v3, *off_1E798A518, 0);
      if (!v52)
      {
        v52 = [MEMORY[0x1E695DF90] dictionary];
      }

      [v52 setValuesForKeysWithDictionary:{objc_msgSend(a1, "manualFramingStateMetadata")}];
      CMSetAttachment(v3, v51, v52, 1u);
    }

    return [v6 removeObjectForKey:*off_1E798A5C8];
  }

  return result;
}

BOOL captureDeferredPhotoProcessorServer_handleReplyMessage_cold_34()
{
  OUTLINED_FUNCTION_2_74();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  v5 = v2;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5, v6, v7, v8, v9, v10, vars0, vars8);
  v3 = *v1;
  *v0 = *v1;
  return v3 == 0;
}

void captureDeferredPhotoProcessorServer_handleReplyMessage_cold_36(int a1, const void *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  v4 = a1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v5, v6, v7, v8, v9, vars0, vars8);
  CFRelease(a2);
}

uint64_t captureDeferredPhotoProcessorServer_handleReplyMessage_cold_39()
{
  OUTLINED_FUNCTION_2_74();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  v4 = v2;
  result = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v5, v6, v7, v8, v9, vars0, vars8);
  *v0 = *v1;
  return result;
}

uint64_t captureDeferredPhotoProcessorServer_handleReplyMessage_cold_42()
{
  OUTLINED_FUNCTION_2_74();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  v4 = v2;
  result = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v5, v6, v7, v8, v9, vars0, vars8);
  *v0 = *v1;
  return result;
}

uint64_t captureDeferredPhotoProcessorServer_handleReplyMessage_cold_48(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE10, "<< FigCaptureDeferredPhotoProcessorServer >>", 0x6C, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t captureDeferredPhotoProcessorServer_getAndRetainProcessorObjectFromMessage_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<< FigCaptureDeferredPhotoProcessorServer >>", 0x46, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

id sdpc_depthMetadataAttachmentDictionaryFromStereoDisparityMetadata(void *a1, CMAttachmentBearerRef target, int a3, int a4)
{
  if (CMGetAttachment(target, *off_1E798A3C8, 0))
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = v7;
    if (a4)
    {
      v9 = &unk_1F2245418;
    }

    else
    {
      v9 = &unk_1F2245430;
    }

    [v7 setObject:v9 forKeyedSubscript:*off_1E798D008];
    [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E798CFD0];
    [v8 setObject:&unk_1F2245418 forKeyedSubscript:*off_1E798CFC0];
    memset(v72, 0, 48);
    if (a3)
    {
      [a1 teleIntrinsicMatrix];
      [OUTLINED_FUNCTION_1_93(v10 v11];
    }

    else
    {
      [a1 wideIntrinsicMatrix];
      [OUTLINED_FUNCTION_1_93(v15 v16];
    }

    v18 = v13;
    v19 = v14;
    [v8 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", v72, 48), *off_1E798CFD8}];
    v73.width = v18;
    v73.height = v19;
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v73);
    [v8 setObject:DictionaryRepresentation forKeyedSubscript:*off_1E798CFE0];

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    if (a3)
    {
      [a1 teleExtrinsicMatrix];
    }

    else
    {
      [a1 wideExtrinsicMatrix];
    }

    DWORD2(v68) = v22;
    DWORD2(v69) = v24;
    *&v68 = v21;
    *&v69 = v23;
    DWORD2(v70) = v26;
    DWORD2(v71) = v28;
    *&v70 = v25;
    *&v71 = v27;
    [v8 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", &v68, 64), *off_1E798CFC8}];
    if (a3)
    {
      [a1 telePixelSizeInMillimeters];
    }

    else
    {
      [a1 widePixelSizeInMillimeters];
    }

    [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), *off_1E798D000}];
    if (a3)
    {
      v29 = [a1 teleLensDistortionCoefficients];
    }

    else
    {
      v29 = [a1 wideLensDistortionCoefficients];
    }

    v30 = v29;
    if (v29)
    {
      v31 = [MEMORY[0x1E695DF88] dataWithLength:{4 * objc_msgSend(v29, "count")}];
      v32 = [v31 mutableBytes];
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v34 = OUTLINED_FUNCTION_52(v32, v33, &v64, v63);
      if (v34)
      {
        v35 = v34;
        v36 = *v65;
        do
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v65 != v36)
            {
              objc_enumerationMutation(v30);
            }

            v38 = [*(*(&v64 + 1) + 8 * i) floatValue];
            *v32++ = v40;
          }

          v35 = OUTLINED_FUNCTION_52(v38, v39, &v64, v63);
        }

        while (v35);
      }

      [v8 setObject:v31 forKeyedSubscript:*off_1E798CFF8];
    }

    if (a3)
    {
      v41 = [a1 teleInverseLensDistortionCoefficients];
    }

    else
    {
      v41 = [a1 wideInverseLensDistortionCoefficients];
    }

    v42 = v41;
    if (v41)
    {
      v43 = [MEMORY[0x1E695DF88] dataWithLength:{4 * objc_msgSend(v41, "count")}];
      v44 = [v43 mutableBytes];
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v46 = OUTLINED_FUNCTION_52(v44, v45, &v59, v58);
      if (v46)
      {
        v47 = v46;
        v48 = *v60;
        do
        {
          for (j = 0; j != v47; ++j)
          {
            if (*v60 != v48)
            {
              objc_enumerationMutation(v42);
            }

            v50 = [*(*(&v59 + 1) + 8 * j) floatValue];
            *v44++ = v52;
          }

          v47 = OUTLINED_FUNCTION_52(v50, v51, &v59, v58);
        }

        while (v47);
      }

      [v8 setObject:v43 forKeyedSubscript:*off_1E798CFE8];
    }

    if (a3)
    {
      [a1 teleLensDistortionOpticalCenter];
    }

    else
    {
      [a1 wideLensDistortionOpticalCenter];
    }

    v55 = CGPointCreateDictionaryRepresentation(*&v53);
    [v8 setObject:v55 forKeyedSubscript:*off_1E798CFF0];

    v56 = [a1 version];
    [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v56 | (FigDepthDataGetCurrentMajorVersion() << 16)), *off_1E798D010}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t FigCaptureReferenceFrameSelection_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< FigCaptureSampleBufferProcessorCommon >>>>", 0x4A, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigCaptureReferenceFrameSelection_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< FigCaptureSampleBufferProcessorCommon >>>>", 0x2D, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigCaptureReferenceFrameSelection_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< FigCaptureSampleBufferProcessorCommon >>>>", 0x2C, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigCaptureReferenceFrameSelection_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< FigCaptureSampleBufferProcessorCommon >>>>", 0x29, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigCapturePTSBasedReferenceFrameSelection_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< FigCaptureSampleBufferProcessorCommon >>>>", 0x15F, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigCapturePTSBasedReferenceFrameSelection_cold_4(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v8, v10, v11, v12, v13, v14, vars0, vars8);
  v4 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFCE14, "<<<< FigCaptureSampleBufferProcessorCommon >>>>", 0xA2, v2, v5, v6, v9);
  *a2 = result;
  return result;
}

uint64_t FigCapturePTSBasedReferenceFrameSelection_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< FigCaptureSampleBufferProcessorCommon >>>>", 0xB2, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigCapturePTSBasedReferenceFrameSelection_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE12, "<<<< FigCaptureSampleBufferProcessorCommon >>>>", 0x76, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigCapturePTSBasedReferenceFrameSelection_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< FigCaptureSampleBufferProcessorCommon >>>>", 0x75, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigCapturePTSBasedReferenceFrameSelection_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< FigCaptureSampleBufferProcessorCommon >>>>", 0x193, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigCapturePTSBasedReferenceFrameSelection_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< FigCaptureSampleBufferProcessorCommon >>>>", 0x161, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigCapturePTSBasedReferenceFrameSelection_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< FigCaptureSampleBufferProcessorCommon >>>>", 0x160, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t fcsc_deserializeDataUsingNSSecureCoding_cold_1(id *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v8, v10, v11, v12, v13, v14, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  v4 = [*a1 code];
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, "<<<< FigCaptureSessionConfiguration >>>>", 0x17A7, v1, v5, v6, v9);
}

uint64_t FigMotionComputeOpticalCenterInBuffer(const __CFDictionary *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float64x2_t *a6, float a7, double a8, uint64_t a9, uint64_t a10, id *a11)
{
  value = 0;
  point = *MEMORY[0x1E695EFF8];
  if (a1 && a6)
  {
    v15 = a5;
    v20 = HIDWORD(a2);
    HIDWORD(v35) = 1065353216;
    v21 = FigMotionComputeLensPositionScalingFactor(a1, a2, a3, a3, a5, &v35 + 1, a9, a10);
    if (v21)
    {
      v31 = v21;
      fig_log_get_emitter();
      v33 = v31;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v33, v11, v34, v35, LODWORD(point.x), *&point.y, v37, LODWORD(v38.f64[0]));
    }

    v38.f64[0] = (a2 + -1.0) * 0.5;
    v38.f64[1] = (v20 + -1.0) * 0.5;
    if (!CFDictionaryGetValueIfPresent(a1, *off_1E798B520, &value) || !CGPointMakeWithDictionaryRepresentation(value, &point) || (result = FigMotionMapPointFromRawToBuffer(a1, a2, a3, a4, &v38, point.x, point.y, *(&v35 + 1), v24, v25, v26), !result))
    {
      if (!v15 || (result = FigMotionAdjustPointForSphereMovement(a1, &v38, a7, *(&v35 + 1), a8, v22, v23), !result))
      {
        result = 0;
        *a6 = v38;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_5();
    v32 = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v32, v11, v34, v35, LODWORD(point.x), *&point.y, v37, LODWORD(v38.f64[0]));
    v28 = OUTLINED_FUNCTION_7_5();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, 0xFFFFCE14, "(Fig)", 0xBB5, v11, v29, v30, a11);
  }

  return result;
}

uint64_t portIndexFromPortType_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x45, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t portIndexFromPortType_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x44, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t hallPositionIndexFromPortType_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x6A, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t hallPositionIndexFromPortType_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x69, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t bravoTransitionCameraIndexFromPortType_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x80, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t bravoTransitionCameraIndexFromPortType_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x7F, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionGetGravityFactor_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE0DLL, "(Fig)", 0x11D, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionGetGravityFactor_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE11, "(Fig)", 0x11B, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t GetFocalLengthParametersFromArrayUsingModuleInfo_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE11, "(Fig)", 0x74E, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t GetFocalLengthParametersFromArrayUsingModuleInfo_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x760, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t GetFocalLengthParametersFromArrayUsingModuleInfo_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x7A6, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t GetFocalLengthParametersFromArrayUsingModuleInfo_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE11, "(Fig)", 0x7A1, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t GetFocalLengthParametersFromArrayUsingModuleInfo_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE11, "(Fig)", 0x79D, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionGetGravityZ_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE11, "(Fig)", 0x157, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionGetGravityZ_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x154, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionISPMotionDataFromCFData_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x142, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionISPMotionDataFromCFData_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE13, "(Fig)", 0x144, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionISPMotionDataFromCFData_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE11, "(Fig)", 0x13E, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionISPMotionDataFromCFData_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE11, "(Fig)", 0x13B, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionISPMotionDataFromCFData_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x137, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeLensPositionScalingFactor_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x1AA, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeLensPositionScalingFactor_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x1A9, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeLensPositionScalingFactor_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x193, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeLensPositionScalingFactor_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x192, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeFramePTSOffsetFromISPCrop_cold_2(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v8, v10, v11, v12, v13, v14, vars0, vars8);
  v4 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFCE14, "(Fig)", 0x1FF, v2, v5, v6, v9);
  *a2 = result;
  return result;
}

uint64_t FigMotionComputeFramePTSOffsetFromISPCrop_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x1EF, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeFramePTSOffsetFromISPCrop_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x1EC, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeFramePTSOffsetFromISPCrop_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x1E8, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeFramePTSOffsetFromISPCrop_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x1E5, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionGetMotionDataFromISP_cold_1(int a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_5_64();
  v3 = OUTLINED_FUNCTION_5_17();
  FigDebugAssert3(v3);
  OUTLINED_FUNCTION_2_8();
  v6 = a1;
  v4 = OUTLINED_FUNCTION_5_17();
  return FigDebugAssert3(v4, v6, v1);
}

uint64_t FigMotionGetMotionDataFromISP_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x29E, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionGetISPHallData_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x258, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionGetISPHallData_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE13, "(Fig)", 0x254, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionGetISPHallData_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE11, "(Fig)", 0x251, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionGetISPHallData_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x26A, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeBlurScores_cold_1(int a1, _DWORD *a2, _DWORD *a3)
{
  *a2 = a1;
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v9, v11, v12, v13, v14, v15, vars0, vars8);
  v5 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 0xFFFFCE14, "(Fig)", 0x2CD, v3, v6, v7, v10);
  *a3 = result;
  return result;
}

uint64_t FigMotionComputeBlurScores_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x2C6, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeBlurScores_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE11, "(Fig)", 0x354, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeBlurScores_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x314, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeBlurScores_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x312, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeBlurScores_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x300, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeBlurScores_cold_12(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x35C, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeBlurScores_cold_13(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x336, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeQuaternionAndAttitudeFromArray_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE11, "(Fig)", 0xE99, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeQuaternionAndAttitudeFromArray_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0xE76, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionClearFocalLengthData_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x463, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionStashQuadraBinningFactor_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x472, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionStashFocalLengthData_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x47D, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionUpdateBaseZoomFactorAdjustment_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x48A, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeBravoTranslation_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE11, "(Fig)", 0x4C7, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionGetTimeStampAtPositionRatio_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14, "(Fig)", 0x4FE, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

uint64_t FigMotionGetTimeStampAtPositionRatio_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE11, "(Fig)", 0x4F9, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

uint64_t FigMotionGetTimeStampAtPositionRatio_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE11, "(Fig)", 0x4F5, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

uint64_t FigMotionGetTimeStampAtPositionRatio_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14, "(Fig)", 0x4F1, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeLensMovementAndSagForTimeStamp_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x604, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionGetCameraCharacterizationData_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x6AF, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t GetFocalLengthParametersFromArrayUsingModuleLensID_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x70D, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t GetFocalLengthParametersFromArrayUsingModuleLensID_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x716, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t GetFocalLengthParametersFromArrayUsingModuleLensID_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE11, "(Fig)", 0x72D, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionCalculateAdjustedLensPosition_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x7E0, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionCalculateAdjustedLensPosition_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE11, "(Fig)", 0x7D8, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionCalculateAdjustedLensPosition_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE11, "(Fig)", 0x7D4, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionGetBravoDataFromDictionary_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE11, "(Fig)", 0x988, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionGetBravoDataFromDictionary_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE11, "(Fig)", 0x984, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionGetBravoDataFromDictionary_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE11, "(Fig)", 0x980, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionExtractCameraInfo_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE11, "(Fig)", 0x91B, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionExtractCameraInfo_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x917, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionExtractCameraInfo_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x92F, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionExtractCameraInfo_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE11, "(Fig)", 0x92D, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionExtractCameraInfo_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE11, "(Fig)", 0x93F, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionExtractCameraInfo_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0x93B, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionExtractCameraInfo_cold_7()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5, v7, v8, v9, v10, v11, vars0, vars8);
  v1 = OUTLINED_FUNCTION_2();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, 0xFFFFCE11, "(Fig)", 0x9AA, v0, v2, v3, v6);
}

uint64_t FigMotionExtractCameraInfo_cold_8()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5, v7, v8, v9, v10, v11, vars0, vars8);
  v1 = OUTLINED_FUNCTION_2();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, 0xFFFFCE11, "(Fig)", 0x9BE, v0, v2, v3, v6);
}

uint64_t FigMotionNormalizeQuaternion_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE12, "(Fig)", 0xA3C, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionNormalizeQuaternion_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0xA39, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeAverageSpherePosition_cold_1(int a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_5_64();
  v3 = OUTLINED_FUNCTION_5_17();
  FigDebugAssert3(v3);
  OUTLINED_FUNCTION_2_8();
  v6 = a1;
  v4 = OUTLINED_FUNCTION_5_17();
  return FigDebugAssert3(v4, v6, v1);
}

uint64_t FigMotionComputeAverageSpherePosition_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE11, "(Fig)", 0xAD0, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeAverageSpherePosition_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE11, "(Fig)", 0xACC, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionAdjustPointForSphereMovement_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0xAFC, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeDistortionCenter_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0xB84, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionMapPointFromRawToBuffer_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0xB27, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeRawSensorCenterInBuffer_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0xBE7, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeRawSensorCenterInBuffer_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0xBE6, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeRawSensorCenterInBuffer_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0xBE2, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionSphereShiftStateInitialize_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0xC41, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeWideToNarrowShift_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0xD2B, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeWideToNarrowShift_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0xD2A, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeWideToNarrowShift_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0xCBB, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeWideToNarrowShift_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0xCBA, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeWideToNarrowShift_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0xCB9, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeAverageQuaternionFromArray_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFFFFDLL, "(Fig)", 0xE5A, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeAverageQuaternionFromArray_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFFFFCLL, "(Fig)", 0xE5B, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeAverageQuaternionFromArray_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFFFFFLL, "(Fig)", 0xE59, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigMotionComputeAverageQuaternionFromArray_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "(Fig)", 0xE1D, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForMotionAttachments_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "|___ fsbp_MotionAttachments ___|", 0x571, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForMotionAttachments_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "|___ fsbp_MotionAttachments ___|", 0x55D, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForMotionAttachments_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "|___ fsbp_MotionAttachments ___|", 0x557, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForMotionAttachments_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "|___ fsbp_MotionAttachments ___|", 0x554, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForMotionAttachments_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE11, "|___ fsbp_MotionAttachments ___|", 0x551, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForMotionAttachments_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE0ELL, "|___ fsbp_MotionAttachments ___|", 0x5C9, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForMotionAttachments_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE0ELL, "|___ fsbp_MotionAttachments ___|", 0x5C6, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForMotionAttachments_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE0ELL, "|___ fsbp_MotionAttachments ___|", 0x5C2, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForMotionAttachments_cold_12(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE0ELL, "|___ fsbp_MotionAttachments ___|", 0x5BE, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForMotionAttachments_cold_13(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE0ELL, "|___ fsbp_MotionAttachments ___|", 0x5BB, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForMotionAttachments_cold_14(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE0ELL, "|___ fsbp_MotionAttachments ___|", 0x5B8, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForMotionAttachments_cold_15(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "|___ fsbp_MotionAttachments ___|", 0x5B2, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForMotionAttachments_cold_16(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE0ELL, "|___ fsbp_MotionAttachments ___|", 0x5B0, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForMotionAttachments_cold_17(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "|___ fsbp_MotionAttachments ___|", 0x515, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_ma_processSampleBuffer_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE0FLL, "|___ fsbp_MotionAttachments ___|", 0x46C, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_ma_processSampleBuffer_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  v2 = 0;
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0, v2);
}

uint64_t sbp_ma_processSampleBuffer_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  v2 = 0;
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0, v2);
}

uint64_t sbp_ma_processSampleBuffer_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "|___ fsbp_MotionAttachments ___|", 0x456, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_ma_processSampleBuffer_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "|___ fsbp_MotionAttachments ___|", 0x446, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_ma_processSampleBuffer_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "|___ fsbp_MotionAttachments ___|", 0x1DE, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_ma_attachMotionData_cold_1()
{
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, v14, v15);
  v3 = OUTLINED_FUNCTION_9_1();
  *v0 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "|___ fsbp_MotionAttachments ___|", 0x40C, v2, v4, v5, v8);
  return v1 & 1;
}

uint64_t sbp_ma_attachMotionData_cold_2()
{
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, v14, v15);
  v3 = OUTLINED_FUNCTION_9_1();
  *v0 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "|___ fsbp_MotionAttachments ___|", 0x402, v2, v4, v5, v8);
  return v1 & 1;
}

uint64_t sbp_ma_attachMotionData_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE0ELL, "|___ fsbp_MotionAttachments ___|", 0x3F4, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_ma_attachMotionData_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "|___ fsbp_MotionAttachments ___|", 0x3E7, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_ma_processInitialCinematicFutureMetadata_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "|___ fsbp_MotionAttachments ___|", 0x42B, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_ma_addMotionDataToMetadataDictionary_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "|___ fsbp_MotionAttachments ___|", 0x31B, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_ma_addMotionDataToMetadataDictionary_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t sbp_ma_addMotionDataToMetadataDictionary_cold_3()
{
  OUTLINED_FUNCTION_7_3();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_9();
  return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1, v2, v3, v4, v5, v6, vars0, vars8);
}

uint64_t sbp_ma_addMotionDataToMetadataDictionary_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t sbp_ma_addMotionDataToMetadataDictionary_cold_5()
{
  OUTLINED_FUNCTION_7_3();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_9();
  return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1, v2, v3, v4, v5, v6, vars0, vars8);
}

void sbp_ma_addMotionDataToMetadataDictionary_cold_6(uint64_t a1, const void *a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v9, v11, v12, v13, v14, v15, v16, v17);
  v6 = OUTLINED_FUNCTION_9_1();
  *a3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 0xFFFFCE0ELL, "|___ fsbp_MotionAttachments ___|", 0x15E, v3, v7, v8, v10);
  CFRelease(a2);
}

uint64_t sbp_ma_addMotionDataToMetadataDictionary_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE0ELL, "|___ fsbp_MotionAttachments ___|", 0x15B, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_ma_addMotionDataToMetadataDictionary_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE0ELL, "|___ fsbp_MotionAttachments ___|", 0x389, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_ma_addMotionDataToMetadataDictionary_cold_13()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5, v7, v8, v9, v10, v11, vars0, vars8);
  emitter = fig_log_get_emitter();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE0ELL, "|___ fsbp_MotionAttachments ___|", 0x35A, v0, v2, v3, v6);
}

uint64_t sbp_ma_addMotionDataToMetadataDictionary_cold_14(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "|___ fsbp_MotionAttachments ___|", 0x31A, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

void *BWSmartStyleInfoDictionary(void *a1, void *a2, void *a3, __CVBuffer *a4, __CVBuffer *a5, __CVBuffer *a6, void *a7, uint64_t a8, unsigned int a9)
{
  v49 = 1065353216;
  v50 = 1065353216;
  v16 = [MEMORY[0x1E695DF90] dictionary];
  v48 = [a7 smartStyle];
  if (a4)
  {
    DataFromPixelBufferWithoutPadding = _getDataFromPixelBufferWithoutPadding(a4, a7 != 0, a8);
    if (!DataFromPixelBufferWithoutPadding)
    {
      goto LABEL_45;
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(a4);
    if (PixelFormatType != 1278226536 && PixelFormatType != 1278226534)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_7_6();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0);
      goto LABEL_45;
    }

    v44 = PixelFormatType == 1278226536;
    [v16 setObject:DataFromPixelBufferWithoutPadding forKeyedSubscript:*MEMORY[0x1E6991620]];
    v45 = [MEMORY[0x1E696AD98] numberWithBool:v44];
    [v16 setObject:v45 forKeyedSubscript:*MEMORY[0x1E6991628]];
  }

  else
  {
    DataFromPixelBufferWithoutPadding = 0;
  }

  v18 = [a2 objectForKeyedSubscript:*off_1E798B358];
  if (v18)
  {
    [v16 setObject:v18 forKeyedSubscript:*MEMORY[0x1E69915E8]];
  }

  v19 = [MEMORY[0x1E6991718] computeLinearImageExposureWithMetadata:a2 outputBaseGain:&v50 outputBaselineExposure:&v49];
  if (v19)
  {
    v46 = v19;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7_6();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v46);
    goto LABEL_45;
  }

  isEqualToString = objc_msgSend_isEqualToString_([v48 cast]);
  OUTLINED_FUNCTION_1_94(isEqualToString, &unk_1F22454D8);
  if (a8 == 14 || a8 == 8)
  {
    v23 = objc_msgSend_isEqualToString_([v48 cast]);
    OUTLINED_FUNCTION_1_94(v23, &unk_1F22454F0);
  }

  LODWORD(v21) = v49;
  v24 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
  [v16 setObject:v24 forKeyedSubscript:*MEMORY[0x1E69915D8]];
  LODWORD(v25) = v50;
  v26 = [MEMORY[0x1E696AD98] numberWithFloat:v25];
  [v16 setObject:v26 forKeyedSubscript:*MEMORY[0x1E6991608]];
  v27 = 0;
  if (!a5)
  {
    v28 = 0;
    goto LABEL_20;
  }

  v28 = 0;
  if (a6)
  {
    if (CVPixelBufferGetPixelFormatType(a5) == 1278226536 && CVPixelBufferGetPixelFormatType(a6) == 1278226536)
    {
      v28 = _getDataFromPixelBufferWithoutPadding(a5, 1, a8);
      if (!v28)
      {
        v27 = 0;
        goto LABEL_37;
      }

      v27 = _getDataFromPixelBufferWithoutPadding(a6, 1, a8);
      if (!v27)
      {
        goto LABEL_37;
      }

      [v16 setObject:v28 forKeyedSubscript:*MEMORY[0x1E6991638]];
      [v16 setObject:v27 forKeyedSubscript:*MEMORY[0x1E6991658]];
      [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", CVPixelBufferGetWidth(a5)), *MEMORY[0x1E6991650]}];
      [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", CVPixelBufferGetHeight(a5)), *MEMORY[0x1E6991640]}];
      v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1278226536];
      [v16 setObject:v29 forKeyedSubscript:*MEMORY[0x1E6991648]];
      goto LABEL_20;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_7_6();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0);
LABEL_45:
    v27 = 0;
    v28 = 0;
    goto LABEL_37;
  }

LABEL_20:
  if (OUTLINED_FUNCTION_116())
  {
    [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(OUTLINED_FUNCTION_116(), "intValue")), *MEMORY[0x1E6991630]}];
  }

  if (!a7)
  {
    v40 = [a3 objectForKeyedSubscript:*off_1E798A908];
    if (v40)
    {
      if ([v40 BOOLValue])
      {
        goto LABEL_37;
      }
    }

    else if (![objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798A8E8), "BOOLValue"}] || !OUTLINED_FUNCTION_116())
    {
      goto LABEL_37;
    }

    v38 = OUTLINED_FUNCTION_116();
    v39 = MEMORY[0x1E6991660];
    goto LABEL_36;
  }

  v30 = [a1 objectForKeyedSubscript:*off_1E798A8D0];
  [v16 setObject:v30 forKeyedSubscript:*MEMORY[0x1E69915F8]];
  v31 = [a1 objectForKeyedSubscript:*off_1E798A8D8];
  [v16 setObject:v31 forKeyedSubscript:*MEMORY[0x1E6991600]];
  v32 = [a1 objectForKeyedSubscript:*off_1E798A900];
  [v16 setObject:v32 forKeyedSubscript:*MEMORY[0x1E6991610]];
  v33 = [a1 objectForKeyedSubscript:*off_1E798B2B0];
  v34 = [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798B350), "BOOLValue"}];
  if (v33)
  {
    if (v34)
    {
      v35 = &unk_1F224C1F0;
    }

    else
    {
      v35 = v33;
    }

    [v16 setObject:v35 forKeyedSubscript:*MEMORY[0x1E69915E0]];
  }

  v36 = NSClassFromString([MEMORY[0x1E696AEC0] stringWithFormat:@"CMISmartStyleV%d", a9]);
  if (v36)
  {
    v37 = objc_alloc_init(v36);
    [v37 setCastType:{objc_msgSend(v48, "cast")}];
    [v48 intensity];
    [v37 setCastIntensity:?];
    [v48 toneBias];
    [v37 setToneBias:?];
    [v48 colorBias];
    [v37 setColorBias:?];
    v38 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(MEMORY[0x1E6991718], "isHDRGainMapHeadroomAdjusted:", v37)}];
    v39 = MEMORY[0x1E69915F0];
LABEL_36:
    [v16 setObject:v38 forKeyedSubscript:*v39];
  }

LABEL_37:

  return v16;
}

id _getDataFromPixelBufferWithoutPadding(__CVBuffer *a1, int a2, uint64_t a3)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v7 = PixelFormatType;
  if (PixelFormatType == 1278226536)
  {
    v8 = 2;
  }

  else
  {
    if (PixelFormatType != 1278226534)
    {
      return 0;
    }

    v8 = 4;
  }

  if (CVPixelBufferLockBaseAddress(a1, 1uLL))
  {
    return 0;
  }

  if (a2)
  {
    v9 = 0;
  }

  else
  {
    v11 = [MEMORY[0x1E6991728] configurationForUseCase:a3];
    [MEMORY[0x1E6991738] coefficientPixelBufferSizeForConfiguration:v11 float16:v7 == 1278226536];
    v9 = (v12 * v13 * v8);
  }

  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v18 = Width * v8;
  v19 = v18 * Height;
  if (!a2)
  {
    v19 = v9;
  }

  v28 = v19;
  v10 = objc_alloc_init(MEMORY[0x1E695DF88]);
  if (Height)
  {
    v20 = 1;
    v21 = BytesPerRow;
    do
    {
      [v10 appendBytes:BaseAddress length:v18];
      v22 = a2 ^ 1;
      if (v9 > v21)
      {
        v22 = 0;
      }

      if (v22)
      {
        break;
      }

      BaseAddress += BytesPerRow;
      v21 += BytesPerRow;
    }

    while (Height > v20++);
  }

  if ([v10 length] != v28)
  {

    v10 = 0;
  }

  v24 = CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  if (v24)
  {
    v26 = v24;
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v26, v27, v27, v28, v29, v30, v31, v32);
  }

  return v10;
}