@interface TSAPdfTaggerTextColumnContext
- (TSAPdfTaggerTextColumnContext)initWithStateOfTagger:(id)tagger column:(id)column limitSelection:(id)selection;
- (TSAPdfTaggerTextColumnOwnerContext)textColumnOwner;
- (TSWPColumn)column;
- (TSWPSelection)limitSelection;
- (_NSRange)range;
@end

@implementation TSAPdfTaggerTextColumnContext

- (TSAPdfTaggerTextColumnContext)initWithStateOfTagger:(id)tagger column:(id)column limitSelection:(id)selection
{
  taggerCopy = tagger;
  columnCopy = column;
  selectionCopy = selection;
  v54.receiver = self;
  v54.super_class = TSAPdfTaggerTextColumnContext;
  v14 = [(TSAPdfTaggerContext *)&v54 initWithStateOfTagger:taggerCopy];
  if (!v14)
  {
    goto LABEL_31;
  }

  v15 = objc_msgSend_topOfContextStack(taggerCopy, v11, v12, v13);
  objc_storeWeak(&v14->_textColumnOwner, v15);

  WeakRetained = objc_loadWeakRetained(&v14->_textColumnOwner);
  objc_opt_class();
  LOBYTE(v15) = objc_opt_isKindOfClass();

  if ((v15 & 1) == 0)
  {
    sub_2760CB2EC(0, "The parent of a column must be a column owner");
  }

  objc_storeWeak(&v14->_column, columnCopy);
  objc_storeWeak(&v14->_limitSelection, selectionCopy);
  v23 = objc_msgSend_range(columnCopy, v17, v18, v19);
  p_range = &v14->_range;
  v14->_range.location = v23;
  v14->_range.length = v20;
  if (selectionCopy)
  {
    v25 = objc_msgSend_range(columnCopy, v20, v21, v22);
    v27 = v26;
    v55.location = objc_msgSend_superRange(selectionCopy, v26, v28, v29);
    location = v55.location;
    length = v55.length;
    v56.location = v25;
    v56.length = v27;
    v32 = NSIntersectionRange(v55, v56);
    v20 = v32.length;
    if (length)
    {
      v33 = v32.length;
      if (!v32.length)
      {
        v34 = 0;
        v23 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_25;
      }

      location = v32.location;
    }

    else
    {
      v23 = 0x7FFFFFFFFFFFFFFFLL;
      if (location < v25)
      {
LABEL_12:
        v34 = 0;
        goto LABEL_25;
      }

      v34 = 0;
      if (location - v25 >= v27)
      {
LABEL_25:
        *p_range = v23;
        v14->_range.length = v34;
        goto LABEL_26;
      }

      v33 = 0;
    }

    v23 = 0x7FFFFFFFFFFFFFFFLL;
    if (location != 0x7FFFFFFFFFFFFFFFLL)
    {
      v35 = 0;
      v38 = objc_msgSend_lineCount(columnCopy, v32.length, v21, v22);
      if (v38)
      {
        while (1)
        {
          v23 = objc_msgSend_rangeOfLineFragmentAtIndex_(columnCopy, v36, v35, v37);
          if (location >= v23 && location - v23 < v36)
          {
            break;
          }

          if (v38 == ++v35)
          {
            v23 = 0x7FFFFFFFFFFFFFFFLL;
            v35 = v38;
            break;
          }
        }
      }

      v52 = v33;
      sub_2760CB2EC(v23 != 0x7FFFFFFFFFFFFFFFLL, "Range start couldn't be found");
      v41 = 0x7FFFFFFFFFFFFFFFLL;
      if (v35 < v38)
      {
        v42 = location + v52;
        while (1)
        {
          v43 = objc_msgSend_rangeOfLineFragmentAtIndex_(columnCopy, v39, v35, v40);
          v41 = &v39[v43];
          if (v42 <= &v39[v43])
          {
            break;
          }

          if (v38 == ++v35)
          {
            v41 = 0x7FFFFFFFFFFFFFFFLL;
            break;
          }
        }
      }

      sub_2760CB2EC(v41 != 0x7FFFFFFFFFFFFFFFLL, "Range end couldn't be found");
      v34 = v41 - v23;
      goto LABEL_25;
    }

    goto LABEL_12;
  }

LABEL_26:
  if (v23 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v44 = objc_msgSend_storage(columnCopy, v20, v21, v22);
    v46 = v44;
    if (v44)
    {
      objc_msgSend_paragraphEnumeratorForCharRange_styleProvider_requireHidden_(v44, v45, *p_range, v14->_range.length, 0, 1);
      storage = obj._storage;
    }

    else
    {
      storage = 0;
      memset(&obj, 0, sizeof(obj));
    }

    objc_storeStrong(&v14->_paragraphEnumerator._storage, storage);
    objc_storeStrong(&v14->_paragraphEnumerator._styleProvider, obj._styleProvider);
    v48 = *&obj._parIndex;
    v49 = *&obj._firstParIndex;
    v50 = *&obj._requireHidden;
    v14->_paragraphEnumerator._currentTextRange.length = obj._currentTextRange.length;
    *&v14->_paragraphEnumerator._firstParIndex = v49;
    *&v14->_paragraphEnumerator._requireHidden = v50;
    *&v14->_paragraphEnumerator._parIndex = v48;
    TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&obj);
  }

LABEL_31:

  return v14;
}

- (TSAPdfTaggerTextColumnOwnerContext)textColumnOwner
{
  WeakRetained = objc_loadWeakRetained(&self->_textColumnOwner);

  return WeakRetained;
}

- (TSWPColumn)column
{
  WeakRetained = objc_loadWeakRetained(&self->_column);

  return WeakRetained;
}

- (TSWPSelection)limitSelection
{
  WeakRetained = objc_loadWeakRetained(&self->_limitSelection);

  return WeakRetained;
}

- (_NSRange)range
{
  p_range = &self->_range;
  location = self->_range.location;
  length = p_range->length;
  result.length = length;
  result.location = location;
  return result;
}

@end