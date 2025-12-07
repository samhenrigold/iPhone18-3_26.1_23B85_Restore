id INIntentSlotValueTransformToGEOLatLngs(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = INIntentSlotValueTransformToGEOLatLng(*(*(&v11 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:{v8, v11}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];

  return v9;
}

id INIntentSlotValueTransformFromDistance(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = [a1 values];
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = INIntentSlotValueTransformFromDistanceValue(*(*(&v9 + 1) + 8 * i));
        if (v6)
        {
          v7 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  return v7;
}

id INIntentSlotValueTransformFromDistanceValue(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 valueMetadata];
    INPrivacyEntitlementValidateValueMetadata(v3);

    if (![v2 hasUnit])
    {
      goto LABEL_28;
    }

    switch([v2 unit])
    {
      case 1u:
        v4 = [MEMORY[0x1E696B058] meters];
        break;
      case 2u:
        v4 = [MEMORY[0x1E696B058] miles];
        break;
      case 3u:
        v4 = [MEMORY[0x1E696B058] centimeters];
        break;
      case 4u:
        v4 = [MEMORY[0x1E696B058] feet];
        break;
      case 5u:
        v4 = [MEMORY[0x1E696B058] inches];
        break;
      case 6u:
        v4 = [MEMORY[0x1E696B058] yards];
        break;
      case 7u:
        v4 = [MEMORY[0x1E696B058] kilometers];
        break;
      case 8u:
        v4 = [MEMORY[0x1E696B058] megameters];
        break;
      case 9u:
        v4 = [MEMORY[0x1E696B058] hectometers];
        break;
      case 0xAu:
        v4 = [MEMORY[0x1E696B058] decameters];
        break;
      case 0xBu:
        v4 = [MEMORY[0x1E696B058] decimeters];
        break;
      case 0xCu:
        v4 = [MEMORY[0x1E696B058] millimeters];
        break;
      case 0xDu:
        v4 = [MEMORY[0x1E696B058] micrometers];
        break;
      case 0xEu:
        v4 = [MEMORY[0x1E696B058] nanometers];
        break;
      case 0xFu:
        v4 = [MEMORY[0x1E696B058] picometers];
        break;
      case 0x10u:
        v4 = [MEMORY[0x1E696B058] scandinavianMiles];
        break;
      case 0x11u:
        v4 = [MEMORY[0x1E696B058] lightyears];
        break;
      case 0x12u:
        v4 = [MEMORY[0x1E696B058] nauticalMiles];
        break;
      case 0x13u:
        v4 = [MEMORY[0x1E696B058] fathoms];
        break;
      case 0x14u:
        v4 = [MEMORY[0x1E696B058] furlongs];
        break;
      case 0x15u:
        v4 = [MEMORY[0x1E696B058] astronomicalUnits];
        break;
      case 0x16u:
        v4 = [MEMORY[0x1E696B058] parsecs];
        break;
      default:
        goto LABEL_28;
    }

    v6 = v4;
    if (!v4)
    {
LABEL_28:
      v7 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        v11 = 136315138;
        v12 = "INIntentSlotValueTransformFromDistanceValue";
        _os_log_error_impl(&dword_18E991000, v7, OS_LOG_TYPE_ERROR, "%s _INPBDistanceValue must contain a unit. Otherwise ambiguous magnitude for NSMeasurement", &v11, 0xCu);
      }

      v8 = [MEMORY[0x1E695DF58] currentLocale];
      if ([v8 usesMetricSystem])
      {
        [MEMORY[0x1E696B058] meters];
      }

      else
      {
        [MEMORY[0x1E696B058] miles];
      }
      v6 = ;
    }

    v9 = objc_alloc(MEMORY[0x1E696AD28]);
    [v2 magnitude];
    v5 = [v9 initWithDoubleValue:v6 unit:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

_INPBDistance *INIntentSlotValueTransformToDistance(void *a1)
{
  v1 = INIntentSlotValueTransformToDistanceValue(a1);
  if (v1)
  {
    v2 = objc_alloc_init(_INPBDistance);
    [(_INPBDistance *)v2 addValue:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

_INPBDistanceValue *INIntentSlotValueTransformToDistanceValue(void *a1)
{
  v61 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v2 = 0;
    goto LABEL_49;
  }

  v2 = objc_alloc_init(_INPBDistanceValue);
  v3 = [v1 unit];
  [v1 doubleValue];
  [(_INPBDistanceValue *)v2 setMagnitude:?];
  v4 = [MEMORY[0x1E696B058] kilometers];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v6 = v2;
    v7 = 7;
  }

  else
  {
    v8 = [MEMORY[0x1E696B058] meters];
    v9 = [v3 isEqual:v8];

    if (v9)
    {
      v6 = v2;
      v7 = 1;
    }

    else
    {
      v10 = [MEMORY[0x1E696B058] centimeters];
      v11 = [v3 isEqual:v10];

      if (v11)
      {
        v6 = v2;
        v7 = 3;
      }

      else
      {
        v12 = [MEMORY[0x1E696B058] inches];
        v13 = [v3 isEqual:v12];

        if (v13)
        {
          v6 = v2;
          v7 = 5;
        }

        else
        {
          v14 = [MEMORY[0x1E696B058] feet];
          v15 = [v3 isEqual:v14];

          if (v15)
          {
            v6 = v2;
            v7 = 4;
          }

          else
          {
            v16 = [MEMORY[0x1E696B058] yards];
            v17 = [v3 isEqual:v16];

            if (v17)
            {
              v6 = v2;
              v7 = 6;
            }

            else
            {
              v18 = [MEMORY[0x1E696B058] miles];
              v19 = [v3 isEqual:v18];

              if (v19)
              {
                v6 = v2;
                v7 = 2;
              }

              else
              {
                v20 = [MEMORY[0x1E696B058] megameters];
                v21 = [v3 isEqual:v20];

                if (v21)
                {
                  v6 = v2;
                  v7 = 8;
                }

                else
                {
                  v22 = [MEMORY[0x1E696B058] hectometers];
                  v23 = [v3 isEqual:v22];

                  if (v23)
                  {
                    v6 = v2;
                    v7 = 9;
                  }

                  else
                  {
                    v24 = [MEMORY[0x1E696B058] decameters];
                    v25 = [v3 isEqual:v24];

                    if (v25)
                    {
                      v6 = v2;
                      v7 = 10;
                    }

                    else
                    {
                      v26 = [MEMORY[0x1E696B058] decimeters];
                      v27 = [v3 isEqual:v26];

                      if (v27)
                      {
                        v6 = v2;
                        v7 = 11;
                      }

                      else
                      {
                        v28 = [MEMORY[0x1E696B058] millimeters];
                        v29 = [v3 isEqual:v28];

                        if (v29)
                        {
                          v6 = v2;
                          v7 = 12;
                        }

                        else
                        {
                          v30 = [MEMORY[0x1E696B058] micrometers];
                          v31 = [v3 isEqual:v30];

                          if (v31)
                          {
                            v6 = v2;
                            v7 = 13;
                          }

                          else
                          {
                            v32 = [MEMORY[0x1E696B058] nanometers];
                            v33 = [v3 isEqual:v32];

                            if (v33)
                            {
                              v6 = v2;
                              v7 = 14;
                            }

                            else
                            {
                              v34 = [MEMORY[0x1E696B058] picometers];
                              v35 = [v3 isEqual:v34];

                              if (v35)
                              {
                                v6 = v2;
                                v7 = 15;
                              }

                              else
                              {
                                v36 = [MEMORY[0x1E696B058] scandinavianMiles];
                                v37 = [v3 isEqual:v36];

                                if (v37)
                                {
                                  v6 = v2;
                                  v7 = 16;
                                }

                                else
                                {
                                  v38 = [MEMORY[0x1E696B058] lightyears];
                                  v39 = [v3 isEqual:v38];

                                  if (v39)
                                  {
                                    v6 = v2;
                                    v7 = 17;
                                  }

                                  else
                                  {
                                    v40 = [MEMORY[0x1E696B058] nauticalMiles];
                                    v41 = [v3 isEqual:v40];

                                    if (v41)
                                    {
                                      v6 = v2;
                                      v7 = 18;
                                    }

                                    else
                                    {
                                      v42 = [MEMORY[0x1E696B058] fathoms];
                                      v43 = [v3 isEqual:v42];

                                      if (v43)
                                      {
                                        v6 = v2;
                                        v7 = 19;
                                      }

                                      else
                                      {
                                        v44 = [MEMORY[0x1E696B058] furlongs];
                                        v45 = [v3 isEqual:v44];

                                        if (v45)
                                        {
                                          v6 = v2;
                                          v7 = 20;
                                        }

                                        else
                                        {
                                          v46 = [MEMORY[0x1E696B058] astronomicalUnits];
                                          v47 = [v3 isEqual:v46];

                                          if (v47)
                                          {
                                            v6 = v2;
                                            v7 = 21;
                                          }

                                          else
                                          {
                                            v48 = [MEMORY[0x1E696B058] parsecs];
                                            v49 = [v3 isEqual:v48];

                                            if (!v49)
                                            {
                                              v51 = INSiriLogContextIntents;
                                              if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
                                              {
                                                v57 = 136315394;
                                                v58 = "INIntentSlotValueTransformToDistanceValue";
                                                v59 = 2112;
                                                v60 = v3;
                                                _os_log_error_impl(&dword_18E991000, v51, OS_LOG_TYPE_ERROR, "%s NSMeasurement<NSUnitLength *> distance unit is %@. Only meters and miles are supported", &v57, 0x16u);
                                              }

                                              v52 = [MEMORY[0x1E695DF58] currentLocale];
                                              v53 = [v52 usesMetricSystem];

                                              if (v53)
                                              {
                                                v54 = 1;
                                              }

                                              else
                                              {
                                                v54 = 2;
                                              }

                                              [(_INPBDistanceValue *)v2 setUnit:v54];
                                              if (v53)
                                              {
                                                [MEMORY[0x1E696B058] meters];
                                              }

                                              else
                                              {
                                                [MEMORY[0x1E696B058] miles];
                                              }
                                              v55 = ;
                                              v56 = [v1 measurementByConvertingToUnit:v55];
                                              [v56 doubleValue];
                                              [(_INPBDistanceValue *)v2 setMagnitude:?];

                                              goto LABEL_48;
                                            }

                                            v6 = v2;
                                            v7 = 22;
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  [(_INPBDistanceValue *)v6 setUnit:v7];
LABEL_48:

LABEL_49:

  return v2;
}

id INIntentSlotValueTransformFromDistanceValues(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = INIntentSlotValueTransformFromDistanceValue(*(*(&v11 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:{v8, v11}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];

  return v9;
}

id INIntentSlotValueTransformFromDistances(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = INIntentSlotValueTransformFromDistance(*(*(&v11 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:{v8, v11}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];

  return v9;
}

id INIntentSlotValueTransformToDistanceValues(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = INIntentSlotValueTransformToDistanceValue(*(*(&v10 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:{v8, v10}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

id INIntentSlotValueTransformToDistances(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = INIntentSlotValueTransformToDistance(*(*(&v10 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:{v8, v10}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

id INIntentSlotValueRedactedValueFromDistanceValue(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 valueMetadata];
  v5 = INPrivacyEntitlementOptionsForValueMetadata(v4);

  if ((v5 & a2) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v3 copy];
  }

  return v6;
}

_INPBDistance *INIntentSlotValueRedactedDistanceFromDistance(void *a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (v5)
  {
    v7 = objc_alloc_init(_INPBDistance);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v5 values];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = INIntentSlotValueRedactedValueFromDistanceValue(*(*(&v15 + 1) + 8 * i), a2);
          if (v13)
          {
            [(_INPBDistance *)v7 addValue:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id INIntentSlotValueRedactedDistancesFromDistances(void *a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = INIntentSlotValueRedactedDistanceFromDistance(*(*(&v16 + 1) + 8 * i), a2, v6);
        [v7 addObject:{v13, v16}];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];

  return v14;
}

uint64_t INProcessHasEntitlement(_OWORD *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1[1];
  *v10.val = *a1;
  *&v10.val[4] = v4;
  v5 = SecTaskCreateWithAuditToken(0, &v10);
  if (v5)
  {
    v6 = v5;
    HasEntitlement = _INProcessHasEntitlement(v5, v3);
    CFRelease(v6);
  }

  else
  {
    v8 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v10.val[0] = 136315138;
      *&v10.val[1] = "INProcessHasEntitlement";
      _os_log_error_impl(&dword_18E991000, v8, OS_LOG_TYPE_ERROR, "%s SecTaskCreateWithAuditToken() failed, assuming the process is NOT entitled.", &v10, 0xCu);
    }

    HasEntitlement = 0;
  }

  return HasEntitlement;
}

uint64_t __INThisProcessIsAssistantd_block_invoke()
{
  result = INThisProcessHasAssistantdEntitlement();
  INThisProcessIsAssistantd_isAssistantd = result;
  return result;
}

uint64_t INThisProcessHasAssistantdEntitlement()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = SecTaskCreateFromSelf(0);
  if (v0)
  {
    v1 = v0;
    error = 0;
    v2 = SecTaskCopyValueForEntitlement(v0, @"application-identifier", &error);
    v3 = v2;
    v4 = error;
    if (error)
    {
      v5 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v11 = "_INThisProcessHasEntitlementEqualToValue";
        v12 = 2114;
        v13 = v4;
        _os_log_error_impl(&dword_18E991000, v5, OS_LOG_TYPE_ERROR, "%s Error copying value for entitlement: %{public}@.", buf, 0x16u);
        v4 = error;
      }

      CFRelease(v4);
    }

    else if (v2)
    {
      v6 = [v2 isEqual:@"com.apple.assistant.assistantd"];
      goto LABEL_12;
    }

    v6 = 0;
LABEL_12:
    CFRelease(v1);

    return v6;
  }

  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v11 = "_INThisProcessHasEntitlementEqualToValue";
    _os_log_error_impl(&dword_18E991000, v7, OS_LOG_TYPE_ERROR, "%s SecTaskCreateFromSelf() failed, assuming this process is NOT entitled.", buf, 0xCu);
  }

  return 0;
}

uint64_t INThisProcessIsSiri()
{
  if (INThisProcessIsSiri_onceToken != -1)
  {
    dispatch_once(&INThisProcessIsSiri_onceToken, &__block_literal_global_40);
  }

  return INThisProcessIsSiri_isSiri;
}

uint64_t INThisProcessIsCarousel()
{
  if (INThisProcessIsCarousel_onceToken != -1)
  {
    dispatch_once(&INThisProcessIsCarousel_onceToken, &__block_literal_global_43);
  }

  return INThisProcessIsCarousel_isCarousel;
}

uint64_t INThisProcessIsSystemProcess()
{
  if (INThisProcessIsSystemProcess_onceToken != -1)
  {
    dispatch_once(&INThisProcessIsSystemProcess_onceToken, &__block_literal_global_48);
  }

  return INThisProcessIsSystemProcess_isSystemProcess;
}

uint64_t __INThisProcessIsSystemProcess_block_invoke()
{
  v0 = [MEMORY[0x1E6963618] bundleProxyForCurrentProcess];
  v1 = v0;
  if (v0)
  {
    v4 = v0;
    v2 = [v0 if_isSystem];
    v1 = v4;
  }

  else
  {
    v2 = 1;
  }

  INThisProcessIsSystemProcess_isSystemProcess = v2;

  return MEMORY[0x1EEE66BB8](v2, v1);
}

void __INThisProcessIsDonatingBySiri_block_invoke()
{
  v2 = [MEMORY[0x1E6963618] bundleProxyForCurrentProcess];
  v0 = [v2 bundleIdentifier];
  v1 = INThisProcessIsDonatingBySiri_bundleIdentifier;
  INThisProcessIsDonatingBySiri_bundleIdentifier = v0;
}

BOOL INThisProcessIsRunningAsInstance()
{
  if (_INProcessGetInstanceUUID_onceToken != -1)
  {
    dispatch_once(&_INProcessGetInstanceUUID_onceToken, &__block_literal_global_332);
  }

  return _INProcessGetInstanceUUID_instanceUUID != 0;
}

uint64_t INAppCanDonateIntent(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E6963618];
  v4 = a2;
  v5 = [v3 bundleProxyForIdentifier:a1];
  CanDonateIntent = INBundleProxyCanDonateIntent(v5, v4);

  return CanDonateIntent;
}

uint64_t INAppHasExtensionForIntent(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:a1];
  if (v4)
  {
    v5 = [INAppInfo appInfoWithAppProxy:v4];
    v6 = [v5 supportedActionsByExtensions];
    v7 = [v6 containsObject:v3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id INRemoveItemAtPath(void *a1)
{
  v1 = MEMORY[0x1E696AC08];
  v2 = a1;
  v3 = [v1 defaultManager];
  v7 = 0;
  [v3 removeItemAtPath:v2 error:&v7];

  v4 = v7;
  v5 = [v4 domain];
  LODWORD(v3) = [v5 isEqualToString:*MEMORY[0x1E696A250]];

  if (v3 && ([v4 code] & 0xFFFFFFFFFFFFFEFFLL) == 4)
  {

    v4 = 0;
  }

  return v4;
}

id INAppIntentVocabularyInBundleProxy(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AAE8];
  v2 = [a1 bundleURL];
  v3 = [v1 bundleWithURL:v2];

  v4 = [v3 localizations];
  v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v3 URLForResource:@"AppIntentVocabulary" withExtension:@"plist" subdirectory:0 localization:v10];
        if (v11)
        {
          v12 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:v11];
          if (v12)
          {
            [v14 setObject:v12 forKey:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v14;
}

id INUserSupportDirectoryPath()
{
  if (INUserSupportDirectoryPath_once != -1)
  {
    dispatch_once(&INUserSupportDirectoryPath_once, &__block_literal_global_76);
  }

  v1 = INUserSupportDirectoryPath_sUserSupportDirectoryPath;

  return v1;
}

void __INUserSupportDirectoryPath_block_invoke()
{
  v2 = CPSharedResourcesDirectory();
  v0 = [v2 stringByAppendingPathComponent:@"Library/Assistant"];
  v1 = INUserSupportDirectoryPath_sUserSupportDirectoryPath;
  INUserSupportDirectoryPath_sUserSupportDirectoryPath = v0;
}

uint64_t INSupportsPairedDevice()
{
  if (INSupportsPairedDevice_onceToken != -1)
  {
    dispatch_once(&INSupportsPairedDevice_onceToken, &__block_literal_global_81);
  }

  return INSupportsPairedDevice_supportsPairedDevice;
}

uint64_t __INSupportsPairedDevice_block_invoke()
{
  result = MGGetBoolAnswer();
  INSupportsPairedDevice_supportsPairedDevice = result;
  return result;
}

uint64_t INIsHomepod()
{
  if (INIsHomepod_onceToken != -1)
  {
    dispatch_once(&INIsHomepod_onceToken, &__block_literal_global_86);
  }

  return INIsHomepod_isHomepod;
}

uint64_t __INIsHomepod_block_invoke()
{
  result = MGGetSInt32Answer();
  INIsHomepod_isHomepod = result == 7;
  return result;
}

id _INSupportedIntentsByExtensions(uint64_t a1, void *a2, void *a3)
{
  v4 = a1;
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v5;
  v24 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v24)
  {
    v23 = *v33;
    do
    {
      v7 = 0;
      do
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v7;
        v8 = *(*(&v32 + 1) + 8 * v7);
        v9 = [v8 objectForInfoDictionaryKey:@"IntentsSupported" ofClass:objc_opt_class() inScope:0];
        v10 = v9;
        if (!a3)
        {
          v19 = [MEMORY[0x1E695DFD8] setWithArray:v9];
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = ___INSupportedIntentsByExtensions_block_invoke;
          v26[3] = &unk_1E72830B0;
          v27 = v4;
          v26[4] = v8;
          v20 = [v19 objectsPassingTest:v26];

          [v6 unionSet:v20];
          goto LABEL_24;
        }

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v11 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (!v11)
        {
          goto LABEL_24;
        }

        v12 = v11;
        v13 = *v29;
        do
        {
          v14 = 0;
          do
          {
            if (*v29 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v28 + 1) + 8 * v14);
            if ([v6 containsObject:v15])
            {
              v16 = MEMORY[0x1E696ABC0];
              v17 = 2001;
LABEL_14:
              *a3 = [v16 errorWithDomain:@"IntentsErrorDomain" code:v17 userInfo:0];
              goto LABEL_18;
            }

            if (_INIsValidIntentNameForBundleProxy(v4, v15, v8))
            {
              [v6 addObject:v15];
            }

            else if ((_INIsValidCustomIntentNameForBundleProxy(v15, v8) & 1) == 0)
            {
              v16 = MEMORY[0x1E696ABC0];
              v17 = 2004;
              goto LABEL_14;
            }

LABEL_18:
            ++v14;
          }

          while (v12 != v14);
          v18 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
          v12 = v18;
        }

        while (v18);
LABEL_24:

        v7 = v25 + 1;
      }

      while (v25 + 1 != v24);
      v24 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v24);
  }

  return v6;
}

uint64_t _INIsValidIntentNameForBundleProxy(int a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_class();
  v8 = NSClassFromString(v5);
  if (v8)
  {
    v9 = v8;
    if ([(objc_class *)v8 isSubclassOfClass:v7])
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v8 = v10;
  }

  v11 = INIntentSchemaGetIntentDescriptionWithFacadeClass(v8);

  if (!a1 || v11)
  {
    if (v6 && ([v6 if_isSystem] & 1) == 0)
    {
      v12 = (v11 != 0) | _INIsValidCustomIntentNameForBundleProxy(v5, v6);
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t _INIsValidCustomIntentNameForBundleProxy(void *a1, void *a2)
{
  v3 = a1;
  v4 = _INContainingBundleProxyWithBundleProxy(a2);
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = MEMORY[0x1E695DFD8];
      v6 = [v4 siriActionDefinitionURLs];
      v7 = [v6 allKeys];
      v8 = [v5 setWithArray:v7];

      v9 = [v8 containsObject:v3];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

id _INIntentsSetForExtensionAttributesKey(char a1, void *a2, void *a3, void *a4)
{
  v44[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v28 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v5;
  v29 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v29)
  {
    v26 = *v36;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v35 + 1) + 8 * i);
        v9 = [v8 objectForInfoDictionaryKey:v6 ofClass:objc_opt_class() inScope:0];
        v10 = [v8 objectForInfoDictionaryKey:@"IntentsSupported" ofClass:objc_opt_class() inScope:0];
        v32 = v9;
        v11 = [MEMORY[0x1E695DFA8] setWithArray:v9];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = ___INIntentsSetForExtensionAttributesKey_block_invoke;
        v33[3] = &unk_1E72830B0;
        v34 = a1;
        v33[4] = v8;
        v12 = [v11 objectsPassingTest:v33];

        v31 = v10;
        v13 = [MEMORY[0x1E695DFD8] setWithArray:v10];
        if (a4 && ([v12 isSubsetOfSet:v13] & 1) == 0)
        {
          *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IntentsErrorDomain" code:2002 userInfo:0];
        }

        [v28 intersectSet:v13];
        v14 = v6;
        v43[0] = @"IntentsRestrictedWhileLocked";
        v15 = MEMORY[0x1E695DFD8];
        v16 = v13;
        v17 = [[v15 alloc] initWithObjects:{@"INRequestRideIntent", @"INRequestPaymentIntent", @"INSendPaymentIntent", @"INPayBillIntent", @"INSearchForBillsIntent", @"INSearchForAccountsIntent", @"INTransferMoneyIntent", @"INSearchForNotebookItemsIntent", @"INSearchCallHistoryIntent", @"INGetVisualCodeIntent", @"INSearchForPhotosIntent", @"INStartPhotoPlaybackIntent", @"INGetCarLockStatusIntent", @"INSetCarLockStatusIntent", @"INGetCarPowerLevelStatusIntent", @"INActivateCarSignalIntent", 0}];
        v43[1] = @"IntentsRestrictedWhileProtectedDataUnavailable";
        v44[0] = v17;
        v18 = [MEMORY[0x1E695DFD8] set];
        v44[1] = v18;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];
        v20 = v19 = v6;

        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = ___INRequiredIntentsSetForExtensionAttributesKey_block_invoke;
        v39[3] = &unk_1E72830D8;
        v40 = v20;
        v41 = v14;
        v21 = v20;
        v22 = v14;
        v23 = [v16 objectsPassingTest:v39];

        v6 = v19;
        [v28 unionSet:v23];

        [v28 unionSet:v12];
      }

      v29 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v29);
  }

  return v28;
}

void INSupportedActionsForAppProxy(uint64_t a1, void *a2, void *a3)
{
  v5 = [INAppInfo appInfoWithAppProxy:a1];
  *a2 = [v5 supportedActions];
  *a3 = [v5 actionsRestrictedWhileLocked];
}

id INSupportedMediaCategories(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) objectForInfoDictionaryKey:@"SupportedMediaCategories" ofClass:objc_opt_class() inScope:{0, v10}];
        if (v8)
        {
          [v2 addObjectsFromArray:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

id INAppProxyForAppOrContainedPluginWithBundleIdentifier(uint64_t a1)
{
  v1 = [MEMORY[0x1E6963618] bundleProxyForIdentifier:a1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = _INContainingBundleProxyWithBundleProxy(v1);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }
  }

  v2 = 0;
LABEL_7:

  return v2;
}

__CFString *INDisplayableOrLaunchableBundleIdForBundleIdFromUserActivity(void *a1)
{
  v1 = a1;
  if (INThisProcessCanMapLSDatabase(0))
  {
    v2 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:v1 error:0];
    v3 = [v2 extensionPointRecord];
    v4 = [v3 identifier];
    v5 = [v4 isEqualToString:@"com.apple.fileprovider-nonui"];

    if (v5)
    {
      v6 = @"com.apple.DocumentsApp";
    }

    else
    {
      v6 = v1;
    }
  }

  else
  {
    v6 = v1;
  }

  return v6;
}

id INUserActivityGetSerializationQueue()
{
  if (INUserActivityGetSerializationQueue_onceToken != -1)
  {
    dispatch_once(&INUserActivityGetSerializationQueue_onceToken, &__block_literal_global_101);
  }

  v1 = INUserActivityGetSerializationQueue_queue;

  return v1;
}

uint64_t __INUserActivityGetSerializationQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.intents.user-activity.serialization", 0);
  v1 = INUserActivityGetSerializationQueue_queue;
  INUserActivityGetSerializationQueue_queue = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __Block_byref_object_copy__75144(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __INUserActivitySerializeToData_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __INUserActivitySerializeToData_block_invoke_2;
  v5[3] = &unk_1E7282FF0;
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  if (([v2 _createUserActivityDataWithOptions:0 completionHandler:v5] & 1) == 0)
  {
    dispatch_semaphore_signal(*(a1 + 40));
  }
}

intptr_t __INUserActivitySerializeToData_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2 && !a3)
  {
    v4 = [a2 copy];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = *(a1 + 32);

  return dispatch_semaphore_signal(v7);
}

_INPBUserActivity *INUserActivitySerializeToBackingStore(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(_INPBUserActivity);
    v3 = [v1 _intentsIdentifier];
    if (v3)
    {
      [(_INPBUserActivity *)v2 setUri:v3];
    }

    v4 = INUserActivitySerializeToData(v1);
    if (v4)
    {
      [(_INPBUserActivity *)v2 setData:v4];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INPluginKitCompatiblePathFromPath(void *a1)
{
  v1 = a1;
  if ([v1 fileSystemRepresentation])
  {
    v2 = realpath_DARWIN_EXTSN([v1 fileSystemRepresentation], 0);
    v3 = v2;
    if (v2)
    {
      v4 = strlen(v2);
    }

    else
    {
      v4 = 0;
    }

    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v3 length:v4 encoding:4 freeWhenDone:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void INFindMatchingAppsForIntent(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    if (v3)
    {
      if (INFindMatchingAppsForIntent_onceToken != -1)
      {
        dispatch_once(&INFindMatchingAppsForIntent_onceToken, &__block_literal_global_109);
      }

      v5 = INFindMatchingAppsForIntent_matchingSystemAppBundleIdentifiersByIntentName;
      v6 = [v3 _className];
      v7 = [v5 objectForKeyedSubscript:v6];

      v8 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v16 = "INFindMatchingAppsForIntent";
        v17 = 2112;
        v18 = v7;
        v19 = 2112;
        v20 = v3;
        _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s found matching system apps: %@ for intent: %@", buf, 0x20u);
      }

      v9 = MEMORY[0x1E696ABD0];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __INFindMatchingAppsForIntent_block_invoke_216;
      v11[3] = &unk_1E7283068;
      v12 = v7;
      v13 = v3;
      v14 = v4;
      v10 = v7;
      [v9 _intents_matchExtensionsForIntent:v13 shouldIgnoreLaunchId:1 completion:v11];
    }

    else
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IntentsErrorDomain" code:2004 userInfo:0];
      (*(v4 + 2))(v4, 0, v10);
    }
  }
}

void __INFindMatchingAppsForIntent_block_invoke_216(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 valueForKey:@"_plugIn"];
  v8 = [v7 valueForKey:@"containingUrl"];

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__75144;
  v17 = __Block_byref_object_dispose__75145;
  v18 = [*(a1 + 32) mutableCopy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __INFindMatchingAppsForIntent_block_invoke_2;
  v12[3] = &unk_1E7283040;
  v12[4] = &v13;
  [v8 enumerateObjectsUsingBlock:v12];
  v9 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v10 = v14[5];
    v11 = *(a1 + 40);
    *buf = 136315906;
    v20 = "INFindMatchingAppsForIntent_block_invoke";
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_18E991000, v9, OS_LOG_TYPE_INFO, "%s found matching system & non-system apps: %@ for intent: %@ with error: %@", buf, 0x2Au);
  }

  (*(*(a1 + 48) + 16))();
  _Block_object_dispose(&v13, 8);
}

void sub_18EBCADF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __INFindMatchingAppsForIntent_block_invoke_2(uint64_t a1, void *a2)
{
  v14 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v14;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  if (v4)
  {
    v5 = [MEMORY[0x1E69635E0] applicationProxyForBundleURL:v4];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 bundleIdentifier];
      if (v7)
      {
        v8 = *(*(a1 + 32) + 8);
        v9 = *(v8 + 40);
        if (v9)
        {
          v10 = v9;
          v11 = *(v8 + 40);
          *(v8 + 40) = v10;
        }

        else
        {
          v12 = [MEMORY[0x1E695DF70] array];
          v13 = *(*(a1 + 32) + 8);
          v11 = *(v13 + 40);
          *(v13 + 40) = v12;
        }

        [*(*(*(a1 + 32) + 8) + 40) addObject:v7];
      }
    }
  }
}

void __INFindMatchingAppsForIntent_block_invoke()
{
  v45[21] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v43 = NSStringFromClass(v0);
  v44[0] = v43;
  v45[0] = &unk_1F02DBBB0;
  v1 = objc_opt_class();
  v42 = NSStringFromClass(v1);
  v44[1] = v42;
  v45[1] = &unk_1F02DBBC8;
  v2 = objc_opt_class();
  v41 = NSStringFromClass(v2);
  v44[2] = v41;
  v45[2] = &unk_1F02DBBE0;
  v3 = objc_opt_class();
  v40 = NSStringFromClass(v3);
  v44[3] = v40;
  v45[3] = &unk_1F02DBBF8;
  v4 = objc_opt_class();
  v39 = NSStringFromClass(v4);
  v44[4] = v39;
  v45[4] = &unk_1F02DBC10;
  v5 = objc_opt_class();
  v38 = NSStringFromClass(v5);
  v44[5] = v38;
  v45[5] = &unk_1F02DBC28;
  v6 = objc_opt_class();
  v37 = NSStringFromClass(v6);
  v44[6] = v37;
  v45[6] = &unk_1F02DBC40;
  v7 = objc_opt_class();
  v36 = NSStringFromClass(v7);
  v44[7] = v36;
  v45[7] = &unk_1F02DBC58;
  v8 = objc_opt_class();
  v35 = NSStringFromClass(v8);
  v44[8] = v35;
  v45[8] = &unk_1F02DBC70;
  v9 = objc_opt_class();
  v34 = NSStringFromClass(v9);
  v44[9] = v34;
  v45[9] = &unk_1F02DBC88;
  v10 = objc_opt_class();
  v33 = NSStringFromClass(v10);
  v44[10] = v33;
  v45[10] = &unk_1F02DBCA0;
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v44[11] = v12;
  v45[11] = &unk_1F02DBCB8;
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v44[12] = v14;
  v45[12] = &unk_1F02DBCD0;
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v44[13] = v16;
  v45[13] = &unk_1F02DBCE8;
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v44[14] = v18;
  v45[14] = &unk_1F02DBD00;
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v44[15] = v20;
  v45[15] = &unk_1F02DBD18;
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  v44[16] = v22;
  v45[16] = &unk_1F02DBD30;
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  v44[17] = v24;
  v45[17] = &unk_1F02DBD48;
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  v44[18] = v26;
  v45[18] = &unk_1F02DBD60;
  v27 = objc_opt_class();
  v28 = NSStringFromClass(v27);
  v44[19] = v28;
  v45[19] = &unk_1F02DBD78;
  v29 = objc_opt_class();
  v30 = NSStringFromClass(v29);
  v44[20] = v30;
  v45[20] = &unk_1F02DBD90;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:21];
  v32 = INFindMatchingAppsForIntent_matchingSystemAppBundleIdentifiersByIntentName;
  INFindMatchingAppsForIntent_matchingSystemAppBundleIdentifiersByIntentName = v31;
}

id INContainingAppBundleIdentifierForBundle(void *a1)
{
  v1 = MEMORY[0x1E6963618];
  v2 = [a1 bundleIdentifier];
  v3 = [v1 bundleProxyForIdentifier:v2];

  v4 = _INContainingBundleProxyWithBundleProxy(v3);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 bundleIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t INIsInternalInstall()
{
  if (INIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&INIsInternalInstall_onceToken, &__block_literal_global_227);
  }

  return INIsInternalInstall_isInternal;
}

uint64_t __INIsInternalInstall_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  INIsInternalInstall_isInternal = result;
  return result;
}

SEL INSetterFromString(void *a1, objc_class *a2)
{
  v3 = [a1 cStringUsingEncoding:1];
  Property = class_getProperty(a2, v3);
  v5 = property_copyAttributeValue(Property, "S");
  if (v5)
  {
    v6 = v5;
    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v5 encoding:1];
    free(v6);
  }

  else
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c", __toupper(*v3)];
    v9 = [MEMORY[0x1E696AEC0] stringWithCString:v3 + 1 encoding:1];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"set%@%@:", v8, v9];
  }

  v10 = NSSelectorFromString(v7);

  return v10;
}

id INTypedObjectWithCustomObject(void *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 codableDescription];
  v3 = [v2 className];
  v4 = objc_opt_class();
  v5 = NSClassFromString(v3);
  if (v5)
  {
    v6 = v5;
    if (([(objc_class *)v5 isSubclassOfClass:v4]& 1) != 0)
    {
      v7 = v6;
      v8 = v6;

      v9 = [v8 alloc];
      v10 = [v1 identifier];
      v11 = [v1 displayString];
      v12 = [v9 initWithIdentifier:v10 displayString:v11];

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v32 = v2;
      v13 = [v2 attributes];
      v14 = [v13 allValues];

      v34 = [v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (!v34)
      {
        goto LABEL_29;
      }

      v15 = *v36;
      v33 = v12;
      while (1)
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v36 != v15)
          {
            objc_enumerationMutation(v14);
          }

          v17 = *(*(&v35 + 1) + 8 * i);
          v18 = [v17 propertyName];
          v19 = [v1 valueForKey:v18];
          v20 = v17;
          if (v20)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = v20;
            }

            else
            {
              v21 = 0;
            }
          }

          else
          {
            v21 = 0;
          }

          v22 = v21;

          if (v19)
          {
            v23 = v22 == 0;
          }

          else
          {
            v23 = 1;
          }

          if (!v23)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = [v19 if_flatMap:&__block_literal_global_242];
            }

            else
            {
              v25 = v15;
              v26 = v14;
              v27 = v1;
              v28 = v19;
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if ((isKindOfClass & 1) == 0)
              {
                v19 = v28;
                v1 = v27;
                v14 = v26;
                v15 = v25;
                v12 = v33;
                goto LABEL_23;
              }

              v24 = INTypedObjectWithCustomObject(v28);
              v1 = v27;
              v14 = v26;
              v15 = v25;
              v12 = v33;
            }

            v19 = v24;
          }

LABEL_23:
          v30 = [v20 setter];
          if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            [v12 performSelector:v30 withObject:v19];
          }

          else
          {
            [v12 setValue:v19 forKey:v18];
          }
        }

        v34 = [v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (!v34)
        {
LABEL_29:

          v2 = v32;
          goto LABEL_31;
        }
      }
    }
  }

  v12 = 0;
LABEL_31:

  return v12;
}

id __INTypedObjectWithCustomObject_block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = INTypedObjectWithCustomObject(v2);
      v7[0] = v3;
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    }

    else
    {

      v6 = v2;
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];
    }
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

id INObjectWithTypedObject(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 codableDescription];
    v6 = _INObjectWithTypedObject(v3, v5);
  }

  else
  {

    v6 = v3;
  }

  return v6;
}

id INTypedIntentResponseWithIntentResponse(void *a1)
{
  v1 = a1;
  v2 = [v1 _className];
  v3 = objc_opt_class();
  v4 = NSClassFromString(v2);
  if (v4 && (v5 = v4, ([(objc_class *)v4 isSubclassOfClass:v3]& 1) != 0))
  {
    v6 = v5;
    v7 = v5;

    v8 = v1;
    if ([v1 _type] != 2)
    {
      goto LABEL_7;
    }

    v9 = [v7 alloc];
    v2 = [v1 backingStore];
    v8 = [v9 initWithBackingStore:v2];
  }

  else
  {
    v8 = v1;
  }

LABEL_7:

  return v8;
}

INIntentResponse *INIntentResponseWithTypedIntentResponse(void *a1)
{
  v1 = a1;
  v2 = v1;
  if ([(INIntentResponse *)v1 _type]== 2)
  {
    v3 = objc_opt_class();
    v2 = v1;
    if (v3 != objc_opt_class())
    {
      v4 = [INIntentResponse alloc];
      v5 = [(INIntentResponse *)v1 backingStore];
      v2 = [(INIntentResponse *)v4 initWithBackingStore:v5];

      v6 = [(INIntentResponse *)v2 _responseMessagePBRepresentation];
      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = [v6 _objectDescription];
          _INUntypePropertiesWithCodableDescription(v2, v7);
        }
      }
    }
  }

  return v2;
}

void *INTypedInteractionWithInteraction(void *a1)
{
  v1 = a1;
  v2 = [v1 intent];
  v3 = [v2 backingStore];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = v1;
  if (isKindOfClass)
  {
    v5 = [v1 copy];

    v6 = [v1 intent];
    v7 = INTypedIntentWithIntent(v6);
    v8 = v5[1];
    v5[1] = v7;

    v9 = [v1 intentResponse];
    v10 = INTypedIntentResponseWithIntentResponse(v9);
    v11 = v5[2];
    v5[2] = v10;
  }

  return v5;
}

id INLocalizedStringWithLocalizer(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v7)
  {
    v7 = objc_opt_new();
  }

  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v8 bundleURL];
  v10 = [v7 bundleWithIdentifier:0 fileURL:v9];

  [v7 preferredLocalizationsForBundle:v10];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v23 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v12)
  {

LABEL_16:
    if ([v6 length])
    {
      v18 = v6;
    }

    else
    {
      v18 = v5;
    }

    v14 = v18;
    goto LABEL_20;
  }

  v13 = v12;
  v14 = 0;
  v15 = *v21;
  while (2)
  {
    v16 = 0;
    v17 = v14;
    do
    {
      if (*v21 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v14 = CFBundleCopyLocalizedStringForLocalization();

      if (v14 && ([v14 isEqualToString:{v5, v20}] & 1) == 0)
      {

        goto LABEL_20;
      }

      ++v16;
      v17 = v14;
    }

    while (v13 != v16);
    v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

  if (!v14)
  {
    goto LABEL_16;
  }

LABEL_20:

  return v14;
}

id INDictionaryWithObjectsForKeysPassingTest(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 mutableCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v3 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ((v4[2](v4, v11) & 1) == 0)
        {
          [v5 removeObjectForKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

id INDictionaryWithContentsOfURLs(void *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v1;
  v22 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v22)
  {
    v21 = *v30;
    do
    {
      v3 = 0;
      do
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v3;
        v4 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:*(*(&v29 + 1) + 8 * v3)];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v24 = [v4 allKeys];
        v5 = [v24 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v26;
          do
          {
            for (i = 0; i != v6; ++i)
            {
              if (*v26 != v7)
              {
                objc_enumerationMutation(v24);
              }

              v9 = *(*(&v25 + 1) + 8 * i);
              v10 = [v4 objectForKeyedSubscript:v9];
              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) != 0 && (([v2 objectForKeyedSubscript:v9], (v11 = objc_claimAutoreleasedReturnValue()) == 0) || (v12 = v11, objc_msgSend(v2, "objectForKeyedSubscript:", v9), v13 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v13, v12, (isKindOfClass)))
              {
                v15 = [v2 objectForKeyedSubscript:v9];
                v16 = v15;
                if (v15)
                {
                  v17 = v15;
                }

                else
                {
                  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  [v2 setObject:v17 forKeyedSubscript:v9];
                }

                [v17 addObjectsFromArray:v10];
              }

              else
              {
                [v2 setObject:v10 forKeyedSubscript:v9];
              }
            }

            v6 = [v24 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v6);
        }

        v3 = v23 + 1;
      }

      while (v23 + 1 != v22);
      v22 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v22);
  }

  v18 = [v2 copy];

  return v18;
}

id INSchemaURLsForIntentNamesWithBundle(__CFBundle *a1)
{
  v58 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [MEMORY[0x1E695DF70] array];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v3 = INSchemaFileExtensions();
    v4 = [v3 countByEnumeratingWithState:&v45 objects:v57 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v46;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v46 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = CFBundleCopyResourceURLsOfType(a1, *(*(&v45 + 1) + 8 * i), 0);
          [v2 addObjectsFromArray:v8];
        }

        v5 = [v3 countByEnumeratingWithState:&v45 objects:v57 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v2 = 0;
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v2;
  v32 = [obj countByEnumeratingWithState:&v41 objects:v56 count:16];
  if (v32)
  {
    v31 = *v42;
    *&v10 = 136315650;
    v29 = v10;
    do
    {
      v11 = 0;
      do
      {
        if (*v42 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v41 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v40 = 0;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v12 error:&v40];
        v15 = v40;
        v16 = v15;
        if (v14)
        {
          v33 = v15;
          v34 = v14;
          v35 = v13;
          v17 = [v14 objectForKeyedSubscript:@"INIntents"];
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v18 = [v17 countByEnumeratingWithState:&v36 objects:v49 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v37;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v37 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = [INIntentCodableDescription _intentClassNameWithDictionary:*(*(&v36 + 1) + 8 * j), v29];
                if (v22)
                {
                  v23 = [v12 path];
                  [v9 if_setObjectIfNonNil:v23 forKey:v22];
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v36 objects:v49 count:16];
            }

            while (v19);
          }

          v14 = v34;
          v13 = v35;
          v16 = v33;
        }

        else
        {
          v24 = INSiriLogContextIntents;
          if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
          {
            v25 = v24;
            v26 = [v12 path];
            *buf = v29;
            v51 = "INSchemaURLsForIntentNamesWithBundle";
            v52 = 2114;
            v53 = v26;
            v54 = 2114;
            v55 = v16;
            _os_log_error_impl(&dword_18E991000, v25, OS_LOG_TYPE_ERROR, "%s Invalid intent definition plist found at %{public}@, error: %{public}@", buf, 0x20u);
          }
        }

        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v11 != v32);
      v32 = [obj countByEnumeratingWithState:&v41 objects:v56 count:16];
    }

    while (v32);
  }

  v27 = [v9 copy];

  return v27;
}

id INIntentDefinitionURLsForBundleProxy(void *a1)
{
  v1 = a1;
  v2 = [v1 bundleURL];

  if (v2)
  {
    v3 = [v1 bundleURL];
    v4 = INSchemaURLsWithBundleURL(v3);
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

id INIntentDefinitionURLsForInstalledApps()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF70] array];
  v1 = [MEMORY[0x1E69635F8] enumeratorWithOptions:0];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v10 + 1) + 8 * i) if_allIntentDefinitionURLs];
        v7 = [v6 allObjects];
        [v0 addObjectsFromArray:v7];
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  v8 = [v0 copy];

  return v8;
}

id INIntentDefinitionLocalizableFileURLsForBundleRecord(void *a1)
{
  v1 = [a1 URL];
  v2 = INIntentDefinitionLocalizableFileURLsForBundleWithURL(v1);

  return v2;
}

id INIntentDefinitionLocalizableFileURLsForBundleWithURL(void *a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = a1;
  Unique = _CFBundleCreateUnique();
  if (Unique)
  {
    v3 = Unique;
    v25 = v1;
    v4 = INSchemaURLsWithCFBundle(Unique);
    v5 = [MEMORY[0x1E695DF70] array];
    v6 = CFBundleCopyBundleLocalizations(v3);
    v7 = MEMORY[0x1E696AAE8];
    v8 = [MEMORY[0x1E695DF58] preferredLanguages];
    v24 = v6;
    v9 = [v7 preferredLocalizationsFromArray:v6 forPreferences:v8];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v4;
    v28 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v28)
    {
      v27 = *v35;
      do
      {
        v10 = 0;
        do
        {
          if (*v35 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = v10;
          v11 = [*(*(&v34 + 1) + 8 * v10) lastPathComponent];
          v12 = [v11 stringByDeletingPathExtension];

          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          if (_INSupportedLocalizableFileExtensions_onceToken != -1)
          {
            dispatch_once(&_INSupportedLocalizableFileExtensions_onceToken, &__block_literal_global_384);
          }

          v13 = _INSupportedLocalizableFileExtensions_supportedLocalizableFileExtensions;
          v14 = [v13 countByEnumeratingWithState:&v30 objects:v42 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v31;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v31 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v30 + 1) + 8 * i);
                v19 = [v9 firstObject];
                v20 = CFBundleCopyResourceURLForLocalization(v3, v12, v18, 0, v19);

                if (v20)
                {
                  [v5 addObject:v20];
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v30 objects:v42 count:16];
            }

            while (v15);
          }

          v10 = v29 + 1;
        }

        while (v29 + 1 != v28);
        v28 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v28);
    }

    CFRelease(v3);
    v21 = [v5 copy];

    v1 = v25;
  }

  else
  {
    v22 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v39 = "INIntentDefinitionLocalizableFileURLsForBundleWithURL";
      v40 = 2114;
      v41 = v1;
      _os_log_error_impl(&dword_18E991000, v22, OS_LOG_TYPE_ERROR, "%s Unable to create bundle with URL %{public}@", buf, 0x16u);
    }

    v21 = MEMORY[0x1E695E0F0];
  }

  return v21;
}

id INIntentDefinitionLocalizableFileURLsForBundleProxy(void *a1)
{
  v1 = [a1 bundleURL];
  v2 = INIntentDefinitionLocalizableFileURLsForBundleWithURL(v1);

  return v2;
}

id INIntentDefinitionLocalizableFileURLsForInstalledApps()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF70] array];
  v1 = [MEMORY[0x1E69635F8] enumeratorWithOptions:0];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = INIntentDefinitionLocalizableFileURLsForBundleRecord(*(*(&v9 + 1) + 8 * i));
        [v0 addObjectsFromArray:v6];
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  v7 = [v0 copy];

  return v7;
}

id INCExtensionPlugInBundleManagerPath()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&unk_18EE5F03C];
  v1 = objc_msgSend_stringByAppendingString_(v0);

  return v1;
}

id INVocabulariesByLocaleByAddingInvocationPhrases(void *a1, void *a2, void *a3)
{
  v87 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v52 = a3;
  v7 = [v6 siriActionDefinitionURLs];
  if ([v7 count])
  {
    v8 = MEMORY[0x1E695DFD8];
    v9 = [v7 allValues];
    v10 = [v8 setWithArray:v9];

    v49 = v10;
    v11 = [v10 allObjects];
    [v6 bundleIdentifier];
    v12 = v65 = v5;
    v50 = v6;
    v13 = [v6 bundleIdentifier];
    v54 = [INSchema _schemaWithIntentDefinitionURLs:v11 bundleIdentifier:v12 mainBundleIdentifier:v13 contentOptions:1];

    v5 = v65;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    obj = [v7 allKeys];
    v55 = [obj countByEnumeratingWithState:&v74 objects:v86 count:16];
    if (v55)
    {
      v53 = *v75;
      do
      {
        for (i = 0; i != v55; ++i)
        {
          if (*v75 != v53)
          {
            objc_enumerationMutation(obj);
          }

          v60 = *(*(&v74 + 1) + 8 * i);
          v15 = [v54 intentCodableDescriptionWithIntentClassName:?];
          v61 = [v15 phrases];
          if ([v61 count])
          {
            v56 = v15;
            v57 = i;
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v58 = v52;
            v62 = [v58 countByEnumeratingWithState:&v70 objects:v85 count:16];
            if (v62)
            {
              v59 = *v71;
              do
              {
                v16 = 0;
                do
                {
                  if (*v71 != v59)
                  {
                    objc_enumerationMutation(v58);
                  }

                  v64 = v16;
                  v17 = *(*(&v70 + 1) + 8 * v16);
                  v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v61, "count")}];
                  v66 = 0u;
                  v67 = 0u;
                  v68 = 0u;
                  v69 = 0u;
                  v19 = v61;
                  v20 = [v19 countByEnumeratingWithState:&v66 objects:v84 count:16];
                  if (v20)
                  {
                    v21 = v20;
                    v22 = *v67;
                    do
                    {
                      for (j = 0; j != v21; ++j)
                      {
                        if (*v67 != v22)
                        {
                          objc_enumerationMutation(v19);
                        }

                        v24 = *(*(&v66 + 1) + 8 * j);
                        v25 = [v24 localizedPhraseForLanguage:v17];
                        v26 = [v24 localizedPronunciationHintForLanguage:v17];
                        if ([v25 length])
                        {
                          v27 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
                          [v27 setObject:v25 forKeyedSubscript:@"VocabularyItemPhrase"];
                          if ([v26 length])
                          {
                            [v27 setObject:v26 forKeyedSubscript:@"VocabularyItemPronunciation"];
                          }

                          [v18 addObject:v27];
                        }
                      }

                      v21 = [v19 countByEnumeratingWithState:&v66 objects:v84 count:16];
                    }

                    while (v21);
                  }

                  v28 = [v65 objectForKeyedSubscript:v17];
                  if (v28)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v29 = v28;
                    }

                    else
                    {
                      v29 = 0;
                    }
                  }

                  else
                  {
                    v29 = 0;
                  }

                  v30 = v29;

                  v31 = [v30 mutableCopy];
                  if (v31)
                  {
                    v32 = v31;
                  }

                  else
                  {
                    v32 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
                  }

                  v33 = v32;

                  v34 = [v33 objectForKeyedSubscript:@"ParameterVocabularies"];
                  if (v34)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v35 = v34;
                    }

                    else
                    {
                      v35 = 0;
                    }
                  }

                  else
                  {
                    v35 = 0;
                  }

                  v36 = v35;

                  v37 = [v36 mutableCopy];
                  v63 = v33;
                  if (v37)
                  {
                    v38 = v37;
                  }

                  else
                  {
                    v38 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
                  }

                  v39 = v38;

                  v82[0] = @"ParameterNames";
                  v40 = MEMORY[0x1E696AEC0];
                  v41 = objc_opt_class();
                  v42 = NSStringFromClass(v41);
                  v43 = [v40 stringWithFormat:@"%@.%@", v42, @"voiceCommand"];
                  v81 = v43;
                  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
                  v82[1] = @"ParameterVocabulary";
                  v83[0] = v44;
                  v78[0] = @"VocabularyItemIdentifier";
                  v78[1] = @"VocabularyItemSynonyms";
                  v79[0] = v60;
                  v79[1] = v18;
                  v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:2];
                  v80 = v45;
                  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
                  v83[1] = v46;
                  v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:2];
                  [v39 addObject:v47];

                  [v63 setObject:v39 forKeyedSubscript:@"ParameterVocabularies"];
                  v5 = v65;
                  [v65 setObject:v63 forKeyedSubscript:v17];

                  v16 = v64 + 1;
                }

                while (v64 + 1 != v62);
                v62 = [v58 countByEnumeratingWithState:&v70 objects:v85 count:16];
              }

              while (v62);
            }

            v15 = v56;
            i = v57;
          }
        }

        v55 = [obj countByEnumeratingWithState:&v74 objects:v86 count:16];
      }

      while (v55);
    }

    v6 = v50;
  }

  return v5;
}

CFTypeRef INIntentSlotValueTransformFromColor(void *a1)
{
  v1 = a1;
  if ([v1 hasRed] && objc_msgSend(v1, "hasGreen") && objc_msgSend(v1, "hasBlue"))
  {
    [v1 red];
    v3 = v2;
    [v1 green];
    v5 = v4;
    [v1 blue];
    v7 = v6;
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v8 = getCGColorCreateSRGBSymbolLoc_ptr;
    v18 = getCGColorCreateSRGBSymbolLoc_ptr;
    if (!getCGColorCreateSRGBSymbolLoc_ptr)
    {
      v9 = CoreGraphicsLibrary();
      v16[3] = dlsym(v9, "CGColorCreateSRGB");
      getCGColorCreateSRGBSymbolLoc_ptr = v16[3];
      v8 = v16[3];
    }

    _Block_object_dispose(&v15, 8);
    if (!v8)
    {
      v13 = dlerror();
      v14 = abort_report_np("%s", v13);
      _Block_object_dispose(&v15, 8);
      _Unwind_Resume(v14);
    }

    v10 = v8(v3 / 255.0, v5 / 255.0, v7 / 255.0, 1.0);
    v11 = CFAutorelease(v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void *__getCGColorCreateSRGBSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreGraphicsLibrary();
  result = dlsym(v2, "CGColorCreateSRGB");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGColorCreateSRGBSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreGraphicsLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreGraphicsLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreGraphicsLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E72830F8;
    v5 = 0;
    CoreGraphicsLibraryCore_frameworkLibrary = _sl_dlopen();
    v1 = v3[0];
    v0 = CoreGraphicsLibraryCore_frameworkLibrary;
    if (CoreGraphicsLibraryCore_frameworkLibrary)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np("%s", v3[0]);
    }

    free(v1);
    return v0;
  }

  return CoreGraphicsLibraryCore_frameworkLibrary;
}

uint64_t __CoreGraphicsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreGraphicsLibraryCore_frameworkLibrary = result;
  return result;
}

_INPBColor *INIntentSlotValueTransformToColor(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v2 = getCGColorGetNumberOfComponentsSymbolLoc_ptr;
  v14 = getCGColorGetNumberOfComponentsSymbolLoc_ptr;
  if (!getCGColorGetNumberOfComponentsSymbolLoc_ptr)
  {
    v3 = CoreGraphicsLibrary();
    v12[3] = dlsym(v3, "CGColorGetNumberOfComponents");
    getCGColorGetNumberOfComponentsSymbolLoc_ptr = v12[3];
    v2 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v2)
  {
    goto LABEL_13;
  }

  if (v2(a1) < 3)
  {
    v4 = 0;
    goto LABEL_10;
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v5 = getCGColorGetComponentsSymbolLoc_ptr;
  v14 = getCGColorGetComponentsSymbolLoc_ptr;
  if (!getCGColorGetComponentsSymbolLoc_ptr)
  {
    v6 = CoreGraphicsLibrary();
    v12[3] = dlsym(v6, "CGColorGetComponents");
    getCGColorGetComponentsSymbolLoc_ptr = v12[3];
    v5 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v5)
  {
LABEL_13:
    v9 = dlerror();
    v10 = abort_report_np("%s", v9);
    _Block_object_dispose(&v11, 8);
    _Unwind_Resume(v10);
  }

  v7 = v5(a1);
  v4 = objc_alloc_init(_INPBColor);
  [(_INPBColor *)v4 setRed:*v7 * 255.0];
  [(_INPBColor *)v4 setGreen:v7[1] * 255.0];
  [(_INPBColor *)v4 setBlue:v7[2] * 255.0];
LABEL_10:

  return v4;
}

void *__getCGColorGetNumberOfComponentsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreGraphicsLibrary();
  result = dlsym(v2, "CGColorGetNumberOfComponents");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGColorGetNumberOfComponentsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCGColorGetComponentsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreGraphicsLibrary();
  result = dlsym(v2, "CGColorGetComponents");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGColorGetComponentsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

INTextNoteContent *INIntentSlotValueTransformFromNoteContent(void *a1)
{
  v1 = a1;
  v2 = [v1 type];
  if (v2 == 2)
  {
    v7 = [INImageNoteContent alloc];
    v4 = [v1 image];
    v5 = [v4 image];
    v8 = INIntentSlotValueTransformFromImageValue(v5);
    v6 = [(INImageNoteContent *)v7 _initWithImage:v8];

    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = [INTextNoteContent alloc];
    v4 = [v1 text];
    v5 = [v4 text];
    v6 = [(INTextNoteContent *)v3 initWithText:v5];
LABEL_5:

    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

_INPBNoteContent *INIntentSlotValueTransformToNoteContent(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v2 = 0;
    goto LABEL_9;
  }

  v2 = objc_alloc_init(_INPBNoteContent);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = objc_alloc_init(_INPBTextNoteContent);
    v4 = [v1 text];
    [(_INPBTextNoteContent *)v3 setText:v4];

    [(_INPBNoteContent *)v2 setText:v3];
    v5 = v2;
    v6 = 1;
LABEL_7:
    [(_INPBNoteContent *)v5 setType:v6];

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = objc_alloc_init(_INPBImageNoteContent);
    v7 = [v1 image];
    v8 = INIntentSlotValueTransformToImageValue(v7);
    [(_INPBTextNoteContent *)v3 setImage:v8];

    [(_INPBNoteContent *)v2 setImage:v3];
    v5 = v2;
    v6 = 2;
    goto LABEL_7;
  }

  [(_INPBNoteContent *)v2 setType:0];
LABEL_9:

  return v2;
}

id INIntentSlotValueTransformFromNoteContents(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = INIntentSlotValueTransformFromNoteContent(*(*(&v11 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:{v8, v11}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];

  return v9;
}

id INIntentSlotValueTransformToNoteContents(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = INIntentSlotValueTransformToNoteContent(*(*(&v11 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:{v8, v11}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];

  return v9;
}

uint64_t _INPBPauseWorkoutIntentReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_INPBIntentMetadata);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setIntentMetadata:v13];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_INPBDataString);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setWorkoutName:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBLocationListReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(_INPBCondition);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBConditionReadFrom(v13, a2))
        {
          goto LABEL_31;
        }

        PBReaderRecallMark();
        [a1 setCondition:v13];
LABEL_26:

        goto LABEL_28;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_INPBLocation);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBLocationReadFrom(v13, a2))
    {
LABEL_31:

      return 0;
    }

    PBReaderRecallMark();
    if (v13)
    {
      [a1 addLocation:v13];
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBRunVoiceCommandIntentResponseReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v58) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v58 & 0x7F) << v5;
      if ((v58 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadString();
        [a1 setAppBundleId:v13];
        goto LABEL_92;
      case 2u:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        while (1)
        {
          LOBYTE(v58) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v58 & 0x7F) << v42;
          if ((v58 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            v48 = 0;
            goto LABEL_108;
          }
        }

        if ([a2 hasError])
        {
          v48 = 0;
        }

        else
        {
          v48 = v44;
        }

LABEL_108:
        [a1 setIntentCategory:v48];
        goto LABEL_93;
      case 3u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        while (1)
        {
          LOBYTE(v58) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v58 & 0x7F) << v35;
          if ((v58 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v41 = 0;
            goto LABEL_104;
          }
        }

        v41 = (v37 != 0) & ~[a2 hasError];
LABEL_104:
        [a1 setCustomResponsesDisabled:v41];
        goto LABEL_93;
      case 4u:
        v13 = PBReaderReadString();
        [a1 setResponseTemplate:v13];
        goto LABEL_92;
      case 5u:
        v13 = objc_alloc_init(_INPBDictionary);
        v58 = 0;
        v59 = 0;
        if (!PBReaderPlaceMark() || !_INPBDictionaryReadFrom(v13, a2))
        {
          goto LABEL_113;
        }

        PBReaderRecallMark();
        [a1 setParameters:v13];
        goto LABEL_92;
      case 6u:
        v13 = PBReaderReadString();
        [a1 setVerb:v13];
        goto LABEL_92;
      case 7u:
        v13 = objc_alloc_init(_INPBArchivedObject);
        v58 = 0;
        v59 = 0;
        if (!PBReaderPlaceMark() || !_INPBArchivedObjectReadFrom(v13, a2))
        {
          goto LABEL_113;
        }

        PBReaderRecallMark();
        [a1 setUnderlyingIntent:v13];
        goto LABEL_92;
      case 8u:
        v13 = PBReaderReadString();
        [a1 setLocalizedAppName:v13];
        goto LABEL_92;
      case 9u:
        v13 = objc_alloc_init(_INPBArchivedObject);
        v58 = 0;
        v59 = 0;
        if (!PBReaderPlaceMark() || !_INPBArchivedObjectReadFrom(v13, a2))
        {
          goto LABEL_113;
        }

        PBReaderRecallMark();
        [a1 setUnderlyingIntentResponse:v13];
        goto LABEL_92;
      case 0xAu:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v58) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v58 & 0x7F) << v28;
          if ((v58 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_102;
          }
        }

        if ([a2 hasError])
        {
          v34 = 0;
        }

        else
        {
          v34 = v30;
        }

LABEL_102:
        [a1 setToggleState:v34];
        goto LABEL_93;
      case 0xBu:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        while (1)
        {
          LOBYTE(v58) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v58 & 0x7F) << v49;
          if ((v58 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v11 = v50++ >= 9;
          if (v11)
          {
            v55 = 0;
            goto LABEL_110;
          }
        }

        v55 = (v51 != 0) & ~[a2 hasError];
LABEL_110:
        [a1 setContinueRunning:v55];
        goto LABEL_93;
      case 0xCu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          LOBYTE(v58) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v58 & 0x7F) << v21;
          if ((v58 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_98;
          }
        }

        v27 = (v23 != 0) & ~[a2 hasError];
LABEL_98:
        [a1 setInterstitialDisabled:v27];
        goto LABEL_93;
      case 0xDu:
        v13 = PBReaderReadString();
        [a1 setUnderlyingIntentTitle:v13];
        goto LABEL_92;
      case 0xEu:
        v13 = objc_alloc_init(_INPBVoiceCommandStepInfo);
        v58 = 0;
        v59 = 0;
        if (PBReaderPlaceMark() && _INPBVoiceCommandStepInfoReadFrom(v13, a2))
        {
          PBReaderRecallMark();
          if (v13)
          {
            [a1 addStep:v13];
          }

LABEL_92:

LABEL_93:
          v56 = [a2 position];
          if (v56 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_113:

        return 0;
      case 0xFu:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v58) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v58 & 0x7F) << v14;
          if ((v58 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_96;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_96:
        [a1 setPrefersExecutionOnCompanion:v20];
        goto LABEL_93;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_93;
    }
  }
}

INTask *INIntentSlotValueTransformFromTask(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v30 = [INTask alloc];
    v32 = [v1 title];
    v29 = INIntentSlotValueTransformFromDataString(v32);
    v2 = [v1 hasStatus];
    v3 = [v1 status];
    v4 = v3 == 10;
    if (v3 == 20)
    {
      v4 = 2;
    }

    if (v2)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = [v1 hasTaskType];
    v7 = [v1 taskType];
    v8 = v7 == 10;
    if (v7 == 20)
    {
      v8 = 2;
    }

    if (v6)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v31 = [v1 spatialEventTrigger];
    v25 = INIntentSlotValueTransformFromSpatialEventTrigger(v31);
    v28 = [v1 temporalEventTrigger];
    v24 = INIntentSlotValueTransformFromTemporalEventTrigger(v28);
    v27 = [v1 createdDateTime];
    v23 = INIntentSlotValueTransformFromDateTime(v27);
    v26 = [v1 modifiedDateTime];
    v10 = INIntentSlotValueTransformFromDateTime(v26);
    v11 = [v1 identifier];
    v12 = [v1 hasPriority];
    v13 = [v1 priority];
    v14 = v13 == 1;
    if (v13 == 2)
    {
      v14 = 2;
    }

    if (v12)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [v1 contactEventTrigger];
    v17 = INIntentSlotValueTransformFromContactEventTrigger(v16);
    v18 = [v1 hasTaskReference];
    if ([v1 taskReference])
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    v20 = [v1 parentIdentifier];

    v21 = [(INTask *)v30 initWithTitle:v29 status:v5 taskType:v9 spatialEventTrigger:v25 temporalEventTrigger:v24 createdDateComponents:v23 modifiedDateComponents:v10 identifier:v11 priority:v15 contactEventTrigger:v17 taskReference:v19 parentIdentifier:v20];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

_INPBTask *INIntentSlotValueTransformToTask(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBTask);
    v3 = [v1 title];
    v4 = INIntentSlotValueTransformToDataString(v3);
    [(_INPBTask *)v2 setTitle:v4];

    v5 = [v1 status];
    if (v5 >= 3)
    {
      v6 = 0x7FFFFFFFLL;
    }

    else
    {
      v6 = (10 * v5);
    }

    [(_INPBTask *)v2 setStatus:v6];
    v7 = [v1 spatialEventTrigger];
    v8 = INIntentSlotValueTransformToSpatialEventTrigger(v7);
    [(_INPBTask *)v2 setSpatialEventTrigger:v8];

    v9 = [v1 temporalEventTrigger];
    v10 = INIntentSlotValueTransformToTemporalEventTrigger(v9);
    [(_INPBTask *)v2 setTemporalEventTrigger:v10];

    v11 = [v1 createdDateComponents];
    v12 = INIntentSlotValueTransformToDateTime(v11);
    [(_INPBTask *)v2 setCreatedDateTime:v12];

    v13 = [v1 modifiedDateComponents];
    v14 = INIntentSlotValueTransformToDateTime(v13);
    [(_INPBTask *)v2 setModifiedDateTime:v14];

    v15 = [v1 identifier];
    [(_INPBTask *)v2 setIdentifier:v15];

    v16 = [v1 taskType];
    if (v16 >= 3)
    {
      v17 = 0x7FFFFFFFLL;
    }

    else
    {
      v17 = (10 * v16);
    }

    [(_INPBTask *)v2 setTaskType:v17];
    v18 = [v1 priority];
    if (v18 >= 3)
    {
      v19 = 0x7FFFFFFFLL;
    }

    else
    {
      v19 = v18;
    }

    [(_INPBTask *)v2 setPriority:v19];
    v20 = [v1 contactEventTrigger];
    v21 = INIntentSlotValueTransformToContactEventTrigger(v20);
    [(_INPBTask *)v2 setContactEventTrigger:v21];

    if ([v1 taskReference] == 1)
    {
      v22 = 0;
    }

    else
    {
      v22 = 0x7FFFFFFFLL;
    }

    [(_INPBTask *)v2 setTaskReference:v22];
    v23 = [v1 parentIdentifier];

    [(_INPBTask *)v2 setParentIdentifier:v23];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromTasks(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromTask(*(*(&v11 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v11}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id INIntentSlotValueTransformToTasks(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToTask(*(*(&v11 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v11}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id INIntentError(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_opt_new();
  [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696A278]];

  if (v5)
  {
    [v7 setObject:v5 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IntentsErrorDomain" code:a1 userInfo:v7];

  return v8;
}

uint64_t _INPBConditionReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_33;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_33:
      [a1 setConditionalOperator:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

id INIntentSlotValueTransformFromGEOLocation(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E6985C40];
    v2 = a1;
    v3 = [v1 alloc];
    v4 = [v2 latLng];
    [v4 lat];
    v6 = v5;
    v7 = [v2 latLng];
    [v7 lng];
    v9 = CLLocationCoordinate2DMake(v6, v8);
    v10 = [v2 altitude];
    [v2 horizontalAccuracy];
    v12 = v11;
    [v2 verticalAccuracy];
    v14 = v13;
    [v2 course];
    v16 = v15;
    [v2 speed];
    v18 = v17;
    v19 = MEMORY[0x1E695DF00];
    [v2 timestamp];
    v21 = v20;

    v22 = [v19 dateWithTimeIntervalSince1970:v21];
    v23 = [v3 initWithCoordinate:v22 altitude:v9.latitude horizontalAccuracy:v9.longitude verticalAccuracy:v10 course:v12 speed:v14 timestamp:{v16, v18}];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

id INIntentSlotValueTransformToGEOLocation(void *a1)
{
  if (a1)
  {
    v1 = a1;
    [v1 coordinate];
    v3 = v2;
    v5 = v4;
    v6 = objc_alloc_init(MEMORY[0x1E69A1E50]);
    [v6 setLat:v3];
    [v6 setLng:v5];
    v7 = objc_alloc_init(MEMORY[0x1E69A1E70]);
    [v7 setLatLng:v6];
    [v1 altitude];
    [v7 setAltitude:v8];
    [v1 horizontalAccuracy];
    [v7 setHorizontalAccuracy:?];
    [v1 verticalAccuracy];
    [v7 setVerticalAccuracy:?];
    [v1 course];
    [v7 setCourse:?];
    [v1 speed];
    [v7 setSpeed:?];
    v9 = [v1 timestamp];

    [v9 timeIntervalSince1970];
    [v7 setTimestamp:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id INIntentSlotValueTransformFromGEOLocations(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = INIntentSlotValueTransformFromGEOLocation(*(*(&v11 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:{v8, v11}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];

  return v9;
}

id INIntentSlotValueTransformToGEOLocations(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = INIntentSlotValueTransformToGEOLocation(*(*(&v11 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:{v8, v11}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];

  return v9;
}

uint64_t _INPBFinancialAccountValueReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_INPBValueMetadata);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBValueMetadataReadFrom(v14, a2))
            {
LABEL_62:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setValueMetadata:v14];
            goto LABEL_53;
          case 2:
            v14 = objc_alloc_init(_INPBDataString);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
            {
              goto LABEL_62;
            }

            PBReaderRecallMark();
            [a1 setAccountNickname:v14];
            goto LABEL_53;
          case 3:
            v14 = PBReaderReadString();
            [a1 setAccountNumber:v14];
LABEL_53:

            goto LABEL_54;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v14 = objc_alloc_init(_INPBBalanceAmountValue);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBBalanceAmountValueReadFrom(v14, a2))
          {
            goto LABEL_62;
          }

          PBReaderRecallMark();
          [a1 setBalance:v14];
          goto LABEL_53;
        }

        if (v13 == 7)
        {
          v14 = objc_alloc_init(_INPBBalanceAmountValue);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBBalanceAmountValueReadFrom(v14, a2))
          {
            goto LABEL_62;
          }

          PBReaderRecallMark();
          [a1 setSecondaryBalance:v14];
          goto LABEL_53;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            LOBYTE(v24) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v24 & 0x7F) << v15;
            if ((v24 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_59;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_59:
          [a1 setAccountType:v21];
          goto LABEL_54;
        }

        if (v13 == 5)
        {
          v14 = objc_alloc_init(_INPBDataString);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
          {
            goto LABEL_62;
          }

          PBReaderRecallMark();
          [a1 setOrganizationName:v14];
          goto LABEL_53;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_54:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id INIntentSlotValueTransformFromLocationValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v6 = 0;
    goto LABEL_14;
  }

  v3 = [v1 valueMetadata];
  INPrivacyEntitlementValidateValueMetadata(v3);

  v4 = [v2 mapItemStorage];
  if (v4)
  {
    v5 = v4;
LABEL_4:
    v6 = [MEMORY[0x1E695FC20] placemarkWithGEOMapItem:v5];
    if (!v6)
    {
      [v5 coordinate];
      if (fabs(v8) <= 180.0 && fabs(v7) <= 90.0)
      {
        v9 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:v7 longitude:v8];
        v10 = objc_alloc(MEMORY[0x1E695FC20]);
        v11 = [v5 addressDictionary];
        v12 = [v5 areasOfInterest];
        v6 = [v10 initWithLocation:v9 addressDictionary:v11 region:0 areasOfInterest:v12];
      }
    }

    goto LABEL_13;
  }

  v6 = [v2 place];
  if (v6)
  {
    v5 = [MEMORY[0x1E69A21E0] mapItemStorageForPlaceData:v6];

    if (v5)
    {
      goto LABEL_4;
    }

    v6 = 0;
  }

  else
  {
    v5 = 0;
  }

LABEL_13:

LABEL_14:

  return v6;
}

id __INGEOPDPlaceCreateFromCoordinate(void *a1, double a2, double a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v26 = a1;
  v27 = objc_alloc_init(MEMORY[0x1E69A2318]);
  v25 = [objc_alloc(MEMORY[0x1E69A1E50]) initWithCoordinate:{a2, a3}];
  v5 = objc_alloc_init(NSClassFromString(@"GEOPDPlaceInfo"));
  v6 = objc_opt_respondsToSelector() & (v25 != 0);
  if (v6 == 1)
  {
    [v5 setCenter:?];
  }

  else
  {
    v7 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315651;
      v29 = "__INGEOPDPlaceCreateFromCoordinate";
      v30 = 2113;
      v31 = v5;
      v32 = 2113;
      v33 = v25;
      _os_log_error_impl(&dword_18E991000, v7, OS_LOG_TYPE_ERROR, "%s Failed to prepare place info. (placeInfo = %{private}@, latLng = %{private}@)", buf, 0x20u);
    }
  }

  v8 = objc_alloc_init(NSClassFromString(@"GEOPDComponentValue"));
  if ((objc_opt_respondsToSelector() & (v5 != 0)) == 1)
  {
    [v8 setPlaceInfo:v5];
  }

  else
  {
    v9 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315651;
      v29 = "__INGEOPDPlaceCreateFromCoordinate";
      v30 = 2113;
      v31 = v8;
      v32 = 2113;
      v33 = v5;
      _os_log_error_impl(&dword_18E991000, v9, OS_LOG_TYPE_ERROR, "%s Failed to prepare component value. (componentValue = %{private}@, placeInfo = %{private}@)", buf, 0x20u);
    }

    v6 = 0;
  }

  v10 = objc_alloc_init(NSClassFromString(@"GEOPDComponent"));
  if ((objc_opt_respondsToSelector() & (v8 != 0)) == 1)
  {
    [v10 addValue:v8];
  }

  else
  {
    v11 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315651;
      v29 = "__INGEOPDPlaceCreateFromCoordinate";
      v30 = 2113;
      v31 = v10;
      v32 = 2113;
      v33 = v8;
      _os_log_error_impl(&dword_18E991000, v11, OS_LOG_TYPE_ERROR, "%s Failed to prepare component. (component = %{private}@, componentValue = %{private}@)", buf, 0x20u);
    }

    v6 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [v10 setType:2];
  }

  else
  {
    v12 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315395;
      v29 = "__INGEOPDPlaceCreateFromCoordinate";
      v30 = 2113;
      v31 = v10;
      _os_log_error_impl(&dword_18E991000, v12, OS_LOG_TYPE_ERROR, "%s Failed to set type on component. (component = %{private}@)", buf, 0x16u);
    }

    v6 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [v10 setStatus:v6 ^ 1u];
  }

  if (v10)
  {
    [v27 addComponent:v10];
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  [v27 setStatus:{v13, sel_setStatus_}];
  if (v26)
  {
    v14 = objc_alloc_init(NSClassFromString(@"GEOLocalizedString"));
    v15 = objc_opt_respondsToSelector();
    if (v15)
    {
      [v14 setStringValue:v26];
    }

    else
    {
      v16 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315651;
        v29 = "__INGEOPDPlaceCreateFromCoordinate";
        v30 = 2113;
        v31 = v14;
        v32 = 2113;
        v33 = v26;
        _os_log_error_impl(&dword_18E991000, v16, OS_LOG_TYPE_ERROR, "%s Failed to set string value on entity name (entity name = %{private}@, name = %{private}@)", buf, 0x20u);
      }
    }

    v17 = objc_alloc_init(NSClassFromString(@"GEOPDEntity"));
    if ((objc_opt_respondsToSelector() & (v14 != 0)) == 1)
    {
      [v17 addName:v14];
    }

    else
    {
      v18 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315651;
        v29 = "__INGEOPDPlaceCreateFromCoordinate";
        v30 = 2113;
        v31 = v14;
        v32 = 2113;
        v33 = v17;
        _os_log_error_impl(&dword_18E991000, v18, OS_LOG_TYPE_ERROR, "%s Failed to set name on entity. (name = %{private}@, entity = %{private}@)", buf, 0x20u);
      }

      v15 = 0;
    }

    v19 = objc_alloc_init(NSClassFromString(@"GEOPDComponentValue"));
    if ((objc_opt_respondsToSelector() & (v17 != 0)) == 1)
    {
      [v19 setEntity:v17];
    }

    else
    {
      v20 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315651;
        v29 = "__INGEOPDPlaceCreateFromCoordinate";
        v30 = 2113;
        v31 = v19;
        v32 = 2113;
        v33 = v17;
        _os_log_error_impl(&dword_18E991000, v20, OS_LOG_TYPE_ERROR, "%s Failed to prepare component value. (componentValue = %{private}@, entity = %{private}@)", buf, 0x20u);
      }

      v15 = 0;
    }

    v21 = objc_alloc_init(NSClassFromString(@"GEOPDComponent"));
    if ((objc_opt_respondsToSelector() & (v19 != 0)) == 1)
    {
      [v21 addValue:v19];
    }

    else
    {
      v22 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315651;
        v29 = "__INGEOPDPlaceCreateFromCoordinate";
        v30 = 2113;
        v31 = v21;
        v32 = 2113;
        v33 = v19;
        _os_log_error_impl(&dword_18E991000, v22, OS_LOG_TYPE_ERROR, "%s Failed to prepare component. (component = %{private}@, componentValue = %{private}@)", buf, 0x20u);
      }

      v15 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      [v21 setType:1];
    }

    else
    {
      v23 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315395;
        v29 = "__INGEOPDPlaceCreateFromCoordinate";
        v30 = 2113;
        v31 = v21;
        _os_log_error_impl(&dword_18E991000, v23, OS_LOG_TYPE_ERROR, "%s Failed to set type on component. (component = %{private}@)", buf, 0x16u);
      }

      v15 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      [v21 setStatus:(v15 & 1) == 0];
    }

    if (v21)
    {
      [v27 addComponent:v21];
    }
  }

  return v27;
}

void sub_18EBD7B28(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, __int128 buf)
{
  if (a2 == 1)
  {
    v13 = objc_begin_catch(a1);
    v14 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315394;
      *(&buf + 4) = "__INGEOPDPlaceCreateFromCoordinate";
      WORD6(buf) = 2114;
      *(&buf + 14) = v13;
      _os_log_error_impl(&dword_18E991000, v14, OS_LOG_TYPE_ERROR, "%s Caught exception: %{public}@", &buf, 0x16u);
    }

    objc_end_catch();
    JUMPOUT(0x18EBD77E0);
  }

  _Unwind_Resume(a1);
}

id INIntentSlotValueTransformFromLocations(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = INIntentSlotValueTransformFromLocation(*(*(&v11 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:{v8, v11}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];

  return v9;
}

id INIntentSlotValueTransformToLocations(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = INIntentSlotValueTransformToLocation(*(*(&v11 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:{v8, v11}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];

  return v9;
}

id INIntentSlotValueTransformFromLocationValues(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = INIntentSlotValueTransformFromLocationValue(*(*(&v11 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:{v8, v11}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];

  return v9;
}

id INIntentSlotValueTransformToLocationValues(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = INIntentSlotValueTransformToLocationValue(*(*(&v11 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:{v8, v11}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];

  return v9;
}

id INIntentSlotValueRedactedValueFromLocationValue(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 valueMetadata];
  v5 = INPrivacyEntitlementOptionsForValueMetadata(v4);

  if ((v5 & a2) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

_INPBLocation *INIntentSlotValueRedactedLocationFromLocation(void *a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (v5)
  {
    v7 = objc_alloc_init(_INPBLocation);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v5 values];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = INIntentSlotValueRedactedValueFromLocationValue(*(*(&v15 + 1) + 8 * i), a2);
          if (v13)
          {
            [(_INPBLocation *)v7 addValue:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id INIntentSlotValueRedactedLocationsFromLocations(void *a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = INIntentSlotValueRedactedLocationFromLocation(*(*(&v16 + 1) + 8 * i), a2, v6);
        [v7 addObject:{v13, v16}];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];

  return v14;
}

uint64_t _INPBSetRadioStationIntentReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = objc_alloc_init(_INPBString);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
            {
LABEL_59:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setStationName:v14];
            goto LABEL_50;
          case 5:
            v14 = objc_alloc_init(_INPBString);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
            {
              goto LABEL_59;
            }

            PBReaderRecallMark();
            [a1 setChannel:v14];
            goto LABEL_50;
          case 6:
            v14 = objc_alloc_init(_INPBInteger);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBIntegerReadFrom(v14, a2))
            {
              goto LABEL_59;
            }

            PBReaderRecallMark();
            [a1 setPresetNumber:v14];
            goto LABEL_50;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_INPBIntentMetadata);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
            {
              goto LABEL_59;
            }

            PBReaderRecallMark();
            [a1 setIntentMetadata:v14];
            goto LABEL_50;
          case 2:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              LOBYTE(v24) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v24 & 0x7F) << v15;
              if ((v24 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_56;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v17;
            }

LABEL_56:
            [a1 setRadioType:v21];
            goto LABEL_51;
          case 3:
            v14 = objc_alloc_init(_INPBDouble);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBDoubleReadFrom(v14, a2))
            {
              goto LABEL_59;
            }

            PBReaderRecallMark();
            [a1 setFrequency:v14];
LABEL_50:

            goto LABEL_51;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_51:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBBuildIdReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    if ((v13 >> 3) == 2)
    {
      v14 = PBReaderReadString();
      [a1 setVersionNumber:v14];
      goto LABEL_22;
    }

    if ((v13 >> 3) == 3)
    {
      v14 = PBReaderReadString();
      [a1 setBuildNumber:v14];
LABEL_22:

      continue;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      break;
    }
  }

  return 0;
}

uint64_t _INPBSearchForNotebookItemsIntentResponseReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(_INPBTask);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBTaskReadFrom(v14, a2))
          {
LABEL_53:

            return 0;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addTasks:v14];
          }

          goto LABEL_45;
        }

        if (v13 == 4)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            LOBYTE(v24) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v24 & 0x7F) << v15;
            if ((v24 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_49;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_49:
          [a1 setSortType:v21];
          goto LABEL_50;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBNote);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBNoteReadFrom(v14, a2))
          {
            goto LABEL_53;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addNotes:v14];
          }

          goto LABEL_45;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBTaskList);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBTaskListReadFrom(v14, a2))
          {
            goto LABEL_53;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addTaskLists:v14];
          }

LABEL_45:

          goto LABEL_50;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_50:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBGeographicalFeatureListReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(_INPBCondition);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBConditionReadFrom(v13, a2))
        {
          goto LABEL_31;
        }

        PBReaderRecallMark();
        [a1 setCondition:v13];
LABEL_26:

        goto LABEL_28;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_INPBGeographicalFeature);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBGeographicalFeatureReadFrom(v13, a2))
    {
LABEL_31:

      return 0;
    }

    PBReaderRecallMark();
    if (v13)
    {
      [a1 addGeographicalFeature:v13];
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t INCreateEventConfirmationReasonGetBackingType(uint64_t result)
{
  if ((result - 1) < 3)
  {
    return result;
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t INCreateEventConfirmationReasonGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 - 1 < 3) & a1) != 0)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

__CFString *INCreateEventConfirmationReasonGetName(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1E72832F0 + a1 - 1);
  }
}

uint64_t INCreateEventConfirmationReasonWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"scheduleConflict"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"sendInvitationToParticipants"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"dateTimeClarification"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INCreateEventConfirmationReasonGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 3:
      v4 = @"date time clarification";
      goto LABEL_7;
    case 2:
      v4 = @"send invitation to participants";
      goto LABEL_7;
    case 1:
      v4 = @"schedule conflict";
LABEL_7:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

uint64_t _INPBRunVoiceCommandIntentReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBIntentMetadata);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
          {
LABEL_43:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v14];
          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBDataString);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
          {
            goto LABEL_43;
          }

          PBReaderRecallMark();
          [a1 setVoiceCommand:v14];
          goto LABEL_36;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(_INPBVoiceCommandDeviceInformation);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBVoiceCommandDeviceInformationReadFrom(v14, a2))
            {
              goto LABEL_43;
            }

            PBReaderRecallMark();
            [a1 setOriginDevice:v14];
            goto LABEL_36;
          case 5:
            v14 = PBReaderReadString();
            [a1 setPreviousIntentIdentifier:v14];
LABEL_36:

            goto LABEL_37;
          case 4:
            v14 = objc_alloc_init(_INPBIntentExecutionResult);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBIntentExecutionResultReadFrom(v14, a2))
            {
              goto LABEL_43;
            }

            PBReaderRecallMark();
            [a1 setExecutionResult:v14];
            goto LABEL_36;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_37:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBTaskReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v45) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45 & 0x7F) << v5;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 7)
      {
        if (v13 > 10)
        {
          switch(v13)
          {
            case 0xB:
              v15 = 0;
              v16 = 0;
              v17 = 0;
              while (1)
              {
                LOBYTE(v45) = 0;
                v18 = [a2 position] + 1;
                if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
                {
                  v20 = [a2 data];
                  [v20 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v17 |= (v45 & 0x7F) << v15;
                if ((v45 & 0x80) == 0)
                {
                  break;
                }

                v15 += 7;
                v11 = v16++ >= 9;
                if (v11)
                {
                  v21 = 0;
                  goto LABEL_96;
                }
              }

              if ([a2 hasError])
              {
                v21 = 0;
              }

              else
              {
                v21 = v17;
              }

LABEL_96:
              [a1 setTaskReference:v21];
              goto LABEL_80;
            case 0xC:
              v37 = 0;
              v38 = 0;
              v39 = 0;
              while (1)
              {
                LOBYTE(v45) = 0;
                v40 = [a2 position] + 1;
                if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
                {
                  v42 = [a2 data];
                  [v42 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v39 |= (v45 & 0x7F) << v37;
                if ((v45 & 0x80) == 0)
                {
                  break;
                }

                v37 += 7;
                v11 = v38++ >= 9;
                if (v11)
                {
                  v43 = 0;
                  goto LABEL_108;
                }
              }

              if ([a2 hasError])
              {
                v43 = 0;
              }

              else
              {
                v43 = v39;
              }

LABEL_108:
              [a1 setPriority:v43];
              goto LABEL_80;
            case 0xD:
              v14 = PBReaderReadString();
              [a1 setParentIdentifier:v14];
LABEL_79:

              goto LABEL_80;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              v14 = PBReaderReadString();
              [a1 setIdentifier:v14];
              goto LABEL_79;
            case 9:
              v29 = 0;
              v30 = 0;
              v31 = 0;
              while (1)
              {
                LOBYTE(v45) = 0;
                v32 = [a2 position] + 1;
                if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
                {
                  v34 = [a2 data];
                  [v34 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v31 |= (v45 & 0x7F) << v29;
                if ((v45 & 0x80) == 0)
                {
                  break;
                }

                v29 += 7;
                v11 = v30++ >= 9;
                if (v11)
                {
                  v35 = 0;
                  goto LABEL_104;
                }
              }

              if ([a2 hasError])
              {
                v35 = 0;
              }

              else
              {
                v35 = v31;
              }

LABEL_104:
              [a1 setTaskType:v35];
              goto LABEL_80;
            case 0xA:
              v14 = objc_alloc_init(_INPBContactEventTrigger);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_INPBContactEventTriggerReadFrom(v14, a2))
              {
LABEL_111:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setContactEventTrigger:v14];
              goto LABEL_79;
          }
        }
      }

      else if (v13 > 4)
      {
        switch(v13)
        {
          case 5:
            v14 = objc_alloc_init(_INPBTemporalEventTrigger);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_INPBTemporalEventTriggerReadFrom(v14, a2))
            {
              goto LABEL_111;
            }

            PBReaderRecallMark();
            [a1 setTemporalEventTrigger:v14];
            goto LABEL_79;
          case 6:
            v14 = objc_alloc_init(_INPBDateTime);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_INPBDateTimeReadFrom(v14, a2))
            {
              goto LABEL_111;
            }

            PBReaderRecallMark();
            [a1 setCreatedDateTime:v14];
            goto LABEL_79;
          case 7:
            v14 = objc_alloc_init(_INPBDateTime);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_INPBDateTimeReadFrom(v14, a2))
            {
              goto LABEL_111;
            }

            PBReaderRecallMark();
            [a1 setModifiedDateTime:v14];
            goto LABEL_79;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_INPBDataString);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
            {
              goto LABEL_111;
            }

            PBReaderRecallMark();
            [a1 setTitle:v14];
            goto LABEL_79;
          case 3:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            while (1)
            {
              LOBYTE(v45) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v45 & 0x7F) << v22;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_100;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v24;
            }

LABEL_100:
            [a1 setStatus:v28];
            goto LABEL_80;
          case 4:
            v14 = objc_alloc_init(_INPBSpatialEventTrigger);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_INPBSpatialEventTriggerReadFrom(v14, a2))
            {
              goto LABEL_111;
            }

            PBReaderRecallMark();
            [a1 setSpatialEventTrigger:v14];
            goto LABEL_79;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_80:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBRidePartySizeOptionReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v14 = objc_alloc_init(_INPBPriceRangeValue);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBPriceRangeValueReadFrom(v14, a2))
        {
LABEL_32:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setPriceRange:v14];
        goto LABEL_27;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(_INPBRangeValue);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBRangeValueReadFrom(v14, a2))
        {
          goto LABEL_32;
        }

        PBReaderRecallMark();
        [a1 setPartySizeRange:v14];
        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    [a1 setSizeDescription:v14];
LABEL_27:

    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBWellnessValueReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 1)
      {
        v14 = objc_alloc_init(_INPBValueMetadata);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBValueMetadataReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setValueMetadata:v14];
        goto LABEL_29;
      }

      if (v13 == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = objc_alloc_init(_INPBDouble);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBDoubleReadFrom(v14, a2))
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setPbDoubleValue:v14];
LABEL_29:

        goto LABEL_31;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_31:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(_INPBInteger);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !_INPBIntegerReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setOrdinalValue:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t INGetCarPowerLevelStatusIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7283320 + a1);
  }
}

void sub_18EBE93C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCSSearchableItemAttributeSetClass_block_invoke_79781(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreSpotlightLibraryCore_frameworkLibrary_79782)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreSpotlightLibraryCore_block_invoke_79783;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7283350;
    v6 = 0;
    CoreSpotlightLibraryCore_frameworkLibrary_79782 = _sl_dlopen();
    v2 = v4[0];
    if (CoreSpotlightLibraryCore_frameworkLibrary_79782)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CSSearchableItemAttributeSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np("Unable to find class %s", "CSSearchableItemAttributeSet");
  }

  getCSSearchableItemAttributeSetClass_softClass_79780 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreSpotlightLibraryCore_block_invoke_79783(uint64_t a1)
{
  result = _sl_dlopen();
  CoreSpotlightLibraryCore_frameworkLibrary_79782 = result;
  return result;
}

uint64_t _INIsIntentValidForSuggestion(void *a1)
{
  v1 = a1;
  if ([v1 _type] == 2)
  {
    v2 = [v1 _codableDescription];
    v3 = [v2 isDeprecated];

    if (v3)
    {
      NSLog(@"Cannot create shortcut from intent (%@) because it has been deprecated", v1);
LABEL_13:
      v6 = 0;
      goto LABEL_14;
    }
  }

  v4 = [v1 _validParameterCombinations];
  v5 = [v4 count];

  if (!v5)
  {
    NSLog(@"Cannot create shortcut from intent (%@) because it has no valid parameter combinations", v1);
    goto LABEL_13;
  }

  if (([v1 _hasTitle] & 1) == 0)
  {
    v7 = [v1 _nonNilParameters];
    v8 = [v7 mutableCopy];

    v9 = [objc_opt_class() _ignoredParameters];
    [v8 minusSet:v9];

    if ([v8 count])
    {
      v10 = [v8 allObjects];
      v11 = [v10 componentsJoinedByString:{@", "}];
    }

    else
    {
      v11 = @"(No Parameters)";
    }

    v12 = [v1 _className];
    NSLog(@"Cannot create shortcut from intent (%@) because title is empty. Please make sure that your intent definition includes the following shortcut type for %@: %@.", v1, v12, v11);

    goto LABEL_13;
  }

  v6 = 1;
LABEL_14:

  return v6;
}

uint64_t _INPBNoteReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_INPBDataString);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
            {
LABEL_50:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setTitle:v14];
            goto LABEL_46;
          case 2:
            v14 = objc_alloc_init(_INPBNoteContent);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBNoteContentReadFrom(v14, a2))
            {
              goto LABEL_50;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addContent:v14];
            }

            goto LABEL_46;
          case 3:
            v14 = objc_alloc_init(_INPBDataString);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
            {
              goto LABEL_50;
            }

            PBReaderRecallMark();
            [a1 setGroupName:v14];
            goto LABEL_46;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v14 = PBReaderReadString();
          [a1 setIdentifier:v14];
          goto LABEL_46;
        }

        if (v13 == 7)
        {
          v14 = PBReaderReadString();
          [a1 setAccountIdentifier:v14];
LABEL_46:

          goto LABEL_47;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v14 = objc_alloc_init(_INPBDateTime);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBDateTimeReadFrom(v14, a2))
          {
            goto LABEL_50;
          }

          PBReaderRecallMark();
          [a1 setCreatedDateTime:v14];
          goto LABEL_46;
        }

        if (v13 == 5)
        {
          v14 = objc_alloc_init(_INPBDateTime);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBDateTimeReadFrom(v14, a2))
          {
            goto LABEL_50;
          }

          PBReaderRecallMark();
          [a1 setModifiedDateTime:v14];
          goto LABEL_46;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_47:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBLongListReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(_INPBCondition);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBConditionReadFrom(v13, a2))
        {
          goto LABEL_31;
        }

        PBReaderRecallMark();
        [a1 setConditionType:v13];
LABEL_26:

        goto LABEL_28;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_INPBLong);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBLongReadFrom(v13, a2))
    {
LABEL_31:

      return 0;
    }

    PBReaderRecallMark();
    if (v13)
    {
      [a1 addDataString:v13];
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBActivityListReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_INPBActivity);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBActivityReadFrom(v13, a2))
        {
          goto LABEL_31;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addActivity:v13];
        }

LABEL_26:

        goto LABEL_28;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_INPBCondition);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBConditionReadFrom(v13, a2))
    {
LABEL_31:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setCondition:v13];
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

__CFString *INCodablePlacemarkAttributeMetadataTypeAsString(uint64_t a1)
{
  v1 = @"Name";
  if (a1 == 1)
  {
    v1 = @"Address";
  }

  if (a1 == 2)
  {
    return @"City";
  }

  else
  {
    return v1;
  }
}

INEventParticipant *INIntentSlotValueTransformFromEventParticipant(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INEventParticipant alloc];
    v3 = [v1 person];
    v4 = INIntentSlotValueTransformFromContact(v3);
    v5 = [v1 hasStatus];
    v6 = [v1 status];
    if ((((v6 - 2) < 7) & v5) != 0)
    {
      v7 = (v6 - 1);
    }

    else
    {
      v7 = 0;
    }

    v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v1, "isUser")}];
    v9 = MEMORY[0x1E696AD98];
    v10 = [v1 isEventOrganizer];

    v11 = [v9 numberWithBool:v10];
    v12 = [(INEventParticipant *)v2 initWithPerson:v4 status:v7 isUser:v8 isEventOrganizer:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

_INPBEventParticipant *INIntentSlotValueTransformToEventParticipant(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBEventParticipant);
    v3 = [v1 person];
    v4 = INIntentSlotValueTransformToContact(v3);
    [(_INPBEventParticipant *)v2 setPerson:v4];

    v5 = [v1 status];
    if (v5 < 8)
    {
      v6 = (v5 + 1);
    }

    else
    {
      v6 = 0x7FFFFFFFLL;
    }

    [(_INPBEventParticipant *)v2 setStatus:v6];
    v7 = [v1 isUser];
    -[_INPBEventParticipant setIsUser:](v2, "setIsUser:", [v7 BOOLValue]);

    v8 = [v1 isEventOrganizer];

    -[_INPBEventParticipant setIsEventOrganizer:](v2, "setIsEventOrganizer:", [v8 BOOLValue]);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromEventParticipants(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromEventParticipant(*(*(&v11 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v11}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id INIntentSlotValueTransformToEventParticipants(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToEventParticipant(*(*(&v11 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v11}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t _INPBTemperatureListReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(_INPBCondition);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBConditionReadFrom(v13, a2))
        {
          goto LABEL_31;
        }

        PBReaderRecallMark();
        [a1 setCondition:v13];
LABEL_26:

        goto LABEL_28;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_INPBTemperature);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBTemperatureReadFrom(v13, a2))
    {
LABEL_31:

      return 0;
    }

    PBReaderRecallMark();
    if (v13)
    {
      [a1 addTemperature:v13];
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBRequestRideIntentReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            v14 = objc_alloc_init(_INPBDataString);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
            {
LABEL_75:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setPaymentMethodName:v14];
            goto LABEL_66;
          }

          if (v13 == 7)
          {
            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              LOBYTE(v24) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v24 & 0x7F) << v15;
              if ((v24 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_72;
              }
            }

            v21 = (v17 != 0) & ~[a2 hasError];
LABEL_72:
            [a1 setUsesApplePayForPayment:v21];
            goto LABEL_67;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              v14 = objc_alloc_init(_INPBPaymentMethod);
              v24 = 0;
              v25 = 0;
              if (!PBReaderPlaceMark() || !_INPBPaymentMethodReadFrom(v14, a2))
              {
                goto LABEL_75;
              }

              PBReaderRecallMark();
              [a1 setPaymentMethod:v14];
              goto LABEL_66;
            case 9:
              v14 = objc_alloc_init(_INPBDateTimeRange);
              v24 = 0;
              v25 = 0;
              if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v14, a2))
              {
                goto LABEL_75;
              }

              PBReaderRecallMark();
              [a1 setPickupTime:v14];
              goto LABEL_66;
            case 0xA:
              v14 = objc_alloc_init(_INPBDateTimeRange);
              v24 = 0;
              v25 = 0;
              if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v14, a2))
              {
                goto LABEL_75;
              }

              PBReaderRecallMark();
              [a1 setScheduledPickupTime:v14];
              goto LABEL_66;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBIntentMetadata);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
          {
            goto LABEL_75;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v14];
          goto LABEL_66;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBLocation);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBLocationReadFrom(v14, a2))
          {
            goto LABEL_75;
          }

          PBReaderRecallMark();
          [a1 setPickupLocation:v14];
          goto LABEL_66;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(_INPBLocation);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBLocationReadFrom(v14, a2))
            {
              goto LABEL_75;
            }

            PBReaderRecallMark();
            [a1 setDropOffLocation:v14];
            goto LABEL_66;
          case 4:
            v14 = objc_alloc_init(_INPBDataString);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
            {
              goto LABEL_75;
            }

            PBReaderRecallMark();
            [a1 setRideOptionName:v14];
            goto LABEL_66;
          case 5:
            v14 = objc_alloc_init(_INPBInteger);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBIntegerReadFrom(v14, a2))
            {
              goto LABEL_75;
            }

            PBReaderRecallMark();
            [a1 setPartySize:v14];
LABEL_66:

            goto LABEL_67;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_67:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *INCodablePersonAttributeMetadataTypeAsString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Contact";
  }

  else
  {
    return off_1E7283368[a1 - 1];
  }
}

__CFString *INGetCarLockStatusIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7283388[a1];
  }
}

__CFString *INCodableDateComponentsAttributeMetadataTypeAsString(uint64_t a1)
{
  v1 = @"DateTime";
  if (a1 == 1)
  {
    v1 = @"Date";
  }

  if (a1 == 2)
  {
    return @"Time";
  }

  else
  {
    return v1;
  }
}

__CFString *INCodableDateComponentsAttributeMetadataFormatAsString(uint64_t a1)
{
  v1 = @"Style";
  if (a1 == 1)
  {
    v1 = @"Relative";
  }

  if (a1 == 2)
  {
    return @"Template";
  }

  else
  {
    return v1;
  }
}

__CFString *INCodableDateComponentsAttributeMetadataStyleAsString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Full";
  }

  else
  {
    return off_1E72833B8[a1];
  }
}

__CFString *INSendPaymentIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 0xD)
  {
    return 0;
  }

  else
  {
    return off_1E72833D8[a1];
  }
}

uint64_t _INPBSendPaymentIntentResponseReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_INPBPaymentRecord);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBPaymentRecordReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setPaymentRecord:v13];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t INLocationSearchTypeGetBackingType(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 10;
  }

  else
  {
    v1 = 0x7FFFFFFF;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t INLocationSearchTypeGetFacadeType(uint64_t result, int a2)
{
  if (a2 == 10)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

__CFString *INLocationSearchTypeGetName(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"byLocationTrigger";
  }

  else
  {
    return @"unknown";
  }
}

id INLocationSearchTypeGetLocalizedName(uint64_t a1, void *a2)
{
  if (a1 == 1)
  {
    v3 = INLocalizedStringWithLocalizer(@"by location trigger", @"by location trigger", a2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t _INPBDialingContactValueReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v14 = objc_alloc_init(_INPBStringValue);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringValueReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setDialingPhoneLabel:v14];
        goto LABEL_29;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(_INPBContactValue);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_INPBContactValueReadFrom(v14, a2))
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setDialingContact:v14];
LABEL_29:

        goto LABEL_31;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_31:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(_INPBStringValue);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !_INPBStringValueReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setDialingPhoneNumber:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBTransferMoneyIntentResponseReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 5)
      {
        switch(v13)
        {
          case 6:
            v14 = objc_alloc_init(_INPBDateTimeRange);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v14, a2))
            {
LABEL_46:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setTransactionScheduledDate:v14];
            goto LABEL_42;
          case 7:
            v14 = PBReaderReadString();
            [a1 setTransactionNote:v14];
LABEL_42:

            goto LABEL_43;
          case 8:
            v14 = objc_alloc_init(_INPBCurrencyAmountValue);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBCurrencyAmountValueReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            PBReaderRecallMark();
            [a1 setTransferFee:v14];
            goto LABEL_42;
        }
      }

      else
      {
        switch(v13)
        {
          case 2:
            v14 = objc_alloc_init(_INPBFinancialAccountValue);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBFinancialAccountValueReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            PBReaderRecallMark();
            [a1 setFromAccount:v14];
            goto LABEL_42;
          case 4:
            v14 = objc_alloc_init(_INPBFinancialAccountValue);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBFinancialAccountValueReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            PBReaderRecallMark();
            [a1 setToAccount:v14];
            goto LABEL_42;
          case 5:
            v14 = objc_alloc_init(_INPBPaymentAmountValue);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBPaymentAmountValueReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            PBReaderRecallMark();
            [a1 setTransactionAmount:v14];
            goto LABEL_42;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_43:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBStartAudioCallIntentReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v52) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v52 & 0x7F) << v5;
        if ((v52 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            while (1)
            {
              LOBYTE(v52) = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v52 & 0x7F) << v29;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_98;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v31;
            }

LABEL_98:
            [a1 setAudioRoute:v35];
            goto LABEL_111;
          }

          if (v13 == 4)
          {
            v22 = 0;
            v23 = 0;
            v24 = 0;
            while (1)
            {
              LOBYTE(v52) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v52 & 0x7F) << v22;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_94;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v24;
            }

LABEL_94:
            [a1 setDestinationType:v28];
            goto LABEL_111;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v21 = objc_alloc_init(_INPBIntentMetadata);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v21, a2))
            {
LABEL_114:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setIntentMetadata:v21];
            goto LABEL_88;
          }

          if (v13 == 2)
          {
            v21 = objc_alloc_init(_INPBDialingContact);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !_INPBDialingContactReadFrom(v21, a2))
            {
              goto LABEL_114;
            }

            PBReaderRecallMark();
            if (v21)
            {
              [a1 addTargetContacts:v21];
            }

            goto LABEL_88;
          }
        }
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v43 = 0;
          v44 = 0;
          v45 = 0;
          while (1)
          {
            LOBYTE(v52) = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              v48 = [a2 data];
              [v48 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v45 |= (v52 & 0x7F) << v43;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v11 = v44++ >= 9;
            if (v11)
            {
              v49 = 0;
              goto LABEL_106;
            }
          }

          if ([a2 hasError])
          {
            v49 = 0;
          }

          else
          {
            v49 = v45;
          }

LABEL_106:
          [a1 setPreferredCallProvider:v49];
          goto LABEL_111;
        }

        if (v13 == 6)
        {
          v21 = objc_alloc_init(_INPBDialingContact);
          v52 = 0;
          v53 = 0;
          if (!PBReaderPlaceMark() || !_INPBDialingContactReadFrom(v21, a2))
          {
            goto LABEL_114;
          }

          PBReaderRecallMark();
          if (v21)
          {
            [a1 addContact:v21];
          }

          goto LABEL_88;
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            while (1)
            {
              LOBYTE(v52) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v52 & 0x7F) << v36;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v42 = 0;
                goto LABEL_102;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v38;
            }

LABEL_102:
            [a1 setRecordTypeForRedialing:v42];
            goto LABEL_111;
          case 9:
            v21 = objc_alloc_init(_INPBStartCallRequestMetadata);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !_INPBStartCallRequestMetadataReadFrom(v21, a2))
            {
              goto LABEL_114;
            }

            PBReaderRecallMark();
            [a1 setCallRequestMetadata:v21];
LABEL_88:

            goto LABEL_111;
          case 8:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v52) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v52 & 0x7F) << v14;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_110;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_110:
            [a1 setTtyType:v20];
            goto LABEL_111;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_111:
      v50 = [a2 position];
    }

    while (v50 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBWellnessObjectResultValueReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(_INPBWellnessValue);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBWellnessValueReadFrom(v14, a2))
          {
LABEL_51:

            return 0;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addValues:v14];
          }

          goto LABEL_43;
        }

        if (v13 == 4)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            LOBYTE(v24) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v24 & 0x7F) << v15;
            if ((v24 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_47;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_47:
          [a1 setResultType:v21];
          goto LABEL_48;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBDateTimeRange);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v14, a2))
          {
            goto LABEL_51;
          }

          PBReaderRecallMark();
          [a1 setRecordDate:v14];
          goto LABEL_43;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBString);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
          {
            goto LABEL_51;
          }

          PBReaderRecallMark();
          [a1 setUnit:v14];
LABEL_43:

          goto LABEL_48;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_48:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_18EBFD1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getINUIPortableImageLoaderHelperClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!IntentsUILibraryCore_frameworkLibrary_83655)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __IntentsUILibraryCore_block_invoke_83656;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7283668;
    v6 = 0;
    IntentsUILibraryCore_frameworkLibrary_83655 = _sl_dlopen();
    v2 = v4[0];
    if (IntentsUILibraryCore_frameworkLibrary_83655)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("INUIPortableImageLoaderHelper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np("Unable to find class %s", "INUIPortableImageLoaderHelper");
  }

  getINUIPortableImageLoaderHelperClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __IntentsUILibraryCore_block_invoke_83656(uint64_t a1)
{
  result = _sl_dlopen();
  IntentsUILibraryCore_frameworkLibrary_83655 = result;
  return result;
}

__CFString *INPauseWorkoutIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E7283680[a1];
  }
}

__CFString *INRequestPaymentIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 0xC)
  {
    return 0;
  }

  else
  {
    return off_1E72836C0[a1];
  }
}

uint64_t INCarAirCirculationModeGetBackingType(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 0x7FFFFFFF;
  }

  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return v1;
  }
}

uint64_t INCarAirCirculationModeGetFacadeType(int a1, int a2)
{
  v2 = 2 * (a2 == 2);
  if (a2 == 1)
  {
    v2 = 1;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

__CFString *INCarAirCirculationModeGetName(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"recirculateAir";
  }

  if (a1 == 1)
  {
    return @"freshAir";
  }

  else
  {
    return v1;
  }
}

uint64_t INCarAirCirculationModeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"freshAir"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"recirculateAir"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INCarAirCirculationModeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 2)
  {
    v4 = @"recirculate air";
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v4 = @"fresh air";
LABEL_5:
    v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

uint64_t _INPBDistanceListReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(_INPBCondition);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBConditionReadFrom(v13, a2))
        {
          goto LABEL_31;
        }

        PBReaderRecallMark();
        [a1 setCondition:v13];
LABEL_26:

        goto LABEL_28;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_INPBDistance);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBDistanceReadFrom(v13, a2))
    {
LABEL_31:

      return 0;
    }

    PBReaderRecallMark();
    if (v13)
    {
      [a1 addDistance:v13];
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBIntentSlotVocabularyValueReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v17 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v17 & 0x7F) << v6;
      if ((v17 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) == 1)
    {
      v15 = PBReaderReadString();
      [a1 setPhrase:v15];
      goto LABEL_25;
    }

    if (v14 == 2)
    {
      v15 = PBReaderReadString();
      [a1 setPronunciation:v15];
LABEL_25:

      continue;
    }

    if (v14 == 3)
    {
      v15 = PBReaderReadString();
      if (v15)
      {
        [a1 addExamples:v15];
      }

      goto LABEL_25;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      break;
    }
  }

  return 0;
}

uint64_t _INPBDistanceValueReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (LOBYTE(v27[0]) & 0x7F) << v5;
        if ((LOBYTE(v27[0]) & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 1)
      {
        v23 = objc_alloc_init(_INPBValueMetadata);
        v27[0] = 0.0;
        v27[1] = 0.0;
        if (!PBReaderPlaceMark() || !_INPBValueMetadataReadFrom(v23, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setValueMetadata:v23];
      }

      else if (v13 == 2)
      {
        v27[0] = 0.0;
        v21 = [a2 position] + 8;
        if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:v27 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setMagnitude:v27[0]];
      }

      else if (v13 == 3)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (LOBYTE(v27[0]) & 0x7F) << v14;
          if ((LOBYTE(v27[0]) & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_40;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_40:
        [a1 setUnit:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}