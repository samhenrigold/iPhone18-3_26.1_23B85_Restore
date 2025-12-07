@interface GCSpatialDeviceProfile
@end

@implementation GCSpatialDeviceProfile

uint64_t __40___GCSpatialDeviceProfile_deviceManager__block_invoke(uint64_t a1)
{
  v2 = [_GCDefaultDeviceManager alloc];
  v3 = NSStringFromClass(*(a1 + 32));
  v4 = [(_GCDefaultDeviceManager *)v2 initWithIdentifier:v3 matchingFilter:*(a1 + 32) probeScore:*MEMORY[0x1E69A0678]];
  v5 = deviceManager_deviceManager_7;
  deviceManager_deviceManager_7 = v4;

  v6 = *(a1 + 32);
  v7 = deviceManager_deviceManager_7;

  return [v7 setDelegate:v6];
}

_GCThumbstickHIDEventParser *__95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke(uint64_t a1, void *a2)
{
  v84 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_cold_1();
  }

  v81 = 0;
  v3 = [v2 gc_requiredObjectForKey:@"UsagePage" ofClass:objc_opt_class() error:&v81];
  v4 = v81;
  if (v3)
  {
    v80 = 0;
    v5 = [v2 gc_requiredObjectForKey:@"Usage" ofClass:objc_opt_class() error:&v80];
    v6 = v80;

    if (v5)
    {
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 24) + 1;
      *(v7 + 24) = v8;
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 24) + 1;
      *(v9 + 24) = v10;
      v11 = objc_opt_new();
      [v11 parseXAxisForKey:v8];
      [v11 parseYAxisForKey:v10];
      v79 = 0;
      v12 = [v2 gc_objectForKey:@"Children" ofClass:objc_opt_class() error:&v79];
      v13 = v79;

      v66 = v3;
      v67 = v11;
      v64 = v10;
      v65 = v8;
      if (v12 || !v13)
      {
        v63 = v5;
        v17 = [v12 firstObject];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v60 = v12;
          v78 = 0;
          v18 = [v17 gc_requiredObjectForKey:@"UsagePage" ofClass:objc_opt_class() error:&v78];
          v19 = v78;

          v77 = 0;
          v20 = [v17 gc_requiredObjectForKey:@"Usage" ofClass:objc_opt_class() error:&v77];
          v13 = v77;

          v61 = v18;
          v59 = v20;
          if (v18 && v20)
          {
            v21 = v18;
            v22 = [v18 unsignedIntValue];
            v23 = [v20 unsignedIntValue];
            if (v22 == 9)
            {
              v24 = v23;
              v25 = *(*(a1 + 40) + 8);
              v26 = *(v25 + 24) + 1;
              *(v25 + 24) = v26;
              v27 = objc_opt_new();
              v28 = v24;
              v29 = v26;
              [v27 setRequiredButtonNumber:v28];
              v57 = v27;
              [v27 parseButtonStateForKey:v26];
              v76 = 0;
              v58 = v17;
              v30 = [v17 gc_objectForKey:@"Children" ofClass:objc_opt_class() error:&v76];
              v31 = v76;

              v62 = v29;
              v56 = v30;
              if (v30 || !v31)
              {
                v55 = v2;
                v68 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v30, "count")}];
                v72 = 0u;
                v73 = 0u;
                v74 = 0u;
                v75 = 0u;
                v33 = v30;
                v34 = [v33 countByEnumeratingWithState:&v72 objects:v83 count:16];
                if (v34)
                {
                  v35 = v34;
                  v14 = 0;
                  v36 = *v73;
                  do
                  {
                    for (i = 0; i != v35; ++i)
                    {
                      if (*v73 != v36)
                      {
                        objc_enumerationMutation(v33);
                      }

                      v38 = *(*(&v72 + 1) + 8 * i);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v39 = objc_opt_class();
                        v71 = 0;
                        v40 = [v38 gc_requiredObjectForKey:@"UsagePage" ofClass:v39 error:&v71];
                        v41 = v71;

                        v42 = objc_opt_class();
                        v70 = 0;
                        v43 = [v38 gc_requiredObjectForKey:@"Usage" ofClass:v42 error:&v70];
                        v31 = v70;

                        LODWORD(v41) = [v40 unsignedIntValue];
                        v44 = [v43 unsignedIntValue] & 0xFFFFFFFE;
                        if (v41 == 32 && v44 == 18)
                        {
                          v46 = *(*(a1 + 40) + 8);
                          v14 = *(v46 + 24) + 1;
                          *(v46 + 24) = v14;
                          v47 = objc_opt_new();
                          [v47 parseFingerTouchForKey:v14];
                          [v68 addObject:v47];
                        }
                      }
                    }

                    v35 = [v33 countByEnumeratingWithState:&v72 objects:v83 count:16];
                  }

                  while (v35);
                }

                else
                {
                  v14 = 0;
                }

                v32 = v27;
                [v27 setChildEventParsers:v68];

                v2 = v55;
                v5 = v63;
                v11 = v67;
                v21 = v61;
              }

              else
              {
                v5 = v63;
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_cold_2();
                }

                v14 = 0;
                v21 = v61;
                v32 = v57;
              }

              v82 = v32;
              v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
              [v11 setChildEventParsers:v48];

              v13 = v31;
              v12 = v60;
              v17 = v58;
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_cold_3();
              }

              v14 = 0;
              v62 = 0;
              v5 = v63;
              v12 = v60;
            }
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_cold_2();
            }

            v14 = 0;
            v62 = 0;
            v5 = v63;
            v12 = v60;
            v21 = v61;
          }
        }

        else
        {
          v14 = 0;
          v62 = 0;
        }

        v6 = v13;
        v15 = v62;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_cold_5();
        }

        v14 = 0;
        v15 = 0;
        v6 = v13;
      }

      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"thumbstick"];
      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Thumbstick"];
      v51 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v50, 0}];
      v52 = [MEMORY[0x1E69A06B0] descriptionWithIdentifier:v49];
      [v52 setAliases:v51];
      [v52 setLocalizedName:v50];
      [v52 setEventXValueField:v65];
      [v52 setEventYValueField:v64];
      [v52 setAnalogAxes:1];
      LODWORD(v53) = 1028443341;
      [v52 setDirectionPressedThreshold:v53];
      if (v15)
      {
        [v52 setSupportsPress:1];
        [v52 setEventPressValueField:v15];
      }

      v3 = v66;
      if (v14)
      {
        [v52 setSupportsTouch:1];
        [v52 setEventTouchValueField:v14];
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_cold_6();
      }

      [*(a1 + 32) addObject:v52];

      v16 = v67;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_cold_7();
      }

      v16 = 0;
    }

    v4 = v6;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_cold_7();
    }

    v16 = 0;
  }

  return v16;
}

_GCButtonHIDEventParser *__95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_157(uint64_t a1, void *a2)
{
  v71 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_157_cold_1();
  }

  v69 = 0;
  v4 = [v3 gc_requiredObjectForKey:@"UsagePage" ofClass:objc_opt_class() error:&v69];
  v5 = v69;
  if (v4)
  {
    v68 = 0;
    v6 = [v3 gc_requiredObjectForKey:@"Usage" ofClass:objc_opt_class() error:&v68];
    v7 = v68;

    if (!v6)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_157_cold_4();
      }

      v10 = 0;
      goto LABEL_81;
    }

    v67 = 0;
    v8 = [v3 gc_objectForKey:@"MultiBit" ofClass:objc_opt_class() error:&v67];
    v9 = v67;

    if (!v8 && v9)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_157_cold_4();
      }

      v10 = 0;
      goto LABEL_80;
    }

    v11 = [v6 unsignedIntValue];
    v12 = [v8 BOOLValue];
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 24) + 1;
    *(v13 + 24) = v14;
    v15 = objc_opt_new();
    v51 = v11;
    [v15 setRequiredButtonNumber:v11];
    v50 = v14;
    [v15 parseButtonStateForKey:v14];
    v59 = a1;
    v55 = v15;
    if (v12)
    {
      v16 = *(*(a1 + 40) + 8);
      v17 = *(v16 + 24) + 1;
      *(v16 + 24) = v17;
      v49 = v17;
      [v15 parseButtonPressureForKey:?];
    }

    else
    {
      v49 = 0;
    }

    v66 = 0;
    v18 = [v3 gc_objectForKey:@"Children" ofClass:objc_opt_class() error:&v66];
    v19 = v66;

    v53 = v6;
    v54 = v4;
    v52 = v8;
    if (!v18 && v19)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_cold_5();
      }

      v56 = 0;
      v57 = 0;
      v9 = v19;
LABEL_45:

      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"button.%llu", v51];
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Button %llu", v51];
      v41 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v40, 0}];
      v42 = v41;
      if (*(v59 + 48) == 1)
      {
        if (v51 <= 6)
        {
          switch(v51)
          {
            case 1:
              v43 = &GCInputButtonA;
              break;
            case 2:
              v43 = &GCInputButtonB;
              break;
            case 5:
              v43 = GCInputGripButton;
              break;
            default:
              goto LABEL_59;
          }

          goto LABEL_58;
        }

        switch(v51)
        {
          case 7:
            v43 = GCInputTrigger;
            goto LABEL_58;
          case 0xC8:
LABEL_63:
            v10 = 0;
            v4 = v54;
LABEL_79:

            v8 = v52;
            v6 = v53;
LABEL_80:

            v7 = v9;
LABEL_81:

            v5 = v7;
            goto LABEL_82;
          case 0xC9:
            v43 = &GCInputButtonMenu;
LABEL_58:
            [v41 addObject:*v43];
            break;
        }
      }

LABEL_59:
      if (*(v59 + 49) != 1)
      {
        goto LABEL_70;
      }

      if (v51 > 2)
      {
        if (v51 == 4)
        {
          v44 = &GCInputStylusSecondaryButton;
        }

        else
        {
          if (v51 != 3)
          {
            goto LABEL_70;
          }

          v44 = GCInputStylusPrimaryButton;
        }
      }

      else
      {
        if (v51 != 1)
        {
          if (v51 == 2)
          {
            goto LABEL_63;
          }

LABEL_70:
          v45 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:v39];
          [v45 setAliases:v42];
          [v45 setLocalizedName:v40];
          [v45 setEventPressedValueField:v50];
          if (v49)
          {
            [v45 setAnalog:1];
            [v45 setEventAnalogPressValueField:v49];
          }

          if (v57)
          {
            [v45 setSupportsTouch:1];
            [v45 setEventTouchValueField:v57];
          }

          if (v56)
          {
            [v45 setSupportsForce:1];
            [v45 setEventForceValueField:v56];
          }

          v4 = v54;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_157_cold_3();
          }

          [*(v59 + 32) addObject:v45];
          v10 = v55;

          goto LABEL_79;
        }

        v44 = GCInputStylusTip;
      }

      [v42 addObject:*v44];
      goto LABEL_70;
    }

    v48 = v3;
    v58 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v18, "count")}];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v47 = v18;
    v20 = v18;
    v21 = [v20 countByEnumeratingWithState:&v62 objects:v70 count:16];
    if (!v21)
    {
      v56 = 0;
      v57 = 0;
      goto LABEL_44;
    }

    v22 = v21;
    v56 = 0;
    v57 = 0;
    v23 = *v63;
LABEL_26:
    v24 = 0;
    while (1)
    {
      if (*v63 != v23)
      {
        objc_enumerationMutation(v20);
      }

      v25 = *(*(&v62 + 1) + 8 * v24);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_40;
      }

      v26 = objc_opt_class();
      v61 = 0;
      v27 = [v25 gc_requiredObjectForKey:@"UsagePage" ofClass:v26 error:&v61];
      v28 = v61;

      v29 = objc_opt_class();
      v60 = 0;
      v30 = [v25 gc_requiredObjectForKey:@"Usage" ofClass:v29 error:&v60];
      v19 = v60;

      v31 = [v27 unsignedIntValue];
      v32 = [v30 unsignedIntValue];
      if (v31 == 32 && (v32 & 0xFFFFFFFE) == 18)
      {
        v37 = *(*(v59 + 40) + 8);
        v38 = *(v37 + 24) + 1;
        *(v37 + 24) = v38;
        v36 = objc_opt_new();
        v57 = v38;
        [v36 parseFingerTouchForKey:v38];
      }

      else
      {
        if (v31 != 32 || v32 != 100)
        {
          goto LABEL_39;
        }

        v34 = *(*(v59 + 40) + 8);
        v35 = *(v34 + 24) + 1;
        *(v34 + 24) = v35;
        v36 = objc_opt_new();
        v56 = v35;
        [v36 parseForceForKey:v35];
      }

      [v58 addObject:v36];

LABEL_39:
LABEL_40:
      if (v22 == ++v24)
      {
        v22 = [v20 countByEnumeratingWithState:&v62 objects:v70 count:16];
        if (!v22)
        {
LABEL_44:

          [v55 setChildEventParsers:v58];
          v9 = v19;
          v18 = v47;
          v3 = v48;
          goto LABEL_45;
        }

        goto LABEL_26;
      }
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_157_cold_4();
  }

  v10 = 0;
LABEL_82:

  return v10;
}

_GCHIDEventParser *__95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_169(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_169_cold_1();
    }

    v44 = 0;
    v4 = [v3 gc_requiredObjectForKey:@"UsagePage" ofClass:objc_opt_class() error:&v44];
    v5 = v44;
    if (v4)
    {
      v43 = 0;
      v6 = [v3 gc_requiredObjectForKey:@"Usage" ofClass:objc_opt_class() error:&v43];
      v7 = v43;

      if (v6)
      {
        v8 = objc_opt_new();
        v42 = 0;
        v9 = [v3 gc_objectForKey:@"Children" ofClass:objc_opt_class() error:&v42];
        v10 = v42;

        if (v9 || !v10)
        {
          v29 = v8;
          v30 = v6;
          v31 = v4;
          v32 = v3;
          v34 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v12 = v9;
          v13 = [v12 countByEnumeratingWithState:&v38 objects:v47 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v39;
            v33 = a1 + 40;
            v35 = a1 + 32;
            do
            {
              v16 = 0;
              do
              {
                if (*v39 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v38 + 1) + 8 * v16);
                v18 = objc_opt_class();
                v37 = 0;
                v19 = [v17 gc_requiredObjectForKey:@"UsagePage" ofClass:v18 error:&v37];
                v20 = v37;

                if (v19)
                {
                  v21 = objc_opt_class();
                  v36 = 0;
                  v22 = [v17 gc_requiredObjectForKey:@"Usage" ofClass:v21 error:&v36];
                  v10 = v36;

                  if (v22)
                  {
                    v23 = [v19 unsignedIntValue];
                    v24 = v35;
                    if (v23 == 9 || [v19 unsignedIntValue] == 1 && (v27 = objc_msgSend(v22, "unsignedIntValue"), v24 = v33, v27 == 150))
                    {
                      v25 = (*(*v24 + 16))();
                      if (v25)
                      {
                        v26 = v25;
                        [v34 addObject:v25];
                      }
                    }
                  }

                  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_169_cold_3(buf, v10, &buf[4]);
                  }
                }

                else
                {
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_169_cold_3(v46, v20, &v46[4]);
                  }

                  v10 = v20;
                }

                ++v16;
              }

              while (v14 != v16);
              v14 = [v12 countByEnumeratingWithState:&v38 objects:v47 count:16];
            }

            while (v14);
          }

          v8 = v29;
          [v29 setChildEventParsers:v34];

          v11 = v29;
          v4 = v31;
          v3 = v32;
          v6 = v30;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_169_cold_2();
          }

          v11 = 0;
        }

        v7 = v10;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_169_cold_2();
        }

        v11 = 0;
      }

      v5 = v7;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_169_cold_2();
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_169_cold_3(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_error_impl(&dword_1D2CD5000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error processing top-level element: %@", buf, 0xCu);
}

@end