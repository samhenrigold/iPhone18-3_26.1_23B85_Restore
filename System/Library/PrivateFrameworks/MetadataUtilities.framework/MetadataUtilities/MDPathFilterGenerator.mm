@interface MDPathFilterGenerator
- (MDPathFilterGenerator)initWithDefaultFieldsAndValues:(int *)values ignoreFields:(int *)fields mappedPrefixes:(id)prefixes hiddenExtensions:(id)extensions mappedExtensions:(id)mappedExtensions;
- (void)addMappedExtensions:(id)extensions;
- (void)addNamed:(id)named field:(int)field value:(int)value hasAuxValue:(BOOL)auxValue auxValue:(unint64_t)a7 forPath:(id)path permitLink:(BOOL)link copyParentWildcardLink:(BOOL)self0;
- (void)dealloc;
- (void)setAtBundleField:(unsigned int)field inBundleField:(unsigned int)bundleField;
@end

@implementation MDPathFilterGenerator

- (MDPathFilterGenerator)initWithDefaultFieldsAndValues:(int *)values ignoreFields:(int *)fields mappedPrefixes:(id)prefixes hiddenExtensions:(id)extensions mappedExtensions:(id)mappedExtensions
{
  v31 = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = MDPathFilterGenerator;
  v11 = [(MDPathFilterGenerator *)&v30 init:values];
  v12 = v11;
  if (v11)
  {
    if (fields)
    {
      v13 = *fields;
      if (*fields)
      {
        ignoreMask = v11->_ignoreMask;
        v15 = fields + 1;
        do
        {
          ignoreMask |= ~(-1 << (v13 >> 6)) << v13;
          v16 = *v15++;
          v13 = v16;
        }

        while (v16);
        v11->_ignoreMask = ignoreMask;
      }
    }

    if (values)
    {
      v17 = *values;
      if (*values)
      {
        v18 = v11->_ignoreMask;
        v19 = values + 2;
        do
        {
          v20 = ~(-1 << (v17 >> 6));
          v21 = v20 << v17;
          if ((v18 & (v20 << v17)) == 0)
          {
            v22 = v11->_defaultMask | v21;
            v11->_defaultRule |= (*(v19 - 1) & v20) << (v17 & 0x3F);
            v11->_defaultMask = v22;
            if ((v17 & 0x1000) != 0)
            {
              v11->_inheritMask |= v21;
            }
          }

          v23 = *v19;
          v19 += 2;
          v17 = v23;
        }

        while (v23);
      }
    }

    v11->_namedRoots = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12->_namedRootArray = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12->_namedRootIndexes = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12->_auxValueArray = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12->_processExtensions = (prefixes | mappedExtensions) != 0;
    v24 = objc_alloc(MEMORY[0x1E695DF20]);
    v25 = MEMORY[0x1E695E0F8];
    if (prefixes)
    {
      prefixesCopy = prefixes;
    }

    else
    {
      prefixesCopy = MEMORY[0x1E695E0F8];
    }

    v12->_namedLinkPrefixesDictionary = [v24 initWithDictionary:prefixesCopy];
    v27 = objc_alloc(MEMORY[0x1E695DF90]);
    if (mappedExtensions)
    {
      mappedExtensionsCopy = mappedExtensions;
    }

    else
    {
      mappedExtensionsCopy = v25;
    }

    v12->_namedLinkExtensionsDictionary = [v27 initWithDictionary:mappedExtensionsCopy];
  }

  return v12;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = MDPathFilterGenerator;
  [(MDPathFilterGenerator *)&v3 dealloc];
}

- (void)addMappedExtensions:(id)extensions
{
  namedLinkExtensionsDictionary = self->_namedLinkExtensionsDictionary;

  [(NSMutableDictionary *)namedLinkExtensionsDictionary addEntriesFromDictionary:extensions];
}

- (void)setAtBundleField:(unsigned int)field inBundleField:(unsigned int)bundleField
{
  v4 = vand_s8(__PAIR64__(bundleField, field), 0x3F0000003FLL);
  v5 = vand_s8(vshr_n_u32(__PAIR64__(bundleField, field), 6uLL), 0x3F0000003FLL);
  v6.i64[0] = v5.u32[0];
  v6.i64[1] = v5.u32[1];
  v7.i64[0] = -1;
  v7.i64[1] = -1;
  v8 = vmvnq_s8(vshlq_u64(v7, v6));
  v6.i64[0] = v4.u32[0];
  v6.i64[1] = v4.u32[1];
  *&self->_atBundleMask = vshlq_u64(v8, v6);
}

- (void)addNamed:(id)named field:(int)field value:(int)value hasAuxValue:(BOOL)auxValue auxValue:(unint64_t)a7 forPath:(id)path permitLink:(BOOL)link copyParentWildcardLink:(BOOL)self0
{
  pathCopy = path;
  auxValueCopy = auxValue;
  v11 = *&value;
  v12 = *&field;
  if (!field || (self->_ignoreMask & (~(-1 << (field >> 6)) << field)) == 0)
  {
      v20 = &unk_1F29ABE98;
    }

    else
    {
      if (named[1] != 1)
      {
        goto LABEL_41;
      }
@end