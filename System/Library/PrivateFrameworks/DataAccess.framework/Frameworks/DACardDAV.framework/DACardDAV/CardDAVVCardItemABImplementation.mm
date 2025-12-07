@interface CardDAVVCardItemABImplementation
- (BOOL)deleteFromContainer:(void *)container;
- (BOOL)deleteFromContainer:(void *)container account:(id)account;
- (BOOL)loadLocalItemWithAccount:(id)account;
- (BOOL)saveIfGroupWithLocalObject:(id)object toContainer:(id)container shouldMergeProperties:(BOOL)properties outMergeDidChooseLocalProperties:(BOOL *)localProperties account:(id)account;
- (BOOL)saveWithLocalObject:(void *)object toContainer:(void *)container shouldMergeProperties:(BOOL)properties outMergeDidChooseLocalProperties:(BOOL *)localProperties account:(id)account;
- (CardDAVVCardItemABImplementation)initWithABRecord:(void *)record addressBook:(void *)book outNeedsDBSave:(BOOL *)save maxImageSize:(int64_t)size maxResourceSize:(int64_t)resourceSize inContainerWithURL:(id)l afterImageSyncFailed:(BOOL)failed;
- (CardDAVVCardItemABImplementation)initWithURL:(id)l eTag:(id)tag dataPayload:(id)payload inContainerWithURL:(id)rL withAccountInfoProvider:(id)provider;
- (id)cardDAVRecordItem;
- (id)convertToDAContactSearchResultElement;
- (id)createOrphanedABRecordFromParsedVCardOutRecordType:(unsigned int *)type;
- (unint64_t)saveWithLocalObject:(id)object toContainer:(id)container containerURL:(id)l shouldMergeProperties:(BOOL)properties outMergeDidChooseLocalProperties:(BOOL *)localProperties account:(id)account shouldSaveGroups:(BOOL)groups;
- (void)dealloc;
- (void)setLocalItem:(void *)item;
@end

@implementation CardDAVVCardItemABImplementation

- (CardDAVVCardItemABImplementation)initWithURL:(id)l eTag:(id)tag dataPayload:(id)payload inContainerWithURL:(id)rL withAccountInfoProvider:(id)provider
{
  lCopy = l;
  tagCopy = tag;
  payloadCopy = payload;
  rLCopy = rL;
  providerCopy = provider;
  v35.receiver = self;
  v35.super_class = CardDAVVCardItemABImplementation;
  v18 = [(CardDAVVCardItemABImplementation *)&v35 init];
  v19 = v18;
  if (v18)
  {
    [(CardDAVVCardItemABImplementation *)v18 setDataPayload:payloadCopy];
    [(CardDAVVCardItemABImplementation *)v19 setServerID:lCopy];
    [(CardDAVVCardItemABImplementation *)v19 setSyncKey:tagCopy];
    [(CardDAVVCardItemABImplementation *)v19 setAbRecordType:0xFFFFFFFFLL];
    if (rLCopy)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        [CardDAVVCardItemABImplementation initWithURL:a2 eTag:v19 dataPayload:providerCopy inContainerWithURL:? withAccountInfoProvider:?];
      }

      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        [CardDAVVCardItemABImplementation initWithURL:a2 eTag:v19 dataPayload:providerCopy inContainerWithURL:? withAccountInfoProvider:?];
      }

      v20 = providerCopy;
      databaseHelper = [v20 databaseHelper];
      v22 = [databaseHelper abDBThrowOnNil:0];

      if (v22)
      {
        homeURL = [v20 homeURL];
        v24 = [rLCopy da_leastInfoStringRepresentationRelativeToParentURL:homeURL];

        accountID = [v20 accountID];
        v34 = v24;
        v26 = ABAddressBookCopySourceWithAccountAndExternalIdentifiers();

        if (v26)
        {
          v33 = lCopy;
          ABSourceSetShouldIgnoreCapabilitiesRestrictions();
          serverID = [(CardDAVVCardItemABImplementation *)v19 serverID];
          v28 = [serverID da_leastInfoStringRepresentationRelativeToParentURL:rLCopy];

          v29 = ABAddressBookCopyArrayOfAllPeopleWithExternalIdentifierInSource();
          if ([v29 count])
          {
            v30 = v28;
            [(CardDAVVCardItemABImplementation *)v19 setAbRecordType:0];
          }

          else
          {
            v30 = v28;
            v31 = ABAddressBookCopyArrayOfAllGroupsWithExternalIdentifierInSource();
            if ([v31 count])
            {
              [(CardDAVVCardItemABImplementation *)v19 setAbRecordType:1];
            }
          }

          CFRelease(v26);

          lCopy = v33;
        }
      }
    }
  }

  return v19;
}

- (CardDAVVCardItemABImplementation)initWithABRecord:(void *)record addressBook:(void *)book outNeedsDBSave:(BOOL *)save maxImageSize:(int64_t)size maxResourceSize:(int64_t)resourceSize inContainerWithURL:(id)l afterImageSyncFailed:(BOOL)failed
{
  v69 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (save)
  {
    *save = 0;
  }

  saveCopy = save;
  v66.receiver = self;
  v66.super_class = CardDAVVCardItemABImplementation;
  v13 = [(CardDAVVCardItemABImplementation *)&v66 init];
  if (v13)
  {
    [(CardDAVVCardItemABImplementation *)v13 setAbRecordType:ABRecordGetRecordType(record)];
    [(CardDAVVCardItemABImplementation *)v13 setLocalItem:record];
    v14 = 0;
    property = *MEMORY[0x277CE97E0];
    v59 = *MEMORY[0x277CE97D8];
    v58 = *MEMORY[0x277CE9898];
    v57 = *MEMORY[0x277CE9890];
    v56 = *MEMORY[0x277CE98D8];
    v54 = *MEMORY[0x277CE98E0];
    type = *(MEMORY[0x277D03988] + 3);
    allocator = *MEMORY[0x277CBECE8];
    while (1)
    {
      abRecordType = [(CardDAVVCardItemABImplementation *)v13 abRecordType];
      abRecord = v13->_abRecord;
      if (!abRecordType)
      {
        break;
      }

      v17 = ABRecordCopyValue(abRecord, property);
      [(CardDAVVCardItemABImplementation *)v13 setSyncKey:v17];

      v18 = ABRecordCopyValue(v13->_abRecord, v59);
      v19 = v18;
      if (v18)
      {
        v20 = [v18 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:lCopy];
        [(CardDAVVCardItemABImplementation *)v13 setServerID:v20];
        goto LABEL_33;
      }

      v26 = 0;
      v27 = 0;
LABEL_35:

      v37 = [MEMORY[0x277CCABB0] numberWithInt:ABRecordGetRecordID(v13->_abRecord)];
      [(CardDAVVCardItemABImplementation *)v13 setClientID:v37];

      v38 = [MEMORY[0x277CE9778] copyVCardRepresentationOfRecord:v13->_abRecord withPhoto:v27 extraPhotoParameters:v26];
      [(CardDAVVCardItemABImplementation *)v13 setDataPayload:v38];

      dataPayload = [(CardDAVVCardItemABImplementation *)v13 dataPayload];

      if (!dataPayload)
      {
        goto LABEL_44;
      }

      dataPayload2 = [(CardDAVVCardItemABImplementation *)v13 dataPayload];
      v41 = [dataPayload2 length];

      if (!(v14 & 1 | (v41 <= resourceSize)))
      {
        v42 = [v27 length];
        v14 = 0;
        if (v27)
        {
          if (v42 > v41 - resourceSize)
          {
            [(CardDAVVCardItemABImplementation *)v13 setDataPayload:0, v45];
            [(CardDAVVCardItemABImplementation *)v13 setClientID:0];
            [(CardDAVVCardItemABImplementation *)v13 setServerID:0];
            [(CardDAVVCardItemABImplementation *)v13 setSyncKey:0];
            v14 = 1;
          }
        }
      }

      dataPayload3 = [(CardDAVVCardItemABImplementation *)v13 dataPayload];

      if (dataPayload3)
      {
LABEL_44:

        goto LABEL_45;
      }
    }

    v21 = ABRecordCopyValue(abRecord, v58);
    [(CardDAVVCardItemABImplementation *)v13 setSyncKey:v21];

    v22 = ABRecordCopyValue(v13->_abRecord, v57);
    v19 = v22;
    if (v22)
    {
      v23 = [v22 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:lCopy];
      [(CardDAVVCardItemABImplementation *)v13 setServerID:v23];
    }

    v24 = ABRecordCopyValue(v13->_abRecord, v56);
    v20 = v24;
    if (failed)
    {
      date = [MEMORY[0x277CBEAA8] date];
      ABRecordSetValue(v13->_abRecord, v56, date, 0);
      if (saveCopy)
      {
        *saveCopy = 1;
      }
    }

    else if (!v24 || ([v24 timeIntervalSinceNow], v28 > 86400.0))
    {
      v65 = 0;
      v64 = 0;
      v63 = 0;
      v29 = ABRecordCopyValue(v13->_abRecord, v54);
      v45 = &v63;
      v27 = DAGetSyncImageForPerson();
      if (v27 && v65 == 1)
      {
        ABPersonSetImageDataDerivedFromFormatAndReturnError();
        if (v29)
        {
          ABRecordSetValue(v13->_abRecord, v54, v29, 0);
        }

        if (saveCopy)
        {
          *saveCopy = 1;
        }
      }

      if (v29)
      {
        DerivedFromFormatFromImageWithFormat = ABPersonGetDerivedFromFormatFromImageWithFormat();
        if (DerivedFromFormatFromImageWithFormat != 2)
        {
          v30 = DALoggingwithCategory();
          if (os_log_type_enabled(v30, type))
          {
            *buf = 67109120;
            v68 = DerivedFromFormatFromImageWithFormat;
            _os_log_impl(&dword_24850D000, v30, type, "[Likeness Update] SyncImage derived from unexpected format. (%u)", buf, 8u);
          }
        }
      }

      if (v27)
      {
        CC_MD5([v27 bytes], objc_msgSend(v27, "length"), buf);
        v31 = CFDataCreate(allocator, buf, 16);
        v32 = v31;
        v26 = 0;
        if (v63 && v31)
        {
          v33 = objc_alloc(MEMORY[0x277CCACA8]);
          v49 = HIDWORD(v64);
          v50 = v33;
          v48 = v64;
          v47 = HIDWORD(v63);
          v34 = lCopy;
          v35 = v63;
          [(__CFData *)v32 base64EncodedStringWithOptions:0];
          v36 = v51 = v29;
          v46 = v35;
          lCopy = v34;
          v26 = [v50 initWithFormat:@"X-ABCROP-RECTANGLE=ABClipRect_1&%d&%d&%d&%d&%@", v49, v48, v47, v46, v36];

          v29 = v51;
        }
      }

      else
      {
        v26 = 0;
      }

      goto LABEL_34;
    }

LABEL_33:
    v26 = 0;
    v27 = 0;
LABEL_34:

    goto LABEL_35;
  }

LABEL_45:

  return v13;
}

- (void)dealloc
{
  abRecord = self->_abRecord;
  if (abRecord)
  {
    CFRelease(abRecord);
    self->_abRecord = 0;
  }

  v4.receiver = self;
  v4.super_class = CardDAVVCardItemABImplementation;
  [(CardDAVVCardItemABImplementation *)&v4 dealloc];
}

- (id)cardDAVRecordItem
{
  abRecord = [(CardDAVVCardItemABImplementation *)self abRecord];
  if (abRecord)
  {
    if ([(CardDAVVCardItemABImplementation *)self abRecordType])
    {
      if ([(CardDAVVCardItemABImplementation *)self abRecordType]== 1)
      {
        abRecord = [[DAABLegacyGroup alloc] initWithGroup:[(CardDAVVCardItemABImplementation *)self abRecord]];
      }

      else
      {
        abRecord = 0;
      }
    }

    else
    {
      abRecord = [[DAABLegacyContact alloc] initWithABPerson:[(CardDAVVCardItemABImplementation *)self abRecord]];
    }
  }

  return abRecord;
}

- (unint64_t)saveWithLocalObject:(id)object toContainer:(id)container containerURL:(id)l shouldMergeProperties:(BOOL)properties outMergeDidChooseLocalProperties:(BOOL *)localProperties account:(id)account shouldSaveGroups:(BOOL)groups
{
  propertiesCopy = properties;
  v120 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  containerCopy = container;
  lCopy = l;
  accountCopy = account;
  databaseHelper = [accountCopy databaseHelper];
  abDB = [databaseHelper abDB];

  if (!abDB)
  {
    v25 = DALoggingwithCategory();
    v26 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v25, v26))
    {
      *buf = 0;
      _os_log_impl(&dword_24850D000, v25, v26, "Couldn't get address book", buf, 2u);
    }

    v27 = 0;
    goto LABEL_116;
  }

  selfCopy = self;
  v21 = accountCopy;
  v112 = a2;
  v22 = lCopy;
  if ([objectCopy isContact])
  {
    v23 = containerCopy;
    asPerson = [objectCopy asPerson];
  }

  else
  {
    v23 = containerCopy;
    if (![objectCopy isGroup])
    {
      v28 = 0;
      goto LABEL_11;
    }

    asPerson = [objectCopy asABGroup];
  }

  v28 = asPerson;
LABEL_11:
  if (objectCopy)
  {
    v29 = propertiesCopy;
  }

  else
  {
    v29 = 0;
  }

  v114 = v29;
  v30 = !propertiesCopy;
  if ([v21 supportsWallpaperSync])
  {
    v30 |= 2uLL;
  }

  v31 = objc_alloc(MEMORY[0x277CE9780]);
  dataPayload = [(CardDAVVCardItemABImplementation *)self dataPayload];
  v33 = [v31 initWithData:dataPayload importOptions:v30];

  if (objectCopy)
  {
    v34 = v33;
    [(CardDAVVCardItemABImplementation *)self setCardDAVRecordItem:objectCopy];
    containerCopy = v23;
    if ([objectCopy isContact])
    {
      v35 = objectCopy;
      -[CardDAVVCardItemABImplementation setLocalItem:](self, "setLocalItem:", [objectCopy asPerson]);
      lCopy = v22;
    }

    else
    {
      lCopy = v22;
      v35 = objectCopy;
      if ([objectCopy isGroup])
      {
        -[CardDAVVCardItemABImplementation setLocalItem:](self, "setLocalItem:", [objectCopy asABGroup]);
      }

      else
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:v112 object:self file:@"CardDAVVCardItemABImplementation.m" lineNumber:330 description:@"Error: unrecognized record type"];
      }
    }

    accountCopy = v21;
    v43 = v28;
    if (!groups && [(CardDAVVCardItemABImplementation *)self abRecordType]== 1)
    {
      v27 = 2;
      objectCopy = v35;
      v25 = v34;
      goto LABEL_116;
    }

    if ([(CardDAVVCardItemABImplementation *)self abRecordType])
    {
      v113 = 0;
      v115 = 0;
    }

    else
    {
      v115 = ABRecordCopyValue(v28, *MEMORY[0x277CE98E0]);
      v113 = ABRecordCopyValue(v28, *MEMORY[0x277CE9A68]);
    }

    v25 = v34;
    if ([(CardDAVVCardItemABImplementation *)self abRecordType])
    {
      v44 = [v34 importToGroup:v43];
    }

    else
    {
      v44 = [v34 importToPerson:v43];
    }

    v45 = v44;
    objectCopy = v35;
    localRecordHasAdditionalProperties = [v25 localRecordHasAdditionalProperties];
LABEL_42:
    if ([(CardDAVVCardItemABImplementation *)self abRecordType])
    {
LABEL_101:
      if ((v114 & localRecordHasAdditionalProperties) == 1)
      {
        if ([(CardDAVVCardItemABImplementation *)self abRecordType])
        {
          v87 = MEMORY[0x277CE97E0];
        }

        else
        {
          v87 = MEMORY[0x277CE9898];
        }

        ABRecordRemoveValue(v43, *v87, 0);
      }

      else
      {
        syncKey = [(CardDAVVCardItemABImplementation *)self syncKey];

        if (syncKey)
        {
          if ([(CardDAVVCardItemABImplementation *)self abRecordType])
          {
            v89 = MEMORY[0x277CE97E0];
          }

          else
          {
            v89 = MEMORY[0x277CE9898];
          }

          v90 = *v89;
          syncKey2 = [(CardDAVVCardItemABImplementation *)self syncKey];
          ABRecordSetValue(v43, v90, syncKey2, 0);
        }
      }

      serverID = [(CardDAVVCardItemABImplementation *)self serverID];

      if (serverID)
      {
        serverID2 = [(CardDAVVCardItemABImplementation *)self serverID];
        v94 = [serverID2 da_leastInfoStringRepresentationRelativeToParentURL:lCopy];

        abRecordType = [(CardDAVVCardItemABImplementation *)self abRecordType];
        v96 = MEMORY[0x277CE9890];
        if (abRecordType)
        {
          v96 = MEMORY[0x277CE97D8];
        }

        ABRecordSetValue(v43, *v96, v94, 0);
      }

      [accountCopy _massageAddedOrModifiedVCard:self];
      v27 = v45;

      goto LABEL_116;
    }

    v107 = v45;
    v106 = containerCopy;
    v47 = accountCopy;
    v48 = v115;
    v110 = v25;
    property = *MEMORY[0x277CE98E0];
    v49 = ABRecordCopyValue(v43, *MEMORY[0x277CE98E0]);
    persona = v43;
    v105 = localRecordHasAdditionalProperties;
    if (v48 != 0) == (v49 != 0) && (!v48 || ([v48 isEqualToString:v49]))
    {
LABEL_79:

      v70 = v47;
      v71 = v113;
      v72 = *MEMORY[0x277CE9A68];
      v73 = ABRecordCopyValue(v43, *MEMORY[0x277CE9A68]);
      if (v71 != 0) == (v73 != 0) && (!v71 || ([v71 isEqualToString:v73]))
      {
        goto LABEL_100;
      }

      v111 = objectCopy;
      v74 = MEMORY[0x277CE9A60];
      propertya = v70;
      if (v73 && ([MEMORY[0x277CBEBC0] URLWithString:v73], (v75 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v76 = v75;
        v117 = 0;
        v77 = [propertya copyImageContentsAtURL:v75 outError:&v117];
        v78 = v117;

        if (v77)
        {
          v79 = ABRecordCopyValue(persona, *v74);
          v80 = v79;
          if (v79 && [v79 isEqualToData:v77])
          {
            v81 = v80;
            v82 = DALoggingwithCategory();
            v83 = *(MEMORY[0x277D03988] + 7);
            if (os_log_type_enabled(v82, v83))
            {
              *buf = 0;
              _os_log_impl(&dword_24850D000, v82, v83, "Not setting wallpaper on person, as it hasn't changed", buf, 2u);
            }

            goto LABEL_99;
          }
        }

        else
        {
          if (v78)
          {
            v84 = DALoggingwithCategory();
            v85 = *(MEMORY[0x277D03988] + 3);
            if (os_log_type_enabled(v84, v85))
            {
              *buf = 138412290;
              v119 = v78;
              _os_log_impl(&dword_24850D000, v84, v85, "Not saving wallpaper for contact, as wallpaper download failed with error %@", buf, 0xCu);
            }

            v77 = 0;
            goto LABEL_99;
          }

          v77 = 0;
        }
      }

      else
      {
        v77 = 0;
        v78 = 0;
      }

      v86 = *v74;
      ABRecordRemoveValue(persona, *v74, 0);
      v107 &= ABRecordSetValue(persona, v86, v77, 0);
      ABRecordSetValue(persona, v72, v73, 0);
LABEL_99:
      objectCopy = v111;
      v70 = propertya;

      self = selfCopy;
      v43 = persona;
LABEL_100:
      localRecordHasAdditionalProperties = v105;

      containerCopy = v106;
      v45 = v107;
      goto LABEL_101;
    }

    v100 = v47;
    v101 = v48;
    if (v49)
    {
      v50 = [MEMORY[0x277CBEBC0] URLWithString:v49];
      if (v50)
      {
        v51 = v50;
        v117 = 0;
        v52 = [v47 copyImageContentsAtURL:v50 outError:&v117];
        v53 = v117;

        if (v52)
        {
          v102 = v53;
          v54 = ABPersonCopyImageDataWithFormat(persona, 5u);
          v55 = v54;
          if (v54 && [(__CFData *)v54 isEqualToData:v52])
          {
            v56 = DALoggingwithCategory();
            v57 = *(MEMORY[0x277D03988] + 7);
            if (os_log_type_enabled(v56, v57))
            {
              *buf = 0;
              _os_log_impl(&dword_24850D000, v56, v57, "Not setting image on person, as it hasn't changed", buf, 2u);
            }

            goto LABEL_77;
          }

LABEL_67:
          ABPersonRemoveImageData(persona, 0);
          if ([v52 length])
          {
            lastCropRectChecksum = [v110 lastCropRectChecksum];
            if ([lastCropRectChecksum length])
            {
              CC_MD5([v52 bytes], objc_msgSend(v52, "length"), buf);
              v64 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:buf length:16];
              if ([v64 isEqualToData:lastCropRectChecksum])
              {
                HIDWORD(v98) = [v110 lastCropRectX];
                LODWORD(v98) = [v110 lastCropRectY];
                lastCropRectWidth = [v110 lastCropRectWidth];
                lastCropRectHeight = [v110 lastCropRectHeight];
                if (lastCropRectWidth)
                {
                  if (lastCropRectHeight)
                  {
                    v67 = v64;
                    v68 = persona;
                    v99 = ABPersonSetImageDataWithInvertedCropRect();
                    v107 &= ABPersonSetImageDataDerivedFromFormatAndReturnError() & v99;

LABEL_76:
                    ABRecordSetValue(v68, property, v49, 0);
                    ABRecordRemoveValue(v68, *MEMORY[0x277CE98D8], 0);
LABEL_77:
                    v47 = v100;
LABEL_78:

                    v43 = persona;
                    v48 = v101;
                    goto LABEL_79;
                  }
                }
              }
            }
          }

          v68 = persona;
          v69 = ABPersonSetImageData(persona, v52, 0);
          v107 &= ABPersonSetImageDataAndCropRect() & v69;
          goto LABEL_76;
        }

        if (v53)
        {
          v102 = v53;
          v61 = DALoggingwithCategory();
          v62 = *(MEMORY[0x277D03988] + 3);
          if (os_log_type_enabled(v61, v62))
          {
            *buf = 138412290;
            v119 = v53;
            _os_log_impl(&dword_24850D000, v61, v62, "Not saving image for contact, as image download failed with error %@", buf, 0xCu);
          }

          v52 = 0;
          goto LABEL_78;
        }
      }
    }

    v52 = 0;
    v102 = 0;
    goto LABEL_67;
  }

  containerCopy = v23;
  v25 = v33;
  v36 = -[NSObject createRecordInSource:outRecordType:](v33, "createRecordInSource:outRecordType:", [v23 asSource], &self->_abRecordType);
  self->_abRecord = v36;
  if (v36)
  {
    CFRetain(v36);
    abRecord = self->_abRecord;
    if (abRecord)
    {
      person = v22;
      accountCopy = v21;
      if (groups)
      {
        goto LABEL_55;
      }

      abRecordType2 = [(CardDAVVCardItemABImplementation *)self abRecordType];
      abRecord = self->_abRecord;
      if (abRecordType2 == 1)
      {
        if (abRecord)
        {
          CFRelease(self->_abRecord);
        }

        self->_abRecord = 0;
        v27 = 2;
        lCopy = person;
        objectCopy = 0;
        goto LABEL_116;
      }

      if (abRecord)
      {
LABEL_55:
        ABAddressBookAddRecord(abDB, abRecord, 0);
        v43 = self->_abRecord;
        v45 = 1;
      }

      else
      {
        v43 = 0;
        v45 = 0;
      }

      abRecordType = self->_abRecordType;
      if (abRecordType == 1)
      {
        v60 = [[DAABLegacyGroup alloc] initWithGroup:self->_abRecord];
        [(CardDAVVCardItemABImplementation *)self setCardDAVRecordItem:v60];

        v113 = 0;
        v115 = 0;
        localRecordHasAdditionalProperties = 0;
        lCopy = person;
        objectCopy = 0;
      }

      else
      {
        lCopy = person;
        if (!abRecordType)
        {
          v59 = [[DAABLegacyContact alloc] initWithABPerson:self->_abRecord];
          [(CardDAVVCardItemABImplementation *)self setCardDAVRecordItem:v59];
        }

        v113 = 0;
        v115 = 0;
        localRecordHasAdditionalProperties = 0;
        objectCopy = 0;
      }

      goto LABEL_42;
    }
  }

  v39 = DALoggingwithCategory();
  v40 = *(MEMORY[0x277D03988] + 3);
  lCopy = v22;
  if (os_log_type_enabled(v39, v40))
  {
    dataPayload2 = [(CardDAVVCardItemABImplementation *)self dataPayload];
    *buf = 138412290;
    v119 = dataPayload2;
    _os_log_impl(&dword_24850D000, v39, v40, "Unable to parse the contact with this data %@", buf, 0xCu);
  }

  v27 = 0;
  accountCopy = v21;
  objectCopy = 0;
LABEL_116:

  return v27;
}

- (BOOL)saveWithLocalObject:(void *)object toContainer:(void *)container shouldMergeProperties:(BOOL)properties outMergeDidChooseLocalProperties:(BOOL *)localProperties account:(id)account
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CardDAVVCardItemABImplementation.m" lineNumber:496 description:{@"Please read CardDAVVCardItem.h, and try again"}];

  return 0;
}

- (BOOL)saveIfGroupWithLocalObject:(id)object toContainer:(id)container shouldMergeProperties:(BOOL)properties outMergeDidChooseLocalProperties:(BOOL *)localProperties account:(id)account
{
  propertiesCopy = properties;
  v90 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  containerCopy = container;
  accountCopy = account;
  v14 = objectCopy;
  v15 = accountCopy;
  selfCopy = self;
  if ([objectCopy isContact])
  {
    if ([(CardDAVVCardItemABImplementation *)self abRecordType])
    {
      [CardDAVVCardItemABImplementation saveIfGroupWithLocalObject:a2 toContainer:self shouldMergeProperties:? outMergeDidChooseLocalProperties:? account:?];
    }

    asPerson = [objectCopy asPerson];
  }

  else
  {
    isGroup = [objectCopy isGroup];
    abRecordType = [(CardDAVVCardItemABImplementation *)self abRecordType];
    if (!isGroup)
    {
      v14 = objectCopy;
      if (abRecordType != 1)
      {
        v20 = 0;
        abRecord = 0;
        goto LABEL_26;
      }

LABEL_15:
      abRecord = self->_abRecord;
      goto LABEL_16;
    }

    if (abRecordType != 1)
    {
      [CardDAVVCardItemABImplementation saveIfGroupWithLocalObject:a2 toContainer:self shouldMergeProperties:? outMergeDidChooseLocalProperties:? account:?];
    }

    v14 = objectCopy;
    asPerson = [objectCopy asABGroup];
  }

  abRecord = asPerson;
  if ([(CardDAVVCardItemABImplementation *)self abRecordType]!= 1)
  {
    v20 = 0;
    goto LABEL_26;
  }

  if (!abRecord)
  {
    goto LABEL_15;
  }

LABEL_16:
  v65 = v14;
  if (propertiesCopy)
  {
    v20 = objc_opt_new();
  }

  else
  {
    v20 = 0;
  }

  v21 = ABGroupCopyArrayOfAllMembers(abRecord);
  if ([(__CFArray *)v21 count])
  {
    v22 = 0;
    do
    {
      v23 = [(__CFArray *)v21 objectAtIndexedSubscript:v22];

      if (propertiesCopy)
      {
        v24 = [MEMORY[0x277CCABB0] numberWithInt:ABRecordGetRecordID(v23)];
        [v20 addObject:v24];
      }

      else
      {
        ABGroupRemoveMember(abRecord, v23, 0);
      }

      ++v22;
    }

    while (v22 < [(__CFArray *)v21 count]);
  }

  v14 = v65;
LABEL_26:
  v25 = ABRecordCopyValue(abRecord, *MEMORY[0x277CE97E8]);
  if (!v25)
  {
    goto LABEL_71;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_71;
  }

  v64 = v25;
  v66 = v14;
  v26 = MEMORY[0x277CCAAC8];
  v27 = MEMORY[0x277CBEB98];
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = [v27 setWithObjects:{v28, v29, objc_opt_class(), 0}];
  v85 = 0;
  v31 = v26;
  v25 = v64;
  v32 = [v31 unarchivedObjectOfClasses:v30 fromData:v64 error:&v85];
  v62 = v85;

  record = abRecord;
  v63 = v32;
  if (v32)
  {
    v33 = [v32 objectForKeyedSubscript:@"X-ADDRESSBOOKSERVER-MEMBER"];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v76 = [v33 countByEnumeratingWithState:&v81 objects:v89 count:16];
    if (!v76)
    {
      v14 = v66;
      goto LABEL_62;
    }

    v75 = *v82;
    v72 = v33;
    v68 = propertiesCopy;
    v67 = v20;
    do
    {
      for (i = 0; i != v76; ++i)
      {
        if (*v82 != v75)
        {
          objc_enumerationMutation(v33);
        }

        v35 = *(*(&v81 + 1) + 8 * i);
        v36 = [v35 length];
        if (v36 > [@"urn:uuid:" length] && !objc_msgSend(v35, "compare:options:range:", @"urn:uuid:", 1, 0, objc_msgSend(@"urn:uuid:", "length")))
        {
          v37 = [v35 substringFromIndex:{objc_msgSend(@"urn:uuid:", "length")}];
          uUIDToPersonCache = [(CardDAVVCardItemABImplementation *)self UUIDToPersonCache];

          if (uUIDToPersonCache)
          {
            uUIDToPersonCache2 = [(CardDAVVCardItemABImplementation *)self UUIDToPersonCache];
            v40 = [uUIDToPersonCache2 objectForKeyedSubscript:v37];

            if ([v40 count])
            {
              v71 = v37;
              v41 = objc_opt_new();
              v77 = 0u;
              v78 = 0u;
              v79 = 0u;
              v80 = 0u;
              v70 = v40;
              v42 = v40;
              v43 = [v42 countByEnumeratingWithState:&v77 objects:v88 count:16];
              if (v43)
              {
                v44 = v43;
                v45 = *v78;
                do
                {
                  for (j = 0; j != v44; ++j)
                  {
                    if (*v78 != v45)
                    {
                      objc_enumerationMutation(v42);
                    }

                    v47 = *(*(&v77 + 1) + 8 * j);
                    databaseHelper = [v15 databaseHelper];
                    PersonWithRecordID = ABAddressBookGetPersonWithRecordID([databaseHelper abDB], objc_msgSend(v47, "intValue"));

                    if (PersonWithRecordID)
                    {
                      [v41 addObject:PersonWithRecordID];
                    }
                  }

                  v44 = [v42 countByEnumeratingWithState:&v77 objects:v88 count:16];
                }

                while (v44);
              }

              propertiesCopy = v68;
              abRecord = record;
              v40 = v70;
              v20 = v67;
              v37 = v71;
            }
          }

          databaseHelper2 = [v15 databaseHelper];
          [databaseHelper2 abDB];
          [containerCopy asSource];
          v51 = v37;
          v52 = ABAddressBookCopyArrayOfAllPeopleWithExternalUUIDInSource();

          if ([v52 count])
          {
            v53 = 0;
            do
            {
              v54 = [v52 objectAtIndexedSubscript:v53];

              if (propertiesCopy)
              {
                v55 = [MEMORY[0x277CCABB0] numberWithInt:ABRecordGetRecordID(v54)];
                [v20 removeObject:v55];
              }

              ABGroupAddMember(abRecord, v54, 0);
              ++v53;
            }

            while (v53 < [v52 count]);
          }

          v33 = v72;
          self = selfCopy;
        }
      }

      v76 = [v33 countByEnumeratingWithState:&v81 objects:v89 count:16];
    }

    while (v76);
  }

  else
  {
    v33 = DALoggingwithCategory();
    v56 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v33, v56))
    {
      *buf = 138412290;
      v57 = v62;
      v87 = v62;
      _os_log_impl(&dword_24850D000, v33, v56, "Unable to decode properties: %@", buf, 0xCu);
      v25 = v64;
      v14 = v66;
      goto LABEL_63;
    }
  }

  v25 = v64;
  v14 = v66;
LABEL_62:
  v57 = v62;
LABEL_63:

  if (propertiesCopy && [v20 count])
  {
    v58 = ABGroupCopyCompositeName();
    v59 = DALoggingwithCategory();
    v60 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v59, v60))
    {
      *buf = 138412290;
      v87 = v58;
      _os_log_impl(&dword_24850D000, v59, v60, "Found local members in the group %@ that didn't exist on the server. This group will get pushed to the server", buf, 0xCu);
    }

    if (v58)
    {
      CFRelease(v58);
    }

    ABRecordRemoveValue(record, *MEMORY[0x277CE97E0], 0);
    v25 = v64;
    v14 = v66;
  }

LABEL_71:
  return 1;
}

- (void)setLocalItem:(void *)item
{
  abRecord = self->_abRecord;
  if (abRecord != item)
  {
    if (abRecord)
    {
      CFRelease(abRecord);
    }

    self->_abRecord = item;
    [(CardDAVVCardItemABImplementation *)self setAbRecordType:ABRecordGetRecordType([(CardDAVVCardItemABImplementation *)self abRecord])];
    v6 = self->_abRecord;
    if (v6)
    {

      CFRetain(v6);
    }
  }
}

- (BOOL)loadLocalItemWithAccount:(id)account
{
  databaseHelper = [account databaseHelper];
  abDB = [databaseHelper abDB];

  abRecordType = [(CardDAVVCardItemABImplementation *)self abRecordType];
  clientID = [(CardDAVVCardItemABImplementation *)self clientID];
  intValue = [clientID intValue];
  if (abRecordType)
  {
    GroupWithRecordID = ABAddressBookGetGroupWithRecordID(abDB, intValue);
  }

  else
  {
    GroupWithRecordID = ABAddressBookGetPersonWithRecordID(abDB, intValue);
  }

  v10 = GroupWithRecordID;

  if (!v10)
  {
    return 0;
  }

  [(CardDAVVCardItemABImplementation *)self setLocalItem:v10];
  return 1;
}

- (BOOL)deleteFromContainer:(void *)container
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CardDAVVCardItemABImplementation.m" lineNumber:619 description:{@"Please read CardDAVVCardItem.h, and try again"}];

  return 0;
}

- (BOOL)deleteFromContainer:(void *)container account:(id)account
{
  if (!self->_abRecord)
  {
    return 0;
  }

  databaseHelper = [account databaseHelper];
  ABAddressBookRemoveRecord([databaseHelper abDB], self->_abRecord, 0);

  return self->_abRecord != 0;
}

- (id)createOrphanedABRecordFromParsedVCardOutRecordType:(unsigned int *)type
{
  dataPayload = [(CardDAVVCardItemABImplementation *)self dataPayload];

  if (!dataPayload || (v6 = objc_alloc(MEMORY[0x277CE9780]), -[CardDAVVCardItemABImplementation dataPayload](self, "dataPayload"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v6 initWithData:v7], v7, v9 = objc_msgSend(v8, "createRecordInSource:outRecordType:", 0, type), v8, !v9))
  {
    v11 = 0;
    goto LABEL_11;
  }

  if (*type == 1)
  {
    v10 = [[DAABLegacyGroup alloc] initWithGroup:v9];
  }

  else
  {
    if (*type)
    {
      v11 = 0;
      goto LABEL_10;
    }

    v10 = [[DAABLegacyContact alloc] initWithABPerson:v9];
  }

  v11 = v10;
LABEL_10:
  CFRelease(v9);
LABEL_11:

  return v11;
}

- (id)convertToDAContactSearchResultElement
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CE9780]);
  dataPayload = [(CardDAVVCardItemABImplementation *)self dataPayload];
  v5 = [v3 initWithData:dataPayload];

  v6 = [v5 createRecordInSource:0 outRecordType:&self->_abRecordType];
  if (v6)
  {
    v7 = v6;
    if ([(CardDAVVCardItemABImplementation *)self abRecordType])
    {
      v8 = 0;
    }

    else
    {
      v8 = objc_opt_new();
      v53 = ABRecordCopyValue(v7, *MEMORY[0x277CE9880]);
      [v8 setDisplayName:?];
      v52 = ABRecordCopyValue(v7, *MEMORY[0x277CE98C0]);
      [v8 setFirstName:?];
      v51 = ABRecordCopyValue(v7, *MEMORY[0x277CE9980]);
      [v8 setLastName:?];
      v9 = ABRecordCopyValue(v7, *MEMORY[0x277CE9888]);
      if (v9)
      {
        v10 = v9;
        if (ABMultiValueGetCount(v9))
        {
          v11 = ABMultiValueCopyValueAtIndex(v10, 0);
          [v8 setEmailAddress:v11];
        }

        CFRelease(v10);
      }

      v12 = ABRecordCopyValue(v7, *MEMORY[0x277CE9A18]);
      if (v12)
      {
        v13 = v12;
        Count = ABMultiValueGetCount(v12);
        if (Count >= 1)
        {
          v15 = Count;
          v16 = 0;
          v17 = *MEMORY[0x277CE9AE8];
          v18 = *MEMORY[0x277CE9A08];
          v54 = *MEMORY[0x277CE9800];
          v50 = *MEMORY[0x277CE99F8];
          v49 = *MEMORY[0x277CE9A00];
          v48 = *MEMORY[0x277CE99F0];
          v47 = *MEMORY[0x277CE9A28];
          v46 = *MEMORY[0x277CE9A10];
          type = *(MEMORY[0x277D03988] + 3);
          do
          {
            v19 = ABMultiValueCopyLabelAtIndex(v13, v16);
            v20 = ABMultiValueCopyValueAtIndex(v13, v16);
            if ([(__CFString *)v19 isEqualToString:v17])
            {
              [v8 setWorkPhone:v20];
            }

            else if ([(__CFString *)v19 isEqualToString:v18])
            {
              [v8 setMobilePhone:v20];
            }

            else if ([(__CFString *)v19 isEqualToString:v54])
            {
              [v8 setHomePhone:v20];
            }

            else if ([(__CFString *)v19 isEqualToString:v50])
            {
              [v8 setIPhone:v20];
            }

            else if ([(__CFString *)v19 isEqualToString:v49])
            {
              [v8 setMainPhone:v20];
            }

            else if ([(__CFString *)v19 isEqualToString:v48])
            {
              [v8 setFaxPhone:v20];
            }

            else if ([(__CFString *)v19 isEqualToString:v47])
            {
              [v8 setWorkFaxPhone:v20];
            }

            else if ([(__CFString *)v19 isEqualToString:v46])
            {
              [v8 setPagerNumber:v20];
            }

            else
            {
              log = DALoggingwithCategory();
              if (os_log_type_enabled(log, type))
              {
                *buf = 138412290;
                v57 = v19;
                _os_log_impl(&dword_24850D000, log, type, "Unknown phone number label %@", buf, 0xCu);
              }
            }

            ++v16;
          }

          while (v15 != v16);
        }

        CFRelease(v13);
      }

      v21 = ABRecordCopyValue(v7, *MEMORY[0x277CE99C0]);
      [v8 setCompany:v21];
      v22 = ABRecordCopyValue(v7, *MEMORY[0x277CE9958]);
      [v8 setTitle:v22];
      v23 = ABRecordCopyValue(v7, *MEMORY[0x277CE99B0]);
      [v8 setAlias:v23];
      v24 = ABRecordCopyValue(v7, *MEMORY[0x277CE9828]);
      if (v24)
      {
        v25 = v24;
        if (ABMultiValueGetCount(v24))
        {
          v26 = ABMultiValueCopyValueAtIndex(v25, 0);
          v27 = [v26 objectForKeyedSubscript:*MEMORY[0x277CE9838]];
          [v8 setStreet:v27];

          v28 = [v26 objectForKeyedSubscript:*MEMORY[0x277CE9810]];
          [v8 setCity:v28];

          v29 = [v26 objectForKeyedSubscript:*MEMORY[0x277CE9830]];
          [v8 setState:v29];

          v30 = [v26 objectForKeyedSubscript:*MEMORY[0x277CE9840]];
          [v8 setZip:v30];

          v31 = [v26 objectForKeyedSubscript:*MEMORY[0x277CE9820]];
          [v8 setCountry:v31];
        }

        CFRelease(v25);
      }

      v32 = ABPersonCopyImageDataWithFormat(v7, kABPersonImageFormatThumbnail);
      v33 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v32 encoding:4];
      if ([v33 length])
      {
        v34 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v33 options:0];
        [v8 setJpegPhoto:v34];
      }

      else
      {
        [v8 setJpegPhoto:v32];
      }

      v35 = ABRecordCopyValue(v7, *MEMORY[0x277CE98E8]);
      if (v35)
      {
        v36 = v35;
        if (ABMultiValueGetCount(v35))
        {
          v37 = ABMultiValueCopyValueAtIndex(v36, 0);
          [v37 objectForKeyedSubscript:*MEMORY[0x277CE9920]];
          v55 = v23;
          v38 = v22;
          v40 = v39 = v21;
          [v8 setImService:v40];

          v41 = [v37 objectForKeyedSubscript:*MEMORY[0x277CE9948]];
          [v8 setImUsername:v41];

          v21 = v39;
          v22 = v38;
          v23 = v55;
        }

        CFRelease(v36);
      }
    }

    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  emailAddress = [v8 emailAddress];
  [v8 setIdentifierOnServer:emailAddress];

  return v8;
}

- (void)initWithURL:(uint64_t)a3 eTag:dataPayload:inContainerWithURL:withAccountInfoProvider:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"CardDAVVCardItemABImplementation.m" lineNumber:74 description:{@"%@ wasn't a CardDAVDaemonAccount", a3}];
}

- (void)initWithURL:(uint64_t)a3 eTag:dataPayload:inContainerWithURL:withAccountInfoProvider:.cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"CardDAVVCardItemABImplementation.m" lineNumber:75 description:{@"%@ wasn't a CardDAVDaemonAccount", a3}];
}

- (void)saveIfGroupWithLocalObject:(uint64_t)a1 toContainer:(uint64_t)a2 shouldMergeProperties:outMergeDidChooseLocalProperties:account:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CardDAVVCardItemABImplementation.m" lineNumber:509 description:@"Error: abRecordType type mismatch for group"];
}

- (void)saveIfGroupWithLocalObject:(uint64_t)a1 toContainer:(uint64_t)a2 shouldMergeProperties:outMergeDidChooseLocalProperties:account:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CardDAVVCardItemABImplementation.m" lineNumber:505 description:@"Error: abRecordType type mismatch for contact"];
}

@end