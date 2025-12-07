@interface BlastDoorIDSCommandResponse
- (BlastDoorIDSCommandResponse)init;
- (NSData)token;
- (NSString)description;
- (int64_t)failReason;
- (int64_t)messageId;
- (int64_t)protocolVersion;
- (int64_t)requestType;
- (int64_t)responseStatus;
@end

@implementation BlastDoorIDSCommandResponse

- (NSString)description
{
  v2 = *&self->iDSCommandResponse[OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 104];
  v3 = *&self->iDSCommandResponse[OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 136];
  v25 = *&self->iDSCommandResponse[OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 120];
  v26 = v3;
  v4 = *&self->iDSCommandResponse[OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 40];
  v5 = *&self->iDSCommandResponse[OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 72];
  v21 = *&self->iDSCommandResponse[OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 56];
  v22 = v5;
  v6 = *&self->iDSCommandResponse[OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 72];
  v7 = *&self->iDSCommandResponse[OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 104];
  v23 = *&self->iDSCommandResponse[OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 88];
  v24 = v7;
  v8 = *&self->iDSCommandResponse[OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 8];
  v18[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse);
  v18[1] = v8;
  v9 = *&self->iDSCommandResponse[OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 40];
  v11 = *(&self->super.isa + OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse);
  v10 = *&self->iDSCommandResponse[OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 8];
  v19 = *&self->iDSCommandResponse[OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 24];
  v20 = v9;
  v12 = *&self->iDSCommandResponse[OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 136];
  v16[8] = v25;
  v16[9] = v12;
  v16[4] = v21;
  v16[5] = v6;
  v16[6] = v23;
  v16[7] = v2;
  v16[0] = v11;
  v16[1] = v10;
  v27 = self->iDSCommandResponse[OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 152];
  v17 = self->iDSCommandResponse[OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 152];
  v16[2] = v19;
  v16[3] = v4;
  sub_21459232C(v18, v15);
  sub_2146D9608();
  v13 = sub_2146D9588();

  return v13;
}

- (int64_t)messageId
{
  if (self->iDSCommandResponse[OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 8])
  {
    return 0;
  }

  else
  {
    return *&self->iDSCommandResponse[OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse];
  }
}

- (int64_t)responseStatus
{
  if (self->iDSCommandResponse[OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 40])
  {
    return 0;
  }

  else
  {
    return *&self->iDSCommandResponse[OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 32];
  }
}

- (int64_t)failReason
{
  if (self->iDSCommandResponse[OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 56])
  {
    return 0;
  }

  else
  {
    return *&self->iDSCommandResponse[OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 48];
  }
}

- (NSData)token
{
  v2 = *&self->iDSCommandResponse[OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 72];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&self->iDSCommandResponse[OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 64];
    sub_21402D9F8(v4, v2);
    v5 = sub_2146D8A38();
    sub_213FDC6BC(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (int64_t)requestType
{
  if (self->iDSCommandResponse[OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 112])
  {
    return 0;
  }

  else
  {
    return *&self->iDSCommandResponse[OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 104];
  }
}

- (int64_t)protocolVersion
{
  if (self->iDSCommandResponse[OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 152])
  {
    return 0;
  }

  else
  {
    return *&self->iDSCommandResponse[OBJC_IVAR___BlastDoorIDSCommandResponse_iDSCommandResponse + 144];
  }
}

- (BlastDoorIDSCommandResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end