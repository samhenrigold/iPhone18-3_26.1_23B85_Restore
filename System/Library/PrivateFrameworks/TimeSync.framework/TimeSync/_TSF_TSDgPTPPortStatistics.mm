@interface _TSF_TSDgPTPPortStatistics
- (_TSF_TSDgPTPPortStatistics)init;
- (_TSF_TSDgPTPPortStatistics)initWithPort:(id)port;
@end

@implementation _TSF_TSDgPTPPortStatistics

- (_TSF_TSDgPTPPortStatistics)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  [v3 raise:v4 format:?];

  return 0;
}

- (_TSF_TSDgPTPPortStatistics)initWithPort:(id)port
{
  portCopy = port;
  v51.receiver = self;
  v51.super_class = _TSF_TSDgPTPPortStatistics;
  v5 = [(_TSF_TSDgPTPPortStatistics *)&v51 init];
  if (v5)
  {
    v5->_portType = [portCopy portType];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = objc_alloc(MEMORY[0x277CCACA8]);
      interfaceName = [portCopy interfaceName];
      v8 = [v6 initWithFormat:interfaceName];
      portIdentifier = v5->_portIdentifier;
      v5->_portIdentifier = v8;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
LABEL_12:
                  v5->_portRole = [portCopy portRole];
                  service = [portCopy service];
                  iodProperties = [service iodProperties];

                  if (iodProperties)
                  {
                    v15 = [iodProperties objectForKeyedSubscript:?];
                    v5->_receivedSyncCounter = [v15 unsignedIntValue];

                    v16 = [iodProperties objectForKeyedSubscript:?];
                    v5->_receivedFollowUpCounter = [v16 unsignedIntValue];

                    v17 = [iodProperties objectForKeyedSubscript:?];
                    v5->_receivedAnnounceCounter = [v17 unsignedIntValue];

                    v18 = [iodProperties objectForKeyedSubscript:?];
                    v5->_receivedSignalCounter = [v18 unsignedIntValue];

                    v5->_receivedPacketDiscardCounter = 0;
                    v19 = [iodProperties objectForKeyedSubscript:?];
                    v5->_syncReceiptTimeoutCounter = [v19 unsignedIntValue];

                    v20 = [iodProperties objectForKeyedSubscript:?];
                    v5->_announceReceiptTimeoutCounter = [v20 unsignedIntValue];

                    v21 = [iodProperties objectForKeyedSubscript:?];
                    v5->_allowedLostResponsesExceededCounter = [v21 unsignedIntValue];

                    v22 = [iodProperties objectForKeyedSubscript:?];
                    v5->_transmittedSyncCounter = [v22 unsignedIntValue];

                    v23 = [iodProperties objectForKeyedSubscript:?];
                    v5->_transmittedFollowUpCounter = [v23 unsignedIntValue];

                    v24 = [iodProperties objectForKeyedSubscript:?];
                    v5->_transmittedAnnounceCounter = [v24 unsignedIntValue];

                    v25 = [iodProperties objectForKeyedSubscript:?];
                    v5->_transmittedSignalCounter = [v25 unsignedIntValue];

                    v26 = [iodProperties objectForKeyedSubscript:?];
                    v5->_transmittedPacketDiscardCounter = [v26 unsignedIntValue];

                    v27 = [iodProperties objectForKeyedSubscript:?];
                    v5->_attemptedSyncCounter = [v27 unsignedIntValue];

                    v28 = [iodProperties objectForKeyedSubscript:?];
                    v5->_attemptedFollowUpCounter = [v28 unsignedIntValue];

                    v29 = [iodProperties objectForKeyedSubscript:?];
                    v5->_attemptedAnnounceCounter = [v29 unsignedIntValue];

                    v30 = [iodProperties objectForKeyedSubscript:?];
                    v5->_attemptedSignalCounter = [v30 unsignedIntValue];

                    v31 = [iodProperties objectForKeyedSubscript:?];
                    v5->_rawDelayExceededCounter = [v31 unsignedIntValue];

                    v32 = [iodProperties objectForKeyedSubscript:?];
                    v5->_rawDelayMeasurementCounter = [v32 unsignedIntValue];

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v33 = [iodProperties objectForKeyedSubscript:?];
                      v5->_receivedPDelayRequestCounter = [v33 unsignedIntValue];

                      v50 = 124;
                      v49 = 120;
                      v48 = 116;
                      v47 = 112;
                      v34 = 108;
                      v35 = 104;
                      v36 = 100;
                      v37 = 96;
LABEL_17:
                      v38 = [iodProperties objectForKeyedSubscript:?];
                      *(&v5->super.isa + v37) = [v38 unsignedIntValue];

                      v39 = [iodProperties objectForKeyedSubscript:?];
                      *(&v5->super.isa + v36) = [v39 unsignedIntValue];

                      v40 = [iodProperties objectForKeyedSubscript:?];
                      *(&v5->super.isa + v35) = [v40 unsignedIntValue];

                      v41 = [iodProperties objectForKeyedSubscript:?];
                      *(&v5->super.isa + v34) = [v41 unsignedIntValue];

                      v42 = [iodProperties objectForKeyedSubscript:?];
                      *(&v5->super.isa + v47) = [v42 unsignedIntValue];

                      v43 = [iodProperties objectForKeyedSubscript:?];
                      *(&v5->super.isa + v48) = [v43 unsignedIntValue];

                      v44 = [iodProperties objectForKeyedSubscript:?];
                      *(&v5->super.isa + v49) = [v44 unsignedIntValue];

                      v45 = [iodProperties objectForKeyedSubscript:?];
                      *(&v5->super.isa + v50) = [v45 unsignedIntValue];

                      goto LABEL_18;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v50 = 156;
                      v49 = 152;
                      v48 = 148;
                      v47 = 144;
                      v34 = 140;
                      v35 = 136;
                      v36 = 132;
                      v37 = 128;
                      goto LABEL_17;
                    }
                  }

LABEL_18:

                  goto LABEL_19;
                }
              }
            }
          }
        }
      }

      v10 = objc_alloc(MEMORY[0x277CCACA8]);
      interfaceName = [portCopy interfaceName];
      portIdentifier = [portCopy destinationAddressString];
      portIdentifier = [v10 initWithFormat:interfaceName, portIdentifier];
      v12 = v5->_portIdentifier;
      v5->_portIdentifier = portIdentifier;
    }

    goto LABEL_12;
  }

LABEL_19:

  return v5;
}

@end