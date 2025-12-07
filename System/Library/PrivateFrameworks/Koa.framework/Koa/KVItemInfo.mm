@interface KVItemInfo
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToItemInfo:(id)info;
- (KVItemInfo)initWithCascadeEntityInfo:(id)info;
- (id)copyWithZone:(_NSZone *)zone;
- (id)item;
- (id)itemId;
- (int64_t)itemType;
@end

@implementation KVItemInfo

- (BOOL)isEqualToItemInfo:(id)info
{
  entityInfo = self->_entityInfo;
  v7 = objc_msgSend_entityInfo(info, a2, info, v3, v4, v5);
  LOBYTE(entityInfo) = objc_msgSend_isEqual_(entityInfo, v8, v7, v9, v10, v11);

  return entityInfo;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    isEqualToItemInfo = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    isEqualToItemInfo = objc_msgSend_isEqualToItemInfo_(self, v6, v5, v7, v8, v9);
  }

  else
  {
    isEqualToItemInfo = 0;
  }

  return isEqualToItemInfo;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v10 = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v8, v9);
  v15 = objc_msgSend_copyWithZone_(self->_entityInfo, v11, zone, v12, v13, v14);
  v16 = v10[1];
  v10[1] = v15;

  return v10;
}

- (int64_t)itemType
{
  v6 = objc_msgSend_item(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_itemType(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (id)itemId
{
  v6 = objc_msgSend_item(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_itemId(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (id)item
{
  v19 = *MEMORY[0x277D85DE8];
  entityInfo = self->_entityInfo;
  v12 = 0;
  v7 = objc_msgSend_toKVItem_(entityInfo, a2, &v12, v2, v3, v4);
  v8 = v12;
  if (!v7)
  {
    v9 = qword_28106B3C0;
    if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
    {
      v11 = self->_entityInfo;
      *buf = 136315650;
      v14 = "[KVItemInfo item]";
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v8;
      _os_log_error_impl(&dword_2559A5000, v9, OS_LOG_TYPE_ERROR, "%s Failed to resolve KVItem from entityInfo: %@ error: %@", buf, 0x20u);
    }
  }

  return v7;
}

- (KVItemInfo)initWithCascadeEntityInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = KVItemInfo;
  v6 = [(KVItemInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entityInfo, info);
  }

  return v7;
}

@end