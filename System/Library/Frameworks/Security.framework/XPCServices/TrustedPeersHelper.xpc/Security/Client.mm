@interface Client
- (void)createCustodianRecoveryKeyWithSpecificUser:(id)user recoveryKey:(id)key salt:(id)salt ckksKeys:(id)keys uuid:(id)uuid kind:(int)kind reply:(id)reply;
- (void)dumpWithSpecificUser:(id)user fileDescriptor:(id)descriptor reply:(id)reply;
- (void)fetchAccountSettingsWithSpecificUser:(id)user forceFetch:(BOOL)fetch altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID canSendMetrics:(BOOL)metrics reply:(id)aBlock;
- (void)fetchCurrentPolicyWithSpecificUser:(id)user modelIDOverride:(id)override isInheritedAccount:(BOOL)account reply:(id)reply;
- (void)fetchPolicyDocumentsWithSpecificUser:(id)user versions:(id)versions reply:(id)reply;
- (void)fetchRecoverableTLKSharesWithSpecificUser:(id)user peerID:(id)d altDSID:(id)iD flowID:(id)flowID deviceSessionID:(id)sessionID canSendMetrics:(BOOL)metrics reply:(id)aBlock;
- (void)fetchViableBottlesWithSpecificUser:(id)user source:(int64_t)source flowID:(id)d deviceSessionID:(id)iD reply:(id)reply;
- (void)fetchViableEscrowRecordsWithSpecificUser:(id)user source:(int64_t)source reply:(id)reply;
- (void)joinWithSpecificUser:(id)user voucherData:(id)data voucherSig:(id)sig ckksKeys:(id)keys tlkShares:(id)shares preapprovedKeys:(id)preapprovedKeys flowID:(id)d deviceSessionID:(id)self0 canSendMetrics:(BOOL)self1 reply:(id)aBlock;
- (void)performCKServerUnreadableDataRemovalWithSpecificUser:(id)user isGuitarfish:(BOOL)guitarfish accountIsW:(BOOL)w internalAccount:(BOOL)account demoAccount:(BOOL)demoAccount altDSID:(id)d flowID:(id)iD deviceSessionID:(id)self0 canSendMetrics:(BOOL)self1 reply:(id)aBlock;
- (void)pingWithReply:(id)reply;
- (void)preflightPreapprovedJoinWithSpecificUser:(id)user preapprovedKeys:(id)keys reply:(id)reply;
- (void)preflightVouchWithBottleWithSpecificUser:(id)user bottleID:(id)d altDSID:(id)iD flowID:(id)flowID deviceSessionID:(id)sessionID canSendMetrics:(BOOL)metrics reply:(id)aBlock;
- (void)preflightVouchWithCustodianRecoveryKeyWithSpecificUser:(id)user crk:(id)crk reply:(id)reply;
- (void)prepareInheritancePeerWithSpecificUser:(id)user epoch:(unint64_t)epoch machineID:(id)d bottleSalt:(id)salt bottleID:(id)iD modelID:(id)modelID deviceName:(id)name serialNumber:(id)self0 osVersion:(id)self1 policyVersion:(id)self2 policySecrets:(id)self3 syncUserControllableViews:(int)self4 secureElementIdentity:(id)self5 signingPrivKeyPersistentRef:(id)self6 encPrivKeyPersistentRef:(id)self7 crk:(id)self8 reply:(id)aBlock;
- (void)prepareWithSpecificUser:(id)user epoch:(unint64_t)epoch machineID:(id)d bottleSalt:(id)salt bottleID:(id)iD modelID:(id)modelID deviceName:(id)name serialNumber:(id)self0 osVersion:(id)self1 policyVersion:(id)self2 policySecrets:(id)self3 syncUserControllableViews:(int)self4 secureElementIdentity:(id)self5 setting:(id)self6 signingPrivKeyPersistentRef:(id)self7 encPrivKeyPersistentRef:(id)self8 reply:(id)aBlock;
- (void)requestEscrowCheckWithSpecificUser:(id)user requiresEscrowCheck:(BOOL)check passcodeGeneration:(unint64_t)generation knownFederations:(id)federations isBackgroundCheck:(BOOL)backgroundCheck flowID:(id)d deviceSessionID:(id)iD reply:(id)self0;
- (void)requestHealthCheckWithSpecificUser:(id)user requiresEscrowCheck:(BOOL)check repair:(BOOL)repair danglingPeerCleanup:(BOOL)cleanup caesarPeerCleanup:(BOOL)peerCleanup updateIdMS:(BOOL)s knownFederations:(id)federations flowID:(id)self0 deviceSessionID:(id)self1 reply:(id)self2;
- (void)resetAccountCDPContentsWithSpecificUser:(id)user idmsTargetContext:(id)context idmsCuttlefishPassword:(id)password notifyIdMS:(BOOL)s internalAccount:(BOOL)account demoAccount:(BOOL)demoAccount reply:(id)aBlock;
- (void)resetWithSpecificUser:(id)user resetReason:(int64_t)reason idmsTargetContext:(id)context idmsCuttlefishPassword:(id)password notifyIdMS:(BOOL)s internalAccount:(BOOL)account demoAccount:(BOOL)demoAccount isGuitarfish:(BOOL)self0 accountIsW:(BOOL)self1 accountType:(int64_t)self2 altDSID:(id)self3 flowID:(id)self4 deviceSessionID:(id)self5 canSendMetrics:(BOOL)self6 reply:(id)aBlock;
- (void)setAllowedMachineIDsWithSpecificUser:(id)user allowedMachineIDs:(id)ds userInitiatedRemovals:(id)removals evictedRemovals:(id)evictedRemovals unknownReasonRemovals:(id)reasonRemovals honorIDMSListChanges:(BOOL)changes version:(id)version flowID:(id)self0 deviceSessionID:(id)self1 canSendMetrics:(BOOL)self2 altDSID:(id)self3 trustedDeviceHash:(id)self4 deletedDeviceHash:(id)self5 trustedDevicesUpdateTimestamp:(id)self6 reply:(id)aBlock;
- (void)setPreapprovedKeysWithSpecificUser:(id)user preapprovedKeys:(id)keys reply:(id)reply;
- (void)updateWithSpecificUser:(id)user forceRefetch:(BOOL)refetch deviceName:(id)name serialNumber:(id)number osVersion:(id)version policyVersion:(id)policyVersion policySecrets:(id)secrets syncUserControllableViews:(id)self0 secureElementIdentity:(id)self1 walrusSetting:(id)self2 webAccess:(id)self3 reply:(id)aBlock;
- (void)vouchWithBottleWithSpecificUser:(id)user bottleID:(id)d entropy:(id)entropy bottleSalt:(id)salt tlkShares:(id)shares altDSID:(id)iD flowID:(id)flowID deviceSessionID:(id)self0 canSendMetrics:(BOOL)self1 reply:(id)aBlock;
- (void)vouchWithRerollWithSpecificUser:(id)user oldPeerID:(id)d tlkShares:(id)shares reply:(id)reply;
- (void)vouchWithSpecificUser:(id)user peerID:(id)d permanentInfo:(id)info permanentInfoSig:(id)sig stableInfo:(id)stableInfo stableInfoSig:(id)infoSig ckksKeys:(id)keys flowID:(id)self0 deviceSessionID:(id)self1 canSendMetrics:(BOOL)self2 reply:(id)aBlock;
@end

@implementation Client

- (void)pingWithReply:(id)reply
{
  v3 = _Block_copy(reply);
  v3[2]();

  _Block_release(v3);
}

- (void)dumpWithSpecificUser:(id)user fileDescriptor:(id)descriptor reply:(id)reply
{
  v8 = _Block_copy(reply);
  _Block_copy(v8);
  userCopy = user;
  swift_unknownObjectRetain();

  sub_1001B4D20(user, descriptor, self, v8);
  _Block_release(v8);
  _Block_release(v8);

  swift_unknownObjectRelease();

  self, v10, v11, v12, v13, v14, v15, v16;
}

- (void)resetWithSpecificUser:(id)user resetReason:(int64_t)reason idmsTargetContext:(id)context idmsCuttlefishPassword:(id)password notifyIdMS:(BOOL)s internalAccount:(BOOL)account demoAccount:(BOOL)demoAccount isGuitarfish:(BOOL)self0 accountIsW:(BOOL)self1 accountType:(int64_t)self2 altDSID:(id)self3 flowID:(id)self4 deviceSessionID:(id)self5 canSendMetrics:(BOOL)self6 reply:(id)aBlock
{
  sCopy = s;
  accountCopy = account;
  dCopy = d;
  v22 = _Block_copy(aBlock);
  if (context)
  {
    v119 = sub_100216974();
    v124 = v23;
    if (password)
    {
      goto LABEL_3;
    }

LABEL_6:
    v118 = 0;
    v120 = 0;
    if (d)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v119 = 0;
  v124 = 0;
  if (!password)
  {
    goto LABEL_6;
  }

LABEL_3:
  v118 = sub_100216974();
  v120 = v24;
  if (d)
  {
LABEL_4:
    dCopy = sub_100216974();
    v26 = v25;
    goto LABEL_8;
  }

LABEL_7:
  v26 = 0;
LABEL_8:
  userCopy = user;
  iDCopy = iD;
  sessionIDCopy = sessionID;

  if (iDCopy)
  {
    v30 = sub_100216974();
    v32 = v31;

    if (sessionIDCopy)
    {
LABEL_10:
      v33 = sub_100216974();
      v35 = v34;

      goto LABEL_13;
    }
  }

  else
  {
    v30 = 0;
    v32 = 0;
    if (sessionIDCopy)
    {
      goto LABEL_10;
    }
  }

  v33 = 0;
  v35 = 0;
LABEL_13:
  _Block_copy(v22);
  sub_1001B6F80(userCopy, reason, v119, v124, v118, v120, sCopy, accountCopy, demoAccount, guitarfish, w, type, dCopy, v26, v30, v32, v33, v35, metrics, self, v22);
  _Block_release(v22);
  _Block_release(v22);

  self, v36, v37, v38, v39, v40, v41, v42;
  v35, v43, v44, v45, v46, v47, v48, v49, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114;
  v32, v50, v51, v52, v53, v54, v55, v56, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115;
  v26, v57, v58, v59, v60, v61, v62, v63, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116;
  v120, v64, v65, v66, v67, v68, v69, v70, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117;

  v124, v71, v72, v73, v74, v75, v76, v77, demoAccount, type, d, iD, sessionID, metrics, aBlock, v126, v127, v128;
}

- (void)performCKServerUnreadableDataRemovalWithSpecificUser:(id)user isGuitarfish:(BOOL)guitarfish accountIsW:(BOOL)w internalAccount:(BOOL)account demoAccount:(BOOL)demoAccount altDSID:(id)d flowID:(id)iD deviceSessionID:(id)self0 canSendMetrics:(BOOL)self1 reply:(id)aBlock
{
  LODWORD(v67) = account;
  HIDWORD(v67) = demoAccount;
  LODWORD(v65) = guitarfish;
  HIDWORD(v65) = w;
  iDCopy = iD;
  sessionIDCopy = sessionID;
  v17 = _Block_copy(aBlock);
  if (d)
  {
    v18 = sub_100216974();
    d = v19;
    if (iD)
    {
      goto LABEL_3;
    }

LABEL_6:
    v21 = 0;
    if (sessionID)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v18 = 0;
  if (!iD)
  {
    goto LABEL_6;
  }

LABEL_3:
  iDCopy = sub_100216974();
  v21 = v20;
  if (sessionID)
  {
LABEL_4:
    v22 = sub_100216974();
    sessionIDCopy = v23;
    goto LABEL_8;
  }

LABEL_7:
  v22 = 0;
LABEL_8:
  userCopy = user;

  _Block_copy(v17);
  sub_1001B7A64(userCopy, v65, SHIDWORD(v65), v67, SHIDWORD(v67), v18, d, iDCopy, v21, v22, sessionIDCopy, metrics, self, v17);
  _Block_release(v17);
  _Block_release(v17);

  self, v25, v26, v27, v28, v29, v30, v31;
  sessionIDCopy, v32, v33, v34, v35, v36, v37, v38, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71;
  v21, v39, v40, v41, v42, v43, v44, v45, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72;

  d, v46, v47, v48, v49, v50, v51, v52, iD, sessionID, metrics, aBlock, v74, v75, v76, v77, v78, v79;
}

- (void)setAllowedMachineIDsWithSpecificUser:(id)user allowedMachineIDs:(id)ds userInitiatedRemovals:(id)removals evictedRemovals:(id)evictedRemovals unknownReasonRemovals:(id)reasonRemovals honorIDMSListChanges:(BOOL)changes version:(id)version flowID:(id)self0 deviceSessionID:(id)self1 canSendMetrics:(BOOL)self2 altDSID:(id)self3 trustedDeviceHash:(id)self4 deletedDeviceHash:(id)self5 trustedDevicesUpdateTimestamp:(id)self6 reply:(id)aBlock
{
  v212 = _Block_copy(aBlock);
  v217 = sub_100216BB4();
  if (removals)
  {
    v219 = sub_100216BB4();
    if (evictedRemovals)
    {
      goto LABEL_3;
    }

LABEL_6:
    v216 = 0;
    if (reasonRemovals)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v219 = 0;
  if (!evictedRemovals)
  {
    goto LABEL_6;
  }

LABEL_3:
  v216 = sub_100216BB4();
  if (reasonRemovals)
  {
LABEL_4:
    v215 = sub_100216BB4();
    goto LABEL_8;
  }

LABEL_7:
  v215 = 0;
LABEL_8:
  userCopy = user;
  versionCopy = version;
  dCopy = d;
  iDCopy = iD;
  sIDCopy = sID;
  hashCopy = hash;
  deviceHashCopy = deviceHash;
  timestampCopy = timestamp;

  if (versionCopy)
  {
    v210 = sub_100216974();
    v213 = v27;

    if (dCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v210 = 0;
    v213 = 0;
    if (dCopy)
    {
LABEL_10:
      v209 = sub_100216974();
      v29 = v28;

      if (iDCopy)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }
  }

  v209 = 0;
  v29 = 0;
  if (iDCopy)
  {
LABEL_11:
    v208 = sub_100216974();
    v31 = v30;

    if (sIDCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

LABEL_17:
  v208 = 0;
  v31 = 0;
  if (sIDCopy)
  {
LABEL_12:
    v32 = sub_100216974();
    v34 = v33;

    if (hashCopy)
    {
      goto LABEL_13;
    }

LABEL_19:
    v35 = 0;
    v37 = 0;
    if (deviceHashCopy)
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

LABEL_18:
  v32 = 0;
  v34 = 0;
  if (!hashCopy)
  {
    goto LABEL_19;
  }

LABEL_13:
  v35 = sub_100216974();
  v37 = v36;

  if (deviceHashCopy)
  {
LABEL_14:
    v38 = sub_100216974();
    v40 = v39;

    goto LABEL_21;
  }

LABEL_20:
  v38 = 0;
  v40 = 0;
LABEL_21:
  _Block_copy(v212);
  sub_1001B8B3C(userCopy, v217, v219, v216, v215, changes, v210, v213, v209, v29, v208, v31, v32, v34, v35, v37, v38, v40, self, v212);
  _Block_release(v212);
  _Block_release(v212);

  self, v41, v42, v43, v44, v45, v46, v47;
  v217, v48, v49, v50, v51, v52, v53, v54, v118, v127, v136, v145, v154, v163, v172, v181, v190, v199;
  v40, v55, v56, v57, v58, v59, v60, v61, v119, v128, v137, v146, v155, v164, v173, v182, v191, v200;
  v37, v62, v63, v64, v65, v66, v67, v68, v120, v129, v138, v147, v156, v165, v174, v183, v192, v201;
  v34, v69, v70, v71, v72, v73, v74, v75, v121, v130, v139, v148, v157, v166, v175, v184, v193, v202;
  v31, v76, v77, v78, v79, v80, v81, v82, v122, v131, v140, v149, v158, v167, v176, v185, v194, v203;
  v29, v83, v84, v85, v86, v87, v88, v89, v123, v132, v141, v150, v159, v168, v177, v186, v195, v204;
  v213, v90, v91, v92, v93, v94, v95, v96, v124, v133, v142, v151, v160, v169, v178, v187, v196, v205;
  v215, v97, v98, v99, v100, v101, v102, v103, v125, v134, v143, v152, v161, v170, v179, v188, v197, v206;
  v216, v104, v105, v106, v107, v108, v109, v110, v126, v135, v144, v153, v162, v171, v180, v189, v198, v207;

  v219, v111, v112, v113, v114, v115, v116, v117, version, d, iD, metrics, sID, hash, deviceHash, timestamp, aBlock, v222;
}

- (void)prepareWithSpecificUser:(id)user epoch:(unint64_t)epoch machineID:(id)d bottleSalt:(id)salt bottleID:(id)iD modelID:(id)modelID deviceName:(id)name serialNumber:(id)self0 osVersion:(id)self1 policyVersion:(id)self2 policySecrets:(id)self3 syncUserControllableViews:(int)self4 secureElementIdentity:(id)self5 setting:(id)self6 signingPrivKeyPersistentRef:(id)self7 encPrivKeyPersistentRef:(id)self8 reply:(id)aBlock
{
  v19 = _Block_copy(aBlock);
  v193 = sub_100216974();
  v196 = v20;
  v192 = sub_100216974();
  v195 = v21;
  v191 = sub_100216974();
  v194 = v22;
  v190 = sub_100216974();
  v199 = v23;
  if (name)
  {
    v189 = sub_100216974();
    v198 = v24;
    if (number)
    {
LABEL_3:
      v188 = sub_100216974();
      v26 = v25;
      goto LABEL_6;
    }
  }

  else
  {
    v189 = 0;
    v198 = 0;
    if (number)
    {
      goto LABEL_3;
    }
  }

  v188 = 0;
  v26 = 0;
LABEL_6:
  v184 = sub_100216974();
  v28 = v27;
  if (secrets)
  {
    v197 = sub_1002168D4();
  }

  else
  {
    v197 = 0;
  }

  userCopy = user;
  policyVersionCopy = policyVersion;
  identityCopy = identity;
  settingCopy = setting;
  refCopy = ref;
  persistentRefCopy = persistentRef;

  if (refCopy)
  {
    v33 = sub_100216224();
    v35 = v34;

    if (persistentRefCopy)
    {
LABEL_11:
      v36 = sub_100216224();
      v38 = v37;

      goto LABEL_14;
    }
  }

  else
  {
    v33 = 0;
    v35 = 0xF000000000000000;
    if (persistentRefCopy)
    {
      goto LABEL_11;
    }
  }

  v36 = 0;
  v38 = 0xF000000000000000;
LABEL_14:
  _Block_copy(v19);
  sub_1001BA790(userCopy, v193, v196, v192, v195, v191, v194, v190, v199, v189, v198, v188, v26, v184, v28, policyVersionCopy, v197, views, identityCopy, settingCopy, v33, v35, v36, v38, self, v19);
  _Block_release(v19);
  _Block_release(v19);
  sub_10004CD18(v36, v38, v39, v40, v41, v42, v43, v44);
  sub_10004CD18(v33, v35, v45, v46, v47, v48, v49, v50);

  self, v51, v52, v53, v54, v55, v56, v57;
  v196, v58, v59, v60, v61, v62, v63, v64, v114, v121, v128, v135, v142, v149, v156, v163, v170, v177;
  v195, v65, v66, v67, v68, v69, v70, v71, v115, v122, v129, v136, v143, v150, v157, v164, v171, v178;
  v194, v72, v73, v74, v75, v76, v77, v78, v116, v123, v130, v137, v144, v151, v158, v165, v172, v179;
  v199, v79, v80, v81, v82, v83, v84, v85, v117, v124, v131, v138, v145, v152, v159, v166, v173, v180;
  v28, v86, v87, v88, v89, v90, v91, v92, v118, v125, v132, v139, v146, v153, v160, v167, v174, v181;
  v197, v93, v94, v95, v96, v97, v98, v99, v119, v126, v133, v140, v147, v154, v161, v168, v175, v182;
  v26, v100, v101, v102, v103, v104, v105, v106, v120, v127, v134, v141, v148, v155, v162, v169, v176, v183;

  v198, v107, v108, v109, v110, v111, v112, v113, name, number, version, policyVersion, secrets, views, identity, setting, ref, persistentRef;
}

- (void)prepareInheritancePeerWithSpecificUser:(id)user epoch:(unint64_t)epoch machineID:(id)d bottleSalt:(id)salt bottleID:(id)iD modelID:(id)modelID deviceName:(id)name serialNumber:(id)self0 osVersion:(id)self1 policyVersion:(id)self2 policySecrets:(id)self3 syncUserControllableViews:(int)self4 secureElementIdentity:(id)self5 signingPrivKeyPersistentRef:(id)self6 encPrivKeyPersistentRef:(id)self7 crk:(id)self8 reply:(id)aBlock
{
  secretsCopy = secrets;
  v21 = _Block_copy(aBlock);
  v155 = sub_100216974();
  v158 = v22;
  v154 = sub_100216974();
  v159 = v23;
  if (name)
  {
    v152 = sub_100216974();
    v157 = v24;
    if (number)
    {
LABEL_3:
      v150 = sub_100216974();
      v156 = v25;
      goto LABEL_6;
    }
  }

  else
  {
    v152 = 0;
    v157 = 0;
    if (number)
    {
      goto LABEL_3;
    }
  }

  v150 = 0;
  v156 = 0;
LABEL_6:
  v148 = sub_100216974();
  v153 = v26;
  if (secrets)
  {
    secretsCopy = sub_1002168D4();
  }

  userCopy = user;
  policyVersionCopy = policyVersion;
  identityCopy = identity;
  refCopy = ref;
  persistentRefCopy = persistentRef;
  crkCopy = crk;

  if (refCopy)
  {
    v149 = sub_100216224();
    v147 = v33;

    if (persistentRefCopy)
    {
LABEL_10:
      v151 = sub_100216224();
      v146 = v34;

      goto LABEL_13;
    }
  }

  else
  {
    v149 = 0;
    v147 = 0xF000000000000000;
    if (persistentRefCopy)
    {
      goto LABEL_10;
    }
  }

  v151 = 0;
  v146 = 0xF000000000000000;
LABEL_13:
  _Block_copy(v21);
  sub_1001BAD7C(userCopy, v155, v158, v154, v159, v152, v157, v150, v156, v148, v153, policyVersionCopy, secretsCopy, views, identityCopy, crkCopy, self, v21);
  _Block_release(v21);
  _Block_release(v21);
  sub_10004CD18(v151, v146, v35, v36, v37, v38, v39, v40);
  sub_10004CD18(v149, v147, v41, v42, v43, v44, v45, v46);

  self, v47, v48, v49, v50, v51, v52, v53;
  v158, v54, v55, v56, v57, v58, v59, v60, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141;
  v159, v61, v62, v63, v64, v65, v66, v67, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142;
  v153, v68, v69, v70, v71, v72, v73, v74, v98, v103, v108, v113, v118, v123, v128, v133, v138, v143;
  secretsCopy, v75, v76, v77, v78, v79, v80, v81, v99, v104, v109, v114, v119, v124, v129, v134, v139, v144;
  v156, v82, v83, v84, v85, v86, v87, v88, v100, v105, v110, v115, v120, v125, v130, v135, v140, v145;

  v157, v89, v90, v91, v92, v93, v94, v95, name, number, version, policyVersion, secrets, views, identity, ref, persistentRef, crk;
}

- (void)vouchWithSpecificUser:(id)user peerID:(id)d permanentInfo:(id)info permanentInfoSig:(id)sig stableInfo:(id)stableInfo stableInfoSig:(id)infoSig ckksKeys:(id)keys flowID:(id)self0 deviceSessionID:(id)self1 canSendMetrics:(BOOL)self2 reply:(id)aBlock
{
  v139 = _Block_copy(aBlock);
  v137 = sub_100216974();
  v140 = v19;
  infoCopy = info;
  sigCopy = sig;
  stableInfoCopy = stableInfo;
  infoSigCopy = infoSig;
  keysCopy = keys;

  userCopy = user;
  iDCopy = iD;
  sessionIDCopy = sessionID;
  v27 = sub_100216224();
  v135 = v28;
  v136 = v27;

  v29 = sub_100216224();
  v133 = v30;
  v134 = v29;

  v132 = sub_100216224();
  v32 = v31;

  v33 = sub_100216224();
  v35 = v34;

  sub_10000200C(0, &qword_10029D938, off_100275018);
  v36 = sub_100216B24();

  if (iDCopy)
  {
    v37 = sub_100216974();
    v39 = v38;

    if (sessionIDCopy)
    {
LABEL_3:
      v40 = sub_100216974();
      v42 = v41;

      goto LABEL_6;
    }
  }

  else
  {
    v37 = 0;
    v39 = 0;
    if (sessionIDCopy)
    {
      goto LABEL_3;
    }
  }

  v40 = 0;
  v42 = 0;
LABEL_6:
  _Block_copy(v139);
  sub_1001BBE44(userCopy, v137, v140, v136, v135, v134, v133, v132, v32, v33, v35, v36, v37, v39, v40, v42, metrics, self, v139);
  _Block_release(v139);
  _Block_release(v139);
  v36, v43, v44, v45, v46, v47, v48, v49, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129;
  v42, v50, v51, v52, v53, v54, v55, v56, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130;
  v39, v57, v58, v59, v60, v61, v62, v63, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131;
  sub_100002BF0(v33, v35, v64, v65, v66, v67, v68, v69);
  sub_100002BF0(v132, v32, v70, v71, v72, v73, v74, v75);
  sub_100002BF0(v134, v133, v76, v77, v78, v79, v80, v81);
  sub_100002BF0(v136, v135, v82, v83, v84, v85, v86, v87);

  self, v88, v89, v90, v91, v92, v93, v94;

  v140, v95, v96, v97, v98, v99, v100, v101, keys, iD, sessionID, metrics, aBlock, v142, v143, v144, v145, v146;
}

- (void)preflightVouchWithBottleWithSpecificUser:(id)user bottleID:(id)d altDSID:(id)iD flowID:(id)flowID deviceSessionID:(id)sessionID canSendMetrics:(BOOL)metrics reply:(id)aBlock
{
  v14 = _Block_copy(aBlock);
  v71 = sub_100216974();
  v16 = v15;
  if (iD)
  {
    v17 = sub_100216974();
    iD = v18;
    if (flowID)
    {
      goto LABEL_3;
    }

LABEL_6:
    v20 = 0;
    if (sessionID)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v17 = 0;
  if (!flowID)
  {
    goto LABEL_6;
  }

LABEL_3:
  flowID = sub_100216974();
  v20 = v19;
  if (sessionID)
  {
LABEL_4:
    v21 = sub_100216974();
    sessionID = v22;
    goto LABEL_8;
  }

LABEL_7:
  v21 = 0;
LABEL_8:
  userCopy = user;

  _Block_copy(v14);
  sub_1001BC758(userCopy, v71, v16, v17, iD, flowID, v20, v21, sessionID, metrics, self, v14);
  _Block_release(v14);
  _Block_release(v14);

  self, v24, v25, v26, v27, v28, v29, v30;
  v16, v31, v32, v33, v34, v35, v36, v37, v59, v62, v65, v68, v71, v74, v78, v81, v84, v87;
  sessionID, v38, v39, v40, v41, v42, v43, v44, v60, v63, v66, v69, v72, v75, v79, v82, v85, v88;
  v20, v45, v46, v47, v48, v49, v50, v51, v61, v64, v67, v70, v73, v76, v80, v83, v86, v89;

  iD, v52, v53, v54, v55, v56, v57, v58, aBlock, v91, v92, v93, v94, v95, v96, v97, v98, v99;
}

- (void)vouchWithBottleWithSpecificUser:(id)user bottleID:(id)d entropy:(id)entropy bottleSalt:(id)salt tlkShares:(id)shares altDSID:(id)iD flowID:(id)flowID deviceSessionID:(id)self0 canSendMetrics:(BOOL)self1 reply:(id)aBlock
{
  v144 = _Block_copy(aBlock);
  v148 = sub_100216974();
  v150 = v17;
  entropyCopy = entropy;
  saltCopy = salt;
  sharesCopy = shares;
  selfCopy = self;

  userCopy = user;
  iDCopy = iD;
  flowIDCopy = flowID;
  sessionIDCopy = sessionID;
  v24 = sub_100216224();
  v145 = v25;
  v147 = v24;

  v26 = sub_100216974();
  v143 = v27;

  sub_10000200C(0, &qword_10029DEB0, off_100275028);
  v138 = sub_100216B24();

  if (iDCopy)
  {
    v28 = sub_100216974();
    v30 = v29;

    if (flowIDCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v31 = 0;
    v33 = 0;
    if (sessionIDCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v28 = 0;
  v30 = 0;
  if (!flowIDCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  v31 = sub_100216974();
  v33 = v32;

  if (sessionIDCopy)
  {
LABEL_4:
    v34 = sub_100216974();
    v36 = v35;

    goto LABEL_8;
  }

LABEL_7:
  v34 = 0;
  v36 = 0;
LABEL_8:
  _Block_copy(v144);
  v37 = v138;
  sub_1001BCF38(userCopy, v148, v150, v147, v145, v26, v143, v138, v28, v30, v31, v33, v34, v36, metrics, selfCopy, v144);
  _Block_release(v144);
  _Block_release(v144);
  v143, v38, v39, v40, v41, v42, v43, v44, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138;
  v37, v45, v46, v47, v48, v49, v50, v51, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139;
  v36, v52, v53, v54, v55, v56, v57, v58, v95, v100, v105, v110, v115, v120, v125, v130, v135, v140;
  v33, v59, v60, v61, v62, v63, v64, v65, v96, v101, v106, v111, v116, v121, v126, v131, v136, v141;
  v30, v66, v67, v68, v69, v70, v71, v72, v97, v102, v107, v112, v117, v122, v127, v132, v137, v142;
  sub_100002BF0(v147, v145, v73, v74, v75, v76, v77, v78);

  selfCopy, v79, v80, v81, v82, v83, v84, v85;

  v150, v86, v87, v88, v89, v90, v91, v92, flowID, sessionID, metrics, aBlock, v153, v154, v155, v156, v157, v158;
}

- (void)preflightVouchWithCustodianRecoveryKeyWithSpecificUser:(id)user crk:(id)crk reply:(id)reply
{
  v8 = _Block_copy(reply);
  _Block_copy(v8);
  userCopy = user;
  crkCopy = crk;

  sub_1001BE7B0(user, crkCopy, self, v8);
  _Block_release(v8);
  _Block_release(v8);

  self, v11, v12, v13, v14, v15, v16, v17;
}

- (void)vouchWithRerollWithSpecificUser:(id)user oldPeerID:(id)d tlkShares:(id)shares reply:(id)reply
{
  v8 = _Block_copy(reply);
  v9 = sub_100216974();
  v11 = v10;
  sub_10000200C(0, &qword_10029DEB0, off_100275028);
  v12 = sub_100216B24();
  _Block_copy(v8);
  userCopy = user;

  sub_1001C0570(user, v9, v11, v12, self, v8);
  _Block_release(v8);
  _Block_release(v8);

  self, v14, v15, v16, v17, v18, v19, v20;
  v11, v21, v22, v23, v24, v25, v26, v27, v35, v36, v37, v38, v39, v40, v41, v42, vars0, vars8;

  v12, v28, v29, v30, v31, v32, v33, v34, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55;
}

- (void)joinWithSpecificUser:(id)user voucherData:(id)data voucherSig:(id)sig ckksKeys:(id)keys tlkShares:(id)shares preapprovedKeys:(id)preapprovedKeys flowID:(id)d deviceSessionID:(id)self0 canSendMetrics:(BOOL)self1 reply:(id)aBlock
{
  v148 = _Block_copy(aBlock);
  dataCopy = data;
  sigCopy = sig;
  keysCopy = keys;
  sharesCopy = shares;

  userCopy = user;
  preapprovedKeysCopy = preapprovedKeys;
  dCopy = d;
  iDCopy = iD;
  v24 = sub_100216224();
  v144 = v25;
  v146 = v24;

  v26 = sub_100216224();
  v141 = v27;
  v143 = v26;

  sub_10000200C(0, &qword_10029D938, off_100275018);
  v140 = sub_100216B24();

  sub_10000200C(0, &qword_10029DEB0, off_100275028);
  v135 = sub_100216B24();

  if (preapprovedKeysCopy)
  {
    v130 = sub_100216B24();

    if (dCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v28 = 0;
    v30 = 0;
    if (iDCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v130 = 0;
  if (!dCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  v28 = sub_100216974();
  v30 = v29;

  if (iDCopy)
  {
LABEL_4:
    v31 = sub_100216974();
    v33 = v32;

    goto LABEL_8;
  }

LABEL_7:
  v31 = 0;
  v33 = 0;
LABEL_8:
  _Block_copy(v148);
  v34 = v135;
  v35 = v130;
  sub_1001C0CC8(userCopy, v146, v144, v143, v141, v140, v135, v130, v28, v30, v31, v33, metrics, self, v148);
  _Block_release(v148);
  _Block_release(v148);
  v140, v36, v37, v38, v39, v40, v41, v42, v90, v95, v100, v105, v110, v115, v120, v125, v130, v135;
  v34, v43, v44, v45, v46, v47, v48, v49, v91, v96, v101, v106, v111, v116, v121, v126, v131, v136;
  v33, v50, v51, v52, v53, v54, v55, v56, v92, v97, v102, v107, v112, v117, v122, v127, v132, v137;
  v30, v57, v58, v59, v60, v61, v62, v63, v93, v98, v103, v108, v113, v118, v123, v128, v133, v138;
  v35, v64, v65, v66, v67, v68, v69, v70, v94, v99, v104, v109, v114, v119, v124, v129, v134, v139;
  sub_100002BF0(v143, v141, v71, v72, v73, v74, v75, v76);
  sub_100002BF0(v146, v144, v77, v78, v79, v80, v81, v82);

  self, v83, v84, v85, v86, v87, v88, v89;
}

- (void)preflightPreapprovedJoinWithSpecificUser:(id)user preapprovedKeys:(id)keys reply:(id)reply
{
  v8 = _Block_copy(reply);
  if (keys)
  {
    keys = sub_100216B24();
  }

  _Block_copy(v8);
  userCopy = user;

  sub_1001C178C(user, keys, self, v8);
  _Block_release(v8);
  _Block_release(v8);

  self, v10, v11, v12, v13, v14, v15, v16;

  keys, v17, v18, v19, v20, v21, v22, v23, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34;
}

- (void)updateWithSpecificUser:(id)user forceRefetch:(BOOL)refetch deviceName:(id)name serialNumber:(id)number osVersion:(id)version policyVersion:(id)policyVersion policySecrets:(id)secrets syncUserControllableViews:(id)self0 secureElementIdentity:(id)self1 walrusSetting:(id)self2 webAccess:(id)self3 reply:(id)aBlock
{
  HIDWORD(v91) = refetch;
  v19 = _Block_copy(aBlock);
  if (name)
  {
    name = sub_100216974();
    v100 = v20;
    if (number)
    {
      goto LABEL_3;
    }

LABEL_6:
    v97 = 0;
    v99 = 0;
    if (version)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v100 = 0;
  if (!number)
  {
    goto LABEL_6;
  }

LABEL_3:
  v97 = sub_100216974();
  v99 = v21;
  if (version)
  {
LABEL_4:
    v94 = sub_100216974();
    v98 = v22;
    goto LABEL_8;
  }

LABEL_7:
  v94 = 0;
  v98 = 0;
LABEL_8:
  userCopy = user;
  policyVersionCopy = policyVersion;
  secretsCopy = secrets;
  viewsCopy = views;
  identityCopy = identity;
  settingCopy = setting;
  accessCopy = access;

  if (secretsCopy)
  {
    v30 = sub_1002168D4();
  }

  else
  {
    v30 = 0;
  }

  _Block_copy(v19);
  *&v75 = identityCopy;
  *(&v75 + 1) = settingCopy;
  sub_1001C2714(userCopy, SHIDWORD(v91), name, v100, v97, v99, v94, v98, policyVersionCopy, v30, viewsCopy, v75, accessCopy, self, v19);
  _Block_release(v19);
  _Block_release(v19);

  self, v31, v32, v33, v34, v35, v36, v37;
  v30, v38, v39, v40, v41, v42, v43, v44, v66, v69, v72, v76, v79, v82, v85, v88, v91, v94;
  v98, v45, v46, v47, v48, v49, v50, v51, v67, v70, v73, v77, v80, v83, v86, v89, v92, v95;
  v99, v52, v53, v54, v55, v56, v57, v58, v68, v71, v74, v78, v81, v84, v87, v90, v93, v96;

  v100, v59, v60, v61, v62, v63, v64, v65, secrets, views, identity, setting, access, aBlock, v103, v104, v105, v106;
}

- (void)setPreapprovedKeysWithSpecificUser:(id)user preapprovedKeys:(id)keys reply:(id)reply
{
  v7 = _Block_copy(reply);
  v8 = sub_100216B24();
  _Block_copy(v7);
  userCopy = user;

  sub_1001C3050(user, v8, self, v7);
  _Block_release(v7);
  _Block_release(v7);

  self, v10, v11, v12, v13, v14, v15, v16;

  v8, v17, v18, v19, v20, v21, v22, v23, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34;
}

- (void)fetchViableBottlesWithSpecificUser:(id)user source:(int64_t)source flowID:(id)d deviceSessionID:(id)iD reply:(id)reply
{
  v12 = _Block_copy(reply);
  if (d)
  {
    v13 = sub_100216974();
    d = v14;
    if (iD)
    {
LABEL_3:
      v15 = sub_100216974();
      iD = v16;
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (iD)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
LABEL_6:
  userCopy = user;

  _Block_copy(v12);
  sub_1001C525C(user, source, v13, d, v15, iD, self, v12);
  _Block_release(v12);
  _Block_release(v12);

  self, v18, v19, v20, v21, v22, v23, v24;
  iD, v25, v26, v27, v28, v29, v30, v31, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48;

  d, v32, v33, v34, v35, v36, v37, v38, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59;
}

- (void)fetchViableEscrowRecordsWithSpecificUser:(id)user source:(int64_t)source reply:(id)reply
{
  v8 = _Block_copy(reply);
  _Block_copy(v8);
  userCopy = user;

  sub_1001C59F8(user, source, self, v8);
  _Block_release(v8);
  _Block_release(v8);

  self, v10, v11, v12, v13, v14, v15, v16;
}

- (void)fetchCurrentPolicyWithSpecificUser:(id)user modelIDOverride:(id)override isInheritedAccount:(BOOL)account reply:(id)reply
{
  accountCopy = account;
  v10 = _Block_copy(reply);
  if (override)
  {
    v11 = sub_100216974();
    override = v12;
  }

  else
  {
    v11 = 0;
  }

  _Block_copy(v10);
  userCopy = user;

  sub_1001C6384(user, v11, override, accountCopy, self, v10);
  _Block_release(v10);
  _Block_release(v10);

  self, v14, v15, v16, v17, v18, v19, v20;

  override, v21, v22, v23, v24, v25, v26, v27, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38;
}

- (void)fetchPolicyDocumentsWithSpecificUser:(id)user versions:(id)versions reply:(id)reply
{
  v7 = _Block_copy(reply);
  sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
  sub_10006094C();
  v8 = sub_100216BB4();
  _Block_copy(v7);
  userCopy = user;

  sub_1001C6AC8(user, v8, self, v7);
  _Block_release(v7);
  _Block_release(v7);

  self, v10, v11, v12, v13, v14, v15, v16;

  v8, v17, v18, v19, v20, v21, v22, v23, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34;
}

- (void)fetchRecoverableTLKSharesWithSpecificUser:(id)user peerID:(id)d altDSID:(id)iD flowID:(id)flowID deviceSessionID:(id)sessionID canSendMetrics:(BOOL)metrics reply:(id)aBlock
{
  HIDWORD(v81) = metrics;
  v15 = _Block_copy(aBlock);
  if (d)
  {
    v78 = sub_100216974();
    d = v16;
    if (iD)
    {
      goto LABEL_3;
    }

LABEL_6:
    v75 = 0;
    if (flowID)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v78 = 0;
  if (!iD)
  {
    goto LABEL_6;
  }

LABEL_3:
  v75 = sub_100216974();
  iD = v17;
  if (flowID)
  {
LABEL_4:
    flowID = sub_100216974();
    v19 = v18;
    goto LABEL_8;
  }

LABEL_7:
  v19 = 0;
LABEL_8:
  userCopy = user;
  sessionIDCopy = sessionID;

  if (sessionIDCopy)
  {
    v22 = sub_100216974();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  _Block_copy(v15);
  sub_1001C70DC(userCopy, v78, d, v75, iD, flowID, v19, v22, v24, SBYTE4(v81), self, v15);
  _Block_release(v15);
  _Block_release(v15);

  self, v25, v26, v27, v28, v29, v30, v31;
  v24, v32, v33, v34, v35, v36, v37, v38, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87;
  v19, v39, v40, v41, v42, v43, v44, v45, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88;
  iD, v46, v47, v48, v49, v50, v51, v52, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89;

  d, v53, v54, v55, v56, v57, v58, v59, aBlock, v91, v92, v93, v94, v95, v96, v97, v98, v99;
}

- (void)createCustodianRecoveryKeyWithSpecificUser:(id)user recoveryKey:(id)key salt:(id)salt ckksKeys:(id)keys uuid:(id)uuid kind:(int)kind reply:(id)reply
{
  HIDWORD(v53) = kind;
  v54 = sub_1002163D4();
  v11 = *(v54 - 1);
  __chkstk_darwin(v54, v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(reply);
  v52 = sub_100216974();
  v17 = v16;
  v18 = sub_100216974();
  v20 = v19;
  sub_10000200C(0, &qword_10029D938, off_100275018);
  v21 = sub_100216B24();
  sub_1002163C4();
  _Block_copy(v15);
  userCopy = user;

  sub_1001C7E70(user, v52, v17, v18, v20, v21, v14, SHIDWORD(v53), self, v15);
  _Block_release(v15);
  _Block_release(v15);

  self, v23, v24, v25, v26, v27, v28, v29;
  v17, v30, v31, v32, v33, v34, v35, v36, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60;
  v20, v37, v38, v39, v40, v41, v42, v43, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60;
  v21, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60;
  (*(v11 + 8))(v14, v54);
}

- (void)requestEscrowCheckWithSpecificUser:(id)user requiresEscrowCheck:(BOOL)check passcodeGeneration:(unint64_t)generation knownFederations:(id)federations isBackgroundCheck:(BOOL)backgroundCheck flowID:(id)d deviceSessionID:(id)iD reply:(id)self0
{
  HIDWORD(v58) = backgroundCheck;
  checkCopy = check;
  iDCopy = iD;
  v16 = _Block_copy(reply);
  v17 = sub_100216B24();
  if (d)
  {
    v18 = sub_100216974();
    v20 = v19;
    if (iD)
    {
LABEL_3:
      v21 = sub_100216974();
      iDCopy = v22;
      goto LABEL_6;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (iD)
    {
      goto LABEL_3;
    }
  }

  v21 = 0;
LABEL_6:
  userCopy = user;

  _Block_copy(v16);
  sub_1001C9860(userCopy, checkCopy, generation, v17, HIDWORD(v58), v18, v20, v21, iDCopy, self, v16);
  _Block_release(v16);
  _Block_release(v16);

  self, v24, v25, v26, v27, v28, v29, v30;
  v17, v31, v32, v33, v34, v35, v36, v37, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70;
  iDCopy, v38, v39, v40, v41, v42, v43, v44, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71;

  v20, v45, v46, v47, v48, v49, v50, v51, iD, reply, v73, v74, v75, v76, v77, v78, v79, v80;
}

- (void)requestHealthCheckWithSpecificUser:(id)user requiresEscrowCheck:(BOOL)check repair:(BOOL)repair danglingPeerCleanup:(BOOL)cleanup caesarPeerCleanup:(BOOL)peerCleanup updateIdMS:(BOOL)s knownFederations:(id)federations flowID:(id)self0 deviceSessionID:(id)self1 reply:(id)self2
{
  LODWORD(v66) = peerCleanup;
  HIDWORD(v66) = s;
  LODWORD(v64) = repair;
  HIDWORD(v64) = cleanup;
  checkCopy = check;
  dCopy = d;
  iDCopy = iD;
  v17 = _Block_copy(reply);
  v18 = sub_100216B24();
  if (d)
  {
    dCopy = sub_100216974();
    v20 = v19;
    if (iD)
    {
LABEL_3:
      v21 = sub_100216974();
      iDCopy = v22;
      goto LABEL_6;
    }
  }

  else
  {
    v20 = 0;
    if (iD)
    {
      goto LABEL_3;
    }
  }

  v21 = 0;
LABEL_6:
  userCopy = user;

  _Block_copy(v17);
  sub_1001CA02C(user, checkCopy, v64, SHIDWORD(v64), v66, SBYTE4(v66), v18, dCopy, v20, v21, iDCopy, self, v17);
  _Block_release(v17);
  _Block_release(v17);

  self, v24, v25, v26, v27, v28, v29, v30;
  v18, v31, v32, v33, v34, v35, v36, v37, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70;
  iDCopy, v38, v39, v40, v41, v42, v43, v44, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71;

  v20, v45, v46, v47, v48, v49, v50, v51, federations, d, iD, reply, v73, v74, v75, v76, v77, v78;
}

- (void)resetAccountCDPContentsWithSpecificUser:(id)user idmsTargetContext:(id)context idmsCuttlefishPassword:(id)password notifyIdMS:(BOOL)s internalAccount:(BOOL)account demoAccount:(BOOL)demoAccount reply:(id)aBlock
{
  HIDWORD(v45) = demoAccount;
  accountCopy = account;
  sCopy = s;
  v15 = _Block_copy(aBlock);
  if (context)
  {
    v16 = sub_100216974();
    context = v17;
    if (password)
    {
LABEL_3:
      v18 = sub_100216974();
      password = v19;
      goto LABEL_6;
    }
  }

  else
  {
    v16 = 0;
    if (password)
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
LABEL_6:
  userCopy = user;

  _Block_copy(v15);
  sub_1001CB790(user, v16, context, v18, password, sCopy, accountCopy, HIDWORD(v45), self, v15);
  _Block_release(v15);
  _Block_release(v15);

  self, v21, v22, v23, v24, v25, v26, v27;
  password, v28, v29, v30, v31, v32, v33, v34, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51;

  context, v35, v36, v37, v38, v39, v40, v41, aBlock, v53, v54, v55, v56, v57, v58, v59, v60, v61;
}

- (void)fetchAccountSettingsWithSpecificUser:(id)user forceFetch:(BOOL)fetch altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID canSendMetrics:(BOOL)metrics reply:(id)aBlock
{
  HIDWORD(v58) = metrics;
  fetchCopy = fetch;
  v15 = _Block_copy(aBlock);
  if (d)
  {
    v16 = sub_100216974();
    d = v17;
    if (iD)
    {
      goto LABEL_3;
    }

LABEL_6:
    v18 = 0;
    v20 = 0;
    if (sessionID)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v16 = 0;
  if (!iD)
  {
    goto LABEL_6;
  }

LABEL_3:
  v18 = sub_100216974();
  v20 = v19;
  if (sessionID)
  {
LABEL_4:
    v21 = sub_100216974();
    sessionID = v22;
    goto LABEL_8;
  }

LABEL_7:
  v21 = 0;
LABEL_8:
  userCopy = user;

  _Block_copy(v15);
  sub_1001CBF18(userCopy, fetchCopy, v16, d, v18, v20, v21, sessionID, SBYTE4(v58), self, v15);
  _Block_release(v15);
  _Block_release(v15);

  self, v24, v25, v26, v27, v28, v29, v30;
  sessionID, v31, v32, v33, v34, v35, v36, v37, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70;
  v20, v38, v39, v40, v41, v42, v43, v44, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71;

  d, v45, v46, v47, v48, v49, v50, v51, aBlock, v73, v74, v75, v76, v77, v78, v79, v80, v81;
}

@end