@interface SHCompression
+ (BOOL)decompressAppleArchiveAtURL:(id)l toDirectoryURL:(id)rL error:(id *)error;
+ (BOOL)decompressFile:(id)file withAlgorithm:(int)algorithm toLocation:(id)location error:(id *)error;
@end

@implementation SHCompression

+ (BOOL)decompressFile:(id)file withAlgorithm:(int)algorithm toLocation:(id)location error:(id *)error
{
  v7 = *&algorithm;
  locationCopy = location;
  fileCopy = file;
  v11 = objc_alloc_init(SHDataStreamInput);
  v12 = [[SHDataCompression alloc] initForDecompressionWithAlgorithm:v7];
  [(SHDataStreamInput *)v11 setNext:v12];
  v13 = [[SHDataStreamOutput alloc] initWithDestination:locationCopy];

  [v12 setNext:v13];
  LOBYTE(error) = [(SHDataStreamInput *)v11 loadDataFromURL:fileCopy error:error];

  return error;
}

+ (BOOL)decompressAppleArchiveAtURL:(id)l toDirectoryURL:(id)rL error:(id *)error
{
  v65[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  v9 = rLCopy;
  if (!lCopy || !rLCopy)
  {
    rLCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to archive. Archive path %@ or destination path %@ is nil.", lCopy, rLCopy];
    v64 = *MEMORY[0x277CCA068];
    v65[0] = rLCopy;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:&v64 count:1];
    [SHCoreError annotateError:error code:302 underlyingError:0 keyOverrides:v29];

    v31 = shcore_log_object(v30);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    v49 = rLCopy;
LABEL_23:
    _os_log_impl(&dword_231025000, v31, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    goto LABEL_24;
  }

  path = [(__CFString *)lCopy path];
  v11 = AAFileStreamOpenWithPath([path fileSystemRepresentation], 0, 0x1A4u);

  if (!v11)
  {
    rLCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to open source apple archive file at %@.", lCopy];
    v62 = *MEMORY[0x277CCA068];
    v63 = rLCopy;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    [SHCoreError annotateError:error code:302 underlyingError:0 keyOverrides:v32];

    v31 = shcore_log_object(v33);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    v49 = rLCopy;
    goto LABEL_23;
  }

  v12 = AADecompressionInputStreamOpen(v11, 0, 0);
  if (!v12)
  {
    AAByteStreamClose(v11);
    rLCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to open archive decompressed input stream at %@.", lCopy];
    v60 = *MEMORY[0x277CCA068];
    v61 = rLCopy;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
    [SHCoreError annotateError:error code:302 underlyingError:0 keyOverrides:v34];

    v31 = shcore_log_object(v35);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    v49 = rLCopy;
    goto LABEL_23;
  }

  v13 = v12;
  v14 = AADecodeArchiveInputStreamOpen(v12, 0, 0, 0, 0);
  if (v14)
  {
    v15 = v14;
    v47 = 0;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path2 = [v9 path];
    v18 = [defaultManager fileExistsAtPath:path2 isDirectory:&v47];
    v19 = v47;

    if (!v18 || (v19 & 1) == 0)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v46 = 0;
      v21 = [defaultManager2 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v46];
      v22 = v46;

      if (!v21)
      {
        AAByteStreamClose(v13);
        AAByteStreamClose(v11);
        AAArchiveStreamClose(v15);
        rLCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create directory at url %@.", v9];
        v56 = *MEMORY[0x277CCA068];
        v57 = rLCopy;
        v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
        [SHCoreError annotateError:error code:302 underlyingError:v22 keyOverrides:v41];

        v43 = shcore_log_object(v42);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v49 = rLCopy;
          _os_log_impl(&dword_231025000, v43, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }

        goto LABEL_34;
      }
    }

    path3 = [v9 path];
    v24 = AAExtractArchiveOutputStreamOpen([path3 fileSystemRepresentation], 0, 0, 1uLL, 0);

    if (v24)
    {
      v25 = AAArchiveStreamProcess(v15, v24, 0, 0, 0, 0);
      AAByteStreamClose(v13);
      AAByteStreamClose(v11);
      AAArchiveStreamClose(v15);
      v26 = AAArchiveStreamClose(v24);
      if ((v25 & 0x8000000000000000) == 0)
      {
        v22 = shcore_log_object(v26);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v49 = lCopy;
          v50 = 2112;
          v51 = v9;
          _os_log_impl(&dword_231025000, v22, OS_LOG_TYPE_DEBUG, "Extracted archive from %@ to destination: %@", buf, 0x16u);
        }

        v27 = 1;
        rLCopy = &stru_2845D1F60;
        goto LABEL_35;
      }

      rLCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to decompress archive file %@ to destination directory %@. Stream processing failed.", lCopy, v9];
      v52 = *MEMORY[0x277CCA068];
      v53 = rLCopy;
      v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      [SHCoreError annotateError:error code:302 underlyingError:0 keyOverrides:v44];

      v22 = shcore_log_object(v45);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v49 = rLCopy;
        goto LABEL_33;
      }
    }

    else
    {
      AAByteStreamClose(v13);
      AAByteStreamClose(v11);
      AAArchiveStreamClose(v15);
      rLCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create output directory stream at %@ for decompression.", v9];
      v54 = *MEMORY[0x277CCA068];
      v55 = rLCopy;
      v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      [SHCoreError annotateError:error code:302 underlyingError:0 keyOverrides:v39];

      v22 = shcore_log_object(v40);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v49 = rLCopy;
LABEL_33:
        _os_log_impl(&dword_231025000, v22, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

LABEL_34:
    v27 = 0;
LABEL_35:

    goto LABEL_25;
  }

  AAByteStreamClose(v13);
  AAByteStreamClose(v11);
  rLCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to decode archive decompressed stream at %@.", lCopy];
  v58 = *MEMORY[0x277CCA068];
  v59 = rLCopy;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
  [SHCoreError annotateError:error code:302 underlyingError:0 keyOverrides:v36];

  v31 = shcore_log_object(v37);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v49 = rLCopy;
    goto LABEL_23;
  }

LABEL_24:

  v27 = 0;
LABEL_25:

  return v27;
}

@end