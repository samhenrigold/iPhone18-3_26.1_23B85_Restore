@interface TPBodyRep
- (id)storage;
@end

@implementation TPBodyRep

- (id)storage
{
  v10 = objc_msgSend_info(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_bodyStorage(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

@end