@interface TSTDupContentCache
- (id)description;
@end

@implementation TSTDupContentCache

- (id)description
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_2215C4CDC;
  v23 = sub_2215C4CEC;
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v9 = objc_msgSend_count(self, v6, v7, v8);
  v24 = objc_msgSend_stringWithFormat_(v3, v10, @"<%@ %p with %d key/value pairs \n{\n", v11, v5, self, v9);

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2215C4CF4;
  v18[3] = &unk_278467628;
  v18[4] = &v19;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(self, v12, v18, v13);
  objc_msgSend_appendString_(v20[5], v14, @"}>", v15);
  v16 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v16;
}

@end