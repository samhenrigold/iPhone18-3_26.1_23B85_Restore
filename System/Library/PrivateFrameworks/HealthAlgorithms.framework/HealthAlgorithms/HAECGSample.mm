@interface HAECGSample
- (BOOL)parseRepresentation:(id)representation withMetadata:(id)metadata;
- (HAECGSample)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata;
- (HAECGSample)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (id)decodeHALV1Payload:(id *)payload withMetadata:(id)metadata;
- (id)decodeHALV2Payload:(id *)payload withMetadata:(id)metadata withPayloadVersion2:(BOOL)version2;
- (void)setTimestampWithRtpTicks:(unint64_t)ticks withMetadata:(id)metadata;
@end

@implementation HAECGSample

- (void)setTimestampWithRtpTicks:(unint64_t)ticks withMetadata:(id)metadata
{
  metadataCopy = metadata;
  v6 = [metadataCopy objectForKeyedSubscript:@"timestampReference"];
  unsignedLongLongValue = [v6 unsignedLongLongValue];
  v8 = [metadataCopy objectForKeyedSubscript:@"rtpTicksPerSecond"];
  unsignedIntValue = [v8 unsignedIntValue];
  v10 = [metadataCopy objectForKeyedSubscript:@"wallclockTimeReference"];
  [v10 doubleValue];
  v12 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:(ticks - unsignedLongLongValue) / unsignedIntValue + v11];
  timestamp = self->_timestamp;
  self->_timestamp = v12;
}

- (id)decodeHALV2Payload:(id *)payload withMetadata:(id)metadata withPayloadVersion2:(BOOL)version2
{
  version2Copy = version2;
  self->_frequency = *(&payload->var5 + 1) * 0.000015259;
  [(HAECGSample *)self setTimestampWithRtpTicks:*(&payload->var4 + 1) withMetadata:metadata];
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:16];
  if (payload->var2)
  {
    v8 = 0;
    v9 = (&payload->var6.var4 + 3);
    do
    {
      v10 = (*v9 >> 6) & 2;
      if (*v9 & 0xFFFFFD7F | *(v9 - 1) & 0x2660)
      {
        v11 = v10 + 1;
      }

      else
      {
        v11 = v10;
      }

      v12 = CinnAlgs::convertAdcAcVolt(payload, v8, version2Copy);
      v13 = [HAECGData alloc];
      *&v14 = v12;
      v15 = [(HAECGData *)v13 initWithFlags:v11 value:v14];
      [v7 addObject:v15];
      v9 += 7;

      ++v8;
    }

    while (v8 < payload->var2);
  }

  return v7;
}

- (id)decodeHALV1Payload:(id *)payload withMetadata:(id)metadata
{
  metadataCopy = metadata;
  v39 = 0u;
  memset(v40, 0, sizeof(v40));
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *&v13[16] = 0u;
  v14 = 0u;
  *v13 = 0u;
  v13[4] = payload->var2;
  *&v13[9] = *(&payload->var4 + 1);
  *&v13[17] = *(&payload->var5 + 1);
  *&v13[25] = *(&payload->var5 + 5);
  if (v13[4])
  {
    v7 = 0;
    v8 = 28 * v13[4];
    v9 = &payload->var6 + 1;
    do
    {
      v10 = &v13[v7];
      *(v10 + 33) = *v9;
      *(v10 + 35) = *(v9 + 2);
      *(v10 + 47) = *(v9 + 3);
      v7 += 28;
      v9 += 18;
    }

    while (v8 != v7);
  }

  v11 = [(HAECGSample *)self decodeHALV2Payload:v13 withMetadata:metadataCopy withPayloadVersion2:0];

  return v11;
}

- (BOOL)parseRepresentation:(id)representation withMetadata:(id)metadata
{
  v46 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  metadataCopy = metadata;
  v40 = 0;
  v8 = [representationCopy length];
  if (v8 <= 1)
  {
    v9 = ha_get_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      -[HAECGSample parseRepresentation:withMetadata:].cold.7(&v41, [representationCopy length]);
    }

    goto LABEL_28;
  }

  if (!metadataCopy)
  {
    v22 = ha_get_log(v8);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [HAECGSample parseRepresentation:v22 withMetadata:?];
    }

    goto LABEL_27;
  }

  v10 = [metadataCopy objectForKeyedSubscript:@"timestampReference"];
  v11 = v10;
  if (!v10)
  {
LABEL_25:
    v22 = ha_get_log(v10);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [HAECGSample parseRepresentation:v22 withMetadata:?];
    }

LABEL_27:

    goto LABEL_28;
  }

  v12 = [metadataCopy objectForKeyedSubscript:@"rtpTicksPerSecond"];
  if (!v12)
  {
LABEL_24:

    goto LABEL_25;
  }

  v13 = [metadataCopy objectForKeyedSubscript:@"wallclockTimeReference"];
  if (!v13)
  {
LABEL_23:

    goto LABEL_24;
  }

  v14 = [metadataCopy objectForKeyedSubscript:@"sessionIdentifier"];
  if (!v14)
  {
LABEL_22:

    goto LABEL_23;
  }

  v15 = [metadataCopy objectForKeyedSubscript:@"ecgApp"];
  if (!v15)
  {

    goto LABEL_22;
  }

  v16 = [metadataCopy objectForKeyedSubscript:@"contactDetected"];

  if (!v16)
  {
    goto LABEL_25;
  }

  v17 = [metadataCopy objectForKeyedSubscript:@"contactDetected"];
  bOOLValue = [v17 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    goto LABEL_28;
  }

  [representationCopy getBytes:&v40 length:2];
  if (v40 > 0x105u)
  {
    if (v40 == 262)
    {
      v30 = [representationCopy length];
      if (v30 != 13)
      {
        v39 = ha_get_log(v30);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
        {
          -[HAECGSample parseRepresentation:withMetadata:].cold.1(&v41, [representationCopy length]);
        }

        goto LABEL_57;
      }

      [representationCopy getBytes:&v43 length:13];
      [(HAECGSample *)self setTimestampWithRtpTicks:v45 withMetadata:metadataCopy];
      if (!v44)
      {
        goto LABEL_41;
      }

      v26 = self->_flags | 1;
    }

    else
    {
      if (v40 != 265)
      {
        goto LABEL_28;
      }

      v25 = [representationCopy length];
      if (v25 != 13)
      {
        v39 = ha_get_log(v25);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
        {
          -[HAECGSample parseRepresentation:withMetadata:].cold.1(&v41, [representationCopy length]);
        }

        goto LABEL_57;
      }

      [representationCopy getBytes:&v43 length:13];
      [(HAECGSample *)self setTimestampWithRtpTicks:v45 withMetadata:metadataCopy];
      if (!v44)
      {
        goto LABEL_41;
      }

      v26 = self->_flags | 2;
    }

    self->_flags = v26;
    goto LABEL_41;
  }

  if (v40 == 170)
  {
    v27 = [representationCopy length];
    if (v27 == 315)
    {
      [representationCopy getBytes:&v41 length:315];
      v28 = [(HAECGSample *)self decodeHALV1Payload:v42 withMetadata:metadataCopy];
      ecgData = self->_ecgData;
      self->_ecgData = v28;

      goto LABEL_41;
    }

    v39 = ha_get_log(v27);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
    {
      -[HAECGSample parseRepresentation:withMetadata:].cold.4(&v43, [representationCopy length]);
    }

    goto LABEL_57;
  }

  if (v40 != 216)
  {
LABEL_28:
    v23 = 0;
    goto LABEL_29;
  }

  v19 = [representationCopy length];
  if (v19 != 483)
  {
    v39 = ha_get_log(v19);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
    {
      -[HAECGSample parseRepresentation:withMetadata:].cold.3(&v43, [representationCopy length]);
    }

LABEL_57:

    goto LABEL_28;
  }

  [representationCopy getBytes:&v41 length:483];
  v20 = [(HAECGSample *)self decodeHALV2Payload:v42 withMetadata:metadataCopy withPayloadVersion2:1];
  v21 = self->_ecgData;
  self->_ecgData = v20;

LABEL_41:
  v31 = [metadataCopy objectForKeyedSubscript:@"sessionIdentifier"];
  sessionIdentifier = self->_sessionIdentifier;
  self->_sessionIdentifier = v31;

  v33 = [metadataCopy objectForKeyedSubscript:@"ecgApp"];
  bOOLValue2 = [v33 BOOLValue];
  v35 = 4;
  if (!bOOLValue2)
  {
    v35 = 0;
  }

  self->_flags |= v35;

  v36 = [metadataCopy objectForKeyedSubscript:@"rightWrist"];
  bOOLValue3 = [v36 BOOLValue];
  v38 = 8;
  if (bOOLValue3)
  {
    v38 = 0;
  }

  self->_flags |= v38;

  v23 = 1;
LABEL_29:

  return v23;
}

- (HAECGSample)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  representationCopy = representation;
  metadataCopy = metadata;
  v13.receiver = self;
  v13.super_class = HAECGSample;
  v9 = [(HAECGSample *)&v13 init];
  v10 = v9;
  if (v9)
  {
    [(HAECGSample *)v9 parseRepresentation:representationCopy withMetadata:metadataCopy];
    v11 = v10;
  }

  return v10;
}

- (HAECGSample)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata
{
  representationCopy = representation;
  metadataCopy = metadata;
  v12.receiver = self;
  v12.super_class = HAECGSample;
  v8 = [(HAECGSample *)&v12 init];
  v9 = v8;
  if (v8 && [(HAECGSample *)v8 parseRepresentation:representationCopy withMetadata:metadataCopy])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)parseRepresentation:(_DWORD *)a1 withMetadata:(uint64_t)a2 .cold.1(_DWORD *a1, uint64_t a2)
{
  *a1 = 134218240;
  OUTLINED_FUNCTION_1(a1, a2, 13);
  OUTLINED_FUNCTION_2(&dword_251282000, v2, v3, "invalid packet length: expected = %zu, received %zu", v4);
}

- (void)parseRepresentation:(_DWORD *)a1 withMetadata:(uint64_t)a2 .cold.3(_DWORD *a1, uint64_t a2)
{
  *a1 = 134218240;
  OUTLINED_FUNCTION_1(a1, a2, 483);
  OUTLINED_FUNCTION_2(&dword_251282000, v2, v3, "invalid packet length: expected = %zu, received %zu", v4);
}

- (void)parseRepresentation:(_DWORD *)a1 withMetadata:(uint64_t)a2 .cold.4(_DWORD *a1, uint64_t a2)
{
  *a1 = 134218240;
  OUTLINED_FUNCTION_1(a1, a2, 315);
  OUTLINED_FUNCTION_2(&dword_251282000, v2, v3, "invalid packet length: expected = %zu, received %zu", v4);
}

- (void)parseRepresentation:(_DWORD *)a1 withMetadata:(uint64_t)a2 .cold.7(_DWORD *a1, uint64_t a2)
{
  *a1 = 134218240;
  OUTLINED_FUNCTION_1(a1, a2, 2);
  OUTLINED_FUNCTION_2(&dword_251282000, v2, v3, "invalid packet length: expected >= %zu, received %zu", v4);
}

@end