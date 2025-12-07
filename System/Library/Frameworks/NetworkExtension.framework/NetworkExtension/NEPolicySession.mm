@interface NEPolicySession
+ (uint64_t)copyTLVForBytes:(uint64_t)bytes messageLength:(uint64_t)length type:(unint64_t)type includeHeaderOffset:(int)offset n:(int)n hasFlags:(int)flags;
+ (void)addTLVToMessage:(char)message type:(uint64_t)type length:(uint64_t)length value:;
- (BOOL)apply;
- (BOOL)lockSessionToCurrentProcess;
- (BOOL)removeAllDomainFilters;
- (BOOL)removeAllDomainTries;
- (BOOL)removeAllPolicies;
- (BOOL)removeDomainFilterWithID:(unint64_t)d;
- (BOOL)removeDomainTrieWithID:(unint64_t)d;
- (BOOL)removePolicyWithID:(unint64_t)d;
- (NEPolicySession)initWithSessionName:(id)name;
- (NEPolicySession)initWithSocket:(int)socket;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
- (id)dumpDomainTries;
- (id)dumpKernelPolicies;
- (id)initFromPrivilegedProcess;
- (id)policyWithID:(unint64_t)d;
- (int)dupSocket;
- (int64_t)priority;
- (unint64_t)addDomainFilterWithData:(id)data;
- (unint64_t)addDomainTrieWithData:(id)data;
- (unint64_t)addPolicy:(id)policy storeLocally:(BOOL)locally;
- (void)dealloc;
- (void)setPriority:(int64_t)priority;
@end

@implementation NEPolicySession

- (BOOL)removeAllPolicies
{
  v12 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    if (necp_session_action())
    {
      goto LABEL_3;
    }

    Property = 0;
LABEL_9:
    [Property removeAllObjects];
    return 1;
  }

  if (!necp_session_action())
  {
    Property = objc_getProperty(self, v3, 32, 1);
    goto LABEL_9;
  }

LABEL_3:
  v4 = *__error();
  if (strerror_r(v4, __strerrbuf, 0x80uLL))
  {
    __strerrbuf[0] = 0;
  }

  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v8[0] = 67109378;
    v8[1] = v4;
    v9 = 2080;
    v10 = __strerrbuf;
    _os_log_fault_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_FAULT, "Failed to delete all policies: [%d] %s", v8, 0x12u);
  }

  return 0;
}

- (BOOL)removePolicyWithID:(unint64_t)d
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!self)
  {
    if (necp_session_action())
    {
      goto LABEL_3;
    }

    Property = 0;
LABEL_9:
    v10 = MEMORY[0x1E696AD98];
    v11 = Property;
    v12 = [v10 numberWithUnsignedInteger:d];
    [v11 removeObjectForKey:v12];

    return 1;
  }

  if (!necp_session_action())
  {
    Property = objc_getProperty(self, v5, 32, 1);
    goto LABEL_9;
  }

LABEL_3:
  v6 = *__error();
  if (strerror_r(v6, __strerrbuf, 0x80uLL))
  {
    __strerrbuf[0] = 0;
  }

  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109634;
    v15 = dCopy;
    v16 = 1024;
    v17 = v6;
    v18 = 2080;
    v19 = __strerrbuf;
    _os_log_fault_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_FAULT, "Failed to delete policy %u: [%d] %s", buf, 0x18u);
  }

  return 0;
}

- (id)policyWithID:(unint64_t)d
{
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
  }

  v4 = MEMORY[0x1E696AD98];
  selfCopy = self;
  v6 = [v4 numberWithUnsignedInteger:d];
  v7 = [(NEPolicySession *)selfCopy objectForKey:v6];

  return v7;
}

- (BOOL)apply
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = necp_session_action();
  if (v2)
  {
    v3 = *__error();
    if (strerror_r(v3, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v6[0] = 67109378;
      v6[1] = v3;
      v7 = 2080;
      v8 = __strerrbuf;
      _os_log_fault_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_FAULT, "Failed to apply policies: [%d] %s", v6, 0x12u);
    }
  }

  return v2 == 0;
}

- (id)dumpDomainTries
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = 800;
  v3 = malloc_type_malloc(0x320uLL, 0x73504546uLL);
  if (!v3)
  {
    v2 = 400;
    v3 = malloc_type_malloc(0x190uLL, 0x76B5BE94uLL);
    if (!v3)
    {
      v14 = *__error();
      if (strerror_r(v14, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218498;
        *v29 = 400;
        *&v29[8] = 1024;
        *&v29[10] = v14;
        v30 = 2080;
        v31 = __strerrbuf;
        _os_log_fault_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_FAULT, "Failed to allocate memory for trie dump (%zu bytes): [%d] %s", buf, 0x1Cu);
      }

      return 0;
    }
  }

  v4 = v3;
  __memset_chk();
  if (necp_session_action())
  {
    v5 = __error();
    v6 = *v5;
    if (*v5 != 12)
    {
      if (v6 != 2)
      {
        if (strerror_r(*v5, __strerrbuf, 0x80uLL))
        {
          __strerrbuf[0] = 0;
        }

        v7 = ne_log_obj();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          *buf = 67109378;
          *v29 = v6;
          *&v29[4] = 2080;
          *&v29[6] = __strerrbuf;
          _os_log_fault_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_FAULT, "Failed to dump all tries: [%d] %s", buf, 0x12u);
        }

        goto LABEL_20;
      }

      goto LABEL_15;
    }

    if (strerror_r(12, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v10 = ne_log_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_19:

LABEL_20:
      free(v4);
      return 0;
    }

    *buf = 67109378;
    *v29 = 12;
    *&v29[4] = 2080;
    *&v29[6] = __strerrbuf;
    v11 = "Failed to dump all tries: [%d] %s";
    v12 = buf;
LABEL_36:
    _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, v11, v12, 0x12u);
    goto LABEL_19;
  }

  v8 = *v4;
  if (!v8)
  {
LABEL_15:
    free(v4);
    return @"No domain trie entry";
  }

  v9 = v2 - 4;
  if (40 * v8 > v9)
  {
    v10 = ne_log_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *__strerrbuf = 67109376;
    *&__strerrbuf[4] = v8;
    *&__strerrbuf[8] = 2048;
    *&__strerrbuf[10] = v9;
    v11 = "Received trie count <%d> invalid with buffer size <%zu>";
    v12 = __strerrbuf;
    goto LABEL_36;
  }

  *&__strerrbuf[16] = 0x1400000014;
  *__strerrbuf = xmmword_1BAA4FA2C;
  v13 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v13 appendToStringAtColumnWithContent:__strerrbuf column:0 content:"ID" appendAsNewLine:0 addNewLine:0];
  [v13 appendToStringAtColumnWithContent:__strerrbuf column:1 content:"MEMORY" appendAsNewLine:0 addNewLine:0];
  [v13 appendToStringAtColumnWithContent:__strerrbuf column:2 content:"NODES(MEM:COUNT)" appendAsNewLine:0 addNewLine:0];
  [v13 appendToStringAtColumnWithContent:__strerrbuf column:3 content:"MAPS(MEM:COUNT)" appendAsNewLine:0 addNewLine:0];
  [v13 appendToStringAtColumnWithContent:__strerrbuf column:4 content:"BYTES(MEM:COUNT)" appendAsNewLine:0 addNewLine:0];
  [v13 appendToStringAtColumnWithContent:__strerrbuf column:5 content:"FLAGS" appendAsNewLine:0 addNewLine:1];
  v26 = v4;
  v17 = v4 + 5;
  do
  {
    context = objc_autoreleasePoolPush();
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%u", *(v17 - 4)];
    [v13 appendToStringAtColumnWithContent:__strerrbuf column:0 content:objc_msgSend(v18 appendAsNewLine:"UTF8String") addNewLine:{0, 0}];
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%u", *(v17 - 3)];
    [v13 appendToStringAtColumnWithContent:__strerrbuf column:1 content:objc_msgSend(v19 appendAsNewLine:"UTF8String") addNewLine:{0, 0}];
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%u : %u", *(v17 - 2), v17[1]];
    [v13 appendToStringAtColumnWithContent:__strerrbuf column:2 content:objc_msgSend(v20 appendAsNewLine:"UTF8String") addNewLine:{0, 0}];
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%u : %u", *(v17 - 1), v17[2]];
    [v13 appendToStringAtColumnWithContent:__strerrbuf column:3 content:objc_msgSend(v21 appendAsNewLine:"UTF8String") addNewLine:{0, 0}];
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%u : %u", *v17, v17[3]];
    [v13 appendToStringAtColumnWithContent:__strerrbuf column:4 content:objc_msgSend(v22 appendAsNewLine:"UTF8String") addNewLine:{0, 0}];
    v23 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"[ "];
    v24 = v23;
    v25 = v17[5];
    if (v25)
    {
      [v23 appendFormat:@"R|"];
      v25 = v17[5];
    }

    if ((v25 & 2) != 0)
    {
      [v24 appendFormat:@"P|"];
    }

    v17 += 10;
    [v24 appendFormat:@" ]"];
    [v13 appendToStringAtColumnWithContent:__strerrbuf column:5 content:objc_msgSend(v24 appendAsNewLine:"UTF8String") addNewLine:{0, 1}];

    objc_autoreleasePoolPop(context);
    --v8;
  }

  while (v8);
  free(v26);
  return v13;
}

- (id)dumpKernelPolicies
{
  v143 = *MEMORY[0x1E69E9840];
  v2 = 0x80000;
  v3 = malloc_type_malloc(0x80000uLL, 0x680F73ACuLL);
  if (!v3)
  {
    v2 = 0x40000;
    v3 = malloc_type_malloc(0x40000uLL, 0xC79C673FuLL);
    if (!v3)
    {
      v16 = *__error();
      if (strerror_r(v16, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218498;
        *&buf[4] = 0x40000;
        *&buf[12] = 1024;
        *&buf[14] = v16;
        *&buf[18] = 2080;
        v140 = __strerrbuf;
        _os_log_fault_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_FAULT, "Failed to allocate memory for policy dump (%zu bytes): [%d] %s", buf, 0x1Cu);
      }

      return 0;
    }
  }

  v4 = v3;
  __memset_chk();
  if (necp_session_action())
  {
    v5 = __error();
    v6 = *v5;
    if (*v5 != 12)
    {
      if (strerror_r(*v5, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109378;
        *&buf[4] = v6;
        *&buf[8] = 2080;
        *&buf[10] = __strerrbuf;
        _os_log_fault_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_FAULT, "Failed to dump all policies: [%d] %s", buf, 0x12u);
      }

      goto LABEL_23;
    }

    if (strerror_r(12, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      *&buf[4] = 12;
      *&buf[8] = 2080;
      *&buf[10] = __strerrbuf;
      v8 = "Failed to dump all policies: [%d] %s";
      v9 = buf;
      v10 = v7;
      v11 = 18;
LABEL_21:
      _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, v8, v9, v11);
    }

LABEL_22:

LABEL_23:
    free(v4);
    return 0;
  }

  v12 = *v4;
  if (v12 <= 3)
  {
    v7 = ne_log_obj();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *__strerrbuf = 0;
    v8 = "Dump TLV size too small, ignoring";
LABEL_20:
    v9 = __strerrbuf;
    v10 = v7;
    v11 = 2;
    goto LABEL_21;
  }

  if (v2 - 4 < v12)
  {
    v7 = ne_log_obj();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *__strerrbuf = 0;
    v8 = "Dump TLV size too large, ignoring";
    goto LABEL_20;
  }

  v18 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v4 + 1 length:v12];
  free(v4);
  *buf = xmmword_1BAA4FA18;
  *&buf[16] = 20;
  v19 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v19 appendToStringAtColumnWithContent:buf column:0 content:"PROCESS" appendAsNewLine:0 addNewLine:0];
  [v19 appendToStringAtColumnWithContent:buf column:1 content:"SESSION ORDER" appendAsNewLine:0 addNewLine:0];
  [v19 appendToStringAtColumnWithContent:buf column:2 content:"POLICY ORDER" appendAsNewLine:0 addNewLine:0];
  [v19 appendToStringAtColumnWithContent:buf column:3 content:"CONDITIONS" appendAsNewLine:0 addNewLine:0];
  [v19 appendToStringAtColumnWithContent:buf column:4 content:"RESULTS" appendAsNewLine:0 addNewLine:1];
  v20 = 0x1E7F04000uLL;
  v21 = v18;
  v14 = v19;
  objc_opt_self();
  bytes = [v21 bytes];
  v124 = v21;
  v23 = 0;
  v129 = [v21 length];
  v130 = bytes;
  v24 = bytes + v129;
  v25 = bytes;
  v127 = v14;
  v128 = bytes + v129;
  while (1)
  {
    v26 = objc_autoreleasePoolPush();
    objc_opt_self();
    objc_opt_self();
    if (v24 <= v25)
    {
      v117 = ne_log_obj();
      if (!os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
      {
        goto LABEL_218;
      }

      *__strerrbuf = 0;
      v118 = "Reached end of TLV Buffer";
      v119 = v117;
      v120 = 2;
      goto LABEL_217;
    }

    v27 = *(v25 + 1);
    if (&v25[v27 + 5] > v24)
    {
      break;
    }

    v28 = [NEPolicySession copyTLVForBytes:v130 messageLength:v129 type:101 includeHeaderOffset:v23 n:0 hasFlags:?];
    if (!v28)
    {
      goto LABEL_219;
    }

    v29 = v28;
    v135 = v23;
    v132 = v25;
    v133 = v26;
    v134 = [v28 length];
    v30 = v29;
    objc_opt_self();
    v131 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v136 = v30;
    v138 = v31;
    if ([v30 length])
    {
      v32 = 0;
      v33 = 0;
      do
      {
        bytes2 = [v30 bytes];
        objc_opt_self();
        if (!bytes2)
        {
          break;
        }

        v35 = bytes2 + v32;
        v36 = *(bytes2 + v32);
        if (!v36)
        {
          break;
        }

        v137 = *(v35 + 1);
        v37 = +[NEPolicySession copyTLVForBytes:messageLength:type:includeHeaderOffset:n:hasFlags:](*(v20 + 3448), [v30 bytes] + v32, objc_msgSend(v30, "length"), v36, 0, 0);
        v38 = objc_alloc_init(MEMORY[0x1E696AD60]);
        if (v37 && [v37 bytes])
        {
          if (v36 > 99)
          {
            if (v36 == 100 || v36 == 102)
            {
              [v38 appendFormat:@"%s", objc_msgSend(v37, "bytes"), bytes4];
            }

            else if (v36 == 103)
            {
              v40 = *[v37 bytes];
              v41 = "unknown";
              if ((v40 / 1000) <= 0xA)
              {
                v41 = off_1E7F0A608[v40 / 1000];
              }

              [v38 appendFormat:@"%s (%u)", v41, v40];
            }
          }

          else
          {
            switch(v36)
            {
              case 2:
                goto LABEL_45;
              case 3:
                if ([v37 length])
                {
                  v42 = 0;
                  v43 = 0;
                  while (1)
                  {
                    v44 = v20;
                    bytes3 = [v37 bytes];
                    objc_opt_self();
                    if (bytes3)
                    {
                      v43 += *(bytes3 + v42 + 1) + 6;
                      v46 = *(bytes3 + v42 + 5);
                      v47 = *(bytes3 + v42);
                    }

                    else
                    {
                      v46 = 0;
                      v47 = 0;
                    }

                    v48 = +[NEPolicySession copyTLVForBytes:messageLength:type:includeHeaderOffset:n:hasFlags:](*(v44 + 3448), [v37 bytes] + v42, objc_msgSend(v37, "length"), v47, 0, 1);
                    v49 = objc_alloc_init(MEMORY[0x1E696AD60]);
                    v50 = [v138 objectForKey:&unk_1F38BA5F8];
                    if (!v50)
                    {
                      v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
                    }

                    switch(v47)
                    {
                      case 0:
                        v51 = v49;
                        v52 = @"default ";
                        goto LABEL_128;
                      case 1:
                        memset(__strerrbuf, 0, 37);
                        uuid_unparse([v48 bytes], __strerrbuf);
                        v71 = "!";
                        if ((v46 & 1) == 0)
                        {
                          v71 = "";
                        }

                        bytes4 = __strerrbuf;
                        [v49 appendFormat:@"%seffective-application:%s ", v71];
                        goto LABEL_129;
                      case 2:
                        memset(__strerrbuf, 0, 37);
                        uuid_unparse([v48 bytes], __strerrbuf);
                        v70 = "!";
                        if ((v46 & 1) == 0)
                        {
                          v70 = "";
                        }

                        bytes4 = __strerrbuf;
                        [v49 appendFormat:@"%sreal-application:%s ", v70];
                        goto LABEL_129;
                      case 3:
                        if (v46)
                        {
                          v63 = "!";
                        }

                        else
                        {
                          v63 = "";
                        }

                        if ((v46 & 2) != 0)
                        {
                          v64 = "fqdn";
                        }

                        else
                        {
                          v64 = "domain";
                        }

                        bytes4 = v64;
                        [v48 bytes];
                        [v49 appendFormat:@"%s%s:%s ", v63];
                        goto LABEL_129;
                      case 4:
                        if (v46)
                        {
                          v55 = "!";
                        }

                        else
                        {
                          v55 = "";
                        }

                        bytes4 = [v48 bytes];
                        [v49 appendFormat:@"%saccount-identifier:%s ", v55];
                        goto LABEL_129;
                      case 5:
                        if (v48 && [v48 length])
                        {
                          if (v46)
                          {
                            v61 = "!";
                          }

                          else
                          {
                            v61 = "";
                          }

                          bytes4 = [v48 bytes];
                          [v49 appendFormat:@"%scustom-entitlement:%s ", v61];
                        }

                        else
                        {
                          v76 = "!";
                          if ((v46 & 1) == 0)
                          {
                            v76 = "";
                          }

                          v122 = v76;
                          v51 = v49;
                          v52 = @"%sentitlement ";
LABEL_128:
                          [v51 appendFormat:v52, v122];
                        }

                        goto LABEL_129;
                      case 6:
                        if (v46)
                        {
                          v72 = "!";
                        }

                        else
                        {
                          v72 = "";
                        }

                        [v49 appendFormat:@"%seffective-pid:%u ", v72, *objc_msgSend(v48, "bytes")];
                        v20 = v44;
                        v31 = v138;
                        if ([v48 length] >= 8)
                        {
                          bytes4 = *([v48 bytes] + 4);
                          [v49 appendFormat:@"%sversion:%d ", v72];
                        }

                        goto LABEL_130;
                      case 7:
                        if (v46)
                        {
                          v73 = "!";
                        }

                        else
                        {
                          v73 = "";
                        }

                        bytes4 = *[v48 bytes];
                        [v49 appendFormat:@"%suid:%u ", v73];
                        goto LABEL_129;
                      case 8:
                        v75 = "!";
                        if ((v46 & 1) == 0)
                        {
                          v75 = "";
                        }

                        [v49 appendFormat:@"%sall-interfaces ", v75];
                        goto LABEL_129;
                      case 9:
                        if (v46)
                        {
                          v74 = "!";
                        }

                        else
                        {
                          v74 = "";
                        }

                        bytes4 = [v48 bytes];
                        [v49 appendFormat:@"%sscoped-interface:%s ", v74];
                        goto LABEL_129;
                      case 10:
                        bytes5 = [v48 bytes];
                        v54 = "!";
                        if ((v46 & 1) == 0)
                        {
                          v54 = "";
                        }

                        bytes4 = *bytes5;
                        [v49 appendFormat:@"%straffic-class-range:%u-%u ", v54];
                        goto LABEL_129;
                      case 11:
                        if (v46)
                        {
                          v62 = "!";
                        }

                        else
                        {
                          v62 = "";
                        }

                        bytes4 = *[v48 bytes];
                        [v49 appendFormat:@"%sip-protocol:%u ", v62];
                        goto LABEL_129;
                      case 16:
                        v142 = 0u;
                        memset(__strerrbuf, 0, sizeof(__strerrbuf));
                        bytes6 = [v48 bytes];
                        v57 = bytes6[3];
                        v59 = *bytes6;
                        v58 = bytes6[1];
                        *&__strerrbuf[32] = bytes6[2];
                        v142 = v57;
                        *__strerrbuf = v59;
                        *&__strerrbuf[16] = v58;
                        v60 = "!";
                        if ((v46 & 1) == 0)
                        {
                          v60 = "";
                        }

                        bytes4 = __strerrbuf;
                        [v49 appendFormat:@"%sagent-domain:%s/agent-type:%s", v60];
                        goto LABEL_129;
                      default:
                        if ((v47 & 0xFE) == 0xE)
                        {
                          bytes7 = [v48 bytes];
                          v126 = NECreateAddressString(bytes7);
                          v77 = NECreateAddressString((bytes7 + 28));
                          v78 = "!";
                          if ((v46 & 1) == 0)
                          {
                            v78 = "";
                          }

                          if (v126)
                          {
                            v79 = v126;
                          }

                          else
                          {
                            v79 = @"<nil>";
                          }

                          v80 = v77;
                          if (v47 == 14)
                          {
                            v81 = @"%slocal-address-range:%@-%@";
                          }

                          else
                          {
                            v81 = @"%sremote-address-range:%@-%@";
                          }

                          bytes4 = v79;
                          [v49 appendFormat:v81, v78];

                          goto LABEL_129;
                        }

                        if ((v47 & 0xFE) == 0xC)
                        {
                          v65 = NECreateAddressStringWithPort([v48 bytes] + 1);
                          v66 = "!";
                          if ((v46 & 1) == 0)
                          {
                            v66 = "";
                          }

                          v67 = @"<nil>";
                          if (v65)
                          {
                            v67 = v65;
                          }

                          v68 = v65;
                          if (v47 == 12)
                          {
                            v69 = @"%slocal-address:%@/%u";
                          }

                          else
                          {
                            v69 = @"%sremote-address:%@/%u";
                          }

                          bytes4 = v67;
                          [v49 appendFormat:v69, v66];

LABEL_129:
                          v20 = v44;
                          v31 = v138;
                          goto LABEL_130;
                        }

                        v82 = v47 - 17;
                        v20 = v44;
                        v31 = v138;
                        switch(v82)
                        {
                          case 0:
                            v83 = "!";
                            if ((v46 & 1) == 0)
                            {
                              v83 = "";
                            }

                            [v49 appendFormat:@"%smodern-network-api", v83];
                            break;
                          case 1:
                            if (v46)
                            {
                              v90 = "!";
                            }

                            else
                            {
                              v90 = "";
                            }

                            bytes4 = *[v48 bytes];
                            [v49 appendFormat:@"%slocal-networks:%u", v90];
                            break;
                          case 7:
                            if (v46)
                            {
                              v87 = "!";
                            }

                            else
                            {
                              v87 = "";
                            }

                            bytes4 = *[v48 bytes];
                            [v49 appendFormat:@"%sclient-flags:%u", v87];
                            break;
                          case 8:
                            v96 = "!";
                            if ((v46 & 1) == 0)
                            {
                              v96 = "";
                            }

                            [v49 appendFormat:@"%slocal-address-empty", v96];
                            break;
                          case 9:
                            v97 = "!";
                            if ((v46 & 1) == 0)
                            {
                              v97 = "";
                            }

                            [v49 appendFormat:@"%sremote-address-empty", v97];
                            break;
                          case 10:
                            v88 = "!";
                            if ((v46 & 1) == 0)
                            {
                              v88 = "";
                            }

                            [v49 appendFormat:@"%splatform-binary", v88];
                            break;
                          case 11:
                            bytes8 = [v48 bytes];
                            v92 = "!";
                            if ((v46 & 1) == 0)
                            {
                              v92 = "";
                            }

                            bytes4 = *bytes8;
                            [v49 appendFormat:@"%splatform:%u/sdk-version:%u/min-sdk-version:%u", v92];
                            break;
                          case 12:
                            if (v48 && [v48 length])
                            {
                              if (v46)
                              {
                                v93 = "!";
                              }

                              else
                              {
                                v93 = "";
                              }

                              bytes4 = [v48 bytes];
                              [v49 appendFormat:@"%ssigning-identifier:%s ", v93];
                            }

                            else
                            {
                              v100 = "!";
                              if ((v46 & 1) == 0)
                              {
                                v100 = "";
                              }

                              [v49 appendFormat:@"%ssigning-identifier ", v100];
                            }

                            break;
                          case 13:
                            if (v46)
                            {
                              v99 = "!";
                            }

                            else
                            {
                              v99 = "";
                            }

                            bytes4 = *[v48 bytes];
                            [v49 appendFormat:@"%spacket-filter-tags:%u", v99];
                            break;
                          case 14:
                            v98 = "!";
                            if ((v46 & 1) == 0)
                            {
                              v98 = "";
                            }

                            [v49 appendFormat:@"%sis-loopback", v98];
                            break;
                          case 15:
                            v85 = "!";
                            if ((v46 & 1) == 0)
                            {
                              v85 = "";
                            }

                            [v49 appendFormat:@"%sdelegate-is-platform-binary", v85];
                            break;
                          case 20:
                            if (v46)
                            {
                              v89 = "!";
                            }

                            else
                            {
                              v89 = "";
                            }

                            bytes4 = (bswap32(*[v48 bytes]) >> 16);
                            [v49 appendFormat:@"%sscheme-port:%u", v89];
                            break;
                          case 21:
                            if (v46)
                            {
                              v86 = "!";
                            }

                            else
                            {
                              v86 = "";
                            }

                            bytes4 = *[v48 bytes];
                            [v49 appendFormat:@"%sdomain-filter:%u ", v86];
                            break;
                          case 22:
                            v84 = "!";
                            if ((v46 & 1) == 0)
                            {
                              v84 = "";
                            }

                            [v49 appendFormat:@"%ssigned-result", v84];
                            break;
                          case 26:
                            if ([v48 length] >= 0xC)
                            {
                              bytes9 = [v48 bytes];
                              v95 = "!";
                              if ((v46 & 1) == 0)
                              {
                                v95 = "";
                              }

                              bytes4 = *bytes9;
                              [v49 appendFormat:@"%sscoped-interface-flags: %X, eflags %X, xflags %X", v95];
                            }

                            break;
                          default:
                            break;
                        }

LABEL_130:
                        [v50 addObject:v49];
                        [v31 setObject:v50 forKey:&unk_1F38BA5F8];

                        v42 = v43;
                        if ([v37 length] <= v43)
                        {
                          goto LABEL_48;
                        }

                        break;
                    }
                  }
                }

                goto LABEL_48;
              case 5:
LABEL_45:
                [v38 appendFormat:@"%u", *objc_msgSend(v37, "bytes"), bytes4];
                break;
            }
          }
        }

        else
        {
          [v38 appendFormat:@"N/A", v122, bytes4];
        }

        v39 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v36];
        [v31 setObject:v38 forKey:v39];

LABEL_48:
        v32 = (v33 + v137 + 5);

        v30 = v136;
        v33 = v32;
      }

      while ([v136 length] > v32);
    }

    if ([v31 count])
    {
      *&__strerrbuf[16] = 20;
      *__strerrbuf = xmmword_1BAA4FA18;
      v101 = [v31 objectForKey:&unk_1F38BA610];
      v102 = v131;
      [v131 appendToStringAtColumnWithContent:__strerrbuf column:0 content:objc_msgSend(v101 appendAsNewLine:"UTF8String") addNewLine:{0, 0}];

      v103 = [v31 objectForKey:&unk_1F38BA628];
      [v131 appendToStringAtColumnWithContent:__strerrbuf column:1 content:objc_msgSend(v103 appendAsNewLine:"UTF8String") addNewLine:{0, 0}];

      v104 = [v31 objectForKey:&unk_1F38BA640];
      [v131 appendToStringAtColumnWithContent:__strerrbuf column:2 content:objc_msgSend(v104 appendAsNewLine:"UTF8String") addNewLine:{0, 0}];

      v105 = [v31 objectForKey:&unk_1F38BA5F8];
      v14 = v127;
      v106 = v132;
      if (v105 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v107 = [v105 count]) != 0)
      {
        v108 = v107;
        v109 = 0;
        v110 = v135;
        v24 = v128;
        do
        {
          v111 = [v105 objectAtIndex:v109];
          [v131 appendToStringAtColumnWithContent:__strerrbuf column:3 content:objc_msgSend(v111 appendAsNewLine:"UTF8String") addNewLine:{v109 != 0, --v108 != 0}];

          ++v109;
        }

        while (v108);
      }

      else
      {
        [v131 appendToStringAtColumnWithContent:__strerrbuf column:3 content:"--" appendAsNewLine:0 addNewLine:0];
        v110 = v135;
        v24 = v128;
      }

      v112 = v138;
      v113 = [v138 objectForKey:&unk_1F38BA658];
      [v131 appendToStringAtColumnWithContent:__strerrbuf column:4 content:objc_msgSend(v113 appendAsNewLine:"UTF8String") addNewLine:{0, 1}];

      v114 = v131;
      v30 = v136;
      v115 = v133;
    }

    else
    {
      v114 = @"NO DATA";
      v14 = v127;
      v24 = v128;
      v106 = v132;
      v115 = v133;
      v112 = v31;
      v110 = v135;
      v102 = v131;
    }

    v25 = &v106[v134 + 5];
    v23 = v110 + 1;

    if (v114)
    {
      v116 = v114;
    }

    else
    {
      v116 = @"nil";
    }

    [v14 appendString:v116];

    objc_autoreleasePoolPop(v115);
  }

  v121 = *v25;
  v117 = ne_log_obj();
  if (!os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
  {
    goto LABEL_218;
  }

  *__strerrbuf = 134218496;
  *&__strerrbuf[4] = &v25[-v130];
  *&__strerrbuf[12] = 1024;
  *&__strerrbuf[14] = v121;
  *&__strerrbuf[18] = 1024;
  *&__strerrbuf[20] = v27;
  v118 = "TLV buffer truncated: cursor - start: %zu, type: %d, length: %u";
  v119 = v117;
  v120 = 24;
LABEL_217:
  _os_log_impl(&dword_1BA83C000, v119, OS_LOG_TYPE_INFO, v118, __strerrbuf, v120);
LABEL_218:

LABEL_219:
  if (&v25[-v130] != v129)
  {
    [v14 appendString:@"\nMISSING POLICY INFORMATION!\n"];
  }

  objc_autoreleasePoolPop(v26);

  return v14;
}

+ (uint64_t)copyTLVForBytes:(uint64_t)bytes messageLength:(uint64_t)length type:(unint64_t)type includeHeaderOffset:(int)offset n:(int)n hasFlags:(int)flags
{
  objc_opt_self();
  if (!length || !type)
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = length + v12;
    if (*(length + v12) == offset)
    {
      break;
    }

LABEL_7:
    v12 += *(v13 + 1) + 5;
    if (v12 >= type)
    {
      return 0;
    }
  }

  if (v11 != n)
  {
    ++v11;
    goto LABEL_7;
  }

  if (flags)
  {
    v15 = 6;
  }

  else
  {
    v15 = 5;
  }

  v16 = objc_alloc(MEMORY[0x1E695DEF0]);
  v17 = *(v13 + 1);

  return [v16 initWithBytes:v13 + v15 length:v17];
}

- (unint64_t)addPolicy:(id)policy storeLocally:(BOOL)locally
{
  locallyCopy = locally;
  v169 = *MEMORY[0x1E69E9840];
  policyCopy = policy;
  v7 = policyCopy;
  if (!policyCopy)
  {
    goto LABEL_309;
  }

  v8 = policyCopy[2];
  if (!v8)
  {
    goto LABEL_309;
  }

  v9 = *(v8 + 4);
  if (v9 <= 7)
  {
    if ((v9 - 1) < 4)
    {
      goto LABEL_30;
    }

    if ((v9 - 5) < 2)
    {
      if (!*(v8 + 6))
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *v158 = 0;
          _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, "Invalid policy result, missing interface name", v158, 2u);
        }

        if (!*(v8 + 6))
        {
          goto LABEL_309;
        }
      }

      goto LABEL_30;
    }

    if (v9 == 7)
    {
      goto LABEL_30;
    }

    goto LABEL_128;
  }

  if (v9 <= 11)
  {
    switch(v9)
    {
      case 8:
        goto LABEL_24;
      case 9:
        if ([*(v8 + 10) count])
        {
          v167 = 0u;
          v168 = 0u;
          v165 = 0u;
          v166 = 0u;
          v10 = *(v8 + 10);
          v56 = [v10 countByEnumeratingWithState:&v165 objects:buf count:16];
          if (!v56)
          {
            goto LABEL_155;
          }

          v57 = v56;
          v58 = *v166;
          while (1)
          {
            v59 = locallyCopy;
            for (i = 0; i != v57; ++i)
            {
              if (*v166 != v58)
              {
                objc_enumerationMutation(v10);
              }

              v61 = *(*(&v165 + 1) + 8 * i);
              if (!v61)
              {
                goto LABEL_308;
              }

              v62 = *(v61 + 24);
              if ((v62 - 8) <= 0xFFFFFFFFFFFFFFF8)
              {
                v135 = ne_log_obj();
                if (!os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_307;
                }

                v129 = *(v61 + 24);
                *v158 = 67109120;
                *&v158[4] = v129;
                v130 = "Invalid route rule action: %d";
                goto LABEL_296;
              }

              v63 = *(v61 + 48);
              if (v63 >= 9)
              {
                v135 = ne_log_obj();
                if (!os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_307;
                }

                v131 = *(v61 + 48);
                *v158 = 67109120;
                *&v158[4] = v131;
                v130 = "Invalid route rule type: %d";
LABEL_296:
                v132 = v135;
                v133 = 8;
LABEL_306:
                _os_log_error_impl(&dword_1BA83C000, v132, OS_LOG_TYPE_ERROR, v130, v158, v133);
                goto LABEL_307;
              }

              if (*(v61 + 32))
              {
                if (v63)
                {
                  goto LABEL_297;
                }
              }

              else
              {
                if (v63)
                {
                  v64 = *(v61 + 40) == 0;
                }

                else
                {
                  v64 = 1;
                }

                if (!v64)
                {
LABEL_297:
                  v135 = ne_log_obj();
                  if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
                  {
                    *v158 = 0;
                    v130 = "Invalid match conditions";
                    goto LABEL_305;
                  }

LABEL_307:

LABEL_308:
LABEL_309:
                  v49 = 0;
                  goto LABEL_310;
                }
              }

              v65 = *(v61 + 16);
              if ((v62 - 5) > 1)
              {
                if (v65)
                {
                  v135 = ne_log_obj();
                  if (!os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_307;
                  }

                  *v158 = 0;
                  v130 = "Invalid route rule, unexpectedly includes network agent UUID";
                  goto LABEL_305;
                }

                if (v62 == 7 && !*(v61 + 8))
                {
                  v135 = ne_log_obj();
                  if (!os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_307;
                  }

                  *v158 = 0;
                  v130 = "Invalid route rule, missing flow divert control unit";
                  goto LABEL_305;
                }
              }

              else if (!v65)
              {
                v135 = ne_log_obj();
                if (!os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_307;
                }

                *v158 = 0;
                v130 = "Invalid route rule, missing network agent UUID";
LABEL_305:
                v132 = v135;
                v133 = 2;
                goto LABEL_306;
              }
            }

            v57 = [v10 countByEnumeratingWithState:&v165 objects:buf count:16];
            locallyCopy = v59;
            if (!v57)
            {
LABEL_155:

              goto LABEL_30;
            }
          }
        }

        v10 = ne_log_obj();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_308;
        }

        *v158 = 0;
        v11 = "Invalid policy result, missing route rules";
        goto LABEL_163;
      case 11:
        goto LABEL_24;
    }

LABEL_128:
    v10 = ne_log_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_308;
    }

    v53 = *(v8 + 4);
    *v158 = 67109120;
    *&v158[4] = v53;
    v11 = "Invalid policy result %d";
    v54 = v10;
    v55 = 8;
    goto LABEL_164;
  }

  if ((v9 - 12) < 3)
  {
    goto LABEL_30;
  }

  if (v9 == 15)
  {
LABEL_24:
    if (!*(v8 + 7))
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v158 = 0;
        _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, "Invalid policy result, missing agent UUID", v158, 2u);
      }

      if (!*(v8 + 7))
      {
        goto LABEL_309;
      }
    }

    goto LABEL_30;
  }

  if (v9 != 16)
  {
    goto LABEL_128;
  }

  if ((![*(v8 + 8) length] || objc_msgSend(*(v8 + 8), "length") >= 0x21) && (!objc_msgSend(*(v8 + 9), "length") || objc_msgSend(*(v8 + 9), "length") >= 0x21))
  {
    v10 = ne_log_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_308;
    }

    *v158 = 0;
    v11 = "Invalid policy result, missing agent domain and type";
LABEL_163:
    v54 = v10;
    v55 = 2;
LABEL_164:
    _os_log_error_impl(&dword_1BA83C000, v54, OS_LOG_TYPE_ERROR, v11, v158, v55);
    goto LABEL_308;
  }

LABEL_30:
  v141 = locallyCopy;
  selfCopy = self;
  v143 = v7;
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v14 = v7[3];
  v15 = [v14 countByEnumeratingWithState:&v146 objects:v154 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v147;
    do
    {
      v18 = 0;
      do
      {
        if (*v147 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v146 + 1) + 8 * v18);
        if (!v19)
        {
LABEL_159:

          v49 = 0;
          goto LABEL_310;
        }

        switch(*(v19 + 72))
        {
          case 1:
          case 2:
            if (!*(v19 + 80))
            {
              v22 = ne_log_obj();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_ERROR, "Invalid policy condition, missing application UUID", buf, 2u);
              }

              if (!*(v19 + 80))
              {
                goto LABEL_159;
              }
            }

            break;
          case 3:
          case 4:
          case 7:
          case 0xALL:
          case 0xFLL:
          case 0x11:
          case 0x12:
          case 0x13:
          case 0x18:
          case 0x19:
          case 0x1ALL:
          case 0x1BLL:
          case 0x1CLL:
          case 0x1FLL:
          case 0x20:
          case 0x27:
          case 0x28:
            break;
          case 5:
            if (!*(v19 + 88))
            {
              v34 = ne_log_obj();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_ERROR, "Invalid policy condition, missing account identifier", buf, 2u);
              }

              if (!*(v19 + 88))
              {
                goto LABEL_159;
              }
            }

            break;
          case 6:
            if (!*(v19 + 96))
            {
              v28 = ne_log_obj();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_ERROR, "Invalid policy condition, missing domain", buf, 2u);
              }

              if (!*(v19 + 96))
              {
                goto LABEL_159;
              }
            }

            break;
          case 8:
            if (!*(v19 + 112))
            {
              v27 = ne_log_obj();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_ERROR, "Invalid policy condition, missing interface name", buf, 2u);
              }

              if (!*(v19 + 112))
              {
                goto LABEL_159;
              }
            }

            break;
          case 9:
            v31 = *(v19 + 48);
            v32 = *(v19 + 52);
            if (v31 > v32)
            {
              v33 = ne_log_obj();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1BA83C000, v33, OS_LOG_TYPE_ERROR, "Invalid policy condition, invalid traffic class range", buf, 2u);
              }

              v31 = *(v19 + 48);
              v32 = *(v19 + 52);
            }

            if (v31 > v32)
            {
              goto LABEL_159;
            }

            break;
          case 0xBLL:
          case 0xDLL:
          case 0x14:
          case 0x16:
            if (!*(v19 + 120))
            {
              v20 = ne_log_obj();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_ERROR, "Invalid policy condition, missing start address", buf, 2u);
              }

              if (!*(v19 + 120))
              {
                goto LABEL_159;
              }
            }

            break;
          case 0xCLL:
          case 0xELL:
          case 0x15:
          case 0x17:
            if (!*(v19 + 120) || !*(v19 + 128))
            {
              v21 = ne_log_obj();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_ERROR, "Invalid policy condition, missing address", buf, 2u);
              }

              if (!*(v19 + 120) || !*(v19 + 128))
              {
                goto LABEL_159;
              }
            }

            break;
          case 0x10:
            if (!*(v19 + 144) || !*(v19 + 152))
            {
              v30 = ne_log_obj();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1BA83C000, v30, OS_LOG_TYPE_ERROR, "Invalid policy condition, missing agent type", buf, 2u);
              }

              if (!*(v19 + 144) || !*(v19 + 152))
              {
                goto LABEL_159;
              }
            }

            break;
          case 0x1DLL:
            if (!*(v19 + 160))
            {
              v23 = ne_log_obj();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_ERROR, "Invalid policy condition, missing signing identifier", buf, 2u);
              }

              if (!*(v19 + 160))
              {
                goto LABEL_159;
              }
            }

            break;
          case 0x1ELL:
            if (!*(v19 + 14))
            {
              v35 = ne_log_obj();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1BA83C000, v35, OS_LOG_TYPE_ERROR, "Invalid policy condition, missing packet filter tags", buf, 2u);
              }

              if (!*(v19 + 14))
              {
                goto LABEL_159;
              }
            }

            break;
          case 0x25:
            if (!*(v19 + 16))
            {
              v25 = ne_log_obj();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_ERROR, "Invalid policy condition, missing port", buf, 2u);
              }

              if (!*(v19 + 16))
              {
                goto LABEL_159;
              }
            }

            break;
          case 0x26:
            if (!*(v19 + 32))
            {
              v24 = ne_log_obj();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_ERROR, "Invalid policy condition, missing domain filter", buf, 2u);
              }

              if (!*(v19 + 32))
              {
                goto LABEL_159;
              }
            }

            break;
          case 0x2ALL:
            if (!*(v19 + 104))
            {
              v26 = ne_log_obj();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_ERROR, "Invalid policy condition, missing URL", buf, 2u);
              }

              if (!*(v19 + 104))
              {
                goto LABEL_159;
              }
            }

            break;
          case 0x2BLL:
            if (!*(v19 + 36) && !*(v19 + 40) && !*(v19 + 44))
            {
              v29 = ne_log_obj();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1BA83C000, v29, OS_LOG_TYPE_ERROR, "Invalid policy condition, missing flags", buf, 2u);
              }

              if (!*(v19 + 36) && !*(v19 + 40) && !*(v19 + 44))
              {
                goto LABEL_159;
              }
            }

            break;
          default:
            v66 = ne_log_obj();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              v137 = *(v19 + 72);
              *buf = 67109120;
              *&buf[4] = v137;
              _os_log_error_impl(&dword_1BA83C000, v66, OS_LOG_TYPE_ERROR, "Invalid policy condition %d", buf, 8u);
            }

            goto LABEL_159;
        }

        ++v18;
      }

      while (v16 != v18);
      v36 = [v14 countByEnumeratingWithState:&v146 objects:v154 count:16];
      v16 = v36;
    }

    while (v36);
  }

  v37 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v38 = v37;
  if (!v37)
  {
    v48 = ne_log_obj();
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
LABEL_124:

      v49 = 0;
      goto LABEL_283;
    }

    *buf = 0;
    v128 = "Failed to create add message";
LABEL_291:
    _os_log_error_impl(&dword_1BA83C000, v48, OS_LOG_TYPE_ERROR, v128, buf, 2u);
    goto LABEL_124;
  }

  v39 = v37;
  v40 = v7;
  [NEPolicySession addTLVToMessage:v39 type:2 length:4 value:(v7 + 1)];
  v41 = v7[2];
  v42 = v39;
  v43 = v42;
  if (!v41)
  {
    v140 = v38;

LABEL_312:
    v48 = ne_log_obj();
    v7 = v143;
    v38 = v140;
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_124;
    }

    *buf = 0;
    v128 = "Failed to add TLVs to message";
    goto LABEL_291;
  }

  v44 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v45 = v44;
  v46 = *(v41 + 4) - 1;
  if (v46 > 0xF)
  {
    v47 = 0;
  }

  else
  {
    v47 = byte_1BAA4E640[v46];
  }

  v150 = v47;
  [v44 appendBytes:&v150 length:1];
  switch(*(v41 + 4))
  {
    case 1:
      v50 = (v41 + 12);
      goto LABEL_216;
    case 2:
      v50 = (v41 + 8);
      goto LABEL_216;
    case 3:
      v91 = *(v41 + 4);
      v90 = (v41 + 16);
      if (!v91)
      {
        goto LABEL_219;
      }

      v51 = v45;
      v50 = v90;
      goto LABEL_217;
    case 4:
    case 7:
      v50 = (v41 + 20);
      goto LABEL_216;
    case 5:
      v88 = [*(v41 + 6) dataUsingEncoding:1];
      [v45 appendData:v88];
      LOBYTE(v165) = 0;
      v89 = &v165;
      goto LABEL_289;
    case 6:
      v125 = *(v41 + 5) - 1;
      if (v125 > 0xF)
      {
        v126 = 0;
      }

      else
      {
        v126 = byte_1BAA4E640[v125];
      }

      LODWORD(v165) = v126;
      [v45 appendBytes:&v165 length:4];
      v88 = [*(v41 + 6) dataUsingEncoding:1];
      [v45 appendData:v88];
      v153 = 0;
      v89 = &v153;
LABEL_289:
      [v45 appendBytes:v89 length:1];

      goto LABEL_219;
    case 8:
    case 0xBLL:
    case 0xFLL:
      v165 = 0uLL;
      [*(v41 + 7) getUUIDBytes:&v165];
      v50 = &v165;
      v51 = v45;
      v52 = 16;
      goto LABEL_218;
    case 9:
      v144 = v45;
      v139 = v38;
      v148 = 0u;
      v149 = 0u;
      v146 = 0u;
      v147 = 0u;
      v67 = *(v41 + 10);
      v68 = [v67 countByEnumeratingWithState:&v146 objects:buf count:16];
      if (!v68)
      {
        goto LABEL_204;
      }

      v69 = v68;
      v70 = *v147;
      break;
    case 0xELL:
      LODWORD(v165) = -1;
      v50 = &v165;
LABEL_216:
      v51 = v45;
LABEL_217:
      v52 = 4;
      goto LABEL_218;
    case 0x10:
      v167 = 0u;
      v168 = 0u;
      v165 = 0u;
      v166 = 0u;
      if ([*(v41 + 8) length])
      {
        [*(v41 + 8) UTF8String];
        __strlcpy_chk();
      }

      if ([*(v41 + 9) length])
      {
        [*(v41 + 9) UTF8String];
        __strlcpy_chk();
      }

      v50 = &v165;
      v51 = v45;
      v52 = 64;
LABEL_218:
      [v51 appendBytes:v50 length:v52];
      goto LABEL_219;
    default:
      goto LABEL_219;
  }

  do
  {
    for (j = 0; j != v69; ++j)
    {
      if (*v147 != v70)
      {
        objc_enumerationMutation(v67);
      }

      v72 = *(*(&v146 + 1) + 8 * j);
      if (v72)
      {
        v73 = MEMORY[0x1E695DF88];
        v74 = v43;
        v75 = objc_alloc_init(v73);
        v76 = v75;
        v77 = *(v72 + 24);
        if (v77 > 3)
        {
          if (v77 < 8)
          {
            goto LABEL_182;
          }

LABEL_177:
          LOBYTE(v77) = 0;
          goto LABEL_182;
        }

        if (v77 == 1)
        {
          LOBYTE(v77) = 2;
          goto LABEL_182;
        }

        if (v77 != 2)
        {
          if (v77 == 3)
          {
            goto LABEL_182;
          }

          goto LABEL_177;
        }

        if (*(v72 + 12))
        {
          LOBYTE(v77) = 8;
        }

        else
        {
          LOBYTE(v77) = 1;
        }

LABEL_182:
        v153 = v77;
        [v75 appendBytes:&v153 length:1];
        if (*(v72 + 40))
        {
          LOBYTE(v78) = 0x80;
        }

        else
        {
          v79 = *(v72 + 48) - 1;
          v80 = v79 > 7;
          v78 = 0x9040201004020108 >> (8 * v79);
          if (v80)
          {
            LOBYTE(v78) = 0;
          }
        }

        v152 = v78;
        [v76 appendBytes:&v152 length:1];
        v82 = *(v72 + 24);
        if ((v82 - 5) < 2)
        {
          v165 = 0uLL;
          [*(v72 + 16) getUUIDBytes:&v165];
          v81 = &v165;
          v83 = v76;
          v84 = 16;
        }

        else
        {
          if (v82 != 2)
          {
            if (v82 == 7)
            {
              v81 = (v72 + 8);
              goto LABEL_192;
            }

LABEL_194:
            v85 = *(v72 + 40);
            if (*(v72 + 32))
            {
              if (v85)
              {
                v165 = 0uLL;
                [v85 getUUIDBytes:&v165];
                [v76 appendBytes:&v165 length:16];
                v86 = [*(v72 + 32) dataUsingEncoding:1];
                [v76 appendData:v86];
                v151 = 0;
                v87 = &v151;
              }

              else
              {
                v86 = [*(v72 + 32) dataUsingEncoding:1];
                [v76 appendData:v86];
                LOBYTE(v165) = 0;
                v87 = &v165;
              }

              [v76 appendBytes:v87 length:1];
            }

            else if (v85)
            {
              v165 = 0uLL;
              [v85 getUUIDBytes:&v165];
              [v76 appendBytes:&v165 length:16];
            }

            +[NEPolicySession addTLVToMessage:type:length:value:](NEPolicySession, v74, 10, [v76 length], objc_msgSend(v76, "bytes"));

            continue;
          }

          v81 = (v72 + 12);
          if (!*(v72 + 12))
          {
            goto LABEL_194;
          }

LABEL_192:
          v83 = v76;
          v84 = 4;
        }

        [v83 appendBytes:v81 length:v84];
        goto LABEL_194;
      }
    }

    v69 = [v67 countByEnumeratingWithState:&v146 objects:buf count:16];
  }

  while (v69);
LABEL_204:

  v40 = v143;
  v45 = v144;
  v38 = v139;
LABEL_219:
  +[NEPolicySession addTLVToMessage:type:length:value:](NEPolicySession, v43, 4, [v45 length], objc_msgSend(v45, "bytes"));

  v160 = 0u;
  v161 = 0u;
  *v158 = 0u;
  v159 = 0u;
  v92 = v40[3];
  v93 = [v92 countByEnumeratingWithState:v158 objects:v154 count:16];
  if (v93)
  {
    v94 = v93;
    v140 = v38;
    v95 = *v159;
    while (2)
    {
      v96 = 0;
      v145 = v94;
      do
      {
        if (*v159 != v95)
        {
          objc_enumerationMutation(v92);
        }

        v97 = *(*&v158[8] + 8 * v96);
        if (!v97)
        {

          goto LABEL_312;
        }

        v98 = MEMORY[0x1E695DF88];
        v99 = v43;
        v100 = objc_alloc_init(v98);
        v101 = v100;
        v102 = *(v97 + 72) - 1;
        if (v102 > 0x2A)
        {
          v103 = 0;
        }

        else
        {
          v103 = byte_1BAA4FA44[v102];
        }

        LOBYTE(v165) = v103;
        [v100 appendBytes:&v165 length:1];
        v104 = *(v97 + 8);
        LOBYTE(v146) = v104;
        if (*(v97 + 9) == 1)
        {
          LOBYTE(v146) = v104 | 2;
        }

        [v101 appendBytes:&v146 length:1];
        switch(*(v97 + 72))
        {
          case 1:
          case 2:
            *buf = 0;
            *&buf[8] = 0;
            [*(v97 + 80) getUUIDBytes:buf];
            v109 = buf;
            v110 = v101;
            v111 = 16;
            goto LABEL_263;
          case 3:
            v115 = *(v97 + 20);
            goto LABEL_256;
          case 4:
          case 0x28:
            v109 = (v97 + 28);
            goto LABEL_262;
          case 5:
            v114 = *(v97 + 88);
            goto LABEL_260;
          case 6:
            v114 = *(v97 + 96);
            goto LABEL_260;
          case 8:
            v114 = *(v97 + 112);
            goto LABEL_260;
          case 9:
            v115 = *(v97 + 48);
LABEL_256:
            *buf = v115;
            v109 = buf;
            v110 = v101;
            v111 = 8;
            goto LABEL_263;
          case 0xALL:
          case 0x13:
            v109 = (v97 + 12);
            goto LABEL_254;
          case 0xBLL:
          case 0xDLL:
          case 0x14:
          case 0x16:
            memset(&buf[1], 0, 28);
            buf[0] = *(v97 + 10);
            addressData = [*(v97 + 120) addressData];
            [addressData getBytes:&buf[1] length:28];

            addressFamily = [*(v97 + 120) addressFamily];
            if (addressFamily == 30)
            {
              if (buf[0] >= 0x81u)
              {
                buf[0] = 0x80;
              }
            }

            else if (addressFamily == 2 && buf[0] >= 0x21u)
            {
              buf[0] = 32;
            }

            [v101 appendBytes:buf length:29];
            v94 = v145;
            break;
          case 0xCLL:
          case 0xELL:
          case 0x15:
          case 0x17:
            *&v164 = 0;
            v163 = 0u;
            memset(buf, 0, sizeof(buf));
            addressData2 = [*(v97 + 120) addressData];
            [addressData2 getBytes:buf length:28];

            addressData3 = [*(v97 + 128) addressData];
            [addressData3 getBytes:&buf[28] length:28];

            v109 = buf;
            v110 = v101;
            v111 = 56;
            goto LABEL_263;
          case 0xFLL:
            v114 = *(v97 + 136);
            if (v114)
            {
              goto LABEL_260;
            }

            break;
          case 0x10:
            v163 = 0u;
            v164 = 0u;
            memset(buf, 0, sizeof(buf));
            [*(v97 + 144) getCString:buf maxLength:32 encoding:4];
            [*(v97 + 152) getCString:&v163 maxLength:32 encoding:4];
            v109 = buf;
            v110 = v101;
            v111 = 64;
            goto LABEL_263;
          case 0x12:
            v109 = (v97 + 11);
            v110 = v101;
            v111 = 1;
            goto LABEL_263;
          case 0x18:
            v109 = (v97 + 56);
            goto LABEL_262;
          case 0x1CLL:
            v113 = *(v97 + 64);
            v112 = *(v97 + 68);
            *buf = *(v97 + 60);
            *&buf[4] = v112;
            *&buf[8] = v113;
            v109 = buf;
            v110 = v101;
            v111 = 12;
            goto LABEL_263;
          case 0x1DLL:
            v114 = *(v97 + 160);
            if (!v114)
            {
              break;
            }

            goto LABEL_260;
          case 0x1ELL:
            v109 = (v97 + 14);
            goto LABEL_254;
          case 0x25:
            v109 = (v97 + 16);
LABEL_254:
            v110 = v101;
            v111 = 2;
            goto LABEL_263;
          case 0x26:
            v109 = (v97 + 32);
            goto LABEL_262;
          case 0x2ALL:
            v114 = *(v97 + 104);
LABEL_260:
            v116 = [v114 dataUsingEncoding:1];
            [v101 appendData:v116];
            buf[0] = 0;
            [v101 appendBytes:buf length:1];

            break;
          case 0x2BLL:
            [v101 appendBytes:v97 + 36 length:4];
            [v101 appendBytes:v97 + 40 length:4];
            v109 = (v97 + 44);
LABEL_262:
            v110 = v101;
            v111 = 4;
LABEL_263:
            [v110 appendBytes:v109 length:v111];
            break;
          default:
            break;
        }

        +[NEPolicySession addTLVToMessage:type:length:value:](NEPolicySession, v99, 3, [v101 length], objc_msgSend(v101, "bytes"));

        ++v96;
      }

      while (v94 != v96);
      v94 = [v92 countByEnumeratingWithState:v158 objects:v154 count:16];
      if (v94)
      {
        continue;
      }

      break;
    }

    v38 = v140;
  }

  else
  {

    *buf = 0;
    [NEPolicySession addTLVToMessage:v43 type:3 length:2 value:buf];
  }

  [v43 bytes];
  [v43 length];
  LODWORD(v165) = 0;
  if (necp_session_action())
  {
    v117 = *__error();
    if (strerror_r(v117, buf, 0x80uLL))
    {
      buf[0] = 0;
    }

    v118 = ne_log_obj();
    v7 = v143;
    if (os_log_type_enabled(v118, OS_LOG_TYPE_FAULT))
    {
      *v154 = 67109378;
      v155 = v117;
      v156 = 2080;
      v157 = buf;
      _os_log_fault_impl(&dword_1BA83C000, v118, OS_LOG_TYPE_FAULT, "Failed to add policy: [%d] %s", v154, 0x12u);
    }

    v119 = ne_log_obj();
    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
    {
      v127 = [v43 length];
      *buf = 134217984;
      *&buf[4] = v127;
      _os_log_debug_impl(&dword_1BA83C000, v119, OS_LOG_TYPE_DEBUG, "Failed to add policy with tlv message of length %zu", buf, 0xCu);
    }

    v49 = 0;
LABEL_282:
  }

  else
  {
    v120 = ne_log_obj();
    if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
    {
      v134 = [v43 length];
      *buf = 134217984;
      *&buf[4] = v134;
      _os_log_debug_impl(&dword_1BA83C000, v120, OS_LOG_TYPE_DEBUG, "Added policy with tlv message of length %zu", buf, 0xCu);
    }

    v49 = v165;
    if (v141)
    {
      v7 = v143;
      if (selfCopy)
      {
        Property = objc_getProperty(selfCopy, v121, 32, 1);
      }

      else
      {
        Property = 0;
      }

      v123 = MEMORY[0x1E696AD98];
      v124 = Property;
      v119 = [v123 numberWithUnsignedInteger:v49];
      [v124 setObject:v143 forKeyedSubscript:v119];

      goto LABEL_282;
    }

    v7 = v143;
  }

LABEL_283:

LABEL_310:
  return v49;
}

+ (void)addTLVToMessage:(char)message type:(uint64_t)type length:(uint64_t)length value:
{
  messageCopy = message;
  v7 = a2;
  objc_opt_self();
  [v7 appendBytes:&messageCopy length:1];
  typeCopy = type;
  [v7 appendBytes:&typeCopy length:4];
  [v7 appendBytes:length length:type];
}

- (BOOL)removeAllDomainTries
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = necp_session_action();
  if (v2)
  {
    v3 = *__error();
    if (strerror_r(v3, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v6[0] = 67109378;
      v6[1] = v3;
      v7 = 2080;
      v8 = __strerrbuf;
      _os_log_fault_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_FAULT, "Failed to remove all domain tries: [%d] %s", v6, 0x12u);
    }
  }

  else
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *__strerrbuf = 0;
      _os_log_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_INFO, "Deleted all domain tries", __strerrbuf, 2u);
    }
  }

  return v2 == 0;
}

- (BOOL)removeDomainTrieWithID:(unint64_t)d
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!necp_session_action())
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *__strerrbuf = 67109120;
      v15 = dCopy;
      _os_log_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_INFO, "Deleted domain trie - ID %u", __strerrbuf, 8u);
    }

    return 1;
  }

  if (*__error() == 2)
  {
    return 1;
  }

  v3 = *__error();
  if (strerror_r(v3, __strerrbuf, 0x80uLL))
  {
    __strerrbuf[0] = 0;
  }

  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109634;
    v9 = dCopy;
    v10 = 1024;
    v11 = v3;
    v12 = 2080;
    v13 = __strerrbuf;
    _os_log_fault_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_FAULT, "Failed to remove domain trie %u: [%d] %s", buf, 0x18u);
  }

  return 0;
}

- (unint64_t)addDomainTrieWithData:(id)data
{
  v20 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = dataCopy;
  if (!data)
  {
    v7 = ne_log_obj();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_6;
    }

    *__strerrbuf = 136315138;
    v19 = "[NEPolicySession addDomainTrieWithData:]";
    v10 = "%s called with null trieData";
    v11 = __strerrbuf;
    v12 = v7;
    v13 = 12;
LABEL_12:
    _os_log_fault_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_FAULT, v10, v11, v13);
LABEL_6:

    goto LABEL_10;
  }

  [dataCopy bytes];
  [v5 length];
  if (necp_session_action())
  {
    v6 = *__error();
    if (strerror_r(v6, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v7 = ne_log_obj();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_6;
    }

    *buf = 67109378;
    v15 = v6;
    v16 = 2080;
    v17 = __strerrbuf;
    v10 = "Failed to add domain trie: [%d] %s";
    v11 = buf;
    v12 = v7;
    v13 = 18;
    goto LABEL_12;
  }

  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *__strerrbuf = 67109120;
    LODWORD(v19) = 0;
    _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_INFO, "Added domain trie - ID %u", __strerrbuf, 8u);
  }

LABEL_10:
  return 0;
}

- (BOOL)removeAllDomainFilters
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = necp_session_action();
  if (v2)
  {
    v3 = *__error();
    if (strerror_r(v3, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v6[0] = 67109378;
      v6[1] = v3;
      v7 = 2080;
      v8 = __strerrbuf;
      _os_log_fault_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_FAULT, "Failed to remove all domain filters: [%d] %s", v6, 0x12u);
    }
  }

  return v2 == 0;
}

- (BOOL)removeDomainFilterWithID:(unint64_t)d
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v3 = necp_session_action();
  if (v3)
  {
    v4 = *__error();
    if (strerror_r(v4, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109634;
      v9 = dCopy;
      v10 = 1024;
      v11 = v4;
      v12 = 2080;
      v13 = __strerrbuf;
      _os_log_fault_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_FAULT, "Failed to remove domain filter %u: [%d] %s", buf, 0x18u);
    }
  }

  return v3 == 0;
}

- (unint64_t)addDomainFilterWithData:(id)data
{
  v19 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = dataCopy;
  if (data)
  {
    [dataCopy bytes];
    v6 = [v5 length];
    if (necp_session_action())
    {
      v7 = *__error();
      if (strerror_r(v7, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109378;
        v14 = v7;
        v15 = 2080;
        v16 = __strerrbuf;
        _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, "Failed to add domain filter: [%d] %s", buf, 0x12u);
      }

      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *__strerrbuf = 134217984;
        v18 = v6;
        _os_log_debug_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEBUG, "Failed to add domain filter of length %zu", __strerrbuf, 0xCu);
      }
    }

    else
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *__strerrbuf = 134217984;
        v18 = v6;
        _os_log_debug_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_DEBUG, "Added domain filter of length %zu", __strerrbuf, 0xCu);
      }
    }
  }

  else
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *__strerrbuf = 136315138;
      v18 = "[NEPolicySession addDomainFilterWithData:]";
      _os_log_fault_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_FAULT, "%s called with null filterData", __strerrbuf, 0xCu);
    }
  }

  return 0;
}

- (BOOL)lockSessionToCurrentProcess
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = necp_session_action();
  if (v2)
  {
    v3 = *__error();
    if (strerror_r(v3, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v6[0] = 67109378;
      v6[1] = v3;
      v7 = 2080;
      v8 = __strerrbuf;
      _os_log_fault_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_FAULT, "Failed to lock session to process: [%d] %s", v6, 0x12u);
    }
  }

  return v2 == 0;
}

- (void)setPriority:(int64_t)priority
{
  priorityCopy = priority;
  v15 = *MEMORY[0x1E69E9840];
  v5 = priority - 1;
  if ((priority - 1) <= 9)
  {
    if (priority <= 5)
    {
      if (priority > 2)
      {
        if (priority != 3)
        {
          if (priority == 4)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }

LABEL_23:
        priorityCopy = 300;
        goto LABEL_40;
      }

      if (priority != 1)
      {
LABEL_29:
        priorityCopy = 200;
        goto LABEL_40;
      }

LABEL_34:
      priorityCopy = 100;
      goto LABEL_40;
    }

    if (priority > 7)
    {
      if (priority != 8)
      {
        if (priority != 9)
        {
          priorityCopy = 0xFFFFLL;
          goto LABEL_16;
        }

LABEL_27:
        priorityCopy = 500;
        goto LABEL_40;
      }

      goto LABEL_36;
    }

    if (priority == 6)
    {
LABEL_31:
      priorityCopy = 303;
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (priority > 300)
  {
    if (priority <= 303)
    {
      if (priority == 301)
      {
LABEL_38:
        priorityCopy = 301;
        goto LABEL_40;
      }

      if (priority == 302)
      {
LABEL_37:
        priorityCopy = 302;
        goto LABEL_40;
      }

      goto LABEL_31;
    }

    if (priority != 304)
    {
      if (priority != 400)
      {
        if (priority != 500)
        {
          goto LABEL_16;
        }

        goto LABEL_27;
      }

LABEL_36:
      priorityCopy = 400;
      goto LABEL_40;
    }

LABEL_39:
    priorityCopy = 304;
    goto LABEL_40;
  }

  if (priority <= 100)
  {
    if (!priority)
    {
      goto LABEL_40;
    }

    if (priority == 100)
    {
      goto LABEL_34;
    }
  }

  else
  {
    switch(priority)
    {
      case 101:
        goto LABEL_40;
      case 200:
        goto LABEL_29;
      case 300:
        goto LABEL_23;
    }
  }

LABEL_16:
  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    *__strerrbuf = 67109120;
    v14 = priorityCopy;
    _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "Unknown priority level %u", __strerrbuf, 8u);
  }

LABEL_40:
  if (self)
  {
    if (!necp_session_action())
    {
      self->_internalPriority = priorityCopy;
      self->_convertToLegacyPriority = v5 < 0xA;
      return;
    }
  }

  else if (!necp_session_action())
  {
    return;
  }

  v7 = *__error();
  if (strerror_r(v7, __strerrbuf, 0x80uLL))
  {
    __strerrbuf[0] = 0;
  }

  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109378;
    v10 = v7;
    v11 = 2080;
    v12 = __strerrbuf;
    _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, "Failed to set priority: [%d] %s", buf, 0x12u);
  }
}

- (int64_t)priority
{
  if (self)
  {
    v2 = *(self + 8);
    self = *(self + 24);
    if (v2)
    {
      if (self > 302)
      {
        if (self <= 399)
        {
          if (self == 303)
          {
            return 6;
          }

          else if (self == 304)
          {
            return 7;
          }
        }

        else
        {
          switch(self)
          {
            case 0x190:
              return 8;
            case 0x1F4:
              return 9;
            case 0xFFFFLL:
              return 10;
          }
        }
      }

      else if (self <= 299)
      {
        if (self == 100)
        {
          return 1;
        }

        else if (self == 200)
        {
          return 2;
        }
      }

      else if (self == 300)
      {
        return 3;
      }

      else if (self == 301)
      {
        return 4;
      }

      else
      {
        return 5;
      }
    }
  }

  return self;
}

- (int)dupSocket
{
  if (self && (LODWORD(self) = self->_sessionFD, (self & 0x80000000) != 0))
  {
    return -1;
  }

  else
  {
    return dup(self);
  }
}

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v5 = *&indent;
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  [v7 appendString:@"{"];
  if (self)
  {
    internalPriority = self->_internalPriority;
    if (internalPriority <= 300)
    {
      if (internalPriority <= 100)
      {
        if (!internalPriority)
        {
          v9 = @"default";
          goto LABEL_27;
        }

        if (internalPriority == 100)
        {
          v9 = @"control";
          goto LABEL_27;
        }
      }

      else
      {
        switch(internalPriority)
        {
          case 101:
            v9 = @"control1";
            goto LABEL_27;
          case 200:
            v9 = @"privileged-tunnel";
            goto LABEL_27;
          case 300:
            v9 = @"high";
LABEL_27:
            v10 = v9;
            [v7 appendPrettyObject:v10 withName:@"priority" andIndent:v5 options:options];

            Property = objc_getProperty(self, v11, 32, 1);
            goto LABEL_28;
        }
      }
    }

    else
    {
      if (internalPriority <= 303)
      {
        if (internalPriority == 301)
        {
          v9 = @"high1";
        }

        else if (internalPriority == 302)
        {
          v9 = @"high2";
        }

        else
        {
          v9 = @"high3";
        }

        goto LABEL_27;
      }

      switch(internalPriority)
      {
        case 304:
          v9 = @"high4";
          goto LABEL_27;
        case 400:
          v9 = @"HighRestricted";
          goto LABEL_27;
        case 500:
          v9 = @"low";
          goto LABEL_27;
      }
    }

    v9 = @"unknown";
    goto LABEL_27;
  }

  [v7 appendPrettyObject:0 withName:@"priority" andIndent:v5 options:options];
  Property = 0;
LABEL_28:
  [v7 appendPrettyObject:Property withName:@"policies" andIndent:v5 options:options];
  [v7 appendString:@"\n}"];

  return v7;
}

- (void)dealloc
{
  selfCopy = self;
  if (!self || (LODWORD(self) = self->_sessionFD, (self & 0x80000000) == 0))
  {
    close(self);
  }

  v3.receiver = selfCopy;
  v3.super_class = NEPolicySession;
  [(NEPolicySession *)&v3 dealloc];
}

- (NEPolicySession)initWithSessionName:(id)name
{
  nameCopy = name;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = -1;
  v5 = +[NEFileHandleMaintainer sharedMaintainer];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __39__NEPolicySession_initWithSessionName___block_invoke;
  v16[3] = &unk_1E7F0A370;
  v6 = nameCopy;
  v17 = v6;
  v18 = &v19;
  [v5 iterateFileHandlesWithBlock:v16];

  v7 = [(NEPolicySession *)self initWithSocket:*(v20 + 6)];
  v8 = v7;
  if ((v20[3] & 0x80000000) != 0)
  {
    if (v7)
    {
      v9 = [[NEPolicySessionFileHandle alloc] initWithPolicySession:v7 name:v6];
      if (v9)
      {
        v10 = +[NEFileHandleMaintainer sharedMaintainer];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __39__NEPolicySession_initWithSessionName___block_invoke_2;
        v14[3] = &unk_1E7F0A398;
        v15 = v6;
        [v10 setFileHandle:v9 matchingPredicate:v14];

        v11 = +[NEFileHandleMaintainer sharedMaintainer];
        [v11 commit];
      }
    }

    else
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(&v9->super.super, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_error_impl(&dword_1BA83C000, &v9->super.super, OS_LOG_TYPE_ERROR, "Failed to allocate a NEPolicySession", v13, 2u);
      }
    }
  }

  else
  {
    [(NEPolicySession *)v7 removeAllPolicies];
  }

  _Block_object_dispose(&v19, 8);
  return v8;
}

uint64_t __39__NEPolicySession_initWithSessionName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 name], v4 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v4), v4, isEqualToString))
  {
    v6 = [v3 handle];
    *(*(*(a1 + 40) + 8) + 24) = dup([v6 fileDescriptor]);

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

uint64_t __39__NEPolicySession_initWithSessionName___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 name];
    isEqualToString = objc_msgSend_isEqualToString_(v3);
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

- (id)initFromPrivilegedProcess
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = necp_session_open();
  if ((v3 & 0x80000000) != 0)
  {
    v5 = *__error();
    if (strerror_r(v5, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v8[0] = 67109378;
      v8[1] = v5;
      v9 = 2080;
      v10 = __strerrbuf;
      _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "Failed to open NECP session fd: [%d] %s", v8, 0x12u);
    }

    selfCopy = 0;
  }

  else
  {
    self = [(NEPolicySession *)self initWithSocket:v3];
    selfCopy = self;
  }

  return selfCopy;
}

- (NEPolicySession)initWithSocket:(int)socket
{
  v22 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = NEPolicySession;
  v4 = [(NEPolicySession *)&v16 init];
  v5 = v4;
  if (v4)
  {
    v4->_internalPriority = 0;
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    policies = v5->_policies;
    v5->_policies = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("NEPolicy Control IO Queue", v8);
    ioQueue = v5->_ioQueue;
    v5->_ioQueue = v9;

    if ((socket & 0x80000000) == 0)
    {
      v5->_sessionFD = socket;
LABEL_11:
      v12 = v5;
      goto LABEL_12;
    }

    if (getuid())
    {
      NECPSessionFD = NEHelperGetNECPSessionFD();
    }

    else
    {
      NECPSessionFD = necp_session_open();
    }

    v5->_sessionFD = NECPSessionFD;
    if ((NECPSessionFD & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    v15 = *__error();
    if (strerror_r(v15, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109378;
      v18 = v15;
      v19 = 2080;
      v20 = __strerrbuf;
      _os_log_fault_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_FAULT, "Failed to open NECP session fd: [%d] %s", buf, 0x12u);
    }
  }

  else
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *__strerrbuf = 0;
      _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "Failed to init NEPolicySession", __strerrbuf, 2u);
    }
  }

  v12 = 0;
LABEL_12:

  return v12;
}

@end