@interface _ACComponentWrapper
- (_ACComponentWrapper)initWithCoder:(id)coder;
- (_ACComponentWrapper)initWithComponent:(void *)component;
- (id).cxx_construct;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _ACComponentWrapper

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (_ACComponentWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeIntForKey:@"implType"];
  v5 = [coderCopy decodeIntForKey:@"priority"];
  v29[0] = [coderCopy decodeInt32ForKey:@"type"];
  v29[1] = [coderCopy decodeInt32ForKey:@"subType"];
  v29[2] = [coderCopy decodeInt32ForKey:@"manufacturer"];
  v30 = [coderCopy decodeInt32ForKey:@"flags"];
  v31 = 0;
  v6 = [coderCopy decodeInt32ForKey:@"version"];
  {
    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    [_ACComponentWrapper initWithCoder:]::arrayOfString = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  }

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  applesauce::CF::StringRef::from_ns(&v28, v7);

  v8 = [coderCopy decodeObjectOfClasses:-[_ACComponentWrapper initWithCoder:]::arrayOfString forKey:@"tags"];
  applesauce::CF::ArrayRef::from_ns(&v27, v8);

  [coderCopy decodeIntForKey:@"wasValidated"];
  [coderCopy decodeIntForKey:@"validationResult"];
  if (v4 != 1)
  {
    if (v4 == 3)
    {
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionIdentifier"];
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"factoryFunctionName"];
      applesauce::CF::StringRef::from_ns(&cf, v10);

      v21 = 0;
      AudioComponentRegistrationInfo::AudioComponentRegistrationInfo(v22, v29, v30, &v28, v6, &cf, &v21, &v27);
      APComponent_NSExtension::create_shared(&v21, v22, v9, 0);
    }

    __assert_rtn("[_ACComponentWrapper initWithCoder:]", "AudioComponentVector.mm", 287, "0");
  }

  {
    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    [_ACComponentWrapper initWithCoder:]::arrayOfNumber = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  }

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundlePath"];
  applesauce::CF::StringRef::from_ns(&cf, v11);

  v12 = [coderCopy decodeObjectOfClasses:-[_ACComponentWrapper initWithCoder:]::arrayOfNumber forKey:@"archs"];
  applesauce::CF::ArrayRef::from_ns(&v25, v12);

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"factoryFunctionName"];
  applesauce::CF::StringRef::from_ns(&v24, v13);

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"className"];
  applesauce::CF::StringRef::from_ns(&v23, v14);

  AudioComponentRegistrationInfo::AudioComponentRegistrationInfo(v22, v29, v30, &v28, v6, &v24, &v23, &v27);
  v20 = 0;
  APComponent_FromBundle_Loadable::create_shared(&v21, v5, &cf, &v20, &v25, v22);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  ptr = self->mComponent.__ptr_;
  v11 = coderCopy;
  [coderCopy encodeInt:*(ptr + 8) forKey:@"implType"];
  [v11 encodeInt:*(ptr + 15) forKey:@"priority"];
  [v11 encodeInt32:*(ptr + 9) forKey:@"type"];
  [v11 encodeInt32:*(ptr + 10) forKey:@"subType"];
  [v11 encodeInt32:*(ptr + 11) forKey:@"manufacturer"];
  [v11 encodeInt32:*(ptr + 12) forKey:@"flags"];
  [v11 encodeInt32:*(ptr + 14) forKey:@"version"];
  APComponent::name(&v12, *(ptr + 8));
  v6 = v12;
  [v11 encodeObject:v12 forKey:@"name"];
  if (v6)
  {
    CFRelease(v6);
  }

  [v11 encodeObject:*(ptr + 15) forKey:@"tags"];
  [v11 encodeInt:*(ptr + 128) forKey:@"validated"];
  [v11 encodeInt:*(ptr + 33) forKey:@"validationResult"];
  v7 = (*(*ptr + 80))(ptr);
  v8 = v7;
  if (v7)
  {
    [v11 encodeObject:*(v7 + 160) forKey:@"bundlePath"];
    [v11 encodeObject:v8[21] forKey:@"archs"];
    [v11 encodeObject:v8[22] forKey:@"factoryFunctionName"];
    [v11 encodeObject:v8[23] forKey:@"className"];
  }

  v9 = (*(*ptr + 64))(ptr);
  v10 = v11;
  if (v9)
  {
    [v11 encodeObject:*(v9 + 160) forKey:@"extensionIdentifier"];
    [v11 encodeObject:*(v9 + 192) forKey:@"factoryFunctionName"];
    v10 = v11;
  }
}

- (_ACComponentWrapper)initWithComponent:(void *)component
{
  v5 = *component;
  v4 = *(component + 1);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->mComponent.__cntrl_;
  self->mComponent.__ptr_ = v5;
  self->mComponent.__cntrl_ = v4;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  return self;
}

@end