@interface WFRemoteWidgetConfigurationLocalizedIntentResponse
- (INIntent)localizedIntent;
- (WFRemoteWidgetConfigurationLocalizedIntentResponse)initWithCoder:(id)coder;
- (WFRemoteWidgetConfigurationLocalizedIntentResponse)initWithLocalizedIntentRepresentation:(id)representation languageCode:(id)code error:(id)error;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFRemoteWidgetConfigurationLocalizedIntentResponse

- (WFRemoteWidgetConfigurationLocalizedIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = WFRemoteWidgetConfigurationLocalizedIntentResponse;
  v5 = [(WFRemoteWidgetConfigurationResponse *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedIntentData"];
    localizedIntentData = v5->_localizedIntentData;
    v5->_localizedIntentData = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"languageCode"];
    languageCode = v5->_languageCode;
    v5->_languageCode = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  localizedIntentData = self->_localizedIntentData;
  coderCopy = coder;
  [coderCopy encodeObject:localizedIntentData forKey:@"localizedIntentData"];
  [coderCopy encodeObject:self->_languageCode forKey:@"languageCode"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  localizedIntent = [(WFRemoteWidgetConfigurationLocalizedIntentResponse *)self localizedIntent];
  error = [(WFRemoteWidgetConfigurationResponse *)self error];
  v6 = [v3 stringWithFormat:@"localizedIntent: %@, error: %@", localizedIntent, error];

  return v6;
}

- (INIntent)localizedIntent
{
  v22 = *MEMORY[0x1E69E9840];
  localizedIntent = self->_localizedIntent;
  if (localizedIntent)
  {
LABEL_12:
    v13 = localizedIntent;
    goto LABEL_13;
  }

  localizedIntentData = [(WFRemoteWidgetConfigurationLocalizedIntentResponse *)self localizedIntentData];

  if (localizedIntentData)
  {
    v17 = 0;
    localizedIntentData2 = [(WFRemoteWidgetConfigurationLocalizedIntentResponse *)self localizedIntentData];
    v6 = OPACKDecodeData();

    v16 = 0;
    v7 = [MEMORY[0x1E696E880] makeFromWidgetPlistableRepresentation:v6 error:&v16];
    v8 = v16;
    v9 = self->_localizedIntent;
    self->_localizedIntent = v7;

    if (v17)
    {
      v10 = getWFWidgetConfigurationLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [MEMORY[0x1E696AD98] numberWithInt:v17];
        *buf = 136315394;
        v19 = "[WFRemoteWidgetConfigurationLocalizedIntentResponse localizedIntent]";
        v20 = 2114;
        v21 = v11;
        _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Error making localized intent from intent data. Status: %{public}@", buf, 0x16u);
      }
    }

    if (v8)
    {
      v12 = getWFWidgetConfigurationLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "[WFRemoteWidgetConfigurationLocalizedIntentResponse localizedIntent]";
        v20 = 2114;
        v21 = v8;
        _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_ERROR, "%s Error making localized intent from intent data. Error: %{public}@", buf, 0x16u);
      }
    }

    localizedIntent = self->_localizedIntent;
    goto LABEL_12;
  }

  v15 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v19 = "[WFRemoteWidgetConfigurationLocalizedIntentResponse localizedIntent]";
    _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_ERROR, "%s Error making localized intent from intent data: intent data is nil", buf, 0xCu);
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (WFRemoteWidgetConfigurationLocalizedIntentResponse)initWithLocalizedIntentRepresentation:(id)representation languageCode:(id)code error:(id)error
{
  v25 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  codeCopy = code;
  v20.receiver = self;
  v20.super_class = WFRemoteWidgetConfigurationLocalizedIntentResponse;
  v10 = [(WFRemoteWidgetConfigurationResponse *)&v20 initWithError:error];
  if (v10)
  {
    if (representationCopy)
    {
      v19 = 0;
      v11 = MEMORY[0x1CCAA2D90](representationCopy, 0, &v19);
      localizedIntentData = v10->_localizedIntentData;
      v10->_localizedIntentData = v11;

      if (v19)
      {
        v13 = getWFWidgetConfigurationLogObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = [MEMORY[0x1E696AD98] numberWithInt:v19];
          *buf = 136315394;
          v22 = "[WFRemoteWidgetConfigurationLocalizedIntentResponse initWithLocalizedIntentRepresentation:languageCode:error:]";
          v23 = 2114;
          v24 = v14;
          _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s Error encoding localized intent representation: %{public}@", buf, 0x16u);
        }

        goto LABEL_7;
      }
    }

    else
    {
      v16 = getWFWidgetConfigurationLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v22 = "[WFRemoteWidgetConfigurationLocalizedIntentResponse initWithLocalizedIntentRepresentation:languageCode:error:]";
        _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_ERROR, "%s Error encoding localized intent representation: localized intent representation is nil", buf, 0xCu);
      }

      v17 = v10->_localizedIntentData;
      v10->_localizedIntentData = 0;
    }

    objc_storeStrong(&v10->_languageCode, code);
    v15 = v10;
    goto LABEL_12;
  }

LABEL_7:
  v15 = 0;
LABEL_12:

  return v15;
}

@end