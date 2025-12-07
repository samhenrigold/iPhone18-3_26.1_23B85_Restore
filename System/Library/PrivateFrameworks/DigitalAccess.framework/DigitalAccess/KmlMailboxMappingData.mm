@interface KmlMailboxMappingData
- (BOOL)isKeyAttestationSetByCarInSignalingBitmap:(unsigned __int8)bitmap;
- (BOOL)isKeyAttestationSetByDeviceInSignalingBitmap:(unsigned __int8)bitmap;
- (BOOL)isOemPropDataSetByCarInSignalingBitmap:(unsigned __int8)bitmap;
- (BOOL)isOemPropDataSetByDeviceInSignalingBitmap:(unsigned __int8)bitmap;
- (BOOL)isSlotIdListSetByCarInSignalingBitmap:(unsigned __int8)bitmap;
- (BOOL)isValid;
- (KmlMailboxMappingData)initWithData:(id)data preferredVersion:(unsigned __int16)version;
- (id)asData;
- (unsigned)getMaskToIndicateKeyAttestationConsumed;
- (unsigned)getMaskToIndicateKeyAttestationSaved;
- (unsigned)getMaskToIndicateOemPropDataConsumed;
- (unsigned)getMaskToIndicateOemPropDataSaved;
- (unsigned)getMaskToIndicateSlotIdListConsumed;
@end

@implementation KmlMailboxMappingData

- (KmlMailboxMappingData)initWithData:(id)data preferredVersion:(unsigned __int16)version
{
  v76 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v68.receiver = self;
  v68.super_class = KmlMailboxMappingData;
  v7 = [(KmlMailboxMappingData *)&v68 init];
  v8 = v7;
  if (v7)
  {
    preferredVersionTlvs = v7->_preferredVersionTlvs;
    v7->_preferredVersionTlvs = 0;

    *&v8->_signalingBitmapOffset = 0;
    *&v8->_mailboxVersion = 0;
    v8->_slotIdentifierLength = 0;
    *&v8->_slotIdListOffset = 0;
    *&v8->_keyAttestationListStartOffset = 0;
    v10 = v8->_preferredVersionTlvs;
    v8->_preferredVersionTlvs = 0;

    v8->_preferredVersion = version;
    v11 = objc_opt_new();
    v8->_useOldSignalingBitmap = [v11 useOldSignalingBitmap];

    if (dataCopy)
    {
      [KmlTlv TLVsWithData:dataCopy];
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v13 = v67 = 0u;
      v14 = [v13 countByEnumeratingWithState:&v64 objects:v71 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v65;
LABEL_5:
        v17 = 0;
        while (1)
        {
          if (*v65 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v64 + 1) + 8 * v17);
          v19 = [v18 tag];
          if (v19 == 32589)
          {
            break;
          }

          if (v15 == ++v17)
          {
            v15 = [v13 countByEnumeratingWithState:&v64 objects:v71 count:16];
            if (v15)
            {
              goto LABEL_5;
            }

            goto LABEL_36;
          }
        }

        v20 = KmlLogger(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v73 = "[KmlMailboxMappingData initWithData:preferredVersion:]";
          v74 = 1024;
          v75 = 69;
          _os_log_impl(&dword_248BF3000, v20, OS_LOG_TYPE_INFO, "%s : %i : Found Mailbox mapping data to parse", buf, 0x12u);
        }

        value = [v18 value];
        v22 = [KmlTlv TLVsWithData:value];
        allMailboxMappingTlvs = v8->_allMailboxMappingTlvs;
        v8->_allMailboxMappingTlvs = v22;

        v24 = [KmlVersions doesVersion:v8->_preferredVersion support:768];
        if (v24)
        {
          v25 = KmlLogger(v24);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v73 = "[KmlMailboxMappingData initWithData:preferredVersion:]";
            v74 = 1024;
            v75 = 73;
            _os_log_impl(&dword_248BF3000, v25, OS_LOG_TYPE_INFO, "%s : %i : We prefer SharingInAChain version", buf, 0x12u);
          }

          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v26 = v8->_allMailboxMappingTlvs;
          v27 = [(NSArray *)v26 countByEnumeratingWithState:&v60 objects:v70 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v61;
            while (2)
            {
              for (i = 0; i != v28; ++i)
              {
                if (*v61 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v60 + 1) + 8 * i);
                v32 = [v31 tag];
                if (v32 == 96)
                {
                  v35 = KmlLogger(v32);
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
                  {
                    *buf = 136315394;
                    v73 = "[KmlMailboxMappingData initWithData:preferredVersion:]";
                    v74 = 1024;
                    v75 = 76;
                    _os_log_impl(&dword_248BF3000, v35, OS_LOG_TYPE_INFO, "%s : %i : Car sent SharingInAChain version mailboxMapping Data", buf, 0x12u);
                  }

                  value2 = [v31 value];
                  v37 = [KmlTlv TLVsWithData:value2];
                  v38 = v8->_preferredVersionTlvs;
                  v8->_preferredVersionTlvs = v37;

                  goto LABEL_35;
                }
              }

              v28 = [(NSArray *)v26 countByEnumeratingWithState:&v60 objects:v70 count:16];
              if (v28)
              {
                continue;
              }

              break;
            }
          }
        }

        else
        {
          if (v8->_preferredVersion != 256)
          {
            goto LABEL_36;
          }

          v33 = KmlLogger(v24);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v73 = "[KmlMailboxMappingData initWithData:preferredVersion:]";
            v74 = 1024;
            v75 = 82;
            _os_log_impl(&dword_248BF3000, v33, OS_LOG_TYPE_INFO, "%s : %i : We will use spec_v1 mailboxMapping data", buf, 0x12u);
          }

          v34 = v8->_allMailboxMappingTlvs;
          v26 = v8->_preferredVersionTlvs;
          v8->_preferredVersionTlvs = v34;
        }

LABEL_35:
      }

LABEL_36:

      if ([(NSArray *)v8->_preferredVersionTlvs count])
      {
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v39 = v8->_preferredVersionTlvs;
        v40 = [(NSArray *)v39 countByEnumeratingWithState:&v56 objects:v69 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v57;
          do
          {
            for (j = 0; j != v41; ++j)
            {
              if (*v57 != v42)
              {
                objc_enumerationMutation(v39);
              }

              v44 = *(*(&v56 + 1) + 8 * j);
              v45 = [v44 tag];
              if (v45 > 208)
              {
                if (v45 <= 210)
                {
                  if (v45 == 209)
                  {
                    v8->_mailboxEndOffset = [v44 valueAsUnsignedShort];
                  }

                  else
                  {
                    v8->_immoTokenLength = [v44 valueAsUnsignedChar];
                  }
                }

                else
                {
                  switch(v45)
                  {
                    case 211:
                      v8->_slotIdentifierLength = [v44 valueAsUnsignedChar];
                      break;
                    case 212:
                      v8->_attestationPackageLength = [v44 valueAsUnsignedShort];
                      break;
                    case 213:
                      v8->_mailboxVersion = [v44 valueAsUnsignedChar];
                      break;
                  }
                }
              }

              else if (v45 <= 193)
              {
                if (v45 == 192)
                {
                  v8->_slotIdBitmapOffset = [v44 valueAsUnsignedShort];
                  v8->_signerSlotIdListOffset = [v44 valueAsUnsignedShort];
                }

                else if (v45 == 193)
                {
                  v8->_slotIdListOffset = [v44 valueAsUnsignedShort];
                  v8->_vehicleProprietaryDataOffset_v3 = [v44 valueAsUnsignedShort];
                }
              }

              else
              {
                switch(v45)
                {
                  case 194:
                    v8->_vehicleProprietaryDataOffset = [v44 valueAsUnsignedShort];
                    v8->_keyAttestationListStartOffset = [v44 valueAsUnsignedShort];
                    break;
                  case 195:
                    v8->_keyAttestationStartOffset = [v44 valueAsUnsignedShort];
                    break;
                  case 208:
                    v8->_signalingBitmapOffset = [v44 valueAsUnsignedShort];
                    break;
                }
              }
            }

            v41 = [(NSArray *)v39 countByEnumeratingWithState:&v56 objects:v69 count:16];
          }

          while (v41);
        }

        if (v8->_mailboxVersion == 128)
        {
          *&v8->_slotIdBitmapOffset = 0;
          HIDWORD(v46) = *&v8->_keyAttestationListStartOffset;
          LODWORD(v46) = HIDWORD(v46);
          *&v8->_vehicleProprietaryDataOffset = v46 >> 16;
        }

        else
        {
          v8->_signerSlotIdListOffset = 0;
          *&v8->_keyAttestationListStartOffset = 0;
          keyAttestationStartOffset = v8->_keyAttestationStartOffset;
          mailboxEndOffset = v8->_mailboxEndOffset;
          if (!v8->_keyAttestationStartOffset)
          {
            v8->_keyAttestationStartOffset = mailboxEndOffset;
            keyAttestationStartOffset = mailboxEndOffset;
          }

          v8->_attestationPackageLength = mailboxEndOffset - keyAttestationStartOffset;
          vehicleProprietaryDataOffset = v8->_vehicleProprietaryDataOffset;
          if (!v8->_vehicleProprietaryDataOffset)
          {
            v8->_vehicleProprietaryDataOffset = keyAttestationStartOffset;
            vehicleProprietaryDataOffset = keyAttestationStartOffset;
          }

          slotIdListOffset = v8->_slotIdListOffset;
          v52 = __OFSUB__(vehicleProprietaryDataOffset, slotIdListOffset);
          v53 = vehicleProprietaryDataOffset - slotIdListOffset;
          if (v53 < 0 != v52)
          {
            v53 += 7;
          }

          v54 = (v53 >> 3);
          if (v54 <= 2)
          {
            LOBYTE(v54) = 2;
          }

          v8->_slotIdentifierLength = v54;
        }
      }

      else
      {
        v47 = KmlLogger(0);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v73 = "[KmlMailboxMappingData initWithData:preferredVersion:]";
          v74 = 1024;
          v75 = 90;
          _os_log_impl(&dword_248BF3000, v47, OS_LOG_TYPE_INFO, "%s : %i : Did not find version appropriate data to initialize Mailbox mapping, using defaults", buf, 0x12u);
        }
      }
    }

    else
    {
      v13 = KmlLogger(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v73 = "[KmlMailboxMappingData initWithData:preferredVersion:]";
        v74 = 1024;
        v75 = 62;
        _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_INFO, "%s : %i : No Data to initalize Mailbox mapping, using defaults", buf, 0x12u);
      }
    }
  }

  return v8;
}

- (id)asData
{
  v27 = *MEMORY[0x277D85DE8];
  if (self->_allMailboxMappingTlvs)
  {
    data = [MEMORY[0x277CBEB28] data];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = self->_allMailboxMappingTlvs;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          asData = [*(*(&v16 + 1) + 8 * i) asData];
          [data appendData:asData];
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v26 count:16];
      }

      while (v6);
    }

    v10 = [KmlTlv TLVWithTag:32589 value:data];
    asData2 = [v10 asData];

    v13 = KmlLogger(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = kmlUtilHexStringFromData(asData2);
      *buf = 136315650;
      v21 = "[KmlMailboxMappingData asData]";
      v22 = 1024;
      v23 = 185;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_INFO, "%s : %i : MailboxMapping Data : %@", buf, 0x1Cu);
    }
  }

  else
  {
    data = KmlLogger(self);
    if (os_log_type_enabled(data, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v21 = "[KmlMailboxMappingData asData]";
      v22 = 1024;
      v23 = 173;
      _os_log_impl(&dword_248BF3000, data, OS_LOG_TYPE_INFO, "%s : %i : Invalid MailboxMapping Data", buf, 0x12u);
    }

    asData2 = 0;
  }

  return asData2;
}

- (BOOL)isValid
{
  v29 = *MEMORY[0x277D85DE8];
  if (!self->_preferredVersion)
  {
    v4 = KmlLogger(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[KmlMailboxMappingData isValid]";
      v23 = 1024;
      v24 = 193;
      v11 = "%s : %i : Agreed KML framework version is unknown";
      v12 = v4;
      v13 = 18;
LABEL_21:
      _os_log_impl(&dword_248BF3000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
    }

LABEL_22:
    v10 = 0;
    goto LABEL_23;
  }

  v3 = [KmlVersions doesVersion:"doesVersion:support:" support:?];
  if (v3 && self->_mailboxVersion != 128)
  {
    v4 = KmlLogger(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      mailboxVersion = self->_mailboxVersion;
      *buf = 136315906;
      v22 = "[KmlMailboxMappingData isValid]";
      v23 = 1024;
      v24 = 200;
      v25 = 1024;
      v26 = 128;
      v27 = 1024;
      v28 = mailboxVersion;
      v11 = "%s : %i : Mismatch in expected mailbox version (0x%02X) and received version (0x%02X)";
      v12 = v4;
      v13 = 30;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_preferredVersionTlvs;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (!kmlUtilAddUniqueTagToSet(v4, [*(*(&v16 + 1) + 8 * i) tag]))
        {
          v10 = 0;
          goto LABEL_18;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v5 = [MEMORY[0x277CBEB58] setWithArray:&unk_285B9CDA8];
  if ([KmlVersions doesVersion:self->_preferredVersion support:768])
  {
    [(NSArray *)v5 addObjectsFromArray:&unk_285B9CDC0];
  }

  v10 = [(NSArray *)v5 isSubsetOfSet:v4, v16];
LABEL_18:

LABEL_23:
  return v10;
}

- (BOOL)isSlotIdListSetByCarInSignalingBitmap:(unsigned __int8)bitmap
{
  v3 = 1;
  if (self->_mailboxVersion == 128)
  {
    if (self->_useOldSignalingBitmap)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  return (v3 & bitmap) != 0;
}

- (unsigned)getMaskToIndicateSlotIdListConsumed
{
  if (self->_mailboxVersion != 128)
  {
    return -2;
  }

  if (self->_useOldSignalingBitmap)
  {
    return -2;
  }

  return -4;
}

- (BOOL)isOemPropDataSetByCarInSignalingBitmap:(unsigned __int8)bitmap
{
  if (self->_mailboxVersion == 128)
  {
    if (self->_useOldSignalingBitmap)
    {
      v3 = 2;
    }

    else
    {
      v3 = 8;
    }
  }

  else
  {
    v3 = 4;
  }

  return (v3 & bitmap) != 0;
}

- (BOOL)isOemPropDataSetByDeviceInSignalingBitmap:(unsigned __int8)bitmap
{
  v3 = 4;
  if (self->_mailboxVersion == 128)
  {
    if (self->_useOldSignalingBitmap)
    {
      v3 = 2;
    }

    else
    {
      v3 = 4;
    }
  }

  return (v3 & bitmap) != 0;
}

- (unsigned)getMaskToIndicateOemPropDataConsumed
{
  if (self->_mailboxVersion != 128)
  {
    return -5;
  }

  if (self->_useOldSignalingBitmap)
  {
    return -3;
  }

  return -13;
}

- (unsigned)getMaskToIndicateOemPropDataSaved
{
  mailboxVersion = self->_mailboxVersion;
  result = 4;
  if (mailboxVersion == 128)
  {
    if (self->_useOldSignalingBitmap)
    {
      return 2;
    }

    else
    {
      return 4;
    }
  }

  return result;
}

- (BOOL)isKeyAttestationSetByCarInSignalingBitmap:(unsigned __int8)bitmap
{
  if (self->_mailboxVersion == 128)
  {
    if (self->_useOldSignalingBitmap)
    {
      v3 = 4;
    }

    else
    {
      v3 = 32;
    }
  }

  else
  {
    v3 = 8;
  }

  return (v3 & bitmap) != 0;
}

- (BOOL)isKeyAttestationSetByDeviceInSignalingBitmap:(unsigned __int8)bitmap
{
  if (self->_mailboxVersion == 128)
  {
    if (self->_useOldSignalingBitmap)
    {
      v3 = 4;
    }

    else
    {
      v3 = 16;
    }
  }

  else
  {
    v3 = 8;
  }

  return (v3 & bitmap) != 0;
}

- (unsigned)getMaskToIndicateKeyAttestationConsumed
{
  if (self->_mailboxVersion != 128)
  {
    return -9;
  }

  if (self->_useOldSignalingBitmap)
  {
    return -5;
  }

  return -49;
}

- (unsigned)getMaskToIndicateKeyAttestationSaved
{
  if (self->_mailboxVersion != 128)
  {
    return 8;
  }

  if (self->_useOldSignalingBitmap)
  {
    return 4;
  }

  return 16;
}

@end