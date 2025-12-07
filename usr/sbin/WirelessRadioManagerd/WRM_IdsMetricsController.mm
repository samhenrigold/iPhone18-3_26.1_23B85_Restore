@interface WRM_IdsMetricsController
+ (id)WRM_IdsMetricsControllerSingleton;
- (BOOL)getAnticipiatedTxPerValid;
- (BOOL)getTxPerAnticipatedMovAvgValid;
- (BOOL)isIDSTransportMetricsGoodEnough:(int)enough :(BOOL)a4;
- (WRM_IdsMetricsController)init;
- (double)evaluateDLThroughput;
- (double)evaluateULThroughput;
- (double)getAnticipiatedTxPer;
- (double)getTxPer;
- (double)getTxPerAnticipatedMovAvg;
- (double)getTxPerMovAvg;
- (void)configureIDSMetricsReporting;
- (void)dealloc;
- (void)handlePeriodicIDSMetrics:(id)metrics;
- (void)resetIDSMetrics;
@end

@implementation WRM_IdsMetricsController

- (WRM_IdsMetricsController)init
{
  v3.receiver = self;
  v3.super_class = WRM_IdsMetricsController;
  return [(WCM_Controller *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WRM_IdsMetricsController;
  [(WCM_Controller *)&v2 dealloc];
}

+ (id)WRM_IdsMetricsControllerSingleton
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006D380;
  block[3] = &unk_10023DB28;
  block[4] = self;
  if (qword_1002B7E18 != -1)
  {
    dispatch_once(&qword_1002B7E18, block);
  }

  return qword_1002B7E10;
}

- (void)resetIDSMetrics
{
  [WCM_Logging logLevel:27 message:@"Resetting IDS  metrics report"];
  [(WRM_IdsMetricsController *)self setMStreamingReportBytesSent:0];
  [(WRM_IdsMetricsController *)self setMStreamingReportPacketsSent:0];
  [(WRM_IdsMetricsController *)self setMStreamingReportBytesReceived:0];
  [(WRM_IdsMetricsController *)self setMStreamingReportPacketsReceived:0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageSentMessageSize:0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageDeliveredMessageSize:0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageDeliveredRTT:0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageReceivedMessageSize:0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageSent:0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageDelivered:0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageDeliveredDeliveryError:0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageReceived:0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageDeliveredMessageSizeMovAvg:0.0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageDeliveredRTTMovAvg:0.0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageReceivedMessageSizeMovAvg:0.0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageSentMovAvg:0.0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageDeliveredMovAvg:0.0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageDeliveredDeliveryErrorMovAvg:0.0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageReceivedMovAvg:0.0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryCumulativeMessageSent:0];
  [(WRM_IdsMetricsController *)self setMLocalDeliveryCumulativeMessageDelivered:0];

  [(WRM_IdsMetricsController *)self setMMetricsConsiderationPeriod:0];
}

- (void)configureIDSMetricsReporting
{
  [WCM_Logging logLevel:27 message:@"Configuring IDS  metrics report"];
  -[WRM_IdsMetricsController setMReportDuration:](self, "setMReportDuration:", [objc_msgSend(+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")]);
  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3)
  {
    v4 = v3;
    v5 = [+[WRM_IDSLinkEvalManager WRM_IDSLinkEvalManagerSingleton](WRM_IDSLinkEvalManager "WRM_IDSLinkEvalManagerSingleton")];
    if (v5)
    {
      v6 = v5;
      xpc_dictionary_set_uint64(v4, "PeriodRptInval", [(WRM_IdsMetricsController *)self mReportDuration]);
      [v6 sendMessage:1103 withArgs:v4];
      v7 = @"Sending IDS  metrics Configure request";
    }

    else
    {
      v7 = @"Not sending IDS  metrics Configure request, IDS not registered";
    }

    [WCM_Logging logLevel:27 message:v7];

    xpc_release(v4);
  }
}

- (void)handlePeriodicIDSMetrics:(id)metrics
{
  value = xpc_dictionary_get_value(metrics, "kMessageArgs");
  [WCM_Logging logLevel:18 message:@"Periodic IDS metrics received from IDS Controller "];
  if (value)
  {
    if (xpc_dictionary_get_value(value, "StrmBytesSnt"))
    {
      [(WRM_IdsMetricsController *)self setMStreamingReportBytesSent:xpc_dictionary_get_uint64(value, "StrmBytesSnt")];
    }

    if (xpc_dictionary_get_value(value, "StrmPktsSnt"))
    {
      [(WRM_IdsMetricsController *)self setMStreamingReportPacketsSent:xpc_dictionary_get_uint64(value, "StrmPktsSnt")];
    }

    if (xpc_dictionary_get_value(value, "StrmBytesRcvd"))
    {
      [(WRM_IdsMetricsController *)self setMStreamingReportBytesReceived:xpc_dictionary_get_uint64(value, "StrmBytesRcvd")];
    }

    if (xpc_dictionary_get_value(value, "StrmPktRcvd"))
    {
      [(WRM_IdsMetricsController *)self setMStreamingReportPacketsReceived:xpc_dictionary_get_uint64(value, "StrmPktRcvd")];
    }

    if (xpc_dictionary_get_value(value, "LocMsgSntSz"))
    {
      [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageSentMessageSize:xpc_dictionary_get_uint64(value, "LocMsgSntSz")];
    }

    if (xpc_dictionary_get_value(value, "DeliveredMsgSz"))
    {
      [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageDeliveredMessageSize:xpc_dictionary_get_uint64(value, "DeliveredMsgSz")];
      [(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredMessageSizeMovAvg];
      [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageDeliveredMessageSizeMovAvg:([(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredMessageSize]+ v5 * 11.0) / 12.0];
    }

    if (xpc_dictionary_get_value(value, "LocMsgDeliveredRTT"))
    {
      [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageDeliveredRTT:xpc_dictionary_get_uint64(value, "LocMsgDeliveredRTT")];
      [(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredRTTMovAvg];
      [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageDeliveredRTTMovAvg:([(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredRTT]+ v6 * 11.0) / 12.0];
    }

    if (xpc_dictionary_get_value(value, "LocMsgRcvdMgSz"))
    {
      [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageReceivedMessageSize:xpc_dictionary_get_uint64(value, "LocMsgRcvdMgSz")];
      [(WRM_IdsMetricsController *)self mLocalDeliveryMessageReceivedMessageSizeMovAvg];
      [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageReceivedMessageSizeMovAvg:([(WRM_IdsMetricsController *)self mLocalDeliveryMessageReceivedMessageSize]+ v7 * 11.0) / 12.0];
    }

    if (xpc_dictionary_get_value(value, "LocMsgSnt"))
    {
      uint64 = xpc_dictionary_get_uint64(value, "LocMsgSnt");
      [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageSent:uint64];
      [(WRM_IdsMetricsController *)self setMLocalDeliveryCumulativeMessageSent:[(WRM_IdsMetricsController *)self mLocalDeliveryCumulativeMessageSent]+ uint64];
      [(WRM_IdsMetricsController *)self mLocalDeliveryMessageSentMovAvg];
      [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageSentMovAvg:([(WRM_IdsMetricsController *)self mLocalDeliveryMessageSent]+ v9 * 11.0) / 12.0];
      [(WRM_IdsMetricsController *)self setMMetricsConsiderationPeriod:[(WRM_IdsMetricsController *)self mMetricsConsiderationPeriod]+ 1];
      [(WRM_IdsMetricsController *)self setMMetricsConsiderationPeriod:([(WRM_IdsMetricsController *)self mMetricsConsiderationPeriod]% 12)];
      if (![(WRM_IdsMetricsController *)self mMetricsConsiderationPeriod])
      {
        [(WRM_IdsMetricsController *)self resetIDSMetrics];
      }
    }

    if (xpc_dictionary_get_value(value, "LocMsgDelivered"))
    {
      v10 = xpc_dictionary_get_uint64(value, "LocMsgDelivered");
      [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageDelivered:v10];
      [(WRM_IdsMetricsController *)self setMLocalDeliveryCumulativeMessageDelivered:[(WRM_IdsMetricsController *)self mLocalDeliveryCumulativeMessageDelivered]+ v10];
      [(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredMovAvg];
      [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageDeliveredMovAvg:([(WRM_IdsMetricsController *)self mLocalDeliveryMessageDelivered]+ v11 * 11.0) / 12.0];
    }

    if (xpc_dictionary_get_value(value, "LocMsgDeliveryEr"))
    {
      [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageDeliveredDeliveryError:xpc_dictionary_get_uint64(value, "LocMsgDeliveryEr")];
      [(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredDeliveryErrorMovAvg];
      [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageDeliveredDeliveryErrorMovAvg:([(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredDeliveryError]+ v12 * 11.0) / 12.0];
    }

    if (xpc_dictionary_get_value(value, "LocMsgRcvd"))
    {
      [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageReceived:xpc_dictionary_get_uint64(value, "LocMsgRcvd")];
      [(WRM_IdsMetricsController *)self mLocalDeliveryMessageReceivedMovAvg];
      v14 = ([(WRM_IdsMetricsController *)self mLocalDeliveryMessageReceived]+ v13 * 11.0) / 12.0;

      [(WRM_IdsMetricsController *)self setMLocalDeliveryMessageReceivedMovAvg:v14];
    }
  }
}

- (double)evaluateDLThroughput
{
  mStreamingReportBytesReceived = [(WRM_IdsMetricsController *)self mStreamingReportBytesReceived];
  mLocalDeliveryMessageReceived = [(WRM_IdsMetricsController *)self mLocalDeliveryMessageReceived];
  v5 = (mStreamingReportBytesReceived + [(WRM_IdsMetricsController *)self mLocalDeliveryMessageReceivedMessageSize]* mLocalDeliveryMessageReceived) * 8.0;
  return v5 / ([(WRM_IdsMetricsController *)self mReportDuration]+ 0.000001);
}

- (double)evaluateULThroughput
{
  mStreamingReportBytesSent = [(WRM_IdsMetricsController *)self mStreamingReportBytesSent];
  mLocalDeliveryMessageDelivered = [(WRM_IdsMetricsController *)self mLocalDeliveryMessageDelivered];
  v5 = (mStreamingReportBytesSent + [(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredMessageSize]* mLocalDeliveryMessageDelivered) * 8.0;
  return v5 / ([(WRM_IdsMetricsController *)self mReportDuration]+ 0.000001);
}

- (double)getTxPer
{
  mLocalDeliveryMessageDeliveredDeliveryError = [(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredDeliveryError];
  mLocalDeliveryMessageDelivered = [(WRM_IdsMetricsController *)self mLocalDeliveryMessageDelivered];
  return mLocalDeliveryMessageDeliveredDeliveryError / (mLocalDeliveryMessageDelivered + [(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredDeliveryError]+ 0.000001);
}

- (double)getTxPerMovAvg
{
  [(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredDeliveryErrorMovAvg];
  v4 = v3;
  [(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredMovAvg];
  v6 = v5;
  [(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredDeliveryErrorMovAvg];
  return v4 / (v6 + v7 + 0.000001);
}

- (double)getAnticipiatedTxPer
{
  mLocalDeliveryCumulativeMessageSent = [(WRM_IdsMetricsController *)self mLocalDeliveryCumulativeMessageSent];
  v4 = mLocalDeliveryCumulativeMessageSent - [(WRM_IdsMetricsController *)self mLocalDeliveryCumulativeMessageDelivered];
  [WCM_Logging logLevel:27 message:@"getAnticipiatedTxPer: Sent: %ld, Delivered: %ld, Pkt Loss: %.2f", [(WRM_IdsMetricsController *)self mLocalDeliveryCumulativeMessageSent], [(WRM_IdsMetricsController *)self mLocalDeliveryCumulativeMessageDelivered], *&v4];
  v5 = 0.0;
  if (v4 > 0.0)
  {
    if ([(WRM_IdsMetricsController *)self mLocalDeliveryCumulativeMessageSent])
    {
      v5 = v4 / ([(WRM_IdsMetricsController *)self mLocalDeliveryCumulativeMessageSent]+ 0.000001);
      if (v5 > 1.0)
      {
        [(WRM_IdsMetricsController *)self setMLocalDeliveryCumulativeMessageSent:0];
        [(WRM_IdsMetricsController *)self setMLocalDeliveryCumulativeMessageDelivered:0];
        [WCM_Logging logLevel:27 message:@"getAnticipiatedTxPer diacard bad value"];
        return 0.0;
      }
    }
  }

  return v5;
}

- (BOOL)getAnticipiatedTxPerValid
{
  mLocalDeliveryCumulativeMessageSent = [(WRM_IdsMetricsController *)self mLocalDeliveryCumulativeMessageSent];
  v4 = [(WRM_IdsMetricsController *)self mLocalDeliveryCumulativeMessageDelivered]+ mLocalDeliveryCumulativeMessageSent;
  return [(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredDeliveryError]+ v4 > 0x45;
}

- (double)getTxPerAnticipatedMovAvg
{
  [(WRM_IdsMetricsController *)self mLocalDeliveryMessageSentMovAvg];
  v4 = v3;
  [(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredMovAvg];
  v6 = v4 - v5;
  [(WRM_IdsMetricsController *)self mLocalDeliveryMessageSentMovAvg];
  v8 = v7;
  [(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredMovAvg];
  [WCM_Logging logLevel:27 message:@"getTxPerAnticipatedMovAvg: Sent: %.2f, Delivered: %.2f, Pkt Loss: %.2f", v8, v9, *&v6];
  v10 = 0.0;
  if (v6 > 0.0)
  {
    [(WRM_IdsMetricsController *)self mLocalDeliveryMessageSentMovAvg];
    if (v11 >= 1.0)
    {
      [(WRM_IdsMetricsController *)self mLocalDeliveryMessageSentMovAvg];
      v10 = v6 / (v12 + 0.000001);
      if (v10 > 1.0)
      {
        [WCM_Logging logLevel:27 message:@"getTxPerAnticipatedMovAvg diacard bad value"];
      }
    }
  }

  return v10;
}

- (BOOL)getTxPerAnticipatedMovAvgValid
{
  mLocalDeliveryCumulativeMessageSent = [(WRM_IdsMetricsController *)self mLocalDeliveryCumulativeMessageSent];
  v4 = [(WRM_IdsMetricsController *)self mLocalDeliveryCumulativeMessageDelivered]+ mLocalDeliveryCumulativeMessageSent;
  return [(WRM_IdsMetricsController *)self mLocalDeliveryMessageDeliveredDeliveryError]+ v4 > 0x45;
}

- (BOOL)isIDSTransportMetricsGoodEnough:(int)enough :(BOOL)a4
{
  wRM_HandoverManagerSingleton = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager WRM_HandoverManagerSingleton];
  getRTT = [(WRM_IdsMetricsController *)self getRTT];
  [(WRM_IdsMetricsController *)self getTxPer];
  v7 = v6 * 100.0;
  getTxPerValid = [(WRM_IdsMetricsController *)self getTxPerValid];
  [(WRM_IdsMetricsController *)self getAnticipiatedTxPer];
  v10 = v9 * 100.0;
  getAnticipiatedTxPerValid = [(WRM_IdsMetricsController *)self getAnticipiatedTxPerValid];
  [(WRM_IdsMetricsController *)self getTxPerAnticipatedMovAvg];
  v13 = v12 * 100.0;
  getTxPerAnticipatedMovAvgValid = [(WRM_IdsMetricsController *)self getTxPerAnticipatedMovAvgValid];
  getAvgTxPDUSize = [(WRM_IdsMetricsController *)self getAvgTxPDUSize];
  getAvgRxPDUSize = [(WRM_IdsMetricsController *)self getAvgRxPDUSize];
  [(WRM_IdsMetricsController *)self evaluateDLThroughput];
  v18 = v17;
  [(WRM_IdsMetricsController *)self evaluateDLThroughput];
  v20 = v19;
  getRTTMovAvg = [(WRM_IdsMetricsController *)self getRTTMovAvg];
  [(WRM_IdsMetricsController *)self getTxPerMovAvg];
  v23 = v22 * 100.0;
  getAvgTxPDUSizeMovAvg = [(WRM_IdsMetricsController *)self getAvgTxPDUSizeMovAvg];
  getAvgRxPDUSizeMovAvg = [(WRM_IdsMetricsController *)self getAvgRxPDUSizeMovAvg];
  [WCM_Logging logLevel:27 message:@"Ant PER: %.2f, Ant PER Valid: %d, Ant Mov PER: %.2f, Ant Mov PER Valid:%d", *&v10, getAnticipiatedTxPerValid, *&v13, getTxPerAnticipatedMovAvgValid];
  [WCM_Logging logLevel:27 message:@"IDS Metrics For Cell/WiFi Eval, RTT: %d, M_avg RTT: %d, TX PER: %.2f, Tx PER Valid: %d, M_avg TX PER: %.2f, Rx Size: %d, MAvgRx Size: %d, DL Thr: %.2f, Tx Size: %d, MAvgTx Size: %d, UL Thr: %.2f", getRTT, getRTTMovAvg, *&v7, getTxPerValid, *&v23, getAvgRxPDUSize, getAvgRxPDUSizeMovAvg, v18, getAvgTxPDUSize, getAvgTxPDUSizeMovAvg, *&v20];
  result = 1;
  if (enough == 1 && v20 < 1000.0)
  {
    return [wRM_HandoverManagerSingleton idsWiFiMinRttTh1] > getRTT && (v10 < objc_msgSend(wRM_HandoverManagerSingleton, "idsWiFiMinPerTh1") || !getAnticipiatedTxPerValid) && (v13 < objc_msgSend(wRM_HandoverManagerSingleton, "idsMovAvgWiFiMinPerTh1") || !getTxPerAnticipatedMovAvgValid) && (v7 < objc_msgSend(wRM_HandoverManagerSingleton, "idsAvgWiFiMinPerTh1") || !getTxPerValid);
  }

  return result;
}

@end