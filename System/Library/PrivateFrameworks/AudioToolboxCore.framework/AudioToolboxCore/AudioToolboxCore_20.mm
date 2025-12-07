uint64_t TAUProperty<BOOL,unsigned int,58u,ScalarConverter,0u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  ioDataSize = 4;
  outData = 0;
  if (AudioUnitGetProperty([v3 audioUnit], 0x3Au, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData != 0;
  }

  return v6;
}

void *TV3Property<BOOL,58u,0u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x3A);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    v6 = [WeakRetained _getValueForProperty:v5 error:0];

    v7 = v6;
    Value = [v7 BOOLValue];
  }

  return Value;
}

uint64_t TV3Property<BOOL,58u,0u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x3A);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

char *TV3Property<BOOL,58u,0u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, 0, v6);
  snprintf(__str, 0x80uLL, "%s@:", "B");
  result = strdup(__str);
  *(a3 + 16) = result;
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<BOOL,unsigned int,58u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,58u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = [*a3 BOOLValue];
  return AudioUnitSetProperty(v3, 0x3Au, 0, 0, &inData, 4u);
}

id std::__function::__func<TAUPropertyBase<BOOL,unsigned int,58u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,58u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  ioDataSize = 4;
  outData = 0;
  Property = AudioUnitGetProperty(v3, 0x3Au, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    if (v4)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
      *v4 = v6;
    }

    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:outData != 0];
  }

  return v7;
}

uint64_t std::__function::__func<TAUPropertyBase<BOOL,unsigned int,58u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,58u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, _DWORD **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 4u)
  {
    if (v5)
    {
      *v5 = [v6 unsignedIntValue];
    }

    v8 = 0;
    *a4 = 4;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TAUProperty<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::addV2BridgeAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::v2BridgeGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::v2BridgeSetter_Bus);
}

void TAUProperty<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::v2BridgeSetter_Bus(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  inData = v5;
  WeakRetained = objc_loadWeakRetained(v4 + 14);
  AudioUnitSetProperty([WeakRetained audioUnit], 0x19u, *(v4 + 32), *(v4 + 33), &inData, 8u);
}

id TAUProperty<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  outData = 0;
  ioDataSize = 8;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x19u, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 0;
  }

  else
  {
    v4 = outData;
  }

  return v4;
}

BOOL TAUProperty<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::addV2BridgeAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::v2BridgeGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::v2BridgeSetter_Global);
}

void TAUProperty<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::v2BridgeSetter_Global(void *a1, const char *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  inData = v6;
  if (AudioUnitSetProperty([v5 audioUnit], 0x19u, 0, 0, &inData, 8u))
  {
    v7 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v7, a2);
    (MethodImplementation)(v5, a2, v6);
  }
}

id TAUProperty<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  outData = 0;
  ioDataSize = 8;
  if (AudioUnitGetProperty([v3 audioUnit], 0x19u, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData;
  }

  return v6;
}

BOOL TV3Property<NSString * {__strong},25u,1u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},25u,1u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSString * {__strong},25u,1u>::marshalSetter_Bus);
}

void TV3Property<NSString * {__strong},25u,1u>::marshalSetter_Bus(void *a1, uint64_t a2, void *a3)
{
  v11 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x19);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    WeakRetained = objc_loadWeakRetained(v11 + 14);
    v10 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v11 + 32) element:*(v11 + 33)];
    [WeakRetained _setValue:v7 forProperty:v10 error:0];
  }
}

void sub_18F723A88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void *TV3Property<NSString * {__strong},25u,1u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x19);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

BOOL TV3Property<NSString * {__strong},25u,1u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},25u,1u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<NSString * {__strong},25u,1u>::marshalSetter_Global);
}

void TV3Property<NSString * {__strong},25u,1u>::marshalSetter_Global(void *a1, uint64_t a2, void *a3)
{
  v10 = a1;
  v4 = a3;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v5 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v5 + 8), 0x19);
  if (Value)
  {
    v7 = v4;
    v8 = v7;
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v10 _setValue:v7 forProperty:v9 error:0];
  }
}

void sub_18F723CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id TV3Property<NSString * {__strong},25u,1u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x19);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

IMP TV3Property<NSString * {__strong},25u,1u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<NSString * {__strong},25u,1u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<NSString * {__strong},25u,1u>::stubSetter);
}

char *TV3Property<NSString * {__strong},25u,1u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "@");
  result = strdup(__str);
  *(a3 + 24) = result;
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (v3 && (v5 = (*(*v3 + 8))(v3)) != 0 && ((v6 = *(v5 + 8), v7 = v6[9], v8 = v6[10], v9 = v6[11], v8 == 1297108039) ? (v10 = v7 == 1635085670) : (v10 = 0), v10 ? (v11 = v9 == 1129074009) : (v11 = 0), v11))
  {
    v13 = 4294967292;
  }

  else
  {
    v12 = v4;
    inData = v4;
    v13 = AudioUnitSetProperty(v3, 0x19u, 0, 0, &inData, 8u);
  }

  return v13;
}

id std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x19u, 0, 0, &outData, &ioDataSize);
  if (!Property)
  {
    v6 = outData;
    v7 = v6;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
    v7 = 0;
    *v4 = v6;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

id std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, id **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 8u)
  {
    v5 = **a2;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<NSString * {__strong},__CFString const*,25u,CFNSConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      *v5 = v6;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

void *TV3Property<NSArray * {__strong},13u,0u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0xD);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

id TV3Property<NSArray * {__strong},13u,0u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0xD);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

char *TV3Property<NSArray * {__strong},13u,0u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, 0, v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  result = strdup(__str);
  *(a3 + 16) = result;
  return result;
}

BOOL TAUProperty<BOOL,unsigned int,37u,ScalarConverter,1u>::addV2BridgeAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<BOOL,unsigned int,37u,ScalarConverter,1u>::v2BridgeGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<BOOL,unsigned int,37u,ScalarConverter,1u>::v2BridgeSetter_Bus);
}

void TAUProperty<BOOL,unsigned int,37u,ScalarConverter,1u>::v2BridgeSetter_Bus(void *a1, uint64_t a2, int a3)
{
  v4 = a1;
  inData = a3;
  WeakRetained = objc_loadWeakRetained(v4 + 14);
  AudioUnitSetProperty([WeakRetained audioUnit], 0x25u, *(v4 + 32), *(v4 + 33), &inData, 4u);
}

uint64_t TAUProperty<BOOL,unsigned int,37u,ScalarConverter,1u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  ioDataSize = 4;
  outData = 0;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x25u, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 1;
  }

  else
  {
    v4 = outData == 0;
  }

  v5 = !v4;

  return v5;
}

BOOL TAUProperty<BOOL,unsigned int,37u,ScalarConverter,1u>::addV2BridgeAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<BOOL,unsigned int,37u,ScalarConverter,1u>::v2BridgeGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<BOOL,unsigned int,37u,ScalarConverter,1u>::v2BridgeSetter_Global);
}

void TAUProperty<BOOL,unsigned int,37u,ScalarConverter,1u>::v2BridgeSetter_Global(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  inData = a3;
  if (AudioUnitSetProperty([v5 audioUnit], 0x25u, 0, 0, &inData, 4u))
  {
    v6 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v6, a2);
    (MethodImplementation)(v5, a2, a3);
  }
}

uint64_t TAUProperty<BOOL,unsigned int,37u,ScalarConverter,1u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  ioDataSize = 4;
  outData = 0;
  if (AudioUnitGetProperty([v3 audioUnit], 0x25u, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData != 0;
  }

  return v6;
}

BOOL TV3Property<BOOL,37u,1u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<BOOL,37u,1u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<BOOL,37u,1u>::marshalSetter_Bus);
}

void TV3Property<BOOL,37u,1u>::marshalSetter_Bus(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), 0x25);
  if (Value)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    v7 = v6;
    WeakRetained = objc_loadWeakRetained(v10 + 14);
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v10 + 32) element:*(v10 + 33)];
    [WeakRetained _setValue:v6 forProperty:v9 error:0];
  }
}

void sub_18F724B40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void *TV3Property<BOOL,37u,1u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x25);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    v6 = [WeakRetained _getValueForProperty:v5 error:0];

    v7 = v6;
    Value = [v7 BOOLValue];
  }

  return Value;
}

BOOL TV3Property<BOOL,37u,1u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<BOOL,37u,1u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<BOOL,37u,1u>::marshalSetter_Global);
}

void TV3Property<BOOL,37u,1u>::marshalSetter_Global(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), 0x25);
  if (Value)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    v7 = v6;
    v8 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v9 _setValue:v6 forProperty:v8 error:0];
  }
}

void sub_18F724D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t TV3Property<BOOL,37u,1u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x25);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

IMP TV3Property<BOOL,37u,1u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<BOOL,37u,1u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<BOOL,37u,1u>::stubSetter);
}

char *TV3Property<BOOL,37u,1u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "B");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "B");
  result = strdup(__str);
  *(a3 + 24) = result;
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<BOOL,unsigned int,37u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,37u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = [*a3 BOOLValue];
  return AudioUnitSetProperty(v3, 0x25u, 0, 0, &inData, 4u);
}

id std::__function::__func<TAUPropertyBase<BOOL,unsigned int,37u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,37u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  ioDataSize = 4;
  outData = 0;
  Property = AudioUnitGetProperty(v3, 0x25u, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    if (v4)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
      *v4 = v6;
    }

    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:outData != 0];
  }

  return v7;
}

id std::__function::__func<TAUPropertyBase<BOOL,unsigned int,37u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,37u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, unsigned int **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 4u)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:**a2];
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<BOOL,unsigned int,37u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,37u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, _DWORD **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 4u)
  {
    if (v5)
    {
      *v5 = [v6 unsignedIntValue];
    }

    v8 = 0;
    *a4 = 4;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

uint64_t TAUProperty<BOOL,unsigned int,29u,ScalarConverter,0u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  ioDataSize = 4;
  outData = 0;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x1Du, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 1;
  }

  else
  {
    v4 = outData == 0;
  }

  v5 = !v4;

  return v5;
}

uint64_t TAUProperty<BOOL,unsigned int,29u,ScalarConverter,0u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  ioDataSize = 4;
  outData = 0;
  if (AudioUnitGetProperty([v3 audioUnit], 0x1Du, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData != 0;
  }

  return v6;
}

void *TV3Property<BOOL,29u,0u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x1D);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    v6 = [WeakRetained _getValueForProperty:v5 error:0];

    v7 = v6;
    Value = [v7 BOOLValue];
  }

  return Value;
}

uint64_t TV3Property<BOOL,29u,0u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x1D);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

char *TV3Property<BOOL,29u,0u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, 0, v6);
  snprintf(__str, 0x80uLL, "%s@:", "B");
  result = strdup(__str);
  *(a3 + 16) = result;
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<BOOL,unsigned int,29u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,29u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = [*a3 BOOLValue];
  return AudioUnitSetProperty(v3, 0x1Du, 0, 0, &inData, 4u);
}

id std::__function::__func<TAUPropertyBase<BOOL,unsigned int,29u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,29u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  ioDataSize = 4;
  outData = 0;
  Property = AudioUnitGetProperty(v3, 0x1Du, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    if (v4)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
      *v4 = v6;
    }

    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:outData != 0];
  }

  return v7;
}

uint64_t std::__function::__func<TAUPropertyBase<BOOL,unsigned int,29u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,29u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, _DWORD **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 4u)
  {
    if (v5)
    {
      *v5 = [v6 unsignedIntValue];
    }

    v8 = 0;
    *a4 = 4;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TAUProperty<BOOL,unsigned int,21u,ScalarConverter,1u>::addV2BridgeAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<BOOL,unsigned int,21u,ScalarConverter,1u>::v2BridgeGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<BOOL,unsigned int,21u,ScalarConverter,1u>::v2BridgeSetter_Bus);
}

void TAUProperty<BOOL,unsigned int,21u,ScalarConverter,1u>::v2BridgeSetter_Bus(void *a1, uint64_t a2, int a3)
{
  v4 = a1;
  inData = a3;
  WeakRetained = objc_loadWeakRetained(v4 + 14);
  AudioUnitSetProperty([WeakRetained audioUnit], 0x15u, *(v4 + 32), *(v4 + 33), &inData, 4u);
}

uint64_t TAUProperty<BOOL,unsigned int,21u,ScalarConverter,1u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  ioDataSize = 4;
  outData = 0;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x15u, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 1;
  }

  else
  {
    v4 = outData == 0;
  }

  v5 = !v4;

  return v5;
}

BOOL TAUProperty<BOOL,unsigned int,21u,ScalarConverter,1u>::addV2BridgeAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<BOOL,unsigned int,21u,ScalarConverter,1u>::v2BridgeGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<BOOL,unsigned int,21u,ScalarConverter,1u>::v2BridgeSetter_Global);
}

void TAUProperty<BOOL,unsigned int,21u,ScalarConverter,1u>::v2BridgeSetter_Global(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  inData = a3;
  if (AudioUnitSetProperty([v5 audioUnit], 0x15u, 0, 0, &inData, 4u))
  {
    v6 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v6, a2);
    (MethodImplementation)(v5, a2, a3);
  }
}

uint64_t TAUProperty<BOOL,unsigned int,21u,ScalarConverter,1u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  ioDataSize = 4;
  outData = 0;
  if (AudioUnitGetProperty([v3 audioUnit], 0x15u, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData != 0;
  }

  return v6;
}

BOOL TV3Property<BOOL,21u,1u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<BOOL,21u,1u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<BOOL,21u,1u>::marshalSetter_Bus);
}

void TV3Property<BOOL,21u,1u>::marshalSetter_Bus(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), 0x15);
  if (Value)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    v7 = v6;
    WeakRetained = objc_loadWeakRetained(v10 + 14);
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v10 + 32) element:*(v10 + 33)];
    [WeakRetained _setValue:v6 forProperty:v9 error:0];
  }
}

void sub_18F72608C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void *TV3Property<BOOL,21u,1u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x15);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    v6 = [WeakRetained _getValueForProperty:v5 error:0];

    v7 = v6;
    Value = [v7 BOOLValue];
  }

  return Value;
}

BOOL TV3Property<BOOL,21u,1u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<BOOL,21u,1u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<BOOL,21u,1u>::marshalSetter_Global);
}

void TV3Property<BOOL,21u,1u>::marshalSetter_Global(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), 0x15);
  if (Value)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    v7 = v6;
    v8 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v9 _setValue:v6 forProperty:v8 error:0];
  }
}

void sub_18F7262E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t TV3Property<BOOL,21u,1u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x15);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

IMP TV3Property<BOOL,21u,1u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<BOOL,21u,1u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<BOOL,21u,1u>::stubSetter);
}

char *TV3Property<BOOL,21u,1u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "B");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "B");
  result = strdup(__str);
  *(a3 + 24) = result;
  return result;
}

uint64_t TAUPropertyBase<BOOL,unsigned int,21u,ScalarConverter,1u>::v2PropertySize(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    PropertySizeXPC = getPropertySizeXPC(v6, 21, a3, a4);
    v8 = PropertySizeXPC & 0x100000000;
    v9 = PropertySizeXPC;
  }

  else
  {
    v8 = 0x100000000;
    v9 = 4;
  }

  return v8 | v9;
}

uint64_t std::__function::__func<TAUPropertyBase<BOOL,unsigned int,21u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,21u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = [*a3 BOOLValue];
  return AudioUnitSetProperty(v3, 0x15u, 0, 0, &inData, 4u);
}

id std::__function::__func<TAUPropertyBase<BOOL,unsigned int,21u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,21u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  ioDataSize = 4;
  outData = 0;
  Property = AudioUnitGetProperty(v3, 0x15u, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    if (v4)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
      *v4 = v6;
    }

    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:outData != 0];
  }

  return v7;
}

id std::__function::__func<TAUPropertyBase<BOOL,unsigned int,21u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,21u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, unsigned int **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 4u)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:**a2];
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<BOOL,unsigned int,21u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<BOOL,unsigned int,21u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, _DWORD **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 4u)
  {
    if (v5)
    {
      *v5 = [v6 unsignedIntValue];
    }

    v8 = 0;
    *a4 = 4;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TAUProperty<unsigned long,unsigned int,26u,ScalarConverter,1u>::addV2BridgeAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<unsigned long,unsigned int,26u,ScalarConverter,1u>::v2BridgeGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<unsigned long,unsigned int,26u,ScalarConverter,1u>::v2BridgeSetter_Bus);
}

void TAUProperty<unsigned long,unsigned int,26u,ScalarConverter,1u>::v2BridgeSetter_Bus(void *a1, uint64_t a2, int a3)
{
  v4 = a1;
  inData = a3;
  WeakRetained = objc_loadWeakRetained(v4 + 14);
  AudioUnitSetProperty([WeakRetained audioUnit], 0x1Au, *(v4 + 32), *(v4 + 33), &inData, 4u);
}

uint64_t TAUProperty<unsigned long,unsigned int,26u,ScalarConverter,1u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  ioDataSize = 4;
  outData = 0;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x1Au, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 0;
  }

  else
  {
    v4 = outData;
  }

  return v4;
}

BOOL TAUProperty<unsigned long,unsigned int,26u,ScalarConverter,1u>::addV2BridgeAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<unsigned long,unsigned int,26u,ScalarConverter,1u>::v2BridgeGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<unsigned long,unsigned int,26u,ScalarConverter,1u>::v2BridgeSetter_Global);
}

void TAUProperty<unsigned long,unsigned int,26u,ScalarConverter,1u>::v2BridgeSetter_Global(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  inData = a3;
  if (AudioUnitSetProperty([v5 audioUnit], 0x1Au, 0, 0, &inData, 4u))
  {
    v6 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v6, a2);
    (MethodImplementation)(v5, a2, a3);
  }
}

uint64_t TAUProperty<unsigned long,unsigned int,26u,ScalarConverter,1u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  ioDataSize = 4;
  outData = 0;
  if (AudioUnitGetProperty([v3 audioUnit], 0x1Au, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData;
  }

  return v6;
}

BOOL TV3Property<unsigned long,26u,1u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<unsigned long,26u,1u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<unsigned long,26u,1u>::marshalSetter_Bus);
}

void TV3Property<unsigned long,26u,1u>::marshalSetter_Bus(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), 0x1A);
  if (Value)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v7 = v6;
    WeakRetained = objc_loadWeakRetained(v10 + 14);
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v10 + 32) element:*(v10 + 33)];
    [WeakRetained _setValue:v6 forProperty:v9 error:0];
  }
}

void sub_18F726EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void *TV3Property<unsigned long,26u,1u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x1A);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    v6 = [WeakRetained _getValueForProperty:v5 error:0];

    v7 = v6;
    Value = [v7 unsignedIntegerValue];
  }

  return Value;
}

BOOL TV3Property<unsigned long,26u,1u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<unsigned long,26u,1u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<unsigned long,26u,1u>::marshalSetter_Global);
}

void TV3Property<unsigned long,26u,1u>::marshalSetter_Global(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), 0x1A);
  if (Value)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v7 = v6;
    v8 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v9 _setValue:v6 forProperty:v8 error:0];
  }
}

void sub_18F7270FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t TV3Property<unsigned long,26u,1u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x1A);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
    v7 = [v6 unsignedIntegerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

IMP TV3Property<unsigned long,26u,1u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<unsigned long,26u,1u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<unsigned long,26u,1u>::stubSetter);
}

char *TV3Property<unsigned long,26u,1u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "Q");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "Q");
  result = strdup(__str);
  *(a3 + 24) = result;
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<unsigned long,unsigned int,26u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<unsigned long,unsigned int,26u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = [*a3 unsignedIntegerValue];
  return AudioUnitSetProperty(v3, 0x1Au, 0, 0, &inData, 4u);
}

id std::__function::__func<TAUPropertyBase<unsigned long,unsigned int,26u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<unsigned long,unsigned int,26u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  ioDataSize = 4;
  outData = 0;
  Property = AudioUnitGetProperty(v3, 0x1Au, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    if (v4)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
      *v4 = v6;
    }

    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:outData];
  }

  return v7;
}

id std::__function::__func<TAUPropertyBase<unsigned long,unsigned int,26u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<unsigned long,unsigned int,26u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, unsigned int **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 4u)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:**a2];
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<unsigned long,unsigned int,26u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<unsigned long,unsigned int,26u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, _DWORD **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 4u)
  {
    if (v5)
    {
      *v5 = [v6 unsignedIntValue];
    }

    v8 = 0;
    *a4 = 4;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

double TAUProperty<double,double,20u,ScalarConverter,0u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  outData = 0.0;
  ioDataSize = 8;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x14u, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = outData;
  }

  return v4;
}

double TAUProperty<double,double,20u,ScalarConverter,0u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  outData = 0.0;
  ioDataSize = 8;
  if (AudioUnitGetProperty([v3 audioUnit], 0x14u, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData;
  }

  return v6;
}

double TV3Property<double,20u,0u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x14);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    v6 = [WeakRetained _getValueForProperty:v5 error:0];

    v7 = v6;
    [v7 doubleValue];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

double TV3Property<double,20u,0u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x14);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
    [v6 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

void sub_18F727B0C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

char *TV3Property<double,20u,0u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, 0, v6);
  snprintf(__str, 0x80uLL, "%s@:", "d");
  result = strdup(__str);
  *(a3 + 16) = result;
  return result;
}

uint64_t TAUPropertyBase<double,double,20u,ScalarConverter,0u>::v2PropertySize(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    PropertySizeXPC = getPropertySizeXPC(v6, 20, a3, a4);
    v8 = PropertySizeXPC & 0x100000000;
    v9 = PropertySizeXPC;
  }

  else
  {
    v8 = 0x100000000;
    v9 = 8;
  }

  return v8 | v9;
}

uint64_t std::__function::__func<TAUPropertyBase<double,double,20u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<double,double,20u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  [*a3 doubleValue];
  inData = v4;
  return AudioUnitSetProperty(v3, 0x14u, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<double,double,20u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<double,double,20u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0.0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x14u, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    if (v4)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
      *v4 = v6;
    }

    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:outData];
  }

  return v7;
}

uint64_t std::__function::__func<TAUPropertyBase<double,double,20u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<double,double,20u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      [v6 doubleValue];
      *v5 = v9;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

double TAUProperty<double,double,12u,ScalarConverter,0u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  outData = 0.0;
  ioDataSize = 8;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0xCu, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = outData;
  }

  return v4;
}

double TAUProperty<double,double,12u,ScalarConverter,0u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  outData = 0.0;
  ioDataSize = 8;
  if (AudioUnitGetProperty([v3 audioUnit], 0xCu, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData;
  }

  return v6;
}

double TV3Property<double,12u,0u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0xC);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    v6 = [WeakRetained _getValueForProperty:v5 error:0];

    v7 = v6;
    [v7 doubleValue];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

double TV3Property<double,12u,0u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0xC);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
    [v6 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

void sub_18F728364(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

char *TV3Property<double,12u,0u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, 0, v6);
  snprintf(__str, 0x80uLL, "%s@:", "d");
  result = strdup(__str);
  *(a3 + 16) = result;
  return result;
}

uint64_t TAUPropertyBase<double,double,12u,ScalarConverter,0u>::v2PropertySize(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    PropertySizeXPC = getPropertySizeXPC(v6, 12, a3, a4);
    v8 = PropertySizeXPC & 0x100000000;
    v9 = PropertySizeXPC;
  }

  else
  {
    v8 = 0x100000000;
    v9 = 8;
  }

  return v8 | v9;
}

uint64_t std::__function::__func<TAUPropertyBase<double,double,12u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<double,double,12u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  [*a3 doubleValue];
  inData = v4;
  return AudioUnitSetProperty(v3, 0xCu, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<double,double,12u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<double,double,12u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0.0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0xCu, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    if (v4)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
      *v4 = v6;
    }

    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:outData];
  }

  return v7;
}

uint64_t std::__function::__func<TAUPropertyBase<double,double,12u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<double,double,12u,ScalarConverter,0u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      [v6 doubleValue];
      *v5 = v9;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

id TAUProperty<AUAudioUnitPreset * {__strong},AUPreset,36u,PresetConverter,4u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  ioDataSize = 16;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x24u, *(v1 + 32), *(v1 + 33), outData, &ioDataSize);

  if (Property)
  {
    v4 = 0;
  }

  else
  {
    PresetConverter::CToObj<true,false>::CToObj(&v6, outData);
    v4 = v6;
  }

  return v4;
}

id *PresetConverter::CToObj<true,false>::CToObj(id *a1, int *a2)
{
  *a1 = 0;
  v4 = objc_opt_new();
  v5 = *a1;
  *a1 = v4;

  [*a1 setNumber:*a2];
  v6 = *(a2 + 1);
  [*a1 setName:v6];

  return a1;
}

id TAUProperty<AUAudioUnitPreset * {__strong},AUPreset,36u,PresetConverter,4u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  ioDataSize = 16;
  if (AudioUnitGetProperty([v3 audioUnit], 0x24u, 0, 0, outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    PresetConverter::CToObj<true,false>::CToObj(&v8, outData);
    v6 = v8;
  }

  return v6;
}

void *TV3Property<AUAudioUnitPreset * {__strong},36u,4u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x24);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

id TV3Property<AUAudioUnitPreset * {__strong},36u,4u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x24);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

char *TV3Property<AUAudioUnitPreset * {__strong},36u,4u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, 0, v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  result = strdup(__str);
  *(a3 + 16) = result;
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<AUAudioUnitPreset * {__strong},AUPreset,36u,PresetConverter,4u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<AUAudioUnitPreset * {__strong},AUPreset,36u,PresetConverter,4u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  v4 = *a3;
  v8 = v4;
  inData[0] = PresetConverter::ObjToC<true>::operator AUPreset(&v8);
  inData[1] = v5;

  v6 = AudioUnitSetProperty(v3, 0x24u, 0, 0, inData, 0x10u);
  return v6;
}

uint64_t PresetConverter::ObjToC<true>::operator AUPreset(id *a1)
{
  v2 = [*a1 number];
  [*a1 name];

  return v2;
}

id std::__function::__func<TAUPropertyBase<AUAudioUnitPreset * {__strong},AUPreset,36u,PresetConverter,4u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<AUAudioUnitPreset * {__strong},AUPreset,36u,PresetConverter,4u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  ioDataSize = 16;
  Property = AudioUnitGetProperty(v3, 0x24u, 0, 0, &outData, &ioDataSize);
  if (!Property)
  {
    v13 = outData;
    PresetConverter::CToObj<true,false>::CToObj(&v12, &v13);
    v8 = v12;

    v6 = v8;
    v7 = v6;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
    v7 = 0;
    *v4 = v6;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

uint64_t std::__function::__func<TAUPropertyBase<AUAudioUnitPreset * {__strong},AUPreset,36u,PresetConverter,4u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<AUAudioUnitPreset * {__strong},AUPreset,36u,PresetConverter,4u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 0x10u)
  {
    if (v5)
    {
      v9 = v6;
      v10 = [v9 number];
      v11 = [v9 name];
      *v5 = v10;
      v5[1] = v11;
    }

    v8 = 0;
    *a4 = 16;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

id TAUProperty<NSArray * {__strong},__CFArray const*,24u,FactoryPresetsConverter,0u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  outData = 0;
  ioDataSize = 8;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x18u, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 0;
  }

  else
  {
    FactoryPresetsConverter::CToObj<true>::CToObj(&v6, outData);
    v4 = v6;
  }

  return v4;
}

id *FactoryPresetsConverter::CToObj<true>::CToObj(id *a1, CFArrayRef theArray)
{
  *a1 = 0;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:Count];
    v6 = *a1;
    *a1 = v5;

    if (Count >= 1)
    {
      v7 = 0;
      v8 = Count & 0x7FFFFFFF;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
        v10 = objc_opt_new();
        [v10 setNumber:*ValueAtIndex];
        [v10 setName:*(ValueAtIndex + 1)];
        v11 = v10;
        v12 = v10;
        [*a1 addObject:v12];

        ++v7;
      }

      while (v8 != v7);
    }

    CFRelease(theArray);
  }

  return a1;
}

id TAUProperty<NSArray * {__strong},__CFArray const*,24u,FactoryPresetsConverter,0u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  outData = 0;
  ioDataSize = 8;
  if (AudioUnitGetProperty([v3 audioUnit], 0x18u, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    FactoryPresetsConverter::CToObj<true>::CToObj(&v8, outData);
    v6 = v8;
  }

  return v6;
}

void *TV3Property<NSArray * {__strong},24u,0u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x18);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

id TV3Property<NSArray * {__strong},24u,0u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x18);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

char *TV3Property<NSArray * {__strong},24u,0u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, 0, v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  result = strdup(__str);
  *(a3 + 16) = result;
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<NSArray * {__strong},__CFArray const*,24u,FactoryPresetsConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<NSArray * {__strong},__CFArray const*,24u,FactoryPresetsConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = v4;
  callBacks = *byte_1F0329498;
  v6 = [v5 count];
  v7 = CFArrayCreateMutable(0, v6, &callBacks);
  if (v6 >= 1)
  {
    v10[1] = [v4 objectAtIndexedSubscript:0];
    operator new();
  }

  v10[0] = v7;
  v8 = AudioUnitSetProperty(v3, 0x18u, 0, 0, v10, 8u);

  return v8;
}

void FactoryPresetsConverter::RefCountedAUPreset::cfRelease(FactoryPresetsConverter::RefCountedAUPreset *this, const __CFAllocator *a2, const void *a3)
{
  v3 = *(a2 + 4) - 1;
  *(a2 + 4) = v3;
  if (a2)
  {
    if (!v3)
    {
      JUMPOUT(0x193ADF220);
    }
  }
}

const __CFAllocator *FactoryPresetsConverter::RefCountedAUPreset::cfRetain(FactoryPresetsConverter::RefCountedAUPreset *this, const __CFAllocator *a2, const void *a3)
{
  result = a2;
  ++*(a2 + 4);
  return result;
}

id std::__function::__func<TAUPropertyBase<NSArray * {__strong},__CFArray const*,24u,FactoryPresetsConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<NSArray * {__strong},__CFArray const*,24u,FactoryPresetsConverter,0u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x18u, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    if (v4)
    {
      v6 = *MEMORY[0x1E696A768];
      v7 = Property;
      v8 = MEMORY[0x1E696ABC0];
LABEL_4:
      v9 = [v8 errorWithDomain:v6 code:v7 userInfo:0];
      v10 = 0;
      *v4 = v9;
LABEL_7:

      goto LABEL_11;
    }
  }

  else
  {
    FactoryPresetsConverter::CToObj<true>::CToObj(&v15, outData);
    v11 = v15;

    if (v11)
    {
      v9 = v11;
      v10 = v9;
      goto LABEL_7;
    }

    if (v4)
    {
      v8 = MEMORY[0x1E696ABC0];
      v6 = *MEMORY[0x1E696A768];
      v7 = -10851;
      goto LABEL_4;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

uint64_t std::__function::__func<TAUPropertyBase<NSArray * {__strong},__CFArray const*,24u,FactoryPresetsConverter,0u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<NSArray * {__strong},__CFArray const*,24u,FactoryPresetsConverter,0u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, __CFArray ***a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      v14 = v5;
      v9 = v6;
      callBacks = *byte_1F0329498;
      v10 = [v9 count];
      v11 = CFArrayCreateMutable(0, v10, &callBacks);
      if (v10 >= 1)
      {
        v12 = [v9 objectAtIndexedSubscript:0];
        operator new();
      }

      *v14 = v11;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

id TAUProperty<NSDictionary * {__strong},__CFDictionary const*,50u,CFNSConverter,4u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  outData = 0;
  ioDataSize = 8;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0x32u, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 0;
  }

  else
  {
    v4 = outData;
  }

  return v4;
}

id TAUProperty<NSDictionary * {__strong},__CFDictionary const*,50u,CFNSConverter,4u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  outData = 0;
  ioDataSize = 8;
  if (AudioUnitGetProperty([v3 audioUnit], 0x32u, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData;
  }

  return v6;
}

void *TV3Property<NSDictionary * {__strong},50u,4u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x32);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

id TV3Property<NSDictionary * {__strong},50u,4u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0x32);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

char *TV3Property<NSDictionary * {__strong},50u,4u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, 0, v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  result = strdup(__str);
  *(a3 + 16) = result;
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,50u,CFNSConverter,4u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,50u,CFNSConverter,4u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = *a3;
  return AudioUnitSetProperty(v3, 0x32u, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,50u,CFNSConverter,4u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,50u,CFNSConverter,4u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0x32u, 0, 0, &outData, &ioDataSize);
  if (!Property)
  {
    v6 = outData;
    v7 = v6;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
    v7 = 0;
    *v4 = v6;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

uint64_t std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,50u,CFNSConverter,4u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,50u,CFNSConverter,4u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      *v5 = v6;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

id TAUProperty<NSDictionary * {__strong},__CFDictionary const*,0u,CFNSConverter,4u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  outData = 0;
  ioDataSize = 8;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 0;
  }

  else
  {
    v4 = outData;
  }

  return v4;
}

id TAUProperty<NSDictionary * {__strong},__CFDictionary const*,0u,CFNSConverter,4u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  outData = 0;
  ioDataSize = 8;
  if (AudioUnitGetProperty([v3 audioUnit], 0, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData;
  }

  return v6;
}

void *TV3Property<NSDictionary * {__strong},0u,4u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    Value = [WeakRetained _getValueForProperty:v5 error:0];

    v6 = Value;
  }

  return Value;
}

id TV3Property<NSDictionary * {__strong},0u,4u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

char *TV3Property<NSDictionary * {__strong},0u,4u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, 0, v6);
  snprintf(__str, 0x80uLL, "%s@:", "@");
  result = strdup(__str);
  *(a3 + 16) = result;
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,0u,CFNSConverter,4u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,0u,CFNSConverter,4u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = *a3;
  return AudioUnitSetProperty(v3, 0, 0, 0, &inData, 8u);
}

id std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,0u,CFNSConverter,4u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,0u,CFNSConverter,4u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  outData = 0;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(v3, 0, 0, 0, &outData, &ioDataSize);
  if (!Property)
  {
    v6 = outData;
    v7 = v6;
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
    v7 = 0;
    *v4 = v6;
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

uint64_t std::__function::__func<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,0u,CFNSConverter,4u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<NSDictionary * {__strong},__CFDictionary const*,0u,CFNSConverter,4u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, void **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 8u)
  {
    if (v5)
    {
      *v5 = v6;
    }

    v8 = 0;
    *a4 = 8;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

BOOL TAUProperty<unsigned long,unsigned int,14u,ScalarConverter,1u>::addV2BridgeAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<unsigned long,unsigned int,14u,ScalarConverter,1u>::v2BridgeGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<unsigned long,unsigned int,14u,ScalarConverter,1u>::v2BridgeSetter_Bus);
}

void TAUProperty<unsigned long,unsigned int,14u,ScalarConverter,1u>::v2BridgeSetter_Bus(void *a1, uint64_t a2, int a3)
{
  v4 = a1;
  inData = a3;
  WeakRetained = objc_loadWeakRetained(v4 + 14);
  AudioUnitSetProperty([WeakRetained audioUnit], 0xEu, *(v4 + 32), *(v4 + 33), &inData, 4u);
}

uint64_t TAUProperty<unsigned long,unsigned int,14u,ScalarConverter,1u>::v2BridgeGetter_Bus(void *a1)
{
  v1 = a1;
  ioDataSize = 4;
  outData = 0;
  WeakRetained = objc_loadWeakRetained(v1 + 14);
  Property = AudioUnitGetProperty([WeakRetained audioUnit], 0xEu, *(v1 + 32), *(v1 + 33), &outData, &ioDataSize);

  if (Property)
  {
    v4 = 0;
  }

  else
  {
    v4 = outData;
  }

  return v4;
}

BOOL TAUProperty<unsigned long,unsigned int,14u,ScalarConverter,1u>::addV2BridgeAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TAUProperty<unsigned long,unsigned int,14u,ScalarConverter,1u>::v2BridgeGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TAUProperty<unsigned long,unsigned int,14u,ScalarConverter,1u>::v2BridgeSetter_Global);
}

void TAUProperty<unsigned long,unsigned int,14u,ScalarConverter,1u>::v2BridgeSetter_Global(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  inData = a3;
  if (AudioUnitSetProperty([v5 audioUnit], 0xEu, 0, 0, &inData, 4u))
  {
    v6 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v6, a2);
    (MethodImplementation)(v5, a2, a3);
  }
}

uint64_t TAUProperty<unsigned long,unsigned int,14u,ScalarConverter,1u>::v2BridgeGetter_Global(void *a1, const char *a2)
{
  v3 = a1;
  ioDataSize = 4;
  outData = 0;
  if (AudioUnitGetProperty([v3 audioUnit], 0xEu, 0, 0, &outData, &ioDataSize))
  {
    v4 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v4, a2);
    v6 = (MethodImplementation)(v3, a2);
  }

  else
  {
    v6 = outData;
  }

  return v6;
}

BOOL TV3Property<unsigned long,14u,1u>::addMarshallingAccessors_Bus(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<unsigned long,14u,1u>::marshalGetter_Bus);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<unsigned long,14u,1u>::marshalSetter_Bus);
}

void TV3Property<unsigned long,14u,1u>::marshalSetter_Bus(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), 0xE);
  if (Value)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v7 = v6;
    WeakRetained = objc_loadWeakRetained(v10 + 14);
    v9 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v10 + 32) element:*(v10 + 33)];
    [WeakRetained _setValue:v6 forProperty:v9 error:0];
  }
}

void sub_18F72B13C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void *TV3Property<unsigned long,14u,1u>::marshalGetter_Bus(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0xE);
  if (Value)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 14);
    v5 = [AUAudioUnitProperty propertyWithKey:Value[1] scope:*(v1 + 32) element:*(v1 + 33)];
    v6 = [WeakRetained _getValueForProperty:v5 error:0];

    v7 = v6;
    Value = [v7 unsignedIntegerValue];
  }

  return Value;
}

BOOL TV3Property<unsigned long,14u,1u>::addMarshallingAccessors_Global(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::addGetter(*a2, *(a2 + 16), a3, TV3Property<unsigned long,14u,1u>::marshalGetter_Global);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::addSetter(v5, v6, a3, TV3Property<unsigned long,14u,1u>::marshalSetter_Global);
}

void TV3Property<unsigned long,14u,1u>::marshalSetter_Global(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v4 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v4 + 8), 0xE);
  if (Value)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v7 = v6;
    v8 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    [v9 _setValue:v6 forProperty:v8 error:0];
  }
}

void sub_18F72B394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t TV3Property<unsigned long,14u,1u>::marshalGetter_Global(void *a1)
{
  v1 = a1;
  CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  v2 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v2 + 8), 0xE);
  if (Value)
  {
    v4 = [AUAudioUnitProperty propertyWithKey:Value[1]];
    v5 = [v1 _getValueForProperty:v4 error:0];

    v6 = v5;
    v7 = [v6 unsignedIntegerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

IMP TV3Property<unsigned long,14u,1u>::addStubAccessors(uint64_t a1, uint64_t a2, objc_class *a3)
{
  AUProperty::Swizzler::replaceGetter(*a2, *(a2 + 16), a3, TV3Property<unsigned long,14u,1u>::stubGetter);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);

  return AUProperty::Swizzler::replaceSetter(v5, v6, a3, TV3Property<unsigned long,14u,1u>::stubSetter);
}

char *TV3Property<unsigned long,14u,1u>::makeSwizzler(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 8) UTF8String];
  AUAudioUnitProperties::accessorsForProperty(a2, v5, a3, (a3 + 8), v6);
  snprintf(__str, 0x80uLL, "%s@:", "Q");
  *(a3 + 16) = strdup(__str);
  snprintf(__str, 0x80uLL, "v@:%s", "Q");
  result = strdup(__str);
  *(a3 + 24) = result;
  return result;
}

uint64_t std::__function::__func<TAUPropertyBase<unsigned long,unsigned int,14u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1},std::allocator<TAUPropertyBase<unsigned long,unsigned int,14u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,objc_object *)#1}>,int ()(OpaqueAudioComponentInstance *,objc_object *)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, id *a3)
{
  v3 = *a2;
  inData = [*a3 unsignedIntegerValue];
  return AudioUnitSetProperty(v3, 0xEu, 0, 0, &inData, 4u);
}

id std::__function::__func<TAUPropertyBase<unsigned long,unsigned int,14u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1},std::allocator<TAUPropertyBase<unsigned long,unsigned int,14u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)#1}>,objc_object * ()(OpaqueAudioComponentInstance *,NSError * {__autoreleasing}*)>::operator()(uint64_t a1, OpaqueAudioComponentInstance **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  ioDataSize = 4;
  outData = 0;
  Property = AudioUnitGetProperty(v3, 0xEu, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    if (v4)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
      *v4 = v6;
    }

    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:outData];
  }

  return v7;
}

id std::__function::__func<TAUPropertyBase<unsigned long,unsigned int,14u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1},std::allocator<TAUPropertyBase<unsigned long,unsigned int,14u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(void const*,unsigned int,int &)#1}>,objc_object * ()(void const*,unsigned int,int &)>::operator()(uint64_t a1, unsigned int **a2, _DWORD *a3, int *a4)
{
  if (*a3 >= 4u)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:**a2];
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = -50;
  }

  *a4 = v6;

  return v5;
}

uint64_t std::__function::__func<TAUPropertyBase<unsigned long,unsigned int,14u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1},std::allocator<TAUPropertyBase<unsigned long,unsigned int,14u,ScalarConverter,1u>::TAUPropertyBase(char const*)::{lambda(objc_object *,void *,unsigned int &)#1}>,int ()(objc_object *,void *,unsigned int &)>::operator()(uint64_t a1, id *a2, _DWORD **a3, _DWORD *a4)
{
  v5 = *a3;
  v6 = *a2;
  v7 = v6;
  if (*a4 >= 4u)
  {
    if (v5)
    {
      *v5 = [v6 unsignedIntValue];
    }

    v8 = 0;
    *a4 = 4;
  }

  else
  {
    v8 = 4294956445;
  }

  return v8;
}

void TCFDictionary_CF2C<__CFString const*,AUProperty const*>::~TCFDictionary_CF2C(TCFDictionaryBase *a1)
{
  TCFDictionaryBase::~TCFDictionaryBase(a1);

  JUMPOUT(0x193ADF220);
}

void TCFDictionary_C2C<unsigned int,AUProperty const*>::~TCFDictionary_C2C(TCFDictionaryBase *a1)
{
  TCFDictionaryBase::~TCFDictionaryBase(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t MP413KVoiceSpecificConfig::Deserialize(uint64_t a1, unsigned int **a2)
{
  v180 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 4);
  v5 = *(a2 + 5) - 32;
  *(a2 + 5) = v5;
  if (v5 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    v8 = *(a2 + 4);
    v7 = *(a2 + 5);
    v5 = v7 + 32;
    v9 = v7 == -32;
    ++*a2;
    v6 = (v8 >> v7) | v4;
    v10 = v8 << -v7;
    if (v9)
    {
      v4 = 0;
    }

    else
    {
      v4 = v10;
    }

    *(a2 + 4) = v4;
    *(a2 + 5) = v5;
  }

  else
  {
    v6 = v4;
  }

  if (v6 != 1363952461)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v176 = 136315394;
      v177 = "ACMP4BitStreams.cpp";
      v178 = 1024;
      v179 = 1354;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "%25s:%-5d  DecoderConfigDescr::DeserializeVoiceDecoderSpecificPayload: unsupported voice format";
LABEL_54:
      _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_ERROR, v14, &v176, 0x12u);
    }

    return 4294967090;
  }

  *(a1 + 8) = 1363952461;
  v11 = v5 - 32;
  *(a2 + 5) = v11;
  if (v11 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    v15 = *a2 + 1;
    *a2 = v15;
    v17 = *(a2 + 4);
    v16 = *(a2 + 5);
    v12 = (v17 >> v16) | v4;
    v11 = v16 + 32;
    if (v16 == -32)
    {
      v18 = 0;
      *(a1 + 12) = v12;
      a2[2] = 0xFFFFFFF800000000;
      goto LABEL_18;
    }

    v4 = v17 << -v16;
    *(a2 + 4) = v4;
  }

  else
  {
    v12 = v4;
  }

  *(a1 + 12) = v12;
  v18 = HIBYTE(v4);
  v19 = v11 - 8;
  *(a2 + 5) = v19;
  if (v19 >= 0)
  {
    v20 = v4 << 8;
    goto LABEL_20;
  }

  v15 = *a2;
LABEL_18:
  TBitstreamReader<unsigned int>::FillCacheFrom(a2, v15);
  v21 = *a2 + 1;
  *a2 = v21;
  v23 = *(a2 + 4);
  v22 = *(a2 + 5);
  v18 |= v23 >> v22;
  v19 = v22 + 32;
  if (v22 == -32)
  {
    v25 = 0;
    *(a1 + 16) = v18;
    v24 = (a1 + 16);
    a2[2] = 0xFFFFFFF800000000;
LABEL_24:
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v21);
    ++*a2;
    v29 = *(a2 + 4);
    v28 = *(a2 + 5);
    v25 |= v29 >> v28;
    v26 = v28 + 32;
    if (v28 == -32)
    {
      v27 = 0;
    }

    else
    {
      v27 = v29 << -v28;
    }

    goto LABEL_27;
  }

  v20 = v23 << -v22;
LABEL_20:
  *(a2 + 4) = v20;
  *(a1 + 16) = v18;
  v24 = (a1 + 16);
  v25 = HIBYTE(v20);
  v26 = v19 - 8;
  *(a2 + 5) = v26;
  if (v26 < 0)
  {
    v21 = *a2;
    goto LABEL_24;
  }

  v27 = v20 << 8;
LABEL_27:
  *(a2 + 4) = v27;
  *v24 += v25 << 8;
  v30 = HIBYTE(v27);
  v31 = v26 - 8;
  *(a2 + 5) = v31;
  if (v31 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    ++*a2;
    v34 = *(a2 + 4);
    v33 = *(a2 + 5);
    v30 |= v34 >> v33;
    v31 = v33 + 32;
    if (v33 == -32)
    {
      v32 = 0;
    }

    else
    {
      v32 = v34 << -v33;
    }
  }

  else
  {
    v32 = v27 << 8;
  }

  *(a2 + 4) = v32;
  *v24 += v30 << 16;
  v35 = HIBYTE(v32);
  v36 = v31 - 8;
  *(a2 + 5) = v36;
  if (v36 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    ++*a2;
    v39 = *(a2 + 4);
    v38 = *(a2 + 5);
    v35 |= v39 >> v38;
    v36 = v38 + 32;
    if (v38 == -32)
    {
      v37 = 0;
    }

    else
    {
      v37 = v39 << -v38;
    }
  }

  else
  {
    v37 = v32 << 8;
  }

  *(a2 + 4) = v37;
  *v24 += v35 << 24;
  v40 = HIBYTE(v37);
  v41 = v36 - 8;
  *(a2 + 5) = v41;
  if (v41 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    v43 = *a2 + 1;
    *a2 = v43;
    v45 = *(a2 + 4);
    v44 = *(a2 + 5);
    v40 |= v45 >> v44;
    v41 = v44 + 32;
    if (v44 == -32)
    {
      v46 = 0;
      *(a1 + 20) = v40;
      a2[2] = 0xFFFFFFF800000000;
      goto LABEL_45;
    }

    v42 = v45 << -v44;
  }

  else
  {
    v42 = v37 << 8;
  }

  *(a2 + 4) = v42;
  *(a1 + 20) = v40;
  v46 = HIBYTE(v42);
  v47 = v41 - 8;
  *(a2 + 5) = v47;
  if (v47 >= 0)
  {
    v48 = v42 << 8;
    goto LABEL_48;
  }

  v43 = *a2;
LABEL_45:
  TBitstreamReader<unsigned int>::FillCacheFrom(a2, v43);
  ++*a2;
  v50 = *(a2 + 4);
  v49 = *(a2 + 5);
  v46 |= v50 >> v49;
  *(a2 + 5) = v49 + 32;
  if (v49 == -32)
  {
    v48 = 0;
  }

  else
  {
    v48 = v50 << -v49;
  }

LABEL_48:
  *(a2 + 4) = v48;
  *(a1 + 21) = v46;
  if (*(a1 + 20) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v176 = 136315394;
      v177 = "ACMP4BitStreams.cpp";
      v178 = 1024;
      v179 = 1375;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "%25s:%-5d  DecoderConfigDescr::DeserializeVoiceDecoderSpecificPayload: unsupported voice format major version";
      goto LABEL_54;
    }

    return 4294967090;
  }

  if (v46)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v176 = 136315394;
      v177 = "ACMP4BitStreams.cpp";
      v178 = 1024;
      v179 = 1376;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "%25s:%-5d  DecoderConfigDescr::DeserializeVoiceDecoderSpecificPayload: unsupported voice format minor version";
      goto LABEL_54;
    }

    return 4294967090;
  }

  for (i = 0; i != 16; ++i)
  {
    v53 = *(a2 + 4);
    v54 = HIBYTE(v53);
    v55 = *(a2 + 5) - 8;
    *(a2 + 5) = v55;
    if (v55 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      ++*a2;
      v58 = *(a2 + 4);
      v57 = *(a2 + 5);
      v54 |= v58 >> v57;
      *(a2 + 5) = v57 + 32;
      if (v57 == -32)
      {
        v56 = 0;
      }

      else
      {
        v56 = v58 << -v57;
      }
    }

    else
    {
      v56 = v53 << 8;
    }

    *(a2 + 4) = v56;
    *(a1 + 22 + i) = v54;
  }

  v59 = *(a2 + 4);
  v60 = HIBYTE(v59);
  v61 = *(a2 + 5) - 8;
  *(a2 + 5) = v61;
  if (v61 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    v63 = *a2 + 1;
    *a2 = v63;
    v65 = *(a2 + 4);
    v64 = *(a2 + 5);
    v60 |= v65 >> v64;
    v61 = v64 + 32;
    if (v64 == -32)
    {
      v67 = 0;
      *(a1 + 38) = v60;
      v66 = (a1 + 38);
      a2[2] = 0xFFFFFFF800000000;
LABEL_71:
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, v63);
      ++*a2;
      v71 = *(a2 + 4);
      v70 = *(a2 + 5);
      v67 |= v71 >> v70;
      *(a2 + 5) = v70 + 32;
      if (v70 == -32)
      {
        v69 = 0;
      }

      else
      {
        v69 = v71 << -v70;
      }

      goto LABEL_74;
    }

    v62 = v65 << -v64;
  }

  else
  {
    v62 = v59 << 8;
  }

  *(a2 + 4) = v62;
  *(a1 + 38) = v60;
  v66 = (a1 + 38);
  v67 = HIBYTE(v62);
  v68 = v61 - 8;
  *(a2 + 5) = v68;
  if (v68 < 0)
  {
    v63 = *a2;
    goto LABEL_71;
  }

  v69 = v62 << 8;
LABEL_74:
  *(a2 + 4) = v69;
  *v66 += v67 << 8;
  for (j = 40; j != 120; ++j)
  {
    v73 = *(a2 + 4);
    v74 = HIBYTE(v73);
    v75 = *(a2 + 5) - 8;
    *(a2 + 5) = v75;
    if (v75 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      ++*a2;
      v78 = *(a2 + 4);
      v77 = *(a2 + 5);
      v74 |= v78 >> v77;
      *(a2 + 5) = v77 + 32;
      if (v77 == -32)
      {
        v76 = 0;
      }

      else
      {
        v76 = v78 << -v77;
      }
    }

    else
    {
      v76 = v73 << 8;
    }

    *(a2 + 4) = v76;
    *(a1 + j) = v74;
  }

  v79 = *(a2 + 4);
  v80 = HIBYTE(v79);
  v81 = *(a2 + 5) - 8;
  *(a2 + 5) = v81;
  if (v81 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    v83 = *a2 + 1;
    *a2 = v83;
    v85 = *(a2 + 4);
    v84 = *(a2 + 5);
    v80 |= v85 >> v84;
    v81 = v84 + 32;
    if (v84 == -32)
    {
      v87 = 0;
      *(a1 + 120) = v80;
      v86 = (a1 + 120);
      a2[2] = 0xFFFFFFF800000000;
      goto LABEL_89;
    }

    v82 = v85 << -v84;
  }

  else
  {
    v82 = v79 << 8;
  }

  *(a2 + 4) = v82;
  *(a1 + 120) = v80;
  v86 = (a1 + 120);
  v87 = HIBYTE(v82);
  v88 = v81 - 8;
  *(a2 + 5) = v88;
  if (v88 >= 0)
  {
    v89 = v82 << 8;
    goto LABEL_92;
  }

  v83 = *a2;
LABEL_89:
  TBitstreamReader<unsigned int>::FillCacheFrom(a2, v83);
  ++*a2;
  v91 = *(a2 + 4);
  v90 = *(a2 + 5);
  v87 |= v91 >> v90;
  v88 = v90 + 32;
  if (v90 == -32)
  {
    v89 = 0;
  }

  else
  {
    v89 = v91 << -v90;
  }

LABEL_92:
  *(a2 + 4) = v89;
  *v86 += v87 << 8;
  v92 = HIBYTE(v89);
  v93 = v88 - 8;
  *(a2 + 5) = v93;
  if (v93 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    v95 = *a2 + 1;
    *a2 = v95;
    v97 = *(a2 + 4);
    v96 = *(a2 + 5);
    v92 |= v97 >> v96;
    v93 = v96 + 32;
    if (v96 == -32)
    {
      v99 = 0;
      *(a1 + 122) = v92;
      v98 = (a1 + 122);
      a2[2] = 0xFFFFFFF800000000;
      goto LABEL_100;
    }

    v94 = v97 << -v96;
  }

  else
  {
    v94 = v89 << 8;
  }

  *(a2 + 4) = v94;
  *(a1 + 122) = v92;
  v98 = (a1 + 122);
  v99 = HIBYTE(v94);
  v100 = v93 - 8;
  *(a2 + 5) = v100;
  if (v100 >= 0)
  {
    v101 = v94 << 8;
    goto LABEL_103;
  }

  v95 = *a2;
LABEL_100:
  TBitstreamReader<unsigned int>::FillCacheFrom(a2, v95);
  ++*a2;
  v103 = *(a2 + 4);
  v102 = *(a2 + 5);
  v99 |= v103 >> v102;
  v100 = v102 + 32;
  if (v102 == -32)
  {
    v101 = 0;
  }

  else
  {
    v101 = v103 << -v102;
  }

LABEL_103:
  *(a2 + 4) = v101;
  *v98 += v99 << 8;
  v104 = HIBYTE(v101);
  v105 = v100 - 8;
  *(a2 + 5) = v105;
  if (v105 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    v107 = *a2 + 1;
    *a2 = v107;
    v109 = *(a2 + 4);
    v108 = *(a2 + 5);
    v104 |= v109 >> v108;
    v105 = v108 + 32;
    if (v108 == -32)
    {
      v111 = 0;
      *(a1 + 124) = v104;
      v110 = (a1 + 124);
      a2[2] = 0xFFFFFFF800000000;
      goto LABEL_111;
    }

    v106 = v109 << -v108;
  }

  else
  {
    v106 = v101 << 8;
  }

  *(a2 + 4) = v106;
  *(a1 + 124) = v104;
  v110 = (a1 + 124);
  v111 = HIBYTE(v106);
  v112 = v105 - 8;
  *(a2 + 5) = v112;
  if (v112 >= 0)
  {
    v113 = v106 << 8;
    goto LABEL_114;
  }

  v107 = *a2;
LABEL_111:
  TBitstreamReader<unsigned int>::FillCacheFrom(a2, v107);
  ++*a2;
  v115 = *(a2 + 4);
  v114 = *(a2 + 5);
  v111 |= v115 >> v114;
  v112 = v114 + 32;
  if (v114 == -32)
  {
    v113 = 0;
  }

  else
  {
    v113 = v115 << -v114;
  }

LABEL_114:
  *(a2 + 4) = v113;
  *v110 += v111 << 8;
  v116 = HIBYTE(v113);
  v117 = v112 - 8;
  *(a2 + 5) = v117;
  if (v117 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    v119 = *a2 + 1;
    *a2 = v119;
    v121 = *(a2 + 4);
    v120 = *(a2 + 5);
    v116 |= v121 >> v120;
    v117 = v120 + 32;
    if (v120 == -32)
    {
      v123 = 0;
      *(a1 + 126) = v116;
      v122 = (a1 + 126);
      a2[2] = 0xFFFFFFF800000000;
      goto LABEL_122;
    }

    v118 = v121 << -v120;
  }

  else
  {
    v118 = v113 << 8;
  }

  *(a2 + 4) = v118;
  *(a1 + 126) = v116;
  v122 = (a1 + 126);
  v123 = HIBYTE(v118);
  v124 = v117 - 8;
  *(a2 + 5) = v124;
  if (v124 >= 0)
  {
    v125 = v118 << 8;
    goto LABEL_125;
  }

  v119 = *a2;
LABEL_122:
  TBitstreamReader<unsigned int>::FillCacheFrom(a2, v119);
  ++*a2;
  v127 = *(a2 + 4);
  v126 = *(a2 + 5);
  v123 |= v127 >> v126;
  v124 = v126 + 32;
  if (v126 == -32)
  {
    v125 = 0;
  }

  else
  {
    v125 = v127 << -v126;
  }

LABEL_125:
  *(a2 + 4) = v125;
  *v122 += v123 << 8;
  v128 = HIBYTE(v125);
  v129 = v124 - 8;
  *(a2 + 5) = v129;
  if (v129 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    v131 = *a2 + 1;
    *a2 = v131;
    v133 = *(a2 + 4);
    v132 = *(a2 + 5);
    v128 |= v133 >> v132;
    v129 = v132 + 32;
    if (v132 == -32)
    {
      v135 = 0;
      *(a1 + 128) = v128;
      v134 = (a1 + 128);
      a2[2] = 0xFFFFFFF800000000;
      goto LABEL_133;
    }

    v130 = v133 << -v132;
  }

  else
  {
    v130 = v125 << 8;
  }

  *(a2 + 4) = v130;
  *(a1 + 128) = v128;
  v134 = (a1 + 128);
  v135 = HIBYTE(v130);
  v136 = v129 - 8;
  *(a2 + 5) = v136;
  if (v136 >= 0)
  {
    v137 = v130 << 8;
    goto LABEL_136;
  }

  v131 = *a2;
LABEL_133:
  TBitstreamReader<unsigned int>::FillCacheFrom(a2, v131);
  ++*a2;
  v139 = *(a2 + 4);
  v138 = *(a2 + 5);
  v135 |= v139 >> v138;
  v136 = v138 + 32;
  if (v138 == -32)
  {
    v137 = 0;
  }

  else
  {
    v137 = v139 << -v138;
  }

LABEL_136:
  *(a2 + 4) = v137;
  *v134 += v135 << 8;
  v140 = HIBYTE(v137);
  v141 = v136 - 8;
  *(a2 + 5) = v141;
  if (v141 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    v143 = *a2 + 1;
    *a2 = v143;
    v145 = *(a2 + 4);
    v144 = *(a2 + 5);
    v140 |= v145 >> v144;
    v141 = v144 + 32;
    if (v144 == -32)
    {
      v147 = 0;
      *(a1 + 130) = v140;
      v146 = (a1 + 130);
      a2[2] = 0xFFFFFFF800000000;
      goto LABEL_144;
    }

    v142 = v145 << -v144;
  }

  else
  {
    v142 = v137 << 8;
  }

  *(a2 + 4) = v142;
  *(a1 + 130) = v140;
  v146 = (a1 + 130);
  v147 = HIBYTE(v142);
  v148 = v141 - 8;
  *(a2 + 5) = v148;
  if (v148 >= 0)
  {
    v149 = v142 << 8;
    goto LABEL_147;
  }

  v143 = *a2;
LABEL_144:
  TBitstreamReader<unsigned int>::FillCacheFrom(a2, v143);
  ++*a2;
  v151 = *(a2 + 4);
  v150 = *(a2 + 5);
  v147 |= v151 >> v150;
  v148 = v150 + 32;
  if (v150 == -32)
  {
    v149 = 0;
  }

  else
  {
    v149 = v151 << -v150;
  }

LABEL_147:
  *(a2 + 4) = v149;
  *v146 += v147 << 8;
  v152 = HIBYTE(v149);
  v153 = v148 - 8;
  *(a2 + 5) = v153;
  if (v153 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    ++*a2;
    v156 = *(a2 + 4);
    v155 = *(a2 + 5);
    v152 |= v156 >> v155;
    v153 = v155 + 32;
    if (v155 == -32)
    {
      v154 = 0;
    }

    else
    {
      v154 = v156 << -v155;
    }
  }

  else
  {
    v154 = v149 << 8;
  }

  *(a2 + 4) = v154;
  *v146 += v152 << 16;
  v157 = HIBYTE(v154);
  v158 = v153 - 8;
  *(a2 + 5) = v158;
  if (v158 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    ++*a2;
    v161 = *(a2 + 4);
    v160 = *(a2 + 5);
    v157 |= v161 >> v160;
    v158 = v160 + 32;
    if (v160 == -32)
    {
      v159 = 0;
    }

    else
    {
      v159 = v161 << -v160;
    }
  }

  else
  {
    v159 = v154 << 8;
  }

  v162 = 0;
  *(a2 + 4) = v159;
  *(a1 + 130) += v157 << 24;
  v163 = (a1 + 134);
  v164 = 8;
  v165 = v163;
  do
  {
    v166 = HIBYTE(v159);
    v167 = v158 - 8;
    *(a2 + 5) = v167;
    if (v167 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      v169 = *a2 + 1;
      *a2 = v169;
      v171 = *(a2 + 4);
      v170 = *(a2 + 5);
      v166 |= v171 >> v170;
      v167 = v170 + 32;
      if (v170 == -32)
      {
        v172 = 0;
        v173 = &v163[v162];
        *v165 = v166;
        a2[2] = 0xFFFFFFF800000000;
        goto LABEL_166;
      }

      v168 = v171 << -v170;
    }

    else
    {
      v168 = v159 << 8;
    }

    *(a2 + 4) = v168;
    *v165 = v166;
    v172 = HIBYTE(v168);
    v158 = v167 - 8;
    *(a2 + 5) = v158;
    if (v158 >= 0)
    {
      v159 = v168 << 8;
      v173 = v165;
      goto LABEL_169;
    }

    v169 = *a2;
    v173 = v165;
LABEL_166:
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v169);
    ++*a2;
    v175 = *(a2 + 4);
    v174 = *(a2 + 5);
    v172 |= v175 >> v174;
    v158 = v174 + 32;
    *(a2 + 5) = v174 + 32;
    if (v174 == -32)
    {
      v159 = 0;
    }

    else
    {
      v159 = v175 << -v174;
    }

LABEL_169:
    *(a2 + 4) = v159;
    *v173 += v172 << 8;
    ++v162;
    ++v165;
    --v164;
  }

  while (v164);
  return 0;
}

uint64_t MPEG2AACSpecificConfig::Deserialize(_DWORD *a1, unsigned int **a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 4);
  v5 = *(a2 + 5) - 32;
  *(a2 + 5) = v5;
  if (v5 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    v7 = *(a2 + 4);
    v6 = *(a2 + 5);
    v9 = v6 + 32;
    v8 = v6 == -32;
    ++*a2;
    v4 |= v7 >> v6;
    v10 = v7 << -v6;
    if (v8)
    {
      v10 = 0;
    }

    *(a2 + 4) = v10;
    *(a2 + 5) = v9;
  }

  if (v4 != 1094994246)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v39 = 136315394;
      v40 = "ACMP4BitStreams.cpp";
      v41 = 1024;
      v42 = 3425;
      v23 = MEMORY[0x1E69E9C10];
      v24 = "%25s:%-5d  ADIFHeader::Deserialize: adif_id() is incorrect";
LABEL_30:
      _os_log_impl(&dword_18F5DF000, v23, OS_LOG_TYPE_ERROR, v24, &v39, 0x12u);
    }

    return 4294967090;
  }

  Bit = TBitstreamReader<unsigned int>::GetBit(a2);
  a1[2] = Bit;
  if (Bit)
  {
    for (i = 0; i != 9; ++i)
    {
      v13 = *(a2 + 4);
      v14 = HIBYTE(v13);
      v15 = *(a2 + 5) - 8;
      *(a2 + 5) = v15;
      if (v15 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
        ++*a2;
        v18 = *(a2 + 4);
        v17 = *(a2 + 5);
        v14 |= v18 >> v17;
        *(a2 + 5) = v17 + 32;
        if (v17 == -32)
        {
          v16 = 0;
        }

        else
        {
          v16 = v18 << -v17;
        }
      }

      else
      {
        v16 = v13 << 8;
      }

      *(a2 + 4) = v16;
      *(a1 + i + 12) = v14;
    }
  }

  a1[6] = TBitstreamReader<unsigned int>::GetBit(a2);
  a1[7] = TBitstreamReader<unsigned int>::GetBit(a2);
  a1[8] = TBitstreamReader<unsigned int>::GetBit(a2);
  v19 = *(a2 + 4);
  v20 = v19 >> 9;
  v21 = *(a2 + 5) - 23;
  *(a2 + 5) = v21;
  if (v21 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    v25 = *a2 + 1;
    *a2 = v25;
    v27 = *(a2 + 4);
    v26 = *(a2 + 5);
    v20 |= v27 >> v26;
    v21 = v26 + 32;
    if (v26 == -32)
    {
      v28 = 0;
      a1[9] = v20;
      a2[2] = 0xFFFFFFFC00000000;
      goto LABEL_24;
    }

    v22 = v27 << -v26;
  }

  else
  {
    v22 = v19 << 23;
  }

  *(a2 + 4) = v22;
  a1[9] = v20;
  v28 = v22 >> 28;
  v29 = v21 - 4;
  *(a2 + 5) = v29;
  if (v29 >= 0)
  {
    v30 = 16 * v22;
    goto LABEL_27;
  }

  v25 = *a2;
LABEL_24:
  TBitstreamReader<unsigned int>::FillCacheFrom(a2, v25);
  ++*a2;
  v32 = *(a2 + 4);
  v31 = *(a2 + 5);
  v28 |= v32 >> v31;
  v29 = v31 + 32;
  *(a2 + 5) = v31 + 32;
  if (v31 == -32)
  {
    v30 = 0;
  }

  else
  {
    v30 = v32 << -v31;
  }

LABEL_27:
  *(a2 + 4) = v30;
  if (v28)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v39 = 136315394;
      v40 = "ACMP4BitStreams.cpp";
      v41 = 1024;
      v42 = 3439;
      v23 = MEMORY[0x1E69E9C10];
      v24 = "%25s:%-5d  ADIFHeader::Deserialize: count of PCEs exceeds our capacity";
      goto LABEL_30;
    }

    return 4294967090;
  }

  if (!a1[8])
  {
    v34 = v30 >> 12;
    v35 = v29 - 20;
    *(a2 + 5) = v35;
    if (v35 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      ++*a2;
      v38 = *(a2 + 4);
      v37 = *(a2 + 5);
      v34 |= v38 >> v37;
      *(a2 + 5) = v37 + 32;
      if (v37 == -32)
      {
        v36 = 0;
      }

      else
      {
        v36 = v38 << -v37;
      }
    }

    else
    {
      v36 = v30 << 20;
    }

    *(a2 + 4) = v36;
    a1[10] = v34;
  }

  MP4AudioProgramConfig::Deserialize(a1 + 11, a2);
  return 0;
}

uint64_t MP4AudioProgramConfig::Deserialize(unsigned int *a1, unsigned int **a2)
{
  v4 = *(a2 + 4);
  v5 = v4 >> 28;
  v6 = *(a2 + 5) - 4;
  *(a2 + 5) = v6;
  if (v6 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    v8 = *a2 + 1;
    *a2 = v8;
    v10 = *(a2 + 4);
    v9 = *(a2 + 5);
    v5 |= v10 >> v9;
    v6 = v9 + 32;
    if (v9 == -32)
    {
      v11 = 0;
      *a1 = v5;
      a2[2] = 0xFFFFFFFE00000000;
      goto LABEL_9;
    }

    v7 = v10 << -v9;
  }

  else
  {
    v7 = 16 * v4;
  }

  *a1 = v5;
  v11 = v7 >> 30;
  v12 = v6 - 2;
  *(a2 + 4) = v7;
  *(a2 + 5) = v12;
  if (v12 >= 0)
  {
    v13 = 4 * v7;
    goto LABEL_12;
  }

  v8 = *a2;
LABEL_9:
  TBitstreamReader<unsigned int>::FillCacheFrom(a2, v8);
  ++*a2;
  v15 = *(a2 + 4);
  v14 = *(a2 + 5);
  v11 |= v15 >> v14;
  *(a2 + 5) = v14 + 32;
  if (v14 == -32)
  {
    v13 = 0;
  }

  else
  {
    v13 = v15 << -v14;
  }

LABEL_12:
  *(a2 + 4) = v13;
  a1[1] = v11;
  MP4SampleRate::Deserialize((a1 + 2), a2, 0);
  v16 = *(a2 + 4);
  v17 = v16 >> 28;
  v18 = *(a2 + 5) - 4;
  *(a2 + 5) = v18;
  if (v18 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    v20 = *a2 + 1;
    *a2 = v20;
    v22 = *(a2 + 4);
    v21 = *(a2 + 5);
    v17 |= v22 >> v21;
    v18 = v21 + 32;
    if (v21 == -32)
    {
      v24 = 0;
      a1[3] = v17;
      v23 = a1 + 3;
      a2[2] = 0xFFFFFFFC00000000;
      goto LABEL_20;
    }

    v19 = v22 << -v21;
  }

  else
  {
    v19 = 16 * v16;
  }

  a1[3] = v17;
  v23 = a1 + 3;
  v24 = v19 >> 28;
  v25 = v18 - 4;
  *(a2 + 4) = v19;
  *(a2 + 5) = v25;
  if (v25 >= 0)
  {
    v26 = 16 * v19;
    goto LABEL_22;
  }

  v20 = *a2;
LABEL_20:
  TBitstreamReader<unsigned int>::FillCacheFrom(a2, v20);
  v27 = *a2 + 1;
  *a2 = v27;
  v29 = *(a2 + 4);
  v28 = *(a2 + 5);
  v24 |= v29 >> v28;
  v25 = v28 + 32;
  if (v28 == -32)
  {
    v31 = 0;
    a1[36] = v24;
    v30 = a1 + 36;
    a2[2] = 0xFFFFFFFC00000000;
    goto LABEL_26;
  }

  v26 = v29 << -v28;
LABEL_22:
  a1[36] = v24;
  v30 = a1 + 36;
  v31 = v26 >> 28;
  v32 = v25 - 4;
  *(a2 + 4) = v26;
  *(a2 + 5) = v32;
  if (v32 >= 0)
  {
    v33 = 16 * v26;
    goto LABEL_28;
  }

  v27 = *a2;
LABEL_26:
  TBitstreamReader<unsigned int>::FillCacheFrom(a2, v27);
  v34 = *a2 + 1;
  *a2 = v34;
  v36 = *(a2 + 4);
  v35 = *(a2 + 5);
  v31 |= v36 >> v35;
  v32 = v35 + 32;
  if (v35 == -32)
  {
    v38 = 0;
    v37 = a1 + 69;
    a1[69] = v31;
    a2[2] = 0xFFFFFFFE00000000;
    goto LABEL_32;
  }

  v33 = v36 << -v35;
LABEL_28:
  v37 = a1 + 69;
  a1[69] = v31;
  v38 = v33 >> 30;
  v39 = v32 - 2;
  *(a2 + 4) = v33;
  *(a2 + 5) = v39;
  if (v39 >= 0)
  {
    v40 = 4 * v33;
    goto LABEL_34;
  }

  v34 = *a2;
LABEL_32:
  TBitstreamReader<unsigned int>::FillCacheFrom(a2, v34);
  v41 = *a2 + 1;
  *a2 = v41;
  v43 = *(a2 + 4);
  v42 = *(a2 + 5);
  v38 |= v43 >> v42;
  v39 = v42 + 32;
  if (v42 == -32)
  {
    v45 = 0;
    v44 = a1 + 102;
    a1[102] = v38;
    a2[2] = 0xFFFFFFFD00000000;
    goto LABEL_38;
  }

  v40 = v43 << -v42;
LABEL_34:
  v44 = a1 + 102;
  a1[102] = v38;
  v45 = v40 >> 29;
  v46 = v39 - 3;
  *(a2 + 4) = v40;
  *(a2 + 5) = v46;
  if (v46 >= 0)
  {
    v47 = 8 * v40;
    goto LABEL_40;
  }

  v41 = *a2;
LABEL_38:
  TBitstreamReader<unsigned int>::FillCacheFrom(a2, v41);
  v48 = *a2 + 1;
  *a2 = v48;
  v50 = *(a2 + 4);
  v49 = *(a2 + 5);
  v45 |= v50 >> v49;
  v46 = v49 + 32;
  if (v49 == -32)
  {
    v52 = 0;
    v51 = a1 + 135;
    a1[135] = v45;
    a2[2] = 0xFFFFFFFC00000000;
    goto LABEL_44;
  }

  v47 = v50 << -v49;
LABEL_40:
  v51 = a1 + 135;
  a1[135] = v45;
  v52 = v47 >> 28;
  v53 = v46 - 4;
  *(a2 + 4) = v47;
  *(a2 + 5) = v53;
  if (v53 >= 0)
  {
    v54 = 16 * v47;
    goto LABEL_47;
  }

  v48 = *a2;
LABEL_44:
  TBitstreamReader<unsigned int>::FillCacheFrom(a2, v48);
  ++*a2;
  v56 = *(a2 + 4);
  v55 = *(a2 + 5);
  v52 |= v56 >> v55;
  *(a2 + 5) = v55 + 32;
  if (v55 == -32)
  {
    v54 = 0;
  }

  else
  {
    v54 = v56 << -v55;
  }

LABEL_47:
  *(a2 + 4) = v54;
  a1[168] = v52;
  Bit = TBitstreamReader<unsigned int>::GetBit(a2);
  a1[201] = Bit;
  if (Bit)
  {
    v58 = *(a2 + 4);
    v59 = v58 >> 28;
    v60 = *(a2 + 5) - 4;
    *(a2 + 5) = v60;
    if (v60 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      ++*a2;
      v63 = *(a2 + 4);
      v62 = *(a2 + 5);
      v59 |= v63 >> v62;
      *(a2 + 5) = v62 + 32;
      if (v62 == -32)
      {
        v61 = 0;
      }

      else
      {
        v61 = v63 << -v62;
      }
    }

    else
    {
      v61 = 16 * v58;
    }

    *(a2 + 4) = v61;
    a1[202] = v59;
  }

  v64 = TBitstreamReader<unsigned int>::GetBit(a2);
  a1[204] = v64;
  if (v64)
  {
    v65 = *(a2 + 4);
    v66 = v65 >> 28;
    v67 = *(a2 + 5) - 4;
    *(a2 + 5) = v67;
    if (v67 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      ++*a2;
      v70 = *(a2 + 4);
      v69 = *(a2 + 5);
      v66 |= v70 >> v69;
      *(a2 + 5) = v69 + 32;
      if (v69 == -32)
      {
        v68 = 0;
      }

      else
      {
        v68 = v70 << -v69;
      }
    }

    else
    {
      v68 = 16 * v65;
    }

    *(a2 + 4) = v68;
    a1[205] = v66;
  }

  v71 = TBitstreamReader<unsigned int>::GetBit(a2);
  a1[207] = v71;
  if (v71)
  {
    v72 = *(a2 + 4);
    v73 = v72 >> 30;
    v74 = *(a2 + 5) - 2;
    *(a2 + 5) = v74;
    if (v74 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      ++*a2;
      v77 = *(a2 + 4);
      v76 = *(a2 + 5);
      v73 |= v77 >> v76;
      *(a2 + 5) = v76 + 32;
      if (v76 == -32)
      {
        v75 = 0;
      }

      else
      {
        v75 = v77 << -v76;
      }
    }

    else
    {
      v75 = 4 * v72;
    }

    *(a2 + 4) = v75;
    a1[208] = v73;
    a1[209] = TBitstreamReader<unsigned int>::GetBit(a2);
  }

  MP4AudioElementList::Deserialize(v23, a2, 1);
  MP4AudioElementList::Deserialize(v30, a2, 1);
  MP4AudioElementList::Deserialize(v37, a2, 1);
  MP4AudioElementList::Deserialize(v44, a2, 0);
  MP4AudioElementList::Deserialize(v51, a2, 0);
  result = MP4AudioElementList::Deserialize(a1 + 168, a2, 1);
  v79 = *(a2 + 4);
  v80 = *(a2 + 5);
  if ((v80 & 7) != 0)
  {
    *(a2 + 5) = v80 & 0xFFFFFFF8;
    if (v80 < 0)
    {
      result = TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      v81 = *(a2 + 5);
      ++*a2;
      v80 = v81 + 32;
      if (v81 == -32)
      {
        v79 = 0;
      }

      else
      {
        v79 = *(a2 + 4) << -v81;
      }
    }

    else
    {
      v79 <<= v80 & 7;
      v80 &= 0xFFFFFFF8;
    }

    *(a2 + 4) = v79;
  }

  v82 = HIBYTE(v79);
  v83 = v80 - 8;
  *(a2 + 5) = v83;
  if (v83 < 0)
  {
    result = TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    ++*a2;
    v86 = *(a2 + 4);
    v85 = *(a2 + 5);
    v82 |= v86 >> v85;
    *(a2 + 5) = v85 + 32;
    if (v85 == -32)
    {
      v84 = 0;
    }

    else
    {
      v84 = v86 << -v85;
    }
  }

  else
  {
    v84 = v79 << 8;
  }

  *(a2 + 4) = v84;
  a1[210] = v82;
  if (v82)
  {
    v87 = 0;
    do
    {
      v88 = *(a2 + 4);
      v89 = HIBYTE(v88);
      v90 = *(a2 + 5) - 8;
      *(a2 + 5) = v90;
      if (v90 < 0)
      {
        result = TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
        ++*a2;
        v93 = *(a2 + 4);
        v92 = *(a2 + 5);
        v89 |= v93 >> v92;
        *(a2 + 5) = v92 + 32;
        if (v92 == -32)
        {
          v91 = 0;
        }

        else
        {
          v91 = v93 << -v92;
        }
      }

      else
      {
        v91 = v88 << 8;
      }

      *(a2 + 4) = v91;
      *(a1 + v87++ + 844) = v89;
    }

    while (v87 < a1[210]);
  }

  return result;
}

uint64_t MP4SampleRate::Deserialize(MP4SampleRate *this, void *a2, int a3)
{
  v6 = *(a2 + 4);
  v7 = v6 >> 28;
  v8 = *(a2 + 5) - 4;
  *(a2 + 5) = v8;
  if (v8 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    *a2 += 4;
    v11 = *(a2 + 4);
    v10 = *(a2 + 5);
    v7 |= v11 >> v10;
    *(a2 + 5) = v10 + 32;
    if (v10 == -32)
    {
      v9 = 0;
    }

    else
    {
      v9 = v11 << -v10;
    }
  }

  else
  {
    v9 = 16 * v6;
  }

  *(a2 + 4) = v9;
  result = MP4SampleRate::SetFromIndex(this, v7, a3);
  if (v7 == 15)
  {
    v13 = *(a2 + 4);
    v14 = v13 >> 8;
    v15 = *(a2 + 5) - 24;
    *(a2 + 5) = v15;
    if (v15 < 0)
    {
      result = TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      *a2 += 4;
      v18 = *(a2 + 4);
      v17 = *(a2 + 5);
      v14 |= v18 >> v17;
      *(a2 + 5) = v17 + 32;
      if (v17 == -32)
      {
        v16 = 0;
      }

      else
      {
        v16 = v18 << -v17;
      }
    }

    else
    {
      v16 = v13 << 24;
    }

    *(a2 + 4) = v16;
    *this = v14;
  }

  return result;
}

unsigned int *MP4AudioElementList::Deserialize(unsigned int *result, uint64_t a2, int a3)
{
  if (*result)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = &v5[v6];
      if (a3)
      {
        result = TBitstreamReader<unsigned int>::GetBit(a2);
        v7[1] = result;
      }

      v8 = *(a2 + 16);
      v9 = v8 >> 28;
      v10 = *(a2 + 20) - 4;
      *(a2 + 20) = v10;
      if (v10 < 0)
      {
        result = TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
        *a2 += 4;
        v13 = *(a2 + 16);
        v12 = *(a2 + 20);
        v9 |= v13 >> v12;
        *(a2 + 20) = v12 + 32;
        if (v12 == -32)
        {
          v11 = 0;
        }

        else
        {
          v11 = v13 << -v12;
        }
      }

      else
      {
        v11 = 16 * v8;
      }

      *(a2 + 16) = v11;
      v7[17] = v9;
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

_DWORD *MP4SampleRate::SetFromIndex(_DWORD *this, unsigned int a2, int a3)
{
  if (a2 > 0xC)
  {
    if (a2 >= 0x10 && a3 || a2 >= 0xF && !a3)
    {
      exception = __cxa_allocate_exception(8uLL);
      *exception = "Error in MP4SampleRate::deserialize(): illegal sample rate index";
      __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
    }
  }

  else
  {
    *this = MP4SampleRate::kMP4SampleRateTable[a2];
  }

  return this;
}

uint64_t MPEG1Or2SpecificConfig::Deserialize(uint64_t a1, void *a2)
{
  v4 = *(a2 + 4);
  v5 = *(a2 + 5) - 32;
  *(a2 + 5) = v5;
  if (v5 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    v8 = *(a2 + 4);
    v7 = *(a2 + 5);
    v5 = v7 + 32;
    v9 = v7 == -32;
    *a2 += 4;
    v6 = (v8 >> v7) | v4;
    v10 = v8 << -v7;
    if (v9)
    {
      v4 = 0;
    }

    else
    {
      v4 = v10;
    }

    *(a2 + 4) = v4;
  }

  else
  {
    v6 = v4;
  }

  *(a1 + 8) = bswap32(v6);
  v11 = v4 >> 23;
  v12 = v5 - 9;
  *(a2 + 5) = v12;
  if (v12 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    *a2 += 4;
    v15 = *(a2 + 4);
    v14 = *(a2 + 5);
    v11 |= v15 >> v14;
    *(a2 + 5) = v14 + 32;
    if (v14 == -32)
    {
      v13 = 0;
    }

    else
    {
      v13 = v15 << -v14;
    }
  }

  else
  {
    v13 = v4 << 9;
  }

  *(a2 + 4) = v13;
  *(a1 + 12) = v11;
  return 0;
}

unint64_t MP4SampleRate::Index(MP4SampleRate *this)
{
  v1 = 13;
  v2 = MP4SampleRate::kMP4SampleRateTable;
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[4 * (v1 >> 1)];
    v6 = *v4;
    v5 = (v4 + 1);
    v1 += ~(v1 >> 1);
    if (v6 > this)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  if (v2 == "mcaa caarcaatcaahcaa" || *v2 != this)
  {
    return 15;
  }

  else
  {
    return (v2 - MP4SampleRate::kMP4SampleRateTable) >> 2;
  }
}

uint64_t MP4SampleRate::Serialize(unsigned int *a1, uint64_t a2)
{
  v4 = MP4SampleRate::Index(*a1);
  if (v4 == 15)
  {
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, 15, 4u);
    v4 = *a1;
    v5 = a2;
    v6 = 24;
  }

  else
  {
    v5 = a2;
    v6 = 4;
  }

  return AT::TBitstreamWriter<unsigned int>::PutBits(v5, v4, v6);
}

int *MP4AudioObjectType::Deserialize(int *result, void *a2)
{
  v3 = result;
  v4 = *(a2 + 4);
  v5 = v4 >> 27;
  v6 = *(a2 + 5) - 5;
  *(a2 + 5) = v6;
  if (v6 < 0)
  {
    result = TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    *a2 += 4;
    v9 = *(a2 + 4);
    v8 = *(a2 + 5);
    v5 |= v9 >> v8;
    v6 = v8 + 32;
    *(a2 + 5) = v8 + 32;
    if (v8 == -32)
    {
      v7 = 0;
    }

    else
    {
      v7 = v9 << -v8;
    }
  }

  else
  {
    v7 = 32 * v4;
  }

  *(a2 + 4) = v7;
  *v3 = v5;
  if (v5 == 31)
  {
    v10 = v7 >> 26;
    v11 = v6 - 6;
    *(a2 + 5) = v11;
    if (v11 < 0)
    {
      result = TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      *a2 += 4;
      v14 = *(a2 + 4);
      v13 = *(a2 + 5);
      v10 |= v14 >> v13;
      *(a2 + 5) = v13 + 32;
      if (v13 == -32)
      {
        v12 = 0;
      }

      else
      {
        v12 = v14 << -v13;
      }
    }

    else
    {
      v12 = v7 << 6;
    }

    *(a2 + 4) = v12;
    v5 = v10 + *v3 + 1;
    *v3 = v5;
  }

  if ((v5 & 0xFFFFFFFE) == 0xA)
  {
    *v3 = 0;
  }

  return result;
}

uint64_t MP4AudioObjectType::Serialize(unsigned int a1, uint64_t a2)
{
  v3 = a1;
  if (a1 < 0x1F)
  {
    v5 = a2;
    v6 = 5;
  }

  else
  {
    v4 = a1 - 32;
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, 31, 5u);
    v5 = a2;
    v3 = v4;
    v6 = 6;
  }

  return AT::TBitstreamWriter<unsigned int>::PutBits(v5, v3, v6);
}

uint64_t ADTSHeader::Deserialize(ADTSHeader *this, const unsigned __int8 *a2, unsigned int a3)
{
  if (a3 > 6)
  {
    v4 = a2[1];
    v5 = (*a2 << 24) | (v4 << 16);
    v6 = a2[2];
    *this = (a2[3] | (v6 << 8) | v5) >> 4;
    v7 = (a2[4] << 16) & 0xF0FFFFFF | ((a2[3] & 0xF) << 24) | (a2[5] << 8);
    *(this + 1) = v7 | a2[6];
    if (v5 >> 20 != 4095)
    {
      v3 = 1937337955;
      goto LABEL_7;
    }

    if ((v4 & 6) != 0)
    {
      v3 = 1818327410;
      goto LABEL_7;
    }

    if ((v4 & 8) != 0 && (v6 & 0xC0) == 0xC0)
    {
      v3 = 1886547814;
      goto LABEL_7;
    }

    if ((v6 & 0x3Cu) >= 0x31)
    {
      v3 = 1918989413;
      goto LABEL_7;
    }

    v9 = (v7 >> 13) & 0x1FFF;
    if (v4)
    {
      v10 = 7;
    }

    else
    {
      v10 = 9;
    }

    if (v9 > v10)
    {
      if (v4)
      {
        *(this + 4) = 0;
        return *(this + 3);
      }

      if (a3 > 8)
      {
        *(this + 4) = bswap32(*(a2 + 7)) >> 16;
        return *(this + 3);
      }
    }
  }

  v3 = 1651861094;
LABEL_7:
  *(this + 3) = v3;
  return *(this + 3);
}

unsigned int *MP4AudioElementList::Serialize(unsigned int *result, uint64_t a2)
{
  if (*result)
  {
    v3 = result;
    v4 = 0;
    do
    {
      v5 = &v3[v4];
      AT::TBitstreamWriter<unsigned int>::PutBits(a2, v5[1], 1u);
      result = AT::TBitstreamWriter<unsigned int>::PutBits(a2, v5[17], 4u);
      ++v4;
    }

    while (v4 < *v3);
  }

  return result;
}

uint64_t MP4AudioProgramConfig::SerializeCount(MP4AudioProgramConfig *this, char a2)
{
  if (MP4SampleRate::Index(*(this + 2)) == 15)
  {
    v4 = 28;
  }

  else
  {
    v4 = 4;
  }

  v5 = v4 + 28;
  v6 = v4 | 0x20;
  if (!*(this + 201))
  {
    v6 = v5;
  }

  if (*(this + 204))
  {
    v7 = v6 + 5;
  }

  else
  {
    v7 = v6 + 1;
  }

  if (*(this + 207))
  {
    v8 = 4;
  }

  else
  {
    v8 = 1;
  }

  v9 = v7 + v8 + 4 * (*(this + 135) + *(this + 102)) + 5 * (*(this + 36) + *(this + 3) + *(this + 69) + *(this + 168));
  if (((v9 + a2) & 7) != 0)
  {
    v9 = v9 - ((v9 + a2) & 7) + 8;
  }

  return (v9 + 8 * *(this + 210) + 8);
}

uint64_t MP4AudioProgramConfig::Serialize(uint64_t a1, uint64_t a2)
{
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *a1, 4u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 4), 2u);
  v4 = MP4SampleRate::Index(*(a1 + 8));
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, v4, 4u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 12), 4u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 144), 4u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 276), 4u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 408), 2u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 540), 3u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 672), 4u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 804), 1u);
  if (*(a1 + 804))
  {
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 808), 4u);
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 816), 1u);
  if (*(a1 + 816))
  {
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 820), 4u);
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 828), 1u);
  if (*(a1 + 828))
  {
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 832), 2u);
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 836), 1u);
  }

  MP4AudioElementList::Serialize((a1 + 12), a2);
  MP4AudioElementList::Serialize((a1 + 144), a2);
  MP4AudioElementList::Serialize((a1 + 276), a2);
  if (*(a1 + 408))
  {
    v5 = 0;
    do
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 476 + 4 * v5++), 4u);
    }

    while (v5 < *(a1 + 408));
  }

  if (*(a1 + 540))
  {
    v6 = 0;
    do
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 608 + 4 * v6++), 4u);
    }

    while (v6 < *(a1 + 540));
  }

  MP4AudioElementList::Serialize((a1 + 672), a2);
  v7 = *(a2 + 28) & 7;
  if (v7)
  {
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, 0, v7);
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 840), 8u);
  if (*(a1 + 840))
  {
    v8 = 0;
    do
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 844 + v8++), 8u);
    }

    while (v8 < *(a1 + 840));
  }

  return AT::TBitstreamWriter<unsigned int>::Flush(a2);
}

uint64_t MP4AudioProgramConfig::TotalNumChannels(MP4AudioProgramConfig *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    LODWORD(result) = 0;
    v4 = (this + 16);
    do
    {
      if (*v4++)
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

      result = (v6 + result);
      --v2;
    }

    while (v2);
  }

  else
  {
    result = 0;
  }

  v7 = *(this + 36);
  if (v7)
  {
    v8 = (this + 148);
    do
    {
      if (*v8++)
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      result = (v10 + result);
      --v7;
    }

    while (v7);
  }

  v11 = *(this + 69);
  if (v11)
  {
    v12 = (this + 280);
    do
    {
      if (*v12++)
      {
        v14 = 2;
      }

      else
      {
        v14 = 1;
      }

      result = (v14 + result);
      --v11;
    }

    while (v11);
  }

  v15 = *(this + 102);
  if (v15)
  {
    v16 = (this + 412);
    do
    {
      if (*v16++)
      {
        v18 = 2;
      }

      else
      {
        v18 = 1;
      }

      result = (v18 + result);
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t DecoderConfigDescr::DeserializeVoiceDecoderSpecificPayload(uint64_t a1, uint64_t a2, int *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 1208);
  if (!v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v27 = 136315394;
      v28 = "ACMP4BitStreams.cpp";
      v29 = 1024;
      v30 = 1461;
      v15 = MEMORY[0x1E69E9C10];
      v16 = "%25s:%-5d  DecoderConfigDescr::DeserializeVoiceDecoderSpecificPayload: NULL MP413KVoiceSpecificConfig";
      goto LABEL_29;
    }

    return 4294967090;
  }

  v7 = *(a2 + 8);
  v8 = *a2;
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  v11 = HIBYTE(v9);
  v12 = v10 - 8;
  *(a2 + 20) = v10 - 8;
  if (v10 - 8 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v8);
    v14 = (*a2 + 4);
    *a2 = v14;
    v18 = *(a2 + 16);
    v17 = *(a2 + 20);
    v11 |= v18 >> v17;
    v12 = v17 + 32;
    *(a2 + 20) = v17 + 32;
    if (v17 == -32)
    {
      v13 = 0;
    }

    else
    {
      v13 = v18 << -v17;
    }
  }

  else
  {
    v13 = v9 << 8;
    v14 = v8;
  }

  *(a2 + 16) = v13;
  *(a1 + 32) = v11;
  if (v11 == 5)
  {
    v19 = 0;
    v20 = 0;
    v21 = v7 - v8;
    while (1)
    {
      v22 = HIBYTE(v13);
      v12 -= 8;
      *(a2 + 20) = v12;
      if (v12 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, v14);
        v14 = (*a2 + 4);
        *a2 = v14;
        v24 = *(a2 + 16);
        v23 = *(a2 + 20);
        v22 |= v24 >> v23;
        v12 = v23 + 32;
        *(a2 + 20) = v23 + 32;
        v13 = v23 == -32 ? 0 : v24 << -v23;
      }

      else
      {
        v13 <<= 8;
      }

      *(a2 + 16) = v13;
      if (v19 == 5)
      {
        break;
      }

      ++v19;
      v25 = v22 & 0x7F | (v20 << 7);
      v20 = v25;
      if ((v22 & 0x80) == 0)
      {
        *(a1 + 36) = v25;
        if (v19 != 5)
        {
          if (a3)
          {
            *a3 = (v10 - v12 + 8 * (v14 - *(a2 + 8) + v21)) / 8;
          }

          result = (*(*v3 + 16))(v3, a2);
          if (!result)
          {
            *(a1 + 48) = 1;
            return result;
          }

          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            return 4294967090;
          }

          v27 = 136315394;
          v28 = "ACMP4BitStreams.cpp";
          v29 = 1024;
          v30 = 1477;
          v15 = MEMORY[0x1E69E9C10];
          v16 = "%25s:%-5d  DecoderConfigDescr::DeserializeVoiceDecoderSpecificPayload: could not parse QCelp header";
LABEL_29:
          _os_log_impl(&dword_18F5DF000, v15, OS_LOG_TYPE_ERROR, v16, &v27, 0x12u);
          return 4294967090;
        }

LABEL_27:
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          return 4294967090;
        }

        v27 = 136315394;
        v28 = "ACMP4BitStreams.cpp";
        v29 = 1024;
        v30 = 1469;
        v15 = MEMORY[0x1E69E9C10];
        v16 = "%25s:%-5d  DecoderConfigDescr::DeserializeVoiceDecoderSpecificPayload: the Decoder specific info tag size is incorrect";
        goto LABEL_29;
      }
    }

    *(a1 + 36) = 0;
    goto LABEL_27;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v27 = 136315394;
    v28 = "ACMP4BitStreams.cpp";
    v29 = 1024;
    v30 = 1465;
    v15 = MEMORY[0x1E69E9C10];
    v16 = "%25s:%-5d  DecoderConfigDescr::DeserializeVoiceDecoderSpecificPayload: the DecoderSpecificInfo tag is incorrect";
    goto LABEL_29;
  }

  return 4294967090;
}

uint64_t DecoderConfigDescr::DeserializeMPEG4AudioSpecificConfig(int *a1, uint64_t *a2, unsigned int a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a3 && *(a2 + 5) + 8 * (*(a2 + 2) - *a2) < a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "ACMP4BitStreams.cpp";
      v21 = 1024;
      v22 = 1494;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d  DecoderConfigDescr::DeserializeMPEG4AudioSpecificConfig(): BitstreamReader doesn't provide access to the full specified length of the AudioSpecificConfig";
LABEL_21:
      _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_ERROR, v6, buf, 0x12u);
      return 4294967090;
    }

    return 4294967090;
  }

  MP4AudioObjectType::Deserialize(a1 + 10, a2);
  MP4SampleRate::Deserialize((a1 + 11), a2, 1);
  if (a1[11])
  {
    v7 = *(a2 + 4);
    v8 = v7 >> 28;
    v9 = *(a2 + 5) - 4;
    *(a2 + 5) = v9;
    if (v9 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      *a2 += 4;
      v12 = *(a2 + 4);
      v11 = *(a2 + 5);
      v8 |= v12 >> v11;
      *(a2 + 5) = v11 + 32;
      if (v11 == -32)
      {
        v10 = 0;
      }

      else
      {
        v10 = v12 << -v11;
      }
    }

    else
    {
      v10 = 16 * v7;
    }

    *(a2 + 4) = v10;
    a1[14] = 0;
    v13 = a1 + 14;
    a1[18] = -1;
    a1[20] = -1;
    v14 = a1 + 20;
    a1[12] = v8;
    a1[15] = 0;
    v15 = a1 + 15;
    v16 = a1[10];
    if (v16 == 29)
    {
      *v13 = 5;
      a1[18] = 1;
    }

    else
    {
      if (v16 != 5)
      {
        goto LABEL_24;
      }

      *v13 = 5;
      v14 = a1 + 18;
    }

    *v14 = 1;
    MP4SampleRate::Deserialize((a1 + 15), a2, 1);
    v17 = a1[11];
    if (*v15 != v17 && *v15 != 2 * v17)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v20 = "ACMP4BitStreams.cpp";
        v21 = 1024;
        v22 = 1527;
        v5 = MEMORY[0x1E69E9C10];
        v6 = "%25s:%-5d  DecoderConfigDescr::DeserializeMPEG4AudioSpecificConfig: the sampleRate is incorrect";
        goto LABEL_21;
      }

      return 4294967090;
    }

    MP4AudioObjectType::Deserialize(a1 + 10, a2);
    v16 = a1[10];
LABEL_24:
    if (v16 <= 23)
    {
      if (v16 <= 6)
      {
        if ((v16 - 1) < 4)
        {
          goto LABEL_27;
        }

LABEL_47:
        operator new();
      }

      if (v16 > 20)
      {
        if (v16 != 21 && v16 != 23)
        {
          goto LABEL_47;
        }
      }

      else if (v16 != 7)
      {
        if (v16 != 8)
        {
          goto LABEL_47;
        }

        goto LABEL_36;
      }

LABEL_27:
      operator new();
    }

    if (v16 > 36)
    {
      if ((v16 - 37) < 2)
      {
        operator new();
      }

      if (v16 == 39)
      {
        operator new();
      }

      if (v16 == 42)
      {
        operator new();
      }

      goto LABEL_47;
    }

    if (v16 > 34)
    {
      if (v16 != 35)
      {
        operator new();
      }

      operator new();
    }

    if (v16 != 24)
    {
      if (v16 == 30)
      {
        operator new();
      }

      goto LABEL_47;
    }

LABEL_36:
    operator new();
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v20 = "ACMP4BitStreams.cpp";
    v21 = 1024;
    v22 = 1505;
    v5 = MEMORY[0x1E69E9C10];
    v6 = "%25s:%-5d  DecoderConfigDescr::DeserializeMPEG4AudioSpecificConfig: invalid sample rate";
    goto LABEL_21;
  }

  return 4294967090;
}

void sub_18F72F57C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<MP4SpatialAudioSpecificConfig *,std::shared_ptr<MP4AOTSpecificBase>::__shared_ptr_default_delete<MP4AOTSpecificBase,MP4SpatialAudioSpecificConfig>,std::allocator<MP4SpatialAudioSpecificConfig>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<MP4SpatialAudioSpecificConfig *,std::shared_ptr<MP4AOTSpecificBase>::__shared_ptr_default_delete<MP4AOTSpecificBase,MP4SpatialAudioSpecificConfig>,std::allocator<MP4SpatialAudioSpecificConfig>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t std::__shared_ptr_pointer<MP4AOTSpecificBase *,std::shared_ptr<MP4AOTSpecificBase>::__shared_ptr_default_delete<MP4AOTSpecificBase,MP4AOTSpecificBase>,std::allocator<MP4AOTSpecificBase>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<MP4AOTSpecificBase *,std::shared_ptr<MP4AOTSpecificBase>::__shared_ptr_default_delete<MP4AOTSpecificBase,MP4AOTSpecificBase>,std::allocator<MP4AOTSpecificBase>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t DecoderConfigDescr::DeserializeMPEG4AudioSpecificPayload(int *a1, uint64_t a2, int *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 8);
  v7 = *a2;
  v8 = *(a2 + 16);
  v9 = *(a2 + 20);
  v10 = HIBYTE(v8);
  v11 = v9 - 8;
  *(a2 + 20) = v9 - 8;
  if (v9 - 8 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v7);
    v13 = (*a2 + 4);
    *a2 = v13;
    v15 = *(a2 + 16);
    v14 = *(a2 + 20);
    v10 |= v15 >> v14;
    v11 = v14 + 32;
    *(a2 + 20) = v14 + 32;
    if (v14 == -32)
    {
      v12 = 0;
    }

    else
    {
      v12 = v15 << -v14;
    }
  }

  else
  {
    v12 = v8 << 8;
    v13 = v7;
  }

  *(a2 + 16) = v12;
  a1[8] = v10;
  if (v10 == 5)
  {
    v16 = 0;
    v17 = 0;
    v18 = v6 - v7;
    do
    {
      v19 = HIBYTE(v12);
      v11 -= 8;
      *(a2 + 20) = v11;
      if (v11 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, v13);
        v13 = (*a2 + 4);
        *a2 = v13;
        v21 = *(a2 + 16);
        v20 = *(a2 + 20);
        v19 |= v21 >> v20;
        v11 = v20 + 32;
        *(a2 + 20) = v20 + 32;
        if (v20 == -32)
        {
          v12 = 0;
        }

        else
        {
          v12 = v21 << -v20;
        }
      }

      else
      {
        v12 <<= 8;
      }

      *(a2 + 16) = v12;
      if (v16 == 5)
      {
        a1[9] = 0;
        goto LABEL_24;
      }

      ++v16;
      v22 = v19 & 0x7F | (v17 << 7);
      v17 = v22;
    }

    while ((v19 & 0x80) != 0);
    a1[9] = v22;
    if (v16 != 5)
    {
      if (a3)
      {
        *a3 = (v9 - v11 + 8 * (v13 - *(a2 + 8) + v18)) / 8;
        v22 = a1[9];
      }

      return DecoderConfigDescr::DeserializeMPEG4AudioSpecificConfig(a1, a2, 8 * v22);
    }

LABEL_24:
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return 4294967090;
    }

    v26 = 136315394;
    v27 = "ACMP4BitStreams.cpp";
    v28 = 1024;
    v29 = 1763;
    v24 = MEMORY[0x1E69E9C10];
    v25 = "%25s:%-5d  DecoderConfigDescr::DeserializeMPEG4AudioSpecificPayload: the Decoder specific info tag size is incorrect";
    goto LABEL_26;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v26 = 136315394;
    v27 = "ACMP4BitStreams.cpp";
    v28 = 1024;
    v29 = 1759;
    v24 = MEMORY[0x1E69E9C10];
    v25 = "%25s:%-5d  DecoderConfigDescr::DeserializeMPEG4AudioSpecificPayload: the DecoderSpecificInfo tag is incorrect";
LABEL_26:
    _os_log_impl(&dword_18F5DF000, v24, OS_LOG_TYPE_ERROR, v25, &v26, 0x12u);
  }

  return 4294967090;
}

uint64_t DecoderConfigDescr::DeserializeMPEG2AACAudioDecoderSpecificPayload(uint64_t a1, uint64_t a2, int *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 1208);
  if (!v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = 136315394;
      v30 = "ACMP4BitStreams.cpp";
      v31 = 1024;
      v32 = 1801;
      v16 = MEMORY[0x1E69E9C10];
      v17 = "%25s:%-5d  DecoderConfigDescr::DeserializeMPEG2AACAudioDecoderSpecificPayload: NULL MPEG2AACSpecificConfig";
      goto LABEL_32;
    }

    return 4294967090;
  }

  v5 = *(a1 + 8);
  if ((v5 - 102) >= 3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = 136315394;
      v30 = "ACMP4BitStreams.cpp";
      v31 = 1024;
      v32 = 1820;
      v16 = MEMORY[0x1E69E9C10];
      v17 = "%25s:%-5d  DecoderConfigDescr::DeserializeMPEG2AACAudioDecoderSpecificPayload: unrecognized object type indication";
      goto LABEL_32;
    }

    return 4294967090;
  }

  v8 = *(a2 + 8);
  v9 = *a2;
  v10 = *(a2 + 20);
  *(a1 + 40) = v5 - 101;
  v11 = *(a2 + 16);
  v12 = HIBYTE(v11);
  v13 = *(a2 + 20) - 8;
  *(a2 + 20) = v13;
  if (v13 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v9);
    v15 = (*a2 + 4);
    *a2 = v15;
    v19 = *(a2 + 16);
    v18 = *(a2 + 20);
    v12 |= v19 >> v18;
    v13 = v18 + 32;
    *(a2 + 20) = v18 + 32;
    if (v18 == -32)
    {
      v14 = 0;
    }

    else
    {
      v14 = v19 << -v18;
    }
  }

  else
  {
    v14 = v11 << 8;
    v15 = v9;
  }

  *(a2 + 16) = v14;
  *(a1 + 32) = v12;
  if (v12 == 5)
  {
    v20 = 0;
    v21 = 0;
    v22 = v8 - v9;
    while (1)
    {
      v23 = HIBYTE(v14);
      v13 -= 8;
      *(a2 + 20) = v13;
      if (v13 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, v15);
        v15 = (*a2 + 4);
        *a2 = v15;
        v25 = *(a2 + 16);
        v24 = *(a2 + 20);
        v23 |= v25 >> v24;
        v13 = v24 + 32;
        *(a2 + 20) = v24 + 32;
        v14 = v24 == -32 ? 0 : v25 << -v24;
      }

      else
      {
        v14 <<= 8;
      }

      *(a2 + 16) = v14;
      if (v20 == 5)
      {
        break;
      }

      ++v20;
      v26 = v23 & 0x7F | (v21 << 7);
      v21 = v26;
      if ((v23 & 0x80) == 0)
      {
        *(a1 + 36) = v26;
        if (v20 != 5)
        {
          if (a3)
          {
            *a3 = (v10 - v13 + 8 * (v15 - *(a2 + 8) + v22)) / 8;
          }

          if (!(*(*v3 + 16))(v3, a2))
          {
            memcpy((a1 + 88), (v3 + 44), 0x44CuLL);
            result = 0;
            v28 = *(a1 + 96);
            *(a1 + 48) = 0;
            *(a1 + 44) = v28;
            *(a1 + 72) = -1;
            *(a1 + 80) = -1;
            return result;
          }

          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            return 4294967090;
          }

          v29 = 136315394;
          v30 = "ACMP4BitStreams.cpp";
          v31 = 1024;
          v32 = 1837;
          v16 = MEMORY[0x1E69E9C10];
          v17 = "%25s:%-5d  DecoderConfigDescr::DeserializeMPEG2AACAudioDecoderSpecificPayload: could not parse ADIF header";
LABEL_32:
          _os_log_impl(&dword_18F5DF000, v16, OS_LOG_TYPE_ERROR, v17, &v29, 0x12u);
          return 4294967090;
        }

LABEL_30:
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          return 4294967090;
        }

        v29 = 136315394;
        v30 = "ACMP4BitStreams.cpp";
        v31 = 1024;
        v32 = 1829;
        v16 = MEMORY[0x1E69E9C10];
        v17 = "%25s:%-5d  DecoderConfigDescr::DeserializeMPEG2AACAudioDecoderSpecificPayload: the Decoder specific info tag size is incorrect";
        goto LABEL_32;
      }
    }

    *(a1 + 36) = 0;
    goto LABEL_30;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v29 = 136315394;
    v30 = "ACMP4BitStreams.cpp";
    v31 = 1024;
    v32 = 1825;
    v16 = MEMORY[0x1E69E9C10];
    v17 = "%25s:%-5d  DecoderConfigDescr::DeserializeMPEG2AACAudioDecoderSpecificPayload: the DecoderSpecificInfo tag is incorrect";
    goto LABEL_32;
  }

  return 4294967090;
}

uint64_t DecoderConfigDescr::DeserializeMPEG1Or2AudioDecoderSpecificPayload(uint64_t a1, uint64_t a2, int *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 1208);
  if (!v3)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return 4294967090;
    }

    v27 = 136315394;
    v28 = "ACMP4BitStreams.cpp";
    v29 = 1024;
    v30 = 1882;
    v15 = MEMORY[0x1E69E9C10];
    v16 = "%25s:%-5d  DecoderConfigDescr::DeserializeMPEG1Or2AudioDecoderSpecificPayload: NULL MPEG1Or2SpecificConfig";
LABEL_27:
    _os_log_impl(&dword_18F5DF000, v15, OS_LOG_TYPE_ERROR, v16, &v27, 0x12u);
    return 4294967090;
  }

  v7 = *(a2 + 8);
  v8 = *a2;
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  v11 = HIBYTE(v9);
  v12 = v10 - 8;
  *(a2 + 20) = v10 - 8;
  if (v10 - 8 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v8);
    v14 = (*a2 + 4);
    *a2 = v14;
    v18 = *(a2 + 16);
    v17 = *(a2 + 20);
    v11 |= v18 >> v17;
    v12 = v17 + 32;
    *(a2 + 20) = v17 + 32;
    if (v17 == -32)
    {
      v13 = 0;
    }

    else
    {
      v13 = v18 << -v17;
    }
  }

  else
  {
    v13 = v9 << 8;
    v14 = v8;
  }

  *(a2 + 16) = v13;
  *(a1 + 32) = v11;
  if (v11 != 5)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return 4294967090;
    }

    v27 = 136315394;
    v28 = "ACMP4BitStreams.cpp";
    v29 = 1024;
    v30 = 1886;
    v15 = MEMORY[0x1E69E9C10];
    v16 = "%25s:%-5d  DecoderConfigDescr::DeserializeMPEG1Or2AudioDecoderSpecificPayload: the DecoderSpecificInfo tag is incorrect";
    goto LABEL_27;
  }

  v19 = 0;
  v20 = 0;
  v21 = v7 - v8;
  do
  {
    v22 = HIBYTE(v13);
    v12 -= 8;
    *(a2 + 20) = v12;
    if (v12 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, v14);
      v14 = (*a2 + 4);
      *a2 = v14;
      v24 = *(a2 + 16);
      v23 = *(a2 + 20);
      v22 |= v24 >> v23;
      v12 = v23 + 32;
      *(a2 + 20) = v23 + 32;
      if (v23 == -32)
      {
        v13 = 0;
      }

      else
      {
        v13 = v24 << -v23;
      }
    }

    else
    {
      v13 <<= 8;
    }

    *(a2 + 16) = v13;
    if (v19 == 5)
    {
      *(a1 + 36) = 0;
      goto LABEL_25;
    }

    ++v19;
    v25 = v22 & 0x7F | (v20 << 7);
    v20 = v25;
  }

  while ((v22 & 0x80) != 0);
  *(a1 + 36) = v25;
  if (v19 != 5)
  {
    if (a3)
    {
      *a3 = (v10 - v12 + 8 * (v14 - *(a2 + 8) + v21)) / 8;
    }

    (*(*v3 + 16))(v3, a2);
    operator new();
  }

LABEL_25:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v27 = 136315394;
    v28 = "ACMP4BitStreams.cpp";
    v29 = 1024;
    v30 = 1890;
    v15 = MEMORY[0x1E69E9C10];
    v16 = "%25s:%-5d  DecoderConfigDescr::DeserializeMPEG1Or2AudioDecoderSpecificPayload: the Decoder specific info tag size is incorrect";
    goto LABEL_27;
  }

  return 4294967090;
}

uint64_t DecoderConfigDescr::DeserializeVorbisDecoderSpecificPayload(uint64_t a1, uint64_t a2, int *a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 8);
  v7 = *a2;
  v8 = *(a2 + 16);
  v9 = *(a2 + 20);
  v10 = HIBYTE(v8);
  v11 = v9 - 8;
  *(a2 + 20) = v9 - 8;
  if (v9 - 8 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v7);
    v13 = (*a2 + 4);
    *a2 = v13;
    v15 = *(a2 + 16);
    v14 = *(a2 + 20);
    v10 |= v15 >> v14;
    v11 = v14 + 32;
    *(a2 + 20) = v14 + 32;
    if (v14 == -32)
    {
      v12 = 0;
    }

    else
    {
      v12 = v15 << -v14;
    }
  }

  else
  {
    v12 = v8 << 8;
    v13 = v7;
  }

  *(a2 + 16) = v12;
  *(a1 + 32) = v10;
  if (v10 != 5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v56 = 136315394;
      v57 = "ACMP4BitStreams.cpp";
      v58 = 1024;
      v59 = 1919;
      v26 = MEMORY[0x1E69E9C10];
      v27 = "%25s:%-5d  DecoderConfigDescr::DeserializeVorbisDecoderSpecificPayload: the DecoderSpecificInfo tag is incorrect";
      goto LABEL_63;
    }

    return 4294967090;
  }

  v16 = 0;
  v17 = v6 - v7;
  v18 = 6;
  do
  {
    v19 = HIBYTE(v12);
    v11 -= 8;
    *(a2 + 20) = v11;
    if (v11 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, v13);
      v13 = (*a2 + 4);
      *a2 = v13;
      v21 = *(a2 + 16);
      v20 = *(a2 + 20);
      v19 |= v21 >> v20;
      v11 = v20 + 32;
      *(a2 + 20) = v20 + 32;
      if (v20 == -32)
      {
        v12 = 0;
      }

      else
      {
        v12 = v21 << -v20;
      }
    }

    else
    {
      v12 <<= 8;
    }

    *(a2 + 16) = v12;
    if (!--v18)
    {
      *(a1 + 36) = 0;
      goto LABEL_23;
    }

    v22 = v19 & 0x7F | (v16 << 7);
    v16 = v22;
  }

  while ((v19 & 0x80) != 0);
  *(a1 + 36) = v22;
  if (v22 <= 0x1F)
  {
LABEL_23:
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return 4294967090;
    }

    v56 = 136315394;
    v57 = "ACMP4BitStreams.cpp";
    v58 = 1024;
    v59 = 1923;
    v26 = MEMORY[0x1E69E9C10];
    v27 = "%25s:%-5d  DecoderConfigDescr::DeserializeVorbisDecoderSpecificPayload: the Decoder specific info tag size is incorrect";
    goto LABEL_63;
  }

  if (a3)
  {
    *a3 = (v9 - v11 + 8 * (v13 - *(a2 + 8) + v17)) / 8;
    v12 = *(a2 + 16);
    v11 = *(a2 + 20);
  }

  v23 = HIBYTE(v12);
  v24 = v11 - 8;
  *(a2 + 20) = v24;
  if (v24 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v13);
    v13 = (*a2 + 4);
    *a2 = v13;
    v29 = *(a2 + 16);
    v28 = *(a2 + 20);
    v23 |= v29 >> v28;
    v24 = v28 + 32;
    *(a2 + 20) = v28 + 32;
    if (v28 == -32)
    {
      v25 = 0;
    }

    else
    {
      v25 = v29 << -v28;
    }
  }

  else
  {
    v25 = v12 << 8;
  }

  *(a2 + 16) = v25;
  if (!v23)
  {
    v33 = HIBYTE(v25);
    v31 = v24 - 8;
    *(a2 + 20) = v31;
    if (v31 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, v13);
      v13 = (*a2 + 4);
      *a2 = v13;
      v37 = *(a2 + 16);
      v36 = *(a2 + 20);
      v33 |= v37 >> v36;
      v31 = v36 + 32;
      *(a2 + 20) = v36 + 32;
      if (v36 == -32)
      {
        v32 = 0;
      }

      else
      {
        v32 = v37 << -v36;
      }
    }

    else
    {
      v32 = v25 << 8;
    }

    *(a2 + 16) = v32;
    if (v33 != 30)
    {
      goto LABEL_61;
    }

LABEL_52:
    v41 = HIBYTE(v32);
    v42 = v31 - 8;
    *(a2 + 20) = v42;
    if (v42 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, v13);
      v13 = (*a2 + 4);
      *a2 = v13;
      v45 = *(a2 + 16);
      v44 = *(a2 + 20);
      v41 |= v45 >> v44;
      v42 = v44 + 32;
      *(a2 + 20) = v44 + 32;
      if (v44 == -32)
      {
        v43 = 0;
      }

      else
      {
        v43 = v45 << -v44;
      }
    }

    else
    {
      v43 = v32 << 8;
    }

    *(a2 + 16) = v43;
    if (v41 != 1)
    {
      goto LABEL_61;
    }

    if (v42 + 8 * (*(a2 + 8) - v13) <= 231)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        return 4294967090;
      }

      v56 = 136315394;
      v57 = "ACMP4BitStreams.cpp";
      v58 = 1024;
      v59 = 1955;
      v26 = MEMORY[0x1E69E9C10];
      v27 = "%25s:%-5d  DecoderConfigDescr::DeserializeVorbisDecoderSpecificPayload: the Decoder specific info is too small to contain a full Vorbis identification header";
      goto LABEL_63;
    }

    v47 = v42 - 32;
    *(a2 + 20) = v47;
    if (v47 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, v13);
      v13 = (*a2 + 4);
      *a2 = v13;
      v50 = *(a2 + 16);
      v49 = *(a2 + 20);
      v48 = (v50 >> v49) | v43;
      v47 = v49 + 32;
      if (v49 == -32)
      {
        v51 = 0;
        *(a2 + 16) = 0xFFFFFFF000000000;
        goto LABEL_72;
      }

      v43 = v50 << -v49;
      *(a2 + 16) = v43;
    }

    else
    {
      v48 = v43;
    }

    v51 = HIWORD(v43);
    v52 = v47 - 16;
    *(a2 + 20) = v52;
    if (v52 >= 0)
    {
      v53 = v43 << 16;
      goto LABEL_75;
    }

LABEL_72:
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v13);
    *a2 += 4;
    v55 = *(a2 + 16);
    v54 = *(a2 + 20);
    v51 |= v55 >> v54;
    *(a2 + 20) = v54 + 32;
    if (v54 == -32)
    {
      v53 = 0;
    }

    else
    {
      v53 = v55 << -v54;
    }

LABEL_75:
    *(a2 + 16) = v53;
    if (v48 == 1987015266 && v51 == 26995)
    {
      return 0;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v56 = 136315394;
      v57 = "ACMP4BitStreams.cpp";
      v58 = 1024;
      v59 = 1959;
      v26 = MEMORY[0x1E69E9C10];
      v27 = "%25s:%-5d  DecoderConfigDescr::DeserializeVorbisDecoderSpecificPayload: the identification header packet type does not indicate Vorbis";
      goto LABEL_63;
    }

    return 4294967090;
  }

  if (v23 == 2)
  {
    v30 = HIBYTE(v25);
    v31 = v24 - 8;
    *(a2 + 20) = v31;
    if (v31 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, v13);
      v13 = (*a2 + 4);
      *a2 = v13;
      v35 = *(a2 + 16);
      v34 = *(a2 + 20);
      v30 |= v35 >> v34;
      v31 = v34 + 32;
      *(a2 + 20) = v34 + 32;
      v32 = v34 == -32 ? 0 : v35 << -v34;
    }

    else
    {
      v32 = v25 << 8;
    }

    *(a2 + 16) = v32;
    if (v30 == 30)
    {
      while (1)
      {
        v38 = HIBYTE(v32);
        v31 -= 8;
        *(a2 + 20) = v31;
        if (v31 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, v13);
          v13 = (*a2 + 4);
          *a2 = v13;
          v40 = *(a2 + 16);
          v39 = *(a2 + 20);
          v38 |= v40 >> v39;
          v31 = v39 + 32;
          *(a2 + 20) = v39 + 32;
          v32 = v39 == -32 ? 0 : v40 << -v39;
        }

        else
        {
          v32 <<= 8;
        }

        *(a2 + 16) = v32;
        if (v31 + 8 * (*(a2 + 8) - v13) <= 7)
        {
          break;
        }

        if (v38 != 0xFF)
        {
          goto LABEL_52;
        }
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v56 = 136315394;
        v57 = "ACMP4BitStreams.cpp";
        v58 = 1024;
        v59 = 1940;
        v26 = MEMORY[0x1E69E9C10];
        v27 = "%25s:%-5d  DecoderConfigDescr::DeserializeVorbisDecoderSpecificPayload: the Decoder specific info is too small to contain a Vorbis identification header";
        goto LABEL_63;
      }

      return 4294967090;
    }
  }

LABEL_61:
  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    return 4294967090;
  }

  v56 = 136315394;
  v57 = "ACMP4BitStreams.cpp";
  v58 = 1024;
  v59 = 1954;
  v26 = MEMORY[0x1E69E9C10];
  v27 = "%25s:%-5d  DecoderConfigDescr::DeserializeVorbisDecoderSpecificPayload: the identification header packet type is incorrect";
LABEL_63:
  _os_log_impl(&dword_18F5DF000, v26, OS_LOG_TYPE_ERROR, v27, &v56, 0x12u);
  return 4294967090;
}

uint64_t MP4OTISpecificBase::MakeObjectTypeSpecific(int a1)
{
  if (a1 > 104)
  {
    if (a1 == 105 || a1 == 107)
    {
      operator new();
    }

    if (a1 == 225)
    {
      operator new();
    }
  }

  else if ((a1 - 102) < 3)
  {
    operator new();
  }

  return 0;
}

void ADIFHeader::Clear(ADIFHeader *this)
{
  bzero(this, 4uLL);
  bzero(this + 4, 9uLL);
  bzero(this + 16, 4uLL);
  bzero(this + 20, 4uLL);
  bzero(this + 24, 4uLL);
  bzero(this + 28, 4uLL);

  bzero(this + 32, 4uLL);
}

uint64_t DecoderConfigDescr::Deserialize(unsigned int *a1, uint64_t a2, int *a3, int a4)
{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 8);
  v9 = *a2;
  v58 = 0;
  v10 = *(a2 + 16);
  v11 = *(a2 + 20);
  v12 = HIBYTE(v10);
  v13 = v11 - 8;
  *(a2 + 20) = v11 - 8;
  if (v11 - 8 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v9);
    v15 = (*a2 + 4);
    *a2 = v15;
    v17 = *(a2 + 16);
    v16 = *(a2 + 20);
    v12 |= v17 >> v16;
    v13 = v16 + 32;
    *(a2 + 20) = v16 + 32;
    if (v16 == -32)
    {
      v14 = 0;
    }

    else
    {
      v14 = v17 << -v16;
    }
  }

  else
  {
    v14 = v10 << 8;
    v15 = v9;
  }

  *(a2 + 16) = v14;
  *a1 = v12;
  if (v12 != 4)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return 4294967090;
    }

    *buf = 136315394;
    v60 = "ACMP4BitStreams.cpp";
    v61 = 1024;
    v62 = 1995;
    v28 = MEMORY[0x1E69E9C10];
    v29 = "%25s:%-5d  DecoderConfigDescr::Deserialize: the DecoderConfigDescriptor tag is incorrect";
LABEL_23:
    _os_log_impl(&dword_18F5DF000, v28, OS_LOG_TYPE_ERROR, v29, buf, 0x12u);
    return 4294967090;
  }

  v18 = 0;
  v19 = 0;
  v20 = v8 - v9;
  do
  {
    v21 = HIBYTE(v14);
    v13 -= 8;
    *(a2 + 20) = v13;
    if (v13 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, v15);
      v15 = (*a2 + 4);
      *a2 = v15;
      v23 = *(a2 + 16);
      v22 = *(a2 + 20);
      v21 |= v23 >> v22;
      v13 = v22 + 32;
      *(a2 + 20) = v22 + 32;
      if (v22 == -32)
      {
        v14 = 0;
      }

      else
      {
        v14 = v23 << -v22;
      }
    }

    else
    {
      v14 <<= 8;
    }

    *(a2 + 16) = v14;
    if (v18 == 5)
    {
      a1[1] = 0;
      goto LABEL_21;
    }

    ++v18;
    v24 = v21 & 0x7F | (v19 << 7);
    v19 = v24;
  }

  while ((v21 & 0x80) != 0);
  a1[1] = v24;
  if (v18 == 5)
  {
LABEL_21:
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return 4294967090;
    }

    *buf = 136315394;
    v60 = "ACMP4BitStreams.cpp";
    v61 = 1024;
    v62 = 1999;
    v28 = MEMORY[0x1E69E9C10];
    v29 = "%25s:%-5d  DecoderConfigDescr::Deserialize: the Decoder config descriptor tag size is incorrect";
    goto LABEL_23;
  }

  v25 = HIBYTE(v14);
  v26 = v13 - 8;
  *(a2 + 20) = v26;
  if (v26 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v15);
    v15 = (*a2 + 4);
    *a2 = v15;
    v32 = *(a2 + 16);
    v31 = *(a2 + 20);
    v25 |= v32 >> v31;
    *(a2 + 20) = v31 + 32;
    if (v31 == -32)
    {
      v27 = 0;
    }

    else
    {
      v27 = v32 << -v31;
    }
  }

  else
  {
    v27 = v14 << 8;
  }

  *(a2 + 16) = v27;
  a1[2] = v25;
  if (v25 != 64 && ((v25 - 105) & 0xFFFFFFFD) != 0 && v25 - 102 >= 3 && (v25 - 221 > 4 || ((1 << (v25 + 35)) & 0x13) == 0))
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return 4294967090;
    }

    *buf = 136315394;
    v60 = "ACMP4BitStreams.cpp";
    v61 = 1024;
    v62 = 2008;
    v28 = MEMORY[0x1E69E9C10];
    v29 = "%25s:%-5d  DecoderConfigDescr::Deserialize: the object type ID is incorrect";
    goto LABEL_23;
  }

  v33 = *(a2 + 16);
  v34 = v33 >> 26;
  v35 = *(a2 + 20) - 6;
  *(a2 + 20) = v35;
  if (v35 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v15);
    *a2 += 4;
    v38 = *(a2 + 16);
    v37 = *(a2 + 20);
    v34 |= v38 >> v37;
    *(a2 + 20) = v37 + 32;
    if (v37 == -32)
    {
      v36 = 0;
    }

    else
    {
      v36 = v38 << -v37;
    }
  }

  else
  {
    v36 = v33 << 6;
  }

  *(a2 + 16) = v36;
  a1[3] = v34;
  if (v34 != 5)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return 4294967090;
    }

    *buf = 136315394;
    v60 = "ACMP4BitStreams.cpp";
    v61 = 1024;
    v62 = 2012;
    v28 = MEMORY[0x1E69E9C10];
    v29 = "%25s:%-5d  DecoderConfigDescr::Deserialize: the stream type is incorrect";
    goto LABEL_23;
  }

  a1[4] = TBitstreamReader<unsigned int>::GetBit(a2);
  TBitstreamReader<unsigned int>::SkipBits(a2, 1);
  v40 = *(a2 + 16);
  v39 = *(a2 + 20);
  v41 = v40 >> 8;
  *(a2 + 20) = v39 - 24;
  if (v39 - 24 >= 0)
  {
    v42 = v40 << 24;
    *(a2 + 16) = v40 << 24;
    v43 = *a2;
    v44 = v39 - 56;
    goto LABEL_46;
  }

  TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
  v43 = (*a2 + 4);
  *a2 = v43;
  v45 = *(a2 + 16);
  v44 = *(a2 + 20);
  v41 |= v45 >> v44;
  if (v44 == -32)
  {
    v42 = 0;
    a1[5] = v41;
    *(a2 + 16) = 0xFFFFFFE000000000;
    goto LABEL_49;
  }

  v42 = v45 << -v44;
  *(a2 + 16) = v42;
LABEL_46:
  a1[5] = v41;
  *(a2 + 20) = v44;
  v46 = v42;
  if (v44 < 0)
  {
LABEL_49:
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v43);
    v43 = (*a2 + 4);
    *a2 = v43;
    v48 = *(a2 + 16);
    v47 = *(a2 + 20);
    v46 = (v48 >> v47) | v42;
    v44 = v47 + 32;
    if (v47 != -32)
    {
      v42 = v48 << -v47;
      *(a2 + 16) = v42;
      goto LABEL_51;
    }

    v42 = 0;
    a1[6] = v46;
    *(a2 + 16) = 0xFFFFFFE000000000;
LABEL_54:
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v43);
    v51 = *(a2 + 16);
    v50 = *(a2 + 20);
    v49 = v50 + 32;
    v52 = v50 == -32;
    v43 = (*a2 + 4);
    *a2 = v43;
    v42 |= v51 >> v50;
    v53 = v51 << -v50;
    if (v52)
    {
      v53 = 0;
    }

    *(a2 + 16) = v53;
    *(a2 + 20) = v49;
  }

  else
  {
LABEL_51:
    a1[6] = v46;
    v49 = v44 - 32;
    *(a2 + 20) = v49;
    if (v49 < 0)
    {
      goto LABEL_54;
    }
  }

  a1[7] = v42;
  v54 = (v11 - v49 + 8 * (v43 - *(a2 + 8) + v20)) / 8;
  if (a4 == 2)
  {
    v55 = &v58;
    goto LABEL_62;
  }

  if (a4 != 1)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return 4294967090;
    }

    *buf = 136315394;
    v60 = "ACMP4BitStreams.cpp";
    v61 = 1024;
    v62 = 2042;
    v28 = MEMORY[0x1E69E9C10];
    v29 = "%25s:%-5d  DecoderConfigDescr::Deserialize: the requested byte offset is not supported";
    goto LABEL_23;
  }

  v55 = 0;
  if (a3)
  {
    *a3 = v54;
  }

LABEL_62:
  v56 = a1[2];
  if (v56 != 64)
  {
    ObjectTypeSpecific = MP4OTISpecificBase::MakeObjectTypeSpecific(v56);
    std::shared_ptr<MP4OTISpecificBase>::reset[abi:ne200100]<MP4OTISpecificBase,0>((a1 + 302), ObjectTypeSpecific);
  }

  result = DecoderConfigDescr::DeserializeMPEG4AudioSpecificPayload(a1, a2, v55);
  if (!a3 || a4 != 2 || result)
  {
    return result;
  }

  if (v55)
  {
    result = 0;
    *a3 = *v55 + v54;
    return result;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v60 = "ACMP4BitStreams.cpp";
    v61 = 1024;
    v62 = 2086;
    v28 = MEMORY[0x1E69E9C10];
    v29 = "%25s:%-5d  DecoderConfigDescr::Deserialize: failed to obtain offset to decoder specific config";
    goto LABEL_23;
  }

  return 4294967090;
}

void sub_18F7311C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<MP4OTISpecificBase *,std::shared_ptr<MP4OTISpecificBase>::__shared_ptr_default_delete<MP4OTISpecificBase,MP4OTISpecificBase>,std::allocator<MP4OTISpecificBase>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<MP4OTISpecificBase *,std::shared_ptr<MP4OTISpecificBase>::__shared_ptr_default_delete<MP4OTISpecificBase,MP4OTISpecificBase>,std::allocator<MP4OTISpecificBase>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t DecoderConfigDescr::MPEG4AudioSpecificPayloadSerializeByteCount(DecoderConfigDescr *this)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(this + 10);
  if (MP4SampleRate::Index(*(this + 11)) == 15)
  {
    v3 = 28;
  }

  else
  {
    v3 = 4;
  }

  if (v2 <= 0x1F)
  {
    v4 = 9;
  }

  else
  {
    v4 = 15;
  }

  v5 = (v4 + v3);
  if (v2 == 29 || v2 == 5)
  {
    if (MP4SampleRate::Index(*(this + 15)) == 15)
    {
      v7 = 28;
    }

    else
    {
      v7 = 4;
    }

    v5 = (v5 + v7 + 5);
  }

  if (v2 - 1 < 4)
  {
    goto LABEL_17;
  }

  if (v2 == 39)
  {
    v8 = *(this + 149);
    goto LABEL_25;
  }

  if (v2 == 23)
  {
LABEL_17:
    v8 = *(this + 149);
    if (!v8)
    {
      LODWORD(v5) = v5 + 3;
      if (*(this + 12))
      {
        goto LABEL_27;
      }

      v9 = MP4AudioProgramConfig::SerializeCount((this + 88), v5);
LABEL_26:
      LODWORD(v5) = v9 + v5;
LABEL_27:
      v10 = *(this + 10);
      if ((v10 - 19) < 9 || v10 == 39 || v10 == 17)
      {
        LODWORD(v5) = v5 + 2;
      }

      v11 = *(this + 18);
      if (v11 != -1 && *(this + 17) == 695)
      {
        v12 = *(this + 14);
        v13 = v12 <= 0x1F ? 5 : 11;
        LODWORD(v5) = v5 + v13 + 11;
        if (v12 == 5)
        {
          LODWORD(v5) = v5 + 1;
          if (v11 == 1)
          {
            v14 = MP4SampleRate::Index(*(this + 15)) == 15 ? 28 : 4;
            LODWORD(v5) = v14 + v5;
            if (*(this + 20) != -1 && *(this + 19) == 1352)
            {
              LODWORD(v5) = v5 + 12;
            }
          }
        }
      }

      goto LABEL_42;
    }

LABEL_25:
    v9 = (*(*v8 + 24))(v8, v5);
    goto LABEL_26;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = 136315394;
    v18 = "ACMP4BitStreams.cpp";
    v19 = 1024;
    v20 = 2151;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  DecoderConfigDescr::MPEG4AudioSpecificPayloadSerializeByteCount: Unsupported AudioObjectType", &v17, 0x12u);
  }

LABEL_42:
  v15 = v5 >> 3;
  if ((v5 & 7) != 0)
  {
    return v15 + 1;
  }

  else
  {
    return v15;
  }
}

uint64_t DecoderConfigDescr::GetDefaultPriming(DecoderConfigDescr *this, unsigned int *a2)
{
  result = 0;
  v4 = *(this + 10);
  v5 = 2112;
  if (v4 > 22)
  {
    switch(v4)
    {
      case 39:
        v5 = 256;
        if (*(this + 149))
        {
          result = 0;
          v6 = *(this + 13) == 0;
          v7 = 240;
LABEL_14:
          if (!v6)
          {
            v5 = v7;
          }

          goto LABEL_17;
        }

LABEL_16:
        result = 0;
        goto LABEL_17;
      case 29:
        goto LABEL_17;
      case 23:
        v5 = 512;
        if (*(this + 149))
        {
          result = 0;
          v6 = *(this + 13) == 0;
          v7 = 480;
          goto LABEL_14;
        }

        goto LABEL_16;
    }

LABEL_11:
    v5 = 0;
    result = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  if (v4 != 2 && v4 != 5)
  {
    goto LABEL_11;
  }

LABEL_17:
  *a2 = v5;
  return result;
}

uint64_t DecoderConfigDescr::GetFramesPerPacket(DecoderConfigDescr *this)
{
  v1 = *(this + 10) - 1;
  result = 384;
  switch(v1)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 6:
    case 20:
    case 28:
      result = 1024;
      if (*(this + 149))
      {
        if (*(this + 13))
        {
          result = 960;
        }

        else
        {
          result = 1024;
        }
      }

      if (*(this + 18) == 1)
      {
        v4 = *(this + 11);
        if (v4)
        {
          v5 = *(this + 15) == v4;
          goto LABEL_9;
        }
      }

      break;
    case 7:
    case 23:
      v8 = *(this + 149);
      if (!v8)
      {
        goto LABEL_42;
      }

      if (v8[4])
      {
        v9 = v8[8];
        if (v9 >= 4)
        {
          goto LABEL_42;
        }

        result = dword_18F901E30[v9];
      }

      else
      {
        v15 = v8[9];
        if (v8[5])
        {
          if (v15 >= 0x10)
          {
            result = 160;
            if (v15 >= 0x17)
            {
              if (v15 >= 0x20)
              {
                result = 0;
              }

              else
              {
                result = 160;
              }
            }
          }

          else
          {
            result = 320;
          }
        }

        else
        {
          if (v15 == 27)
          {
            v16 = 240;
          }

          else
          {
            v16 = 0;
          }

          if (v15 >= 0x1B)
          {
            v17 = v16;
          }

          else
          {
            v17 = 80;
          }

          if (v15 >= 0x16)
          {
            v18 = v17;
          }

          else
          {
            v18 = 160;
          }

          if (v15 >= 6)
          {
            v19 = v18;
          }

          else
          {
            v19 = 240;
          }

          if (v15 >= 3)
          {
            result = v19;
          }

          else
          {
            result = 320;
          }

          if (v8[11])
          {
            v12 = v8[13];
            goto LABEL_63;
          }
        }
      }

      break;
    case 8:
    case 24:
      result = 160;
      break;
    case 22:
      result = 512;
      if (*(this + 149))
      {
        if (*(this + 13))
        {
          result = 480;
        }

        else
        {
          result = 512;
        }
      }

      break;
    case 31:
      return result;
    case 32:
      result = 1152;
      break;
    case 33:
      if (*(this + 11) <= 0x5DC0u)
      {
        result = 576;
      }

      else
      {
        result = 1152;
      }

      break;
    case 34:
      v10 = *(this + 149);
      if (!v10)
      {
        goto LABEL_42;
      }

      result = *(v10 + 20);
      break;
    case 35:
      v14 = *(this + 149);
      if (!v14)
      {
        goto LABEL_42;
      }

      result = *(v14 + 12);
      break;
    case 36:
    case 37:
      v7 = *(this + 149);
      if (!v7)
      {
        goto LABEL_42;
      }

      result = (1024 << (*(v7 + 1116) & 7));
      break;
    case 38:
      v11 = *(this + 149);
      result = 512;
      if (v11)
      {
        result = v11[4] ? 480 : 512;
        if (v11[6])
        {
          v12 = v11[7];
LABEL_63:
          v5 = v12 == 0;
LABEL_9:
          v6 = !v5;
          result = (result << v6);
        }
      }

      break;
    case 41:
      v13 = *(this + 149);
      if (v13 && *(v13 + 216) == 1)
      {
        result = kUSACSbrFrameLengthInfoTable[4 * *(v13 + 12) + 2];
      }

      else
      {
LABEL_42:
        result = 0;
      }

      break;
    default:
      result = 1024;
      break;
  }

  return result;
}

uint64_t DecoderConfigDescr::GetBaseLevelASBD(DecoderConfigDescr *this, AudioStreamBasicDescription *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = 1633772320;
  bzero(a2, 0x28uLL);
  v6 = *(this + 10);
  if (v6 > 3)
  {
    if (v6 > 38)
    {
      if (v6 == 39)
      {
        v4 = 1633772389;
        goto LABEL_19;
      }

      if (v6 == 42)
      {
        v4 = 1970495843;
        goto LABEL_19;
      }
    }

    else
    {
      if (v6 == 4)
      {
        v4 = 1633772404;
        goto LABEL_19;
      }

      if (v6 == 23)
      {
        v4 = 1633772396;
        goto LABEL_19;
      }
    }

LABEL_14:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "ACMP4BitStreams.cpp";
      v17 = 1024;
      v18 = 2610;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  DecoderConfigDescr::BaseLevelASBD: unsupported or unknown MP4 Audio Object Type", buf, 0x12u);
    }

    return 0xFFFFFFFFLL;
  }

  if (v6 == 1)
  {
    v4 = 1633772397;
    goto LABEL_19;
  }

  if (v6 != 2)
  {
    if (v6 == 3)
    {
      v4 = 1633772402;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

LABEL_19:
  a2->mFormatID = v4;
  LODWORD(v5) = *(this + 11);
  a2->mSampleRate = v5;
  FramesPerPacket = DecoderConfigDescr::GetFramesPerPacket(this);
  a2->mFramesPerPacket = FramesPerPacket;
  v10 = *(this + 14) == 5 || (v6 - 5) >= 0xFFFFFFFC;
  if (v10 && *(this + 18) == 1 && *(this + 15) == 2 * *(this + 11))
  {
    FramesPerPacket >>= 1;
    a2->mFramesPerPacket = FramesPerPacket;
  }

  v11 = *(this + 149);
  if (v11)
  {
    v12 = *(this + 10);
    if (v12 == 42)
    {
      LODWORD(v9) = *(v11 + 8);
      a2->mSampleRate = v9;
    }

    else if (v12 == 39 && *(v11 + 28) == 1)
    {
      a2->mFramesPerPacket = FramesPerPacket >> 1;
    }
  }

  v13 = *(this + 20);
  if (v13 == 1)
  {
    result = 0;
LABEL_40:
    a2->mChannelsPerFrame = v13;
    return result;
  }

  v14 = 0;
  result = DecoderConfigDescr::GetChannelLayoutTag(this, &v14);
  if (!result)
  {
    v13 = v14;
    goto LABEL_40;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v16 = "ACMP4BitStreams.cpp";
    v17 = 1024;
    v18 = 2648;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  DecoderConfigDescr::BaseLevelASBD: the DecoderConfigDescriptor channelConfiguration is incorrect", buf, 0x12u);
  }

  return 4294967090;
}

uint64_t DecoderConfigDescr::GetChannelLayoutTag(DecoderConfigDescr *this, unsigned int *a2)
{
  result = 560226676;
  v4 = *(this + 12);
  if (v4 <= 4)
  {
    if (v4 > 1)
    {
      if (v4 != 2)
      {
        if (v4 == 3)
        {
          v5 = 7471107;
        }

        else
        {
          v5 = 7602180;
        }

        goto LABEL_117;
      }

      goto LABEL_25;
    }

    v5 = 6553601;
    if (v4)
    {
      if (v4 == 1)
      {
        goto LABEL_117;
      }

      return result;
    }

    v6 = *(this + 10);
    if (v6 == 36)
    {
      v10 = *(this + 149);
      if (v10)
      {
        v5 = *(v10 + 24);
        goto LABEL_117;
      }

      return result;
    }

    if (v6 == 35)
    {
      v7 = *(this + 149);
      if (!v7)
      {
        return result;
      }

      v8 = *(v7 + 16);
      if (v8 != 2)
      {
        if (v8 == 6)
        {
          v9 = 8126470;
        }

        else
        {
          if (v8 != 5)
          {
            v5 = v8 | 0xFFFF0000;
            goto LABEL_117;
          }

          v9 = 7864325;
        }

        v5 = v9 - 196608;
LABEL_117:
        result = 0;
        *a2 = v5;
        return result;
      }

LABEL_25:
      v5 = 6619138;
      goto LABEL_117;
    }

    v11 = *(this + 25);
    v12 = *(this + 58);
    v13 = *(this + 91);
    v14 = *(this + 124);
    v15 = v12 + v11 + v13 + v14;
    if (v15 <= 2)
    {
      if (v15 == 1)
      {
        if (v11 != 1)
        {
          return result;
        }

        v17 = *(this + 26) == 0;
        v18 = 6619138;
      }

      else
      {
        if (v15 != 2)
        {
          return result;
        }

        if (v11 == 1 && v13 == 1)
        {
          if (*(this + 26) && *(this + 92))
          {
            v5 = 7077892;
            goto LABEL_117;
          }

          return result;
        }

        if (v11 != 2 || *(this + 26))
        {
          return result;
        }

        v17 = *(this + 27) == 0;
        v18 = 7471107;
        v5 = 6619138;
      }
    }

    else
    {
      switch(v15)
      {
        case 3:
          if (v11 != 2 || v13 != 1 || *(this + 26) || !*(this + 27))
          {
            return result;
          }

          v17 = *(this + 92) == 0;
          v18 = 7864325;
          v5 = 7602180;
          break;
        case 4:
          if (v11 == 2 && v13 == 2)
          {
            if (!*(this + 26) && *(this + 27) && *(this + 92) && !*(this + 93))
            {
              v5 = 9240582;
              goto LABEL_117;
            }

            return result;
          }

          if (v11 != 2)
          {
            return result;
          }

          if (v12 == 1)
          {
            if (v13 != 1)
            {
              return result;
            }

            v19 = *(this + 26);
            if (!v19 && *(this + 27) && *(this + 59))
            {
              if (*(this + 92))
              {
                v5 = 9371655;
              }

              else
              {
                v5 = 9240582;
              }

              goto LABEL_117;
            }

            if (v14 != 1)
            {
              return result;
            }
          }

          else
          {
            if (v13 != 1 || v14 != 1)
            {
              return result;
            }

            v19 = *(this + 26);
          }

          if (v19 || !*(this + 27) || !*(this + 92))
          {
            return result;
          }

LABEL_116:
          v5 = 8126470;
          goto LABEL_117;
        case 5:
          if (v11 == 2 && v13 == 2 && v14 == 1)
          {
            v16 = *(this + 26);
            if (!v16 && *(this + 27) && *(this + 92) && !*(this + 93))
            {
              goto LABEL_109;
            }

            if (v12)
            {
              if (v12 != 1 || v16)
              {
                return result;
              }

LABEL_41:
              if (*(this + 27) && *(this + 59) && *(this + 92) && !*(this + 93))
              {
                v5 = 9437192;
                goto LABEL_117;
              }

              return result;
            }

LABEL_99:
            if (v13 != 2 || v14 != 1 || *(this + 26) || !*(this + 27) || !*(this + 92) || !*(this + 93))
            {
              return result;
            }

            goto LABEL_105;
          }

          if (v11 != 2)
          {
            if (v11 != 3 || v12 || v13 != 1 || v14 != 1 || *(this + 26) || !*(this + 27) || !*(this + 92) || !*(this + 28))
            {
              return result;
            }

LABEL_14:
            v5 = 12058632;
            goto LABEL_117;
          }

          if (!v12)
          {
            goto LABEL_99;
          }

          if (v12 != 1)
          {
            return result;
          }

          if (v13 != 1)
          {
            if (v13 != 2 || *(this + 26))
            {
              return result;
            }

            goto LABEL_41;
          }

          if (v14 != 1 || *(this + 26) || !*(this + 27) || !*(this + 59))
          {
            return result;
          }

          v17 = *(this + 92) == 0;
          v18 = 8323080;
          v5 = 9306119;
          break;
        default:
          return result;
      }
    }

    if (!v17)
    {
      v5 = v18;
    }

    goto LABEL_117;
  }

  if (v4 > 10)
  {
    if (v4 != 11)
    {
      if (v4 != 12)
      {
        if (v4 != 14)
        {
          return result;
        }

        goto LABEL_14;
      }

LABEL_105:
      v5 = 11993096;
      goto LABEL_117;
    }

LABEL_109:
    v5 = 9306119;
    goto LABEL_117;
  }

  switch(v4)
  {
    case 5:
      v5 = 7864325;
      goto LABEL_117;
    case 6:
      goto LABEL_116;
    case 7:
      v5 = 8323080;
      goto LABEL_117;
  }

  return result;
}

uint64_t DecoderConfigDescr::GetASBD(DecoderConfigDescr *this, AudioStreamBasicDescription *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!*(this + 14))
  {

    return DecoderConfigDescr::GetBaseLevelASBD(this, a2);
  }

  if ((*(this + 10) - 5) < 0xFFFFFFFC)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "ACMP4BitStreams.cpp";
      v16 = 1024;
      v17 = 2701;
      v4 = MEMORY[0x1E69E9C10];
      v5 = "%25s:%-5d  DecoderConfigDescr::GetASBD: unsupported or unknown MP4 Audio Object Type / Extended Object Type combination";
LABEL_20:
      _os_log_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_ERROR, v5, buf, 0x12u);
      return 0xFFFFFFFFLL;
    }

    return 0xFFFFFFFFLL;
  }

  v13 = 0;
  if (DecoderConfigDescr::GetChannelLayoutTag(this, &v13))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "ACMP4BitStreams.cpp";
      v16 = 1024;
      v17 = 2666;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  DecoderConfigDescr::GetASBD: the DecoderConfigDescriptor channelConfiguration is incorrect", buf, 0x12u);
    }

    return 4294967090;
  }

  bzero(a2, 0x28uLL);
  if (*(this + 14) != 5 || *(this + 18) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "ACMP4BitStreams.cpp";
      v16 = 1024;
      v17 = 2687;
      v4 = MEMORY[0x1E69E9C10];
      v5 = "%25s:%-5d  DecoderConfigDescr::GetASBD: unsupported or unknown MP4 Extension Audio Object Type";
      goto LABEL_20;
    }

    return 0xFFFFFFFFLL;
  }

  v8 = *(this + 10);
  v9 = *(this + 20);
  if (v8 > 2)
  {
    if (v8 != 3)
    {
      if (v8 == 4)
      {
        if (v9)
        {
          v10 = 1633776752;
        }

        else
        {
          v10 = 1633776755;
        }

LABEL_32:
        a2->mFormatID = v10;
        goto LABEL_33;
      }

      goto LABEL_33;
    }

    v11 = 1633776240;
    v10 = 1633776243;
LABEL_30:
    if (v9)
    {
      v10 = v11;
    }

    goto LABEL_32;
  }

  if (v8 == 1)
  {
    v11 = 1633774960;
    v10 = 1633774963;
    goto LABEL_30;
  }

  if (v8 == 2)
  {
    v10 = 1633772392;
    v11 = 1633772400;
    goto LABEL_30;
  }

LABEL_33:
  LODWORD(v7) = *(this + 15);
  a2->mSampleRate = v7;
  a2->mFramesPerPacket = DecoderConfigDescr::GetFramesPerPacket(this);
  v12 = v13;
  if (v9 != 1)
  {
    result = 0;
    goto LABEL_37;
  }

  if (v13 == 1)
  {
    result = 0;
    v12 = 2;
LABEL_37:
    a2->mChannelsPerFrame = v12;
    return result;
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136315394;
    v15 = "ACMP4BitStreams.cpp";
    v16 = 1024;
    v17 = 2695;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  DecoderConfigDescr::GetASBD: unsupported number of channels", buf, 0x12u);
    return 0;
  }

  return result;
}

uint64_t DecoderConfigDescr::MakeStreamDescription(DecoderConfigDescr *this, AudioStreamBasicDescription *a2, double a3)
{
  v5 = *(this + 2);
  if ((v5 - 64) <= 0x28 && ((1 << (v5 - 64)) & 0x1C000000001) != 0)
  {
    v7 = *(this + 10);
    v8 = v7 > 0x2C;
    v9 = (1 << v7) & 0x1480609A007ELL;
    if (!v8 && v9 != 0)
    {

      return DecoderConfigDescr::GetBaseLevelASBD(this, a2);
    }

    LODWORD(a3) = *(this + 11);
    a2->mSampleRate = *&a3;
    a2->mBytesPerPacket = 0;
    FramesPerPacket = DecoderConfigDescr::GetFramesPerPacket(this);
    a2->mFormatFlags = 0;
    a2->mFramesPerPacket = FramesPerPacket;
    a2->mBytesPerFrame = 0;
    *&a2->mBitsPerChannel = 0;
    v18 = *(this + 12);
    if (v18 == 7)
    {
      v18 = 8;
    }

    a2->mChannelsPerFrame = v18;
    v19 = *(this + 10);
    if ((v19 - 39) >= 0xFFFFFFFE)
    {
      if (v19 == 37)
      {
        v21 = 1936487267;
      }

      else
      {
        v21 = 1936487278;
      }

      a2->mFormatID = v21;
      v22 = *(this + 149);
      if (v22)
      {
        a2->mFormatFlags = *(v22 + 1116) >> 5;
      }

      goto LABEL_37;
    }

    if (((v19 - 8) & 0xFFFFFFEF) == 0)
    {
      v20 = 1667591280;
      goto LABEL_36;
    }

    if (v19 == 21 || v19 == 7)
    {
      v20 = 1953986161;
LABEL_36:
      a2->mFormatID = v20;
      goto LABEL_37;
    }

    if (((v19 - 9) & 0xFFFFFFEF) == 0)
    {
      v20 = 1752594531;
      goto LABEL_36;
    }

    if (v19 <= 33)
    {
      if (v19 == 32)
      {
        v20 = 778924081;
        goto LABEL_36;
      }

      if (v19 == 33)
      {
        v20 = 778924082;
        goto LABEL_36;
      }
    }

    else
    {
      switch(v19)
      {
        case '""':
          v20 = 1836069684;
          goto LABEL_36;
        case '#':
          v24 = *(this + 149);
          if (!v24)
          {
            goto LABEL_37;
          }

          v25 = 1685283872;
          if (*(v24 + 12))
          {
            v25 = 1685287968;
          }

          else
          {
            a2->mFormatFlags = 2;
          }

          a2->mFormatID = v25;
          v18 = *(v24 + 16);
          goto LABEL_59;
        case '$':
          a2->mFormatID = 1634497332;
          v23 = *(this + 149);
          if (!v23)
          {
            goto LABEL_37;
          }

          LODWORD(v17) = v23[2];
          a2->mSampleRate = v17;
          v18 = v23[4];
          a2->mFormatFlags = v23[5];
LABEL_59:
          a2->mChannelsPerFrame = v18;
LABEL_37:
          if (!v18)
          {
            a2->mChannelsPerFrame = MP4AudioProgramConfig::TotalNumChannels((this + 88));
          }

          return 0;
      }
    }

    a2->mFormatID = 0;
    goto LABEL_37;
  }

  if (((v5 - 105) & 0xFFFFFFFD) != 0)
  {
    if (v5 != 225)
    {
      if ((v5 - 223) >= 0xFFFFFFFE)
      {
        bzero(a2, 0x28uLL);
        a2->mFormatID = 1987015266;
      }

      return 0;
    }

    v12 = *(this + 151);
    if (v12)
    {
      a2->mFormatID = 1365470320;
      LOWORD(a3) = v12[63];
      a2->mSampleRate = *&a3;
      a2->mChannelsPerFrame = 1;
      v13 = v12[61];
      v14 = v12[62];
      a2->mBytesPerPacket = v13;
      a2->mFramesPerPacket = v14;
      return 0;
    }

LABEL_22:
    a2->mFormatID = 0;
    return 0;
  }

  v15 = *(this + 151);
  if (!v15)
  {
    goto LABEL_22;
  }

  return MPEGPacketParser_ASBDFromMPEGPacket((v15 + 8), 4u, a2);
}

uint64_t MP4AudioESDS::Deserialize(uint64_t a1, void *a2, int *a3, int a4)
{
  v61 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 2);
  v9 = *a2;
  v10 = *(a2 + 5);
  v56 = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  DecoderConfigDescr::cleanup((a1 + 296));
  v11 = *(a2 + 4);
  v12 = HIBYTE(v11);
  v13 = *(a2 + 5) - 8;
  *(a2 + 5) = v13;
  if (v13 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    *a2 += 4;
    v16 = *(a2 + 4);
    v15 = *(a2 + 5);
    v12 |= v16 >> v15;
    v13 = v15 + 32;
    *(a2 + 5) = v15 + 32;
    if (v15 == -32)
    {
      v14 = 0;
    }

    else
    {
      v14 = v16 << -v15;
    }
  }

  else
  {
    v14 = v11 << 8;
  }

  *(a2 + 4) = v14;
  *(a1 + 4) = v12;
  if (v12 == 3)
  {
    v17 = 0;
    v18 = v8 - v9;
    v19 = -1;
    do
    {
      v20 = v19;
      v21 = HIBYTE(v14);
      v13 -= 8;
      *(a2 + 5) = v13;
      if (v13 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
        *a2 += 4;
        v23 = *(a2 + 4);
        v22 = *(a2 + 5);
        v21 |= v23 >> v22;
        v13 = v22 + 32;
        *(a2 + 5) = v22 + 32;
        if (v22 == -32)
        {
          v14 = 0;
        }

        else
        {
          v14 = v23 << -v22;
        }
      }

      else
      {
        v14 <<= 8;
      }

      *(a2 + 4) = v14;
      if (v20 == 4)
      {
        *(a1 + 8) = 0;
        goto LABEL_21;
      }

      v24 = v21 & 0x7F | (v17 << 7);
      v19 = v20 + 1;
      v17 = v24;
    }

    while ((v21 & 0x80) != 0);
    *(a1 + 8) = v24;
    if (v20 != 3)
    {
      *a1 = v19 + v24 + 2;
      v25 = HIWORD(v14);
      v26 = v13 - 16;
      *(a2 + 5) = v26;
      if (v26 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
        *a2 += 4;
        v32 = *(a2 + 4);
        v31 = *(a2 + 5);
        v25 |= v32 >> v31;
        *(a2 + 5) = v31 + 32;
        if (v31 == -32)
        {
          v27 = 0;
        }

        else
        {
          v27 = v32 << -v31;
        }
      }

      else
      {
        v27 = v14 << 16;
      }

      *(a2 + 4) = v27;
      *(a1 + 12) = v25;
      *(a1 + 16) = TBitstreamReader<unsigned int>::GetBit(a2);
      *(a1 + 20) = TBitstreamReader<unsigned int>::GetBit(a2);
      TBitstreamReader<unsigned int>::SkipBits(a2, 1);
      v33 = *(a2 + 4);
      v34 = v33 >> 27;
      v35 = *(a2 + 5) - 5;
      *(a2 + 5) = v35;
      if (v35 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
        *a2 += 4;
        v38 = *(a2 + 4);
        v37 = *(a2 + 5);
        v34 |= v38 >> v37;
        v35 = v37 + 32;
        *(a2 + 5) = v37 + 32;
        if (v37 == -32)
        {
          v36 = 0;
        }

        else
        {
          v36 = v38 << -v37;
        }
      }

      else
      {
        v36 = 32 * v33;
      }

      *(a2 + 4) = v36;
      *(a1 + 24) = v34;
      if (*(a1 + 16))
      {
        v39 = HIWORD(v36);
        v35 -= 16;
        *(a2 + 5) = v35;
        if (v35 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
          *a2 += 4;
          v41 = *(a2 + 4);
          v40 = *(a2 + 5);
          v39 |= v41 >> v40;
          v35 = v40 + 32;
          *(a2 + 5) = v40 + 32;
          if (v40 == -32)
          {
            v36 = 0;
          }

          else
          {
            v36 = v41 << -v40;
          }
        }

        else
        {
          v36 <<= 16;
        }

        *(a2 + 4) = v36;
        *(a1 + 28) = v39;
      }

      if (*(a1 + 20))
      {
        v42 = HIBYTE(v36);
        v35 -= 8;
        *(a2 + 5) = v35;
        if (v35 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
          *a2 += 4;
          v45 = *(a2 + 4);
          v44 = *(a2 + 5);
          v42 |= v45 >> v44;
          v35 = v44 + 32;
          *(a2 + 5) = v44 + 32;
          v43 = v44 == -32 ? 0 : v45 << -v44;
        }

        else
        {
          v43 = v36 << 8;
        }

        *(a2 + 4) = v43;
        *(a1 + 32) = v42;
        if (v42)
        {
          v46 = 0;
          do
          {
            v47 = *(a2 + 4);
            v48 = HIBYTE(v47);
            v49 = *(a2 + 5) - 8;
            *(a2 + 5) = v49;
            if (v49 < 0)
            {
              TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
              *a2 += 4;
              v52 = *(a2 + 4);
              v51 = *(a2 + 5);
              v48 |= v52 >> v51;
              *(a2 + 5) = v51 + 32;
              if (v51 == -32)
              {
                v50 = 0;
              }

              else
              {
                v50 = v52 << -v51;
              }
            }

            else
            {
              v50 = v47 << 8;
            }

            *(a2 + 4) = v50;
            *(a1 + 36 + v46++) = v48;
          }

          while (v46 < *(a1 + 32));
          v35 = *(a2 + 5);
        }
      }

      v53 = (v10 - v35 + 8 * (*a2 - *(a2 + 2) + v18)) / 8;
      if (a4)
      {
        v54 = &v56;
        v55 = a4;
      }

      else
      {
        v54 = 0;
        if (a3)
        {
          *a3 = v53;
        }

        v55 = 1;
      }

      result = DecoderConfigDescr::Deserialize((a1 + 296), a2, v54, v55);
      if (a3 && a4)
      {
        if (v54)
        {
          *a3 = *v54 + v53;
        }
      }

      return result;
    }

LABEL_21:
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return 4294967090;
    }

    *buf = 136315394;
    v58 = "ACMP4BitStreams.cpp";
    v59 = 1024;
    v60 = 3208;
    v28 = MEMORY[0x1E69E9C10];
    v29 = "%25s:%-5d  MP4AudioESDS::Deserialize: the ES_Descriptor tag size is incorrect";
    goto LABEL_23;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v58 = "ACMP4BitStreams.cpp";
    v59 = 1024;
    v60 = 3204;
    v28 = MEMORY[0x1E69E9C10];
    v29 = "%25s:%-5d  MP4AudioESDS::Deserialize: the ES_Descriptor tag is incorrect";
LABEL_23:
    _os_log_impl(&dword_18F5DF000, v28, OS_LOG_TYPE_ERROR, v29, buf, 0x12u);
  }

  return 4294967090;
}

uint64_t MP4AudioESDS::Serialize(uint64_t a1, uint64_t a2, int a3, unsigned __int8 *a4)
{
  v5 = a3;
  v26 = *MEMORY[0x1E69E9840];
  if (*(a1 + 304) == 64)
  {
    v8 = a3;
    if (!a3)
    {
      v8 = DecoderConfigDescr::MPEG4AudioSpecificPayloadSerializeByteCount((a1 + 296));
    }

    v9 = v8 + 32;
  }

  else
  {
    v9 = 14;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 3, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 128, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 128, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 128, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, v9, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 0, 0x18u);
  if (*(a1 + 304) != 64)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = 136315394;
      v23 = "ACMP4BitStreams.cpp";
      v24 = 1024;
      v25 = 2368;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "%25s:%-5d  DecoderConfigDescr::Serialize: Unsupported ObjectType";
LABEL_13:
      _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_ERROR, v13, &v22, 0x12u);
    }

    return 4294967090;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 4, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 128, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 128, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 128, 8u);
  if (*(a1 + 304) == 64)
  {
    v10 = v5;
    if (!v5)
    {
      v10 = DecoderConfigDescr::MPEG4AudioSpecificPayloadSerializeByteCount((a1 + 296));
    }

    v11 = v10 + 18;
  }

  else
  {
    v11 = 0;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a2, v11, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 304), 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 308), 6u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 312), 1u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 0, 1u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 316), 0x18u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 320), 0x20u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 324), 0x20u);
  AT::TBitstreamWriter<unsigned int>::Flush(a2);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 5, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 128, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 128, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 128, 8u);
  if (!v5)
  {
    v17 = DecoderConfigDescr::MPEG4AudioSpecificPayloadSerializeByteCount((a1 + 296));
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, v17, 8u);
    MP4AudioObjectType::Serialize(*(a1 + 336), a2);
    MP4SampleRate::Serialize((a1 + 340), a2);
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 344), 4u);
    v18 = *(a1 + 336);
    if (v18 == 5 || v18 == 29)
    {
      MP4SampleRate::Serialize((a1 + 356), a2);
      MP4AudioObjectType::Serialize(2u, a2);
      v18 = *(a1 + 336);
    }

    if ((v18 - 1) < 4)
    {
      goto LABEL_26;
    }

    if (v18 == 39)
    {
      v19 = *(a1 + 1488);
      if (!v19)
      {
        return 4294967290;
      }

      *(v19 + 16) = *(a1 + 348);
      goto LABEL_28;
    }

    if (v18 == 23)
    {
LABEL_26:
      v19 = *(a1 + 1488);
      v20 = *(a1 + 348);
      if (!v19)
      {
        AT::TBitstreamWriter<unsigned int>::PutBits(a2, v20, 1u);
        AT::TBitstreamWriter<unsigned int>::PutBits(a2, 0, 1u);
        AT::TBitstreamWriter<unsigned int>::PutBits(a2, 0, 1u);
        if (!*(a1 + 344))
        {
          MP4AudioProgramConfig::Serialize(a1 + 384, a2);
        }

LABEL_38:
        v21 = *(a1 + 336);
        if ((v21 - 19) < 9 || v21 == 39 || v21 == 17)
        {
          AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 360), 2u);
        }

        if (*(a1 + 368) != -1 && *(a1 + 364) == 695)
        {
          AT::TBitstreamWriter<unsigned int>::PutBits(a2, 695, 0xBu);
          MP4AudioObjectType::Serialize(*(a1 + 352), a2);
          if (*(a1 + 352) == 5)
          {
            AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 368), 1u);
            if (*(a1 + 368) == 1)
            {
              MP4SampleRate::Serialize((a1 + 356), a2);
              if (*(a1 + 376) != -1 && *(a1 + 372) == 1352)
              {
                AT::TBitstreamWriter<unsigned int>::PutBits(a2, 1352, 0xBu);
                AT::TBitstreamWriter<unsigned int>::PutBits(a2, *(a1 + 376), 1u);
              }
            }
          }
        }

        goto LABEL_19;
      }

      *(v19 + 20) = v20 != 0;
LABEL_28:
      result = (*(*v19 + 32))(v19, a2);
      if (result)
      {
        return result;
      }

      goto LABEL_38;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = 136315394;
      v23 = "ACMP4BitStreams.cpp";
      v24 = 1024;
      v25 = 2301;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "%25s:%-5d  DecoderConfigDescr::MPEG4AudioSpecificPayloadSerialize: Unsupported AudioObjectType";
      goto LABEL_13;
    }

    return 4294967090;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a2, v5, 8u);
  if (!a4)
  {
    return 0xFFFFFFFFLL;
  }

  do
  {
    --v5;
    v15 = *a4++;
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, v15, 8u);
  }

  while (v5);
LABEL_19:
  v16 = *(a2 + 28) & 7;
  if (v16)
  {
    AT::TBitstreamWriter<unsigned int>::PutBits(a2, 0, v16);
  }

  AT::TBitstreamWriter<unsigned int>::Flush(a2);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 6, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 128, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 128, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 128, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 1, 8u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a2, 2, 8u);
  AT::TBitstreamWriter<unsigned int>::Flush(a2);
  return 0;
}

uint64_t ACMP4BitStreams::GetDecoderConfigFromADTSHeaderAndPCE(ACMP4BitStreams *this, unsigned int *a2, DecoderConfigDescr *a3, DecoderConfigDescr *a4, unsigned int *a5)
{
  DecoderConfigDescr::cleanup(a3);
  *(a3 + 18) = -1;
  *(a3 + 20) = -1;
  v28 = 0;
  LOWORD(v29) = 0;
  HIDWORD(v29) = 0;
  v8 = ADTSHeader::Deserialize(&v28, this, 0x10u);
  v9 = 0;
  if (!v8)
  {
    v10 = v28;
    v11 = (v28 >> 10) & 3;
    *(a3 + 10) = v11 + 1;
    v31 = 0;
    MP4SampleRate::SetFromIndex(&v31, (v10 >> 6) & 0xF, 1);
    v12 = v31;
    *(a3 + 11) = v31;
    *(a3 + 12) = (v10 >> 2) & 7;
    *(a3 + 23) = v11;
    *(a3 + 24) = v12;
    if ((v10 & 0x1000) != 0)
    {
      v13 = 7;
    }

    else
    {
      v13 = 9;
    }

    *a2 = v13;
    if ((v10 & 0x1000) != 0)
    {
      v14 = -7;
    }

    else
    {
      v14 = -9;
    }

    v9 = ((HIDWORD(v28) >> 13) & 0x1FFF) + v14;
  }

  if (!*(a3 + 12))
  {
    v15 = 560226676;
    v16 = *a2;
    if (v9 <= v16)
    {
      return v15;
    }

    v17 = (this + v16);
    v18 = (this + v16 + v9 - v16);
    v28 = (this + v16);
    v29 = v18;
    v30 = 0;
    if (((this + v16) & 3) != 0)
    {
      v19 = 0;
      v20 = v17 + 1;
      v21 = -8;
      do
      {
        v22 = *v17;
        v17 = (v17 + 1);
        v19 = v22 | (v19 << 8);
        v21 += 8;
        if ((v20 & 3) == 0)
        {
          break;
        }

        ++v20;
      }

      while (v17 < v18);
      v28 = v17;
      v23 = v19 << (24 - v21);
      v24 = v23 >> 29;
      LODWORD(v30) = v23;
      HIDWORD(v30) = v21 | 5;
      if ((v21 & 0x80000000) == 0)
      {
        v25 = 8 * v23;
LABEL_22:
        LODWORD(v30) = v25;
        if (v24 != 5)
        {
          return v15;
        }

        MP4AudioProgramConfig::Deserialize(a3 + 22, &v28);
        return 0;
      }
    }

    else
    {
      v24 = 0;
      HIDWORD(v30) = -3;
    }

    TBitstreamReader<unsigned int>::FillCacheFrom(&v28, v17);
    ++v28;
    v26 = BYTE4(v30);
    v24 |= v30 >> SBYTE4(v30);
    HIDWORD(v30) += 32;
    if (HIDWORD(v30))
    {
      v25 = v30 << -v26;
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_22;
  }

  return 0;
}

uint64_t ACMP4BitStreams::GetADTSPacketSize(ACMP4BitStreams *this, unsigned int *a2, unsigned int *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = ADTSHeader::Deserialize(&v8, this, *a2);
  result = 0;
  if (!v4)
  {
    v6 = HIDWORD(v8);
    if ((v8 & 0x1000) != 0)
    {
      v7 = 7;
    }

    else
    {
      v7 = 9;
    }

    *a2 = v7;
    return (v6 >> 13) & 0x1FFF;
  }

  return result;
}

uint64_t ACMP4BitStreams::GetDecoderSpecificBitStreamFromESDS(void *a1, int *a2, int *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v47[2] = 0;
  v48 = 0;
  v49 = 0;
  v50[2] = 0;
  MP4AudioProgramConfig::Clear(v50);
  v52 = 0u;
  v51 = 0u;
  DecoderConfigDescr::cleanup(v47);
  if (!a3)
  {
    v10 = 4294967246;
    goto LABEL_28;
  }

  v7 = *(a1 + 2);
  v8 = *a1;
  v9 = *(a1 + 5);
  *a3 = 0;
  v10 = MP4AudioESDS::Deserialize(v46, a1, a3, 0);
  if (v10)
  {
    goto LABEL_28;
  }

  TBitstreamReader<unsigned int>::PutBack(a1, v9 - *(a1 + 5) + 8 * (*a1 - *(a1 + 2) - *a3 + v7 - v8));
  v11 = *(a1 + 4);
  v12 = HIBYTE(v11);
  v13 = *(a1 + 5) - 8;
  *(a1 + 5) = v13;
  if (v13 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a1, *a1);
    *a1 += 4;
    v16 = *(a1 + 4);
    v15 = *(a1 + 5);
    v12 |= v16 >> v15;
    *(a1 + 5) = v15 + 32;
    if (v15 == -32)
    {
      v14 = 0;
    }

    else
    {
      v14 = v16 << -v15;
    }
  }

  else
  {
    v14 = v11 << 8;
  }

  *(a1 + 4) = v14;
  ++*a3;
  if (v12 != 4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v42 = 136315394;
      v43 = "ACMP4BitStreams.cpp";
      v44 = 1024;
      v45 = 3571;
      v28 = MEMORY[0x1E69E9C10];
      v29 = "%25s:%-5d  ACMP4BitStreams::GetDecoderSpecificBitStreamFromESDS: the DecoderConfigDescriptor tag is incorrect";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v17 = 0;
  v19 = *(a1 + 4);
  v18 = *(a1 + 5);
  do
  {
    v20 = HIBYTE(v19);
    v18 -= 8;
    *(a1 + 5) = v18;
    if (v18 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a1, *a1);
      *a1 += 4;
      v22 = *(a1 + 4);
      v21 = *(a1 + 5);
      v20 |= v22 >> v21;
      v18 = v21 + 32;
      *(a1 + 5) = v21 + 32;
      if (v21 == -32)
      {
        v19 = 0;
      }

      else
      {
        v19 = v22 << -v21;
      }
    }

    else
    {
      v19 <<= 8;
    }

    *(a1 + 4) = v19;
    if (v17 == 5)
    {
      --*a3;
LABEL_24:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v42 = 136315394;
        v43 = "ACMP4BitStreams.cpp";
        v44 = 1024;
        v45 = 3576;
        v28 = MEMORY[0x1E69E9C10];
        v29 = "%25s:%-5d  ACMP4BitStreams::GetDecoderSpecificBitStreamFromESDS: the ES_Descriptor tag size is incorrect";
        goto LABEL_26;
      }

      goto LABEL_27;
    }

    ++v17;
  }

  while ((v20 & 0x80) != 0);
  v23 = *a3 + v17;
  *a3 = v23;
  if (v17 == 5)
  {
    goto LABEL_24;
  }

  *a3 = v23 + 13;
  TBitstreamReader<unsigned int>::SkipBits(a1, 104);
  v24 = *(a1 + 4);
  v25 = HIBYTE(v24);
  v26 = *(a1 + 5) - 8;
  *(a1 + 5) = v26;
  if (v26 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a1, *a1);
    *a1 += 4;
    v32 = *(a1 + 4);
    v31 = *(a1 + 5);
    v25 |= v32 >> v31;
    *(a1 + 5) = v31 + 32;
    if (v31 == -32)
    {
      v27 = 0;
    }

    else
    {
      v27 = v32 << -v31;
    }
  }

  else
  {
    v27 = v24 << 8;
  }

  *(a1 + 4) = v27;
  ++*a3;
  if (v25 == 5)
  {
    v33 = 0;
    v34 = 0;
    v36 = *(a1 + 4);
    v35 = *(a1 + 5);
    while (1)
    {
      v37 = HIBYTE(v36);
      v35 -= 8;
      *(a1 + 5) = v35;
      if (v35 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(a1, *a1);
        *a1 += 4;
        v39 = *(a1 + 4);
        v38 = *(a1 + 5);
        v37 |= v39 >> v38;
        v35 = v38 + 32;
        *(a1 + 5) = v38 + 32;
        v36 = v38 == -32 ? 0 : v39 << -v38;
      }

      else
      {
        v36 <<= 8;
      }

      *(a1 + 4) = v36;
      if (v33 == 5)
      {
        break;
      }

      ++v33;
      v40 = v37 & 0x7F | (v34 << 7);
      v34 = v40;
      if ((v37 & 0x80) == 0)
      {
        v41 = *a3 + v33;
        *a3 = v41;
        if (v33 != 5)
        {
          if (v41 + v40 <= v6)
          {
            v10 = 0;
            *a2 = v40;
            goto LABEL_28;
          }

          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_27;
          }

          v42 = 136315394;
          v43 = "ACMP4BitStreams.cpp";
          v44 = 1024;
          v45 = 3594;
          v28 = MEMORY[0x1E69E9C10];
          v29 = "%25s:%-5d  ACMP4BitStreams::GetDecoderSpecificBitStreamFromESDS: did not get the whole cookie";
LABEL_26:
          _os_log_impl(&dword_18F5DF000, v28, OS_LOG_TYPE_ERROR, v29, &v42, 0x12u);
          goto LABEL_27;
        }

LABEL_52:
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        v42 = 136315394;
        v43 = "ACMP4BitStreams.cpp";
        v44 = 1024;
        v45 = 3591;
        v28 = MEMORY[0x1E69E9C10];
        v29 = "%25s:%-5d  ACMP4BitStreams::GetDecoderSpecificBitStreamFromESDS: the ES_Descriptor tag size is incorrect";
        goto LABEL_26;
      }
    }

    --*a3;
    goto LABEL_52;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v42 = 136315394;
    v43 = "ACMP4BitStreams.cpp";
    v44 = 1024;
    v45 = 3587;
    v28 = MEMORY[0x1E69E9C10];
    v29 = "%25s:%-5d  ACMP4BitStreams:: GetDecoderSpecificBitStreamFromESDS: the DecoderSpecificInfoTag tag is incorrect";
    goto LABEL_26;
  }

LABEL_27:
  v10 = 4294967090;
LABEL_28:
  if (*(&v52 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v52 + 1));
  }

  if (*(&v51 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v51 + 1));
  }

  return v10;
}

void sub_18F733738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MP4AudioESDS::~MP4AudioESDS(va);
  _Unwind_Resume(a1);
}

void *AAAudioAnalyzer::Cleanup(AAAudioAnalyzer *this)
{
  result = std::vector<std::unique_ptr<AAAnalysisBase>>::clear[abi:ne200100](this + 33);
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  return result;
}

void *std::vector<std::unique_ptr<AAAnalysisBase>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t AAAudioAnalyzer::PrepareAnalyzers(AAAudioAnalyzer *this)
{
  v22 = *MEMORY[0x1E69E9840];
  std::vector<std::unique_ptr<AAAnalysisBase>>::clear[abi:ne200100](this + 33);
  v2 = *(this + 31);
  v23.length = CFArrayGetCount(v2);
  v23.location = 0;
  if (CFArrayContainsValue(v2, v23, @"sound check info") || (v3 = *(this + 31), v24.length = CFArrayGetCount(v3), v24.location = 0, CFArrayContainsValue(v3, v24, @"main loudness parameters")) || (v4 = *(this + 31), v25.length = CFArrayGetCount(v4), v25.location = 0, CFArrayContainsValue(v4, v25, @"additional loudness parameters")))
  {
    v5 = *(this + 31);
    v26.length = CFArrayGetCount(v5);
    v26.location = 0;
    CFArrayContainsValue(v5, v26, @"sound check info");
    v6 = *(this + 31);
    v27.length = CFArrayGetCount(v6);
    v27.location = 0;
    CFArrayContainsValue(v6, v27, @"main loudness parameters");
    v7 = *(this + 31);
    v28.length = CFArrayGetCount(v7);
    v28.location = 0;
    CFArrayContainsValue(v7, v28, @"additional loudness parameters");
    operator new();
  }

  v8 = *(this + 31);
  v29.length = CFArrayGetCount(v8);
  v29.location = 0;
  if (CFArrayContainsValue(v8, v29, @"dialogue anchor parameters"))
  {
    operator new();
  }

  v9 = *(this + 33);
  v10 = *(this + 34);
  while (1)
  {
    if (v9 == v10)
    {
      return 0;
    }

    v11 = (*(**v9 + 16))();
    if (v11)
    {
      break;
    }

    v9 += 8;
  }

  v12 = v11;
  if (kAASubsystem)
  {
    v14 = *kAASubsystem;
    if (!*kAASubsystem)
    {
      return v12;
    }
  }

  else
  {
    v14 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    buf[0] = 136315906;
    *&buf[1] = "AAAudioAnalyzer.cpp";
    v16 = 1024;
    v17 = 77;
    v18 = 2048;
    v19 = this;
    v20 = 1024;
    v21 = v12;
    _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d AAAudioAnalyzer::PrepareAnalyzers (%p), Prepare analyzer failed (err = %d)", buf, 0x22u);
  }

  return v12;
}

void sub_18F733C34(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a15)
  {
    (*(*a15 + 8))(a15, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::unique_ptr<AAAnalysisBase>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (8 * (v8 >> 3));
    v13 = *a2;
    *a2 = 0;
    *v12 = v13;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = v4 + 1;
  }

  *(a1 + 8) = v6;
}

uint64_t AAAudioAnalyzer::CompleteAnalysis(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v53 = *MEMORY[0x1E69E9840];
  if (*(v1 + 256) != 1)
  {
    return 4294963436;
  }

  v6 = v1;
  v7 = (*(v1 + 272) - *(v1 + 264)) >> 3;
  if (!v7)
  {
    return 0;
  }

  *(v1 + 224) = v2;
  *(v1 + 232) = v3;
  *(v1 + 240) = v4;
  v5.n128_u64[0] = 0;
  result = AAAnalyzer::CallProgressCallback(v1, v5);
  if (result)
  {
    return result;
  }

  if (v6[11])
  {
    v10 = clock();
    queue = dispatch_queue_create("Progress", 0);
    for (i = 0; ; i += v14)
    {
      v12 = *(v6 + 24);
      ioNumBytes = 0x8000;
      ioNumPackets = v12;
      v13 = AudioFileReadPacketData(v6[11], 0, &ioNumBytes, v6[13], i, &ioNumPackets, outBuffer);
      if (v13)
      {
        break;
      }

      v14 = ioNumPackets;
      if (!ioNumPackets)
      {
        v26 = queue;
        goto LABEL_24;
      }

      v15 = *(v6 + 11);
      v40[0] = 1;
      v40[2] = v15;
      v40[3] = ioNumBytes;
      v41 = outBuffer;
      v16 = (*(*v6 + 56))(v6, ioNumPackets, v40, v6[13]);
      if (v16)
      {
        v34 = v16;
        if (kAASubsystem)
        {
          v35 = *kAASubsystem;
          v26 = queue;
          if (!*kAASubsystem)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v35 = MEMORY[0x1E69E9C10];
          v26 = queue;
        }

        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v45 = "AAAudioAnalyzer.cpp";
          v46 = 1024;
          v47 = 208;
          v48 = 2048;
          v49 = v6;
          v50 = 1024;
          v51 = v34;
          _os_log_impl(&dword_18F5DF000, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d AAAudioAnalyzer::CompleteAnalysis (%p), PushAudio failed (err = %d)", buf, 0x22u);
        }

LABEL_40:
        v36 = v6[11];
        if (v36)
        {
          AudioFileClose(v36);
          v6[11] = 0;
        }

        if (v26)
        {
          dispatch_release(v26);
        }

        result = 0;
        *(v6 + 256) = 0;
        return result;
      }

      v17 = clock();
      if (v17 - v10 >= 0xF4240)
      {
        v18 = v17;
        v19 = v6[33];
        if (v6[34] == v19)
        {
          v25 = 100.0;
        }

        else
        {
          v20 = 0;
          v21 = 0.0;
          v22 = 1;
          do
          {
            v21 = v21 + (*(**(v19 + 8 * v20) + 64))(*(v19 + 8 * v20));
            v20 = v22;
            v19 = v6[33];
            v23 = (v6[34] - v19) >> 3;
          }

          while (v23 > v22++);
          v25 = v21 / v23;
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = ___ZN15AAAudioAnalyzer16CompleteAnalysisEPFiP19OpaqueAudioAnalyzerfPvES2_U13block_pointerFiS1_fE_block_invoke;
        block[3] = &__block_descriptor_tmp_2987;
        block[4] = v6;
        v39 = v25;
        dispatch_async(queue, block);
        v10 = v18;
      }
    }

    v27 = v13;
    if (kAASubsystem)
    {
      v28 = *kAASubsystem;
      if (!*kAASubsystem)
      {
LABEL_36:
        v26 = queue;
        goto LABEL_40;
      }
    }

    else
    {
      v28 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v45 = "AAAudioAnalyzer.cpp";
      v46 = 1024;
      v47 = 192;
      v48 = 2048;
      v49 = v6;
      v50 = 1024;
      v51 = v27;
      _os_log_impl(&dword_18F5DF000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d AAAudioAnalyzer::CompleteAnalysis (%p), AudioFileReadPacketData failed (err = %d)", buf, 0x22u);
    }

    goto LABEL_36;
  }

  v26 = 0;
LABEL_24:
  v29 = v6[33];
  if (v6[34] == v29)
  {
LABEL_28:
    v9.n128_u32[0] = 1120403456;
    result = AAAnalyzer::CallProgressCallback(v6, v9);
    if (!result)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v30 = 0;
    v31 = 0.0;
    v32 = 1;
    v33 = 100.0 / v7;
    while (1)
    {
      result = (*(**(v29 + 8 * v30) + 32))(*(v29 + 8 * v30), v31, v33);
      if (result)
      {
        break;
      }

      v31 = v33 + v31;
      v33 = (100.0 / v7) + v33;
      v30 = v32;
      v29 = v6[33];
      ++v32;
      if (v30 >= (v6[34] - v29) >> 3)
      {
        goto LABEL_28;
      }
    }
  }

  return result;
}

uint64_t AAAudioAnalyzer::PushAudio(AAAudioAnalyzer *this, uint64_t a2, const AudioBufferList *a3, const AudioStreamPacketDescription *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*(this + 256) != 1)
  {
    return 4294963436;
  }

  CrashIfClientProvidedBogusAudioBufferList();
  if (*(this + 15))
  {
    *(this + 41) = a2;
    memcpy(*(this + 21), a3, *(this + 44));
    *(this + 23) = a4;
    do
    {
      v8 = *(this + 19);
      mNumberBuffers = v8->mNumberBuffers;
      if (mNumberBuffers)
      {
        v10 = *(this + 16);
        p_mData = &v8->mBuffers[0].mData;
        do
        {
          *(p_mData - 1) = 0x200000000001;
          v12 = *v10++;
          *p_mData = v12;
          p_mData += 2;
          --mNumberBuffers;
        }

        while (mNumberBuffers);
      }

      *(this + 40) = 2048;
      v13 = AudioConverterFillComplexBuffer(*(this + 15), AAAnalyzer::ACInputProc, this, this + 40, v8, 0);
      if (*(this + 40))
      {
        v14 = *(this + 33);
        v15 = *(this + 34);
        while (v14 != v15)
        {
          v16 = (*(**v14 + 24))(*v14, *(this + 40), *(this + 19));
          if (v16)
          {
            v18 = v16;
            if (kAASubsystem)
            {
              v20 = *kAASubsystem;
              if (!*kAASubsystem)
              {
                return v18;
              }
            }

            else
            {
              v20 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v25 = 136315906;
              v26 = "AAAudioAnalyzer.cpp";
              v27 = 1024;
              v28 = 134;
              v29 = 2048;
              v30 = this;
              v31 = 1024;
              v32 = v18;
              _os_log_impl(&dword_18F5DF000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d AAAudioAnalyzer::PushAudio (%p), PushAudio to analyzer failed (err = %d)", &v25, 0x22u);
            }

            return v18;
          }

          ++v14;
        }
      }
    }

    while (!v13);
    if (v13 != 5)
    {
      if (kAASubsystem)
      {
        v17 = *kAASubsystem;
        if (!*kAASubsystem)
        {
          return v13;
        }
      }

      else
      {
        v17 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v25 = 136315906;
        v26 = "AAAudioAnalyzer.cpp";
        v27 = 1024;
        v28 = 142;
        v29 = 2048;
        v30 = this;
        v31 = 1024;
        v32 = v13;
        _os_log_impl(&dword_18F5DF000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d AAAudioAnalyzer::PushAudio (%p), AudioConverterFillComplexBuffer failed (err = %d)", &v25, 0x22u);
      }

      return v13;
    }

    return 0;
  }

  v22 = *(this + 33);
  v21 = *(this + 34);
  if (v22 == v21)
  {
    return 0;
  }

  do
  {
    v23 = *v22++;
    v24 = (*(*v23 + 24))(v23, a2, a3);
  }

  while (v22 != v21);
  return v24;
}

void AAAudioAnalyzer::~AAAudioAnalyzer(AAAudioAnalyzer *this)
{
  AAAudioAnalyzer::~AAAudioAnalyzer(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032B648;
  std::vector<std::unique_ptr<AAAnalysisBase>>::clear[abi:ne200100](this + 33);
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  if (*(this + 33))
  {
    std::vector<std::unique_ptr<AAAnalysisBase>>::clear[abi:ne200100](this + 33);
    operator delete(*(this + 33));
  }

  AAAnalyzer::~AAAnalyzer(this);
}

uint64_t AAAudioAnalyzer::AAAudioAnalyzer(uint64_t a1, const __CFArray *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseOpaqueObject::BaseOpaqueObject(a1);
  *v10 = &unk_1F03369B0;
  *(v10 + 12) = 0;
  CAAudioChannelLayout::CAAudioChannelLayout((v10 + 56));
  *(a1 + 64) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = a3;
  *(a1 + 208) = a4;
  *(a1 + 216) = a5;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0;
  if (AAAnalyzer::AAAnalyzer(__CFArray const*,void (*)(OpaqueAudioAnalyzer *,__CFString const*,AudioAnalysisFrameList const*,void *,AudioAnalyzerResultsFlags *),void *,void({block_pointer})(OpaqueAudioAnalyzer *,__CFString const*,AudioAnalysisFrameList const*,AudioAnalyzerResultsFlags *))::once != -1)
  {
    dispatch_once(&AAAnalyzer::AAAnalyzer(__CFArray const*,void (*)(OpaqueAudioAnalyzer *,__CFString const*,AudioAnalysisFrameList const*,void *,AudioAnalyzerResultsFlags *),void *,void({block_pointer})(OpaqueAudioAnalyzer *,__CFString const*,AudioAnalysisFrameList const*,AudioAnalyzerResultsFlags *))::once, &__block_literal_global_10518);
  }

  *(a1 + 248) = CFArrayCreateMutableCopy(0, 0, a2);
  v11 = *(a1 + 168);
  if (v11)
  {
    free(v11);
    *(a1 + 168) = 0;
  }

  v12 = *(a1 + 152);
  if (v12)
  {
    free(v12);
    *(a1 + 152) = 0;
  }

  *(a1 + 256) = 0;
  *a1 = &unk_1F032B648;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0;
  return a1;
}