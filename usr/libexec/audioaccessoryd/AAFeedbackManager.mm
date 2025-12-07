@interface AAFeedbackManager
- (id)_feedbackCampainIdentifierForCampain:(int)campain;
- (id)_feedbackCampainLocalizedTitleForCampain:(int)campain;
- (void)displayFeedbackCampaign:(int)campaign promptStyle:(int64_t)style localizedPrompt:(id)prompt completion:(id)completion;
@end

@implementation AAFeedbackManager

- (void)displayFeedbackCampaign:(int)campaign promptStyle:(int64_t)style localizedPrompt:(id)prompt completion:(id)completion
{
  v8 = *&campaign;
  promptCopy = prompt;
  completionCopy = completion;
  [(AAFeedbackManager *)self _feedbackCampainIdentifierForCampain:v8];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002096C;
  v16 = v15[3] = &unk_1002B7348;
  v17 = promptCopy;
  selfCopy = self;
  v19 = completionCopy;
  v21 = v8;
  styleCopy = style;
  v12 = promptCopy;
  v13 = v16;
  v14 = completionCopy;
  [FBKSFeedbackCount fetchCountsForFormWithIdentifier:v13 completion:v15];
}

- (id)_feedbackCampainIdentifierForCampain:(int)campain
{
  if (campain == 1)
  {
    return @":framework-conversation-awareness";
  }

  else
  {
    return 0;
  }
}

- (id)_feedbackCampainLocalizedTitleForCampain:(int)campain
{
  if (campain == 1)
  {
    v3 = [NSBundle bundleWithPath:@"/System/Library/CoreServices/BluetoothUIService.app/"];
    v4 = [v3 localizedStringForKey:@"FEED_BACK_NOTIFICATION_TITLE_STRING" value:&stru_1002C1358 table:@"Localizable"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end