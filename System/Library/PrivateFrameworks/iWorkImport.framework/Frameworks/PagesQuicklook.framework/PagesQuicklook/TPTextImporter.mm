@interface TPTextImporter
- (BOOL)importToDocumentRoot:(id)root delegate:(id)delegate error:(id *)error;
- (TPTextImporter)initWithURL:(id)l;
@end

@implementation TPTextImporter

- (TPTextImporter)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = TPTextImporter;
  v6 = [(TPTextImporter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mURL, l);
  }

  return v7;
}

- (BOOL)importToDocumentRoot:(id)root delegate:(id)delegate error:(id *)error
{
  rootCopy = root;
  v83 = 0;
  v8 = objc_alloc(MEMORY[0x277CCAB68]);
  mURL = self->mURL;
  v82 = 0;
  v16 = objc_msgSend_initWithContentsOfURL_usedEncoding_error_(v8, v10, v12, v13, v14, v15, mURL, &v83, &v82, v11);
  v17 = v82;
  if (v17)
  {
    v27 = 1;
  }

  else
  {
    v27 = v16 == 0;
  }

  if (!v27)
  {
    v48 = 0;
    v49 = objc_msgSend_length(v16, v18, v23, v24, v25, v26, v19, v20, v21, v22);
LABEL_9:
    objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v16, v50, v51, v52, v53, v54, @"\r\n", @"\n", 2, 0, v49);
    v63 = objc_msgSend_filterText_(MEMORY[0x277D80F28], v55, v59, v60, v61, v62, v16, v56, v57, v58);

    v73 = objc_msgSend_bodyStorage(rootCopy, v64, v69, v70, v71, v72, v65, v66, v67, v68);
    objc_msgSend_insertString_atCharIndex_undoTransaction_(v73, v74, v76, v77, v78, v79, v63, 0, 0, v75);

    v47 = 1;
    goto LABEL_10;
  }

  v28 = objc_alloc(MEMORY[0x277CCAB68]);
  v29 = self->mURL;
  v81 = 0;
  v36 = objc_msgSend_initWithContentsOfURL_encoding_error_(v28, v30, v32, v33, v34, v35, v29, 12, &v81, v31);
  v48 = v81;

  if (!error || !v48)
  {
    if (error && !v36)
    {
      objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v37, v42, v43, v44, v45, @"com.apple.iWork.Pages.TextImport", 0, 0, v41);
      *error = v47 = 0;
      goto LABEL_10;
    }

    v16 = v36;
    v49 = objc_msgSend_length(v36, v37, v42, v43, v44, v45, v38, v39, v40, v41);
    goto LABEL_9;
  }

  v46 = v48;
  *error = v48;

  v47 = 0;
LABEL_10:

  return v47;
}

@end