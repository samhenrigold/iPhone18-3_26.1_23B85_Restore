@interface _MFDAMessageStoreGetUpdatesRequest
- (id)initRequestForBodyFormat:(int)format withBodySizeLimit:(int)limit isUserRequested:(BOOL)requested;
@end

@implementation _MFDAMessageStoreGetUpdatesRequest

- (id)initRequestForBodyFormat:(int)format withBodySizeLimit:(int)limit isUserRequested:(BOOL)requested
{
  v7.receiver = self;
  v7.super_class = _MFDAMessageStoreGetUpdatesRequest;
  result = [(DAMailboxGetUpdatesRequest *)&v7 initRequestForBodyFormat:*&format withBodySizeLimit:*&limit];
  if (result)
  {
    *(result + 28) = requested;
  }

  return result;
}

@end