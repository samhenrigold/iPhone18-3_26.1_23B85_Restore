@interface SRSensorWriterClient
+ (id)sensorWriterClientWithWriter:(id)writer;
- (SRSensorWriterClient)initWithWriter:(id)writer;
- (void)resetDatastoreFiles:(id)files;
- (void)setMonitoring:(BOOL)monitoring withRequestedConfigurations:(id)configurations;
@end

@implementation SRSensorWriterClient

+ (id)sensorWriterClientWithWriter:(id)writer
{
  v3 = [[self alloc] initWithWriter:writer];

  return v3;
}

- (SRSensorWriterClient)initWithWriter:(id)writer
{
  v7.receiver = self;
  v7.super_class = SRSensorWriterClient;
  v4 = [(SRSensorWriterClient *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(SRSensorWriterClient *)v4 setWriter:writer];
  }

  return v5;
}

- (void)resetDatastoreFiles:(id)files
{
  writer = [(SRSensorWriterClient *)self writer];

  [(SRSensorWriter *)writer daemonForcedResetDatastoreFiles:files];
}

- (void)setMonitoring:(BOOL)monitoring withRequestedConfigurations:(id)configurations
{
  monitoringCopy = monitoring;
  writer = [(SRSensorWriterClient *)self writer];
  [(SRSensorWriter *)writer set_requestedConfigurations:configurations];

  [(SRSensorWriter *)writer setMonitoring:monitoringCopy];
}

@end