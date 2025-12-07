@interface MessageContentRepresentationRequestDelegate
- (void)contentObjectID:(id)d generateHTMLSnippetsForRelatedContentItems:(id)items completionHandler:(id)handler;
- (void)contentObjectID:(id)d placeholderHTMLForEmptyContentWithCompletionHandler:(id)handler;
@end

@implementation MessageContentRepresentationRequestDelegate

- (void)contentObjectID:(id)d generateHTMLSnippetsForRelatedContentItems:(id)items completionHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  handlerCopy = handler;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = itemsCopy;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = [ContentItemMarkupGenerator markupStringForDisplayForContentItem:v13, v16];
        contentID = [v13 contentID];
        [dictionary setObject:v14 forKeyedSubscript:contentID];
      }

      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  handlerCopy[2](handlerCopy, dictionary, 0);
}

- (void)contentObjectID:(id)d placeholderHTMLForEmptyContentWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [mainBundle localizedStringForKey:@"NO_BODY" value:&stru_2826D1AD8 table:@"Main"];

  v6 = MEMORY[0x277CCACA8];
  mf_stringByEscapingHTMLCodes = [v5 mf_stringByEscapingHTMLCodes];
  v8 = [v6 localizedStringWithFormat:@"<html dir=auto><body><i><font color=#888>%@</font></i></body></html>", mf_stringByEscapingHTMLCodes];

  handlerCopy[2](handlerCopy, v8, 0);
}

@end