@interface IMDaemonQuery
- (IMDaemonQuery)initWithID:(id)d key:(id)key completionHandler:(id)handler;
- (id)description;
@end

@implementation IMDaemonQuery

- (IMDaemonQuery)initWithID:(id)d key:(id)key completionHandler:(id)handler
{
  dCopy = d;
  keyCopy = key;
  handlerCopy = handler;
  v21.receiver = self;
  v21.super_class = IMDaemonQuery;
  v11 = [(IMDaemonQuery *)&v21 init];
  if (v11)
  {
    v12 = [dCopy copy];
    ID = v11->_ID;
    v11->_ID = v12;

    v14 = [keyCopy copy];
    key = v11->_key;
    v11->_key = v14;

    v16 = [handlerCopy copy];
    completionHandler = v11->_completionHandler;
    v11->_completionHandler = v16;

    date = [MEMORY[0x1E695DF00] date];
    startDate = v11->_startDate;
    v11->_startDate = date;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(IMDaemonQuery *)self ID];
  v5 = [(IMDaemonQuery *)self key];
  startDate = [(IMDaemonQuery *)self startDate];
  completionHandler = [(IMDaemonQuery *)self completionHandler];
  v8 = @"YES";
  if (!completionHandler)
  {
    v8 = @"NO";
  }

  v9 = [v3 stringWithFormat:@"ID: %@ key: %@ startDate: %@ completionHandler: %@", v4, v5, startDate, v8];

  return v9;
}

@end