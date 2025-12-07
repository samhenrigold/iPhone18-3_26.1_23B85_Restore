@interface FSEventStreamMultiplexerClient
- (FSEventStreamMultiplexerClient)initWithID:(int)d name:(id)name callback:(id)callback;
- (unint64_t)hash;
@end

@implementation FSEventStreamMultiplexerClient

- (unint64_t)hash
{
  clientID = [(FSEventStreamMultiplexerClient *)self clientID];
  unsignedIntValue = [clientID unsignedIntValue];

  return unsignedIntValue;
}

- (FSEventStreamMultiplexerClient)initWithID:(int)d name:(id)name callback:(id)callback
{
  v6 = *&d;
  nameCopy = name;
  callbackCopy = callback;
  v17.receiver = self;
  v17.super_class = FSEventStreamMultiplexerClient;
  v10 = [(FSEventStreamMultiplexerClient *)&v17 init];
  if (v10)
  {
    v11 = [[NSNumber alloc] initWithInt:v6];
    clientID = v10->_clientID;
    v10->_clientID = v11;

    if (nameCopy)
    {
      v13 = nameCopy;
    }

    else
    {
      v13 = @"unknown";
    }

    objc_storeStrong(&v10->_name, v13);
    v14 = objc_retainBlock(callbackCopy);
    callback = v10->_callback;
    v10->_callback = v14;
  }

  return v10;
}

@end