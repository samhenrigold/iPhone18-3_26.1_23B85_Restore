@interface CFXIONSZipFileArchive
- (BOOL)writeContentsForEntryName:(id)name toFile:(id)file options:(unint64_t)options error:(id *)error;
- (BOOL)writeToFile:(id)file options:(unint64_t)options error:(id *)error;
- (CFXIONSZipFileArchive)initWithData:(id)data options:(unint64_t)options error:(id *)error;
- (CFXIONSZipFileArchive)initWithEntryNames:(id)names contents:(id)contents properties:(id)properties options:(unint64_t)options;
- (CFXIONSZipFileArchive)initWithEntryNames:(id)names dataProvider:(id)provider options:(unint64_t)options;
- (CFXIONSZipFileArchive)initWithPath:(id)path options:(unint64_t)options error:(id *)error;
- (id)archiveData;
- (id)archiveStream;
- (id)contentsForEntryName:(id)name;
- (id)propertiesForEntryName:(id)name;
- (id)streamForEntryName:(id)name;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CFXIONSZipFileArchive

- (CFXIONSZipFileArchive)initWithPath:(id)path options:(unint64_t)options error:(id *)error
{
  if (!path || !objc_msgSend_length(path, a2, path))
  {
    return 0;
  }

  v21.receiver = self;
  v21.super_class = CFXIONSZipFileArchive;
  v9 = [(CFXIONSZipFileArchive *)&v21 init];
  v12 = v9;
  if (v9)
  {
    *(v9 + 9) = 0;
    *(v9 + 88) = 0u;
    *(v9 + 104) = 0u;
    *(v9 + 15) = 0;
    if ((options & 3) > 1)
    {
      if ((options & 3) == 2)
      {
        v13 = objc_msgSend_dataWithContentsOfFile_options_error_(MEMORY[0x1E695DEF0], v10, path, 1, error);
        goto LABEL_9;
      }

      v16 = sub_1AF1D6724(path, v10, v11);
      if ((v16 & 0x8000000000000000) == 0)
      {
        v19 = v16;
        *(v12 + 40) = objc_msgSend_copy(path, v17, v18);
        close(v19);
LABEL_16:
        if ((options & 4) != 0)
        {
          *(v12 + 80) |= 8u;
        }

        return v12;
      }
    }

    else
    {
      if ((options & 3) == 0)
      {
        v13 = objc_msgSend_dataWithContentsOfFile_options_error_(MEMORY[0x1E695DEF0], v10, path, 0, error);
LABEL_9:
        if (!v13)
        {
          goto LABEL_18;
        }

        v12 = objc_msgSend_initWithData_options_error_(v12, v14, v13, options, error);
        if (!v12)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }

      v15 = sub_1AF1D6724(path, v10, v11);
      *(v12 + 32) = v15;
      if ((v15 & 0x8000000000000000) == 0)
      {
        *(v12 + 80) |= 0x10u;
        goto LABEL_16;
      }
    }

LABEL_18:

    return 0;
  }

  return v12;
}

- (CFXIONSZipFileArchive)initWithData:(id)data options:(unint64_t)options error:(id *)error
{
  optionsCopy = options;
  v86[5] = *MEMORY[0x1E69E9840];
  v84.receiver = self;
  v84.super_class = CFXIONSZipFileArchive;
  v7 = [(CFXIONSZipFileArchive *)&v84 init:data];
  v10 = v7;
  if (!data)
  {
    goto LABEL_75;
  }

  if (!v7)
  {
    goto LABEL_75;
  }

  v72 = optionsCopy;
  v77 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9);
  v76 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v11, v12);
  v15 = objc_msgSend_bytes(data, v13, v14);
  dataCopy = data;
  v18 = objc_msgSend_length(data, v16, v17);
  if (v18 < 0x15)
  {
    goto LABEL_75;
  }

  v19 = v18;
  v20 = 0;
  v21 = 0;
  v22 = -20;
  v23 = 20;
  v24 = v15;
  do
  {
    v25 = *(v24 + v18 - 20);
    if (v25 == 117853008)
    {
      v26 = 0;
      if (v18 >= 0x39)
      {
        v27 = *(v24 + v18 - 12);
        if (v27 <= v18 - 56)
        {
          v28 = v15 + v27;
          if (*(v15 + v27) == 101075792)
          {
            v20 = *(v28 + 24);
            v21 = *(v28 + 48);
            v26 = *(v24 + v18 - 12);
          }

          else
          {
            v26 = 0;
          }
        }
      }
    }

    else if (v25 == 101010256)
    {
      v26 = v18 - v23;
      v20 = *(v24 + v18 - 12);
      v21 = *(v24 + v18 - 4);
    }

    else
    {
      v26 = 0;
      if (v23 >= 0x38 && v25 == 101075792)
      {
        v26 = v18 + v22;
        v20 = *(v24 + v18 + 4);
        v21 = *(v24 + v18 + 28);
      }
    }

    if (v23 > 0x101CE)
    {
      break;
    }

    if (v26)
    {
      break;
    }

    ++v23;
    --v22;
    --v24;
  }

  while (v23 < v18);
  if (!v20)
  {
    goto LABEL_75;
  }

  v70 = v10;
  v73 = 0;
  v29 = 0;
  v74 = v15 + 16;
  v75 = v15 + 8;
  v30 = v21;
  do
  {
    if (v30 < v21)
    {
      break;
    }

    if (v30 >= v19)
    {
      break;
    }

    v31 = v30 + 46;
    if (v30 + 46 <= v21)
    {
      break;
    }

    if (v31 > v19)
    {
      break;
    }

    v32 = v15 + v30;
    if (*v32 != 33639248)
    {
      break;
    }

    v33 = v29;
    v81 = v20;
    v34 = v15;
    v36 = *(v32 + 20);
    v35 = *(v32 + 24);
    v37 = *(v32 + 28);
    v38 = *(v32 + 42);
    v39 = v36 == 0xFFFFFFFFLL || v35 == -1;
    v40 = v39 || v38 == -1;
    v41 = v40;
    v42 = v31 + v37;
    if (v31 + v37 <= v21 || v42 > v19)
    {
      break;
    }

    v43 = 0;
    v78 = *(v32 + 10);
    v44 = *(v32 + 30);
    v79 = *(v32 + 16);
    v80 = *(v32 + 32);
    v82 = v44;
    v83 = v21;
    if (*(v32 + 28))
    {
      if (v21 > v38)
      {
        v45 = objc_alloc(MEMORY[0x1E696AEC0]);
        v43 = objc_msgSend_initWithBytes_length_encoding_(v45, v46, v34 + v31, v37, 4);
        v44 = v82;
        v21 = v83;
        if (!v43)
        {
          v47 = objc_alloc(MEMORY[0x1E696AEC0]);
          v43 = objc_msgSend_initWithBytes_length_encoding_(v47, v48, v34 + v31, v37, 12);
          v44 = v82;
          v21 = v83;
        }
      }
    }

    if (v44 <= 4u || !v41)
    {
      v15 = v34;
LABEL_67:
      v51 = v33;
      goto LABEL_68;
    }

    v50 = v42 + v44;
    v15 = v34;
    if (v42 >= v42 + v44)
    {
      goto LABEL_67;
    }

    v51 = v33;
    if (v50 > v21)
    {
      v52 = v80;
      if (v50 <= v19)
      {
        v53 = v31 + v37;
        do
        {
          v54 = (v15 + v53);
          v55 = *(v15 + v53 + 2);
          v56 = v53 + 4;
          v53 += 4 + v55;
          if (v53 <= v56 || v53 > v50)
          {
            break;
          }

          v58 = *v54;
          if (v55 >= 0x18 && v58 == 1)
          {
            if (v35 == 0xFFFFFFFFLL)
            {
              v35 = *(v15 + v56);
            }

            if (v36 == 0xFFFFFFFFLL)
            {
              v36 = *(v75 + v56);
            }

            if (v38 == 0xFFFFFFFF)
            {
              v38 = *(v74 + v56);
            }
          }
        }

        while (v53 < v50);
      }

      goto LABEL_69;
    }

LABEL_68:
    v52 = v80;
LABEL_69:
    if (v43)
    {
      v85[0] = @"CFXIONSZipFileArchiveCompressionType";
      v60 = v43;
      v86[0] = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v20, v78);
      v85[1] = @"CFXIONSZipFileArchiveHeaderOffset";
      v86[1] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v61, v38);
      v85[2] = @"CFXIONSZipFileArchiveCRC";
      v86[2] = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v62, v79);
      v85[3] = @"CFXIONSZipFileArchiveCompressedLength";
      v86[3] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v63, v36);
      v85[4] = @"CFXIONSZipFileArchiveUncompressedLength";
      v86[4] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v64, v35);
      v66 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v65, v86, v85, 5);
      objc_msgSend_addObject_(v77, v67, v60);
      objc_msgSend_setObject_forKey_(v76, v68, v66, v60);
      v44 = v82;
      v21 = v83;
      v73 = 1;
    }

    v30 = v42 + v44 + v52;
    v29 = v51 + 1;
    v20 = v81;
  }

  while (v29 != v81);
  v10 = v70;
  if (v73)
  {
    v70->_data = dataCopy;
    v70->_names = v77;
    v70->_properties = v76;
    if ((v72 & 4) != 0)
    {
      *&v70->_zFlags |= 8u;
    }

    return v10;
  }

LABEL_75:
  if (v10)
  {

    return 0;
  }

  return v10;
}

- (CFXIONSZipFileArchive)initWithEntryNames:(id)names contents:(id)contents properties:(id)properties options:(unint64_t)options
{
  v10 = objc_msgSend_count(names, a2, names, contents, properties, options);
  v25.receiver = self;
  v25.super_class = CFXIONSZipFileArchive;
  v13 = [(CFXIONSZipFileArchive *)&v25 init];
  if (v10)
  {
    v14 = 1;
    do
    {
      v15 = objc_msgSend_objectAtIndex_(names, v11, v14 - 1);
      v17 = objc_msgSend_objectForKey_(contents, v16, v15);
      v18 = v17 != 0;
      if (v17)
      {
        v19 = v14 >= v10;
      }

      else
      {
        v19 = 1;
      }

      ++v14;
    }

    while (!v19);
    if (!names)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v18 = 1;
    if (!names)
    {
      goto LABEL_16;
    }
  }

  if (contents && v18 && v13 && v10)
  {
    v13->_contents = objc_msgSend_copy(contents, v11, v12);
    v13->_names = objc_msgSend_copy(names, v20, v21);
    v13->_properties = objc_msgSend_copy(properties, v22, v23);
    *&v13->_zFlags |= 8u;
    return v13;
  }

LABEL_16:
  if (v13)
  {

    return 0;
  }

  return v13;
}

- (CFXIONSZipFileArchive)initWithEntryNames:(id)names dataProvider:(id)provider options:(unint64_t)options
{
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = CFXIONSZipFileArchive;
  v8 = [(CFXIONSZipFileArchive *)&v13 init];
  if (objc_opt_respondsToSelector())
  {
    *(v8 + 20) |= 1u;
  }

  if (objc_opt_respondsToSelector())
  {
    *(v8 + 20) |= 2u;
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = *(v8 + 20) | 4;
    *(v8 + 20) = v11;
  }

  else
  {
    if (!v8)
    {
      return v8;
    }

    v11 = *(v8 + 20);
  }

  if ((v11 & 3) != 0)
  {
    *(v8 + 3) = provider;
    *(v8 + 6) = objc_msgSend_copy(names, v9, v10);
    if ((optionsCopy & 4) != 0)
    {
      *(v8 + 20) |= 8u;
    }
  }

  else
  {

    return 0;
  }

  return v8;
}

- (void)dealloc
{
  objc_msgSend_invalidate(self, a2, v2);
  v4.receiver = self;
  v4.super_class = CFXIONSZipFileArchive;
  [(CFXIONSZipFileArchive *)&v4 dealloc];
}

- (id)contentsForEntryName:(id)name
{
  contents = self->_contents;
  if (contents)
  {
    v6 = objc_msgSend_objectForKey_(contents, a2, name);
LABEL_3:
    v8 = v6;
    goto LABEL_4;
  }

  if (self->_data)
  {
    v10 = objc_msgSend_objectForKey_(self->_properties, a2, name);
    if (v10)
    {
      v12 = v10;
      v13 = objc_msgSend_objectForKey_(v10, v11, @"CFXIONSZipFileArchiveHeaderOffset");
      v16 = objc_msgSend_unsignedIntegerValue(v13, v14, v15);
      v18 = objc_msgSend_objectForKey_(v12, v17, @"CFXIONSZipFileArchiveCompressionType");
      v21 = objc_msgSend_unsignedIntegerValue(v18, v19, v20);
      v23 = objc_msgSend_objectForKey_(v12, v22, @"CFXIONSZipFileArchiveCRC");
      v26 = objc_msgSend_unsignedIntegerValue(v23, v24, v25);
      v28 = objc_msgSend_objectForKey_(v12, v27, @"CFXIONSZipFileArchiveCompressedLength");
      v31 = objc_msgSend_unsignedIntegerValue(v28, v29, v30);
      v33 = objc_msgSend_objectForKey_(v12, v32, @"CFXIONSZipFileArchiveUncompressedLength");
      v36 = objc_msgSend_unsignedIntegerValue(v33, v34, v35);
      data = self->_data;
      v40 = objc_msgSend_bytes(data, v38, v39);
      v43 = objc_msgSend_length(data, v41, v42);
      if (v43 > v16 && v16 <= 0xFFFFFFFFFFFFFFE1)
      {
        v8 = 0;
        if (!v36 || !v31 || v16 + 30 >= v43)
        {
          return v8;
        }

        v45 = (v40 + v16);
        if (*(v40 + v16) == 67324752 && v21 == v45[4])
        {
          v46 = v16 + 30 + v45[13] + v45[14];
          if (v46 < v43)
          {
            v8 = 0;
            v47 = v46 + v31;
            if (v46 + v31 >= v43 || v47 <= v46 || v47 <= v16)
            {
              return v8;
            }

            if (v21 == 8)
            {
              v55 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v44, v36);
              v58 = objc_msgSend_mutableBytes(v55, v56, v57);
              *&v62.avail_in = 0u;
              memset(&v62.total_out, 0, 72);
              v62.next_in = (v40 + v46);
              v62.avail_in = v31;
              v62.next_out = v58;
              *&v62.avail_out = v36;
              if (v55 && (v59 = v58, !inflateInit2_(&v62, -15, "1.2.12", 112)) && (v60 = inflate(&v62, 4), v61 = inflateEnd(&v62), v60 == 1))
              {
                v8 = 0;
                if (!v61 && v62.total_out == v36)
                {
                  if (v26 == sub_1AF1D79F0(v59, v36))
                  {
                    v8 = v55;
                  }

                  else
                  {
                    v8 = 0;
                  }
                }
              }

              else
              {
                v8 = 0;
              }

LABEL_4:
              if (!v8)
              {
                return v8;
              }

              goto LABEL_5;
            }

            if (!v21 && v26 == sub_1AF1D79F0((v40 + v46), v31))
            {
              v6 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v48, v40 + v46, v31);
              goto LABEL_3;
            }
          }
        }
      }
    }

    return 0;
  }

  if (!objc_msgSend_containsObject_(self->_names, a2, name))
  {
    return 0;
  }

  zFlags = self->_zFlags;
  if ((*&zFlags & 1) == 0)
  {
    if ((*&zFlags & 2) != 0)
    {
      objc_msgSend_archive_streamForEntryName_(self->_provider, v49, self, name);
    }

    else if ((*&zFlags & 0x10) == 0)
    {
      path = self->_path;
      if (path)
      {
        v53 = sub_1AF1D6724(path, v49, v50);
        if ((v53 & 0x8000000000000000) == 0)
        {
          close(v53);
        }
      }
    }

    return 0;
  }

  v8 = objc_msgSend_objectForKey_(self->_cachedContents, v49, name);
  if (!v8)
  {
    v6 = objc_msgSend_archive_contentsForEntryName_(self->_provider, v7, self, name);
    goto LABEL_3;
  }

LABEL_5:
  if ((*&self->_zFlags & 8) == 0)
  {
    cachedContents = self->_cachedContents;
    if (!cachedContents)
    {
      cachedContents = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_cachedContents = cachedContents;
    }

    objc_msgSend_setObject_forKey_(cachedContents, v7, v8, name, v62.next_in, *&v62.avail_in, *&v62.next_out);
  }

  return v8;
}

- (id)streamForEntryName:(id)name
{
  contents = self->_contents;
  if (contents)
  {
    v6 = objc_msgSend_objectForKey_(contents, a2, name);
    if (v6)
    {
      v7 = v6;
      v8 = MEMORY[0x1E695DF48];
LABEL_4:

      return MEMORY[0x1EEE66B58](v8, sel_inputStreamWithData_, v7);
    }

    return 0;
  }

  if (self->_data || !objc_msgSend_containsObject_(self->_names, a2, name))
  {
    return 0;
  }

  zFlags = self->_zFlags;
  if (*&zFlags)
  {
    v15 = objc_msgSend_objectForKey_(self->_cachedContents, v9, name);
    if (!v15)
    {
      v17 = objc_msgSend_archive_contentsForEntryName_(self->_provider, v14, self, name);
      if (!v17)
      {
        return 0;
      }

      v15 = v17;
      if ((*&self->_zFlags & 8) == 0)
      {
        cachedContents = self->_cachedContents;
        if (!cachedContents)
        {
          cachedContents = objc_alloc_init(MEMORY[0x1E695DF90]);
          self->_cachedContents = cachedContents;
        }

        objc_msgSend_setObject_forKey_(cachedContents, v18, v15, name);
      }
    }

    v8 = MEMORY[0x1E695DF48];
    v7 = v15;
    goto LABEL_4;
  }

  if ((*&zFlags & 2) == 0)
  {
    if ((*&zFlags & 0x10) == 0)
    {
      path = self->_path;
      if (path)
      {
        v13 = sub_1AF1D6724(path, v9, v10);
        if ((v13 & 0x8000000000000000) == 0)
        {
          close(v13);
        }
      }
    }

    return 0;
  }

  provider = self->_provider;

  return objc_msgSend_archive_streamForEntryName_(provider, v9, self, name);
}

- (BOOL)writeContentsForEntryName:(id)name toFile:(id)file options:(unint64_t)options error:(id *)error
{
  v7 = objc_msgSend_contentsForEntryName_(self, a2, name);
  if (v7)
  {

    LOBYTE(v7) = MEMORY[0x1EEE66B58](v7, sel_writeToFile_options_error_, file);
  }

  return v7;
}

- (id)propertiesForEntryName:(id)name
{
  result = objc_msgSend_objectForKey_(self->_properties, a2, name);
  if (!result)
  {
    if (objc_msgSend_containsObject_(self->_names, v6, name))
    {
      if ((*&self->_zFlags & 4) == 0 || (result = objc_msgSend_archive_propertiesForEntryName_(self->_provider, v7, self, name)) == 0)
      {
        v9 = MEMORY[0x1E695DF20];

        return objc_msgSend_dictionary(v9, v7, v8);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)archiveData
{
  v91 = objc_msgSend_data(MEMORY[0x1E695DF88], a2, v2);
  v92 = objc_msgSend_data(MEMORY[0x1E695DF88], v4, v5);
  v8 = objc_msgSend_count(self->_names, v6, v7);
  v10 = v8;
  if (v8)
  {
    v11 = 0;
    selfCopy = self;
    v90 = v8;
    do
    {
      v12 = objc_msgSend_objectAtIndex_(self->_names, v9, v11, selfCopy, v90);
      v15 = objc_msgSend_UTF8String(v12, v13, v14);
      v16 = strlen(v15);
      v18 = objc_msgSend_contentsForEntryName_(self, v17, v12);
      v21 = objc_msgSend_length(v18, v19, v20);
      if (v16)
      {
        v23 = v18 == 0;
      }

      else
      {
        v23 = 1;
      }

      if (!v23)
      {
        v94 = v21;
        v24 = objc_msgSend_bytes(v18, v9, v22);
        v27 = objc_msgSend_length(v18, v25, v26);
        v28 = crc32(0, 0, 0);
        v95 = crc32(v28, v24, v27);
        v31 = objc_msgSend_bytes(v18, v29, v30);
        v34 = objc_msgSend_length(v18, v32, v33);
        if (v34)
        {
          for (i = 0; i < v34; ++i)
          {
            v38 = *(v31 + i);
            v40 = v38 - 14 < 0xFFFFFFF9 && (v38 & 0x1E) != 26;
            if (v38 <= 0x1F)
            {
              v41 = v40;
            }

            else
            {
              v41 = 0;
            }

            if (v41)
            {
              break;
            }
          }

          v42 = v41 ^ 1;
        }

        else
        {
          v42 = 1;
        }

        v93 = v42;
        v43 = objc_msgSend_bytes(v18, v35, v36);
        v46 = objc_msgSend_length(v18, v44, v45);
        v49 = 0;
        if (v43)
        {
          v50 = v46;
          if (v46)
          {
            v51 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v47, v46 - 1);
            memset(&strm.avail_in, 0, 104);
            strm.next_in = v43;
            strm.avail_in = v50;
            strm.next_out = objc_msgSend_mutableBytes(v51, v52, v53);
            strm.avail_out = v50 - 1;
            if (v51 && !deflateInit2_(&strm, 6, 8, -15, 8, 0, "1.2.12", 112) && (v54 = deflate(&strm, 4), v55 = deflateEnd(&strm), v54 == 1))
            {
              v49 = 0;
              if (!v55 && v50 == strm.total_in)
              {
                objc_msgSend_setLength_(v51, v47, strm.total_out);
                v49 = v51;
              }
            }

            else
            {
              v49 = 0;
            }
          }
        }

        v56 = 8 * (v49 != 0);
        if (v49)
        {
          v18 = v49;
        }

        v57 = objc_msgSend_length(v18, v47, v48);
        v59 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v58, v16 + 30);
        objc_msgSend_replaceBytesInRange_withBytes_(v59, v60, 0, 30, &unk_1AFE21E40);
        objc_msgSend_replaceBytesInRange_withBytes_(v59, v61, 30, v16, v15);
        v64 = objc_msgSend_mutableBytes(v59, v62, v63);
        *(v64 + 4) = 20;
        *(v64 + 8) = v56;
        *(v64 + 10) = 0;
        *(v64 + 14) = v95;
        *(v64 + 18) = v57;
        *(v64 + 22) = v94;
        *(v64 + 26) = v16;
        v66 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v65, v16 + 46);
        objc_msgSend_replaceBytesInRange_withBytes_(v66, v67, 0, 46, &unk_1AFE21E5E);
        objc_msgSend_replaceBytesInRange_withBytes_(v66, v68, 46, v16, v15);
        v71 = objc_msgSend_mutableBytes(v66, v69, v70);
        *(v71 + 6) = 20;
        *(v71 + 10) = v56;
        *(v71 + 12) = 0;
        *(v71 + 16) = v95;
        *(v71 + 20) = v57;
        *(v71 + 24) = v94;
        *(v71 + 28) = v16;
        *(v71 + 36) = v93;
        *(v71 + 42) = objc_msgSend_length(v92, v72, v73);
        objc_msgSend_appendData_(v92, v74, v59);
        objc_msgSend_appendData_(v92, v75, v18);
        objc_msgSend_appendData_(v91, v76, v66);
        self = selfCopy;
        v10 = v90;
      }

      ++v11;
    }

    while (v11 != v10);
  }

  v77 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v9, 22);
  objc_msgSend_replaceBytesInRange_withBytes_(v77, v78, 0, 22, &unk_1AFE21E8C);
  v81 = objc_msgSend_mutableBytes(v77, v79, v80);
  *(v81 + 8) = v10;
  *(v81 + 10) = v10;
  *(v81 + 12) = objc_msgSend_length(v91, v82, v83);
  *(v81 + 16) = objc_msgSend_length(v92, v84, v85);
  objc_msgSend_appendData_(v92, v86, v91);
  objc_msgSend_appendData_(v92, v87, v77);
  return v92;
}

- (id)archiveStream
{
  result = objc_msgSend_archiveData(self, a2, v2);
  if (result)
  {
    v4 = result;
    v5 = MEMORY[0x1E695DF48];

    return MEMORY[0x1EEE66B58](v5, sel_inputStreamWithData_, v4);
  }

  return result;
}

- (BOOL)writeToFile:(id)file options:(unint64_t)options error:(id *)error
{
  v6 = objc_msgSend_archiveData(self, a2, file);
  if (v6)
  {

    LOBYTE(v6) = MEMORY[0x1EEE66B58](v6, sel_writeToFile_options_error_, file);
  }

  return v6;
}

- (void)invalidate
{
  contents = self->_contents;
  if (contents)
  {

    self->_contents = 0;
  }

  data = self->_data;
  if (data)
  {

    self->_data = 0;
  }

  self->_provider = 0;
  zFlags = self->_zFlags;
  self->_zFlags = (*&zFlags & 0xFFFFFFF8);
  if ((*&zFlags & 0x10) != 0)
  {
    close(self->_desc);
    *&self->_zFlags &= ~0x10u;
  }

  path = self->_path;
  if (path)
  {

    self->_path = 0;
  }

  names = self->_names;
  if (names)
  {

    self->_names = 0;
  }

  properties = self->_properties;
  if (properties)
  {

    self->_properties = 0;
  }

  cachedContents = self->_cachedContents;
  if (cachedContents)
  {

    self->_cachedContents = 0;
  }
}

@end