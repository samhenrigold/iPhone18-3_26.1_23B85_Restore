@interface CKSearchTokenQueryResult
- (CKSearchTokenFilter)associatedStagedFilter;
- (CKSearchTokenQueryResult)initWithContentType:(unint64_t)type filterOptions:(unint64_t)options conversation:(id)conversation itemIdentifier:(id)identifier tokenAddresses:(id)addresses;
- (UISearchToken)searchToken;
- (id)attributedSuggestionTextForSearchText:(id)text font:(id)font;
- (id)image;
- (id)tokenText;
- (void)addFilterOption:(unint64_t)option;
@end

@implementation CKSearchTokenQueryResult

- (CKSearchTokenQueryResult)initWithContentType:(unint64_t)type filterOptions:(unint64_t)options conversation:(id)conversation itemIdentifier:(id)identifier tokenAddresses:(id)addresses
{
  conversationCopy = conversation;
  identifierCopy = identifier;
  addressesCopy = addresses;
  v22.receiver = self;
  v22.super_class = CKSearchTokenQueryResult;
  v15 = [(CKSearchTokenQueryResult *)&v22 init];
  v16 = v15;
  if (v15)
  {
    [(CKSearchTokenQueryResult *)v15 setContentType:type];
    [(CKSearchTokenQueryResult *)v16 setItemIdentifier:identifierCopy];
    [(CKSearchTokenQueryResult *)v16 setTokenAddresses:addressesCopy];
    [(CKSearchTokenQueryResult *)v16 setFilterOptions:options];
    if (conversationCopy)
    {
      [(CKSpotlightQueryResult *)v16 setConversation:conversationCopy];
    }

    v17 = MEMORY[0x1E696AEC0];
    tokenText = [(CKSearchTokenQueryResult *)v16 tokenText];
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    v20 = [v17 stringWithFormat:@"%@-%@", tokenText, stringGUID];

    [(CKSpotlightQueryResult *)v16 setIdentifier:v20];
  }

  return v16;
}

- (UISearchToken)searchToken
{
  searchToken = self->_searchToken;
  if (!searchToken)
  {
    v4 = [[CKSearchTokenFilter alloc] initWithContentType:self->_contentType filterOptions:self->_filterOptions itemIdentifier:self->_itemIdentifier tokenAddresses:self->_tokenAddresses];
    conversation = [(CKSpotlightQueryResult *)self conversation];
    [(CKSearchTokenFilter *)v4 setConversation:conversation];

    v6 = MEMORY[0x1E69DCF30];
    image = [(CKSearchTokenQueryResult *)self image];
    tokenText = [(CKSearchTokenQueryResult *)self tokenText];
    v9 = [v6 tokenWithIcon:image text:tokenText];

    [(UISearchToken *)v9 setRepresentedObject:v4];
    v10 = self->_searchToken;
    self->_searchToken = v9;

    searchToken = self->_searchToken;
  }

  return searchToken;
}

- (id)image
{
  contentType = self->_contentType;
  if (contentType <= 3)
  {
    switch(contentType)
    {
      case 0:
        conversation = [(CKSpotlightQueryResult *)self conversation];
        if (conversation && (v6 = conversation, -[CKSpotlightQueryResult conversation](self, "conversation"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isGroupConversation], v7, v6, (v8 & 1) != 0))
        {
          v3 = @"person.2.circle";
        }

        else
        {
          v3 = @"person.crop.circle";
        }

        goto LABEL_20;
      case 2:
        v3 = @"link";
        goto LABEL_20;
      case 3:
        v3 = @"photo";
        goto LABEL_20;
    }

LABEL_15:
    v3 = @"message";
    goto LABEL_20;
  }

  if (contentType > 5)
  {
    if (contentType == 6)
    {
      v3 = @"doc";
      goto LABEL_20;
    }

    if (contentType == 8)
    {
      v3 = @"calendar";
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (contentType == 4)
  {
    v3 = @"mappin.and.ellipse";
  }

  else
  {
    v3 = @"wallet.pass";
  }

LABEL_20:
  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:v3];

  return v9;
}

- (id)tokenText
{
  conversation = [(CKSpotlightQueryResult *)self conversation];

  if (conversation)
  {
    conversation2 = [(CKSpotlightQueryResult *)self conversation];
    hasDisplayName = [conversation2 hasDisplayName];
    conversation3 = [(CKSpotlightQueryResult *)self conversation];
    v7 = conversation3;
    if (hasDisplayName)
    {
      [conversation3 displayName];
    }

    else
    {
      [conversation3 name];
    }
    itemIdentifier = ;
  }

  else
  {
    itemIdentifier = [(CKSearchTokenQueryResult *)self itemIdentifier];
  }

  v9 = [(CKSearchTokenQueryResult *)self hasFilterOption:2];
  if (v9)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v9);
    v12 = [v11 localizedStringForKey:@"FROM_%@" value:&stru_1F04268F8 table:@"ChatKit"];
    v13 = [v10 stringWithFormat:v12, itemIdentifier];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v16 = @"\u200F";
    }

    else
    {
      v16 = @"\u200E";
    }

    v17 = [(__CFString *)v16 stringByAppendingString:v13];

    itemIdentifier = v17;
  }

  return itemIdentifier;
}

- (id)attributedSuggestionTextForSearchText:(id)text font:(id)font
{
  v33[1] = *MEMORY[0x1E69E9840];
  textCopy = text;
  fontCopy = font;
  conversation = [(CKSpotlightQueryResult *)self conversation];

  if (conversation)
  {
    conversation2 = [(CKSpotlightQueryResult *)self conversation];
    hasDisplayName = [conversation2 hasDisplayName];
    conversation3 = [(CKSpotlightQueryResult *)self conversation];
    v12 = conversation3;
    if (hasDisplayName)
    {
      [conversation3 displayName];
    }

    else
    {
      [conversation3 searchDisplayName];
    }
    itemIdentifier = ;
  }

  else
  {
    itemIdentifier = [(CKSearchTokenQueryResult *)self itemIdentifier];
  }

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  if (fontCopy)
  {
    [CKSpotlightQueryUtilities annotatedResultStringWithSearchText:textCopy resultText:itemIdentifier primaryTextColor:secondaryLabelColor primaryFont:fontCopy annotatedTextColor:labelColor annotatedFont:fontCopy];
  }

  else
  {
    [CKSpotlightQueryUtilities annotatedResultStringWithSearchText:textCopy resultText:itemIdentifier primaryTextColor:secondaryLabelColor annotatedTextColor:labelColor];
  }
  v16 = ;

  if (!-[CKSearchTokenQueryResult contentType](self, "contentType") && (-[CKSpotlightQueryResult conversation](self, "conversation"), v19 = objc_claimAutoreleasedReturnValue(), v19, v19) && ((v20 = -[CKSearchTokenQueryResult hasFilterOption:](self, "hasFilterOption:", 2), !v20) ? ((-[CKSpotlightQueryResult conversation](self, "conversation"), v24 = objc_claimAutoreleasedReturnValue(), v25 = [v24 isGroupConversation], v24, CKFrameworkBundle(v26), v21 = objc_claimAutoreleasedReturnValue(), v22 = v21, !v25) ? (v23 = @"MESSAGES_WITH_%@") : (v23 = @"MESSAGES_IN_%@")) : (CKFrameworkBundle(v20), v21 = objc_claimAutoreleasedReturnValue(), v22 = v21, v23 = @"MESSAGES_FROM_%@"), objc_msgSend(v21, "localizedStringForKey:value:table:", v23, &stru_1F04268F8, @"ChatKit"), v27 = objc_claimAutoreleasedReturnValue(), v22, v27))
  {
    v28 = objc_alloc(MEMORY[0x1E696AAB0]);
    v32 = *MEMORY[0x1E69DB650];
    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v33[0] = secondaryLabelColor2;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v31 = [v28 initWithString:v27 attributes:v30];

    v17 = [MEMORY[0x1E696AAB0] localizedAttributedStringWithFormat:v31, v16];
  }

  else
  {
    v17 = v16;
  }

  return v17;
}

- (void)addFilterOption:(unint64_t)option
{
  v4 = [(CKSearchTokenQueryResult *)self filterOptions]| option;

  [(CKSearchTokenQueryResult *)self setFilterOptions:v4];
}

- (CKSearchTokenFilter)associatedStagedFilter
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedStagedFilter);

  return WeakRetained;
}

@end