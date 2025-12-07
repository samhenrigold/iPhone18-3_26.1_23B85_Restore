@interface VFXManipulableItem
- (BOOL)isEqual:(id)equal;
- (__n128)setDraggedTransform:(__n128)transform;
- (uint64_t)setTransform:(uint64_t)transform;
- (uint64_t)setWorldTransform:(uint64_t)transform;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation VFXManipulableItem

- (void)dealloc
{
  objc_msgSend_setNode_(self, a2, 0);
  objc_msgSend_setComponent_(self, v3, 0);
  v4.receiver = self;
  v4.super_class = VFXManipulableItem;
  [(VFXManipulableItem *)&v4 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend_node(self, v5, v6);
    if (v7 == objc_msgSend_node(equal, v8, v9) && (v12 = objc_msgSend_elementIndex(self, v10, v11), v12 == objc_msgSend_elementIndex(equal, v13, v14)))
    {
      v17 = objc_msgSend_component(equal, v15, v16);
      return v17 == objc_msgSend_component(equal, v18, v19);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v21.receiver = self;
    v21.super_class = VFXManipulableItem;
    return [(VFXManipulableItem *)&v21 isEqual:equal];
  }
}

- (unint64_t)hash
{
  v3 = objc_msgSend_node(self, a2, v2);

  return objc_msgSend_hash(v3, v4, v5);
}

- (uint64_t)setTransform:(uint64_t)transform
{
  v3 = sub_1AF0D5194(transform, a2);
  result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1AFDCFDF8(transform, v3);
  }

  return result;
}

- (uint64_t)setWorldTransform:(uint64_t)transform
{
  v3 = sub_1AF0D5194(transform, a2);
  result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1AFDCFE70(transform, v3);
  }

  return result;
}

- (__n128)setDraggedTransform:(__n128)transform
{
  result[3] = a2;
  result[4] = transform;
  result[5] = a4;
  result[6] = a5;
  return result;
}

@end