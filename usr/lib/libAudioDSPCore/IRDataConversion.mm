@interface IRDataConversion
+ (id)convertIRDataToNSDictionary:(id)dictionary;
@end

@implementation IRDataConversion

+ (id)convertIRDataToNSDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([(applesauce::CF::DataRef *)dictionaryCopy length])
  {
    applesauce::CF::DataRef::from_ns_noexcept(&v22, dictionaryCopy);
    v4 = CFURLCreateWithBytes(0, "temp", 4, 0, 0);
    v5 = v4;
    v21 = v4;
    if (!v4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25F8D0](exception, "Could not construct");
    }

    CFRetain(v4);
    cf = v5;
    IR::IRDataAttributes::IRDataAttributes(v16, &cf, 0, 0, 2, 0, 0.0);
    if (cf)
    {
      CFRelease(cf);
    }

    v17 = 2;
    v6 = v22;
    if (v22)
    {
      CFRetain(v22);
    }

    v12 = 0;
    v13 = v6;
    __p = 0;
    v11 = 0;
    IR::IRData::IRData(&v14, v16, &v13, &__p);
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    v7 = IR::IRData::createDictionaryIRData(&v14, 1);
    IR::IRData::~IRData(&v14);
    if (v20)
    {
      CFRelease(v20);
    }

    if (v19)
    {
      CFRelease(v19);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    if (v16[0])
    {
      CFRelease(v16[0]);
    }

    if (v21)
    {
      CFRelease(v21);
    }

    if (v22)
    {
      CFRelease(v22);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end