@interface IMAutomaticTranslationIndicatorChatItem
- (id)_initWithTranslationLanguageCode:(id)code userLanguageCode:(id)languageCode incomingLanguageCode:(id)incomingLanguageCode senderHandle:(id)handle isShowingTranslationText:(BOOL)text;
@end

@implementation IMAutomaticTranslationIndicatorChatItem

- (id)_initWithTranslationLanguageCode:(id)code userLanguageCode:(id)languageCode incomingLanguageCode:(id)incomingLanguageCode senderHandle:(id)handle isShowingTranslationText:(BOOL)text
{
  codeCopy = code;
  languageCodeCopy = languageCode;
  incomingLanguageCodeCopy = incomingLanguageCode;
  handleCopy = handle;
  v24.receiver = self;
  v24.super_class = IMAutomaticTranslationIndicatorChatItem;
  v16 = [(IMChatItem *)&v24 _initWithItem:0];
  if (v16)
  {
    v17 = [codeCopy copy];
    v18 = *(v16 + 8);
    *(v16 + 8) = v17;

    v19 = [languageCodeCopy copy];
    v20 = *(v16 + 9);
    *(v16 + 9) = v19;

    v21 = [incomingLanguageCodeCopy copy];
    v22 = *(v16 + 10);
    *(v16 + 10) = v21;

    objc_storeStrong(v16 + 11, handle);
    *(v16 + 56) = text;
    [v16 _setGUID:@"at:"];
  }

  return v16;
}

@end