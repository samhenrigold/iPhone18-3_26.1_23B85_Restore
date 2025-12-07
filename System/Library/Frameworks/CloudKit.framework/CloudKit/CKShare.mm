@interface CKShare
+ (void)initialize;
- (BOOL)_participantArray:(id)array containsEquivalentWithPermissionsParticipant:(id)participant;
- (BOOL)_participantArray:(id)array isEquivalentToArray:(id)toArray;
- (BOOL)accessRequestsEnabled;
- (BOOL)allNonOwnerParticipantsHavePermission:(int64_t)permission;
- (BOOL)allNonOwnerParticipantsHaveRole:(int64_t)role;
- (BOOL)hasModifiedEncryptedData;
- (BOOL)hasModifiedPropertiesRequiringEncryption;
- (BOOL)hasPropertiesRequiringDecryption;
- (BOOL)hasPropertiesRequiringEncryption;
- (BOOL)isCurrentUserOwnerOrAdmin;
- (BOOL)isZoneWideShare;
- (CKShare)init;
- (CKShare)initWithCoder:(NSCoder *)aDecoder;
- (CKShare)initWithRecordType:(CKRecordType)recordType;
- (CKShare)initWithRecordType:(CKRecordType)recordType recordID:(CKRecordID *)recordID;
- (CKShare)initWithRecordType:(CKRecordType)recordType zoneID:(CKRecordZoneID *)zoneID;
- (CKShare)initWithRecordZoneID:(CKRecordZoneID *)recordZoneID;
- (CKShare)initWithRootRecord:(CKRecord *)rootRecord;
- (CKShare)initWithRootRecord:(CKRecord *)rootRecord shareID:(CKRecordID *)shareID;
- (CKShareParticipant)currentUserParticipant;
- (CKShareParticipant)owner;
- (CKShareParticipantPermission)publicPermission;
- (NSArray)approvedRequesters;
- (NSArray)blockedIdentities;
- (NSArray)invitedKeysToRemove;
- (NSArray)participants;
- (NSArray)requesters;
- (NSData)publicSharingIdentity;
- (NSMutableDictionary)oneTimeURLMetadatasByParticipantID;
- (id)_copyWithoutPersonalInfoAndSerializeOwnerInfo:(BOOL)info;
- (id)_existingRequestersForUserIdentities:(id)identities;
- (id)_knownParticipantEqualToParticipant:(id)participant;
- (id)_knownParticipantEqualToParticipant:(id)participant inParticipants:(id)participants;
- (id)_knownParticipantWithParticipantID:(id)d;
- (id)addedParticipants;
- (id)allParticipants;
- (id)copyWithOriginalValues;
- (id)copyWithZone:(_NSZone *)zone userFields:(BOOL)fields;
- (id)initInternalWithShareRecordID:(id)d;
- (id)lookupInfosFromRequesters:(id)requesters;
- (id)oneTimeURLForParticipantID:(id)d;
- (id)removedParticipants;
- (id)updateFromServerShare:(id)share;
- (int64_t)_indexForIdentity:(id)identity matchingAnyInCollection:(id)collection;
- (int64_t)participantSelfRemovalBehavior;
- (int64_t)participantVisibility;
- (void)CKAssignToContainerWithID:(id)d;
- (void)CKDescribePropertiesUsing:(id)using;
- (void)_addOwnerParticipant;
- (void)_addParticipantBypassingChecks:(id)checks;
- (void)_addParticipantEmails:(id)emails phoneNumbers:(id)numbers asReadWrite:(BOOL)write inContainer:(id)container completionHandler:(id)handler;
- (void)_commonCKShareInit;
- (void)_removeAllNonOneTimeLinkParticipants;
- (void)_removeNonOneTimeLinkPendingPrivateAndAdminParticipants;
- (void)_removeParticipantBypassingChecks:(id)checks;
- (void)_setAccessRequestsEnabledNoSideEffects:(BOOL)effects;
- (void)_setPublicPermissionNoSideEffects:(int64_t)effects;
- (void)_stripPersonalInfoAndSerializeOwnerInfo:(BOOL)info;
- (void)_unblockIdentitiesReferencedByParticipant:(id)participant;
- (void)addParticipant:(CKShareParticipant *)participant;
- (void)approveRequesters:(id)requesters inContainer:(id)container withPermission:(int64_t)permission asRole:(int64_t)role operationGroup:(id)group completionHandler:(id)handler;
- (void)blockRequesters:(id)requesters;
- (void)blockUserIdentities:(id)identities;
- (void)blockUserIdentityLookupInfos:(id)infos;
- (void)clearModifiedParticipants;
- (void)denyRequesters:(id)requesters;
- (void)encodeSystemFieldsWithCoder:(id)coder;
- (void)registerFetchedParticipant:(id)participant;
- (void)removeParticipant:(CKShareParticipant *)participant;
- (void)resetFetchedParticipants;
- (void)setAccessRequestsEnabled:(BOOL)enabled;
- (void)setAllParticipants:(id)participants;
- (void)setApprovedRequesters:(id)requesters;
- (void)setBlockedIdentities:(id)identities;
- (void)setInvitedKeysToRemove:(id)remove;
- (void)setOneTimeURLMetadatasByParticipantID:(id)d;
- (void)setParticipantSelfRemovalBehavior:(int64_t)behavior;
- (void)setParticipantVisibility:(int64_t)visibility;
- (void)setPublicPermission:(CKShareParticipantPermission)publicPermission;
- (void)setPublicSharingIdentity:(id)identity;
- (void)setRequesters:(id)requesters;
- (void)setWantsPublicSharingKey:(BOOL)key;
- (void)unblockIdentities:(id)identities;
- (void)updateWithSavedRecordXPCMetadata:(id)metadata shouldOnlySaveAssetContent:(BOOL)content;
@end

@implementation CKShare

+ (void)initialize
{
  v3 = objc_opt_class();

  sub_1886CEE50(self, v3, 0, &unk_1EFA85B00, 0);
}

- (CKShare)initWithRootRecord:(CKRecord *)rootRecord
{
  v4 = rootRecord;
  v5 = [CKRecordID alloc];
  v6 = CKCreateGUID();
  v8 = objc_msgSend_stringByAppendingString_(@"Share-", v7, v6);
  v11 = objc_msgSend_recordID(v4, v9, v10);
  v14 = objc_msgSend_zoneID(v11, v12, v13);
  v16 = objc_msgSend_initWithRecordName_zoneID_(v5, v15, v8, v14);

  v18 = objc_msgSend_initWithRootRecord_shareID_(self, v17, v4, v16);
  return v18;
}

- (CKShare)initWithRootRecord:(CKRecord *)rootRecord shareID:(CKRecordID *)shareID
{
  v6 = rootRecord;
  v7 = shareID;
  v26.receiver = self;
  v26.super_class = CKShare;
  v8 = [(CKRecord *)&v26 initWithRecordType:@"cloudkit.share" recordID:v7];
  v11 = v8;
  if (v8)
  {
    objc_msgSend__commonCKShareInit(v8, v9, v10);
    objc_msgSend__addOwnerParticipant(v11, v12, v13);
    if (v6)
    {
      v14 = [CKReference alloc];
      v16 = objc_msgSend_initWithRecordID_action_(v14, v15, v7, 0);
      objc_msgSend_setShare_(v6, v17, v16);

      v20 = objc_msgSend_recordID(v6, v18, v19);
      v23 = objc_msgSend_copy(v20, v21, v22);
      rootRecordID = v11->_rootRecordID;
      v11->_rootRecordID = v23;
    }
  }

  return v11;
}

- (CKShare)initWithRecordZoneID:(CKRecordZoneID *)recordZoneID
{
  v4 = recordZoneID;
  v5 = [CKRecordID alloc];
  v7 = objc_msgSend_initWithRecordName_zoneID_(v5, v6, @"cloudkit.zoneshare", v4);

  v15.receiver = self;
  v15.super_class = CKShare;
  v8 = [(CKRecord *)&v15 initWithRecordType:@"cloudkit.share" recordID:v7];
  v11 = v8;
  if (v8)
  {
    objc_msgSend__commonCKShareInit(v8, v9, v10);
    objc_msgSend__addOwnerParticipant(v11, v12, v13);
  }

  return v11;
}

- (id)initInternalWithShareRecordID:(id)d
{
  v8.receiver = self;
  v8.super_class = CKShare;
  v3 = [(CKRecord *)&v8 initWithRecordType:@"cloudkit.share" recordID:d];
  v6 = v3;
  if (v3)
  {
    objc_msgSend__commonCKShareInit(v3, v4, v5);
  }

  return v6;
}

- (CKShare)init
{
  v2 = [CKException alloc];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = objc_msgSend_initWithCode_format_(v2, v5, 12, @"You must call [%@ initWithRootRecord:shareID:]", v4);
  v7 = v6;

  objc_exception_throw(v6);
}

- (CKShare)initWithRecordType:(CKRecordType)recordType
{
  v3 = recordType;
  v4 = [CKException alloc];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8 = objc_msgSend_initWithCode_format_(v4, v7, 12, @"You must call [%@ initWithRootRecord:shareID:]", v6);
  v9 = v8;

  objc_exception_throw(v8);
}

- (CKShare)initWithRecordType:(CKRecordType)recordType recordID:(CKRecordID *)recordID
{
  v5 = recordType;
  v6 = recordID;
  v7 = [CKException alloc];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v11 = objc_msgSend_initWithCode_format_(v7, v10, 12, @"You must call [%@ initWithRootRecord:shareID:]", v9);
  v12 = v11;

  objc_exception_throw(v11);
}

- (CKShare)initWithRecordType:(CKRecordType)recordType zoneID:(CKRecordZoneID *)zoneID
{
  v5 = recordType;
  v6 = zoneID;
  v7 = [CKException alloc];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v11 = objc_msgSend_initWithCode_format_(v7, v10, 12, @"You must call [%@ initWithRootRecord:shareID:]", v9);
  v12 = v11;

  objc_exception_throw(v11);
}

- (void)_addOwnerParticipant
{
  v3 = [CKUserIdentity alloc];
  v4 = [CKRecordID alloc];
  v6 = objc_msgSend_initWithRecordName_(v4, v5, @"__defaultOwner__");
  v16 = objc_msgSend_initWithUserRecordID_(v3, v7, v6);

  v8 = [CKShareParticipant alloc];
  inited = objc_msgSend_initInternalWithUserIdentity_(v8, v9, v16);
  objc_msgSend_setRole_(inited, v11, 1);
  objc_msgSend_setPermission_(inited, v12, 3);
  objc_msgSend_setIsCurrentUser_(inited, v13, 1);
  objc_msgSend_setAcceptanceStatus_(inited, v14, 2);
  objc_msgSend__addParticipantBypassingChecks_(self, v15, inited);
}

- (void)_commonCKShareInit
{
  self->_publicPermission = 1;
  v3 = objc_opt_new();
  mutableAllParticipants = self->_mutableAllParticipants;
  self->_mutableAllParticipants = v3;

  v5 = objc_opt_new();
  mutableRequesters = self->_mutableRequesters;
  self->_mutableRequesters = v5;

  v7 = objc_opt_new();
  mutableApprovedRequesters = self->_mutableApprovedRequesters;
  self->_mutableApprovedRequesters = v7;

  v9 = objc_opt_new();
  mutableBlockedIdentities = self->_mutableBlockedIdentities;
  self->_mutableBlockedIdentities = v9;

  self->_accessRequestsEnabled = 0;
  v11 = objc_opt_new();
  lastFetchedParticipants = self->_lastFetchedParticipants;
  self->_lastFetchedParticipants = v11;

  v13 = objc_opt_new();
  addedParticipantIDs = self->_addedParticipantIDs;
  self->_addedParticipantIDs = v13;

  v15 = objc_opt_new();
  removedParticipantIDs = self->_removedParticipantIDs;
  self->_removedParticipantIDs = v15;

  self->_participantVisibility = 0;
  self->_participantSelfRemovalBehavior = 0;
}

- (void)_removeNonOneTimeLinkPendingPrivateAndAdminParticipants
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = objc_msgSend_participants(self, a2, v2, 0);
  v7 = objc_msgSend_copy(v4, v5, v6);

  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v16, v20, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v16 + 1) + 8 * i);
        if ((objc_msgSend_role(v15, v10, v11) == 3 || objc_msgSend_role(v15, v10, v11) == 2) && (objc_msgSend_usesOneTimeURL(v15, v10, v11) & 1) == 0 && objc_msgSend_acceptanceStatus(v15, v10, v11) == 1 && (objc_msgSend_isCurrentUser(v15, v10, v11) & 1) == 0)
        {
          objc_msgSend__removeParticipantBypassingChecks_(self, v10, v15);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v16, v20, 16);
    }

    while (v12);
  }
}

- (void)_removeAllNonOneTimeLinkParticipants
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = objc_msgSend_participants(self, a2, v2, 0);
  v7 = objc_msgSend_copy(v4, v5, v6);

  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v16, v20, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v16 + 1) + 8 * i);
        if ((objc_msgSend_role(v15, v10, v11) == 3 || objc_msgSend_role(v15, v10, v11) == 4 || objc_msgSend_role(v15, v10, v11) == 2) && (objc_msgSend_usesOneTimeURL(v15, v10, v11) & 1) == 0 && (objc_msgSend_isCurrentUser(v15, v10, v11) & 1) == 0)
        {
          objc_msgSend__removeParticipantBypassingChecks_(self, v10, v15);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v16, v20, 16);
    }

    while (v12);
  }
}

- (CKShareParticipantPermission)publicPermission
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  publicPermission = selfCopy->_publicPermission;
  objc_sync_exit(selfCopy);

  return publicPermission;
}

- (BOOL)isCurrentUserOwnerOrAdmin
{
  v3 = objc_msgSend_currentUserParticipant(self, a2, v2);
  v6 = v3;
  if (v3)
  {
    v9 = objc_msgSend_role(v3, v4, v5) == 1 || objc_msgSend_role(v6, v7, v8) == 2;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setPublicPermission:(CKShareParticipantPermission)publicPermission
{
  obj = self;
  objc_sync_enter(obj);
  v9 = objc_msgSend_currentUserParticipant(obj, v5, v6);
  if (v9 && (objc_msgSend_isCurrentUserOwnerOrAdmin(obj, v7, v8) & 1) == 0)
  {
    v13 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v14, a2, obj, @"CKShare.m", 254, @"Only owners and admins may set the public permission of a share");
  }

  if ((publicPermission - 2) < 2)
  {
    objc_msgSend__removeNonOneTimeLinkPendingPrivateAndAdminParticipants(obj, v7, v8);
  }

  else if (publicPermission == CKShareParticipantPermissionNone)
  {
    if ((obj->_publicPermission & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      objc_msgSend__removeAllNonOneTimeLinkParticipants(obj, v7, v8);
    }
  }

  else if (publicPermission == CKShareParticipantPermissionUnknown)
  {
    v10 = [CKException alloc];
    v12 = objc_msgSend_initWithCode_format_(v10, v11, 12, @"You can't set a share's publicPermission to CKShareParticipantPermissionUnknown");
    objc_exception_throw(v12);
  }

  objc_msgSend__setPublicPermissionNoSideEffects_(obj, v7, publicPermission);

  objc_sync_exit(obj);
}

- (void)_setPublicPermissionNoSideEffects:(int64_t)effects
{
  obj = self;
  objc_sync_enter(obj);
  obj->_publicPermission = effects;
  objc_sync_exit(obj);
}

- (void)setOneTimeURLMetadatasByParticipantID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_CKDeepCopy(dCopy, v5, v6);
  v10 = objc_msgSend_mutableCopy(v7, v8, v9);
  oneTimeURLMetadatasByParticipantID = selfCopy->_oneTimeURLMetadatasByParticipantID;
  selfCopy->_oneTimeURLMetadatasByParticipantID = v10;

  objc_sync_exit(selfCopy);
}

- (NSMutableDictionary)oneTimeURLMetadatasByParticipantID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_msgSend_CKDeepCopy(selfCopy->_oneTimeURLMetadatasByParticipantID, v3, v4);
  v8 = objc_msgSend_mutableCopy(v5, v6, v7);

  objc_sync_exit(selfCopy);

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone userFields:(BOOL)fields
{
  v166.receiver = self;
  v166.super_class = CKShare;
  v5 = [(CKRecord *)&v166 copyWithZone:zone userFields:fields];
  v8 = objc_msgSend_containerID(self, v6, v7);
  v11 = objc_msgSend_copy(v8, v9, v10);
  v12 = v5[1];
  v5[1] = v11;

  v15 = objc_msgSend_etag(self, v13, v14);
  v18 = objc_msgSend_copy(v15, v16, v17);
  v19 = v5[2];
  v5[2] = v18;

  v22 = objc_msgSend_rootRecordID(self, v20, v21);
  v25 = objc_msgSend_copy(v22, v23, v24);
  v26 = v5[49];
  v5[49] = v25;

  *(v5 + 346) = objc_msgSend_allowsAnonymousPublicAccess(self, v27, v28);
  v5[44] = objc_msgSend_publicPermission(self, v29, v30);
  v5[46] = objc_msgSend_participantVisibility(self, v31, v32);
  v5[47] = objc_msgSend_participantSelfRemovalBehavior(self, v33, v34);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v38 = objc_msgSend_mutableAllParticipants(selfCopy, v36, v37);
  v41 = objc_msgSend_CKDeepCopy(v38, v39, v40);
  v44 = objc_msgSend_mutableCopy(v41, v42, v43);
  v45 = v5[50];
  v5[50] = v44;

  v48 = objc_msgSend_lastFetchedParticipants(selfCopy, v46, v47);
  v51 = objc_msgSend_CKDeepCopy(v48, v49, v50);
  v54 = objc_msgSend_mutableCopy(v51, v52, v53);
  v55 = v5[51];
  v5[51] = v54;

  v58 = objc_msgSend_addedParticipantIDs(selfCopy, v56, v57);
  v61 = objc_msgSend_mutableCopy(v58, v59, v60);
  v62 = v5[52];
  v5[52] = v61;

  v65 = objc_msgSend_removedParticipantIDs(selfCopy, v63, v64);
  v68 = objc_msgSend_mutableCopy(v65, v66, v67);
  v69 = v5[53];
  v5[53] = v68;

  v72 = objc_msgSend_mutableRequesters(selfCopy, v70, v71);
  v75 = objc_msgSend_CKDeepCopy(v72, v73, v74);
  v78 = objc_msgSend_mutableCopy(v75, v76, v77);
  v79 = v5[54];
  v5[54] = v78;

  v82 = objc_msgSend_mutableApprovedRequesters(selfCopy, v80, v81);
  v85 = objc_msgSend_CKDeepCopy(v82, v83, v84);
  v88 = objc_msgSend_mutableCopy(v85, v86, v87);
  v89 = v5[55];
  v5[55] = v88;

  v92 = objc_msgSend_mutableBlockedIdentities(selfCopy, v90, v91);
  v95 = objc_msgSend_CKDeepCopy(v92, v93, v94);
  v98 = objc_msgSend_mutableCopy(v95, v96, v97);
  v99 = v5[56];
  v5[56] = v98;

  objc_sync_exit(selfCopy);
  *(v5 + 344) = objc_msgSend_accessRequestsEnabled(selfCopy, v100, v101);
  v104 = objc_msgSend_invitedKeysToRemove(selfCopy, v102, v103);
  v107 = objc_msgSend_CKDeepCopy(v104, v105, v106);
  v108 = v5[45];
  v5[45] = v107;

  v111 = objc_msgSend_invitedProtectionData(selfCopy, v109, v110);
  v114 = objc_msgSend_copy(v111, v112, v113);
  v115 = v5[57];
  v5[57] = v114;

  v118 = objc_msgSend_invitedProtectionEtag(selfCopy, v116, v117);
  v121 = objc_msgSend_copy(v118, v119, v120);
  v122 = v5[58];
  v5[58] = v121;

  v125 = objc_msgSend_previousInvitedProtectionEtag(selfCopy, v123, v124);
  v128 = objc_msgSend_copy(v125, v126, v127);
  v129 = v5[59];
  v5[59] = v128;

  v132 = objc_msgSend_publicProtectionData(selfCopy, v130, v131);
  v135 = objc_msgSend_copy(v132, v133, v134);
  v136 = v5[60];
  v5[60] = v135;

  v139 = objc_msgSend_publicProtectionEtag(selfCopy, v137, v138);
  v142 = objc_msgSend_copy(v139, v140, v141);
  v143 = v5[61];
  v5[61] = v142;

  v146 = objc_msgSend_previousPublicProtectionEtag(selfCopy, v144, v145);
  v149 = objc_msgSend_copy(v146, v147, v148);
  v150 = v5[62];
  v5[62] = v149;

  *(v5 + 347) = objc_msgSend_serializePersonalInfo(selfCopy, v151, v152);
  *(v5 + 348) = objc_msgSend_serializeOwnerInfo(selfCopy, v153, v154);
  v157 = objc_msgSend_oneTimeURLMetadatasByParticipantID(selfCopy, v155, v156);
  v160 = objc_msgSend_CKDeepCopy(v157, v158, v159);
  v163 = objc_msgSend_mutableCopy(v160, v161, v162);
  v164 = v5[48];
  v5[48] = v163;

  return v5;
}

- (id)copyWithOriginalValues
{
  v56 = *MEMORY[0x1E69E9840];
  v54.receiver = self;
  v54.super_class = CKShare;
  copyWithOriginalValues = [(CKRecord *)&v54 copyWithOriginalValues];
  v5 = objc_msgSend_removedParticipantIDs(copyWithOriginalValues, v3, v4);
  objc_msgSend_removeAllObjects(v5, v6, v7);

  v10 = objc_msgSend_owner(copyWithOriginalValues, v8, v9);
  v13 = objc_msgSend_participantID(v10, v11, v12);

  if (v13)
  {
    v16 = objc_msgSend_addedParticipantIDs(copyWithOriginalValues, v14, v15);
    v49 = objc_msgSend_containsObject_(v16, v17, v13);
  }

  else
  {
    v49 = 0;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v18 = objc_msgSend_mutableAllParticipants(copyWithOriginalValues, v14, v15);
  v21 = objc_msgSend_copy(v18, v19, v20);

  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v50, v55, 16);
  if (v23)
  {
    v26 = v23;
    v27 = *v51;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v51 != v27)
        {
          objc_enumerationMutation(v21);
        }

        v29 = *(*(&v50 + 1) + 8 * i);
        v30 = objc_msgSend_addedParticipantIDs(copyWithOriginalValues, v24, v25);
        v33 = objc_msgSend_participantID(v29, v31, v32);
        if (objc_msgSend_containsObject_(v30, v34, v33))
        {
          v37 = objc_msgSend_role(v29, v35, v36);

          if (v37 == 1)
          {
            continue;
          }

          v30 = objc_msgSend_mutableAllParticipants(copyWithOriginalValues, v24, v25);
          objc_msgSend_removeObject_(v30, v38, v29);
        }

        else
        {
        }
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v50, v55, 16);
    }

    while (v26);
  }

  v41 = objc_msgSend_addedParticipantIDs(copyWithOriginalValues, v39, v40);
  objc_msgSend_removeAllObjects(v41, v42, v43);

  if (v49)
  {
    v46 = objc_msgSend_addedParticipantIDs(copyWithOriginalValues, v44, v45);
    objc_msgSend_addObject_(v46, v47, v13);
  }

  return copyWithOriginalValues;
}

- (void)CKDescribePropertiesUsing:(id)using
{
  usingCopy = using;
  v68.receiver = self;
  v68.super_class = CKShare;
  [(CKRecord *)&v68 CKDescribePropertiesUsing:usingCopy];
  v7 = objc_msgSend_rootRecordID(self, v5, v6);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v8, @"rootRecordID", v7, 0);

  v11 = objc_msgSend_etag(self, v9, v10);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v12, @"etag", v11, 0);

  v15 = objc_msgSend_publicPermission(self, v13, v14);
  v16 = CKStringFromParticipantPermission(v15);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v17, @"publicPermission", v16, 0);

  v20 = objc_msgSend_participantVisibility(self, v18, v19);
  if (v20 > 3)
  {
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v21, @"participantVisibility", @"Unknown", 0);
  }

  else
  {
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v21, @"participantVisibility", off_1E70BE360[v20], 0);
  }

  v24 = objc_msgSend_participantSelfRemovalBehavior(self, v22, v23);
  if (v24 > 3)
  {
    objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v25, @"participantSelfRemovalBehavior", @"Unknown", 0);
  }

  else
  {
    objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v25, @"participantSelfRemovalBehavior", off_1E70BE380[v24], 0);
  }

  if (objc_msgSend_allowsAnonymousPublicAccess(self, v26, v27))
  {
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v28, @"allowsAnonymousPublicAccess", @"true", 0);
  }

  v30 = objc_msgSend_baseToken(self, v28, v29);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v31, @"baseToken", v30, 0);

  v34 = objc_msgSend_routingKey(self, v32, v33);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v35, @"routingKey", v34, 0);

  v38 = objc_msgSend_mutableEncryptedPSK(self, v36, v37);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v39, @"mutableEncryptedPSK", v38, 0);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v43 = objc_msgSend_mutableAllParticipants(selfCopy, v41, v42);
  if (objc_msgSend_count(v43, v44, v45))
  {
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v46, @"participants", v43, 0);
  }

  v48 = objc_msgSend_mutableRequesters(selfCopy, v46, v47);
  if (objc_msgSend_count(v48, v49, v50))
  {
    objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v51, @"requesters", v48, 0);
  }

  v53 = objc_msgSend_mutableApprovedRequesters(selfCopy, v51, v52);
  if (objc_msgSend_count(v53, v54, v55))
  {
    objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v56, @"approvedRequesters", v53, 0);
  }

  v58 = objc_msgSend_mutableBlockedIdentities(selfCopy, v56, v57);
  if (objc_msgSend_count(v58, v59, v60))
  {
    objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v61, @"blockedIdentities", v58, 0);
  }

  if (objc_msgSend_accessRequestsEnabled(selfCopy, v61, v62))
  {
    objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v63, @"accessRequestsEnabled", @"true", 0);
  }

  else
  {
    objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v63, @"accessRequestsEnabled", @"false", 0);
  }

  objc_sync_exit(selfCopy);
  v66 = objc_msgSend_currentUserParticipant(selfCopy, v64, v65);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v67, @"currentParticipant", v66, 0);
}

- (BOOL)hasPropertiesRequiringDecryption
{
  v10.receiver = self;
  v10.super_class = CKShare;
  if ([(CKRecord *)&v10 hasPropertiesRequiringDecryption])
  {
    return 1;
  }

  v6 = objc_msgSend_oneTimeURLMetadatasByParticipantID(self, v3, v4);
  v5 = objc_msgSend_count(v6, v7, v8) != 0;

  return v5;
}

- (BOOL)hasPropertiesRequiringEncryption
{
  v10.receiver = self;
  v10.super_class = CKShare;
  if ([(CKRecord *)&v10 hasPropertiesRequiringEncryption])
  {
    return 1;
  }

  v6 = objc_msgSend_oneTimeURLMetadatasByParticipantID(self, v3, v4);
  v5 = objc_msgSend_count(v6, v7, v8) != 0;

  return v5;
}

- (BOOL)hasModifiedPropertiesRequiringEncryption
{
  v10.receiver = self;
  v10.super_class = CKShare;
  if ([(CKRecord *)&v10 hasModifiedPropertiesRequiringEncryption])
  {
    return 1;
  }

  v6 = objc_msgSend_oneTimeURLMetadatasByParticipantID(self, v3, v4);
  v5 = objc_msgSend_count(v6, v7, v8) != 0;

  return v5;
}

- (BOOL)hasModifiedEncryptedData
{
  v10.receiver = self;
  v10.super_class = CKShare;
  if ([(CKRecord *)&v10 hasModifiedEncryptedData])
  {
    return 1;
  }

  v6 = objc_msgSend_oneTimeURLMetadatasByParticipantID(self, v3, v4);
  v5 = objc_msgSend_count(v6, v7, v8) != 0;

  return v5;
}

- (BOOL)isZoneWideShare
{
  v3 = objc_msgSend_recordID(self, a2, v2);
  v6 = objc_msgSend_recordName(v3, v4, v5);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, @"cloudkit.zoneshare");

  return isEqualToString;
}

- (void)CKAssignToContainerWithID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10.receiver = selfCopy;
  v10.super_class = CKShare;
  [(CKRecord *)&v10 CKAssignToContainerWithID:dCopy];
  v8 = objc_msgSend_mutableAllParticipants(selfCopy, v6, v7);
  objc_msgSend_CKAssignToContainerWithID_(v8, v9, dCopy);

  objc_sync_exit(selfCopy);
}

- (id)allParticipants
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_msgSend_mutableAllParticipants(selfCopy, v3, v4);
  v8 = objc_msgSend_copy(v5, v6, v7);

  objc_sync_exit(selfCopy);

  return v8;
}

- (void)setAllParticipants:(id)participants
{
  participantsCopy = participants;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_mutableCopy(participantsCopy, v5, v6);
  objc_msgSend_setMutableAllParticipants_(selfCopy, v8, v7);

  objc_sync_exit(selfCopy);
}

- (NSArray)participants
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_msgSend_removedParticipantIDs(selfCopy, v3, v4);
  v8 = objc_msgSend_mutableAllParticipants(selfCopy, v6, v7);
  if (objc_msgSend_count(v5, v9, v10))
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_18858F3A8;
    v16[3] = &unk_1E70BE1A0;
    v17 = v5;
    v14 = objc_msgSend_CKFilter_(v8, v13, v16);
  }

  else
  {
    v14 = objc_msgSend_copy(v8, v11, v12);
  }

  objc_sync_exit(selfCopy);

  return v14;
}

- (NSArray)requesters
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_msgSend_copy(selfCopy->_mutableRequesters, v3, v4);
  objc_sync_exit(selfCopy);

  return v5;
}

- (void)setRequesters:(id)requesters
{
  requestersCopy = requesters;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_mutableCopy(requestersCopy, v5, v6);
  mutableRequesters = selfCopy->_mutableRequesters;
  selfCopy->_mutableRequesters = v7;

  objc_sync_exit(selfCopy);
}

- (NSArray)approvedRequesters
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_msgSend_copy(selfCopy->_mutableApprovedRequesters, v3, v4);
  objc_sync_exit(selfCopy);

  return v5;
}

- (void)setApprovedRequesters:(id)requesters
{
  requestersCopy = requesters;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_mutableCopy(requestersCopy, v5, v6);
  mutableApprovedRequesters = selfCopy->_mutableApprovedRequesters;
  selfCopy->_mutableApprovedRequesters = v7;

  objc_sync_exit(selfCopy);
}

- (NSArray)blockedIdentities
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_msgSend_copy(selfCopy->_mutableBlockedIdentities, v3, v4);
  objc_sync_exit(selfCopy);

  return v5;
}

- (void)setBlockedIdentities:(id)identities
{
  identitiesCopy = identities;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_mutableCopy(identitiesCopy, v5, v6);
  mutableBlockedIdentities = selfCopy->_mutableBlockedIdentities;
  selfCopy->_mutableBlockedIdentities = v7;

  objc_sync_exit(selfCopy);
}

- (id)lookupInfosFromRequesters:(id)requesters
{
  v83 = *MEMORY[0x1E69E9840];
  requestersCopy = requesters;
  v6 = objc_msgSend_array(MEMORY[0x1E695DF70], v4, v5);
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v7 = requestersCopy;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v78, v82, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v79;
    do
    {
      v14 = 0;
      do
      {
        if (*v79 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v78 + 1) + 8 * v14);
        v16 = objc_msgSend_userIdentity(v15, v10, v11);
        v19 = objc_msgSend_lookupInfo(v16, v17, v18);
        v22 = objc_msgSend_userRecordID(v19, v20, v21);

        if (v22)
        {
          v25 = [CKUserIdentityLookupInfo alloc];
          v28 = objc_msgSend_userIdentity(v15, v26, v27);
          v31 = objc_msgSend_lookupInfo(v28, v29, v30);
          v34 = objc_msgSend_userRecordID(v31, v32, v33);
          v36 = objc_msgSend_initWithUserRecordID_(v25, v35, v34);
LABEL_12:
          v69 = v36;

          objc_msgSend_addObject_(v6, v70, v69);
          goto LABEL_13;
        }

        v37 = objc_msgSend_userIdentity(v15, v23, v24);
        v40 = objc_msgSend_lookupInfo(v37, v38, v39);
        v43 = objc_msgSend_emailAddress(v40, v41, v42);

        if (v43)
        {
          v46 = [CKUserIdentityLookupInfo alloc];
          v28 = objc_msgSend_userIdentity(v15, v47, v48);
          v31 = objc_msgSend_lookupInfo(v28, v49, v50);
          v34 = objc_msgSend_emailAddress(v31, v51, v52);
          v36 = objc_msgSend_initWithEmailAddress_(v46, v53, v34);
          goto LABEL_12;
        }

        v54 = objc_msgSend_userIdentity(v15, v44, v45);
        v57 = objc_msgSend_lookupInfo(v54, v55, v56);
        v60 = objc_msgSend_phoneNumber(v57, v58, v59);

        if (v60)
        {
          v61 = [CKUserIdentityLookupInfo alloc];
          v28 = objc_msgSend_userIdentity(v15, v62, v63);
          v31 = objc_msgSend_lookupInfo(v28, v64, v65);
          v34 = objc_msgSend_phoneNumber(v31, v66, v67);
          v36 = objc_msgSend_initWithPhoneNumber_(v61, v68, v34);
          goto LABEL_12;
        }

        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v71 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
        {
          v77[0] = 0;
          _os_log_error_impl(&dword_1883EA000, v71, OS_LOG_TYPE_ERROR, "Cannot approve share requester without a user record ID, email address, or phone number.", v77, 2u);
        }

LABEL_13:
        ++v14;
      }

      while (v12 != v14);
      v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v78, v82, 16);
      v12 = v72;
    }

    while (v72);
  }

  v75 = objc_msgSend_copy(v6, v73, v74);

  return v75;
}

- (void)approveRequesters:(id)requesters inContainer:(id)container withPermission:(int64_t)permission asRole:(int64_t)role operationGroup:(id)group completionHandler:(id)handler
{
  requestersCopy = requesters;
  containerCopy = container;
  groupCopy = group;
  handlerCopy = handler;
  v23 = objc_msgSend_currentUserParticipant(self, v19, v20);
  if (v23 && (objc_msgSend_isCurrentUserOwnerOrAdmin(self, v21, v22) & 1) == 0)
  {
    v39 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v21, v22);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v39, v40, a2, self, @"CKShare.m", 575, @"Only owners and admins may approve share requesters");

    if (!requestersCopy)
    {
      goto LABEL_10;
    }
  }

  else if (!requestersCopy)
  {
    goto LABEL_10;
  }

  v24 = objc_msgSend_count(requestersCopy, v21, v22);
  if (containerCopy && v24)
  {
    v26 = objc_msgSend_lookupInfosFromRequesters_(self, v25, requestersCopy);
    v27 = [CKFetchShareParticipantsOperation alloc];
    v41 = v26;
    v29 = objc_msgSend_initWithUserIdentityLookupInfos_(v27, v28, v26);
    v32 = v29;
    if (groupCopy)
    {
      objc_msgSend_setGroup_(v29, v30, groupCopy);
    }

    v33 = objc_msgSend_array(MEMORY[0x1E695DF70], v30, v31);
    objc_initWeak(location, self);
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = sub_18858FD24;
    v47[3] = &unk_1E70BE1C8;
    permissionCopy = permission;
    roleCopy = role;
    v34 = v33;
    v48 = v34;
    objc_msgSend_setPerShareParticipantCompletionBlock_(v32, v35, v47);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = sub_18858FEA8;
    v42[3] = &unk_1E70BE1F0;
    objc_copyWeak(&v46, location);
    v45 = handlerCopy;
    v36 = v34;
    v43 = v36;
    v44 = requestersCopy;
    objc_msgSend_setFetchShareParticipantsCompletionBlock_(v32, v37, v42);
    objc_msgSend_addOperation_(containerCopy, v38, v32);

    objc_destroyWeak(&v46);
    objc_destroyWeak(location);

    goto LABEL_12;
  }

LABEL_10:
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

LABEL_12:
}

- (void)denyRequesters:(id)requesters
{
  requestersCopy = requesters;
  v9 = objc_msgSend_currentUserParticipant(self, v5, v6);
  if (v9 && (objc_msgSend_isCurrentUserOwnerOrAdmin(self, v7, v8) & 1) == 0)
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CKShare.m", 648, @"Only owners and admins may deny share requesters");
  }

  if (requestersCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_msgSend_removeObjectsInArray_(selfCopy->_mutableRequesters, v13, requestersCopy);
    objc_sync_exit(selfCopy);
  }
}

- (void)_unblockIdentitiesReferencedByParticipant:(id)participant
{
  v91 = *MEMORY[0x1E69E9840];
  participantCopy = participant;
  if (participantCopy)
  {
    selfCopy = self;
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_188590688;
    aBlock[3] = &unk_1E70BE218;
    v5 = v4;
    v85 = v5;
    v76 = _Block_copy(aBlock);
    v8 = objc_msgSend_userIdentity(participantCopy, v6, v7);
    v11 = objc_msgSend_userRecordID(v8, v9, v10);
    v14 = objc_msgSend_recordName(v11, v12, v13);
    v76[2](v76, v14);

    v17 = objc_msgSend_userIdentity(participantCopy, v15, v16);
    v20 = objc_msgSend_lookupInfo(v17, v18, v19);
    v23 = objc_msgSend_emailAddress(v20, v21, v22);
    v76[2](v76, v23);

    v26 = objc_msgSend_userIdentity(participantCopy, v24, v25);
    v29 = objc_msgSend_lookupInfo(v26, v27, v28);
    v32 = objc_msgSend_phoneNumber(v29, v30, v31);
    v76[2](v76, v32);

    v79 = objc_opt_new();
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v74 = 448;
    obj = self->_mutableBlockedIdentities;
    v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v33, &v80, v90, 16);
    if (v36)
    {
      v37 = *v81;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v81 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v80 + 1) + 8 * i);
          v40 = objc_msgSend_userIdentity(v39, v34, v35, v74);
          v43 = objc_msgSend_lookupInfo(v40, v41, v42);
          v46 = objc_msgSend_userRecordID(v43, v44, v45);
          v49 = objc_msgSend_recordName(v46, v47, v48);

          v52 = objc_msgSend_userIdentity(v39, v50, v51);
          v55 = objc_msgSend_lookupInfo(v52, v53, v54);
          v58 = objc_msgSend_emailAddress(v55, v56, v57);

          v61 = objc_msgSend_userIdentity(v39, v59, v60);
          v64 = objc_msgSend_lookupInfo(v61, v62, v63);
          v67 = objc_msgSend_phoneNumber(v64, v65, v66);

          if (v49 && (objc_msgSend_containsObject_(v5, v68, v49) & 1) != 0 || v58 && (objc_msgSend_containsObject_(v5, v68, v58) & 1) != 0 || v67 && objc_msgSend_containsObject_(v5, v68, v67))
          {
            objc_msgSend_addObject_(v79, v68, v39);
          }
        }

        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v34, &v80, v90, 16);
      }

      while (v36);
    }

    v69 = selfCopy;
    objc_sync_enter(v69);
    if (objc_msgSend_count(v79, v70, v71))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v72 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v87 = v79;
        v88 = 2112;
        v89 = participantCopy;
        _os_log_impl(&dword_1883EA000, v72, OS_LOG_TYPE_DEFAULT, "Unblocking identities: %@ referenced by participant: %@", buf, 0x16u);
      }

      objc_msgSend_removeObjectsInArray_(*(&selfCopy->super.super.isa + v74), v73, v79, v74);
    }

    objc_sync_exit(v69);
  }
}

- (int64_t)_indexForIdentity:(id)identity matchingAnyInCollection:(id)collection
{
  identityCopy = identity;
  collectionCopy = collection;
  v9 = objc_msgSend_userRecordID(identityCopy, v7, v8);
  v58 = objc_msgSend_recordName(v9, v10, v11);

  v14 = objc_msgSend_lookupInfo(identityCopy, v12, v13);
  v57 = objc_msgSend_emailAddress(v14, v15, v16);

  v19 = objc_msgSend_lookupInfo(identityCopy, v17, v18);
  v56 = objc_msgSend_phoneNumber(v19, v20, v21);

  if (objc_msgSend_count(collectionCopy, v22, v23))
  {
    v55 = identityCopy;
    v25 = 0;
    while (1)
    {
      v26 = objc_msgSend_objectAtIndexedSubscript_(collectionCopy, v24, v25, v55);
      if (objc_opt_respondsToSelector())
      {
        v29 = objc_msgSend_userIdentity(v26, v27, v28);
        v32 = objc_msgSend_userRecordID(v29, v30, v31);
        v35 = objc_msgSend_recordName(v32, v33, v34);

        v38 = objc_msgSend_lookupInfo(v29, v36, v37);
        v41 = objc_msgSend_emailAddress(v38, v39, v40);

        v44 = objc_msgSend_lookupInfo(v29, v42, v43);
        v47 = objc_msgSend_phoneNumber(v44, v45, v46);

        isEqualToString = 0;
        if (v58 && v35)
        {
          isEqualToString = objc_msgSend_isEqualToString_(v58, v48, v35);
        }

        v50 = 0;
        if (v57 && v41)
        {
          v50 = objc_msgSend_isEqualToString_(v57, v48, v41);
        }

        v51 = 0;
        if (v56 && v47)
        {
          v51 = objc_msgSend_isEqualToString_(v56, v48, v47);
        }
      }

      else
      {
        v50 = 0;
        v35 = 0;
        v47 = 0;
        v41 = 0;
        isEqualToString = 0;
        v51 = 0;
      }

      if ((isEqualToString & 1) != 0 || (v50 & 1) != 0 || v51)
      {
        break;
      }

      if (++v25 >= objc_msgSend_count(collectionCopy, v52, v53))
      {
        v25 = 0x7FFFFFFFFFFFFFFFLL;
        break;
      }
    }

    identityCopy = v55;
  }

  else
  {
    v25 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v25;
}

- (id)_existingRequestersForUserIdentities:(id)identities
{
  v23 = *MEMORY[0x1E69E9840];
  identitiesCopy = identities;
  v5 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = identitiesCopy;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v18, v22, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = objc_msgSend__indexForIdentity_matchingAnyInCollection_(self, v9, *(*(&v18 + 1) + 8 * i), self->_mutableRequesters, v18);
        if (v13 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = objc_msgSend_objectAtIndexedSubscript_(self->_mutableRequesters, v9, v13);
          if ((objc_msgSend_containsObject_(v5, v15, v14) & 1) == 0)
          {
            objc_msgSend_addObject_(v5, v16, v14);
          }
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v18, v22, 16);
    }

    while (v10);
  }

  return v5;
}

- (void)blockUserIdentities:(id)identities
{
  v96 = *MEMORY[0x1E69E9840];
  identitiesCopy = identities;
  v9 = objc_msgSend_currentUserParticipant(self, v5, v6);
  if (v9 && (objc_msgSend_isCurrentUserOwnerOrAdmin(self, v7, v8) & 1) == 0)
  {
    v62 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v62, v63, a2, self, @"CKShare.m", 745, @"Only owners and admins may block.");
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_188590FD0;
  aBlock[3] = &unk_1E70BE240;
  v64 = v9;
  v89 = v64;
  selfCopy = self;
  v70 = _Block_copy(aBlock);
  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v66 = objc_opt_new();
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v15 = objc_msgSend_participants(selfCopy2, v13, v14);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v84, v95, 16);
  obj = v15;
  if (v17)
  {
    v67 = *v85;
    do
    {
      v71 = 0;
      v69 = v17;
      do
      {
        if (*v85 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v84 + 1) + 8 * v71);
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v19 = identitiesCopy;
        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v80, v94, 16, v64);
        if (v22)
        {
          v23 = *v81;
          while (2)
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v81 != v23)
              {
                objc_enumerationMutation(v19);
              }

              v25 = *(*(&v80 + 1) + 8 * i);
              v93 = v18;
              v26 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, &v93, 1);
              if (objc_msgSend__indexForIdentity_matchingAnyInCollection_(selfCopy2, v27, v25, v26) == 0x7FFFFFFFFFFFFFFFLL || (objc_msgSend_isCurrentUser(v18, v28, v29) & 1) != 0)
              {
              }

              else
              {
                v32 = objc_msgSend_role(v18, v30, v31) == 1;

                if (!v32)
                {
                  objc_msgSend_addObject_(v66, v21, v18);
                  goto LABEL_22;
                }
              }
            }

            v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v80, v94, 16);
            if (v22)
            {
              continue;
            }

            break;
          }
        }

LABEL_22:

        ++v71;
      }

      while (v71 != v69);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v33, &v84, v95, 16);
    }

    while (v17);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v34 = v66;
  v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v76, v92, 16);
  if (v37)
  {
    v38 = *v77;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v77 != v38)
        {
          objc_enumerationMutation(v34);
        }

        objc_msgSend_removeParticipant_(selfCopy2, v36, *(*(&v76 + 1) + 8 * j), v64);
      }

      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v36, &v76, v92, 16);
    }

    while (v37);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v40 = identitiesCopy;
  v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, &v72, v91, 16);
  if (v42)
  {
    v43 = *v73;
    do
    {
      for (k = 0; k != v42; ++k)
      {
        if (*v73 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v72 + 1) + 8 * k);
        if ((v70[2](v70, v45) & 1) == 0)
        {
          v47 = [CKShareBlockedIdentity alloc];
          v49 = objc_msgSend_initWithUserIdentity_(v47, v48, v45);
          v52 = objc_msgSend__indexForIdentity_matchingAnyInCollection_(selfCopy2, v50, v45, selfCopy2->_mutableBlockedIdentities);
          mutableBlockedIdentities = selfCopy2->_mutableBlockedIdentities;
          if (v52 == 0x7FFFFFFFFFFFFFFFLL)
          {
            if (!mutableBlockedIdentities)
            {
              v54 = objc_opt_new();
              v55 = selfCopy2->_mutableBlockedIdentities;
              selfCopy2->_mutableBlockedIdentities = v54;

              mutableBlockedIdentities = selfCopy2->_mutableBlockedIdentities;
            }

            objc_msgSend_addObject_(mutableBlockedIdentities, v51, v49, v64);
          }

          else
          {
            objc_msgSend_replaceObjectAtIndex_withObject_(mutableBlockedIdentities, v51, v52, v49);
          }
        }
      }

      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v46, &v72, v91, 16);
    }

    while (v42);
  }

  v58 = objc_msgSend_copy(v40, v56, v57);
  v60 = objc_msgSend__existingRequestersForUserIdentities_(selfCopy2, v59, v58);

  objc_msgSend_removeObjectsInArray_(selfCopy2->_mutableRequesters, v61, v60);
  objc_sync_exit(selfCopy2);
}

- (void)blockRequesters:(id)requesters
{
  v25 = *MEMORY[0x1E69E9840];
  requestersCopy = requesters;
  v5 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = requestersCopy;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v20, v24, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = objc_msgSend_userIdentity(*(*(&v20 + 1) + 8 * v13), v9, v10, v20);
        objc_msgSend_addObject_(v5, v15, v14);

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v20, v24, 16);
    }

    while (v11);
  }

  v18 = objc_msgSend_copy(v5, v16, v17);
  objc_msgSend_blockUserIdentities_(self, v19, v18);
}

- (void)blockUserIdentityLookupInfos:(id)infos
{
  v31 = *MEMORY[0x1E69E9840];
  infosCopy = infos;
  v5 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = objc_msgSend_copy(infosCopy, v6, v7);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v26, v30, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      v13 = 0;
      do
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v26 + 1) + 8 * v13);
        v15 = [CKUserIdentity alloc];
        inited = objc_msgSend_initInternal(v15, v16, v17, v26);
        objc_msgSend_setLookupInfo_(inited, v19, v14);
        objc_msgSend_addObject_(v5, v20, inited);

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v21, &v26, v30, 16);
    }

    while (v11);
  }

  v24 = objc_msgSend_copy(v5, v22, v23);
  objc_msgSend_blockUserIdentities_(self, v25, v24);
}

- (void)unblockIdentities:(id)identities
{
  v41 = *MEMORY[0x1E69E9840];
  identitiesCopy = identities;
  v27 = objc_msgSend_currentUserParticipant(self, v5, v6);
  v9 = v27;
  if (v27 && (objc_msgSend_isCurrentUserOwnerOrAdmin(self, v7, v8) & 1) == 0)
  {
    v25 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, a2, self, @"CKShare.m", 828, @"Only owners and admins may unblock users");

    v9 = v27;
  }

  if (identitiesCopy && objc_msgSend_count(identitiesCopy, v7, v8))
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v10 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = identitiesCopy;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v35, v40, 16);
    if (v12)
    {
      v13 = *v36;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v35 + 1) + 8 * i);
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v16 = selfCopy->_mutableBlockedIdentities;
          v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v31, v39, 16);
          if (v19)
          {
            v20 = *v32;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v32 != v20)
                {
                  objc_enumerationMutation(v16);
                }

                v22 = *(*(&v31 + 1) + 8 * j);
                if (objc_msgSend_isEqual_(v15, v18, v22, v27))
                {
                  objc_msgSend_addObject_(v10, v18, v22);
                }
              }

              v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v31, v39, 16);
            }

            while (v19);
          }
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v35, v40, 16);
      }

      while (v12);
    }

    objc_msgSend_removeObjectsInArray_(selfCopy->_mutableBlockedIdentities, v24, v10);
    objc_sync_exit(selfCopy);

    v9 = v27;
  }
}

- (void)setAccessRequestsEnabled:(BOOL)enabled
{
  v8 = objc_msgSend_currentUserParticipant(self, a2, enabled);
  if (v8)
  {
    if ((objc_msgSend_isCurrentUserOwnerOrAdmin(self, v6, v7) & 1) == 0)
    {
      v21 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v9, v10);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v21, v22, a2, self, @"CKShare.m", 849, @"Only owners and admins may modify accessRequestsEnabled.");
    }
  }

  if (!CKCurrentProcessLinkCheck168f06831e5b4d3ab6cc64d69a8cc447())
  {
    goto LABEL_7;
  }

  v13 = objc_msgSend_sharedManager(CKProcessScopedStateManager, v11, v12);
  v16 = objc_msgSend_untrustedEntitlements(v13, v14, v15);

  v51 = 0;
  LOBYTE(v13) = CKCanUseShareAccessRequestsWithEntitlements(v16, 0, &v51);
  v17 = v51;
  if (v13)
  {

LABEL_7:
    selfCopy = self;
    objc_sync_enter(selfCopy);
    selfCopy->_accessRequestsEnabled = enabled;
    objc_sync_exit(selfCopy);

    return;
  }

  v23 = v17;
  v24 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v18, v19);
  v25 = [CKSignificantIssue alloc];
  v26 = [CKSourceCodeLocation alloc];
  v28 = objc_msgSend_initWithFilePath_lineNumber_(v26, v27, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/CKItems/CKShare.m", 858);
  v31 = objc_msgSend_localizedDescription(v23, v29, v30);
  v32 = v31;
  v35 = objc_msgSend_UTF8String(v32, v33, v34);
  v37 = objc_msgSend_initWithSourceCodeLocation_format_(v25, v36, v28, @"%s", v35);
  objc_msgSend_handleSignificantIssue_actions_(v24, v38, v37, 0);

  v39 = MEMORY[0x1E696AEC0];
  v42 = objc_msgSend_localizedDescription(v23, v40, v41);
  v43 = v42;
  v46 = objc_msgSend_UTF8String(v43, v44, v45);
  v48 = objc_msgSend_stringWithFormat_(v39, v47, @"%s", v46);

  objc_msgSend_UTF8String(v48, v49, v50);
  _os_crash();
  __break(1u);
}

- (void)_setAccessRequestsEnabledNoSideEffects:(BOOL)effects
{
  obj = self;
  objc_sync_enter(obj);
  obj->_accessRequestsEnabled = effects;
  objc_sync_exit(obj);
}

- (BOOL)accessRequestsEnabled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  accessRequestsEnabled = selfCopy->_accessRequestsEnabled;
  objc_sync_exit(selfCopy);

  return accessRequestsEnabled;
}

- (void)clearModifiedParticipants
{
  v19 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v16 = objc_msgSend_recordID(selfCopy, v4, v5);
    v17 = 138412290;
    v18 = v16;
    _os_log_debug_impl(&dword_1883EA000, v3, OS_LOG_TYPE_DEBUG, "Clearing modified participants on share %@", &v17, 0xCu);
  }

  v8 = objc_msgSend_addedParticipantIDs(selfCopy, v6, v7);
  objc_msgSend_removeAllObjects(v8, v9, v10);

  v13 = objc_msgSend_removedParticipantIDs(selfCopy, v11, v12);
  objc_msgSend_removeAllObjects(v13, v14, v15);

  objc_sync_exit(selfCopy);
}

- (NSArray)invitedKeysToRemove
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_invitedKeysToRemove;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setInvitedKeysToRemove:(id)remove
{
  removeCopy = remove;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_CKDeepCopy(removeCopy, v5, v6);
  invitedKeysToRemove = selfCopy->_invitedKeysToRemove;
  selfCopy->_invitedKeysToRemove = v7;

  objc_sync_exit(selfCopy);
}

- (CKShareParticipant)owner
{
  v25 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = objc_msgSend_mutableAllParticipants(selfCopy, v4, v5, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v20, v24, 16);
  if (v10)
  {
    v11 = *v21;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v21 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v20 + 1) + 8 * v12);
      if (objc_msgSend_role(v13, v8, v9) == 1)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v20, v24, 16);
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v18 = v13;

    if (!v18)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_9:

LABEL_10:
    v16 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v14, v15);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, a2, selfCopy, @"CKShare.m", 916, @"You should never have a share without an owner");

    v18 = 0;
  }

  objc_sync_exit(selfCopy);

  return v18;
}

- (id)_knownParticipantWithParticipantID:(id)d
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = objc_msgSend_participants(self, v5, v6, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v19, v23, 16);
  if (v11)
  {
    v12 = *v20;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = objc_msgSend_participantID(v14, v9, v10);
        isEqualToString = objc_msgSend_isEqualToString_(dCopy, v16, v15);

        if (isEqualToString)
        {
          v11 = v14;
          goto LABEL_11;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v19, v23, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v11;
}

- (id)_knownParticipantEqualToParticipant:(id)participant
{
  participantCopy = participant;
  v7 = objc_msgSend_participants(self, v5, v6);
  v9 = objc_msgSend__knownParticipantEqualToParticipant_inParticipants_(self, v8, participantCopy, v7);

  return v9;
}

- (id)_knownParticipantEqualToParticipant:(id)participant inParticipants:(id)participants
{
  v61 = *MEMORY[0x1E69E9840];
  participantCopy = participant;
  participantsCopy = participants;
  v7 = participantsCopy;
  if (participantCopy)
  {
    v54 = 0;
    v55 = &v54;
    v56 = 0x3032000000;
    v57 = sub_1883ED8C0;
    v58 = sub_1883EF5B4;
    v59 = 0;
    v48 = 0;
    v49 = &v48;
    v50 = 0x3032000000;
    v51 = sub_1883ED8C0;
    v52 = sub_1883EF5B4;
    v53 = participantsCopy;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_188592330;
    aBlock[3] = &unk_1E70BE290;
    v46 = &v48;
    v39 = participantCopy;
    v45 = v39;
    v47 = &v54;
    v8 = _Block_copy(aBlock);
    v8[2](v8, &unk_1EFA2F008);
    v9 = v55[5];
    if (v9)
    {
      goto LABEL_8;
    }

    v8[2](v8, &unk_1EFA2F028);
    v9 = v55[5];
    if (v9)
    {
      goto LABEL_8;
    }

    v12 = objc_msgSend_userIdentity(v39, v10, v11);
    v15 = objc_msgSend_publicSharingKey(v12, v13, v14);

    if (v15)
    {
      v8[2](v8, &unk_1EFA2F048);
    }

    v9 = v55[5];
    if (v9 || (v8[2](v8, &unk_1EFA2F068), (v9 = v55[5]) != 0))
    {
LABEL_8:
      v16 = v9;
    }

    else
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      obj = v49[5];
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v40, v60, 16);
      if (v19)
      {
        v38 = *v41;
        while (2)
        {
          v37 = v19;
          for (i = 0; i != v37; ++i)
          {
            if (*v41 != v38)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v40 + 1) + 8 * i);
            v24 = objc_msgSend_userIdentity(v39, v20, v21);
            v27 = objc_msgSend_lookupInfo(v24, v25, v26);
            v30 = objc_msgSend_userIdentity(v23, v28, v29);
            v33 = objc_msgSend_lookupInfo(v30, v31, v32);
            isEqual = objc_msgSend_isEqual_(v27, v34, v33);

            if (isEqual)
            {
              v16 = v23;

              goto LABEL_9;
            }
          }

          v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v40, v60, 16);
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      v16 = 0;
    }

LABEL_9:

    _Block_object_dispose(&v48, 8);
    _Block_object_dispose(&v54, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)addParticipant:(CKShareParticipant *)participant
{
  v7 = participant;
  if (!v7)
  {
    v32 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v32, v33, a2, self, @"CKShare.m", 1002, @"You cannot add a nil participant");
  }

  if (objc_msgSend_role(v7, v5, v6) != 3 && objc_msgSend_role(v7, v8, v9) != 2)
  {
    v10 = objc_msgSend_role(v7, v8, v9);
    v11 = @"You can only add PrivateUsers as participants on a share";
    if (v10 == 1)
    {
      v11 = @"You can have only one owner on a share";
    }

    v12 = MEMORY[0x1E696AAA8];
    v13 = v11;
    v16 = objc_msgSend_currentHandler(v12, v14, v15);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, a2, self, @"CKShare.m", 1010, v13);
  }

  v20 = objc_msgSend_currentUserParticipant(self, v8, v9);
  if (v20 && (objc_msgSend_isCurrentUserOwnerOrAdmin(self, v18, v19) & 1) == 0)
  {
    v34 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v18, v19);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v34, v35, a2, self, @"CKShare.m", 1015, @"Only owners may add participants to a share");
  }

  if (!objc_msgSend_usesOneTimeURL(v7, v18, v19) || !CKCurrentProcessLinkCheck168f06831e5b4d3ab6cc64d69a8cc447())
  {
    goto LABEL_15;
  }

  v23 = objc_msgSend_sharedManager(CKProcessScopedStateManager, v21, v22);
  v26 = objc_msgSend_untrustedEntitlements(v23, v24, v25);

  v63 = 0;
  v27 = CKCanUseOneTimeLinksWithEntitlements(v26, 0, &v63);
  v28 = v63;
  v31 = v28;
  if (v27)
  {

LABEL_15:
    objc_msgSend__addParticipantBypassingChecks_(self, v21, v7);

    return;
  }

  v36 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v29, v30);
  v37 = [CKSignificantIssue alloc];
  v38 = [CKSourceCodeLocation alloc];
  v40 = objc_msgSend_initWithFilePath_lineNumber_(v38, v39, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/CKItems/CKShare.m", 1024);
  v43 = objc_msgSend_localizedDescription(v31, v41, v42);
  v44 = v43;
  v47 = objc_msgSend_UTF8String(v44, v45, v46);
  v49 = objc_msgSend_initWithSourceCodeLocation_format_(v37, v48, v40, @"%s", v47);
  objc_msgSend_handleSignificantIssue_actions_(v36, v50, v49, 0);

  v51 = MEMORY[0x1E696AEC0];
  v54 = objc_msgSend_localizedDescription(v31, v52, v53);
  v55 = v54;
  v58 = objc_msgSend_UTF8String(v55, v56, v57);
  v60 = objc_msgSend_stringWithFormat_(v51, v59, @"%s", v58);

  objc_msgSend_UTF8String(v60, v61, v62);
  _os_crash();
  __break(1u);
}

- (void)_addParticipantBypassingChecks:(id)checks
{
  v91 = *MEMORY[0x1E69E9840];
  checksCopy = checks;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (checksCopy)
  {
    v7 = objc_msgSend__knownParticipantEqualToParticipant_(selfCopy, v6, checksCopy);
    v10 = v7;
    if (v7)
    {
      if (objc_msgSend_acceptanceStatus(v7, v8, v9) != 2 && objc_msgSend_role(v10, v11, v12) != 1)
      {
        v15 = objc_msgSend_role(checksCopy, v13, v14);
        objc_msgSend_setRole_(v10, v16, v15);
        v19 = objc_msgSend_permission(checksCopy, v17, v18);
        objc_msgSend_setPermission_(v10, v20, v19);
      }
    }

    else
    {
      v85 = objc_msgSend_recordID(selfCopy, v8, v9);
      v25 = objc_msgSend_shareID(checksCopy, v21, v22);
      if (v25)
      {
        v26 = objc_msgSend_shareID(checksCopy, v23, v24);
        isEqual = objc_msgSend_isEqual_(v26, v27, v85);

        if ((isEqual & 1) == 0)
        {
          v82 = [CKException alloc];
          v84 = objc_msgSend_initWithCode_format_(v82, v83, 12, @"You can't move participants between shares. Create a new participant to add to this share");
          objc_exception_throw(v84);
        }
      }

      objc_msgSend_setShareID_(checksCopy, v23, v85);
      objc_msgSend__unblockIdentitiesReferencedByParticipant_(selfCopy, v29, checksCopy);
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v32 = objc_msgSend_copy(selfCopy->_mutableRequesters, v30, v31);
      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v86, v90, 16);
      if (v36)
      {
        v37 = *v87;
        while (2)
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v87 != v37)
            {
              objc_enumerationMutation(v32);
            }

            v39 = *(*(&v86 + 1) + 8 * i);
            v40 = objc_msgSend_userIdentity(checksCopy, v34, v35);
            v43 = objc_msgSend_lookupInfo(v40, v41, v42);

            v46 = objc_msgSend_participantLookupInfo(v39, v44, v45);
            if (objc_msgSend_isEqual_(v43, v47, v46))
            {
              objc_msgSend_setIsApprovedRequester_(checksCopy, v48, 1);
              objc_msgSend_removeObject_(selfCopy->_mutableRequesters, v49, v39);
              objc_msgSend_addObject_(selfCopy->_mutableApprovedRequesters, v50, v39);

              goto LABEL_18;
            }
          }

          v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v34, &v86, v90, 16);
          if (v36)
          {
            continue;
          }

          break;
        }
      }

LABEL_18:

      v53 = objc_msgSend_removedParticipantIDs(selfCopy, v51, v52);
      v56 = objc_msgSend_participantID(checksCopy, v54, v55);
      v58 = objc_msgSend_containsObject_(v53, v57, v56);

      if (v58)
      {
        v61 = objc_msgSend_mutableAllParticipants(selfCopy, v59, v60);
        v63 = objc_msgSend__knownParticipantEqualToParticipant_inParticipants_(selfCopy, v62, checksCopy, v61);

        if (v63)
        {
          v66 = objc_msgSend_mutableAllParticipants(selfCopy, v64, v65);
          objc_msgSend_removeObject_(v66, v67, v63);
        }

        v68 = objc_msgSend_removedParticipantIDs(selfCopy, v64, v65);
        v71 = objc_msgSend_participantID(checksCopy, v69, v70);
        objc_msgSend_removeObject_(v68, v72, v71);
      }

      v73 = objc_msgSend_mutableAllParticipants(selfCopy, v59, v60);
      objc_msgSend_addObject_(v73, v74, checksCopy);

      v77 = objc_msgSend_addedParticipantIDs(selfCopy, v75, v76);
      v80 = objc_msgSend_participantID(checksCopy, v78, v79);
      objc_msgSend_addObject_(v77, v81, v80);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)removeParticipant:(CKShareParticipant *)participant
{
  v5 = participant;
  if (v5)
  {
    v39 = v5;
    v8 = objc_msgSend_shareID(v5, v6, v7);
    if (v8 && (v11 = v8, objc_msgSend_shareID(v39, v9, v10), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend_recordID(self, v13, v14), v15 = objc_claimAutoreleasedReturnValue(), isEqual = objc_msgSend_isEqual_(v12, v16, v15), v15, v12, v11, (isEqual & 1) == 0))
    {
      v32 = [CKException alloc];
      v34 = objc_msgSend_initWithCode_format_(v32, v33, 12, @"You can't move participants between shares. Create a new participant to add to this share");
    }

    else
    {
      v18 = objc_msgSend__knownParticipantEqualToParticipant_(self, v9, v39);
      v21 = v18;
      if (!v18)
      {
LABEL_11:

        v5 = v39;
        goto LABEL_12;
      }

      if (objc_msgSend_role(v18, v19, v20) == 1)
      {
        v35 = [CKException alloc];
        v34 = objc_msgSend_initWithCode_format_(v35, v36, 12, @"You cannot remove the owner from a share");
      }

      else
      {
        if (!objc_msgSend_isCurrentUser(v21, v22, v23))
        {
          v28 = objc_msgSend_currentUserParticipant(self, v24, v25);
          if (v28 && (objc_msgSend_isCurrentUserOwnerOrAdmin(self, v26, v27) & 1) == 0)
          {
            v30 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v26, v29);
            objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v30, v31, a2, self, @"CKShare.m", 1103, @"Only owners may remove participants from a share");
          }

          objc_msgSend__removeParticipantBypassingChecks_(self, v26, v39);

          goto LABEL_11;
        }

        v37 = [CKException alloc];
        v34 = objc_msgSend_initWithCode_format_(v37, v38, 12, @"You cannot remove yourself as a participant on the share.  Delete the share instead if you want out.");
      }
    }

    objc_exception_throw(v34);
  }

LABEL_12:
}

- (void)_removeParticipantBypassingChecks:(id)checks
{
  checksCopy = checks;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = objc_msgSend__knownParticipantEqualToParticipant_(selfCopy, v5, checksCopy);
  v8 = v6;
  if (v6)
  {
    objc_msgSend_setShareID_(v6, v7, 0);
    v11 = objc_msgSend_addedParticipantIDs(selfCopy, v9, v10);
    v14 = objc_msgSend_participantID(v8, v12, v13);
    v16 = objc_msgSend_containsObject_(v11, v15, v14);

    if (v16)
    {
      v19 = objc_msgSend_mutableAllParticipants(selfCopy, v17, v18);
      objc_msgSend_removeObject_(v19, v20, v8);

      v23 = objc_msgSend_addedParticipantIDs(selfCopy, v21, v22);
      v26 = objc_msgSend_participantID(v8, v24, v25);
      objc_msgSend_removeObject_(v23, v27, v26);
    }

    else
    {
      v23 = objc_msgSend_removedParticipantIDs(selfCopy, v17, v18);
      v26 = objc_msgSend_participantID(v8, v28, v29);
      objc_msgSend_addObject_(v23, v30, v26);
    }
  }

  objc_sync_exit(selfCopy);
}

- (id)addedParticipants
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_msgSend_mutableAllParticipants(selfCopy, v3, v4);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_188593170;
  v9[3] = &unk_1E70BE1A0;
  v9[4] = selfCopy;
  v7 = objc_msgSend_CKFilter_(v5, v6, v9);

  objc_sync_exit(selfCopy);

  return v7;
}

- (id)removedParticipants
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_msgSend_mutableAllParticipants(selfCopy, v3, v4);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1885932B8;
  v9[3] = &unk_1E70BE1A0;
  v9[4] = selfCopy;
  v7 = objc_msgSend_CKFilter_(v5, v6, v9);

  objc_sync_exit(selfCopy);

  return v7;
}

- (CKShareParticipant)currentUserParticipant
{
  v19 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = objc_msgSend_mutableAllParticipants(selfCopy, v3, v4, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v14, v18, 16);
  if (v9)
  {
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (objc_msgSend_isCurrentUser(v12, v7, v8))
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v14, v18, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(selfCopy);

  return v9;
}

- (BOOL)_participantArray:(id)array containsEquivalentWithPermissionsParticipant:(id)participant
{
  v26 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  participantCopy = participant;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = arrayCopy;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v21, v25, 16);
  if (v10)
  {
    v11 = *v22;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        if (objc_msgSend_isEqual_(v13, v9, participantCopy, v21) && (v16 = objc_msgSend_acceptanceStatus(v13, v14, v15), v16 == objc_msgSend_acceptanceStatus(participantCopy, v17, v18)) || objc_msgSend_role(participantCopy, v14, v15) == 1 && objc_msgSend_role(v13, v9, v19) == 1)
        {
          LOBYTE(v10) = 1;
          goto LABEL_14;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v21, v25, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v10;
}

- (BOOL)_participantArray:(id)array isEquivalentToArray:(id)toArray
{
  arrayCopy = array;
  toArrayCopy = toArray;
  v10 = objc_msgSend_count(arrayCopy, v8, v9);
  if (v10 == objc_msgSend_count(toArrayCopy, v11, v12))
  {
    if (objc_msgSend_count(arrayCopy, v13, v14))
    {
      v16 = 0;
      do
      {
        v17 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v15, v16);
        v19 = objc_msgSend__participantArray_containsEquivalentWithPermissionsParticipant_(self, v18, toArrayCopy, v17);

        if ((v19 & 1) == 0)
        {
          break;
        }

        ++v16;
      }

      while (v16 < objc_msgSend_count(arrayCopy, v20, v21));
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)resetFetchedParticipants
{
  obj = self;
  objc_sync_enter(obj);
  v4 = objc_msgSend_array(MEMORY[0x1E695DF70], v2, v3);
  objc_msgSend_setLastFetchedParticipants_(obj, v5, v4);

  objc_sync_exit(obj);
}

- (void)registerFetchedParticipant:(id)participant
{
  participantCopy = participant;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_lastFetchedParticipants(selfCopy, v5, v6);
  v10 = objc_msgSend_copy(participantCopy, v8, v9);
  objc_msgSend_addObject_(v7, v11, v10);

  objc_sync_exit(selfCopy);
}

- (id)updateFromServerShare:(id)share
{
  v146 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = objc_msgSend_lastFetchedParticipants(selfCopy, v6, v7);
  v11 = objc_msgSend_participants(selfCopy, v9, v10);
  v14 = objc_msgSend_participants(shareCopy, v12, v13);
  isEquivalentToArray = objc_msgSend__participantArray_isEquivalentToArray_(selfCopy, v15, v14, v8);
  v18 = objc_msgSend__participantArray_isEquivalentToArray_(selfCopy, v17, v11, v8);
  v20 = objc_msgSend__participantArray_isEquivalentToArray_(selfCopy, v19, v11, v14);

  objc_sync_exit(selfCopy);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v21 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v121 = MEMORY[0x1E696AD98];
    v122 = v21;
    v124 = objc_msgSend_numberWithBool_(v121, v123, v18 ^ 1u);
    v126 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v125, isEquivalentToArray ^ 1u);
    *buf = 138412546;
    v143 = v124;
    v144 = 2112;
    v145 = v126;
    _os_log_debug_impl(&dword_1883EA000, v122, OS_LOG_TYPE_DEBUG, "Updating local share from a remote share, client participants changed: %@, server participants changed: %@", buf, 0x16u);
  }

  if ((isEquivalentToArray & 1) == 0)
  {
    if (((v18 | v20) & 1) == 0)
    {
      v105 = objc_opt_new();
      v108 = shareCopy;
      v109 = selfCopy;
      v114 = objc_msgSend_copyWithOriginalValues(v109, v110, v111);
      if (v114)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v105, v112, v114, @"AncestorRecord");
      }

      if (v108)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v105, v112, v108, @"ServerRecord");
      }

      if (v109)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v105, v112, v109, @"ClientRecord");
      }

      v115 = objc_msgSend_participants(v109, v112, v113);
      v118 = objc_msgSend_participants(v108, v116, v117);
      v107 = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v119, @"CKInternalErrorDomain", 1022, v105, @"Participants conflict while trying to update share from the server. Participants:\n=== Client: %@\n=== Server: %@", v115, v118);

      goto LABEL_51;
    }

    v24 = objc_msgSend_addedParticipants(selfCopy, v22, v23);
    v27 = objc_msgSend_removedParticipants(selfCopy, v25, v26);
    v28 = selfCopy;
    objc_sync_enter(v28);
    v31 = objc_msgSend_participants(shareCopy, v29, v30);
    v33 = v31;
    v34 = MEMORY[0x1E695E0F0];
    if (v31)
    {
      objc_msgSend_setAllParticipants_(v28, v32, v31);
    }

    else
    {
      objc_msgSend_setAllParticipants_(v28, v32, MEMORY[0x1E695E0F0]);
    }

    objc_msgSend_resetFetchedParticipants(v28, v35, v36);
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v39 = objc_msgSend_mutableAllParticipants(v28, v37, v38);
    v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v135, v141, 16);
    if (v42)
    {
      v43 = *v136;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v136 != v43)
          {
            objc_enumerationMutation(v39);
          }

          objc_msgSend_registerFetchedParticipant_(v28, v41, *(*(&v135 + 1) + 8 * i));
        }

        v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v41, &v135, v141, 16);
      }

      while (v42);
    }

    v47 = objc_msgSend_requesters(shareCopy, v45, v46);
    v49 = v47;
    if (v47)
    {
      objc_msgSend_setRequesters_(v28, v48, v47);
    }

    else
    {
      objc_msgSend_setRequesters_(v28, v48, v34);
    }

    v52 = objc_msgSend_approvedRequesters(shareCopy, v50, v51);
    v54 = v52;
    if (v52)
    {
      objc_msgSend_setApprovedRequesters_(v28, v53, v52);
    }

    else
    {
      objc_msgSend_setApprovedRequesters_(v28, v53, v34);
    }

    v57 = objc_msgSend_blockedIdentities(shareCopy, v55, v56);
    v59 = v57;
    if (v57)
    {
      objc_msgSend_setBlockedIdentities_(v28, v58, v57);
    }

    else
    {
      objc_msgSend_setBlockedIdentities_(v28, v58, v34);
    }

    objc_sync_exit(v28);
    objc_msgSend_clearModifiedParticipants(v28, v60, v61);
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v62 = v24;
    v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v63, &v131, v140, 16);
    if (v65)
    {
      v66 = *v132;
      do
      {
        for (j = 0; j != v65; ++j)
        {
          if (*v132 != v66)
          {
            objc_enumerationMutation(v62);
          }

          objc_msgSend__addParticipantBypassingChecks_(v28, v64, *(*(&v131 + 1) + 8 * j));
        }

        v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v64, &v131, v140, 16);
      }

      while (v65);
    }

    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v68 = v27;
    v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v69, &v127, v139, 16);
    if (v71)
    {
      v72 = *v128;
      do
      {
        for (k = 0; k != v71; ++k)
        {
          if (*v128 != v72)
          {
            objc_enumerationMutation(v68);
          }

          objc_msgSend__removeParticipantBypassingChecks_(v28, v70, *(*(&v127 + 1) + 8 * k));
        }

        v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v70, &v127, v139, 16);
      }

      while (v71);
    }
  }

  v74 = objc_msgSend_accessRequestsEnabled(shareCopy, v22, v23);
  objc_msgSend__setAccessRequestsEnabledNoSideEffects_(selfCopy, v75, v74);
  v78 = objc_msgSend_invitedProtectionData(shareCopy, v76, v77);
  objc_msgSend_setInvitedProtectionData_(selfCopy, v79, v78);

  v82 = objc_msgSend_invitedProtectionEtag(shareCopy, v80, v81);
  objc_msgSend_setInvitedProtectionEtag_(selfCopy, v83, v82);

  v86 = objc_msgSend_publicProtectionData(shareCopy, v84, v85);
  objc_msgSend_setPublicProtectionData_(selfCopy, v87, v86);

  v90 = objc_msgSend_publicProtectionEtag(shareCopy, v88, v89);
  objc_msgSend_setPublicProtectionEtag_(selfCopy, v91, v90);

  v94 = objc_msgSend_etag(shareCopy, v92, v93);
  objc_msgSend_setEtag_(selfCopy, v95, v94);

  v98 = objc_msgSend_routingKey(shareCopy, v96, v97);
  objc_msgSend_setRoutingKey_(selfCopy, v99, v98);

  v102 = objc_msgSend_displayedHostname(shareCopy, v100, v101);

  if (!v102)
  {
    v107 = 0;
    goto LABEL_52;
  }

  v105 = objc_msgSend_displayedHostname(shareCopy, v103, v104);
  objc_msgSend_setDisplayedHostname_(selfCopy, v106, v105);
  v107 = 0;
LABEL_51:

LABEL_52:

  return v107;
}

- (void)updateWithSavedRecordXPCMetadata:(id)metadata shouldOnlySaveAssetContent:(BOOL)content
{
  contentCopy = content;
  v69 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  v67.receiver = self;
  v67.super_class = CKShare;
  [(CKRecord *)&v67 updateWithSavedRecordXPCMetadata:metadataCopy shouldOnlySaveAssetContent:contentCopy];
  v9 = objc_msgSend_serverRecord(metadataCopy, v7, v8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v11 = v9;
    objc_sync_enter(v11);
    v12 = v11;
    v15 = objc_msgSend_mutableAllParticipants(v12, v13, v14);
    objc_msgSend_setAllParticipants_(selfCopy, v16, v15);

    v19 = objc_msgSend_mutableRequesters(v12, v17, v18);
    objc_msgSend_setRequesters_(selfCopy, v20, v19);

    v23 = objc_msgSend_mutableApprovedRequesters(v12, v21, v22);
    objc_msgSend_setApprovedRequesters_(selfCopy, v24, v23);

    v27 = objc_msgSend_mutableBlockedIdentities(v12, v25, v26);
    objc_msgSend_setBlockedIdentities_(selfCopy, v28, v27);

    selfCopy->_accessRequestsEnabled = objc_msgSend_accessRequestsEnabled(v12, v29, v30);
    objc_msgSend_resetFetchedParticipants(selfCopy, v31, v32);
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v35 = objc_msgSend_mutableAllParticipants(v12, v33, v34, 0);
    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v63, v68, 16);
    if (v38)
    {
      v39 = *v64;
      do
      {
        v40 = 0;
        do
        {
          if (*v64 != v39)
          {
            objc_enumerationMutation(v35);
          }

          objc_msgSend_registerFetchedParticipant_(selfCopy, v37, *(*(&v63 + 1) + 8 * v40++));
        }

        while (v38 != v40);
        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v37, &v63, v68, 16);
      }

      while (v38);
    }

    objc_msgSend_clearModifiedParticipants(selfCopy, v41, v42);
    v45 = objc_msgSend_publicSharingIdentity(v12, v43, v44);
    objc_msgSend_setPublicSharingIdentity_(selfCopy, v46, v45);

    v49 = objc_msgSend_oneTimeURLMetadatasByParticipantID(v12, v47, v48);
    objc_msgSend_setOneTimeURLMetadatasByParticipantID_(selfCopy, v50, v49);

    v53 = objc_msgSend_invitedProtectionData(v12, v51, v52);
    objc_msgSend_setInvitedProtectionData_(selfCopy, v54, v53);

    v57 = objc_msgSend_invitedProtectionEtag(v12, v55, v56);
    objc_msgSend_setInvitedProtectionEtag_(selfCopy, v58, v57);

    v61 = objc_msgSend_previousInvitedProtectionEtag(v12, v59, v60);
    previousInvitedProtectionEtag = selfCopy->_previousInvitedProtectionEtag;
    selfCopy->_previousInvitedProtectionEtag = v61;

    objc_sync_exit(v12);
    objc_sync_exit(selfCopy);
  }
}

- (void)_addParticipantEmails:(id)emails phoneNumbers:(id)numbers asReadWrite:(BOOL)write inContainer:(id)container completionHandler:(id)handler
{
  v47 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  handlerCopy = handler;
  numbersCopy = numbers;
  v16 = objc_msgSend_lookupInfosWithEmails_(CKUserIdentityLookupInfo, v15, emails);
  v17 = v16;
  v18 = MEMORY[0x1E695E0F0];
  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = MEMORY[0x1E695E0F0];
  }

  v20 = v19;

  v22 = objc_msgSend_lookupInfosWithPhoneNumbers_(CKUserIdentityLookupInfo, v21, numbersCopy);

  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v18;
  }

  v24 = v23;

  v26 = objc_msgSend_arrayByAddingObjectsFromArray_(v20, v25, v24);

  v27 = [CKFetchShareParticipantsOperation alloc];
  v29 = objc_msgSend_initWithUserIdentityLookupInfos_(v27, v28, v26);
  v32 = objc_msgSend_resolvedConfiguration(v29, v30, v31);
  objc_msgSend_setRequestOriginator_(v32, v33, 5);

  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = sub_188594490;
  v43[3] = &unk_1E70BE2D8;
  writeCopy = write;
  v43[4] = self;
  objc_msgSend_setPerShareParticipantCompletionBlock_(v29, v34, v43);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v35 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v46 = v26;
    _os_log_debug_impl(&dword_1883EA000, v35, OS_LOG_TYPE_DEBUG, "Fetching share participants for UI: %@", buf, 0xCu);
  }

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = sub_188594500;
  v40[3] = &unk_1E70BE300;
  v41 = containerCopy;
  v42 = handlerCopy;
  v40[4] = self;
  v36 = containerCopy;
  v37 = handlerCopy;
  objc_msgSend_setFetchShareParticipantsCompletionBlock_(v29, v38, v40);
  objc_msgSend_addOperation_(v36, v39, v29);
}

- (void)_stripPersonalInfoAndSerializeOwnerInfo:(BOOL)info
{
  infoCopy = info;
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = objc_msgSend_participants(self, a2, info, 0);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v11, v15, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v4);
        }

        objc_msgSend__stripPersonalInfoAndSerializeOwnerInfo_(*(*(&v11 + 1) + 8 * v10++), v7, infoCopy);
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v11, v15, 16);
    }

    while (v8);
  }
}

- (id)_copyWithoutPersonalInfoAndSerializeOwnerInfo:(BOOL)info
{
  infoCopy = info;
  v4 = objc_msgSend_copy(self, a2, info);
  objc_msgSend__stripPersonalInfoAndSerializeOwnerInfo_(v4, v5, infoCopy);
  return v4;
}

- (void)setWantsPublicSharingKey:(BOOL)key
{
  v3 = [CKException alloc];
  v5 = objc_msgSend_initWithCode_format_(v3, v4, 12, @"Cannot set this property on CKShare");
  objc_exception_throw(v5);
}

- (NSData)publicSharingIdentity
{
  v3 = objc_msgSend_mutableEncryptedPSK(self, a2, v2);
  v6 = objc_msgSend_data(v3, v4, v5);

  return v6;
}

- (void)setPublicSharingIdentity:(id)identity
{
  identityCopy = identity;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_mutableEncryptedPSK(selfCopy, v5, v6);
  v10 = objc_msgSend_data(v7, v8, v9);

  if (v10 != identityCopy)
  {
    if (identityCopy)
    {
      v12 = [CKEncryptedData alloc];
      v14 = objc_msgSend_initWithData_(v12, v13, identityCopy);
      objc_msgSend_setMutableEncryptedPSK_(selfCopy, v15, v14);
    }

    else
    {
      objc_msgSend_setMutableEncryptedPSK_(selfCopy, v11, 0);
    }

    objc_msgSend_setMutableURL_(selfCopy, v16, 0);
  }

  objc_sync_exit(selfCopy);
}

- (id)oneTimeURLForParticipantID:(id)d
{
  v72 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy)
  {
    v14 = 0;
    goto LABEL_27;
  }

  v6 = objc_msgSend__knownParticipantWithParticipantID_(self, v4, dCopy);
  v9 = v6;
  if (!v6)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_ck;
    if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    LOWORD(v68) = 0;
    v13 = "You cannot get a one-time URL for a participant that isn't on the share";
    goto LABEL_24;
  }

  if (objc_msgSend_role(v6, v7, v8) == 1)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_ck;
    if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    LOWORD(v68) = 0;
    v13 = "You cannot get a one-time URL for an owner participant";
    goto LABEL_24;
  }

  v15 = objc_msgSend_mutableEncryptedPSK(self, v10, v11);
  v18 = objc_msgSend_data(v15, v16, v17);
  if (v18)
  {
    v21 = v18;
    v22 = objc_msgSend_routingKey(self, v19, v20);
    v25 = objc_msgSend_length(v22, v23, v24);

    if (v25)
    {
      v28 = objc_msgSend_oneTimeURLMetadatasByParticipantID(self, v26, v27);
      v30 = objc_msgSend_objectForKeyedSubscript_(v28, v29, dCopy);

      if (v30 && (objc_msgSend_encryptedOneTimeFullToken(v30, v31, v32), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend_data(v33, v34, v35), v36 = objc_claimAutoreleasedReturnValue(), v36, v33, v36))
      {
        v39 = objc_msgSend_routingKey(self, v37, v38);
        v41 = objc_msgSend_oneTimeShortTokenWithRoutingKey_(v30, v40, v39);
        v44 = objc_msgSend_CKSafeStringForURLPathComponent(v41, v42, v43);

        if (v44)
        {
          v45 = objc_opt_class();
          v47 = objc_msgSend_objectForKeyedSubscript_(self, v46, @"cloudkit.title");
          v49 = objc_msgSend_objectForKeyedSubscript_(self, v48, @"cloudkit.type");
          v52 = objc_msgSend_containerID(self, v50, v51);
          v55 = objc_msgSend_displayedHostname(self, v53, v54);
          v14 = objc_msgSend_shareURLWithShortToken_shareTitle_shareType_containerID_displayedHostname_(v45, v56, v44, v47, v49, v52, v55);
        }

        else
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v59 = ck_log_facility_ck;
          if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
          {
            v64 = v59;
            v67 = objc_msgSend_recordID(self, v65, v66);
            v68 = 138412546;
            v69 = dCopy;
            v70 = 2112;
            v71 = v67;
            _os_log_error_impl(&dword_1883EA000, v64, OS_LOG_TYPE_ERROR, "Failed to get the one-time short token for participant %@ on %@", &v68, 0x16u);
          }

          v14 = 0;
        }
      }

      else
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v58 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
        {
          v60 = v58;
          v63 = objc_msgSend_recordID(self, v61, v62);
          v68 = 138412546;
          v69 = dCopy;
          v70 = 2112;
          v71 = v63;
          _os_log_error_impl(&dword_1883EA000, v60, OS_LOG_TYPE_ERROR, "Failed to get the one-time URL metadata for %@ on record %@", &v68, 0x16u);
        }

        v14 = 0;
      }

      goto LABEL_26;
    }
  }

  else
  {
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v12 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v68) = 0;
    v13 = "You cannot get a one-time URL for a participant until the share it's been saved to the server";
LABEL_24:
    _os_log_error_impl(&dword_1883EA000, v12, OS_LOG_TYPE_ERROR, v13, &v68, 2u);
  }

LABEL_25:
  v14 = 0;
LABEL_26:

LABEL_27:

  return v14;
}

- (int64_t)participantVisibility
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  participantVisibility = selfCopy->_participantVisibility;
  objc_sync_exit(selfCopy);

  return participantVisibility;
}

- (void)setParticipantVisibility:(int64_t)visibility
{
  obj = self;
  objc_sync_enter(obj);
  v7 = obj;
  if (obj->_participantVisibility != visibility)
  {
    v8 = objc_msgSend_publicPermission(obj, v5, v6);
    if (visibility == 1)
    {
      if (v8 == 1)
      {
LABEL_7:
        v7 = obj;
        obj->_participantVisibility = visibility;
        goto LABEL_8;
      }

      v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v9, v10);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v13, a2, obj, @"CKShare.m", 1445, @"Cannot set %@ on a share with publicPermission != CKShareParticipantPermissionNone", @"ReadOnlyParticipantsSeeSelfAndOwner");
    }

    else
    {
      if (visibility != 3 || v8 != 1)
      {
        goto LABEL_7;
      }

      v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v9, v10);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, obj, @"CKShare.m", 1448, @"Cannot set %@ on a share with publicPermission == CKShareParticipantPermissionNone", @"OwnerSeesSelfAndParticipantsSeeSelfAndOwner");
    }

    goto LABEL_7;
  }

LABEL_8:
  objc_sync_exit(v7);
}

- (int64_t)participantSelfRemovalBehavior
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  participantSelfRemovalBehavior = selfCopy->_participantSelfRemovalBehavior;
  objc_sync_exit(selfCopy);

  return participantSelfRemovalBehavior;
}

- (void)setParticipantSelfRemovalBehavior:(int64_t)behavior
{
  obj = self;
  objc_sync_enter(obj);
  v9 = objc_msgSend_currentUserParticipant(obj, v5, v6);
  if (v9 && (objc_msgSend_isCurrentUserOwnerOrAdmin(obj, v7, v8) & 1) == 0)
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, obj, @"CKShare.m", 1470, @"Only owners may set the participant self removal behavior of a share");
  }

  if (obj->_participantSelfRemovalBehavior != behavior)
  {
    obj->_participantSelfRemovalBehavior = behavior;
  }

  objc_sync_exit(obj);
}

- (BOOL)allNonOwnerParticipantsHavePermission:(int64_t)permission
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_participants(self, a2, permission);
  if (objc_msgSend_count(v4, v5, v6) >= 2)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v4;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v18, v22, 16);
    if (v10)
    {
      v13 = v10;
      v14 = *v19;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v8);
          }

          v16 = *(*(&v18 + 1) + 8 * i);
          if (objc_msgSend_role(v16, v11, v12, v18) != 1 && objc_msgSend_permission(v16, v11, v12) != permission)
          {
            v7 = 0;
            goto LABEL_14;
          }
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v18, v22, 16);
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v7 = 1;
LABEL_14:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)allNonOwnerParticipantsHaveRole:(int64_t)role
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_participants(self, a2, role);
  if (objc_msgSend_count(v4, v5, v6) >= 2)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v4;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v18, v22, 16);
    if (v10)
    {
      v13 = v10;
      v14 = *v19;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v8);
          }

          v16 = *(*(&v18 + 1) + 8 * i);
          if (objc_msgSend_role(v16, v11, v12, v18) != 1 && objc_msgSend_role(v16, v11, v12) != role)
          {
            v7 = 0;
            goto LABEL_14;
          }
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v18, v22, 16);
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v7 = 1;
LABEL_14:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeSystemFieldsWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = objc_autoreleasePoolPush();
  if ((byte_1EA90C538 & 1) == 0 && (objc_msgSend_serializePersonalInfo(self, v5, v6) & 1) == 0)
  {
    v10 = objc_msgSend_serializeOwnerInfo(self, v8, v9);
    objc_msgSend__stripPersonalInfoAndSerializeOwnerInfo_(self, v11, v10);
  }

  v103.receiver = self;
  v103.super_class = CKShare;
  [(CKRecord *)&v103 encodeSystemFieldsWithCoder:coderCopy];
  v14 = objc_msgSend_containerID(self, v12, v13);
  objc_msgSend_encodeObject_forKey_(coderCopy, v15, v14, @"ContainerID");

  v18 = objc_msgSend_rootRecordID(self, v16, v17);
  objc_msgSend_encodeObject_forKey_(coderCopy, v19, v18, @"RootRecordID");

  v22 = objc_msgSend_publicPermission(self, v20, v21);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v23, v22, @"PublicPermission");
  LODWORD(v18) = objc_msgSend_encodeAllowsReadOnlyParticipantsToSeeEachOther(self, v24, v25);
  v28 = objc_msgSend_participantVisibility(self, v26, v27);
  if (v18)
  {
    objc_msgSend_encodeBool_forKey_(coderCopy, v29, v28 == 0, @"AllowsReadOnlyParticipantsToSeeEachOther");
  }

  else
  {
    objc_msgSend_encodeInteger_forKey_(coderCopy, v29, v28, @"ParticipantVisibility");
  }

  v32 = objc_msgSend_participantSelfRemovalBehavior(self, v30, v31);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v33, v32, @"ParticipantSelfRemovalBehavior");
  v36 = objc_msgSend_allowsAnonymousPublicAccess(self, v34, v35);
  objc_msgSend_encodeBool_forKey_(coderCopy, v37, v36, @"AllowsAnonymousAccess");
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v41 = objc_msgSend_mutableAllParticipants(selfCopy, v39, v40);
  objc_msgSend_encodeObject_forKey_(coderCopy, v42, v41, @"Participants");

  v45 = objc_msgSend_lastFetchedParticipants(selfCopy, v43, v44);
  objc_msgSend_encodeObject_forKey_(coderCopy, v46, v45, @"LastFetchedParticipants");

  v49 = objc_msgSend_addedParticipantIDs(selfCopy, v47, v48);
  objc_msgSend_encodeObject_forKey_(coderCopy, v50, v49, @"AddedParticipantIDs");

  v53 = objc_msgSend_removedParticipantIDs(selfCopy, v51, v52);
  objc_msgSend_encodeObject_forKey_(coderCopy, v54, v53, @"RemovedParticipantIDs");

  v57 = objc_msgSend_mutableRequesters(selfCopy, v55, v56);
  objc_msgSend_encodeObject_forKey_(coderCopy, v58, v57, @"Requesters");

  v61 = objc_msgSend_mutableApprovedRequesters(selfCopy, v59, v60);
  objc_msgSend_encodeObject_forKey_(coderCopy, v62, v61, @"ApprovedRequesters");

  v65 = objc_msgSend_mutableBlockedIdentities(selfCopy, v63, v64);
  objc_msgSend_encodeObject_forKey_(coderCopy, v66, v65, @"BlockedIdentities");

  v69 = objc_msgSend_accessRequestsEnabled(selfCopy, v67, v68);
  objc_msgSend_encodeBool_forKey_(coderCopy, v70, v69, @"AccessRequestsEnabled");
  v73 = objc_msgSend_oneTimeURLMetadatasByParticipantID(selfCopy, v71, v72);
  objc_msgSend_encodeObject_forKey_(coderCopy, v74, v73, @"oneTimeURLMetadatasByParticipantID");

  objc_sync_exit(selfCopy);
  v77 = objc_msgSend_invitedKeysToRemove(selfCopy, v75, v76);
  objc_msgSend_encodeObject_forKey_(coderCopy, v78, v77, @"InvitedKeysToRemove");

  if ((byte_1EA90C538 & 1) != 0 || objc_msgSend_serializeProtectionData(selfCopy, v79, v80))
  {
    v81 = objc_msgSend_invitedProtectionData(selfCopy, v79, v80);
    objc_msgSend_encodeObject_forKey_(coderCopy, v82, v81, @"InvitedPCS");

    v85 = objc_msgSend_invitedProtectionEtag(selfCopy, v83, v84);
    objc_msgSend_encodeObject_forKey_(coderCopy, v86, v85, @"InvitedPCSEtag");

    v89 = objc_msgSend_previousInvitedProtectionEtag(selfCopy, v87, v88);
    objc_msgSend_encodeObject_forKey_(coderCopy, v90, v89, @"PreviousInvitedPCSEtag");

    v93 = objc_msgSend_publicProtectionData(selfCopy, v91, v92);
    objc_msgSend_encodeObject_forKey_(coderCopy, v94, v93, @"PublicPCS");

    v97 = objc_msgSend_publicProtectionEtag(selfCopy, v95, v96);
    objc_msgSend_encodeObject_forKey_(coderCopy, v98, v97, @"PublicPCSEtag");

    v101 = objc_msgSend_previousPublicProtectionEtag(selfCopy, v99, v100);
    objc_msgSend_encodeObject_forKey_(coderCopy, v102, v101, @"PreviousPublicPCSEtag");
  }

  objc_autoreleasePoolPop(v7);
}

- (CKShare)initWithCoder:(NSCoder *)aDecoder
{
  v4 = aDecoder;
  v153.receiver = self;
  v153.super_class = CKShare;
  v5 = [(CKRecord *)&v153 initWithCoder:v4];
  if (v5)
  {
    context = objc_autoreleasePoolPush();
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"ContainerID");
    containerID = v5->super._containerID;
    v5->super._containerID = v8;

    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v10, @"RootRecordID");
    rootRecordID = v5->_rootRecordID;
    v5->_rootRecordID = v12;

    v5->_publicPermission = objc_msgSend_decodeIntegerForKey_(v4, v14, @"PublicPermission");
    if (objc_msgSend_containsValueForKey_(v4, v15, @"ParticipantVisibility"))
    {
      v5->_participantVisibility = objc_msgSend_decodeIntegerForKey_(v4, v16, @"ParticipantVisibility");
    }

    else if (objc_msgSend_containsValueForKey_(v4, v16, @"AllowsReadOnlyParticipantsToSeeEachOther"))
    {
      if (objc_msgSend_decodeBoolForKey_(v4, v17, @"AllowsReadOnlyParticipantsToSeeEachOther"))
      {
        v5->_participantVisibility = 0;
      }

      else
      {
        v5->_participantVisibility = 1;
      }
    }

    v5->_participantSelfRemovalBehavior = objc_msgSend_decodeIntegerForKey_(v4, v17, @"ParticipantSelfRemovalBehavior");
    v5->_allowsAnonymousPublicAccess = objc_msgSend_decodeBoolForKey_(v4, v18, @"AllowsAnonymousAccess");
    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v24 = objc_msgSend_setWithObjects_(v19, v23, v20, v21, v22, 0);
    v26 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v25, v24, @"Participants");
    v29 = objc_msgSend_mutableCopy(v26, v27, v28);
    mutableAllParticipants = v5->_mutableAllParticipants;
    v5->_mutableAllParticipants = v29;

    v31 = MEMORY[0x1E695DFD8];
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v34 = objc_opt_class();
    v36 = objc_msgSend_setWithObjects_(v31, v35, v32, v33, v34, 0);
    v38 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v37, v36, @"LastFetchedParticipants");
    v41 = objc_msgSend_mutableCopy(v38, v39, v40);
    lastFetchedParticipants = v5->_lastFetchedParticipants;
    v5->_lastFetchedParticipants = v41;

    v43 = MEMORY[0x1E695DFD8];
    v44 = objc_opt_class();
    v45 = objc_opt_class();
    v46 = objc_opt_class();
    v47 = objc_opt_class();
    v49 = objc_msgSend_setWithObjects_(v43, v48, v44, v45, v46, v47, 0);
    v51 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v50, v49, @"AddedParticipantIDs");
    v54 = objc_msgSend_mutableCopy(v51, v52, v53);
    addedParticipantIDs = v5->_addedParticipantIDs;
    v5->_addedParticipantIDs = v54;

    v56 = MEMORY[0x1E695DFD8];
    v57 = objc_opt_class();
    v58 = objc_opt_class();
    v59 = objc_opt_class();
    v60 = objc_opt_class();
    v62 = objc_msgSend_setWithObjects_(v56, v61, v57, v58, v59, v60, 0);
    v64 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v63, v62, @"RemovedParticipantIDs");
    v67 = objc_msgSend_mutableCopy(v64, v65, v66);
    removedParticipantIDs = v5->_removedParticipantIDs;
    v5->_removedParticipantIDs = v67;

    v69 = MEMORY[0x1E695DFD8];
    v70 = objc_opt_class();
    v71 = objc_opt_class();
    v72 = objc_opt_class();
    v74 = objc_msgSend_setWithObjects_(v69, v73, v70, v71, v72, 0);
    v76 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v75, v74, @"Requesters");
    v79 = objc_msgSend_mutableCopy(v76, v77, v78);
    mutableRequesters = v5->_mutableRequesters;
    v5->_mutableRequesters = v79;

    v81 = MEMORY[0x1E695DFD8];
    v82 = objc_opt_class();
    v83 = objc_opt_class();
    v84 = objc_opt_class();
    v86 = objc_msgSend_setWithObjects_(v81, v85, v82, v83, v84, 0);
    v88 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v87, v86, @"ApprovedRequesters");
    v91 = objc_msgSend_mutableCopy(v88, v89, v90);
    mutableApprovedRequesters = v5->_mutableApprovedRequesters;
    v5->_mutableApprovedRequesters = v91;

    v93 = MEMORY[0x1E695DFD8];
    v94 = objc_opt_class();
    v95 = objc_opt_class();
    v96 = objc_opt_class();
    v97 = objc_opt_class();
    v99 = objc_msgSend_setWithObjects_(v93, v98, v94, v95, v96, v97, 0);
    v101 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v100, v99, @"BlockedIdentities");
    v104 = objc_msgSend_mutableCopy(v101, v102, v103);
    mutableBlockedIdentities = v5->_mutableBlockedIdentities;
    v5->_mutableBlockedIdentities = v104;

    v5->_accessRequestsEnabled = objc_msgSend_decodeBoolForKey_(v4, v106, @"AccessRequestsEnabled");
    v107 = MEMORY[0x1E695DFD8];
    v108 = objc_opt_class();
    v109 = objc_opt_class();
    v110 = objc_opt_class();
    v111 = objc_opt_class();
    v113 = objc_msgSend_setWithObjects_(v107, v112, v108, v109, v110, v111, 0);
    v115 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v114, v113, @"oneTimeURLMetadatasByParticipantID");
    oneTimeURLMetadatasByParticipantID = v5->_oneTimeURLMetadatasByParticipantID;
    v5->_oneTimeURLMetadatasByParticipantID = v115;

    v117 = MEMORY[0x1E695DFD8];
    v118 = objc_opt_class();
    v119 = objc_opt_class();
    v120 = objc_opt_class();
    v121 = objc_opt_class();
    v123 = objc_msgSend_setWithObjects_(v117, v122, v118, v119, v120, v121, 0);
    v125 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v124, v123, @"InvitedKeysToRemove");
    invitedKeysToRemove = v5->_invitedKeysToRemove;
    v5->_invitedKeysToRemove = v125;

    v127 = objc_opt_class();
    v129 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v128, v127, @"InvitedPCS");
    invitedProtectionData = v5->_invitedProtectionData;
    v5->_invitedProtectionData = v129;

    v131 = objc_opt_class();
    v133 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v132, v131, @"InvitedPCSEtag");
    invitedProtectionEtag = v5->_invitedProtectionEtag;
    v5->_invitedProtectionEtag = v133;

    v135 = objc_opt_class();
    v137 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v136, v135, @"PreviousInvitedPCSEtag");
    previousInvitedProtectionEtag = v5->_previousInvitedProtectionEtag;
    v5->_previousInvitedProtectionEtag = v137;

    v139 = objc_opt_class();
    v141 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v140, v139, @"PublicPCS");
    publicProtectionData = v5->_publicProtectionData;
    v5->_publicProtectionData = v141;

    v143 = objc_opt_class();
    v145 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v144, v143, @"PublicPCSEtag");
    publicProtectionEtag = v5->_publicProtectionEtag;
    v5->_publicProtectionEtag = v145;

    v147 = objc_opt_class();
    v149 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v148, v147, @"PreviousPublicPCSEtag");
    previousPublicProtectionEtag = v5->_previousPublicProtectionEtag;
    v5->_previousPublicProtectionEtag = v149;

    objc_autoreleasePoolPop(context);
  }

  return v5;
}

@end