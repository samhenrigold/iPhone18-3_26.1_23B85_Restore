void sub_188922F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFDataRef Security::cfmake<__CFArray const*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = &a9;
  v11[0] = "['^(.*/)?\\.DS_Store$''^Info\\.plist$''^PkgInfo$'%s]";
  v11[1] = &v10;
  v11[2] = 0;
  v12 = 0;
  return Security::CFMake::make(v11);
}

void Security::CodeSigning::BundleDiskRep::strictValidateStructure(uint64_t a1, Security::CodeSigning::CodeDirectory *this, void *a3, int a4)
{
  v70 = *MEMORY[0x1E69E9840];
  if ((a4 & 0x4000000) == 0)
  {
    if (Security::CodeSigning::CodeDirectory::slotIsPresent(this, -3))
    {
      LODWORD(__p[0]) = 3;
      std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a1 + 184, 3u, __p);
    }

    v67[0] = 0;
    v67[1] = 0;
    v66 = v67;
    v7 = *(a1 + 184);
    if (v7 != (a1 + 192))
    {
      do
      {
        v8 = *(v7 + 7);
        if (v8 != 1)
        {
          v9 = Security::CodeSigning::CodeDirectory::canonicalSlotName(v8);
          if (v9)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, v9);
            std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v66, __p, __p);
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        v10 = v7[1];
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = v7[2];
            v12 = *v11 == v7;
            v7 = v11;
          }

          while (!v12);
        }

        v7 = v11;
      }

      while (v11 != (a1 + 192));
    }

    v13 = (a1 + 32);
    v14 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v14 = *v13;
    }

    v15 = Security::CodeSigning::pathFileSystemUsesXattrFiles(v14, v6);
    memset(__p, 170, sizeof(__p));
    if (*(a1 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(&v65, *(a1 + 32), *(a1 + 40));
    }

    else
    {
      *&v65.__r_.__value_.__l.__data_ = *v13;
      v65.__r_.__value_.__r.__words[2] = *(a1 + 48);
    }

    Security::CodeSigning::DirScanner::DirScanner(__p, &v65);
    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    if (LOBYTE(__p[135]) == 1)
    {
      while (1)
      {
        while (1)
        {
          do
          {
            Next = Security::CodeSigning::DirScanner::getNext(__p);
            if (!Next)
            {
              goto LABEL_57;
            }

            if (!Security::CodeSigning::DirScanner::isRegularFile(__p, Next))
            {
              Security::MacOSError::throwMe(0xFFFEFA3ALL);
            }

            d_name = Next->d_name;
            std::string::basic_string[abi:ne200100]<0>(&v69, d_name);
            v18 = std::__tree<std::string>::find<std::string>(&v66, &v69);
            if (SHIBYTE(v69.st_gid) < 0)
            {
              operator delete(*&v69.st_dev);
            }
          }

          while (v67 != v18);
          if (!strcmp(d_name, "CodeSignature"))
          {
            break;
          }

          if (!v15)
          {
            goto LABEL_56;
          }

          if (*(a1 + 55) >= 0)
          {
            v19 = *(a1 + 55);
          }

          else
          {
            v19 = *(a1 + 40);
          }

          memset(&v69, 170, 24);
          std::string::basic_string[abi:ne200100](&v69, v19 + 1);
          if ((v69.st_gid & 0x80000000) == 0)
          {
            v20 = &v69;
          }

          else
          {
            v20 = *&v69.st_dev;
          }

          if (v19)
          {
            if (*(a1 + 55) >= 0)
            {
              v21 = (a1 + 32);
            }

            else
            {
              v21 = *(a1 + 32);
            }

            memmove(v20, v21, v19);
          }

          *(&v20->st_dev + v19) = 47;
          v22 = strlen(d_name);
          v23 = std::string::append(&v69, d_name, v22);
          v24 = *&v23->__r_.__value_.__l.__data_;
          v63 = v23->__r_.__value_.__r.__words[2];
          *v62 = v24;
          v23->__r_.__value_.__l.__size_ = 0;
          v23->__r_.__value_.__r.__words[2] = 0;
          v23->__r_.__value_.__r.__words[0] = 0;
          IsValidXattrFile = Security::CodeSigning::pathIsValidXattrFile(v62, "bundlediskrep");
          if (SHIBYTE(v63) < 0)
          {
            operator delete(v62[0]);
          }

          if (SHIBYTE(v69.st_gid) < 0)
          {
            operator delete(*&v69.st_dev);
            if (!IsValidXattrFile)
            {
              goto LABEL_56;
            }
          }

          else if (!IsValidXattrFile)
          {
            goto LABEL_56;
          }

          v29 = secLogObjForScope("bundlediskrep");
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            v69.st_dev = 136315138;
            *&v69.st_mode = d_name;
            _os_log_debug_impl(&dword_1887D2000, v29, OS_LOG_TYPE_DEBUG, "meta directory validation on xattr file skipped: %s", &v69, 0xCu);
          }
        }

        v64 = 0xAAAAAAAAFFFFFFFFLL;
        Security::CodeSigning::BundleDiskRep::metaPath(&v69, a1, "CodeSignature");
        if ((v69.st_gid & 0x80000000) == 0)
        {
          v26 = &v69;
        }

        else
        {
          v26 = *&v69.st_dev;
        }

        Security::UnixPlusPlus::FileDesc::open(&v64, v26, 0, 438);
        if (SHIBYTE(v69.st_gid) < 0)
        {
          operator delete(*&v69.st_dev);
        }

        v27.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        v27.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        *&v69.st_blksize = v27;
        *v69.st_qspare = v27;
        v69.st_birthtimespec = v27;
        *&v69.st_size = v27;
        v69.st_mtimespec = v27;
        v69.st_ctimespec = v27;
        *&v69.st_uid = v27;
        v69.st_atimespec = v27;
        *&v69.st_dev = v27;
        Security::UnixPlusPlus::FileDesc::fstat(v64, &v69);
        st_size = v69.st_size;
        Security::UnixPlusPlus::FileDesc::closeAndLog(&v64);
        if (st_size)
        {
LABEL_56:
          v69.st_dev = -67014;
          std::__tree<int>::__emplace_unique_key_args<int,int const&>((a1 + 208), -67014, &v69);
        }
      }
    }

LABEL_57:
    Security::CodeSigning::DirScanner::~DirScanner(__p);
    std::__tree<std::string>::destroy(v67[0]);
  }

  memset(__p, 170, 24);
  v30 = (*(*a1 + 48))(a1, this);
  Security::cfStringRelease(__p, v30);
  v62[0] = 0xAAAAAAAAFFFFFFFFLL;
  if (SHIBYTE(__p[2]) >= 0)
  {
    v31 = __p;
  }

  else
  {
    v31 = __p[0];
  }

  Security::UnixPlusPlus::FileDesc::open(v62, v31, 0, 438);
  if ((a4 & 0x1000000) != 0)
  {
    v32 = LODWORD(v62[0]);
    if (Security::UnixPlusPlus::FileDesc::hasExtendedAttribute(LODWORD(v62[0]), "com.apple.ResourceFork"))
    {
      Security::UnixPlusPlus::FileDesc::removeAttr(v32, "com.apple.ResourceFork");
    }

    if (Security::UnixPlusPlus::FileDesc::hasExtendedAttribute(v32, "com.apple.FinderInfo"))
    {
      Security::UnixPlusPlus::FileDesc::removeAttr(v32, "com.apple.FinderInfo");
    }
  }

  if ((a4 & 0x200) != 0)
  {
    v33 = LODWORD(v62[0]);
    if (Security::UnixPlusPlus::FileDesc::hasExtendedAttribute(LODWORD(v62[0]), "com.apple.ResourceFork"))
    {
      v55 = __p;
      if (SHIBYTE(__p[2]) < 0)
      {
        v55 = __p[0];
      }

      v56 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Disallowed xattr %s found on %s", "com.apple.ResourceFork", v55);
      Security::CodeSigning::CSError::throwMe(0xFFFEFA49, @"SecCSResourceHasSidebandData", v56, v57);
    }

    if (Security::UnixPlusPlus::FileDesc::hasExtendedAttribute(v33, "com.apple.FinderInfo"))
    {
      v58 = __p;
      if (SHIBYTE(__p[2]) < 0)
      {
        v58 = __p[0];
      }

      v59 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Disallowed xattr %s found on %s", "com.apple.FinderInfo", v58);
      Security::CodeSigning::CSError::throwMe(0xFFFEFA49, @"SecCSResourceHasSidebandData", v59, v60);
    }
  }

  memset(&v69, 0, 24);
  v34 = *(a1 + 208);
  v35 = (a1 + 216);
  v38 = *a3;
  v36 = (a3 + 1);
  v37 = v38;
  v39 = &v69;
  v65.__r_.__value_.__r.__words[0] = &v69;
  if (v34 != (a1 + 216))
  {
    if (v37 == v36)
    {
LABEL_96:
      v66 = v39;
      if (v34 != v35)
      {
        do
        {
          std::back_insert_iterator<std::vector<int>>::operator=[abi:ne200100](&v66, v34 + 7);
          v50 = *(v34 + 1);
          if (v50)
          {
            do
            {
              v51 = v50;
              v50 = *v50;
            }

            while (v50);
          }

          else
          {
            do
            {
              v51 = *(v34 + 2);
              v12 = *v51 == v34;
              v34 = v51;
            }

            while (!v12);
          }

          v34 = v51;
        }

        while (v51 != v35);
      }
    }

    else
    {
      while (1)
      {
        v40 = v34[7];
        v41 = v37[7];
        if (v40 >= v41)
        {
          if (v41 >= v40)
          {
            v46 = *(v34 + 1);
            if (v46)
            {
              do
              {
                v47 = v46;
                v46 = *v46;
              }

              while (v46);
            }

            else
            {
              do
              {
                v47 = *(v34 + 2);
                v12 = *v47 == v34;
                v34 = v47;
              }

              while (!v12);
            }

            v48 = *(v37 + 1);
            if (v48)
            {
              do
              {
                v37 = v48;
                v48 = *v48;
              }

              while (v48);
            }

            else
            {
              do
              {
                v49 = v37;
                v37 = *(v37 + 2);
              }

              while (*v37 != v49);
            }

            v34 = v47;
          }

          else
          {
            v44 = *(v37 + 1);
            if (v44)
            {
              do
              {
                v37 = v44;
                v44 = *v44;
              }

              while (v44);
            }

            else
            {
              do
              {
                v45 = v37;
                v37 = *(v37 + 2);
              }

              while (*v37 != v45);
            }
          }
        }

        else
        {
          std::back_insert_iterator<std::vector<int>>::operator=[abi:ne200100](&v65, v34 + 7);
          v42 = *(v34 + 1);
          if (v42)
          {
            do
            {
              v34 = v42;
              v42 = *v42;
            }

            while (v42);
          }

          else
          {
            do
            {
              v43 = v34;
              v34 = *(v34 + 2);
            }

            while (*v34 != v43);
          }
        }

        if (v34 == v35)
        {
          break;
        }

        if (v37 == v36)
        {
          v39 = v65.__r_.__value_.__r.__words[0];
          goto LABEL_96;
        }
      }
    }
  }

  if (*&v69.st_dev != v69.st_ino)
  {
    v52 = **&v69.st_dev;
    goto LABEL_120;
  }

  if ((a4 & 0x100) != 0 && (*(a1 + 73) & 1) == 0)
  {
    v52 = 4294900294;
    v53 = *v36;
    if (!*v36)
    {
      goto LABEL_120;
    }

    v54 = v36;
    do
    {
      if (v53[7] >= 256)
      {
        v54 = v53;
      }

      v53 = *&v53[2 * (v53[7] < 256)];
    }

    while (v53);
    if (v54 == v36 || v54[7] >= 257)
    {
LABEL_120:
      Security::MacOSError::throwMe(v52);
    }
  }

  if (*&v69.st_dev)
  {
    v69.st_ino = *&v69.st_dev;
    operator delete(*&v69.st_dev);
  }

  Security::UnixPlusPlus::FileDesc::closeAndLog(v62);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t *std::back_insert_iterator<std::vector<int>>::operator=[abi:ne200100](uint64_t *a1, int *a2)
{
  v3 = *a1;
  v5 = *(*a1 + 8);
  v4 = *(*a1 + 16);
  if (v5 >= v4)
  {
    v7 = *v3;
    v8 = v5 - *v3;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    *v3 = 0;
    *(v3 + 8) = v6;
    *(v3 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 8) = v6;
  return a1;
}

uint64_t *std::__tree<int>::__emplace_unique_key_args<int,int const&>(uint64_t *result, int a2, _DWORD *a3)
{
  v3 = result[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 28);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return result;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t Security::CodeSigning::BundleDiskRep::strictValidate(void **a1)
{
  ((*a1)[30])(a1);
  v2 = *(*a1[13] + 232);

  return v2();
}

uint64_t Security::CodeSigning::BundleDiskRep::pageSize(uint64_t a1)
{
  return (*(**(a1 + 104) + 224))();
}

{
  return (*(**(a1 + 104) + 216))();
}

CFDataRef Security::CodeSigning::BundleDiskRep::defaultResourceRules(uint64_t a1, uint64_t a2)
{
  memset(v123, 170, sizeof(v123));
  Security::CodeSigning::BundleDiskRep::resourcesRelativePath(v123, a1);
  if (*(a1 + 72) == 1)
  {
    v4 = std::string::basic_string[abi:ne200100]<0>(&v118, "^");
    if (SHIBYTE(v123[2]) >= 0)
    {
      v5 = v123;
    }

    else
    {
      v5 = v123[0];
    }

    if (SHIBYTE(v123[2]) >= 0)
    {
      v6 = HIBYTE(v123[2]);
    }

    else
    {
      v6 = v123[1];
    }

    v7 = std::string::append(v4, v5, v6);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v120.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v120.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v120, ".*\\.lproj/", 0xAuLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v122 = v9->__r_.__value_.__r.__words[2];
    v121 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = &v121;
    if (v122 < 0)
    {
      v11 = v121;
    }

    v12 = Security::cfmake<__CFDictionary const*>("{rules={'^.*' = #T%s = {optional=#T, weight=1000}'^.*/.*\\.pkg/' = {omit=#T, weight=10000}}}", v11);
    if (SHIBYTE(v122) < 0)
    {
      operator delete(v121);
    }

    if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v120.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v119) < 0)
    {
      v13 = v118;
LABEL_163:
      operator delete(v13);
      goto LABEL_167;
    }

    goto LABEL_167;
  }

  if (((*(*a2 + 16))(a2) & 0x10) == 0)
  {
    if (((*(*a2 + 16))(a2) & 8) != 0)
    {
      v90 = Security::cfmake<__CFDictionary const*>("{rules={'^.*' = #T'^Info\\.plist$' = {omit=#T,weight=10}}}");
    }

    else
    {
      v14 = HIBYTE(v123[2]);
      if (SHIBYTE(v123[2]) < 0)
      {
        v14 = v123[1];
      }

      if (v14)
      {
        v15 = std::string::basic_string[abi:ne200100]<0>(&v120, "^");
        if (SHIBYTE(v123[2]) >= 0)
        {
          v16 = v123;
        }

        else
        {
          v16 = v123[0];
        }

        if (SHIBYTE(v123[2]) >= 0)
        {
          v17 = HIBYTE(v123[2]);
        }

        else
        {
          v17 = v123[1];
        }

        v18 = std::string::append(v15, v16, v17);
        v19 = *&v18->__r_.__value_.__l.__data_;
        v122 = v18->__r_.__value_.__r.__words[2];
        v121 = v19;
        v18->__r_.__value_.__l.__size_ = 0;
        v18->__r_.__value_.__r.__words[2] = 0;
        v18->__r_.__value_.__r.__words[0] = 0;
        if (v122 >= 0)
        {
          v20 = &v121;
        }

        else
        {
          v20 = v121;
        }

        v21 = std::string::basic_string[abi:ne200100]<0>(v115, "^");
        if (SHIBYTE(v123[2]) >= 0)
        {
          v22 = v123;
        }

        else
        {
          v22 = v123[0];
        }

        if (SHIBYTE(v123[2]) >= 0)
        {
          v23 = HIBYTE(v123[2]);
        }

        else
        {
          v23 = v123[1];
        }

        v24 = std::string::append(v21, v22, v23);
        v25 = *&v24->__r_.__value_.__l.__data_;
        v117.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
        *&v117.__r_.__value_.__l.__data_ = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        v26 = std::string::append(&v117, ".*\\.lproj/", 0xAuLL);
        v27 = *&v26->__r_.__value_.__l.__data_;
        v119 = v26->__r_.__value_.__r.__words[2];
        v118 = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        if (v119 >= 0)
        {
          v28 = &v118;
        }

        else
        {
          v28 = v118;
        }

        std::string::basic_string[abi:ne200100]<0>(&v111, "^");
        if (SHIBYTE(v123[2]) >= 0)
        {
          v29 = v123;
        }

        else
        {
          v29 = v123[0];
        }

        if (SHIBYTE(v123[2]) >= 0)
        {
          v30 = HIBYTE(v123[2]);
        }

        else
        {
          v30 = v123[1];
        }

        v31 = std::string::append(&v111, v29, v30);
        v32 = *&v31->__r_.__value_.__l.__data_;
        v112.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
        *&v112.__r_.__value_.__l.__data_ = v32;
        v31->__r_.__value_.__l.__size_ = 0;
        v31->__r_.__value_.__r.__words[2] = 0;
        v31->__r_.__value_.__r.__words[0] = 0;
        v33 = std::string::append(&v112, "Base\\.lproj/", 0xCuLL);
        v34 = *&v33->__r_.__value_.__l.__data_;
        v114 = v33->__r_.__value_.__r.__words[2];
        v113 = v34;
        v33->__r_.__value_.__l.__size_ = 0;
        v33->__r_.__value_.__r.__words[2] = 0;
        v33->__r_.__value_.__r.__words[0] = 0;
        if (v114 >= 0)
        {
          v35 = &v113;
        }

        else
        {
          v35 = v113;
        }

        std::string::basic_string[abi:ne200100]<0>(&v107, "^");
        if (SHIBYTE(v123[2]) >= 0)
        {
          v36 = v123;
        }

        else
        {
          v36 = v123[0];
        }

        if (SHIBYTE(v123[2]) >= 0)
        {
          v37 = HIBYTE(v123[2]);
        }

        else
        {
          v37 = v123[1];
        }

        v38 = std::string::append(&v107, v36, v37);
        v39 = *&v38->__r_.__value_.__l.__data_;
        v108.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
        *&v108.__r_.__value_.__l.__data_ = v39;
        v38->__r_.__value_.__l.__size_ = 0;
        v38->__r_.__value_.__r.__words[2] = 0;
        v38->__r_.__value_.__r.__words[0] = 0;
        v40 = std::string::append(&v108, ".*\\.lproj/locversion.plist$", 0x1BuLL);
        v41 = *&v40->__r_.__value_.__l.__data_;
        v110 = v40->__r_.__value_.__r.__words[2];
        v109 = v41;
        v40->__r_.__value_.__l.__size_ = 0;
        v40->__r_.__value_.__r.__words[2] = 0;
        v40->__r_.__value_.__r.__words[0] = 0;
        if (v110 >= 0)
        {
          v42 = &v109;
        }

        else
        {
          v42 = v109;
        }

        std::string::basic_string[abi:ne200100]<0>(&v104, "^");
        if (SHIBYTE(v123[2]) >= 0)
        {
          v43 = v123;
        }

        else
        {
          v43 = v123[0];
        }

        if (SHIBYTE(v123[2]) >= 0)
        {
          v44 = HIBYTE(v123[2]);
        }

        else
        {
          v44 = v123[1];
        }

        v45 = std::string::append(&v104, v43, v44);
        v46 = *&v45->__r_.__value_.__l.__data_;
        v106 = v45->__r_.__value_.__r.__words[2];
        v105 = v46;
        v45->__r_.__value_.__l.__size_ = 0;
        v45->__r_.__value_.__r.__words[2] = 0;
        v45->__r_.__value_.__r.__words[0] = 0;
        if (v106 >= 0)
        {
          v47 = &v105;
        }

        else
        {
          v47 = v105;
        }

        std::string::basic_string[abi:ne200100]<0>(&v100, "^");
        if (SHIBYTE(v123[2]) >= 0)
        {
          v48 = v123;
        }

        else
        {
          v48 = v123[0];
        }

        if (SHIBYTE(v123[2]) >= 0)
        {
          v49 = HIBYTE(v123[2]);
        }

        else
        {
          v49 = v123[1];
        }

        v50 = std::string::append(&v100, v48, v49);
        v51 = *&v50->__r_.__value_.__l.__data_;
        v101.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
        *&v101.__r_.__value_.__l.__data_ = v51;
        v50->__r_.__value_.__l.__size_ = 0;
        v50->__r_.__value_.__r.__words[2] = 0;
        v50->__r_.__value_.__r.__words[0] = 0;
        v52 = std::string::append(&v101, ".*\\.lproj/", 0xAuLL);
        v53 = *&v52->__r_.__value_.__l.__data_;
        v103 = v52->__r_.__value_.__r.__words[2];
        v102 = v53;
        v52->__r_.__value_.__l.__size_ = 0;
        v52->__r_.__value_.__r.__words[2] = 0;
        v52->__r_.__value_.__r.__words[0] = 0;
        if (v103 >= 0)
        {
          v54 = &v102;
        }

        else
        {
          v54 = v102;
        }

        std::string::basic_string[abi:ne200100]<0>(&v96, "^");
        if (SHIBYTE(v123[2]) >= 0)
        {
          v55 = v123;
        }

        else
        {
          v55 = v123[0];
        }

        if (SHIBYTE(v123[2]) >= 0)
        {
          v56 = HIBYTE(v123[2]);
        }

        else
        {
          v56 = v123[1];
        }

        v57 = std::string::append(&v96, v55, v56);
        v58 = *&v57->__r_.__value_.__l.__data_;
        v97.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
        *&v97.__r_.__value_.__l.__data_ = v58;
        v57->__r_.__value_.__l.__size_ = 0;
        v57->__r_.__value_.__r.__words[2] = 0;
        v57->__r_.__value_.__r.__words[0] = 0;
        v59 = std::string::append(&v97, "Base\\.lproj/", 0xCuLL);
        v60 = *&v59->__r_.__value_.__l.__data_;
        v99 = v59->__r_.__value_.__r.__words[2];
        v98 = v60;
        v59->__r_.__value_.__l.__size_ = 0;
        v59->__r_.__value_.__r.__words[2] = 0;
        v59->__r_.__value_.__r.__words[0] = 0;
        if (v99 >= 0)
        {
          v61 = &v98;
        }

        else
        {
          v61 = v98;
        }

        std::string::basic_string[abi:ne200100]<0>(&v92, "^");
        if (SHIBYTE(v123[2]) >= 0)
        {
          v62 = v123;
        }

        else
        {
          v62 = v123[0];
        }

        if (SHIBYTE(v123[2]) >= 0)
        {
          v63 = HIBYTE(v123[2]);
        }

        else
        {
          v63 = v123[1];
        }

        v64 = std::string::append(&v92, v62, v63);
        v65 = *&v64->__r_.__value_.__l.__data_;
        v93.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
        *&v93.__r_.__value_.__l.__data_ = v65;
        v64->__r_.__value_.__l.__size_ = 0;
        v64->__r_.__value_.__r.__words[2] = 0;
        v64->__r_.__value_.__r.__words[0] = 0;
        v66 = std::string::append(&v93, ".*\\.lproj/locversion.plist$", 0x1BuLL);
        v67 = *&v66->__r_.__value_.__l.__data_;
        v95 = v66->__r_.__value_.__r.__words[2];
        *__p = v67;
        v66->__r_.__value_.__l.__size_ = 0;
        v66->__r_.__value_.__r.__words[2] = 0;
        v66->__r_.__value_.__r.__words[0] = 0;
        v68 = __p;
        if (v95 < 0)
        {
          v68 = __p[0];
        }

        v12 = Security::cfmake<__CFDictionary const*>("{rules={'^version.plist$' = #T%s = #T%s = {optional=#T, weight=1000}%s = {weight=1010}%s = {omit=#T, weight=1100}},rules2={'^.*' = #T'^[^/]+$' = {nested=#T, weight=10}'^(Frameworks|SharedFrameworks|PlugIns|Plug-ins|XPCServices|Helpers|MacOS|Library/(Automator|Spotlight|LoginItems))/' = {nested=#T, weight=10}'.*\\.dSYM($|/)' = {weight=11}'^(.*/)?\\.DS_Store$' = {omit=#T,weight=2000}'^Info\\.plist$' = {omit=#T, weight=20}'^version\\.plist$' = {weight=20}'^embedded\\.provisionprofile$' = {weight=20}'^PkgInfo$' = {omit=#T, weight=20}%s = {weight=20}%s = {optional=#T, weight=1000}%s = {weight=1010}%s = {omit=#T, weight=1100}}}", v20, v28, v35, v42, v47, v54, v61, v68);
        if (SHIBYTE(v95) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v93.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v92.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v99) < 0)
        {
          operator delete(v98);
        }

        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v97.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v96.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v103) < 0)
        {
          operator delete(v102);
        }

        if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v101.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v100.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v106) < 0)
        {
          operator delete(v105);
        }

        if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v104.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v110) < 0)
        {
          operator delete(v109);
        }

        if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v108.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v107.__r_.__value_.__l.__data_);
        }

        goto LABEL_147;
      }

      v90 = Security::cfmake<__CFDictionary const*>("{rules={'^version.plist$' = #T'^.*' = #T'^.*\\.lproj/' = {optional=#T, weight=1000}'^Base\\.lproj/' = {weight=1010}'^.*\\.lproj/locversion.plist$' = {omit=#T, weight=1100}},rules2={'^.*' = #T'.*\\.dSYM($|/)' = {weight=11}'^(.*/)?\\.DS_Store$' = {omit=#T,weight=2000}'^Info\\.plist$' = {omit=#T, weight=20}'^version\\.plist$' = {weight=20}'^embedded\\.provisionprofile$' = {weight=20}'^PkgInfo$' = {omit=#T, weight=20}'^.*\\.lproj/' = {optional=#T, weight=1000}'^Base\\.lproj/' = {weight=1010}'^.*\\.lproj/locversion.plist$' = {omit=#T, weight=1100}}}");
    }

    v12 = v90;
    goto LABEL_167;
  }

  v69 = std::string::basic_string[abi:ne200100]<0>(&v120, "^");
  if (SHIBYTE(v123[2]) >= 0)
  {
    v70 = v123;
  }

  else
  {
    v70 = v123[0];
  }

  if (SHIBYTE(v123[2]) >= 0)
  {
    v71 = HIBYTE(v123[2]);
  }

  else
  {
    v71 = v123[1];
  }

  v72 = std::string::append(v69, v70, v71);
  v73 = *&v72->__r_.__value_.__l.__data_;
  v122 = v72->__r_.__value_.__r.__words[2];
  v121 = v73;
  v72->__r_.__value_.__l.__size_ = 0;
  v72->__r_.__value_.__r.__words[2] = 0;
  v72->__r_.__value_.__r.__words[0] = 0;
  if (v122 >= 0)
  {
    v74 = &v121;
  }

  else
  {
    v74 = v121;
  }

  v75 = std::string::basic_string[abi:ne200100]<0>(v115, "^");
  if (SHIBYTE(v123[2]) >= 0)
  {
    v76 = v123;
  }

  else
  {
    v76 = v123[0];
  }

  if (SHIBYTE(v123[2]) >= 0)
  {
    v77 = HIBYTE(v123[2]);
  }

  else
  {
    v77 = v123[1];
  }

  v78 = std::string::append(v75, v76, v77);
  v79 = *&v78->__r_.__value_.__l.__data_;
  v117.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
  *&v117.__r_.__value_.__l.__data_ = v79;
  v78->__r_.__value_.__l.__size_ = 0;
  v78->__r_.__value_.__r.__words[2] = 0;
  v78->__r_.__value_.__r.__words[0] = 0;
  v80 = std::string::append(&v117, ".*\\.lproj/", 0xAuLL);
  v81 = *&v80->__r_.__value_.__l.__data_;
  v119 = v80->__r_.__value_.__r.__words[2];
  v118 = v81;
  v80->__r_.__value_.__l.__size_ = 0;
  v80->__r_.__value_.__r.__words[2] = 0;
  v80->__r_.__value_.__r.__words[0] = 0;
  if (v119 >= 0)
  {
    v82 = &v118;
  }

  else
  {
    v82 = v118;
  }

  std::string::basic_string[abi:ne200100]<0>(&v111, "^");
  if (SHIBYTE(v123[2]) >= 0)
  {
    v83 = v123;
  }

  else
  {
    v83 = v123[0];
  }

  if (SHIBYTE(v123[2]) >= 0)
  {
    v84 = HIBYTE(v123[2]);
  }

  else
  {
    v84 = v123[1];
  }

  v85 = std::string::append(&v111, v83, v84);
  v86 = *&v85->__r_.__value_.__l.__data_;
  v112.__r_.__value_.__r.__words[2] = v85->__r_.__value_.__r.__words[2];
  *&v112.__r_.__value_.__l.__data_ = v86;
  v85->__r_.__value_.__l.__size_ = 0;
  v85->__r_.__value_.__r.__words[2] = 0;
  v85->__r_.__value_.__r.__words[0] = 0;
  v87 = std::string::append(&v112, ".*\\.lproj/locversion.plist$", 0x1BuLL);
  v88 = *&v87->__r_.__value_.__l.__data_;
  v114 = v87->__r_.__value_.__r.__words[2];
  v113 = v88;
  v87->__r_.__value_.__l.__size_ = 0;
  v87->__r_.__value_.__r.__words[2] = 0;
  v87->__r_.__value_.__r.__words[0] = 0;
  v89 = &v113;
  if (v114 < 0)
  {
    v89 = v113;
  }

  v12 = Security::cfmake<__CFDictionary const*>("{rules={'^version.plist$' = #T%s = #T%s = {optional=#T, weight=1000}%s = {omit=#T, weight=1100}}}", v74, v82, v89);
LABEL_147:
  if (SHIBYTE(v114) < 0)
  {
    operator delete(v113);
  }

  if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v112.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v111.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v119) < 0)
  {
    operator delete(v118);
  }

  if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v117.__r_.__value_.__l.__data_);
  }

  if (v116 < 0)
  {
    operator delete(v115[0]);
  }

  if (SHIBYTE(v122) < 0)
  {
    operator delete(v121);
  }

  if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
  {
    v13 = v120.__r_.__value_.__r.__words[0];
    goto LABEL_163;
  }

LABEL_167:
  if (SHIBYTE(v123[2]) < 0)
  {
    operator delete(v123[0]);
  }

  return v12;
}

void sub_1889244E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, void *a62, uint64_t a63)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a67 < 0)
  {
    operator delete(a66);
  }

  if (a65 < 0)
  {
    operator delete(a62);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  if (a71 < 0)
  {
    operator delete(a70);
  }

  if (a69 < 0)
  {
    operator delete(a68);
  }

  if (a77 < 0)
  {
    operator delete(a76);
  }

  if (a75 < 0)
  {
    operator delete(a74);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (*(v81 - 233) < 0)
  {
    operator delete(*(v81 - 256));
  }

  if (a81 < 0)
  {
    operator delete(a80);
  }

  if (a79 < 0)
  {
    operator delete(a78);
  }

  if (*(v81 - 153) < 0)
  {
    operator delete(*(v81 - 176));
  }

  if (*(v81 - 185) < 0)
  {
    operator delete(*(v81 - 208));
  }

  if (*(v81 - 209) < 0)
  {
    operator delete(*(v81 - 232));
  }

  if (*(v81 - 89) < 0)
  {
    operator delete(*(v81 - 112));
  }

  if (*(v81 - 121) < 0)
  {
    operator delete(*(v81 - 144));
  }

  if (*(v81 - 65) < 0)
  {
    operator delete(*(v81 - 88));
  }

  _Unwind_Resume(a1);
}

void Security::CodeSigning::BundleDiskRep::explicitIdentifier(CFBundleRef *this@<X0>, std::string *a2@<X8>)
{
  Identifier = CFBundleGetIdentifier(this[3]);
  if (Identifier || (InfoDictionary = CFBundleGetInfoDictionary(this[3])) != 0 && (Identifier = CFDictionaryGetValue(InfoDictionary, *MEMORY[0x1E695E4F8])) != 0)
  {

    Security::cfString(a2, Identifier);
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(a2, &unk_188967DD7);
  }
}

void Security::CodeSigning::BundleDiskRep::recommendedIdentifier(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(v8, 170, sizeof(v8));
  (*(*a1 + 192))(v8);
  v4 = HIBYTE(v8[2]);
  if (SHIBYTE(v8[2]) < 0)
  {
    v4 = v8[1];
  }

  if (v4)
  {
    *a2 = *v8;
    *(a2 + 16) = v8[2];
  }

  else
  {
    v5 = (*(*a1 + 48))(a1);
    Security::cfStringRelease(__p, v5);
    Security::CodeSigning::DiskRep::canonicalIdentifier(a2, __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v8[2]) < 0)
    {
      operator delete(v8[0]);
    }
  }
}

void sub_188924900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef Security::CodeSigning::BundleDiskRep::copyStapledTicket(Security::CodeSigning::BundleDiskRep *this)
{
  v32 = *MEMORY[0x1E69E9840];
  memset(v25, 170, sizeof(v25));
  v1 = (*(*this + 48))(this);
  Security::cfStringRelease(v25, v1);
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v29.st_blksize = v2;
  *v29.st_qspare = v2;
  v29.st_birthtimespec = v2;
  *&v29.st_size = v2;
  v29.st_mtimespec = v2;
  v29.st_ctimespec = v2;
  *&v29.st_uid = v2;
  v29.st_atimespec = v2;
  *&v29.st_dev = v2;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  cf = 0;
  if (SHIBYTE(v25[2]) >= 0)
  {
    v3 = HIBYTE(v25[2]);
  }

  else
  {
    v3 = v25[1];
  }

  __p[0] = 0xAAAAAAAAAAAAAAAALL;
  __p[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = __p;
  std::string::basic_string[abi:ne200100](__p, v3 + 23);
  if (v27 < 0)
  {
    v4 = __p[0];
  }

  if (v3)
  {
    if (SHIBYTE(v25[2]) >= 0)
    {
      v5 = v25;
    }

    else
    {
      v5 = v25[0];
    }

    memmove(v4, v5, v3);
  }

  strcpy(v4 + v3, "/Contents/CodeResources");
  v6 = secLogObjForScope("notarization");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v23 = v25;
    if (SHIBYTE(v25[2]) < 0)
    {
      v23 = v25[0];
    }

    *buf = 136315138;
    v31 = v23;
    _os_log_debug_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEBUG, "Extracting ticket from bundle: %s", buf, 0xCu);
  }

  if (v27 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = open(v7, 0);
  v9 = v8;
  if ((v8 & 0x80000000) == 0)
  {
    if (fstat(v8, &v29))
    {
      v10 = secLogObjForScope("SecError");
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v11 = *__error();
      *buf = 67109120;
      LODWORD(v31) = v11;
      v12 = "unable to stat stapling file: %d";
      v13 = v10;
      v14 = 8;
      goto LABEL_26;
    }

    if ((v29.st_mode & 0x80000000) == 0)
    {
      v17 = secLogObjForScope("SecError");
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      *buf = 0;
      v12 = "stapling is not a regular file";
      goto LABEL_25;
    }

    st_size = v29.st_size;
    if (v29.st_size > 0x7FFFFFFF)
    {
      v24 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v31 = v29.st_size;
        v12 = "ticket size was too large: %lld";
        v13 = v24;
        v14 = 12;
        goto LABEL_26;
      }
    }

    else
    {
      v21 = malloc_type_malloc(v29.st_size, 0x100004077774924uLL);
      if (v21)
      {
        if (read(v9, v21, st_size) == st_size)
        {
          v22 = CFDataCreateWithBytesNoCopy(0, v21, st_size, *MEMORY[0x1E695E488]);
          if (cf)
          {
            CFRelease(cf);
          }

          cf = v22;
          if (!v22)
          {
            v17 = secLogObjForScope("SecError");
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v12 = "unable to create cfdata for notarization";
LABEL_25:
              v13 = v17;
              v14 = 2;
LABEL_26:
              _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
            }
          }
        }

        else
        {
          v17 = secLogObjForScope("SecError");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v12 = "unable to read entire ticket from bundle";
            goto LABEL_25;
          }
        }
      }

      else
      {
        v17 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v12 = "unable to allocate data for ticket";
          goto LABEL_25;
        }
      }
    }

LABEL_27:
    if (!v9)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (*__error() != 2)
  {
    v15 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *__error();
      *buf = 67109120;
      LODWORD(v31) = v16;
      _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "cannot open stapled file for reading: %d", buf, 8u);
    }
  }

LABEL_28:
  close(v9);
LABEL_29:
  v18 = cf;
  cf = 0;
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  Security::CFRef<__CFData const*>::~CFRef(&cf);
  if (SHIBYTE(v25[2]) < 0)
  {
    operator delete(v25[0]);
  }

  return v18;
}

void sub_188924DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  Security::CFRef<__CFData const*>::~CFRef(&a22);
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

const void **Security::CodeSigning::BundleDiskRep::registerStapledTicket(Security::CodeSigning::BundleDiskRep *this)
{
  v3 = (*(*this + 176))(this);
  Security::CodeSigning::registerStapledTicketWithSystem(v3, v1);
  return Security::CFRef<__CFData const*>::~CFRef(&v3);
}

__CFArray *Security::CodeSigning::BundleDiskRep::modifiedFiles(Security::CodeSigning::BundleDiskRep *this)
{
  v6 = (*(**(this + 13) + 136))(*(this + 13));
  MutableCopy = CFArrayCreateMutableCopy(0, 0, v6);
  Security::CodeSigning::BundleDiskRep::checkModifiedFile(this, MutableCopy, 0);
  Security::CodeSigning::BundleDiskRep::checkModifiedFile(this, MutableCopy, 0x10000);
  Security::CodeSigning::BundleDiskRep::checkModifiedFile(this, MutableCopy, 3);
  Security::CodeSigning::BundleDiskRep::checkModifiedFile(this, MutableCopy, 4);
  Security::CodeSigning::BundleDiskRep::checkModifiedFile(this, MutableCopy, 5);
  Security::CodeSigning::BundleDiskRep::checkModifiedFile(this, MutableCopy, 7);
  Security::CodeSigning::BundleDiskRep::checkModifiedFile(this, MutableCopy, 6);
  v2 = 4096;
  do
  {
    Security::CodeSigning::BundleDiskRep::checkModifiedFile(this, MutableCopy, v2);
    v2 = (v2 + 1);
  }

  while (v2 != 4101);
  v3 = MutableCopy;
  MutableCopy = 0;
  Security::CFRef<__CFArray *>::~CFRef(&MutableCopy);
  Security::CFRef<__CFArray const*>::~CFRef(&v6);
  return v3;
}

void sub_188924FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Security::CFRef<__CFArray const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

void Security::CodeSigning::BundleDiskRep::checkModifiedFile(Security::CodeSigning::BundleDiskRep *this, __CFArray *a2, Security::CodeSigning::CodeDirectory *a3)
{
  v6 = (*(**(this + 13) + 24))(*(this + 13), a3);
  if (v6)
  {

    CFRelease(v6);
  }

  else
  {
    v7 = Security::CodeSigning::CodeDirectory::canonicalSlotName(a3);
    if (v7)
    {
      memset(&__sz, 170, sizeof(__sz));
      Security::CodeSigning::BundleDiskRep::metaPath(&__sz, this, v7);
      v8 = SHIBYTE(__sz.__r_.__value_.__r.__words[2]);
      v9 = __sz.__r_.__value_.__r.__words[0];
      if ((__sz.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_sz = &__sz;
      }

      else
      {
        p_sz = __sz.__r_.__value_.__r.__words[0];
      }

      if (!access(p_sz, 0))
      {
        if (v8 < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v9, __sz.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = __sz;
        }

        v12 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        CFURL = Security::makeCFURL(v12, 0, 0, v11);
        CFArrayAppendValue(a2, CFURL);
        Security::CFRef<__CFURL const*>::~CFRef(&CFURL);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (v8 < 0)
      {
        operator delete(v9);
      }
    }
  }
}

void sub_188925588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v33 - 49) < 0)
  {
    operator delete(*(v33 - 72));
  }

  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_188925890(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Security::CodeSigning::ResourceBuilder::Rule *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

const void **Security::CodeSigning::BundleDiskRep::resourcesRootPath@<X0>(CFBundleRef *this@<X0>, Security *a2@<X8>)
{
  v3 = CFBundleCopySupportFilesDirectoryURL(this[3]);

  return Security::cfStringRelease(a2, v3);
}

void ___ZN8Security11CodeSigning13BundleDiskRep21validateFrameworkRootENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE_block_invoke(uint64_t a1@<X0>, std::string::value_type *a2@<X1>, std::string *a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v22, "^(\\./)?Versions/");
  v8 = *(a1 + 32);
  v7 = a1 + 32;
  v6 = v8;
  v9 = *(v7 + 23);
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = *(v7 + 8);
  }

  v12 = std::string::append(&v22, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v23, "/", 1uLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  Security::CodeSigning::ResourceBuilder::escapeRE(&__p, a2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v18 = std::string::append(&v24, p_p, size);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v25, "$", 1uLL);
  *a3 = *v20;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_188925C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN8Security11CodeSigning12DirValidator5allowERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEjS8__block_invoke(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    *a2 = *(a1 + 32);
  }
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void __copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v2 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v2;
  }
}

void ___ZN8Security11CodeSigning12DirValidator7requireERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEjS8__block_invoke(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    *a2 = *(a1 + 32);
  }
}

void Security::CodeSigning::DirValidator::addRule(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 3;
    v9 = (v7 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    *(8 * v8) = a2;
    v5 = 8 * v8 + 8;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void Security::CodeSigning::CodeDirectory::Builder::Builder(Security::CodeSigning::CodeDirectory::Builder *this, Security::CodeSigning::CodeDirectory *a2)
{
  v2 = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = this + 24;
  *(this + 10) = -1;
  *(this + 44) = 0;
  *(this + 18) = 0;
  *(this + 19) = a2;
  *(this + 80) = 0;
  *(this + 88) = 0u;
  *(this + 27) = 0;
  *(this + 26) = 0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 177) = 0u;
  *(this + 25) = this + 208;
  *(this + 56) = 0;
  *(this + 29) = 0;
  Security::CodeSigning::CodeDirectory::hashFor(a2);
}

void sub_188925F6C(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::destroy(*(v1 + 208));
  if (*(v1 + 135) < 0)
  {
    operator delete(*(v1 + 112));
  }

  if (*(v1 + 111) < 0)
  {
    operator delete(*v4);
  }

  Security::UnixPlusPlus::FileDesc::closeAndLog(v2);
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*v3);
  _Unwind_Resume(a1);
}

void Security::CodeSigning::CodeDirectory::Builder::~Builder(Security::CodeSigning::CodeDirectory::Builder *this)
{
  free(*(this + 1));
  free(*(this + 19));
  std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::destroy(*(this + 26));
  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  Security::UnixPlusPlus::FileDesc::closeAndLog((this + 40));
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*(this + 3));
}

void Security::CodeSigning::CodeDirectory::Builder::specialSlot(Security::CodeSigning::CodeDirectory::Builder *this, unsigned int a2, const __CFData *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6 = v3;
  v7 = v3;
  v4 = v3;
  v5 = v3;
  Security::CodeSigning::CodeDirectory::hashFor(*(this + 19));
}

void sub_1889261A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  Security::RefPointer<Security::DynamicHash>::~RefPointer(va);
  _Unwind_Resume(a1);
}

unint64_t Security::CodeSigning::CodeDirectory::Builder::size(Security::CodeSigning::CodeDirectory::Builder *this, unsigned int a2)
{
  v4 = *(this + 7);
  if (v4 || (v5.tv_sec = 0xAAAAAAAAAAAAAAAALL, v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL, *&v15.st_blksize = v5, *v15.st_qspare = v5, v15.st_birthtimespec = v5, *&v15.st_size = v5, v15.st_mtimespec = v5, v15.st_ctimespec = v5, *&v15.st_uid = v5, v15.st_atimespec = v5, *&v15.st_dev = v5, Security::UnixPlusPlus::FileDesc::fstat(*(this + 10), &v15), v6 = *(this + 6), v4 = v15.st_size - v6, v7 = v15.st_size == v6, *(this + 7) = v15.st_size - v6, !v7))
  {
    v4 = (v4 - 1) / *(this + 8) + 1;
  }

  *(this + 18) = v4;
  v8 = 96;
  if (a2 < 0x20500)
  {
    v8 = 88;
  }

  if (a2 < 0x20400)
  {
    v8 -= 24;
  }

  if (a2 >= 0x20300)
  {
    v9 = v8;
  }

  else
  {
    v9 = v8 - 12;
  }

  if (a2 >> 9 < 0x101)
  {
    v9 -= 4;
  }

  v10 = *(this + 111);
  if (v10 < 0)
  {
    v10 = *(this + 12);
  }

  v11 = v9 + *(this + 20) + v10 + 1;
  v12 = *(this + 135);
  if (v12 < 0)
  {
    v12 = *(this + 15);
    if (!v12)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (*(this + 135))
  {
LABEL_17:
    v11 += v12 + 1;
  }

LABEL_18:
  v13 = *(this + 21);
  result = v11 + (*(this + 17) + v4) * v13;
  if ((*(this + 192) & 1) != 0 || *(this + 27))
  {
    result += v4 * v13;
  }

  if (result <= v9)
  {
    Security::UnixError::throwMe(8);
  }

  return result;
}

uint64_t Security::CodeSigning::CodeDirectory::Builder::build(Security::CodeSigning::CodeDirectory::Builder *this)
{
  v97 = *MEMORY[0x1E69E9840];
  v2 = *(this + 111);
  if (v2 < 0)
  {
    v2 = *(this + 12);
  }

  v3 = *(this + 135);
  if (v3 < 0)
  {
    v4 = *(this + 15);
  }

  else
  {
    v4 = *(this + 135);
  }

  if ((*(this + 192) & 1) != 0 || *(this + 27))
  {
    v5 = 132352;
  }

  else
  {
    v5 = 132352;
    if (!*(this + 56))
    {
      if (*(this + 22))
      {
        v5 = 132096;
      }

      else if (*(this + 15))
      {
        v5 = 131840;
      }

      else
      {
        if ((v3 & 0x80000000) != 0)
        {
          v3 = *(this + 15);
        }

        if (v3)
        {
          v5 = 131584;
        }

        else
        {
          v5 = 131328;
        }
      }
    }
  }

  if (*(this + 37))
  {
    Security::MacOSError::throwMe(0xFFFEFA44);
  }

  v6 = Security::CodeSigning::CodeDirectory::Builder::size(this, v5);
  v7 = v6;
  v8 = malloc_type_calloc(1uLL, v6, 0x1000040565EDBD2uLL);
  *(this + 29) = v8;
  if (!v8)
  {
    Security::UnixError::throwMe(0xC);
  }

  v9 = v8;
  v8->i32[0] = 34397946;
  v8->i32[1] = bswap32(v7);
  v10 = bswap32(*(this + 18));
  v8[1].i32[0] = bswap32(v5);
  v8[1].i32[1] = v10;
  v8[3] = vrev32_s8(vmovn_s64(*(this + 136)));
  v11 = *(this + 7);
  if (HIDWORD(v11))
  {
    v8[7] = bswap64(v11);
    v12 = -1;
  }

  else
  {
    v12 = bswap32(v11);
  }

  v13 = v2 + 1;
  v8[4].i32[0] = v12;
  v8[4].i8[5] = *(this + 19);
  v8[4].i8[6] = *(this + 80);
  v8[4].i8[4] = *(this + 21);
  v14 = *(this + 8);
  frexp(v14, &__e);
  v15 = __e - 1;
  if (!v14)
  {
    v15 = 0;
  }

  v9[2].i8[7] = v15;
  v9[4] = vrev64q_s8(*(this + 168));
  v9[5].i64[0] = bswap64(*(this + 23));
  v9[5].i32[2] = bswap32(*(this + 56));
  v16 = 96;
  if (v5 < 0x20500)
  {
    v16 = 88;
  }

  if (v5 < 0x20400)
  {
    v16 -= 24;
  }

  if (v5 < 0x20300)
  {
    v16 -= 12;
  }

  if (v5 >= 0x20200)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 - 4;
  }

  v18 = *(this + 19);
  if (v18)
  {
    v9[2].i32[3] = bswap32(v17);
    memcpy(&v9->i8[v17], v18, *(this + 20));
    v17 += *(this + 20);
    v9 = *(this + 29);
  }

  v19 = (this + 88);
  v9[1].i32[1] = bswap32(v17);
  if (*(this + 111) < 0)
  {
    v19 = *v19;
  }

  memcpy(&v9->i8[v17], v19, v13);
  v20 = v17 + v13;
  v21 = *(this + 135);
  if (v21 < 0)
  {
    v21 = *(this + 15);
  }

  if (v21)
  {
    v22 = (this + 112);
    v23 = *(this + 29);
    *(v23 + 48) = bswap32(v20);
    v24 = bswap32(*(v23 + 8)) < 0x20200 || v20 == 0;
    v25 = (v23 + v20);
    if (v24)
    {
      v26 = 0;
    }

    else
    {
      v26 = v25;
    }

    if (*(this + 135) < 0)
    {
      v22 = *v22;
    }

    memcpy(v26, v22, v4 + 1);
    v20 += v4 + 1;
  }

  if ((*(this + 192) & 1) != 0 || *(this + 27))
  {
    v27 = *(this + 29);
    *(v27 + 92) = bswap32(v20);
    v28 = *(this + 21);
    v20 += *(this + 18) * v28;
  }

  else
  {
    v28 = *(this + 21);
    v27 = *(this + 29);
  }

  v29 = *(this + 17);
  v30 = v29 * v28;
  v31 = v29 * v28 + v20;
  *(v27 + 16) = bswap32(v31);
  bzero((v27 + v31 + -(v29 * *(v27 + 36))), v30);
  if (*(this + 17))
  {
    v32 = 1;
    v33 = 0xFFFFFFFF00000000;
    do
    {
      memcpy((bswap32(*(*(this + 29) + 16)) + *(this + 29) + ((v33 * *(*(this + 29) + 36)) >> 32)), (*(this + 1) + (*(this + 21) * (v32++ - 1))), *(this + 21));
      v33 -= 0x100000000;
    }

    while (v32 <= *(this + 17));
  }

  Security::UnixPlusPlus::FileDesc::seek(*(this + 10), *(this + 6));
  if (*(this + 18))
  {
    v96 = 0xAAAAAAAAAAAAAAAALL;
    *&v34 = 0xAAAAAAAAAAAAAAAALL;
    *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v94 = v34;
    v95 = v34;
    v92 = v34;
    v93 = v34;
    Security::CodeSigning::CodeDirectory::hashFor(*(this + 19));
  }

  v36 = this + 208;
  v35 = *(this + 26);
  if (!v35)
  {
    return *(this + 29);
  }

  v37 = *(this + 19);
  v38 = this + 208;
  do
  {
    v39 = *(v35 + 8);
    v40 = v39 >= v37;
    v41 = v39 < v37;
    if (v40)
    {
      v38 = v35;
    }

    v35 = *&v35[8 * v41];
  }

  while (v35);
  if (v38 == v36 || v37 < *(v38 + 8))
  {
    return *(this + 29);
  }

  v42 = *(this + 29);
  if (bswap32(*(v42 + 8)) <= 0x204FF)
  {
    v45 = 0;
  }

  else
  {
    v43 = *(v42 + 92);
    v44 = bswap32(v43) + v42;
    v45 = v43 ? v44 : 0;
  }

  BytePtr = CFDataGetBytePtr(*(v38 + 5));
  memcpy(v45, BytePtr, *(this + 18) * *(this + 21));
  v47 = *(this + 26);
  if (!v47)
  {
    return *(this + 29);
  }

  v48 = *(v38 + 8);
  v49 = this + 208;
  v50 = *(this + 26);
  do
  {
    v51 = *(v50 + 8);
    v40 = v51 >= v48;
    v52 = v51 < v48;
    if (v40)
    {
      v49 = v50;
    }

    v50 = *&v50[8 * v52];
  }

  while (v50);
  if (v49 == v36 || v48 < *(v49 + 8))
  {
    return *(this + 29);
  }

  v53 = *(v49 + 1);
  if (v53)
  {
    do
    {
      v54 = v53;
      v53 = *v53;
    }

    while (v53);
  }

  else
  {
    v55 = v49;
    do
    {
      v54 = *(v55 + 2);
      v24 = *v54 == v55;
      v55 = v54;
    }

    while (!v24);
  }

  if (*(this + 25) == v49)
  {
    *(this + 25) = v54;
  }

  --*(this + 27);
  v56 = *v49;
  v57 = v49;
  if (*v49)
  {
    v58 = *(v49 + 1);
    if (!v58)
    {
      v57 = v49;
      goto LABEL_95;
    }

    do
    {
      v57 = v58;
      v58 = *v58;
    }

    while (v58);
  }

  v56 = *(v57 + 1);
  if (v56)
  {
LABEL_95:
    v60 = 0;
    v59 = *(v57 + 2);
    *(v56 + 16) = v59;
    goto LABEL_96;
  }

  v59 = *(v57 + 2);
  v60 = 1;
LABEL_96:
  v61 = *v59;
  if (*v59 == v57)
  {
    *v59 = v56;
    if (v57 == v47)
    {
      v61 = 0;
      v47 = v56;
    }

    else
    {
      v61 = v59[1];
    }
  }

  else
  {
    v59[1] = v56;
  }

  v62 = v57[24];
  if (v57 != v49)
  {
    v63 = *(v49 + 2);
    *(v57 + 2) = v63;
    v63[*v63 != v49] = v57;
    v65 = *v49;
    v64 = *(v49 + 1);
    *(v65 + 16) = v57;
    *v57 = v65;
    *(v57 + 1) = v64;
    if (v64)
    {
      *(v64 + 16) = v57;
    }

    v57[24] = v49[24];
    if (v47 == v49)
    {
      v47 = v57;
    }
  }

  if (!v47 || !v62)
  {
    goto LABEL_159;
  }

  if (!v60)
  {
    *(v56 + 24) = 1;
    goto LABEL_159;
  }

  while (1)
  {
    v66 = *(v61 + 2);
    v67 = *v66;
    if (*v66 == v61)
    {
      break;
    }

    if ((v61[24] & 1) == 0)
    {
      v61[24] = 1;
      *(v66 + 24) = 0;
      v68 = v66[1];
      v69 = *v68;
      v66[1] = *v68;
      if (v69)
      {
        *(v69 + 16) = v66;
      }

      v70 = v66[2];
      v68[2] = v70;
      v70[*v70 != v66] = v68;
      *v68 = v66;
      v66[2] = v68;
      if (v47 == *v61)
      {
        v47 = v61;
      }

      v61 = *(*v61 + 8);
    }

    v71 = *v61;
    if (*v61 && v71[24] != 1)
    {
      v72 = *(v61 + 1);
      if (v72 && (v72[24] & 1) == 0)
      {
LABEL_145:
        v71 = v61;
      }

      else
      {
        v71[24] = 1;
        v61[24] = 0;
        v80 = *(v71 + 1);
        *v61 = v80;
        if (v80)
        {
          *(v80 + 16) = v61;
        }

        v81 = *(v61 + 2);
        *(v71 + 2) = v81;
        v81[*v81 != v61] = v71;
        *(v71 + 1) = v61;
        *(v61 + 2) = v71;
        v72 = v61;
      }

      v82 = *(v71 + 2);
      v71[24] = *(v82 + 24);
      *(v82 + 24) = 1;
      v72[24] = 1;
      v83 = *(v82 + 8);
      v84 = *v83;
      *(v82 + 8) = *v83;
      if (v84)
      {
        *(v84 + 16) = v82;
      }

      v85 = *(v82 + 16);
      v83[2] = v85;
      v85[*v85 != v82] = v83;
      *v83 = v82;
      goto LABEL_158;
    }

    v72 = *(v61 + 1);
    if (v72 && v72[24] != 1)
    {
      goto LABEL_145;
    }

    v61[24] = 0;
    v73 = *(v61 + 2);
    if (v73 == v47 || (v73[24] & 1) == 0)
    {
      goto LABEL_139;
    }

LABEL_137:
    v61 = *(*(v73 + 2) + 8 * (**(v73 + 2) == v73));
  }

  if ((v61[24] & 1) == 0)
  {
    v61[24] = 1;
    *(v66 + 24) = 0;
    v74 = *(v67 + 1);
    *v66 = v74;
    if (v74)
    {
      *(v74 + 16) = v66;
    }

    v75 = v66[2];
    *(v67 + 2) = v75;
    v75[*v75 != v66] = v67;
    *(v67 + 1) = v66;
    v66[2] = v67;
    v76 = *(v61 + 1);
    if (v47 == v76)
    {
      v47 = v61;
    }

    v61 = *v76;
  }

  v77 = *v61;
  if (*v61 && v77[24] != 1)
  {
    goto LABEL_154;
  }

  v78 = *(v61 + 1);
  if (!v78 || v78[24] == 1)
  {
    v61[24] = 0;
    v73 = *(v61 + 2);
    if (v73[24] != 1 || v73 == v47)
    {
LABEL_139:
      v73[24] = 1;
      goto LABEL_159;
    }

    goto LABEL_137;
  }

  if (v77 && (v77[24] & 1) == 0)
  {
LABEL_154:
    v78 = v61;
    goto LABEL_155;
  }

  v78[24] = 1;
  v61[24] = 0;
  v86 = *v78;
  *(v61 + 1) = *v78;
  if (v86)
  {
    *(v86 + 16) = v61;
  }

  v87 = *(v61 + 2);
  *(v78 + 2) = v87;
  v87[*v87 != v61] = v78;
  *v78 = v61;
  *(v61 + 2) = v78;
  v77 = v61;
LABEL_155:
  v82 = *(v78 + 2);
  v78[24] = *(v82 + 24);
  *(v82 + 24) = 1;
  v77[24] = 1;
  v83 = *v82;
  v88 = *(*v82 + 8);
  *v82 = v88;
  if (v88)
  {
    *(v88 + 16) = v82;
  }

  v89 = *(v82 + 16);
  v83[2] = v89;
  v89[*v89 != v82] = v83;
  v83[1] = v82;
LABEL_158:
  *(v82 + 16) = v83;
LABEL_159:
  Security::CFRef<__CFData const*>::~CFRef(v49 + 5);
  operator delete(v49);
  return *(this + 29);
}

void sub_188926D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  Security::RefPointer<Security::DynamicHash>::~RefPointer(va);
  _Unwind_Resume(a1);
}

void Security::CodeSigning::scanFileData(int *a1, size_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v21.st_blksize = v6;
  *v21.st_qspare = v6;
  v21.st_birthtimespec = v6;
  *&v21.st_size = v6;
  v21.st_mtimespec = v6;
  v21.st_ctimespec = v6;
  *&v21.st_uid = v6;
  v21.st_atimespec = v6;
  *&v21.st_dev = v6;
  Security::UnixPlusPlus::FileDesc::fstat(*a1, &v21);
  if (v21.st_blksize <= 0x10000)
  {
    st_blksize = 0x10000;
  }

  else
  {
    st_blksize = v21.st_blksize;
  }

  v8 = malloc_type_valloc(st_blksize, 0x100004077774924uLL);
  if (v8)
  {
    while (1)
    {
      v9 = a2;
      if (a2 >= st_blksize)
      {
        v10 = st_blksize;
      }

      else
      {
        v10 = a2;
      }

      if (a2)
      {
        v11 = v10;
      }

      else
      {
        v11 = st_blksize;
      }

      v12 = read(*a1, v8, v11);
      v13 = v12;
      if (v12 == -1)
      {
        if (*__error() != 35)
        {
          v20 = __error();
          Security::UnixError::throwMe(*v20);
        }

        goto LABEL_19;
      }

      if (v12)
      {
        goto LABEL_20;
      }

      if (v11)
      {
        *(a1 + 4) = 1;
        v14 = secLogObjForScope("unixio");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v15 = *a1;
          *buf = 67109120;
          v23 = v15;
          v16 = v14;
          v17 = "%d end of data";
LABEL_25:
          _os_log_debug_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEBUG, v17, buf, 8u);
        }
      }

      else
      {
        v18 = secLogObjForScope("unixio");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v19 = *a1;
          *buf = 67109120;
          v23 = v19;
          v16 = v18;
          v17 = "%d zero read (ignored)";
          goto LABEL_25;
        }
      }

LABEL_19:
      v13 = 0;
LABEL_20:
      if ((a1[1] & 1) == 0)
      {
        (*(a3 + 16))(a3, v8, v13);
        a2 = 0;
        if (!v9)
        {
          continue;
        }

        a2 = v9 - v13;
        if (v9 != v13)
        {
          continue;
        }
      }

      free(v8);
      return;
    }
  }
}

void sub_188926F7C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_188926FC4(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x188926FCCLL);
  }

  __clang_call_terminate(a1);
}

void Security::CodeSigning::CodeDirectory::multipleHashFileData(uint64_t a1, size_t a2, void *a3, uint64_t a4)
{
  v22[0] = 0;
  v22[1] = 0;
  v21 = v22;
  v5 = *a3;
  if (*a3 != a3 + 1)
  {
    do
    {
      v6 = *(v5 + 7);
      v7 = &Security::CodeSigning::hashPriorities;
      do
      {
        v9 = *v7++;
        v8 = v9;
        v10 = v9 == v6 || v8 == 0;
      }

      while (!v10);
      if (v8)
      {
        Security::CodeSigning::CodeDirectory::hashFor(v6);
      }

      v11 = v5[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v5[2];
          v10 = *v12 == v5;
          v5 = v12;
        }

        while (!v10);
      }

      v5 = v12;
    }

    while (v12 != a3 + 1);
  }

  LODWORD(CFMutableDictionary) = *a1;
  BYTE4(CFMutableDictionary) = *(a1 + 4);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1174405120;
  v19[2] = ___ZN8Security11CodeSigning13CodeDirectory20multipleHashFileDataENS_12UnixPlusPlus8FileDescEmNSt3__13setIjNS4_4lessIjEENS4_9allocatorIjEEEEU13block_pointerFvjPNS_11DynamicHashEE_block_invoke;
  v19[3] = &__block_descriptor_tmp_17474;
  std::map<unsigned int,Security::RefPointer<Security::DynamicHash>>::map[abi:ne200100](v20, &v21);
  Security::CodeSigning::scanFileData(&CFMutableDictionary, a2, v19);
  CFMutableDictionary = Security::makeCFMutableDictionary(v13);
  v14 = v21;
  if (v21 != v22)
  {
    do
    {
      (*(a4 + 16))(a4, *(v14 + 8), v14[5]);
      v15 = v14[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v14[2];
          v10 = *v16 == v14;
          v14 = v16;
        }

        while (!v10);
      }

      v14 = v16;
    }

    while (v16 != v22);
  }

  Security::CFRef<__CFDictionary *>::~CFRef(&CFMutableDictionary);
  std::__tree<std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>>>::destroy(v20[1]);
  std::__tree<std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>>>::destroy(v22[0]);
}

void sub_1889272B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20)
{
  std::__tree<std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>>>::destroy(a17);
  std::__tree<std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>>>::destroy(a20);
  _Unwind_Resume(a1);
}

uint64_t ___ZN8Security11CodeSigning13CodeDirectory20multipleHashFileDataENS_12UnixPlusPlus8FileDescEmNSt3__13setIjNS4_4lessIjEENS4_9allocatorIjEEEEU13block_pointerFvjPNS_11DynamicHashEE_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 32);
  v4 = (result + 40);
  if (v3 != (result + 40))
  {
    do
    {
      result = (*(*v3[5] + 24))(v3[5], a2, a3);
      v7 = v3[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v3[2];
          v9 = *v8 == v3;
          v3 = v8;
        }

        while (!v9);
      }

      v3 = v8;
    }

    while (v8 != v4);
  }

  return result;
}

uint64_t **std::map<unsigned int,Security::RefPointer<Security::DynamicHash>>::map[abi:ne200100](uint64_t **a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = (a1 + 1);
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = a1[1];
      v4 = (a1 + 1);
      if (*a1 == (a1 + 1))
      {
        goto LABEL_8;
      }

      v5 = a1[1];
      v6 = (a1 + 1);
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = *(v5 + 8);
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = *(v2 + 8);
      if (*(v4 + 8) < v8)
      {
LABEL_8:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = (a1 + 1);
        }
      }

      else
      {
        v9 = (a1 + 1);
        if (v3)
        {
          v9 = (a1 + 1);
          while (1)
          {
            while (1)
            {
              v12 = v3;
              v13 = *(v3 + 32);
              if (v8 >= v13)
              {
                break;
              }

              v3 = *v12;
              v9 = v12;
              if (!*v12)
              {
                goto LABEL_12;
              }
            }

            if (v13 >= v8)
            {
              break;
            }

            v9 = v12 + 1;
            v3 = v12[1];
            if (!v3)
            {
              goto LABEL_12;
            }
          }
        }
      }

      if (!*v9)
      {
LABEL_12:
        memset(v14, 170, sizeof(v14));
        operator new();
      }

      v10 = v2[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v2[2];
          v7 = *v11 == v2;
          v2 = v11;
        }

        while (!v7);
      }

      v2 = v11;
    }

    while (v11 != a2 + 1);
  }

  return a1;
}

void std::__tree<std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>>>::destroy(a1[1]);
    Security::RefPointer<Security::DynamicHash>::~RefPointer((a1 + 5));

    operator delete(a1);
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned int,Security::RefPointer<Security::DynamicHash>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      Security::RefPointer<Security::DynamicHash>::~RefPointer(v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL Security::DynamicHash::verify(Security::DynamicHash *this, const unsigned __int8 *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = (*(*this + 16))(this);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  if (v5)
  {
    memset(v11 - v7, 170, v6);
  }

  (*(*this + 32))(this, v8);
  v9 = (*(*this + 16))(this);
  return memcmp(v8, a2, v9) == 0;
}

CFStringRef SecTaskCopyDebugDescription(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  pidp = -1431655766;
  v2 = *(a1 + 32);
  *atoken = *(a1 + 16);
  *&atoken[16] = v2;
  audit_token_to_au32(atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  *v14 = 0xE00000001;
  v15 = 1;
  v16 = pidp;
  memset(atoken, 170, sizeof(atoken));
  v11 = 648;
  if (sysctl(v14, 4u, atoken, &v11, 0, 0) == -1 || !v11)
  {
    v4 = __error();
    v3 = strerror(*v4);
  }

  else
  {
    v3 = &atoken[243];
  }

  v5 = CFGetAllocator(a1);
  v6 = pidp;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  if (v8)
  {
    Count = CFDictionaryGetCount(v8);
  }

  else
  {
    Count = 0xFFFFFFFFLL;
  }

  return CFStringCreateWithFormat(v5, 0, @"%s[%d]/%d#%d LF=%d", v3, v6, v7, Count, *(a1 + 64));
}

SecTaskRef SecTaskCreateWithXPCMessage(SecTaskRef result)
{
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v3.val = v1;
  *&v3.val[4] = v1;
  if (result)
  {
    if (MEMORY[0x18CFDC200]() == MEMORY[0x1E69E9E80])
    {
      xpc_dictionary_get_audit_token();
      v2 = v3;
      return SecTaskCreateWithAuditToken(0, &v2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL SecTaskEntitlementsValidated(uint64_t a1)
{
  v2 = 0;
  if (csops_task(a1, 0, &v2, 4) == -1)
  {
    return 0;
  }

  if ((~v2 & 0x10004000) != 0)
  {
    return (~v2 & 0x4201) == 0;
  }

  return 1;
}

uint64_t SecTaskValidateForLightweightCodeRequirementData(_OWORD *a1, const __CFData *a2, CFErrorRef *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  TypeID = SecTaskGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    if (a3)
    {
      v13 = *MEMORY[0x1E695E638];
      v14 = @"Invalid task reference";
      v15 = -67675;
LABEL_13:
      v11 = 0;
      *a3 = createError(v13, v15, v14);
      return v11;
    }

    return 0;
  }

  if (!a2 || !CFDataGetLength(a2))
  {
    if (a3)
    {
      v13 = *MEMORY[0x1E695E638];
      v14 = @"Invalid requirement";
      v15 = -50;
      goto LABEL_13;
    }

    return 0;
  }

  bzero(&v18, 0x404uLL);
  BytePtr = CFDataGetBytePtr(a2);
  Length = CFDataGetLength(a2);
  v9 = a1[2];
  v17[0] = a1[1];
  v17[1] = v9;
  v10 = amfi_launch_constraint_matches_process(v17, BytePtr, Length, &v18);
  v11 = v10;
  if (a3 && (v10 & 1) == 0)
  {
    v12 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v19, 0x8000100u);
    if (v18 <= 5)
    {
      *a3 = createError(**(&unk_1E70E4890 + v18), dword_188967778[v18], v12);
    }

    CFRelease(v12);
  }

  return v11;
}

CFErrorRef createError(const __CFString *a1, int a2, const void *a3)
{
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E695E620], a3);

  return CFErrorCreate(v6, a1, a2, Mutable);
}

uint64_t Security::PerThreadPointer<Security::CodeSigning::PerThread>::destructor(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x18CFD9760);
  }

  return result;
}

void sub_188927C3C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x188927C34);
}

OSStatus SecCodeCopySelf(SecCSFlags flags, SecCodeRef *self)
{
  if (!flags)
  {
    LODWORD(valuePtr) = getpid();
    v2 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    valuePtr = Security::makeCFMutableDictionary(v2, v3, v4, v5, v6, @"pid", v2, v2);
    v7 = Security::CFRef<__CFNumber const*>::~CFRef(&v9);
    Security::CodeSigning::SecCode::autoLocateGuest(v7, v8);
  }

  Security::MacOSError::throwMe(0xFFFEFA02);
}

uint64_t sub_188927CB4(void *a1, int a2)
{
  Security::CFRef<__CFDictionary *>::~CFRef(&v12);
  switch(a2)
  {
    case 6:
      v4 = __cxa_begin_catch(a1);
      if (v4[36] == 8)
      {
        v5 = 4294900247;
        goto LABEL_8;
      }

      goto LABEL_6;
    case 5:
      goto LABEL_5;
    case 4:
      v4 = __cxa_begin_catch(a1);
      v9 = v4[36];
      if (v9 <= 0x1A)
      {
        v5 = 4294900263;
        v10 = 1 << v9;
        if ((v10 & 0x800108) != 0)
        {
          goto LABEL_8;
        }

        if ((v10 & 0x4014000) != 0)
        {
          v5 = 4294900264;
          goto LABEL_8;
        }
      }

LABEL_6:
      v7 = (*(*v4 + 24))(v4);
      goto LABEL_7;
    case 3:
LABEL_5:
      v6 = __cxa_begin_catch(a1);
      v7 = (*(*v6 + 24))(v6);
LABEL_7:
      v5 = v7;
      goto LABEL_8;
  }

  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v5 = 4294967188;
  }

  else
  {
    Security::Syslog::notice("unknown exception in CSAPI", v11);
    v5 = 4294900248;
  }

LABEL_8:
  __cxa_end_catch();
  return v5;
}

uint64_t SecCodeGetStatus(Security::CodeSigning::SecCode *a1, __SecCode *a2, int *a3)
{
  if (a2)
  {
    v7 = 4294900226;
LABEL_8:
    Security::MacOSError::throwMe(v7);
  }

  v4 = *(Security::CodeSigning::SecCode::required(a1, a2) + 2);
  if (!v4)
  {
    v5 = 1;
    if (a3)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  v5 = (*(*v4 + 104))(v4);
  if (!a3)
  {
LABEL_6:
    v7 = 4294900227;
    goto LABEL_8;
  }

LABEL_4:
  *a3 = v5;
  return 0;
}

void *Security::CodeSigning::SecCode::required(Security::CodeSigning::SecCode *this, __SecCode *a2)
{
  {
    Security::MacOSError::throwMe(0xFFFEFA01);
  }

  return result;
}

uint64_t SecCodeSetStatus(Security::CodeSigning::SecCode *a1, __SecCode *a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v9 = 4294900226;
    goto LABEL_6;
  }

  v6 = Security::CodeSigning::SecCode::required(a1, a2);
  v7 = v6[2];
  if (!v7)
  {
    v9 = 4294900256;
LABEL_6:
    Security::MacOSError::throwMe(v9);
  }

  (*(*v7 + 112))(v7, v6, a2, a3);
  return 0;
}

OSStatus SecCodeCopyStaticCode(SecCodeRef code, SecCSFlags flags, SecStaticCodeRef *staticCode)
{
  v20 = *MEMORY[0x1E69E9840];
  if (flags >= 2)
  {
    Security::MacOSError::throwMe(0xFFFEFA02);
  }

  v14 = 0xAAAAAAAAAAAAAAAALL;
  v5 = Security::CodeSigning::SecCode::required(code, *&flags);
  v6 = v5;
  if ((v5[3] & 1) == 0)
  {
    (*(*v5 + 10))(v5);
    *(v6 + 24) = 1;
  }

  Security::SecPointerBase::SecPointerBase(&v14, v6[4]);
  if (flags)
  {
    v7 = (*(**(v14 + 4) + 80))(*(v14 + 4));
    if (v7)
    {
      if (*(v7 + 32))
      {
        v19 = 0xAAAAAAAAAAAAAAAALL;
        *&v8 = 0xAAAAAAAAAAAAAAAALL;
        *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v17 = v8;
        v18 = v8;
        *v15 = v8;
        v16 = v8;
        (*(**(v14 + 4) + 40))(__p);
        if (v13 >= 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        Security::CodeSigning::DiskRep::bestGuess(v9, 0);
      }
    }
  }

  v10 = v14;
  if (v14)
  {
    v10 = Security::SecCFObject::handle(v14, 1);
  }

  if (!staticCode)
  {
    Security::MacOSError::throwMe(0xFFFEFA03);
  }

  *staticCode = v10;
  Security::SecPointerBase::~SecPointerBase(&v14);
  return 0;
}

void sub_18892856C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, int a16, __int16 a17, char a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  Security::SecCFObject::operator delete(v19);
  Security::RefPointer<Security::CodeSigning::DiskRep>::~RefPointer(&a17);
  Security::SecPointerBase::~SecPointerBase(&a15);
  if (a2 == 6)
  {
    v22 = __cxa_begin_catch(exception_object);
    if (v22[36] == 8)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (a2 != 5)
  {
    if (a2 == 4)
    {
      v22 = __cxa_begin_catch(exception_object);
      v24 = v22[36];
      if (v24 <= 0x1A)
      {
        v25 = 1 << v24;
        if ((v25 & 0x800108) != 0 || (v25 & 0x4014000) != 0)
        {
          goto LABEL_17;
        }
      }

LABEL_16:
      (*(*v22 + 24))(v22);
LABEL_17:
      __cxa_end_catch();
LABEL_19:
      JUMPOUT(0x188928518);
    }

    if (a2 != 3)
    {
      __cxa_begin_catch(exception_object);
      if (a2 != 2)
      {
        Security::Syslog::notice("unknown exception in CSAPI", v26);
      }

      goto LABEL_17;
    }
  }

  v23 = __cxa_begin_catch(exception_object);
  (*(*v23 + 24))(v23);
  __cxa_end_catch();
  goto LABEL_19;
}

OSStatus SecCodeCopyHost(SecCodeRef guest, SecCSFlags flags, SecCodeRef *host)
{
  if (flags)
  {
    Security::MacOSError::throwMe(0xFFFEFA02);
  }

  v7 = 0xAAAAAAAAAAAAAAAALL;
  v4 = Security::CodeSigning::SecCode::required(guest, *&flags);
  Security::SecPointerBase::SecPointerBase(&v7, v4[2]);
  v5 = v7;
  if (v7)
  {
    v5 = Security::SecCFObject::handle(v7, 1);
  }

  if (!host)
  {
    Security::MacOSError::throwMe(0xFFFEFA03);
  }

  *host = v5;
  Security::SecPointerBase::~SecPointerBase(&v7);
  return 0;
}

void sub_188928874(void *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  Security::SecPointerBase::~SecPointerBase(va);
  switch(a2)
  {
    case 6:
      v6 = __cxa_begin_catch(a1);
      if (v6[36] == 8)
      {
        break;
      }

LABEL_6:
      (*(*v6 + 24))(v6);
      break;
    case 5:
      goto LABEL_5;
    case 4:
      v6 = __cxa_begin_catch(a1);
      v8 = v6[36];
      if (v8 > 0x1A)
      {
        goto LABEL_6;
      }

      v9 = 1 << v8;
      if ((v9 & 0x800108) == 0 && (v9 & 0x4014000) == 0)
      {
        goto LABEL_6;
      }

      break;
    case 3:
LABEL_5:
      v7 = __cxa_begin_catch(a1);
      (*(*v7 + 24))(v7);
      break;
    default:
      __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        Security::Syslog::notice("unknown exception in CSAPI", v10);
      }

      break;
  }

  __cxa_end_catch();
  JUMPOUT(0x188928844);
}

OSStatus SecCodeCheckValidityWithErrors(SecCodeRef code, SecCSFlags flags, SecRequirementRef requirement, CFErrorRef *errors)
{
  if ((flags & 0x1F7EDDEF) != 0)
  {
    Security::MacOSError::throwMe(0xFFFEFA02);
  }

  v5 = *&flags;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v6 = Security::CodeSigning::SecCode::required(code, *&flags);
  Security::SecPointerBase::SecPointerBase(&v11, v6);
  Security::CodeSigning::SecCode::checkValidity(v11, v5);
  v8 = Security::CodeSigning::SecRequirement::optional(requirement, v7);
  if (v8)
  {
    v9 = v11;
    if ((v5 & 0x800000) != 0)
    {
      (*(**(v11 + 2) + 120))(*(v11 + 2), v11, *(v8 + 2));
    }

    else
    {
      if ((*(v11 + 24) & 1) == 0)
      {
        (*(*v11 + 80))(v11);
        *(v9 + 24) = 1;
      }

      if (!Security::CodeSigning::SecStaticCode::satisfiesRequirement(*(v9 + 4), *(v8 + 2), -67050))
      {
        Security::MacOSError::throwMe(0xFFFEFA16);
      }
    }
  }

  Security::SecPointerBase::~SecPointerBase(&v11);
  return 0;
}

void sub_188928B8C(void *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  Security::SecPointerBase::~SecPointerBase(va);
  switch(a2)
  {
    case 7:
      v7 = __cxa_begin_catch(a1);
      Security::CodeSigning::CSError::cfError(v7, v4);
      goto LABEL_32;
    case 6:
      v8 = __cxa_begin_catch(a1);
      if (v8[36] == 8)
      {
        v9 = -67049;
      }

      else
      {
        v9 = (*(*v8 + 24))(v8);
      }

      if (v4)
      {
LABEL_30:
        v12 = CFErrorCreate(0, *MEMORY[0x1E695E638], v9, 0);
        goto LABEL_31;
      }

LABEL_32:
      __cxa_end_catch();
      JUMPOUT(0x188928B64);
    case 5:
      v10 = __cxa_begin_catch(a1);
      v11 = (*(*v10 + 24))(v10);
      if (!v4)
      {
        goto LABEL_32;
      }

      v12 = CFErrorCreate(0, *MEMORY[0x1E695E638], v11, 0);
LABEL_31:
      *v4 = v12;
      goto LABEL_32;
  }

  if (a2 != 4)
  {
    if (a2 == 3)
    {
      v16 = __cxa_begin_catch(a1);
      v17 = (*(*v16 + 24))(v16);
      if (v4)
      {
        *v4 = CFErrorCreate(0, *MEMORY[0x1E695E638], v17, 0);
      }
    }

    else
    {
      __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        if (v4)
        {
          *v4 = CFErrorCreate(0, *MEMORY[0x1E695E638], -108, 0);
        }
      }

      else
      {
        Security::Syslog::notice("unknown exception in CSAPI", v18);
        if (v4)
        {
          *v4 = CFErrorCreate(0, *MEMORY[0x1E695E638], -67048, 0);
        }
      }
    }

    goto LABEL_32;
  }

  v13 = __cxa_begin_catch(a1);
  v14 = v13[36];
  if (v14 > 0x1A)
  {
    goto LABEL_28;
  }

  v9 = -67033;
  v15 = 1 << v14;
  if ((v15 & 0x800108) != 0)
  {
    goto LABEL_29;
  }

  if ((v15 & 0x4014000) != 0)
  {
    v9 = -67032;
  }

  else
  {
LABEL_28:
    v9 = (*(*v13 + 24))(v13);
  }

LABEL_29:
  if (!v4)
  {
    goto LABEL_32;
  }

  goto LABEL_30;
}

char *Security::CodeSigning::SecRequirement::optional(char *this, __SecRequirement *a2)
{
  if (this)
  {
    if (!this)
    {
      Security::MacOSError::throwMe(0xFFFEFA01);
    }
  }

  return this;
}

void sub_188928F0C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x188928F04);
}

OSStatus SecStaticCodeCheckValidityWithErrors(SecStaticCodeRef staticCode, SecCSFlags flags, SecRequirementRef requirement, CFErrorRef *errors)
{
  if ((flags & 0xDFE0020) != 0)
  {
    Security::MacOSError::throwMe(0xFFFEFA02);
  }

  if (errors)
  {
    v6 = flags | 0x20;
  }

  else
  {
    v6 = flags;
  }

  v14 = 0xAAAAAAAAAAAAAAAALL;
  v7 = Security::CodeSigning::SecStaticCode::requiredStatic(staticCode, *&flags);
  Security::SecPointerBase::SecPointerBase(&v14, v7);
  v8 = v6 | 0x2000000;
  *(v14 + 52) = v8;
  v10 = Security::CodeSigning::SecRequirement::optional(requirement, v9);
  __p = v14;
  Security::CodeSigning::SecStaticCode::staticValidate(v14, v8, v10);
  if (*(v14 + 648))
  {
    v11 = 0;
  }

  else
  {
    v11 = -66996;
  }

  if (errors && (*(v14 + 648) & 1) == 0)
  {
    *errors = CFErrorCreate(0, *MEMORY[0x1E695E638], -66996, 0);
    v11 = -66996;
  }

  SecStaticCodeCheckValidityWithErrors::_DTFrameCODESIGN_EVAL_STATIC::~_DTFrameCODESIGN_EVAL_STATIC(&__p);
  Security::SecPointerBase::~SecPointerBase(&v14);
  return v11;
}

void sub_188929094(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  Security::SecPointerBase::~SecPointerBase(&a15);
  switch(a2)
  {
    case 7:
      v18 = __cxa_begin_catch(a1);
      Security::CodeSigning::CSError::cfError(v18, v15);
      goto LABEL_34;
    case 6:
      v19 = __cxa_begin_catch(a1);
      if (v19[36] == 8)
      {
        v20 = -67049;
      }

      else
      {
        v20 = (*(*v19 + 24))(v19);
      }

      if (v15)
      {
LABEL_32:
        v23 = CFErrorCreate(0, *MEMORY[0x1E695E638], v20, 0);
        goto LABEL_33;
      }

LABEL_34:
      __cxa_end_catch();
      JUMPOUT(0x188929068);
    case 5:
      v21 = __cxa_begin_catch(a1);
      v22 = (*(*v21 + 24))(v21);
      if (!v15)
      {
        goto LABEL_34;
      }

      v23 = CFErrorCreate(0, *MEMORY[0x1E695E638], v22, 0);
LABEL_33:
      *v15 = v23;
      goto LABEL_34;
  }

  if (a2 != 4)
  {
    if (a2 == 3)
    {
      v27 = __cxa_begin_catch(a1);
      v28 = (*(*v27 + 24))(v27);
      if (v15)
      {
        *v15 = CFErrorCreate(0, *MEMORY[0x1E695E638], v28, 0);
      }
    }

    else
    {
      __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        if (v15)
        {
          *v15 = CFErrorCreate(0, *MEMORY[0x1E695E638], -108, 0);
        }
      }

      else
      {
        Security::Syslog::notice("unknown exception in CSAPI", v29);
        if (v15)
        {
          *v15 = CFErrorCreate(0, *MEMORY[0x1E695E638], -67048, 0);
        }
      }
    }

    goto LABEL_34;
  }

  v24 = __cxa_begin_catch(a1);
  v25 = v24[36];
  if (v25 > 0x1A)
  {
    goto LABEL_30;
  }

  v20 = -67033;
  v26 = 1 << v25;
  if ((v26 & 0x800108) != 0)
  {
    goto LABEL_31;
  }

  if ((v26 & 0x4014000) != 0)
  {
    v20 = -67032;
  }

  else
  {
LABEL_30:
    v20 = (*(*v24 + 24))(v24);
  }

LABEL_31:
  if (!v15)
  {
    goto LABEL_34;
  }

  goto LABEL_32;
}

uint64_t SecStaticCodeValidateResourceWithErrors(Security::CodeSigning::SecStaticCode *a1, const __SecCode *a2, uint64_t a3)
{
  if ((a3 & 0x1FFC9DAE) != 0)
  {
    Security::MacOSError::throwMe(0xFFFEFA02);
  }

  v3 = a3;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v5 = Security::CodeSigning::SecStaticCode::requiredStatic(a1, a2);
  Security::SecPointerBase::SecPointerBase(&v10, v5);
  v6 = v10;
  *(v10 + 208) = v3;
  Security::cfString(__p, a2);
  Security::CodeSigning::SecStaticCode::staticValidateResource(v6, __p, v3, 0);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  Security::SecPointerBase::~SecPointerBase(&v10);
  return 0;
}

void sub_1889294AC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  Security::SecPointerBase::~SecPointerBase(&a15);
  switch(a2)
  {
    case 7:
      v18 = __cxa_begin_catch(a1);
      Security::CodeSigning::CSError::cfError(v18, v15);
      goto LABEL_34;
    case 6:
      v19 = __cxa_begin_catch(a1);
      if (v19[36] == 8)
      {
        v20 = -67049;
      }

      else
      {
        v20 = (*(*v19 + 24))(v19);
      }

      if (v15)
      {
LABEL_32:
        v23 = CFErrorCreate(0, *MEMORY[0x1E695E638], v20, 0);
        goto LABEL_33;
      }

LABEL_34:
      __cxa_end_catch();
      JUMPOUT(0x188929484);
    case 5:
      v21 = __cxa_begin_catch(a1);
      v22 = (*(*v21 + 24))(v21);
      if (!v15)
      {
        goto LABEL_34;
      }

      v23 = CFErrorCreate(0, *MEMORY[0x1E695E638], v22, 0);
LABEL_33:
      *v15 = v23;
      goto LABEL_34;
  }

  if (a2 != 4)
  {
    if (a2 == 3)
    {
      v27 = __cxa_begin_catch(a1);
      v28 = (*(*v27 + 24))(v27);
      if (v15)
      {
        *v15 = CFErrorCreate(0, *MEMORY[0x1E695E638], v28, 0);
      }
    }

    else
    {
      __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        if (v15)
        {
          *v15 = CFErrorCreate(0, *MEMORY[0x1E695E638], -108, 0);
        }
      }

      else
      {
        Security::Syslog::notice("unknown exception in CSAPI", v29);
        if (v15)
        {
          *v15 = CFErrorCreate(0, *MEMORY[0x1E695E638], -67048, 0);
        }
      }
    }

    goto LABEL_34;
  }

  v24 = __cxa_begin_catch(a1);
  v25 = v24[36];
  if (v25 > 0x1A)
  {
    goto LABEL_30;
  }

  v20 = -67033;
  v26 = 1 << v25;
  if ((v26 & 0x800108) != 0)
  {
    goto LABEL_31;
  }

  if ((v26 & 0x4014000) != 0)
  {
    v20 = -67032;
  }

  else
  {
LABEL_30:
    v20 = (*(*v24 + 24))(v24);
  }

LABEL_31:
  if (!v15)
  {
    goto LABEL_34;
  }

  goto LABEL_32;
}

OSStatus SecCodeCopyPath(SecStaticCodeRef staticCode, SecCSFlags flags, CFURLRef *path)
{
  if (flags)
  {
    Security::MacOSError::throwMe(0xFFFEFA02);
  }

  v7 = 0xAAAAAAAAAAAAAAAALL;
  v4 = Security::CodeSigning::SecStaticCode::requiredStatic(staticCode, *&flags);
  Security::SecPointerBase::SecPointerBase(&v7, v4);
  v5 = (*(**(v7 + 32) + 48))(*(v7 + 32));
  if (!path)
  {
    Security::MacOSError::throwMe(0xFFFEFA03);
  }

  *path = v5;
  Security::SecPointerBase::~SecPointerBase(&v7);
  return 0;
}

void sub_188929864(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  switch(a2)
  {
    case 6:
      v11 = __cxa_begin_catch(a1);
      if (v11[36] == 8)
      {
        break;
      }

LABEL_6:
      (*(*v11 + 24))(v11);
      break;
    case 5:
      goto LABEL_5;
    case 4:
      v11 = __cxa_begin_catch(a1);
      v13 = v11[36];
      if (v13 > 0x1A)
      {
        goto LABEL_6;
      }

      v14 = 1 << v13;
      if ((v14 & 0x800108) == 0 && (v14 & 0x4014000) == 0)
      {
        goto LABEL_6;
      }

      break;
    case 3:
LABEL_5:
      v12 = __cxa_begin_catch(a1);
      (*(*v12 + 24))(v12);
      break;
    default:
      __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        Security::Syslog::notice("unknown exception in CSAPI", v15);
      }

      break;
  }

  __cxa_end_catch();
  JUMPOUT(0x188929834);
}

OSStatus SecCodeCopyDesignatedRequirement(SecStaticCodeRef code, SecCSFlags flags, SecRequirementRef *requirement)
{
  if (flags)
  {
    Security::MacOSError::throwMe(0xFFFEFA02);
  }

  v4 = Security::CodeSigning::SecStaticCode::requiredStatic(code, *&flags);
  v5 = Security::CodeSigning::SecStaticCode::designatedRequirement(v4);
  v6 = Security::ModuleNexus<Security::CodeSigning::CFObjects>::operator()();
  v8 = Security::SecCFObject::allocate(0x18, *(v6 + 304), v7);
  Security::CodeSigning::SecRequirement::SecRequirement(v8, v5, 0);
  v9 = Security::SecCFObject::handle(v8, 1);
  if (!requirement)
  {
    Security::MacOSError::throwMe(0xFFFEFA03);
  }

  v10 = v9;
  result = 0;
  *requirement = v10;
  return result;
}

void sub_188929AD4(void *a1, int a2)
{
  Security::SecCFObject::operator delete(v2);
  switch(a2)
  {
    case 6:
      v5 = __cxa_begin_catch(a1);
      if (v5[36] == 8)
      {
        break;
      }

LABEL_6:
      (*(*v5 + 24))(v5);
      break;
    case 5:
      goto LABEL_5;
    case 4:
      v5 = __cxa_begin_catch(a1);
      v7 = v5[36];
      if (v7 > 0x1A)
      {
        goto LABEL_6;
      }

      v8 = 1 << v7;
      if ((v8 & 0x800108) == 0 && (v8 & 0x4014000) == 0)
      {
        goto LABEL_6;
      }

      break;
    case 3:
LABEL_5:
      v6 = __cxa_begin_catch(a1);
      (*(*v6 + 24))(v6);
      break;
    default:
      __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        Security::Syslog::notice("unknown exception in CSAPI", v9);
      }

      break;
  }

  __cxa_end_catch();
  JUMPOUT(0x188929AA4);
}

uint64_t SecCodeCopyInternalRequirement(Security::CodeSigning::SecStaticCode *a1, const __SecCode *a2, int a3, void *a4)
{
  if (a3)
  {
    Security::MacOSError::throwMe(0xFFFEFA02);
  }

  v5 = a2;
  v6 = Security::CodeSigning::SecStaticCode::requiredStatic(a1, a2);
  v7 = Security::CodeSigning::SecStaticCode::internalRequirement(v6, v5);
  if (!v7)
  {
    v11 = 0;
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_6:
    Security::MacOSError::throwMe(0xFFFEFA03);
  }

  v8 = Security::ModuleNexus<Security::CodeSigning::CFObjects>::operator()();
  v10 = Security::SecCFObject::allocate(0x18, *(v8 + 304), v9);
  Security::CodeSigning::SecRequirement::SecRequirement(v10, v7, 0);
  v11 = Security::SecCFObject::handle(v10, 1);
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_4:
  result = 0;
  *a4 = v11;
  return result;
}

void sub_188929D58(void *a1, int a2)
{
  Security::SecCFObject::operator delete(v2);
  switch(a2)
  {
    case 6:
      v5 = __cxa_begin_catch(a1);
      if (v5[36] == 8)
      {
        break;
      }

LABEL_6:
      (*(*v5 + 24))(v5);
      break;
    case 5:
      goto LABEL_5;
    case 4:
      v5 = __cxa_begin_catch(a1);
      v7 = v5[36];
      if (v7 > 0x1A)
      {
        goto LABEL_6;
      }

      v8 = 1 << v7;
      if ((v8 & 0x800108) == 0 && (v8 & 0x4014000) == 0)
      {
        goto LABEL_6;
      }

      break;
    case 3:
LABEL_5:
      v6 = __cxa_begin_catch(a1);
      (*(*v6 + 24))(v6);
      break;
    default:
      __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        Security::Syslog::notice("unknown exception in CSAPI", v9);
      }

      break;
  }

  __cxa_end_catch();
  JUMPOUT(0x188929D20);
}

uint64_t SecCodeSetDetachedSignature(Security::CodeSigning::SecStaticCode *a1, const __SecCode *a2, int a3)
{
  if (a3)
  {
    Security::MacOSError::throwMe(0xFFFEFA02);
  }

  v6 = 0xAAAAAAAAAAAAAAAALL;
  v4 = Security::CodeSigning::SecStaticCode::requiredStatic(a1, a2);
  Security::SecPointerBase::SecPointerBase(&v6, v4);
  Security::CodeSigning::SecStaticCode::detachedSignature(v6, a2);
  Security::CodeSigning::SecStaticCode::resetValidity(v6);
  Security::SecPointerBase::~SecPointerBase(&v6);
  return 0;
}

void sub_188929FA8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  switch(a2)
  {
    case 6:
      v11 = __cxa_begin_catch(a1);
      if (v11[36] == 8)
      {
        break;
      }

LABEL_6:
      (*(*v11 + 24))(v11);
      break;
    case 5:
      goto LABEL_5;
    case 4:
      v11 = __cxa_begin_catch(a1);
      v13 = v11[36];
      if (v13 > 0x1A)
      {
        goto LABEL_6;
      }

      v14 = 1 << v13;
      if ((v14 & 0x800108) == 0 && (v14 & 0x4014000) == 0)
      {
        goto LABEL_6;
      }

      break;
    case 3:
LABEL_5:
      v12 = __cxa_begin_catch(a1);
      (*(*v12 + 24))(v12);
      break;
    default:
      __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        Security::Syslog::notice("unknown exception in CSAPI", v15);
      }

      break;
  }

  __cxa_end_catch();
  JUMPOUT(0x188929F88);
}

OSStatus SecCodeMapMemory(SecStaticCodeRef code, SecCSFlags flags)
{
  v13 = *MEMORY[0x1E69E9840];
  if (flags)
  {
    Security::MacOSError::throwMe(0xFFFEFA02);
  }

  v10 = 0xAAAAAAAAAAAAAAAALL;
  v2 = Security::CodeSigning::SecStaticCode::requiredStatic(code, *&flags);
  Security::SecPointerBase::SecPointerBase(&v10, v2);
  v3 = Security::CodeSigning::SecStaticCode::codeDirectory(v10, 0);
  if (!v3)
  {
    Security::MacOSError::throwMe(0xFFFEFA0ALL);
  }

  v4 = v10;
  if ((*(**(v10 + 4) + 16))(*(v10 + 4)) == *(v4 + 4))
  {
    v8 = (*(**(v10 + 4) + 80))(*(v10 + 4));
    if (v8)
    {
      Security::Universal::architecture(v8);
    }

    Security::MacOSError::throwMe(0xFFFEFA2BLL);
  }

  *&v12[32] = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v12 = v5;
  *&v12[16] = v5;
  v11 = v5;
  *&v11 = (*(**(v10 + 4) + 88))(*(v10 + 4));
  *(&v11 + 1) = v3;
  *v12 = bswap32(*(v3 + 1));
  memset(&v12[8], 0, 32);
  v6 = (*(**(v10 + 4) + 144))(*(v10 + 4));
  if (fcntl(*v6, 59, &v11) == -1)
  {
    v7 = __error();
    Security::UnixError::throwMe(*v7);
  }

  Security::SecPointerBase::~SecPointerBase(&v10);
  return 0;
}

void sub_18892A4A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  (*(*v9 + 8))(v9);
  Security::SecPointerBase::~SecPointerBase(va);
  if (a2 == 6)
  {
    v12 = __cxa_begin_catch(exception_object);
    if (v12[36] == 8)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (a2 != 5)
  {
    if (a2 == 4)
    {
      v12 = __cxa_begin_catch(exception_object);
      v14 = v12[36];
      if (v14 <= 0x1A)
      {
        v15 = 1 << v14;
        if ((v15 & 0x800108) != 0 || (v15 & 0x4014000) != 0)
        {
          goto LABEL_17;
        }
      }

LABEL_16:
      (*(*v12 + 24))(v12);
LABEL_17:
      __cxa_end_catch();
LABEL_19:
      JUMPOUT(0x18892A418);
    }

    if (a2 != 3)
    {
      __cxa_begin_catch(exception_object);
      if (a2 != 2)
      {
        Security::Syslog::notice("unknown exception in CSAPI", v16);
      }

      goto LABEL_17;
    }
  }

  v13 = __cxa_begin_catch(exception_object);
  (*(*v13 + 24))(v13);
  __cxa_end_catch();
  goto LABEL_19;
}

uint64_t SecStaticCodeSetCallback(Security::CodeSigning::SecStaticCode *a1, const __SecCode *a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    Security::MacOSError::throwMe(0xFFFEFA02);
  }

  v6 = Security::CodeSigning::SecStaticCode::requiredStatic(a1, a2);
  v7 = v6;
  if (a3)
  {
    *a3 = v6[74];
  }

  result = 0;
  v7[74] = a4;
  return result;
}

void sub_18892A778(void *a1, int a2)
{
  switch(a2)
  {
    case 6:
      v3 = __cxa_begin_catch(a1);
      if (v3[36] == 8)
      {
        break;
      }

LABEL_6:
      (*(*v3 + 24))(v3);
      break;
    case 5:
      goto LABEL_5;
    case 4:
      v3 = __cxa_begin_catch(a1);
      v5 = v3[36];
      if (v5 > 0x1A)
      {
        goto LABEL_6;
      }

      v6 = 1 << v5;
      if ((v6 & 0x800108) == 0 && (v6 & 0x4014000) == 0)
      {
        goto LABEL_6;
      }

      break;
    case 3:
LABEL_5:
      v4 = __cxa_begin_catch(a1);
      (*(*v4 + 24))(v4);
      break;
    default:
      __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        Security::Syslog::notice("unknown exception in CSAPI", v7);
      }

      break;
  }

  __cxa_end_catch();
  JUMPOUT(0x18892A75CLL);
}

uint64_t SecStaticCodeSetValidationConditions(Security::CodeSigning::SecStaticCode *a1, const __SecCode *a2)
{
  v3 = Security::CodeSigning::SecStaticCode::requiredStatic(a1, a2);
  if (a2)
  {
    v4 = v3;
    v9 = 0xAAAAAAAAAAAAAAAALL;
    v10 = 0xAAAAAAAAAAAAAAAALL;
    Security::CFCopyRef<__CFDictionary const*>::CFCopyRef(&v9, a2);
    LODWORD(v10) = -67024;
    v5 = Security::CFDictionary::get<__CFArray const*>(&v9, "omissions");
    Security::CFRef<__CFArray const*>::operator=(v4 + 21, v5);
    v6 = Security::CFDictionary::get<__CFArray const*>(&v9, "errors");
    v7 = v6;
    if (v6)
    {
      v11.length = CFArrayGetCount(v6);
      v11.location = 0;
      CFArrayApplyFunction(v7, v11, Security::CodeSigning::addError, v4 + 18);
    }

    Security::CFRef<__CFDictionary const*>::~CFRef(&v9);
  }

  return 0;
}

void sub_18892AA00(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  Security::CFRef<__CFDictionary const*>::~CFRef(&a9);
  switch(a2)
  {
    case 6:
      v11 = __cxa_begin_catch(a1);
      if (v11[36] == 8)
      {
        break;
      }

      goto LABEL_6;
    case 5:
      goto LABEL_5;
    case 4:
      v11 = __cxa_begin_catch(a1);
      v13 = v11[36];
      if (v13 > 0x1A || (v14 = 1 << v13, (v14 & 0x800108) == 0) && (v14 & 0x4014000) == 0)
      {
LABEL_6:
        (*(*v11 + 24))(v11);
      }

      break;
    case 3:
LABEL_5:
      v12 = __cxa_begin_catch(a1);
      (*(*v12 + 24))(v12);
      break;
    default:
      __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        Security::Syslog::notice("unknown exception in CSAPI", v15);
      }

      break;
  }

  __cxa_end_catch();
  JUMPOUT(0x18892A9ECLL);
}

uint64_t SecStaticCodeCancelValidation(Security::CodeSigning::SecStaticCode *a1, const __SecCode *a2)
{
  v2 = Security::CodeSigning::SecStaticCode::requiredStatic(a1, a2);
  v3 = v2;
  if ((*(v2 + 211) & 0x10) == 0)
  {
    Security::MacOSError::throwMe(0xFFFEFA02);
  }

  dispatch_assert_queue_V2(v2[39]);
  result = 0;
  *(v3 + 220) = 1;
  return result;
}

unint64_t SecCodeCopyComponent(Security::CodeSigning::SecStaticCode *a1, const __SecCode *a2, const __CFData *a3)
{
  v5 = Security::CodeSigning::SecStaticCode::requiredStatic(a1, a2);
  v6 = Security::CodeSigning::SecStaticCode::codeDirectory(v5, 1);
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v7 = (*(*v5 + 80))(v5, a2, 4294900235);
  Security::CFCopyRef<__CFData const*>::CFCopyRef(&v15, v7);
  v8 = v15;
  if (v15)
  {
    if (a3)
    {
      v9 = *(v6 + 4);
      v10 = v6[36];
      if (CFDataGetLength(a3) != v10 || (BytePtr = CFDataGetBytePtr(a3), memcmp(&v6[bswap32(v9) + v10 * a2], BytePtr, v6[36])))
      {
        Length = CFDataGetLength(a3);
        Security::Syslog::notice("copyComponent hash mismatch slot %d length %d", v13, a2, Length);
        v8 = 0;
        goto LABEL_8;
      }

      v8 = v15;
    }

    v15 = 0;
  }

LABEL_8:
  Security::CFRef<__CFData const*>::~CFRef(&v15);
  return v8;
}

void sub_18892AF0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  Security::CFRef<__CFData const*>::~CFRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18892AEF0);
}

uint64_t SecCodeSpecialSlotIsPresent(Security::CodeSigning::SecStaticCode *a1, const __SecCode *a2)
{
  v2 = a2;
  v3 = Security::CodeSigning::SecStaticCode::requiredStatic(a1, a2);
  v4 = Security::CodeSigning::SecStaticCode::codeDirectory(v3, 1);
  IsPresent = Security::CodeSigning::CodeDirectory::slotIsPresent(v4, -v2);
  v6 = MEMORY[0x1E695E4D0];
  if (!IsPresent)
  {
    v6 = MEMORY[0x1E695E4C0];
  }

  return *v6;
}

void sub_18892AF88(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18892AF78);
}

uint64_t SecStaticCodeEnableOnlineNotarizationCheck(Security::CodeSigning::SecStaticCode *a1, const __SecCode *a2)
{
  v2 = a2;
  v3 = Security::CodeSigning::SecStaticCode::requiredStatic(a1, a2);
  result = 0;
  v5 = v3[152] & 0xFFFFFFFE;
  if (v2)
  {
    ++v5;
  }

  v3[152] = v5;
  return result;
}

OSStatus SecCodeValidateFileResource(SecStaticCodeRef code, CFStringRef relativePath, CFDataRef fileData, SecCSFlags flags)
{
  v25 = *MEMORY[0x1E69E9840];
  if (fileData)
  {
    v5 = Security::CodeSigning::SecStaticCode::requiredStatic(code, relativePath);
    Security::cfString(&__p, relativePath);
    v18 = 0xAAAAAAAAAAAAAAAALL;
    v19 = 0xAAAAAAAAAAAAAAAALL;
    if (Security::CodeSigning::SecStaticCode::loadResources(v5, &v19, &v18, &v17))
    {
      v6 = v18;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v16, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v16 = __p;
      }

      Security::CFTempString::CFTempString<std::string>(key, &v16);
      Value = CFDictionaryGetValue(v6, key[0]);
      Security::CFRef<__CFString const*>::~CFRef(key);
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      v8 = 4294900242;
      if (Value)
      {
        *&v9 = 0xAAAAAAAAAAAAAAAALL;
        *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v15[0] = v9;
        v15[1] = v9;
        Security::CodeSigning::ResourceSeal::ResourceSeal(v15, Value);
        v10 = Security::CodeSigning::SecStaticCode::codeDirectory(v5, 1);
        if (Security::CodeSigning::ResourceSeal::hash(v15, v10[37]))
        {
          v11 = Security::CodeSigning::SecStaticCode::codeDirectory(v5, 1);
          v24 = 0xAAAAAAAAAAAAAAAALL;
          *&v12 = 0xAAAAAAAAAAAAAAAALL;
          *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v22 = v12;
          v23 = v12;
          *key = v12;
          v21 = v12;
          Security::CodeSigning::CodeDirectory::hashFor(v11[37]);
        }

        Security::CFRef<__CFDictionary const*>::~CFRef(v15);
      }
    }

    else
    {
      v8 = 4294900240;
    }

    Security::MacOSError::throwMe(v8);
  }

  Security::MacOSError::throwMe(0xFFFEFA03);
}

void sub_18892B3E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, const void *a29)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  Security::CFRef<__CFString const*>::~CFRef(&a29);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a2 == 6)
  {
    v31 = __cxa_begin_catch(exception_object);
    if (v31[36] == 8)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (a2 != 5)
  {
    if (a2 == 4)
    {
      v31 = __cxa_begin_catch(exception_object);
      v33 = v31[36];
      if (v33 <= 0x1A)
      {
        v34 = 1 << v33;
        if ((v34 & 0x800108) != 0 || (v34 & 0x4014000) != 0)
        {
          goto LABEL_21;
        }
      }

LABEL_20:
      (*(*v31 + 24))(v31);
LABEL_21:
      __cxa_end_catch();
LABEL_23:
      JUMPOUT(0x18892B378);
    }

    if (a2 != 3)
    {
      __cxa_begin_catch(exception_object);
      if (a2 != 2)
      {
        Security::Syslog::notice("unknown exception in CSAPI", v35);
      }

      goto LABEL_21;
    }
  }

  v32 = __cxa_begin_catch(exception_object);
  (*(*v32 + 24))(v32);
  __cxa_end_catch();
  goto LABEL_23;
}

void sub_18892B660(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18892B658);
}

OSStatus SecRequirementCreateWithData(CFDataRef data, SecCSFlags flags, SecRequirementRef *requirement)
{
  if (flags)
  {
    v13 = 4294900226;
    goto LABEL_12;
  }

  v5 = Security::ModuleNexus<Security::CodeSigning::CFObjects>::operator()();
  v7 = Security::SecCFObject::allocate(0x18, *(v5 + 304), v6);
  BytePtr = CFDataGetBytePtr(data);
  Length = CFDataGetLength(data);
  *(v7 + 8) = 1;
  *v7 = &unk_1EFA8BBE0;
  *(v7 + 16) = 0;
  if (Length < 0xC)
  {
LABEL_10:
    Security::MacOSError::throwMe(0xFFFEFA14);
  }

  if (*BytePtr != 843514 || (v10 = bswap32(BytePtr[1]), v10 <= 0xB))
  {
    *__error() = 22;
    goto LABEL_10;
  }

  if (Length != v10)
  {
    goto LABEL_10;
  }

  *(v7 + 16) = Security::Blob<Security::CodeSigning::Requirement,4208856064u>::clone(BytePtr);
  v11 = Security::SecCFObject::handle(v7, 1);
  if (!requirement)
  {
    v13 = 4294900227;
LABEL_12:
    Security::MacOSError::throwMe(v13);
  }

  *requirement = v11;
  return 0;
}

void sub_18892B78C(void *a1, int a2)
{
  Security::SecCFObject::operator delete(v2);
  switch(a2)
  {
    case 6:
      v5 = __cxa_begin_catch(a1);
      if (v5[36] == 8)
      {
        break;
      }

LABEL_6:
      (*(*v5 + 24))(v5);
      break;
    case 5:
      goto LABEL_5;
    case 4:
      v5 = __cxa_begin_catch(a1);
      v7 = v5[36];
      if (v7 > 0x1A)
      {
        goto LABEL_6;
      }

      v8 = 1 << v7;
      if ((v8 & 0x800108) == 0 && (v8 & 0x4014000) == 0)
      {
        goto LABEL_6;
      }

      break;
    case 3:
LABEL_5:
      v6 = __cxa_begin_catch(a1);
      (*(*v6 + 24))(v6);
      break;
    default:
      __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        Security::Syslog::notice("unknown exception in CSAPI", v9);
      }

      break;
  }

  __cxa_end_catch();
  JUMPOUT(0x18892B744);
}

OSStatus SecRequirementCreateWithStringAndErrors(CFStringRef text, SecCSFlags flags, CFErrorRef *errors, SecRequirementRef *requirement)
{
  if (flags)
  {
    Security::MacOSError::throwMe(0xFFFEFA02);
  }

  v6 = Security::ModuleNexus<Security::CodeSigning::CFObjects>::operator()();
  v8 = Security::SecCFObject::allocate(0x18, *(v6 + 304), v7);
  Security::cfString(&__p, text);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v16 = __p;
  }

  memset(&v20, 0, sizeof(v20));
  v9 = *(*(Security::ModuleNexus<Security::CodeSigning::PluginHost>::operator()() + 72) + 24);
  v10 = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    v19 = v16;
  }

  v11 = v9(&v19, &v20);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (!v11)
  {
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v17, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
    }

    else
    {
      v17 = v20;
    }

    Security::CFTempString::CFTempString<std::string>(&v18, &v17);
    Security::CodeSigning::CSError::throwMe(0xFFFEFA14, @"SecRequirementSyntax", v18, v14);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }
  }

  else if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

  operator delete(v16.__r_.__value_.__l.__data_);
LABEL_13:
  Security::CodeSigning::SecRequirement::SecRequirement(v8, v11, 1);
  v12 = Security::SecCFObject::handle(v8, 1);
  if (!requirement)
  {
    Security::MacOSError::throwMe(0xFFFEFA03);
  }

  *requirement = v12;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_18892BB20(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v37 - 49) < 0)
  {
    operator delete(*(v37 - 72));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  Security::SecCFObject::operator delete(v36);
  switch(a2)
  {
    case 7:
      v40 = __cxa_begin_catch(a1);
      Security::CodeSigning::CSError::cfError(v40, v35);
      goto LABEL_38;
    case 6:
      v41 = __cxa_begin_catch(a1);
      if (v41[36] == 8)
      {
        v42 = -67049;
      }

      else
      {
        v42 = (*(*v41 + 24))(v41);
      }

      if (v35)
      {
LABEL_36:
        v45 = CFErrorCreate(0, *MEMORY[0x1E695E638], v42, 0);
        goto LABEL_37;
      }

LABEL_38:
      __cxa_end_catch();
      JUMPOUT(0x18892BA78);
    case 5:
      v43 = __cxa_begin_catch(a1);
      v44 = (*(*v43 + 24))(v43);
      if (!v35)
      {
        goto LABEL_38;
      }

      v45 = CFErrorCreate(0, *MEMORY[0x1E695E638], v44, 0);
LABEL_37:
      *v35 = v45;
      goto LABEL_38;
  }

  if (a2 != 4)
  {
    if (a2 == 3)
    {
      v49 = __cxa_begin_catch(a1);
      v50 = (*(*v49 + 24))(v49);
      if (v35)
      {
        *v35 = CFErrorCreate(0, *MEMORY[0x1E695E638], v50, 0);
      }
    }

    else
    {
      __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        if (v35)
        {
          *v35 = CFErrorCreate(0, *MEMORY[0x1E695E638], -108, 0);
        }
      }

      else
      {
        Security::Syslog::notice("unknown exception in CSAPI", v51);
        if (v35)
        {
          *v35 = CFErrorCreate(0, *MEMORY[0x1E695E638], -67048, 0);
        }
      }
    }

    goto LABEL_38;
  }

  v46 = __cxa_begin_catch(a1);
  v47 = v46[36];
  if (v47 > 0x1A)
  {
    goto LABEL_34;
  }

  v42 = -67033;
  v48 = 1 << v47;
  if ((v48 & 0x800108) != 0)
  {
    goto LABEL_35;
  }

  if ((v48 & 0x4014000) != 0)
  {
    v42 = -67032;
  }

  else
  {
LABEL_34:
    v42 = (*(*v46 + 24))(v46);
  }

LABEL_35:
  if (!v35)
  {
    goto LABEL_38;
  }

  goto LABEL_36;
}

OSStatus SecRequirementCopyData(SecRequirementRef requirement, SecCSFlags flags, CFDataRef *data)
{
  v5 = Security::CodeSigning::SecRequirement::required(requirement, *&flags);
  if (flags)
  {
    v7 = 4294900226;
    goto LABEL_6;
  }

  if (!data)
  {
    v7 = 4294900227;
LABEL_6:
    Security::MacOSError::throwMe(v7);
  }

  *data = CFDataCreate(0, v5[2], bswap32(*(v5[2] + 1)));
  return 0;
}

void *Security::CodeSigning::SecRequirement::required(Security::CodeSigning::SecRequirement *this, __SecRequirement *a2)
{
  {
    Security::MacOSError::throwMe(0xFFFEFA01);
  }

  return result;
}

OSStatus SecRequirementCopyString(SecRequirementRef requirement, SecCSFlags flags, CFStringRef *text)
{
  v5 = Security::CodeSigning::SecRequirement::required(requirement, *&flags);
  if (flags)
  {
    v11 = 4294900226;
    goto LABEL_15;
  }

  if (!text)
  {
    v11 = 4294900227;
LABEL_15:
    Security::MacOSError::throwMe(v11);
  }

  Security::CodeSigning::Dumper::dump(&cStr, v5[2]);
  if (SHIBYTE(cStr.__r_.__value_.__r.__words[2]) < 0)
  {
    p_cStr = cStr.__r_.__value_.__r.__words[0];
    if (!cStr.__r_.__value_.__r.__words[0])
    {
      v9 = 0;
      *text = 0;
      goto LABEL_11;
    }
  }

  else
  {
    p_cStr = &cStr;
  }

  v7 = CFStringCreateWithCString(0, p_cStr, 0x8000100u);
  if (!v7)
  {
    v7 = CFStringCreateWithCString(0, p_cStr, 0x600u);
    if (!v7)
    {
      Security::CFError::throwMe(0);
    }
  }

  v8 = SHIBYTE(cStr.__r_.__value_.__r.__words[2]);
  *text = v7;
  if (v8 < 0)
  {
    v9 = cStr.__r_.__value_.__r.__words[0];
LABEL_11:
    operator delete(v9);
  }

  return 0;
}

void sub_18892C20C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  switch(a2)
  {
    case 6:
      v16 = __cxa_begin_catch(a1);
      if (v16[36] == 8)
      {
        break;
      }

LABEL_6:
      (*(*v16 + 24))(v16);
      break;
    case 5:
      goto LABEL_5;
    case 4:
      v16 = __cxa_begin_catch(a1);
      v18 = v16[36];
      if (v18 > 0x1A)
      {
        goto LABEL_6;
      }

      v19 = 1 << v18;
      if ((v19 & 0x800108) == 0 && (v19 & 0x4014000) == 0)
      {
        goto LABEL_6;
      }

      break;
    case 3:
LABEL_5:
      v17 = __cxa_begin_catch(a1);
      (*(*v17 + 24))(v17);
      break;
    default:
      __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        Security::Syslog::notice("unknown exception in CSAPI", v20);
      }

      break;
  }

  __cxa_end_catch();
  JUMPOUT(0x18892C1D8);
}

_DWORD *Security::SuperBlobCore<Security::SuperBlob<4208856065u,unsigned int>,4208856065u,unsigned int>::Maker::make(void *a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = a1[2];
  v3 = *a1;
  v4 = a1 + 1;
  if (*a1 == a1 + 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = v3[1];
      v7 = v3;
      if (v6)
      {
        do
        {
          v8 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v8 = v7[2];
          v9 = *v8 == v7;
          v7 = v8;
        }

        while (!v9);
      }

      v5 += bswap32(*(v3[5] + 4));
      v3 = v8;
    }

    while (v8 != v4);
  }

  v10 = v5 + 8 * v2;
  v11 = v10 + 12;
  v12 = malloc_type_malloc((v10 + 12), 0x10000403E1C8BA9uLL);
  if (!v12)
  {
    Security::UnixError::throwMe(0xC);
  }

  v13 = v12;
  v14 = *(a1 + 4);
  *v12 = 17620730;
  v12[1] = bswap32(v11);
  v12[2] = bswap32(v14);
  v15 = *a1;
  if (*a1 != v4)
  {
    v16 = 0;
    v17 = 8 * v2 + 12;
    do
    {
      v18 = &v13[2 * v16 + 3];
      *v18 = bswap32(*(v15 + 8));
      v18[1] = bswap32(v17);
      memcpy(v13 + v17, v15[5], bswap32(*(v15[5] + 4)));
      v19 = v15[1];
      v20 = v15;
      if (v19)
      {
        do
        {
          v21 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v21 = v20[2];
          v9 = *v21 == v20;
          v20 = v21;
        }

        while (!v9);
      }

      v17 += bswap32(*(v15[5] + 4));
      ++v16;
      v15 = v21;
    }

    while (v21 != v4);
  }

  v46 = 0xAAAAAAAAAAAAAAAALL;
  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v45[7] = v22;
  v45[8] = v22;
  v45[5] = v22;
  v45[6] = v22;
  v45[3] = v22;
  v45[4] = v22;
  v45[1] = v22;
  v45[2] = v22;
  v45[0] = v22;
  v43 = v22;
  v44 = v22;
  *__src = v22;
  *__p = v22;
  v39 = v22;
  v40 = v22;
  v38 = v22;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v38);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "Maker ", 6);
  v23 = MEMORY[0x18CFD9640](&v38, a1);
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " assembles ", 11);
  v25 = MEMORY[0x18CFD9670](v24, a1[2]);
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " blob(s) into ", 14);
  v27 = MEMORY[0x18CFD9640](v26, v13);
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, " (size=", 7);
  v29 = MEMORY[0x18CFD9660](v28, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ")", 1);
  v30 = secLogObjForScope("superblob");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    if ((BYTE8(v44) & 0x10) != 0)
    {
      v33 = v44;
      if (v44 < __src[1])
      {
        *&v44 = __src[1];
        v33 = __src[1];
      }

      v34 = __src[0];
    }

    else
    {
      if ((BYTE8(v44) & 8) == 0)
      {
        v32 = 0;
        v37 = 0;
LABEL_37:
        *(&__dst + v32) = 0;
        p_dst = &__dst;
        if (v37 < 0)
        {
          p_dst = __dst;
        }

        *buf = 136315138;
        v48 = p_dst;
        _os_log_debug_impl(&dword_1887D2000, v30, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
        if (v37 < 0)
        {
          operator delete(__dst);
        }

        goto LABEL_21;
      }

      v34 = *(&v39 + 1);
      v33 = *(&v40 + 1);
    }

    v32 = v33 - v34;
    if ((v33 - v34) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v32 >= 0x17)
    {
      operator new();
    }

    v37 = v33 - v34;
    if (v32)
    {
      memmove(&__dst, v34, v32);
    }

    goto LABEL_37;
  }

LABEL_21:
  *&v38 = *MEMORY[0x1E69E54E8];
  *(&v38 + *(v38 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v38 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v38 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v39);
  std::ostream::~ostream();
  MEMORY[0x18CFD96D0](v45);
  return v13;
}

_DWORD *Security::Blob<Security::CodeSigning::Requirement,4208856064u>::clone(Security::BlobCore *a1)
{
  result = Security::BlobCore::clone(a1);
  v2 = bswap32(result[1]);
  if (*result != 843514 || v2 <= 0xB)
  {
    v4 = __error();
    result = 0;
    *v4 = 22;
  }

  return result;
}

void Security::SuperBlobCore<Security::SuperBlob<4208856065u,unsigned int>,4208856065u,unsigned int>::Maker::add(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v11 = *MEMORY[0x1E69E9840];
  *v10 = a2;
  *&v10[8] = a3;
  v6 = std::__tree<std::__value_type<unsigned int,Security::BlobCore *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::BlobCore *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::BlobCore *>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,Security::BlobCore *>>(a1, a2, v10);
  if ((v7 & 1) == 0)
  {
    v8 = v6;
    v9 = secLogObjForScope("superblob");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *v10 = 134218240;
      *&v10[4] = a1;
      *&v10[12] = 1024;
      *&v10[14] = v4;
      _os_log_debug_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEBUG, "Maker %p replaces type=%d", v10, 0x12u);
    }

    free(v8[5]);
    v8[5] = a3;
  }
}

uint64_t *std::__tree<std::__value_type<unsigned int,Security::BlobCore *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::BlobCore *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::BlobCore *>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,Security::BlobCore *>>(uint64_t **a1, unsigned int a2, uint64_t a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 8);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

void *Security::BlobCore::clone(Security::BlobCore *this)
{
  v2 = malloc_type_malloc(bswap32(*(this + 1)), 0x100004000313F17uLL);
  if (!v2)
  {
    Security::UnixError::throwMe(0xC);
  }

  v3 = bswap32(*(this + 1));

  return memcpy(v2, this, v3);
}

const void **Security::CFRef<__SecRequirement *>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t SecRequirementCreateWithLightweightCodeRequirementData(const __CFData *a1, int a2, void *a3)
{
  if (a2)
  {
    Security::MacOSError::throwMe(0xFFFEFA02);
  }

  result = 4294900227;
  if (a1 && a3)
  {
    v16 = 1024;
    v6 = malloc_type_malloc(0x400uLL, 0x10000403E1C8BA9uLL);
    v15 = v6;
    *v6 = 843514;
    *(v6 + 2) = 0x2000000;
    v17 = 12;
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);
    v9 = makeLightweightCodeRequirement(a1);
    if (!v9)
    {
      Security::MacOSError::throwMe(0xFFFFFC73);
    }

    Security::CodeSigning::Requirement::Maker::putData(&v15, BytePtr, Length);
    v10 = Security::ModuleNexus<Security::CodeSigning::CFObjects>::operator()();
    v12 = Security::SecCFObject::allocate(0x18, *(v10 + 304), v11);
    v13 = v15;
    *(v15 + 1) = bswap32(v17);
    Security::CodeSigning::SecRequirement::SecRequirement(v12, v13, 1);
    v14 = Security::SecCFObject::handle(v12, 1);
    result = 0;
    *a3 = v14;
  }

  return result;
}

void sub_18892CCA0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  Security::SecCFObject::operator delete(v10);
  free(0);
  switch(a2)
  {
    case 7:
      v14 = __cxa_begin_catch(a1);
      Security::CodeSigning::CSError::cfError(v14, v9);
      __cxa_end_catch();
      goto LABEL_33;
    case 6:
      v15 = __cxa_begin_catch(a1);
      if (v15[36] == 8)
      {
        v16 = v11 - 16;
      }

      else
      {
        v16 = (*(*v15 + 24))(v15);
      }

      if (!v9)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    case 5:
      v17 = __cxa_begin_catch(a1);
      v18 = (*(*v17 + 24))(v17);
      if (v9)
      {
        v19 = CFErrorCreate(0, *MEMORY[0x1E695E638], v18, 0);
LABEL_31:
        *v9 = v19;
        goto LABEL_32;
      }

      goto LABEL_32;
  }

  if (a2 != 4)
  {
    if (a2 == 3)
    {
      v23 = __cxa_begin_catch(a1);
      v24 = (*(*v23 + 24))(v23);
      if (v9)
      {
        *v9 = CFErrorCreate(0, *MEMORY[0x1E695E638], v24, 0);
      }
    }

    else
    {
      __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        if (v9)
        {
          *v9 = CFErrorCreate(0, *MEMORY[0x1E695E638], -108, 0);
        }
      }

      else
      {
        Security::Syslog::notice("unknown exception in CSAPI", v25);
        if (v9)
        {
          *v9 = CFErrorCreate(0, *MEMORY[0x1E695E638], -67048, 0);
        }
      }
    }

    goto LABEL_32;
  }

  v20 = __cxa_begin_catch(a1);
  v21 = v20[36];
  if (v21 > 0x1A)
  {
    goto LABEL_28;
  }

  v22 = 1 << v21;
  v16 = -67033;
  if ((v22 & 0x800108) != 0)
  {
    goto LABEL_29;
  }

  if ((v22 & 0x4014000) != 0)
  {
    v16 = v11 + 1;
  }

  else
  {
LABEL_28:
    v16 = (*(*v20 + 24))(v20);
  }

LABEL_29:
  if (v9)
  {
LABEL_30:
    v19 = CFErrorCreate(0, *MEMORY[0x1E695E638], v16, 0);
    goto LABEL_31;
  }

LABEL_32:
  __cxa_end_catch();
LABEL_33:
  JUMPOUT(0x18892CC6CLL);
}

uint64_t mapFile(const char *a1, const void **a2, off_t *a3, char **a4)
{
  v7.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v7.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v13.st_blksize = v7;
  *v13.st_qspare = v7;
  v13.st_birthtimespec = v7;
  *&v13.st_size = v7;
  v13.st_mtimespec = v7;
  v13.st_ctimespec = v7;
  *&v13.st_uid = v7;
  v13.st_atimespec = v7;
  *&v13.st_dev = v7;
  v8 = open(a1, 0, 0);
  if (v8 == -1)
  {
    __error();
    log_error(a4, "cannot open file %s, errno=%d\n");
  }

  else
  {
    v9 = v8;
    if (fstat(v8, &v13))
    {
      __error();
      log_error(a4, "fstat(%s) failed, errno=%d\n");
    }

    else
    {
      v11 = mmap(0, v13.st_size, 1, 8194, v9, 0);
      if (v11 != -1)
      {
        v12 = v11;
        close(v9);
        *a2 = v12;
        *a3 = v13.st_size;
        return 1;
      }

      log_error(a4, "cannot mmap file %s\n");
    }
  }

  return 0;
}

BOOL vm_alloc(vm_address_t *a1, vm_size_t size, char **a3)
{
  address = 0;
  v5 = vm_allocate(*MEMORY[0x1E69E9A60], &address, size, 1);
  if (v5)
  {
    log_error(a3, "failed to allocate memory\n");
  }

  else
  {
    *a1 = address;
  }

  return v5 == 0;
}

uint64_t assure_signature_space(_DWORD *a1, unsigned int a2, unsigned int a3, unsigned int *a4, char **a5)
{
  v5 = *a1;
  v6 = *a1 == -822415874 || v5 == -805638658;
  v7 = v6;
  v8 = a1[3];
  v9 = bswap32(v8);
  if (v6)
  {
    v8 = v9;
  }

  if (v8 > 0xB || ((1 << v8) & 0x9C4) == 0)
  {
    log_error(a5, "mach-o filetype (%d) does not support code signing\n");
    return 0;
  }

  v11 = v5 == -805638658 || v5 == -17958193;
  v12 = 7;
  if (v11)
  {
    v12 = 8;
  }

  v13 = a1[5];
  v14 = bswap32(a1[4]);
  if (v7)
  {
    v15 = v14;
  }

  else
  {
    v15 = a1[4];
  }

  LODWORD(v16) = bswap32(v13);
  if (v7)
  {
    v16 = v16;
  }

  else
  {
    v16 = v13;
  }

  if (!v15)
  {
    goto LABEL_68;
  }

  v86 = a5;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = &a1[v12];
  v81 = v16;
  v22 = (&a1[v12] + v16);
  v23 = &a1[v12];
  do
  {
    v24 = *v23;
    v25 = bswap32(*v23);
    if (v7)
    {
      v24 = v25;
    }

    v26 = bswap32(v23[1]);
    if (v7)
    {
      v27 = v26;
    }

    else
    {
      v27 = v23[1];
    }

    switch(v24)
    {
      case 1u:
        if (!strcmp(v23 + 8, "__LINKEDIT"))
        {
          v18 = v23;
        }

        break;
      case 0x19u:
        if (!strcmp(v23 + 8, "__LINKEDIT"))
        {
          v19 = v23;
        }

        break;
      case 0x1Du:
        v17 = v23;
        break;
    }

    v23 = (v23 + v27);
    if (v23 > v22)
    {
      log_error(v86, "malformed mach-o file, load command #%d is outside size of load commands\n");
      return 0;
    }

    ++v20;
  }

  while (v15 != v20);
  if (!v18)
  {
    v34 = a4;
    a5 = v86;
    v35 = a2;
    v36 = a1;
    v37 = a3;
    v38 = v81;
    if (v19)
    {
      v39 = *(v19 + 5);
      v40 = *(v19 + 6);
      v41 = bswap64(v39);
      if (v7)
      {
        v39 = v41;
      }

      v42 = bswap64(v40);
      if (v7)
      {
        v40 = v42;
      }

      v32 = __CFADD__(v39, v40);
      v43 = v39 + v40;
      if (!v32 && v43 <= a3)
      {
        goto LABEL_60;
      }

LABEL_69:
      log_error(a5, "malformed mach-o file, __LINKEDIT segment extends past end of file\n");
      return 0;
    }

LABEL_68:
    log_error(a5, "malformed mach-o file, no __LINKEDIT segment\n");
    return 0;
  }

  v28 = v18[8];
  v29 = v18[9];
  v30 = bswap32(v28);
  if (v7)
  {
    v28 = v30;
  }

  v31 = bswap32(v29);
  if (v7)
  {
    v29 = v31;
  }

  v32 = __CFADD__(v28, v29);
  v33 = v28 + v29;
  v34 = a4;
  a5 = v86;
  v35 = a2;
  v36 = a1;
  v37 = a3;
  v38 = v81;
  if (v32 || v33 > a3)
  {
    goto LABEL_69;
  }

LABEL_60:
  if (v17)
  {
    v44 = v17[2];
    v45 = v17[3];
    v46 = bswap32(v44);
    if (v7)
    {
      v44 = v46;
    }

    v47 = bswap32(v45);
    if (v7)
    {
      v45 = v47;
    }

    v32 = __CFADD__(v44, v45);
    v48 = v44 + v45;
    if (v32)
    {
      log_error(a5, "malformed mach-o file, LC_CODE_SIGNATURE offset + size overflows\n");
    }

    else if (v48 >= v37 - 7)
    {
      v65 = bswap32(v35);
      if (!v7)
      {
        v65 = v35;
      }

      v17[3] = v65;
      v66 = *v34;
      v32 = __CFADD__(v44, v35);
      v64 = v44 + v35;
      *v34 = v64;
      if (!v32)
      {
        if (v66 > v64)
        {
          bzero(v36 + v64, v66 - v64);
          v64 = *v34;
        }

        goto LABEL_112;
      }

      log_error(a5, "mew sigSpace causes overflow\n");
    }

    else
    {
      log_error(a5, "malformed mach-o file, LC_CODE_SIGNATURE does not point to end of file\n");
    }

    return 0;
  }

  v50 = 1;
  v51 = 24;
  v52 = v15;
  v53 = 1;
  while (2)
  {
    v54 = bswap32(*v21);
    if (!v7)
    {
      v54 = *v21;
    }

    v55 = bswap32(v21[1]);
    if (!v7)
    {
      v55 = v21[1];
    }

    if (v54 != 25)
    {
      if (v54 == 1 && !v21[8] && v21[9] && v21[12])
      {
        goto LABEL_129;
      }

      goto LABEL_85;
    }

    if (*(v21 + 5) || !*(v21 + 6) || !v21[16])
    {
LABEL_85:
      v21 = (v21 + v55);
      v53 = v50++ < v15;
      if (!--v52)
      {
        goto LABEL_86;
      }

      continue;
    }

    break;
  }

  v51 = 30;
LABEL_129:
  v79 = v21[v51];
  v80 = bswap32(v79);
  if (v7)
  {
    v79 = v80;
  }

  if (v53 && v38 + 16 > v79)
  {
    log_error(a5, "not enough room in load commands to add LC_CODE_SIGNATURE\n");
    return 0;
  }

LABEL_86:
  v56 = v38 + 16;
  v57 = bswap32(v38 + 16);
  if (v7)
  {
    v56 = v57;
  }

  v58 = bswap32(v15 + 1);
  if (!v7)
  {
    v58 = v15 + 1;
  }

  v36[4] = v58;
  v36[5] = v56;
  if (v7)
  {
    v59 = 486539264;
  }

  else
  {
    v59 = 29;
  }

  if (v7)
  {
    v60 = 0x10000000;
  }

  else
  {
    v60 = 16;
  }

  *v22 = v59;
  v22[1] = v60;
  v61 = (v37 + 15) & 0xFFFFFFF0;
  v62 = bswap32(v61);
  if (!v7)
  {
    v62 = (v37 + 15) & 0xFFFFFFF0;
  }

  v63 = bswap32(v35);
  if (!v7)
  {
    v63 = v35;
  }

  v22[2] = v62;
  v22[3] = v63;
  v32 = __CFADD__(v61, v35);
  v64 = v61 + v35;
  *v34 = v64;
  if (v32)
  {
    log_error(a5, "sigSpace + appendOffset overflows\n");
    return 0;
  }

LABEL_112:
  if (v18)
  {
    v67 = v18[8];
    v68 = bswap32(v67);
    if (v7)
    {
      v67 = v68;
    }

    v69 = v64 - v67;
    v70 = (v69 + 0x3FFF) & 0xFFFFC000;
    v71 = bswap32(v69);
    if (v7)
    {
      v69 = v71;
    }

    v18[9] = v69;
    v72 = bswap32(v70);
    if (!v7)
    {
      v72 = v70;
    }

    v18[7] = v72;
  }

  else
  {
    v73 = *(v19 + 5);
    v74 = bswap64(v73);
    if (v7)
    {
      v73 = v74;
    }

    v75 = v64 - v73;
    v76 = (v75 + 0x3FFF) & 0xFFFFFFFFFFFFC000;
    v77 = bswap64(v75);
    if (v7)
    {
      v75 = v77;
    }

    *(v19 + 6) = v75;
    v78 = bswap64(v76);
    if (!v7)
    {
      v78 = v76;
    }

    *(v19 + 4) = v78;
  }

  return 1;
}

uint64_t writeFile(const char *a1, char *a2, unsigned int a3, char **a4)
{
  v7 = open(a1, 1537, 511);
  if (v7 == -1)
  {
    __error();
    log_error(a4, "can't open output file for writing: %s, errno=%d\n");
  }

  else
  {
    v8 = v7;
    v9 = 0;
    if (a3)
    {
      v10 = a3;
      while (1)
      {
        v11 = v10 >= 0x7FFFFFFF ? 0x7FFFFFFFLL : v10;
        v12 = write(v8, a2, v11);
        if (v12 == -1)
        {
          break;
        }

        if (v12)
        {
          a2 += v12;
          v9 += v12;
          v10 -= v12;
          if (v10)
          {
            continue;
          }
        }

        goto LABEL_10;
      }
    }

    else
    {
LABEL_10:
      if (v9 == a3)
      {
        close(v8);
        return 1;
      }
    }

    __error();
    log_error(a4, "can't write to output file (len: %d): %s, errno=%d\n");
  }

  return 0;
}

BOOL vm_dealloc(void **a1, uint64_t a2, char **a3)
{
  v5 = MEMORY[0x18CFDBE70](*MEMORY[0x1E69E9A60], *a1, a2);
  if (v5)
  {
    log_error(a3, "failed to deallocate memory\n");
  }

  else
  {
    *a1 = 0;
  }

  return v5 == 0;
}

uint64_t remove_signature_space(int *a1, unsigned int a2, unsigned int *a3, char **a4)
{
  v4 = *a1;
  v5 = *a1 == -822415874 || v4 == -805638658;
  v6 = v5;
  v7 = a1[3];
  v8 = bswap32(v7);
  if (v5)
  {
    v7 = v8;
  }

  if (v7 > 0xB || ((1 << v7) & 0x9C4) == 0)
  {
    log_error(a4, "mach-o filetype (%d) does not support code signing");
    return 0;
  }

  v11 = v4 == -805638658 || v4 == -17958193;
  v12 = 7;
  if (v11)
  {
    v12 = 8;
  }

  v13 = a1[5];
  v14 = bswap32(a1[4]);
  if (v6)
  {
    v15 = v14;
  }

  else
  {
    v15 = a1[4];
  }

  LODWORD(v16) = bswap32(v13);
  if (v6)
  {
    v16 = v16;
  }

  else
  {
    v16 = v13;
  }

  if (!v15)
  {
    goto LABEL_74;
  }

  v65 = a4;
  v17 = 0;
  v66 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = &a1[v12];
  v62 = v16;
  v22 = (&a1[v12] + v16);
  do
  {
    v23 = *v21;
    v24 = bswap32(*v21);
    if (v6)
    {
      v23 = v24;
    }

    v25 = bswap32(v21[1]);
    if (v6)
    {
      v26 = v25;
    }

    else
    {
      v26 = v21[1];
    }

    if (v23 > 24)
    {
      if (v23 == 25)
      {
        if (!strcmp(v21 + 8, "__LINKEDIT"))
        {
          v18 = v21;
        }
      }

      else if (v23 == 29)
      {
        v17 = v21;
      }
    }

    else if (v23 == 1)
    {
      v27 = strcmp(v21 + 8, "__LINKEDIT");
      v28 = v66;
      if (!v27)
      {
        v28 = v21;
      }

      v66 = v28;
    }

    else if (v23 == 2)
    {
      v20 = v21;
    }

    v21 = (v21 + v26);
    if (v21 > v22)
    {
      log_error(v65, "malformed mach-o file, load command #%d is outside size of load commands\n");
      return 0;
    }

    ++v19;
  }

  while (v15 != v19);
  if (!v66)
  {
    v35 = a3;
    a4 = v65;
    v36 = a2;
    if (v18)
    {
      v37 = *(v18 + 5);
      v38 = *(v18 + 6);
      v39 = bswap64(v37);
      if (v6)
      {
        v37 = v39;
      }

      v40 = bswap64(v38);
      if (v6)
      {
        v38 = v40;
      }

      v33 = __CFADD__(v37, v38);
      v41 = v37 + v38;
      if (v33 || v41 > a2)
      {
        goto LABEL_75;
      }

      goto LABEL_64;
    }

LABEL_74:
    log_error(a4, "malformed mach-o file, no __LINKEDIT segment\n");
    return 0;
  }

  v29 = v66[8];
  v30 = v66[9];
  v31 = bswap32(v29);
  if (v6)
  {
    v29 = v31;
  }

  v32 = bswap32(v30);
  if (v6)
  {
    v30 = v32;
  }

  v33 = __CFADD__(v29, v30);
  v34 = v29 + v30;
  v35 = a3;
  a4 = v65;
  v36 = a2;
  if (v33 || v34 > a2)
  {
LABEL_75:
    log_error(a4, "malformed mach-o file, __LINKEDIT segment extends past end of file\n");
    return 0;
  }

LABEL_64:
  if (!v17)
  {
    return 1;
  }

  v42 = v17[3];
  v43 = bswap32(v17[2]);
  if (v6)
  {
    v44 = v43;
  }

  else
  {
    v44 = v17[2];
  }

  v45 = bswap32(v42);
  if (v6)
  {
    v46 = v45;
  }

  else
  {
    v46 = v42;
  }

  v47 = v44 + v46;
  if (__CFADD__(v44, v46))
  {
    log_error(a4, "malformed mach-o file, LC_CODE_SIGNATURE wraps around\n");
    return 0;
  }

  if (v47 < v36 - 7)
  {
    log_error(a4, "malformed mach-o file, LC_CODE_SIGNATURE does not point to end of file\n");
    return 0;
  }

  if (v47 > *v35)
  {
    log_error(a4, "malformed mach-o file, LC_CODE_SIGNATURE points past the end of the mach-o\n");
    return 0;
  }

  bzero(a1 + v44, v46);
  *v35 = v44;
  v49 = v15 - 1;
  v50 = bswap32(v15 - 1);
  if (v6)
  {
    v49 = v50;
  }

  *v17 = 0;
  *(v17 + 1) = 0;
  v51 = bswap32(v62 - 16);
  if (!v6)
  {
    v51 = v62 - 16;
  }

  a1[4] = v49;
  a1[5] = v51;
  if (v17 + 4 < v22)
  {
    memmove(v17, v17 + 4, v22 - (v17 + 4));
    *(v22 - 2) = 0;
    *(v22 - 1) = 0;
  }

  v52 = *v35;
  if (v20)
  {
    v53 = v20[5] + v20[4];
    if (v52 > v53 && v52 <= v53 + 12)
    {
      *v35 = v53;
      v52 = v53;
    }
  }

  if (v66)
  {
    v54 = v66[8];
    v55 = bswap32(v54);
    if (v6)
    {
      v54 = v55;
    }

    v56 = v52 - v54;
    v57 = bswap32(v56);
    if (v6)
    {
      v56 = v57;
    }

    v66[9] = v56;
  }

  else
  {
    v58 = *(v18 + 5);
    v59 = bswap64(v58);
    if (v6)
    {
      v58 = v59;
    }

    v60 = v52 - v58;
    v61 = bswap64(v60);
    if (v6)
    {
      v60 = v61;
    }

    *(v18 + 6) = v60;
  }

  return 1;
}

void Security::CodeSigning::DiskRep::strictValidate(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  if ((a4 & 0x100) != 0)
  {
    v6 = *(a3 + 8);
    v4 = a3 + 8;
    v5 = v6;
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = v4;
    do
    {
      if (*(v5 + 28) >= -67002)
      {
        v7 = v5;
      }

      v5 = *(v5 + 8 * (*(v5 + 28) < -67002));
    }

    while (v5);
    if (v7 == v4 || *(v7 + 28) > -67002)
    {
LABEL_10:
      Security::MacOSError::throwMe(0xFFFEFA46);
    }
  }
}

uint64_t Security::CodeSigning::DiskRep::pageSize()
{
  return 0;
}

{
  return 0;
}

CFArrayRef Security::CodeSigning::DiskRep::modifiedFiles(Security::CodeSigning::DiskRep *this)
{
  (*(*this + 40))(__p);
  if (v10 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  CFURL = Security::makeCFURL(v2, 0, 0, v1);
  v6 = CFURL;
  v11 = CFURL;
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  CFArray = Security::makeCFArray(CFURL, v4, v5, v6);
  Security::CFRef<__CFURL const*>::~CFRef(&v11);
  return CFArray;
}

void Security::CodeSigning::DiskRep::canonicalIdentifier(std::string *a1, uint64_t a2)
{
  memset(&__str, 170, sizeof(__str));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a2, *(a2 + 8));
  }

  else
  {
    __str = *a2;
  }

  v3 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  v4 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  size = __str.__r_.__value_.__l.__size_;
  v5 = __str.__r_.__value_.__r.__words[0];
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8 = __str.__r_.__value_.__l.__size_;
  }

  if (v8)
  {
    v9 = p_str + v8;
    while (v8)
    {
      v10 = *--v9;
      --v8;
      if (v10 == 47)
      {
        v11 = v9 - p_str;
        if (v11 != -1)
        {
          std::string::basic_string(&v22, &__str, v11 + 1, 0xFFFFFFFFFFFFFFFFLL, &v24);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          __str = v22;
          v3 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
          size = v22.__r_.__value_.__l.__size_;
          v5 = v22.__r_.__value_.__r.__words[0];
          v4 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
        }

        break;
      }
    }
  }

  if ((v4 & 0x80u) != 0)
  {
    v3 = size;
  }

  else
  {
    v5 = &__str;
  }

  if (v3)
  {
    v12 = v5 + v3;
    while (v3)
    {
      v13 = *--v12;
      --v3;
      if (v13 == 46)
      {
        v14 = v12 - v5;
        if (v12 - v5 == -1 || memchr("0123456789", v12[1], 0xBuLL))
        {
          break;
        }

        std::string::basic_string(&v22, &__str, 0, v14, &v24);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        __str = v22;
        v4 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
        if ((*(&v22.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_33;
      }
    }
  }

  if ((v4 & 0x80) != 0)
  {
LABEL_33:
    v16 = __str.__r_.__value_.__r.__words[0];
    if (!memchr("0123456789.", *__str.__r_.__value_.__l.__data_, 0xCuLL))
    {
      v15 = __str.__r_.__value_.__l.__size_;
      goto LABEL_36;
    }

LABEL_34:
    *a1 = __str;
    return;
  }

LABEL_28:
  if (memchr("0123456789.", __str.__r_.__value_.__s.__data_[0], 0xCuLL))
  {
    goto LABEL_34;
  }

  v15 = v4;
  v16 = &__str;
  do
  {
LABEL_36:
    v17 = v15--;
  }

  while (memchr("0123456789.", v16->__r_.__value_.__s.__data_[v15], 0xCuLL));
  v18 = v16->__r_.__value_.__s.__data_[v17] == 46;
  if (v16->__r_.__value_.__s.__data_[v17] == 46)
  {
    v19 = v17 + 1;
  }

  else
  {
    v19 = v17;
  }

  if ((v4 & 0x80u) == 0)
  {
    v20 = v4;
  }

  else
  {
    v20 = __str.__r_.__value_.__l.__size_;
  }

  if (v19 < v20)
  {
    v21 = v16->__r_.__value_.__r.__words + v18 + 1;
    while (memchr("0123456789", *(v21 + v15), 0xBuLL))
    {
      ++v21;
      if (++v19 >= v20)
      {
        v19 = v20;
        break;
      }
    }
  }

  std::string::basic_string(a1, &__str, 0, v19, &v22);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_18892DF80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_18892E034(_Unwind_Exception *a1)
{
  Security::CodeSigning::SingleDiskRep::Writer::~Writer(v2);
  MEMORY[0x18CFD9760](v2, v1);
  _Unwind_Resume(a1);
}

void Security::CodeSigning::SingleDiskRep::Writer::~Writer(Security::CodeSigning::SingleDiskRep::Writer *this)
{
  *this = &unk_1EFA8C070;
  Security::UnixPlusPlus::FileDesc::closeAndLog((this + 96));
  Security::RefPointer<Security::CodeSigning::SingleDiskRep>::~RefPointer(this + 3);
}

void Security::CodeSigning::FileDiskRep::Writer::flush(Security::CodeSigning::FileDiskRep::Writer *this)
{
  v2 = Security::CodeSigning::SingleDiskRep::Writer::fd(this);
  v3 = Security::UnixPlusPlus::FileDesc::listAttr(*v2, 0, 0);
  if (v3)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  v4 = Security::CodeSigning::SingleDiskRep::Writer::fd(this);
  Security::UnixPlusPlus::FileDesc::listAttr(*v4, 0, 0);
}

void sub_18892E218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void Security::CodeSigning::FileDiskRep::Writer::remove(Security::CodeSigning::FileDiskRep::Writer *this)
{
  v2 = 0;
  do
  {
    v3 = Security::CodeSigning::CodeDirectory::canonicalSlotName(v2);
    if (v3)
    {
      v4 = v3;
      v5 = Security::CodeSigning::SingleDiskRep::Writer::fd(this);
      Security::CodeSigning::FileDiskRep::attrName(&__p, v4);
      v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      Security::UnixPlusPlus::FileDesc::removeAttr(*v5, v6);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v2 = (v2 + 1);
  }

  while (v2 != 12);
  v7 = Security::CodeSigning::SingleDiskRep::Writer::fd(this);
  Security::CodeSigning::FileDiskRep::attrName(&__p, "CodeSignature");
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  Security::UnixPlusPlus::FileDesc::removeAttr(*v7, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_18892E330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Security::CodeSigning::FileDiskRep::attrName(std::string *this, const char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v6, "com.apple.cs.");
  v4 = strlen(a2);
  v5 = std::string::append(&v6, a2, v4);
  *this = *v5;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_18892E3CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Security::CodeSigning::FileDiskRep::Writer::component(uint64_t **this, Security::CodeSigning::CodeDirectory *a2, const __CFData *a3)
{
  memset(&__p, 170, sizeof(__p));
  v5 = Security::CodeSigning::CodeDirectory::canonicalSlotName(a2);
  Security::CodeSigning::FileDiskRep::attrName(&__p, v5);
  v6 = Security::CodeSigning::SingleDiskRep::Writer::fd(this);
  BytePtr = CFDataGetBytePtr(a3);
  Length = CFDataGetLength(a3);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (fsetxattr(*v6, p_p, BytePtr, Length, 0, 0) == -1)
  {
    v10 = __error();
    Security::UnixError::throwMe(*v10);
  }

  v12 = 0xAAAAAAAAAAAAAAAALL;
  if (!*std::__tree<std::string>::__find_equal<std::string>((this + 22), &v12, &__p))
  {
    operator new();
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void Security::CodeSigning::FileDiskRep::Writer::~Writer(char **this)
{
  *this = &unk_1EFA8B688;
  std::__tree<std::string>::destroy(this[23]);
  Security::RefPointer<Security::CodeSigning::FileDiskRep>::~RefPointer(this + 13);
  *this = &unk_1EFA8C070;
  Security::UnixPlusPlus::FileDesc::closeAndLog((this + 12));
  Security::RefPointer<Security::CodeSigning::SingleDiskRep>::~RefPointer(this + 3);

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8B688;
  std::__tree<std::string>::destroy(this[23]);
  Security::RefPointer<Security::CodeSigning::FileDiskRep>::~RefPointer(this + 13);
  *this = &unk_1EFA8C070;
  Security::UnixPlusPlus::FileDesc::closeAndLog((this + 12));
  Security::RefPointer<Security::CodeSigning::SingleDiskRep>::~RefPointer(this + 3);
}

void *Security::RefPointer<Security::CodeSigning::FileDiskRep>::~RefPointer(void *a1)
{
  v2 = pthread_mutex_lock((a1 + 1));
  if (v2)
  {
    Security::UnixError::throwMe(v2);
  }

  if (*a1 && atomic_fetch_add_explicit((*a1 + 8), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    if (*a1)
    {
      (*(**a1 + 8))(*a1);
    }

    *a1 = 0;
  }

  v3 = pthread_mutex_unlock((a1 + 1));
  if (v3)
  {
    Security::UnixError::throwMe(v3);
  }

  Security::Mutex::~Mutex((a1 + 1));
  return a1;
}

_DWORD *Security::CodeSigning::FileDiskRep::defaultRequirements(uint64_t a1, uint64_t a2, void (***a3)(void **__return_ptr, void, void **))
{
  v22 = *MEMORY[0x1E69E9840];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[14] = v4;
  v21[15] = v4;
  v21[12] = v4;
  v21[13] = v4;
  v21[10] = v4;
  v21[11] = v4;
  v21[8] = v4;
  v21[9] = v4;
  v21[6] = v4;
  v21[7] = v4;
  v21[4] = v4;
  v21[5] = v4;
  v21[2] = v4;
  v21[3] = v4;
  v21[0] = v4;
  v21[1] = v4;
  v5 = (*(*a1 + 144))(a1, a2);
  v6 = Security::UnixPlusPlus::FileDesc::read(*v5, v21, 0x100uLL, 0);
  if (v6 >= 4 && LOBYTE(v21[0]) == 35 && BYTE1(v21[0]) == 33 && BYTE2(v21[0]) == 47)
  {
    v7 = 255;
    if (v6 != 256)
    {
      v7 = v6;
    }

    *(v21 + v7) = 0;
    *(v21 + strcspn(v21 + 2, " \t\n\r\f") + 2) = 0;
    v8 = secLogObjForScope("filediskrep");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(__p[0]) = 136315138;
      *(__p + 4) = v21 + 2;
      _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "looks like a script for %s", __p, 0xCu);
    }

    if (BYTE3(v21[0]))
    {
      memset(v12, 170, sizeof(v12));
      std::string::basic_string[abi:ne200100]<0>(__p, v21 + 2);
      (**a3)(v12, a3, __p);
      if (SBYTE7(v17) < 0)
      {
        operator delete(__p[0]);
      }

      v20 = 0xAAAAAAAAAAAAAAAALL;
      *&v9 = 0xAAAAAAAAAAAAAAAALL;
      *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v19 = v9;
      v17 = v9;
      v18 = v9;
      v15 = v9;
      *__p = v9;
      if (SHIBYTE(v12[2]) >= 0)
      {
        v10 = v12;
      }

      else
      {
        v10 = v12[0];
      }

      v14 = 0xAAAAAAAAAAAAAAAALL;
      v13[0] = 0xFFFFFFFF00000000;
      v13[1] = 0;
      v13[2] = 0;
      *&v15 = 0;
      BYTE8(v15) = 0;
      LOBYTE(v14) = 1;
      Security::CodeSigning::DiskRep::bestGuess(v10, v13);
    }
  }

  return 0;
}

void sub_18892EB04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t buf, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a2)
  {
    Security::SecCFObject::operator delete(v29);
    Security::RefPointer<Security::CodeSigning::DiskRep>::~RefPointer(&buf);
    if (a16 < 0)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    v31 = secLogObjForScope("filediskrep");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&dword_1887D2000, v31, OS_LOG_TYPE_DEBUG, "exception getting host requirement (ignored)", &buf, 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x18892EA90);
  }

  _Unwind_Resume(exception_object);
}

CFDataRef Security::CodeSigning::FileDiskRep::component(Security::CodeSigning::FileDiskRep *this, Security::CodeSigning::CodeDirectory *a2)
{
  v3 = Security::CodeSigning::CodeDirectory::canonicalSlotName(a2);
  if (!v3)
  {
    return 0;
  }

  memset(&__p, 170, sizeof(__p));
  Security::CodeSigning::FileDiskRep::attrName(&__p, v3);
  v4 = (*(*this + 144))(this);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v6 = fgetxattr(*v4, p_p, 0, 0, 0, 0);
  v7 = v6;
  if (v6 == -1)
  {
    if (*__error() != 93)
    {
      v12 = __error();
      Security::UnixError::throwMe(*v12);
    }
  }

  else if ((v6 & 0x8000000000000000) == 0)
  {
    value[0] = 0xAAAAAAAAAAAAAAAALL;
    value[1] = 0xAAAAAAAAAAAAAAAALL;
    Security::CFMallocData::CFMallocData(value, v6);
    v8 = (*(*this + 144))(this);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &__p;
    }

    else
    {
      v9 = __p.__r_.__value_.__r.__words[0];
    }

    if (fgetxattr(*v8, v9, value[0], v7, 0, 0) == -1 && *__error() != 93)
    {
      v13 = __error();
      Security::UnixError::throwMe(*v13);
    }

    v10 = Security::CFMallocData::operator __CFData const*(value);
    if (value[0])
    {
      free(value[0]);
    }

    goto LABEL_17;
  }

  v10 = 0;
LABEL_17:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_18892EDA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a2 == 1)
  {
    v18 = *(__cxa_begin_catch(exception_object) + 36);
    if (v18 != 45 && v18 != 1)
    {
      __cxa_rethrow();
    }

    __cxa_end_catch();
    JUMPOUT(0x18892ED58);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_18892EDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  __cxa_end_catch();
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void Security::CodeSigning::FileDiskRep::~FileDiskRep(void **this)
{
  *this = &unk_1EFA8C1B0;
  Security::UnixPlusPlus::FileDesc::closeAndLog((this + 5));
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  Security::CodeSigning::DiskRep::~DiskRep(this);

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8C1B0;
  Security::UnixPlusPlus::FileDesc::closeAndLog((this + 5));
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  Security::CodeSigning::DiskRep::~DiskRep(this);
}

Security::CodeSigning::FileDiskRep *Security::CodeSigning::FileDiskRep::FileDiskRep(Security::CodeSigning::FileDiskRep *this, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  Security::CodeSigning::SingleDiskRep::SingleDiskRep(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_1EFA8B568;
  return this;
}

const __CFData *Security::CodeSigning::createHashAgilityV1Data(Security::CodeSigning *this, const __CFArray *a2)
{
  propertyList = 0xAAAAAAAAAAAAAAAALL;
  Security::CFTemp<__CFDictionary const*>::CFTemp(&propertyList, "{cdhashes=%O}", this);
  Data = CFPropertyListCreateData(0, propertyList, kCFPropertyListXMLFormat_v1_0, 0, 0);
  v2 = Data;
  Security::CFRef<__CFData const*>::~CFRef(&Data);
  Security::CFRef<__CFDictionary const*>::~CFRef(&propertyList);

  return v2;
}

void sub_18892F034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  Security::CFRef<__CFDictionary const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

id Security::CodeSigning::createHashAgilityV2Dictionary(Security::CodeSigning *this, NSDictionary *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = this;
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = v2;
  v5 = [(Security::CodeSigning *)v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v5)
  {
    v6 = *v21;
    v19 = *MEMORY[0x1E69B1758];
    v7 = *MEMORY[0x1E69B1750];
    v8 = *MEMORY[0x1E69B1748];
    v9 = *MEMORY[0x1E69B1740];
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 intValue];
        if (v12 > 192)
        {
          v13 = v7;
          if (v12 != 193)
          {
            v13 = v19;
            if (v12 != 194)
            {
LABEL_15:
              v17 = secLogObjForScope("SecError");
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v25 = v11;
                _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, "Unexpected digest algorithm: %@", buf, 0xCu);
              }

              v16 = 0;
              goto LABEL_18;
            }
          }
        }

        else
        {
          v13 = v9;
          if (v12 != 4)
          {
            v13 = v8;
            if (v12 != 192)
            {
              goto LABEL_15;
            }
          }
        }

        v14 = v13;
        v15 = [(Security::CodeSigning *)v4 objectForKeyedSubscript:v11];
        [v3 setObject:v15 forKeyedSubscript:v14];
      }

      v5 = [(Security::CodeSigning *)v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v16 = v3;
LABEL_18:

  return v16;
}

uint64_t Security::CodeSigning::mapDigestAlgorithm(Security::CodeSigning *this, NSString *a2)
{
  v2 = this;
  if (([(Security::CodeSigning *)v2 isEqualToString:*MEMORY[0x1E69B1740]]& 1) != 0)
  {
    v3 = 1;
  }

  else if (([(Security::CodeSigning *)v2 isEqualToString:*MEMORY[0x1E69B1748]]& 1) != 0)
  {
    v3 = 2;
  }

  else if (([(Security::CodeSigning *)v2 isEqualToString:*MEMORY[0x1E69B1750]]& 1) != 0)
  {
    v3 = 4;
  }

  else if ([(Security::CodeSigning *)v2 isEqualToString:*MEMORY[0x1E69B1758]])
  {
    v3 = 5;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

const void **Security::CFRef<__SecCertificate *>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void Security::CodeSigning::BlobEditor::commit(uint64_t **this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = *MEMORY[0x1E69E9840];
  v9 = Security::SuperBlobCore<Security::CodeSigning::EmbeddedSignatureBlob,4208856256u,unsigned int>::Maker::make((this + 10), a2, a3, a4, a5, a6, a7, a8);
  Security::SuperBlobCore<Security::SuperBlob<4208856065u,unsigned int>,4208856065u,unsigned int>::Maker::add(this + 7, 0, v9);
  v10 = this[9];
  v11 = this[7];
  v12 = (this + 8);
  if (v11 == this + 8)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    do
    {
      v14 = v11[1];
      v15 = v11;
      if (v14)
      {
        do
        {
          v16 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v16 = v15[2];
          v17 = *v16 == v15;
          v15 = v16;
        }

        while (!v17);
      }

      v13 += bswap32(*(v11[5] + 1));
      v11 = v16;
    }

    while (v16 != v12);
  }

  v18 = v13 + 8 * v10;
  v19 = v18 + 12;
  v20 = malloc_type_malloc((v18 + 12), 0x10000403E1C8BA9uLL);
  if (!v20)
  {
    Security::UnixError::throwMe(0xC);
  }

  v21 = v20;
  v22 = *(this + 18);
  *v20 = -1056121094;
  *(v20 + 1) = bswap32(v19);
  *(v20 + 2) = bswap32(v22);
  v23 = this[7];
  if (v23 != v12)
  {
    v24 = 0;
    v25 = 8 * v10 + 12;
    do
    {
      v26 = (v21 + 8 * v24 + 12);
      *v26 = bswap32(*(v23 + 8));
      v26[1] = bswap32(v25);
      memcpy(v21 + v25, v23[5], bswap32(*(v23[5] + 4)));
      v27 = v23[1];
      v28 = v23;
      if (v27)
      {
        do
        {
          v29 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v29 = v28[2];
          v17 = *v29 == v28;
          v28 = v29;
        }

        while (!v17);
      }

      v25 += bswap32(*(v23[5] + 4));
      ++v24;
      v23 = v29;
    }

    while (v29 != v12);
  }

  v49 = 0xAAAAAAAAAAAAAAAALL;
  *&v30 = 0xAAAAAAAAAAAAAAAALL;
  *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v48[7] = v30;
  v48[8] = v30;
  v48[5] = v30;
  v48[6] = v30;
  v48[3] = v30;
  v48[4] = v30;
  v48[1] = v30;
  v48[2] = v30;
  v48[0] = v30;
  v46 = v30;
  v47 = v30;
  v44[2] = v30;
  *__p = v30;
  v44[0] = v30;
  v44[1] = v30;
  v43 = v30;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v43);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v43, "Maker ", 6);
  v31 = MEMORY[0x18CFD9640](&v43, this + 7);
  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " assembles ", 11);
  v33 = MEMORY[0x18CFD9670](v32, this[9]);
  v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " blob(s) into ", 14);
  v35 = MEMORY[0x18CFD9640](v34, v21);
  v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " (size=", 7);
  v37 = MEMORY[0x18CFD9660](v36, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ")", 1);
  v38 = secLogObjForScope("superblob");
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    std::ostringstream::str[abi:ne200100](__dst, &v43);
    v40 = v42 >= 0 ? __dst : __dst[0];
    *buf = 136315138;
    v51 = v40;
    _os_log_debug_impl(&dword_1887D2000, v38, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
    if (v42 < 0)
    {
      operator delete(__dst[0]);
    }
  }

  *&v43 = *MEMORY[0x1E69E54E8];
  *(&v44[-1] + *(v43 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v43 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v46) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v43 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v44);
  std::ostream::~ostream();
  MEMORY[0x18CFD96D0](v48);
  Security::CodeSigning::SecCodeSigner::returnDetachedSignature(this[6][1], v21, v39);

  free(v21);
}

void sub_18892F804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void *std::ostringstream::str[abi:ne200100](void *__dst, uint64_t a2)
{
  v2 = __dst;
  v3 = *(a2 + 104);
  if ((v3 & 0x10) != 0)
  {
    v5 = *(a2 + 96);
    v6 = *(a2 + 56);
    if (v5 < v6)
    {
      *(a2 + 96) = v6;
      v5 = v6;
    }

    v7 = (a2 + 48);
  }

  else
  {
    if ((v3 & 8) == 0)
    {
      v4 = 0;
      *(__dst + 23) = 0;
      goto LABEL_14;
    }

    v7 = (a2 + 24);
    v5 = *(a2 + 40);
  }

  v8 = *v7;
  v4 = v5 - *v7;
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = v4;
  if (v4)
  {
    __dst = memmove(__dst, v8, v4);
  }

LABEL_14:
  *(v2 + v4) = 0;
  return __dst;
}

void Security::CodeSigning::BlobEditor::~BlobEditor(Security::CodeSigning::BlobEditor *this)
{
  *this = &unk_1EFA8B7B0;
  v2 = this + 56;
  Security::SuperBlobCore<Security::CodeSigning::EmbeddedSignatureBlob,4208856256u,unsigned int>::Maker::~Maker(this + 80);
  Security::SuperBlobCore<Security::CodeSigning::EmbeddedSignatureBlob,4208856256u,unsigned int>::Maker::~Maker(v2);
  Security::CodeSigning::ArchEditor::~ArchEditor(this);

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8B7B0;
  v2 = this + 56;
  Security::SuperBlobCore<Security::CodeSigning::EmbeddedSignatureBlob,4208856256u,unsigned int>::Maker::~Maker(this + 80);
  Security::SuperBlobCore<Security::CodeSigning::EmbeddedSignatureBlob,4208856256u,unsigned int>::Maker::~Maker(v2);

  Security::CodeSigning::ArchEditor::~ArchEditor(this);
}

void Security::CodeSigning::ArchEditor::~ArchEditor(Security::CodeSigning::ArchEditor *this)
{
  *this = &unk_1EFA8B700;
  v2 = *(this + 3);
  v3 = this + 32;
  if (v2 != this + 32)
  {
    do
    {
      v4 = *(v2 + 5);
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      v5 = *(v2 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v2 + 2);
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*(this + 4));
}

uint64_t Security::CodeSigning::MachOEditor::commit(Security::CodeSigning::MachOEditor *this)
{
  v2 = (this + 120);
  v3 = *(this + 143);
  v4 = this + 120;
  if (v3 < 0)
  {
    v4 = v2->__pn_.__r_.__value_.__r.__words[0];
  }

  v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v20.st_blksize = v5;
  *v20.st_qspare = v5;
  v20.st_birthtimespec = v5;
  *&v20.st_size = v5;
  v20.st_mtimespec = v5;
  v20.st_ctimespec = v5;
  *&v20.st_uid = v5;
  v20.st_atimespec = v5;
  *&v20.st_dev = v5;
  if (stat(v4, &v20) == -1 || (v6 = copyfile_state_alloc()) == 0)
  {
    v13 = __error();
    Security::UnixError::throwMe(*v13);
  }

  v7 = v6;
  src = *(this + 50);
  if (copyfile_state_set(v6, 3u, &src) < 0)
  {
    v15 = __error();
    Security::UnixError::throwMe(*v15);
  }

  v18 = -1;
  if (!Security::CodeSigning::UidGuard::seteuid(&v18, 0))
  {
    Security::CodeSigning::UidGuard::seteuid(&v18, v20.st_uid);
  }

  v8 = v2;
  if (*(this + 143) < 0)
  {
    v8 = v2->__pn_.__r_.__value_.__r.__words[0];
  }

  if (copyfile(v8, 0, v7, 7u) < 0)
  {
    v16 = __error();
    Security::UnixError::throwMe(*v16);
  }

  __buf = -86;
  Security::UnixPlusPlus::FileDesc::read(*(this + 50), &__buf, 1uLL, 0);
  if (pwrite(*(this + 50), &__buf, 1uLL, 0) == -1)
  {
    goto LABEL_19;
  }

  v10 = (this + 144);
  if (*(this + 167) < 0)
  {
    v10 = v10->__pn_.__r_.__value_.__r.__words[0];
  }

  if (*(this + 143) < 0)
  {
    v2 = v2->__pn_.__r_.__value_.__r.__words[0];
  }

  rename(v10, v2, v9);
  if (v11 == -1)
  {
LABEL_19:
    v14 = __error();
    Security::UnixError::throwMe(*v14);
  }

  *(this + 208) = 0;
  Security::CodeSigning::UidGuard::~UidGuard(&v18);
  (*(**(this + 6) + 48))(*(this + 6));
  return copyfile_state_free(v7);
}

BOOL Security::CodeSigning::UidGuard::seteuid(Security::CodeSigning::UidGuard *this, uid_t a2)
{
  if (geteuid() == a2)
  {
    return 1;
  }

  if (*this == -1)
  {
    *this = geteuid();
  }

  return seteuid(a2) == 0;
}

void Security::CodeSigning::UidGuard::~UidGuard(uid_t *this)
{
  v1 = *this;
  if (v1 != -1 && seteuid(v1) == -1)
  {
    v2 = __error();
    Security::UnixError::throwMe(*v2);
  }
}

void Security::CodeSigning::MachOEditor::write(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 56);
  CodeSignature = Security::MachOBase::findCodeSignature(v6);
  if (!CodeSignature || ((cmd = CodeSignature[1].cmd, v9 = bswap32(cmd), !*(v6 + 33)) ? (v10 = cmd) : (v10 = v9), !v10))
  {
    v16 = secLogObjForScope("signer");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = 134217984;
      v18 = a1;
      _os_log_debug_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEBUG, "%p cannot find CODESIGNING data in Mach-O", &v17, 0xCu);
    }

    Security::MacOSError::throwMe(0xFFFEFA18);
  }

  v11 = *(a2 + 56);
  v12 = Security::MachOBase::findCodeSignature(v11);
  if (v12)
  {
    cmdsize = v12[1].cmdsize;
    v14 = bswap32(cmdsize);
    if (*(v11 + 33))
    {
      v15 = v14;
    }

    else
    {
      v15 = cmdsize;
    }
  }

  else
  {
    v15 = 0;
  }

  NXGetArchInfoFromCpuType(*(a2 + 48), *(a2 + 52) & 0xFFFFFF);
  if (v15 < bswap32(*(a3 + 4)))
  {
    Security::MacOSError::throwMe(0xFFFEFA24);
  }

  Security::UnixPlusPlus::FileDesc::seek(*(*(a2 + 56) + 36), *(*(a2 + 56) + 48) + v10);
  Security::UnixPlusPlus::FileDesc::writeAll(*(a2 + 56) + 36, a3, bswap32(*(a3 + 4)));

  free(a3);
}

void ___ZN8Security11CodeSigning11MachOEditor5resetERNS0_10ArchEditor4ArchE_block_invoke(uint64_t a1, void *a2)
{
  v2 = (a2 + 5);
  if (*(a2 + 10) != -1)
  {
    v5 = *(a1 + 32);
    if (*(v5 + 167) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v5 + 144), *(v5 + 152));
    }

    else
    {
      __p = *(v5 + 144);
    }

    v6 = *(*(a1 + 40) + 56);
    v7 = *(v6 + 48);
    CodeSignature = Security::MachOBase::findCodeSignature(v6);
    if (CodeSignature)
    {
      cmd = CodeSignature[1].cmd;
      v10 = bswap32(cmd);
      if (*(v6 + 33))
      {
        v11 = v10;
      }

      else
      {
        v11 = cmd;
      }
    }

    else
    {
      v11 = 0;
    }

    Security::UnixPlusPlus::FileDesc::close(v2);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    Security::UnixPlusPlus::FileDesc::open(v2, p_p, 0, 438);
    a2[6] = v7;
    a2[7] = v11;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_188930224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Security::CodeSigning::ArchEditor::Arch::eachDigest(uint64_t result, uint64_t a2)
{
  v2 = *(result + 64);
  v3 = (result + 72);
  if (v2 != (result + 72))
  {
    do
    {
      result = (*(a2 + 16))(a2, v2[5]);
      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  return result;
}

void Security::CodeSigning::MachOEditor::allocate(Security::CodeSigning::MachOEditor *this)
{
  v85 = *MEMORY[0x1E69E9840];
  v79 = 0;
  *(this + 208) = 1;
  v2 = *(this + 3);
  if (v2 != (this + 32))
  {
    v3 = 0;
    do
    {
      v4 = *(*(v2 + 5) + 120);
      v5 = v4 == 0;
      if (v4 && (v3 & 1) != 0)
      {
        v68 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1887D2000, v68, OS_LOG_TYPE_DEFAULT, "codesign allocate error: one architecture signaled removal while another signaled signing", buf, 2u);
        }

        Security::MacOSError::throwMe(0xFFFEFA18);
      }

      v6 = *(v2 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v2 + 2);
          v27 = *v7 == v2;
          v2 = v7;
        }

        while (!v27);
      }

      v3 |= v5;
      v2 = v7;
    }

    while (v7 != (this + 32));
    if (v3)
    {
      v8 = this + 120;
      if (*(this + 143) < 0)
      {
        v8 = *v8;
      }

      v9 = this + 144;
      if (*(this + 167) < 0)
      {
        v9 = *v9;
      }

      __src = v9;
      v83 = 0;
      *buf = 0;
      __dst = 0;
      if ((mapFile(v8, buf, &v83, &v79) & 1) == 0)
      {
        goto LABEL_116;
      }

      v11 = v83;
      v10 = *buf;
      if (HIDWORD(v83))
      {
        log_error(&v79, "input file is too big: %lld\n", v83);
        v11 = 0;
        goto LABEL_115;
      }

      v12 = 0;
      v13 = 0;
      v14 = **buf;
      if (**buf > -17958195)
      {
        v15 = 0;
        if ((v14 + 17958194) >= 2)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (v14 == -1095041334)
        {
          v45 = *(*buf + 4);
          v46 = bswap32(v45);
          v15 = (v83 + (v46 << 14));
          if (vm_alloc(&__dst, v15, &v79))
          {
            v12 = __dst;
            *__dst = *v10;
            if (!v45)
            {
              v13 = 0;
LABEL_57:
              v36 = writeFile(__src, v12, v13, &v79);
              goto LABEL_66;
            }

            v47 = v12 + 0x4000;
            v48 = v10 + 5;
            v49 = v12 + 24;
            while (1)
            {
              v50 = *(v48 - 3);
              *v49 = v48[1];
              *(v49 - 1) = v50;
              v51 = bswap32(*v48);
              memcpy(v47, v10 + bswap32(*(v48 - 1)), v51);
              v80 = v51;
              if (!remove_signature_space(v47, v51, &v80, &v79))
              {
                goto LABEL_100;
              }

              v52 = v47 - v12;
              if (v47 < v12)
              {
                log_error(&v79, "new architecture offset underflows");
                goto LABEL_100;
              }

              if (HIDWORD(v52))
              {
                break;
              }

              v53 = v80;
              v54 = bswap32(v80);
              v55 = (v80 + 0x3FFF) & 0xFFFFC000;
              *(v49 - 2) = bswap32(v52);
              *(v49 - 1) = v54;
              *v49 = 234881024;
              v49 += 5;
              v47 += v55;
              v48 += 5;
              if (!--v46)
              {
                v13 = v53 + v52;
                goto LABEL_57;
              }
            }

            log_error(&v79, "new architecture offset is too large");
LABEL_100:
            v36 = 0;
LABEL_66:
            v44 = vm_dealloc(&__dst, v15, &v79);
            munmap(v10, v11);
            if (v36 & v44)
            {
              goto LABEL_89;
            }

LABEL_116:
            v70 = secLogObjForScope("SecError");
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *&buf[4] = v79;
              _os_log_impl(&dword_1887D2000, v70, OS_LOG_TYPE_DEFAULT, "codesign deallocation failed: %s", buf, 0xCu);
            }

            free(v79);
            Security::MacOSError::throwMe(0xFFFEFA18);
          }

LABEL_115:
          munmap(v10, v11);
          goto LABEL_116;
        }

        if (v14 != -822415874)
        {
          v15 = 0;
          if (v14 != -805638658)
          {
            goto LABEL_57;
          }
        }
      }

      v81 = v83;
      if (vm_alloc(&__dst, v83, &v79))
      {
        v12 = __dst;
        memcpy(__dst, v10, v11);
        if (remove_signature_space(v12, v11, &v81, &v79))
        {
          v13 = v81;
          v15 = v11;
          goto LABEL_57;
        }

        v36 = 0;
        v15 = v11;
        goto LABEL_66;
      }

      goto LABEL_115;
    }
  }

  v16 = this + 120;
  if (*(this + 143) < 0)
  {
    v16 = *v16;
  }

  v17 = this + 144;
  if (*(this + 167) < 0)
  {
    v17 = *v17;
  }

  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 0x40000000;
  v76 = ___ZN8Security11CodeSigning11MachOEditor8allocateEv_block_invoke;
  v77 = &__block_descriptor_tmp_18014;
  v78 = this;
  v79 = 0;
  v83 = 0;
  *buf = 0;
  __dst = 0;
  if ((mapFile(v16, buf, &v83, &v79) & 1) == 0)
  {
    goto LABEL_109;
  }

  v18 = v83;
  __srca = *buf;
  if (HIDWORD(v83))
  {
    log_error(&v79, "input file too large: %lld bytes\n", v83);
    v18 = 0;
    goto LABEL_108;
  }

  v19 = 0;
  v20 = 0;
  v21 = **buf;
  if (**buf > -17958195)
  {
    v22 = 0;
    if ((v21 + 17958194) >= 2)
    {
      goto LABEL_87;
    }
  }

  else
  {
    if (v21 == -1095041334)
    {
      v20 = *(*buf + 4);
      v37 = bswap32(v20);
      v38 = malloc_type_calloc(v37, 4uLL, 0x100004052888210uLL);
      v72 = v17;
      if (v20)
      {
        v39 = 0;
        LODWORD(v40) = 0;
        v41 = __srca + 3;
        v42 = "requested signature size is too long for slice: %d\n";
        while (1)
        {
          if (bswap32(v41[2]) + bswap32(v41[1]) > v18)
          {
            log_error(&v79, "malformed fat file, slice %d extends past end of file\n", v39);
            goto LABEL_107;
          }

          v43 = v76(v75, bswap32(*(v41 - 1)), bswap32(*v41));
          if (v43 == -1)
          {
            goto LABEL_106;
          }

          if ((v43 & 0xF) != 0)
          {
            break;
          }

          v38[v39] = v43;
          v40 = (v43 + v40);
          ++v39;
          v41 += 5;
          if (v37 == v39)
          {
            goto LABEL_77;
          }
        }

        v42 = "signature size not a multiple of 16 in slice %d\n";
LABEL_106:
        log_error(&v79, v42, v39);
      }

      else
      {
        v40 = 0;
LABEL_77:
        v22 = v18 + (16399 * v37) + v40;
        v17 = v72;
        if (vm_alloc(&__dst, v22, &v79))
        {
          v19 = __dst;
          *__dst = *__srca;
          if (!v20)
          {
            goto LABEL_86;
          }

          v71 = v18 + (16399 * v37) + v40;
          v56 = 0;
          v57 = v19 + 0x4000;
          v58 = __srca + 5;
          v59 = v19 + 24;
          while (1)
          {
            v60 = *(v58 - 3);
            *v59 = v58[1];
            *(v59 - 1) = v60;
            v61 = bswap32(*v58);
            memcpy(v57, __srca + bswap32(*(v58 - 1)), v61);
            v62 = v38[v56];
            v80 = v62 + v61;
            if ((assure_signature_space(v57, v62, v61, &v80, &v79) & 1) == 0)
            {
              goto LABEL_97;
            }

            v63 = v57 - v19;
            if (v57 < v19)
            {
              break;
            }

            if (HIDWORD(v63))
            {
              log_error(&v79, "new architecture offset is too large");
              goto LABEL_97;
            }

            v64 = v80;
            v65 = bswap32(v80);
            *(v59 - 2) = bswap32(v63);
            *(v59 - 1) = v65;
            *v59 = 234881024;
            v20 = v63 + v64;
            if (__CFADD__(v63, v64))
            {
              log_error(&v79, "new outputsize overflows: newOffset(%d) newSliceSize(%d)\n", v57 - v19, v64);
              goto LABEL_97;
            }

            v57 += (v64 + 0x3FFF) & 0xFFFFC000;
            ++v56;
            v58 += 5;
            v59 += 5;
            if (v37 == v56)
            {
              v22 = v71;
              v17 = v72;
LABEL_86:
              free(v38);
LABEL_87:
              v35 = writeFile(v17, v19, v20, &v79);
LABEL_88:
              v66 = vm_dealloc(&__dst, v22, &v79);
              munmap(__srca, v18);
              if (v35 & v66)
              {
LABEL_89:
                *buf = -1;
                Security::CodeSigning::UidGuard::seteuid(buf, 0);
                if (*(this + 167) >= 0)
                {
                  v67 = this + 144;
                }

                else
                {
                  v67 = *(this + 18);
                }

                Security::UnixPlusPlus::FileDesc::open((this + 200), v67, 2, 438);
                Security::CodeSigning::UidGuard::~UidGuard(buf);
                operator new();
              }

LABEL_109:
              v69 = secLogObjForScope("SecError");
              if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *&buf[4] = v79;
                _os_log_impl(&dword_1887D2000, v69, OS_LOG_TYPE_DEFAULT, "codesign allocation failed: %s", buf, 0xCu);
              }

              free(v79);
              Security::MacOSError::throwMe(0xFFFEFA18);
            }
          }

          log_error(&v79, "new architecture offset underflows");
LABEL_97:
          free(v38);
          v35 = 0;
          v22 = v71;
          goto LABEL_88;
        }
      }

LABEL_107:
      free(v38);
      goto LABEL_108;
    }

    if (v21 != -822415874)
    {
      v22 = 0;
      if (v21 != -805638658)
      {
        goto LABEL_87;
      }
    }
  }

  v23 = v21 & 0xFEFFFFFF;
  v24 = *(*buf + 4);
  v25 = *(*buf + 8);
  v26 = bswap32(v24);
  v27 = v23 == -822415874;
  if (v23 == -822415874)
  {
    v28 = v26;
  }

  else
  {
    v28 = v24;
  }

  v29 = bswap32(v25);
  if (v27)
  {
    v30 = v29;
  }

  else
  {
    v30 = v25;
  }

  v31 = v76(v75, v28, v30);
  v32 = v31;
  if (v31 == -1)
  {
    log_error(&v79, "requested signature size is too long for slice");
  }

  else
  {
    if ((v31 & 0xF) != 0)
    {
      log_error(&v79, "signature size not a multiple of 16\n");
      v22 = 0;
LABEL_52:
      v35 = 0;
      goto LABEL_88;
    }

    v33 = __CFADD__(v18, v31);
    v34 = v18 + v31 + 15;
    v81 = v18 + v31 + 15;
    if (v33 || v34 != v34 << 31 >> 31)
    {
      log_error(&v79, "overflow calculating output size (%u + %d + 15)", v18, v31);
    }

    else
    {
      v22 = v34;
      if (vm_alloc(&__dst, v34, &v79))
      {
        v19 = __dst;
        memcpy(__dst, __srca, v18);
        if (assure_signature_space(v19, v32, v18, &v81, &v79))
        {
          v20 = v81;
          goto LABEL_87;
        }

        goto LABEL_52;
      }
    }
  }

LABEL_108:
  munmap(__srca, v18);
  goto LABEL_109;
}

unint64_t ___ZN8Security11CodeSigning11MachOEditor8allocateEv_block_invoke(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  v5 = (v3 + 32);
  if (v4 == v5)
  {
    v10 = 0x100000000;
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
    do
    {
      if (*(v4 + 8) == a2 && (a3 == -1 || ((*(v4 + 9) ^ a3) & 0xFFFFFF) == 0))
      {
        v6 = *(v4[5] + 120);
      }

      v7 = v4[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v4[2];
          v9 = *v8 == v4;
          v4 = v8;
        }

        while (!v9);
      }

      v4 = v8;
    }

    while (v8 != v5);
    v10 = ((v6 - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
  }

  if (v10 >= 0xFFFFFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v10;
  }
}

void Security::CodeSigning::MachOEditor::~MachOEditor(Security::CodeSigning::MachOEditor *this, std::error_code *a2)
{
  Security::CodeSigning::MachOEditor::~MachOEditor(this, a2);

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8B818;
  v3 = *(this + 24);
  if (v3)
  {
    free(*(v3 + 8));
    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*(v3 + 56));
    MEMORY[0x18CFD9760](v3, 0x1020C4076728D04);
  }

  if (*(this + 208) == 1)
  {
    v4 = (this + 144);
    if (*(this + 167) < 0)
    {
      v4 = v4->__pn_.__r_.__value_.__r.__words[0];
    }

    remove(v4, a2);
  }

  Security::UnixPlusPlus::FileDesc::closeAndLog((this + 200));
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*(this + 22));
  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  Security::RefPointer<Security::CodeSigning::DiskRep::Writer>::~RefPointer(this + 48);

  Security::CodeSigning::ArchEditor::~ArchEditor(this);
}

void Security::CodeSigning::DetachedBlobWriter::flush(Security::CodeSigning::DetachedBlobWriter *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = Security::SuperBlobCore<Security::CodeSigning::EmbeddedSignatureBlob,4208856256u,unsigned int>::Maker::make(this + 24, a2, a3, a4, a5, a6, a7, a8);
  v10 = *(*(this + 6) + 16);
  v12 = CFDataCreate(0, v9, bswap32(*(v9 + 1)));
  Security::CodeSigning::SecStaticCode::detachedSignature(v10, v12);
  Security::CFRef<__CFData const*>::~CFRef(&v12);
  Security::CodeSigning::SecCodeSigner::returnDetachedSignature(*(*(this + 6) + 8), v9, v11);
  free(v9);
}

void sub_188930F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Security::CFRef<__CFData const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

void Security::CodeSigning::DetachedBlobWriter::~DetachedBlobWriter(Security::CodeSigning::DetachedBlobWriter *this)
{
  Security::SuperBlobCore<Security::CodeSigning::EmbeddedSignatureBlob,4208856256u,unsigned int>::Maker::~Maker(this + 24);

  JUMPOUT(0x18CFD9760);
}

{
  Security::SuperBlobCore<Security::CodeSigning::EmbeddedSignatureBlob,4208856256u,unsigned int>::Maker::~Maker(this + 24);
}

uint64_t Security::CodeSigning::ArchEditor::ArchEditor(uint64_t a1, Security::Universal *this, void *a3, int a4)
{
  *(a1 + 8) = 0;
  *(a1 + 12) = -1;
  *(a1 + 20) = a4;
  *a1 = &unk_1EFA8B700;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = a1 + 32;
  v7[0] = 0;
  v7[1] = 0;
  v6 = v7;
  Security::Universal::architectures(this, &v6);
  if (v6 != v7)
  {
    operator new();
  }

  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(v7[0]);
  return a1;
}

void sub_18893139C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(a18);
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*a12);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<unsigned int,Security::RefPointer<Security::CodeSigning::CodeDirectory::Builder>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::RefPointer<Security::CodeSigning::CodeDirectory::Builder>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::RefPointer<Security::CodeSigning::CodeDirectory::Builder>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,Security::RefPointer<Security::CodeSigning::CodeDirectory::Builder>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::RefPointer<Security::CodeSigning::CodeDirectory::Builder>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::RefPointer<Security::CodeSigning::CodeDirectory::Builder>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,Security::RefPointer<Security::CodeSigning::CodeDirectory::Builder>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::RefPointer<Security::CodeSigning::CodeDirectory::Builder>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::RefPointer<Security::CodeSigning::CodeDirectory::Builder>>>>::destroy(a1[1]);
    Security::RefPointer<Security::CodeSigning::CodeDirectory::Builder>::~RefPointer((a1 + 5));

    operator delete(a1);
  }
}

uint64_t Security::RefPointer<Security::CodeSigning::CodeDirectory::Builder>::~RefPointer(uint64_t a1)
{
  v2 = pthread_mutex_lock((a1 + 8));
  if (v2)
  {
    Security::UnixError::throwMe(v2);
  }

  if (*a1 && atomic_fetch_add_explicit(*a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    if (*a1)
    {
      Security::CodeSigning::CodeDirectory::Builder::~Builder(*a1);
      MEMORY[0x18CFD9760]();
    }

    *a1 = 0;
  }

  v3 = pthread_mutex_unlock((a1 + 8));
  if (v3)
  {
    Security::UnixError::throwMe(v3);
  }

  Security::Mutex::~Mutex((a1 + 8));
  return a1;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<unsigned int,Security::RefPointer<Security::CodeSigning::CodeDirectory::Builder>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned int,Security::RefPointer<Security::CodeSigning::CodeDirectory::Builder>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      Security::RefPointer<Security::CodeSigning::CodeDirectory::Builder>::~RefPointer(v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

void Security::CodeSigning::ArchEditor::Arch::~Arch(void **this)
{
  *this = &unk_1EFA8B768;
  free(this[14]);
  Security::SuperBlobCore<Security::CodeSigning::EmbeddedSignatureBlob,4208856256u,unsigned int>::Maker::~Maker((this + 11));
  std::__tree<std::__value_type<unsigned int,Security::RefPointer<Security::CodeSigning::CodeDirectory::Builder>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::RefPointer<Security::CodeSigning::CodeDirectory::Builder>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::RefPointer<Security::CodeSigning::CodeDirectory::Builder>>>>::destroy(this[9]);
  v2 = this[7];
  this[7] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  Security::SuperBlobCore<Security::CodeSigning::EmbeddedSignatureBlob,4208856256u,unsigned int>::Maker::~Maker((this + 3));

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8B768;
  free(this[14]);
  Security::SuperBlobCore<Security::CodeSigning::EmbeddedSignatureBlob,4208856256u,unsigned int>::Maker::~Maker((this + 11));
  std::__tree<std::__value_type<unsigned int,Security::RefPointer<Security::CodeSigning::CodeDirectory::Builder>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Security::RefPointer<Security::CodeSigning::CodeDirectory::Builder>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Security::RefPointer<Security::CodeSigning::CodeDirectory::Builder>>>>::destroy(this[9]);
  v2 = this[7];
  this[7] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  Security::SuperBlobCore<Security::CodeSigning::EmbeddedSignatureBlob,4208856256u,unsigned int>::Maker::~Maker((this + 3));
}

uint64_t Security::CodeSigning::MachOEditor::MachOEditor(uint64_t a1, atomic_uint *a2, Security::Universal *a3, void *a4, __int128 *a5)
{
  std::set<unsigned int>::set[abi:ne200100](v16, a4);
  v10 = (*(*a2 + 24))(a2);
  Security::CodeSigning::ArchEditor::ArchEditor(a1, a3, v16, v10);
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(v16[1]);
  *a1 = &unk_1EFA8B818;
  Security::Mutex::Mutex((a1 + 56));
  atomic_fetch_add_explicit(a2 + 2, 1u, memory_order_relaxed);
  *(a1 + 48) = a2;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 120), *a5, *(a5 + 1));
  }

  else
  {
    v11 = *a5;
    *(a1 + 136) = *(a5 + 2);
    *(a1 + 120) = v11;
  }

  *(a1 + 144) = 0xAAAAAAAAAAAAAAAALL;
  if (*(a5 + 23) >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = *(a5 + 1);
  }

  *(a1 + 152) = 0xAAAAAAAAAAAAAAAALL;
  *(a1 + 160) = 0xAAAAAAAAAAAAAAAALL;
  std::string::basic_string[abi:ne200100](a1 + 144, v12 + 7);
  if (*(a1 + 167) >= 0)
  {
    v13 = (a1 + 144);
  }

  else
  {
    v13 = *(a1 + 144);
  }

  if (v12)
  {
    if (*(a5 + 23) >= 0)
    {
      v14 = a5;
    }

    else
    {
      v14 = *a5;
    }

    memmove(v13, v14, v12);
  }

  strcpy(v13 + v12, ".cstemp");
  std::set<unsigned int>::set[abi:ne200100]((a1 + 168), a4);
  *(a1 + 192) = 0;
  *(a1 + 200) = -1;
  *(a1 + 204) = 0;
  *(a1 + 208) = 0;
  return a1;
}

void sub_1889318A8(_Unwind_Exception *a1)
{
  Security::RefPointer<Security::CodeSigning::DiskRep::Writer>::~RefPointer(v1 + 48);
  Security::CodeSigning::ArchEditor::~ArchEditor(v1);
  _Unwind_Resume(a1);
}

void Security::CodeSigning::InternalRequirements::operator()(uint64_t a1)
{
  v2 = secLogObjForScope("signer");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEBUG, "Platform does not support signing internal requirements", v3, 2u);
  }

  *(a1 + 24) = 0;
}

const void **Security::CodeSigning::CodeDirectorySet::populate(const void **this, Security::CodeSigning::DiskRep::Writer *a2)
{
  v3 = this;
  v4 = *this;
  if (!this[3])
  {
    this[3] = v4[5];
  }

  v5 = this + 1;
  if (v4 != this + 1)
  {
    v6 = 4096;
    do
    {
      v7 = v4[5];
      v8 = v3[3];
      if (v7 == v8)
      {
        v9 = 0;
      }

      else
      {
        v9 = v6;
      }

      if (v7 != v8)
      {
        ++v6;
      }

      v13 = CFDataCreate(0, v7, bswap32(v7[1]));
      (*(*a2 + 16))(a2, v9, v13);
      this = Security::CFRef<__CFData const*>::~CFRef(&v13);
      v10 = v4[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v4[2];
          v12 = *v11 == v4;
          v4 = v11;
        }

        while (!v12);
      }

      v4 = v11;
    }

    while (v11 != v5);
  }

  return this;
}

void sub_188931B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Security::CFRef<__CFData const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef Security::CodeSigning::CodeDirectorySet::hashList(Security::CodeSigning::CodeDirectorySet *this, uint64_t a2)
{
  CFMutableArray = Security::makeCFMutableArray(this, a2);
  theArray = CFMutableArray;
  v4 = *this;
  if (*this != (this + 8))
  {
    v7 = 0xAAAAAAAAAAAAAAAALL;
    Security::CodeSigning::CodeDirectory::cdhash(*(v4 + 40), 1u);
  }

  v5 = CFMutableArray;
  theArray = 0;
  Security::CFRef<__CFArray *>::~CFRef(&theArray);
  return v5;
}

void sub_188931C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Security::CFRef<__CFArray *>::~CFRef(va);
  _Unwind_Resume(a1);
}

CFMutableDictionaryRef Security::CodeSigning::CodeDirectorySet::hashDict(Security::CodeSigning::CodeDirectorySet *this)
{
  CFMutableDictionary = Security::makeCFMutableDictionary(this);
  v11 = CFMutableDictionary;
  v3 = *this;
  if (*this != (this + 8))
  {
    v4 = *(v3 + 32) - 1;
    if (v4 < 4)
    {
      v5 = dword_18895E220[v4];
      v10 = 0xAAAAAAAAAAAAAAAALL;
      LODWORD(valuePtr) = v5;
      v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      valuePtr = 0xAAAAAAAAAAAAAAAALL;
      v10 = v6;
      Security::CodeSigning::CodeDirectory::cdhash(*(v3 + 40), 0);
    }

    Security::MacOSError::throwMe(0xFFFEFA48);
  }

  v7 = CFMutableDictionary;
  v11 = 0;
  Security::CFRef<__CFDictionary *>::~CFRef(&v11);
  return v7;
}

void sub_188931D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  Security::CFRef<__CFDictionary *>::~CFRef(va);
  _Unwind_Resume(a1);
}

void Security::CodeSigning::SecCodeSigner::~SecCodeSigner(Security::CodeSigning::SecCodeSigner *this)
{
  Security::CodeSigning::SecCodeSigner::~SecCodeSigner(this);

  Security::SecCFObject::operator delete(v1);
}

{
  *this = &unk_1EFA8B958;
  v2 = *(this + 36);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  Security::CFRef<__CFData const*>::~CFRef(this + 39);
  Security::CFRef<__CFURL const*>::~CFRef(this + 34);
  Security::CFRef<__SecIdentity *>::~CFRef(this + 33);
  Security::CFRef<__CFNumber const*>::~CFRef(this + 32);
  if (*(this + 247) < 0)
  {
    operator delete(*(this + 28));
  }

  if (*(this + 223) < 0)
  {
    operator delete(*(this + 25));
  }

  if (*(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }

  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*(this + 20));
  Security::CFRef<void const*>::~CFRef(this + 15);
  Security::CFRef<__CFURL const*>::~CFRef(this + 14);
  Security::CFRef<__CFData const*>::~CFRef(this + 13);
  v3 = (this + 80);
  std::vector<Security::CFRef<__CFData const*>>::__destroy_vector::operator()[abi:ne200100](&v3);
  Security::CFRef<__CFData const*>::~CFRef(this + 8);
  Security::CFRef<__CFData const*>::~CFRef(this + 7);
  Security::CFRef<__CFDate const*>::~CFRef(this + 6);
  Security::CFRef<__CFDictionary const*>::~CFRef(this + 5);
  Security::CFRef<void const*>::~CFRef(this + 4);
  Security::CFRef<__SecIdentity *>::~CFRef(this + 3);
}

{
  *this = &unk_1EFA8B958;
  v2 = *(this + 36);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  Security::CFRef<__CFData const*>::~CFRef(this + 39);
  Security::CFRef<__CFURL const*>::~CFRef(this + 34);
  Security::CFRef<__SecIdentity *>::~CFRef(this + 33);
  Security::CFRef<__CFNumber const*>::~CFRef(this + 32);
  if (*(this + 247) < 0)
  {
    operator delete(*(this + 28));
  }

  if (*(this + 223) < 0)
  {
    operator delete(*(this + 25));
  }

  if (*(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }

  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*(this + 20));
  Security::CFRef<void const*>::~CFRef(this + 15);
  Security::CFRef<__CFURL const*>::~CFRef(this + 14);
  Security::CFRef<__CFData const*>::~CFRef(this + 13);
  v3 = (this + 80);
  std::vector<Security::CFRef<__CFData const*>>::__destroy_vector::operator()[abi:ne200100](&v3);
  Security::CFRef<__CFData const*>::~CFRef(this + 8);
  Security::CFRef<__CFData const*>::~CFRef(this + 7);
  Security::CFRef<__CFDate const*>::~CFRef(this + 6);
  Security::CFRef<__CFDictionary const*>::~CFRef(this + 5);
  Security::CFRef<void const*>::~CFRef(this + 4);
  Security::CFRef<__SecIdentity *>::~CFRef(this + 3);
}

const void **Security::CFRef<__SecIdentity *>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **Security::CFRef<void const*>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::vector<Security::CFRef<__CFData const*>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = Security::CFRef<__CFData const*>::~CFRef(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t Security::CodeSigning::SecCodeSigner::parameters(Security::CodeSigning::SecCodeSigner *this, const __CFDictionary *a2)
{
  v3 = 4294900225;
  Security::CFDictionary::CFDictionary(&theDict, a2, 0xFFFEFA0ELL);
  Value = CFDictionaryGetValue(theDict, @"edit-cpu-type");
  Security::CFRef<__CFNumber const*>::check<void const*>(Value, v110);
  v5 = CFDictionaryGetValue(theDict, @"edit-cpu-subtype");
  Security::CFRef<__CFNumber const*>::check<void const*>(v5, v110);
  if (Value && v5)
  {
    v6 = Security::cfNumber<unsigned int>(Value);
    v7 = Security::cfNumber<unsigned int>(v5);
    *(this + 76) = v6;
    *(this + 77) = v7;
  }

  v8 = CFDictionaryGetValue(theDict, @"edit-cms");
  Security::CFRef<__CFData const*>::check<void const*>(v8, v110);
  Security::CFRef<__CFArray const*>::operator=(this + 39, v8);
  v9 = CFDictionaryGetValue(theDict, @"dryrun");
  v10 = Security::CFRef<__CFBoolean const*>::check<void const*>(v9, v110);
  v11 = *MEMORY[0x1E695E4D0];
  if (v10)
  {
    v12 = v10 == v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  *(this + 250) = v13;
  v14 = CFDictionaryGetValue(theDict, @"sdkroot");
  Security::CFRef<__CFURL const*>::check<void const*>(v14, v110);
  Security::CFRef<__CFArray const*>::operator=(this + 14, v14);
  v15 = CFDictionaryGetValue(theDict, @"preserve-afsc");
  v16 = Security::CFRef<__CFBoolean const*>::check<void const*>(v15, v110);
  if (v16)
  {
    v17 = v16 == v11;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  *(this + 300) = v18;
  if ((*(this + 17) & 4) != 0)
  {
    goto LABEL_147;
  }

  v19 = CFDictionaryGetValue(theDict, @"signer");
  Security::CFRef<__CFArray const*>::operator=(this + 3, v19);
  v20 = *(this + 3);
  if (v20)
  {
    v21 = CFGetTypeID(v20);
    if (v21 != SecIdentityGetTypeID() && !CFEqual(*(this + 3), *MEMORY[0x1E695E738]))
    {
      goto LABEL_149;
    }
  }

  v22 = CFDictionaryGetValue(theDict, @"flags");
  v23 = Security::CFRef<__CFNumber const*>::check<void const*>(v22, v110);
  if (v23)
  {
    *(this + 144) = 1;
    *(this + 34) = Security::cfNumber<unsigned int>(v23);
  }

  else
  {
    *(this + 144) = 0;
  }

  cf[0] = 0xAAAAAAAAAAAAAAAALL;
  v24 = CFDictionaryGetValue(theDict, @"digest-algorithm");
  Security::CFCopyRef<void const*>::CFCopyRef(cf, v24);
  v25 = cf[0];
  if (cf[0])
  {
    v112 = 0xAAAAAAAAAAAAAAAALL;
    values.__r_.__value_.__l.__data_ = cf[0];
    v26 = CFGetTypeID(cf[0]);
    if (v26 == CFArrayGetTypeID())
    {
      CFRetain(v25);
      v112 = v25;
      goto LABEL_27;
    }

    v25 = CFArrayCreate(0, &values.__r_.__value_.__l.__data_, 1, MEMORY[0x1E695E9C0]);
    v112 = v25;
    if (v25)
    {
LABEL_27:
      CFArrayGetCount(v25);
      operator new[]();
    }

    Security::CFRef<__CFArray const*>::~CFRef(&v112);
  }

  Security::CFRef<void const*>::~CFRef(cf);
  v27 = CFDictionaryGetValue(theDict, @"cmssize");
  v28 = Security::CFRef<__CFNumber const*>::check<void const*>(v27, v110);
  if (v28)
  {
    v29 = Security::cfNumber<unsigned long>(v28);
  }

  else
  {
    v29 = 18000;
  }

  *(this + 16) = v29;
  v30 = CFDictionaryGetValue(theDict, @"preserve-metadata");
  v31 = Security::CFRef<__CFNumber const*>::check<void const*>(v30, v110);
  if (v31)
  {
    LODWORD(v31) = Security::cfNumber<unsigned int>(v31);
  }

  *(this + 35) = v31;
  v32 = CFDictionaryGetValue(theDict, @"signing-time");
  v33 = v32;
  if (v32)
  {
    v34 = CFGetTypeID(v32);
    if (v34 != CFDateGetTypeID() && v33 != *MEMORY[0x1E695E738])
    {
      Security::MacOSError::throwMe(0xFFFEFA01);
    }

    CFRetain(v33);
    v35 = *(this + 6);
    if (v35)
    {
      CFRelease(v35);
    }

    *(this + 6) = v33;
  }

  v36 = CFDictionaryGetValue(theDict, @"identifier");
  Security::CFRef<__CFString const*>::check<void const*>(v36, v110);
  if (v36)
  {
    Security::cfString(&values, v36);
    if (*(this + 199) < 0)
    {
      operator delete(*(this + 22));
    }

    *(this + 176) = values;
  }

  v37 = CFDictionaryGetValue(theDict, @"teamidentifier");
  Security::CFRef<__CFString const*>::check<void const*>(v37, v110);
  if (v37)
  {
    Security::cfString(&values, v37);
    if (*(this + 247) < 0)
    {
      operator delete(*(this + 28));
    }

    *(this + 224) = values;
  }

  v38 = CFDictionaryGetValue(theDict, @"platform-identifier");
  v39 = Security::CFRef<__CFNumber const*>::check<void const*>(v38, v110);
  if (v39)
  {
    values.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
    v40 = CFNumberGetValue(v39, kCFNumberLongLongType, &values);
    if (!v40)
    {
      Security::CFError::throwMe(v40);
    }

    if (values.__r_.__value_.__r.__words[0] >= 0x100)
    {
      Security::MacOSError::throwMe(0xFFFEFA43);
    }

    *(this + 248) = values.__r_.__value_.__s.__data_[0];
  }

  v41 = CFDictionaryGetValue(theDict, @"identifier-prefix");
  Security::CFRef<__CFString const*>::check<void const*>(v41, v110);
  if (v41)
  {
    Security::cfString(&values, v41);
    if (*(this + 223) < 0)
    {
      operator delete(*(this + 25));
    }

    *(this + 200) = values;
  }

  v42 = CFDictionaryGetValue(theDict, @"requirements");
  v43 = v42;
  if (v42)
  {
    v44 = CFGetTypeID(v42);
    if (v44 != CFDataGetTypeID())
    {
      v45 = CFGetTypeID(v43);
      if (v45 != CFStringGetTypeID())
      {
        Security::MacOSError::throwMe(0xFFFEFA01);
      }
    }

    Security::CFRef<__CFArray const*>::operator=(this + 15, v43);
  }

  else
  {
    v46 = *(this + 15);
    if (v46)
    {
      CFRelease(v46);
    }

    *(this + 15) = 0;
  }

  v47 = CFDictionaryGetValue(theDict, @"no-macho");
  v48 = Security::CFRef<__CFBoolean const*>::check<void const*>(v47, v110);
  if (v48)
  {
    v49 = v48 == v11;
  }

  else
  {
    v49 = 0;
  }

  v50 = v49;
  *(this + 249) = v50;
  v51 = CFDictionaryGetValue(theDict, @"pagesize");
  Security::CFRef<__CFNumber const*>::check<void const*>(v51, v110);
  if (v51)
  {
    CFRetain(v51);
  }

  v52 = *(this + 32);
  if (v52)
  {
    CFRelease(v52);
  }

  *(this + 32) = v51;
  v53 = CFDictionaryGetValue(theDict, @"detached");
  Security::CFRef<__CFArray const*>::operator=(this + 4, v53);
  v54 = *(this + 4);
  if (v54)
  {
    v55 = CFGetTypeID(v54);
    if (v55 != CFURLGetTypeID() && v55 != CFDataGetTypeID() && v55 != CFNullGetTypeID())
    {
      Security::MacOSError::throwMe(0xFFFEFA01);
    }
  }

  v56 = CFDictionaryGetValue(theDict, @"resource-rules");
  v57 = v56;
  if (v56)
  {
    v3 = v110;
    v58 = CFGetTypeID(v56);
    if (v58 != CFDictionaryGetTypeID())
    {
LABEL_149:
      Security::MacOSError::throwMe(v3);
    }
  }

  Security::CFRef<__CFArray const*>::operator=(this + 5, v57);
  v59 = CFDictionaryGetValue(theDict, @"application-specific");
  Security::CFRef<__CFData const*>::check<void const*>(v59, v110);
  Security::CFRef<__CFArray const*>::operator=(this + 7, v59);
  v60 = CFDictionaryGetValue(theDict, @"entitlements");
  Security::CFRef<__CFData const*>::check<void const*>(v60, v110);
  Security::CFRef<__CFArray const*>::operator=(this + 8, v60);
  v61 = CFDictionaryGetValue(theDict, @"force-library-entitlements");
  v62 = Security::CFRef<__CFBoolean const*>::check<void const*>(v61, v110);
  if (v62)
  {
    v63 = v62 == v11;
  }

  else
  {
    v63 = 0;
  }

  v64 = v63;
  *(this + 72) = v64;
  v65 = *(this + 10);
  v66 = *(this + 11);
  v67 = (v66 - v65) >> 3;
  if (v67 > 2)
  {
    if ((v66 - v65) != 24)
    {
      v73 = (v65 + 24);
      while (v66 != v73)
      {
        Security::CFRef<__CFData const*>::~CFRef(--v66);
      }

      *(this + 11) = v73;
    }
  }

  else
  {
    v68 = 3 - v67;
    v69 = *(this + 12);
    if (v68 > (v69 - v66) >> 3)
    {
      v70 = v69 - v65;
      v71 = v70 >> 2;
      if ((v70 >> 2) <= 3)
      {
        v71 = 3;
      }

      if (v70 >= 0x7FFFFFFFFFFFFFF8)
      {
        v72 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v72 = v71;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<Security::CFRef<__CFData const*>>>(v72);
    }

    bzero(*(this + 11), 8 * v68);
    *(this + 11) = &v66[v68];
  }

  v74 = CFDictionaryGetValue(theDict, @"lwcr-self");
  Security::CFRef<__CFData const*>::check<void const*>(v74, v110);
  Security::CFRef<__CFArray const*>::operator=(*(this + 10), v74);
  v75 = CFDictionaryGetValue(theDict, @"lwcr-parent");
  Security::CFRef<__CFData const*>::check<void const*>(v75, v110);
  Security::CFRef<__CFArray const*>::operator=((*(this + 10) + 8), v75);
  v76 = CFDictionaryGetValue(theDict, @"lwcr-responsible");
  Security::CFRef<__CFData const*>::check<void const*>(v76, v110);
  Security::CFRef<__CFArray const*>::operator=((*(this + 10) + 16), v76);
  v77 = CFDictionaryGetValue(theDict, @"lwcr-library");
  Security::CFRef<__CFData const*>::check<void const*>(v77, v110);
  Security::CFRef<__CFArray const*>::operator=(this + 13, v77);
  v78 = CFDictionaryGetValue(theDict, @"timestamp-required");
  v79 = Security::CFRef<__CFBoolean const*>::check<void const*>(v78, v110);
  if (v79)
  {
    *(this + 280) = v79 == v11;
    goto LABEL_112;
  }

  *(this + 280) = 0;
  v80 = *(this + 3);
  if (v80 && v80 != *MEMORY[0x1E695E738])
  {
    values.__r_.__value_.__r.__words[0] = *(v80 + 16);
    CFRetain(values.__r_.__value_.__l.__data_);
    v81 = values.__r_.__value_.__r.__words[0];
    LOBYTE(cf[0]) = 0;
    v82 = CFDataCreateWithBytesNoCopy(0, Security::CodeSigning::caspianLeafMarker, 10, *MEMORY[0x1E695E498]);
    v83 = v82;
    if (v81 && v82)
    {
      v84 = SecCertificateCopyExtensionValue(v81, v82, cf);
      v85 = v84 != 0;
      if (v84)
      {
        CFRelease(v84);
        v85 = 1;
      }
    }

    else
    {
      if (!v82)
      {
        goto LABEL_110;
      }

      v85 = 0;
    }

    CFRelease(v83);
    if (v85)
    {
      *(this + 280) = 1;
      goto LABEL_156;
    }

LABEL_110:
    if ((*(this + 280) & 1) == 0)
    {
      Security::CFRef<__SecCertificate *>::~CFRef(&values.__r_.__value_.__l.__data_);
      goto LABEL_112;
    }

LABEL_156:
    v108 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(cf[0]) = 0;
      _os_log_impl(&dword_1887D2000, v108, OS_LOG_TYPE_DEFAULT, "Platform does not support signing secure timestamps", cf, 2u);
    }

    Security::MacOSError::throwMe(0xFFFFFFFCLL);
  }

LABEL_112:
  v86 = CFDictionaryGetValue(theDict, @"timestamp-authentication");
  v87 = v86;
  if (v86)
  {
    v3 = v110;
    v88 = CFGetTypeID(v86);
    if (v88 != SecIdentityGetTypeID())
    {
      goto LABEL_149;
    }
  }

  Security::CFRef<__CFArray const*>::operator=(this + 33, v87);
  v89 = CFDictionaryGetValue(theDict, @"timestamp-url");
  Security::CFRef<__CFURL const*>::check<void const*>(v89, v110);
  Security::CFRef<__CFArray const*>::operator=(this + 34, v89);
  v90 = CFDictionaryGetValue(theDict, @"timestamp-omit-certificates");
  v91 = Security::CFRef<__CFBoolean const*>::check<void const*>(v90, v110);
  if (v91)
  {
    v92 = v91 == v11;
  }

  else
  {
    v92 = 0;
  }

  v93 = v92;
  *(this + 281) = v93;
  v94 = CFDictionaryGetValue(theDict, @"runtime-version");
  Security::CFRef<__CFString const*>::check<void const*>(v94, v110);
  if (v94)
  {
    memset(&values, 170, sizeof(values));
    Security::cfString(&values, v94);
    size = HIBYTE(values.__r_.__value_.__r.__words[2]);
    if ((values.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = values.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      goto LABEL_136;
    }

    v96 = 0;
    v97 = (values.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &values : values.__r_.__value_.__r.__words[0];
    v98 = (v97 + size);
    v99 = 16;
    while (v97 < v98)
    {
      cf[0] = 0;
      *__error() = 0;
      v100 = strtol(v97, cf, 10);
      v101 = cf[0];
      if (v97 != cf[0])
      {
        v102 = v100;
        if (!*__error() && v102 <= 0xFF)
        {
          v96 |= v102 << v99;
          if (!*v101)
          {
            break;
          }

          if (*v101 == 46)
          {
            if (v99)
            {
              v99 -= 8;
              v97 = (v101 + 1);
              if (v101 + 1 != v98)
              {
                continue;
              }
            }
          }
        }
      }

      goto LABEL_136;
    }

    if (!v96)
    {
LABEL_136:
      Security::MacOSError::throwMe(0xFFFEFA4FLL);
    }

    *(this + 74) = v96;
    if (SHIBYTE(values.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(values.__r_.__value_.__l.__data_);
    }
  }

  v103 = CFDictionaryGetValue(theDict, @"omit-adhoc-flag");
  v104 = Security::CFRef<__CFBoolean const*>::check<void const*>(v103, v110);
  if (v104)
  {
    v105 = v104 == v11;
  }

  else
  {
    v105 = 0;
  }

  v106 = v105;
  *(this + 301) = v106;
LABEL_147:
  Security::CFRef<__CFDictionary const*>::~CFRef(&theDict);
  result = (*(*this + 80))(this);
  if ((result & 1) == 0)
  {
    Security::MacOSError::throwMe(0xFFFEFA01);
  }

  return result;
}