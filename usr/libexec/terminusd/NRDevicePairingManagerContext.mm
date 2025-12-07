@interface NRDevicePairingManagerContext
- (NSString)description;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
- (void)dealloc;
- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing;
- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error;
- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey;
- (void)peripheralManagerDidUpdateState:(id)state;
- (void)requestConfigurationForListener:(id)listener session:(id)session sessionConfig:(id)config childConfig:(id)childConfig validateAuthBlock:(id)block responseBlock:(id)responseBlock;
- (void)scalablePipeManager:(id)manager pipeDidConnect:(id)connect;
- (void)scalablePipeManager:(id)manager pipeDidDisconnect:(id)disconnect error:(id)error;
- (void)scalablePipeManagerDidUpdateState:(id)state;
@end

@implementation NRDevicePairingManagerContext

- (void)requestConfigurationForListener:(id)listener session:(id)session sessionConfig:(id)config childConfig:(id)childConfig validateAuthBlock:(id)block responseBlock:(id)responseBlock
{
  listenerCopy = listener;
  sessionCopy = session;
  configCopy = config;
  childConfigCopy = childConfig;
  blockCopy = block;
  responseBlockCopy = responseBlock;
  if (qword_1002291E8 != -1)
  {
    dispatch_once(&qword_1002291E8, &stru_1001FC218);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: Got config request for listener %@ session %@ sessionConfig %@", ", "[NRDevicePairingManagerContext requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]"", 1749, self, listenerCopy, sessionCopy, configCopy);
  }

  (*(responseBlockCopy + 2))(responseBlockCopy, 0, 0, 0);
}

- (void)scalablePipeManager:(id)manager pipeDidDisconnect:(id)disconnect error:(id)error
{
  managerCopy = manager;
  disconnectCopy = disconnect;
  errorCopy = error;
  if (managerCopy)
  {
    if (disconnectCopy)
    {
      peer = [disconnectCopy peer];
      identifier = [peer identifier];

      if (identifier)
      {
        v12 = sub_1001232AC(&self->super.isa, identifier);
        if (v12)
        {
          v13 = v12;
          if (qword_1002291E8 != -1)
          {
            dispatch_once(&qword_1002291E8, &stru_1001FC218);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002291E8 != -1)
            {
              dispatch_once(&qword_1002291E8, &stru_1001FC218);
            }

            _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: BT pipe for %@ (CBUUID %@) disconnected error %@", ", "[NRDevicePairingManagerContext scalablePipeManager:pipeDidDisconnect:error:]"", 1660, self, v13, identifier, errorCopy);
          }

          if (sub_100123380(v13) && (sub_100123434(v13) & 1) == 0)
          {
            sub_1001234B8(v13);
          }

          else
          {
            sub_10012357C(v13);
          }
        }

        else
        {
          if (qword_1002291E8 != -1)
          {
            dispatch_once(&qword_1002291E8, &stru_1001FC218);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002291E8 != -1)
            {
              dispatch_once(&qword_1002291E8, &stru_1001FC218);
            }

            _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: BT BT pipe for unknown CBUUID %@ disconnected error %@", ", "[NRDevicePairingManagerContext scalablePipeManager:pipeDidDisconnect:error:]"", 1656, self, identifier, errorCopy);
          }

          v13 = 0;
        }
      }

      else
      {
        v18 = sub_100123258();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (!IsLevelEnabled)
        {
          identifier = 0;
          goto LABEL_23;
        }

        v13 = sub_100123258();
        _NRLogWithArgs(v13, 17, "%s called with null cbUUID", "[NRDevicePairingManagerContext scalablePipeManager:pipeDidDisconnect:error:]");
      }

LABEL_23:
      goto LABEL_24;
    }

    v16 = sub_100123258();
    v17 = _NRLogIsLevelEnabled();

    if (v17)
    {
      identifier = sub_100123258();
      _NRLogWithArgs(identifier, 17, "%s called with null pipe");
      goto LABEL_23;
    }
  }

  else
  {
    v14 = sub_100123258();
    v15 = _NRLogIsLevelEnabled();

    if (v15)
    {
      identifier = sub_100123258();
      _NRLogWithArgs(identifier, 17, "%s called with null pipeManager");
      goto LABEL_23;
    }
  }

LABEL_24:
}

- (void)scalablePipeManager:(id)manager pipeDidConnect:(id)connect
{
  managerCopy = manager;
  connectCopy = connect;
  if (managerCopy)
  {
    if (connectCopy)
    {
      peer = [connectCopy peer];
      identifier = [peer identifier];

      if (!identifier)
      {
        v42 = sub_100123258();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (!IsLevelEnabled)
        {
          identifier = 0;
          goto LABEL_33;
        }

        v10 = sub_100123258();
        _NRLogWithArgs(v10, 17, "%s called with null cbUUID", "[NRDevicePairingManagerContext scalablePipeManager:pipeDidConnect:]");
        goto LABEL_32;
      }

      v9 = sub_1001232AC(&self->super.isa, identifier);
      if (!v9)
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002291E8 != -1)
          {
            dispatch_once(&qword_1002291E8, &stru_1001FC218);
          }

          _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: BT pipe for unknown CBUUID %@ connected", ", "[NRDevicePairingManagerContext scalablePipeManager:pipeDidConnect:]"", 1626, self, identifier);
        }

        v10 = 0;
        goto LABEL_32;
      }

      v10 = v9;
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: BT pipe for %@ connected (CBUUID %@)", ", "[NRDevicePairingManagerContext scalablePipeManager:pipeDidConnect:]"", 1640, self, v10, identifier);
      }

      v11 = connectCopy;
      if (*(v10 + 12))
      {
        sub_10012357C(v10);
      }

      if (sub_100123380(v10) && (*(v10 + 8) & 1) == 0)
      {
        *(v10 + 8) = 1;
        WeakRetained = objc_loadWeakRetained(v10 + 2);
        sub_100126038(WeakRetained, *(v10 + 4));
      }

      objc_storeStrong(v10 + 12, connect);
      channel = [v11 channel];
      *(v10 + 13) = channel;
      if (channel)
      {
        os_channel_ring_id();
        v14 = os_channel_rx_ring();
        *(v10 + 14) = v14;
        if (v14)
        {
          os_channel_ring_id();
          v15 = os_channel_tx_ring();
          *(v10 + 15) = v15;
          if (v15)
          {
            fd = os_channel_get_fd();
            v17 = fd;
            if ((fd & 0x80000000) != 0)
            {
              v51 = sub_100123258();
              v52 = _NRLogIsLevelEnabled();

              if (v52)
              {
                v53 = sub_100123258();
                _NRLogWithArgs(v53, 17, "os_channel_get_fd failed: %d", v17);
              }

              goto LABEL_24;
            }

            v18 = fd;
            v19 = *(v10 + 3);
            v20 = dispatch_source_create(&_dispatch_source_type_read, v18, 0, v19);
            v21 = *(v10 + 16);
            *(v10 + 16) = v20;

            v22 = *(v10 + 16);
            if (v22)
            {
              handler[0] = _NSConcreteStackBlock;
              handler[1] = 3221225472;
              handler[2] = sub_1001264E4;
              handler[3] = &unk_1001FD3C8;
              handler[4] = v10;
              dispatch_source_set_event_handler(v22, handler);
              v23 = *(v10 + 16);
              v64[0] = _NSConcreteStackBlock;
              v64[1] = 3221225472;
              v64[2] = nullsub_13;
              v64[3] = &unk_1001FD3C8;
              v24 = v11;
              v65 = v24;
              dispatch_source_set_cancel_handler(v23, v64);
              dispatch_resume(*(v10 + 16));
              v25 = *(v10 + 3);
              v26 = dispatch_source_create(&_dispatch_source_type_write, v18, 0, v25);
              v27 = *(v10 + 17);
              *(v10 + 17) = v26;

              v28 = *(v10 + 17);
              if (v28)
              {
                v63[0] = _NSConcreteStackBlock;
                v63[1] = 3221225472;
                v63[2] = sub_1001266AC;
                v63[3] = &unk_1001FD3C8;
                v63[4] = v10;
                dispatch_source_set_event_handler(v28, v63);
                v29 = *(v10 + 17);
                v61[0] = _NSConcreteStackBlock;
                v61[1] = 3221225472;
                v61[2] = nullsub_14;
                v61[3] = &unk_1001FD3C8;
                v62 = v24;
                dispatch_source_set_cancel_handler(v29, v61);
                dispatch_resume(*(v10 + 17));
                *(v10 + 9) = 0;
                v30 = [NRDeviceIdentifier alloc];
                uuid = [*(v10 + 4) uuid];
                v32 = [v30 initWithUUID:uuid];

                v33 = [[NRBluetoothPacketParser alloc] initWithDeviceIdentifier:v32 queue:*(v10 + 3)];
                [v33 setDirect:1];
                [v33 setControlOnly:1];
                v34 = [v33 createReadContextForPriority:1 readAvailableCallback:nullsub_15 readAvailableContext:v10];
                v35 = [v33 createWriteContextForPriority:1 writeOutputCallback:sub_10012D3D4 writeOutputContext:v10];
                v60[0] = _NSConcreteStackBlock;
                v60[1] = 3221225472;
                v60[2] = sub_100126718;
                v60[3] = &unk_1001FBF78;
                v60[4] = v10;
                [v33 setReceiveXPCCommDictionaryHandler:v60];
                v36 = *(v10 + 18);
                *(v10 + 18) = v33;
                v37 = v33;

                *(v10 + 19) = v34;
                *(v10 + 20) = v35;
                [v37 start];
                [v37 sendXPCCommDictionary:&off_10020A178];
                sub_100126844(v10);
                sub_100127188(v10);
              }

              else
              {
                v56 = sub_100123258();
                v57 = _NRLogIsLevelEnabled();

                if (v57)
                {
                  v58 = sub_100123258();
                  _NRLogWithArgs(v58, 17, "%@: Failed to create read output source for pipe %@", v10, v24);
                }
              }

              goto LABEL_24;
            }

            v54 = sub_100123258();
            v55 = _NRLogIsLevelEnabled();

            if (v55)
            {
              v46 = sub_100123258();
              _NRLogWithArgs(v46, 17, "%@: Failed to create read input source for pipe %@", v10, v11);
              goto LABEL_53;
            }

LABEL_24:

LABEL_32:
LABEL_33:

            goto LABEL_34;
          }

          v49 = sub_100123258();
          v50 = _NRLogIsLevelEnabled();

          if (!v50)
          {
            goto LABEL_24;
          }

          v46 = sub_100123258();
          _NRLogWithArgs(v46, 17, "%@: Pipe has no output ring %@", v10, v11);
        }

        else
        {
          v47 = sub_100123258();
          v48 = _NRLogIsLevelEnabled();

          if (!v48)
          {
            goto LABEL_24;
          }

          v46 = sub_100123258();
          _NRLogWithArgs(v46, 17, "%@: Pipe has no input ring %@", v10, v11);
        }
      }

      else
      {
        v44 = sub_100123258();
        v45 = _NRLogIsLevelEnabled();

        if (!v45)
        {
          goto LABEL_24;
        }

        v46 = sub_100123258();
        _NRLogWithArgs(v46, 17, "%@: Pipe has no channel %@", v10, v11);
      }

LABEL_53:

      goto LABEL_24;
    }

    v40 = sub_100123258();
    v41 = _NRLogIsLevelEnabled();

    if (v41)
    {
      identifier = sub_100123258();
      _NRLogWithArgs(identifier, 17, "%s called with null pipe");
      goto LABEL_33;
    }
  }

  else
  {
    v38 = sub_100123258();
    v39 = _NRLogIsLevelEnabled();

    if (v39)
    {
      identifier = sub_100123258();
      _NRLogWithArgs(identifier, 17, "%s called with null pipeManager");
      goto LABEL_33;
    }
  }

LABEL_34:
}

- (void)scalablePipeManagerDidUpdateState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (self)
  {
    if (self->_pipeManager != stateCopy)
    {
      goto LABEL_18;
    }
  }

  else if (stateCopy)
  {
    goto LABEL_18;
  }

  state = [(CBScalablePipeManager *)stateCopy state];
  if (state)
  {
    if (state == 5)
    {
      if (self)
      {
        pipeManager = self->_pipeManager;
      }

      else
      {
        pipeManager = 0;
      }

      v21[0] = CBScalablePipeOptionTransport;
      v21[1] = CBScalablePipeOptionStayConnectedWhenIdle;
      v22[0] = &off_100209D28;
      v22[1] = &__kCFBooleanTrue;
      v21[2] = CBScalablePipeOptionRequiresEncryption;
      v22[2] = &__kCFBooleanFalse;
      v8 = pipeManager;
      v9 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];
      [(CBScalablePipeManager *)v8 registerEndpoint:@"com.apple.terminusPairing" type:1 priority:2 options:v9];
    }

    else
    {
      if (self)
      {
        [(CBScalablePipeManager *)self->_pipeManager unregisterEndpoint:@"com.apple.terminusPairing"];
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        pairingCandidates = self->_pairingCandidates;
      }

      else
      {
        [0 unregisterEndpoint:@"com.apple.terminusPairing"];
        pairingCandidates = 0;
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
      }

      v9 = pairingCandidates;
      v11 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v17;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v17 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v15 = sub_100125108(&self->super.isa, *(*(&v16 + 1) + 8 * i));
            sub_10012357C(v15);
          }

          v12 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v12);
      }
    }
  }

LABEL_18:
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
  if (self)
  {
    if (self->_centralManager != manager)
    {
LABEL_3:
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        _NRLogWithArgs(qword_1002291E0, 16, "%s%.30s:%-4d %@: unknown centralManager instance", ", "[NRDevicePairingManagerContext centralManager:didFailToConnectPeripheral:error:]"", 1574, self);
      }

      goto LABEL_25;
    }
  }

  else if (manager)
  {
    goto LABEL_3;
  }

  identifier = [peripheralCopy identifier];
  v10 = sub_1001232AC(&self->super.isa, identifier);

  if (v10)
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: didFailToConnectPeripheral:%@ error:%@", ", "[NRDevicePairingManagerContext centralManager:didFailToConnectPeripheral:error:]"", 1580, v10, peripheralCopy, errorCopy);
    }

    sub_10012DB18(&self->super.isa, v10);
  }

  else
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: didFailToConnectPeripheral:%@ error:%@ (no candidate)", ", "[NRDevicePairingManagerContext centralManager:didFailToConnectPeripheral:error:]"", 1583, self, peripheralCopy, errorCopy);
    }
  }

LABEL_25:
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
  if (self)
  {
    if (self->_centralManager != manager)
    {
LABEL_3:
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        _NRLogWithArgs(qword_1002291E0, 16, "%s%.30s:%-4d %@: unknown centralManager instance", ", "[NRDevicePairingManagerContext centralManager:didDisconnectPeripheral:error:]"", 1558, self);
      }

      goto LABEL_25;
    }
  }

  else if (manager)
  {
    goto LABEL_3;
  }

  identifier = [peripheralCopy identifier];
  v10 = sub_1001232AC(&self->super.isa, identifier);

  if (v10)
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: didDisconnectPeripheral:%@ error:%@", ", "[NRDevicePairingManagerContext centralManager:didDisconnectPeripheral:error:]"", 1564, v10, peripheralCopy, errorCopy);
    }

    sub_10012DB18(&self->super.isa, v10);
  }

  else
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: didDisconnectPeripheral:%@ error:%@ (no candidate)", ", "[NRDevicePairingManagerContext centralManager:didDisconnectPeripheral:error:]"", 1567, self, peripheralCopy, errorCopy);
    }
  }

LABEL_25:
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  if (self)
  {
    centralManager = self->_centralManager;
  }

  else
  {
    centralManager = 0;
  }

  v10 = peripheralCopy;
  if (centralManager == manager)
  {
    identifier = [peripheralCopy identifier];
    v9 = sub_1001232AC(&self->super.isa, identifier);

    if (v9)
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: didConnectPeripheral: %@", ", "[NRDevicePairingManagerContext centralManager:didConnectPeripheral:]"", 1537, v9, v10);
      }
    }

    else
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: didConnectPeripheral: %@  (no candidate)", ", "[NRDevicePairingManagerContext centralManager:didConnectPeripheral:]"", 1539, self, v10);
      }
    }
  }

  else
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs(qword_1002291E0, 16, "%s%.30s:%-4d %@: unknown centralManager instance", ", "[NRDevicePairingManagerContext centralManager:didConnectPeripheral:]"", 1531, self);
    }
  }
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (self)
  {
    if (self->_centralManager != stateCopy)
    {
LABEL_3:
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        _NRLogWithArgs(qword_1002291E0, 16, "%s%.30s:%-4d %@: unknown centralManager instance", ", "[NRDevicePairingManagerContext centralManagerDidUpdateState:]"", 1511, self);
      }

      goto LABEL_26;
    }
  }

  else if (stateCopy)
  {
    goto LABEL_3;
  }

  state = [(CBCentralManager *)stateCopy state];
  if (state)
  {
    if (state == 5)
    {
      if (self)
      {
        pairingCriteria = [(NRDevicePairingManagerInfo *)self->_info pairingCriteria];
        migrationPairing = [pairingCriteria migrationPairing];

        if (migrationPairing)
        {
          sub_10012DBA8(&self->super.isa);
        }
      }

      sub_100124A48(&self->super.isa);
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      if (self)
      {
        pairingCandidates = self->_pairingCandidates;
      }

      else
      {
        pairingCandidates = 0;
      }

      v10 = pairingCandidates;
      v11 = [(NSMutableDictionary *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v17;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v17 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = sub_100125108(&self->super.isa, *(*(&v16 + 1) + 8 * i));
            sub_1001242E0(v15, 1);
          }

          v12 = [(NSMutableDictionary *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v12);
      }
    }
  }

LABEL_26:
}

- (void)peripheralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  if (qword_1002291E8 != -1)
  {
    dispatch_once(&qword_1002291E8, &stru_1001FC218);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    v4 = qword_1002291E0;
    _NRLogWithArgs(v4, 1, "%s%.30s:%-4d %@: peripheralManagerDidUpdateState %ld", ", "-[NRDevicePairingManagerContext peripheralManagerDidUpdateState:]"", 1436, self, [stateCopy state]);
  }
}

- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error
{
  agentCopy = agent;
  pairingCopy = pairing;
  errorCopy = error;
  if (self)
  {
    if (self->_pairingAgent == agentCopy)
    {
      goto LABEL_3;
    }
  }

  else if (!agentCopy)
  {
LABEL_3:
    identifier = [pairingCopy identifier];
    v13 = sub_1001232AC(&self->super.isa, identifier);

    if (!v13)
    {
      v42 = sub_100123258();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v44 = sub_100123258();
        identifier2 = [pairingCopy identifier];
        _NRLogWithArgs(v44, 16, "%s%.30s:%-4d %@: peerDidFailToCompletePairing: Unable to find pairing candidate context for %@", ", "[NRDevicePairingManagerContext pairingAgent:peerDidFailToCompletePairing:error:]"", 1220, self, identifier2);
      }

      goto LABEL_56;
    }

    if (sub_100123434(v13))
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        _NRLogWithArgs(qword_1002291E0, 16, "%s%.30s:%-4d %@: BT pairing failed: %@", ", "[NRDevicePairingManagerContext pairingAgent:peerDidFailToCompletePairing:error:]"", 1229, v13, errorCopy);
      }

      *(v13 + 11) = 0;
      v84 = errorCopy;
      v14 = errorCopy;
      v15 = v14;
      if (v14 && [v14 code] == 1)
      {
        v16 = CBInternalErrorDomain;
        domain = [v15 domain];
        identifier = [domain isEqualToString:v16];

        if (identifier)
        {
          userInfo = [v15 userInfo];
          domain = [userInfo objectForKeyedSubscript:CBOriginalPeerIdentifierErrorKey];

          v82 = domain;
          if (!domain)
          {
            v59 = sub_100123258();
            v60 = _NRLogIsLevelEnabled();

            if (v60)
            {
              v61 = sub_100123258();
              _NRLogWithArgs(v61, 16, "%s%.30s:%-4d %@: BT already paired, but no previous UUID given", ", "[NRDevicePairingManagerContext pairingAgent:peerDidFailToCompletePairing:error:]"", 1236, v13);
            }

            sub_10012B2F8(self, 0xFFFFFFFFFFFFF442);

            goto LABEL_55;
          }

          identifier = &v80;
          v18 = xpc_dictionary_create(0, 0, 0);
          if (v18)
          {
            v19 = nrXPCKeyUnderlyingError;
            v83 = v18;
            v20 = v15;
            if (v19)
            {
              *uuid = 0;
              v81 = v20;
              v21 = [NSKeyedArchiver archivedDataWithRootObject:v20 requiringSecureCoding:1 error:uuid];
              v22 = *uuid;
              if (v22 || ![v21 length])
              {
                v70 = sub_100123258();
                v71 = _NRLogIsLevelEnabled();

                if (v71)
                {
                  v72 = sub_100123258();
                  _NRLogWithArgs(v72, 17, "Failed to archive %@: %@", v81, v22);
                }
              }

              else
              {
                bytes = [v21 bytes];
                v24 = [v21 length];
                xpc_dictionary_set_data(v83, v19, bytes, v24);
              }

              v20 = v81;
            }

            else
            {
              v64 = sub_100123258();
              v65 = _NRLogIsLevelEnabled();

              if (v65)
              {
                v66 = sub_100123258();
                _NRLogWithArgs(v66, 17, "%s called with null key", "nr_xpc_dictionary_set_nsobject");
              }
            }

            v25 = v83;
            v26 = nrXPCKeyBluetoothUUID;
            v27 = v25;
            if (v26)
            {
              *uuid = 0;
              v86 = 0;
              v28 = v82;
              [v82 getUUIDBytes:uuid];
              xpc_dictionary_set_uuid(v27, v26, uuid);
            }

            else
            {
              v67 = sub_100123258();
              v68 = _NRLogIsLevelEnabled();

              v28 = v82;
              if (v68)
              {
                v69 = sub_100123258();
                _NRLogWithArgs(v69, 17, "%s called with null key", "nr_xpc_dictionary_set_nsuuid");
              }
            }

            v29 = sub_100168BE8(NRDLocalDevice, v28, 0);
            if (!v29)
            {
              goto LABEL_34;
            }

            if (qword_1002291E8 != -1)
            {
              dispatch_once(&qword_1002291E8, &stru_1001FC218);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_1002291E8 != -1)
              {
                dispatch_once(&qword_1002291E8, &stru_1001FC218);
              }

              _NRLogWithArgs(qword_1002291E0, 16, "%s%.30s:%-4d %@: Previous device for BT UUID found: %@", ", "[NRDevicePairingManagerContext pairingAgent:peerDidFailToCompletePairing:error:]"", 1247, v13, v29);
            }

            v30 = nrXPCKeyNRUUID;
            v31 = v29->_nrUUID;
            v32 = v27;
            v33 = v31;
            v34 = v33;
            if (v30)
            {
              if (v33)
              {
                *uuid = 0;
                v86 = 0;
                [(NSUUID *)v33 getUUIDBytes:uuid];
                xpc_dictionary_set_uuid(v32, v30, uuid);
LABEL_33:

                v28 = v82;
LABEL_34:
                if (self)
                {
                  sub_1001246D8(self, 0xFFFFFFFFFFFFF442, 0xCuLL, v27);
                  sub_100129A18(self);
                }

LABEL_55:
                errorCopy = v84;
                goto LABEL_56;
              }

              v76 = sub_100123258();
              v77 = _NRLogIsLevelEnabled();

              if (!v77)
              {
                goto LABEL_33;
              }

              v75 = sub_100123258();
              _NRLogWithArgs(v75, 17, "%s called with null uuid");
            }

            else
            {
              v73 = sub_100123258();
              v74 = _NRLogIsLevelEnabled();

              if (!v74)
              {
                goto LABEL_33;
              }

              v75 = sub_100123258();
              _NRLogWithArgs(v75, 17, "%s called with null key");
            }

            goto LABEL_33;
          }

          v62 = sub_100123258();
          v63 = _NRLogIsLevelEnabled();

          if (!v63)
          {
            goto LABEL_63;
          }

          v48 = sub_100123258();
          _NRLogWithArgs(v48, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", ", "nr_xpc_dictionary_create"", 74, 0, 0, 0);
          goto LABEL_62;
        }
      }

      else
      {
      }

      v38 = xpc_dictionary_create(0, 0, 0);
      if (v38)
      {
        v39 = nrXPCKeyUnderlyingError;
        identifier = v38;
        domain = v15;
        if (v39)
        {
          if (v15)
          {
            *uuid = 0;
            v40 = [NSKeyedArchiver archivedDataWithRootObject:domain requiringSecureCoding:1 error:uuid];
            v41 = *uuid;
            if (v41 || ![v40 length])
            {
              v56 = sub_100123258();
              v57 = _NRLogIsLevelEnabled();

              if (v57)
              {
                v58 = sub_100123258();
                _NRLogWithArgs(v58, 17, "Failed to archive %@: %@", domain, v41);
              }
            }

            else
            {
              xpc_dictionary_set_data(identifier, v39, [v40 bytes], objc_msgSend(v40, "length"));
            }

            goto LABEL_52;
          }

          v54 = sub_100123258();
          v55 = _NRLogIsLevelEnabled();

          if (v55)
          {
            v53 = sub_100123258();
            _NRLogWithArgs(v53, 17, "%s called with null object");
            goto LABEL_68;
          }

LABEL_52:

          if (self)
          {
            sub_1001246D8(self, 0xFFFFFFFFFFFFF442, 0xCuLL, identifier);
            sub_100129A18(self);
          }

          goto LABEL_55;
        }

LABEL_64:
        v51 = sub_100123258();
        v52 = _NRLogIsLevelEnabled();

        if (v52)
        {
          v53 = sub_100123258();
          _NRLogWithArgs(v53, 17, "%s called with null key");
LABEL_68:

          goto LABEL_52;
        }

        goto LABEL_52;
      }

      v46 = sub_100123258();
      v47 = _NRLogIsLevelEnabled();

      if (!v47)
      {
LABEL_63:
        agentCopy = _os_log_pack_size();
        pairingCopy = &v80 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v49 = __error();
        v50 = _os_log_pack_fill(pairingCopy, agentCopy, *v49, &_mh_execute_header, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
        sub_1000F4320(v50, "nr_xpc_dictionary_create");
        sub_100123258();
        _NRLogAbortWithPack();
        goto LABEL_64;
      }

      v48 = sub_100123258();
      _NRLogWithArgs(v48, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", ", "nr_xpc_dictionary_create"", 74, 0, 0, 0);
LABEL_62:

      goto LABEL_63;
    }

    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_56;
    }

    if (qword_1002291E8 == -1)
    {
      v35 = qword_1002291E0;
      if (self)
      {
LABEL_42:
        inProgressPairingCandidateIdentifier = self->_inProgressPairingCandidateIdentifier;
LABEL_43:
        v37 = v35;
        _NRLogWithArgs(v37, 16, "%s%.30s:%-4d %@: peerDidFailToCompletePairing: Already pairing another candidate %@", ", "[NRDevicePairingManagerContext pairingAgent:peerDidFailToCompletePairing:error:]"", 1225, self, inProgressPairingCandidateIdentifier);

        goto LABEL_56;
      }
    }

    else
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
      v35 = qword_1002291E0;
      if (self)
      {
        goto LABEL_42;
      }
    }

    inProgressPairingCandidateIdentifier = 0;
    goto LABEL_43;
  }

  v78 = sub_100123258();
  v79 = _NRLogIsLevelEnabled();

  if (!v79)
  {
    goto LABEL_57;
  }

  v13 = sub_100123258();
  _NRLogWithArgs(v13, 16, "%s%.30s:%-4d %@: peerDidFailToCompletePairing: invalid pairing agent", ", "[NRDevicePairingManagerContext pairingAgent:peerDidFailToCompletePairing:error:]"", 1214, self);
LABEL_56:

LABEL_57:
}

- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing
{
  pairingCopy = pairing;
  v7 = pairingCopy;
  if (self)
  {
    if (self->_pairingAgent == agent)
    {
      goto LABEL_3;
    }
  }

  else if (!agent)
  {
LABEL_3:
    identifier = [pairingCopy identifier];
    v9 = sub_1001232AC(&self->super.isa, identifier);

    if (!v9)
    {
      v19 = sub_100123258();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        goto LABEL_25;
      }

      v18 = sub_100123258();
      identifier2 = [v7 identifier];
      _NRLogWithArgs(v18, 16, "%s%.30s:%-4d %@: peerDidCompletePairing: Unable to find pairing candidate context for %@", ", "[NRDevicePairingManagerContext pairingAgent:peerDidCompletePairing:]"", 1166, self, identifier2);

      goto LABEL_24;
    }

    if (sub_100123434(v9))
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: BT pairing succeeded!", ", "[NRDevicePairingManagerContext pairingAgent:peerDidCompletePairing:]"", 1175, v9);
      }

      *(v9 + 11) = 0;
      sub_100172950(NRDLocalDevice, *(v9 + 248));
      identifier3 = [v7 identifier];
      sub_10017440C(NRDLocalDevice, identifier3, *(v9 + 248));

      if (self)
      {
        pairingAgent = self->_pairingAgent;
        if (pairingAgent)
        {
          [(CBPairingAgent *)pairingAgent setDelegate:0];
          v12 = self->_pairingAgent;
          self->_pairingAgent = 0;
        }
      }

      [v7 tag:@"IsAppleWatch"];
      sub_100128FC4(v9);
      objc_initWeak(&location, self);
      v13 = dispatch_time(0, 200000000);
      if (self)
      {
        queue = self->_queue;
      }

      else
      {
        queue = 0;
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10012FDA8;
      block[3] = &unk_1001FD0D8;
      v15 = queue;
      objc_copyWeak(&v26, &location);
      v25 = v9;
      dispatch_after(v13, v15, block);

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
      goto LABEL_25;
    }

    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_25;
    }

    if (qword_1002291E8 == -1)
    {
      v16 = qword_1002291E0;
      if (self)
      {
LABEL_22:
        inProgressPairingCandidateIdentifier = self->_inProgressPairingCandidateIdentifier;
LABEL_23:
        v18 = v16;
        _NRLogWithArgs(v18, 16, "%s%.30s:%-4d %@: peerDidCompletePairing: Already pairing another candidate %@", ", "[NRDevicePairingManagerContext pairingAgent:peerDidCompletePairing:]"", 1171, self, inProgressPairingCandidateIdentifier);
LABEL_24:

        goto LABEL_25;
      }
    }

    else
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
      v16 = qword_1002291E0;
      if (self)
      {
        goto LABEL_22;
      }
    }

    inProgressPairingCandidateIdentifier = 0;
    goto LABEL_23;
  }

  v22 = sub_100123258();
  v23 = _NRLogIsLevelEnabled();

  if (!v23)
  {
    goto LABEL_26;
  }

  v9 = sub_100123258();
  _NRLogWithArgs(v9, 16, "%s%.30s:%-4d %@: peerDidCompletePairing: Invalid pairing agent", ", "[NRDevicePairingManagerContext pairingAgent:peerDidCompletePairing:]"", 1160, self);
LABEL_25:

LABEL_26:
}

- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey
{
  agentCopy = agent;
  pairingCopy = pairing;
  passkeyCopy = passkey;
  v13 = &qword_100229000;
  if (qword_1002291E8 != -1)
  {
    dispatch_once(&qword_1002291E8, &stru_1001FC218);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    _NRLogWithArgs(qword_1002291E0, 2, "%s%.30s:%-4d %@: peerDidRequestPairing: pairing type: %zd, peer %@", ", "[NRDevicePairingManagerContext pairingAgent:peerDidRequestPairing:type:passkey:]"", 1091, self, type, pairingCopy);
  }

  if (self)
  {
    if (self->_pairingAgent == agentCopy)
    {
      goto LABEL_9;
    }
  }

  else if (!agentCopy)
  {
LABEL_9:
    if (type != 5)
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        _NRLogWithArgs(qword_1002291E0, 16, "%s%.30s:%-4d %@: peerDidRequestPairing: pairing type not supported: %zd", ", "[NRDevicePairingManagerContext pairingAgent:peerDidRequestPairing:type:passkey:]"", 1144, self, type);
      }

      goto LABEL_37;
    }

    identifier = [pairingCopy identifier];
    v15 = sub_1001232AC(&self->super.isa, identifier);

    if (!v15)
    {
      v25 = sub_100123258();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        goto LABEL_36;
      }

      v24 = sub_100123258();
      identifier2 = [pairingCopy identifier];
      _NRLogWithArgs(v24, 16, "%s%.30s:%-4d %@: peerDidRequestPairing: Unable to find pairing candidate context for %@", ", "[NRDevicePairingManagerContext pairingAgent:peerDidRequestPairing:type:passkey:]"", 1104, self, identifier2);

LABEL_35:
LABEL_36:

LABEL_37:
      if (v13[61] != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (v13[61] != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        _NRLogWithArgs(qword_1002291E0, 16, "%s%.30s:%-4d %@: Rejecting pairing request from %@", ", "[NRDevicePairingManagerContext pairingAgent:peerDidRequestPairing:type:passkey:]"", 1149, self, pairingCopy);
      }

      [(CBPairingAgent *)agentCopy respondToPairingRequest:pairingCopy type:type accept:0 data:0];
      goto LABEL_44;
    }

    if (sub_100123434(v15))
    {
      v16 = v15[31];
      if (v16)
      {
        v17 = sub_100163B2C(NRDLocalDevice, v16, 0);
        v18 = v17;
        if (v17)
        {
          v19 = *(v17 + 104);
          if (v19)
          {
            v20 = v19;
            if (qword_1002291E8 != -1)
            {
              dispatch_once(&qword_1002291E8, &stru_1001FC218);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_1002291E8 != -1)
              {
                dispatch_once(&qword_1002291E8, &stru_1001FC218);
              }

              _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: peerDidRequestPairing: Accepting BT pairing request with peer %@", ", "[NRDevicePairingManagerContext pairingAgent:peerDidRequestPairing:type:passkey:]"", 1129, v15, pairingCopy);
            }

            v36 = CBPairingAgentPairingDataOOBTKKey;
            v37 = v20;
            v21 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
            [(CBPairingAgent *)agentCopy respondToPairingRequest:pairingCopy type:5 accept:1 data:v21];

            goto LABEL_44;
          }
        }

        v33 = sub_100123258();
        v34 = _NRLogIsLevelEnabled();

        if (v34)
        {
          v35 = sub_100123258();
          _NRLogWithArgs(v35, 16, "%s%.30s:%-4d %@: peerDidRequestPairing: No BTOOBK to complete pairing", ", "[NRDevicePairingManagerContext pairingAgent:peerDidRequestPairing:type:passkey:]"", 1141, self);
        }

        v13 = &qword_100229000;
        goto LABEL_37;
      }

      v28 = sub_100123258();
      v29 = _NRLogIsLevelEnabled();

      if (!v29)
      {
        goto LABEL_36;
      }

      v24 = sub_100123258();
      _NRLogWithArgs(v24, 16, "%s%.30s:%-4d %@: peerDidRequestPairing: Pairing candidate doesn't have NRUUID %@", ", "[NRDevicePairingManagerContext pairingAgent:peerDidRequestPairing:type:passkey:]"", 1122, self, v15);
      goto LABEL_35;
    }

    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_36;
    }

    if (qword_1002291E8 == -1)
    {
      v22 = qword_1002291E0;
      if (self)
      {
LABEL_33:
        inProgressPairingCandidateIdentifier = self->_inProgressPairingCandidateIdentifier;
LABEL_34:
        v24 = v22;
        _NRLogWithArgs(v24, 16, "%s%.30s:%-4d %@: peerDidRequestPairing: Already pairing another candidate %@", ", "[NRDevicePairingManagerContext pairingAgent:peerDidRequestPairing:type:passkey:]"", 1117, self, inProgressPairingCandidateIdentifier);
        goto LABEL_35;
      }
    }

    else
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
      v22 = qword_1002291E0;
      if (self)
      {
        goto LABEL_33;
      }
    }

    inProgressPairingCandidateIdentifier = 0;
    goto LABEL_34;
  }

  v30 = sub_100123258();
  v31 = _NRLogIsLevelEnabled();

  if (v31)
  {
    v32 = sub_100123258();
    _NRLogWithArgs(v32, 16, "%s%.30s:%-4d %@: peerDidRequestPairing: invalid pairing agent", ", "[NRDevicePairingManagerContext pairingAgent:peerDidRequestPairing:type:passkey:]"", 1094, self);
  }

LABEL_44:
}

- (NSString)description
{
  if (self)
  {
    self = self->_info;
  }

  return [(NRDevicePairingManagerContext *)self description];
}

- (void)dealloc
{
  sub_100130704(self);
  v3.receiver = self;
  v3.super_class = NRDevicePairingManagerContext;
  [(NRDevicePairingManagerContext *)&v3 dealloc];
}

@end