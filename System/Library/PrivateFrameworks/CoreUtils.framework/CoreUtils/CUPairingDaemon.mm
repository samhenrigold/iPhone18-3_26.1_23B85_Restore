@interface CUPairingDaemon
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CUPairingDaemon)init;
- (id)_copyHomeKitExWithOptions:(unint64_t)options error:(int *)error;
- (id)_copyHomeKitLocalPairingIDWithOptions:(unint64_t)options error:(int *)error;
- (id)_copyHomeKitWithOptionsHAP:(unint64_t)p error:(int *)error;
- (id)_copyHomeKitWithOptionsKeychain:(unint64_t)keychain error:(int *)error;
- (id)_copyIdentityWithOptions:(unint64_t)options error:(int *)error;
- (id)_copyOrCreateWithOptions:(unint64_t)options error:(int *)error;
- (id)_copyPairedPeersWithOptions:(unint64_t)options error:(int *)error;
- (id)_findHomeKitExPairedPeer:(id)peer options:(unint64_t)options error:(int *)error;
- (id)_findHomeKitPairedPeer:(id)peer options:(unint64_t)options error:(int *)error;
- (id)_findPairedPeer:(id)peer options:(unint64_t)options error:(int *)error;
- (id)copyIdentityWithOptions:(unint64_t)options error:(int *)error;
- (id)copyPairedPeersWithOptions:(unint64_t)options error:(int *)error;
- (id)detailedDescription;
- (id)findPairedPeer:(id)peer options:(unint64_t)options error:(int *)error;
- (id)initStandalone;
- (int)_deleteIdentityWithOptions:(unint64_t)options;
- (int)_removePairedPeer:(id)peer options:(unint64_t)options removeAdminAllowed:(BOOL)allowed;
- (int)_saveIdentity:(id)identity options:(unint64_t)options;
- (int)_savePairedPeer:(id)peer options:(unint64_t)options removeAdminAllowed:(BOOL)allowed;
- (int)deleteIdentityWithOptions:(unint64_t)options;
- (int)removePairedPeer:(id)peer options:(unint64_t)options;
- (int)removePairedPeer:(id)peer options:(unint64_t)options removeAdminAllowed:(BOOL)allowed;
- (int)savePairedPeer:(id)peer options:(unint64_t)options;
- (int)savePairedPeer:(id)peer options:(unint64_t)options removeAdminAllowed:(BOOL)allowed;
- (void)_activate;
- (void)_connectionInvalidated:(id)invalidated;
- (void)_invalidate;
- (void)_removeDups:(id)dups;
- (void)_rpIdentityUpdate;
- (void)activate;
- (void)dealloc;
- (void)getIdentityWithOptions:(unint64_t)options completionHandler:(id)handler;
- (void)invalidate;
- (void)reset;
@end

@implementation CUPairingDaemon

- (int)_removePairedPeer:(id)peer options:(unint64_t)options removeAdminAllowed:(BOOL)allowed
{
  v35 = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  v8 = [(CUPairingDaemon *)self _findPairedPeer:peerCopy options:options & 0xFFFFFFFFFFFFFFFDLL error:0];
  if (!v8)
  {
    v8 = peerCopy;
  }

  identifier = [v8 identifier];
  v10 = identifier;
  if (!identifier)
  {
    v12 = 0;
    goto LABEL_30;
  }

  uUIDString = [identifier UUIDString];
  v12 = uUIDString;
  if (!uUIDString)
  {
LABEL_30:
    v28 = -6708;
    goto LABEL_28;
  }

  if (self->_testMode)
  {
    v13 = @"Test Device Paired Peer";
  }

  else
  {
    v13 = @"Device Paired Peer";
  }

  v14 = @"Account Paired Peer";
  if (self->_testMode)
  {
    v14 = @"Test Account Paired Peer";
  }

  if ((options & 4) != 0)
  {
    v15 = 0;
  }

  else
  {
    v13 = v14;
    v15 = *MEMORY[0x1E695E4D0];
  }

  v16 = KeychainDeleteFormatted("{%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O}", *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008], *MEMORY[0x1E697ABD0], @"com.apple.pairing", *MEMORY[0x1E697AC30], uUIDString, *MEMORY[0x1E697AE88], v13, *MEMORY[0x1E697AEB0], v15);
  if (v16)
  {
    v28 = v16;
  }

  else
  {
    if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _removePairedPeer:options:removeAdminAllowed:]", 30, "Removed %@\n", v17, v18, v19, v20, v8);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v21 = self->_xpcConnections;
    v22 = [(NSMutableSet *)v21 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v31;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v31 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v30 + 1) + 8 * i);
          if (*(v26 + 32) == 1)
          {
            remoteObjectProxy = [*(v26 + 40) remoteObjectProxy];
            [remoteObjectProxy pairedPeerRemoved:v8 options:options];
          }
        }

        v23 = [(NSMutableSet *)v21 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v23);
    }

    notify_post("com.apple.pairing.peerChanged");
    v28 = 0;
  }

LABEL_28:

  return v28;
}

- (int)removePairedPeer:(id)peer options:(unint64_t)options removeAdminAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  peerCopy = peer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  LODWORD(allowedCopy) = [(CUPairingDaemon *)selfCopy _removePairedPeer:peerCopy options:options removeAdminAllowed:allowedCopy];
  objc_sync_exit(selfCopy);

  return allowedCopy;
}

- (int)removePairedPeer:(id)peer options:(unint64_t)options
{
  peerCopy = peer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  LODWORD(options) = [(CUPairingDaemon *)selfCopy _removePairedPeer:peerCopy options:options removeAdminAllowed:0];
  objc_sync_exit(selfCopy);

  return options;
}

- (int)_savePairedPeer:(id)peer options:(unint64_t)options removeAdminAllowed:(BOOL)allowed
{
  v134 = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  v129 = 0;
  identifier = [peerCopy identifier];
  v9 = identifier;
  v106 = identifier;
  if (!identifier)
  {
    v110 = 0;
    v107 = 0;
LABEL_112:
    model = 0;
    v40 = 0;
    v45 = 0;
    v104 = 0;
    v105 = 0;
    v18 = 0;
    v46 = 0;
    name = 0;
    v29 = 0;
    v50 = -6708;
    goto LABEL_119;
  }

  identifier = [(CUPairedPeer *)identifier UUIDString];
  v110 = identifier;
  if (!identifier)
  {
    v110 = 0;
    v107 = 0;
    v9 = 0;
    goto LABEL_112;
  }

  allowedCopy = allowed;
  v10 = @"Device Paired Peer";
  if (self->_testMode)
  {
    v10 = @"Test Device Paired Peer";
    v11 = @"Test Account Paired Peer";
  }

  else
  {
    v11 = @"Account Paired Peer";
  }

  v12 = *MEMORY[0x1E697AEB8];
  v13 = *MEMORY[0x1E695E4D0];
  if ((options & 4) != 0)
  {
    v13 = 0;
  }

  v95 = v13;
  selfCopy = self;
  if ((options & 4) != 0)
  {
    v12 = 0;
  }

  v97 = v12;
  if ((options & 4) != 0)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  v15 = [CUPairingDaemon _findPairedPeer:"_findPairedPeer:options:error:" options:peerCopy error:?];
  v107 = v15;
  if (!v15)
  {
    v15 = objc_alloc_init(CUPairedPeer);
    [(CUPairedPeer *)v15 setIdentifier:v9];
  }

  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  info = [(CUPairedPeer *)v15 info];
  v18 = [info mutableCopy];

  if (!v18)
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v99 = v14;
  v108 = v16;
  v112 = v15;
  info2 = [peerCopy info];
  if (info2)
  {
    [(__CFString *)v18 addEntriesFromDictionary:info2];
  }

  v105 = info2;
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  allKeys = [(__CFString *)v18 allKeys];
  v21 = [allKeys countByEnumeratingWithState:&v125 objects:v133 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v126;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v126 != v23)
        {
          objc_enumerationMutation(allKeys);
        }

        v25 = *(*(&v125 + 1) + 8 * i);
        v26 = [(__CFString *)v18 objectForKeyedSubscript:v25];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          [(__CFString *)v18 removeObjectForKey:v25];
        }
      }

      v22 = [allKeys countByEnumeratingWithState:&v125 objects:v133 count:16];
    }

    while (v22);
  }

  v28 = [(CUPairedPeer *)v112 acl];
  v29 = [v28 mutableCopy];

  Int64 = CFDictionaryGetInt64(v29, @"com.apple.admin", 0);
  if (!v29)
  {
    v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v109 = peerCopy;
  v30 = [peerCopy acl];
  if (v30)
  {
    [(__CFDictionary *)v29 addEntriesFromDictionary:v30];
  }

  v104 = v30;
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  allKeys2 = [(__CFDictionary *)v29 allKeys];
  v32 = [allKeys2 countByEnumeratingWithState:&v121 objects:v132 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v122;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v122 != v34)
        {
          objc_enumerationMutation(allKeys2);
        }

        v36 = *(*(&v121 + 1) + 8 * j);
        v37 = [(__CFDictionary *)v29 objectForKeyedSubscript:v36];
        objc_opt_class();
        v38 = objc_opt_isKindOfClass();

        if (v38)
        {
          [(__CFDictionary *)v29 removeObjectForKey:v36];
        }
      }

      v33 = [allKeys2 countByEnumeratingWithState:&v121 objects:v132 count:16];
    }

    while (v33);
  }

  v39 = CFDictionaryGetInt64(v29, @"com.apple.admin", 0);
  if (Int64 && !v39 && !allowedCopy)
  {
    model = 0;
    identifier = 0;
    v45 = 0;
    v46 = 0;
    name = 0;
    v129 = -6773;
    v40 = v16;
    peerCopy = v109;
    v9 = v112;
    goto LABEL_109;
  }

  v40 = v16;
  peerCopy = v109;
  if ([(__CFDictionary *)v29 count])
  {
    [(__CFString *)v16 setObject:v29 forKeyedSubscript:@"acl"];
  }

  else
  {
    [(__CFString *)v16 removeObjectForKey:@"acl"];
  }

  v9 = v112;
  altIRK = [v109 altIRK];
  if (altIRK)
  {
    altIRK2 = altIRK;
    [(CUPairedPeer *)v112 setAltIRK:altIRK];
  }

  else
  {
    altIRK2 = [(CUPairedPeer *)v112 altIRK];
    if (!altIRK2)
    {
      goto LABEL_51;
    }
  }

  [(__CFString *)v16 setObject:altIRK2 forKeyedSubscript:@"altIRK"];

LABEL_51:
  model = [v109 model];
  if (!model)
  {
    v44 = [(__CFString *)v18 objectForKeyedSubscript:@"model"];
    if (v44)
    {
      model = v44;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        identifier = 0;
        v45 = 0;
        v46 = 0;
        name = 0;
LABEL_62:
        v50 = -6756;
LABEL_119:
        v129 = v50;
        goto LABEL_109;
      }
    }

    else
    {
      model2 = [(CUPairedPeer *)v112 model];
      if (model2)
      {
        model = model2;
      }

      else
      {
        model = &stru_1F068B090;
      }
    }
  }

  [(CUPairedPeer *)v112 setModel:model];
  [(__CFString *)v18 setObject:model forKeyedSubscript:@"model"];
  name = [v109 name];
  if (!name)
  {
    v49 = [(__CFString *)v18 objectForKeyedSubscript:@"name"];
    if (v49)
    {
      name = v49;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        identifier = 0;
        v45 = 0;
        v46 = 0;
        goto LABEL_62;
      }
    }

    else
    {
      name2 = [(CUPairedPeer *)v112 name];
      if (name2)
      {
        name = name2;
      }

      else
      {
        name = &stru_1F068B090;
      }
    }
  }

  [(CUPairedPeer *)v112 setName:name];
  [(__CFString *)v18 removeObjectForKey:@"name"];
  publicKey = [v109 publicKey];
  if (publicKey)
  {
    v46 = publicKey;
    [(CUPairedPeer *)v112 setPublicKey:publicKey];
  }

  else
  {
    identifier = [(CUPairedPeer *)v112 publicKey];
    v46 = identifier;
    if (!identifier)
    {
      v45 = 0;
      if (v107)
      {
        v50 = -6768;
      }

      else
      {
        v50 = -25300;
      }

      goto LABEL_119;
    }
  }

  [(__CFString *)v16 setObject:v46 forKeyedSubscript:@"pk"];
  [(CUPairedPeer *)v112 setInfo:v18];
  v53 = OPACKEncoderCreateDataMutable(v18, 0, &v129);
  v45 = v53;
  if (v129)
  {
    identifier = 0;
    goto LABEL_109;
  }

  if (!v53)
  {
    identifier = 0;
    goto LABEL_118;
  }

  identifier = OPACKEncoderCreateDataMutable(v16, 0, &v129);
  if (v129)
  {
    goto LABEL_109;
  }

  v103 = identifier;
  if (!identifier)
  {
LABEL_118:
    v50 = -6762;
    goto LABEL_119;
  }

  v101 = v45;
  v54 = *MEMORY[0x1E697B008];
  v55 = *MEMORY[0x1E697ABD0];
  v56 = *MEMORY[0x1E697AC30];
  v57 = *MEMORY[0x1E697AE88];
  v58 = *MEMORY[0x1E697AEB0];
  v89 = v97;
  v98 = *MEMORY[0x1E697AFF8];
  v59 = CFCreateF(&v129, "{%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O}", *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008], *MEMORY[0x1E697ABD0], @"com.apple.pairing", *MEMORY[0x1E697AC30], v110, *MEMORY[0x1E697AE88], v99, *MEMORY[0x1E697AEB0], v89);
  v60 = v59;
  if (!v129)
  {
    v91 = v58;
    v92 = v57;
    v93 = v56;
    v61 = *MEMORY[0x1E697ACE0];
    v62 = *MEMORY[0x1E697ACF0];
    v63 = *MEMORY[0x1E697ADC8];
    v90 = *MEMORY[0x1E697B3C0];
    v94 = v59;
    updated = KeychainUpdateFormatted(v59, "{%kO=%O%kO=%O%kO=%O%kO=%O}", *MEMORY[0x1E697ACE0], v99, *MEMORY[0x1E697ACF0], v101, *MEMORY[0x1E697ADC8], name, *MEMORY[0x1E697B3C0], v103);
    v129 = updated;
    if (updated)
    {
      v60 = v94;
      if (updated != -25300)
      {
        goto LABEL_106;
      }

      v69 = KeychainAddFormatted(0, "{%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O}", v98, v54, v55, @"com.apple.pairing", *MEMORY[0x1E697ABD8], *MEMORY[0x1E697ABF8], v93, v110, v61, v99, v62, v101, v63, name, v92, v99, v91, v95, v90, v103);
      v60 = v94;
      v129 = v69;
      if (v69)
      {
        goto LABEL_106;
      }

      if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
      {
        LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _savePairedPeer:options:removeAdminAllowed:]", 30, "Saved %@\n", v70, v71, v72, v73, v109);
      }

      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v74 = selfCopy->_xpcConnections;
      v81 = [(NSMutableSet *)v74 countByEnumeratingWithState:&v113 objects:v130 count:16];
      if (v81)
      {
        v82 = v81;
        v83 = *v114;
        do
        {
          for (k = 0; k != v82; ++k)
          {
            if (*v114 != v83)
            {
              objc_enumerationMutation(v74);
            }

            v85 = *(*(&v113 + 1) + 8 * k);
            if (*(v85 + 32) == 1)
            {
              remoteObjectProxy = [*(v85 + 40) remoteObjectProxy];
              [remoteObjectProxy pairedPeerAdded:v112 options:options];
            }
          }

          v82 = [(NSMutableSet *)v74 countByEnumeratingWithState:&v113 objects:v130 count:16];
        }

        while (v82);
      }
    }

    else
    {
      if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
      {
        LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _savePairedPeer:options:removeAdminAllowed:]", 30, "Updated %@\n", v65, v66, v67, v68, v112);
      }

      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v74 = selfCopy->_xpcConnections;
      v75 = [(NSMutableSet *)v74 countByEnumeratingWithState:&v117 objects:v131 count:16];
      if (v75)
      {
        v76 = v75;
        v77 = *v118;
        do
        {
          for (m = 0; m != v76; ++m)
          {
            if (*v118 != v77)
            {
              objc_enumerationMutation(v74);
            }

            v79 = *(*(&v117 + 1) + 8 * m);
            if (*(v79 + 32) == 1)
            {
              remoteObjectProxy2 = [*(v79 + 40) remoteObjectProxy];
              [remoteObjectProxy2 pairedPeerChanged:v112 options:options];
            }
          }

          v76 = [(NSMutableSet *)v74 countByEnumeratingWithState:&v117 objects:v131 count:16];
        }

        while (v76);
      }
    }

    notify_post("com.apple.pairing.peerChanged");
    v60 = v94;
  }

LABEL_106:
  v9 = v112;
  v40 = v108;
  if (v60)
  {
    CFRelease(v60);
  }

  peerCopy = v109;
  v45 = v101;
  identifier = v103;
LABEL_109:
  v87 = v129;

  return v87;
}

- (int)savePairedPeer:(id)peer options:(unint64_t)options removeAdminAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  peerCopy = peer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  LODWORD(allowedCopy) = [(CUPairingDaemon *)selfCopy _savePairedPeer:peerCopy options:options removeAdminAllowed:allowedCopy];
  objc_sync_exit(selfCopy);

  return allowedCopy;
}

- (int)savePairedPeer:(id)peer options:(unint64_t)options
{
  peerCopy = peer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  LODWORD(options) = [(CUPairingDaemon *)selfCopy _savePairedPeer:peerCopy options:options removeAdminAllowed:0];
  objc_sync_exit(selfCopy);

  return options;
}

- (id)_findPairedPeer:(id)peer options:(unint64_t)options error:(int *)error
{
  v66 = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  v64 = 0;
  identifier = [peerCopy identifier];
  v59 = peerCopy;
  v57 = identifier;
  if (!identifier)
  {
    publicKey = [peerCopy publicKey];
    if (publicKey)
    {
      v30 = [(CUPairingDaemon *)self _copyPairedPeersWithOptions:options error:&v64];
      v31 = v30;
      if (v64)
      {
        v40 = 0;
        goto LABEL_52;
      }

      if (v30)
      {
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v31 = v30;
        v32 = [v31 countByEnumeratingWithState:&v60 objects:v65 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = 0;
          v35 = *v61;
LABEL_27:
          v36 = 0;
          v37 = v34;
          while (1)
          {
            if (*v61 != v35)
            {
              objc_enumerationMutation(v31);
            }

            v34 = *(*(&v60 + 1) + 8 * v36);

            publicKey2 = [v34 publicKey];
            v39 = [publicKey2 isEqual:publicKey];

            if (v39)
            {
              break;
            }

            ++v36;
            v37 = v34;
            if (v33 == v36)
            {
              v33 = [v31 countByEnumeratingWithState:&v60 objects:v65 count:16];
              if (v33)
              {
                goto LABEL_27;
              }

              goto LABEL_34;
            }
          }

          v40 = v34;

          if (!v40)
          {
            goto LABEL_35;
          }

          goto LABEL_52;
        }

LABEL_34:

LABEL_35:
        v40 = 0;
        v41 = -25300;
      }

      else
      {
        v40 = 0;
        v41 = -6762;
      }
    }

    else
    {
      v40 = 0;
      v31 = 0;
      v41 = -6708;
    }

    v64 = v41;
LABEL_52:

    v11 = 0;
    v27 = 0;
    v16 = 0;
    v44 = 0;
    v48 = 0;
    v25 = 0;
    v46 = 0;
    v17 = v40;
    goto LABEL_56;
  }

  v9 = identifier;
  uUIDString = [identifier UUIDString];
  v11 = uUIDString;
  if (uUIDString)
  {
    if (self->_testMode)
    {
      v12 = @"Test Device Paired Peer";
    }

    else
    {
      v12 = @"Device Paired Peer";
    }

    v13 = @"Account Paired Peer";
    if (self->_testMode)
    {
      v13 = @"Test Account Paired Peer";
    }

    if ((options & 4) != 0)
    {
      v14 = 0;
    }

    else
    {
      v12 = v13;
      v14 = *MEMORY[0x1E697AEB8];
    }

    v15 = KeychainCopyMatchingFormatted(&v64, "{%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O}", *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008], *MEMORY[0x1E697ABD0], @"com.apple.pairing", *MEMORY[0x1E697AC30], uUIDString, *MEMORY[0x1E697AE88], v12, *MEMORY[0x1E697AEB0], v14, *MEMORY[0x1E697B310], *MEMORY[0x1E695E4D0], *MEMORY[0x1E697B318], *MEMORY[0x1E695E4D0]);
    v16 = v15;
    if (v64)
    {
      v40 = 0;
      v27 = 0;
      v17 = 0;
      v44 = 0;
      v48 = 0;
      v25 = 0;
      v46 = 0;
      goto LABEL_56;
    }

    if (!v15)
    {
      v40 = 0;
      v27 = 0;
      v17 = 0;
      v44 = 0;
      v48 = 0;
      v25 = 0;
      v46 = 0;
LABEL_74:
      v55 = -6762;
      goto LABEL_75;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = objc_alloc_init(CUPairedPeer);
      [(CUPairedPeer *)v17 setIdentifier:v9];
      v18 = *MEMORY[0x1E697ADC8];
      TypeID = CFStringGetTypeID();
      v20 = CFDictionaryGetTypedValue(v16, v18, TypeID, 0);
      if (v20)
      {
        [(CUPairedPeer *)v17 setName:v20];
      }

      v21 = *MEMORY[0x1E697ACF0];
      v22 = CFDataGetTypeID();
      v23 = CFDictionaryGetTypedValue(v16, v21, v22, 0);
      v24 = v23;
      if (v23)
      {
        v25 = OPACKDecodeData(v23, 0, 0);
        if (v25)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = CFStringGetTypeID();
            v27 = CFDictionaryGetTypedValue(v25, @"model", v26, 0);

            if (v27)
            {
              [(CUPairedPeer *)v17 setModel:v27];
            }

            v28 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v25];
            [v28 removeObjectForKey:@"model"];
            [(CUPairedPeer *)v17 setInfo:v28];

LABEL_39:
            v42 = *MEMORY[0x1E697B3C0];
            v43 = CFDataGetTypeID();
            v44 = CFDictionaryGetTypedValue(v16, v42, v43, &v64);

            if (v64)
            {
              v40 = 0;
              v48 = 0;
              v46 = 0;
              goto LABEL_56;
            }

            if (v44)
            {
              v45 = OPACKDecodeData(v44, 0, &v64);
              v46 = v45;
              if (v64)
              {
                v40 = 0;
                v48 = 0;
                goto LABEL_56;
              }

              if (v45)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v47 = CFDictionaryGetTypeID();
                  v48 = CFDictionaryGetTypedValue(v46, @"acl", v47, 0);
                  if (v48)
                  {
                    [(CUPairedPeer *)v17 setAcl:v48];
                  }

                  v49 = CFDataGetTypeID();
                  v50 = CFDictionaryGetTypedValue(v46, @"pk", v49, &v64);

                  if (v64)
                  {
                    v40 = 0;
LABEL_55:
                    v44 = v50;
                    goto LABEL_56;
                  }

                  if (v50)
                  {
                    [(CUPairedPeer *)v17 setPublicKey:v50];
                    if ((options & 2) != 0)
                    {
                      v51 = CFDataGetTypeID();
                      v52 = CFDictionaryGetTypedValue(v46, @"altIRK", v51, 0);

                      if (v52)
                      {
                        [(CUPairedPeer *)v17 setAltIRK:v52];
                        v50 = v52;
                      }

                      else
                      {
                        v50 = 0;
                      }
                    }

                    v40 = v17;
                    v17 = v40;
                    goto LABEL_55;
                  }

                  v40 = 0;
                  v44 = 0;
                  goto LABEL_74;
                }

                v40 = 0;
                v48 = 0;
                v56 = -6756;
LABEL_71:
                v64 = v56;
                goto LABEL_56;
              }

              v40 = 0;
              v48 = 0;
            }

            else
            {
              v40 = 0;
              v48 = 0;
              v46 = 0;
            }

            v56 = -6762;
            goto LABEL_71;
          }
        }
      }

      else
      {
        v25 = 0;
      }

      v27 = v20;
      goto LABEL_39;
    }

    v40 = 0;
    v27 = 0;
    v17 = 0;
    v44 = 0;
    v48 = 0;
    v25 = 0;
    v46 = 0;
    v55 = -6756;
  }

  else
  {
    v40 = 0;
    v27 = 0;
    v16 = 0;
    v17 = 0;
    v44 = 0;
    v48 = 0;
    v25 = 0;
    v46 = 0;
    v55 = -6708;
  }

LABEL_75:
  v64 = v55;
LABEL_56:
  if (error)
  {
    *error = v64;
  }

  v53 = v40;

  return v53;
}

- (id)_findHomeKitExPairedPeer:(id)peer options:(unint64_t)options error:(int *)error
{
  peerCopy = peer;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__5769;
  v30 = __Block_byref_object_dispose__5770;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__5769;
  v24 = __Block_byref_object_dispose__5770;
  v25 = 0;
  v9 = dispatch_semaphore_create(0);
  homeKitManager = self->_homeKitManager;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__CUPairingDaemon__findHomeKitExPairedPeer_options_error___block_invoke;
  v16[3] = &unk_1E73A4C30;
  v18 = &v26;
  v19 = &v20;
  v11 = v9;
  v17 = v11;
  [(CUHomeKitManager *)homeKitManager findPairedPeer:peerCopy options:options completion:v16];
  v12 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v11, v12))
  {
    LODWORD(v13) = -6722;
  }

  else
  {
    v13 = v21[5];
    if (v13)
    {
      LODWORD(v13) = NSErrorToOSStatusEx(v13, 0);
    }
  }

  if (error)
  {
    *error = v13;
  }

  v14 = v27[5];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v14;
}

void __58__CUPairingDaemon__findHomeKitExPairedPeer_options_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_findHomeKitPairedPeer:(id)peer options:(unint64_t)options error:(int *)error
{
  identifier = [peer identifier];
  if (!identifier)
  {
    v14 = 0;
    v10 = 0;
    publicKey = 0;
    v15 = -6708;
    if (!error)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v9 = [(CUPairingDaemon *)self _copyHomeKitWithOptions:options error:0];
  v10 = v9;
  if (v9 && ([v9 identifier], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqual:", identifier), v11, v12))
  {
    publicKey = [v10 publicKey];
    if (publicKey)
    {
      v14 = objc_alloc_init(CUPairedPeer);
      [(CUPairedPeer *)v14 setIdentifier:identifier];
      [(CUPairedPeer *)v14 setPublicKey:publicKey];
      v15 = 0;
      if (!error)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v14 = 0;
  }

  else
  {
    v14 = 0;
    publicKey = 0;
  }

  v15 = -25300;
  if (error)
  {
LABEL_9:
    *error = v15;
  }

LABEL_10:
  v16 = v14;

  return v14;
}

- (id)findPairedPeer:(id)peer options:(unint64_t)options error:(int *)error
{
  peerCopy = peer;
  if ((options & 8) != 0)
  {
    v9 = [(CUPairingDaemon *)self _findHomeKitPairedPeer:peerCopy options:options error:error];
    goto LABEL_5;
  }

  if ((options & 0x130) != 0)
  {
    v9 = [(CUPairingDaemon *)self _findHomeKitExPairedPeer:peerCopy options:options error:error];
LABEL_5:
    v10 = v9;
    goto LABEL_6;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = [(CUPairingDaemon *)selfCopy _findPairedPeer:peerCopy options:options error:error];
  objc_sync_exit(selfCopy);

LABEL_6:

  return v10;
}

- (void)_removeDups:(id)dups
{
  dupsCopy = dups;
  v3 = [dupsCopy count];
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = v3;
  for (i = 0; i < v4; ++i)
  {
    v6 = [dupsCopy objectAtIndexedSubscript:i];
    info = [v6 info];
    v8 = [info objectForKeyedSubscript:@"mac"];

    if (!v8)
    {
      goto LABEL_15;
    }

    dateModified = [v6 dateModified];
    if (!dateModified)
    {
      goto LABEL_14;
    }

    v10 = 0;
    while (i == v10)
    {
LABEL_13:
      if (v4 == ++v10)
      {
        goto LABEL_14;
      }
    }

    v11 = [dupsCopy objectAtIndexedSubscript:v10];
    info2 = [v11 info];
    v13 = [info2 objectForKeyedSubscript:@"mac"];

    if (!v13 || ![v13 isEqual:v8])
    {
      goto LABEL_12;
    }

    dateModified2 = [v11 dateModified];
    if (!dateModified2 || [dateModified compare:dateModified2] >= 1)
    {

LABEL_12:
      goto LABEL_13;
    }

    [dupsCopy removeObjectAtIndex:i--];
    --v4;

LABEL_14:
LABEL_15:
  }

LABEL_18:
}

- (id)_copyPairedPeersWithOptions:(unint64_t)options error:(int *)error
{
  v73 = *MEMORY[0x1E69E9840];
  v6 = @"Device Paired Peer";
  testMode = self->_testMode;
  v8 = *MEMORY[0x1E697AEB8];
  v70 = 0;
  v9 = !testMode;
  if (testMode)
  {
    v6 = @"Test Device Paired Peer";
  }

  v10 = @"Account Paired Peer";
  if (!v9)
  {
    v10 = @"Test Account Paired Peer";
  }

  optionsCopy = options;
  if ((options & 4) != 0)
  {
    v11 = v6;
  }

  else
  {
    v11 = v10;
  }

  if ((options & 4) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = v8;
  }

  v55 = *MEMORY[0x1E695E4D0];
  v56 = *MEMORY[0x1E697AEB0];
  v60 = *MEMORY[0x1E697AFF8];
  v61 = v12;
  v58 = *MEMORY[0x1E697ABD0];
  v59 = *MEMORY[0x1E697B008];
  v57 = *MEMORY[0x1E697AE88];
  v62 = v11;
  v13 = KeychainCopyMatchingFormatted(&v70, "{%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O}", *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008], *MEMORY[0x1E697ABD0], @"com.apple.pairing", *MEMORY[0x1E697AE88], v11, *MEMORY[0x1E697AEB0], v12, *MEMORY[0x1E697B310], *MEMORY[0x1E695E4D0], *MEMORY[0x1E697B260], *MEMORY[0x1E697B268]);
  v14 = v13;
  if (v70)
  {
    v42 = 0;
    v64 = 0;
    if (v70 == -25300)
    {
      v64 = 0;
      v70 = 0;
      v42 = MEMORY[0x1E695E0F0];
    }

    goto LABEL_70;
  }

  if (!v13)
  {
    v42 = 0;
    v64 = 0;
    v45 = -6762;
LABEL_77:
    v70 = v45;
    goto LABEL_70;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v42 = 0;
    v64 = 0;
    v45 = -6756;
    goto LABEL_77;
  }

  selfCopy = self;
  errorCopy = error;
  v64 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v47 = v14;
  obj = v14;
  v65 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (!v65)
  {
    goto LABEL_49;
  }

  v54 = *v67;
  v15 = *MEMORY[0x1E697AC30];
  v53 = *MEMORY[0x1E697ADD0];
  v52 = *MEMORY[0x1E697B318];
  v51 = *MEMORY[0x1E697ADC8];
  v50 = *MEMORY[0x1E697ACF0];
  while (2)
  {
    for (i = 0; i != v65; ++i)
    {
      if (*v67 != v54)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v66 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v70 = -6756;
LABEL_68:
        v14 = v47;
        error = errorCopy;
        goto LABEL_69;
      }

      v18 = objc_alloc_init(CUPairedPeer);
      TypeID = CFStringGetTypeID();
      v20 = CFDictionaryGetTypedValue(v17, v15, TypeID, &v70);
      v21 = v20;
      if (v70)
      {
        goto LABEL_52;
      }

      if (!v20)
      {
        v70 = -6762;
        goto LABEL_67;
      }

      v70 = StringToUUIDEx([v20 UTF8String], 0xFFFFFFFFFFFFFFFFLL, 0, 0, v71);
      if (v70)
      {
LABEL_52:
        v25 = 0;
LABEL_53:
        v29 = 0;
        v27 = 0;
LABEL_64:
        v14 = v47;
        error = errorCopy;

LABEL_69:
        v42 = 0;
        goto LABEL_70;
      }

      v22 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v71];
      [(CUPairedPeer *)v18 setIdentifier:v22];

      v23 = CFDateGetTypeID();
      [(CUPairedPeer *)v18 setDateModified:CFDictionaryGetTypedValue(v17, v53, v23, 0)];
      v24 = KeychainCopyMatchingFormatted(&v70, "{%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O}", v60, v59, v58, @"com.apple.pairing", v15, v21, v57, v62, v56, v61, v52, v55);
      v25 = v24;
      if (v70)
      {
        goto LABEL_53;
      }

      if (!v24)
      {
        v70 = -6762;
        goto LABEL_66;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v43 = -6756;
        goto LABEL_60;
      }

      v26 = OPACKDecodeData(v25, 0, &v70);
      v27 = v26;
      if (v70)
      {
        v29 = 0;
        goto LABEL_64;
      }

      if (!v26)
      {
        v43 = -6762;
LABEL_60:
        v70 = v43;
LABEL_62:

LABEL_66:
LABEL_67:

        goto LABEL_68;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v70 = -6756;

        goto LABEL_62;
      }

      v28 = CFDictionaryGetTypeID();
      v29 = CFDictionaryGetTypedValue(v27, @"acl", v28, 0);
      if (v29)
      {
        [(CUPairedPeer *)v18 setAcl:v29];
      }

      v30 = CFDataGetTypeID();
      v31 = CFDictionaryGetTypedValue(v27, @"pk", v30, &v70);

      if (v70)
      {
        v25 = v31;
        goto LABEL_64;
      }

      if (!v31)
      {
        v70 = -6762;

        goto LABEL_66;
      }

      [(CUPairedPeer *)v18 setPublicKey:v31];
      v32 = CFStringGetTypeID();
      v33 = CFDictionaryGetTypedValue(v17, v51, v32, 0);
      if (v33)
      {
        [(CUPairedPeer *)v18 setName:v33];
      }

      v34 = CFDataGetTypeID();
      v35 = CFDictionaryGetTypedValue(v17, v50, v34, 0);

      if (!v35)
      {
        v36 = 0;
LABEL_42:
        v38 = v33;
        goto LABEL_43;
      }

      v36 = OPACKDecodeData(v35, 0, 0);
      if (!v36)
      {
        goto LABEL_42;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_42;
      }

      v37 = CFStringGetTypeID();
      v38 = CFDictionaryGetTypedValue(v36, @"model", v37, 0);

      if (v38)
      {
        [(CUPairedPeer *)v18 setModel:v38];
      }

      v39 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v36];
      [v39 removeObjectForKey:@"model"];
      [(CUPairedPeer *)v18 setInfo:v39];

LABEL_43:
      if ((optionsCopy & 2) != 0)
      {
        v40 = CFDataGetTypeID();
        v41 = CFDictionaryGetTypedValue(v27, @"altIRK", v40, 0);

        if (v41)
        {
          [(CUPairedPeer *)v18 setAltIRK:v41];
          v35 = v41;
        }

        else
        {
          v35 = 0;
        }
      }

      [v64 addObject:v18];
    }

    v65 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
    if (v65)
    {
      continue;
    }

    break;
  }

LABEL_49:

  if (optionsCopy < 0)
  {
    [(CUPairingDaemon *)selfCopy _removeDups:v64];
  }

  v42 = v64;
  v70 = 0;
  v64 = v42;
  v14 = v47;
  error = errorCopy;
LABEL_70:
  if (error)
  {
    *error = v70;
  }

  return v42;
}

- (id)copyPairedPeersWithOptions:(unint64_t)options error:(int *)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [(CUPairingDaemon *)selfCopy _copyPairedPeersWithOptions:options error:error];
  objc_sync_exit(selfCopy);

  return v7;
}

- (int)_saveIdentity:(id)identity options:(unint64_t)options
{
  v67 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v11 = &OBJC_IVAR___CUSystemMonitorImp__meDeviceFindMyLocateMonitor;
  if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _saveIdentity:options:]", 30, "Save %@\n", v6, v7, v8, v9, identityCopy);
  }

  if (self->_testMode)
  {
    v12 = @"Test Device Pairing Identity";
  }

  else
  {
    v12 = @"Device Pairing Identity";
  }

  v13 = @"Account Pairing Identity";
  if (self->_testMode)
  {
    v13 = @"Test Account Pairing Identity";
  }

  if ((options & 4) != 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = *MEMORY[0x1E695E4D0];
  }

  if ((options & 4) != 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = *MEMORY[0x1E697AEB8];
  }

  if ((options & 4) != 0)
  {
    v16 = v12;
  }

  else
  {
    v16 = v13;
  }

  v65 = 0;
  identifier = [identityCopy identifier];
  uUIDString = [identifier UUIDString];

  if (!uUIDString)
  {
    secretKey = 0;
    v27 = 0;
    v23 = 0;
    v28 = 0;
    v51 = -6708;
LABEL_64:
    v65 = v51;
    goto LABEL_55;
  }

  v60 = v14;
  v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  altIRK = [identityCopy altIRK];
  if (altIRK)
  {
    [(__CFString *)v23 setObject:altIRK forKeyedSubscript:@"altIRK"];
  }

  publicKey = [identityCopy publicKey];

  if (publicKey)
  {
    [(__CFString *)v23 setObject:publicKey forKeyedSubscript:@"pk"];
  }

  secretKey = [identityCopy secretKey];

  if (secretKey)
  {
    [(__CFString *)v23 setObject:secretKey forKeyedSubscript:@"sk"];
  }

  v27 = OPACKEncoderCreateDataMutable(v23, 0, &v65);
  if (v65)
  {
    v28 = 0;
    goto LABEL_55;
  }

  if (!v27)
  {
    v28 = 0;
    v51 = -6762;
    goto LABEL_64;
  }

  v56 = secretKey;
  v57 = v23;
  selfCopy = self;
  v59 = v27;
  v29 = *MEMORY[0x1E697AFF8];
  v30 = *MEMORY[0x1E697B008];
  v31 = uUIDString;
  v32 = *MEMORY[0x1E697ABD0];
  v33 = *MEMORY[0x1E697AC30];
  v34 = *MEMORY[0x1E697AE88];
  v35 = v16;
  v36 = *MEMORY[0x1E697AEB0];
  v58 = v31;
  v28 = CFCreateF(&v65, "{%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O}", *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008], *MEMORY[0x1E697ABD0], @"com.apple.pairing", *MEMORY[0x1E697AC30], v31, *MEMORY[0x1E697AE88], v35, *MEMORY[0x1E697AEB0], v15);
  if (!v65)
  {
    v52 = v34;
    v53 = v32;
    v54 = v29;
    v37 = *MEMORY[0x1E697ACE0];
    v38 = *MEMORY[0x1E697ADC8];
    v39 = *MEMORY[0x1E697B3C0];
    updated = KeychainUpdateFormatted(v28, "{%kO=%O%kO=%O%kO=%O}", *MEMORY[0x1E697ACE0], v35, *MEMORY[0x1E697ADC8], v35, *MEMORY[0x1E697B3C0], v59);
    v65 = updated;
    if (updated)
    {
      if (updated != -25300)
      {
        uUIDString = v58;
        v27 = v59;
        v11 = &OBJC_IVAR___CUSystemMonitorImp__meDeviceFindMyLocateMonitor;
        secretKey = v56;
        v23 = v57;
        goto LABEL_55;
      }

      v65 = KeychainAddFormatted(0, "{%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O}", v54, v30, v53, @"com.apple.pairing", *MEMORY[0x1E697ABD8], *MEMORY[0x1E697ABF8], v33, v58, v37, v35, v38, v35, v52, v35, v36, v60, v39, v59);
      secretKey = v56;
      if (v65)
      {
        uUIDString = v58;
        v27 = v59;
        v11 = &OBJC_IVAR___CUSystemMonitorImp__meDeviceFindMyLocateMonitor;
        v23 = v57;
        goto LABEL_55;
      }

      v23 = v57;
      if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
      {
        LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _saveIdentity:options:]", 30, "Saved %@\n", v19, v20, v21, v22, identityCopy);
      }

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v41 = selfCopy->_xpcConnections;
      v42 = [(NSMutableSet *)v41 countByEnumeratingWithState:&v61 objects:v66 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v62;
        do
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v62 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v61 + 1) + 8 * i);
            if (*(v46 + 32) == 1)
            {
              remoteObjectProxy = [*(v46 + 40) remoteObjectProxy];
              [remoteObjectProxy pairingIdentityCreated:identityCopy options:options];
            }
          }

          v43 = [(NSMutableSet *)v41 countByEnumeratingWithState:&v61 objects:v66 count:16];
        }

        while (v43);
      }

      notify_post("com.apple.pairing.identityChanged");
      uUIDString = v58;
      v27 = v59;
      v11 = &OBJC_IVAR___CUSystemMonitorImp__meDeviceFindMyLocateMonitor;
    }

    else
    {
      v11 = &OBJC_IVAR___CUSystemMonitorImp__meDeviceFindMyLocateMonitor;
      secretKey = v56;
      v23 = v57;
      if (gLogCategory_CUPairingDaemon > 30)
      {
        uUIDString = v58;
        v27 = v59;
        goto LABEL_59;
      }

      uUIDString = v58;
      v27 = v59;
      if (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu))
      {
        LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _saveIdentity:options:]", 30, "Updated %@\n", v19, v20, v21, v22, identityCopy);
      }
    }

    if (!v65)
    {
      goto LABEL_59;
    }

    goto LABEL_55;
  }

  uUIDString = v58;
  v27 = v59;
  v11 = &OBJC_IVAR___CUSystemMonitorImp__meDeviceFindMyLocateMonitor;
  secretKey = v56;
  v23 = v57;
LABEL_55:
  v48 = v11[762];
  if (v48 <= 60 && (v48 != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x3Cu)))
  {
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _saveIdentity:options:]", 60, "### Save %@ failed: %#m\n", v19, v20, v21, v22, identityCopy);
  }

LABEL_59:
  if (v28)
  {
    CFRelease(v28);
  }

  v49 = v65;

  return v49;
}

- (int)_deleteIdentityWithOptions:(unint64_t)options
{
  v27 = *MEMORY[0x1E69E9840];
  if (self->_testMode)
  {
    v5 = @"Test Device Pairing Identity";
  }

  else
  {
    v5 = @"Device Pairing Identity";
  }

  v6 = @"Account Pairing Identity";
  if (self->_testMode)
  {
    v6 = @"Test Account Pairing Identity";
  }

  if ((options & 4) != 0)
  {
    v7 = 0;
  }

  else
  {
    v5 = v6;
    v7 = *MEMORY[0x1E695E4D0];
  }

  v12 = KeychainDeleteFormatted("{%kO=%O%kO=%O%kO=%O%kO=%O}", a2, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008], *MEMORY[0x1E697ABD0], @"com.apple.pairing", *MEMORY[0x1E697AE88], v5, *MEMORY[0x1E697AEB0], v7);
  if (!v12)
  {
    if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _deleteIdentityWithOptions:]", 30, "Deleted identity\n", v8, v9, v10, v11, v21);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = self->_xpcConnections;
    v14 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v22 + 1) + 8 * i);
          if (*(v18 + 32) == 1)
          {
            remoteObjectProxy = [*(v18 + 40) remoteObjectProxy];
            [remoteObjectProxy pairingIdentityDeletedWithOptions:options];
          }
        }

        v15 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v15);
    }

    notify_post("com.apple.pairing.identityChanged");
  }

  return v12;
}

- (int)deleteIdentityWithOptions:(unint64_t)options
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  LODWORD(options) = [(CUPairingDaemon *)selfCopy _deleteIdentityWithOptions:options];
  objc_sync_exit(selfCopy);

  return options;
}

- (id)_copyIdentityWithOptions:(unint64_t)options error:(int *)error
{
  optionsCopy = options;
  v28 = *MEMORY[0x1E69E9840];
  if (self->_testMode)
  {
    v6 = @"Test Device Pairing Identity";
  }

  else
  {
    v6 = @"Device Pairing Identity";
  }

  v7 = @"Account Pairing Identity";
  if (self->_testMode)
  {
    v7 = @"Test Account Pairing Identity";
  }

  v8 = *MEMORY[0x1E697AEB8];
  if ((options & 4) != 0)
  {
    v8 = 0;
  }

  else
  {
    v6 = v7;
  }

  v26 = 0;
  v9 = KeychainCopyMatchingFormatted(&v26, "{%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O%kO=%O}", *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008], *MEMORY[0x1E697ABD0], @"com.apple.pairing", *MEMORY[0x1E697AE88], v6, *MEMORY[0x1E697AEB0], v8, *MEMORY[0x1E697B310], *MEMORY[0x1E695E4D0], *MEMORY[0x1E697B318], *MEMORY[0x1E695E4D0]);
  v10 = v26;
  if (v26)
  {
    v23 = 0;
    v11 = 0;
    goto LABEL_35;
  }

  if (!v9)
  {
    v23 = 0;
    v11 = 0;
    v16 = 0;
    goto LABEL_42;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = 0;
    v11 = 0;
    v16 = 0;
    v17 = 0;
LABEL_44:
    v10 = -6756;
    goto LABEL_48;
  }

  v11 = objc_alloc_init(CUPairingIdentity);
  Value = CFDictionaryGetValue(v9, *MEMORY[0x1E697AC30]);
  if (Value)
  {
    v10 = CFGetUUIDEx(Value, 0, v27);
    v26 = v10;
    if (!v10)
    {
      v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v27];
      [(CUPairingIdentity *)v11 setIdentifier:v13];

      v14 = *MEMORY[0x1E697B3C0];
      TypeID = CFDataGetTypeID();
      v16 = CFDictionaryGetTypedValue(v9, v14, TypeID, &v26);
      v10 = v26;
      if (!v26)
      {
        if (v16)
        {
          v17 = OPACKDecodeData(v16, 0, &v26);
          v10 = v26;
          if (v26)
          {
            goto LABEL_32;
          }

          if (!v17)
          {
LABEL_33:
            v23 = 0;
LABEL_47:
            v10 = -6762;
            goto LABEL_48;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = CFDataGetTypeID();
            v19 = CFDictionaryGetTypedValue(v17, @"pk", v18, &v26);

            v10 = v26;
            if (v26)
            {
              v23 = 0;
              v16 = v19;
              goto LABEL_29;
            }

            if (!v19)
            {
              v23 = 0;
              v16 = 0;
              goto LABEL_47;
            }

            [(CUPairingIdentity *)v11 setPublicKey:v19];
            if ((optionsCopy & 2) == 0)
            {
              v16 = v19;
LABEL_28:
              v23 = v11;
              v10 = 0;
              v26 = 0;
              v11 = v23;
              goto LABEL_29;
            }

            v20 = CFDataGetTypeID();
            v21 = CFDictionaryGetTypedValue(v17, @"altIRK", v20, 0);

            if (v21)
            {
              [(CUPairingIdentity *)v11 setAltIRK:v21];
            }

            v22 = CFDataGetTypeID();
            v16 = CFDictionaryGetTypedValue(v17, @"sk", v22, &v26);

            v10 = v26;
            if (!v26)
            {
              if (v16)
              {
                [(CUPairingIdentity *)v11 setSecretKey:v16];
                goto LABEL_28;
              }

              goto LABEL_33;
            }

LABEL_32:
            v23 = 0;
            goto LABEL_29;
          }

          v23 = 0;
          goto LABEL_44;
        }

        v23 = 0;
LABEL_42:
        v17 = 0;
        goto LABEL_47;
      }

      v23 = 0;
LABEL_40:
      v17 = 0;
      goto LABEL_29;
    }

    v23 = 0;
LABEL_35:
    v16 = 0;
    goto LABEL_40;
  }

  v23 = 0;
  v16 = 0;
  v17 = 0;
  v10 = -6727;
LABEL_48:
  v26 = v10;
LABEL_29:
  if (error)
  {
    *error = v10;
  }

  v24 = v23;

  return v24;
}

- (id)_copyOrCreateWithOptions:(unint64_t)options error:(int *)error
{
  v42 = *MEMORY[0x1E69E9840];
  v39 = 0;
  v7 = [(CUPairingDaemon *)self _copyIdentityWithOptions:options error:&v39];
  v8 = v7;
  if (v7 && !v39)
  {
    if ((options & 2) != 0)
    {
      altIRK = [(CUPairingIdentity *)v7 altIRK];
      if (!altIRK)
      {
        if ((options & 4) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_21;
      }

      v10 = altIRK;
      if ((options & 4) != 0 && self->_rpSelfIRK)
      {
        altIRK2 = [(CUPairingIdentity *)v8 altIRK];
        v12 = [altIRK2 isEqual:self->_rpSelfIRK];

        if (v12)
        {
          goto LABEL_38;
        }

LABEL_21:
        if (self->_rpSelfIRK)
        {
          [(CUPairingIdentity *)v8 setAltIRK:?];
          if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
          {
            LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _copyOrCreateWithOptions:error:]", 30, "Updating identity for RP IRK: %@\n", v23, v24, v25, v26, v8);
          }

          goto LABEL_37;
        }

LABEL_30:
        RandomBytes(bytes, 0x10uLL);
        ccsha512_di();
        cchkdf();
        v28 = [MEMORY[0x1E695DEF0] dataWithBytes:bytes length:{16, bytes}];
        [(CUPairingIdentity *)v8 setAltIRK:v28];

        if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
        {
          LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _copyOrCreateWithOptions:error:]", 30, "Updating identity for missing IRK: %@\n", v29, v30, v31, v32, v8);
        }

LABEL_37:
        v39 = [(CUPairingDaemon *)self _saveIdentity:v8 options:options];
        if (v39)
        {
          v13 = 0;
          goto LABEL_40;
        }

        goto LABEL_38;
      }
    }

LABEL_38:
    v27 = v8;
LABEL_39:
    v13 = v27;
    v8 = v27;
    goto LABEL_40;
  }

  v13 = 0;
  if (!v39)
  {
    v39 = -6762;
    goto LABEL_40;
  }

  if ((options & 1) != 0 && v39 != -25293)
  {
    v14 = objc_alloc_init(CUPairingIdentity);

    uUID = [MEMORY[0x1E696AFB0] UUID];
    [(CUPairingIdentity *)v14 setIdentifier:uUID];

    if ((options & 4) != 0 && self->_rpSelfIRK)
    {
      [(CUPairingIdentity *)v14 setAltIRK:?];
    }

    else
    {
      RandomBytes(bytes, 0x10uLL);
      ccsha512_di();
      cchkdf();
      v16 = [MEMORY[0x1E695DEF0] dataWithBytes:bytes length:{16, bytes}];
      [(CUPairingIdentity *)v14 setAltIRK:v16];
    }

    cced25519_make_key_pair_compat(bytes, __s);
    v17 = [MEMORY[0x1E695DEF0] dataWithBytes:bytes length:32];
    [(CUPairingIdentity *)v14 setPublicKey:v17];

    v18 = [MEMORY[0x1E695DEF0] dataWithBytes:__s length:32];
    [(CUPairingIdentity *)v14 setSecretKey:v18];

    if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _copyOrCreateWithOptions:error:]", 30, "Created %@\n", v19, v20, v21, v22, v14);
    }

    v39 = [(CUPairingDaemon *)self _saveIdentity:v14 options:options];
    if (v39)
    {
      v13 = 0;
      v8 = v14;
      goto LABEL_40;
    }

    if ((options & 2) == 0)
    {
      [(CUPairingIdentity *)v14 setAltIRK:0];
      [(CUPairingIdentity *)v14 setSecretKey:0];
    }

    v27 = v14;
    goto LABEL_39;
  }

LABEL_40:
  memset_s(__s, 0x20uLL, 0, 0x20uLL);
  v37 = v39;
  if (v39 != -25300 && v39 && gLogCategory_CUPairingDaemon <= 60)
  {
    if (gLogCategory_CUPairingDaemon != -1)
    {
LABEL_44:
      LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _copyOrCreateWithOptions:error:]", 60, "### CopyIdentity failed: %#m\n", v33, v34, v35, v36, v37);
      goto LABEL_46;
    }

    if (_LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x3Cu))
    {
      v37 = v39;
      goto LABEL_44;
    }
  }

LABEL_46:
  if (error)
  {
    *error = v39;
  }

  return v13;
}

- (id)_copyHomeKitExWithOptions:(unint64_t)options error:(int *)error
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__5769;
  v29 = __Block_byref_object_dispose__5770;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__5769;
  v23 = __Block_byref_object_dispose__5770;
  v24 = 0;
  v7 = dispatch_semaphore_create(0);
  homeKitManager = self->_homeKitManager;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__CUPairingDaemon__copyHomeKitExWithOptions_error___block_invoke;
  v15[3] = &unk_1E73A4C58;
  v17 = &v25;
  v18 = &v19;
  v9 = v7;
  v16 = v9;
  [(CUHomeKitManager *)homeKitManager getPairingIdentityWithOptions:options completion:v15];
  if ((options & 0x200) != 0)
  {
    v10 = 3000000000;
  }

  else
  {
    v10 = 30000000000;
  }

  v11 = dispatch_time(0, v10);
  if (dispatch_semaphore_wait(v9, v11))
  {
    LODWORD(v12) = -6722;
  }

  else
  {
    v12 = v20[5];
    if (v12)
    {
      LODWORD(v12) = NSErrorToOSStatusEx(v12, 0);
    }
  }

  if (error)
  {
    *error = v12;
  }

  v13 = v26[5];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v13;
}

void __51__CUPairingDaemon__copyHomeKitExWithOptions_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_copyHomeKitWithOptionsKeychain:(unint64_t)keychain error:(int *)error
{
  keychainCopy = keychain;
  v64 = *MEMORY[0x1E69E9840];
  if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _copyHomeKitWithOptionsKeychain:error:]", 30, "Get HomeKit Local key", v4, v5, v6, v7, v55);
  }

  v61 = 0;
  v59 = 0;
  v60 = 0;
  v8 = *MEMORY[0x1E697AFF8];
  v9 = *MEMORY[0x1E697B008];
  v10 = *MEMORY[0x1E697ABD0];
  v11 = *MEMORY[0x1E697AEF8];
  v12 = *MEMORY[0x1E697AEB0];
  v13 = *MEMORY[0x1E697AEB8];
  v14 = *MEMORY[0x1E697B310];
  v15 = *MEMORY[0x1E695E4D0];
  v16 = *MEMORY[0x1E697B318];
  v17 = KeychainCopyMatchingFormatted(&v61, "{%kO=%O%kO=%O%kO=%i%kO=%O%kO=%O%kO=%O}", *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008], *MEMORY[0x1E697ABD0], @"com.apple.hap.pairing", *MEMORY[0x1E697AEF8], 1752001641, *MEMORY[0x1E697AEB0], *MEMORY[0x1E697AEB8], *MEMORY[0x1E697B310], *MEMORY[0x1E695E4D0], *MEMORY[0x1E697B318], *MEMORY[0x1E695E4D0]);
  if (v17)
  {
    goto LABEL_11;
  }

  if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _copyHomeKitWithOptionsKeychain:error:]", 30, "No HomeKit Local key, try v2 key: %#m", v18, v19, v20, v21, v61);
  }

  v17 = KeychainCopyMatchingFormatted(&v61, "{%kO=%O%kO=%O%kO=%O%kO=%i%kO=%O%kO=%O%kO=%O}", v8, v9, v10, @"com.apple.hap.pairing", *MEMORY[0x1E697AEA8], *MEMORY[0x1E697AB48], v11, 1751216227, v12, v13, v14, v15, v16, v15);
  if (v17)
  {
LABEL_11:
    v26 = v17;
  }

  else
  {
    if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _copyHomeKitWithOptionsKeychain:error:]", 30, "No HomeKit v2 key, try v0 key: %#m", v22, v23, v24, v25, v61);
    }

    v26 = KeychainCopyMatchingFormatted(&v61, "{%kO=%O%kO=%O%kO=%i%kO=%O%kO=%O%kO=%O}", v8, v9, v10, @"com.apple.hap.pairing", v11, 1751216195, v12, v13, v14, v15, v16, v15);
    if (!v26)
    {
      v47 = 0;
      v34 = 0;
      v35 = 0;
      v39 = 0;
      v27 = &OBJC_IVAR___CUSystemMonitorImp__meDeviceFindMyLocateMonitor;
      goto LABEL_27;
    }
  }

  v27 = &OBJC_IVAR___CUSystemMonitorImp__meDeviceFindMyLocateMonitor;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (gLogCategory_CUPairingDaemon <= 90 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x5Au)))
    {
      LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _copyHomeKitWithOptionsKeychain:error:]", 90, "Bad HomeKit key type", v28, v29, v30, v31, v56);
    }

    v39 = 0;
    v35 = 0;
    v34 = 0;
    v47 = 0;
    v46 = 4294960540;
    goto LABEL_52;
  }

  v32 = *MEMORY[0x1E697AC30];
  TypeID = CFStringGetTypeID();
  v34 = CFDictionaryGetTypedValue(v26, v32, TypeID, &v61);
  if (!v34)
  {
    v47 = 0;
    v35 = 0;
    v39 = 0;
    goto LABEL_27;
  }

  v35 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v34];
  if (!v35)
  {
    v39 = 0;
    v47 = 0;
    v46 = 4294960588;
    goto LABEL_52;
  }

  v36 = *MEMORY[0x1E697B3C0];
  v37 = CFDataGetTypeID();
  v38 = CFDictionaryGetTypedValue(v26, v36, v37, &v61);
  v39 = v38;
  if (!v38)
  {
    v47 = 0;
    goto LABEL_27;
  }

  bytes = [v38 bytes];
  v41 = [v39 length];
  v60 = v41;
  v42 = memchr(bytes, 43, v41);
  if (!v42)
  {
    v47 = 0;
    v46 = 4294960554;
    goto LABEL_52;
  }

  v43 = &v41[bytes];
  v44 = v42 + 1;
  v45 = v43 - (v42 + 1);
  v59 = v45;
  v60 = &v42[-bytes];
  v46 = HexToData(bytes, &v42[-bytes], 22, v63, 0x20uLL, &v60, 0, 0);
  v61 = v46;
  if (v46)
  {
    goto LABEL_41;
  }

  if (v60 != 32)
  {
LABEL_42:
    v47 = 0;
    v46 = 4294960553;
LABEL_52:
    v61 = v46;
    goto LABEL_28;
  }

  v46 = HexToData(v44, v45, 22, v62, 0x20uLL, &v59, 0, 0);
  v61 = v46;
  if (v46)
  {
LABEL_41:
    v47 = 0;
    goto LABEL_28;
  }

  if (v59 != 32)
  {
    goto LABEL_42;
  }

  v47 = objc_alloc_init(CUPairingIdentity);
  [(CUPairingIdentity *)v47 setIdentifier:v35];
  v48 = objc_alloc(MEMORY[0x1E695DEF0]);
  v49 = [v48 initWithBytes:v63 length:v60];
  [(CUPairingIdentity *)v47 setPublicKey:v49];

  if ((keychainCopy & 2) != 0)
  {
    v50 = objc_alloc(MEMORY[0x1E695DEF0]);
    v51 = [v50 initWithBytes:v62 length:v59];
    [(CUPairingIdentity *)v47 setSecretKey:v51];
  }

  if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _copyHomeKitWithOptionsKeychain:error:]", 30, "Got HomeKit key: %@", v28, v29, v30, v31, v47);
  }

LABEL_27:
  v46 = v61;
  if (!v61)
  {
    goto LABEL_35;
  }

LABEL_28:
  v52 = v27[762];
  if (v52 > 90)
  {
    goto LABEL_35;
  }

  if (v52 != -1)
  {
    goto LABEL_30;
  }

  if (_LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x5Au))
  {
    v46 = v61;
LABEL_30:
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _copyHomeKitWithOptionsKeychain:error:]", 90, "### Get HomeKit key failed: %#m", v28, v29, v30, v31, v46);
  }

LABEL_35:
  if (error)
  {
    *error = v61;
  }

  v53 = v47;

  return v53;
}

- (id)_copyHomeKitLocalPairingIDWithOptions:(unint64_t)options error:(int *)error
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__5769;
  v28 = __Block_byref_object_dispose__5770;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__5769;
  v22 = __Block_byref_object_dispose__5770;
  v23 = 0;
  v7 = dispatch_semaphore_create(0);
  homeKitManager = self->_homeKitManager;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__CUPairingDaemon__copyHomeKitLocalPairingIDWithOptions_error___block_invoke;
  v14[3] = &unk_1E73A4C58;
  v16 = &v24;
  v17 = &v18;
  v9 = v7;
  v15 = v9;
  [(CUHomeKitManager *)homeKitManager getHomeKitLocalPairingIdentityWithOptions:options completion:v14];
  v10 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v9, v10))
  {
    LODWORD(v11) = -6722;
  }

  else
  {
    v11 = v19[5];
    if (v11)
    {
      LODWORD(v11) = NSErrorToOSStatusEx(v11, 0);
    }
  }

  if (error)
  {
    *error = v11;
  }

  v12 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v12;
}

void __63__CUPairingDaemon__copyHomeKitLocalPairingIDWithOptions_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_copyHomeKitWithOptionsHAP:(unint64_t)p error:(int *)error
{
  v7 = [CUPairingDaemon _copyHomeKitLocalPairingIDWithOptions:"_copyHomeKitLocalPairingIDWithOptions:error:" error:?];
  v12 = v7;
  if (v7)
  {
    return v12;
  }

  if (gLogCategory_CUPairingDaemon <= 30)
  {
    if (gLogCategory_CUPairingDaemon != -1 || (v7 = _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu), v7))
    {
      v7 = LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _copyHomeKitWithOptionsHAP:error:]", 30, "No HomeKit Local Pairing ID, trying HAP directly", v8, v9, v10, v11, v27);
    }
  }

  systemStore = [getHAPSystemKeychainStoreClass_5802(v7) systemStore];
  if (systemStore)
  {
    v14 = systemStore;
    v28 = 0;
    v15 = [systemStore getLocalPairingIdentity:&v28];
    v16 = v28;
    v17 = v16;
    if (v15)
    {
      identifier = [v15 identifier];
      if (identifier)
      {
        v19 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:identifier];
        if (v19)
        {
          v20 = objc_alloc_init(CUPairingIdentity);
          [(CUPairingIdentity *)v20 setIdentifier:v19];
          publicKey = [v15 publicKey];
          data = [publicKey data];
          [(CUPairingIdentity *)v20 setPublicKey:data];

          if ((p & 2) != 0)
          {
            privateKey = [v15 privateKey];
            data2 = [privateKey data];
            [(CUPairingIdentity *)v20 setSecretKey:data2];
          }

          v25 = 0;
          goto LABEL_13;
        }

        v20 = 0;
      }

      else
      {
        v20 = 0;
        v19 = 0;
      }

      v25 = -6708;
    }

    else
    {
      v25 = NSErrorToOSStatusEx(v16, 0);
      v20 = 0;
      identifier = 0;
      v19 = 0;
    }

LABEL_13:
    if (error)
    {
      *error = v25;
    }

    v12 = v20;

    return v12;
  }

  return [(CUPairingDaemon *)self _copyHomeKitWithOptionsKeychain:p error:error];
}

- (void)getIdentityWithOptions:(unint64_t)options completionHandler:(id)handler
{
  v26[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v9 = handlerCopy;
  if ((options & 8) != 0)
  {
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    selfCopy = dispatch_queue_create("CUPairingDaemonHomeKit", v12);

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__CUPairingDaemon_getIdentityWithOptions_completionHandler___block_invoke;
    block[3] = &unk_1E73A4BB0;
    block[4] = self;
    optionsCopy = options;
    v23 = v9;
    dispatch_async(&selfCopy->super, block);
  }

  else if ((options & 0x130) != 0)
  {
    homeKitManager = self->_homeKitManager;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __60__CUPairingDaemon_getIdentityWithOptions_completionHandler___block_invoke_2;
    v20[3] = &unk_1E73A3898;
    v21 = handlerCopy;
    [(CUHomeKitManager *)homeKitManager getPairingIdentityWithOptions:options completion:v20];
    selfCopy = v21;
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v19 = 0;
    v13 = [(CUPairingDaemon *)selfCopy _copyOrCreateWithOptions:options error:&v19];
    if (v9)
    {
      v14 = v19;
      if (v19)
      {
        v15 = MEMORY[0x1E696ABC0];
        v25 = *MEMORY[0x1E696A578];
        v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, v19, 0, 0)}];
        v4 = v16;
        v17 = @"?";
        if (v16)
        {
          v17 = v16;
        }

        v26[0] = v17;
        v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
        v18 = [v15 errorWithDomain:*MEMORY[0x1E696A768] code:v14 userInfo:v5];
      }

      else
      {
        v18 = 0;
      }

      (v9)[2](v9, v13, v18);
      if (v14)
      {
      }
    }

    objc_sync_exit(selfCopy);
  }
}

void __60__CUPairingDaemon_getIdentityWithOptions_completionHandler___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v12 = 0;
  v2 = [*(a1 + 32) _copyHomeKitWithOptions:*(a1 + 48) error:&v12];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = v12;
    if (v12)
    {
      v5 = MEMORY[0x1E696ABC0];
      v6 = *MEMORY[0x1E696A768];
      v13 = *MEMORY[0x1E696A578];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, v12, 0, 0)}];
      v8 = v7;
      v9 = @"?";
      if (v7)
      {
        v9 = v7;
      }

      v14[0] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v11 = [v5 errorWithDomain:v6 code:v4 userInfo:v10];
      (*(v3 + 16))(v3, v2, v11);
    }

    else
    {
      (*(v3 + 16))(v3, v2, 0);
    }
  }
}

uint64_t __60__CUPairingDaemon_getIdentityWithOptions_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)copyIdentityWithOptions:(unint64_t)options error:(int *)error
{
  if ((options & 8) != 0)
  {

    return [CUPairingDaemon _copyHomeKitWithOptions:"_copyHomeKitWithOptions:error:" error:?];
  }

  else if ((options & 0x130) != 0)
  {

    return [CUPairingDaemon _copyHomeKitExWithOptions:"_copyHomeKitExWithOptions:error:" error:?];
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v8 = [(CUPairingDaemon *)selfCopy _copyOrCreateWithOptions:options error:error];
    objc_sync_exit(selfCopy);

    return v8;
  }
}

- (void)_rpIdentityUpdate
{
  selfCopy = self;
  if (gLogCategory_CUPairingDaemon <= 30)
  {
    if (gLogCategory_CUPairingDaemon != -1 || (self = _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu), self))
    {
      self = LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _rpIdentityUpdate]", 30, "Self RPIdentity get start\n", v2, v3, v4, v5, v9[0]);
    }
  }

  v7 = objc_alloc_init(getRPClientClass(self));
  [v7 setDispatchQueue:selfCopy->_dispatchQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__CUPairingDaemon__rpIdentityUpdate__block_invoke;
  v9[3] = &unk_1E73A3870;
  v10 = v7;
  v11 = selfCopy;
  v8 = v7;
  [v8 getIdentitiesWithFlags:1 completion:v9];
}

void __36__CUPairingDaemon__rpIdentityUpdate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) invalidate];
  if (v6)
  {
    if (gLogCategory_CUPairingDaemon <= 90 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x5Au)))
    {
      LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _rpIdentityUpdate]_block_invoke", 90, "### Self RPIdentity get failed: %{error}\n", v7, v8, v9, v10, v6);
    }

    goto LABEL_40;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v35;
LABEL_7:
    v15 = 0;
    while (1)
    {
      if (*v35 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v34 + 1) + 8 * v15);
      if ([v16 type] == 1)
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v13)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    v21 = v16;

    if (!v21)
    {
      goto LABEL_20;
    }

    v22 = *(*(a1 + 40) + 24);
    v23 = [v21 deviceIRKData];
    v28 = v23;
    if (v23)
    {
      v29 = v23;
      v30 = v22;
      v31 = v30;
      if (v29 == v30)
      {
      }

      else
      {
        if (!v30)
        {

          goto LABEL_32;
        }

        v32 = [v29 isEqual:v30];

        if (!v32)
        {
LABEL_32:
          if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
          {
            LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _rpIdentityUpdate]_block_invoke", 30, "Self RPIdentity IRK changed: %{mask} -> %{mask}\n", v24, v25, v26, v27, v31);
          }

          objc_storeStrong((*(a1 + 40) + 24), v28);
          notify_post("com.apple.pairing.identityChanged");
LABEL_39:

          goto LABEL_40;
        }
      }
    }

    if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _rpIdentityUpdate]_block_invoke", 30, "Self RPIdentity IRK unchanged: %{mask} -> %{mask}\n", v24, v25, v26, v27, v22);
    }

    goto LABEL_39;
  }

LABEL_13:

LABEL_20:
  if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _rpIdentityUpdate]_block_invoke", 30, "Self RPIdentity get failed: no self identity\n", v17, v18, v19, v20, v33);
  }

LABEL_40:
}

- (void)reset
{
  v28 = *MEMORY[0x1E69E9840];
  if (self->_testMode)
  {
    [(CUPairingDaemon *)self deleteIdentityWithOptions:0];
    [(CUPairingDaemon *)self deleteIdentityWithOptions:4];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = [(CUPairingDaemon *)self copyPairedPeersWithOptions:0 error:0];
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(CUPairingDaemon *)self removePairedPeer:*(*(&v22 + 1) + 8 * i) options:0 removeAdminAllowed:1];
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v9);
    }

    v12 = [(CUPairingDaemon *)self copyPairedPeersWithOptions:4 error:0];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v19;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [(CUPairingDaemon *)self removePairedPeer:*(*(&v18 + 1) + 8 * j) options:4 removeAdminAllowed:1, v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v15);
    }
  }

  else if (gLogCategory_CUPairingDaemon <= 90 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x5Au)))
  {

    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon reset]", 90, "### Reset only allowed in test mode\n", v2, v3, v4, v5, v30);
  }
}

- (void)_connectionInvalidated:(id)invalidated
{
  dispatchQueue = self->_dispatchQueue;
  invalidatedCopy = invalidated;
  dispatch_assert_queue_V2(dispatchQueue);
  [invalidatedCopy connectionInvalidated];
  [(NSMutableSet *)self->_xpcConnections removeObject:invalidatedCopy];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v7 = objc_alloc_init(CUPairingXPCConnection);
  objc_storeStrong(&v7->_daemon, self);
  objc_storeStrong(&v7->_dispatchQueue, self->_dispatchQueue);
  objc_storeStrong(&v7->_xpcCnx, connection);
  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v10 = self->_xpcConnections;
    self->_xpcConnections = v9;

    xpcConnections = self->_xpcConnections;
  }

  [(NSMutableSet *)xpcConnections addObject:v7];
  [connectionCopy _setQueue:self->_dispatchQueue];
  v11 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06AFA68];
  [connectionCopy setExportedInterface:v11];

  [connectionCopy setExportedObject:v7];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __54__CUPairingDaemon_listener_shouldAcceptNewConnection___block_invoke;
  v20[3] = &unk_1E73A49F0;
  v20[4] = self;
  v12 = v7;
  v21 = v12;
  [connectionCopy setInvalidationHandler:v20];
  v13 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06AFC28];
  [connectionCopy setRemoteObjectInterface:v13];

  [connectionCopy resume];
  if (gLogCategory_CUPairingDaemon <= 20 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x14u)))
  {
    processIdentifier = [connectionCopy processIdentifier];
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon listener:shouldAcceptNewConnection:]", 20, "XPC connection started from %#{pid}\n", v15, v16, v17, v18, processIdentifier);
  }

  return 1;
}

- (void)_invalidate
{
  v23 = *MEMORY[0x1E69E9840];
  if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _invalidate]", 30, "Invalidate\n", v2, v3, v4, v5, v18);
  }

  [(NSXPCListener *)self->_xpcListener invalidate];
  xpcListener = self->_xpcListener;
  self->_xpcListener = 0;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_xpcConnections;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(*(&v18 + 1) + 8 * i) + 40) invalidate];
      }

      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  [(NSMutableSet *)self->_xpcConnections removeAllObjects];
  xpcConnections = self->_xpcConnections;
  self->_xpcConnections = 0;

  if (self->_stateHandle)
  {
    os_state_remove_handler();
    self->_stateHandle = 0;
  }

  rpIdentityNotifier = self->_rpIdentityNotifier;
  if (rpIdentityNotifier != -1)
  {
    notify_cancel(rpIdentityNotifier);
    self->_rpIdentityNotifier = -1;
  }

  rpSelfIRK = self->_rpSelfIRK;
  self->_rpSelfIRK = 0;

  [(CUHomeKitManager *)self->_homeKitManager invalidate];
  homeKitManager = self->_homeKitManager;
  self->_homeKitManager = 0;

  v17 = gPairingDaemon;
  if (gPairingDaemon == self)
  {
    gPairingDaemon = 0;
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__CUPairingDaemon_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _activate]", 30, "Activate\n", v2, v3, v4, v5, v13);
  }

  if (!self->_homeKitManager)
  {
    v7 = objc_alloc_init(CUHomeKitManager);
    homeKitManager = self->_homeKitManager;
    self->_homeKitManager = v7;

    v9 = dispatch_queue_create("CUPairingDaemonHomeKit", 0);
    [(CUHomeKitManager *)self->_homeKitManager setDispatchQueue:v9];

    [(CUHomeKitManager *)self->_homeKitManager setFlags:516];
    if (GestaltGetDeviceClass_sOnce != -1)
    {
      dispatch_once(&GestaltGetDeviceClass_sOnce, &__block_literal_global_13571);
    }

    if (GestaltGetDeviceClass_deviceClass == 7 || GestaltGetDeviceClass_deviceClass == 4)
    {
      [(CUHomeKitManager *)self->_homeKitManager setFlags:[(CUHomeKitManager *)self->_homeKitManager flags]| 2];
    }

    [(CUHomeKitManager *)self->_homeKitManager activate];
  }

  if (self->_rpIdentityNotifier == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __28__CUPairingDaemon__activate__block_invoke;
    handler[3] = &unk_1E73A4228;
    handler[4] = self;
    notify_register_dispatch("com.apple.rapport.identitiesChanged", &self->_rpIdentityNotifier, dispatchQueue, handler);
    [(CUPairingDaemon *)self _rpIdentityUpdate];
  }

  if (!self->_stateHandle)
  {
    self->_stateHandle = os_state_add_handler();
  }

  if (!self->_xpcListener)
  {
    v11 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.PairingManager"];
    xpcListener = self->_xpcListener;
    self->_xpcListener = v11;

    [(NSXPCListener *)self->_xpcListener setDelegate:self];
    [(NSXPCListener *)self->_xpcListener _setQueue:self->_dispatchQueue];
    [(NSXPCListener *)self->_xpcListener resume];
  }
}

void *__28__CUPairingDaemon__activate__block_invoke(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(result[4] + 16) != -1)
  {
    v10 = result;
    if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingDaemon _activate]_block_invoke", 30, "RPIdentities changed\n", a5, a6, a7, a8, v8);
    }

    v11 = v10[4];

    return [v11 _rpIdentityUpdate];
  }

  return result;
}

- (void)activate
{
  if (self->_testMode && !self->_xpcListener)
  {
    anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    xpcListener = self->_xpcListener;
    self->_xpcListener = anonymousListener;

    [(NSXPCListener *)self->_xpcListener setDelegate:self];
    [(NSXPCListener *)self->_xpcListener _setQueue:self->_dispatchQueue];
    [(NSXPCListener *)self->_xpcListener resume];
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__CUPairingDaemon_activate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (id)detailedDescription
{
  v213 = *MEMORY[0x1E69E9840];
  v209 = 0;
  NSAppendPrintF(&v209, "=== CUPairingManager ===\n", v2, v3, v4, v5, v6, v7, v166);
  v9 = v209;
  v10 = [(CUPairingDaemon *)self copyIdentityWithOptions:514 error:0];
  v17 = v10;
  if (v10)
  {
    v208 = v9;
    v18 = &v208;
    NSAppendPrintF(&v208, "Per-account:      %@\n", v11, v12, v13, v14, v15, v16, v10);
  }

  else
  {
    v207 = v9;
    v18 = &v207;
    NSAppendPrintF(&v207, "Per-account:      No identity\n", v11, v12, v13, v14, v15, v16, v167);
  }

  v19 = *v18;

  v20 = [(CUPairingDaemon *)self copyIdentityWithOptions:518 error:0];
  if (v20)
  {
    v206 = v19;
    v27 = &v206;
    NSAppendPrintF(&v206, "Per-device:       %@\n", v21, v22, v23, v24, v25, v26, v20);
  }

  else
  {
    v205 = v19;
    v27 = &v205;
    NSAppendPrintF(&v205, "Per-device:       No identity\n", v21, v22, v23, v24, v25, v26, v168);
  }

  v28 = *v27;

  v29 = [(CUPairingDaemon *)self copyIdentityWithOptions:522 error:0];
  if (v29)
  {
    v204 = v28;
    v36 = &v204;
    NSAppendPrintF(&v204, "HomeKitHAP:       %@\n", v30, v31, v32, v33, v34, v35, v29);
  }

  else
  {
    v203 = v28;
    v36 = &v203;
    NSAppendPrintF(&v203, "HomeKitHAP:       No identity\n", v30, v31, v32, v33, v34, v35, v169);
  }

  v37 = *v36;

  if (GestaltGetDeviceClass_sOnce != -1)
  {
    dispatch_once(&GestaltGetDeviceClass_sOnce, &__block_literal_global_13571);
  }

  if (GestaltGetDeviceClass_deviceClass == 7 || GestaltGetDeviceClass_deviceClass == 4)
  {
    v38 = [(CUPairingDaemon *)self copyIdentityWithOptions:530 error:0];

    if (v38)
    {
      v202 = v37;
      v45 = &v202;
      NSAppendPrintF(&v202, "HomeKitAccessory: %@\n", v39, v40, v41, v42, v43, v44, v38);
      v29 = v38;
    }

    else
    {
      v201 = v37;
      v45 = &v201;
      NSAppendPrintF(&v201, "HomeKitAccessory: No identity\n", v39, v40, v41, v42, v43, v44, v170);
      v29 = 0;
    }

    v46 = *v45;

    v37 = v46;
  }

  v47 = [(CUPairingDaemon *)self copyIdentityWithOptions:546 error:0];

  if (v47)
  {
    v200 = v37;
    v54 = &v200;
    NSAppendPrintF(&v200, "HomeKitUser:      %@\n", v48, v49, v50, v51, v52, v53, v47);
  }

  else
  {
    v199 = v37;
    v54 = &v199;
    NSAppendPrintF(&v199, "HomeKitUser:      No identity\n", v48, v49, v50, v51, v52, v53, v170);
  }

  v55 = *v54;

  v56 = [(CUPairingDaemon *)self copyIdentityWithOptions:770 error:0];
  v175 = v56;
  if (v56)
  {
    v198 = v55;
    v172 = v56;
    v63 = &v198;
    NSAppendPrintF(&v198, "HomeKitLegacy:    %@\n", v57, v58, v59, v60, v61, v62, v172);
  }

  else
  {
    v197 = v55;
    v63 = &v197;
    NSAppendPrintF(&v197, "HomeKitLegacy:    No identity\n", v57, v58, v59, v60, v61, v62, v171);
  }

  v64 = *v63;

  selfCopy = self;
  v65 = [(CUPairingDaemon *)self copyPairedPeersWithOptions:514 error:0];
  v196 = v64;
  v66 = [v65 count];
  NSAppendPrintF(&v196, "\n--- Per-account Peers (%ld) ---\n", v67, v68, v69, v70, v71, v72, v66);
  v73 = v196;

  v194 = 0u;
  v195 = 0u;
  v192 = 0u;
  v193 = 0u;
  v74 = v65;
  v75 = [v74 countByEnumeratingWithState:&v192 objects:v212 count:16];
  if (v75)
  {
    v76 = v75;
    v77 = *v193;
    do
    {
      for (i = 0; i != v76; ++i)
      {
        v79 = v73;
        if (*v193 != v77)
        {
          objc_enumerationMutation(v74);
        }

        v80 = *(*(&v192 + 1) + 8 * i);
        v191 = v73;
        v81 = v80;
        if (objc_opt_respondsToSelector())
        {
          detailedDescription = [v81 detailedDescription];
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            [v81 descriptionWithLevel:20];
          }

          else
          {
            NSPrintF("%@\n", v83, v84, v85, v86, v87, v88, v89, v81);
          }
          detailedDescription = ;
        }

        v90 = detailedDescription;

        NSAppendPrintF(&v191, "%@", v91, v92, v93, v94, v95, v96, v90);
        v73 = v191;
      }

      v76 = [v74 countByEnumeratingWithState:&v192 objects:v212 count:16];
    }

    while (v76);
  }

  if (![v74 count])
  {
    v190 = v73;
    NSAppendPrintF(&v190, "No per-account peers\n", v97, v98, v99, v100, v101, v102, v173);
    v103 = v190;

    v73 = v103;
  }

  v104 = [(CUPairingDaemon *)selfCopy copyPairedPeersWithOptions:518 error:0];

  v189 = v73;
  v105 = [v104 count];
  NSAppendPrintF(&v189, "\n--- Per-device Peers (%ld) ---\n", v106, v107, v108, v109, v110, v111, v105);
  v112 = v189;

  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  v113 = v104;
  v114 = [v113 countByEnumeratingWithState:&v185 objects:v211 count:16];
  if (v114)
  {
    v115 = v114;
    v116 = *v186;
    do
    {
      for (j = 0; j != v115; ++j)
      {
        v118 = v112;
        if (*v186 != v116)
        {
          objc_enumerationMutation(v113);
        }

        v119 = *(*(&v185 + 1) + 8 * j);
        v184 = v112;
        v120 = v119;
        if (objc_opt_respondsToSelector())
        {
          detailedDescription2 = [v120 detailedDescription];
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            [v120 descriptionWithLevel:20];
          }

          else
          {
            NSPrintF("%@\n", v122, v123, v124, v125, v126, v127, v128, v120);
          }
          detailedDescription2 = ;
        }

        v129 = detailedDescription2;

        NSAppendPrintF(&v184, "%@", v130, v131, v132, v133, v134, v135, v129);
        v112 = v184;
      }

      v115 = [v113 countByEnumeratingWithState:&v185 objects:v211 count:16];
    }

    while (v115);
  }

  if (![v113 count])
  {
    v183 = v112;
    NSAppendPrintF(&v183, "No per-device peers\n", v136, v137, v138, v139, v140, v141, v174);
    v142 = v183;

    v112 = v142;
  }

  v182 = v112;
  v143 = [(NSMutableSet *)selfCopy->_xpcConnections count];
  NSAppendPrintF(&v182, "\n--- XPC connections (%ld) ---\n", v144, v145, v146, v147, v148, v149, v143);
  v150 = v182;

  v180 = 0u;
  v181 = 0u;
  v178 = 0u;
  v179 = 0u;
  v151 = selfCopy->_xpcConnections;
  v152 = [(NSMutableSet *)v151 countByEnumeratingWithState:&v178 objects:v210 count:16];
  if (v152)
  {
    v153 = v152;
    v154 = *v179;
    do
    {
      v155 = 0;
      v156 = v150;
      do
      {
        if (*v179 != v154)
        {
          objc_enumerationMutation(v151);
        }

        v157 = *(*(&v178 + 1) + 8 * v155);
        v177 = v156;
        processIdentifier = [*(v157 + 40) processIdentifier];
        NSAppendPrintF(&v177, "%#{pid}\n", v159, v160, v161, v162, v163, v164, processIdentifier);
        v150 = v177;

        ++v155;
        v156 = v150;
      }

      while (v153 != v155);
      v153 = [(NSMutableSet *)v151 countByEnumeratingWithState:&v178 objects:v210 count:16];
    }

    while (v153);
  }

  return v150;
}

- (void)dealloc
{
  if (self->_xpcListener)
  {
    FatalErrorF("XPC listener still active during dealloc", a2);
  }

  v2.receiver = self;
  v2.super_class = CUPairingDaemon;
  [(CUPairingDaemon *)&v2 dealloc];
}

- (id)initStandalone
{
  v5.receiver = self;
  v5.super_class = CUPairingDaemon;
  v2 = [(CUPairingDaemon *)&v5 init];
  if (v2)
  {
    if (CUMainQueue_sOnce != -1)
    {
      dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
    }

    objc_storeStrong(&v2->_dispatchQueue, CUMainQueue_sQueue);
    v2->_rpIdentityNotifier = -1;
    v3 = v2;
  }

  return v2;
}

- (CUPairingDaemon)init
{
  v5.receiver = self;
  v5.super_class = CUPairingDaemon;
  v2 = [(CUPairingDaemon *)&v5 init];
  if (v2)
  {
    if (CUMainQueue_sOnce != -1)
    {
      dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
    }

    objc_storeStrong(&v2->_dispatchQueue, CUMainQueue_sQueue);
    v2->_rpIdentityNotifier = -1;
    objc_storeStrong(&gPairingDaemon, v2);
    v3 = v2;
  }

  return v2;
}

@end