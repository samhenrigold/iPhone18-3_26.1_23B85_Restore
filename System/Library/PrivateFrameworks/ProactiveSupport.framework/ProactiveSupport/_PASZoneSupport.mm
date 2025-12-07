@interface _PASZoneSupport
+ (id)copyArray:(id)array toZone:(_NSZone *)zone;
+ (id)copyData:(id)data toZone:(_NSZone *)zone;
+ (id)copyDate:(id)date toZone:(_NSZone *)zone;
+ (id)copyDictionary:(id)dictionary toZone:(_NSZone *)zone;
+ (id)copyNumber:(id)number toZone:(_NSZone *)zone;
+ (id)copySet:(id)set toZone:(_NSZone *)zone;
+ (id)copyString:(id)string toZone:(_NSZone *)zone;
+ (id)copyUUID:(id)d toZone:(_NSZone *)zone;
+ (id)deepCopyObject:(id)object toZone:(_NSZone *)zone strategy:(id)strategy;
+ (id)mutableCopyArray:(id)array toZone:(_NSZone *)zone;
+ (id)mutableCopyData:(id)data toZone:(_NSZone *)zone;
+ (id)mutableCopyDictionary:(id)dictionary toZone:(_NSZone *)zone;
+ (id)mutableCopySet:(id)set toZone:(_NSZone *)zone;
+ (id)mutableCopyString:(id)string toZone:(_NSZone *)zone;
+ (id)newMutableArrayInZone:(_NSZone *)zone capacity:(unint64_t)capacity;
+ (id)newMutableDataInZone:(_NSZone *)zone capacity:(unint64_t)capacity;
+ (id)newMutableDataInZone:(_NSZone *)zone length:(unint64_t)length;
+ (id)newMutableDictionaryInZone:(_NSZone *)zone capacity:(unint64_t)capacity;
+ (id)newMutableSetInZone:(_NSZone *)zone capacity:(unint64_t)capacity;
+ (id)newMutableStringInZone:(_NSZone *)zone capacity:(unint64_t)capacity;
@end

@implementation _PASZoneSupport

+ (id)deepCopyObject:(id)object toZone:(_NSZone *)zone strategy:(id)strategy
{
  v55 = *MEMORY[0x1E69E9840];
  strategyCopy = strategy;
  objectCopy = object;
  v10 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = strategyCopy;
    v36 = v10;
    v11 = objectCopy;
    v12 = [self newMutableArrayInZone:zone capacity:{objc_msgSend(v11, "count")}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v50;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v50 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [self deepCopyObject:*(*(&v49 + 1) + 8 * i) toZone:zone strategy:*&strategy];
          [v12 addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v15);
    }

    if (v34)
    {
      v19 = v12;
    }

    else
    {
      v19 = [self copyArray:v12 toZone:zone];
    }

    v24 = v19;
    v10 = v36;
LABEL_16:

    goto LABEL_52;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = objectCopy;
    v21 = [self newMutableDictionaryInZone:zone capacity:{objc_msgSend(v20, "count")}];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __50___PASZoneSupport_deepCopyObject_toZone_strategy___block_invoke;
    v42[3] = &unk_1E77F1BB8;
    selfCopy = self;
    zoneCopy = zone;
    v46 = strategyCopy;
    v48 = *(&strategy + 3);
    v47 = *&strategy >> 8;
    v22 = v21;
    v43 = v22;
    [v20 enumerateKeysAndObjectsUsingBlock:v42];

    if ((strategyCopy & 2) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = [self copyDictionary:v22 toZone:zone];
    }

    v24 = v23;

    goto LABEL_52;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = strategyCopy;
    v37 = v10;
    v25 = objectCopy;
    v12 = [self newMutableSetInZone:zone capacity:{objc_msgSend(v25, "count")}];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v13 = v25;
    v26 = [v13 countByEnumeratingWithState:&v38 objects:v53 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v39;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v39 != v28)
          {
            objc_enumerationMutation(v13);
          }

          v30 = [self deepCopyObject:*(*(&v38 + 1) + 8 * j) toZone:zone strategy:*&strategy];
          [v12 addObject:v30];
        }

        v27 = [v13 countByEnumeratingWithState:&v38 objects:v53 count:16];
      }

      while (v27);
    }

    v10 = v37;
    if ((v35 & 4) != 0)
    {
      v31 = v12;
    }

    else
    {
      v31 = [self copySet:v12 toZone:zone];
    }

    v24 = v31;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ((strategyCopy & 0x10) != 0)
    {
      v32 = [self mutableCopyData:objectCopy toZone:zone];
    }

    else
    {
      v32 = [self copyData:objectCopy toZone:zone];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ((strategyCopy & 8) != 0)
      {
        v32 = [self mutableCopyString:objectCopy toZone:zone];
      }

      else
      {
        v32 = [self copyString:objectCopy toZone:zone];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = [self copyNumber:objectCopy toZone:zone];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = [self copyDate:objectCopy toZone:zone];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v32 = [self copyUUID:objectCopy toZone:zone];
          }

          else if ((strategyCopy & 0x20) != 0 && [objectCopy conformsToProtocol:&unk_1F1B32940])
          {
            v32 = [objectCopy mutableCopyWithZone:zone];
          }

          else if ([objectCopy conformsToProtocol:&unk_1F1B32328])
          {
            v32 = [objectCopy copyWithZone:zone];
          }

          else
          {
            v32 = objectCopy;
          }
        }
      }
    }
  }

  v24 = v32;
LABEL_52:
  objc_autoreleasePoolPop(v10);

  return v24;
}

+ (id)copyUUID:(id)d toZone:(_NSZone *)zone
{
  dCopy = d;
  if (!zone || MEMORY[0x1AC5662F0]() == zone)
  {
    v8 = [dCopy copy];
  }

  else
  {
    v11 = CFUUIDGetUUIDBytes(dCopy);
    v8 = CFUUIDCreateFromUUIDBytes(zone, v11);
    if (!v8)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_PASZoneSupport.m" lineNumber:258 description:@"Unexpected CFUUIDCreateFromUUIDBytes() failure"];
    }
  }

  return v8;
}

+ (id)copyDate:(id)date toZone:(_NSZone *)zone
{
  dateCopy = date;
  if (zone && MEMORY[0x1AC5662F0]() != zone && malloc_size(dateCopy))
  {
    v8 = MEMORY[0x1AC565F20](dateCopy);
    v9 = CFDateCreate(zone, v8);
    if (!v9)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_PASZoneSupport.m" lineNumber:246 description:@"Unexpected CFDateCreate() failure"];
    }
  }

  else
  {
    v9 = [dateCopy copy];
  }

  return v9;
}

+ (id)copyNumber:(id)number toZone:(_NSZone *)zone
{
  v23 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  if (zone && MEMORY[0x1AC5662F0]() != zone && malloc_size(numberCopy))
  {
    ByteSize = CFNumberGetByteSize(numberCopy);
    v9 = ByteSize + 7;
    memptr = 0;
    v22 = 0;
    if ((ByteSize + 7) > 0x400)
    {
      v15 = CFNumberGetByteSize(numberCopy);
      v16 = malloc_type_posix_memalign(&memptr, 8uLL, v15, 0xE69E64A3uLL);
      LOBYTE(v22) = 0;
      if (v16)
      {
        v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
        objc_exception_throw(v19);
      }

      v10 = memptr;
    }

    else
    {
      MEMORY[0x1EEE9AC00](ByteSize);
      v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v10, v9);
    }

    Type = CFNumberGetType(numberCopy);
    if (!CFNumberGetValue(numberCopy, Type, v10))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_PASZoneSupport.m" lineNumber:231 description:@"Unexpected value conversion error from CFNumberGetValue"];
    }

    v12 = CFNumberGetType(numberCopy);
    v13 = CFNumberCreate(zone, v12, v10);
    if (!v13)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"_PASZoneSupport.m" lineNumber:233 description:@"Unexpected CFNumberCreate() failure"];
    }

    if (v9 >= 0x401)
    {
      free(v10);
    }
  }

  else
  {
    v13 = [(__CFNumber *)numberCopy copy];
  }

  return v13;
}

+ (id)mutableCopyData:(id)data toZone:(_NSZone *)zone
{
  dataCopy = data;
  if (!zone || MEMORY[0x1AC5662F0]() == zone)
  {
    MutableCopy = [dataCopy mutableCopy];
  }

  else
  {
    MutableCopy = CFDataCreateMutableCopy(zone, 0, dataCopy);
    if (!MutableCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_PASZoneSupport.m" lineNumber:218 description:@"Unexpected CFDataCreateMutableCopy() failure"];
    }
  }

  return MutableCopy;
}

+ (id)copyData:(id)data toZone:(_NSZone *)zone
{
  dataCopy = data;
  if (!zone || MEMORY[0x1AC5662F0]() == zone)
  {
    Copy = [dataCopy copy];
  }

  else
  {
    Copy = CFDataCreateCopy(zone, dataCopy);
    if (!Copy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_PASZoneSupport.m" lineNumber:207 description:@"Unexpected CFDataCreateCopy() failure"];
    }
  }

  return Copy;
}

+ (id)newMutableDataInZone:(_NSZone *)zone length:(unint64_t)length
{
  if (!zone || MEMORY[0x1AC5662F0]() == zone)
  {
    v10 = objc_alloc(MEMORY[0x1E695DF88]);

    return [v10 initWithLength:length];
  }

  else
  {
    Mutable = CFDataCreateMutable(zone, 0);
    if (!Mutable)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_PASZoneSupport.m" lineNumber:195 description:@"Unexpected CFDataCreateMutable() failure"];
    }

    CFDataSetLength(Mutable, length);
    return Mutable;
  }
}

+ (id)newMutableDataInZone:(_NSZone *)zone capacity:(unint64_t)capacity
{
  if (!zone || MEMORY[0x1AC5662F0]() == zone)
  {
    v10 = objc_alloc(MEMORY[0x1E695DF88]);

    return [v10 initWithCapacity:capacity];
  }

  else
  {
    Mutable = CFDataCreateMutable(zone, 0);
    if (!Mutable)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_PASZoneSupport.m" lineNumber:184 description:@"Unexpected CFDataCreateMutable() failure"];
    }

    return Mutable;
  }
}

+ (id)mutableCopyString:(id)string toZone:(_NSZone *)zone
{
  stringCopy = string;
  if (!zone || MEMORY[0x1AC5662F0]() == zone)
  {
    MutableCopy = [(__CFString *)stringCopy mutableCopy];
  }

  else
  {
    MutableCopy = CFStringCreateMutableCopy(zone, 0, stringCopy);
    if (!MutableCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_PASZoneSupport.m" lineNumber:167 description:@"Unexpected CFStringCreateMutableCopy() failure"];
    }
  }

  return MutableCopy;
}

+ (id)copyString:(id)string toZone:(_NSZone *)zone
{
  stringCopy = string;
  if (zone && MEMORY[0x1AC5662F0]() != zone && malloc_size(stringCopy))
  {
    Copy = CFStringCreateCopy(zone, stringCopy);
    if (!Copy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_PASZoneSupport.m" lineNumber:156 description:@"Unexpected CFStringCreateCopy() failure"];
    }
  }

  else
  {
    Copy = [(__CFString *)stringCopy copy];
  }

  return Copy;
}

+ (id)newMutableStringInZone:(_NSZone *)zone capacity:(unint64_t)capacity
{
  if (!zone || MEMORY[0x1AC5662F0]() == zone)
  {
    v10 = objc_alloc(MEMORY[0x1E696AD60]);

    return [v10 initWithCapacity:capacity];
  }

  else
  {
    Mutable = CFStringCreateMutable(zone, 0);
    if (!Mutable)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_PASZoneSupport.m" lineNumber:143 description:@"Unexpected CFStringCreateMutable() failure"];
    }

    return Mutable;
  }
}

+ (id)mutableCopySet:(id)set toZone:(_NSZone *)zone
{
  setCopy = set;
  if (!zone || MEMORY[0x1AC5662F0]() == zone)
  {
    MutableCopy = [setCopy mutableCopy];
  }

  else
  {
    MutableCopy = CFSetCreateMutableCopy(zone, 0, setCopy);
    if (!MutableCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_PASZoneSupport.m" lineNumber:126 description:@"Unexpected CFSetCreateCopy() failure"];
    }
  }

  return MutableCopy;
}

+ (id)copySet:(id)set toZone:(_NSZone *)zone
{
  setCopy = set;
  if (!zone || MEMORY[0x1AC5662F0]() == zone)
  {
    Copy = [setCopy copy];
  }

  else
  {
    Copy = CFSetCreateCopy(zone, setCopy);
    if (!Copy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_PASZoneSupport.m" lineNumber:115 description:@"Unexpected CFSetCreateCopy() failure"];
    }
  }

  return Copy;
}

+ (id)newMutableSetInZone:(_NSZone *)zone capacity:(unint64_t)capacity
{
  if (!zone || MEMORY[0x1AC5662F0]() == zone)
  {
    v10 = objc_alloc(MEMORY[0x1E695DFA8]);

    return [v10 initWithCapacity:capacity];
  }

  else
  {
    Mutable = CFSetCreateMutable(zone, capacity, MEMORY[0x1E695E9F8]);
    if (!Mutable)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_PASZoneSupport.m" lineNumber:104 description:@"Unexpected CFSetCreateMutable() failure"];
    }

    return Mutable;
  }
}

+ (id)mutableCopyDictionary:(id)dictionary toZone:(_NSZone *)zone
{
  dictionaryCopy = dictionary;
  if (!zone || MEMORY[0x1AC5662F0]() == zone)
  {
    MutableCopy = [dictionaryCopy mutableCopy];
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutableCopy(zone, 0, dictionaryCopy);
    if (!MutableCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_PASZoneSupport.m" lineNumber:88 description:@"Unexpected CFDictionaryCreateMutableCopy() failure"];
    }
  }

  return MutableCopy;
}

+ (id)copyDictionary:(id)dictionary toZone:(_NSZone *)zone
{
  dictionaryCopy = dictionary;
  if (!zone || MEMORY[0x1AC5662F0]() == zone)
  {
    Copy = [dictionaryCopy copy];
  }

  else
  {
    Copy = CFDictionaryCreateCopy(zone, dictionaryCopy);
    if (!Copy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_PASZoneSupport.m" lineNumber:77 description:@"Unexpected CFDictionaryCreateCopy() failure"];
    }
  }

  return Copy;
}

+ (id)newMutableDictionaryInZone:(_NSZone *)zone capacity:(unint64_t)capacity
{
  if (!zone || MEMORY[0x1AC5662F0]() == zone)
  {
    v10 = objc_alloc(MEMORY[0x1E695DF90]);

    return [v10 initWithCapacity:capacity];
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(zone, capacity, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_PASZoneSupport.m" lineNumber:66 description:@"Unexpected CFDictionaryCreateMutable() failure"];
    }

    return Mutable;
  }
}

+ (id)mutableCopyArray:(id)array toZone:(_NSZone *)zone
{
  arrayCopy = array;
  if (!zone || MEMORY[0x1AC5662F0]() == zone)
  {
    MutableCopy = [arrayCopy mutableCopy];
  }

  else
  {
    MutableCopy = CFArrayCreateMutableCopy(zone, 0, arrayCopy);
    if (!MutableCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_PASZoneSupport.m" lineNumber:49 description:@"Unexpected CFArrayCreateMutableCopy() failure"];
    }
  }

  return MutableCopy;
}

+ (id)copyArray:(id)array toZone:(_NSZone *)zone
{
  arrayCopy = array;
  if (!zone || MEMORY[0x1AC5662F0]() == zone)
  {
    Copy = [arrayCopy copy];
  }

  else
  {
    Copy = CFArrayCreateCopy(zone, arrayCopy);
    if (!Copy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_PASZoneSupport.m" lineNumber:38 description:@"Unexpected CFArrayCreateCopy() failure"];
    }
  }

  return Copy;
}

+ (id)newMutableArrayInZone:(_NSZone *)zone capacity:(unint64_t)capacity
{
  if (!zone || MEMORY[0x1AC5662F0]() == zone)
  {
    v10 = objc_alloc(MEMORY[0x1E695DF70]);

    return [v10 initWithCapacity:capacity];
  }

  else
  {
    Mutable = CFArrayCreateMutable(zone, capacity, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_PASZoneSupport.m" lineNumber:27 description:@"Unexpected CFArrayCreateMutable() failure"];
    }

    return Mutable;
  }
}

@end