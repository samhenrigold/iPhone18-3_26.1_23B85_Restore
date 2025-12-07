@interface CBRTPLCRecoveryCurveParams
- (BOOL)loadParametersFromParser:(id)parser;
- (CBRTPLCRecoveryCurveParams)initWithParser:(id)parser;
- (void)dealloc;
@end

@implementation CBRTPLCRecoveryCurveParams

- (BOOL)loadParametersFromParser:(id)parser
{
  v108 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v98 = a2;
  parserCopy = parser;
  if (parser)
  {
    v93 = 0.0;
    if ([parserCopy loadFixedFloat:@"LminProduct" toDestination:&v93])
    {
      v89 = 0.0;
      if ([parserCopy loadFixedFloat:@"edr-max-nits" toDestination:&v89])
      {
        selfCopy->_apceTableSizeEDT = [parserCopy loadFloatArray:@"rtplc-hdr-recovery-curve-apce" toDestination:&selfCopy->_apceTableEDT];
        if (selfCopy->_apceTableEDT)
        {
          if (selfCopy->_apceTableSizeEDT)
          {
            for (i = 0; i < selfCopy->_apceTableSizeEDT; ++i)
            {
              if (selfCopy->_apceTableEDT[i] < 0.0 || selfCopy->_apceTableEDT[i] > 1.0)
              {
                if (selfCopy->_log)
                {
                  v35 = selfCopy->_log;
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

                  v35 = inited;
                }

                v78 = v35;
                v77 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  __os_log_helper_16_0_2_8_0_8_0(v107, i, COERCE__INT64(selfCopy->_apceTableEDT[i]));
                  _os_log_error_impl(&dword_1DE8E5000, v78, v77, "The HDR recovery curve APCE table element #%lu with value %f is out of the valid [0, 1] range", v107, 0x16u);
                }

                return 0;
              }
            }

            for (j = 0; j < selfCopy->_apceTableSizeEDT - 1; ++j)
            {
              if (selfCopy->_apceTableEDT[j] > selfCopy->_apceTableEDT[j + 1])
              {
                if (selfCopy->_log)
                {
                  v33 = selfCopy->_log;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v32 = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    v32 = init_default_corebrightness_log();
                  }

                  v33 = v32;
                }

                v75 = v33;
                v74 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  v30 = v75;
                  v31 = v74;
                  __os_log_helper_16_0_0(v73);
                  _os_log_error_impl(&dword_1DE8E5000, v30, v31, "The HDR recovery curve APCE table is not monotonically non-decreasing", v73, 2u);
                }

                return 0;
              }
            }

            selfCopy->_nitsTableSizeEDT = [parserCopy loadFloatArray:@"rtplc-hdr-recovery-curve-nits" toDestination:&selfCopy->_nitsTableEDT];
            if (selfCopy->_nitsTableEDT)
            {
              if (selfCopy->_nitsTableSizeEDT)
              {
                for (k = 0; k < selfCopy->_nitsTableSizeEDT; ++k)
                {
                  if (selfCopy->_nitsTableEDT[k] < v93 || selfCopy->_nitsTableEDT[k] > v89)
                  {
                    if (selfCopy->_log)
                    {
                      v21 = selfCopy->_log;
                    }

                    else
                    {
                      if (_COREBRIGHTNESS_LOG_DEFAULT)
                      {
                        v20 = _COREBRIGHTNESS_LOG_DEFAULT;
                      }

                      else
                      {
                        v20 = init_default_corebrightness_log();
                      }

                      v21 = v20;
                    }

                    v65 = v21;
                    v64 = OS_LOG_TYPE_ERROR;
                    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                    {
                      __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v106, k, COERCE__INT64(selfCopy->_nitsTableEDT[k]), COERCE__INT64(v93), COERCE__INT64(v89));
                      _os_log_error_impl(&dword_1DE8E5000, v65, v64, "The HDR recovery curve nits table element #%lu with value %f is out of the valid [%f, %f] range", v106, 0x2Au);
                    }

                    return 0;
                  }
                }

                for (m = 0; m < selfCopy->_nitsTableSizeEDT - 1; ++m)
                {
                  if (selfCopy->_nitsTableEDT[m] < selfCopy->_nitsTableEDT[m + 1])
                  {
                    if (selfCopy->_log)
                    {
                      v19 = selfCopy->_log;
                    }

                    else
                    {
                      if (_COREBRIGHTNESS_LOG_DEFAULT)
                      {
                        v18 = _COREBRIGHTNESS_LOG_DEFAULT;
                      }

                      else
                      {
                        v18 = init_default_corebrightness_log();
                      }

                      v19 = v18;
                    }

                    oslog = v19;
                    v61 = OS_LOG_TYPE_ERROR;
                    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                    {
                      v16 = oslog;
                      v17 = v61;
                      __os_log_helper_16_0_0(v60);
                      _os_log_error_impl(&dword_1DE8E5000, v16, v17, "The HDR recovery curve nits table is not monotonically non-increasing", v60, 2u);
                    }

                    return 0;
                  }
                }

                if (selfCopy->_apceTableSizeEDT == selfCopy->_nitsTableSizeEDT)
                {
                  v59 = objc_alloc_init(MEMORY[0x1E696AD60]);
                  for (n = 0; n < selfCopy->_apceTableSizeEDT; ++n)
                  {
                    v3 = "";
                    if (n != selfCopy->_apceTableSizeEDT - 1)
                    {
                      v3 = ",";
                    }

                    [v59 appendFormat:@" %f%s", selfCopy->_apceTableEDT[n], v3];
                  }

                  [v59 appendString:@" "];
                  v57 = objc_alloc_init(MEMORY[0x1E696AD60]);
                  for (ii = 0; ii < selfCopy->_nitsTableSizeEDT; ++ii)
                  {
                    v4 = "";
                    if (ii != selfCopy->_nitsTableSizeEDT - 1)
                    {
                      v4 = ",";
                    }

                    [v57 appendFormat:@" %f%s", selfCopy->_nitsTableEDT[ii], v4];
                  }

                  [v57 appendString:@" "];
                  if (selfCopy->_log)
                  {
                    v13 = selfCopy->_log;
                  }

                  else
                  {
                    if (_COREBRIGHTNESS_LOG_DEFAULT)
                    {
                      v12 = _COREBRIGHTNESS_LOG_DEFAULT;
                    }

                    else
                    {
                      v12 = init_default_corebrightness_log();
                    }

                    v13 = v12;
                  }

                  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
                  {
                    __os_log_helper_16_0_1_8_0(v104, selfCopy->_apceTableSizeEDT);
                    _os_log_impl(&dword_1DE8E5000, v13, OS_LOG_TYPE_DEFAULT, "APCETableSize=%lu", v104, 0xCu);
                  }

                  if (selfCopy->_log)
                  {
                    v11 = selfCopy->_log;
                  }

                  else
                  {
                    if (_COREBRIGHTNESS_LOG_DEFAULT)
                    {
                      v10 = _COREBRIGHTNESS_LOG_DEFAULT;
                    }

                    else
                    {
                      v10 = init_default_corebrightness_log();
                    }

                    v11 = v10;
                  }

                  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
                  {
                    __os_log_helper_16_2_1_8_32(v103, [v59 UTF8String]);
                    _os_log_impl(&dword_1DE8E5000, v11, OS_LOG_TYPE_DEFAULT, "APCETable={%s}", v103, 0xCu);
                  }

                  if (selfCopy->_log)
                  {
                    v9 = selfCopy->_log;
                  }

                  else
                  {
                    if (_COREBRIGHTNESS_LOG_DEFAULT)
                    {
                      v8 = _COREBRIGHTNESS_LOG_DEFAULT;
                    }

                    else
                    {
                      v8 = init_default_corebrightness_log();
                    }

                    v9 = v8;
                  }

                  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
                  {
                    __os_log_helper_16_0_1_8_0(v102, selfCopy->_nitsTableSizeEDT);
                    _os_log_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_DEFAULT, "NitsTableSize=%lu", v102, 0xCu);
                  }

                  if (selfCopy->_log)
                  {
                    v7 = selfCopy->_log;
                  }

                  else
                  {
                    if (_COREBRIGHTNESS_LOG_DEFAULT)
                    {
                      v6 = _COREBRIGHTNESS_LOG_DEFAULT;
                    }

                    else
                    {
                      v6 = init_default_corebrightness_log();
                    }

                    v7 = v6;
                  }

                  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
                  {
                    __os_log_helper_16_2_1_8_32(v101, [v57 UTF8String]);
                    _os_log_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_DEFAULT, "NitsTable={%s}", v101, 0xCu);
                  }

                  MEMORY[0x1E69E5920](v59);
                  MEMORY[0x1E69E5920](v57);
                  return 1;
                }

                else
                {
                  if (selfCopy->_log)
                  {
                    v15 = selfCopy->_log;
                  }

                  else
                  {
                    if (_COREBRIGHTNESS_LOG_DEFAULT)
                    {
                      v14 = _COREBRIGHTNESS_LOG_DEFAULT;
                    }

                    else
                    {
                      v14 = init_default_corebrightness_log();
                    }

                    v15 = v14;
                  }

                  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                  {
                    __os_log_helper_16_0_2_8_0_8_0(v105, selfCopy->_apceTableSizeEDT, selfCopy->_nitsTableSizeEDT);
                    _os_log_error_impl(&dword_1DE8E5000, v15, OS_LOG_TYPE_ERROR, "The HDR recovery curve nits table and APCE table do not have matching size (apce.size=%lu, nits.size=%lu)", v105, 0x16u);
                  }

                  return 0;
                }
              }

              else
              {
                if (selfCopy->_log)
                {
                  v25 = selfCopy->_log;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v24 = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    v24 = init_default_corebrightness_log();
                  }

                  v25 = v24;
                }

                v69 = v25;
                v68 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  v22 = v69;
                  v23 = v68;
                  __os_log_helper_16_0_0(v67);
                  _os_log_error_impl(&dword_1DE8E5000, v22, v23, "The HDR recovery curve nits table has less than one element", v67, 2u);
                }

                return 0;
              }
            }

            else
            {
              if (selfCopy->_log)
              {
                v29 = selfCopy->_log;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v28 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v28 = init_default_corebrightness_log();
                }

                v29 = v28;
              }

              v72 = v29;
              v71 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                v26 = v72;
                v27 = v71;
                __os_log_helper_16_0_0(v70);
                _os_log_error_impl(&dword_1DE8E5000, v26, v27, "Unable to load the HDR recovery curve nits table", v70, 2u);
              }

              return 0;
            }
          }

          else
          {
            if (selfCopy->_log)
            {
              v39 = selfCopy->_log;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v38 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v38 = init_default_corebrightness_log();
              }

              v39 = v38;
            }

            v82 = v39;
            v81 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v36 = v82;
              v37 = v81;
              __os_log_helper_16_0_0(v80);
              _os_log_error_impl(&dword_1DE8E5000, v36, v37, "The HDR recovery curve APCE table has less than one element", v80, 2u);
            }

            return 0;
          }
        }

        else
        {
          if (selfCopy->_log)
          {
            v43 = selfCopy->_log;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v42 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v42 = init_default_corebrightness_log();
            }

            v43 = v42;
          }

          v85 = v43;
          v84 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v40 = v85;
            v41 = v84;
            __os_log_helper_16_0_0(v83);
            _os_log_error_impl(&dword_1DE8E5000, v40, v41, "Unable to load the HDR recovery curve APCE table", v83, 2u);
          }

          return 0;
        }
      }

      else
      {
        if (selfCopy->_log)
        {
          v47 = selfCopy->_log;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v46 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v46 = init_default_corebrightness_log();
          }

          v47 = v46;
        }

        v88 = v47;
        v87 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v44 = v88;
          v45 = v87;
          __os_log_helper_16_0_0(v86);
          _os_log_error_impl(&dword_1DE8E5000, v44, v45, "Unable to load maximum EDR nits", v86, 2u);
        }

        return 0;
      }
    }

    else
    {
      if (selfCopy->_log)
      {
        v51 = selfCopy->_log;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v50 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v50 = init_default_corebrightness_log();
        }

        v51 = v50;
      }

      v92 = v51;
      v91 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v48 = v92;
        v49 = v91;
        __os_log_helper_16_0_0(v90);
        _os_log_error_impl(&dword_1DE8E5000, v48, v49, "Unable to load minimum product nits", v90, 2u);
      }

      return 0;
    }
  }

  else
  {
    if (selfCopy->_log)
    {
      v55 = selfCopy->_log;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v54 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v54 = init_default_corebrightness_log();
      }

      v55 = v54;
    }

    v96 = v55;
    v95 = 16;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      log = v96;
      type = v95;
      __os_log_helper_16_0_0(v94);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Parser is null", v94, 2u);
    }

    return 0;
  }
}

- (CBRTPLCRecoveryCurveParams)initWithParser:(id)parser
{
  selfCopy = self;
  v12 = a2;
  parserCopy = parser;
  v10.receiver = self;
  v10.super_class = CBRTPLCRecoveryCurveParams;
  selfCopy = [(CBRTPLCRecoveryCurveParams *)&v10 init];
  if (selfCopy && parserCopy)
  {
    v3 = os_log_create("com.apple.CoreBrightness.BacklightNode", "RTPLCRecoveryCurve");
    selfCopy->_log = v3;
    v9 = 0;
    if ([(CBRTPLCRecoveryCurveParams *)selfCopy loadParametersFromParser:parserCopy])
    {
      v4 = [CBFloatArray alloc];
      v5 = [(CBFloatArray *)v4 initWithValues:selfCopy->_apceTableEDT andCount:selfCopy->_apceTableSizeEDT];
      selfCopy->_apce = v5;
      v6 = [CBFloatArray alloc];
      v7 = [(CBFloatArray *)v6 initWithValues:selfCopy->_nitsTableEDT andCount:selfCopy->_nitsTableSizeEDT];
      selfCopy->_nits = v7;
      v9 = 1;
    }

    if (selfCopy->_apceTableEDT)
    {
      free(selfCopy->_apceTableEDT);
    }

    if (selfCopy->_nitsTableEDT)
    {
      free(selfCopy->_nitsTableEDT);
    }

    if ((v9 & 1) == 0)
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
  MEMORY[0x1E69E5920](self->_nits);
  v2 = MEMORY[0x1E69E5920](selfCopy->_apce).n128_u64[0];
  if (selfCopy->_log)
  {
    v2 = MEMORY[0x1E69E5920](selfCopy->_log).n128_u64[0];
    selfCopy->_log = 0;
  }

  v3.receiver = selfCopy;
  v3.super_class = CBRTPLCRecoveryCurveParams;
  [(CBRTPLCRecoveryCurveParams *)&v3 dealloc];
}

@end