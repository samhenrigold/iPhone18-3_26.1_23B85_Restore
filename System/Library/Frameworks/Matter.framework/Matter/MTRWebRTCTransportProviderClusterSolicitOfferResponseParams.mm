@interface MTRWebRTCTransportProviderClusterSolicitOfferResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRWebRTCTransportProviderClusterSolicitOfferResponseParams)init;
- (MTRWebRTCTransportProviderClusterSolicitOfferResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRWebRTCTransportProviderClusterSolicitOfferResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRWebRTCTransportProviderClusterSolicitOfferResponseParams

- (MTRWebRTCTransportProviderClusterSolicitOfferResponseParams)init
{
  v9.receiver = self;
  v9.super_class = MTRWebRTCTransportProviderClusterSolicitOfferResponseParams;
  v2 = [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)&v9 init];
  v3 = v2;
  if (v2)
  {
    webRTCSessionID = v2->_webRTCSessionID;
    v2->_webRTCSessionID = &unk_284C3E4C8;

    deferredOffer = v3->_deferredOffer;
    v3->_deferredOffer = &unk_284C3E4C8;

    videoStreamID = v3->_videoStreamID;
    v3->_videoStreamID = 0;

    audioStreamID = v3->_audioStreamID;
    v3->_audioStreamID = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams);
  webRTCSessionID = [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)self webRTCSessionID];
  [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)v4 setWebRTCSessionID:webRTCSessionID];

  deferredOffer = [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)self deferredOffer];
  [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)v4 setDeferredOffer:deferredOffer];

  videoStreamID = [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)self videoStreamID];
  [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)v4 setVideoStreamID:videoStreamID];

  audioStreamID = [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)self audioStreamID];
  [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)v4 setAudioStreamID:audioStreamID];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: webRTCSessionID:%@ deferredOffer:%@; videoStreamID:%@; audioStreamID:%@; >", v5, self->_webRTCSessionID, self->_deferredOffer, self->_videoStreamID, self->_audioStreamID];;

  return v6;
}

- (MTRWebRTCTransportProviderClusterSolicitOfferResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v18.receiver = self;
  v18.super_class = MTRWebRTCTransportProviderClusterSolicitOfferResponseParams;
  v7 = [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)&v18 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  objc_msgSend__responseDataForCommand_clusterID_commandID_error_(MTRBaseDevice);
  if (v17)
  {
    sub_2393C5AAC(v16);
    sub_2393C5ADC(v16, *(v17 + 8), *(v17 + 24));
    v8 = sub_2393C6FD0(v16, 256);
    if (!v8)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v8 = sub_238F3343C(&v12, v16);
      if (!v8)
      {
        v8 = [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)v7 _setFieldsFromDecodableStruct:&v12];
        if (!v8)
        {
          v10 = v7;
          goto LABEL_8;
        }
      }
    }

    sub_238DD3F98(v8, v9, error);
  }

  v10 = 0;
LABEL_8:
  sub_238EA1758(&v17);
LABEL_10:

  return v10;
}

- (MTRWebRTCTransportProviderClusterSolicitOfferResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRWebRTCTransportProviderClusterSolicitOfferResponseParams;
  v4 = [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
    if (!v6)
    {
      v8 = v5;
      goto LABEL_6;
    }

    sub_238DD3F98(v6, v7, 0);
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*struct];
  [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)self setWebRTCSessionID:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:*(struct + 2)];
  [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)self setDeferredOffer:v6];

  if (*(struct + 4) == 1 && (BYTE2(sub_238E0A934(struct + 4, v7)->super.isa) & 1) != 0)
  {
    v9 = MEMORY[0x277CCABB0];
    v10 = sub_238E0A934(struct + 4, v8);
    if ((BYTE2(v10->super.isa) & 1) == 0)
    {
      goto LABEL_12;
    }

    v11 = [v9 numberWithUnsignedShort:LOWORD(v10->super.isa)];
    [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)self setVideoStreamID:v11];
  }

  else
  {
    [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)self setVideoStreamID:0];
  }

  v14 = *(struct + 10);
  v13 = struct + 10;
  if (v14 != 1 || (BYTE2(sub_238E0A934(v13, v12)->super.isa) & 1) == 0)
  {
    [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)self setAudioStreamID:0];
    goto LABEL_11;
  }

  v16 = MEMORY[0x277CCABB0];
  v17 = sub_238E0A934(v13, v15);
  if ((BYTE2(v17->super.isa) & 1) == 0)
  {
LABEL_12:
    sub_238EA195C();
  }

  v18 = [v16 numberWithUnsignedShort:LOWORD(v17->super.isa)];
  [(MTRWebRTCTransportProviderClusterSolicitOfferResponseParams *)self setAudioStreamID:v18];

LABEL_11:
  v19 = 0;
  v20 = 0;
  result.mFile = v20;
  result.mError = v19;
  result.mLine = HIDWORD(v19);
  return result;
}

@end