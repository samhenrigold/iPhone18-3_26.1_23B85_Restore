@interface KNSlideCollectionSelection
- (BOOL)isContiguous;
- (BOOL)isEqual:(id)equal;
- (KNSlideCollectionSelection)init;
- (KNSlideCollectionSelection)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (KNSlideCollectionSelection)initWithSlideNode:(id)node;
- (KNSlideCollectionSelection)initWithSlideNodes:(id)nodes slideNodeToEdit:(id)edit;
- (id)UUIDDescription;
- (id)description;
- (unint64_t)hash;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation KNSlideCollectionSelection

- (KNSlideCollectionSelection)initWithSlideNodes:(id)nodes slideNodeToEdit:(id)edit
{
  nodesCopy = nodes;
  editCopy = edit;
  if (editCopy && ([nodesCopy containsObject:editCopy] & 1) == 0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideCollectionSelection initWithSlideNodes:slideNodeToEdit:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideCollectionSelection.mm"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:38 isFatal:0 description:{"Invalid parameter not satisfying: %{public}s", "(slideNodeToEdit == nil) || [slideNodes containsObject:slideNodeToEdit]"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v15.receiver = self;
  v15.super_class = KNSlideCollectionSelection;
  v11 = [(KNSlideCollectionSelection *)&v15 init];
  if (v11)
  {
    v12 = [nodesCopy copy];
    slideNodes = v11->_slideNodes;
    v11->_slideNodes = v12;

    objc_storeStrong(&v11->_slideNodeToEdit, edit);
  }

  return v11;
}

- (KNSlideCollectionSelection)initWithSlideNode:(id)node
{
  nodeCopy = node;
  if (nodeCopy)
  {
    [MEMORY[0x277CBEB70] orderedSetWithObject:nodeCopy];
  }

  else
  {
    [MEMORY[0x277CBEB70] orderedSet];
  }
  v5 = ;
  v6 = [(KNSlideCollectionSelection *)self initWithSlideNodes:v5 slideNodeToEdit:nodeCopy];

  return v6;
}

- (KNSlideCollectionSelection)init
{
  orderedSet = [MEMORY[0x277CBEB70] orderedSet];
  v4 = [(KNSlideCollectionSelection *)self initWithSlideNodes:orderedSet slideNodeToEdit:0];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  slideNodes = [(KNSlideCollectionSelection *)self slideNodes];
  slideNodeToEdit = [(KNSlideCollectionSelection *)self slideNodeToEdit];
  v7 = [v3 stringWithFormat:@"<%@ %p slideNodes=(%@) slideNodeToEdit=%@>", v4, self, slideNodes, slideNodeToEdit];

  return v7;
}

- (id)UUIDDescription
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  selfCopy = self;
  slideNodes = [(KNSlideCollectionSelection *)self slideNodes];
  v5 = [v3 initWithCapacity:{objc_msgSend(slideNodes, "count")}];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  slideNodes2 = [(KNSlideCollectionSelection *)self slideNodes];
  obj = slideNodes2;
  v7 = [slideNodes2 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = MEMORY[0x277CCACA8];
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        objectUUIDPath = [v10 objectUUIDPath];
        v15 = [v11 stringWithFormat:@"%@ %p %@", v13, v10, objectUUIDPath];
        [v5 addObject:v15];
      }

      slideNodes2 = obj;
      v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  slideNodeToEdit = [(KNSlideCollectionSelection *)selfCopy slideNodeToEdit];
  objectUUIDPath2 = [slideNodeToEdit objectUUIDPath];
  v21 = [v16 stringWithFormat:@"<%@ %p slideNodes=(%@) slideNodeToEdit=%@>", v18, selfCopy, v5, objectUUIDPath2];

  return v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else if ([(KNSlideCollectionSelection *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    slideNodes = [(KNSlideCollectionSelection *)self slideNodes];
    slideNodes2 = [(KNSlideCollectionSelection *)v5 slideNodes];
    slideNodeToEdit = [(KNSlideCollectionSelection *)self slideNodeToEdit];
    slideNodeToEdit2 = [(KNSlideCollectionSelection *)v5 slideNodeToEdit];
    if (slideNodes == slideNodes2 || [slideNodes isEqual:slideNodes2])
    {
      if (slideNodeToEdit == slideNodeToEdit2)
      {
        v10 = 1;
      }

      else
      {
        v10 = [slideNodeToEdit isEqual:slideNodeToEdit2];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  slideNodes = [(KNSlideCollectionSelection *)self slideNodes];
  v4 = [slideNodes hash];
  slideNodeToEdit = [(KNSlideCollectionSelection *)self slideNodeToEdit];
  v6 = [slideNodeToEdit hash];

  return v6 ^ v4;
}

- (BOOL)isContiguous
{
  slideNodes = [(KNSlideCollectionSelection *)self slideNodes];
  v3 = [slideNodes count];
  if (v3 < 2)
  {
    v11 = 1;
  }

  else
  {
    firstObject = [slideNodes firstObject];
    lastObject = [slideNodes lastObject];
    slideTree = [firstObject slideTree];
    v7 = slideTree;
    if (slideTree)
    {
      slideNodes2 = [slideTree slideNodes];
      v9 = [slideNodes2 indexOfObject:firstObject];
      v10 = [slideNodes2 indexOfObject:lastObject] - v9 + 1;

      if (v10 == v3)
      {
        v11 = -1;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 1;
    }
  }

  return v11 & 1;
}

- (KNSlideCollectionSelection)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v20.receiver = self;
  v20.super_class = KNSlideCollectionSelection;
  v7 = [(KNSlideCollectionSelection *)&v20 init];
  v8 = v7;
  if (v7)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_275DBD774;
    v18[3] = &unk_27A697A10;
    v9 = v7;
    v19 = v9;
    v10 = unarchiverCopy;
    [v10 readRepeatedWeakReferenceMessage:archive + 24 class:objc_opt_class() protocol:0 completion:v18];

    v11 = *(archive + 9);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_275DBD7F8;
    v16[3] = &unk_27A698B88;
    v17 = v9;
    v12 = v10;
    v13 = objc_opt_class();
    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = MEMORY[0x277D80A18];
    }

    [v12 readWeakReferenceMessage:v14 class:v13 protocol:0 completion:v16];
  }

  return v8;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  array = [(NSOrderedSet *)self->_slideNodes array];
  [archiverCopy setWeakReferenceArray:array message:archive + 24];

  slideNodeToEdit = [(KNSlideCollectionSelection *)self slideNodeToEdit];

  if (slideNodeToEdit)
  {
    slideNodeToEdit = self->_slideNodeToEdit;
    *(archive + 4) |= 1u;
    v9 = *(archive + 9);
    if (!v9)
    {
      v10 = *(archive + 1);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = MEMORY[0x277C8F050](v10);
      *(archive + 9) = v9;
    }

    [archiverCopy setWeakReference:slideNodeToEdit message:v9];
  }
}

@end