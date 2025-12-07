@interface WiFiUsageLQMKernelSamplePerACTxStatsMcast
- (void)transformTXStats;
@end

@implementation WiFiUsageLQMKernelSamplePerACTxStatsMcast

- (void)transformTXStats
{
  objc_msgSend_txErrorsPercentagesWithtxSuccess_txDropped_txNoBuff_txNoRes_txNoAck_txChipModeErr_txExpired_txFail_txFwFree_txMaxRetries_txForceExpire_(WiFiUsageLQMTransformations, a2, self->_txMcastSuccessPerc, self->_txMcastDroppedPerc, self->_txMcastNoBuffPerc, self->_txMcastNoResPerc, self->_txMcastNoAckPerc, self->_txMcastChipModeErrPerc, self->_txMcastExpiredPerc, self->_txMcastFailPerc, self->_txMcastFwFreePerc, self->_txMcastMaxRetriesPerc, self->_txMcastForceExpirePerc);
  self->_txMcast = 0;
  self->_txMcastSuccessPerc = 0;
  self->_txMcastAllFailPerc = 0;
  self->_txMcastDroppedPerc = 0;
  self->_txMcastNoBuffPerc = 0;
  self->_txMcastNoResPerc = 0;
  self->_txMcastNoAckPerc = 0;
  self->_txMcastChipModeErrPerc = 0;
  self->_txMcastExpiredPerc = 0;
  self->_txMcastFailPerc = 0;
  self->_txMcastFwFreePerc = 0;
  self->_txMcastMaxRetriesPerc = 0;
  self->_txMcastForceExpirePerc = 0;
}

@end