@interface LSOpenResourceOperationDelegateGetXPCInterface
@end

@implementation LSOpenResourceOperationDelegateGetXPCInterface

void ___LSOpenResourceOperationDelegateGetXPCInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EEFA76E8];
  v1 = _LSOpenResourceOperationDelegateGetXPCInterface::result;
  _LSOpenResourceOperationDelegateGetXPCInterface::result = v0;

  v2 = _LSOpenResourceOperationDelegateGetXPCInterface::result;
  if (_LSOpenResourceOperationDelegateGetXPCInterface::result || ([MEMORY[0x1E696AAA8] currentHandler], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "NSXPCInterface *_LSOpenResourceOperationDelegateGetXPCInterface()_block_invoke"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "handleFailureInFunction:file:lineNumber:description:", v6, @"LSOpenOperation.mm", 138, @"Failed to create XPC interface object."), v6, v5, (v2 = _LSOpenResourceOperationDelegateGetXPCInterface::result) != 0))
  {
    [v2 setClass:objc_opt_class() forSelector:sel_openResourceOperation_didFinishCopyingResource_ argumentIndex:0 ofReply:0];
    v3 = _LSOpenResourceOperationDelegateGetXPCInterface::result;
    v4 = objc_opt_class();

    [v3 setClass:v4 forSelector:sel_openResourceOperation_didFinishCopyingResource_ argumentIndex:1 ofReply:0];
  }
}

@end