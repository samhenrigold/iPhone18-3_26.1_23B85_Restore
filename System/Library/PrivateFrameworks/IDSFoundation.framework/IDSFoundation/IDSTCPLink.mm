@interface IDSTCPLink
- (BOOL)disconnect:(sockaddr_in *)disconnect remoteAddress:(sockaddr_in *)address;
- (IDSLinkDelegate)alternateDelegate;
- (IDSLinkDelegate)delegate;
- (IDSTCPConnection_)_getIDSTCPConnection:(id *)connection;
- (IDSTCPLink)initWithDeviceUniqueID:(id)d cbuuid:(id)cbuuid isSSL:(BOOL)l getPacketLength:(id)length;
- (id)copyLinkStatsDict;
- (id)generateLinkReport:(double)report isCurrentLink:(BOOL)link;
- (sockaddr)connect:(int)connect localAddress:(const sockaddr *)address portRange:(unsigned __int16)range remoteAddress:(const sockaddr *)remoteAddress clientUUID:(unsigned __int8)d[16] completionHandler:(id)handler;
- (unint64_t)headerOverhead;
- (unint64_t)sendPacketBufferArray:(id *)array arraySize:(int)size toDeviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (void)dealloc;
- (void)invalidate;
- (void)processIncomingPacket:(id *)packet;
- (void)setWiFiAssistState:(BOOL)state;
@end

@implementation IDSTCPLink

- (IDSTCPLink)initWithDeviceUniqueID:(id)d cbuuid:(id)cbuuid isSSL:(BOOL)l getPacketLength:(id)length
{
  dCopy = d;
  cbuuidCopy = cbuuid;
  lengthCopy = length;
  v19.receiver = self;
  v19.super_class = IDSTCPLink;
  v14 = [(IDSTCPLink *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_cbuuid, cbuuid);
    objc_storeStrong(&v15->_deviceUniqueID, d);
    v15->_isSSL = l;
    v16 = _Block_copy(lengthCopy);
    getPacketLength = v15->_getPacketLength;
    v15->_getPacketLength = v16;

    v15->_previousReportTime = ids_monotonic_time();
    v15->_addressFamily = 2;
  }

  return v15;
}

- (void)dealloc
{
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "IDSTCPLink dealloc", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"TCPLink", @"IDS", @"IDSTCPLink dealloc", v4, v5, v6, v7, v8, v13.receiver);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"IDSTCPLink dealloc", v9, v10, v11, v12, v13.receiver);
      }
    }
  }

  [(IDSTCPLink *)self invalidate];
  v13.receiver = self;
  v13.super_class = IDSTCPLink;
  [(IDSTCPLink *)&v13 dealloc];
}

- (void)invalidate
{
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "invalidate", v18, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"TCPLink", @"IDS", @"invalidate", v4, v5, v6, v7, v8, *v18);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"invalidate", v9, v10, v11, v12, *v18);
      }
    }
  }

  conns = self->_conns;
  if (conns)
  {
    do
    {
      var12 = conns->var12;
      v15 = conns->var3 - 1;
      conns->var3 = v15;
      if (!v15)
      {
        sub_1A7B448FC(conns);
      }

      conns = var12;
    }

    while (var12);
  }

  self->_conns = 0;
  getPacketLength = self->_getPacketLength;
  if (getPacketLength)
  {
    _Block_release(getPacketLength);
    v17 = self->_getPacketLength;
    self->_getPacketLength = 0;
  }
}

- (unint64_t)headerOverhead
{
  addressFamily = self->_addressFamily;
  v3 = 255;
  if (addressFamily == 30)
  {
    v3 = 48;
  }

  if (addressFamily == 2)
  {
    return 28;
  }

  else
  {
    return v3;
  }
}

- (id)copyLinkStatsDict
{
  v3 = objc_alloc(MEMORY[0x1E695DF20]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_counters._totalBytesReceived];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_counters._totalBytesSent];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_counters._totalPacketsReceived];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_counters._totalPacketsSent];
  v8 = [v3 initWithObjectsAndKeys:{v4, @"bytesReceived", v5, @"bytesSent", v6, @"packetsReceived", v7, @"packetsSent", 0}];

  return v8;
}

- (IDSTCPConnection_)_getIDSTCPConnection:(id *)connection
{
  v37 = *MEMORY[0x1E69E9840];
  conns = self->_conns;
  if (conns)
  {
    while (!IsSameSA(&conns->var6, &connection->var18) || !IsSameSA(&conns->var7, &connection->var19))
    {
      conns = conns->var12;
      if (!conns)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v35 = v5;
    v36 = v5;
    v33 = v5;
    v34 = v5;
    v31 = v5;
    v32 = v5;
    *__str = v5;
    v30 = v5;
    *v21 = v5;
    v22 = v5;
    v23 = v5;
    v24 = v5;
    v25 = v5;
    v26 = v5;
    v27 = v5;
    v28 = v5;
    SAToIPPortString(__str, 0x80uLL, &connection->var18);
    SAToIPPortString(v21, 0x80uLL, &connection->var19);
    v6 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v18 = __str;
      v19 = 2080;
      v20 = v21;
      _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "no connection from %s to %s", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"TCPLink", @"IDS", @"no connection from %s to %s", v7, v8, v9, v10, v11, __str);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"no connection from %s to %s", v12, v13, v14, v15, __str);
        }
      }
    }

    return 0;
  }

  return conns;
}

- (sockaddr)connect:(int)connect localAddress:(const sockaddr *)address portRange:(unsigned __int16)range remoteAddress:(const sockaddr *)remoteAddress clientUUID:(unsigned __int8)d[16] completionHandler:(id)handler
{
  rangeCopy = range;
  v242 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (self->_getPacketLength)
  {
    remoteAddressCopy = remoteAddress;
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v230 = v13;
    v231 = v13;
    v228 = v13;
    v229 = v13;
    v226 = v13;
    v227 = v13;
    *__str = v13;
    v225 = v13;
    v222 = v13;
    v223 = v13;
    v220 = v13;
    v221 = v13;
    v218 = v13;
    v219 = v13;
    *v216 = v13;
    v217 = v13;
    selfCopy = self;
    aBlock = handlerCopy;
    v214 = 1;
    v14 = malloc_type_calloc(1uLL, 0x150uLL, 0x10A00409F0FFA38uLL);
    v210 = handlerCopy;
    if (v14 && (v15 = sub_1A7C226B4(0x4000, 0), (*(v14 + 2) = v15) != 0) && (v16 = _IDSLinkPacketBufferCreate(), (*(v14 + 35) = v16) != 0))
    {
      if (address->sa_family == 30)
      {
        v17 = 30;
      }

      else
      {
        v17 = 2;
      }

      v18 = socket(v17, 1, 0);
      *v14 = v18;
      if (v18 < 0)
      {
        v69 = *__error();
        IDSAssertNonFatalErrnoWithSource(v69, "TCPLink", "/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSTCPLink.m", 356);
        v70 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          *v236 = 67109120;
          *&v236[4] = v69;
          _os_log_impl(&dword_1A7AD9000, v70, OS_LOG_TYPE_DEFAULT, "socket failed: %d", v236, 8u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"TCPLink", @"IDS", @"socket failed: %d", v71, v72, v73, v74, v75, v69);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"socket failed: %d", v76, v77, v78, v79, v69);
            }
          }
        }
      }

      else
      {
        IDSCheckFileDescriptorUsageWithSource("IDSTCPLink.m", 361, 0);
        v19 = (v14 + 6);
        __memcpy_chk();
        *&v20 = 0xAAAAAAAAAAAAAAAALL;
        *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v240 = v20;
        v241 = v20;
        v238 = v20;
        v239 = v20;
        *&v236[32] = v20;
        v237 = v20;
        *v236 = v20;
        *&v236[16] = v20;
        if (*(v14 + 25) == 30)
        {
          *buf = 1;
          setsockopt(*v14, 41, 27, buf, 4u);
        }

        p_counters = &self->_counters;
        v21 = *(v14 + 13);
        v22 = rangeCopy + 1;
LABEL_12:
        v23 = 0;
        v24 = bswap32(v21) >> 16;
        while (1)
        {
          v25 = *(v14 + 24);
          v215 = v25;
          *(v14 + 13) = bswap32(v24 + v23) >> 16;
          if (!bind(*v14, (v14 + 6), v25))
          {
            break;
          }

          SAToIPPortString(v236, 0x80uLL, (v14 + 6));
          v26 = *__error();
          v27 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v233 = v236;
            v234 = 1024;
            v235 = v26;
            _os_log_impl(&dword_1A7AD9000, v27, OS_LOG_TYPE_DEFAULT, "failed to bind to %s, errno: %d", buf, 0x12u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v205 = v26;
              _IDSLogTransport(@"TCPLink", @"IDS", @"failed to bind to %s, errno: %d", v28, v29, v30, v31, v32, v236);
              if (_IDSShouldLog(0))
              {
                v205 = v26;
                _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"failed to bind to %s, errno: %d", v33, v34, v35, v36, v236);
              }
            }
          }

          if (!v21)
          {
            goto LABEL_106;
          }

          if (v22 == ++v23)
          {
            v21 = 0;
            *(v14 + 13) = 0;
            goto LABEL_12;
          }
        }

        if (!v21 && getsockname(*v14, (v14 + 6), &v215) < 0)
        {
          v145 = *__error();
          v146 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            LODWORD(v233) = v145;
            _os_log_impl(&dword_1A7AD9000, v146, OS_LOG_TYPE_DEFAULT, "getsockname failed: %d", buf, 8u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"TCPLink", @"IDS", @"getsockname failed: %d", v147, v148, v149, v150, v151, v145);
              if (_IDSShouldLog(0))
              {
                _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"getsockname failed: %d", v152, v153, v154, v155, v145);
              }
            }
          }

LABEL_106:
          v156 = *__error();
          v157 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
          {
            *v236 = 67109120;
            *&v236[4] = v156;
            _os_log_impl(&dword_1A7AD9000, v157, OS_LOG_TYPE_DEFAULT, "bind failed: %d", v236, 8u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"TCPLink", @"IDS", @"bind failed: %d", v158, v159, v160, v161, v162, v156);
              if (_IDSShouldLog(0))
              {
                _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"bind failed: %d", v163, v164, v165, v166, v156);
              }
            }
          }

          goto LABEL_30;
        }

        SAToIPPortString(v236, 0x80uLL, (v14 + 6));
        v80 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v233 = v236;
          _os_log_impl(&dword_1A7AD9000, v80, OS_LOG_TYPE_DEFAULT, "bind to %s", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"TCPLink", @"IDS", @"bind to %s", v81, v82, v83, v84, v85, v236);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"bind to %s", v86, v87, v88, v89, v236);
            }
          }
        }

        if (setsockopt(*v14, 0xFFFF, 4130, &v214, 4u) < 0)
        {
          v90 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
          {
            *v236 = 0;
            _os_log_impl(&dword_1A7AD9000, v90, OS_LOG_TYPE_DEFAULT, "failed to turn on SO_NOSIGPIPE", v236, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"TCPLink", @"IDS", @"failed to turn on SO_NOSIGPIPE", v91, v92, v93, v94, v95, v200);
              if (_IDSShouldLog(0))
              {
                _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"failed to turn on SO_NOSIGPIPE", v96, v97, v98, v99, v203);
              }
            }
          }
        }

        if (aBlock)
        {
          *(v14 + 41) = _Block_copy(aBlock);
        }

        v14[2] = 1;
        *(v14 + 40) = selfCopy;
        *(v14 + 37) = p_counters;
        v14[3] = [(IDSTCPLink *)selfCopy isSSL];
        __memcpy_chk();
        v14[76] = connect;
        v100 = *(v14 + 35);
        v100[12] = connect;
        memcpy(v100 + 14, v14 + 6, *(v14 + 24));
        memcpy(v100 + 46, remoteAddressCopy, remoteAddressCopy->sa_len);
        if (!uuid_is_null(d))
        {
          *&v236[29] = 0xAAAAAAAAAAAAAAAALL;
          *&v133 = 0xAAAAAAAAAAAAAAAALL;
          *(&v133 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v236 = v133;
          *&v236[16] = v133;
          uuid_unparse(d, v236);
          if (setsockopt(*v14, 0xFFFF, 4360, d, 0x10u))
          {
            v134 = *__error();
            v135 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v233 = v236;
              v234 = 1024;
              v235 = v134;
              _os_log_impl(&dword_1A7AD9000, v135, OS_LOG_TYPE_DEFAULT, "setsockopt SO_DELEGATED_UUID failed for %s, errno: %d", buf, 0x12u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                v205 = v134;
                _IDSLogTransport(@"TCPLink", @"IDS", @"setsockopt SO_DELEGATED_UUID failed for %s, errno: %d", v136, v137, v138, v139, v140, v236);
                if (_IDSShouldLog(0))
                {
                  v205 = v134;
                  _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"setsockopt SO_DELEGATED_UUID failed for %s, errno: %d", v141, v142, v143, v144, v236);
                }
              }
            }
          }

          else
          {
            v180 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v180, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v233 = v236;
              _os_log_impl(&dword_1A7AD9000, v180, OS_LOG_TYPE_DEFAULT, "setsockopt SO_DELEGATED_UUID for %s", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"TCPLink", @"IDS", @"setsockopt SO_DELEGATED_UUID for %s", v181, v182, v183, v184, v185, v236);
                if (_IDSShouldLog(0))
                {
                  _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"setsockopt SO_DELEGATED_UUID for %s", v186, v187, v188, v189, v236);
                }
              }
            }
          }
        }

        v101 = fcntl(*v14, 3, 0, v205);
        if (v101 < 0 || (v200 = v101 | 4u, fcntl(*v14, 4) < 0))
        {
          v122 = *__error();
          v123 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
          {
            *v236 = 67109120;
            *&v236[4] = v122;
            _os_log_impl(&dword_1A7AD9000, v123, OS_LOG_TYPE_DEFAULT, "fcntl failed: %d", v236, 8u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"TCPLink", @"IDS", @"fcntl failed: %d", v124, v125, v126, v127, v128, v122);
              if (_IDSShouldLog(0))
              {
                _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"fcntl failed: %d", v129, v130, v131, v132, v122);
              }
            }
          }
        }

        else
        {
          if ((connect(*v14, remoteAddressCopy, remoteAddressCopy->sa_len) & 0x80000000) == 0)
          {
            v102 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
            {
              *v236 = 0;
              _os_log_impl(&dword_1A7AD9000, v102, OS_LOG_TYPE_DEFAULT, "asynchronous connect succeeded synchronously", v236, 2u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"TCPLink", @"IDS", @"asynchronous connect succeeded synchronously", v103, v104, v105, v106, v107, v200);
                if (_IDSShouldLog(0))
                {
                  _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"asynchronous connect succeeded synchronously", v108, v109, v110, v111, v204);
                }
              }
            }

            sub_1A7B44E80(v14);
LABEL_80:

            SAToIPPortString(__str, 0x80uLL, (v14 + 6));
            SAToIPPortString(v216, 0x80uLL, (v14 + 38));
            v112 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
            {
              *v236 = 136315394;
              *&v236[4] = __str;
              *&v236[12] = 2080;
              *&v236[14] = v216;
              _os_log_impl(&dword_1A7AD9000, v112, OS_LOG_TYPE_DEFAULT, "opening TCP connection from %s to %s", v236, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"TCPLink", @"IDS", @"opening TCP connection from %s to %s", v113, v114, v115, v116, v117, __str);
                if (_IDSShouldLog(0))
                {
                  _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"opening TCP connection from %s to %s", v118, v119, v120, v121, __str);
                }
              }
            }

            v57 = v210;
            *(v14 + 39) = selfCopy->_conns;
            selfCopy->_conns = v14;
            goto LABEL_45;
          }

          v167 = *__error();
          if (v167 == 36)
          {
            v168 = *v14;
            v213[0] = MEMORY[0x1E69E9820];
            v213[1] = 3221225472;
            v213[2] = sub_1A7B44BA0;
            v213[3] = &unk_1E77DD328;
            v213[4] = v14;
            IDSTransportThreadAddSocket(v168, 0, v213);
            v169 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
            {
              v170 = *v14;
              *v236 = 67109120;
              *&v236[4] = v170;
              _os_log_impl(&dword_1A7AD9000, v169, OS_LOG_TYPE_DEFAULT, "connect in progress for fd: %d", v236, 8u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"TCPLink", @"IDS", @"connect in progress for fd: %d", v171, v172, v173, v174, v175, *v14);
                if (_IDSShouldLog(0))
                {
                  _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"connect in progress for fd: %d", v176, v177, v178, v179, *v14);
                }
              }
            }

            goto LABEL_80;
          }

          v190 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
          {
            *v236 = 67109120;
            *&v236[4] = v167;
            _os_log_impl(&dword_1A7AD9000, v190, OS_LOG_TYPE_DEFAULT, "connect failed: %d", v236, 8u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"TCPLink", @"IDS", @"connect failed: %d", v191, v192, v193, v194, v195, v167);
              if (_IDSShouldLog(0))
              {
                _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"connect failed: %d", v196, v197, v198, v199, v167);
              }
            }
          }
        }
      }
    }

    else
    {
      v37 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *v236 = 0;
        _os_log_impl(&dword_1A7AD9000, v37, OS_LOG_TYPE_DEFAULT, "out of memory", v236, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"TCPLink", @"IDS", @"out of memory", v38, v39, v40, v41, v42, v200);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"out of memory", v43, v44, v45, v46, v200);
          }
        }
      }

      if (!v14)
      {
        goto LABEL_31;
      }
    }

LABEL_30:
    sub_1A7B448FC(v14);
LABEL_31:

    v47 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *v236 = 0;
      _os_log_impl(&dword_1A7AD9000, v47, OS_LOG_TYPE_DEFAULT, "failed to create connection", v236, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"TCPLink", @"IDS", @"failed to create connection", v48, v49, v50, v51, v52, v200);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"failed to create connection", v53, v54, v55, v56, v201);
        }
      }
    }

    v19 = 0;
    v57 = v210;
    goto LABEL_45;
  }

  v58 = OSLogHandleForTransportCategory();
  v57 = handlerCopy;
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    *v236 = 0;
    _os_log_impl(&dword_1A7AD9000, v58, OS_LOG_TYPE_DEFAULT, "link invalidated", v236, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"TCPLink", @"IDS", @"link invalidated", v59, v60, v61, v62, v63, v200);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"link invalidated", v64, v65, v66, v67, v202);
      }
    }
  }

  v19 = 0;
LABEL_45:

  return v19;
}

- (BOOL)disconnect:(sockaddr_in *)disconnect remoteAddress:(sockaddr_in *)address
{
  v48 = *MEMORY[0x1E69E9840];
  if (!self->_getPacketLength)
  {
    v23 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v40 = 0;
      _os_log_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_DEFAULT, "link invalidated", v40, 2u);
    }

    v13 = os_log_shim_legacy_logging_enabled();
    if (!v13)
    {
      return v13;
    }

    v13 = _IDSShouldLogTransport();
    if (!v13)
    {
      return v13;
    }

    _IDSLogTransport(@"TCPLink", @"IDS", @"link invalidated", v24, v25, v26, v27, v28, v36);
    v13 = _IDSShouldLog(0);
    if (!v13)
    {
      return v13;
    }

    _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"link invalidated", v29, v30, v31, v32, v37);
LABEL_26:
    LOBYTE(v13) = 0;
    return v13;
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v46 = v4;
  v47 = v4;
  v44 = v4;
  v45 = v4;
  v42 = v4;
  v43 = v4;
  *v40 = v4;
  v41 = v4;
  conns = self->_conns;
  p_conns = &self->_conns;
  v6 = conns;
  if (!conns)
  {
LABEL_14:
    SAToIPPortString(v40, 0x80uLL, address);
    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v39 = v40;
      _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "no connection for %s", buf, 0xCu);
    }

    v13 = os_log_shim_legacy_logging_enabled();
    if (!v13)
    {
      return v13;
    }

    v13 = _IDSShouldLogTransport();
    if (!v13)
    {
      return v13;
    }

    _IDSLogTransport(@"TCPLink", @"IDS", @"no connection for %s", v14, v15, v16, v17, v18, v40);
    v13 = _IDSShouldLog(0);
    if (!v13)
    {
      return v13;
    }

    _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"no connection for %s", v19, v20, v21, v22, v40);
    goto LABEL_26;
  }

  v8 = 0;
  while (1)
  {
    v9 = v6;
    if (*&v6->var6.ss_len == *&disconnect->sin_len && v6->var6.__ss_align == *disconnect->sin_zero && *&v6->var7.ss_len == *&address->sin_len && v6->var7.__ss_align == *address->sin_zero)
    {
      break;
    }

    v6 = v6->var12;
    v8 = v9;
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  if (v8)
  {
    p_var12 = &v8->var12;
  }

  else
  {
    p_var12 = p_conns;
  }

  *p_var12 = v6->var12;
  v34 = v6->var3 - 1;
  v6->var3 = v34;
  if (!v34)
  {
    sub_1A7B448FC(v6);
  }

  LOBYTE(v13) = 1;
  return v13;
}

- (void)processIncomingPacket:(id *)packet
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained link:self didReceivePacket:packet fromDeviceUniqueID:self->_deviceUniqueID cbuuid:self->_cbuuid];
}

- (unint64_t)sendPacketBufferArray:(id *)array arraySize:(int)size toDeviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  v67 = *MEMORY[0x1E69E9840];
  dCopy = d;
  cbuuidCopy = cbuuid;
  v12 = cbuuidCopy;
  if (!self->_getPacketLength)
  {
    v27 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v27, OS_LOG_TYPE_DEFAULT, "link invalidated", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"TCPLink", @"IDS", @"link invalidated", v28, v29, v30, v31, v32, v60);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"link invalidated", v33, v34, v35, v36, v62);
        }
      }
    }

    v25 = 6;
    goto LABEL_28;
  }

  if (cbuuidCopy && ([cbuuidCopy isEqualToString:self->_cbuuid] & 1) == 0)
  {
    v37 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      cbuuid = self->_cbuuid;
      *buf = 138412546;
      v64 = v12;
      v65 = 2112;
      cbuuidCopy2 = cbuuid;
      _os_log_impl(&dword_1A7AD9000, v37, OS_LOG_TYPE_DEFAULT, "wrong device: %@ %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"TCPLink", @"IDS", @"wrong device: %@ %@", v39, v40, v41, v42, v43, v12);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"wrong device: %@ %@", v44, v45, v46, v47, v12);
        }
      }
    }

    v25 = 10;
    goto LABEL_28;
  }

  if (size < 1)
  {
    v25 = 11;
    goto LABEL_43;
  }

  v13 = [(IDSTCPLink *)self _getIDSTCPConnection:*array];
  if (!v13)
  {
    v25 = 11;
    goto LABEL_41;
  }

  v14 = v13;
  if ((v13->var0 & 0x80000000) == 0)
  {
    if (v13->var9)
    {
      v15 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "drop packet", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        _IDSLogTransport(@"TCPLink", @"IDS", @"drop packet", v16, v17, v18, v19, v20, v60);
        v25 = 0;
        if ((_IDSShouldLog(0) & 1) == 0)
        {
          goto LABEL_41;
        }

        v26 = @"drop packet";
LABEL_38:
        _IDSLogV(0, @"IDSFoundation", @"TCPLink", v26, v21, v22, v23, v24, v61);
        goto LABEL_41;
      }

      v25 = 0;
      goto LABEL_41;
    }

    if (v13->var4)
    {
      sizeCopy = size;
      arrayCopy = array;
      do
      {
        v58 = *arrayCopy++;
        v59 = bswap32(*(v58 + 16) + 3) >> 16;
        IDSLinkPacketBufferAddBufferStart(v58, -8);
        **v58 = 66327;
        *(*v58 + 3) = v59;
        --sizeCopy;
      }

      while (sizeCopy);
    }

    v25 = sub_1A7B43CA4(v14);
    if (v25 == 14)
    {
      if (*(v14 + 5))
      {
        v25 = 14;
      }

      else
      {
        v25 = 0;
      }
    }

LABEL_28:
    if (size <= 0)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  v48 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v48, OS_LOG_TYPE_DEFAULT, "connection closed", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    _IDSLogTransport(@"TCPLink", @"IDS", @"connection closed", v49, v50, v51, v52, v53, v60);
    v25 = 6;
    if ((_IDSShouldLog(0) & 1) == 0)
    {
      goto LABEL_41;
    }

    v26 = @"connection closed";
    goto LABEL_38;
  }

  v25 = 6;
LABEL_41:
  sizeCopy2 = size;
  do
  {
    _IDSLinkPacketBufferRelease("/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSTCPLink.m", 1045, *array++);
    --sizeCopy2;
  }

  while (sizeCopy2);
LABEL_43:

  return v25;
}

- (id)generateLinkReport:(double)report isCurrentLink:(BOOL)link
{
  previousReportTime = self->_previousReportTime;
  if (previousReportTime == 0.0)
  {
    v20 = 0;
  }

  else
  {
    v7 = report - previousReportTime;
    v8 = self->_counters._totalBytesSent - self->_previousCounters._totalBytesSent;
    v9 = self->_counters._totalBytesReceived - self->_previousCounters._totalBytesReceived;
    v24 = self->_counters._totalPacketsSent - self->_previousCounters._totalPacketsSent;
    v25 = MEMORY[0x1E696AEC0];
    linkCopy = link;
    v10 = formattedBytes(v8);
    v11 = formattedSpeed(((8 * v8) / v7 + 0.5));
    totalPacketsSent = self->_counters._totalPacketsSent;
    v13 = formattedBytes(self->_counters._totalBytesSent);
    v14 = self->_counters._totalPacketsReceived - self->_previousCounters._totalPacketsReceived;
    v15 = formattedBytes(v9);
    v16 = formattedSpeed(((8 * v9) / v7 + 0.5));
    totalPacketsReceived = self->_counters._totalPacketsReceived;
    v18 = formattedBytes(self->_counters._totalBytesReceived);
    v19 = 32;
    if (linkCopy)
    {
      v19 = 42;
    }

    v20 = [v25 stringWithFormat:@"%c Tx %6llu pkts %@B %@bps     %6llu pkts %@B\n                        Rx %6llu pkts %@B %@bps     %6llu pkts %@B\n", v19, v24, v10, v11, totalPacketsSent, v13, v14, v15, v16, totalPacketsReceived, v18];
  }

  self->_previousReportTime = report;
  v21 = *&self->_counters._totalBytesReceived;
  *&self->_previousCounters._totalBytesSent = *&self->_counters._totalBytesSent;
  *&self->_previousCounters._totalBytesReceived = v21;

  return v20;
}

- (void)setWiFiAssistState:(BOOL)state
{
  v28 = *MEMORY[0x1E69E9840];
  conns = self->_conns;
  if (conns)
  {
    stateCopy = state;
    if (state)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    do
    {
      if ([(NSIndexSet *)self->_cellularInterfaceIndices containsIndex:conns->var11])
      {
        var0 = conns->var0;
        v20 = v6;
        v21 = stateCopy;
        v8 = setsockopt(var0, 0xFFFF, 4387, &v20, 8u);
        if (!v8)
        {
          v8 = setsockopt(var0, 0xFFFF, 4373, &v21, 4u);
        }

        if (v8 == -1)
        {
          v9 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = *__error();
            *buf = 136315650;
            v23 = "[IDSTCPLink setWiFiAssistState:]";
            v24 = 1024;
            v25 = 1094;
            v26 = 1024;
            v27 = v10;
            _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d setsockopt failed %d", buf, 0x18u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
          {
            __error();
            _IDSLogTransport(@"TCPLink", @"IDS", @"%s:%d setsockopt failed %d", v11, v12, v13, v14, v15, "[IDSTCPLink setWiFiAssistState:]");
            if (_IDSShouldLog(0))
            {
              __error();
              _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"%s:%d setsockopt failed %d", v16, v17, v18, v19, "[IDSTCPLink setWiFiAssistState:]");
            }
          }
        }

        else
        {
          self->_wifiAssistEnabled = stateCopy;
        }
      }

      conns = conns->var12;
    }

    while (conns);
  }
}

- (IDSLinkDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (IDSLinkDelegate)alternateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_alternateDelegate);

  return WeakRetained;
}

@end