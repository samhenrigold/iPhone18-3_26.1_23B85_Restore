@interface _BlastDoorLPArtworkMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPArtworkMetadata)init;
- (_BlastDoorLPArtworkMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPArtworkMetadata

- (_BlastDoorLPArtworkMetadata)init
{
  v7 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = _BlastDoorLPArtworkMetadata;
  v2 = [(_BlastDoorLPArtworkMetadata *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_version = 1;
    v4 = v2;
  }

  return v3;
}

- (_BlastDoorLPArtworkMetadata)initWithCoder:(id)coder
{
  v14 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _BlastDoorLPArtworkMetadata;
  v5 = [(_BlastDoorLPArtworkMetadata *)&v13 init];
  if (v5)
  {
    v5->_version = [coderCopy decodeInt32ForKey:@"version"];
    v6 = decodeURLForKey(coderCopy, @"URL");
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = objc_opt_class();
    v9 = [coderCopy _bd_lp_strictlyDecodeDictionaryOfObjectsWithKeysOfClass:v8 andObjectsOfClass:objc_opt_class() forKey:@"colors"];
    colors = v5->_colors;
    v5->_colors = v9;

    v11 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  version = self->_version;
  coderCopy = coder;
  [coderCopy encodeInt32:version forKey:@"version"];
  [coderCopy _bd_lp_encodeURLIfNotNilOrLocalFile:self->_URL forKey:@"URL"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_colors forKey:@"colors"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPArtworkMetadata allocWithZone:zone];
  if (v4)
  {
    v4->_version = [(_BlastDoorLPArtworkMetadata *)self version];
    v5 = [(_BlastDoorLPArtworkMetadata *)self URL];
    [(_BlastDoorLPArtworkMetadata *)v4 setURL:v5];

    colors = [(_BlastDoorLPArtworkMetadata *)self colors];
    [(_BlastDoorLPArtworkMetadata *)v4 setColors:colors];

    v7 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v12 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = _BlastDoorLPArtworkMetadata;
  if ([(_BlastDoorLPArtworkMetadata *)&v11 isEqual:equalCopy])
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
      if (*(v6 + 2) == self->_version && ((v8 = v6[2], !(v8 | self->_URL)) || [v8 isEqual:?]))
      {
        v9 = v7[3];
        if (v9 | self->_colors)
        {
          v5 = [v9 isEqual:?];
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