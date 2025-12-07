@interface BLMediaQuery
+ (MPMediaQuery)audiobooksNonPreordersQuery;
+ (MPMediaQuery)audiobooksQuery;
@end

@implementation BLMediaQuery

+ (MPMediaQuery)audiobooksQuery
{
  v2 = sub_241D0E308();

  return objc_msgSend_audiobooksQuery(v2, v3, v4);
}

+ (MPMediaQuery)audiobooksNonPreordersQuery
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = sub_241D0E308();
  v5 = objc_msgSend_audiobooksQuery(v2, v3, v4);
  v6 = sub_241D11960();
  v7 = *MEMORY[0x277CD57A8];
  if (objc_msgSend_canFilterByProperty_(v6, v8, *MEMORY[0x277CD57A8]) & 1) != 0 || (v9 = sub_241D11A98(), (objc_msgSend_canFilterByProperty_(v9, v10, v7)))
  {
    v11 = sub_241D11BD0();
    v13 = objc_msgSend_predicateWithValue_forProperty_(v11, v12, &unk_2853E1F90, v7);
    objc_msgSend_addFilterPredicate_(v5, v14, v13);
  }

  else
  {
    v15 = BLDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = v7;
      _os_log_impl(&dword_241D0D000, v15, OS_LOG_TYPE_ERROR, "MPMediaPropertyPredicate cannot filter using the %@ property.", &v17, 0xCu);
    }
  }

  return v5;
}

@end