@interface HMMRTCSessionFactory
- (id)sessionWithUUID:(id)d serviceName:(id)name uploadImmediately:(BOOL)immediately commonFields:(id)fields;
@end

@implementation HMMRTCSessionFactory

- (id)sessionWithUUID:(id)d serviceName:(id)name uploadImmediately:(BOOL)immediately commonFields:(id)fields
{
  immediatelyCopy = immediately;
  dCopy = d;
  nameCopy = name;
  fieldsCopy = fields;
  v12 = +[HMMQueuingRTCBackendSessionManager sharedSessionManager];
  v13 = [v12 logBackendSessionWithServiceName:nameCopy sessionUUID:dCopy isRealtime:immediatelyCopy];

  if (v13)
  {
    v14 = [[HMMRTCSession alloc] initWithUUID:dCopy serviceName:nameCopy commonFields:fieldsCopy backend:v13];
  }

  else
  {
    v14 = [[HMMNullRTCSession alloc] initWithUUID:dCopy serviceName:nameCopy];
  }

  v15 = v14;

  return v15;
}

@end