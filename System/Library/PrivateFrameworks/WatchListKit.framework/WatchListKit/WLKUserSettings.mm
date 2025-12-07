@interface WLKUserSettings
- (WLKUserSettings)initWithBrandId:(id)id shouldHide:(BOOL)hide;
- (WLKUserSettings)initWithDictionary:(id)dictionary;
- (WLKUserSettings)initWithFavoritesSyncEnabled:(BOOL)enabled;
- (WLKUserSettings)initWithPostPlayAutoPlaySettings:(id)settings;
- (WLKUserSettings)initWithTabId:(id)id shouldPin:(BOOL)pin;
- (id)_patchData;
- (id)_patchJSONDictionary;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation WLKUserSettings

- (WLKUserSettings)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = WLKUserSettings;
  v5 = [(WLKUserSettings *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy wlk_dictionaryForKey:@"data"];
    v5->_activeUser = [v6 wlk_BOOLForKey:@"activeUser" defaultValue:0];
    v5->_ageVerified = [v6 wlk_BOOLForKey:@"ageVerified" defaultValue:0];
    v7 = [v6 wlk_stringForKey:@"country"];
    country = v5->_country;
    v5->_country = v7;

    v5->_favoritesSyncEnabled = [v6 wlk_BOOLForKey:@"favoritesSyncEnabled" defaultValue:0];
    v5->_recommendedItemsAutoPlayEnabled = [v6 wlk_BOOLForKey:@"postPlayAutoPlayEnabled" defaultValue:1];
    v5->_nextEpisodeAutoPlayEnabled = [v6 wlk_BOOLForKey:@"nextEpisodeAutoPlayEnabled" defaultValue:1];
    v5->_globalAccountConsent = [v6 wlk_BOOLForKey:@"gac" defaultValue:0];
    v9 = [v6 wlk_dictionaryForKey:@"brandSidebarSetting"];
    brandSidebarSetting = v5->_brandSidebarSetting;
    v5->_brandSidebarSetting = v9;

    *&v5->_initWithFavoritesSync = 0;
    v5->_initWithPostPlayAutoPlaySetting = 0;
    v11 = objc_alloc_init(WLKPostPlayAutoPlaySettings);
    postPlayAutoPlaySettings = v5->_postPlayAutoPlaySettings;
    v5->_postPlayAutoPlaySettings = v11;

    v13 = [v6 wlk_numberForKey:@"postPlayAutoPlayEnabled"];

    if (v13)
    {
      v14 = v5->_postPlayAutoPlaySettings;
      v15 = [MEMORY[0x277CCABB0] numberWithBool:v5->_recommendedItemsAutoPlayEnabled];
      [(WLKPostPlayAutoPlaySettings *)v14 setRecommendedItemsSettingValue:v15];
    }

    v16 = [v6 wlk_numberForKey:@"nextEpisodeAutoPlayEnabled"];

    if (v16)
    {
      v17 = v5->_postPlayAutoPlaySettings;
      v18 = [MEMORY[0x277CCABB0] numberWithBool:v5->_nextEpisodeAutoPlayEnabled];
      [(WLKPostPlayAutoPlaySettings *)v17 setNextEpisodeSettingValue:v18];
    }
  }

  return v5;
}

- (WLKUserSettings)initWithFavoritesSyncEnabled:(BOOL)enabled
{
  v5.receiver = self;
  v5.super_class = WLKUserSettings;
  result = [(WLKUserSettings *)&v5 init];
  if (result)
  {
    result->_favoritesSyncEnabled = enabled;
    *&result->_initWithFavoritesSync = 1;
    result->_initWithPostPlayAutoPlaySetting = 0;
  }

  return result;
}

- (WLKUserSettings)initWithPostPlayAutoPlaySettings:(id)settings
{
  settingsCopy = settings;
  v12.receiver = self;
  v12.super_class = WLKUserSettings;
  v6 = [(WLKUserSettings *)&v12 init];
  if (v6)
  {
    nextEpisodeSettingValue = [settingsCopy nextEpisodeSettingValue];

    if (nextEpisodeSettingValue)
    {
      nextEpisodeSettingValue2 = [settingsCopy nextEpisodeSettingValue];
      v6->_nextEpisodeAutoPlayEnabled = [nextEpisodeSettingValue2 BOOLValue];
    }

    recommendedItemsSettingValue = [settingsCopy recommendedItemsSettingValue];

    if (recommendedItemsSettingValue)
    {
      recommendedItemsSettingValue2 = [settingsCopy recommendedItemsSettingValue];
      v6->_recommendedItemsAutoPlayEnabled = [recommendedItemsSettingValue2 BOOLValue];
    }

    *&v6->_initWithFavoritesSync = 0;
    v6->_initWithPostPlayAutoPlaySetting = 1;
    objc_storeStrong(&v6->_postPlayAutoPlaySettings, settings);
  }

  return v6;
}

- (WLKUserSettings)initWithBrandId:(id)id shouldHide:(BOOL)hide
{
  hideCopy = hide;
  v17[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  v13.receiver = self;
  v13.super_class = WLKUserSettings;
  v7 = [(WLKUserSettings *)&v13 init];
  if (v7)
  {
    v16 = idCopy;
    v14 = @"isHidden";
    v8 = [MEMORY[0x277CCABB0] numberWithBool:hideCopy];
    v15 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v17[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    brandSidebarSetting = v7->_brandSidebarSetting;
    v7->_brandSidebarSetting = v10;

    *&v7->_initWithFavoritesSync = 256;
    v7->_initWithPostPlayAutoPlaySetting = 0;
  }

  return v7;
}

- (WLKUserSettings)initWithTabId:(id)id shouldPin:(BOOL)pin
{
  pinCopy = pin;
  v17[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  v13.receiver = self;
  v13.super_class = WLKUserSettings;
  v7 = [(WLKUserSettings *)&v13 init];
  if (v7)
  {
    v16 = idCopy;
    v14 = @"isPinned";
    v8 = [MEMORY[0x277CCABB0] numberWithBool:pinCopy];
    v15 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v17[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    brandSidebarSetting = v7->_brandSidebarSetting;
    v7->_brandSidebarSetting = v10;

    *&v7->_initWithFavoritesSync = 256;
    v7->_initWithPostPlayAutoPlaySetting = 0;
  }

  return v7;
}

- (id)_patchJSONDictionary
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (self->_initWithFavoritesSync)
  {
    v14 = @"favoritesSyncEnabled";
    v3 = [MEMORY[0x277CCABB0] numberWithBool:self->_favoritesSyncEnabled];
    v15[0] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
LABEL_3:
    v5 = v4;

    goto LABEL_13;
  }

  if (self->_initWithBrandSidebarSetting)
  {
    brandSidebarSetting = self->_brandSidebarSetting;
    v12 = @"brandSidebarSetting";
    v13 = brandSidebarSetting;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  }

  else
  {
    if (self->_initWithPostPlayAutoPlaySetting)
    {
      v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
      nextEpisodeSettingValue = [(WLKPostPlayAutoPlaySettings *)self->_postPlayAutoPlaySettings nextEpisodeSettingValue];

      if (nextEpisodeSettingValue)
      {
        v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_nextEpisodeAutoPlayEnabled];
        [v3 setObject:v8 forKey:@"nextEpisodeAutoPlayEnabled"];
      }

      recommendedItemsSettingValue = [(WLKPostPlayAutoPlaySettings *)self->_postPlayAutoPlaySettings recommendedItemsSettingValue];

      if (recommendedItemsSettingValue)
      {
        v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_recommendedItemsAutoPlayEnabled];
        [v3 setObject:v10 forKey:@"postPlayAutoPlayEnabled"];
      }

      v4 = [v3 copy];
      goto LABEL_3;
    }

    v5 = 0;
  }

LABEL_13:

  return v5;
}

- (id)_patchData
{
  _patchJSONDictionary = [(WLKUserSettings *)self _patchJSONDictionary];
  v7 = 0;
  v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:_patchJSONDictionary options:0 error:&v7];
  v4 = v3;
  v5 = 0;
  if (!v7)
  {
    v5 = v3;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = self->_activeUser;
    *(v5 + 9) = self->_ageVerified;
    v7 = [(NSString *)self->_country copyWithZone:zone];
    v8 = *(v6 + 24);
    *(v6 + 24) = v7;

    *(v6 + 10) = self->_favoritesSyncEnabled;
    *(v6 + 11) = self->_recommendedItemsAutoPlayEnabled;
    *(v6 + 12) = self->_nextEpisodeAutoPlayEnabled;
    *(v6 + 13) = self->_globalAccountConsent;
    v9 = [(NSDictionary *)self->_brandSidebarSetting copyWithZone:zone];
    v10 = *(v6 + 32);
    *(v6 + 32) = v9;

    v11 = [(WLKPostPlayAutoPlaySettings *)self->_postPlayAutoPlaySettings copyWithZone:zone];
    v12 = *(v6 + 40);
    *(v6 + 40) = v11;
  }

  return v6;
}

@end