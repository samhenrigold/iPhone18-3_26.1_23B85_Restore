@interface MDLAssetLoader
- (MDLAssetLoader)initWithExtension:(id)extension;
- (id)loadURL:(id)l;
@end

@implementation MDLAssetLoader

- (id)loadURL:(id)l
{
  lCopy = l;
  if (!sub_239F5C490(lCopy, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15))
  {
    v47 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"Could not open %@ file", v17, v22, v23, v24, v25, v18, v19, v20, v21, self->_extension);
LABEL_8:
    v48 = v47;
    goto LABEL_9;
  }

  v117 = 0uLL;
  v118 = 0;
  if (objc_msgSend_isEqualToString_(self->_extension, v16, @"PLY", v17, v22, v23, v24, v25, v18, v19, v20, v21))
  {
    v116 = 0;
    v114 = 0u;
    v115 = 0u;
    v113 = 0u;
    memset(&v112, 0, sizeof(v112));
    sub_239EE1FC4(&v112, 0);
    sub_239EE799C(&v112.st_dev, lCopy, &v110);
    v117 = v110;
    v118 = v111;
    sub_239EE20A4(&v112);
    goto LABEL_4;
  }

  v50 = objc_msgSend_path(lCopy, v26, v27, v28, v33, v34, v35, v36, v29, v30, v31, v32);
  v51 = v50;
  v62 = objc_msgSend_cStringUsingEncoding_(v51, v52, 4, v53, v58, v59, v60, v61, v54, v55, v56, v57);
  v63 = open(v62, 0);

  memset(&v112, 0, sizeof(v112));
  fstat(v63, &v112);
  st_size = v112.st_size;
  v71 = mmap(0, v112.st_size, 1, 2, v63, 0);
  if (v71 == -1)
  {
    v47 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v65, @"%@ file map failed", v66, v72, v73, v74, v75, v67, v68, v69, v70, self->_extension);
    goto LABEL_8;
  }

  if (!st_size)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v65, @"%@ file has no contents", v66, v72, v73, v74, v75, v67, v68, v69, v70, self->_extension);
    v47 = LABEL_27:;
    goto LABEL_8;
  }

  if (v63 < 0)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v65, @"Could not read %@ file", v66, v72, v73, v74, v75, v67, v68, v69, v70, self->_extension);
    goto LABEL_27;
  }

  if (objc_msgSend_isEqualToString_(self->_extension, v65, @"OBJ", v66, v72, v73, v74, v75, v67, v68, v69, v70))
  {
    sub_239E879F0(lCopy, v71, st_size, &v110);
    v117 = v110;
    v118 = v111;
  }

  else if (objc_msgSend_isEqualToString_(self->_extension, v76, @"STL", v77, v82, v83, v84, v85, v78, v79, v80, v81))
  {
    v97 = objc_msgSend_absoluteString(lCopy, v86, v87, v88, v93, v94, v95, v96, v89, v90, v91, v92);
    v98 = v97;
    objc_msgSend_UTF8String(v98, v99, v100, v101, v106, v107, v108, v109, v102, v103, v104, v105);
    sub_239EB6348(v71, st_size, &v110);
    v117 = v110;
    v118 = v111;
    HIBYTE(v111) = 0;
    LOBYTE(v110) = 0;
  }

  munmap(v71, st_size);
  close(v63);
LABEL_4:
  if ((SHIBYTE(v118) & 0x80000000) == 0)
  {
    if (!HIBYTE(v118))
    {
      v48 = &stru_284D18478;
      goto LABEL_9;
    }

    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, &v117, v38, v43, v44, v45, v46, v39, v40, v41, v42);
    goto LABEL_19;
  }

  if (*(&v117 + 1))
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v117, v38, v43, v44, v45, v46, v39, v40, v41, v42);
    v48 = LABEL_19:;
    if (v118 >= 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

  v48 = &stru_284D18478;
LABEL_25:
  operator delete(v117);
LABEL_9:

  return v48;
}

- (MDLAssetLoader)initWithExtension:(id)extension
{
  extensionCopy = extension;
  v9.receiver = self;
  v9.super_class = MDLAssetLoader;
  v6 = [(MDLAssetLoader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_extension, extension);
  }

  return v7;
}

@end