@interface _WKAttachmentInfo
- (NSData)data;
- (NSFileWrapper)fileWrapper;
- (NSString)contentType;
- (NSString)name;
- (_WKAttachmentInfo)initWithAttachment:(const void *)attachment;
- (id).cxx_construct;
- (void)data;
- (void)name;
@end

@implementation _WKAttachmentInfo

- (_WKAttachmentInfo)initWithAttachment:(const void *)attachment
{
  v29.receiver = self;
  v29.super_class = _WKAttachmentInfo;
  v4 = [(_WKAttachmentInfo *)&v29 init];
  if (v4)
  {
    CFRetain(*(attachment + 1));
    m_ptr = v4->_attachment.m_ptr;
    v4->_attachment.m_ptr = attachment;
    if (m_ptr)
    {
      CFRelease(*(m_ptr + 1));
    }

    v6 = *(attachment + 5);
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v28, v6);
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v7);
      }
    }

    else
    {
      v28 = &stru_1F1147748;
      v8 = &stru_1F1147748;
    }

    v9 = v28;
    v28 = 0;
    v10 = v4->_filePath.m_ptr;
    v4->_filePath.m_ptr = &v9->isa;
    if (v10)
    {

      v11 = v28;
      v28 = 0;
      if (v11)
      {
      }
    }

    API::Attachment::mimeType(attachment, &v27);
    v12 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v28, v12);
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v13);
      }
    }

    else
    {
      v28 = &stru_1F1147748;
      v14 = &stru_1F1147748;
    }

    v15 = v28;
    v28 = 0;
    v16 = v4->_mimeType.m_ptr;
    v4->_mimeType.m_ptr = &v15->isa;
    if (v16)
    {

      v17 = v28;
      v28 = 0;
      if (v17)
      {
      }
    }

    v18 = v27;
    v27 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v13);
    }

    API::Attachment::utiType(attachment, &v27);
    v19 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v28, v19);
      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v20);
      }
    }

    else
    {
      v28 = &stru_1F1147748;
      v21 = &stru_1F1147748;
    }

    v22 = v28;
    v28 = 0;
    v23 = v4->_utiType.m_ptr;
    v4->_utiType.m_ptr = &v22->isa;
    if (v23)
    {

      v24 = v28;
      v28 = 0;
      if (v24)
      {
      }
    }

    v25 = v27;
    v27 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v20);
    }
  }

  return v4;
}

- (NSData)data
{
  v7 = 0;
  m_ptr = self->_attachment.m_ptr;
  v4 = WTF::fastMalloc(v2, 0x10);
  *v4 = &unk_1F10FAF68;
  v4[1] = &v7;
  v6 = v4;
  API::Attachment::doWithFileWrapper(m_ptr, &v6);
  (*(*v4 + 8))(v4);
  return v7;
}

- (NSString)name
{
  v7 = 0;
  m_ptr = self->_attachment.m_ptr;
  v4 = WTF::fastMalloc(v2, 0x10);
  *v4 = &unk_1F10FAF90;
  v4[1] = &v7;
  v6 = v4;
  API::Attachment::doWithFileWrapper(m_ptr, &v6);
  (*(*v4 + 8))(v4);
  return v7;
}

- (NSFileWrapper)fileWrapper
{
  v7 = 0;
  m_ptr = self->_attachment.m_ptr;
  v4 = WTF::fastMalloc(v2, 0x10);
  *v4 = &unk_1F10FAFB8;
  v4[1] = &v7;
  v6 = v4;
  API::Attachment::doWithFileWrapper(m_ptr, &v6);
  (*(*v4 + 8))(v4);
  return v7;
}

- (NSString)contentType
{
  v3 = [(NSString *)self->_mimeType.m_ptr length];
  v4 = 16;
  if (!v3)
  {
    v4 = 24;
  }

  return *(&self->super.isa + v4);
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (void)data
{
  if ([a2 isRegularFile])
  {
    result = [a2 regularFileContents];
  }

  else
  {
    result = 0;
  }

  **(self + 8) = result;
  return result;
}

- (void)name
{
  if ([objc_msgSend(a2 "filename")])
  {
    result = [a2 filename];
  }

  else
  {
    result = [a2 preferredFilename];
  }

  **(self + 8) = result;
  return result;
}

@end