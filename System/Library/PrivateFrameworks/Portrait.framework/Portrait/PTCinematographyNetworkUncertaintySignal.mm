@interface PTCinematographyNetworkUncertaintySignal
- (PTCinematographyNetworkUncertaintySignal)initWithModelDictionary:(id)dictionary;
- (float)_timerUncertaintyForPayload:(id)payload;
- (void)writePayload:(id)payload toStream:(id)stream;
@end

@implementation PTCinematographyNetworkUncertaintySignal

- (PTCinematographyNetworkUncertaintySignal)initWithModelDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = PTCinematographyNetworkUncertaintySignal;
  v5 = [(PTCinematographyNetworkSignal *)&v10 initWithModelDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"params"];
    v7 = [v6 objectForKeyedSubscript:@"timer_seconds_divisor"];
    [v7 floatValue];
    v5->_timerSecondsDivisor = v8;
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
    [(PTCinematographyNetworkUncertaintySignal *)self _timerUncertaintyForPayload:payloadCopy];
    [streamCopy writeFloat:?];
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

- (float)_timerUncertaintyForPayload:(id)payload
{
  payloadCopy = payload;
  detection = [payloadCopy detection];
  v6 = detection;
  if (detection)
  {
    objc_msgSend_time(detection);

    v7 = 0.0;
    if ((BYTE4(v17) & 0x1D) == 1)
    {
      memset(&v15, 0, sizeof(v15));
      if (payloadCopy)
      {
        objc_msgSend_time(payloadCopy);
      }

      else
      {
        memset(&lhs, 0, sizeof(lhs));
      }

      detection2 = [payloadCopy detection];
      v9 = detection2;
      if (detection2)
      {
        objc_msgSend_time(detection2);
      }

      else
      {
        memset(&rhs, 0, sizeof(rhs));
      }

      CMTimeSubtract(&v15, &lhs, &rhs);

      lhs = v15;
      Seconds = CMTimeGetSeconds(&lhs);
      if (Seconds >= 0.0)
      {
        timerSecondsDivisor = self->_timerSecondsDivisor;
        if (timerSecondsDivisor > 0.0)
        {
          v7 = Seconds / timerSecondsDivisor;
        }
      }
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;

    v7 = 0.0;
  }

  return v7;
}

@end