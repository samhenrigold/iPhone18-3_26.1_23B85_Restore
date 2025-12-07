@interface CADSPMutableBoxRelationModel
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)setBoxName:(id)name ofEndpoint:(unsigned int)endpoint;
@end

@implementation CADSPMutableBoxRelationModel

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = CADSPMutableBoxRelationModel;
  return [(CADSPBoxRelationModel *)&v4 mutableCopyWithZone:zone];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CADSPBoxRelationModel allocWithZone:zone];
  std::string::operator=(&v4->_this, &self->super._this);
  std::string::operator=(&v4->_this.source.var0, &self->super._this.source.var0);
  *v4[1]._this.source.name.__rep_.__s.__data_ = *self[1].super._this.source.name.__rep_.__s.__data_;
  return v4;
}

- (void)setBoxName:(id)name ofEndpoint:(unsigned int)endpoint
{
  v16 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (!nameCopy)
  {
    v12 = 0;
    memset(v15, 0, sizeof(v15));
    v9 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v13 = 134217984;
    v14 = 0;
    _os_log_send_and_compose_impl(v10, &v12, v15, 80, &dword_1C91AE000, v9, 16, "assertion failure: name -> %llu", &v13);
    _os_crash_msg();
    __break(1u);
  }

  v6 = nameCopy;
  uTF8String = [nameCopy UTF8String];
  v8 = 24;
  if (!endpoint)
  {
    v8 = 0;
  }

  std::string::__assign_external(&self->super._this.source.name.__rep_.__s.__data_[v8], uTF8String);
}

@end