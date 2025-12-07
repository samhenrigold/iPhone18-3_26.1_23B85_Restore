@interface HMCameraStreamAudioPreferences
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMCameraStreamAudioPreferences)initWithCoder:(id)coder;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMCameraStreamAudioPreferences

- (NSArray)attributeDescriptions
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  codecs = [(HMCameraStreamAudioPreferences *)self codecs];
  v5 = [v3 initWithName:@"Codecs" value:codecs];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  return v6;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (unint64_t)hash
{
  codecs = [(HMCameraStreamAudioPreferences *)self codecs];
  v3 = [codecs hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    codecs = [(HMCameraStreamAudioPreferences *)self codecs];
    codecs2 = [v6 codecs];
    v9 = [codecs isEqualToSet:codecs2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  codecs = [(HMCameraStreamAudioPreferences *)self codecs];
  [coderCopy encodeObject:codecs forKey:@"HM.CameraStreamAudioCodecs"];
}

- (HMCameraStreamAudioPreferences)initWithCoder:(id)coder
{
  v11[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [(HMCameraStreamAudioPreferences *)self init];
  v6 = MEMORY[0x1E695DFD8];
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"HM.CameraStreamAudioCodecs"];

  [(HMCameraStreamAudioPreferences *)v5 setCodecs:v9];
  return v5;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end