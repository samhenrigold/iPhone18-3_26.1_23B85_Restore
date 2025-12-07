@interface RPIdentityDaemon
+ (id)sharedIdentityDaemon;
- (BOOL)_removeSameAccountIdentityWithIDSIdentifier:(id)identifier error:(id *)error;
- (BOOL)_stationaryDevice;
- (BOOL)diagnosticCommand:(id)command params:(id)params;
- (BOOL)removeIdentity:(id)identity error:(id *)error;
- (BOOL)saveIdentity:(id)identity error:(id *)error;
- (BOOL)saveIdentityWithIDSDeviceID:(id)d message:(id)message error:(id *)error;
- (RPIdentityDaemon)init;
- (__SecKey)_sepGenerateSelfPrivateKey;
- (__SecKey)_sepLoadSelfPrivateKey;
- (id)_dedupeSameAccountDeviceIdentities:(id)identities;
- (id)_identitiesOfType:(int)type error:(id *)error;
- (id)descriptionWithLevel:(int)level;
- (id)getIdentitiesWithFlags:(unsigned int)flags;
- (id)identitiesOfType:(int)type error:(id *)error;
- (id)identityOfSelfAndReturnError:(id *)error;
- (id)identityOfTemporarySelfAndReturnError:(id *)error;
- (id)resolveIdentitiesForBonjourDevice:(id)device typeFlags:(unsigned int)flags;
- (id)resolveIdentityForBonjourDevice:(id)device typeFlags:(unsigned int)flags;
- (id)resolveIdentityForNearFieldMessagePayload:(id)payload;
- (id)resolveIdentityForSignature:(id)signature data:(id)data typeFlags:(unsigned int)flags error:(id *)error;
- (id)resolveIdentityForTempAuthTagData:(id)data bluetoothAddressData:(id)addressData;
- (id)sameAccountDeviceIDs;
- (unint64_t)featureFlagsForIdentityMatchingIDSDeviceIdentifier:(id)identifier;
- (unint64_t)resolveIdentityforSignature:(id)signature data:(id)data flags:(unsigned int)flags accountaltDSID:(id)d;
- (unsigned)_updateSelfIdentityPrivate:(id)private create:(BOOL)create;
- (unsigned)_updateSelfIdentityPublic:(id)public privateIdentity:(id)identity;
- (unsigned)resolveIdentityTypesForSignature:(id)signature data:(id)data typeFlags:(unsigned int)flags;
- (void)_activate;
- (void)_ensureStarted;
- (void)_ensureStopped;
- (void)_enumerateIdentitiesWithFlag:(unsigned int)flag usingBlock:(id)block;
- (void)_invalidate;
- (void)_invalidated;
- (void)_loadSelfIdentity:(BOOL)identity;
- (void)_loadTemporarySelfIdentity;
- (void)_postIdentitiesChangedNotification;
- (void)_pruneStaleAdHocPairedDeviceIdentities;
- (void)_removeSelfIdentityPublicWithPrivateIdentity:(id)identity;
- (void)_saveSelfIdentityPrivate:(id)private;
- (void)_saveSelfIdentityPublicWithPrivateIdentity:(id)identity force:(BOOL)force;
- (void)_sepRemoveSelfPrivateKey:(__SecKey *)key;
- (void)_triggerKeychainRefetch;
- (void)_update;
- (void)_updatePairedDeviceIdentities;
- (void)_updateSameAccountIdentities;
- (void)activate;
- (void)addOrUpdateAdHocPairedIdentity:(id)identity;
- (void)addSelfIdentityInfoToMessage:(id)message flags:(unsigned int)flags;
- (void)addSessionPairedIdentity:(id)identity;
- (void)addSharedHomeIdentityWithRPMessage:(id)message;
- (void)daemonInfoChanged:(unint64_t)changed;
- (void)getPairedIdentityWithCompletion:(id)completion;
- (void)getPairingIdentityFromHomeWithAccessory:(id)accessory completion:(id)completion;
- (void)invalidate;
- (void)isContactValidForIdentity:(id)identity completionBlock:(id)block;
- (void)prefsChanged;
- (void)regenerateSelfIdentity:(id)identity;
- (void)regenerateTemporarySelfIdentity;
- (void)removeAdHocPairedIdentityWithIdentifier:(id)identifier;
- (void)removeAllAdHocPairedIdentities;
- (void)removeSessionPairedIdentityWithIdentifier:(id)identifier;
- (void)resolvableAccessoriesUpdated:(id)updated;
- (void)setHomeKitIdentity:(id)identity;
- (void)updateSessionPairedIdentity:(id)identity;
@end

@implementation RPIdentityDaemon

+ (id)sharedIdentityDaemon
{
  if (qword_1001D6268 != -1)
  {
    sub_10000E0B8();
  }

  v3 = qword_1001D6260;

  return v3;
}

- (void)_pruneStaleAdHocPairedDeviceIdentities
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = +[NSDate now];
  if ([(NSMutableArray *)self->_adHocPairedDeviceIdentities count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSMutableArray *)self->_adHocPairedDeviceIdentities objectAtIndexedSubscript:v4];
      dateAdded = [v5 dateAdded];
      v7 = dateAdded;
      if (dateAdded)
      {
        v8 = [dateAdded dateByAddingTimeInterval:604800.0];
        v9 = [v8 earlierDate:v3];

        if (v9 == v8)
        {
          if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
          {
            sub_10011BCC0(v5);
          }

          v11 = 0;
          [(RPIdentityDaemon *)self removeIdentity:v5 error:&v11];
          v10 = v11;
          if (v10 && dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon _pruneStaleAdHocPairedDeviceIdentities]", 90, "Error removing stale AdHocPaired keychain identity: %@, error: %@\n", v5, v10);
          }

          [(NSMutableArray *)self->_adHocPairedDeviceIdentities removeObject:v5];
          --v4;
        }
      }

      ++v4;
    }

    while (v4 < [(NSMutableArray *)self->_adHocPairedDeviceIdentities count]);
  }
}

- (void)_updateSameAccountIdentities
{
  selfCopy = self;
  v57 = 0;
  v3 = [(RPIdentityDaemon *)self _identitiesOfType:2 error:&v57];
  v4 = v57;
  if (v4)
  {
    if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011C050(v4);
    }
  }

  else
  {
    v35 = v3;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v5 = selfCopy->_sameAccountDeviceIdentities;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v53 objects:v61 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v54;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v54 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v53 + 1) + 8 * i) setPresent:0];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v53 objects:v61 count:16];
      }

      while (v7);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v35;
    v40 = [obj countByEnumeratingWithState:&v49 objects:v60 count:16];
    if (v40)
    {
      v37 = 0;
      v38 = 0;
      v39 = *v50;
      do
      {
        for (j = 0; j != v40; j = j + 1)
        {
          if (*v50 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v49 + 1) + 8 * j);
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v12 = selfCopy;
          v13 = selfCopy->_sameAccountDeviceIdentities;
          v14 = [(NSArray *)v13 countByEnumeratingWithState:&v45 objects:v59 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v46;
            while (2)
            {
              for (k = 0; k != v15; k = k + 1)
              {
                if (*v46 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v45 + 1) + 8 * k);
                v19 = [v18 compareWithRPIdentity:v11];
                if ((v19 & 0x220) == 0)
                {
                  v20 = v19;
                  [v18 setPresent:1];
                  if (v20 && (++v37, dword_1001D3F50 <= 30))
                  {
                    selfCopy = v12;
                    if (dword_1001D3F50 != -1 || _LogCategory_Initialize())
                    {
                      sub_10011C090(v11);
                    }
                  }

                  else
                  {
                    selfCopy = v12;
                  }

                  goto LABEL_38;
                }
              }

              v15 = [(NSArray *)v13 countByEnumeratingWithState:&v45 objects:v59 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          ++v38;
          if (dword_1001D3F50 > 30)
          {
            selfCopy = v12;
          }

          else
          {
            selfCopy = v12;
            if (dword_1001D3F50 != -1 || _LogCategory_Initialize())
            {
              sub_10011C0D0(v11);
            }
          }

LABEL_38:
          ;
        }

        v40 = [obj countByEnumeratingWithState:&v49 objects:v60 count:16];
      }

      while (v40);
    }

    else
    {
      v37 = 0;
      v38 = 0;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v21 = selfCopy->_sameAccountDeviceIdentities;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v41 objects:v58 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = 0;
      v25 = *v42;
      do
      {
        v26 = 0;
        do
        {
          if (*v42 != v25)
          {
            objc_enumerationMutation(v21);
          }

          v27 = *(*(&v41 + 1) + 8 * v26);
          if (([v27 present] & 1) == 0)
          {
            ++v24;
            if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
            {
              sub_10011C110(v27);
            }
          }

          v26 = v26 + 1;
        }

        while (v23 != v26);
        v28 = [(NSArray *)v21 countByEnumeratingWithState:&v41 objects:v58 count:16];
        v23 = v28;
      }

      while (v28);
    }

    else
    {
      v24 = 0;
    }

    v31 = v38 > 0 || v37 > 0 || v24 > 0;
    v3 = v35;
    if (selfCopy->_sameAccountDeviceIdentities)
    {
      v4 = 0;
      if (v31)
      {
        if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
        {
          [obj count];
          LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon _updateSameAccountIdentities]", 30, "Updated same account device identities: %d total, %d added, %d changed, %d removed\n");
        }
      }

      else if (dword_1001D3F50 <= 10 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
      {
        sub_10011C150(obj);
      }
    }

    else
    {
      v4 = 0;
      if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
      {
        [obj count];
        LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon _updateSameAccountIdentities]", 30, "Loaded same account device identities: %d total, %d added, %d changed, %d removed\n");
      }
    }

    v32 = [(RPIdentityDaemon *)selfCopy _dedupeSameAccountDeviceIdentities:obj];
    sameAccountDeviceIdentities = selfCopy->_sameAccountDeviceIdentities;
    selfCopy->_sameAccountDeviceIdentities = v32;

    if (v31)
    {
      v34 = +[RPDaemon sharedDaemon];
      [v34 postDaemonInfoChanges:8];

      [(RPIdentityDaemon *)selfCopy _postIdentitiesChangedNotification];
    }
  }
}

- (RPIdentityDaemon)init
{
  v16.receiver = self;
  v16.super_class = RPIdentityDaemon;
  v2 = [(RPIdentityDaemon *)&v16 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    *&v3->_homeViewChangeToken = -1;
    v3->_pairedDevicesNotifier = -1;
    v3->_userIdentitiesChanged = 1;
    v4 = objc_alloc(off_1001D3FC0());
    dispatchQueue = v3->_dispatchQueue;
    v6 = off_1001D3FC8(v4);
    v17 = v6;
    v18 = &__kCFBooleanTrue;
    v7 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v8 = [v4 initWithDelegate:0 queue:dispatchQueue options:v7];
    peripheralManager = v3->_peripheralManager;
    v3->_peripheralManager = v8;

    v10 = +[NSUUID UUID];
    sessionPairingIdentifier = v3->_sessionPairingIdentifier;
    v3->_sessionPairingIdentifier = v10;

    v12 = +[NSUUID UUID];
    adHocPairingIdentifier = v3->_adHocPairingIdentifier;
    v3->_adHocPairingIdentifier = v12;

    v14 = v3;
  }

  return v3;
}

- (id)descriptionWithLevel:(int)level
{
  v192 = 0;
  NSAppendPrintF(&v192, "-- RPIdentityDaemon --\n");
  v4 = v192;
  v191 = 0;
  v5 = [(RPIdentityDaemon *)self identityOfSelfAndReturnError:&v191];
  v6 = v191;
  v7 = v6;
  v114 = v5;
  if (v5)
  {
    v190 = v4;
    v8 = CUDescriptionWithLevel();
    NSAppendPrintF(&v190, "%@\n", v8);
    v9 = v190;

    v4 = v8;
  }

  else
  {
    v189 = v4;
    NSAppendPrintF(&v189, "No SelfIdentity: %{error}\n", v6);
    v9 = v189;
  }

  v188 = v7;
  v10 = [(RPIdentityDaemon *)self identityOfTemporarySelfAndReturnError:&v188];
  v11 = v188;

  v113 = v10;
  if (v10)
  {
    v187 = v9;
    v12 = CUDescriptionWithLevel();
    NSAppendPrintF(&v187, "%@\n", v12);
    v13 = v187;

    v9 = v12;
  }

  else
  {
    v186 = v9;
    NSAppendPrintF(&v186, "No TemporarySelfIdentity: %{error}\n", v11);
    v13 = v186;
  }

  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v183 = 0u;
  selfCopy = self;
  v14 = self->_sameAccountDeviceIdentities;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v182 objects:v202 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v183;
    do
    {
      v18 = 0;
      v19 = v13;
      do
      {
        if (*v183 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v181 = v19;
        v20 = CUDescriptionWithLevel();
        NSAppendPrintF(&v181, "%@\n", v20);
        v13 = v181;

        ++v18;
        v19 = v13;
      }

      while (v16 != v18);
      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v182 objects:v202 count:16];
    }

    while (v16);
  }

  v180 = v11;
  v21 = selfCopy;
  v22 = [(RPIdentityDaemon *)selfCopy identitiesOfType:3 error:&v180];
  v23 = v180;

  v112 = v22;
  if (v22)
  {
    v178 = 0u;
    v179 = 0u;
    v176 = 0u;
    v177 = 0u;
    v24 = v22;
    v25 = [v24 countByEnumeratingWithState:&v176 objects:v201 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v177;
      do
      {
        v28 = 0;
        v29 = v13;
        do
        {
          if (*v177 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v175 = v29;
          v30 = CUDescriptionWithLevel();
          NSAppendPrintF(&v175, "%@\n", v30);
          v13 = v175;

          ++v28;
          v29 = v13;
        }

        while (v26 != v28);
        v26 = [v24 countByEnumeratingWithState:&v176 objects:v201 count:16];
      }

      while (v26);
      v21 = selfCopy;
    }
  }

  else
  {
    v174 = v13;
    NSAppendPrintF(&v174, "No family account identities: %{error}\n", v23);
    v24 = v13;
    v13 = v174;
  }

  v173 = v23;
  v31 = [(RPIdentityDaemon *)v21 identitiesOfType:4 error:&v173];
  v32 = v173;

  v111 = v31;
  if (v31)
  {
    v171 = 0u;
    v172 = 0u;
    v169 = 0u;
    v170 = 0u;
    v33 = v31;
    v34 = [v33 countByEnumeratingWithState:&v169 objects:v200 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v170;
      do
      {
        v37 = 0;
        v38 = v13;
        do
        {
          if (*v170 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v168 = v38;
          v39 = CUDescriptionWithLevel();
          NSAppendPrintF(&v168, "%@\n", v39);
          v13 = v168;

          ++v37;
          v38 = v13;
        }

        while (v35 != v37);
        v35 = [v33 countByEnumeratingWithState:&v169 objects:v200 count:16];
      }

      while (v35);
      v21 = selfCopy;
    }
  }

  else
  {
    v167 = v13;
    NSAppendPrintF(&v167, "No family device identities: %{error}\n", v32);
    v33 = v13;
    v13 = v167;
  }

  v166 = v32;
  v40 = [(RPIdentityDaemon *)v21 identitiesOfType:5 error:&v166];
  v41 = v166;

  v110 = v40;
  if (v40)
  {
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    v42 = v40;
    v43 = [v42 countByEnumeratingWithState:&v162 objects:v199 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v163;
      do
      {
        v46 = 0;
        v47 = v13;
        do
        {
          if (*v163 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v161 = v47;
          v48 = CUDescriptionWithLevel();
          NSAppendPrintF(&v161, "%@\n", v48);
          v13 = v161;

          ++v46;
          v47 = v13;
        }

        while (v44 != v46);
        v44 = [v42 countByEnumeratingWithState:&v162 objects:v199 count:16];
      }

      while (v44);
      v21 = selfCopy;
    }
  }

  else
  {
    v160 = v13;
    NSAppendPrintF(&v160, "No friend account identities: %{error}\n", v41);
    v42 = v13;
    v13 = v160;
  }

  v159 = v41;
  v49 = [(RPIdentityDaemon *)v21 identitiesOfType:6 error:&v159];
  v50 = v159;

  v109 = v49;
  if (v49)
  {
    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v51 = v49;
    v52 = [v51 countByEnumeratingWithState:&v155 objects:v198 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v156;
      do
      {
        v55 = 0;
        v56 = v13;
        do
        {
          if (*v156 != v54)
          {
            objc_enumerationMutation(v51);
          }

          v154 = v56;
          v57 = CUDescriptionWithLevel();
          NSAppendPrintF(&v154, "%@\n", v57);
          v13 = v154;

          ++v55;
          v56 = v13;
        }

        while (v53 != v55);
        v53 = [v51 countByEnumeratingWithState:&v155 objects:v198 count:16];
      }

      while (v53);
      v21 = selfCopy;
    }
  }

  else
  {
    v153 = v13;
    NSAppendPrintF(&v153, "No friend device identities: %{error}\n", v50);
    v51 = v13;
    v13 = v153;
  }

  v152 = v50;
  v58 = [(RPIdentityDaemon *)v21 identitiesOfType:8 error:&v152];
  v59 = v152;

  v108 = v58;
  if (v58)
  {
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v60 = v58;
    v61 = [v60 countByEnumeratingWithState:&v148 objects:v197 count:16];
    if (v61)
    {
      v62 = v61;
      v63 = *v149;
      do
      {
        v64 = 0;
        v65 = v13;
        do
        {
          if (*v149 != v63)
          {
            objc_enumerationMutation(v60);
          }

          v147 = v65;
          v66 = CUDescriptionWithLevel();
          NSAppendPrintF(&v147, "%@\n", v66);
          v13 = v147;

          ++v64;
          v65 = v13;
        }

        while (v62 != v64);
        v62 = [v60 countByEnumeratingWithState:&v148 objects:v197 count:16];
      }

      while (v62);
      v21 = selfCopy;
    }
  }

  else
  {
    v146 = v13;
    NSAppendPrintF(&v146, "No paired device identities: %{error}\n", v59);
    v60 = v13;
    v13 = v146;
  }

  v145 = v59;
  v67 = [(RPIdentityDaemon *)v21 identitiesOfType:9 error:&v145];
  v68 = v145;

  v107 = v67;
  if (v67)
  {
    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    v69 = v67;
    v70 = [v69 countByEnumeratingWithState:&v141 objects:v196 count:16];
    if (v70)
    {
      v71 = v70;
      v72 = *v142;
      do
      {
        v73 = 0;
        v74 = v13;
        do
        {
          if (*v142 != v72)
          {
            objc_enumerationMutation(v69);
          }

          v140 = v74;
          v75 = CUDescriptionWithLevel();
          NSAppendPrintF(&v140, "%@\n", v75);
          v13 = v140;

          ++v73;
          v74 = v13;
        }

        while (v71 != v73);
        v71 = [v69 countByEnumeratingWithState:&v141 objects:v196 count:16];
      }

      while (v71);
      v21 = selfCopy;
    }
  }

  else
  {
    v139 = v13;
    NSAppendPrintF(&v139, "No SharedHome device identities: %{error}\n", v68);
    v69 = v13;
    v13 = v139;
  }

  v138 = v68;
  v76 = [(RPIdentityDaemon *)v21 identitiesOfType:12 error:&v138];
  v77 = v138;

  v115 = v76;
  if (v76)
  {
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v78 = v76;
    v79 = [v78 countByEnumeratingWithState:&v134 objects:v195 count:16];
    if (v79)
    {
      v80 = v79;
      v81 = *v135;
      do
      {
        v82 = 0;
        v83 = v13;
        do
        {
          if (*v135 != v81)
          {
            objc_enumerationMutation(v78);
          }

          v133 = v83;
          v84 = CUDescriptionWithLevel();
          NSAppendPrintF(&v133, "%@\n", v84);
          v13 = v133;

          ++v82;
          v83 = v13;
        }

        while (v80 != v82);
        v80 = [v78 countByEnumeratingWithState:&v134 objects:v195 count:16];
      }

      while (v80);
      v76 = v115;
      v21 = selfCopy;
    }
  }

  else
  {
    v132 = v13;
    NSAppendPrintF(&v132, "No Shared TV user device identities: %{error}\n", v77);
    v78 = v13;
    v13 = v132;
  }

  v131 = v77;
  v85 = [(RPIdentityDaemon *)v21 identitiesOfType:13 error:&v131];
  v86 = v131;

  if (v85)
  {
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v87 = v85;
    v88 = [v87 countByEnumeratingWithState:&v127 objects:v194 count:16];
    if (v88)
    {
      v89 = v88;
      v105 = v85;
      v90 = *v128;
      do
      {
        v91 = 0;
        v92 = v13;
        do
        {
          if (*v128 != v90)
          {
            objc_enumerationMutation(v87);
          }

          v126 = v92;
          v93 = CUDescriptionWithLevel();
          NSAppendPrintF(&v126, "%@\n", v93);
          v13 = v126;

          ++v91;
          v92 = v13;
        }

        while (v89 != v91);
        v89 = [v87 countByEnumeratingWithState:&v127 objects:v194 count:16];
      }

      while (v89);
      v76 = v115;
      v21 = selfCopy;
      v85 = v105;
    }
  }

  else
  {
    v125 = v13;
    NSAppendPrintF(&v125, "No session pairing identities: %{error}\n", v86);
    v87 = v13;
    v13 = v125;
  }

  v124 = v86;
  v94 = [(RPIdentityDaemon *)v21 identitiesOfType:15 error:&v124];
  v95 = v124;

  if (v94)
  {
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v96 = v94;
    v97 = [v96 countByEnumeratingWithState:&v120 objects:v193 count:16];
    if (v97)
    {
      v98 = v97;
      v117 = v95;
      v106 = v85;
      v99 = *v121;
      do
      {
        v100 = 0;
        v101 = v13;
        do
        {
          if (*v121 != v99)
          {
            objc_enumerationMutation(v96);
          }

          v119 = v101;
          v102 = CUDescriptionWithLevel();
          NSAppendPrintF(&v119, "%@\n", v102);
          v13 = v119;

          ++v100;
          v101 = v13;
        }

        while (v98 != v100);
        v98 = [v96 countByEnumeratingWithState:&v120 objects:v193 count:16];
      }

      while (v98);
      v76 = v115;
      v95 = v117;
      v85 = v106;
    }
  }

  else
  {
    v118 = v13;
    NSAppendPrintF(&v118, "No ad-hoc paired identities: %{error}\n", v95);
    v96 = v13;
    v13 = v118;
  }

  v103 = v13;
  return v13;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000680DC;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  selfCopy = self;
  if (dword_1001D3F50 <= 30)
  {
    if (dword_1001D3F50 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_10011AB64(self, a2, v2);
    }
  }

  if (!selfCopy->_systemMonitor)
  {
    v4 = objc_alloc_init(CUSystemMonitor);
    systemMonitor = selfCopy->_systemMonitor;
    selfCopy->_systemMonitor = v4;

    [(CUSystemMonitor *)selfCopy->_systemMonitor setDispatchQueue:selfCopy->_dispatchQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100068214;
    v8[3] = &unk_1001AA970;
    v8[4] = selfCopy;
    [(CUSystemMonitor *)selfCopy->_systemMonitor setFirstUnlockHandler:v8];
    v6 = selfCopy->_systemMonitor;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10006821C;
    v7[3] = &unk_1001AA970;
    v7[4] = selfCopy;
    [(CUSystemMonitor *)v6 activateWithCompletion:v7];
  }

  [(RPIdentityDaemon *)selfCopy prefsChanged];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100068298;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled)
  {
    v10 = v3;
    selfCopy = self;
    self->_invalidateCalled = 1;
    if (dword_1001D3F50 <= 30)
    {
      if (dword_1001D3F50 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_10011AB80(self, a2, v2);
      }
    }

    [(CUSystemMonitor *)selfCopy->_systemMonitor invalidate:v4];
    systemMonitor = selfCopy->_systemMonitor;
    selfCopy->_systemMonitor = 0;

    peripheralManager = selfCopy->_peripheralManager;
    selfCopy->_peripheralManager = 0;

    [(RPIdentityDaemon *)selfCopy _ensureStopped];

    [(RPIdentityDaemon *)selfCopy _invalidated];
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    self->_invalidateDone = 1;
    if (dword_1001D3F50 <= 30)
    {
      if (dword_1001D3F50 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_10011AB9C(v3, v4, v5);
      }
    }
  }
}

- (void)daemonInfoChanged:(unint64_t)changed
{
  changedCopy = changed;
  selfCopy = self;
  if ((changed & 0x10) != 0)
  {
    if (dword_1001D3F50 <= 30)
    {
      if (dword_1001D3F50 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_10011ABB8(self, a2, changed);
      }
    }

    [(RPIdentityDaemon *)selfCopy _ensureStopped];
    v5 = +[RPDaemon sharedDaemon];
    [v5 postDaemonInfoChanges:8];

    notify_post("com.apple.rapport.identitiesChanged");
    self = [(RPIdentityDaemon *)selfCopy _update];
    if ((changedCopy & 0x40) == 0)
    {
LABEL_3:
      if ((changedCopy & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_14:
      [(RPIdentityDaemon *)selfCopy _updateSameAccountIdentities];
      if ((changedCopy & 0x20000) == 0)
      {
        return;
      }

      goto LABEL_15;
    }
  }

  else if ((changed & 0x40) == 0)
  {
    goto LABEL_3;
  }

  if (dword_1001D3F50 <= 30)
  {
    if (dword_1001D3F50 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_10011ABD4(self, a2, changed);
    }
  }

  selfIdentityCache = selfCopy->_selfIdentityCache;
  selfCopy->_selfIdentityCache = 0;

  [(RPIdentityDaemon *)selfCopy _loadSelfIdentity:0];
  [(RPIdentityDaemon *)selfCopy _updateSameAccountIdentities];
  if (changedCopy)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((changedCopy & 0x20000) == 0)
  {
    return;
  }

LABEL_15:
  idsDeviceID = [(RPIdentity *)selfCopy->_selfIdentityCache idsDeviceID];

  if (idsDeviceID)
  {
    v8 = selfCopy->_selfIdentityCache;

    [(RPIdentityDaemon *)selfCopy _saveSelfIdentityPublicWithPrivateIdentity:v8 force:0];
  }
}

- (BOOL)diagnosticCommand:(id)command params:(id)params
{
  commandCopy = command;
  paramsCopy = params;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v8 = [commandCopy isEqual:@"KeychainRefetch"];
  if (v8)
  {
    if (dword_1001D3F50 <= 30)
    {
      if (dword_1001D3F50 != -1 || (v8 = _LogCategory_Initialize(), v8))
      {
        sub_10011ACA0(v8, v9, v10);
      }
    }

    [(RPIdentityDaemon *)self _triggerKeychainRefetch];
    goto LABEL_29;
  }

  if ([commandCopy isEqual:@"SelfIdentityLoad"])
  {
    [(RPIdentityDaemon *)self _loadSelfIdentity:0];
LABEL_29:
    LOBYTE(v14) = 1;
    goto LABEL_30;
  }

  if ([commandCopy isEqual:@"SelfIdentitySave"])
  {
    v11 = self->_selfIdentityCache;
    v14 = v11;
    if (v11)
    {
      if (dword_1001D3F50 <= 30)
      {
        if (dword_1001D3F50 != -1 || (v11 = _LogCategory_Initialize(), v11))
        {
          sub_10011AC68(v11, v12, v13);
        }
      }

      [(RPIdentityDaemon *)self _saveSelfIdentityPrivate:v14];
      [(RPIdentityDaemon *)self _saveSelfIdentityPublicWithPrivateIdentity:v14 force:1];
    }

    else if (dword_1001D3F50 <= 30)
    {
      if (dword_1001D3F50 != -1 || (v11 = _LogCategory_Initialize(), v11))
      {
        sub_10011AC84(v11, v12, v13);
      }
    }

    goto LABEL_28;
  }

  if ([commandCopy isEqual:@"SelfIdentityRemove"])
  {
    v15 = self->_selfIdentityCache;
    v14 = v15;
    if (v15)
    {
      if (dword_1001D3F50 <= 30)
      {
        if (dword_1001D3F50 != -1 || (v15 = _LogCategory_Initialize(), v15))
        {
          sub_10011AC4C(v15, v16, v17);
        }
      }

      [(RPIdentityDaemon *)self _removeSelfIdentityPublicWithPrivateIdentity:v14];
    }

    goto LABEL_28;
  }

  v18 = [commandCopy isEqual:@"SelfIdentityRotate"];
  if (!v18)
  {
    if ([commandCopy isEqual:@"SameAccountIdentityRemove"])
    {
      v14 = [paramsCopy objectForKey:@"idsIdentifier"];
      if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
      {
        sub_10011ABF0(v14);
        if (!v14)
        {
          goto LABEL_30;
        }
      }

      else if (!v14)
      {
        goto LABEL_30;
      }

      v25 = 0;
      v22 = [(RPIdentityDaemon *)self _removeSameAccountIdentityWithIDSIdentifier:v14 error:&v25];
      v23 = v25;
      v24 = v23;
      if (v22)
      {

LABEL_28:
        goto LABEL_29;
      }

      if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon diagnosticCommand:params:]", 30, "Diag: Remove SameAccountIdentity failed: %@\n", v14, v24);
      }
    }

    LOBYTE(v14) = 0;
    goto LABEL_30;
  }

  if (dword_1001D3F50 <= 30)
  {
    if (dword_1001D3F50 != -1 || (v18 = _LogCategory_Initialize(), v18))
    {
      sub_10011AC30(v18, v19, v20);
    }
  }

  LOBYTE(v14) = 1;
  [(RPIdentityDaemon *)self _loadSelfIdentity:1];
LABEL_30:

  return v14;
}

- (void)prefsChanged
{
  v3 = CFPrefs_GetInt64() != 0;
  if (self->_prefFamilyResolve != v3)
  {
    if (dword_1001D3F50 <= 40 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011ACBC();
    }

    self->_prefFamilyResolve = v3;
  }

  v4 = CFPrefs_GetInt64() != 0;
  if (self->_prefFriendResolve != v4)
  {
    if (dword_1001D3F50 <= 40 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011AD14();
    }

    self->_prefFriendResolve = v4;
  }

  v5 = CFPrefs_GetInt64() != 0;
  if (self->_prefOwnerResolve != v5)
  {
    if (dword_1001D3F50 <= 40 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011AD6C();
    }

    self->_prefOwnerResolve = v5;
  }

  v6 = CFPrefs_GetInt64() != 0;
  if (self->_prefPairedResolve != v6)
  {
    if (dword_1001D3F50 <= 40 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011ADC4();
    }

    self->_prefPairedResolve = v6;
  }

  v7 = CFPrefs_GetInt64() != 0;
  if (self->_prefSharedHomeResolve != v7)
  {
    if (dword_1001D3F50 <= 40 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011AE1C();
    }

    self->_prefSharedHomeResolve = v7;
  }

  [(RPIdentityDaemon *)self _update];
}

- (void)regenerateSelfIdentity:(id)identity
{
  identityCopy = identity;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011AE74(identityCopy);
  }

  [(RPIdentityDaemon *)self _loadSelfIdentity:1];
  [(RPIdentityDaemon *)self removeAllAdHocPairedIdentities];
}

- (void)_update
{
  [(RPIdentityDaemon *)self _ensureStarted];

  [(RPIdentityDaemon *)self _pruneStaleAdHocPairedDeviceIdentities];
}

- (void)setHomeKitIdentity:(id)identity
{
  identityCopy = identity;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  homeKitIdentity = self->_homeKitIdentity;
  self->_homeKitIdentity = identityCopy;
}

- (void)resolvableAccessoriesUpdated:(id)updated
{
  updatedCopy = updated;
  selfCopy = self;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v43 = objc_alloc_init(NSMutableArray);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v5 = updatedCopy;
  v6 = [v5 countByEnumeratingWithState:&v58 objects:v64 count:16];
  obj = v5;
  if (v6)
  {
    v7 = v6;
    v8 = *v59;
    v44 = *v59;
    do
    {
      v9 = 0;
      v45 = v7;
      do
      {
        if (*v59 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v58 + 1) + 8 * v9);
        uniqueIdentifier = [v10 uniqueIdentifier];
        uUIDString = [uniqueIdentifier UUIDString];

        if (uUIDString)
        {
          device = [v10 device];
          rapportIRK = [device rapportIRK];
          data = [rapportIRK data];

          if ([data length])
          {
            home = [v10 home];
            currentUser = [home currentUser];
            if (!currentUser || ([home homeAccessControlForUser:currentUser], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isOwner"), v18, (v19 & 1) == 0))
            {
              v47 = currentUser;
              v48 = data;
              v49 = uUIDString;
              v56 = 0u;
              v57 = 0u;
              v54 = 0u;
              v55 = 0u;
              users = [home users];
              uniqueIdentifier2 = [users countByEnumeratingWithState:&v54 objects:v63 count:16];
              if (uniqueIdentifier2)
              {
                v22 = *v55;
LABEL_12:
                v23 = 0;
                while (1)
                {
                  if (*v55 != v22)
                  {
                    objc_enumerationMutation(users);
                  }

                  v24 = *(*(&v54 + 1) + 8 * v23);
                  v25 = [home homeAccessControlForUser:v24];
                  isOwner = [v25 isOwner];

                  if (isOwner)
                  {
                    break;
                  }

                  if (uniqueIdentifier2 == ++v23)
                  {
                    uniqueIdentifier2 = [users countByEnumeratingWithState:&v54 objects:v63 count:16];
                    if (uniqueIdentifier2)
                    {
                      goto LABEL_12;
                    }

                    userID = 0;
                    v8 = v44;
                    v7 = v45;
                    goto LABEL_29;
                  }
                }

                userID = [v24 userID];
                uniqueIdentifier2 = [v24 uniqueIdentifier];

                if (!userID)
                {
                  v8 = v44;
                  v7 = v45;
                  goto LABEL_31;
                }

                users = objc_alloc_init(RPIdentity);
                [users setAccountID:userID];
                [users setDeviceIRKData:v48];
                [users setHomeKitUserIdentifier:uniqueIdentifier2];
                [users setIdentifier:v49];
                [users setIdsDeviceID:v49];
                name = [v10 name];
                [users setName:name];

                [users setType:9];
                homePodVariant = [v10 homePodVariant];
                v30 = @"AudioAccessory1,1";
                v8 = v44;
                v7 = v45;
                if (homePodVariant == 1 || (v31 = [v10 homePodVariant], v30 = @"AudioAccessory5,1", v31 == 2) || (v32 = objc_msgSend(v10, "homePodVariant", @"AudioAccessory5,1"), v30 = @"AudioAccessory6,1", v32 == 3))
                {
                  [users setModel:v30];
                }

                [v43 addObject:users];
                if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
                {
                  sub_10011AEB4(users);
                }
              }

              else
              {
                userID = 0;
              }

LABEL_29:

LABEL_31:
              data = v48;
              uUIDString = v49;
              currentUser = v47;
            }
          }
        }

        v9 = v9 + 1;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
    }

    while (v7);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  p_isa = &selfCopy->super.isa;
  v34 = selfCopy->_sharedHomeExtraDeviceIdentities;
  v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v50 objects:v62 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v51;
    do
    {
      v38 = 0;
      do
      {
        if (*v51 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v50 + 1) + 8 * v38);
        [v43 addObject:{v39, selfCopy}];
        if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
        {
          sub_10011AEF4(v39);
        }

        v38 = v38 + 1;
      }

      while (v36 != v38);
      v40 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v50 objects:v62 count:16];
      v36 = v40;
    }

    while (v40);
  }

  objc_storeStrong(p_isa + 11, v43);
  if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011AF34(v43);
  }

  v41 = +[RPDaemon sharedDaemon];
  [v41 postDaemonInfoChanges:512];

  [p_isa _postIdentitiesChangedNotification];
}

- (id)resolveIdentitiesForBonjourDevice:(id)device typeFlags:(unsigned int)flags
{
  deviceCopy = device;
  v7 = 0;
  if (flags)
  {
    do
    {
      v8 = flags & -flags;
      if (!v8)
      {
        break;
      }

      v9 = [(RPIdentityDaemon *)self resolveIdentityForBonjourDevice:deviceCopy typeFlags:flags & -flags];
      if (v9)
      {
        if (!v7)
        {
          v7 = objc_alloc_init(NSMutableArray);
        }

        [v7 addObject:v9];
      }

      v10 = v8 == flags;
      flags ^= v8;
    }

    while (!v10);
  }

  return v7;
}

- (id)resolveIdentityForBonjourDevice:(id)device typeFlags:(unsigned int)flags
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  firstUnlocked = [(CUSystemMonitor *)self->_systemMonitor firstUnlocked];
  if (firstUnlocked)
  {
    txtDictionary = [deviceCopy txtDictionary];
    CFDictionaryGetHardwareAddress();
    CFDictionaryGetData();
    if (dword_1001D3F50 <= 20 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011AFF4();
    }
  }

  else if (dword_1001D3F50 <= 30)
  {
    if (dword_1001D3F50 != -1 || (firstUnlocked = _LogCategory_Initialize(), firstUnlocked))
    {
      sub_10011AF78(firstUnlocked, v7, v8);
    }
  }

  return 0;
}

- (id)resolveIdentityForSignature:(id)signature data:(id)data typeFlags:(unsigned int)flags error:(id *)error
{
  v7 = *&flags;
  signatureCopy = signature;
  dataCopy = data;
  if ((v7 & 2) != 0 && self->_prefOwnerResolve)
  {
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v18 = self->_sameAccountDeviceIdentities;
    v19 = [(NSArray *)v18 countByEnumeratingWithState:&v76 objects:v86 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v77;
      while (2)
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v77 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v76 + 1) + 8 * i);
          if ([v23 verifySignature:signatureCopy data:dataCopy error:0])
          {
            if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
            {
              sub_10011B370(v23);
            }

LABEL_107:
            v50 = v23;

            goto LABEL_108;
          }
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v76 objects:v86 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }
  }

  if ((v7 & 8) != 0 && self->_prefFamilyResolve)
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v18 = [(RPIdentityDaemon *)self identitiesOfType:4 error:0];
    v24 = [(NSArray *)v18 countByEnumeratingWithState:&v72 objects:v85 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v73;
      while (2)
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v73 != v26)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v72 + 1) + 8 * j);
          if ([v23 verifySignature:signatureCopy data:dataCopy error:0])
          {
            if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
            {
              sub_10011B3B0(v23);
            }

            goto LABEL_107;
          }
        }

        v25 = [(NSArray *)v18 countByEnumeratingWithState:&v72 objects:v85 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }
  }

  if ((v7 & 0x20) != 0 && self->_prefFriendResolve)
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v18 = [(RPIdentityDaemon *)self identitiesOfType:6 error:0];
    v28 = [(NSArray *)v18 countByEnumeratingWithState:&v68 objects:v84 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v69;
      while (2)
      {
        for (k = 0; k != v29; k = k + 1)
        {
          if (*v69 != v30)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v68 + 1) + 8 * k);
          if ([v23 verifySignature:signatureCopy data:dataCopy error:0])
          {
            if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
            {
              sub_10011B3F0(v23);
            }

            goto LABEL_107;
          }
        }

        v29 = [(NSArray *)v18 countByEnumeratingWithState:&v68 objects:v84 count:16];
        if (v29)
        {
          continue;
        }

        break;
      }
    }
  }

  if ((v7 & 0x400) != 0)
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v18 = [(RPIdentityDaemon *)self identitiesOfType:12 error:0];
    v32 = [(NSArray *)v18 countByEnumeratingWithState:&v64 objects:v83 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v65;
      while (2)
      {
        for (m = 0; m != v33; m = m + 1)
        {
          if (*v65 != v34)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v64 + 1) + 8 * m);
          if ([v23 verifySignature:signatureCopy data:dataCopy error:0])
          {
            if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
            {
              sub_10011B430(v23);
            }

            goto LABEL_107;
          }
        }

        v33 = [(NSArray *)v18 countByEnumeratingWithState:&v64 objects:v83 count:16];
        if (v33)
        {
          continue;
        }

        break;
      }
    }
  }

  if ((v7 & 0x80) != 0 && self->_prefPairedResolve)
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v18 = [(RPIdentityDaemon *)self identitiesOfType:8 error:0];
    v36 = [(NSArray *)v18 countByEnumeratingWithState:&v60 objects:v82 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v61;
      while (2)
      {
        for (n = 0; n != v37; n = n + 1)
        {
          if (*v61 != v38)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v60 + 1) + 8 * n);
          if ([v23 verifySignature:signatureCopy data:dataCopy error:0])
          {
            if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
            {
              sub_10011B470(v23);
            }

            goto LABEL_107;
          }
        }

        v37 = [(NSArray *)v18 countByEnumeratingWithState:&v60 objects:v82 count:16];
        if (v37)
        {
          continue;
        }

        break;
      }
    }
  }

  if ((v7 & 0x800) != 0)
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v18 = [(RPIdentityDaemon *)self identitiesOfType:13 error:0];
    v40 = [(NSArray *)v18 countByEnumeratingWithState:&v56 objects:v81 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v57;
      while (2)
      {
        for (ii = 0; ii != v41; ii = ii + 1)
        {
          if (*v57 != v42)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v56 + 1) + 8 * ii);
          if ([v23 verifySignature:signatureCopy data:dataCopy error:0])
          {
            if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
            {
              sub_10011B4B0(v23);
            }

            goto LABEL_107;
          }
        }

        v41 = [(NSArray *)v18 countByEnumeratingWithState:&v56 objects:v81 count:16];
        if (v41)
        {
          continue;
        }

        break;
      }
    }
  }

  if ((v7 & 0x4000) != 0)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v44 = [(RPIdentityDaemon *)self identitiesOfType:15 error:0];
    v45 = [v44 countByEnumeratingWithState:&v52 objects:v80 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v53;
      while (2)
      {
        for (jj = 0; jj != v46; jj = jj + 1)
        {
          if (*v53 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = *(*(&v52 + 1) + 8 * jj);
          if ([v49 verifySignature:signatureCopy data:dataCopy error:0])
          {
            if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
            {
              sub_10011B4F0(v49);
            }

            v50 = v49;

            goto LABEL_108;
          }
        }

        v46 = [v44 countByEnumeratingWithState:&v52 objects:v80 count:16];
        if (v46)
        {
          continue;
        }

        break;
      }
    }
  }

  if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011B530(v7);
    if (error)
    {
      goto LABEL_79;
    }
  }

  else if (error)
  {
LABEL_79:
    RPErrorF(4294960569, "Resolved identity not found", v11, v12, v13, v14, v15, v16, v52);
    *error = v50 = 0;
    goto LABEL_108;
  }

  v50 = 0;
LABEL_108:

  return v50;
}

- (unsigned)resolveIdentityTypesForSignature:(id)signature data:(id)data typeFlags:(unsigned int)flags
{
  flagsCopy = flags;
  signatureCopy = signature;
  dataCopy = data;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ((flagsCopy & 2) == 0 || !self->_prefOwnerResolve)
  {
    v11 = 0;
    if ((flagsCopy & 8) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v10 = self->_sameAccountDeviceIdentities;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v62 objects:v71 count:16];
  if (v11)
  {
    v12 = *v63;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v63 != v12)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(*(&v62 + 1) + 8 * i) verifySignature:signatureCopy data:dataCopy error:0])
        {
          v11 = 2;
          goto LABEL_15;
        }
      }

      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v62 objects:v71 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  if ((flagsCopy & 8) != 0)
  {
LABEL_16:
    if (self->_prefFamilyResolve)
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v14 = [(RPIdentityDaemon *)self identitiesOfType:4 error:0];
      v15 = [v14 countByEnumeratingWithState:&v58 objects:v70 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v59;
        while (2)
        {
          for (j = 0; j != v16; j = j + 1)
          {
            if (*v59 != v17)
            {
              objc_enumerationMutation(v14);
            }

            if ([*(*(&v58 + 1) + 8 * j) verifySignature:signatureCopy data:dataCopy error:0])
            {
              v11 = v11 | 8;
              goto LABEL_27;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v58 objects:v70 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

LABEL_27:
    }
  }

LABEL_28:
  if ((flagsCopy & 0x20) != 0 && self->_prefFriendResolve)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v19 = [(RPIdentityDaemon *)self identitiesOfType:6 error:0];
    v20 = [v19 countByEnumeratingWithState:&v54 objects:v69 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v55;
      while (2)
      {
        for (k = 0; k != v21; k = k + 1)
        {
          if (*v55 != v22)
          {
            objc_enumerationMutation(v19);
          }

          if ([*(*(&v54 + 1) + 8 * k) verifySignature:signatureCopy data:dataCopy error:0])
          {
            v11 = v11 | 0x20;
            goto LABEL_40;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v54 objects:v69 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

LABEL_40:
  }

  if ((flagsCopy & 0x400) != 0)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v24 = [(RPIdentityDaemon *)self identitiesOfType:12 error:0];
    v25 = [v24 countByEnumeratingWithState:&v50 objects:v68 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v51;
      while (2)
      {
        for (m = 0; m != v26; m = m + 1)
        {
          if (*v51 != v27)
          {
            objc_enumerationMutation(v24);
          }

          if ([*(*(&v50 + 1) + 8 * m) verifySignature:signatureCopy data:dataCopy error:0])
          {
            v11 = v11 | 0x400;
            goto LABEL_55;
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v50 objects:v68 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

LABEL_55:

    if ((flagsCopy & 0x800) == 0)
    {
LABEL_43:
      if ((flagsCopy & 0x4000) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_67;
    }
  }

  else if ((flagsCopy & 0x800) == 0)
  {
    goto LABEL_43;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v29 = [(RPIdentityDaemon *)self identitiesOfType:13 error:0];
  v30 = [v29 countByEnumeratingWithState:&v46 objects:v67 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v47;
    while (2)
    {
      for (n = 0; n != v31; n = n + 1)
      {
        if (*v47 != v32)
        {
          objc_enumerationMutation(v29);
        }

        if ([*(*(&v46 + 1) + 8 * n) verifySignature:signatureCopy data:dataCopy error:0])
        {
          v11 = v11 | 0x800;
          goto LABEL_66;
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v46 objects:v67 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

LABEL_66:

  if ((flagsCopy & 0x4000) != 0)
  {
LABEL_67:
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v34 = [(RPIdentityDaemon *)self identitiesOfType:15 error:0];
    v35 = [v34 countByEnumeratingWithState:&v42 objects:v66 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v43;
      while (2)
      {
        for (ii = 0; ii != v36; ii = ii + 1)
        {
          if (*v43 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v42 + 1) + 8 * ii);
          v41 = 0;
          if ([v39 verifySignature:signatureCopy data:dataCopy error:&v41])
          {
            v11 = v11 | 0x4000;
            goto LABEL_77;
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v42 objects:v66 count:16];
        if (v36)
        {
          continue;
        }

        break;
      }
    }

LABEL_77:
  }

LABEL_78:
  if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011B578(v11);
  }

  return v11;
}

- (id)resolveIdentityForTempAuthTagData:(id)data bluetoothAddressData:(id)addressData
{
  dataCopy = data;
  addressDataCopy = addressData;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(RPIdentityDaemon *)self identitiesOfType:15 error:0, 0];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 verifyAuthTag:dataCopy data:addressDataCopy type:2 error:0])
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (id)resolveIdentityForNearFieldMessagePayload:(id)payload
{
  payloadCopy = payload;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1000029FC;
  v27 = sub_100003194;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000029FC;
  v21 = sub_100003194;
  v22 = +[NSMutableArray array];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10006AE6C;
  v13[3] = &unk_1001ACDF0;
  v5 = payloadCopy;
  v14 = v5;
  v15 = &v23;
  v16 = &v17;
  [(RPIdentityDaemon *)self _enumerateIdentitiesWithFlag:19882 usingBlock:v13];
  if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D3F50, "-[RPIdentityDaemon resolveIdentityForNearFieldMessagePayload:]", 30, "identity resolved:%@ - fallback identities:%ld", v24[5], [v18[5] count]);
  }

  v6 = v24;
  v7 = v24[5];
  if (v7)
  {
    v8 = v7;
    v9 = v6[5];
    v6[5] = v8;
  }

  else
  {
    firstObject = [v18[5] firstObject];
    v9 = v24[5];
    v24[5] = firstObject;
  }

  v11 = v24[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v11;
}

- (unint64_t)resolveIdentityforSignature:(id)signature data:(id)data flags:(unsigned int)flags accountaltDSID:(id)d
{
  v7 = *&flags;
  signatureCopy = signature;
  dataCopy = data;
  dCopy = d;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_10006B0AC;
  v22 = &unk_1001ACE18;
  v13 = signatureCopy;
  v23 = v13;
  v14 = dataCopy;
  v24 = v14;
  v15 = dCopy;
  v25 = v15;
  v26 = &v27;
  v16 = objc_retainBlock(&v19);
  [(RPIdentityDaemon *)self _enumerateIdentitiesWithFlag:v7 usingBlock:v16, v19, v20, v21, v22];
  v17 = v28[3];

  _Block_object_dispose(&v27, 8);
  return v17;
}

- (void)isContactValidForIdentity:(id)identity completionBlock:(id)block
{
  identityCopy = identity;
  blockCopy = block;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  if (identityCopy && ([identityCopy contactID], (v8 = objc_claimAutoreleasedReturnValue()) != 0) && (v9 = objc_msgSend(identityCopy, "type"), v8, v9 == 6))
  {
    contactID = [identityCopy contactID];
    v11 = objc_alloc_init(off_1001D3FD0());
    v12 = [v11 setContactIdentifier:contactID];
    v13 = objc_alloc_init(off_1001D3FD8(v12));
    [v13 setDispatchQueue:self->_dispatchQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10006B3A8;
    v16[3] = &unk_1001ACE40;
    v14 = v13;
    v17 = v14;
    v18 = identityCopy;
    v15 = v11;
    v19 = v15;
    selfCopy = self;
    v22 = &v23;
    v21 = blockCopy;
    [v14 findContact:v15 completion:v16];
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, *(v24 + 24));
  }

  _Block_object_dispose(&v23, 8);
}

- (id)identitiesOfType:(int)type error:(id *)error
{
  v5 = *&type;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  DeviceClass = GestaltGetDeviceClass();
  switch(v5)
  {
    case 9:
      sharedHomeDeviceIdentities = self->_sharedHomeDeviceIdentities;
      goto LABEL_11;
    case 8:
      sharedHomeDeviceIdentities = self->_pairedDeviceIdentities;
      goto LABEL_11;
    case 2:
      p_super = self->_sameAccountDeviceIdentities;
      if (p_super)
      {
        goto LABEL_15;
      }

      goto LABEL_5;
  }

  if (v5 == 12 && DeviceClass == 4)
  {
    sharedHomeDeviceIdentities = self->_sharedTVUserDeviceIdentities;
    goto LABEL_11;
  }

  if (v5 > 12)
  {
    if (v5 == 15)
    {
      adHocPairedDeviceIdentities = self->_adHocPairedDeviceIdentities;
      if (adHocPairedDeviceIdentities)
      {
        v17 = adHocPairedDeviceIdentities;
        v18 = self->_adHocPairedDeviceIdentities;
        self->_adHocPairedDeviceIdentities = v17;
      }

      else
      {
        v18 = [(RPIdentityDaemon *)self _identitiesOfType:15 error:error];
        v19 = [v18 mutableCopy];
        v20 = self->_adHocPairedDeviceIdentities;
        self->_adHocPairedDeviceIdentities = v19;
      }

      [(RPIdentityDaemon *)self _pruneStaleAdHocPairedDeviceIdentities];
      sharedHomeDeviceIdentities = self->_adHocPairedDeviceIdentities;
LABEL_13:
      v9 = sharedHomeDeviceIdentities;
      goto LABEL_14;
    }

    if (v5 == 13)
    {
      sharedHomeDeviceIdentities = self->_sessionPairedDeviceIdentities;
LABEL_11:
      if (!sharedHomeDeviceIdentities)
      {
        sharedHomeDeviceIdentities = &__NSArray0__struct;
      }

      goto LABEL_13;
    }

    goto LABEL_5;
  }

  if (v5 == 4)
  {
    v12 = +[RPPeopleDaemon sharedPeopleDaemon];
    getFamilyDeviceIdentities = [v12 getFamilyDeviceIdentities];
    goto LABEL_26;
  }

  if (v5 != 6)
  {
LABEL_5:
    v9 = [(RPIdentityDaemon *)self _identitiesOfType:v5 error:error];
LABEL_14:
    p_super = &v9->super;
    goto LABEL_15;
  }

  v12 = +[RPPeopleDaemon sharedPeopleDaemon];
  getFamilyDeviceIdentities = [v12 getFriendDeviceIdentities];
LABEL_26:
  v14 = getFamilyDeviceIdentities;
  v15 = &__NSArray0__struct;
  if (getFamilyDeviceIdentities)
  {
    v15 = getFamilyDeviceIdentities;
  }

  p_super = v15;

LABEL_15:

  return p_super;
}

- (id)_identitiesOfType:(int)type error:(id *)error
{
  v10 = type - 1;
  if ((type - 1) >= 0xF || ((0x48FFu >> v10) & 1) == 0)
  {
    v23 = RPErrorF(4294960540, "Bad identity type (%d)", *&type, error, v4, v5, v6, v7, *&type);
    if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011B81C(v23);
      if (!error)
      {
        goto LABEL_12;
      }
    }

    else if (!error)
    {
LABEL_12:

      goto LABEL_13;
    }

    v24 = v23;
    *error = v23;
    goto LABEL_12;
  }

  v12 = off_1001ACFF0[v10];
  firstUnlocked = [(CUSystemMonitor *)self->_systemMonitor firstUnlocked];
  if ((firstUnlocked & 1) == 0)
  {
    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || (firstUnlocked = _LogCategory_Initialize(), firstUnlocked)))
    {
      sub_10011B85C(firstUnlocked, v14, v15);
      if (error)
      {
        goto LABEL_21;
      }
    }

    else if (error)
    {
LABEL_21:
      RPErrorF(4294960593, "Identities not accessible before FirstUnlock", v15, v16, v17, v18, v19, v20, v72);
      *error = v25 = 0;
      goto LABEL_14;
    }

LABEL_13:
    v25 = 0;
    goto LABEL_14;
  }

  if (type == 12 || type == 2)
  {
    v21 = +[RPCloudDaemon sharedCloudDaemon];
    idsDeviceIDSelf = [v21 idsDeviceIDSelf];

    v22 = 3;
  }

  else
  {
    idsDeviceIDSelf = 0;
    v22 = 1;
  }

  v27 = objc_alloc_init(CUKeychainItem);
  [v27 setAccessGroup:@"com.apple.rapport"];
  [v27 setSyncType:v22];
  [v27 setType:v12];
  v28 = objc_alloc_init(CUKeychainManager);
  v85 = 0;
  v29 = [v28 copyItemsMatchingItem:v27 flags:1 error:&v85];
  v30 = v85;
  v31 = v30;
  v83 = v29;
  if (v29 || [v30 code] == -25300)
  {
    v73 = v28;
    v74 = v27;
    v76 = objc_alloc_init(NSMutableArray);
    v32 = [v29 count];
    if (!v32)
    {
      v58 = v31;
      goto LABEL_81;
    }

    v33 = v32;
    selfCopy = self;
    typeCopy = type;
    v34 = 0;
    v82 = kSecAttrViewHintHome;
    while (1)
    {
      v35 = [v83 objectAtIndexedSubscript:v34];
      v36 = v35;
      v81 = v35;
      if (typeCopy != 2)
      {
        goto LABEL_49;
      }

      viewHint = [v35 viewHint];
      v38 = [viewHint isEqual:v82];

      if (v38)
      {
        goto LABEL_49;
      }

      v75 = v31;
      identifier = [v36 identifier];
      type = [v36 type];
      metadata = [v36 metadata];
      Int64Ranged = CFDictionaryGetInt64Ranged();

      v42 = 0;
      while (v34 == v42)
      {
LABEL_47:
        if (v33 == ++v42)
        {

          v36 = v81;
          v31 = v75;
          goto LABEL_49;
        }
      }

      v43 = [v83 objectAtIndexedSubscript:v42];
      viewHint2 = [v43 viewHint];
      v45 = [viewHint2 isEqual:v82];

      if (!v45)
      {
        goto LABEL_46;
      }

      identifier2 = [v43 identifier];
      v47 = identifier;
      v48 = v47;
      if (identifier2 == v47)
      {
      }

      else
      {
        if ((identifier == 0) == (identifier2 != 0))
        {

LABEL_46:
          goto LABEL_47;
        }

        v49 = [identifier2 isEqual:v47];

        if (!v49)
        {
          goto LABEL_46;
        }
      }

      type2 = [v43 type];
      v51 = type;
      v52 = v51;
      if (type2 == v51)
      {
      }

      else
      {
        if ((type == 0) == (type2 != 0))
        {

          goto LABEL_46;
        }

        v53 = [type2 isEqual:v51];

        if (!v53)
        {
          goto LABEL_46;
        }
      }

      metadata2 = [0 metadata];
      v55 = CFDictionaryGetInt64Ranged();

      if (Int64Ranged > v55)
      {
        [(RPIdentityDaemon *)selfCopy _triggerKeychainRefetch];
        goto LABEL_46;
      }

      v70 = v43;
      v36 = v81;
      if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon _identitiesOfType:error:]", 30, "Skipping non-synced duplicate item: %@ vs %@ (rev %u vs %u)\n", v81, v70, Int64Ranged, v55);
      }

      v31 = v75;
      if (v70)
      {
        v58 = v75;
        goto LABEL_72;
      }

LABEL_49:
      v56 = objc_alloc_init(RPIdentity);
      v84 = v31;
      v57 = [v56 updateWithKeychainItem:v36 error:&v84];
      v58 = v84;

      if ([v56 type] == 2 || objc_msgSend(v56, "type") == 1)
      {
        v59 = +[RPCompanionLinkDaemon sharedCompanionLinkDaemon];
        localDeviceInfo = [v59 localDeviceInfo];
        accountID = [localDeviceInfo accountID];

        if (accountID)
        {
          accountID2 = [v56 accountID];

          if (!accountID2)
          {
            [v56 setAccountID:accountID];
          }
        }

        v36 = v81;
      }

      if (v57)
      {
        if (dword_1001D3F50 <= 60 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon _identitiesOfType:error:]", 60, "### Update identity from keychain failed: %@, %{error}\n", v36, v58);
        }
      }

      else
      {
        idsDeviceID = [v56 idsDeviceID];
        v64 = idsDeviceID;
        if (!idsDeviceIDSelf || !idsDeviceID || [idsDeviceID caseInsensitiveCompare:idsDeviceIDSelf])
        {
          v65 = +[RPCloudDaemon sharedCloudDaemon];
          idsDeviceMap = [v65 idsDeviceMap];
          v67 = [idsDeviceMap objectForKeyedSubscript:v64];

          if (v67)
          {
            modelIdentifier = [v67 modelIdentifier];
            if (modelIdentifier)
            {
              [v56 setModel:modelIdentifier];
            }

            name = [v67 name];
            if (name)
            {
              [v56 setName:name];
            }
          }

          [v76 addObject:v56];
          v36 = v81;
        }
      }

      v31 = v58;
LABEL_72:

      if (++v34 == v33)
      {
LABEL_81:
        v25 = [v76 copy];

        v28 = v73;
        v27 = v74;
        goto LABEL_82;
      }
    }
  }

  if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon _identitiesOfType:error:]", 90, "### Get identity keychain items failed: %@, %{error}\n", v12, v31);
  }

  if (error)
  {
    v58 = v31;
    v71 = v31;
    v25 = 0;
    *error = v31;
  }

  else
  {
    v25 = 0;
    v58 = v31;
  }

LABEL_82:

LABEL_14:

  return v25;
}

- (id)getIdentitiesWithFlags:(unsigned int)flags
{
  flagsCopy = flags;
  v4 = objc_alloc_init(NSMutableArray);
  if (flagsCopy)
  {
    v5 = +[RPIdentityDaemon sharedIdentityDaemon];
    v6 = [v5 identityOfSelfAndReturnError:0];

    if (v6)
    {
      [v4 addObject:v6];
    }

    if ((flagsCopy & 2) == 0)
    {
LABEL_3:
      if ((flagsCopy & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((flagsCopy & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = +[RPIdentityDaemon sharedIdentityDaemon];
  v8 = [v7 identitiesOfType:2 error:0];

  if (v8)
  {
    [v4 addObjectsFromArray:v8];
  }

  if ((flagsCopy & 4) == 0)
  {
LABEL_4:
    if ((flagsCopy & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_21:
  v9 = +[RPIdentityDaemon sharedIdentityDaemon];
  v10 = [v9 identitiesOfType:3 error:0];

  if (v10)
  {
    [v4 addObjectsFromArray:v10];
  }

  if ((flagsCopy & 8) == 0)
  {
LABEL_5:
    if ((flagsCopy & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_24:
  v11 = +[RPIdentityDaemon sharedIdentityDaemon];
  v12 = [v11 identitiesOfType:4 error:0];

  if (v12)
  {
    [v4 addObjectsFromArray:v12];
  }

  if ((flagsCopy & 0x10) == 0)
  {
LABEL_6:
    if ((flagsCopy & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_27:
  v13 = +[RPIdentityDaemon sharedIdentityDaemon];
  v14 = [v13 identitiesOfType:5 error:0];

  if (v14)
  {
    [v4 addObjectsFromArray:v14];
  }

  if ((flagsCopy & 0x20) == 0)
  {
LABEL_7:
    if ((flagsCopy & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_30:
  v15 = +[RPIdentityDaemon sharedIdentityDaemon];
  v16 = [v15 identitiesOfType:6 error:0];

  if (v16)
  {
    [v4 addObjectsFromArray:v16];
  }

  if ((flagsCopy & 0x100) == 0)
  {
LABEL_8:
    if ((flagsCopy & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_33:
  v17 = +[RPIdentityDaemon sharedIdentityDaemon];
  v18 = [v17 identitiesOfType:9 error:0];

  if (v18)
  {
    [v4 addObjectsFromArray:v18];
  }

  if ((flagsCopy & 0x400) == 0)
  {
LABEL_9:
    if ((flagsCopy & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_36:
  v19 = +[RPIdentityDaemon sharedIdentityDaemon];
  v20 = [v19 identitiesOfType:12 error:0];

  if (v20)
  {
    [v4 addObjectsFromArray:v20];
    if (dword_1001D3F50 < 31 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011B878(v20);
    }
  }

  if ((flagsCopy & 0x40) == 0)
  {
LABEL_10:
    if ((flagsCopy & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_41:
  v21 = +[RPIdentityDaemon sharedIdentityDaemon];
  v22 = [v21 identitiesOfType:7 error:0];

  if (v22)
  {
    [v4 addObjectsFromArray:v22];
  }

  if ((flagsCopy & 0x80) == 0)
  {
LABEL_11:
    if ((flagsCopy & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

LABEL_44:
  v23 = +[RPIdentityDaemon sharedIdentityDaemon];
  v24 = [v23 identitiesOfType:8 error:0];

  if (v24)
  {
    [v4 addObjectsFromArray:v24];
  }

  if ((flagsCopy & 0x800) == 0)
  {
LABEL_12:
    if ((flagsCopy & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_47:
  v25 = +[RPIdentityDaemon sharedIdentityDaemon];
  v26 = [v25 identitiesOfType:13 error:0];

  if (v26)
  {
    [v4 addObjectsFromArray:v26];
  }

  if ((flagsCopy & 0x2000) == 0)
  {
LABEL_13:
    if ((flagsCopy & 0x4000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_53;
  }

LABEL_50:
  v27 = +[RPIdentityDaemon sharedIdentityDaemon];
  v28 = [v27 identityOfTemporarySelfAndReturnError:0];

  if (v28)
  {
    [v4 addObject:v28];
  }

  if ((flagsCopy & 0x4000) != 0)
  {
LABEL_53:
    v29 = +[RPIdentityDaemon sharedIdentityDaemon];
    v30 = [v29 identitiesOfType:15 error:0];

    if (v30)
    {
      [v4 addObjectsFromArray:v30];
    }
  }

LABEL_56:

  return v4;
}

- (id)sameAccountDeviceIDs
{
  v3 = objc_opt_new();
  v4 = [(RPIdentityDaemon *)self identitiesOfType:2 error:0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006C734;
  v10[3] = &unk_1001ACE68;
  v5 = v3;
  v11 = v5;
  [v4 enumerateObjectsUsingBlock:v10];

  idsDeviceID = [(RPIdentity *)self->_selfIdentityCache idsDeviceID];

  if (idsDeviceID)
  {
    idsDeviceID2 = [(RPIdentity *)self->_selfIdentityCache idsDeviceID];
    [v5 addObject:idsDeviceID2];
  }

  v8 = [v5 copy];

  return v8;
}

- (id)identityOfSelfAndReturnError:(id *)error
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = self->_selfIdentityCache;
  if (v5)
  {
    goto LABEL_15;
  }

  firstUnlocked = [(CUSystemMonitor *)self->_systemMonitor firstUnlocked];
  if ((firstUnlocked & 1) == 0)
  {
    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || (firstUnlocked = _LogCategory_Initialize(), firstUnlocked)))
    {
      sub_10011B8BC(firstUnlocked, v7, v8);
      if (error)
      {
        goto LABEL_9;
      }
    }

    else if (error)
    {
LABEL_9:
      RPErrorF(4294960593, "SelfIdentity not accessible before FirstUnlock", v8, v9, v10, v11, v12, v13, v23);
      *error = v5 = 0;
      goto LABEL_15;
    }

    v5 = 0;
    goto LABEL_15;
  }

  [(RPIdentityDaemon *)self _loadSelfIdentity:0];
  v14 = self->_selfIdentityCache;
  v5 = v14;
  if (v14)
  {
    v21 = v14;
  }

  else if (error)
  {
    *error = RPErrorF(4294960534, "SelfIdentity load failed", v15, v16, v17, v18, v19, v20, v23);
  }

LABEL_15:

  return v5;
}

- (id)identityOfTemporarySelfAndReturnError:(id *)error
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = self->_temporarySelfIdentityCache;
  v12 = v5;
  if (v5)
  {
    v13 = v5;
  }

  else if (error)
  {
    *error = RPErrorF(4294960534, "SelfTemporaryIdentity not found", v6, v7, v8, v9, v10, v11, v15);
  }

  return v12;
}

- (unint64_t)featureFlagsForIdentityMatchingIDSDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = [(RPIdentityDaemon *)self identitiesOfType:4 error:0];
  v6 = [(RPIdentityDaemon *)self identitiesOfType:6 error:0];
  v7 = [(RPIdentityDaemon *)self identitiesOfType:2 error:0];
  v8 = [[NSMutableArray alloc] initWithArray:v5];
  [v8 addObjectsFromArray:v6];
  [v8 addObjectsFromArray:v7];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v8;
  featureFlags = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (featureFlags)
  {
    v17 = v5;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != featureFlags; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        idsDeviceID = [v13 idsDeviceID];
        v15 = [idsDeviceID isEqualToString:identifierCopy];

        if (v15)
        {
          featureFlags = [v13 featureFlags];
          goto LABEL_11;
        }
      }

      featureFlags = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (featureFlags)
      {
        continue;
      }

      break;
    }

LABEL_11:
    v5 = v17;
  }

  return featureFlags;
}

- (void)regenerateTemporarySelfIdentity
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006CB80;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)getPairedIdentityWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(CUPairingManager);
  [v5 setDispatchQueue:self->_dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006CCC0;
  v7[3] = &unk_1001ACE90;
  v7[4] = v5;
  v8 = completionCopy;
  v6 = completionCopy;
  [v5 getPairingIdentityWithOptions:134 completion:v7];
}

- (void)getPairingIdentityFromHomeWithAccessory:(id)accessory completion:(id)completion
{
  accessoryCopy = accessory;
  completionCopy = completion;
  v6 = +[RPCompanionLinkDaemon sharedCompanionLinkDaemon];
  rpHomeKitManager = [v6 rpHomeKitManager];

  if (rpHomeKitManager)
  {
    [rpHomeKitManager getPairingIdentityFromHomeWithAccessory:accessoryCopy completionHandler:completionCopy];
  }

  else
  {
    v14 = RPErrorF(4294960578, "HomeKit manager not initialized", v8, v9, v10, v11, v12, v13, v15);
    completionCopy[2](completionCopy, 0, v14);
  }
}

- (void)addSelfIdentityInfoToMessage:(id)message flags:(unsigned int)flags
{
  flagsCopy = flags;
  messageCopy = message;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v21 = 0;
  v7 = [(RPIdentityDaemon *)self identityOfSelfAndReturnError:&v21];
  v8 = v21;
  if (v7)
  {
    deviceIRKData = [v7 deviceIRKData];
    if (deviceIRKData)
    {
      [messageCopy setObject:deviceIRKData forKeyedSubscript:@"_dIRK"];
    }

    edPKData = [v7 edPKData];
    if (edPKData)
    {
      [messageCopy setObject:edPKData forKeyedSubscript:@"_edPK"];
    }

    if (flagsCopy)
    {
      v19 = [v7 featureFlags] & 0xF8;
      if (v19)
      {
        v20 = [NSNumber numberWithUnsignedLongLong:v19];
        [messageCopy setObject:v20 forKeyedSubscript:@"_ff"];
      }

      else
      {
        [messageCopy setObject:&off_1001B7F48 forKeyedSubscript:@"_ff"];
      }

      [messageCopy setObject:@"?" forKeyedSubscript:@"model"];
      [messageCopy setObject:@"?" forKeyedSubscript:@"model"];
    }

    else
    {
      btIRKData = [v7 btIRKData];
      if (btIRKData)
      {
        [messageCopy setObject:btIRKData forKeyedSubscript:@"_bIRK"];
      }

      btAddress = [v7 btAddress];
      if (btAddress)
      {
        [messageCopy setObject:btAddress forKeyedSubscript:@"_bAdd"];
      }

      featureFlags = [v7 featureFlags];
      if (featureFlags)
      {
        v14 = [NSNumber numberWithUnsignedLongLong:featureFlags];
        [messageCopy setObject:v14 forKeyedSubscript:@"_ff"];
      }

      v15 = [messageCopy objectForKeyedSubscript:@"model"];

      if (!v15)
      {
        v16 = GestaltCopyAnswer();
        if (v16)
        {
          [messageCopy setObject:v16 forKeyedSubscript:@"model"];
        }
      }

      v17 = [messageCopy objectForKeyedSubscript:@"name"];

      if (!v17)
      {
        v18 = GestaltCopyAnswer();
        if (v18)
        {
          [messageCopy setObject:v18 forKeyedSubscript:@"name"];
        }
      }
    }
  }

  else if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011B934(v8);
  }
}

- (BOOL)removeIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  type = [identityCopy type];
  if (type > 0x10)
  {
    v8 = "?";
  }

  else
  {
    v8 = off_1001AD0E0[type];
  }

  v9 = [NSString stringWithUTF8String:v8];
  if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011B974(identityCopy);
  }

  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) == 0)
  {
    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011B9B4(v9);
      if (error)
      {
        goto LABEL_20;
      }
    }

    else if (error)
    {
LABEL_20:
      RPErrorF(4294960593, "Account identity not removable before FirstUnlock", v10, v11, v12, v13, v14, v15, v28);
      *error = v23 = 0;
      goto LABEL_34;
    }

    v23 = 0;
    goto LABEL_34;
  }

  type2 = [identityCopy type];
  if (type2 == 2)
  {
    v17 = 0;
  }

  else
  {
    v17 = 6;
  }

  if (type2 == 2)
  {
    v18 = 3;
  }

  else
  {
    v18 = 1;
  }

  v19 = objc_alloc_init(CUKeychainItem);
  [v19 setAccessGroup:@"com.apple.rapport"];
  [v19 setAccessibleType:v17];
  identifier = [identityCopy identifier];
  [v19 setIdentifier:identifier];

  [v19 setSyncType:v18];
  v21 = [identityCopy type] - 1;
  if (v21 > 0xE)
  {
    v22 = 0;
  }

  else
  {
    v22 = off_1001AD068[v21];
  }

  [v19 setType:v22];
  v24 = objc_alloc_init(CUKeychainManager);
  v29 = 0;
  v23 = [v24 removeItemMatchingItem:v19 error:&v29];
  v25 = v29;
  if (v23)
  {
    [(RPIdentityDaemon *)self _postIdentitiesChangedNotification];
  }

  else
  {
    if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon removeIdentity:error:]", 90, "### RemoveIdentity keychain item failed: %@, %@, %{error}\n", identityCopy, v19, v25);
    }

    if (error)
    {
      v26 = v25;
      *error = v25;
    }
  }

LABEL_34:
  return v23;
}

- (BOOL)saveIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  type = [identityCopy type];
  if (type > 0x10)
  {
    v8 = "?";
  }

  else
  {
    v8 = off_1001AD0E0[type];
  }

  v9 = [NSString stringWithUTF8String:v8];
  if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011B9F4(identityCopy);
  }

  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) == 0)
  {
    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011BA34(v9);
      if (error)
      {
        goto LABEL_19;
      }
    }

    else if (error)
    {
LABEL_19:
      RPErrorF(4294960593, "Account identity not save-able before FirstUnlock", v10, v11, v12, v13, v14, v15, v23);
      *error = LOBYTE(v20) = 0;
      goto LABEL_33;
    }

    LOBYTE(v20) = 0;
    goto LABEL_33;
  }

  v16 = objc_alloc_init(CUKeychainItem);
  [v16 setAccessGroup:@"com.apple.rapport"];
  [v16 setAccessibleType:6];
  [v16 setInvisible:1];
  [v16 setSyncType:1];
  v24 = 0;
  v17 = [v16 updateWithRPIdentity:identityCopy revisionUpdate:1 error:&v24];
  v18 = v24;
  if (v17)
  {
    if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon saveIdentity:error:]", 90, "### Convert to keychain item failed: %@, %{error}\n", identityCopy, v18);
    }

    if (error)
    {
      v21 = v18;
      LOBYTE(v20) = 0;
      *error = v18;
    }

    else
    {
      LOBYTE(v20) = 0;
    }
  }

  else
  {
    v19 = objc_alloc_init(CUKeychainManager);
    v20 = [v19 addOrUpdateOrReAddItem:v16 logCategory:&dword_1001D3F50 logLabel:v9 error:error];
    if (v20)
    {
      if ([identityCopy type] == 2)
      {
        if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
        {
          sub_10011BA74();
        }

        [(RPIdentityDaemon *)self _updateSameAccountIdentities];
      }

      else
      {
        [(RPIdentityDaemon *)self _postIdentitiesChangedNotification];
      }
    }
  }

LABEL_33:
  return v20;
}

- (BOOL)saveIdentityWithIDSDeviceID:(id)d message:(id)message error:(id *)error
{
  dCopy = d;
  messageCopy = message;
  [(RPIdentityDaemon *)self identitiesOfType:2 error:0];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v30 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v28 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v27 + 1) + 8 * v13);
      identifier = [v14 identifier];
      v16 = [identifier isEqual:dCopy];

      if (v16)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v17 = v14;

    if (!v17)
    {
      goto LABEL_12;
    }

    v18 = 0;
  }

  else
  {
LABEL_9:

LABEL_12:
    v17 = objc_alloc_init(RPIdentity);
    [v17 setIdentifier:dCopy];
    [v17 setType:2];
    v18 = 1;
  }

  if ([v17 updateWithRPMessage:messageCopy error:0])
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  idsDeviceID = [v17 idsDeviceID];
  v21 = dCopy;
  v22 = v21;
  if (idsDeviceID == v21)
  {

    if (!v19)
    {
      goto LABEL_22;
    }

LABEL_25:
    v24 = [(RPIdentityDaemon *)self saveIdentity:v17 error:error];
    goto LABEL_26;
  }

  if ((v21 == 0) == (idsDeviceID != 0))
  {

    goto LABEL_24;
  }

  v23 = [idsDeviceID isEqual:v21];

  if ((v23 & 1) == 0)
  {
LABEL_24:
    [v17 setIdsDeviceID:v22];
    goto LABEL_25;
  }

  if (v19)
  {
    goto LABEL_25;
  }

LABEL_22:
  v24 = 1;
LABEL_26:

  return v24;
}

- (void)removeSessionPairedIdentityWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006DC48;
  v7[3] = &unk_1001AB488;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)updateSessionPairedIdentity:(id)identity
{
  identityCopy = identity;
  identifier = [identityCopy identifier];

  if (identifier)
  {
    dispatchQueue = self->_dispatchQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10006DF24;
    v7[3] = &unk_1001AB488;
    v7[4] = self;
    v8 = identityCopy;
    dispatch_async(dispatchQueue, v7);
  }

  else if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011BB70(identityCopy);
  }
}

- (id)_dedupeSameAccountDeviceIdentities:(id)identities
{
  identitiesCopy = identities;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10006E728;
  v21[3] = &unk_1001ACE68;
  v4 = objc_opt_new();
  v22 = v4;
  [identitiesCopy enumerateObjectsUsingBlock:v21];
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10006E850;
  v18[3] = &unk_1001ACEB8;
  v7 = v5;
  v19 = v7;
  v8 = v6;
  v20 = v8;
  [v4 enumerateKeysAndObjectsUsingBlock:v18];
  if ([v7 count])
  {
    allValues = [v7 allValues];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_10006E90C;
    v16 = &unk_1001ACF08;
    v10 = v8;
    v17 = v10;
    [allValues enumerateObjectsUsingBlock:&v13];

    v11 = [v10 copy];
  }

  else
  {
    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011BC70();
    }

    v11 = identitiesCopy;
  }

  return v11;
}

- (void)removeAdHocPairedIdentityWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006EC40;
  v7[3] = &unk_1001AB488;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)removeAllAdHocPairedIdentities
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006EF10;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_ensureStarted
{
  firstUnlocked = [(CUSystemMonitor *)self->_systemMonitor firstUnlocked];
  if (firstUnlocked)
  {
    if (self->_homeViewChangeToken == -1)
    {
      if (dword_1001D3F50 <= 30)
      {
        if (dword_1001D3F50 != -1 || (firstUnlocked = _LogCategory_Initialize(), firstUnlocked))
        {
          sub_10011BDA0(firstUnlocked, v4, v5);
        }
      }

      v6 = [NSString alloc];
      kSecAttrViewHintHome = [v6 initWithFormat:@"com.apple.security.view-change.%@", kSecAttrViewHintHome];
      uTF8String = [kSecAttrViewHintHome UTF8String];
      dispatchQueue = self->_dispatchQueue;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10006F2B8;
      handler[3] = &unk_1001AAFE8;
      handler[4] = self;
      notify_register_dispatch(uTF8String, &self->_homeViewChangeToken, dispatchQueue, handler);
      [(RPIdentityDaemon *)self _updateSameAccountIdentities];
    }

    if (self->_homeViewReadyToken == -1)
    {
      v10 = [NSString alloc];
      kSecAttrViewHintHome2 = [v10 initWithFormat:@"com.apple.security.view-ready.%@", kSecAttrViewHintHome];
      uTF8String2 = [kSecAttrViewHintHome2 UTF8String];
      v13 = self->_dispatchQueue;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10006F334;
      v16[3] = &unk_1001AAFE8;
      v16[4] = self;
      notify_register_dispatch(uTF8String2, &self->_homeViewReadyToken, v13, v16);
    }

    if (self->_pairedDevicesNotifier == -1)
    {
      v14 = self->_dispatchQueue;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10006F3BC;
      v15[3] = &unk_1001AAFE8;
      v15[4] = self;
      notify_register_dispatch("com.apple.pairing.peerChanged", &self->_pairedDevicesNotifier, v14, v15);
      [(RPIdentityDaemon *)self _updatePairedDeviceIdentities];
    }

    if (!self->_selfIdentityCache)
    {
      [(RPIdentityDaemon *)self _loadSelfIdentity:0];
    }

    if (!self->_temporarySelfIdentityCache)
    {
      [(RPIdentityDaemon *)self _loadTemporarySelfIdentity];
    }
  }

  else if (dword_1001D3F50 <= 30)
  {
    if (dword_1001D3F50 != -1 || (firstUnlocked = _LogCategory_Initialize(), firstUnlocked))
    {
      sub_10011BD84(firstUnlocked, v4, v5);
    }
  }
}

- (void)_ensureStopped
{
  homeViewChangeToken = self->_homeViewChangeToken;
  if (homeViewChangeToken != -1)
  {
    if (dword_1001D3F50 > 30)
    {
      goto LABEL_6;
    }

    if (dword_1001D3F50 != -1 || (homeViewChangeToken = _LogCategory_Initialize(), homeViewChangeToken))
    {
      sub_10011BE10(homeViewChangeToken, a2, v2);
    }

    LODWORD(homeViewChangeToken) = self->_homeViewChangeToken;
    if (homeViewChangeToken != -1)
    {
LABEL_6:
      notify_cancel(homeViewChangeToken);
      self->_homeViewChangeToken = -1;
    }
  }

  homeViewReadyToken = self->_homeViewReadyToken;
  if (homeViewReadyToken != -1)
  {
    if (dword_1001D3F50 > 30)
    {
      goto LABEL_12;
    }

    if (dword_1001D3F50 != -1 || (homeViewReadyToken = _LogCategory_Initialize(), homeViewReadyToken))
    {
      sub_10011BE2C(homeViewReadyToken, a2, v2);
    }

    LODWORD(homeViewReadyToken) = self->_homeViewReadyToken;
    if (homeViewReadyToken != -1)
    {
LABEL_12:
      notify_cancel(homeViewReadyToken);
      self->_homeViewReadyToken = -1;
    }
  }

  [(CUCoalescer *)self->_identitiesChangedCoalescer invalidate];
  identitiesChangedCoalescer = self->_identitiesChangedCoalescer;
  self->_identitiesChangedCoalescer = 0;

  pairedDeviceIdentities = self->_pairedDeviceIdentities;
  self->_pairedDeviceIdentities = 0;

  pairedDevicesNotifier = self->_pairedDevicesNotifier;
  if (pairedDevicesNotifier != -1)
  {
    notify_cancel(pairedDevicesNotifier);
    self->_pairedDevicesNotifier = -1;
  }

  sameAccountDeviceIdentities = self->_sameAccountDeviceIdentities;
  self->_sameAccountDeviceIdentities = 0;

  sharedHomeDeviceIdentities = self->_sharedHomeDeviceIdentities;
  self->_sharedHomeDeviceIdentities = 0;

  sharedHomeExtraDeviceIdentities = self->_sharedHomeExtraDeviceIdentities;
  self->_sharedHomeExtraDeviceIdentities = 0;

  sharedTVUserDeviceIdentities = self->_sharedTVUserDeviceIdentities;
  self->_sharedTVUserDeviceIdentities = 0;

  adHocPairedDeviceIdentities = self->_adHocPairedDeviceIdentities;
  self->_adHocPairedDeviceIdentities = 0;

  selfIdentityCache = self->_selfIdentityCache;
  self->_selfIdentityCache = 0;

  temporarySelfIdentityCache = self->_temporarySelfIdentityCache;
  self->_temporarySelfIdentityCache = 0;

  temporarySelfIdentityTimer = self->_temporarySelfIdentityTimer;
  if (temporarySelfIdentityTimer)
  {
    v18 = temporarySelfIdentityTimer;
    dispatch_source_cancel(v18);
    v17 = self->_temporarySelfIdentityTimer;
    self->_temporarySelfIdentityTimer = 0;
  }
}

- (void)_postIdentitiesChangedNotification
{
  identitiesChangedCoalescer = self->_identitiesChangedCoalescer;
  if (!identitiesChangedCoalescer)
  {
    v4 = objc_alloc_init(CUCoalescer);
    v5 = self->_identitiesChangedCoalescer;
    self->_identitiesChangedCoalescer = v4;

    [(CUCoalescer *)self->_identitiesChangedCoalescer setDispatchQueue:self->_dispatchQueue];
    [(CUCoalescer *)self->_identitiesChangedCoalescer setMinDelay:0.3];
    [(CUCoalescer *)self->_identitiesChangedCoalescer setMaxDelay:1.0];
    [(CUCoalescer *)self->_identitiesChangedCoalescer setActionHandler:&stru_1001ACF28];
    identitiesChangedCoalescer = self->_identitiesChangedCoalescer;
  }

  [(CUCoalescer *)identitiesChangedCoalescer trigger];
}

- (void)_triggerKeychainRefetch
{
  v3 = mach_absolute_time();
  v4 = UpTicksToSeconds();
  if (v4 >> 5 > 0x2A2)
  {
    if (dword_1001D3F50 <= 30)
    {
      if (dword_1001D3F50 != -1 || (v4 = _LogCategory_Initialize(), v4))
      {
        sub_10011BE90(v4, v5, v6);
      }
    }

    self->_keychainRefetchTicks = v3;
    v10 = 0;
    v8 = [CKKSControl controlObject:&v10];
    v9 = v10;
    if (v8)
    {
      [v8 rpcFetchAndProcessChanges:kSecAttrViewHintHome reply:&stru_1001ACF48];
    }

    else if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011BEAC(v9);
    }
  }

  else if (dword_1001D3F50 <= 30)
  {
    v7 = v4;
    if (dword_1001D3F50 != -1 || _LogCategory_Initialize())
    {
      sub_10011BEEC(v7);
    }
  }
}

- (void)_updatePairedDeviceIdentities
{
  selfCopy = self;
  if (dword_1001D3F50 <= 30)
  {
    if (dword_1001D3F50 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_10011BF74(self, a2, v2);
    }
  }

  v4 = objc_alloc_init(CUPairingManager);
  [v4 setDispatchQueue:selfCopy->_dispatchQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006F954;
  v5[3] = &unk_1001ACF70;
  v5[4] = v4;
  v5[5] = selfCopy;
  [v4 getPairedPeersWithOptions:134 completion:v5];
}

- (BOOL)_removeSameAccountIdentityWithIDSIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v39 = 0;
  v7 = [(RPIdentityDaemon *)self _identitiesOfType:2 error:&v39];
  v8 = v39;
  if (v8)
  {
    v9 = v8;
    if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011C194(v9);
    }

    v10 = 0;
    v11 = 0;
    if (error)
    {
LABEL_6:
      v12 = v9;
      *error = v9;
      v11 = v10;
    }
  }

  else
  {
    v32 = v7;
    errorCopy = error;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v14 = v7;
    v15 = [v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v36;
      do
      {
        v19 = 0;
        do
        {
          if (*v36 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v35 + 1) + 8 * v19);
          idsDeviceID = [v20 idsDeviceID];
          v22 = [idsDeviceID isEqualToString:identifierCopy];

          if (v22)
          {
            v34 = v17;
            v23 = [(RPIdentityDaemon *)self removeIdentity:v20 error:&v34];
            v9 = v34;

            if (v23)
            {
              v10 = 1;
              v17 = v14;
              goto LABEL_30;
            }

            if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
            {
              sub_10011C1D4(v9);
            }

            v17 = v9;
          }

          v19 = v19 + 1;
        }

        while (v16 != v19);
        v24 = [v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
        v16 = v24;
      }

      while (v24);
    }

    else
    {
      v17 = 0;
    }

    if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011C214();
    }

    v9 = RPErrorF(4294960569, "Identity not found", v25, v26, v27, v28, v29, v30, v31);
    v10 = 0;
LABEL_30:
    v7 = v32;
    error = errorCopy;

    v11 = v10;
    if (errorCopy)
    {
      goto LABEL_6;
    }
  }

  return v11;
}

- (void)_loadSelfIdentity:(BOOL)identity
{
  identityCopy = identity;
  _sepLoadSelfPrivateKey = +[RPIdentity _sepBackedIdentityEnabled];
  if (!_sepLoadSelfPrivateKey)
  {
    v9 = 0;
    goto LABEL_11;
  }

  sepPrivateKey = [(RPIdentity *)self->_selfIdentityCache sepPrivateKey];
  if (sepPrivateKey)
  {
    v9 = sepPrivateKey;
    _sepLoadSelfPrivateKey = CFRetain(sepPrivateKey);
    if (!identityCopy)
    {
LABEL_9:
      if (v9)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else
  {
    _sepLoadSelfPrivateKey = [(RPIdentityDaemon *)self _sepLoadSelfPrivateKey];
    v9 = _sepLoadSelfPrivateKey;
    if (!identityCopy)
    {
      goto LABEL_9;
    }
  }

  if (!v9)
  {
    goto LABEL_9;
  }

  [(RPIdentityDaemon *)self _sepRemoveSelfPrivateKey:v9];
  CFRelease(v9);
LABEL_10:
  _sepLoadSelfPrivateKey = [(RPIdentityDaemon *)self _sepGenerateSelfPrivateKey];
  v9 = _sepLoadSelfPrivateKey;
LABEL_11:
  if (!identityCopy)
  {
    if (dword_1001D3F50 <= 30)
    {
      if (dword_1001D3F50 != -1 || (_sepLoadSelfPrivateKey = _LogCategory_Initialize(), _sepLoadSelfPrivateKey))
      {
        sub_10011C248(_sepLoadSelfPrivateKey, v6, v7);
      }
    }

    v10 = objc_alloc_init(CUKeychainItem);
    [v10 setAccessGroup:@"com.apple.rapport"];
    [v10 setIdentifier:@"SelfIdentity"];
    [v10 setSyncType:1];
    [v10 setType:@"RPIdentity-Self"];
    v11 = objc_alloc_init(CUKeychainManager);
    v23 = 0;
    v12 = [v11 copyItemMatchingItem:v10 flags:1 error:&v23];
    v13 = v23;
    v14 = v13;
    if (v12)
    {
      v15 = objc_alloc_init(RPIdentity);
      v22 = v14;
      [v15 updateWithKeychainItem:v12 error:&v22];
      v16 = v22;

      if (v16 && dword_1001D3F50 <= 60 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
      {
        sub_10011C264(v16);
      }

      v17 = [(RPIdentityDaemon *)self _updateSelfIdentityPrivate:v15 create:0];
      v18 = [v15 updateWithSEPPrivateKey:v9];
      if (v18 & 1 | v17 & 1)
      {

        v15 = 0;
      }

      else if (!(v18 & 0xFBFFFFFF | v17))
      {
        if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
        {
          sub_10011C2A4();
        }

        v19 = 0;
        goto LABEL_33;
      }

      v19 = 1;
      goto LABEL_33;
    }

    if ([v13 code] != -25300 && dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011C2D8(v14);
    }

    v15 = 0;
    v19 = 0;
    v16 = v14;
LABEL_33:

    if (v15)
    {
      goto LABEL_38;
    }
  }

  if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011C318();
  }

  v15 = objc_alloc_init(RPIdentity);
  [v15 setIdentifier:@"SelfIdentity"];
  v19 = 1;
  [v15 setType:1];
  [v15 setSource:1];
  [(RPIdentityDaemon *)self _updateSelfIdentityPrivate:v15 create:1];
  [v15 updateWithSEPPrivateKey:v9];
LABEL_38:
  if (v9)
  {
    CFRelease(v9);
  }

  if (v19)
  {
    objc_storeStrong(&self->_selfIdentityCache, v15);
    [(RPIdentityDaemon *)self _saveSelfIdentityPrivate:v15];
    [(RPIdentityDaemon *)self _saveSelfIdentityPublicWithPrivateIdentity:v15 force:0];
LABEL_43:
    v21 = +[RPDaemon sharedDaemon];
    [v21 postDaemonInfoChanges:4];

    [(RPIdentityDaemon *)self _postIdentitiesChangedNotification];
    [(RPIdentityDaemon *)self _update];
    goto LABEL_44;
  }

  selfIdentityCache = self->_selfIdentityCache;
  objc_storeStrong(&self->_selfIdentityCache, v15);
  [(RPIdentityDaemon *)self _saveSelfIdentityPublicWithPrivateIdentity:v15 force:0];
  if (!selfIdentityCache)
  {
    goto LABEL_43;
  }

LABEL_44:
}

- (void)_saveSelfIdentityPrivate:(id)private
{
  privateCopy = private;
  if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011C34C(privateCopy);
  }

  v4 = objc_alloc_init(CUKeychainItem);
  [v4 setAccessGroup:@"com.apple.rapport"];
  [v4 setAccessibleType:6];
  [v4 setInvisible:1];
  [v4 setSyncType:1];
  v10 = 0;
  v5 = [v4 updateWithRPIdentity:privateCopy revisionUpdate:1 error:&v10];
  v6 = v10;
  if (v5)
  {
    if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon _saveSelfIdentityPrivate:]", 90, "### SelfIdentity private convert to keychain failed: %@, %{error}\n", privateCopy, v6);
    }

    v8 = v6;
  }

  else
  {
    v7 = objc_alloc_init(CUKeychainManager);
    v9 = v6;
    [v7 addOrUpdateOrReAddItem:v4 logCategory:&dword_1001D3F50 logLabel:@"SelfIdentity private" error:&v9];
    v8 = v9;

    if (v8)
    {
      if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon _saveSelfIdentityPrivate:]", 90, "### SelfIdentity private save failed: %@, %{error}\n", v4, v8);
      }
    }

    else if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011C38C();
    }
  }
}

- (void)_saveSelfIdentityPublicWithPrivateIdentity:(id)identity force:(BOOL)force
{
  forceCopy = force;
  identityCopy = identity;
  idsDeviceID = [identityCopy idsDeviceID];
  v9 = idsDeviceID;
  if (idsDeviceID)
  {
    v10 = objc_alloc_init(CUKeychainItem);
    [v10 setAccessGroup:@"com.apple.rapport"];
    [v10 setIdentifier:v9];
    [v10 setSyncType:2];
    [v10 setType:@"RPIdentity-SameAccountDevice"];
    v11 = kSecAttrViewHintHome;
    [v10 setViewHint:kSecAttrViewHintHome];
    v27 = 0;
    v22 = objc_alloc_init(CUKeychainManager);
    v12 = [v22 copyItemMatchingItem:v10 flags:1 error:&v27];
    v13 = v27;
    v14 = v13;
    if (v12)
    {
      v15 = objc_alloc_init(RPIdentity);
      v26 = v14;
      [v15 updateWithKeychainItem:v12 error:&v26];
      v16 = v26;

      if (v16 && dword_1001D3F50 <= 60 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
      {
        sub_10011C3C0(v16);
      }

      v17 = [(RPIdentityDaemon *)self _updateSelfIdentityPublic:v15 privateIdentity:identityCopy];
      if (v17)
      {

        v14 = v16;
      }

      else
      {
        v14 = v16;
        if (v15)
        {
LABEL_24:
          if (forceCopy)
          {
            v18 = v17 | 0x1000;
          }

          else
          {
            v18 = v17;
          }

          if (v18)
          {
            v19 = objc_alloc_init(CUKeychainItem);
            [v19 setAccessGroup:@"com.apple.rapport"];
            [v19 setAccessibleType:2];
            [v19 setInvisible:1];
            [v19 setSyncType:2];
            [v19 setViewHint:v11];
            v25 = v16;
            v20 = [v19 updateWithRPIdentity:v15 revisionUpdate:1 error:&v25];
            v21 = v25;

            if (v20)
            {
              if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon _saveSelfIdentityPublicWithPrivateIdentity:force:]", 90, "### SelfIdentity public convert to keychain failed: %@, %{error}\n", v15, v21);
              }
            }

            else
            {

              v24 = 0;
              [v22 addOrUpdateOrReAddItem:v19 logCategory:&dword_1001D3F50 logLabel:@"SelfIdentity public" error:&v24];
              v21 = v24;
              if (v21)
              {
                if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon _saveSelfIdentityPublicWithPrivateIdentity:force:]", 90, "### SelfIdentity public save failed: %@, %{error}\n", v19, v21);
                }
              }

              else if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
              {
                sub_10011C474(v18);
              }

              [(RPIdentityDaemon *)self _updateSameAccountIdentities];
            }

            v16 = v21;
          }

          else if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
          {
            sub_10011C4BC();
          }

          goto LABEL_50;
        }
      }
    }

    else if ([v13 code] != -25300)
    {
      if (dword_1001D3F50 > 90)
      {
LABEL_23:
        v15 = objc_alloc_init(RPIdentity);
        [v15 setIdentifier:v9];
        [v15 setType:2];
        [v15 setSource:1];
        [(RPIdentityDaemon *)self _updateSelfIdentityPublic:v15 privateIdentity:identityCopy];
        v17 = 2048;
        v16 = v14;
        goto LABEL_24;
      }

      if (dword_1001D3F50 != -1 || _LogCategory_Initialize())
      {
        sub_10011C400(v14);
      }
    }

    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011C440();
    }

    goto LABEL_23;
  }

  if (dword_1001D3F50 <= 90)
  {
    if (dword_1001D3F50 != -1 || (idsDeviceID = _LogCategory_Initialize(), idsDeviceID))
    {
      sub_10011C4F0(idsDeviceID, v7, v8);
    }
  }

LABEL_50:
}

- (void)_removeSelfIdentityPublicWithPrivateIdentity:(id)identity
{
  idsDeviceID = [identity idsDeviceID];
  v7 = idsDeviceID;
  if (idsDeviceID)
  {
    v8 = objc_alloc_init(CUKeychainItem);
    [v8 setAccessGroup:@"com.apple.rapport"];
    [v8 setIdentifier:v7];
    [v8 setSyncType:2];
    [v8 setType:@"RPIdentity-SameAccountDevice"];
    [v8 setViewHint:kSecAttrViewHintHome];
    v9 = objc_alloc_init(CUKeychainManager);
    v12 = 0;
    v10 = [v9 removeItemMatchingItem:v8 error:&v12];
    v11 = v12;
    if ([v11 code] == -25300)
    {
      if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
      {
        sub_10011C54C(v10);
      }
    }

    else if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011C50C(v11);
    }

    [(RPIdentityDaemon *)self _updateSameAccountIdentities];
  }

  else if (dword_1001D3F50 <= 90)
  {
    if (dword_1001D3F50 != -1 || (idsDeviceID = _LogCategory_Initialize(), idsDeviceID))
    {
      sub_10011C5A4(idsDeviceID, v5, v6);
    }
  }
}

- (void)_loadTemporarySelfIdentity
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    if (!self->_temporarySelfIdentityCache)
    {
      if (dword_1001D3F50 <= 30)
      {
        if (dword_1001D3F50 != -1 || (v3 = _LogCategory_Initialize(), v3))
        {
          sub_10011C5C0(v3, v4, v5);
        }
      }

      v6 = [[RPIdentity alloc] initWithType:14];
      temporarySelfIdentityCache = self->_temporarySelfIdentityCache;
      self->_temporarySelfIdentityCache = v6;

      uUIDString = [(NSUUID *)self->_adHocPairingIdentifier UUIDString];
      [(RPIdentity *)self->_temporarySelfIdentityCache setIdentifier:uUIDString];
    }

    v9 = NSRandomData();
    [(RPIdentity *)self->_temporarySelfIdentityCache setDeviceIRKData:v9];

    p_adHocPairedDeviceIdentities = &self->_adHocPairedDeviceIdentities;
    if ([(NSMutableArray *)self->_adHocPairedDeviceIdentities count])
    {
      if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
      {
        sub_10011C5DC(&self->_adHocPairedDeviceIdentities);
      }

      v11 = *p_adHocPairedDeviceIdentities;
      *p_adHocPairedDeviceIdentities = 0;

      v12 = +[RPDaemon sharedDaemon];
      [v12 postDaemonInfoChanges:0x4000];
    }

    temporarySelfIdentityTimer = self->_temporarySelfIdentityTimer;
    if (temporarySelfIdentityTimer)
    {
      v14 = temporarySelfIdentityTimer;
      dispatch_source_cancel(v14);
      v15 = self->_temporarySelfIdentityTimer;
      self->_temporarySelfIdentityTimer = 0;
    }

    v16 = +[NSDate date];
    v17 = +[NSCalendar currentCalendar];
    v18 = [v17 startOfDayForDate:v16];

    v19 = +[NSCalendar currentCalendar];
    v20 = [v19 dateByAddingUnit:16 value:1 toDate:v18 options:0];

    if (v20)
    {
      v24 = +[NSCalendar currentCalendar];
      v25 = [v24 startOfDayForDate:v20];

      [v25 timeIntervalSinceDate:v16];
    }

    else if (dword_1001D3F50 <= 90)
    {
      if (dword_1001D3F50 != -1 || (v21 = _LogCategory_Initialize(), v21))
      {
        sub_10011C624(v21, v22, v23);
      }
    }

    v26 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    v27 = self->_temporarySelfIdentityTimer;
    self->_temporarySelfIdentityTimer = v26;
    v28 = v26;

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100070D5C;
    v29[3] = &unk_1001AB488;
    v29[4] = v28;
    v29[5] = self;
    dispatch_source_set_event_handler(v28, v29);
    CUDispatchTimerSetEx();
    dispatch_activate(v28);
    [(RPIdentityDaemon *)self _postIdentitiesChangedNotification];
  }
}

- (BOOL)_stationaryDevice
{
  DeviceClass = GestaltGetDeviceClass();
  v3 = sub_10001BA9C(DeviceClass);
  v4 = GestaltCopyAnswer();
  if ([v4 containsString:@"Mac"])
  {
    v5 = MGGetBoolAnswer() ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  v6 = v3 | v5;

  return v6 & 1;
}

- (unsigned)_updateSelfIdentityPrivate:(id)private create:(BOOL)create
{
  privateCopy = private;
  v7 = +[RPCompanionLinkDaemon sharedCompanionLinkDaemon];
  localDeviceInfo = [v7 localDeviceInfo];
  accountAltDSID = [localDeviceInfo accountAltDSID];

  if (accountAltDSID && ([privateCopy accountAltDSID], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    [privateCopy setAccountAltDSID:accountAltDSID];
    v11 = 0x2000000;
  }

  else
  {
    v11 = 0;
  }

  v12 = +[RPCompanionLinkDaemon sharedCompanionLinkDaemon];
  localDeviceInfo2 = [v12 localDeviceInfo];
  accountID = [localDeviceInfo2 accountID];

  if (accountID)
  {
    accountID2 = [privateCopy accountID];

    if (!accountID2)
    {
      [privateCopy setAccountID:accountID];
      v11 = v11 | 0x2000;
    }
  }

  idsDeviceID = [privateCopy idsDeviceID];
  v17 = +[RPCloudDaemon sharedCloudDaemon];
  idsDeviceIDSelf = [v17 idsDeviceIDSelf];

  if (!idsDeviceIDSelf)
  {
LABEL_16:
    deviceIRKData = [privateCopy deviceIRKData];
    v29 = [deviceIRKData length];

    if (v29 != 16)
    {
      v30 = NSRandomData();
      [privateCopy setDeviceIRKData:v30];

      v11 = v11 | 4;
    }

    edPKData = [privateCopy edPKData];
    if ([edPKData length] == 32)
    {
      edSKData = [privateCopy edSKData];
      if ([edSKData length] == 32)
      {

        goto LABEL_25;
      }

      v33 = +[RPIdentity _sepBackedIdentityEnabled];
    }

    else
    {
      v33 = +[RPIdentity _sepBackedIdentityEnabled];
    }

    if ((v33 & 1) == 0)
    {
      cced25519_make_key_pair_compat();
      v34 = [[NSData alloc] initWithBytes:v56 length:32];
      [privateCopy setEdPKData:v34];

      v35 = [[NSData alloc] initWithBytes:v55 length:32];
      [privateCopy setEdSKData:v35];

      v11 = v11 | 0x18;
    }

LABEL_25:
    featureFlags = [privateCopy featureFlags];
    DeviceClass = GestaltGetDeviceClass();
    v38 = DeviceClass & 0xFFFFFFFD;
    v41 = DeviceClass == 2 || DeviceClass == 100 || v38 == 1;
    v42 = DeviceClass - 1 < 3 || DeviceClass == 100;
    if (DeviceClass <= 6 && ((1 << DeviceClass) & 0x4E) != 0 || DeviceClass == 100)
    {
      v42 |= 2uLL;
    }

    v43 = v42 | 0x40;
    if (DeviceClass == 11)
    {
      v41 = 1;
    }

    else
    {
      v43 = v42;
    }

    if (v38 == 1)
    {
      v44 = v43 | 0x80;
    }

    else
    {
      v44 = v43;
    }

    v45 = v44 | 0x18;
    if (v41)
    {
      v46 = v45;
    }

    else
    {
      v46 = v42;
    }

    if (v46 && v46 != featureFlags)
    {
      [privateCopy setFeatureFlags:?];
      v11 = v11 | 0x400;
    }

    if ([(RPIdentityDaemon *)self _stationaryDevice])
    {
      btIRKData = [privateCopy btIRKData];
      if ([btIRKData length] == 16)
      {
        btAddress = [privateCopy btAddress];
        v49 = [btAddress length];

        if (v49 == 7)
        {
          goto LABEL_56;
        }
      }

      else
      {
      }

      getNonConnectableIdentity = [(CBPeripheralManager *)self->_peripheralManager getNonConnectableIdentity];
      v51 = [getNonConnectableIdentity objectForKeyedSubscript:@"kCBMsgArgIdentityIRK"];
      [privateCopy setBtIRKData:v51];

      v52 = [getNonConnectableIdentity objectForKeyedSubscript:@"kCBMsgArgIdentityAddress"];
      [privateCopy setBtAddress:v52];

      v11 = v11 | 0xC00000;
LABEL_60:
      if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
      {
        sub_10011C65C(v11);
      }

      goto LABEL_63;
    }

LABEL_56:
    if (!v11)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v19 = idsDeviceIDSelf;
  createCopy = create;
  v54 = accountID;
  v21 = accountAltDSID;
  selfCopy = self;
  v23 = v19;
  v24 = v19;
  v25 = idsDeviceID;
  v26 = v25;
  if (v24 == v25)
  {

    goto LABEL_15;
  }

  if (v25)
  {
    v27 = [v24 isEqual:v25];

    if (v27)
    {
LABEL_15:
      self = selfCopy;
      accountAltDSID = v21;
      accountID = v54;
      idsDeviceIDSelf = v23;
      goto LABEL_16;
    }

    if (createCopy)
    {
LABEL_13:
      [privateCopy setIdsDeviceID:v24];
      v11 = v11 | 0x40;
      goto LABEL_15;
    }
  }

  else
  {

    if (create)
    {
      goto LABEL_13;
    }
  }

  if (dword_1001D3F50 > 60)
  {
    LODWORD(v11) = 1;
    accountAltDSID = v21;
    accountID = v54;
    idsDeviceIDSelf = v23;
  }

  else
  {
    accountAltDSID = v21;
    idsDeviceIDSelf = v23;
    if (dword_1001D3F50 != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon _updateSelfIdentityPrivate:create:]", 60, "SelfIdentity reset on IDSDeviceID change: %@ -> %@\n", v26, v24);
    }

    LODWORD(v11) = 1;
    accountID = v54;
  }

LABEL_63:

  return v11;
}

- (unsigned)_updateSelfIdentityPublic:(id)public privateIdentity:(id)identity
{
  publicCopy = public;
  identityCopy = identity;
  v7 = +[RPCompanionLinkDaemon sharedCompanionLinkDaemon];
  localDeviceInfo = [v7 localDeviceInfo];

  accountAltDSID = [localDeviceInfo accountAltDSID];
  if (accountAltDSID && ([publicCopy accountAltDSID], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    [publicCopy setAccountAltDSID:accountAltDSID];
    v11 = 0x2000000;
  }

  else
  {
    v11 = 0;
  }

  accountID = [localDeviceInfo accountID];
  if (accountID)
  {
    accountID2 = [publicCopy accountID];

    if (!accountID2)
    {
      [publicCopy setAccountID:accountID];
      v11 |= 0x2000u;
    }
  }

  deviceIRKData = [identityCopy deviceIRKData];
  if (deviceIRKData)
  {
    deviceIRKData2 = [publicCopy deviceIRKData];
    v16 = deviceIRKData;
    v17 = v16;
    if (deviceIRKData2 == v16)
    {

      goto LABEL_16;
    }

    if (deviceIRKData2)
    {
      v18 = [deviceIRKData2 isEqual:v16];

      if (v18)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    [publicCopy setDeviceIRKData:v17];
    v11 |= 4u;
  }

LABEL_16:
  edPKData = [identityCopy edPKData];
  v67 = edPKData;
  if (edPKData)
  {
    v20 = edPKData;
    edPKData2 = [publicCopy edPKData];
    v22 = v20;
    v23 = v22;
    if (edPKData2 == v22)
    {
    }

    else
    {
      if (edPKData2)
      {
        v24 = [edPKData2 isEqual:v22];

        if (v24)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }

      [publicCopy setEdPKData:v23];
      v11 |= 8u;
    }
  }

LABEL_24:
  featureFlags = [identityCopy featureFlags];
  if (featureFlags)
  {
    v26 = featureFlags;
    if ([publicCopy featureFlags] != featureFlags)
    {
      [publicCopy setFeatureFlags:v26];
      v11 |= 0x400u;
    }
  }

  mediaRemoteIdentifier = [localDeviceInfo mediaRemoteIdentifier];
  v66 = mediaRemoteIdentifier;
  if ([mediaRemoteIdentifier length])
  {
    mediaRemoteID = [publicCopy mediaRemoteID];
    v29 = mediaRemoteIdentifier;
    v30 = v29;
    if (mediaRemoteID == v29)
    {

      goto LABEL_35;
    }

    if ((v29 == 0) == (mediaRemoteID != 0))
    {
    }

    else
    {
      v31 = [mediaRemoteID isEqual:v29];

      if (v31)
      {
        goto LABEL_35;
      }
    }

    [publicCopy setMediaRemoteID:v30];
    v11 |= 0x10000u;
  }

LABEL_35:
  mediaRouteIdentifier = [localDeviceInfo mediaRouteIdentifier];
  v65 = mediaRouteIdentifier;
  if (![mediaRouteIdentifier length])
  {
    goto LABEL_43;
  }

  mediaRouteID = [publicCopy mediaRouteID];
  v34 = mediaRouteIdentifier;
  v35 = v34;
  if (mediaRouteID == v34)
  {

    goto LABEL_43;
  }

  if ((v34 == 0) == (mediaRouteID != 0))
  {

    goto LABEL_42;
  }

  v36 = [mediaRouteID isEqual:v34];

  if ((v36 & 1) == 0)
  {
LABEL_42:
    [publicCopy setMediaRouteID:v35];
    v11 |= 0x20000u;
  }

LABEL_43:
  v69 = accountID;
  v37 = GestaltCopyAnswer();
  v64 = v37;
  if (!v37)
  {
    goto LABEL_51;
  }

  v38 = v37;
  model = [publicCopy model];
  v40 = v38;
  v41 = v40;
  if (model == v40)
  {

    goto LABEL_51;
  }

  if (!model)
  {

    goto LABEL_50;
  }

  v42 = [model isEqual:v40];

  if ((v42 & 1) == 0)
  {
LABEL_50:
    [publicCopy setModel:v41];
    v11 |= 0x80u;
  }

LABEL_51:
  v68 = deviceIRKData;
  v43 = GestaltCopyAnswer();
  if (!v43)
  {
    goto LABEL_59;
  }

  name = [publicCopy name];
  v45 = v43;
  v46 = v45;
  if (name == v45)
  {

    goto LABEL_59;
  }

  if (!name)
  {

    goto LABEL_58;
  }

  v47 = [name isEqual:v45];

  if ((v47 & 1) == 0)
  {
LABEL_58:
    [publicCopy setName:v46];
    v11 |= 0x100u;
  }

LABEL_59:
  btIRKData = [identityCopy btIRKData];
  if (!btIRKData)
  {
    goto LABEL_68;
  }

  v49 = v11;
  btIRKData2 = [publicCopy btIRKData];
  v51 = btIRKData;
  v52 = v51;
  if (btIRKData2 == v51)
  {

    goto LABEL_65;
  }

  if (btIRKData2)
  {
    v53 = [btIRKData2 isEqual:v51];

    if ((v53 & 1) == 0)
    {
      goto LABEL_67;
    }

LABEL_65:
    v11 = v49;
    goto LABEL_68;
  }

LABEL_67:
  [publicCopy setBtIRKData:v52];
  v11 = v49 | 0x400000;
LABEL_68:
  btAddress = [identityCopy btAddress];
  if (btAddress)
  {
    v55 = v11;
    btAddress2 = [publicCopy btAddress];
    v57 = btAddress;
    v58 = v57;
    if (btAddress2 != v57)
    {
      v63 = accountAltDSID;
      v59 = identityCopy;
      v60 = localDeviceInfo;
      if (btAddress2)
      {
        v61 = [btAddress2 isEqual:v57];

        if (v61)
        {
          localDeviceInfo = v60;
          identityCopy = v59;
          accountAltDSID = v63;
LABEL_74:
          v11 = v55;
          goto LABEL_77;
        }
      }

      else
      {
      }

      [publicCopy setBtAddress:v58];
      v11 = v55 | 0x800000;
      localDeviceInfo = v60;
      identityCopy = v59;
      accountAltDSID = v63;
      goto LABEL_77;
    }

    goto LABEL_74;
  }

LABEL_77:

  return v11;
}

- (__SecKey)_sepLoadSelfPrivateKey
{
  if (dword_1001D3F50 <= 30)
  {
    if (dword_1001D3F50 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_10011C6A4(self, a2, v2);
    }
  }

  v9[0] = kSecClass;
  v9[1] = kSecAttrKeyType;
  v10[0] = kSecClassKey;
  v10[1] = kSecAttrKeyTypeEd25519;
  v9[2] = kSecAttrAccessGroup;
  v9[3] = kSecAttrApplicationTag;
  v10[2] = @"com.apple.rapport";
  v10[3] = @"com.apple.rapport.SelfSEPIdentity";
  v9[4] = kSecReturnRef;
  v10[4] = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:5];
  v8 = 0;
  v4 = SecItemCopyMatching(v3, &v8);
  if (!v8)
  {
    v5 = v4;
    if (v4)
    {
      if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
      {
        sub_10011C6C0(v5);
      }
    }
  }

  v6 = v8;

  return v6;
}

- (__SecKey)_sepGenerateSelfPrivateKey
{
  if (dword_1001D3F50 <= 30)
  {
    if (dword_1001D3F50 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_10011C700(self, a2, v2);
    }
  }

  v3 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, 0x40000000uLL, 0);
  v12[0] = kSecAttrKeyType;
  v12[1] = kSecAttrKeySizeInBits;
  v13[0] = kSecAttrKeyTypeEd25519;
  v13[1] = &off_1001B7F60;
  v13[2] = kSecAttrTokenIDSecureEnclave;
  v12[2] = kSecAttrTokenID;
  v12[3] = kSecPrivateKeyAttrs;
  v10[0] = kSecAttrIsPermanent;
  v10[1] = kSecAttrAccessControl;
  v11[0] = &__kCFBooleanTrue;
  v11[1] = v3;
  v10[2] = kSecAttrAccessGroup;
  v10[3] = kSecAttrApplicationTag;
  v11[2] = @"com.apple.rapport";
  v11[3] = @"com.apple.rapport.SelfSEPIdentity";
  v4 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];
  v13[3] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:4];

  v9 = 0;
  v6 = SecKeyCreateRandomKey(v5, &v9);
  if (v3)
  {
    CFRelease(v3);
  }

  if (!v6)
  {
    v7 = v9;
    if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011C71C(v7);
    }
  }

  return v6;
}

- (void)_sepRemoveSelfPrivateKey:(__SecKey *)key
{
  if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011C75C(key);
  }

  v4 = kSecValueRef;
  v9[0] = kSecClass;
  v9[1] = kSecAttrAccessGroup;
  v10[0] = kSecClassKey;
  v10[1] = @"com.apple.rapport";
  v9[2] = kSecAttrApplicationTag;
  v9[3] = v4;
  v10[2] = @"com.apple.rapport.SelfSEPIdentity";
  v10[3] = key;
  keyCopy = key;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = SecItemDelete(v6);
  if (v7)
  {
    if (dword_1001D3F50 <= 90)
    {
      v8 = v7;
      if (dword_1001D3F50 != -1 || _LogCategory_Initialize())
      {
        sub_10011C79C(v8);
      }
    }
  }
}

- (void)_enumerateIdentitiesWithFlag:(unsigned int)flag usingBlock:(id)block
{
  flagCopy = flag;
  blockCopy = block;
  v72 = 0;
  if ((flagCopy & 2) != 0)
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v7 = self->_sameAccountDeviceIdentities;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v68 objects:v80 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v69;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v69 != v10)
        {
          objc_enumerationMutation(v7);
        }

        blockCopy[2](blockCopy, *(*(&v68 + 1) + 8 * v11), &v72);
        if (v72)
        {
          goto LABEL_80;
        }

        if (v9 == ++v11)
        {
          v9 = [(NSArray *)v7 countByEnumeratingWithState:&v68 objects:v80 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  if ((flagCopy & 0x100) != 0)
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v7 = [(RPIdentityDaemon *)self identitiesOfType:9 error:0];
    v12 = [(NSArray *)v7 countByEnumeratingWithState:&v64 objects:v79 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v65;
LABEL_14:
      v15 = 0;
      while (1)
      {
        if (*v65 != v14)
        {
          objc_enumerationMutation(v7);
        }

        blockCopy[2](blockCopy, *(*(&v64 + 1) + 8 * v15), &v72);
        if (v72)
        {
          goto LABEL_80;
        }

        if (v13 == ++v15)
        {
          v13 = [(NSArray *)v7 countByEnumeratingWithState:&v64 objects:v79 count:16];
          if (v13)
          {
            goto LABEL_14;
          }

          break;
        }
      }
    }
  }

  if ((flagCopy & 8) != 0)
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v7 = [(RPIdentityDaemon *)self identitiesOfType:4 error:0];
    v16 = [(NSArray *)v7 countByEnumeratingWithState:&v60 objects:v78 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v61;
LABEL_24:
      v19 = 0;
      while (1)
      {
        if (*v61 != v18)
        {
          objc_enumerationMutation(v7);
        }

        blockCopy[2](blockCopy, *(*(&v60 + 1) + 8 * v19), &v72);
        if (v72)
        {
          goto LABEL_80;
        }

        if (v17 == ++v19)
        {
          v17 = [(NSArray *)v7 countByEnumeratingWithState:&v60 objects:v78 count:16];
          if (v17)
          {
            goto LABEL_24;
          }

          break;
        }
      }
    }
  }

  if ((flagCopy & 0x20) != 0)
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v7 = [(RPIdentityDaemon *)self identitiesOfType:6 error:0];
    v20 = [(NSArray *)v7 countByEnumeratingWithState:&v56 objects:v77 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v57;
LABEL_34:
      v23 = 0;
      while (1)
      {
        if (*v57 != v22)
        {
          objc_enumerationMutation(v7);
        }

        blockCopy[2](blockCopy, *(*(&v56 + 1) + 8 * v23), &v72);
        if (v72)
        {
          goto LABEL_80;
        }

        if (v21 == ++v23)
        {
          v21 = [(NSArray *)v7 countByEnumeratingWithState:&v56 objects:v77 count:16];
          if (v21)
          {
            goto LABEL_34;
          }

          break;
        }
      }
    }
  }

  if ((flagCopy & 0x400) != 0)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v7 = [(RPIdentityDaemon *)self identitiesOfType:12 error:0];
    v24 = [(NSArray *)v7 countByEnumeratingWithState:&v52 objects:v76 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v53;
LABEL_44:
      v27 = 0;
      while (1)
      {
        if (*v53 != v26)
        {
          objc_enumerationMutation(v7);
        }

        blockCopy[2](blockCopy, *(*(&v52 + 1) + 8 * v27), &v72);
        if (v72)
        {
          goto LABEL_80;
        }

        if (v25 == ++v27)
        {
          v25 = [(NSArray *)v7 countByEnumeratingWithState:&v52 objects:v76 count:16];
          if (v25)
          {
            goto LABEL_44;
          }

          break;
        }
      }
    }
  }

  if ((flagCopy & 0x80) != 0)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v7 = [(RPIdentityDaemon *)self identitiesOfType:8 error:0];
    v28 = [(NSArray *)v7 countByEnumeratingWithState:&v48 objects:v75 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v49;
LABEL_54:
      v31 = 0;
      while (1)
      {
        if (*v49 != v30)
        {
          objc_enumerationMutation(v7);
        }

        blockCopy[2](blockCopy, *(*(&v48 + 1) + 8 * v31), &v72);
        if (v72)
        {
          goto LABEL_80;
        }

        if (v29 == ++v31)
        {
          v29 = [(NSArray *)v7 countByEnumeratingWithState:&v48 objects:v75 count:16];
          if (v29)
          {
            goto LABEL_54;
          }

          break;
        }
      }
    }
  }

  if ((flagCopy & 0x800) != 0)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v7 = [(RPIdentityDaemon *)self identitiesOfType:13 error:0];
    v32 = [(NSArray *)v7 countByEnumeratingWithState:&v44 objects:v74 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v45;
LABEL_64:
      v35 = 0;
      while (1)
      {
        if (*v45 != v34)
        {
          objc_enumerationMutation(v7);
        }

        blockCopy[2](blockCopy, *(*(&v44 + 1) + 8 * v35), &v72);
        if (v72)
        {
          goto LABEL_80;
        }

        if (v33 == ++v35)
        {
          v33 = [(NSArray *)v7 countByEnumeratingWithState:&v44 objects:v74 count:16];
          if (v33)
          {
            goto LABEL_64;
          }

          break;
        }
      }
    }
  }

  if ((flagCopy & 0x4000) != 0)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v7 = [(RPIdentityDaemon *)self identitiesOfType:15 error:0, 0];
    v36 = [(NSArray *)v7 countByEnumeratingWithState:&v40 objects:v73 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v41;
LABEL_74:
      v39 = 0;
      while (1)
      {
        if (*v41 != v38)
        {
          objc_enumerationMutation(v7);
        }

        blockCopy[2](blockCopy, *(*(&v40 + 1) + 8 * v39), &v72);
        if (v72)
        {
          break;
        }

        if (v37 == ++v39)
        {
          v37 = [(NSArray *)v7 countByEnumeratingWithState:&v40 objects:v73 count:16];
          if (v37)
          {
            goto LABEL_74;
          }

          break;
        }
      }
    }

LABEL_80:
  }
}

- (void)addSharedHomeIdentityWithRPMessage:(id)message
{
  messageCopy = message;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  CFStringGetTypeID();
  v5 = CFDictionaryGetTypedValue();
  if (v5)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v6 = self->_sharedHomeExtraDeviceIdentities;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v41;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v40 + 1) + 8 * v10);
        identifier = [v11 identifier];
        v13 = [identifier isEqual:v5];

        if (v13)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v40 objects:v45 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v14 = v11;

      if (!v14)
      {
        goto LABEL_13;
      }

      [v14 updateWithRPMessage:messageCopy error:0];
    }

    else
    {
LABEL_10:

LABEL_13:
      v14 = objc_alloc_init(RPIdentity);
      [v14 setIdentifier:v5];
      [v14 setType:9];
      [v14 updateWithRPMessage:messageCopy error:0];
      sharedHomeExtraDeviceIdentities = self->_sharedHomeExtraDeviceIdentities;
      if (!sharedHomeExtraDeviceIdentities)
      {
        v16 = objc_alloc_init(NSMutableArray);
        v17 = self->_sharedHomeExtraDeviceIdentities;
        self->_sharedHomeExtraDeviceIdentities = v16;

        sharedHomeExtraDeviceIdentities = self->_sharedHomeExtraDeviceIdentities;
      }

      [(NSMutableArray *)sharedHomeExtraDeviceIdentities addObject:v14];
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    selfCopy = self;
    v18 = self->_sharedHomeDeviceIdentities;
    v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v37;
LABEL_18:
      v22 = messageCopy;
      v23 = 0;
      while (1)
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v36 + 1) + 8 * v23);
        identifier2 = [v24 identifier];
        v26 = [identifier2 isEqual:v5];

        if (v26)
        {
          break;
        }

        if (v20 == ++v23)
        {
          v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v36 objects:v44 count:16];
          messageCopy = v22;
          if (v20)
          {
            goto LABEL_18;
          }

          goto LABEL_24;
        }
      }

      v27 = v24;

      messageCopy = v22;
      if (!v27)
      {
        goto LABEL_30;
      }

      v28 = [v27 updateWithRPMessage:v22 error:0];
      v29 = selfCopy;
      if (v28)
      {
        if (dword_1001D3F50 <= 30)
        {
          v30 = v28;
          if (dword_1001D3F50 != -1 || _LogCategory_Initialize())
          {
            LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon addSharedHomeIdentityWithRPMessage:]", 30, "Updated SharedHome identity extra: %@, %#{flags}\n", v14, v30, &unk_1001487B7);
          }
        }

        goto LABEL_37;
      }
    }

    else
    {
LABEL_24:

LABEL_30:
      v29 = selfCopy;
      sharedHomeDeviceIdentities = selfCopy->_sharedHomeDeviceIdentities;
      if (!sharedHomeDeviceIdentities)
      {
        v32 = objc_alloc_init(NSMutableArray);
        v33 = selfCopy->_sharedHomeDeviceIdentities;
        selfCopy->_sharedHomeDeviceIdentities = v32;

        sharedHomeDeviceIdentities = selfCopy->_sharedHomeDeviceIdentities;
      }

      [(NSMutableArray *)sharedHomeDeviceIdentities addObject:v14];
      if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001D3F50, "[RPIdentityDaemon addSharedHomeIdentityWithRPMessage:]", 30, "Added SharedHome identity extra: %@\n", v14);
      }

      v27 = 0;
LABEL_37:
      v34 = +[RPDaemon sharedDaemon];
      [v34 postDaemonInfoChanges:512];

      [(RPIdentityDaemon *)v29 _postIdentitiesChangedNotification];
    }
  }
}

- (void)addSessionPairedIdentity:(id)identity
{
  identityCopy = identity;
  if (identityCopy)
  {
    sub_100003DA4();
    v6[1] = 3221225472;
    v6[2] = sub_10006D9B4;
    v6[3] = &unk_1001AB488;
    v6[4] = self;
    v7 = identityCopy;
    dispatch_async(v3, v6);
  }
}

- (void)addOrUpdateAdHocPairedIdentity:(id)identity
{
  identityCopy = identity;
  if (identityCopy)
  {
    sub_100003DA4();
    v6[1] = 3221225472;
    v6[2] = sub_10006E188;
    v6[3] = &unk_1001AB488;
    v7 = identityCopy;
    selfCopy = self;
    dispatch_async(v3, v6);
  }
}

@end