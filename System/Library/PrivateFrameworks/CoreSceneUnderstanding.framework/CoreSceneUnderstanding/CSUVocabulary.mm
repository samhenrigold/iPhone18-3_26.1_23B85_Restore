@interface CSUVocabulary
- (CSUVocabulary)initWithName:(id)name labelFilePath:(id)path internalCount:(unint64_t)count visibleCount:(unint64_t)visibleCount startIndex:(unint64_t)index;
- (NSArray)labels;
- (id).cxx_construct;
- (void)_enumerateAllLabelsInVocabularyUsingBlock:(id)block;
- (void)_enumerateVisibleLabelsAndIndicesInVocabularyUsingBlock:(id)block;
- (void)_enumerateVisibleLabelsInVocabularyUsingBlock:(id)block;
@end

@implementation CSUVocabulary

- (CSUVocabulary)initWithName:(id)name labelFilePath:(id)path internalCount:(unint64_t)count visibleCount:(unint64_t)visibleCount startIndex:(unint64_t)index
{
  nameCopy = name;
  pathCopy = path;
  v20.receiver = self;
  v20.super_class = CSUVocabulary;
  v15 = [(CSUVocabulary *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, name);
    v16->_count = visibleCount;
    v16->_internalCount = count;
    v16->_startIndex = index;
    labels = v16->_labels;
    v16->_labels = 0;

    objc_storeStrong(&v16->_labelFilePath, path);
    sub_1AC08B318(&v16->_visibleLabels, visibleCount);
    v18 = v16;
  }

  return v16;
}

- (NSArray)labels
{
  v45 = *MEMORY[0x1E69E9840];
  labels = self->_labels;
  if (labels)
  {
LABEL_17:
    v29 = labels;
    goto LABEL_18;
  }

  v6 = MEMORY[0x1E695DEC8];
  v7 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], a2, self->_labelFilePath, v2, v3);
  v10 = objc_msgSend_arrayWithContentsOfURL_error_(v6, v8, v7, 0, v9);
  v11 = self->_labels;
  self->_labels = v10;

  v15 = self->_labels;
  if (v15)
  {
    v43 = 0;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v16 = v15;
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v38, v44, 16);
    if (v22)
    {
      v23 = *v39;
      do
      {
        v24 = 0;
        do
        {
          if (*v39 != v23)
          {
            objc_enumerationMutation(v16);
          }

          v42 = *(*(&v38 + 1) + 8 * v24);
          if (objc_msgSend_length(v42, v18, v19, v20, v21) && (objc_msgSend_hasPrefix_(v42, v18, @"CVML_UNKNOWN", v20, v21) & 1) == 0)
          {
            end = self->_visibleLabels.__end_;
            if (end < self->_visibleLabels.__cap_)
            {
              v25 = v42;
              v26 = v43;
              *end = v25;
              end[1] = v26;
              v27 = end + 2;
            }

            else
            {
              v27 = sub_1AC08CDC0(&self->_visibleLabels, &v42, &v43);
            }

            self->_visibleLabels.__end_ = v27;
          }

          ++v43;
          ++v24;
        }

        while (v22 != v24);
        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v38, v44, 16);
      }

      while (v22);
    }

    labels = self->_labels;
    goto LABEL_17;
  }

  v31 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, @"Failed to load labels for vocabulary %@ from file at %@", v13, v14, self->_name, self->_labelFilePath);
  v34 = objc_msgSend_errorWithCode_message_(CSUError, v32, 2, v31, v33);
  objc_msgSend_logInternalError_(CSUError, v35, v34, v36, v37);

  v29 = 0;
LABEL_18:

  return v29;
}

- (void)_enumerateAllLabelsInVocabularyUsingBlock:(id)block
{
  blockCopy = block;
  v24 = 0;
  v9 = objc_msgSend_labels(self, v5, v6, v7, v8);

  if (v9)
  {
    v14 = objc_msgSend_labels(self, v10, v11, v12, v13);
    v19 = objc_msgSend_count(v14, v15, v16, v17, v18);

    if (v19)
    {
      v20 = 0;
      begin = self->_visibleLabels.__begin_;
      v22 = v19 - 1;
      do
      {
        if (v20 == begin[1])
        {
          blockCopy[2](blockCopy, *begin, &v24);
          begin += 2;
        }

        else
        {
          blockCopy[2](blockCopy, 0, &v24);
        }

        if (v24)
        {
          break;
        }
      }

      while (v22 != v20++);
    }
  }
}

- (void)_enumerateVisibleLabelsInVocabularyUsingBlock:(id)block
{
  blockCopy = block;
  v14 = 0;
  v9 = objc_msgSend_labels(self, v5, v6, v7, v8);

  if (v9)
  {
    begin = self->_visibleLabels.__begin_;
    end = self->_visibleLabels.__end_;
    if (begin != end)
    {
      v12 = begin + 16;
      do
      {
        blockCopy[2](blockCopy, *(v12 - 2), &v14);
        if (v14)
        {
          break;
        }

        v13 = v12 == end;
        v12 += 16;
      }

      while (!v13);
    }
  }
}

- (void)_enumerateVisibleLabelsAndIndicesInVocabularyUsingBlock:(id)block
{
  blockCopy = block;
  v12 = 0;
  v9 = objc_msgSend_labels(self, v5, v6, v7, v8);

  if (v9)
  {
    begin = self->_visibleLabels.__begin_;
    for (i = self->_visibleLabels.__end_; begin != i; begin += 2)
    {
      (*(blockCopy + 2))(blockCopy, *begin, begin[1], &v12);
      if (v12)
      {
        break;
      }
    }
  }
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

@end