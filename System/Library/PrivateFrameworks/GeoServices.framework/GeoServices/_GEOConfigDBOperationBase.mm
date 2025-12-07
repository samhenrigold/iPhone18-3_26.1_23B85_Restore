@interface _GEOConfigDBOperationBase
- (_GEOConfigDBOperationBase)init;
@end

@implementation _GEOConfigDBOperationBase

- (_GEOConfigDBOperationBase)init
{
  v8.receiver = self;
  v8.super_class = _GEOConfigDBOperationBase;
  v2 = [(_GEOConfigDBOperationBase *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = _GEOCreateTransaction("com.apple.geo.%s<%p>", [v4 UTF8String], v2);
    transaction = v2->_transaction;
    v2->_transaction = v5;
  }

  return v2;
}

@end