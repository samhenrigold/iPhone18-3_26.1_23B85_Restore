@interface _MFNTLMAuthenticator
- (id)responseForServerData:(id)data;
- (void)dealloc;
- (void)setAuthenticationState:(int)state;
@end

@implementation _MFNTLMAuthenticator

- (void)dealloc
{
  if (self->_ntlmGeneratorRef)
  {
    NtlmGeneratorRelease();
  }

  v3.receiver = self;
  v3.super_class = _MFNTLMAuthenticator;
  [(MFSASLAuthenticator *)&v3 dealloc];
}

- (void)setAuthenticationState:(int)state
{
  v11.receiver = self;
  v11.super_class = _MFNTLMAuthenticator;
  v5 = [(MFSASLAuthenticator *)&v11 setAuthenticationState:?];
  if (state == 1)
  {
    v6 = vm_imap_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      v7 = "start NTLM authentication";
LABEL_11:
      _os_log_impl(&dword_2720B1000, v6, OS_LOG_TYPE_DEFAULT, v7, v10, 2u);
    }
  }

  else
  {
    ntlmGeneratorRef = self->_ntlmGeneratorRef;
    if (ntlmGeneratorRef)
    {
      ntlmGeneratorRef = NtlmGeneratorRelease();
      self->_ntlmGeneratorRef = 0;
    }

    self->_ntlmError = 0;
    v6 = vm_imap_log(ntlmGeneratorRef);
    v9 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (state == 4)
    {
      if (v9)
      {
        *v10 = 0;
        v7 = "NTLM authentication succeeded";
        goto LABEL_11;
      }
    }

    else if (v9)
    {
      *v10 = 0;
      v7 = "NTLM authentication failed";
      goto LABEL_11;
    }
  }
}

- (id)responseForServerData:(id)data
{
  v23 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = dataCopy;
  if (self->_ntlmError)
  {
    goto LABEL_25;
  }

  if (self->_ntlmGeneratorRef)
  {
    account = [(MFSASLAuthenticator *)self account];
    domain = [account domain];
    username = [account username];
    if (username)
    {
      v9 = username;
    }

    else
    {
      v9 = &stru_288159858;
    }

    password = [account password];
    if (password)
    {
      v11 = password;
    }

    else
    {
      v11 = &stru_288159858;
    }

    v12 = vm_imap_log(password);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (domain)
      {
        v13 = domain;
      }

      else
      {
        v13 = &stru_288159858;
      }

      *buf = 138412546;
      v20 = v9;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_2720B1000, v12, OS_LOG_TYPE_DEFAULT, "NTLM - respond to server challenge; user = %@; domain = %@", buf, 0x16u);
    }

    self->_ntlmError = NtlmCreateClientResponse();
    ntlmError = self->_ntlmError;
    if (!ntlmError)
    {
      goto LABEL_25;
    }

LABEL_22:
    v17 = vm_imap_log(ntlmError);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(_MFNTLMAuthenticator *)&self->_ntlmError responseForServerData:v17];
    }

    goto LABEL_25;
  }

  v15 = [dataCopy length];
  if (v15)
  {
    v16 = vm_imap_log(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2720B1000, v16, OS_LOG_TYPE_DEFAULT, "*** Unexpected server response during NTLM authentication", buf, 2u);
    }
  }

  ntlmError = NtlmGeneratorCreate();
  self->_ntlmError = ntlmError;
  if (ntlmError)
  {
    goto LABEL_22;
  }

  ntlmError = NtlmCreateClientRequest();
  self->_ntlmError = ntlmError;
  if (ntlmError)
  {
    goto LABEL_22;
  }

LABEL_25:

  return 0;
}

- (void)responseForServerData:(int *)a1 .cold.1(int *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&dword_2720B1000, a2, OS_LOG_TYPE_ERROR, "*** Error %ld occurred during NTLM authentication", &v3, 0xCu);
}

@end