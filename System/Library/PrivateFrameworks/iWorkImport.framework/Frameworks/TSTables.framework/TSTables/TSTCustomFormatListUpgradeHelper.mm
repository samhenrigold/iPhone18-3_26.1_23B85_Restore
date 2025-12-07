@interface TSTCustomFormatListUpgradeHelper
+ (id)upgradedCustomFormatList:(id)list;
@end

@implementation TSTCustomFormatListUpgradeHelper

+ (id)upgradedCustomFormatList:(id)list
{
  listCopy = list;
  v4 = objc_alloc(MEMORY[0x277D80648]);
  v8 = objc_msgSend_context(listCopy, v5, v6, v7);
  v11 = objc_msgSend_initWithContext_(v4, v9, v8, v10);

  objc_msgSend_setUpgrading_(v11, v12, 1, v13);
  objc_opt_class();
  v14 = TSUCheckedDynamicCast();

  if (objc_msgSend_count(v14, v15, v16, v17))
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_22126AAF4;
    v23[3] = &unk_278462028;
    v24 = v11;
    objc_msgSend_enumerateLegacyCustomFormatsUsingBlock_(v14, v20, v23, v21);
  }

  objc_msgSend_setUpgrading_(v11, v18, 0, v19);

  return v11;
}

@end