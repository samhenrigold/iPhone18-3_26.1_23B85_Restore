@interface ASCompetitionList
+ (id)competitionListFromCodableDatabaseCompetitionList:(id)list codableCompetitions:(id)competitions withType:(int64_t)type;
+ (id)competitionListWithCodableCompetitionList:(id)list;
+ (id)competitionListWithRecord:(id)record;
- (ASCodableCloudKitCompetitionList)codableCompetitionList;
- (ASCompetition)currentCompetition;
- (ASCompetitionList)init;
- (ASCompetitionList)initWithFriendUUID:(id)d type:(int64_t)type;
- (id)codableDatabaseCompetitionListEntryForOwner:(int64_t)owner;
- (id)copyWithZone:(_NSZone *)zone;
- (id)recordWithZoneID:(id)d recordEncryptionType:(int64_t)type;
- (void)currentCompetition;
@end

@implementation ASCompetitionList

- (id)recordWithZoneID:(id)d recordEncryptionType:(int64_t)type
{
  dCopy = d;
  systemFieldsOnlyRecord = [(ASCompetitionList *)self systemFieldsOnlyRecord];
  v8 = systemFieldsOnlyRecord;
  if (!systemFieldsOnlyRecord || ([systemFieldsOnlyRecord recordID], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "zoneID"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqual:", dCopy), v10, v9, (v11 & 1) == 0))
  {
    v12 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"ActivitySharingCompetitionList" zoneID:dCopy];

    v8 = v12;
  }

  _ASUpdateSchemaVersionOnRecord(1, v8, type);
  codableCompetitionList = [(ASCompetitionList *)self codableCompetitionList];
  data = [codableCompetitionList data];
  encryptedValues = [v8 encryptedValues];
  [encryptedValues setObject:data forKeyedSubscript:@"EncryptedData"];

  return v8;
}

+ (id)competitionListWithRecord:(id)record
{
  recordCopy = record;
  v4 = _ASCloudKitSchemaVersionForRecord(recordCopy);
  if (v4 == 1)
  {
    encryptedValues = [recordCopy encryptedValues];
    v7 = [encryptedValues objectForKeyedSubscript:@"EncryptedData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v12 = [[ASCodableCloudKitCompetitionList alloc] initWithData:v8];
      v9 = [ASCompetitionList competitionListWithCodableCompetitionList:v12];
      v13 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
      [recordCopy encodeSystemFieldsWithCoder:v13];
      [v13 finishEncoding];
      v14 = objc_alloc(MEMORY[0x277CCAAC8]);
      encodedData = [v13 encodedData];
      v22 = 0;
      v16 = [v14 initForReadingFromData:encodedData error:&v22];
      v17 = v22;

      if (v17)
      {
        ASLoggingInitialize(v18, v19);
        if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
        {
          +[ASRelationship(CloudKitCodingSupport) _relationshipWithRecord:relationshipEventRecords:completion:];
        }
      }

      v20 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithCoder:v16];
      [v9 setSystemFieldsOnlyRecord:v20];
    }

    else
    {
      ASLoggingInitialize(v10, v11);
      if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
      {
        +[ASCompetitionList(CloudKitCodingSupport) competitionListWithRecord:];
      }

      v9 = 0;
    }
  }

  else
  {
    ASLoggingInitialize(v4, v5);
    if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
    {
      +[ASCompetitionList(CloudKitCodingSupport) competitionListWithRecord:];
    }

    v9 = 0;
  }

  return v9;
}

+ (id)competitionListWithCodableCompetitionList:(id)list
{
  listCopy = list;
  v4 = objc_alloc_init(ASCompetitionList);
  competitions = [listCopy competitions];
  v6 = [competitions hk_map:&__block_literal_global_484];
  [(ASCompetitionList *)v4 setCompetitions:v6];

  v7 = MEMORY[0x277CCAD78];
  friendUUID = [listCopy friendUUID];
  v9 = [v7 hk_UUIDWithData:friendUUID];
  [(ASCompetitionList *)v4 setFriendUUID:v9];

  type = [listCopy type];
  [(ASCompetitionList *)v4 setType:type];

  return v4;
}

- (ASCodableCloudKitCompetitionList)codableCompetitionList
{
  v3 = objc_alloc_init(ASCodableCloudKitCompetitionList);
  competitions = [(ASCompetitionList *)self competitions];
  v5 = [competitions hk_map:&__block_literal_global_488];
  v6 = [v5 mutableCopy];
  [(ASCodableCloudKitCompetitionList *)v3 setCompetitions:v6];

  friendUUID = [(ASCompetitionList *)self friendUUID];
  hk_dataForUUIDBytes = [friendUUID hk_dataForUUIDBytes];
  [(ASCodableCloudKitCompetitionList *)v3 setFriendUUID:hk_dataForUUIDBytes];

  [(ASCodableCloudKitCompetitionList *)v3 setType:[(ASCompetitionList *)self type]];

  return v3;
}

+ (id)competitionListFromCodableDatabaseCompetitionList:(id)list codableCompetitions:(id)competitions withType:(int64_t)type
{
  v32 = *MEMORY[0x277D85DE8];
  listCopy = list;
  competitionsCopy = competitions;
  v9 = objc_alloc_init(ASCompetitionList);
  v10 = MEMORY[0x277CCAD78];
  friendUUID = [listCopy friendUUID];
  v12 = [v10 hk_UUIDWithData:friendUUID];
  [(ASCompetitionList *)v9 setFriendUUID:v12];

  [(ASCompetitionList *)v9 setType:type];
  v13 = objc_opt_class();
  v26 = listCopy;
  systemFieldsOnlyRecord = [listCopy systemFieldsOnlyRecord];
  v15 = ASSecureUnarchiveClassWithData(v13, systemFieldsOnlyRecord);
  [(ASCompetitionList *)v9 setSystemFieldsOnlyRecord:v15];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = competitionsCopy;
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v28;
    v20 = MEMORY[0x277CBEBF8];
    do
    {
      v21 = 0;
      v22 = v20;
      do
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v16);
        }

        competition = [*(*(&v27 + 1) + 8 * v21) competition];
        v24 = [ASCompetition competitionWithCodableCompetition:competition];

        v20 = [v22 arrayByAddingObject:v24];

        ++v21;
        v22 = v20;
      }

      while (v18 != v21);
      v18 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v18);
  }

  else
  {
    v20 = MEMORY[0x277CBEBF8];
  }

  [(ASCompetitionList *)v9 setCompetitions:v20];

  return v9;
}

- (id)codableDatabaseCompetitionListEntryForOwner:(int64_t)owner
{
  v5 = objc_alloc_init(ASCodableDatabaseCompetitionListEntry);
  friendUUID = [(ASCompetitionList *)self friendUUID];
  hk_dataForUUIDBytes = [friendUUID hk_dataForUUIDBytes];
  [(ASCodableDatabaseCompetitionListEntry *)v5 setFriendUUID:hk_dataForUUIDBytes];

  [(ASCodableDatabaseCompetitionListEntry *)v5 setType:[(ASCompetitionList *)self type]];
  v8 = MEMORY[0x277CCAAB0];
  systemFieldsOnlyRecord = [(ASCompetitionList *)self systemFieldsOnlyRecord];
  v10 = [v8 archivedDataWithRootObject:systemFieldsOnlyRecord requiringSecureCoding:1 error:0];
  [(ASCodableDatabaseCompetitionListEntry *)v5 setSystemFieldsOnlyRecord:v10];

  [(ASCodableDatabaseCompetitionListEntry *)v5 setOwner:owner];

  return v5;
}

- (ASCompetitionList)init
{
  v6.receiver = self;
  v6.super_class = ASCompetitionList;
  v2 = [(ASCompetitionList *)&v6 init];
  v3 = v2;
  if (v2)
  {
    competitions = v2->_competitions;
    v2->_competitions = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (ASCompetitionList)initWithFriendUUID:(id)d type:(int64_t)type
{
  dCopy = d;
  v8 = [(ASCompetitionList *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_friendUUID, d);
    v9->_type = type;
  }

  return v9;
}

- (ASCompetition)currentCompetition
{
  v3 = [(NSArray *)self->_competitions count];
  if (v3 >= 2)
  {
    ASLoggingInitialize(v3, v4);
    v5 = ASLogCompetitions;
    if (os_log_type_enabled(ASLogCompetitions, OS_LOG_TYPE_ERROR))
    {
      [(ASCompetitionList *)self currentCompetition];
    }
  }

  lastObject = [(NSArray *)self->_competitions lastObject];

  return lastObject;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setFriendUUID:self->_friendUUID];
  [v5 setType:self->_type];
  v6 = [(NSArray *)self->_competitions copyWithZone:zone];
  [v5 setCompetitions:v6];

  v7 = [(CKRecord *)self->_systemFieldsOnlyRecord copyWithZone:zone];
  [v5 setSystemFieldsOnlyRecord:v7];

  return v5;
}

- (void)currentCompetition
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_23E4FA000, a2, OS_LOG_TYPE_ERROR, "Competition list contained an unexpected number of competitions, list: %@", &v2, 0xCu);
}

@end