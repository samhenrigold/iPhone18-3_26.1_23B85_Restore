@interface NEIKEv2IKESAPayload
- (BOOL)generatePayloadData;
- (BOOL)hasRequiredFields;
- (BOOL)parsePayloadData:(id)data;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
@end

@implementation NEIKEv2IKESAPayload

- (BOOL)parsePayloadData:(id)data
{
  v95 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if ([dataCopy length] <= 7)
  {
    newValue = ne_log_obj();
    if (os_log_type_enabled(newValue, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *v92 = "[NEIKEv2IKESAPayload parsePayloadData:]";
      _os_log_error_impl(&dword_1BA83C000, newValue, OS_LOG_TYPE_ERROR, "BACKTRACE %s called with null (payloadData.length >= sizeof(ikev2_proposal_t))", buf, 0xCu);
    }

    goto LABEL_107;
  }

  newValue = objc_alloc_init(MEMORY[0x1E695DF70]);
  bytes = [dataCopy bytes];
  v7 = [dataCopy length];
  if (v7 < 8)
  {
LABEL_94:
    if (v7)
    {
      v70 = ne_log_obj();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *v92 = v7;
        _os_log_error_impl(&dword_1BA83C000, v70, OS_LOG_TYPE_ERROR, "Ignoring %u remaining bytes in SA payload", buf, 8u);
      }

      if (!self)
      {
        goto LABEL_97;
      }
    }

    else if (!self)
    {
LABEL_97:
      hasRequiredFields = [(NEIKEv2IKESAPayload *)self hasRequiredFields];
      goto LABEL_108;
    }

    objc_setProperty_atomic(self, v6, newValue, 32);
    goto LABEL_97;
  }

  *&v8 = 67109120;
  v73 = v8;
  selfCopy = self;
  v75 = dataCopy;
  while (1)
  {
    v9 = bswap32(*(bytes + 2));
    v10 = HIWORD(v9);
    if (v7 < HIWORD(v9))
    {
      v60 = ne_log_obj();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *v92 = v7;
        *&v92[4] = 1024;
        *&v92[6] = v10;
        v61 = "Not enough bytes remaining (%u) to process proposal length %u";
LABEL_131:
        v62 = v60;
        v63 = 14;
        goto LABEL_132;
      }

LABEL_119:

      goto LABEL_107;
    }

    if (*(bytes + 6) + 8 > v10)
    {
      v60 = ne_log_obj();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        *buf = v73;
        *v92 = v10;
        v61 = "Proposal length %u is too short";
        v62 = v60;
        v63 = 8;
LABEL_132:
        _os_log_error_impl(&dword_1BA83C000, v62, OS_LOG_TYPE_ERROR, v61, buf, v63);
        goto LABEL_119;
      }

      goto LABEL_119;
    }

    if (*(bytes + 5) != 1)
    {
      v60 = ne_log_obj();
      if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_119;
      }

      v71 = *(bytes + 4);
      v72 = *(bytes + 5);
      *buf = 67109376;
      *v92 = v71;
      *&v92[4] = 1024;
      *&v92[6] = v72;
      v61 = "IKE SA proposal %u has wrong protocol ID %u";
      goto LABEL_131;
    }

    v79 = HIWORD(v9);
    v11 = *(bytes + 7);
    v12 = objc_alloc_init(NEIKEv2IKESAProposal);
    v13 = bytes;
    v14 = (bytes + 8);
    v78 = v13;
    v15 = v13[6];
    if (v15 != 8)
    {
      if (!v15)
      {
        v18 = v79 - 8;
        goto LABEL_14;
      }

      v64 = ne_log_obj();
      if (!os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
LABEL_123:

        goto LABEL_106;
      }

      v65 = v78[4];
      v66 = v78[6];
      *buf = 67109376;
      *v92 = v65;
      *&v92[4] = 1024;
      *&v92[6] = v66;
      v67 = "IKE SA proposal %u has wrong SPI length %u";
      v68 = v64;
      v69 = 14;
LABEL_134:
      _os_log_error_impl(&dword_1BA83C000, v68, OS_LOG_TYPE_ERROR, v67, buf, v69);
      goto LABEL_123;
    }

    if (!*v14)
    {
      v64 = ne_log_obj();
      if (!os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_123;
      }

      *buf = 0;
      v67 = "IKE SA value 0 is invalid";
      v68 = v64;
      v69 = 2;
      goto LABEL_134;
    }

    v17 = [[NEIKEv2IKESPI alloc] initWithValue:*v14];
    if (v12)
    {
      objc_setProperty_atomic(v12, v16, v17, 88);
    }

    v14 = v78 + 16;
    v18 = v79 - 16;

LABEL_14:
    v77 = v7;
    v82 = v12;
    if (v11)
    {
      break;
    }

    v84 = 0;
    v81 = 0;
LABEL_77:
    self = selfCopy;
    if (!v18)
    {
      if (!v12)
      {
        goto LABEL_80;
      }

LABEL_79:
      v12->_proposalNumber = v78[4];
      goto LABEL_80;
    }

    v51 = ne_log_obj();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = v78[4];
      *buf = 67109376;
      *v92 = v18;
      *&v92[4] = 1024;
      *&v92[6] = v52;
      _os_log_error_impl(&dword_1BA83C000, v51, OS_LOG_TYPE_ERROR, "Ignoring %u remaining bytes in proposal %u", buf, 0xEu);
    }

    if (v12)
    {
      goto LABEL_79;
    }

LABEL_80:
    dataCopy = v75;
    if (v84)
    {
      v48 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v84];
      [(NEIKEv2IKESAProposal *)v82 setAdditionalKEMProtocols:v48];

      v12 = v82;
    }

    if (v81)
    {
      v50 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithSet:v81];
      if (v12)
      {
        objc_setProperty_atomic(v12, v49, v50, 80);
      }
    }

    [newValue addObject:v12, v73];
    v7 = v77 - v79;
    if (*v78 != 2)
    {

      goto LABEL_94;
    }

    bytes = &v78[v79];

    if (v7 <= 7)
    {
      goto LABEL_94;
    }
  }

  v81 = 0;
  v84 = 0;
  v19 = 1;
  v20 = 1;
  v80 = v11;
  while (1)
  {
    if (v18 <= 7)
    {
      v54 = ne_log_obj();
      if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_105;
      }

      *buf = 67109376;
      *v92 = v18;
      *&v92[4] = 1024;
      *&v92[6] = v19;
      v56 = "Not enough bytes remaining (%u) for transform %u";
      goto LABEL_112;
    }

    v21 = bswap32(*(v14 + 1)) >> 16;
    if (v18 < v21)
    {
      v54 = ne_log_obj();
      if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_105;
      }

      *buf = 67109632;
      *v92 = v18;
      *&v92[4] = 1024;
      *&v92[6] = v19;
      v93 = 1024;
      LODWORD(v94) = v21;
      v56 = "Not enough bytes remaining (%u) to process transform %u with length %u";
      v57 = v54;
      v58 = 20;
      goto LABEL_113;
    }

    if (v21 <= 7)
    {
      v54 = ne_log_obj();
      if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_105;
      }

      *buf = 67109376;
      *v92 = v19;
      *&v92[4] = 1024;
      *&v92[6] = v21;
      v56 = "Transform %u length %u is too short";
LABEL_112:
      v57 = v54;
      v58 = 14;
LABEL_113:
      _os_log_error_impl(&dword_1BA83C000, v57, OS_LOG_TYPE_ERROR, v56, buf, v58);
      goto LABEL_105;
    }

    v22 = v21 - 8;
    v23 = v14[4];
    if (v14[4] > 3u)
    {
      if ((v23 - 6) < 7)
      {
        v83 = v19;
        v24 = v11;
        v25 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:?];
        v26 = [[NEIKEv2KEMProtocol alloc] initWithMethod:bswap32(*(v14 + 3)) >> 16];
        v27 = v84;
        if (!v84)
        {
          v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
        }

        v28 = [v27 objectForKeyedSubscript:{v25, v73}];

        v84 = v27;
        if (v28)
        {
          v29 = [v27 objectForKeyedSubscript:v25];
          v30 = [v29 arrayByAddingObject:v26];
          [v27 setObject:v30 forKeyedSubscript:v25];

          v12 = v82;
        }

        else
        {
          v86 = v26;
          v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v86 count:1];
          [v27 setObject:v29 forKeyedSubscript:v25];
        }

        v11 = v24;
        v19 = v83;
        v22 = v21 - 8;
LABEL_67:

        if (!v22)
        {
          goto LABEL_68;
        }

        goto LABEL_74;
      }

      if (v23 != 4)
      {
        if (v23 != 5)
        {
LABEL_42:
          v38 = v81;
          if (!v81)
          {
            v38 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            v23 = v14[4];
          }

          v39 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{v23, v73}];
          v81 = v38;
          [v38 addObject:v39];

          v40 = ne_log_obj();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            v41 = v14[4];
            *buf = 67109376;
            *v92 = v19;
            *&v92[4] = 1024;
            *&v92[6] = v41;
            _os_log_impl(&dword_1BA83C000, v40, OS_LOG_TYPE_INFO, "Transform %u type %u in IKE SA proposal is unsupported", buf, 0xEu);
          }

          v12 = v82;
          goto LABEL_47;
        }

        v25 = ne_log_obj();
        if (os_log_type_enabled(&v25->super, OS_LOG_TYPE_DEBUG))
        {
          *buf = v73;
          *v92 = v19;
          _os_log_debug_impl(&dword_1BA83C000, &v25->super, OS_LOG_TYPE_DEBUG, "Ignoring ESN transform %u found in IKE SA proposal", buf, 8u);
        }

        goto LABEL_67;
      }

      v25 = [[NEIKEv2KEMProtocol alloc] initWithMethod:bswap32(*(v14 + 3)) >> 16];
      kemProtocols = [(NEIKEv2IKESAProposal *)v12 kemProtocols];

      if (!kemProtocols)
      {
        v87 = v25;
        kemProtocols2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v87 count:1];
        [(NEIKEv2IKESAProposal *)v12 setKemProtocols:kemProtocols2];
        goto LABEL_66;
      }

      kemProtocols2 = [(NEIKEv2IKESAProposal *)v12 kemProtocols];
      [kemProtocols2 arrayByAddingObject:v25];
      v34 = v33 = v21 - 8;
      [(NEIKEv2IKESAProposal *)v12 setKemProtocols:v34];
      goto LABEL_50;
    }

    if (v23 != 1)
    {
      if (v23 == 2)
      {
        v25 = [[NEIKEv2PRFProtocol alloc] initWithType:bswap32(*(v14 + 3)) >> 16];
        prfProtocols = [(NEIKEv2IKESAProposal *)v12 prfProtocols];

        if (!prfProtocols)
        {
          v89 = v25;
          kemProtocols2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v89 count:1];
          [(NEIKEv2IKESAProposal *)v12 setPrfProtocols:kemProtocols2];
          goto LABEL_66;
        }

        kemProtocols2 = [(NEIKEv2IKESAProposal *)v12 prfProtocols];
        [kemProtocols2 arrayByAddingObject:v25];
        v34 = v33 = v21 - 8;
        [(NEIKEv2IKESAProposal *)v12 setPrfProtocols:v34];
      }

      else
      {
        if (v23 != 3)
        {
          goto LABEL_42;
        }

        v25 = [[NEIKEv2IntegrityProtocol alloc] initWithType:bswap32(*(v14 + 3)) >> 16];
        integrityProtocols = [(NEIKEv2IKESAProposal *)v12 integrityProtocols];

        if (!integrityProtocols)
        {
          v88 = v25;
          kemProtocols2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
          [(NEIKEv2IKESAProposal *)v12 setIntegrityProtocols:kemProtocols2];
          goto LABEL_66;
        }

        kemProtocols2 = [(NEIKEv2IKESAProposal *)v12 integrityProtocols];
        [kemProtocols2 arrayByAddingObject:v25];
        v34 = v33 = v21 - 8;
        [(NEIKEv2IKESAProposal *)v12 setIntegrityProtocols:v34];
      }

LABEL_50:

      v22 = v33;
      v11 = v80;
LABEL_66:

      goto LABEL_67;
    }

    if ((v21 - 8) < 4u)
    {
      break;
    }

    v35 = *(v14 + 4);
    if (v35 == 3712)
    {
      v12 = v82;
      if (*(v14 + 5))
      {
        v85 = v21 - 12;
        v36 = __rev16(*(v14 + 5));
        goto LABEL_52;
      }

      v54 = ne_log_obj();
      if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_105;
      }

      *buf = v73;
      *v92 = v19;
      v56 = "Transform %u has a key length attribute with length 0";
      v57 = v54;
      v58 = 8;
      goto LABEL_113;
    }

    v46 = ne_log_obj();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *v92 = v19;
      *&v92[4] = 1024;
      *&v92[6] = __rev16(v35);
      _os_log_error_impl(&dword_1BA83C000, v46, OS_LOG_TYPE_ERROR, "Transform %u has an unrecognized attribute type %u, ignoring", buf, 0xEu);
    }

    v12 = v82;
    v22 = v21 - 8;
LABEL_74:
    v47 = v22;
    v40 = ne_log_obj();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *v92 = v47;
      *&v92[4] = 1024;
      *&v92[6] = v19;
      _os_log_error_impl(&dword_1BA83C000, v40, OS_LOG_TYPE_ERROR, "Ignoring %u remaining bytes in transform %u ", buf, 0xEu);
    }

LABEL_47:

LABEL_68:
    v14 += v21;
    v18 -= v21;
    v19 = ++v20;
    if (v20 > v11)
    {
      goto LABEL_77;
    }
  }

  v85 = v21 - 8;
  v36 = 0;
LABEL_52:
  v43 = bswap32(*(v14 + 3)) >> 16;
  objc_opt_self();
  if (v43 > 0x1F)
  {
LABEL_55:
    v25 = [[NEIKEv2EncryptionProtocol alloc] initWithEncryptionWireType:v43 keyLength:v36];
    encryptionProtocols = [(NEIKEv2IKESAProposal *)v12 encryptionProtocols];

    if (encryptionProtocols)
    {
      kemProtocols2 = [(NEIKEv2IKESAProposal *)v12 encryptionProtocols];
      v45 = [kemProtocols2 arrayByAddingObject:v25];
      [(NEIKEv2IKESAProposal *)v12 setEncryptionProtocols:v45];
    }

    else
    {
      v90 = v25;
      kemProtocols2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v90 count:1];
      [(NEIKEv2IKESAProposal *)v12 setEncryptionProtocols:kemProtocols2];
    }

    v22 = v85;
    goto LABEL_66;
  }

  if (((1 << v43) & 0x9000000C) != 0)
  {
    if (v36)
    {
      goto LABEL_98;
    }

    goto LABEL_55;
  }

  if (((1 << v43) & 0x40101000) == 0 || v36 == 128 || v36 == 192 || v36 == 256)
  {
    goto LABEL_55;
  }

LABEL_98:
  v54 = ne_log_obj();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
  {
    String = NEIKEv2EncryptionWireTypeCreateString(v43);
    *buf = 67109634;
    *v92 = v19;
    *&v92[4] = 1024;
    *&v92[6] = v36;
    v93 = 2112;
    v94 = String;
    _os_log_error_impl(&dword_1BA83C000, v54, OS_LOG_TYPE_ERROR, "Transform %u has invalid key length %u for encryption type %@", buf, 0x18u);
  }

LABEL_105:
  dataCopy = v75;

LABEL_106:
LABEL_107:
  hasRequiredFields = 0;
LABEL_108:

  return hasRequiredFields;
}

- (BOOL)generatePayloadData
{
  v228 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    hasRequiredFields = [0 hasRequiredFields];
    Property = 0;
    if (hasRequiredFields)
    {
      goto LABEL_6;
    }

LABEL_175:
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "IKE SA payload missing required fields", buf, 2u);
    }

    goto LABEL_177;
  }

  if (self->super._payloadDataVector)
  {
    return 1;
  }

  if (![(NEIKEv2IKESAPayload *)self hasRequiredFields])
  {
    goto LABEL_175;
  }

  Property = objc_getProperty(self, v4, 32, 1);
LABEL_6:
  v6 = [Property count];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v6];
  v209 = 0u;
  v210 = 0u;
  v211 = 0u;
  v212 = 0u;
  selfCopy = self;
  if (self)
  {
    v9 = objc_getProperty(self, v7, 32, 1);
  }

  else
  {
    v9 = 0;
  }

  obj = v9;
  v156 = [obj countByEnumeratingWithState:&v209 objects:v227 count:16];
  if (!v156)
  {
LABEL_168:

    [(NEIKEv2KeyExchangeHandler *)selfCopy setSharedSecret:v8];
    v3 = 1;
    goto LABEL_178;
  }

  v10 = 0;
  v153 = v6;
  v11 = *v210;
  v154 = *v210;
  v155 = v8;
  v163 = 1;
LABEL_10:
  if (v11 != v154)
  {
    objc_enumerationMutation(obj);
  }

  v159 = v10;
  v12 = *(*(&v209 + 1) + 8 * v10);
  encryptionProtocols = [v12 encryptionProtocols];
  if (v12)
  {
    v15 = objc_getProperty(v12, v13, 104, 1);
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (v16)
  {
    if (v12)
    {
      v18 = objc_getProperty(v12, v17, 104, 1);
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    v226 = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v226 count:1];

    encryptionProtocols = v20;
  }

  if ([encryptionProtocols count])
  {
    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    encryptionProtocols = encryptionProtocols;
    v21 = [encryptionProtocols countByEnumeratingWithState:&v205 objects:v225 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v206;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v206 != v23)
          {
            objc_enumerationMutation(encryptionProtocols);
          }

          v25 = *(*(&v205 + 1) + 8 * i);
          if (v25 && (*(v25 + 16) & 0xFFFFFFFFFFFFFFFELL) == 0x1E)
          {
            v148 = ne_log_obj();
            if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_1BA83C000, v148, OS_LOG_TYPE_ERROR, "IIV encryption algorithms only allowed in child SA proposals", buf, 2u);
            }

            integrityProtocols = encryptionProtocols;
            goto LABEL_166;
          }
        }

        v22 = [encryptionProtocols countByEnumeratingWithState:&v205 objects:v225 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    integrityProtocols = [v12 integrityProtocols];
    if (v12)
    {
      v28 = objc_getProperty(v12, v26, 112, 1);
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;

    if (v29)
    {
      if (v12)
      {
        v31 = objc_getProperty(v12, v30, 112, 1);
      }

      else
      {
        v31 = 0;
      }

      v32 = v31;
      v224 = v32;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v224 count:1];

      integrityProtocols = v33;
    }

    prfProtocols = [v12 prfProtocols];
    if (v12)
    {
      v36 = objc_getProperty(v12, v34, 120, 1);
    }

    else
    {
      v36 = 0;
    }

    v37 = v36;

    if (v37)
    {
      if (v12)
      {
        v39 = objc_getProperty(v12, v38, 120, 1);
      }

      else
      {
        v39 = 0;
      }

      v40 = v39;
      v223 = v40;
      v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v223 count:1];

      prfProtocols = v41;
    }

    if (![prfProtocols count])
    {
      v149 = ne_log_obj();
      if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, v149, OS_LOG_TYPE_ERROR, "IKE SA proposal missing PRF protocol", buf, 2u);
      }

      goto LABEL_166;
    }

    additionalKEMProtocols = [v12 additionalKEMProtocols];
    chosenAdditionalKEMProtocols = [(NEIKEv2IKESAProposal *)v12 chosenAdditionalKEMProtocols];

    v162 = encryptionProtocols;
    v164 = prfProtocols;
    v165 = integrityProtocols;
    if (chosenAdditionalKEMProtocols)
    {
      chosenAdditionalKEMProtocols2 = [(NEIKEv2IKESAProposal *)v12 chosenAdditionalKEMProtocols];
      if ([chosenAdditionalKEMProtocols2 count])
      {
        v160 = additionalKEMProtocols;
        v45 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(chosenAdditionalKEMProtocols2, "count")}];
        v201 = 0u;
        v202 = 0u;
        v203 = 0u;
        v204 = 0u;
        v168 = chosenAdditionalKEMProtocols2;
        v46 = chosenAdditionalKEMProtocols2;
        v47 = [v46 countByEnumeratingWithState:&v201 objects:v222 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v202;
          do
          {
            for (j = 0; j != v48; ++j)
            {
              if (*v202 != v49)
              {
                objc_enumerationMutation(v46);
              }

              v51 = *(*(&v201 + 1) + 8 * j);
              v52 = [v46 objectForKeyedSubscript:v51];
              v221 = v52;
              v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v221 count:1];
              [v45 setObject:v53 forKeyedSubscript:v51];
            }

            v48 = [v46 countByEnumeratingWithState:&v201 objects:v222 count:16];
          }

          while (v48);
        }

        v8 = v155;
        additionalKEMProtocols = v160;
        encryptionProtocols = v162;
        prfProtocols = v164;
        integrityProtocols = v165;
        chosenAdditionalKEMProtocols2 = v168;
      }

      else
      {
        v45 = MEMORY[0x1E695E0F8];
      }

      additionalKEMProtocols = v45;
    }

    kemProtocols = [v12 kemProtocols];
    if (v12)
    {
      v56 = objc_getProperty(v12, v54, 128, 1);
    }

    else
    {
      v56 = 0;
    }

    v57 = v56;

    if (v57)
    {
      v59 = kemProtocols;
      if (v12)
      {
        v60 = objc_getProperty(v12, v58, 128, 1);
      }

      else
      {
        v60 = 0;
      }

      v61 = v60;
      v220 = v61;
      kemProtocols = [MEMORY[0x1E695DEC8] arrayWithObjects:&v220 count:1];
    }

    if (![kemProtocols count])
    {
      v145 = ne_log_obj();
      if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, v145, OS_LOG_TYPE_ERROR, "IKE SA proposal missing KE protocol", buf, 2u);
      }

      v105 = 0;
      goto LABEL_140;
    }

    v166 = kemProtocols;
    v62 = [encryptionProtocols count];
    v63 = [integrityProtocols count]+ v62;
    v64 = v63 + [prfProtocols count];
    v197 = 0u;
    v198 = 0u;
    v199 = 0u;
    v200 = 0u;
    v161 = additionalKEMProtocols;
    v65 = additionalKEMProtocols;
    v66 = [v65 countByEnumeratingWithState:&v197 objects:v219 count:16];
    if (v66)
    {
      v67 = v66;
      v68 = *v198;
      do
      {
        for (k = 0; k != v67; ++k)
        {
          if (*v198 != v68)
          {
            objc_enumerationMutation(v65);
          }

          v70 = [v65 objectForKeyedSubscript:*(*(&v197 + 1) + 8 * k)];
          v64 += [v70 count];
        }

        v67 = [v65 countByEnumeratingWithState:&v197 objects:v219 count:16];
      }

      while (v67);
    }

    v72 = [v166 count];
    *buf = (2 * (v153 > v163));
    if (v12)
    {
      buf[4] = v12[8];
      buf[5] = 1;
      v73 = objc_getProperty(v12, v71, 88, 1);
    }

    else
    {
      v73 = 0;
      *&buf[4] = 256;
    }

    v74 = v72 + v64;
    v75 = v73;
    copySPIData = [v75 copySPIData];

    buf[6] = [copySPIData length];
    buf[7] = v74;
    v77 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:8 * v74 + buf[6] + 8];
    [v77 appendBytes:buf length:8];
    v157 = copySPIData;
    [v77 appendData:copySPIData];
    v194 = 0u;
    v195 = 0u;
    v192 = 0u;
    v193 = 0u;
    v78 = encryptionProtocols;
    v79 = [v78 countByEnumeratingWithState:&v192 objects:v218 count:16];
    if (!v79)
    {

      integrityProtocols = v165;
      goto LABEL_97;
    }

    v80 = v79;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = *v193;
    for (m = *v193; ; m = *v193)
    {
      if (m != v84)
      {
        objc_enumerationMutation(v78);
      }

      v86 = *(*(&v192 + 1) + 8 * v83);
      if (v86)
      {
        v87 = *(v86 + 16);
        v88 = *(v86 + 8);
        *v191 = 0x100000003;
        *&v191[6] = bswap32(v87) >> 16;
        if (v88)
        {
          v190[0] = 3712;
          v190[1] = __rev16(v88);
          *&v191[2] = 3072;
          [v77 appendBytes:v191 length:8];
          v89 = v190;
          v90 = v77;
          v91 = 4;
        }

        else
        {
          *&v191[2] = 2048;
          v89 = v191;
          v90 = v77;
          v91 = 8;
        }

        [v90 appendBytes:v89 length:v91];
        v92 = *(v86 + 16);
        if (v92 <= 0x1F)
        {
          v93 = 0xD0100000 >> v92;
          goto LABEL_81;
        }
      }

      else
      {
        *v191 = 0x108000003;
        [v77 appendBytes:v191 length:8];
      }

      v93 = 0;
LABEL_81:
      v81 |= v93 ^ 1;
      v82 |= v93;
      if (++v83 >= v80)
      {
        v94 = [v78 countByEnumeratingWithState:&v192 objects:v218 count:16];
        if (!v94)
        {

          if (v82 & v81)
          {
            v146 = ne_log_obj();
            additionalKEMProtocols = v161;
            encryptionProtocols = v162;
            integrityProtocols = v165;
            if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
            {
              *v191 = 0;
              _os_log_error_impl(&dword_1BA83C000, v146, OS_LOG_TYPE_ERROR, "IKE SA proposal mixes authenticated and unauthenticated encryption protocols", v191, 2u);
            }

            v105 = 0;
            v8 = v155;
            prfProtocols = v164;
          }

          else
          {
            encryptionProtocols = v162;
            integrityProtocols = v165;
            if (v81)
            {
              if ([v165 count])
              {
                v188 = 0u;
                v189 = 0u;
                v186 = 0u;
                v187 = 0u;
                v95 = v165;
                v96 = [v95 countByEnumeratingWithState:&v186 objects:v217 count:16];
                if (v96)
                {
                  v97 = v96;
                  v98 = 0;
                  v99 = *v187;
                  for (n = *v187; ; n = *v187)
                  {
                    if (n != v99)
                    {
                      objc_enumerationMutation(v95);
                    }

                    v101 = *(*(&v186 + 1) + 8 * v98);
                    *v191 = 0;
                    type = [v101 type];
                    v191[0] = 3;
                    v191[4] = 3;
                    *&v191[6] = bswap32(type) >> 16;
                    *&v191[2] = 2048;
                    [v77 appendBytes:v191 length:8];
                    if (++v98 >= v97)
                    {
                      v103 = [v95 countByEnumeratingWithState:&v186 objects:v217 count:16];
                      if (!v103)
                      {
                        break;
                      }

                      v97 = v103;
                      v98 = 0;
                    }
                  }
                }

LABEL_102:
                v184 = 0u;
                v185 = 0u;
                v182 = 0u;
                v183 = 0u;
                v106 = v164;
                v107 = [v106 countByEnumeratingWithState:&v182 objects:v216 count:16];
                if (v107)
                {
                  v108 = v107;
                  v109 = 0;
                  v110 = *v183;
                  for (ii = *v183; ; ii = *v183)
                  {
                    if (ii != v110)
                    {
                      objc_enumerationMutation(v106);
                    }

                    v112 = *(*(&v182 + 1) + 8 * v109);
                    *v191 = 0;
                    type2 = [v112 type];
                    v191[0] = 3;
                    v191[4] = 2;
                    *&v191[6] = bswap32(type2) >> 16;
                    *&v191[2] = 2048;
                    [v77 appendBytes:v191 length:8];
                    if (++v109 >= v108)
                    {
                      v114 = [v106 countByEnumeratingWithState:&v182 objects:v216 count:16];
                      if (!v114)
                      {
                        break;
                      }

                      v108 = v114;
                      v109 = 0;
                    }
                  }
                }

                v180 = 0u;
                v181 = 0u;
                v178 = 0u;
                v179 = 0u;
                allKeys = [v65 allKeys];
                v116 = [allKeys sortedArrayUsingSelector:sel_compare_];

                v169 = v116;
                v117 = [v116 countByEnumeratingWithState:&v178 objects:v215 count:16];
                if (v117)
                {
                  v118 = v117;
                  v119 = 0;
                  v120 = *v179;
                  v167 = *v179;
                  while (1)
                  {
                    if (v120 != v167)
                    {
                      objc_enumerationMutation(v169);
                    }

                    v121 = *(*(&v178 + 1) + 8 * v119);
                    unsignedCharValue = [v121 unsignedCharValue];
                    v174 = 0u;
                    v175 = 0u;
                    v176 = 0u;
                    v177 = 0u;
                    v123 = [v65 objectForKeyedSubscript:v121];
                    v124 = [v123 countByEnumeratingWithState:&v174 objects:v214 count:16];
                    if (v124)
                    {
                      v125 = v124;
                      v126 = 0;
                      v127 = *v175;
                      for (jj = *v175; ; jj = *v175)
                      {
                        if (jj != v127)
                        {
                          objc_enumerationMutation(v123);
                        }

                        v129 = *(*(&v174 + 1) + 8 * v126);
                        *v191 = 0;
                        method = [v129 method];
                        v191[0] = 3;
                        v191[4] = unsignedCharValue;
                        *&v191[6] = bswap32(method) >> 16;
                        *&v191[2] = 2048;
                        [v77 appendBytes:v191 length:8];
                        if (++v126 >= v125)
                        {
                          v131 = [v123 countByEnumeratingWithState:&v174 objects:v214 count:16];
                          if (!v131)
                          {
                            break;
                          }

                          v125 = v131;
                          v126 = 0;
                        }
                      }
                    }

                    if (++v119 >= v118)
                    {
                      v132 = [v169 countByEnumeratingWithState:&v178 objects:v215 count:16];
                      if (!v132)
                      {
                        break;
                      }

                      v118 = v132;
                      v119 = 0;
                    }

                    v120 = *v179;
                  }
                }

                v133 = [v166 count];
                v170 = 0u;
                v171 = 0u;
                v172 = 0u;
                v173 = 0u;
                v134 = v166;
                v135 = [v134 countByEnumeratingWithState:&v170 objects:v213 count:16];
                integrityProtocols = v165;
                if (v135)
                {
                  v136 = v135;
                  v137 = 0;
                  v138 = *v171;
                  v139 = 1;
                  for (kk = *v171; ; kk = *v171)
                  {
                    if (kk != v138)
                    {
                      objc_enumerationMutation(v134);
                    }

                    v141 = *(*(&v170 + 1) + 8 * v137);
                    *v191 = 0;
                    method2 = [v141 method];
                    if (v133 <= v139)
                    {
                      v143 = 0;
                    }

                    else
                    {
                      v143 = 3;
                    }

                    v191[0] = v143;
                    v191[4] = 4;
                    *&v191[6] = bswap32(method2) >> 16;
                    *&v191[2] = 2048;
                    [v77 appendBytes:v191 length:8];
                    if (++v137 >= v136)
                    {
                      v144 = [v134 countByEnumeratingWithState:&v170 objects:v213 count:16];
                      if (!v144)
                      {
                        break;
                      }

                      v136 = v144;
                      v137 = 0;
                    }

                    ++v139;
                  }
                }

                *([v77 mutableBytes] + 2) = bswap32(objc_msgSend(v77, "length")) >> 16;
                v8 = v155;
                [v155 addObject:v77];
                ++v163;
                v105 = 1;
                encryptionProtocols = v162;
              }

              else
              {
                v147 = ne_log_obj();
                if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
                {
                  *v191 = 0;
                  _os_log_error_impl(&dword_1BA83C000, v147, OS_LOG_TYPE_ERROR, "IKE SA proposal missing integrity protocol", v191, 2u);
                }

                v105 = 0;
                v8 = v155;
                encryptionProtocols = v162;
                integrityProtocols = v165;
              }

              goto LABEL_138;
            }

LABEL_97:
            if (![integrityProtocols count])
            {
              goto LABEL_102;
            }

            v104 = ne_log_obj();
            if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
            {
              *v191 = 0;
              _os_log_error_impl(&dword_1BA83C000, v104, OS_LOG_TYPE_ERROR, "IKE SA proposal with authenticated encryption includes integrity options", v191, 2u);
            }

            v105 = 0;
            v8 = v155;
LABEL_138:
            prfProtocols = v164;
            additionalKEMProtocols = v161;
          }

          kemProtocols = v166;

LABEL_140:
          if (!v105)
          {
            goto LABEL_167;
          }

          v10 = v159 + 1;
          if (v159 + 1 < v156)
          {
            goto LABEL_144;
          }

          v156 = [obj countByEnumeratingWithState:&v209 objects:v227 count:16];
          if (!v156)
          {
            goto LABEL_168;
          }

          v10 = 0;
LABEL_144:
          v11 = *v210;
          goto LABEL_10;
        }

        v80 = v94;
        v83 = 0;
      }
    }
  }

  integrityProtocols = ne_log_obj();
  if (os_log_type_enabled(integrityProtocols, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1BA83C000, integrityProtocols, OS_LOG_TYPE_ERROR, "IKE SA proposal missing encryption protocol", buf, 2u);
  }

LABEL_166:

LABEL_167:
LABEL_177:
  v3 = 0;
LABEL_178:

  return v3;
}

- (BOOL)hasRequiredFields
{
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
  }

  return [(NEIKEv2IKESAPayload *)self count]!= 0;
}

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v5 = *&indent;
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  typeDescription = [(NEIKEv2IKESAPayload *)self typeDescription];
  [v7 appendPrettyObject:typeDescription withName:@"Payload Type" andIndent:v5 options:options];

  if (self)
  {
    Property = objc_getProperty(self, v9, 32, 1);
  }

  else
  {
    Property = 0;
  }

  [v7 appendPrettyObject:Property withName:@"Proposals" andIndent:v5 options:options];

  return v7;
}

@end