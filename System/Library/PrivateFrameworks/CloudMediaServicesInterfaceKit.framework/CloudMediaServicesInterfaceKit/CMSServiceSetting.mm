@interface CMSServiceSetting
+ (id)settingDictionaryFromData:(id)data;
- (BOOL)isEqual:(id)equal;
- (CMSServiceSetting)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMSServiceSetting

- (id)description
{
  v2 = @"NO";
  if (self->_updateListeningHistory)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->_allowExplicitContent)
  {
    v2 = @"YES";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"CMSServiceSetting <UpdateListeningHistory: %@, ExplicitContentSetting: %@>", v3, v2];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      updateListeningHistory = [(CMSServiceSetting *)v5 updateListeningHistory];
      if (updateListeningHistory == [(CMSServiceSetting *)self updateListeningHistory])
      {
        allowExplicitContent = [(CMSServiceSetting *)v5 allowExplicitContent];
        v7 = allowExplicitContent ^ [(CMSServiceSetting *)self allowExplicitContent]^ 1;
      }

      else
      {
        LOBYTE(v7) = 0;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

+ (id)settingDictionaryFromData:(id)data
{
  if (data)
  {
    v3 = MEMORY[0x277CCAAC8];
    v4 = MEMORY[0x277CBEB98];
    dataCopy = data;
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v4 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
    v17 = 0;
    v11 = [v3 unarchivedObjectOfClasses:v10 fromData:dataCopy error:&v17];

    v12 = v17;
    if (v12)
    {
      v14 = _CMSILogingFacility(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(CMSServiceSetting *)v12 settingDictionaryFromData:v14];
      }

      v15 = 0;
    }

    else
    {
      v15 = v11;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setUpdateListeningHistory:self->_updateListeningHistory];
  [v4 setAllowExplicitContent:self->_allowExplicitContent];
  return v4;
}

- (CMSServiceSetting)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CMSServiceSetting;
  v5 = [(CMSServiceSetting *)&v7 init];
  if (v5)
  {
    v5->_updateListeningHistory = [coderCopy decodeBoolForKey:@"AGSettingUpdateListeningHistoryEnodedKey"];
    v5->_allowExplicitContent = [coderCopy decodeBoolForKey:@"CMSSettingExplicitContentSettingEncodedKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  updateListeningHistory = self->_updateListeningHistory;
  coderCopy = coder;
  [coderCopy encodeBool:updateListeningHistory forKey:@"AGSettingUpdateListeningHistoryEnodedKey"];
  [coderCopy encodeBool:self->_allowExplicitContent forKey:@"CMSSettingExplicitContentSettingEncodedKey"];
}

+ (void)settingDictionaryFromData:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2439AD000, a2, OS_LOG_TYPE_ERROR, "Error unarchiving service setting dictionary %@", &v2, 0xCu);
}

@end