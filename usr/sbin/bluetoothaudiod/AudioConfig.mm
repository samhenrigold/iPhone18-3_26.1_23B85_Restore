@interface AudioConfig
- (AcceptorInterface)matchedAcceptor;
- (AudioConfig)init;
- (void)addChannelConfigWithCodecIndex:(unsigned __int8)index withContextType:(unsigned __int16)type withCCID:(id)d withDirection:(BOOL)direction;
@end

@implementation AudioConfig

- (AudioConfig)init
{
  v6.receiver = self;
  v6.super_class = AudioConfig;
  v2 = [(AudioConfig *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    audioChanConfigArray = v2->_audioChanConfigArray;
    v2->_audioChanConfigArray = v3;
  }

  return v2;
}

- (void)addChannelConfigWithCodecIndex:(unsigned __int8)index withContextType:(unsigned __int16)type withCCID:(id)d withDirection:(BOOL)direction
{
  directionCopy = direction;
  typeCopy = type;
  indexCopy = index;
  dCopy = d;
  v10 = objc_alloc_init(AudioChanConfig);
  [(AudioChanConfig *)v10 setIsSink:directionCopy];
  [(AudioChanConfig *)v10 setCodecIndex:indexCopy];
  v11 = &unk_100070050 + 6 * indexCopy;
  [(AudioChanConfig *)v10 setSamplingFrequency:v11[1]];
  [(AudioChanConfig *)v10 setFrameDuration:v11[2]];
  [(AudioChanConfig *)v10 setOctetsPerCodecFrame:*(v11 + 2)];
  [(AudioChanConfig *)v10 setCodecFramePerSdu:1];
  [(AudioChanConfig *)v10 setContextTypes:typeCopy];
  v12 = objc_alloc_init(NSMutableArray);
  [(AudioChanConfig *)v10 setCcid:v12];

  if ([dCopy count] && objc_msgSend(dCopy, "indexOfObjectIdenticalTo:", &off_10009B310) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [dCopy mutableCopy];
    [(AudioChanConfig *)v10 setCcid:v13];
  }

  [(AudioChanConfig *)v10 setRemapToUnspecified:1];
  audioChanConfigArray = [(AudioConfig *)self audioChanConfigArray];
  [audioChanConfigArray addObject:v10];
}

- (AcceptorInterface)matchedAcceptor
{
  WeakRetained = objc_loadWeakRetained(&self->_matchedAcceptor);

  return WeakRetained;
}

@end