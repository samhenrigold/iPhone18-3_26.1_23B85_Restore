@interface PPPBContactNameRecord
- (BOOL)isEqual:(id)equal;
- (id)changeTypeAsString:(unsigned __int8)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)sourceAsString:(unsigned __int8)string;
- (unint64_t)hash;
- (void)addCityNames:(id)names;
- (void)addRelatedNames:(id)names;
- (void)addStreetNames:(id)names;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasChangeType:(BOOL)type;
- (void)setHasSource:(BOOL)source;
- (void)writeTo:(id)to;
@end

@implementation PPPBContactNameRecord

- (void)mergeFrom:(id)from
{
  v36 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 5))
  {
    [(PPPBContactNameRecord *)self setIdentifier:?];
  }

  v5 = *(fromCopy + 144);
  if (v5)
  {
    self->_score = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 144);
    if ((v5 & 4) == 0)
    {
LABEL_5:
      if ((v5 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(fromCopy + 144) & 4) == 0)
  {
    goto LABEL_5;
  }

  self->_source = *(fromCopy + 120);
  *&self->_has |= 4u;
  if ((*(fromCopy + 144) & 2) != 0)
  {
LABEL_6:
    self->_changeType = *(fromCopy + 16);
    *&self->_has |= 2u;
  }

LABEL_7:
  if (*(fromCopy + 16))
  {
    [(PPPBContactNameRecord *)self setSourceIdentifier:?];
  }

  if (*(fromCopy + 4))
  {
    [(PPPBContactNameRecord *)self setFirstName:?];
  }

  if (*(fromCopy + 11))
  {
    [(PPPBContactNameRecord *)self setPhoneticFirstName:?];
  }

  if (*(fromCopy + 8))
  {
    [(PPPBContactNameRecord *)self setMiddleName:?];
  }

  if (*(fromCopy + 13))
  {
    [(PPPBContactNameRecord *)self setPhoneticMiddleName:?];
  }

  if (*(fromCopy + 7))
  {
    [(PPPBContactNameRecord *)self setLastName:?];
  }

  if (*(fromCopy + 12))
  {
    [(PPPBContactNameRecord *)self setPhoneticLastName:?];
  }

  if (*(fromCopy + 10))
  {
    [(PPPBContactNameRecord *)self setOrganizationName:?];
  }

  if (*(fromCopy + 6))
  {
    [(PPPBContactNameRecord *)self setJobTitle:?];
  }

  if (*(fromCopy + 9))
  {
    [(PPPBContactNameRecord *)self setNickname:?];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = *(fromCopy + 14);
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(PPPBContactNameRecord *)self addRelatedNames:*(*(&v29 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v8);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = *(fromCopy + 17);
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(PPPBContactNameRecord *)self addStreetNames:*(*(&v25 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v13);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = *(fromCopy + 3);
  v17 = [v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(PPPBContactNameRecord *)self addCityNames:*(*(&v21 + 1) + 8 * k), v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v18);
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  if (*&self->_has)
  {
    score = self->_score;
    if (score < 0.0)
    {
      score = -score;
    }

    *v4.i64 = floor(score + 0.5);
    v8 = (score - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v10 = 2654435761 * self->_source;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  v10 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v11 = 2654435761 * self->_changeType;
LABEL_14:
  v12 = v6 ^ v3 ^ v10 ^ v11 ^ [(NSString *)self->_sourceIdentifier hash];
  v13 = [(NSString *)self->_firstName hash];
  v14 = v13 ^ [(NSString *)self->_phoneticFirstName hash];
  v15 = v12 ^ v14 ^ [(NSString *)self->_middleName hash];
  v16 = [(NSString *)self->_phoneticMiddleName hash];
  v17 = v16 ^ [(NSString *)self->_lastName hash];
  v18 = v17 ^ [(NSString *)self->_phoneticLastName hash];
  v19 = v15 ^ v18 ^ [(NSString *)self->_organizationName hash];
  v20 = [(NSString *)self->_jobTitle hash];
  v21 = v20 ^ [(NSString *)self->_nickname hash];
  v22 = v21 ^ [(NSMutableArray *)self->_relatedNames hash];
  v23 = v22 ^ [(NSMutableArray *)self->_streetNames hash];
  return v19 ^ v23 ^ [(NSMutableArray *)self->_cityNames hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_45;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 5))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_45;
    }
  }

  if (*&self->_has)
  {
    if ((equalCopy[144] & 1) == 0 || self->_score != *(equalCopy + 1))
    {
      goto LABEL_45;
    }
  }

  else if (equalCopy[144])
  {
LABEL_45:
    v19 = 0;
    goto LABEL_46;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((equalCopy[144] & 4) == 0 || self->_source != equalCopy[120])
    {
      goto LABEL_45;
    }
  }

  else if ((equalCopy[144] & 4) != 0)
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((equalCopy[144] & 2) == 0 || self->_changeType != equalCopy[16])
    {
      goto LABEL_45;
    }
  }

  else if ((equalCopy[144] & 2) != 0)
  {
    goto LABEL_45;
  }

  sourceIdentifier = self->_sourceIdentifier;
  if (sourceIdentifier | *(equalCopy + 16) && ![(NSString *)sourceIdentifier isEqual:?])
  {
    goto LABEL_45;
  }

  firstName = self->_firstName;
  if (firstName | *(equalCopy + 4))
  {
    if (![(NSString *)firstName isEqual:?])
    {
      goto LABEL_45;
    }
  }

  phoneticFirstName = self->_phoneticFirstName;
  if (phoneticFirstName | *(equalCopy + 11))
  {
    if (![(NSString *)phoneticFirstName isEqual:?])
    {
      goto LABEL_45;
    }
  }

  middleName = self->_middleName;
  if (middleName | *(equalCopy + 8))
  {
    if (![(NSString *)middleName isEqual:?])
    {
      goto LABEL_45;
    }
  }

  phoneticMiddleName = self->_phoneticMiddleName;
  if (phoneticMiddleName | *(equalCopy + 13))
  {
    if (![(NSString *)phoneticMiddleName isEqual:?])
    {
      goto LABEL_45;
    }
  }

  lastName = self->_lastName;
  if (lastName | *(equalCopy + 7))
  {
    if (![(NSString *)lastName isEqual:?])
    {
      goto LABEL_45;
    }
  }

  phoneticLastName = self->_phoneticLastName;
  if (phoneticLastName | *(equalCopy + 12))
  {
    if (![(NSString *)phoneticLastName isEqual:?])
    {
      goto LABEL_45;
    }
  }

  organizationName = self->_organizationName;
  if (organizationName | *(equalCopy + 10))
  {
    if (![(NSString *)organizationName isEqual:?])
    {
      goto LABEL_45;
    }
  }

  jobTitle = self->_jobTitle;
  if (jobTitle | *(equalCopy + 6))
  {
    if (![(NSString *)jobTitle isEqual:?])
    {
      goto LABEL_45;
    }
  }

  nickname = self->_nickname;
  if (nickname | *(equalCopy + 9))
  {
    if (![(NSString *)nickname isEqual:?])
    {
      goto LABEL_45;
    }
  }

  relatedNames = self->_relatedNames;
  if (relatedNames | *(equalCopy + 14))
  {
    if (![(NSMutableArray *)relatedNames isEqual:?])
    {
      goto LABEL_45;
    }
  }

  streetNames = self->_streetNames;
  if (streetNames | *(equalCopy + 17))
  {
    if (![(NSMutableArray *)streetNames isEqual:?])
    {
      goto LABEL_45;
    }
  }

  cityNames = self->_cityNames;
  if (cityNames | *(equalCopy + 3))
  {
    v19 = [(NSMutableArray *)cityNames isEqual:?];
  }

  else
  {
    v19 = 1;
  }

LABEL_46:

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_score;
    *(v5 + 144) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 120) = self->_source;
  *(v5 + 144) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(v5 + 16) = self->_changeType;
    *(v5 + 144) |= 2u;
  }

LABEL_5:
  v9 = [(NSString *)self->_sourceIdentifier copyWithZone:zone];
  v10 = *(v5 + 128);
  *(v5 + 128) = v9;

  v11 = [(NSString *)self->_firstName copyWithZone:zone];
  v12 = *(v5 + 32);
  *(v5 + 32) = v11;

  v13 = [(NSString *)self->_phoneticFirstName copyWithZone:zone];
  v14 = *(v5 + 88);
  *(v5 + 88) = v13;

  v15 = [(NSString *)self->_middleName copyWithZone:zone];
  v16 = *(v5 + 64);
  *(v5 + 64) = v15;

  v17 = [(NSString *)self->_phoneticMiddleName copyWithZone:zone];
  v18 = *(v5 + 104);
  *(v5 + 104) = v17;

  v19 = [(NSString *)self->_lastName copyWithZone:zone];
  v20 = *(v5 + 56);
  *(v5 + 56) = v19;

  v21 = [(NSString *)self->_phoneticLastName copyWithZone:zone];
  v22 = *(v5 + 96);
  *(v5 + 96) = v21;

  v23 = [(NSString *)self->_organizationName copyWithZone:zone];
  v24 = *(v5 + 80);
  *(v5 + 80) = v23;

  v25 = [(NSString *)self->_jobTitle copyWithZone:zone];
  v26 = *(v5 + 48);
  *(v5 + 48) = v25;

  v27 = [(NSString *)self->_nickname copyWithZone:zone];
  v28 = *(v5 + 72);
  *(v5 + 72) = v27;

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v29 = self->_relatedNames;
  v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v56 objects:v62 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v57;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v57 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = [*(*(&v56 + 1) + 8 * i) copyWithZone:zone];
        [v5 addRelatedNames:v34];
      }

      v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v56 objects:v62 count:16];
    }

    while (v31);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v35 = self->_streetNames;
  v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v53;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v53 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = [*(*(&v52 + 1) + 8 * j) copyWithZone:zone];
        [v5 addStreetNames:v40];
      }

      v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v37);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v41 = self->_cityNames;
  v42 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v48 objects:v60 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v49;
    do
    {
      for (k = 0; k != v43; ++k)
      {
        if (*v49 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = [*(*(&v48 + 1) + 8 * k) copyWithZone:{zone, v48}];
        [v5 addCityNames:v46];
      }

      v43 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v48 objects:v60 count:16];
    }

    while (v43);
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v18 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v18;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = *&self->_score;
    *(toCopy + 144) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 120) = self->_source;
  *(toCopy + 144) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    *(toCopy + 16) = self->_changeType;
    *(toCopy + 144) |= 2u;
  }

LABEL_7:
  if (self->_sourceIdentifier)
  {
    [v18 setSourceIdentifier:?];
  }

  if (self->_firstName)
  {
    [v18 setFirstName:?];
  }

  if (self->_phoneticFirstName)
  {
    [v18 setPhoneticFirstName:?];
  }

  if (self->_middleName)
  {
    [v18 setMiddleName:?];
  }

  if (self->_phoneticMiddleName)
  {
    [v18 setPhoneticMiddleName:?];
  }

  if (self->_lastName)
  {
    [v18 setLastName:?];
  }

  if (self->_phoneticLastName)
  {
    [v18 setPhoneticLastName:?];
  }

  if (self->_organizationName)
  {
    [v18 setOrganizationName:?];
  }

  if (self->_jobTitle)
  {
    [v18 setJobTitle:?];
  }

  if (self->_nickname)
  {
    [v18 setNickname:?];
  }

  if ([(PPPBContactNameRecord *)self relatedNamesCount])
  {
    [v18 clearRelatedNames];
    relatedNamesCount = [(PPPBContactNameRecord *)self relatedNamesCount];
    if (relatedNamesCount)
    {
      v7 = relatedNamesCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(PPPBContactNameRecord *)self relatedNamesAtIndex:i];
        [v18 addRelatedNames:v9];
      }
    }
  }

  if ([(PPPBContactNameRecord *)self streetNamesCount])
  {
    [v18 clearStreetNames];
    streetNamesCount = [(PPPBContactNameRecord *)self streetNamesCount];
    if (streetNamesCount)
    {
      v11 = streetNamesCount;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(PPPBContactNameRecord *)self streetNamesAtIndex:j];
        [v18 addStreetNames:v13];
      }
    }
  }

  if ([(PPPBContactNameRecord *)self cityNamesCount])
  {
    [v18 clearCityNames];
    cityNamesCount = [(PPPBContactNameRecord *)self cityNamesCount];
    if (cityNamesCount)
    {
      v15 = cityNamesCount;
      for (k = 0; k != v15; ++k)
      {
        v17 = [(PPPBContactNameRecord *)self cityNamesAtIndex:k];
        [v18 addCityNames:v17];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v36 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    PBDataWriterWriteInt32Field();
  }

LABEL_7:
  if (self->_sourceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_firstName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_phoneticFirstName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_middleName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_phoneticMiddleName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_lastName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_phoneticLastName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_organizationName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_jobTitle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_nickname)
  {
    PBDataWriterWriteStringField();
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = self->_relatedNames;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v8);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = self->_streetNames;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteStringField();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v13);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = self->_cityNames;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        PBDataWriterWriteStringField();
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v18);
  }
}

- (id)dictionaryRepresentation
{
  v37 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  has = self->_has;
  if (has)
  {
    v29 = [MEMORY[0x277CCABB0] numberWithDouble:self->_score];
    [v4 setObject:v29 forKey:@"score"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_source];
  stringValue = [v30 stringValue];
  [v4 setObject:stringValue forKey:@"source"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_changeType];
    stringValue2 = [v7 stringValue];
    [v4 setObject:stringValue2 forKey:@"changeType"];
  }

LABEL_7:
  sourceIdentifier = self->_sourceIdentifier;
  if (sourceIdentifier)
  {
    [v4 setObject:sourceIdentifier forKey:@"sourceIdentifier"];
  }

  firstName = self->_firstName;
  if (firstName)
  {
    [v4 setObject:firstName forKey:@"firstName"];
  }

  phoneticFirstName = self->_phoneticFirstName;
  if (phoneticFirstName)
  {
    [v4 setObject:phoneticFirstName forKey:@"phoneticFirstName"];
  }

  middleName = self->_middleName;
  if (middleName)
  {
    [v4 setObject:middleName forKey:@"middleName"];
  }

  phoneticMiddleName = self->_phoneticMiddleName;
  if (phoneticMiddleName)
  {
    [v4 setObject:phoneticMiddleName forKey:@"phoneticMiddleName"];
  }

  lastName = self->_lastName;
  if (lastName)
  {
    [v4 setObject:lastName forKey:@"lastName"];
  }

  phoneticLastName = self->_phoneticLastName;
  if (phoneticLastName)
  {
    [v4 setObject:phoneticLastName forKey:@"phoneticLastName"];
  }

  organizationName = self->_organizationName;
  if (organizationName)
  {
    [v4 setObject:organizationName forKey:@"organizationName"];
  }

  jobTitle = self->_jobTitle;
  if (jobTitle)
  {
    [v4 setObject:jobTitle forKey:@"jobTitle"];
  }

  nickname = self->_nickname;
  if (nickname)
  {
    [v4 setObject:nickname forKey:@"nickname"];
  }

  if ([(NSMutableArray *)self->_relatedNames count])
  {
    v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_relatedNames, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v20 = self->_relatedNames;
    v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v33;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v33 != v23)
          {
            objc_enumerationMutation(v20);
          }

          dictionaryRepresentation = [*(*(&v32 + 1) + 8 * i) dictionaryRepresentation];
          [v19 addObject:dictionaryRepresentation];
        }

        v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v22);
    }

    [v4 setObject:v19 forKey:@"relatedNames"];
  }

  streetNames = self->_streetNames;
  if (streetNames)
  {
    [v4 setObject:streetNames forKey:@"streetNames"];
  }

  cityNames = self->_cityNames;
  if (cityNames)
  {
    [v4 setObject:cityNames forKey:@"cityNames"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPPBContactNameRecord;
  v4 = [(PPPBContactNameRecord *)&v8 description];
  dictionaryRepresentation = [(PPPBContactNameRecord *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addCityNames:(id)names
{
  namesCopy = names;
  cityNames = self->_cityNames;
  v8 = namesCopy;
  if (!cityNames)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cityNames;
    self->_cityNames = v6;

    namesCopy = v8;
    cityNames = self->_cityNames;
  }

  [(NSMutableArray *)cityNames addObject:namesCopy];
}

- (void)addStreetNames:(id)names
{
  namesCopy = names;
  streetNames = self->_streetNames;
  v8 = namesCopy;
  if (!streetNames)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_streetNames;
    self->_streetNames = v6;

    namesCopy = v8;
    streetNames = self->_streetNames;
  }

  [(NSMutableArray *)streetNames addObject:namesCopy];
}

- (void)addRelatedNames:(id)names
{
  namesCopy = names;
  relatedNames = self->_relatedNames;
  v8 = namesCopy;
  if (!relatedNames)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_relatedNames;
    self->_relatedNames = v6;

    namesCopy = v8;
    relatedNames = self->_relatedNames;
  }

  [(NSMutableArray *)relatedNames addObject:namesCopy];
}

- (id)changeTypeAsString:(unsigned __int8)string
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:string];
  stringValue = [v3 stringValue];

  return stringValue;
}

- (void)setHasChangeType:(BOOL)type
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

- (id)sourceAsString:(unsigned __int8)string
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:string];
  stringValue = [v3 stringValue];

  return stringValue;
}

- (void)setHasSource:(BOOL)source
{
  if (source)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

@end