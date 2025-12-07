@interface RWIProtocolDOMAudioMediaStats
- (NSString)codec;
- (NSString)humanReadableCodecString;
- (RWIProtocolDOMAudioMediaStats)initWithBitrate:(int)bitrate codec:(id)codec humanReadableCodecString:(id)string numberOfChannels:(int)channels sampleRate:(double)rate;
- (double)sampleRate;
- (int)bitrate;
- (int)numberOfChannels;
- (void)setBitrate:(int)bitrate;
- (void)setCodec:(id)codec;
- (void)setHumanReadableCodecString:(id)string;
- (void)setNumberOfChannels:(int)channels;
- (void)setSampleRate:(double)rate;
@end

@implementation RWIProtocolDOMAudioMediaStats

- (RWIProtocolDOMAudioMediaStats)initWithBitrate:(int)bitrate codec:(id)codec humanReadableCodecString:(id)string numberOfChannels:(int)channels sampleRate:(double)rate
{
  v8 = *&channels;
  v10 = *&bitrate;
  codecCopy = codec;
  stringCopy = string;
  v17.receiver = self;
  v17.super_class = RWIProtocolDOMAudioMediaStats;
  v14 = [(RWIProtocolJSONObject *)&v17 init];
  if (v14)
  {
    if (!codecCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"codec"}];
    }

    if (!stringCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"humanReadableCodecString"}];
    }

    [(RWIProtocolDOMAudioMediaStats *)v14 setBitrate:v10];
    [(RWIProtocolDOMAudioMediaStats *)v14 setCodec:codecCopy];
    [(RWIProtocolDOMAudioMediaStats *)v14 setHumanReadableCodecString:stringCopy];
    [(RWIProtocolDOMAudioMediaStats *)v14 setNumberOfChannels:v8];
    [(RWIProtocolDOMAudioMediaStats *)v14 setSampleRate:rate];
    v15 = v14;
  }

  return v14;
}

- (void)setBitrate:(int)bitrate
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAudioMediaStats;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&bitrate forKey:@"bitrate"];
}

- (int)bitrate
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAudioMediaStats;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"bitrate"];
}

- (void)setCodec:(id)codec
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAudioMediaStats;
  [(RWIProtocolJSONObject *)&v3 setString:codec forKey:@"codec"];
}

- (NSString)codec
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMAudioMediaStats;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"codec"];

  return v2;
}

- (void)setHumanReadableCodecString:(id)string
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAudioMediaStats;
  [(RWIProtocolJSONObject *)&v3 setString:string forKey:@"humanReadableCodecString"];
}

- (NSString)humanReadableCodecString
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMAudioMediaStats;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"humanReadableCodecString"];

  return v2;
}

- (void)setNumberOfChannels:(int)channels
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAudioMediaStats;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&channels forKey:@"numberOfChannels"];
}

- (int)numberOfChannels
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAudioMediaStats;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"numberOfChannels"];
}

- (void)setSampleRate:(double)rate
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAudioMediaStats;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"sampleRate" forKey:rate];
}

- (double)sampleRate
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAudioMediaStats;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"sampleRate"];
  return result;
}

@end