@interface VMUMutableClassInfo
- (void)addComplexAction:(id)action withEvaluator:(id)evaluator;
- (void)addVariant:(id)variant forField:(id)field withEvaluator:(id)evaluator;
- (void)addVariantRecursively:(id)recursively forField:(id)field atOffset:(unsigned int)offset withEvaluator:(id)evaluator;
- (void)mutateTypeFieldsRecursivelyWithBlock:(id)block;
- (void)mutateTypeFieldsWithBlock:(id)block;
- (void)setBinaryPath:(id)path;
- (void)setDefaultScanType:(unsigned int)type;
- (void)setDisplayName:(id)name;
- (void)setInfoType:(unsigned int)type;
- (void)setInstanceSize:(unsigned int)size;
- (void)setIsCoreMediaFigObject:(BOOL)object;
- (void)setIsRootClass:(BOOL)class;
- (void)setSuperclassInfo:(id)info;
- (void)setSuperclassOffset:(unsigned int)offset;
- (void)setVariantScanType:(unsigned int)type withEvaluator:(id)evaluator;
@end

@implementation VMUMutableClassInfo

- (void)setDisplayName:(id)name
{
  v3.receiver = self;
  v3.super_class = VMUMutableClassInfo;
  [(VMUClassInfo *)&v3 _setDisplayName:name];
}

- (void)setBinaryPath:(id)path
{
  v3.receiver = self;
  v3.super_class = VMUMutableClassInfo;
  [(VMUClassInfo *)&v3 _setBinaryPath:path sanitize:1];
}

- (void)setSuperclassInfo:(id)info
{
  v3.receiver = self;
  v3.super_class = VMUMutableClassInfo;
  [(VMUClassInfo *)&v3 _setSuperclassInfo:info];
}

- (void)setIsCoreMediaFigObject:(BOOL)object
{
  v3.receiver = self;
  v3.super_class = VMUMutableClassInfo;
  [(VMUClassInfo *)&v3 _setIsCoreMediaFigObject:object];
}

- (void)setDefaultScanType:(unsigned int)type
{
  v3.receiver = self;
  v3.super_class = VMUMutableClassInfo;
  [(VMUClassInfo *)&v3 _setDefaultScanType:*&type];
}

- (void)setInstanceSize:(unsigned int)size
{
  v3.receiver = self;
  v3.super_class = VMUMutableClassInfo;
  [(VMUClassInfo *)&v3 _setInstanceSize:*&size];
}

- (void)setSuperclassOffset:(unsigned int)offset
{
  v3.receiver = self;
  v3.super_class = VMUMutableClassInfo;
  [(VMUClassInfo *)&v3 _setSuperclassOffset:*&offset];
}

- (void)setIsRootClass:(BOOL)class
{
  v3.receiver = self;
  v3.super_class = VMUMutableClassInfo;
  [(VMUClassInfo *)&v3 _setIsRootClass:class];
}

- (void)setInfoType:(unsigned int)type
{
  v3.receiver = self;
  v3.super_class = VMUMutableClassInfo;
  [(VMUClassInfo *)&v3 _setInfoType:*&type];
}

- (void)mutateTypeFieldsWithBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__VMUMutableClassInfo_mutateTypeFieldsWithBlock___block_invoke;
  v6[3] = &unk_1E8278BA8;
  v7 = blockCopy;
  v5 = blockCopy;
  [(VMUClassInfo *)self enumerateTypeFieldsWithBlock:v6];
}

- (void)mutateTypeFieldsRecursivelyWithBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__VMUMutableClassInfo_mutateTypeFieldsRecursivelyWithBlock___block_invoke;
  v6[3] = &unk_1E8278BA8;
  v7 = blockCopy;
  v5 = blockCopy;
  [(VMUClassInfo *)self enumerateTypeFieldsWithBlock:v6];
}

void __60__VMUMutableClassInfo_mutateTypeFieldsRecursivelyWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
  [v3 mutateTypeFieldsRecursivelyWithBlock:*(a1 + 32) parentOffset:{objc_msgSend(v3, "offset")}];
}

- (void)addVariant:(id)variant forField:(id)field withEvaluator:(id)evaluator
{
  variantCopy = variant;
  fieldCopy = field;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__VMUMutableClassInfo_addVariant_forField_withEvaluator___block_invoke;
  aBlock[3] = &unk_1E8278BD0;
  v10 = fieldCopy;
  v16 = v10;
  v11 = variantCopy;
  v17 = v11;
  evaluatorCopy = evaluator;
  v13 = _Block_copy(aBlock);
  v14.receiver = self;
  v14.super_class = VMUMutableClassInfo;
  [(VMUClassInfo *)&v14 _addVariantAction:v13 withEvaluator:evaluatorCopy];
}

void __57__VMUMutableClassInfo_addVariant_forField_withEvaluator___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v7[0] = *(a1 + 40);
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [v3 replaceField:v4 withFields:v5];
  }

  else
  {
    v6 = *(a1 + 40);
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];
    [v3 addFields:v5];
  }
}

- (void)addVariantRecursively:(id)recursively forField:(id)field atOffset:(unsigned int)offset withEvaluator:(id)evaluator
{
  recursivelyCopy = recursively;
  fieldCopy = field;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__VMUMutableClassInfo_addVariantRecursively_forField_atOffset_withEvaluator___block_invoke;
  aBlock[3] = &unk_1E8278BF8;
  v12 = fieldCopy;
  v18 = v12;
  offsetCopy = offset;
  v13 = recursivelyCopy;
  v19 = v13;
  evaluatorCopy = evaluator;
  v15 = _Block_copy(aBlock);
  v16.receiver = self;
  v16.super_class = VMUMutableClassInfo;
  [(VMUClassInfo *)&v16 _addVariantAction:v15 withEvaluator:evaluatorCopy];
}

void __77__VMUMutableClassInfo_addVariantRecursively_forField_atOffset_withEvaluator___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    [v3 _replaceFieldRecursively:v5 atOffset:*(a1 + 48) withField:*(a1 + 40)];
  }

  else
  {
    v7[0] = *(a1 + 40);
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [v4 addFields:v6];
  }
}

- (void)addComplexAction:(id)action withEvaluator:(id)evaluator
{
  v4.receiver = self;
  v4.super_class = VMUMutableClassInfo;
  [(VMUClassInfo *)&v4 _addComplexAction:action withEvaluator:evaluator];
}

- (void)setVariantScanType:(unsigned int)type withEvaluator:(id)evaluator
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__VMUMutableClassInfo_setVariantScanType_withEvaluator___block_invoke;
  aBlock[3] = &__block_descriptor_36_e29_v16__0__VMUMutableClassInfo_8l;
  typeCopy = type;
  evaluatorCopy = evaluator;
  v6 = _Block_copy(aBlock);
  v7.receiver = self;
  v7.super_class = VMUMutableClassInfo;
  [(VMUClassInfo *)&v7 _addVariantAction:v6 withEvaluator:evaluatorCopy];
}

@end