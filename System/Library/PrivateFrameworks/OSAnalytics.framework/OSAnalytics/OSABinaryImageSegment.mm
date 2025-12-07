@interface OSABinaryImageSegment
- (OSABinaryImageSegment)initWithAddress:(unint64_t)address size:(unint64_t)size for:(unsigned __int8)for[16];
- (OSABinaryImageSegment)initWithSource:(unint64_t)source size:(unint64_t)size for:(unsigned __int8)for[16] source:(int)a6;
- (OSABinaryImageSegment)initWithSymbol:(id)symbol source:(int)source;
- (id)details;
- (id)full_details;
@end

@implementation OSABinaryImageSegment

- (id)full_details
{
  v14[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v13[0] = @"uuid";
  get_uuid = [(OSASymbolInfo *)self->_symbolInfo get_uuid];
  v14[0] = get_uuid;
  v13[1] = @"base";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[OSASymbolInfo start](self->_symbolInfo, "start")}];
  v14[1] = v5;
  v13[2] = @"source";
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c", self->_source];
  v14[2] = v6;
  v13[3] = @"size";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[OSASymbolInfo size](self->_symbolInfo, "size")}];
  v14[3] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
  v9 = [v3 initWithDictionary:v8];

  name = [(OSASymbolInfo *)self->_symbolInfo name];
  [v9 setObject:name forKeyedSubscript:@"name"];

  [v9 setObject:self->_symbolInfo->legacy_arch forKeyedSubscript:@"arch"];
  path = [(OSASymbolInfo *)self->_symbolInfo path];
  [v9 setObject:path forKeyedSubscript:@"path"];

  return v9;
}

- (OSABinaryImageSegment)initWithSymbol:(id)symbol source:(int)source
{
  symbolCopy = symbol;
  v11.receiver = self;
  v11.super_class = OSABinaryImageSegment;
  v8 = [(OSABinaryImageSegment *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_symbolInfo, symbol);
    v9->_source = source;
    v9->_used_index = 0;
  }

  return v9;
}

- (OSABinaryImageSegment)initWithAddress:(unint64_t)address size:(unint64_t)size for:(unsigned __int8)for[16]
{
  v6 = [[OSASymbolInfo alloc] initWithAddress:address size:size for:for];
  v7 = [(OSABinaryImageSegment *)self initWithSymbol:v6 source:0];

  return v7;
}

- (OSABinaryImageSegment)initWithSource:(unint64_t)source size:(unint64_t)size for:(unsigned __int8)for[16] source:(int)a6
{
  v6 = *&a6;
  v8 = [[OSASymbolInfo alloc] initWithAddress:source size:size for:for];
  v9 = [(OSABinaryImageSegment *)self initWithSymbol:v8 source:v6];

  return v9;
}

- (id)details
{
  v8[3] = *MEMORY[0x1E69E9840];
  get_uuid = [(OSASymbolInfo *)self->_symbolInfo get_uuid];
  v8[0] = get_uuid;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[OSASymbolInfo start](self->_symbolInfo, "start")}];
  v8[1] = v4;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c", self->_source];
  v8[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  return v6;
}

@end