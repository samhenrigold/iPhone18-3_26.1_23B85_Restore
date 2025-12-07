@interface _BlastDoorLPImageAttachmentSubstitute
- (_BlastDoorLPImageAttachmentSubstitute)initWithCoder:(id)coder;
- (_BlastDoorLPImageAttachmentSubstitute)initWithImage:(id)image;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPImageAttachmentSubstitute

- (_BlastDoorLPImageAttachmentSubstitute)initWithImage:(id)image
{
  v8 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = _BlastDoorLPImageAttachmentSubstitute;
  v3 = [(_BlastDoorLPImage *)&v7 _initWithImage:image];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (_BlastDoorLPImageAttachmentSubstitute)initWithCoder:(id)coder
{
  v9 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = _BlastDoorLPImageAttachmentSubstitute;
  v5 = [(_BlastDoorLPImage *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_index = [coderCopy decodeIntegerForKey:@"richLinkImageAttachmentSubstituteIndex"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6 = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = _BlastDoorLPImageAttachmentSubstitute;
  coderCopy = coder;
  [(_BlastDoorLPImage *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_index forKey:@"richLinkImageAttachmentSubstituteIndex"];
}

@end