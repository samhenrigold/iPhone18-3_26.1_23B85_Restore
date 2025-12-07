@interface IOHIDDeviceClass
- (IOHIDDeviceClass)init;
- (__IOHIDElement)getElement:(unsigned int)element;
- (id)copyObsoleteDictionary:(id)dictionary;
- (id)propertyForElementKey:(id)key;
- (int)close:(unsigned int)close;
- (int)copyMatchingElements:(id)elements elements:(const __CFArray *)a4 options:(unsigned int)options;
- (int)getAsyncEventSource:(const void *)source;
- (int)getProperty:(id)property property:(const void *)a4;
- (int)getReport:(int)report reportID:(unsigned int)d report:(char *)a5 reportLength:(int64_t *)length timeout:(unsigned int)timeout callback:(void *)callback context:(void *)context options:(unsigned int)self0;
- (int)getValue:(__IOHIDElement *)value value:(__IOHIDValue *)a4 timeout:(unsigned int)timeout callback:(void *)callback context:(void *)context options:(unsigned int)options;
- (int)initConnect;
- (int)initElements;
- (int)open:(unsigned int)open;
- (int)probe:(id)probe service:(unsigned int)service outScore:(int *)score;
- (int)queryInterface:(id)interface outInterface:(void *)outInterface;
- (int)setInputReportCallback:(char *)callback reportLength:(int64_t)length callback:(void *)a5 context:(void *)context options:(unsigned int)options;
- (int)setInputReportWithTimeStampCallback:(char *)callback reportLength:(int64_t)length callback:(void *)a5 context:(void *)context options:(unsigned int)options;
- (int)setProperty:(id)property property:(id)a4;
- (int)setReport:(int)report reportID:(unsigned int)d report:(const char *)a5 reportLength:(int64_t)length timeout:(unsigned int)timeout callback:(void *)callback context:(void *)context options:(unsigned int)self0;
- (int)setValue:(__IOHIDElement *)value value:(__IOHIDValue *)a4 timeout:(unsigned int)timeout callback:(void *)callback context:(void *)context options:(unsigned int)options;
- (int)start:(id)start service:(unsigned int)service;
- (void)dealloc;
- (void)initPort;
- (void)initQueue;
- (void)releaseReport:(unint64_t)report;
- (void)valueAvailableCallback:(int)callback;
@end

@implementation IOHIDDeviceClass

- (int)initConnect
{
  os_unfair_recursive_lock_lock_with_options();
  if (!self->_connect)
  {
    connect = -1431655766;
    os_unfair_recursive_lock_unlock();
    v3 = IOServiceOpen(self->_service, *MEMORY[0x29EDCA6B0], 0x484944u, &connect);
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = connect == 0;
    }

    if (v4)
    {
      v5 = v3;
      sub_29D3FCA38(v3);
      return v5;
    }

    os_unfair_recursive_lock_lock_with_options();
    self->_connect = connect;
  }

  os_unfair_recursive_lock_unlock();
  return 0;
}

- (int)queryInterface:(id)interface outInterface:(void *)outInterface
{
  v5 = *&interface.var8;
  v6 = *&interface.var0;
  v8 = CFUUIDCreateFromUUIDBytes(0, interface);
  v9 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
  if (CFEqual(v8, v9) || (v10 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu), CFEqual(v8, v10)))
  {
    v11 = 16;
LABEL_4:
    *outInterface = self + v11;
    CFRetain(self);
    Interface_outInterface = 0;
    goto LABEL_5;
  }

  v14 = CFUUIDGetConstantUUIDWithBytes(0, 0x47u, 0x4Bu, 0xDCu, 0x8Eu, 0x9Fu, 0x4Au, 0x11u, 0xDAu, 0xB3u, 0x66u, 0, 0xDu, 0x93u, 0x6Du, 6u, 0xD2u);
  if (CFEqual(v8, v14) || (v15 = CFUUIDGetConstantUUIDWithBytes(0, 0xB4u, 0x73u, 0x25u, 0x6Cu, 0x6Au, 0x72u, 0x4Eu, 4u, 0xB6u, 0x94u, 0xC4u, 0, 0x1Du, 0x20u, 0x20u, 0x20u), CFEqual(v8, v15)))
  {
    v11 = 24;
    goto LABEL_4;
  }

  v16 = CFUUIDGetConstantUUIDWithBytes(0, 0x2Eu, 0xC7u, 0x8Bu, 0xDBu, 0x9Fu, 0x4Eu, 0x11u, 0xDAu, 0xB6u, 0x5Cu, 0, 0xDu, 0x93u, 0x6Du, 6u, 0xD2u);
  if (CFEqual(v8, v16))
  {
    objc_msgSend_initPort(self, v17, v18);
    objc_msgSend_initElements(self, v19, v20);
    v21 = IOHIDQueueClass;
LABEL_15:
    v27 = [v21 alloc];
    v29 = objc_msgSend_initWithDevice_(v27, v28, self);
    Interface_outInterface = objc_msgSend_queryInterface_outInterface_(v29, v30, v6, v5, outInterface);

    goto LABEL_5;
  }

  v22 = CFUUIDGetConstantUUIDWithBytes(0, 0x1Fu, 0x2Eu, 0x78u, 0xFAu, 0x9Fu, 0xFAu, 0x11u, 0xDAu, 0x90u, 0xB4u, 0, 0xDu, 0x93u, 0x6Du, 6u, 0xD2u);
  if (CFEqual(v8, v22))
  {
    objc_msgSend_initPort(self, v23, v24);
    objc_msgSend_initElements(self, v25, v26);
    v21 = IOHIDTransactionClass;
    goto LABEL_15;
  }

  Interface_outInterface = -2147483644;
LABEL_5:
  if (v8)
  {
    CFRelease(v8);
  }

  return Interface_outInterface;
}

- (int)probe:(id)probe service:(unsigned int)service outScore:(int *)score
{
  if (IOObjectConformsTo(service, "IOHIDDevice"))
  {
    return 0;
  }

  else
  {
    return -536870201;
  }
}

- (__IOHIDElement)getElement:(unsigned int)element
{
  if (objc_msgSend_count(self->_sortedElements, a2, *&element) <= element)
  {
    return 0;
  }

  v6 = objc_msgSend_objectAtIndex_(self->_sortedElements, v5, element);
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = objc_msgSend_elementRef(v6, v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int)start:(id)start service:(unsigned int)service
{
  v6 = IOObjectRetain(service);
  v7 = v6;
  if (v6)
  {
    sub_29D3FCADC(v6);
  }

  else
  {
    os_unfair_recursive_lock_lock_with_options();
    self->_service = service;
    os_unfair_recursive_lock_unlock();
  }

  return v7;
}

- (int)getProperty:(id)property property:(const void *)a4
{
  propertyCopy = property;
  if (a4)
  {
    os_unfair_recursive_lock_lock_with_options();
    v8 = objc_msgSend_objectForKeyedSubscript_(self->_properties, v7, propertyCopy);

    os_unfair_recursive_lock_unlock();
    if (!v8)
    {
      if (objc_msgSend_isEqualToString_(propertyCopy, v9, @"UniqueID"))
      {
        entryID = 0xAAAAAAAAAAAAAAAALL;
        IORegistryEntryGetRegistryEntryID(self->_service, &entryID);
        CFProperty = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberLongLongType, &entryID);
      }

      else
      {
        isEqualToString = objc_msgSend_isEqualToString_(propertyCopy, v10, @"Built-In");
        service = self->_service;
        if (isEqualToString)
        {
          CFProperty = IORegistryEntryCreateCFProperty(service, propertyCopy, *MEMORY[0x29EDB8ED8], 0);
        }

        else
        {
          CFProperty = IORegistryEntrySearchCFProperty(service, "IOService", propertyCopy, *MEMORY[0x29EDB8ED8], 3u);
        }
      }

      v8 = CFProperty;
      if (CFProperty)
      {
        v17 = objc_msgSend_mutableCopy(propertyCopy, v12, v13);
        os_unfair_recursive_lock_lock_with_options();
        objc_msgSend_setObject_forKeyedSubscript_(self->_properties, v18, v8, v17);
        os_unfair_recursive_lock_unlock();
        CFRelease(v8);
      }
    }

    v14 = 0;
    *a4 = v8;
  }

  else
  {
    v14 = -536870206;
  }

  return v14;
}

- (int)getAsyncEventSource:(const void *)source
{
  if (!source)
  {
    return -536870206;
  }

  objc_msgSend_initPort(self, a2, source);
  os_unfair_recursive_lock_lock_with_options();
  *source = self->_runLoopSource;
  os_unfair_recursive_lock_unlock();
  return 0;
}

- (id)propertyForElementKey:(id)key
{
  keyCopy = key;
  v5 = objc_msgSend_substringToIndex_(keyCopy, v4, 1);
  v8 = objc_msgSend_lowercaseString(v5, v6, v7);

  v10 = objc_msgSend_stringByReplacingCharactersInRange_withString_(keyCopy, v9, 0, 1, v8);

  return v10;
}

- (id)copyObsoleteDictionary:(id)dictionary
{
  v121 = *MEMORY[0x29EDCA608];
  dictionaryCopy = dictionary;
  v108 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  obj = dictionaryCopy;
  v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v116, v120, 16);
  if (v109)
  {
    v107 = *v117;
    do
    {
      for (i = 0; i != v109; ++i)
      {
        if (*v117 != v107)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v116 + 1) + 8 * i);
        *&v9 = 0xAAAAAAAAAAAAAAAALL;
        *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
        HIDWORD(v114) = -1431655766;
        v115 = -1431655766;
        v112 = v9;
        v113 = v9;
        DWORD2(v110) = -1431655766;
        v111 = -1431655766;
        if (v8)
        {
          objc_msgSend_elementStruct(v8, v5, v6);
        }

        else
        {
          v114 = 0u;
          v115 = 0;
          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0;
        }

        v10 = objc_alloc_init(MEMORY[0x29EDB8E00]);
        v11 = MEMORY[0x29EDBA070];
        v14 = objc_msgSend_elementCookie(v8, v12, v13);
        v16 = objc_msgSend_numberWithUnsignedInt_(v11, v15, v14);
        objc_msgSend_setObject_forKeyedSubscript_(v10, v17, v16, @"ElementCookie");

        v19 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x29EDBA070], v18, DWORD2(v110));
        objc_msgSend_setObject_forKeyedSubscript_(v10, v20, v19, @"CollectionCookie");

        v21 = MEMORY[0x29EDBA070];
        v24 = objc_msgSend_type(v8, v22, v23);
        v26 = objc_msgSend_numberWithUnsignedInt_(v21, v25, v24);
        objc_msgSend_setObject_forKeyedSubscript_(v10, v27, v26, @"Type");

        v28 = MEMORY[0x29EDBA070];
        v31 = objc_msgSend_usage(v8, v29, v30);
        v33 = objc_msgSend_numberWithUnsignedInt_(v28, v32, v31);
        objc_msgSend_setObject_forKeyedSubscript_(v10, v34, v33, @"Usage");

        v35 = MEMORY[0x29EDBA070];
        v38 = objc_msgSend_usagePage(v8, v36, v37);
        v40 = objc_msgSend_numberWithUnsignedInt_(v35, v39, v38);
        objc_msgSend_setObject_forKeyedSubscript_(v10, v41, v40, @"UsagePage");

        v42 = MEMORY[0x29EDBA070];
        v45 = objc_msgSend_reportID(v8, v43, v44);
        v47 = objc_msgSend_numberWithUnsignedChar_(v42, v46, v45);
        objc_msgSend_setObject_forKeyedSubscript_(v10, v48, v47, @"ReportID");

        if (HIDWORD(v114))
        {
          v50 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x29EDBA070], v49, v115);
          objc_msgSend_setObject_forKeyedSubscript_(v10, v51, v50, @"DuplicateIndex");
        }

        v52 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x29EDBA070], v49, DWORD1(v113));
        objc_msgSend_setObject_forKeyedSubscript_(v10, v53, v52, @"Size");

        v55 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x29EDBA070], v54, DWORD2(v113));
        objc_msgSend_setObject_forKeyedSubscript_(v10, v56, v55, @"ReportSize");

        v58 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x29EDBA070], v57, HIDWORD(v113));
        objc_msgSend_setObject_forKeyedSubscript_(v10, v59, v58, @"ReportCount");

        v61 = objc_msgSend_numberWithBool_(MEMORY[0x29EDBA070], v60, (v111 >> 6) & 1);
        objc_msgSend_setObject_forKeyedSubscript_(v10, v62, v61, @"HasNullState");

        v64 = objc_msgSend_numberWithBool_(MEMORY[0x29EDBA070], v63, (v111 >> 5) & 1);
        objc_msgSend_setObject_forKeyedSubscript_(v10, v65, v64, @"HasPreferredState");

        v67 = objc_msgSend_numberWithBool_(MEMORY[0x29EDBA070], v66, (v111 >> 4) & 1);
        objc_msgSend_setObject_forKeyedSubscript_(v10, v68, v67, @"IsNonLinear");

        v70 = objc_msgSend_numberWithBool_(MEMORY[0x29EDBA070], v69, (v111 >> 2) & 1);
        objc_msgSend_setObject_forKeyedSubscript_(v10, v71, v70, @"IsRelative");

        v73 = objc_msgSend_numberWithBool_(MEMORY[0x29EDBA070], v72, (v111 >> 3) & 1);
        objc_msgSend_setObject_forKeyedSubscript_(v10, v74, v73, @"IsWrapping");

        v76 = objc_msgSend_numberWithBool_(MEMORY[0x29EDBA070], v75, (v111 >> 1) & 1);
        objc_msgSend_setObject_forKeyedSubscript_(v10, v77, v76, @"IsArray");

        v79 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v78, DWORD2(v112));
        objc_msgSend_setObject_forKeyedSubscript_(v10, v80, v79, @"Max");

        v82 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v81, DWORD1(v112));
        objc_msgSend_setObject_forKeyedSubscript_(v10, v83, v82, @"Min");

        v85 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v84, v113);
        objc_msgSend_setObject_forKeyedSubscript_(v10, v86, v85, @"ScaledMax");

        v88 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v87, HIDWORD(v112));
        objc_msgSend_setObject_forKeyedSubscript_(v10, v89, v88, @"ScaledMin");

        v90 = MEMORY[0x29EDBA070];
        v93 = objc_msgSend_unit(v8, v91, v92);
        v95 = objc_msgSend_numberWithUnsignedInt_(v90, v94, v93);
        objc_msgSend_setObject_forKeyedSubscript_(v10, v96, v95, @"Unit");

        v97 = MEMORY[0x29EDBA070];
        v100 = objc_msgSend_unitExponent(v8, v98, v99);
        v102 = objc_msgSend_numberWithUnsignedChar_(v97, v101, v100);
        objc_msgSend_setObject_forKeyedSubscript_(v10, v103, v102, @"UnitExponent");

        objc_msgSend_addObject_(v108, v104, v10);
      }

      v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v116, v120, 16);
    }

    while (v109);
  }

  return v108;
}

- (int)copyMatchingElements:(id)elements elements:(const __CFArray *)a4 options:(unsigned int)options
{
  optionsCopy = options;
  v28 = *MEMORY[0x29EDCA608];
  elementsCopy = elements;
  if (a4)
  {
    inited = objc_msgSend_initElements(self, v8, v9);
    if (!inited)
    {
      os_unfair_recursive_lock_lock_with_options();
      v12 = objc_alloc(MEMORY[0x29EDB8DE8]);
      v14 = objc_msgSend_initWithArray_(v12, v13, self->_elements);
      os_unfair_recursive_lock_unlock();
      v24[0] = MEMORY[0x29EDCA5F8];
      v24[1] = 3221225472;
      v24[2] = sub_29D3F7D94;
      v24[3] = &unk_29F34D200;
      v24[4] = self;
      v15 = v14;
      v25 = v15;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(elementsCopy, v16, v24);
      v19 = objc_msgSend_count(v15, v17, v18);
      if (v19)
      {
        if (optionsCopy)
        {
          v19 = objc_msgSend_copyObsoleteDictionary_(self, v20, v15);
        }

        else
        {
          sub_29D3FCB80(&v23, v15, v27, &v26);
          v19 = v26;
        }
      }

      v21 = v19;
      *a4 = v21;

      inited = 0;
    }
  }

  else
  {
    inited = -536870206;
  }

  return inited;
}

- (int)getValue:(__IOHIDElement *)value value:(__IOHIDValue *)a4 timeout:(unsigned int)timeout callback:(void *)callback context:(void *)context options:(unsigned int)options
{
  v44 = *MEMORY[0x29EDCA608];
  v8 = -536870206;
  input[0] = 0;
  input[1] = 0;
  v43 = 0;
  if (!a4)
  {
    v22 = 0;
    v19 = 0;
    goto LABEL_26;
  }

  os_unfair_recursive_lock_lock_with_options();
  if (!self->_opened)
  {
    v22 = 0;
    v19 = 0;
    v8 = -536870195;
    goto LABEL_32;
  }

  inited = objc_msgSend_initElements(self, v13, v14);
  if (inited)
  {
    v22 = 0;
    v19 = 0;
    v8 = inited;
    goto LABEL_32;
  }

  v16 = [HIDLibElement alloc];
  v19 = objc_msgSend_initWithElementRef_(v16, v17, value);
  if (!v19)
  {
    v22 = 0;
    v8 = -536870212;
    goto LABEL_32;
  }

  v20 = objc_msgSend_indexOfObject_(self->_elements, v18, v19);
  if (v20 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = 0;
    goto LABEL_32;
  }

  v22 = objc_msgSend_objectAtIndex_(self->_elements, v21, v20);
  if (objc_msgSend_type(v22, v23, v24) == 513)
  {
LABEL_32:
    os_unfair_recursive_lock_unlock();
    goto LABEL_26;
  }

  if (objc_msgSend_valueRef(v22, v25, v26))
  {
    *a4 = objc_msgSend_valueRef(v22, v27, v28);
  }

  if ((options & 0x10000) != 0)
  {
    v8 = 0;
    goto LABEL_32;
  }

  if ((options & 0x40000) != 0 || objc_msgSend_type(v22, v27, v28) != 257)
  {
    v43 = (options & 0x20000) == 0;
  }

  inputStruct = objc_msgSend_elementCookie(v22, v27, v28);
  objc_msgSend_elementRef(v22, v29, v30);
  v40 = _IOHIDElementGetLength() + 24;
  outputStruct = malloc_type_malloc(v40, 0x1000040504FFAC1uLL);
  v8 = IOConnectCallMethod(self->_connect, 0xAu, input, 3u, &inputStruct, 4uLL, 0, 0, outputStruct, &v40);
  if (v8)
  {
    os_unfair_recursive_lock_unlock();
    if (!outputStruct)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v34 = outputStruct[1];
    if (off_2A1C00728 && off_2A1C00728() && off_2A1C00730)
    {
      v34 = off_2A1C00730(v34);
    }

    if (!objc_msgSend_valueRef(v22, v32, v33) || objc_msgSend_timestamp(v22, v35, v36) < v34 || objc_msgSend_type(v22, v35, v36) == 257)
    {
      objc_msgSend_elementRef(v22, v35, v36);
      v37 = _IOHIDValueCreateWithElementValuePtr();
      if (v37)
      {
        v38 = v37;
        objc_msgSend_setValueRef_(v22, v35, v37);
        CFRelease(v38);
      }
    }

    *a4 = objc_msgSend_valueRef(v22, v35, v36);
    os_unfair_recursive_lock_unlock();
  }

  free(outputStruct);
LABEL_26:

  return v8;
}

- (void)valueAvailableCallback:(int)callback
{
  value = 0xAAAAAAAAAAAAAAAALL;
  os_unfair_recursive_lock_lock_with_options();
  inputReportBufferLength = self->_inputReportBufferLength;
  inputReportBuffer = self->_inputReportBuffer;
  os_unfair_recursive_lock_unlock();
  if (!objc_msgSend_copyNextValue_(self->_queue, v5, &value))
  {
    Length = 0;
    do
    {
      if (IOHIDValueGetBytePtr(value) && IOHIDValueGetLength(value))
      {
        Length = inputReportBufferLength;
        if (inputReportBufferLength >= IOHIDValueGetLength(value))
        {
          Length = IOHIDValueGetLength(value);
        }

        v9 = value;
        if ((Length & 0x8000000000000000) != 0)
        {
          goto LABEL_14;
        }

        BytePtr = IOHIDValueGetBytePtr(value);
        memmove(inputReportBuffer, BytePtr, Length);
      }

      Element = IOHIDValueGetElement(value);
      ReportID = IOHIDElementGetReportID(Element);
      TimeStamp = IOHIDValueGetTimeStamp(value);
      os_unfair_recursive_lock_lock_with_options();
      inputReportCallback = self->_inputReportCallback;
      inputReportTimestampCallback = self->_inputReportTimestampCallback;
      inputReportContext = self->_inputReportContext;
      os_unfair_recursive_lock_unlock();
      if (inputReportCallback)
      {
        os_unfair_recursive_lock_lock_with_options();
        (inputReportCallback)(inputReportContext, 0, &self->_device, 0, ReportID, inputReportBuffer, Length);
        os_unfair_recursive_lock_unlock();
      }

      if (inputReportTimestampCallback)
      {
        os_unfair_recursive_lock_lock_with_options();
        (inputReportTimestampCallback)(inputReportContext, 0, &self->_device, 0, ReportID, inputReportBuffer, Length, TimeStamp);
        os_unfair_recursive_lock_unlock();
      }

      v9 = value;
LABEL_14:
      CFRelease(v9);
    }

    while (!objc_msgSend_copyNextValue_(self->_queue, v17, &value));
  }

  objc_msgSend_signalQueueEmpty(self->_queue, v6, v7, inputReportBufferLength);
}

- (int)setInputReportCallback:(char *)callback reportLength:(int64_t)length callback:(void *)a5 context:(void *)context options:(unsigned int)options
{
  os_unfair_recursive_lock_lock_with_options();
  os_unfair_recursive_lock_lock_with_options();
  self->_inputReportBuffer = callback;
  self->_inputReportBufferLength = length;
  self->_inputReportContext = context;
  self->_inputReportCallback = a5;
  os_unfair_recursive_lock_unlock();
  os_unfair_recursive_lock_unlock();
  objc_msgSend_initQueue(self, v12, v13);
  os_unfair_recursive_lock_lock_with_options();
  if (self->_opened)
  {
    objc_msgSend_start(self->_queue, v14, v15);
  }

  os_unfair_recursive_lock_unlock();
  return 0;
}

- (int)setInputReportWithTimeStampCallback:(char *)callback reportLength:(int64_t)length callback:(void *)a5 context:(void *)context options:(unsigned int)options
{
  os_unfair_recursive_lock_lock_with_options();
  self->_inputReportBuffer = callback;
  self->_inputReportBufferLength = length;
  self->_inputReportContext = context;
  self->_inputReportTimestampCallback = a5;
  os_unfair_recursive_lock_unlock();
  objc_msgSend_initQueue(self, v12, v13);
  os_unfair_recursive_lock_lock_with_options();
  if (self->_opened)
  {
    objc_msgSend_start(self->_queue, v14, v15);
  }

  os_unfair_recursive_lock_unlock();
  return 0;
}

- (void)releaseReport:(unint64_t)report
{
  v3[1] = *MEMORY[0x29EDCA608];
  v3[0] = report;
  IOConnectCallScalarMethod(self->_connect, 0x11u, v3, 1u, 0, 0);
}

- (IOHIDDeviceClass)init
{
  v11.receiver = self;
  v11.super_class = IOHIDDeviceClass;
  v2 = [(IOHIDPlugin *)&v11 init];
  if (v2)
  {
    v3 = malloc_type_malloc(0x80uLL, 0x800408754F03FuLL);
    v2->_device = v3;
    vtbl = v2->super.super._vtbl;
    Release = vtbl->Release;
    v6 = *&vtbl->QueryInterface;
    *v3 = v2;
    *(v3 + 8) = v6;
    *(v3 + 3) = Release;
    *(v3 + 4) = sub_29D3EFFF4;
    *(v3 + 5) = sub_29D3EFC3C;
    *(v3 + 6) = sub_29D3F8960;
    *(v3 + 7) = sub_29D3F8974;
    *(v3 + 8) = sub_29D3F8988;
    *(v3 + 9) = sub_29D3F8998;
    *(v3 + 10) = sub_29D3F89B0;
    *(v3 + 11) = sub_29D3F89D4;
    *(v3 + 12) = sub_29D3F89F8;
    *(v3 + 13) = sub_29D3EFBA0;
    *(v3 + 14) = sub_29D3EFA38;
    *(v3 + 15) = sub_29D3F8A18;
    v7 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    properties = v2->_properties;
    v2->_properties = v7;

    v2->_deviceLock = 0;
    v2->_callbackLock = 0;
    v9 = v2;
  }

  return v2;
}

- (void)dealloc
{
  free(self->_device);
  runLoopSource = self->_runLoopSource;
  if (runLoopSource)
  {
    CFRelease(runLoopSource);
  }

  machPort = self->_machPort;
  if (machPort)
  {
    CFMachPortInvalidate(machPort);
    CFRelease(self->_machPort);
  }

  port = self->_port;
  if (port)
  {
    mach_port_mod_refs(*MEMORY[0x29EDCA6B0], port, 1u, -1);
  }

  connect = self->_connect;
  if (connect)
  {
    IOServiceClose(connect);
  }

  service = self->_service;
  if (service)
  {
    IOObjectRelease(service);
  }

  v8.receiver = self;
  v8.super_class = IOHIDDeviceClass;
  [(IOHIDPlugin *)&v8 dealloc];
}

- (int)initElements
{
  v149 = *MEMORY[0x29EDCA608];
  output = 0xAAAAAAAAAAAAAAAALL;
  v148 = 0xAAAAAAAAAAAAAAAALL;
  outputCnt = 2;
  v139 = 0xAAAAAAAAAAAAAAAALL;
  v140 = 0;
  os_unfair_recursive_lock_lock_with_options();
  elements = self->_elements;
  os_unfair_recursive_lock_unlock();
  if (elements)
  {
    return 0;
  }

  inited = objc_msgSend_initConnect(self, v4, v5);
  if (inited)
  {
    return inited;
  }

  v7 = IOConnectCallScalarMethod(self->_connect, 0xEu, 0, 0, &output, &outputCnt);
  if (v7)
  {
    v116 = v7;
    v10 = _IOHIDLogCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v145 = 67109120;
      v146 = v116;
      sub_29D3F8D30(&dword_29D3EE000, v10, v118, "IOConnectCallScalarMethod(kIOHIDLibUserClientGetElementCount):%x\n", &v145);
    }
  }

  else
  {
    v121 = v148;
    v139 = 96 * output;
    v8 = objc_alloc(MEMORY[0x29EDB8DF8]);
    v10 = objc_msgSend_initWithLength_(v8, v9, v139);
    connect = self->_connect;
    v12 = v10;
    v15 = objc_msgSend_mutableBytes(v12, v13, v14);
    v20 = sub_29D3EFB80(connect, 0xFu, &v140, 1u, v16, v17, v18, v19, v15, &v139);
    if (v20)
    {
      v116 = v20;
      v119 = _IOHIDLogCategory();
      if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
      {
        v145 = 67109120;
        v146 = v116;
        sub_29D3F8D30(&dword_29D3EE000, v119, v120, "IOConnectCallMethod(kIOHIDLibUserClientGetElements):%x\n", &v145);
      }
    }

    else
    {
      os_unfair_recursive_lock_lock_with_options();
      v21 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
      v22 = self->_elements;
      self->_elements = v21;

      if (v139)
      {
        v23 = 0;
        v126 = 0;
        v123 = v10;
        while (1)
        {
          v24 = v10;
          v27 = (objc_msgSend_mutableBytes(v24, v25, v26) + v23);
          v28 = *v27;
          v29 = v27[1];
          v30 = v126;
          if (v29 > v126)
          {
            v30 = v27[1];
          }

          v126 = v30;
          if (v27[2])
          {
            v122 = v27[1];
            v124 = *v27;
            v137 = 0u;
            v138 = 0u;
            v135 = 0u;
            v136 = 0u;
            v31 = self->_elements;
            v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v135, v144, 16);
            if (v33)
            {
              v36 = v33;
              v37 = 0;
              v38 = *v136;
              do
              {
                for (i = 0; i != v36; ++i)
                {
                  if (*v136 != v38)
                  {
                    objc_enumerationMutation(v31);
                  }

                  v40 = *(*(&v135 + 1) + 8 * i);
                  v41 = v27[2];
                  if (v41 == objc_msgSend_elementCookie(v40, v34, v35))
                  {
                    v37 = objc_msgSend_elementRef(v40, v34, v35);
                  }
                }

                v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v34, &v135, v144, 16);
              }

              while (v36);
            }

            else
            {
              v37 = 0;
            }

            v43 = *v27;
            v42 = v27[1];
            v10 = v123;
            v28 = v124;
            v29 = v122;
          }

          else
          {
            v37 = 0;
            v42 = v27[1];
            v43 = *v27;
          }

          if (v43 == v42)
          {
            break;
          }

          if (v29 + 1 != v28)
          {
            v125 = v23;
            v50 = 0;
            v51 = 0;
            if (v29 + 1 - v28 <= 1)
            {
              v52 = 1;
            }

            else
            {
              v52 = v29 + 1 - v28;
            }

            do
            {
              v53 = [HIDLibElement alloc];
              v46 = objc_msgSend_initWithElementStruct_parent_index_(v53, v54, v27, v37, v50);

              objc_msgSend_elementRef(v46, v55, v56);
              _IOHIDElementSetDeviceInterface();
              objc_msgSend_addObject_(self->_elements, v57, v46);
              v50 = (v50 + 1);
              v51 = v46;
            }

            while (v52 != v50);
            goto LABEL_30;
          }

LABEL_31:
          v23 = (v23 + 96);
          if (v23 >= v139)
          {
            goto LABEL_34;
          }
        }

        v125 = v23;
        v44 = [HIDLibElement alloc];
        v46 = objc_msgSend_initWithElementStruct_parent_index_(v44, v45, v27, v37, 0);
        objc_msgSend_elementRef(v46, v47, v48);
        _IOHIDElementSetDeviceInterface();
        objc_msgSend_addObject_(self->_elements, v49, v46);
LABEL_30:

        v10 = v123;
        LODWORD(v23) = v125;
        goto LABEL_31;
      }

      v126 = 0;
LABEL_34:
      os_unfair_recursive_lock_unlock();
      v140 = 1;
      v139 = 96 * v121;
      v58 = objc_alloc(MEMORY[0x29EDB8DF8]);
      v60 = objc_msgSend_initWithLength_(v58, v59, v139);

      v61 = self->_connect;
      v62 = v60;
      v10 = v60;
      v65 = objc_msgSend_mutableBytes(v62, v63, v64);
      LODWORD(v60) = sub_29D3EFB80(v61, 0xFu, &v140, 1u, v66, v67, v68, v69, v65, &v139);
      os_unfair_recursive_lock_lock_with_options();
      if (!v60)
      {
        v70 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
        reportElements = self->_reportElements;
        self->_reportElements = v70;

        if (v139)
        {
          for (j = 0; j < v139; j = (j + 96))
          {
            v73 = v10;
            v76 = objc_msgSend_mutableBytes(v73, v74, v75);
            v77 = [HIDLibElement alloc];
            v79 = objc_msgSend_initWithElementStruct_parent_index_(v77, v78, v76 + j, 0, 0);
            objc_msgSend_addObject_(self->_reportElements, v80, v79);
            if (objc_msgSend_elementCookie(v79, v81, v82) > v126)
            {
              v126 = objc_msgSend_elementCookie(v79, v83, v84);
            }
          }
        }
      }

      v85 = objc_alloc(MEMORY[0x29EDB8DE8]);
      v87 = objc_msgSend_initWithCapacity_(v85, v86, v126 + 1);
      sortedElements = self->_sortedElements;
      self->_sortedElements = v87;

      if (v126 != -1)
      {
        v90 = 0;
        v91 = MEMORY[0x29EDB8EA8];
        do
        {
          objc_msgSend_setObject_atIndexedSubscript_(self->_sortedElements, v89, v91, v90++);
        }

        while (v126 + 1 != v90);
      }

      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v92 = self->_elements;
      v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v92, v93, &v131, v143, 16);
      if (v94)
      {
        v97 = v94;
        v98 = *v132;
        do
        {
          for (k = 0; k != v97; ++k)
          {
            if (*v132 != v98)
            {
              objc_enumerationMutation(v92);
            }

            v100 = *(*(&v131 + 1) + 8 * k);
            v101 = self->_sortedElements;
            v102 = objc_msgSend_elementCookie(v100, v95, v96);
            objc_msgSend_replaceObjectAtIndex_withObject_(v101, v103, v102, v100);
          }

          v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(v92, v95, &v131, v143, 16);
        }

        while (v97);
      }

      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v104 = self->_reportElements;
      v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(v104, v105, &v127, v142, 16);
      if (v106)
      {
        v109 = v106;
        v110 = *v128;
        do
        {
          for (m = 0; m != v109; ++m)
          {
            if (*v128 != v110)
            {
              objc_enumerationMutation(v104);
            }

            v112 = *(*(&v127 + 1) + 8 * m);
            v113 = self->_sortedElements;
            v114 = objc_msgSend_elementCookie(v112, v107, v108);
            objc_msgSend_replaceObjectAtIndex_withObject_(v113, v115, v114, v112);
          }

          v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(v104, v107, &v127, v142, 16);
        }

        while (v109);
      }

      os_unfair_recursive_lock_unlock();
      v116 = 0;
    }
  }

  return v116;
}

- (void)initPort
{
  v6.version = 0;
  memset(&v6.retain, 0, 24);
  v6.info = self;
  os_unfair_recursive_lock_lock_with_options();
  if (!self->_port)
  {
    NotificationPort = IODataQueueAllocateNotificationPort();
    self->_port = NotificationPort;
    if (NotificationPort)
    {
      v4 = *MEMORY[0x29EDB8ED8];
      v5 = CFMachPortCreateWithPort(*MEMORY[0x29EDB8ED8], NotificationPort, sub_29D3EFDDC, &v6, 0);
      self->_machPort = v5;
      if (v5)
      {
        self->_runLoopSource = CFMachPortCreateRunLoopSource(v4, v5, 0);
      }
    }
  }

  os_unfair_recursive_lock_unlock();
}

- (void)initQueue
{
  v30 = *MEMORY[0x29EDCA608];
  os_unfair_recursive_lock_lock_with_options();
  if (!self->_queue)
  {
    objc_msgSend_initPort(self, v3, v4);
    if (!objc_msgSend_initElements(self, v5, v6))
    {
      v7 = [IOHIDQueueClass alloc];
      v9 = objc_msgSend_initWithDevice_port_source_(v7, v8, self, self->_port, self->_runLoopSource);
      queue = self->_queue;
      self->_queue = v9;

      v12 = self->_queue;
      if (v12)
      {
        objc_msgSend_setValueAvailableCallback_context_(v12, v11, sub_29D3EFE1C, self);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v13 = self->_reportElements;
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v24, v29, 16);
        if (v15)
        {
          v18 = v15;
          v19 = *v25;
          do
          {
            v20 = 0;
            do
            {
              if (*v25 != v19)
              {
                objc_enumerationMutation(v13);
              }

              v21 = self->_queue;
              v22 = objc_msgSend_elementRef(*(*(&v24 + 1) + 8 * v20), v16, v17, v24);
              objc_msgSend_addElement_(v21, v23, v22);
              ++v20;
            }

            while (v18 != v20);
            v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v24, v29, 16);
          }

          while (v18);
        }
      }

      else
      {
        v13 = _IOHIDLogCategory();
        if (os_log_type_enabled(&v13->super.super, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_29D3EE000, &v13->super.super, OS_LOG_TYPE_ERROR, "Failed to create queue\n", buf, 2u);
        }
      }
    }
  }

  os_unfair_recursive_lock_unlock();
}

- (int)open:(unsigned int)open
{
  v18 = *MEMORY[0x29EDCA608];
  input = open;
  inited = objc_msgSend_initConnect(self, a2, *&open);
  if (inited)
  {
    return inited;
  }

  v5 = IOConnectCallScalarMethod(self->_connect, 1u, &input, 1u, 0, 0);
  v6 = v5;
  if (v5 == -536870203)
  {
    v7 = _IOHIDLogCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_29D3EE000, v7, OS_LOG_TYPE_INFO, "Device is seized, reports will be dropped until the seizing client closes\n", buf, 2u);
    }

    goto LABEL_7;
  }

  if (!v5)
  {
LABEL_7:
    os_unfair_recursive_lock_lock_with_options();
    if (v6)
    {
      v10 = v6 == -536870203;
    }

    else
    {
      v10 = 1;
    }

    v11 = v10;
    self->_opened = v11;
    if (self->_inputReportCallback || self->_inputReportTimestampCallback)
    {
      objc_msgSend_start(self->_queue, v8, v9);
    }

    os_unfair_recursive_lock_unlock();
    return v6;
  }

  v13 = _IOHIDLogCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v17 = v6;
    sub_29D3F8D30(&dword_29D3EE000, v13, v14, "IOConnectCallMethod(kIOHIDLibUserClientOpen):%x\n", buf);
  }

  return v6;
}

- (int)close:(unsigned int)close
{
  os_unfair_recursive_lock_lock_with_options();
  if (self->_opened)
  {
    os_unfair_recursive_lock_unlock();
    inited = objc_msgSend_initConnect(self, v4, v5);
    os_unfair_recursive_lock_lock_with_options();
    if (!inited)
    {
      if (self->_inputReportCallback || self->_inputReportTimestampCallback)
      {
        objc_msgSend_stop(self->_queue, v7, v8);
      }

      os_unfair_recursive_lock_unlock();
      inited = IOConnectCallScalarMethod(self->_connect, 2u, 0, 0, 0, 0);
      os_unfair_recursive_lock_lock_with_options();
      self->_opened = 0;
    }
  }

  else
  {
    inited = -536870195;
  }

  os_unfair_recursive_lock_unlock();
  return inited;
}

- (int)setProperty:(id)property property:(id)a4
{
  propertyCopy = property;
  v7 = a4;
  v11 = objc_msgSend_mutableCopy(propertyCopy, v8, v9);
  if (v7)
  {
    DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x29EDB8ED8], v7, 2uLL);
  }

  else
  {
    DeepCopy = 0;
  }

  if (objc_msgSend_isEqualToString_(propertyCopy, v10, @"IOHIDDeviceSuspend"))
  {
    if (self->_queue)
    {
      v17 = objc_msgSend_BOOLValue(v7, v13, v14);
      queue = self->_queue;
      if (v17)
      {
        objc_msgSend_stop(queue, v15, v16);
      }

      else
      {
        objc_msgSend_start(queue, v15, v16);
      }
    }

LABEL_14:
    v22 = 0;
  }

  else
  {
    v19 = 0;
    while (1)
    {
      v20 = off_29F34D1D8[v19];
      if (objc_msgSend_isEqualToString_(propertyCopy, v21, v20))
      {
        break;
      }

      if (++v19 == 4)
      {
        goto LABEL_14;
      }
    }

    v22 = IOConnectSetCFProperty(self->_connect, propertyCopy, v7);
  }

  os_unfair_recursive_lock_lock_with_options();
  objc_msgSend_setObject_forKeyedSubscript_(self->_properties, v23, DeepCopy, v11);
  os_unfair_recursive_lock_unlock();

  return v22;
}

- (int)setValue:(__IOHIDElement *)value value:(__IOHIDValue *)a4 timeout:(unsigned int)timeout callback:(void *)callback context:(void *)context options:(unsigned int)options
{
  v40 = *MEMORY[0x29EDCA608];
  v12 = -536870206;
  input = 0;
  os_unfair_recursive_lock_lock_with_options();
  if (!self->_opened)
  {
    v19 = 0;
    v22 = 0;
    v12 = -536870195;
    goto LABEL_17;
  }

  inited = objc_msgSend_initElements(self, v13, v14);
  if (inited)
  {
    v19 = 0;
    v22 = 0;
    v12 = inited;
    goto LABEL_17;
  }

  v16 = [HIDLibElement alloc];
  v19 = objc_msgSend_initWithElementRef_(v16, v17, value);
  if (!v19)
  {
    v22 = 0;
    goto LABEL_21;
  }

  v20 = objc_msgSend_indexOfObject_(self->_elements, v18, v19);
  if (v20 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = 0;
    goto LABEL_17;
  }

  v22 = objc_msgSend_objectAtIndex_(self->_elements, v21, v20);
  if (objc_msgSend_type(v22, v23, v24) == 129)
  {
    if (!a4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v27 = objc_msgSend_type(v22, v25, v26);
    if (!a4 || v27 != 257)
    {
      goto LABEL_17;
    }
  }

  if ((options & 0x10000) != 0)
  {
    v12 = 0;
    goto LABEL_17;
  }

  Length = IOHIDValueGetLength(a4);
  if (Length < 0)
  {
LABEL_21:
    v12 = -536870212;
    goto LABEL_17;
  }

  v29 = (Length + 8);
  v30 = malloc_type_malloc(v29, 0x940FB222uLL);
  _IOHIDValueCopyToElementValueHeader();
  v12 = IOConnectCallMethod(self->_connect, 0xBu, &input, 1u, v30, v29, 0, 0, 0, 0);
  free(v30);
  if (v12)
  {
    entryID = 0xAAAAAAAAAAAAAAAALL;
    IORegistryEntryGetRegistryEntryID(self->_service, &entryID);
    v32 = _IOHIDLogCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v37 = entryID;
      v38 = 1024;
      v39 = v12;
      _os_log_error_impl(&dword_29D3EE000, v32, OS_LOG_TYPE_ERROR, "kIOHIDLibUserClientPostElementValues(%llx):%x\n", buf, 0x12u);
    }
  }

  else
  {
    objc_msgSend_setValueRef_(v22, v31, a4);
  }

LABEL_17:
  os_unfair_recursive_lock_unlock();

  return v12;
}

- (int)setReport:(int)report reportID:(unsigned int)d report:(const char *)a5 reportLength:(int64_t)length timeout:(unsigned int)timeout callback:(void *)callback context:(void *)context options:(unsigned int)self0
{
  v27 = *MEMORY[0x29EDCA608];
  v16 = -536870212;
  input[0] = report;
  input[1] = d;
  v26 = 0;
  os_unfair_recursive_lock_lock_with_options();
  opened = self->_opened;
  os_unfair_recursive_lock_unlock();
  if (!opened)
  {
    return -536870195;
  }

  if (!callback)
  {
    return IOConnectCallMethod(self->_connect, 0xDu, input, 3u, a5, length, 0, 0, 0, 0);
  }

  sub_29D3F8D48();
  v26 = v18;
  v19 = sub_29D3F8D0C();
  if (v19)
  {
    v22 = v19;
    *v19 = report;
    *(v19 + 1) = a5;
    v19[4] = d;
    *(v19 + 3) = callback;
    *(v19 + 4) = context;
    sub_29D3F8CE0(v19, 24, v20, v21);
    v16 = IOConnectCallAsyncMethod(self->_connect, 0xDu, self->_port, reference, 3u, input, 3u, a5, length, 0, 0, 0, 0);
    if (v16)
    {
      free(v22);
    }
  }

  return v16;
}

- (int)getReport:(int)report reportID:(unsigned int)d report:(char *)a5 reportLength:(int64_t *)length timeout:(unsigned int)timeout callback:(void *)callback context:(void *)context options:(unsigned int)self0
{
  v32 = *MEMORY[0x29EDCA608];
  v10 = -536870212;
  v31 = 0;
  v28 = *length;
  if (v28 < 1)
  {
    return -536870206;
  }

  os_unfair_recursive_lock_lock_with_options();
  opened = self->_opened;
  os_unfair_recursive_lock_unlock();
  if (!opened)
  {
    return -536870195;
  }

  input[0] = report;
  input[1] = d;
  if (!callback)
  {
    v10 = sub_29D3EFB80(self->_connect, 0xCu, input, 3u, v18, v19, v20, v21, a5, &v28);
LABEL_9:
    *length = v28;
    return v10;
  }

  sub_29D3F8D48();
  v31 = v22;
  v23 = sub_29D3F8D0C();
  if (v23)
  {
    v26 = v23;
    *v23 = report;
    *(v23 + 1) = a5;
    v23[4] = d;
    *(v23 + 3) = callback;
    *(v23 + 4) = context;
    sub_29D3F8CE0(v23, 24, v24, v25);
    v10 = IOConnectCallAsyncMethod(self->_connect, 0xCu, self->_port, reference, 3u, input, 3u, 0, 0, 0, 0, a5, &v28);
    if (v10)
    {
      free(v26);
    }

    goto LABEL_9;
  }

  return v10;
}

@end