@interface EKPersistentParticipant
+ (id)defaultPropertiesToLoad;
- (id)copyWithZone:(_NSZone *)zone;
- (id)semanticIdentifier;
- (id)url;
@end

@implementation EKPersistentParticipant

+ (id)defaultPropertiesToLoad
{
  if (defaultPropertiesToLoad_onceToken_11 != -1)
  {
    +[EKPersistentParticipant defaultPropertiesToLoad];
  }

  v3 = defaultPropertiesToLoad_defaultPropertiesToLoad_10;

  return v3;
}

void __50__EKPersistentParticipant_defaultPropertiesToLoad__block_invoke()
{
  v5[7] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992B60];
  v5[0] = *MEMORY[0x1E6992B50];
  v5[1] = v0;
  v1 = *MEMORY[0x1E6992B08];
  v5[2] = *MEMORY[0x1E6992B70];
  v5[3] = v1;
  v2 = *MEMORY[0x1E6992B78];
  v5[4] = *MEMORY[0x1E6992B58];
  v5[5] = v2;
  v5[6] = *MEMORY[0x1E6992B38];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:7];
  v4 = defaultPropertiesToLoad_defaultPropertiesToLoad_10;
  defaultPropertiesToLoad_defaultPropertiesToLoad_10 = v3;
}

- (id)url
{
  uRLString = [(EKPersistentParticipant *)self URLString];
  if (uRLString)
  {
    v4 = MEMORY[0x1E695DFF8];
    uRLString2 = [(EKPersistentParticipant *)self URLString];
    v6 = [v4 URLWithString:uRLString2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)semanticIdentifier
{
  emailAddress = [(EKPersistentParticipant *)self emailAddress];
  v4 = emailAddress;
  if (emailAddress)
  {
    v5 = emailAddress;
  }

  else
  {
    phoneNumber = [(EKPersistentParticipant *)self phoneNumber];
    v7 = phoneNumber;
    if (phoneNumber)
    {
      v5 = phoneNumber;
    }

    else
    {
      uRLString = [(EKPersistentParticipant *)self URLString];
      v9 = uRLString;
      if (uRLString)
      {
        v5 = uRLString;
      }

      else
      {
        displayNameRaw = [(EKPersistentParticipant *)self displayNameRaw];
        v11 = displayNameRaw;
        if (displayNameRaw)
        {
          v5 = displayNameRaw;
        }

        else
        {
          firstName = [(EKPersistentParticipant *)self firstName];
          lastName = [(EKPersistentParticipant *)self lastName];
          if (firstName | lastName)
          {
            string = [MEMORY[0x1E696AD60] string];
            v15 = string;
            if (firstName)
            {
              [string appendFormat:@"FIRST=%@;", firstName];
            }

            if (lastName)
            {
              [v15 appendFormat:@"LAST=%@;", lastName];
            }

            v5 = [v15 copy];
          }

          else
          {
            v5 = 0;
          }
        }
      }
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  NSRequestConcreteImplementation();

  return self;
}

@end