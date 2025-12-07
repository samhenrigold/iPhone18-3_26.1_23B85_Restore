@interface ICQInlineTip
+ (NSArray)downwardArrowConfigurationStrings;
+ (NSArray)upwardArrowConfigurationStrings;
- (ICQInlineTip)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICQInlineTip

+ (NSArray)upwardArrowConfigurationStrings
{
  if (upwardArrowConfigurationStrings_onceToken != -1)
  {
    +[ICQInlineTip upwardArrowConfigurationStrings];
  }

  v3 = upwardArrowConfigurationStrings_strings;

  return v3;
}

void __47__ICQInlineTip_upwardArrowConfigurationStrings__block_invoke()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = @"TOP";
  v2[1] = @"TOPLEFT";
  v2[2] = @"TOPRIGHT";
  v2[3] = @"NONE";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:4];
  v1 = upwardArrowConfigurationStrings_strings;
  upwardArrowConfigurationStrings_strings = v0;
}

+ (NSArray)downwardArrowConfigurationStrings
{
  if (downwardArrowConfigurationStrings_onceToken != -1)
  {
    +[ICQInlineTip downwardArrowConfigurationStrings];
  }

  v3 = downwardArrowConfigurationStrings_strings;

  return v3;
}

void __49__ICQInlineTip_downwardArrowConfigurationStrings__block_invoke()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = @"BOTTOM";
  v2[1] = @"BOTTOMLEFT";
  v2[2] = @"BOTTOMRIGHT";
  v2[3] = @"NONE";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:4];
  v1 = downwardArrowConfigurationStrings_strings;
  downwardArrowConfigurationStrings_strings = v0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(ICQInlineTip);
  [(ICQInlineTip *)v4 setId:self->_id];
  [(ICQInlineTip *)v4 setAnchor:self->_anchor];
  [(ICQInlineTip *)v4 setTitle:self->_title];
  [(ICQInlineTip *)v4 setSubTitle:self->_subTitle];
  [(ICQInlineTip *)v4 setActions:self->_actions];
  [(ICQInlineTip *)v4 setCriteria:self->_criteria];
  [(ICQInlineTip *)v4 setIcon:self->_icon];
  [(ICQInlineTip *)v4 setArrowConfiguration:self->_arrowConfiguration];
  [(ICQInlineTip *)v4 setDismissURL:self->_dismissURL];
  [(ICQInlineTip *)v4 setDisplayURL:self->_displayURL];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  id = self->_id;
  coderCopy = coder;
  [coderCopy encodeObject:id forKey:@"id"];
  [coderCopy encodeObject:self->_anchor forKey:@"anchor"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_subTitle forKey:@"subTitle"];
  [coderCopy encodeObject:self->_actions forKey:@"actions"];
  [coderCopy encodeObject:self->_criteria forKey:@"criteria"];
  [coderCopy encodeObject:self->_arrowConfiguration forKey:@"arrowConfiguration"];
  [coderCopy encodeObject:self->_icon forKey:@"icon"];
  [coderCopy encodeObject:self->_dismissURL forKey:@"dismissURL"];
  [coderCopy encodeObject:self->_displayURL forKey:@"displayURL"];
}

- (ICQInlineTip)initWithCoder:(id)coder
{
  v31[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = ICQInlineTip;
  v5 = [(ICQInlineTip *)&v30 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    id = v5->_id;
    v5->_id = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"anchor"];
    anchor = v5->_anchor;
    v5->_anchor = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subTitle"];
    subTitle = v5->_subTitle;
    v5->_subTitle = v12;

    v14 = MEMORY[0x277CBEB98];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    v16 = [v14 setWithArray:v15];

    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"actions"];
    actions = v5->_actions;
    v5->_actions = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"criteria"];
    criteria = v5->_criteria;
    v5->_criteria = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"arrowConfiguration"];
    arrowConfiguration = v5->_arrowConfiguration;
    v5->_arrowConfiguration = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dismissURL"];
    dismissURL = v5->_dismissURL;
    v5->_dismissURL = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayURL"];
    displayURL = v5->_displayURL;
    v5->_displayURL = v27;
  }

  return v5;
}

@end