@interface GEOResourceLoadOperation
- (void)dealloc;
@end

@implementation GEOResourceLoadOperation

- (void)dealloc
{
  [(NSURLSession *)self->_session invalidateAndCancel];
  v3.receiver = self;
  v3.super_class = GEOResourceLoadOperation;
  [(GEOResourceLoadOperation *)&v3 dealloc];
}

@end