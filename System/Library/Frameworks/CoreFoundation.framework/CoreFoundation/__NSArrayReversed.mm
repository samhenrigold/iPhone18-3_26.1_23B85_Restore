@interface __NSArrayReversed
- (__NSArrayReversed)initWithArray:(id)array;
- (id)objectAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)getObjects:(id *)objects range:(_NSRange)range;
@end

@implementation __NSArrayReversed

- (id)objectAtIndex:(unint64_t)index
{
  v17 = *MEMORY[0x1E69E9840];
  cnt = self->_cnt;
  if ((index & 0x8000000000000000) != 0 || cnt <= index)
  {
    v8 = _os_log_pack_size();
    v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (cnt)
    {
      v12 = _os_log_pack_fill(v9, v8, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v16, v17, v18);
      v13 = cnt - 1;
      v14 = __os_log_helper_1_2_3_8_32_8_0_8_0(v12, "[__NSArrayReversed objectAtIndex:]", index, v13);
      v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v14, "[__NSArrayReversed objectAtIndex:]", index, v13);
    }

    else
    {
      v10 = _os_log_pack_fill(v9, v8, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty array", v16, v17);
      *v10 = 136315394;
      *(v10 + 4) = "[__NSArrayReversed objectAtIndex:]";
      *(v10 + 12) = 2048;
      *(v10 + 14) = index;
      v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[__NSArrayReversed objectAtIndex:]", index);
    }

    v15 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:v9, v8];
    objc_exception_throw(v15);
  }

  array = self->_array;
  v5 = cnt + ~index;

  return [array objectAtIndex:v5];
}

- (void)getObjects:(id *)objects range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  objectsCopy = objects;
  v26 = *MEMORY[0x1E69E9840];
  if (!objects && range.length)
  {
    v10 = _os_log_pack_size();
    v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill(v11, v10, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v25, v26);
    *v12 = 136315394;
    *(v12 + 4) = "[__NSArrayReversed getObjects:range:]";
    *(v12 + 12) = 2048;
    *(v12 + 14) = length;
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSArrayReversed getObjects:range:]", length);
    goto LABEL_12;
  }

  if (range.length >> 61)
  {
    v10 = _os_log_pack_size();
    v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill(v11, v10, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v25, v26);
    *v14 = 136315394;
    *(v14 + 4) = "[__NSArrayReversed getObjects:range:]";
    *(v14 + 12) = 2048;
    *(v14 + 14) = length;
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSArrayReversed getObjects:range:]", length);
LABEL_12:
    v15 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v10];
    objc_exception_throw(v15);
  }

  v8 = [(__NSArrayReversed *)self count];
  if ((location & 0x8000000000000000) != 0 || v8 < location + length)
  {
    if (v8)
    {
      v21 = v8;
      v16 = _os_log_pack_size();
      v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = _os_log_pack_fill(v17, v16, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v25, v26, v27, v28);
      v23 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v22, "[__NSArrayReversed getObjects:range:]", location, length, --v21);
      v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v23, "[__NSArrayReversed getObjects:range:]", location, length, v21);
    }

    else
    {
      v16 = _os_log_pack_size();
      v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = _os_log_pack_fill(v17, v16, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v25, v26, v27);
      v19 = __os_log_helper_1_2_3_8_32_8_0_8_0(v18, "[__NSArrayReversed getObjects:range:]", location, length);
      v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v19, "[__NSArrayReversed getObjects:range:]", location, length);
    }

    v24 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20) osLogPack:0 size:v17, v16];
    objc_exception_throw(v24);
  }

  if (length)
  {
    v9 = ~location;
    do
    {
      *objectsCopy++ = [self->_array objectAtIndex:v9 + self->_cnt];
      --v9;
      --length;
    }

    while (length);
  }
}

- (__NSArrayReversed)initWithArray:(id)array
{
  v4 = [array copy];
  self->_array = v4;
  self->_cnt = [v4 count];
  return self;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = __NSArrayReversed;
  [(__NSArrayReversed *)&v3 dealloc];
}

@end