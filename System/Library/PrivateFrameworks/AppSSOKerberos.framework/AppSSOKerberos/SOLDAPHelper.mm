@interface SOLDAPHelper
- (SOLDAPHelper)init;
- (void)connectToLDAPServer:(id)server andPort:(unsigned __int16)port andBundleIdentifier:(id)identifier andRequireTLSForLDAP:(BOOL)p completion:(id)completion;
- (void)connectToLDAPService:(id)service requireTLSForLDAP:(BOOL)p bundleIdentifier:(id)identifier inBackground:(BOOL)background completion:(id)completion;
- (void)dealloc;
- (void)disconnect;
- (void)queryforBaseDN:(id)n andScope:(int)scope andAttributes:(id)attributes withFilter:(id)filter completion:(id)completion;
- (void)setupLDAPconnection:(id)pconnection andPort:(unsigned __int16)port andRequireTLSForLDAP:(BOOL)p andBundleIdentifier:(id)identifier;
- (void)startLDAPWithCompletion:(id)completion;
- (void)useDigestMD5Auth:(id)auth andPassword:(id)password;
- (void)useKerberosAuth:(gss_cred_id_t_desc_struct *)auth forSPN:(id)n;
@end

@implementation SOLDAPHelper

- (SOLDAPHelper)init
{
  v3.receiver = self;
  v3.super_class = SOLDAPHelper;
  result = [(SOLDAPHelper *)&v3 init];
  if (result)
  {
    *&result->_isConnected = 0;
  }

  return result;
}

- (void)dealloc
{
  if ([(SOLDAPHelper *)self isConnected])
  {
    [(SOLDAPHelper *)self disconnect];
  }

  v3.receiver = self;
  v3.super_class = SOLDAPHelper;
  [(SOLDAPHelper *)&v3 dealloc];
}

- (void)setupLDAPconnection:(id)pconnection andPort:(unsigned __int16)port andRequireTLSForLDAP:(BOOL)p andBundleIdentifier:(id)identifier
{
  pCopy = p;
  portCopy = port;
  v24 = *MEMORY[0x277D85DE8];
  pconnectionCopy = pconnection;
  identifierCopy = identifier;
  ldap = [(SOLDAPHelper *)self ldap];

  if (!ldap)
  {
    v14 = SO_LOG_SOLDAPHelper(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v19 = pconnectionCopy;
      v20 = 1024;
      v21 = portCopy;
      v22 = 2114;
      v23 = identifierCopy;
      _os_log_debug_impl(&dword_24006C000, v14, OS_LOG_TYPE_DEBUG, "setting up ldap connection: %@, %d, %{public}@", buf, 0x1Cu);
    }

    v15 = ldap_connection_create_with_hostname();
    v16 = v15;
    if (pCopy)
    {
      v17 = SO_LOG_SOLDAPHelper(v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [SOLDAPHelper setupLDAPconnection:andPort:andRequireTLSForLDAP:andBundleIdentifier:];
      }

      ldap_connection_set_tls();
    }

    if (identifierCopy && ([identifierCopy isEqualToString:&stru_285206D08] & 1) == 0)
    {
      [identifierCopy UTF8String];
      ldap_connection_set_source_application_by_bundle();
    }

    ldap_connection_set_disconnect_handler();
    [(SOLDAPHelper *)self setLdap:v16];
  }
}

uint64_t __85__SOLDAPHelper_setupLDAPconnection_andPort_andRequireTLSForLDAP_andBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = SO_LOG_SOLDAPHelper(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __85__SOLDAPHelper_setupLDAPconnection_andPort_andRequireTLSForLDAP_andBundleIdentifier___block_invoke_cold_1();
  }

  return [*(a1 + 32) setIsConnected:0];
}

- (void)connectToLDAPServer:(id)server andPort:(unsigned __int16)port andBundleIdentifier:(id)identifier andRequireTLSForLDAP:(BOOL)p completion:(id)completion
{
  pCopy = p;
  portCopy = port;
  serverCopy = server;
  identifierCopy = identifier;
  completionCopy = completion;
  ldap = [(SOLDAPHelper *)self ldap];

  if (ldap)
  {
    completionCopy[2](completionCopy, 1, @"Already connected to server");
  }

  else
  {
    [(SOLDAPHelper *)self setupLDAPconnection:serverCopy andPort:portCopy andRequireTLSForLDAP:pCopy andBundleIdentifier:identifierCopy];
    [(SOLDAPHelper *)self connectToLDAPWithCompletion:completionCopy];
  }
}

- (void)connectToLDAPService:(id)service requireTLSForLDAP:(BOOL)p bundleIdentifier:(id)identifier inBackground:(BOOL)background completion:(id)completion
{
  backgroundCopy = background;
  serviceCopy = service;
  identifierCopy = identifier;
  completionCopy = completion;
  [(SOLDAPHelper *)self setCompletionCalled:0];
  ldap = [(SOLDAPHelper *)self ldap];

  if (ldap)
  {
    completionCopy[2](completionCopy, 0, @"There is already an ldap connection");
  }

  else
  {
    v17 = SO_LOG_SOLDAPHelper(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [SOLDAPHelper connectToLDAPService:serviceCopy requireTLSForLDAP:identifierCopy bundleIdentifier:v17 inBackground:? completion:?];
    }

    [serviceCopy UTF8String];
    srv = nw_endpoint_create_srv();
    legacy_tcp_socket = nw_parameters_create_legacy_tcp_socket();
    if (backgroundCopy)
    {
      nw_parameters_set_traffic_class();
    }

    if (identifierCopy && ([identifierCopy isEqualToString:&stru_285206D08] & 1) == 0)
    {
      [identifierCopy UTF8String];
      nw_parameters_set_source_application_by_bundle_id();
    }

    v20 = nw_connection_create(srv, legacy_tcp_socket);
    [(SOLDAPHelper *)self setConnection:v20];

    connection = [(SOLDAPHelper *)self connection];
    v22 = dispatch_get_global_queue(0, 0);
    nw_connection_set_queue(connection, v22);

    connection2 = [(SOLDAPHelper *)self connection];
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __96__SOLDAPHelper_connectToLDAPService_requireTLSForLDAP_bundleIdentifier_inBackground_completion___block_invoke;
    v28 = &unk_278C92E88;
    selfCopy = self;
    v31 = completionCopy;
    pCopy = p;
    v30 = identifierCopy;
    nw_connection_set_state_changed_handler(connection2, &v25);

    v24 = [(SOLDAPHelper *)self connection:v25];
    nw_connection_start(v24);
  }
}

void __96__SOLDAPHelper_connectToLDAPService_requireTLSForLDAP_bundleIdentifier_inBackground_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v5 = a3;
  v6 = SO_LOG_SOLDAPHelper(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __96__SOLDAPHelper_connectToLDAPService_requireTLSForLDAP_bundleIdentifier_inBackground_completion___block_invoke_cold_1(v3, v6);
  }

  if (v3 > 1)
  {
    switch(v3)
    {
      case 3u:
        v16 = [*(a1 + 32) connection];
        v11 = nw_connection_copy_connected_remote_endpoint();

        v17 = nw_endpoint_copy_parent_endpoint();
        type = nw_endpoint_get_type(v17);
        if (v17)
        {
          while (type != (nw_endpoint_type_url|nw_endpoint_type_address))
          {
            v19 = v11;
            v11 = v17;

            v17 = nw_endpoint_copy_parent_endpoint();
            if (!v17)
            {
              break;
            }

            type = nw_endpoint_get_type(v17);
          }
        }

        v20 = [MEMORY[0x277CCACA8] stringWithCString:nw_endpoint_get_hostname(v11) encoding:4];
        v21 = [*(a1 + 32) connection];
        connected_socket = nw_connection_get_connected_socket();

        if (connected_socket == -1 || (*(a1 + 56) != 1 ? (v23 = ldap_connection_create_with_socket()) : (v23 = ldap_connection_create_with_socket_and_hostname()), (v24 = v23) == 0))
        {
          nw_endpoint_get_port(v11);
          v23 = ldap_connection_create_with_hostname();
          v24 = v23;
        }

        if (*(a1 + 56) == 1)
        {
          v25 = SO_LOG_SOLDAPHelper(v23);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            [SOLDAPHelper setupLDAPconnection:andPort:andRequireTLSForLDAP:andBundleIdentifier:];
          }

          ldap_connection_set_tls();
        }

        v26 = *(a1 + 40);
        if (v26 && ([v26 isEqualToString:&stru_285206D08] & 1) == 0)
        {
          [*(a1 + 40) UTF8String];
          ldap_connection_set_source_application_by_bundle();
        }

        ldap_connection_set_disconnect_handler();
        [*(a1 + 32) setLdap:v24];
        [*(a1 + 32) startLDAPWithCompletion:*(a1 + 48)];

        goto LABEL_40;
      case 5u:
        v15 = SO_LOG_SOLDAPHelper([*(a1 + 32) setConnection:0]);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          __96__SOLDAPHelper_connectToLDAPService_requireTLSForLDAP_bundleIdentifier_inBackground_completion___block_invoke_cold_2();
        }

        if (([*(a1 + 32) completionCalled] & 1) == 0)
        {
          [*(a1 + 32) setCompletionCalled:1];
          (*(*(a1 + 48) + 16))();
        }

        break;
      case 4u:
        v12 = SO_LOG_SOLDAPHelper(v7);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          __96__SOLDAPHelper_connectToLDAPService_requireTLSForLDAP_bundleIdentifier_inBackground_completion___block_invoke_cold_4(v5, v12);
        }

        v13 = [*(a1 + 32) connection];

        if (v13)
        {
          v14 = [*(a1 + 32) connection];
          nw_connection_cancel(v14);

          [*(a1 + 32) setConnection:0];
        }

        if (([*(a1 + 32) completionCalled] & 1) == 0)
        {
          [*(a1 + 32) setCompletionCalled:1];
          v10 = *(a1 + 48);
          [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to connect to server: %@", v5];
          goto LABEL_8;
        }

        break;
    }
  }

  else
  {
    v8 = [*(a1 + 32) connection];

    if (v8)
    {
      v9 = [*(a1 + 32) connection];
      nw_connection_cancel(v9);

      [*(a1 + 32) setConnection:0];
    }

    if (([*(a1 + 32) completionCalled] & 1) == 0)
    {
      [*(a1 + 32) setCompletionCalled:1];
      v10 = *(a1 + 48);
      [MEMORY[0x277CCACA8] stringWithFormat:@"Waiting for connection: %@", v5];
      v11 = LABEL_8:;
      (*(v10 + 16))(v10, 0, v11);
LABEL_40:
    }
  }
}

void __96__SOLDAPHelper_connectToLDAPService_requireTLSForLDAP_bundleIdentifier_inBackground_completion___block_invoke_16(uint64_t a1)
{
  v2 = SO_LOG_SOLDAPHelper(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __85__SOLDAPHelper_setupLDAPconnection_andPort_andRequireTLSForLDAP_andBundleIdentifier___block_invoke_cold_1();
  }

  [*(a1 + 32) setIsConnected:0];
  v3 = [*(a1 + 32) connection];

  if (v3)
  {
    v4 = [*(a1 + 32) connection];
    nw_connection_cancel(v4);

    [*(a1 + 32) setConnection:0];
  }
}

- (void)startLDAPWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = SO_LOG_SOLDAPHelper(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOLDAPHelper startLDAPWithCompletion:];
  }

  ldap = [(SOLDAPHelper *)self ldap];
  v7 = completionCopy;
  ldap_connection_start();
}

void __40__SOLDAPHelper_startLDAPWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = v6;
  if (a4 == 10003)
  {
    v8 = SO_LOG_SOLDAPHelper(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __40__SOLDAPHelper_startLDAPWithCompletion___block_invoke_cold_1();
    }

    v9 = *(a1 + 40);
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to connect to server: %d", 10003];
    (*(v9 + 16))(v9, 0, v10);

    goto LABEL_8;
  }

  if (a4)
  {
    v11 = *(a1 + 40);
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to connect to server: %d", a4];
    (*(v11 + 16))(v11, 0, v12);

LABEL_8:
    [*(a1 + 32) setIsConnected:0];
    [*(a1 + 32) setCompletionCalled:1];
    [*(a1 + 32) setLdap:0];
    goto LABEL_9;
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) setIsConnected:1];
  [*(a1 + 32) setCompletionCalled:1];
LABEL_9:
}

- (void)queryforBaseDN:(id)n andScope:(int)scope andAttributes:(id)attributes withFilter:(id)filter completion:(id)completion
{
  completionCopy = completion;
  filterCopy = filter;
  attributesCopy = attributes;
  nCopy = n;
  ldap = [(SOLDAPHelper *)self ldap];
  v20 = completionCopy;
  v16 = v20;
  v17 = ldap_connection_query_create();

  if (!v17)
  {
    v19 = SO_LOG_SOLDAPHelper(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SOLDAPHelper queryforBaseDN:andScope:andAttributes:withFilter:completion:];
    }

    (*(v16 + 2))(v16, 0, @"LDAP Failed to create query", 0);
  }
}

void __76__SOLDAPHelper_queryforBaseDN_andScope_andAttributes_withFilter_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = SO_LOG_SOLDAPHelper(a1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __76__SOLDAPHelper_queryforBaseDN_andScope_andAttributes_withFilter_completion___block_invoke_cold_1();
  }

  v6 = *(a1 + 32);
  v7 = [a3 copy];
  (*(v6 + 16))(v6, 1, &stru_285206D08, v7);
}

void __76__SOLDAPHelper_queryforBaseDN_andScope_andAttributes_withFilter_completion___block_invoke_29(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v5 = ldap_operation_copy_error_string();
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"LDAP Connection Error: %@", v5];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)disconnect
{
  ldap = [(SOLDAPHelper *)self ldap];

  if (ldap)
  {
    v5 = SO_LOG_SOLDAPHelper(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [SOLDAPHelper disconnect];
    }

    ldap2 = [(SOLDAPHelper *)self ldap];
    ldap_connection_disconnect();

    [(SOLDAPHelper *)self setLdap:0];
  }
}

- (void)useDigestMD5Auth:(id)auth andPassword:(id)password
{
  v6 = MEMORY[0x277CBEB38];
  passwordCopy = password;
  authCopy = auth;
  dictionary = [v6 dictionary];
  [dictionary setValue:authCopy forKey:*MEMORY[0x277CEE088]];

  [dictionary setValue:passwordCopy forKey:*MEMORY[0x277CEE080]];
  ldap = [(SOLDAPHelper *)self ldap];
  ldap_connection_add_credential();
}

- (void)useKerberosAuth:(gss_cred_id_t_desc_struct *)auth forSPN:(id)n
{
  error = 0;
  v6 = GSSCreateName(n, MEMORY[0x277CCAEF8], &error);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setValue:auth forKey:*MEMORY[0x277CEE070]];
  [dictionary setValue:v6 forKey:*MEMORY[0x277CEE078]];
  ldap = [(SOLDAPHelper *)self ldap];
  ldap_connection_add_credential();
}

- (void)connectToLDAPService:(os_log_t)log requireTLSForLDAP:bundleIdentifier:inBackground:completion:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&dword_24006C000, log, OS_LOG_TYPE_DEBUG, "setting up ldap connection: %@, %{public}@", &v3, 0x16u);
}

void __96__SOLDAPHelper_connectToLDAPService_requireTLSForLDAP_bundleIdentifier_inBackground_completion___block_invoke_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&dword_24006C000, a2, OS_LOG_TYPE_DEBUG, "tcp state: %u", v2, 8u);
}

void __96__SOLDAPHelper_connectToLDAPService_requireTLSForLDAP_bundleIdentifier_inBackground_completion___block_invoke_cold_4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24006C000, a2, OS_LOG_TYPE_ERROR, "tcp error: %@", &v2, 0xCu);
}

@end