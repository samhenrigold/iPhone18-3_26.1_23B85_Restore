@interface ICQManageStorageSpecifierInfo
- (ICQManageStorageSpecifierInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICQManageStorageSpecifierInfo

- (id)initFromDictionary:(id)dictionary
{
  v23[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = ICQManageStorageSpecifierInfo;
  v5 = [(ICQManageStorageSpecifierInfo *)&v22 init];
  if (v5)
  {
    v6 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ICQManageStorageSpecifierInfo *)v5 setType:v6];
    }

    v7 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ICQManageStorageSpecifierInfo *)v5 setTitle:v7];
    }

    v8 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ICQManageStorageSpecifierInfo *)v5 setSubtitle:v8];
    }

    v9 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[ICQImageURL alloc] initFromDictionary:v9];
      [(ICQManageStorageSpecifierInfo *)v5 setIconURL:v10];
    }

    v11 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __52__ICQManageStorageSpecifierInfo_initFromDictionary___block_invoke;
      v20[3] = &unk_27A6528C0;
      v21 = v12;
      v13 = v12;
      [v11 enumerateObjectsUsingBlock:v20];
      [(ICQManageStorageSpecifierInfo *)v5 setActions:v13];
    }

    actions = [(ICQManageStorageSpecifierInfo *)v5 actions];
    v15 = [actions count];

    if (!v15)
    {
      v16 = [[ICQActionInfo alloc] initFromDictionary:dictionaryCopy];
      v17 = v16;
      if (v16)
      {
        v23[0] = v16;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
        [(ICQManageStorageSpecifierInfo *)v5 setActions:v18];
      }
    }
  }

  return v5;
}

void __52__ICQManageStorageSpecifierInfo_initFromDictionary___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [[ICQActionInfo alloc] initFromDictionary:v4];
    if (v3)
    {
      [*(a1 + 32) addObject:v3];
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(ICQManageStorageSpecifierInfo);
  [(ICQManageStorageSpecifierInfo *)v4 setType:self->_type];
  [(ICQManageStorageSpecifierInfo *)v4 setTitle:self->_title];
  [(ICQManageStorageSpecifierInfo *)v4 setSubtitle:self->_subtitle];
  [(ICQManageStorageSpecifierInfo *)v4 setIconURL:self->_iconURL];
  [(ICQManageStorageSpecifierInfo *)v4 setActions:self->_actions];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeObject:type forKey:@"type"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_subtitle forKey:@"subTitle"];
  [coderCopy encodeObject:self->_iconURL forKey:@"iconURL"];
  [coderCopy encodeObject:self->_actions forKey:@"actions"];
}

- (ICQManageStorageSpecifierInfo)initWithCoder:(id)coder
{
  v21[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = ICQManageStorageSpecifierInfo;
  v5 = [(ICQManageStorageSpecifierInfo *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subTitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iconURL"];
    iconURL = v5->_iconURL;
    v5->_iconURL = v12;

    v14 = MEMORY[0x277CBEB98];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v16 = [v14 setWithArray:v15];

    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"actions"];
    actions = v5->_actions;
    v5->_actions = v17;
  }

  return v5;
}

@end