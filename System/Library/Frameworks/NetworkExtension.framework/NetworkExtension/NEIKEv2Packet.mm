@interface NEIKEv2Packet
- (BOOL)addNotification:(void *)notification data:;
- (BOOL)addNotifyPayload:(void *)payload;
- (NSObject)initOutbound;
- (NSObject)initResponse:(NSObject *)response;
- (id)copyPacketDatagramsForIKESA:(char *)a;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
- (uint64_t)decryptReceivedPacketWithIKESA:(_BYTE *)a;
- (uint64_t)hasErrors;
- (uint64_t)hasNotification:(void *)notification;
- (uint64_t)initInbound;
- (uint64_t)parsePacketData:(unint64_t)data firstPayloadType:(void *)type ikeSA:;
- (uint64_t)processDecryptedPacketForIKESA:(uint64_t)a;
- (unsigned)copyShortDescription;
- (void)addNotification:(void *)notification fromArray:(void *)array toPayloads:;
- (void)constructHeadersForNextPayloadType:(uint64_t)type payloadsLength:(unsigned int)length fragmentNumber:(unsigned int)number totalFragments:(void *)fragments securityContext:;
- (void)copyNotification:(void *)notification;
- (void)filloutPayloads;
- (void)gatherPayloads;
- (void)setRawPayloads:(uint64_t)payloads;
@end

@implementation NEIKEv2Packet

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v5 = *&indent;
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  typeDescription = [(NEIKEv2Packet *)self typeDescription];
  [v7 appendPrettyObject:typeDescription withName:@"Exchange" andIndent:v5 options:options];

  if (self)
  {
    [v7 appendPrettyObject:objc_getProperty(self withName:v9 andIndent:32 options:{1), @"Initiator SPI", v5, options}];
    [v7 appendPrettyObject:objc_getProperty(self withName:v10 andIndent:40 options:{1), @"Responder SPI", v5, options}];
    [v7 appendPrettyBOOL:self->_isInitiator withName:@"Initiator" andIndent:v5 options:options];
    [v7 appendPrettyBOOL:self->_isResponse withName:@"Response" andIndent:v5 options:options];
    [v7 appendPrettyInt:self->_messageID withName:@"Message ID" andIndent:v5 options:options];
    rawPayloads = self->_rawPayloads;
  }

  else
  {
    [v7 appendPrettyObject:0 withName:@"Initiator SPI" andIndent:v5 options:options];
    [v7 appendPrettyObject:0 withName:@"Responder SPI" andIndent:v5 options:options];
    [v7 appendPrettyBOOL:0 withName:@"Initiator" andIndent:v5 options:options];
    [v7 appendPrettyBOOL:0 withName:@"Response" andIndent:v5 options:options];
    [v7 appendPrettyInt:0 withName:@"Message ID" andIndent:v5 options:options];
    rawPayloads = 0;
  }

  [v7 appendPrettyObject:rawPayloads withName:@"Payloads" andIndent:v5 options:options];

  return v7;
}

- (void)filloutPayloads
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_FAULT, "Subclasses of NEIKEv2Packet must implement filloutPayloads", v3, 2u);
  }
}

- (void)gatherPayloads
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_FAULT, "Subclasses of NEIKEv2Packet must implement gatherPayloads", v3, 2u);
  }
}

- (unsigned)copyShortDescription
{
  if (result)
  {
    v1 = result;
    v2 = objc_alloc(MEMORY[0x1E696AEC0]);
    typeDescription = [v1 typeDescription];
    if (*(v1 + 11))
    {
      v5 = "I";
    }

    else
    {
      v5 = "R";
    }

    if (*(v1 + 10))
    {
      v6 = "resp";
    }

    else
    {
      v6 = "req";
    }

    v7 = v1[7];
    v8 = objc_getProperty(v1, v3, 32, 1);
    v10 = [v2 initWithFormat:@"[%@ %s %s%d %@-%@]", typeDescription, v5, v6, v7, v8, objc_getProperty(v1, v9, 40, 1)];

    return v10;
  }

  return result;
}

- (void)setRawPayloads:(uint64_t)payloads
{
  if (payloads)
  {
    objc_storeStrong((payloads + 80), a2);
  }
}

- (void)addNotification:(void *)notification fromArray:(void *)array toPayloads:
{
  v22 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  arrayCopy = array;
  if (self)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = notificationCopy;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * v13);
          if (v14)
          {
            if (v14[4] == a2)
            {
              v16 = v14;

              [arrayCopy addObject:{v16, v17}];
              [v9 removeObject:v16];
              v9 = v16;
              goto LABEL_16;
            }
          }

          else if (!a2)
          {
            goto LABEL_16;
          }

          ++v13;
        }

        while (v11 != v13);
        v15 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        v11 = v15;
      }

      while (v15);
    }

LABEL_16:
  }
}

- (NSObject)initOutbound
{
  if (!self)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = NEIKEv2Packet;
  v1 = objc_msgSendSuper2(&v6, sel_init);
  if (!v1)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      *v5 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_FAULT, "[super init] failed", v5, 2u);
    }

    goto LABEL_10;
  }

  v2 = v1;
  if ([v1 isMemberOfClass:objc_opt_class()])
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *v5 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_FAULT, "Must use a subclass of NEIKEv2Packet to create packets", v5, 2u);
    }

LABEL_10:
    return 0;
  }

  return v2;
}

- (uint64_t)initInbound
{
  if (!self)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = NEIKEv2Packet;
  v1 = objc_msgSendSuper2(&v6, sel_init);
  if (!v1)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      *v5 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_FAULT, "[super init] failed", v5, 2u);
    }

    goto LABEL_11;
  }

  v2 = v1;
  if ([v1 isMemberOfClass:objc_opt_class()])
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *v5 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_FAULT, "Must use a subclass of NEIKEv2Packet to create inbound packets", v5, 2u);
    }

LABEL_11:
    return 0;
  }

  *(v2 + 12) = 1;
  return v2;
}

- (NSObject)initResponse:(NSObject *)response
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (response)
  {
    if (v3)
    {
      if (v3[12])
      {
        v11.receiver = response;
        v11.super_class = NEIKEv2Packet;
        v5 = [&v11 init];
        if (!v5)
        {
          response = ne_log_obj();
          if (os_log_type_enabled(response, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_1BA83C000, response, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
          }

          goto LABEL_17;
        }

        response = v5;
        if (![v5 isMemberOfClass:objc_opt_class()])
        {
          BYTE2(response[1].isa) = 1;
          HIDWORD(response[3].isa) = v4[7];
          goto LABEL_7;
        }

        v7 = ne_log_obj();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
LABEL_16:

LABEL_17:
          response = 0;
          goto LABEL_7;
        }

        *buf = 0;
        v8 = "Must use a subclass of NEIKEv2Packet to create outbound packets";
        v9 = v7;
        v10 = 2;
LABEL_19:
        _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, v8, buf, v10);
        goto LABEL_16;
      }

      v7 = ne_log_obj();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_16;
      }

      *buf = 136315138;
      v13 = "[NEIKEv2Packet initResponse:]";
      v8 = "%s called with null originalMessage.isInbound";
    }

    else
    {
      v7 = ne_log_obj();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_16;
      }

      *buf = 136315138;
      v13 = "[NEIKEv2Packet initResponse:]";
      v8 = "%s called with null originalMessage";
    }

    v9 = v7;
    v10 = 12;
    goto LABEL_19;
  }

LABEL_7:

  return response;
}

- (void)constructHeadersForNextPayloadType:(uint64_t)type payloadsLength:(unsigned int)length fragmentNumber:(unsigned int)number totalFragments:(void *)fragments securityContext:
{
  v10 = length != 0;
  v11 = number != 0;
  fragmentsCopy = fragments;
  v13 = [fragmentsCopy overheadForPlaintextLength:type];
  v14 = objc_alloc(MEMORY[0x1E695DF88]);

  v15 = !v10 || !v11;
  v28 = v10 && v11;
  if (v10 && v11)
  {
    v16 = 8;
  }

  else
  {
    v16 = 4;
  }

  v17 = 46;
  if (!v15)
  {
    v17 = 53;
  }

  if (fragments)
  {
    v18 = v16 + 28;
  }

  else
  {
    v18 = 28;
  }

  if (fragments)
  {
    v19 = v17;
  }

  else
  {
    v19 = a2;
  }

  v20 = [v14 initWithCapacity:v18];
  v35 = 0;
  v21 = 32;
  v31[0] = [objc_getProperty(self v22];
  v31[1] = [objc_getProperty(self v23];
  v32 = v19;
  v33 = 32;
  exchangeType = [self exchangeType];
  if (*(self + 11))
  {
    v35 = 8;
    v21 = 40;
  }

  v24 = v13 + type;
  if (*(self + 10))
  {
    v35 = v21;
  }

  v36 = bswap32(*(self + 28));
  v37 = bswap32(v18 + v24);
  [v20 appendBytes:v31 length:28];
  if (fragments)
  {
    v30[0] = a2;
    v30[1] = bswap32(v24 + v16) >> 16;
    [v20 appendBytes:v30 length:4];
    if (v28)
    {
      v29[0] = __rev16(length);
      v29[1] = __rev16(number);
      [v20 appendBytes:v29 length:4];
    }
  }

  return v20;
}

- (id)copyPacketDatagramsForIKESA:(char *)a
{
  v129 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a[12] != 1)
  {
    v4 = *(a + 9);
    if (v4)
    {
      v5 = v4;
      goto LABEL_88;
    }

    [a gatherPayloads];
    initiatorSPI = [(NEIKEv2IKESA *)v3 initiatorSPI];
    objc_setProperty_atomic(a, v8, initiatorSPI, 32);

    responderSPI = [(NEIKEv2IKESA *)v3 responderSPI];
    objc_setProperty_atomic(a, v11, responderSPI, 40);

    if (v3)
    {
      v12 = v3[9];
    }

    else
    {
      v12 = 0;
    }

    location = (a + 72);
    a[11] = v12 & 1;
    v13 = *(a + 10);
    v14 = [v13 count];
    aCopy = a;
    if (v14)
    {
      v104 = v3;
      v114 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2 * v14];
      v102 = v13;
      objectEnumerator = [v13 objectEnumerator];
      nextObject = [objectEnumerator nextObject];
      v17 = 0;
      while (1)
      {
        nextObject2 = [objectEnumerator nextObject];
        if (([nextObject generatePayloadData] & 1) == 0)
        {
          break;
        }

        if (nextObject)
        {
          v19 = nextObject[2];
          v20 = nextObject[3];
          v21 = nextObject[2];
          nextObject[2] = 0;

          v22 = nextObject[3];
          nextObject[3] = 0;
        }

        else
        {
          v19 = 0;
          v20 = 0;
        }

        *v127 = 0;
        v127[0] = [nextObject2 type];
        v23 = [v19 length];
        v119 = 0u;
        v120 = 0u;
        v121 = 0u;
        v122 = 0u;
        v24 = v20;
        v25 = [v24 countByEnumeratingWithState:&v119 objects:v128 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v120;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v120 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v23 += [*(*(&v119 + 1) + 8 * i) length];
            }

            v26 = [v24 countByEnumeratingWithState:&v119 objects:v128 count:16];
          }

          while (v26);
        }

        v29 = v23 + 4;
        *&v127[2] = bswap32(v23 + 4) >> 16;
        if (v19)
        {
          v30 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{objc_msgSend(v19, "length") + 4}];
          [v30 appendBytes:v127 length:4];
          [v30 appendData:v19];
        }

        else
        {
          v30 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v127 length:4];
        }

        [v114 addObject:v30];

        [v114 addObjectsFromArray:v24];
        v31 = nextObject2;

        v17 += v29;
        nextObject = v31;
        if (!v31)
        {

          v13 = v102;
          v3 = v104;
          a = aCopy;
          goto LABEL_25;
        }
      }

      v93 = ne_log_large_obj();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
      {
        *v127 = 138412290;
        *&v127[4] = nextObject;
        _os_log_error_impl(&dword_1BA83C000, v93, OS_LOG_TYPE_ERROR, "Failed to generate payload data for %@", v127, 0xCu);
      }

      v5 = 0;
      v13 = v102;
      v3 = v104;
      goto LABEL_86;
    }

    v17 = 0;
    v114 = MEMORY[0x1E695E0F0];
LABEL_25:
    firstObject = [v13 firstObject];
    type = [firstObject type];

    if (![a encryptPayloads])
    {
      v58 = [(NEIKEv2Packet *)a constructHeadersForNextPayloadType:type payloadsLength:v17 fragmentNumber:0 totalFragments:0 securityContext:0];
      if (!v58)
      {
        v5 = 0;
        goto LABEL_86;
      }

      v59 = v58;
      v38 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{-[NSObject length](v58, "length") + v17}];
      v60 = v59;
      [v38 appendData:v59];
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v61 = v114;
      v62 = [v61 countByEnumeratingWithState:&v115 objects:v125 count:16];
      v63 = location;
      if (v62)
      {
        v64 = v62;
        v65 = *v116;
        do
        {
          for (j = 0; j != v64; ++j)
          {
            if (*v116 != v65)
            {
              objc_enumerationMutation(v61);
            }

            [v38 appendData:*(*(&v115 + 1) + 8 * j)];
          }

          v64 = [v61 countByEnumeratingWithState:&v115 objects:v125 count:16];
        }

        while (v64);
      }

      v124 = v38;
      v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v124 count:1];
      objc_storeStrong(location, v67);

      v68 = v60;
LABEL_85:

      v5 = *v63;
LABEL_86:

LABEL_87:
      goto LABEL_88;
    }

    v34 = [NEIKEv2PacketConstructor alloc];
    v35 = v114;
    v36 = v35;
    if (!v34)
    {
      v38 = 0;
LABEL_31:

      if (v3)
      {
        if (v3[10])
        {
          v41 = v3;
          headerOverhead = [(NEIKEv2IKESA *)v41 headerOverhead];
          v45 = [(NEIKEv2IKESA *)v41 maximumPacketSize]- headerOverhead - 32;
          v47 = objc_getProperty(v41, v46, 208, 1);

          LODWORD(v45) = [v47 maximumPayloadSizeWithinLimit:v45];
          if (v45 < v17)
          {
            v48 = v41;
            headerOverhead2 = [(NEIKEv2IKESA *)v48 headerOverhead];
            v52 = [(NEIKEv2IKESA *)v48 maximumPacketSize]- headerOverhead2 - 36;
            v54 = objc_getProperty(v48, v53, 208, 1);
            self = v48;

            v55 = [v54 maximumPayloadSizeWithinLimit:v52];
            if (v55)
            {
              if (v17 / v55 * v55 == v17)
              {
                v56 = v17 / v55;
              }

              else
              {
                LOWORD(v56) = v17 / v55 + 1;
              }

              v57 = ne_log_obj();
              if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
              {
                *v127 = 67109376;
                *&v127[4] = v56;
                *&v127[8] = 1024;
                *&v127[10] = v55;
                _os_log_impl(&dword_1BA83C000, v57, OS_LOG_TYPE_INFO, "Splitting packet into %u fragments with max size %u each", v127, 0xEu);
              }

              v101 = v36;
              v103 = v13;
              v105 = v3;

              obj = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v56];
              if (v56)
              {
                v106 = v56;
                v108 = v56;
                v110 = 0;
                v77 = 1;
                v78 = v17;
                v79 = 1;
                v107 = v55;
                while (1)
                {
                  v80 = v55 >= v78 ? v78 : v55;
                  v81 = type;
                  v82 = v79 == 1 ? type : 0;
                  v83 = objc_getProperty(self, v76, 208, 1);
                  v84 = [(NEIKEv2Packet *)aCopy constructHeadersForNextPayloadType:v82 payloadsLength:v80 fragmentNumber:v79 totalFragments:v108 securityContext:v83];

                  if (!v84)
                  {
                    break;
                  }

                  if (v79 == 1)
                  {
                    v86 = v84;

                    v110 = v86;
                  }

                  v87 = objc_getProperty(self, v85, 208, 1);
                  v88 = [v87 constructEncryptedPacketFromConstructor:v38 plaintextLength:v80 authenticatedHeaders:v84];

                  v89 = ne_log_obj();
                  if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
                  {
                    if (v38)
                    {
                      v90 = v38[1];
                      v91 = v38[2];
                    }

                    else
                    {
                      v90 = 0;
                      v91 = 0;
                    }

                    *v127 = 67109632;
                    *&v127[4] = v77;
                    *&v127[8] = 2048;
                    *&v127[10] = v90;
                    *&v127[18] = 2048;
                    *&v127[20] = v91;
                    _os_log_debug_impl(&dword_1BA83C000, v89, OS_LOG_TYPE_DEBUG, "Construction state after processing fragment %u: Index %zu, Offset %zu", v127, 0x1Cu);
                  }

                  if (!v88)
                  {
                    goto LABEL_111;
                  }

                  [obj addObject:v88];
                  v78 -= v80;

                  v77 = ++v79;
                  type = v81;
                  v55 = v107;
                  if (v79 > v106)
                  {
                    goto LABEL_78;
                  }
                }

LABEL_112:
                v13 = v103;
                v3 = v105;
                v36 = v101;
                v68 = v110;
                goto LABEL_113;
              }

              v110 = 0;
LABEL_78:
              if (!v38 || v38[1] != 0x7FFFFFFFFFFFFFFFLL || v38[2])
              {
                v84 = ne_log_obj();
                if (os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
                {
                  if (v38)
                  {
                    v99 = v38[1];
                    v100 = v38[2];
                  }

                  else
                  {
                    v99 = 0;
                    v100 = 0;
                  }

                  *v127 = 134218240;
                  *&v127[4] = v99;
                  *&v127[12] = 2048;
                  *&v127[14] = v100;
                  _os_log_fault_impl(&dword_1BA83C000, v84, OS_LOG_TYPE_FAULT, "Packet construction state not finalized: index %zu, offset %zu", v127, 0x16u);
                }

LABEL_111:

                goto LABEL_112;
              }

              v74 = obj;
              objc_storeStrong(location, obj);
              v13 = v103;
              v3 = v105;
              v36 = v101;
              v68 = v110;
              goto LABEL_82;
            }

            obj = ne_log_obj();
            if (os_log_type_enabled(obj, OS_LOG_TYPE_FAULT))
            {
              *v127 = 0;
              _os_log_fault_impl(&dword_1BA83C000, obj, OS_LOG_TYPE_FAULT, "Fragment size of 0 is impossible!", v127, 2u);
            }

            goto LABEL_105;
          }
        }

        Property = objc_getProperty(v3, v40, 208, 1);
      }

      else
      {
        Property = 0;
      }

      v70 = Property;
      v68 = [(NEIKEv2Packet *)aCopy constructHeadersForNextPayloadType:type payloadsLength:v17 fragmentNumber:0 totalFragments:0 securityContext:v70];

      obj = v68;
      if (!v68)
      {
LABEL_114:

        v5 = 0;
        goto LABEL_87;
      }

      if (v3)
      {
        v72 = objc_getProperty(v3, v71, 208, 1);
      }

      else
      {
        v72 = 0;
      }

      v73 = v72;
      v74 = [v73 constructEncryptedPacketFromConstructor:v38 plaintextLength:v17 authenticatedHeaders:obj];

      if (v74)
      {
        if (v38 && v38[1] == 0x7FFFFFFFFFFFFFFFLL && !v38[2])
        {
          v126 = v74;
          v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v126 count:1];
          objc_storeStrong(location, v75);

          v68 = obj;
LABEL_82:

          if ([aCopy exchangeType] == 43 && !-[NEIKEv2IntermediatePacket constructAuthenticatedDataWithPayloads:payloadsLength:authenticatedHeaders:](aCopy, v36, v17, v68))
          {
            obj = ne_log_obj();
            if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
            {
              *v127 = 0;
              _os_log_error_impl(&dword_1BA83C000, obj, OS_LOG_TYPE_ERROR, "Failed to get construct data vector for IKE_INTERMEDIATE", v127, 2u);
            }

            goto LABEL_113;
          }

          v63 = location;
          goto LABEL_85;
        }

        v96 = ne_log_obj();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_FAULT))
        {
          if (v38)
          {
            v97 = v38[1];
            v98 = v38[2];
          }

          else
          {
            v97 = 0;
            v98 = 0;
          }

          *v127 = 134218240;
          *&v127[4] = v97;
          *&v127[12] = 2048;
          *&v127[14] = v98;
          _os_log_fault_impl(&dword_1BA83C000, v96, OS_LOG_TYPE_FAULT, "Packet construction state not finalized: index %zu, offset %zu", v127, 0x16u);
        }
      }

LABEL_105:
      v68 = 0;
LABEL_113:

      goto LABEL_114;
    }

    if (v35)
    {
      *v127 = v34;
      *&v127[8] = NEIKEv2PacketConstructor;
      v37 = objc_msgSendSuper2(v127, sel_init);
      if (v37)
      {
        v38 = v37;
        v39 = v36;
        v34 = v38[3];
        v38[3] = v39;
LABEL_30:

        goto LABEL_31;
      }

      v34 = ne_log_obj();
      if (os_log_type_enabled(&v34->super, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1BA83C000, &v34->super, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
      }
    }

    else
    {
      v95 = ne_log_obj();
      if (os_log_type_enabled(v95, OS_LOG_TYPE_FAULT))
      {
        *v127 = 136315138;
        *&v127[4] = "[NEIKEv2PacketConstructor initWithPayloadVector:]";
        _os_log_fault_impl(&dword_1BA83C000, v95, OS_LOG_TYPE_FAULT, "%s called with null payloadVector", v127, 0xCu);
      }
    }

    v38 = 0;
    goto LABEL_30;
  }

  v94 = ne_log_obj();
  if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
  {
    *v127 = 136315138;
    *&v127[4] = "[NEIKEv2Packet copyPacketDatagramsForIKESA:]";
    _os_log_fault_impl(&dword_1BA83C000, v94, OS_LOG_TYPE_FAULT, "%s called with null !self.isInbound", v127, 0xCu);
  }

  v5 = 0;
LABEL_88:

  return v5;
}

- (uint64_t)parsePacketData:(unint64_t)data firstPayloadType:(void *)type ikeSA:
{
  v95 = *MEMORY[0x1E69E9840];
  v7 = a2;
  self = type;
  if (!self)
  {
LABEL_118:
    v63 = 0;
    goto LABEL_107;
  }

  v8 = [v7 length];
  if (*(self + 8))
  {
    v9 = 0;
  }

  else
  {
    v9 = 28;
  }

  bytes = [v7 bytes];
  v13 = v8 - v9;
  if (!data)
  {
LABEL_105:
    if (v13)
    {
      v76 = ne_log_obj();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        copyShortDescription = [(NEIKEv2Packet *)self copyShortDescription];
        *buf = 138412546;
        v88 = copyShortDescription;
        v89 = 1024;
        LODWORD(dataCopy8) = v13;
        _os_log_error_impl(&dword_1BA83C000, v76, OS_LOG_TYPE_ERROR, "%@ Found additional %u bytes after parsing completed", buf, 0x12u);
      }
    }

    v63 = 1;
    goto LABEL_107;
  }

  v14 = (bytes + v9);
  *&v12 = 136315138;
  v79 = v12;
  selfCopy = self;
  while (1)
  {
    if (objc_getProperty(self, v11, 48, 1))
    {
      goto LABEL_105;
    }

    if (v13 <= 3)
    {
      v65 = ne_log_obj();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        copyShortDescription2 = [(NEIKEv2Packet *)self copyShortDescription];
        *buf = 138413058;
        v88 = copyShortDescription2;
        v89 = 2048;
        dataCopy8 = data;
        v91 = 1024;
        v92 = v13;
        v93 = 2048;
        v94 = 4;
        v67 = "%@ Not enough remaining bytes for payload type %zu header (%u < %zu)";
LABEL_115:
        v68 = v65;
        v69 = 38;
        goto LABEL_131;
      }

LABEL_117:

      goto LABEL_118;
    }

    v15 = bswap32(*(v14 + 1)) >> 16;
    if (v15 <= 3)
    {
      v65 = ne_log_obj();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        copyShortDescription2 = [(NEIKEv2Packet *)self copyShortDescription];
        *buf = 138413058;
        v88 = copyShortDescription2;
        v89 = 2048;
        dataCopy8 = data;
        v91 = 1024;
        v92 = v15;
        v93 = 2048;
        v94 = 4;
        v67 = "%@ Payload type %zu claimed length too short (%u < %zu)";
        goto LABEL_115;
      }

      goto LABEL_117;
    }

    if (v13 < v15)
    {
      v65 = ne_log_obj();
      if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_117;
      }

      copyShortDescription2 = [(NEIKEv2Packet *)self copyShortDescription];
      *buf = 138413058;
      v88 = copyShortDescription2;
      v89 = 2048;
      dataCopy8 = data;
      v91 = 1024;
      v92 = v15;
      v93 = 1024;
      LODWORD(v94) = v13;
      v67 = "%@ Not enough remaining bytes for payload type %zu (%u > %u)";
      v68 = v65;
      v69 = 34;
LABEL_131:
      _os_log_error_impl(&dword_1BA83C000, v68, OS_LOG_TYPE_ERROR, v67, buf, v69);

      goto LABEL_117;
    }

    if (data == 53 || data == 46)
    {
      v16 = objc_alloc(MEMORY[0x1E695DEF0]);
      v83[0] = MEMORY[0x1E69E9820];
      v83[1] = 3221225472;
      v83[2] = __56__NEIKEv2Packet_parsePacketData_firstPayloadType_ikeSA___block_invoke;
      v83[3] = &unk_1E7F08698;
      v84 = v7;
      v17 = [v16 initWithBytesNoCopy:v14 + 4 length:(v15 - 4) deallocator:v83];
    }

    else
    {
      v17 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v14 + 4 length:(v15 - 4) freeWhenDone:0];
    }

    if (!self || data != 47 || (*(self + 10) & 1) == 0)
    {
      break;
    }

    v80 = v13;
    v18 = v7;
    v19 = [NEIKEv2ResponseConfigPayload alloc];
    v21 = objc_getProperty(self, v20, 88, 1);
    configurationRequest = [v21 configurationRequest];
    v23 = v17;
    v24 = v17;
    v25 = configurationRequest;
    if (v19)
    {
      if (v24)
      {
        v26 = [(NEIKEv2Payload *)v19 init];
        v19 = v26;
        if (!v26)
        {
          goto LABEL_25;
        }

        v26->super.super._isInbound = 1;
        objc_setProperty_atomic(v26, v27, v25, 40);
        if ([(NEIKEv2ResponseConfigPayload *)v19 parsePayloadData:v24])
        {
          goto LABEL_25;
        }

        v28 = ne_log_obj();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v88 = v19;
          _os_log_error_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_ERROR, "Failed to parse payload data for %@", buf, 0xCu);
        }
      }

      else
      {
        v28 = ne_log_obj();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          *buf = v79;
          v88 = "[NEIKEv2ResponseConfigPayload initWithResponseConfigPayload:configRequest:]";
          _os_log_fault_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_FAULT, "%s called with null data", buf, 0xCu);
        }
      }

      v19 = 0;
    }

LABEL_25:

    v7 = v18;
    v17 = v23;
    self = selfCopy;
    v13 = v80;
LABEL_59:

    v38 = v14[1];
    if (!v19)
    {
      v59 = v38 >= 0;
      goto LABEL_89;
    }

    if (data == 53 || data == 46)
    {
      if ([self encryptPayloads])
      {
        if (*(self + 8) != 1)
        {
          selfCopy2 = self;
          v40 = v17;
          v41 = v19;
          objc_setProperty_atomic(selfCopy2, v42, v41, 48);
          Property = objc_getProperty(v41, v43, 32, 1);
          v45 = MEMORY[0x1E695DF88];
          v46 = Property;
          v47 = [[v45 alloc] initWithCapacity:{objc_msgSend(v46, "length") + 32}];
          [v47 appendBytes:objc_msgSend(v7 length:{"bytes"), 28}];
          [v47 appendBytes:v14 length:4];
          [v47 appendData:v46];
          objc_setProperty_atomic(v41, v48, v47, 32);
          v49 = *v14;

          v41[1].super.super.super.isa = v49;
          if ([(NEIKEv2ResponseConfigPayload *)v41 isFragment])
          {
            *(selfCopy + 9) = 1;
            *(selfCopy + 20) = *&v41[1].super.super._isInbound;
            *(selfCopy + 24) = *(&v41[1].super.super._isInbound + 1);
          }

          v19 = v41;
          v17 = v40;
          self = selfCopy;
          goto LABEL_67;
        }

        v70 = ne_log_obj();
        if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
LABEL_122:

          goto LABEL_126;
        }

        copyShortDescription3 = [(NEIKEv2Packet *)self copyShortDescription];
        *buf = 138412290;
        v88 = copyShortDescription3;
        v72 = "%@ Encrypted payload found in already decrypted packet";
        v73 = v70;
        v74 = 12;
      }

      else
      {
        v70 = ne_log_obj();
        if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_122;
        }

        copyShortDescription3 = [(NEIKEv2Packet *)self copyShortDescription];
        *buf = 138412546;
        v88 = copyShortDescription3;
        v89 = 2048;
        dataCopy8 = data;
        v72 = "%@ Encrypted payload type %zu is not permitted";
        v73 = v70;
        v74 = 22;
      }

      _os_log_error_impl(&dword_1BA83C000, v73, OS_LOG_TYPE_ERROR, v72, buf, v74);

      goto LABEL_122;
    }

    if (![self encryptPayloads] || *(self + 8) == 1)
    {
      v50 = *(self + 80);
      if (!v50)
      {
        v86 = v19;
        v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v86 count:1];
        objc_storeStrong((self + 80), v41);
        goto LABEL_67;
      }

      copyShortDescription5 = v50;
      v41 = [copyShortDescription5 arrayByAddingObject:v19];
      objc_storeStrong((self + 80), v41);
      goto LABEL_73;
    }

    v41 = ne_log_obj();
    v52 = os_log_type_enabled(&v41->super.super.super, OS_LOG_TYPE_ERROR);
    if (v38 < 0)
    {
      if (v52)
      {
        copyShortDescription4 = [(NEIKEv2Packet *)self copyShortDescription];
        *buf = 138412546;
        v88 = copyShortDescription4;
        v89 = 2048;
        dataCopy8 = data;
        _os_log_error_impl(&dword_1BA83C000, &v41->super.super.super, OS_LOG_TYPE_ERROR, "%@ Unencrypted critical payload type %zu is not permitted", buf, 0x16u);
      }

      goto LABEL_126;
    }

    if (v52)
    {
      copyShortDescription5 = [(NEIKEv2Packet *)self copyShortDescription];
      *buf = 138412546;
      v88 = copyShortDescription5;
      v89 = 2048;
      dataCopy8 = data;
      p_super = &v41->super.super.super;
      v54 = "%@ Unencrypted payload type %zu is not permitted, ignoring";
LABEL_78:
      _os_log_error_impl(&dword_1BA83C000, p_super, OS_LOG_TYPE_ERROR, v54, buf, 0x16u);
LABEL_73:
    }

LABEL_67:

    v13 -= v15;
    data = *v14;

    v14 += v15;
    if (!data)
    {
      goto LABEL_105;
    }
  }

  v21 = v17;
  objc_opt_self();
  if (v21)
  {
    switch(data)
    {
      case '!':
        v29 = v17;
        if ([v21 length] <= 7)
        {
          v19 = ne_log_obj();
          if (os_log_type_enabled(&v19->super.super.super, OS_LOG_TYPE_ERROR))
          {
            v62 = [v21 length];
            *buf = 67109120;
            LODWORD(v88) = v62;
            _os_log_error_impl(&dword_1BA83C000, &v19->super.super.super, OS_LOG_TYPE_ERROR, "Failed to parse SA payload, length %u", buf, 8u);
          }
        }

        else
        {
          v19 = v21;
          v30 = *([(NEIKEv2ResponseConfigPayload *)v19 bytes]+ 5);
          if ((v30 - 2) < 2 || v30 == 240)
          {
            v31 = NEIKEv2ChildSAPayload;
LABEL_80:
            v55 = [v31 alloc];
            if (v55)
            {
              v56 = [v55 init];
              v57 = v56;
              v17 = v29;
              if (v56)
              {
                self = selfCopy;
                *(v56 + 8) = 1;
LABEL_83:

                v19 = v57;
                goto LABEL_58;
              }
            }

            else
            {
              v57 = 0;
              v17 = v29;
            }

            self = selfCopy;
            goto LABEL_83;
          }

          if (v30 == 1)
          {
            v31 = NEIKEv2IKESAPayload;
            goto LABEL_80;
          }

          v58 = ne_log_obj();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            LODWORD(v88) = v30;
            _os_log_error_impl(&dword_1BA83C000, v58, OS_LOG_TYPE_ERROR, "Failed to parse unknown SA type %u", buf, 8u);
          }
        }

        v17 = v29;
        self = selfCopy;
        break;
      case '""':
        v32 = NEIKEv2KeyExchangePayload;
        goto LABEL_55;
      case '#':
        v32 = NEIKEv2InitiatorIdentifierPayload;
        goto LABEL_55;
      case '$':
        v32 = NEIKEv2ResponderIdentifierPayload;
        goto LABEL_55;
      case '%':
        v32 = NEIKEv2CertificatePayload;
        goto LABEL_55;
      case '&':
        v32 = NEIKEv2CertificateRequestPayload;
        goto LABEL_55;
      case '\'':
        v32 = NEIKEv2AuthPayload;
        goto LABEL_55;
      case '(':
        v32 = NEIKEv2NoncePayload;
        goto LABEL_55;
      case ')':
        v32 = NEIKEv2NotifyPayload;
        goto LABEL_55;
      case '*':
        v32 = NEIKEv2DeletePayload;
        goto LABEL_55;
      case '+':
        v32 = NEIKEv2VendorIDPayload;
        goto LABEL_55;
      case ',':
        v32 = NEIKEv2InitiatorTrafficSelectorPayload;
        goto LABEL_55;
      case '-':
        v32 = NEIKEv2ResponderTrafficSelectorPayload;
        goto LABEL_55;
      case '.':
        v32 = NEIKEv2EncryptedPayload;
        goto LABEL_55;
      case '/':
        v32 = NEIKEv2ConfigPayload;
        goto LABEL_55;
      case '0':
        v32 = NEIKEv2EAPPayload;
        goto LABEL_55;
      case '1':
        v32 = NEIKEv2GSPMPayload;
        goto LABEL_55;
      case '5':
        v32 = NEIKEv2EncryptedFragmentPayload;
LABEL_55:
        v36 = [v32 alloc];
        if (!v36)
        {
          goto LABEL_101;
        }

        v37 = [v36 init];
        v19 = v37;
        if (v37)
        {
          *(v37 + 8) = 1;
        }

        goto LABEL_58;
      default:
        v33 = ne_log_obj();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          LODWORD(v88) = data;
          _os_log_impl(&dword_1BA83C000, v33, OS_LOG_TYPE_INFO, "Received unknown payload type %u, saving as custom", buf, 8u);
        }

        v34 = [NEIKEv2CustomPayload alloc];
        if (v34)
        {
          v35 = [(NEIKEv2Payload *)v34 init];
          v19 = v35;
          if (v35)
          {
            *(v35 + 8) = 1;
            *(v35 + 32) = data;
          }
        }

        else
        {
LABEL_101:
          v19 = 0;
        }

LABEL_58:
        if ([(NEIKEv2ResponseConfigPayload *)v19 parsePayloadData:v21, v79])
        {
          goto LABEL_59;
        }

        v61 = ne_log_obj();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v88 = v19;
          _os_log_error_impl(&dword_1BA83C000, v61, OS_LOG_TYPE_ERROR, "Failed to parse payload data for %@", buf, 0xCu);
        }

        break;
    }
  }

  else
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(&v19->super.super.super, OS_LOG_TYPE_FAULT))
    {
      *buf = v79;
      v88 = "+[NEIKEv2Payload createPayloadWithType:fromReceivedData:]";
      _os_log_fault_impl(&dword_1BA83C000, &v19->super.super.super, OS_LOG_TYPE_FAULT, "%s called with null data", buf, 0xCu);
    }
  }

  v19 = 0;
  v59 = (v14[1] & 0x80u) == 0;
LABEL_89:
  v41 = ne_log_obj();
  v60 = os_log_type_enabled(&v41->super.super.super, OS_LOG_TYPE_ERROR);
  if (v59)
  {
    if (!v60)
    {
      goto LABEL_67;
    }

    copyShortDescription5 = [(NEIKEv2Packet *)self copyShortDescription];
    *buf = 138412546;
    v88 = copyShortDescription5;
    v89 = 2048;
    dataCopy8 = data;
    p_super = &v41->super.super.super;
    v54 = "%@ Failed to parse payload type %zu, ignoring";
    goto LABEL_78;
  }

  if (v60)
  {
    copyShortDescription6 = [(NEIKEv2Packet *)self copyShortDescription];
    *buf = 138412546;
    v88 = copyShortDescription6;
    v89 = 2048;
    dataCopy8 = data;
    _os_log_error_impl(&dword_1BA83C000, &v41->super.super.super, OS_LOG_TYPE_ERROR, "%@ Failed to parse critical payload type %zu", buf, 0x16u);
  }

  v19 = 0;
LABEL_126:
  v85 = 0;

  v63 = v85;
LABEL_107:

  return v63;
}

- (uint64_t)processDecryptedPacketForIKESA:(uint64_t)a
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (a)
  {
    if ((*(a + 8) & 1) == 0)
    {
      v10 = ne_log_obj();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_17;
      }

      *buf = 136315138;
      v27 = "[NEIKEv2Packet processDecryptedPacketForIKESA:]";
      v23 = "%s called with null self.decrypted";
      goto LABEL_26;
    }

    Property = objc_getProperty(a, v3, 48, 1);
    if (Property && objc_getProperty(Property, v6, 40, 1))
    {
      if (v4)
      {
        v8 = objc_getProperty(a, v7, 48, 1);
        if (v8)
        {
          v8 = objc_getProperty(v8, v9, 32, 1);
        }

        v10 = v8;
        v12 = objc_getProperty(a, v11, 48, 1);
        if (v12)
        {
          v12 = objc_getProperty(v12, v13, 40, 1);
        }

        v14 = v12;
        v16 = objc_getProperty(a, v15, 48, 1);
        if (v16)
        {
          v18 = v16[6];
        }

        else
        {
          v18 = 0;
        }

        objc_setProperty_atomic(a, v17, 0, 48);
        if ([(NEIKEv2Packet *)a parsePacketData:v14 firstPayloadType:v18 ikeSA:v4])
        {
          if ([a exchangeType] != 43 || (v25 = v14, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v25, 1), v19 = objc_claimAutoreleasedReturnValue(), v20 = -[NEIKEv2IntermediatePacket constructAuthenticatedDataWithPayloads:payloadsLength:authenticatedHeaders:](a, v19, objc_msgSend(v14, "length"), v10), v19, v20))
          {
            *(a + 9) = 0;
            [a filloutPayloads];
            a = 1;
LABEL_22:

            goto LABEL_23;
          }

          v21 = ne_log_obj();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            copyShortDescription = [(NEIKEv2Packet *)a copyShortDescription];
            *buf = 138412290;
            v27 = copyShortDescription;
            _os_log_error_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_ERROR, "%@ Failed to construct authenticated data vector", buf, 0xCu);
          }
        }

        a = 0;
        goto LABEL_22;
      }

      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v27 = "[NEIKEv2Packet processDecryptedPacketForIKESA:]";
        v23 = "%s called with null ikeSA";
        goto LABEL_26;
      }
    }

    else
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v27 = "[NEIKEv2Packet processDecryptedPacketForIKESA:]";
        v23 = "%s called with null self.encryptedPayload.payloadData";
LABEL_26:
        _os_log_fault_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_FAULT, v23, buf, 0xCu);
      }
    }

LABEL_17:
    a = 0;
LABEL_23:
  }

  return a;
}

- (uint64_t)decryptReceivedPacketWithIKESA:(_BYTE *)a
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((a[8] & 1) != 0 || ![a encryptPayloads])
  {
    v14 = 1;
    goto LABEL_14;
  }

  if (v3)
  {
    Property = objc_getProperty(v3, v4, 96, 1);
  }

  else
  {
    Property = 0;
  }

  v6 = Property;

  if (!v6)
  {
LABEL_22:
    v14 = 0;
    goto LABEL_14;
  }

  v9 = objc_getProperty(a, v7, 48, 1);
  if (v3)
  {
    v10 = objc_getProperty(v3, v8, 208, 1);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v13 = v11;
  if (!v9)
  {

    goto LABEL_21;
  }

  if (!v11)
  {
    v20 = ne_log_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      v22 = 136315138;
      v23 = "[NEIKEv2EncryptedPayload decryptPayloadsUsingSecurityContext:]";
      _os_log_fault_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_FAULT, "%s called with null securityContext", &v22, 0xCu);
    }

    goto LABEL_20;
  }

  v14 = 1;
  v15 = objc_getProperty(v9, v12, 40, 1);
  v17 = [v13 decryptPayloadData:v15 authenticatedHeaders:{objc_getProperty(v9, v16, 32, 1)}];

  if (!v17)
  {
    v21 = ne_log_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v22) = 0;
      _os_log_error_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_ERROR, "Failed to decrypt packet", &v22, 2u);
    }

    v20 = 0;
LABEL_20:

LABEL_21:
    goto LABEL_22;
  }

  objc_setProperty_atomic(v9, v18, v17, 40);

  a[8] = 1;
  if ((a[9] & 1) == 0)
  {
    v14 = [(NEIKEv2Packet *)a processDecryptedPacketForIKESA:v3];
  }

LABEL_14:

  return v14;
}

- (void)copyNotification:(void *)notification
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = objc_getProperty(notification, a2, 64, 1);
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        if (v8)
        {
          v9 = v8[4];
        }

        else
        {
          v9 = 0;
        }

        if (v9 == a2)
        {
          v11 = v8;
          goto LABEL_15;
        }

        ++v7;
      }

      while (v5 != v7);
      v10 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v5 = v10;
    }

    while (v10);
  }

  v11 = 0;
LABEL_15:

  return v11;
}

- (uint64_t)hasNotification:(void *)notification
{
  v16 = *MEMORY[0x1E69E9840];
  if (!notification)
  {
    return 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = objc_getProperty(notification, a2, 64, 1);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (v8)
        {
          v8 = *(v8 + 32);
        }

        if (v8 == a2)
        {
          v9 = 1;
          goto LABEL_14;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_14:

  return v9;
}

- (uint64_t)hasErrors
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = objc_getProperty(self, a2, 64, 1);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (v6 && (*(v6 + 32) - 1) < 0x3FFF)
        {
          v3 = 1;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (BOOL)addNotifyPayload:(void *)payload
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    if (objc_getProperty(payload, v3, 64, 1))
    {
      v6 = [objc_getProperty(payload v5];
    }

    else
    {
      v11 = v4;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
    }

    v8 = v6;
    objc_setProperty_atomic(payload, v7, v6, 64);
  }

  else
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v13 = "[NEIKEv2Packet addNotifyPayload:]";
      _os_log_fault_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_FAULT, "%s called with null notifyPayload", buf, 0xCu);
    }
  }

  return v4 != 0;
}

- (BOOL)addNotification:(void *)notification data:
{
  v4 = [NEIKEv2NotifyPayload createNotifyPayloadType:a2 data:notification];
  v5 = [(NEIKEv2Packet *)self addNotifyPayload:v4];

  return v5;
}

@end