@interface BCSChatSuggestMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCallToActions:(id)actions;
- (void)addChatOpenHours:(id)hours;
- (void)addPhoneOpenHours:(id)hours;
- (void)addVisibilities:(id)visibilities;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsVerified:(BOOL)verified;
- (void)writeTo:(id)to;
@end

@implementation BCSChatSuggestMessage

- (void)addChatOpenHours:(id)hours
{
  hoursCopy = hours;
  chatOpenHours = self->_chatOpenHours;
  v8 = hoursCopy;
  if (!chatOpenHours)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_chatOpenHours;
    self->_chatOpenHours = v6;

    hoursCopy = v8;
    chatOpenHours = self->_chatOpenHours;
  }

  [(NSMutableArray *)chatOpenHours addObject:hoursCopy];
}

- (void)addPhoneOpenHours:(id)hours
{
  hoursCopy = hours;
  phoneOpenHours = self->_phoneOpenHours;
  v8 = hoursCopy;
  if (!phoneOpenHours)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_phoneOpenHours;
    self->_phoneOpenHours = v6;

    hoursCopy = v8;
    phoneOpenHours = self->_phoneOpenHours;
  }

  [(NSMutableArray *)phoneOpenHours addObject:hoursCopy];
}

- (void)setHasIsVerified:(BOOL)verified
{
  if (verified)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addCallToActions:(id)actions
{
  actionsCopy = actions;
  callToActions = self->_callToActions;
  v8 = actionsCopy;
  if (!callToActions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_callToActions;
    self->_callToActions = v6;

    actionsCopy = v8;
    callToActions = self->_callToActions;
  }

  [(NSMutableArray *)callToActions addObject:actionsCopy];
}

- (void)addVisibilities:(id)visibilities
{
  visibilitiesCopy = visibilities;
  visibilities = self->_visibilities;
  v8 = visibilitiesCopy;
  if (!visibilities)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_visibilities;
    self->_visibilities = v6;

    visibilitiesCopy = v8;
    visibilities = self->_visibilities;
  }

  [(NSMutableArray *)visibilities addObject:visibilitiesCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BCSChatSuggestMessage;
  v4 = [(BCSChatSuggestMessage *)&v8 description];
  dictionaryRepresentation = [(BCSChatSuggestMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v64 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_phoneHash];
    [dictionary setObject:v4 forKey:@"phone_hash"];
  }

  bizId = self->_bizId;
  if (bizId)
  {
    [dictionary setObject:bizId forKey:@"biz_id"];
  }

  name = self->_name;
  if (name)
  {
    [dictionary setObject:name forKey:@"name"];
  }

  if ([(NSMutableArray *)self->_chatOpenHours count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_chatOpenHours, "count")}];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v8 = self->_chatOpenHours;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v56 objects:v63 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v57;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v57 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v56 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v56 objects:v63 count:16];
      }

      while (v10);
    }

    [dictionary setObject:v7 forKey:@"chat_open_hours"];
  }

  if ([(NSMutableArray *)self->_phoneOpenHours count])
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_phoneOpenHours, "count")}];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v15 = self->_phoneOpenHours;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v52 objects:v62 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v53;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v53 != v18)
          {
            objc_enumerationMutation(v15);
          }

          dictionaryRepresentation2 = [*(*(&v52 + 1) + 8 * j) dictionaryRepresentation];
          [v14 addObject:dictionaryRepresentation2];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v52 objects:v62 count:16];
      }

      while (v17);
    }

    [dictionary setObject:v14 forKey:@"phone_open_hours"];
  }

  timeZone = self->_timeZone;
  if (timeZone)
  {
    [dictionary setObject:timeZone forKey:@"time_zone"];
  }

  squareLogoUrl = self->_squareLogoUrl;
  if (squareLogoUrl)
  {
    [dictionary setObject:squareLogoUrl forKey:@"square_logo_url"];
  }

  wideLogoUrl = self->_wideLogoUrl;
  if (wideLogoUrl)
  {
    [dictionary setObject:wideLogoUrl forKey:@"wide_logo_url"];
  }

  backgroundColor = self->_backgroundColor;
  if (backgroundColor)
  {
    [dictionary setObject:backgroundColor forKey:@"background_color"];
  }

  tintColor = self->_tintColor;
  if (tintColor)
  {
    [dictionary setObject:tintColor forKey:@"tint_color"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v26 = [MEMORY[0x277CCABB0] numberWithBool:self->_isVerified];
    [dictionary setObject:v26 forKey:@"is_verified"];
  }

  if ([(NSMutableArray *)self->_callToActions count])
  {
    v27 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_callToActions, "count")}];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v28 = self->_callToActions;
    v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v48 objects:v61 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v49;
      do
      {
        for (k = 0; k != v30; ++k)
        {
          if (*v49 != v31)
          {
            objc_enumerationMutation(v28);
          }

          dictionaryRepresentation3 = [*(*(&v48 + 1) + 8 * k) dictionaryRepresentation];
          [v27 addObject:dictionaryRepresentation3];
        }

        v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v48 objects:v61 count:16];
      }

      while (v30);
    }

    [dictionary setObject:v27 forKey:@"call_to_actions"];
  }

  if ([(NSMutableArray *)self->_visibilities count])
  {
    v34 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_visibilities, "count")}];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v35 = self->_visibilities;
    v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v44 objects:v60 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v45;
      do
      {
        for (m = 0; m != v37; ++m)
        {
          if (*v45 != v38)
          {
            objc_enumerationMutation(v35);
          }

          dictionaryRepresentation4 = [*(*(&v44 + 1) + 8 * m) dictionaryRepresentation];
          [v34 addObject:dictionaryRepresentation4];
        }

        v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v44 objects:v60 count:16];
      }

      while (v37);
    }

    [dictionary setObject:v34 forKey:@"visibilities"];
  }

  intentId = self->_intentId;
  if (intentId)
  {
    [dictionary setObject:intentId forKey:@"intent_id"];
  }

  group = self->_group;
  if (group)
  {
    [dictionary setObject:group forKey:@"group"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v45 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_bizId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = self->_chatOpenHours;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    do
    {
      v9 = 0;
      do
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v7);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = self->_phoneOpenHours;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      v14 = 0;
      do
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v12);
  }

  if (self->_timeZone)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_squareLogoUrl)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_wideLogoUrl)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_backgroundColor)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_tintColor)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = self->_callToActions;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      v19 = 0;
      do
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v42 count:16];
    }

    while (v17);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = self->_visibilities;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v25 objects:v41 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v26;
    do
    {
      v24 = 0;
      do
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(v20);
        }

        PBDataWriterWriteSubmessage();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v25 objects:v41 count:16];
    }

    while (v22);
  }

  if (self->_intentId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_group)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_phoneHash;
    *(toCopy + 124) |= 1u;
  }

  v22 = toCopy;
  if (self->_bizId)
  {
    [toCopy setBizId:?];
  }

  if (self->_name)
  {
    [v22 setName:?];
  }

  if ([(BCSChatSuggestMessage *)self chatOpenHoursCount])
  {
    [v22 clearChatOpenHours];
    chatOpenHoursCount = [(BCSChatSuggestMessage *)self chatOpenHoursCount];
    if (chatOpenHoursCount)
    {
      v6 = chatOpenHoursCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(BCSChatSuggestMessage *)self chatOpenHoursAtIndex:i];
        [v22 addChatOpenHours:v8];
      }
    }
  }

  if ([(BCSChatSuggestMessage *)self phoneOpenHoursCount])
  {
    [v22 clearPhoneOpenHours];
    phoneOpenHoursCount = [(BCSChatSuggestMessage *)self phoneOpenHoursCount];
    if (phoneOpenHoursCount)
    {
      v10 = phoneOpenHoursCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(BCSChatSuggestMessage *)self phoneOpenHoursAtIndex:j];
        [v22 addPhoneOpenHours:v12];
      }
    }
  }

  if (self->_timeZone)
  {
    [v22 setTimeZone:?];
  }

  if (self->_squareLogoUrl)
  {
    [v22 setSquareLogoUrl:?];
  }

  if (self->_wideLogoUrl)
  {
    [v22 setWideLogoUrl:?];
  }

  if (self->_backgroundColor)
  {
    [v22 setBackgroundColor:?];
  }

  if (self->_tintColor)
  {
    [v22 setTintColor:?];
  }

  if ((*&self->_has & 2) != 0)
  {
    v22[120] = self->_isVerified;
    v22[124] |= 2u;
  }

  if ([(BCSChatSuggestMessage *)self callToActionsCount])
  {
    [v22 clearCallToActions];
    callToActionsCount = [(BCSChatSuggestMessage *)self callToActionsCount];
    if (callToActionsCount)
    {
      v14 = callToActionsCount;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(BCSChatSuggestMessage *)self callToActionsAtIndex:k];
        [v22 addCallToActions:v16];
      }
    }
  }

  if ([(BCSChatSuggestMessage *)self visibilitiesCount])
  {
    [v22 clearVisibilities];
    visibilitiesCount = [(BCSChatSuggestMessage *)self visibilitiesCount];
    if (visibilitiesCount)
    {
      v18 = visibilitiesCount;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(BCSChatSuggestMessage *)self visibilitiesAtIndex:m];
        [v22 addVisibilities:v20];
      }
    }
  }

  if (self->_intentId)
  {
    [v22 setIntentId:?];
  }

  v21 = v22;
  if (self->_group)
  {
    [v22 setGroup:?];
    v21 = v22;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v70 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_phoneHash;
    *(v5 + 124) |= 1u;
  }

  v7 = [(NSString *)self->_bizId copyWithZone:zone];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  v9 = [(NSString *)self->_name copyWithZone:zone];
  v10 = *(v6 + 64);
  *(v6 + 64) = v9;

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v11 = self->_chatOpenHours;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v62 objects:v69 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v63;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v63 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v62 + 1) + 8 * i) copyWithZone:zone];
        [v6 addChatOpenHours:v16];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v62 objects:v69 count:16];
    }

    while (v13);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v17 = self->_phoneOpenHours;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v59;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v59 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v58 + 1) + 8 * j) copyWithZone:zone];
        [v6 addPhoneOpenHours:v22];
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v58 objects:v68 count:16];
    }

    while (v19);
  }

  v23 = [(NSString *)self->_timeZone copyWithZone:zone];
  v24 = *(v6 + 88);
  *(v6 + 88) = v23;

  v25 = [(NSString *)self->_squareLogoUrl copyWithZone:zone];
  v26 = *(v6 + 80);
  *(v6 + 80) = v25;

  v27 = [(NSString *)self->_wideLogoUrl copyWithZone:zone];
  v28 = *(v6 + 112);
  *(v6 + 112) = v27;

  v29 = [(NSString *)self->_backgroundColor copyWithZone:zone];
  v30 = *(v6 + 16);
  *(v6 + 16) = v29;

  v31 = [(NSString *)self->_tintColor copyWithZone:zone];
  v32 = *(v6 + 96);
  *(v6 + 96) = v31;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 120) = self->_isVerified;
    *(v6 + 124) |= 2u;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v33 = self->_callToActions;
  v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v54 objects:v67 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v55;
    do
    {
      for (k = 0; k != v35; ++k)
      {
        if (*v55 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = [*(*(&v54 + 1) + 8 * k) copyWithZone:zone];
        [v6 addCallToActions:v38];
      }

      v35 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v54 objects:v67 count:16];
    }

    while (v35);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v39 = self->_visibilities;
  v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v50 objects:v66 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v51;
    do
    {
      for (m = 0; m != v41; ++m)
      {
        if (*v51 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = [*(*(&v50 + 1) + 8 * m) copyWithZone:{zone, v50}];
        [v6 addVisibilities:v44];
      }

      v41 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v50 objects:v66 count:16];
    }

    while (v41);
  }

  v45 = [(NSString *)self->_intentId copyWithZone:zone];
  v46 = *(v6 + 56);
  *(v6 + 56) = v45;

  v47 = [(NSString *)self->_group copyWithZone:zone];
  v48 = *(v6 + 48);
  *(v6 + 48) = v47;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 124) & 1) == 0 || self->_phoneHash != *(equalCopy + 1))
    {
      goto LABEL_36;
    }
  }

  else if (*(equalCopy + 124))
  {
    goto LABEL_36;
  }

  bizId = self->_bizId;
  if (bizId | *(equalCopy + 3) && ![(NSString *)bizId isEqual:?])
  {
    goto LABEL_36;
  }

  name = self->_name;
  if (name | *(equalCopy + 8))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_36;
    }
  }

  chatOpenHours = self->_chatOpenHours;
  if (chatOpenHours | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)chatOpenHours isEqual:?])
    {
      goto LABEL_36;
    }
  }

  phoneOpenHours = self->_phoneOpenHours;
  if (phoneOpenHours | *(equalCopy + 9))
  {
    if (![(NSMutableArray *)phoneOpenHours isEqual:?])
    {
      goto LABEL_36;
    }
  }

  timeZone = self->_timeZone;
  if (timeZone | *(equalCopy + 11))
  {
    if (![(NSString *)timeZone isEqual:?])
    {
      goto LABEL_36;
    }
  }

  squareLogoUrl = self->_squareLogoUrl;
  if (squareLogoUrl | *(equalCopy + 10))
  {
    if (![(NSString *)squareLogoUrl isEqual:?])
    {
      goto LABEL_36;
    }
  }

  wideLogoUrl = self->_wideLogoUrl;
  if (wideLogoUrl | *(equalCopy + 14))
  {
    if (![(NSString *)wideLogoUrl isEqual:?])
    {
      goto LABEL_36;
    }
  }

  backgroundColor = self->_backgroundColor;
  if (backgroundColor | *(equalCopy + 2))
  {
    if (![(NSString *)backgroundColor isEqual:?])
    {
      goto LABEL_36;
    }
  }

  tintColor = self->_tintColor;
  if (tintColor | *(equalCopy + 12))
  {
    if (![(NSString *)tintColor isEqual:?])
    {
      goto LABEL_36;
    }
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 124) & 2) == 0)
    {
      goto LABEL_27;
    }

LABEL_36:
    v18 = 0;
    goto LABEL_37;
  }

  if ((*(equalCopy + 124) & 2) == 0)
  {
    goto LABEL_36;
  }

  if (self->_isVerified)
  {
    if ((*(equalCopy + 120) & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (*(equalCopy + 120))
  {
    goto LABEL_36;
  }

LABEL_27:
  callToActions = self->_callToActions;
  if (callToActions | *(equalCopy + 4) && ![(NSMutableArray *)callToActions isEqual:?])
  {
    goto LABEL_36;
  }

  visibilities = self->_visibilities;
  if (visibilities | *(equalCopy + 13))
  {
    if (![(NSMutableArray *)visibilities isEqual:?])
    {
      goto LABEL_36;
    }
  }

  intentId = self->_intentId;
  if (intentId | *(equalCopy + 7))
  {
    if (![(NSString *)intentId isEqual:?])
    {
      goto LABEL_36;
    }
  }

  group = self->_group;
  if (group | *(equalCopy + 6))
  {
    v18 = [(NSString *)group isEqual:?];
  }

  else
  {
    v18 = 1;
  }

LABEL_37:

  return v18;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v18 = 2654435761 * self->_phoneHash;
  }

  else
  {
    v18 = 0;
  }

  v17 = [(NSString *)self->_bizId hash];
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSMutableArray *)self->_chatOpenHours hash];
  v5 = [(NSMutableArray *)self->_phoneOpenHours hash];
  v6 = [(NSString *)self->_timeZone hash];
  v7 = [(NSString *)self->_squareLogoUrl hash];
  v8 = [(NSString *)self->_wideLogoUrl hash];
  v9 = [(NSString *)self->_backgroundColor hash];
  v10 = [(NSString *)self->_tintColor hash];
  if ((*&self->_has & 2) != 0)
  {
    v11 = 2654435761 * self->_isVerified;
  }

  else
  {
    v11 = 0;
  }

  v12 = v17 ^ v18 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  v13 = [(NSMutableArray *)self->_callToActions hash];
  v14 = v13 ^ [(NSMutableArray *)self->_visibilities hash];
  v15 = v14 ^ [(NSString *)self->_intentId hash];
  return v12 ^ v15 ^ [(NSString *)self->_group hash];
}

- (void)mergeFrom:(id)from
{
  v46 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 124))
  {
    self->_phoneHash = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (fromCopy[3])
  {
    [(BCSChatSuggestMessage *)self setBizId:?];
  }

  if (*(v5 + 8))
  {
    [(BCSChatSuggestMessage *)self setName:?];
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = *(v5 + 5);
  v7 = [v6 countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(BCSChatSuggestMessage *)self addChatOpenHours:*(*(&v38 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v8);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = *(v5 + 9);
  v12 = [v11 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v35;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(BCSChatSuggestMessage *)self addPhoneOpenHours:*(*(&v34 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v13);
  }

  if (*(v5 + 11))
  {
    [(BCSChatSuggestMessage *)self setTimeZone:?];
  }

  if (*(v5 + 10))
  {
    [(BCSChatSuggestMessage *)self setSquareLogoUrl:?];
  }

  if (*(v5 + 14))
  {
    [(BCSChatSuggestMessage *)self setWideLogoUrl:?];
  }

  if (*(v5 + 2))
  {
    [(BCSChatSuggestMessage *)self setBackgroundColor:?];
  }

  if (*(v5 + 12))
  {
    [(BCSChatSuggestMessage *)self setTintColor:?];
  }

  if ((*(v5 + 124) & 2) != 0)
  {
    self->_isVerified = *(v5 + 120);
    *&self->_has |= 2u;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = *(v5 + 4);
  v17 = [v16 countByEnumeratingWithState:&v30 objects:v43 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(BCSChatSuggestMessage *)self addCallToActions:*(*(&v30 + 1) + 8 * k)];
      }

      v18 = [v16 countByEnumeratingWithState:&v30 objects:v43 count:16];
    }

    while (v18);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v21 = *(v5 + 13);
  v22 = [v21 countByEnumeratingWithState:&v26 objects:v42 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v27;
    do
    {
      for (m = 0; m != v23; ++m)
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(BCSChatSuggestMessage *)self addVisibilities:*(*(&v26 + 1) + 8 * m), v26];
      }

      v23 = [v21 countByEnumeratingWithState:&v26 objects:v42 count:16];
    }

    while (v23);
  }

  if (*(v5 + 7))
  {
    [(BCSChatSuggestMessage *)self setIntentId:?];
  }

  if (*(v5 + 6))
  {
    [(BCSChatSuggestMessage *)self setGroup:?];
  }
}

@end