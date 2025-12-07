void sub_1A2622838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1A2622A84(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(v9 - 72);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(v9 - 120);
  if (v13)
  {
    *(v9 - 112) = v13;
    operator delete(v13);
  }

  *(v9 - 120) = &a9;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100]((v9 - 120));
  if (a2 == 2)
  {
    v14 = __cxa_begin_catch(a1);
    v15 = MEMORY[0x1E695DF30];
    v16 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a9);
    (*(*v14 + 24))(v14, &a9);
    if (*(v9 - 97) >= 0)
    {
      v17 = v9 - 120;
    }

    else
    {
      v17 = *(v9 - 120);
    }

    v18 = [v16 stringWithUTF8String:v17];
    v19 = [v15 exceptionWithName:@"MediaPlatform" reason:v18 userInfo:0];
    v20 = v19;

    if (*(v9 - 97) < 0)
    {
      operator delete(*(v9 - 120));
    }

    objc_exception_throw(v19);
  }

  if (a2 == 1)
  {
    v21 = __cxa_begin_catch(a1);
    v22 = MEMORY[0x1E695DF30];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v21 + 16))(v21)];
    v24 = [v22 exceptionWithName:*MEMORY[0x1E695D920] reason:v23 userInfo:0];
    v25 = v24;

    objc_exception_throw(v24);
  }

  _Unwind_Resume(a1);
}

void std::vector<int>::push_back[abi:ne200100](uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 2) + 1;
    if (v8 >> 62)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (4 * (v7 >> 2));
    *v11 = *a2;
    v5 = v11 + 1;
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
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t MPMediaLibraryGetProperty(ModelPropertyBase *a1, ModelPropertyBase *a2)
{
  v4 = mlcore::ItemPropertyAlbumPersistentID(a1);
  if (v4 == a1 && (v4 = mlcore::AlbumPropertyArtistPersistentID(v4), v4 == a2))
  {

    return mlcore::ItemPropertyAlbumArtistPersistentID(v4);
  }

  else
  {
    HasName = mlcore::ArtistPropertyHasName(v4);
    if (HasName == a2 && ((v8 = mlcore::ItemPropertyAlbumArtistPersistentID(HasName), v8 == a1) || (HasName = mlcore::AlbumPropertyArtistPersistentID(v8), HasName == a1)))
    {

      return MEMORY[0x1EEE1BB68]();
    }

    else
    {
      v6 = mlcore::ArtistPropertyOrder(HasName);
      if (v6 == a2 && ((v9 = mlcore::ItemPropertyAlbumArtistPersistentID(v6), v9 == a1) || mlcore::AlbumPropertyArtistPersistentID(v9) == a1))
      {

        return MEMORY[0x1EEE1BC60]();
      }

      else
      {
        return mlcore::GetForeignPropertyBase();
      }
    }
  }
}

void sub_1A2622F18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void ***__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  v24 = *(v21 - 40);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (a2 == 2)
  {
    v25 = __cxa_begin_catch(exception_object);
    v26 = MEMORY[0x1E695DF30];
    v27 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a9);
    (*(*v25 + 24))(&__p, v25, &a9);
    if (a21 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v29 = [v27 stringWithUTF8String:p_p];
    v30 = [v26 exceptionWithName:@"MediaPlatform" reason:v29 userInfo:0];
    v31 = v30;

    if (a21 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v30);
  }

  if (a2 == 1)
  {
    v32 = __cxa_begin_catch(exception_object);
    v33 = MEMORY[0x1E695DF30];
    v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v32 + 16))(v32)];
    v35 = [v33 exceptionWithName:*MEMORY[0x1E695D920] reason:v34 userInfo:0];
    v36 = v35;

    objc_exception_throw(v35);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A2623150(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t **std::map<unsigned long,std::shared_ptr<mlcore::Predicate>>::map[abi:ne200100](uint64_t **a1, unint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v3 = a2;
    v4 = 0;
    v5 = a1 + 1;
    while (1)
    {
      v6 = a1 + 1;
      if (v5 == a1 + 1)
      {
        goto LABEL_9;
      }

      v7 = v4;
      v8 = a1 + 1;
      if (v4)
      {
        do
        {
          v6 = v7;
          v7 = v7[1];
        }

        while (v7);
      }

      else
      {
        do
        {
          v6 = v8[2];
          v9 = *v6 == v8;
          v8 = v6;
        }

        while (v9);
      }

      v10 = *v3;
      if (v6[4] < *v3)
      {
LABEL_9:
        v11 = v4 ? v6 + 1 : a1 + 1;
      }

      else
      {
        v11 = a1 + 1;
        if (v4)
        {
          v11 = a1 + 1;
          while (1)
          {
            while (1)
            {
              v12 = v4;
              v13 = v4[4];
              if (v10 >= v13)
              {
                break;
              }

              v4 = *v12;
              v11 = v12;
              if (!*v12)
              {
                goto LABEL_13;
              }
            }

            if (v13 >= v10)
            {
              break;
            }

            v11 = v12 + 1;
            v4 = v12[1];
            if (!v4)
            {
              goto LABEL_13;
            }
          }
        }
      }

      if (!*v11)
      {
LABEL_13:
        operator new();
      }

      v3 += 3;
      if (v3 == &a2[3 * a3])
      {
        break;
      }

      v5 = *a1;
      v4 = a1[1];
    }
  }

  return a1;
}

void _MPMLPredicateForVariants(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v7 = a2 + 1;
  v8 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v9 = v8[4];
      v10 = v8[5];
      v32 = v9;
      *&v33 = v10;
      v11 = v8[6];
      *(&v33 + 1) = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if ((v9 & ~a4) != 0)
      {
        std::vector<std::shared_ptr<mlcore::Predicate>>::push_back[abi:ne200100](&v23, &v33);
      }

      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      v12 = v8[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v8[2];
          v14 = *v13 == v8;
          v8 = v13;
        }

        while (!v14);
      }

      v8 = v13;
    }

    while (v13 != v7);
  }

  if ((a3 & ~a4) != 0)
  {
    v32 = 0;
    v33 = 0uLL;
    v15 = *a2;
    if (*a2 == v7)
    {
      v22 = 0;
      v21 = 0;
    }

    else
    {
      do
      {
        v16 = v15[4];
        v17 = v15[5];
        *&v30 = v16;
        *(&v30 + 1) = v17;
        v18 = v15[6];
        v31 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((v16 & ~a4) == 0)
        {
          std::vector<std::shared_ptr<mlcore::Predicate>>::push_back[abi:ne200100](&v32, (&v30 + 8));
        }

        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        v19 = v15[1];
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v20 = v15[2];
            v14 = *v20 == v15;
            v15 = v20;
          }

          while (!v14);
        }

        v15 = v20;
      }

      while (v20 != v7);
      v21 = v32;
      v22 = v33;
    }

    memset(v27, 0, sizeof(v27));
    std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*>(v27, v21, v22, (v22 - v21) >> 4);
    mlcore::CreateAndPredicate();
    mlcore::CreateNotPredicate();
    v30 = v29;
    v29 = 0uLL;
    std::vector<std::shared_ptr<mlcore::Predicate>>::push_back[abi:ne200100](&v23, &v30);
    if (*(&v30 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
    }

    if (*(&v29 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v29 + 1));
    }

    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    v34 = v27;
    std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v34);
    *&v30 = &v32;
    std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v30);
  }

  memset(v26, 0, sizeof(v26));
  std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*>(v26, v23, v24, (v24 - v23) >> 4);
  mlcore::CreateAndPredicate();
  v32 = v26;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v32);
  v32 = &v23;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v32);
}

void sub_1A2623578(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, std::__shared_weak_count *a26, void **a27, std::__shared_weak_count *a28)
{
  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  *(v28 - 88) = &a20;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100]((v28 - 88));
  a27 = (v28 - 112);
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&a27);
  *(v28 - 112) = &a10;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100]((v28 - 112));
  if (a2 == 2)
  {
    v31 = __cxa_begin_catch(a1);
    v32 = MEMORY[0x1E695DF30];
    v33 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a10);
    (*(*v31 + 24))(v31, &a10);
    if (*(v28 - 89) >= 0)
    {
      v34 = v28 - 112;
    }

    else
    {
      v34 = *(v28 - 112);
    }

    v35 = [v33 stringWithUTF8String:v34];
    v36 = [v32 exceptionWithName:@"MediaPlatform" reason:v35 userInfo:0];
    v37 = v36;

    if (*(v28 - 89) < 0)
    {
      operator delete(*(v28 - 112));
    }

    objc_exception_throw(v36);
  }

  if (a2 == 1)
  {
    v38 = __cxa_begin_catch(a1);
    v39 = MEMORY[0x1E695DF30];
    v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v38 + 16))(v38)];
    v41 = [v39 exceptionWithName:*MEMORY[0x1E695D920] reason:v40 userInfo:0];
    v42 = v41;

    objc_exception_throw(v41);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::InPredicate<int>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F149B848;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void sub_1A2623A1C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  v25 = *(v22 - 72);
  if (v25)
  {
    *(v22 - 64) = v25;
    operator delete(v25);
  }

  *(v22 - 72) = &a9;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100]((v22 - 72));
  if (a2 == 2)
  {
    v26 = __cxa_begin_catch(a1);
    v27 = MEMORY[0x1E695DF30];
    v28 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a9);
    (*(*v26 + 24))(v26, &a9);
    if (*(v22 - 49) >= 0)
    {
      v29 = v22 - 72;
    }

    else
    {
      v29 = *(v22 - 72);
    }

    v30 = [v28 stringWithUTF8String:v29];
    v31 = [v27 exceptionWithName:@"MediaPlatform" reason:v30 userInfo:0];
    v32 = v31;

    if (*(v22 - 49) < 0)
    {
      operator delete(*(v22 - 72));
    }

    objc_exception_throw(v31);
  }

  if (a2 == 1)
  {
    v33 = __cxa_begin_catch(a1);
    v34 = MEMORY[0x1E695DF30];
    v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v33 + 16))(v33)];
    v36 = [v34 exceptionWithName:*MEMORY[0x1E695D920] reason:v35 userInfo:0];
    v37 = v36;

    objc_exception_throw(v36);
  }

  _Unwind_Resume(a1);
}

void sub_1A2623E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void ***__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char *a27, uint64_t a28, uint64_t a29)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  a27 = &a17;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&a27);
  v33 = 24;
  while (1)
  {
    v34 = *(&a28 + v33);
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    v33 -= 16;
    if (v33 == -8)
    {

      if (a2 == 2)
      {
        v35 = __cxa_begin_catch(a1);
        v36 = MEMORY[0x1E695DF30];
        v37 = MEMORY[0x1E696AEC0];
        mediaplatform::FormatOptions::FormatOptions(&a28);
        (*(*v35 + 24))(&__p, v35, &a28);
        if (a14 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        v39 = [v37 stringWithUTF8String:p_p];
        v40 = [v36 exceptionWithName:@"MediaPlatform" reason:v39 userInfo:0];
        v41 = v40;

        if (a14 < 0)
        {
          operator delete(__p);
        }

        objc_exception_throw(v40);
      }

      if (a2 == 1)
      {
        v42 = __cxa_begin_catch(a1);
        v43 = MEMORY[0x1E695DF30];
        v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v42 + 16))(v42)];
        v45 = [v43 exceptionWithName:*MEMORY[0x1E695D920] reason:v44 userInfo:0];
        v46 = v45;

        objc_exception_throw(v45);
      }

      _Unwind_Resume(a1);
    }
  }
}

void sub_1A2624164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1A2624314(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  v25 = *(v22 - 72);
  if (v25)
  {
    *(v22 - 64) = v25;
    operator delete(v25);
  }

  *(v22 - 72) = &a9;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100]((v22 - 72));
  if (a2 == 2)
  {
    v26 = __cxa_begin_catch(a1);
    v27 = MEMORY[0x1E695DF30];
    v28 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a9);
    (*(*v26 + 24))(v26, &a9);
    if (*(v22 - 49) >= 0)
    {
      v29 = v22 - 72;
    }

    else
    {
      v29 = *(v22 - 72);
    }

    v30 = [v28 stringWithUTF8String:v29];
    v31 = [v27 exceptionWithName:@"MediaPlatform" reason:v30 userInfo:0];
    v32 = v31;

    if (*(v22 - 49) < 0)
    {
      operator delete(*(v22 - 72));
    }

    objc_exception_throw(v31);
  }

  if (a2 == 1)
  {
    v33 = __cxa_begin_catch(a1);
    v34 = MEMORY[0x1E695DF30];
    v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v33 + 16))(v33)];
    v36 = [v34 exceptionWithName:*MEMORY[0x1E695D920] reason:v35 userInfo:0];
    v37 = v36;

    objc_exception_throw(v36);
  }

  _Unwind_Resume(a1);
}

void sub_1A2624AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, std::__shared_weak_count *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void ***__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, void ***p_p, std::__shared_weak_count *a49)
{
  if (a49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a49);
  }

  if (a35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a35);
  }

  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  p_p = &__p;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&p_p);
  if (a2 == 2)
  {
    v53 = __cxa_begin_catch(a1);
    v54 = MEMORY[0x1E695DF30];
    v55 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&p_p);
    (*(*v53 + 24))(&__p, v53, &p_p);
    if (a45 >= 0)
    {
      v56 = &__p;
    }

    else
    {
      v56 = __p;
    }

    v57 = [v55 stringWithUTF8String:v56];
    v58 = [v54 exceptionWithName:@"MediaPlatform" reason:v57 userInfo:0];
    v59 = v58;

    if (a45 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v58);
  }

  if (a2 == 1)
  {
    v60 = __cxa_begin_catch(a1);
    v61 = MEMORY[0x1E695DF30];
    v62 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v60 + 16))(v60)];
    v63 = [v61 exceptionWithName:*MEMORY[0x1E695D920] reason:v62 userInfo:0];
    v64 = v63;

    objc_exception_throw(v63);
  }

  _Unwind_Resume(a1);
}

void sub_1A2624F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void ***__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (a2 == 2)
  {
    v27 = __cxa_begin_catch(a1);
    v28 = MEMORY[0x1E695DF30];
    v29 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a9);
    (*(*v27 + 24))(&__p, v27, &a9);
    if (a21 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v31 = [v29 stringWithUTF8String:p_p];
    v32 = [v28 exceptionWithName:@"MediaPlatform" reason:v31 userInfo:0];
    v33 = v32;

    if (a21 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v32);
  }

  if (a2 == 1)
  {
    v34 = __cxa_begin_catch(a1);
    v35 = MEMORY[0x1E695DF30];
    v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v34 + 16))(v34)];
    v37 = [v35 exceptionWithName:*MEMORY[0x1E695D920] reason:v36 userInfo:0];
    v38 = v37;

    objc_exception_throw(v37);
  }

  _Unwind_Resume(a1);
}

void sub_1A2625610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t ***p_p, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t **__p, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  v57 = *(v54 - 248);
  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }

  *(v54 - 256) = v54 - 240;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100]((v54 - 256));
  *(v54 - 240) = &p_p;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100]((v54 - 240));
  p_p = &__p;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&p_p);
  __p = &a9;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a2 == 2)
  {
    v58 = __cxa_begin_catch(a1);
    v59 = MEMORY[0x1E695DF30];
    v60 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a9);
    (*(*v58 + 24))(&__p, v58, &a9);
    if (a53 >= 0)
    {
      v61 = &__p;
    }

    else
    {
      v61 = __p;
    }

    v62 = [v60 stringWithUTF8String:v61];
    v63 = [v59 exceptionWithName:@"MediaPlatform" reason:v62 userInfo:0];
    v64 = v63;

    if (a53 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v63);
  }

  if (a2 == 1)
  {
    v65 = __cxa_begin_catch(a1);
    v66 = MEMORY[0x1E695DF30];
    v67 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v65 + 16))(v65)];
    v68 = [v66 exceptionWithName:*MEMORY[0x1E695D920] reason:v67 userInfo:0];
    v69 = v68;

    objc_exception_throw(v68);
  }

  _Unwind_Resume(a1);
}

void sub_1A2625B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void ***__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  *(v30 - 112) = v29;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100]((v30 - 112));
  *(v30 - 112) = &__p;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100]((v30 - 112));
  if (a2 == 2)
  {
    v33 = __cxa_begin_catch(a1);
    v34 = MEMORY[0x1E695DF30];
    v35 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions((v30 - 112));
    (*(*v33 + 24))(&__p, v33, v30 - 112);
    if (a29 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v37 = [v35 stringWithUTF8String:p_p];
    v38 = [v34 exceptionWithName:@"MediaPlatform" reason:v37 userInfo:0];
    v39 = v38;

    if (a29 < 0)
    {
      operator delete(__p);
    }

    objc_exception_throw(v38);
  }

  if (a2 == 1)
  {
    v40 = __cxa_begin_catch(a1);
    v41 = MEMORY[0x1E695DF30];
    v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v40 + 16))(v40)];
    v43 = [v41 exceptionWithName:*MEMORY[0x1E695D920] reason:v42 userInfo:0];
    v44 = v43;

    objc_exception_throw(v43);
  }

  _Unwind_Resume(a1);
}

void sub_1A2626034(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(v9 - 72);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(v9 - 120);
  if (v13)
  {
    *(v9 - 112) = v13;
    operator delete(v13);
  }

  *(v9 - 120) = &a9;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100]((v9 - 120));
  if (a2 == 2)
  {
    v14 = __cxa_begin_catch(a1);
    v15 = MEMORY[0x1E695DF30];
    v16 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a9);
    (*(*v14 + 24))(v14, &a9);
    if (*(v9 - 97) >= 0)
    {
      v17 = v9 - 120;
    }

    else
    {
      v17 = *(v9 - 120);
    }

    v18 = [v16 stringWithUTF8String:v17];
    v19 = [v15 exceptionWithName:@"MediaPlatform" reason:v18 userInfo:0];
    v20 = v19;

    if (*(v9 - 97) < 0)
    {
      operator delete(*(v9 - 120));
    }

    objc_exception_throw(v19);
  }

  if (a2 == 1)
  {
    v21 = __cxa_begin_catch(a1);
    v22 = MEMORY[0x1E695DF30];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v21 + 16))(v21)];
    v24 = [v22 exceptionWithName:*MEMORY[0x1E695D920] reason:v23 userInfo:0];
    v25 = v24;

    objc_exception_throw(v24);
  }

  _Unwind_Resume(a1);
}

void sub_1A2626458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void ***__p, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, char *a23, char a24)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  a23 = &a16;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&a23);
  v28 = 24;
  while (1)
  {
    v29 = *(&a24 + v28);
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    v28 -= 16;
    if (v28 == -8)
    {
      if (a22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a22);
      }

      if (a11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a11);
      }

      if (a2 == 2)
      {
        v30 = __cxa_begin_catch(a1);
        v31 = MEMORY[0x1E695DF30];
        v32 = MEMORY[0x1E696AEC0];
        mediaplatform::FormatOptions::FormatOptions(&a24);
        (*(*v30 + 24))(&__p, v30, &a24);
        if (a15 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        v34 = [v32 stringWithUTF8String:p_p];
        v35 = [v31 exceptionWithName:@"MediaPlatform" reason:v34 userInfo:0];
        v36 = v35;

        if (a15 < 0)
        {
          operator delete(__p);
        }

        objc_exception_throw(v35);
      }

      if (a2 == 1)
      {
        v37 = __cxa_begin_catch(a1);
        v38 = MEMORY[0x1E695DF30];
        v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v37 + 16))(v37)];
        v40 = [v38 exceptionWithName:*MEMORY[0x1E695D920] reason:v39 userInfo:0];
        v41 = v40;

        objc_exception_throw(v40);
      }

      _Unwind_Resume(a1);
    }
  }
}

void sub_1A26267DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1A2626920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::ExistsPredicate>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F149B938;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void std::__shared_ptr_emplace<mlcore::Query>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F149B8E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void std::__shared_ptr_emplace<mlcore::ComparisonPropertyPredicate>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F149B898;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void sub_1A2627090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1A2627274(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(v9 - 56);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  *(v9 - 64) = &a9;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100]((v9 - 64));
  if (a2 == 2)
  {
    v13 = __cxa_begin_catch(a1);
    v14 = MEMORY[0x1E695DF30];
    v15 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a9);
    (*(*v13 + 24))(v13, &a9);
    if (*(v9 - 41) >= 0)
    {
      v16 = v9 - 64;
    }

    else
    {
      v16 = *(v9 - 64);
    }

    v17 = [v15 stringWithUTF8String:v16];
    v18 = [v14 exceptionWithName:@"MediaPlatform" reason:v17 userInfo:0];
    v19 = v18;

    if (*(v9 - 41) < 0)
    {
      operator delete(*(v9 - 64));
    }

    objc_exception_throw(v18);
  }

  if (a2 == 1)
  {
    v20 = __cxa_begin_catch(a1);
    v21 = MEMORY[0x1E695DF30];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v20 + 16))(v20)];
    v23 = [v21 exceptionWithName:*MEMORY[0x1E695D920] reason:v22 userInfo:0];
    v24 = v23;

    objc_exception_throw(v23);
  }

  _Unwind_Resume(a1);
}

void sub_1A2627700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

id MPMediaLibraryPropertyCacheValueForProperty(ModelPropertyBase *a1, int8x8_t *a2)
{
  v4 = (*(*a1 + 80))(a1);
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_86;
      }

      v11 = std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::find<mlcore::ModelProperty<int> *>(&a2[21], a1);
      if (v11)
      {
        v12 = v11[3];
      }

      else
      {
        v12 = 0;
      }

      v29 = [MEMORY[0x1E696AD98] numberWithLongLong:v12];
    }

    else
    {
      v27 = std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::find<mlcore::ModelProperty<int> *>(&a2[16], a1);
      if (v27)
      {
        v28 = *(v27 + 6);
      }

      else
      {
        v28 = 0;
      }

      v29 = [MEMORY[0x1E696AD98] numberWithInt:v28];
    }

LABEL_79:
    v39 = v29;
    goto LABEL_80;
  }

  if (v4 == 2)
  {
    v13 = a2[12];
    v14 = 0.0;
    if (v13)
    {
      v15 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ (a1 >> 32));
      v16 = 0x9DDFEA08EB382D69 * ((a1 >> 32) ^ (v15 >> 47) ^ v15);
      v17 = 0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47));
      v18 = vcnt_s8(v13);
      v18.i16[0] = vaddlv_u8(v18);
      if (v18.u32[0] > 1uLL)
      {
        v19 = v17;
        if (v17 >= *&v13)
        {
          v19 = v17 % *&v13;
        }
      }

      else
      {
        v19 = v17 & (*&v13 - 1);
      }

      v30 = *(*&a2[11] + 8 * v19);
      if (v30)
      {
        for (i = *v30; i; i = *i)
        {
          v32 = *(i + 1);
          if (v17 == v32)
          {
            if (*(i + 2) == a1)
            {
              v14 = i[3];
              break;
            }
          }

          else
          {
            if (v18.u32[0] > 1uLL)
            {
              if (v32 >= *&v13)
              {
                v32 %= *&v13;
              }
            }

            else
            {
              v32 &= *&v13 - 1;
            }

            if (v32 != v19)
            {
              break;
            }
          }
        }
      }
    }

    v29 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
    goto LABEL_79;
  }

  if (v4 != 3)
  {
    if (v4 == 4)
    {
      mediaplatform::Data::Data(v48);
      v5 = a2[2];
      if (v5)
      {
        v6 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ (a1 >> 32));
        v7 = 0x9DDFEA08EB382D69 * ((a1 >> 32) ^ (v6 >> 47) ^ v6);
        v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
        v9 = vcnt_s8(v5);
        v9.i16[0] = vaddlv_u8(v9);
        if (v9.u32[0] > 1uLL)
        {
          v10 = v8;
          if (v8 >= *&v5)
          {
            v10 = v8 % *&v5;
          }
        }

        else
        {
          v10 = v8 & (*&v5 - 1);
        }

        v40 = *(*&a2[1] + 8 * v10);
        if (v40)
        {
          for (j = *v40; j; j = *j)
          {
            v42 = j[1];
            if (v8 == v42)
            {
              if (j[2] == a1)
              {
                mediaplatform::Data::Data();
                goto LABEL_77;
              }
            }

            else
            {
              if (v9.u32[0] > 1uLL)
              {
                if (v42 >= *&v5)
                {
                  v42 %= *&v5;
                }
              }

              else
              {
                v42 &= *&v5 - 1;
              }

              if (v42 != v10)
              {
                break;
              }
            }
          }
        }
      }

      mediaplatform::Data::Data();
LABEL_77:
      mediaplatform::Data::~Data(v48);
      v43 = MEMORY[0x1E695DEF0];
      v44 = mediaplatform::Data::bytes(__p);
      v39 = [v43 dataWithBytes:v44 length:mediaplatform::Data::length(__p)];
      mediaplatform::Data::~Data(__p);
      goto LABEL_80;
    }

LABEL_86:
    v46 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"unknown property type" userInfo:0];
    objc_exception_throw(v46);
  }

  v20 = MEMORY[0x1E696AEC0];
  std::string::basic_string[abi:ne200100]<0>(&v49, "");
  v21 = a2[7];
  if (v21)
  {
    v22 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ (a1 >> 32));
    v23 = 0x9DDFEA08EB382D69 * ((a1 >> 32) ^ (v22 >> 47) ^ v22);
    v24 = 0x9DDFEA08EB382D69 * (v23 ^ (v23 >> 47));
    v25 = vcnt_s8(v21);
    v25.i16[0] = vaddlv_u8(v25);
    if (v25.u32[0] > 1uLL)
    {
      v26 = v24;
      if (v24 >= *&v21)
      {
        v26 = v24 % *&v21;
      }
    }

    else
    {
      v26 = v24 & (*&v21 - 1);
    }

    v33 = *(*&a2[6] + 8 * v26);
    if (v33)
    {
      for (k = *v33; k; k = *k)
      {
        v35 = k[1];
        if (v24 == v35)
        {
          if (k[2] == a1)
          {
            if (*(k + 47) < 0)
            {
              std::string::__init_copy_ctor_external(__p, k[3], k[4]);
            }

            else
            {
              __p[0] = *(k + 1);
            }

            goto LABEL_52;
          }
        }

        else
        {
          if (v25.u32[0] > 1uLL)
          {
            if (v35 >= *&v21)
            {
              v35 %= *&v21;
            }
          }

          else
          {
            v35 &= *&v21 - 1;
          }

          if (v35 != v26)
          {
            break;
          }
        }
      }
    }
  }

  __p[0] = v49;
  memset(&v49, 0, sizeof(v49));
LABEL_52:
  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = __p;
  }

  else
  {
    v36 = __p[0].__r_.__value_.__r.__words[0];
  }

  v37 = [v20 stringWithUTF8String:{v36, *&__p[0].__r_.__value_.__l.__data_, __p[0].__r_.__value_.__r.__words[2]}];
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if ([v37 length])
  {
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  v39 = v38;

LABEL_80:

  return v39;
}

void _MPMLInitPropertyMaps(uint64_t a1, uint64_t a2)
{
  v905 = *MEMORY[0x1E69E9840];
  v2 = [MPMediaLibraryEntityTranslator translatorForTransientMPModelClass:objc_opt_class()];
  *__p = 0u;
  *v877 = 0u;
  LODWORD(v878[0]) = 1065353216;
  [v2 mapIdentifierMLProperties:__p identifierCreationBlock:&__block_literal_global_38_43833];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v3 = __p[0];
  __p[0] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  [v2 setEntityQueryBlock:{&__block_literal_global_41_43834, __p[0]}];
  v4 = objc_opt_class();
  [v2 mapRelationshipKey:@"MPModelRelationshipGenericSong" toModelClass:v4 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v4)];
  v5 = objc_opt_class();
  [v2 mapRelationshipKey:@"MPModelRelationshipGenericAlbum" toModelClass:v5 transient:1 usingForeignPropertyBase:mlcore::AlbumPropertyPersistentID(v5)];
  v6 = objc_opt_class();
  [v2 mapRelationshipKey:@"MPModelRelationshipGenericArtist" toModelClass:v6 transient:1 usingForeignPropertyBase:mlcore::AlbumPropertyArtistPersistentID(v6)];
  v7 = objc_opt_class();
  [v2 mapRelationshipKey:@"MPModelRelationshipGenericPlaylist" toModelClass:v7 transient:1 usingForeignPropertyBase:mlcore::PlaylistPropertyPersistentID(v7)];
  v8 = objc_opt_class();
  [v2 mapRelationshipKey:@"MPModelRelationshipGenericPlaylistEntry" toModelClass:v8 transient:1 usingForeignPropertyBase:mlcore::PlaylistItemPropertyPersistentID(v8)];
  v9 = objc_opt_class();
  [v2 mapRelationshipKey:@"MPModelRelationshipGenericTVEpisode" toModelClass:v9 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v9)];
  v10 = objc_opt_class();
  [v2 mapRelationshipKey:@"MPModelRelationshipGenericTVSeason" toModelClass:v10 transient:1 usingForeignPropertyBase:mlcore::AlbumPropertyPersistentID(v10)];
  v11 = objc_opt_class();
  [v2 mapRelationshipKey:@"MPModelRelationshipGenericTVShow" toModelClass:v11 transient:1 usingForeignPropertyBase:mlcore::ItemArtistPropertyPersistentID(v11)];
  v12 = objc_opt_class();
  [v2 mapRelationshipKey:@"MPModelRelationshipGenericMovie" toModelClass:v12 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v12)];
  v13 = objc_opt_class();
  [v2 mapRelationshipKey:@"MPModelRelationshipGenericPodcast" toModelClass:v13 transient:1 usingForeignPropertyBase:mlcore::AlbumPropertyPersistentID(v13)];
  v14 = objc_opt_class();
  [v2 mapRelationshipKey:@"MPModelRelationshipGenericPodcastEpisode" toModelClass:v14 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v14)];
  v15 = objc_opt_class();
  [v2 mapRelationshipKey:@"MPModelRelationshipGenericComposer" toModelClass:v15 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyComposerPersistentID(v15)];
  v16 = objc_opt_class();
  [v2 mapRelationshipKey:@"MPModelRelationshipGenericGenre" toModelClass:v16 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyGenrePersistentID(v16)];

  _MPMLInitPropertySongMap();
  v17 = [MPMediaLibraryEntityTranslator translatorForTransientMPModelClass:objc_opt_class()];
  v18 = mlcore::ItemPropertyPersistentID(v17);
  std::string::basic_string[abi:ne200100]<0>(v898, "pid");
  v900 = v18;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v17 mapIdentifierMLProperties:__p identifierCreationBlock:&__block_literal_global_213_43836];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v19 = __p[0];
  __p[0] = 0;
  if (v19)
  {
    operator delete(v19);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v20 = mlcore::ItemPropertyLocation(v19);
  v21 = std::string::basic_string[abi:ne200100]<0>(__p, "location");
  v877[1] = v20;
  v22 = mlcore::ItemPropertyBaseLocationPath(v21);
  std::string::basic_string[abi:ne200100]<0>(v878, "baseLocationPath");
  v879 = v22;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 2);
  [(mlcore *)v17 mapPropertyKey:@"MPModelPropertyFileAssetFilePath" withPropertiesToFetch:v898 valueTransformer:&__block_literal_global_217_43839];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v23 = v898[0];
  v898[0] = 0;
  if (v23)
  {
    operator delete(v23);
  }

  for (i = 0; i != -8; i -= 4)
  {
    if (SHIBYTE(v878[i + 2]) < 0)
    {
      operator delete(v878[i]);
    }
  }

  v25 = [(mlcore *)v17 mapPropertyKey:@"MPModelPropertyFileAssetFileSize" toMLProperty:mlcore::ItemPropertyFileSize(v23)];
  HasStreamingAsset = mlcore::ItemPropertyHasStreamingAsset(v25);
  v27 = std::string::basic_string[abi:ne200100]<0>(__p, "hasStreamingAsset");
  v877[1] = HasStreamingAsset;
  v28 = mlcore::ItemPropertyLocation(v27);
  v29 = std::string::basic_string[abi:ne200100]<0>(v878, "location");
  v879 = v28;
  v30 = mlcore::ItemPropertyBaseLocationPath(v29);
  std::string::basic_string[abi:ne200100]<0>(v880, "baseLocationPath");
  v881 = v30;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 3);
  [(mlcore *)v17 mapPropertyKey:@"MPModelPropertyFileAssetPurchaseBundleFilePath" withPropertiesToFetch:v898 valueTransformer:&__block_literal_global_220];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v31 = v898[0];
  v898[0] = 0;
  if (v31)
  {
    operator delete(v31);
  }

  for (j = 0; j != -12; j -= 4)
  {
    if (SHIBYTE(v880[j + 2]) < 0)
    {
      operator delete(v880[j]);
    }
  }

  IsProtected = mlcore::ItemPropertyIsProtected(v31);
  std::string::basic_string[abi:ne200100]<0>(v898, "protected");
  v900 = IsProtected;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v17 mapPropertyKey:@"MPModelPropertyFileAssetProtectionType" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_226];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v34 = __p[0];
  __p[0] = 0;
  if (v34)
  {
    operator delete(v34);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  HasLoFiStreamingAsset = mlcore::ItemPropertyHasLoFiStreamingAsset(v34);
  std::string::basic_string[abi:ne200100]<0>(v898, "hasLoFiStreamingAsset");
  v900 = HasLoFiStreamingAsset;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v17 mapPropertyKey:@"MPModelPropertyFileAssetQualityType" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_229_43843];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v36 = __p[0];
  __p[0] = 0;
  if (v36)
  {
    operator delete(v36);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  HasNonPurgeableAsset = mlcore::ItemPropertyHasNonPurgeableAsset(v36);
  std::string::basic_string[abi:ne200100]<0>(v898, "hasNonPurgeableAsset");
  v900 = HasNonPurgeableAsset;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v17 mapPropertyKey:@"MPModelPropertyFileAssetNonPurgeable" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_235];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v38 = __p[0];
  __p[0] = 0;
  if (v38)
  {
    operator delete(v38);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v39 = [(mlcore *)v17 mapPropertyKey:@"MPModelPropertyFileAssetHLSKeyServerURL" toMLProperty:mlcore::ItemPropertyHLSKeyServerURL(v38)];
  v40 = [(mlcore *)v17 mapPropertyKey:@"MPModelPropertyFileAssetHLSKeyServerProtocol" toMLProperty:mlcore::ItemPropertyHLSKeyServerProtocol(v39)];
  v41 = [(mlcore *)v17 mapPropertyKey:@"MPModelPropertyFileAssetHLSKeyCertificateURL" toMLProperty:mlcore::ItemPropertyHLSKeyCertificateURL(v40)];
  v42 = mlcore::ItemPropertyHLSAssetTraits(v41);
  v43 = std::string::basic_string[abi:ne200100]<0>(__p, "hlsTraits");
  v877[1] = v42;
  IsMasteredForiTunes = mlcore::ItemPropertyIsMasteredForiTunes(v43);
  std::string::basic_string[abi:ne200100]<0>(v878, "masteredForiTunes");
  v879 = IsMasteredForiTunes;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 2);
  [(mlcore *)v17 mapPropertyKey:@"MPModelPropertyFileAssetTraits" withPropertiesToFetch:v898 valueTransformer:&__block_literal_global_239];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v45 = v898[0];
  v898[0] = 0;
  if (v45)
  {
    operator delete(v45);
  }

  for (k = 0; k != -8; k -= 4)
  {
    if (SHIBYTE(v878[k + 2]) < 0)
    {
      operator delete(v878[k]);
    }
  }

  v47 = [MPMediaLibraryEntityTranslator translatorForTransientMPModelClass:objc_opt_class()];
  v48 = mlcore::ItemPropertyPersistentID(v47);
  std::string::basic_string[abi:ne200100]<0>(v898, "pid");
  v900 = v48;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v47 mapIdentifierMLProperties:__p identifierCreationBlock:&__block_literal_global_241_43847];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v49 = __p[0];
  __p[0] = 0;
  if (v49)
  {
    operator delete(v49);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  *__p = 0u;
  *v877 = 0u;
  LODWORD(v878[0]) = 1065353216;
  [(mlcore *)v47 mapPropertyKey:@"MPModelPropertyHomeSharingAssetProtectedContentSupportStorageFileURL" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_243_43848];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v50 = __p[0];
  __p[0] = 0;
  if (v50)
  {
    operator delete(v50);
  }

  v51 = mlcore::ItemPropertyLocation(v50);
  v52 = std::string::basic_string[abi:ne200100]<0>(__p, "location");
  v877[1] = v51;
  v53 = mlcore::ItemPropertyHomeSharingID(v52);
  std::string::basic_string[abi:ne200100]<0>(v878, "homeSharingID");
  v879 = v53;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 2);
  [(mlcore *)v47 mapPropertyKey:@"MPModelPropertyHomeSharingAssetURL" withPropertiesToFetch:v898 valueTransformer:&__block_literal_global_246];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v54 = v898[0];
  v898[0] = 0;
  if (v54)
  {
    operator delete(v54);
  }

  for (m = 0; m != -8; m -= 4)
  {
    if (SHIBYTE(v878[m + 2]) < 0)
    {
      operator delete(v878[m]);
    }
  }

  [(mlcore *)v47 mapPropertyKey:@"MPModelPropertyHomeSharingAssetAvailable" toMLProperty:mlcore::ItemPropertyHomeSharingAssetAvailable(v54)];

  v56 = [MPMediaLibraryEntityTranslator translatorForTransientMPModelClass:objc_opt_class()];
  v57 = mlcore::ItemPropertyPersistentID(v56);
  std::string::basic_string[abi:ne200100]<0>(v898, "pid");
  v900 = v57;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v56 mapIdentifierMLProperties:__p identifierCreationBlock:&__block_literal_global_254_43850];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v58 = __p[0];
  __p[0] = 0;
  if (v58)
  {
    operator delete(v58);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v59 = [(mlcore *)v56 mapPropertyKey:@"MPModelPropertyStoreAssetAccountIdentifier" toMLProperty:mlcore::ItemPropertyStoreAccountID(v58)];
  v60 = [(mlcore *)v56 mapPropertyKey:@"MPModelPropertyStoreAssetShouldReportPlayEvents" toMLProperty:mlcore::ItemPropertyStoreNeedsReporting(v59)];
  v61 = [(mlcore *)v56 mapPropertyKey:@"MPModelPropertyStoreAssetRedownloadable" toMLProperty:mlcore::ItemPropertyIsStoreRedownloadable(v60)];
  matched = mlcore::ItemPropertyMatchRedownloadParameters(v61);
  v63 = std::string::basic_string[abi:ne200100]<0>(__p, "matchRedownloadParams");
  v877[1] = matched;
  v64 = mlcore::ItemPropertyPurchaseHistoryRedownloadParameters(v63);
  v65 = std::string::basic_string[abi:ne200100]<0>(v878, "purchaseHistoryRedownloadParams");
  v879 = v64;
  v66 = mlcore::ItemPropertyStoreCloudID(v65);
  v67 = std::string::basic_string[abi:ne200100]<0>(v880, "storeCloudID");
  v881 = v66;
  v68 = mlcore::ItemPropertyPurchaseHistoryID(v67);
  std::string::basic_string[abi:ne200100]<0>(v882, "purchaseHistoryID");
  v883 = v68;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 4);
  [(mlcore *)v56 mapPropertyKey:@"MPModelPropertyStoreAssetRedownloadParameters" withPropertiesToFetch:v898 valueTransformer:&__block_literal_global_260];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v69 = v898[0];
  v898[0] = 0;
  if (v69)
  {
    operator delete(v69);
  }

  for (n = 0; n != -16; n -= 4)
  {
    if (SHIBYTE(v882[n + 2]) < 0)
    {
      operator delete(v882[n]);
    }
  }

  v71 = MPModelPropertyStoreAssetNeedsUserUpload;
  v72 = mlcore::ItemPropertyCloudAssetAvailable(v69);
  v73 = std::string::basic_string[abi:ne200100]<0>(__p, "cloudAssetAvailable");
  v877[1] = v72;
  v74 = mlcore::ItemPropertyStoreCloudStatus(v73);
  v75 = std::string::basic_string[abi:ne200100]<0>(v878, "cloudStatus");
  v879 = v74;
  v76 = mlcore::ItemPropertyStoreCloudID(v75);
  std::string::basic_string[abi:ne200100]<0>(v880, "storeCloudID");
  v881 = v76;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 3);
  [(mlcore *)v56 mapPropertyKey:v71 withPropertiesToFetch:v898 valueTransformer:&__block_literal_global_264];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v77 = v898[0];
  v898[0] = 0;
  if (v77)
  {
    operator delete(v77);
  }

  for (ii = 0; ii != -12; ii -= 4)
  {
    if (SHIBYTE(v880[ii + 2]) < 0)
    {
      operator delete(v880[ii]);
    }
  }

  v79 = mlcore::ItemPropertyStorePlaybackEndpointType(v77);
  v80 = std::string::basic_string[abi:ne200100]<0>(__p, "endpointType");
  v877[1] = v79;
  v81 = mlcore::ItemPropertyMatchRedownloadParameters(v80);
  v82 = std::string::basic_string[abi:ne200100]<0>(v878, "matchRedownloadParams");
  v879 = v81;
  v83 = mlcore::ItemPropertyPurchaseHistoryRedownloadParameters(v82);
  v84 = std::string::basic_string[abi:ne200100]<0>(v880, "purchaseHistoryRedownloadParams");
  v881 = v83;
  v85 = mlcore::ItemPropertyStoreCloudID(v84);
  v86 = std::string::basic_string[abi:ne200100]<0>(v882, "storeCloudID");
  v883 = v85;
  v87 = mlcore::ItemPropertyStoreID(v86);
  v88 = std::string::basic_string[abi:ne200100]<0>(v884, "storeAdamID");
  v885 = v87;
  v89 = mlcore::ItemPropertyCloudAssetAvailable(v88);
  std::string::basic_string[abi:ne200100]<0>(v886, "cloudAssetAvailable");
  v887 = v89;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 6);
  [(mlcore *)v56 mapPropertyKey:@"MPModelPropertyStoreAssetEndpointType" withPropertiesToFetch:v898 valueTransformer:&__block_literal_global_268];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v90 = v898[0];
  v898[0] = 0;
  if (v90)
  {
    operator delete(v90);
  }

  for (jj = 0; jj != -24; jj -= 4)
  {
    if (SHIBYTE(v886[jj + 2]) < 0)
    {
      operator delete(v886[jj]);
    }
  }

  v92 = mlcore::ItemPropertyStorePlaybackEndpointType(v90);
  v93 = std::string::basic_string[abi:ne200100]<0>(__p, "endpointType");
  v877[1] = v92;
  IsArtistUploadedContent = mlcore::ItemPropertyIsArtistUploadedContent(v93);
  v95 = std::string::basic_string[abi:ne200100]<0>(v878, "isAUC");
  v879 = IsArtistUploadedContent;
  v96 = mlcore::ItemPropertyEpisodeType(v95);
  std::string::basic_string[abi:ne200100]<0>(v880, "episodeType");
  v881 = v96;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 3);
  [(mlcore *)v56 mapPropertyKey:@"MPModelPropertyStoreAssetSubscriptionRequired" withPropertiesToFetch:v898 valueTransformer:&__block_literal_global_272];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v97 = v898[0];
  v898[0] = 0;
  if (v97)
  {
    operator delete(v97);
  }

  for (kk = 0; kk != -12; kk -= 4)
  {
    if (SHIBYTE(v880[kk + 2]) < 0)
    {
      operator delete(v880[kk]);
    }
  }

  v99 = [MPMediaLibraryEntityTranslator translatorForTransientMPModelClass:objc_opt_class()];
  v100 = mlcore::ItemPropertyPersistentID(v99);
  std::string::basic_string[abi:ne200100]<0>(v898, "pid");
  v900 = v100;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v99 mapIdentifierMLProperties:__p identifierCreationBlock:&__block_literal_global_274];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v101 = __p[0];
  __p[0] = 0;
  if (v101)
  {
    operator delete(v101);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v102 = [(mlcore *)v99 mapPropertyKey:@"MPModelPropertyLyricsText" toMLProperty:mlcore::ItemPropertyLyrics(v101)];
  v103 = [(mlcore *)v99 mapPropertyKey:@"MPModelPropertyLyricsHasStoreLyrics" toMLProperty:mlcore::ItemPropertyStoreLyricsAvailable(v102)];
  v104 = [(mlcore *)v99 mapPropertyKey:@"MPModelPropertyLyricsHasTimeSyncedLyrics" toMLProperty:mlcore::ItemPropertyTimeSyncedLyricsAvailable(v103)];
  [(mlcore *)v99 mapPropertyKey:@"MPModelPropertyLyricsHasLibraryLyrics" toMLProperty:mlcore::ItemPropertyLibraryLyricsAvailable(v104)];

  v105 = MEMORY[0x1A58E1180]();
  v106 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v105];
  v107 = mlcore::AlbumPropertyPersistentID(v106);
  v108 = std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v877[1] = v107;
  v109 = mlcore::AlbumPropertyStoreID(v108);
  v110 = std::string::basic_string[abi:ne200100]<0>(v878, "storeID");
  v879 = v109;
  v111 = mlcore::AlbumPropertySyncID(v110);
  v112 = std::string::basic_string[abi:ne200100]<0>(v880, "syncID");
  v881 = v111;
  v113 = mlcore::AlbumPropertyCloudLibraryID(v112);
  std::string::basic_string[abi:ne200100]<0>(v882, "albumCloudLibraryID");
  v883 = v113;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 4);
  [(mlcore *)v106 mapIdentifierMLProperties:v898 identifierCreationBlock:&__block_literal_global_277];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v114 = v898[0];
  v898[0] = 0;
  if (v114)
  {
    operator delete(v114);
  }

  for (mm = 0; mm != -16; mm -= 4)
  {
    if (SHIBYTE(v882[mm + 2]) < 0)
    {
      operator delete(v882[mm]);
    }
  }

  [(mlcore *)v106 setEntityQueryBlock:&__block_literal_global_279];
  v116 = [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumIsCompilation" toMLProperty:mlcore::AlbumPropertyAllCompilations([(mlcore *)v106 setAllowedItemPredicatesBlock:&__block_literal_global_291])];
  v117 = [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumIsClassical" toMLProperty:mlcore::AlbumPropertyContainsClassicalWork(v116)];
  v118 = [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumCopyrightText" toMLProperty:mlcore::AlbumPropertyCopyright(v117)];
  v119 = mlcore::AlbumPropertyTitle(v118);
  std::string::basic_string[abi:ne200100]<0>(v895, "title");
  v897 = v119;
  v120 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, v895, 1);
  HasTitle = mlcore::AlbumPropertyHasTitle(v120);
  v122 = std::string::basic_string[abi:ne200100]<0>(__p, "hasTitle");
  v877[1] = HasTitle;
  v123 = mlcore::AlbumPropertyOrder(v122);
  std::string::basic_string[abi:ne200100]<0>(v878, "titleOrder");
  v879 = v123;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v902, __p, 2);
  [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumTitle" withPropertiesToFetch:v898 propertiesToSort:v902 sortTransformer:&__block_literal_global_294 filterTransformer:&__block_literal_global_296_43867 valueTransformer:&__block_literal_global_301];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v903);
  v124 = v902[0];
  v902[0] = 0;
  if (v124)
  {
    operator delete(v124);
  }

  for (nn = 0; nn != -8; nn -= 4)
  {
    if (SHIBYTE(v878[nn + 2]) < 0)
    {
      operator delete(v878[nn]);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v126 = v898[0];
  v898[0] = 0;
  if (v126)
  {
    operator delete(v126);
  }

  if (SHIBYTE(v896) < 0)
  {
    operator delete(v895[0]);
  }

  IsPreOrder = mlcore::AlbumPropertyIsPreOrder(v126);
  std::string::basic_string[abi:ne200100]<0>(v898, "isPreOrder");
  v900 = IsPreOrder;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumPreorder" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_304];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v128 = __p[0];
  __p[0] = 0;
  if (v128)
  {
    operator delete(v128);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  *__p = 0u;
  *v877 = 0u;
  LODWORD(v878[0]) = 1065353216;
  [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumEditorNotes" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_306];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v129 = __p[0];
  __p[0] = 0;
  if (v129)
  {
    operator delete(v129);
  }

  *__p = 0u;
  *v877 = 0u;
  LODWORD(v878[0]) = 1065353216;
  [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumShortEditorNotes" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_308];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v130 = __p[0];
  __p[0] = 0;
  if (v130)
  {
    operator delete(v130);
  }

  v131 = mlcore::AlbumPropertyRepresentativeItemPersistentID(v130);
  v132 = std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v877[1] = v131;
  v133 = mlcore::AlbumPropertyRepresentativeItemMediaType(v132);
  v134 = std::string::basic_string[abi:ne200100]<0>(v878, "mediaType");
  v879 = v133;
  v135 = mlcore::AlbumPropertyRepresentativeItemAvailableArtworkToken(v134);
  v136 = std::string::basic_string[abi:ne200100]<0>(v880, "availableArtworkToken");
  v881 = v135;
  v137 = mlcore::AlbumPropertyRepresentativeItemFetchableArtworkToken(v136);
  v138 = std::string::basic_string[abi:ne200100]<0>(v882, "fetchableArtworkToken");
  v883 = v137;
  v139 = mlcore::AlbumPropertyRepresentativeItemFetchableArtworkSourceType(v138);
  std::string::basic_string[abi:ne200100]<0>(v884, "fetchableArtworkSourceType");
  v885 = v139;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 5);
  [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumArtwork" withPropertiesToFetch:v898 valueTransformer:&__block_literal_global_310_43874, __p[0]];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v140 = v898[0];
  v898[0] = 0;
  if (v140)
  {
    operator delete(v140);
  }

  for (i1 = 0; i1 != -20; i1 -= 4)
  {
    if (SHIBYTE(v884[i1 + 2]) < 0)
    {
      operator delete(v884[i1]);
    }
  }

  *__p = 0u;
  *v877 = 0u;
  LODWORD(v878[0]) = 1065353216;
  [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumStaticTallEditorialArtwork" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_312];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v142 = __p[0];
  __p[0] = 0;
  if (v142)
  {
    operator delete(v142);
  }

  *__p = 0u;
  *v877 = 0u;
  LODWORD(v878[0]) = 1065353216;
  [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumSuperHeroTallEditorialArtwork" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_314];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v143 = __p[0];
  __p[0] = 0;
  if (v143)
  {
    operator delete(v143);
  }

  v144 = [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumTrackCount" toMLProperty:mlcore::AlbumPropertyItemCount(v143)];
  v145 = [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumMaximumItemTrackNumber" toMLProperty:mlcore::AlbumPropertyMaximumItemTrackNumber(v144)];
  v146 = mlcore::AlbumPropertyDateReleased(v145);
  std::string::basic_string[abi:ne200100]<0>(v898, "dateReleased");
  v900 = v146;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumReleaseDateComponents" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_317];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v147 = __p[0];
  __p[0] = 0;
  if (v147)
  {
    operator delete(v147);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v148 = mlcore::AlbumPropertyLatestItemDateAdded(v147);
  std::string::basic_string[abi:ne200100]<0>(v898, "libraryAdded");
  v900 = v148;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumLibraryAddedDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_319];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v149 = __p[0];
  __p[0] = 0;
  if (v149)
  {
    operator delete(v149);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v150 = mlcore::AlbumPropertyDateDownloaded(v149);
  std::string::basic_string[abi:ne200100]<0>(v898, "downloadedDate");
  v900 = v150;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumDownloadedDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_321];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v151 = __p[0];
  __p[0] = 0;
  if (v151)
  {
    operator delete(v151);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v152 = mlcore::AlbumPropertyVolumeNormalization(v151);
  std::string::basic_string[abi:ne200100]<0>(v898, "volumeNormalization");
  v900 = v152;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumVolumeNormalization" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_323];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v153 = __p[0];
  __p[0] = 0;
  if (v153)
  {
    operator delete(v153);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v154 = [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumYear" toMLProperty:mlcore::AlbumPropertyYear(v153)];
  v155 = mlcore::AlbumPropertyLibraryTracksItemCount(v154);
  std::string::basic_string[abi:ne200100]<0>(v898, "libraryTracksItemCount");
  v900 = v155;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumLibraryAdded" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_326];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v156 = __p[0];
  __p[0] = 0;
  if (v156)
  {
    operator delete(v156);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v157 = mlcore::AlbumPropertyExplicitLibraryTracksItemCount(v156);
  std::string::basic_string[abi:ne200100]<0>(v898, "explicitLibraryTracksItemCount");
  v900 = v157;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumHasExplicitContent" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_329];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v158 = __p[0];
  __p[0] = 0;
  if (v158)
  {
    operator delete(v158);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v159 = mlcore::AlbumPropertyCleanLibraryTracksItemCount(v158);
  std::string::basic_string[abi:ne200100]<0>(v898, "cleanLibraryTracksItemCount");
  v900 = v159;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumCleanSongCount" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_332_43882];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v160 = __p[0];
  __p[0] = 0;
  if (v160)
  {
    operator delete(v160);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  *__p = 0u;
  *v877 = 0u;
  LODWORD(v878[0]) = 1065353216;
  [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumLibraryAddEligible" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_334];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v161 = __p[0];
  __p[0] = 0;
  if (v161)
  {
    operator delete(v161);
  }

  v162 = mlcore::AlbumPropertyDatePlayedLocal(v161);
  std::string::basic_string[abi:ne200100]<0>(v898, "datePlayedLocal");
  v900 = v162;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumLastDevicePlaybackDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_337];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v163 = __p[0];
  __p[0] = 0;
  if (v163)
  {
    operator delete(v163);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v164 = mlcore::AlbumPropertyRepresentativeItemPersistentID(v163);
  IsExplicit = mlcore::ItemPropertyIsExplicit(v164);
  Property = MPMediaLibraryGetProperty(v164, IsExplicit);
  std::string::basic_string[abi:ne200100]<0>(v898, "representativeItemExplicit");
  v900 = Property;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumHasCleanContent" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_340];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v167 = __p[0];
  __p[0] = 0;
  if (v167)
  {
    operator delete(v167);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v168 = mlcore::AlbumPropertyKeepLocal(v167);
  std::string::basic_string[abi:ne200100]<0>(v898, "keepLocal");
  v900 = v168;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumKeepLocalEnableState" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_342_43886];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v169 = __p[0];
  __p[0] = 0;
  if (v169)
  {
    operator delete(v169);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v170 = mlcore::AlbumPropertyKeepLocalStatus(v169);
  std::string::basic_string[abi:ne200100]<0>(v898, "keepLocalStatus");
  v900 = v170;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumKeepLocalManagedStatus" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_344];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v171 = __p[0];
  __p[0] = 0;
  if (v171)
  {
    operator delete(v171);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v172 = mlcore::AlbumPropertyKeepLocalStatusReason(v171);
  std::string::basic_string[abi:ne200100]<0>(v898, "keepLocalStatusReason");
  v900 = v172;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumKeepLocalManagedStatusReason" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_346];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v173 = __p[0];
  __p[0] = 0;
  if (v173)
  {
    operator delete(v173);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v174 = mlcore::AlbumPropertyKeepLocalConstraints(v173);
  std::string::basic_string[abi:ne200100]<0>(v898, "keepLocalConstraints");
  v900 = v174;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumKeepLocalConstraints" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_348];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v175 = __p[0];
  __p[0] = 0;
  if (v175)
  {
    operator delete(v175);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v176 = mlcore::AlbumPropertyAppData(v175);
  std::string::basic_string[abi:ne200100]<0>(v898, "appData");
  v900 = v176;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumSongPopularity" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_351];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v177 = __p[0];
  __p[0] = 0;
  if (v177)
  {
    operator delete(v177);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v178 = mlcore::AlbumPropertyRepresentativeItemPersistentID(v177);
  v179 = mlcore::ItemPropertyHLSAudioCapability(v178);
  v180 = MPMediaLibraryGetProperty(v178, v179);
  v181 = std::string::basic_string[abi:ne200100]<0>(__p, "hlsAudioCapability");
  v877[1] = v180;
  v182 = mlcore::AlbumPropertyRepresentativeItemPersistentID(v181);
  v183 = mlcore::ItemPropertyIsMasteredForiTunes(v182);
  v184 = MPMediaLibraryGetProperty(v182, v183);
  std::string::basic_string[abi:ne200100]<0>(v878, "masteredForiTunes");
  v879 = v184;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 2);
  [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumTraits" withPropertiesToFetch:v898 valueTransformer:&__block_literal_global_356, __p[0]];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v185 = v898[0];
  v898[0] = 0;
  if (v185)
  {
    operator delete(v185);
  }

  for (i2 = 0; i2 != -8; i2 -= 4)
  {
    if (SHIBYTE(v878[i2 + 2]) < 0)
    {
      operator delete(v878[i2]);
    }
  }

  *__p = 0u;
  *v877 = 0u;
  LODWORD(v878[0]) = 1065353216;
  [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumVersionHash" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_358];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v187 = __p[0];
  __p[0] = 0;
  if (v187)
  {
    operator delete(v187);
  }

  v188 = [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumClassicalExperienceAvailable" toMLProperty:mlcore::AlbumPropertyClassicalExperienceAvailable(v187)];
  v189 = mlcore::AlbumPropertyLikedState(v188);
  std::string::basic_string[abi:ne200100]<0>(v898, "likedState");
  v900 = v189;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumIsFavorite" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_360_43893];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v190 = __p[0];
  __p[0] = 0;
  if (v190)
  {
    operator delete(v190);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v191 = mlcore::AlbumPropertyLikedState(v190);
  std::string::basic_string[abi:ne200100]<0>(v898, "likedState");
  v900 = v191;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumIsDisliked" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_362_43894];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v192 = __p[0];
  __p[0] = 0;
  if (v192)
  {
    operator delete(v192);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v193 = mlcore::AlbumPropertyLikedStateChangedDate(v192);
  std::string::basic_string[abi:ne200100]<0>(v898, "likedStateChangedDate");
  v900 = v193;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumDateFavorited" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_364];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v194 = __p[0];
  __p[0] = 0;
  if (v194)
  {
    operator delete(v194);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  IsStoreRedownloadable = mlcore::AlbumPropertyIsStoreRedownloadable(v194);
  std::string::basic_string[abi:ne200100]<0>(v898, "isStoreRedownloadable");
  v900 = IsStoreRedownloadable;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumIsStoreRedownloadable" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_366];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v196 = __p[0];
  __p[0] = 0;
  if (v196)
  {
    operator delete(v196);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  IsLibraryPinned = mlcore::AlbumPropertyIsLibraryPinned(v196);
  v198 = [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumDownloadedTrackCount" toMLProperty:mlcore::AlbumPropertyNonPurgeableTracksItemCount([(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumIsPinned" toMLProperty:IsLibraryPinned, __p[0]])];
  [(mlcore *)v106 mapPropertyKey:@"MPModelPropertyAlbumCleanDownloadedTrackCount" toMLProperty:mlcore::AlbumPropertyCleanDownloadedLibraryTracksCount(v198)];
  v199 = objc_opt_class();
  [(mlcore *)v106 mapRelationshipKey:@"MPModelRelationshipAlbumGenre" toModelClass:v199 usingForeignPropertyBase:mlcore::AlbumPropertyGenrePersistentID(v199)];
  v200 = objc_opt_class();
  [(mlcore *)v106 mapRelationshipKey:@"MPModelRelationshipAlbumArtist" toModelClass:v200 usingForeignPropertyBase:mlcore::AlbumPropertyArtistPersistentID(v200)];
  v201 = objc_opt_class();
  [(mlcore *)v106 mapRelationshipKey:@"MPModelRelationshipAlbumRepresentativeSong" toModelClass:v201 usingForeignPropertyBase:mlcore::AlbumPropertyRepresentativeItemPersistentID(v201)];

  _MPMLInitPropertyPlaylistMap();
  v202 = [MPMediaLibraryEntityTranslator translatorForTransientMPModelClass:objc_opt_class()];
  v203 = mlcore::PlaylistPropertyPersistentID(v202);
  v204 = std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v877[1] = v203;
  v205 = mlcore::PlaylistPropertyCloudAuthorStoreID(v204);
  std::string::basic_string[abi:ne200100]<0>(v878, "storeID");
  v879 = v205;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 2);
  [(mlcore *)v202 mapIdentifierMLProperties:v898 identifierCreationBlock:&__block_literal_global_528];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v206 = v898[0];
  v898[0] = 0;
  if (v206)
  {
    operator delete(v206);
  }

  for (i3 = 0; i3 != -8; i3 -= 4)
  {
    if (SHIBYTE(v878[i3 + 2]) < 0)
    {
      operator delete(v878[i3]);
    }
  }

  v208 = mlcore::PlaylistPropertyCloudAuthorName(v206);
  v209 = std::string::basic_string[abi:ne200100]<0>(__p, "name");
  v877[1] = v208;
  v210 = mlcore::PlaylistPropertyExternalVendorDisplayName(v209);
  std::string::basic_string[abi:ne200100]<0>(v878, "externalVendorName");
  v879 = v210;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 2);
  [(mlcore *)v202 mapPropertyKey:@"MPModelPropertyPersonName" withPropertiesToFetch:v898 valueTransformer:&__block_literal_global_531];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v211 = v898[0];
  v898[0] = 0;
  if (v211)
  {
    operator delete(v211);
  }

  for (i4 = 0; i4 != -8; i4 -= 4)
  {
    if (SHIBYTE(v878[i4 + 2]) < 0)
    {
      operator delete(v878[i4]);
    }
  }

  [(mlcore *)v202 mapPropertyKey:@"MPModelPropertyCuratorHandle" toMLProperty:mlcore::PlaylistPropertyCloudAuthorHandle(v211)];
  *__p = 0u;
  *v877 = 0u;
  LODWORD(v878[0]) = 1065353216;
  [(mlcore *)v202 mapPropertyKey:@"MPModelPropertyCuratorKind" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_533_43899];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v213 = __p[0];
  __p[0] = 0;
  if (v213)
  {
    operator delete(v213);
  }

  *__p = 0u;
  *v877 = 0u;
  LODWORD(v878[0]) = 1065353216;
  [(mlcore *)v202 mapPropertyKey:@"MPModelPropertyCuratorSubKind" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_535];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v214 = __p[0];
  __p[0] = 0;
  if (v214)
  {
    operator delete(v214);
  }

  v215 = MEMORY[0x1A58E11E0]();
  v216 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v215];
  v217 = mlcore::ArtistPropertyPersistentID(v216);
  v218 = std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v877[1] = v217;
  v219 = mlcore::ArtistPropertyStoreID(v218);
  v220 = std::string::basic_string[abi:ne200100]<0>(v878, "storeID");
  v879 = v219;
  v221 = mlcore::ArtistPropertyCloudUniversalLibraryID(v220);
  std::string::basic_string[abi:ne200100]<0>(v880, "albumArtistCloudUniversalLibraryID");
  v881 = v221;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 3);
  [(mlcore *)v216 mapIdentifierMLProperties:v898 identifierCreationBlock:&__block_literal_global_538];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v222 = v898[0];
  v898[0] = 0;
  if (v222)
  {
    operator delete(v222);
  }

  for (i5 = 0; i5 != -12; i5 -= 4)
  {
    if (SHIBYTE(v880[i5 + 2]) < 0)
    {
      operator delete(v880[i5]);
    }
  }

  [(mlcore *)v216 setEntityQueryBlock:&__block_literal_global_540];
  v224 = mlcore::ArtistPropertyName([(mlcore *)v216 setAllowedItemPredicatesBlock:&__block_literal_global_546]);
  std::string::basic_string[abi:ne200100]<0>(v895, "name");
  v897 = v224;
  v225 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, v895, 1);
  HasName = mlcore::ArtistPropertyHasName(v225);
  v227 = std::string::basic_string[abi:ne200100]<0>(__p, "hasName");
  v877[1] = HasName;
  v228 = mlcore::ArtistPropertyOrder(v227);
  std::string::basic_string[abi:ne200100]<0>(v878, "nameOrder");
  v879 = v228;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v902, __p, 2);
  [(mlcore *)v216 mapPropertyKey:@"MPModelPropertyPersonName" withPropertiesToFetch:v898 propertiesToSort:v902 sortTransformer:&__block_literal_global_549_43902 filterTransformer:&__block_literal_global_551_43903 valueTransformer:&__block_literal_global_556];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v903);
  v229 = v902[0];
  v902[0] = 0;
  if (v229)
  {
    operator delete(v229);
  }

  for (i6 = 0; i6 != -8; i6 -= 4)
  {
    if (SHIBYTE(v878[i6 + 2]) < 0)
    {
      operator delete(v878[i6]);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v231 = v898[0];
  v898[0] = 0;
  if (v231)
  {
    operator delete(v231);
  }

  if (SHIBYTE(v896) < 0)
  {
    operator delete(v895[0]);
  }

  v232 = mlcore::ArtistPropertyPersistentID(v231);
  v233 = std::string::basic_string[abi:ne200100]<0>(__p, "artistPID");
  v877[1] = v232;
  v234 = mlcore::ArtistPropertyAvailableArtworkToken(v233);
  v235 = std::string::basic_string[abi:ne200100]<0>(v878, "artistAvailableArtworkToken");
  v879 = v234;
  v236 = mlcore::ArtistPropertyFetchableArtworkToken(v235);
  v237 = std::string::basic_string[abi:ne200100]<0>(v880, "artistFetchableArtworkToken");
  v881 = v236;
  v238 = mlcore::ArtistPropertyFetchableArtworkSourceType(v237);
  std::string::basic_string[abi:ne200100]<0>(v882, "artistFetchableArtworkSourceType");
  v883 = v238;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 4);
  [(mlcore *)v216 mapPropertyKey:@"MPModelPropertyArtistArtwork" withPropertiesToFetch:v898 valueTransformer:&__block_literal_global_562];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v239 = v898[0];
  v898[0] = 0;
  if (v239)
  {
    operator delete(v239);
  }

  for (i7 = 0; i7 != -16; i7 -= 4)
  {
    if (SHIBYTE(v882[i7 + 2]) < 0)
    {
      operator delete(v882[i7]);
    }
  }

  v241 = [(mlcore *)v216 mapPropertyKey:@"MPModelPropertyArtistCleanSongCount" toMLProperty:mlcore::ArtistPropertyLibraryCleanItemCount(v239)];
  v242 = [(mlcore *)v216 mapPropertyKey:@"MPModelPropertyArtistSongCount" toMLProperty:mlcore::ArtistPropertyLibraryItemCount(v241)];
  v243 = [(mlcore *)v216 mapPropertyKey:@"MPModelPropertyArtistCleanDownloadedSongCount" toMLProperty:mlcore::ArtistPropertyLibraryNonPurgeableCleanItemCount(v242)];
  v244 = [(mlcore *)v216 mapPropertyKey:@"MPModelPropertyArtistDownloadedSongCount" toMLProperty:mlcore::ArtistPropertyLibraryNonPurgeableItemCount(v243)];
  v245 = [(mlcore *)v216 mapPropertyKey:@"MPModelPropertyArtistAlbumCount" toMLProperty:mlcore::ArtistPropertyAlbumCount(v244)];
  v246 = mlcore::ArtistPropertyLatestItemDateAdded(v245);
  std::string::basic_string[abi:ne200100]<0>(v898, "libraryAdded");
  v900 = v246;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v216 mapPropertyKey:@"MPModelPropertyArtistLibraryAddedDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_564];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v247 = __p[0];
  __p[0] = 0;
  if (v247)
  {
    operator delete(v247);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v248 = [(mlcore *)v216 mapPropertyKey:@"MPModelPropertyArtistClassicalExperienceAvailable" toMLProperty:mlcore::ArtistPropertyClassicalExperienceAvailable(v247)];
  v249 = mlcore::ArtistPropertyLikedState(v248);
  std::string::basic_string[abi:ne200100]<0>(v898, "likedState");
  v900 = v249;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v216 mapPropertyKey:@"MPModelPropertyArtistIsFavorite" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_566];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v250 = __p[0];
  __p[0] = 0;
  if (v250)
  {
    operator delete(v250);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v251 = mlcore::ArtistPropertyLikedState(v250);
  std::string::basic_string[abi:ne200100]<0>(v898, "likedState");
  v900 = v251;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v216 mapPropertyKey:@"MPModelPropertyArtistIsDisliked" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_568];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v252 = __p[0];
  __p[0] = 0;
  if (v252)
  {
    operator delete(v252);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v253 = mlcore::ArtistPropertyLikedStateChangedDate(v252);
  std::string::basic_string[abi:ne200100]<0>(v898, "likedStateChangedDate");
  v900 = v253;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v216 mapPropertyKey:@"MPModelPropertyArtistDateFavorited" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_570];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v254 = __p[0];
  __p[0] = 0;
  if (v254)
  {
    operator delete(v254);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v255 = mlcore::ArtistPropertyIsLibraryPinned(v254);
  v256 = mlcore::ArtistPropertyLikedState([(mlcore *)v216 mapPropertyKey:@"MPModelPropertyArtistIsPinned" toMLProperty:v255, __p[0]]);
  v257 = std::string::basic_string[abi:ne200100]<0>(__p, "likedState");
  v877[1] = v256;
  v258 = mlcore::ArtistPropertyLibraryItemCount(v257);
  std::string::basic_string[abi:ne200100]<0>(v878, "libraryItemCount");
  v879 = v258;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 2);
  [(mlcore *)v216 mapPropertyKey:@"MPModelPropertyArtistLibraryAdded" withPropertiesToFetch:v898 valueTransformer:&__block_literal_global_573_43908];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v259 = v898[0];
  v898[0] = 0;
  if (v259)
  {
    operator delete(v259);
  }

  for (i8 = 0; i8 != -8; i8 -= 4)
  {
    if (SHIBYTE(v878[i8 + 2]) < 0)
    {
      operator delete(v878[i8]);
    }
  }

  v261 = objc_opt_class();
  v262 = mlcore::ArtistPropertyRepresentativeItemPersistentID(v261);
  v263 = mlcore::ItemPropertyGenrePersistentID(v262);
  [(mlcore *)v216 mapRelationshipKey:@"MPModelRelationshipArtistGenre" toModelClass:v261 usingForeignPropertyBase:MPMediaLibraryGetProperty(v262, v263)];

  v264 = MEMORY[0x1A58DF740]();
  v265 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v264];
  v266 = mlcore::ItemArtistPropertyPersistentID(v265);
  v267 = std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v877[1] = v266;
  v268 = mlcore::ItemArtistPropertyStoreID(v267);
  std::string::basic_string[abi:ne200100]<0>(v878, "storeID");
  v879 = v268;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 2);
  [(mlcore *)v265 mapIdentifierMLProperties:v898 identifierCreationBlock:&__block_literal_global_575];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v269 = v898[0];
  v898[0] = 0;
  if (v269)
  {
    operator delete(v269);
  }

  for (i9 = 0; i9 != -8; i9 -= 4)
  {
    if (SHIBYTE(v878[i9 + 2]) < 0)
    {
      operator delete(v878[i9]);
    }
  }

  v271 = mlcore::ItemArtistPropertyName(v269);
  std::string::basic_string[abi:ne200100]<0>(v895, "name");
  v897 = v271;
  v272 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, v895, 1);
  v273 = mlcore::ItemArtistPropertyHasName(v272);
  v274 = std::string::basic_string[abi:ne200100]<0>(__p, "hasName");
  v877[1] = v273;
  v275 = mlcore::ItemArtistPropertyOrder(v274);
  std::string::basic_string[abi:ne200100]<0>(v878, "nameOrder");
  v879 = v275;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v902, __p, 2);
  [(mlcore *)v265 mapPropertyKey:@"MPModelPropertyPersonName" withPropertiesToFetch:v898 propertiesToSort:v902 sortTransformer:&__block_literal_global_577 filterTransformer:&__block_literal_global_579 valueTransformer:&__block_literal_global_581];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v903);
  v276 = v902[0];
  v902[0] = 0;
  if (v276)
  {
    operator delete(v276);
  }

  for (i10 = 0; i10 != -8; i10 -= 4)
  {
    if (SHIBYTE(v878[i10 + 2]) < 0)
    {
      operator delete(v878[i10]);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v278 = v898[0];
  v898[0] = 0;
  if (v278)
  {
    operator delete(v278);
  }

  if (SHIBYTE(v896) < 0)
  {
    operator delete(v895[0]);
  }

  v279 = mlcore::ItemArtistPropertyPersistentID(v278);
  v280 = std::string::basic_string[abi:ne200100]<0>(__p, "artistPID");
  v877[1] = v279;
  v281 = mlcore::ItemArtistPropertyAvailableArtworkToken(v280);
  v282 = std::string::basic_string[abi:ne200100]<0>(v878, "artistAvailableArtworkToken");
  v879 = v281;
  v283 = mlcore::ItemArtistPropertyFetchableArtworkToken(v282);
  v284 = std::string::basic_string[abi:ne200100]<0>(v880, "artistFetchableArtworkToken");
  v881 = v283;
  v285 = mlcore::ItemArtistPropertyFetchableArtworkSourceType(v284);
  std::string::basic_string[abi:ne200100]<0>(v882, "artistFetchableArtworkSourceType");
  v883 = v285;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 4);
  [(mlcore *)v265 mapPropertyKey:@"MPModelPropertyArtistArtwork" withPropertiesToFetch:v898 valueTransformer:&__block_literal_global_583];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v286 = v898[0];
  v898[0] = 0;
  if (v286)
  {
    operator delete(v286);
  }

  for (i11 = 0; i11 != -16; i11 -= 4)
  {
    if (SHIBYTE(v882[i11 + 2]) < 0)
    {
      operator delete(v882[i11]);
    }
  }

  [(mlcore *)v265 mapPropertyKey:@"MPModelPropertyArtistClassicalExperienceAvailable" toMLProperty:mlcore::ItemArtistPropertyClassicalExperienceAvailable(v286)];
  *__p = 0u;
  *v877 = 0u;
  LODWORD(v878[0]) = 1065353216;
  [(mlcore *)v265 mapPropertyKey:@"MPModelPropertyArtistIsFavorite" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_585];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v288 = __p[0];
  __p[0] = 0;
  if (v288)
  {
    operator delete(v288);
  }

  *__p = 0u;
  *v877 = 0u;
  LODWORD(v878[0]) = 1065353216;
  [(mlcore *)v265 mapPropertyKey:@"MPModelPropertyArtistIsDisliked" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_587_43909];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v289 = __p[0];
  __p[0] = 0;
  if (v289)
  {
    operator delete(v289);
  }

  *__p = 0u;
  *v877 = 0u;
  LODWORD(v878[0]) = 1065353216;
  [(mlcore *)v265 mapPropertyKey:@"MPModelPropertyArtistDateFavorited" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_589_43910];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v290 = __p[0];
  __p[0] = 0;
  if (v290)
  {
    operator delete(v290);
  }

  *__p = 0u;
  *v877 = 0u;
  LODWORD(v878[0]) = 1065353216;
  [(mlcore *)v265 mapPropertyKey:@"MPModelPropertyArtistLibraryAdded" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_591];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v291 = __p[0];
  __p[0] = 0;
  if (v291)
  {
    operator delete(v291);
  }

  v292 = objc_opt_class();
  v293 = mlcore::ItemArtistPropertyRepresentativeItemPersistentID(v292);
  v294 = mlcore::ItemPropertyGenrePersistentID(v293);
  [(mlcore *)v265 mapRelationshipKey:@"MPModelRelationshipArtistGenre" toModelClass:v292 usingForeignPropertyBase:MPMediaLibraryGetProperty(v293, v294)];

  v295 = MEMORY[0x1A58E1270]();
  v296 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v295];
  v297 = mlcore::ComposerPropertyPersistentID(v296);
  std::string::basic_string[abi:ne200100]<0>(v898, "pid");
  v900 = v297;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v296 mapIdentifierMLProperties:__p identifierCreationBlock:&__block_literal_global_593];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v298 = __p[0];
  __p[0] = 0;
  if (v298)
  {
    operator delete(v298);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v299 = mlcore::ComposerPropertyName([(mlcore *)v296 setEntityQueryBlock:&__block_literal_global_595, __p[0]]);
  std::string::basic_string[abi:ne200100]<0>(v895, "name");
  v897 = v299;
  v300 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, v895, 1);
  v301 = mlcore::ComposerPropertyHasName(v300);
  v302 = std::string::basic_string[abi:ne200100]<0>(__p, "hasName");
  v877[1] = v301;
  v303 = mlcore::ComposerPropertyOrder(v302);
  std::string::basic_string[abi:ne200100]<0>(v878, "nameOrder");
  v879 = v303;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v902, __p, 2);
  [(mlcore *)v296 mapPropertyKey:@"MPModelPropertyPersonName" withPropertiesToFetch:v898 propertiesToSort:v902 sortTransformer:&__block_literal_global_601_43911 filterTransformer:&__block_literal_global_603 valueTransformer:&__block_literal_global_608];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v903);
  v304 = v902[0];
  v902[0] = 0;
  if (v304)
  {
    operator delete(v304);
  }

  for (i12 = 0; i12 != -8; i12 -= 4)
  {
    if (SHIBYTE(v878[i12 + 2]) < 0)
    {
      operator delete(v878[i12]);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v306 = v898[0];
  v898[0] = 0;
  if (v306)
  {
    operator delete(v306);
  }

  if (SHIBYTE(v896) < 0)
  {
    operator delete(v895[0]);
  }

  v307 = mlcore::ComposerPropertyLatestItemDateAdded(v306);
  std::string::basic_string[abi:ne200100]<0>(v898, "libraryAdded");
  v900 = v307;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v296 mapPropertyKey:@"MPModelPropertyComposerLibraryAddedDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_610];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v308 = __p[0];
  __p[0] = 0;
  if (v308)
  {
    operator delete(v308);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v309 = MEMORY[0x1A58E1190]();
  v310 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v309];
  v311 = mlcore::GenrePropertyPersistentID(v310);
  std::string::basic_string[abi:ne200100]<0>(v898, "pid");
  v900 = v311;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v310 mapIdentifierMLProperties:__p identifierCreationBlock:&__block_literal_global_612];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v312 = __p[0];
  __p[0] = 0;
  if (v312)
  {
    operator delete(v312);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  [(mlcore *)v310 setEntityQueryBlock:&__block_literal_global_614, __p[0]];
  v313 = mlcore::GenrePropertyName([(mlcore *)v310 setAllowedItemPredicatesBlock:&__block_literal_global_620]);
  std::string::basic_string[abi:ne200100]<0>(v895, "name");
  v897 = v313;
  v314 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, v895, 1);
  v315 = mlcore::GenrePropertyHasName(v314);
  v316 = std::string::basic_string[abi:ne200100]<0>(__p, "hasName");
  v877[1] = v315;
  v317 = mlcore::GenrePropertyOrder(v316);
  std::string::basic_string[abi:ne200100]<0>(v878, "nameOrder");
  v879 = v317;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v902, __p, 2);
  [(mlcore *)v310 mapPropertyKey:@"MPModelPropertyGenreName" withPropertiesToFetch:v898 propertiesToSort:v902 sortTransformer:&__block_literal_global_622 filterTransformer:&__block_literal_global_624 valueTransformer:&__block_literal_global_629];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v903);
  v318 = v902[0];
  v902[0] = 0;
  if (v318)
  {
    operator delete(v318);
  }

  for (i13 = 0; i13 != -8; i13 -= 4)
  {
    if (SHIBYTE(v878[i13 + 2]) < 0)
    {
      operator delete(v878[i13]);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v320 = v898[0];
  v898[0] = 0;
  if (v320)
  {
    operator delete(v320);
  }

  if (SHIBYTE(v896) < 0)
  {
    operator delete(v895[0]);
  }

  v321 = mlcore::GenrePropertyLatestItemDateAdded(v320);
  std::string::basic_string[abi:ne200100]<0>(v898, "libraryAdded");
  v900 = v321;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v310 mapPropertyKey:@"MPModelPropertyGenreLibraryAddedDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_631];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v322 = __p[0];
  __p[0] = 0;
  if (v322)
  {
    operator delete(v322);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v323 = MEMORY[0x1A58DF9B0]();
  v324 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v323];
  v325 = mlcore::PlaylistItemPropertyPersistentID(v324);
  v326 = std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v877[1] = v325;
  v327 = mlcore::PlaylistItemPropertyItemPersistentID(v326);
  v328 = std::string::basic_string[abi:ne200100]<0>(v878, "itemPid");
  v879 = v327;
  v329 = mlcore::PlaylistItemPropertyItemPersistentID(v328);
  v330 = mlcore::ItemPropertyExcludeFromShuffle(v329);
  v331 = MPMediaLibraryGetProperty(v329, v330);
  v332 = std::string::basic_string[abi:ne200100]<0>(v880, "excludeFromShuffle");
  v881 = v331;
  v333 = mlcore::PlaylistItemPropertyItemPersistentID(v332);
  v334 = mlcore::ItemPropertyStoreID(v333);
  v335 = MPMediaLibraryGetProperty(v333, v334);
  v336 = std::string::basic_string[abi:ne200100]<0>(v882, "storeID");
  v883 = v335;
  v337 = mlcore::PlaylistItemPropertyItemPersistentID(v336);
  v338 = mlcore::ItemPropertyStoreCloudID(v337);
  v339 = MPMediaLibraryGetProperty(v337, v338);
  v340 = std::string::basic_string[abi:ne200100]<0>(v884, "cloudID");
  v885 = v339;
  v341 = mlcore::PlaylistItemPropertyItemPersistentID(v340);
  v342 = mlcore::ItemPropertyStoreCloudUniversalLibraryID(v341);
  v343 = MPMediaLibraryGetProperty(v341, v342);
  v344 = std::string::basic_string[abi:ne200100]<0>(v886, "cloudUniversalLibraryID");
  v887 = v343;
  v345 = mlcore::PlaylistItemPropertyItemPersistentID(v344);
  v346 = mlcore::ItemPropertySubscriptionStoreItemID(v345);
  v347 = MPMediaLibraryGetProperty(v345, v346);
  v348 = std::string::basic_string[abi:ne200100]<0>(v888, "subscriptionStoreID");
  v889 = v347;
  v349 = mlcore::PlaylistItemPropertyItemPersistentID(v348);
  v350 = mlcore::ItemPropertyStoreCloudAlbumID(v349);
  v351 = MPMediaLibraryGetProperty(v349, v350);
  v352 = std::string::basic_string[abi:ne200100]<0>(v890, "storeCloudAlbumID");
  v891 = v351;
  v353 = mlcore::PlaylistItemPropertyItemPersistentID(v352);
  v354 = mlcore::ItemPropertyReportingStoreItemID(v353);
  v355 = MPMediaLibraryGetProperty(v353, v354);
  v356 = std::string::basic_string[abi:ne200100]<0>(v892, "reportingStoreItemID");
  v892[3] = v355;
  v357 = mlcore::PlaylistItemPropertyItemPersistentID(v356);
  v358 = mlcore::ItemPropertyAssetStoreItemID(v357);
  v359 = MPMediaLibraryGetProperty(v357, v358);
  v360 = std::string::basic_string[abi:ne200100]<0>(v893, "assetStoreItemID");
  v893[3] = v359;
  v361 = mlcore::PlaylistItemPropertyOccurrenceID(v360);
  std::string::basic_string[abi:ne200100]<0>(v894, "occurrenceID");
  v894[3] = v361;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 11);
  [(mlcore *)v324 mapIdentifierMLProperties:v898 identifierCreationBlock:&__block_literal_global_635];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v362 = v898[0];
  v898[0] = 0;
  if (v362)
  {
    operator delete(v362);
  }

  v363 = 44;
  do
  {
    if (*(&__p[v363 - 1] - 1) < 0)
    {
      operator delete(__p[v363 - 4]);
    }

    v363 -= 4;
  }

  while (v363 * 8);
  v364 = mlcore::PlaylistItemPropertyItemPersistentID([(mlcore *)v324 setEntityQueryBlock:&__block_literal_global_637]);
  v365 = std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v877[1] = v364;
  v366 = mlcore::PlaylistItemPropertyItemPersistentID(v365);
  v367 = mlcore::ItemPropertyMediaType(v366);
  v368 = MPMediaLibraryGetProperty(v366, v367);
  v369 = std::string::basic_string[abi:ne200100]<0>(v878, "mediaType");
  v879 = v368;
  v370 = mlcore::PlaylistItemPropertyAvailableArtworkToken(v369);
  v371 = std::string::basic_string[abi:ne200100]<0>(v880, "availableArtworkToken");
  v881 = v370;
  v372 = mlcore::PlaylistItemPropertyFetchableArtworkToken(v371);
  v373 = std::string::basic_string[abi:ne200100]<0>(v882, "fetchableArtworkToken");
  v883 = v372;
  v374 = mlcore::PlaylistItemPropertyFetchableArtworkSourceType(v373);
  std::string::basic_string[abi:ne200100]<0>(v884, "fetchableArtworkSourceType");
  v885 = v374;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 5);
  [(mlcore *)v324 mapPropertyKey:@"_MPModelPropertyPlaylistEntryArtwork" withPropertiesToFetch:v898 valueTransformer:&__block_literal_global_647];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v375 = v898[0];
  v898[0] = 0;
  if (v375)
  {
    operator delete(v375);
  }

  for (i14 = 0; i14 != -20; i14 -= 4)
  {
    if (SHIBYTE(v884[i14 + 2]) < 0)
    {
      operator delete(v884[i14]);
    }
  }

  v377 = mlcore::PlaylistItemPropertyPosition(v375);
  std::string::basic_string[abi:ne200100]<0>(v898, "position");
  v900 = v377;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v324 mapPropertyKey:@"MPModelPropertyPlaylistEntryPosition" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_650];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v378 = __p[0];
  __p[0] = 0;
  if (v378)
  {
    operator delete(v378);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v379 = mlcore::PlaylistItemPropertyUUID(v378);
  v380 = std::string::basic_string[abi:ne200100]<0>(__p, "UUID");
  v877[1] = v379;
  v381 = mlcore::PlaylistItemPropertyPersistentID(v380);
  std::string::basic_string[abi:ne200100]<0>(v878, "persistentID");
  v879 = v381;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 2);
  [(mlcore *)v324 mapPropertyKey:@"MPModelPropertyPlaylistEntryUniversalIdentifier" withPropertiesToFetch:v898 valueTransformer:&__block_literal_global_653_43924];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v382 = v898[0];
  v898[0] = 0;
  if (v382)
  {
    operator delete(v382);
  }

  for (i15 = 0; i15 != -8; i15 -= 4)
  {
    if (SHIBYTE(v878[i15 + 2]) < 0)
    {
      operator delete(v878[i15]);
    }
  }

  v384 = mlcore::PlaylistItemPropertyPositionUUID(v382);
  v385 = std::string::basic_string[abi:ne200100]<0>(__p, "positionUUID");
  v877[1] = v384;
  v386 = mlcore::PlaylistItemPropertyPersistentID(v385);
  std::string::basic_string[abi:ne200100]<0>(v878, "persistentID");
  v879 = v386;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 2);
  [(mlcore *)v324 mapPropertyKey:@"MPModelPropertyPlaylistEntryPositionUniversalIdentifier" withPropertiesToFetch:v898 valueTransformer:&__block_literal_global_659];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v387 = v898[0];
  v898[0] = 0;
  if (v387)
  {
    operator delete(v387);
  }

  for (i16 = 0; i16 != -8; i16 -= 4)
  {
    if (SHIBYTE(v878[i16 + 2]) < 0)
    {
      operator delete(v878[i16]);
    }
  }

  v389 = objc_opt_class();
  v390 = mlcore::PlaylistItemPropertyItemPersistentID(v389);
  v391 = mlcore::PlaylistItemPropertyItemPersistentID(v390);
  v392 = std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v877[1] = v391;
  v393 = mlcore::PlaylistItemPropertyItemPersistentID(v392);
  v394 = mlcore::ItemPropertyMediaType(v393);
  v395 = MPMediaLibraryGetProperty(v393, v394);
  std::string::basic_string[abi:ne200100]<0>(v878, "mediaType");
  v879 = v395;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 2);
  [(mlcore *)v324 mapRelationshipKey:@"MPModelRelationshipPlaylistEntrySong" toModelClass:v389 transient:0 usingForeignPropertyBase:v390 relationshipValidationProperties:v898 isValidRelationshipHandler:&__block_literal_global_665];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v396 = v898[0];
  v898[0] = 0;
  if (v396)
  {
    operator delete(v396);
  }

  for (i17 = 0; i17 != -8; i17 -= 4)
  {
    if (SHIBYTE(v878[i17 + 2]) < 0)
    {
      operator delete(v878[i17]);
    }
  }

  v398 = objc_opt_class();
  v399 = mlcore::PlaylistItemPropertyItemPersistentID(v398);
  v400 = mlcore::PlaylistItemPropertyItemPersistentID(v399);
  v401 = std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v877[1] = v400;
  v402 = mlcore::PlaylistItemPropertyItemPersistentID(v401);
  v403 = mlcore::ItemPropertyMediaType(v402);
  v404 = MPMediaLibraryGetProperty(v402, v403);
  std::string::basic_string[abi:ne200100]<0>(v878, "mediaType");
  v879 = v404;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 2);
  [(mlcore *)v324 mapRelationshipKey:@"MPModelRelationshipPlaylistEntryTVEpisode" toModelClass:v398 transient:0 usingForeignPropertyBase:v399 relationshipValidationProperties:v898 isValidRelationshipHandler:&__block_literal_global_667];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v405 = v898[0];
  v898[0] = 0;
  if (v405)
  {
    operator delete(v405);
  }

  for (i18 = 0; i18 != -8; i18 -= 4)
  {
    if (SHIBYTE(v878[i18 + 2]) < 0)
    {
      operator delete(v878[i18]);
    }
  }

  v407 = objc_opt_class();
  v408 = mlcore::PlaylistItemPropertyItemPersistentID(v407);
  v409 = mlcore::PlaylistItemPropertyItemPersistentID(v408);
  v410 = std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v877[1] = v409;
  v411 = mlcore::PlaylistItemPropertyItemPersistentID(v410);
  v412 = mlcore::ItemPropertyMediaType(v411);
  v413 = MPMediaLibraryGetProperty(v411, v412);
  std::string::basic_string[abi:ne200100]<0>(v878, "mediaType");
  v879 = v413;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 2);
  [(mlcore *)v324 mapRelationshipKey:@"MPModelRelationshipPlaylistEntryMovie" toModelClass:v407 transient:0 usingForeignPropertyBase:v408 relationshipValidationProperties:v898 isValidRelationshipHandler:&__block_literal_global_669];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v414 = v898[0];
  v898[0] = 0;
  if (v414)
  {
    operator delete(v414);
  }

  for (i19 = 0; i19 != -8; i19 -= 4)
  {
    if (SHIBYTE(v878[i19 + 2]) < 0)
    {
      operator delete(v878[i19]);
    }
  }

  v416 = objc_opt_class();
  v417 = mlcore::PlaylistItemPropertyPersistentID(v416);
  v418 = mlcore::ContainerItemPersonPropertyPersonPersistentID(v417);
  [(mlcore *)v324 mapRelationshipKey:@"MPModelRelationshipPlaylistEntrySocialContributor" toModelClass:v416 transient:0 usingForeignPropertyBase:MPMediaLibraryGetProperty(v417, v418)];

  v419 = [MPMediaLibraryEntityTranslator translatorForTransientMPModelClass:objc_opt_class()];
  v420 = mlcore::ItemPropertyPersistentID(v419);
  std::string::basic_string[abi:ne200100]<0>(v898, "pid");
  v900 = v420;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v419 mapIdentifierMLProperties:__p identifierCreationBlock:&__block_literal_global_693_43926];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v421 = __p[0];
  __p[0] = 0;
  if (v421)
  {
    operator delete(v421);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v422 = mlcore::ItemPropertyCloudKVSKey(v421);
  v423 = mlcore::CloudKVSEntityPropertyBookmarkTime(v422);
  v424 = MPMediaLibraryGetProperty(v422, v423);
  std::string::basic_string[abi:ne200100]<0>(v898, "cloudKVSBookmarkTime");
  v900 = v424;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v419 mapPropertyKey:@"MPModelPropertyPlaybackPositionBookmarkTime" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_696_43928];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v425 = __p[0];
  __p[0] = 0;
  if (v425)
  {
    operator delete(v425);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v426 = mlcore::ItemPropertyCloudKVSKey(v425);
  std::string::basic_string[abi:ne200100]<0>(v898, "cloudKVSKey");
  v900 = v426;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v419 mapPropertyKey:@"MPModelPropertyPlaybackPositionStoreUbiquitousIdentifier" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_699];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v427 = __p[0];
  __p[0] = 0;
  if (v427)
  {
    operator delete(v427);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v428 = [(mlcore *)v419 mapPropertyKey:@"MPModelPropertyPlaybackPositionShouldRememberBookmarkTime" toMLProperty:mlcore::ItemPropertyRememberBookmarkTime(v427)];
  started = mlcore::ItemPropertyStartTime(v428);
  std::string::basic_string[abi:ne200100]<0>(v898, "startTime");
  v900 = started;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v419 mapPropertyKey:@"MPModelPropertyPlaybackPositionStartTime" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_702];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v430 = __p[0];
  __p[0] = 0;
  if (v430)
  {
    operator delete(v430);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v431 = mlcore::ItemPropertyStopTime(v430);
  std::string::basic_string[abi:ne200100]<0>(v898, "stopTime");
  v900 = v431;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v419 mapPropertyKey:@"MPModelPropertyPlaybackPositionStopTime" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_705_43930];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v432 = __p[0];
  __p[0] = 0;
  if (v432)
  {
    operator delete(v432);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v433 = mlcore::ItemPropertyCloudKVSKey(v432);
  HasBeenPlayed = mlcore::CloudKVSEntityPropertyHasBeenPlayed(v433);
  v435 = MPMediaLibraryGetProperty(v433, HasBeenPlayed);
  std::string::basic_string[abi:ne200100]<0>(v898, "cloudKVSHasBeenPlayed");
  v900 = v435;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v419 mapPropertyKey:@"MPModelPropertyPlaybackPositionHasBeenPlayed" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_708];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v436 = __p[0];
  __p[0] = 0;
  if (v436)
  {
    operator delete(v436);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v437 = mlcore::ItemPropertyCloudKVSKey(v436);
  v438 = mlcore::CloudKVSEntityPropertyPlayCount(v437);
  v439 = MPMediaLibraryGetProperty(v437, v438);
  std::string::basic_string[abi:ne200100]<0>(v898, "cloudKVSPlayCount");
  v900 = v439;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v419 mapPropertyKey:@"MPModelPropertyPlaybackPositionUserPlayCount" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_711_43932];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v440 = __p[0];
  __p[0] = 0;
  if (v440)
  {
    operator delete(v440);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v441 = MEMORY[0x1A58E1250]();
  v442 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v441];
  v443 = mlcore::AlbumPropertyPersistentID(v442);
  std::string::basic_string[abi:ne200100]<0>(v898, "pid");
  v900 = v443;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v442 mapIdentifierMLProperties:__p identifierCreationBlock:&__block_literal_global_713];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v444 = __p[0];
  __p[0] = 0;
  if (v444)
  {
    operator delete(v444);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  [(mlcore *)v442 setEntityQueryBlock:&__block_literal_global_715, __p[0]];
  v445 = mlcore::AlbumPropertyTitle([(mlcore *)v442 setAllowedItemPredicatesBlock:&__block_literal_global_721]);
  std::string::basic_string[abi:ne200100]<0>(v895, "title");
  v897 = v445;
  v446 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, v895, 1);
  v447 = mlcore::AlbumPropertyHasTitle(v446);
  v448 = std::string::basic_string[abi:ne200100]<0>(__p, "hasTitle");
  v877[1] = v447;
  v449 = mlcore::AlbumPropertyOrder(v448);
  std::string::basic_string[abi:ne200100]<0>(v878, "titleOrder");
  v879 = v449;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v902, __p, 2);
  [(mlcore *)v442 mapPropertyKey:@"MPModelPropertyPodcastTitle" withPropertiesToFetch:v898 propertiesToSort:v902 sortTransformer:&__block_literal_global_723 valueTransformer:&__block_literal_global_725];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v903);
  v450 = v902[0];
  v902[0] = 0;
  if (v450)
  {
    operator delete(v450);
  }

  for (i20 = 0; i20 != -8; i20 -= 4)
  {
    if (SHIBYTE(v878[i20 + 2]) < 0)
    {
      operator delete(v878[i20]);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v452 = v898[0];
  v898[0] = 0;
  if (v452)
  {
    operator delete(v452);
  }

  if (SHIBYTE(v896) < 0)
  {
    operator delete(v895[0]);
  }

  v453 = mlcore::AlbumPropertyFeedURL(v452);
  std::string::basic_string[abi:ne200100]<0>(v898, "feedURL");
  v900 = v453;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v442 mapPropertyKey:@"MPModelPropertyPodcastFeedURL" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_728];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v454 = __p[0];
  __p[0] = 0;
  if (v454)
  {
    operator delete(v454);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v455 = mlcore::AlbumPropertyRepresentativeItemPersistentID(v454);
  v456 = std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v877[1] = v455;
  v457 = mlcore::AlbumPropertyRepresentativeItemMediaType(v456);
  v458 = std::string::basic_string[abi:ne200100]<0>(v878, "mediaType");
  v879 = v457;
  v459 = mlcore::AlbumPropertyRepresentativeItemAvailableArtworkToken(v458);
  v460 = std::string::basic_string[abi:ne200100]<0>(v880, "availableArtworkToken");
  v881 = v459;
  v461 = mlcore::AlbumPropertyRepresentativeItemFetchableArtworkToken(v460);
  v462 = std::string::basic_string[abi:ne200100]<0>(v882, "fetchableArtworkToken");
  v883 = v461;
  v463 = mlcore::AlbumPropertyRepresentativeItemFetchableArtworkSourceType(v462);
  std::string::basic_string[abi:ne200100]<0>(v884, "fetchableArtworkSourceType");
  v885 = v463;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 5);
  [(mlcore *)v442 mapPropertyKey:@"MPModelPropertyPodcastArtwork" withPropertiesToFetch:v898 valueTransformer:&__block_literal_global_730];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v464 = v898[0];
  v898[0] = 0;
  if (v464)
  {
    operator delete(v464);
  }

  for (i21 = 0; i21 != -20; i21 -= 4)
  {
    if (SHIBYTE(v884[i21 + 2]) < 0)
    {
      operator delete(v884[i21]);
    }
  }

  v466 = objc_opt_class();
  [(mlcore *)v442 mapRelationshipKey:@"MPModelRelationshipPodcastAuthor" toModelClass:v466 usingForeignPropertyBase:mlcore::AlbumPropertyArtistPersistentID(v466)];

  v467 = MEMORY[0x1A58E11E0]();
  v468 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v467];
  v469 = mlcore::ArtistPropertyPersistentID(v468);
  v470 = std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v877[1] = v469;
  v471 = mlcore::ArtistPropertyStoreID(v470);
  std::string::basic_string[abi:ne200100]<0>(v878, "storeID");
  v879 = v471;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 2);
  [(mlcore *)v468 mapIdentifierMLProperties:v898 identifierCreationBlock:&__block_literal_global_733_43933];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v472 = v898[0];
  v898[0] = 0;
  if (v472)
  {
    operator delete(v472);
  }

  for (i22 = 0; i22 != -8; i22 -= 4)
  {
    if (SHIBYTE(v878[i22 + 2]) < 0)
    {
      operator delete(v878[i22]);
    }
  }

  v474 = mlcore::ArtistPropertyName(v472);
  std::string::basic_string[abi:ne200100]<0>(v895, "name");
  v897 = v474;
  v475 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, v895, 1);
  v476 = mlcore::ArtistPropertyHasName(v475);
  v477 = std::string::basic_string[abi:ne200100]<0>(__p, "hasName");
  v877[1] = v476;
  v478 = mlcore::ArtistPropertyOrder(v477);
  std::string::basic_string[abi:ne200100]<0>(v878, "nameOrder");
  v879 = v478;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v902, __p, 2);
  [(mlcore *)v468 mapPropertyKey:@"MPModelPropertyPersonName" withPropertiesToFetch:v898 propertiesToSort:v902 sortTransformer:&__block_literal_global_735 valueTransformer:&__block_literal_global_737];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v903);
  v479 = v902[0];
  v902[0] = 0;
  if (v479)
  {
    operator delete(v479);
  }

  for (i23 = 0; i23 != -8; i23 -= 4)
  {
    if (SHIBYTE(v878[i23 + 2]) < 0)
    {
      operator delete(v878[i23]);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v481 = v898[0];
  v898[0] = 0;
  if (v481)
  {
    operator delete(v481);
  }

  if (SHIBYTE(v896) < 0)
  {
    operator delete(v895[0]);
  }

  v482 = MEMORY[0x1A58DFA20]();
  v483 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v482];
  v484 = mlcore::ItemPropertyPersistentID(v483);
  v485 = std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v877[1] = v484;
  v486 = mlcore::ItemPropertyStoreID(v485);
  v487 = std::string::basic_string[abi:ne200100]<0>(v878, "storeID");
  v879 = v486;
  v488 = mlcore::ItemPropertyPodcastExternalGUID(v487);
  std::string::basic_string[abi:ne200100]<0>(v880, "externalGUID");
  v881 = v488;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 3);
  [(mlcore *)v483 mapIdentifierMLProperties:v898 identifierCreationBlock:&__block_literal_global_740];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v489 = v898[0];
  v898[0] = 0;
  if (v489)
  {
    operator delete(v489);
  }

  for (i24 = 0; i24 != -12; i24 -= 4)
  {
    if (SHIBYTE(v880[i24 + 2]) < 0)
    {
      operator delete(v880[i24]);
    }
  }

  [(mlcore *)v483 setEntityQueryBlock:&__block_literal_global_742];
  v491 = mlcore::ItemPropertyTitle([(mlcore *)v483 setAllowedItemPredicatesBlock:&__block_literal_global_748]);
  std::string::basic_string[abi:ne200100]<0>(v902, "title");
  v904 = v491;
  v492 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v902, 1);
  v493 = mlcore::ItemPropertyTitleOrder(v492);
  std::string::basic_string[abi:ne200100]<0>(v895, "titleOrder");
  v897 = v493;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, v895, 1);
  [(mlcore *)v483 mapPropertyKey:@"MPModelPropertyPodcastEpisodeTitle" withPropertiesToFetch:__p propertiesToSort:v898 sortTransformer:&__block_literal_global_750 valueTransformer:&__block_literal_global_752];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v494 = v898[0];
  v898[0] = 0;
  if (v494)
  {
    operator delete(v494);
  }

  if (SHIBYTE(v896) < 0)
  {
    operator delete(v895[0]);
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v495 = __p[0];
  __p[0] = 0;
  if (v495)
  {
    operator delete(v495);
  }

  if (SHIBYTE(v903) < 0)
  {
    operator delete(v902[0]);
  }

  v496 = mlcore::ItemPropertyTotalTime(v495);
  std::string::basic_string[abi:ne200100]<0>(v898, "time");
  v900 = v496;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v483 mapPropertyKey:@"MPModelPropertyPodcastEpisodeDuration" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_754];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v497 = __p[0];
  __p[0] = 0;
  if (v497)
  {
    operator delete(v497);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v498 = mlcore::ItemPropertyDateReleased(v497);
  std::string::basic_string[abi:ne200100]<0>(v898, "dateReleased");
  v900 = v498;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v483 mapPropertyKey:@"MPModelPropertyPodcastEpisodeReleaseDateComponents" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_756];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v499 = __p[0];
  __p[0] = 0;
  if (v499)
  {
    operator delete(v499);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v500 = mlcore::ItemPropertyUserRating(v499);
  std::string::basic_string[abi:ne200100]<0>(v898, "userRating");
  v900 = v500;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v483 mapPropertyKey:@"MPModelPropertyPodcastEpisodeUserRating" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_758];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v501 = __p[0];
  __p[0] = 0;
  if (v501)
  {
    operator delete(v501);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v502 = [(mlcore *)v483 mapPropertyKey:@"MPModelPropertyPodcastEpisodeExplicit" toMLProperty:mlcore::ItemPropertyIsExplicit(v501)];
  v503 = [(mlcore *)v483 mapPropertyKey:@"MPModelPropertyPodcastEpisodeDescriptionText" toMLProperty:mlcore::ItemPropertyLongDescription(v502)];
  v504 = [(mlcore *)v483 mapPropertyKey:@"MPModelPropertyPodcastEpisodeHasVideo" toMLProperty:mlcore::ItemPropertyIsVideo(v503)];
  v505 = mlcore::ItemPropertyDatePlayed(v504);
  std::string::basic_string[abi:ne200100]<0>(v898, "datePlayed");
  v900 = v505;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v483 mapPropertyKey:@"MPModelPropertyPodcastEpisodeDatePlayed" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_760];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v506 = __p[0];
  __p[0] = 0;
  if (v506)
  {
    operator delete(v506);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v507 = objc_opt_class();
  [(mlcore *)v483 mapRelationshipKey:@"MPModelRelationshipPodcastEpisodeAuthor" toModelClass:v507 usingForeignPropertyBase:mlcore::ItemPropertyItemArtistPersistentID(v507)];
  v508 = objc_opt_class();
  [(mlcore *)v483 mapRelationshipKey:@"MPModelRelationshipPodcastEpisodeLocalFileAsset" toModelClass:v508 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v508)];
  v509 = objc_opt_class();
  [(mlcore *)v483 mapRelationshipKey:@"MPModelRelationshipPodcastEpisodePodcast" toModelClass:v509 usingForeignPropertyBase:mlcore::ItemPropertyAlbumPersistentID(v509)];
  v510 = objc_opt_class();
  [(mlcore *)v483 mapRelationshipKey:@"MPModelRelationshipPodcastEpisodePlaybackPosition" toModelClass:v510 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v510)];

  v511 = MEMORY[0x1A58DF740]();
  v512 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v511];
  v513 = mlcore::ItemArtistPropertyPersistentID(v512);
  v514 = std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v877[1] = v513;
  v515 = mlcore::ItemArtistPropertyStoreID(v514);
  std::string::basic_string[abi:ne200100]<0>(v878, "storeID");
  v879 = v515;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 2);
  [(mlcore *)v512 mapIdentifierMLProperties:v898 identifierCreationBlock:&__block_literal_global_763_43937];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v516 = v898[0];
  v898[0] = 0;
  if (v516)
  {
    operator delete(v516);
  }

  for (i25 = 0; i25 != -8; i25 -= 4)
  {
    if (SHIBYTE(v878[i25 + 2]) < 0)
    {
      operator delete(v878[i25]);
    }
  }

  v518 = mlcore::ItemArtistPropertyName(v516);
  std::string::basic_string[abi:ne200100]<0>(v895, "name");
  v897 = v518;
  v519 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, v895, 1);
  v520 = mlcore::ItemArtistPropertyHasName(v519);
  v521 = std::string::basic_string[abi:ne200100]<0>(__p, "hasName");
  v877[1] = v520;
  v522 = mlcore::ItemArtistPropertyOrder(v521);
  std::string::basic_string[abi:ne200100]<0>(v878, "nameOrder");
  v879 = v522;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v902, __p, 2);
  [(mlcore *)v512 mapPropertyKey:@"MPModelPropertyPersonName" withPropertiesToFetch:v898 propertiesToSort:v902 sortTransformer:&__block_literal_global_765 valueTransformer:&__block_literal_global_767];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v903);
  v523 = v902[0];
  v902[0] = 0;
  if (v523)
  {
    operator delete(v523);
  }

  for (i26 = 0; i26 != -8; i26 -= 4)
  {
    if (SHIBYTE(v878[i26 + 2]) < 0)
    {
      operator delete(v878[i26]);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v525 = v898[0];
  v898[0] = 0;
  if (v525)
  {
    operator delete(v525);
  }

  if (SHIBYTE(v896) < 0)
  {
    operator delete(v895[0]);
  }

  v526 = MEMORY[0x1A58E11B0]();
  v527 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v526];
  v528 = mlcore::ItemPropertyStoreID(v527);
  v529 = std::string::basic_string[abi:ne200100]<0>(__p, "storeID");
  v877[1] = v528;
  v530 = mlcore::ItemPropertyStoreCloudID(v529);
  v531 = std::string::basic_string[abi:ne200100]<0>(v878, "cloudID");
  v879 = v530;
  v532 = mlcore::ItemPropertyStoreCloudUniversalLibraryID(v531);
  v533 = std::string::basic_string[abi:ne200100]<0>(v880, "cloudUniversalLibraryID");
  v881 = v532;
  v534 = mlcore::ItemPropertyPersistentID(v533);
  v535 = std::string::basic_string[abi:ne200100]<0>(v882, "pid");
  v883 = v534;
  v536 = mlcore::ItemPropertySubscriptionStoreItemID(v535);
  v537 = std::string::basic_string[abi:ne200100]<0>(v884, "subscriptionStoreID");
  v885 = v536;
  v538 = mlcore::ItemPropertyStoreCloudAlbumID(v537);
  v539 = std::string::basic_string[abi:ne200100]<0>(v886, "storeCloudAlbumID");
  v887 = v538;
  v540 = mlcore::ItemPropertyReportingStoreItemID(v539);
  v541 = std::string::basic_string[abi:ne200100]<0>(v888, "reportingStoreItemID");
  v889 = v540;
  v542 = mlcore::ItemPropertyAssetStoreItemID(v541);
  std::string::basic_string[abi:ne200100]<0>(v890, "assetStoreItemID");
  v891 = v542;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 8);
  [(mlcore *)v527 mapIdentifierMLProperties:v898 identifierCreationBlock:&__block_literal_global_769];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v543 = v898[0];
  v898[0] = 0;
  if (v543)
  {
    operator delete(v543);
  }

  for (i27 = 0; i27 != -32; i27 -= 4)
  {
    if (SHIBYTE(v890[i27 + 2]) < 0)
    {
      operator delete(v890[i27]);
    }
  }

  [(mlcore *)v527 setEntityQueryBlock:&__block_literal_global_771];
  v545 = mlcore::ItemPropertyTitle([(mlcore *)v527 setAllowedItemPredicatesBlock:&__block_literal_global_777]);
  std::string::basic_string[abi:ne200100]<0>(v902, "title");
  v904 = v545;
  v546 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v902, 1);
  v547 = mlcore::ItemPropertyTitleOrder(v546);
  std::string::basic_string[abi:ne200100]<0>(v895, "titleOrder");
  v897 = v547;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, v895, 1);
  [(mlcore *)v527 mapPropertyKey:@"MPModelPropertyMovieTitle" withPropertiesToFetch:__p propertiesToSort:v898 sortTransformer:&__block_literal_global_779 valueTransformer:&__block_literal_global_781_43938];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v548 = v898[0];
  v898[0] = 0;
  if (v548)
  {
    operator delete(v548);
  }

  if (SHIBYTE(v896) < 0)
  {
    operator delete(v895[0]);
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v549 = __p[0];
  __p[0] = 0;
  if (v549)
  {
    operator delete(v549);
  }

  if (SHIBYTE(v903) < 0)
  {
    operator delete(v902[0]);
  }

  v550 = [(mlcore *)v527 mapPropertyKey:@"MPModelPropertyMovieDescriptionText" toMLProperty:mlcore::ItemPropertyLongDescription(v549)];
  v551 = mlcore::MoviePropertyInfo(v550);
  std::string::basic_string[abi:ne200100]<0>(v898, "movieInfoPlist");
  v900 = v551;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v527 mapPropertyKey:@"MPModelPropertyMovieInfoDictionary" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_784];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v552 = __p[0];
  __p[0] = 0;
  if (v552)
  {
    operator delete(v552);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v553 = mlcore::ItemPropertyDateReleased(v552);
  std::string::basic_string[abi:ne200100]<0>(v898, "dateReleased");
  v900 = v553;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v527 mapPropertyKey:@"MPModelPropertyMovieReleaseDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_786_43939];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v554 = __p[0];
  __p[0] = 0;
  if (v554)
  {
    operator delete(v554);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v555 = mlcore::ItemPropertyPersistentID(v554);
  v556 = std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v877[1] = v555;
  v557 = mlcore::ItemPropertyMediaType(v556);
  v558 = std::string::basic_string[abi:ne200100]<0>(v878, "mediaType");
  v879 = v557;
  v559 = mlcore::ItemPropertyAvailableArtworkToken(v558);
  v560 = std::string::basic_string[abi:ne200100]<0>(v880, "availableArtworkToken");
  v881 = v559;
  v561 = mlcore::ItemPropertyFetchableArtworkToken(v560);
  v562 = std::string::basic_string[abi:ne200100]<0>(v882, "fetchableArtworkToken");
  v883 = v561;
  v563 = mlcore::ItemPropertyFetchableArtworkSourceType(v562);
  std::string::basic_string[abi:ne200100]<0>(v884, "fetchableArtworkSourceType");
  v885 = v563;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 5);
  [(mlcore *)v527 mapPropertyKey:@"MPModelPropertyMovieArtwork" withPropertiesToFetch:v898 valueTransformer:&__block_literal_global_788_43940, __p[0]];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v564 = v898[0];
  v898[0] = 0;
  if (v564)
  {
    operator delete(v564);
  }

  for (i28 = 0; i28 != -20; i28 -= 4)
  {
    if (SHIBYTE(v884[i28 + 2]) < 0)
    {
      operator delete(v884[i28]);
    }
  }

  *__p = 0u;
  *v877 = 0u;
  LODWORD(v878[0]) = 1065353216;
  [(mlcore *)v527 mapPropertyKey:@"MPModelPropertyMovieEditorialArtwork" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_790];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v566 = __p[0];
  __p[0] = 0;
  if (v566)
  {
    operator delete(v566);
  }

  v567 = mlcore::ItemPropertyTotalTime(v566);
  std::string::basic_string[abi:ne200100]<0>(v898, "time");
  v900 = v567;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v527 mapPropertyKey:@"MPModelPropertyMovieDuration" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_792];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v568 = __p[0];
  __p[0] = 0;
  if (v568)
  {
    operator delete(v568);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  *__p = 0u;
  *v877 = 0u;
  LODWORD(v878[0]) = 1065353216;
  [(mlcore *)v527 mapPropertyKey:@"MPModelPropertyMovieTagline" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_794];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v569 = __p[0];
  __p[0] = 0;
  if (v569)
  {
    operator delete(v569);
  }

  v570 = [(mlcore *)v527 mapPropertyKey:@"MPModelPropertyMovieExplicitRating" toMLProperty:mlcore::ItemPropertyContentRatingLevel(v569)];
  v571 = [(mlcore *)v527 mapPropertyKey:@"MPModelPropertyMovieHasCloudSyncSource" toMLProperty:mlcore::ItemPropertyHasCloudSyncSource(v570)];
  v572 = [(mlcore *)v527 mapPropertyKey:@"MPModelPropertyMovieLibraryAdded" toMLProperty:mlcore::ItemPropertyInMyLibrary(v571)];
  v573 = mlcore::ItemPropertyDateAdded(v572);
  std::string::basic_string[abi:ne200100]<0>(v898, "libraryAdded");
  v900 = v573;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v527 mapPropertyKey:@"MPModelPropertyMovieLibraryAddedDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_796];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v574 = __p[0];
  __p[0] = 0;
  if (v574)
  {
    operator delete(v574);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v575 = MPModelPropertyMovieDownloadedDate;
  v576 = mlcore::ItemPropertyDateDownloaded(v574);
  std::string::basic_string[abi:ne200100]<0>(v898, "downloadedDate");
  v900 = v576;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v527 mapPropertyKey:v575 withPropertiesToFetch:__p valueTransformer:&__block_literal_global_798];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v577 = __p[0];
  __p[0] = 0;
  if (v577)
  {
    operator delete(v577);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v578 = mlcore::ItemPropertyDatePlayed(v577);
  std::string::basic_string[abi:ne200100]<0>(v898, "datePlayed");
  v900 = v578;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v527 mapPropertyKey:@"MPModelPropertyMovieLastDevicePlaybackDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_800];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v579 = __p[0];
  __p[0] = 0;
  if (v579)
  {
    operator delete(v579);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v580 = mlcore::ItemPropertyHasNonPurgeableAsset(v579);
  v581 = std::string::basic_string[abi:ne200100]<0>(__p, "hasNonPurgeableAsset");
  v877[1] = v580;
  v582 = mlcore::ItemPropertyIsStoreRedownloadable(v581);
  std::string::basic_string[abi:ne200100]<0>(v878, "isStoreRedownloadable");
  v879 = v582;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 2);
  [(mlcore *)v527 mapPropertyKey:@"MPModelPropertyMovieLibraryAddEligible" withPropertiesToFetch:v898 valueTransformer:&__block_literal_global_802];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v583 = v898[0];
  v898[0] = 0;
  if (v583)
  {
    operator delete(v583);
  }

  for (i29 = 0; i29 != -8; i29 -= 4)
  {
    if (SHIBYTE(v878[i29 + 2]) < 0)
    {
      operator delete(v878[i29]);
    }
  }

  v585 = mlcore::ItemPropertyKeepLocal(v583);
  std::string::basic_string[abi:ne200100]<0>(v898, "keepLocal");
  v900 = v585;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v527 mapPropertyKey:@"MPModelPropertyMovieKeepLocalEnableState" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_804];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v586 = __p[0];
  __p[0] = 0;
  if (v586)
  {
    operator delete(v586);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v587 = mlcore::ItemPropertyKeepLocalStatus(v586);
  std::string::basic_string[abi:ne200100]<0>(v898, "keepLocalStatus");
  v900 = v587;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v527 mapPropertyKey:@"MPModelPropertyMovieKeepLocalManagedStatus" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_806];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v588 = __p[0];
  __p[0] = 0;
  if (v588)
  {
    operator delete(v588);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v589 = mlcore::ItemPropertyKeepLocalStatus(v588);
  std::string::basic_string[abi:ne200100]<0>(v898, "keepLocalStatusReason");
  v900 = v589;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v527 mapPropertyKey:@"MPModelPropertyMovieKeepLocalManagedStatusReason" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_808];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v590 = __p[0];
  __p[0] = 0;
  if (v590)
  {
    operator delete(v590);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v591 = mlcore::ItemPropertyKeepLocalConstraints(v590);
  std::string::basic_string[abi:ne200100]<0>(v898, "keepLocalConstraints");
  v900 = v591;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v527 mapPropertyKey:@"MPModelPropertyMovieKeepLocalConstraints" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_810];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v592 = __p[0];
  __p[0] = 0;
  if (v592)
  {
    operator delete(v592);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v593 = mlcore::ItemPropertyStoreCanonicalItemId(v592);
  [(mlcore *)v527 mapPropertyKey:@"MPModelPropertyMovieStoreCanonicalID" toMLProperty:v593, __p[0]];
  *__p = 0u;
  *v877 = 0u;
  LODWORD(v878[0]) = 1065353216;
  [(mlcore *)v527 mapPropertyKey:@"MPModelRelationshipMovieClips" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_812];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v594 = __p[0];
  __p[0] = 0;
  if (v594)
  {
    operator delete(v594);
  }

  v595 = objc_opt_class();
  [(mlcore *)v527 mapRelationshipKey:@"MPModelRelationshipMovieLocalFileAsset" toModelClass:v595 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v595)];
  v596 = objc_opt_class();
  [(mlcore *)v527 mapRelationshipKey:@"MPModelRelationshipMovieStoreAsset" toModelClass:v596 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v596)];
  v597 = objc_opt_class();
  [(mlcore *)v527 mapRelationshipKey:@"MPModelRelationshipMoviePlaybackPosition" toModelClass:v597 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v597)];

  v598 = MEMORY[0x1A58E12C0]();
  v599 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v598];
  v600 = mlcore::ItemPropertyStoreID(v599);
  v601 = std::string::basic_string[abi:ne200100]<0>(__p, "storeID");
  v877[1] = v600;
  v602 = mlcore::ItemPropertyStoreCloudID(v601);
  v603 = std::string::basic_string[abi:ne200100]<0>(v878, "cloudID");
  v879 = v602;
  v604 = mlcore::ItemPropertyStoreCloudUniversalLibraryID(v603);
  v605 = std::string::basic_string[abi:ne200100]<0>(v880, "cloudUniversalLibraryID");
  v881 = v604;
  v606 = mlcore::ItemPropertyPersistentID(v605);
  v607 = std::string::basic_string[abi:ne200100]<0>(v882, "pid");
  v883 = v606;
  v608 = mlcore::ItemPropertySubscriptionStoreItemID(v607);
  v609 = std::string::basic_string[abi:ne200100]<0>(v884, "subscriptionStoreID");
  v885 = v608;
  v610 = mlcore::ItemPropertyStoreCloudAlbumID(v609);
  v611 = std::string::basic_string[abi:ne200100]<0>(v886, "storeCloudAlbumID");
  v887 = v610;
  v612 = mlcore::ItemPropertyReportingStoreItemID(v611);
  v613 = std::string::basic_string[abi:ne200100]<0>(v888, "reportingStoreItemID");
  v889 = v612;
  v614 = mlcore::ItemPropertyAssetStoreItemID(v613);
  std::string::basic_string[abi:ne200100]<0>(v890, "assetStoreItemID");
  v891 = v614;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 8);
  [(mlcore *)v599 mapIdentifierMLProperties:v898 identifierCreationBlock:&__block_literal_global_814];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v615 = v898[0];
  v898[0] = 0;
  if (v615)
  {
    operator delete(v615);
  }

  for (i30 = 0; i30 != -32; i30 -= 4)
  {
    if (SHIBYTE(v890[i30 + 2]) < 0)
    {
      operator delete(v890[i30]);
    }
  }

  [(mlcore *)v599 setEntityQueryBlock:&__block_literal_global_816];
  v617 = mlcore::ItemPropertyTitle([(mlcore *)v599 setAllowedItemPredicatesBlock:&__block_literal_global_822]);
  std::string::basic_string[abi:ne200100]<0>(v902, "title");
  v904 = v617;
  v618 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v902, 1);
  v619 = mlcore::ItemPropertyTitleOrder(v618);
  std::string::basic_string[abi:ne200100]<0>(v895, "titleOrder");
  v897 = v619;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, v895, 1);
  [(mlcore *)v599 mapPropertyKey:@"MPModelPropertyTVEpisodeTitle" withPropertiesToFetch:__p propertiesToSort:v898 sortTransformer:&__block_literal_global_824 valueTransformer:&__block_literal_global_826];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v620 = v898[0];
  v898[0] = 0;
  if (v620)
  {
    operator delete(v620);
  }

  if (SHIBYTE(v896) < 0)
  {
    operator delete(v895[0]);
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v621 = __p[0];
  __p[0] = 0;
  if (v621)
  {
    operator delete(v621);
  }

  if (SHIBYTE(v903) < 0)
  {
    operator delete(v902[0]);
  }

  v622 = [(mlcore *)v599 mapPropertyKey:@"MPModelPropertyTVEpisodeDescriptionText" toMLProperty:mlcore::ItemPropertyLongDescription(v621)];
  v623 = mlcore::ItemPropertyTotalTime(v622);
  std::string::basic_string[abi:ne200100]<0>(v898, "time");
  v900 = v623;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v599 mapPropertyKey:@"MPModelPropertyTVEpisodeDuration" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_828];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v624 = __p[0];
  __p[0] = 0;
  if (v624)
  {
    operator delete(v624);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v625 = [(mlcore *)v599 mapPropertyKey:@"MPModelPropertyTVEpisodeExplicitRating" toMLProperty:mlcore::ItemPropertyContentRatingLevel(v624)];
  v626 = [(mlcore *)v599 mapPropertyKey:@"MPModelPropertyTVEpisodeHasCloudSyncSource" toMLProperty:mlcore::ItemPropertyHasCloudSyncSource(v625)];
  v627 = [(mlcore *)v599 mapPropertyKey:@"MPModelPropertyTVEpisodeMusicShow" toMLProperty:mlcore::ItemPropertyIsMusicShow(v626)];
  v628 = mlcore::TVEpisodePropertyEpisodeSortID(v627);
  v629 = std::string::basic_string[abi:ne200100]<0>(v898, "sortID");
  v900 = v628;
  v630 = mlcore::ItemPropertyTrackNumber(v629);
  std::string::basic_string[abi:ne200100]<0>(v901, "trackNumber");
  v901[3] = v630;
  v631 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v902, v898, 2);
  v632 = mlcore::ItemPropertyEpisodeSortID(v631);
  v633 = std::string::basic_string[abi:ne200100]<0>(__p, "sortID");
  v877[1] = v632;
  v634 = mlcore::ItemPropertyEpisodeSubSortOrder(v633);
  v635 = std::string::basic_string[abi:ne200100]<0>(v878, "subOrder");
  v879 = v634;
  v636 = mlcore::ItemPropertyTrackNumber(v635);
  std::string::basic_string[abi:ne200100]<0>(v880, "trackNumber");
  v881 = v636;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v895, __p, 3);
  [(mlcore *)v599 mapPropertyKey:@"MPModelPropertyTVEpisodeNumber" withPropertiesToFetch:v902 propertiesToSort:v895 sortTransformer:&__block_literal_global_832 valueTransformer:&__block_literal_global_834_43943];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v896);
  v637 = v895[0];
  v895[0] = 0;
  if (v637)
  {
    operator delete(v637);
  }

  for (i31 = 0; i31 != -12; i31 -= 4)
  {
    if (SHIBYTE(v880[i31 + 2]) < 0)
    {
      operator delete(v880[i31]);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v903);
  v639 = v902[0];
  v902[0] = 0;
  if (v639)
  {
    operator delete(v639);
  }

  for (i32 = 0; i32 != -8; i32 -= 4)
  {
    if (SHIBYTE(v901[i32 + 2]) < 0)
    {
      operator delete(v901[i32]);
    }
  }

  v641 = mlcore::ItemPropertyEpisodeType(v639);
  std::string::basic_string[abi:ne200100]<0>(v898, "episodeType");
  v900 = v641;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v599 mapPropertyKey:@"MPModelPropertyTVEpisodeType" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_836];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v642 = __p[0];
  __p[0] = 0;
  if (v642)
  {
    operator delete(v642);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v643 = [(mlcore *)v599 mapPropertyKey:@"MPModelPropertyTVEpisodeTypeDisplayName" toMLProperty:mlcore::ItemPropertyEpisodeTypeDisplayName(v642)];
  v644 = mlcore::ItemPropertyPersistentID(v643);
  v645 = std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v877[1] = v644;
  v646 = mlcore::ItemPropertyMediaType(v645);
  v647 = std::string::basic_string[abi:ne200100]<0>(v878, "mediaType");
  v879 = v646;
  v648 = mlcore::TVEpisodePropertyAvailableScreenshotToken(v647);
  v649 = std::string::basic_string[abi:ne200100]<0>(v880, "availableArtworkToken");
  v881 = v648;
  v650 = mlcore::TVEpisodePropertyFetchableScreenshotToken(v649);
  v651 = std::string::basic_string[abi:ne200100]<0>(v882, "fetchableArtworkToken");
  v883 = v650;
  v652 = mlcore::TVEpisodePropertyFetchableScreenshotSourceType(v651);
  std::string::basic_string[abi:ne200100]<0>(v884, "fetchableArtworkSourceType");
  v885 = v652;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 5);
  [(mlcore *)v599 mapPropertyKey:@"MPModelPropertyTVEpisodeArtwork" withPropertiesToFetch:v898 valueTransformer:&__block_literal_global_849];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v653 = v898[0];
  v898[0] = 0;
  if (v653)
  {
    operator delete(v653);
  }

  for (i33 = 0; i33 != -20; i33 -= 4)
  {
    if (SHIBYTE(v884[i33 + 2]) < 0)
    {
      operator delete(v884[i33]);
    }
  }

  v655 = [(mlcore *)v599 mapPropertyKey:@"MPModelPropertyTVEpisodeLibraryAdded" toMLProperty:mlcore::ItemPropertyInMyLibrary(v653)];
  v656 = mlcore::ItemPropertyDateAdded(v655);
  std::string::basic_string[abi:ne200100]<0>(v898, "libraryAdded");
  v900 = v656;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v599 mapPropertyKey:@"MPModelPropertyTVEpisodeLibraryAddedDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_852];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v657 = __p[0];
  __p[0] = 0;
  if (v657)
  {
    operator delete(v657);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v658 = mlcore::ItemPropertyDatePlayed(v657);
  std::string::basic_string[abi:ne200100]<0>(v898, "datePlayed");
  v900 = v658;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v599 mapPropertyKey:@"MPModelPropertyTVEpisodeLastDevicePlaybackDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_855];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v659 = __p[0];
  __p[0] = 0;
  if (v659)
  {
    operator delete(v659);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v660 = mlcore::ItemPropertyDateReleased(v659);
  std::string::basic_string[abi:ne200100]<0>(v898, "dateReleased");
  v900 = v660;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v599 mapPropertyKey:@"MPModelPropertyTVEpisodeReleaseDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_858_43944];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v661 = __p[0];
  __p[0] = 0;
  if (v661)
  {
    operator delete(v661);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v662 = MPModelPropertyTVEpisodeDownloadedDate;
  v663 = mlcore::ItemPropertyDateDownloaded(v661);
  std::string::basic_string[abi:ne200100]<0>(v898, "downloadedDate");
  v900 = v663;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v599 mapPropertyKey:v662 withPropertiesToFetch:__p valueTransformer:&__block_literal_global_861];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v664 = __p[0];
  __p[0] = 0;
  if (v664)
  {
    operator delete(v664);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v665 = mlcore::ItemPropertyHasNonPurgeableAsset(v664);
  v666 = std::string::basic_string[abi:ne200100]<0>(__p, "hasNonPurgeableAsset");
  v877[1] = v665;
  v667 = mlcore::ItemPropertyIsStoreRedownloadable(v666);
  std::string::basic_string[abi:ne200100]<0>(v878, "isStoreRedownloadable");
  v879 = v667;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 2);
  [(mlcore *)v599 mapPropertyKey:@"MPModelPropertyTVEpisodeLibraryAddEligible" withPropertiesToFetch:v898 valueTransformer:&__block_literal_global_864];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v668 = v898[0];
  v898[0] = 0;
  if (v668)
  {
    operator delete(v668);
  }

  for (i34 = 0; i34 != -8; i34 -= 4)
  {
    if (SHIBYTE(v878[i34 + 2]) < 0)
    {
      operator delete(v878[i34]);
    }
  }

  v670 = mlcore::ItemPropertyKeepLocal(v668);
  std::string::basic_string[abi:ne200100]<0>(v898, "keepLocal");
  v900 = v670;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v599 mapPropertyKey:@"MPModelPropertyTVEpisodeKeepLocalEnableState" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_867];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v671 = __p[0];
  __p[0] = 0;
  if (v671)
  {
    operator delete(v671);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v672 = mlcore::ItemPropertyKeepLocalStatus(v671);
  std::string::basic_string[abi:ne200100]<0>(v898, "keepLocalStatus");
  v900 = v672;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v599 mapPropertyKey:@"MPModelPropertyTVEpisodeKeepLocalManagedStatus" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_870];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v673 = __p[0];
  __p[0] = 0;
  if (v673)
  {
    operator delete(v673);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v674 = mlcore::ItemPropertyKeepLocalStatus(v673);
  std::string::basic_string[abi:ne200100]<0>(v898, "keepLocalStatusReason");
  v900 = v674;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v599 mapPropertyKey:@"MPModelPropertyTVEpisodeKeepLocalManagedStatusReason" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_873];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v675 = __p[0];
  __p[0] = 0;
  if (v675)
  {
    operator delete(v675);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v676 = mlcore::ItemPropertyKeepLocalConstraints(v675);
  std::string::basic_string[abi:ne200100]<0>(v898, "keepLocalConstraints");
  v900 = v676;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v599 mapPropertyKey:@"MPModelPropertyTVEpisodeKeepLocalConstraints" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_876_43945];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v677 = __p[0];
  __p[0] = 0;
  if (v677)
  {
    operator delete(v677);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v678 = mlcore::ItemPropertyStoreCanonicalItemId(v677);
  std::string::basic_string[abi:ne200100]<0>(v898, "canonicalID");
  v900 = v678;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v599 mapPropertyKey:@"MPModelPropertyTVEpisodeStoreCanonicalID" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_880];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v679 = __p[0];
  __p[0] = 0;
  if (v679)
  {
    operator delete(v679);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v680 = objc_opt_class();
  [(mlcore *)v599 mapRelationshipKey:@"MPModelRelationshipTVEpisodeSeason" toModelClass:v680 usingForeignPropertyBase:mlcore::ItemPropertyAlbumPersistentID(v680)];
  v681 = objc_opt_class();
  [(mlcore *)v599 mapRelationshipKey:@"MPModelRelationshipTVEpisodeShow" toModelClass:v681 usingForeignPropertyBase:mlcore::ItemPropertyItemArtistPersistentID(v681)];
  v682 = objc_opt_class();
  [(mlcore *)v599 mapRelationshipKey:@"MPModelRelationshipTVEpisodeLocalFileAsset" toModelClass:v682 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v682)];
  v683 = objc_opt_class();
  [(mlcore *)v599 mapRelationshipKey:@"MPModelRelationshipTVEpisodePlaybackPosition" toModelClass:v683 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v683)];
  v684 = objc_opt_class();
  [(mlcore *)v599 mapRelationshipKey:@"MPModelRelationshipTVEpisodeStoreAsset" toModelClass:v684 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v684)];

  v685 = MEMORY[0x1A58E12B0]();
  v686 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v685];
  v687 = mlcore::AlbumPropertyPersistentID(v686);
  v688 = std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v877[1] = v687;
  v689 = mlcore::AlbumPropertyStoreID(v688);
  std::string::basic_string[abi:ne200100]<0>(v878, "storeID");
  v879 = v689;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 2);
  [(mlcore *)v686 mapIdentifierMLProperties:v898 identifierCreationBlock:&__block_literal_global_882];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v690 = v898[0];
  v898[0] = 0;
  if (v690)
  {
    operator delete(v690);
  }

  for (i35 = 0; i35 != -8; i35 -= 4)
  {
    if (SHIBYTE(v878[i35 + 2]) < 0)
    {
      operator delete(v878[i35]);
    }
  }

  [(mlcore *)v686 setEntityQueryBlock:&__block_literal_global_884];
  v692 = [(mlcore *)v686 mapPropertyKey:@"MPModelPropertyTVSeasonNumber" toMLProperty:mlcore::AlbumPropertySeasonNumber([(mlcore *)v686 setAllowedItemPredicatesBlock:&__block_literal_global_895])];
  v693 = [(mlcore *)v686 mapPropertyKey:@"MPModelPropertyTVSeasonDescriptionText" toMLProperty:mlcore::AlbumPropertyRepresentativeItemCollectionDescription(v692)];
  v694 = [(mlcore *)v686 mapPropertyKey:@"MPModelPropertyTVSeasonYear" toMLProperty:mlcore::AlbumPropertyYear(v693)];
  v695 = mlcore::TVSeasonPropertyLatestItemDateAdded(v694);
  std::string::basic_string[abi:ne200100]<0>(v898, "libraryAdded");
  v900 = v695;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v686 mapPropertyKey:@"MPModelPropertyTVSeasonLibraryAddedDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_897];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v696 = __p[0];
  __p[0] = 0;
  if (v696)
  {
    operator delete(v696);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v697 = mlcore::TVSeasonPropertyLatestItemDateDownloaded(v696);
  std::string::basic_string[abi:ne200100]<0>(v898, "downloadedDate");
  v900 = v697;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v686 mapPropertyKey:@"MPModelPropertyTVSeasonDownloadedDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_899];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v698 = __p[0];
  __p[0] = 0;
  if (v698)
  {
    operator delete(v698);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  *__p = 0u;
  *v877 = 0u;
  LODWORD(v878[0]) = 1065353216;
  [(mlcore *)v686 mapPropertyKey:@"MPModelPropertyTVSeasonLibraryAdded" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_901];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v699 = __p[0];
  __p[0] = 0;
  if (v699)
  {
    operator delete(v699);
  }

  *__p = 0u;
  *v877 = 0u;
  LODWORD(v878[0]) = 1065353216;
  [(mlcore *)v686 mapPropertyKey:@"MPModelPropertyTVSeasonLibraryAddEligible" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_903];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v700 = __p[0];
  __p[0] = 0;
  if (v700)
  {
    operator delete(v700);
  }

  *__p = 0u;
  *v877 = 0u;
  LODWORD(v878[0]) = 1065353216;
  [(mlcore *)v686 mapPropertyKey:@"MPModelPropertyTVSeasonHasExplicitContent" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_905];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v701 = __p[0];
  __p[0] = 0;
  if (v701)
  {
    operator delete(v701);
  }

  v702 = mlcore::AlbumPropertyRepresentativeItemPersistentID(v701);
  v703 = mlcore::ItemPropertyIsExplicit(v702);
  v704 = MPMediaLibraryGetProperty(v702, v703);
  std::string::basic_string[abi:ne200100]<0>(v898, "representativeItemExplicit");
  v900 = v704;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v686 mapPropertyKey:@"MPModelPropertyTVSeasonHasCleanContent" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_907];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v705 = __p[0];
  __p[0] = 0;
  if (v705)
  {
    operator delete(v705);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v706 = [(mlcore *)v686 mapPropertyKey:@"MPModelPropertyTVSeasonEpisodesCount" toMLProperty:mlcore::TVSeasonPropertyEpisodeCount(v705)];
  v707 = mlcore::AlbumPropertyRepresentativeItemShowSortType(v706);
  std::string::basic_string[abi:ne200100]<0>(v898, "sortType");
  v900 = v707;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v686 mapPropertyKey:@"MPModelPropertyTVSeasonSortType" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_910];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v708 = __p[0];
  __p[0] = 0;
  if (v708)
  {
    operator delete(v708);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v709 = mlcore::AlbumPropertyRepresentativeItemPersistentID(v708);
  v710 = std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v877[1] = v709;
  v711 = mlcore::AlbumPropertyRepresentativeItemMediaType(v710);
  v712 = std::string::basic_string[abi:ne200100]<0>(v878, "mediaType");
  v879 = v711;
  v713 = mlcore::AlbumPropertyRepresentativeItemAvailableArtworkToken(v712);
  v714 = std::string::basic_string[abi:ne200100]<0>(v880, "availableArtworkToken");
  v881 = v713;
  v715 = mlcore::AlbumPropertyRepresentativeItemFetchableArtworkToken(v714);
  v716 = std::string::basic_string[abi:ne200100]<0>(v882, "fetchableArtworkToken");
  v883 = v715;
  v717 = mlcore::AlbumPropertyRepresentativeItemFetchableArtworkSourceType(v716);
  std::string::basic_string[abi:ne200100]<0>(v884, "fetchableArtworkSourceType");
  v885 = v717;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 5);
  [(mlcore *)v686 mapPropertyKey:@"MPModelPropertyTVSeasonArtwork" withPropertiesToFetch:v898 valueTransformer:&__block_literal_global_912];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v718 = v898[0];
  v898[0] = 0;
  if (v718)
  {
    operator delete(v718);
  }

  for (i36 = 0; i36 != -20; i36 -= 4)
  {
    if (SHIBYTE(v884[i36 + 2]) < 0)
    {
      operator delete(v884[i36]);
    }
  }

  v720 = mlcore::AlbumPropertyRepresentativeItemPersistentID(v718);
  v721 = mlcore::ItemPropertyStoreTVSeasonCanonicalItemId(v720);
  v722 = MPMediaLibraryGetProperty(v720, v721);
  std::string::basic_string[abi:ne200100]<0>(v898, "storeCanonicalID");
  v900 = v722;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v686 mapPropertyKey:@"MPModelPropertyTVSeasonStoreCanonicalID" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_915];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v723 = __p[0];
  __p[0] = 0;
  if (v723)
  {
    operator delete(v723);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v724 = objc_opt_class();
  v725 = mlcore::AlbumPropertyRepresentativeItemPersistentID(v724);
  v726 = mlcore::ItemPropertyItemArtistPersistentID(v725);
  v727 = MPMediaLibraryGetProperty(v725, v726);
  [(mlcore *)v686 mapRelationshipKey:@"MPModelRelationshipTVSeasonShow" toModelClass:v724 usingForeignPropertyBase:v727, __p[0]];
  v728 = objc_opt_class();
  [(mlcore *)v686 mapRelationshipKey:@"MPModelRelationshipTVSeasonRepresentativeEpisode" toModelClass:v728 usingForeignPropertyBase:mlcore::AlbumPropertyRepresentativeItemPersistentID(v728)];

  v729 = MEMORY[0x1A58E1220]();
  v730 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v729];
  v731 = mlcore::ItemArtistPropertyPersistentID(v730);
  v732 = std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v877[1] = v731;
  v733 = mlcore::ItemArtistPropertyStoreID(v732);
  std::string::basic_string[abi:ne200100]<0>(v878, "storeID");
  v879 = v733;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 2);
  [(mlcore *)v730 mapIdentifierMLProperties:v898 identifierCreationBlock:&__block_literal_global_918];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v734 = v898[0];
  v898[0] = 0;
  if (v734)
  {
    operator delete(v734);
  }

  for (i37 = 0; i37 != -8; i37 -= 4)
  {
    if (SHIBYTE(v878[i37 + 2]) < 0)
    {
      operator delete(v878[i37]);
    }
  }

  [(mlcore *)v730 setEntityQueryBlock:&__block_literal_global_920];
  v736 = mlcore::ItemArtistPropertySeriesName([(mlcore *)v730 setAllowedItemPredicatesBlock:&__block_literal_global_926]);
  std::string::basic_string[abi:ne200100]<0>(v895, "name");
  v897 = v736;
  v737 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, v895, 1);
  HasSeriesName = mlcore::TVShowPropertyHasSeriesName(v737);
  v739 = std::string::basic_string[abi:ne200100]<0>(__p, "hasName");
  v877[1] = HasSeriesName;
  v740 = mlcore::TVShowPropertySeriesOrder(v739);
  std::string::basic_string[abi:ne200100]<0>(v878, "nameOrder");
  v879 = v740;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v902, __p, 2);
  [(mlcore *)v730 mapPropertyKey:@"MPModelPropertyTVShowTitle" withPropertiesToFetch:v898 propertiesToSort:v902 sortTransformer:&__block_literal_global_928 valueTransformer:&__block_literal_global_930];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v903);
  v741 = v902[0];
  v902[0] = 0;
  if (v741)
  {
    operator delete(v741);
  }

  for (i38 = 0; i38 != -8; i38 -= 4)
  {
    if (SHIBYTE(v878[i38 + 2]) < 0)
    {
      operator delete(v878[i38]);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v743 = v898[0];
  v898[0] = 0;
  if (v743)
  {
    operator delete(v743);
  }

  if (SHIBYTE(v896) < 0)
  {
    operator delete(v895[0]);
  }

  v744 = mlcore::ItemArtistPropertyRepresentativeItemPersistentID(v743);
  v745 = std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v877[1] = v744;
  v746 = mlcore::ItemArtistPropertyRepresentativeItemPersistentID(v745);
  v747 = mlcore::ItemPropertyMediaType(v746);
  v748 = MPMediaLibraryGetProperty(v746, v747);
  v749 = std::string::basic_string[abi:ne200100]<0>(v878, "mediaType");
  v879 = v748;
  v750 = mlcore::ItemArtistPropertyRepresentativeItemPersistentID(v749);
  v751 = mlcore::ItemPropertyAvailableArtworkToken(v750);
  v752 = MPMediaLibraryGetProperty(v750, v751);
  v753 = std::string::basic_string[abi:ne200100]<0>(v880, "availableArtworkToken");
  v881 = v752;
  v754 = mlcore::ItemArtistPropertyRepresentativeItemPersistentID(v753);
  v755 = mlcore::ItemPropertyFetchableArtworkToken(v754);
  v756 = MPMediaLibraryGetProperty(v754, v755);
  v757 = std::string::basic_string[abi:ne200100]<0>(v882, "fetchableArtworkToken");
  v883 = v756;
  v758 = mlcore::ItemArtistPropertyRepresentativeItemPersistentID(v757);
  v759 = mlcore::ItemPropertyFetchableArtworkSourceType(v758);
  v760 = MPMediaLibraryGetProperty(v758, v759);
  std::string::basic_string[abi:ne200100]<0>(v884, "fetchableArtworkSourceType");
  v885 = v760;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 5);
  [(mlcore *)v730 mapPropertyKey:@"MPModelPropertyTVShowArtwork" withPropertiesToFetch:v898 valueTransformer:&__block_literal_global_932];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v761 = v898[0];
  v898[0] = 0;
  if (v761)
  {
    operator delete(v761);
  }

  for (i39 = 0; i39 != -20; i39 -= 4)
  {
    if (SHIBYTE(v884[i39 + 2]) < 0)
    {
      operator delete(v884[i39]);
    }
  }

  *__p = 0u;
  *v877 = 0u;
  LODWORD(v878[0]) = 1065353216;
  [(mlcore *)v730 mapPropertyKey:@"MPModelPropertyTVShowEditorialArtwork" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_934];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v763 = __p[0];
  __p[0] = 0;
  if (v763)
  {
    operator delete(v763);
  }

  v764 = [(mlcore *)v730 mapPropertyKey:@"MPModelPropertyTVShowEpisodeCount" toMLProperty:mlcore::TVShowPropertyEpisodeCount(v763)];
  v765 = mlcore::ItemArtistPropertyRepresentativeItemPersistentID(v764);
  v766 = mlcore::ItemPropertyStoreTVShowCanonicalItemId(v765);
  v767 = MPMediaLibraryGetProperty(v765, v766);
  std::string::basic_string[abi:ne200100]<0>(v898, "canonicalID");
  v900 = v767;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v730 mapPropertyKey:@"MPModelPropertyTVShowStoreCanonicalID" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_936];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v768 = __p[0];
  __p[0] = 0;
  if (v768)
  {
    operator delete(v768);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v769 = objc_opt_class();
  v770 = mlcore::ItemArtistPropertyRepresentativeItemPersistentID(v769);
  v771 = mlcore::ItemPropertyAlbumArtistPersistentID(v770);
  v772 = MPMediaLibraryGetProperty(v770, v771);
  [(mlcore *)v730 mapRelationshipKey:@"MPModelRelationshipTVShowCreator" toModelClass:v769 usingForeignPropertyBase:v772, __p[0]];

  v773 = MEMORY[0x1A58E11E0]();
  v774 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v773];
  v775 = mlcore::ArtistPropertyPersistentID(v774);
  v776 = std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v877[1] = v775;
  v777 = mlcore::ArtistPropertyStoreID(v776);
  std::string::basic_string[abi:ne200100]<0>(v878, "storeID");
  v879 = v777;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 2);
  [(mlcore *)v774 mapIdentifierMLProperties:v898 identifierCreationBlock:&__block_literal_global_939];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v778 = v898[0];
  v898[0] = 0;
  if (v778)
  {
    operator delete(v778);
  }

  for (i40 = 0; i40 != -8; i40 -= 4)
  {
    if (SHIBYTE(v878[i40 + 2]) < 0)
    {
      operator delete(v878[i40]);
    }
  }

  v780 = mlcore::ArtistPropertyName(v778);
  std::string::basic_string[abi:ne200100]<0>(v895, "name");
  v897 = v780;
  v781 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, v895, 1);
  v782 = mlcore::ArtistPropertyHasName(v781);
  v783 = std::string::basic_string[abi:ne200100]<0>(__p, "hasName");
  v877[1] = v782;
  v784 = mlcore::ArtistPropertyOrder(v783);
  std::string::basic_string[abi:ne200100]<0>(v878, "nameOrder");
  v879 = v784;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v902, __p, 2);
  [(mlcore *)v774 mapPropertyKey:@"MPModelPropertyPersonName" withPropertiesToFetch:v898 propertiesToSort:v902 sortTransformer:&__block_literal_global_941 valueTransformer:&__block_literal_global_943];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v903);
  v785 = v902[0];
  v902[0] = 0;
  if (v785)
  {
    operator delete(v785);
  }

  for (i41 = 0; i41 != -8; i41 -= 4)
  {
    if (SHIBYTE(v878[i41 + 2]) < 0)
    {
      operator delete(v878[i41]);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v787 = v898[0];
  v898[0] = 0;
  if (v787)
  {
    operator delete(v787);
  }

  if (SHIBYTE(v896) < 0)
  {
    operator delete(v895[0]);
  }

  v788 = mlcore::ArtistPropertyPersistentID(v787);
  v789 = std::string::basic_string[abi:ne200100]<0>(__p, "artistPID");
  v877[1] = v788;
  v790 = mlcore::ArtistPropertyAvailableArtworkToken(v789);
  v791 = std::string::basic_string[abi:ne200100]<0>(v878, "artistAvailableArtworkToken");
  v879 = v790;
  v792 = mlcore::ArtistPropertyFetchableArtworkToken(v791);
  v793 = std::string::basic_string[abi:ne200100]<0>(v880, "artistFetchableArtworkToken");
  v881 = v792;
  v794 = mlcore::ArtistPropertyFetchableArtworkSourceType(v793);
  std::string::basic_string[abi:ne200100]<0>(v882, "artistFetchableArtworkSourceType");
  v883 = v794;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 4);
  [(mlcore *)v774 mapPropertyKey:@"MPModelPropertyTVShowCreatorArtwork" withPropertiesToFetch:v898 valueTransformer:&__block_literal_global_945];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v795 = v898[0];
  v898[0] = 0;
  if (v795)
  {
    operator delete(v795);
  }

  for (i42 = 0; i42 != -16; i42 -= 4)
  {
    if (SHIBYTE(v882[i42 + 2]) < 0)
    {
      operator delete(v882[i42]);
    }
  }

  v797 = MEMORY[0x1A58E1210]();
  v798 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v797];
  v799 = mlcore::PersonPropertyPersistentID(v798);
  v800 = std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v877[1] = v799;
  v801 = mlcore::PersonPropertyCloudIdentifier(v800);
  std::string::basic_string[abi:ne200100]<0>(v878, "socialProfileID");
  v879 = v801;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 2);
  [(mlcore *)v798 mapIdentifierMLProperties:v898 identifierCreationBlock:&__block_literal_global_948];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v802 = v898[0];
  v898[0] = 0;
  if (v802)
  {
    operator delete(v802);
  }

  for (i43 = 0; i43 != -8; i43 -= 4)
  {
    if (SHIBYTE(v878[i43 + 2]) < 0)
    {
      operator delete(v878[i43]);
    }
  }

  v804 = [(mlcore *)v798 mapPropertyKey:@"MPModelPropertyPersonName" toMLProperty:mlcore::PersonPropertyName(v802)];
  v805 = [(mlcore *)v798 mapPropertyKey:@"MPModelPropertySocialPersonUncensoredName" toMLProperty:mlcore::PersonPropertyName(v804)];
  [(mlcore *)v798 mapPropertyKey:@"MPModelPropertySocialPersonHandle" toMLProperty:mlcore::PersonPropertyHandle(v805)];
  *__p = 0u;
  *v877 = 0u;
  LODWORD(v878[0]) = 1065353216;
  [(mlcore *)v798 mapPropertyKey:@"MPModelPropertySocialPersonBiography" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_950];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v806 = __p[0];
  __p[0] = 0;
  if (v806)
  {
    operator delete(v806);
  }

  *__p = 0u;
  *v877 = 0u;
  LODWORD(v878[0]) = 1065353216;
  [(mlcore *)v798 mapPropertyKey:@"MPModelPropertySocialPersonPendingRequestsCount" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_952];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v807 = __p[0];
  __p[0] = 0;
  if (v807)
  {
    operator delete(v807);
  }

  *__p = 0u;
  *v877 = 0u;
  LODWORD(v878[0]) = 1065353216;
  [(mlcore *)v798 mapPropertyKey:@"MPModelPropertySocialPersonIsPrivate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_954];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v808 = __p[0];
  __p[0] = 0;
  if (v808)
  {
    operator delete(v808);
  }

  *__p = 0u;
  *v877 = 0u;
  LODWORD(v878[0]) = 1065353216;
  [(mlcore *)v798 mapPropertyKey:@"MPModelPropertySocialPersonIsVerified" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_956];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v809 = __p[0];
  __p[0] = 0;
  if (v809)
  {
    operator delete(v809);
  }

  v810 = mlcore::PersonPropertyImageURL(v809);
  std::string::basic_string[abi:ne200100]<0>(v898, "imageURL");
  v900 = v810;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v798 mapPropertyKey:@"MPModelPropertySocialPersonArtwork" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_959];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v811 = __p[0];
  __p[0] = 0;
  if (v811)
  {
    operator delete(v811);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  [(mlcore *)v798 mapPropertyKey:@"MPModelPropertySocialPersonHasLightweightProfile" toMLProperty:mlcore::PersonPropertyHasLightweightProfile(v811)];

  v812 = MEMORY[0x1A58DFA10]();
  v813 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v812];
  v814 = mlcore::PlaylistAuthorPropertyPersistentID(v813);
  v815 = std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v877[1] = v814;
  v816 = mlcore::PlaylistAuthorSocialProfileID(v815);
  std::string::basic_string[abi:ne200100]<0>(v878, "socialProfileID");
  v879 = v816;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v898, __p, 2);
  [(mlcore *)v813 mapIdentifierMLProperties:v898 identifierCreationBlock:&__block_literal_global_976];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v899);
  v817 = v898[0];
  v898[0] = 0;
  if (v817)
  {
    operator delete(v817);
  }

  for (i44 = 0; i44 != -8; i44 -= 4)
  {
    if (SHIBYTE(v878[i44 + 2]) < 0)
    {
      operator delete(v878[i44]);
    }
  }

  v819 = [(mlcore *)v813 mapPropertyKey:@"MPModelPropertyPlaylistAuthorRole" toMLProperty:mlcore::PlaylistAuthorPropertyRole([(mlcore *)v813 setEntityQueryBlock:&__block_literal_global_978])];
  v820 = [(mlcore *)v813 mapPropertyKey:@"MPModelPropertyPlaylistAuthorIsPendingApproval" toMLProperty:mlcore::PlaylistAuthorPropertyIsPending(v819)];
  [(mlcore *)v813 mapPropertyKey:@"MPModelPropertyPlaylistAuthorPosition" toMLProperty:mlcore::PlaylistAuthorPropertyPosition(v820)];
  v821 = objc_opt_class();
  v822 = mlcore::PlaylistAuthorPropertyPersistentID(v821);
  v823 = mlcore::PlaylistAuthorPropertyPersonPersistentID(v822);
  [(mlcore *)v813 mapRelationshipKey:@"MPModelRelationshipPlaylistAuthorSocialProfile" toModelClass:v821 transient:0 usingForeignPropertyBase:MPMediaLibraryGetProperty(v822, v823)];
  v824 = objc_opt_class();
  v825 = mlcore::PlaylistAuthorPropertyPersistentID(v824);
  v826 = mlcore::PlaylistAuthorPropertyContainerPersistentID(v825);
  [(mlcore *)v813 mapRelationshipKey:@"MPModelRelationshipPlaylistAuthorPlaylist" toModelClass:v824 transient:0 usingForeignPropertyBase:MPMediaLibraryGetProperty(v825, v826)];

  v827 = MEMORY[0x1A58DFE70]();
  v828 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v827];
  v829 = mlcore::PlaylistItemReactionPropertyPersistentID(v828);
  std::string::basic_string[abi:ne200100]<0>(v898, "itemPID");
  v900 = v829;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v828 mapIdentifierMLProperties:__p identifierCreationBlock:&__block_literal_global_988];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v830 = __p[0];
  __p[0] = 0;
  if (v830)
  {
    operator delete(v830);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v831 = [(mlcore *)v828 mapPropertyKey:@"MPModelPropertyPlaylistEntryReactionText" toMLProperty:mlcore::PlaylistItemReactionPropertyReactionText([(mlcore *)v828 setEntityQueryBlock:&__block_literal_global_990, __p[0]])];
  v832 = mlcore::PlaylistItemReactionPropertyDate(v831);
  std::string::basic_string[abi:ne200100]<0>(v898, "date");
  v900 = v832;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v828 mapPropertyKey:@"MPModelPropertyPlaylistEntryReactionDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_1000];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v833 = __p[0];
  __p[0] = 0;
  if (v833)
  {
    operator delete(v833);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v834 = objc_opt_class();
  v835 = mlcore::PlaylistItemReactionPropertyPersistentID(v834);
  v836 = mlcore::PlaylistItemReactionPropertyPersonPersistentID(v835);
  [(mlcore *)v828 mapRelationshipKey:@"MPModelRelationshipPlaylistEntryReactionSocialProfile" toModelClass:v834 transient:0 usingForeignPropertyBase:MPMediaLibraryGetProperty(v835, v836)];
  v837 = objc_opt_class();
  v838 = mlcore::PlaylistItemReactionPropertyPersistentID(v837);
  v839 = mlcore::PlaylistItemReactionPropertyContainerItemPersistentID(v838);
  [(mlcore *)v828 mapRelationshipKey:@"MPModelRelationshipPlaylistEntryReactionPlaylistEntry" toModelClass:v837 transient:0 usingForeignPropertyBase:MPMediaLibraryGetProperty(v838, v839)];

  v840 = MEMORY[0x1A58DF750]();
  v841 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v840];
  v842 = mlcore::LibraryPinPropertyPersistentID(v841);
  std::string::basic_string[abi:ne200100]<0>(v898, "pid");
  v900 = v842;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v841 mapIdentifierMLProperties:__p identifierCreationBlock:&__block_literal_global_1004];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v843 = __p[0];
  __p[0] = 0;
  if (v843)
  {
    operator delete(v843);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v844 = mlcore::LibraryPinPropertyEntityType([(mlcore *)v841 setEntityQueryBlock:&__block_literal_global_1006, __p[0]]);
  std::string::basic_string[abi:ne200100]<0>(v898, "entityType");
  v900 = v844;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v841 mapPropertyKey:@"MPModelPropertyLibraryPinEntityType" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_1013];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v845 = __p[0];
  __p[0] = 0;
  if (v845)
  {
    operator delete(v845);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v846 = mlcore::LibraryPinPropertyPosition(v845);
  std::string::basic_string[abi:ne200100]<0>(v898, "position");
  v900 = v846;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v841 mapPropertyKey:@"MPModelPropertyLibraryPinPosition" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_1015];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v847 = __p[0];
  __p[0] = 0;
  if (v847)
  {
    operator delete(v847);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v848 = mlcore::LibraryPinPropertyPersistentID(v847);
  std::string::basic_string[abi:ne200100]<0>(v898, "persistentID");
  v900 = v848;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v841 mapPropertyKey:@"MPModelPropertyLibraryPinPersistentID" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_1017];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v849 = __p[0];
  __p[0] = 0;
  if (v849)
  {
    operator delete(v849);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v850 = mlcore::LibraryPinPropertyEntityPersistentID(v849);
  std::string::basic_string[abi:ne200100]<0>(v898, "entityPersistentID");
  v900 = v850;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v841 mapPropertyKey:@"MPModelPropertyLibraryPinEntityPersistentID" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_1020];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v851 = __p[0];
  __p[0] = 0;
  if (v851)
  {
    operator delete(v851);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v852 = mlcore::LibraryPinPropertyDefaultAction(v851);
  std::string::basic_string[abi:ne200100]<0>(v898, "defaultAction");
  v900 = v852;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v841 mapPropertyKey:@"MPModelPropertyLibraryPinDefaultAction" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_1023];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v853 = __p[0];
  __p[0] = 0;
  if (v853)
  {
    operator delete(v853);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v854 = mlcore::LibraryPinPropertyPositionUUID(v853);
  std::string::basic_string[abi:ne200100]<0>(v898, "positionUUID");
  v900 = v854;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v841 mapPropertyKey:@"MPModelPropertyLibraryPinPositionUUID" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_1025];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v855 = __p[0];
  __p[0] = 0;
  if (v855)
  {
    operator delete(v855);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v856 = MPModelRelationshipLibraryPinPlaylist;
  v857 = objc_opt_class();
  v858 = mlcore::LibraryPinPropertyEntityPersistentID(v857);
  v859 = mlcore::LibraryPinPropertyEntityType(v858);
  std::string::basic_string[abi:ne200100]<0>(v898, "entityType");
  v900 = v859;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v841 mapRelationshipKey:v856 toModelClass:v857 transient:1 usingForeignPropertyBase:v858 relationshipValidationProperties:__p isValidRelationshipHandler:&__block_literal_global_1027];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v860 = __p[0];
  __p[0] = 0;
  if (v860)
  {
    operator delete(v860);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v861 = MPModelRelationshipLibraryPinAlbum;
  v862 = objc_opt_class();
  v863 = mlcore::LibraryPinPropertyEntityPersistentID(v862);
  v864 = mlcore::LibraryPinPropertyEntityType(v863);
  std::string::basic_string[abi:ne200100]<0>(v898, "entityType");
  v900 = v864;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v841 mapRelationshipKey:v861 toModelClass:v862 transient:1 usingForeignPropertyBase:v863 relationshipValidationProperties:__p isValidRelationshipHandler:&__block_literal_global_1029];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v865 = __p[0];
  __p[0] = 0;
  if (v865)
  {
    operator delete(v865);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v866 = MPModelRelationshipLibraryPinSong;
  v867 = objc_opt_class();
  v868 = mlcore::LibraryPinPropertyEntityPersistentID(v867);
  v869 = mlcore::LibraryPinPropertyEntityType(v868);
  std::string::basic_string[abi:ne200100]<0>(v898, "entityType");
  v900 = v869;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v841 mapRelationshipKey:v866 toModelClass:v867 transient:1 usingForeignPropertyBase:v868 relationshipValidationProperties:__p isValidRelationshipHandler:&__block_literal_global_1031];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v870 = __p[0];
  __p[0] = 0;
  if (v870)
  {
    operator delete(v870);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }

  v871 = MPModelRelationshipLibraryPinArtist;
  v872 = objc_opt_class();
  v873 = mlcore::LibraryPinPropertyEntityPersistentID(v872);
  v874 = mlcore::LibraryPinPropertyEntityType(v873);
  std::string::basic_string[abi:ne200100]<0>(v898, "entityType");
  v900 = v874;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v898, 1);
  [(mlcore *)v841 mapRelationshipKey:v871 toModelClass:v872 transient:1 usingForeignPropertyBase:v873 relationshipValidationProperties:__p isValidRelationshipHandler:&__block_literal_global_1033];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v877[0]);
  v875 = __p[0];
  __p[0] = 0;
  if (v875)
  {
    operator delete(v875);
  }

  if (SHIBYTE(v899) < 0)
  {
    operator delete(v898[0]);
  }
}

void sub_1A262F5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::~__hash_table(&__p);
  if (*(v15 - 177) < 0)
  {
    operator delete(*(v15 - 200));
  }

  if (a2 == 2)
  {
    v18 = __cxa_begin_catch(a1);
    v19 = MEMORY[0x1E695DF30];
    v20 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&__p);
    (*(*v18 + 24))(v18, &__p);
    if (*(v15 - 177) >= 0)
    {
      v21 = v15 - 200;
    }

    else
    {
      v21 = *(v15 - 200);
    }

    v22 = [v20 stringWithUTF8String:v21];
    v23 = [v19 exceptionWithName:@"MediaPlatform" reason:v22 userInfo:0];
    v24 = v23;

    if (*(v15 - 177) < 0)
    {
      operator delete(*(v15 - 200));
    }

    objc_exception_throw(v23);
  }

  if (a2 == 1)
  {
    v25 = __cxa_begin_catch(a1);
    v26 = MEMORY[0x1E695DF30];
    v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v25 + 16))(v25)];
    v28 = [v26 exceptionWithName:*MEMORY[0x1E695D920] reason:v27 userInfo:0];
    v29 = v28;

    objc_exception_throw(v28);
  }

  _Unwind_Resume(a1);
}

void _MPMLInitPropertySongMap(void)
{
  v155 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1A58E1100]();
  v1 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v0];
  v2 = mlcore::ItemPropertyStoreID(v1);
  v3 = std::string::basic_string[abi:ne200100]<0>(__p, "storeID");
  *(&v138 + 1) = v2;
  v4 = mlcore::ItemPropertyStoreCloudID(v3);
  v5 = std::string::basic_string[abi:ne200100]<0>(v139, "cloudID");
  v140 = v4;
  v6 = mlcore::ItemPropertyStoreCloudUniversalLibraryID(v5);
  v7 = std::string::basic_string[abi:ne200100]<0>(v141, "cloudUniversalLibraryID");
  v142 = v6;
  v8 = mlcore::ItemPropertyPersistentID(v7);
  v9 = std::string::basic_string[abi:ne200100]<0>(v143, "pid");
  v144 = v8;
  v10 = mlcore::ItemPropertyExcludeFromShuffle(v9);
  v11 = std::string::basic_string[abi:ne200100]<0>(v145, "excludeFromShuffle");
  v146 = v10;
  v12 = mlcore::ItemPropertySubscriptionStoreItemID(v11);
  v13 = std::string::basic_string[abi:ne200100]<0>(v147, "subscriptionStoreID");
  v147[3] = v12;
  v14 = mlcore::ItemPropertyStoreCloudAlbumID(v13);
  v15 = std::string::basic_string[abi:ne200100]<0>(v148, "storeCloudAlbumID");
  v148[3] = v14;
  v16 = mlcore::ItemPropertySyncID(v15);
  v17 = std::string::basic_string[abi:ne200100]<0>(v149, "syncID");
  v149[3] = v16;
  v18 = mlcore::ItemPropertyReportingStoreItemID(v17);
  v19 = std::string::basic_string[abi:ne200100]<0>(v150, "reportingStoreItemID");
  v150[3] = v18;
  v20 = mlcore::ItemPropertyAssetStoreItemID(v19);
  std::string::basic_string[abi:ne200100]<0>(v151, "assetStoreItemID");
  v151[3] = v20;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v152, __p, 10);
  [(mlcore *)v1 mapIdentifierMLProperties:v152 identifierCreationBlock:&__block_literal_global_69];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v153);
  v21 = v152[0];
  v152[0] = 0;
  if (v21)
  {
    operator delete(v21);
  }

  v22 = 40;
  do
  {
    if (*(&v135 + v22 * 8) < 0)
    {
      operator delete(v134[v22]);
    }

    v22 -= 4;
  }

  while (v22 * 8);
  [(mlcore *)v1 setEntityQueryBlock:&__block_literal_global_77_44103];
  v23 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongDiscNumber" toMLProperty:mlcore::ItemPropertyDiscNumber([(mlcore *)v1 setAllowedItemPredicatesBlock:&__block_literal_global_90])];
  v24 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongExplicit" toMLProperty:mlcore::ItemPropertyIsExplicit(v23)];
  v25 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongHasVideo" toMLProperty:mlcore::ItemPropertyIsVideo(v24)];
  v26 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongCopyrightText" toMLProperty:mlcore::ItemPropertyCopyright(v25)];
  v27 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongHasCloudSyncSource" toMLProperty:mlcore::ItemPropertyHasCloudSyncSource(v26)];
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongYear" toMLProperty:mlcore::ItemPropertyYear(v27)];
  *__p = 0u;
  v138 = 0u;
  LODWORD(v139[0]) = 1065353216;
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongHasCredits" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_93];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v28 = __p[0];
  __p[0] = 0;
  if (v28)
  {
    operator delete(v28);
  }

  v29 = mlcore::ItemPropertyUserRating(v28);
  std::string::basic_string[abi:ne200100]<0>(v152, "userRating");
  v154 = v29;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v152, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongUserRating" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_96];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v30 = __p[0];
  __p[0] = 0;
  if (v30)
  {
    operator delete(v30);
  }

  if (SHIBYTE(v153) < 0)
  {
    operator delete(v152[0]);
  }

  v31 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongCloudStatus" toMLProperty:mlcore::ItemPropertyStoreCloudStatus(v30)];
  v32 = mlcore::ItemPropertyTitle(v31);
  std::string::basic_string[abi:ne200100]<0>(v134, "title");
  v136 = v32;
  v33 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v134, 1);
  v34 = mlcore::ItemPropertyTitleOrder(v33);
  std::string::basic_string[abi:ne200100]<0>(v131, "titleOrder");
  v133 = v34;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v152, v131, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongTitle" withPropertiesToFetch:__p propertiesToSort:v152 sortTransformer:&__block_literal_global_101 filterTransformer:&__block_literal_global_104 valueTransformer:&__block_literal_global_109];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v153);
  v35 = v152[0];
  v152[0] = 0;
  if (v35)
  {
    operator delete(v35);
  }

  if (v132 < 0)
  {
    operator delete(v131[0]);
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v36 = __p[0];
  __p[0] = 0;
  if (v36)
  {
    operator delete(v36);
  }

  if (v135 < 0)
  {
    operator delete(v134[0]);
  }

  v37 = [(mlcore *)v1 mapPropertyKey:@"_MPModelPropertySongTrackCount" toMLProperty:mlcore::ItemPropertyAlbumTrackCount(v36)];
  v38 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongPlayCount" toMLProperty:mlcore::ItemPropertyPlayCountUser(v37)];
  v39 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongSkipCount" toMLProperty:mlcore::ItemPropertySkipCountUser(v38)];
  v40 = mlcore::ItemPropertyTrackNumber(v39);
  std::string::basic_string[abi:ne200100]<0>(v134, "trackNumber");
  v136 = v40;
  v41 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v134, 1);
  HasTrackNumber = mlcore::ItemPropertyHasTrackNumber(v41);
  std::string::basic_string[abi:ne200100]<0>(v131, "hasTrackNumber");
  v133 = HasTrackNumber;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v152, v131, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongTrackNumber" withPropertiesToFetch:__p propertiesToSort:v152 sortTransformer:&__block_literal_global_113 valueTransformer:&__block_literal_global_115];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v153);
  v43 = v152[0];
  v152[0] = 0;
  if (v43)
  {
    operator delete(v43);
  }

  if (v132 < 0)
  {
    operator delete(v131[0]);
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v44 = __p[0];
  __p[0] = 0;
  if (v44)
  {
    operator delete(v44);
  }

  if (v135 < 0)
  {
    operator delete(v134[0]);
  }

  v45 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongGrouping" toMLProperty:mlcore::ItemPropertyGrouping(v44)];
  v46 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongClassicalWork" toMLProperty:mlcore::ItemPropertyClassicalWork(v45)];
  v47 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongClassicalMovementCount" toMLProperty:mlcore::ItemPropertyClassicalMovementCount(v46)];
  v48 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongClassicalMovementNumber" toMLProperty:mlcore::ItemPropertyClassicalMovementNumber(v47)];
  v49 = mlcore::ItemPropertyClassicalMovement(v48);
  std::string::basic_string[abi:ne200100]<0>(v134, "classicalMovement");
  v136 = v49;
  v50 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v134, 1);
  v51 = mlcore::ItemPropertyClassicalMovementNumber(v50);
  std::string::basic_string[abi:ne200100]<0>(v131, "classicalMovementNumber");
  v133 = v51;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v152, v131, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongClassicalMovement" withPropertiesToFetch:__p propertiesToSort:v152 sortTransformer:&__block_literal_global_119 valueTransformer:&__block_literal_global_121];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v153);
  v52 = v152[0];
  v152[0] = 0;
  if (v52)
  {
    operator delete(v52);
  }

  if (v132 < 0)
  {
    operator delete(v131[0]);
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v53 = __p[0];
  __p[0] = 0;
  if (v53)
  {
    operator delete(v53);
  }

  if (v135 < 0)
  {
    operator delete(v134[0]);
  }

  v54 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongShouldShowComposer" toMLProperty:mlcore::ItemPropertyShowComposerAsArtist(v53)];
  v55 = mlcore::ItemPropertyVolumeNormalization(v54);
  std::string::basic_string[abi:ne200100]<0>(v152, "volumeNormalization");
  v154 = v55;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v152, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongVolumeNormalization" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_124];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v56 = __p[0];
  __p[0] = 0;
  if (v56)
  {
    operator delete(v56);
  }

  if (SHIBYTE(v153) < 0)
  {
    operator delete(v152[0]);
  }

  v57 = mlcore::ItemPropertyDurationInSamples(v56);
  v58 = std::string::basic_string[abi:ne200100]<0>(__p, "durationInSamples");
  *(&v138 + 1) = v57;
  v59 = mlcore::ItemPropertyGaplessHeuristicInfo(v58);
  v60 = std::string::basic_string[abi:ne200100]<0>(v139, "gaplessHeuristicInfo");
  v140 = v59;
  v61 = mlcore::ItemPropertyGaplessEncodingDelay(v60);
  v62 = std::string::basic_string[abi:ne200100]<0>(v141, "gaplessEncodingDelay");
  v142 = v61;
  v63 = mlcore::ItemPropertyGaplessEncodingDrain(v62);
  v64 = std::string::basic_string[abi:ne200100]<0>(v143, "gaplessEncodingDrain");
  v144 = v63;
  FrameResync = mlcore::ItemPropertyGaplessLastFrameResync(v64);
  std::string::basic_string[abi:ne200100]<0>(v145, "gaplessLastFrameResync");
  v146 = FrameResync;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v152, __p, 5);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongGaplessInfo" withPropertiesToFetch:v152 valueTransformer:&__block_literal_global_131];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v153);
  v66 = v152[0];
  v152[0] = 0;
  if (v66)
  {
    operator delete(v66);
  }

  for (i = 0; i != -20; i -= 4)
  {
    if (SHIBYTE(v145[i + 2]) < 0)
    {
      operator delete(v145[i]);
    }
  }

  v68 = mlcore::ItemPropertyRelativeVolume(v66);
  std::string::basic_string[abi:ne200100]<0>(v152, "relativeVolume");
  v154 = v68;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v152, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongVolumeAdjustment" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_135];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v69 = __p[0];
  __p[0] = 0;
  if (v69)
  {
    operator delete(v69);
  }

  if (SHIBYTE(v153) < 0)
  {
    operator delete(v152[0]);
  }

  v70 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongBeatsPerMinute" toMLProperty:mlcore::ItemPropertyBPM(v69)];
  v71 = mlcore::ItemPropertyTotalTime(v70);
  std::string::basic_string[abi:ne200100]<0>(v152, "time");
  v154 = v71;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v152, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongDuration" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_138];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v72 = __p[0];
  __p[0] = 0;
  if (v72)
  {
    operator delete(v72);
  }

  if (SHIBYTE(v153) < 0)
  {
    operator delete(v152[0]);
  }

  v73 = mlcore::ItemPropertyPersistentID(v72);
  v74 = std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  *(&v138 + 1) = v73;
  v75 = mlcore::ItemPropertyMediaType(v74);
  v76 = std::string::basic_string[abi:ne200100]<0>(v139, "mediaType");
  v140 = v75;
  v77 = mlcore::ItemPropertyAvailableArtworkToken(v76);
  v78 = std::string::basic_string[abi:ne200100]<0>(v141, "availableArtworkToken");
  v142 = v77;
  v79 = mlcore::ItemPropertyFetchableArtworkToken(v78);
  v80 = std::string::basic_string[abi:ne200100]<0>(v143, "fetchableArtworkToken");
  v144 = v79;
  v81 = mlcore::ItemPropertyFetchableArtworkSourceType(v80);
  std::string::basic_string[abi:ne200100]<0>(v145, "fetchableArtworkSourceType");
  v146 = v81;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v152, __p, 5);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongArtwork" withPropertiesToFetch:v152 valueTransformer:&__block_literal_global_145];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v153);
  v82 = v152[0];
  v152[0] = 0;
  if (v82)
  {
    operator delete(v82);
  }

  for (j = 0; j != -20; j -= 4)
  {
    if (SHIBYTE(v145[j + 2]) < 0)
    {
      operator delete(v145[j]);
    }
  }

  v84 = mlcore::ItemPropertyHLSAudioCapability(v82);
  v85 = std::string::basic_string[abi:ne200100]<0>(__p, "hlsAudioCapability");
  *(&v138 + 1) = v84;
  IsMasteredForiTunes = mlcore::ItemPropertyIsMasteredForiTunes(v85);
  std::string::basic_string[abi:ne200100]<0>(v139, "masteredForiTunes");
  v140 = IsMasteredForiTunes;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v152, __p, 2);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongTraits" withPropertiesToFetch:v152 valueTransformer:&__block_literal_global_149_44113];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v153);
  v87 = v152[0];
  v152[0] = 0;
  if (v87)
  {
    operator delete(v87);
  }

  for (k = 0; k != -8; k -= 4)
  {
    if (SHIBYTE(v139[k + 2]) < 0)
    {
      operator delete(v139[k]);
    }
  }

  v89 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongArtistUploadedContent" toMLProperty:mlcore::ItemPropertyIsArtistUploadedContent(v87)];
  v90 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongLibraryAdded" toMLProperty:mlcore::ItemPropertyInMyLibrary(v89)];
  v91 = mlcore::ItemPropertyDateAdded(v90);
  std::string::basic_string[abi:ne200100]<0>(v152, "libraryAdded");
  v154 = v91;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v152, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongLibraryAddedDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_153];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v92 = __p[0];
  __p[0] = 0;
  if (v92)
  {
    operator delete(v92);
  }

  if (SHIBYTE(v153) < 0)
  {
    operator delete(v152[0]);
  }

  v93 = mlcore::ItemPropertyDateDownloaded(v92);
  std::string::basic_string[abi:ne200100]<0>(v152, "downloadedDate");
  v154 = v93;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v152, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongDownloadedDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_156];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v94 = __p[0];
  __p[0] = 0;
  if (v94)
  {
    operator delete(v94);
  }

  if (SHIBYTE(v153) < 0)
  {
    operator delete(v152[0]);
  }

  v95 = mlcore::ItemPropertyDatePlayed(v94);
  std::string::basic_string[abi:ne200100]<0>(v152, "datePlayed");
  v154 = v95;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v152, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongLastDevicePlaybackDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_159];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v96 = __p[0];
  __p[0] = 0;
  if (v96)
  {
    operator delete(v96);
  }

  if (SHIBYTE(v153) < 0)
  {
    operator delete(v152[0]);
  }

  HasNonPurgeableAsset = mlcore::ItemPropertyHasNonPurgeableAsset(v96);
  v98 = std::string::basic_string[abi:ne200100]<0>(__p, "hasNonPurgeableAsset");
  *(&v138 + 1) = HasNonPurgeableAsset;
  IsStoreRedownloadable = mlcore::ItemPropertyIsStoreRedownloadable(v98);
  std::string::basic_string[abi:ne200100]<0>(v139, "isStoreRedownloadable");
  v140 = IsStoreRedownloadable;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v152, __p, 2);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongLibraryAddEligible" withPropertiesToFetch:v152 valueTransformer:&__block_literal_global_163];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v153);
  v100 = v152[0];
  v152[0] = 0;
  if (v100)
  {
    operator delete(v100);
  }

  for (m = 0; m != -8; m -= 4)
  {
    if (SHIBYTE(v139[m + 2]) < 0)
    {
      operator delete(v139[m]);
    }
  }

  v102 = mlcore::ItemPropertyKeepLocal(v100);
  std::string::basic_string[abi:ne200100]<0>(v152, "keepLocal");
  v154 = v102;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v152, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongKeepLocalEnableState" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_166];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v103 = __p[0];
  __p[0] = 0;
  if (v103)
  {
    operator delete(v103);
  }

  if (SHIBYTE(v153) < 0)
  {
    operator delete(v152[0]);
  }

  v104 = mlcore::ItemPropertyKeepLocalStatus(v103);
  std::string::basic_string[abi:ne200100]<0>(v152, "keepLocalStatus");
  v154 = v104;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v152, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongKeepLocalManagedStatus" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_169_44114];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v105 = __p[0];
  __p[0] = 0;
  if (v105)
  {
    operator delete(v105);
  }

  if (SHIBYTE(v153) < 0)
  {
    operator delete(v152[0]);
  }

  v106 = mlcore::ItemPropertyKeepLocalStatusReason(v105);
  std::string::basic_string[abi:ne200100]<0>(v152, "keepLocalStatusReason");
  v154 = v106;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v152, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongKeepLocalManagedStatusReason" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_172_44115];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v107 = __p[0];
  __p[0] = 0;
  if (v107)
  {
    operator delete(v107);
  }

  if (SHIBYTE(v153) < 0)
  {
    operator delete(v152[0]);
  }

  v108 = mlcore::ItemPropertyKeepLocalConstraints(v107);
  std::string::basic_string[abi:ne200100]<0>(v152, "keepLocalConstraints");
  v154 = v108;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v152, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongKeepLocalConstraints" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_175];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v109 = __p[0];
  __p[0] = 0;
  if (v109)
  {
    operator delete(v109);
  }

  if (SHIBYTE(v153) < 0)
  {
    operator delete(v152[0]);
  }

  v110 = mlcore::ItemPropertyLikedState(v109);
  std::string::basic_string[abi:ne200100]<0>(v152, "likedState");
  v154 = v110;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v152, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongIsFavorite" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_178_44116];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v111 = __p[0];
  __p[0] = 0;
  if (v111)
  {
    operator delete(v111);
  }

  if (SHIBYTE(v153) < 0)
  {
    operator delete(v152[0]);
  }

  v112 = mlcore::ItemPropertyLikedState(v111);
  std::string::basic_string[abi:ne200100]<0>(v152, "likedState");
  v154 = v112;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v152, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongIsDisliked" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_180];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v113 = __p[0];
  __p[0] = 0;
  if (v113)
  {
    operator delete(v113);
  }

  if (SHIBYTE(v153) < 0)
  {
    operator delete(v152[0]);
  }

  v114 = mlcore::ItemPropertyLikedStateChangedDate(v113);
  std::string::basic_string[abi:ne200100]<0>(v152, "likedStateChangedDate");
  v154 = v114;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v152, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongDateFavorited" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_183];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v115 = __p[0];
  __p[0] = 0;
  if (v115)
  {
    operator delete(v115);
  }

  if (SHIBYTE(v153) < 0)
  {
    operator delete(v152[0]);
  }

  v116 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongSupportsExtendedLyricsAttribute" toMLProperty:mlcore::ItemPropertyStoreExtendedLyricsAttribute(v115)];
  v117 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongIsPinned" toMLProperty:mlcore::ItemPropertyIsLibraryPinned(v116)];
  v118 = mlcore::ItemPropertyImmersiveDeepLinkURL(v117);
  std::string::basic_string[abi:ne200100]<0>(v152, "immersiveURL");
  v154 = v118;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v152, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongImmersiveDeeplinkURL" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_186];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v119 = __p[0];
  __p[0] = 0;
  if (v119)
  {
    operator delete(v119);
  }

  if (SHIBYTE(v153) < 0)
  {
    operator delete(v152[0]);
  }

  v120 = mlcore::ItemPropertyDateReleased(v119);
  std::string::basic_string[abi:ne200100]<0>(v152, "releasedDate");
  v154 = v120;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v152, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertySongDateReleased" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_190];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v138);
  v121 = __p[0];
  __p[0] = 0;
  if (v121)
  {
    operator delete(v121);
  }

  if (SHIBYTE(v153) < 0)
  {
    operator delete(v152[0]);
  }

  v122 = objc_opt_class();
  [(mlcore *)v1 mapRelationshipKey:@"MPModelRelationshipSongArtist" toModelClass:v122 usingForeignPropertyBase:mlcore::ItemPropertyItemArtistPersistentID(v122)];
  v123 = objc_opt_class();
  [(mlcore *)v1 mapRelationshipKey:@"MPModelRelationshipSongAlbum" toModelClass:v123 usingForeignPropertyBase:mlcore::ItemPropertyAlbumPersistentID(v123)];
  v124 = objc_opt_class();
  [(mlcore *)v1 mapRelationshipKey:@"MPModelRelationshipSongComposer" toModelClass:v124 usingForeignPropertyBase:mlcore::ItemPropertyComposerPersistentID(v124)];
  v125 = objc_opt_class();
  [(mlcore *)v1 mapRelationshipKey:@"MPModelRelationshipSongGenre" toModelClass:v125 usingForeignPropertyBase:mlcore::ItemPropertyGenrePersistentID(v125)];
  v126 = objc_opt_class();
  [(mlcore *)v1 mapRelationshipKey:@"MPModelRelationshipSongLocalFileAsset" toModelClass:v126 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v126)];
  v127 = objc_opt_class();
  [(mlcore *)v1 mapRelationshipKey:@"MPModelRelationshipSongLyrics" toModelClass:v127 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v127)];
  v128 = objc_opt_class();
  [(mlcore *)v1 mapRelationshipKey:@"MPModelRelationshipSongHomeSharingAsset" toModelClass:v128 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v128)];
  v129 = objc_opt_class();
  [(mlcore *)v1 mapRelationshipKey:@"MPModelRelationshipSongPlaybackPosition" toModelClass:v129 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v129)];
  v130 = objc_opt_class();
  [(mlcore *)v1 mapRelationshipKey:@"MPModelRelationshipSongStoreAsset" toModelClass:v130 transient:1 usingForeignPropertyBase:mlcore::ItemPropertyPersistentID(v130)];
}

void sub_1A2635AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::~__hash_table(&a23);
  if (*(v29 - 73) < 0)
  {
    operator delete(*(v29 - 96));
  }

  if (a2 == 2)
  {
    v32 = __cxa_begin_catch(a1);
    v33 = MEMORY[0x1E695DF30];
    v34 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a23);
    (*(*v32 + 24))(v32, &a23);
    if (*(v29 - 73) >= 0)
    {
      v35 = v29 - 96;
    }

    else
    {
      v35 = *(v29 - 96);
    }

    v36 = [v34 stringWithUTF8String:v35];
    v37 = [v33 exceptionWithName:@"MediaPlatform" reason:v36 userInfo:0];
    v38 = v37;

    if (*(v29 - 73) < 0)
    {
      operator delete(*(v29 - 96));
    }

    objc_exception_throw(v37);
  }

  if (a2 == 1)
  {
    v39 = __cxa_begin_catch(a1);
    v40 = MEMORY[0x1E695DF30];
    v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v39 + 16))(v39)];
    v42 = [v40 exceptionWithName:*MEMORY[0x1E695D920] reason:v41 userInfo:0];
    v43 = v42;

    objc_exception_throw(v42);
  }

  _Unwind_Resume(a1);
}

void _MPMLInitPropertyPlaylistMap(void)
{
  v206 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1A58E1290]();
  v1 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:objc_opt_class() mlcoreEntityClass:v0];
  v2 = mlcore::PlaylistPropertyPersistentID(v1);
  v3 = std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v178[1] = v2;
  v4 = mlcore::PlaylistPropertyCloudGlobalID(v3);
  v5 = std::string::basic_string[abi:ne200100]<0>(v179, "globalID");
  v180 = v4;
  v6 = mlcore::PlaylistPropertyStoreCloudID(v5);
  v7 = std::string::basic_string[abi:ne200100]<0>(v181, "cloudID");
  v182 = v6;
  v8 = mlcore::PlaylistPropertyCloudUniversalLibraryID(v7);
  v9 = std::string::basic_string[abi:ne200100]<0>(v183, "cloudUniversalLibraryID");
  v184 = v8;
  v10 = mlcore::PlaylistPropertySyncID(v9);
  v11 = std::string::basic_string[abi:ne200100]<0>(v185, "syncID");
  v186 = v10;
  v12 = mlcore::PlaylistPropertyCloudVersionHash(v11);
  v13 = std::string::basic_string[abi:ne200100]<0>(v187, "versionHash");
  v188 = v12;
  IsFolder = mlcore::PlaylistPropertySmartIsFolder(v13);
  std::string::basic_string[abi:ne200100]<0>(v189, "isFolder");
  v190 = IsFolder;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v203, __p, 7);
  [(mlcore *)v1 mapIdentifierMLProperties:v203 identifierCreationBlock:&__block_literal_global_375];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v204);
  v15 = v203[0];
  v203[0] = 0;
  if (v15)
  {
    operator delete(v15);
  }

  for (i = 0; i != -28; i -= 4)
  {
    if (SHIBYTE(v189[i + 2]) < 0)
    {
      operator delete(v189[i]);
    }
  }

  [(mlcore *)v1 setEntityQueryBlock:&__block_literal_global_378];
  v17 = mlcore::PlaylistPropertyName([(mlcore *)v1 setAllowedItemPredicatesBlock:&__block_literal_global_393]);
  std::string::basic_string[abi:ne200100]<0>(v200, "name");
  v202 = v17;
  v18 = std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v200, 1);
  v19 = mlcore::PlaylistPropertyNameOrder(v18);
  std::string::basic_string[abi:ne200100]<0>(v197, "nameOrder");
  v199 = v19;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v203, v197, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistName" withPropertiesToFetch:__p propertiesToSort:v203 sortTransformer:&__block_literal_global_397 filterTransformer:&__block_literal_global_399 valueTransformer:&__block_literal_global_404];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v204);
  v20 = v203[0];
  v203[0] = 0;
  if (v20)
  {
    operator delete(v20);
  }

  if (v198 < 0)
  {
    operator delete(v197[0]);
  }

  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v21 = __p[0];
  __p[0] = 0;
  if (v21)
  {
    operator delete(v21);
  }

  if (v201 < 0)
  {
    operator delete(v200[0]);
  }

  v22 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistDescriptionText" toMLProperty:mlcore::PlaylistPropertyDescription(v21)];
  v23 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistIsOwner" toMLProperty:mlcore::PlaylistPropertyIsOwner(v22)];
  v24 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistCuratorPlaylist" toMLProperty:mlcore::PlaylistPropertyIsCuratorOwned(v23)];
  v25 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistPublicPlaylist" toMLProperty:mlcore::PlaylistPropertyCloudIsPublic(v24)];
  v26 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistVisiblePlaylist" toMLProperty:mlcore::PlaylistPropertyCloudIsVisible(v25)];
  v27 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistSubscribed" toMLProperty:mlcore::PlaylistPropertyIsSubscribed(v26)];
  v28 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistCloudVersionHash" toMLProperty:mlcore::PlaylistPropertyCloudVersionHash(v27)];
  IsTracklistUserEditable = mlcore::PlaylistPropertyIsTracklistUserEditable(v28);
  v30 = std::string::basic_string[abi:ne200100]<0>(__p, "isTracklistUserEditable");
  v178[1] = IsTracklistUserEditable;
  IsSmart = mlcore::PlaylistPropertyIsSmart(v30);
  v32 = std::string::basic_string[abi:ne200100]<0>(v179, "isSmart");
  v180 = IsSmart;
  v33 = mlcore::PlaylistPropertySmartIsFolder(v32);
  v34 = std::string::basic_string[abi:ne200100]<0>(v181, "isFolder");
  v182 = v33;
  IsGenius = mlcore::PlaylistPropertySmartIsGenius(v34);
  v36 = std::string::basic_string[abi:ne200100]<0>(v183, "isGenius");
  v184 = IsGenius;
  IsSubscribed = mlcore::PlaylistPropertyIsSubscribed(v36);
  v38 = std::string::basic_string[abi:ne200100]<0>(v185, "isSubscribed");
  v186 = IsSubscribed;
  IsFavoritedSongs = mlcore::PlaylistPropertyIsFavoritedSongs(v38);
  v40 = std::string::basic_string[abi:ne200100]<0>(v187, "isFavoriteSongsPlaylist");
  v188 = IsFavoritedSongs;
  IsOwner = mlcore::PlaylistPropertyIsOwner(v40);
  v42 = std::string::basic_string[abi:ne200100]<0>(v189, "isOwner");
  v190 = IsOwner;
  IsCollaborative = mlcore::PlaylistPropertyIsCollaborative(v42);
  std::string::basic_string[abi:ne200100]<0>(v191, "isCollaborative");
  v192 = IsCollaborative;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v203, __p, 8);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistUserEditableComponents" withPropertiesToFetch:v203 valueTransformer:&__block_literal_global_413];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v204);
  v44 = v203[0];
  v203[0] = 0;
  if (v44)
  {
    operator delete(v44);
  }

  for (j = 0; j != -32; j -= 4)
  {
    if (SHIBYTE(v191[j + 2]) < 0)
    {
      operator delete(v191[j]);
    }
  }

  v46 = mlcore::PlaylistPropertyCloudShareURL(v44);
  std::string::basic_string[abi:ne200100]<0>(v203, "shareURL");
  v205 = v46;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v203, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistShareURL" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_420_44037];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v47 = __p[0];
  __p[0] = 0;
  if (v47)
  {
    operator delete(v47);
  }

  if (SHIBYTE(v204) < 0)
  {
    operator delete(v203[0]);
  }

  *__p = 0u;
  *v178 = 0u;
  LODWORD(v179[0]) = 1065353216;
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistShareShortURL" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_423];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v48 = __p[0];
  __p[0] = 0;
  if (v48)
  {
    operator delete(v48);
  }

  v49 = mlcore::PlaylistPropertyPersistentID(v48);
  v50 = std::string::basic_string[abi:ne200100]<0>(__p, "playlistPID");
  v178[1] = v49;
  v51 = mlcore::PlaylistPropertyAvailableArtworkToken(v50);
  v52 = std::string::basic_string[abi:ne200100]<0>(v179, "availableArtworkToken");
  v180 = v51;
  v53 = mlcore::PlaylistPropertyFetchableArtworkToken(v52);
  v54 = std::string::basic_string[abi:ne200100]<0>(v181, "fetchableArtworkToken");
  v182 = v53;
  v55 = mlcore::PlaylistPropertyFetchableArtworkSourceType(v54);
  std::string::basic_string[abi:ne200100]<0>(v183, "fetchableArtworkSourceType");
  v184 = v55;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v203, __p, 4);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistArtwork" withPropertiesToFetch:v203 valueTransformer:&__block_literal_global_427];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v204);
  v56 = v203[0];
  v203[0] = 0;
  if (v56)
  {
    operator delete(v56);
  }

  for (k = 0; k != -16; k -= 4)
  {
    if (SHIBYTE(v183[k + 2]) < 0)
    {
      operator delete(v183[k]);
    }
  }

  v58 = mlcore::PlaylistPropertyPersistentID(v56);
  std::string::basic_string[abi:ne200100]<0>(v203, "playlistPID");
  v205 = v58;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v203, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistTracksTiledArtwork" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_430];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v59 = __p[0];
  __p[0] = 0;
  if (v59)
  {
    operator delete(v59);
  }

  if (SHIBYTE(v204) < 0)
  {
    operator delete(v203[0]);
  }

  *__p = 0u;
  *v178 = 0u;
  LODWORD(v179[0]) = 1065353216;
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistEditorialArtwork" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_435];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v60 = __p[0];
  __p[0] = 0;
  if (v60)
  {
    operator delete(v60);
  }

  *__p = 0u;
  *v178 = 0u;
  LODWORD(v179[0]) = 1065353216;
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistStaticTallEditorialArtwork" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_438];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v61 = __p[0];
  __p[0] = 0;
  if (v61)
  {
    operator delete(v61);
  }

  *__p = 0u;
  *v178 = 0u;
  LODWORD(v179[0]) = 1065353216;
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistSuperHeroTallEditorialArtwork" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_441];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v62 = __p[0];
  __p[0] = 0;
  if (v62)
  {
    operator delete(v62);
  }

  v63 = mlcore::PlaylistPropertyPersistentID(v62);
  v64 = std::string::basic_string[abi:ne200100]<0>(__p, "playlistPID");
  v178[1] = v63;
  v65 = mlcore::PlaylistPropertyAvailablePortraitArtworkToken(v64);
  v66 = std::string::basic_string[abi:ne200100]<0>(v179, "availableArtworkToken");
  v180 = v65;
  v67 = mlcore::PlaylistPropertyFetchablePortraitArtworkToken(v66);
  v68 = std::string::basic_string[abi:ne200100]<0>(v181, "fetchableArtworkToken");
  v182 = v67;
  v69 = mlcore::PlaylistPropertyFetchablePortraitArtworkSourceType(v68);
  std::string::basic_string[abi:ne200100]<0>(v183, "fetchableArtworkSourceType");
  v184 = v69;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v203, __p, 4);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistPortraitArtwork" withPropertiesToFetch:v203 valueTransformer:&__block_literal_global_444, __p[0]];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v204);
  v70 = v203[0];
  v203[0] = 0;
  if (v70)
  {
    operator delete(v70);
  }

  for (m = 0; m != -16; m -= 4)
  {
    if (SHIBYTE(v183[m + 2]) < 0)
    {
      operator delete(v183[m]);
    }
  }

  *__p = 0u;
  *v178 = 0u;
  LODWORD(v179[0]) = 1065353216;
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistReleaseDateComponents" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_447];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v72 = __p[0];
  __p[0] = 0;
  if (v72)
  {
    operator delete(v72);
  }

  *__p = 0u;
  *v178 = 0u;
  LODWORD(v179[0]) = 1065353216;
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistShortEditorNotes" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_449];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v73 = __p[0];
  __p[0] = 0;
  if (v73)
  {
    operator delete(v73);
  }

  *__p = 0u;
  *v178 = 0u;
  LODWORD(v179[0]) = 1065353216;
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistEditorNotes" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_451];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v74 = __p[0];
  __p[0] = 0;
  if (v74)
  {
    operator delete(v74);
  }

  *__p = 0u;
  *v178 = 0u;
  LODWORD(v179[0]) = 1065353216;
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistVersionHash" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_453];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v75 = __p[0];
  __p[0] = 0;
  if (v75)
  {
    operator delete(v75);
  }

  IsHidden = mlcore::PlaylistPropertyIsHidden(v75);
  std::string::basic_string[abi:ne200100]<0>(v203, "isHidden");
  v205 = IsHidden;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v203, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistLibraryAdded" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_456];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v77 = __p[0];
  __p[0] = 0;
  if (v77)
  {
    operator delete(v77);
  }

  if (SHIBYTE(v204) < 0)
  {
    operator delete(v203[0]);
  }

  v78 = mlcore::PlaylistPropertyDateCreated(v77);
  std::string::basic_string[abi:ne200100]<0>(v203, "libraryAdded");
  v205 = v78;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v203, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistLibraryAddedDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_458_44039];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v79 = __p[0];
  __p[0] = 0;
  if (v79)
  {
    operator delete(v79);
  }

  if (SHIBYTE(v204) < 0)
  {
    operator delete(v203[0]);
  }

  v80 = MPModelPropertyPlaylistDownloadedDate;
  v81 = mlcore::PlaylistPropertyDateDownloaded(v79);
  std::string::basic_string[abi:ne200100]<0>(v203, "downloadedDate");
  v205 = v81;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v203, 1);
  [(mlcore *)v1 mapPropertyKey:v80 withPropertiesToFetch:__p valueTransformer:&__block_literal_global_460_44040];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v82 = __p[0];
  __p[0] = 0;
  if (v82)
  {
    operator delete(v82);
  }

  if (SHIBYTE(v204) < 0)
  {
    operator delete(v203[0]);
  }

  v83 = mlcore::PlaylistPropertyDateModified(v82);
  std::string::basic_string[abi:ne200100]<0>(v203, "dateModified");
  v205 = v83;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v203, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistLastModifiedDateComponents" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_463];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v84 = __p[0];
  __p[0] = 0;
  if (v84)
  {
    operator delete(v84);
  }

  if (SHIBYTE(v204) < 0)
  {
    operator delete(v203[0]);
  }

  v85 = mlcore::PlaylistPropertyDatePlayedLocal(v84);
  std::string::basic_string[abi:ne200100]<0>(v203, "datePlayedLocal");
  v205 = v85;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v203, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistLastDevicePlaybackDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_465_44042];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v86 = __p[0];
  __p[0] = 0;
  if (v86)
  {
    operator delete(v86);
  }

  if (SHIBYTE(v204) < 0)
  {
    operator delete(v203[0]);
  }

  *__p = 0u;
  *v178 = 0u;
  LODWORD(v179[0]) = 1065353216;
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistHasCleanContent" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_467_44043];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v87 = __p[0];
  __p[0] = 0;
  if (v87)
  {
    operator delete(v87);
  }

  *__p = 0u;
  *v178 = 0u;
  LODWORD(v179[0]) = 1065353216;
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistHasExplicitContent" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_469];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v88 = __p[0];
  __p[0] = 0;
  if (v88)
  {
    operator delete(v88);
  }

  v89 = mlcore::PlaylistPropertyIsSmart(v88);
  v90 = std::string::basic_string[abi:ne200100]<0>(__p, "isSmart");
  v178[1] = v89;
  v91 = mlcore::PlaylistPropertySmartIsGenius(v90);
  v92 = std::string::basic_string[abi:ne200100]<0>(v179, "isGenius");
  v180 = v91;
  v93 = mlcore::PlaylistPropertySmartIsFolder(v92);
  v94 = std::string::basic_string[abi:ne200100]<0>(v181, "isFolder");
  v182 = v93;
  ShouldDisplayIndex = mlcore::PlaylistPropertyShouldDisplayIndex(v94);
  v96 = std::string::basic_string[abi:ne200100]<0>(v183, "shouldDisplayIndex");
  v184 = ShouldDisplayIndex;
  IsPersonalMix = mlcore::PlaylistCategoryTypeIsPersonalMix(v96);
  v98 = std::string::basic_string[abi:ne200100]<0>(v185, "isPersonalMix");
  v186 = IsPersonalMix;
  v99 = mlcore::PlaylistPropertyIsFavoritedSongs(v98);
  v100 = std::string::basic_string[abi:ne200100]<0>(v187, "isFavoriteSongsPlaylist");
  v188 = v99;
  IsExternalVendorPlaylist = mlcore::PlaylistPropertyIsExternalVendorPlaylist(v100);
  v102 = std::string::basic_string[abi:ne200100]<0>(v189, "isExternalVendorPlaylist");
  v190 = IsExternalVendorPlaylist;
  v103 = mlcore::PlaylistPropertyIsOwner(v102);
  v104 = std::string::basic_string[abi:ne200100]<0>(v191, "isOwner");
  v192 = v103;
  IsPublic = mlcore::PlaylistPropertyCloudIsPublic(v104);
  v106 = std::string::basic_string[abi:ne200100]<0>(v193, "isPublic");
  v193[3] = IsPublic;
  IsEditorial = mlcore::PlaylistCategoryTypeIsEditorial(v106);
  v108 = std::string::basic_string[abi:ne200100]<0>(v194, "isEditorial");
  v194[3] = IsEditorial;
  IsUserShared = mlcore::PlaylistCategoryTypeIsUserShared(v108);
  v110 = std::string::basic_string[abi:ne200100]<0>(v195, "isUserShared");
  v195[3] = IsUserShared;
  v111 = mlcore::PlaylistPropertyEditSessionID(v110);
  std::string::basic_string[abi:ne200100]<0>(v196, "editSessionID");
  v196[3] = v111;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v203, __p, 12);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistType" withPropertiesToFetch:v203 valueTransformer:&__block_literal_global_478];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v204);
  v112 = v203[0];
  v203[0] = 0;
  if (v112)
  {
    operator delete(v112);
  }

  v113 = 48;
  do
  {
    if (*(&__p[v113 - 1] - 1) < 0)
    {
      operator delete(__p[v113 - 4]);
    }

    v113 -= 4;
  }

  while (v113 * 8);
  v114 = mlcore::PlaylistPropertyKeepLocal(v112);
  std::string::basic_string[abi:ne200100]<0>(v203, "keepLocal");
  v205 = v114;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v203, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistKeepLocalEnableState" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_480];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v115 = __p[0];
  __p[0] = 0;
  if (v115)
  {
    operator delete(v115);
  }

  if (SHIBYTE(v204) < 0)
  {
    operator delete(v203[0]);
  }

  v116 = mlcore::PlaylistPropertyKeepLocalStatus(v115);
  std::string::basic_string[abi:ne200100]<0>(v203, "keepLocalStatus");
  v205 = v116;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v203, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistKeepLocalManagedStatus" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_482];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v117 = __p[0];
  __p[0] = 0;
  if (v117)
  {
    operator delete(v117);
  }

  if (SHIBYTE(v204) < 0)
  {
    operator delete(v203[0]);
  }

  v118 = mlcore::PlaylistPropertyKeepLocalStatusReason(v117);
  std::string::basic_string[abi:ne200100]<0>(v203, "keepLocalStatusReason");
  v205 = v118;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v203, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistKeepLocalManagedStatusReason" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_484];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v119 = __p[0];
  __p[0] = 0;
  if (v119)
  {
    operator delete(v119);
  }

  if (SHIBYTE(v204) < 0)
  {
    operator delete(v203[0]);
  }

  v120 = mlcore::PlaylistPropertyKeepLocalConstraints(v119);
  std::string::basic_string[abi:ne200100]<0>(v203, "keepLocalConstraints");
  v205 = v120;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v203, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistKeepLocalConstraints" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_486];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v121 = __p[0];
  __p[0] = 0;
  if (v121)
  {
    operator delete(v121);
  }

  if (SHIBYTE(v204) < 0)
  {
    operator delete(v203[0]);
  }

  v122 = mlcore::PlaylistPropertyTraits(v121);
  std::string::basic_string[abi:ne200100]<0>(v203, "traits");
  v205 = v122;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v203, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistTraits" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_489];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v123 = __p[0];
  __p[0] = 0;
  if (v123)
  {
    operator delete(v123);
  }

  if (SHIBYTE(v204) < 0)
  {
    operator delete(v203[0]);
  }

  v124 = mlcore::PlaylistPropertyLikedState(v123);
  std::string::basic_string[abi:ne200100]<0>(v203, "likedState");
  v205 = v124;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v203, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistIsFavorite" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_491];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v125 = __p[0];
  __p[0] = 0;
  if (v125)
  {
    operator delete(v125);
  }

  if (SHIBYTE(v204) < 0)
  {
    operator delete(v203[0]);
  }

  v126 = mlcore::PlaylistPropertyLikedState(v125);
  std::string::basic_string[abi:ne200100]<0>(v203, "likedState");
  v205 = v126;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v203, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistIsDisliked" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_493];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v127 = __p[0];
  __p[0] = 0;
  if (v127)
  {
    operator delete(v127);
  }

  if (SHIBYTE(v204) < 0)
  {
    operator delete(v203[0]);
  }

  v128 = mlcore::PlaylistPropertyLikedStateChangedDate(v127);
  std::string::basic_string[abi:ne200100]<0>(v203, "likedStateChangedDate");
  v205 = v128;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v203, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistDateFavorited" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_495];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v129 = __p[0];
  __p[0] = 0;
  if (v129)
  {
    operator delete(v129);
  }

  if (SHIBYTE(v204) < 0)
  {
    operator delete(v203[0]);
  }

  v130 = mlcore::PlaylistPropertyIsFavoritedSongs(v129);
  std::string::basic_string[abi:ne200100]<0>(v203, "favoriteSongsPlaylist");
  v205 = v130;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v203, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistIsFavoriteSongsPlaylist" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_498];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v131 = __p[0];
  __p[0] = 0;
  if (v131)
  {
    operator delete(v131);
  }

  if (SHIBYTE(v204) < 0)
  {
    operator delete(v203[0]);
  }

  v132 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistCoverArtworkRecipe" toMLProperty:mlcore::PlaylistPropertyCoverArtworkRecipe(v131)];
  v133 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistIsCollaborative" toMLProperty:mlcore::PlaylistPropertyIsCollaborative(v132)];
  v134 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistCollaborationSharingMode" toMLProperty:mlcore::PlaylistPropertyCollaborationMode(v133)];
  v135 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistCollaborationMode" toMLProperty:mlcore::PlaylistPropertyCollaborationMode(v134)];
  v136 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistCollaboratorPermissions" toMLProperty:mlcore::PlaylistPropertyCollaboratorPermissions(v135)];
  v137 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistCollaborationInvitationURL" toMLProperty:mlcore::PlaylistPropertyCollaborationInvitationURL(v136)];
  v138 = mlcore::PlaylistPropertyCollaborationInvitationURL(v137);
  std::string::basic_string[abi:ne200100]<0>(v203, "invitationURL");
  v205 = v138;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v203, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistCollaborationInvitationURL" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_501];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v139 = __p[0];
  __p[0] = 0;
  if (v139)
  {
    operator delete(v139);
  }

  if (SHIBYTE(v204) < 0)
  {
    operator delete(v203[0]);
  }

  v140 = mlcore::PlaylistPropertyCollaborationInvitationURLExpirationDate(v139);
  std::string::basic_string[abi:ne200100]<0>(v203, "collaborationInvitationURLExpirationDate");
  v205 = v140;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(__p, v203, 1);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistCollaborationInvitationURLExpirationDate" withPropertiesToFetch:__p valueTransformer:&__block_literal_global_504];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v178[0]);
  v141 = __p[0];
  __p[0] = 0;
  if (v141)
  {
    operator delete(v141);
  }

  if (SHIBYTE(v204) < 0)
  {
    operator delete(v203[0]);
  }

  v142 = mlcore::PlaylistPropertyCollaborationJoinRequestPending(v141);
  v143 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistCollaboratorStatus" toMLProperty:mlcore::PlaylistPropertyCollaboratorStatus([(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistCollaborationJoinRequestIsPending" toMLProperty:v142, __p[0]])];
  v144 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistParentPersistentID" toMLProperty:mlcore::PlaylistPropertyParentPersistentID(v143)];
  v145 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistEditSessionID" toMLProperty:mlcore::PlaylistPropertyEditSessionID(v144)];
  v146 = mlcore::PlaylistPropertyIsSmart(v145);
  v147 = std::string::basic_string[abi:ne200100]<0>(__p, "isSmart");
  v178[1] = v146;
  IsStoreRedownloadable = mlcore::PlaylistPropertyIsStoreRedownloadable(v147);
  std::string::basic_string[abi:ne200100]<0>(v179, "isStoreRedownloadable");
  v180 = IsStoreRedownloadable;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v203, __p, 2);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistIsStoreRedownloadable" withPropertiesToFetch:v203 valueTransformer:&__block_literal_global_506];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v204);
  v149 = v203[0];
  v203[0] = 0;
  if (v149)
  {
    operator delete(v149);
  }

  for (n = 0; n != -8; n -= 4)
  {
    if (SHIBYTE(v179[n + 2]) < 0)
    {
      operator delete(v179[n]);
    }
  }

  v151 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistIsPinned" toMLProperty:mlcore::PlaylistPropertyIsLibraryPinned(v149)];
  v152 = [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistDownloadedTrackCount" toMLProperty:mlcore::PlaylistPropertyNonPurgeableAssetItemCount(v151)];
  v153 = mlcore::PlaylistPropertyPersistentID(v152);
  v154 = std::string::basic_string[abi:ne200100]<0>(__p, "persistentID");
  v178[1] = v153;
  v155 = mlcore::PlaylistPropertyTrackCount(v154);
  v156 = std::string::basic_string[abi:ne200100]<0>(v179, "trackCount");
  v180 = v155;
  v157 = mlcore::PlaylistPropertyIsSmart(v156);
  std::string::basic_string[abi:ne200100]<0>(v181, "isSmartPlaylist");
  v182 = v157;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v203, __p, 3);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistTrackCount" withPropertiesToFetch:v203 valueTransformer:&__block_literal_global_511];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v204);
  v158 = v203[0];
  v203[0] = 0;
  if (v158)
  {
    operator delete(v158);
  }

  for (ii = 0; ii != -12; ii -= 4)
  {
    if (SHIBYTE(v181[ii + 2]) < 0)
    {
      operator delete(v181[ii]);
    }
  }

  v160 = mlcore::PlaylistPropertyPersistentID(v158);
  v161 = std::string::basic_string[abi:ne200100]<0>(__p, "persistentID");
  v178[1] = v160;
  v162 = mlcore::PlaylistPropertyTrackCount(v161);
  v163 = std::string::basic_string[abi:ne200100]<0>(v179, "trackCount");
  v180 = v162;
  v164 = mlcore::PlaylistPropertyCleanTracksCount(v163);
  v165 = std::string::basic_string[abi:ne200100]<0>(v181, "cleanTrackCount");
  v182 = v164;
  v166 = mlcore::PlaylistPropertyIsSmart(v165);
  std::string::basic_string[abi:ne200100]<0>(v183, "isSmartPlaylist");
  v184 = v166;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v203, __p, 4);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistHasAnyCleanTracks" withPropertiesToFetch:v203 valueTransformer:&__block_literal_global_519_44055];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v204);
  v167 = v203[0];
  v203[0] = 0;
  if (v167)
  {
    operator delete(v167);
  }

  for (jj = 0; jj != -16; jj -= 4)
  {
    if (SHIBYTE(v183[jj + 2]) < 0)
    {
      operator delete(v183[jj]);
    }
  }

  v169 = mlcore::PlaylistPropertyPersistentID(v167);
  v170 = std::string::basic_string[abi:ne200100]<0>(__p, "persistentID");
  v178[1] = v169;
  v171 = mlcore::PlaylistPropertyCleanDownloadedTracksCount(v170);
  v172 = std::string::basic_string[abi:ne200100]<0>(v179, "cleanDownloadedTrackCount");
  v180 = v171;
  v173 = mlcore::PlaylistPropertyIsSmart(v172);
  std::string::basic_string[abi:ne200100]<0>(v181, "isSmartPlaylist");
  v182 = v173;
  std::unordered_map<std::string,mlcore::ModelPropertyBase *>::unordered_map(v203, __p, 3);
  [(mlcore *)v1 mapPropertyKey:@"MPModelPropertyPlaylistHasAnyCleanDownloadedTracks" withPropertiesToFetch:v203 valueTransformer:&__block_literal_global_523];
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::__deallocate_node(v204);
  v174 = v203[0];
  v203[0] = 0;
  if (v174)
  {
    operator delete(v174);
  }

  for (kk = 0; kk != -12; kk -= 4)
  {
    if (SHIBYTE(v181[kk + 2]) < 0)
    {
      operator delete(v181[kk]);
    }
  }

  v176 = objc_opt_class();
  [(mlcore *)v1 mapRelationshipKey:@"MPModelRelationshipPlaylistCurator" toModelClass:v176 transient:1 usingForeignPropertyBase:mlcore::PlaylistPropertyPersistentID(v176)];
}

void sub_1A26378A0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::~__hash_table((v23 - 96));
  v26 = &a22;
  v27 = -96;
  v28 = &a22;
  while (1)
  {
    v29 = *v28;
    v28 -= 32;
    if (v29 < 0)
    {
      operator delete(*(v26 - 23));
    }

    v26 = v28;
    v27 += 32;
    if (!v27)
    {

      if (a2 == 2)
      {
        v30 = __cxa_begin_catch(a1);
        v31 = MEMORY[0x1E695DF30];
        v32 = MEMORY[0x1E696AEC0];
        mediaplatform::FormatOptions::FormatOptions(&a9);
        (*(*v30 + 24))(v30, &a9);
        if (*(v23 - 73) >= 0)
        {
          v33 = v23 - 96;
        }

        else
        {
          v33 = *(v23 - 96);
        }

        v34 = [v32 stringWithUTF8String:v33];
        v35 = [v31 exceptionWithName:@"MediaPlatform" reason:v34 userInfo:0];
        v36 = v35;

        if (*(v23 - 73) < 0)
        {
          operator delete(*(v23 - 96));
        }

        objc_exception_throw(v35);
      }

      if (a2 == 1)
      {
        v37 = __cxa_begin_catch(a1);
        v38 = MEMORY[0x1E695DF30];
        v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v37 + 16))(v37)];
        v40 = [v38 exceptionWithName:*MEMORY[0x1E695D920] reason:v39 userInfo:0];
        v41 = v40;

        objc_exception_throw(v40);
      }

      _Unwind_Resume(a1);
    }
  }
}

BOOL ___ZL30_MPMLInitPropertyLibraryPinMapv_block_invoke_13(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "entityType");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 integerValue];

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return v9 == 7;
}

void sub_1A2638178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL ___ZL30_MPMLInitPropertyLibraryPinMapv_block_invoke_12(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "entityType");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 integerValue];

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return v9 == 0;
}

void sub_1A2638354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL ___ZL30_MPMLInitPropertyLibraryPinMapv_block_invoke_11(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "entityType");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 integerValue];

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return v9 == 4;
}

void sub_1A2638434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL ___ZL30_MPMLInitPropertyLibraryPinMapv_block_invoke_10(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "entityType");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 integerValue];

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return v9 == 1;
}

void sub_1A2638514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id ___ZL30_MPMLInitPropertyLibraryPinMapv_block_invoke_9(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "positionUUID");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 stringValue];

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return v9;
}

void sub_1A2638600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id ___ZL30_MPMLInitPropertyLibraryPinMapv_block_invoke_8(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "defaultAction");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 integerValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:v9];

  return v10;
}

id ___ZL30_MPMLInitPropertyLibraryPinMapv_block_invoke_7(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "entityPersistentID");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:v9];

  return v10;
}

id ___ZL30_MPMLInitPropertyLibraryPinMapv_block_invoke_6(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "persistentID");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:v9];

  return v10;
}

id ___ZL30_MPMLInitPropertyLibraryPinMapv_block_invoke_5(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "position");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 intValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInt:v9];

  return v10;
}

void *___ZL30_MPMLInitPropertyLibraryPinMapv_block_invoke_4(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "entityType");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 integerValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 >= 8)
  {
    v10 = &unk_1F1509BF8;
  }

  else
  {
    v10 = qword_1E767E140[v9];
  }

  return v10;
}

void sub_1A2638B08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL30_MPMLInitPropertyLibraryPinMapv_block_invoke_3(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = a2;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v5 = [v4 modelKind];
  v6 = [v5 identityKind];
  v7 = +[MPModelLibraryPinKind identityKind];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertyLibraryPinMap()_block_invoke_3"];
    [v12 handleFailureInFunction:v13 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:3864 description:@"Must have LibraryPin kind to generate LibraryPin entity query."];
  }

  v9 = a3[1];
  v16 = *a3;
  v17 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v5 applyToView:&v16 withContext:v4];
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v10 = [v4 allowedEntityIdentifiers];
  v11 = mlcore::LibraryPinPropertyPersistentID(v10);
  _MPMLInsertPredicatesForIdentifierSet(&v18, v10, 0, 0, v11, 0, 0, 0, 0, 0);

  memset(v14, 0, sizeof(v14));
  std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*>(v14, v18, v19, (v19 - v18) >> 4);
  mlcore::CreateAndPredicate();
  mlcore::EntityQuery::libraryPinsQuery();
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v21 = v14;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v21);

  v21 = &v18;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v21);
}

void sub_1A2638D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v23 - 72) = &a19;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100]((v23 - 72));

  _Unwind_Resume(a1);
}

void _MPMLInsertPredicatesForIdentifierSet(const void **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v99 = *MEMORY[0x1E69E9840];
  v53 = a2;
  if ([v53 count])
  {
    v46 = a7;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v94 = 0;
    v93 = 0;
    v95 = 0;
    v91 = 0;
    v90 = 0;
    v92 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = v53;
    v11 = [obj countByEnumeratingWithState:&v68 objects:v98 count:16];
    if (v11)
    {
      v12 = *v69;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v69 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v68 + 1) + 8 * i);
          v15 = [v14 opaqueID];
          if ([v15 length])
          {
            v16 = v15;
            std::string::basic_string[abi:ne200100]<0>(__p, [v15 UTF8String]);
            std::vector<std::string>::push_back[abi:ne200100](&v84, __p);
            std::vector<std::string>::push_back[abi:ne200100](&v78, __p);
            std::vector<std::string>::push_back[abi:ne200100](&v75, __p);
            *&v59 = [v15 longLongValue];
            if (v59)
            {
              std::vector<long long>::push_back[abi:ne200100](&v90, &v59);
              std::vector<long long>::push_back[abi:ne200100](&v93, &v59);
              std::vector<long long>::push_back[abi:ne200100](&v55, &v59);
              std::vector<long long>::push_back[abi:ne200100](&v87, &v59);
              std::vector<long long>::push_back[abi:ne200100](&v81, &v59);
            }

            if (v67 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v17 = [v14 library];
          v18 = [v17 persistentID];

          *&v59 = v18;
          if (v18)
          {
            std::vector<long long>::push_back[abi:ne200100](&v90, &v59);
            goto LABEL_47;
          }

          v19 = [v14 universalStore];
          v20 = [v19 subscriptionAdamID];
          if (v20)
          {

            v96 = v20;
          }

          else
          {
            v21 = [v14 universalStore];
            v22 = [v21 adamID];

            v96 = v22;
            if (!v22)
            {
              goto LABEL_18;
            }
          }

          std::vector<long long>::push_back[abi:ne200100](&v93, &v96);
LABEL_18:
          v23 = [v14 universalStore];
          v24 = [v23 purchasedAdamID];
          if (v24)
          {

            v65 = v24;
LABEL_21:
            std::vector<long long>::push_back[abi:ne200100](&v55, &v65);
            goto LABEL_22;
          }

          v25 = [v14 universalStore];
          v26 = [v25 adamID];

          v65 = v26;
          if (v26)
          {
            goto LABEL_21;
          }

LABEL_22:
          v27 = [v14 universalStore];
          v28 = [v27 formerAdamIDs];

          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v29 = v28;
          v30 = [v29 countByEnumeratingWithState:&v61 objects:v97 count:16];
          if (v30)
          {
            v31 = *v62;
            do
            {
              for (j = 0; j != v30; ++j)
              {
                if (*v62 != v31)
                {
                  objc_enumerationMutation(v29);
                }

                __p[0] = [*(*(&v61 + 1) + 8 * j) longLongValue];
                if (__p[0])
                {
                  std::vector<long long>::push_back[abi:ne200100](&v55, __p);
                  std::vector<long long>::push_back[abi:ne200100](&v93, __p);
                }
              }

              v30 = [v29 countByEnumeratingWithState:&v61 objects:v97 count:16];
            }

            while (v30);
          }

          v33 = [v14 personalizedStore];
          v34 = [v33 cloudID];

          if (v34)
          {
            __p[0] = v34;
            std::vector<long long>::push_back[abi:ne200100](&v87, __p);
          }

          v35 = [v14 universalStore];
          v36 = [v35 globalPlaylistID];

          if (v36)
          {
            v37 = v36;
            std::string::basic_string[abi:ne200100]<0>(__p, [v36 UTF8String]);
            std::vector<std::string>::push_back[abi:ne200100](&v84, __p);
            if (v67 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v38 = [v14 library];
          v39 = [v38 syncID];

          v60 = v39;
          if (v39)
          {
            std::vector<long long>::push_back[abi:ne200100](&v81, &v60);
          }

          v40 = [v14 personalizedStore];
          v41 = [v40 cloudAlbumID];

          if (v41)
          {
            v42 = v41;
            std::string::basic_string[abi:ne200100]<0>(__p, [v41 UTF8String]);
            std::vector<std::string>::push_back[abi:ne200100](&v78, __p);
            if (v67 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v43 = [v14 universalStore];
          v44 = [v43 universalCloudLibraryID];

          if (v44)
          {
            v45 = v44;
            std::string::basic_string[abi:ne200100]<0>(__p, [v44 UTF8String]);
            std::vector<std::string>::push_back[abi:ne200100](&v75, __p);
            if (v67 < 0)
            {
              operator delete(__p[0]);
            }
          }

          __p[0] = [v14 musicKit_possibleLibraryPersistentID];
          if (__p[0])
          {
            std::vector<long long>::push_back[abi:ne200100](&v90, __p);
          }

LABEL_47:
        }

        v11 = [obj countByEnumeratingWithState:&v68 objects:v98 count:16];
      }

      while (v11);
    }

    if (a3 && v56 != v55)
    {
      v96 = a3;
      std::allocate_shared[abi:ne200100]<mlcore::InPredicate<long long>,std::allocator<mlcore::InPredicate<long long>>,mlcore::ModelProperty<long long> *&,std::vector<long long> const&,0>(&v59, &v96, &v55);
    }

    if (a4 && v94 != v93)
    {
      v96 = a4;
      std::allocate_shared[abi:ne200100]<mlcore::InPredicate<long long>,std::allocator<mlcore::InPredicate<long long>>,mlcore::ModelProperty<long long> *&,std::vector<long long> const&,0>(&v59, &v96, &v93);
    }

    if (a5 && v91 != v90)
    {
      v96 = a5;
      std::allocate_shared[abi:ne200100]<mlcore::InPredicate<long long>,std::allocator<mlcore::InPredicate<long long>>,mlcore::ModelProperty<long long> *&,std::vector<long long> const&,0>(&v59, &v96, &v90);
    }

    if (a6 && v88 != v87)
    {
      v96 = a6;
      std::allocate_shared[abi:ne200100]<mlcore::InPredicate<long long>,std::allocator<mlcore::InPredicate<long long>>,mlcore::ModelProperty<long long> *&,std::vector<long long> const&,0>(&v59, &v96, &v87);
    }

    if (v46 && v85 != v84)
    {
      v96 = v46;
      std::allocate_shared[abi:ne200100]<mlcore::InPredicate<std::string>,std::allocator<mlcore::InPredicate<std::string>>,mlcore::ModelProperty<std::string> *&,std::vector<std::string> const&,0>(&v59, &v96, &v84);
    }

    if (a8 && v82 != v81)
    {
      v96 = a8;
      std::allocate_shared[abi:ne200100]<mlcore::InPredicate<long long>,std::allocator<mlcore::InPredicate<long long>>,mlcore::ModelProperty<long long> *&,std::vector<long long> const&,0>(&v59, &v96, &v81);
    }

    if (a10 && v79 != v78)
    {
      v96 = a10;
      std::allocate_shared[abi:ne200100]<mlcore::InPredicate<std::string>,std::allocator<mlcore::InPredicate<std::string>>,mlcore::ModelProperty<std::string> *&,std::vector<std::string> const&,0>(&v59, &v96, &v78);
    }

    if (a9 && v76 != v75)
    {
      v96 = a9;
      std::allocate_shared[abi:ne200100]<mlcore::InPredicate<std::string>,std::allocator<mlcore::InPredicate<std::string>>,mlcore::ModelProperty<std::string> *&,std::vector<std::string> const&,0>(&v59, &v96, &v75);
    }

    if (v73 == v72 && [obj count])
    {
      v96 = a5;
      LODWORD(v65) = 1;
      std::allocate_shared[abi:ne200100]<mlcore::UnaryPredicate<long long>,std::allocator<mlcore::UnaryPredicate<long long>>,mlcore::ModelProperty<long long> *&,mlcore::UnaryOperator,0>(&v59, &v96, &v65);
    }

    memset(v58, 0, sizeof(v58));
    std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*>(v58, v72, v73, (v73 - v72) >> 4);
    mlcore::CreateOrPredicate();
    std::vector<std::shared_ptr<mlcore::Predicate>>::push_back[abi:ne200100](a1, __p);
    if (__p[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
    }

    *&v59 = v58;
    std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v59);
    __p[0] = &v72;
    std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](__p);
    v72 = &v75;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v72);
    v75 = &v78;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v75);
    if (v81)
    {
      v82 = v81;
      operator delete(v81);
    }

    v81 = &v84;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v81);
    if (v87)
    {
      v88 = v87;
      operator delete(v87);
    }

    if (v90)
    {
      v91 = v90;
      operator delete(v90);
    }

    if (v93)
    {
      v94 = v93;
      operator delete(v93);
    }

    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }
  }
}

void sub_1A26396C8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char ***a43, std::__shared_weak_count *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char **a56, uint64_t a57, uint64_t a58, char *a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  if (a44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a44);
  }

  a43 = &a56;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&a43);
  a56 = &a59;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a56);
  a59 = &a62;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a59);
  if (__p)
  {
    a66 = __p;
    operator delete(__p);
  }

  __p = &a67;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a68)
  {
    a69 = a68;
    operator delete(a68);
  }

  v71 = STACK[0x208];
  if (STACK[0x208])
  {
    STACK[0x210] = v71;
    operator delete(v71);
  }

  v72 = STACK[0x220];
  if (STACK[0x220])
  {
    STACK[0x228] = v72;
    operator delete(v72);
  }

  if (a19)
  {
    a20 = a19;
    operator delete(a19);
  }

  if (a2 == 2)
  {
    v73 = __cxa_begin_catch(a1);
    v74 = MEMORY[0x1E695DF30];
    v75 = MEMORY[0x1E696AEC0];
    mediaplatform::FormatOptions::FormatOptions(&a19);
    (*(*v73 + 24))(&STACK[0x220], v73, &a19);
    if (SLOBYTE(STACK[0x237]) >= 0)
    {
      v76 = &STACK[0x220];
    }

    else
    {
      v76 = STACK[0x220];
    }

    v77 = [v75 stringWithUTF8String:v76];
    v78 = [v74 exceptionWithName:@"MediaPlatform" reason:v77 userInfo:0];
    v79 = v78;

    if (SLOBYTE(STACK[0x237]) < 0)
    {
      operator delete(STACK[0x220]);
    }

    objc_exception_throw(v78);
  }

  if (a2 == 1)
  {
    v80 = __cxa_begin_catch(a1);
    v81 = MEMORY[0x1E695DF30];
    v82 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v80 + 16))(v80)];
    v83 = [v81 exceptionWithName:*MEMORY[0x1E695D920] reason:v82 userInfo:0];
    v84 = v83;

    objc_exception_throw(v83);
  }

  _Unwind_Resume(a1);
}

void ___ZL30_MPMLInitPropertyLibraryPinMapv_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = [a2 mediaLibrary];
  v10 = [v9 uniqueIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZL30_MPMLInitPropertyLibraryPinMapv_block_invoke_2;
  v11[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v11[4] = a3;
  v11[5] = a4;
  [v8 setLibraryIdentifiersWithDatabaseID:v10 block:v11];
}

void ___ZL30_MPMLInitPropertyLibraryPinMapv_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setPersistentID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

id ___ZL41_MPMLInitPropertyPlaylistEntryReactionMapv_block_invoke_4(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "date");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = _MPMLDateFromStoredInt64(v9);

  return v10;
}

id _MPMLDateFromStoredInt64(void *a1)
{
  if (a1)
  {
    a1 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a1];
    v1 = vars8;
  }

  return a1;
}

void ___ZL41_MPMLInitPropertyPlaylistEntryReactionMapv_block_invoke_3(void x0_0, void *a1, uint64_t *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = [v4 scopedContainers];
  v6 = [v5 reverseObjectEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v7)
  {
    v8 = *v33;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v10;

          if (v13)
          {
LABEL_12:
            v14 = [v4 modelKind];
            v15 = [v14 identityKind];
            v16 = +[MPModelPlaylistEntryReactionKind identityKind];
            v17 = [v15 isEqual:v16];

            if ((v17 & 1) == 0)
            {
              v24 = [MEMORY[0x1E696AAA8] currentHandler];
              v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertyPlaylistEntryReactionMap()_block_invoke_3"];
              [v24 handleFailureInFunction:v25 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:2731 description:@"Must have PlaylistEntryReaction kind to generate PlaylistEntryReaction entity query."];
            }

            v18 = a2[1];
            v30 = *a2;
            v31 = v18;
            if (v18)
            {
              atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            [v14 applyToView:&v30 withContext:v4];
            if (v31)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v31);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "");
            v19 = [v4 filterText];
            v20 = [v19 length] == 0;

            if (!v20)
            {
              v21 = [v4 filterText];
              v22 = v21;
              std::string::basic_string[abi:ne200100]<0>(&v26, [v21 UTF8String]);
              if (SHIBYTE(v29) < 0)
              {
                operator delete(__p[0]);
              }

              *__p = v26;
              v29 = v27;
              HIBYTE(v27) = 0;
              LOBYTE(v26) = 0;
            }

            [v13 identifiers];
            v23 = [objc_claimAutoreleasedReturnValue() library];
            [v23 persistentID];

            operator new();
          }

LABEL_10:
          v11 = [MEMORY[0x1E696AAA8] currentHandler];
          v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertyPlaylistEntryReactionMap()_block_invoke_3"];
          [v11 handleFailureInFunction:v12 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:2728 description:@"Attempted to query playlist reactions without scoping to a playlist entry."];

          v13 = 0;
          goto LABEL_12;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v7);
  }

  goto LABEL_10;
}

void mlcore::LibraryView::performQuery<mlcore::EntityQuery>(void (***a1)(void, uint64_t *, uint64_t *, _BYTE *), uint64_t a2, std::__shared_weak_count *a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(std::shared_ptr<mlcore::EntityQueryResult>)>::__value_func[abi:ne200100](v10, a4);
  v8 = a2;
  v9 = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = 0;
  v7 = 0;
  std::__function::__value_func<void ()(std::shared_ptr<mlcore::EntityQueryResult>)>::__value_func[abi:ne200100](v11, v10);
  v12 = 0;
  operator new();
}

void sub_1A263A88C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<mlcore::EntityQueryResult>)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_1A263AA34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<mlcore::EntityQueryResult>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<void mlcore::LibraryView::performQuery<mlcore::EntityQuery>(std::shared_ptr<mlcore::EntityQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::EntityQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1},std::allocator<void mlcore::LibraryView::performQuery<mlcore::EntityQuery>(std::shared_ptr<mlcore::EntityQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::EntityQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1}>,void ()(std::shared_ptr<mlcore::QueryResult>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN6mlcore11LibraryView12performQueryINS_11EntityQueryEEEvNSt3__110shared_ptrIT_EENS4_INS_11TransactionEEENS3_8functionIFvNS4_INS5_6ResultEEEEEEEUlNS4_INS_11QueryResultEEEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void mlcore::LibraryView::performQuery<mlcore::EntityQuery>(std::shared_ptr<mlcore::EntityQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::EntityQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1},std::allocator<void mlcore::LibraryView::performQuery<mlcore::EntityQuery>(std::shared_ptr<mlcore::EntityQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::EntityQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1}>,void ()(std::shared_ptr<mlcore::QueryResult>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5 = v2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(v4, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1A263ABC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void mlcore::LibraryView::performQuery<mlcore::EntityQuery>(std::shared_ptr<mlcore::EntityQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::EntityQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1},std::allocator<void mlcore::LibraryView::performQuery<mlcore::EntityQuery>(std::shared_ptr<mlcore::EntityQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::EntityQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1}>,void ()(std::shared_ptr<mlcore::QueryResult>)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(std::shared_ptr<mlcore::EntityQueryResult>)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<void mlcore::LibraryView::performQuery<mlcore::EntityQuery>(std::shared_ptr<mlcore::EntityQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::EntityQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1},std::allocator<void mlcore::LibraryView::performQuery<mlcore::EntityQuery>(std::shared_ptr<mlcore::EntityQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::EntityQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1}>,void ()(std::shared_ptr<mlcore::QueryResult>)>::~__func(void *a1)
{
  *a1 = &unk_1F149A628;
  std::__function::__value_func<void ()(std::shared_ptr<mlcore::EntityQueryResult>)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1A58E14E0);
}

void *std::__function::__func<void mlcore::LibraryView::performQuery<mlcore::EntityQuery>(std::shared_ptr<mlcore::EntityQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::EntityQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1},std::allocator<void mlcore::LibraryView::performQuery<mlcore::EntityQuery>(std::shared_ptr<mlcore::EntityQuery>,std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::EntityQuery::Result>)>)::{lambda(std::shared_ptr<mlcore::QueryResult>)#1}>,void ()(std::shared_ptr<mlcore::QueryResult>)>::~__func(void *a1)
{
  *a1 = &unk_1F149A628;
  std::__function::__value_func<void ()(std::shared_ptr<mlcore::EntityQueryResult>)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZZL41_MPMLInitPropertyPlaylistEntryReactionMapvEUb1_E3__2NS_9allocatorIS2_EEFvNS_10shared_ptrIN6mlcore17EntityQueryResultEEEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZL41_MPMLInitPropertyPlaylistEntryReactionMapvEUb1_E3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZZL41_MPMLInitPropertyPlaylistEntryReactionMapvEUb1_E3__2NS_9allocatorIS2_EEFvNS_10shared_ptrIN6mlcore17EntityQueryResultEEEEEclEOS8_(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v3 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  if (mlcore::EntityQueryResult::entityCount(v4))
  {
    mlcore::EntityQueryResult::entityAtIndex(&lpsrc, v4);
    if (lpsrc && (v5 = __dynamic_cast(lpsrc, MEMORY[0x1E69B07F0], MEMORY[0x1E69B07D8], 0)) != 0)
    {
      *buf = v5;
      *&buf[8] = v12;
      p_lpsrc = &lpsrc;
    }

    else
    {
      p_lpsrc = buf;
    }

    *p_lpsrc = 0;
    p_lpsrc[1] = 0;
    v7 = *(a1 + 16);
    v8 = *(v7 + 8);
    *v7 = *buf;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  else
  {
    v9 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = **(a1 + 8);
      *buf = 138543362;
      *&buf[4] = v10;
      _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_ERROR, "Did not find playlist entry for identifiers: %{public}@", buf, 0xCu);
    }
  }

  dispatch_semaphore_signal(**(a1 + 24));
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

__n128 _ZNKSt3__110__function6__funcIZZL41_MPMLInitPropertyPlaylistEntryReactionMapvEUb1_E3__2NS_9allocatorIS2_EEFvNS_10shared_ptrIN6mlcore17EntityQueryResultEEEEE7__cloneEPNS0_6__baseIS9_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F149B5A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__shared_ptr_emplace<mlcore::PlaylistItem>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F149B558;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void ___ZL41_MPMLInitPropertyPlaylistEntryReactionMapv_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = [a2 mediaLibrary];
  v10 = [v9 uniqueIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZL41_MPMLInitPropertyPlaylistEntryReactionMapv_block_invoke_2;
  v11[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v11[4] = a3;
  v11[5] = a4;
  [v8 setLibraryIdentifiersWithDatabaseID:v10 block:v11];
}

void ___ZL41_MPMLInitPropertyPlaylistEntryReactionMapv_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setPersistentID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void ___ZL34_MPMLInitPropertyPlaylistAuthorMapv_block_invoke_4(void x0_0, void *a1, uint64_t *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = [v4 scopedContainers];
  v6 = [v5 reverseObjectEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v7)
  {
    v8 = *v35;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v10;

          if (v13)
          {
LABEL_12:
            v14 = [v4 modelKind];
            v15 = [v14 identityKind];
            v16 = +[MPModelPlaylistAuthorKind identityKind];
            v17 = [v15 isEqual:v16];

            if ((v17 & 1) == 0)
            {
              v25 = [MEMORY[0x1E696AAA8] currentHandler];
              v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertyPlaylistAuthorMap()_block_invoke_4"];
              [v25 handleFailureInFunction:v26 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:2650 description:@"Must have PlaylistAuthor kind to generate PlaylistAuthor entity query."];
            }

            v18 = a2[1];
            v32 = *a2;
            v33 = v18;
            if (v18)
            {
              atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            [v14 applyToView:&v32 withContext:v4];
            if (v33)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v33);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "");
            v19 = [v4 filterText];
            v20 = [v19 length] == 0;

            if (!v20)
            {
              v21 = [v4 filterText];
              v22 = v21;
              std::string::basic_string[abi:ne200100]<0>(&v38, [v21 UTF8String]);
              if (SHIBYTE(v31) < 0)
              {
                operator delete(__p[0]);
              }

              *__p = v38;
              v31 = v39;
              HIBYTE(v39) = 0;
              LOBYTE(v38) = 0;
            }

            v29 = [v13 identifiers];
            v23 = [v29 library];
            v24 = [v23 persistentID];

            v28 = v24;
            std::allocate_shared[abi:ne200100]<mlcore::Playlist,std::allocator<mlcore::Playlist>,long long &,0>(&v27, &v28);
          }

LABEL_10:
          v11 = [MEMORY[0x1E696AAA8] currentHandler];
          v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertyPlaylistAuthorMap()_block_invoke_4"];
          [v11 handleFailureInFunction:v12 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:2647 description:@"Attempted to query playlist authors without scoping to a playlist."];

          v13 = 0;
          goto LABEL_12;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v7);
  }

  goto LABEL_10;
}

void sub_1A263BB24(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZL34_MPMLInitPropertyPlaylistAuthorMapvEUb0_E3__1NS_9allocatorIS2_EEFvNS_10shared_ptrIN6mlcore17EntityQueryResultEEEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZL34_MPMLInitPropertyPlaylistAuthorMapvEUb0_E3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZZL34_MPMLInitPropertyPlaylistAuthorMapvEUb0_E3__1NS_9allocatorIS2_EEFvNS_10shared_ptrIN6mlcore17EntityQueryResultEEEEEclEOS8_(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v3 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  if (mlcore::EntityQueryResult::entityCount(v4))
  {
    mlcore::EntityQueryResult::entityAtIndex(&v9, v4);
    std::dynamic_pointer_cast[abi:ne200100]<mlcore::Playlist,mlcore::Entity>(buf, &v9);
    v5 = *(a1 + 16);
    v6 = *(v5 + 8);
    *v5 = *buf;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  else
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = **(a1 + 8);
      *buf = 138543362;
      *&buf[4] = v8;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_ERROR, "Did not find playlist for identifiers: %{public}@", buf, 0xCu);
    }
  }

  dispatch_semaphore_signal(**(a1 + 24));
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *std::dynamic_pointer_cast[abi:ne200100]<mlcore::Playlist,mlcore::Entity>(void **a1, void **a2)
{
  result = *a2;
  if (*a2 && (v4 = a2, (result = __dynamic_cast(result, MEMORY[0x1E69B07F0], MEMORY[0x1E69B07F8], 0)) != 0))
  {
    v5 = v4[1];
    *a1 = result;
    a1[1] = v5;
  }

  else
  {
    v4 = a1;
  }

  *v4 = 0;
  v4[1] = 0;
  return result;
}

__n128 _ZNKSt3__110__function6__funcIZZL34_MPMLInitPropertyPlaylistAuthorMapvEUb0_E3__1NS_9allocatorIS2_EEFvNS_10shared_ptrIN6mlcore17EntityQueryResultEEEEE7__cloneEPNS0_6__baseIS9_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F149B478;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__shared_ptr_emplace<mlcore::Playlist>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1499FA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void ___ZL34_MPMLInitPropertyPlaylistAuthorMapv_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = [v8 mediaLibrary];
  v11 = [v10 uniqueIdentifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___ZL34_MPMLInitPropertyPlaylistAuthorMapv_block_invoke_2;
  v13[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v13[4] = a3;
  v13[5] = a4;
  [v9 setLibraryIdentifiersWithDatabaseID:v11 block:v13];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___ZL34_MPMLInitPropertyPlaylistAuthorMapv_block_invoke_3;
  v12[3] = &__block_descriptor_48_e46_v16__0___MPMutableUniversalStoreIdentifiers__8l;
  v12[4] = a3;
  v12[5] = a4;
  [v9 setUniversalStoreIdentifiersWithBlock:v12];
}

void ___ZL34_MPMLInitPropertyPlaylistAuthorMapv_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setPersistentID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void ___ZL34_MPMLInitPropertyPlaylistAuthorMapv_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "socialProfileID");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setSocialProfileID:v6];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A263C180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = v16;

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id ___ZL32_MPMLInitPropertySocialPersonMapv_block_invoke_8(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "imageURL");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if ([v8 length])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = ___ZL32_MPMLInitPropertySocialPersonMapv_block_invoke_9;
    v12[3] = &unk_1E767E078;
    v13 = v8;
    v9 = _Block_copy(v12);
    v10 = _Block_copy(v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

MPArtworkCatalog *___ZL32_MPMLInitPropertySocialPersonMapv_block_invoke_9(uint64_t a1)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v9[0] = @"url";
  v9[1] = @"width";
  v10[0] = v1;
  v10[1] = &unk_1F1509C10;
  v9[2] = @"height";
  v10[2] = &unk_1F1509C10;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v3 = [objc_alloc(MEMORY[0x1E69E45C0]) initWithArtworkResponseDictionary:v2];
  v4 = [MPStoreArtworkRequestToken tokenWithImageArtworkInfo:v3];

  v5 = +[MPStoreArtworkDataSource sharedStoreArtworkDataSource];
  v6 = [[MPArtworkCatalog alloc] initWithToken:v4 dataSource:v5];
  if ([v5 areRepresentationsAvailableForCatalog:v6])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void ___ZL32_MPMLInitPropertySocialPersonMapv_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = [v8 mediaLibrary];
  v11 = [v10 uniqueIdentifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___ZL32_MPMLInitPropertySocialPersonMapv_block_invoke_2;
  v13[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v13[4] = a3;
  v13[5] = a4;
  [v9 setLibraryIdentifiersWithDatabaseID:v11 block:v13];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___ZL32_MPMLInitPropertySocialPersonMapv_block_invoke_3;
  v12[3] = &__block_descriptor_48_e46_v16__0___MPMutableUniversalStoreIdentifiers__8l;
  v12[4] = a3;
  v12[5] = a4;
  [v9 setUniversalStoreIdentifiersWithBlock:v12];
}

void ___ZL32_MPMLInitPropertySocialPersonMapv_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setPersistentID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void ___ZL32_MPMLInitPropertySocialPersonMapv_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "socialProfileID");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setSocialProfileID:v6];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A263C7C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = v16;

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id ___ZL33_MPMLInitPropertyTVShowCreatorMapv_block_invoke_6(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "artistPID");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "artistAvailableArtworkToken");
  v10 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v11 = MPMediaLibraryPropertyCacheValueForProperty(v10[5], a4);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "artistFetchableArtworkToken");
  v12 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v12)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v13 = MPMediaLibraryPropertyCacheValueForProperty(v12[5], a4);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "artistFetchableArtworkSourceType");
  v14 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v14)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v15 = MPMediaLibraryPropertyCacheValueForProperty(v14[5], a4);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v16 = [v6 mediaLibrary];
  v17 = _MPMLTranslatorCreateArtworkCatalogBlock(v9, 0, 7, 4, 0, v11, v13, v15, v16);

  return v17;
}

void sub_1A263CA04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v20 = v17;

  _Unwind_Resume(a1);
}

id _MPMLTranslatorCreateArtworkCatalogBlock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9)
{
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = [[MPMediaLibraryArtworkRequest alloc] initWithLibrary:v19 identifier:a1 entityType:a3 artworkType:a4 mediaType:a2 variantType:a5];
  if ([v19 isHomeSharingLibrary])
  {
LABEL_11:
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = ___ZL40_MPMLTranslatorCreateArtworkCatalogBlockxm17MPMediaEntityType25MPMediaLibraryArtworkType32MPMediaLibraryArtworkVariantTypebP8NSStringS3_P8NSNumberP14MPMediaLibrary_block_invoke;
    v26[3] = &unk_1E767DE00;
    v27 = v19;
    v28 = v20;
    v23 = _Block_copy(v26);
    v24 = _Block_copy(v23);

    goto LABEL_12;
  }

  if ([(__CFString *)v16 length]|| [(__CFString *)v17 length])
  {
    if (v16)
    {
      v21 = v16;
    }

    else
    {
      v21 = &stru_1F149ECA8;
    }

    [(MPMediaLibraryArtworkRequest *)v20 setAvailableArtworkToken:v21];
    if (v17)
    {
      v22 = v17;
    }

    else
    {
      v22 = &stru_1F149ECA8;
    }

    [(MPMediaLibraryArtworkRequest *)v20 setFetchableArtworkToken:v22];
    [(MPMediaLibraryArtworkRequest *)v20 setFetchableArtworkSource:v18];
    goto LABEL_11;
  }

  v24 = 0;
LABEL_12:

  return v24;
}

MPArtworkCatalog *___ZL40_MPMLTranslatorCreateArtworkCatalogBlockxm17MPMediaEntityType25MPMediaLibraryArtworkType32MPMediaLibraryArtworkVariantTypebP8NSStringS3_P8NSNumberP14MPMediaLibrary_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) artworkDataSource];
  v3 = [[MPArtworkCatalog alloc] initWithToken:*(a1 + 40) dataSource:v2];
  if ([v2 areRepresentationsAvailableForCatalog:v3])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id ___ZL33_MPMLInitPropertyTVShowCreatorMapv_block_invoke_5(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void ___ZL33_MPMLInitPropertyTVShowCreatorMapv_block_invoke_4(void *a1@<X1>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a2;
  std::string::basic_string[abi:ne200100]<0>(v7, "hasName");
  if (std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a1, v7))
  {
    mlcore::SortDescriptor::SortDescriptor();
    std::string::basic_string[abi:ne200100]<0>(__p, "nameOrder");
    if (std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a1, __p))
    {
      [v5 _MPMediaLibraryEntityTranslator_MLCoreSortDescriptorOrdering];
      mlcore::SortDescriptor::SortDescriptor();
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      std::vector<mlcore::SortDescriptor>::__init_with_size[abi:ne200100]<mlcore::SortDescriptor const*,mlcore::SortDescriptor const*>(a3, v8, &v9, 2uLL);
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1A263CF38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void ___ZL33_MPMLInitPropertyTVShowCreatorMapv_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = [v8 mediaLibrary];
  v11 = [v10 uniqueIdentifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___ZL33_MPMLInitPropertyTVShowCreatorMapv_block_invoke_2;
  v13[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v13[4] = a3;
  v13[5] = a4;
  [v9 setLibraryIdentifiersWithDatabaseID:v11 block:v13];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___ZL33_MPMLInitPropertyTVShowCreatorMapv_block_invoke_3;
  v12[3] = &__block_descriptor_48_e46_v16__0___MPMutableUniversalStoreIdentifiers__8l;
  v12[4] = a3;
  v12[5] = a4;
  [v9 setUniversalStoreIdentifiersWithBlock:v12];
}

void ___ZL33_MPMLInitPropertyTVShowCreatorMapv_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setPersistentID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void ___ZL33_MPMLInitPropertyTVShowCreatorMapv_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "storeID");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setAdamID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

id ___ZL26_MPMLInitPropertyTVShowMapv_block_invoke_10(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "canonicalID");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

id ___ZL26_MPMLInitPropertyTVShowMapv_block_invoke_8(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mediaType");
  v10 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v11 = MPMediaLibraryPropertyCacheValueForProperty(v10[5], a4);
  v12 = [v11 unsignedIntValue];

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = 255;
  if (v12 != 0xFF)
  {
    v13 = 0;
  }

  if ((~v12 & 0xFF00) != 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = v13 | 0xFF00;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "availableArtworkToken");
  v15 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v15)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v16 = MPMediaLibraryPropertyCacheValueForProperty(v15[5], a4);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "fetchableArtworkToken");
  v17 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v17)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v18 = MPMediaLibraryPropertyCacheValueForProperty(v17[5], a4);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "fetchableArtworkSourceType");
  v19 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v19)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v20 = MPMediaLibraryPropertyCacheValueForProperty(v19[5], a4);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = [v6 mediaLibrary];
  v22 = vandq_s8(vshlq_u32(vdupq_n_s32(v12), xmmword_1A273DD80), xmmword_1A273DD90);
  *v22.i8 = vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
  v23 = _MPMLTranslatorCreateArtworkCatalogBlock(v9, v14 | v22.i32[0] | v12 & 0x3210 | v22.i32[1] | (4 * v12) & 0x400 | (4 * ((v12 >> 1) & 1)) | (2 * v12) & 0x800, 0, 1, 0, v16, v18, v20, v21);

  return v23;
}

id ___ZL26_MPMLInitPropertyTVShowMapv_block_invoke_7(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void ___ZL26_MPMLInitPropertyTVShowMapv_block_invoke_6(void *a1@<X1>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a2;
  std::string::basic_string[abi:ne200100]<0>(v7, "hasName");
  if (std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a1, v7))
  {
    mlcore::SortDescriptor::SortDescriptor();
    std::string::basic_string[abi:ne200100]<0>(__p, "nameOrder");
    if (std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a1, __p))
    {
      [v5 _MPMediaLibraryEntityTranslator_MLCoreSortDescriptorOrdering];
      mlcore::SortDescriptor::SortDescriptor();
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      std::vector<mlcore::SortDescriptor>::__init_with_size[abi:ne200100]<mlcore::SortDescriptor const*,mlcore::SortDescriptor const*>(a3, v8, &v9, 2uLL);
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1A263D910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void ___ZL26_MPMLInitPropertyTVShowMapv_block_invoke_5(void *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v3 = mlcore::ItemArtistPropertyStoreID(v5);
  v4 = mlcore::ItemArtistPropertyPersistentID(v3);
  _MPMLInsertPredicatesForIdentifierSet(a2, v5, v3, 0, v4, 0, 0, 0, 0, 0);
}

void sub_1A263D9E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12)
{
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&a12);

  _Unwind_Resume(a1);
}

void ___ZL26_MPMLInitPropertyTVShowMapv_block_invoke_4(uint64_t a1, void *a2, uint64_t *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v5 = [v4 modelKind];
  v6 = [v5 identityKind];
  v7 = +[MPModelTVShowKind identityKind];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _MPMLInitPropertyTVShowMap()_block_invoke_4"];
    [v17 handleFailureInFunction:v18 file:@"MPMediaLibraryTranslatorSchema.mm" lineNumber:3433 description:@"Must have TV Show kind to generate TV Show entity query."];
  }

  v9 = a3[1];
  v24 = *a3;
  v25 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v5 applyToView:&v24 withContext:v4];
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  v10 = [v4 allowedEntityIdentifiers];
  v11 = mlcore::ItemArtistPropertyStoreID(v10);
  v12 = mlcore::ItemArtistPropertyPersistentID(v11);
  _MPMLInsertPredicatesForIdentifierSet(&v26, v10, v11, 0, v12, 0, 0, 0, 0, 0);

  v13 = [v4 filterText];
  LOBYTE(v11) = [v13 length] == 0;

  if ((v11 & 1) == 0)
  {
    v14 = [v4 filterText];
    v15 = v14;
    std::string::basic_string[abi:ne200100]<0>(__p, [v14 UTF8String]);

    v21 = mlcore::ItemArtistPropertyName(v16);
    std::allocate_shared[abi:ne200100]<mlcore::SearchPredicate,std::allocator<mlcore::SearchPredicate>,mlcore::ModelProperty<std::string> *,std::string&,0>(&v22, &v21, __p);
  }

  memset(v19, 0, sizeof(v19));
  std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate>*,std::shared_ptr<mlcore::Predicate>*>(v19, v26, v27, (v27 - v26) >> 4);
  mlcore::CreateAndPredicate();
  mlcore::EntityQuery::tvShowsQuery();
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  __p[0] = v19;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](__p);

  __p[0] = &v26;
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1A263DCE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31)
{
  __p = (v35 - 128);
  std::vector<std::shared_ptr<mlcore::Predicate>>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void sub_1A263DEC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::__shared_weak_count::~__shared_weak_count(v14);
  operator delete(v16);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::SearchPredicate>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1499228;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1A58E14E0);
}

void ___ZL26_MPMLInitPropertyTVShowMapv_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = [v8 mediaLibrary];
  v11 = [v10 uniqueIdentifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___ZL26_MPMLInitPropertyTVShowMapv_block_invoke_2;
  v13[3] = &__block_descriptor_48_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v13[4] = a3;
  v13[5] = a4;
  [v9 setLibraryIdentifiersWithDatabaseID:v11 block:v13];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___ZL26_MPMLInitPropertyTVShowMapv_block_invoke_3;
  v12[3] = &__block_descriptor_48_e46_v16__0___MPMutableUniversalStoreIdentifiers__8l;
  v12[4] = a3;
  v12[5] = a4;
  [v9 setUniversalStoreIdentifiersWithBlock:v12];
}

void ___ZL26_MPMLInitPropertyTVShowMapv_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "pid");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setPersistentID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void ___ZL26_MPMLInitPropertyTVShowMapv_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "storeID");
  v5 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(v4, __p);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = MPMediaLibraryPropertyCacheValueForProperty(v5[5], *(a1 + 40));
  [v3 setAdamID:{objc_msgSend(v6, "longLongValue")}];

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

id ___ZL28_MPMLInitPropertyTVSeasonMapv_block_invoke_16(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "storeCanonicalID");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

id ___ZL28_MPMLInitPropertyTVSeasonMapv_block_invoke_15(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "itemPID");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mediaType");
  v10 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v11 = MPMediaLibraryPropertyCacheValueForProperty(v10[5], a4);
  v12 = [v11 unsignedIntValue];

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = 255;
  if (v12 != 0xFF)
  {
    v13 = 0;
  }

  if ((~v12 & 0xFF00) != 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = v13 | 0xFF00;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "availableArtworkToken");
  v15 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v15)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v16 = MPMediaLibraryPropertyCacheValueForProperty(v15[5], a4);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "fetchableArtworkToken");
  v17 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v17)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v18 = MPMediaLibraryPropertyCacheValueForProperty(v17[5], a4);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "fetchableArtworkSourceType");
  v19 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v19)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v20 = MPMediaLibraryPropertyCacheValueForProperty(v19[5], a4);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = [v6 mediaLibrary];
  v22 = vandq_s8(vshlq_u32(vdupq_n_s32(v12), xmmword_1A273DD80), xmmword_1A273DD90);
  *v22.i8 = vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
  v23 = _MPMLTranslatorCreateArtworkCatalogBlock(v9, v14 | v22.i32[0] | v12 & 0x3210 | v22.i32[1] | (4 * v12) & 0x400 | (4 * ((v12 >> 1) & 1)) | (2 * v12) & 0x800, 0, 1, 0, v16, v18, v20, v21);

  return v23;
}

void *___ZL28_MPMLInitPropertyTVSeasonMapv_block_invoke_14(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "sortType");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 integerValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 == 2)
  {
    v10 = &unk_1F1509B38;
  }

  else
  {
    v10 = &unk_1F1509BF8;
  }

  return v10;
}

void sub_1A263E7C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id ___ZL28_MPMLInitPropertyTVSeasonMapv_block_invoke_13(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  v7 = MEMORY[0x1E696AD98];
  std::string::basic_string[abi:ne200100]<0>(__p, "representativeItemExplicit");
  v8 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = MPMediaLibraryPropertyCacheValueForProperty(v8[5], a4);
  v10 = [v7 numberWithBool:{objc_msgSend(v9, "BOOLValue") ^ 1}];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

id ___ZL28_MPMLInitPropertyTVSeasonMapv_block_invoke_9(uint64_t a1, void *a2, void *a3, int8x8_t *a4)
{
  v6 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "downloadedDate");
  v7 = std::__hash_table<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlcore::ModelPropertyBase *>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = MPMediaLibraryPropertyCacheValueForProperty(v7[5], a4);
  v9 = [v8 longLongValue];

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = _MPMLDateFromStoredInt64(v9);

  return v10;
}