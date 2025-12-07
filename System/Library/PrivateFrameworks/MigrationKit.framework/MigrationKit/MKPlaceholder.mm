@interface MKPlaceholder
- (MKPlaceholder)initWithBundleIdentifier:(id)identifier;
- (MKPlaceholder)initWithBundleIdentifier:(id)identifier appStoreIdentifier:(id)storeIdentifier bundleName:(id)name developer:(id)developer icon:(id)icon;
- (MKPlaceholder)initWithJSONData:(id)data;
- (MKPlaceholder)initWithTestBundleIdentifier;
- (void)install;
- (void)uninstall;
@end

@implementation MKPlaceholder

- (MKPlaceholder)initWithJSONData:(id)data
{
  dataCopy = data;
  v34.receiver = self;
  v34.super_class = MKPlaceholder;
  v5 = [(MKPlaceholder *)&v34 init];
  if (v5 && [dataCopy length])
  {
    v33 = 0;
    v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:0 error:&v33];
    v7 = v33;
    if (v7)
    {
      v8 = +[MKLog log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(MKPlaceholder *)v7 initWithJSONData:v8];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v6 mk_stringForKey:@"id"];
        v10 = [v6 mk_stringForKey:@"name"];
        v11 = [v6 mk_stringForKey:@"icon"];
        v12 = [v6 mk_stringForKey:@"developer"];
        v32 = v10;
        if (v10)
        {
          v13 = v10;
        }

        else
        {
          v13 = v8;
        }

        [(MKPlaceholder *)v5 setName:v13];
        v31 = v11;
        if (v11)
        {
          v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v11 options:0];
          [(MKPlaceholder *)v5 setIcon:v14];
        }

        else
        {
          [(MKPlaceholder *)v5 setIcon:0];
        }

        v30 = v12;
        [(MKPlaceholder *)v5 setDeveloper:v12];
        v16 = objc_alloc_init(MKHex);
        v17 = [MKCrypto alloc];
        v18 = [(MKHex *)v16 hexToData:@"331BB104B13265802FC130A8AC28927CFF1CC3F0D502D0B0DE25A8D6F87D3528"];
        v19 = [(MKCrypto *)v17 initWithKey:v18];

        v20 = [(MKHex *)v16 hexToData:@"94FBBFDC34ECDA1EBEF8B963954CCE8370B1841A7E12A080793994F1184A8F213A0430023E"];
        v21 = [(MKCrypto *)v19 decryptData:v20];

        v29 = v21;
        v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v21 encoding:4];
        if ([v8 isEqualToString:v22])
        {
          v23 = [(MKHex *)v16 hexToData:@"D1FCC9136BB7D621E20BDF8E1EFB7607F11DD455D9929C6F56"];
          v28 = [(MKCrypto *)v19 decryptData:v23];

          v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v28 encoding:4];
          [(MKPlaceholder *)v5 setAppStoreIdentifier:v27];
          v24 = [(MKHex *)v16 hexToData:@"BFADCCA6F10B49705F5D5A33E55AE0F8E20F55C483DC03BE802D90AC5A"];
          v25 = [(MKCrypto *)v19 decryptData:v24];

          v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v25 encoding:4];
          [(MKPlaceholder *)v5 setDeveloper:v26];
        }

        v5 = [(MKPlaceholder *)v5 initWithBundleIdentifier:v8];

        v9 = v5;
        goto LABEL_16;
      }

      v8 = +[MKLog log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [MKPlaceholder initWithJSONData:v8];
      }
    }

    v9 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v9 = 0;
LABEL_17:

  return v9;
}

- (MKPlaceholder)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = MKPlaceholder;
  v5 = [(MKPlaceholder *)&v13 init];
  if (!v5)
  {
LABEL_8:
    v11 = v5;
    goto LABEL_9;
  }

  if ([identifierCopy length])
  {
    [(MKPlaceholder *)v5 setBundleIdentifier:identifierCopy];
    v6 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v5->_bundleIdentifier allowPlaceholder:1 error:0];
    dataContainerURL = [v6 dataContainerURL];
    path = [dataContainerURL path];
    v9 = [path stringByAppendingPathComponent:@"Library"];
    [(MKPlaceholder *)v5 setContainer:v9];

    if (v6)
    {
      dataContainerURL2 = [v6 dataContainerURL];
      [(MKPlaceholder *)v5 setEnabled:dataContainerURL2 != 0];
    }

    else
    {
      [(MKPlaceholder *)v5 setEnabled:0];
    }

    goto LABEL_8;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (MKPlaceholder)initWithBundleIdentifier:(id)identifier appStoreIdentifier:(id)storeIdentifier bundleName:(id)name developer:(id)developer icon:(id)icon
{
  storeIdentifierCopy = storeIdentifier;
  nameCopy = name;
  developerCopy = developer;
  iconCopy = icon;
  v16 = [(MKPlaceholder *)self initWithBundleIdentifier:identifier];
  v17 = v16;
  if (v16)
  {
    [(MKPlaceholder *)v16 setAppStoreIdentifier:storeIdentifierCopy];
    [(MKPlaceholder *)v17 setName:nameCopy];
    [(MKPlaceholder *)v17 setDeveloper:developerCopy];
    [(MKPlaceholder *)v17 setIcon:iconCopy];
  }

  return v17;
}

- (MKPlaceholder)initWithTestBundleIdentifier
{
  if (+[MKInternal isInternal])
  {
    v3 = objc_alloc_init(MKHex);
    v4 = [MKCrypto alloc];
    v5 = [(MKHex *)v3 hexToData:@"331BB104B13265802FC130A8AC28927CFF1CC3F0D502D0B0DE25A8D6F87D3528"];
    v6 = [(MKCrypto *)v4 initWithKey:v5];

    v7 = [(MKHex *)v3 hexToData:@"94FBBFDC34ECDA1EBEF8B963954CCE8370B1841A7E12A080793994F1184A8F213A0430023E"];
    v8 = [(MKCrypto *)v6 decryptData:v7];

    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
    self = [(MKPlaceholder *)self initWithBundleIdentifier:v9];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)install
{
  v43 = *MEMORY[0x277D85DE8];
  if (self->_enabled)
  {
    v3 = +[MKLog log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      bundleIdentifier = self->_bundleIdentifier;
      *buf = 138412290;
      selfCopy = bundleIdentifier;
      _os_log_impl(&dword_2592D2000, v3, OS_LOG_TYPE_INFO, "The placeholder is already installed. id=%@", buf, 0xCu);
    }
  }

  else
  {
    if ([(NSString *)self->_bundleIdentifier length]&& [(NSString *)self->_appStoreIdentifier length]&& [(NSString *)self->_name length]&& [(NSString *)self->_developer length])
    {
      v5 = [objc_alloc(MEMORY[0x277D1C160]) initWithBundleIdentifier:self->_bundleIdentifier];
      v34 = 0;
      v6 = [MEMORY[0x277D1C1C8] coordinatorForAppWithIdentity:v5 withClientID:24 createIfNotExisting:1 created:0 error:&v34];
      v7 = v34;
      if (v7)
      {
        v3 = v7;
        v8 = 0;
        v9 = 0;
      }

      else
      {
        v8 = [objc_alloc(MEMORY[0x277D1C1A0]) initWithName:@"User data" client:24 diskSpaceNeeded:0];
        v33 = 0;
        v9 = [v6 setUserDataPromise:v8 error:&v33];
        v13 = v33;
        v3 = v13;
        if (v9 && !v13)
        {
          v14 = objc_alloc_init(MEMORY[0x277D1C200]);
          v9 = 1;
          v15 = [objc_alloc(MEMORY[0x277D1C190]) initWithLocalizedBundleName:self->_name bundleID:self->_bundleIdentifier type:1 client:24 location:v14];
          [v15 setInstallType:8];
          v32 = 0;
          v16 = [objc_alloc(MEMORY[0x277D1C180]) initWithSpecification:v15 error:&v32];
          v17 = v32;
          if (v17)
          {
            v3 = v17;
          }

          else
          {
            v31 = 0;
            v9 = [v6 setPlaceholderPromise:v16 error:&v31];
            v20 = v31;
            v3 = v20;
            if (v9)
            {
              if (!v20)
              {
                if (!-[NSData length](self->_icon, "length") || (v21 = [objc_alloc(MEMORY[0x277D1C198]) initWithName:@"Placeholder Icon" client:24 data:self->_icon], v30 = 0, v9 = objc_msgSend(v16, "setIconPromise:error:", v21, &v30), v3 = v30, v21, v9) && !v3)
                {
                  v22 = objc_alloc_init(MEMORY[0x277CCABB8]);
                  [v22 setNumberStyle:1];
                  v27 = v22;
                  v23 = [v22 numberFromString:self->_appStoreIdentifier];
                  v24 = objc_alloc_init(MEMORY[0x277D1C208]);
                  v26 = v23;
                  [v24 setItemID:v23];
                  [v24 setItemName:self->_name];
                  [v24 setArtistName:self->_developer];
                  [v24 setSoftwareVersionBundleID:self->_bundleIdentifier];
                  v29 = 0;
                  v9 = [v16 setMetadata:v24 error:&v29];
                  v25 = v29;
                  v3 = v25;
                  if (v9 && !v25)
                  {
                    v28 = 0;
                    v9 = [v16 setConfigurationCompleteWithError:&v28];
                    v3 = v28;
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v3 = 0;
    }

    [v8 setComplete:1];
    v10 = +[MKLog log];
    v11 = v10;
    if (!v9 || v3)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v18 = self->_bundleIdentifier;
        v19 = [v3 description];
        *buf = 138413058;
        selfCopy = self;
        v37 = 2112;
        v38 = v18;
        v39 = 1024;
        v40 = v9;
        v41 = 2112;
        v42 = v19;
        _os_log_error_impl(&dword_2592D2000, v11, OS_LOG_TYPE_ERROR, "%@ could not install a placeholder. id=%@, success=%d, error=%@", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = self->_bundleIdentifier;
      *buf = 138412290;
      selfCopy = v12;
      _os_log_impl(&dword_2592D2000, v11, OS_LOG_TYPE_INFO, "will install a placeholder. id=%@", buf, 0xCu);
    }
  }
}

- (void)uninstall
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_enabled)
  {
    v3 = objc_alloc_init(MEMORY[0x277D1C1D0]);
    [v3 setRequestUserConfirmation:0];
    [v3 setWaitForDeletion:0];
    [v3 setShowArchiveOption:0];
    [v3 setShowDemotionOption:0];
    [v3 setSystemAppNotAllowed:0];
    v4 = +[MKLog log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      bundleIdentifier = self->_bundleIdentifier;
      v8 = 138412290;
      v9 = bundleIdentifier;
      _os_log_impl(&dword_2592D2000, v4, OS_LOG_TYPE_INFO, "will uninstall an app. id=%@", &v8, 0xCu);
    }

    v6 = [objc_alloc(MEMORY[0x277D1C160]) initWithBundleIdentifier:self->_bundleIdentifier];
    [MEMORY[0x277D1C148] uninstallAppWithIdentity:v6 options:v3 completion:&__block_literal_global_5];
  }

  else
  {
    v3 = +[MKLog log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = self->_bundleIdentifier;
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_2592D2000, v3, OS_LOG_TYPE_INFO, "the placeholder was already uninstalled. id=%@", &v8, 0xCu);
    }
  }
}

void __26__MKPlaceholder_uninstall__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[MKLog log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134218242;
    v7 = a2;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_2592D2000, v5, OS_LOG_TYPE_INFO, "did uninstall an app. disposition=%ld, error=%@", &v6, 0x16u);
  }
}

@end