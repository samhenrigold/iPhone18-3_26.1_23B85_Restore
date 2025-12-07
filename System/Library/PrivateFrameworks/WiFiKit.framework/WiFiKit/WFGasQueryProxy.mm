@interface WFGasQueryProxy
- (void)_processGasResults:(id)results error:(int)error;
- (void)gasQueryForRecords:(id)records request:(id)request handler:(id)handler;
@end

@implementation WFGasQueryProxy

- (void)gasQueryForRecords:(id)records request:(id)request handler:(id)handler
{
  recordsCopy = records;
  requestCopy = request;
  handlerCopy = handler;
  v10 = [recordsCopy count];
  if (requestCopy && v10)
  {
    [(WFGasQueryProxy *)self setHandler:handlerCopy];

    WiFiDeviceClientGasStartAsync();
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (void)_processGasResults:(id)results error:(int)error
{
  v4 = *&error;
  resultsCopy = results;
  handler = [(WFGasQueryProxy *)self handler];
  handler[2](handler, resultsCopy, v4);
}

@end