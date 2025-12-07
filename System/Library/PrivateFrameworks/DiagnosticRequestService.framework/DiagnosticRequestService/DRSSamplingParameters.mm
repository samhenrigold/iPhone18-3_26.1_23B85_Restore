@interface DRSSamplingParameters
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSamplingParameters:(id)parameters;
- (DRSSamplingParameters)initWithJSONDict:(id)dict;
- (DRSSamplingParameters)initWithSamplingPercentage:(double)percentage;
- (id)debugDescription;
- (id)jsonDictRepresentation;
@end

@implementation DRSSamplingParameters

- (DRSSamplingParameters)initWithSamplingPercentage:(double)percentage
{
  selfCopy = self;
  v13 = *MEMORY[0x277D85DE8];
  if (percentage < 0.0)
  {
    v5 = DPLogHandle_TaskingMessageError(self);
    if (os_signpost_enabled(v5))
    {
      *buf = 134217984;
      percentageCopy2 = percentage;
      v6 = "Invalid sampling < 0%% (%f)";
LABEL_7:
      _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SamplingParameterFailedInit", v6, buf, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (percentage > 100.0)
  {
    v5 = DPLogHandle_TaskingMessageError(self);
    if (os_signpost_enabled(v5))
    {
      *buf = 134217984;
      percentageCopy2 = percentage;
      v6 = "Invalid sampling > 100%% (%f)";
      goto LABEL_7;
    }

LABEL_8:

    v7 = 0;
    goto LABEL_12;
  }

  v10.receiver = self;
  v10.super_class = DRSSamplingParameters;
  v8 = [(DRSSamplingParameters *)&v10 init];
  if (v8)
  {
    v8->_samplingPercentage = percentage;
  }

  selfCopy = v8;
  v7 = selfCopy;
LABEL_12:

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(DRSSamplingParameters *)self isEqualToSamplingParameters:equalCopy];

  return v5;
}

- (BOOL)isEqualToSamplingParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = parametersCopy;
  if (parametersCopy == self)
  {
    v9 = 1;
  }

  else if (parametersCopy)
  {
    [(DRSSamplingParameters *)parametersCopy samplingPercentage];
    v7 = v6;
    [(DRSSamplingParameters *)self samplingPercentage];
    v9 = v7 == v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (DRSSamplingParameters)initWithJSONDict:(id)dict
{
  selfCopy = self;
  if (!dict)
  {
    v4 = DPLogHandle_TaskingMessageError(self);
    if (os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SamplingParameterFailedJSONInit", "nil JSON dict", buf, 2u);
    }

    goto LABEL_13;
  }

  v4 = [dict objectForKeyedSubscript:@"samplingPercentage"];
  if (!v4)
  {
    v7 = DPLogHandle_TaskingMessageError(0);
    if (os_signpost_enabled(v7))
    {
      v12 = 0;
      v8 = "JSON missing sampling percentage";
      v9 = &v12;
LABEL_11:
      _os_signpost_emit_with_name_impl(&dword_232906000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SamplingParameterFailedJSONInit", v8, v9, 2u);
    }

LABEL_12:

LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v7 = DPLogHandle_TaskingMessageError(isKindOfClass);
    if (os_signpost_enabled(v7))
    {
      v11 = 0;
      v8 = "Sampling percentage is wrong class";
      v9 = &v11;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  [v4 doubleValue];
  selfCopy = [(DRSSamplingParameters *)selfCopy initWithSamplingPercentage:?];
  v6 = selfCopy;
LABEL_14:

  return v6;
}

- (id)jsonDictRepresentation
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"samplingPercentage";
  v2 = MEMORY[0x277CCABB0];
  [(DRSSamplingParameters *)self samplingPercentage];
  v3 = [v2 numberWithDouble:?];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (id)debugDescription
{
  jsonDictRepresentation = [(DRSSamplingParameters *)self jsonDictRepresentation];
  v3 = [jsonDictRepresentation description];

  return v3;
}

@end