@interface OOSRecoveryMetricState
- (OOSRecoveryMetricState)initWithIsDataContext:(BOOL)context registrationState:(id)state cellInfo:(id)info;
- (id)description;
@end

@implementation OOSRecoveryMetricState

- (OOSRecoveryMetricState)initWithIsDataContext:(BOOL)context registrationState:(id)state cellInfo:(id)info
{
  contextCopy = context;
  stateCopy = state;
  infoCopy = info;
  v16.receiver = self;
  v16.super_class = OOSRecoveryMetricState;
  v10 = [(OOSRecoveryMetricState *)&v16 init];
  v11 = v10;
  if (v10)
  {
    [(OOSRecoveryMetricState *)v10 setOosStart:0];
    [(OOSRecoveryMetricState *)v11 setIsDataContext:contextCopy];
    [(OOSRecoveryMetricState *)v11 setRegistrationState:stateCopy];
    [(OOSRecoveryMetricState *)v11 setCellInfo:infoCopy];
    v12 = objc_alloc_init(NSMutableOrderedSet);
    [(OOSRecoveryMetricState *)v11 setKnownOosTacs:v12];

    [(OOSRecoveryMetricState *)v11 setKnownOosTacsSizeLimited:0];
    v13 = objc_alloc_init(NSMutableOrderedSet);
    [(OOSRecoveryMetricState *)v11 setKnownOosGcis:v13];

    [(OOSRecoveryMetricState *)v11 setKnownOosGcisSizeLimited:0];
    v14 = v11;
  }

  return v11;
}

- (id)description
{
  if ([(OOSRecoveryMetricState *)self isDataContext])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  registrationState = [(OOSRecoveryMetricState *)self registrationState];
  cellInfo = [(OOSRecoveryMetricState *)self cellInfo];
  oosStart = [(OOSRecoveryMetricState *)self oosStart];
  if ([(OOSRecoveryMetricState *)self knownOosTacsSizeLimited])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(OOSRecoveryMetricState *)self knownOosGcisSizeLimited])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  knownOosTacs = [(OOSRecoveryMetricState *)self knownOosTacs];
  v10 = [knownOosTacs count];
  knownOosGcis = [(OOSRecoveryMetricState *)self knownOosGcis];
  v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"isDataContext %@, registrationState %@, cellInfo %@, oosStart %@, knownOosTacsSizeLimited %@, knownGcisSizeLimited %@, knownOosTacs %lu, knownOosGcis %lu", v3, registrationState, cellInfo, oosStart, v7, v8, v10, [knownOosGcis count]);

  return v12;
}

@end