@interface BiometricStoreSessionProxy
- (_TtC7idcredd26BiometricStoreSessionProxy)init;
- (void)bioBindingUnboundACL:(id)l;
- (void)boundAppletPresentmentACL:(id)l;
- (void)clearProgenitorKeyDesignationsWithCompletion:(id)completion;
- (void)credentialAuthenticationTokenStatus:(id)status;
- (void)deleteGlobalAuthACLWithCompletion:(id)completion;
- (void)establishPrearmTrustV2:(DCCredentialTrust *)v2 completion:(id)completion;
- (void)generatePhoneTokenWithNonce:(DCCredentialNonce *)nonce keyBlob:(NSData *)blob pairingID:(NSString *)d completion:(id)completion;
- (void)generatePrearmTrustCertificateFromKeyBlob:(NSData *)blob nonce:(NSData *)nonce pairingID:(NSString *)d completion:(id)completion;
- (void)generatePrearmTrustCertificateWithNonce:(NSData *)nonce pairingID:(NSString *)d completion:(id)completion;
- (void)getCASDCertificate:(id)certificate;
- (void)getGlobalProgenitorKeyAttestation:(id)attestation;
- (void)getGlobalThirdPartyProgenitorKeyAttestation:(id)attestation;
- (void)globalAuthACLTemplateUUIDsWithCompletion:(id)completion;
- (void)globalAuthACLWithCompletion:(id)completion;
- (void)migratePrearmTrustBlob:(NSData *)blob completion:(id)completion;
- (void)nonceForAuthorizationTokenWithCompletion:(id)completion;
- (void)passcodeBindingUnboundACL:(id)l;
- (void)prearmCredentialWithAuthorizationToken:(DCCredentialAuthorizationToken *)token completion:(id)completion;
- (void)refreshProgenitorKeyDesignationsWithSessionHandoffToken:(NSData *)token onlyIfNeeded:(BOOL)needed completion:(id)completion;
- (void)revokeCredentialAuthorizationToken:(id)token;
- (void)setGlobalAuthACL:(NSData *)l ofType:(unint64_t)type completion:(id)completion;
- (void)setModifiedGlobalAuthACL:(NSData *)l externalizedLAContext:(NSData *)context completion:(id)completion;
@end

@implementation BiometricStoreSessionProxy

- (void)bioBindingUnboundACL:(id)l
{
  v5 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(l);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1001AC3C8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001AC3D0;
  v12[5] = v11;
  selfCopy = self;
  sub_100093C54(0, 0, v7, &unk_1001AC7A0, v12);
}

- (void)passcodeBindingUnboundACL:(id)l
{
  v5 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(l);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1001AC3A8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001AC3B0;
  v12[5] = v11;
  selfCopy = self;
  sub_100093C54(0, 0, v7, &unk_1001AC780, v12);
}

- (void)setGlobalAuthACL:(NSData *)l ofType:(unint64_t)type completion:(id)completion
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = l;
  v13[3] = type;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC388;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001AC390;
  v16[5] = v15;
  lCopy = l;
  selfCopy = self;
  sub_100093C54(0, 0, v11, &unk_1001AC760, v16);
}

- (void)setModifiedGlobalAuthACL:(NSData *)l externalizedLAContext:(NSData *)context completion:(id)completion
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = l;
  v13[3] = context;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC368;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001AC370;
  v16[5] = v15;
  lCopy = l;
  contextCopy = context;
  selfCopy = self;
  sub_100093C54(0, 0, v11, &unk_1001AC378, v16);
}

- (void)globalAuthACLWithCompletion:(id)completion
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
  v11[4] = &unk_1001AC348;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001AC350;
  v12[5] = v11;
  selfCopy = self;
  sub_100093C54(0, 0, v7, &unk_1001AC358, v12);
}

- (void)deleteGlobalAuthACLWithCompletion:(id)completion
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
  v11[4] = &unk_1001AC328;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001AC330;
  v12[5] = v11;
  selfCopy = self;
  sub_100093C54(0, 0, v7, &unk_1001AC338, v12);
}

- (void)globalAuthACLTemplateUUIDsWithCompletion:(id)completion
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
  v11[4] = &unk_1001AC308;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001AC310;
  v12[5] = v11;
  selfCopy = self;
  sub_100093C54(0, 0, v7, &unk_1001AC318, v12);
}

- (void)generatePrearmTrustCertificateWithNonce:(NSData *)nonce pairingID:(NSString *)d completion:(id)completion
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = nonce;
  v13[3] = d;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC2E8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001AC2F0;
  v16[5] = v15;
  nonceCopy = nonce;
  dCopy = d;
  selfCopy = self;
  sub_100093C54(0, 0, v11, &unk_1001AC6F0, v16);
}

- (void)generatePrearmTrustCertificateFromKeyBlob:(NSData *)blob nonce:(NSData *)nonce pairingID:(NSString *)d completion:(id)completion
{
  v11 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = blob;
  v15[3] = nonce;
  v15[4] = d;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001AC2C8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1001AC2D0;
  v18[5] = v17;
  blobCopy = blob;
  nonceCopy = nonce;
  dCopy = d;
  selfCopy = self;
  sub_100093C54(0, 0, v13, &unk_1001AC6D0, v18);
}

- (void)migratePrearmTrustBlob:(NSData *)blob completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = blob;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC2A8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC2B0;
  v14[5] = v13;
  blobCopy = blob;
  selfCopy = self;
  sub_100093C54(0, 0, v9, &unk_1001AC6B0, v14);
}

- (void)generatePhoneTokenWithNonce:(DCCredentialNonce *)nonce keyBlob:(NSData *)blob pairingID:(NSString *)d completion:(id)completion
{
  v11 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = nonce;
  v15[3] = blob;
  v15[4] = d;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001AC288;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1001AC290;
  v18[5] = v17;
  nonceCopy = nonce;
  blobCopy = blob;
  dCopy = d;
  selfCopy = self;
  sub_100093C54(0, 0, v13, &unk_1001AC690, v18);
}

- (void)establishPrearmTrustV2:(DCCredentialTrust *)v2 completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = v2;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC268;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC270;
  v14[5] = v13;
  v2Copy = v2;
  selfCopy = self;
  sub_100093C54(0, 0, v9, &unk_1001AC670, v14);
}

- (void)nonceForAuthorizationTokenWithCompletion:(id)completion
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
  v11[4] = &unk_1001AC248;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001AC250;
  v12[5] = v11;
  selfCopy = self;
  sub_100093C54(0, 0, v7, &unk_1001AC650, v12);
}

- (void)revokeCredentialAuthorizationToken:(id)token
{
  v5 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(token);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1001AC228;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001AC230;
  v12[5] = v11;
  selfCopy = self;
  sub_100093C54(0, 0, v7, &unk_1001AC630, v12);
}

- (void)prearmCredentialWithAuthorizationToken:(DCCredentialAuthorizationToken *)token completion:(id)completion
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = token;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001AC208;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC210;
  v14[5] = v13;
  tokenCopy = token;
  selfCopy = self;
  sub_100093C54(0, 0, v9, &unk_1001AC610, v14);
}

- (void)credentialAuthenticationTokenStatus:(id)status
{
  v5 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(status);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1001AC1E8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001AC1F0;
  v12[5] = v11;
  selfCopy = self;
  sub_100093C54(0, 0, v7, &unk_1001AC5F0, v12);
}

- (void)getCASDCertificate:(id)certificate
{
  v5 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(certificate);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1001AC1C8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001AC1D0;
  v12[5] = v11;
  selfCopy = self;
  sub_100093C54(0, 0, v7, &unk_1001AC5D0, v12);
}

- (void)getGlobalProgenitorKeyAttestation:(id)attestation
{
  v5 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(attestation);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1001AC1A8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001AC1B0;
  v12[5] = v11;
  selfCopy = self;
  sub_100093C54(0, 0, v7, &unk_1001AC5B0, v12);
}

- (void)getGlobalThirdPartyProgenitorKeyAttestation:(id)attestation
{
  v5 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(attestation);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1001AC188;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001AC190;
  v12[5] = v11;
  selfCopy = self;
  sub_100093C54(0, 0, v7, &unk_1001AC590, v12);
}

- (void)boundAppletPresentmentACL:(id)l
{
  v5 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(l);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1001AC168;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001AC170;
  v12[5] = v11;
  selfCopy = self;
  sub_100093C54(0, 0, v7, &unk_1001AC178, v12);
}

- (void)refreshProgenitorKeyDesignationsWithSessionHandoffToken:(NSData *)token onlyIfNeeded:(BOOL)needed completion:(id)completion
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  *(v13 + 16) = token;
  *(v13 + 24) = needed;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001AC148;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001AC150;
  v16[5] = v15;
  tokenCopy = token;
  selfCopy = self;
  sub_100093C54(0, 0, v11, &unk_1001AC158, v16);
}

- (void)clearProgenitorKeyDesignationsWithCompletion:(id)completion
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
  v11[4] = &unk_1001AC128;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001AC130;
  v12[5] = v11;
  selfCopy = self;
  sub_100093C54(0, 0, v7, &unk_1001AC570, v12);
}

- (_TtC7idcredd26BiometricStoreSessionProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end