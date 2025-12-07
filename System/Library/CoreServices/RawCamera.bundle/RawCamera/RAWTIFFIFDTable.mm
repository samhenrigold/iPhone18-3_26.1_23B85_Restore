@interface RAWTIFFIFDTable
- (RAWTIFFIFDTable)initWithValueBlock:(id)block forwardNamespace:(id)namespace reverseNamespace:(id)reverseNamespace;
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
- (id)objectForKeyedSubscript:(id)subscript;
@end

@implementation RAWTIFFIFDTable

- (RAWTIFFIFDTable)initWithValueBlock:(id)block forwardNamespace:(id)namespace reverseNamespace:(id)reverseNamespace
{
  blockCopy = block;
  namespaceCopy = namespace;
  reverseNamespaceCopy = reverseNamespace;
  v14.receiver = self;
  v14.super_class = RAWTIFFIFDTable;
  v11 = [(RAWTIFFIFDTable *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(RAWTIFFIFDTable *)v11 setMValueBlock:blockCopy];
    [(RAWTIFFIFDTable *)v12 setMNamespace:namespaceCopy];
    [(RAWTIFFIFDTable *)v12 setMNamespaceReverse:reverseNamespaceCopy];
  }

  return v12;
}

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  v4 = (*(self->mValueBlock + 2))();
  objc_opt_class();
  v5 = v4;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v6 objectAtIndexedSubscript:subscript];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  mNamespaceReverse = [(RAWTIFFIFDTable *)self mNamespaceReverse];
  v6 = [mNamespaceReverse objectForKeyedSubscript:subscriptCopy];

  v7 = [v6 objectForKeyedSubscript:@"TagID"];
  v8 = (*(self->mValueBlock + 2))();
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v7, "unsignedIntValue")}];

  return v9;
}

@end