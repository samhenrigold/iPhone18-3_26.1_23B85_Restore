@interface _LSLinkedChildApplicationRecordEnumerator
- (BOOL)_getObject:(id *)object atIndex:(unint64_t)index context:(LSContext *)context;
- (BOOL)_prepareWithContext:(LSContext *)context error:(id *)error;
- (_LSLinkedChildApplicationRecordEnumerator)initWithContext:(LSContext *)context parentBundleID:(id)d options:(unint64_t)options;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _LSLinkedChildApplicationRecordEnumerator

- (_LSLinkedChildApplicationRecordEnumerator)initWithContext:(LSContext *)context parentBundleID:(id)d options:(unint64_t)options
{
  v11.receiver = self;
  v11.super_class = _LSLinkedChildApplicationRecordEnumerator;
  v7 = [(_LSDBEnumerator *)&v11 _initWithContext:context];
  if (v7)
  {
    v8 = [d copy];
    parentBundleID = v7->_parentBundleID;
    v7->_parentBundleID = v8;

    v7->_options = options;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = _LSLinkedChildApplicationRecordEnumerator;
  v5 = [(_LSDBEnumerator *)&v10 copyWithZone:?];
  v6 = v5;
  if (v5 != self)
  {
    std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(&v5->_units.__begin_, self->_units.__begin_, self->_units.__end_, self->_units.__end_ - self->_units.__begin_);
  }

  v7 = [(NSString *)self->_parentBundleID copyWithZone:zone];
  parentBundleID = v6->_parentBundleID;
  v6->_parentBundleID = v7;

  v6->_options = self->_options;
  return v6;
}

- (BOOL)_prepareWithContext:(LSContext *)context error:(id *)error
{
  self->_units.__end_ = self->_units.__begin_;
  StringForCFString = _LSDatabaseGetStringForCFString(context->db, self->_parentBundleID, 0);
  if (StringForCFString)
  {
    v7 = StringForCFString;
    db = context->db;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __71___LSLinkedChildApplicationRecordEnumerator__prepareWithContext_error___block_invoke;
    v10[3] = &unk_1E6A18FC8;
    v10[4] = self;
    _LSDatabaseEnumeratingBindingMap(db, 13, v7, v10);
  }

  return 1;
}

- (BOOL)_getObject:(id *)object atIndex:(unint64_t)index context:(LSContext *)context
{
  begin = self->_units.__begin_;
  v7 = self->_units.__end_ - begin;
  if (v7 > index)
  {
    v11 = begin[index];
    v12 = _LSBundleGet(context->db, v11);
    if (v12 && (v14 = v12, LaunchServices::AppRecordEnumeration::evaluateBundleNoIOCommon(v11, v12, self->_options, v13)))
    {
      v22 = 0;
      v15 = [[LSApplicationRecord alloc] _initWithContext:context bundleID:v11 bundleData:v14 error:&v22];
      v16 = v22;
      v17 = v16;
      if (!v15)
      {
        v18 = _LSDefaultLog(v16);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [_LSLinkedChildApplicationRecordEnumerator _getObject:atIndex:context:];
        }

        _LSEnumeratorFireErrorHandler(self, v17);
      }

      v19 = *object;
      *object = v15;
    }

    else
    {
      v20 = *object;
      *object = 0;
    }
  }

  return v7 > index;
}

- (id).cxx_construct
{
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 11) = 0;
  return self;
}

@end