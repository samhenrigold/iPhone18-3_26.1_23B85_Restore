@interface CBRFCOMMChannel
- (CBRFCOMMChannel)initWithPeer:(id)peer info:(id)info;
- (id)description;
- (void)configureChannelPortParams:(unsigned int)params dataBits:(unsigned __int8)bits parity:(unsigned __int8)parity stopBits:(unsigned __int8)stopBits;
- (void)dealloc;
@end

@implementation CBRFCOMMChannel

- (CBRFCOMMChannel)initWithPeer:(id)peer info:(id)info
{
  peerCopy = peer;
  infoCopy = info;
  v26.receiver = self;
  v26.super_class = CBRFCOMMChannel;
  v9 = [(CBRFCOMMChannel *)&v26 init];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = [infoCopy objectForKey:@"kCBMsgArgRFCOMMChannelID"];
  v9->_channelID = [v10 intValue];

  objc_storeStrong(&v9->_peer, peer);
  v9->_socketFD = -1;
  v11 = [infoCopy objectForKey:@"kCBMsgArgMTU"];
  v9->_mtu = [v11 intValue];

  v12 = [infoCopy objectForKey:@"kCBMsgArgIsIncoming"];
  v9->_isIncoming = [v12 BOOLValue];

  v13 = [infoCopy objectForKey:@"kCBMsgArgServiceUUID"];
  if (v13)
  {
    v14 = [CBUUID UUIDWithData:v13];
    serviceUUID = v9->_serviceUUID;
    v9->_serviceUUID = v14;
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer handlePeerUpdated:];
  }

  v16 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [(CBRFCOMMChannel *)&v9->_channelID initWithPeer:v9 info:v16];
  }

  v17 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgSocket"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (CBLogInitOnce == -1)
    {
      v22 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
LABEL_13:

        v21 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      [CBClassicPeer handlePeerUpdated:];
      v22 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }
    }

    [CBRFCOMMChannel initWithPeer:v22 info:?];
    goto LABEL_13;
  }

  v18 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgSocket"];
  v9->_socketFD = [v18 intValue];

  v24 = 0;
  readStream = 0;
  CFStreamCreatePairWithSocket(*MEMORY[0x1E695E480], v9->_socketFD, &readStream, &v24);
  inputStream = v9->_inputStream;
  v9->_inputStream = readStream;

  outputStream = v9->_outputStream;
  v9->_outputStream = v24;

LABEL_10:
  v21 = v9;
LABEL_14:

  return v21;
}

- (void)dealloc
{
  socketFD = self->_socketFD;
  if ((socketFD & 0x80000000) == 0)
  {
    close(socketFD);
    self->_socketFD = -1;
  }

  if (self->_channelID)
  {
    [(CBClassicPeer *)self->_peer closeRFCOMMChannel:?];
  }

  v4.receiver = self;
  v4.super_class = CBRFCOMMChannel;
  [(CBRFCOMMChannel *)&v4 dealloc];
}

- (void)configureChannelPortParams:(unsigned int)params dataBits:(unsigned __int8)bits parity:(unsigned __int8)parity stopBits:(unsigned __int8)stopBits
{
  stopBitsCopy = stopBits;
  parityCopy = parity;
  bitsCopy = bits;
  v9 = *&params;
  v22 = *MEMORY[0x1E69E9840];
  if (CBLogInitOnce != -1)
  {
    [CBRFCOMMChannel configureChannelPortParams:dataBits:parity:stopBits:];
  }

  v11 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[CBRFCOMMChannel configureChannelPortParams:dataBits:parity:stopBits:]";
    _os_log_impl(&dword_1C0AC1000, v11, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  self->_baudRate = v9;
  self->_dataBits = bitsCopy;
  self->_parity = parityCopy;
  self->_stopBits = stopBitsCopy;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{v9, @"kCBMsgArgRFCOMMBaudRate"}];
  v19[0] = v12;
  v18[1] = @"kCBMsgArgRFCOMMDataBit";
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:bitsCopy];
  v19[1] = v13;
  v18[2] = @"kCBMsgArgRFCOMMParityBit";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:parityCopy];
  v19[2] = v14;
  v18[3] = @"kCBMsgArgRFCOMMStopBit";
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:stopBitsCopy];
  v19[3] = v15;
  v18[4] = @"kCBMsgArgRFCOMMChannelID";
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_channelID];
  v19[4] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:5];

  [(CBClassicPeer *)self->_peer configureRFCOMMPortParams:v17];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if (self->_isIncoming)
  {
    v5 = @"incoming";
  }

  else
  {
    v5 = @"outgoing";
  }

  return [v3 stringWithFormat:@"<%@: %p %@, CID: %u, MTU: %d, %@>", v4, self, self->_peer, self->_channelID, self->_mtu, v5];
}

- (void)initWithPeer:(os_log_t)log info:.cold.2(unsigned __int8 *a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(a2 + 48);
  v5 = 136315650;
  v6 = "[CBRFCOMMChannel initWithPeer:info:]";
  v7 = 1024;
  v8 = v3;
  v9 = 2112;
  v10 = v4;
  _os_log_debug_impl(&dword_1C0AC1000, log, OS_LOG_TYPE_DEBUG, "%s CID: %u %@", &v5, 0x1Cu);
}

@end