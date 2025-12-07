@interface _BlastDoorLPSharingMetadataWrapper
- (_BlastDoorLPSharingMetadataWrapper)initWithCoder:(id)coder;
- (id)dataRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setMetadata:(id)metadata;
@end

@implementation _BlastDoorLPSharingMetadataWrapper

- (id)dataRepresentation
{
  v3 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [v3 encodeObject:self forKey:*MEMORY[0x277CCA308]];
  encodedData = [v3 encodedData];

  return encodedData;
}

- (_BlastDoorLPSharingMetadataWrapper)initWithCoder:(id)coder
{
  v11 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = _BlastDoorLPSharingMetadataWrapper;
  v5 = [(_BlastDoorLPSharingMetadataWrapper *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v6;

    v5->_hasFetchedSubresources = [coderCopy decodeBoolForKey:@"hasFetchedSubresources"];
    v5->_hasCompletedFetch = [coderCopy decodeBoolForKey:@"hasCompletedFetch"];
    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  metadata = self->_metadata;
  coderCopy = coder;
  [coderCopy encodeObject:metadata forKey:@"metadata"];
  [coderCopy encodeBool:self->_hasFetchedSubresources forKey:@"hasFetchedSubresources"];
  [coderCopy encodeBool:self->_hasCompletedFetch forKey:@"hasCompletedFetch"];
}

- (void)setMetadata:(id)metadata
{
  objc_storeStrong(&self->_metadata, metadata);
  metadataCopy = metadata;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  self->_hasCompletedFetch = (isKindOfClass & 1) == 0;
}

@end