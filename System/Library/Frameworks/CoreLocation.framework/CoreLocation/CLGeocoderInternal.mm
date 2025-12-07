@interface CLGeocoderInternal
- (CLGeocoderInternal)init;
- (void)dealloc;
@end

@implementation CLGeocoderInternal

- (CLGeocoderInternal)init
{
  v7.receiver = self;
  v7.super_class = CLGeocoderInternal;
  v5 = [(CLGeocoderInternal *)&v7 init];
  if (v5)
  {
    v5->_responseSilo = objc_msgSend_main(MEMORY[0x1E69AD380], v2, v3, v4);
    v5->_queue = dispatch_queue_create("CLGeocoder", 0);
  }

  return v5;
}

- (void)dealloc
{
  dispatch_release(self->_queue);

  self->_responseSilo = 0;
  v3.receiver = self;
  v3.super_class = CLGeocoderInternal;
  [(CLGeocoderInternal *)&v3 dealloc];
}

@end