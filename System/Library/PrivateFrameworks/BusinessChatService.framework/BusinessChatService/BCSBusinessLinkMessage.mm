@interface BCSBusinessLinkMessage
- (BOOL)isEqual:(id)equal;
- (id)actionAsString:(int)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAction:(id)action;
- (int)action;
- (unint64_t)hash;
- (void)addBusinessLinkContents:(id)contents;
- (void)addCategoryStyleAttributes:(id)attributes;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsPoweredBy:(BOOL)by;
- (void)writeTo:(id)to;
@end

@implementation BCSBusinessLinkMessage

- (void)addBusinessLinkContents:(id)contents
{
  contentsCopy = contents;
  businessLinkContents = self->_businessLinkContents;
  v8 = contentsCopy;
  if (!businessLinkContents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_businessLinkContents;
    self->_businessLinkContents = v6;

    contentsCopy = v8;
    businessLinkContents = self->_businessLinkContents;
  }

  [(NSMutableArray *)businessLinkContents addObject:contentsCopy];
}

- (int)action
{
  if (*&self->_has)
  {
    return self->_action;
  }

  else
  {
    return 1;
  }
}

- (id)actionAsString:(int)string
{
  if ((string - 1) >= 3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_278D39DA0[string - 1];
  }

  return v4;
}

- (int)StringAsAction:(id)action
{
  actionCopy = action;
  if ([actionCopy isEqualToString:@"OPEN"])
  {
    v4 = 1;
  }

  else if ([actionCopy isEqualToString:@"VIEW"])
  {
    v4 = 2;
  }

  else if ([actionCopy isEqualToString:@"PLAY"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasIsPoweredBy:(BOOL)by
{
  if (by)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addCategoryStyleAttributes:(id)attributes
{
  attributesCopy = attributes;
  categoryStyleAttributes = self->_categoryStyleAttributes;
  v8 = attributesCopy;
  if (!categoryStyleAttributes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_categoryStyleAttributes;
    self->_categoryStyleAttributes = v6;

    attributesCopy = v8;
    categoryStyleAttributes = self->_categoryStyleAttributes;
  }

  [(NSMutableArray *)categoryStyleAttributes addObject:attributesCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BCSBusinessLinkMessage;
  v4 = [(BCSBusinessLinkMessage *)&v8 description];
  dictionaryRepresentation = [(BCSBusinessLinkMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v40 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  link = self->_link;
  if (link)
  {
    [dictionary setObject:link forKey:@"link"];
  }

  bundleId = self->_bundleId;
  if (bundleId)
  {
    [v4 setObject:bundleId forKey:@"bundle_id"];
  }

  heroImage = self->_heroImage;
  if (heroImage)
  {
    [v4 setObject:heroImage forKey:@"hero_image"];
  }

  iconImage = self->_iconImage;
  if (iconImage)
  {
    [v4 setObject:iconImage forKey:@"icon_image"];
  }

  redirectUrl = self->_redirectUrl;
  if (redirectUrl)
  {
    [v4 setObject:redirectUrl forKey:@"redirect_url"];
  }

  if ([(NSMutableArray *)self->_businessLinkContents count])
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_businessLinkContents, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v11 = self->_businessLinkContents;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v35;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation = [*(*(&v34 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:dictionaryRepresentation];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v13);
    }

    [v4 setObject:v10 forKey:@"business_link_contents"];
  }

  has = self->_has;
  if (has)
  {
    v18 = self->_action - 1;
    if (v18 >= 3)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_action];
    }

    else
    {
      v19 = off_278D39DA0[v18];
    }

    [v4 setObject:v19 forKey:@"action"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_isPoweredBy];
    [v4 setObject:v20 forKey:@"is_powered_by"];
  }

  muid = self->_muid;
  if (muid)
  {
    [v4 setObject:muid forKey:@"muid"];
  }

  if ([(NSMutableArray *)self->_categoryStyleAttributes count])
  {
    v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_categoryStyleAttributes, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v23 = self->_categoryStyleAttributes;
    v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v31;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v31 != v26)
          {
            objc_enumerationMutation(v23);
          }

          dictionaryRepresentation2 = [*(*(&v30 + 1) + 8 * j) dictionaryRepresentation];
          [v22 addObject:dictionaryRepresentation2];
        }

        v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v25);
    }

    [v4 setObject:v22 forKey:@"category_style_attributes"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v26 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_link)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_heroImage)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_iconImage)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_redirectUrl)
  {
    PBDataWriterWriteStringField();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_businessLinkContents;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_muid)
  {
    PBDataWriterWriteStringField();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = self->_categoryStyleAttributes;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_link)
  {
    [toCopy setLink:?];
  }

  if (self->_bundleId)
  {
    [toCopy setBundleId:?];
  }

  if (self->_heroImage)
  {
    [toCopy setHeroImage:?];
  }

  if (self->_iconImage)
  {
    [toCopy setIconImage:?];
  }

  if (self->_redirectUrl)
  {
    [toCopy setRedirectUrl:?];
  }

  if ([(BCSBusinessLinkMessage *)self businessLinkContentsCount])
  {
    [toCopy clearBusinessLinkContents];
    businessLinkContentsCount = [(BCSBusinessLinkMessage *)self businessLinkContentsCount];
    if (businessLinkContentsCount)
    {
      v5 = businessLinkContentsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(BCSBusinessLinkMessage *)self businessLinkContentsAtIndex:i];
        [toCopy addBusinessLinkContents:v7];
      }
    }
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 2) = self->_action;
    *(toCopy + 84) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 80) = self->_isPoweredBy;
    *(toCopy + 84) |= 2u;
  }

  if (self->_muid)
  {
    [toCopy setMuid:?];
  }

  if ([(BCSBusinessLinkMessage *)self categoryStyleAttributesCount])
  {
    [toCopy clearCategoryStyleAttributes];
    categoryStyleAttributesCount = [(BCSBusinessLinkMessage *)self categoryStyleAttributesCount];
    if (categoryStyleAttributesCount)
    {
      v10 = categoryStyleAttributesCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(BCSBusinessLinkMessage *)self categoryStyleAttributesAtIndex:j];
        [toCopy addCategoryStyleAttributes:v12];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_link copyWithZone:zone];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  v8 = [(NSString *)self->_bundleId copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_heroImage copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(NSString *)self->_iconImage copyWithZone:zone];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  v14 = [(NSString *)self->_redirectUrl copyWithZone:zone];
  v15 = *(v5 + 72);
  *(v5 + 72) = v14;

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v16 = self->_businessLinkContents;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v37;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v36 + 1) + 8 * i) copyWithZone:zone];
        [v5 addBusinessLinkContents:v21];
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v18);
  }

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_action;
    *(v5 + 84) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 80) = self->_isPoweredBy;
    *(v5 + 84) |= 2u;
  }

  v23 = [(NSString *)self->_muid copyWithZone:zone];
  v24 = *(v5 + 64);
  *(v5 + 64) = v23;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v25 = self->_categoryStyleAttributes;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v33;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v33 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v32 + 1) + 8 * j) copyWithZone:{zone, v32}];
        [v5 addCategoryStyleAttributes:v30];
      }

      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v27);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  link = self->_link;
  if (link | *(equalCopy + 7))
  {
    if (![(NSString *)link isEqual:?])
    {
      goto LABEL_26;
    }
  }

  bundleId = self->_bundleId;
  if (bundleId | *(equalCopy + 2))
  {
    if (![(NSString *)bundleId isEqual:?])
    {
      goto LABEL_26;
    }
  }

  heroImage = self->_heroImage;
  if (heroImage | *(equalCopy + 5))
  {
    if (![(NSString *)heroImage isEqual:?])
    {
      goto LABEL_26;
    }
  }

  iconImage = self->_iconImage;
  if (iconImage | *(equalCopy + 6))
  {
    if (![(NSString *)iconImage isEqual:?])
    {
      goto LABEL_26;
    }
  }

  redirectUrl = self->_redirectUrl;
  if (redirectUrl | *(equalCopy + 9))
  {
    if (![(NSString *)redirectUrl isEqual:?])
    {
      goto LABEL_26;
    }
  }

  businessLinkContents = self->_businessLinkContents;
  if (businessLinkContents | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)businessLinkContents isEqual:?])
    {
      goto LABEL_26;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 84) & 1) == 0 || self->_action != *(equalCopy + 2))
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 84))
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 84) & 2) == 0)
    {
      goto LABEL_21;
    }

LABEL_26:
    v13 = 0;
    goto LABEL_27;
  }

  if ((*(equalCopy + 84) & 2) == 0)
  {
    goto LABEL_26;
  }

  if (self->_isPoweredBy)
  {
    if ((*(equalCopy + 80) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 80))
  {
    goto LABEL_26;
  }

LABEL_21:
  muid = self->_muid;
  if (muid | *(equalCopy + 8) && ![(NSString *)muid isEqual:?])
  {
    goto LABEL_26;
  }

  categoryStyleAttributes = self->_categoryStyleAttributes;
  if (categoryStyleAttributes | *(equalCopy + 4))
  {
    v13 = [(NSMutableArray *)categoryStyleAttributes isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_27:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_link hash];
  v4 = [(NSString *)self->_bundleId hash];
  v5 = [(NSString *)self->_heroImage hash];
  v6 = [(NSString *)self->_iconImage hash];
  v7 = [(NSString *)self->_redirectUrl hash];
  v8 = [(NSMutableArray *)self->_businessLinkContents hash];
  if (*&self->_has)
  {
    v9 = 2654435761 * self->_action;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = 2654435761 * self->_isPoweredBy;
LABEL_6:
  v11 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  v12 = v10 ^ [(NSString *)self->_muid hash];
  return v11 ^ v12 ^ [(NSMutableArray *)self->_categoryStyleAttributes hash];
}

- (void)mergeFrom:(id)from
{
  v26 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 7))
  {
    [(BCSBusinessLinkMessage *)self setLink:?];
  }

  if (*(fromCopy + 2))
  {
    [(BCSBusinessLinkMessage *)self setBundleId:?];
  }

  if (*(fromCopy + 5))
  {
    [(BCSBusinessLinkMessage *)self setHeroImage:?];
  }

  if (*(fromCopy + 6))
  {
    [(BCSBusinessLinkMessage *)self setIconImage:?];
  }

  if (*(fromCopy + 9))
  {
    [(BCSBusinessLinkMessage *)self setRedirectUrl:?];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = *(fromCopy + 3);
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(BCSBusinessLinkMessage *)self addBusinessLinkContents:*(*(&v20 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v10 = *(fromCopy + 84);
  if (v10)
  {
    self->_action = *(fromCopy + 2);
    *&self->_has |= 1u;
    v10 = *(fromCopy + 84);
  }

  if ((v10 & 2) != 0)
  {
    self->_isPoweredBy = *(fromCopy + 80);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 8))
  {
    [(BCSBusinessLinkMessage *)self setMuid:?];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = *(fromCopy + 4);
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(BCSBusinessLinkMessage *)self addCategoryStyleAttributes:*(*(&v16 + 1) + 8 * j), v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}

@end