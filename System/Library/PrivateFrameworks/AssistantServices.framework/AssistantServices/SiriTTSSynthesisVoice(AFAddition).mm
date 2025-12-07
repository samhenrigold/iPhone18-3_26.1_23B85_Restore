@interface SiriTTSSynthesisVoice(AFAddition)
- (char)AFVoiceGender;
- (id)SAVoiceGender;
- (id)SAVoiceQuality;
- (id)SAVoiceType;
- (uint64_t)AFVoiceFootprint;
- (void)updateWithTargetVoice:()AFAddition;
@end

@implementation SiriTTSSynthesisVoice(AFAddition)

- (id)SAVoiceType
{
  type = [self type];
  if ((type - 1) > 5)
  {
    v2 = MEMORY[0x1E69C8450];
  }

  else
  {
    v2 = qword_1E73428E8[type - 1];
  }

  v3 = *v2;

  return v3;
}

- (id)SAVoiceQuality
{
  footprint = [self footprint];
  if (footprint > 3)
  {
    v2 = MEMORY[0x1E69C8448];
  }

  else
  {
    v2 = qword_1E73428C8[footprint];
  }

  v3 = *v2;

  return v3;
}

- (id)SAVoiceGender
{
  gender = [self gender];
  if ((gender - 1) > 2)
  {
    v2 = MEMORY[0x1E69C8430];
  }

  else
  {
    v2 = qword_1E73428B0[gender - 1];
  }

  v3 = *v2;

  return v3;
}

- (uint64_t)AFVoiceFootprint
{
  footprint = [self footprint];
  if (footprint > 3)
  {
    return 0;
  }

  else
  {
    return qword_1914CFDD8[footprint];
  }
}

- (char)AFVoiceGender
{
  result = [self gender];
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

- (void)updateWithTargetVoice:()AFAddition
{
  v4 = a3;
  name = [v4 name];
  lowercaseString = [name lowercaseString];

  language = [v4 language];

  language2 = [self language];
  isEqualToString = objc_msgSend_isEqualToString_(language);

  if ((isEqualToString & 1) == 0)
  {
    [self setLanguage:language];
  }

  v9 = lowercaseString;
  if (lowercaseString && ([self name], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "lowercaseString"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend_isEqualToString_(lowercaseString), v11, v10, v9 = lowercaseString, (v12 & 1) == 0))
  {
    [self setName:lowercaseString];
  }

  else if (isEqualToString)
  {
    [self setName:v9];
    goto LABEL_9;
  }

  [self setFootprint:1];
  [self setType:1];
  [self setVersion:0];
LABEL_9:
}

@end