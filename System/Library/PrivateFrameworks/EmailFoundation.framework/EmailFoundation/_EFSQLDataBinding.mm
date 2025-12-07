@interface _EFSQLDataBinding
- (_EFSQLDataBinding)initWithData:(id)data;
- (void)bindTo:(sqlite3_stmt *)to withSQLIndex:(int)index;
@end

@implementation _EFSQLDataBinding

- (_EFSQLDataBinding)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = _EFSQLDataBinding;
  v5 = [(_EFSQLDataBinding *)&v9 init];
  if (v5)
  {
    v6 = [dataCopy copy];
    dataValue = v5->_dataValue;
    v5->_dataValue = v6;
  }

  return v5;
}

- (void)bindTo:(sqlite3_stmt *)to withSQLIndex:(int)index
{
  v4 = *&index;
  dataValue = [(_EFSQLDataBinding *)self dataValue];
  v8 = dataValue;
  if (dataValue)
  {
    sqlite3_bind_blob64(to, v4, [dataValue bytes], objc_msgSend(dataValue, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _EFSQLDataBinding;
    [(EFSQLBinding *)&v9 bindTo:to withSQLIndex:v4];
  }
}

@end