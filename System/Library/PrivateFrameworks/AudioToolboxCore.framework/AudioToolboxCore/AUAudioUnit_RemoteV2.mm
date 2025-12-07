@interface AUAudioUnit_RemoteV2
- (AUAudioUnit_RemoteV2)initWithXPCService:()unique_ptr<AUHostingServiceClient componentDescription:(std:(AudioComponentDescription *)description :(OpaqueAudioComponentInstance *)a5 default_delete<AUHostingServiceClient>>)a3 instance:(id)instance instanceUUID:(id *)d error:;
- (BOOL)providesUserInterface;
- (id)_valueForProperty:(id)property error:(id *)error;
- (void)_setValue:(id)value forKey:(id)key error:(id *)error;
- (void)dealloc;
- (void)initWithXPCService:componentDescription:instance:instanceUUID:error:;
@end

@implementation AUAudioUnit_RemoteV2

- (BOOL)providesUserInterface
{
  cachedViewController = [(AUAudioUnit *)self cachedViewController];

  if (cachedViewController)
  {
    return 1;
  }

  v5 = [AUAudioUnitProperty propertyWithKey:@"_v2bridge_providesUserInterface" v2propID:0 scope:0 element:0];
  v9 = 0;
  v6 = [(AUAudioUnit_XPC *)self _getValueForProperty:v5 error:&v9];
  v7 = v9;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)_setValue:(id)value forKey:(id)key error:(id *)error
{
  valueCopy = value;
  keyCopy = key;
  v9 = +[AUAudioUnit keyPathsForValuesAffectingAllParameterValues];
  v10 = [v9 containsObject:keyCopy];

  if (v10)
  {
    [(AUAudioUnit_XPC *)self _setState:valueCopy forKey:keyCopy error:error];
  }

  else
  {
    v11 = [AUAudioUnitProperty propertyWithKey:keyCopy];
    [(AUAudioUnit_XPC *)self _setValue:valueCopy forProperty:v11 error:error];
  }
}

- (id)_valueForProperty:(id)property error:(id *)error
{
  v4 = [(AUAudioUnit_XPC *)self _getValueForProperty:property error:error];

  return v4;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  ptr = self->_service.__ptr_;
  v6 = 0;
  AUHostingServiceClient::setInvalidationHandler(*(ptr + 7), v5);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v5);
  v4.receiver = self;
  v4.super_class = AUAudioUnit_RemoteV2;
  [(AUAudioUnit_XPC *)&v4 dealloc];
}

- (AUAudioUnit_RemoteV2)initWithXPCService:()unique_ptr<AUHostingServiceClient componentDescription:(std:(AudioComponentDescription *)description :(OpaqueAudioComponentInstance *)a5 default_delete<AUHostingServiceClient>>)a3 instance:(id)instance instanceUUID:(id *)d error:
{
  v37 = *MEMORY[0x1E69E9840];
  instanceCopy = instance;
  v26 = *&description->componentType;
  LODWORD(v27) = description->componentFlagsMask;
  v33.receiver = self;
  v33.super_class = AUAudioUnit_RemoteV2;
  v14 = [(AUAudioUnit *)&v33 initWithComponentDescription:&v26 options:0 error:d];
  v15 = v14;
  if (v14)
  {
    v16 = *a3.__ptr_;
    *a3.__ptr_ = 0;
    std::unique_ptr<AUHostingServiceClient>::reset[abi:ne200100](&v14->_service.__ptr_, v16);
    [(AUAudioUnit_XPC *)v15 _setComponentInstance:a5];
    objc_storeStrong(&v15->_auInstanceUUID, instance);
    objc_initWeak(&location, v15);
    ptr = v15->_service.__ptr_;
    objc_copyWeak(&to, &location);
    v36 = 0;
    v34 = &unk_1F033E9F0;
    objc_moveWeak(&v35, &to);
    v36 = &v34;
    objc_destroyWeak(&to);
    AUHostingServiceClient::setInvalidationHandler(*(ptr + 7), &v34);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v34);
    *&v26 = 0;
    *(&v26 + 1) = &v26;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__15569;
    v29 = __Block_byref_object_dispose__15570;
    v30 = 0;
    v18 = *(v15->_service.__ptr_ + 5);
    v19 = v15;
    v20 = v18;
    v21 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0351D40];
    SetAllowedClassesForAUAudioUnitHostXPCInterface(v21);
    [v20 setExportedInterface:v21];
    v22 = objc_opt_new();
    [v22 setAudioUnit:v19];
    [v20 setExportedObject:v22];

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __92__AUAudioUnit_RemoteV2_initWithXPCService_componentDescription_instance_instanceUUID_error___block_invoke;
    v25[3] = &unk_1E72C2D38;
    v25[4] = &v26;
    [(AUAudioUnit_XPC *)v19 _doOpen:v20 completion:v25];

    if (d)
    {
      *d = *(*(&v26 + 1) + 40);
    }

    v23 = v19;
    _Block_object_dispose(&v26, 8);

    objc_destroyWeak(&location);
  }

  return v15;
}

- (void)initWithXPCService:componentDescription:instance:instanceUUID:error:
{
  objc_destroyWeak((self + 8));

  JUMPOUT(0x193ADF220);
}

@end