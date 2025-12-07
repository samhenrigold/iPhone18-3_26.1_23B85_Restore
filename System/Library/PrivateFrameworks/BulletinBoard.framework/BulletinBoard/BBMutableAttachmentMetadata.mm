@interface BBMutableAttachmentMetadata
- (id)copyWithZone:(_NSZone *)zone;
- (void)setIdentifier:(id)identifier;
- (void)setThumbnailGeneratorUserInfo:(id)info;
- (void)setURL:(id)l;
- (void)setUniformType:(id)type;
@end

@implementation BBMutableAttachmentMetadata

- (void)setURL:(id)l
{
  self->super._URL = [l copy];

  MEMORY[0x2821F96F8]();
}

- (void)setIdentifier:(id)identifier
{
  self->super._identifier = [identifier copy];

  MEMORY[0x2821F96F8]();
}

- (void)setUniformType:(id)type
{
  self->super._uniformType = [type copy];

  MEMORY[0x2821F96F8]();
}

- (void)setThumbnailGeneratorUserInfo:(id)info
{
  self->super._thumbnailGeneratorUserInfo = [info copy];

  MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BBAttachmentMetadata allocWithZone:zone];
  type = [(BBAttachmentMetadata *)self type];
  v6 = [(BBAttachmentMetadata *)self URL];
  identifier = [(BBAttachmentMetadata *)self identifier];
  uniformType = [(BBAttachmentMetadata *)self uniformType];
  thumbnailGeneratorUserInfo = [(BBAttachmentMetadata *)self thumbnailGeneratorUserInfo];
  thumbnailHidden = [(BBAttachmentMetadata *)self thumbnailHidden];
  LOBYTE(v13) = [(BBAttachmentMetadata *)self hiddenFromDefaultExpandedView];
  v11 = [(BBAttachmentMetadata *)v4 _initWithType:type URL:v6 identifier:identifier uniformType:uniformType thumbnailGeneratorUserInfo:thumbnailGeneratorUserInfo thumbnailHidden:thumbnailHidden hiddenFromDefaultExpandedView:v13];

  return v11;
}

@end