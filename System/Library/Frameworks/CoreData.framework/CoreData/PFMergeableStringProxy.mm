@interface PFMergeableStringProxy
- (PFMergeableStringProxy)init;
- (PFMergeableStringProxy)initWithContainer:(id)container key:(id)key mergeableString:(id)string;
- (id)performOperation:(id *)result;
- (void)appendString:(id)string;
- (void)dealloc;
- (void)insertString:(id)string atIndex:(unint64_t)index;
- (void)removeSubrange:(_NSRange)subrange;
- (void)replaceSubrange:(_NSRange)subrange withString:(id)string;
- (void)setString:(id)string;
@end

@implementation PFMergeableStringProxy

- (PFMergeableStringProxy)init
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(sel_initWithContainer_key_mergeableString_);
  v6 = [v2 exceptionWithName:v3 reason:objc_msgSend_stringWithFormat_(v4 userInfo:{v5), 0}];
  objc_exception_throw(v6);
}

- (PFMergeableStringProxy)initWithContainer:(id)container key:(id)key mergeableString:(id)string
{
  v10.receiver = self;
  v10.super_class = PFMergeableStringProxy;
  v8 = [(PFMergeableStringProxy *)&v10 init];
  if (v8)
  {
    v8->_container = container;
    v8->_key = [key copy];
    v8->_mergeableString = string;
  }

  return v8;
}

- (void)dealloc
{
  self->_container = 0;

  self->_key = 0;
  self->_mergeableString = 0;
  v3.receiver = self;
  v3.super_class = PFMergeableStringProxy;
  [(PFMergeableStringProxy *)&v3 dealloc];
}

- (id)performOperation:(id *)result
{
  if (result)
  {
    v3 = result;
    [result[1] willChangeValueForKey:result[2]];
    v4 = [v3[3] copy];

    v3[3] = 0;
    v3[3] = v4;

    if (a2)
    {
      (*(a2 + 16))(a2);
    }

    [v3[1] setPrimitiveValue:v3[3] forKey:v3[2]];
    v5 = v3[1];
    v6 = v3[2];

    return [v5 didChangeValueForKey:v6];
  }

  return result;
}

- (void)appendString:(id)string
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__PFMergeableStringProxy_appendString___block_invoke;
  v3[3] = &unk_1E6EC1600;
  v3[4] = self;
  v3[5] = string;
  [(PFMergeableStringProxy *)&self->super.isa performOperation:v3];
}

- (void)insertString:(id)string atIndex:(unint64_t)index
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__PFMergeableStringProxy_insertString_atIndex___block_invoke;
  v4[3] = &unk_1E6EC1C40;
  v4[4] = self;
  v4[5] = string;
  v4[6] = index;
  [(PFMergeableStringProxy *)&self->super.isa performOperation:v4];
}

- (void)removeSubrange:(_NSRange)subrange
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__PFMergeableStringProxy_removeSubrange___block_invoke;
  v3[3] = &unk_1E6EC1C68;
  v3[4] = self;
  subrangeCopy = subrange;
  [(PFMergeableStringProxy *)&self->super.isa performOperation:v3];
}

- (void)replaceSubrange:(_NSRange)subrange withString:(id)string
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__PFMergeableStringProxy_replaceSubrange_withString___block_invoke;
  v4[3] = &unk_1E6EC1C90;
  subrangeCopy = subrange;
  v4[4] = self;
  v4[5] = string;
  [(PFMergeableStringProxy *)&self->super.isa performOperation:v4];
}

- (void)setString:(id)string
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__PFMergeableStringProxy_setString___block_invoke;
  v3[3] = &unk_1E6EC1600;
  v3[4] = self;
  v3[5] = string;
  [(PFMergeableStringProxy *)&self->super.isa performOperation:v3];
}

@end