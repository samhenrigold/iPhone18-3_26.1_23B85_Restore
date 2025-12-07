@interface CKDPAdopterCapabilitiesCheckRequest
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addFieldLevelCapabilities:(id)capabilities;
- (void)addRecordLevelCapabilities:(id)capabilities;
- (void)addZoneLevelCapabilities:(id)capabilities;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPAdopterCapabilitiesCheckRequest

+ (id)options
{
  if (qword_280D54F20 != -1)
  {
    dispatch_once(&qword_280D54F20, &unk_28385DC80);
  }

  v3 = qword_280D54F18;

  return v3;
}

- (void)addZoneLevelCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  zoneLevelCapabilities = self->_zoneLevelCapabilities;
  v8 = capabilitiesCopy;
  if (!zoneLevelCapabilities)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_zoneLevelCapabilities;
    self->_zoneLevelCapabilities = v6;

    capabilitiesCopy = v8;
    zoneLevelCapabilities = self->_zoneLevelCapabilities;
  }

  objc_msgSend_addObject_(zoneLevelCapabilities, capabilitiesCopy, capabilitiesCopy);
}

- (void)addRecordLevelCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  recordLevelCapabilities = self->_recordLevelCapabilities;
  v8 = capabilitiesCopy;
  if (!recordLevelCapabilities)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_recordLevelCapabilities;
    self->_recordLevelCapabilities = v6;

    capabilitiesCopy = v8;
    recordLevelCapabilities = self->_recordLevelCapabilities;
  }

  objc_msgSend_addObject_(recordLevelCapabilities, capabilitiesCopy, capabilitiesCopy);
}

- (void)addFieldLevelCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  fieldLevelCapabilities = self->_fieldLevelCapabilities;
  v8 = capabilitiesCopy;
  if (!fieldLevelCapabilities)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_fieldLevelCapabilities;
    self->_fieldLevelCapabilities = v6;

    capabilitiesCopy = v8;
    fieldLevelCapabilities = self->_fieldLevelCapabilities;
  }

  objc_msgSend_addObject_(fieldLevelCapabilities, capabilitiesCopy, capabilitiesCopy);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPAdopterCapabilitiesCheckRequest;
  v4 = [(CKDPAdopterCapabilitiesCheckRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v89 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  zoneIdentifier = self->_zoneIdentifier;
  if (zoneIdentifier)
  {
    v8 = objc_msgSend_dictionaryRepresentation(zoneIdentifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"zoneIdentifier");
  }

  if (objc_msgSend_count(self->_zoneLevelCapabilities, v4, v5))
  {
    v12 = objc_alloc(MEMORY[0x277CBEB18]);
    v15 = objc_msgSend_count(self->_zoneLevelCapabilities, v13, v14);
    v17 = objc_msgSend_initWithCapacity_(v12, v16, v15);
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v18 = self->_zoneLevelCapabilities;
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v82, v88, 16);
    if (v20)
    {
      v23 = v20;
      v24 = *v83;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v83 != v24)
          {
            objc_enumerationMutation(v18);
          }

          v26 = objc_msgSend_dictionaryRepresentation(*(*(&v82 + 1) + 8 * i), v21, v22);
          objc_msgSend_addObject_(v17, v27, v26);
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v82, v88, 16);
      }

      while (v23);
    }

    objc_msgSend_setObject_forKey_(v6, v28, v17, @"zoneLevelCapabilities");
  }

  if (objc_msgSend_count(self->_recordLevelCapabilities, v10, v11))
  {
    v31 = objc_alloc(MEMORY[0x277CBEB18]);
    v34 = objc_msgSend_count(self->_recordLevelCapabilities, v32, v33);
    v36 = objc_msgSend_initWithCapacity_(v31, v35, v34);
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v37 = self->_recordLevelCapabilities;
    v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v78, v87, 16);
    if (v39)
    {
      v42 = v39;
      v43 = *v79;
      do
      {
        for (j = 0; j != v42; ++j)
        {
          if (*v79 != v43)
          {
            objc_enumerationMutation(v37);
          }

          v45 = objc_msgSend_dictionaryRepresentation(*(*(&v78 + 1) + 8 * j), v40, v41);
          objc_msgSend_addObject_(v36, v46, v45);
        }

        v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v40, &v78, v87, 16);
      }

      while (v42);
    }

    objc_msgSend_setObject_forKey_(v6, v47, v36, @"recordLevelCapabilities");
  }

  if (objc_msgSend_count(self->_fieldLevelCapabilities, v29, v30))
  {
    v50 = objc_alloc(MEMORY[0x277CBEB18]);
    v53 = objc_msgSend_count(self->_fieldLevelCapabilities, v51, v52);
    v55 = objc_msgSend_initWithCapacity_(v50, v54, v53);
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v56 = self->_fieldLevelCapabilities;
    v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v57, &v74, v86, 16);
    if (v58)
    {
      v61 = v58;
      v62 = *v75;
      do
      {
        for (k = 0; k != v61; ++k)
        {
          if (*v75 != v62)
          {
            objc_enumerationMutation(v56);
          }

          v64 = objc_msgSend_dictionaryRepresentation(*(*(&v74 + 1) + 8 * k), v59, v60, v74);
          objc_msgSend_addObject_(v55, v65, v64);
        }

        v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v59, &v74, v86, 16);
      }

      while (v61);
    }

    objc_msgSend_setObject_forKey_(v6, v66, v55, @"fieldLevelCapabilities");
  }

  excludeZoneAccessBefore = self->_excludeZoneAccessBefore;
  if (excludeZoneAccessBefore)
  {
    v68 = objc_msgSend_dictionaryRepresentation(excludeZoneAccessBefore, v48, v49);
    objc_msgSend_setObject_forKey_(v6, v69, v68, @"excludeZoneAccessBefore");
  }

  if (*&self->_has)
  {
    v70 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v48, self->_excludeDevicesWithoutCapabilityCheckingSupport);
    objc_msgSend_setObject_forKey_(v6, v71, v70, @"excludeDevicesWithoutCapabilityCheckingSupport");
  }

  continuation = self->_continuation;
  if (continuation)
  {
    objc_msgSend_setObject_forKey_(v6, v48, continuation, @"continuation");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  v41 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_zoneIdentifier)
  {
    PBDataWriterWriteSubmessage();
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = self->_zoneLevelCapabilities;
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

        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v11, &v34, v40, 16);
    }

    while (v8);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = self->_recordLevelCapabilities;
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

        PBDataWriterWriteSubmessage();
        ++v17;
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v18, &v30, v39, 16);
    }

    while (v15);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = self->_fieldLevelCapabilities;
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

        PBDataWriterWriteSubmessage();
        ++v24;
      }

      while (v22 != v24);
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v25, &v26, v38, 16);
    }

    while (v22);
  }

  if (self->_excludeZoneAccessBefore)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_continuation)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  zoneIdentifier = self->_zoneIdentifier;
  if (zoneIdentifier)
  {
    objc_msgSend_setZoneIdentifier_(toCopy, v4, zoneIdentifier);
  }

  if (objc_msgSend_zoneLevelCapabilitiesCount(self, v4, zoneIdentifier))
  {
    objc_msgSend_clearZoneLevelCapabilities(toCopy, v6, v7);
    v10 = objc_msgSend_zoneLevelCapabilitiesCount(self, v8, v9);
    if (v10)
    {
      v11 = v10;
      for (i = 0; i != v11; ++i)
      {
        v13 = objc_msgSend_zoneLevelCapabilitiesAtIndex_(self, v6, i);
        objc_msgSend_addZoneLevelCapabilities_(toCopy, v14, v13);
      }
    }
  }

  if (objc_msgSend_recordLevelCapabilitiesCount(self, v6, v7))
  {
    objc_msgSend_clearRecordLevelCapabilities(toCopy, v15, v16);
    v19 = objc_msgSend_recordLevelCapabilitiesCount(self, v17, v18);
    if (v19)
    {
      v20 = v19;
      for (j = 0; j != v20; ++j)
      {
        v22 = objc_msgSend_recordLevelCapabilitiesAtIndex_(self, v15, j);
        objc_msgSend_addRecordLevelCapabilities_(toCopy, v23, v22);
      }
    }
  }

  if (objc_msgSend_fieldLevelCapabilitiesCount(self, v15, v16))
  {
    objc_msgSend_clearFieldLevelCapabilities(toCopy, v24, v25);
    v28 = objc_msgSend_fieldLevelCapabilitiesCount(self, v26, v27);
    if (v28)
    {
      v29 = v28;
      for (k = 0; k != v29; ++k)
      {
        v31 = objc_msgSend_fieldLevelCapabilitiesAtIndex_(self, v24, k);
        objc_msgSend_addFieldLevelCapabilities_(toCopy, v32, v31);
      }
    }
  }

  excludeZoneAccessBefore = self->_excludeZoneAccessBefore;
  if (excludeZoneAccessBefore)
  {
    objc_msgSend_setExcludeZoneAccessBefore_(toCopy, v24, excludeZoneAccessBefore);
  }

  v34 = toCopy;
  if (*&self->_has)
  {
    toCopy[56] = self->_excludeDevicesWithoutCapabilityCheckingSupport;
    toCopy[60] |= 1u;
  }

  continuation = self->_continuation;
  if (continuation)
  {
    objc_msgSend_setContinuation_(toCopy, v24, continuation);
    v34 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_zoneIdentifier, v11, zone);
  v13 = *(v10 + 40);
  *(v10 + 40) = v12;

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v14 = self->_zoneLevelCapabilities;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v56, v62, 16);
  if (v16)
  {
    v18 = v16;
    v19 = *v57;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v57 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v21 = objc_msgSend_copyWithZone_(*(*(&v56 + 1) + 8 * i), v17, zone);
        objc_msgSend_addZoneLevelCapabilities_(v10, v22, v21);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v56, v62, 16);
    }

    while (v18);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v23 = self->_recordLevelCapabilities;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v52, v61, 16);
  if (v25)
  {
    v27 = v25;
    v28 = *v53;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v53 != v28)
        {
          objc_enumerationMutation(v23);
        }

        v30 = objc_msgSend_copyWithZone_(*(*(&v52 + 1) + 8 * j), v26, zone);
        objc_msgSend_addRecordLevelCapabilities_(v10, v31, v30);
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v52, v61, 16);
    }

    while (v27);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v32 = self->_fieldLevelCapabilities;
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v48, v60, 16);
  if (v34)
  {
    v36 = v34;
    v37 = *v49;
    do
    {
      for (k = 0; k != v36; ++k)
      {
        if (*v49 != v37)
        {
          objc_enumerationMutation(v32);
        }

        v39 = objc_msgSend_copyWithZone_(*(*(&v48 + 1) + 8 * k), v35, zone, v48);
        objc_msgSend_addFieldLevelCapabilities_(v10, v40, v39);
      }

      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v48, v60, 16);
    }

    while (v36);
  }

  v42 = objc_msgSend_copyWithZone_(self->_excludeZoneAccessBefore, v41, zone);
  v43 = *(v10 + 16);
  *(v10 + 16) = v42;

  if (*&self->_has)
  {
    *(v10 + 56) = self->_excludeDevicesWithoutCapabilityCheckingSupport;
    *(v10 + 60) |= 1u;
  }

  v45 = objc_msgSend_copyWithZone_(self->_continuation, v44, zone, v48);
  v46 = *(v10 + 8);
  *(v10 + 8) = v45;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_17;
  }

  zoneIdentifier = self->_zoneIdentifier;
  v9 = equalCopy[5];
  if (zoneIdentifier | v9)
  {
    if (!objc_msgSend_isEqual_(zoneIdentifier, v7, v9))
    {
      goto LABEL_17;
    }
  }

  zoneLevelCapabilities = self->_zoneLevelCapabilities;
  v11 = equalCopy[6];
  if (zoneLevelCapabilities | v11)
  {
    if (!objc_msgSend_isEqual_(zoneLevelCapabilities, v7, v11))
    {
      goto LABEL_17;
    }
  }

  recordLevelCapabilities = self->_recordLevelCapabilities;
  v13 = equalCopy[4];
  if (recordLevelCapabilities | v13)
  {
    if (!objc_msgSend_isEqual_(recordLevelCapabilities, v7, v13))
    {
      goto LABEL_17;
    }
  }

  fieldLevelCapabilities = self->_fieldLevelCapabilities;
  v15 = equalCopy[3];
  if (fieldLevelCapabilities | v15)
  {
    if (!objc_msgSend_isEqual_(fieldLevelCapabilities, v7, v15))
    {
      goto LABEL_17;
    }
  }

  excludeZoneAccessBefore = self->_excludeZoneAccessBefore;
  v17 = equalCopy[2];
  if (excludeZoneAccessBefore | v17)
  {
    if (!objc_msgSend_isEqual_(excludeZoneAccessBefore, v7, v17))
    {
      goto LABEL_17;
    }
  }

  v18 = *(equalCopy + 60);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_13;
  }

  if ((*(equalCopy + 60) & 1) == 0)
  {
    goto LABEL_17;
  }

  v18 = *(equalCopy + 56);
  if (!self->_excludeDevicesWithoutCapabilityCheckingSupport)
  {
LABEL_13:
    if ((v18 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    isEqual = 0;
    goto LABEL_18;
  }

  if ((equalCopy[7] & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  continuation = self->_continuation;
  v20 = equalCopy[1];
  if (continuation | v20)
  {
    isEqual = objc_msgSend_isEqual_(continuation, v7, v20);
  }

  else
  {
    isEqual = 1;
  }

LABEL_18:

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_zoneIdentifier, a2, v2);
  v7 = objc_msgSend_hash(self->_zoneLevelCapabilities, v5, v6);
  v10 = objc_msgSend_hash(self->_recordLevelCapabilities, v8, v9);
  v13 = objc_msgSend_hash(self->_fieldLevelCapabilities, v11, v12);
  v16 = objc_msgSend_hash(self->_excludeZoneAccessBefore, v14, v15);
  if (*&self->_has)
  {
    v19 = 2654435761 * self->_excludeDevicesWithoutCapabilityCheckingSupport;
  }

  else
  {
    v19 = 0;
  }

  return v7 ^ v4 ^ v10 ^ v13 ^ v16 ^ v19 ^ objc_msgSend_hash(self->_continuation, v17, v18);
}

- (void)mergeFrom:(id)from
{
  v48 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  zoneIdentifier = self->_zoneIdentifier;
  v7 = *(fromCopy + 5);
  if (zoneIdentifier)
  {
    if (v7)
    {
      objc_msgSend_mergeFrom_(zoneIdentifier, v4, v7);
    }
  }

  else if (v7)
  {
    objc_msgSend_setZoneIdentifier_(self, v4, v7);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = *(fromCopy + 6);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v41, v47, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v42;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_addZoneLevelCapabilities_(self, v11, *(*(&v41 + 1) + 8 * i));
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v41, v47, 16);
    }

    while (v12);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v15 = *(fromCopy + 4);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v37, v46, 16);
  if (v17)
  {
    v19 = v17;
    v20 = *v38;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(v15);
        }

        objc_msgSend_addRecordLevelCapabilities_(self, v18, *(*(&v37 + 1) + 8 * j));
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v37, v46, 16);
    }

    while (v19);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v22 = *(fromCopy + 3);
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v33, v45, 16);
  if (v24)
  {
    v26 = v24;
    v27 = *v34;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(v22);
        }

        objc_msgSend_addFieldLevelCapabilities_(self, v25, *(*(&v33 + 1) + 8 * k), v33);
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v33, v45, 16);
    }

    while (v26);
  }

  excludeZoneAccessBefore = self->_excludeZoneAccessBefore;
  v31 = *(fromCopy + 2);
  if (excludeZoneAccessBefore)
  {
    if (v31)
    {
      objc_msgSend_mergeFrom_(excludeZoneAccessBefore, v29, v31);
    }
  }

  else if (v31)
  {
    objc_msgSend_setExcludeZoneAccessBefore_(self, v29, v31);
  }

  if (*(fromCopy + 60))
  {
    self->_excludeDevicesWithoutCapabilityCheckingSupport = *(fromCopy + 56);
    *&self->_has |= 1u;
  }

  v32 = *(fromCopy + 1);
  if (v32)
  {
    objc_msgSend_setContinuation_(self, v29, v32);
  }
}

@end