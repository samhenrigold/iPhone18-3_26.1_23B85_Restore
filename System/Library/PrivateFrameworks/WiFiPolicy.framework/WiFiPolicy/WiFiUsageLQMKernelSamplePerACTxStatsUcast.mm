@interface WiFiUsageLQMKernelSamplePerACTxStatsUcast
- (void)transformTXStats;
@end

@implementation WiFiUsageLQMKernelSamplePerACTxStatsUcast

- (void)transformTXStats
{
  objc_msgSend_txErrorsPercentagesWithtxSuccess_txDropped_txNoBuff_txNoRes_txNoAck_txChipModeErr_txExpired_txFail_txFwFree_txMaxRetries_txForceExpire_(WiFiUsageLQMTransformations, a2, self->_txBESuccessPerc, self->_txBEDroppedPerc, self->_txBENoBuffPerc, self->_txBENoResPerc, self->_txBENoAckPerc, self->_txBEChipModeErrPerc, self->_txBEExpiredPerc, self->_txBEFailPerc, self->_txBEFwFreePerc, self->_txBEMaxRetriesPerc, self->_txBEForceExpirePerc);
  self->_txBE = 0;
  self->_txBESuccessPerc = 0;
  self->_txBEAllFailPerc = 0;
  self->_txBEDroppedPerc = 0;
  self->_txBENoBuffPerc = 0;
  self->_txBENoResPerc = 0;
  self->_txBENoAckPerc = 0;
  self->_txBEChipModeErrPerc = 0;
  self->_txBEExpiredPerc = 0;
  self->_txBEFailPerc = 0;
  self->_txBEFwFreePerc = 0;
  self->_txBEMaxRetriesPerc = 0;
  self->_txBEForceExpirePerc = 0;
  objc_msgSend_txErrorsPercentagesWithtxSuccess_txDropped_txNoBuff_txNoRes_txNoAck_txChipModeErr_txExpired_txFail_txFwFree_txMaxRetries_txForceExpire_(WiFiUsageLQMTransformations, self->_txBKExpiredPerc, self->_txBKFailPerc, self->_txBKFwFreePerc, self->_txBKMaxRetriesPerc, self->_txBKForceExpirePerc);
  self->_txBK = v3;
  self->_txBKSuccessPerc = v4;
  self->_txBKAllFailPerc = v5;
  self->_txBKDroppedPerc = v6;
  self->_txBKNoBuffPerc = v7;
  self->_txBKNoResPerc = v8;
  self->_txBKNoAckPerc = v9;
  self->_txBKChipModeErrPerc = v10;
  self->_txBKExpiredPerc = v11;
  self->_txBKFailPerc = v12;
  self->_txBKFwFreePerc = v13;
  self->_txBKMaxRetriesPerc = v14;
  self->_txBKForceExpirePerc = v15;
  objc_msgSend_txErrorsPercentagesWithtxSuccess_txDropped_txNoBuff_txNoRes_txNoAck_txChipModeErr_txExpired_txFail_txFwFree_txMaxRetries_txForceExpire_(WiFiUsageLQMTransformations, self->_txVIExpiredPerc, self->_txVIFailPerc, self->_txVIFwFreePerc, self->_txVIMaxRetriesPerc, self->_txVIForceExpirePerc);
  self->_txVI = v3;
  self->_txVISuccessPerc = v4;
  self->_txVIAllFailPerc = v5;
  self->_txVIDroppedPerc = v6;
  self->_txVINoBuffPerc = v7;
  self->_txVINoResPerc = v8;
  self->_txVINoAckPerc = v9;
  self->_txVIChipModeErrPerc = v10;
  self->_txVIExpiredPerc = v11;
  self->_txVIFailPerc = v12;
  self->_txVIFwFreePerc = v13;
  self->_txVIMaxRetriesPerc = v14;
  self->_txVIForceExpirePerc = v15;
  objc_msgSend_txErrorsPercentagesWithtxSuccess_txDropped_txNoBuff_txNoRes_txNoAck_txChipModeErr_txExpired_txFail_txFwFree_txMaxRetries_txForceExpire_(WiFiUsageLQMTransformations, self->_txVOExpiredPerc, self->_txVOFailPerc, self->_txVOFwFreePerc, self->_txVOMaxRetriesPerc, self->_txVOForceExpirePerc);
  self->_txVO = v3;
  self->_txVOSuccessPerc = v4;
  self->_txVOAllFailPerc = v5;
  self->_txVODroppedPerc = v6;
  self->_txVONoBuffPerc = v7;
  self->_txVONoResPerc = v8;
  self->_txVONoAckPerc = v9;
  self->_txVOChipModeErrPerc = v10;
  self->_txVOExpiredPerc = v11;
  self->_txVOFailPerc = v12;
  self->_txVOFwFreePerc = v13;
  self->_txVOMaxRetriesPerc = v14;
  self->_txVOForceExpirePerc = v15;
}

@end