@interface VCAggregatorHomeKitVideo
- (id)dispatchedAggregatedSessionReport;
- (void)dispatchedProcessEventWithCategory:(unsigned __int16)category type:(unsigned __int16)type payload:(id)payload;
- (void)reset;
@end

@implementation VCAggregatorHomeKitVideo

- (void)reset
{
  dispatch_assert_queue_V2(self->super.super._stateQueue);
  [(VCAggregatorDelegate *)self->super.super._delegate reportSegment:[(VCAggregator *)self dispatchedAggregatedSegmentReport:2] withMessageType:2 clientType:3];
  v3.receiver = self;
  v3.super_class = VCAggregatorHomeKitVideo;
  [(VCAggregatorVideoStream *)&v3 reset];
}

- (void)dispatchedProcessEventWithCategory:(unsigned __int16)category type:(unsigned __int16)type payload:(id)payload
{
  typeCopy = type;
  categoryCopy = category;
  dispatch_assert_queue_V2(self->super.super._stateQueue);
  v14.receiver = self;
  v14.super_class = VCAggregatorHomeKitVideo;
  [(VCAggregatorVideoStream *)&v14 dispatchedProcessEventWithCategory:categoryCopy type:typeCopy payload:payload];
  if (categoryCopy == 201)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v11 = __76__VCAggregatorHomeKitVideo_dispatchedProcessEventWithCategory_type_payload___block_invoke;
    v12 = &unk_278BD4E38;
    selfCopy = self;
    v9 = [payload objectForKeyedSubscript:@"VCMSConnectionType"];
    if (v9)
    {
      v11(v10, v9);
    }
  }
}

void *__76__VCAggregatorHomeKitVideo_dispatchedProcessEventWithCategory_type_payload___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 unsignedIntValue];
  *(*(a1 + 32) + 1472) = result;
  return result;
}

- (id)dispatchedAggregatedSessionReport
{
  dispatch_assert_queue_V2(self->super.super._stateQueue);
  v5.receiver = self;
  v5.super_class = VCAggregatorHomeKitVideo;
  dispatchedAggregatedSessionReport = [(VCAggregatorVideoStream *)&v5 dispatchedAggregatedSessionReport];
  [dispatchedAggregatedSessionReport setObject:&unk_284FA57C8 forKeyedSubscript:@"RVER"];
  [dispatchedAggregatedSessionReport setObject:@"video" forKeyedSubscript:@"HKMT"];
  [dispatchedAggregatedSessionReport setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_connectionType), @"HKCT"}];
  return dispatchedAggregatedSessionReport;
}

@end