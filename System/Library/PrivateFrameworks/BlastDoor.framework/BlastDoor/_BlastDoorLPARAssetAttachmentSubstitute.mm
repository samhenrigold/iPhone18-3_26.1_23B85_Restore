@interface _BlastDoorLPARAssetAttachmentSubstitute
- (_BlastDoorLPARAssetAttachmentSubstitute)initWithARAsset:(id)asset;
- (_BlastDoorLPARAssetAttachmentSubstitute)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPARAssetAttachmentSubstitute

- (_BlastDoorLPARAssetAttachmentSubstitute)initWithARAsset:(id)asset
{
  v8 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = _BlastDoorLPARAssetAttachmentSubstitute;
  v3 = [(_BlastDoorLPARAsset *)&v7 _initWithARAsset:asset];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (_BlastDoorLPARAssetAttachmentSubstitute)initWithCoder:(id)coder
{
  v9 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = _BlastDoorLPARAssetAttachmentSubstitute;
  v5 = [(_BlastDoorLPARAsset *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_index = [coderCopy decodeIntegerForKey:@"richLinkARAssetAttachmentSubstituteIndex"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6 = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = _BlastDoorLPARAssetAttachmentSubstitute;
  coderCopy = coder;
  [(_BlastDoorLPARAsset *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_index forKey:@"richLinkARAssetAttachmentSubstituteIndex"];
}

@end