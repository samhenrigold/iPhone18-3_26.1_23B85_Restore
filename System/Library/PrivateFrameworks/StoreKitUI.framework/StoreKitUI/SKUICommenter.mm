@interface SKUICommenter
- (SKUICommenter)initWithAuthor:(id)author;
@end

@implementation SKUICommenter

- (SKUICommenter)initWithAuthor:(id)author
{
  authorCopy = author;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUICommenter *)v5 initWithAuthor:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v19.receiver = self;
  v19.super_class = SKUICommenter;
  v13 = [(SKUICommenter *)&v19 init];
  if (v13)
  {
    thumbnailImageURL = [authorCopy thumbnailImageURL];
    [(SKUIMediaSocialAuthor *)v13 setThumbnailImageURL:thumbnailImageURL];

    name = [authorCopy name];
    [(SKUIMediaSocialAuthor *)v13 setName:name];

    authorType = [authorCopy authorType];
    [(SKUIMediaSocialAuthor *)v13 setAuthorType:authorType];

    identifier = [authorCopy identifier];
    [(SKUIMediaSocialAuthor *)v13 setIdentifier:identifier];
  }

  return v13;
}

- (void)initWithAuthor:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUICommenter initWithAuthor:]";
}

@end