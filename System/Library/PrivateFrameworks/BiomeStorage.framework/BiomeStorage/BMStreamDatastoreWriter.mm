@interface BMStreamDatastoreWriter
+ (id)outOfProcessWriterForStream:(id)stream user:(unsigned int)user eventDataClass:(Class)class;
- (BMStreamDatastoreWriter)initWithStream:(id)stream config:(id)config eventDataClass:(Class)class;
@end

@implementation BMStreamDatastoreWriter

- (BMStreamDatastoreWriter)initWithStream:(id)stream config:(id)config eventDataClass:(Class)class
{
  streamCopy = stream;
  configCopy = config;
  v15.receiver = self;
  v15.super_class = BMStreamDatastoreWriter;
  v10 = [(BMStreamDatastoreWriter *)&v15 init];
  if (v10)
  {
    v11 = [BMStreamDatastore alloc];
    v12 = [(BMStreamDatastore *)v11 initWithStream:streamCopy permission:1 config:configCopy includeTombstones:0 eventDataClass:class useCase:*MEMORY[0x1E698E960]];
    inner = v10->_inner;
    v10->_inner = v12;
  }

  return v10;
}

+ (id)outOfProcessWriterForStream:(id)stream user:(unsigned int)user eventDataClass:(Class)class
{
  v6 = *&user;
  streamCopy = stream;
  v8 = [[BMStreamDatastoreOutOfProcessWriter alloc] initWithStream:streamCopy user:v6 eventDataClass:class];

  return v8;
}

@end