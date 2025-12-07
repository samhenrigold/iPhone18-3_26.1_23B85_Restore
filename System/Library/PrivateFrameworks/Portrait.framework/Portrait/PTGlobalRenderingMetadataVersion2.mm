@interface PTGlobalRenderingMetadataVersion2
- (BOOL)applyToRenderState:(id)state error:(id *)error;
- (BOOL)matchesRenderState:(id)state;
- (BOOL)writeToData:(id)data withOptions:(id)options;
- (PTGlobalRenderingMetadataVersion2)initWithData:(id)data;
- (PTGlobalRenderingMetadataVersion2)initWithMinorVersion:(unsigned int)version;
- (void)applyToRenderRequest:(id)request;
@end

@implementation PTGlobalRenderingMetadataVersion2

- (PTGlobalRenderingMetadataVersion2)initWithMinorVersion:(unsigned int)version
{
  v6.receiver = self;
  v6.super_class = PTGlobalRenderingMetadataVersion2;
  v3 = [(PTGlobalRenderingMetadata *)&v6 initWithMajorVersion:2 minorVersion:*&version];
  if (v3)
  {
    *(&v3->super._renderingVersion + 1) = +[PTRenderPipeline latestVersion];
    v4 = v3;
  }

  return v3;
}

- (BOOL)writeToData:(id)data withOptions:(id)options
{
  dataCopy = data;
  optionsCopy = options;
  v8 = [(PTGlobalRenderingMetadataVersion2 *)self sizeOfSerializedObjectWithOptions:optionsCopy];
  if ([dataCopy length] < v8 || -[PTGlobalRenderingMetadata majorVersion](self, "majorVersion") != 2)
  {
    goto LABEL_8;
  }

  mutableBytes = [dataCopy mutableBytes];
  *mutableBytes = bswap32([(PTGlobalRenderingMetadataVersion2 *)self sizeOfSerializedObjectWithOptions:optionsCopy]);
  mutableBytes[1] = 1684956530;
  mutableBytes[2] = bswap32([(PTGlobalRenderingMetadata *)self majorVersion]);
  mutableBytes[3] = bswap32([(PTGlobalRenderingMetadata *)self minorVersion]);
  v15 = mutableBytes + 4;
  [PTParameterPairSerialization appendUIntParameter:1 value:*(&self->super._renderingVersion + 1) toOutput:&v15];
  [PTParameterPairSerialization appendUIntParameter:2 value:*&self->_readSuccessAll toOutput:&v15];
  [PTParameterPairSerialization appendUIntParameter:3 value:self->_hwModelID toOutput:&v15];
  [PTParameterPairSerialization appendUIntParameter:4 value:self->_sensorID toOutput:&v15];
  v10 = *(&self->super._renderingVersion + 1);
  if (v10 == +[PTRenderPipeline latestVersion])
  {
    [PTParameterPairSerialization appendUIntParameter:5 value:3 toOutput:&v15];
  }

  v11 = v15;
  v12 = v11 - [dataCopy bytes];
  if (v12 == [(PTGlobalRenderingMetadataVersion2 *)self sizeOfSerializedObjectWithOptions:optionsCopy])
  {
    v13 = 1;
  }

  else
  {
LABEL_8:
    v13 = 0;
  }

  return v13;
}

- (BOOL)matchesRenderState:(id)state
{
  stateCopy = state;
  v5 = *(&self->super._renderingVersion + 1);
  if ([stateCopy renderingVersion] == v5 && (v6 = *&self->_readSuccessAll, v6 == objc_msgSend(stateCopy, "hwModelID")))
  {
    sensorID = self->_sensorID;
    v8 = sensorID == [stateCopy sourceColorBitDepth];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)applyToRenderState:(id)state error:(id *)error
{
  stateCopy = state;
  if (error && ![PTRenderPipeline isRenderVersionSupported:*(&self->super._renderingVersion + 1)])
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Portrait.RenderingMetadata" code:2 userInfo:0];
  }

  v7 = [(PTGlobalRenderingMetadataVersion2 *)self matchesRenderState:stateCopy];
  [stateCopy setSourceColorBitDepth:self->_sensorID];
  [stateCopy setRenderingVersion:*(&self->super._renderingVersion + 1)];
  [stateCopy setHwModelID:*&self->_readSuccessAll];
  v8 = [stateCopy prepareForRendering:!v7];
  renderingVersion = self->_renderingVersion;
  if ((renderingVersion & 1) == 0)
  {
    v10 = _PTLogSystem(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PTTimedRenderingMetadataVersion1 applyToRenderRequest:v10];
    }
  }

  return renderingVersion;
}

- (void)applyToRenderRequest:(id)request
{
  hwModelID = self->_hwModelID;
  requestCopy = request;
  [requestCopy setSensorID:hwModelID];
  [requestCopy setNetworkBias:0.0];

  if ((self->_renderingVersion & 1) == 0)
  {
    v7 = _PTLogSystem(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PTTimedRenderingMetadataVersion1 applyToRenderRequest:v7];
    }
  }
}

- (PTGlobalRenderingMetadataVersion2)initWithData:(id)data
{
  v55 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  bytes = [dataCopy bytes];
  v6 = [(PTGlobalRenderingMetadataVersion2 *)self initWithMinorVersion:bswap32(bytes[3])];
  if (v6 && (v7 = bswap32(*bytes), [dataCopy length] == v7) && (v7 & 7) == 0 && -[PTGlobalRenderingMetadata majorVersion](v6, "majorVersion") == 2 && -[PTGlobalRenderingMetadata majorVersion](v6, "majorVersion") == bswap32(bytes[2]))
  {
    v8 = (v7 + 0x7FFFFFFF0) >> 3;
    v52 = 0;
    LOBYTE(v6->_renderingVersion) = 1;
    v9 = [PTParameterPairSerialization getUIntParameter:1 fromPairs:bytes + 4 numPairs:v8 didFindValue:&v52];
    *(&v6->super._renderingVersion + 1) = v9;
    v17 = [OUTLINED_FUNCTION_0_7(v9 v10];
    *&v6->_readSuccessAll = v17;
    v25 = [OUTLINED_FUNCTION_0_7(v17 v18];
    v6->_hwModelID = v25;
    v6->_sensorID = [OUTLINED_FUNCTION_0_7(v25 v26];
    LOBYTE(v6->_renderingVersion) &= v52;
    v33 = [PTRenderPipeline isRenderVersionSupported:*(&v6->super._renderingVersion + 1)];
    if ((v33 & 1) == 0)
    {
      v34 = _PTLogSystem(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = *(&v6->super._renderingVersion + 1);
        *buf = 67109120;
        LODWORD(v54) = v35;
        _os_log_impl(&dword_2243FB000, v34, OS_LOG_TYPE_INFO, "Render version not supported: %i", buf, 8u);
      }

      v36 = [PTParameterPairSerialization getUIntParameter:5 fromPairs:bytes + 4 numPairs:v8 withDefault:*(&v6->super._renderingVersion + 1) didFindValue:&v52];
      *(&v6->super._renderingVersion + 1) = v36;
      v37 = _PTLogSystem(v36);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = v52;
        if (v52 == 1)
        {
          v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"found: %i", *(&v6->super._renderingVersion + 1)];
        }

        else
        {
          v39 = @"not found";
        }

        *buf = 138412290;
        v54 = v39;
        _os_log_impl(&dword_2243FB000, v37, OS_LOG_TYPE_INFO, "Fallback version %@", buf, 0xCu);
        if (v38)
        {
        }
      }
    }

    v40 = v6;
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

@end