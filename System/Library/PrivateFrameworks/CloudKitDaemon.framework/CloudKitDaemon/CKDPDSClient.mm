@interface CKDPDSClient
+ (id)sharedClient;
- (BOOL)_unregisterRegistration:(id)registration forDSID:(id)d outError:(id *)error;
- (BOOL)ensureRegistrationForContainer:(id)container outError:(id *)error;
- (BOOL)unregisterAllTokensForAccountID:(id)d outError:(id *)error;
- (BOOL)unregisterTokenForContainer:(id)container outError:(id *)error;
- (id)_pdsQualifierFromContainerID:(id)d;
- (id)_pdsTopicFromBundleIdentifier:(id)identifier withContainerID:(id)d;
- (id)_registrationForAppContainerAccountTuple:(id)tuple pushBundleIdentifier:(id)identifier pdsPushEnvironment:(char)environment;
- (id)_registrationForContainer:(id)container;
- (id)initInternal;
- (id)inlock_registrar;
- (id)inlock_registrarForDSID:(id)d shouldCache:(BOOL)cache;
- (id)inlock_registrarForUser:(id)user shouldCache:(BOOL)cache;
- (void)_expungeStaleDSIDs;
- (void)unregisterAllTokens;
@end

@implementation CKDPDSClient

+ (id)sharedClient
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2253ADDC0;
  block[3] = &unk_278545AD0;
  block[4] = self;
  if (qword_280D58580 != -1)
  {
    dispatch_once(&qword_280D58580, block);
  }

  v2 = qword_280D58578;

  return v2;
}

- (id)initInternal
{
  v14.receiver = self;
  v14.super_class = CKDPDSClient;
  v2 = [(CKDPDSClient *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_new();
    registrars = v2->_registrars;
    v2->_registrars = v3;

    objc_msgSend_setName_(v2->_registrars, v5, @"com.apple.cloudkit.pdsclient");
    objc_msgSend_setMinimumObjectCount_(v2->_registrars, v6, 1);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.cloudkit.pdsclient", v7);
    queue = v2->_queue;
    v2->_queue = v8;

    v10 = v2->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2253ADD34;
    block[3] = &unk_278545A00;
    v13 = v2;
    dispatch_async(v10, block);
  }

  return v2;
}

- (id)inlock_registrar
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_queue(self, a2, v2);
  dispatch_assert_queue_V2(v4);

  registrar = self->_registrar;
  if (!registrar)
  {
    v6 = objc_alloc(MEMORY[0x277D37AB8]);
    v13 = 0;
    v8 = objc_msgSend_initWithClientID_error_(v6, v7, @"com.apple.cloudkit.cloudd", &v13);
    v9 = v13;
    v10 = self->_registrar;
    self->_registrar = v8;

    if (!self->_registrar)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v11 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v9;
        _os_log_error_impl(&dword_22506F000, v11, OS_LOG_TYPE_ERROR, "Error creating PDSRegistrar: %@", buf, 0xCu);
      }
    }

    registrar = self->_registrar;
  }

  return registrar;
}

- (id)inlock_registrarForDSID:(id)d shouldCache:(BOOL)cache
{
  cacheCopy = cache;
  v6 = objc_msgSend_userWithDSID_(MEMORY[0x277D37AD0], a2, d);
  v8 = objc_msgSend_inlock_registrarForUser_shouldCache_(self, v7, v6, cacheCopy);

  return v8;
}

- (id)inlock_registrarForUser:(id)user shouldCache:(BOOL)cache
{
  cacheCopy = cache;
  userCopy = user;
  v9 = objc_msgSend_queue(self, v7, v8);
  dispatch_assert_queue_V2(v9);

  v12 = objc_msgSend_registrars(self, v10, v11);
  v14 = objc_msgSend_objectForKey_(v12, v13, userCopy);

  if (!v14)
  {
    v15 = [CKDPDSUserRegistrar alloc];
    v18 = objc_msgSend_inlock_registrar(self, v16, v17);
    v14 = objc_msgSend_initWithRegistrar_user_(v15, v19, v18, userCopy);

    if (cacheCopy)
    {
      v22 = objc_msgSend_registrars(self, v20, v21);
      objc_msgSend_setObject_forKey_(v22, v23, v14, userCopy);
    }
  }

  return v14;
}

- (id)_pdsQualifierFromContainerID:(id)d
{
  dCopy = d;
  if (objc_msgSend_environment(dCopy, v4, v5) == 2)
  {
    v8 = @"_S";
  }

  else
  {
    v8 = @"_P";
  }

  v9 = objc_msgSend_containerIdentifier(dCopy, v6, v7);

  v11 = objc_msgSend_stringByAppendingString_(v9, v10, v8);

  return v11;
}

- (id)_pdsTopicFromBundleIdentifier:(id)identifier withContainerID:(id)d
{
  identifierCopy = identifier;
  if (objc_msgSend_specialContainerType(d, v6, v7) == 4 && (objc_msgSend_hasPrefix_(identifierCopy, v8, @"clouddocs") & 1) == 0)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"%@%@.%@", @"com.apple.icloud-container.", @"clouddocs", identifierCopy);
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"%@%@", @"com.apple.icloud-container.", identifierCopy);
  }
  v9 = ;

  return v9;
}

- (id)_registrationForContainer:(id)container
{
  v28 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  v7 = objc_msgSend_containerID(containerCopy, v5, v6);
  v10 = objc_msgSend_apsEnvironmentString(containerCopy, v8, v9);
  v13 = objc_msgSend_applicationBundleIdentifierForPush(containerCopy, v11, v12);
  v14 = v13;
  if (v10 && v13 && v7)
  {
    v15 = objc_alloc(MEMORY[0x277D37AC0]);
    v17 = objc_msgSend__pdsTopicFromBundleIdentifier_withContainerID_(self, v16, v14, v7);
    v19 = objc_msgSend__pdsQualifierFromContainerID_(self, v18, v7);
    v21 = objc_msgSend__pdsPushEnvironmentFromAPSEnvironmentString_(self, v20, v10);
    v23 = objc_msgSend_initWithTopic_qualifier_pushEnvironment_(v15, v22, v17, v19, v21);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v24 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v26 = 138412290;
      v27 = containerCopy;
      _os_log_error_impl(&dword_22506F000, v24, OS_LOG_TYPE_ERROR, "Can't register an incomplete container %@, skipping", &v26, 0xCu);
    }

    v23 = 0;
  }

  return v23;
}

- (id)_registrationForAppContainerAccountTuple:(id)tuple pushBundleIdentifier:(id)identifier pdsPushEnvironment:(char)environment
{
  environmentCopy = environment;
  v32 = *MEMORY[0x277D85DE8];
  tupleCopy = tuple;
  identifierCopy = identifier;
  v12 = objc_msgSend_appContainerTuple(tupleCopy, v10, v11);
  v15 = objc_msgSend_containerID(v12, v13, v14);
  v16 = v15;
  if (identifierCopy && v15)
  {
    v17 = objc_alloc(MEMORY[0x277D37AC0]);
    v19 = objc_msgSend__pdsTopicFromBundleIdentifier_withContainerID_(self, v18, identifierCopy, v16);
    v21 = objc_msgSend__pdsQualifierFromContainerID_(self, v20, v16);
    v23 = objc_msgSend_initWithTopic_qualifier_pushEnvironment_(v17, v22, v19, v21, environmentCopy);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v24 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v26 = 138412802;
      v27 = tupleCopy;
      v28 = 2114;
      v29 = identifierCopy;
      v30 = 2112;
      v31 = v16;
      _os_log_error_impl(&dword_22506F000, v24, OS_LOG_TYPE_ERROR, "Can't register tuple %@ missing push bundle identifier %{public}@ and/or containerID %@", &v26, 0x20u);
    }

    v23 = 0;
  }

  return v23;
}

- (BOOL)ensureRegistrationForContainer:(id)container outError:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  v9 = objc_msgSend_account(containerCopy, v7, v8);
  v12 = objc_msgSend_accountType(v9, v10, v11);

  if (!v12)
  {
    v17 = objc_msgSend_account(containerCopy, v13, v14);
    v20 = objc_msgSend_accountID(v17, v18, v19);

    v23 = objc_msgSend_deviceContext(containerCopy, v21, v22);
    v26 = objc_msgSend_metadataCache(v23, v24, v25);
    v28 = objc_msgSend_cachedDSIDForAccountID_(v26, v27, v20);

    if (v28)
    {
      v32 = objc_msgSend__registrationForContainer_(self, v29, containerCopy);
      if (v32)
      {
        v43 = 0;
        v44 = &v43;
        v45 = 0x2020000000;
        v46 = 1;
        *&buf = 0;
        *(&buf + 1) = &buf;
        v48 = 0x3032000000;
        v49 = sub_22507419C;
        v50 = sub_22507364C;
        v51 = 0;
        v33 = objc_msgSend_queue(self, v30, v31);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_2253AE9B8;
        block[3] = &unk_27854D0D8;
        block[4] = self;
        v39 = v28;
        v41 = &v43;
        v40 = v32;
        p_buf = &buf;
        dispatch_sync(v33, block);

        if (error)
        {
          v34 = *(*(&buf + 1) + 40);
          if (v34)
          {
            *error = v34;
          }
        }

        v16 = *(v44 + 24);

        _Block_object_dispose(&buf, 8);
        _Block_object_dispose(&v43, 8);
      }

      else if (error)
      {
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v30, *MEMORY[0x277CBC120], 1017, @"Invalid container at PDS registration time");
        *error = v16 = 0;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_22;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v35 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v20;
      _os_log_error_impl(&dword_22506F000, v35, OS_LOG_TYPE_ERROR, "Can't register a push token for an account id (%@) without a dsid", &buf, 0xCu);
      if (error)
      {
        goto LABEL_17;
      }
    }

    else if (error)
    {
LABEL_17:
      objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v36, *MEMORY[0x277CBC120], 1017, @"No DSID at push registration time");
      *error = v16 = 0;
LABEL_22:

      goto LABEL_23;
    }

    v16 = 0;
    goto LABEL_22;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v15 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_INFO, "Not registering push via PDS, it requires a logged-in iCloud account, and this container is using a not-logged-in account", &buf, 2u);
  }

  v16 = 0;
LABEL_23:

  return v16 & 1;
}

- (void)_expungeStaleDSIDs
{
  selfCopy = self;
  v63 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_queue(self, a2, v2);
  dispatch_assert_queue_V2(v4);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22506F000, v5, OS_LOG_TYPE_INFO, "Expunging stale users", buf, 2u);
  }

  v8 = objc_msgSend_inlock_registrar(selfCopy, v6, v7);
  v57 = 0;
  v10 = objc_msgSend_activeUsersWithError_(v8, v9, &v57);
  v11 = v57;

  if (v10)
  {
    v14 = objc_msgSend_sharedAccountStore(CKDAccountStore, v12, v13);
    v17 = objc_msgSend_accountStore(v14, v15, v16);

    v49 = v17;
    v48 = objc_msgSend_aa_appleAccounts(v17, v18, v19);
    v21 = objc_msgSend_CKCompactMap_(v48, v20, &unk_28385E360);
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v50 = v10;
    v22 = v10;
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v53, v62, 16);
    if (v24)
    {
      v27 = v24;
      v28 = *v54;
      v51 = v22;
      do
      {
        v29 = 0;
        do
        {
          if (*v54 != v28)
          {
            objc_enumerationMutation(v22);
          }

          v30 = *(*(&v53 + 1) + 8 * v29);
          if (objc_msgSend_userType(v30, v25, v26) == 1)
          {
            v31 = objc_msgSend_userID(v30, v25, v26);
            v33 = objc_msgSend_containsObject_(v21, v32, v31);

            if ((v33 & 1) == 0)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v34 = v21;
              v35 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v59 = v30;
                _os_log_error_impl(&dword_22506F000, v35, OS_LOG_TYPE_ERROR, "Removing orphaned PDSUser for unknown user %@", buf, 0xCu);
              }

              v37 = selfCopy;
              v38 = objc_msgSend_inlock_registrarForUser_shouldCache_(selfCopy, v36, v30, 0);
              v52 = v11;
              v40 = objc_msgSend_removeAllRegistrations_(v38, v39, &v52);
              v41 = v52;

              if ((v40 & 1) == 0)
              {
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                }

                v44 = *MEMORY[0x277CBC830];
                if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v59 = v30;
                  v60 = 2112;
                  v61 = v41;
                  _os_log_error_impl(&dword_22506F000, v44, OS_LOG_TYPE_ERROR, "Unable to remove all registrations for user %@: %@", buf, 0x16u);
                }
              }

              selfCopy = v37;
              v45 = objc_msgSend_registrars(v37, v42, v43);
              objc_msgSend_removeObjectForKey_(v45, v46, v30);

              v11 = v41;
              v21 = v34;
              v22 = v51;
            }
          }

          ++v29;
        }

        while (v27 != v29);
        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v53, v62, 16);
      }

      while (v27);
    }

    v10 = v50;
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v47 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v59 = v11;
      _os_log_error_impl(&dword_22506F000, v47, OS_LOG_TYPE_ERROR, "Unable to iterate active users: %@", buf, 0xCu);
    }
  }
}

- (BOOL)_unregisterRegistration:(id)registration forDSID:(id)d outError:(id *)error
{
  registrationCopy = registration;
  dCopy = d;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 1;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_22507419C;
  v27 = sub_22507364C;
  v28 = 0;
  v12 = objc_msgSend_queue(self, v10, v11);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2253AF084;
  block[3] = &unk_27854D0D8;
  block[4] = self;
  v13 = dCopy;
  v19 = v13;
  v21 = &v29;
  v14 = registrationCopy;
  v20 = v14;
  v22 = &v23;
  dispatch_sync(v12, block);

  if (error)
  {
    v15 = v24[5];
    if (v15)
    {
      *error = v15;
    }
  }

  v16 = *(v30 + 24);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v16;
}

- (BOOL)unregisterTokenForContainer:(id)container outError:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  v9 = objc_msgSend_account(containerCopy, v7, v8);
  v12 = objc_msgSend_accountID(v9, v10, v11);

  v15 = objc_msgSend_deviceContext(containerCopy, v13, v14);
  v18 = objc_msgSend_metadataCache(v15, v16, v17);
  v20 = objc_msgSend_cachedDSIDForAccountID_(v18, v19, v12);

  if (!v20)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v25 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v28 = 138412290;
      v29 = v12;
      _os_log_error_impl(&dword_22506F000, v25, OS_LOG_TYPE_ERROR, "Can't unregister a push token for an account id (%@) without a dsid", &v28, 0xCu);
      if (error)
      {
        goto LABEL_8;
      }
    }

    else if (error)
    {
LABEL_8:
      objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v26, *MEMORY[0x277CBC120], 1017, @"No DSID at push unregister time");
      *error = v24 = 0;
      goto LABEL_13;
    }

    v24 = 0;
    goto LABEL_13;
  }

  v23 = objc_msgSend__registrationForContainer_(self, v21, containerCopy);
  if (v23)
  {
    v24 = objc_msgSend__unregisterRegistration_forDSID_outError_(self, v22, v23, v20, error);
  }

  else if (error)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v22, *MEMORY[0x277CBC120], 1017, @"Invalid container at PDS unregistration time");
    *error = v24 = 0;
  }

  else
  {
    v24 = 0;
  }

LABEL_13:
  return v24;
}

- (BOOL)unregisterAllTokensForAccountID:(id)d outError:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = objc_msgSend_defaultContext(CKDLogicalDeviceContext, v7, v8);
  v12 = objc_msgSend_metadataCache(v9, v10, v11);

  v15 = objc_msgSend_cachedDSIDForAccountID_(v12, v13, dCopy);
  if (v15)
  {
    v16 = objc_msgSend_userWithDSID_(MEMORY[0x277D37AD0], v14, v15);
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 1;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v35 = 0x3032000000;
    v36 = sub_22507419C;
    v37 = sub_22507364C;
    v38 = 0;
    v19 = objc_msgSend_queue(self, v17, v18);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2253AF5E8;
    block[3] = &unk_27854D0D8;
    block[4] = self;
    v26 = v15;
    v28 = &v30;
    p_buf = &buf;
    v20 = v16;
    v27 = v20;
    dispatch_sync(v19, block);

    if (error)
    {
      v21 = *(*(&buf + 1) + 40);
      if (v21)
      {
        *error = v21;
      }
    }

    v22 = *(v31 + 24);

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(&v30, 8);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v23 = *MEMORY[0x277CBC830];
    v22 = 1;
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = dCopy;
      _os_log_impl(&dword_22506F000, v23, OS_LOG_TYPE_INFO, "Skipping token unregistration for account %@, which has no dsid", &buf, 0xCu);
    }
  }

  return v22 & 1;
}

- (void)unregisterAllTokens
{
  v4 = objc_msgSend_queue(self, a2, v2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2253AF70C;
  block[3] = &unk_278545A00;
  block[4] = self;
  dispatch_async(v4, block);
}

@end