@interface _BlastDoorLPAppleNewsMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPAppleNewsMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPAppleNewsMetadata

- (_BlastDoorLPAppleNewsMetadata)initWithCoder:(id)coder
{
  v13 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = _BlastDoorLPAppleNewsMetadata;
  v5 = [(_BlastDoorLPAppleNewsMetadata *)&v12 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"source");
    source = v5->_source;
    v5->_source = v6;

    v8 = decodeStringForKey(coderCopy, @"title");
    title = v5->_title;
    v5->_title = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6 = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = _BlastDoorLPAppleNewsMetadata;
  coderCopy = coder;
  [(_BlastDoorLPSpecializationMetadata *)&v5 encodeWithCoder:coderCopy];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_source forKey:@"source"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_title forKey:@"title"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPAppleNewsMetadata allocWithZone:zone];
  if (v4)
  {
    source = [(_BlastDoorLPAppleNewsMetadata *)self source];
    [(_BlastDoorLPAppleNewsMetadata *)v4 setSource:source];

    title = [(_BlastDoorLPAppleNewsMetadata *)self title];
    [(_BlastDoorLPAppleNewsMetadata *)v4 setTitle:title];

    v7 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v11 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = _BlastDoorLPAppleNewsMetadata;
  if ([(_BlastDoorLPAppleNewsMetadata *)&v10 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v7 = v6[2];
      if (v7 | self->_source && ![v7 isEqual:?])
      {
        v5 = 0;
      }

      else
      {
        v8 = v6[3];
        if (v8 | self->_title)
        {
          v5 = [v8 isEqual:?];
        }

        else
        {
          v5 = 1;
        }
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