@interface CredentialStoreSessionProxy
- (_TtC7idcredd27CredentialStoreSessionProxy)init;
- (void)activeRegionsInPartitions:(NSArray *)partitions docTypes:(NSSet *)types completion:(id)completion;
- (void)allElementsOfCredential:(NSString *)credential authData:(NSData *)data completion:(id)completion;
- (void)associateExternalPresentmentKeyWithCredential:(NSString *)credential publicKeyIdentifier:(NSData *)identifier completion:(id)completion;
- (void)authorizeDeviceKeySigningKeyOfCredential:(NSString *)credential accountKeyIdentifier:(NSString *)identifier completion:(id)completion;
- (void)authorizeRemoteKeySigningKeyWithCredential:(NSString *)credential remoteKey:(NSData *)key completion:(id)completion;
- (void)checkCompletenessOfCredential:(NSString *)credential completion:(id)completion;
- (void)clearPresentmentKeyUsageForCredential:(NSString *)credential completion:(id)completion;
- (void)configureWithPartitions:(id)partitions completion:(id)completion;
- (void)createAccountKeySigningKeyForAccountKeyIdentifier:(NSString *)identifier completion:(id)completion;
- (void)createCredentialInPartition:(NSString *)partition options:(DCCredentialOptions *)options completion:(id)completion;
- (void)credentialIdentifiersForPublicKeyIdentifier:(NSData *)identifier completion:(id)completion;
- (void)credentialIdentifiersInPartitions:(NSArray *)partitions completion:(id)completion;
- (void)credentialIdentifiersInPartitions:(NSArray *)partitions docType:(NSString *)type completion:(id)completion;
- (void)deleteAccountKeySigningKeyForAccountKeyIdentifier:(NSString *)identifier completion:(id)completion;
- (void)deleteCredential:(NSString *)credential completion:(id)completion;
- (void)deletePIIHashFromSyncableKeyStoreForIdentifier:(NSString *)identifier keystoreType:(unint64_t)type completion:(id)completion;
- (void)deletePIITokenFromSyncableKeyStoreForIdentifier:(NSString *)identifier credentialIdentifier:(NSString *)credentialIdentifier completion:(id)completion;
- (void)elementsOfCredential:(NSString *)credential elementIdentifiers:(NSDictionary *)identifiers authData:(NSData *)data completion:(id)completion;
- (void)eraseLegacySEKeySlot:(int64_t)slot completion:(id)completion;
- (void)generateAccountKeyAuthorizationForCredential:(NSString *)credential accountKeyIdentifier:(NSString *)identifier completion:(id)completion;
- (void)generateDeviceEncryptionKeyForCredential:(NSString *)credential keyType:(unint64_t)type completion:(id)completion;
- (void)generateKeySigningKeyForCredential:(NSString *)credential completion:(id)completion;
- (void)generatePresentmentKeyForCredential:(NSString *)credential completion:(id)completion;
- (void)generatePresentmentKeysForCredential:(NSString *)credential numKeys:(int64_t)keys completion:(id)completion;
- (void)isAccountKeySigningKeyAvailableForAccountKeyIdentifier:(NSString *)identifier completion:(id)completion;
- (void)isPIITokenAvailableForIdentifier:(NSString *)identifier completion:(id)completion;
- (void)keyInfoForCredential:(NSString *)credential completion:(id)completion;
- (void)occupiedLegacySEKeySlotsWithCompletion:(id)completion;
- (void)payloadAuthACLForCredential:(NSString *)credential completion:(id)completion;
- (void)payloadsOfCredential:(NSString *)credential completion:(id)completion;
- (void)propertiesOfCredential:(NSString *)credential completion:(id)completion;
- (void)replacePayloadOfCredential:(NSString *)credential withPayload:(NSData *)payload format:(unint64_t)format completion:(id)completion;
- (void)retrieveAccountKeySigningKeyForAccountKeyIdentifier:(NSString *)identifier completion:(id)completion;
- (void)retrievePIIHashFromSyncableKeyStoreForIdentifier:(NSString *)identifier keystoreType:(unint64_t)type completion:(id)completion;
- (void)retrievePIITokenFromSyncableKeyStoreForIdentifier:(NSString *)identifier completion:(id)completion;
- (void)setStateOfCredential:(NSString *)credential to:(unint64_t)to completion:(id)completion;
- (void)storePIIHashInSyncableKeyStoreForIdentifier:(NSString *)identifier data:(NSData *)data keystoreType:(unint64_t)type completion:(id)completion;
- (void)storePIITokenInSyncableKeyStoreForIdentifier:(NSString *)identifier data:(NSData *)data credentialIdentifier:(NSString *)credentialIdentifier completion:(id)completion;
- (void)updatePIITokenInSyncableKeyStoreForIdentifier:(NSString *)identifier attributesToUpdate:(NSDictionary *)update credentialIdentifier:(NSString *)credentialIdentifier completion:(id)completion;
@end

@implementation CredentialStoreSessionProxy

- (void)configureWithPartitions:(id)partitions completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  selfCopy = self;
  sub_10008BC10(v6, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)createCredentialInPartition:(NSString *)partition options:(DCCredentialOptions *)options completion:(id)completion
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = partition;
  v13[3] = options;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC9D8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001AC9E0;
  v16[5] = v15;
  partitionCopy = partition;
  optionsCopy = options;
  selfCopy = self;
  sub_100093C54(0, 0, v11, &unk_1001AC9E8, v16);
}

- (void)generateKeySigningKeyForCredential:(NSString *)credential completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = credential;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC9B8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC9C0;
  v14[5] = v13;
  credentialCopy = credential;
  selfCopy = self;
  sub_100093C54(0, 0, v9, &unk_1001AC9C8, v14);
}

- (void)isAccountKeySigningKeyAvailableForAccountKeyIdentifier:(NSString *)identifier completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC998;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC9A0;
  v14[5] = v13;
  identifierCopy = identifier;
  selfCopy = self;
  sub_100093C54(0, 0, v9, &unk_1001AC9A8, v14);
}

- (void)createAccountKeySigningKeyForAccountKeyIdentifier:(NSString *)identifier completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC978;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC980;
  v14[5] = v13;
  identifierCopy = identifier;
  selfCopy = self;
  sub_100093C54(0, 0, v9, &unk_1001AC988, v14);
}

- (void)retrieveAccountKeySigningKeyForAccountKeyIdentifier:(NSString *)identifier completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC958;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC960;
  v14[5] = v13;
  identifierCopy = identifier;
  selfCopy = self;
  sub_100093C54(0, 0, v9, &unk_1001AC968, v14);
}

- (void)generateAccountKeyAuthorizationForCredential:(NSString *)credential accountKeyIdentifier:(NSString *)identifier completion:(id)completion
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = credential;
  v13[3] = identifier;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC938;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001AC940;
  v16[5] = v15;
  credentialCopy = credential;
  identifierCopy = identifier;
  selfCopy = self;
  sub_100093C54(0, 0, v11, &unk_1001AC948, v16);
}

- (void)generateDeviceEncryptionKeyForCredential:(NSString *)credential keyType:(unint64_t)type completion:(id)completion
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = credential;
  v13[3] = type;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC918;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001AC920;
  v16[5] = v15;
  credentialCopy = credential;
  selfCopy = self;
  sub_100093C54(0, 0, v11, &unk_1001AC928, v16);
}

- (void)generatePresentmentKeyForCredential:(NSString *)credential completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = credential;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC8F8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC900;
  v14[5] = v13;
  credentialCopy = credential;
  selfCopy = self;
  sub_100093C54(0, 0, v9, &unk_1001AC908, v14);
}

- (void)generatePresentmentKeysForCredential:(NSString *)credential numKeys:(int64_t)keys completion:(id)completion
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = credential;
  v13[3] = keys;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC8D8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001AC8E0;
  v16[5] = v15;
  credentialCopy = credential;
  selfCopy = self;
  sub_100093C54(0, 0, v11, &unk_1001AC8E8, v16);
}

- (void)authorizeDeviceKeySigningKeyOfCredential:(NSString *)credential accountKeyIdentifier:(NSString *)identifier completion:(id)completion
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = credential;
  v13[3] = identifier;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC8B8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001AC8C0;
  v16[5] = v15;
  credentialCopy = credential;
  identifierCopy = identifier;
  selfCopy = self;
  sub_100093C54(0, 0, v11, &unk_1001AC8C8, v16);
}

- (void)authorizeRemoteKeySigningKeyWithCredential:(NSString *)credential remoteKey:(NSData *)key completion:(id)completion
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = credential;
  v13[3] = key;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC898;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001AC8A0;
  v16[5] = v15;
  credentialCopy = credential;
  keyCopy = key;
  selfCopy = self;
  sub_100093C54(0, 0, v11, &unk_1001AC8A8, v16);
}

- (void)associateExternalPresentmentKeyWithCredential:(NSString *)credential publicKeyIdentifier:(NSData *)identifier completion:(id)completion
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = credential;
  v13[3] = identifier;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC878;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001AC880;
  v16[5] = v15;
  credentialCopy = credential;
  identifierCopy = identifier;
  selfCopy = self;
  sub_100093C54(0, 0, v11, &unk_1001AC888, v16);
}

- (void)credentialIdentifiersForPublicKeyIdentifier:(NSData *)identifier completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC858;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC860;
  v14[5] = v13;
  identifierCopy = identifier;
  selfCopy = self;
  sub_100093C54(0, 0, v9, &unk_1001AC868, v14);
}

- (void)replacePayloadOfCredential:(NSString *)credential withPayload:(NSData *)payload format:(unint64_t)format completion:(id)completion
{
  v11 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = credential;
  v15[3] = payload;
  v15[4] = format;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001AC838;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1001AC840;
  v18[5] = v17;
  credentialCopy = credential;
  payloadCopy = payload;
  selfCopy = self;
  sub_100093C54(0, 0, v13, &unk_1001AC848, v18);
}

- (void)credentialIdentifiersInPartitions:(NSArray *)partitions completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = partitions;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC818;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC820;
  v14[5] = v13;
  partitionsCopy = partitions;
  selfCopy = self;
  sub_100093C54(0, 0, v9, &unk_1001AC828, v14);
}

- (void)credentialIdentifiersInPartitions:(NSArray *)partitions docType:(NSString *)type completion:(id)completion
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = partitions;
  v13[3] = type;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC7F8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001AC800;
  v16[5] = v15;
  partitionsCopy = partitions;
  typeCopy = type;
  selfCopy = self;
  sub_100093C54(0, 0, v11, &unk_1001AC808, v16);
}

- (void)activeRegionsInPartitions:(NSArray *)partitions docTypes:(NSSet *)types completion:(id)completion
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = partitions;
  v13[3] = types;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC7D0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001AC7D8;
  v16[5] = v15;
  partitionsCopy = partitions;
  typesCopy = types;
  selfCopy = self;
  sub_100093C54(0, 0, v11, &unk_1001AC7E0, v16);
}

- (void)deleteCredential:(NSString *)credential completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = credential;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC7B0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC7B8;
  v14[5] = v13;
  credentialCopy = credential;
  selfCopy = self;
  sub_100093C54(0, 0, v9, &unk_1001AC7C0, v14);
}

- (void)propertiesOfCredential:(NSString *)credential completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = credential;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC790;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC3D0;
  v14[5] = v13;
  credentialCopy = credential;
  selfCopy = self;
  sub_100093C54(0, 0, v9, &unk_1001AC7A0, v14);
}

- (void)setStateOfCredential:(NSString *)credential to:(unint64_t)to completion:(id)completion
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = credential;
  v13[3] = to;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC770;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001AC3B0;
  v16[5] = v15;
  credentialCopy = credential;
  selfCopy = self;
  sub_100093C54(0, 0, v11, &unk_1001AC780, v16);
}

- (void)payloadAuthACLForCredential:(NSString *)credential completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = credential;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC750;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC390;
  v14[5] = v13;
  credentialCopy = credential;
  selfCopy = self;
  sub_100093C54(0, 0, v9, &unk_1001AC760, v14);
}

- (void)elementsOfCredential:(NSString *)credential elementIdentifiers:(NSDictionary *)identifiers authData:(NSData *)data completion:(id)completion
{
  v11 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = credential;
  v15[3] = identifiers;
  v15[4] = data;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001AC738;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1001AC370;
  v18[5] = v17;
  credentialCopy = credential;
  identifiersCopy = identifiers;
  dataCopy = data;
  selfCopy = self;
  sub_100093C54(0, 0, v13, &unk_1001AC378, v18);
}

- (void)checkCompletenessOfCredential:(NSString *)credential completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = credential;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC728;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC350;
  v14[5] = v13;
  credentialCopy = credential;
  selfCopy = self;
  sub_100093C54(0, 0, v9, &unk_1001AC358, v14);
}

- (void)payloadsOfCredential:(NSString *)credential completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = credential;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC718;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC330;
  v14[5] = v13;
  credentialCopy = credential;
  selfCopy = self;
  sub_100093C54(0, 0, v9, &unk_1001AC338, v14);
}

- (void)deleteAccountKeySigningKeyForAccountKeyIdentifier:(NSString *)identifier completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC708;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC310;
  v14[5] = v13;
  identifierCopy = identifier;
  selfCopy = self;
  sub_100093C54(0, 0, v9, &unk_1001AC318, v14);
}

- (void)allElementsOfCredential:(NSString *)credential authData:(NSData *)data completion:(id)completion
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = credential;
  v13[3] = data;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC6E0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001AC2F0;
  v16[5] = v15;
  credentialCopy = credential;
  dataCopy = data;
  selfCopy = self;
  sub_100093C54(0, 0, v11, &unk_1001AC6F0, v16);
}

- (void)occupiedLegacySEKeySlotsWithCompletion:(id)completion
{
  v5 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1001AC6C0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001AC2D0;
  v12[5] = v11;
  selfCopy = self;
  sub_100093C54(0, 0, v7, &unk_1001AC6D0, v12);
}

- (void)eraseLegacySEKeySlot:(int64_t)slot completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = slot;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC6A0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC2B0;
  v14[5] = v13;
  selfCopy = self;
  sub_100093C54(0, 0, v9, &unk_1001AC6B0, v14);
}

- (void)clearPresentmentKeyUsageForCredential:(NSString *)credential completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = credential;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC680;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC290;
  v14[5] = v13;
  credentialCopy = credential;
  selfCopy = self;
  sub_100093C54(0, 0, v9, &unk_1001AC690, v14);
}

- (void)keyInfoForCredential:(NSString *)credential completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = credential;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC660;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC270;
  v14[5] = v13;
  credentialCopy = credential;
  selfCopy = self;
  sub_100093C54(0, 0, v9, &unk_1001AC670, v14);
}

- (void)storePIITokenInSyncableKeyStoreForIdentifier:(NSString *)identifier data:(NSData *)data credentialIdentifier:(NSString *)credentialIdentifier completion:(id)completion
{
  v11 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = identifier;
  v15[3] = data;
  v15[4] = credentialIdentifier;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001AC640;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1001AC250;
  v18[5] = v17;
  identifierCopy = identifier;
  dataCopy = data;
  credentialIdentifierCopy = credentialIdentifier;
  selfCopy = self;
  sub_100093C54(0, 0, v13, &unk_1001AC650, v18);
}

- (void)retrievePIITokenFromSyncableKeyStoreForIdentifier:(NSString *)identifier completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC620;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC230;
  v14[5] = v13;
  identifierCopy = identifier;
  selfCopy = self;
  sub_100093C54(0, 0, v9, &unk_1001AC630, v14);
}

- (void)deletePIITokenFromSyncableKeyStoreForIdentifier:(NSString *)identifier credentialIdentifier:(NSString *)credentialIdentifier completion:(id)completion
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = identifier;
  v13[3] = credentialIdentifier;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC600;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001AC210;
  v16[5] = v15;
  identifierCopy = identifier;
  credentialIdentifierCopy = credentialIdentifier;
  selfCopy = self;
  sub_100093C54(0, 0, v11, &unk_1001AC610, v16);
}

- (void)updatePIITokenInSyncableKeyStoreForIdentifier:(NSString *)identifier attributesToUpdate:(NSDictionary *)update credentialIdentifier:(NSString *)credentialIdentifier completion:(id)completion
{
  v11 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = identifier;
  v15[3] = update;
  v15[4] = credentialIdentifier;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001AC5E0;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1001AC1F0;
  v18[5] = v17;
  identifierCopy = identifier;
  updateCopy = update;
  credentialIdentifierCopy = credentialIdentifier;
  selfCopy = self;
  sub_100093C54(0, 0, v13, &unk_1001AC5F0, v18);
}

- (void)isPIITokenAvailableForIdentifier:(NSString *)identifier completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC5C0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC1D0;
  v14[5] = v13;
  identifierCopy = identifier;
  selfCopy = self;
  sub_100093C54(0, 0, v9, &unk_1001AC5D0, v14);
}

- (void)storePIIHashInSyncableKeyStoreForIdentifier:(NSString *)identifier data:(NSData *)data keystoreType:(unint64_t)type completion:(id)completion
{
  v11 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = identifier;
  v15[3] = data;
  v15[4] = type;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001AC5A0;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1001AC1B0;
  v18[5] = v17;
  identifierCopy = identifier;
  dataCopy = data;
  selfCopy = self;
  sub_100093C54(0, 0, v13, &unk_1001AC5B0, v18);
}

- (void)retrievePIIHashFromSyncableKeyStoreForIdentifier:(NSString *)identifier keystoreType:(unint64_t)type completion:(id)completion
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = identifier;
  v13[3] = type;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC580;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001AC190;
  v16[5] = v15;
  identifierCopy = identifier;
  selfCopy = self;
  sub_100093C54(0, 0, v11, &unk_1001AC590, v16);
}

- (void)deletePIIHashFromSyncableKeyStoreForIdentifier:(NSString *)identifier keystoreType:(unint64_t)type completion:(id)completion
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = identifier;
  v13[3] = type;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC560;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001AC130;
  v16[5] = v15;
  identifierCopy = identifier;
  selfCopy = self;
  sub_100093C54(0, 0, v11, &unk_1001AC570, v16);
}

- (_TtC7idcredd27CredentialStoreSessionProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end