@interface _BlastDoorLPSharedObjectMetadata
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPSharedObjectMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPSharedObjectMetadata

- (_BlastDoorLPSharedObjectMetadata)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = _BlastDoorLPSharedObjectMetadata;
  v5 = [(_BlastDoorLPSharedObjectMetadata *)&v21 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"title");
    v7 = *&v5->_isCollaboration;
    *&v5->_isCollaboration = v6;

    v8 = decodeStringForKey(coderCopy, @"subtitle");
    title = v5->_title;
    v5->_title = v8;

    v10 = decodeStringForKey(coderCopy, @"information");
    subtitle = v5->_subtitle;
    v5->_subtitle = v10;

    v12 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"icon"];
    information = v5->_information;
    v5->_information = v12;

    *(&v5->super.__dummyPropertyForObservation + 1) = [coderCopy decodeBoolForKey:@"isCollaboration"];
    if ([coderCopy containsValueForKey:@"specialization"])
    {
      v14 = allKnownSpecializationClasses();
      v20 = 0;
      v15 = [coderCopy _bd_lp_strictlyDecodeTopLevelObjectOfClasses:v14 forKey:@"specialization" error:&v20];
      v16 = v20;
      icon = v5->_icon;
      v5->_icon = v15;
    }

    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *&self->_isCollaboration;
  coderCopy = coder;
  [coderCopy _bd_lp_encodeObjectIfNotNil:v4 forKey:@"title"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_title forKey:@"subtitle"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_subtitle forKey:@"information"];
  [coderCopy encodeBool:*(&self->super.__dummyPropertyForObservation + 1) forKey:@"isCollaboration"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_information forKey:@"icon"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_icon forKey:@"specialization"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPSharedObjectMetadata allocWithZone:zone];
  if (v4)
  {
    title = [(_BlastDoorLPSharedObjectMetadata *)self title];
    [(_BlastDoorLPSharedObjectMetadata *)v4 setTitle:title];

    subtitle = [(_BlastDoorLPSharedObjectMetadata *)self subtitle];
    [(_BlastDoorLPSharedObjectMetadata *)v4 setSubtitle:subtitle];

    information = [(_BlastDoorLPSharedObjectMetadata *)self information];
    [(_BlastDoorLPSharedObjectMetadata *)v4 setInformation:information];

    [(_BlastDoorLPSharedObjectMetadata *)v4 setIsCollaboration:[(_BlastDoorLPSharedObjectMetadata *)self isCollaboration]];
    icon = [(_BlastDoorLPSharedObjectMetadata *)self icon];
    [(_BlastDoorLPSharedObjectMetadata *)v4 setIcon:icon];

    specialization = [(_BlastDoorLPSharedObjectMetadata *)self specialization];
    [(_BlastDoorLPSharedObjectMetadata *)v4 setSpecialization:specialization];

    v10 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v27 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v26.receiver = self;
  v26.super_class = _BlastDoorLPSharedObjectMetadata;
  if ([(_BlastDoorLPSharedObjectMetadata *)&v26 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v7 = *&self->_isCollaboration;
      title = [v6 title];
      if ((!(v7 | title) || (v9 = title, v10 = [v7 isEqual:title], v9, v10)) && ((title = self->_title, objc_msgSend(v6, "subtitle"), v12 = objc_claimAutoreleasedReturnValue(), !(title | v12)) || (v13 = v12, v14 = -[NSString isEqual:](title, "isEqual:", v12), v13, v14)) && ((subtitle = self->_subtitle, objc_msgSend(v6, "information"), v16 = objc_claimAutoreleasedReturnValue(), !(subtitle | v16)) || (v17 = v16, v18 = -[NSString isEqual:](subtitle, "isEqual:", v16), v17, v18)) && v6[9] == *(&self->super.__dummyPropertyForObservation + 1) && ((information = self->_information, objc_msgSend(v6, "icon"), v20 = objc_claimAutoreleasedReturnValue(), !(information | v20)) || (v21 = v20, v22 = -[NSString isEqual:](information, "isEqual:", v20), v21, v22)))
      {
        icon = self->_icon;
        specialization = [v6 specialization];
        if (icon | specialization)
        {
          v5 = [(_BlastDoorLPImage *)icon isEqual:specialization];
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