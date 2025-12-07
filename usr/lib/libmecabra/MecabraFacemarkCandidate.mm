@interface MecabraFacemarkCandidate
+ (id)candidateWithString:(id)string category:(id)category;
+ (id)copyFacemarkCandidatesForLanguage:(int)language;
+ (id)copyFacemarkCandidatesForLocale:(id)locale;
- (MecabraFacemarkCandidate)initWithString:(id)string category:(id)category;
- (void)dealloc;
@end

@implementation MecabraFacemarkCandidate

- (MecabraFacemarkCandidate)initWithString:(id)string category:(id)category
{
  v14.receiver = self;
  v14.super_class = MecabraFacemarkCandidate;
  v6 = [(MecabraFacemarkCandidate *)&v14 init];
  v6->_string = objc_msgSend_copy(string, v7, v8, v9);
  v6->_category = objc_msgSend_copy(category, v10, v11, v12);
  return v6;
}

+ (id)candidateWithString:(id)string category:(id)category
{
  v6 = [self alloc];
  v8 = objc_msgSend_initWithString_category_(v6, v7, string, category);

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MecabraFacemarkCandidate;
  [(MecabraFacemarkCandidate *)&v3 dealloc];
}

+ (id)copyFacemarkCandidatesForLocale:(id)locale
{
  v4 = sub_29927733C(locale);

  return MEMORY[0x2A1C70FE8](self, sel_copyFacemarkCandidatesForLanguage_, v4, v5);
}

+ (id)copyFacemarkCandidatesForLanguage:(int)language
{
  v38 = *MEMORY[0x29EDCA608];
  if ((language - 1) < 2 || language == 5)
  {
    languageCopy = 3;
  }

  else
  {
    languageCopy = language;
  }

  v5 = sub_29936C2B8();
  v6 = sub_29936C350(v5, languageCopy, off_2A145F738[0], off_2A145F698[0]);
  v8 = MEMORY[0x29EDB8D80];
  if (*(v6 + 23) >= 0)
  {
    v9 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x29EDBA0F8], v7, v6, 4);
  }

  else
  {
    v9 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x29EDBA0F8], v7, *v6, 4);
  }

  v12 = objc_msgSend_arrayWithContentsOfFile_(v8, v10, v9, v11);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v33, v37, 16);
  if (v16)
  {
    v19 = v16;
    v20 = *v34;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(v13);
        }

        v22 = *(*(&v33 + 1) + 8 * i);
        v23 = objc_msgSend_objectForKey_(v22, v17, @"string", v18);
        v26 = objc_msgSend_objectForKey_(v22, v24, @"category", v25);
        v27 = [MecabraFacemarkCandidate alloc];
        v29 = objc_msgSend_initWithString_category_(v27, v28, v23, v26);
        objc_msgSend_addObject_(v14, v30, v29, v31);
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v17, &v33, v37, 16);
    }

    while (v19);
  }

  return v14;
}

@end