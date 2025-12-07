@interface WKFileUploadPanel
- (WKFileUploadPanel)initWithView:(id)view;
- (void)_cancel;
- (void)_chooseFiles:(id)files displayString:(id)string iconImage:(id)image;
- (void)_chooseMediaItems:(id)items;
- (void)_dispatchDidDismiss;
- (void)dealloc;
- (void)presentWithParameters:(void *)parameters resultListener:(void *)listener;
@end

@implementation WKFileUploadPanel

- (WKFileUploadPanel)initWithView:(id)view
{
  v7.receiver = self;
  v7.super_class = WKFileUploadPanel;
  v4 = [(WKFileUploadPanel *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_view.m_weakReference, view);
  }

  return v5;
}

- (void)dealloc
{
  [(UIImagePickerController *)self->_cameraPicker.m_ptr setDelegate:0];
  [(UIDocumentPickerViewController *)self->_documentPickerController.m_ptr setDelegate:0];
  [(WKFileUploadPanel *)self resetContextMenuPresenter];
  v3.receiver = self;
  v3.super_class = WKFileUploadPanel;
  [(WKFileUploadPanel *)&v3 dealloc];
}

- (void)_dispatchDidDismiss
{
  objc_loadWeak(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    Weak = objc_loadWeak(&self->_delegate);

    [Weak fileUploadPanelDidDismiss:self];
  }
}

- (void)_cancel
{
  m_ptr = self->_listener.m_ptr;
  if (m_ptr)
  {
    WebKit::WebOpenPanelResultListenerProxy::cancel(m_ptr);
  }

  [(WKFileUploadPanel *)self _dispatchDidDismiss];
}

- (void)_chooseMediaItems:(id)items
{
  v25 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = 0;
  v7 = 0;
  v8 = [items countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v8)
  {
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(items);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        [array addObject:{objc_msgSend(v11, "fileURL")}];
        if (!v6)
        {
          if (v11)
          {
            objc_msgSend_displayImage(v11);
            v6 = arg;
          }

          else
          {
            v6 = 0;
          }
        }

        v7 += [v11 isVideo];
      }

      v8 = [items countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v8);
  }

  v12 = [items count];
  if ([items count] == 1)
  {
    v14 = [objc_msgSend(objc_msgSend(items "firstObject")];
LABEL_19:
    v18 = v14;
    goto LABEL_20;
  }

  if (v12 | v7)
  {
    v15 = MEMORY[0x1E696AEC0];
    WebCore::copyLocalizedString(&arg, @"%lu photo(s) and %lu video(s)", v13);
    v16 = arg;
    arg = 0;
    if (v16)
    {
      CFAutorelease(v16);
      v17 = arg;
      arg = 0;
      if (v17)
      {
        CFRelease(v17);
      }
    }

    v14 = [v15 localizedStringWithFormat:v16, v12 - v7, v7];
    goto LABEL_19;
  }

  v18 = 0;
LABEL_20:
  [(WKFileUploadPanel *)self _dismissDisplayAnimated:1];
  [(WKFileUploadPanel *)self _chooseFiles:array displayString:v18 iconImage:v6];
  if (v6)
  {
  }
}

- (void)_chooseFiles:(id)files displayString:(id)string iconImage:(id)image
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = [files count];
  if (v9)
  {
    v33 = 0;
    v34 = 0;
    if (v9 >> 29)
    {
      __break(0xC471u);
    }

    else
    {
      LODWORD(v34) = v9;
      v33 = WTF::fastMalloc(0, (8 * v9));
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v10 = [files countByEnumeratingWithState:&v29 objects:v36 count:16];
      if (v10)
      {
        v11 = *v30;
        do
        {
          v12 = 0;
          do
          {
            if (*v30 != v11)
            {
              objc_enumerationMutation(files);
            }

            WTF::String::fromUTF8([*(*(&v29 + 1) + 8 * v12) fileSystemRepresentation]);
            LODWORD(v14) = HIDWORD(v34);
            if (HIDWORD(v34) == v34)
            {
              v17 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v33, HIDWORD(v34) + 1, &v35);
              v14 = HIDWORD(v34);
              v18 = v33;
              v19 = *v17;
              *v17 = 0;
              v18[v14] = v19;
            }

            else
            {
              v15 = v35;
              v35 = 0;
              v33[HIDWORD(v34)] = v15;
            }

            HIDWORD(v34) = v14 + 1;
            v16 = v35;
            v35 = 0;
            if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v16, v13);
            }

            ++v12;
          }

          while (v10 != v12);
          v20 = [files countByEnumeratingWithState:&v29 objects:v36 count:16];
          v10 = v20;
        }

        while (v20);
      }

      v21 = UIImagePNGRepresentation(image);
      API::Data::create([(NSData *)v21 bytes], [(NSData *)v21 length], &v35);
      if (!v35 || (v22 = *(v35 + 1)) == 0)
      {
        _apiObject = 0;
        v24 = 1;
LABEL_21:
        m_ptr = self->_listener.m_ptr;
        MEMORY[0x19EB02040](&v35, string);
        WebKit::WebOpenPanelResultListenerProxy::chooseFiles(m_ptr, &v33, &v35, _apiObject);
        v27 = v35;
        v35 = 0;
        if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, v26);
        }

        [(WKFileUploadPanel *)self _dispatchDidDismiss];
        if ((v24 & 1) == 0)
        {
          CFRelease(_apiObject[1]);
        }

        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v33, v28);
        return;
      }

      _apiObject = [v22 _apiObject];
      if ((*(*_apiObject + 2))(_apiObject) == 8)
      {
        v24 = 0;
        goto LABEL_21;
      }

      __break(0xC471u);
    }

    JUMPOUT(0x19DE8D088);
  }

  [(WKFileUploadPanel *)self _cancel];
}

- (void)presentWithParameters:(void *)parameters resultListener:(void *)listener
{
  v67 = *MEMORY[0x1E69E9840];
  if (listener)
  {
    CFRetain(*(listener + 1));
  }

  m_ptr = self->_listener.m_ptr;
  self->_listener.m_ptr = listener;
  if (m_ptr)
  {
    CFRelease(*(m_ptr + 1));
  }

  self->_allowDirectories = *(parameters + 16);
  self->_allowMultipleFiles = *(parameters + 17);
  self->_isMenuPreviouslyRepositioned = 0;
  [objc_loadWeak(&self->_view.m_weakReference) lastInteractionLocation];
  self->_interactionPoint.x = v6;
  self->_interactionPoint.y = v7;
  Weak = objc_loadWeak(&self->_view.m_weakReference);
  [Weak convertPoint:objc_msgSend(objc_msgSend(objc_loadWeak(&self->_view.m_weakReference) toView:{"webView"), "window"), self->_interactionPoint.x, self->_interactionPoint.y}];
  self->_interactionPointInWindow.x = v9;
  self->_interactionPointInWindow.y = v10;
  API::Array::createStringArray(parameters + 24, &v58);
  v11 = v58;
  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:HIDWORD(v58[1].var1)];
  API::Array::elementsOfType<API::String>(v11, v63);
  v13 = v64;
  v14 = v66;
  if (v64 != v66)
  {
    v15 = v65;
    do
    {
      WTF::downcast<API::String,API::Object>(*v13);
      WTF::String::isolatedCopy();
      if (v57)
      {
        atomic_fetch_add_explicit(v57, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](v59, v57);
        if (atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v57, v16);
        }
      }

      else
      {
        v59[0] = &stru_1F1147748;
        v17 = &stru_1F1147748;
      }

      [v12 addObject:v59[0]];
      v19 = v59[0];
      v59[0] = 0;
      if (v19)
      {
      }

      v20 = v57;
      v57 = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v18);
      }

      v21 = v13 + 1;
      while (1)
      {
        if (v21 - 1 == v15)
        {
          v13 = v21 - 1;
          goto LABEL_23;
        }

        if (v21 == v15)
        {
          break;
        }

        v22 = (*(**v21 + 16))();
        ++v13;
        ++v21;
        if (v22 == 20)
        {
          goto LABEL_23;
        }
      }

      v13 = v21;
LABEL_23:
      ;
    }

    while (v13 != v14);
  }

  API::Array::createStringArray(parameters + 40, &v57);
  v23 = v57;
  API::Array::elementsOfType<API::String>(v57, v63);
  v24 = v64;
  v25 = v66;
  if (v64 != v66)
  {
    v26 = v65;
    while (1)
    {
      v27 = *(WTF::downcast<API::String,API::Object>(*v24) + 16);
      if (v27)
      {
        v28 = *(v27 + 4);
        if (v28 >= 2)
        {
          v29 = (v28 - 1);
          v30 = v28 - 1;
          if ((*(v27 + 16) & 4) != 0)
          {
            if (v30 < v29)
            {
              goto LABEL_89;
            }
          }

          else if (v30 < v29)
          {
LABEL_89:
            __break(1u);
          }
        }
      }

      WebCore::MIMETypeRegistry::mimeTypeForExtension();
      v32 = v59[0];
      if (!v59[0])
      {
        goto LABEL_41;
      }

      if (!*(v59[0] + 1))
      {
        break;
      }

      atomic_fetch_add_explicit(v59[0], 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v56, v32);
      if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v32, v33);
      }

      [v12 addObject:v56];
      v34 = v56;
      v56 = 0;
      if (v34)
      {
      }

      v32 = v59[0];
      v59[0] = 0;
      if (v32)
      {
        goto LABEL_39;
      }

LABEL_41:
      v35 = v24 + 1;
      while (1)
      {
        if (v35 - 1 == v26)
        {
          v24 = v35 - 1;
          goto LABEL_48;
        }

        if (v35 == v26)
        {
          break;
        }

        v36 = (*(**v35 + 16))();
        ++v24;
        ++v35;
        if (v36 == 20)
        {
          goto LABEL_48;
        }
      }

      v24 = v35;
LABEL_48:
      if (v24 == v25)
      {
        goto LABEL_53;
      }
    }

    v59[0] = 0;
LABEL_39:
    if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v31);
    }

    goto LABEL_41;
  }

LABEL_53:
  v37 = [MEMORY[0x1E695DFA8] set];
  v61 = 0u;
  v62 = 0u;
  *v59 = 0u;
  v60 = 0u;
  v38 = [v12 countByEnumeratingWithState:v59 objects:v63 count:16];
  if (v38)
  {
    v53 = v23;
    v39 = *v60;
    v40 = *MEMORY[0x1E6982EE8];
    v41 = *MEMORY[0x1E6982E30];
    while (2)
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v60 != v39)
        {
          objc_enumerationMutation(v12);
        }

        v43 = *(v59[1] + i);
            v26[1] = 7;
            WTF::tryMakeString<WTF::String,WTF::ASCIILiteral>(&v24, v26, &v25);
            v14 = v25;
            if (!v25)
            {
              __break(0xC471u);
              goto LABEL_37;
            }

            v15 = v24;
            v24 = 0;
            v25 = 0;
            if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, v13);
            }

            v26[0] = v14;
            v16 = *(self + 3);
            if (v16 == *(self + 2))
            {
              v19 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(self, v16 + 1, v26);
              v16 = *(self + 3);
              v20 = *self;
              v21 = *v19;
              *v19 = 0;
              *(v20 + 8 * v16) = v21;
            }

            else
            {
              v17 = *self;
              v26[0] = 0;
              *(v17 + 8 * v16) = v14;
            }

            *(self + 3) = v16 + 1;
            v18 = v26[0];
            v26[0] = 0;
            if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v18, v13);
            }
          }

          do
          {
            ++v8;
          }

          while (v8 != v10 && *v8 + 1 <= 1);
        }

        while (v8 != v11);
        v23 = *(self + 3);
      }

      return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(self, v23, v7);
    }

    else
    {
      WebKit::WebExtensionMatchPattern::stringWithScheme(v26, this, MEMORY[0x1E696EBA0]);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(self, v26, 1uLL);
      this = v26[0];
      v26[0] = 0;
      if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(this, v22);
      }
    }
  }

  else
  {
    *self = 0;
    self[1] = 0;
  }

  return this;
}

@end