@interface KMMapper_SASyncSiriKitAppVocabulary
- (KMMapper_SASyncSiriKitAppVocabulary)init;
- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error;
@end

@implementation KMMapper_SASyncSiriKitAppVocabulary

- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error
{
  v65 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [objectCopy propertyForKey:*MEMORY[0x277D48AA0]];
  v9 = [v8 _sa_mappedDictionaryWithBlock:&__block_literal_global];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  allKeys = [v9 allKeys];
  v43 = [allKeys countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (!v43)
  {
    goto LABEL_24;
  }

  v11 = 0;
  v12 = *v60;
  v40 = v9;
  v41 = objectCopy;
  v38 = *v60;
  v39 = allKeys;
  do
  {
    v13 = 0;
    do
    {
      if (*v60 != v12)
      {
        objc_enumerationMutation(allKeys);
      }

      v44 = v13;
      v14 = *(*(&v59 + 1) + 8 * v13);
      selfCopy = self;
      v16 = [(NSDictionary *)self->_ontologyNodeToFieldTypeMap objectForKey:v14];
      v17 = KVFieldTypeFromNumber();

      v48 = v17;
      if (!v17)
      {
        self = selfCopy;
        goto LABEL_22;
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      obj = [v9 objectForKey:v14];
      v46 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
      if (!v46)
      {
        self = selfCopy;
        goto LABEL_21;
      }

      v18 = 0;
      v47 = *v56;
      self = selfCopy;
      while (2)
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v56 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v55 + 1) + 8 * i);
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u#%u", v48, v11];
          builder = self->_builder;
          v54 = v18;
          v23 = [(KVItemBuilder *)builder setItemType:1 itemId:v21 error:&v54];
          v24 = v54;

          if (!v23)
          {
            v18 = v24;
            objectCopy = v41;
LABEL_30:
            KMMapperSetBuilderError(error, v18);

            v36 = 0;
            v9 = v40;
            goto LABEL_31;
          }

          v50 = v21;
          selfCopy2 = self;
          v26 = self->_builder;
          intentSlotValue = [v20 intentSlotValue];
          v53 = v24;
          v28 = [(KVItemBuilder *)v26 addFieldWithType:v48 value:intentSlotValue error:&v53];
          v18 = v53;

          if (!v28)
          {

LABEL_27:
            objectCopy = v41;
            goto LABEL_29;
          }

          v49 = v11;
          v29 = v7;
          v30 = selfCopy2->_builder;
          vocabularyIdentifier = [v20 vocabularyIdentifier];
          v52 = v18;
          v32 = [(KVItemBuilder *)v30 addFieldWithType:20 value:vocabularyIdentifier error:&v52];
          v33 = v52;

          if (!v32)
          {
            v18 = v33;
            objectCopy = v41;
            v7 = v29;
LABEL_29:
            v21 = v50;
            goto LABEL_30;
          }

          v34 = selfCopy2->_builder;
          v51 = v33;
          v35 = [(KVItemBuilder *)v34 buildItemWithError:&v51];
          v18 = v51;

          v7 = v29;
          if (!v35)
          {
            goto LABEL_27;
          }

          self = selfCopy2;
          [v29 addObject:v35];

          v11 = (v49 + 1);
        }

        v46 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
        if (v46)
        {
          continue;
        }

        break;
      }

      v9 = v40;
      objectCopy = v41;
      v12 = v38;
      allKeys = v39;
LABEL_21:

LABEL_22:
      v13 = v44 + 1;
    }

    while (v44 + 1 != v43);
    v43 = [allKeys countByEnumeratingWithState:&v59 objects:v64 count:16];
  }

  while (v43);
LABEL_24:

  v36 = v7;
LABEL_31:

  return v36;
}

- (KMMapper_SASyncSiriKitAppVocabulary)init
{
  v28[18] = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = KMMapper_SASyncSiriKitAppVocabulary;
  v2 = [(KMMapper_SASyncSiriKitAppVocabulary *)&v26 init];
  if (v2)
  {
    v27[0] = @"personFullName";
    v25 = KVFieldTypeToNumber();
    v28[0] = v25;
    v27[1] = @"smsGroupName";
    v24 = KVFieldTypeToNumber();
    v28[1] = v24;
    v27[2] = @"photoTags";
    v23 = KVFieldTypeToNumber();
    v28[2] = v23;
    v27[3] = @"photoAlbumName";
    v22 = KVFieldTypeToNumber();
    v28[3] = v22;
    v27[4] = @"healthActivity";
    v21 = KVFieldTypeToNumber();
    v28[4] = v21;
    v27[5] = @"carProfileName";
    v20 = KVFieldTypeToNumber();
    v28[5] = v20;
    v27[6] = @"carName";
    v19 = KVFieldTypeToNumber();
    v28[6] = v19;
    v27[7] = @"paymentsOrganizationName";
    v18 = KVFieldTypeToNumber();
    v28[7] = v18;
    v27[8] = @"paymentsAccountName";
    v17 = KVFieldTypeToNumber();
    v28[8] = v17;
    v27[9] = @"notebookTitle";
    v3 = KVFieldTypeToNumber();
    v28[9] = v3;
    v27[10] = @"notebookFolderTitle";
    v4 = KVFieldTypeToNumber();
    v28[10] = v4;
    v27[11] = @"appPlaylistTitle";
    v5 = KVFieldTypeToNumber();
    v28[11] = v5;
    v27[12] = @"appMusicArtistName";
    v6 = KVFieldTypeToNumber();
    v28[12] = v6;
    v27[13] = @"appAudiobookTitle";
    v7 = KVFieldTypeToNumber();
    v28[13] = v7;
    v27[14] = @"appAudiobookAuthor";
    v8 = KVFieldTypeToNumber();
    v28[14] = v8;
    v27[15] = @"appShowTitle";
    v9 = KVFieldTypeToNumber();
    v28[15] = v9;
    v27[16] = @"voiceCommandName";
    v10 = KVFieldTypeToNumber();
    v28[16] = v10;
    v27[17] = @"photoMemoryName";
    v11 = KVFieldTypeToNumber();
    v28[17] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:18];
    ontologyNodeToFieldTypeMap = v2->_ontologyNodeToFieldTypeMap;
    v2->_ontologyNodeToFieldTypeMap = v12;

    v14 = objc_alloc_init(MEMORY[0x277D22D28]);
    builder = v2->_builder;
    v2->_builder = v14;
  }

  return v2;
}

@end