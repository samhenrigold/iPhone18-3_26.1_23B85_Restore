@interface SHLCloudTrackTransformer
+ (id)baseCloudRecordFromTrack:(id)track usingEncryption:(BOOL)encryption;
+ (id)cloudBackedItemFromLibraryTrack:(id)track usingEncryption:(BOOL)encryption;
+ (id)libraryTrackFromCloudBackedItem:(id)item usingEncryption:(BOOL)encryption;
@end

@implementation SHLCloudTrackTransformer

+ (id)libraryTrackFromCloudBackedItem:(id)item usingEncryption:(BOOL)encryption
{
  record = [item record];
  recordType = [record recordType];
  v7 = [recordType isEqualToString:@"Track"];

  if (!v7)
  {
    v12 = 0;
    goto LABEL_26;
  }

  if (encryption)
  {
    encryptedValues = [record encryptedValues];
    v9 = [encryptedValues objectForKeyedSubscript:@"RecognitionIdentifier"];

    encryptedValues2 = [record encryptedValues];
    v11 = [encryptedValues2 objectForKeyedSubscript:@"ShazamKey"];
  }

  else
  {
    v9 = [record objectForKeyedSubscript:@"RecognitionIdentifier"];
    v11 = [record objectForKeyedSubscript:@"ShazamKey"];
  }

  v13 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [record encodeSystemFieldsWithCoder:v13];
  v14 = [SHLLibraryItemMetadata alloc];
  encodedData = [v13 encodedData];
  v16 = [(SHLLibraryItemMetadata *)v14 initWithEncodedSystemData:encodedData];

  if (encryption)
  {
    v17 = v16;
    v18 = [SHLMutableLibraryTrack alloc];
    recordID = [record recordID];
    recordName = [recordID recordName];
    v53 = v17;
    v21 = [(SHLLibraryTrack *)v18 initWithIdentifier:recordName metadata:v17];

    [(SHLLibraryTrack *)v21 setRecognitionIdentifier:v9];
    v22 = [[SHLShazamKey alloc] initWithKey:v11];
    [(SHLLibraryTrack *)v21 setShazamKey:v22];

    encryptedValues3 = [record encryptedValues];
    v24 = [encryptedValues3 objectForKeyedSubscript:@"Date"];
    [(SHLLibraryTrack *)v21 setDate:v24];

    encryptedValues4 = [record encryptedValues];
    v26 = [encryptedValues4 objectForKeyedSubscript:@"Title"];
    [(SHLLibraryTrack *)v21 setTitle:v26];

    encryptedValues5 = [record encryptedValues];
    v28 = [encryptedValues5 objectForKeyedSubscript:@"Subtitle"];
    [(SHLLibraryTrack *)v21 setSubtitle:v28];

    encryptedValues6 = [record encryptedValues];
    v30 = [encryptedValues6 objectForKeyedSubscript:@"ProviderIdentifier"];
    [(SHLLibraryTrack *)v21 setProviderIdentifier:v30];

    encryptedValues7 = [record encryptedValues];
    v32 = [encryptedValues7 objectForKeyedSubscript:@"ProviderName"];
    [(SHLLibraryTrack *)v21 setProviderName:v32];

LABEL_12:
    encryptedValues8 = [record encryptedValues];
    v40 = [encryptedValues8 objectForKeyedSubscript:@"Location"];

    [SHLLocationTransformer coordinateFromLocation:v40];
    [(SHLLibraryTrack *)v21 setLocationCoordinate:?];
    v41 = [record objectForKeyedSubscript:@"AssociatedGroupIdentifier"];
    recordID2 = [v41 recordID];
    recordName2 = [recordID2 recordName];
    [(SHLLibraryTrack *)v21 setAssociatedGroupIdentifier:recordName2];

    v55 = v9;
    v54 = v13;
    if (encryption)
    {
      encryptedValues9 = [record encryptedValues];
      v45 = [encryptedValues9 objectForKeyedSubscript:@"Labels"];
    }

    else
    {
      v45 = [record objectForKeyedSubscript:@"Labels"];
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v46 = v45;
    v47 = [v46 countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v57;
      do
      {
        for (i = 0; i != v48; i = i + 1)
        {
          if (*v57 != v49)
          {
            objc_enumerationMutation(v46);
          }

          v51 = [[SHLLibraryLabel alloc] initWithName:*(*(&v56 + 1) + 8 * i)];
          if ([(SHLLibraryLabel *)v51 type])
          {
            [(SHLLibraryTrack *)v21 addLabel:v51];
          }
        }

        v48 = [v46 countByEnumeratingWithState:&v56 objects:v60 count:16];
      }

      while (v48);
    }

    v12 = [(SHLMutableLibraryTrack *)v21 copy];
    v9 = v55;
    v16 = v53;
    v13 = v54;
    goto LABEL_25;
  }

  v12 = 0;
  if (v9 && v11)
  {
    v33 = [[SHLShazamKey alloc] initWithKey:v11];
    if (v33)
    {
      v34 = v33;
      v53 = v16;
      v21 = [(SHLLibraryTrack *)[SHLMutableLibraryTrack alloc] initWithRecognitionIdentifier:v9 shazamKey:v33 metadata:v16];

      v35 = [record objectForKeyedSubscript:@"Date"];
      [(SHLLibraryTrack *)v21 setDate:v35];

      v36 = [record objectForKeyedSubscript:@"Title"];
      [(SHLLibraryTrack *)v21 setTitle:v36];

      v37 = [record objectForKeyedSubscript:@"Subtitle"];
      [(SHLLibraryTrack *)v21 setSubtitle:v37];

      v38 = [record objectForKeyedSubscript:@"ProviderIdentifier"];
      [(SHLLibraryTrack *)v21 setProviderIdentifier:v38];

      encryptedValues7 = [record objectForKeyedSubscript:@"ProviderName"];
      [(SHLLibraryTrack *)v21 setProviderName:encryptedValues7];
      goto LABEL_12;
    }

    v12 = 0;
  }

LABEL_25:

LABEL_26:

  return v12;
}

+ (id)cloudBackedItemFromLibraryTrack:(id)track usingEncryption:(BOOL)encryption
{
  encryptionCopy = encryption;
  trackCopy = track;
  v7 = [self baseCloudRecordFromTrack:trackCopy usingEncryption:encryptionCopy];
  if (v7)
  {
    if (encryptionCopy)
    {
      recognitionIdentifier = [trackCopy recognitionIdentifier];
      shazamKey = [trackCopy shazamKey];
      validatedKey = [shazamKey validatedKey];

      encryptedValues = [v7 encryptedValues];
      [encryptedValues setObject:recognitionIdentifier forKeyedSubscript:@"RecognitionIdentifier"];

      encryptedValues2 = [v7 encryptedValues];
      [encryptedValues2 setObject:validatedKey forKeyedSubscript:@"ShazamKey"];

      date = [trackCopy date];
      encryptedValues3 = [v7 encryptedValues];
      [encryptedValues3 setObject:date forKeyedSubscript:@"Date"];

      providerIdentifier = [trackCopy providerIdentifier];
      encryptedValues4 = [v7 encryptedValues];
      [encryptedValues4 setObject:providerIdentifier forKeyedSubscript:@"ProviderIdentifier"];

      providerName = [trackCopy providerName];
      encryptedValues5 = [v7 encryptedValues];
      [encryptedValues5 setObject:providerName forKeyedSubscript:@"ProviderName"];

      title = [trackCopy title];
      encryptedValues6 = [v7 encryptedValues];
      [encryptedValues6 setObject:title forKeyedSubscript:@"Title"];

      subtitle = [trackCopy subtitle];
      encryptedValues7 = [v7 encryptedValues];
      [encryptedValues7 setObject:subtitle forKeyedSubscript:@"Subtitle"];
    }

    else
    {
      compoundIdentifier = [trackCopy compoundIdentifier];
      recognitionIdentifier = [compoundIdentifier recognitionIdentifier];

      compoundIdentifier2 = [trackCopy compoundIdentifier];
      shazamKey2 = [compoundIdentifier2 shazamKey];
      validatedKey = [shazamKey2 validatedKey];

      [v7 setObject:recognitionIdentifier forKeyedSubscript:@"RecognitionIdentifier"];
      [v7 setObject:validatedKey forKeyedSubscript:@"ShazamKey"];
      date2 = [trackCopy date];
      [v7 setObject:date2 forKeyedSubscript:@"Date"];

      providerIdentifier2 = [trackCopy providerIdentifier];
      [v7 setObject:providerIdentifier2 forKeyedSubscript:@"ProviderIdentifier"];

      providerName2 = [trackCopy providerName];
      [v7 setObject:providerName2 forKeyedSubscript:@"ProviderName"];

      title2 = [trackCopy title];
      [v7 setObject:title2 forKeyedSubscript:@"Title"];

      subtitle = [trackCopy subtitle];
      [v7 setObject:subtitle forKeyedSubscript:@"Subtitle"];
    }

    labels = [trackCopy labels];
    v32 = [labels count];

    if (v32)
    {
      v64 = validatedKey;
      v33 = recognitionIdentifier;
      labels2 = [trackCopy labels];
      v35 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [labels2 count]);

      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      labels3 = [trackCopy labels];
      v37 = [labels3 countByEnumeratingWithState:&v65 objects:v69 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v66;
        do
        {
          for (i = 0; i != v38; i = i + 1)
          {
            if (*v66 != v39)
            {
              objc_enumerationMutation(labels3);
            }

            name = [*(*(&v65 + 1) + 8 * i) name];
            [v35 addObject:name];
          }

          v38 = [labels3 countByEnumeratingWithState:&v65 objects:v69 count:16];
        }

        while (v38);
      }

      v42 = [v35 copy];
      if (encryptionCopy)
      {
        encryptedValues8 = [v7 encryptedValues];
        [encryptedValues8 setObject:v42 forKeyedSubscript:@"Labels"];
      }

      else
      {
        [v7 setObject:v42 forKeyedSubscript:@"Labels"];
      }

      recognitionIdentifier = v33;
      validatedKey = v64;
    }

    [trackCopy locationCoordinate];
    if (CLLocationCoordinate2DIsValid(v71))
    {
      if (encryptionCopy)
      {
        v44 = [CLLocation alloc];
        [trackCopy locationCoordinate];
        v46 = v45;
        [trackCopy locationCoordinate];
        v48 = v44;
        v49 = v46;
      }

      else
      {
        [trackCopy locationCoordinate];
        v51 = round(v50 * 100.0) / 100.0;
        [trackCopy locationCoordinate];
        v53 = round(v52 * 100.0) / 100.0;
        v48 = [CLLocation alloc];
        v49 = v51;
        v47 = v53;
      }

      v54 = [v48 initWithLatitude:v49 longitude:v47];
      encryptedValues9 = [v7 encryptedValues];
      [encryptedValues9 setObject:v54 forKeyedSubscript:@"Location"];
    }

    associatedGroupIdentifier = [trackCopy associatedGroupIdentifier];

    if (associatedGroupIdentifier)
    {
      v57 = [CKRecordID alloc];
      associatedGroupIdentifier2 = [trackCopy associatedGroupIdentifier];
      recordID = [v7 recordID];
      zoneID = [recordID zoneID];
      v61 = [v57 initWithRecordName:associatedGroupIdentifier2 zoneID:zoneID];

      v62 = [[CKReference alloc] initWithRecordID:v61 action:1];
      [v7 setObject:v62 forKeyedSubscript:@"AssociatedGroupIdentifier"];
    }

    v23 = [[SHLCloudBackedItem alloc] initWithRecord:v7];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (id)baseCloudRecordFromTrack:(id)track usingEncryption:(BOOL)encryption
{
  trackCopy = track;
  metadata = [trackCopy metadata];

  if (metadata)
  {
    v6 = [NSKeyedUnarchiver alloc];
    metadata2 = [trackCopy metadata];

    encodedSystemData = [metadata2 encodedSystemData];
    v17 = 0;
    v9 = [v6 initForReadingFromData:encodedSystemData error:&v17];

    v10 = [[CKRecord alloc] initWithCoder:v9];
    [v9 finishDecoding];
  }

  else
  {
    v11 = [CKRecordID alloc];
    identifier = [trackCopy identifier];

    v13 = +[SHLCloudContext sharedContext];
    shazamLibraryZone = [v13 shazamLibraryZone];
    zoneID = [shazamLibraryZone zoneID];
    v9 = [v11 initWithRecordName:identifier zoneID:zoneID];

    v10 = [[CKRecord alloc] initWithRecordType:@"Track" recordID:v9];
  }

  return v10;
}

@end