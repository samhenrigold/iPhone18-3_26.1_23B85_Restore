@interface PINOperationDataView
- (PINOperationDataView)initWithData:(id)data;
- (PINOperationDataView)initWithLength:(unint64_t)length;
- (unsigned)lengthByte;
- (unsigned)nodeAddressByte;
- (unsigned)protocolControlByte;
- (void)setLengthByte:(unsigned __int8)byte;
- (void)setNodeAddressByte:(unsigned __int8)byte;
- (void)setProtocolControlByte:(unsigned __int8)byte;
@end

@implementation PINOperationDataView

- (PINOperationDataView)initWithLength:(unint64_t)length
{
  v4.receiver = self;
  v4.super_class = PINOperationDataView;
  return [(TKDataView *)&v4 initWithLength:length];
}

- (PINOperationDataView)initWithData:(id)data
{
  v4.receiver = self;
  v4.super_class = PINOperationDataView;
  return [(TKDataView *)&v4 initWithData:data];
}

- (unsigned)nodeAddressByte
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CCIDDefinitions.m" lineNumber:957 description:@"Have to be implement in derived class"];

  return 0;
}

- (void)setNodeAddressByte:(unsigned __int8)byte
{
  v5 = +[NSAssertionHandler currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"CCIDDefinitions.m" lineNumber:962 description:@"Have to be implement in derived class"];
}

- (unsigned)protocolControlByte
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CCIDDefinitions.m" lineNumber:966 description:@"Have to be implement in derived class"];

  return 0;
}

- (void)setProtocolControlByte:(unsigned __int8)byte
{
  v5 = +[NSAssertionHandler currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"CCIDDefinitions.m" lineNumber:971 description:@"Have to be implement in derived class"];
}

- (unsigned)lengthByte
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CCIDDefinitions.m" lineNumber:975 description:@"Have to be implement in derived class"];

  return 0;
}

- (void)setLengthByte:(unsigned __int8)byte
{
  v5 = +[NSAssertionHandler currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"CCIDDefinitions.m" lineNumber:980 description:@"Have to be implement in derived class"];
}

@end