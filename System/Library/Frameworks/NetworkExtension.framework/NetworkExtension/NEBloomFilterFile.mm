@interface NEBloomFilterFile
+ (char)mmapToFile:(id)file data:(id)data numberOfBits:(unsigned int)bits numberOfHashes:(unsigned int)hashes murmurSeed:(unsigned int)seed tag:(id)tag;
@end

@implementation NEBloomFilterFile

+ (char)mmapToFile:(id)file data:(id)data numberOfBits:(unsigned int)bits numberOfHashes:(unsigned int)hashes murmurSeed:(unsigned int)seed tag:(id)tag
{
  *&v52[53] = *MEMORY[0x1E69E9840];
  fileCopy = file;
  dataCopy = data;
  tagCopy = tag;
  v16 = open([fileCopy UTF8String], 518, 420);
  if (v16 < 0)
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v36 = *__error();
      v37 = __error();
      v38 = strerror(*v37);
      *__strerrbuf = 136315906;
      v46 = "+[NEBloomFilterFile mmapToFile:data:numberOfBits:numberOfHashes:murmurSeed:tag:]";
      v47 = 2112;
      v48 = fileCopy;
      v49 = 1024;
      v50 = v36;
      v51 = 2080;
      *v52 = v38;
      v23 = "%s: NEBloomFilterFile - failed to open mmap file %@ <errno %d - %s>";
      v24 = v19;
      v25 = 38;
      goto LABEL_27;
    }

    goto LABEL_6;
  }

  v17 = v16;
  v18 = [dataCopy length] + 32;
  if (ftruncate(v17, v18))
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *__error();
      v21 = __error();
      v22 = strerror(*v21);
      *__strerrbuf = 136316162;
      v46 = "+[NEBloomFilterFile mmapToFile:data:numberOfBits:numberOfHashes:murmurSeed:tag:]";
      v47 = 2112;
      v48 = fileCopy;
      v49 = 1024;
      v50 = v18;
      v51 = 1024;
      *v52 = v20;
      v52[2] = 2080;
      *&v52[3] = v22;
      v23 = "%s: NEBloomFilterFile - failed to ftruncate mmap file <%@> to %d bytes <errno %d - %s>";
      v24 = v19;
      v25 = 44;
LABEL_27:
      _os_log_error_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_ERROR, v23, __strerrbuf, v25);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  v28 = mmap(0, v18, 3, 1, v17, 0);
  if (v28 == -1)
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *__strerrbuf = 136315906;
      v46 = "+[NEBloomFilterFile mmapToFile:data:numberOfBits:numberOfHashes:murmurSeed:tag:]";
      v47 = 2112;
      v48 = fileCopy;
      v49 = 1024;
      v50 = v17;
      v51 = 1024;
      *v52 = v18;
      v23 = "%s: NEBloomFilterFile - Failed mmap file <%@> <fd %d, size %d>";
      v24 = v19;
      v25 = 34;
      goto LABEL_27;
    }

LABEL_6:
    v26 = 0;
    goto LABEL_7;
  }

  v29 = v28;
  v30 = [dataCopy length];
  *v29 = xmmword_1BAA4E620;
  *(v29 + 4) = bits;
  *(v29 + 5) = hashes;
  *(v29 + 6) = seed;
  *(v29 + 7) = v30;
  if (tagCopy && [tagCopy length] && (objc_msgSend(tagCopy, "dataUsingEncoding:", 4), (v31 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v19 = v31;
    v32 = [v31 length];
    *(v29 + 8) = v32;
    v26 = v29 + 36;
    if (v32)
    {
      memcpy(v29 + 36, [v19 bytes], v32);
      v26 += v32;
    }
  }

  else
  {
    v19 = 0;
    *(v29 + 8) = 0;
    v26 = v29 + 36;
  }

  [dataCopy getBytes:v26 length:{objc_msgSend(dataCopy, "length")}];
  if (msync(v29, v18, 16) == -1)
  {
    v34 = *__error();
    if (strerror_r(v34, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v35 = ne_log_obj();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v40 = "+[NEBloomFilterFile mmapToFile:data:numberOfBits:numberOfHashes:murmurSeed:tag:]";
      v41 = 1024;
      v42 = v34;
      v43 = 2080;
      v44 = __strerrbuf;
      _os_log_fault_impl(&dword_1BA83C000, v35, OS_LOG_TYPE_FAULT, "%s: NEBloomFilterFile - Failed msync: [%d] %s", buf, 0x1Cu);
    }

    goto LABEL_6;
  }

  v33 = ne_log_obj();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    *__strerrbuf = 136315138;
    v46 = "+[NEBloomFilterFile mmapToFile:data:numberOfBits:numberOfHashes:murmurSeed:tag:]";
    _os_log_debug_impl(&dword_1BA83C000, v33, OS_LOG_TYPE_DEBUG, "%s: NEBloomFilterFile - done msync", __strerrbuf, 0xCu);
  }

  munmap(v29, v18);
  close(v17);
LABEL_7:

  return v26;
}

@end