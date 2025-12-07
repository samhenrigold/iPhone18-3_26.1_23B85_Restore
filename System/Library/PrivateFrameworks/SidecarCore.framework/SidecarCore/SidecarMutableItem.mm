@interface SidecarMutableItem
- (BOOL)appendData:(id)data;
- (SidecarMutableItem)initWithType:(id)type capacity:(unint64_t)capacity;
- (id)data;
@end

@implementation SidecarMutableItem

- (BOOL)appendData:(id)data
{
  v31 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = [dataCopy length];
  capacity = self->_capacity;
  v7 = capacity - [(NSMutableData *)self->_mutableData length];
  if (v5 > v7)
  {
    v16 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
    v13 = v16;
    if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      type = [(SidecarItem *)self type];
      v19 = v7;
      v20 = [dataCopy length];
      v21 = [(NSMutableData *)self->_mutableData length];
      v22 = self->_capacity;
      v23 = 138544130;
      v24 = type;
      v25 = 2048;
      v26 = v20;
      v7 = v19;
      v27 = 2048;
      v28 = v21;
      v29 = 2048;
      v30 = v22;
      _os_log_impl(&dword_26604C000, v13, OS_LOG_TYPE_ERROR, "item exceeded capacity: %{public}@ (%lu + %lu > %lu)", &v23, 0x2Au);
    }

    goto LABEL_11;
  }

  [(NSMutableData *)self->_mutableData appendData:dataCopy];
  v8 = [(NSMutableData *)self->_mutableData length];
  v9 = self->_capacity;
  v10 = v8 == v9;
  if (v8 == v9)
  {
    v11 = (*(self + 40) & 0xFE) + 1;
  }

  else
  {
    v11 = *(self + 40) & 0xFE;
  }

  *(self + 40) = v11;
  if (v10)
  {
    v12 = SidecarCoreLogSubsystem(OS_LOG_TYPE_INFO);
    v13 = v12;
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      type2 = [(SidecarItem *)self type];
      v15 = self->_capacity;
      v23 = 138543618;
      v24 = type2;
      v25 = 2048;
      v26 = v15;
      _os_log_impl(&dword_26604C000, v13, OS_LOG_TYPE_INFO, "item complete: %{public}@ (%lu bytes)", &v23, 0x16u);
    }

LABEL_11:
  }

  return v5 <= v7;
}

- (id)data
{
  if ([(NSMutableData *)self->_mutableData length]== self->_capacity)
  {
    mutableData = self->_mutableData;
  }

  else
  {
    mutableData = 0;
  }

  return mutableData;
}

- (SidecarMutableItem)initWithType:(id)type capacity:(unint64_t)capacity
{
  v10.receiver = self;
  v10.super_class = SidecarMutableItem;
  v5 = [(SidecarItem *)&v10 initWithData:0 type:type];
  v6 = v5;
  if (v5)
  {
    v5->_capacity = capacity;
    v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:capacity];
    mutableData = v6->_mutableData;
    v6->_mutableData = v7;
  }

  return v6;
}

@end