@interface PTCinematographyNetworkRectSignal
- (PTCinematographyNetworkRectSignal)initWithModelDictionary:(id)dictionary;
- (void)writePayload:(id)payload toStream:(id)stream;
@end

@implementation PTCinematographyNetworkRectSignal

- (PTCinematographyNetworkRectSignal)initWithModelDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = PTCinematographyNetworkRectSignal;
  v5 = [(PTCinematographyNetworkSignal *)&v9 initWithModelDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"params"];
    v7 = [v6 objectForKeyedSubscript:@"width_height"];
    v5->_useSqrtForArea = [v7 isEqualToString:@"geomean"];
  }

  return v5;
}

- (void)writePayload:(id)payload toStream:(id)stream
{
  payloadCopy = payload;
  streamCopy = stream;
  v8 = [(PTCinematographyNetworkSignal *)self checkSignalForStream:streamCopy];
  if (v8)
  {
    if ([payloadCopy isMissingDetection])
    {
      [streamCopy writeZerosWithCount:3];
    }

    else
    {
      detection = [payloadCopy detection];
      [detection rect];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      Area = CGRectGetArea(v12, v14, v16, v18);
      v26.origin.x = v12;
      v26.origin.y = v14;
      v26.size.width = v16;
      v26.size.height = v18;
      MidX = CGRectGetMidX(v26);
      v27.origin.x = v12;
      v27.origin.y = v14;
      v27.size.width = v16;
      v27.size.height = v18;
      MidY = CGRectGetMidY(v27);
      useSqrtForArea = [(PTCinematographyNetworkRectSignal *)self useSqrtForArea];
      *&v23 = sqrtf(Area);
      if (!useSqrtForArea)
      {
        *&v23 = Area;
      }

      [streamCopy writeFloat:v23];
      *&v24 = MidX;
      [streamCopy writeFloat:v24];
      *&v25 = MidY;
      [streamCopy writeFloat:v25];
    }
  }

  else
  {
    v9 = _PTLogSystem(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyNetworkNamedSignal writePayload:v9 toStream:?];
    }
  }
}

@end