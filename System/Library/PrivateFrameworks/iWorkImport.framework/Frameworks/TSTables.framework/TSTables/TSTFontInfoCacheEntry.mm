@interface TSTFontInfoCacheEntry
- (TSTFontInfoCacheEntry)initWithTextMeasurerBundle:(id)bundle;
- (double)heightForString:(id)string width:(double)width outFitWidth:(double *)fitWidth;
- (id).cxx_construct;
@end

@implementation TSTFontInfoCacheEntry

- (TSTFontInfoCacheEntry)initWithTextMeasurerBundle:(id)bundle
{
  bundleCopy = bundle;
  v16.receiver = self;
  v16.super_class = TSTFontInfoCacheEntry;
  v6 = [(TSTFontInfoCacheEntry *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_textMeasurerBundle, bundle);
    for (i = 0; i != 8; ++i)
    {
      v7->_lock[i]._os_unfair_lock_opaque = 0;
      v12 = objc_msgSend_array(MEMORY[0x277CBEB18], v8, v9, v10);
      v13 = &v7->super.isa + i;
      v14 = v13[85];
      v13[85] = v12;
    }

    __dmb(0xBu);
  }

  return v7;
}

- (double)heightForString:(id)string width:(double)width outFitWidth:(double *)fitWidth
{
  if (!objc_msgSend_length(string, a2, string, fitWidth))
  {
    return 0.0;
  }

  v11 = objc_msgSend_characterAtIndex_(string, v9, 0, v10) & 7;
  stringCopy = string;
  widthCopy = width;
  v12 = (self + 4 * v11);
  os_unfair_lock_lock(v12 + 2);
  v13 = self + 40 * v11;
  v25 = &stringCopy;
  v14 = sub_221406B40(v13 + 5, &stringCopy, &unk_2217E1BCC, &v25)[4];
  if (fitWidth)
  {
    v25 = &stringCopy;
    *fitWidth = sub_221406B40(&self->_dupContentEntryToWidthCache[v11].__table_.__bucket_list_.__ptr_, &stringCopy, &unk_2217E1BCC, &v25)[4];
    os_unfair_lock_unlock(v12 + 2);
    v16 = *fitWidth <= 0.0;
  }

  else
  {
    os_unfair_lock_unlock(v12 + 2);
    v16 = 0;
  }

  if (v14 <= 0.0 || v16)
  {
    objc_msgSend_heightForString_textMeasurerBundle_width_outFitWidth_(MEMORY[0x277D80F78], v15, string, self->_textMeasurerBundle, fitWidth, width);
    v14 = v18;
    os_unfair_lock_lock(v12 + 2);
    v25 = &stringCopy;
    sub_221406B40(v13 + 5, &stringCopy, &unk_2217E1BCC, &v25)[4] = v14;
    if (fitWidth)
    {
      v21 = *fitWidth;
      v25 = &stringCopy;
      *(sub_221406B40(&self->_dupContentEntryToWidthCache[v11].__table_.__bucket_list_.__ptr_, &stringCopy, &unk_2217E1BCC, &v25) + 4) = v21;
    }

    objc_msgSend_addObject_(self->_strongReferences[v11], v19, stringCopy, v20, stringCopy, *&widthCopy);
    os_unfair_lock_unlock(v12 + 2);
  }

  return v14;
}

- (id).cxx_construct
{
  for (i = 0; i != 320; i += 40)
  {
    v3 = self + i;
    *(v3 + 56) = 0uLL;
    *(v3 + 40) = 0uLL;
    *(v3 + 18) = 1065353216;
  }

  for (j = 0; j != 320; j += 40)
  {
    v5 = self + j + 360;
    *v5 = 0uLL;
    v5[1] = 0uLL;
    *(self + j + 392) = 1065353216;
  }

  return self;
}

@end