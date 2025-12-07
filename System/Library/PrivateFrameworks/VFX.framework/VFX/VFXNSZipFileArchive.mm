@interface VFXNSZipFileArchive
- (BOOL)writeContentsForEntryName:(id)name toFile:(id)file options:(unint64_t)options error:(id *)error;
- (BOOL)writeToFile:(id)file options:(unint64_t)options error:(id *)error;
- (VFXNSZipFileArchive)initWithData:(id)data options:(unint64_t)options error:(id *)error;
- (VFXNSZipFileArchive)initWithEntryNames:(id)names contents:(id)contents properties:(id)properties options:(unint64_t)options;
- (VFXNSZipFileArchive)initWithEntryNames:(id)names dataProvider:(id)provider options:(unint64_t)options;
- (VFXNSZipFileArchive)initWithPath:(id)path options:(unint64_t)options error:(id *)error;
- (id)archiveData;
- (id)archiveStream;
- (id)contentsForEntryName:(id)name;
- (id)propertiesForEntryName:(id)name;
- (id)streamForEntryName:(id)name;
- (void)dealloc;
- (void)invalidate;
@end

@implementation VFXNSZipFileArchive

- (VFXNSZipFileArchive)initWithPath:(id)path options:(unint64_t)options error:(id *)error
{
  v17.receiver = self;
  v17.super_class = VFXNSZipFileArchive;
  v8 = [(VFXNSZipFileArchive *)&v17 init];
  v11 = v8;
  if (!path || !v8)
  {
    if (!v8)
    {
      return v11;
    }

    goto LABEL_8;
  }

  if (!objc_msgSend_length(path, v9, v10))
  {
    goto LABEL_8;
  }

  if ((options & 3) <= 1)
  {
    if ((options & 3) != 0)
    {
      v14 = sub_1AF1D6724(path, v9, v10);
      *(v11 + 32) = v14;
      if ((v14 & 0x8000000000000000) == 0)
      {
        *(v11 + 80) |= 0x10u;
        goto LABEL_17;
      }

LABEL_8:
      objc_msgSend_dealloc(v11, v9, v10);
      return 0;
    }

    v12 = objc_msgSend_dataWithContentsOfFile_options_error_(MEMORY[0x1E695DEF0], v9, path, 0, error);
LABEL_12:
    if (v12)
    {
      v11 = objc_msgSend_initWithData_options_error_(v11, v9, v12, options, error);
      if (!v11)
      {
        return v11;
      }

LABEL_17:
      if ((options & 4) != 0)
      {
        goto LABEL_21;
      }

      return v11;
    }

    goto LABEL_8;
  }

  if ((options & 3) == 2)
  {
    v12 = objc_msgSend_dataWithContentsOfFile_options_error_(MEMORY[0x1E695DEF0], v9, path, 1, error);
    goto LABEL_12;
  }

  v15 = sub_1AF1D6724(path, v9, v10);
  if (v15 < 0)
  {
    goto LABEL_8;
  }

  v16 = v15;
  *(v11 + 40) = objc_msgSend_copy(path, v9, v10);
  close(v16);
  if ((options & 4) != 0)
  {
LABEL_21:
    *(v11 + 80) |= 8u;
  }

  return v11;
}

- (VFXNSZipFileArchive)initWithData:(id)data options:(unint64_t)options error:(id *)error
{
  optionsCopy = options;
  v85.receiver = self;
  v85.super_class = VFXNSZipFileArchive;
  v7 = [(VFXNSZipFileArchive *)&v85 init:data];
  v10 = v7;
  if (!data || !v7)
  {
    goto LABEL_73;
  }

  v75 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9);
  v74 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v11, v12);
  v15 = objc_msgSend_bytes(data, v13, v14);
  v18 = objc_msgSend_length(data, v16, v17);
  if (v18 < 0x15)
  {
    goto LABEL_74;
  }

  v19 = v18;
  v9 = 0;
  v20 = 0;
  v21 = -20;
  v22 = 20;
  v23 = v15;
  v8 = v15;
  do
  {
    v24 = *(v23 + v18 - 20);
    if (v24 == 117853008)
    {
      v25 = 0;
      if (v18 >= 0x39)
      {
        v26 = *(v23 + v18 - 12);
        if (v26 <= v18 - 56)
        {
          v27 = v15 + v26;
          if (*(v15 + v26) == 101075792)
          {
            v9 = *(v27 + 24);
            v20 = *(v27 + 48);
            v25 = *(v23 + v18 - 12);
          }

          else
          {
            v25 = 0;
          }
        }
      }
    }

    else if (v24 == 101010256)
    {
      v25 = v18 - v22;
      v9 = *(v23 + v18 - 12);
      v20 = *(v23 + v18 - 4);
    }

    else
    {
      v25 = 0;
      if (v22 >= 0x38 && v24 == 101075792)
      {
        v25 = v18 + v21;
        v9 = *(v23 + v18 + 4);
        v20 = *(v23 + v18 + 28);
      }
    }

    if (v22 > 0x101CE)
    {
      break;
    }

    if (v25)
    {
      break;
    }

    ++v22;
    --v21;
    --v23;
  }

  while (v22 < v18);
  if (!v9)
  {
    goto LABEL_73;
  }

  dataCopy = data;
  v70 = optionsCopy;
  v76 = 0;
  v28 = 0;
  v73 = v15 + 8;
  v71 = v10;
  v72 = v15 + 16;
  v29 = v20;
  v84 = v15;
  do
  {
    if (v29 < v20)
    {
      break;
    }

    if (v29 >= v19)
    {
      break;
    }

    v30 = v29 + 46;
    if (v29 + 46 <= v20)
    {
      break;
    }

    if (v30 > v19)
    {
      break;
    }

    v31 = &v8[v29];
    if (*v31 != 33639248)
    {
      break;
    }

    v82 = v9;
    v33 = *(v31 + 5);
    v32 = *(v31 + 6);
    v34 = *(v31 + 14);
    v35 = *(v31 + 42);
    v36 = v33 == 0xFFFFFFFFLL || v32 == -1;
    v37 = v36 || v35 == -1;
    v38 = v37;
    v39 = v30 + v34;
    if (v30 + v34 <= v20 || v39 > v19)
    {
      break;
    }

    v40 = 0;
    v78 = *(v31 + 5);
    v41 = *(v31 + 15);
    v80 = *(v31 + 4);
    v81 = *(v31 + 16);
    v83 = v41;
    if (*(v31 + 14))
    {
      if (v20 > v35)
      {
        v42 = objc_alloc(MEMORY[0x1E696AEC0]);
        v40 = objc_msgSend_initWithBytes_length_encoding_(v42, v43, &v84[v30], v34, 4);
        v41 = v83;
        if (!v40)
        {
          v44 = objc_alloc(MEMORY[0x1E696AEC0]);
          v40 = objc_msgSend_initWithBytes_length_encoding_(v44, v45, &v84[v30], v34, 12);
          v41 = v83;
        }
      }
    }

    if (v41 > 4u && v38)
    {
      v47 = v39 + v41;
      v8 = v84;
      if (v39 < v39 + v41 && v47 > v20 && v47 <= v19)
      {
        v48 = v30 + v34;
        do
        {
          v49 = &v84[v48];
          v50 = *&v84[v48 + 2];
          v51 = v48 + 4;
          v48 += 4 + v50;
          if (v48 <= v51 || v48 > v47)
          {
            break;
          }

          v53 = *v49;
          if (v50 >= 0x18 && v53 == 1)
          {
            if (v32 == 0xFFFFFFFFLL)
            {
              v32 = *&v84[v51];
            }

            if (v33 == 0xFFFFFFFFLL)
            {
              v33 = *(v73 + v51);
            }

            if (v35 == 0xFFFFFFFF)
            {
              v35 = *(v72 + v51);
            }
          }
        }

        while (v48 < v47);
      }
    }

    else
    {
      v8 = v84;
    }

    if (v40)
    {
      v77 = MEMORY[0x1E695DF20];
      v55 = v40;
      v79 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v8, v78);
      v57 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v56, v35);
      v59 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v58, v80);
      v61 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v60, v33);
      v63 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v62, v32);
      v65 = objc_msgSend_dictionaryWithObjectsAndKeys_(v77, v64, v79, @"NSZipFileArchiveCompressionType", v57, @"NSZipFileArchiveHeaderOffset", v59, @"NSZipFileArchiveCRC", v61, @"NSZipFileArchiveCompressedLength", v63, @"NSZipFileArchiveUncompressedLength", 0);
      objc_msgSend_addObject_(v75, v66, v55);
      objc_msgSend_setObject_forKey_(v74, v67, v65, v55);
      v41 = v83;
      v8 = v84;
      v76 = 1;
    }

    v9 = v82;
    v29 = v39 + v41 + v81;
    ++v28;
  }

  while (v28 != v82);
  v10 = v71;
  if ((v76 & 1) == 0)
  {
LABEL_73:
    if (!v10)
    {
      return v10;
    }

LABEL_74:
    objc_msgSend_dealloc(v10, v8, v9);
    return 0;
  }

  v71->_data = dataCopy;
  v71->_names = v75;
  v71->_properties = v74;
  if ((v70 & 4) != 0)
  {
    *&v71->_zFlags |= 8u;
  }

  return v10;
}

- (VFXNSZipFileArchive)initWithEntryNames:(id)names contents:(id)contents properties:(id)properties options:(unint64_t)options
{
  v10 = objc_msgSend_count(names, a2, names, contents, properties, options);
  v25.receiver = self;
  v25.super_class = VFXNSZipFileArchive;
  v13 = [(VFXNSZipFileArchive *)&v25 init];
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
    objc_msgSend_dealloc(v13, v11, v12);
    return 0;
  }

  return v13;
}

- (VFXNSZipFileArchive)initWithEntryNames:(id)names dataProvider:(id)provider options:(unint64_t)options
{
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = VFXNSZipFileArchive;
  v8 = [(VFXNSZipFileArchive *)&v13 init];
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
    objc_msgSend_dealloc(v8, v9, v10);
    return 0;
  }

  return v8;
}

- (void)dealloc
{
  objc_msgSend_invalidate(self, a2, v2);
  v4.receiver = self;
  v4.super_class = VFXNSZipFileArchive;
  [(VFXNSZipFileArchive *)&v4 dealloc];
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
      v13 = objc_msgSend_objectForKey_(v10, v11, @"NSZipFileArchiveHeaderOffset");
      v16 = objc_msgSend_unsignedIntegerValue(v13, v14, v15);
      v18 = objc_msgSend_objectForKey_(v12, v17, @"NSZipFileArchiveCompressionType");
      v21 = objc_msgSend_unsignedIntegerValue(v18, v19, v20);
      v23 = objc_msgSend_objectForKey_(v12, v22, @"NSZipFileArchiveCRC");
      v26 = objc_msgSend_unsignedIntegerValue(v23, v24, v25);
      v28 = objc_msgSend_objectForKey_(v12, v27, @"NSZipFileArchiveCompressedLength");
      v31 = objc_msgSend_unsignedIntegerValue(v28, v29, v30);
      v33 = objc_msgSend_objectForKey_(v12, v32, @"NSZipFileArchiveUncompressedLength");
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
                  if (v26 == sub_1AF3782CC(v59, v36))
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

            if (!v21 && v26 == sub_1AF3782CC((v40 + v46), v31))
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
  v119 = objc_msgSend_data(MEMORY[0x1E695DF88], a2, v2);
  v120 = objc_msgSend_data(MEMORY[0x1E695DF88], v4, v5);
  selfCopy = self;
  v8 = objc_msgSend_count(self->_names, v6, v7);
  v9 = objc_alloc(MEMORY[0x1E695DEE8]);
  v11 = objc_msgSend_initWithCalendarIdentifier_(v9, v10, *MEMORY[0x1E695D850]);
  v14 = objc_msgSend_date(MEMORY[0x1E695DF00], v12, v13);
  v16 = objc_msgSend_components_fromDate_(v11, v15, 252, v14);
  v19 = objc_msgSend_year(v16, v17, v18);
  v22 = objc_msgSend_month(v16, v20, v21);
  v25 = objc_msgSend_day(v16, v23, v24);
  v28 = objc_msgSend_hour(v16, v26, v27);
  v31 = objc_msgSend_minute(v16, v29, v30);
  v34 = objc_msgSend_second(v16, v32, v33);
  v36 = (v19 << 9) - 30720;
  if (v19 < 0x7BC)
  {
    v36 = 0;
  }

  if (v8)
  {
    v37 = 0;
    v117 = (32 * v31) | (v28 << 11) | (v34 >> 1);
    v118 = v8;
    v38 = v25 | (32 * v22) | v36;
    do
    {
      v39 = objc_msgSend_objectAtIndex_(selfCopy->_names, v35, v37);
      v42 = objc_msgSend_UTF8String(v39, v40, v41);
      v43 = strlen(v42);
      v45 = objc_msgSend_contentsForEntryName_(selfCopy, v44, v39);
      v48 = objc_msgSend_length(v45, v46, v47);
      if (v43)
      {
        v50 = v45 == 0;
      }

      else
      {
        v50 = 1;
      }

      if (!v50)
      {
        v124 = v48;
        v51 = objc_msgSend_bytes(v45, v35, v49);
        v54 = objc_msgSend_length(v45, v52, v53);
        v55 = crc32(0, 0, 0);
        v123 = crc32(v55, v51, v54);
        v58 = objc_msgSend_bytes(v45, v56, v57);
        v61 = objc_msgSend_length(v45, v59, v60);
        if (v61)
        {
          for (i = 0; i < v61; ++i)
          {
            v65 = *(v58 + i);
            v67 = v65 - 14 < 0xFFFFFFF9 && (v65 & 0x1E) != 26;
            if (v65 <= 0x1F)
            {
              v68 = v67;
            }

            else
            {
              v68 = 0;
            }

            if (v68)
            {
              break;
            }
          }

          v69 = v68 ^ 1;
        }

        else
        {
          v69 = 1;
        }

        v122 = v69;
        v70 = objc_msgSend_bytes(v45, v62, v63);
        v73 = objc_msgSend_length(v45, v71, v72);
        v76 = 0;
        if (v70)
        {
          v77 = v73;
          if (v73)
          {
            v78 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v74, v73 - 1);
            memset(&strm.avail_in, 0, 104);
            strm.next_in = v70;
            strm.avail_in = v77;
            strm.next_out = objc_msgSend_mutableBytes(v78, v79, v80);
            strm.avail_out = v77 - 1;
            if (v78 && !deflateInit2_(&strm, 6, 8, -15, 8, 0, "1.2.12", 112) && (v81 = deflate(&strm, 4), v82 = deflateEnd(&strm), v81 == 1))
            {
              v76 = 0;
              if (!v82 && v77 == strm.total_in)
              {
                objc_msgSend_setLength_(v78, v74, strm.total_out);
                v76 = v78;
              }
            }

            else
            {
              v76 = 0;
            }
          }
        }

        v83 = 8 * (v76 != 0);
        if (v76)
        {
          v84 = v76;
        }

        else
        {
          v84 = v45;
        }

        v121 = v84;
        v85 = objc_msgSend_length(v84, v74, v75);
        v87 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v86, v43 + 30);
        objc_msgSend_replaceBytesInRange_withBytes_(v87, v88, 0, 30, &unk_1AFE47D90);
        objc_msgSend_replaceBytesInRange_withBytes_(v87, v89, 30, v43, v42);
        v92 = objc_msgSend_mutableBytes(v87, v90, v91);
        *(v92 + 4) = 20;
        *(v92 + 8) = v83;
        *(v92 + 10) = v117;
        *(v92 + 12) = v38;
        *(v92 + 14) = v123;
        *(v92 + 18) = v85;
        *(v92 + 22) = v124;
        *(v92 + 26) = v43;
        v94 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v93, v43 + 46);
        objc_msgSend_replaceBytesInRange_withBytes_(v94, v95, 0, 46, &unk_1AFE47DAE);
        objc_msgSend_replaceBytesInRange_withBytes_(v94, v96, 46, v43, v42);
        v99 = objc_msgSend_mutableBytes(v94, v97, v98);
        *(v99 + 6) = 20;
        *(v99 + 10) = v83;
        *(v99 + 12) = v117;
        *(v99 + 14) = v38;
        *(v99 + 16) = v123;
        *(v99 + 20) = v85;
        *(v99 + 24) = v124;
        *(v99 + 28) = v43;
        *(v99 + 36) = v122;
        *(v99 + 42) = objc_msgSend_length(v120, v100, v101);
        objc_msgSend_appendData_(v120, v102, v87);
        objc_msgSend_appendData_(v120, v103, v121);
        objc_msgSend_appendData_(v119, v104, v94);
        v8 = v118;
      }

      ++v37;
    }

    while (v37 != v8);
  }

  v105 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v35, 22);
  objc_msgSend_replaceBytesInRange_withBytes_(v105, v106, 0, 22, &unk_1AFE47DDC);
  v109 = objc_msgSend_mutableBytes(v105, v107, v108);
  *(v109 + 8) = v8;
  *(v109 + 10) = v8;
  *(v109 + 12) = objc_msgSend_length(v119, v110, v111);
  *(v109 + 16) = objc_msgSend_length(v120, v112, v113);
  objc_msgSend_appendData_(v120, v114, v119);
  objc_msgSend_appendData_(v120, v115, v105);
  return v120;
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