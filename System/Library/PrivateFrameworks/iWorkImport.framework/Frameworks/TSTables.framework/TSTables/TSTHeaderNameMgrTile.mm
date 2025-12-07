@interface TSTHeaderNameMgrTile
+ (id)medianStringFromArray:(id)array;
- (TSTHeaderNameMgrTile)initWithHeaderNameMgr:(id)mgr context:(id)context;
- (id).cxx_construct;
- (id)splitTile;
- (void)createFragmentEntryForString:(id)string createIfMissingUsingPrecedentCoord:(const TSUCellCoord *)coord;
- (void)dealloc;
- (void)fragmentEntryForString:(id)string;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)unpackAfterUnarchive:(id)unarchive;
@end

@implementation TSTHeaderNameMgrTile

- (TSTHeaderNameMgrTile)initWithHeaderNameMgr:(id)mgr context:(id)context
{
  v6.receiver = self;
  v6.super_class = TSTHeaderNameMgrTile;
  result = [(TSTHeaderNameMgrTile *)&v6 initWithContext:context];
  if (result)
  {
    result->_headerNameMgr = mgr;
    result->_tileLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return result;
}

- (void)dealloc
{
  p_nameFragmentToEntry = &self->_nameFragmentToEntry;
  p_end_node = &self->_nameFragmentToEntry.__tree_.__end_node_;
  begin_node = self->_nameFragmentToEntry.__tree_.__begin_node_;
  if (begin_node != &self->_nameFragmentToEntry.__tree_.__end_node_)
  {
    do
    {
      left = begin_node[5].__left_;
      if (left)
      {

        sub_2212796F0((left + 2), left[3]);
        MEMORY[0x223DA1450](left, 0x10A0C409E7DBB34);
      }

      v7 = begin_node[1].__left_;
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = v7->__left_;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = begin_node[2].__left_;
          v9 = v8->__left_ == begin_node;
          begin_node = v8;
        }

        while (!v9);
      }

      begin_node = v8;
    }

    while (v8 != p_end_node);
  }

  sub_2214115BC(p_nameFragmentToEntry, p_nameFragmentToEntry->__tree_.__end_node_.__left_);
  p_nameFragmentToEntry->__tree_.__begin_node_ = p_end_node;
  p_nameFragmentToEntry->__tree_.__end_node_.__left_ = 0;
  p_nameFragmentToEntry->__tree_.__size_ = 0;
  v10.receiver = self;
  v10.super_class = TSTHeaderNameMgrTile;
  [(TSTHeaderNameMgrTile *)&v10 dealloc];
}

+ (id)medianStringFromArray:(id)array
{
  arrayCopy = array;
  if (objc_msgSend_count(arrayCopy, v4, v5, v6))
  {
    v9 = objc_msgSend_sortedArrayUsingSelector_(arrayCopy, v7, sel_compare_, v8);
    v13 = objc_msgSend_count(arrayCopy, v10, v11, v12);
    v16 = objc_msgSend_objectAtIndex_(arrayCopy, v14, v13 >> 1, v15);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[310], v5);

  v9 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v7, *(v6 + 48) & 0xFFFFFFFFFFFFFFFELL, v8);
  firstFragment = self->_firstFragment;
  self->_firstFragment = v9;

  v13 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v11, *(v6 + 56) & 0xFFFFFFFFFFFFFFFELL, v12);
  lastFragment = self->_lastFragment;
  self->_lastFragment = v13;

  if (*(v6 + 32) >= 1)
  {
    v17 = *(*(v6 + 40) + 8);
    v25[0] = 0;
    v25[1] = 0;
    v24 = v25;
    v18 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v15, v17[3] & 0xFFFFFFFFFFFFFFFELL, v16, unarchiverCopy);
    v22 = 0;
    v23 = v18;
    if (v17[4])
    {
      v19 = v17[4];
    }

    else
    {
      v19 = &TSCE::_CellCoordinateArchive_default_instance_;
    }

    v22 = sub_2212697C0(v19);
    if (v17[5])
    {
      v20 = v17[5];
    }

    else
    {
      v20 = &TSCE::_UidCellRefSetArchive_default_instance_;
    }

    sub_22127926C(&v24, v20);
    operator new();
  }
}

- (void)unpackAfterUnarchive:(id)unarchive
{
  unarchiveCopy = unarchive;
  self->_headerNameMgr = unarchiveCopy;
  begin_node = self->_nameFragmentToEntry.__tree_.__begin_node_;
  if (begin_node != &self->_nameFragmentToEntry.__tree_.__end_node_)
  {
    do
    {
      objc_msgSend_unpackEntryAfterUnarchive_(self->_headerNameMgr, v4, begin_node[5].__left_, v5);
      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v8 = left;
          left = left->super.super.isa;
        }

        while (left);
      }

      else
      {
        do
        {
          v8 = begin_node[2].__left_;
          v9 = v8->super.super.isa == begin_node;
          begin_node = v8;
        }

        while (!v9);
      }

      begin_node = v8;
    }

    while (v8 != &self->_nameFragmentToEntry.__tree_.__end_node_);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_2214117F0, off_2812E4498[310]);

  if (self->_headerNameMgr || (v10 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTHeaderNameMgrTile saveToArchiver:]", v9), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHeaderNameMgr.mm", v13), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 443, 0, "invalid nil value for '%{public}s'", "_headerNameMgr"), v14, v11, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18), self->_headerNameMgr))
  {
    firstFragment = self->_firstFragment;
    if (firstFragment)
    {
      v20 = objc_msgSend_tsp_protobufString(firstFragment, v7, v8, v9);
      *(v6 + 16) |= 1u;
      sub_22108CCD0(__p, v20);
      google::protobuf::internal::ArenaStringPtr::Set();
      if (v44 < 0)
      {
        operator delete(__p[0]);
      }
    }

    lastFragment = self->_lastFragment;
    if (lastFragment)
    {
      v22 = objc_msgSend_tsp_protobufString(lastFragment, v7, v8, v9);
      *(v6 + 16) |= 2u;
      sub_22108CCD0(__p, v22);
      google::protobuf::internal::ArenaStringPtr::Set();
      if (v44 < 0)
      {
        operator delete(__p[0]);
      }
    }

    os_unfair_lock_lock(&self->_tileLock);
    begin_node = self->_nameFragmentToEntry.__tree_.__begin_node_;
    if (begin_node != &self->_nameFragmentToEntry.__tree_.__end_node_)
    {
      while (1)
      {
        left = begin_node[5].__left_;
        if (left)
        {
          break;
        }

LABEL_31:
        isa = begin_node[1].__left_;
        if (isa)
        {
          do
          {
            v41 = isa;
            isa = isa->super.super.isa;
          }

          while (isa);
        }

        else
        {
          do
          {
            v41 = begin_node[2].__left_;
            v42 = v41->super.super.isa == begin_node;
            begin_node = v41;
          }

          while (!v42);
        }

        begin_node = v41;
        if (v41 == &self->_nameFragmentToEntry.__tree_.__end_node_)
        {
          goto LABEL_37;
        }
      }

      v25 = *(v6 + 40);
      if (!v25)
      {
        goto LABEL_16;
      }

      v26 = *(v6 + 32);
      v27 = *v25;
      if (v26 < *v25)
      {
        *(v6 + 32) = v26 + 1;
        v28 = *&v25[2 * v26 + 2];
LABEL_18:
        if (left[5])
        {
          v31 = left[5];
          v35 = objc_msgSend_tsp_protobufString(v31, v32, v33, v34);
          *(v28 + 16) |= 1u;
          sub_22108CCD0(__p, v35);
          google::protobuf::internal::ArenaStringPtr::Set();
          if (v44 < 0)
          {
            operator delete(__p[0]);
          }
        }

        *(v28 + 16) |= 2u;
        v36 = *(v28 + 32);
        if (!v36)
        {
          v37 = *(v28 + 8);
          if (v37)
          {
            v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
          }

          v36 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v37);
          *(v28 + 32) = v36;
        }

        __p[0] = *(left + 4);
        sub_221269820(__p, v36);
        *(v28 + 16) |= 4u;
        v38 = *(v28 + 40);
        if (!v38)
        {
          v39 = *(v28 + 8);
          if (v39)
          {
            v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
          }

          v38 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UidCellRefSetArchive>(v39);
          *(v28 + 40) = v38;
        }

        os_unfair_lock_lock(left);
        sub_2212790F0(left + 2, v38);
        os_unfair_lock_unlock(left);
        goto LABEL_31;
      }

      if (v27 == *(v6 + 36))
      {
LABEL_16:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 24));
        v25 = *(v6 + 40);
        v27 = *v25;
      }

      *v25 = v27 + 1;
      v28 = google::protobuf::Arena::CreateMaybeMessage<TST::HeaderNameMgrTileArchive_NameFragmentArchive>(*(v6 + 24));
      v29 = *(v6 + 32);
      v30 = *(v6 + 40) + 8 * v29;
      *(v6 + 32) = v29 + 1;
      *(v30 + 8) = v28;
      goto LABEL_18;
    }

LABEL_37:
    os_unfair_lock_unlock(&self->_tileLock);
  }
}

- (void)fragmentEntryForString:(id)string
{
  stringCopy = string;
  if (!objc_msgSend_length(stringCopy, v4, v5, v6) || (v7 = sub_22141185C(&self->_nameFragmentToEntry, &stringCopy), &self->_nameFragmentToEntry.__tree_.__end_node_ == v7))
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v7 + 40);
  }

  return v8;
}

- (void)createFragmentEntryForString:(id)string createIfMissingUsingPrecedentCoord:(const TSUCellCoord *)coord
{
  stringCopy = string;
  obj = stringCopy;
  if (objc_msgSend_length(stringCopy, v7, v8, v9))
  {
    v10 = *coord;
    v11 = sub_22141185C(&self->_nameFragmentToEntry, &obj);
    if (&self->_nameFragmentToEntry.__tree_.__end_node_ == v11)
    {
      objc_msgSend_addChangedTile_(self->_headerNameMgr, v12, self, v13, v10);
      if (v10.row == 0x7FFFFFFF || (*&v10 & 0xFFFF00000000) == 0x7FFF00000000)
      {
        objc_msgSend_getNextPrecedentCoord_(self->_headerNameMgr, v15, 0, v16);
      }

      operator new();
    }

    v14 = *(v11 + 40);
    stringCopy = obj;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)splitTile
{
  v71 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_count(self, a2, v2, v3);
  v6 = 0;
  v7 = 88;
  selfCopy = self;
  p_nameFragmentToEntry = &self->_nameFragmentToEntry;
  begin_node = self->_nameFragmentToEntry.__tree_.__begin_node_;
  do
  {
    delegate = begin_node->super._delegate;
    v11 = begin_node;
    if (delegate)
    {
      do
      {
        begin_node = delegate;
        delegate = *delegate;
      }

      while (delegate);
    }

    else
    {
      do
      {
        begin_node = v11[2];
        v12 = begin_node->super.super.isa == v11;
        v11 = begin_node;
      }

      while (!v12);
    }

    v12 = v6++ == v5 >> 1;
  }

  while (!v12);
  p_end_node = &self->_nameFragmentToEntry.__tree_.__end_node_;
  if (begin_node == &self->_nameFragmentToEntry.__tree_.__end_node_)
  {
    v16 = 0;
    goto LABEL_33;
  }

  v16 = begin_node->super._UUID;
  if (!v16)
  {
LABEL_33:
    v24 = 0;
    goto LABEL_34;
  }

  objc_msgSend_addChangedTile_(selfCopy->_headerNameMgr, v14, selfCopy, v15);
  v17 = [TSTHeaderNameMgrTile alloc];
  headerNameMgr = selfCopy->_headerNameMgr;
  v22 = objc_msgSend_context(headerNameMgr, v19, v20, v21);
  v24 = objc_msgSend_initWithHeaderNameMgr_context_(v17, v23, headerNameMgr, v22);

  v28 = objc_msgSend_lastFragment(selfCopy, v25, v26, v27);
  objc_msgSend_setLastFragment_(v24, v29, v28, v30);

  v31 = objc_alloc(MEMORY[0x277CBEB18]);
  v64 = objc_msgSend_initWithCapacity_(v31, v32, 25000, v33);
  v36 = *p_nameFragmentToEntry;
  if (*p_nameFragmentToEntry != p_end_node)
  {
    do
    {
      v37 = v36 + 4;
      if (objc_msgSend_compare_(v16, v34, v36[4], v35, selfCopy) == -1)
      {
        objc_msgSend_addObject_(v64, v34, *v37, v35);
        v38 = v36[5];
        v69 = v36 + 4;
        sub_221411618(&v24[v7], v36 + 4, &unk_2217E1BE8, &v69)[5] = v38;
        v43 = objc_msgSend_firstFragment(v24, v39, v40, v41);
        if (!v43 || (v44 = v7, v45 = *v37, objc_msgSend_firstFragment(v24, v34, v42, v35), v46 = objc_claimAutoreleasedReturnValue(), LODWORD(v45) = objc_msgSend_compare_(v45, v47, v46, v48) == -1, v46, v43, v7 = v44, v45))
        {
          objc_msgSend_setFirstFragment_(v24, v34, *v37, v35);
        }
      }

      v49 = v36[1];
      if (v49)
      {
        do
        {
          v50 = v49;
          v49 = *v49;
        }

        while (v49);
      }

      else
      {
        do
        {
          v50 = v36[2];
          v12 = *v50 == v36;
          v36 = v50;
        }

        while (!v12);
      }

      v36 = v50;
    }

    while (v50 != p_end_node);
  }

  os_unfair_lock_lock(&selfCopy->_tileLock);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v51 = v64;
  v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, &v65, v70, 16);
  if (v53)
  {
    v54 = *v66;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v66 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v69 = *(*(&v65 + 1) + 8 * i);
        sub_2214118EC(p_nameFragmentToEntry, &v69);
      }

      v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v56, &v65, v70, 16);
    }

    while (v53);
  }

  os_unfair_lock_unlock(&selfCopy->_tileLock);
  objc_msgSend_setLastFragment_(selfCopy, v57, v16, v58);
  if (!objc_msgSend_count(v24, v59, v60, v61))
  {

    v24 = 0;
  }

LABEL_34:

  return v24;
}

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 12) = 0;
  *(self + 11) = self + 96;
  return self;
}

@end