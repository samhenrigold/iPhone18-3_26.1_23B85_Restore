@interface MCMResultOperationDelete
- (BOOL)encodeResultOntoReply:(id)reply;
- (void)mergeWithXPCResult:(id)result;
- (void)setXpcToMerge:(id)merge;
@end

@implementation MCMResultOperationDelete

- (void)setXpcToMerge:(id)merge
{
  p_xpcToMerge = &self->_xpcToMerge;

  objc_storeStrong(p_xpcToMerge, merge);
}

- (BOOL)encodeResultOntoReply:(id)reply
{
  v15 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v14.receiver = self;
  v14.super_class = MCMResultOperationDelete;
  v5 = [(MCMResultWithContainersArrayBase *)&v14 encodeResultOntoReply:replyCopy];
  if (v5)
  {
    error = [(MCMResultBase *)self error];
    if (!error)
    {
      xpcToMerge = [(MCMResultOperationDelete *)self xpcToMerge];

      if (!xpcToMerge)
      {
        goto LABEL_4;
      }

      xpcToMerge2 = [(MCMResultOperationDelete *)self xpcToMerge];
      error = xpc_dictionary_get_array(xpcToMerge2, "ReplyContainersArray");

      if (error && MEMORY[0x1E12D4840](error) == MEMORY[0x1E69E9E50])
      {
        v10 = xpc_dictionary_get_array(replyCopy, "ReplyContainersArray");
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __50__MCMResultOperationDelete_encodeResultOntoReply___block_invoke;
        v12[3] = &unk_1E86B0908;
        v13 = v10;
        v11 = v10;
        xpc_array_apply(error, v12);
      }
    }
  }

LABEL_4:

  return v5;
}

- (void)mergeWithXPCResult:(id)result
{

  [(MCMResultOperationDelete *)self setXpcToMerge:result];
}

@end