@interface KNOutlineSelection
- (BOOL)isEqual:(id)equal;
- (KNOutlineSelection)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (KNOutlineSelection)initWithSlideNodes:(id)nodes slideNodeToEdit:(id)edit selectedParagraphIndexesForSlideNodes:(id)slideNodes rangeInSelectedParagraph:(_NSRange)paragraph;
- (_NSRange)absoluteRangeInStorage:(id)storage;
- (_NSRange)rangeInSelectedParagraph;
- (id)contiguousIndexesForSelectedParagraphIndexesForSlideNodes:(id)nodes;
- (id)description;
- (id)estimatedTextSelection;
- (id)updatedOutlineSelectionWithTextSelection:(id)selection;
- (unint64_t)hash;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation KNOutlineSelection

- (KNOutlineSelection)initWithSlideNodes:(id)nodes slideNodeToEdit:(id)edit selectedParagraphIndexesForSlideNodes:(id)slideNodes rangeInSelectedParagraph:(_NSRange)paragraph
{
  length = paragraph.length;
  location = paragraph.location;
  nodesCopy = nodes;
  editCopy = edit;
  slideNodesCopy = slideNodes;
  v26.receiver = self;
  v26.super_class = KNOutlineSelection;
  v14 = [(KNSlideCollectionSelection *)&v26 initWithSlideNodes:nodesCopy slideNodeToEdit:editCopy];
  v15 = v14;
  if (v14)
  {
    v16 = [(KNOutlineSelection *)v14 contiguousIndexesForSelectedParagraphIndexesForSlideNodes:slideNodesCopy];
    selectedParagraphIndexesForSlideNodes = v15->_selectedParagraphIndexesForSlideNodes;
    v15->_selectedParagraphIndexesForSlideNodes = v16;

    v15->_rangeInSelectedParagraph.location = location;
    v15->_rangeInSelectedParagraph.length = length;
    if (location != *MEMORY[0x277D81490] || length != *(MEMORY[0x277D81490] + 8))
    {
      if ([(NSDictionary *)v15->_selectedParagraphIndexesForSlideNodes count]== 1)
      {
        allKeys = [(NSDictionary *)v15->_selectedParagraphIndexesForSlideNodes allKeys];
        v20 = [allKeys objectAtIndexedSubscript:0];
        v21 = [(NSDictionary *)v15->_selectedParagraphIndexesForSlideNodes objectForKeyedSubscript:v20];
        if ([v21 count] != 1)
        {
          v22 = MEMORY[0x277D81150];
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNOutlineSelection initWithSlideNodes:slideNodeToEdit:selectedParagraphIndexesForSlideNodes:rangeInSelectedParagraph:]"];
          v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNOutlineSelection.mm"];
          [v22 handleFailureInFunction:v23 file:v24 lineNumber:56 isFatal:0 description:"Only one paragraph can be selected if a rangeInSelectedParagraphs is given"];

          [MEMORY[0x277D81150] logBacktraceThrottled];
        }
      }

      else if (*MEMORY[0x277D81408] != -1)
      {
        sub_275E5B570();
      }
    }
  }

  return v15;
}

- (id)contiguousIndexesForSelectedParagraphIndexesForSlideNodes:(id)nodes
{
  v19 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  v3 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = nodesCopy;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v4 objectForKeyedSubscript:v8];
        v10 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{objc_msgSend(v9, "firstIndex"), objc_msgSend(v9, "lastIndex") - objc_msgSend(v9, "firstIndex") + 1}];
        [v3 setObject:v10 forUncopiedKey:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v11 = [v3 copy];

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = KNOutlineSelection;
  v4 = [(KNSlideCollectionSelection *)&v9 description];
  selectedParagraphIndexesForSlideNodes = self->_selectedParagraphIndexesForSlideNodes;
  v6 = NSStringFromRange(self->_rangeInSelectedParagraph);
  v7 = [v3 stringWithFormat:@"%@\n Selected Paragraphs:%@\n Range in Selected Paragraphs: %@", v4, selectedParagraphIndexesForSlideNodes, v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      slideNodes = [(KNSlideCollectionSelection *)self slideNodes];
      v24 = slideNodes;
      slideNodes2 = [(KNSlideCollectionSelection *)v5 slideNodes];
      v23 = slideNodes2;
      slideNodeToEdit = [(KNSlideCollectionSelection *)self slideNodeToEdit];
      v22 = slideNodeToEdit;
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

      location = self->_rangeInSelectedParagraph.location;
      length = self->_rangeInSelectedParagraph.length;
      rangeInSelectedParagraph = [(KNOutlineSelection *)v5 rangeInSelectedParagraph];
      v16 = v15;
      selectedParagraphIndexesForSlideNodes = self->_selectedParagraphIndexesForSlideNodes;
      selectedParagraphIndexesForSlideNodes = [(KNOutlineSelection *)v5 selectedParagraphIndexesForSlideNodes];
      v19 = [(NSDictionary *)selectedParagraphIndexesForSlideNodes isEqualToDictionary:selectedParagraphIndexesForSlideNodes];

      if (location == rangeInSelectedParagraph)
      {
        v20 = v10;
      }

      else
      {
        v20 = 0;
      }

      if (length != v16)
      {
        v20 = 0;
      }

      v11 = v20 & v19;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  slideNodes = [(KNSlideCollectionSelection *)self slideNodes];
  v4 = [slideNodes hash];
  slideNodeToEdit = [(KNSlideCollectionSelection *)self slideNodeToEdit];
  v6 = [slideNodeToEdit hash];
  v7 = [(NSDictionary *)self->_selectedParagraphIndexesForSlideNodes hash];
  p_rangeInSelectedParagraph = &self->_rangeInSelectedParagraph;
  location = self->_rangeInSelectedParagraph.location;
  v10 = v6 ^ v4 ^ p_rangeInSelectedParagraph->length ^ v7;

  return v10 ^ location;
}

- (_NSRange)absoluteRangeInStorage:(id)storage
{
  storageCopy = storage;
  slideNodes = [(KNSlideCollectionSelection *)self slideNodes];
  v6 = [KNSlideNode parentSlideNodeForInfo:storageCopy];
  v7 = [slideNodes containsObject:v6];

  if ((v7 & 1) == 0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNOutlineSelection absoluteRangeInStorage:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNOutlineSelection.mm"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:119 isFatal:0 description:"Storage should be in selected slide node."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  slideNodes2 = [(KNSlideCollectionSelection *)self slideNodes];
  v12 = [slideNodes2 count];

  if (v12 != 1)
  {
    v13 = MEMORY[0x277D81150];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNOutlineSelection absoluteRangeInStorage:]"];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNOutlineSelection.mm"];
    [v13 handleFailureInFunction:v14 file:v15 lineNumber:120 isFatal:0 description:"absolute ranges can only be calculated for single-slide outline selections"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  rangeInSelectedParagraph = [(KNOutlineSelection *)self rangeInSelectedParagraph];
  v18 = v17;
  selectedParagraphIndexesForSlideNodes = [(KNOutlineSelection *)self selectedParagraphIndexesForSlideNodes];
  slideNodeToEdit = [(KNSlideCollectionSelection *)self slideNodeToEdit];
  v21 = [selectedParagraphIndexesForSlideNodes objectForKey:slideNodeToEdit];
  firstIndex = [v21 firstIndex];

  if (firstIndex)
  {
    rangeInSelectedParagraph += [storageCopy textRangeForParagraphAtIndex:firstIndex - 1];
  }

  v23 = rangeInSelectedParagraph;
  v24 = v18;
  result.length = v24;
  result.location = v23;
  return result;
}

- (id)estimatedTextSelection
{
  v3 = *MEMORY[0x277D81490];
  v4 = *(MEMORY[0x277D81490] + 8);
  if (v3 == [(KNOutlineSelection *)self rangeInSelectedParagraph]&& v4 == v5)
  {
    v13 = 0;
  }

  else
  {
    slideNodeToEdit = [(KNSlideCollectionSelection *)self slideNodeToEdit];
    slide = [slideNodeToEdit slide];
    selectedParagraphIndexesForSlideNodes = [(KNOutlineSelection *)self selectedParagraphIndexesForSlideNodes];
    v10 = [selectedParagraphIndexesForSlideNodes objectForKey:slideNodeToEdit];
    firstIndex = [v10 firstIndex];

    if (firstIndex)
    {
      [slide bodyPlaceholder];
    }

    else
    {
      [slide titlePlaceholder];
    }
    v12 = ;
    textStorage = [v12 textStorage];

    v15 = [(KNOutlineSelection *)self absoluteRangeInStorage:textStorage];
    v13 = [MEMORY[0x277D80EF8] selectionWithRange:{v15, v16}];
  }

  return v13;
}

- (id)updatedOutlineSelectionWithTextSelection:(id)selection
{
  selectionCopy = selection;
  selectedParagraphIndexesForSlideNodes = [(KNOutlineSelection *)self selectedParagraphIndexesForSlideNodes];
  if ([selectedParagraphIndexesForSlideNodes count] != 1)
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNOutlineSelection updatedOutlineSelectionWithTextSelection:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNOutlineSelection.mm"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:162 isFatal:0 description:"outline text command selection behavior requires an outline selection with only one paragraph index."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  selfCopy = self;
  if ([selectedParagraphIndexesForSlideNodes count] == 1)
  {
    allValues = [selectedParagraphIndexesForSlideNodes allValues];
    firstObject = [allValues firstObject];
    firstIndex = [firstObject firstIndex];

    dEPRECATED_range = [selectionCopy DEPRECATED_range];
    v14 = v13;
    if (firstIndex)
    {
      slideNodeToEdit = [(KNSlideCollectionSelection *)selfCopy slideNodeToEdit];
      slide = [slideNodeToEdit slide];
      bodyPlaceholder = [slide bodyPlaceholder];
      textStorage = [bodyPlaceholder textStorage];

      v20 = [textStorage textRangeForParagraphAtIndex:firstIndex - 1];
      if (dEPRECATED_range < v20)
      {
        v21 = v19;
        v22 = MEMORY[0x277D81150];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNOutlineSelection updatedOutlineSelectionWithTextSelection:]"];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNOutlineSelection.mm"];
        v36.location = v20;
        v36.length = v21;
        v25 = NSStringFromRange(v36);
        [v22 handleFailureInFunction:v23 file:v24 lineNumber:181 isFatal:0 description:{"The computed text selection for outline selection %@ starts before the previous paragraph range %@", selfCopy, v25}];

        [MEMORY[0x277D81150] logBacktraceThrottled];
      }

      dEPRECATED_range -= v20;
    }

    if (dEPRECATED_range == *MEMORY[0x277D81490] && v14 == *(MEMORY[0x277D81490] + 8))
    {
      v26 = MEMORY[0x277D81150];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNOutlineSelection updatedOutlineSelectionWithTextSelection:]"];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNOutlineSelection.mm"];
      [v26 handleFailureInFunction:v27 file:v28 lineNumber:186 isFatal:0 description:"outline text command selection behavior failed to update the range in selected paragraph."];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }

    v29 = objc_alloc(objc_opt_class());
    slideNodes = [(KNSlideCollectionSelection *)selfCopy slideNodes];
    slideNodeToEdit2 = [(KNSlideCollectionSelection *)selfCopy slideNodeToEdit];
    v32 = [v29 initWithSlideNodes:slideNodes slideNodeToEdit:slideNodeToEdit2 selectedParagraphIndexesForSlideNodes:selectedParagraphIndexesForSlideNodes rangeInSelectedParagraph:{dEPRECATED_range, v14}];

    selfCopy = v32;
  }

  return selfCopy;
}

- (KNOutlineSelection)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  v26.receiver = self;
  v26.super_class = KNOutlineSelection;
  unarchiverCopy = unarchiver;
  v5 = [(KNSlideCollectionSelection *)&v26 initWithArchive:archive unarchiver:?];
  v6 = v5;
  if (v5)
  {
    if ((*(archive + 16) & 2) != 0)
    {
      v5->_rangeInSelectedParagraph.location = TSPNSRangeFromMessage();
      v6->_rangeInSelectedParagraph.length = v7;
    }

    else
    {
      v5->_rangeInSelectedParagraph = *MEMORY[0x277D81490];
    }

    v8 = *(archive + 14);
    if (v8 >= 1)
    {
      v16 = v6;
      v9 = [objc_alloc(MEMORY[0x277D81278]) initWithCapacity:v8];
      v10 = 8;
      do
      {
        sub_275E13BCC(v24, *(*(archive + 8) + v10));
        if (v25)
        {
          v11 = v25;
        }

        else
        {
          v11 = MEMORY[0x277D80A18];
        }

        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3321888768;
        v21[2] = sub_275DC5BDC;
        v21[3] = &unk_2884D5138;
        sub_275E13BCC(v23, v24);
        v12 = v9;
        v22 = v12;
        v13 = unarchiverCopy;
        [v13 readWeakReferenceMessage:v11 class:objc_opt_class() protocol:0 completion:v21];

        sub_275E13C50(v23);
        sub_275E13C50(v24);
        v10 += 8;
        --v8;
      }

      while (v8);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = sub_275DC5C90;
      v18[3] = &unk_27A698BD8;
      v6 = v16;
      v19 = v16;
      v14 = v12;
      v20 = v14;
      [v13 addFinalizeHandler:v18];
    }
  }

  return v6;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v32 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  v30.receiver = self;
  v30.super_class = KNOutlineSelection;
  [(KNSlideCollectionSelection *)&v30 saveToArchive:archive archiver:archiverCopy];
  if (self->_rangeInSelectedParagraph.location != *MEMORY[0x277D81490] || self->_rangeInSelectedParagraph.length != *(MEMORY[0x277D81490] + 8))
  {
    [(KNOutlineSelection *)self rangeInSelectedParagraph];
    *(archive + 4) |= 2u;
    if (!*(archive + 10))
    {
      v8 = *(archive + 1);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(archive + 10) = MEMORY[0x277C8F030](v8);
    }

    TSPNSRangeCopyToMessage();
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  selectedParagraphIndexesForSlideNodes = [(KNOutlineSelection *)self selectedParagraphIndexesForSlideNodes];
  obj = selectedParagraphIndexesForSlideNodes;
  v10 = [selectedParagraphIndexesForSlideNodes countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v10)
  {
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = [(NSDictionary *)self->_selectedParagraphIndexesForSlideNodes objectForKeyedSubscript:v13];
        v15 = *(archive + 8);
        if (!v15)
        {
          goto LABEL_20;
        }

        v16 = *(archive + 14);
        v17 = *v15;
        if (v16 < *v15)
        {
          *(archive + 14) = v16 + 1;
          v18 = *&v15[2 * v16 + 2];
          goto LABEL_22;
        }

        if (v17 == *(archive + 15))
        {
LABEL_20:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 48));
          v15 = *(archive + 8);
          v17 = *v15;
        }

        *v15 = v17 + 1;
        v18 = sub_275E2136C(*(archive + 6));
        v19 = *(archive + 14);
        v20 = *(archive + 8) + 8 * v19;
        *(archive + 14) = v19 + 1;
        *(v20 + 8) = v18;
LABEL_22:
        *(v18 + 16) |= 1u;
        v21 = *(v18 + 24);
        if (!v21)
        {
          v22 = *(v18 + 8);
          if (v22)
          {
            v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
          }

          v21 = MEMORY[0x277C8F050](v22);
          *(v18 + 24) = v21;
        }

        [archiverCopy setWeakReference:v13 message:v21];
        *(v18 + 16) |= 2u;
        v23 = *(v18 + 32);
        if (!v23)
        {
          v24 = *(v18 + 8);
          if (v24)
          {
            v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
          }

          v23 = MEMORY[0x277C8F040](v24);
          *(v18 + 32) = v23;
        }

        [v14 tsp_saveToMessage:v23];
      }

      selectedParagraphIndexesForSlideNodes = obj;
      v10 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }
}

- (_NSRange)rangeInSelectedParagraph
{
  p_rangeInSelectedParagraph = &self->_rangeInSelectedParagraph;
  location = self->_rangeInSelectedParagraph.location;
  length = p_rangeInSelectedParagraph->length;
  result.length = length;
  result.location = location;
  return result;
}

@end