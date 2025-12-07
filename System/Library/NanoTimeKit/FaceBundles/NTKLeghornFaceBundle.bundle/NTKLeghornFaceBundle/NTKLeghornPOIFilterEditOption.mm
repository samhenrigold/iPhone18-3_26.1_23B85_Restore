@interface NTKLeghornPOIFilterEditOption
+ (id)optionAtIndex:(unint64_t)index forDevice:(id)device;
+ (id)optionForEverythingForDevice:(id)device;
+ (id)optionWithPOIFilter:(id)filter forDevice:(id)device;
- (BOOL)isEqual:(id)equal;
- (NTKLeghornPOIFilterEditOption)initWithCoder:(id)coder;
- (NTKLeghornPOIFilterEditOption)initWithJSONObjectRepresentation:(id)representation forDevice:(id)device;
- (NTKLeghornPOIFilterEditOption)initWithPOIFilter:(id)filter forDevice:(id)device;
- (id)JSONObjectRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKLeghornPOIFilterEditOption

- (NTKLeghornPOIFilterEditOption)initWithPOIFilter:(id)filter forDevice:(id)device
{
  filterCopy = filter;
  v11.receiver = self;
  v11.super_class = NTKLeghornPOIFilterEditOption;
  v8 = [(NTKEditOption *)&v11 initWithDevice:device];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_filter, filter);
  }

  return v9;
}

+ (id)optionWithPOIFilter:(id)filter forDevice:(id)device
{
  deviceCopy = device;
  filterCopy = filter;
  v7 = [NTKLeghornPOIFilterEditOption alloc];
  v9 = objc_msgSend_initWithPOIFilter_forDevice_(v7, v8, filterCopy, deviceCopy);

  return v9;
}

+ (id)optionForEverythingForDevice:(id)device
{
  deviceCopy = device;
  v7 = objc_msgSend_all(NTKLeghornPOIFilter, v5, v6);
  v9 = objc_msgSend_optionWithPOIFilter_forDevice_(self, v8, v7, deviceCopy);

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqual = objc_msgSend_isEqual_(self->_filter, v5, equalCopy[2]);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = NTKLeghornPOIFilterEditOption;
  return [(NTKLeghornPOIFilterEditOption *)&v3 hash];
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = NTKLeghornPOIFilterEditOption;
  coderCopy = coder;
  [(NTKEditOption *)&v9 encodeWithCoder:coderCopy];
  v7 = objc_msgSend_dictionaryValue(self->_filter, v5, v6, v9.receiver, v9.super_class);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"filter");
}

- (NTKLeghornPOIFilterEditOption)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = NTKLeghornPOIFilterEditOption;
  v6 = [(NTKEditOption *)&v13 initWithCoder:coderCopy];
  if (v6)
  {
    v7 = objc_msgSend_decodeObjectForKey_(coderCopy, v5, @"filter");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_poiFilterFromDictionary_(NTKLeghornPOIFilter, v8, v7);
    }

    else
    {
      objc_msgSend_all(NTKLeghornPOIFilter, v8, v9);
    }
    v10 = ;
    filter = v6->_filter;
    v6->_filter = v10;
  }

  return v6;
}

- (id)JSONObjectRepresentation
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_dictionaryValue(self->_filter, a2, v2);
  v15 = 0;
  v5 = objc_msgSend_dataWithJSONObject_options_error_(MEMORY[0x277CCAAA0], v4, v3, 0, &v15);
  v6 = v15;
  v8 = v6;
  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = v5 == 0;
  }

  if (v9)
  {
    v10 = NTKFoghornFaceBundleLogObject(v6, v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "[NTKLeghornPOIFilterEditOption JSONObjectRepresentation]";
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_23BEB1000, v10, OS_LOG_TYPE_DEFAULT, "%s: failed to JSON encode filter dictionary, error = %@", buf, 0x16u);
    }

    v13 = @"bad";
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CCACA8]);
    v13 = objc_msgSend_initWithData_encoding_(v11, v12, v5, 4);
  }

  return v13;
}

- (NTKLeghornPOIFilterEditOption)initWithJSONObjectRepresentation:(id)representation forDevice:(id)device
{
  representationCopy = representation;
  v8 = objc_msgSend_initWithDevice_(self, v7, device);
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v9, *MEMORY[0x277CBE660], @"object must be a string - invalid value: %@", representationCopy);
    }

    v10 = objc_msgSend_dataUsingEncoding_(representationCopy, v9, 4);
    v12 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x277CCAAA0], v11, v10, 1, 0);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_poiFilterFromDictionary_(NTKLeghornPOIFilter, v13, v12);
    }

    else
    {
      objc_msgSend_all(NTKLeghornPOIFilter, v13, v14);
    }
    v15 = ;
    filter = v8->_filter;
    v8->_filter = v15;
  }

  return v8;
}

+ (id)optionAtIndex:(unint64_t)index forDevice:(id)device
{
  deviceCopy = device;
  v5 = objc_opt_class();
  v7 = objc_msgSend_optionForEverythingForDevice_(v5, v6, deviceCopy);

  return v7;
}

@end