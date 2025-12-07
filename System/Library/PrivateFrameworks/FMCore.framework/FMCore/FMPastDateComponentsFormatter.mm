@interface FMPastDateComponentsFormatter
- (id)stringForObjectValue:(id)value withReferenceDate:(id)date;
@end

@implementation FMPastDateComponentsFormatter

- (id)stringForObjectValue:(id)value withReferenceDate:(id)date
{
  v22 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  dateCopy = date;
  if (!valueCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v12 = 0;
    goto LABEL_27;
  }

  allowedUnits = [(NSDateComponentsFormatter *)self allowedUnits];
  if (!allowedUnits)
  {
    goto LABEL_8;
  }

  v9 = 0;
  do
  {
    v9 += allowedUnits & 1;
    v10 = allowedUnits > 1;
    allowedUnits >>= 1;
  }

  while (v10);
  if (v9 == 1)
  {
    v11 = valueCopy;
    if ([(NSDateComponentsFormatter *)self allowedUnits]== 128)
    {
      second = [v11 second];
      v14 = second;
    }

    else if ([(NSDateComponentsFormatter *)self allowedUnits]== 64)
    {
      second = [v11 minute];
      v14 = second;
    }

    else
    {
      second = [(NSDateComponentsFormatter *)self allowedUnits];
      if (second != 32)
      {
        goto LABEL_21;
      }

      second = [v11 hour];
      v14 = second;
    }

    if (v14 < 0)
    {
      [(NSDateComponentsFormatter *)self unitsStyle];
      [(NSDateComponentsFormatter *)self formattingContext];
      calendar = [(NSDateComponentsFormatter *)self calendar];
      locale = [calendar locale];
      localeIdentifier = [locale localeIdentifier];
      [localeIdentifier UTF8String];
      ureldatefmt_open();

      v19 = ureldatefmt_formatNumeric();
      v20 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:2 * v19 + 2];
      [v20 mutableBytes];
      [v20 length];
      ureldatefmt_formatNumeric();
      ureldatefmt_close();
      v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:objc_msgSend(v20 length:{"mutableBytes"), v19}];

      v15 = v12;
LABEL_25:

      goto LABEL_26;
    }

LABEL_21:
    v15 = LogCategory_Unspecified(second);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [FMPastDateComponentsFormatter stringForObjectValue:withReferenceDate:];
    }

    v12 = 0;
    goto LABEL_25;
  }

  if (v9)
  {
    v11 = LogCategory_Unspecified(allowedUnits);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [FMPastDateComponentsFormatter stringForObjectValue:withReferenceDate:];
    }

    goto LABEL_15;
  }

LABEL_8:
  v11 = LogCategory_Unspecified(allowedUnits);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [FMPastDateComponentsFormatter stringForObjectValue:withReferenceDate:];
  }

LABEL_15:
  v12 = 0;
LABEL_26:

LABEL_27:

  return v12;
}

@end