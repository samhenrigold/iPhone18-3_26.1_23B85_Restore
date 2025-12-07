@interface _MFDigestMD5Authenticator
- (id)responseForServerData:(id)data;
- (void)dealloc;
- (void)setAuthenticationState:(int)state;
- (void)setCryptInfo:(void *)info;
- (void)setExpectedResponse:(id)response;
@end

@implementation _MFDigestMD5Authenticator

- (void)dealloc
{
  if (self->_expectedResponse)
  {
    NSZoneFree([(_MFDigestMD5Authenticator *)self zone], self->_expectedResponse);
  }

  v3.receiver = self;
  v3.super_class = _MFDigestMD5Authenticator;
  [(MFSASLAuthenticator *)&v3 dealloc];
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
  v84 = *MEMORY[0x277D85DE8];
  if ([(MFSASLAuthenticator *)self authenticationState]== 1)
  {
    bytes = [data bytes];
    v5 = [data length];
    v73 = &bytes[v5];
    v74 = 1;
    v75 = 0u;
    v76 = 0u;
    v77 = 0;
    if (v5 >= 1)
    {
      while (1)
      {
        if (!v74)
        {
          goto LABEL_142;
        }

        v6 = copyToken(&bytes);
        v7 = v6;
        v8 = bytes;
        v9 = v73;
        if (bytes >= v73)
        {
          v10 = 0;
        }

        else
        {
LABEL_5:
          v10 = *v8;
        }

        v11 = v8;
        v8 = bytes;
        do
        {
          while (1)
          {
            do
            {
              v12 = v10;
              v10 = 0;
            }

            while (v12 > 0x20u);
            if (((1 << v12) & 0x100002600) == 0)
            {
              break;
            }

            v10 = 0;
            v8 = v11 + 1;
            v11 = v8;
            if (v8 < v73)
            {
              bytes = v8;
              goto LABEL_5;
            }
          }
        }

        while (v12);
        bytes = v8;
        if (v6)
        {
          if (v11 >= v73 || *v11 != 61)
          {
            v15 = MFLogGeneral();
            if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              goto LABEL_53;
            }

            if (v11 >= v9)
            {
              v16 = 0;
            }

            else
            {
              v16 = *v11;
            }

            goto LABEL_51;
          }

          v13 = v11 + 1;
          bytes = v11 + 1;
          if (v11 + 1 >= v73)
          {
            v14 = 0;
          }

          else
          {
LABEL_18:
            v14 = *v13;
          }

          v17 = v13;
          v13 = bytes;
          do
          {
            while (1)
            {
              do
              {
                v18 = v14;
                v14 = 0;
              }

              while (v18 > 0x20u);
              if (((1 << v18) & 0x100002600) == 0)
              {
                break;
              }

              v14 = 0;
              v13 = v17 + 1;
              v17 = v13;
              if (v13 < v73)
              {
                bytes = v13;
                goto LABEL_18;
              }
            }
          }

          while (v18);
          bytes = v13;
          if ([(__CFString *)v6 caseInsensitiveCompare:@"realm"])
          {
            if ([(__CFString *)v7 caseInsensitiveCompare:@"nonce"])
            {
              if ([(__CFString *)v7 caseInsensitiveCompare:@"qop"])
              {
                if ([(__CFString *)v7 caseInsensitiveCompare:@"stale"])
                {
                  if ([(__CFString *)v7 caseInsensitiveCompare:@"maxbuf"])
                  {
                    if ([(__CFString *)v7 caseInsensitiveCompare:@"charset"])
                    {
                      if ([(__CFString *)v7 caseInsensitiveCompare:@"algorithm"])
                      {
                        if (![(__CFString *)v7 caseInsensitiveCompare:@"cipher-opts"])
                        {
                          v53 = copyQuotedTokenList(&bytes);
                          v21 = v53;
                          if (v53)
                          {
                            if (!v76)
                            {
                              *&v76 = [(__CFData *)v53 copy];
                            }

                            goto LABEL_118;
                          }

                          v56 = MFLogGeneral();
                          if (!os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
                          {
                            goto LABEL_118;
                          }

                          buf.A = 138412290;
                          *&buf.B = v7;
                          v28 = v56;
                          v29 = "*** Unable to parse %@. Ignoring";
LABEL_60:
                          v30 = 12;
                          goto LABEL_61;
                        }

                        v19 = [(__CFString *)v7 caseInsensitiveCompare:@"rspauth"];
                        v20 = copyToken(&bytes);
                        v21 = v20;
                        if (v19)
                        {
                          if (v20)
                          {
                            goto LABEL_118;
                          }

                          v21 = quoted_string(&bytes);
                          if (v21)
                          {
                            goto LABEL_118;
                          }

                          v22 = MFLogGeneral();
                          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                          {
                            buf.A = 138412290;
                            *&buf.B = v7;
                            v23 = v22;
                            v24 = "*** Unable to parse %@. Aborting";
                            v25 = 12;
                            goto LABEL_52;
                          }

                          goto LABEL_53;
                        }

                        if (v20)
                        {
                          if (!*(&v76 + 1))
                          {
                            *(&v76 + 1) = MFCreateDataWithString();
                          }

                          goto LABEL_118;
                        }

                        v43 = MFLogGeneral();
                        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                        {
LABEL_127:
                          buf.A = 138412290;
                          *&buf.B = v7;
                          _os_log_impl(&dword_258BDA000, v43, OS_LOG_TYPE_INFO, "*** Unable to parse %@. Ignoring", &buf, 0xCu);
                        }
                      }

                      else
                      {
                        v51 = copyToken(&bytes);
                        if (v51)
                        {
                          v34 = v51;
LABEL_102:
                          if ([(__CFString *)v34 caseInsensitiveCompare:@"md5-sess"])
                          {
                            v52 = MFLogGeneral();
                            if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
                            {
                              buf.A = 138412546;
                              *&buf.B = v34;
                              LOWORD(buf.D) = 2112;
                              *(&buf.D + 2) = v7;
                              _os_log_impl(&dword_258BDA000, v52, OS_LOG_TYPE_INFO, "*** Unexpected value %@ for %@. Ignoring", &buf, 0x16u);
                            }

                            LODWORD(v74) = 0;
                          }

                          else
                          {
                            LODWORD(v77) = v77 | 0x20;
                          }

LABEL_77:

                          goto LABEL_54;
                        }

                        v54 = quoted_string(&bytes);
                        if (v54)
                        {
                          v55 = v54;
                          v34 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v54 encoding:4];

                          if (v34)
                          {
                            goto LABEL_102;
                          }
                        }

                        v43 = MFLogGeneral();
                        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                        {
                          goto LABEL_127;
                        }
                      }
                    }

                    else
                    {
                      v49 = copyToken(&bytes);
                      if (v49)
                      {
                        v21 = v49;
                        if ([(__CFString *)v49 caseInsensitiveCompare:@"utf-8"])
                        {
                          v50 = MFLogGeneral();
                          if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
                          {
                            buf.A = 138412546;
                            *&buf.B = v21;
                            LOWORD(buf.D) = 2112;
                            *(&buf.D + 2) = v7;
                            v28 = v50;
                            v29 = "*** Unexpected value %@ for %@. Ignoring";
                            v30 = 22;
LABEL_61:
                            _os_log_impl(&dword_258BDA000, v28, OS_LOG_TYPE_INFO, v29, &buf, v30);
                          }

LABEL_118:

                          goto LABEL_54;
                        }

                        v46 = v77 | 0x10;
LABEL_117:
                        LODWORD(v77) = v46;
                        goto LABEL_118;
                      }

                      v43 = MFLogGeneral();
                      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                      {
                        goto LABEL_127;
                      }
                    }
                  }

                  else
                  {
                    v47 = copyToken(&bytes);
                    if (v47)
                    {
                      v21 = v47;
                      intValue = [(__CFString *)v47 intValue];
                      if ((intValue - 1) > 0xFFFD)
                      {
                        goto LABEL_118;
                      }

                      v46 = v77 & 0xFFC0003F | (intValue << 6);
                      goto LABEL_117;
                    }

                    v43 = MFLogGeneral();
                    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                    {
                      goto LABEL_127;
                    }
                  }
                }

                else
                {
                  v44 = copyToken(&bytes);
                  if (v44)
                  {
                    v21 = v44;
                    if (NSBOOLFromString())
                    {
                      v45 = 8;
                    }

                    else
                    {
                      v45 = 0;
                    }

                    v46 = v77 & 0xFFFFFFF7 | v45;
                    goto LABEL_117;
                  }

                  v43 = MFLogGeneral();
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                  {
                    goto LABEL_127;
                  }
                }
              }

              else
              {
                v33 = copyQuotedTokenList(&bytes);
                if (v33)
                {
                  v34 = v33;
                  v35 = [(__CFString *)v33 count];
                  if (v35)
                  {
                    v36 = v35;
                    v37 = v77;
                    do
                    {
                      v38 = [(__CFString *)v34 objectAtIndex:--v36];
                      v39 = 0;
                      do
                      {
                        v40 = v39;
                        v41 = [(__CFString *)QOP_NAMES[v39] caseInsensitiveCompare:v38];
                        v39 = v40 + 1;
                      }

                      while (v40 <= 1 && v41);
                      v42 = (1 << v39) & 7;
                      if (v41)
                      {
                        v42 = 0;
                      }

                      v37 |= v42;
                    }

                    while (v36);
                    LODWORD(v77) = v37;
                  }

                  goto LABEL_77;
                }

                v43 = MFLogGeneral();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_127;
                }
              }
            }

            else
            {
              v31 = quoted_string(&bytes);
              if (v31)
              {
                v21 = v31;
                if (*(&v75 + 1))
                {
                  v32 = MFLogGeneral();
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                  {
                    buf.A = 138412290;
                    *&buf.B = v7;
                    _os_log_impl(&dword_258BDA000, v32, OS_LOG_TYPE_INFO, "*** Duplicate value for %@. Ignoring", &buf, 0xCu);
                  }

                  LODWORD(v74) = 0;
                  goto LABEL_118;
                }

                *(&v75 + 1) = v31;
              }

              else
              {
                v43 = MFLogGeneral();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_127;
                }
              }
            }
          }

          else
          {
            v26 = quoted_string(&bytes);
            if (v26)
            {
              v21 = v26;
              if (v75)
              {
                v27 = MFLogGeneral();
                if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_118;
                }

                buf.A = 138412290;
                *&buf.B = v7;
                v28 = v27;
                v29 = "*** Duplicate value for %@. Ignoring";
                goto LABEL_60;
              }

              *&v75 = v26;
            }

            else
            {
              v43 = MFLogGeneral();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
              {
                goto LABEL_127;
              }
            }
          }
        }

        else
        {
          if (v11 >= v73 || *v11 != 44)
          {
            v15 = MFLogGeneral();
            if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              goto LABEL_53;
            }

            if (v11 >= v9)
            {
              v16 = 0;
            }

            else
            {
              v16 = *v11;
            }

LABEL_51:
            buf.A = 67109120;
            buf.B = v16;
            v23 = v15;
            v24 = "*** Unexpected character '%c', aborting";
            v25 = 8;
LABEL_52:
            _os_log_impl(&dword_258BDA000, v23, OS_LOG_TYPE_INFO, v24, &buf, v25);
LABEL_53:
            LODWORD(v74) = 0;
            goto LABEL_54;
          }

          bytes = v11 + 1;
        }

LABEL_54:

        if (bytes >= v73)
        {
          if (!v74)
          {
            goto LABEL_142;
          }

          break;
        }
      }
    }

    if (*(self + 5))
    {
      if (*(&v76 + 1))
      {
        if ([*(&v76 + 1) isEqual:?])
        {
          [(_MFDigestMD5Authenticator *)self setAuthenticationState:4];
          data = [MEMORY[0x277CBEA90] data];
LABEL_143:

          return data;
        }

        v60 = MFLogGeneral();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf.A) = 0;
          v61 = "*** Bogus rspauth value returned from the server";
          goto LABEL_141;
        }
      }

      else
      {
        v60 = MFLogGeneral();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf.A) = 0;
          v61 = "*** Missing rspauth value in server message";
LABEL_141:
          _os_log_impl(&dword_258BDA000, v60, OS_LOG_TYPE_INFO, v61, &buf, 2u);
        }
      }

LABEL_142:
      [(_MFDigestMD5Authenticator *)self setAuthenticationState:3];
      data = 0;
      goto LABEL_143;
    }

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v78 = 0u;
    v58 = v77;
    if ((v77 & 0x20) != 0)
    {
      if (MFGetRandomBytes())
      {
        v63 = CFDataCreateWithBytesNoCopy(0, &buf, 16, *MEMORY[0x277CBED00]);
        *&v78 = [(__CFData *)v63 mf_encodeBase64WithoutLineBreaks];
        CFRelease(v63);
        [MEMORY[0x277CCACA8] stringWithFormat:@"%08x", 1];
        *(&v78 + 1) = MFCreateDataWithString();
        if ((v58 & 4) != 0)
        {
          [(_MFDigestMD5Authenticator *)self setSecurityLevel:2];
          [(_MFDigestMD5Authenticator *)self setMaxBuffer:(v58 >> 6)];
        }

        else
        {
          [(_MFDigestMD5Authenticator *)self setSecurityLevel:1];
        }

        [(_MFDigestMD5Authenticator *)self securityLevel];
        *&v79 = MFCreateDataWithString();
        account = [(MFSASLAuthenticator *)self account];
        [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", objc_msgSend(objc_opt_class(), "saslProfileName"), objc_msgSend(account, "hostname")];
        [account username];
        *(&v79 + 1) = MFCreateDataWithString();
        [account password];
        *&v80 = MFCreateDataWithString();
        *(&v80 + 1) = MFCreateDataWithString();
        v65 = v75;
        *&v81 = [v75 copy];
        *(&v81 + 1) = _createResponseData(self, &v75, &v78, 1);
        if (*(&v81 + 1))
        {
          securityLevel = [(_MFDigestMD5Authenticator *)self securityLevel];
          if (securityLevel == 2)
          {
            memset(&buf, 0, sizeof(buf));
            [(_MFDigestMD5Authenticator *)self setCryptInfo:NSZoneCalloc([(_MFDigestMD5Authenticator *)self zone], 1uLL, 0x28uLL)];
            CC_MD5_Init(&buf);
            CC_MD5_Update(&buf, &v82, 0x10u);
            CC_MD5_Update(&buf, "Digest session key to server-to-client signing key magic constant", 0x41u);
            CC_MD5_Final(&self->_expectedResponse[3], &buf);
            CC_MD5_Init(&buf);
            CC_MD5_Update(&buf, &v82, 0x10u);
            CC_MD5_Update(&buf, "Digest session key to client-to-server signing key magic constant", 0x41u);
            CC_MD5_Final(&self->_expectedResponse[1], &buf);
          }

          else if (securityLevel == 3)
          {
            v67 = MFLogGeneral();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
            {
              LOWORD(buf.A) = 0;
              _os_log_impl(&dword_258BDA000, v67, OS_LOG_TYPE_INFO, "*** SASLPrivacySecurityLevel is not supported.", &buf, 2u);
            }
          }

          ResponseData = _createResponseData(self, &v75, &v78, 0);
          [(_MFDigestMD5Authenticator *)self setExpectedResponse:ResponseData];

          v69 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
          v70 = v69;
          if (*(&v79 + 1))
          {
            _appendQuotedString(v69, "username", *(&v79 + 1));
          }

          if (v65)
          {
            _appendQuotedString(v70, "realm", v65);
          }

          if (*(&v75 + 1))
          {
            _appendQuotedString(v70, "nonce", *(&v75 + 1));
          }

          _appendQuotedString(v70, "cnonce", v78);
          _appendValue(v70, "nc", *(&v78 + 1));
          _appendValue(v70, "qop", v79);
          _appendQuotedString(v70, "digest-uri", *(&v80 + 1));
          _appendValue(v70, "response", *(&v81 + 1));
          if (*(&self->super._authenticationState + 2))
          {
            EFStringWithInt();
            v71 = MFCreateDataWithString();
            _appendValue(v70, "maxbuf", v71);
          }

          if ((v58 & 0x10) != 0)
          {
            _appendValue(v70, "charset", [@"utf-8" dataUsingEncoding:1]);
          }

          data = v70;
          goto LABEL_155;
        }
      }
    }

    else
    {
      v59 = MFLogGeneral();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf.A) = 0;
        _os_log_impl(&dword_258BDA000, v59, OS_LOG_TYPE_INFO, "*** Missing algorithm=md5-sess in server response", &buf, 2u);
      }
    }

    [(_MFDigestMD5Authenticator *)self setAuthenticationState:3];
    data = 0;
LABEL_155:
    if (v78)
    {
    }

    if (v79)
    {
    }

    if (*(&v78 + 1))
    {
    }

    if (*(&v79 + 1))
    {
    }

    if (v80)
    {
    }

    if (*(&v80 + 1))
    {
    }

    if (v81)
    {
    }

    if (*(&v81 + 1))
    {
    }

    goto LABEL_143;
  }

  return 0;
}

- (void)setCryptInfo:(void *)info
{
  if (self->_expectedResponse)
  {
    NSZoneFree([(_MFDigestMD5Authenticator *)self zone], self->_expectedResponse);
  }

  self->_expectedResponse = info;
}

- (void)setExpectedResponse:(id)response
{
  responseCopy = response;

  *(self + 5) = response;
}

@end