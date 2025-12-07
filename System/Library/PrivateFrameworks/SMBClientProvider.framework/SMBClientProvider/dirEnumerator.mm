@interface dirEnumerator
- (dirEnumerator)initWithNode:(id)node;
- (int)closeEnumeration;
- (int)fillDirEntry:(char *)entry withBufLen:(unint64_t)len DirEntry:(id)dirEntry IsReadDirAttr:(BOOL)attr retBytesWritten:(unsigned int *)written;
- (int)fillNextEntry:(char *)entry BufLen:(unint64_t)len IsReadDirAttr:(BOOL)attr BytesFilled:(unsigned int *)filled;
- (int)openEnumeration;
- (int)resetCurrentIndex:(unint64_t)index;
- (int)restart_dir_enum;
- (int)skipAnEntry;
- (smbNode)dnp;
- (void)_getEntriesInBuffer:(char *)buffer BufferLen:(unint64_t)len CookieIn:(unint64_t)in VerifyIn:(unint64_t)verifyIn IsReadDirAttr:(BOOL)attr CompletionHandler:(id)handler;
- (void)close_dir_enum;
- (void)getEntriesInBuffer:(char *)buffer BufferLen:(unint64_t)len CookieIn:(unint64_t)in VerifyIn:(unint64_t)verifyIn IsReadDirAttr:(BOOL)attr CompletionHandler:(id)handler;
- (void)processNextEntry:(unsigned int)entry inbufPtr:(char *)ptr prevEntry:(void *)prevEntry inbufRemain:(unint64_t)remain bytesFilled:(unsigned int)filled IsReadDirAttr:(BOOL)attr CompletionHandler:(id)handler;
- (void)resetAfterReconnect;
@end

@implementation dirEnumerator

- (dirEnumerator)initWithNode:(id)node
{
  nodeCopy = node;
  v13.receiver = self;
  v13.super_class = dirEnumerator;
  v5 = [(dirEnumerator *)&v13 init];
  v6 = v5;
  if (v5)
  {
    deObj = v5->_deObj;
    v5->_deObj = 0;

    tmpDent = v6->_tmpDent;
    v6->_tmpDent = 0;

    objc_storeWeak(&v6->_dnp, nodeCopy);
    dentObjSave = v6->_dentObjSave;
    v6->_dentObjSave = 0;

    v6->_entryIndex = 0;
    v6->_enumState = 0;
    v10 = dispatch_queue_create("com.apple.SMBProvider.dirEnumerationSyncQueue", 0);
    dirEnumerationSyncQueue = v6->_dirEnumerationSyncQueue;
    v6->_dirEnumerationSyncQueue = v10;
  }

  return v6;
}

- (void)resetAfterReconnect
{
  if ([(dirEnumerator *)self enumState]== 1)
  {
    [(dirEnumerator *)self closeEnumeration];

    [(dirEnumerator *)self setEnumState:0];
  }
}

- (int)closeEnumeration
{
  v3 = dispatch_group_create();
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  dispatch_group_enter(v3);
  deObj = [(dirEnumerator *)self deObj];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1000023DC;
  v12 = &unk_10008C740;
  v14 = &v15;
  v5 = v3;
  v13 = v5;
  [smb_subr enumDirClose:deObj CompletionHandler:&v9];

  dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = [(dirEnumerator *)self dentObjSave:v9];

  if (v6)
  {
    [(dirEnumerator *)self setDentObjSave:0];
  }

  self->_entryIndex = 0;
  self->_enumState = 0;
  v7 = *(v16 + 6);

  _Block_object_dispose(&v15, 8);
  return v7;
}

- (int)openEnumeration
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v3 = dispatch_group_create();
  *(v13 + 6) = 0;
  dentObjSave = [(dirEnumerator *)self dentObjSave];

  if (dentObjSave)
  {
    [(dirEnumerator *)self setDentObjSave:0];
  }

  self->_entryIndex = 0;
  dispatch_group_enter(v3);
  v5 = [(dirEnumerator *)self dnp];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100002554;
  v9[3] = &unk_10008C768;
  v11 = &v12;
  v9[4] = self;
  v6 = v3;
  v10 = v6;
  [smb_subr enumDirOpen:v5 SearchPattern:@"*" IsWildcard:1 CompletionHandler:v9];

  dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = *(v13 + 6);

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (int)restart_dir_enum
{
  enumState = self->_enumState;
  if ((enumState - 1) >= 2)
  {
    if (enumState)
    {
      return 0;
    }

    else
    {
      openEnumeration = [(dirEnumerator *)self openEnumeration];
      if (openEnumeration && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10004BADC();
      }
    }
  }

  else
  {
    [(dirEnumerator *)self closeEnumeration];
    openEnumeration = [(dirEnumerator *)self openEnumeration];
    if (openEnumeration && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004BA58();
    }
  }

  return openEnumeration;
}

- (void)close_dir_enum
{
  if ((self->_enumState - 1) <= 1)
  {
    [(dirEnumerator *)self closeEnumeration];
  }
}

- (int)skipAnEntry
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  entryIndex = self->_entryIndex;
  if (entryIndex > 1)
  {
    tmpDent = [(dirEnumerator *)self tmpDent];

    if (tmpDent || (v6 = objc_alloc_init(SMBDirEntry), [(dirEnumerator *)self setTmpDent:v6], v6, [(dirEnumerator *)self tmpDent], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {
      v8 = dispatch_group_create();
      dispatch_group_enter(v8);
      deObj = [(dirEnumerator *)self deObj];
      tmpDent2 = [(dirEnumerator *)self tmpDent];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100002880;
      v13[3] = &unk_10008C790;
      v15 = &v16;
      v13[4] = self;
      v11 = v8;
      v14 = v11;
      [smb_subr enumDirNext:deObj DirEnt:tmpDent2 CompletionHandler:v13];

      dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
      v3 = *(v17 + 6);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10004BB54();
      }

      v3 = 12;
      *(v17 + 6) = 12;
    }
  }

  else
  {
    v3 = 0;
    self->_entryIndex = entryIndex + 1;
  }

  _Block_object_dispose(&v16, 8);
  return v3;
}

- (int)resetCurrentIndex:(unint64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_dnp);
  if (self->_entryIndex <= index || (v6 = [(dirEnumerator *)self restart_dir_enum]) == 0)
  {
    do
    {
      if (self->_entryIndex == index)
      {
        v7 = 0;
        goto LABEL_11;
      }

      skipAnEntry = [(dirEnumerator *)self skipAnEntry];
    }

    while (!skipAnEntry);
    v7 = skipAnEntry;
    v11 = &_os_log_default;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    if (WeakRetained)
    {
      name = [WeakRetained name];
    }

    else
    {
      name = @"nil";
    }

    entryIndex = self->_entryIndex;
    v16 = 138413058;
    v17 = name;
    v18 = 2048;
    v19 = entryIndex;
    v20 = 2048;
    indexCopy2 = index;
    v22 = 1024;
    v23 = v7;
    v14 = "resetCurrentIndex: dnp: %@, entryIndex: %llu, requestedIndex: %llu, skipAnEntry error: %d\n";
    goto LABEL_18;
  }

  v7 = v6;
  v8 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    if (WeakRetained)
    {
      name = [WeakRetained name];
    }

    else
    {
      name = @"nil";
    }

    v15 = self->_entryIndex;
    v16 = 138413058;
    v17 = name;
    v18 = 2048;
    v19 = v15;
    v20 = 2048;
    indexCopy2 = index;
    v22 = 1024;
    v23 = v7;
    v14 = "resetCurrentIndex: dnp: %@, entryIndex: %llu, requestedIndex: %llu, restart_dir_enum error: %d\n";
LABEL_18:
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, v14, &v16, 0x26u);
    if (WeakRetained)
    {
    }
  }

LABEL_9:

LABEL_11:
  return v7;
}

- (int)fillDirEntry:(char *)entry withBufLen:(unint64_t)len DirEntry:(id)dirEntry IsReadDirAttr:(BOOL)attr retBytesWritten:(unsigned int *)written
{
  attrCopy = attr;
  dirEntryCopy = dirEntry;
  v13 = dirEntryCopy;
  if (dirEntryCopy)
  {
    objc_msgSend_attributes(dirEntryCopy);
    if (DWORD2(v88) == 1)
    {
      v14 = 1;
      v15 = 1;
      goto LABEL_12;
    }

    objc_msgSend_attributes(v13);
    if (DWORD2(v73) == 2)
    {
      v14 = 0;
      v15 = 2;
      goto LABEL_12;
    }

    objc_msgSend_attributes(v13);
    if (DWORD2(v58) == 5)
    {
      v14 = 0;
      v15 = 3;
      goto LABEL_12;
    }
  }

  else
  {
    v95 = 0u;
    v94 = 0u;
    v93 = 0u;
    v92 = 0u;
    v91 = 0u;
    v90 = 0u;
    v89 = 0u;
    v88 = 0u;
    v87 = 0u;
    v86 = 0u;
    v85 = 0u;
    v84 = 0u;
    v83 = 0u;
    v82 = 0u;
    v81 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v65 = 0u;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    v60 = 0u;
    v59 = 0u;
    v58 = 0u;
    memset(&v57[240], 0, 112);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10004BC68(v13, v13 == 0, v57);
  }

  v14 = 0;
  v15 = 0;
LABEL_12:
  name = [v13 name];
  uTF8String = [name UTF8String];

  v18 = strnlen(uTF8String, 0xFFuLL);
  v19 = v18;
  if (attrCopy)
  {
    if (len <= 0xC7)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_10004BDCC();
      }

      goto LABEL_22;
    }

    *(entry + 5) = 200;
    v20 = (v18 & 0xFFF8) + 208;
    if ((v20 & 0xFFF8u) > len)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_10004BD44();
      }

      goto LABEL_22;
    }

    *entry = self->_entryIndex + 1;
    *(entry + 4) = v20;
    *(entry + 6) = v18;
    *(entry + 3) = 0;
    if (v13)
    {
      objc_msgSend_attributes(v13);
      v23 = v56 & 1;
    }

    else
    {
      v23 = 0;
    }

    if ((v14 | v23) == 1)
    {
      *(entry + 10) = v15;
      *(entry + 3) |= 1uLL;
    }

    if (v13)
    {
      objc_msgSend_attributes(v13);
      if ((v55 & 0x40) != 0)
      {
        objc_msgSend_attributes(v13);
        v25 = sub_100032988(v54);
      }

      else
      {
        v25 = 448;
      }

      *(entry + 11) = v25;
      *(entry + 3) |= 2uLL;
      objc_msgSend_attributes(v13);
      *(entry + 8) = v53;
      *(entry + 3) |= 0x40uLL;
      objc_msgSend_attributes(v13);
      *(entry + 9) = v52;
      *(entry + 3) |= 0x80uLL;
      objc_msgSend_attributes(v13);
      *(entry + 10) = v51;
      *(entry + 3) |= 0x100uLL;
      objc_msgSend_attributes(v13);
      *(entry + 6) = v50;
      *(entry + 3) |= 0x400uLL;
      objc_msgSend_attributes(v13);
      *(entry + 7) = v49;
      *(entry + 3) |= 0x800uLL;
      objc_msgSend_attributes(v13);
      v27 = *(entry + 3);
    }

    else
    {
      *(entry + 11) = 448;
      v26 = *(entry + 3);
      *(entry + 3) = v26 | 2;
      *(entry + 8) = 0;
      *(entry + 9) = 0;
      *(entry + 10) = 0;
      *(entry + 6) = 0u;
      *(entry + 7) = 0u;
      v27 = v26 | 0xDC2;
      v48 = 0u;
    }

    *(entry + 8) = v48;
    *(entry + 3) = v27 | 0x1000;
    memcpy(&entry[*(entry + 5)], uTF8String, v19);
    entry[*(entry + 5) + v19] = 0;
    *(entry + 15) = 0;
    if (!v13 || (objc_msgSend_attributes(v13), v47 != 2) && (objc_msgSend_attributes(v13), (v46 & 0x20) == 0))
    {
      *(entry + 15) |= 0x10000u;
    }

    WeakRetained = objc_loadWeakRetained(&self->_dnp);
    v29 = [WeakRetained mp];
    v30 = v29;
    if (v29)
    {
      objc_msgSend_shareInfo(v29);

      if ((BYTE8(v32) & 0x10) != 0)
      {
        if (!v13)
        {
          goto LABEL_56;
        }

        goto LABEL_47;
      }
    }

    else
    {
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
    }

    if (!v13)
    {
LABEL_56:
      *(entry + 3) |= 0x20uLL;
LABEL_57:
      v22 = 0;
      *written = v20;
      goto LABEL_58;
    }

    objc_msgSend_attributes(v13);
    if (v45 == 2)
    {
LABEL_49:
      objc_msgSend_attributes(v13, v32);
      if ((v43 & 2) != 0)
      {
        *(entry + 15) |= 0x8000u;
      }

      objc_msgSend_attributes(v13);
      if ((v42 & 4) != 0)
      {
        objc_msgSend_attributes(v13);
        if (v41 == -2147483618)
        {
          objc_msgSend_attributes(v13);
          if ((v40 & 0x40) != 0 || (objc_msgSend_attributes(v13), (v39 & 0x12) != 0))
          {
            *(entry + 15) |= 0x40000000u;
          }
        }
      }

      goto LABEL_56;
    }

LABEL_47:
    objc_msgSend_attributes(v13, v32, v33, v34, v35, v36, v37);
    if (v44)
    {
      *(entry + 15) |= 2u;
    }

    goto LABEL_49;
  }

  if (((v18 + 29) & 0xFFF8uLL) <= len)
  {
    v20 = (v18 + 29) & 0xFFF8;
    if (v13)
    {
      objc_msgSend_attributes(v13);
      v21 = v38;
    }

    else
    {
      v21 = 0;
    }

    *entry = v21;
    *(entry + 1) = self->_entryIndex + 1;
    *(entry + 8) = v20;
    *(entry + 9) = v19;
    entry[20] = v15;
    v24 = entry + 21;
    memcpy(v24, uTF8String, v19);
    v24[v19] = 0;
    goto LABEL_57;
  }

LABEL_22:
  v22 = 55;
LABEL_58:

  return v22;
}

- (int)fillNextEntry:(char *)entry BufLen:(unint64_t)len IsReadDirAttr:(BOOL)attr BytesFilled:(unsigned int *)filled
{
  attrCopy = attr;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v67 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_dnp);
  *(v69 + 6) = 0;
  v11 = objc_alloc_init(SMBDirEntry);
  if (!v11)
  {
    *(v69 + 6) = 12;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004BFF4();
    }

    goto LABEL_28;
  }

  if (!WeakRetained)
  {
    *(v69 + 6) = 22;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004BFB0();
    }

    goto LABEL_28;
  }

  if (attrCopy)
  {
    goto LABEL_11;
  }

  entryIndex = self->_entryIndex;
  if (entryIndex != 1)
  {
    if (!entryIndex)
    {
      getSmbFattr = [WeakRetained getSmbFattr];
      v14 = *getSmbFattr;
      v15 = getSmbFattr[2];
      *&buf[16] = getSmbFattr[1];
      v73 = v15;
      *buf = v14;
      v16 = getSmbFattr[3];
      v17 = getSmbFattr[4];
      v18 = getSmbFattr[6];
      v76 = getSmbFattr[5];
      v77 = v18;
      v74 = v16;
      v75 = v17;
      v19 = getSmbFattr[7];
      v20 = getSmbFattr[8];
      v21 = getSmbFattr[10];
      v80 = getSmbFattr[9];
      v81 = v21;
      v78 = v19;
      v79 = v20;
      v22 = getSmbFattr[11];
      v23 = getSmbFattr[12];
      v24 = getSmbFattr[14];
      v84 = getSmbFattr[13];
      v85 = v24;
      v82 = v22;
      v83 = v23;
      [v11 setAttributes:buf];
      [v11 setName:@"."];
      v25 = [(dirEnumerator *)self fillDirEntry:entry withBufLen:len DirEntry:v11 IsReadDirAttr:0 retBytesWritten:&v67];
      v26 = v69;
      *(v69 + 6) = v25;
      if (!v25)
      {
        *filled = v67;
        goto LABEL_29;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10004BEC0();
      }

LABEL_28:
      v26 = v69;
LABEL_29:
      v37 = *(v26 + 6);
      goto LABEL_30;
    }

LABEL_11:
    dentObjSave = [(dirEnumerator *)self dentObjSave];
    v28 = dentObjSave == 0;

    if (!v28)
    {
      dentObjSave2 = [(dirEnumerator *)self dentObjSave];
      v30 = [(dirEnumerator *)self fillDirEntry:entry withBufLen:len DirEntry:dentObjSave2 IsReadDirAttr:attrCopy retBytesWritten:&v67];
      *(v69 + 6) = v30;

      if (*(v69 + 6))
      {
        v31 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          dentObjSave3 = [(dirEnumerator *)self dentObjSave];
          name = [dentObjSave3 name];
          v58 = name;
          uTF8String = [name UTF8String];
          v60 = *(v69 + 6);
          *buf = 136315394;
          *&buf[4] = uTF8String;
          *&buf[12] = 1024;
          *&buf[14] = v60;
          _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "fillNextEntry: fattrSave- fillDirEntry for %s returned error: %d", buf, 0x12u);
        }
      }

      else
      {
        *v62 = v67;
        [(dirEnumerator *)self setDentObjSave:0];
      }

      goto LABEL_28;
    }

    v32 = dispatch_group_create();
    dispatch_group_enter(v32);
    deObj = [(dirEnumerator *)self deObj];
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_100003A48;
    v64[3] = &unk_10008C740;
    v66 = &v68;
    v34 = v32;
    v65 = v34;
    [smb_subr enumDirNext:deObj DirEnt:v11 CompletionHandler:v64];

    dispatch_group_wait(v34, 0xFFFFFFFFFFFFFFFFLL);
    v35 = v69;
    v36 = *(v69 + 6);
    if (v36)
    {
      if (v36 == 2)
      {
        v37 = -1;
LABEL_33:
        *(v35 + 6) = v37;
LABEL_42:

        goto LABEL_30;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10004BF38();
      }

      v55 = v69;
    }

    else
    {
      v54 = [(dirEnumerator *)self fillDirEntry:entry withBufLen:len DirEntry:v11 IsReadDirAttr:attrCopy retBytesWritten:&v67];
      v55 = v69;
      *(v69 + 6) = v54;
      if (v54)
      {
        [(dirEnumerator *)self setDentObjSave:v11];
        v35 = v69;
        v37 = 55;
        goto LABEL_33;
      }

      *v62 = v67;
    }

    v37 = *(v55 + 6);
    goto LABEL_42;
  }

  parent = [WeakRetained parent];
  if (!parent)
  {
    parent = objc_loadWeakRetained(&self->_dnp);
  }

  getSmbFattr2 = [parent getSmbFattr];
  v40 = *getSmbFattr2;
  v41 = getSmbFattr2[2];
  *&buf[16] = getSmbFattr2[1];
  v73 = v41;
  *buf = v40;
  v42 = getSmbFattr2[3];
  v43 = getSmbFattr2[4];
  v44 = getSmbFattr2[6];
  v76 = getSmbFattr2[5];
  v77 = v44;
  v74 = v42;
  v75 = v43;
  v45 = getSmbFattr2[7];
  v46 = getSmbFattr2[8];
  v47 = getSmbFattr2[10];
  v80 = getSmbFattr2[9];
  v81 = v47;
  v78 = v45;
  v79 = v46;
  v48 = getSmbFattr2[11];
  v49 = getSmbFattr2[12];
  v50 = getSmbFattr2[14];
  v84 = getSmbFattr2[13];
  v85 = v50;
  v82 = v48;
  v83 = v49;
  [v11 setAttributes:buf];
  [v11 setName:@".."];
  v51 = [(dirEnumerator *)self fillDirEntry:entry withBufLen:len DirEntry:v11 IsReadDirAttr:0 retBytesWritten:&v67];
  v52 = v69;
  *(v69 + 6) = v51;
  if (v51)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004BE48();
    }

    v52 = v69;
  }

  else
  {
    *v63 = v67;
  }

  v37 = *(v52 + 6);

LABEL_30:
  _Block_object_dispose(&v68, 8);
  return v37;
}

- (void)getEntriesInBuffer:(char *)buffer BufferLen:(unint64_t)len CookieIn:(unint64_t)in VerifyIn:(unint64_t)verifyIn IsReadDirAttr:(BOOL)attr CompletionHandler:(id)handler
{
  handlerCopy = handler;
  dirEnumerationSyncQueue = [(dirEnumerator *)self dirEnumerationSyncQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003B40;
  block[3] = &unk_10008C7E0;
  bufferCopy = buffer;
  lenCopy = len;
  inCopy = in;
  verifyInCopy = verifyIn;
  attrCopy = attr;
  block[4] = self;
  v18 = handlerCopy;
  v16 = handlerCopy;
  dispatch_async(dirEnumerationSyncQueue, block);
}

- (void)_getEntriesInBuffer:(char *)buffer BufferLen:(unint64_t)len CookieIn:(unint64_t)in VerifyIn:(unint64_t)verifyIn IsReadDirAttr:(BOOL)attr CompletionHandler:(id)handler
{
  attrCopy = attr;
  handlerCopy = handler;
  enumState = self->_enumState;
  bufferCopy = buffer;
  if (enumState != 2)
  {
    if (enumState)
    {
      v17 = 0;
      openEnumeration = 0;
      goto LABEL_15;
    }

    openEnumeration = [(dirEnumerator *)self openEnumeration];
    if (openEnumeration && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10004C0F4();
    }

    goto LABEL_14;
  }

  if (!in)
  {
    self->_enumState = 0;
    openEnumeration = [(dirEnumerator *)self openEnumeration];
    if (openEnumeration && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10004C07C();
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10004C038();
  }

  openEnumeration = 4294966295;
  v17 = 1;
LABEL_15:
  WeakRetained = objc_loadWeakRetained(&self->_dnp);
  getReadDirVerifier = [WeakRetained getReadDirVerifier];

  if (openEnumeration)
  {
    handlerCopy[2](handlerCopy, openEnumeration, getReadDirVerifier, 0, v17);
    goto LABEL_29;
  }

  if (in && getReadDirVerifier != verifyIn)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004C16C();
    }

    handlerCopy[2](handlerCopy, 4294966296, getReadDirVerifier, 0, v17);
    goto LABEL_29;
  }

  if (self->_entryIndex == in)
  {
LABEL_32:
    [(dirEnumerator *)self processNextEntry:0 inbufPtr:bufferCopy prevEntry:0 inbufRemain:len bytesFilled:0 IsReadDirAttr:attrCopy CompletionHandler:handlerCopy];
    goto LABEL_29;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10004C1F4();
  }

  v20 = [(dirEnumerator *)self resetCurrentIndex:in];
  if (!v20)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10004C2F4();
    }

    goto LABEL_32;
  }

  v21 = v20;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10004C27C();
  }

  handlerCopy[2](handlerCopy, v21, getReadDirVerifier, 0, v17);
LABEL_29:
}

- (void)processNextEntry:(unsigned int)entry inbufPtr:(char *)ptr prevEntry:(void *)prevEntry inbufRemain:(unint64_t)remain bytesFilled:(unsigned int)filled IsReadDirAttr:(BOOL)attr CompletionHandler:(id)handler
{
  handlerCopy = handler;
  dirEnumerationSyncQueue = [(dirEnumerator *)self dirEnumerationSyncQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003F60;
  block[3] = &unk_10008C7E0;
  attrCopy = attr;
  block[4] = self;
  v20 = handlerCopy;
  entryCopy = entry;
  filledCopy = filled;
  prevEntryCopy = prevEntry;
  ptrCopy = ptr;
  remainCopy = remain;
  v18 = handlerCopy;
  dispatch_async(dirEnumerationSyncQueue, block);
}

- (smbNode)dnp
{
  WeakRetained = objc_loadWeakRetained(&self->_dnp);

  return WeakRetained;
}

@end