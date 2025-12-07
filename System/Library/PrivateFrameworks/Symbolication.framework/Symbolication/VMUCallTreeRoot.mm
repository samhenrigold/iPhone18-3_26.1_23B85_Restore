@interface VMUCallTreeRoot
- (VMUCallTreeRoot)initWithCallGraphFile:(id)file fileHeader:(id *)header topFunctionsList:(id *)list binaryImagesList:(id *)imagesList error:(id *)error;
- (VMUCallTreeRoot)initWithSymbolicator:(_CSTypeRef)symbolicator sampler:(id)sampler options:(unint64_t)options;
- (id)addBacktrace:(id)backtrace count:(unsigned int)count numBytes:(unint64_t)bytes;
- (id)addChildWithName:(id)name address:(unint64_t)address count:(unsigned int)count numBytes:(unint64_t)bytes toNode:(id)node;
- (id)addUniqueChildWithName:(id)name address:(unint64_t)address count:(unsigned int)count numBytes:(unint64_t)bytes toNode:(id)node isLeafNode:(BOOL)leafNode;
- (id)chargeSystemLibrariesToCallersAndKeepBoundaries:(BOOL)boundaries;
- (id)descriptionStringForAddress:(unint64_t)address atTime:(unint64_t)time leafFrame:(BOOL)frame startOfRecursion:(BOOL)recursion;
- (void)addChildCountsIntoNode;
- (void)allBacktracesHaveBeenAdded;
- (void)dealloc;
@end

@implementation VMUCallTreeRoot

- (VMUCallTreeRoot)initWithSymbolicator:(_CSTypeRef)symbolicator sampler:(id)sampler options:(unint64_t)options
{
  samplerCopy = sampler;
  v20.receiver = self;
  v20.super_class = VMUCallTreeRoot;
  v9 = [(VMUCallTreeRoot *)&v20 init];
  v10 = v9;
  if (v9)
  {
    name = v9->super._name;
    v9->super._name = &stru_1F461F9C8;

    v10->_symbolicator._opaque_1 = CSRetain();
    v10->_symbolicator._opaque_2 = v12;
    objc_storeStrong(&v10->_sampler, sampler);
    v10->_options = options;
    v13 = objc_opt_new();
    uniqueNodeNames = v10->_uniqueNodeNames;
    v10->_uniqueNodeNames = v13;

    v15 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:258 valueOptions:0];
    addressToSymbolNameMap = v10->_addressToSymbolNameMap;
    v10->_addressToSymbolNameMap = v15;

    v17 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:258 valueOptions:0];
    addressToLeafSymbolNameMap = v10->_addressToLeafSymbolNameMap;
    v10->_addressToLeafSymbolNameMap = v17;
  }

  return v10;
}

- (void)allBacktracesHaveBeenAdded
{
  p_symbolicator = &self->_symbolicator;
  CSRelease();
  p_symbolicator->_opaque_1 = 0;
  p_symbolicator->_opaque_2 = 0;
}

- (void)dealloc
{
  [(VMUCallTreeRoot *)self allBacktracesHaveBeenAdded];
  v3.receiver = self;
  v3.super_class = VMUCallTreeRoot;
  [(VMUCallTreeNode *)&v3 dealloc];
}

- (id)descriptionStringForAddress:(unint64_t)address atTime:(unint64_t)time leafFrame:(BOOL)frame startOfRecursion:(BOOL)recursion
{
  recursionCopy = recursion;
  v57 = *MEMORY[0x1E69E9840];
  v9 = [(VMUStackLogReader *)self->_stackLogReader vmuVMRegionForAddress:?];
  frameCopy = frame;
  CSSymbolicatorGetSymbolOwnerWithAddressAtTime();
  Path = CSSymbolOwnerGetPath();
  if (Path)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9 == 0;
  }

  if (!v11)
  {
    Path = [v9[5] UTF8String];
  }

  if ((self->_options & 0x10) != 0)
  {
    v12 = Path;
    v13 = isSystemPath(Path);
    Path = v12;
    if (v13)
    {
      v14 = 0;
      goto LABEL_64;
    }
  }

  v45 = Path;
  Name = CSSymbolOwnerGetName();
  v51 = v9;
  if (Name)
  {
    v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v16 = self->_vmRegions;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v53;
      v49 = @"Rosetta Runtime Routines";
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v53 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v52 + 1) + 8 * i);
          v22 = address - [v21 range];
          if (v22 < v23)
          {
            if (*(v21 + 104) == 234)
            {
              v49 = VMUExclaveOrDarwinRegionTypeDescriptionForTagShareProtAndPager(*(v21 + 232), 234, 0, 0, 0);
              goto LABEL_24;
            }

            if (*(v21 + 112) == self->_cambriaRuntimeObjectID)
            {
              goto LABEL_24;
            }
          }
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v52 objects:v56 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

      v49 = @"<unknown binary>";
    }

    else
    {
      v49 = @"<unknown binary>";
    }

LABEL_24:
  }

  CSSymbolicatorGetSymbolWithAddressAtTime();
  v24 = CSSymbolGetName();
  if (v24 && ([MEMORY[0x1E696AEC0] stringWithUTF8String:v24], (v25 = objc_claimAutoreleasedReturnValue()) != 0) || (stackLogReader = self->_stackLogReader) != 0 && (-[VMUStackLogReader functionNameForPCaddress:](stackLogReader, "functionNameForPCaddress:", address), (v25 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v27 = v25;
    v28 = VMUSimplifyCPlusPlusSymbolName(v25);

    options = self->_options;
    if ((options & 0x20) != 0 || (options & 0x40) != 0 && isSystemPath(v45))
    {
      v48 = 0;
      range2 = 0;
      Range = 0;
      v46 = 1;
      v32 = recursionCopy;
      goto LABEL_48;
    }

    Range = CSSymbolGetRange();
    if (!Range)
    {
      Range = [(VMUStackLogReader *)self->_stackLogReader functionRangeContainingPCaddress:address];
    }

    range = 0;
    v32 = recursionCopy;
    if (frameCopy)
    {
      range2 = @"0";
      v46 = 1;
      goto LABEL_46;
    }

    v33 = @"%qu";
    goto LABEL_43;
  }

  v28 = kVMUUnknownSymbolName[0];
  Range = CSSymbolOwnerGetBaseAddress();
  if (Range)
  {
    v32 = recursionCopy;
LABEL_37:
    v33 = @"0x%qx";
    range = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%qx", Range];
LABEL_43:
    range2 = [MEMORY[0x1E696AEC0] stringWithFormat:v33, address - Range];
    v46 = 0;
    Range = address;
    goto LABEL_46;
  }

  v32 = recursionCopy;
  if (v51)
  {
    Range = v51[1];
  }

  if (Range)
  {
    goto LABEL_37;
  }

  v46 = 0;
  range2 = 0;
  range = 0;
  Range = address;
LABEL_46:
  v48 = range;
  if (Range)
  {
    Range = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%qx", Range];
  }

LABEL_48:
  v35 = &stru_1F461F9C8;
  if (v32)
  {
    v35 = @"  RECURSION COLLAPSED";
  }

  v36 = v35;
  v37 = self->_options;
  CSSymbolOwnerGetSourceInfoWithAddress();
  if (CSIsNull())
  {
    v38 = self->_stackLogReader;
    if (v38)
    {
      if ((v37 & 2) != 0)
      {
        [(VMUStackLogReader *)v38 sourcePathForPCaddress:address];
      }

      else
      {
        [(VMUStackLogReader *)v38 sourceFileNameForPCaddress:address];
      }
      v44 = ;
      if (v44)
      {
        v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@  %@:%u", v36, v44, -[VMUStackLogReader sourceLineNumberForPCaddress:](self->_stackLogReader, "sourceLineNumberForPCaddress:", address)];
      }

      else
      {
        v40 = 0;
      }

      if (v40)
      {
        goto LABEL_59;
      }
    }
  }

  else
  {
    if ((v37 & 2) != 0)
    {
      Filename = CSSourceInfoGetPath();
    }

    else
    {
      Filename = CSSourceInfoGetFilename();
    }

    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@  %s:%u", v36, Filename, CSSourceInfoGetLineNumber()];
    if (v40)
    {
      goto LABEL_59;
    }
  }

  v40 = v36;
LABEL_59:
  v14 = [(VMUCallTreeNode *)self nameWithStringsForSymbol:v28 library:v49 loadAddress:v48 offset:range2 address:Range suffix:v40];
  if (v46)
  {
    v41 = self->_uniqueNodeNames;
    v42 = v14;
    v14 = [(NSMutableSet *)v41 member:v42];
    if (!v14)
    {
      [(NSMutableSet *)v41 addObject:v42];
      v14 = v42;
    }
  }

  v9 = v51;
LABEL_64:

  return v14;
}

- (id)addBacktrace:(id)backtrace count:(unsigned int)count numBytes:(unint64_t)bytes
{
  backtraceCopy = backtrace;
  backtraceLength = [backtraceCopy backtraceLength];
  if (backtraceLength)
  {
    v10 = backtraceLength;
    selfCopy = self;
    context = objc_autoreleasePoolPush();
    key = 0;
    options = selfCopy->_options;
    selfCopy->super._count += count;
    selfCopy->super._numBytes += bytes;
    v13 = selfCopy;
    v38 = options;
    if ((options & 4) == 0)
    {
      sampler = selfCopy->_sampler;
      if (sampler)
      {
        v15 = [(VMUSampler *)sampler threadDescriptionStringForBacktrace:backtraceCopy returnedAddress:&key];
        v16 = 2;
        thread = key;
      }

      else
      {
        if (!selfCopy->_threadPortToNameMap)
        {
          v18 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:0];
          threadPortToNameMap = selfCopy->_threadPortToNameMap;
          selfCopy->_threadPortToNameMap = v18;
        }

        thread = [backtraceCopy thread];
        v15 = NSMapGet(selfCopy->_threadPortToNameMap, thread);
        if (!v15)
        {
          v15 = [MEMORY[0x1E696AD60] stringWithFormat:@"Thread_%x", thread];
          NSMapInsert(selfCopy->_threadPortToNameMap, thread, v15);
        }

        key = thread;
        v16 = 1;
      }

      v13 = [(VMUCallTreeNode *)selfCopy findOrAddChildWithName:v15 address:thread nodeSearchType:v16 isLeafNode:0];

      *(v13 + 40) += count;
      *(v13 + 32) += bytes;
    }

    backtrace = [backtraceCopy backtrace];
    v35 = backtraceCopy;
    [backtraceCopy timestamp];
    v21 = (v10 - 1);
    if (v10 - 1 >= 0)
    {
      countCopy = count;
      bytesCopy = bytes;
      v22 = 0;
      v23 = v21 + 1;
      v24 = (backtrace + 8 * v21);
      while (1)
      {
        v25 = *v24;
        key = *v24;
        if (v22)
        {
          break;
        }

        if (v25 >= 0x1000)
        {
          goto LABEL_19;
        }

LABEL_42:
        ++v22;
        --v24;
        if (v23-- <= 1)
        {
          goto LABEL_44;
        }
      }

      if ((v38 & 8) != 0 && v25 == v24[1])
      {
        goto LABEL_42;
      }

LABEL_19:
      if (v23 == 1)
      {
        v26 = (selfCopy->_options & 0x20) == 0;
        v27 = &OBJC_IVAR___VMUCallTreeRoot__addressToSymbolNameMap;
        if ((selfCopy->_options & 0x20) == 0)
        {
          v27 = &OBJC_IVAR___VMUCallTreeRoot__addressToLeafSymbolNameMap;
        }
      }

      else
      {
        v26 = 0;
        v27 = &OBJC_IVAR___VMUCallTreeRoot__addressToSymbolNameMap;
      }

      v28 = *(&selfCopy->super.super.isa + *v27);
      v29 = NSMapGet(v28, key);
      if (!v29)
      {
        if (!key)
        {
          v29 = @"0x0";
          if (!v26)
          {
            goto LABEL_39;
          }

          goto LABEL_32;
        }

        v30 = [VMUCallTreeRoot descriptionStringForAddress:selfCopy atTime:"descriptionStringForAddress:atTime:leafFrame:startOfRecursion:" leafFrame:? startOfRecursion:?];
        if (v30)
        {
          v29 = v30;
        }

        else
        {
          v29 = @"IGNORE THIS FRAME";
        }

        NSMapInsert(v28, key, v29);
      }

      if (v29 == @"IGNORE THIS FRAME")
      {
        v29 = @"IGNORE THIS FRAME";
LABEL_41:

        goto LABEL_42;
      }

      if (!v26)
      {
        goto LABEL_39;
      }

LABEL_32:
      if (([(__CFString *)v29 hasPrefix:kVMUUnknownSymbolName[0]]& 1) == 0)
      {
        v31 = [v13 findOrAddChildWithName:v29 address:0 nodeSearchType:1 isLeafNode:1];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (!*(v31 + 24))
          {
            [v31 parseNameIntoSymbol:0 library:0 loadAddress:0 offset:0 address:v31 + 24 suffix:0];
          }

          [v31 addAddress:key];
        }

        goto LABEL_40;
      }

LABEL_39:
      v31 = [v13 findOrAddChildWithName:v29 address:key nodeSearchType:1 isLeafNode:0];

LABEL_40:
      *(v31 + 40) += countCopy;
      *(v31 + 32) += bytesCopy;
      v13 = v31;
      goto LABEL_41;
    }

LABEL_44:
    objc_autoreleasePoolPop(context);
    backtraceCopy = v35;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)addChildWithName:(id)name address:(unint64_t)address count:(unsigned int)count numBytes:(unint64_t)bytes toNode:(id)node
{
  nameCopy = name;
  nodeCopy = node;
  v14 = [(NSMutableSet *)self->_uniqueNodeNames member:nameCopy];
  if (v14)
  {
    v15 = v14;
    v16 = 1;
  }

  else
  {
    [(NSMutableSet *)self->_uniqueNodeNames addObject:nameCopy];
    v15 = nameCopy;
    v16 = 0;
  }

  v17 = [nodeCopy findOrAddChildWithName:v15 address:address nodeSearchType:v16 isLeafNode:address != 0];
  *(v17 + 40) += count;
  *(v17 + 32) += bytes;

  return v17;
}

- (id)addUniqueChildWithName:(id)name address:(unint64_t)address count:(unsigned int)count numBytes:(unint64_t)bytes toNode:(id)node isLeafNode:(BOOL)leafNode
{
  result = [node findOrAddChildWithName:name address:address nodeSearchType:0 isLeafNode:leafNode];
  *(result + 10) += count;
  *(result + 4) += bytes;
  return result;
}

- (void)addChildCountsIntoNode
{
  v15 = [MEMORY[0x1E695DF70] arrayWithObject:self];
  if (![v15 count])
  {
    v4 = -1;
    do
    {
LABEL_11:
      v11 = [v15 objectAtIndexedSubscript:v4];
      v12 = *(v11 + 32);
      parent = [v11 parent];
      parent[4] += v12;

      LODWORD(v12) = *(v11 + 40);
      parent2 = [v11 parent];
      parent2[10] += v12;

      v3 = v15;
      --v4;
    }

    while (v4);
    goto LABEL_12;
  }

  v2 = 0;
  v3 = v15;
  do
  {
    v4 = v2;
    v5 = [v3 objectAtIndexedSubscript:v2];
    numChildren = [v5 numChildren];
    if (numChildren)
    {
      v7 = numChildren;
      v8 = 0;
      do
      {
        v9 = [v5 childAtIndex:v8];
        [v15 addObject:v9];

        v8 = (v8 + 1);
      }

      while (v7 != v8);
    }

    v2 = v4 + 1;

    v10 = v4 + 1 >= [v15 count];
    v3 = v15;
  }

  while (!v10);
  if (v4)
  {
    goto LABEL_11;
  }

LABEL_12:
}

- (VMUCallTreeRoot)initWithCallGraphFile:(id)file fileHeader:(id *)header topFunctionsList:(id *)list binaryImagesList:(id *)imagesList error:(id *)error
{
  v104[1] = *MEMORY[0x1E69E9840];
  fileCopy = file;
  if (header)
  {
    *header = 0;
  }

  if (list)
  {
    *list = 0;
  }

  if (imagesList)
  {
    *imagesList = 0;
  }

  v13 = [(VMUCallTreeRoot *)self initWithSymbolicator:0 sampler:0 options:0, 0];
  if (!v13)
  {
    v17 = 0;
    goto LABEL_43;
  }

  v14 = v13;
  fileSystemRepresentation = [fileCopy fileSystemRepresentation];
  v91 = fopen(fileSystemRepresentation, "re");
  if (!v91)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"couldn't open %s for reading call tree\n", fileSystemRepresentation];
    v19 = MEMORY[0x1E696ABC0];
    v103 = *MEMORY[0x1E696A578];
    v104[0] = v18;
    string2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:&v103 count:1];
    v20 = [v19 errorWithDomain:@"VMUCallTreeRoot" code:1 userInfo:?];
    v17 = 0;
    if (error)
    {
      *error = v20;
    }

    goto LABEL_42;
  }

  v73 = fileSystemRepresentation;
  if (header)
  {
    string = [MEMORY[0x1E696AD60] string];
    if (list)
    {
      goto LABEL_11;
    }

LABEL_17:
    string2 = 0;
    if (imagesList)
    {
      goto LABEL_12;
    }

LABEL_18:
    string3 = 0;
    goto LABEL_19;
  }

  string = 0;
  if (!list)
  {
    goto LABEL_17;
  }

LABEL_11:
  string2 = [MEMORY[0x1E696AD60] string];
  if (!imagesList)
  {
    goto LABEL_18;
  }

LABEL_12:
  string3 = [MEMORY[0x1E696AD60] string];
LABEL_19:
  headerCopy = header;
  listCopy = list;
  errorCopy = error;
  imagesListCopy = imagesList;
  v77 = fileCopy;
  v78 = string;
  v86 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v14, 0}];
  lastObject = v14;
  name = lastObject->super._name;
  lastObject->super._name = &stru_1F461F9C8;

  v89 = objc_alloc_init(MEMORY[0x1E695DF70]);
  decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v82 = objc_msgSend(MEMORY[0x1E696AB08], "characterSetWithCharactersInString:", @"(");
  v79 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@""]);
  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v98 = 0;
  v23 = v91;
  v80 = lastObject;
  if (feof(v91))
  {
    lastObject2 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v84 = 0;
    goto LABEL_21;
  }

  v84 = 0;
  v40 = 0;
  v25 = 0;
  v41 = 0;
  v70 = 1;
  v72 = 1;
  v42 = lastObject;
  while (1)
  {
    v27 = fgetln(v23, &v98);
    if (!v27)
    {
      lastObject2 = v41;
      lastObject = v42;
      v26 = v40;
      goto LABEL_21;
    }

    v43 = objc_autoreleasePoolPush();
    v44 = objc_alloc(MEMORY[0x1E696AEC0]);
    v45 = [v44 initWithBytesNoCopy:v27 length:v98 encoding:4 freeWhenDone:0];
    if (!v45)
    {
      break;
    }

    if (!strncmp(v27, "Call graph:", 0xBuLL))
    {
      v25 = 1;
      goto LABEL_63;
    }

    if (!strncmp(v27, "Total number in stack", 0x15uLL) || v25 == 1 && v98 <= 1)
    {
      [string2 appendString:v45];
      v25 = 2;
      goto LABEL_63;
    }

    if (!strncmp(v27, "Binary Images:", 0xEuLL))
    {
      goto LABEL_62;
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        [string2 appendString:v45];
      }

      else
      {
LABEL_62:
        [string3 appendString:v45];
        v25 = 3;
      }

LABEL_63:

      objc_autoreleasePoolPop(v43);
      v26 = v40;
      lastObject = v42;
      lastObject2 = v41;
      goto LABEL_64;
    }

    if (!v25 && [v45 integerValue] <= 0)
    {
      [v78 appendString:v45];
      v25 = 0;
      goto LABEL_63;
    }

    v46 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:v45];

    [v46 setCharactersToBeSkipped:0];
    v97 = 0;
    v74 = v46;
    [v46 scanUpToCharactersFromSet:decimalDigitCharacterSet intoString:&v97];
    v71 = v97;
    v47 = [v71 length];
    if (v47 < 4)
    {
      goto LABEL_107;
    }

    v48 = v47;
    if (v47 <= [v41 length])
    {
      do
      {
        [v86 removeLastObject];
        lastObject = [v86 lastObject];

        [v89 removeLastObject];
        lastObject2 = [v89 lastObject];

        v42 = lastObject;
        v41 = lastObject2;
      }

      while (v48 <= [lastObject2 length]);
    }

    else
    {
      lastObject2 = v41;
      lastObject = v42;
    }

    v96 = 0;
    v23 = v91;
    if (![v74 scanInteger:&v96] || v96 < 1 || !objc_msgSend(v74, "scanCharactersFromSet:intoString:", whitespaceCharacterSet, 0))
    {
      goto LABEL_106;
    }

    v49 = v74;
    v50 = 0;
    if ([v74 scanCharactersFromSet:v82 intoString:0])
    {
      LODWORD(v93) = 0;
      if (([v74 scanFloat:&v93] & 1) == 0)
      {
        [v74 setScanLocation:{objc_msgSend(v74, "scanLocation") - 1}];
        v50 = 0;
        goto LABEL_83;
      }

      v95 = 0;
      v51 = [v74 scanUpToCharactersFromSet:v79 intoString:&v95];
      v52 = v95;
      v53 = v52;
      if (v51)
      {
        if ([v52 isEqualToString:@"K"])
        {
          v54 = *&v93;
          v55 = 1024.0;
          goto LABEL_79;
        }

        if ([v53 isEqualToString:@"M"])
        {
          v54 = *&v93;
          v55 = 1048600.0;
LABEL_79:
          *&v93 = v54 * v55;
          v49 = v74;
        }

        else
        {
          v49 = v74;
          if (([v53 hasSuffix:@"bytes"] & 1) == 0 && objc_msgSend(v53, "length"))
          {
LABEL_105:

LABEL_106:
            v41 = lastObject2;
            v42 = lastObject;
LABEL_107:

            v25 = 1;
            v84 = 1;
            goto LABEL_114;
          }
        }
      }

      v56 = *&v93;
      if (![v49 scanCharactersFromSet:v79 intoString:0] || !objc_msgSend(v49, "scanCharactersFromSet:intoString:", whitespaceCharacterSet, 0))
      {
        goto LABEL_105;
      }

      v50 = v56;
    }

LABEL_83:
    scanLocation = [v49 scanLocation];
    v94 = 0;
    [v49 scanUpToCharactersFromSet:newlineCharacterSet intoString:&v94];
    v58 = v94;
    v59 = [v58 length];
    if (v59)
    {
      if (!v50)
      {
        v68 = scanLocation;
        v60 = v80->_uniqueNodeNames;
        v61 = v58;
        v58 = [(NSMutableSet *)v60 member:v61];
        if (!v58)
        {
          [(NSMutableSet *)v60 addObject:v61];
          v58 = v61;
        }

        v50 = 0;
        goto LABEL_93;
      }

      if (([v58 isEqualToString:kVMURootNodeNameForMallocCallTrees[0]] & 1) == 0)
      {
        v68 = scanLocation;
LABEL_93:
        v62 = [(VMUCallTreeNode *)lastObject findOrAddChildWithName:v58 address:0 nodeSearchType:0 isLeafNode:0];
        v63 = v62;
        if (v62)
        {
          *(v62 + 40) = v96;
          *(v62 + 32) = v50;
          v93 = 0;
          if ((v72 & 1) != 0 && ([v62 parseNameIntoSymbol:0 library:0 loadAddress:0 offset:0 address:&v93 suffix:0], (v64 = v93) != 0))
          {
            v72 = 1;
          }

          else
          {
            [v74 setScanLocation:v68];
            [v74 scanUpToString:@"0x" intoString:0];
            [v74 scanHexLongLong:&v93];
            v64 = v93;
            v72 = 0;
            if (!v93)
            {
              v93 = v70;
              v64 = v70++;
            }
          }

          v63[3] = v64;
          [v86 addObject:v63];
          v69 = v63;
          v65 = v63;

          [v89 addObject:v71];
          v66 = v71;

          if (v65->super._parent == v80)
          {
            v80->super._count += v96;
            v80->super._numBytes += v50;
          }

          lastObject2 = v66;
          lastObject = v65;
          v63 = v69;
        }

        v25 = 1;
        v41 = lastObject2;
        v42 = lastObject;
        v40 = v74;
        goto LABEL_63;
      }
    }

    else
    {
      v84 = 1;
    }

    objc_autoreleasePoolPop(v43);
    v25 = 1;
    v26 = v74;
    if (!v59)
    {
      goto LABEL_21;
    }

LABEL_64:
    v40 = v26;
    v42 = lastObject;
    v41 = lastObject2;
    if (feof(v23))
    {
      goto LABEL_21;
    }
  }

  v84 = 2;
  v74 = v40;
LABEL_114:

  objc_autoreleasePoolPop(v43);
  lastObject2 = v41;
  lastObject = v42;
  v26 = v74;
LABEL_21:
  fclose(v23);
  if (v25 && !v84)
  {
    v28 = v80;
    [(VMUCallTreeRoot *)v80 allBacktracesHaveBeenAdded];
    v18 = v78;
    v29 = v89;
    if (headerCopy)
    {
      v30 = v78;
      *headerCopy = v78;
    }

    fileCopy = v77;
    if (listCopy)
    {
      *listCopy = string2;
    }

    if (imagesListCopy)
    {
      v31 = string3;
      *imagesListCopy = string3;
      objc_storeStrong(&v80->_binaryImagesDescription, string3);
    }

    goto LABEL_41;
  }

  v33 = headerCopy;
  v32 = listCopy;
  v29 = v89;
  if (v84)
  {
    if (v84 == 2)
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"the provided call tree file %s contains non-UTF8 data\n", v73];
      v35 = MEMORY[0x1E696ABC0];
      v101 = *MEMORY[0x1E696A578];
      v102 = v34;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
      v37 = [v35 errorWithDomain:@"VMUCallTreeRoot" code:1 userInfo:v36];
      v38 = errorCopy;
      if (errorCopy)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v38 = errorCopy;
      if (v27[v98 - 1] == 10)
      {
        v27[v98 - 1] = 0;
      }

      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"parse error with line: '%s'\n", v27];
      v67 = MEMORY[0x1E696ABC0];
      v99 = *MEMORY[0x1E696A578];
      v100 = v34;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
      v37 = [v67 errorWithDomain:@"VMUCallTreeRoot" code:1 userInfo:v36];
      if (errorCopy)
      {
LABEL_32:
        *v38 = v37;
      }
    }

    v33 = headerCopy;
    v32 = listCopy;
    v29 = v89;
  }

  if (v33)
  {
    *v33 = 0;
  }

  fileCopy = v77;
  v18 = v78;
  if (v32)
  {
    *v32 = 0;
  }

  if (imagesListCopy)
  {
    *imagesListCopy = 0;
  }

  v28 = 0;
LABEL_41:
  fclose(0);
  v14 = v28;

  v17 = v14;
LABEL_42:

LABEL_43:
  return v17;
}

- (id)chargeSystemLibrariesToCallersAndKeepBoundaries:(BOOL)boundaries
{
  boundariesCopy = boundaries;
  v26 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  if (selfCopy->_binaryImagesDescription)
  {
    v20 = boundariesCopy;
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    binaryImages = selfCopy->_binaryImages;
    if (!binaryImages)
    {
      v7 = [VMUProcessDescription parseBinaryImagesDescription:selfCopy->_binaryImagesDescription];
      v8 = selfCopy->_binaryImages;
      selfCopy->_binaryImages = v7;

      binaryImages = selfCopy->_binaryImages;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = binaryImages;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [v14 objectForKey:@"ExecutablePath"];
          if (isSystemPath([v15 UTF8String]))
          {
            v16 = [v14 objectForKey:@"DisplayName"];
            if ([v16 length])
            {
              [v5 addObject:v16];
            }
          }
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    if (v20)
    {
      v17 = @"KEEP-BOUNDARIES PLACEHOLDER";
    }

    else
    {
      v17 = 0;
    }

    v18 = [(VMUCallTreeNode *)selfCopy chargeLibrariesInSet:v5 toCaller:0 parentLibrary:v17];

    selfCopy = v18;
  }

  return selfCopy;
}

@end