@interface _BlastDoorLPARAsset
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPARAsset)init;
- (_BlastDoorLPARAsset)initWithCoder:(id)coder;
- (_BlastDoorLPARAssetProperties)properties;
- (id)_initWithARAsset:(id)asset;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPARAsset

- (_BlastDoorLPARAsset)init
{
  v4 = *MEMORY[0x277D85DE8];
  v3.receiver = self;
  v3.super_class = _BlastDoorLPARAsset;
  return [(_BlastDoorLPARAsset *)&v3 init];
}

- (id)_initWithARAsset:(id)asset
{
  v10 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v9.receiver = self;
  v9.super_class = _BlastDoorLPARAsset;
  v5 = [(_BlastDoorLPARAsset *)&v9 init];
  p_isa = &v5->super.isa;
  if (v5)
  {
    objc_storeStrong(&v5->_data, assetCopy[1]);
    objc_storeStrong(p_isa + 2, assetCopy[2]);
    objc_storeStrong(p_isa + 5, assetCopy[5]);
    objc_storeStrong(p_isa + 4, assetCopy[4]);
    v7 = p_isa;
  }

  return p_isa;
}

- (_BlastDoorLPARAssetProperties)properties
{
  v2 = [(_BlastDoorLPARAssetProperties *)self->_properties copy];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([(_BlastDoorLPARAsset *)self _shouldEncodeData])
  {
    data = [(_BlastDoorLPARAsset *)self data];
    [coderCopy _bd_lp_encodeObjectIfNotNil:data forKey:@"data"];
  }

  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_MIMEType forKey:@"MIMEType"];
  accessibilityText = [(_BlastDoorLPARAssetProperties *)self->_properties accessibilityText];
  [coderCopy _bd_lp_encodeObjectIfNotNil:accessibilityText forKey:@"accessibilityText"];
}

- (_BlastDoorLPARAsset)initWithCoder:(id)coder
{
  v16 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = _BlastDoorLPARAsset;
  v5 = [(_BlastDoorLPARAsset *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy _bd_lp_strictlyDecodeNSDataForKey:@"data"];
    data = v5->_data;
    v5->_data = v6;

    v8 = [coderCopy _bd_lp_strictlyDecodeNSStringForKey:@"MIMEType"];
    MIMEType = v5->_MIMEType;
    v5->_MIMEType = v8;

    v10 = objc_alloc_init(_BlastDoorLPARAssetProperties);
    properties = v5->_properties;
    v5->_properties = v10;

    v12 = [coderCopy _bd_lp_strictlyDecodeNSStringForKey:@"accessibilityText"];
    [(_BlastDoorLPARAssetProperties *)v5->_properties setAccessibilityText:v12];

    v13 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v13 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = _BlastDoorLPARAsset;
  if ([(_BlastDoorLPARAsset *)&v12 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v7 = v6[1];
      if (v7 | self->_data && ![v7 isEqual:?] || (v8 = v6[2], v8 | self->_MIMEType) && !objc_msgSend(v8, "isEqual:") || (v9 = v6[5], v9 | self->_fileURL) && !objc_msgSend(v9, "isEqual:"))
      {
        v5 = 0;
      }

      else
      {
        v10 = v6[4];
        if (v10 | self->_properties)
        {
          v5 = [v10 isEqual:?];
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