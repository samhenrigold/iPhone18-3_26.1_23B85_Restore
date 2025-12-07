@interface SiriCoreAceSerialization
+ (BOOL)tryParsingAceHeaderData:(id)data compressionType:(unsigned __int8 *)type bytesRead:(unint64_t *)read error:(id *)error;
+ (BOOL)tryParsingPacketWithBytes:(const void *)bytes length:(unint64_t)length rawPacket:(id *)packet object:(id *)object bytesRead:(unint64_t *)read error:(id *)error;
+ (id)_insufficientDataErrorForBytesNeeded:(unint64_t)needed available:(unint64_t)available;
+ (id)_tryParsingPlistPacketBytes:(const void *)bytes length:(unint64_t)length;
+ (id)_tryParsingSpeechPacketBytes:(const void *)bytes length:(unint64_t)length;
+ (id)dataForNop;
+ (id)dataForObject:(id)object error:(id *)error;
+ (id)dataForPing:(unsigned int)ping;
+ (id)dataForPong:(unsigned int)pong;
+ (id)dataForSpeechPacket:(id)packet error:(id *)error;
+ (id)dataForStreamEnd;
+ (id)dataForStreamHeaderWithCompressionType:(unsigned __int8)type;
@end

@implementation SiriCoreAceSerialization

+ (id)_insufficientDataErrorForBytesNeeded:(unint64_t)needed available:(unint64_t)available
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"SiriCoreAceSerializationErrorUserInfoBytesNeeded";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:needed];
  v10[1] = @"SiriCoreAceSerializationErrorUserInfoBytesAvailable";
  v11[0] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:available];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreAceSerializationErrorDomain" code:0 userInfo:v7];

  return v8;
}

+ (BOOL)tryParsingPacketWithBytes:(const void *)bytes length:(unint64_t)length rawPacket:(id *)packet object:(id *)object bytesRead:(unint64_t *)read error:(id *)error
{
  v35[1] = *MEMORY[0x277D85DE8];
  if (!bytes || (lengthCopy = length - 5, length < 5))
  {
    v17 = 5;
    lengthCopy = length;
LABEL_9:
    v18 = [self _insufficientDataErrorForBytesNeeded:v17 available:lengthCopy];
    v19 = 0;
    v20 = 0;
    goto LABEL_10;
  }

  v15 = 0;
  v16 = *bytes;
  if (v16 > 3)
  {
    if (v16 == 4)
    {
      v15 = 3;
      goto LABEL_30;
    }

    if (v16 == 255)
    {
      v15 = 4;
      goto LABEL_30;
    }

    if (v16 != 7)
    {
      goto LABEL_30;
    }

LABEL_22:
    v25 = bswap32(*(bytes + 1));
    if (lengthCopy < v25)
    {
      v17 = v25;
      goto LABEL_9;
    }

    v26 = bytes + 5;
    if (v16 == 7)
    {
      v20 = [SiriCoreAceSerialization _tryParsingSpeechPacketBytes:v26 length:v25];
      if (!v20)
      {
        v27 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:bytes + 5 length:v25];
        v34 = @"SiriCoreAceSerializationErrorUserInfoPlist";
        v35[0] = v27;
        v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
        v29 = MEMORY[0x277CCA9B8];
        v30 = 6;
LABEL_35:
        v18 = [v29 errorWithDomain:@"SiriCoreAceSerializationErrorDomain" code:v30 userInfo:v28];

        v19 = 0;
        goto LABEL_36;
      }
    }

    else
    {
      v20 = [SiriCoreAceSerialization _tryParsingPlistPacketBytes:v26 length:v25];
      if (!v20)
      {
        v27 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:bytes + 5 length:v25];
        v32 = @"SiriCoreAceSerializationErrorUserInfoPlist";
        v33 = v27;
        v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        v29 = MEMORY[0x277CCA9B8];
        v30 = 4;
        goto LABEL_35;
      }
    }

    v31 = v20;
    v18 = 0;
    v19 = v25 + 5;
LABEL_36:

LABEL_10:
    v21 = 0;
    v15 = 0;
    if (!packet)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v16 - 1 < 2)
  {
    goto LABEL_22;
  }

  if (*bytes)
  {
    if (v16 == 3)
    {
      v15 = 2;
    }
  }

  else
  {
    v15 = 1;
  }

LABEL_30:
  v18 = 0;
  v20 = 0;
  v21 = bswap32(*(bytes + 1));
  v19 = 5;
  if (packet)
  {
LABEL_11:
    packet->var0 = v15;
    *(&packet->var0 + 1) = 0;
    *(&packet->var0 + 3) = 0;
    packet->var1 = v21;
  }

LABEL_12:
  if (object)
  {
    v22 = v20;
    *object = v20;
  }

  if (read)
  {
    *read = v19;
  }

  if (error)
  {
    v23 = v18;
    *error = v18;
  }

  return v18 != 0;
}

+ (id)_tryParsingSpeechPacketBytes:(const void *)bytes length:(unint64_t)length
{
  if (length && (v4 = *bytes, v5 = length - 1 - v4, length - 1 >= v4))
  {
    v7 = bytes + 1;
    v8 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v4];
    memmove([v8 mutableBytes], v7, v4);
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
    v10 = v9;
    v6 = 0;
    if (v5 >= 2 && v9)
    {
      if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v6 = 0;
      }

      else
      {
        v11 = &v7[v4];
        v23 = *&v7[v4];
        v12 = bswap32(*&v7[v4 + 2]) >> 16;
        v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (v12 < 1)
        {
LABEL_13:
          v6 = objc_alloc_init(SiriCoreSpeechPacket);
          [(SiriCoreSpeechPacket *)v6 setRefId:v10];
          [(SiriCoreSpeechPacket *)v6 setPacketNumber:(bswap32(v23) >> 16)];
          [(SiriCoreSpeechPacket *)v6 setPackets:v13];
        }

        else
        {
          v14 = 0;
          v15 = v5 - 4;
          v16 = v11 + 4;
          while (1)
          {
            v17 = v15 - 2;
            if (v15 < 2)
            {
              break;
            }

            v18 = bswap32(*v16) >> 16;
            if (v17 < v18)
            {
              break;
            }

            v19 = v18;
            v20 = v16 + 2;
            v21 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v18];
            memmove([v21 mutableBytes], v20, v19);
            v16 = &v20[v19];
            v15 = v17 - v19;
            [v13 addObject:v21];

            if (v12 <= ++v14)
            {
              goto LABEL_13;
            }
          }

          v6 = 0;
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_tryParsingPlistPacketBytes:(const void *)bytes length:(unint64_t)length
{
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:bytes length:length];
  v5 = [MEMORY[0x277D470E0] aceObjectWithPlistData:v4];

  return v5;
}

+ (BOOL)tryParsingAceHeaderData:(id)data compressionType:(unsigned __int8 *)type bytesRead:(unint64_t *)read error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v20 = 0;
  if ([dataCopy length] < 4)
  {
    v14 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
    {
      v15 = v14;
      *buf = 136315650;
      v22 = "+[SiriCoreAceSerialization tryParsingAceHeaderData:compressionType:bytesRead:error:]";
      v23 = 2048;
      *v24 = 4;
      *&v24[8] = 2048;
      v25 = [dataCopy length];
      _os_log_impl(&dword_2669D1000, v15, OS_LOG_TYPE_INFO, "%s Ace Header needs %lu bytes, but have %lu", buf, 0x20u);
    }

    v13 = [self _insufficientDataErrorForBytesNeeded:4 available:{objc_msgSend(dataCopy, "length")}];
LABEL_12:
    v16 = 0;
    v17 = 1;
    if (!type)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  [dataCopy getBytes:&v20 length:4];
  if (v20 != 52394 || BYTE2(v20) != 238)
  {
    v12 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v22 = "+[SiriCoreAceSerialization tryParsingAceHeaderData:compressionType:bytesRead:error:]";
      v23 = 1024;
      *v24 = v20;
      *&v24[4] = 1024;
      *&v24[6] = BYTE1(v20);
      LOWORD(v25) = 1024;
      *(&v25 + 2) = BYTE2(v20);
      _os_log_error_impl(&dword_2669D1000, v12, OS_LOG_TYPE_ERROR, "%s Got invalid header for connection! %x %x %x", buf, 0x1Eu);
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreAceSerializationErrorDomain" code:2 userInfo:0];
    goto LABEL_12;
  }

  v13 = 0;
  v17 = HIBYTE(v20);
  v16 = 4;
  if (type)
  {
LABEL_13:
    *type = v17;
  }

LABEL_14:
  if (read)
  {
    *read = v16;
  }

  if (error)
  {
    v13 = v13;
    *error = v13;
  }

  v18 = v13 != 0;

  return v18;
}

+ (id)dataForSpeechPacket:(id)packet error:(id *)error
{
  v61 = *MEMORY[0x277D85DE8];
  packetCopy = packet;
  refId = [packetCopy refId];
  uTF8String = [refId UTF8String];

  if (uTF8String)
  {
    v10 = strlen(uTF8String);
    v11 = v10;
    if (v10 > 0x7F)
    {
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreAceSerializationErrorDomain" code:6 userInfo:0];
      if (v12)
      {
        v13 = v12;
        v11 = 0;
LABEL_9:
        v15 = 0;
        goto LABEL_11;
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  packetNumber = [packetCopy packetNumber];
  v15 = packetNumber;
  if (packetNumber != packetNumber)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreAceSerializationErrorDomain" code:6 userInfo:0];
    goto LABEL_9;
  }

  v13 = 0;
LABEL_11:
  packets = [packetCopy packets];
  v17 = packets;
  if (v13)
  {
    goto LABEL_12;
  }

  v21 = [packets count];
  v50 = v17;
  if (v21 >> 15)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreAceSerializationErrorDomain" code:6 userInfo:0];
    if (v13)
    {
LABEL_12:
      v18 = 0;
      if (!error)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v46 = a2;
    selfCopy2 = self;
    v22 = 5;
  }

  else
  {
    LODWORD(v13) = v21;
    v46 = a2;
    selfCopy2 = self;
    size = error;
    v23 = 2 * v21;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v24 = v17;
    v25 = [v24 countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v56;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v56 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v23 += [*(*(&v55 + 1) + 8 * i) length];
        }

        v26 = [v24 countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v26);
    }

    v22 = v23 + 5;
    error = size;
    v17 = v50;
  }

  v29 = v22 + v11;
  v30 = bswap32(v29);
  sizea = v29 + 5;
  v31 = malloc_type_malloc(sizea, 0x1000040957D8CC4uLL);
  v32 = v31;
  *v31 = 7;
  *(v31 + 1) = v30;
  v31[5] = v11;
  v33 = v31 + 6;
  if (v11 >= 1)
  {
    memmove(v31 + 6, uTF8String, v11);
    v33 = (v33 + v11);
  }

  *v33 = bswap32(v15) >> 16;
  v33[1] = bswap32(v13) >> 16;
  v34 = (v33 + 2);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v35 = v17;
  v36 = [v35 countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = 0;
    v39 = *v52;
    for (j = *v52; ; j = *v52)
    {
      if (j != v39)
      {
        objc_enumerationMutation(v35);
      }

      v41 = *(*(&v51 + 1) + 8 * v38);
      v42 = [v41 length];
      *v34 = bswap32(v42) >> 16;
      v43 = v34 + 2;
      memmove(v43, [v41 bytes], v42);
      v34 = &v43[v42];
      if (++v38 >= v37)
      {
        v44 = [v35 countByEnumeratingWithState:&v51 objects:v59 count:16];
        if (!v44)
        {
          v17 = v50;
          break;
        }

        v37 = v44;
        v38 = 0;
      }
    }
  }

  if (v34 - v32 != sizea)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:v46 object:selfCopy2 file:@"SiriCoreAceSerialization.m" lineNumber:229 description:@"Error serializing SiriCoreSpeechPacket"];
  }

  v18 = dispatch_data_create(v32, sizea, 0, *MEMORY[0x277D85CB0]);
  v13 = 0;
  if (error)
  {
LABEL_13:
    v19 = v13;
    *error = v13;
  }

LABEL_14:

  return v18;
}

+ (id)dataForStreamEnd
{
  v5 = 0;
  buffer = 255;
  v2 = dispatch_data_create(&buffer, 5uLL, 0, 0);

  return v2;
}

+ (id)dataForNop
{
  v5 = 0;
  buffer = 0;
  v2 = dispatch_data_create(&buffer, 5uLL, 0, 0);

  return v2;
}

+ (id)dataForPong:(unsigned int)pong
{
  buffer = 4;
  v6 = bswap32(pong);
  v3 = dispatch_data_create(&buffer, 5uLL, 0, 0);

  return v3;
}

+ (id)dataForPing:(unsigned int)ping
{
  buffer = 3;
  v6 = bswap32(ping);
  v3 = dispatch_data_create(&buffer, 5uLL, 0, 0);

  return v3;
}

+ (id)dataForObject:(id)object error:(id *)error
{
  objectCopy = object;
  _serializedData = [objectCopy _serializedData];
  if (_serializedData)
  {
    v7 = _serializedData;
  }

  else
  {
    dictionary = [objectCopy dictionary];
    if (!dictionary || (v13 = dictionary, [MEMORY[0x277CCAC58] dataWithPropertyList:dictionary format:200 options:0 error:error], v7 = objc_claimAutoreleasedReturnValue(), v13, !v7))
    {
      if (error && !*error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreAceSerializationErrorDomain" code:5 userInfo:0];
        *error = v10 = 0;
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_4;
    }
  }

  v8 = [v7 length];
  v9 = malloc_type_malloc(v8 + 5, 0xECA18A83uLL);
  *v9 = 2;
  *(v9 + 1) = bswap32(v8);
  memmove(v9 + 5, [v7 bytes], v8);
  v10 = dispatch_data_create(v9, v8 + 5, 0, *MEMORY[0x277D85CB0]);

LABEL_4:

  return v10;
}

+ (id)dataForStreamHeaderWithCompressionType:(unsigned __int8)type
{
  v6 = -18;
  buffer = -13142;
  typeCopy = type;
  v3 = dispatch_data_create(&buffer, 4uLL, 0, 0);

  return v3;
}

@end