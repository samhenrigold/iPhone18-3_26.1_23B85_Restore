@interface GESSMaterial
- (GESSMaterial)init;
- (id)initFromMtlFilePath:(id)path;
@end

@implementation GESSMaterial

- (GESSMaterial)init
{
  v13.receiver = self;
  v13.super_class = GESSMaterial;
  v2 = [(GESSMaterial *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    objc_msgSend_setSubMaterialNameToIndex_(v2, v4, v3, v5);

    v6 = objc_alloc_init(MEMORY[0x277CBEA60]);
    objc_msgSend_setSubMaterials_(v2, v7, v6, v8);

    v9 = objc_alloc_init(MEMORY[0x277CBEA60]);
    objc_msgSend_setMaterialParameterData_(v2, v10, v9, v11);
  }

  return v2;
}

- (id)initFromMtlFilePath:(id)path
{
  v37 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v8 = objc_msgSend_absoluteString(pathCopy, v5, v6, v7);
  v9 = v8;
  v13 = objc_msgSend_UTF8String(v9, v10, v11, v12);
  sub_24BC836D4(&v33, v13);

  v32[0] = 0;
  v32[1] = 0;
  memset(v30, 0, sizeof(v30));
  v31 = v32;
  sub_24BCCA6F0(&__p, &v33);
  memset(v36, 0, 32);
  memset(v35, 0, sizeof(v35));
  memset(v34, 0, sizeof(v34));
  v14 = sub_24BD345A0(&__p.__r_.__value_.__l.__data_, v30, 1, v34);
  sub_24BC9F10C(v36);
  sub_24BC9F08C(v35);
  sub_24BC9F00C(v34);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_8:
    selfCopy = 0;
    goto LABEL_11;
  }

  if (!v14)
  {
    goto LABEL_8;
  }

LABEL_3:
  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (sub_24BE752F4(v30, v15, v16, v17))
  {
    v28.receiver = self;
    v28.super_class = GESSMaterial;
    v18 = [(GESSMaterial *)&v28 init];
    v21 = v18;
    if (v18)
    {
      objc_msgSend_setSubMaterialNameToIndex_(v18, v19, v15, v20);
      objc_msgSend_setSubMaterials_(v21, v22, v16, v23);
      objc_msgSend_setMaterialParameterData_(v21, v24, v17, v25);
    }

    self = v21;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

LABEL_11:
  sub_24BC900B8(&v31, v32[0]);
  __p.__r_.__value_.__r.__words[0] = &v30[1] + 8;
  sub_24BCCB404(&__p);
  __p.__r_.__value_.__r.__words[0] = v30;
  sub_24BCCB4E0(&__p);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  return selfCopy;
}

@end