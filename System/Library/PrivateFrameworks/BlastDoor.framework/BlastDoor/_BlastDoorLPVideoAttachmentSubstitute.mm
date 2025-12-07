@interface _BlastDoorLPVideoAttachmentSubstitute
- (_BlastDoorLPVideoAttachmentSubstitute)initWithCoder:(id)coder;
- (_BlastDoorLPVideoAttachmentSubstitute)initWithVideo:(id)video;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPVideoAttachmentSubstitute

- (_BlastDoorLPVideoAttachmentSubstitute)initWithVideo:(id)video
{
  v8 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = _BlastDoorLPVideoAttachmentSubstitute;
  v3 = [(_BlastDoorLPVideo *)&v7 _initWithVideo:video];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (_BlastDoorLPVideoAttachmentSubstitute)initWithCoder:(id)coder
{
  v9 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = _BlastDoorLPVideoAttachmentSubstitute;
  v5 = [(_BlastDoorLPVideo *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_index = [coderCopy decodeIntegerForKey:@"richLinkVideoAttachmentSubstituteIndex"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6 = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = _BlastDoorLPVideoAttachmentSubstitute;
  coderCopy = coder;
  [(_BlastDoorLPVideo *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_index forKey:@"richLinkVideoAttachmentSubstituteIndex"];
}

@end