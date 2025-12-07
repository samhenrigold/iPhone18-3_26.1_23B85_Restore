@interface WLDetailItem
+ (id)contexts:(id)contexts;
+ (id)importDescriptionForType:(int64_t)type import:(unint64_t)import total:(unint64_t)total;
+ (id)items:(id)items;
+ (id)items:(id)items size:(unint64_t *)size;
- (WLDetailItem)initWithType:(int64_t)type count:(unint64_t)count secondaryText:(id)text alternativeTextUsed:(BOOL)used symbolFilled:(BOOL)filled symbolTintColor:(id)color;
- (WLDetailItem)initWithType:(int64_t)type secondaryText:(id)text detailText:(id)detailText showDetailDisclosureButton:(BOOL)button failed:(BOOL)failed;
@end

@implementation WLDetailItem

- (WLDetailItem)initWithType:(int64_t)type count:(unint64_t)count secondaryText:(id)text alternativeTextUsed:(BOOL)used symbolFilled:(BOOL)filled symbolTintColor:(id)color
{
  filledCopy = filled;
  textCopy = text;
  colorCopy = color;
  v21.receiver = self;
  v21.super_class = WLDetailItem;
  v14 = [(WLDetailItem *)&v21 init];
  v15 = v14;
  if (v14)
  {
    [(WLDetailItem *)v14 setSecondaryText:textCopy];
    [(WLDetailItem *)v15 setSymbolTintColor:colorCopy];
    switch(type)
    {
      case 0:
        if (filledCopy)
        {
          v16 = @"message.fill";
        }

        else
        {
          v16 = @"message";
        }

        goto LABEL_47;
      case 1:
        if (filledCopy)
        {
          v16 = @"person.2.fill";
        }

        else
        {
          v16 = @"person.2";
        }

        goto LABEL_47;
      case 2:
        if (filledCopy)
        {
          v16 = @"person.2.fill";
        }

        else
        {
          v16 = @"person.2";
        }

        goto LABEL_47;
      case 3:
        [(WLDetailItem *)v15 setSymbol:@"calendar"];
        goto LABEL_48;
      case 4:
        if (filledCopy)
        {
          v16 = @"bookmark.fill";
        }

        else
        {
          v16 = @"bookmark";
        }

        goto LABEL_47;
      case 5:
        if (filledCopy)
        {
          v16 = @"folder.fill";
        }

        else
        {
          v16 = @"folder";
        }

        goto LABEL_47;
      case 6:
        if (filledCopy)
        {
          v16 = @"photo.fill";
        }

        else
        {
          v16 = @"photo";
        }

        goto LABEL_47;
      case 7:
        if (filledCopy)
        {
          v16 = @"photo.fill";
        }

        else
        {
          v16 = @"photo";
        }

        goto LABEL_47;
      case 8:
        if (filledCopy)
        {
          v16 = @"photo.fill.on.rectangle.fill";
        }

        else
        {
          v16 = @"photo.on.rectangle";
        }

        goto LABEL_47;
      case 9:
        if (filledCopy)
        {
          v16 = @"waveform.circle.fill";
        }

        else
        {
          v16 = @"waveform.circle";
        }

        goto LABEL_47;
      case 10:
        if (filledCopy)
        {
          v17 = @"app.badge.fill";
        }

        else
        {
          v17 = @"app.badge";
        }

        goto LABEL_35;
      case 11:
        if (filledCopy)
        {
          v16 = @"envelope.fill";
        }

        else
        {
          v16 = @"envelope";
        }

        goto LABEL_47;
      case 12:
        if (filledCopy)
        {
          v16 = @"app.badge.fill";
        }

        else
        {
          v16 = @"app.badge";
        }

LABEL_47:
        [(WLDetailItem *)v15 setSymbol:v16];
LABEL_48:
        v19 = WLLocalizedString();
        [(WLDetailItem *)v15 setText:v19];

        break;
      case 14:
        [(WLDetailItem *)v15 setSymbol:@"textformat.size"];
        goto LABEL_36;
      case 15:
        [(WLDetailItem *)v15 setSymbol:@"dot.arrowtriangles.up.right.down.left.circle"];
        goto LABEL_36;
      case 16:
        if (filledCopy)
        {
          v17 = @"simcard.fill";
        }

        else
        {
          v17 = @"simcard";
        }

LABEL_35:
        [(WLDetailItem *)v15 setSymbol:v17];
LABEL_36:
        v18 = WLLocalizedString();
        [(WLDetailItem *)v15 setText:v18];

        [(WLDetailItem *)v15 setSecondaryText:0];
        break;
      default:
        break;
    }
  }

  return v15;
}

- (WLDetailItem)initWithType:(int64_t)type secondaryText:(id)text detailText:(id)detailText showDetailDisclosureButton:(BOOL)button failed:(BOOL)failed
{
  failedCopy = failed;
  buttonCopy = button;
  textCopy = text;
  detailTextCopy = detailText;
  v18.receiver = self;
  v18.super_class = WLDetailItem;
  v14 = [(WLDetailItem *)&v18 init];
  v15 = v14;
  if (v14)
  {
    [(WLDetailItem *)v14 setSecondaryText:textCopy];
    [(WLDetailItem *)v15 setDetailText:detailTextCopy];
    [(WLDetailItem *)v15 setShowDetailDisclosureButton:buttonCopy];
    [(WLDetailItem *)v15 setFailed:failedCopy];
    if (type <= 0x10 && ((0x1DFFFu >> type) & 1) != 0)
    {
      v16 = WLLocalizedString();
      [(WLDetailItem *)v15 setText:v16];
    }
  }

  return v15;
}

+ (id)contexts:(id)contexts
{
  v24[17] = *MEMORY[0x277D85DE8];
  v23[0] = &unk_2882DF448;
  contextsCopy = contexts;
  message = [contextsCopy message];
  v24[0] = message;
  v23[1] = &unk_2882DF460;
  contact = [contextsCopy contact];
  v24[1] = contact;
  v23[2] = &unk_2882DF478;
  callHistory = [contextsCopy callHistory];
  v24[2] = callHistory;
  v23[3] = &unk_2882DF490;
  calendar = [contextsCopy calendar];
  v24[3] = calendar;
  v23[4] = &unk_2882DF4A8;
  bookmark = [contextsCopy bookmark];
  v24[4] = bookmark;
  v23[5] = &unk_2882DF4C0;
  file = [contextsCopy file];
  v24[5] = file;
  v23[6] = &unk_2882DF4D8;
  image = [contextsCopy image];
  v24[6] = image;
  v23[7] = &unk_2882DF4F0;
  video = [contextsCopy video];
  v24[7] = video;
  v23[8] = &unk_2882DF508;
  album = [contextsCopy album];
  v24[8] = album;
  v23[9] = &unk_2882DF520;
  voiceMemo = [contextsCopy voiceMemo];
  v24[9] = voiceMemo;
  v23[10] = &unk_2882DF538;
  account = [contextsCopy account];
  v24[10] = account;
  v23[11] = &unk_2882DF550;
  application = [contextsCopy application];
  v24[11] = application;
  v23[12] = &unk_2882DF568;
  placeholder = [contextsCopy placeholder];
  v24[12] = placeholder;
  v23[13] = &unk_2882DF598;
  accessibilitySetting = [contextsCopy accessibilitySetting];
  v24[13] = accessibilitySetting;
  v23[14] = &unk_2882DF5B0;
  displaySetting = [contextsCopy displaySetting];
  v24[14] = displaySetting;
  v23[15] = &unk_2882DF5C8;
  container = [contextsCopy container];
  v24[15] = container;
  v23[16] = &unk_2882DF580;
  v12 = [contextsCopy sim];

  v24[16] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:17];

  return v13;
}

+ (id)items:(id)items size:(unint64_t *)size
{
  sizeCopy = size;
  v39 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = +[WLDetailItem order];
  v26 = itemsCopy;
  v31 = [WLDetailItem contexts:itemsCopy];
  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v6 setNumberStyle:1];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v5;
  v33 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (!v33)
  {
    v32 = 0;
    goto LABEL_30;
  }

  v32 = 0;
  v30 = *v35;
  v7 = 0x277CCA000uLL;
  do
  {
    for (i = 0; i != v33; ++i)
    {
      if (*v35 != v30)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v34 + 1) + 8 * i);
      integerValue = [v9 integerValue];
      v11 = [v31 objectForKey:v9];
      if ([v11 importCount] || objc_msgSend(v11, "importErrorCount"))
      {
        v12 = [*(v7 + 2992) numberWithUnsignedLongLong:{objc_msgSend(v11, "importCount")}];
        v13 = [v6 stringFromNumber:v12];

        if (integerValue == 12 && ![v11 importCount] && objc_msgSend(v11, "importErrorCount"))
        {

          v13 = 0;
        }

        if ([v11 importCount])
        {
          v14 = 1;
        }

        else
        {
          v14 = (integerValue - 14) >= 3;
        }

        if (v14)
        {
          v15 = -[WLDetailItem initWithType:count:secondaryText:alternativeTextUsed:symbolFilled:symbolTintColor:]([WLDetailItem alloc], "initWithType:count:secondaryText:alternativeTextUsed:symbolFilled:symbolTintColor:", integerValue, [v11 importCount], v13, 0, 1, 0);
          [v28 addObject:v15];
        }

        else
        {
          v15 = 0;
        }

        if ([v11 importErrorCount])
        {
          v16 = v7;
          v17 = [*(v7 + 2992) numberWithUnsignedLongLong:{objc_msgSend(v11, "importErrorCount")}];
          v18 = [v6 stringFromNumber:v17];

          v19 = [WLDetailItem alloc];
          importErrorCount = [v11 importErrorCount];
          tertiaryLabelColor = [MEMORY[0x277D75348] tertiaryLabelColor];
          v22 = [(WLDetailItem *)v19 initWithType:integerValue count:importErrorCount secondaryText:v18 alternativeTextUsed:1 symbolFilled:0 symbolTintColor:tertiaryLabelColor];

          if (integerValue == 10 || integerValue == 12)
          {
            v7 = v16;
LABEL_25:

            goto LABEL_26;
          }

          [v27 addObject:v22];
          v7 = v16;
        }

        else
        {
          v18 = v13;
          v22 = v15;
        }

        v32 += [v11 size];
        goto LABEL_25;
      }

LABEL_26:
    }

    v33 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  }

  while (v33);
LABEL_30:

  [v25 addObject:v28];
  if ([v27 count])
  {
    [v25 addObject:v27];
  }

  if (sizeCopy)
  {
    *sizeCopy = v32;
  }

  return v25;
}

+ (id)items:(id)items
{
  v55 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v4 = +[WLDetailItem order];
  v38 = itemsCopy;
  v5 = [WLDetailItem contexts:itemsCopy];
  v6 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2882DF550, &unk_2882DF5C8, 0}];
  v48 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2882DF598, &unk_2882DF5B0, &unk_2882DF580, 0}];
  v42 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2882DF4D8, &unk_2882DF4F0, &unk_2882DF520, 0}];
  v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v37 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v37 setNumberStyle:1];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v7)
  {
    v8 = v7;
    v49 = *v51;
    v40 = v6;
    v41 = v5;
    do
    {
      v9 = 0;
      v45 = v8;
      do
      {
        if (*v51 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v50 + 1) + 8 * v9);
        integerValue = [v10 integerValue];
        v12 = [v5 objectForKeyedSubscript:v10];
        if ([v12 importCount] || objc_msgSend(v12, "importErrorCount"))
        {
          if ([v48 containsObject:v10])
          {
            if (integerValue == 16 && [v12 importErrorCount])
            {
              v13 = WLLocalizedString();
              v14 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"DETAIL_ITEM_WARNING_DESCRIPTION_FOR_SIM"];
              v15 = WLLocalizedString();

              v16 = [[WLDetailItem alloc] initWithType:16 secondaryText:v13 detailText:v15 showDetailDisclosureButton:1 failed:1];
              [v44 addObject:v16];

LABEL_17:
              goto LABEL_18;
            }

            v13 = WLLocalizedString();
          }

          else
          {
            if ([v12 importErrorCount] && (objc_msgSend(v6, "containsObject:", v10) & 1) == 0)
            {
              v20 = MEMORY[0x277CCACA8];
              v21 = WLLocalizedString();
              v13 = [v20 localizedStringWithFormat:v21, objc_msgSend(v12, "importErrorCount") + objc_msgSend(v12, "importCount")];

              v22 = objc_alloc_init(MEMORY[0x277CCAB68]);
              v23 = +[WLDetailItem importDescriptionForType:import:total:](WLDetailItem, "importDescriptionForType:import:total:", integerValue, [v12 importCount], objc_msgSend(v12, "importErrorCount") + objc_msgSend(v12, "importCount"));
              v43 = v23;
              if ([v23 length])
              {
                [v22 appendString:v23];
              }

              else
              {
                v39 = MEMORY[0x277CCACA8];
                v24 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"DETAIL_ITEM_WARNING_DESCRIPTION_TRANFERRED_%lld_%lld"];
                v25 = WLLocalizedString();
                v26 = [v39 localizedStringWithFormat:v25, objc_msgSend(v12, "importCount"), objc_msgSend(v12, "importErrorCount") + objc_msgSend(v12, "importCount")];
                [v22 appendString:v26];
              }

              [v22 appendString:@"\n\n"];
              v6 = v40;
              if ([v42 containsObject:v10])
              {
                v27 = MEMORY[0x277CCACA8];
                v28 = WLLocalizedString();
                v29 = [v27 localizedStringWithFormat:v28, objc_msgSend(v12, "importErrorCount")];
                [v22 appendString:v29];
              }

              else
              {
                v30 = MEMORY[0x277CCACA8];
                if (integerValue == 8)
                {
                  v31 = @"DETAIL_ITEM_WARNING_DESCRITPION_IMPORTED_PHOTO_ALBUM_%lld";
                }

                else
                {
                  v31 = @"DETAIL_ITEM_WARNING_DESCRITPION_IMPORTED_%lld";
                }

                v28 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:v31];
                v29 = WLLocalizedString();
                v32 = [v30 localizedStringWithFormat:v29, objc_msgSend(v12, "importErrorCount")];
                [v22 appendString:v32];
              }

              v5 = v41;

              [v22 appendString:@" "];
              v33 = WLLocalizedString();
              [v22 appendString:v33];

              v16 = [[WLDetailItem alloc] initWithType:integerValue secondaryText:v13 detailText:v22 showDetailDisclosureButton:1 failed:0];
              [v44 addObject:v16];

              v8 = v45;
              goto LABEL_17;
            }

            v17 = MEMORY[0x277CCACA8];
            v18 = WLLocalizedString();
            importCount = [v12 importCount];
            v19 = v17;
            v8 = v45;
            v13 = [v19 localizedStringWithFormat:v18, importCount];
          }

          v16 = [[WLDetailItem alloc] initWithType:integerValue secondaryText:v13 detailText:0 showDetailDisclosureButton:0 failed:0];
          [v47 addObject:v16];
          goto LABEL_17;
        }

LABEL_18:

        ++v9;
      }

      while (v8 != v9);
      v34 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
      v8 = v34;
    }

    while (v34);
  }

  [v44 addObjectsFromArray:v47];

  return v44;
}

+ (id)importDescriptionForType:(int64_t)type import:(unint64_t)import total:(unint64_t)total
{
  if (type <= 0xF && ((0xCFFFu >> type) & 1) != 0)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = WLLocalizedString();
    total = [v7 localizedStringWithFormat:v8, import, total];
  }

  else
  {
    total = 0;
  }

  return total;
}

@end