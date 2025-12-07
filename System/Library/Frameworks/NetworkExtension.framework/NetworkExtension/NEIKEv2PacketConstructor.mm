@interface NEIKEv2PacketConstructor
- (uint64_t)appendPayloadsToPacket:(unsigned int)packet withLength:;
@end

@implementation NEIKEv2PacketConstructor

- (uint64_t)appendPayloadsToPacket:(unsigned int)packet withLength:
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (*(self + 1) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v24) = 0;
      _os_log_fault_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_FAULT, "Request to write plaintext with finalized construction state", &v24, 2u);
    }

    goto LABEL_30;
  }

  v7 = objc_getProperty(self, v5, 24, 1);
  v8 = [v7 count];
  if (packet)
  {
    if (v8)
    {
      v9 = [v7 count]- 1;
      v10 = self[1];
      if (v10 <= v9)
      {
        v11 = self[2];
        do
        {
          v12 = [v7 objectAtIndexedSubscript:v10];
          v13 = [v12 length] - v11;
          bytes = [v12 bytes];
          packetCopy = packet;
          if (v13 > packet)
          {
            [v6 appendBytes:bytes + v11 length:packet];
            v16 = v11 + packet;

            goto LABEL_14;
          }

          [v6 appendBytes:bytes + v11 length:v13];
          packet -= v13;
          ++v10;

          if (packetCopy == v13)
          {
            break;
          }

          v11 = 0;
        }

        while (v10 <= v9);
        if (packet)
        {
          goto LABEL_23;
        }

        v16 = 0;
LABEL_14:
        v17 = 0x7FFFFFFFFFFFFFFFLL;
        if (v10 <= v9)
        {
          v17 = v10;
        }

        self[1] = v17;
        self[2] = v16;
        goto LABEL_17;
      }

LABEL_23:
      v20 = ne_log_obj();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_29;
      }

      v24 = 67109120;
      packetCopy3 = packet;
      v21 = "Ran out of payloads with remaining length %u to write";
      goto LABEL_25;
    }

    v20 = ne_log_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      v24 = 67109120;
      packetCopy3 = packet;
      v21 = "Request to write plaintext (length %u) with empty payload vector";
LABEL_25:
      v22 = v20;
      v23 = 8;
LABEL_28:
      _os_log_fault_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_FAULT, v21, &v24, v23);
    }

LABEL_29:

LABEL_30:
    v18 = 0;
    goto LABEL_18;
  }

  if (v8)
  {
    v20 = ne_log_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v24) = 0;
      v21 = "Request to write no plaintext with non-empty payload vector";
      v22 = v20;
      v23 = 2;
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  *(self + 1) = xmmword_1BAA4E560;
LABEL_17:
  v18 = 1;
LABEL_18:

  return v18;
}

@end