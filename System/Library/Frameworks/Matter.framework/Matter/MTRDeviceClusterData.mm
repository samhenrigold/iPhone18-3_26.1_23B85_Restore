@interface MTRDeviceClusterData
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToClusterData:(id)data;
- (MTRDeviceClusterData)initWithCoder:(id)coder;
- (MTRDeviceClusterData)initWithDataVersion:(id)version attributes:(id)attributes;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTRDeviceClusterData

- (MTRDeviceClusterData)initWithDataVersion:(id)version attributes:(id)attributes
{
  versionCopy = version;
  attributesCopy = attributes;
  v15.receiver = self;
  v15.super_class = MTRDeviceClusterData;
  v8 = [(MTRDeviceClusterData *)&v15 init];
  if (v8)
  {
    v9 = [versionCopy copy];
    dataVersion = v8->_dataVersion;
    v8->_dataVersion = v9;

    v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(attributesCopy, "count")}];
    attributes = v8->_attributes;
    v8->_attributes = v11;

    [(NSMutableDictionary *)v8->_attributes addEntriesFromDictionary:attributesCopy];
    v13 = v8;
  }

  return v8;
}

- (MTRDeviceClusterData)initWithCoder:(id)coder
{
  v26 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = MTRDeviceClusterData;
  v5 = [(MTRDeviceClusterData *)&v23 init];
  if (!v5)
  {
LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataVersion"];
  p_dataVersion = &v5->_dataVersion;
  dataVersion = v5->_dataVersion;
  v5->_dataVersion = v6;

  if (v5->_dataVersion)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = sub_2393D9044(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = *p_dataVersion;
        *buf = 138412290;
        v25 = v14;
        _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "MTRDeviceClusterData got %@ for data version, not NSNumber.", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "MTRDeviceClusterData got %@ for data version, not NSNumber.", *p_dataVersion);
      }

      goto LABEL_16;
    }
  }

  if ((atomic_load_explicit(&qword_27DF775E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF775E0))
  {
    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    qword_27DF775D8 = [v18 setWithObjects:{v19, v20, v21, v22, objc_opt_class(), 0}];
    __cxa_guard_release(&qword_27DF775E0);
  }

  v9 = [coderCopy decodeObjectOfClasses:qword_27DF775D8 forKey:@"attributes"];
  p_attributes = &v5->_attributes;
  attributes = v5->_attributes;
  v5->_attributes = v9;

  if (v5->_attributes)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = sub_2393D9044(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *p_attributes;
        *buf = 138412290;
        v25 = v16;
        _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "MTRDeviceClusterData got %@ for attributes, not NSDictionary.", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "MTRDeviceClusterData got %@ for attributes, not NSDictionary.", *p_attributes);
      }

      goto LABEL_16;
    }
  }

  v12 = v5;
LABEL_17:

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dataVersion = [(MTRDeviceClusterData *)self dataVersion];
  [coderCopy encodeObject:dataVersion forKey:@"dataVersion"];

  attributes = [(MTRDeviceClusterData *)self attributes];
  [coderCopy encodeObject:attributes forKey:@"attributes"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [MTRDeviceClusterData alloc];

  return MEMORY[0x2821F9670](v3, sel_initWithDataVersion_attributes_);
}

- (BOOL)isEqualToClusterData:(id)data
{
  dataCopy = data;
  dataVersion = self->_dataVersion;
  dataVersion = [dataCopy dataVersion];
  if (sub_238DB32F8(dataVersion, dataVersion))
  {
    attributes = self->_attributes;
    attributes = [dataCopy attributes];
    v9 = sub_238DB32F8(attributes, attributes);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && [(MTRDeviceClusterData *)self isEqualToClusterData:equalCopy];

  return v6;
}

@end