@interface DRSTeamTasking
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTeamTasking:(id)tasking;
- (DRSTeamTasking)initWithJSONDict:(id)dict receivedDate:(id)date;
- (DRSTeamTasking)initWithTeamID:(id)d config:(id)config defaultSamplingParameters:(id)parameters perTimezoneSamplingParameters:(id)samplingParameters perHardwareModelSamplingParamters:(id)paramters;
- (id)_jsonDictRepresentation:(BOOL)representation;
- (id)debugDescription;
- (id)samplingParametersForHWModel:(id)model timezoneAbbreviation:(id)abbreviation;
- (id)samplingParametersForHardwareModel:(id)model;
- (id)samplingParametersForTimezoneAbbreviation:(id)abbreviation;
@end

@implementation DRSTeamTasking

- (DRSTeamTasking)initWithTeamID:(id)d config:(id)config defaultSamplingParameters:(id)parameters perTimezoneSamplingParameters:(id)samplingParameters perHardwareModelSamplingParamters:(id)paramters
{
  v42 = *MEMORY[0x277D85DE8];
  dCopy = d;
  configCopy = config;
  parametersCopy = parameters;
  samplingParametersCopy = samplingParameters;
  paramtersCopy = paramters;
  v36 = paramtersCopy;
  if (!dCopy)
  {
    v27 = DPLogHandle_TaskingMessageError(paramtersCopy);
    if (os_signpost_enabled(v27))
    {
      *buf = 0;
      v28 = "nil teamID";
LABEL_14:
      _os_signpost_emit_with_name_impl(&dword_232906000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRSTeamTasking", v28, buf, 2u);
    }

LABEL_15:

    selfCopy2 = 0;
    goto LABEL_19;
  }

  if (!configCopy)
  {
    v27 = DPLogHandle_TaskingMessageError(paramtersCopy);
    if (os_signpost_enabled(v27))
    {
      *buf = 0;
      v28 = "nil config";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v18 = configCopy;
  selfCopy = self;
  v35 = samplingParametersCopy;
  v20 = parametersCopy;
  v21 = dCopy;
  v22 = v18;
  teamID = [v18 teamID];
  v34 = v21;
  LOBYTE(v21) = [teamID isEqualToString:v21];

  if (v21)
  {
    parametersCopy = v20;
    samplingParametersCopy = v35;
    self = selfCopy;
    if (!parametersCopy && !v35 && !v36)
    {
      v25 = DPLogHandle_TaskingMessageError(v24);
      configCopy = v22;
      if (os_signpost_enabled(v25))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRSTeamTasking", "nil defaultSamplingParameters AND perTimezoneSamplingParameters AND perHWModelSamplingParameters", buf, 2u);
      }

      selfCopy2 = 0;
      dCopy = v34;
      goto LABEL_19;
    }

    configCopy = v22;
    if (v35 && v36)
    {
      v27 = DPLogHandle_TaskingMessageError(v24);
      dCopy = v34;
      if (!os_signpost_enabled(v27))
      {
        goto LABEL_15;
      }

      *buf = 0;
      v28 = "Nonnull perTimezoneSamplingParameters AND perHWModelSamplingParameters";
      goto LABEL_14;
    }

    v37.receiver = self;
    v37.super_class = DRSTeamTasking;
    v32 = [(DRSTeamTasking *)&v37 init];
    p_isa = &v32->super.isa;
    dCopy = v34;
    if (v32)
    {
      objc_storeStrong(&v32->_teamID, d);
      objc_storeStrong(p_isa + 2, config);
      objc_storeStrong(p_isa + 3, parameters);
      objc_storeStrong(p_isa + 4, samplingParameters);
      objc_storeStrong(p_isa + 5, paramters);
    }

    self = p_isa;
    selfCopy2 = self;
  }

  else
  {
    v29 = DPLogHandle_TaskingMessageError(v24);
    self = selfCopy;
    configCopy = v22;
    dCopy = v34;
    if (os_signpost_enabled(v29))
    {
      teamID2 = [configCopy teamID];
      *buf = 138543618;
      v39 = teamID2;
      v40 = 2114;
      v41 = v34;
      _os_signpost_emit_with_name_impl(&dword_232906000, v29, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRSTeamTasking", "Config team ID (%{public}@) does not match TeamTasking team ID (%{public}@)", buf, 0x16u);
    }

    selfCopy2 = 0;
    parametersCopy = v20;
    samplingParametersCopy = v35;
  }

LABEL_19:

  return selfCopy2;
}

- (id)samplingParametersForTimezoneAbbreviation:(id)abbreviation
{
  abbreviationCopy = abbreviation;
  perTimezoneSamplingParameters = [(DRSTeamTasking *)self perTimezoneSamplingParameters];
  defaultSamplingParameters = [perTimezoneSamplingParameters objectForKeyedSubscript:abbreviationCopy];

  if (!defaultSamplingParameters)
  {
    defaultSamplingParameters = [(DRSTeamTasking *)self defaultSamplingParameters];
  }

  return defaultSamplingParameters;
}

- (id)samplingParametersForHardwareModel:(id)model
{
  modelCopy = model;
  perHWModelSamplingParameters = [(DRSTeamTasking *)self perHWModelSamplingParameters];
  defaultSamplingParameters = [perHWModelSamplingParameters objectForKeyedSubscript:modelCopy];

  if (!defaultSamplingParameters)
  {
    defaultSamplingParameters = [(DRSTeamTasking *)self defaultSamplingParameters];
  }

  return defaultSamplingParameters;
}

- (id)samplingParametersForHWModel:(id)model timezoneAbbreviation:(id)abbreviation
{
  modelCopy = model;
  abbreviationCopy = abbreviation;
  perTimezoneSamplingParameters = [(DRSTeamTasking *)self perTimezoneSamplingParameters];

  if (perTimezoneSamplingParameters)
  {
    [(DRSTeamTasking *)self samplingParametersForTimezoneAbbreviation:abbreviationCopy];
  }

  else
  {
    [(DRSTeamTasking *)self samplingParametersForHardwareModel:modelCopy];
  }
  v9 = ;

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(DRSTeamTasking *)self isEqualToTeamTasking:equalCopy];

  return v5;
}

- (BOOL)isEqualToTeamTasking:(id)tasking
{
  taskingCopy = tasking;
  v5 = taskingCopy;
  if (taskingCopy)
  {
    if (taskingCopy != self)
    {
      teamID = [(DRSTeamTasking *)self teamID];
      teamID2 = [(DRSTeamTasking *)v5 teamID];
      v8 = [teamID isEqualToString:teamID2];

      if (!v8)
      {
        goto LABEL_12;
      }

      config = [(DRSTeamTasking *)self config];
      config2 = [(DRSTeamTasking *)v5 config];
      v11 = [config isEqualToConfig:config2];

      if (!v11)
      {
        goto LABEL_12;
      }

      defaultSamplingParameters = [(DRSTeamTasking *)self defaultSamplingParameters];
      defaultSamplingParameters2 = [(DRSTeamTasking *)v5 defaultSamplingParameters];
      IsNil = _oneIsNil(defaultSamplingParameters, defaultSamplingParameters2);

      if (IsNil)
      {
        goto LABEL_12;
      }

      defaultSamplingParameters3 = [(DRSTeamTasking *)self defaultSamplingParameters];
      if (defaultSamplingParameters3)
      {
        v16 = defaultSamplingParameters3;
        defaultSamplingParameters4 = [(DRSTeamTasking *)self defaultSamplingParameters];
        defaultSamplingParameters5 = [(DRSTeamTasking *)v5 defaultSamplingParameters];
        v19 = [defaultSamplingParameters4 isEqualToSamplingParameters:defaultSamplingParameters5];

        if (!v19)
        {
          goto LABEL_12;
        }
      }

      perTimezoneSamplingParameters = [(DRSTeamTasking *)self perTimezoneSamplingParameters];
      perTimezoneSamplingParameters2 = [(DRSTeamTasking *)v5 perTimezoneSamplingParameters];
      v22 = _oneIsNil(perTimezoneSamplingParameters, perTimezoneSamplingParameters2);

      if (v22)
      {
        goto LABEL_12;
      }

      perTimezoneSamplingParameters3 = [(DRSTeamTasking *)self perTimezoneSamplingParameters];
      if (perTimezoneSamplingParameters3)
      {
        v24 = perTimezoneSamplingParameters3;
        perTimezoneSamplingParameters4 = [(DRSTeamTasking *)self perTimezoneSamplingParameters];
        perTimezoneSamplingParameters5 = [(DRSTeamTasking *)v5 perTimezoneSamplingParameters];
        v27 = [perTimezoneSamplingParameters4 isEqualToDictionary:perTimezoneSamplingParameters5];

        if (!v27)
        {
          goto LABEL_12;
        }
      }

      perHWModelSamplingParameters = [(DRSTeamTasking *)self perHWModelSamplingParameters];
      perHWModelSamplingParameters2 = [(DRSTeamTasking *)v5 perHWModelSamplingParameters];
      v30 = _oneIsNil(perHWModelSamplingParameters, perHWModelSamplingParameters2);

      if (v30)
      {
        goto LABEL_12;
      }

      perHWModelSamplingParameters3 = [(DRSTeamTasking *)self perHWModelSamplingParameters];
      if (perHWModelSamplingParameters3)
      {
        v33 = perHWModelSamplingParameters3;
        perHWModelSamplingParameters4 = [(DRSTeamTasking *)self perHWModelSamplingParameters];
        perHWModelSamplingParameters5 = [(DRSTeamTasking *)v5 perHWModelSamplingParameters];
        v31 = [perHWModelSamplingParameters4 isEqualToDictionary:perHWModelSamplingParameters5];

        goto LABEL_16;
      }
    }

    v31 = 1;
    goto LABEL_16;
  }

LABEL_12:
  v31 = 0;
LABEL_16:

  return v31 & 1;
}

- (id)_jsonDictRepresentation:(BOOL)representation
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (representation)
  {
    config = [(DRSTeamTasking *)self config];
    jsonDictRepresentation = [config jsonDictRepresentation];
  }

  else
  {
    jsonDictRepresentation = 0;
  }

  defaultSamplingParameters = [(DRSTeamTasking *)self defaultSamplingParameters];

  if (defaultSamplingParameters)
  {
    defaultSamplingParameters2 = [(DRSTeamTasking *)self defaultSamplingParameters];
    defaultSamplingParameters = [defaultSamplingParameters2 jsonDictRepresentation];
  }

  perTimezoneSamplingParameters = [(DRSTeamTasking *)self perTimezoneSamplingParameters];

  if (perTimezoneSamplingParameters)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    perTimezoneSamplingParameters2 = [(DRSTeamTasking *)self perTimezoneSamplingParameters];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __42__DRSTeamTasking__jsonDictRepresentation___block_invoke;
    v20[3] = &unk_27899FBC0;
    perTimezoneSamplingParameters = dictionary;
    v21 = perTimezoneSamplingParameters;
    [perTimezoneSamplingParameters2 enumerateKeysAndObjectsUsingBlock:v20];
  }

  perHWModelSamplingParameters = [(DRSTeamTasking *)self perHWModelSamplingParameters];

  if (perHWModelSamplingParameters)
  {
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    perHWModelSamplingParameters2 = [(DRSTeamTasking *)self perHWModelSamplingParameters];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __42__DRSTeamTasking__jsonDictRepresentation___block_invoke_2;
    v18[3] = &unk_27899FBC0;
    perHWModelSamplingParameters = dictionary2;
    v19 = perHWModelSamplingParameters;
    [perHWModelSamplingParameters2 enumerateKeysAndObjectsUsingBlock:v18];
  }

  v22 = @"teamID";
  teamID = [(DRSTeamTasking *)self teamID];
  v23[0] = teamID;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v16 = [v15 mutableCopy];

  if (jsonDictRepresentation)
  {
    [v16 setObject:jsonDictRepresentation forKeyedSubscript:@"config"];
  }

  if (defaultSamplingParameters)
  {
    [v16 setObject:defaultSamplingParameters forKeyedSubscript:@"defaultSamplingParameters"];
  }

  if (perTimezoneSamplingParameters)
  {
    [v16 setObject:perTimezoneSamplingParameters forKeyedSubscript:@"perTimezoneSamplingParameters"];
  }

  if (perHWModelSamplingParameters)
  {
    [v16 setObject:perHWModelSamplingParameters forKeyedSubscript:@"perHWModelSamplingParameters"];
  }

  return v16;
}

void __42__DRSTeamTasking__jsonDictRepresentation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 jsonDictRepresentation];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void __42__DRSTeamTasking__jsonDictRepresentation___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 jsonDictRepresentation];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (id)debugDescription
{
  jsonDictRepresentation = [(DRSTeamTasking *)self jsonDictRepresentation];
  v3 = [jsonDictRepresentation description];

  return v3;
}

- (DRSTeamTasking)initWithJSONDict:(id)dict receivedDate:(id)date
{
  dictCopy = dict;
  dateCopy = date;
  v8 = dateCopy;
  if (dictCopy)
  {
    isKindOfClass = [dictCopy objectForKeyedSubscript:@"teamID"];
    v10 = isKindOfClass;
    if (!isKindOfClass || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0))
    {
      v13 = DPLogHandle_TaskingMessageError(isKindOfClass);
      if (os_signpost_enabled(v13))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamTaskingMessageJSONInit", "Invalid team ID", buf, 2u);
      }

      goto LABEL_13;
    }

    v11 = [dictCopy objectForKeyedSubscript:@"config"];
    v12 = v11;
    if (!v11 || (objc_opt_class(), v11 = objc_opt_isKindOfClass(), (v11 & 1) == 0))
    {
      v20 = DPLogHandle_TaskingMessageError(v11);
      if (os_signpost_enabled(v20))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamTaskingMessageJSONInit", "Invalid configDict", buf, 2u);
      }

      selfCopy = 0;
      v13 = v12;
      goto LABEL_45;
    }

    v13 = [objc_alloc(MEMORY[0x277D051F8]) initWithJSONDict:v12 receivedDate:v8];

    v14 = [dictCopy objectForKeyedSubscript:@"defaultSamplingParameters"];
    if (v14)
    {
      objc_opt_class();
      v15 = objc_opt_isKindOfClass();
      if ((v15 & 1) == 0)
      {
        v17 = DPLogHandle_TaskingMessageError(v15);
        if (os_signpost_enabled(v17))
        {
          *buf = 0;
          v18 = "Invalid defaultSamplingParametersDict";
          goto LABEL_27;
        }

LABEL_28:

LABEL_13:
        selfCopy = 0;
LABEL_45:

        goto LABEL_46;
      }

      v16 = [[DRSSamplingParameters alloc] initWithJSONDict:v14];
      if (!v16)
      {
        v17 = DPLogHandle_TaskingMessageError(0);
        if (os_signpost_enabled(v17))
        {
          *buf = 0;
          v18 = "Invalid defaultSamplingParameters";
LABEL_27:
          _os_signpost_emit_with_name_impl(&dword_232906000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamTaskingMessageJSONInit", v18, buf, 2u);
          goto LABEL_28;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v16 = 0;
    }

    v21 = [dictCopy objectForKeyedSubscript:@"perTimezoneSamplingParameters"];
    if (v21)
    {
      objc_opt_class();
      v22 = objc_opt_isKindOfClass();
      if ((v22 & 1) == 0)
      {
        v30 = DPLogHandle_TaskingMessageError(v22);
        if (os_signpost_enabled(v30))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_232906000, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamTaskingMessageJSONInit", "Invalid perTimezoneSamplingParametersDict", buf, 2u);
        }

        v24 = 0;
        goto LABEL_43;
      }

      *buf = 0;
      v40 = buf;
      v41 = 0x2020000000;
      v42 = 0;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __48__DRSTeamTasking_initWithJSONDict_receivedDate___block_invoke;
      v36[3] = &unk_27899FBE8;
      v38 = buf;
      v24 = dictionary;
      v37 = v24;
      [v21 enumerateKeysAndObjectsUsingBlock:v36];
      v25 = v40[24];

      _Block_object_dispose(buf, 8);
      if (v25)
      {
LABEL_43:
        selfCopy = 0;
        goto LABEL_44;
      }
    }

    else
    {
      v24 = 0;
    }

    v26 = [dictCopy objectForKeyedSubscript:@"perHWModelSamplingParameters"];
    if (v26)
    {
      objc_opt_class();
      v27 = objc_opt_isKindOfClass();
      if ((v27 & 1) == 0)
      {
        v31 = DPLogHandle_TaskingMessageError(v27);
        if (os_signpost_enabled(v31))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_232906000, v31, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamTaskingMessageJSONInit", "Invalid perHWModelSamplingParametersDict", buf, 2u);
        }

        v21 = 0;
        goto LABEL_42;
      }

      *buf = 0;
      v40 = buf;
      v41 = 0x2020000000;
      v42 = 0;
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __48__DRSTeamTasking_initWithJSONDict_receivedDate___block_invoke_62;
      v33[3] = &unk_27899FBE8;
      v35 = buf;
      v21 = dictionary2;
      v34 = v21;
      [v26 enumerateKeysAndObjectsUsingBlock:v33];
      v29 = v40[24];

      _Block_object_dispose(buf, 8);
      if (v29)
      {
LABEL_42:

        goto LABEL_43;
      }
    }

    else
    {
      v21 = 0;
    }

    self = [(DRSTeamTasking *)self initWithTeamID:v10 config:v13 defaultSamplingParameters:v16 perTimezoneSamplingParameters:v24 perHardwareModelSamplingParamters:v21];
    selfCopy = self;
LABEL_44:

    goto LABEL_45;
  }

  v10 = DPLogHandle_TaskingMessageError(dateCopy);
  if (os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamTaskingMessageJSONInit", "nil JSON dict", buf, 2u);
  }

  selfCopy = 0;
LABEL_46:

  return selfCopy;
}

void __48__DRSTeamTasking_initWithJSONDict_receivedDate___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v10 = [[DRSSamplingParameters alloc] initWithJSONDict:v8];
    if (v10)
    {
      [*(a1 + 32) setObject:v10 forKeyedSubscript:v7];
    }

    else
    {
      v12 = DPLogHandle_TaskingMessageError(0);
      if (os_signpost_enabled(v12))
      {
        *v13 = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamTaskingMessageJSONInit", "Invalid perTimezoneSamplingParameters value", v13, 2u);
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }

  else
  {
    v11 = DPLogHandle_TaskingMessageError(isKindOfClass);
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamTaskingMessageJSONInit", "Invalid perTimezoneSamplingParametersDict value", buf, 2u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __48__DRSTeamTasking_initWithJSONDict_receivedDate___block_invoke_62(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v10 = [[DRSSamplingParameters alloc] initWithJSONDict:v8];
    if (v10)
    {
      [*(a1 + 32) setObject:v10 forKeyedSubscript:v7];
    }

    else
    {
      v12 = DPLogHandle_TaskingMessageError(0);
      if (os_signpost_enabled(v12))
      {
        *v13 = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamTaskingMessageJSONInit", "Invalid perHWModelSamplingParametersDict value", v13, 2u);
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }

  else
  {
    v11 = DPLogHandle_TaskingMessageError(isKindOfClass);
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamTaskingMessageJSONInit", "Invalid perHWModelSamplingParametersDict value", buf, 2u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

@end