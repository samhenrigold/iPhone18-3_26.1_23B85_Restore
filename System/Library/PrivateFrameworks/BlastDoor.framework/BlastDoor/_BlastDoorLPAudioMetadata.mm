@interface _BlastDoorLPAudioMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPAudioMetadata)init;
- (_BlastDoorLPAudioMetadata)initWithCoder:(id)coder;
- (id)_initWithDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPAudioMetadata

- (_BlastDoorLPAudioMetadata)init
{
  v7 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = _BlastDoorLPAudioMetadata;
  v2 = [(_BlastDoorLPAudioMetadata *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_version = 1;
    v4 = v2;
  }

  return v3;
}

- (id)_initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(_BlastDoorLPAudioMetadata *)self init];
  if (v5 && (URLForKey(dictionaryCopy, @"LPMetadataAudioURL"), v6 = objc_claimAutoreleasedReturnValue(), URL = v5->_URL, v5->_URL = v6, URL, v5->_URL))
  {
    v8 = stringForKey(dictionaryCopy, @"LPMetadataAudioType");
    type = v5->_type;
    v5->_type = v8;

    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (_BlastDoorLPAudioMetadata)initWithCoder:(id)coder
{
  v15 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = _BlastDoorLPAudioMetadata;
  v5 = [(_BlastDoorLPAudioMetadata *)&v14 init];
  if (v5)
  {
    v5->_version = [coderCopy decodeInt32ForKey:@"version"];
    v6 = decodeURLForKey(coderCopy, @"URL");
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = decodeStringForKey(coderCopy, @"type");
    type = v5->_type;
    v5->_type = v8;

    v10 = decodeStringForKey(coderCopy, @"accessibilityText");
    accessibilityText = v5->_accessibilityText;
    v5->_accessibilityText = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  version = self->_version;
  coderCopy = coder;
  [coderCopy encodeInt32:version forKey:@"version"];
  [coderCopy _bd_lp_encodeURLIfNotNilOrLocalFile:self->_URL forKey:@"URL"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_type forKey:@"type"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_accessibilityText forKey:@"accessibilityText"];
}

- (BOOL)isEqual:(id)equal
{
  v13 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = _BlastDoorLPAudioMetadata;
  if ([(_BlastDoorLPAudioMetadata *)&v12 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v7 = v6;
      if (*(v6 + 2) == self->_version && ((v8 = v6[2], !(v8 | self->_URL)) || [v8 isEqual:?]) && ((v9 = v7[3], !(v9 | self->_type)) || objc_msgSend(v9, "isEqual:")))
      {
        v10 = v7[4];
        if (v10 | self->_accessibilityText)
        {
          v5 = [v10 isEqual:?];
        }

        else
        {
          v5 = 1;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end