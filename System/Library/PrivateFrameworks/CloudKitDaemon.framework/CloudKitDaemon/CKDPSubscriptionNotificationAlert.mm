@interface CKDPSubscriptionNotificationAlert
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addLocalizedArguments:(id)arguments;
- (void)addSubtitleLocalizedArguments:(id)arguments;
- (void)addTitleLocalizedArguments:(id)arguments;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPSubscriptionNotificationAlert

- (void)addLocalizedArguments:(id)arguments
{
  argumentsCopy = arguments;
  localizedArguments = self->_localizedArguments;
  v8 = argumentsCopy;
  if (!localizedArguments)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_localizedArguments;
    self->_localizedArguments = v6;

    argumentsCopy = v8;
    localizedArguments = self->_localizedArguments;
  }

  objc_msgSend_addObject_(localizedArguments, argumentsCopy, argumentsCopy);
}

- (void)addTitleLocalizedArguments:(id)arguments
{
  argumentsCopy = arguments;
  titleLocalizedArguments = self->_titleLocalizedArguments;
  v8 = argumentsCopy;
  if (!titleLocalizedArguments)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_titleLocalizedArguments;
    self->_titleLocalizedArguments = v6;

    argumentsCopy = v8;
    titleLocalizedArguments = self->_titleLocalizedArguments;
  }

  objc_msgSend_addObject_(titleLocalizedArguments, argumentsCopy, argumentsCopy);
}

- (void)addSubtitleLocalizedArguments:(id)arguments
{
  argumentsCopy = arguments;
  subtitleLocalizedArguments = self->_subtitleLocalizedArguments;
  v8 = argumentsCopy;
  if (!subtitleLocalizedArguments)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_subtitleLocalizedArguments;
    self->_subtitleLocalizedArguments = v6;

    argumentsCopy = v8;
    subtitleLocalizedArguments = self->_subtitleLocalizedArguments;
  }

  objc_msgSend_addObject_(subtitleLocalizedArguments, argumentsCopy, argumentsCopy);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPSubscriptionNotificationAlert;
  v4 = [(CKDPSubscriptionNotificationAlert *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  text = self->_text;
  if (text)
  {
    objc_msgSend_setObject_forKey_(v4, v5, text, @"text");
  }

  localizedKey = self->_localizedKey;
  if (localizedKey)
  {
    objc_msgSend_setObject_forKey_(v6, v5, localizedKey, @"localizedKey");
  }

  localizedArguments = self->_localizedArguments;
  if (localizedArguments)
  {
    objc_msgSend_setObject_forKey_(v6, v5, localizedArguments, @"localizedArguments");
  }

  actionLocKey = self->_actionLocKey;
  if (actionLocKey)
  {
    objc_msgSend_setObject_forKey_(v6, v5, actionLocKey, @"actionLocKey");
  }

  launchImage = self->_launchImage;
  if (launchImage)
  {
    objc_msgSend_setObject_forKey_(v6, v5, launchImage, @"launchImage");
  }

  soundName = self->_soundName;
  if (soundName)
  {
    objc_msgSend_setObject_forKey_(v6, v5, soundName, @"soundName");
  }

  category = self->_category;
  if (category)
  {
    objc_msgSend_setObject_forKey_(v6, v5, category, @"category");
  }

  title = self->_title;
  if (title)
  {
    objc_msgSend_setObject_forKey_(v6, v5, title, @"title");
  }

  titleLocalizedKey = self->_titleLocalizedKey;
  if (titleLocalizedKey)
  {
    objc_msgSend_setObject_forKey_(v6, v5, titleLocalizedKey, @"titleLocalizedKey");
  }

  titleLocalizedArguments = self->_titleLocalizedArguments;
  if (titleLocalizedArguments)
  {
    objc_msgSend_setObject_forKey_(v6, v5, titleLocalizedArguments, @"titleLocalizedArguments");
  }

  subtitle = self->_subtitle;
  if (subtitle)
  {
    objc_msgSend_setObject_forKey_(v6, v5, subtitle, @"subtitle");
  }

  subtitleLocalizedKey = self->_subtitleLocalizedKey;
  if (subtitleLocalizedKey)
  {
    objc_msgSend_setObject_forKey_(v6, v5, subtitleLocalizedKey, @"subtitleLocalizedKey");
  }

  subtitleLocalizedArguments = self->_subtitleLocalizedArguments;
  if (subtitleLocalizedArguments)
  {
    objc_msgSend_setObject_forKey_(v6, v5, subtitleLocalizedArguments, @"subtitleLocalizedArguments");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  v41 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_text)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_localizedKey)
  {
    PBDataWriterWriteStringField();
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = self->_localizedArguments;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v34, v40, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    do
    {
      v10 = 0;
      do
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v11, &v34, v40, 16);
    }

    while (v8);
  }

  if (self->_actionLocKey)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_launchImage)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_soundName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_category)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_titleLocalizedKey)
  {
    PBDataWriterWriteStringField();
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = self->_titleLocalizedArguments;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v30, v39, 16);
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    do
    {
      v17 = 0;
      do
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v12);
        }

        PBDataWriterWriteStringField();
        ++v17;
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v18, &v30, v39, 16);
    }

    while (v15);
  }

  if (self->_subtitle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subtitleLocalizedKey)
  {
    PBDataWriterWriteStringField();
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = self->_subtitleLocalizedArguments;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v26, v38, 16);
  if (v21)
  {
    v22 = v21;
    v23 = *v27;
    do
    {
      v24 = 0;
      do
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(v19);
        }

        PBDataWriterWriteStringField();
        ++v24;
      }

      while (v22 != v24);
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v25, &v26, v38, 16);
    }

    while (v22);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  text = self->_text;
  if (text)
  {
    objc_msgSend_setText_(toCopy, v4, text);
  }

  localizedKey = self->_localizedKey;
  if (localizedKey)
  {
    objc_msgSend_setLocalizedKey_(toCopy, v4, localizedKey);
  }

  if (objc_msgSend_localizedArgumentsCount(self, v4, localizedKey))
  {
    objc_msgSend_clearLocalizedArguments(toCopy, v7, v8);
    v11 = objc_msgSend_localizedArgumentsCount(self, v9, v10);
    if (v11)
    {
      v12 = v11;
      for (i = 0; i != v12; ++i)
      {
        v14 = objc_msgSend_localizedArgumentsAtIndex_(self, v7, i);
        objc_msgSend_addLocalizedArguments_(toCopy, v15, v14);
      }
    }
  }

  actionLocKey = self->_actionLocKey;
  if (actionLocKey)
  {
    objc_msgSend_setActionLocKey_(toCopy, v7, actionLocKey);
  }

  launchImage = self->_launchImage;
  if (launchImage)
  {
    objc_msgSend_setLaunchImage_(toCopy, v7, launchImage);
  }

  soundName = self->_soundName;
  if (soundName)
  {
    objc_msgSend_setSoundName_(toCopy, v7, soundName);
  }

  category = self->_category;
  if (category)
  {
    objc_msgSend_setCategory_(toCopy, v7, category);
  }

  title = self->_title;
  if (title)
  {
    objc_msgSend_setTitle_(toCopy, v7, title);
  }

  titleLocalizedKey = self->_titleLocalizedKey;
  if (titleLocalizedKey)
  {
    objc_msgSend_setTitleLocalizedKey_(toCopy, v7, titleLocalizedKey);
  }

  if (objc_msgSend_titleLocalizedArgumentsCount(self, v7, titleLocalizedKey))
  {
    objc_msgSend_clearTitleLocalizedArguments(toCopy, v22, v23);
    v26 = objc_msgSend_titleLocalizedArgumentsCount(self, v24, v25);
    if (v26)
    {
      v27 = v26;
      for (j = 0; j != v27; ++j)
      {
        v29 = objc_msgSend_titleLocalizedArgumentsAtIndex_(self, v22, j);
        objc_msgSend_addTitleLocalizedArguments_(toCopy, v30, v29);
      }
    }
  }

  subtitle = self->_subtitle;
  if (subtitle)
  {
    objc_msgSend_setSubtitle_(toCopy, v22, subtitle);
  }

  subtitleLocalizedKey = self->_subtitleLocalizedKey;
  if (subtitleLocalizedKey)
  {
    objc_msgSend_setSubtitleLocalizedKey_(toCopy, v22, subtitleLocalizedKey);
  }

  if (objc_msgSend_subtitleLocalizedArgumentsCount(self, v22, subtitleLocalizedKey))
  {
    objc_msgSend_clearSubtitleLocalizedArguments(toCopy, v33, v34);
    v37 = objc_msgSend_subtitleLocalizedArgumentsCount(self, v35, v36);
    if (v37)
    {
      v39 = v37;
      for (k = 0; k != v39; ++k)
      {
        v41 = objc_msgSend_subtitleLocalizedArgumentsAtIndex_(self, v38, k);
        objc_msgSend_addSubtitleLocalizedArguments_(toCopy, v42, v41);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v84 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_text, v11, zone);
  v13 = v10[10];
  v10[10] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_localizedKey, v14, zone);
  v16 = v10[5];
  v10[5] = v15;

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v17 = self->_localizedArguments;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v77, v83, 16);
  if (v19)
  {
    v21 = v19;
    v22 = *v78;
    do
    {
      v23 = 0;
      do
      {
        if (*v78 != v22)
        {
          objc_enumerationMutation(v17);
        }

        v24 = objc_msgSend_copyWithZone_(*(*(&v77 + 1) + 8 * v23), v20, zone);
        objc_msgSend_addLocalizedArguments_(v10, v25, v24);

        ++v23;
      }

      while (v21 != v23);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v77, v83, 16);
    }

    while (v21);
  }

  v27 = objc_msgSend_copyWithZone_(self->_actionLocKey, v26, zone);
  v28 = v10[1];
  v10[1] = v27;

  v30 = objc_msgSend_copyWithZone_(self->_launchImage, v29, zone);
  v31 = v10[3];
  v10[3] = v30;

  v33 = objc_msgSend_copyWithZone_(self->_soundName, v32, zone);
  v34 = v10[6];
  v10[6] = v33;

  v36 = objc_msgSend_copyWithZone_(self->_category, v35, zone);
  v37 = v10[2];
  v10[2] = v36;

  v39 = objc_msgSend_copyWithZone_(self->_title, v38, zone);
  v40 = v10[11];
  v10[11] = v39;

  v42 = objc_msgSend_copyWithZone_(self->_titleLocalizedKey, v41, zone);
  v43 = v10[13];
  v10[13] = v42;

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v44 = self->_titleLocalizedArguments;
  v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v45, &v73, v82, 16);
  if (v46)
  {
    v48 = v46;
    v49 = *v74;
    do
    {
      v50 = 0;
      do
      {
        if (*v74 != v49)
        {
          objc_enumerationMutation(v44);
        }

        v51 = objc_msgSend_copyWithZone_(*(*(&v73 + 1) + 8 * v50), v47, zone);
        objc_msgSend_addTitleLocalizedArguments_(v10, v52, v51);

        ++v50;
      }

      while (v48 != v50);
      v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v47, &v73, v82, 16);
    }

    while (v48);
  }

  v54 = objc_msgSend_copyWithZone_(self->_subtitle, v53, zone);
  v55 = v10[7];
  v10[7] = v54;

  v57 = objc_msgSend_copyWithZone_(self->_subtitleLocalizedKey, v56, zone);
  v58 = v10[9];
  v10[9] = v57;

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v59 = self->_subtitleLocalizedArguments;
  v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v60, &v69, v81, 16);
  if (v61)
  {
    v63 = v61;
    v64 = *v70;
    do
    {
      v65 = 0;
      do
      {
        if (*v70 != v64)
        {
          objc_enumerationMutation(v59);
        }

        v66 = objc_msgSend_copyWithZone_(*(*(&v69 + 1) + 8 * v65), v62, zone, v69);
        objc_msgSend_addSubtitleLocalizedArguments_(v10, v67, v66);

        ++v65;
      }

      while (v63 != v65);
      v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v62, &v69, v81, 16);
    }

    while (v63);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((text = self->_text, v9 = equalCopy[10], !(text | v9)) || objc_msgSend_isEqual_(text, v7, v9)) && ((localizedKey = self->_localizedKey, v11 = equalCopy[5], !(localizedKey | v11)) || objc_msgSend_isEqual_(localizedKey, v7, v11)) && ((localizedArguments = self->_localizedArguments, v13 = equalCopy[4], !(localizedArguments | v13)) || objc_msgSend_isEqual_(localizedArguments, v7, v13)) && ((actionLocKey = self->_actionLocKey, v15 = equalCopy[1], !(actionLocKey | v15)) || objc_msgSend_isEqual_(actionLocKey, v7, v15)) && ((launchImage = self->_launchImage, v17 = equalCopy[3], !(launchImage | v17)) || objc_msgSend_isEqual_(launchImage, v7, v17)) && ((soundName = self->_soundName, v19 = equalCopy[6], !(soundName | v19)) || objc_msgSend_isEqual_(soundName, v7, v19)) && ((category = self->_category, v21 = equalCopy[2], !(category | v21)) || objc_msgSend_isEqual_(category, v7, v21)) && ((title = self->_title, v23 = equalCopy[11], !(title | v23)) || objc_msgSend_isEqual_(title, v7, v23)) && ((titleLocalizedKey = self->_titleLocalizedKey, v25 = equalCopy[13], !(titleLocalizedKey | v25)) || objc_msgSend_isEqual_(titleLocalizedKey, v7, v25)) && ((titleLocalizedArguments = self->_titleLocalizedArguments, v27 = equalCopy[12], !(titleLocalizedArguments | v27)) || objc_msgSend_isEqual_(titleLocalizedArguments, v7, v27)) && ((subtitle = self->_subtitle, v29 = equalCopy[7], !(subtitle | v29)) || objc_msgSend_isEqual_(subtitle, v7, v29)) && ((subtitleLocalizedKey = self->_subtitleLocalizedKey, v31 = equalCopy[9], !(subtitleLocalizedKey | v31)) || objc_msgSend_isEqual_(subtitleLocalizedKey, v7, v31)))
  {
    subtitleLocalizedArguments = self->_subtitleLocalizedArguments;
    v33 = equalCopy[8];
    if (subtitleLocalizedArguments | v33)
    {
      isEqual = objc_msgSend_isEqual_(subtitleLocalizedArguments, v7, v33);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_text, a2, v2);
  v7 = objc_msgSend_hash(self->_localizedKey, v5, v6) ^ v4;
  v10 = objc_msgSend_hash(self->_localizedArguments, v8, v9);
  v13 = v7 ^ v10 ^ objc_msgSend_hash(self->_actionLocKey, v11, v12);
  v16 = objc_msgSend_hash(self->_launchImage, v14, v15);
  v19 = v16 ^ objc_msgSend_hash(self->_soundName, v17, v18);
  v22 = v13 ^ v19 ^ objc_msgSend_hash(self->_category, v20, v21);
  v25 = objc_msgSend_hash(self->_title, v23, v24);
  v28 = v25 ^ objc_msgSend_hash(self->_titleLocalizedKey, v26, v27);
  v31 = v28 ^ objc_msgSend_hash(self->_titleLocalizedArguments, v29, v30);
  v34 = v22 ^ v31 ^ objc_msgSend_hash(self->_subtitle, v32, v33);
  v37 = objc_msgSend_hash(self->_subtitleLocalizedKey, v35, v36);
  return v34 ^ v37 ^ objc_msgSend_hash(self->_subtitleLocalizedArguments, v38, v39);
}

- (void)mergeFrom:(id)from
{
  v54 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v6 = *(fromCopy + 10);
  if (v6)
  {
    objc_msgSend_setText_(self, v4, v6);
  }

  v7 = *(fromCopy + 5);
  if (v7)
  {
    objc_msgSend_setLocalizedKey_(self, v4, v7);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v8 = *(fromCopy + 4);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v47, v53, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v48;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v48 != v13)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_addLocalizedArguments_(self, v11, *(*(&v47 + 1) + 8 * i));
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v47, v53, 16);
    }

    while (v12);
  }

  v16 = *(fromCopy + 1);
  if (v16)
  {
    objc_msgSend_setActionLocKey_(self, v15, v16);
  }

  v17 = *(fromCopy + 3);
  if (v17)
  {
    objc_msgSend_setLaunchImage_(self, v15, v17);
  }

  v18 = *(fromCopy + 6);
  if (v18)
  {
    objc_msgSend_setSoundName_(self, v15, v18);
  }

  v19 = *(fromCopy + 2);
  if (v19)
  {
    objc_msgSend_setCategory_(self, v15, v19);
  }

  v20 = *(fromCopy + 11);
  if (v20)
  {
    objc_msgSend_setTitle_(self, v15, v20);
  }

  v21 = *(fromCopy + 13);
  if (v21)
  {
    objc_msgSend_setTitleLocalizedKey_(self, v15, v21);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v22 = *(fromCopy + 12);
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v43, v52, 16);
  if (v24)
  {
    v26 = v24;
    v27 = *v44;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v44 != v27)
        {
          objc_enumerationMutation(v22);
        }

        objc_msgSend_addTitleLocalizedArguments_(self, v25, *(*(&v43 + 1) + 8 * j));
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v43, v52, 16);
    }

    while (v26);
  }

  v30 = *(fromCopy + 7);
  if (v30)
  {
    objc_msgSend_setSubtitle_(self, v29, v30);
  }

  v31 = *(fromCopy + 9);
  if (v31)
  {
    objc_msgSend_setSubtitleLocalizedKey_(self, v29, v31);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v32 = *(fromCopy + 8);
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v39, v51, 16);
  if (v34)
  {
    v36 = v34;
    v37 = *v40;
    do
    {
      for (k = 0; k != v36; ++k)
      {
        if (*v40 != v37)
        {
          objc_enumerationMutation(v32);
        }

        objc_msgSend_addSubtitleLocalizedArguments_(self, v35, *(*(&v39 + 1) + 8 * k), v39);
      }

      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v39, v51, 16);
    }

    while (v36);
  }
}

@end