@interface AFSiriPhoneticContactNames
- (id)spokenName;
@end

@implementation AFSiriPhoneticContactNames

- (id)spokenName
{
  if ([(NSString *)self->_givenName length]&& [(NSString *)self->_familyName length])
  {
    v3 = AFRingtoneLocalizedString(@"SPOKEN_CONTACT_FULL", self->_languageCode);
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v3, self->_givenName, self->_familyName];
  }

  else
  {
    v4 = 0;
  }

  if (![v4 length])
  {
    v5 = [(NSString *)self->_givenName copy];

    v4 = v5;
  }

  if (![v4 length])
  {
    v6 = [(NSString *)self->_familyName copy];

    v4 = v6;
  }

  if (![v4 length])
  {
    v7 = [(NSString *)self->_nickname copy];

    v4 = v7;
  }

  if (![v4 length])
  {
    v8 = [(NSString *)self->_middleName copy];

    v4 = v8;
  }

  if (![v4 length])
  {
    v9 = [(NSString *)self->_organizationName copy];

    v4 = v9;
  }

  if ([v4 length])
  {
    v10 = v4;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

@end