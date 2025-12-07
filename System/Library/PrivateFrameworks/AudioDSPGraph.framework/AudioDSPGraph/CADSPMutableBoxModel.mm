@interface CADSPMutableBoxModel
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)setAudioComponentDescription:(const AudioComponentDescription *)description;
- (void)setClassName:(id)name;
- (void)setName:(id)name;
- (void)setNumberOfInputs:(unint64_t)inputs;
- (void)setNumberOfOutputs:(unint64_t)outputs;
- (void)setSubsetName:(id)name;
@end

@implementation CADSPMutableBoxModel

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = CADSPMutableBoxModel;
  return [(CADSPBoxModel *)&v4 mutableCopyWithZone:zone];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CADSPBoxModel allocWithZone:zone];
  std::string::operator=(&v4->_this, &self->super._this);
  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(&v4->_this.var0, &self->super._this.var0);
  v5 = *&self[2].super.super.isa;
  *(&v4[1]._this.name.__rep_.__l + 1) = *(&self[1].super._this.name.__rep_.__l + 1);
  *&v4[2].super.isa = v5;
  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(&v4[2]._this.name.__rep_.__l.__size_, &self[2].super._this.name.__rep_.__l.__size_);
  return v4;
}

- (void)setAudioComponentDescription:(const AudioComponentDescription *)description
{
  if (description)
  {
    if (BYTE4(self[2].super.super.isa) == 1)
    {
      BYTE4(self[2].super.super.isa) = 0;
    }

    v3 = *&description->componentType;
    LODWORD(self[2].super.super.isa) = description->componentFlagsMask;
    *(&self[1].super._this.name.__rep_.__l + 1) = v3;
    BYTE4(self[2].super.super.isa) = 1;
  }

  else if (BYTE4(self[2].super.super.isa) == 1)
  {
    BYTE4(self[2].super.super.isa) = 0;
  }
}

- (void)setSubsetName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if (nameCopy)
  {
    std::optional<std::string>::operator=[abi:ne200100]<char const*,void>(&self[2].super._this.name.__rep_.__l.__size_, [nameCopy UTF8String]);
  }

  else if (LOBYTE(self[3].super.super.isa) == 1)
  {
    if (*(&self[2].super._this.var1 + 3) < 0)
    {
      operator delete(self[2].super._this.name.__rep_.__l.__size_);
    }

    LOBYTE(self[3].super.super.isa) = 0;
  }
}

- (void)setClassName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if (nameCopy)
  {
    std::optional<std::string>::operator=[abi:ne200100]<char const*,void>(&self->super._this.var0, [nameCopy UTF8String]);
  }

  else if (self[1].super._this.name.__rep_.__s.__data_[8] == 1)
  {
    if (self[1].super._this.name.__rep_.__s.__data_[7] < 0)
    {
      operator delete(*&self->super._this.var0);
    }

    self[1].super._this.name.__rep_.__s.__data_[8] = 0;
  }
}

- (void)setNumberOfOutputs:(unint64_t)outputs
{
  v9 = *MEMORY[0x1E69E9840];
  if (HIDWORD(outputs))
  {
    v5 = 0;
    memset(v8, 0, sizeof(v8));
    v3 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    v6 = 134217984;
    v7 = 0;
    _os_log_send_and_compose_impl(v4, &v5, v8, 80, &dword_1C91AE000, v3, 16, "assertion failure: numberOfOutputs <= std::numeric_limits<uint32_t>::max() -> %llu", &v6);
    _os_crash_msg();
    __break(1u);
  }

  HIDWORD(self[2].super._this.name.__rep_.__l.__data_) = outputs;
}

- (void)setNumberOfInputs:(unint64_t)inputs
{
  v9 = *MEMORY[0x1E69E9840];
  if (HIDWORD(inputs))
  {
    v5 = 0;
    memset(v8, 0, sizeof(v8));
    v3 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    v6 = 134217984;
    v7 = 0;
    _os_log_send_and_compose_impl(v4, &v5, v8, 80, &dword_1C91AE000, v3, 16, "assertion failure: numberOfInputs <= std::numeric_limits<uint32_t>::max() -> %llu", &v6);
    _os_crash_msg();
    __break(1u);
  }

  *self[2].super._this.name.__rep_.__s.__data_ = inputs;
}

- (void)setName:(id)name
{
  nameCopy = name;
  std::string::__assign_external(&self->super._this, [nameCopy UTF8String]);
}

@end