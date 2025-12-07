@interface CAFCharacteristicMetadata
- (CAFCharacteristicMetadata)initWithConfig:(id)config;
- (NSString)formatString;
@end

@implementation CAFCharacteristicMetadata

- (NSString)formatString
{
  format = [(CAFCharacteristicMetadata *)self format];

  return NSStringFromCharacteristicMetadataFormat(format);
}

- (CAFCharacteristicMetadata)initWithConfig:(id)config
{
  configCopy = config;
  v32.receiver = self;
  v32.super_class = CAFCharacteristicMetadata;
  v5 = [(CAFCharacteristicMetadata *)&v32 init];
  if (!v5)
  {
    goto LABEL_56;
  }

  objc_opt_class();
  v6 = [configCopy objectForKeyedSubscript:@"format"];
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v29 = CAFCharacteristicLogging(v8);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [CAFCharacteristicMetadata initWithConfig:];
    }

    goto LABEL_40;
  }

  v5->_format = [v7 unsignedIntValue];
  objc_opt_class();
  v9 = [configCopy objectForKeyedSubscript:@"minimumValue"];
  if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  minimumValue = v5->_minimumValue;
  v5->_minimumValue = v10;

  objc_opt_class();
  v12 = [configCopy objectForKeyedSubscript:@"maximumValue"];
  if (v12 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  maximumValue = v5->_maximumValue;
  v5->_maximumValue = v13;

  objc_opt_class();
  v15 = [configCopy objectForKeyedSubscript:@"maximumLength"];
  if (v15 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  maximumLength = v5->_maximumLength;
  v5->_maximumLength = v16;

  objc_opt_class();
  v18 = [configCopy objectForKeyedSubscript:@"stepValue"];
  if (v18 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  stepValue = v5->_stepValue;
  v5->_stepValue = v19;

  objc_opt_class();
  v21 = [configCopy objectForKeyedSubscript:@"validValues"];
  if (v21 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  validValues = v5->_validValues;
  v5->_validValues = v22;

  objc_opt_class();
  v24 = [configCopy objectForKeyedSubscript:@"units"];
  if (v24 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  units = v5->_units;
  v5->_units = v25;

  format = v5->_format;
  if (format > 9)
  {
    if (format > 11)
    {
      if (format == 12)
      {
        if (!v5->_maximumLength)
        {
          v29 = CAFCharacteristicLogging(v27);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            [CAFCharacteristicMetadata initWithConfig:];
          }

          goto LABEL_40;
        }
      }

      else if (format == 13 && !v5->_maximumLength)
      {
        v29 = CAFCharacteristicLogging(v27);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [CAFCharacteristicMetadata initWithConfig:];
        }

        goto LABEL_40;
      }
    }

    else if (format == 10)
    {
      if (!v5->_maximumLength)
      {
        v29 = CAFCharacteristicLogging(v27);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [CAFCharacteristicMetadata initWithConfig:];
        }

        goto LABEL_40;
      }
    }

    else if (!v5->_maximumLength)
    {
      v29 = CAFCharacteristicLogging(v27);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [CAFCharacteristicMetadata initWithConfig:];
      }

      goto LABEL_40;
    }

    goto LABEL_55;
  }

  if ((format - 1) >= 9 || v5->_minimumValue && v5->_maximumValue && v5->_stepValue)
  {
LABEL_55:

LABEL_56:
    v30 = v5;
    goto LABEL_57;
  }

  v29 = CAFCharacteristicLogging(v27);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    [CAFCharacteristicMetadata initWithConfig:];
  }

LABEL_40:

  v30 = 0;
LABEL_57:

  return v30;
}

@end