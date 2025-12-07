@interface CPBitmapStore
- (CGImage)_copyAndStoreImageForKey:(id)key inGroup:(id)group withSize:(CGSize)size format:(unsigned __int8)format scale:(double)scale fillMem:(id)mem alternateCompletion:(id)completion;
- (CGImage)copyAndStoreImageForKey:(id)key inGroup:(id)group withSize:(CGSize)size opaque:(BOOL)opaque scale:(double)scale draw:(id)draw;
- (CGImage)copyImageForKey:(id)key inGroup:(id)group;
- (CPBitmapStore)initWithPath:(id)path version:(int)version;
- (id)_versionPath;
- (id)cacheNumberForKey:(id)key;
- (id)imageNameForKey:(id)key inGroup:(id)group;
- (id)imagePath;
- (int)setVersion:(int)version;
- (int)version;
- (unint64_t)imageCount;
- (void)dealloc;
- (void)openAndMmap:(id)mmap withInfo:(_img *)info;
- (void)purge;
- (void)removeImagesInGroups:(id)groups completion:(id)completion;
- (void)storeGrayscaleImageDataForKey:(id)key inGroup:(id)group withSize:(CGSize)size opaque:(BOOL)opaque scale:(double)scale data:(id)data;
- (void)storeImageDataForKey:(id)key inGroup:(id)group withSize:(CGSize)size format:(unsigned __int8)format formatColor:(CGColor *)color scale:(double)scale data:(id)data;
- (void)storeImageDataForKey:(id)key inGroup:(id)group withSize:(CGSize)size opaque:(BOOL)opaque scale:(double)scale data:(id)data;
- (void)storeImageForKey:(id)key inGroup:(id)group opaque:(BOOL)opaque image:(CGImage *)image;
@end

@implementation CPBitmapStore

- (CPBitmapStore)initWithPath:(id)path version:(int)version
{
  v14.receiver = self;
  v14.super_class = CPBitmapStore;
  v6 = [(CPBitmapStore *)&v14 init];
  if (v6)
  {
    pathCopy = path;
    v6->_path = pathCopy;
    if (access([(NSString *)pathCopy fileSystemRepresentation], 4))
    {
      mkpath_np([-[CPBitmapStore imagePath](v6 "imagePath")], 0x1EDu);
    }

    v8 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v6->_cache = v8;
    [(NSCache *)v8 setName:@"com.apple.cpbitmapstore"];
    [(NSCache *)v6->_cache setCountLimit:40];
    v9 = dispatch_queue_create("SerialQueueRemoveImagesBackground", 0);
    v6->_serialQueueRemoveImagesBackground = v9;
    global_queue = dispatch_get_global_queue(9, 0);
    dispatch_set_target_queue(v9, global_queue);
    v11 = dispatch_queue_create("SerialQueueRemoveImagesDefault", 0);
    v6->_serialQueueRemoveImagesDefault = v11;
    v12 = dispatch_get_global_queue(21, 0);
    dispatch_set_target_queue(v11, v12);
    v6->_version = version;
  }

  return v6;
}

- (void)dealloc
{
  dispatch_release(self->_serialQueueRemoveImagesBackground);
  dispatch_release(self->_serialQueueRemoveImagesDefault);
  v3.receiver = self;
  v3.super_class = CPBitmapStore;
  [(CPBitmapStore *)&v3 dealloc];
}

- (id)imageNameForKey:(id)key inGroup:(id)group
{
  result = malloc_type_malloc(0x32uLL, 0x100004077774924uLL);
  if (result)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:result length:snprintf(result encoding:0x32uLL freeWhenDone:{"%lu%lu", objc_msgSend(group, "hash"), objc_msgSend(key, "hash")), 1, 1}];

    return v7;
  }

  return result;
}

- (id)cacheNumberForKey:(id)key
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [key hash];

  return [v3 numberWithUnsignedLong:v4];
}

- (void)openAndMmap:(id)mmap withInfo:(_img *)info
{
  v5 = open([mmap fileSystemRepresentation], 256);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = v5;
    memset(&v17, 0, sizeof(v17));
    if (fstat(v5, &v17) < 0 || ((v17.st_mode & 0xF000) == 0x8000 ? (v7 = v17.st_nlink > 1u) : (v7 = 1), v7 || (v8 = mmap(0, v17.st_size, 1, 1, v6, 0), v8 == -1)))
    {
      close(v6);
    }

    else
    {
      v9 = v8;
      st_size = v17.st_size;
      close(v6);
      if (v9)
      {
        if (st_size >= 0x30 && *v9 == 1129333331 && v9[1] == 1)
        {
          info->var1 = v9[2];
          v11 = *(v9 + 3);
          *&v12 = v11;
          *(&v12 + 1) = HIDWORD(v11);
          *&info->var2 = v12;
          info->var4 = v9[5];
          info->var5 = *(v9 + 24);
          info->var6[0] = *(v9 + 25);
          info->var6[1] = *(v9 + 26);
          info->var6[2] = *(v9 + 27);
          info->var6[3] = *(v9 + 28);
          AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
          if (info->var4 == AlignedBytesPerRow)
          {
            v15 = (*MEMORY[0x1E69E9AC8] + info->var3 * AlignedBytesPerRow + 47) & -*MEMORY[0x1E69E9AC8];
            if (info->var1 == v15 && v15 == st_size)
            {
              return v9 + 12;
            }
          }
        }

        munmap(v9, st_size);
      }
    }
  }

  return 0;
}

- (CGImage)copyImageForKey:(id)key inGroup:(id)group
{
  v7 = [(CPBitmapStore *)self cacheNumberForKey:?];
  v8 = [(NSCache *)self->_cache objectForKey:v7];
  if (v8)
  {

    return CGImageRetain(v8);
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    *v13 = 0u;
    if (![(CPBitmapStore *)self findImageWithKey:key inGroup:group andInfo:v13])
    {
      return 0;
    }

    imagePath = [(CPBitmapStore *)self imagePath];
    image_with_memory = -[CPBitmapStore openAndMmap:withInfo:](self, "openAndMmap:withInfo:", [imagePath stringByAppendingPathComponent:v13[0]], v13);
    if (image_with_memory)
    {
      if ([(CPBitmapStore *)self lockOnRead])
      {
        mlock(image_with_memory - 48, v13[1]);
      }

      memContentOffset = [(CPBitmapStore *)self memContentOffset];
      v13[1] -= memContentOffset;
      image_with_memory = create_image_with_memory(image_with_memory, v13, [(CPBitmapStore *)self memContentOffset]);
      if (image_with_memory)
      {
        [(NSCache *)self->_cache setObject:image_with_memory forKey:v7];
      }
    }

    return image_with_memory;
  }
}

- (CGImage)_copyAndStoreImageForKey:(id)key inGroup:(id)group withSize:(CGSize)size format:(unsigned __int8)format scale:(double)scale fillMem:(id)mem alternateCompletion:(id)completion
{
  if (scale == 0.0)
  {
    return 0;
  }

  v34 = 0u;
  *&v33 = vcvtpd_u64_f64(size.width * scale);
  *(&v33 + 1) = vcvtpd_u64_f64(size.height * scale);
  BYTE8(v34) = format;
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v15 = AlignedBytesPerRow * *(&v33 + 1);
  v16 = [(CPBitmapStore *)self memContentOffset:0];
  v17 = (v15 + v16 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
  v32[1] = v17;
  *(&v34 + 9) = 0;
  imagePath = [(CPBitmapStore *)self imagePath];
  v19 = strdup([objc_msgSend(imagePath stringByAppendingPathComponent:{@"tmp.XXXXXXXX", "fileSystemRepresentation"}]);
  if (!v19)
  {
    return 0;
  }

  v20 = v19;
  v21 = mkstemp(v19);
  if (v21 < 0)
  {
    goto LABEL_14;
  }

  v22 = v21;
  if (fchmod(v21, 0x180u) < 0 || ftruncate(v22, v17) < 0)
  {
    close(v22);
    goto LABEL_13;
  }

  v23 = mmap(0, v17, 3, 1, v22, 0);
  close(v22);
  if (v23 == -1)
  {
LABEL_13:
    unlink(v20);
    goto LABEL_14;
  }

  if (!v23)
  {
LABEL_14:
    free(v20);
    return 0;
  }

  (*(mem + 2))(mem, v23, v32);
  v32[0] = [(CPBitmapStore *)self imageNameForKey:key inGroup:group];
  munmap(v23, v32[1]);
  v24 = [imagePath stringByAppendingPathComponent:v32[0]];
  fileSystemRepresentation = [v24 fileSystemRepresentation];
  rename(v20, fileSystemRepresentation, v26);
  v28 = v27;
  free(v20);
  if (v28 < 0 || ![(CPBitmapStore *)self saveImageWithKey:key inGroup:group andInfo:v32])
  {
    return 0;
  }

  if (completion)
  {
    (*(completion + 2))(completion);
    return 0;
  }

  image_with_memory = [(CPBitmapStore *)self openAndMmap:v24 withInfo:v32];
  if (image_with_memory)
  {
    memContentOffset = [(CPBitmapStore *)self memContentOffset];
    v32[1] -= memContentOffset;
    image_with_memory = create_image_with_memory(image_with_memory, v32, [(CPBitmapStore *)self memContentOffset]);
    if (image_with_memory)
    {
      [(NSCache *)self->_cache setObject:image_with_memory forKey:[(CPBitmapStore *)self cacheNumberForKey:key]];
    }
  }

  return image_with_memory;
}

- (CGImage)copyAndStoreImageForKey:(id)key inGroup:(id)group withSize:(CGSize)size opaque:(BOOL)opaque scale:(double)scale draw:(id)draw
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__CPBitmapStore_copyAndStoreImageForKey_inGroup_withSize_opaque_scale_draw___block_invoke;
  v9[3] = &unk_1E7451080;
  *&v9[6] = scale;
  v9[4] = self;
  v9[5] = draw;
  return [(CPBitmapStore *)self _copyAndStoreImageForKey:key inGroup:group withSize:opaque format:v9 scale:0 fillMem:size.width alternateCompletion:size.height];
}

void __76__CPBitmapStore_copyAndStoreImageForKey_inGroup_withSize_opaque_scale_draw___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) memContentOffset];
  if (v6 >= 1)
  {
    *a2 = 0x143504253;
    *(a2 + 8) = vuzp1q_s32(*(a3 + 8), *(a3 + 24));
    *(a2 + 24) = *(a3 + 40);
    *(a2 + 25) = *(a3 + 41);
    *(a2 + 26) = *(a3 + 42);
    *(a2 + 27) = *(a3 + 43);
    *(a2 + 28) = *(a3 + 44);
  }

  v7 = *(a1 + 48);
  v8 = *(a1 + 40);
  v9 = *(a3 + 40);
  if (v9 < 3)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
LABEL_7:
    v11 = DeviceRGB;
    v9 = *(a3 + 40);
    goto LABEL_8;
  }

  if (v9 - 3 < 2)
  {
    DeviceRGB = CGColorSpaceCreateDeviceGray();
    goto LABEL_7;
  }

  v11 = 0;
LABEL_8:
  v12 = *(a3 + 16);
  v13 = *(a3 + 24);
  if (v9 > 5)
  {
    v14 = 0;
  }

  else
  {
    v14 = qword_195EA8920[v9];
  }

  v15 = (a2 + v6);
  v16 = *(a3 + 32);
  v17 = format_bitmapinfo(v9);
  v18 = CGBitmapContextCreate(v15, v12, v13, v14, v16, v11, v17);
  CGColorSpaceRelease(v11);
  CGContextTranslateCTM(v18, 0.0, *(a3 + 24));
  CGContextScaleCTM(v18, v7, -v7);
  CGAffineTransformMakeScale(&v19, v7, -v7);
  CGContextSetBaseCTM();
  (*(v8 + 16))(v8, v18);
  CGContextRelease(v18);
}

- (void)storeImageForKey:(id)key inGroup:(id)group opaque:(BOOL)opaque image:(CGImage *)image
{
  if (image)
  {
    opaqueCopy = opaque;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__CPBitmapStore_storeImageForKey_inGroup_opaque_image___block_invoke;
    v13[3] = &unk_1E74510A8;
    v13[4] = self;
    v13[5] = image;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55__CPBitmapStore_storeImageForKey_inGroup_opaque_image___block_invoke_2;
    v12[3] = &unk_1E7450CE8;
    v12[5] = key;
    v12[6] = image;
    v12[4] = self;
    Width = CGImageGetWidth(image);
    [(CPBitmapStore *)self _copyAndStoreImageForKey:key inGroup:group withSize:opaqueCopy format:v13 scale:v12 fillMem:Width alternateCompletion:CGImageGetHeight(image), 1.0];
  }
}

void __55__CPBitmapStore_storeImageForKey_inGroup_opaque_image___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) memContentOffset];
  if (v6 >= 1)
  {
    *a2 = 0x143504253;
    *(a2 + 8) = vuzp1q_s32(*(a3 + 8), *(a3 + 24));
    *(a2 + 24) = *(a3 + 40);
    *(a2 + 25) = *(a3 + 41);
    *(a2 + 26) = *(a3 + 42);
    *(a2 + 27) = *(a3 + 43);
    *(a2 + 28) = *(a3 + 44);
  }

  DataProvider = CGImageGetDataProvider(*(a1 + 40));
  if (DataProvider)
  {
    v8 = CGDataProviderCopyData(DataProvider);
    if (v8)
    {
      v9 = v8;
      v10 = (a2 + v6);
      BytePtr = CFDataGetBytePtr(v8);
      Length = CFDataGetLength(v9);
      memcpy(v10, BytePtr, Length);

      CFRelease(v9);
    }
  }
}

uint64_t __55__CPBitmapStore_storeImageForKey_inGroup_opaque_image___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) cacheNumberForKey:*(a1 + 40)];

  return [v1 setObject:v2 forKey:v3];
}

- (void)storeImageDataForKey:(id)key inGroup:(id)group withSize:(CGSize)size opaque:(BOOL)opaque scale:(double)scale data:(id)data
{
  if (data)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __73__CPBitmapStore_storeImageDataForKey_inGroup_withSize_opaque_scale_data___block_invoke;
    v8[3] = &unk_1E74510D0;
    v8[4] = self;
    v8[5] = data;
    [(CPBitmapStore *)self _copyAndStoreImageForKey:key inGroup:group withSize:opaque format:v8 scale:&__block_literal_global_7 fillMem:size.width alternateCompletion:size.height, scale];
  }
}

void *__73__CPBitmapStore_storeImageDataForKey_inGroup_withSize_opaque_scale_data___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) memContentOffset];
  if (v6 >= 1)
  {
    *a2 = 0x143504253;
    *(a2 + 8) = vuzp1q_s32(*(a3 + 8), *(a3 + 24));
    *(a2 + 24) = *(a3 + 40);
    *(a2 + 25) = *(a3 + 41);
    *(a2 + 26) = *(a3 + 42);
    *(a2 + 27) = *(a3 + 43);
    *(a2 + 28) = *(a3 + 44);
  }

  v7 = (a2 + v6);
  v8 = [*(a1 + 40) bytes];
  v9 = [*(a1 + 40) length];

  return memcpy(v7, v8, v9);
}

- (void)storeGrayscaleImageDataForKey:(id)key inGroup:(id)group withSize:(CGSize)size opaque:(BOOL)opaque scale:(double)scale data:(id)data
{
  if (data)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __82__CPBitmapStore_storeGrayscaleImageDataForKey_inGroup_withSize_opaque_scale_data___block_invoke;
    v9[3] = &unk_1E74510D0;
    v9[4] = self;
    v9[5] = data;
    if (opaque)
    {
      v8 = 4;
    }

    else
    {
      v8 = 3;
    }

    [(CPBitmapStore *)self _copyAndStoreImageForKey:key inGroup:group withSize:v8 format:v9 scale:&__block_literal_global_18 fillMem:size.width alternateCompletion:size.height, scale];
  }
}

unint64_t __82__CPBitmapStore_storeGrayscaleImageDataForKey_inGroup_withSize_opaque_scale_data___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) memContentOffset];
  if (v6 >= 1)
  {
    *a2 = 0x143504253;
    *(a2 + 8) = vuzp1q_s32(*(a3 + 8), *(a3 + 24));
    *(a2 + 24) = *(a3 + 40);
    *(a2 + 25) = *(a3 + 41);
    *(a2 + 26) = *(a3 + 42);
    *(a2 + 27) = *(a3 + 43);
    *(a2 + 28) = *(a3 + 44);
  }

  v7 = 4 * *(a3 + 16);
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v9 = 2 * *(a3 + 16);
  v10 = CGBitmapGetAlignedBytesPerRow();
  v11 = [*(a1 + 40) bytes];
  result = [*(a1 + 40) length];
  if (result >= 4)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = *(a3 + 16);
    do
    {
      if (v15 + 1 == v16)
      {
        v17 = ((AlignedBytesPerRow - v7) >> 2);
      }

      else
      {
        v17 = 0;
      }

      v18 = v13 + v17;
      v19 = *(v11 + 4 * v13 + 2);
      if (v15 + 1 == v16)
      {
        v20 = ((v10 - v9) >> 1);
      }

      else
      {
        v20 = 0;
      }

      v21 = v14 + v20;
      *(a2 + v6 + 2 * v14) = v19;
      if (v15 + 1 == v16)
      {
        v15 = 0;
      }

      else
      {
        ++v15;
      }

      v14 = v21 + 1;
      v13 = v18 + 1;
    }

    while (v18 + 1 < result >> 2);
  }

  return result;
}

- (void)storeImageDataForKey:(id)key inGroup:(id)group withSize:(CGSize)size format:(unsigned __int8)format formatColor:(CGColor *)color scale:(double)scale data:(id)data
{
  if (data)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __85__CPBitmapStore_storeImageDataForKey_inGroup_withSize_format_formatColor_scale_data___block_invoke;
    v9[3] = &unk_1E74510F8;
    v9[5] = data;
    v9[6] = color;
    v9[4] = self;
    [(CPBitmapStore *)self _copyAndStoreImageForKey:key inGroup:group withSize:format format:v9 scale:&__block_literal_global_20 fillMem:size.width alternateCompletion:size.height, scale];
  }
}

uint64_t __85__CPBitmapStore_storeImageDataForKey_inGroup_withSize_format_formatColor_scale_data___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) memContentOffset];
  if (v6 >= 1)
  {
    if (a3)
    {
      v7 = *(a1 + 48);
      if (v7)
      {
        if (*(a3 + 40) == 5)
        {
          NumberOfComponents = CGColorGetNumberOfComponents(*(a1 + 48));
          Components = CGColorGetComponents(v7);
          if (NumberOfComponents)
          {
            v10 = (a3 + 41);
            do
            {
              v11 = *Components++;
              *v10++ = (v11 * 255.0);
              --NumberOfComponents;
            }

            while (NumberOfComponents);
          }
        }
      }
    }

    *a2 = 0x143504253;
    *(a2 + 8) = vuzp1q_s32(*(a3 + 8), *(a3 + 24));
    *(a2 + 24) = *(a3 + 40);
    *(a2 + 25) = *(a3 + 41);
    *(a2 + 26) = *(a3 + 42);
    *(a2 + 27) = *(a3 + 43);
    *(a2 + 28) = *(a3 + 44);
  }

  v12 = *(a1 + 40);
  v13 = [v12 length];

  return [v12 getBytes:a2 + v6 length:v13];
}

- (void)removeImagesInGroups:(id)groups completion:(id)completion
{
  if ([groups count])
  {
    imagePath = [(CPBitmapStore *)self imagePath];
    v8 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
    v9 = [completion copy];
    serialQueueRemoveImagesBackground = self->_serialQueueRemoveImagesBackground;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__CPBitmapStore_removeImagesInGroups_completion___block_invoke;
    block[3] = &unk_1E7451148;
    block[4] = groups;
    block[5] = v8;
    block[6] = imagePath;
    block[7] = self;
    block[8] = v9;
    dispatch_async(serialQueueRemoveImagesBackground, block);
  }
}

void __49__CPBitmapStore_removeImagesInGroups_completion___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFA8] set];
  v3 = *(a1 + 32);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __49__CPBitmapStore_removeImagesInGroups_completion___block_invoke_2;
  v32[3] = &unk_1E7451120;
  v32[4] = v2;
  [v3 enumerateObjectsUsingBlock:v32];
  v4 = dispatch_group_create();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = *(a1 + 40);
  v21 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v21)
  {
    v20 = *v29;
    do
    {
      v5 = 0;
      do
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v5;
        v6 = *(*(&v28 + 1) + 8 * v5);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v7 = [v2 countByEnumeratingWithState:&v24 objects:v33 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v25;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v25 != v9)
              {
                objc_enumerationMutation(v2);
              }

              v11 = *(*(&v24 + 1) + 8 * i);
              if ([objc_msgSend(v6 "lastPathComponent")])
              {
                v12 = [v6 isAbsolutePath];
                v13 = v6;
                if ((v12 & 1) == 0)
                {
                  v13 = [*(a1 + 48) stringByAppendingPathComponent:v6];
                }

                unlink([v13 fileSystemRepresentation]);
                v14 = [objc_msgSend(v6 "lastPathComponent")];
                v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{strtoull(objc_msgSend(v14, "UTF8String"), 0, 10)}];
                v16 = *(a1 + 56);
                v17 = *(v16 + 56);
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = __49__CPBitmapStore_removeImagesInGroups_completion___block_invoke_3;
                block[3] = &unk_1E7450C88;
                block[4] = v16;
                block[5] = v15;
                dispatch_group_async(v4, v17, block);
              }
            }

            v8 = [v2 countByEnumeratingWithState:&v24 objects:v33 count:16];
          }

          while (v8);
        }

        v5 = v22 + 1;
      }

      while (v22 + 1 != v21);
      v21 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v21);
  }

  v18 = *(a1 + 64);
  if (v18)
  {
    dispatch_group_notify(v4, *(*(a1 + 56) + 48), v18);
  }

  dispatch_release(v4);
}

char *__49__CPBitmapStore_removeImagesInGroups_completion___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  result = malloc_type_malloc(0x32uLL, 0x100004077774924uLL);
  if (result)
  {
    result = [*(a1 + 32) addObject:{objc_msgSend(objc_alloc(MEMORY[0x1E696AEC0]), "initWithBytesNoCopy:length:encoding:freeWhenDone:", result, snprintf(result, 0x32uLL, "%lu", objc_msgSend(a2, "hash")), 1, 1)}];
    *a3 = 0;
  }

  return result;
}

- (id)imagePath
{
  result = self->_imagePath;
  if (!result)
  {
    result = [(NSString *)self->_path stringByAppendingPathComponent:@"images"];
    self->_imagePath = result;
  }

  return result;
}

- (unint64_t)imageCount
{
  v2 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];

  return [v2 count];
}

- (void)purge
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = self->_path;

  [defaultManager removeItemAtPath:path error:0];
}

- (id)_versionPath
{
  result = self->_versionPath;
  if (!result)
  {
    result = [(NSString *)self->_path stringByAppendingPathComponent:@"version"];
    self->_versionPath = result;
  }

  return result;
}

- (int)version
{
  if (![objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
  {
    return -1;
  }

  v5 = 0;
  v3 = [MEMORY[0x1E696AEC0] stringWithContentsOfFile:-[CPBitmapStore _versionPath](self encoding:"_versionPath") error:{4, &v5}];
  if (v5)
  {
    return -1;
  }

  result = [v3 intValue];
  self->_version = result;
  return result;
}

- (int)setVersion:(int)version
{
  [objc_msgSend(objc_msgSend(MEMORY[0x1E696AD98] numberWithInt:{*&version), "stringValue"), "writeToFile:atomically:encoding:error:", -[CPBitmapStore _versionPath](self, "_versionPath"), 1, 4, 0}];

  return [(CPBitmapStore *)self version];
}

@end