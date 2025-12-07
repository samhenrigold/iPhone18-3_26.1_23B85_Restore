@interface CALNMutableNotificationContent
- (CALNMutableNotificationContent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setBody:(id)body;
- (void)setCategoryIdentifier:(id)identifier;
- (void)setDate:(id)date;
- (void)setDefaultActionURL:(id)l;
- (void)setExpirationDate:(id)date;
- (void)setFilterCriteria:(id)criteria;
- (void)setIconIdentifier:(id)identifier;
- (void)setPeopleIdentifiers:(id)identifiers;
- (void)setSectionIdentifier:(id)identifier;
- (void)setSound:(id)sound;
- (void)setSubtitle:(id)subtitle;
- (void)setThreadIdentifier:(id)identifier;
- (void)setTitle:(id)title;
- (void)setUserInfo:(id)info;
- (void)setUserInfoValue:(id)value forKey:(id)key;
@end

@implementation CALNMutableNotificationContent

- (CALNMutableNotificationContent)init
{
  v3.receiver = self;
  v3.super_class = CALNMutableNotificationContent;
  result = [(CALNMutableNotificationContent *)&v3 init];
  if (result)
  {
    result->super._interruptionLevel = 1;
  }

  return result;
}

- (void)setTitle:(id)title
{
  self->super._title = [title copy];

  MEMORY[0x2821F96F8]();
}

- (void)setSubtitle:(id)subtitle
{
  self->super._subtitle = [subtitle copy];

  MEMORY[0x2821F96F8]();
}

- (void)setBody:(id)body
{
  self->super._body = [body copy];

  MEMORY[0x2821F96F8]();
}

- (void)setCategoryIdentifier:(id)identifier
{
  self->super._categoryIdentifier = [identifier copy];

  MEMORY[0x2821F96F8]();
}

- (void)setSectionIdentifier:(id)identifier
{
  self->super._sectionIdentifier = [identifier copy];

  MEMORY[0x2821F96F8]();
}

- (void)setDate:(id)date
{
  self->super._date = [date copy];

  MEMORY[0x2821F96F8]();
}

- (void)setExpirationDate:(id)date
{
  self->super._expirationDate = [date copy];

  MEMORY[0x2821F96F8]();
}

- (void)setDefaultActionURL:(id)l
{
  self->super._defaultActionURL = [l copy];

  MEMORY[0x2821F96F8]();
}

- (void)setIconIdentifier:(id)identifier
{
  self->super._iconIdentifier = [identifier copy];

  MEMORY[0x2821F96F8]();
}

- (void)setPeopleIdentifiers:(id)identifiers
{
  self->super._peopleIdentifiers = [identifiers copy];

  MEMORY[0x2821F96F8]();
}

- (void)setSound:(id)sound
{
  self->super._sound = [sound copy];

  MEMORY[0x2821F96F8]();
}

- (void)setUserInfo:(id)info
{
  self->super._userInfo = [info copy];

  MEMORY[0x2821F96F8]();
}

- (void)setThreadIdentifier:(id)identifier
{
  self->super._threadIdentifier = [identifier copy];

  MEMORY[0x2821F96F8]();
}

- (void)setFilterCriteria:(id)criteria
{
  self->super._filterCriteria = [criteria copy];

  MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = [CALNNotificationContent allocWithZone:zone];
  title = [(CALNNotificationContent *)self title];
  subtitle = [(CALNNotificationContent *)self subtitle];
  body = [(CALNNotificationContent *)self body];
  categoryIdentifier = [(CALNNotificationContent *)self categoryIdentifier];
  sectionIdentifier = [(CALNNotificationContent *)self sectionIdentifier];
  date = [(CALNNotificationContent *)self date];
  expirationDate = [(CALNNotificationContent *)self expirationDate];
  defaultActionURL = [(CALNNotificationContent *)self defaultActionURL];
  iconIdentifier = [(CALNNotificationContent *)self iconIdentifier];
  shouldHideTime = [(CALNNotificationContent *)self shouldHideTime];
  shouldSuppressSyncDismissalWhenRemoved = [(CALNNotificationContent *)self shouldSuppressSyncDismissalWhenRemoved];
  peopleIdentifiers = [(CALNNotificationContent *)self peopleIdentifiers];
  sound = [(CALNNotificationContent *)self sound];
  userInfo = [(CALNNotificationContent *)self userInfo];
  threadIdentifier = [(CALNNotificationContent *)self threadIdentifier];
  interruptionLevel = [(CALNNotificationContent *)self interruptionLevel];
  filterCriteria = [(CALNNotificationContent *)self filterCriteria];
  BYTE1(v11) = shouldSuppressSyncDismissalWhenRemoved;
  LOBYTE(v11) = shouldHideTime;
  v21 = [(CALNNotificationContent *)v20 _initWithTitle:title subtitle:subtitle body:body categoryIdentifier:categoryIdentifier sectionIdentifier:sectionIdentifier date:date expirationDate:expirationDate defaultActionURL:defaultActionURL iconIdentifier:iconIdentifier shouldHideTime:v11 shouldSuppressSyncDismissalWhenRemoved:peopleIdentifiers peopleIdentifiers:sound sound:userInfo userInfo:threadIdentifier threadIdentifier:interruptionLevel interruptionLevel:filterCriteria filterCriteria:?];

  return v21;
}

- (void)setUserInfoValue:(id)value forKey:(id)key
{
  v13[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  userInfo = [(CALNNotificationContent *)self userInfo];
  if (userInfo)
  {
    v9 = userInfo;
    v10 = [userInfo mutableCopy];
    [v10 setObject:valueCopy forKeyedSubscript:keyCopy];

    v11 = [v10 copy];
  }

  else
  {
    v12 = keyCopy;
    v13[0] = valueCopy;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  }

  [(CALNMutableNotificationContent *)self setUserInfo:v11];
}

@end