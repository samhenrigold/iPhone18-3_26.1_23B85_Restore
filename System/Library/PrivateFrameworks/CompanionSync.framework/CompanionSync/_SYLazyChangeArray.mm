@interface _SYLazyChangeArray
- (_SYLazyChangeArray)initWithSYObjectDataArray:(id)array typeArray:(id)typeArray decoder:(id)decoder;
- (_SYLazyChangeArray)initWithSourceArray:(id)array decoder:(id)decoder;
- (id)objectAtIndex:(unint64_t)index;
@end

@implementation _SYLazyChangeArray

- (_SYLazyChangeArray)initWithSourceArray:(id)array decoder:(id)decoder
{
  arrayCopy = array;
  decoderCopy = decoder;
  v9 = [arrayCopy count];
  selfCopy = 0;
  if (decoderCopy && v9)
  {
    v13.receiver = self;
    v13.super_class = _SYLazyChangeArray;
    v11 = [(_SYLazyChangeArray *)&v13 init];
    self = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_source, array);
      objc_storeStrong(&self->_decoder, decoder);
      self->_compatibilityVersion = 2;
      self = self;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (_SYLazyChangeArray)initWithSYObjectDataArray:(id)array typeArray:(id)typeArray decoder:(id)decoder
{
  arrayCopy = array;
  typeArrayCopy = typeArray;
  decoderCopy = decoder;
  v12 = [arrayCopy count];
  selfCopy = 0;
  if (decoderCopy && v12)
  {
    if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
    {
      v16.receiver = self;
      v16.super_class = _SYLazyChangeArray;
      v14 = [(_SYLazyChangeArray *)&v16 init];
      self = v14;
      if (v14)
      {
        objc_storeStrong(&v14->_source, array);
        objc_storeStrong(&self->_types, typeArray);
        objc_storeStrong(&self->_decoder, decoder);
        self->_isSYObjectDataArray = 1;
        self->_compatibilityVersion = 1;
        self = self;
        selfCopy = self;
        goto LABEL_9;
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"SYChangeSerializer %@ needs to implement SYObjectWithData: to communicate with devices running WatchOS 1.x", decoderCopy}];
    }

    selfCopy = 0;
  }

LABEL_9:

  return selfCopy;
}

- (id)objectAtIndex:(unint64_t)index
{
  if (self->_isSYObjectDataArray)
  {
    v5 = objc_opt_respondsToSelector();
    decoder = self->_decoder;
    v7 = [(NSArray *)self->_source objectAtIndexedSubscript:index];
    if (v5)
    {
      v8 = [(NSArray *)self->_types objectAtIndexedSubscript:index];
      v9 = -[SYChangeSerializer decodeChangeData:fromProtocolVersion:ofType:](decoder, "decodeChangeData:fromProtocolVersion:ofType:", v7, 1, [v8 integerValue]);

      goto LABEL_10;
    }

    v13 = [(SYChangeSerializer *)decoder SYObjectWithData:v7];
  }

  else
  {
    compatibilityVersion = self->_compatibilityVersion;
    v11 = [(NSArray *)self->_source objectAtIndexedSubscript:index];
    v7 = v11;
    v12 = self->_decoder;
    if (compatibilityVersion > 1)
    {
      [v11 changeObjectWithSerializer:v12];
    }

    else
    {
      [v11 changeObjectWithSerializer:v12 encodedByVersion:self->_compatibilityVersion];
    }
    v13 = ;
  }

  v9 = v13;
LABEL_10:

  if (!v9)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [_SYLazyChangeArray objectAtIndex:];
    }

    v14 = _sync_log_facilities;
    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_FAULT))
    {
      [_SYLazyChangeArray objectAtIndex:v14];
    }

    v9 = +[SYDegenerateChange degenerateChange];
  }

  return v9;
}

@end