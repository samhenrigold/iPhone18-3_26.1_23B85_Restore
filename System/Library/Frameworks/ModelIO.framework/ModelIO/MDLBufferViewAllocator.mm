@interface MDLBufferViewAllocator
- (MDLBufferViewAllocator)initWithCoder:(id)coder;
- (MDLBufferViewAllocator)initWithSharedRegionsNoCopy:(id)copy;
- (__IOSurface)_regionAtIndex:(int64_t)index;
- (__IOSurface)_regionAtIndex:(int64_t)index length:(int64_t)length offset:(int64_t)offset;
- (id).cxx_construct;
- (id)decodeBufferWithCoder:(id)coder forKey:(id)key;
- (id)decodeBuffersWithCoder:(id)coder forKey:(id)key;
- (id)newBufferViewAtRegionIndex:(int64_t)index;
- (id)newBufferViewAtRegionIndex:(int64_t)index length:(int64_t)length offset:(int64_t)offset;
- (void)dealloc;
- (void)encodeBuffer:(id)buffer withCoder:(id)coder forKey:(id)key;
- (void)encodeBuffers:(id)buffers withCoder:(id)coder forKey:(id)key;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MDLBufferViewAllocator

- (__IOSurface)_regionAtIndex:(int64_t)index
{
  if (index < 0)
  {
    NSLog(&cfstr_RegionindexMus.isa, a2);
  }

  else
  {
    begin = self->_regionIndices.__begin_;
    if (index >= (self->_regionIndices.__end_ - begin))
    {
      NSLog(&cfstr_RequestedRegio.isa, a2, index);
    }

    else
    {
      v4 = begin[index];
      result = self->_sharedRegions.__begin_[v4];
      if (result)
      {
        return result;
      }

      NSLog(&cfstr_RegionAtIndexL.isa, a2, v4);
    }
  }

  return 0;
}

- (__IOSurface)_regionAtIndex:(int64_t)index length:(int64_t)length offset:(int64_t)offset
{
  v15 = objc_msgSend__regionAtIndex_(self, a2, index, length, v8, v9, v10, v11, offset, v5, v6, v7);
  v16 = v15;
  if (v15)
  {
    if (length <= 0)
    {
      NSLog(&cfstr_LengthLdIsInva.isa, length);
      return 0;
    }

    if (offset < 0)
    {
      NSLog(&cfstr_OffsetLdIsInva.isa, offset);
      return 0;
    }

    AllocSize = IOSurfaceGetAllocSize(v15);
    if (offset + length > AllocSize)
    {
      NSLog(&cfstr_RequestedLengt.isa, length, offset, AllocSize, index);
      return 0;
    }
  }

  return v16;
}

- (MDLBufferViewAllocator)initWithSharedRegionsNoCopy:(id)copy
{
  v76 = *MEMORY[0x277D85DE8];
  copyCopy = copy;
  v74.receiver = self;
  v74.super_class = MDLBufferViewAllocator;
  v4 = [(MDLBufferViewAllocator *)&v74 init];
  if (!v4)
  {
    goto LABEL_31;
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v5 = copyCopy;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v70, v75, v10, v11, v12, v13, 16, v7, v8, v9);
  if (!v14)
  {
    goto LABEL_27;
  }

  v15 = 0;
  v67 = v5;
  v68 = *v71;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v71 != v68)
      {
        objc_enumerationMutation(v5);
      }

      v17 = *(*(&v70 + 1) + 8 * i);
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_12;
      }

      v18 = v17;
      if (!objc_msgSend_iosurface(v18, v19, v20, v21, v26, v27, v28, v29, v22, v23, v24, v25))
      {

LABEL_12:
        NSLog(&cfstr_WarningCannotF.isa, v15);
        v69 = -1;
        sub_239EA83F8(&v4->_regionIndices.__begin_, &v69);
        goto LABEL_25;
      }

      v41 = objc_msgSend_iosurface(v18, v30, v31, v32, v37, v38, v39, v40, v33, v34, v35, v36);
      end = v4->_sharedRegions.__end_;
      cap = v4->_sharedRegions.__cap_;
      if (end >= cap)
      {
        begin = v4->_sharedRegions.__begin_;
        v46 = end - begin;
        if ((v46 + 1) >> 61)
        {
          sub_239E797B4();
        }

        v47 = cap - begin;
        v48 = v47 >> 2;
        if (v47 >> 2 <= (v46 + 1))
        {
          v48 = v46 + 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF8)
        {
          v49 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        if (v49)
        {
          sub_239E7C684(&v4->_sharedRegions, v49);
        }

        v50 = (8 * v46);
        *v50 = v41;
        v44 = 8 * v46 + 8;
        v51 = v4->_sharedRegions.__begin_;
        v52 = v4->_sharedRegions.__end_ - v51;
        v53 = (v50 - v52);
        memcpy(v50 - v52, v51, v52);
        v54 = v4->_sharedRegions.__begin_;
        v4->_sharedRegions.__begin_ = v53;
        v4->_sharedRegions.__end_ = v44;
        v4->_sharedRegions.__cap_ = 0;
        if (v54)
        {
          operator delete(v54);
        }

        v5 = v67;
      }

      else
      {
        *end = v41;
        v44 = (end + 1);
      }

      v4->_sharedRegions.__end_ = v44;
      v69 = v15;
      sub_239EA83F8(&v4->_regionIndices.__begin_, &v69);

      v15 = (v15 + 1);
LABEL_25:
    }

    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v55, &v70, v75, v59, v60, v61, v62, 16, v56, v57, v58);
  }

  while (v14);
LABEL_27:

  if (v4->_sharedRegions.__end_ != v4->_sharedRegions.__begin_)
  {
    v63 = 0;
    do
    {
      LOBYTE(v69) = 0;
      sub_239EA84D8(&v4->_owned, &v69);
      ++v63;
    }

    while (v63 < v4->_sharedRegions.__end_ - v4->_sharedRegions.__begin_);
  }

  v64 = v4;
LABEL_31:

  return v4;
}

- (void)dealloc
{
  begin = self->_sharedRegions.__begin_;
  end = self->_sharedRegions.__end_;
  if (end != begin)
  {
    v5 = 0;
    do
    {
      v6 = self->_regionIndices.__begin_[v5];
      if ((*(self->_owned.__begin_ + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v6))
      {
        v7 = begin[v6];
        if (v7)
        {
          CFRelease(v7);
          begin = self->_sharedRegions.__begin_;
          end = self->_sharedRegions.__end_;
        }
      }

      ++v5;
    }

    while (v5 < end - begin);
  }

  v8.receiver = self;
  v8.super_class = MDLBufferViewAllocator;
  [(MDLBufferViewAllocator *)&v8 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_msgSend_encodeInteger_forKey_(coderCopy, v4, self->_sharedRegions.__end_ - self->_sharedRegions.__begin_, @"sharedRegions.count", v9, v10, v11, v12, v5, v6, v7, v8);
  if (self->_sharedRegions.__end_ != self->_sharedRegions.__begin_)
  {
    v23 = 0;
    do
    {
      v24 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"sharedRegions[%zu]", v14, v19, v20, v21, v22, v15, v16, v17, v18, v23);
      XPCObject = IOSurfaceCreateXPCObject(self->_sharedRegions.__begin_[v23]);
      v36 = objc_msgSend_stringByAppendingFormat_(v24, v26, @".iosurface", v27, v32, v33, v34, v35, v28, v29, v30, v31);
      objc_msgSend_encodeXPCObject_forKey_(coderCopy, v37, XPCObject, v36, v42, v43, v44, v45, v38, v39, v40, v41);

      ++v23;
    }

    while (v23 < self->_sharedRegions.__end_ - self->_sharedRegions.__begin_);
  }

  objc_msgSend_encodeInteger_forKey_(coderCopy, v13, self->_regionIndices.__end_ - self->_regionIndices.__begin_, @"regionIndices.count", v19, v20, v21, v22, v15, v16, v17, v18);
  if (self->_regionIndices.__end_ != self->_regionIndices.__begin_)
  {
    v56 = 0;
    do
    {
      v57 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v46, @"regionIndices[%zu]", v47, v52, v53, v54, v55, v48, v49, v50, v51, v56);
      objc_msgSend_encodeInteger_forKey_(coderCopy, v58, v56, v57, v63, v64, v65, v66, v59, v60, v61, v62);

      ++v56;
    }

    while (v56 < self->_regionIndices.__end_ - self->_regionIndices.__begin_);
  }
}

- (MDLBufferViewAllocator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v91.receiver = self;
  v91.super_class = MDLBufferViewAllocator;
  v11 = [(MDLBufferViewAllocator *)&v91 init];
  if (v11)
  {
    v22 = objc_msgSend_decodeIntegerForKey_(coderCopy, v5, @"sharedRegions.count", v6, v12, v13, v14, v15, v7, v8, v9, v10);
    if (v22 >= 1)
    {
      for (i = 0; i != v22; ++i)
      {
        v28 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"sharedRegions[%zu]", v17, v23, v24, v25, v26, v18, v19, v20, v21, i);
        v39 = objc_msgSend_stringByAppendingFormat_(v28, v29, @".iosurface", v30, v35, v36, v37, v38, v31, v32, v33, v34);
        v50 = objc_msgSend_decodeXPCObjectForKey_(coderCopy, v40, v39, v41, v46, v47, v48, v49, v42, v43, v44, v45);

        LOBYTE(v90) = 1;
        sub_239EA84D8(&v11->_owned, &v90);
        v51 = IOSurfaceLookupFromXPCObject(v50);
        end = v11->_sharedRegions.__end_;
        cap = v11->_sharedRegions.__cap_;
        if (end >= cap)
        {
          begin = v11->_sharedRegions.__begin_;
          v56 = end - begin;
          if ((v56 + 1) >> 61)
          {
            sub_239E797B4();
          }

          v57 = cap - begin;
          v58 = v57 >> 2;
          if (v57 >> 2 <= (v56 + 1))
          {
            v58 = v56 + 1;
          }

          if (v57 >= 0x7FFFFFFFFFFFFFF8)
          {
            v59 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v59 = v58;
          }

          if (v59)
          {
            sub_239E7C684(&v11->_sharedRegions, v59);
          }

          v60 = (8 * v56);
          *v60 = v51;
          v54 = 8 * v56 + 8;
          v61 = v11->_sharedRegions.__begin_;
          v62 = v11->_sharedRegions.__end_ - v61;
          v63 = (v60 - v62);
          memcpy(v60 - v62, v61, v62);
          v64 = v11->_sharedRegions.__begin_;
          v11->_sharedRegions.__begin_ = v63;
          v11->_sharedRegions.__end_ = v54;
          v11->_sharedRegions.__cap_ = 0;
          if (v64)
          {
            operator delete(v64);
          }
        }

        else
        {
          *end = v51;
          v54 = (end + 1);
        }

        v11->_sharedRegions.__end_ = v54;
      }
    }

    v71 = objc_msgSend_decodeIntegerForKey_(coderCopy, v16, @"regionIndices.count", v17, v23, v24, v25, v26, v18, v19, v20, v21);
    if (v71 >= 1)
    {
      for (j = 0; j != v71; ++j)
      {
        v77 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v65, @"regionIndices[%zu]", v66, v72, v73, v74, v75, v67, v68, v69, v70, j);
        v90 = objc_msgSend_decodeIntegerForKey_(coderCopy, v78, v77, v79, v84, v85, v86, v87, v80, v81, v82, v83);
        sub_239EA83F8(&v11->_regionIndices.__begin_, &v90);
      }
    }

    v88 = v11;
  }

  return v11;
}

- (id)newBufferViewAtRegionIndex:(int64_t)index length:(int64_t)length offset:(int64_t)offset
{
  result = objc_msgSend__regionAtIndex_length_offset_(self, a2, index, length, v8, v9, v10, v11, offset, v5, v6, v7);
  if (result)
  {
    BaseAddress = IOSurfaceGetBaseAddress(result);
    v18 = [MDLBufferView alloc];

    return objc_msgSend_initWithBytesNoCopy_length_offset_regionIndex_allocator_(v18, v19, BaseAddress, length, v21, v22, v23, v24, offset, index, self, v20);
  }

  return result;
}

- (id)newBufferViewAtRegionIndex:(int64_t)index
{
  result = objc_msgSend__regionAtIndex_(self, a2, index, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  if (result)
  {
    v15 = result;
    BaseAddress = IOSurfaceGetBaseAddress(result);
    AllocSize = IOSurfaceGetAllocSize(v15);
    v18 = [MDLBufferView alloc];

    return objc_msgSend_initWithBytesNoCopy_length_offset_regionIndex_allocator_(v18, v19, BaseAddress, AllocSize, v21, v22, v23, v24, 0, index, self, v20);
  }

  return result;
}

- (void)encodeBuffer:(id)buffer withCoder:(id)coder forKey:(id)key
{
  bufferCopy = buffer;
  coderCopy = coder;
  keyCopy = key;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = bufferCopy;
    v10 = v9[4];
    v21 = objc_msgSend_stringByAppendingString_(keyCopy, v11, @".regionIndex", v12, v17, v18, v19, v20, v13, v14, v15, v16);
    objc_msgSend_encodeInteger_forKey_(coderCopy, v22, v10, v21, v27, v28, v29, v30, v23, v24, v25, v26);

    v31 = v9[3];
    v42 = objc_msgSend_stringByAppendingString_(keyCopy, v32, @".offset", v33, v38, v39, v40, v41, v34, v35, v36, v37);
    objc_msgSend_encodeInteger_forKey_(coderCopy, v43, v31, v42, v48, v49, v50, v51, v44, v45, v46, v47);

    v52 = v9[2];
    v63 = objc_msgSend_stringByAppendingString_(keyCopy, v53, @".length", v54, v59, v60, v61, v62, v55, v56, v57, v58);
    objc_msgSend_encodeInteger_forKey_(coderCopy, v64, v52, v63, v69, v70, v71, v72, v65, v66, v67, v68);
  }
}

- (void)encodeBuffers:(id)buffers withCoder:(id)coder forKey:(id)key
{
  buffersCopy = buffers;
  coderCopy = coder;
  keyCopy = key;
  v20 = objc_msgSend_count(buffersCopy, v9, v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v31 = objc_msgSend_stringByAppendingString_(keyCopy, v21, @".count", v22, v27, v28, v29, v30, v23, v24, v25, v26);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v32, v20, v31, v37, v38, v39, v40, v33, v34, v35, v36);

  for (i = 0; i < objc_msgSend_count(buffersCopy, v41, v42, v43, v48, v49, v50, v51, v44, v45, v46, v47); ++i)
  {
    v63 = objc_msgSend_stringByAppendingFormat_(keyCopy, v53, @"[%ld]", v54, v59, v60, v61, v62, v55, v56, v57, v58, i);
    v74 = objc_msgSend_objectAtIndexedSubscript_(buffersCopy, v64, i, v65, v70, v71, v72, v73, v66, v67, v68, v69);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v86 = objc_msgSend_objectAtIndexedSubscript_(buffersCopy, v76, i, v77, v82, v83, v84, v85, v78, v79, v80, v81);
      v87 = v86[4];
      v98 = objc_msgSend_stringByAppendingString_(v63, v88, @".regionIndex", v89, v94, v95, v96, v97, v90, v91, v92, v93);
      objc_msgSend_encodeInteger_forKey_(coderCopy, v99, v87, v98, v104, v105, v106, v107, v100, v101, v102, v103);

      v108 = v86[3];
      v119 = objc_msgSend_stringByAppendingString_(v63, v109, @".offset", v110, v115, v116, v117, v118, v111, v112, v113, v114);
      objc_msgSend_encodeInteger_forKey_(coderCopy, v120, v108, v119, v125, v126, v127, v128, v121, v122, v123, v124);

      v129 = v86[2];
      v140 = objc_msgSend_stringByAppendingString_(v63, v130, @".length", v131, v136, v137, v138, v139, v132, v133, v134, v135);
      objc_msgSend_encodeInteger_forKey_(coderCopy, v141, v129, v140, v146, v147, v148, v149, v142, v143, v144, v145);
    }
  }
}

- (id)decodeBuffersWithCoder:(id)coder forKey:(id)key
{
  coderCopy = coder;
  keyCopy = key;
  v18 = objc_msgSend_stringByAppendingString_(keyCopy, v8, @".count", v9, v14, v15, v16, v17, v10, v11, v12, v13);
  v29 = objc_msgSend_decodeIntegerForKey_(coderCopy, v19, v18, v20, v25, v26, v27, v28, v21, v22, v23, v24);

  v30 = objc_alloc(MEMORY[0x277CBEB18]);
  v47 = objc_msgSend_initWithCapacity_(v30, v31, v29, v32, v37, v38, v39, v40, v33, v34, v35, v36);
  if (v29 >= 1)
  {
    for (i = 0; i != v29; ++i)
    {
      v53 = objc_msgSend_stringByAppendingFormat_(keyCopy, v41, @"[%ld]", v42, v48, v49, v50, v51, v43, v44, v45, v46, i);
      v54 = objc_alloc_init(MDLBufferView);
      v65 = objc_msgSend_stringByAppendingString_(v53, v55, @".regionIndex", v56, v61, v62, v63, v64, v57, v58, v59, v60);
      v54->_regionIndex = objc_msgSend_decodeIntegerForKey_(coderCopy, v66, v65, v67, v72, v73, v74, v75, v68, v69, v70, v71);

      v54->_data = IOSurfaceGetBaseAddress(self->_sharedRegions.__begin_[self->_regionIndices.__begin_[v54->_regionIndex]]);
      v86 = objc_msgSend_stringByAppendingString_(v53, v76, @".offset", v77, v82, v83, v84, v85, v78, v79, v80, v81);
      v54->_offset = objc_msgSend_decodeIntegerForKey_(coderCopy, v87, v86, v88, v93, v94, v95, v96, v89, v90, v91, v92);

      v107 = objc_msgSend_stringByAppendingString_(v53, v97, @".length", v98, v103, v104, v105, v106, v99, v100, v101, v102);
      v54->_length = objc_msgSend_decodeIntegerForKey_(coderCopy, v108, v107, v109, v114, v115, v116, v117, v110, v111, v112, v113);

      objc_storeStrong(&v54->_allocator, self);
      objc_msgSend_addObject_(v47, v118, v54, v119, v124, v125, v126, v127, v120, v121, v122, v123);
    }
  }

  return v47;
}

- (id)decodeBufferWithCoder:(id)coder forKey:(id)key
{
  coderCopy = coder;
  keyCopy = key;
  v8 = objc_alloc_init(MDLMeshBufferView);
  v19 = objc_msgSend_stringByAppendingString_(keyCopy, v9, @".regionIndex", v10, v15, v16, v17, v18, v11, v12, v13, v14);
  v8->super._regionIndex = objc_msgSend_decodeIntegerForKey_(coderCopy, v20, v19, v21, v26, v27, v28, v29, v22, v23, v24, v25);

  regionIndex = v8->super._regionIndex;
  if ((regionIndex & 0x8000000000000000) != 0 || (begin = self->_regionIndices.__begin_, regionIndex >= self->_regionIndices.__end_ - begin) || (v32 = begin[regionIndex], (v32 & 0x8000000000000000) != 0) || (v33 = self->_sharedRegions.__begin_, v32 >= self->_sharedRegions.__end_ - v33))
  {
    v8->super._data = 0;
    v8->super._length = 0;
    v8->super._offset = 0;
    allocator = v8->super._allocator;
    v8->super._allocator = 0;
  }

  else
  {
    v8->super._data = IOSurfaceGetBaseAddress(v33[v32]);
    v44 = objc_msgSend_stringByAppendingString_(keyCopy, v34, @".offset", v35, v40, v41, v42, v43, v36, v37, v38, v39);
    v8->super._offset = objc_msgSend_decodeIntegerForKey_(coderCopy, v45, v44, v46, v51, v52, v53, v54, v47, v48, v49, v50);

    v65 = objc_msgSend_stringByAppendingString_(keyCopy, v55, @".length", v56, v61, v62, v63, v64, v57, v58, v59, v60);
    v8->super._length = objc_msgSend_decodeIntegerForKey_(coderCopy, v66, v65, v67, v72, v73, v74, v75, v68, v69, v70, v71);

    selfCopy = self;
    allocator = v8->super._allocator;
    v8->super._allocator = selfCopy;
  }

  return v8;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end