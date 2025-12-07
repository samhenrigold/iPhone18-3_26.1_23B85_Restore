@interface VFXModelDeformer
- (VFXModelDeformer)initWithCoder:(id)coder;
- (void)_enumerateDependencyNodesUsingBlock:(id)block;
@end

@implementation VFXModelDeformer

- (VFXModelDeformer)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = VFXModelDeformer;
  return [(VFXModelDeformer *)&v4 init];
}

- (void)_enumerateDependencyNodesUsingBlock:(id)block
{
  v12 = 0;
  v6 = objc_msgSend_requiredInputs(self, a2, block);
  if ((v6 & 0x38) != 0)
  {
    v7 = objc_msgSend_dependencyNodeAtIndex_(self, v5, 0);
    if (v7)
    {
      (*(block + 2))(block, 0, v7, v6, &v12);
    }

    else if ((byte_1EB658658 & 1) == 0)
    {
      byte_1EB658658 = 1;
      v8 = sub_1AF0D5194(0, v5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE18B8(v8);
      }
    }
  }

  if ((v6 & 0x1C0) != 0)
  {
    v9 = objc_msgSend_dependencyNodeAtIndex_(self, v5, 1);
    if (v9)
    {
      (*(block + 2))(block, 1, v9, v6, &v12);
    }

    else if ((byte_1EB658659 & 1) == 0)
    {
      byte_1EB658659 = 1;
      v11 = sub_1AF0D5194(0, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE18FC(v11);
      }
    }
  }
}

@end