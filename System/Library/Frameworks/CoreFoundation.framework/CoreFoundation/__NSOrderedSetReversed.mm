@interface __NSOrderedSetReversed
- (__NSOrderedSetReversed)initWithOrderedSet:(id)set;
- (id)objectAtIndex:(unint64_t)index;
- (unint64_t)indexOfObject:(id)object;
- (void)dealloc;
@end

@implementation __NSOrderedSetReversed

- (__NSOrderedSetReversed)initWithOrderedSet:(id)set
{
  v4 = [set copy];
  self->_orderedSet = v4;
  self->_cnt = [v4 count];
  return self;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = __NSOrderedSetReversed;
  [(__NSOrderedSetReversed *)&v3 dealloc];
}

- (unint64_t)indexOfObject:(id)object
{
  v4 = [self->_orderedSet indexOfObject:object];
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return self->_cnt + ~v4;
  }

  return v5;
}

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
      v14 = __os_log_helper_1_2_3_8_32_8_0_8_0(v12, "[__NSOrderedSetReversed objectAtIndex:]", index, v13);
      v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v14, "[__NSOrderedSetReversed objectAtIndex:]", index, v13);
    }

    else
    {
      v10 = _os_log_pack_fill(v9, v8, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty ordered set", v16, v17);
      *v10 = 136315394;
      *(v10 + 4) = "[__NSOrderedSetReversed objectAtIndex:]";
      *(v10 + 12) = 2048;
      *(v10 + 14) = index;
      v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty ordered set", "[__NSOrderedSetReversed objectAtIndex:]", index);
    }

    v15 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:v9, v8];
    objc_exception_throw(v15);
  }

  orderedSet = self->_orderedSet;
  v5 = cnt + ~index;

  return [orderedSet objectAtIndex:v5];
}

@end