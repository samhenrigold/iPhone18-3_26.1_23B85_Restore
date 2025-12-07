@interface CLKWorldClockTimeFormatter
+ (id)dayForOffset:(double)offset;
+ (id)differenceForOffset:(double)offset caps:(BOOL)caps suppressZero:(BOOL)zero size:(int64_t)size;
+ (void)initialize;
+ (void)invalidateTimeZone:(id)zone;
@end

@implementation CLKWorldClockTimeFormatter

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_invalidateTimeZone_ name:*MEMORY[0x277D766F0] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_invalidateTimeZone_ name:*MEMORY[0x277CBE780] object:0];
  }
}

+ (void)invalidateTimeZone:(id)zone
{
  [MEMORY[0x277CBEBB0] resetSystemTimeZone];
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  [_dayFormatter setTimeZone:systemTimeZone];
}

+ (id)dayForOffset:(double)offset
{
  if (!_dayFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    v5 = _dayFormatter;
    _dayFormatter = v4;

    autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    [_dayFormatter setLocale:autoupdatingCurrentLocale];

    systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
    [_dayFormatter setTimeZone:systemTimeZone];

    [_dayFormatter setDateStyle:1];
    [_dayFormatter setTimeStyle:0];
    [_dayFormatter setDoesRelativeDateFormatting:1];
  }

  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:offset];
  v9 = [_dayFormatter stringFromDate:v8];

  return v9;
}

+ (id)differenceForOffset:(double)offset caps:(BOOL)caps suppressZero:(BOOL)zero size:(int64_t)size
{
  capsCopy = caps;
  v40[1] = *MEMORY[0x277D85DE8];
  if (differenceForOffset_caps_suppressZero_size__onceToken != -1)
  {
    +[CLKWorldClockTimeFormatter differenceForOffset:caps:suppressZero:size:];
  }

  v12 = fmod(offset, 3600.0);
  if (offset >= 0.0)
  {
    offsetCopy = offset;
  }

  else
  {
    offsetCopy = -offset;
  }

  if (offset != 0.0)
  {
    if (offsetCopy >= 3600.0)
    {
      if (v12 != 0.0 && offsetCopy != 3600.0)
      {
        [differenceForOffset_caps_suppressZero_size__formatter setAllowedUnits:96];
        [differenceForOffset_caps_suppressZero_size__formatter setUnitsStyle:0];
        goto LABEL_33;
      }

      if (!capsCopy)
      {
LABEL_22:
        v18 = differenceForOffset_caps_suppressZero_size__formatter;
        v19 = 32;
LABEL_24:
        [v18 setAllowedUnits:{v19, v12}];
        [differenceForOffset_caps_suppressZero_size__formatter setUnitsStyle:3];
        goto LABEL_33;
      }

      if (size > 2)
      {
        v17 = 0;
      }

      else
      {
        v17 = off_278A1FF10[size];
      }

      v20 = CLKWorldClockLocalizedString(v17);
      v21 = MEMORY[0x277CCACA8];
      v22 = offsetCopy / 3600.0;
    }

    else
    {
      if (!capsCopy)
      {
        v18 = differenceForOffset_caps_suppressZero_size__formatter;
        v19 = 64;
        goto LABEL_24;
      }

      if (size > 2)
      {
        v15 = 0;
      }

      else
      {
        v15 = off_278A1FEF8[size];
      }

      v20 = CLKWorldClockLocalizedString(v15);
      v21 = MEMORY[0x277CCACA8];
      v22 = offsetCopy / 60.0;
    }

    [v21 localizedStringWithFormat:v20, *&v22];
    goto LABEL_32;
  }

  if (!zero)
  {
    if (capsCopy)
    {
      if (size > 2)
      {
        v16 = 0;
      }

      else
      {
        v16 = off_278A1FF10[size];
      }

      v20 = CLKWorldClockLocalizedString(v16);
      [MEMORY[0x277CCACA8] localizedStringWithFormat:v20, 0];
      v14 = LABEL_32:;

      if (v14)
      {
        goto LABEL_34;
      }

LABEL_33:
      v10 = [differenceForOffset_caps_suppressZero_size__formatter stringFromTimeInterval:offsetCopy];
      v14 = v10;
      goto LABEL_34;
    }

    goto LABEL_22;
  }

  v14 = &stru_284A20458;
LABEL_34:
  if (offset != 0.0 || !zero)
  {
    v23 = CLKLocaleCurrentNumberSystem(v10, v11);
    v24 = @"+";
    if (offset < 0.0)
    {
      v24 = @"−";
    }

    v25 = &stru_284A20458;
    if (v23 == 1)
    {
      v25 = @"\u200F";
    }

    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v25, v24, v14];

    v14 = v26;
  }

  v27 = [(__CFString *)v14 rangeOfString:@"{", v12];
  if (v27 == 0x7FFFFFFFFFFFFFFFLL || (v29 = v27, v30 = v28, v31 = -[__CFString rangeOfString:](v14, "rangeOfString:", @"}"), v31 == 0x7FFFFFFFFFFFFFFFLL) || (v33 = v31, v34 = v32, v35 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:v14], objc_msgSend(v35, "replaceCharactersInRange:withString:", v33, v34, &stru_284A20458), objc_msgSend(v35, "replaceCharactersInRange:withString:", v29, v30, &stru_284A20458), v36 = objc_msgSend(objc_alloc(MEMORY[0x277CCAB48]), "initWithString:", v35), v39 = @"CLKWorldClockCapsAttribute", v40[0] = MEMORY[0x277CBEC38], objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v40, &v39, 1), v37 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v36, "addAttributes:range:", v37, v29, v33 + ~v29), v37, v35, !v36))
  {
    v36 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v14];
  }

  return v36;
}

uint64_t __73__CLKWorldClockTimeFormatter_differenceForOffset_caps_suppressZero_size___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  v3 = differenceForOffset_caps_suppressZero_size__formatter;
  differenceForOffset_caps_suppressZero_size__formatter = v2;

  v4 = differenceForOffset_caps_suppressZero_size__formatter;

  return [v4 setUnitsStyle:3];
}

@end