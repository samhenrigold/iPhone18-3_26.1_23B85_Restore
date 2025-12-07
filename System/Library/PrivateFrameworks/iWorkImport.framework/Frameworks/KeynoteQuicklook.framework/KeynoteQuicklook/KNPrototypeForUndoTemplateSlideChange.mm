@interface KNPrototypeForUndoTemplateSlideChange
+ (id)blobWithSlide:(id)slide;
- (KNPrototypeForUndoTemplateSlideChange)initWithSlide:(id)slide;
- (KNTemplateSlide)templateSlide;
- (id)boxedObjectForProperty:(int)property;
- (id)objectForProperty:(int)property;
- (int)intValueForProperty:(int)property;
- (void)dealloc;
- (void)didInitFromSOS;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)migrateStyles;
- (void)rebuildChildInfosAndPlaceholdersFromMaster:(id)master;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation KNPrototypeForUndoTemplateSlideChange

- (KNPrototypeForUndoTemplateSlideChange)initWithSlide:(id)slide
{
  v45 = *MEMORY[0x277D85DE8];
  if (!slide)
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNPrototypeForUndoTemplateSlideChange initWithSlide:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPrototypeForUndoTemplateSlideChange.mm") description:{57, 0, "Invalid parameter not satisfying: %{public}s", "slide != nil"}];
    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v41.receiver = self;
  v41.super_class = KNPrototypeForUndoTemplateSlideChange;
  v7 = -[KNPrototypeForUndoTemplateSlideChange initWithContext:](&v41, sel_initWithContext_, [slide context]);
  if (v7)
  {
    v7->_style = [slide style];
    v31 = v7;
    v7->_templateSlideId = [objc_msgSend(slide "templateSlide")];
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    array3 = [MEMORY[0x277CBEB18] array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    childInfos = [slide childInfos];
    v12 = [childInfos countByEnumeratingWithState:&v37 objects:v44 count:16];
    if (!v12)
    {
      goto LABEL_19;
    }

    v13 = v12;
    v14 = *v38;
    while (1)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(childInfos);
        }

        v16 = *(*(&v37 + 1) + 8 * i);
        if ([(__CFString *)v16 parentInfo]== slide)
        {
          if (![slide infoIsPlaceholder:v16])
          {
            continue;
          }

          v19 = [slide tagForInfo:v16];
          replicateForReinsertion = [(__CFString *)v16 replicateForReinsertion];
          [array2 addObject:replicateForReinsertion];
          [array addObject:replicateForReinsertion];
          if (v19)
          {
            [dictionary setObject:replicateForReinsertion forKey:v19];
          }

          else
          {
            v19 = &stru_2884D8E20;
          }

          v17 = array3;
          v18 = v19;
        }

        else
        {
          v17 = array;
          v18 = v16;
        }

        [v17 addObject:v18];
      }

      v13 = [childInfos countByEnumeratingWithState:&v37 objects:v44 count:16];
      if (!v13)
      {
LABEL_19:
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v42[0] = [slide titlePlaceholder];
        v42[1] = [slide bodyPlaceholder];
        v42[2] = [slide slideNumberPlaceholder];
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:3];
        v22 = [v21 countByEnumeratingWithState:&v33 objects:v43 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v34;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v34 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v33 + 1) + 8 * j);
              if (([objc_msgSend(slide "childInfos")] & 1) == 0)
              {
                [array2 addObject:{objc_msgSend(v26, "replicateForReinsertion")}];
                [array3 addObject:&stru_2884D8E20];
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v33 objects:v43 count:16];
          }

          while (v23);
        }

        v27 = [array2 count];
        if (v27 != [array3 count])
        {
          v28 = MEMORY[0x277D81150];
          v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNPrototypeForUndoTemplateSlideChange initWithSlide:]"];
          [v28 handleFailureInFunction:v29 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPrototypeForUndoTemplateSlideChange.mm") description:{95, 0, "placeholders and tags must match counts"}];
          [MEMORY[0x277D81150] logBacktraceThrottled];
        }

        v7 = v31;
        v31->_childInfos = array;
        v31->_placeholdersForTags = dictionary;
        v31->_drawableInfoIdList = [array tsu_arrayByMappingObjectsUsingBlock:&unk_2884D4CC0];
        v31->_placeholders = array2;
        v31->_placeholderTagsList = array3;
        return v7;
      }
    }
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = KNPrototypeForUndoTemplateSlideChange;
  [(KNPrototypeForUndoTemplateSlideChange *)&v3 dealloc];
}

+ (id)blobWithSlide:(id)slide
{
  v3 = [objc_alloc(objc_opt_class()) initWithSlide:slide];

  return v3;
}

- (void)rebuildChildInfosAndPlaceholdersFromMaster:(id)master
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  placeholders = self->_placeholders;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_275D5E550;
  v10[3] = &unk_27A697D78;
  v10[4] = dictionary;
  v10[5] = self;
  v10[6] = dictionary2;
  [(NSArray *)placeholders enumerateObjectsUsingBlock:v10];
  self->_placeholdersForTags = dictionary2;
  drawableInfoIdList = self->_drawableInfoIdList;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_275D5E5F8;
  v9[3] = &unk_27A697DC8;
  v9[4] = dictionary;
  v9[5] = master;
  self->_childInfos = [(NSArray *)drawableInfoIdList tsu_arrayByMappingObjectsUsingBlock:v9];
}

- (void)didInitFromSOS
{
  v2.receiver = self;
  v2.super_class = KNPrototypeForUndoTemplateSlideChange;
  [(KNPrototypeForUndoTemplateSlideChange *)&v2 didInitFromSOS];
}

- (KNTemplateSlide)templateSlide
{
  context = [(KNPrototypeForUndoTemplateSlideChange *)self context];
  templateSlideId = self->_templateSlideId;

  return [context objectWithUUID:templateSlideId];
}

- (void)migrateStyles
{
  documentRoot = [(KNPrototypeForUndoTemplateSlideChange *)self documentRoot];
  -[KNPrototypeForUndoTemplateSlideChange setSlideStyle:](self, "setSlideStyle:", [documentRoot migratedStyleForStyle:{-[KNPrototypeForUndoTemplateSlideChange slideStyle](self, "slideStyle")}]);
  [(KNPrototypeForUndoTemplateSlideChange *)self placeholders];

  MEMORY[0x2821F9670](documentRoot, sel_migrateStylesInObjects_);
}

- (id)boxedObjectForProperty:(int)property
{
  v3 = *&property;
  v5 = String();
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      [(KNPrototypeForUndoTemplateSlideChange *)self floatValueForProperty:v3];
      if (v12 == INFINITY)
      {
        return 0;
      }

      v13 = MEMORY[0x277CCABB0];

      return [v13 numberWithFloat:?];
    }

    else
    {
      if (v5 != 3)
      {
        return 0;
      }

      [(KNPrototypeForUndoTemplateSlideChange *)self doubleValueForProperty:v3];
      if (v10 == INFINITY)
      {
        return 0;
      }

      v11 = MEMORY[0x277CCABB0];

      return [v11 numberWithDouble:?];
    }
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v6 = [(KNPrototypeForUndoTemplateSlideChange *)self intValueForProperty:v3];
        if (v6 != 0x80000000)
        {
          v7 = v6;
          v8 = MEMORY[0x277CCABB0];

          return [v8 numberWithInt:v7];
        }
      }

      return 0;
    }

    return [(KNPrototypeForUndoTemplateSlideChange *)self objectForProperty:v3];
  }
}

- (id)objectForProperty:(int)property
{
  v3 = 0;
  if (property <= 4212)
  {
    if (property == 515)
    {
      v4 = 64;
      return *(&self->super.super.isa + v4);
    }

    if (property != 4212)
    {
      return v3;
    }

    templateSlide = [(KNPrototypeForUndoTemplateSlideChange *)self templateSlide];

    return [(KNTemplateSlide *)templateSlide bodyParagraphStyles];
  }

  else
  {
    if (property != 4213)
    {
      if (property == 4214)
      {
        v4 = 104;
        return *(&self->super.super.isa + v4);
      }

      if (property == 4215)
      {
        v4 = 112;
        return *(&self->super.super.isa + v4);
      }

      return v3;
    }

    templateSlide2 = [(KNPrototypeForUndoTemplateSlideChange *)self templateSlide];

    return [(KNTemplateSlide *)templateSlide2 bodyListStyles];
  }
}

- (int)intValueForProperty:(int)property
{
  if (property == 4216)
  {
    return [(KNTemplateSlide *)[(KNPrototypeForUndoTemplateSlideChange *)self templateSlide:v3] slideObjectsLayerWithTemplate];
  }

  else
  {
    return 0x80000000;
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  google::protobuf::internal::AssignDescriptors();
  v5 = [unarchiver messageWithDescriptor:off_2812EA908[68]];
  v6 = v5;
  if (*(v5 + 96))
  {
    v7 = *(v5 + 96);
  }

  else
  {
    v7 = MEMORY[0x277D80A18];
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_275D5EC10;
  v19 = &unk_27A697DF0;
  selfCopy = self;
  [unarchiver readReferenceMessage:v7 class:objc_opt_class() protocol:0 completion:&v16];
  if (*(v6 + 104))
  {
    v8 = *(v6 + 104);
  }

  else
  {
    v8 = MEMORY[0x277D809E0];
  }

  self->_templateSlideId = [unarchiver readWeakObjectUUIDReferenceMessage:v8];
  self->_drawableInfoIdList = [unarchiver readRepeatedWeakObjectUUIDReferenceMessage:v6 + 24];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = sub_275D5EC44;
  v14 = &unk_27A697E18;
  selfCopy2 = self;
  [unarchiver readRepeatedReferenceMessage:v6 + 48 class:objc_opt_class() protocol:0 completion:&v11];
  array = [MEMORY[0x277CBEB18] array];
  if (*(v6 + 80) >= 1)
  {
    v10 = 0;
    do
    {
      [array addObject:{objc_msgSend(MEMORY[0x277CCACA8], "tsp_stringWithProtobufString:", *(*(v6 + 88) + 8 * v10++ + 8))}];
    }

    while (v10 < *(v6 + 80));
  }

  self->_placeholderTagsList = array;
}

- (void)saveToArchiver:(id)archiver
{
  google::protobuf::internal::AssignDescriptors();
  v5 = [archiver messageWithNewFunction:sub_275D5F0B8 descriptor:off_2812EA908[68]];

  [(KNPrototypeForUndoTemplateSlideChange *)self saveToArchive:v5 archiver:archiver];
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v29 = *MEMORY[0x277D85DE8];
  slideStyle = [(KNPrototypeForUndoTemplateSlideChange *)self slideStyle];
  *(archive + 4) |= 1u;
  v8 = *(archive + 12);
  if (!v8)
  {
    v9 = *(archive + 1);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    v8 = MEMORY[0x277C8F050](v9);
    *(archive + 12) = v8;
  }

  [archiver setStrongReference:slideStyle message:v8];
  templateSlideId = self->_templateSlideId;
  *(archive + 4) |= 2u;
  v11 = *(archive + 13);
  if (!v11)
  {
    v12 = *(archive + 1);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = MEMORY[0x277C8F000](v12);
    *(archive + 13) = v11;
  }

  [archiver setWeakReferenceToObjectUUID:templateSlideId message:v11];
  [archiver setWeakReferenceToObjectUUIDArray:self->_drawableInfoIdList message:archive + 24];
  [archiver setStrongReferenceArray:self->_placeholders message:archive + 48];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  placeholderTagsList = self->_placeholderTagsList;
  v14 = [(NSArray *)placeholderTagsList countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(placeholderTagsList);
        }

        uTF8String = [*(*(&v24 + 1) + 8 * i) UTF8String];
        v18 = *(archive + 11);
        if (!v18)
        {
          goto LABEL_19;
        }

        v19 = *(archive + 20);
        v20 = *v18;
        if (v19 < *v18)
        {
          *(archive + 20) = v19 + 1;
          v21 = *&v18[2 * v19 + 2];
          goto LABEL_21;
        }

        if (v20 == *(archive + 21))
        {
LABEL_19:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 72));
          v18 = *(archive + 11);
          v20 = *v18;
        }

        *v18 = v20 + 1;
        v21 = sub_275D5EFD8(*(archive + 9));
        v22 = *(archive + 20);
        v23 = *(archive + 11) + 8 * v22;
        *(archive + 20) = v22 + 1;
        *(v23 + 8) = v21;
LABEL_21:
        MEMORY[0x277C8F920](v21, uTF8String);
      }

      v14 = [(NSArray *)placeholderTagsList countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }
}

@end