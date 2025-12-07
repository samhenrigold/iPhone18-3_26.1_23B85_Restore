@interface MCEncryptedProfileServicePayload
- (MCEncryptedProfileServicePayload)initWithURLString:(id)string profile:(id)profile;
- (id)subtitle1Label;
- (id)verboseDescription;
@end

@implementation MCEncryptedProfileServicePayload

- (MCEncryptedProfileServicePayload)initWithURLString:(id)string profile:(id)profile
{
  v18[4] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v17[0] = @"PayloadVersion";
  v17[1] = @"PayloadType";
  v18[0] = &unk_1F1AA5830;
  v18[1] = @"com.apple.placeholder.encryptedprofileservice";
  v17[2] = @"PayloadIdentifier";
  v8 = MEMORY[0x1E696AEC0];
  profileCopy = profile;
  mCMakeUUID = [v8 MCMakeUUID];
  v18[2] = mCMakeUUID;
  v17[3] = @"PayloadUUID";
  mCMakeUUID2 = [MEMORY[0x1E696AEC0] MCMakeUUID];
  v18[3] = mCMakeUUID2;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  v13 = [v12 mutableCopy];

  v16.receiver = self;
  v16.super_class = MCEncryptedProfileServicePayload;
  v14 = [(MCPayload *)&v16 initWithDictionary:v13 profile:profileCopy outError:0];

  if (v14)
  {
    objc_storeStrong(&v14->_urlString, string);
  }

  return v14;
}

- (id)verboseDescription
{
  v3 = MEMORY[0x1E696AD60];
  v7.receiver = self;
  v7.super_class = MCEncryptedProfileServicePayload;
  verboseDescription = [(MCPayload *)&v7 verboseDescription];
  v5 = [v3 stringWithString:verboseDescription];

  if (self->_urlString)
  {
    [v5 appendFormat:@"URL         : %@", self->_urlString];
  }

  return v5;
}

- (id)subtitle1Label
{
  if (self->_urlString)
  {
    v2 = @"DEVICE_ENROLLMENT_CHALLENGE_URL_COLON";
  }

  else
  {
    v2 = @"DEVICE_ENROLLMENT_CHALLENGE_URL_MISSING";
  }

  v3 = MCLocalizedString(v2);

  return v3;
}

@end