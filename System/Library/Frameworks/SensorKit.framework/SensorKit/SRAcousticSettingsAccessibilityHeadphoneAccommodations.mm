@interface SRAcousticSettingsAccessibilityHeadphoneAccommodations
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SRAcousticSettingsAccessibilityHeadphoneAccommodations)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (SRAcousticSettingsAccessibilityHeadphoneAccommodations)initWithCoder:(id)coder;
- (SRAcousticSettingsAccessibilityHeadphoneAccommodations)initWithHeadphoneAccommodationsEnabled:(BOOL)enabled mediaEnhanceTuning:(int64_t)tuning mediaEnhanceBoosting:(int64_t)boosting mediaEnhanceApplication:(int64_t)application;
- (id)binarySampleRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRAcousticSettingsAccessibilityHeadphoneAccommodations

- (SRAcousticSettingsAccessibilityHeadphoneAccommodations)initWithHeadphoneAccommodationsEnabled:(BOOL)enabled mediaEnhanceTuning:(int64_t)tuning mediaEnhanceBoosting:(int64_t)boosting mediaEnhanceApplication:(int64_t)application
{
  v11.receiver = self;
  v11.super_class = SRAcousticSettingsAccessibilityHeadphoneAccommodations;
  result = [(SRAcousticSettingsAccessibilityHeadphoneAccommodations *)&v11 init];
  if (result)
  {
    result->_enabled = enabled;
    result->_mediaEnhanceTuning = tuning;
    result->_mediaEnhanceBoosting = boosting;
    result->_mediaEnhanceApplication = application;
  }

  return result;
}

- (SRAcousticSettingsAccessibilityHeadphoneAccommodations)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  v15 = *MEMORY[0x1E69E9840];
  if ([representation length])
  {
    v12.receiver = self;
    v12.super_class = SRAcousticSettingsAccessibilityHeadphoneAccommodations;
    result = [(SRAcousticSettingsAccessibilityHeadphoneAccommodations *)&v12 init];
    if (!result)
    {
      return result;
    }

    self = result;
    v11 = 0;
    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:representation error:&v11];
    if (v8)
    {
      v9 = v8;

      return v9;
    }

    v10 = SRLogAcousticSettings;
    if (os_log_type_enabled(SRLogAcousticSettings, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v11;
      _os_log_error_impl(&dword_1C914D000, v10, OS_LOG_TYPE_ERROR, "Failed to unarchive data because %{public}@", buf, 0xCu);
    }
  }

  return 0;
}

- (id)binarySampleRepresentation
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v7];
  v3 = v7;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v7 == 0;
  }

  if (!v4)
  {
    v5 = SRLogAcousticSettings;
    if (os_log_type_enabled(SRLogAcousticSettings, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v9 = v3;
      _os_log_error_impl(&dword_1C914D000, v5, OS_LOG_TYPE_ERROR, "Failed to archive data because %{public}@", buf, 0xCu);
    }
  }

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  enabled = self->_enabled;
  if (enabled != [equal isEnabled])
  {
    return 0;
  }

  mediaEnhanceTuning = self->_mediaEnhanceTuning;
  if (mediaEnhanceTuning != [equal mediaEnhanceTuning])
  {
    return 0;
  }

  mediaEnhanceBoosting = self->_mediaEnhanceBoosting;
  if (mediaEnhanceBoosting != [equal mediaEnhanceBoosting])
  {
    return 0;
  }

  mediaEnhanceApplication = self->_mediaEnhanceApplication;
  return mediaEnhanceApplication == [equal mediaEnhanceApplication];
}

- (unint64_t)hash
{
  v3 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithBool:{self->_enabled), "hash"}];
  v4 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithInteger:{self->_mediaEnhanceTuning), "hash"}] ^ v3;
  v5 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithInteger:{self->_mediaEnhanceBoosting), "hash"}];
  return v4 ^ v5 ^ [objc_msgSend(MEMORY[0x1E696AD98] numberWithInteger:{self->_mediaEnhanceApplication), "hash"}];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@ (%p) {Accessibility Headphone Accommodations Settings headphoneAccommodationsIsEnabled: %d, mediaEnhanceTuning: %ld, mediaEnhanceBoosting: %ld, mediaEnhanceApplication: %ld}", NSStringFromClass(v4), self, -[SRAcousticSettingsAccessibilityHeadphoneAccommodations isEnabled](self, "isEnabled"), -[SRAcousticSettingsAccessibilityHeadphoneAccommodations mediaEnhanceTuning](self, "mediaEnhanceTuning"), -[SRAcousticSettingsAccessibilityHeadphoneAccommodations mediaEnhanceBoosting](self, "mediaEnhanceBoosting"), -[SRAcousticSettingsAccessibilityHeadphoneAccommodations mediaEnhanceApplication](self, "mediaEnhanceApplication")];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeBool:-[SRAcousticSettingsAccessibilityHeadphoneAccommodations isEnabled](self forKey:{"isEnabled"), @"headphoneAccommodationsEnabled"}];
  [coder encodeInteger:-[SRAcousticSettingsAccessibilityHeadphoneAccommodations mediaEnhanceTuning](self forKey:{"mediaEnhanceTuning"), @"headphoneAccommodationsMediaEnhanceTuning"}];
  [coder encodeInteger:-[SRAcousticSettingsAccessibilityHeadphoneAccommodations mediaEnhanceBoosting](self forKey:{"mediaEnhanceBoosting"), @"headphoneAccommodationsMediaEnhanceBoosting"}];
  mediaEnhanceApplication = [(SRAcousticSettingsAccessibilityHeadphoneAccommodations *)self mediaEnhanceApplication];

  [coder encodeInteger:mediaEnhanceApplication forKey:@"headphoneAccommodationsMediaEnhanceApplication"];
}

- (SRAcousticSettingsAccessibilityHeadphoneAccommodations)initWithCoder:(id)coder
{
  v18 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [coder decodeBoolForKey:@"headphoneAccommodationsEnabled"];
  v7 = [coder decodeIntegerForKey:@"headphoneAccommodationsMediaEnhanceTuning"];
  v8 = [coder decodeIntegerForKey:@"headphoneAccommodationsMediaEnhanceBoosting"];
  v9 = [coder decodeIntegerForKey:@"headphoneAccommodationsMediaEnhanceApplication"];
  if ((v7 - 4) <= 0xFFFFFFFFFFFFFFFCLL)
  {
    v10 = SRLogAcousticSettings;
    if (os_log_type_enabled(SRLogAcousticSettings, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v15 = @"headphoneAccommodationsMediaEnhanceTuning";
      v16 = 2048;
      v17 = v7;
LABEL_12:
      _os_log_error_impl(&dword_1C914D000, v10, OS_LOG_TYPE_ERROR, "Failed to decode the object. %@: %ld", buf, 0x16u);
      return 0;
    }

    return 0;
  }

  if ((v8 - 4) <= 0xFFFFFFFFFFFFFFFCLL)
  {
    v10 = SRLogAcousticSettings;
    if (os_log_type_enabled(SRLogAcousticSettings, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v15 = @"headphoneAccommodationsMediaEnhanceBoosting";
      v16 = 2048;
      v17 = v8;
      goto LABEL_12;
    }

    return 0;
  }

  v11 = v9;
  if ((v9 - 5) <= 0xFFFFFFFFFFFFFFFBLL)
  {
    v10 = SRLogAcousticSettings;
    if (os_log_type_enabled(SRLogAcousticSettings, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v15 = @"headphoneAccommodationsMediaEnhanceApplication";
      v16 = 2048;
      v17 = v11;
      goto LABEL_12;
    }

    return 0;
  }

  v13 = [SRAcousticSettingsAccessibilityHeadphoneAccommodations alloc];

  return [(SRAcousticSettingsAccessibilityHeadphoneAccommodations *)v13 initWithHeadphoneAccommodationsEnabled:v6 mediaEnhanceTuning:v7 mediaEnhanceBoosting:v8 mediaEnhanceApplication:v11];
}

@end