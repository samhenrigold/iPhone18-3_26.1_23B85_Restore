@interface _CFPrefsOversizedPlistDescription
- (id)_descriptionOfDictionary:(__CFDictionary *)dictionary withKeyRedaction:(BOOL)redaction;
- (id)_descriptionWithKeyRedaction:(BOOL)redaction;
- (void)dealloc;
- (void)initWithDict:(const void *)dict setKeys:(const void *)keys andValues:(CFIndex)values count:;
@end

@implementation _CFPrefsOversizedPlistDescription

- (id)_descriptionOfDictionary:(__CFDictionary *)dictionary withKeyRedaction:(BOOL)redaction
{
  v20 = *MEMORY[0x1E69E9840];
  Count = CFDictionaryGetCount(dictionary);
  Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, Count, 0);
  v8 = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, Count, &kCFTypeArrayCallBacks);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79___CFPrefsOversizedPlistDescription__descriptionOfDictionary_withKeyRedaction___block_invoke;
  v14[3] = &unk_1E6DD2D10;
  v14[4] = &v16;
  v14[5] = Mutable;
  redactionCopy = redaction;
  v14[6] = v8;
  CFDictionaryApply(dictionary, v14);
  CFRelease(Mutable);
  v9 = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  if (CFArrayGetCount(v8) > 9)
  {
    v10 = 10;
  }

  else
  {
    v10 = CFArrayGetCount(v8);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79___CFPrefsOversizedPlistDescription__descriptionOfDictionary_withKeyRedaction___block_invoke_2;
  v13[3] = &__block_descriptor_40_e13_v24__0r_v8_16l;
  v13[4] = v9;
  CFArrayApply(v8, 0, v10, v13);
  if (CFArrayGetCount(v8) >= 11)
  {
    CFStringAppendFormat(v9, 0, @"...\nTotal keys: %ld - Average approximate value size: %ld bytes", Count, v17[3] / Count);
  }

  CFRelease(v8);
  v11 = CFAutorelease(v9);
  _Block_object_dispose(&v16, 8);
  return v11;
}

- (id)_descriptionWithKeyRedaction:(BOOL)redaction
{
  redactionCopy = redaction;
  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  if (CFDictionaryGetCount(self->newValues) >= 1)
  {
    CFStringAppendFormat(Mutable, 0, @"Description of keys being set:\n%@\n", [(_CFPrefsOversizedPlistDescription *)self _descriptionOfDictionary:self->newValues withKeyRedaction:redactionCopy]);
  }

  existingValues = self->existingValues;
  if (existingValues && CFDictionaryGetCount(existingValues) >= 1)
  {
    CFStringAppendFormat(Mutable, 0, @"Description of keys already present:\n%@\n", [(_CFPrefsOversizedPlistDescription *)self _descriptionOfDictionary:self->existingValues withKeyRedaction:redactionCopy]);
  }

  return CFAutorelease(Mutable);
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  existingValues = self->existingValues;
  if (existingValues)
  {
    CFRelease(existingValues);
  }

  newValues = self->newValues;
  if (newValues)
  {
    CFRelease(newValues);
  }

  v5.receiver = self;
  v5.super_class = _CFPrefsOversizedPlistDescription;
  [(_CFPrefsOversizedPlistDescription *)&v5 dealloc];
}

- (void)initWithDict:(const void *)dict setKeys:(const void *)keys andValues:(CFIndex)values count:
{
  v13 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v12.receiver = self;
  v12.super_class = _CFPrefsOversizedPlistDescription;
  v9 = objc_msgSendSuper2(&v12, sel_init);
  if (v9)
  {
    if (a2)
    {
      v10 = CFRetain(a2);
    }

    else
    {
      v10 = 0;
    }

    v9[1] = v10;
    v9[2] = CFDictionaryCreate(&__kCFAllocatorSystemDefault, dict, keys, values, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  return v9;
}

@end