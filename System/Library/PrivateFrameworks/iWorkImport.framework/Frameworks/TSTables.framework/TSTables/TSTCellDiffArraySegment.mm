@interface TSTCellDiffArraySegment
- (unint64_t)estimatedByteSizeOfElement:(id)element;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSTCellDiffArraySegment

- (unint64_t)estimatedByteSizeOfElement:(id)element
{
  elementCopy = element;
  objc_opt_class();
  v4 = TSUDynamicCast();
  v8 = objc_msgSend_estimatedByteSize(v4, v5, v6, v7);

  return v8;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_22116E4E8, off_2812E4498[126]);

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_22116E2E0;
  v31[3] = &unk_27845FEF0;
  v7 = archiverCopy;
  v32 = v7;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, v6, v31);
  v12 = objc_msgSend_count(self, v9, v10, v11);
  sub_22116E554(__p, v12);
  for (i = 0; i < objc_msgSend_count(self, v13, v14, v15); ++i)
  {
    v19 = *(v6 + 40);
    if (!v19)
    {
      goto LABEL_8;
    }

    v20 = *(v6 + 32);
    v21 = *v19;
    if (v20 < *v19)
    {
      *(v6 + 32) = v20 + 1;
      v22 = *&v19[2 * v20 + 2];
      goto LABEL_10;
    }

    if (v21 == *(v6 + 36))
    {
LABEL_8:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 24));
      v19 = *(v6 + 40);
      v21 = *v19;
    }

    *v19 = v21 + 1;
    v22 = google::protobuf::Arena::CreateMaybeMessage<TST::CellDiffArchive>(*(v6 + 24));
    v23 = *(v6 + 32);
    v24 = *(v6 + 40) + 8 * v23;
    *(v6 + 32) = v23 + 1;
    *(v24 + 8) = v22;
LABEL_10:
    v25 = objc_msgSend_objectAtIndex_(self, v17, i, v18);
    objc_msgSend_saveToArchive_archiver_(v25, v26, v22, v7);
  }

  v27 = TST::CellDiffArraySegment::ByteSizeLong(v6);
  objc_msgSend_setEstimatedByteSize_(self, v28, v27, v29);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E4498[126], v6);

  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = sub_22116E4A4;
  v21 = &unk_27845FF18;
  v8 = unarchiverCopy;
  v22 = v8;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v8, v9, 1, v7, &v18);
  if (*(v7 + 32) >= 1)
  {
    v10 = 0;
    do
    {
      v11 = [TSTCellDiff alloc];
      v13 = objc_msgSend_initWithArchive_unarchiver_(v11, v12, *(*(v7 + 40) + 8 * v10 + 8), v8, v18, v19, v20, v21);
      objc_msgSend_addObject_willModify_(self, v14, v13, 0);

      ++v10;
    }

    while (v10 < *(v7 + 32));
  }

  v15 = TST::CellDiffArraySegment::ByteSizeLong(v7);
  objc_msgSend_setEstimatedByteSize_(self, v16, v15, v17);
}

@end