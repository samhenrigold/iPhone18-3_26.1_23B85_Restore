@interface PBMessageStreamReader
- (PBMessageStreamReader)initWithStream:(id)stream;
- (id)nextMessage;
@end

@implementation PBMessageStreamReader

- (id)nextMessage
{
  v3 = 0;
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0;
  while ([(NSInputStream *)self->_stream read:&v17 maxLength:1]== 1)
  {
    v4 = v17;
    v18[v3] = v17;
    v5 = v3 + 1;
    if (v4 < 0 && v3++ < 9)
    {
      continue;
    }

    v7 = 0;
    v8 = 0;
    v9 = v18;
    for (i = v5; i; --i)
    {
      v8 |= (*v9 & 0x7F) << v7;
      if ((*v9 & 0x80) == 0)
      {
        v13 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v8];
        v14 = v13;
        if (v13 && [v13 length] == v8 && -[NSInputStream read:maxLength:](self->_stream, "read:maxLength:", objc_msgSend(v14, "mutableBytes"), v8) == v8)
        {
          self->_position += v8 + v5;
          v15 = [[PBDataReader alloc] initWithData:v14];
          if ([(PBMessageStreamReader *)self classOfNextMessage])
          {
            v16 = objc_alloc_init([(PBMessageStreamReader *)self classOfNextMessage]);
            v11 = v16;
            if (v16)
            {
              [v16 readFrom:v15];
            }
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v11 = 0;
        }

        return v11;
      }

      v7 += 7;
      ++v9;
      if (v7 == 70)
      {
        return 0;
      }
    }

    return 0;
  }

  return 0;
}

- (PBMessageStreamReader)initWithStream:(id)stream
{
  streamCopy = stream;
  v9.receiver = self;
  v9.super_class = PBMessageStreamReader;
  v6 = [(PBMessageStreamReader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stream, stream);
  }

  return v7;
}

@end