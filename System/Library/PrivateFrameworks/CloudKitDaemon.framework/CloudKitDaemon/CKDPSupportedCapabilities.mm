@interface CKDPSupportedCapabilities
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)version;
- (unint64_t)hash;
- (void)addFieldLevelCapabilities:(id)capabilities;
- (void)addRecordLevelCapabilities:(id)capabilities;
- (void)addZoneLevelCapabilities:(id)capabilities;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPSupportedCapabilities

- (int)version
{
  if (*&self->_has)
  {
    return self->_version;
  }

  else
  {
    return 1;
  }
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
  v11.super_class = CKDPSupportedCapabilities;
  v4 = [(CKDPSupportedCapabilities *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v89 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (*&self->_has)
  {
    v7 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v4, self->_version);
    objc_msgSend_setObject_forKey_(v6, v8, v7, @"version");
  }

  time = self->_time;
  if (time)
  {
    v10 = objc_msgSend_dictionaryRepresentation(time, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v11, v10, @"time");
  }

  deviceIdentifier = self->_deviceIdentifier;
  if (deviceIdentifier)
  {
    v13 = objc_msgSend_dictionaryRepresentation(deviceIdentifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v14, v13, @"deviceIdentifier");
  }

  userIdentifier = self->_userIdentifier;
  if (userIdentifier)
  {
    v16 = objc_msgSend_dictionaryRepresentation(userIdentifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v17, v16, @"userIdentifier");
  }

  if (objc_msgSend_count(self->_zoneLevelCapabilities, v4, v5))
  {
    v20 = objc_alloc(MEMORY[0x277CBEB18]);
    v23 = objc_msgSend_count(self->_zoneLevelCapabilities, v21, v22);
    v25 = objc_msgSend_initWithCapacity_(v20, v24, v23);
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v26 = self->_zoneLevelCapabilities;
    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v82, v88, 16);
    if (v28)
    {
      v31 = v28;
      v32 = *v83;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v83 != v32)
          {
            objc_enumerationMutation(v26);
          }

          v34 = objc_msgSend_dictionaryRepresentation(*(*(&v82 + 1) + 8 * i), v29, v30);
          objc_msgSend_addObject_(v25, v35, v34);
        }

        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v82, v88, 16);
      }

      while (v31);
    }

    objc_msgSend_setObject_forKey_(v6, v36, v25, @"zoneLevelCapabilities");
  }

  if (objc_msgSend_count(self->_recordLevelCapabilities, v18, v19))
  {
    v39 = objc_alloc(MEMORY[0x277CBEB18]);
    v42 = objc_msgSend_count(self->_recordLevelCapabilities, v40, v41);
    v44 = objc_msgSend_initWithCapacity_(v39, v43, v42);
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v45 = self->_recordLevelCapabilities;
    v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v78, v87, 16);
    if (v47)
    {
      v50 = v47;
      v51 = *v79;
      do
      {
        for (j = 0; j != v50; ++j)
        {
          if (*v79 != v51)
          {
            objc_enumerationMutation(v45);
          }

          v53 = objc_msgSend_dictionaryRepresentation(*(*(&v78 + 1) + 8 * j), v48, v49);
          objc_msgSend_addObject_(v44, v54, v53);
        }

        v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v48, &v78, v87, 16);
      }

      while (v50);
    }

    objc_msgSend_setObject_forKey_(v6, v55, v44, @"recordLevelCapabilities");
  }

  if (objc_msgSend_count(self->_fieldLevelCapabilities, v37, v38))
  {
    v56 = objc_alloc(MEMORY[0x277CBEB18]);
    v59 = objc_msgSend_count(self->_fieldLevelCapabilities, v57, v58);
    v61 = objc_msgSend_initWithCapacity_(v56, v60, v59);
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v62 = self->_fieldLevelCapabilities;
    v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v63, &v74, v86, 16);
    if (v64)
    {
      v67 = v64;
      v68 = *v75;
      do
      {
        for (k = 0; k != v67; ++k)
        {
          if (*v75 != v68)
          {
            objc_enumerationMutation(v62);
          }

          v70 = objc_msgSend_dictionaryRepresentation(*(*(&v74 + 1) + 8 * k), v65, v66, v74);
          objc_msgSend_addObject_(v61, v71, v70);
        }

        v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v65, &v74, v86, 16);
      }

      while (v67);
    }

    objc_msgSend_setObject_forKey_(v6, v72, v61, @"fieldLevelCapabilities");
  }

  return v6;
}

- (BOOL)readFrom:(id)from
{
  v5 = objc_msgSend_position(from, a2, from);
  if (v5 < objc_msgSend_length(from, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(from, v8, v9))
      {
        return objc_msgSend_hasError(from, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v64) = 0;
        v13 = objc_msgSend_position(from, v8, v9, v64) + 1;
        if (v13 >= objc_msgSend_position(from, v14, v15) && (v18 = objc_msgSend_position(from, v16, v17) + 1, v18 <= objc_msgSend_length(from, v19, v20)))
        {
          v21 = objc_msgSend_data(from, v16, v17);
          v24 = objc_msgSend_position(from, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v64, v24, 1);

          v28 = objc_msgSend_position(from, v26, v27);
          objc_msgSend_setPosition_(from, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(from, v16, v17);
        }

        v12 |= (v64 & 0x7F) << v10;
        if ((v64 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(from, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(from, v8, v9))
      {
        return objc_msgSend_hasError(from, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(from, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) <= 3)
      {
        switch(v32)
        {
          case 1:
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *&self->_has |= 1u;
            while (1)
            {
              LOBYTE(v64) = 0;
              v40 = objc_msgSend_position(from, v32, v9, v64) + 1;
              if (v40 >= objc_msgSend_position(from, v41, v42) && (v45 = objc_msgSend_position(from, v43, v44) + 1, v45 <= objc_msgSend_length(from, v46, v47)))
              {
                v48 = objc_msgSend_data(from, v43, v44);
                v51 = objc_msgSend_position(from, v49, v50);
                objc_msgSend_getBytes_range_(v48, v52, &v64, v51, 1);

                v55 = objc_msgSend_position(from, v53, v54);
                objc_msgSend_setPosition_(from, v56, v55 + 1);
              }

              else
              {
                objc_msgSend__setError(from, v43, v44);
              }

              v39 |= (v64 & 0x7F) << v37;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v30 = v38++ >= 9;
              if (v30)
              {
                v57 = 0;
                goto LABEL_56;
              }
            }

            if (objc_msgSend_hasError(from, v32, v9))
            {
              v57 = 0;
            }

            else
            {
              v57 = v39;
            }

LABEL_56:
            self->_version = v57;
            goto LABEL_51;
          case 2:
            v33 = objc_alloc_init(MEMORY[0x277CBC240]);
            objc_storeStrong(&self->_time, v33);
            v64 = 0;
            v65 = 0;
            if (!PBReaderPlaceMark() || !CKDPDateReadFrom())
            {
LABEL_58:

              return 0;
            }

            goto LABEL_50;
          case 3:
            v33 = objc_alloc_init(MEMORY[0x277CBC250]);
            v35 = 8;
            goto LABEL_41;
        }
      }

      else if (v32 > 5)
      {
        if (v32 == 6)
        {
          v33 = objc_alloc_init(CKDPSupportedCapabilitiesCapability);
          objc_msgSend_addRecordLevelCapabilities_(self, v58, v33);
LABEL_45:
          v64 = 0;
          v65 = 0;
          if (!PBReaderPlaceMark() || !sub_22536EBA4(v33, from, v59))
          {
            goto LABEL_58;
          }

LABEL_50:
          PBReaderRecallMark();

          goto LABEL_51;
        }

        if (v32 == 7)
        {
          v33 = objc_alloc_init(CKDPSupportedCapabilitiesCapability);
          objc_msgSend_addFieldLevelCapabilities_(self, v36, v33);
          goto LABEL_45;
        }
      }

      else
      {
        if (v32 == 4)
        {
          v33 = objc_alloc_init(MEMORY[0x277CBC250]);
          v35 = 40;
LABEL_41:
          objc_storeStrong((&self->super.super.isa + v35), v33);
          v64 = 0;
          v65 = 0;
          if (!PBReaderPlaceMark() || !CKDPIdentifierReadFrom())
          {
            goto LABEL_58;
          }

          goto LABEL_50;
        }

        if (v32 == 5)
        {
          v33 = objc_alloc_init(CKDPSupportedCapabilitiesCapability);
          objc_msgSend_addZoneLevelCapabilities_(self, v34, v33);
          goto LABEL_45;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_51:
      v60 = objc_msgSend_position(from, v32, v9);
    }

    while (v60 < objc_msgSend_length(from, v61, v62));
  }

  return objc_msgSend_hasError(from, v8, v9) ^ 1;
}

- (void)writeTo:(id)to
{
  v41 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_time)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_deviceIdentifier)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_userIdentifier)
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
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[12] = self->_version;
    *(toCopy + 64) |= 1u;
  }

  time = self->_time;
  v37 = toCopy;
  if (time)
  {
    objc_msgSend_setTime_(toCopy, v5, time);
  }

  deviceIdentifier = self->_deviceIdentifier;
  if (deviceIdentifier)
  {
    objc_msgSend_setDeviceIdentifier_(v37, v5, deviceIdentifier);
  }

  userIdentifier = self->_userIdentifier;
  if (userIdentifier)
  {
    objc_msgSend_setUserIdentifier_(v37, v5, userIdentifier);
  }

  if (objc_msgSend_zoneLevelCapabilitiesCount(self, v5, userIdentifier))
  {
    objc_msgSend_clearZoneLevelCapabilities(v37, v9, v10);
    v13 = objc_msgSend_zoneLevelCapabilitiesCount(self, v11, v12);
    if (v13)
    {
      v14 = v13;
      for (i = 0; i != v14; ++i)
      {
        v16 = objc_msgSend_zoneLevelCapabilitiesAtIndex_(self, v9, i);
        objc_msgSend_addZoneLevelCapabilities_(v37, v17, v16);
      }
    }
  }

  if (objc_msgSend_recordLevelCapabilitiesCount(self, v9, v10))
  {
    objc_msgSend_clearRecordLevelCapabilities(v37, v18, v19);
    v22 = objc_msgSend_recordLevelCapabilitiesCount(self, v20, v21);
    if (v22)
    {
      v23 = v22;
      for (j = 0; j != v23; ++j)
      {
        v25 = objc_msgSend_recordLevelCapabilitiesAtIndex_(self, v18, j);
        objc_msgSend_addRecordLevelCapabilities_(v37, v26, v25);
      }
    }
  }

  if (objc_msgSend_fieldLevelCapabilitiesCount(self, v18, v19))
  {
    objc_msgSend_clearFieldLevelCapabilities(v37, v27, v28);
    v31 = objc_msgSend_fieldLevelCapabilitiesCount(self, v29, v30);
    if (v31)
    {
      v33 = v31;
      for (k = 0; k != v33; ++k)
      {
        v35 = objc_msgSend_fieldLevelCapabilitiesAtIndex_(self, v32, k);
        objc_msgSend_addFieldLevelCapabilities_(v37, v36, v35);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = v10;
  if (*&self->_has)
  {
    *(v10 + 48) = self->_version;
    *(v10 + 64) |= 1u;
  }

  v13 = objc_msgSend_copyWithZone_(self->_time, v11, zone);
  v14 = v12[4];
  v12[4] = v13;

  v16 = objc_msgSend_copyWithZone_(self->_deviceIdentifier, v15, zone);
  v17 = v12[1];
  v12[1] = v16;

  v19 = objc_msgSend_copyWithZone_(self->_userIdentifier, v18, zone);
  v20 = v12[5];
  v12[5] = v19;

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v21 = self->_zoneLevelCapabilities;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v57, v63, 16);
  if (v23)
  {
    v25 = v23;
    v26 = *v58;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v58 != v26)
        {
          objc_enumerationMutation(v21);
        }

        v28 = objc_msgSend_copyWithZone_(*(*(&v57 + 1) + 8 * i), v24, zone);
        objc_msgSend_addZoneLevelCapabilities_(v12, v29, v28);
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v57, v63, 16);
    }

    while (v25);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v30 = self->_recordLevelCapabilities;
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v53, v62, 16);
  if (v32)
  {
    v34 = v32;
    v35 = *v54;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v54 != v35)
        {
          objc_enumerationMutation(v30);
        }

        v37 = objc_msgSend_copyWithZone_(*(*(&v53 + 1) + 8 * j), v33, zone);
        objc_msgSend_addRecordLevelCapabilities_(v12, v38, v37);
      }

      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v33, &v53, v62, 16);
    }

    while (v34);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v39 = self->_fieldLevelCapabilities;
  v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v49, v61, 16);
  if (v41)
  {
    v43 = v41;
    v44 = *v50;
    do
    {
      for (k = 0; k != v43; ++k)
      {
        if (*v50 != v44)
        {
          objc_enumerationMutation(v39);
        }

        v46 = objc_msgSend_copyWithZone_(*(*(&v49 + 1) + 8 * k), v42, zone, v49);
        objc_msgSend_addFieldLevelCapabilities_(v12, v47, v46);
      }

      v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v42, &v49, v61, 16);
    }

    while (v43);
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((equalCopy[8] & 1) == 0 || self->_version != *(equalCopy + 12))
    {
      goto LABEL_19;
    }
  }

  else if (equalCopy[8])
  {
LABEL_19:
    isEqual = 0;
    goto LABEL_20;
  }

  time = self->_time;
  v9 = equalCopy[4];
  if (time | v9 && !objc_msgSend_isEqual_(time, v7, v9))
  {
    goto LABEL_19;
  }

  deviceIdentifier = self->_deviceIdentifier;
  v11 = equalCopy[1];
  if (deviceIdentifier | v11)
  {
    if (!objc_msgSend_isEqual_(deviceIdentifier, v7, v11))
    {
      goto LABEL_19;
    }
  }

  userIdentifier = self->_userIdentifier;
  v13 = equalCopy[5];
  if (userIdentifier | v13)
  {
    if (!objc_msgSend_isEqual_(userIdentifier, v7, v13))
    {
      goto LABEL_19;
    }
  }

  zoneLevelCapabilities = self->_zoneLevelCapabilities;
  v15 = equalCopy[7];
  if (zoneLevelCapabilities | v15)
  {
    if (!objc_msgSend_isEqual_(zoneLevelCapabilities, v7, v15))
    {
      goto LABEL_19;
    }
  }

  recordLevelCapabilities = self->_recordLevelCapabilities;
  v17 = equalCopy[3];
  if (recordLevelCapabilities | v17)
  {
    if (!objc_msgSend_isEqual_(recordLevelCapabilities, v7, v17))
    {
      goto LABEL_19;
    }
  }

  fieldLevelCapabilities = self->_fieldLevelCapabilities;
  v19 = equalCopy[2];
  if (fieldLevelCapabilities | v19)
  {
    isEqual = objc_msgSend_isEqual_(fieldLevelCapabilities, v7, v19);
  }

  else
  {
    isEqual = 1;
  }

LABEL_20:

  return isEqual;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_version;
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_msgSend_hash(self->_time, a2, v2) ^ v4;
  v8 = objc_msgSend_hash(self->_deviceIdentifier, v6, v7);
  v11 = v5 ^ v8 ^ objc_msgSend_hash(self->_userIdentifier, v9, v10);
  v14 = objc_msgSend_hash(self->_zoneLevelCapabilities, v12, v13);
  v17 = v14 ^ objc_msgSend_hash(self->_recordLevelCapabilities, v15, v16);
  return v11 ^ v17 ^ objc_msgSend_hash(self->_fieldLevelCapabilities, v18, v19);
}

- (void)mergeFrom:(id)from
{
  v49 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v6 = fromCopy;
  if (fromCopy[16])
  {
    self->_version = fromCopy[12];
    *&self->_has |= 1u;
  }

  time = self->_time;
  v8 = *(v6 + 4);
  if (time)
  {
    if (v8)
    {
      objc_msgSend_mergeFrom_(time, v5, v8);
    }
  }

  else if (v8)
  {
    objc_msgSend_setTime_(self, v5, v8);
  }

  deviceIdentifier = self->_deviceIdentifier;
  v10 = *(v6 + 1);
  if (deviceIdentifier)
  {
    if (v10)
    {
      objc_msgSend_mergeFrom_(deviceIdentifier, v5, v10);
    }
  }

  else if (v10)
  {
    objc_msgSend_setDeviceIdentifier_(self, v5, v10);
  }

  userIdentifier = self->_userIdentifier;
  v12 = *(v6 + 5);
  if (userIdentifier)
  {
    if (v12)
    {
      objc_msgSend_mergeFrom_(userIdentifier, v5, v12);
    }
  }

  else if (v12)
  {
    objc_msgSend_setUserIdentifier_(self, v5, v12);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v13 = *(v6 + 7);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v42, v48, 16);
  if (v15)
  {
    v17 = v15;
    v18 = *v43;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v43 != v18)
        {
          objc_enumerationMutation(v13);
        }

        objc_msgSend_addZoneLevelCapabilities_(self, v16, *(*(&v42 + 1) + 8 * i));
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v42, v48, 16);
    }

    while (v17);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v20 = *(v6 + 3);
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v38, v47, 16);
  if (v22)
  {
    v24 = v22;
    v25 = *v39;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v39 != v25)
        {
          objc_enumerationMutation(v20);
        }

        objc_msgSend_addRecordLevelCapabilities_(self, v23, *(*(&v38 + 1) + 8 * j));
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v38, v47, 16);
    }

    while (v24);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v27 = *(v6 + 2);
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v34, v46, 16);
  if (v29)
  {
    v31 = v29;
    v32 = *v35;
    do
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v35 != v32)
        {
          objc_enumerationMutation(v27);
        }

        objc_msgSend_addFieldLevelCapabilities_(self, v30, *(*(&v34 + 1) + 8 * k), v34);
      }

      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v30, &v34, v46, 16);
    }

    while (v31);
  }
}

@end