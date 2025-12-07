@interface CBTwilightNightShiftAdaptationParams
- (BOOL)loadParametersFromParser:(id)parser;
- (CBTwilightNightShiftAdaptationParams)initWithParser:(id)parser;
- (void)dealloc;
@end

@implementation CBTwilightNightShiftAdaptationParams

- (BOOL)loadParametersFromParser:(id)parser
{
  v139 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v127 = a2;
  parserCopy = parser;
  if (self->_log)
  {
    v72 = selfCopy->_log;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v72 = inited;
  }

  v125 = v72;
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    log = v125;
    v70 = type;
    __os_log_helper_16_0_0(v123);
    _os_log_impl(&dword_1DE8E5000, log, v70, "Initialization | Start", v123, 2u);
  }

  if (parserCopy)
  {
    v119 = 0;
    v118 = [parserCopy loadInt:@"use-tw-ns-adaptation" toDestination:&v119];
    if ((v118 & 1) != 0 && v119)
    {
      v114 = 6500.0;
      selfCopy->_cctTableSizeOG = [parserCopy loadFloatArray:@"tw-ns-cct-table" toDestination:&selfCopy->_cctTableOG];
      if (selfCopy->_cctTableOG)
      {
        if (selfCopy->_cctTableSizeOG)
        {
          if (float_equal(selfCopy->_cctTableOG[selfCopy->_cctTableSizeOG - 1], v114))
          {
            for (i = 0; i < selfCopy->_cctTableSizeOG - 1; ++i)
            {
              if (selfCopy->_cctTableOG[i] > selfCopy->_cctTableOG[i + 1])
              {
                if (selfCopy->_log)
                {
                  v50 = selfCopy->_log;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v49 = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    v49 = init_default_corebrightness_log();
                  }

                  v50 = v49;
                }

                v104 = v50;
                v103 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                {
                  v47 = v104;
                  v48 = v103;
                  __os_log_helper_16_0_0(v102);
                  _os_log_error_impl(&dword_1DE8E5000, v47, v48, "CCT table is not strictly increasing", v102, 2u);
                }

                return 0;
              }
            }

            selfCopy->_twilightStrengthTableSizeOG = [parserCopy loadFloatArray:@"tw-ns-strength-table" toDestination:&selfCopy->_twilightStrengthTableOG];
            if (selfCopy->_twilightStrengthTableOG)
            {
              if (selfCopy->_twilightStrengthTableSizeOG >= 2)
              {
                if (float_equal(*selfCopy->_twilightStrengthTableOG, 0.0))
                {
                  if (float_equal(selfCopy->_twilightStrengthTableOG[selfCopy->_twilightStrengthTableSizeOG - 1], 1.0))
                  {
                    for (j = 0; j < selfCopy->_twilightStrengthTableSizeOG; ++j)
                    {
                      if (selfCopy->_twilightStrengthTableOG[j] < 0.0 || selfCopy->_twilightStrengthTableOG[j] > 1.0)
                      {
                        if (selfCopy->_log)
                        {
                          v30 = selfCopy->_log;
                        }

                        else
                        {
                          if (_COREBRIGHTNESS_LOG_DEFAULT)
                          {
                            v29 = _COREBRIGHTNESS_LOG_DEFAULT;
                          }

                          else
                          {
                            v29 = init_default_corebrightness_log();
                          }

                          v30 = v29;
                        }

                        v88 = v30;
                        v87 = OS_LOG_TYPE_ERROR;
                        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                        {
                          __os_log_helper_16_0_2_8_0_8_0(v137, j, COERCE__INT64(selfCopy->_twilightStrengthTableOG[j]));
                          _os_log_error_impl(&dword_1DE8E5000, v88, v87, "Twilight strength table element #%lu with value %f is out of the valid [0, 1] range", v137, 0x16u);
                        }

                        return 0;
                      }
                    }

                    for (k = 0; k < selfCopy->_twilightStrengthTableSizeOG - 1; ++k)
                    {
                      if (selfCopy->_twilightStrengthTableOG[k] > selfCopy->_twilightStrengthTableOG[k + 1])
                      {
                        if (selfCopy->_log)
                        {
                          v28 = selfCopy->_log;
                        }

                        else
                        {
                          if (_COREBRIGHTNESS_LOG_DEFAULT)
                          {
                            v27 = _COREBRIGHTNESS_LOG_DEFAULT;
                          }

                          else
                          {
                            v27 = init_default_corebrightness_log();
                          }

                          v28 = v27;
                        }

                        v85 = v28;
                        v84 = OS_LOG_TYPE_ERROR;
                        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                        {
                          v25 = v85;
                          v26 = v84;
                          __os_log_helper_16_0_0(v83);
                          _os_log_error_impl(&dword_1DE8E5000, v25, v26, "Twilight strength table is not strictly increasing", v83, 2u);
                        }

                        return 0;
                      }
                    }

                    selfCopy->_cctDeltaTableSizeOG = [parserCopy loadFloatArray:@"tw-ns-cct-delta-table" toDestination:&selfCopy->_cctDeltaTableOG];
                    if (selfCopy->_cctDeltaTableOG)
                    {
                      if (selfCopy->_cctDeltaTableSizeOG == selfCopy->_cctTableSizeOG * selfCopy->_twilightStrengthTableSizeOG)
                      {
                        v79 = objc_alloc_init(MEMORY[0x1E696AD60]);
                        for (m = 0; m < selfCopy->_cctTableSizeOG; ++m)
                        {
                          v3 = "";
                          if (m != selfCopy->_cctTableSizeOG - 1)
                          {
                            v3 = ",";
                          }

                          [v79 appendFormat:@" %f%s", selfCopy->_cctTableOG[m], v3];
                        }

                        [v79 appendString:@" "];
                        v77 = objc_alloc_init(MEMORY[0x1E696AD60]);
                        for (n = 0; n < selfCopy->_twilightStrengthTableSizeOG; ++n)
                        {
                          v4 = "";
                          if (n != selfCopy->_twilightStrengthTableSizeOG - 1)
                          {
                            v4 = ",";
                          }

                          [v77 appendFormat:@" %f%s", selfCopy->_twilightStrengthTableOG[n], v4];
                        }

                        [v77 appendString:@" "];
                        if (selfCopy->_log)
                        {
                          v18 = selfCopy->_log;
                        }

                        else
                        {
                          if (_COREBRIGHTNESS_LOG_DEFAULT)
                          {
                            v17 = _COREBRIGHTNESS_LOG_DEFAULT;
                          }

                          else
                          {
                            v17 = init_default_corebrightness_log();
                          }

                          v18 = v17;
                        }

                        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                        {
                          __os_log_helper_16_0_1_8_0(v135, selfCopy->_cctTableSizeOG);
                          _os_log_impl(&dword_1DE8E5000, v18, OS_LOG_TYPE_DEFAULT, "CCTTableSize=%lu", v135, 0xCu);
                        }

                        if (selfCopy->_log)
                        {
                          v16 = selfCopy->_log;
                        }

                        else
                        {
                          if (_COREBRIGHTNESS_LOG_DEFAULT)
                          {
                            v15 = _COREBRIGHTNESS_LOG_DEFAULT;
                          }

                          else
                          {
                            v15 = init_default_corebrightness_log();
                          }

                          v16 = v15;
                        }

                        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                        {
                          __os_log_helper_16_2_1_8_32(v134, [v79 UTF8String]);
                          _os_log_impl(&dword_1DE8E5000, v16, OS_LOG_TYPE_DEFAULT, "CCTTable={%s}", v134, 0xCu);
                        }

                        if (selfCopy->_log)
                        {
                          v14 = selfCopy->_log;
                        }

                        else
                        {
                          if (_COREBRIGHTNESS_LOG_DEFAULT)
                          {
                            v13 = _COREBRIGHTNESS_LOG_DEFAULT;
                          }

                          else
                          {
                            v13 = init_default_corebrightness_log();
                          }

                          v14 = v13;
                        }

                        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                        {
                          __os_log_helper_16_0_1_8_0(v133, selfCopy->_twilightStrengthTableSizeOG);
                          _os_log_impl(&dword_1DE8E5000, v14, OS_LOG_TYPE_DEFAULT, "TwilightStrengthTableSize=%lu", v133, 0xCu);
                        }

                        if (selfCopy->_log)
                        {
                          v12 = selfCopy->_log;
                        }

                        else
                        {
                          if (_COREBRIGHTNESS_LOG_DEFAULT)
                          {
                            v11 = _COREBRIGHTNESS_LOG_DEFAULT;
                          }

                          else
                          {
                            v11 = init_default_corebrightness_log();
                          }

                          v12 = v11;
                        }

                        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
                        {
                          __os_log_helper_16_2_1_8_32(v132, [v77 UTF8String]);
                          _os_log_impl(&dword_1DE8E5000, v12, OS_LOG_TYPE_DEFAULT, "TwilightStrengthTable={%s}", v132, 0xCu);
                        }

                        if (selfCopy->_log)
                        {
                          v10 = selfCopy->_log;
                        }

                        else
                        {
                          if (_COREBRIGHTNESS_LOG_DEFAULT)
                          {
                            v9 = _COREBRIGHTNESS_LOG_DEFAULT;
                          }

                          else
                          {
                            v9 = init_default_corebrightness_log();
                          }

                          v10 = v9;
                        }

                        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
                        {
                          __os_log_helper_16_0_1_8_0(v131, selfCopy->_cctDeltaTableSizeOG);
                          _os_log_impl(&dword_1DE8E5000, v10, OS_LOG_TYPE_DEFAULT, "CCTDeltaTableSize=%lu", v131, 0xCu);
                        }

                        for (ii = 0; ii < selfCopy->_twilightStrengthTableSizeOG; ++ii)
                        {
                          v74 = objc_alloc_init(MEMORY[0x1E696AD60]);
                          for (jj = 0; jj < selfCopy->_cctTableSizeOG; ++jj)
                          {
                            v5 = "";
                            if (jj != selfCopy->_cctTableSizeOG - 1)
                            {
                              v5 = ",";
                            }

                            [v74 appendFormat:@"%f%s ", selfCopy->_cctDeltaTableOG[ii * selfCopy->_cctTableSizeOG + jj], v5];
                          }

                          if (selfCopy->_log)
                          {
                            v8 = selfCopy->_log;
                          }

                          else
                          {
                            if (_COREBRIGHTNESS_LOG_DEFAULT)
                            {
                              v7 = _COREBRIGHTNESS_LOG_DEFAULT;
                            }

                            else
                            {
                              v7 = init_default_corebrightness_log();
                            }

                            v8 = v7;
                          }

                          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
                          {
                            __os_log_helper_16_2_2_8_0_8_32(v130, ii, [v74 UTF8String]);
                            _os_log_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_DEFAULT, "CCTDeltaTable[%lu]={ %s}", v130, 0x16u);
                          }

                          MEMORY[0x1E69E5920](v74);
                        }

                        MEMORY[0x1E69E5920](v79);
                        MEMORY[0x1E69E5920](v77);
                        return 1;
                      }

                      else
                      {
                        if (selfCopy->_log)
                        {
                          v20 = selfCopy->_log;
                        }

                        else
                        {
                          if (_COREBRIGHTNESS_LOG_DEFAULT)
                          {
                            v19 = _COREBRIGHTNESS_LOG_DEFAULT;
                          }

                          else
                          {
                            v19 = init_default_corebrightness_log();
                          }

                          v20 = v19;
                        }

                        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                        {
                          __os_log_helper_16_0_3_8_0_8_0_8_0(v136, selfCopy->_cctDeltaTableSizeOG, selfCopy->_cctTableSizeOG, selfCopy->_twilightStrengthTableSizeOG);
                          _os_log_error_impl(&dword_1DE8E5000, v20, OS_LOG_TYPE_ERROR, "CCT delta table has wrong size %lu for CCT table size %lu and Twilight strength table size %lu", v136, 0x20u);
                        }

                        return 0;
                      }
                    }

                    else
                    {
                      if (selfCopy->_log)
                      {
                        v24 = selfCopy->_log;
                      }

                      else
                      {
                        if (_COREBRIGHTNESS_LOG_DEFAULT)
                        {
                          v23 = _COREBRIGHTNESS_LOG_DEFAULT;
                        }

                        else
                        {
                          v23 = init_default_corebrightness_log();
                        }

                        v24 = v23;
                      }

                      v82 = v24;
                      v81 = OS_LOG_TYPE_ERROR;
                      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                      {
                        v21 = v82;
                        v22 = v81;
                        __os_log_helper_16_0_0(v80);
                        _os_log_error_impl(&dword_1DE8E5000, v21, v22, "Unable to load the CCT delta table", v80, 2u);
                      }

                      return 0;
                    }
                  }

                  else
                  {
                    if (selfCopy->_log)
                    {
                      v34 = selfCopy->_log;
                    }

                    else
                    {
                      if (_COREBRIGHTNESS_LOG_DEFAULT)
                      {
                        v33 = _COREBRIGHTNESS_LOG_DEFAULT;
                      }

                      else
                      {
                        v33 = init_default_corebrightness_log();
                      }

                      v34 = v33;
                    }

                    v92 = v34;
                    v91 = OS_LOG_TYPE_ERROR;
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                    {
                      v31 = v92;
                      v32 = v91;
                      __os_log_helper_16_0_0(v90);
                      _os_log_error_impl(&dword_1DE8E5000, v31, v32, "Last element in the Twilight strength table is not 1", v90, 2u);
                    }

                    return 0;
                  }
                }

                else
                {
                  if (selfCopy->_log)
                  {
                    v38 = selfCopy->_log;
                  }

                  else
                  {
                    if (_COREBRIGHTNESS_LOG_DEFAULT)
                    {
                      v37 = _COREBRIGHTNESS_LOG_DEFAULT;
                    }

                    else
                    {
                      v37 = init_default_corebrightness_log();
                    }

                    v38 = v37;
                  }

                  v95 = v38;
                  v94 = OS_LOG_TYPE_ERROR;
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                  {
                    v35 = v95;
                    v36 = v94;
                    __os_log_helper_16_0_0(v93);
                    _os_log_error_impl(&dword_1DE8E5000, v35, v36, "First element in the Twilight strength table is not 0", v93, 2u);
                  }

                  return 0;
                }
              }

              else
              {
                if (selfCopy->_log)
                {
                  v42 = selfCopy->_log;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v41 = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    v41 = init_default_corebrightness_log();
                  }

                  v42 = v41;
                }

                v98 = v42;
                v97 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  v39 = v98;
                  v40 = v97;
                  __os_log_helper_16_0_0(v96);
                  _os_log_error_impl(&dword_1DE8E5000, v39, v40, "Twilight strength table has less than two elements", v96, 2u);
                }

                return 0;
              }
            }

            else
            {
              if (selfCopy->_log)
              {
                v46 = selfCopy->_log;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v45 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v45 = init_default_corebrightness_log();
                }

                v46 = v45;
              }

              v101 = v46;
              v100 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                v43 = v101;
                v44 = v100;
                __os_log_helper_16_0_0(v99);
                _os_log_error_impl(&dword_1DE8E5000, v43, v44, "Unable to load the Twilight strength table", v99, 2u);
              }

              return 0;
            }
          }

          else
          {
            if (selfCopy->_log)
            {
              v52 = selfCopy->_log;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v51 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v51 = init_default_corebrightness_log();
              }

              v52 = v51;
            }

            v107 = v52;
            v106 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_0_1_8_0(v138, COERCE__INT64(v114));
              _os_log_error_impl(&dword_1DE8E5000, v107, v106, "Last element in the CCT table is not %f", v138, 0xCu);
            }

            return 0;
          }
        }

        else
        {
          if (selfCopy->_log)
          {
            v56 = selfCopy->_log;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v55 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v55 = init_default_corebrightness_log();
            }

            v56 = v55;
          }

          v110 = v56;
          v109 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            v53 = v110;
            v54 = v109;
            __os_log_helper_16_0_0(v108);
            _os_log_error_impl(&dword_1DE8E5000, v53, v54, "CCT table has less than one element", v108, 2u);
          }

          return 0;
        }
      }

      else
      {
        if (selfCopy->_log)
        {
          v60 = selfCopy->_log;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v59 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v59 = init_default_corebrightness_log();
          }

          v60 = v59;
        }

        v113 = v60;
        v112 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          v57 = v113;
          v58 = v112;
          __os_log_helper_16_0_0(v111);
          _os_log_error_impl(&dword_1DE8E5000, v57, v58, "Unable to load the CCT table", v111, 2u);
        }

        return 0;
      }
    }

    else
    {
      if (selfCopy->_log)
      {
        v64 = selfCopy->_log;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v63 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v63 = init_default_corebrightness_log();
        }

        v64 = v63;
      }

      v117 = v64;
      v116 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        v61 = v117;
        v62 = v116;
        __os_log_helper_16_0_0(v115);
        _os_log_error_impl(&dword_1DE8E5000, v61, v62, "Twilight / Night Shift Adaptation is not supported", v115, 2u);
      }

      return 0;
    }
  }

  else
  {
    if (selfCopy->_log)
    {
      v68 = selfCopy->_log;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v67 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v67 = init_default_corebrightness_log();
      }

      v68 = v67;
    }

    v122 = v68;
    v121 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v65 = v122;
      v66 = v121;
      __os_log_helper_16_0_0(v120);
      _os_log_error_impl(&dword_1DE8E5000, v65, v66, "Parser is null", v120, 2u);
    }

    return 0;
  }
}

- (CBTwilightNightShiftAdaptationParams)initWithParser:(id)parser
{
  selfCopy = self;
  v16 = a2;
  parserCopy = parser;
  v14.receiver = self;
  v14.super_class = CBTwilightNightShiftAdaptationParams;
  selfCopy = [(CBTwilightNightShiftAdaptationParams *)&v14 init];
  if (selfCopy)
  {
    v3 = os_log_create("com.apple.CoreBrightness.BacklightNode", "TwilightNightShiftAdaptation");
    selfCopy->_log = v3;
    v13 = 0;
    if ([(CBTwilightNightShiftAdaptationParams *)selfCopy loadParametersFromParser:parserCopy])
    {
      v4 = [CBFloatArray alloc];
      v5 = [(CBFloatArray *)v4 initWithValues:selfCopy->_cctTableOG andCount:selfCopy->_cctTableSizeOG];
      selfCopy->_cctTable = v5;
      v6 = [CBFloatArray alloc];
      v7 = [(CBFloatArray *)v6 initWithValues:selfCopy->_twilightStrengthTableOG andCount:selfCopy->_twilightStrengthTableSizeOG];
      selfCopy->_twilightStrengthTable = v7;
      v12 = [CBFloatArray2D alloc];
      cctDeltaTableOG = selfCopy->_cctDeltaTableOG;
      v11 = [(CBFloatArray *)selfCopy->_cctTable count];
      v8 = [(CBFloatArray2D *)v12 initWithValues:cctDeltaTableOG andCountCols:v11 andRows:[(CBFloatArray *)selfCopy->_twilightStrengthTable count]];
      selfCopy->_cctDeltaTable = v8;
      v13 = 1;
    }

    if (selfCopy->_cctTableOG)
    {
      free(selfCopy->_cctTableOG);
    }

    if (selfCopy->_twilightStrengthTableOG)
    {
      free(selfCopy->_twilightStrengthTableOG);
    }

    if (selfCopy->_cctDeltaTableOG)
    {
      free(selfCopy->_cctDeltaTableOG);
    }

    if ((v13 & 1) == 0)
    {
      MEMORY[0x1E69E5920](selfCopy);
      return 0;
    }
  }

  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_cctTable);
  MEMORY[0x1E69E5920](selfCopy->_twilightStrengthTable);
  v2 = MEMORY[0x1E69E5920](selfCopy->_cctDeltaTable).n128_u64[0];
  if (selfCopy->_log)
  {
    v2 = MEMORY[0x1E69E5920](selfCopy->_log).n128_u64[0];
    selfCopy->_log = 0;
  }

  v3.receiver = selfCopy;
  v3.super_class = CBTwilightNightShiftAdaptationParams;
  [(CBTwilightNightShiftAdaptationParams *)&v3 dealloc];
}

@end