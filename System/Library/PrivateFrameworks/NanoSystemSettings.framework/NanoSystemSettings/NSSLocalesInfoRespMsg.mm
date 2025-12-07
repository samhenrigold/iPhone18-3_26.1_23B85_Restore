@interface NSSLocalesInfoRespMsg
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDefaultCalendars:(id)calendars;
- (void)addLocaleIdentifiers:(id)identifiers;
- (void)addNumberingSystems:(id)systems;
- (void)addSupportedCalendars:(id)calendars;
- (void)addSystemLanguages:(id)languages;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NSSLocalesInfoRespMsg

- (void)addSystemLanguages:(id)languages
{
  languagesCopy = languages;
  systemLanguages = self->_systemLanguages;
  v8 = languagesCopy;
  if (!systemLanguages)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_systemLanguages;
    self->_systemLanguages = v6;

    languagesCopy = v8;
    systemLanguages = self->_systemLanguages;
  }

  [(NSMutableArray *)systemLanguages addObject:languagesCopy];
}

- (void)addLocaleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  localeIdentifiers = self->_localeIdentifiers;
  v8 = identifiersCopy;
  if (!localeIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_localeIdentifiers;
    self->_localeIdentifiers = v6;

    identifiersCopy = v8;
    localeIdentifiers = self->_localeIdentifiers;
  }

  [(NSMutableArray *)localeIdentifiers addObject:identifiersCopy];
}

- (void)addSupportedCalendars:(id)calendars
{
  calendarsCopy = calendars;
  supportedCalendars = self->_supportedCalendars;
  v8 = calendarsCopy;
  if (!supportedCalendars)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_supportedCalendars;
    self->_supportedCalendars = v6;

    calendarsCopy = v8;
    supportedCalendars = self->_supportedCalendars;
  }

  [(NSMutableArray *)supportedCalendars addObject:calendarsCopy];
}

- (void)addDefaultCalendars:(id)calendars
{
  calendarsCopy = calendars;
  defaultCalendars = self->_defaultCalendars;
  v8 = calendarsCopy;
  if (!defaultCalendars)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_defaultCalendars;
    self->_defaultCalendars = v6;

    calendarsCopy = v8;
    defaultCalendars = self->_defaultCalendars;
  }

  [(NSMutableArray *)defaultCalendars addObject:calendarsCopy];
}

- (void)addNumberingSystems:(id)systems
{
  systemsCopy = systems;
  numberingSystems = self->_numberingSystems;
  v8 = systemsCopy;
  if (!numberingSystems)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_numberingSystems;
    self->_numberingSystems = v6;

    systemsCopy = v8;
    numberingSystems = self->_numberingSystems;
  }

  [(NSMutableArray *)numberingSystems addObject:systemsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NSSLocalesInfoRespMsg;
  v4 = [(NSSLocalesInfoRespMsg *)&v8 description];
  dictionaryRepresentation = [(NSSLocalesInfoRespMsg *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v34 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  systemLanguages = self->_systemLanguages;
  if (systemLanguages)
  {
    [dictionary setObject:systemLanguages forKey:@"systemLanguages"];
  }

  localeIdentifiers = self->_localeIdentifiers;
  if (localeIdentifiers)
  {
    [v4 setObject:localeIdentifiers forKey:@"localeIdentifiers"];
  }

  buildVersion = self->_buildVersion;
  if (buildVersion)
  {
    [v4 setObject:buildVersion forKey:@"buildVersion"];
  }

  supportedCalendars = self->_supportedCalendars;
  if (supportedCalendars)
  {
    [v4 setObject:supportedCalendars forKey:@"supportedCalendars"];
  }

  if ([(NSMutableArray *)self->_defaultCalendars count])
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_defaultCalendars, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = self->_defaultCalendars;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:dictionaryRepresentation];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v12);
    }

    [v4 setObject:v9 forKey:@"defaultCalendars"];
  }

  if ([(NSMutableArray *)self->_numberingSystems count])
  {
    v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_numberingSystems, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = self->_numberingSystems;
    v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v25;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v17);
          }

          dictionaryRepresentation2 = [*(*(&v24 + 1) + 8 * j) dictionaryRepresentation];
          [v16 addObject:dictionaryRepresentation2];
        }

        v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v19);
    }

    [v4 setObject:v16 forKey:@"numberingSystems"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v55 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v5 = self->_systemLanguages;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v47;
    do
    {
      v9 = 0;
      do
      {
        if (*v47 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v7);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = self->_localeIdentifiers;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v42 objects:v53 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v43;
    do
    {
      v14 = 0;
      do
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteStringField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v42 objects:v53 count:16];
    }

    while (v12);
  }

  if (self->_buildVersion)
  {
    PBDataWriterWriteStringField();
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = self->_supportedCalendars;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v38 objects:v52 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v39;
    do
    {
      v19 = 0;
      do
      {
        if (*v39 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteStringField();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v38 objects:v52 count:16];
    }

    while (v17);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v20 = self->_defaultCalendars;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v34 objects:v51 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v35;
    do
    {
      v24 = 0;
      do
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(v20);
        }

        PBDataWriterWriteSubmessage();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v34 objects:v51 count:16];
    }

    while (v22);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v25 = self->_numberingSystems;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v30 objects:v50 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v31;
    do
    {
      v29 = 0;
      do
      {
        if (*v31 != v28)
        {
          objc_enumerationMutation(v25);
        }

        PBDataWriterWriteSubmessage();
        ++v29;
      }

      while (v27 != v29);
      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v30 objects:v50 count:16];
    }

    while (v27);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(NSSLocalesInfoRespMsg *)self systemLanguagesCount])
  {
    [toCopy clearSystemLanguages];
    systemLanguagesCount = [(NSSLocalesInfoRespMsg *)self systemLanguagesCount];
    if (systemLanguagesCount)
    {
      v5 = systemLanguagesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NSSLocalesInfoRespMsg *)self systemLanguagesAtIndex:i];
        [toCopy addSystemLanguages:v7];
      }
    }
  }

  if ([(NSSLocalesInfoRespMsg *)self localeIdentifiersCount])
  {
    [toCopy clearLocaleIdentifiers];
    localeIdentifiersCount = [(NSSLocalesInfoRespMsg *)self localeIdentifiersCount];
    if (localeIdentifiersCount)
    {
      v9 = localeIdentifiersCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(NSSLocalesInfoRespMsg *)self localeIdentifiersAtIndex:j];
        [toCopy addLocaleIdentifiers:v11];
      }
    }
  }

  if (self->_buildVersion)
  {
    [toCopy setBuildVersion:?];
  }

  if ([(NSSLocalesInfoRespMsg *)self supportedCalendarsCount])
  {
    [toCopy clearSupportedCalendars];
    supportedCalendarsCount = [(NSSLocalesInfoRespMsg *)self supportedCalendarsCount];
    if (supportedCalendarsCount)
    {
      v13 = supportedCalendarsCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(NSSLocalesInfoRespMsg *)self supportedCalendarsAtIndex:k];
        [toCopy addSupportedCalendars:v15];
      }
    }
  }

  if ([(NSSLocalesInfoRespMsg *)self defaultCalendarsCount])
  {
    [toCopy clearDefaultCalendars];
    defaultCalendarsCount = [(NSSLocalesInfoRespMsg *)self defaultCalendarsCount];
    if (defaultCalendarsCount)
    {
      v17 = defaultCalendarsCount;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(NSSLocalesInfoRespMsg *)self defaultCalendarsAtIndex:m];
        [toCopy addDefaultCalendars:v19];
      }
    }
  }

  if ([(NSSLocalesInfoRespMsg *)self numberingSystemsCount])
  {
    [toCopy clearNumberingSystems];
    numberingSystemsCount = [(NSSLocalesInfoRespMsg *)self numberingSystemsCount];
    if (numberingSystemsCount)
    {
      v21 = numberingSystemsCount;
      for (n = 0; n != v21; ++n)
      {
        v23 = [(NSSLocalesInfoRespMsg *)self numberingSystemsAtIndex:n];
        [toCopy addNumberingSystems:v23];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v6 = self->_systemLanguages;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v56;
    do
    {
      v10 = 0;
      do
      {
        if (*v56 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v55 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addSystemLanguages:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v8);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v12 = self->_localeIdentifiers;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v51 objects:v62 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v52;
    do
    {
      v16 = 0;
      do
      {
        if (*v52 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v51 + 1) + 8 * v16) copyWithZone:zone];
        [v5 addLocaleIdentifiers:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v51 objects:v62 count:16];
    }

    while (v14);
  }

  v18 = [(NSString *)self->_buildVersion copyWithZone:zone];
  v19 = v5[1];
  v5[1] = v18;

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v20 = self->_supportedCalendars;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v47 objects:v61 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v48;
    do
    {
      v24 = 0;
      do
      {
        if (*v48 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v47 + 1) + 8 * v24) copyWithZone:zone];
        [v5 addSupportedCalendars:v25];

        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v47 objects:v61 count:16];
    }

    while (v22);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v26 = self->_defaultCalendars;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v43 objects:v60 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v44;
    do
    {
      v30 = 0;
      do
      {
        if (*v44 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [*(*(&v43 + 1) + 8 * v30) copyWithZone:zone];
        [v5 addDefaultCalendars:v31];

        ++v30;
      }

      while (v28 != v30);
      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v43 objects:v60 count:16];
    }

    while (v28);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v32 = self->_numberingSystems;
  v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v39 objects:v59 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v40;
    do
    {
      v36 = 0;
      do
      {
        if (*v40 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = [*(*(&v39 + 1) + 8 * v36) copyWithZone:{zone, v39}];
        [v5 addNumberingSystems:v37];

        ++v36;
      }

      while (v34 != v36);
      v34 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v39 objects:v59 count:16];
    }

    while (v34);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((systemLanguages = self->_systemLanguages, !(systemLanguages | equalCopy[6])) || -[NSMutableArray isEqual:](systemLanguages, "isEqual:")) && ((localeIdentifiers = self->_localeIdentifiers, !(localeIdentifiers | equalCopy[3])) || -[NSMutableArray isEqual:](localeIdentifiers, "isEqual:")) && ((buildVersion = self->_buildVersion, !(buildVersion | equalCopy[1])) || -[NSString isEqual:](buildVersion, "isEqual:")) && ((supportedCalendars = self->_supportedCalendars, !(supportedCalendars | equalCopy[5])) || -[NSMutableArray isEqual:](supportedCalendars, "isEqual:")) && ((defaultCalendars = self->_defaultCalendars, !(defaultCalendars | equalCopy[2])) || -[NSMutableArray isEqual:](defaultCalendars, "isEqual:")))
  {
    numberingSystems = self->_numberingSystems;
    if (numberingSystems | equalCopy[4])
    {
      v11 = [(NSMutableArray *)numberingSystems isEqual:?];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_systemLanguages hash];
  v4 = [(NSMutableArray *)self->_localeIdentifiers hash]^ v3;
  v5 = [(NSString *)self->_buildVersion hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_supportedCalendars hash];
  v7 = [(NSMutableArray *)self->_defaultCalendars hash];
  return v6 ^ v7 ^ [(NSMutableArray *)self->_numberingSystems hash];
}

- (void)mergeFrom:(id)from
{
  v55 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v5 = fromCopy[6];
  v6 = [v5 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v47;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v47 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NSSLocalesInfoRespMsg *)self addSystemLanguages:*(*(&v46 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v7);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = fromCopy[3];
  v11 = [v10 countByEnumeratingWithState:&v42 objects:v53 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v43;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(NSSLocalesInfoRespMsg *)self addLocaleIdentifiers:*(*(&v42 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v42 objects:v53 count:16];
    }

    while (v12);
  }

  if (fromCopy[1])
  {
    [(NSSLocalesInfoRespMsg *)self setBuildVersion:?];
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = fromCopy[5];
  v16 = [v15 countByEnumeratingWithState:&v38 objects:v52 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v39;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v39 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(NSSLocalesInfoRespMsg *)self addSupportedCalendars:*(*(&v38 + 1) + 8 * k)];
      }

      v17 = [v15 countByEnumeratingWithState:&v38 objects:v52 count:16];
    }

    while (v17);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v20 = fromCopy[2];
  v21 = [v20 countByEnumeratingWithState:&v34 objects:v51 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v35;
    do
    {
      for (m = 0; m != v22; ++m)
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(NSSLocalesInfoRespMsg *)self addDefaultCalendars:*(*(&v34 + 1) + 8 * m)];
      }

      v22 = [v20 countByEnumeratingWithState:&v34 objects:v51 count:16];
    }

    while (v22);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v25 = fromCopy[4];
  v26 = [v25 countByEnumeratingWithState:&v30 objects:v50 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v31;
    do
    {
      for (n = 0; n != v27; ++n)
      {
        if (*v31 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [(NSSLocalesInfoRespMsg *)self addNumberingSystems:*(*(&v30 + 1) + 8 * n), v30];
      }

      v27 = [v25 countByEnumeratingWithState:&v30 objects:v50 count:16];
    }

    while (v27);
  }
}

@end