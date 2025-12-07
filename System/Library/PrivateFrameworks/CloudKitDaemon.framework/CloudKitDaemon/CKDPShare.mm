@interface CKDPShare
- (BOOL)isEqual:(id)equal;
- (id)_publicAccessCKLogValue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)participantSelfRemovalBehaviorAsString:(int)string;
- (id)publicAccessAsString:(int)string;
- (id)publisherModelTypeAsString:(int)string;
- (int)StringAsParticipantSelfRemovalBehavior:(id)behavior;
- (int)StringAsPublicAccess:(id)access;
- (int)StringAsPublisherModelType:(id)type;
- (int)participantSelfRemovalBehavior;
- (int)publicAccess;
- (int)publisherModelType;
- (unint64_t)hash;
- (void)addInvitedKeyToRemove:(id)remove;
- (void)addParticipant:(id)participant;
- (void)addPotentialMatch:(id)match;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAllowAnyoneToResolveShare:(BOOL)share;
- (void)setHasAnonymousPublicAccess:(BOOL)access;
- (void)setHasDenyAccessRequests:(BOOL)requests;
- (void)setHasPublicAccess:(BOOL)access;
- (void)setHasPublisherModel:(BOOL)model;
- (void)setHasPublisherModelType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation CKDPShare

- (id)_publicAccessCKLogValue
{
  v3 = objc_msgSend_publicAccess(self, a2, v2);
  if ((v3 - 1) >= 3)
  {
    v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", v3);
  }

  else
  {
    v5 = *(&off_278548618 + (v3 - 1));
  }

  return v5;
}

- (int)publicAccess
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_publicAccess;
  }

  else
  {
    return 1;
  }
}

- (void)setHasPublicAccess:(BOOL)access
{
  if (access)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)publicAccessAsString:(int)string
{
  if ((string - 1) >= 3)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  else
  {
    v4 = off_27854CC50[string - 1];
  }

  return v4;
}

- (int)StringAsPublicAccess:(id)access
{
  accessCopy = access;
  if (objc_msgSend_isEqualToString_(accessCopy, v4, @"none"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(accessCopy, v5, @"readOnly"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(accessCopy, v7, @"readWrite"))
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)addParticipant:(id)participant
{
  participantCopy = participant;
  participants = self->_participants;
  v8 = participantCopy;
  if (!participants)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_participants;
    self->_participants = v6;

    participantCopy = v8;
    participants = self->_participants;
  }

  objc_msgSend_addObject_(participants, participantCopy, participantCopy);
}

- (void)addPotentialMatch:(id)match
{
  matchCopy = match;
  potentialMatchs = self->_potentialMatchs;
  v8 = matchCopy;
  if (!potentialMatchs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_potentialMatchs;
    self->_potentialMatchs = v6;

    matchCopy = v8;
    potentialMatchs = self->_potentialMatchs;
  }

  objc_msgSend_addObject_(potentialMatchs, matchCopy, matchCopy);
}

- (void)addInvitedKeyToRemove:(id)remove
{
  removeCopy = remove;
  invitedKeyToRemoves = self->_invitedKeyToRemoves;
  v8 = removeCopy;
  if (!invitedKeyToRemoves)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_invitedKeyToRemoves;
    self->_invitedKeyToRemoves = v6;

    removeCopy = v8;
    invitedKeyToRemoves = self->_invitedKeyToRemoves;
  }

  objc_msgSend_addObject_(invitedKeyToRemoves, removeCopy, removeCopy);
}

- (void)setHasPublisherModel:(BOOL)model
{
  if (model)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasAnonymousPublicAccess:(BOOL)access
{
  if (access)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)publisherModelType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_publisherModelType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasPublisherModelType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)publisherModelTypeAsString:(int)string
{
  if ((string - 1) >= 4)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  else
  {
    v4 = off_27854CC68[string - 1];
  }

  return v4;
}

- (int)StringAsPublisherModelType:(id)type
{
  typeCopy = type;
  if (objc_msgSend_isEqualToString_(typeCopy, v4, @"participantsSeeAccepted"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v5, @"readOnlyCannotSeeReadOnly"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v7, @"selfAndOwner"))
  {
    v6 = 3;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v8, @"anonymousPublic"))
  {
    v6 = 4;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (int)participantSelfRemovalBehavior
{
  if (*&self->_has)
  {
    return self->_participantSelfRemovalBehavior;
  }

  else
  {
    return 1;
  }
}

- (id)participantSelfRemovalBehaviorAsString:(int)string
{
  if ((string - 1) >= 3)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  else
  {
    v4 = off_27854CC88[string - 1];
  }

  return v4;
}

- (int)StringAsParticipantSelfRemovalBehavior:(id)behavior
{
  behaviorCopy = behavior;
  if (objc_msgSend_isEqualToString_(behaviorCopy, v4, @"setInvited"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(behaviorCopy, v5, @"setUnsubscribed"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(behaviorCopy, v7, @"removeFromShare"))
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)setHasDenyAccessRequests:(BOOL)requests
{
  if (requests)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasAllowAnyoneToResolveShare:(BOOL)share
{
  if (share)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPShare;
  v4 = [(CKDPShare *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v100 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  shareId = self->_shareId;
  if (shareId)
  {
    v8 = objc_msgSend_dictionaryRepresentation(shareId, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"shareId");
  }

  etag = self->_etag;
  if (etag)
  {
    objc_msgSend_setObject_forKey_(v6, v4, etag, @"etag");
  }

  if ((*&self->_has & 2) != 0)
  {
    v11 = self->_publicAccess - 1;
    if (v11 >= 3)
    {
      v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", self->_publicAccess);
    }

    else
    {
      v12 = off_27854CC50[v11];
    }

    objc_msgSend_setObject_forKey_(v6, v4, v12, @"publicAccess");
  }

  invitedPcs = self->_invitedPcs;
  if (invitedPcs)
  {
    v14 = objc_msgSend_dictionaryRepresentation(invitedPcs, v4, etag);
    objc_msgSend_setObject_forKey_(v6, v15, v14, @"invitedPcs");
  }

  selfAddedPcs = self->_selfAddedPcs;
  if (selfAddedPcs)
  {
    v17 = objc_msgSend_dictionaryRepresentation(selfAddedPcs, v4, etag);
    objc_msgSend_setObject_forKey_(v6, v18, v17, @"selfAddedPcs");
  }

  if (objc_msgSend_count(self->_participants, v4, etag))
  {
    v20 = objc_alloc(MEMORY[0x277CBEB18]);
    v23 = objc_msgSend_count(self->_participants, v21, v22);
    v25 = objc_msgSend_initWithCapacity_(v20, v24, v23);
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v26 = self->_participants;
    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v94, v99, 16);
    if (v28)
    {
      v31 = v28;
      v32 = *v95;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v95 != v32)
          {
            objc_enumerationMutation(v26);
          }

          v34 = objc_msgSend_dictionaryRepresentation(*(*(&v94 + 1) + 8 * i), v29, v30);
          objc_msgSend_addObject_(v25, v35, v34);
        }

        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v94, v99, 16);
      }

      while (v31);
    }

    objc_msgSend_setObject_forKey_(v6, v36, v25, @"participant");
  }

  shortTokenRoutingKey = self->_shortTokenRoutingKey;
  if (shortTokenRoutingKey)
  {
    objc_msgSend_setObject_forKey_(v6, v19, shortTokenRoutingKey, @"shortTokenRoutingKey");
  }

  if (objc_msgSend_count(self->_potentialMatchs, v19, shortTokenRoutingKey))
  {
    v39 = objc_alloc(MEMORY[0x277CBEB18]);
    v42 = objc_msgSend_count(self->_potentialMatchs, v40, v41);
    v44 = objc_msgSend_initWithCapacity_(v39, v43, v42);
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v45 = self->_potentialMatchs;
    v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v90, v98, 16);
    if (v47)
    {
      v50 = v47;
      v51 = *v91;
      do
      {
        for (j = 0; j != v50; ++j)
        {
          if (*v91 != v51)
          {
            objc_enumerationMutation(v45);
          }

          v53 = objc_msgSend_dictionaryRepresentation(*(*(&v90 + 1) + 8 * j), v48, v49);
          objc_msgSend_addObject_(v44, v54, v53);
        }

        v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v48, &v90, v98, 16);
      }

      while (v50);
    }

    objc_msgSend_setObject_forKey_(v6, v55, v44, @"potentialMatch");
  }

  invitedKeyToRemoves = self->_invitedKeyToRemoves;
  if (invitedKeyToRemoves)
  {
    objc_msgSend_setObject_forKey_(v6, v38, invitedKeyToRemoves, @"invitedKeyToRemove");
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v58 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v38, self->_publisherModel);
    objc_msgSend_setObject_forKey_(v6, v59, v58, @"publisherModel");

    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    v60 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v38, self->_anonymousPublicAccess);
    objc_msgSend_setObject_forKey_(v6, v61, v60, @"anonymousPublicAccess");
  }

  displayedHostname = self->_displayedHostname;
  if (displayedHostname)
  {
    objc_msgSend_setObject_forKey_(v6, v38, displayedHostname, @"displayedHostname");
  }

  v63 = self->_has;
  if ((v63 & 4) != 0)
  {
    v86 = self->_publisherModelType - 1;
    if (v86 >= 4)
    {
      v87 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v38, @"(unknown: %i)", self->_publisherModelType);
    }

    else
    {
      v87 = off_27854CC68[v86];
    }

    objc_msgSend_setObject_forKey_(v6, v38, v87, @"publisherModelType");

    v63 = self->_has;
    if ((v63 & 1) == 0)
    {
LABEL_44:
      if ((v63 & 0x20) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_44;
  }

  v88 = self->_participantSelfRemovalBehavior - 1;
  if (v88 >= 3)
  {
    v89 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v38, @"(unknown: %i)", self->_participantSelfRemovalBehavior);
  }

  else
  {
    v89 = off_27854CC88[v88];
  }

  objc_msgSend_setObject_forKey_(v6, v38, v89, @"participantSelfRemovalBehavior");

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_45:
    v64 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v38, self->_denyAccessRequests);
    objc_msgSend_setObject_forKey_(v6, v65, v64, @"denyAccessRequests");
  }

LABEL_46:
  requestingAccess = self->_requestingAccess;
  if (requestingAccess)
  {
    v67 = objc_msgSend_dictionaryRepresentation(requestingAccess, v38, displayedHostname);
    objc_msgSend_setObject_forKey_(v6, v68, v67, @"requestingAccess");
  }

  blockedAccess = self->_blockedAccess;
  if (blockedAccess)
  {
    v70 = objc_msgSend_dictionaryRepresentation(blockedAccess, v38, displayedHostname);
    objc_msgSend_setObject_forKey_(v6, v71, v70, @"blockedAccess");
  }

  cryptoRequirementsSigningKey = self->_cryptoRequirementsSigningKey;
  if (cryptoRequirementsSigningKey)
  {
    v73 = objc_msgSend_dictionaryRepresentation(cryptoRequirementsSigningKey, v38, displayedHostname);
    objc_msgSend_setObject_forKey_(v6, v74, v73, @"cryptoRequirementsSigningKey");
  }

  if ((*&self->_has & 8) != 0)
  {
    v75 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v38, self->_allowAnyoneToResolveShare);
    objc_msgSend_setObject_forKey_(v6, v76, v75, @"allowAnyoneToResolveShare");
  }

  invitedPcsKeysToRemove = self->_invitedPcsKeysToRemove;
  if (invitedPcsKeysToRemove)
  {
    v78 = objc_msgSend_dictionaryRepresentation(invitedPcsKeysToRemove, v38, displayedHostname);
    objc_msgSend_setObject_forKey_(v6, v79, v78, @"invitedPcsKeysToRemove");
  }

  selfAddedPcsKeysToRemove = self->_selfAddedPcsKeysToRemove;
  if (selfAddedPcsKeysToRemove)
  {
    v81 = objc_msgSend_dictionaryRepresentation(selfAddedPcsKeysToRemove, v38, displayedHostname);
    objc_msgSend_setObject_forKey_(v6, v82, v81, @"selfAddedPcsKeysToRemove");
  }

  shortTokenHash = self->_shortTokenHash;
  if (shortTokenHash)
  {
    objc_msgSend_setObject_forKey_(v6, v38, shortTokenHash, @"shortTokenHash");
  }

  origin = self->_origin;
  if (origin)
  {
    objc_msgSend_setObject_forKey_(v6, v38, origin, @"origin");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  v43 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_shareId)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_etag)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_invitedPcs)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_selfAddedPcs)
  {
    PBDataWriterWriteSubmessage();
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = self->_participants;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v36, v42, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v37;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v11, &v36, v42, 16);
    }

    while (v8);
  }

  if (self->_shortTokenRoutingKey)
  {
    PBDataWriterWriteStringField();
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = self->_potentialMatchs;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v32, v41, 16);
  if (v14)
  {
    v15 = v14;
    v16 = *v33;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v12);
        }

        PBDataWriterWriteSubmessage();
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v18, &v32, v41, 16);
    }

    while (v15);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v19 = self->_invitedKeyToRemoves;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v28, v40, 16);
  if (v21)
  {
    v22 = v21;
    v23 = *v29;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(v19);
        }

        PBDataWriterWriteDataField();
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v25, &v28, v40, 16);
    }

    while (v22);
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_displayedHostname)
  {
    PBDataWriterWriteStringField();
  }

  v27 = self->_has;
  if ((v27 & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    v27 = self->_has;
    if ((v27 & 1) == 0)
    {
LABEL_42:
      if ((v27 & 0x20) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_42;
  }

  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_43:
    PBDataWriterWriteBOOLField();
  }

LABEL_44:
  if (self->_requestingAccess)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_blockedAccess)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_cryptoRequirementsSigningKey)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_invitedPcsKeysToRemove)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_selfAddedPcsKeysToRemove)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_shortTokenHash)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_origin)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  shareId = self->_shareId;
  v49 = toCopy;
  if (shareId)
  {
    objc_msgSend_setShareId_(toCopy, v5, shareId);
    toCopy = v49;
  }

  etag = self->_etag;
  if (etag)
  {
    objc_msgSend_setEtag_(v49, v5, etag);
    toCopy = v49;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 24) = self->_publicAccess;
    toCopy[156] |= 2u;
  }

  invitedPcs = self->_invitedPcs;
  if (invitedPcs)
  {
    objc_msgSend_setInvitedPcs_(v49, v5, invitedPcs);
  }

  selfAddedPcs = self->_selfAddedPcs;
  if (selfAddedPcs)
  {
    objc_msgSend_setSelfAddedPcs_(v49, v5, selfAddedPcs);
  }

  if (objc_msgSend_participantsCount(self, v5, selfAddedPcs))
  {
    objc_msgSend_clearParticipants(v49, v10, v11);
    v14 = objc_msgSend_participantsCount(self, v12, v13);
    if (v14)
    {
      v15 = v14;
      for (i = 0; i != v15; ++i)
      {
        v17 = objc_msgSend_participantAtIndex_(self, v10, i);
        objc_msgSend_addParticipant_(v49, v18, v17);
      }
    }
  }

  shortTokenRoutingKey = self->_shortTokenRoutingKey;
  if (shortTokenRoutingKey)
  {
    objc_msgSend_setShortTokenRoutingKey_(v49, v10, shortTokenRoutingKey);
  }

  if (objc_msgSend_potentialMatchsCount(self, v10, shortTokenRoutingKey))
  {
    objc_msgSend_clearPotentialMatchs(v49, v20, v21);
    v24 = objc_msgSend_potentialMatchsCount(self, v22, v23);
    if (v24)
    {
      v25 = v24;
      for (j = 0; j != v25; ++j)
      {
        v27 = objc_msgSend_potentialMatchAtIndex_(self, v20, j);
        objc_msgSend_addPotentialMatch_(v49, v28, v27);
      }
    }
  }

  if (objc_msgSend_invitedKeyToRemovesCount(self, v20, v21))
  {
    objc_msgSend_clearInvitedKeyToRemoves(v49, v29, v30);
    v33 = objc_msgSend_invitedKeyToRemovesCount(self, v31, v32);
    if (v33)
    {
      v34 = v33;
      for (k = 0; k != v34; ++k)
      {
        v36 = objc_msgSend_invitedKeyToRemoveAtIndex_(self, v29, k);
        objc_msgSend_addInvitedKeyToRemove_(v49, v37, v36);
      }
    }
  }

  has = self->_has;
  v39 = v49;
  if ((has & 0x40) != 0)
  {
    v49[155] = self->_publisherModel;
    v49[156] |= 0x40u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    v49[153] = self->_anonymousPublicAccess;
    v49[156] |= 0x10u;
  }

  displayedHostname = self->_displayedHostname;
  if (displayedHostname)
  {
    objc_msgSend_setDisplayedHostname_(v49, v29, displayedHostname);
    v39 = v49;
  }

  v41 = self->_has;
  if ((v41 & 4) != 0)
  {
    *(v39 + 25) = self->_publisherModelType;
    v39[156] |= 4u;
    v41 = self->_has;
    if ((v41 & 1) == 0)
    {
LABEL_33:
      if ((v41 & 0x20) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_33;
  }

  *(v39 + 18) = self->_participantSelfRemovalBehavior;
  v39[156] |= 1u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_34:
    v39[154] = self->_denyAccessRequests;
    v39[156] |= 0x20u;
  }

LABEL_35:
  requestingAccess = self->_requestingAccess;
  if (requestingAccess)
  {
    objc_msgSend_setRequestingAccess_(v49, v29, requestingAccess);
    v39 = v49;
  }

  blockedAccess = self->_blockedAccess;
  if (blockedAccess)
  {
    objc_msgSend_setBlockedAccess_(v49, v29, blockedAccess);
    v39 = v49;
  }

  cryptoRequirementsSigningKey = self->_cryptoRequirementsSigningKey;
  if (cryptoRequirementsSigningKey)
  {
    objc_msgSend_setCryptoRequirementsSigningKey_(v49, v29, cryptoRequirementsSigningKey);
    v39 = v49;
  }

  if ((*&self->_has & 8) != 0)
  {
    v39[152] = self->_allowAnyoneToResolveShare;
    v39[156] |= 8u;
  }

  invitedPcsKeysToRemove = self->_invitedPcsKeysToRemove;
  if (invitedPcsKeysToRemove)
  {
    objc_msgSend_setInvitedPcsKeysToRemove_(v49, v29, invitedPcsKeysToRemove);
    v39 = v49;
  }

  selfAddedPcsKeysToRemove = self->_selfAddedPcsKeysToRemove;
  if (selfAddedPcsKeysToRemove)
  {
    objc_msgSend_setSelfAddedPcsKeysToRemove_(v49, v29, selfAddedPcsKeysToRemove);
    v39 = v49;
  }

  shortTokenHash = self->_shortTokenHash;
  if (shortTokenHash)
  {
    objc_msgSend_setShortTokenHash_(v49, v29, shortTokenHash);
    v39 = v49;
  }

  origin = self->_origin;
  if (origin)
  {
    objc_msgSend_setOrigin_(v49, v29, origin);
    v39 = v49;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v95 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_shareId, v11, zone);
  v13 = *(v10 + 128);
  *(v10 + 128) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_etag, v14, zone);
  v16 = *(v10 + 32);
  *(v10 + 32) = v15;

  if ((*&self->_has & 2) != 0)
  {
    *(v10 + 96) = self->_publicAccess;
    *(v10 + 156) |= 2u;
  }

  v18 = objc_msgSend_copyWithZone_(self->_invitedPcs, v17, zone);
  v19 = *(v10 + 48);
  *(v10 + 48) = v18;

  v21 = objc_msgSend_copyWithZone_(self->_selfAddedPcs, v20, zone);
  v22 = *(v10 + 112);
  *(v10 + 112) = v21;

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v23 = self->_participants;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v88, v94, 16);
  if (v25)
  {
    v27 = v25;
    v28 = *v89;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v89 != v28)
        {
          objc_enumerationMutation(v23);
        }

        v30 = objc_msgSend_copyWithZone_(*(*(&v88 + 1) + 8 * i), v26, zone);
        objc_msgSend_addParticipant_(v10, v31, v30);
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v88, v94, 16);
    }

    while (v27);
  }

  v33 = objc_msgSend_copyWithZone_(self->_shortTokenRoutingKey, v32, zone);
  v34 = *(v10 + 144);
  *(v10 + 144) = v33;

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v35 = self->_potentialMatchs;
  v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v84, v93, 16);
  if (v37)
  {
    v39 = v37;
    v40 = *v85;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v85 != v40)
        {
          objc_enumerationMutation(v35);
        }

        v42 = objc_msgSend_copyWithZone_(*(*(&v84 + 1) + 8 * j), v38, zone);
        objc_msgSend_addPotentialMatch_(v10, v43, v42);
      }

      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v38, &v84, v93, 16);
    }

    while (v39);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v44 = self->_invitedKeyToRemoves;
  v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v45, &v80, v92, 16);
  if (v46)
  {
    v48 = v46;
    v49 = *v81;
    do
    {
      for (k = 0; k != v48; ++k)
      {
        if (*v81 != v49)
        {
          objc_enumerationMutation(v44);
        }

        v51 = objc_msgSend_copyWithZone_(*(*(&v80 + 1) + 8 * k), v47, zone, v80);
        objc_msgSend_addInvitedKeyToRemove_(v10, v52, v51);
      }

      v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v47, &v80, v92, 16);
    }

    while (v48);
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(v10 + 155) = self->_publisherModel;
    *(v10 + 156) |= 0x40u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    *(v10 + 153) = self->_anonymousPublicAccess;
    *(v10 + 156) |= 0x10u;
  }

  v55 = objc_msgSend_copyWithZone_(self->_displayedHostname, v53, zone, v80);
  v56 = *(v10 + 24);
  *(v10 + 24) = v55;

  v58 = self->_has;
  if ((v58 & 4) != 0)
  {
    *(v10 + 100) = self->_publisherModelType;
    *(v10 + 156) |= 4u;
    v58 = self->_has;
    if ((v58 & 1) == 0)
    {
LABEL_30:
      if ((v58 & 0x20) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_30;
  }

  *(v10 + 72) = self->_participantSelfRemovalBehavior;
  *(v10 + 156) |= 1u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_31:
    *(v10 + 154) = self->_denyAccessRequests;
    *(v10 + 156) |= 0x20u;
  }

LABEL_32:
  v59 = objc_msgSend_copyWithZone_(self->_requestingAccess, v57, zone);
  v60 = *(v10 + 104);
  *(v10 + 104) = v59;

  v62 = objc_msgSend_copyWithZone_(self->_blockedAccess, v61, zone);
  v63 = *(v10 + 8);
  *(v10 + 8) = v62;

  v65 = objc_msgSend_copyWithZone_(self->_cryptoRequirementsSigningKey, v64, zone);
  v66 = *(v10 + 16);
  *(v10 + 16) = v65;

  if ((*&self->_has & 8) != 0)
  {
    *(v10 + 152) = self->_allowAnyoneToResolveShare;
    *(v10 + 156) |= 8u;
  }

  v68 = objc_msgSend_copyWithZone_(self->_invitedPcsKeysToRemove, v67, zone);
  v69 = *(v10 + 56);
  *(v10 + 56) = v68;

  v71 = objc_msgSend_copyWithZone_(self->_selfAddedPcsKeysToRemove, v70, zone);
  v72 = *(v10 + 120);
  *(v10 + 120) = v71;

  v74 = objc_msgSend_copyWithZone_(self->_shortTokenHash, v73, zone);
  v75 = *(v10 + 136);
  *(v10 + 136) = v74;

  v77 = objc_msgSend_copyWithZone_(self->_origin, v76, zone);
  v78 = *(v10 + 64);
  *(v10 + 64) = v77;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_71;
  }

  shareId = self->_shareId;
  v9 = equalCopy[16];
  if (shareId | v9)
  {
    if (!objc_msgSend_isEqual_(shareId, v7, v9))
    {
      goto LABEL_71;
    }
  }

  etag = self->_etag;
  v11 = equalCopy[4];
  if (etag | v11)
  {
    if (!objc_msgSend_isEqual_(etag, v7, v11))
    {
      goto LABEL_71;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 156) & 2) == 0 || self->_publicAccess != *(equalCopy + 24))
    {
      goto LABEL_71;
    }
  }

  else if ((*(equalCopy + 156) & 2) != 0)
  {
    goto LABEL_71;
  }

  invitedPcs = self->_invitedPcs;
  v13 = equalCopy[6];
  if (invitedPcs | v13 && !objc_msgSend_isEqual_(invitedPcs, v7, v13))
  {
    goto LABEL_71;
  }

  selfAddedPcs = self->_selfAddedPcs;
  v15 = equalCopy[14];
  if (selfAddedPcs | v15)
  {
    if (!objc_msgSend_isEqual_(selfAddedPcs, v7, v15))
    {
      goto LABEL_71;
    }
  }

  participants = self->_participants;
  v17 = equalCopy[10];
  if (participants | v17)
  {
    if (!objc_msgSend_isEqual_(participants, v7, v17))
    {
      goto LABEL_71;
    }
  }

  shortTokenRoutingKey = self->_shortTokenRoutingKey;
  v19 = equalCopy[18];
  if (shortTokenRoutingKey | v19)
  {
    if (!objc_msgSend_isEqual_(shortTokenRoutingKey, v7, v19))
    {
      goto LABEL_71;
    }
  }

  potentialMatchs = self->_potentialMatchs;
  v21 = equalCopy[11];
  if (potentialMatchs | v21)
  {
    if (!objc_msgSend_isEqual_(potentialMatchs, v7, v21))
    {
      goto LABEL_71;
    }
  }

  invitedKeyToRemoves = self->_invitedKeyToRemoves;
  v23 = equalCopy[5];
  if (invitedKeyToRemoves | v23)
  {
    if (!objc_msgSend_isEqual_(invitedKeyToRemoves, v7, v23))
    {
      goto LABEL_71;
    }
  }

  has = self->_has;
  v25 = *(equalCopy + 156);
  if ((has & 0x40) != 0)
  {
    if ((*(equalCopy + 156) & 0x40) == 0)
    {
      goto LABEL_71;
    }

    if (self->_publisherModel)
    {
      if ((*(equalCopy + 155) & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    else if (*(equalCopy + 155))
    {
      goto LABEL_71;
    }
  }

  else if ((*(equalCopy + 156) & 0x40) != 0)
  {
    goto LABEL_71;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 156) & 0x10) == 0)
    {
      goto LABEL_71;
    }

    if (self->_anonymousPublicAccess)
    {
      if ((*(equalCopy + 153) & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    else if (*(equalCopy + 153))
    {
      goto LABEL_71;
    }
  }

  else if ((*(equalCopy + 156) & 0x10) != 0)
  {
    goto LABEL_71;
  }

  displayedHostname = self->_displayedHostname;
  v27 = equalCopy[3];
  if (displayedHostname | v27)
  {
    if (!objc_msgSend_isEqual_(displayedHostname, v7, v27))
    {
      goto LABEL_71;
    }

    has = self->_has;
    v25 = *(equalCopy + 156);
  }

  if ((has & 4) != 0)
  {
    if ((v25 & 4) == 0 || self->_publisherModelType != *(equalCopy + 25))
    {
      goto LABEL_71;
    }
  }

  else if ((v25 & 4) != 0)
  {
    goto LABEL_71;
  }

  if (has)
  {
    if ((v25 & 1) == 0 || self->_participantSelfRemovalBehavior != *(equalCopy + 18))
    {
      goto LABEL_71;
    }
  }

  else if (v25)
  {
    goto LABEL_71;
  }

  if ((has & 0x20) != 0)
  {
    if ((v25 & 0x20) == 0)
    {
      goto LABEL_71;
    }

    if (self->_denyAccessRequests)
    {
      if ((*(equalCopy + 154) & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    else if (*(equalCopy + 154))
    {
      goto LABEL_71;
    }
  }

  else if ((v25 & 0x20) != 0)
  {
    goto LABEL_71;
  }

  requestingAccess = self->_requestingAccess;
  v29 = equalCopy[13];
  if (requestingAccess | v29 && !objc_msgSend_isEqual_(requestingAccess, v7, v29))
  {
    goto LABEL_71;
  }

  blockedAccess = self->_blockedAccess;
  v31 = equalCopy[1];
  if (blockedAccess | v31)
  {
    if (!objc_msgSend_isEqual_(blockedAccess, v7, v31))
    {
      goto LABEL_71;
    }
  }

  cryptoRequirementsSigningKey = self->_cryptoRequirementsSigningKey;
  v33 = equalCopy[2];
  if (cryptoRequirementsSigningKey | v33)
  {
    if (!objc_msgSend_isEqual_(cryptoRequirementsSigningKey, v7, v33))
    {
      goto LABEL_71;
    }
  }

  if ((*&self->_has & 8) == 0)
  {
    if ((*(equalCopy + 156) & 8) == 0)
    {
      goto LABEL_62;
    }

LABEL_71:
    isEqual = 0;
    goto LABEL_72;
  }

  if ((*(equalCopy + 156) & 8) == 0)
  {
    goto LABEL_71;
  }

  if (self->_allowAnyoneToResolveShare)
  {
    if ((equalCopy[19] & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if (equalCopy[19])
  {
    goto LABEL_71;
  }

LABEL_62:
  invitedPcsKeysToRemove = self->_invitedPcsKeysToRemove;
  v35 = equalCopy[7];
  if (invitedPcsKeysToRemove | v35 && !objc_msgSend_isEqual_(invitedPcsKeysToRemove, v7, v35))
  {
    goto LABEL_71;
  }

  selfAddedPcsKeysToRemove = self->_selfAddedPcsKeysToRemove;
  v37 = equalCopy[15];
  if (selfAddedPcsKeysToRemove | v37)
  {
    if (!objc_msgSend_isEqual_(selfAddedPcsKeysToRemove, v7, v37))
    {
      goto LABEL_71;
    }
  }

  shortTokenHash = self->_shortTokenHash;
  v39 = equalCopy[17];
  if (shortTokenHash | v39)
  {
    if (!objc_msgSend_isEqual_(shortTokenHash, v7, v39))
    {
      goto LABEL_71;
    }
  }

  origin = self->_origin;
  v41 = equalCopy[8];
  if (origin | v41)
  {
    isEqual = objc_msgSend_isEqual_(origin, v7, v41);
  }

  else
  {
    isEqual = 1;
  }

LABEL_72:

  return isEqual;
}

- (unint64_t)hash
{
  v57 = objc_msgSend_hash(self->_shareId, a2, v2);
  v56 = objc_msgSend_hash(self->_etag, v4, v5);
  if ((*&self->_has & 2) != 0)
  {
    v55 = 2654435761 * self->_publicAccess;
  }

  else
  {
    v55 = 0;
  }

  v54 = objc_msgSend_hash(self->_invitedPcs, v6, v7);
  v53 = objc_msgSend_hash(self->_selfAddedPcs, v8, v9);
  v52 = objc_msgSend_hash(self->_participants, v10, v11);
  v51 = objc_msgSend_hash(self->_shortTokenRoutingKey, v12, v13);
  v50 = objc_msgSend_hash(self->_potentialMatchs, v14, v15);
  v49 = objc_msgSend_hash(self->_invitedKeyToRemoves, v16, v17);
  if ((*&self->_has & 0x40) != 0)
  {
    v47 = 2654435761 * self->_publisherModel;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v47 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_6:
      v20 = 2654435761 * self->_anonymousPublicAccess;
      goto LABEL_9;
    }
  }

  v20 = 0;
LABEL_9:
  v23 = objc_msgSend_hash(self->_displayedHostname, v18, v19, v47);
  if ((*&self->_has & 4) == 0)
  {
    v24 = 0;
    if (*&self->_has)
    {
      goto LABEL_11;
    }

LABEL_14:
    v25 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v24 = 2654435761 * self->_publisherModelType;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v25 = 2654435761 * self->_participantSelfRemovalBehavior;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_12:
    v26 = 2654435761 * self->_denyAccessRequests;
    goto LABEL_16;
  }

LABEL_15:
  v26 = 0;
LABEL_16:
  v27 = objc_msgSend_hash(self->_requestingAccess, v21, v22);
  v30 = objc_msgSend_hash(self->_blockedAccess, v28, v29);
  v33 = objc_msgSend_hash(self->_cryptoRequirementsSigningKey, v31, v32);
  if ((*&self->_has & 8) != 0)
  {
    v36 = 2654435761 * self->_allowAnyoneToResolveShare;
  }

  else
  {
    v36 = 0;
  }

  v37 = v30 ^ v33 ^ v36 ^ objc_msgSend_hash(self->_invitedPcsKeysToRemove, v34, v35);
  v40 = v37 ^ objc_msgSend_hash(self->_selfAddedPcsKeysToRemove, v38, v39);
  v43 = v56 ^ v57 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v20 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v40 ^ objc_msgSend_hash(self->_shortTokenHash, v41, v42);
  return v43 ^ objc_msgSend_hash(self->_origin, v44, v45);
}

- (void)mergeFrom:(id)from
{
  v67 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  shareId = self->_shareId;
  v7 = *(fromCopy + 16);
  if (shareId)
  {
    if (v7)
    {
      objc_msgSend_mergeFrom_(shareId, v4, v7);
    }
  }

  else if (v7)
  {
    objc_msgSend_setShareId_(self, v4, v7);
  }

  v8 = *(fromCopy + 4);
  if (v8)
  {
    objc_msgSend_setEtag_(self, v4, v8);
  }

  if ((*(fromCopy + 156) & 2) != 0)
  {
    self->_publicAccess = *(fromCopy + 24);
    *&self->_has |= 2u;
  }

  invitedPcs = self->_invitedPcs;
  v10 = *(fromCopy + 6);
  if (invitedPcs)
  {
    if (v10)
    {
      objc_msgSend_mergeFrom_(invitedPcs, v4, v10);
    }
  }

  else if (v10)
  {
    objc_msgSend_setInvitedPcs_(self, v4, v10);
  }

  selfAddedPcs = self->_selfAddedPcs;
  v12 = *(fromCopy + 14);
  if (selfAddedPcs)
  {
    if (v12)
    {
      objc_msgSend_mergeFrom_(selfAddedPcs, v4, v12);
    }
  }

  else if (v12)
  {
    objc_msgSend_setSelfAddedPcs_(self, v4, v12);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v13 = *(fromCopy + 10);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v60, v66, 16);
  if (v15)
  {
    v17 = v15;
    v18 = *v61;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v61 != v18)
        {
          objc_enumerationMutation(v13);
        }

        objc_msgSend_addParticipant_(self, v16, *(*(&v60 + 1) + 8 * i));
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v60, v66, 16);
    }

    while (v17);
  }

  v21 = *(fromCopy + 18);
  if (v21)
  {
    objc_msgSend_setShortTokenRoutingKey_(self, v20, v21);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v22 = *(fromCopy + 11);
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v56, v65, 16);
  if (v24)
  {
    v26 = v24;
    v27 = *v57;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v57 != v27)
        {
          objc_enumerationMutation(v22);
        }

        objc_msgSend_addPotentialMatch_(self, v25, *(*(&v56 + 1) + 8 * j));
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v56, v65, 16);
    }

    while (v26);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v29 = *(fromCopy + 5);
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v52, v64, 16);
  if (v31)
  {
    v33 = v31;
    v34 = *v53;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v53 != v34)
        {
          objc_enumerationMutation(v29);
        }

        objc_msgSend_addInvitedKeyToRemove_(self, v32, *(*(&v52 + 1) + 8 * k), v52);
      }

      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v32, &v52, v64, 16);
    }

    while (v33);
  }

  v37 = *(fromCopy + 156);
  if ((v37 & 0x40) != 0)
  {
    self->_publisherModel = *(fromCopy + 155);
    *&self->_has |= 0x40u;
    v37 = *(fromCopy + 156);
  }

  if ((v37 & 0x10) != 0)
  {
    self->_anonymousPublicAccess = *(fromCopy + 153);
    *&self->_has |= 0x10u;
  }

  v38 = *(fromCopy + 3);
  if (v38)
  {
    objc_msgSend_setDisplayedHostname_(self, v36, v38);
  }

  v39 = *(fromCopy + 156);
  if ((v39 & 4) != 0)
  {
    self->_publisherModelType = *(fromCopy + 25);
    *&self->_has |= 4u;
    v39 = *(fromCopy + 156);
    if ((v39 & 1) == 0)
    {
LABEL_51:
      if ((v39 & 0x20) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }
  }

  else if ((*(fromCopy + 156) & 1) == 0)
  {
    goto LABEL_51;
  }

  self->_participantSelfRemovalBehavior = *(fromCopy + 18);
  *&self->_has |= 1u;
  if ((*(fromCopy + 156) & 0x20) != 0)
  {
LABEL_52:
    self->_denyAccessRequests = *(fromCopy + 154);
    *&self->_has |= 0x20u;
  }

LABEL_53:
  requestingAccess = self->_requestingAccess;
  v41 = *(fromCopy + 13);
  if (requestingAccess)
  {
    if (v41)
    {
      objc_msgSend_mergeFrom_(requestingAccess, v36, v41);
    }
  }

  else if (v41)
  {
    objc_msgSend_setRequestingAccess_(self, v36, v41);
  }

  blockedAccess = self->_blockedAccess;
  v43 = *(fromCopy + 1);
  if (blockedAccess)
  {
    if (v43)
    {
      objc_msgSend_mergeFrom_(blockedAccess, v36, v43);
    }
  }

  else if (v43)
  {
    objc_msgSend_setBlockedAccess_(self, v36, v43);
  }

  cryptoRequirementsSigningKey = self->_cryptoRequirementsSigningKey;
  v45 = *(fromCopy + 2);
  if (cryptoRequirementsSigningKey)
  {
    if (v45)
    {
      objc_msgSend_mergeFrom_(cryptoRequirementsSigningKey, v36, v45);
    }
  }

  else if (v45)
  {
    objc_msgSend_setCryptoRequirementsSigningKey_(self, v36, v45);
  }

  if ((*(fromCopy + 156) & 8) != 0)
  {
    self->_allowAnyoneToResolveShare = *(fromCopy + 152);
    *&self->_has |= 8u;
  }

  invitedPcsKeysToRemove = self->_invitedPcsKeysToRemove;
  v47 = *(fromCopy + 7);
  if (invitedPcsKeysToRemove)
  {
    if (v47)
    {
      objc_msgSend_mergeFrom_(invitedPcsKeysToRemove, v36, v47);
    }
  }

  else if (v47)
  {
    objc_msgSend_setInvitedPcsKeysToRemove_(self, v36, v47);
  }

  selfAddedPcsKeysToRemove = self->_selfAddedPcsKeysToRemove;
  v49 = *(fromCopy + 15);
  if (selfAddedPcsKeysToRemove)
  {
    if (v49)
    {
      objc_msgSend_mergeFrom_(selfAddedPcsKeysToRemove, v36, v49);
    }
  }

  else if (v49)
  {
    objc_msgSend_setSelfAddedPcsKeysToRemove_(self, v36, v49);
  }

  v50 = *(fromCopy + 17);
  if (v50)
  {
    objc_msgSend_setShortTokenHash_(self, v36, v50);
  }

  v51 = *(fromCopy + 8);
  if (v51)
  {
    objc_msgSend_setOrigin_(self, v36, v51);
  }
}

@end