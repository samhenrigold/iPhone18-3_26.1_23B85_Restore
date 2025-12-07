@interface _CDAutoSuConfig
- (BOOL)validParam;
- (int)readConfig;
- (void)readConfig;
- (void)setParam;
@end

@implementation _CDAutoSuConfig

- (int)readConfig
{
  v74 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AAE8];
  v4 = +[_CDPaths otaSleepPath];
  v5 = [v3 bundleWithPath:v4];

  v6 = +[_CDLogging autoSUChannel];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      LOWORD(v53[0]) = 0;
      _os_log_impl(&dword_191750000, v6, OS_LOG_TYPE_INFO, "Successfully retrieved the bundle from the OTA path", v53, 2u);
    }

    goto LABEL_10;
  }

  if (v7)
  {
    LOWORD(v53[0]) = 0;
    _os_log_impl(&dword_191750000, v6, OS_LOG_TYPE_INFO, "Failed to retrieve the bundle from OTA path", v53, 2u);
  }

  v8 = MEMORY[0x1E696AAE8];
  v9 = +[_CDPaths defaultSleepPath];
  v10 = [v8 bundleWithPath:v9];

  v11 = +[_CDLogging autoSUChannel];
  v5 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v53[0]) = 0;
      _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_INFO, "Successfully retrieved the bundle from the default path", v53, 2u);
    }

    v6 = v5;
    v5 = v10;
LABEL_10:

    v12 = [v5 objectForInfoDictionaryKey:@"SleepForAutoSu"];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 objectForKeyedSubscript:@"RestrictionStartInSlot"];

      if (v14)
      {
        v15 = [v13 objectForKeyedSubscript:@"RestrictionEndInSlot"];

        if (v15)
        {
          v16 = [v13 objectForKeyedSubscript:@"SuStartDefaultTime"];

          if (v16)
          {
            v17 = [v13 objectForKeyedSubscript:@"SuEndDefaultTimeFromSuStart"];

            if (v17)
            {
              v18 = [v13 objectForKeyedSubscript:@"AlwaysFallBackToDefault"];

              if (v18)
              {
                v19 = [v13 objectForKeyedSubscript:@"AlwaysReturnUnlockNow"];

                if (v19)
                {
                  v20 = [v13 objectForKeyedSubscript:@"LastUnlockThreshold"];

                  if (v20)
                  {
                    v21 = [v13 objectForKeyedSubscript:@"SuStartThreshold"];

                    if (v21)
                    {
                      v22 = [v13 objectForKeyedSubscript:@"SuEndThreshold"];

                      if (v22)
                      {
                        v23 = [v13 objectForKeyedSubscript:@"UnlockMarginInSlot"];

                        if (v23)
                        {
                          v24 = [v13 objectForKeyedSubscript:@"RestrictionStartInSlot"];
                          self->_restrictionStartInSlot = [v24 intValue];

                          v25 = [v13 objectForKeyedSubscript:@"RestrictionEndInSlot"];
                          self->_restrictionEndInSlot = [v25 intValue];

                          v26 = [v13 objectForKeyedSubscript:@"SuStartDefaultTime"];
                          self->_suStartDefaultTime = [v26 intValue];

                          v27 = [v13 objectForKeyedSubscript:@"SuEndDefaultTimeFromSuStart"];
                          self->_suEndDefaultTimeOffsetFromSuStart = [v27 intValue];

                          v28 = [v13 objectForKeyedSubscript:@"AlwaysFallBackToDefault"];
                          v29 = [v28 intValue] == 1;

                          self->_alwaysFallBackToDefault = v29;
                          v30 = [v13 objectForKeyedSubscript:@"AlwaysReturnUnlockNow"];
                          v31 = [v30 intValue] == 1;

                          self->_alwaysReturnUnlockNow = v31;
                          v32 = [v13 objectForKeyedSubscript:@"LastUnlockThreshold"];
                          [v32 doubleValue];
                          self->_unlockThreshold = v33;

                          v34 = [v13 objectForKeyedSubscript:@"SuStartThreshold"];
                          [v34 doubleValue];
                          self->_startThreshold = v35;

                          v36 = [v13 objectForKeyedSubscript:@"SuEndThreshold"];
                          [v36 doubleValue];
                          self->_endThreshold = v37;

                          v38 = [v13 objectForKeyedSubscript:@"UnlockMarginInSlot"];
                          self->_unlockMarginInSlot = [v38 intValue];

                          self->_allowUnlockBeforeNow = 0;
                          v39 = +[_CDLogging autoSUChannel];
                          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                          {
                            restrictionStartInSlot = self->_restrictionStartInSlot;
                            restrictionEndInSlot = self->_restrictionEndInSlot;
                            suStartDefaultTime = self->_suStartDefaultTime;
                            suEndDefaultTimeOffsetFromSuStart = self->_suEndDefaultTimeOffsetFromSuStart;
                            alwaysFallBackToDefault = self->_alwaysFallBackToDefault;
                            alwaysReturnUnlockNow = self->_alwaysReturnUnlockNow;
                            allowUnlockBeforeNow = self->_allowUnlockBeforeNow;
                            unlockThreshold = self->_unlockThreshold;
                            startThreshold = self->_startThreshold;
                            endThreshold = self->_endThreshold;
                            unlockMarginInSlot = self->_unlockMarginInSlot;
                            v53[0] = 67111680;
                            v53[1] = restrictionStartInSlot;
                            v54 = 1024;
                            v55 = restrictionEndInSlot;
                            v56 = 1024;
                            v57 = suStartDefaultTime;
                            v58 = 1024;
                            v59 = suEndDefaultTimeOffsetFromSuStart;
                            v60 = 1024;
                            v61 = alwaysFallBackToDefault;
                            v62 = 1024;
                            v63 = alwaysReturnUnlockNow;
                            v64 = 1024;
                            v65 = allowUnlockBeforeNow;
                            v66 = 2048;
                            v67 = unlockThreshold;
                            v68 = 2048;
                            v69 = startThreshold;
                            v70 = 2048;
                            v71 = endThreshold;
                            v72 = 1024;
                            v73 = unlockMarginInSlot;
                            _os_log_impl(&dword_191750000, v39, OS_LOG_TYPE_INFO, "Config parameters: %d, %d, %d, %d, %d, %d, %d, %f, %f, %f, %d", v53, 0x50u);
                          }

                          v51 = 0;
                          goto LABEL_50;
                        }

                        v39 = +[_CDLogging autoSUChannel];
                        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                        {
                          [_CDAutoSuConfig readConfig];
                        }
                      }

                      else
                      {
                        v39 = +[_CDLogging autoSUChannel];
                        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                        {
                          [_CDAutoSuConfig readConfig];
                        }
                      }
                    }

                    else
                    {
                      v39 = +[_CDLogging autoSUChannel];
                      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                      {
                        [_CDAutoSuConfig readConfig];
                      }
                    }
                  }

                  else
                  {
                    v39 = +[_CDLogging autoSUChannel];
                    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                    {
                      [_CDAutoSuConfig readConfig];
                    }
                  }
                }

                else
                {
                  v39 = +[_CDLogging autoSUChannel];
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                  {
                    [_CDAutoSuConfig readConfig];
                  }
                }
              }

              else
              {
                v39 = +[_CDLogging autoSUChannel];
                if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                {
                  [_CDAutoSuConfig readConfig];
                }
              }
            }

            else
            {
              v39 = +[_CDLogging autoSUChannel];
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                [_CDAutoSuConfig readConfig];
              }
            }
          }

          else
          {
            v39 = +[_CDLogging autoSUChannel];
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              [_CDAutoSuConfig readConfig];
            }
          }
        }

        else
        {
          v39 = +[_CDLogging autoSUChannel];
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            [_CDAutoSuConfig readConfig];
          }
        }
      }

      else
      {
        v39 = +[_CDLogging autoSUChannel];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          [_CDAutoSuConfig readConfig];
        }
      }
    }

    else
    {
      v39 = +[_CDLogging autoSUChannel];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        LOWORD(v53[0]) = 0;
        _os_log_impl(&dword_191750000, v39, OS_LOG_TYPE_INFO, "Failed to get config info from device", v53, 2u);
      }
    }

    v51 = -1;
LABEL_50:

    goto LABEL_51;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [_CDAutoSuConfig readConfig];
  }

  v51 = -1;
LABEL_51:

  return v51;
}

- (BOOL)validParam
{
  v2 = 0;
  restrictionEndInSlot = self->_restrictionEndInSlot;
  if (restrictionEndInSlot <= 95)
  {
    restrictionStartInSlot = self->_restrictionStartInSlot;
    if ((restrictionStartInSlot & 0x80000000) == 0 && restrictionStartInSlot < restrictionEndInSlot)
    {
      if (self->_suStartDefaultTime >> 7 <= 0x2A2 && self->_suEndDefaultTimeOffsetFromSuStart <= 0x1517Fu && ((unlockThreshold = self->_unlockThreshold, unlockThreshold >= 0.0) ? (v6 = unlockThreshold <= 1.0) : (v6 = 0), v6 && ((startThreshold = self->_startThreshold, startThreshold >= 0.0) ? (v8 = startThreshold <= 1.0) : (v8 = 0), v8)))
      {
        v2 = 0;
        endThreshold = self->_endThreshold;
        if (endThreshold >= 0.0 && endThreshold <= 1.0)
        {
          return self->_unlockMarginInSlot < 0x60u;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return v2;
}

- (void)setParam
{
  v35 = *MEMORY[0x1E69E9840];
  if ([(_CDAutoSuConfig *)self readConfig])
  {
    v3 = +[_CDLogging autoSUChannel];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      v4 = "failed to read configuration file; fall back to hard-coded params";
LABEL_7:
      _os_log_impl(&dword_191750000, v3, OS_LOG_TYPE_INFO, v4, &v16, 2u);
    }
  }

  else
  {
    if ([(_CDAutoSuConfig *)self validParam])
    {
      goto LABEL_9;
    }

    v3 = +[_CDLogging autoSUChannel];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      v4 = "invalid params from configuration file; fall back to hard-coded params";
      goto LABEL_7;
    }
  }

  *&self->_restrictionStartInSlot = xmmword_19190EA90;
  *&self->_alwaysFallBackToDefault = 0;
  self->_allowUnlockBeforeNow = 0;
  *&self->_unlockThreshold = vdupq_n_s64(0x3FECCCCCCCCCCCCDuLL);
  self->_endThreshold = 0.9;
  self->_unlockMarginInSlot = 4;
LABEL_9:
  v5 = +[_CDLogging autoSUChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    restrictionStartInSlot = self->_restrictionStartInSlot;
    restrictionEndInSlot = self->_restrictionEndInSlot;
    suStartDefaultTime = self->_suStartDefaultTime;
    suEndDefaultTimeOffsetFromSuStart = self->_suEndDefaultTimeOffsetFromSuStart;
    alwaysFallBackToDefault = self->_alwaysFallBackToDefault;
    alwaysReturnUnlockNow = self->_alwaysReturnUnlockNow;
    unlockThreshold = self->_unlockThreshold;
    startThreshold = self->_startThreshold;
    endThreshold = self->_endThreshold;
    unlockMarginInSlot = self->_unlockMarginInSlot;
    LODWORD(v16) = 67111424;
    HIDWORD(v16) = restrictionStartInSlot;
    v17 = 1024;
    v18 = restrictionEndInSlot;
    v19 = 1024;
    v20 = suStartDefaultTime;
    v21 = 1024;
    v22 = suEndDefaultTimeOffsetFromSuStart;
    v23 = 1024;
    v24 = alwaysFallBackToDefault;
    v25 = 1024;
    v26 = alwaysReturnUnlockNow;
    v27 = 2048;
    v28 = unlockThreshold;
    v29 = 2048;
    v30 = startThreshold;
    v31 = 2048;
    v32 = endThreshold;
    v33 = 1024;
    v34 = unlockMarginInSlot;
    _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_INFO, "Config params: %d, %d, %d, %d, %d, %d, %f, %f, %f, %d", &v16, 0x4Au);
  }
}

- (void)readConfig
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end