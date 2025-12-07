@interface LSPlugInQueryWithIdentifier
- (BOOL)isEqual:(id)equal;
- (LSPlugInQueryWithIdentifier)initWithCoder:(id)coder;
- (id)_initWithIdentifier:(id)identifier inMap:(int)map;
- (unint64_t)hash;
- (void)_enumerateWithXPCConnection:(id)connection block:(id)block;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LSPlugInQueryWithIdentifier

- (id)_initWithIdentifier:(id)identifier inMap:(int)map
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = LSPlugInQueryWithIdentifier;
  _init = [(LSPlugInQuery *)&v13 _init];
  v8 = _init;
  if (_init)
  {
    _init[3] = map;
    v9 = [identifierCopy copy];
    v10 = v8[2];
    v8[2] = v9;
  }

  if (_LSEntitledForPluginQuery())
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_enumerateWithXPCConnection:(id)connection block:(id)block
{
  v24[1] = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  blockCopy = block;
  if (*&self->_bindingMap && [(LSPlugInQueryWithIdentifier *)self isBindingMapValid])
  {
    v21 = 0;
    v22 = 0;
    inited = _LSContextInitReturningError(&v22, &v21);
    v9 = v21;
    if (inited)
    {
      v10 = [MEMORY[0x1E695DFA8] set];
      StringForCFString = _LSDatabaseGetStringForCFString(v22, *&self->_bindingMap, 0);
      v12 = v22;
      v13 = *(&self->super.super._legacy + 1);
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __65__LSPlugInQueryWithIdentifier__enumerateWithXPCConnection_block___block_invoke;
      v19 = &unk_1E6A1D720;
      v14 = v10;
      v20 = v14;
      _LSDatabaseEnumeratingBindingMap(v12, v13, StringForCFString, &v16);
      [(LSPlugInQuery *)self sort:1 pluginIDs:v14 andYield:blockCopy context:&v22, v16, v17, v18, v19];
      _LSContextDestroy(&v22);
    }

    else
    {
      blockCopy[2](blockCopy, 0, v9);
    }
  }

  else
  {
    v23 = *MEMORY[0x1E696A278];
    v24[0] = @"invalid bundleIdentifier";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v15 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v9, "[LSPlugInQueryWithIdentifier _enumerateWithXPCConnection:block:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSPlugInQueryWithIdentifier.m", 55);
    blockCopy[2](blockCopy, 0, v15);
  }
}

void __65__LSPlugInQueryWithIdentifier__enumerateWithXPCConnection_block___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  [v1 addObject:v2];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = LSPlugInQueryWithIdentifier;
  if ([(LSPlugInQuery *)&v9 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = *&self->_bindingMap;
    _identifier = [equalCopy _identifier];
    v7 = [v5 isEqualToString:_identifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [*&self->_bindingMap hash];
  v5.receiver = self;
  v5.super_class = LSPlugInQueryWithIdentifier;
  return [(LSPlugInQuery *)&v5 hash]^ v3;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *&self->_bindingMap;
  coderCopy = coder;
  [coderCopy encodeObject:v4 forKey:@"identifier"];
  [coderCopy encodeInt32:*(&self->super.super._legacy + 1) forKey:@"bindingMap"];
}

- (LSPlugInQueryWithIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeInt32ForKey:@"bindingMap"];

  v7 = [(LSPlugInQueryWithIdentifier *)self _initWithIdentifier:v5 inMap:v6];
  return v7;
}

@end