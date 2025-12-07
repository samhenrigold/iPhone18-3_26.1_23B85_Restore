@interface TSTMergeRegionMap
- (id).cxx_construct;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSTMergeRegionMap

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[102], v5);

  if (*(v6 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = sub_22112397C(*(*(v6 + 32) + 8 * v7 + 8));
      v10 = v9;
      p_mergedRects = &self->_mergedRects;
      end = self->_mergedRects.__end_;
      cap = self->_mergedRects.__cap_;
      if (end >= cap)
      {
        v15 = end - p_mergedRects->__begin_;
        v16 = v15 + 1;
        if ((v15 + 1) >> 60)
        {
          sub_22107C148();
        }

        v17 = cap - p_mergedRects->__begin_;
        if (v17 >> 3 > v16)
        {
          v16 = v17 >> 3;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF0)
        {
          v18 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          sub_221086F74(&self->_mergedRects, v18);
        }

        v19 = (16 * v15);
        *v19 = v8;
        v19[1] = v10;
        v14 = (16 * v15 + 16);
        v20 = self->_mergedRects.__end_ - self->_mergedRects.__begin_;
        v21 = (16 * v15 - v20);
        memcpy(v21, p_mergedRects->__begin_, v20);
        begin = p_mergedRects->__begin_;
        p_mergedRects->__begin_ = v21;
        self->_mergedRects.__end_ = v14;
        self->_mergedRects.__cap_ = 0;
        if (begin)
        {
          operator delete(begin);
        }
      }

      else
      {
        end->origin = v8;
        end->size = v9;
        v14 = end + 1;
      }

      self->_mergedRects.__end_ = v14;
      ++v7;
    }

    while (v7 < *(v6 + 24));
  }
}

- (void)saveToArchiver:(id)archiver
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTMergeRegionMap saveToArchiver:]", v3);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTMergeRegionMap.mm", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 38, 0, "this should never be called!");

  v13 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v13, v10, v11, v12);
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 8) = 0;
  return self;
}

@end