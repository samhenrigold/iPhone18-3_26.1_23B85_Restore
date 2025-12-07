@interface IOHIDOutputTransactionClass
- (IOHIDOutputTransactionClass)initWithDevice:(id)device;
- (int)getElementValue:(unsigned int)value value:(IOHIDEventStruct *)a4 options:(unsigned int)options;
- (int)queryInterface:(id)interface outInterface:(void *)outInterface;
- (int)setElementValue:(unsigned int)value value:(IOHIDEventStruct *)a4 options:(unsigned int)options;
- (void)dealloc;
@end

@implementation IOHIDOutputTransactionClass

- (int)queryInterface:(id)interface outInterface:(void *)outInterface
{
  v6 = CFUUIDCreateFromUUIDBytes(0, interface);
  v7 = CFUUIDGetConstantUUIDWithBytes(0, 0x80u, 0xCDu, 0xCCu, 0, 0x75u, 0x5Du, 0x11u, 0xD4u, 0x80u, 0xEFu, 0, 5u, 2u, 0x8Fu, 0x18u, 0xD5u);
  if (!CFEqual(v6, v7))
  {
    v8 = -2147483644;
    if (!v6)
    {
      return v8;
    }

    goto LABEL_3;
  }

  *outInterface = &self->_outputInterface;
  CFRetain(self);
  v8 = 0;
  if (v6)
  {
LABEL_3:
    CFRelease(v6);
  }

  return v8;
}

- (int)setElementValue:(unsigned int)value value:(IOHIDEventStruct *)a4 options:(unsigned int)options
{
  v5 = -536870212;
  if (!a4)
  {
    return -536870206;
  }

  v6 = *&options;
  v7 = *&value;
  WeakRetained = objc_loadWeakRetained(&self->super._device);
  Element = objc_msgSend_getElement_(WeakRetained, v10, v7);

  v12 = _IOHIDValueCreateWithStruct();
  v14 = v12;
  if (Element)
  {
    v15 = v12 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    if (!v12)
    {
      return v5;
    }
  }

  else
  {
    v5 = objc_msgSend_setValue_value_options_(self, v13, Element, v12, v6);
  }

  CFRelease(v14);
  return v5;
}

- (int)getElementValue:(unsigned int)value value:(IOHIDEventStruct *)a4 options:(unsigned int)options
{
  if (!a4)
  {
    return -536870206;
  }

  v5 = *&options;
  v7 = *&value;
  WeakRetained = objc_loadWeakRetained(&self->super._device);
  Element = objc_msgSend_getElement_(WeakRetained, v10, v7);

  value = 0xAAAAAAAAAAAAAAAALL;
  Value_value_options = objc_msgSend_getValue_value_options_(self, v12, Element, &value, v5);
  if (!Value_value_options)
  {
    v14 = IOHIDValueGetElement(value);
    v15 = [HIDLibElement alloc];
    v17 = objc_msgSend_initWithElementRef_(v15, v16, v14);
    objc_msgSend_setValueRef_(v17, v18, value);
    v21 = objc_msgSend_length(v17, v19, v20);
    a4->type = objc_msgSend_type(v17, v22, v23);
    a4->elementCookie = objc_msgSend_elementCookie(v17, v24, v25);
    a4->timestamp = objc_msgSend_timestamp(v17, v26, v27);
    v30 = v21;
    if (v21 < 5uLL)
    {
      a4->longValueSize = 0;
      a4->longValue = 0;
      a4->value = objc_msgSend_integerValue(v17, v28, v29);
    }

    else
    {
      a4->longValueSize = v21;
      v31 = malloc_type_malloc(v21, 0xA1DABBB7uLL);
      a4->longValue = v31;
      BytePtr = IOHIDValueGetBytePtr(value);
      memmove(v31, BytePtr, v30);
    }
  }

  return Value_value_options;
}

- (IOHIDOutputTransactionClass)initWithDevice:(id)device
{
  v11.receiver = self;
  v11.super_class = IOHIDOutputTransactionClass;
  v3 = [(IOHIDTransactionClass *)&v11 initWithDevice:device];
  v4 = v3;
  if (v3)
  {
    v3->super._direction = 1;
    v5 = malloc_type_malloc(0x98uLL, 0x800407567D3B1uLL);
    v4->_outputInterface = v5;
    vtbl = v4->super.super._vtbl;
    Release = vtbl->Release;
    v8 = *&vtbl->QueryInterface;
    *v5 = v4;
    *(v5 + 8) = v8;
    *(v5 + 3) = Release;
    *(v5 + 4) = sub_29D3F1018;
    *(v5 + 5) = sub_29D3F1094;
    *(v5 + 6) = sub_29D3F10DC;
    *(v5 + 7) = sub_29D3F1128;
    *(v5 + 8) = sub_29D3F1170;
    *(v5 + 9) = sub_29D3F1178;
    *(v5 + 10) = sub_29D3F1180;
    *(v5 + 11) = sub_29D3F11F0;
    *(v5 + 12) = sub_29D3F1260;
    *(v5 + 13) = sub_29D3F12DC;
    *(v5 + 14) = sub_29D3F12F4;
    *(v5 + 15) = sub_29D3F130C;
    *(v5 + 16) = sub_29D3F1324;
    *(v5 + 17) = sub_29D3F133C;
    *(v5 + 18) = sub_29D3F1358;
    v9 = v4;
  }

  return v4;
}

- (void)dealloc
{
  free(self->_outputInterface);
  v3.receiver = self;
  v3.super_class = IOHIDOutputTransactionClass;
  [(IOHIDTransactionClass *)&v3 dealloc];
}

@end