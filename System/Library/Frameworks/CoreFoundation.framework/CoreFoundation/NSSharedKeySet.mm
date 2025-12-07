@interface NSSharedKeySet
+ (NSSharedKeySet)keySetWithKeys:(id)keys;
- (BOOL)isEqual:(id)equal;
- (NSSharedKeySet)initWithCoder:(id)coder;
- (NSSharedKeySet)initWithKeys:(id *)keys count:(unint64_t)count;
- (id)allKeys;
- (id)debugDescription;
- (id)keyAtIndex:(unint64_t)index;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)indexForKey:(id)key;
- (unint64_t)keySetCount;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSSharedKeySet

- (unint64_t)count
{
  for (i = 0; self; self = self->_subSharedKeySet)
  {
    i += self->_numKey;
  }

  return i;
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  rankTable = self->_rankTable;
  if (rankTable)
  {
    free(rankTable);
  }

  g = self->_g;
  if (g)
  {
    free(g);
  }

  seeds = self->_seeds;
  if (seeds)
  {
    free(seeds);
  }

  keys = self->_keys;
  if (keys)
  {
    numKey = self->_numKey;
    if (numKey)
    {
      v8 = 8 * numKey - 8;
      do
      {
        v9 = *(self->_keys + v8);
        if (v9 >= 1)
        {
        }

        v8 -= 8;
      }

      while (v8 != -8);
      keys = self->_keys;
    }

    free(keys);
  }

  subSharedKeySet = self->_subSharedKeySet;
  if (subSharedKeySet >= 1)
  {
  }

  v11.receiver = self;
  v11.super_class = NSSharedKeySet;
  [(NSSharedKeySet *)&v11 dealloc];
}

+ (NSSharedKeySet)keySetWithKeys:(id)keys
{
  v24 = *MEMORY[0x1E69E9840];
  if (!keys)
  {
    v21 = __CFExceptionProem(self, a2);
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: keys cannot be nil", v21);
    goto LABEL_12;
  }

  if ((_NSIsNSArray(keys) & 1) == 0)
  {
    v17 = __CFExceptionProem(self, a2);
    v22 = objc_opt_class();
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: keys must be a kind of NSArray instead of '%@'", v17, v22);
LABEL_12:
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16), 0];
    objc_exception_throw(v18);
  }

  v6 = [keys count];
  v9 = v6;
  if (v6 >> 60)
  {
    v19 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v6);
    v20 = [NSException exceptionWithName:@"NSGenericException" reason:v19 userInfo:0];
    CFRelease(v19);
    objc_exception_throw(v20);
  }

  if (v6 <= 1)
  {
    v6 = 1;
  }

  v10 = MEMORY[0x1EEE9AC00](v6, v7, v8);
  v12 = &v23 - v11;
  v23 = 0;
  if (v9 >= 0x101)
  {
    v12 = _CFCreateArrayStorage(v10, 0, &v23);
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  [keys getObjects:v12 range:{0, v9, v23, v24}];
  v14 = [[self alloc] initWithKeys:v12 count:v9];
  free(v13);
  return v14;
}

- (NSSharedKeySet)initWithKeys:(id *)keys count:(unint64_t)count
{
  v148 = *MEMORY[0x1E69E9840];
  v141.receiver = self;
  v141.super_class = NSSharedKeySet;
  v6 = [(NSSharedKeySet *)&v141 init];
  v9 = v6;
  if (!v6)
  {
    return v9;
  }

  if (!count)
  {
    v6->_numKey = 0;
    return v9;
  }

  if (count >> 60)
  {
    v128 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", count);
    v129 = [NSException exceptionWithName:@"NSGenericException" reason:v128 userInfo:0];
    CFRelease(v128);
    objc_exception_throw(v129);
  }

  v10 = MEMORY[0x1EEE9AC00](v6, v7, v8);
  v14 = (&v131 - v13);
  v140 = 0;
  v134 = v15;
  if (count > 0x100)
  {
    v136 = _CFCreateArrayStorage(count, 0, &v140);
    MEMORY[0x1EEE9AC00](v136, v18, v19);
    v16 = &v130;
    v139 = 0;
    v17 = _CFCreateArrayStorage(count, 0, &v139);
    v14 = v136;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v10, v11, v12);
    v16 = &v131 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0);
    v136 = 0;
    v17 = 0;
    v139 = 0;
  }

  v135 = v17;
  if (count >= 0x101)
  {
    v20 = v17;
  }

  else
  {
    v20 = v16;
  }

  v138 = malloc_type_malloc(8 * count, 0x100004000313F17uLL);
  v133 = v20;
  if (count == 1)
  {
    v21 = *keys;
    *v14 = *keys;
    v22 = [v21 hash];
    v23 = 0;
    *v138 = v22;
    v24 = 1;
  }

  else
  {
    v25 = [[NSSet alloc] initWithObjects:keys count:count];
    v26 = [(NSSet *)v25 count];
    v27 = malloc_type_malloc(16 * v26, 0x1080040FC6463CFuLL);
    v28 = v14;
    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v29 = [(NSSet *)v25 countByEnumeratingWithState:&v143 objects:v142 count:16];
    if (v29)
    {
      v30 = 0;
      v31 = *v144;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v144 != v31)
          {
            objc_enumerationMutation(v25);
          }

          v33 = *(*(&v143 + 1) + 8 * i);
          v34 = &v27[2 * v30];
          *v34 = v33;
          v34[1] = [v33 hash];
          ++v30;
        }

        v29 = [(NSSet *)v25 countByEnumeratingWithState:&v143 objects:v142 count:16];
      }

      while (v29);
    }

    qsort(v27, v26, 0x10uLL, compareHashesAscending);
    v14 = v28;
    *v28 = *v27;
    *v138 = v27[1];
    v35 = v133;
    v23 = 0;
    if (v26 < 2)
    {
      v24 = 1;
    }

    else
    {
      v36 = v27 + 1;
      v37 = 2;
      v38 = 1;
      v24 = 1;
      do
      {
        v39 = &v27[2 * v38];
        v40 = *v36;
        v36 += 2;
        v41 = *v39;
        if (v39[1] == v40)
        {
          *&v35[8 * v23++] = v41;
        }

        else
        {
          v28[v24] = v41;
          v138[v24++] = v39[1];
        }

        v38 = v37;
        v42 = v26 > v37++;
      }

      while (v42);
    }

    free(v27);
  }

  v9->_numKey = v24;
  v9->_algorithmType = 1;
  v43 = vcvtpd_u64_f64(v24 * 2.125) >> 1;
  v44 = (v43 + 1) | 1;
  if (v43 - 3 > 0xFFFFFFFD)
  {
LABEL_39:
    v47 = v44;
  }

  else
  {
    do
    {
      if (-1431655765 * v44 >= 0x55555556)
      {
        if (v44 < 0x19)
        {
          goto LABEL_39;
        }

        v45 = 11;
        while (v44 % (v45 - 6) && v44 % (v45 - 4))
        {
          v46 = v45 * v45;
          v45 += 6;
          if (v46 > v44)
          {
            goto LABEL_39;
          }
        }
      }

      v47 = v44 + 2;
      v42 = v44 > 1;
      v44 += 2;
    }

    while (v42);
  }

  v9->_M = 2 * v47;
  v9->_factor = v47;
  v131 = v23;
  v137 = v24;
  if (2 * v47 > 0xFE)
  {
    if (2 * v47 > 0xFFFE)
    {
      v48 = 2;
    }

    else
    {
      v48 = 1;
    }

    v9->_select = v48;
  }

  else
  {
    v9->_select = 0;
  }

  v49 = malloc_type_calloc(2uLL, 4uLL, 0x100004052888210uLL);
  v132 = v14;
  v50 = 0;
  v9->_seeds = v49;
  v51 = v137;
  v52 = 2.125;
  while (1)
  {
    arc4random_buf(v9->_seeds, 4uLL);
    arc4random_buf(v9->_seeds + 1, 4uLL);
    if (v50)
    {
      v52 = v52 + 0.125;
      LODWORD(v53) = v9->_numKey;
      v54 = vcvtpd_u64_f64(v52 * v53) >> 1;
      v55 = (v54 + 1) | 1;
      if (v54 - 3 > 0xFFFFFFFD)
      {
LABEL_58:
        v58 = v55;
      }

      else
      {
        do
        {
          if (-1431655765 * v55 >= 0x55555556)
          {
            if (v55 < 0x19)
            {
              goto LABEL_58;
            }

            v56 = 11;
            while (v55 % (v56 - 6) && v55 % (v56 - 4))
            {
              v57 = v56 * v56;
              v56 += 6;
              if (v57 > v55)
              {
                goto LABEL_58;
              }
            }
          }

          v58 = v55 + 2;
          v42 = v55 > 1;
          v55 += 2;
        }

        while (v42);
      }

      v59 = 2 * v58;
      v9->_M = 2 * v58;
      v9->_factor = v58;
      if (2 * v58 < 0xFFFF)
      {
        v60 = 1;
      }

      else
      {
        v60 = 2;
      }

      if (v59 >= 0xFF)
      {
        v61 = v60;
      }

      else
      {
        v61 = 0;
      }

      v9->_select = v61;
    }

    v62 = [[__NSSKGraph alloc] initWithNumberOfVertices:v9->_M numberOfEdges:v51];
    v63 = v138;
    v64 = v51;
    if (v137)
    {
      do
      {
        v65 = *v63++;
        seeds = v9->_seeds;
        v67 = *seeds - 559038729;
        HIDWORD(v68) = v67 + HIDWORD(v65);
        LODWORD(v68) = v67 + HIDWORD(v65);
        LODWORD(seeds) = ((v67 + seeds[1]) ^ (v67 + HIDWORD(v65))) - (v68 >> 18);
        HIDWORD(v68) = seeds;
        LODWORD(v68) = seeds;
        v69 = (seeds ^ (v67 + v65)) - (v68 >> 21);
        HIDWORD(v68) = v69;
        LODWORD(v68) = v69;
        HIDWORD(v68) = (v69 ^ (v67 + HIDWORD(v65))) - (v68 >> 7);
        v70 = HIDWORD(v68);
        LODWORD(v68) = HIDWORD(v68);
        LODWORD(seeds) = (HIDWORD(v68) ^ seeds) - (v68 >> 16);
        HIDWORD(v68) = seeds;
        LODWORD(v68) = seeds;
        HIDWORD(v68) = (seeds ^ v69) - (v68 >> 28);
        LODWORD(v68) = HIDWORD(v68);
        HIDWORD(v68) = (HIDWORD(v68) ^ v70) - (v68 >> 18);
        LODWORD(v68) = HIDWORD(v68);
        [(__NSSKGraph *)v62 addEdgeWithH1:2 * (((HIDWORD(v68) ^ seeds) - (v68 >> 8)) % v9->_factor) withH2:(2 * (HIDWORD(v68) % v9->_factor)) | 1, v131];
        --v64;
      }

      while (v64);
    }

    isAcyclic = [(__NSSKGraph *)v62 isAcyclic];
    if ([(__NSSKGraph *)v62 isEmpty])
    {
      break;
    }

    free(isAcyclic);

    if (++v50 == 1000)
    {
      v62 = 0;
      goto LABEL_86;
    }
  }

  if (!isAcyclic)
  {
LABEL_86:

    v9 = 0;
    v62 = 0;
LABEL_134:

    free(v138);
    free(v135);
    free(v136);
    return v9;
  }

  numOfEdges = [(__NSSKGraph *)v62 numOfEdges];
  v73 = v132;
  v74 = numOfEdges;
  v75 = malloc_type_calloc(v9->_M, 1uLL, 0x100004077774924uLL);
  memset(v75, 2, v9->_M);
  for (; v74; --v74)
  {
    v76 = isAcyclic[v74 - 1];
    var2 = v76->var2;
    v78 = v76->var1[0];
    if (v78 == var2)
    {
      v79 = v75[LODWORD(v76->var1[1])];
    }

    else
    {
      v79 = 1 - v75[v78];
    }

    v75[var2] = v79 & 1;
  }

  v9->_g = v75;
  M = v9->_M;
  select = v9->_select;
  if (select == 2)
  {
    v89 = malloc_type_calloc(v9->_M, 4uLL, 0x100004052888210uLL);
    v83 = v89;
    if (!M)
    {
      goto LABEL_105;
    }

    v90 = 0;
    v91 = 0;
    do
    {
      v89[v90] = v91;
      if (v75[v90] != 2)
      {
        ++v91;
      }

      ++v90;
    }

    while (M != v90);
  }

  else if (select == 1)
  {
    v86 = malloc_type_calloc(v9->_M, 2uLL, 0x1000040BDFB0063uLL);
    v83 = v86;
    if (!M)
    {
      goto LABEL_105;
    }

    v87 = 0;
    v88 = 0;
    do
    {
      v86[v87] = v88;
      if (v75[v87] != 2)
      {
        ++v88;
      }

      ++v87;
    }

    while (M != v87);
  }

  else if (v9->_select)
  {
    v83 = 0;
  }

  else
  {
    v82 = malloc_type_calloc(v9->_M, 1uLL, 0x100004077774924uLL);
    v83 = v82;
    if (!M)
    {
      goto LABEL_105;
    }

    v84 = 0;
    v85 = 0;
    do
    {
      v82[v84] = v85;
      if (v75[v84] != 2)
      {
        ++v85;
      }

      ++v84;
    }

    while (M != v84);
  }

  if (M)
  {
    v92 = v75 - 1;
    v93 = M;
    do
    {
      if (v92[v93] == 2)
      {
        v92[v93] = 0;
      }

      --v93;
    }

    while (v93);
  }

LABEL_105:
  v94 = malloc_type_calloc((M >> 3) + 1, 1uLL, 0x100004077774924uLL);
  v95 = v94;
  if ((M & 0xFFFFFFF8) == 0)
  {
    LODWORD(v96) = 0;
    v100 = M - 2;
    v101 = v75[(M - 1)] != 0;
LABEL_113:
    v102 = v100;
    do
    {
      v101 = (v75[v102] != 0) | (2 * v101);
      if (!v102)
      {
        break;
      }

      --v100;
      --v102;
    }

    while (v100 >= v96);
    goto LABEL_116;
  }

  v96 = 0;
  v97 = 6;
  do
  {
    v98 = 2 * (v75[v96 + 7] != 0);
    v99 = v97;
    do
    {
      v98 = 2 * (v98 | (v75[v99--] != 0));
    }

    while (v99 > v96);
    v94[v96 >> 3] = v98 | (v75[v96] != 0);
    v96 += 8;
    v97 += 8;
  }

  while (v96 < (M & 0xFFFFFFF8));
  v100 = M - 2;
  v101 = v75[(M - 1)] != 0;
  if (M - 2 >= v96)
  {
    goto LABEL_113;
  }

LABEL_116:
  v94[M >> 3] = v101;
  free(v75);
  v9->_g = v95;
  v9->_rankTable = v83;
  result = malloc_type_calloc(v137, 8uLL, 0x80040B8603338uLL);
  v9->_keys = &result->super.isa;
  v104 = v131;
  if (!v137)
  {
LABEL_129:
    if (v104)
    {
      v126 = objc_alloc(objc_opt_class());
      v127 = [v126 initWithKeys:v133 count:v104];
      if (v127)
      {
        v9->_subSharedKeySet = v127;
      }

      else
      {

        v9 = 0;
      }
    }

    free(isAcyclic);
    goto LABEL_134;
  }

  v105 = 0;
  v106 = 1;
  while (1)
  {
    v107 = v9->_seeds;
    factor = v9->_factor;
    rankTable = v9->_rankTable;
    g = v9->_g;
    v111 = v9->_select;
    v112 = v138[v105];
    if (v9->_algorithmType == 1)
    {
      v116 = *v107 - 559038729;
      v115 = v116 + v107[1];
      v114 = v116 + HIDWORD(v112);
    }

    else
    {
      if (v9->_algorithmType)
      {
        break;
      }

      v113 = v107[1];
      v114 = *v107 - 559038733;
      v115 = v114 + v113;
      v116 = v114;
    }

    HIDWORD(v117) = v114;
    LODWORD(v117) = v114;
    v118 = (v115 ^ v114) - (v117 >> 18);
    HIDWORD(v117) = v118;
    LODWORD(v117) = v118;
    v119 = ((v116 + v112) ^ v118) - (v117 >> 21);
    HIDWORD(v117) = v119;
    LODWORD(v117) = v119;
    v120 = (v119 ^ v114) - (v117 >> 7);
    HIDWORD(v117) = v120;
    LODWORD(v117) = v120;
    v121 = (v120 ^ v118) - (v117 >> 16);
    HIDWORD(v117) = v121;
    LODWORD(v117) = v121;
    HIDWORD(v117) = (v121 ^ v119) - (v117 >> 28);
    LODWORD(v117) = HIDWORD(v117);
    HIDWORD(v117) = (HIDWORD(v117) ^ v120) - (v117 >> 18);
    LODWORD(v117) = HIDWORD(v117);
    v122 = 2 * (((HIDWORD(v117) ^ v121) - (v117 >> 8)) % factor);
    v123 = HIDWORD(v117) % factor;
    v147[0] = v122;
    v147[1] = (2 * v123) | 1;
    v124 = v147[((g[(2 * v123) >> 3] >> ((2 * v123) & 6 | 1)) ^ (g[v122 >> 3] >> (v122 & 6))) & 1];
    if (v111 == 2)
    {
      v125 = rankTable[v124];
      goto LABEL_128;
    }

    if (v111 == 1)
    {
      v125 = *(rankTable + v124);
      goto LABEL_128;
    }

    if (v111)
    {
      break;
    }

    v125 = *(rankTable + v124);
LABEL_128:
    result = [v73[v105] copyWithZone:0];
    v9->_keys[v125] = result;
    v105 = v106;
    v42 = v137 > v106++;
    if (!v42)
    {
      goto LABEL_129;
    }
  }

  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v10 = __CFExceptionProem(self, a2);
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: this object can only be encoded by a keyed coder", v10);
    v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11), 0];
    objc_exception_throw(v12);
  }

  [coder encodeInt64:self->_numKey forKey:@"NS.numKey"];
  if (self->_numKey)
  {
    [coder encodeInt32:self->_select forKey:@"NS.select"];
    [coder encodeInt64:self->_factor forKey:@"NS.factor"];
    [coder encodeInt64:*self->_seeds forKey:@"NS.seed0"];
    [coder encodeInt64:self->_seeds[1] forKey:@"NS.seed1"];
    [coder encodeInt64:self->_M forKey:@"NS.M"];
    select = self->_select;
    if (select == 2)
    {
      rankTable = self->_rankTable;
      M = 4 * self->_M;
    }

    else if (select == 1)
    {
      rankTable = self->_rankTable;
      M = 2 * self->_M;
    }

    else
    {
      if (self->_select)
      {
LABEL_11:
        [coder encodeBytes:self->_g length:(self->_M >> 3) + 1 forKey:@"NS.g"];
        [coder encodeObject:self->_subSharedKeySet forKey:@"NS.subskset"];
        [coder encodeObject:+[NSArray arrayWithObjects:count:](NSArray forKey:{"arrayWithObjects:count:", self->_keys, self->_numKey), @"NS.keys"}];
        v9 = self->_algorithmType & 1;

        [coder encodeInteger:v9 forKey:@"NS.algorithmType"];
        return;
      }

      rankTable = self->_rankTable;
      M = self->_M;
    }

    [coder encodeBytes:rankTable length:M forKey:@"NS.rankTable"];
    goto LABEL_11;
  }
}

- (NSSharedKeySet)initWithCoder:(id)coder
{
  v56 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v49 = __CFExceptionProem(self, a2);
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: this object can only be decoded by a keyed coder", v49);
    goto LABEL_8;
  }

  objc_getClass("NSKeyedUnarchiver");
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    coderCopy = coder;
  }

  else
  {
    coderCopy = 0;
  }

  v8 = [coder decodeInt64ForKey:@"NS.numKey"];
  if (v8 >= 0x7FFFFFFF)
  {
    v48 = __CFExceptionProem(self, a2);
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: extreme number of keys", v48);
LABEL_8:
    v10 = _CFAutoreleasePoolAddObject(0, v9);

    [coder failWithError:__archiveIsCorrupt_0(v10)];
    return 0;
  }

  v12 = v8;
  if (!v8)
  {
    return self;
  }

  if (isKindOfClass)
  {
    v13 = objc_opt_new();
    if (!v13)
    {
      v50 = __CFExceptionProem(self, a2);
      v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: unable to unarchive - memory failure", v50);
      goto LABEL_8;
    }

    v14 = v13;
    [coder replaceObject:self withObject:v13];
  }

  else
  {
    v14 = 0;
  }

  v15 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NS.subskset"];
  if (v15)
  {
    v16 = objc_opt_class();
    if (v16 != objc_opt_class())
    {
      v17 = __CFExceptionProem(self, a2);
      v18 = objc_opt_class();
      v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: unexpected shared key set class: %@", v17, v18);
      v20 = _CFAutoreleasePoolAddObject(0, v19);

      [coder failWithError:__archiveIsCorrupt_0(v20)];
      goto LABEL_21;
    }

    self->_subSharedKeySet = v15;
    if (v15 >= 1)
    {
      v25 = v15;
    }

LABEL_28:
    v24 = 1;
    if (!v14)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (![coder error])
  {
    self->_subSharedKeySet = 0;
    goto LABEL_28;
  }

  v21 = __CFExceptionProem(self, a2);
  v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: unable to unarchive - invalid class", v21);
  v23 = _CFAutoreleasePoolAddObject(0, v22);

  [coder failWithError:__archiveIsCorrupt_0(v23)];
LABEL_21:
  v24 = 0;
  if (v14)
  {
LABEL_29:
    [coderCopy replaceObject:v14 withObject:self];
  }

LABEL_30:
  if (!v24)
  {
    return 0;
  }

  v26 = objc_lookUpClass("NSArray");
  objc_lookUpClass("NSDictionary");
  block = MEMORY[0x1E69E9820];
  v52 = 3221225472;
  v53 = __32__NSSharedKeySet_initWithCoder___block_invoke;
  v54 = &unk_1E6D81EC0;
  v55 = v26;
  if (initWithCoder__onceToken_0 != -1)
  {
    dispatch_once(&initWithCoder__onceToken_0, &block);
  }

  allowedClasses = [coder allowedClasses];
  v28 = [objc_msgSend(allowedClasses setByAddingObjectsFromSet:{initWithCoder__oPlistClasses_0), "mutableCopy"}];
  [v28 removeObject:objc_opt_class()];
  v29 = [coder decodeObjectOfClasses:v28 forKey:@"NS.keys"];

  if (!v29 && [coder error])
  {
    v38 = __CFExceptionProem(self, a2);
    v39 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: unable to unarchive - invalid class", v38);
    v40 = _CFAutoreleasePoolAddObject(0, v39);

    [coder failWithError:__archiveIsCorrupt_0(v40)];
    return 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = objc_opt_class();
    v31 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"unexpected mutable keys (%@)", v30);
    v32 = _CFAutoreleasePoolAddObject(0, v31);

    [coder failWithError:__archiveIsCorrupt_0(v32)];
    return 0;
  }

  if ((_NSIsNSArray(v29) & 1) == 0)
  {
    v41 = objc_opt_class();
    v42 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"unexpected keys (%@)", v41);
    v43 = _CFAutoreleasePoolAddObject(0, v42);

    [coder failWithError:__archiveIsCorrupt_0(v43)];
    return 0;
  }

  v33 = [v29 count];
  if (v33 != v12)
  {
    v44 = [v29 count];
    v45 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"key count mismatch %lu vs %u", v44, v12, block, v52, v53, v54, v55);
    v46 = _CFAutoreleasePoolAddObject(0, v45);

    [coder failWithError:__archiveIsCorrupt_0(v46)];
    return 0;
  }

  v34 = v33 - 1;
  while (v34 != -1)
  {
    [v29 objectAtIndexedSubscript:v34];
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      --v34;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        continue;
      }
    }

    v35 = objc_opt_class();
    v36 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"unexpected recursive keys (%@)", v35);
    v37 = _CFAutoreleasePoolAddObject(0, v36);

    [coder failWithError:__archiveIsCorrupt_0(v37)];
    return 0;
  }

  v47 = [(NSArray *)NSMutableArray arrayWithArray:v29];
  [(NSMutableArray *)v47 addObjectsFromArray:[(NSSharedKeySet *)self->_subSharedKeySet allKeys]];

  return [NSSharedKeySet keySetWithKeys:v47];
}

NSSet *__32__NSSharedKeySet_initWithCoder___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_lookUpClass("NSString");
  v3 = objc_lookUpClass("NSNumber");
  v4 = objc_lookUpClass("NSDate");
  v5 = [NSSet setWithObjects:v1, v2, v3, v4, objc_lookUpClass("NSURL"), 0];
  initWithCoder__oPlistClasses_0 = v5;

  return v5;
}

- (id)allKeys
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (self->_numKey)
  {
    selfCopy = self;
    v3 = [(NSSharedKeySet *)self count];
    if (v3 >> 60)
    {
      v19 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v3);
      v20 = [NSException exceptionWithName:@"NSGenericException" reason:v19 userInfo:0];
      CFRelease(v19);
      objc_exception_throw(v20);
    }

    if (v3 <= 1)
    {
      v3 = 1;
    }

    v6 = MEMORY[0x1EEE9AC00](v3, v4, v5);
    v8 = v21 - v7;
    v21[0] = 0;
    if (v9 >= 0x101)
    {
      v8 = _CFCreateArrayStorage(v6, 0, v21);
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    LODWORD(v12) = 0;
    do
    {
      memmove(&v8[8 * v12], selfCopy->_keys, 8 * selfCopy->_numKey);
      v12 = (selfCopy->_numKey + v12);
      selfCopy = selfCopy->_subSharedKeySet;
    }

    while (selfCopy);
    if (v10)
    {
      if (v12)
      {
        v13 = v10;
        v14 = v12;
        do
        {
          v15 = *v13++;
          --v14;
        }

        while (v14);
      }

      v16 = [NSArray alloc];
      v17 = [(NSArray *)v16 _initByAdoptingBuffer:v10 count:v12 size:v12, v21[0]];
    }

    else
    {
      v18 = [NSArray alloc];
      v17 = [(NSArray *)v18 initWithObjects:v8 count:v12, v21[0]];
    }

    return v17;
  }

  else
  {

    return +[NSArray array];
  }
}

- (unint64_t)indexForKey:(id)key
{
  v32 = *MEMORY[0x1E69E9840];
  if (self->_numKey)
  {
    selfCopy = self;
    v5 = [key hash];
    v6 = v5;
    v7 = 0;
    v8 = HIDWORD(v5);
    do
    {
      numKey = selfCopy->_numKey;
      if (!numKey)
      {
        goto LABEL_24;
      }

      seeds = selfCopy->_seeds;
      factor = selfCopy->_factor;
      if (selfCopy->_algorithmType == 1)
      {
        v15 = *seeds - 559038729;
        v14 = v15 + seeds[1];
        v13 = v15 + v8;
      }

      else
      {
        if (selfCopy->_algorithmType)
        {
          __break(1u);
        }

        v12 = seeds[1];
        v13 = *seeds - 559038733;
        v14 = v13 + v12;
        v15 = v13;
      }

      HIDWORD(v16) = v13;
      LODWORD(v16) = v13;
      v17 = (v14 ^ v13) - (v16 >> 18);
      HIDWORD(v16) = v17;
      LODWORD(v16) = v17;
      v18 = ((v15 + v6) ^ v17) - (v16 >> 21);
      HIDWORD(v16) = v18;
      LODWORD(v16) = v18;
      v19 = (v18 ^ v13) - (v16 >> 7);
      HIDWORD(v16) = v19;
      LODWORD(v16) = v19;
      v20 = (v19 ^ v17) - (v16 >> 16);
      HIDWORD(v16) = v20;
      LODWORD(v16) = v20;
      HIDWORD(v16) = (v20 ^ v18) - (v16 >> 28);
      LODWORD(v16) = HIDWORD(v16);
      HIDWORD(v16) = (HIDWORD(v16) ^ v19) - (v16 >> 18);
      LODWORD(v16) = HIDWORD(v16);
      v21 = 2 * (((HIDWORD(v16) ^ v20) - (v16 >> 8)) % factor);
      v22 = HIDWORD(v16) % factor;
      v23 = (2 * (HIDWORD(v16) % factor)) | 1;
      v31 = __PAIR64__(v23, v21);
      M = selfCopy->_M;
      if (v21 >= M || v23 >= M)
      {
        goto LABEL_24;
      }

      v26 = *(&v31 + (((selfCopy->_g[(2 * v22) >> 3] >> (v23 & 7)) ^ (selfCopy->_g[v21 >> 3] >> (v21 & 6))) & 1));
      if (v26 >= M)
      {
        goto LABEL_24;
      }

      select = selfCopy->_select;
      if (select == 2)
      {
        v28 = *(selfCopy->_rankTable + v26);
      }

      else if (select == 1)
      {
        v28 = *(selfCopy->_rankTable + v26);
      }

      else
      {
        if (selfCopy->_select)
        {
          goto LABEL_24;
        }

        v28 = *(selfCopy->_rankTable + v26);
      }

      if (v28 < numKey)
      {
        v29 = selfCopy->_keys[v28];
        if (v29)
        {
          if (v29 == key || ([key isEqual:{v31, v32}] & 1) != 0)
          {
            return v28 + v7;
          }

          LODWORD(numKey) = selfCopy->_numKey;
        }
      }

LABEL_24:
      v7 += numKey;
      selfCopy = selfCopy->_subSharedKeySet;
    }

    while (selfCopy);
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (id)keyAtIndex:(unint64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL || *(self + 10) == 0 || self == 0)
  {
    return 0;
  }

  while (1)
  {
    v5 = *(self + 10);
    v6 = index >= v5;
    v7 = index - v5;
    if (!v6)
    {
      break;
    }

    self = *(self + 8);
    index = v7;
    if (!self)
    {
      return self;
    }
  }

  return *(*(self + 7) + 8 * index);
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  v9 = [(NSSharedKeySet *)self count];
  var0 = state->var0;
  if (state->var0 == v9)
  {
    return 0;
  }

  v11 = 0;
  if (count)
  {
    v12 = v9;
    if (var0 < v9)
    {
      v11 = 0;
      do
      {
        objects[v11++] = [(NSSharedKeySet *)self keyAtIndex:var0++];
      }

      while (v11 < count && var0 < v12);
    }
  }

  state->var0 = var0;
  state->var1 = objects;
  state->var2 = &countByEnumeratingWithState_objects_count__const_mu_8;
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  v35 = *MEMORY[0x1E69E9840];
  if (self == equal)
  {
    return 1;
  }

  if (equal)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSSharedKeySet *)self count];
      if (v5 == [equal count])
      {
        keySetCount = [(NSSharedKeySet *)self keySetCount];
        if (keySetCount == [equal keySetCount])
        {
          allKeys = [(NSSharedKeySet *)self allKeys];
          allKeys2 = [equal allKeys];
          v9 = [allKeys count];
          if (v9 == [allKeys2 count])
          {
            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            v10 = [allKeys countByEnumeratingWithState:&v31 objects:v30 count:16];
            if (v10)
            {
              v11 = v10;
              v12 = 0;
              v13 = *v32;
LABEL_9:
              v14 = 0;
              v12 += v11;
              while (1)
              {
                if (*v32 != v13)
                {
                  objc_enumerationMutation(allKeys);
                }

                if ([equal indexForKey:*(*(&v31 + 1) + 8 * v14)] == 0x7FFFFFFFFFFFFFFFLL)
                {
                  break;
                }

                if (v11 == ++v14)
                {
                  v11 = [allKeys countByEnumeratingWithState:&v31 objects:v30 count:16];
                  if (v11)
                  {
                    goto LABEL_9;
                  }

                  goto LABEL_18;
                }
              }
            }

            else
            {
              v12 = 0;
LABEL_18:
              if (v12 == v5)
              {
                v28 = 0u;
                v29 = 0u;
                v26 = 0u;
                v27 = 0u;
                v16 = [allKeys2 countByEnumeratingWithState:&v26 objects:v25 count:16];
                if (v16)
                {
                  v17 = v16;
                  v18 = 0;
                  v19 = *v27;
LABEL_21:
                  v20 = 0;
                  v18 += v17;
                  while (1)
                  {
                    if (*v27 != v19)
                    {
                      objc_enumerationMutation(allKeys2);
                    }

                    if ([(NSSharedKeySet *)self indexForKey:*(*(&v26 + 1) + 8 * v20)]== 0x7FFFFFFFFFFFFFFFLL)
                    {
                      break;
                    }

                    if (v17 == ++v20)
                    {
                      v17 = [allKeys2 countByEnumeratingWithState:&v26 objects:v25 count:16];
                      if (v17)
                      {
                        goto LABEL_21;
                      }

                      goto LABEL_29;
                    }
                  }
                }

                else
                {
                  v18 = 0;
LABEL_29:
                  if (v18 == v5)
                  {
                    maximumIndex = [(NSSharedKeySet *)self maximumIndex];
                    if (maximumIndex == [equal maximumIndex])
                    {
                      v22 = 0;
                      while (1)
                      {
                        v23 = [equal keyAtIndex:v22];
                        if (([v23 isEqual:{-[NSSharedKeySet keyAtIndex:](self, "keyAtIndex:", -[NSSharedKeySet indexForKey:](self, "indexForKey:", v23))}] & 1) == 0)
                        {
                          break;
                        }

                        if (++v22 > maximumIndex)
                        {
                          isEmpty = [(NSSharedKeySet *)self isEmpty];
                          return isEmpty ^ [equal isEmpty] ^ 1;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

- (unint64_t)keySetCount
{
  for (i = 0; self; self = self->_subSharedKeySet)
  {
    ++i;
  }

  return i;
}

- (id)debugDescription
{
  v22 = *MEMORY[0x1E69E9840];
  string = [(objc_class *)objc_lookUpClass("NSMutableString") string];
  [string appendFormat:@"<%@: %p>\n", objc_opt_class(), self];
  [string appendFormat:@"  numKey = %u\n", self->_numKey];
  [string appendFormat:@"  M = %u (should always be even)\n", self->_M];
  [string appendFormat:@"  factor = %u (should always be prime)\n", self->_factor];
  [string appendFormat:@"  keys = [\n"];
  if (self->_numKey)
  {
    v4 = 0;
    do
    {
      v5 = self->_keys[v4];
      [string appendFormat:@"    <%@: %p>, 0x%lx\n", objc_opt_class(), v5, objc_msgSend(v5, "hash")];
      ++v4;
    }

    while (v4 < self->_numKey);
  }

  [string appendFormat:@"  ]\n"];
  [string appendFormat:@"  seeds[0] = 0x%xu\n", *self->_seeds];
  [string appendFormat:@"  seeds[1] = 0x%xu\n", self->_seeds[1]];
  select = self->_select;
  if (self->_select)
  {
    if (select == 1)
    {
      v7 = @"unsigned short";
    }

    else
    {
      v7 = @"unknown";
      if (select == 2)
      {
        v7 = @"unsigned int";
      }
    }
  }

  else
  {
    v7 = @"unsigned char";
  }

  [string appendFormat:@"  ranktable = %p (select = %u (%@)) [\n", self->_rankTable, self->_select, v7];
  v8 = self->_select;
  if (self->_select)
  {
    if (v8 == 1)
    {
      if (self->_M)
      {
        v10 = 0;
        do
        {
          [string appendFormat:@"    %d - %u\n", v10, *(self->_rankTable + v10)];
          ++v10;
        }

        while (v10 < self->_M);
      }
    }

    else if (v8 == 2 && self->_M)
    {
      v9 = 0;
      do
      {
        [string appendFormat:@"    %d - %u\n", v9, *(self->_rankTable + v9)];
        ++v9;
      }

      while (v9 < self->_M);
    }
  }

  else if (self->_M)
  {
    v11 = 0;
    do
    {
      [string appendFormat:@"    %d - %u\n", v11, *(self->_rankTable + v11)];
      ++v11;
    }

    while (v11 < self->_M);
  }

  [string appendFormat:@"  ]\n"];
  if (self->_algorithmType)
  {
    v12 = @"use_full_hash_64";
  }

  else
  {
    v12 = @"clamp_hash_to_32";
  }

  [string appendFormat:@"  algorithmType: %@\n", v12];
  [string appendFormat:@"  g = %p\n", self->_g];
  [string appendFormat:@"    packed bits (binary):\n      "];
  v13 = 0;
  do
  {
    v14 = vdupq_n_s32(self->_g[v13]);
    v15.i64[0] = 0x31003100310031;
    v15.i64[1] = 0x31003100310031;
    v16.i64[0] = 0x30003000300030;
    v16.i64[1] = 0x30003000300030;
    v21 = vbslq_s8(vuzp1q_s16(vceqzq_s32(vandq_s8(v14, xmmword_183447FE0)), vceqzq_s32(vandq_s8(v14, xmmword_183447FF0))), v16, v15);
    [string appendFormat:@"%@ ", -[objc_class stringWithCharacters:length:](objc_lookUpClass("NSString"), "stringWithCharacters:length:", &v21, 8)];
  }

  while (v13++ < self->_M >> 3);
  [string appendFormat:@"\n"];
  if (self->_subSharedKeySet)
  {
    v18 = objc_lookUpClass("NSMutableString");
    [string appendFormat:@"  subSharedKeySet = %@\n", -[objc_class stringWithFormat:](v18, "stringWithFormat:", @"<%@: %p>", objc_opt_class(), self->_subSharedKeySet)];
  }

  else
  {
    [string appendFormat:@"  subSharedKeySet = nil\n", v20];
  }

  return string;
}

@end