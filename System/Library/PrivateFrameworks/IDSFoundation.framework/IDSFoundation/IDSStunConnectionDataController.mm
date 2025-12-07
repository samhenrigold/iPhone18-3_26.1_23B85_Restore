@interface IDSStunConnectionDataController
+ (id)sharedInstance;
- (id)candidatesFromData:(id)data token:(id)token;
- (id)dataFromCandidates:(id)candidates token:(id)token remoteDeviceVersion:(unsigned int)version;
- (unint64_t)deliveryStatus:(id)status;
- (void)removeData:(id)data;
- (void)setDeliveryStatus:(id)status status:(unint64_t)a4;
@end

@implementation IDSStunConnectionDataController

+ (id)sharedInstance
{
  if (qword_1ED5DF6E8 != -1)
  {
    sub_1A7E1F520();
  }

  v3 = qword_1ED5DF738;

  return v3;
}

- (id)dataFromCandidates:(id)candidates token:(id)token remoteDeviceVersion:(unsigned int)version
{
  v190 = *MEMORY[0x1E69E9840];
  candidatesCopy = candidates;
  key = token;
  selfCopy = self;
  if (key)
  {
    tokenToConnectionData = self->_tokenToConnectionData;
    if (tokenToConnectionData)
    {
      v8 = CFDictionaryGetValue(tokenToConnectionData, key);
      if (v8)
      {
        v9 = v8;
        goto LABEL_121;
      }
    }
  }

  theArray = objc_alloc_init(MEMORY[0x1E695DF70]);
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v189[31] = v10;
  v189[30] = v10;
  v189[29] = v10;
  v189[28] = v10;
  v189[27] = v10;
  v189[26] = v10;
  v189[25] = v10;
  v189[24] = v10;
  v189[23] = v10;
  v189[22] = v10;
  v189[21] = v10;
  v189[20] = v10;
  v189[19] = v10;
  v189[18] = v10;
  v189[17] = v10;
  v189[16] = v10;
  v189[15] = v10;
  v189[14] = v10;
  v189[13] = v10;
  v189[12] = v10;
  v189[11] = v10;
  v189[10] = v10;
  v189[9] = v10;
  v189[8] = v10;
  v189[7] = v10;
  v189[6] = v10;
  v189[5] = v10;
  v189[4] = v10;
  v189[3] = v10;
  v189[2] = v10;
  v189[1] = v10;
  v189[0] = v10;
  __src[31] = v10;
  __src[30] = v10;
  __src[29] = v10;
  __src[28] = v10;
  __src[27] = v10;
  __src[26] = v10;
  __src[25] = v10;
  __src[24] = v10;
  __src[23] = v10;
  __src[22] = v10;
  __src[21] = v10;
  __src[20] = v10;
  __src[19] = v10;
  __src[18] = v10;
  __src[17] = v10;
  __src[16] = v10;
  __src[15] = v10;
  __src[14] = v10;
  __src[13] = v10;
  __src[12] = v10;
  __src[11] = v10;
  __src[10] = v10;
  __src[9] = v10;
  __src[8] = v10;
  __src[7] = v10;
  __src[6] = v10;
  __src[5] = v10;
  __src[4] = v10;
  __src[3] = v10;
  __src[2] = v10;
  __src[1] = v10;
  __src[0] = v10;
  memset(__b, 170, sizeof(__b));
  v175 = 0u;
  v176 = 0u;
  v177 = 0u;
  v178 = 0u;
  obj = candidatesCopy;
  v173 = [obj countByEnumeratingWithState:&v175 objects:v186 count:16];
  v174 = __src;
  v170 = v189;
  if (!v173)
  {
    v172 = 0;
    v164 = 0;
    goto LABEL_84;
  }

  v172 = 0;
  v11 = 0;
  v164 = 0;
  v167 = *v176;
  for (i = *v176; ; i = *v176)
  {
    if (i != v167)
    {
      v13 = v11;
      objc_enumerationMutation(obj);
      v11 = v13;
    }

    v171 = v11;
    v14 = *(*(&v175 + 1) + 8 * v11);
    type = [v14 type];
    if (type)
    {
      external = [v14 external];
      if (type >= 3)
      {
        v17 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v180 = v14;
          _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "skip candidate %@ due to invalid type.", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"skip candidate %@ due to invalid type.", v18, v19, v20, v21, v22, v14);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"skip candidate %@ due to invalid type.", v23, v24, v25, v26, v14);
            }
          }
        }

LABEL_64:
        v61 = v172;
        v62 = v174;
        goto LABEL_65;
      }

      address = external;
      v28 = *(external + 1);
      if (type == 1 && !IsValidSA(external))
      {
        v63 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v180 = v14;
          _os_log_impl(&dword_1A7AD9000, v63, OS_LOG_TYPE_DEFAULT, "skip candidate %@ with invalid external address.", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"skip candidate %@ with invalid external address.", v64, v65, v66, v67, v68, v14);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"skip candidate %@ with invalid external address.", v69, v70, v71, v72, v14);
            }
          }
        }

        goto LABEL_64;
      }
    }

    else
    {
      address = [v14 address];
      v28 = *(address + 1);
    }

    if (v28 == 2)
    {
      v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(address + 4)];
      v166 = 0;
    }

    else
    {
      v29 = [MEMORY[0x1E695DEF0] dataWithBytes:address + 8 length:16];
      v166 = 0x8000;
    }

    v30 = *(address + 2);
    if ([v14 active])
    {
      v31 = 0x4000;
    }

    else
    {
      v31 = 0;
    }

    radioAccessTechnology = [v14 radioAccessTechnology];
    v33 = radioAccessTechnology;
    if (radioAccessTechnology == 9 && version < 3)
    {
      v35 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v35, OS_LOG_TYPE_DEFAULT, "RATType Wired -> NonCell due to remote version", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"RATType Wired -> NonCell due to remote version", v36, v37, v38, v39, v40, v160);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"RATType Wired -> NonCell due to remote version", v41, v42, v43, v44, v160);
          }
        }
      }

      v33 = 0;
    }

    linkFlags = [v14 linkFlags];
    v46 = [(__CFArray *)theArray indexOfObject:v29];
    if (v46 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

LABEL_50:
    if (v189 - v174 <= 3)
    {
      v73 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v180 = v14;
        _os_log_impl(&dword_1A7AD9000, v73, OS_LOG_TYPE_DEFAULT, "candidate buffer full, candidate: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"candidate buffer full, candidate: %@", v74, v75, v76, v77, v78, v14);
          if (_IDSShouldLog(0))
          {
            v83 = @"candidate buffer full, candidate: %@";
LABEL_82:
            _IDSLogV(0, @"IDSFoundation", @"GL", v83, v79, v80, v81, v82, v14);
            goto LABEL_83;
          }
        }
      }

      goto LABEL_83;
    }

    v51 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v180 = v14;
      *&v180[8] = 2048;
      *v181 = v46;
      _os_log_impl(&dword_1A7AD9000, v51, OS_LOG_TYPE_DEFAULT, "candidate %@, ip_index [%lu]", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"candidate %@, ip_index [%lu]", v52, v53, v54, v55, v56, v14);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"candidate %@, ip_index [%lu]", v57, v58, v59, v60, v14);
        }
      }
    }

    *v174 = bswap32(v46 & 0x1F | (32 * ([v14 transport] & 7)) | (type << 12)) >> 16;
    *(v174 + 1) = v30;

    v61 = (v172 + 1);
    v62 = v174 + 4;
LABEL_65:
    v11 = v171 + 1;
    v172 = v61;
    v174 = v62;
    if (v171 + 1 >= v173)
    {
      v173 = [obj countByEnumeratingWithState:&v175 objects:v186 count:16];
      if (!v173)
      {
        goto LABEL_84;
      }

      v11 = 0;
    }
  }

  v47 = 18;
  if (v28 == 2)
  {
    v47 = 6;
  }

  if (&v190 - v170 >= v47)
  {
    v46 = [(__CFArray *)theArray count];
    if (v29)
    {
      v48 = theArray != 0;
    }

    else
    {
      v48 = 0;
    }

    if (v48)
    {
      CFArrayAppendValue(theArray, v29);
    }

    v164 = (v164 + 1);
    *v170 = ((linkFlags << 7) & 0x200 | ((v33 & 0xF) << 10) | v31 | v166) >> 8;
    v49 = v170 + 2;
    if (v28 == 2)
    {
      *(v170 + 2) = [v29 unsignedIntValue];
      v50 = v170 + 6;
    }

    else
    {
      [v29 getBytes:v49 length:16];
      v50 = v170 + 18;
    }

    v170 = v50;
    goto LABEL_50;
  }

  v84 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v180 = v14;
    _os_log_impl(&dword_1A7AD9000, v84, OS_LOG_TYPE_DEFAULT, "IP buffer full, candidate: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"IP buffer full, candidate: %@", v85, v86, v87, v88, v89, v14);
      if (_IDSShouldLog(0))
      {
        v83 = @"IP buffer full, candidate: %@";
        goto LABEL_82;
      }
    }
  }

LABEL_83:

LABEL_84:
  v90 = v170 - v189;
  if ((v170 - v189) - 1451 <= 0xFFFFFA55)
  {
    v91 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v180 = v170 - v189;
      _os_log_impl(&dword_1A7AD9000, v91, OS_LOG_TYPE_DEFAULT, "invalid buffer length for IP list (%d).", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"invalid buffer length for IP list (%d).", v92, v93, v94, v95, v96, v90);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid buffer length for IP list (%d).", v97, v98, v99, v100, v90);
        }
      }
    }

    goto LABEL_119;
  }

  v101 = v174 - __src;
  if ((v174 - __src) - 1451 <= 0xFFFFFA55)
  {
    v102 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v180 = v174 - __src;
      _os_log_impl(&dword_1A7AD9000, v102, OS_LOG_TYPE_DEFAULT, "invalid buffer length for candidate list (%d).", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"invalid buffer length for candidate list (%d).", v103, v104, v105, v106, v107, v101);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid buffer length for candidate list (%d).", v108, v109, v110, v111, v101);
        }
      }
    }

    goto LABEL_119;
  }

  if (v101 + v90 + 2 >= 0x5AB)
  {
    v112 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v180 = v170 - v189;
      *&v180[4] = 1024;
      *&v180[6] = v174 - __src;
      _os_log_impl(&dword_1A7AD9000, v112, OS_LOG_TYPE_DEFAULT, "invalid total buffer length: %d %d", buf, 0xEu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"invalid total buffer length: %d %d", v113, v114, v115, v116, v117, v90);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid total buffer length: %d %d", v118, v119, v120, v121, v90);
        }
      }
    }

    goto LABEL_119;
  }

  if (v164 >= 32)
  {
    v122 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v180 = v164;
      _os_log_impl(&dword_1A7AD9000, v122, OS_LOG_TYPE_DEFAULT, "IP list reached max number (%u).", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"IP list reached max number (%u).", v123, v124, v125, v126, v127, v164);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"IP list reached max number (%u).", v128, v129, v130, v131, v164);
        }
      }
    }

    goto LABEL_119;
  }

  if (v172 < 64)
  {
    __b[0] = bswap32(v172 | (v164 << 6) | 0x2000) >> 16;
    __memcpy_chk();
    v143 = &__b[1] + v90;
    memcpy(v143, __src, v101);
    v144 = &v143[v101] - __b;
    v145 = [MEMORY[0x1E695DEF0] dataWithBytes:__b length:v144];
    v146 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413314;
      *v180 = key;
      *&v180[8] = 1024;
      *v181 = 1;
      *&v181[4] = 1024;
      *&v181[6] = v164;
      v182 = 1024;
      v183 = v172;
      v184 = 1024;
      v185 = v144;
      _os_log_impl(&dword_1A7AD9000, v146, OS_LOG_TYPE_DEFAULT, "new connection data for %@ (V:%1d #IP:%d #CAN:%d LEN:%dB).", buf, 0x24u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"new connection data for %@ (V:%1d #IP:%d #CAN:%d LEN:%dB).", v147, v148, v149, v150, v151, key);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"new connection data for %@ (V:%1d #IP:%d #CAN:%d LEN:%dB).", v152, v153, v154, v155, key);
        }
      }
    }

    v156 = selfCopy;
    if (!selfCopy->_tokenToConnectionData)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v158 = selfCopy->_tokenToConnectionData;
      selfCopy->_tokenToConnectionData = Mutable;

      v156 = selfCopy;
    }

    v159 = v145;
    if (v159)
    {
      CFDictionarySetValue(v156->_tokenToConnectionData, key, v159);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1F534();
    }

    v9 = v159;
  }

  else
  {
    v132 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v180 = v172;
      _os_log_impl(&dword_1A7AD9000, v132, OS_LOG_TYPE_DEFAULT, "reached max number of candidate: %u.", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"reached max number of candidate: %u.", v133, v134, v135, v136, v137, v172);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"reached max number of candidate: %u.", v138, v139, v140, v141, v172);
        }
      }
    }

LABEL_119:
    v9 = 0;
  }

LABEL_121:

  return v9;
}

- (id)candidatesFromData:(id)data token:(id)token
{
  v209 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  tokenCopy = token;
  v6 = [dataCopy length];
  bytes = [dataCopy bytes];
  v194 = dataCopy;
  v8 = [dataCopy length];
  if (v8 > 1)
  {
    v20 = v8;
    v22 = *bytes;
    v21 = bytes + 1;
    v23 = bswap32(v22);
    v24 = v23 >> 29;
    v25 = HIWORD(v23) & 0x1000;
    v198 = (v23 >> 22) & 0x1F;
    v195 = HIWORD(v23) & 0x3F;
    v191 = v6;
    v26 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110146;
      *&buf[4] = v24;
      *&buf[8] = 1024;
      *&buf[10] = v25 >> 12;
      *&buf[14] = 1024;
      *&buf[16] = v198;
      *&buf[20] = 1024;
      *&buf[22] = v195;
      *&buf[26] = 2112;
      *&buf[28] = v194;
      _os_log_impl(&dword_1A7AD9000, v26, OS_LOG_TYPE_DEFAULT, "receive connection data (ver:%u ext:%d numIP:%d numCandidate:%d) %@.", buf, 0x24u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"receive connection data (ver:%u ext:%d numIP:%d numCandidate:%d) %@.", v27, v28, v29, v30, v31, v24);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive connection data (ver:%u ext:%d numIP:%d numCandidate:%d) %@.", v32, v33, v34, v35, v24);
        }
      }
    }

    theArray = objc_alloc_init(MEMORY[0x1E695DF70]);
    v196 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v36 = v20 - 2;
    if (v198)
    {
      v37 = 0;
      v38 = 0;
      while (1)
      {
        v39 = v37;
        if (v36 <= 1)
        {
          break;
        }

        v40 = (v21 + 1);
        v41 = bswap32(*v21);
        v42 = v36 - 2;
        if ((v41 & 0x80000000) != 0)
        {
          if (v42 <= 0xF)
          {
            v168 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *&buf[4] = v38;
              _os_log_impl(&dword_1A7AD9000, v168, OS_LOG_TYPE_DEFAULT, "Error: connectionData is too short for IPv6 address, i = %d", buf, 8u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"GL", @"IDS", @"Error: connectionData is too short for IPv6 address, i = %d", v169, v170, v171, v172, v173, v38);
                if (_IDSShouldLog(0))
                {
                  _IDSLogV(0, @"IDSFoundation", @"GL", @"Error: connectionData is too short for IPv6 address, i = %d", v174, v175, v176, v177, v38);
                }
              }
            }

            goto LABEL_142;
          }

          v37 = [MEMORY[0x1E695DEF0] dataWithBytes:v40 length:16];
          v43 = -18;
          v44 = 18;
        }

        else
        {
          if (v42 <= 3)
          {
            v127 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *&buf[4] = v38;
              _os_log_impl(&dword_1A7AD9000, v127, OS_LOG_TYPE_DEFAULT, "Error: connectionData is too short for IPv4 address, i = %d", buf, 8u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"GL", @"IDS", @"Error: connectionData is too short for IPv4 address, i = %d", v128, v129, v130, v131, v132, v38);
                if (_IDSShouldLog(0))
                {
                  _IDSLogV(0, @"IDSFoundation", @"GL", @"Error: connectionData is too short for IPv4 address, i = %d", v133, v134, v135, v136, v38);
                }
              }
            }

            goto LABEL_142;
          }

          v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*v40];
          v43 = -6;
          v44 = 6;
        }

        if (v37)
        {
          v45 = theArray != 0;
        }

        else
        {
          v45 = 0;
        }

        if (v45)
        {
          CFArrayAppendValue(theArray, v37);
        }

        if (v196)
        {
          v46 = HIWORD(v41);
          v47 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v46];
          v48 = v47 == 0;

          if (!v48)
          {
            v49 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v46];
            CFArrayAppendValue(v196, v49);
          }
        }

        v21 = (v21 + v44);
        v36 += v43;
        v38 = (v38 + 1);
        if (v198 == v38)
        {
          goto LABEL_34;
        }
      }

      v117 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v38;
        _os_log_impl(&dword_1A7AD9000, v117, OS_LOG_TYPE_DEFAULT, "Error: connectionData is too short for header, i = %d", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"Error: connectionData is too short for header, i = %d", v118, v119, v120, v121, v122, v38);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"Error: connectionData is too short for header, i = %d", v123, v124, v125, v126, v38);
          }
        }
      }

LABEL_142:
      v19 = 0;
      goto LABEL_143;
    }

    v37 = 0;
LABEL_34:
    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    v204 = 0u;
    memset(buf, 0, sizeof(buf));
    v192 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v195)
    {
      v50 = 0;
      while (v36 > 1)
      {
        if ((v36 & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          v147 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
          {
            *v199 = 67109120;
            LODWORD(v200) = v50;
            _os_log_impl(&dword_1A7AD9000, v147, OS_LOG_TYPE_DEFAULT, "Error: connectionData is too short for port, i = %d", v199, 8u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"GL", @"IDS", @"Error: connectionData is too short for port, i = %d", v148, v149, v150, v151, v152, v50);
              if (_IDSShouldLog(0))
              {
                _IDSLogV(0, @"IDSFoundation", @"GL", @"Error: connectionData is too short for port, i = %d", v153, v154, v155, v156, v50);
              }
            }
          }

          goto LABEL_134;
        }

        v51 = v21;
        v52 = bswap32(*v21) >> 16;
        if ((v52 & 0x1F) >= v198)
        {
          v66 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            *v199 = 134218240;
            v200 = v52 & 0x1F;
            v201 = 1024;
            v202 = v198;
            _os_log_impl(&dword_1A7AD9000, v66, OS_LOG_TYPE_DEFAULT, "invalid ip_index (%lu >= %d).", v199, 0x12u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"GL", @"IDS", @"invalid ip_index (%lu >= %d).", v67, v68, v69, v70, v71, v52 & 0x1F);
              if (_IDSShouldLog(0))
              {
                _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid ip_index (%lu >= %d).", v72, v73, v74, v75, v52 & 0x1F);
              }
            }
          }
        }

        else
        {
          v53 = v21[1];
          0x1F = [(__CFArray *)theArray objectAtIndex:v52 & 0x1F];

          if (0x1F)
          {
            v55 = v52 >> 12;
            if (v52 < 0x4000)
            {
              v86 = v52 >> 5;
              if (v86 < 5)
              {
                0x1F2 = [(__CFArray *)v196 objectAtIndex:v52 & 0x1F];
                unsignedShortValue = [0x1F2 unsignedShortValue];

                if (unsignedShortValue < 0)
                {
                  memset(&buf[8], 0, 20);
                  *buf = 7708;
                  *&buf[2] = v53;
                  if ([0x1F length] <= 0xF)
                  {
                    v179 = OSLogHandleForTransportCategory();
                    if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
                    {
                      *v199 = 67109120;
                      LODWORD(v200) = v50;
                      _os_log_impl(&dword_1A7AD9000, v179, OS_LOG_TYPE_DEFAULT, "Error: connectionData is too short for sin6_addr.s6_addr, i = %d", v199, 8u);
                    }

                    if (os_log_shim_legacy_logging_enabled())
                    {
                      if (_IDSShouldLogTransport())
                      {
                        _IDSLogTransport(@"GL", @"IDS", @"Error: connectionData is too short for sin6_addr.s6_addr, i = %d", v180, v181, v182, v183, v184, v50);
                        if (_IDSShouldLog(0))
                        {
                          _IDSLogV(0, @"IDSFoundation", @"GL", @"Error: connectionData is too short for sin6_addr.s6_addr, i = %d", v185, v186, v187, v188, v50);
                        }
                      }
                    }

                    v19 = 0;
                    v37 = 0x1F;
                    goto LABEL_135;
                  }

                  v100 = 0x1F;
                  *&buf[8] = *[0x1F bytes];
                  v99 = 1280;
                }

                else
                {
                  *&buf[8] = 0;
                  *buf = 528;
                  *&buf[2] = v53;
                  *&buf[4] = [0x1F unsignedLongValue];
                  v99 = 1450;
                }

                v101 = (unsignedShortValue >> 10) & 0xF;
                if (v99 >= 0x578)
                {
                  v102 = 1400;
                }

                else
                {
                  v102 = v99;
                }

                if (v101 == 9)
                {
                  v102 = v99;
                }

                if (v101)
                {
                  v103 = v102;
                }

                else
                {
                  v103 = v99;
                }

                if (v86 == 3)
                {
                  v104 = 896;
                }

                else
                {
                  v104 = 0;
                }

                if (v86 == 2)
                {
                  v104 = 4;
                }

                if ((unsignedShortValue & 0x8000u) == 0)
                {
                  v105 = 1;
                }

                else
                {
                  v105 = 2;
                }

                v106 = [IDSStunCandidate candidateWithType:v55 transport:v86 radioAccessTechnology:v101 mtu:(v103 - GLUtilGetLinkOverhead(v105 | v104)) index:0xFFFFFFFFLL address:buf external:buf];
                [v106 setActive:(unsignedShortValue >> 14) & 1];
                if ((unsignedShortValue & 0x200) != 0)
                {
                  [v106 setLinkFlags:4];
                }

                if (v192 && v106)
                {
                  CFArrayAppendValue(v192, v106);
                }

                v107 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                {
                  *v199 = 138412290;
                  v200 = v106;
                  _os_log_impl(&dword_1A7AD9000, v107, OS_LOG_TYPE_DEFAULT, "receive remote candidate %@.", v199, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    _IDSLogTransport(@"GL", @"IDS", @"receive remote candidate %@.", v108, v109, v110, v111, v112, v106);
                    if (_IDSShouldLog(0))
                    {
                      _IDSLogV(0, @"IDSFoundation", @"GL", @"receive remote candidate %@.", v113, v114, v115, v116, v106);
                    }
                  }
                }
              }

              else
              {
                v87 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
                {
                  *v199 = 134217984;
                  v200 = v52 >> 5;
                  _os_log_impl(&dword_1A7AD9000, v87, OS_LOG_TYPE_DEFAULT, "candidatesFromData: transport is invalid: %lu.", v199, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    _IDSLogTransport(@"GL", @"IDS", @"candidatesFromData: transport is invalid: %lu.", v88, v89, v90, v91, v92, v52 >> 5);
                    if (_IDSShouldLog(0))
                    {
                      _IDSLogV(0, @"IDSFoundation", @"GL", @"candidatesFromData: transport is invalid: %lu.", v93, v94, v95, v96, v52 >> 5);
                    }
                  }
                }
              }
            }

            else
            {
              v56 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                *v199 = 134217984;
                v200 = v52 >> 12;
                _os_log_impl(&dword_1A7AD9000, v56, OS_LOG_TYPE_DEFAULT, "candidatesFromData: IDSStunCandidateType is invalid: %lu.", v199, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  _IDSLogTransport(@"GL", @"IDS", @"candidatesFromData: IDSStunCandidateType is invalid: %lu.", v57, v58, v59, v60, v61, v52 >> 12);
                  if (_IDSShouldLog(0))
                  {
                    _IDSLogV(0, @"IDSFoundation", @"GL", @"candidatesFromData: IDSStunCandidateType is invalid: %lu.", v62, v63, v64, v65, v52 >> 12);
                  }
                }
              }
            }

            v37 = 0x1F;
          }

          else
          {
            v76 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
            {
              *v199 = 134217984;
              v200 = v52 & 0x1F;
              _os_log_impl(&dword_1A7AD9000, v76, OS_LOG_TYPE_DEFAULT, "found no ipAdderss at index %lu.", v199, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"GL", @"IDS", @"found no ipAdderss at index %lu.", v77, v78, v79, v80, v81, v52 & 0x1F);
                if (_IDSShouldLog(0))
                {
                  _IDSLogV(0, @"IDSFoundation", @"GL", @"found no ipAdderss at index %lu.", v82, v83, v84, v85, v52 & 0x1F);
                }
              }
            }

            v37 = 0;
          }
        }

        v50 = (v50 + 1);
        v36 -= 4;
        v21 = v51 + 2;
        if (v195 == v50)
        {
          LODWORD(v21) = v51 + 4;
          goto LABEL_126;
        }
      }

      v137 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
      {
        *v199 = 67109120;
        LODWORD(v200) = v50;
        _os_log_impl(&dword_1A7AD9000, v137, OS_LOG_TYPE_DEFAULT, "Error: connectionData is too short for candidateHeader, i = %d", v199, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"Error: connectionData is too short for candidateHeader, i = %d", v138, v139, v140, v141, v142, v50);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"Error: connectionData is too short for candidateHeader, i = %d", v143, v144, v145, v146, v50);
          }
        }
      }
    }

    else
    {
LABEL_126:
      v157 = v194;
      if (v21 - [v194 bytes] == v191)
      {
        v19 = v192;
LABEL_135:

        v39 = v37;
LABEL_143:

        goto LABEL_144;
      }

      v158 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
      {
        *v199 = 67109120;
        LODWORD(v200) = v191;
        _os_log_impl(&dword_1A7AD9000, v158, OS_LOG_TYPE_DEFAULT, "invalid connection data length (%d).", v199, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"invalid connection data length (%d).", v159, v160, v161, v162, v163, v191);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid connection data length (%d).", v164, v165, v166, v167, v191);
          }
        }
      }
    }

LABEL_134:
    v19 = 0;
    goto LABEL_135;
  }

  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "Error: connectionData is too short for header", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"Error: connectionData is too short for header", v10, v11, v12, v13, v14, v189);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"Error: connectionData is too short for header", v15, v16, v17, v18, v190);
      }
    }
  }

  v19 = 0;
LABEL_144:

  return v19;
}

- (unint64_t)deliveryStatus:(id)status
{
  Value = 0;
  if (status)
  {
    tokenToDeliveryStatus = self->_tokenToDeliveryStatus;
    if (tokenToDeliveryStatus)
    {
      Value = CFDictionaryGetValue(tokenToDeliveryStatus, status);
      v3 = vars8;
    }
  }

  return [Value unsignedIntegerValue];
}

- (void)setDeliveryStatus:(id)status status:(unint64_t)a4
{
  v41 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  if (statusCopy)
  {
    tokenToDeliveryStatus = self->_tokenToDeliveryStatus;
    if (tokenToDeliveryStatus)
    {
      tokenToDeliveryStatus = CFDictionaryGetValue(tokenToDeliveryStatus, statusCopy);
    }

    unsignedIntegerValue = [(__CFDictionary *)tokenToDeliveryStatus unsignedIntegerValue];
    if (unsignedIntegerValue != a4)
    {
      v9 = unsignedIntegerValue;
      if (!self->_tokenToDeliveryStatus)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v11 = self->_tokenToDeliveryStatus;
        self->_tokenToDeliveryStatus = Mutable;
      }

      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
      if (v12)
      {
        CFDictionarySetValue(self->_tokenToDeliveryStatus, statusCopy, v12);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_1A7E1F5BC();
      }

      v23 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v36 = statusCopy;
        v37 = 2048;
        v38 = v9;
        v39 = 2048;
        v40 = a4;
        _os_log_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_DEFAULT, "set connection data delivery status for %@ (%lu->%lu).", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"set connection data delivery status for %@ (%lu->%lu).", v24, v25, v26, v27, v28, statusCopy);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"set connection data delivery status for %@ (%lu->%lu).", v29, v30, v31, v32, statusCopy);
          }
        }
      }
    }
  }

  else
  {
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "set connection data delivery status failed due to invalid token.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"LC_GLOBALLINK", @"IDS", @"set connection data delivery status failed due to invalid token.", v14, v15, v16, v17, v18, v33);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"LC_GLOBALLINK", @"set connection data delivery status failed due to invalid token.", v19, v20, v21, v22, v34);
        }
      }
    }
  }
}

- (void)removeData:(id)data
{
  v31 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (dataCopy)
  {
    tokenToConnectionData = self->_tokenToConnectionData;
    if (tokenToConnectionData)
    {
      CFDictionaryRemoveValue(tokenToConnectionData, dataCopy);
    }

    tokenToDeliveryStatus = self->_tokenToDeliveryStatus;
    if (tokenToDeliveryStatus)
    {
      CFDictionaryRemoveValue(tokenToDeliveryStatus, dataCopy);
    }

    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = dataCopy;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "removed connection data for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"removed connection data for %@.", v8, v9, v10, v11, v12, dataCopy);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"removed connection data for %@.", v13, v14, v15, v16, dataCopy);
        }
      }
    }
  }

  else
  {
    v17 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "remove connection data failed due to invalid token.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"LC_GLOBALLINK", @"IDS", @"remove connection data failed due to invalid token.", v18, v19, v20, v21, v22, v27);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"LC_GLOBALLINK", @"remove connection data failed due to invalid token.", v23, v24, v25, v26, v28);
        }
      }
    }
  }
}

@end