@interface APContentDepiction
- (APContentDepiction)init;
- (APContentDepiction)initWithCoder:(id)coder;
- (id)init:(unint64_t)init adjacency:(unint64_t)adjacency language:(id)language locale:(id)locale searchTerm:(id)term keywords:(id)keywords categories:(id)categories;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APContentDepiction

- (APContentDepiction)init
{
  v8.receiver = self;
  v8.super_class = APContentDepiction;
  v4 = [(APContentDepiction *)&v8 init];
  if (v4)
  {
    v5 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v2, v3);
    identifier = v4->_identifier;
    v4->_identifier = v5;
  }

  return v4;
}

- (id)init:(unint64_t)init adjacency:(unint64_t)adjacency language:(id)language locale:(id)locale searchTerm:(id)term keywords:(id)keywords categories:(id)categories
{
  languageCopy = language;
  localeCopy = locale;
  termCopy = term;
  keywordsCopy = keywords;
  categoriesCopy = categories;
  v20 = objc_msgSend_init(self, v18, v19);
  v21 = v20;
  if (v20)
  {
    *(v20 + 16) = init;
    *(v20 + 24) = adjacency;
    objc_storeStrong((v20 + 32), language);
    objc_storeStrong(v21 + 5, locale);
    objc_storeStrong(v21 + 6, term);
    objc_storeStrong(v21 + 7, keywords);
    objc_storeStrong(v21 + 8, categories);
  }

  return v21;
}

- (APContentDepiction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v35.receiver = self;
  v35.super_class = APContentDepiction;
  v5 = [(APContentDepiction *)&v35 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"identifier");
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v5->_placement = objc_msgSend_decodeIntForKey_(coderCopy, v10, @"placement");
    v5->_adjacency = objc_msgSend_decodeIntForKey_(coderCopy, v11, @"adjacency");
    v12 = objc_opt_class();
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v13, v12, @"language");
    language = v5->_language;
    v5->_language = v14;

    v16 = objc_opt_class();
    v18 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v17, v16, @"locale");
    locale = v5->_locale;
    v5->_locale = v18;

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v24 = objc_msgSend_setWithObjects_(v20, v23, v21, v22, 0);
    v26 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v25, v24, @"searchTerms");
    searchTerms = v5->_searchTerms;
    v5->_searchTerms = v26;

    v29 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v28, v24, @"keywords");
    keywords = v5->_keywords;
    v5->_keywords = v29;

    v32 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v31, v24, @"categories");
    categories = v5->_categories;
    v5->_categories = v32;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = objc_msgSend_identifier(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"identifier");

  v11 = objc_msgSend_placement(self, v9, v10);
  objc_msgSend_encodeInt_forKey_(coderCopy, v12, v11, @"placement");
  v15 = objc_msgSend_adjacency(self, v13, v14);
  objc_msgSend_encodeInt_forKey_(coderCopy, v16, v15, @"adjacency");
  v19 = objc_msgSend_language(self, v17, v18);
  objc_msgSend_encodeObject_forKey_(coderCopy, v20, v19, @"language");

  v23 = objc_msgSend_locale(self, v21, v22);
  objc_msgSend_encodeObject_forKey_(coderCopy, v24, v23, @"locale");

  v27 = objc_msgSend_searchTerms(self, v25, v26);
  objc_msgSend_encodeObject_forKey_(coderCopy, v28, v27, @"searchTerms");

  v31 = objc_msgSend_keywords(self, v29, v30);
  objc_msgSend_encodeObject_forKey_(coderCopy, v32, v31, @"keywords");

  v36 = objc_msgSend_categories(self, v33, v34);
  objc_msgSend_encodeObject_forKey_(coderCopy, v35, v36, @"categories");
}

@end