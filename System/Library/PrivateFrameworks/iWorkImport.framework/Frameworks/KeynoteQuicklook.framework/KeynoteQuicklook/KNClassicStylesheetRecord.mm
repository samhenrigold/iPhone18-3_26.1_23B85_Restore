@interface KNClassicStylesheetRecord
- (id)childEnumerator;
- (id)referencedStyles;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setIdentifierToStyleMap:(id)map;
@end

@implementation KNClassicStylesheetRecord

- (void)setIdentifierToStyleMap:(id)map
{
  mapCopy = map;
  [(KNClassicStylesheetRecord *)self willModify];
  identifierToStyleMap = self->_identifierToStyleMap;
  self->_identifierToStyleMap = mapCopy;
}

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  mapperCopy = mapper;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  identifierToStyleMap = [(KNClassicStylesheetRecord *)self identifierToStyleMap];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = sub_275DC7FE4;
  v13 = &unk_27A698C28;
  v8 = dictionary;
  v14 = v8;
  v9 = mapperCopy;
  v15 = v9;
  [identifierToStyleMap enumerateKeysAndObjectsUsingBlock:&v10];

  [(KNClassicStylesheetRecord *)self setIdentifierToStyleMap:v8, v10, v11, v12, v13];
}

- (id)referencedStyles
{
  v3 = [MEMORY[0x277CBEB58] set];
  identifierToStyleMap = [(KNClassicStylesheetRecord *)self identifierToStyleMap];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_275DC81B0;
  v7[3] = &unk_27A698C50;
  v5 = v3;
  v8 = v5;
  [identifierToStyleMap enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (id)childEnumerator
{
  v3 = [MEMORY[0x277CBEB58] set];
  identifierToStyleMap = [(KNClassicStylesheetRecord *)self identifierToStyleMap];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_275DC8348;
  v8[3] = &unk_27A698C50;
  v5 = v3;
  v9 = v5;
  [identifierToStyleMap enumerateKeysAndObjectsUsingBlock:v8];

  objectEnumerator = [v5 objectEnumerator];

  return objectEnumerator;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  selfCopy = self;
  unarchiverCopy = unarchiver;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = *(archive + 8);
  if (v7 >= 1)
  {
    v8 = 8;
    v9 = MEMORY[0x277D80A18];
    do
    {
      v10 = *(*(archive + 5) + v8);
      v11 = [MEMORY[0x277CCACA8] tsp_stringWithProtobufString:{*(v10 + 24) & 0xFFFFFFFFFFFFFFFELL, selfCopy}];
      v12 = *(v10 + 32);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = sub_275DC85E8;
      v19[3] = &unk_27A698C78;
      v20 = v6;
      v13 = v11;
      v21 = v13;
      v14 = unarchiverCopy;
      v15 = objc_opt_class();
      if (v12)
      {
        v16 = v12;
      }

      else
      {
        v16 = v9;
      }

      [v14 readWeakReferenceMessage:v16 class:v15 protocol:0 completion:v19];

      v8 += 8;
      --v7;
    }

    while (v7);
  }

  objc_storeStrong(&selfCopy->_identifierToStyleMap, v6);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_275DC8658;
  v18[3] = &unk_27A698390;
  v18[4] = selfCopy;
  [unarchiverCopy addFinalizeHandler:v18];
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v48 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  allKeys = [(NSDictionary *)self->_identifierToStyleMap allKeys];
  v6 = [allKeys sortedArrayUsingComparator:&unk_2884D5168];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v7)
  {
    v38 = *v44;
    do
    {
      v40 = v7;
      for (i = 0; i != v40; ++i)
      {
        if (*v44 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v43 + 1) + 8 * i);
        v42 = [(NSDictionary *)self->_identifierToStyleMap objectForKeyedSubscript:v9];
        v10 = *(archive + 5);
        if (!v10)
        {
          goto LABEL_11;
        }

        v11 = *(archive + 8);
        v12 = *v10;
        if (v11 < *v10)
        {
          *(archive + 8) = v11 + 1;
          v13 = *&v10[2 * v11 + 2];
          goto LABEL_13;
        }

        if (v12 == *(archive + 9))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 24));
          v10 = *(archive + 5);
          v12 = *v10;
        }

        *v10 = v12 + 1;
        v13 = MEMORY[0x277C8F080](*(archive + 3));
        v14 = *(archive + 8);
        v15 = *(archive + 5) + 8 * v14;
        *(archive + 8) = v14 + 1;
        *(v15 + 8) = v13;
LABEL_13:
        sub_275DC8DCC(v13, [v9 tsp_protobufString]);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          *(v13 + 16) |= 2u;
          v16 = *(v13 + 32);
          if (!v16)
          {
            v17 = *(v13 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = MEMORY[0x277C8F050](v17);
            *(v13 + 32) = v16;
          }

          [archiverCopy setStrongReference:v42 message:v16];
        }

        else
        {
          objc_opt_class();
          v18 = TSUDynamicCast();
          if (v18)
          {
            v19 = objc_alloc(MEMORY[0x277D80030]);
            context = [(KNClassicStylesheetRecord *)self context];
            chartStyle = [v18 chartStyle];
            legendStyle = [v18 legendStyle];
            valueAxisStyles = [v18 valueAxisStyles];
            categoryAxisStyles = [v18 categoryAxisStyles];
            seriesStyles = [v18 seriesStyles];
            paragraphStyles = [v18 paragraphStyles];
            refLineStyle = [v18 refLineStyle];
            uuid = [v18 uuid];
            v25 = [v19 initWithContext:context chartStyle:chartStyle legendStyle:legendStyle valueAxisStyles:valueAxisStyles categoryAxisStyles:categoryAxisStyles seriesStyles:seriesStyles paragraphStyles:paragraphStyles refLineStyle:refLineStyle uuid:uuid];

            *(v13 + 16) |= 2u;
            v26 = *(v13 + 32);
            if (!v26)
            {
              v27 = *(v13 + 8);
              if (v27)
              {
                v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
              }

              v26 = MEMORY[0x277C8F050](v27);
              *(v13 + 32) = v26;
            }

            [archiverCopy setStrongReference:v25 message:v26];
          }

          else
          {
            v28 = MEMORY[0x277D81150];
            v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNClassicStylesheetRecord saveToArchive:archiver:]"];
            v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNClassicStylesheetRecord.mm"];
            [v28 handleFailureInFunction:v29 file:v30 lineNumber:174 isFatal:0 description:{"Unrecognized object class for object %@ in KNClassicStylesheetRecord", v42}];

            [MEMORY[0x277D81150] logBacktraceThrottled];
            *(v13 + 16) |= 2u;
            v31 = *(v13 + 32);
            if (!v31)
            {
              v32 = *(v13 + 8);
              if (v32)
              {
                v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
              }

              v31 = MEMORY[0x277C8F050](v32);
              *(v13 + 32) = v31;
            }

            [archiverCopy setWeakReference:v42 message:v31];
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v7);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [unarchiverCopy messageWithDescriptor:off_2812EA908[22]];

  [(KNClassicStylesheetRecord *)self loadFromArchive:v4 unarchiver:unarchiverCopy];
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [archiverCopy messageWithNewFunction:sub_275DC90DC descriptor:off_2812EA908[22]];

  [(KNClassicStylesheetRecord *)self saveToArchive:v4 archiver:archiverCopy];
}

@end