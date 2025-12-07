@interface CALNNotificationContent
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualForDiffingPurposesToContent:(id)content;
- (BOOL)isEqualToContent:(id)content;
- (CALNNotificationContent)initWithCoder:(id)coder;
- (id)_initWithTitle:(id)title subtitle:(id)subtitle body:(id)body categoryIdentifier:(id)identifier sectionIdentifier:(id)sectionIdentifier date:(id)date expirationDate:(id)expirationDate defaultActionURL:(id)self0 iconIdentifier:(id)self1 shouldHideTime:(BOOL)self2 shouldSuppressSyncDismissalWhenRemoved:(BOOL)self3 peopleIdentifiers:(id)self4 sound:(id)self5 userInfo:(id)self6 threadIdentifier:(id)self7 interruptionLevel:(unint64_t)self8 filterCriteria:(id)self9;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CALNNotificationContent

- (id)_initWithTitle:(id)title subtitle:(id)subtitle body:(id)body categoryIdentifier:(id)identifier sectionIdentifier:(id)sectionIdentifier date:(id)date expirationDate:(id)expirationDate defaultActionURL:(id)self0 iconIdentifier:(id)self1 shouldHideTime:(BOOL)self2 shouldSuppressSyncDismissalWhenRemoved:(BOOL)self3 peopleIdentifiers:(id)self4 sound:(id)self5 userInfo:(id)self6 threadIdentifier:(id)self7 interruptionLevel:(unint64_t)self8 filterCriteria:(id)self9
{
  titleCopy = title;
  subtitleCopy = subtitle;
  bodyCopy = body;
  identifierCopy = identifier;
  sectionIdentifierCopy = sectionIdentifier;
  dateCopy = date;
  expirationDateCopy = expirationDate;
  lCopy = l;
  iconIdentifierCopy = iconIdentifier;
  identifiersCopy = identifiers;
  soundCopy = sound;
  infoCopy = info;
  threadIdentifierCopy = threadIdentifier;
  criteriaCopy = criteria;
  v69.receiver = self;
  v69.super_class = CALNNotificationContent;
  v32 = [(CALNNotificationContent *)&v69 init];
  if (v32)
  {
    v33 = [titleCopy copy];
    title = v32->_title;
    v32->_title = v33;

    v35 = [subtitleCopy copy];
    subtitle = v32->_subtitle;
    v32->_subtitle = v35;

    v37 = [bodyCopy copy];
    body = v32->_body;
    v32->_body = v37;

    v39 = [identifierCopy copy];
    categoryIdentifier = v32->_categoryIdentifier;
    v32->_categoryIdentifier = v39;

    v41 = [sectionIdentifierCopy copy];
    sectionIdentifier = v32->_sectionIdentifier;
    v32->_sectionIdentifier = v41;

    v43 = [dateCopy copy];
    date = v32->_date;
    v32->_date = v43;

    v45 = [expirationDateCopy copy];
    expirationDate = v32->_expirationDate;
    v32->_expirationDate = v45;

    v47 = [lCopy copy];
    defaultActionURL = v32->_defaultActionURL;
    v32->_defaultActionURL = v47;

    v49 = [iconIdentifierCopy copy];
    iconIdentifier = v32->_iconIdentifier;
    v32->_iconIdentifier = v49;

    v32->_shouldHideTime = time;
    v32->_shouldSuppressSyncDismissalWhenRemoved = removed;
    v51 = [identifiersCopy copy];
    peopleIdentifiers = v32->_peopleIdentifiers;
    v32->_peopleIdentifiers = v51;

    v53 = [soundCopy copy];
    sound = v32->_sound;
    v32->_sound = v53;

    v55 = [infoCopy copy];
    userInfo = v32->_userInfo;
    v32->_userInfo = v55;

    v57 = [threadIdentifierCopy copy];
    threadIdentifier = v32->_threadIdentifier;
    v32->_threadIdentifier = v57;

    v32->_interruptionLevel = level;
    v59 = [criteriaCopy copy];
    filterCriteria = v32->_filterCriteria;
    v32->_filterCriteria = v59;
  }

  return v32;
}

- (id)description
{
  v20 = MEMORY[0x277CCACA8];
  v19 = objc_opt_class();
  title = [(CALNNotificationContent *)self title];
  v26 = ICSRedactString();
  subtitle = [(CALNNotificationContent *)self subtitle];
  v24 = ICSRedactString();
  body = [(CALNNotificationContent *)self body];
  v25 = ICSRedactString();
  categoryIdentifier = [(CALNNotificationContent *)self categoryIdentifier];
  sectionIdentifier = [(CALNNotificationContent *)self sectionIdentifier];
  date = [(CALNNotificationContent *)self date];
  expirationDate = [(CALNNotificationContent *)self expirationDate];
  defaultActionURL = [(CALNNotificationContent *)self defaultActionURL];
  iconIdentifier = [(CALNNotificationContent *)self iconIdentifier];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[CALNNotificationContent shouldHideTime](self, "shouldHideTime")}];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[CALNNotificationContent shouldSuppressSyncDismissalWhenRemoved](self, "shouldSuppressSyncDismissalWhenRemoved")}];
  peopleIdentifiers = [(CALNNotificationContent *)self peopleIdentifiers];
  sound = [(CALNNotificationContent *)self sound];
  threadIdentifier = [(CALNNotificationContent *)self threadIdentifier];
  interruptionLevel = [(CALNNotificationContent *)self interruptionLevel];
  filterCriteria = [(CALNNotificationContent *)self filterCriteria];
  userInfo = [(CALNNotificationContent *)self userInfo];
  v8 = [v20 stringWithFormat:@"<%@: %p>(title = %@, subtitle = %@, body = %@, categoryIdentifier = %@, sectionIdentifier = %@, date = %@, expirationDate = %@, defaultActionURL = %@, iconIdentifier = %@, shouldHideTime = %@, shouldSuppressSyncDismissalWhenRemoved = %@, peopleIdentifiers = %@, sound = %@, threadIdentifier = %@, interruptionLevel = %lu, filterCriteria = %@, userInfo = %@)", v19, self, v26, v24, v25, categoryIdentifier, sectionIdentifier, date, expirationDate, defaultActionURL, iconIdentifier, v12, v11, peopleIdentifiers, sound, threadIdentifier, interruptionLevel, filterCriteria, userInfo];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CALNNotificationContent *)self isEqualToContent:equalCopy];

  return v5;
}

- (BOOL)isEqualToContent:(id)content
{
  contentCopy = content;
  if (self == contentCopy)
  {
    v7 = 1;
  }

  else if ([(CALNNotificationContent *)self isEqualForDiffingPurposesToContent:contentCopy])
  {
    expirationDate = [(CALNNotificationContent *)self expirationDate];
    expirationDate2 = [(CALNNotificationContent *)contentCopy expirationDate];
    v7 = CalEqualObjects();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqualForDiffingPurposesToContent:(id)content
{
  contentCopy = content;
  if (self == contentCopy)
  {
    v46 = 1;
  }

  else
  {
    title = [(CALNNotificationContent *)self title];
    title2 = [(CALNNotificationContent *)contentCopy title];
    v7 = CalEqualStrings();

    if (v7
      && ([(CALNNotificationContent *)self subtitle], v8 = objc_claimAutoreleasedReturnValue(), [(CALNNotificationContent *)contentCopy subtitle], v9 = objc_claimAutoreleasedReturnValue(), v10 = CalEqualStrings(), v9, v8, v10)
      && ([(CALNNotificationContent *)self body], v11 = objc_claimAutoreleasedReturnValue(), [(CALNNotificationContent *)contentCopy body], v12 = objc_claimAutoreleasedReturnValue(), v13 = CalEqualStrings(), v12, v11, v13)
      && ([(CALNNotificationContent *)self categoryIdentifier], v14 = objc_claimAutoreleasedReturnValue(), [(CALNNotificationContent *)contentCopy categoryIdentifier], v15 = objc_claimAutoreleasedReturnValue(), v16 = CalEqualStrings(), v15, v14, v16)
      && ([(CALNNotificationContent *)self sectionIdentifier], v17 = objc_claimAutoreleasedReturnValue(), [(CALNNotificationContent *)contentCopy sectionIdentifier], v18 = objc_claimAutoreleasedReturnValue(), v19 = CalEqualStrings(), v18, v17, v19)
      && ([(CALNNotificationContent *)self date], v20 = objc_claimAutoreleasedReturnValue(), [(CALNNotificationContent *)contentCopy date], v21 = objc_claimAutoreleasedReturnValue(), v22 = CalEqualObjects(), v21, v20, v22)
      && ([(CALNNotificationContent *)self defaultActionURL], v23 = objc_claimAutoreleasedReturnValue(), [(CALNNotificationContent *)contentCopy defaultActionURL], v24 = objc_claimAutoreleasedReturnValue(), v25 = CalEqualObjects(), v24, v23, v25)
      && ([(CALNNotificationContent *)self iconIdentifier], v26 = objc_claimAutoreleasedReturnValue(), [(CALNNotificationContent *)contentCopy iconIdentifier], v27 = objc_claimAutoreleasedReturnValue(), v28 = CalEqualStrings(), v27, v26, v28)
      && (v29 = [(CALNNotificationContent *)self shouldHideTime], v29 == [(CALNNotificationContent *)contentCopy shouldHideTime])
      && (v30 = [(CALNNotificationContent *)self shouldSuppressSyncDismissalWhenRemoved], v30 == [(CALNNotificationContent *)contentCopy shouldSuppressSyncDismissalWhenRemoved])
      && ([(CALNNotificationContent *)self peopleIdentifiers], v31 = objc_claimAutoreleasedReturnValue(), [(CALNNotificationContent *)contentCopy peopleIdentifiers], v32 = objc_claimAutoreleasedReturnValue(), v33 = CalEqualObjects(), v32, v31, v33)
      && ([(CALNNotificationContent *)self sound], v34 = objc_claimAutoreleasedReturnValue(), [(CALNNotificationContent *)contentCopy sound], v35 = objc_claimAutoreleasedReturnValue(), v36 = CalEqualObjects(), v35, v34, v36)
      && ([(CALNNotificationContent *)self userInfo], v37 = objc_claimAutoreleasedReturnValue(), [(CALNNotificationContent *)contentCopy userInfo], v38 = objc_claimAutoreleasedReturnValue(), v39 = CalEqualObjects(), v38, v37, v39)
      && ([(CALNNotificationContent *)self threadIdentifier], v40 = objc_claimAutoreleasedReturnValue(), [(CALNNotificationContent *)contentCopy threadIdentifier], v41 = objc_claimAutoreleasedReturnValue(), v42 = CalEqualStrings(), v41, v40, v42)
      && (v43 = [(CALNNotificationContent *)self interruptionLevel], v43 == [(CALNNotificationContent *)contentCopy interruptionLevel]))
    {
      filterCriteria = [(CALNNotificationContent *)self filterCriteria];
      filterCriteria2 = [(CALNNotificationContent *)contentCopy filterCriteria];
      v46 = CalEqualStrings();
    }

    else
    {
      v46 = 0;
    }
  }

  return v46;
}

- (unint64_t)hash
{
  title = [(CALNNotificationContent *)self title];
  v4 = [title hash];

  subtitle = [(CALNNotificationContent *)self subtitle];
  v6 = [subtitle hash] ^ v4;

  body = [(CALNNotificationContent *)self body];
  v8 = [body hash];

  categoryIdentifier = [(CALNNotificationContent *)self categoryIdentifier];
  v10 = v6 ^ v8 ^ [categoryIdentifier hash];

  sectionIdentifier = [(CALNNotificationContent *)self sectionIdentifier];
  v12 = [sectionIdentifier hash];

  date = [(CALNNotificationContent *)self date];
  v14 = v12 ^ [date hash];

  expirationDate = [(CALNNotificationContent *)self expirationDate];
  v16 = v10 ^ v14 ^ [expirationDate hash];

  defaultActionURL = [(CALNNotificationContent *)self defaultActionURL];
  v18 = [defaultActionURL hash];

  iconIdentifier = [(CALNNotificationContent *)self iconIdentifier];
  v20 = v18 ^ [iconIdentifier hash];

  sound = [(CALNNotificationContent *)self sound];
  v22 = v20 ^ [sound hash];

  userInfo = [(CALNNotificationContent *)self userInfo];
  v24 = v16 ^ v22 ^ [userInfo hash];

  shouldHideTime = [(CALNNotificationContent *)self shouldHideTime];
  peopleIdentifiers = [(CALNNotificationContent *)self peopleIdentifiers];
  v27 = shouldHideTime ^ [peopleIdentifiers hash];

  threadIdentifier = [(CALNNotificationContent *)self threadIdentifier];
  v29 = v27 ^ [threadIdentifier hash];

  v30 = v24 ^ v29 ^ [(CALNNotificationContent *)self interruptionLevel];
  filterCriteria = [(CALNNotificationContent *)self filterCriteria];
  v32 = [filterCriteria hash];

  shouldSuppressSyncDismissalWhenRemoved = [(CALNNotificationContent *)self shouldSuppressSyncDismissalWhenRemoved];
  v34 = 2;
  if (!shouldSuppressSyncDismissalWhenRemoved)
  {
    v34 = 0;
  }

  return v30 ^ v32 ^ v34;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v20 = [CALNMutableNotificationContent allocWithZone:zone];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  body = [(CALNNotificationContent *)self body];
  [coderCopy encodeObject:body forKey:@"body"];

  subtitle = [(CALNNotificationContent *)self subtitle];
  [coderCopy encodeObject:subtitle forKey:@"subtitle"];

  title = [(CALNNotificationContent *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  categoryIdentifier = [(CALNNotificationContent *)self categoryIdentifier];
  [coderCopy encodeObject:categoryIdentifier forKey:@"categoryIdentifier"];

  sectionIdentifier = [(CALNNotificationContent *)self sectionIdentifier];
  [coderCopy encodeObject:sectionIdentifier forKey:@"sectionIdentifier"];

  date = [(CALNNotificationContent *)self date];
  [coderCopy encodeObject:date forKey:@"date"];

  iconIdentifier = [(CALNNotificationContent *)self iconIdentifier];
  [coderCopy encodeObject:iconIdentifier forKey:@"iconIdentifier"];

  expirationDate = [(CALNNotificationContent *)self expirationDate];
  [coderCopy encodeObject:expirationDate forKey:@"expirationDate"];

  defaultActionURL = [(CALNNotificationContent *)self defaultActionURL];
  [coderCopy encodeObject:defaultActionURL forKey:@"defaultActionURL"];

  [coderCopy encodeBool:-[CALNNotificationContent shouldHideTime](self forKey:{"shouldHideTime"), @"shouldHideTime"}];
  [coderCopy encodeBool:-[CALNNotificationContent shouldSuppressSyncDismissalWhenRemoved](self forKey:{"shouldSuppressSyncDismissalWhenRemoved"), @"shouldSuppressSyncDismissalWhenRemoved"}];
  peopleIdentifiers = [(CALNNotificationContent *)self peopleIdentifiers];
  [coderCopy encodeObject:peopleIdentifiers forKey:@"peopleIdentifiers"];

  sound = [(CALNNotificationContent *)self sound];
  [coderCopy encodeObject:sound forKey:@"sound"];

  userInfo = [(CALNNotificationContent *)self userInfo];
  [coderCopy encodeObject:userInfo forKey:@"userInfo"];

  threadIdentifier = [(CALNNotificationContent *)self threadIdentifier];
  [coderCopy encodeObject:threadIdentifier forKey:@"threadIdentifier"];

  [coderCopy encodeInteger:-[CALNNotificationContent interruptionLevel](self forKey:{"interruptionLevel"), @"interruptionLevel"}];
  filterCriteria = [(CALNNotificationContent *)self filterCriteria];
  [coderCopy encodeObject:filterCriteria forKey:@"filterCriteria"];
}

- (CALNNotificationContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"body"];
  v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
  v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"categoryIdentifier"];
  v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sectionIdentifier"];
  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultActionURL"];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iconIdentifier"];
  v21 = [coderCopy decodeBoolForKey:@"shouldHideTime"];
  v20 = [coderCopy decodeBoolForKey:@"shouldSuppressSyncDismissalWhenRemoved"];
  if (initWithCoder__onceToken != -1)
  {
    [CALNNotificationContent initWithCoder:];
  }

  v19 = [coderCopy decodeObjectOfClasses:initWithCoder__peopleIdentifiersClasses forKey:@"peopleIdentifiers"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sound"];
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v5 setWithObjects:{v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  v18 = [coderCopy decodeObjectOfClasses:v12 forKey:@"userInfo"];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"threadIdentifier"];
  v14 = [coderCopy decodeIntegerForKey:@"interruptionLevel"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"filterCriteria"];
  BYTE1(v17) = v20;
  LOBYTE(v17) = v21;
  v28 = [(CALNNotificationContent *)self _initWithTitle:v30 subtitle:v31 body:v32 categoryIdentifier:v26 sectionIdentifier:v25 date:v24 expirationDate:v29 defaultActionURL:v23 iconIdentifier:v22 shouldHideTime:v17 shouldSuppressSyncDismissalWhenRemoved:v19 peopleIdentifiers:v4 sound:v18 userInfo:v13 threadIdentifier:v14 interruptionLevel:v15 filterCriteria:?];

  return v28;
}

void __41__CALNNotificationContent_initWithCoder___block_invoke(uint64_t a1, uint64_t a2)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v4 = [v2 setWithArray:v3];
  v5 = initWithCoder__peopleIdentifiersClasses;
  initWithCoder__peopleIdentifiersClasses = v4;
}

@end