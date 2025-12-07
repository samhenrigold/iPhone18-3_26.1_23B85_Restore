@interface _MFDigestMD5Authenticator
- (id)responseForServerData:(id)data;
- (void)dealloc;
- (void)setAuthenticationState:(int)state;
- (void)setCryptInfo:(void *)info;
@end

@implementation _MFDigestMD5Authenticator

- (void)dealloc
{
  expectedResponse = self->_expectedResponse;
  if (expectedResponse)
  {
    free(expectedResponse);
  }

  v4.receiver = self;
  v4.super_class = _MFDigestMD5Authenticator;
  [(MFSASLAuthenticator *)&v4 dealloc];
}

- (void)setAuthenticationState:(int)state
{
  v6.receiver = self;
  v6.super_class = _MFDigestMD5Authenticator;
  [(MFSASLAuthenticator *)&v6 setAuthenticationState:?];
  if (state != 1)
  {
    v5 = *(self + 5);
    if (v5)
    {
      *(self + 5) = 0;
    }

    *(&self->super._authenticationState + 6) = *(&self->super._authenticationState + 6) & 0xFC | 1;
    *(&self->super._authenticationState + 2) = 0;
  }
}

- (id)responseForServerData:(id)data
{
  v108 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if ([(MFSASLAuthenticator *)self authenticationState]!= 1)
  {
    data = 0;
    goto LABEL_159;
  }

  v100 = 0u;
  v99 = 0u;
  bytes = [dataCopy bytes];
  v97 = &bytes[[dataCopy length]];
  v98 = 1;
  bzero_server_message(&v99);
  while (bytes < v97)
  {
    if (!v98)
    {
      goto LABEL_146;
    }

    v5 = copyToken(&bytes);
    v6 = v5;
    v7 = bytes;
    if (bytes >= v97)
    {
      v8 = 0;
    }

    else
    {
LABEL_5:
      v8 = *v7;
    }

    v9 = v7;
    v7 = bytes;
    do
    {
      while (1)
      {
        do
        {
          v10 = v8;
          v8 = 0;
        }

        while (v10 > 0x20u);
        if (((1 << v10) & 0x100002600) == 0)
        {
          break;
        }

        v8 = 0;
        v7 = v9 + 1;
        v9 = v7;
        if (v7 < v97)
        {
          bytes = v7;
          goto LABEL_5;
        }
      }
    }

    while (v10);
    bytes = v7;
    if (v5)
    {
      if (v9 >= v97 || *v9 != 61)
      {
        v13 = vm_imap_log(v5);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          if (bytes >= v97)
          {
            v14 = 0;
          }

          else
          {
            v14 = *bytes;
          }

          buf.A = 67109120;
          buf.B = v14;
          _os_log_impl(&dword_2720B1000, v13, OS_LOG_TYPE_DEFAULT, "*** Unexpected character '%c', aborting", &buf, 8u);
        }

LABEL_56:

        v98 = 0;
        goto LABEL_57;
      }

      v11 = v9 + 1;
      bytes = v9 + 1;
      if (v9 + 1 >= v97)
      {
        v12 = 0;
      }

      else
      {
LABEL_18:
        v12 = *v11;
      }

      v16 = v11;
      v11 = bytes;
      do
      {
        while (1)
        {
          do
          {
            v17 = v12;
            v12 = 0;
          }

          while (v17 > 0x20u);
          if (((1 << v17) & 0x100002600) == 0)
          {
            break;
          }

          v12 = 0;
          v11 = v16 + 1;
          v16 = v11;
          if (v11 < v97)
          {
            bytes = v11;
            goto LABEL_18;
          }
        }
      }

      while (v17);
      bytes = v11;
      if (![v5 caseInsensitiveCompare:@"realm"])
      {
        v22 = quoted_string(&bytes);
        v23 = v22;
        if (v22)
        {
          if (v99)
          {
            v24 = vm_imap_log(v22);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              buf.A = 138412290;
              *&buf.B = v6;
              v25 = v24;
              v26 = "*** Duplicate value for %@. Ignoring";
              goto LABEL_79;
            }
          }

          else
          {
            v38 = v22;
            v24 = v99;
            *&v99 = v38;
          }
        }

        else
        {
          v24 = vm_imap_log(0);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            buf.A = 138412290;
            *&buf.B = v6;
            v25 = v24;
            v26 = "*** Unable to parse %@. Ignoring";
LABEL_79:
            _os_log_impl(&dword_2720B1000, v25, OS_LOG_TYPE_DEFAULT, v26, &buf, 0xCu);
          }
        }

        goto LABEL_57;
      }

      if (![v6 caseInsensitiveCompare:@"nonce"])
      {
        v27 = quoted_string(&bytes);
        v20 = v27;
        if (v27)
        {
          if (!*(&v99 + 1))
          {
            objc_storeStrong(&v99 + 1, v27);
            goto LABEL_139;
          }

          v28 = vm_imap_log(v27);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            buf.A = 138412290;
            *&buf.B = v6;
            _os_log_impl(&dword_2720B1000, v28, OS_LOG_TYPE_DEFAULT, "*** Duplicate value for %@. Ignoring", &buf, 0xCu);
          }

          goto LABEL_111;
        }

        v39 = vm_imap_log(0);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          buf.A = 138412290;
          *&buf.B = v6;
          _os_log_impl(&dword_2720B1000, v39, OS_LOG_TYPE_DEFAULT, "*** Unable to parse %@. Ignoring", &buf, 0xCu);
        }

LABEL_96:

        goto LABEL_139;
      }

      if (![v6 caseInsensitiveCompare:@"qop"])
      {
        v29 = copyQuotedTokenList(&bytes);
        v20 = v29;
        if (v29)
        {
          v30 = [v29 count];
          while (v30)
          {
            v31 = [v20 objectAtIndex:--v30];
            v32 = 0;
            do
            {
              v33 = [(__CFString *)QOP_NAMES[v32] caseInsensitiveCompare:v31];
              v34 = v32 + 1;
              if (v32 > 1)
              {
                break;
              }

              ++v32;
            }

            while (v33);
            if (!v33)
            {
              v101 |= (1 << v34) & 7;
            }
          }

          goto LABEL_139;
        }

        v39 = vm_imap_log(0);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          buf.A = 138412290;
          *&buf.B = v6;
          _os_log_impl(&dword_2720B1000, v39, OS_LOG_TYPE_DEFAULT, "*** Unable to parse %@. Ignoring", &buf, 0xCu);
        }

        goto LABEL_96;
      }

      if ([v6 caseInsensitiveCompare:@"stale"])
      {
        if ([v6 caseInsensitiveCompare:@"maxbuf"])
        {
          if (![v6 caseInsensitiveCompare:@"charset"])
          {
            v42 = copyToken(&bytes);
            v20 = v42;
            if (v42)
            {
              v43 = [v42 caseInsensitiveCompare:@"utf-8"];
              if (!v43)
              {
                v101 |= 0x10u;
                goto LABEL_139;
              }

              v44 = vm_imap_log(v43);
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                buf.A = 138412546;
                *&buf.B = v20;
                LOWORD(buf.D) = 2112;
                *(&buf.D + 2) = v6;
                _os_log_impl(&dword_2720B1000, v44, OS_LOG_TYPE_DEFAULT, "*** Unexpected value %@ for %@. Ignoring", &buf, 0x16u);
              }
            }

            else
            {
              v44 = vm_imap_log(0);
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                buf.A = 138412290;
                *&buf.B = v6;
                _os_log_impl(&dword_2720B1000, v44, OS_LOG_TYPE_DEFAULT, "*** Unable to parse %@. Ignoring", &buf, 0xCu);
              }
            }

            goto LABEL_134;
          }

          if ([v6 caseInsensitiveCompare:@"algorithm"])
          {
            if ([v6 caseInsensitiveCompare:@"cipher-opts"])
            {
              v18 = [v6 caseInsensitiveCompare:@"rspauth"];
              v19 = copyToken(&bytes);
              v20 = v19;
              if (v18)
              {
                if (!v19)
                {
                  v20 = quoted_string(&bytes);
                  if (!v20)
                  {
                    v21 = vm_imap_log(0);
                    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                    {
                      buf.A = 138412290;
                      *&buf.B = v6;
                      _os_log_impl(&dword_2720B1000, v21, OS_LOG_TYPE_DEFAULT, "*** Unable to parse %@. Aborting", &buf, 0xCu);
                    }

                    v20 = 0;
                    v98 = 0;
                  }
                }

                goto LABEL_139;
              }

              if (v19)
              {
                if (!*(&v100 + 1))
                {
                  v50 = MFCreateDataWithString();
                  v51 = *(&v100 + 1);
                  *(&v100 + 1) = v50;
                  goto LABEL_138;
                }
              }

              else
              {
                v51 = vm_imap_log(0);
                if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                {
                  buf.A = 138412290;
                  *&buf.B = v6;
                  _os_log_impl(&dword_2720B1000, v51, OS_LOG_TYPE_DEFAULT, "*** Unable to parse %@. Ignoring", &buf, 0xCu);
                }

LABEL_138:
              }

LABEL_139:

              goto LABEL_57;
            }

            v48 = copyQuotedTokenList(&bytes);
            v20 = v48;
            if (v48)
            {
              if (v100)
              {
                goto LABEL_139;
              }

              v49 = [v48 copy];
              v44 = v100;
              *&v100 = v49;
            }

            else
            {
              v44 = vm_imap_log(0);
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                buf.A = 138412290;
                *&buf.B = v6;
                _os_log_impl(&dword_2720B1000, v44, OS_LOG_TYPE_DEFAULT, "*** Unable to parse %@. Ignoring", &buf, 0xCu);
              }
            }

LABEL_134:

            goto LABEL_139;
          }

          v20 = copyToken(&bytes);
          if (!v20)
          {
            v52 = quoted_string(&bytes);
            v53 = v52;
            if (!v52 || (v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v52 encoding:4], v53, !v20))
            {
              v20 = vm_imap_log(v52);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                buf.A = 138412290;
                *&buf.B = v6;
                _os_log_impl(&dword_2720B1000, v20, OS_LOG_TYPE_DEFAULT, "*** Unable to parse %@. Ignoring", &buf, 0xCu);
              }

              goto LABEL_139;
            }
          }

          v46 = [v20 caseInsensitiveCompare:@"md5-sess"];
          if (!v46)
          {
            v101 |= 0x20u;
            goto LABEL_139;
          }

          v28 = vm_imap_log(v46);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            buf.A = 138412546;
            *&buf.B = v20;
            LOWORD(buf.D) = 2112;
            *(&buf.D + 2) = v6;
            _os_log_impl(&dword_2720B1000, v28, OS_LOG_TYPE_DEFAULT, "*** Unexpected value %@ for %@. Ignoring", &buf, 0x16u);
          }

LABEL_111:

          v98 = 0;
          goto LABEL_139;
        }

        v40 = copyToken(&bytes);
        v36 = v40;
        if (v40)
        {
          intValue = [v40 intValue];
          if ((intValue - 1) <= 0xFFFD)
          {
            v101 = v101 & 0xFFC0003F | (intValue << 6);
          }
        }

        else
        {
          v47 = vm_imap_log(0);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            buf.A = 138412290;
            *&buf.B = v6;
            _os_log_impl(&dword_2720B1000, v47, OS_LOG_TYPE_DEFAULT, "*** Unable to parse %@. Ignoring", &buf, 0xCu);
          }
        }
      }

      else
      {
        v35 = copyToken(&bytes);
        v36 = v35;
        if (v35)
        {
          if (NSBOOLFromString(v35))
          {
            v37 = 8;
          }

          else
          {
            v37 = 0;
          }

          v101 = v101 & 0xFFFFFFF7 | v37;
        }

        else
        {
          v45 = vm_imap_log(0);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            buf.A = 138412290;
            *&buf.B = v6;
            _os_log_impl(&dword_2720B1000, v45, OS_LOG_TYPE_DEFAULT, "*** Unable to parse %@. Ignoring", &buf, 0xCu);
          }
        }
      }
    }

    else
    {
      if (v9 >= v97 || *v9 != 44)
      {
        v13 = vm_imap_log(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          if (bytes >= v97)
          {
            v15 = 0;
          }

          else
          {
            v15 = *bytes;
          }

          buf.A = 67109120;
          buf.B = v15;
          _os_log_impl(&dword_2720B1000, v13, OS_LOG_TYPE_DEFAULT, "*** Unexpected character '%c', aborting", &buf, 8u);
        }

        goto LABEL_56;
      }

      bytes = v9 + 1;
    }

LABEL_57:
  }

  if (!v98)
  {
LABEL_146:
    [(_MFDigestMD5Authenticator *)self setAuthenticationState:3];
LABEL_157:
    data = 0;
    goto LABEL_158;
  }

  if (!*(self + 5))
  {
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    selfCopy = self;
    bzero_client_response_info(&v102);
    if ((v101 & 0x20) != 0)
    {
      if (MFGetRandomBytes())
      {
        v62 = CFDataCreateWithBytesNoCopy(0, &buf, 16, *MEMORY[0x277CBED00]);
        mf_encodeBase64WithoutLineBreaks = [(__CFData *)v62 mf_encodeBase64WithoutLineBreaks];
        v64 = v102;
        *&v102 = mf_encodeBase64WithoutLineBreaks;

        CFRelease(v62);
        v65 = [MEMORY[0x277CCACA8] stringWithFormat:@"%08x", 1];
        v66 = MFCreateDataWithString();
        v67 = *(&v102 + 1);
        *(&v102 + 1) = v66;

        if ((v101 & 4) != 0)
        {
          [(_MFDigestMD5Authenticator *)selfCopy setSecurityLevel:2];
          [(_MFDigestMD5Authenticator *)selfCopy setMaxBuffer:(v101 >> 6)];
        }

        else
        {
          [(_MFDigestMD5Authenticator *)selfCopy setSecurityLevel:1];
        }

        v68 = [(_MFDigestMD5Authenticator *)selfCopy securityLevel]- 1;
        v69 = v68 > 2 ? 0 : QOP_NAMES[v68];
        v70 = MFCreateDataWithString();
        v71 = v103;
        *&v103 = v70;

        account = [(MFSASLAuthenticator *)selfCopy account];
        v73 = MEMORY[0x277CCACA8];
        saslProfileName = [objc_opt_class() saslProfileName];
        hostname = [account hostname];
        v76 = [v73 stringWithFormat:@"%@/%@", saslProfileName, hostname];

        username = [account username];
        v78 = MFCreateDataWithString();
        v79 = *(&v103 + 1);
        *(&v103 + 1) = v78;

        password = [account password];
        v81 = MFCreateDataWithString();
        v82 = v104;
        *&v104 = v81;

        v83 = MFCreateDataWithString();
        v84 = *(&v104 + 1);
        *(&v104 + 1) = v83;

        v85 = [v99 copy];
        v86 = v105;
        *&v105 = v85;

        v87 = _createResponseData(selfCopy, &v99, &v102, 1);
        v88 = *(&v105 + 1);
        *(&v105 + 1) = v87;

        if (v87)
        {
          securityLevel = [(_MFDigestMD5Authenticator *)selfCopy securityLevel];
          if (securityLevel == 2)
          {
            memset(&buf, 0, sizeof(buf));
            [(_MFDigestMD5Authenticator *)selfCopy setCryptInfo:malloc_type_calloc(1uLL, 0x28uLL, 0x10000400A747E1EuLL)];
            CC_MD5_Init(&buf);
            CC_MD5_Update(&buf, v106, 0x10u);
            CC_MD5_Update(&buf, "Digest session key to server-to-client signing key magic constant", 0x41u);
            CC_MD5_Final(&selfCopy->_expectedResponse[3], &buf);
            CC_MD5_Init(&buf);
            CC_MD5_Update(&buf, v106, 0x10u);
            CC_MD5_Update(&buf, "Digest session key to client-to-server signing key magic constant", 0x41u);
            CC_MD5_Final(&selfCopy->_expectedResponse[1], &buf);
          }

          else if (securityLevel == 3)
          {
            v90 = vm_imap_log(securityLevel);
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf.A) = 0;
              _os_log_impl(&dword_2720B1000, v90, OS_LOG_TYPE_DEFAULT, "*** SASLPrivacySecurityLevel is not supported.", &buf, 2u);
            }
          }

          v91 = _createResponseData(selfCopy, &v99, &v102, 0);
          [(_MFDigestMD5Authenticator *)selfCopy setExpectedResponse:v91];

          v92 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
          data = v92;
          if (*(&v103 + 1))
          {
            _appendQuotedString(v92, "username", *(&v103 + 1));
          }

          if (v99)
          {
            _appendQuotedString(data, "realm", v99);
          }

          if (*(&v99 + 1))
          {
            _appendQuotedString(data, "nonce", *(&v99 + 1));
          }

          _appendQuotedString(data, "cnonce", v102);
          _appendValue(data, "nc", *(&v102 + 1));
          _appendValue(data, "qop", v103);
          _appendQuotedString(data, "digest-uri", *(&v104 + 1));
          _appendValue(data, "response", *(&v105 + 1));
          if (*(&selfCopy->super._authenticationState + 2))
          {
            v93 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", *(&selfCopy->super._authenticationState + 2)];
            v94 = MFCreateDataWithString();

            _appendValue(data, "maxbuf", v94);
          }

          if ((v101 & 0x10) != 0)
          {
            v95 = [@"utf-8" dataUsingEncoding:1];
            _appendValue(data, "charset", v95);
          }

          goto LABEL_176;
        }
      }
    }

    else
    {
      v58 = vm_imap_log(v57);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.A) = 0;
        _os_log_impl(&dword_2720B1000, v58, OS_LOG_TYPE_DEFAULT, "*** Missing algorithm=md5-sess in server response", &buf, 2u);
      }
    }

    [(_MFDigestMD5Authenticator *)selfCopy setAuthenticationState:3];
    data = 0;
LABEL_176:
    __destructor_8_s0_s8_s16_s24_s32_s40_s48_s56(&v102);
    goto LABEL_158;
  }

  if (!*(&v100 + 1))
  {
    v59 = vm_imap_log(0);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.A) = 0;
      v60 = "*** Missing rspauth value in server message";
LABEL_155:
      _os_log_impl(&dword_2720B1000, v59, OS_LOG_TYPE_DEFAULT, v60, &buf, 2u);
    }

LABEL_156:

    [(_MFDigestMD5Authenticator *)self setAuthenticationState:3];
    goto LABEL_157;
  }

  v55 = [*(&v100 + 1) isEqual:?];
  if ((v55 & 1) == 0)
  {
    v59 = vm_imap_log(v55);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.A) = 0;
      v60 = "*** Bogus rspauth value returned from the server";
      goto LABEL_155;
    }

    goto LABEL_156;
  }

  [(_MFDigestMD5Authenticator *)self setAuthenticationState:4];
  data = [MEMORY[0x277CBEA90] data];
LABEL_158:
  __destructor_8_s0_s8_s16_s24(&v99);
LABEL_159:

  return data;
}

- (void)setCryptInfo:(void *)info
{
  expectedResponse = self->_expectedResponse;
  if (expectedResponse)
  {
    free(expectedResponse);
  }

  self->_expectedResponse = info;
}

@end