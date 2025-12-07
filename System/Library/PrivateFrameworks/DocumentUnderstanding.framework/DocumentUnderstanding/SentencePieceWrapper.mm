@interface SentencePieceWrapper
- (BOOL)load:(id)load;
- (id)decode:(id)decode;
- (id)encode:(id)encode;
- (id)encodingAndUTF8Spans:(const char *)spans;
@end

@implementation SentencePieceWrapper

- (id)decode:(id)decode
{
  selfCopy = self;
  v39 = *MEMORY[0x277D85DE8];
  __src = 0;
  v36 = 0;
  v37 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v34 = 0;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  decodeCopy = decode;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(decodeCopy, v4, &v29, v38, 16);
  if (v9)
  {
    v10 = *v30;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(decodeCopy);
        }

        v12 = objc_msgSend_intValue(*(*(&v29 + 1) + 8 * i), v5, v6, v7, v8, selfCopy);
        v13 = v36;
        if (v36 >= v37)
        {
          v15 = __src;
          v16 = v36 - __src;
          v17 = (v36 - __src) >> 2;
          v18 = v17 + 1;
          if ((v17 + 1) >> 62)
          {
            sub_232C84C3C();
          }

          v19 = v37 - __src;
          if ((v37 - __src) >> 1 > v18)
          {
            v18 = v19 >> 1;
          }

          if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v20 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v18;
          }

          if (v20)
          {
            sub_232C86538(&__src, v20);
          }

          *(4 * v17) = v12;
          v14 = 4 * v17 + 4;
          memcpy(0, v15, v16);
          v21 = __src;
          __src = 0;
          v36 = v14;
          v37 = 0;
          if (v21)
          {
            operator delete(v21);
          }
        }

        else
        {
          *v36 = v12;
          v14 = (v13 + 4);
        }

        v36 = v14;
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(decodeCopy, v5, &v29, v38, 16);
    }

    while (v9);
  }

  (*(*selfCopy->sp + 168))(&v28);
  sub_232CB32BC(&v28);
  if (v34 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, __p, v23, v24, selfCopy);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, __p[0], v23, v24, selfCopy);
  }
  v25 = ;
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

  if (__src)
  {
    v36 = __src;
    operator delete(__src);
  }

  return v25;
}

- (id)encodingAndUTF8Spans:(const char *)spans
{
  if (spans)
  {
    memset(v41, 0, sizeof(v41));
    sub_232C8BF68(v41);
    sp = self->sp;
    v6 = strlen(spans);
    v7 = sub_232C8C130(v41);
    (*(*sp + 232))(__p, sp, spans, v6, v7);
    nullsub_1();
    sub_232CB32BC(__p);
    v8 = sub_232C8C124(v41);
    v9 = objc_opt_new();
    v10 = objc_opt_new();
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        v40 = 0;
        sub_232C8C090(v41, __p);
        v40 = *(__p[0] + i);
        __p[1] = __p[0];
        operator delete(__p[0]);
        v12 = MEMORY[0x277CCABB0];
        v13 = sub_232C8C06C(&v40);
        v17 = objc_msgSend_numberWithUnsignedInt_(v12, v14, v13, v15, v16);
        objc_msgSend_addObject_(v9, v18, v17, v19, v20);

        v21 = MEMORY[0x277CCAE60];
        v22 = sub_232C8C078(&v40);
        v23 = sub_232C8C084(&v40);
        v24 = sub_232C8C078(&v40);
        v27 = objc_msgSend_valueWithRange_(v21, v25, v22, (v23 - v24), v26);
        objc_msgSend_addObject_(v10, v28, v27, v29, v30);
      }
    }

    v31 = objc_alloc(MEMORY[0x277D42648]);
    second = objc_msgSend_initWithFirst_second_(v31, v32, v9, v10, v33);

    sub_232C8BFB4(v41);
  }

  else
  {
    v35 = objc_alloc(MEMORY[0x277D42648]);
    second = objc_msgSend_initWithFirst_second_(v35, v36, MEMORY[0x277CBEBF8], MEMORY[0x277CBEBF8], v37);
  }

  return second;
}

- (id)encode:(id)encode
{
  encodeCopy = encode;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v5 = encodeCopy;
  v9 = objc_msgSend_cStringUsingEncoding_(v5, v6, 4, v7, v8);
  v10 = v9;
  if (v9)
  {
    v11 = strlen(v9);
    (*(*self->sp + 144))(&v23, self->sp, v10, v11, &v24);
    sub_232CB32BC(&v23);
    v15 = objc_opt_new();
    v16 = v24;
    v17 = v25;
    if (v24 != v25)
    {
      do
      {
        v18 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v12, *v16, v13, v14);
        objc_msgSend_addObject_(v15, v19, v18, v20, v21);

        ++v16;
      }

      while (v16 != v17);
      v16 = v24;
    }

    if (v16)
    {
      v25 = v16;
      operator delete(v16);
    }
  }

  else
  {
    v15 = MEMORY[0x277CBEBF8];
  }

  return v15;
}

- (BOOL)load:(id)load
{
  v22 = *MEMORY[0x277D85DE8];
  loadCopy = load;
  __dst[0] = 0;
  __dst[1] = 0;
  v17 = 0;
  v5 = loadCopy;
  v9 = objc_msgSend_cStringUsingEncoding_(v5, v6, 4, v7, v8);
  v10 = strlen(v9);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_232C85C94();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v17) = v10;
  if (v10)
  {
    memmove(__dst, v9, v10);
  }

  *(__dst + v11) = 0;
  v15 = 0;
  (*(*self->sp + 16))(&v15);
  if (sub_232CB35B4(&v15) && *sub_232CB35B4(&v15) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v14 = sub_232CB35B4(&v15);
    *buf = 138412546;
    v19 = loadCopy;
    v20 = 2080;
    v21 = v14;
    _os_log_error_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "SentencePieceWrapper: error loading %@ file: %s", buf, 0x16u);
  }

  v12 = v15;
  sub_232CB32BC(&v15);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst[0]);
  }

  return v12 == 0;
}

@end