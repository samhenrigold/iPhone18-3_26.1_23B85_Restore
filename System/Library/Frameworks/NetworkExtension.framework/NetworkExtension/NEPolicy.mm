@interface NEPolicy
- (NEPolicy)init;
- (NEPolicy)initWithOrder:(unsigned int)order result:(id)result conditions:(id)conditions;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
@end

@implementation NEPolicy

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v5 = *&indent;
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  [v7 appendPrettyInt:self->_order withName:@"order" andIndent:v5 options:options];
  [v7 appendPrettyObject:self->_result withName:@"result" andIndent:v5 options:options];
  [v7 appendPrettyObject:self->_conditions withName:@"conditions" andIndent:v5 options:options];

  return v7;
}

- (NEPolicy)initWithOrder:(unsigned int)order result:(id)result conditions:(id)conditions
{
  resultCopy = result;
  conditionsCopy = conditions;
  v17.receiver = self;
  v17.super_class = NEPolicy;
  v11 = [(NEPolicy *)&v17 init];
  v12 = v11;
  if (v11)
  {
    v11->_order = order;
    objc_storeStrong(&v11->_result, result);
    objc_storeStrong(&v12->_conditions, conditions);
    v13 = v12;
  }

  else
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_error_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_ERROR, "Failed to init NEPolicy", v16, 2u);
    }
  }

  return v12;
}

- (NEPolicy)init
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, "Calling init on NEPolicy is not valid", v5, 2u);
  }

  return 0;
}

@end