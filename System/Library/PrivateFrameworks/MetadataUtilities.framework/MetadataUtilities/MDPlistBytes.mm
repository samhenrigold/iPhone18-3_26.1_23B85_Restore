@interface MDPlistBytes
@end

@implementation MDPlistBytes

__MDPlistBytes *__37___MDPlistBytes_emptyArrayPlistBytes__block_invoke()
{
  result = [_MDPlistBytes createArrayPlistBytesUsingBlock:&__block_literal_global_4];
  qword_1ED6F3F20 = result;
  return result;
}

__MDPlistBytes *__42___MDPlistBytes_emptyDictionaryPlistBytes__block_invoke()
{
  result = [_MDPlistBytes createDictionaryPlistBytesUsingBlock:&__block_literal_global_8];
  qword_1ED6F3F30 = result;
  return result;
}

void __37___MDPlistBytes_nullObjectPlistBytes__block_invoke()
{
  v0 = [[_MDMutablePlistBytes alloc] initWithCapacity:0 useMalloc:0];
  if (!v0)
  {
    +[_MDPlistBytes createPlistBytes:];
  }

  v1 = v0;
  CFRetain(v0);

  _MDPlistBytesBeginPlist(v1);
  __MDPlistBytesAddObject(v1, *MEMORY[0x1E695E738]);
  _MDPlistBytesEndPlist(v1);
  if (*(v1 + 32))
  {
    CFRelease(v1);
    v1 = 0;
  }

  else
  {
    *(v1 + 34) &= ~1u;
  }

  qword_1ED6F3F40 = v1;
}

@end