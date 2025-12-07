@interface _EFSQLStringBinding
- (_EFSQLStringBinding)initWithString:(id)string;
- (void)bindTo:(sqlite3_stmt *)to withSQLIndex:(int)index;
@end

@implementation _EFSQLStringBinding

- (_EFSQLStringBinding)initWithString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = _EFSQLStringBinding;
  v5 = [(_EFSQLStringBinding *)&v9 init];
  if (v5)
  {
    v6 = [stringCopy copy];
    stringValue = v5->_stringValue;
    v5->_stringValue = v6;
  }

  return v5;
}

- (void)bindTo:(sqlite3_stmt *)to withSQLIndex:(int)index
{
  v4 = *&index;
  stringValue = [(_EFSQLStringBinding *)self stringValue];
  v8 = stringValue;
  if (stringValue)
  {
    if ([stringValue containsString:&stru_1F459DC88])
    {
      v9 = [v8 dataUsingEncoding:4];
      sqlite3_bind_text(to, v4, [v9 bytes], objc_msgSend(v9, "length"), 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      uTF8String = [v8 UTF8String];
      if (uTF8String)
      {
        v11 = uTF8String;
      }

      else
      {
        v11 = "";
      }

      sqlite3_bind_text(to, v4, v11, -1, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = _EFSQLStringBinding;
    [(EFSQLBinding *)&v12 bindTo:to withSQLIndex:v4];
  }
}

@end