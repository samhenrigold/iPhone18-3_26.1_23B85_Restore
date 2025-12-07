@interface TransparencyGPBCodedOutputStream
+ (id)streamWithData:(id)data;
+ (id)streamWithOutputStream:(id)stream;
- (TransparencyGPBCodedOutputStream)initWithOutputStream:(id)stream;
- (TransparencyGPBCodedOutputStream)initWithOutputStream:(id)stream data:(id)data;
- (void)dealloc;
- (void)flush;
- (void)writeBool:(int)bool value:(BOOL)value;
- (void)writeBoolArray:(int)array values:(id)values tag:(unsigned int)tag;
- (void)writeBoolNoTag:(BOOL)tag;
- (void)writeBytes:(int)bytes value:(id)value;
- (void)writeBytesArray:(int)array values:(id)values;
- (void)writeBytesNoTag:(id)tag;
- (void)writeDouble:(int)double value:(double)value;
- (void)writeDoubleArray:(int)array values:(id)values tag:(unsigned int)tag;
- (void)writeEnum:(int)enum value:(int)value;
- (void)writeEnumArray:(int)array values:(id)values tag:(unsigned int)tag;
- (void)writeFixed32:(int)fixed32 value:(unsigned int)value;
- (void)writeFixed32Array:(int)array values:(id)values tag:(unsigned int)tag;
- (void)writeFixed64:(int)fixed64 value:(unint64_t)value;
- (void)writeFixed64Array:(int)array values:(id)values tag:(unsigned int)tag;
- (void)writeFloat:(int)float value:(float)value;
- (void)writeFloatArray:(int)array values:(id)values tag:(unsigned int)tag;
- (void)writeGroup:(int)group value:(id)value;
- (void)writeGroupArray:(int)array values:(id)values;
- (void)writeGroupNoTag:(int)tag value:(id)value;
- (void)writeInt32:(int)int32 value:(int)value;
- (void)writeInt32Array:(int)array values:(id)values tag:(unsigned int)tag;
- (void)writeInt64:(int)int64 value:(int64_t)value;
- (void)writeInt64Array:(int)array values:(id)values tag:(unsigned int)tag;
- (void)writeMessage:(int)message value:(id)value;
- (void)writeMessageArray:(int)array values:(id)values;
- (void)writeMessageNoTag:(id)tag;
- (void)writeMessageSetExtension:(int)extension value:(id)value;
- (void)writeRawByte:(unsigned __int8)byte;
- (void)writeRawData:(id)data;
- (void)writeRawMessageSetExtension:(int)extension value:(id)value;
- (void)writeRawPtr:(const void *)ptr offset:(unint64_t)offset length:(unint64_t)length;
- (void)writeSFixed32:(int)fixed32 value:(int)value;
- (void)writeSFixed32Array:(int)array values:(id)values tag:(unsigned int)tag;
- (void)writeSFixed64:(int)fixed64 value:(int64_t)value;
- (void)writeSFixed64Array:(int)array values:(id)values tag:(unsigned int)tag;
- (void)writeSInt32:(int)int32 value:(int)value;
- (void)writeSInt32Array:(int)array values:(id)values tag:(unsigned int)tag;
- (void)writeSInt64:(int)int64 value:(int64_t)value;
- (void)writeSInt64Array:(int)array values:(id)values tag:(unsigned int)tag;
- (void)writeString:(int)string value:(id)value;
- (void)writeStringArray:(int)array values:(id)values;
- (void)writeStringNoTag:(id)tag;
- (void)writeTag:(unsigned int)tag format:(int)format;
- (void)writeUInt32Array:(int)array values:(id)values tag:(unsigned int)tag;
- (void)writeUInt64:(int)int64 value:(unint64_t)value;
- (void)writeUInt64Array:(int)array values:(id)values tag:(unsigned int)tag;
- (void)writeUnknownGroup:(int)group value:(id)value;
- (void)writeUnknownGroupArray:(int)array values:(id)values;
- (void)writeUnknownGroupNoTag:(int)tag value:(id)value;
@end

@implementation TransparencyGPBCodedOutputStream

- (void)dealloc
{
  [(TransparencyGPBCodedOutputStream *)self flush];
  [(NSOutputStream *)self->state_.output close];

  v3.receiver = self;
  v3.super_class = TransparencyGPBCodedOutputStream;
  [(TransparencyGPBCodedOutputStream *)&v3 dealloc];
}

- (TransparencyGPBCodedOutputStream)initWithOutputStream:(id)stream
{
  v5 = [NSMutableData dataWithLength:vm_page_size];

  return [(TransparencyGPBCodedOutputStream *)self initWithOutputStream:stream data:v5];
}

- (TransparencyGPBCodedOutputStream)initWithOutputStream:(id)stream data:(id)data
{
  v9.receiver = self;
  v9.super_class = TransparencyGPBCodedOutputStream;
  v6 = [(TransparencyGPBCodedOutputStream *)&v9 init];
  if (v6)
  {
    v6->buffer_ = data;
    v6->state_.bytes = [data mutableBytes];
    v6->state_.size = [data length];
    streamCopy = stream;
    v6->state_.output = streamCopy;
    [(NSOutputStream *)streamCopy open];
  }

  return v6;
}

+ (id)streamWithOutputStream:(id)stream
{
  v3 = [[self alloc] initWithOutputStream:stream data:{+[NSMutableData dataWithLength:](NSMutableData, "dataWithLength:", vm_page_size)}];

  return v3;
}

+ (id)streamWithData:(id)data
{
  v3 = [[self alloc] initWithData:data];

  return v3;
}

- (void)writeDouble:(int)double value:(double)value
{
  v6 = sub_1000F1CD4(double, 1);
  sub_1000BE618(&self->state_, v6);

  sub_1000BDE70(&self->state_, *&value);
}

- (void)writeFloat:(int)float value:(float)value
{
  v6 = sub_1000F1CD4(float, 5);
  sub_1000BE618(&self->state_, v6);

  sub_1000BE058(&self->state_, SLODWORD(value));
}

- (void)writeUInt64:(int)int64 value:(unint64_t)value
{
  v6 = sub_1000F1CD4(int64, 0);
  sub_1000BE618(&self->state_, v6);

  sub_1000BE190(&self->state_, value);
}

- (void)writeInt64:(int)int64 value:(int64_t)value
{
  v6 = sub_1000F1CD4(int64, 0);
  sub_1000BE618(&self->state_, v6);

  sub_1000BE190(&self->state_, value);
}

- (void)writeInt32:(int)int32 value:(int)value
{
  v6 = sub_1000F1CD4(int32, 0);
  sub_1000BE618(&self->state_, v6);

  sub_1000BE2F0(&self->state_, value);
}

- (void)writeFixed64:(int)fixed64 value:(unint64_t)value
{
  v6 = sub_1000F1CD4(fixed64, 1);
  sub_1000BE618(&self->state_, v6);

  sub_1000BDE70(&self->state_, value);
}

- (void)writeFixed32:(int)fixed32 value:(unsigned int)value
{
  v6 = sub_1000F1CD4(fixed32, 5);
  sub_1000BE618(&self->state_, v6);

  sub_1000BE058(&self->state_, value);
}

- (void)writeBoolNoTag:(BOOL)tag
{
  position = self->state_.position;
  if (position == self->state_.size)
  {
    sub_1000C0E60(&self->state_.bytes);
    position = self->state_.position;
  }

  bytes = self->state_.bytes;
  self->state_.position = position + 1;
  bytes[position] = tag;
}

- (void)writeBool:(int)bool value:(BOOL)value
{
  v6 = sub_1000F1CD4(bool, 0);
  sub_1000BE618(&self->state_, v6);
  position = self->state_.position;
  if (position == self->state_.size)
  {
    sub_1000C0E60(&self->state_.bytes);
    position = self->state_.position;
  }

  bytes = self->state_.bytes;
  self->state_.position = position + 1;
  bytes[position] = value;
}

- (void)writeStringNoTag:(id)tag
{
  v5 = [tag lengthOfBytesUsingEncoding:4];
  sub_1000BE618(&self->state_, v5);
  if (v5)
  {
    CStringPtr = CFStringGetCStringPtr(tag, 0x8000100u);
    position = self->state_.position;
    v8 = self->state_.size - position;
    if (v8 >= v5)
    {
      v11 = 0;
      bytes = self->state_.bytes;
      if (CStringPtr)
      {
        memcpy(&bytes[position], CStringPtr, v5);
      }

      else
      {
        if (![tag getBytes:&bytes[position] maxLength:v8 usedLength:&v11 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(tag, "length"), 0}])
        {
          return;
        }

        v5 = v11;
      }

      self->state_.position += v5;
    }

    else if (CStringPtr)
    {

      [TransparencyGPBCodedOutputStream writeRawPtr:"writeRawPtr:offset:length:" offset:CStringPtr length:?];
    }

    else
    {
      v10 = [tag dataUsingEncoding:4];

      [(TransparencyGPBCodedOutputStream *)self writeRawData:v10];
    }
  }
}

- (void)writeString:(int)string value:(id)value
{
  v6 = sub_1000F1CD4(string, 2);
  sub_1000BE618(&self->state_, v6);

  [(TransparencyGPBCodedOutputStream *)self writeStringNoTag:value];
}

- (void)writeGroupNoTag:(int)tag value:(id)value
{
  [value writeToCodedOutputStream:self];
  v6 = sub_1000F1CD4(tag, 4);

  sub_1000BE618(&self->state_, v6);
}

- (void)writeGroup:(int)group value:(id)value
{
  v5 = *&group;
  v7 = sub_1000F1CD4(group, 3);
  sub_1000BE618(&self->state_, v7);

  [(TransparencyGPBCodedOutputStream *)self writeGroupNoTag:v5 value:value];
}

- (void)writeUnknownGroupNoTag:(int)tag value:(id)value
{
  [value writeToCodedOutputStream:self];
  v6 = sub_1000F1CD4(tag, 4);

  sub_1000BE618(&self->state_, v6);
}

- (void)writeUnknownGroup:(int)group value:(id)value
{
  v5 = *&group;
  v7 = sub_1000F1CD4(group, 3);
  sub_1000BE618(&self->state_, v7);

  [(TransparencyGPBCodedOutputStream *)self writeUnknownGroupNoTag:v5 value:value];
}

- (void)writeMessageNoTag:(id)tag
{
  sub_1000BE618(&self->state_, [tag serializedSize]);

  [tag writeToCodedOutputStream:self];
}

- (void)writeMessage:(int)message value:(id)value
{
  v6 = sub_1000F1CD4(message, 2);
  sub_1000BE618(&self->state_, v6);

  [(TransparencyGPBCodedOutputStream *)self writeMessageNoTag:value];
}

- (void)writeBytesNoTag:(id)tag
{
  sub_1000BE618(&self->state_, [tag length]);

  [(TransparencyGPBCodedOutputStream *)self writeRawData:tag];
}

- (void)writeBytes:(int)bytes value:(id)value
{
  v6 = sub_1000F1CD4(bytes, 2);
  sub_1000BE618(&self->state_, v6);

  [(TransparencyGPBCodedOutputStream *)self writeBytesNoTag:value];
}

- (void)writeEnum:(int)enum value:(int)value
{
  v6 = sub_1000F1CD4(enum, 0);
  sub_1000BE618(&self->state_, v6);

  sub_1000BE2F0(&self->state_, value);
}

- (void)writeSFixed32:(int)fixed32 value:(int)value
{
  v6 = sub_1000F1CD4(fixed32, 5);
  sub_1000BE618(&self->state_, v6);

  sub_1000BE058(&self->state_, value);
}

- (void)writeSFixed64:(int)fixed64 value:(int64_t)value
{
  v6 = sub_1000F1CD4(fixed64, 1);
  sub_1000BE618(&self->state_, v6);

  sub_1000BDE70(&self->state_, value);
}

- (void)writeSInt32:(int)int32 value:(int)value
{
  v6 = sub_1000F1CD4(int32, 0);
  sub_1000BE618(&self->state_, v6);

  sub_1000BE618(&self->state_, (2 * value) ^ (value >> 31));
}

- (void)writeSInt64:(int)int64 value:(int64_t)value
{
  v6 = sub_1000F1CD4(int64, 0);
  sub_1000BE618(&self->state_, v6);

  sub_1000BE190(&self->state_, (2 * value) ^ (value >> 63));
}

- (void)writeDoubleArray:(int)array values:(id)values tag:(unsigned int)tag
{
  if (tag)
  {
    if ([values count])
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000BEDC8;
      v11[3] = &unk_100136F18;
      v11[4] = &v12;
      [values enumerateValuesWithBlock:v11];
      sub_1000BE618(&self->state_, tag);
      sub_1000BE618(&self->state_, *(v13 + 6));
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000BEDE0;
      v10[3] = &unk_100136F40;
      v10[4] = self;
      [values enumerateValuesWithBlock:v10];
      _Block_object_dispose(&v12, 8);
    }
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000BEDE8;
    v8[3] = &unk_100136F68;
    v8[4] = self;
    arrayCopy = array;
    [values enumerateValuesWithBlock:v8];
  }
}

- (void)writeFloatArray:(int)array values:(id)values tag:(unsigned int)tag
{
  if (tag)
  {
    if ([values count])
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000BEF9C;
      v11[3] = &unk_100136F90;
      v11[4] = &v12;
      [values enumerateValuesWithBlock:v11];
      sub_1000BE618(&self->state_, tag);
      sub_1000BE618(&self->state_, *(v13 + 6));
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000BEFB4;
      v10[3] = &unk_100136FB8;
      v10[4] = self;
      [values enumerateValuesWithBlock:v10];
      _Block_object_dispose(&v12, 8);
    }
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000BEFBC;
    v8[3] = &unk_100136FE0;
    v8[4] = self;
    arrayCopy = array;
    [values enumerateValuesWithBlock:v8];
  }
}

- (void)writeUInt64Array:(int)array values:(id)values tag:(unsigned int)tag
{
  if (tag)
  {
    if ([values count])
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000BF170;
      v11[3] = &unk_100137008;
      v11[4] = &v12;
      [values enumerateValuesWithBlock:v11];
      sub_1000BE618(&self->state_, tag);
      sub_1000BE618(&self->state_, *(v13 + 6));
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000BF1B0;
      v10[3] = &unk_100137030;
      v10[4] = self;
      [values enumerateValuesWithBlock:v10];
      _Block_object_dispose(&v12, 8);
    }
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000BF1BC;
    v8[3] = &unk_100137058;
    v8[4] = self;
    arrayCopy = array;
    [values enumerateValuesWithBlock:v8];
  }
}

- (void)writeInt64Array:(int)array values:(id)values tag:(unsigned int)tag
{
  if (tag)
  {
    if ([values count])
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000BF374;
      v11[3] = &unk_100137080;
      v11[4] = &v12;
      [values enumerateValuesWithBlock:v11];
      sub_1000BE618(&self->state_, tag);
      sub_1000BE618(&self->state_, *(v13 + 6));
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000BF3B0;
      v10[3] = &unk_1001370A8;
      v10[4] = self;
      [values enumerateValuesWithBlock:v10];
      _Block_object_dispose(&v12, 8);
    }
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000BF3BC;
    v8[3] = &unk_1001370D0;
    v8[4] = self;
    arrayCopy = array;
    [values enumerateValuesWithBlock:v8];
  }
}

- (void)writeInt32Array:(int)array values:(id)values tag:(unsigned int)tag
{
  if (tag)
  {
    if ([values count])
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000BF574;
      v11[3] = &unk_1001370F8;
      v11[4] = &v12;
      [values enumerateValuesWithBlock:v11];
      sub_1000BE618(&self->state_, tag);
      sub_1000BE618(&self->state_, *(v13 + 6));
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000BF610;
      v10[3] = &unk_100137120;
      v10[4] = self;
      [values enumerateValuesWithBlock:v10];
      _Block_object_dispose(&v12, 8);
    }
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000BF61C;
    v8[3] = &unk_100137148;
    v8[4] = self;
    arrayCopy = array;
    [values enumerateValuesWithBlock:v8];
  }
}

- (void)writeUInt32Array:(int)array values:(id)values tag:(unsigned int)tag
{
  if (tag)
  {
    if ([values count])
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000BF7D4;
      v11[3] = &unk_100137170;
      v11[4] = &v12;
      [values enumerateValuesWithBlock:v11];
      sub_1000BE618(&self->state_, tag);
      sub_1000BE618(&self->state_, *(v13 + 6));
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000BF858;
      v10[3] = &unk_100137198;
      v10[4] = self;
      [values enumerateValuesWithBlock:v10];
      _Block_object_dispose(&v12, 8);
    }
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000BF864;
    v8[3] = &unk_1001371C0;
    v8[4] = self;
    arrayCopy = array;
    [values enumerateValuesWithBlock:v8];
  }
}

- (void)writeFixed64Array:(int)array values:(id)values tag:(unsigned int)tag
{
  if (tag)
  {
    if ([values count])
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000BFA1C;
      v11[3] = &unk_100137008;
      v11[4] = &v12;
      [values enumerateValuesWithBlock:v11];
      sub_1000BE618(&self->state_, tag);
      sub_1000BE618(&self->state_, *(v13 + 6));
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000BFA34;
      v10[3] = &unk_100137030;
      v10[4] = self;
      [values enumerateValuesWithBlock:v10];
      _Block_object_dispose(&v12, 8);
    }
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000BFA40;
    v8[3] = &unk_100137058;
    v8[4] = self;
    arrayCopy = array;
    [values enumerateValuesWithBlock:v8];
  }
}

- (void)writeFixed32Array:(int)array values:(id)values tag:(unsigned int)tag
{
  if (tag)
  {
    if ([values count])
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000BFBF8;
      v11[3] = &unk_100137170;
      v11[4] = &v12;
      [values enumerateValuesWithBlock:v11];
      sub_1000BE618(&self->state_, tag);
      sub_1000BE618(&self->state_, *(v13 + 6));
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000BFC10;
      v10[3] = &unk_100137198;
      v10[4] = self;
      [values enumerateValuesWithBlock:v10];
      _Block_object_dispose(&v12, 8);
    }
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000BFC1C;
    v8[3] = &unk_1001371C0;
    v8[4] = self;
    arrayCopy = array;
    [values enumerateValuesWithBlock:v8];
  }
}

- (void)writeSInt32Array:(int)array values:(id)values tag:(unsigned int)tag
{
  if (tag)
  {
    if ([values count])
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000BFDD4;
      v11[3] = &unk_1001370F8;
      v11[4] = &v12;
      [values enumerateValuesWithBlock:v11];
      sub_1000BE618(&self->state_, tag);
      sub_1000BE618(&self->state_, *(v13 + 6));
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000BFE68;
      v10[3] = &unk_100137120;
      v10[4] = self;
      [values enumerateValuesWithBlock:v10];
      _Block_object_dispose(&v12, 8);
    }
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000BFE74;
    v8[3] = &unk_100137148;
    v8[4] = self;
    arrayCopy = array;
    [values enumerateValuesWithBlock:v8];
  }
}

- (void)writeSInt64Array:(int)array values:(id)values tag:(unsigned int)tag
{
  if (tag)
  {
    if ([values count])
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000C002C;
      v11[3] = &unk_100137080;
      v11[4] = &v12;
      [values enumerateValuesWithBlock:v11];
      sub_1000BE618(&self->state_, tag);
      sub_1000BE618(&self->state_, *(v13 + 6));
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000C0078;
      v10[3] = &unk_1001370A8;
      v10[4] = self;
      [values enumerateValuesWithBlock:v10];
      _Block_object_dispose(&v12, 8);
    }
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000C0084;
    v8[3] = &unk_1001370D0;
    v8[4] = self;
    arrayCopy = array;
    [values enumerateValuesWithBlock:v8];
  }
}

- (void)writeSFixed64Array:(int)array values:(id)values tag:(unsigned int)tag
{
  if (tag)
  {
    if ([values count])
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000C023C;
      v11[3] = &unk_100137080;
      v11[4] = &v12;
      [values enumerateValuesWithBlock:v11];
      sub_1000BE618(&self->state_, tag);
      sub_1000BE618(&self->state_, *(v13 + 6));
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000C0254;
      v10[3] = &unk_1001370A8;
      v10[4] = self;
      [values enumerateValuesWithBlock:v10];
      _Block_object_dispose(&v12, 8);
    }
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000C0260;
    v8[3] = &unk_1001370D0;
    v8[4] = self;
    arrayCopy = array;
    [values enumerateValuesWithBlock:v8];
  }
}

- (void)writeSFixed32Array:(int)array values:(id)values tag:(unsigned int)tag
{
  if (tag)
  {
    if ([values count])
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000C0418;
      v11[3] = &unk_1001370F8;
      v11[4] = &v12;
      [values enumerateValuesWithBlock:v11];
      sub_1000BE618(&self->state_, tag);
      sub_1000BE618(&self->state_, *(v13 + 6));
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000C0430;
      v10[3] = &unk_100137120;
      v10[4] = self;
      [values enumerateValuesWithBlock:v10];
      _Block_object_dispose(&v12, 8);
    }
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000C043C;
    v8[3] = &unk_100137148;
    v8[4] = self;
    arrayCopy = array;
    [values enumerateValuesWithBlock:v8];
  }
}

- (void)writeBoolArray:(int)array values:(id)values tag:(unsigned int)tag
{
  if (tag)
  {
    if ([values count])
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000C05F4;
      v11[3] = &unk_1001371E8;
      v11[4] = &v12;
      [values enumerateValuesWithBlock:v11];
      sub_1000BE618(&self->state_, tag);
      sub_1000BE618(&self->state_, *(v13 + 6));
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000C060C;
      v10[3] = &unk_100137210;
      v10[4] = self;
      [values enumerateValuesWithBlock:v10];
      _Block_object_dispose(&v12, 8);
    }
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000C0618;
    v8[3] = &unk_100137238;
    v8[4] = self;
    arrayCopy = array;
    [values enumerateValuesWithBlock:v8];
  }
}

- (void)writeEnumArray:(int)array values:(id)values tag:(unsigned int)tag
{
  if (tag)
  {
    if ([values count])
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000C07D0;
      v11[3] = &unk_1001370F8;
      v11[4] = &v12;
      [values enumerateRawValuesWithBlock:v11];
      sub_1000BE618(&self->state_, tag);
      sub_1000BE618(&self->state_, *(v13 + 6));
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000C0828;
      v10[3] = &unk_100137120;
      v10[4] = self;
      [values enumerateRawValuesWithBlock:v10];
      _Block_object_dispose(&v12, 8);
    }
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000C0834;
    v8[3] = &unk_100137148;
    v8[4] = self;
    arrayCopy = array;
    [values enumerateRawValuesWithBlock:v8];
  }
}

- (void)writeStringArray:(int)array values:(id)values
{
  v5 = *&array;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [values countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(values);
        }

        [(TransparencyGPBCodedOutputStream *)self writeString:v5 value:*(*(&v11 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [values countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)writeMessageArray:(int)array values:(id)values
{
  v5 = *&array;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [values countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(values);
        }

        [(TransparencyGPBCodedOutputStream *)self writeMessage:v5 value:*(*(&v11 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [values countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)writeBytesArray:(int)array values:(id)values
{
  v5 = *&array;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [values countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(values);
        }

        [(TransparencyGPBCodedOutputStream *)self writeBytes:v5 value:*(*(&v11 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [values countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)writeGroupArray:(int)array values:(id)values
{
  v5 = *&array;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [values countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(values);
        }

        [(TransparencyGPBCodedOutputStream *)self writeGroup:v5 value:*(*(&v11 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [values countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)writeUnknownGroupArray:(int)array values:(id)values
{
  v5 = *&array;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [values countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(values);
        }

        [(TransparencyGPBCodedOutputStream *)self writeUnknownGroup:v5 value:*(*(&v11 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [values countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)writeMessageSetExtension:(int)extension value:(id)value
{
  v7 = sub_1000F1CD4(1, 3);
  sub_1000BE618(&self->state_, v7);
  sub_1000BE9E0(&self->state_, 2, extension);
  [(TransparencyGPBCodedOutputStream *)self writeMessage:3 value:value];
  v8 = sub_1000F1CD4(1, 4);

  sub_1000BE618(&self->state_, v8);
}

- (void)writeRawMessageSetExtension:(int)extension value:(id)value
{
  v7 = sub_1000F1CD4(1, 3);
  sub_1000BE618(&self->state_, v7);
  sub_1000BE9E0(&self->state_, 2, extension);
  [(TransparencyGPBCodedOutputStream *)self writeBytes:3 value:value];
  v8 = sub_1000F1CD4(1, 4);

  sub_1000BE618(&self->state_, v8);
}

- (void)flush
{
  if (self->state_.output)
  {
    sub_1000C0E60(&self->state_.bytes);
  }
}

- (void)writeRawByte:(unsigned __int8)byte
{
  position = self->state_.position;
  if (position == self->state_.size)
  {
    sub_1000C0E60(&self->state_.bytes);
    position = self->state_.position;
  }

  bytes = self->state_.bytes;
  self->state_.position = position + 1;
  bytes[position] = byte;
}

- (void)writeRawData:(id)data
{
  bytes = [data bytes];
  v6 = [data length];

  [(TransparencyGPBCodedOutputStream *)self writeRawPtr:bytes offset:0 length:v6];
}

- (void)writeRawPtr:(const void *)ptr offset:(unint64_t)offset length:(unint64_t)length
{
  if (ptr && length)
  {
    size = self->state_.size;
    p_state = &self->state_;
    position = self->state_.position;
    v12 = size - position;
    v13 = &self->state_.bytes[position];
    v14 = (length - (size - position));
    if (length <= size - position)
    {
      memcpy(v13, ptr + offset, length);
      self->state_.position += length;
    }

    else
    {
      memcpy(v13, ptr + offset, size - position);
      v15 = v12 + offset;
      self->state_.position = size;
      sub_1000C0E60(p_state);
      if (v14 <= self->state_.size)
      {
        memcpy(self->state_.bytes, ptr + v15, v14);
        self->state_.position = v14;
      }

      else if ([(NSOutputStream *)self->state_.output write:ptr + v15 maxLength:v14]!= v14)
      {

        [NSException raise:@"WriteFailed" format:&stru_100139EB0];
      }
    }
  }
}

- (void)writeTag:(unsigned int)tag format:(int)format
{
  v5 = sub_1000F1CD4(tag, format);

  sub_1000BE618(&self->state_, v5);
}

@end