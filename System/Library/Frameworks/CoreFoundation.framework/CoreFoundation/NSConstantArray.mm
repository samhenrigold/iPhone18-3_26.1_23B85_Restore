@interface NSConstantArray
- (NSConstantArray)initWithObjects:(const void *)objects count:(unint64_t)count;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
- (id)objectEnumerator;
- (void)getObjects:(id *)objects range:(_NSRange)range;
@end

@implementation NSConstantArray

- (NSConstantArray)initWithObjects:(const void *)objects count:(unint64_t)count
{
  qword_1EA849A30 = "attempting to allocate a constant object";
  __break(1u);
  return self;
}

- (id)objectAtIndex:(unint64_t)index
{
  v15 = *MEMORY[0x1E69E9840];
  count = self->_count;
  if ((index & 0x8000000000000000) != 0 || count <= index)
  {
    v6 = _os_log_pack_size();
    v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (count)
    {
      v10 = _os_log_pack_fill(v7, v6, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v14, v15, v16);
      v11 = count - 1;
      v12 = __os_log_helper_1_2_3_8_32_8_0_8_0(v10, "[NSConstantArray objectAtIndex:]", index, v11);
      v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v12, "[NSConstantArray objectAtIndex:]", index, v11);
    }

    else
    {
      v8 = _os_log_pack_fill(v7, v6, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty array", v14, v15);
      *v8 = 136315394;
      *(v8 + 4) = "[NSConstantArray objectAtIndex:]";
      *(v8 + 12) = 2048;
      *(v8 + 14) = index;
      v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[NSConstantArray objectAtIndex:]", index);
    }

    v13 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v7, v6];
    objc_exception_throw(v13);
  }

  return self->_objects[index];
}

- (void)getObjects:(id *)objects range:(_NSRange)range
{
  v29 = *MEMORY[0x1E69E9840];
  if (!objects && range.length)
  {
    length = range.length;
    v10 = _os_log_pack_size();
    v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill(v11, v10, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v28, v29);
    *v12 = 136315394;
    *(v12 + 4) = "[NSConstantArray getObjects:range:]";
    *(v12 + 12) = 2048;
    *(v12 + 14) = length;
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSConstantArray getObjects:range:]", length);
    goto LABEL_21;
  }

  if (range.length >> 61)
  {
    v14 = range.length;
    v10 = _os_log_pack_size();
    v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = _os_log_pack_fill(v11, v10, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v28, v29);
    *v15 = 136315394;
    *(v15 + 4) = "[NSConstantArray getObjects:range:]";
    *(v15 + 12) = 2048;
    *(v15 + 14) = v14;
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSConstantArray getObjects:range:]", v14);
LABEL_21:
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v10];
    objc_exception_throw(v16);
  }

  count = self->_count;
  if ((range.location & 0x8000000000000000) != 0 || count < range.location + range.length)
  {
    location = range.location;
    v18 = range.length;
    v19 = _os_log_pack_size();
    v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (count)
    {
      v24 = _os_log_pack_fill(v20, v19, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v28, v29, v30, v31);
      v25 = count - 1;
      v26 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v24, "[NSConstantArray getObjects:range:]", location, v18, v25);
      v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v26, "[NSConstantArray getObjects:range:]", location, v18, v25);
    }

    else
    {
      v21 = _os_log_pack_fill(v20, v19, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v28, v29, v30);
      v22 = __os_log_helper_1_2_3_8_32_8_0_8_0(v21, "[NSConstantArray getObjects:range:]", location, v18);
      v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v22, "[NSConstantArray getObjects:range:]", location, v18);
    }

    v27 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v23) osLogPack:0 size:v20, v19];
    objc_exception_throw(v27);
  }

  v5 = &self->_objects[range.location];
  if (range.length <= 4)
  {
    if (range.length > 2)
    {
      if (range.length != 3)
      {
        v6 = *v5++;
        *objects++ = v6;
      }

      v7 = *v5++;
      *objects++ = v7;
    }

    else
    {
      if (range.length == 1)
      {
LABEL_18:
        *objects = *v5;
        return;
      }

      if (range.length != 2)
      {
        return;
      }
    }

    v8 = *v5++;
    *objects++ = v8;
    goto LABEL_18;
  }

  memmove(objects, v5, 8 * range.length);
}

- (id)objectEnumerator
{
  v2 = [[__NSConstantArrayEnumerator alloc] initWithConstantArray:self];

  return v2;
}

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  v15 = *MEMORY[0x1E69E9840];
  count = self->_count;
  if ((subscript & 0x8000000000000000) != 0 || count <= subscript)
  {
    v6 = _os_log_pack_size();
    v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (count)
    {
      v10 = _os_log_pack_fill(v7, v6, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v14, v15, v16);
      v11 = count - 1;
      v12 = __os_log_helper_1_2_3_8_32_8_0_8_0(v10, "[NSConstantArray objectAtIndexedSubscript:]", subscript, v11);
      v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v12, "[NSConstantArray objectAtIndexedSubscript:]", subscript, v11);
    }

    else
    {
      v8 = _os_log_pack_fill(v7, v6, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty array", v14, v15);
      *v8 = 136315394;
      *(v8 + 4) = "[NSConstantArray objectAtIndexedSubscript:]";
      *(v8 + 12) = 2048;
      *(v8 + 14) = subscript;
      v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[NSConstantArray objectAtIndexedSubscript:]", subscript);
    }

    v13 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v7, v6];
    objc_exception_throw(v13);
  }

  return self->_objects[subscript];
}

@end