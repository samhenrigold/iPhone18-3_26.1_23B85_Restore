@interface HDCodableSharingRelationship
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)recipientTypeAsString:(int)string;
- (int)StringAsRecipientType:(id)type;
- (int)recipientType;
- (unint64_t)hash;
- (void)addAuthorizationIdentifiers:(id)identifiers;
- (void)addSharingAuthorizations:(id)authorizations;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRecipientType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation HDCodableSharingRelationship

- (int)recipientType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_recipientType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRecipientType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)recipientTypeAsString:(int)string
{
  if (string)
  {
    if (string == 1)
    {
      v4 = @"ClinicalAccount";
    }

    else
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *&string];
    }
  }

  else
  {
    v4 = @"SharedSummary";
  }

  return v4;
}

- (int)StringAsRecipientType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"SharedSummary"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"ClinicalAccount"];
  }

  return v4;
}

- (void)addAuthorizationIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  authorizationIdentifiers = self->_authorizationIdentifiers;
  v8 = identifiersCopy;
  if (!authorizationIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_authorizationIdentifiers;
    self->_authorizationIdentifiers = v6;

    identifiersCopy = v8;
    authorizationIdentifiers = self->_authorizationIdentifiers;
  }

  [(NSMutableArray *)authorizationIdentifiers addObject:identifiersCopy];
}

- (void)addSharingAuthorizations:(id)authorizations
{
  authorizationsCopy = authorizations;
  sharingAuthorizations = self->_sharingAuthorizations;
  v8 = authorizationsCopy;
  if (!sharingAuthorizations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_sharingAuthorizations;
    self->_sharingAuthorizations = v6;

    authorizationsCopy = v8;
    sharingAuthorizations = self->_sharingAuthorizations;
  }

  [(NSMutableArray *)sharingAuthorizations addObject:authorizationsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableSharingRelationship;
  v4 = [(HDCodableSharingRelationship *)&v8 description];
  dictionaryRepresentation = [(HDCodableSharingRelationship *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v26 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  recipientIdentifier = self->_recipientIdentifier;
  if (recipientIdentifier)
  {
    [dictionary setObject:recipientIdentifier forKey:@"recipientIdentifier"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    recipientType = self->_recipientType;
    if (recipientType)
    {
      if (recipientType == 1)
      {
        v8 = @"ClinicalAccount";
      }

      else
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_recipientType];
      }
    }

    else
    {
      v8 = @"SharedSummary";
    }

    [v4 setObject:v8 forKey:@"recipientType"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_dateModified];
    [v4 setObject:v9 forKey:@"dateModified"];
  }

  authorizationIdentifiers = self->_authorizationIdentifiers;
  if (authorizationIdentifiers)
  {
    [v4 setObject:authorizationIdentifiers forKey:@"authorizationIdentifiers"];
  }

  if ([(NSMutableArray *)self->_sharingAuthorizations count])
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_sharingAuthorizations, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = self->_sharingAuthorizations;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }

    [v4 setObject:v11 forKey:@"sharingAuthorizations"];
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    dictionaryRepresentation2 = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"syncIdentity"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v26 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_recipientIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteDoubleField();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = self->_authorizationIdentifiers;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteStringField();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = self->_sharingAuthorizations;
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

  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v14 = toCopy;
  if (self->_recipientIdentifier)
  {
    [toCopy setRecipientIdentifier:?];
    toCopy = v14;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 8) = self->_recipientType;
    *(toCopy + 56) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = *&self->_dateModified;
    *(toCopy + 56) |= 1u;
  }

  if ([(HDCodableSharingRelationship *)self authorizationIdentifiersCount])
  {
    [v14 clearAuthorizationIdentifiers];
    authorizationIdentifiersCount = [(HDCodableSharingRelationship *)self authorizationIdentifiersCount];
    if (authorizationIdentifiersCount)
    {
      v7 = authorizationIdentifiersCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(HDCodableSharingRelationship *)self authorizationIdentifiersAtIndex:i];
        [v14 addAuthorizationIdentifiers:v9];
      }
    }
  }

  if ([(HDCodableSharingRelationship *)self sharingAuthorizationsCount])
  {
    [v14 clearSharingAuthorizations];
    sharingAuthorizationsCount = [(HDCodableSharingRelationship *)self sharingAuthorizationsCount];
    if (sharingAuthorizationsCount)
    {
      v11 = sharingAuthorizationsCount;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(HDCodableSharingRelationship *)self sharingAuthorizationsAtIndex:j];
        [v14 addSharingAuthorizations:v13];
      }
    }
  }

  if (self->_syncIdentity)
  {
    [v14 setSyncIdentity:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_recipientIdentifier copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 32) = self->_recipientType;
    *(v5 + 56) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_dateModified;
    *(v5 + 56) |= 1u;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = self->_authorizationIdentifiers;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v28 + 1) + 8 * i) copyWithZone:zone];
        [v5 addAuthorizationIdentifiers:v14];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v11);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = self->_sharingAuthorizations;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v24 + 1) + 8 * j) copyWithZone:{zone, v24}];
        [v5 addSharingAuthorizations:v20];
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v17);
  }

  v21 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:zone];
  v22 = *(v5 + 48);
  *(v5 + 48) = v21;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  recipientIdentifier = self->_recipientIdentifier;
  if (recipientIdentifier | *(equalCopy + 3))
  {
    if (![(NSString *)recipientIdentifier isEqual:?])
    {
      goto LABEL_20;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_recipientType != *(equalCopy + 8))
    {
      goto LABEL_20;
    }
  }

  else if ((*(equalCopy + 56) & 2) != 0)
  {
LABEL_20:
    v9 = 0;
    goto LABEL_21;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_dateModified != *(equalCopy + 1))
    {
      goto LABEL_20;
    }
  }

  else if (*(equalCopy + 56))
  {
    goto LABEL_20;
  }

  authorizationIdentifiers = self->_authorizationIdentifiers;
  if (authorizationIdentifiers | *(equalCopy + 2) && ![(NSMutableArray *)authorizationIdentifiers isEqual:?])
  {
    goto LABEL_20;
  }

  sharingAuthorizations = self->_sharingAuthorizations;
  if (sharingAuthorizations | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)sharingAuthorizations isEqual:?])
    {
      goto LABEL_20;
    }
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity | *(equalCopy + 6))
  {
    v9 = [(HDCodableSyncIdentity *)syncIdentity isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_21:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_recipientIdentifier hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_recipientType;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  dateModified = self->_dateModified;
  if (dateModified < 0.0)
  {
    dateModified = -dateModified;
  }

  *v4.i64 = floor(dateModified + 0.5);
  v8 = (dateModified - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

LABEL_9:
  v11 = v6 ^ v3 ^ v10 ^ [(NSMutableArray *)self->_authorizationIdentifiers hash];
  v12 = [(NSMutableArray *)self->_sharingAuthorizations hash];
  return v11 ^ v12 ^ [(HDCodableSyncIdentity *)self->_syncIdentity hash];
}

- (void)mergeFrom:(id)from
{
  v28 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 3))
  {
    [(HDCodableSharingRelationship *)self setRecipientIdentifier:?];
  }

  v5 = *(fromCopy + 56);
  if ((v5 & 2) != 0)
  {
    self->_recipientType = *(fromCopy + 8);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 56);
  }

  if (v5)
  {
    self->_dateModified = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = *(fromCopy + 2);
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(HDCodableSharingRelationship *)self addAuthorizationIdentifiers:*(*(&v22 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v8);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = *(fromCopy + 5);
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(HDCodableSharingRelationship *)self addSharingAuthorizations:*(*(&v18 + 1) + 8 * j), v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  syncIdentity = self->_syncIdentity;
  v17 = *(fromCopy + 6);
  if (syncIdentity)
  {
    if (v17)
    {
      [(HDCodableSyncIdentity *)syncIdentity mergeFrom:?];
    }
  }

  else if (v17)
  {
    [(HDCodableSharingRelationship *)self setSyncIdentity:?];
  }
}

@end