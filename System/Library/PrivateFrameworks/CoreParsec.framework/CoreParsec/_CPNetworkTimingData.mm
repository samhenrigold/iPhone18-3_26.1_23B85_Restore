@interface _CPNetworkTimingData
+ (id)startMetricsForNormalization;
- (BOOL)isEqual:(id)equal;
- (_CPNetworkTimingData)initWithTelemetryDictionary:(id)dictionary;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _CPNetworkTimingData

- (unint64_t)hash
{
  v3 = [(NSString *)self->_interfaceIdentifier hash];
  v4 = [(NSData *)self->_peerAddress hash]^ v3 ^ (2654435761 * self->_connectionRace);
  v5 = 2654435761 * self->_connectionReused;
  v6 = v4 ^ v5 ^ [(_CPTCPInfo *)self->_startTimeCounts hash];
  v7 = [(_CPTCPInfo *)self->_stopTimeCounts hash];
  v8 = v7 ^ [(NSString *)self->_connectionUUID hash];
  v9 = [(NSString *)self->_networkProtocolName hash];
  timingDataInit = self->_timingDataInit;
  if (timingDataInit < 0.0)
  {
    timingDataInit = -timingDataInit;
  }

  *v10.i64 = round(timingDataInit);
  *v11.i64 = *v10.i64 - trunc(*v10.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  return v6 ^ v8 ^ v9 ^ (2654435761 * self->_QUICWhitelistedDomain) ^ (2654435761 * self->_redirectCount) ^ (2654435761 * self->_redirectCountW3C) ^ (2654435761 * self->_requestHeaderSize) ^ (2654435761 * self->_responseBodyBytesDecoded) ^ (2654435761 * self->_responseBodyBytesReceived) ^ (2654435761 * self->_responseHeaderSize) ^ (2654435761 * self->_TFOSuccess) ^ (2654435761 * self->_connectStart) ^ (2654435761 * self->_connectEnd) ^ (2654435761 * self->_domainLookupStart) ^ (2654435761 * self->_domainLookupEnd) ^ (2654435761 * self->_fetchStart) ^ (2654435761 * self->_redirectStart) ^ (2654435761 * self->_redirectEnd) ^ (2654435761 * self->_requestStart) ^ (2654435761 * self->_requestEnd) ^ (2654435761 * self->_responseStart) ^ (2654435761 * self->_responseEnd) ^ (2654435761 * self->_secureConnectStart) ^ ((*vbslq_s8(vnegq_f64(v13), v11, v10).i64 * 2654435760.0) + vcvtd_n_u64_f64(timingDataInit - *v10.i64, 0x40uLL));
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  interfaceIdentifier = [(_CPNetworkTimingData *)self interfaceIdentifier];
  interfaceIdentifier2 = [equalCopy interfaceIdentifier];
  if ((interfaceIdentifier != 0) == (interfaceIdentifier2 == 0))
  {
    goto LABEL_33;
  }

  interfaceIdentifier3 = [(_CPNetworkTimingData *)self interfaceIdentifier];
  if (interfaceIdentifier3)
  {
    v8 = interfaceIdentifier3;
    interfaceIdentifier4 = [(_CPNetworkTimingData *)self interfaceIdentifier];
    interfaceIdentifier5 = [equalCopy interfaceIdentifier];
    v11 = [interfaceIdentifier4 isEqual:interfaceIdentifier5];

    if (!v11)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  interfaceIdentifier = [(_CPNetworkTimingData *)self peerAddress];
  interfaceIdentifier2 = [equalCopy peerAddress];
  if ((interfaceIdentifier != 0) == (interfaceIdentifier2 == 0))
  {
    goto LABEL_33;
  }

  peerAddress = [(_CPNetworkTimingData *)self peerAddress];
  if (peerAddress)
  {
    v13 = peerAddress;
    peerAddress2 = [(_CPNetworkTimingData *)self peerAddress];
    peerAddress3 = [equalCopy peerAddress];
    v16 = [peerAddress2 isEqual:peerAddress3];

    if (!v16)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  connectionRace = self->_connectionRace;
  if (connectionRace != [equalCopy connectionRace])
  {
    goto LABEL_34;
  }

  connectionReused = self->_connectionReused;
  if (connectionReused != [equalCopy connectionReused])
  {
    goto LABEL_34;
  }

  interfaceIdentifier = [(_CPNetworkTimingData *)self startTimeCounts];
  interfaceIdentifier2 = [equalCopy startTimeCounts];
  if ((interfaceIdentifier != 0) == (interfaceIdentifier2 == 0))
  {
    goto LABEL_33;
  }

  startTimeCounts = [(_CPNetworkTimingData *)self startTimeCounts];
  if (startTimeCounts)
  {
    v20 = startTimeCounts;
    startTimeCounts2 = [(_CPNetworkTimingData *)self startTimeCounts];
    startTimeCounts3 = [equalCopy startTimeCounts];
    v23 = [startTimeCounts2 isEqual:startTimeCounts3];

    if (!v23)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  interfaceIdentifier = [(_CPNetworkTimingData *)self stopTimeCounts];
  interfaceIdentifier2 = [equalCopy stopTimeCounts];
  if ((interfaceIdentifier != 0) == (interfaceIdentifier2 == 0))
  {
    goto LABEL_33;
  }

  stopTimeCounts = [(_CPNetworkTimingData *)self stopTimeCounts];
  if (stopTimeCounts)
  {
    v25 = stopTimeCounts;
    stopTimeCounts2 = [(_CPNetworkTimingData *)self stopTimeCounts];
    stopTimeCounts3 = [equalCopy stopTimeCounts];
    v28 = [stopTimeCounts2 isEqual:stopTimeCounts3];

    if (!v28)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  interfaceIdentifier = [(_CPNetworkTimingData *)self connectionUUID];
  interfaceIdentifier2 = [equalCopy connectionUUID];
  if ((interfaceIdentifier != 0) == (interfaceIdentifier2 == 0))
  {
    goto LABEL_33;
  }

  connectionUUID = [(_CPNetworkTimingData *)self connectionUUID];
  if (connectionUUID)
  {
    v30 = connectionUUID;
    connectionUUID2 = [(_CPNetworkTimingData *)self connectionUUID];
    connectionUUID3 = [equalCopy connectionUUID];
    v33 = [connectionUUID2 isEqual:connectionUUID3];

    if (!v33)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  interfaceIdentifier = [(_CPNetworkTimingData *)self networkProtocolName];
  interfaceIdentifier2 = [equalCopy networkProtocolName];
  if ((interfaceIdentifier != 0) == (interfaceIdentifier2 == 0))
  {
LABEL_33:

    goto LABEL_34;
  }

  networkProtocolName = [(_CPNetworkTimingData *)self networkProtocolName];
  if (networkProtocolName)
  {
    v35 = networkProtocolName;
    networkProtocolName2 = [(_CPNetworkTimingData *)self networkProtocolName];
    networkProtocolName3 = [equalCopy networkProtocolName];
    v38 = [networkProtocolName2 isEqual:networkProtocolName3];

    if (!v38)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  QUICWhitelistedDomain = self->_QUICWhitelistedDomain;
  if (QUICWhitelistedDomain == [equalCopy QUICWhitelistedDomain])
  {
    redirectCount = self->_redirectCount;
    if (redirectCount == [equalCopy redirectCount])
    {
      redirectCountW3C = self->_redirectCountW3C;
      if (redirectCountW3C == [equalCopy redirectCountW3C])
      {
        requestHeaderSize = self->_requestHeaderSize;
        if (requestHeaderSize == [equalCopy requestHeaderSize])
        {
          responseBodyBytesDecoded = self->_responseBodyBytesDecoded;
          if (responseBodyBytesDecoded == [equalCopy responseBodyBytesDecoded])
          {
            responseBodyBytesReceived = self->_responseBodyBytesReceived;
            if (responseBodyBytesReceived == [equalCopy responseBodyBytesReceived])
            {
              responseHeaderSize = self->_responseHeaderSize;
              if (responseHeaderSize == [equalCopy responseHeaderSize])
              {
                TFOSuccess = self->_TFOSuccess;
                if (TFOSuccess == [equalCopy TFOSuccess])
                {
                  timingDataInit = self->_timingDataInit;
                  [equalCopy timingDataInit];
                  if (timingDataInit == v50)
                  {
                    connectStart = self->_connectStart;
                    if (connectStart == [equalCopy connectStart])
                    {
                      connectEnd = self->_connectEnd;
                      if (connectEnd == [equalCopy connectEnd])
                      {
                        domainLookupStart = self->_domainLookupStart;
                        if (domainLookupStart == [equalCopy domainLookupStart])
                        {
                          domainLookupEnd = self->_domainLookupEnd;
                          if (domainLookupEnd == [equalCopy domainLookupEnd])
                          {
                            fetchStart = self->_fetchStart;
                            if (fetchStart == [equalCopy fetchStart])
                            {
                              redirectStart = self->_redirectStart;
                              if (redirectStart == [equalCopy redirectStart])
                              {
                                redirectEnd = self->_redirectEnd;
                                if (redirectEnd == [equalCopy redirectEnd])
                                {
                                  requestStart = self->_requestStart;
                                  if (requestStart == [equalCopy requestStart])
                                  {
                                    requestEnd = self->_requestEnd;
                                    if (requestEnd == [equalCopy requestEnd])
                                    {
                                      responseStart = self->_responseStart;
                                      if (responseStart == [equalCopy responseStart])
                                      {
                                        responseEnd = self->_responseEnd;
                                        if (responseEnd == [equalCopy responseEnd])
                                        {
                                          secureConnectStart = self->_secureConnectStart;
                                          v39 = secureConnectStart == [equalCopy secureConnectStart];
                                          goto LABEL_35;
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_34:
  v39 = 0;
LABEL_35:

  return v39;
}

- (void)writeTo:(id)to
{
  to;
  interfaceIdentifier = [(_CPNetworkTimingData *)self interfaceIdentifier];

  if (interfaceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  peerAddress = [(_CPNetworkTimingData *)self peerAddress];

  if (peerAddress)
  {
    PBDataWriterWriteDataField();
  }

  if ([(_CPNetworkTimingData *)self connectionRace])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPNetworkTimingData *)self connectionReused])
  {
    PBDataWriterWriteBOOLField();
  }

  startTimeCounts = [(_CPNetworkTimingData *)self startTimeCounts];

  if (startTimeCounts)
  {
    startTimeCounts2 = [(_CPNetworkTimingData *)self startTimeCounts];
    PBDataWriterWriteSubmessage();
  }

  stopTimeCounts = [(_CPNetworkTimingData *)self stopTimeCounts];

  if (stopTimeCounts)
  {
    stopTimeCounts2 = [(_CPNetworkTimingData *)self stopTimeCounts];
    PBDataWriterWriteSubmessage();
  }

  connectionUUID = [(_CPNetworkTimingData *)self connectionUUID];

  if (connectionUUID)
  {
    PBDataWriterWriteStringField();
  }

  networkProtocolName = [(_CPNetworkTimingData *)self networkProtocolName];

  if (networkProtocolName)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_CPNetworkTimingData *)self QUICWhitelistedDomain])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPNetworkTimingData *)self redirectCount])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self redirectCountW3C])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self requestHeaderSize])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self responseBodyBytesDecoded])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self responseBodyBytesReceived])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self responseHeaderSize])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self TFOSuccess])
  {
    PBDataWriterWriteBOOLField();
  }

  [(_CPNetworkTimingData *)self timingDataInit];
  if (v12 != 0.0)
  {
    PBDataWriterWriteDoubleField();
  }

  if ([(_CPNetworkTimingData *)self connectStart])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self connectEnd])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self domainLookupStart])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self domainLookupEnd])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self fetchStart])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self redirectStart])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self redirectEnd])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self requestStart])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self requestEnd])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self responseStart])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self responseEnd])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self secureConnectStart])
  {
    PBDataWriterWriteUint32Field();
  }

  MEMORY[0x1EEE66BE0]();
}

- (_CPNetworkTimingData)initWithTelemetryDictionary:(id)dictionary
{
  v91 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [(_CPNetworkTimingData *)self init];
  v6 = v5;
  if (v5)
  {
    v77 = v5;
    startMetricsForNormalization = [objc_opt_class() startMetricsForNormalization];
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v8 = [startMetricsForNormalization countByEnumeratingWithState:&v83 objects:v90 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v84;
      v11 = 1.79769313e308;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v84 != v10)
          {
            objc_enumerationMutation(startMetricsForNormalization);
          }

          v13 = [dictionaryCopy parsec_numberForKey:*(*(&v83 + 1) + 8 * i)];
          [v13 doubleValue];
          v15 = v14;

          if (v15 < v11 && v15 != 0.0)
          {
            v11 = v15;
          }
        }

        v9 = [startMetricsForNormalization countByEnumeratingWithState:&v83 objects:v90 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 1.79769313e308;
    }

    v75 = dictionaryCopy;
    v76 = startMetricsForNormalization;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v17 = dictionaryCopy;
    v18 = [v17 countByEnumeratingWithState:&v79 objects:v89 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = @"timing_data_key_unknown";
      v21 = @"_kCFNTimingDataConnectionReused";
      v22 = *v80;
      v78 = *v80;
      do
      {
        v23 = 0;
        do
        {
          if (*v80 != v22)
          {
            objc_enumerationMutation(v17);
          }

          v24 = *(*(&v79 + 1) + 8 * v23);
          if (![v24 compare:v20 options:3])
          {
LABEL_70:

            goto LABEL_152;
          }

          if ([v24 compare:v21 options:3])
          {
            if ([v24 compare:@"_kCFNTimingDataConnectionPeerAddress" options:3])
            {
              v25 = 3;
              if ([v24 compare:@"_kCFNTimingDataConnectionInterfaceIdentifier" options:3])
              {
                if ([v24 compare:@"omit" options:3])
                {
                  if ([v24 compare:@"_kCFNTimingDataConnectionStartTimeCounts" options:3])
                  {
                    if ([v24 compare:@"_kCFNTimingDataConnectionStopTimeCounts" options:3])
                    {
                      if (![v24 compare:@"_kCFNTimingDataNStatRXPackets" options:3] || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatRXBytes", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatTXPackets", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatTXBytes", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatRXDuplicateBytes", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatRXOutOfOrderBytes", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatTXRetransmit", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatConnectAttempts", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatConnectSuccesses", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatMinRTT", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatAvgRTT", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatVarRTT", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatCellRXPackets", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatCellTXPackets", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatWifiRXPackets", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatWifiTXPackets", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatWiredRXPackets", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatWiredTXPackets", 3))
                      {
                        goto LABEL_70;
                      }

                      if ([v24 compare:@"_kCFNTimingDataTCPFastOpenStats" options:3])
                      {
                        if (![v24 compare:@"_kCFNTimingDataTCPInfoAtStart" options:3] || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataTCPInfoAtStop", 3) || !objc_msgSend(v24, "compare:options:", @"omit", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataRemoteAddressAndPort", 3))
                        {
                          goto LABEL_70;
                        }

                        if ([v24 compare:@"_kCFNTimingDataNetworkProtocolName" options:3])
                        {
                          if ([v24 compare:@"_kCFNTimingDataConnectionRace" options:3])
                          {
                            if ([v24 compare:@"_kCFNTimingDataQUICWhitelistedDomain" options:3])
                            {
                              if ([v24 compare:@"_kCFNTimingDataRequestHeaderSize" options:3])
                              {
                                if ([v24 compare:@"_kCFNTimingDataResponseHeaderSize" options:3])
                                {
                                  if ([v24 compare:@"_kCFNTimingDataResponseBodyBytesReceived" options:3])
                                  {
                                    if ([v24 compare:@"_kCFNTimingDataResponseBodyBytesDecoded" options:3])
                                    {
                                      if ([v24 compare:@"_kCFNTimingDataFetchStart" options:3])
                                      {
                                        if ([v24 compare:@"_kCFNTimingDataDomainLookupStart" options:3])
                                        {
                                          if ([v24 compare:@"_kCFNTimingDataDomainLookupEnd" options:3])
                                          {
                                            if ([v24 compare:@"_kCFNTimingDataConnectStart" options:3])
                                            {
                                              if ([v24 compare:@"_kCFNTimingDataSecureConnectionStart" options:3])
                                              {
                                                if ([v24 compare:@"_kCFNTimingDataConnectEnd" options:3])
                                                {
                                                  if ([v24 compare:@"_kCFNTimingDataRequestStart" options:3])
                                                  {
                                                    if ([v24 compare:@"_kCFNTimingDataRequestEnd" options:3])
                                                    {
                                                      if ([v24 compare:@"_kCFNTimingDataResponseStart" options:3])
                                                      {
                                                        if ([v24 compare:@"_kCFNTimingDataResponseEnd" options:3])
                                                        {
                                                          if ([v24 compare:@"_kCFNTimingDataRedirectStart" options:3])
                                                          {
                                                            if ([v24 compare:@"_kCFNTimingDataRedirectEnd" options:3])
                                                            {
                                                              goto LABEL_70;
                                                            }

                                                            v25 = 48;
                                                          }

                                                          else
                                                          {
                                                            v25 = 47;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v25 = 46;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v25 = 45;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v25 = 44;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v25 = 43;
                                                  }
                                                }

                                                else
                                                {
                                                  v25 = 42;
                                                }
                                              }

                                              else
                                              {
                                                v25 = 41;
                                              }
                                            }

                                            else
                                            {
                                              v25 = 40;
                                            }
                                          }

                                          else
                                          {
                                            v25 = 39;
                                          }
                                        }

                                        else
                                        {
                                          v25 = 38;
                                        }
                                      }

                                      else
                                      {
                                        v25 = 37;
                                      }
                                    }

                                    else
                                    {
                                      v25 = 36;
                                    }
                                  }

                                  else
                                  {
                                    v25 = 35;
                                  }
                                }

                                else
                                {
                                  v25 = 34;
                                }
                              }

                              else
                              {
                                v25 = 33;
                              }
                            }

                            else
                            {
                              v25 = 32;
                            }
                          }

                          else
                          {
                            v25 = 31;
                          }
                        }

                        else
                        {
                          v25 = 30;
                        }
                      }

                      else
                      {
                        v25 = 25;
                      }
                    }

                    else
                    {
                      v25 = 6;
                    }
                  }

                  else
                  {
                    v25 = 5;
                  }
                }

                else
                {
                  v25 = 4;
                }
              }
            }

            else
            {
              v25 = 2;
            }
          }

          else
          {
            v25 = 1;
          }

          objc_opt_self();
          if (objc_claimAutoreleasedReturnValue())
          {
            v26 = [v17 objectForKey:v24];
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v28 = v21;
              v29 = v20;
              v30 = [v17 parsec_numberForKey:v24];
              v31 = [v17 parsec_dictionaryForKey:v24];
              v32 = [v17 parsec_stringForKey:v24];
              v33 = [v17 parsec_dataForKey:v24];
              switch(v25)
              {
                case 1:
                  -[_CPNetworkTimingData setConnectionReused:](v77, "setConnectionReused:", [v30 BOOLValue]);
                  break;
                case 2:
                  [(_CPNetworkTimingData *)v77 setPeerAddress:v33];
                  break;
                case 3:
                  [(_CPNetworkTimingData *)v77 setInterfaceIdentifier:v32];
                  break;
                case 4:
                  [(_CPNetworkTimingData *)v77 setConnectionUUID:v32];
                  break;
                case 5:
                  if (v31)
                  {
                    v47 = [[_CPTCPInfo alloc] initWithTelemetryDictionary:v31];
                    [(_CPNetworkTimingData *)v77 setStartTimeCounts:v47];
                    goto LABEL_126;
                  }

                  break;
                case 6:
                  if (v31)
                  {
                    v47 = [[_CPTCPInfo alloc] initWithTelemetryDictionary:v31];
                    [(_CPNetworkTimingData *)v77 setStopTimeCounts:v47];
                    goto LABEL_126;
                  }

                  break;
                case 25:
                  if (v31)
                  {
                    v47 = [v31 parsec_numberForKey:@"TFOSuccess"];
                    [(_CPNetworkTimingData *)v77 setTFOSuccess:[(_CPTCPInfo *)v47 BOOLValue]];
LABEL_126:
                  }

                  break;
                case 30:
                  if ([v32 length])
                  {
                    [(_CPNetworkTimingData *)v77 setNetworkProtocolName:v32];
                  }

                  break;
                case 31:
                  -[_CPNetworkTimingData setConnectionRace:](v77, "setConnectionRace:", [v30 BOOLValue]);
                  break;
                case 32:
                  -[_CPNetworkTimingData setQUICWhitelistedDomain:](v77, "setQUICWhitelistedDomain:", [v30 BOOLValue]);
                  break;
                case 33:
                  -[_CPNetworkTimingData setRequestHeaderSize:](v77, "setRequestHeaderSize:", [v30 unsignedIntegerValue]);
                  break;
                case 34:
                  -[_CPNetworkTimingData setResponseHeaderSize:](v77, "setResponseHeaderSize:", [v30 unsignedIntegerValue]);
                  break;
                case 35:
                  -[_CPNetworkTimingData setResponseBodyBytesReceived:](v77, "setResponseBodyBytesReceived:", [v30 unsignedIntegerValue]);
                  break;
                case 36:
                  -[_CPNetworkTimingData setResponseBodyBytesDecoded:](v77, "setResponseBodyBytesDecoded:", [v30 unsignedIntegerValue]);
                  break;
                case 37:
                  [v30 doubleValue];
                  v58 = vcvtad_u64_f64((v57 - v11) * 1000.0);
                  if (v57 <= v11)
                  {
                    v59 = 0;
                  }

                  else
                  {
                    v59 = v58;
                  }

                  [(_CPNetworkTimingData *)v77 setFetchStart:v59, v75];
                  break;
                case 38:
                  [v30 doubleValue];
                  v61 = vcvtad_u64_f64((v60 - v11) * 1000.0);
                  if (v60 <= v11)
                  {
                    v62 = 0;
                  }

                  else
                  {
                    v62 = v61;
                  }

                  [(_CPNetworkTimingData *)v77 setDomainLookupStart:v62, v75];
                  break;
                case 39:
                  [v30 doubleValue];
                  v67 = vcvtad_u64_f64((v66 - v11) * 1000.0);
                  if (v66 <= v11)
                  {
                    v68 = 0;
                  }

                  else
                  {
                    v68 = v67;
                  }

                  [(_CPNetworkTimingData *)v77 setDomainLookupEnd:v68, v75];
                  break;
                case 40:
                  [v30 doubleValue];
                  v64 = vcvtad_u64_f64((v63 - v11) * 1000.0);
                  if (v63 <= v11)
                  {
                    v65 = 0;
                  }

                  else
                  {
                    v65 = v64;
                  }

                  [(_CPNetworkTimingData *)v77 setConnectStart:v65, v75];
                  break;
                case 41:
                  [v30 doubleValue];
                  v36 = vcvtad_u64_f64((v35 - v11) * 1000.0);
                  if (v35 <= v11)
                  {
                    v37 = 0;
                  }

                  else
                  {
                    v37 = v36;
                  }

                  [(_CPNetworkTimingData *)v77 setSecureConnectStart:v37, v75];
                  break;
                case 42:
                  [v30 doubleValue];
                  v52 = vcvtad_u64_f64((v51 - v11) * 1000.0);
                  if (v51 <= v11)
                  {
                    v53 = 0;
                  }

                  else
                  {
                    v53 = v52;
                  }

                  [(_CPNetworkTimingData *)v77 setConnectEnd:v53, v75];
                  break;
                case 43:
                  [v30 doubleValue];
                  v70 = vcvtad_u64_f64((v69 - v11) * 1000.0);
                  if (v69 <= v11)
                  {
                    v71 = 0;
                  }

                  else
                  {
                    v71 = v70;
                  }

                  [(_CPNetworkTimingData *)v77 setRequestStart:v71, v75, v76];
                  break;
                case 44:
                  [v30 doubleValue];
                  v39 = vcvtad_u64_f64((v38 - v11) * 1000.0);
                  if (v38 <= v11)
                  {
                    v40 = 0;
                  }

                  else
                  {
                    v40 = v39;
                  }

                  [(_CPNetworkTimingData *)v77 setRequestEnd:v40, v75];
                  break;
                case 45:
                  [v30 doubleValue];
                  v49 = vcvtad_u64_f64((v48 - v11) * 1000.0);
                  if (v48 <= v11)
                  {
                    v50 = 0;
                  }

                  else
                  {
                    v50 = v49;
                  }

                  [(_CPNetworkTimingData *)v77 setResponseStart:v50, v75];
                  break;
                case 46:
                  [v30 doubleValue];
                  v45 = vcvtad_u64_f64((v44 - v11) * 1000.0);
                  if (v44 <= v11)
                  {
                    v46 = 0;
                  }

                  else
                  {
                    v46 = v45;
                  }

                  [(_CPNetworkTimingData *)v77 setResponseEnd:v46, v75];
                  break;
                case 47:
                  [v30 doubleValue];
                  v55 = vcvtad_u64_f64((v54 - v11) * 1000.0);
                  if (v54 <= v11)
                  {
                    v56 = 0;
                  }

                  else
                  {
                    v56 = v55;
                  }

                  [(_CPNetworkTimingData *)v77 setRedirectStart:v56, v75];
                  break;
                case 48:
                  [v30 doubleValue];
                  v42 = vcvtad_u64_f64((v41 - v11) * 1000.0);
                  if (v41 <= v11)
                  {
                    v43 = 0;
                  }

                  else
                  {
                    v43 = v42;
                  }

                  [(_CPNetworkTimingData *)v77 setRedirectEnd:v43, v75];
                  break;
                default:
                  break;
              }

              v20 = v29;
              v21 = v28;
              v22 = v78;
            }

            else
            {
              if (PARLogHandleForCategory_onceToken_1349 != -1)
              {
                dispatch_once(&PARLogHandleForCategory_onceToken_1349, &__block_literal_global_155);
              }

              v34 = PARLogHandleForCategory_logHandles_2_1350;
              if (os_log_type_enabled(PARLogHandleForCategory_logHandles_2_1350, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v88 = v24;
                _os_log_error_impl(&dword_1B1064000, v34, OS_LOG_TYPE_ERROR, "Got data of unexpected type for metric %@.", buf, 0xCu);
              }
            }
          }

LABEL_152:
          ++v23;
        }

        while (v19 != v23);
        v72 = [v17 countByEnumeratingWithState:&v79 objects:v89 count:16];
        v19 = v72;
      }

      while (v72);
    }

    v6 = v77;
    v73 = v77;

    dictionaryCopy = v75;
  }

  return v6;
}

+ (id)startMetricsForNormalization
{
  if (startMetricsForNormalization_onceToken != -1)
  {
    dispatch_once(&startMetricsForNormalization_onceToken, &__block_literal_global_1364);
  }

  v3 = startMetricsForNormalization_startMetricNames;

  return v3;
}

@end