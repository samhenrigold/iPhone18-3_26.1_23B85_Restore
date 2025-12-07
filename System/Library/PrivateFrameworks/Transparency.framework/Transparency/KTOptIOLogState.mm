@interface KTOptIOLogState
- (KTOptIOLogState)initWithURI:(id)i smtTimestamp:(id)timestamp optIn:(BOOL)in;
- (id)description;
@end

@implementation KTOptIOLogState

- (KTOptIOLogState)initWithURI:(id)i smtTimestamp:(id)timestamp optIn:(BOOL)in
{
  inCopy = in;
  iCopy = i;
  timestampCopy = timestamp;
  v14.receiver = self;
  v14.super_class = KTOptIOLogState;
  v10 = [(KTOptIOLogState *)&v14 init];
  v11 = v10;
  if (v10)
  {
    [(KTOptIOLogState *)v10 setUri:iCopy];
    [(KTOptIOLogState *)v11 setSmtTimestamp:timestampCopy];
    [(KTOptIOLogState *)v11 setOptIn:inCopy];
    v12 = v11;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(KTOptIOLogState *)self uri];
  smtTimestamp = [(KTOptIOLogState *)self smtTimestamp];
  v6 = [v3 stringWithFormat:@"<KTOptIOLogState: %@ smtTimestamp: %@ state: %d>", v4, smtTimestamp, -[KTOptIOLogState optIn](self, "optIn")];

  return v6;
}

@end