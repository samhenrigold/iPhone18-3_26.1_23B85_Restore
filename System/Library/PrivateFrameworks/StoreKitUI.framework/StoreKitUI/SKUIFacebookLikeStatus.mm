@interface SKUIFacebookLikeStatus
- (SKUIFacebookLikeStatus)initWithURL:(id)l likeStatusDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SKUIFacebookLikeStatus

- (SKUIFacebookLikeStatus)initWithURL:(id)l likeStatusDictionary:(id)dictionary
{
  v36 = *MEMORY[0x277D85DE8];
  lCopy = l;
  dictionaryCopy = dictionary;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIFacebookLikeStatus initWithURL:likeStatusDictionary:];
  }

  v34.receiver = self;
  v34.super_class = SKUIFacebookLikeStatus;
  v8 = [(SKUIFacebookLikeStatus *)&v34 init];
  v10 = v8;
  if (v8)
  {
    v11 = SKUISocialFramework(v8, v9);
    v12 = [dictionaryCopy objectForKey:{*SKUIWeakLinkedSymbolForString("SLFacebookLikeInfoMeKey", v11)}];
    bOOLValue = objc_opt_respondsToSelector();
    if (bOOLValue)
    {
      bOOLValue = [v12 BOOLValue];
      v10->_userLiked = bOOLValue;
    }

    v15 = SKUISocialFramework(bOOLValue, v14);
    v16 = [dictionaryCopy objectForKey:{*SKUIWeakLinkedSymbolForString("SLFacebookLikeInfoFriendsKey", v15)}];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = lCopy;
      v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v18 = v16;
      v19 = [v18 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v31;
        do
        {
          v22 = 0;
          do
          {
            if (*v31 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v30 + 1) + 8 * v22);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v17 addObject:v23];
            }

            ++v22;
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v20);
      }

      v24 = [v17 copy];
      friends = v10->_friends;
      v10->_friends = v24;

      lCopy = v29;
    }

    v26 = [lCopy copy];
    url = v10->_url;
    v10->_url = v26;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSArray *)self->_friends copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSURL *)self->_url copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  *(v5 + 24) = self->_userLiked;
  return v5;
}

- (void)initWithURL:likeStatusDictionary:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIFacebookLikeStatus initWithURL:likeStatusDictionary:]";
}

@end