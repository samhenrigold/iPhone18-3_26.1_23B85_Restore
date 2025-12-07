@interface DAMoveResponse
- (DAMoveResponse)initWithStatus:(int)status sourceID:(id)d destID:(id)iD;
- (id)description;
@end

@implementation DAMoveResponse

- (DAMoveResponse)initWithStatus:(int)status sourceID:(id)d destID:(id)iD
{
  v6 = *&status;
  dCopy = d;
  iDCopy = iD;
  v15.receiver = self;
  v15.super_class = DAMoveResponse;
  v10 = [(DAMoveResponse *)&v15 init];
  v11 = v10;
  if (v10)
  {
    [(DAMoveResponse *)v10 setStatus:v6];
    v12 = [dCopy copy];
    [(DAMoveResponse *)v11 setSourceID:v12];

    v13 = [iDCopy copy];
    [(DAMoveResponse *)v11 setDestID:v13];
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = DAMoveResponse;
  v4 = [(DAMoveResponse *)&v11 description];
  status = [(DAMoveResponse *)self status];
  sourceID = [(DAMoveResponse *)self sourceID];
  destID = [(DAMoveResponse *)self destID];
  origRequest = [(DAMoveResponse *)self origRequest];
  v9 = [v3 stringWithFormat:@"%@ status %d, sourceID %@, destID %@, origRequest (%@)", v4, status, sourceID, destID, origRequest];

  return v9;
}

@end