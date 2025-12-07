@interface _MSVSQLConnection
- (BOOL)executeStatement:(id)statement error:(id *)error;
- (BOOL)executeStatementString:(id)string error:(id *)error;
- (id)_cloneWithOptions:(unint64_t)options error:(id *)error;
- (id)resultsForStatement:(id)statement;
- (id)statementWithString:(id)string error:(id *)error;
- (sqlite3)initWithDatabaseURI:(uint64_t)i options:(void *)options error:;
- (sqlite3)lastError;
- (void)_installArraySupport;
- (void)_registerAggregateFunctionDescriptor:(id)descriptor;
- (void)_registerScalarFunctionDescriptor:(id)descriptor;
- (void)dealloc;
- (void)mutableCloneWithError:(void *)error;
- (void)registerAggregateFunctionNamed:(id)named arguments:(int64_t)arguments options:(unint64_t)options start:(id)start add:(id)add remove:(id)remove value:(id)value;
- (void)registerFunctionNamed:(id)named arguments:(int64_t)arguments options:(unint64_t)options block:(id)block;
- (void)unregisterFunctionNamed:(id)named arguments:(int64_t)arguments;
@end

@implementation _MSVSQLConnection

- (void)dealloc
{
  if (!self->_invalid)
  {
    self->_invalid = 1;
    sqlite3_close(self->_connectionHandle);
    self->_connectionHandle = 0;
  }

  v3.receiver = self;
  v3.super_class = _MSVSQLConnection;
  [(_MSVSQLConnection *)&v3 dealloc];
}

- (id)_cloneWithOptions:(unint64_t)options error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = [_MSVSQLConnection alloc];
  databaseURI = self->_databaseURI;
  v43 = 0;
  v9 = [(_MSVSQLConnection *)&v7->super.isa initWithDatabaseURI:options options:&v43 error:?];
  v10 = v43;
  v11 = v10;
  if (v10)
  {
    if (error)
    {
      v12 = v10;
      v13 = 0;
      *error = v11;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__4910;
    v41 = __Block_byref_object_dispose__4911;
    v42 = 0;
    attachedDatabases = self->_attachedDatabases;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __45___MSVSQLConnection__cloneWithOptions_error___block_invoke;
    v34[3] = &unk_1E79827E0;
    v15 = v9;
    v35 = v15;
    v36 = &v37;
    [(NSMutableDictionary *)attachedDatabases enumerateKeysAndObjectsUsingBlock:v34];
    v16 = v38[5];
    if (v16)
    {
      v13 = 0;
      if (error)
      {
        *error = v16;
      }
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v17 = self->_scalarFunctions;
      v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v30 objects:v45 count:16];
      if (v18)
      {
        v19 = *v31;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v31 != v19)
            {
              objc_enumerationMutation(v17);
            }

            [v15 _registerScalarFunctionDescriptor:*(*(&v30 + 1) + 8 * i)];
          }

          v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v30 objects:v45 count:16];
        }

        while (v18);
      }

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v21 = self->_aggregateFunctions;
      v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v26 objects:v44 count:16];
      if (v22)
      {
        v23 = *v27;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v27 != v23)
            {
              objc_enumerationMutation(v21);
            }

            [v15 _registerAggregateFunctionDescriptor:{*(*(&v26 + 1) + 8 * j), v26}];
          }

          v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v26 objects:v44 count:16];
        }

        while (v22);
      }

      v13 = v15;
    }

    _Block_object_dispose(&v37, 8);
  }

  return v13;
}

- (sqlite3)initWithDatabaseURI:(uint64_t)i options:(void *)options error:
{
  v201[0] = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (self)
  {
    v183.receiver = self;
    v183.super_class = _MSVSQLConnection;
    self = objc_msgSendSuper2(&v183, sel_init);
    if (self)
    {
      v8 = [v7 copy];
      v9 = self[7];
      self[7] = v8;

      self[5] = i;
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v11 = self[2];
      self[2] = dictionary;

      array = [MEMORY[0x1E695DF70] array];
      v13 = self[3];
      self[3] = array;

      array2 = [MEMORY[0x1E695DF70] array];
      v15 = self[4];
      self[4] = array2;

      if (i)
      {
        v16 = 33554434;
      }

      else
      {
        v16 = 33554433;
      }

      v17 = MSVHasherSharedSeed();
      v18 = v7;
      v196 = 0u;
      v195 = 0u;
      v194 = 0u;
      v193 = 0u;
      v192 = 0u;
      v191 = 0u;
      v190 = 0u;
      v189 = 0u;
      *buf = xmmword_1AC881C40;
      *&buf[16] = vaddq_s64(vdupq_n_s64(v17), xmmword_1AC881C50);
      *&v185 = v17;
      *(&v185 + 1) = v17 + 0x61C8864E7A143579;
      v186 = 0u;
      v187 = 0u;
      v188 = 0;
      v19 = v18;
      uTF8String = [v19 UTF8String];
      v21 = [v19 length];
      v22 = v21;
      if (*buf > 3000)
      {
        if (*buf <= 4000)
        {
          if (*buf == 3001)
          {
            _MSV_XXH_XXH64_update(&buf[8], uTF8String, v21);
          }

          else if (*buf == 4000)
          {
            CC_MD5_Update(&buf[8], uTF8String, v21);
          }
        }

        else
        {
          switch(*buf)
          {
            case 0xFA1:
              CC_SHA1_Update(&buf[8], uTF8String, v21);
              break;
            case 0x10A0:
              CC_SHA256_Update(&buf[8], uTF8String, v21);
              break;
            case 0x11A0:
              CC_SHA512_Update(&buf[8], uTF8String, v21);
              break;
          }
        }

        goto LABEL_74;
      }

      if (*buf <= 1999)
      {
        if (!*buf)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppendBytes(MSVHasher * _Nonnull, const void * _Nonnull, size_t)"}];
          [currentHandler handleFailureInFunction:v56 file:@"MSVHasher+Algorithms.h" lineNumber:262 description:@"Cannot append to unknown hasher algorithm"];

          goto LABEL_74;
        }

        if (*buf != 1000)
        {
          goto LABEL_74;
        }

        v23 = HIBYTE(*(&v185 + 1));
        v24 = *(&v185 + 1) & 0xFFFFFFFFFFFFFFLL;
        v25 = HIBYTE(*(&v185 + 1)) & 7;
        if (v25)
        {
          v26 = 8 - v25;
          v27 = v21 - (8 - v25);
          if (v21 < 8 - v25)
          {
LABEL_24:
            if (v22)
            {
              v50 = 0;
              v51 = 0;
              v52 = v22;
              do
              {
                v53 = *uTF8String++;
                v51 |= v53 << v50;
                v50 += 8;
                --v52;
              }

              while (v52);
              if (v25)
              {
                v54 = (v51 << (8 * v25)) | ((v22 + v23) << 56) | v24;
              }

              else
              {
                v54 = v51 | ((v22 + v23) << 56);
              }
            }

            else
            {
              if (v25)
              {
                goto LABEL_74;
              }

              v54 = v23 << 56;
            }

            *(&v185 + 1) = v54;
LABEL_74:

            memset(&v197[8], 0, 64);
            *v197 = *buf;
            if (*buf > 3000)
            {
              if (*buf <= 4000)
              {
                if (*buf == 3001)
                {
                  *&v197[8] = _MSV_XXH_XXH64_digest(&buf[8]);
                }

                else if (*buf == 4000)
                {
                  CC_MD5_Final(&v197[8], &buf[8]);
                }
              }

              else
              {
                switch(*buf)
                {
                  case 0xFA1:
                    CC_SHA1_Final(&v197[8], &buf[8]);
                    break;
                  case 0x10A0:
                    CC_SHA256_Final(&v197[8], &buf[8]);
                    break;
                  case 0x11A0:
                    CC_SHA512_Final(&v197[8], &buf[8]);
                    break;
                }
              }

              goto LABEL_111;
            }

            if (*buf <= 1999)
            {
              if (*buf)
              {
                if (*buf == 1000)
                {
                  v75 = (*&buf[8] + *&buf[16]) ^ __ROR8__(*&buf[16], 51);
                  v76 = *&buf[24] + (v185 ^ *(&v185 + 1));
                  v77 = __ROR8__(v185 ^ *(&v185 + 1), 48);
                  v78 = (v76 ^ v77) + __ROR8__(*&buf[8] + *&buf[16], 32);
                  v79 = v78 ^ __ROR8__(v76 ^ v77, 43);
                  v80 = v76 + v75;
                  v81 = v80 ^ __ROR8__(v75, 47);
                  v82 = (v78 ^ *(&v185 + 1)) + v81;
                  v83 = v82 ^ __ROR8__(v81, 51);
                  v84 = (__ROR8__(v80, 32) ^ 0xFFLL) + v79;
                  v85 = __ROR8__(v79, 48);
                  v86 = __ROR8__(v82, 32) + (v84 ^ v85);
                  v87 = v86 ^ __ROR8__(v84 ^ v85, 43);
                  v88 = v83 + v84;
                  v89 = v88 ^ __ROR8__(v83, 47);
                  v90 = v89 + v86;
                  v91 = v90 ^ __ROR8__(v89, 51);
                  v92 = __ROR8__(v88, 32) + v87;
                  v93 = __ROR8__(v87, 48);
                  v94 = __ROR8__(v90, 32) + (v92 ^ v93);
                  v95 = v94 ^ __ROR8__(v92 ^ v93, 43);
                  v96 = v91 + v92;
                  v97 = v96 ^ __ROR8__(v91, 47);
                  v98 = v97 + v94;
                  v99 = v98 ^ __ROR8__(v97, 51);
                  v100 = __ROR8__(v96, 32) + v95;
                  v101 = __ROR8__(v95, 48);
                  v102 = __ROR8__(v98, 32) + (v100 ^ v101);
                  v103 = v102 ^ __ROR8__(v100 ^ v101, 43);
                  v104 = v99 + v100;
                  *&buf[8] = v102;
                  *&buf[16] = v104 ^ __ROR8__(v99, 47);
                  *&buf[24] = __ROR8__(v104, 32);
                  *&v185 = v103;
                  *&v197[8] = *&buf[16] ^ v102 ^ *&buf[24] ^ v103;
                }
              }

              else
              {
                currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
                v108 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)"];
                [currentHandler2 handleFailureInFunction:v108 file:@"MSVHasher+Algorithms.h" lineNumber:156 description:@"Cannot finalize unknown hasher algorithm"];
              }

LABEL_111:
              v198[0] = *v197;
              v198[1] = *&v197[16];
              v198[2] = *&v197[32];
              v198[3] = *&v197[48];
              v199 = *&v197[64];
              if (*v197 > 3999)
              {
                if (*v197 > 4255)
                {
                  if (*v197 == 4256)
                  {
                    v161 = v198 + 8;
                    v162 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
                    v163 = v162;
                    for (i = 0; i != 64; i += 2)
                    {
                      v165 = *v161++;
                      v166 = &v162[i];
                      *v166 = MSVFastHexStringFromBytes_hexCharacters_4916[v165 >> 4];
                      v166[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v165 & 0xF];
                    }

                    v132 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v133 = v163;
                    v134 = 64;
                  }

                  else
                  {
                    if (*v197 != 4512)
                    {
                      goto LABEL_184;
                    }

                    v139 = v198 + 8;
                    v140 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
                    v141 = v140;
                    for (j = 0; j != 128; j += 2)
                    {
                      v143 = *v139++;
                      v144 = &v140[j];
                      *v144 = MSVFastHexStringFromBytes_hexCharacters_4916[v143 >> 4];
                      v144[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v143 & 0xF];
                    }

                    v132 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v133 = v141;
                    v134 = 128;
                  }
                }

                else if (*v197 == 4000)
                {
                  v151 = v198 + 8;
                  v152 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
                  v153 = v152;
                  for (k = 0; k != 32; k += 2)
                  {
                    v155 = *v151++;
                    v156 = &v152[k];
                    *v156 = MSVFastHexStringFromBytes_hexCharacters_4916[v155 >> 4];
                    v156[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v155 & 0xF];
                  }

                  v132 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v133 = v153;
                  v134 = 32;
                }

                else
                {
                  if (*v197 != 4001)
                  {
                    goto LABEL_184;
                  }

                  v126 = v198 + 8;
                  v127 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
                  v128 = v127;
                  for (m = 0; m != 40; m += 2)
                  {
                    v130 = *v126++;
                    v131 = &v127[m];
                    *v131 = MSVFastHexStringFromBytes_hexCharacters_4916[v130 >> 4];
                    v131[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v130 & 0xF];
                  }

                  v132 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v133 = v128;
                  v134 = 40;
                }
              }

              else
              {
                if (*v197 <= 2999)
                {
                  if (*v197 == 1000)
                  {
                    v145 = *(&v198[0] + 1);
                    if (*(&v198[0] + 1))
                    {
                      v146 = v201 + 1;
                      quot = *(&v198[0] + 1);
                      do
                      {
                        v148 = lldiv(quot, 10);
                        quot = v148.quot;
                        if (v148.rem >= 0)
                        {
                          LOBYTE(v149) = v148.rem;
                        }

                        else
                        {
                          v149 = -v148.rem;
                        }

                        *(v146 - 2) = v149 + 48;
                        v125 = (v146 - 2);
                        --v146;
                      }

                      while (v148.quot);
                      if (v145 < 0)
                      {
                        *(v146 - 2) = 45;
                        v125 = (v146 - 2);
                      }

                      v124 = (v201 - v125);
                      goto LABEL_147;
                    }

                    goto LABEL_185;
                  }

                  if (*v197 == 2000)
                  {
                    v120 = DWORD2(v198[0]);
                    if (DWORD2(v198[0]))
                    {
                      v121 = v201;
                      do
                      {
                        v122 = ldiv(v120, 10);
                        v120 = v122.quot;
                        if (v122.rem >= 0)
                        {
                          LOBYTE(v123) = v122.rem;
                        }

                        else
                        {
                          v123 = -v122.rem;
                        }

                        *(v121 - 1) = v123 + 48;
                        v121 = (v121 - 1);
                      }

                      while (v122.quot);
                      v124 = (v201 - v121);
                      v125 = v121;
LABEL_147:
                      v150 = CFStringCreateWithBytes(0, v125, v124, 0x8000100u, 0);
LABEL_158:
                      selfCopy2 = v150;
                      goto LABEL_159;
                    }

LABEL_185:
                    selfCopy2 = @"0";
LABEL_159:

                    v168 = os_log_create("com.apple.amp.MediaServices", "SQL");
                    if (os_log_type_enabled(v168, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138544130;
                      *&buf[4] = selfCopy2;
                      *&buf[12] = 2048;
                      *&buf[14] = self;
                      *&buf[22] = 2114;
                      *&buf[24] = v19;
                      LOWORD(v185) = 2048;
                      *(&v185 + 2) = i;
                      _os_log_impl(&dword_1AC81F000, v168, OS_LOG_TYPE_INFO, "[SQL:%{public}@:%p] initWithDatabaseURI:%{public}@ options:%lu… | opening database", buf, 0x2Au);
                    }

                    v169 = OpenSQLiteConnection(v19, self + 1, v16);
                    v170 = os_log_create("com.apple.amp.MediaServices", "SQL");
                    if (os_log_type_enabled(v170, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138544386;
                      *&buf[4] = selfCopy2;
                      *&buf[12] = 2048;
                      *&buf[14] = self;
                      *&buf[22] = 2114;
                      *&buf[24] = v19;
                      LOWORD(v185) = 2048;
                      *(&v185 + 2) = i;
                      WORD5(v185) = 1024;
                      HIDWORD(v185) = v169;
                      _os_log_impl(&dword_1AC81F000, v170, OS_LOG_TYPE_INFO, "[SQL:%{public}@:%p] initWithDatabaseURI:%{public}@ options:%lu… | opening database [] result=%d", buf, 0x30u);
                    }

                    if (!v169)
                    {
                      sqlite3_busy_timeout(self[1], 1000);
                      sqlite3_exec(self[1], "PRAGMA journal_mode=WAL", 0, 0, 0);
LABEL_182:

                      goto LABEL_183;
                    }

                    v171 = OpenSQLiteConnection(v19, self + 1, 33554438);
                    v172 = os_log_create("com.apple.amp.MediaServices", "SQL");
                    if (os_log_type_enabled(v172, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138544386;
                      *&buf[4] = selfCopy2;
                      *&buf[12] = 2048;
                      *&buf[14] = self;
                      *&buf[22] = 2114;
                      *&buf[24] = v19;
                      LOWORD(v185) = 2048;
                      *(&v185 + 2) = i;
                      WORD5(v185) = 1024;
                      HIDWORD(v185) = v171;
                      _os_log_impl(&dword_1AC81F000, v172, OS_LOG_TYPE_INFO, "[SQL:%{public}@:%p] initWithDatabaseURI:%{public}@ options:%lu… | opening database for creation [failed readonly open] result=%d", buf, 0x30u);
                    }

                    if (v171)
                    {
                      lastError = [(_MSVSQLConnection *)self lastError];
                      v174 = lastError;
                      if (options)
                      {
                        v175 = lastError;
                        *options = v174;
                      }

                      v176 = os_log_create("com.apple.amp.MediaServices", "SQL");
                      if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138544642;
                        *&buf[4] = selfCopy2;
                        *&buf[12] = 2048;
                        *&buf[14] = self;
                        *&buf[22] = 2114;
                        *&buf[24] = v19;
                        LOWORD(v185) = 2048;
                        *(&v185 + 2) = i;
                        WORD5(v185) = 1024;
                        HIDWORD(v185) = v171;
                        LOWORD(v186) = 2114;
                        *(&v186 + 2) = v174;
                        _os_log_impl(&dword_1AC81F000, v176, OS_LOG_TYPE_ERROR, "[SQL:%{public}@:%p] initWithDatabaseURI:%{public}@ options:%lu… | failed opening database [failed create open] result=%d error=%{public}@", buf, 0x3Au);
                      }
                    }

                    else
                    {
                      if ((i & 1) == 0)
                      {
                        sqlite3_exec(self[1], "PRAGMA journal_mode=WAL", 0, 0, 0);
                        sqlite3_close(self[1]);
                        self[1] = 0;
                        v177 = os_log_create("com.apple.amp.MediaServices", "SQL");
                        if (os_log_type_enabled(v177, OS_LOG_TYPE_INFO))
                        {
                          *buf = 138544130;
                          *&buf[4] = selfCopy2;
                          *&buf[12] = 2048;
                          *&buf[14] = self;
                          *&buf[22] = 2114;
                          *&buf[24] = v19;
                          LOWORD(v185) = 2048;
                          *(&v185 + 2) = i;
                          _os_log_impl(&dword_1AC81F000, v177, OS_LOG_TYPE_INFO, "[SQL:%{public}@:%p] initWithDatabaseURI:%{public}@ options:%lu… | re-opening database disallowing creation [need read-only connection]", buf, 0x2Au);
                        }

                        self = [(_MSVSQLConnection *)self initWithDatabaseURI:v19 options:i error:options];
                        selfCopy = self;
                        goto LABEL_181;
                      }

                      v179 = os_log_create("com.apple.amp.MediaServices", "SQL");
                      if (os_log_type_enabled(v179, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138544130;
                        *&buf[4] = selfCopy2;
                        *&buf[12] = 2048;
                        *&buf[14] = self;
                        *&buf[22] = 2114;
                        *&buf[24] = v19;
                        LOWORD(v185) = 2048;
                        *(&v185 + 2) = i;
                        _os_log_impl(&dword_1AC81F000, v179, OS_LOG_TYPE_INFO, "[SQL:%{public}@:%p] initWithDatabaseURI:%{public}@ options:%lu… | using created database [mutation allowed]", buf, 0x2Au);
                      }
                    }

                    selfCopy = 0;
LABEL_181:

                    selfCopy2 = self;
                    self = selfCopy;
                    goto LABEL_182;
                  }

LABEL_184:
                  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
                  v182 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
                  [currentHandler3 handleFailureInFunction:v182 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

                  selfCopy2 = &stru_1F214F018;
                  goto LABEL_159;
                }

                if (*v197 == 3000)
                {
                  LODWORD(v200[0]) = bswap32(DWORD2(v198[0]));
                  v157 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
                  v158 = 0;
                  v159 = v157 + 1;
                  do
                  {
                    v160 = *(v200 + v158);
                    *(v159 - 1) = MSVFastHexStringFromBytes_hexCharacters_4916[v160 >> 4];
                    *v159 = MSVFastHexStringFromBytes_hexCharacters_4916[v160 & 0xF];
                    v159 += 2;
                    ++v158;
                  }

                  while (v158 != 4);
                  v132 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v133 = v157;
                  v134 = 8;
                }

                else
                {
                  if (*v197 != 3001)
                  {
                    goto LABEL_184;
                  }

                  v200[0] = bswap64(*(&v198[0] + 1));
                  v135 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
                  v136 = 0;
                  v137 = v135 + 1;
                  do
                  {
                    v138 = *(v200 + v136);
                    *(v137 - 1) = MSVFastHexStringFromBytes_hexCharacters_4916[v138 >> 4];
                    *v137 = MSVFastHexStringFromBytes_hexCharacters_4916[v138 & 0xF];
                    v137 += 2;
                    ++v136;
                  }

                  while (v136 != 8);
                  v132 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v133 = v135;
                  v134 = 16;
                }
              }

              v150 = [v132 initWithBytesNoCopy:v133 length:v134 encoding:4 freeWhenDone:1];
              goto LABEL_158;
            }

            if (*buf != 2000)
            {
              if (*buf != 3000)
              {
                goto LABEL_111;
              }

              v105 = &v185;
              if (*&buf[12])
              {
                v106 = vaddvq_s32(vorrq_s8(vshlq_u32(*&buf[16], xmmword_1AC881C30), vshlq_u32(*&buf[16], xmmword_1AC881C20)));
              }

              else
              {
                v106 = *&buf[24] + 374761393;
              }

              v110 = *&buf[8] + v106;
              v111 = v186 & 0xF;
              if (v111 >= 4)
              {
                do
                {
                  v112 = *v105++;
                  HIDWORD(v113) = v110 - 1028477379 * v112;
                  LODWORD(v113) = HIDWORD(v113);
                  v110 = 668265263 * (v113 >> 15);
                  v111 -= 4;
                }

                while (v111 > 3);
              }

              for (; v111; --v111)
              {
                v114 = *v105;
                v105 = (v105 + 1);
                HIDWORD(v115) = v110 + 374761393 * v114;
                LODWORD(v115) = HIDWORD(v115);
                v110 = -1640531535 * (v115 >> 21);
              }

              v116 = -1028477379 * ((-2048144777 * (v110 ^ (v110 >> 15))) ^ ((-2048144777 * (v110 ^ (v110 >> 15))) >> 13));
              v117 = v116 ^ HIWORD(v116);
              goto LABEL_110;
            }

            switch(buf[19])
            {
              case 1:
                v109 = buf[16];
                break;
              case 2:
                v109 = *&buf[16];
                break;
              case 3:
                v109 = *&buf[16] | (buf[18] << 16);
                break;
              default:
                v118 = *&buf[8];
                goto LABEL_109;
            }

            v118 = (461845907 * ((380141568 * v109) | ((-862048943 * v109) >> 17))) ^ *&buf[8];
LABEL_109:
            v119 = -2048144789 * (v118 ^ *&buf[12] ^ ((v118 ^ *&buf[12]) >> 16));
            v117 = (-1028477387 * (v119 ^ (v119 >> 13))) ^ ((-1028477387 * (v119 ^ (v119 >> 13))) >> 16);
            *&buf[8] = v117;
LABEL_110:
            *&v197[8] = v117;
            goto LABEL_111;
          }

          v28 = 8 * v25;
          v29 = uTF8String;
          v30 = *(&v185 + 1) & 0xFFFFFFFFFFFFFFLL;
          do
          {
            v31 = *v29++;
            v30 |= v31 << v28;
            v28 += 8;
          }

          while (v28 != 64);
          v32 = (*&buf[8] + *&buf[16]) ^ __ROR8__(*&buf[16], 51);
          v33 = *&buf[24] + (v185 ^ v30);
          v34 = __ROR8__(v185 ^ v30, 48);
          v35 = (v33 ^ v34) + __ROR8__(*&buf[8] + *&buf[16], 32);
          v36 = v35 ^ __ROR8__(v33 ^ v34, 43);
          v37 = v33 + v32;
          *&buf[24] = __ROR8__(v37, 32);
          *&v185 = v36;
          *&buf[8] = v35 ^ v30;
          *&buf[16] = v37 ^ __ROR8__(v32, 47);
          uTF8String += v26;
          *(&v185 + 1) = (v26 + v23) << 56;
          v22 = v27;
        }

        if (v22 >= 8)
        {
          v38 = *&buf[8];
          v41 = *&buf[24];
          v40 = *&buf[16];
          v39 = v185;
          do
          {
            v42 = *uTF8String;
            uTF8String += 8;
            v43 = v39 ^ v42;
            v44 = v38 + v40;
            v45 = v44 ^ __ROR8__(v40, 51);
            v46 = v41 + v43;
            v47 = __ROR8__(v43, 48);
            v48 = (v46 ^ v47) + __ROR8__(v44, 32);
            v39 = v48 ^ __ROR8__(v46 ^ v47, 43);
            v49 = v46 + v45;
            v40 = v49 ^ __ROR8__(v45, 47);
            v41 = __ROR8__(v49, 32);
            *&buf[24] = v41;
            *&v185 = v39;
            v38 = v48 ^ v42;
            *&buf[8] = v38;
            *&buf[16] = v40;
            v22 -= 8;
            v23 += 8;
          }

          while (v22 > 7);
        }

        v25 = 0;
        goto LABEL_24;
      }

      if (*buf != 2000)
      {
        if (*buf == 3000)
        {
          _MSV_XXH_XXH32_update(&buf[8], uTF8String, v21);
        }

        goto LABEL_74;
      }

      v57 = v21 + buf[19];
      if (v57 < 4)
      {
        v58 = &buf[buf[19] + 16];
        v59 = (v57 - buf[19]);
        if (v59 <= 1)
        {
          if (v57 == buf[19])
          {
LABEL_73:
            *&buf[12] += v22;
            goto LABEL_74;
          }

          if (v59 == 1)
          {
            *v58 = *uTF8String;
            goto LABEL_73;
          }

LABEL_57:
          memcpy(v58, uTF8String, (v57 - buf[19]));
          goto LABEL_73;
        }

        if (v59 == 2)
        {
          v64 = *uTF8String;
        }

        else
        {
          if (v59 != 3)
          {
            goto LABEL_57;
          }

          v64 = *uTF8String;
          v58[2] = uTF8String[2];
        }

        *v58 = v64;
        goto LABEL_73;
      }

      LOBYTE(v60) = 0;
      v61 = v57 & 0xFFFFFFFFFFFFFFFCLL;
      if (buf[19] > 1u)
      {
        if (buf[19] != 2)
        {
          LOBYTE(v62) = 0;
          LOBYTE(v63) = 0;
          v65 = 0;
          if (buf[19] == 3)
          {
            LOBYTE(v62) = buf[16];
            v60 = HIBYTE(*&buf[16]);
            LOBYTE(v63) = buf[18];
            v65 = *uTF8String;
          }

          goto LABEL_63;
        }

        LOBYTE(v62) = buf[16];
        v60 = HIBYTE(*&buf[16]);
        v63 = *uTF8String;
      }

      else
      {
        if (!buf[19])
        {
          v62 = *uTF8String;
          v60 = *uTF8String >> 8;
          v63 = HIWORD(*uTF8String);
          v65 = HIBYTE(*uTF8String);
          goto LABEL_63;
        }

        LOBYTE(v62) = buf[16];
        LOBYTE(v60) = *uTF8String;
        v63 = *(uTF8String + 1);
      }

      v65 = v63 >> 8;
LABEL_63:
      v66 = v57 & 3;
      v67 = (v63 << 16) | (v65 << 24) | v62 | (v60 << 8);
      HIDWORD(v68) = (461845907 * ((380141568 * v67) | ((-862048943 * v67) >> 17))) ^ *&buf[8];
      LODWORD(v68) = HIDWORD(v68);
      v69 = 5 * (v68 >> 19) - 430675100;
      *&buf[8] = v69;
      v70 = &uTF8String[-buf[19] + 4];
      v71 = &uTF8String[v61 - buf[19]];
      while (v70 < v71)
      {
        v72 = *v70;
        v70 += 4;
        HIDWORD(v73) = (461845907 * ((380141568 * v72) | ((-862048943 * v72) >> 17))) ^ v69;
        LODWORD(v73) = HIDWORD(v73);
        v69 = 5 * (v73 >> 19) - 430675100;
        *&buf[8] = v69;
      }

      if (v66 > 1)
      {
        if (v66 == 2)
        {
          *&buf[16] = *v71;
        }

        else
        {
          v74 = *v71;
          buf[18] = v71[2];
          *&buf[16] = v74;
        }
      }

      else if (v66)
      {
        buf[16] = *v71;
      }

      buf[19] = v66;
      goto LABEL_73;
    }
  }

LABEL_183:

  return self;
}

- (sqlite3)lastError
{
  if (self)
  {
    selfCopy = self;
    v3 = sqlite3_errmsg(self[1]);
    self = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MSVSQLDatabaseError" code:1 debugDescription:{@"[%lld] %s", sqlite3_errcode(selfCopy[1]), v3}];
    v1 = vars8;
  }

  return self;
}

- (void)_registerAggregateFunctionDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  connectionHandle = self->_connectionHandle;
  pApp = descriptorCopy;
  if (descriptorCopy)
  {
    v6 = *(descriptorCopy + 1);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  uTF8String = [v7 UTF8String];
  if (pApp)
  {
    v9 = pApp[4];
    v10 = *(pApp + 3);
    if (v10)
    {
      v11 = 2049;
    }

    else
    {
      v11 = 1;
    }

    if ((v10 & 2) != 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 | 0x80000;
    }

    v13 = v12 & 0xFFDFFFFF | (((v10 >> 2) & 1) << 21);
    v14 = pApp;
    v15 = v14[6];
    if (v15)
    {
      v16 = _aggregateFunctionValue;
    }

    else
    {
      v16 = 0;
    }

    v17 = v14[6];
  }

  else
  {
    v16 = 0;
    v15 = 0;
    v9 = 0;
    v13 = 0;
    v17 = 0;
  }

  if (v17)
  {
    xInverse = _aggregateFunctionInverse;
  }

  else
  {
    xInverse = 0;
  }

  sqlite3_create_window_function(connectionHandle, uTF8String, v9, v13, pApp, _aggregateFunctionStep, _aggregateFunctionFinal, v16, xInverse, _MSVSQLBridgeDestroy);

  [(NSMutableArray *)self->_aggregateFunctions addObject:pApp];
}

- (void)registerAggregateFunctionNamed:(id)named arguments:(int64_t)arguments options:(unint64_t)options start:(id)start add:(id)add remove:(id)remove value:(id)value
{
  newValue = start;
  addCopy = add;
  removeCopy = remove;
  valueCopy = value;
  namedCopy = named;
  v18 = objc_alloc_init(_MSVSQLDatabaseAggregateFunctionDescriptor);
  v19 = [namedCopy copy];

  if (v18)
  {
    objc_setProperty_nonatomic_copy(v18, v20, v19, 8);

    v18->super._numberOfArguments = arguments;
    objc_setProperty_nonatomic_copy(v18, v21, newValue, 32);
    objc_setProperty_nonatomic_copy(v18, v22, addCopy, 40);
    objc_setProperty_nonatomic_copy(v18, v23, removeCopy, 48);
    objc_setProperty_nonatomic_copy(v18, v24, valueCopy, 56);
  }

  else
  {
  }

  [(_MSVSQLConnection *)self _registerAggregateFunctionDescriptor:v18];
}

- (void)unregisterFunctionNamed:(id)named arguments:(int64_t)arguments
{
  namedCopy = named;
  sqlite3_create_function_v2(self->_connectionHandle, [namedCopy UTF8String], arguments, 1, 0, 0, 0, 0, 0);
  scalarFunctions = self->_scalarFunctions;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55___MSVSQLConnection_unregisterFunctionNamed_arguments___block_invoke;
  v16[3] = &unk_1E7982790;
  v8 = namedCopy;
  v17 = v8;
  argumentsCopy = arguments;
  v9 = [(NSMutableArray *)scalarFunctions indexesOfObjectsPassingTest:v16];
  [(NSMutableArray *)self->_scalarFunctions removeObjectsAtIndexes:v9];
  aggregateFunctions = self->_aggregateFunctions;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55___MSVSQLConnection_unregisterFunctionNamed_arguments___block_invoke_2;
  v13[3] = &unk_1E79827B8;
  v14 = v8;
  argumentsCopy2 = arguments;
  v11 = v8;
  v12 = [(NSMutableArray *)aggregateFunctions indexesOfObjectsPassingTest:v13];
  [(NSMutableArray *)self->_aggregateFunctions removeObjectsAtIndexes:v12];
}

- (void)_registerScalarFunctionDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  connectionHandle = self->_connectionHandle;
  v14 = descriptorCopy;
  if (descriptorCopy)
  {
    descriptorCopy = descriptorCopy[1];
  }

  v6 = descriptorCopy;
  uTF8String = [v6 UTF8String];
  if (v14)
  {
    v8 = v14[4];
    v9 = *(v14 + 3);
    if (v9)
    {
      v10 = 2049;
    }

    else
    {
      v10 = 1;
    }

    if ((v9 & 2) != 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 | 0x80000;
    }

    v12 = v11 & 0xFFDFFFFF | (((v9 >> 2) & 1) << 21);
    v13 = *(v14 + 4);
  }

  else
  {
    v12 = 0;
    v8 = 0;
    v13 = 0;
  }

  sqlite3_create_function_v2(connectionHandle, uTF8String, v8, v12, v13, _scalarFunctionImplementation, 0, 0, _MSVSQLBridgeDestroy);

  [(NSMutableArray *)self->_scalarFunctions addObject:v14];
}

- (void)registerFunctionNamed:(id)named arguments:(int64_t)arguments options:(unint64_t)options block:(id)block
{
  newValue = named;
  blockCopy = block;
  v10 = objc_alloc_init(_MSVSQLDatabaseScalarFunctionDescriptor);
  v12 = v10;
  if (v10)
  {
    objc_setProperty_nonatomic_copy(v10, v11, newValue, 8);
    v12->super._options = options;
    objc_setProperty_nonatomic_copy(v12, v13, blockCopy, 32);
  }

  [(_MSVSQLConnection *)self _registerScalarFunctionDescriptor:v12];
}

- (BOOL)executeStatementString:(id)string error:(id *)error
{
  stringCopy = string;
  if (self->_invalid)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:1364 description:@"Attempt to use invalidated connection."];
  }

  v8 = [(_MSVSQLConnection *)self statementWithString:stringCopy error:error];
  if (v8)
  {
    v9 = [(_MSVSQLConnection *)self executeStatement:v8 error:error];
    [v8 invalidate];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)resultsForStatement:(id)statement
{
  statementCopy = statement;
  if (self->_invalid)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:1359 description:@"Attempt to use invalidated connection."];
  }

  v6 = [[MSVSQLRowEnumerator alloc] initWithStatement:statementCopy];

  return v6;
}

- (BOOL)executeStatement:(id)statement error:(id *)error
{
  statementCopy = statement;
  v8 = statementCopy;
  if (self->_invalid)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:1348 description:@"Attempt to use invalidated connection."];

    if (v8)
    {
      goto LABEL_3;
    }

LABEL_11:
    v9 = 0;
    goto LABEL_4;
  }

  if (!statementCopy)
  {
    goto LABEL_11;
  }

LABEL_3:
  v9 = v8[1];
LABEL_4:
  v10 = sqlite3_step(v9);
  v11 = v10;
  if (error && v10 != 101)
  {
    if (v8)
    {
      v12 = v8[2];
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    lastError = [(_MSVSQLConnection *)v13 lastError];
    v15 = lastError;

    *error = lastError;
  }

  return v11 == 101;
}

- (id)statementWithString:(id)string error:(id *)error
{
  v351 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (self->_invalid)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSQLDatabase.m" lineNumber:1299 description:@"Attempt to use invalidated connection."];
  }

  ppStmt = 0;
  if (sqlite3_prepare_v2(self->_connectionHandle, [stringCopy UTF8String], -1, &ppStmt, 0))
  {
    lastError = [(_MSVSQLConnection *)&self->super.isa lastError];
    if (!lastError)
    {
LABEL_205:
      if (error)
      {
        v209 = lastError;
        *error = lastError;
      }

      v19 = 0;
      goto LABEL_208;
    }

    v9 = MSVHasherSharedSeed();
    v10 = self->_databaseURI;
    v343 = 0u;
    v342 = 0u;
    v341 = 0u;
    v340 = 0u;
    v339 = 0u;
    v338 = 0u;
    v337 = 0u;
    v336 = 0u;
    *v330 = xmmword_1AC881C40;
    *&v330[16] = vaddq_s64(vdupq_n_s64(v9), xmmword_1AC881C50);
    v331 = v9;
    v332 = v9 + 0x61C8864E7A143579;
    v333 = 0u;
    v334 = 0u;
    v335 = 0;
    v11 = v10;
    uTF8String = [(NSString *)v11 UTF8String];
    v13 = [(NSString *)v11 length];
    v14 = v13;
    if (*v330 > 3000)
    {
      if (*v330 <= 4000)
      {
        if (*v330 == 3001)
        {
          _MSV_XXH_XXH64_update(&v330[8], uTF8String, v13);
        }

        else if (*v330 == 4000)
        {
          CC_MD5_Update(&v330[8], uTF8String, v13);
        }
      }

      else
      {
        switch(*v330)
        {
          case 0xFA1:
            CC_SHA1_Update(&v330[8], uTF8String, v13);
            break;
          case 0x10A0:
            CC_SHA256_Update(&v330[8], uTF8String, v13);
            break;
          case 0x11A0:
            CC_SHA512_Update(&v330[8], uTF8String, v13);
            break;
        }
      }

      goto LABEL_117;
    }

    if (*v330 <= 1999)
    {
      if (!*v330)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v59 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppendBytes(MSVHasher * _Nonnull, const void * _Nonnull, size_t)"}];
        [currentHandler2 handleFailureInFunction:v59 file:@"MSVHasher+Algorithms.h" lineNumber:262 description:@"Cannot append to unknown hasher algorithm"];

        goto LABEL_117;
      }

      if (*v330 != 1000)
      {
        goto LABEL_117;
      }

      v20 = HIBYTE(v332);
      v21 = v332 & 0xFFFFFFFFFFFFFFLL;
      v22 = HIBYTE(v332) & 7;
      if (v22)
      {
        v23 = 8 - v22;
        v24 = v13 - (8 - v22);
        if (v13 < 8 - v22)
        {
LABEL_29:
          if (v14)
          {
            v47 = 0;
            v48 = 0;
            v49 = v14;
            do
            {
              v50 = *uTF8String++;
              v48 |= v50 << v47;
              v47 += 8;
              --v49;
            }

            while (v49);
            if (v22)
            {
              v51 = (v48 << (8 * v22)) | ((v14 + v20) << 56) | v21;
            }

            else
            {
              v51 = v48 | ((v14 + v20) << 56);
            }
          }

          else
          {
            if (v22)
            {
              goto LABEL_117;
            }

            v51 = v20 << 56;
          }

          v332 = v51;
LABEL_117:

          memset(&v344[8], 0, 64);
          *v344 = *v330;
          if (*v330 > 3000)
          {
            if (*v330 <= 4000)
            {
              if (*v330 == 3001)
              {
                *&v344[8] = _MSV_XXH_XXH64_digest(&v330[8]);
              }

              else if (*v330 == 4000)
              {
                CC_MD5_Final(&v344[8], &v330[8]);
              }
            }

            else
            {
              switch(*v330)
              {
                case 0xFA1:
                  CC_SHA1_Final(&v344[8], &v330[8]);
                  break;
                case 0x10A0:
                  CC_SHA256_Final(&v344[8], &v330[8]);
                  break;
                case 0x11A0:
                  CC_SHA512_Final(&v344[8], &v330[8]);
                  break;
              }
            }

            goto LABEL_154;
          }

          if (*v330 <= 1999)
          {
            if (*v330)
            {
              if (*v330 == 1000)
              {
                v115 = (*&v330[8] + *&v330[16]) ^ __ROR8__(*&v330[16], 51);
                v116 = *&v330[24] + (v331 ^ v332);
                v117 = __ROR8__(v331 ^ v332, 48);
                v118 = (v116 ^ v117) + __ROR8__(*&v330[8] + *&v330[16], 32);
                v119 = v118 ^ __ROR8__(v116 ^ v117, 43);
                v120 = v116 + v115;
                v121 = v120 ^ __ROR8__(v115, 47);
                v122 = (v118 ^ v332) + v121;
                v123 = v122 ^ __ROR8__(v121, 51);
                v124 = (__ROR8__(v120, 32) ^ 0xFFLL) + v119;
                v125 = __ROR8__(v119, 48);
                v126 = __ROR8__(v122, 32) + (v124 ^ v125);
                v127 = v126 ^ __ROR8__(v124 ^ v125, 43);
                v128 = v123 + v124;
                v129 = v128 ^ __ROR8__(v123, 47);
                v130 = v129 + v126;
                v131 = v130 ^ __ROR8__(v129, 51);
                v132 = __ROR8__(v128, 32) + v127;
                v133 = __ROR8__(v127, 48);
                v134 = __ROR8__(v130, 32) + (v132 ^ v133);
                v135 = v134 ^ __ROR8__(v132 ^ v133, 43);
                v136 = v131 + v132;
                v137 = v136 ^ __ROR8__(v131, 47);
                v138 = v137 + v134;
                v139 = v138 ^ __ROR8__(v137, 51);
                v140 = __ROR8__(v136, 32) + v135;
                v141 = __ROR8__(v135, 48);
                v142 = __ROR8__(v138, 32) + (v140 ^ v141);
                v143 = v142 ^ __ROR8__(v140 ^ v141, 43);
                v144 = v139 + v140;
                *&v330[8] = v142;
                *&v330[16] = v144 ^ __ROR8__(v139, 47);
                *&v330[24] = __ROR8__(v144, 32);
                v331 = v143;
                *&v344[8] = *&v330[16] ^ v142 ^ *&v330[24] ^ v143;
              }
            }

            else
            {
              currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
              v148 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)"];
              [currentHandler3 handleFailureInFunction:v148 file:@"MSVHasher+Algorithms.h" lineNumber:156 description:@"Cannot finalize unknown hasher algorithm"];
            }

LABEL_154:
            v345 = *v344;
            v346 = *&v344[16];
            v347 = *&v344[32];
            v348 = *&v344[48];
            v349 = *&v344[64];
            if (*v344 > 3999)
            {
              if (*v344 > 4255)
              {
                if (*v344 == 4256)
                {
                  v201 = &v345 + 8;
                  v202 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
                  v203 = v202;
                  for (i = 0; i != 64; i += 2)
                  {
                    v205 = *v201++;
                    v206 = &v202[i];
                    *v206 = MSVFastHexStringFromBytes_hexCharacters_4916[v205 >> 4];
                    v206[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v205 & 0xF];
                  }

                  v172 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v173 = v203;
                  v174 = 64;
                }

                else
                {
                  if (*v344 != 4512)
                  {
                    goto LABEL_211;
                  }

                  v179 = &v345 + 8;
                  v180 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
                  v181 = v180;
                  for (j = 0; j != 128; j += 2)
                  {
                    v183 = *v179++;
                    v184 = &v180[j];
                    *v184 = MSVFastHexStringFromBytes_hexCharacters_4916[v183 >> 4];
                    v184[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v183 & 0xF];
                  }

                  v172 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v173 = v181;
                  v174 = 128;
                }
              }

              else if (*v344 == 4000)
              {
                v191 = &v345 + 8;
                v192 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
                v193 = v192;
                for (k = 0; k != 32; k += 2)
                {
                  v195 = *v191++;
                  v196 = &v192[k];
                  *v196 = MSVFastHexStringFromBytes_hexCharacters_4916[v195 >> 4];
                  v196[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v195 & 0xF];
                }

                v172 = objc_alloc(MEMORY[0x1E696AEC0]);
                v173 = v193;
                v174 = 32;
              }

              else
              {
                if (*v344 != 4001)
                {
                  goto LABEL_211;
                }

                v166 = &v345 + 8;
                v167 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
                v168 = v167;
                for (m = 0; m != 40; m += 2)
                {
                  v170 = *v166++;
                  v171 = &v167[m];
                  *v171 = MSVFastHexStringFromBytes_hexCharacters_4916[v170 >> 4];
                  v171[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v170 & 0xF];
                }

                v172 = objc_alloc(MEMORY[0x1E696AEC0]);
                v173 = v168;
                v174 = 40;
              }
            }

            else
            {
              if (*v344 <= 2999)
              {
                if (*v344 == 1000)
                {
                  v185 = *(&v345 + 1);
                  if (*(&v345 + 1))
                  {
                    v186 = &v351 + 1;
                    quot = *(&v345 + 1);
                    do
                    {
                      v188 = lldiv(quot, 10);
                      quot = v188.quot;
                      if (v188.rem >= 0)
                      {
                        LOBYTE(v189) = v188.rem;
                      }

                      else
                      {
                        v189 = -v188.rem;
                      }

                      *(v186 - 2) = v189 + 48;
                      v165 = (v186 - 2);
                      --v186;
                    }

                    while (v188.quot);
                    if (v185 < 0)
                    {
                      *(v186 - 2) = 45;
                      v165 = (v186 - 2);
                    }

                    v164 = (&v351 - v165);
                    goto LABEL_190;
                  }

LABEL_212:
                  v207 = @"0";
                  goto LABEL_202;
                }

                if (*v344 == 2000)
                {
                  v160 = DWORD2(v345);
                  if (DWORD2(v345))
                  {
                    v161 = &v351;
                    do
                    {
                      v162 = ldiv(v160, 10);
                      v160 = v162.quot;
                      if (v162.rem >= 0)
                      {
                        LOBYTE(v163) = v162.rem;
                      }

                      else
                      {
                        v163 = -v162.rem;
                      }

                      *(v161 - 1) = v163 + 48;
                      v161 = (v161 - 1);
                    }

                    while (v162.quot);
                    v164 = (&v351 - v161);
                    v165 = v161;
LABEL_190:
                    v190 = CFStringCreateWithBytes(0, v165, v164, 0x8000100u, 0);
LABEL_201:
                    v207 = v190;
LABEL_202:

                    v208 = os_log_create("com.apple.amp.MediaServices", "SQL");
                    if (os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
                    {
                      *v330 = 138543874;
                      *&v330[4] = v207;
                      *&v330[12] = 2048;
                      *&v330[14] = self;
                      *&v330[22] = 2114;
                      *&v330[24] = lastError;
                      _os_log_impl(&dword_1AC81F000, v208, OS_LOG_TYPE_ERROR, "[SQL:%{public}@:%p] statementWithString:… | failed to create statement [] error=%{public}@", v330, 0x20u);
                    }

                    goto LABEL_205;
                  }

                  goto LABEL_212;
                }

LABEL_211:
                currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
                v212 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
                [currentHandler4 handleFailureInFunction:v212 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

                v207 = &stru_1F214F018;
                goto LABEL_202;
              }

              if (*v344 == 3000)
              {
                LODWORD(v350[0]) = bswap32(DWORD2(v345));
                v197 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
                v198 = 0;
                v199 = v197 + 1;
                do
                {
                  v200 = *(v350 + v198);
                  *(v199 - 1) = MSVFastHexStringFromBytes_hexCharacters_4916[v200 >> 4];
                  *v199 = MSVFastHexStringFromBytes_hexCharacters_4916[v200 & 0xF];
                  v199 += 2;
                  ++v198;
                }

                while (v198 != 4);
                v172 = objc_alloc(MEMORY[0x1E696AEC0]);
                v173 = v197;
                v174 = 8;
              }

              else
              {
                if (*v344 != 3001)
                {
                  goto LABEL_211;
                }

                v350[0] = bswap64(*(&v345 + 1));
                v175 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
                v176 = 0;
                v177 = v175 + 1;
                do
                {
                  v178 = *(v350 + v176);
                  *(v177 - 1) = MSVFastHexStringFromBytes_hexCharacters_4916[v178 >> 4];
                  *v177 = MSVFastHexStringFromBytes_hexCharacters_4916[v178 & 0xF];
                  v177 += 2;
                  ++v176;
                }

                while (v176 != 8);
                v172 = objc_alloc(MEMORY[0x1E696AEC0]);
                v173 = v175;
                v174 = 16;
              }
            }

            v190 = [v172 initWithBytesNoCopy:v173 length:v174 encoding:4 freeWhenDone:1];
            goto LABEL_201;
          }

          if (*v330 != 2000)
          {
            if (*v330 != 3000)
            {
              goto LABEL_154;
            }

            v145 = &v331;
            if (*&v330[12])
            {
              v146 = vaddvq_s32(vorrq_s8(vshlq_u32(*&v330[16], xmmword_1AC881C30), vshlq_u32(*&v330[16], xmmword_1AC881C20)));
            }

            else
            {
              v146 = *&v330[24] + 374761393;
            }

            v150 = *&v330[8] + v146;
            v151 = v333 & 0xF;
            if (v151 >= 4)
            {
              do
              {
                v152 = *v145;
                v145 = (v145 + 4);
                HIDWORD(v153) = v150 - 1028477379 * v152;
                LODWORD(v153) = HIDWORD(v153);
                v150 = 668265263 * (v153 >> 15);
                v151 -= 4;
              }

              while (v151 > 3);
            }

            for (; v151; --v151)
            {
              v154 = *v145;
              v145 = (v145 + 1);
              HIDWORD(v155) = v150 + 374761393 * v154;
              LODWORD(v155) = HIDWORD(v155);
              v150 = -1640531535 * (v155 >> 21);
            }

            v156 = -1028477379 * ((-2048144777 * (v150 ^ (v150 >> 15))) ^ ((-2048144777 * (v150 ^ (v150 >> 15))) >> 13));
            v157 = v156 ^ HIWORD(v156);
            goto LABEL_153;
          }

          switch(v330[19])
          {
            case 1:
              v149 = v330[16];
              break;
            case 2:
              v149 = *&v330[16];
              break;
            case 3:
              v149 = *&v330[16] | (v330[18] << 16);
              break;
            default:
              v158 = *&v330[8];
              goto LABEL_152;
          }

          v158 = (461845907 * ((380141568 * v149) | ((-862048943 * v149) >> 17))) ^ *&v330[8];
LABEL_152:
          v159 = -2048144789 * (v158 ^ *&v330[12] ^ ((v158 ^ *&v330[12]) >> 16));
          v157 = (-1028477387 * (v159 ^ (v159 >> 13))) ^ ((-1028477387 * (v159 ^ (v159 >> 13))) >> 16);
          *&v330[8] = v157;
LABEL_153:
          *&v344[8] = v157;
          goto LABEL_154;
        }

        v25 = 8 * v22;
        v26 = uTF8String;
        v27 = v332 & 0xFFFFFFFFFFFFFFLL;
        do
        {
          v28 = *v26++;
          v27 |= v28 << v25;
          v25 += 8;
        }

        while (v25 != 64);
        v29 = (*&v330[8] + *&v330[16]) ^ __ROR8__(*&v330[16], 51);
        v30 = *&v330[24] + (v331 ^ v27);
        v31 = __ROR8__(v331 ^ v27, 48);
        v32 = (v30 ^ v31) + __ROR8__(*&v330[8] + *&v330[16], 32);
        v33 = v32 ^ __ROR8__(v30 ^ v31, 43);
        v34 = v30 + v29;
        *&v330[24] = __ROR8__(v34, 32);
        v331 = v33;
        *&v330[8] = v32 ^ v27;
        *&v330[16] = v34 ^ __ROR8__(v29, 47);
        uTF8String += v23;
        v332 = (v23 + v20) << 56;
        v14 = v24;
      }

      if (v14 >= 8)
      {
        v35 = *&v330[8];
        v38 = *&v330[24];
        v37 = *&v330[16];
        v36 = v331;
        do
        {
          v39 = *uTF8String;
          uTF8String += 8;
          v40 = v36 ^ v39;
          v41 = v35 + v37;
          v42 = v41 ^ __ROR8__(v37, 51);
          v43 = v38 + v40;
          v44 = __ROR8__(v40, 48);
          v45 = (v43 ^ v44) + __ROR8__(v41, 32);
          v36 = v45 ^ __ROR8__(v43 ^ v44, 43);
          v46 = v43 + v42;
          v37 = v46 ^ __ROR8__(v42, 47);
          v38 = __ROR8__(v46, 32);
          *&v330[24] = v38;
          v331 = v36;
          v35 = v45 ^ v39;
          *&v330[8] = v35;
          *&v330[16] = v37;
          v14 -= 8;
          v20 += 8;
        }

        while (v14 > 7);
      }

      v22 = 0;
      goto LABEL_29;
    }

    if (*v330 != 2000)
    {
      if (*v330 == 3000)
      {
        _MSV_XXH_XXH32_update(&v330[8], uTF8String, v13);
      }

      goto LABEL_117;
    }

    v60 = v13 + v330[19];
    if (v60 < 4)
    {
      v61 = &v330[v330[19] + 16];
      v62 = (v60 - v330[19]);
      if (v62 <= 1)
      {
        if (v60 == v330[19])
        {
LABEL_116:
          *&v330[12] += v14;
          goto LABEL_117;
        }

        if (v62 == 1)
        {
          *v61 = *uTF8String;
          goto LABEL_116;
        }

LABEL_100:
        memcpy(v61, uTF8String, (v60 - v330[19]));
        goto LABEL_116;
      }

      if (v62 == 2)
      {
        v99 = *uTF8String;
      }

      else
      {
        if (v62 != 3)
        {
          goto LABEL_100;
        }

        v99 = *uTF8String;
        v61[2] = uTF8String[2];
      }

      *v61 = v99;
      goto LABEL_116;
    }

    LOBYTE(v95) = 0;
    v96 = v60 & 0xFFFFFFFFFFFFFFFCLL;
    if (v330[19] > 1u)
    {
      if (v330[19] != 2)
      {
        LOBYTE(v97) = 0;
        LOBYTE(v98) = 0;
        v100 = 0;
        if (v330[19] == 3)
        {
          LOBYTE(v97) = v330[16];
          v95 = HIBYTE(*&v330[16]);
          LOBYTE(v98) = v330[18];
          v100 = *uTF8String;
        }

        goto LABEL_106;
      }

      LOBYTE(v97) = v330[16];
      v95 = HIBYTE(*&v330[16]);
      v98 = *uTF8String;
    }

    else
    {
      if (!v330[19])
      {
        v97 = *uTF8String;
        v95 = *uTF8String >> 8;
        v98 = HIWORD(*uTF8String);
        v100 = HIBYTE(*uTF8String);
        goto LABEL_106;
      }

      LOBYTE(v97) = v330[16];
      LOBYTE(v95) = *uTF8String;
      v98 = *(uTF8String + 1);
    }

    v100 = v98 >> 8;
LABEL_106:
    v106 = v60 & 3;
    v107 = (v98 << 16) | (v100 << 24) | v97 | (v95 << 8);
    HIDWORD(v108) = (461845907 * ((380141568 * v107) | ((-862048943 * v107) >> 17))) ^ *&v330[8];
    LODWORD(v108) = HIDWORD(v108);
    v109 = 5 * (v108 >> 19) - 430675100;
    *&v330[8] = v109;
    v110 = &uTF8String[-v330[19] + 4];
    v111 = &uTF8String[v96 - v330[19]];
    while (v110 < v111)
    {
      v112 = *v110;
      v110 += 4;
      HIDWORD(v113) = (461845907 * ((380141568 * v112) | ((-862048943 * v112) >> 17))) ^ v109;
      LODWORD(v113) = HIDWORD(v113);
      v109 = 5 * (v113 >> 19) - 430675100;
      *&v330[8] = v109;
    }

    if (v106 > 1)
    {
      if (v106 == 2)
      {
        *&v330[16] = *v111;
      }

      else
      {
        v114 = *v111;
        v330[18] = v111[2];
        *&v330[16] = v114;
      }
    }

    else if (v106)
    {
      v330[16] = *v111;
    }

    v330[19] = v106;
    goto LABEL_116;
  }

  if ((self->_options & 1) != 0 || sqlite3_stmt_readonly(ppStmt))
  {
    v15 = [MSVSQLStatement alloc];
    v16 = ppStmt;
    selfCopy = self;
    if (v15)
    {
      *v330 = v15;
      *&v330[8] = MSVSQLStatement;
      v18 = objc_msgSendSuper2(v330, sel_init);
      v19 = v18;
      if (v18)
      {
        v18[1] = v16;
        objc_storeStrong(v18 + 2, self);
      }
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_208;
  }

  v52 = MSVHasherSharedSeed();
  v53 = self->_databaseURI;
  v343 = 0u;
  v342 = 0u;
  v341 = 0u;
  v340 = 0u;
  v339 = 0u;
  v338 = 0u;
  v337 = 0u;
  v336 = 0u;
  *v330 = xmmword_1AC881C40;
  *&v330[16] = vaddq_s64(vdupq_n_s64(v52), xmmword_1AC881C50);
  v331 = v52;
  v332 = v52 + 0x61C8864E7A143579;
  v333 = 0u;
  v334 = 0u;
  v335 = 0;
  v54 = v53;
  uTF8String2 = [(NSString *)v54 UTF8String];
  v56 = [(NSString *)v54 length];
  v57 = v56;
  if (*v330 > 3000)
  {
    if (*v330 <= 4000)
    {
      if (*v330 == 3001)
      {
        _MSV_XXH_XXH64_update(&v330[8], uTF8String2, v56);
      }

      else if (*v330 == 4000)
      {
        CC_MD5_Update(&v330[8], uTF8String2, v56);
      }
    }

    else
    {
      switch(*v330)
      {
        case 0xFA1:
          CC_SHA1_Update(&v330[8], uTF8String2, v56);
          break;
        case 0x10A0:
          CC_SHA256_Update(&v330[8], uTF8String2, v56);
          break;
        case 0x11A0:
          CC_SHA512_Update(&v330[8], uTF8String2, v56);
          break;
      }
    }

    goto LABEL_243;
  }

  if (*v330 > 1999)
  {
    if (*v330 != 2000)
    {
      if (*v330 == 3000)
      {
        _MSV_XXH_XXH32_update(&v330[8], uTF8String2, v56);
      }

      goto LABEL_243;
    }

    v103 = v56 + v330[19];
    if (v103 < 4)
    {
      v104 = &v330[v330[19] + 16];
      v105 = (v103 - v330[19]);
      if (v105 <= 1)
      {
        if (v103 == v330[19])
        {
LABEL_242:
          *&v330[12] += v57;
          goto LABEL_243;
        }

        if (v105 == 1)
        {
          *v104 = *uTF8String2;
          goto LABEL_242;
        }

LABEL_226:
        memcpy(v104, uTF8String2, (v103 - v330[19]));
        goto LABEL_242;
      }

      if (v105 == 2)
      {
        v217 = *uTF8String2;
      }

      else
      {
        if (v105 != 3)
        {
          goto LABEL_226;
        }

        v217 = *uTF8String2;
        v104[2] = uTF8String2[2];
      }

      *v104 = v217;
      goto LABEL_242;
    }

    LOBYTE(v213) = 0;
    v214 = v103 & 0xFFFFFFFFFFFFFFFCLL;
    if (v330[19] > 1u)
    {
      if (v330[19] != 2)
      {
        LOBYTE(v215) = 0;
        LOBYTE(v216) = 0;
        v218 = 0;
        if (v330[19] == 3)
        {
          LOBYTE(v215) = v330[16];
          v213 = HIBYTE(*&v330[16]);
          LOBYTE(v216) = v330[18];
          v218 = *uTF8String2;
        }

        goto LABEL_232;
      }

      LOBYTE(v215) = v330[16];
      v213 = HIBYTE(*&v330[16]);
      v216 = *uTF8String2;
    }

    else
    {
      if (!v330[19])
      {
        v215 = *uTF8String2;
        v213 = *uTF8String2 >> 8;
        v216 = HIWORD(*uTF8String2);
        v218 = HIBYTE(*uTF8String2);
        goto LABEL_232;
      }

      LOBYTE(v215) = v330[16];
      LOBYTE(v213) = *uTF8String2;
      v216 = *(uTF8String2 + 1);
    }

    v218 = v216 >> 8;
LABEL_232:
    v219 = v103 & 3;
    v220 = (v216 << 16) | (v218 << 24) | v215 | (v213 << 8);
    HIDWORD(v221) = (461845907 * ((380141568 * v220) | ((-862048943 * v220) >> 17))) ^ *&v330[8];
    LODWORD(v221) = HIDWORD(v221);
    v222 = 5 * (v221 >> 19) - 430675100;
    *&v330[8] = v222;
    v223 = &uTF8String2[-v330[19] + 4];
    v224 = &uTF8String2[v214 - v330[19]];
    while (v223 < v224)
    {
      v225 = *v223;
      v223 += 4;
      HIDWORD(v226) = (461845907 * ((380141568 * v225) | ((-862048943 * v225) >> 17))) ^ v222;
      LODWORD(v226) = HIDWORD(v226);
      v222 = 5 * (v226 >> 19) - 430675100;
      *&v330[8] = v222;
    }

    if (v219 > 1)
    {
      if (v219 == 2)
      {
        *&v330[16] = *v224;
      }

      else
      {
        v227 = *v224;
        v330[18] = v224[2];
        *&v330[16] = v227;
      }
    }

    else if (v219)
    {
      v330[16] = *v224;
    }

    v330[19] = v219;
    goto LABEL_242;
  }

  if (!*v330)
  {
    currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
    v102 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppendBytes(MSVHasher * _Nonnull, const void * _Nonnull, size_t)"}];
    [currentHandler5 handleFailureInFunction:v102 file:@"MSVHasher+Algorithms.h" lineNumber:262 description:@"Cannot append to unknown hasher algorithm"];

    goto LABEL_243;
  }

  if (*v330 != 1000)
  {
    goto LABEL_243;
  }

  v63 = HIBYTE(v332);
  v64 = v332 & 0xFFFFFFFFFFFFFFLL;
  v65 = HIBYTE(v332) & 7;
  if (!v65)
  {
    goto LABEL_63;
  }

  v66 = 8 - v65;
  v67 = v56 - (8 - v65);
  if (v56 >= 8 - v65)
  {
    v68 = 8 * v65;
    v69 = uTF8String2;
    v70 = v332 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v71 = *v69++;
      v70 |= v71 << v68;
      v68 += 8;
    }

    while (v68 != 64);
    v72 = (*&v330[8] + *&v330[16]) ^ __ROR8__(*&v330[16], 51);
    v73 = *&v330[24] + (v331 ^ v70);
    v74 = __ROR8__(v331 ^ v70, 48);
    v75 = (v73 ^ v74) + __ROR8__(*&v330[8] + *&v330[16], 32);
    v76 = v75 ^ __ROR8__(v73 ^ v74, 43);
    v77 = v73 + v72;
    *&v330[24] = __ROR8__(v77, 32);
    v331 = v76;
    *&v330[8] = v75 ^ v70;
    *&v330[16] = v77 ^ __ROR8__(v72, 47);
    uTF8String2 += v66;
    v332 = (v66 + v63) << 56;
    v57 = v67;
LABEL_63:
    if (v57 >= 8)
    {
      v78 = *&v330[8];
      v81 = *&v330[24];
      v80 = *&v330[16];
      v79 = v331;
      do
      {
        v82 = *uTF8String2;
        uTF8String2 += 8;
        v83 = v79 ^ v82;
        v84 = v78 + v80;
        v85 = v84 ^ __ROR8__(v80, 51);
        v86 = v81 + v83;
        v87 = __ROR8__(v83, 48);
        v88 = (v86 ^ v87) + __ROR8__(v84, 32);
        v79 = v88 ^ __ROR8__(v86 ^ v87, 43);
        v89 = v86 + v85;
        v80 = v89 ^ __ROR8__(v85, 47);
        v81 = __ROR8__(v89, 32);
        *&v330[24] = v81;
        v331 = v79;
        v78 = v88 ^ v82;
        *&v330[8] = v78;
        *&v330[16] = v80;
        v57 -= 8;
        v63 += 8;
      }

      while (v57 > 7);
    }

    v65 = 0;
  }

  if (v57)
  {
    v90 = 0;
    v91 = 0;
    v92 = v57;
    do
    {
      v93 = *uTF8String2++;
      v91 |= v93 << v90;
      v90 += 8;
      --v92;
    }

    while (v92);
    if (v65)
    {
      v94 = (v91 << (8 * v65)) | ((v57 + v63) << 56) | v64;
    }

    else
    {
      v94 = v91 | ((v57 + v63) << 56);
    }
  }

  else
  {
    if (v65)
    {
      goto LABEL_243;
    }

    v94 = v63 << 56;
  }

  v332 = v94;
LABEL_243:

  memset(&v344[8], 0, 64);
  *v344 = *v330;
  if (*v330 > 3000)
  {
    if (*v330 <= 4000)
    {
      if (*v330 == 3001)
      {
        *&v344[8] = _MSV_XXH_XXH64_digest(&v330[8]);
      }

      else if (*v330 == 4000)
      {
        CC_MD5_Final(&v344[8], &v330[8]);
      }
    }

    else
    {
      switch(*v330)
      {
        case 0xFA1:
          CC_SHA1_Final(&v344[8], &v330[8]);
          break;
        case 0x10A0:
          CC_SHA256_Final(&v344[8], &v330[8]);
          break;
        case 0x11A0:
          CC_SHA512_Final(&v344[8], &v330[8]);
          break;
      }
    }

    goto LABEL_272;
  }

  if (*v330 <= 1999)
  {
    if (*v330)
    {
      if (*v330 == 1000)
      {
        v228 = (*&v330[8] + *&v330[16]) ^ __ROR8__(*&v330[16], 51);
        v229 = *&v330[24] + (v331 ^ v332);
        v230 = __ROR8__(v331 ^ v332, 48);
        v231 = (v229 ^ v230) + __ROR8__(*&v330[8] + *&v330[16], 32);
        v232 = v231 ^ __ROR8__(v229 ^ v230, 43);
        v233 = v229 + v228;
        v234 = v233 ^ __ROR8__(v228, 47);
        v235 = (v231 ^ v332) + v234;
        v236 = v235 ^ __ROR8__(v234, 51);
        v237 = (__ROR8__(v233, 32) ^ 0xFFLL) + v232;
        v238 = __ROR8__(v232, 48);
        v239 = __ROR8__(v235, 32) + (v237 ^ v238);
        v240 = v239 ^ __ROR8__(v237 ^ v238, 43);
        v241 = v236 + v237;
        v242 = v241 ^ __ROR8__(v236, 47);
        v243 = v242 + v239;
        v244 = v243 ^ __ROR8__(v242, 51);
        v245 = __ROR8__(v241, 32) + v240;
        v246 = __ROR8__(v240, 48);
        v247 = __ROR8__(v243, 32) + (v245 ^ v246);
        v248 = v247 ^ __ROR8__(v245 ^ v246, 43);
        v249 = v244 + v245;
        v250 = v249 ^ __ROR8__(v244, 47);
        v251 = v250 + v247;
        v252 = v251 ^ __ROR8__(v250, 51);
        v253 = __ROR8__(v249, 32) + v248;
        v254 = __ROR8__(v248, 48);
        v255 = __ROR8__(v251, 32) + (v253 ^ v254);
        v256 = v255 ^ __ROR8__(v253 ^ v254, 43);
        v257 = v252 + v253;
        *&v330[8] = v255;
        *&v330[16] = v257 ^ __ROR8__(v252, 47);
        *&v330[24] = __ROR8__(v257, 32);
        v331 = v256;
        *&v344[8] = *&v330[16] ^ v255 ^ *&v330[24] ^ v256;
      }
    }

    else
    {
      currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
      v259 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)"];
      [currentHandler6 handleFailureInFunction:v259 file:@"MSVHasher+Algorithms.h" lineNumber:156 description:@"Cannot finalize unknown hasher algorithm"];
    }

    goto LABEL_272;
  }

  if (*v330 == 2000)
  {
    switch(v330[19])
    {
      case 1:
        v260 = v330[16];
        break;
      case 2:
        v260 = *&v330[16];
        break;
      case 3:
        v260 = *&v330[16] | (v330[18] << 16);
        break;
      default:
        v261 = *&v330[8];
        goto LABEL_271;
    }

    v261 = (461845907 * ((380141568 * v260) | ((-862048943 * v260) >> 17))) ^ *&v330[8];
LABEL_271:
    v262 = -2048144789 * (v261 ^ *&v330[12] ^ ((v261 ^ *&v330[12]) >> 16));
    *&v330[8] = (-1028477387 * (v262 ^ (v262 >> 13))) ^ ((-1028477387 * (v262 ^ (v262 >> 13))) >> 16);
    *&v344[8] = *&v330[8];
    goto LABEL_272;
  }

  if (*v330 == 3000)
  {
    *&v344[8] = _MSV_XXH_XXH32_digest(&v330[8]);
  }

LABEL_272:
  v345 = *v344;
  v346 = *&v344[16];
  v347 = *&v344[32];
  v348 = *&v344[48];
  v349 = *&v344[64];
  if (*v344 > 3999)
  {
    if (*v344 > 4255)
    {
      if (*v344 == 4256)
      {
        v304 = &v345 + 8;
        v305 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v306 = v305;
        for (n = 0; n != 64; n += 2)
        {
          v308 = *v304++;
          v309 = &v305[n];
          *v309 = MSVFastHexStringFromBytes_hexCharacters_4916[v308 >> 4];
          v309[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v308 & 0xF];
        }

        v275 = objc_alloc(MEMORY[0x1E696AEC0]);
        v276 = v306;
        v277 = 64;
      }

      else
      {
        if (*v344 != 4512)
        {
          goto LABEL_337;
        }

        v282 = &v345 + 8;
        v283 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v284 = v283;
        for (ii = 0; ii != 128; ii += 2)
        {
          v286 = *v282++;
          v287 = &v283[ii];
          *v287 = MSVFastHexStringFromBytes_hexCharacters_4916[v286 >> 4];
          v287[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v286 & 0xF];
        }

        v275 = objc_alloc(MEMORY[0x1E696AEC0]);
        v276 = v284;
        v277 = 128;
      }
    }

    else if (*v344 == 4000)
    {
      v294 = &v345 + 8;
      v295 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      v296 = v295;
      for (jj = 0; jj != 32; jj += 2)
      {
        v298 = *v294++;
        v299 = &v295[jj];
        *v299 = MSVFastHexStringFromBytes_hexCharacters_4916[v298 >> 4];
        v299[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v298 & 0xF];
      }

      v275 = objc_alloc(MEMORY[0x1E696AEC0]);
      v276 = v296;
      v277 = 32;
    }

    else
    {
      if (*v344 != 4001)
      {
        goto LABEL_337;
      }

      v269 = &v345 + 8;
      v270 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
      v271 = v270;
      for (kk = 0; kk != 40; kk += 2)
      {
        v273 = *v269++;
        v274 = &v270[kk];
        *v274 = MSVFastHexStringFromBytes_hexCharacters_4916[v273 >> 4];
        v274[1] = MSVFastHexStringFromBytes_hexCharacters_4916[v273 & 0xF];
      }

      v275 = objc_alloc(MEMORY[0x1E696AEC0]);
      v276 = v271;
      v277 = 40;
    }

LABEL_318:
    v293 = [v275 initWithBytesNoCopy:v276 length:v277 encoding:4 freeWhenDone:1];
    goto LABEL_319;
  }

  if (*v344 > 2999)
  {
    if (*v344 == 3000)
    {
      LODWORD(v350[0]) = bswap32(DWORD2(v345));
      v300 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
      v301 = 0;
      v302 = v300 + 1;
      do
      {
        v303 = *(v350 + v301);
        *(v302 - 1) = MSVFastHexStringFromBytes_hexCharacters_4916[v303 >> 4];
        *v302 = MSVFastHexStringFromBytes_hexCharacters_4916[v303 & 0xF];
        v302 += 2;
        ++v301;
      }

      while (v301 != 4);
      v275 = objc_alloc(MEMORY[0x1E696AEC0]);
      v276 = v300;
      v277 = 8;
    }

    else
    {
      if (*v344 != 3001)
      {
        goto LABEL_337;
      }

      v350[0] = bswap64(*(&v345 + 1));
      v278 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
      v279 = 0;
      v280 = v278 + 1;
      do
      {
        v281 = *(v350 + v279);
        *(v280 - 1) = MSVFastHexStringFromBytes_hexCharacters_4916[v281 >> 4];
        *v280 = MSVFastHexStringFromBytes_hexCharacters_4916[v281 & 0xF];
        v280 += 2;
        ++v279;
      }

      while (v279 != 8);
      v275 = objc_alloc(MEMORY[0x1E696AEC0]);
      v276 = v278;
      v277 = 16;
    }

    goto LABEL_318;
  }

  if (*v344 == 1000)
  {
    v288 = *(&v345 + 1);
    if (*(&v345 + 1))
    {
      v289 = &v351 + 1;
      v290 = *(&v345 + 1);
      do
      {
        v291 = lldiv(v290, 10);
        v290 = v291.quot;
        if (v291.rem >= 0)
        {
          LOBYTE(v292) = v291.rem;
        }

        else
        {
          v292 = -v291.rem;
        }

        *(v289 - 2) = v292 + 48;
        v268 = (v289 - 2);
        --v289;
      }

      while (v291.quot);
      if (v288 < 0)
      {
        *(v289 - 2) = 45;
        v268 = (v289 - 2);
      }

      v267 = (&v351 - v268);
      goto LABEL_308;
    }

LABEL_341:
    v310 = @"0";
    goto LABEL_320;
  }

  if (*v344 != 2000)
  {
LABEL_337:
    currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
    v325 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
    [currentHandler7 handleFailureInFunction:v325 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

    v310 = &stru_1F214F018;
    goto LABEL_320;
  }

  v263 = DWORD2(v345);
  if (!DWORD2(v345))
  {
    goto LABEL_341;
  }

  v264 = &v351;
  do
  {
    v265 = ldiv(v263, 10);
    v263 = v265.quot;
    if (v265.rem >= 0)
    {
      LOBYTE(v266) = v265.rem;
    }

    else
    {
      v266 = -v265.rem;
    }

    *(v264 - 1) = v266 + 48;
    v264 = (v264 - 1);
  }

  while (v265.quot);
  v267 = (&v351 - v264);
  v268 = v264;
LABEL_308:
  v293 = CFStringCreateWithBytes(0, v268, v267, 0x8000100u, 0);
LABEL_319:
  v310 = v293;
LABEL_320:

  v311 = os_log_create("com.apple.amp.MediaServices", "SQL");
  if (os_log_type_enabled(v311, OS_LOG_TYPE_INFO))
  {
    *v330 = 138543874;
    *&v330[4] = v310;
    *&v330[12] = 2048;
    *&v330[14] = self;
    *&v330[22] = 2114;
    *&v330[24] = stringCopy;
    _os_log_impl(&dword_1AC81F000, v311, OS_LOG_TYPE_INFO, "[SQL:%{public}@:%p] statementWithString:… | creating mutable connection [mutating sql statement] statement=%{public}@", v330, 0x20u);
  }

  v328 = 0;
  v312 = [(_MSVSQLConnection *)self mutableCloneWithError:?];
  v313 = v328;
  v314 = os_log_create("com.apple.amp.MediaServices", "SQL");
  v315 = v314;
  if (v312)
  {
    if (os_log_type_enabled(v314, OS_LOG_TYPE_INFO))
    {
      *v330 = 138543618;
      *&v330[4] = v310;
      *&v330[12] = 2048;
      *&v330[14] = self;
      _os_log_impl(&dword_1AC81F000, v315, OS_LOG_TYPE_INFO, "[SQL:%{public}@:%p] statementWithString:… | creating implicit transaction [mutating sql statement]", v330, 0x16u);
    }

    v316 = [MSVSQLDatabaseTransaction alloc];
    v317 = [@"Implicit-" stringByAppendingString:v310];
    v327 = 0;
    v318 = [(MSVSQLDatabaseTransaction *)v316 initWithConnection:v312 name:v317 error:&v327];
    v319 = v327;

    if (v318)
    {
      v320 = [(__CFString *)v318 statementWithString:stringCopy error:error];
      v19 = v320;
      if (v320)
      {
        objc_storeStrong((v320 + 24), v318);
      }
    }

    else
    {
      v322 = _MSVLogCategorySQL();
      if (os_log_type_enabled(v322, OS_LOG_TYPE_ERROR))
      {
        *v330 = 138543874;
        *&v330[4] = v310;
        *&v330[12] = 2048;
        *&v330[14] = self;
        *&v330[22] = 2114;
        *&v330[24] = v319;
        _os_log_impl(&dword_1AC81F000, v322, OS_LOG_TYPE_ERROR, "[SQL:%{public}@:%p] statementWithString:… | failed to create implicit transaction [] error=%{public}@", v330, 0x20u);
      }

      if (error)
      {
        v323 = v319;
        v19 = 0;
        *error = v319;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v314, OS_LOG_TYPE_ERROR))
    {
      *v330 = 138543874;
      *&v330[4] = v310;
      *&v330[12] = 2048;
      *&v330[14] = self;
      *&v330[22] = 2114;
      *&v330[24] = v313;
      _os_log_impl(&dword_1AC81F000, v315, OS_LOG_TYPE_ERROR, "[SQL:%{public}@:%p] statementWithString:… | failed to create mutable connection [] error=%{public}@", v330, 0x20u);
    }

    if (error)
    {
      v321 = v313;
      v19 = 0;
      *error = v313;
    }

    else
    {
      v19 = 0;
    }
  }

LABEL_208:

  return v19;
}

- (void)mutableCloneWithError:(void *)error
{
  if (error)
  {
    error = [error _cloneWithOptions:error[5] | 1 error:a2];
    v2 = vars8;
  }

  return error;
}

- (void)_installArraySupport
{
  if (!self->_arraySupportInstalled)
  {
    self->_arraySupportInstalled = sqlite3_create_module(self->_connectionHandle, "msv_carray", &msv_carrayModule, 0) == 0;
  }
}

@end