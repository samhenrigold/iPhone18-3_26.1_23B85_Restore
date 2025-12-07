@interface TSUStreamDataCompression
- (BOOL)handleData:(id)data isDone:(BOOL)done;
- (TSUStreamDataCompression)initWithAlgorithm:(int)algorithm operation:(int)operation;
- (void)setHandler:(id)handler;
@end

@implementation TSUStreamDataCompression

- (TSUStreamDataCompression)initWithAlgorithm:(int)algorithm operation:(int)operation
{
  v8.receiver = self;
  v8.super_class = TSUStreamDataCompression;
  v4 = [(TSUStreamCompression *)&v8 initWithAlgorithm:*&algorithm operation:*&operation];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_outputData, &_dispatch_data_empty);
    v7.receiver = v5;
    v7.super_class = TSUStreamDataCompression;
    [(TSUStreamCompression *)&v7 setHandler:&stru_1001CEDB0];
  }

  return v5;
}

- (BOOL)handleData:(id)data isDone:(BOOL)done
{
  concat = dispatch_data_create_concat(self->_outputData, data);
  outputData = self->_outputData;
  self->_outputData = concat;

  return 1;
}

- (void)setHandler:(id)handler
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AF0FC;
  v6[3] = &unk_1001CEDD8;
  handlerCopy = handler;
  v5.receiver = self;
  v5.super_class = TSUStreamDataCompression;
  v4 = handlerCopy;
  [(TSUStreamCompression *)&v5 setHandler:v6];
}

@end