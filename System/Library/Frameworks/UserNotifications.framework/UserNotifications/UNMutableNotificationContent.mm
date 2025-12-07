@interface UNMutableNotificationContent
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAttachments:(NSArray *)attachments;
- (void)setAttributedBody:(id)body;
- (void)setBadge:(NSNumber *)badge;
- (void)setBody:(NSString *)body;
- (void)setCategoryIdentifier:(NSString *)categoryIdentifier;
- (void)setCommunicationContext:(id)context;
- (void)setContentType:(id)type;
- (void)setDefaultActionBundleIdentifier:(id)identifier;
- (void)setDefaultActionTitle:(id)title;
- (void)setDefaultActionURL:(id)l;
- (void)setExpirationDate:(id)date;
- (void)setFilterCriteria:(NSString *)filterCriteria;
- (void)setFooter:(id)footer;
- (void)setHeader:(id)header;
- (void)setLaunchImageName:(NSString *)launchImageName;
- (void)setPeopleIdentifiers:(id)identifiers;
- (void)setRelevanceScore:(double)relevanceScore;
- (void)setSound:(UNNotificationSound *)sound;
- (void)setSpeechLanguage:(id)language;
- (void)setSummaryArgument:(NSString *)summaryArgument;
- (void)setTargetContentIdentifier:(NSString *)targetContentIdentifier;
- (void)setThreadIdentifier:(NSString *)threadIdentifier;
- (void)setTitle:(NSString *)title;
- (void)setTopicIdentifiers:(id)identifiers;
- (void)setUserInfo:(NSDictionary *)userInfo;
@end

@implementation UNMutableNotificationContent

- (void)setContentType:(id)type
{
  self->super._contentType = [type copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setCommunicationContext:(id)context
{
  self->super._communicationContext = [context copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setAttachments:(NSArray *)attachments
{
  if (attachments)
  {
    v4 = [(NSArray *)attachments copy];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  self->super._attachments = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setBadge:(NSNumber *)badge
{
  self->super._badge = [(NSNumber *)badge copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setBody:(NSString *)body
{
  self->super._body = [(NSString *)body copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setAttributedBody:(id)body
{
  self->super._attributedBody = [body copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setCategoryIdentifier:(NSString *)categoryIdentifier
{
  if (categoryIdentifier)
  {
    v4 = [(NSString *)categoryIdentifier copy];
  }

  else
  {
    v4 = &stru_1F308F460;
  }

  self->super._categoryIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setDefaultActionTitle:(id)title
{
  self->super._defaultActionTitle = [title copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setDefaultActionURL:(id)l
{
  self->super._defaultActionURL = [l copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setDefaultActionBundleIdentifier:(id)identifier
{
  self->super._defaultActionBundleIdentifier = [identifier copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setExpirationDate:(id)date
{
  self->super._expirationDate = [date copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setHeader:(id)header
{
  self->super._header = [header copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setFooter:(id)footer
{
  self->super._footer = [footer copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setLaunchImageName:(NSString *)launchImageName
{
  if (launchImageName)
  {
    v3 = launchImageName;
  }

  else
  {
    v3 = &stru_1F308F460;
  }

  objc_storeStrong(&self->super._launchImageName, v3);
}

- (void)setPeopleIdentifiers:(id)identifiers
{
  if (identifiers)
  {
    v4 = [identifiers copy];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  self->super._peopleIdentifiers = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setSound:(UNNotificationSound *)sound
{
  self->super._sound = [(UNNotificationSound *)sound copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setThreadIdentifier:(NSString *)threadIdentifier
{
  if (threadIdentifier)
  {
    v4 = [(NSString *)threadIdentifier copy];
  }

  else
  {
    v4 = &stru_1F308F460;
  }

  self->super._threadIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTitle:(NSString *)title
{
  self->super._title = [(NSString *)title copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setTopicIdentifiers:(id)identifiers
{
  self->super._topicIdentifiers = [identifiers copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setSummaryArgument:(NSString *)summaryArgument
{
  self->super._summaryArgument = [(NSString *)summaryArgument copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setTargetContentIdentifier:(NSString *)targetContentIdentifier
{
  self->super._targetContentIdentifier = [(NSString *)targetContentIdentifier copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setRelevanceScore:(double)relevanceScore
{
  if (relevanceScore >= 0.0)
  {
    if (relevanceScore <= 1.0)
    {
      self->super._relevanceScore = relevanceScore;
    }

    else
    {
      self->super._relevanceScore = 1.0;
    }
  }

  else
  {
    self->super._relevanceScore = 0.0;
  }
}

- (void)setFilterCriteria:(NSString *)filterCriteria
{
  self->super._filterCriteria = [(NSString *)filterCriteria copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setSpeechLanguage:(id)language
{
  self->super._speechLanguage = [language copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setUserInfo:(NSDictionary *)userInfo
{
  self->super._userInfo = [(NSDictionary *)userInfo copy];

  MEMORY[0x1EEE66BB8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  speechLanguage = [(UNNotificationContent *)self speechLanguage];
  v42 = [UNNotificationContent allocWithZone:zone];
  contentType = [(UNNotificationContent *)self contentType];
  communicationContext = [(UNNotificationContent *)self communicationContext];
  accessoryImageName = [(UNNotificationContent *)self accessoryImageName];
  attachments = [(UNNotificationContent *)self attachments];
  badge = [(UNNotificationContent *)self badge];
  body = [(UNNotificationContent *)self body];
  attributedBody = [(UNNotificationContent *)self attributedBody];
  categoryIdentifier = [(UNNotificationContent *)self categoryIdentifier];
  date = [(UNNotificationContent *)self date];
  icon = [(UNNotificationContent *)self icon];
  defaultActionTitle = [(UNNotificationContent *)self defaultActionTitle];
  defaultActionURL = [(UNNotificationContent *)self defaultActionURL];
  defaultActionBundleIdentifier = [(UNNotificationContent *)self defaultActionBundleIdentifier];
  expirationDate = [(UNNotificationContent *)self expirationDate];
  header = [(UNNotificationContent *)self header];
  footer = [(UNNotificationContent *)self footer];
  launchImageName = [(UNNotificationContent *)self launchImageName];
  peopleIdentifiers = [(UNNotificationContent *)self peopleIdentifiers];
  shouldHideDate = [(UNNotificationContent *)self shouldHideDate];
  shouldHideTime = [(UNNotificationContent *)self shouldHideTime];
  shouldIgnoreDoNotDisturb = [(UNNotificationContent *)self shouldIgnoreDoNotDisturb];
  shouldIgnoreDowntime = [(UNNotificationContent *)self shouldIgnoreDowntime];
  shouldSuppressScreenLightUp = [(UNNotificationContent *)self shouldSuppressScreenLightUp];
  shouldAuthenticateDefaultAction = [(UNNotificationContent *)self shouldAuthenticateDefaultAction];
  shouldBackgroundDefaultAction = [(UNNotificationContent *)self shouldBackgroundDefaultAction];
  shouldPreventNotificationDismissalAfterDefaultAction = [(UNNotificationContent *)self shouldPreventNotificationDismissalAfterDefaultAction];
  shouldShowSubordinateIcon = [(UNNotificationContent *)self shouldShowSubordinateIcon];
  shouldSuppressDefaultAction = [(UNNotificationContent *)self shouldSuppressDefaultAction];
  shouldSuppressSyncDismissalWhenRemoved = [(UNNotificationContent *)self shouldSuppressSyncDismissalWhenRemoved];
  shouldUseRequestIdentifierForDismissalSync = [(UNNotificationContent *)self shouldUseRequestIdentifierForDismissalSync];
  shouldPreemptPresentedNotification = [(UNNotificationContent *)self shouldPreemptPresentedNotification];
  shouldDisplayActionsInline = [(UNNotificationContent *)self shouldDisplayActionsInline];
  sound = [(UNNotificationContent *)self sound];
  subtitle = [(UNNotificationContent *)self subtitle];
  threadIdentifier = [(UNNotificationContent *)self threadIdentifier];
  title = [(UNNotificationContent *)self title];
  topicIdentifiers = [(UNNotificationContent *)self topicIdentifiers];
  realertCount = [(UNNotificationContent *)self realertCount];
  summaryArgument = [(UNNotificationContent *)self summaryArgument];
  summaryArgumentCount = [(UNNotificationContent *)self summaryArgumentCount];
  targetContentIdentifier = [(UNNotificationContent *)self targetContentIdentifier];
  interruptionLevel = [(UNNotificationContent *)self interruptionLevel];
  [(UNNotificationContent *)self relevanceScore];
  v10 = v9;
  filterCriteria = [(UNNotificationContent *)self filterCriteria];
  screenCaptureProhibited = [(UNNotificationContent *)self screenCaptureProhibited];
  userInfo = [(UNNotificationContent *)self userInfo];
  LOBYTE(v17) = screenCaptureProhibited;
  BYTE5(v16) = shouldDisplayActionsInline;
  BYTE4(v16) = shouldPreemptPresentedNotification;
  BYTE3(v16) = shouldUseRequestIdentifierForDismissalSync;
  BYTE2(v16) = shouldSuppressSyncDismissalWhenRemoved;
  BYTE1(v16) = shouldSuppressDefaultAction;
  LOBYTE(v16) = shouldShowSubordinateIcon;
  HIBYTE(v15) = shouldPreventNotificationDismissalAfterDefaultAction;
  BYTE6(v15) = shouldBackgroundDefaultAction;
  BYTE5(v15) = shouldAuthenticateDefaultAction;
  BYTE4(v15) = shouldSuppressScreenLightUp;
  BYTE3(v15) = shouldIgnoreDowntime;
  BYTE2(v15) = shouldIgnoreDoNotDisturb;
  BYTE1(v15) = shouldHideTime;
  LOBYTE(v15) = shouldHideDate;
  v43 = [UNNotificationContent _initWithContentType:v42 communicationContext:"_initWithContentType:communicationContext:accessoryImageName:attachments:badge:body:attributedBody:categoryIdentifier:date:icon:defaultActionTitle:defaultActionURL:defaultActionBundleIdentifier:expirationDate:header:footer:launchImageName:peopleIdentifiers:shouldHideDate:shouldHideTime:shouldIgnoreDoNotDisturb:shouldIgnoreDowntime:shouldSuppressScreenLightUp:shouldAuthenticateDefaultAction:shouldBackgroundDefaultAction:shouldPreventNotificationDismissalAfterDefaultAction:shouldShowSubordinateIcon:shouldSuppressDefaultAction:shouldSuppressSyncDismissalWhenRemoved:shouldUseRequestIdentifierForDismissalSync:shouldPreemptPresentedNotification:shouldDisplayActionsInline:sound:subtitle:threadIdentifier:title:topicIdentifiers:realertCount:summaryArgument:summaryArgumentCount:targetContentIdentifier:interruptionLevel:relevanceScore:filterCriteria:screenCaptureProhibited:speechLanguage:userInfo:" accessoryImageName:contentType attachments:communicationContext badge:accessoryImageName body:attachments attributedBody:badge categoryIdentifier:body date:v10 icon:attributedBody defaultActionTitle:categoryIdentifier defaultActionURL:date defaultActionBundleIdentifier:icon expirationDate:defaultActionTitle header:defaultActionURL footer:defaultActionBundleIdentifier launchImageName:expirationDate peopleIdentifiers:header shouldHideDate:footer shouldHideTime:launchImageName shouldIgnoreDoNotDisturb:peopleIdentifiers shouldIgnoreDowntime:v15 shouldSuppressScreenLightUp:v16 shouldAuthenticateDefaultAction:sound shouldBackgroundDefaultAction:subtitle shouldPreventNotificationDismissalAfterDefaultAction:threadIdentifier shouldShowSubordinateIcon:title shouldSuppressDefaultAction:topicIdentifiers shouldSuppressSyncDismissalWhenRemoved:realertCount shouldUseRequestIdentifierForDismissalSync:summaryArgument shouldPreemptPresentedNotification:summaryArgumentCount shouldDisplayActionsInline:targetContentIdentifier sound:interruptionLevel subtitle:filterCriteria threadIdentifier:v17 title:speechLanguage topicIdentifiers:userInfo realertCount:? summaryArgument:? summaryArgumentCount:? targetContentIdentifier:? interruptionLevel:? relevanceScore:? filterCriteria:? screenCaptureProhibited:? speechLanguage:? userInfo:?];

  return v43;
}

@end