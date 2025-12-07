@interface PTTensorSwapPair
- (PTTensorSwapPair)initWithIOSurfaces:(__IOSurface *)surfaces names:(id)names;
- (__CVBuffer)tensorWithIndex:(int)index;
- (id)tensorNameWithIndex:(int)index;
- (void)dealloc;
@end

@implementation PTTensorSwapPair

- (PTTensorSwapPair)initWithIOSurfaces:(__IOSurface *)surfaces names:(id)names
{
  *&v22[5] = *MEMORY[0x277D85DE8];
  namesCopy = names;
  v20.receiver = self;
  v20.super_class = PTTensorSwapPair;
  v7 = [(PTTensorSwapPair *)&v20 init];
  v8 = v7;
  if (v7)
  {
    v9 = 0;
    v10 = *MEMORY[0x277CBECE8];
    names = v7->_names;
    v12 = 1;
    do
    {
      v13 = v12;
      v14 = CVPixelBufferCreateWithIOSurface(v10, surfaces[v9], 0, &v8->_tensorPair[v9]);
      if (v14)
      {
        v15 = _PTLogSystem(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [(PTTensorSwapPair *)buf initWithIOSurfaces:v22 names:v15];
        }
      }

      v16 = [namesCopy objectAtIndexedSubscript:v9];
      v17 = names[v9];
      names[v9] = v16;

      v12 = 0;
      v9 = 1;
    }

    while ((v13 & 1) != 0);
    v18 = v8;
  }

  return v8;
}

- (void)dealloc
{
  v3 = 0;
  tensorPair = self->_tensorPair;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = tensorPair[v3];
    if (v7)
    {
      CVPixelBufferRelease(v7);
    }

    v5 = 0;
    v3 = 1;
  }

  while ((v6 & 1) != 0);
  v8.receiver = self;
  v8.super_class = PTTensorSwapPair;
  [(PTTensorSwapPair *)&v8 dealloc];
}

- (__CVBuffer)tensorWithIndex:(int)index
{
  v3 = index & 1;
  if (index < 0)
  {
    v3 = -v3;
  }

  return self->_tensorPair[v3];
}

- (id)tensorNameWithIndex:(int)index
{
  v3 = index & 1;
  if (index < 0)
  {
    v3 = -v3;
  }

  return self->_names[v3];
}

- (void)initWithIOSurfaces:(os_log_t)log names:.cold.1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "status == noErr";
  _os_log_error_impl(&dword_2243FB000, log, OS_LOG_TYPE_ERROR, "Assertion failed %s", buf, 0xCu);
}

@end