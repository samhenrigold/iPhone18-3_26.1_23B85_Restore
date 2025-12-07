@interface PDSRegistrar
- (BOOL)addRegistration:(id)registration toUser:(id)user error:(id *)error;
- (BOOL)batchUpdateRegistrations:(id)registrations forUser:(id)user error:(id *)error;
- (BOOL)deleteRegistration:(id)registration fromUser:(id)user error:(id *)error;
- (BOOL)ensureRegistrationPresent:(id)present forUser:(id)user error:(id *)error;
- (BOOL)removeAllRegistrationsFromUser:(id)user error:(id *)error;
- (BOOL)removeRegistration:(id)registration fromUser:(id)user error:(id *)error;
- (PDSRegistrar)initWithClientID:(id)d error:(id *)error;
- (id)_activeRegistrationsFromEntries:(id)entries;
- (id)_registrationsFromEntries:(id)entries;
- (id)_wrappedErrorForFailedRemote:(id)remote;
- (id)_wrappedErrorForGivenError:(id)error XPCError:(id)cError;
- (id)activeUsersWithError:(id *)error;
- (id)allEntriesWithError:(id *)error;
- (id)allRegistrationsForUser:(id)user error:(id *)error;
- (id)allRegistrationsWithError:(id *)error;
- (id)currentRegistrationsForUser:(id)user error:(id *)error;
- (id)usersWithError:(id *)error;
- (void)activeUsersWithCompletion:(id)completion;
- (void)allEntriesWithCompletion:(id)completion;
- (void)allRegistrationsForUser:(id)user completion:(id)completion;
- (void)allRegistrationsWithCompletion:(id)completion;
- (void)currentRegistrationsForUser:(id)user completion:(id)completion;
- (void)usersWithCompletion:(id)completion;
@end

@implementation PDSRegistrar

- (PDSRegistrar)initWithClientID:(id)d error:(id *)error
{
  v36[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy)
  {
    [PDSRegistrar initWithClientID:error:];
  }

  v28.receiver = self;
  v28.super_class = PDSRegistrar;
  v8 = [(PDSRegistrar *)&v28 init];
  if (v8)
  {
    v9 = [PDSRemoteRegistry remoteVendorForClientID:dCopy];
    remoteVendor = v8->_remoteVendor;
    v8->_remoteVendor = v9;

    objc_storeStrong(&v8->_clientID, d);
    v12 = pds_defaultLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v8;
      _os_log_impl(&dword_25DECA000, v12, OS_LOG_TYPE_DEFAULT, "PDSRegistrar create {self: %@}", buf, 0xCu);
    }

    v13 = v8->_remoteVendor;
    v27 = 0;
    v14 = [(PDSRemoteVendor *)v13 validateConnectionWithError:&v27];
    v15 = v27;
    v16 = v15;
    if (v14)
    {
      v17 = 0;
    }

    else
    {
      if (v15)
      {
        v35 = *MEMORY[0x277CCA7E8];
        v36[0] = v15;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      }

      else
      {
        v18 = 0;
      }

      domain = [v16 domain];
      v20 = [domain isEqualToString:PDSXPCErrorDomain];

      if (v20)
      {
        v21 = -200;
      }

      else
      {
        v21 = -201;
      }

      v22 = [MEMORY[0x277CCA9B8] errorWithDomain:PDSRegistrarErrorDomain code:v21 userInfo:v18];
      v17 = v22;
      if (error)
      {
        v23 = v22;
        *error = v17;
      }

      v8 = 0;
    }

    v24 = pds_defaultLog(v15);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = "NO";
      *buf = 138412802;
      v30 = v8;
      if (v14)
      {
        v25 = "YES";
      }

      v31 = 2080;
      v32 = v25;
      v33 = 2112;
      v34 = v17;
      _os_log_impl(&dword_25DECA000, v24, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed validation {self: %@, connected: %s, error: %@}", buf, 0x20u);
    }
  }

  return v8;
}

- (BOOL)addRegistration:(id)registration toUser:(id)user error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  registrationCopy = registration;
  userCopy = user;
  v10 = userCopy;
  if (!registrationCopy)
  {
    [PDSRegistrar addRegistration:toUser:error:];
  }

  if (!v10)
  {
    [PDSRegistrar addRegistration:toUser:error:];
  }

  v11 = pds_defaultLog(userCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = registrationCopy;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    *&buf[22] = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25DECA000, v11, OS_LOG_TYPE_DEFAULT, "PDSRegistrar addRegistration %@ for user %@ {self: %@}", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  selfCopy = __Block_byref_object_copy__0;
  v37 = __Block_byref_object_dispose__0;
  v38 = 0;
  remoteVendor = self->_remoteVendor;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __45__PDSRegistrar_addRegistration_toUser_error___block_invoke;
  v30[3] = &unk_2799F78D0;
  v30[4] = buf;
  v13 = [(PDSRemoteVendor *)remoteVendor synchronousRemoteObjectProxyWithErrorHandler:v30];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = 0;
  if (v13)
  {
    v14 = [PDSEntry alloc];
    clientID = [(PDSRegistrar *)self clientID];
    v16 = [(PDSEntry *)v14 initWithUser:v10 registration:registrationCopy clientID:clientID];

    v17 = [MEMORY[0x277CBEB98] setWithObject:v16];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __45__PDSRegistrar_addRegistration_toUser_error___block_invoke_2;
    v23[3] = &unk_2799F78D0;
    v23[4] = &v24;
    [v13 storeEntries:v17 deleteEntries:0 withCompletion:v23];

    v18 = v25[5];
  }

  else
  {
    v18 = 0;
  }

  v19 = [(PDSRegistrar *)self _wrappedErrorForGivenError:v18 XPCError:*(*&buf[8] + 40)];
  v20 = v19;
  if (error && v19)
  {
    v19 = v19;
    *error = v20;
  }

  v21 = pds_defaultLog(v19);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *v31 = 138412546;
    selfCopy2 = self;
    v33 = 2112;
    v34 = v20;
    _os_log_impl(&dword_25DECA000, v21, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed addRegistration {self: %@, overallError: %@}", v31, 0x16u);
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(buf, 8);

  return v20 == 0;
}

- (BOOL)ensureRegistrationPresent:(id)present forUser:(id)user error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  presentCopy = present;
  userCopy = user;
  v10 = userCopy;
  if (!presentCopy)
  {
    [PDSRegistrar ensureRegistrationPresent:forUser:error:];
  }

  if (!v10)
  {
    [PDSRegistrar ensureRegistrationPresent:forUser:error:];
  }

  v11 = pds_defaultLog(userCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = presentCopy;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    *&buf[22] = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25DECA000, v11, OS_LOG_TYPE_DEFAULT, "PDSRegistrar ensureRegistrationPresent %@ for user %@ {self: %@}", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  selfCopy = __Block_byref_object_copy__0;
  v43 = __Block_byref_object_dispose__0;
  v44 = 0;
  remoteVendor = self->_remoteVendor;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __56__PDSRegistrar_ensureRegistrationPresent_forUser_error___block_invoke;
  v36[3] = &unk_2799F78D0;
  v36[4] = buf;
  v13 = [(PDSRemoteVendor *)remoteVendor synchronousRemoteObjectProxyWithErrorHandler:v36];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__0;
  v34 = __Block_byref_object_dispose__0;
  v35 = 0;
  if (v13)
  {
    v14 = [PDSEntry alloc];
    clientID = [(PDSRegistrar *)self clientID];
    v16 = [(PDSEntry *)v14 initWithUser:v10 registration:presentCopy clientID:clientID];

    v17 = [MEMORY[0x277CBEB98] setWithObject:v16];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __56__PDSRegistrar_ensureRegistrationPresent_forUser_error___block_invoke_2;
    v29[3] = &unk_2799F78D0;
    v29[4] = &v30;
    [v13 storeEntries:v17 deleteEntries:0 withCompletion:v29];

    v18 = v31[5];
  }

  else
  {
    v18 = 0;
  }

  v19 = [(PDSRegistrar *)self _wrappedErrorForGivenError:v18 XPCError:*(*&buf[8] + 40)];
  v20 = v19;
  if (v19)
  {
    userInfo = [v19 userInfo];
    v22 = [userInfo objectForKey:*MEMORY[0x277CCA7E8]];

    if (v22)
    {
      domain = [v22 domain];
      v24 = [domain isEqualToString:PDSCDCacheErrorDomain];

      if (v24)
      {
        code = [v22 code];
        if (code == -402 || code == -400)
        {

          v20 = 0;
        }
      }
    }

    if (error)
    {
      v26 = v20;
      *error = v20;
    }
  }

  v27 = pds_defaultLog(v19);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *v37 = 138412546;
    selfCopy2 = self;
    v39 = 2112;
    v40 = v20;
    _os_log_impl(&dword_25DECA000, v27, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed ensureRegistrationPresent {self: %@, overallError: %@}", v37, 0x16u);
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(buf, 8);

  return v20 == 0;
}

- (BOOL)batchUpdateRegistrations:(id)registrations forUser:(id)user error:(id *)error
{
  v55 = *MEMORY[0x277D85DE8];
  registrationsCopy = registrations;
  userCopy = user;
  v31 = registrationsCopy;
  if (!registrationsCopy)
  {
    v28 = userCopy;
    [PDSRegistrar batchUpdateRegistrations:forUser:error:];
    userCopy = v28;
  }

  v32 = userCopy;
  if (!userCopy)
  {
    [PDSRegistrar batchUpdateRegistrations:forUser:error:];
  }

  v9 = pds_defaultLog(userCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&dword_25DECA000, v9, OS_LOG_TYPE_DEFAULT, "PDSRegistrar batchUpdateRegistrations {self: %@}", &buf, 0xCu);
  }

  v11 = pds_oversizedLog(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v31;
    _os_log_impl(&dword_25DECA000, v11, OS_LOG_TYPE_DEFAULT, "Batch Registrations: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__0;
  v53 = __Block_byref_object_dispose__0;
  v54 = 0;
  remoteVendor = self->_remoteVendor;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __55__PDSRegistrar_batchUpdateRegistrations_forUser_error___block_invoke;
  v44[3] = &unk_2799F78D0;
  v44[4] = &buf;
  [(PDSRemoteVendor *)remoteVendor synchronousRemoteObjectProxyWithErrorHandler:v44];
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__0;
  v42 = __Block_byref_object_dispose__0;
  v30 = v43 = 0;
  if (v30)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v14 = v31;
    v15 = [v14 countByEnumeratingWithState:&v34 objects:v49 count:16];
    if (v15)
    {
      v16 = *v35;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v34 + 1) + 8 * i);
          v19 = [PDSEntry alloc];
          clientID = [(PDSRegistrar *)self clientID];
          v21 = [(PDSEntry *)v19 initWithUser:v32 registration:v18 clientID:clientID];

          [v13 addObject:v21];
        }

        v15 = [v14 countByEnumeratingWithState:&v34 objects:v49 count:16];
      }

      while (v15);
    }

    clientID2 = [(PDSRegistrar *)self clientID];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __55__PDSRegistrar_batchUpdateRegistrations_forUser_error___block_invoke_2;
    v33[3] = &unk_2799F78D0;
    v33[4] = &v38;
    [v30 batchUpdateEntries:v13 forClientID:clientID2 withCompletion:v33];

    v23 = v39[5];
  }

  else
  {
    v23 = 0;
  }

  v24 = [(PDSRegistrar *)self _wrappedErrorForGivenError:v23 XPCError:*(*(&buf + 1) + 40)];
  v25 = v24;
  if (error && v24)
  {
    v24 = v24;
    *error = v25;
  }

  v26 = pds_defaultLog(v24);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *v45 = 138412546;
    selfCopy = self;
    v47 = 2112;
    v48 = v25;
    _os_log_impl(&dword_25DECA000, v26, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed batchUpdateRegistrations {self: %@, overallError: %@}", v45, 0x16u);
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&buf, 8);

  return v25 == 0;
}

- (BOOL)removeRegistration:(id)registration fromUser:(id)user error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  registrationCopy = registration;
  userCopy = user;
  v10 = userCopy;
  if (!registrationCopy)
  {
    [PDSRegistrar removeRegistration:fromUser:error:];
  }

  if (!v10)
  {
    [PDSRegistrar removeRegistration:fromUser:error:];
  }

  v11 = pds_defaultLog(userCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = registrationCopy;
    *&buf[22] = 2112;
    v36 = v10;
    _os_log_impl(&dword_25DECA000, v11, OS_LOG_TYPE_DEFAULT, "PDSRegistrar removeRegistration {self: %@, registration: %@, user: %@}", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v36 = __Block_byref_object_copy__0;
  v37 = __Block_byref_object_dispose__0;
  v38 = 0;
  remoteVendor = self->_remoteVendor;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __50__PDSRegistrar_removeRegistration_fromUser_error___block_invoke;
  v30[3] = &unk_2799F78D0;
  v30[4] = buf;
  v13 = [(PDSRemoteVendor *)remoteVendor synchronousRemoteObjectProxyWithErrorHandler:v30];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = 0;
  if (v13)
  {
    v14 = [PDSEntry alloc];
    clientID = [(PDSRegistrar *)self clientID];
    v16 = [(PDSEntry *)v14 initWithUser:v10 registration:registrationCopy clientID:clientID state:2];

    v17 = [MEMORY[0x277CBEB98] setWithObject:v16];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __50__PDSRegistrar_removeRegistration_fromUser_error___block_invoke_2;
    v23[3] = &unk_2799F78D0;
    v23[4] = &v24;
    [v13 storeEntries:v17 deleteEntries:0 withCompletion:v23];

    v18 = v25[5];
  }

  else
  {
    v18 = 0;
  }

  v19 = [(PDSRegistrar *)self _wrappedErrorForGivenError:v18 XPCError:*(*&buf[8] + 40)];
  v20 = v19;
  if (error && v19)
  {
    v19 = v19;
    *error = v20;
  }

  v21 = pds_defaultLog(v19);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *v31 = 138412546;
    selfCopy = self;
    v33 = 2112;
    v34 = v20;
    _os_log_impl(&dword_25DECA000, v21, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed removeRegistration {self: %@, overallError: %@}", v31, 0x16u);
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(buf, 8);

  return v20 == 0;
}

- (BOOL)removeAllRegistrationsFromUser:(id)user error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  userCopy = user;
  v7 = userCopy;
  if (!userCopy)
  {
    [PDSRegistrar removeAllRegistrationsFromUser:error:];
  }

  v8 = pds_defaultLog(userCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_25DECA000, v8, OS_LOG_TYPE_DEFAULT, "PDSRegistrar removeAllRegistrations {self: %@, user: %@}", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v30 = __Block_byref_object_copy__0;
  v31 = __Block_byref_object_dispose__0;
  v32 = 0;
  remoteVendor = self->_remoteVendor;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __53__PDSRegistrar_removeAllRegistrationsFromUser_error___block_invoke;
  v24[3] = &unk_2799F78D0;
  v24[4] = buf;
  v10 = [(PDSRemoteVendor *)remoteVendor synchronousRemoteObjectProxyWithErrorHandler:v24];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  if (v10)
  {
    clientID = [(PDSRegistrar *)self clientID];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __53__PDSRegistrar_removeAllRegistrationsFromUser_error___block_invoke_2;
    v17[3] = &unk_2799F78D0;
    v17[4] = &v18;
    [v10 removeAllEntriesForUser:v7 withClientID:clientID withCompletion:v17];

    v12 = v19[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(PDSRegistrar *)self _wrappedErrorForGivenError:v12 XPCError:*(*&buf[8] + 40)];
  v14 = v13;
  if (error && v13)
  {
    v13 = v13;
    *error = v14;
  }

  v15 = pds_defaultLog(v13);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 138412546;
    selfCopy = self;
    v27 = 2112;
    v28 = v14;
    _os_log_impl(&dword_25DECA000, v15, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed removeAllRegistrations {self: %@, overallError: %@}", v25, 0x16u);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(buf, 8);

  return v14 == 0;
}

- (id)currentRegistrationsForUser:(id)user error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  userCopy = user;
  v7 = userCopy;
  if (!userCopy)
  {
    [PDSRegistrar currentRegistrationsForUser:error:];
  }

  v8 = pds_defaultLog(userCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_25DECA000, v8, OS_LOG_TYPE_DEFAULT, "PDSRegistrar currentRegistrationsForUser {self: %@, user: %@}", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v40 = __Block_byref_object_copy__0;
  v41 = __Block_byref_object_dispose__0;
  v42 = 0;
  remoteVendor = self->_remoteVendor;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __50__PDSRegistrar_currentRegistrationsForUser_error___block_invoke;
  v32[3] = &unk_2799F78D0;
  v32[4] = buf;
  v10 = [(PDSRemoteVendor *)remoteVendor synchronousRemoteObjectProxyWithErrorHandler:v32];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  if (v10)
  {
    clientID = [(PDSRegistrar *)self clientID];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __50__PDSRegistrar_currentRegistrationsForUser_error___block_invoke_2;
    v19[3] = &unk_2799F7948;
    v19[4] = self;
    v19[5] = &v20;
    v19[6] = &v26;
    [v10 entriesForUser:v7 clientID:clientID withCompletion:v19];

    v12 = v27[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(PDSRegistrar *)self _wrappedErrorForGivenError:v12 XPCError:*(*&buf[8] + 40)];
  v14 = v13;
  if (error && v13)
  {
    v13 = v13;
    *error = v14;
  }

  v15 = pds_defaultLog(v13);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v21[5];
    *v33 = 138412802;
    selfCopy = self;
    v35 = 2112;
    v36 = v14;
    v37 = 2112;
    v38 = v16;
    _os_log_impl(&dword_25DECA000, v15, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed currentRegistrationsForUser {self: %@, overallError: %@, response: %@}", v33, 0x20u);
  }

  v17 = v21[5];
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(buf, 8);

  return v17;
}

void __50__PDSRegistrar_currentRegistrationsForUser_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) _activeRegistrationsFromEntries:a2];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (void)currentRegistrationsForUser:(id)user completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  userCopy = user;
  completionCopy = completion;
  v8 = completionCopy;
  if (userCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PDSRegistrar currentRegistrationsForUser:completion:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [PDSRegistrar currentRegistrationsForUser:completion:];
LABEL_3:
  v9 = pds_defaultLog(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v20 = 2112;
    v21 = userCopy;
    _os_log_impl(&dword_25DECA000, v9, OS_LOG_TYPE_DEFAULT, "PDSRegistrar async currentRegistrationsForUser {self: %@, user: %@}", buf, 0x16u);
  }

  remoteVendor = self->_remoteVendor;
  v17 = 0;
  v11 = [(PDSRemoteVendor *)remoteVendor remoteObjectProxyWithError:&v17];
  v12 = v17;
  if (v11)
  {
    clientID = [(PDSRegistrar *)self clientID];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __55__PDSRegistrar_currentRegistrationsForUser_completion___block_invoke;
    v15[3] = &unk_2799F7970;
    v15[4] = self;
    v16 = v8;
    [v11 entriesForUser:userCopy clientID:clientID withCompletion:v15];
  }

  else
  {
    v14 = [(PDSRegistrar *)self _wrappedErrorForFailedRemote:v12];
    v8[2](v8, 0, v14);

    v12 = v14;
  }
}

void __55__PDSRegistrar_currentRegistrationsForUser_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pds_defaultLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_25DECA000, v7, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed async currentRegistrationsForUser {self: %@, error: %@, response: %@}", &v12, 0x20u);
  }

  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) _activeRegistrationsFromEntries:v5];
  v11 = [*(a1 + 32) _wrappedErrorForGivenError:v6 XPCError:0];
  (*(v9 + 16))(v9, v10, v11);
}

- (id)activeUsersWithError:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = pds_defaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&dword_25DECA000, v5, OS_LOG_TYPE_DEFAULT, "PDSRegistrar activeUsersWithError {self: %@}", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__0;
  v39 = __Block_byref_object_dispose__0;
  v40 = 0;
  remoteVendor = self->_remoteVendor;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __37__PDSRegistrar_activeUsersWithError___block_invoke;
  v29[3] = &unk_2799F78D0;
  v29[4] = &buf;
  v7 = [(PDSRemoteVendor *)remoteVendor synchronousRemoteObjectProxyWithErrorHandler:v29];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__0;
  v27 = __Block_byref_object_dispose__0;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  if (v7)
  {
    clientID = [(PDSRegistrar *)self clientID];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __37__PDSRegistrar_activeUsersWithError___block_invoke_2;
    v16[3] = &unk_2799F7998;
    v16[4] = &v23;
    v16[5] = &v17;
    [v7 activeUsersWithClientID:clientID withCompletion:v16];

    v9 = v24[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(PDSRegistrar *)self _wrappedErrorForGivenError:v9 XPCError:*(*(&buf + 1) + 40)];
  v11 = v10;
  if (error && v10)
  {
    v10 = v10;
    *error = v11;
  }

  v12 = pds_defaultLog(v10);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v18[5];
    *v30 = 138412802;
    selfCopy = self;
    v32 = 2112;
    v33 = v11;
    v34 = 2112;
    v35 = v13;
    _os_log_impl(&dword_25DECA000, v12, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed activeUsersWithError {self: %@, overallError: %@, response: %@}", v30, 0x20u);
  }

  v14 = v18[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&buf, 8);

  return v14;
}

void __37__PDSRegistrar_activeUsersWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)activeUsersWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = completionCopy;
  if (!completionCopy)
  {
    [PDSRegistrar activeUsersWithCompletion:];
  }

  v6 = pds_defaultLog(completionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_25DECA000, v6, OS_LOG_TYPE_DEFAULT, "PDSRegistrar async activeUsersWithError {self: %@}", buf, 0xCu);
  }

  remoteVendor = self->_remoteVendor;
  v14 = 0;
  v8 = [(PDSRemoteVendor *)remoteVendor remoteObjectProxyWithError:&v14];
  v9 = v14;
  if (v8)
  {
    clientID = [(PDSRegistrar *)self clientID];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __42__PDSRegistrar_activeUsersWithCompletion___block_invoke;
    v12[3] = &unk_2799F7970;
    v12[4] = self;
    v13 = v5;
    [v8 activeUsersWithClientID:clientID withCompletion:v12];
  }

  else
  {
    v11 = [(PDSRegistrar *)self _wrappedErrorForFailedRemote:v9];
    v5[2](v5, 0, v11);

    v9 = v11;
  }
}

void __42__PDSRegistrar_activeUsersWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pds_defaultLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v11 = 138412802;
    v12 = v8;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_25DECA000, v7, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed async activeUsersWithError {self: %@, error: %@, response: %@}", &v11, 0x20u);
  }

  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) _wrappedErrorForGivenError:v6 XPCError:0];
  (*(v9 + 16))(v9, v5, v10);
}

- (id)usersWithError:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = pds_defaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&dword_25DECA000, v5, OS_LOG_TYPE_DEFAULT, "PDSRegistrar usersWithError {self: %@}", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__0;
  v39 = __Block_byref_object_dispose__0;
  v40 = 0;
  remoteVendor = self->_remoteVendor;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __31__PDSRegistrar_usersWithError___block_invoke;
  v29[3] = &unk_2799F78D0;
  v29[4] = &buf;
  v7 = [(PDSRemoteVendor *)remoteVendor synchronousRemoteObjectProxyWithErrorHandler:v29];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__0;
  v27 = __Block_byref_object_dispose__0;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  if (v7)
  {
    clientID = [(PDSRegistrar *)self clientID];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __31__PDSRegistrar_usersWithError___block_invoke_2;
    v16[3] = &unk_2799F7998;
    v16[4] = &v23;
    v16[5] = &v17;
    [v7 usersWithClientID:clientID withCompletion:v16];

    v9 = v24[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(PDSRegistrar *)self _wrappedErrorForGivenError:v9 XPCError:*(*(&buf + 1) + 40)];
  v11 = v10;
  if (error && v10)
  {
    v10 = v10;
    *error = v11;
  }

  v12 = pds_defaultLog(v10);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v18[5];
    *v30 = 138412802;
    selfCopy = self;
    v32 = 2112;
    v33 = v11;
    v34 = 2112;
    v35 = v13;
    _os_log_impl(&dword_25DECA000, v12, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed usersWithError {self: %@, overallError: %@, response: %@}", v30, 0x20u);
  }

  v14 = v18[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&buf, 8);

  return v14;
}

void __31__PDSRegistrar_usersWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)usersWithCompletion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = pds_defaultLog(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_25DECA000, v5, OS_LOG_TYPE_DEFAULT, "PDSRegistrar async usersWithError {self: %@}", buf, 0xCu);
  }

  if (!completionCopy)
  {
    [PDSRegistrar usersWithCompletion:];
  }

  remoteVendor = self->_remoteVendor;
  v13 = 0;
  v7 = [(PDSRemoteVendor *)remoteVendor remoteObjectProxyWithError:&v13];
  v8 = v13;
  if (v7)
  {
    clientID = [(PDSRegistrar *)self clientID];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __36__PDSRegistrar_usersWithCompletion___block_invoke;
    v11[3] = &unk_2799F7970;
    v11[4] = self;
    v12 = completionCopy;
    [v7 usersWithClientID:clientID withCompletion:v11];
  }

  else
  {
    v10 = [(PDSRegistrar *)self _wrappedErrorForFailedRemote:v8];
    (*(completionCopy + 2))(completionCopy, 0, v10);

    v8 = v10;
  }
}

void __36__PDSRegistrar_usersWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pds_defaultLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v11 = 138412802;
    v12 = v8;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_25DECA000, v7, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed async usersWithError {self: %@, error: %@, response: %@}", &v11, 0x20u);
  }

  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) _wrappedErrorForGivenError:v6 XPCError:0];
  (*(v9 + 16))(v9, v5, v10);
}

- (id)allRegistrationsForUser:(id)user error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  userCopy = user;
  v7 = userCopy;
  if (!userCopy)
  {
    [PDSRegistrar allRegistrationsForUser:error:];
  }

  v8 = pds_defaultLog(userCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_25DECA000, v8, OS_LOG_TYPE_DEFAULT, "PDSRegistrar allRegistrationsForUser {self: %@, user: %@}", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v40 = __Block_byref_object_copy__0;
  v41 = __Block_byref_object_dispose__0;
  v42 = 0;
  remoteVendor = self->_remoteVendor;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __46__PDSRegistrar_allRegistrationsForUser_error___block_invoke;
  v32[3] = &unk_2799F78D0;
  v32[4] = buf;
  v10 = [(PDSRemoteVendor *)remoteVendor synchronousRemoteObjectProxyWithErrorHandler:v32];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  if (v10)
  {
    clientID = [(PDSRegistrar *)self clientID];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __46__PDSRegistrar_allRegistrationsForUser_error___block_invoke_2;
    v19[3] = &unk_2799F7948;
    v19[4] = self;
    v19[5] = &v20;
    v19[6] = &v26;
    [v10 entriesForUser:v7 clientID:clientID withCompletion:v19];

    v12 = v27[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(PDSRegistrar *)self _wrappedErrorForGivenError:v12 XPCError:*(*&buf[8] + 40)];
  v14 = v13;
  if (error && v13)
  {
    v13 = v13;
    *error = v14;
  }

  v15 = pds_defaultLog(v13);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v21[5];
    *v33 = 138412802;
    selfCopy = self;
    v35 = 2112;
    v36 = v14;
    v37 = 2112;
    v38 = v16;
    _os_log_impl(&dword_25DECA000, v15, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed allRegistrationsForUser {self: %@, overallError: %@, response: %@}", v33, 0x20u);
  }

  v17 = v21[5];
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(buf, 8);

  return v17;
}

void __46__PDSRegistrar_allRegistrationsForUser_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) _registrationsFromEntries:a2];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (void)allRegistrationsForUser:(id)user completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  userCopy = user;
  completionCopy = completion;
  v8 = completionCopy;
  if (userCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PDSRegistrar allRegistrationsForUser:completion:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [PDSRegistrar allRegistrationsForUser:completion:];
LABEL_3:
  v9 = pds_defaultLog(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v20 = 2112;
    v21 = userCopy;
    _os_log_impl(&dword_25DECA000, v9, OS_LOG_TYPE_DEFAULT, "PDSRegistrar async allRegistrationsForUser {self: %@, user: %@}", buf, 0x16u);
  }

  remoteVendor = self->_remoteVendor;
  v17 = 0;
  v11 = [(PDSRemoteVendor *)remoteVendor remoteObjectProxyWithError:&v17];
  v12 = v17;
  if (v11)
  {
    clientID = [(PDSRegistrar *)self clientID];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __51__PDSRegistrar_allRegistrationsForUser_completion___block_invoke;
    v15[3] = &unk_2799F7970;
    v15[4] = self;
    v16 = v8;
    [v11 entriesForUser:userCopy clientID:clientID withCompletion:v15];
  }

  else
  {
    v14 = [(PDSRegistrar *)self _wrappedErrorForFailedRemote:v12];
    v8[2](v8, 0, v14);

    v12 = v14;
  }
}

void __51__PDSRegistrar_allRegistrationsForUser_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pds_defaultLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_25DECA000, v7, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed async allRegistrationsForUser {self: %@, error: %@, response: %@}", &v12, 0x20u);
  }

  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) _registrationsFromEntries:v5];
  v11 = [*(a1 + 32) _wrappedErrorForGivenError:v6 XPCError:0];
  (*(v9 + 16))(v9, v10, v11);
}

- (id)allRegistrationsWithError:(id *)error
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = pds_defaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_25DECA000, v5, OS_LOG_TYPE_DEFAULT, "PDSRegistrar allRegistrations {self: %@}", &v9, 0xCu);
  }

  v6 = [(PDSRegistrar *)self allEntriesWithError:error];
  v7 = [(PDSRegistrar *)self _registrationsFromEntries:v6];

  return v7;
}

- (void)allRegistrationsWithCompletion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = completionCopy;
  if (!completionCopy)
  {
    [PDSRegistrar allRegistrationsWithCompletion:];
  }

  v6 = pds_defaultLog(completionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_25DECA000, v6, OS_LOG_TYPE_DEFAULT, "PDSRegistrar async allRegistrations {self: %@}", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__PDSRegistrar_allRegistrationsWithCompletion___block_invoke;
  v8[3] = &unk_2799F7970;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [(PDSRegistrar *)self allEntriesWithCompletion:v8];
}

void __47__PDSRegistrar_allRegistrationsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pds_defaultLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v11 = 138412802;
    v12 = v8;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_25DECA000, v7, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed async allRegistrations {self: %@, error: %@, response: %@}", &v11, 0x20u);
  }

  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) _registrationsFromEntries:v5];
  (*(v9 + 16))(v9, v10, v6);
}

- (id)allEntriesWithError:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = pds_defaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&dword_25DECA000, v5, OS_LOG_TYPE_DEFAULT, "PDSRegistrar allEntries {self: %@}", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__0;
  v39 = __Block_byref_object_dispose__0;
  v40 = 0;
  remoteVendor = self->_remoteVendor;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __36__PDSRegistrar_allEntriesWithError___block_invoke;
  v29[3] = &unk_2799F78D0;
  v29[4] = &buf;
  v7 = [(PDSRemoteVendor *)remoteVendor synchronousRemoteObjectProxyWithErrorHandler:v29];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__0;
  v27 = __Block_byref_object_dispose__0;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  if (v7)
  {
    clientID = [(PDSRegistrar *)self clientID];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __36__PDSRegistrar_allEntriesWithError___block_invoke_2;
    v16[3] = &unk_2799F7998;
    v16[4] = &v17;
    v16[5] = &v23;
    [v7 entriesForClientID:clientID withCompletion:v16];

    v9 = v24[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(PDSRegistrar *)self _wrappedErrorForGivenError:v9 XPCError:*(*(&buf + 1) + 40)];
  v11 = v10;
  if (error && v10)
  {
    v10 = v10;
    *error = v11;
  }

  v12 = pds_defaultLog(v10);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v18[5];
    *v30 = 138412802;
    selfCopy = self;
    v32 = 2112;
    v33 = v11;
    v34 = 2112;
    v35 = v13;
    _os_log_impl(&dword_25DECA000, v12, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed allEntries {self: %@, overallError: %@, response: %@}", v30, 0x20u);
  }

  v14 = v18[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&buf, 8);

  return v14;
}

void __36__PDSRegistrar_allEntriesWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)allEntriesWithCompletion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = pds_defaultLog(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_25DECA000, v5, OS_LOG_TYPE_DEFAULT, "PDSRegistrar async allEntries {self: %@}", buf, 0xCu);
  }

  if (!completionCopy)
  {
    [PDSRegistrar allEntriesWithCompletion:];
  }

  remoteVendor = self->_remoteVendor;
  v13 = 0;
  v7 = [(PDSRemoteVendor *)remoteVendor remoteObjectProxyWithError:&v13];
  v8 = v13;
  if (v7)
  {
    clientID = [(PDSRegistrar *)self clientID];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __41__PDSRegistrar_allEntriesWithCompletion___block_invoke;
    v11[3] = &unk_2799F7970;
    v11[4] = self;
    v12 = completionCopy;
    [v7 entriesForClientID:clientID withCompletion:v11];
  }

  else
  {
    v10 = [(PDSRegistrar *)self _wrappedErrorForFailedRemote:v8];
    (*(completionCopy + 2))(completionCopy, 0, v10);

    v8 = v10;
  }
}

void __41__PDSRegistrar_allEntriesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pds_defaultLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v11 = 138412802;
    v12 = v8;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_25DECA000, v7, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed async allEntries {self: %@, error: %@, response: %@}", &v11, 0x20u);
  }

  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) _wrappedErrorForGivenError:v6 XPCError:0];
  (*(v9 + 16))(v9, v5, v10);
}

- (BOOL)deleteRegistration:(id)registration fromUser:(id)user error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  registrationCopy = registration;
  userCopy = user;
  v10 = userCopy;
  if (!registrationCopy)
  {
    [PDSRegistrar deleteRegistration:fromUser:error:];
  }

  if (!v10)
  {
    [PDSRegistrar deleteRegistration:fromUser:error:];
  }

  v11 = pds_defaultLog(userCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = registrationCopy;
    *&buf[22] = 2112;
    v36 = v10;
    _os_log_impl(&dword_25DECA000, v11, OS_LOG_TYPE_DEFAULT, "PDSRegistrar deleteRegistration {self: %@, registration: %@, user: %@}", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v36 = __Block_byref_object_copy__0;
  v37 = __Block_byref_object_dispose__0;
  v38 = 0;
  remoteVendor = self->_remoteVendor;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __50__PDSRegistrar_deleteRegistration_fromUser_error___block_invoke;
  v30[3] = &unk_2799F78D0;
  v30[4] = buf;
  v13 = [(PDSRemoteVendor *)remoteVendor synchronousRemoteObjectProxyWithErrorHandler:v30];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = 0;
  if (v13)
  {
    v14 = [PDSEntry alloc];
    clientID = [(PDSRegistrar *)self clientID];
    v16 = [(PDSEntry *)v14 initWithUser:v10 registration:registrationCopy clientID:clientID state:2];

    v17 = [MEMORY[0x277CBEB98] setWithObject:v16];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __50__PDSRegistrar_deleteRegistration_fromUser_error___block_invoke_2;
    v23[3] = &unk_2799F78D0;
    v23[4] = &v24;
    [v13 storeEntries:0 deleteEntries:v17 withCompletion:v23];

    v18 = v25[5];
  }

  else
  {
    v18 = 0;
  }

  v19 = [(PDSRegistrar *)self _wrappedErrorForGivenError:v18 XPCError:*(*&buf[8] + 40)];
  v20 = v19;
  if (error && v19)
  {
    v19 = v19;
    *error = v20;
  }

  v21 = pds_defaultLog(v19);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *v31 = 138412546;
    selfCopy = self;
    v33 = 2112;
    v34 = v20;
    _os_log_impl(&dword_25DECA000, v21, OS_LOG_TYPE_DEFAULT, "PDSRegistrar completed deleteRegistration {self: %@, overallError: %@}", v31, 0x16u);
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(buf, 8);

  return v20 == 0;
}

- (id)_wrappedErrorForFailedRemote:(id)remote
{
  v9[1] = *MEMORY[0x277D85DE8];
  remoteCopy = remote;
  v4 = remoteCopy;
  if (remoteCopy)
  {
    v8 = *MEMORY[0x277CCA7E8];
    v9[0] = remoteCopy;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:PDSRegistrarErrorDomain code:-201 userInfo:v5];

  return v6;
}

- (id)_wrappedErrorForGivenError:(id)error XPCError:(id)cError
{
  v25[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  cErrorCopy = cError;
  v7 = cErrorCopy;
  if (cErrorCopy)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = PDSRegistrarErrorDomain;
    v24 = *MEMORY[0x277CCA7E8];
    v25[0] = cErrorCopy;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v11 = v8;
    v12 = v9;
    v13 = -201;
LABEL_3:
    v14 = [v11 errorWithDomain:v12 code:v13 userInfo:v10];

    goto LABEL_4;
  }

  if (errorCopy)
  {
    domain = [errorCopy domain];
    v17 = [domain isEqualToString:PDSCDCacheErrorDomain];

    v18 = MEMORY[0x277CCA9B8];
    v19 = PDSRegistrarErrorDomain;
    if (v17)
    {
      v22 = *MEMORY[0x277CCA7E8];
      v23 = errorCopy;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v11 = v18;
      v12 = v19;
      v13 = -202;
    }

    else
    {
      v20 = *MEMORY[0x277CCA7E8];
      v21 = errorCopy;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v11 = v18;
      v12 = v19;
      v13 = -203;
    }

    goto LABEL_3;
  }

  v14 = 0;
LABEL_4:

  return v14;
}

- (id)_activeRegistrationsFromEntries:(id)entries
{
  if (entries)
  {
    v4 = [entries __imArrayByApplyingBlock:&__block_literal_global_1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __48__PDSRegistrar__activeRegistrationsFromEntries___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 state] == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 registration];
  }

  return v3;
}

- (id)_registrationsFromEntries:(id)entries
{
  if (entries)
  {
    v4 = [entries __imArrayByApplyingBlock:&__block_literal_global_31];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)initWithClientID:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"clientID" object:? file:? lineNumber:? description:?];
}

- (void)addRegistration:toUser:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"registration" object:? file:? lineNumber:? description:?];
}

- (void)addRegistration:toUser:error:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"user" object:? file:? lineNumber:? description:?];
}

- (void)ensureRegistrationPresent:forUser:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"registration" object:? file:? lineNumber:? description:?];
}

- (void)ensureRegistrationPresent:forUser:error:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"user" object:? file:? lineNumber:? description:?];
}

- (void)batchUpdateRegistrations:forUser:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"registrations" object:? file:? lineNumber:? description:?];
}

- (void)batchUpdateRegistrations:forUser:error:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"user" object:? file:? lineNumber:? description:?];
}

- (void)removeRegistration:fromUser:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"registration" object:? file:? lineNumber:? description:?];
}

- (void)removeRegistration:fromUser:error:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"user" object:? file:? lineNumber:? description:?];
}

- (void)removeAllRegistrationsFromUser:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"user" object:? file:? lineNumber:? description:?];
}

- (void)currentRegistrationsForUser:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"user" object:? file:? lineNumber:? description:?];
}

- (void)currentRegistrationsForUser:completion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"user" object:? file:? lineNumber:? description:?];
}

- (void)currentRegistrationsForUser:completion:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)activeUsersWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)usersWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)allRegistrationsForUser:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"user" object:? file:? lineNumber:? description:?];
}

- (void)allRegistrationsForUser:completion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"user" object:? file:? lineNumber:? description:?];
}

- (void)allRegistrationsForUser:completion:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];

  v3 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v2 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)allRegistrationsWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)allEntriesWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)deleteRegistration:fromUser:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"registration" object:? file:? lineNumber:? description:?];
}

- (void)deleteRegistration:fromUser:error:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"user" object:? file:? lineNumber:? description:?];
}

@end