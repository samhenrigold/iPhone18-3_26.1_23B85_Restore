@interface NEIKEv2IntermediatePacket
- (BOOL)constructAuthenticatedDataWithPayloads:(int)payloads payloadsLength:(void *)length authenticatedHeaders:;
- (void)filloutPayloads;
- (void)gatherPayloads;
@end

@implementation NEIKEv2IntermediatePacket

- (void)filloutPayloads
{
  v45 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  if (self)
  {
    rawPayloads = self->super._rawPayloads;
  }

  else
  {
    rawPayloads = 0;
  }

  v4 = rawPayloads;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v35;
    v9 = 0x1E695D000uLL;
    v10 = &OBJC_IVAR___NEFilterFlow__direction;
    v11 = 0x1E7F04000uLL;
    *&v6 = 138412546;
    v32 = v6;
    v33 = v4;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        type = [v13 type];
        if (type == 41)
        {
          v17 = v13;
          if (self && objc_getProperty(self, v16, 64, 1))
          {
            v20 = [objc_getProperty(self v18];
            goto LABEL_23;
          }

          v43 = v17;
          v20 = [*(v9 + 3784) arrayWithObjects:&v43 count:1];
          if (self)
          {
LABEL_23:
            selfCopy2 = self;
            v30 = v20;
            v31 = 64;
            goto LABEL_26;
          }

          goto LABEL_27;
        }

        if (type == 34)
        {
          if (self)
          {
            objc_setProperty_atomic(self, v15, v13, v10[612]);
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = v13;
            if (self && objc_getProperty(self, v21, 56, 1))
            {
              v20 = [objc_getProperty(self v22];
            }

            else
            {
              v42 = v17;
              v20 = [*(v9 + 3784) arrayWithObjects:&v42 count:1];
              if (!self)
              {
                goto LABEL_27;
              }
            }

            selfCopy2 = self;
            v30 = v20;
            v31 = 56;
LABEL_26:
            objc_setProperty_atomic(selfCopy2, v19, v30, v31);
LABEL_27:

            continue;
          }

          v23 = ne_log_obj();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = v11;
            v25 = v10;
            v26 = v9;
            copyShortDescription = [(NEIKEv2Packet *)self copyShortDescription];
            typeDescription = [v13 typeDescription];
            *buf = v32;
            v39 = copyShortDescription;
            v40 = 2112;
            v41 = typeDescription;
            _os_log_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_DEFAULT, "%@ ignoring unexpected %@ payload", buf, 0x16u);

            v9 = v26;
            v10 = v25;
            v11 = v24;
            v4 = v33;
          }
        }
      }

      v7 = [(NSArray *)v4 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v7);
  }
}

- (void)gatherPayloads
{
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self)
  {
    if (objc_getProperty(self, v3, 96, 1))
    {
      [v7 addObject:{objc_getProperty(self, v4, 96, 1)}];
    }

    [v7 addObjectsFromArray:{objc_getProperty(self, v4, 64, 1)}];
    Property = objc_getProperty(self, v5, 56, 1);
  }

  else
  {
    [v7 addObjectsFromArray:0];
    Property = 0;
  }

  [v7 addObjectsFromArray:Property];
  [(NEIKEv2Packet *)self setRawPayloads:v7];
}

- (BOOL)constructAuthenticatedDataWithPayloads:(int)payloads payloadsLength:(void *)length authenticatedHeaders:
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a2;
  lengthCopy = length;
  v9 = lengthCopy;
  if (!v7)
  {
    v16 = ne_log_obj();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
LABEL_11:

      v11 = 0;
      goto LABEL_7;
    }

    *v25 = 136315138;
    *&v25[4] = "[NEIKEv2IntermediatePacket constructAuthenticatedDataWithPayloads:payloadsLength:authenticatedHeaders:]";
    v17 = "%s called with null payloads";
LABEL_15:
    _os_log_fault_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_FAULT, v17, v25, 0xCu);
    goto LABEL_11;
  }

  if (!lengthCopy)
  {
    v16 = ne_log_obj();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    *v25 = 136315138;
    *&v25[4] = "[NEIKEv2IntermediatePacket constructAuthenticatedDataWithPayloads:payloadsLength:authenticatedHeaders:]";
    v17 = "%s called with null authenticatedHeaders";
    goto LABEL_15;
  }

  *v25 = 0u;
  v26 = 0u;
  v10 = [lengthCopy length];
  v11 = v10 > 0x1F;
  if (v10 > 0x1F)
  {
    [v9 getBytes:v25 length:32];
    HIWORD(v26) = bswap32(payloads + 4) >> 16;
    DWORD2(v26) = bswap32((payloads + 4) + 28);
    LOBYTE(v26) = 46;
    v18 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v25 length:32];
    v20 = v18;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    v13 = [v12 arrayByAddingObjectsFromArray:v7];
    v14 = *(self + 88);
    *(self + 88) = v13;
  }

  else
  {
    v18 = ne_log_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v22 = [v9 length];
      v23 = 2048;
      v24 = 32;
      _os_log_fault_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_FAULT, "Authenticated header length %zu < minimum length %zu", buf, 0x16u);
    }
  }

LABEL_7:
  return v11;
}

@end