void sub_1C9218524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 65) < 0)
  {
    operator delete(*(v35 - 88));
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.43485253e161;
  *a1 = xmmword_1C925F1E0;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox::~DiffBox(AudioDSPGraph::Boxes::Arithmetic::Binary::DiffBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_5,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_5>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(void x0_0, void *a1, _DWORD *a2, _DWORD *a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a1[1];
  *(v5 + 7) = *(a1 + 15);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (*a2 == 2)
  {
    if (*a3 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for arithmetic max box. Must be 1.");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8334FB0);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of inputs for arithmetic max box. Must be 2.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8334F98);
}

void sub_1C92187EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MaxBox>::initialize(uint64_t a1)
{
  result = AudioDSPGraph::Box::initialize(a1);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v7 = (v5 - v4) >> 5;
  if (v7 != 2)
  {
    v10 = *(a1 + 104) - *(a1 + 96);
    goto LABEL_16;
  }

  v8 = *(a1 + 96);
  v9 = *(a1 + 104);
  v10 = v9 - v8;
  if (((v9 - v8) & 0x1FFFFFFFE0) != 0x20)
  {
    v7 = 2;
LABEL_16:
    caulk::make_string(&v40, "There must be two inputs and one output, instead of %u and %u.", v3, v7, v10 >> 5);
    AudioDSPGraph::ThrowException(1701602593, &v40, off_1E8335028);
  }

  v6 = v5 - v4;
  if (v5 == v4)
  {
    v17 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v17 = *v17;
    }

    caulk::make_string(&v41, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v3, v17, v6 >> 5, 0);
    AudioDSPGraph::ThrowException(1919837985, &v41, off_1E8337C60);
  }

  if (((v5 - v4) >> 5) <= 1)
  {
    v18 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v18 = *v18;
    }

    caulk::make_string(&v41, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v3, v18, v6 >> 5, 1);
    AudioDSPGraph::ThrowException(1919837985, &v41, off_1E8337C60);
  }

  v11 = *(*(v4 + 16) + 120);
  v12 = *(v11 + 28);
  v13 = *(*(v4 + 48) + 120);
  if (v12 != *(v13 + 28))
  {
    v19 = *(*(*(AudioDSPGraph::Box::in(a1, 0) + 16) + 120) + 28);
    v20 = AudioDSPGraph::Box::in(a1, 1);
    caulk::make_string(&v39, "The inputs must have the same channel count, but have %u and %u.", v21, v19, *(*(*(v20 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, &v39, off_1E8335040);
  }

  if (v9 == v8)
  {
    v22 = v10 >> 5;
    v23 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v23 = *v23;
    }

    caulk::make_string(&v41, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v3, v23, v22, 0);
    AudioDSPGraph::ThrowException(1919837985, &v41, off_1E8337C78);
  }

  if (v12 != *(*(*(v8 + 16) + 120) + 28))
  {
    v24 = *(*(*(AudioDSPGraph::Box::in(a1, 0) + 16) + 120) + 28);
    v25 = AudioDSPGraph::Box::out(a1, 0);
    caulk::make_string(&v38, "The inputs and output must have the same channel count, but have %u and %u.", v26, v24, *(*(*(v25 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, &v38, off_1E8335058);
  }

  v14 = *(v11 + 8);
  v15 = *(v13 + 8);
  if (v14 != 1819304813 || v15 != 1819304813)
  {
    v33 = v14;
    v34 = *(v13 + 8);
    if (v14 == 1819304813 && v15 != 1819304813)
    {
      v31 = (*(*a1 + 16))(a1);
      caulk::make_string(&v37, "Can't use real input for one bus and complex input for another with '%s' box", v32, v31);
      AudioDSPGraph::ThrowException(1718444833, &v37, off_1E8335070);
    }

    v28 = (*(*a1 + 16))(a1);
    if (v33 == 1819304813 || v34 != 1819304813)
    {
      caulk::make_string(&v35, "Can't use complex inputs with '%s' box", v29, v28);
      AudioDSPGraph::ThrowException(1718444833, &v35, off_1E83350A0);
    }

    caulk::make_string(&v36, "Can't use complex input for one bus and real input for another with '%s' box", v29, v28);
    AudioDSPGraph::ThrowException(1718444833, &v36, off_1E8335088);
  }

  *(a1 + 768) = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MaxBox>::initialize(void)::kernel;
  return result;
}

void sub_1C9218BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MaxBox>::process(AudioDSPGraph::Box *this, const char *a2)
{
  v3 = *(this + 9);
  v4 = (*(this + 10) - v3) >> 5;
  if (*(this + 10) == v3)
  {
    v36 = (this + 40);
    if (*(this + 63) < 0)
    {
      v36 = *v36;
    }

    caulk::make_string(&v54, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v36, v4, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C60);
  }

  if (v4 <= 1)
  {
    v37 = (this + 40);
    if (*(this + 63) < 0)
    {
      v37 = *v37;
    }

    caulk::make_string(&v54, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v37, v4, 1);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C60);
  }

  v5 = *(this + 12);
  if (*(this + 13) == v5)
  {
    v38 = (this + 40);
    if (*(this + 63) < 0)
    {
      v38 = *v38;
    }

    caulk::make_string(&v54, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v38, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C78);
  }

  v6 = *(*(*(v3 + 16) + 56) + 80);
  v7 = *(*(*(v3 + 48) + 56) + 80);
  if (*v6 != *v7)
  {
    v39 = *(*(*(AudioDSPGraph::Box::in(this, 0) + 16) + 120) + 28);
    v40 = AudioDSPGraph::Box::in(this, 1);
    caulk::make_string(&v53, "The inputs must have the same channel count, but have %u and %u.", v41, v39, *(*(*(v40 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, &v53, off_1E8334FC8);
  }

  v8 = *(*(*(v5 + 16) + 56) + 80);
  if (*v6 != *v8)
  {
    v42 = *(*(*(AudioDSPGraph::Box::in(this, 0) + 16) + 120) + 28);
    v43 = AudioDSPGraph::Box::out(this, 0);
    caulk::make_string(&v52, "The inputs and output must have the same channel count, but have %u and %u.", v44, v42, *(*(*(v43 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, &v52, off_1E8334FE0);
  }

  v10 = (*(**(this + 96) + 8))(*(this + 96));
  v12 = v6[3];
  if (v12 < v10)
  {
    caulk::make_string(&v51, "The buffer passed for input 0 should be at least %u bytes, but is %u.", v11, v10, v12);
    AudioDSPGraph::ThrowException(1718449215, &v51, off_1E8334FF8);
  }

  v13 = (*(**(this + 96) + 16))(*(this + 96), a2);
  v15 = v7[3];
  if (v15 < v13)
  {
    caulk::make_string(&v50, "The buffer passed for input 1 should be at least %u bytes, but is %u.", v14, v13, v15);
    AudioDSPGraph::ThrowException(1718449215, &v50, off_1E8335010);
  }

  v16 = *v6;
  result = (*(**(this + 96) + 24))(*(this + 96), a2);
  if (v16)
  {
    v19 = result;
    v20 = v8 + 4;
    v21 = (v7 + 4);
    v22 = (v6 + 4);
    do
    {
      v24 = *v22;
      v22 += 2;
      v23 = v24;
      v25 = *v21;
      v21 += 2;
      result = (***(this + 96))(*(this + 96), a2, v23, v25, *v20);
      *(v20 - 1) = v19;
      v20 += 2;
      --v16;
    }

    while (v16);
  }

  v26 = *(this + 9);
  if (*(this + 10) == v26)
  {
    v45 = (this + 40);
    if (*(this + 63) < 0)
    {
      v45 = *v45;
    }

    caulk::make_string(&v54, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v18, v45, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C60);
  }

  v27 = *(this + 12);
  if (*(this + 13) == v27)
  {
    v46 = (this + 40);
    if (*(this + 63) < 0)
    {
      v46 = *v46;
    }

    caulk::make_string(&v54, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v18, v46, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C78);
  }

  v28 = *(*(v26 + 16) + 56);
  v29 = *(*(v27 + 16) + 56);
  v30 = *(v28 + 8);
  v31 = *(v28 + 24);
  v32 = *(v28 + 40);
  *(v29 + 56) = *(v28 + 56);
  *(v29 + 40) = v32;
  *(v29 + 24) = v31;
  *(v29 + 8) = v30;
  v33 = *(this + 9);
  v34 = (*(this + 10) - v33) >> 5;
  if (*(this + 10) == v33)
  {
    v47 = (this + 40);
    if (*(this + 63) < 0)
    {
      v47 = *v47;
    }

    caulk::make_string(&v54, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v18, v47, v34, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C60);
  }

  if (v34 <= 1)
  {
    v48 = (this + 40);
    if (*(this + 63) < 0)
    {
      v48 = *v48;
    }

    caulk::make_string(&v54, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v18, v48, v34, 1);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C60);
  }

  v35 = *(this + 12);
  if (*(this + 13) == v35)
  {
    v49 = (this + 40);
    if (*(this + 63) < 0)
    {
      v49 = *v49;
    }

    caulk::make_string(&v54, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v18, v49, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C78);
  }

  *(*(*(v35 + 16) + 56) + 72) = (*(*(*(v33 + 48) + 56) + 72) | 0xFFFFFFEF) & *(*(*(v33 + 16) + 56) + 72);
  return result;
}

void sub_1C9219278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 65) < 0)
  {
    operator delete(*(v35 - 88));
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::Arithmetic::Binary::MaxBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 2.06533485e161;
  *a1 = xmmword_1C925F1F0;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::Arithmetic::Binary::MaxBox::~MaxBox(AudioDSPGraph::Boxes::Arithmetic::Binary::MaxBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_4,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_4>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(void x0_0, void *a1, _DWORD *a2, _DWORD *a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a1[1];
  *(v5 + 7) = *(a1 + 15);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (*a2 == 2)
  {
    if (*a3 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for arithmetic min box. Must be 1.");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8334E90);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of inputs for arithmetic min box. Must be 2.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8334E78);
}

void sub_1C9219540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MinBox>::initialize(uint64_t a1)
{
  result = AudioDSPGraph::Box::initialize(a1);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v7 = (v5 - v4) >> 5;
  if (v7 != 2)
  {
    v10 = *(a1 + 104) - *(a1 + 96);
    goto LABEL_16;
  }

  v8 = *(a1 + 96);
  v9 = *(a1 + 104);
  v10 = v9 - v8;
  if (((v9 - v8) & 0x1FFFFFFFE0) != 0x20)
  {
    v7 = 2;
LABEL_16:
    caulk::make_string(&v40, "There must be two inputs and one output, instead of %u and %u.", v3, v7, v10 >> 5);
    AudioDSPGraph::ThrowException(1701602593, &v40, off_1E8334F08);
  }

  v6 = v5 - v4;
  if (v5 == v4)
  {
    v17 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v17 = *v17;
    }

    caulk::make_string(&v41, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v3, v17, v6 >> 5, 0);
    AudioDSPGraph::ThrowException(1919837985, &v41, off_1E8337C60);
  }

  if (((v5 - v4) >> 5) <= 1)
  {
    v18 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v18 = *v18;
    }

    caulk::make_string(&v41, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v3, v18, v6 >> 5, 1);
    AudioDSPGraph::ThrowException(1919837985, &v41, off_1E8337C60);
  }

  v11 = *(*(v4 + 16) + 120);
  v12 = *(v11 + 28);
  v13 = *(*(v4 + 48) + 120);
  if (v12 != *(v13 + 28))
  {
    v19 = *(*(*(AudioDSPGraph::Box::in(a1, 0) + 16) + 120) + 28);
    v20 = AudioDSPGraph::Box::in(a1, 1);
    caulk::make_string(&v39, "The inputs must have the same channel count, but have %u and %u.", v21, v19, *(*(*(v20 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, &v39, off_1E8334F20);
  }

  if (v9 == v8)
  {
    v22 = v10 >> 5;
    v23 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v23 = *v23;
    }

    caulk::make_string(&v41, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v3, v23, v22, 0);
    AudioDSPGraph::ThrowException(1919837985, &v41, off_1E8337C78);
  }

  if (v12 != *(*(*(v8 + 16) + 120) + 28))
  {
    v24 = *(*(*(AudioDSPGraph::Box::in(a1, 0) + 16) + 120) + 28);
    v25 = AudioDSPGraph::Box::out(a1, 0);
    caulk::make_string(&v38, "The inputs and output must have the same channel count, but have %u and %u.", v26, v24, *(*(*(v25 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, &v38, off_1E8334F38);
  }

  v14 = *(v11 + 8);
  v15 = *(v13 + 8);
  if (v14 != 1819304813 || v15 != 1819304813)
  {
    v33 = v14;
    v34 = *(v13 + 8);
    if (v14 == 1819304813 && v15 != 1819304813)
    {
      v31 = (*(*a1 + 16))(a1);
      caulk::make_string(&v37, "Can't use real input for one bus and complex input for another with '%s' box", v32, v31);
      AudioDSPGraph::ThrowException(1718444833, &v37, off_1E8334F50);
    }

    v28 = (*(*a1 + 16))(a1);
    if (v33 == 1819304813 || v34 != 1819304813)
    {
      caulk::make_string(&v35, "Can't use complex inputs with '%s' box", v29, v28);
      AudioDSPGraph::ThrowException(1718444833, &v35, off_1E8334F80);
    }

    caulk::make_string(&v36, "Can't use complex input for one bus and real input for another with '%s' box", v29, v28);
    AudioDSPGraph::ThrowException(1718444833, &v36, off_1E8334F68);
  }

  *(a1 + 768) = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MinBox>::initialize(void)::kernel;
  return result;
}

void sub_1C9219950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MinBox>::process(AudioDSPGraph::Box *this, const char *a2)
{
  v3 = *(this + 9);
  v4 = (*(this + 10) - v3) >> 5;
  if (*(this + 10) == v3)
  {
    v36 = (this + 40);
    if (*(this + 63) < 0)
    {
      v36 = *v36;
    }

    caulk::make_string(&v54, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v36, v4, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C60);
  }

  if (v4 <= 1)
  {
    v37 = (this + 40);
    if (*(this + 63) < 0)
    {
      v37 = *v37;
    }

    caulk::make_string(&v54, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v37, v4, 1);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C60);
  }

  v5 = *(this + 12);
  if (*(this + 13) == v5)
  {
    v38 = (this + 40);
    if (*(this + 63) < 0)
    {
      v38 = *v38;
    }

    caulk::make_string(&v54, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v38, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C78);
  }

  v6 = *(*(*(v3 + 16) + 56) + 80);
  v7 = *(*(*(v3 + 48) + 56) + 80);
  if (*v6 != *v7)
  {
    v39 = *(*(*(AudioDSPGraph::Box::in(this, 0) + 16) + 120) + 28);
    v40 = AudioDSPGraph::Box::in(this, 1);
    caulk::make_string(&v53, "The inputs must have the same channel count, but have %u and %u.", v41, v39, *(*(*(v40 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, &v53, off_1E8334EA8);
  }

  v8 = *(*(*(v5 + 16) + 56) + 80);
  if (*v6 != *v8)
  {
    v42 = *(*(*(AudioDSPGraph::Box::in(this, 0) + 16) + 120) + 28);
    v43 = AudioDSPGraph::Box::out(this, 0);
    caulk::make_string(&v52, "The inputs and output must have the same channel count, but have %u and %u.", v44, v42, *(*(*(v43 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, &v52, off_1E8334EC0);
  }

  v10 = (*(**(this + 96) + 8))(*(this + 96));
  v12 = v6[3];
  if (v12 < v10)
  {
    caulk::make_string(&v51, "The buffer passed for input 0 should be at least %u bytes, but is %u.", v11, v10, v12);
    AudioDSPGraph::ThrowException(1718449215, &v51, off_1E8334ED8);
  }

  v13 = (*(**(this + 96) + 16))(*(this + 96), a2);
  v15 = v7[3];
  if (v15 < v13)
  {
    caulk::make_string(&v50, "The buffer passed for input 1 should be at least %u bytes, but is %u.", v14, v13, v15);
    AudioDSPGraph::ThrowException(1718449215, &v50, off_1E8334EF0);
  }

  v16 = *v6;
  result = (*(**(this + 96) + 24))(*(this + 96), a2);
  if (v16)
  {
    v19 = result;
    v20 = v8 + 4;
    v21 = (v7 + 4);
    v22 = (v6 + 4);
    do
    {
      v24 = *v22;
      v22 += 2;
      v23 = v24;
      v25 = *v21;
      v21 += 2;
      result = (***(this + 96))(*(this + 96), a2, v23, v25, *v20);
      *(v20 - 1) = v19;
      v20 += 2;
      --v16;
    }

    while (v16);
  }

  v26 = *(this + 9);
  if (*(this + 10) == v26)
  {
    v45 = (this + 40);
    if (*(this + 63) < 0)
    {
      v45 = *v45;
    }

    caulk::make_string(&v54, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v18, v45, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C60);
  }

  v27 = *(this + 12);
  if (*(this + 13) == v27)
  {
    v46 = (this + 40);
    if (*(this + 63) < 0)
    {
      v46 = *v46;
    }

    caulk::make_string(&v54, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v18, v46, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C78);
  }

  v28 = *(*(v26 + 16) + 56);
  v29 = *(*(v27 + 16) + 56);
  v30 = *(v28 + 8);
  v31 = *(v28 + 24);
  v32 = *(v28 + 40);
  *(v29 + 56) = *(v28 + 56);
  *(v29 + 40) = v32;
  *(v29 + 24) = v31;
  *(v29 + 8) = v30;
  v33 = *(this + 9);
  v34 = (*(this + 10) - v33) >> 5;
  if (*(this + 10) == v33)
  {
    v47 = (this + 40);
    if (*(this + 63) < 0)
    {
      v47 = *v47;
    }

    caulk::make_string(&v54, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v18, v47, v34, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C60);
  }

  if (v34 <= 1)
  {
    v48 = (this + 40);
    if (*(this + 63) < 0)
    {
      v48 = *v48;
    }

    caulk::make_string(&v54, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v18, v48, v34, 1);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C60);
  }

  v35 = *(this + 12);
  if (*(this + 13) == v35)
  {
    v49 = (this + 40);
    if (*(this + 63) < 0)
    {
      v49 = *v49;
    }

    caulk::make_string(&v54, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v18, v49, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C78);
  }

  *(*(*(v35 + 16) + 56) + 72) = (*(*(*(v33 + 48) + 56) + 72) | 0xFFFFFFEF) & *(*(*(v33 + 16) + 56) + 72);
  return result;
}

void sub_1C9219FCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 65) < 0)
  {
    operator delete(*(v35 - 88));
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::Arithmetic::Binary::MinBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 2.06752086e161;
  *a1 = xmmword_1C925F200;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::Arithmetic::Binary::MinBox::~MinBox(AudioDSPGraph::Boxes::Arithmetic::Binary::MinBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_3,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_3>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(void x0_0, void *a1, _DWORD *a2, _DWORD *a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a1[1];
  *(v5 + 7) = *(a1 + 15);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (*a2 == 2)
  {
    if (*a3 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for arithmetic divide box. must be 1.");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8334DB8);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of inputs for arithmetic divide box. must be 2.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8334DA0);
}

void sub_1C921A294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox>::initialize(uint64_t a1)
{
  result = AudioDSPGraph::Box::initialize(a1);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v7 = (v5 - v4) >> 5;
  if (v7 != 2)
  {
    v10 = *(a1 + 104) - *(a1 + 96);
    goto LABEL_27;
  }

  v8 = *(a1 + 96);
  v9 = *(a1 + 104);
  v10 = v9 - v8;
  if (((v9 - v8) & 0x1FFFFFFFE0) != 0x20)
  {
    v7 = 2;
LABEL_27:
    caulk::make_string(&v32, "There must be two inputs and one output, instead of %u and %u.", v3, v7, v10 >> 5);
    AudioDSPGraph::ThrowException(1701602593, &v32, off_1E8334E30);
  }

  v6 = v5 - v4;
  if (v5 == v4)
  {
    v20 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v20 = *v20;
    }

    caulk::make_string(&v33, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v3, v20, v6 >> 5, 0);
    AudioDSPGraph::ThrowException(1919837985, &v33, off_1E8337C60);
  }

  if (((v5 - v4) >> 5) <= 1)
  {
    v21 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v21 = *v21;
    }

    caulk::make_string(&v33, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v3, v21, v6 >> 5, 1);
    AudioDSPGraph::ThrowException(1919837985, &v33, off_1E8337C60);
  }

  v11 = *(*(v4 + 16) + 120);
  v12 = *(v11 + 28);
  v13 = *(*(v4 + 48) + 120);
  if (v12 != *(v13 + 28))
  {
    v22 = *(*(*(AudioDSPGraph::Box::in(a1, 0) + 16) + 120) + 28);
    v23 = AudioDSPGraph::Box::in(a1, 1);
    caulk::make_string(&v31, "The inputs must have the same channel count, but have %u and %u.", v24, v22, *(*(*(v23 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, &v31, off_1E8334E48);
  }

  if (v9 == v8)
  {
    v25 = v10 >> 5;
    v26 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v26 = *v26;
    }

    caulk::make_string(&v33, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v3, v26, v25, 0);
    AudioDSPGraph::ThrowException(1919837985, &v33, off_1E8337C78);
  }

  if (v12 != *(*(*(v8 + 16) + 120) + 28))
  {
    v27 = *(*(*(AudioDSPGraph::Box::in(a1, 0) + 16) + 120) + 28);
    v28 = AudioDSPGraph::Box::out(a1, 0);
    caulk::make_string(&v30, "The inputs and output must have the same channel count, but have %u and %u.", v29, v27, *(*(*(v28 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, &v30, off_1E8334E60);
  }

  v14 = *(v11 + 8);
  v15 = *(v13 + 8);
  if (v14 == 1819304813 && v15 == 1819304813)
  {
    v19 = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox>::initialize(void)::kernel;
  }

  else if (v14 != 1819304813 || v15 == 1819304813)
  {
    if (v14 != 1819304813 && v15 == 1819304813)
    {
      v19 = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox>::initialize(void)::kernel;
    }

    else
    {
      v19 = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox>::initialize(void)::kernel;
    }
  }

  else
  {
    v19 = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox>::initialize(void)::kernel;
  }

  *(a1 + 768) = v19;
  return result;
}

void sub_1C921A5D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox>::KernelImpl<(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox>::Domain)1,(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox>::Domain)1>::process(int a1, vDSP_Length __N, float *a3, float *a4, float *a5)
{
  __A.realp = a3;
  __A.imagp = &a3[__N];
  __B.realp = a4;
  __B.imagp = &a4[__N];
  v5.realp = a5;
  v5.imagp = &a5[__N];
  vDSP_zvdiv(&__B, 1, &__A, 1, &v5, 1, __N);
}

void AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox>::KernelImpl<(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox>::Domain)1,(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox>::Domain)0>::process(int a1, vDSP_Length __N, float *a3, const float *__B, float *a5)
{
  __A.realp = a3;
  __A.imagp = &a3[__N];
  v5.realp = a5;
  v5.imagp = &a5[__N];
  vDSP_zrvdiv(&__A, 1, __B, 1, &v5, 1, __N);
}

void AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox>::KernelImpl<(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox>::Domain)0,(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox>::Domain)1>::process(int a1, vDSP_Length __N, float *a3, float *a4, float *a5)
{
  __B.realp = a4;
  __B.imagp = &a4[__N];
  __C.realp = a5;
  __C.imagp = &a5[__N];
  __A = 0.0;
  v5 = __N;
  v8.realp = a3;
  v8.imagp = __C.imagp;
  vDSP_vfill(&__A, __C.imagp, 1, __N);
  vDSP_zvdiv(&__B, 1, &v8, 1, &__C, 1, v5);
}

uint64_t AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox>::process(AudioDSPGraph::Box *this, const char *a2)
{
  v3 = *(this + 9);
  v4 = (*(this + 10) - v3) >> 5;
  if (*(this + 10) == v3)
  {
    v36 = (this + 40);
    if (*(this + 63) < 0)
    {
      v36 = *v36;
    }

    caulk::make_string(&v54, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v36, v4, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C60);
  }

  if (v4 <= 1)
  {
    v37 = (this + 40);
    if (*(this + 63) < 0)
    {
      v37 = *v37;
    }

    caulk::make_string(&v54, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v37, v4, 1);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C60);
  }

  v5 = *(this + 12);
  if (*(this + 13) == v5)
  {
    v38 = (this + 40);
    if (*(this + 63) < 0)
    {
      v38 = *v38;
    }

    caulk::make_string(&v54, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v38, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C78);
  }

  v6 = *(*(*(v3 + 16) + 56) + 80);
  v7 = *(*(*(v3 + 48) + 56) + 80);
  if (*v6 != *v7)
  {
    v39 = *(*(*(AudioDSPGraph::Box::in(this, 0) + 16) + 120) + 28);
    v40 = AudioDSPGraph::Box::in(this, 1);
    caulk::make_string(&v53, "The inputs must have the same channel count, but have %u and %u.", v41, v39, *(*(*(v40 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, &v53, off_1E8334DD0);
  }

  v8 = *(*(*(v5 + 16) + 56) + 80);
  if (*v6 != *v8)
  {
    v42 = *(*(*(AudioDSPGraph::Box::in(this, 0) + 16) + 120) + 28);
    v43 = AudioDSPGraph::Box::out(this, 0);
    caulk::make_string(&v52, "The inputs and output must have the same channel count, but have %u and %u.", v44, v42, *(*(*(v43 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, &v52, off_1E8334DE8);
  }

  v10 = (*(**(this + 96) + 8))(*(this + 96));
  v12 = v6[3];
  if (v12 < v10)
  {
    caulk::make_string(&v51, "The buffer passed for input 0 should be at least %u bytes, but is %u.", v11, v10, v12);
    AudioDSPGraph::ThrowException(1718449215, &v51, off_1E8334E00);
  }

  v13 = (*(**(this + 96) + 16))(*(this + 96), a2);
  v15 = v7[3];
  if (v15 < v13)
  {
    caulk::make_string(&v50, "The buffer passed for input 1 should be at least %u bytes, but is %u.", v14, v13, v15);
    AudioDSPGraph::ThrowException(1718449215, &v50, off_1E8334E18);
  }

  v16 = *v6;
  result = (*(**(this + 96) + 24))(*(this + 96), a2);
  if (v16)
  {
    v19 = result;
    v20 = v8 + 4;
    v21 = (v7 + 4);
    v22 = (v6 + 4);
    do
    {
      v24 = *v22;
      v22 += 2;
      v23 = v24;
      v25 = *v21;
      v21 += 2;
      result = (***(this + 96))(*(this + 96), a2, v23, v25, *v20);
      *(v20 - 1) = v19;
      v20 += 2;
      --v16;
    }

    while (v16);
  }

  v26 = *(this + 9);
  if (*(this + 10) == v26)
  {
    v45 = (this + 40);
    if (*(this + 63) < 0)
    {
      v45 = *v45;
    }

    caulk::make_string(&v54, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v18, v45, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C60);
  }

  v27 = *(this + 12);
  if (*(this + 13) == v27)
  {
    v46 = (this + 40);
    if (*(this + 63) < 0)
    {
      v46 = *v46;
    }

    caulk::make_string(&v54, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v18, v46, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C78);
  }

  v28 = *(*(v26 + 16) + 56);
  v29 = *(*(v27 + 16) + 56);
  v30 = *(v28 + 8);
  v31 = *(v28 + 24);
  v32 = *(v28 + 40);
  *(v29 + 56) = *(v28 + 56);
  *(v29 + 40) = v32;
  *(v29 + 24) = v31;
  *(v29 + 8) = v30;
  v33 = *(this + 9);
  v34 = (*(this + 10) - v33) >> 5;
  if (*(this + 10) == v33)
  {
    v47 = (this + 40);
    if (*(this + 63) < 0)
    {
      v47 = *v47;
    }

    caulk::make_string(&v54, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v18, v47, v34, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C60);
  }

  if (v34 <= 1)
  {
    v48 = (this + 40);
    if (*(this + 63) < 0)
    {
      v48 = *v48;
    }

    caulk::make_string(&v54, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v18, v48, v34, 1);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C60);
  }

  v35 = *(this + 12);
  if (*(this + 13) == v35)
  {
    v49 = (this + 40);
    if (*(this + 63) < 0)
    {
      v49 = *v49;
    }

    caulk::make_string(&v54, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v18, v49, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C78);
  }

  *(*(*(v35 + 16) + 56) + 72) = *(*(*(v33 + 16) + 56) + 72);
  return result;
}

void sub_1C921AD68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 65) < 0)
  {
    operator delete(*(v35 - 88));
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.43486969e161;
  *a1 = xmmword_1C925F210;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox::~DivBox(AudioDSPGraph::Boxes::Arithmetic::Binary::DivBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_2,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_2>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(void x0_0, void *a1, _DWORD *a2, _DWORD *a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a1[1];
  *(v5 + 7) = *(a1 + 15);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (*a2 == 2)
  {
    if (*a3 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for arithmetic multiply box. must be 1.");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8334CE0);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of inputs for arithmetic multiply box. must be 2.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8334CC8);
}

void sub_1C921B030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox>::initialize(uint64_t a1)
{
  result = AudioDSPGraph::Box::initialize(a1);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v7 = (v5 - v4) >> 5;
  if (v7 != 2)
  {
    v10 = *(a1 + 104) - *(a1 + 96);
    goto LABEL_27;
  }

  v8 = *(a1 + 96);
  v9 = *(a1 + 104);
  v10 = v9 - v8;
  if (((v9 - v8) & 0x1FFFFFFFE0) != 0x20)
  {
    v7 = 2;
LABEL_27:
    caulk::make_string(&v32, "There must be two inputs and one output, instead of %u and %u.", v3, v7, v10 >> 5);
    AudioDSPGraph::ThrowException(1701602593, &v32, off_1E8334D58);
  }

  v6 = v5 - v4;
  if (v5 == v4)
  {
    v20 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v20 = *v20;
    }

    caulk::make_string(&v33, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v3, v20, v6 >> 5, 0);
    AudioDSPGraph::ThrowException(1919837985, &v33, off_1E8337C60);
  }

  if (((v5 - v4) >> 5) <= 1)
  {
    v21 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v21 = *v21;
    }

    caulk::make_string(&v33, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v3, v21, v6 >> 5, 1);
    AudioDSPGraph::ThrowException(1919837985, &v33, off_1E8337C60);
  }

  v11 = *(*(v4 + 16) + 120);
  v12 = *(v11 + 28);
  v13 = *(*(v4 + 48) + 120);
  if (v12 != *(v13 + 28))
  {
    v22 = *(*(*(AudioDSPGraph::Box::in(a1, 0) + 16) + 120) + 28);
    v23 = AudioDSPGraph::Box::in(a1, 1);
    caulk::make_string(&v31, "The inputs must have the same channel count, but have %u and %u.", v24, v22, *(*(*(v23 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, &v31, off_1E8334D70);
  }

  if (v9 == v8)
  {
    v25 = v10 >> 5;
    v26 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v26 = *v26;
    }

    caulk::make_string(&v33, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v3, v26, v25, 0);
    AudioDSPGraph::ThrowException(1919837985, &v33, off_1E8337C78);
  }

  if (v12 != *(*(*(v8 + 16) + 120) + 28))
  {
    v27 = *(*(*(AudioDSPGraph::Box::in(a1, 0) + 16) + 120) + 28);
    v28 = AudioDSPGraph::Box::out(a1, 0);
    caulk::make_string(&v30, "The inputs and output must have the same channel count, but have %u and %u.", v29, v27, *(*(*(v28 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, &v30, off_1E8334D88);
  }

  v14 = *(v11 + 8);
  v15 = *(v13 + 8);
  if (v14 == 1819304813 && v15 == 1819304813)
  {
    v19 = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox>::initialize(void)::kernel;
  }

  else if (v14 != 1819304813 || v15 == 1819304813)
  {
    if (v14 != 1819304813 && v15 == 1819304813)
    {
      v19 = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox>::initialize(void)::kernel;
    }

    else
    {
      v19 = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox>::initialize(void)::kernel;
    }
  }

  else
  {
    v19 = &AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox>::initialize(void)::kernel;
  }

  *(a1 + 768) = v19;
  return result;
}

void sub_1C921B374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox>::KernelImpl<(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox>::Domain)1,(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox>::Domain)1>::process(int a1, vDSP_Length __N, float *a3, float *a4, float *a5)
{
  __A.realp = a3;
  __A.imagp = &a3[__N];
  __B.realp = a4;
  __B.imagp = &a4[__N];
  v5.realp = a5;
  v5.imagp = &a5[__N];
  vDSP_zvmul(&__A, 1, &__B, 1, &v5, 1, __N, 1);
}

void AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox>::KernelImpl<(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox>::Domain)1,(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox>::Domain)0>::process(int a1, vDSP_Length __N, float *a3, const float *__B, float *a5)
{
  __A.realp = a3;
  __A.imagp = &a3[__N];
  v5.realp = a5;
  v5.imagp = &a5[__N];
  vDSP_zrvmul(&__A, 1, __B, 1, &v5, 1, __N);
}

void AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox>::KernelImpl<(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox>::Domain)0,(AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox>::Domain)1>::process(int a1, vDSP_Length __N, const float *a3, float *a4, float *a5)
{
  __A.realp = a4;
  __A.imagp = &a4[__N];
  v5.realp = a5;
  v5.imagp = &a5[__N];
  vDSP_zrvmul(&__A, 1, a3, 1, &v5, 1, __N);
}

uint64_t AudioDSPGraph::Boxes::Arithmetic::BinaryBoxBase<AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox>::process(AudioDSPGraph::Box *this, const char *a2)
{
  v3 = *(this + 9);
  v4 = (*(this + 10) - v3) >> 5;
  if (*(this + 10) == v3)
  {
    v36 = (this + 40);
    if (*(this + 63) < 0)
    {
      v36 = *v36;
    }

    caulk::make_string(&v54, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v36, v4, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C60);
  }

  if (v4 <= 1)
  {
    v37 = (this + 40);
    if (*(this + 63) < 0)
    {
      v37 = *v37;
    }

    caulk::make_string(&v54, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v37, v4, 1);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C60);
  }

  v5 = *(this + 12);
  if (*(this + 13) == v5)
  {
    v38 = (this + 40);
    if (*(this + 63) < 0)
    {
      v38 = *v38;
    }

    caulk::make_string(&v54, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v38, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C78);
  }

  v6 = *(*(*(v3 + 16) + 56) + 80);
  v7 = *(*(*(v3 + 48) + 56) + 80);
  if (*v6 != *v7)
  {
    v39 = *(*(*(AudioDSPGraph::Box::in(this, 0) + 16) + 120) + 28);
    v40 = AudioDSPGraph::Box::in(this, 1);
    caulk::make_string(&v53, "The inputs must have the same channel count, but have %u and %u.", v41, v39, *(*(*(v40 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, &v53, off_1E8334CF8);
  }

  v8 = *(*(*(v5 + 16) + 56) + 80);
  if (*v6 != *v8)
  {
    v42 = *(*(*(AudioDSPGraph::Box::in(this, 0) + 16) + 120) + 28);
    v43 = AudioDSPGraph::Box::out(this, 0);
    caulk::make_string(&v52, "The inputs and output must have the same channel count, but have %u and %u.", v44, v42, *(*(*(v43 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, &v52, off_1E8334D10);
  }

  v10 = (*(**(this + 96) + 8))(*(this + 96));
  v12 = v6[3];
  if (v12 < v10)
  {
    caulk::make_string(&v51, "The buffer passed for input 0 should be at least %u bytes, but is %u.", v11, v10, v12);
    AudioDSPGraph::ThrowException(1718449215, &v51, off_1E8334D28);
  }

  v13 = (*(**(this + 96) + 16))(*(this + 96), a2);
  v15 = v7[3];
  if (v15 < v13)
  {
    caulk::make_string(&v50, "The buffer passed for input 1 should be at least %u bytes, but is %u.", v14, v13, v15);
    AudioDSPGraph::ThrowException(1718449215, &v50, off_1E8334D40);
  }

  v16 = *v6;
  result = (*(**(this + 96) + 24))(*(this + 96), a2);
  if (v16)
  {
    v19 = result;
    v20 = v8 + 4;
    v21 = (v7 + 4);
    v22 = (v6 + 4);
    do
    {
      v24 = *v22;
      v22 += 2;
      v23 = v24;
      v25 = *v21;
      v21 += 2;
      result = (***(this + 96))(*(this + 96), a2, v23, v25, *v20);
      *(v20 - 1) = v19;
      v20 += 2;
      --v16;
    }

    while (v16);
  }

  v26 = *(this + 9);
  if (*(this + 10) == v26)
  {
    v45 = (this + 40);
    if (*(this + 63) < 0)
    {
      v45 = *v45;
    }

    caulk::make_string(&v54, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v18, v45, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C60);
  }

  v27 = *(this + 12);
  if (*(this + 13) == v27)
  {
    v46 = (this + 40);
    if (*(this + 63) < 0)
    {
      v46 = *v46;
    }

    caulk::make_string(&v54, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v18, v46, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C78);
  }

  v28 = *(*(v26 + 16) + 56);
  v29 = *(*(v27 + 16) + 56);
  v30 = *(v28 + 8);
  v31 = *(v28 + 24);
  v32 = *(v28 + 40);
  *(v29 + 56) = *(v28 + 56);
  *(v29 + 40) = v32;
  *(v29 + 24) = v31;
  *(v29 + 8) = v30;
  v33 = *(this + 9);
  v34 = (*(this + 10) - v33) >> 5;
  if (*(this + 10) == v33)
  {
    v47 = (this + 40);
    if (*(this + 63) < 0)
    {
      v47 = *v47;
    }

    caulk::make_string(&v54, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v18, v47, v34, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C60);
  }

  if (v34 <= 1)
  {
    v48 = (this + 40);
    if (*(this + 63) < 0)
    {
      v48 = *v48;
    }

    caulk::make_string(&v54, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v18, v48, v34, 1);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C60);
  }

  v35 = *(this + 12);
  if (*(this + 13) == v35)
  {
    v49 = (this + 40);
    if (*(this + 63) < 0)
    {
      v49 = *v49;
    }

    caulk::make_string(&v54, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v18, v49, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v54, off_1E8337C78);
  }

  *(*(*(v35 + 16) + 56) + 72) = *(*(*(v33 + 48) + 56) + 72) & 0x10 | *(*(*(v33 + 16) + 56) + 72);
  return result;
}

void sub_1C921BAF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 65) < 0)
  {
    operator delete(*(v35 - 88));
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 2.07081382e161;
  *a1 = xmmword_1C925F220;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox::~MultBox(AudioDSPGraph::Boxes::Arithmetic::Binary::MultBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_1,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_1>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(void x0_0, void *a1, _DWORD *a2, _DWORD *a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a1[1];
  *(v5 + 7) = *(a1 + 15);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (*a2 == 1)
  {
    if (*a3 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for DBGainBox. must be 1.");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8334CB0);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of inputs for DBGainBox. must be 1.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8334C98);
}

void sub_1C921BDB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::GainBox::GainBox(uint64_t a1, uint64_t a2)
{
  *__p = *a2;
  v5 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  AudioDSPGraph::Box::Box(a1, __p, 1u, 1u);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F48D0500;
  *(a1 + 764) = 1065353216;
  *(a1 + 768) = 0;
  *(a1 + 776) = 0x3F947AE147AE147BLL;
  *(a1 + 784) = 0x3F60624DD2F1A9FCLL;
  *(a1 + 792) = 0x3F80000000000000;
  *(a1 + 800) = 0;
  *(a1 + 804) = 257;
  return a1;
}

void sub_1C921BEE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator=(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v8 = v7;
      (*(*v3 + 24))(v3, v7);
    }

    else
    {
      v8 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v7 != a1)
  {
    v4 = v8;
    v5 = *(a1 + 24);
    if (v8 == v7)
    {
      if (v5 == a1)
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v7);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, a1);
        (*(v9[0] + 32))(v9);
      }

      else
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v5 == a1)
    {
      (*(*v5 + 24))(*(a1 + 24), v7);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v8;
      v8 = v7;
    }

    else
    {
      v8 = *(a1 + 24);
      *(a1 + 24) = v4;
    }
  }

  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v7);
  return a1;
}

void sub_1C921C274(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__split_buffer<std::pair<std::string,AudioComponentDescription>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 6;
      *(a1 + 16) = v2 - 6;
      if (*(v2 - 25) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<AudioComponentDescription,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AudioComponentDescription,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__function::__func<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_0,std::allocator<AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_0>,std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(void x0_0, void *a1, _DWORD *a2, _DWORD *a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a1[1];
  *(v5 + 7) = *(a1 + 15);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (*a2 == 1)
  {
    if (*a3 == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of outputs for GainBox. must be 1.");
    AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8334C80);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "wrong number of inputs for GainBox. must be 1.");
  AudioDSPGraph::ThrowException(1701602593, &__p, off_1E8334C68);
}

void sub_1C921C4CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::BoxRegistry::BoxRegistry(AudioDSPGraph::BoxRegistry *this)
{
  v8 = *MEMORY[0x1E69E9840];
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 1065353216;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "gain");
  v2 = xmmword_1C925F230;
  v3 = 0;
  v6[0] = &unk_1F48CCCD8;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "dbgn");
  v2 = xmmword_1C925F240;
  v3 = 0;
  v6[0] = &unk_1F48CCD20;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "amul");
  v2 = xmmword_1C925F220;
  v3 = 0;
  v6[0] = &unk_1F48CCD68;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "adiv");
  v2 = xmmword_1C925F210;
  v3 = 0;
  v6[0] = &unk_1F48CD110;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "amin");
  v2 = xmmword_1C925F200;
  v3 = 0;
  v6[0] = &unk_1F48CD4B8;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "amax");
  v2 = xmmword_1C925F1F0;
  v3 = 0;
  v6[0] = &unk_1F48CD7B8;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "adif");
  v2 = xmmword_1C925F1E0;
  v3 = 0;
  v6[0] = &unk_1F48CDAB8;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "asum");
  v2 = xmmword_1C925F1D0;
  v3 = 0;
  v6[0] = &unk_1F48CDE60;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "aabs");
  v2 = xmmword_1C925F190;
  v3 = 0;
  v6[0] = &unk_1F48CE208;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "vcgn");
  v2 = xmmword_1C925F250;
  v3 = 0;
  v6[0] = &unk_1F48CE4D0;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "copy");
  v2 = xmmword_1C925F260;
  v3 = 0;
  v6[0] = &unk_1F48CE518;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "sum");
  v2 = xmmword_1C925F270;
  v3 = 0;
  v6[0] = &unk_1F48CE560;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mix");
  v2 = xmmword_1C925F280;
  v3 = 0;
  v6[0] = &unk_1F48CE5A8;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "average");
  v2 = xmmword_1C925F290;
  v3 = 0;
  v6[0] = &unk_1F48CE5F0;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "src");
  v2 = xmmword_1C925F2A0;
  v3 = 0;
  v6[0] = &unk_1F48CE638;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "reblocker");
  v2 = xmmword_1C925F2B0;
  v3 = 0;
  v6[0] = &unk_1F48CE680;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "freqsrc");
  v2 = xmmword_1C925F2C0;
  v3 = 0;
  v6[0] = &unk_1F48CE6C8;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "fft");
  v2 = xmmword_1C925F2D0;
  v3 = 0;
  v6[0] = &unk_1F48CE710;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "join");
  v2 = xmmword_1C925F2E0;
  v3 = 0;
  v6[0] = &unk_1F48CE758;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "split");
  v2 = xmmword_1C925F2F0;
  v3 = 0;
  v6[0] = &unk_1F48CE7A0;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "chancopy");
  v2 = xmmword_1C925F300;
  v3 = 0;
  v6[0] = &unk_1F48CE7E8;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "delay");
  v2 = xmmword_1C925F310;
  v3 = 0;
  v6[0] = &unk_1F48CE830;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "dead");
  v2 = xmmword_1C925F1C0;
  v3 = 0;
  v6[0] = &unk_1F48CE878;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "constant");
  v2 = xmmword_1C925F320;
  v3 = 0;
  v6[0] = &unk_1F48CEB40;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "dbcontrol");
  v2 = xmmword_1C925F330;
  v3 = 0;
  v6[0] = &unk_1F48CEB88;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "denormalzero");
  v2 = xmmword_1C925F340;
  v3 = 0;
  v6[0] = &unk_1F48CEBD0;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mantissarandom");
  v2 = xmmword_1C925F350;
  v3 = 0;
  v6[0] = &unk_1F48CEC18;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "volumecurve");
  v2 = xmmword_1C925F360;
  v3 = 0;
  v6[0] = &unk_1F48CEC60;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "nfnp");
  v2 = xmmword_1C925F370;
  v3 = 0;
  v6[0] = &unk_1F48CECA8;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "parameter_smoothing");
  v2 = xmmword_1C925F380;
  v3 = 0;
  v6[0] = &unk_1F48CECF0;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "srlconverter");
  v2 = xmmword_1C925F390;
  v3 = 0;
  v6[0] = &unk_1F48CED38;
  v7 = v6;
  AudioDSPGraph::BoxRegistry::add(this, __p, &v2, v6);
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  AudioDSPGraph::BoxRegistry::BoxRegistry(void)::$_31::operator()<char const*,int,AudioDSPGraph::Boxes::CalculationBox::OperatorDomain,AudioDSPGraph::Boxes::CalculationBox::OperatorCodomain,AudioDSPGraph::Boxes::CalculationBox::Operator>(this, "parameter_add", 0x705F5F2Bu, 0, 0, 0);
}

void sub_1C921D8C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::~__value_func[abi:ne200100](&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::pair<std::string,AudioComponentDescription>>::__destroy_vector::operator()[abi:ne200100](&a19);
  std::__hash_table<std::__hash_value_type<AudioComponentDescription,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,std::__unordered_map_hasher<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,std::hash<AudioComponentDescription>,AudioDSPGraph::BoxRegistry::AudioComponentDescriptionEquality,true>,std::__unordered_map_equal<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,AudioDSPGraph::BoxRegistry::AudioComponentDescriptionEquality,std::hash<AudioComponentDescription>,true>,std::allocator<std::__hash_value_type<AudioComponentDescription,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>>>::~__hash_table(v20);
  std::__hash_table<std::__hash_value_type<std::string,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>>>>::~__hash_table(v19);
  _Unwind_Resume(a1);
}

void AudioDSPGraph::BoxRegistry::newBox(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = a5;
  v11 = std::__string_hash<char>::operator()[abi:ne200100](a3);
  v12 = a2[1];
  if (!*&v12)
  {
    goto LABEL_17;
  }

  v13 = v11;
  v14 = vcnt_s8(v12);
  v14.i16[0] = vaddlv_u8(v14);
  v15 = v14.u32[0];
  if (v14.u32[0] > 1uLL)
  {
    v16 = v11;
    if (v11 >= *&v12)
    {
      v16 = v11 % *&v12;
    }
  }

  else
  {
    v16 = (*&v12 - 1) & v11;
  }

  v17 = *(*a2 + 8 * v16);
  if (!v17 || (v18 = *v17) == 0)
  {
LABEL_17:
    *a1 = 0;
    return;
  }

  while (1)
  {
    v19 = v18[1];
    if (v13 == v19)
    {
      break;
    }

    if (v15 > 1)
    {
      if (v19 >= *&v12)
      {
        v19 %= *&v12;
      }
    }

    else
    {
      v19 &= *&v12 - 1;
    }

    if (v19 != v16)
    {
      goto LABEL_17;
    }

LABEL_16:
    v18 = *v18;
    if (!v18)
    {
      goto LABEL_17;
    }
  }

  if (!AudioDSPGraph::IR::BoxAlias::operator==(v18 + 2, a3))
  {
    goto LABEL_16;
  }

  *__p = *a4;
  v22 = *(a4 + 16);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(a1, v18[8], __p, v6, a6);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C921DB54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v7 = a4;
  v6 = a5;
  if (!a2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a2 + 48))(a2, a3, &v7, &v6);
}

void AudioDSPGraph::BoxRegistry::newBox(uint64_t *a1, uint64_t a2, unint64_t a3, AudioComponentDescription *inDesc, uint64_t a5, int a6, int a7)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_21;
  }

  v8 = inDesc->componentSubType + inDesc->componentType + inDesc->componentManufacturer;
  v9 = vcnt_s8(a3);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = inDesc->componentSubType + inDesc->componentType + inDesc->componentManufacturer;
    if (v8 >= a3)
    {
      v10 = v8 % a3;
    }
  }

  else
  {
    v10 = (a3 - 1) & v8;
  }

  v11 = *(a2 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_21:
    if (AudioComponentFindNext(0, inDesc))
    {
      operator new();
    }

    *a1 = 0;
    return;
  }

  while (1)
  {
    v13 = v12[1];
    if (v8 == v13)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= a3)
      {
        v13 %= a3;
      }
    }

    else
    {
      v13 &= a3 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_21;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  if (v12[2] != *&inDesc->componentType || *(v12 + 6) != inDesc->componentManufacturer)
  {
    goto LABEL_20;
  }

  *v15 = *a5;
  v16 = *(a5 + 16);
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  std::function<std::unique_ptr<AudioDSPGraph::Box> ()(std::string,unsigned int,unsigned int)>::operator()(a1, v12[8], v15, a6, a7);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_1C921DE18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Buffer::print(uint64_t result, void *a2, int a3, uint64_t a4)
{
  if (a3 >= 5)
  {
    v4 = a4;
    v6 = result;
    (*(*result + 32))(result, a2, a4, 1);
    AudioDSPGraph::printi(a2, v4 + 4, "num buffers %u\n", *(v6 + 96));
  }

  return result;
}

AudioDSPGraph::Buffer *AudioDSPGraph::Buffer::copyFrom(AudioDSPGraph::Buffer *this, AudioDSPGraph::Buffer *a2)
{
  if (a2 != this)
  {
    v2 = this;
    v3 = *(a2 + 10);
    v4 = *(this + 10);
    if (*v3 != *v4)
    {
      std::string::basic_string[abi:ne200100]<0>(v12, "Buffer::copyFrom, fromABL->mNumberBuffers != toABL->mNumberBuffers");
      AudioDSPGraph::ThrowException(1718444833, v12, off_1E83354D8);
    }

    v5 = *(this + 24);
    if (v5)
    {
      v6 = 0;
      v7 = (v4 + 4);
      v8 = v3 + 3;
      do
      {
        v9 = *v8;
        if (v9 > *(v2 + 25))
        {
          std::string::basic_string[abi:ne200100]<0>(v11, "Buffer::copyFrom, fromABL->mBuffers[i].mDataByteSize > mByteCapacity");
          AudioDSPGraph::ThrowException(1718444833, v11, off_1E83354F0);
        }

        v10 = *(v8 + 1);
        this = *v7;
        if (v10 != *v7)
        {
          this = memcpy(this, v10, v9);
          LODWORD(v9) = *v8;
          v5 = *(v2 + 24);
        }

        *(v7 - 1) = v9;
        ++v6;
        v7 += 2;
        v8 += 4;
      }

      while (v6 < v5);
    }
  }

  return this;
}

void sub_1C921E024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::CalculationBox::setProperty(uint64_t this, int a2, unsigned int __val, unsigned int a4, int a5, double *a6)
{
  if (a2 > 1936274225)
  {
    if (a2 > 1969828149)
    {
      if (a2 != 1969828150 && a2 != 1969829428)
      {
        v6 = 13106;
        goto LABEL_13;
      }
    }

    else if (a2 != 1936274226 && a2 != 1936274996)
    {
      v6 = 12344;
LABEL_13:
      v7 = v6 | 0x75690000;
      goto LABEL_16;
    }

LABEL_17:
    if (__val != 1 || *(this + 768) != 1)
    {
      std::to_string(&v22, __val);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v23, "CalculationBox can't set property in scope ", &v22);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v24, &v23, " with property ID ");
      std::to_string(&v21, a2);
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v21;
      }

      else
      {
        v13 = v21.__r_.__value_.__r.__words[0];
      }

      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v21.__r_.__value_.__l.__size_;
      }

      v15 = std::string::append(&v24, v13, size);
      v20 = *v15;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      AudioDSPGraph::ThrowException(-10866, &v20, off_1E83355C8);
    }

    v8 = *(this + 784);
    if (a4 >= ((*(this + 792) - v8) >> 4))
    {
      std::to_string(&v22, a4);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v23, "CalculationBox can't set input scope element ", &v22);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v24, &v23, " with property ID ");
      std::to_string(&v21, a2);
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v21;
      }

      else
      {
        v17 = v21.__r_.__value_.__r.__words[0];
      }

      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v18 = v21.__r_.__value_.__l.__size_;
      }

      v19 = std::string::append(&v24, v17, v18);
      v25 = *v19;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      AudioDSPGraph::ThrowException(-10877, &v25, off_1E83355B0);
    }

    v9 = v8 + 16 * a4;
    if (a2 > 1936274225)
    {
      if (a2 <= 1969828149)
      {
        if (a2 != 1936274226)
        {
          if (a2 != 1936274996)
          {
            if (a2 != 1969827896)
            {
              return this;
            }

            if (a5 == 1)
            {
              this = 0;
              v10 = *a6;
LABEL_56:
              *v9 = 0;
              *(v9 + 8) = v10;
              return this;
            }

            return 561211770;
          }

          goto LABEL_36;
        }

        if (a5 == 4)
        {
          this = 0;
          v10 = *a6;
          goto LABEL_56;
        }

        return 561211770;
      }

      if (a2 == 1969828150)
      {
        if (a5 == 2)
        {
          this = 0;
          v10 = *a6;
          goto LABEL_56;
        }

        return 561211770;
      }

      if (a2 != 1969828658)
      {
        if (a2 != 1969829428)
        {
          return this;
        }

LABEL_36:
        if (a5 == 8)
        {
          this = 0;
          v10 = *a6;
          goto LABEL_56;
        }

        return 561211770;
      }

LABEL_42:
      if (a5 == 4)
      {
        this = 0;
        v10 = *a6;
        goto LABEL_56;
      }

      return 561211770;
    }

    if (a2 <= 1718367795)
    {
      if (a2 == 6)
      {
        goto LABEL_42;
      }

      if (a2 != 1718367026)
      {
        return this;
      }

      if (a5 != 4)
      {
        return 561211770;
      }

      this = 0;
      v11 = *a6;
    }

    else
    {
      if (a2 != 1718367796)
      {
        if (a2 == 1936273464)
        {
          if (a5 == 1)
          {
            this = 0;
            v10 = *a6;
            goto LABEL_56;
          }
        }

        else
        {
          if (a2 != 1936273718)
          {
            return this;
          }

          if (a5 == 2)
          {
            this = 0;
            v10 = *a6;
            goto LABEL_56;
          }
        }

        return 561211770;
      }

      if (a5 != 8)
      {
        return 561211770;
      }

      this = 0;
      v11 = *a6;
    }

    *v9 = 1;
    *(v9 + 8) = v11;
    return this;
  }

  if (a2 > 1718367795)
  {
    if (a2 != 1718367796 && a2 != 1936273464)
    {
      v7 = 1936273718;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (a2 == 6)
  {
    goto LABEL_17;
  }

  v7 = 1718367026;
LABEL_16:
  if (a2 == v7)
  {
    goto LABEL_17;
  }

  return AudioDSPGraph::Box::setProperty(this, a2, __val, a4, a5, a6);
}

void sub_1C921E478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 49) < 0)
  {
    operator delete(*(v33 - 72));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(std::string *a1, char *__s, std::string *a3)
{
  v6 = strlen(__s);
  v7 = std::string::insert(a3, 0, __s, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

double AudioDSPGraph::Boxes::CalculationBox::getProperty(AudioDSPGraph::Boxes::CalculationBox *this, uint64_t a2, uint64_t __val, uint64_t a4, unsigned int *a5, __n128 *a6, __n128 a7)
{
  v9 = a4;
  v10 = a2;
  if (a2 <= 1936274225)
  {
    if (a2 <= 1718367795)
    {
      if (a2 == 6)
      {
        goto LABEL_17;
      }

      v12 = 1718367026;
    }

    else
    {
      if (a2 == 1718367796 || a2 == 1936273464)
      {
        goto LABEL_17;
      }

      v12 = 1936273718;
    }
  }

  else
  {
    if (a2 > 1969828149)
    {
      if (a2 == 1969828150 || a2 == 1969829428)
      {
        goto LABEL_17;
      }

      v11 = 13106;
    }

    else
    {
      if (a2 == 1936274226 || a2 == 1936274996)
      {
        goto LABEL_17;
      }

      v11 = 12344;
    }

    v12 = v11 | 0x75690000;
  }

  if (a2 != v12)
  {

    *&result = AudioDSPGraph::Box::getProperty(this, a2, __val, a4, a5, a6, a7).n128_u64[0];
    return result;
  }

LABEL_17:
  if (__val != 2)
  {
    if (__val == 1 && *(this + 192) == 1)
    {
      v13 = *(this + 98);
      if (a4 >= ((*(this + 99) - v13) >> 4))
      {
        std::to_string(&v33, a4);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v34, "CalculationBox can't get input scope element ", &v33);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v30, &v34, " with property ID ");
        std::to_string(&v32, v10);
        if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v32;
        }

        else
        {
          v20 = v32.__r_.__value_.__r.__words[0];
        }

        if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v32.__r_.__value_.__l.__size_;
        }

        v22 = std::string::append(&v30, v20, size);
        v35 = *v22;
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        AudioDSPGraph::ThrowException(-10877, &v35, off_1E8335568);
      }

      AudioDSPGraph::Boxes::CalculationBox::getValueAsProperty((v13 + 16 * a4), a2, a5, a6, a7.n128_f64[0]);
      return result;
    }

LABEL_30:
    std::to_string(&v33, __val);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v34, "CalculationBox can't get property in scope ", &v33);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v30, &v34, " with property ID ");
    std::to_string(&v32, v10);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v32;
    }

    else
    {
      v17 = v32.__r_.__value_.__r.__words[0];
    }

    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v18 = v32.__r_.__value_.__l.__size_;
    }

    v19 = std::string::append(&v30, v17, v18);
    v27 = *v19;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    AudioDSPGraph::ThrowException(-10866, &v27, off_1E8335598);
  }

  *&v15 = *(this + 193);
  if (LODWORD(v15) != 1)
  {
    goto LABEL_30;
  }

  AudioDSPGraph::Boxes::CalculationBox::calculate(&v30, this, a4, v15);
  if ((v31 & 1) == 0)
  {
    data = v30.__r_.__value_.__l.__data_;
    std::to_string(&v32, v9);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v33, "CalculationBox can't get output scope element ", &v32);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v34, &v33, " with property ID ");
    std::to_string(&v28, v10);
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v28;
    }

    else
    {
      v24 = v28.__r_.__value_.__r.__words[0];
    }

    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v25 = v28.__r_.__value_.__l.__size_;
    }

    v26 = std::string::append(&v34, v24, v25);
    v29 = *v26;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    AudioDSPGraph::ThrowException(data, &v29, off_1E8335580);
  }

  AudioDSPGraph::Boxes::CalculationBox::getValueAsProperty(&v30, v10, a5, a6, v16);
  return result;
}

void sub_1C921E928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v41 - 81) < 0)
  {
    operator delete(*(v41 - 104));
  }

  if (*(v41 - 105) < 0)
  {
    operator delete(*(v41 - 128));
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if ((a35 & 1) == 0)
  {
    AudioDSPGraph::Error::~Error(&a28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::CalculationBox::getValueAsProperty(double *a1, int a2, int *a3, _BYTE *a4, double a5)
{
  if (a2 > 1936274225)
  {
    if (a2 <= 1969828149)
    {
      if (a2 != 1936274226)
      {
        v5 = 1936274996;
        if (a2 != 1936274996)
        {
          if (a2 != 1969827896)
          {
            return v5;
          }

LABEL_27:
          v10 = *a3;
          if (*a3)
          {
            if (*a1 == 1)
            {
              v10 = a1[1];
            }

            else if (!*a1)
            {
              LOBYTE(v10) = *(a1 + 8);
            }

            *a4 = v10;
            v12 = 1;
            goto LABEL_62;
          }

          return 561211770;
        }

        v6 = *a3;
        if (v6 >= 8)
        {
          v7 = *a1;
          if (v7 != 1)
          {
LABEL_37:
            if (!v7)
            {
              v6 = *(a1 + 1);
            }

            goto LABEL_55;
          }

          v6 = a1[1];
LABEL_55:
          *a4 = v6;
LABEL_58:
          v12 = 8;
LABEL_62:
          v5 = 0;
          *a3 = v12;
          return v5;
        }

        return 561211770;
      }

      v8 = *a3;
      if (*a3 < 4)
      {
        return 561211770;
      }

      v9 = *a1;
      if (v9 != 1)
      {
        goto LABEL_45;
      }

      v8 = a1[1];
      goto LABEL_60;
    }

    if (a2 != 1969828150)
    {
      v5 = 1969828658;
      if (a2 != 1969828658)
      {
        if (a2 == 1969829428)
        {
          v6 = *a3;
          if (v6 >= 8)
          {
            v7 = *a1;
            if (v7 != 1)
            {
              goto LABEL_37;
            }

            v6 = a1[1];
            goto LABEL_55;
          }

          return 561211770;
        }

        return v5;
      }

LABEL_24:
      v8 = *a3;
      if (*a3 < 4)
      {
        return 561211770;
      }

      v9 = *a1;
      if (v9 != 1)
      {
LABEL_45:
        if (!v9)
        {
          v8 = *(a1 + 2);
        }

        goto LABEL_60;
      }

      v8 = a1[1];
LABEL_60:
      *a4 = v8;
      goto LABEL_61;
    }

LABEL_31:
    v11 = *a3;
    if (*a3 >= 2)
    {
      if (*a1 == 1)
      {
        v11 = a1[1];
      }

      else if (!*a1)
      {
        LOWORD(v11) = *(a1 + 4);
      }

      *a4 = v11;
      v12 = 2;
      goto LABEL_62;
    }

    return 561211770;
  }

  v5 = 1718367795;
  if (a2 > 1718367795)
  {
    if (a2 == 1718367796)
    {
      if (*a3 >= 8)
      {
        if (*a1 == 1)
        {
          a5 = a1[1];
        }

        else if (!*a1)
        {
          a5 = *(a1 + 1);
        }

        *a4 = a5;
        goto LABEL_58;
      }

      return 561211770;
    }

    v5 = 1936273464;
    if (a2 == 1936273464)
    {
      goto LABEL_27;
    }

    if (a2 != 1936273718)
    {
      return v5;
    }

    goto LABEL_31;
  }

  if (a2 == 6)
  {
    goto LABEL_24;
  }

  if (a2 == 1718367026)
  {
    if (*a3 < 4)
    {
      return 561211770;
    }

    if (*a1 == 1)
    {
      *&a5 = a1[1];
    }

    else if (!*a1)
    {
      *&a5 = *(a1 + 1);
    }

    *a4 = LODWORD(a5);
LABEL_61:
    v12 = 4;
    goto LABEL_62;
  }

  return v5;
}

void AudioDSPGraph::Boxes::CalculationBox::calculate(AudioDSPGraph::Boxes::CalculationBox *this@<X0>, uint64_t a2@<X1>, int a3@<W2>, double a4@<X8>)
{
  if (a3)
  {
    LODWORD(v31) = -10877;
    *(&v31 + 1) = off_1E83355E0;
    v32 = 0;
    *this = v31;
    *(this + 2) = 0;
    v33 = 0;
    *(this + 6) = 0;
    *(this + 32) = 0;
    AudioDSPGraph::Error::~Error(&v31);
    return;
  }

  v6 = *(a2 + 784);
  switch(*(a2 + 776))
  {
    case 1:
      if (*v6 == 1)
      {
        if (v6[16] == 1)
        {
          v26 = *(v6 + 3);
        }

        else
        {
          if (v6[16])
          {
            goto LABEL_80;
          }

          v26 = *(v6 + 3);
        }

        v30 = *(v6 + 1) - v26;
        goto LABEL_92;
      }

      if (*v6)
      {
        goto LABEL_93;
      }

      v20 = *(v6 + 1);
      if (v6[16] == 1)
      {
        v30 = v20 - *(v6 + 3);
        goto LABEL_92;
      }

      if (!v6[16])
      {
        a4 = 0.0;
        v4 = v20 - *(v6 + 3);
      }

      goto LABEL_93;
    case 2:
      v13 = (v6 + 16);
      goto LABEL_17;
    case 3:
      if (*v6 == 1)
      {
        v21 = *(v6 + 1);
        *&a4 = v6[16];
        if (LODWORD(a4) == 1)
        {
          v23 = *(v6 + 3);
          if (v23 != 0.0)
          {
            goto LABEL_86;
          }
        }

        else
        {
          if (v6[16])
          {
            v4 = 1;
            goto LABEL_102;
          }

          v22 = *(v6 + 3);
          if (v22)
          {
            v23 = v22;
LABEL_86:
            v29 = v21 / v23;
            goto LABEL_87;
          }
        }

        if (v21 <= 0.0)
        {
          if (v21 >= 0.0)
          {
            a4 = NAN;
          }

          else
          {
            a4 = -INFINITY;
          }

          goto LABEL_101;
        }

LABEL_100:
        a4 = INFINITY;
        goto LABEL_101;
      }

      if (*v6)
      {
        goto LABEL_102;
      }

      v17 = *(v6 + 1);
      if (v6[16] == 1)
      {
        v28 = *(v6 + 3);
        if (v28 == 0.0)
        {
          goto LABEL_95;
        }

        v29 = v17 / v28;
LABEL_87:
        a4 = v29;
        goto LABEL_101;
      }

      if (v6[16])
      {
        goto LABEL_102;
      }

      v18 = *(v6 + 3);
      if (v18)
      {
        v4 = 0;
        *&a4 = v17 / v18;
        goto LABEL_102;
      }

LABEL_95:
      if (v17 > 0)
      {
        goto LABEL_100;
      }

      a4 = -INFINITY;
      if (!v17)
      {
        a4 = NAN;
      }

LABEL_101:
      v4 = 1;
LABEL_102:
      *this = v4;
LABEL_78:
      *(this + 1) = a4;
LABEL_79:
      *(this + 32) = 1;
      return;
    case 4:
      LOBYTE(v31) = 0;
      *(&v31 + 1) = -1;
      v13 = &v31;
LABEL_17:
      *this = AudioDSPGraph::Boxes::CalculationBox::Value::operator*(v6, v13);
      *(this + 1) = v14;
      goto LABEL_79;
    case 5:
      LODWORD(a4) = *v6;
      if (*v6)
      {
        if (LODWORD(a4) == 1 && *(v6 + 1) == 0.0)
        {
          LOBYTE(a4) = 0;
          goto LABEL_76;
        }

        goto LABEL_69;
      }

      a4 = *(v6 + 1);
      if (a4 != 0.0)
      {
        goto LABEL_69;
      }

      goto LABEL_76;
    case 6:
      LODWORD(a4) = *v6;
      if (*v6)
      {
        if (LODWORD(a4) != 1 || *(v6 + 1) == 0.0)
        {
LABEL_69:
          if (v6[16] == 1)
          {
            v27 = *(v6 + 3) == 0.0;
          }

          else
          {
            if (v6[16])
            {
              goto LABEL_76;
            }

            v27 = *(v6 + 3) == 0;
          }

          LOBYTE(a4) = !v27;
LABEL_76:
          *&a4 = LOBYTE(a4) & 1;
LABEL_77:
          *this = 0;
          goto LABEL_78;
        }
      }

      else
      {
        a4 = *(v6 + 1);
        if (a4 == 0.0)
        {
          goto LABEL_69;
        }
      }

      LOBYTE(a4) = 1;
      goto LABEL_76;
    case 7:
      if (*v6 == 1)
      {
        v19 = *(v6 + 1) == 0.0;
      }

      else
      {
        if (*v6)
        {
          goto LABEL_58;
        }

        v19 = *(v6 + 1) == 0;
      }

      LOBYTE(a4) = !v19;
LABEL_58:
      LOBYTE(a4) = ~LOBYTE(a4);
      goto LABEL_76;
    case 8:
      v16 = *v6;
      goto LABEL_49;
    case 9:
      v11 = AudioDSPGraph::Boxes::CalculationBox::Value::operator==(v6, (v6 + 16), SLOBYTE(a4));
      goto LABEL_15;
    case 0xA:
      v12 = AudioDSPGraph::Boxes::CalculationBox::Value::operator==(v6, (v6 + 16), SLOBYTE(a4));
      goto LABEL_47;
    case 0xB:
      v12 = AudioDSPGraph::Boxes::CalculationBox::Value::operator<(v6, (v6 + 16), SLOBYTE(a4));
      goto LABEL_47;
    case 0xC:
      v11 = AudioDSPGraph::Boxes::CalculationBox::Value::operator>(v6, (v6 + 16), SLOBYTE(a4));
      goto LABEL_15;
    case 0xD:
      v12 = AudioDSPGraph::Boxes::CalculationBox::Value::operator>(v6, (v6 + 16), SLOBYTE(a4));
LABEL_47:
      *&a4 = !v12;
      goto LABEL_77;
    case 0xE:
      v11 = AudioDSPGraph::Boxes::CalculationBox::Value::operator<(v6, (v6 + 16), SLOBYTE(a4));
LABEL_15:
      *&a4 = v11;
      goto LABEL_77;
    case 0xF:
      v8 = v6 + 16;
      v9 = (v6 + 16);
      v10 = *(a2 + 784);
      goto LABEL_19;
    case 0x10:
      v8 = v6 + 16;
      v9 = *(a2 + 784);
      v10 = (v6 + 16);
LABEL_19:
      if (AudioDSPGraph::Boxes::CalculationBox::Value::operator<(v9, v10, SLOBYTE(a4)))
      {
        v15 = v8;
      }

      else
      {
        v15 = v6;
      }

      v16 = *v15;
LABEL_49:
      *this = v16;
      goto LABEL_79;
    default:
      if (*v6 == 1)
      {
        v24 = *(v6 + 1);
        if (v6[16] == 1)
        {
          v25 = *(v6 + 3);
        }

        else
        {
          if (v6[16])
          {
LABEL_80:
            *&a4 = 1;
            goto LABEL_93;
          }

          v25 = *(v6 + 3);
        }
      }

      else
      {
        if (*v6)
        {
          goto LABEL_93;
        }

        v7 = *(v6 + 1);
        if (v6[16] != 1)
        {
          if (!v6[16])
          {
            a4 = 0.0;
            v4 = *(v6 + 3) + v7;
          }

          goto LABEL_93;
        }

        v24 = *(v6 + 3);
        v25 = v7;
      }

      v30 = v24 + v25;
LABEL_92:
      v4 = *&v30;
      *&a4 = 1;
LABEL_93:
      *this = a4;
      *(this + 1) = v4;
      goto LABEL_79;
  }
}

uint64_t AudioDSPGraph::Boxes::CalculationBox::Value::operator*(uint64_t result, _BYTE *a2)
{
  if (*result == 1)
  {
    if (*a2 != 1 && *a2)
    {
      return 1;
    }

    return 1;
  }

  if (*result)
  {
    return result;
  }

  if (*a2 == 1)
  {
    return 1;
  }

  if (!*a2)
  {
    return 0;
  }

  return result;
}

BOOL AudioDSPGraph::Boxes::CalculationBox::Value::operator==@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL a3@<W8>)
{
  if (*a1 != 1)
  {
    if (*a1)
    {
      return a3;
    }

    v3 = *(a1 + 8);
    if (*a2 != 1)
    {
      if (*a2)
      {
        return a3;
      }

      return *(a2 + 8) == v3;
    }

    v5 = *(a2 + 8);
    v6 = v3;
    return v5 == v6;
  }

  v5 = *(a1 + 8);
  if (*a2 != 1)
  {
    if (*a2)
    {
      return a3;
    }

    v6 = *(a2 + 8);
    return v5 == v6;
  }

  return *(a2 + 8) == v5;
}

BOOL AudioDSPGraph::Boxes::CalculationBox::Value::operator<@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL a3@<W8>)
{
  if (*a1 != 1)
  {
    if (*a1)
    {
      return a3;
    }

    v3 = *(a1 + 8);
    if (*a2 == 1)
    {
      v4 = *(a2 + 8) <= v3;
    }

    else
    {
      if (*a2)
      {
        return a3;
      }

      v4 = *(a2 + 8) <= v3;
    }

    return !v4;
  }

  v5 = *(a1 + 8);
  if (*a2 == 1)
  {
    v4 = *(a2 + 8) <= v5;
    return !v4;
  }

  if (!*a2)
  {
    return v5 < *(a2 + 8);
  }

  return a3;
}

BOOL AudioDSPGraph::Boxes::CalculationBox::Value::operator>@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL a3@<W8>)
{
  if (*a1 != 1)
  {
    if (*a1)
    {
      return a3;
    }

    v3 = *(a1 + 8);
    if (*a2 != 1)
    {
      if (!*a2)
      {
        return *(a2 + 8) < v3;
      }

      return a3;
    }

    return *(a2 + 8) < v3;
  }

  v4 = *(a1 + 8);
  if (*a2 == 1)
  {
    return *(a2 + 8) < v4;
  }

  if (!*a2)
  {
    return v4 > *(a2 + 8);
  }

  return a3;
}

unint64_t AudioDSPGraph::Boxes::CalculationBox::getPropertyInfo(AudioDSPGraph::Boxes::CalculationBox *this, int a2, int a3)
{
  v3 = 1;
  if (a2 <= 1936274225)
  {
    if (a2 <= 1718367795)
    {
      if (a2 != 6 && a2 != 1718367026)
      {
        goto LABEL_32;
      }

      goto LABEL_19;
    }

    if (a2 != 1718367796)
    {
      if (a2 == 1936273464)
      {
        goto LABEL_20;
      }

      if (a2 != 1936273718)
      {
        goto LABEL_32;
      }

      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (a2 > 1969828149)
  {
    if (a2 == 1969828150)
    {
      goto LABEL_16;
    }

    if (a2 == 1969828658)
    {
LABEL_19:
      v3 = 4;
      goto LABEL_20;
    }

    if (a2 != 1969829428)
    {
LABEL_32:
      PropertyInfo = AudioDSPGraph::Box::getPropertyInfo(this, a2, a3);
      v4 = PropertyInfo;
      v7 = PropertyInfo & 0xFFFFFFFF00000000;
      return v7 | v4;
    }

LABEL_15:
    v3 = 8;
    goto LABEL_20;
  }

  if (a2 == 1936274226)
  {
    goto LABEL_19;
  }

  if (a2 == 1936274996)
  {
LABEL_16:
    v3 = 2;
    goto LABEL_20;
  }

  if (a2 != 1969827896)
  {
    goto LABEL_32;
  }

LABEL_20:
  v4 = -10866;
  if (a3 == 2)
  {
    v7 = 0;
    if (*(this + 193) == 1)
    {
      v4 = v3;
    }

    else
    {
      v4 = -10866;
    }
  }

  else if (a3 == 1)
  {
    v5 = *(this + 192);
    v6 = v5 == 1;
    if (v5 == 1)
    {
      v4 = v3;
    }

    else
    {
      v4 = -10866;
    }

    if (v6)
    {
      v7 = 0x100000000;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 | v4;
}

double AudioDSPGraph::Boxes::CalculationBox::desc@<D0>(AudioDSPGraph::Boxes::CalculationBox *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 191);
  *a2 = 1668183148;
  *(a2 + 4) = v2;
  *&result = 1633841016;
  *(a2 + 8) = 1633841016;
  *(a2 + 16) = 0;
  return result;
}

uint64_t AudioDSPGraph::Boxes::CalculationBox::getParameterInfo@<X0>(uint64_t this@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (!a3)
  {
    if (a2 == 2)
    {
      if (!*(this + 772))
      {
        *(a4 + 48) = 0;
        strcpy(a4, "output parameter");
        *(a4 + 17) = unk_1C925F5B9;
        *(a4 + 18) = unk_1C925F5BA;
        *(a4 + 20) = unk_1C925F5BC;
        *(a4 + 24) = unk_1C925F5C0;
        *(a4 + 32) = xmmword_1C925F5C8;
        *(a4 + 56) = 0;
        *(a4 + 64) = 0;
        *(a4 + 72) = 0;
        *(a4 + 80) = 26;
        *(a4 + 84) = -2.84809454e-306;
        v6 = 0x4000000000000000;
        goto LABEL_12;
      }
    }

    else if (a2 == 1 && !*(this + 768))
    {
      *(a4 + 48) = 0;
      strcpy(a4, "input parameter");
      *(a4 + 16) = unk_1C925F580;
      *(a4 + 32) = xmmword_1C925F590;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 80) = 26;
      *(a4 + 84) = -2.84809454e-306;
      v6 = 0xC000000000000000;
LABEL_12:
      *(a4 + 92) = v6;
      v4 = 1;
      goto LABEL_10;
    }

    v4 = 0;
    v5 = -10866;
    goto LABEL_9;
  }

  v4 = 0;
  v5 = 1869640255;
LABEL_9:
  *a4 = v5;
LABEL_10:
  *(a4 + 104) = v4;
  return this;
}

uint64_t AudioDSPGraph::Boxes::CalculationBox::getParameterList@<X0>(uint64_t this@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  if (a2 == 2)
  {
    if (!*(this + 772))
    {
      v5 = 0;
      v3 = &v5;
      a3[1] = 0;
      a3[2] = 0;
      *a3 = 0;
      v4 = &v5;
LABEL_8:
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a3, v4, v3 + 1, 1uLL);
    }
  }

  else if (a2 == 1 && !*(this + 768))
  {
    v6 = 0;
    v3 = &v6;
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    v4 = &v6;
    goto LABEL_8;
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return this;
}

void sub_1C921F624(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Boxes::CalculationBox::getParameter(AudioDSPGraph::Boxes::CalculationBox *this@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>, float a6@<S0>)
{
  v28 = a3;
  v29 = a2;
  v27 = a4;
  if (!a2)
  {
    if (a3 == 2)
    {
      *&v10 = *(this + 193);
      if (!LODWORD(v10))
      {
        AudioDSPGraph::Boxes::CalculationBox::calculate(&v19, this, a4, v10);
        if (v22 != 1)
        {
          v30 = v19;
          v15 = v20;
          v20 = 0;
          v31 = v15;
          LODWORD(v15) = v21;
          v21 = 0;
          v32 = v15;
          AudioDSPGraph::Error::saveDescription<unsigned int &,unsigned int &>(&v30, "CalculationBox can't get output scope element {} with parameter ID {}", &v27, &v29);
          v23 = v30;
          v16 = v31;
          v31 = 0;
          v17 = v32;
          v32 = 0;
          AudioDSPGraph::Error::~Error(&v30);
          v26 = 0;
          *a5 = v23;
          v24 = 0;
          *(a5 + 16) = v16;
          v25 = 0;
          *(a5 + 24) = v17;
          *(a5 + 32) = 0;
          AudioDSPGraph::Error::~Error(&v23);
          v14 = &v19;
          goto LABEL_14;
        }

        a6 = *&v19;
        v23 = v19;
        if (v19 != 1)
        {
          if (!v19)
          {
            v9 = *(&v23 + 1);
            goto LABEL_20;
          }

LABEL_26:
          *a5 = a6;
          *(a5 + 32) = 1;
          return;
        }

        v18 = *(&v23 + 1);
LABEL_25:
        a6 = v18;
        goto LABEL_26;
      }
    }

    else if (a3 == 1 && !*(this + 192))
    {
      v7 = *(this + 98);
      if (a4 < ((*(this + 99) - v7) >> 4))
      {
        v8 = v7 + 16 * a4;
        if (*v8 != 1)
        {
          if (!*v8)
          {
            v9 = *(v8 + 8);
LABEL_20:
            a6 = v9;
            goto LABEL_26;
          }

          goto LABEL_26;
        }

        v18 = *(v8 + 8);
        goto LABEL_25;
      }

      LODWORD(v23) = -10877;
      *(&v23 + 1) = off_1E8335508;
      v24 = 0;
      v25 = 0;
      v11 = "CalculationBox can't get input scope element {} with parameter ID {}";
      v12 = &v27;
LABEL_12:
      AudioDSPGraph::Error::saveDescription<unsigned int &,unsigned int &>(&v23, v11, v12, &v29);
      *a5 = v23;
      v13 = v24;
      v24 = 0;
      *(a5 + 16) = v13;
      LODWORD(v13) = v25;
      v25 = 0;
      *(a5 + 24) = v13;
      goto LABEL_13;
    }

    LODWORD(v23) = -10866;
    *(&v23 + 1) = off_1E8335520;
    v24 = 0;
    v25 = 0;
    v11 = "CalculationBox can't get parameter in scope {} with parameter ID {}";
    v12 = &v28;
    goto LABEL_12;
  }

  LODWORD(v23) = -10878;
  *(&v23 + 1) = off_1E8334BA8;
  v24 = 0;
  *a5 = v23;
  *(a5 + 16) = 0;
  v25 = 0;
  *(a5 + 24) = 0;
LABEL_13:
  *(a5 + 32) = 0;
  v14 = &v23;
LABEL_14:
  AudioDSPGraph::Error::~Error(v14);
}

uint64_t AudioDSPGraph::Error::saveDescription<unsigned int &,unsigned int &>(uint64_t a1, uint64_t a2, int *a3, int *a4)
{
  v5 = MEMORY[0x1E69E3C08];
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    result = caulk::rt_safe_memory_resource::rt_allocate(result);
    v10 = result;
    v11 = *a3;
    v12 = *a4;
    *result = &unk_1F48CF018;
    *(result + 8) = a2;
    *(result + 16) = v11;
    *(result + 20) = v12;
    if (*(a1 + 24) != 1)
    {
      goto LABEL_6;
    }

    v13 = *(a1 + 16);
    if (!v13)
    {
      goto LABEL_6;
    }

    (*(*v13 + 24))(*(a1 + 16));
    (**v13)(v13);
    result = *v5;
    if (*v5)
    {
      result = caulk::rt_safe_memory_resource::rt_deallocate(result, v13);
LABEL_6:
      *(a1 + 16) = v10;
      *(a1 + 24) = 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

double AudioDSPGraph::ErrorDescriptor::CustomDeferredDescription<unsigned int,unsigned int>::format@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = strlen(v4);
  v6 = *(a1 + 20);
  v12[0] = *(a1 + 16);
  v12[1] = 0;
  v12[3] = 0;
  v12[4] = 198;
  v12[2] = v6;
  v13 = v17;
  *__len = xmmword_1C925F110;
  v15 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v16 = 0;
  __src = v17;
  v11[0] = 2;
  v11[1] = v12;
  v11[2] = 198;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v13, v4, v5, v11);
  v7 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len[1] >= 0x17)
  {
    operator new();
  }

  HIBYTE(v10) = __len[1];
  if (__len[1])
  {
    memmove(&v9, __src, __len[1]);
  }

  *(&v9 + v7) = 0;
  if (__src != v17)
  {
    operator delete(__src);
  }

  result = *&v9;
  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = 1;
  return result;
}

void sub_1C921FB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p)
{
  if (a2)
  {
    if (__p != v60)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    *v59 = 0;
    v59[24] = 0;
    __cxa_end_catch();
    JUMPOUT(0x1C921FAD4);
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::CalculationBox::setParameter@<D0>(AudioDSPGraph::Boxes::CalculationBox *this@<X0>, float a2@<S0>, int a3@<W1>, int a4@<W2>, unsigned int a5@<W3>, uint64_t a6@<X8>)
{
  v14 = a4;
  v15 = a3;
  v13 = a5;
  if (a3)
  {
    LODWORD(v16) = -10878;
    *(&v16 + 1) = off_1E8334BC0;
    v17 = 0;
    *a6 = v16;
    *(a6 + 16) = 0;
    v18 = 0;
    *(a6 + 24) = 0;
  }

  else
  {
    if (a4 == 1 && !*(this + 192))
    {
      v11 = *(this + 98);
      if (a5 < ((*(this + 99) - v11) >> 4))
      {
        v12 = v11 + 16 * a5;
        *v12 = 1;
        result = a2;
        *(v12 + 8) = result;
        *(a6 + 32) = 1;
        return result;
      }

      LODWORD(v16) = -10877;
      *(&v16 + 1) = off_1E8335538;
      v17 = 0;
      v18 = 0;
      v7 = "CalculationBox can't set input scope element {} with parameter ID {}";
      v8 = &v13;
    }

    else
    {
      LODWORD(v16) = -10866;
      *(&v16 + 1) = off_1E8335550;
      v17 = 0;
      v18 = 0;
      v7 = "CalculationBox can't set parameter in scope {} with parameter ID {}";
      v8 = &v14;
    }

    AudioDSPGraph::Error::saveDescription<unsigned int &,unsigned int &>(&v16, v7, v8, &v15);
    *a6 = v16;
    v9 = v17;
    v17 = 0;
    *(a6 + 16) = v9;
    LODWORD(v9) = v18;
    v18 = 0;
    *(a6 + 24) = v9;
  }

  *(a6 + 32) = 0;
  AudioDSPGraph::Error::~Error(&v16);
  return result;
}

void AudioDSPGraph::Boxes::CalculationBox::~CalculationBox(AudioDSPGraph::Boxes::CalculationBox *this)
{
  v1 = *(this + 98);
  if (v1)
  {
    *(this + 99) = v1;
    if ((*(this + 840) & 1) == 0)
    {
      __break(1u);
      goto LABEL_8;
    }

    *(this + 840) = 0;
  }

  AudioDSPGraph::Box::~Box(this);

LABEL_8:
  JUMPOUT(0x1CCA84AE0);
}

{
  v1 = *(this + 98);
  if (!v1)
  {
    goto LABEL_4;
  }

  *(this + 99) = v1;
  if (*(this + 840))
  {
    *(this + 840) = 0;
LABEL_4:
    AudioDSPGraph::Box::~Box(this);
    return;
  }

  __break(1u);
}

uint64_t AudioDSPGraph::Boxes::ChannelCopierBox::initialize(AudioDSPGraph::Boxes::ChannelCopierBox *this)
{
  result = AudioDSPGraph::Box::initialize(this);
  v4 = *(this + 9);
  if (*(this + 10) == v4)
  {
    v13 = (this + 40);
    if (*(this + 63) < 0)
    {
      v13 = *v13;
    }

    caulk::make_string(&v17, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v3, v13, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v17, off_1E8337C60);
  }

  v5 = *(*(v4 + 16) + 120);
  v6 = v5[2];
  if (v6 == 1819304813)
  {
    v7 = v5[3];
    if ((v7 & 1) == 0 || v5[8] != 32)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v6 != 1718773105 || v5[8] != 64)
    {
LABEL_21:
      std::string::basic_string[abi:ne200100]<0>(v16, "ChannelCopierBox input format must be mono, non-interleaved float");
      AudioDSPGraph::ThrowException(1718449215, v16, off_1E83355F8);
    }

    v7 = v5[3];
  }

  if ((v7 & 0x20) == 0 || v5[7] != 1)
  {
    goto LABEL_21;
  }

  v8 = *(this + 12);
  if (*(this + 13) == v8)
  {
    v14 = (this + 40);
    if (*(this + 63) < 0)
    {
      v14 = *v14;
    }

    caulk::make_string(&v17, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v3, v14, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v17, off_1E8337C78);
  }

  v9 = *(*(v8 + 16) + 120);
  v10 = v9[2];
  if (v10 == 1819304813)
  {
    v11 = v9[3];
    if ((v11 & 1) == 0 || v9[8] != 32)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v10 != 1718773105 || v9[8] != 64)
    {
      goto LABEL_22;
    }

    v11 = v9[3];
  }

  if ((v11 & 0x20) == 0)
  {
LABEL_22:
    v12 = this + 40;
    if (*(this + 63) < 0)
    {
      v12 = *v12;
    }

    std::string::basic_string[abi:ne200100]<0>(&v17, v12);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v15, "ChannelCopierBox output format must be non-interleaved float ", &v17);
    AudioDSPGraph::ThrowException(1718449215, &v15, off_1E8335610);
  }

  return result;
}

void sub_1C921FF20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

char *AudioDSPGraph::Boxes::ChannelCopierBox::process(char *this, char *a2)
{
  v2 = this;
  v3 = *(this + 9);
  v4 = *(this + 10);
  v5 = (v4 - v3) >> 5;
  if (v4 == v3)
  {
    v21 = this + 40;
    if (this[63] < 0)
    {
      v21 = *v21;
    }

    caulk::make_string(&v27, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v21, v5, 0);
    AudioDSPGraph::ThrowException(1919837985, &v27, off_1E8337C60);
  }

  v6 = *(this + 12);
  if (*(this + 13) == v6)
  {
    v22 = this + 40;
    if (this[63] < 0)
    {
      v22 = *v22;
    }

    caulk::make_string(&v27, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v22, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v27, off_1E8337C78);
  }

  v7 = *(v3 + 16);
  v8 = *(*(*(v6 + 16) + 56) + 80);
  v9 = *v8;
  if (v9)
  {
    v10 = *(*(v7 + 56) + 80);
    v11 = ((4 * a2) << (*(*(v7 + 120) + 8) == 1718773105));
    v12 = (v8 + 4);
    do
    {
      *(v12 - 1) = v11;
      a2 = *(v10 + 16);
      this = *v12;
      if (a2 != *v12)
      {
        this = memcpy(this, a2, v11);
      }

      v12 += 2;
      --v9;
    }

    while (v9);
    v3 = *(v2 + 9);
    v4 = *(v2 + 10);
    v5 = (v4 - v3) >> 5;
  }

  if (v4 == v3)
  {
    v23 = v2 + 40;
    if (v2[63] < 0)
    {
      v23 = *v23;
    }

    caulk::make_string(&v27, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v23, v5, 0);
    AudioDSPGraph::ThrowException(1919837985, &v27, off_1E8337C60);
  }

  v13 = *(v2 + 12);
  if (*(v2 + 13) == v13)
  {
    v24 = v2 + 40;
    if (v2[63] < 0)
    {
      v24 = *v24;
    }

    caulk::make_string(&v27, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v24, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v27, off_1E8337C78);
  }

  v14 = *(*(v3 + 16) + 56);
  v15 = *(*(v13 + 16) + 56);
  v16 = *(v14 + 8);
  v17 = *(v14 + 24);
  v18 = *(v14 + 40);
  *(v15 + 56) = *(v14 + 56);
  *(v15 + 40) = v18;
  *(v15 + 24) = v17;
  *(v15 + 8) = v16;
  v19 = *(v2 + 9);
  if (*(v2 + 10) == v19)
  {
    v25 = v2 + 40;
    if (v2[63] < 0)
    {
      v25 = *v25;
    }

    caulk::make_string(&v27, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v25, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v27, off_1E8337C60);
  }

  v20 = *(v2 + 12);
  if (*(v2 + 13) == v20)
  {
    v26 = v2 + 40;
    if (v2[63] < 0)
    {
      v26 = *v26;
    }

    caulk::make_string(&v27, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v26, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v27, off_1E8337C78);
  }

  *(*(*(v20 + 16) + 56) + 72) = *(*(*(v19 + 16) + 56) + 72);
  return this;
}

void sub_1C9220258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::ChannelCopierBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 7.36328254e170;
  *a1 = xmmword_1C925F300;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::ChannelCopierBox::~ChannelCopierBox(AudioDSPGraph::Boxes::ChannelCopierBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

uint64_t AudioDSPGraph::Boxes::ChannelJoinerBox::initialize(AudioDSPGraph::Boxes::ChannelJoinerBox *this)
{
  result = AudioDSPGraph::Box::initialize(this);
  v4 = *(this + 12);
  if (*(this + 13) == v4)
  {
    v21 = (this + 40);
    if (*(this + 63) < 0)
    {
      v21 = *v21;
    }

    caulk::make_string(&v28, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v3, v21, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v28, off_1E8337C78);
  }

  v5 = *(*(v4 + 16) + 120);
  v6 = v5[3];
  if ((v6 & 0x20) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v27, "ChannelJoinerBox output format must be de-interleaved");
    AudioDSPGraph::ThrowException(1718449215, v27, off_1E8335628);
  }

  v7 = v5[2];
  if (v7 == 1819304813)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_38;
    }

    v8 = v5[8];
    if (v8 != 32)
    {
      goto LABEL_38;
    }
  }

  else if (v7 != 1718773105 || (v8 = v5[8], v8 != 64))
  {
LABEL_38:
    std::string::basic_string[abi:ne200100]<0>(v26, "ChannelJoinerBox output format must be 32-bit floating-point PCM or 'freq'");
    AudioDSPGraph::ThrowException(1718449215, v26, off_1E8335640);
  }

  v9 = *(this + 9);
  v10 = *(this + 10) - v9;
  if ((v10 & 0x1FFFFFFFE0) != 0)
  {
    LODWORD(v11) = 0;
    v12 = v10 >> 5;
    v13 = (v10 >> 5);
    v14 = v9 + 16;
    v15 = v12;
    result = v8;
    v3 = v5[2];
    while (1)
    {
      if (!v15)
      {
        v20 = (this + 40);
        if (*(this + 63) < 0)
        {
          v20 = *v20;
        }

        caulk::make_string(&v28, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v3, v20, v12, v12);
        AudioDSPGraph::ThrowException(1919837985, &v28, off_1E8337C60);
      }

      v16 = *(*v14 + 120);
      v17 = v16[3];
      if ((v17 & 0x20) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(v25, "ChannelJoinerBox input format must be de-interleaved");
        AudioDSPGraph::ThrowException(1718449215, v25, off_1E8335658);
      }

      v18 = v16[2];
      if (v18 == 1819304813)
      {
        if ((v17 & 1) == 0 || v16[8] != 32)
        {
          goto LABEL_33;
        }

        result = v8;
        v3 = v5[2];
        if (v7 == 1718773105)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v18 != 1718773105 || v16[8] != 64)
        {
LABEL_33:
          std::string::basic_string[abi:ne200100]<0>(v24, "ChannelJoinerBox input format must be 32-bit floating-point PCM or 'freq'");
          AudioDSPGraph::ThrowException(1718449215, v24, off_1E8335670);
        }

        if (v3 != 1718773105 || result != 64)
        {
LABEL_32:
          std::string::basic_string[abi:ne200100]<0>(v23, "ChannelJoinerBox input and output formats must be compatible");
          AudioDSPGraph::ThrowException(1718449215, v23, off_1E8335688);
        }

        v3 = 1718773105;
      }

      v11 = (v16[7] + v11);
      v14 += 32;
      --v15;
      if (!--v13)
      {
        goto LABEL_26;
      }
    }
  }

  v11 = 0;
LABEL_26:
  v19 = v5[7];
  if (v19 != v11)
  {
    caulk::make_string(&v22, "ChannelJoinerBox channel mismatch: can't join %u input channels into %u output channels", v3, v11, v19);
    AudioDSPGraph::ThrowException(1718449215, &v22, off_1E83356A0);
  }

  return result;
}

void sub_1C92205E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::ChannelJoinerBox::process(uint64_t this, const char *a2)
{
  v2 = *(this + 96);
  if (*(this + 104) == v2)
  {
    v31 = (this + 40);
    if (*(this + 63) < 0)
    {
      v31 = *v31;
    }

    caulk::make_string(&v37, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v31, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v37, off_1E8337C78);
  }

  v3 = *(v2 + 16);
  v4 = *(this + 72);
  v5 = *(this + 80);
  v6 = v5 - v4;
  if (((v5 - v4) & 0x1FFFFFFFE0) != 0)
  {
    v7 = 0;
    v8 = 0;
    v9 = *(*(v3 + 56) + 80);
    v10 = (4 * a2) << (*(*(v3 + 120) + 8) == 1718773105);
    v36 = this;
    LOBYTE(v11) = 1;
    do
    {
      v12 = v6 >> 5;
      if (v12 <= v7)
      {
        v30 = (this + 40);
        if (*(this + 63) < 0)
        {
          v30 = *v30;
        }

        caulk::make_string(&v37, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v30, v12, v7);
        AudioDSPGraph::ThrowException(1919837985, &v37, off_1E8337C60);
      }

      v13 = *(v4 + 32 * v7 + 16);
      v14 = *(v13 + 120);
      v15 = *(v13 + 56);
      v16 = *(v15 + 72);
      if (*(v14 + 28))
      {
        v17 = 0;
        v18 = (*(v15 + 80) + 16);
        v19 = &v9[4 * v8 + 4];
        do
        {
          if (v8 + v17 >= *v9)
          {
            __assert_rtn("process", "ChannelJoinerBox.cpp", 68, "outBufferIndex < outABL->mNumberBuffers");
          }

          *(v19 - 1) = v10;
          if ((v16 & 0x10) != 0)
          {
            bzero(*v19, v10);
          }

          else
          {
            a2 = *v18;
            if (*v18 != *v19)
            {
              memcpy(*v19, a2, v10);
            }
          }

          ++v17;
          v18 += 2;
          v19 += 2;
        }

        while (v17 < *(v14 + 28));
        v8 = (v8 + v17);
        this = v36;
        v4 = *(v36 + 72);
        v5 = *(v36 + 80);
      }

      v11 &= (v16 & 0x10) >> 4;
      ++v7;
      v6 = v5 - v4;
    }

    while (v7 < ((v5 - v4) >> 5));
  }

  else
  {
    v11 = 1;
  }

  if (v5 == v4)
  {
    v32 = (this + 40);
    if (*(this + 63) < 0)
    {
      v32 = *v32;
    }

    caulk::make_string(&v37, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v32, v6 >> 5, 0);
    AudioDSPGraph::ThrowException(1919837985, &v37, off_1E8337C60);
  }

  v20 = *(this + 96);
  if (*(this + 104) == v20)
  {
    v33 = (this + 40);
    if (*(this + 63) < 0)
    {
      v33 = *v33;
    }

    caulk::make_string(&v37, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v33, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v37, off_1E8337C78);
  }

  v21 = *(*(v4 + 16) + 56);
  v22 = *(*(v20 + 16) + 56);
  v23 = *(v21 + 8);
  v24 = *(v21 + 24);
  v25 = *(v21 + 40);
  *(v22 + 56) = *(v21 + 56);
  *(v22 + 40) = v25;
  *(v22 + 24) = v24;
  *(v22 + 8) = v23;
  v26 = *(this + 72);
  if (*(this + 80) == v26)
  {
    v34 = (this + 40);
    if (*(this + 63) < 0)
    {
      v34 = *v34;
    }

    caulk::make_string(&v37, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v34, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v37, off_1E8337C60);
  }

  v27 = *(this + 96);
  if (*(this + 104) == v27)
  {
    v35 = (this + 40);
    if (*(this + 63) < 0)
    {
      v35 = *v35;
    }

    caulk::make_string(&v37, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v35, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v37, off_1E8337C78);
  }

  v28 = *(*(*(v26 + 16) + 56) + 72);
  v29 = *(*(v27 + 16) + 56);
  if (!v11)
  {
    v28 &= ~0x10u;
  }

  *(v29 + 72) = v28;
  return this;
}

void sub_1C9220A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::ChannelJoinerBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 7.37152887e170;
  *a1 = xmmword_1C925F2E0;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::ChannelJoinerBox::~ChannelJoinerBox(AudioDSPGraph::Boxes::ChannelJoinerBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

uint64_t AudioDSPGraph::Boxes::ChannelSplitterBox::initialize(AudioDSPGraph::Boxes::ChannelSplitterBox *this)
{
  AudioDSPGraph::Box::initialize(this);
  v3 = *(this + 9);
  if (*(this + 10) == v3)
  {
    v35 = (this + 40);
    if (*(this + 63) < 0)
    {
      v35 = *v35;
    }

    caulk::make_string(&v41, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v2, v35, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v41, off_1E8337C60);
  }

  v4 = *(*(v3 + 16) + 120);
  v5 = v4[7];
  v6 = *(this + 12);
  v7 = *(this + 13) - v6;
  v8 = v7 >> 5;
  v9 = (v7 >> 5);
  v10 = 0;
  v11 = v7 & 0x1FFFFFFFE0;
  if ((v7 & 0x1FFFFFFFE0) != 0)
  {
    v12 = (v7 >> 5) - 1;
    if (v8 < v12)
    {
      v12 = v8;
    }

    v13 = (v6 + 16);
    v14 = v8;
    v15 = v9;
    do
    {
      if (!v14)
      {
        v29 = (this + 40);
        if (*(this + 63) < 0)
        {
          v29 = *v29;
        }

        caulk::make_string(&v41, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v2, v29, v8, v12);
        AudioDSPGraph::ThrowException(1919837985, &v41, off_1E8337C78);
      }

      v16 = *v13;
      v13 += 4;
      v2 = *(*(v16 + 120) + 28);
      v10 = (v2 + v10);
      --v14;
      --v15;
    }

    while (v15);
  }

  v17 = v4[2];
  if (v17 == 1819304813)
  {
    result = v4[3];
    if ((result & 1) == 0 || v4[8] != 32)
    {
      goto LABEL_61;
    }
  }

  else
  {
    if (v17 != 1718773105 || v4[8] != 64)
    {
LABEL_61:
      operator new();
    }

    result = v4[3];
  }

  if ((result & 0x20) == 0)
  {
    goto LABEL_61;
  }

  if (v5 != v10)
  {
    v36 = (this + 40);
    if (*(this + 63) < 0)
    {
      v36 = *v36;
    }

    caulk::make_string(&v40, "ChannelSplitterBox %s input has %u channels but output has %u channels", v2, v36, v5, v10);
    AudioDSPGraph::ThrowException(1718449215, &v40, off_1E83356D0);
  }

  if (v11)
  {
    v19 = v6 + 16;
    v20 = v8;
    v21 = v9;
    do
    {
      if (!v20)
      {
        v30 = (this + 40);
        if (*(this + 63) < 0)
        {
          v30 = *v30;
        }

        caulk::make_string(&v41, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v2, v30, v8, v8);
        AudioDSPGraph::ThrowException(1919837985, &v41, off_1E8337C78);
      }

      v22 = *(*v19 + 120);
      v23 = v22[2];
      if (v23 == 1819304813)
      {
        result = v22[3];
        if ((result & 1) == 0 || v22[8] != 32)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v23 != 1718773105 || v22[8] != 64)
        {
LABEL_40:
          v28 = (this + 40);
          if (*(this + 63) < 0)
          {
            v28 = *v28;
          }

          caulk::make_string(&v39, "ChannelSplitterBox %s output format must be non-interleaved float in time- of frequency-domain", v2, v28);
          AudioDSPGraph::ThrowException(1718449215, &v39, off_1E83356E8);
        }

        result = v22[3];
      }

      if ((result & 0x20) == 0)
      {
        goto LABEL_40;
      }

      v19 += 32;
      --v20;
      --v21;
    }

    while (v21);
    v24 = v6 + 16;
    v25 = v8;
    if (v17 == 1718773105)
    {
      do
      {
        if (!v25)
        {
          v31 = (this + 40);
          if (*(this + 63) < 0)
          {
            v31 = *v31;
          }

          caulk::make_string(&v41, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v2, v31, v8, v8);
          AudioDSPGraph::ThrowException(1919837985, &v41, off_1E8337C78);
        }

        v26 = *(*v24 + 120);
        if (*(v26 + 8) != 1718773105 || *(v26 + 32) != 64)
        {
          v33 = (this + 40);
          if (*(this + 63) < 0)
          {
            v33 = *v33;
          }

          caulk::make_string(&v38, "ChannelSplitterBox %s output is in time-domain but input is in frequency-domain", v2, v33);
          AudioDSPGraph::ThrowException(1718449215, &v38, off_1E8335700);
        }

        v24 += 32;
        --v25;
        --v9;
      }

      while (v9);
    }

    else
    {
      do
      {
        if (!v25)
        {
          v32 = (this + 40);
          if (*(this + 63) < 0)
          {
            v32 = *v32;
          }

          caulk::make_string(&v41, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v2, v32, v8, v8);
          AudioDSPGraph::ThrowException(1919837985, &v41, off_1E8337C78);
        }

        v27 = *(*v24 + 120);
        if (*(v27 + 8) == 1718773105 && *(v27 + 32) == 64)
        {
          v34 = (this + 40);
          if (*(this + 63) < 0)
          {
            v34 = *v34;
          }

          caulk::make_string(&v37, "ChannelSplitterBox %s output is in frequency-domain but input is in time-domain", v2, v34);
          AudioDSPGraph::ThrowException(1718449215, &v37, off_1E8335718);
        }

        v24 += 32;
        --v25;
        --v9;
      }

      while (v9);
    }
  }

  return result;
}

void sub_1C9220F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (*(v30 - 65) < 0)
  {
    operator delete(*(v30 - 88));
  }

  _Unwind_Resume(exception_object);
}

char *AudioDSPGraph::Boxes::ChannelSplitterBox::process(char *this, char *a2)
{
  v2 = this;
  v3 = *(this + 9);
  v4 = *(this + 10);
  if (v4 == v3)
  {
    v29 = (v4 - v3) >> 5;
    v30 = this + 40;
    if (this[63] < 0)
    {
      v30 = *v30;
    }

    caulk::make_string(&v31, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v30, v29, 0);
    AudioDSPGraph::ThrowException(1919837985, &v31, off_1E8337C60);
  }

  v5 = *(this + 12);
  v6 = *(this + 13);
  v7 = *(v3 + 16);
  if (((v6 - v5) & 0x1FFFFFFFE0) != 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = ((4 * a2) << (*(*(v7 + 120) + 8) == 1718773105));
    v11 = *(*(v7 + 56) + 80) + 8;
    v12 = ((v6 - v5) >> 5);
    do
    {
      v13 = (v6 - v5) >> 5;
      if (v13 <= v8)
      {
        v28 = v2 + 40;
        if (v2[63] < 0)
        {
          v28 = *v28;
        }

        caulk::make_string(&v31, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v28, v13, v8);
        AudioDSPGraph::ThrowException(1919837985, &v31, off_1E8337C78);
      }

      v14 = *(*(*(v5 + 32 * v8 + 16) + 56) + 80);
      v15 = *v14;
      if (v15)
      {
        v16 = (v14 + 4);
        do
        {
          *(v16 - 1) = v10;
          a2 = *(v11 + 16 * v9 + 8);
          this = *v16;
          if (a2 != *v16)
          {
            this = memcpy(this, a2, v10);
          }

          ++v9;
          v16 += 2;
          --v15;
        }

        while (v15);
        v3 = *(v2 + 9);
        v4 = *(v2 + 10);
      }

      if (v4 == v3)
      {
        v24 = v2 + 40;
        if (v2[63] < 0)
        {
          v24 = *v24;
        }

        caulk::make_string(&v31, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v24, 0, 0);
        AudioDSPGraph::ThrowException(1919837985, &v31, off_1E8337C60);
      }

      v17 = *(v2 + 12);
      v18 = (*(v2 + 13) - v17) >> 5;
      if (v18 <= v8)
      {
        v27 = v2 + 40;
        if (v2[63] < 0)
        {
          v27 = *v27;
        }

        caulk::make_string(&v31, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v27, v18, v8);
        AudioDSPGraph::ThrowException(1919837985, &v31, off_1E8337C78);
      }

      v19 = *(*(v3 + 16) + 56);
      v20 = *(*(v17 + 32 * v8 + 16) + 56);
      v21 = *(v19 + 8);
      v22 = *(v19 + 24);
      v23 = *(v19 + 40);
      *(v20 + 56) = *(v19 + 56);
      *(v20 + 40) = v23;
      *(v20 + 24) = v22;
      *(v20 + 8) = v21;
      v3 = *(v2 + 9);
      v4 = *(v2 + 10);
      if (v4 == v3)
      {
        v25 = v2 + 40;
        if (v2[63] < 0)
        {
          v25 = *v25;
        }

        caulk::make_string(&v31, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v25, 0, 0);
        AudioDSPGraph::ThrowException(1919837985, &v31, off_1E8337C60);
      }

      v5 = *(v2 + 12);
      v6 = *(v2 + 13);
      if ((v6 - v5) >> 5 <= v8)
      {
        v26 = v2 + 40;
        if (v2[63] < 0)
        {
          v26 = *v26;
        }

        caulk::make_string(&v31, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v26, (v6 - v5) >> 5, v8);
        AudioDSPGraph::ThrowException(1919837985, &v31, off_1E8337C78);
      }

      *(*(*(v5 + 32 * v8++ + 16) + 56) + 72) = *(*(*(v3 + 16) + 56) + 72);
    }

    while (v8 != v12);
  }

  return this;
}

void sub_1C922132C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::ChannelSplitterBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 7.38215236e170;
  *a1 = xmmword_1C925F2F0;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::ChannelSplitterBox::~ChannelSplitterBox(AudioDSPGraph::Boxes::ChannelSplitterBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

double AudioDSPGraph::Boxes::ConstantSourceBox::initialize(AudioDSPGraph::Boxes::ConstantSourceBox *this)
{
  AudioDSPGraph::Box::initialize(this);
  v3 = *(this + 12);
  v4 = *(this + 13) - v3;
  if ((v4 & 0x1FFFFFFFE0) != 0)
  {
    v5 = v4 >> 5;
    v6 = (v4 >> 5);
    v7 = v3 + 16;
    v8 = v5;
    do
    {
      if (!v8)
      {
        v13 = (this + 40);
        if (*(this + 63) < 0)
        {
          v13 = *v13;
        }

        caulk::make_string(&v14, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v2, v13, v5, v5);
        AudioDSPGraph::ThrowException(1919837985, &v14, off_1E8337C78);
      }

      v9 = *(*v7 + 120);
      v10 = v9[2];
      if (v10 == 1819304813)
      {
        v11 = v9[3];
        if ((v11 & 1) == 0 || v9[8] != 32)
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v10 != 1718773105 || v9[8] != 64)
        {
LABEL_14:
          operator new();
        }

        v11 = v9[3];
      }

      if ((v11 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      v7 += 32;
      --v8;
      --v6;
    }

    while (v6);
  }

  *(this + 776) = 0u;
  *(this + 99) = 0x3FF0000000000000;
  *(this + 50) = 0u;
  *(this + 51) = 0u;
  *&result = 1;
  *(this + 104) = 1;
  return result;
}

void sub_1C9221558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::ConstantSourceBox::process(AudioDSPGraph::Boxes::ConstantSourceBox *this, const char *a2)
{
  __N = a2;
  v3 = *(this + 12);
  v4 = *(this + 13);
  v5 = v4 - v3;
  if (((v4 - v3) & 0x1FFFFFFFE0) != 0)
  {
    v6 = 0;
    v7 = 4 * a2;
    v8 = (a2 + 1);
    v9 = (a2 - 1);
    v10 = 8 * a2;
    __N_4 = (this + 776);
    do
    {
      v11 = v5 >> 5;
      if (v11 <= v6)
      {
        v27 = (this + 40);
        if (*(this + 63) < 0)
        {
          v27 = *v27;
        }

        caulk::make_string(&v31, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v27, v11, v6);
        AudioDSPGraph::ThrowException(1919837985, &v31, off_1E8337C78);
      }

      v12 = *(*(*(v3 + 32 * v6 + 16) + 56) + 80);
      v13 = *v12;
      if (v13)
      {
        v14 = (v12 + 4);
        do
        {
          v15 = *(this + 12);
          v16 = (*(this + 13) - v15) >> 5;
          if (v16 <= v6)
          {
            v26 = (this + 40);
            if (*(this + 63) < 0)
            {
              v26 = *v26;
            }

            caulk::make_string(&v31, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v26, v16, v6);
            AudioDSPGraph::ThrowException(1919837985, &v31, off_1E8337C78);
          }

          v17 = *v14;
          v18 = (this + 764);
          if (*(*(*(v15 + 32 * v6 + 16) + 120) + 8) == 1718773105)
          {
            vDSP_vfill(v18, v17, 1, v8);
            vDSP_vfill(this + 192, &(*v14)[__N + 1], 1, v9);
            v19 = v10;
          }

          else
          {
            vDSP_vfill(v18, v17, 1, __N);
            v19 = v7;
          }

          *(v14 - 1) = v19;
          v14 += 2;
          --v13;
        }

        while (v13);
        v3 = *(this + 12);
        v4 = *(this + 13);
      }

      v20 = (v4 - v3) >> 5;
      if (v20 <= v6)
      {
        v28 = (this + 40);
        if (*(this + 63) < 0)
        {
          v28 = *v28;
        }

        caulk::make_string(&v31, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v28, v20, v6);
        AudioDSPGraph::ThrowException(1919837985, &v31, off_1E8337C78);
      }

      v21 = *(*(v3 + 32 * v6 + 16) + 56);
      *(v21 + 72) = 512;
      v22 = *__N_4;
      v23 = __N_4[1];
      v24 = __N_4[2];
      *(v21 + 56) = __N_4[3];
      *(v21 + 40) = v24;
      *(v21 + 24) = v23;
      *(v21 + 8) = v22;
      ++v6;
      v3 = *(this + 12);
      v4 = *(this + 13);
      v5 = v4 - v3;
    }

    while (v6 < ((v4 - v3) >> 5));
  }

  result = *(this + 97) + __N;
  *(this + 97) = result;
  return result;
}

void sub_1C92217F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::ConstantSourceBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 9.19367275e170;
  *a1 = xmmword_1C925F320;
  *(a1 + 16) = 0;
  return result;
}

double AudioDSPGraph::Boxes::ConstantSourceBox::getParameterInfo@<D0>(AudioDSPGraph::Boxes::ConstantSourceBox *this@<X0>, int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = -10866;
LABEL_7:
    *a4 = v4;
    *(a4 + 104) = 0;
    return result;
  }

  if (a3 > 1)
  {
    v4 = -10878;
    goto LABEL_7;
  }

  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  memset(v12, 0, sizeof(v12));
  LODWORD(v14) = 0;
  if (a3)
  {
    strcpy(v12, "imag value (freq domain only)");
    HIWORD(v12[1]) = 0;
    v13 = xmmword_1C925F628;
    v5 = @"imag value (freq domain only)";
  }

  else
  {
    v12[0] = *"real value";
    v12[1] = unk_1C925F64D;
    v13 = xmmword_1C925F65D;
    v5 = @"real value";
  }

  *(a4 + 32) = v13;
  *(a4 + 48) = v14;
  *a4 = v12[0];
  *(a4 + 16) = v12[1];
  *(a4 + 64) = v15;
  *(a4 + 72) = v5;
  *(a4 + 80) = 0;
  __asm { FMOV            V0.2S, #-20.0 }

  *(a4 + 84) = -_D0;
  *(a4 + 92) = 0;
  *&result = 3355443200;
  *(a4 + 96) = 3355443200;
  *(a4 + 104) = 1;
  return result;
}

void AudioDSPGraph::Boxes::ConstantSourceBox::getParameterList(int a1@<W1>, uint64_t *a2@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v2 = 0x100000000;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v2, &v3, 2uLL);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void AudioDSPGraph::Boxes::ConstantSourceBox::getParameter(AudioDSPGraph::Boxes::ConstantSourceBox *this@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (a3)
  {
    LODWORD(v7) = -10866;
    v6 = off_1E8335790;
  }

  else if (a2 == 1)
  {
    if (!a4)
    {
      v5 = *(this + 192);
      goto LABEL_8;
    }

    LODWORD(v7) = -10877;
    v6 = off_1E83357C0;
  }

  else if (a2)
  {
    LODWORD(v7) = -10878;
    v6 = off_1E8334BA8;
  }

  else
  {
    if (!a4)
    {
      v5 = *(this + 191);
LABEL_8:
      *a5 = v5;
      *(a5 + 32) = 1;
      return;
    }

    LODWORD(v7) = -10877;
    v6 = off_1E83357A8;
  }

  *(&v7 + 1) = v6;
  v8 = 0;
  *a5 = v7;
  *(a5 + 16) = 0;
  v9 = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  AudioDSPGraph::Error::~Error(&v7);
}

void AudioDSPGraph::Boxes::ConstantSourceBox::setParameter(AudioDSPGraph::Boxes::ConstantSourceBox *this@<X0>, float a2@<S0>, int a3@<W1>, int a4@<W2>, int a5@<W3>, uint64_t a6@<X8>)
{
  if (a4)
  {
    LODWORD(v7) = -10866;
    v6 = off_1E8335748;
  }

  else if (a3 == 1)
  {
    if (!a5)
    {
      *(this + 192) = a2;
      goto LABEL_8;
    }

    LODWORD(v7) = -10877;
    v6 = off_1E8335778;
  }

  else if (a3)
  {
    LODWORD(v7) = -10878;
    v6 = off_1E8334BC0;
  }

  else
  {
    if (!a5)
    {
      *(this + 191) = a2;
LABEL_8:
      *(a6 + 32) = 1;
      return;
    }

    LODWORD(v7) = -10877;
    v6 = off_1E8335760;
  }

  *(&v7 + 1) = v6;
  v8 = 0;
  *a6 = v7;
  *(a6 + 16) = 0;
  v9 = 0;
  *(a6 + 24) = 0;
  *(a6 + 32) = 0;
  AudioDSPGraph::Error::~Error(&v7);
}

void AudioDSPGraph::Boxes::ConstantSourceBox::~ConstantSourceBox(AudioDSPGraph::Boxes::ConstantSourceBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

uint64_t AudioDSPGraph::Boxes::CopyBox::initialize(AudioDSPGraph::Boxes::CopyBox *this)
{
  AudioDSPGraph::Box::initialize(this);
  v3 = *(this + 9);
  if (*(this + 10) == v3)
  {
    v6 = (this + 40);
    if (*(this + 63) < 0)
    {
      v6 = *v6;
    }

    caulk::make_string(&v8, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v2, v6, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v8, off_1E8337C60);
  }

  v4 = *(this + 12);
  if (*(this + 13) == v4)
  {
    v7 = (this + 40);
    if (*(this + 63) < 0)
    {
      v7 = *v7;
    }

    caulk::make_string(&v8, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v2, v7, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v8, off_1E8337C78);
  }

  result = memcmp(*(*(v3 + 16) + 120), *(*(v4 + 16) + 120), 0x28uLL);
  if (result)
  {
    operator new();
  }

  return result;
}

void sub_1C9221CDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

__n128 AudioDSPGraph::Boxes::CopyBox::process(AudioDSPGraph::Boxes::CopyBox *this, const char *a2)
{
  v3 = *(this + 9);
  if (*(this + 10) == v3)
  {
    v15 = (this + 40);
    if (*(this + 63) < 0)
    {
      v15 = *v15;
    }

    caulk::make_string(&v18, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v15, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v18, off_1E8337C60);
  }

  v4 = *(this + 12);
  if (*(this + 13) == v4)
  {
    v16 = (this + 40);
    if (*(this + 63) < 0)
    {
      v16 = *v16;
    }

    caulk::make_string(&v18, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v16, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v18, off_1E8337C78);
  }

  AudioDSPGraph::SimpleABL::copy((*(*(v3 + 16) + 56) + 80), (*(*(v4 + 16) + 56) + 80), 0, 0, (*(*(*(v3 + 16) + 120) + 24) * a2), 1);
  v7 = *(this + 9);
  if (*(this + 10) == v7)
  {
    v17 = (this + 40);
    if (*(this + 63) < 0)
    {
      v17 = *v17;
    }

    caulk::make_string(&v18, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v5, v17, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v18, off_1E8337C60);
  }

  v8 = *(this + 12);
  v9 = *(this + 13);
  if (v8 != v9)
  {
    v10 = *(*(v7 + 16) + 56);
    v11 = *(v10 + 72);
    do
    {
      v12 = *(*(v8 + 16) + 56);
      result = *(v10 + 8);
      v13 = *(v10 + 24);
      v14 = *(v10 + 40);
      *(v12 + 56) = *(v10 + 56);
      *(v12 + 40) = v14;
      *(v12 + 24) = v13;
      *(v12 + 8) = result;
      *(v12 + 72) = v11;
      v8 += 32;
    }

    while (v8 != v9);
  }

  return result;
}

void sub_1C9221EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::CopyBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 9.49207469e170;
  *a1 = xmmword_1C925F260;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::CopyBox::~CopyBox(AudioDSPGraph::Boxes::CopyBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

double AudioDSPGraph::Boxes::DecibelControlBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 3.63842702e175;
  *a1 = xmmword_1C925F330;
  *(a1 + 16) = 0;
  return result;
}

double AudioDSPGraph::Boxes::DecibelControlBox::getParameterInfo@<D0>(int a1@<W1>, int a2@<W2>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v3 = -10866;
LABEL_3:
    *a3 = v3;
    *(a3 + 104) = 0;
    return result;
  }

  if (a2 == 1)
  {
    *a3 = *"DBValue";
    *(a3 + 16) = unk_1C925F682;
    *(a3 + 32) = xmmword_1C925F692;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0;
    *(a3 + 72) = @"DBValue";
    *(a3 + 80) = 13;
    *(a3 + 84) = -COERCE_DOUBLE(0x7F0000007FLL);
    *(a3 + 92) = 0;
  }

  else
  {
    if (a2)
    {
      v3 = -10878;
      goto LABEL_3;
    }

    *a3 = *"LinearValue";
    *(a3 + 16) = unk_1C925F6B7;
    *(a3 + 32) = xmmword_1C925F6C7;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0;
    *(a3 + 72) = @"LinearValue";
    *(a3 + 80) = 14;
    *(a3 + 84) = 0x7F80000000000000;
    *(a3 + 92) = 1065353216;
  }

  *&result = 3355443200;
  *(a3 + 96) = 3355443200;
  *(a3 + 104) = 1;
  return result;
}

void AudioDSPGraph::Boxes::DecibelControlBox::getParameterList(int a1@<W1>, uint64_t *a2@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v2 = 0x100000000;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v2, &v3, 2uLL);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void AudioDSPGraph::Boxes::DecibelControlBox::getParameter(AudioDSPGraph::Boxes::DecibelControlBox *this@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (a3)
  {
    LODWORD(v7) = -10866;
    v6 = off_1E8335850;
  }

  else if (a2 == 1)
  {
    if (!a4)
    {
      v5 = *(this + 192);
      goto LABEL_8;
    }

    LODWORD(v7) = -10877;
    v6 = off_1E8335880;
  }

  else if (a2)
  {
    LODWORD(v7) = -10878;
    v6 = off_1E8334BA8;
  }

  else
  {
    if (!a4)
    {
      v5 = *(this + 191);
LABEL_8:
      *a5 = v5;
      *(a5 + 32) = 1;
      return;
    }

    LODWORD(v7) = -10877;
    v6 = off_1E8335868;
  }

  *(&v7 + 1) = v6;
  v8 = 0;
  *a5 = v7;
  *(a5 + 16) = 0;
  v9 = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  AudioDSPGraph::Error::~Error(&v7);
}

void AudioDSPGraph::Boxes::DecibelControlBox::setParameter(AudioDSPGraph::Boxes::DecibelControlBox *this@<X0>, float a2@<S0>, int a3@<W1>, int a4@<W2>, int a5@<W3>, uint64_t a6@<X8>)
{
  if (a4)
  {
    LODWORD(v11) = -10866;
    v9 = off_1E83357F0;
    goto LABEL_10;
  }

  v7 = a2;
  if (a3 == 1)
  {
    if (!a5)
    {
      *(this + 191) = __exp10f(a2 * 0.05);
      goto LABEL_15;
    }

    LODWORD(v11) = -10877;
    v9 = off_1E8335838;
LABEL_10:
    *(&v11 + 1) = v9;
    v12 = 0;
    *a6 = v11;
    *(a6 + 16) = 0;
    goto LABEL_11;
  }

  if (a3)
  {
    LODWORD(v11) = -10878;
    v9 = off_1E8334BC0;
    goto LABEL_10;
  }

  if (a5)
  {
    LODWORD(v11) = -10877;
    v9 = off_1E8335808;
    goto LABEL_10;
  }

  if (a2 < 0.0)
  {
    LODWORD(v11) = 1919837985;
    *(&v11 + 1) = off_1E8335820;
    v12 = 0;
    *a6 = v11;
    *(a6 + 16) = "parameter out of range";
LABEL_11:
    v13 = 0;
    *(a6 + 24) = 0;
    *(a6 + 32) = 0;
    AudioDSPGraph::Error::~Error(&v11);
    return;
  }

  *(this + 191) = a2;
  v10 = 1.1755e-38;
  if (v7 >= 1.1755e-38)
  {
    v10 = v7;
  }

  v7 = log10f(v10) * 20.0;
LABEL_15:
  *(this + 192) = v7;
  *(a6 + 32) = 1;
}

void AudioDSPGraph::Boxes::DecibelControlBox::~DecibelControlBox(AudioDSPGraph::Boxes::DecibelControlBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

void AudioDSPGraph::Boxes::DelayBox::reset(AudioDSPGraph::Boxes::DelayBox *this)
{
  v2 = *(this + 96);
  if (v2 && *v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      bzero(*&v2[v3 + 4], v2[v3 + 3]);
      ++v4;
      v2 = *(this + 96);
      v3 += 4;
    }

    while (v4 < *v2);
  }

  v5 = *(this + 197);
  *(this + 198) = v5;
  *(this + 100) = v5;
}

void AudioDSPGraph::Boxes::DelayBox::uninitialize(AudioDSPGraph::Boxes::DelayBox *this)
{
  AudioDSPGraph::Box::uninitialize(this);

  AudioDSPGraph::SimpleABL::free((this + 768));
}

void AudioDSPGraph::Boxes::DelayBox::initialize(AudioDSPGraph::Boxes::DelayBox *this)
{
  AudioDSPGraph::Box::initialize(this);
  v3 = *(this + 196);
  if (v3)
  {
    v4 = *(this + 12);
    if (*(this + 13) == v4)
    {
      v13 = (this + 40);
      if (*(this + 63) < 0)
      {
        v13 = *v13;
      }

      caulk::make_string(&v14, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v2, v13, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, &v14, off_1E8337C78);
    }

    v5 = *(*(v4 + 16) + 120);
    v6 = v3 + 2 * *(*(this + 3) + 272);
    *(this + 199) = v6;
    v7 = (*(v5 + 12) & 0x20) == 0;
    v10 = v5 + 24;
    v8 = *(v5 + 24);
    v9 = *(v10 + 4);
    if (v7)
    {
      v11 = 1;
    }

    else
    {
      v11 = v9;
    }

    AudioDSPGraph::SimpleABL::alloc((this + 768), v11, v8 * v6, 0);
  }

  else
  {
    *(this + 199) = 0;
  }

  v12 = *(this + 197);
  *(this + 198) = v12;
  *(this + 100) = v12;
}

void sub_1C9222500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *AudioDSPGraph::Boxes::DelayBox::process(AudioDSPGraph::Boxes::DelayBox *this, const char *a2)
{
  v3 = *(this + 197);
  if (v3)
  {
    v4 = *(this + 12);
    if (*(this + 13) == v4)
    {
      v42 = (this + 40);
      if (*(this + 63) < 0)
      {
        v42 = *v42;
      }

      caulk::make_string(&v46, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v42, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, &v46, off_1E8337C78);
    }

    v5 = *(this + 9);
    if (*(this + 10) == v5)
    {
      v43 = (this + 40);
      if (*(this + 63) < 0)
      {
        v43 = *v43;
      }

      caulk::make_string(&v46, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v43, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, &v46, off_1E8337C60);
    }

    v6 = a2;
    v7 = *(v4 + 16);
    v8 = *(v7 + 120);
    v9 = *(*(v5 + 16) + 56);
    v10 = *(v7 + 56);
    v12 = *(v8 + 24);
    v11 = *(v8 + 28);
    v13 = (v12 * a2);
    v14 = *(this + 200);
    if (v3 != *(this + 198))
    {
      if (v14 >= v3)
      {
        v15 = 0;
      }

      else
      {
        v15 = *(this + 199);
      }

      *(this + 201) = v14 - v3 + v15;
    }

    AudioDSPGraph::SimpleABL::dstWrapCopy((v9 + 80), (this + 768), v14 * v12, v13);
    result = AudioDSPGraph::SimpleABL::srcWrapCopy((this + 768), (v10 + 80), (*(this + 201) * v12), v13, 0);
    if (v11)
    {
      v20 = (v11 + 3) & 0x1FFFFFFFCLL;
      v21 = vdupq_n_s64(v11 - 1);
      v22 = xmmword_1C925F0F0;
      v23 = xmmword_1C925F100;
      v24 = (*(v10 + 80) + 44);
      v25 = vdupq_n_s64(4uLL);
      do
      {
        v26 = vmovn_s64(vcgeq_u64(v21, v23));
        if (vuzp1_s16(v26, *v21.i8).u8[0])
        {
          *(v24 - 8) = v13;
        }

        if (vuzp1_s16(v26, *&v21).i8[2])
        {
          *(v24 - 4) = v13;
        }

        if (vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v22))).i32[1])
        {
          *v24 = v13;
          v24[4] = v13;
        }

        v22 = vaddq_s64(v22, v25);
        v23 = vaddq_s64(v23, v25);
        v24 += 16;
        v20 -= 4;
      }

      while (v20);
    }

    v27 = *(this + 200) + v6;
    *(this + 200) = v27;
    v28 = *(this + 201) + v6;
    *(this + 201) = v28;
    v29 = *(this + 199);
    v30 = v27 >= v29;
    v31 = v27 - v29;
    if (v30)
    {
      *(this + 200) = v31;
    }

    v30 = v28 >= v29;
    v32 = v28 - v29;
    if (v30)
    {
      *(this + 201) = v32;
    }
  }

  else
  {
    v16 = *(this + 12);
    if (*(this + 13) == v16)
    {
      v44 = (this + 40);
      if (*(this + 63) < 0)
      {
        v44 = *v44;
      }

      caulk::make_string(&v46, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v44, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, &v46, off_1E8337C78);
    }

    v17 = *(this + 9);
    if (*(this + 10) == v17)
    {
      v45 = (this + 40);
      if (*(this + 63) < 0)
      {
        v45 = *v45;
      }

      caulk::make_string(&v46, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v45, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, &v46, off_1E8337C60);
    }

    result = AudioDSPGraph::Buffer::copyFrom(*(*(v16 + 16) + 56), *(*(v17 + 16) + 56));
  }

  v33 = *(this + 9);
  if (*(this + 10) == v33)
  {
    v41 = (this + 40);
    if (*(this + 63) < 0)
    {
      v41 = *v41;
    }

    caulk::make_string(&v46, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v19, v41, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v46, off_1E8337C60);
  }

  v34 = *(this + 12);
  v35 = *(this + 13);
  if (v34 != v35)
  {
    v36 = *(*(v33 + 16) + 56);
    do
    {
      v37 = *(*(v34 + 16) + 56);
      v38 = *(v36 + 8);
      v39 = *(v36 + 24);
      v40 = *(v36 + 40);
      *(v37 + 56) = *(v36 + 56);
      *(v37 + 40) = v40;
      *(v37 + 24) = v39;
      *(v37 + 8) = v38;
      *(v37 + 72) = 0;
      v34 += 32;
    }

    while (v34 != v35);
  }

  *(this + 198) = v3;
  return result;
}

void sub_1C92228B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::DelayBox::setProperty(AudioDSPGraph::Boxes::DelayBox *this, int a2, int a3, unsigned int a4, int a5, unsigned int *a6)
{
  if (a2 != 64000 || (a4 | a3) != 0)
  {
    return AudioDSPGraph::Box::setProperty(this, a2, a3, a4, a5, a6);
  }

  v8 = *(this + 2);
  if (v8 && (*(v8 + 922) & 1) != 0)
  {
    return 4294956447;
  }

  if (a5 != 4)
  {
    return 4294956445;
  }

  if (!a6)
  {
    return 4294967246;
  }

  v9 = 0;
  v10 = *a6;
  *(this + 196) = *a6;
  if (v10 >= *(this + 197))
  {
    v10 = *(this + 197);
  }

  *(this + 197) = v10;
  return v9;
}

void AudioDSPGraph::Boxes::DelayBox::getProperty(AudioDSPGraph::Boxes::DelayBox *this, int a2, uint64_t a3, uint64_t a4, unsigned int *a5, __n128 *a6, __n128 a7)
{
  if (a2 == 64000 && (a4 | a3) == 0)
  {
    if (*a5 == 4)
    {
      if (a6)
      {
        a6->n128_u32[0] = *(this + 196);
      }
    }
  }

  else
  {
    AudioDSPGraph::Box::getProperty(this, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t AudioDSPGraph::Boxes::DelayBox::getPropertyInfo(AudioDSPGraph::Boxes::DelayBox *this, int a2, int a3, int a4)
{
  if (a2 != 64000 || (a4 | a3) != 0)
  {
    return AudioDSPGraph::Box::getPropertyInfo(this, a2, a3);
  }

  result = 0x100000004;
  v7 = *(this + 2);
  if (v7)
  {
    if (*(v7 + 922))
    {
      return 4;
    }
  }

  return result;
}

double AudioDSPGraph::Boxes::DelayBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 4.23899122e175;
  *a1 = xmmword_1C925F310;
  *(a1 + 16) = 0;
  return result;
}

double AudioDSPGraph::Boxes::DelayBox::getParameterInfo@<D0>(int a1@<W1>, int a2@<W2>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v3 = -10866;
  }

  else
  {
    if (!a2)
    {
      *a3 = *"delay samples";
      *(a3 + 16) = unk_1C925F6EC;
      *(a3 + 32) = xmmword_1C925F6FC;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0;
      *(a3 + 72) = @"delay samples";
      *(a3 + 80) = 5;
      *(a3 + 84) = 0x4974240000000000;
      *(a3 + 92) = 1065353216;
      *&result = 3355443200;
      *(a3 + 96) = 3355443200;
      *(a3 + 104) = 1;
      return result;
    }

    v3 = -10878;
  }

  *a3 = v3;
  *(a3 + 104) = 0;
  return result;
}

void AudioDSPGraph::Boxes::DelayBox::getParameterList(int a1@<W1>, uint64_t *a2@<X8>)
{
  if (!a1)
  {
    v5[0] = v2;
    v5[1] = v3;
    v4 = 0;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v4, v5, 1uLL);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

float AudioDSPGraph::Boxes::DelayBox::getParameter@<S0>(AudioDSPGraph::Boxes::DelayBox *this@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (a3)
  {
    LODWORD(v7) = -10866;
    v5 = off_1E83358F8;
    goto LABEL_4;
  }

  if (a2)
  {
    LODWORD(v7) = -10878;
    v5 = off_1E8334BA8;
LABEL_4:
    *(&v7 + 1) = v5;
    v8 = 0;
    *a5 = v7;
    *(a5 + 16) = 0;
    v9 = 0;
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;
    AudioDSPGraph::Error::~Error(&v7);
    return result;
  }

  if (a4)
  {
    LODWORD(v7) = -10877;
    v5 = off_1E8335910;
    goto LABEL_4;
  }

  result = *(this + 197);
  *a5 = result;
  *(a5 + 32) = 1;
  return result;
}

void AudioDSPGraph::Boxes::DelayBox::setParameter(AudioDSPGraph::Boxes::DelayBox *this@<X0>, float a2@<S0>, int a3@<W1>, int a4@<W2>, int a5@<W3>, uint64_t a6@<X8>)
{
  if (a4)
  {
    LODWORD(v8) = -10866;
    v6 = off_1E83358B0;
    goto LABEL_4;
  }

  if (a3)
  {
    LODWORD(v8) = -10878;
    v6 = off_1E8334BC0;
LABEL_4:
    *(&v8 + 1) = v6;
    v9 = 0;
    *a6 = v8;
    *(a6 + 16) = 0;
    v10 = 0;
    *(a6 + 24) = 0;
    *(a6 + 32) = 0;
    AudioDSPGraph::Error::~Error(&v8);
    return;
  }

  if (a5)
  {
    LODWORD(v8) = -10877;
    v6 = off_1E83358C8;
    goto LABEL_4;
  }

  v7 = llroundf(a2);
  if (HIDWORD(v7))
  {
    LODWORD(v8) = -66743;
    v6 = off_1E83358E0;
    goto LABEL_4;
  }

  AudioDSPGraph::Boxes::DelayBox::setDelayFrames(a6, this, v7);
}

void AudioDSPGraph::Boxes::DelayBox::setDelayFrames(AudioDSPGraph::Boxes::DelayBox *this, uint64_t a2, unsigned int a3)
{
  v5 = *(a2 + 16);
  if (v5 && *(v5 + 922) == 1)
  {
    if (*(a2 + 784) < a3)
    {
      v10 = v3;
      v11 = v4;
      LODWORD(v7) = 1919837985;
      *(&v7 + 1) = off_1E8335898;
      v8 = 0;
      *this = v7;
      *(this + 2) = "delay value exceeds current maximum";
      v9 = 0;
      *(this + 6) = 0;
      *(this + 32) = 0;
      AudioDSPGraph::Error::~Error(&v7);
      return;
    }

    *(a2 + 788) = a3;
  }

  else
  {
    *(a2 + 788) = a3;
    v6 = *(a2 + 784);
    if (v6 <= a3)
    {
      v6 = a3;
    }

    *(a2 + 784) = v6;
  }

  *(this + 32) = 1;
}

unint64_t AudioDSPGraph::Boxes::DelayBox::selfLatencyInTicks(AudioDSPGraph::Boxes::DelayBox *this, const char *a2)
{
  v2 = *(this + 12);
  if (*(this + 13) == v2)
  {
    v4 = (this + 40);
    if (*(this + 63) < 0)
    {
      v4 = *v4;
    }

    caulk::make_string(&v5, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v4, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v5, off_1E8337C78);
  }

  return *(*(this + 2) + 848) / **(*(v2 + 16) + 120) * *(this + 197);
}

void sub_1C9222E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Boxes::DelayBox::~DelayBox(AudioDSPGraph::Boxes::DelayBox *this)
{
  *this = &unk_1F48CFF48;
  AudioDSPGraph::SimpleABL::free((this + 768));
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48CFF48;
  AudioDSPGraph::SimpleABL::free((this + 768));

  AudioDSPGraph::Box::~Box(this);
}

uint64_t AudioDSPGraph::Boxes::DelayBox::DelayBox(uint64_t a1, uint64_t a2, int a3)
{
  *__p = *a2;
  v7 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  AudioDSPGraph::Box::Box(a1, __p, 1u, 1u);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F48CFF48;
  *(a1 + 768) = 0;
  *(a1 + 776) = 0;
  *(a1 + 784) = a3;
  *(a1 + 788) = a3;
  *(a1 + 792) = 0u;
  return a1;
}

void sub_1C9222FB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 AudioDSPGraph::Boxes::DenormalEliminatorBox::process(AudioDSPGraph::Boxes::DenormalEliminatorBox *this, const char *a2, BOOL a3)
{
  v4 = atomic_load(this + 764);
  if (v4)
  {
    v5 = *(this + 9);
    if (*(this + 10) == v5)
    {
      v26 = (this + 40);
      if (*(this + 63) < 0)
      {
        v26 = *v26;
      }

      caulk::make_string(&v30, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v26, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, &v30, off_1E8337C60);
    }

    v6 = *(this + 12);
    if (*(this + 13) == v6)
    {
      v28 = (this + 40);
      if (*(this + 63) < 0)
      {
        v28 = *v28;
      }

      caulk::make_string(&v30, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v28, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, &v30, off_1E8337C78);
    }

    AudioDSPGraph::SimpleABL::copy((*(*(v5 + 16) + 56) + 80), *(*(*(v6 + 16) + 56) + 80));
  }

  else
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0));
    _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0), StatusReg | 0x1000000);
    v9 = *(this + 12);
    if (*(this + 13) == v9)
    {
      v27 = (this + 40);
      if (*(this + 63) < 0)
      {
        v27 = *v27;
      }

      caulk::make_string(&v30, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v27, 0, 0);
      AudioDSPGraph::ThrowException(1919837985, &v30, off_1E8337C78);
    }

    v10 = **(*(*(v9 + 16) + 56) + 80);
    if (v10)
    {
      v11 = a2;
      v12 = 16;
      do
      {
        v29 = 0;
        v13 = *(this + 9);
        if (*(this + 10) == v13)
        {
          v23 = (this + 40);
          if (*(this + 63) < 0)
          {
            v23 = *v23;
          }

          caulk::make_string(&v30, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v23, 0, 0);
          AudioDSPGraph::ThrowException(1919837985, &v30, off_1E8337C60);
        }

        v14 = *(this + 12);
        if (*(this + 13) == v14)
        {
          v24 = (this + 40);
          if (*(this + 63) < 0)
          {
            v24 = *v24;
          }

          caulk::make_string(&v30, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", a2, v24, 0, 0);
          AudioDSPGraph::ThrowException(1919837985, &v30, off_1E8337C78);
        }

        MEMORY[0x1CCA853C0](*(*(*(*(v13 + 16) + 56) + 80) + v12), 1, &v29, *(*(*(*(v14 + 16) + 56) + 80) + v12), 1, v11);
        v12 += 16;
        --v10;
      }

      while (v10);
    }

    _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0), StatusReg);
  }

  v15 = *(this + 9);
  if (*(this + 10) == v15)
  {
    v25 = (this + 40);
    if (*(this + 63) < 0)
    {
      v25 = *v25;
    }

    caulk::make_string(&v30, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", a2, v25, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v30, off_1E8337C60);
  }

  v16 = *(this + 12);
  v17 = *(this + 13);
  if (v16 != v17)
  {
    v18 = *(*(v15 + 16) + 56);
    v19 = *(v18 + 72);
    do
    {
      v20 = *(*(v16 + 16) + 56);
      result = *(v18 + 8);
      v21 = *(v18 + 24);
      v22 = *(v18 + 40);
      *(v20 + 56) = *(v18 + 56);
      *(v20 + 40) = v22;
      *(v20 + 24) = v21;
      *(v20 + 8) = result;
      *(v20 + 72) = v19;
      v16 += 32;
    }

    while (v16 != v17);
  }

  return result;
}

void sub_1C92232E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::DenormalEliminatorBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 6.02437133e175;
  *a1 = xmmword_1C925F340;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::DenormalEliminatorBox::~DenormalEliminatorBox(AudioDSPGraph::Boxes::DenormalEliminatorBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

void AudioDSPGraph::Error::throwException(AudioDSPGraph::Error *this)
{
  v2 = *this;
  v3 = *(this + 2);
  if (*(this + 6))
  {
    if (v3)
    {
      (*(*v3 + 16))(&v4, *(this + 2));
      if (v6)
      {
        goto LABEL_8;
      }

LABEL_6:
      std::string::basic_string[abi:ne200100]<0>(&v7, &byte_1C9279A7A);
      goto LABEL_9;
    }
  }

  else if (v3)
  {
    std::string::basic_string[abi:ne200100]<0>(&v9, v3);
    v4 = v9;
    v5 = v10;
    v6 = 1;
LABEL_8:
    v7 = v4;
    v8 = v5;
    v5 = 0;
    v4 = 0uLL;
LABEL_9:
    AudioDSPGraph::ThrowException(v2, &v7, *(this + 1));
  }

  LOBYTE(v4) = 0;
  v6 = 0;
  goto LABEL_6;
}

void sub_1C9223490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::ThrowException(int a1, uint64_t *a2, uint64_t a3)
{
  exception = __cxa_allocate_exception(0x30uLL);
  v7 = *a2;
  *&v9 = a2[1];
  *(&v9 + 7) = *(a2 + 15);
  v8 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  *exception = &unk_1F48D0448;
  *(exception + 2) = a1;
  *(exception + 2) = v7;
  *(exception + 3) = v9;
  *(exception + 31) = *(&v9 + 7);
  exception[39] = v8;
  *(exception + 5) = a3;
}

void AudioDSPGraph::Exception::~Exception(std::exception *this)
{
  if (SHIBYTE(this[4].__vftable) < 0)
  {
    operator delete(this[2].__vftable);
  }

  std::exception::~exception(this);
}

{
  if (SHIBYTE(this[4].__vftable) < 0)
  {
    operator delete(this[2].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x1CCA84AE0);
}

uint64_t AudioDSPGraph::Exception::what(AudioDSPGraph::Exception *this)
{
  result = this + 16;
  if (*(this + 39) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t AudioDSPGraph::FileInjector::print(uint64_t result, void *a2, int a3, uint64_t a4)
{
  if (a3 >= 5)
  {
    v4 = a4;
    v6 = result;
    (*(*result + 32))(result, a2, a4, 1);
    AudioDSPGraph::printi(a2, v4 + 4, "wire %p\n", *(v6 + 8));
  }

  return result;
}

void AudioDSPGraph::FileInjector::~FileInjector(void **this)
{
  *this = &unk_1F48D0470;
  v2 = this + 10;
  std::vector<std::unique_ptr<TimeFreqConverter>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  AudioDSPGraph::SimpleABL::free((this + 2));

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D0470;
  v2 = this + 10;
  std::vector<std::unique_ptr<TimeFreqConverter>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  AudioDSPGraph::SimpleABL::free((this + 2));
}

void std::vector<std::unique_ptr<TimeFreqConverter>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::unique_ptr<TimeFreqConverter>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::unique_ptr<TimeFreqConverter>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 56);
    if (v3)
    {
      MEMORY[0x1CCA84AB0](v3, 0x1000C8052888210);
    }

    v4 = *(v2 + 64);
    if (v4)
    {
      MEMORY[0x1CCA84AB0](v4, 0x1000C8052888210);
    }

    v5 = *(v2 + 168);
    if (v5)
    {
      *(v2 + 176) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 144);
    if (v6)
    {
      *(v2 + 152) = v6;
      operator delete(v6);
    }

    v7 = *(v2 + 120);
    if (v7)
    {
      *(v2 + 128) = v7;
      operator delete(v7);
    }

    v8 = *(v2 + 96);
    if (v8)
    {
      *(v2 + 104) = v8;
      operator delete(v8);
    }

    v9 = *(v2 + 72);
    if (v9)
    {
      *(v2 + 80) = v9;
      operator delete(v9);
    }

    if (*(v2 + 48) == 1)
    {
      v10 = *(v2 + 40);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }
    }

    MEMORY[0x1CCA84AE0](v2, 0x10A2C400E3D031BLL);
  }

  return a1;
}

uint64_t AudioDSPGraph::FileRecorder::print(uint64_t result, void *a2, int a3, uint64_t a4)
{
  if (a3 >= 5)
  {
    v4 = a4;
    v6 = result;
    (*(*result + 32))(result, a2, a4, 1);
    AudioDSPGraph::printi(a2, v4 + 4, "wire %p\n", *(v6 + 8));
  }

  return result;
}

void AudioDSPGraph::FileRecorder::~FileRecorder(void **this)
{
  *this = &unk_1F48D04A8;
  AudioDSPGraph::SimpleABL::free((this + 9));
  v3 = this + 6;
  std::vector<std::unique_ptr<TimeFreqConverter>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = this[2];
  this[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D04A8;
  AudioDSPGraph::SimpleABL::free((this + 9));
  v3 = this + 6;
  std::vector<std::unique_ptr<TimeFreqConverter>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = this[2];
  this[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

const void **std::vector<std::unique_ptr<TimeFreqConverter>>::reserve(const void **result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    std::allocator<std::unique_ptr<ausdk::AUElement>>::allocate_at_least[abi:ne200100](a2);
  }

  return result;
}

uint64_t std::__split_buffer<std::unique_ptr<TimeFreqConverter>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<TimeFreqConverter>::~unique_ptr[abi:ne200100]((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

unint64_t caulk::numeric::exceptional_cast<unsigned int,unsigned long long>(unint64_t result)
{
  if (HIDWORD(result))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception, "numerical cast overflow: could not retain value in conversion type");
  }

  return result;
}

unint64_t caulk::numeric::exceptional_mul<unsigned int>(unsigned int a1, unsigned int a2)
{
  result = a1 * a2;
  if ((result & 0xFFFFFFFF00000000) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception, "arithmetic multiplication overflow");
  }

  return result;
}

std::runtime_error *std::overflow_error::overflow_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55C0] + 16);
  return result;
}

const void **applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

OpaqueExtAudioFile *std::unique_ptr<OpaqueExtAudioFile,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueExtAudioFile*,&(ExtAudioFileDispose)>>::reset[abi:ne200100](OpaqueExtAudioFile **a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    return ExtAudioFileDispose(result);
  }

  return result;
}

void applesauce::CF::URLRef::~URLRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void AudioDSPGraph::FileInjector::inject(AudioDSPGraph::FileInjector *this, unsigned int a2)
{
  v4 = *(this + 8);
  if (!v4)
  {
    kdebug_trace();
    v4 = *(this + 8);
  }

  v5 = *(this + 10);
  v6 = *(this + 1);
  if (v5 <= v4)
  {
    v11 = v6[7];
    v12 = *(v11 + 80);
    if (v12 && *v12)
    {
      v13 = 0;
      v14 = *(this + 9) * a2;
      v15 = 4;
      do
      {
        bzero(*&v12[v15], v14);
        ++v13;
        v12 = *(v11 + 80);
        v15 += 4;
      }

      while (v13 < *v12);
    }
  }

  else
  {
    v7 = v6[15];
    if (*(v7 + 8) == 1718773105)
    {
      if (*(v7 + 40) != a2)
      {
        std::string::basic_string[abi:ne200100]<0>(v27, "inNumFrames != blockSize.");
        AudioDSPGraph::ThrowException(1718188065, v27, off_1E83359A0);
      }

      v8 = *(this + 2);
      v9 = v6[4];
      if (v9)
      {
        v10 = *(*(*(v9 + 16) + 8) + 24);
      }

      else
      {
        v10 = 0;
      }

      v18 = *(v10 + 268);
      if (v18 == 1)
      {
        v18 = *(v10 + 272);
      }

      if (*v8)
      {
        v19 = 0;
        v20 = *(v6[7] + 80);
        v21 = *(this + 9) * v4;
        v22 = v18;
        v23 = 4;
        do
        {
          v24 = (*(v20 + v23 * 4) + 4 * v22);
          v26.realp = *(v20 + v23 * 4);
          v26.imagp = v24;
          TimeFreqConverter::Analyze(*(*(this + 10) + 8 * v19++), (*&v8[v23] + v21), &v26);
          v23 += 4;
        }

        while (v19 < *v8);
        v4 = *(this + 8);
        v5 = *(this + 10);
      }

      v25 = v4 + a2;
      *(this + 8) = v25;
      if (v25 == v5)
      {
        kdebug_trace();
        v25 = *(this + 8);
        v5 = *(this + 10);
      }

      if (v25 >= v5 && (*(this + 72) & 1) != 0)
      {
LABEL_31:
        *(this + 8) = 0;
      }
    }

    else
    {
      if (v5 - v4 < a2)
      {
        a2 = v5 - v4;
      }

      AudioDSPGraph::SimpleABL::copy(this + 4, (v6[7] + 80), *(this + 9) * v4, 0, *(this + 9) * a2, 1);
      v16 = *(this + 8) + a2;
      *(this + 8) = v16;
      v17 = *(this + 10);
      if (v16 == v17)
      {
        kdebug_trace();
        v16 = *(this + 8);
        v17 = *(this + 10);
      }

      if (v16 >= v17 && *(this + 72) == 1)
      {
        goto LABEL_31;
      }
    }
  }
}

void sub_1C9224050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *___Z16NewAudioCapturer20AudioCapturerOptionsPKcS1_jPK27AudioStreamBasicDescriptionRS3__block_invoke()
{
  result = dlopen("/usr/local/lib/libAudioDiagnostics.dylib", 5);
  if (result)
  {
    result = dlsym(result, "NewAudioCapturerImpl");
    if (result)
    {
      NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction = result;
    }
  }

  return result;
}

uint64_t AudioDSPGraph::FileRecorder::record(uint64_t this)
{
  if (*(this + 88) == 1)
  {
    v1 = this;
    this = *(this + 16);
    if (this)
    {
      v2 = v1[1];
      v3 = *(v2 + 56);
      if (v1[6] == v1[7])
      {
        v6 = *(*this + 96);
      }

      else
      {
        v4 = *(v2 + 32);
        if (v4)
        {
          v5 = *(*(*(v4 + 16) + 8) + 24);
        }

        else
        {
          v5 = 0;
        }

        v7 = *(v5 + 268);
        if (v7 == 1)
        {
          v7 = *(v5 + 272);
        }

        v8 = *(v3 + 80);
        v9 = v1[9];
        if (*v8)
        {
          v10 = 0;
          v11 = v7;
          v12 = 4;
          do
          {
            TimeFreqConverter::Synthesize(*(v1[6] + 8 * v10++), *&v8[v12], (*&v8[v12] + 4 * v11), *(v9 + v12 * 4));
            v12 += 4;
          }

          while (v10 < *v8);
          this = v1[2];
        }

        v6 = *(*this + 96);
      }

      return v6();
    }
  }

  return this;
}

float AudioDSPGraph::Boxes::GainBox::reset(AudioDSPGraph::Boxes::GainBox *this)
{
  v1 = 1.0;
  if (*(this + 768))
  {
    v1 = 0.0;
  }

  result = *(this + 191) * v1;
  *(this + 199) = result;
  *(this + 402) = 257;
  return result;
}

uint64_t AudioDSPGraph::Boxes::GainBox::initialize(AudioDSPGraph::Boxes::GainBox *this)
{
  result = AudioDSPGraph::Box::initialize(this);
  v5 = *(this + 9);
  if (*(this + 10) == v5)
  {
    v42 = (this + 40);
    if (*(this + 63) < 0)
    {
      v42 = *v42;
    }

    caulk::make_string(&v51, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v3, v42, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v51, off_1E8337C60);
  }

  v6 = *(this + 12);
  if (*(this + 13) == v6)
  {
    v43 = (this + 40);
    if (*(this + 63) < 0)
    {
      v43 = *v43;
    }

    caulk::make_string(&v51, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v3, v43, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &v51, off_1E8337C78);
  }

  v7 = *(*(v5 + 16) + 120);
  v8 = *(*(v6 + 16) + 120);
  *(this + 805) = 1;
  v9 = *(v7 + 8);
  if (v9 == 1819304813)
  {
    v10 = *(v7 + 12);
    if ((v10 & 1) != 0 && *(v7 + 32) == 32)
    {
      v11 = 32;
      goto LABEL_10;
    }

LABEL_85:
    std::string::basic_string[abi:ne200100]<0>(v50, "GainBox input format must be non-interleaved float or 'freq'");
    AudioDSPGraph::ThrowException(1718449215, v50, off_1E83359D0);
  }

  if (v9 != 1718773105 || *(v7 + 32) != 64)
  {
    goto LABEL_85;
  }

  v10 = *(v7 + 12);
  v11 = 64;
LABEL_10:
  if ((v10 & 0x20) == 0)
  {
    goto LABEL_85;
  }

  v12 = *(v8 + 8);
  if (v12 == 1819304813)
  {
    v13 = *(v8 + 12);
    if ((v13 & 1) == 0)
    {
      goto LABEL_86;
    }

    v14 = *(v8 + 32);
    if (v14 != 32)
    {
      goto LABEL_86;
    }
  }

  else
  {
    if (v12 != 1718773105 || *(v8 + 32) != 64)
    {
LABEL_86:
      std::string::basic_string[abi:ne200100]<0>(v49, "GainBox output format must be non-interleaved float or 'freq'");
      AudioDSPGraph::ThrowException(1718449215, v49, off_1E83359E8);
    }

    v13 = *(v8 + 12);
    v14 = 64;
  }

  if ((v13 & 0x20) == 0)
  {
    goto LABEL_86;
  }

  v15 = *v7;
  if (*v7 != 0.0)
  {
    v4 = *v8;
    if (*v8 != 0.0 && v15 != v4)
    {
      goto LABEL_78;
    }
  }

  if (v9 != v12)
  {
    goto LABEL_78;
  }

  v17 = *(v7 + 16);
  if (v17)
  {
    v18 = *(v8 + 16);
    if (v18 && v17 != v18)
    {
      goto LABEL_78;
    }
  }

  v20 = *(v7 + 20);
  if (v20)
  {
    v21 = *(v8 + 20);
    if (v21)
    {
      if (v20 != v21)
      {
        goto LABEL_78;
      }
    }
  }

  v22 = *(v7 + 24);
  if (v22)
  {
    v23 = *(v8 + 24);
    if (v23)
    {
      if (v22 != v23)
      {
        goto LABEL_78;
      }
    }
  }

  v24 = *(v7 + 28);
  if (v24)
  {
    result = *(v8 + 28);
    if (v24 != result && result != 0)
    {
      goto LABEL_78;
    }
  }

  if (v11 != v14)
  {
    goto LABEL_78;
  }

  if (v10 && v13)
  {
    if (v9 == 1819304813)
    {
      v26 = 8 * v22;
      v27 = v10 | 8;
      if (8 * v22 != v11)
      {
        v27 = v10;
      }

      if (v22)
      {
        v28 = v27;
      }

      else
      {
        v28 = v10;
      }

      v10 &= ~0x80000000;
      v29 = v28 & 0x7FFFFFEF;
      if (v26 == v11)
      {
        v10 = v29;
      }

      if (v10)
      {
        v10 &= 0x7FFFFFFBu;
      }

      result = v10 & 0xFFFFFFDF;
      if (v24 == 1)
      {
        v10 &= ~0x20u;
      }

      if (!v10)
      {
        v10 = 0x80000000;
      }

      if (v12 == 1819304813)
      {
        v30 = *(v8 + 24);
        result = (8 * v30);
        v31 = v13 | 8;
        if (result != v14)
        {
          v31 = v13;
        }

        if (v30)
        {
          v32 = v31;
        }

        else
        {
          v32 = v13;
        }

        v33 = v13 & 0x7FFFFFFF;
        v34 = v32 & 0x7FFFFFEF;
        if (result != v14)
        {
          v34 = v33;
        }

        if (v34)
        {
          v34 &= 0x7FFFFFFBu;
        }

        if (*(v8 + 28) == 1)
        {
          v34 &= 0x7FFFFFDFu;
        }

        if (v34)
        {
          v13 = v34;
        }

        else
        {
          v13 = 0x80000000;
        }
      }
    }

    if (v10 != v13)
    {
LABEL_78:
      v35 = v8;
      CA::StreamDescription::AsString(&v45, v7, v15, *&v4);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v46, "GainBox input and output formats don't match (", &v45);
      *&v36 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v47, &v46, " != ").n128_u64[0];
      CA::StreamDescription::AsString(&v44, v35, v36, v37);
      if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = &v44;
      }

      else
      {
        v38 = v44.__r_.__value_.__r.__words[0];
      }

      if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v44.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v44.__r_.__value_.__l.__size_;
      }

      v40 = std::string::append(&v47, v38, size);
      v41 = *&v40->__r_.__value_.__l.__data_;
      v51.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
      *&v51.__r_.__value_.__l.__data_ = v41;
      v40->__r_.__value_.__l.__size_ = 0;
      v40->__r_.__value_.__r.__words[2] = 0;
      v40->__r_.__value_.__r.__words[0] = 0;
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v48, &v51, ")");
      AudioDSPGraph::ThrowException(1718449215, &v48, off_1E8335A00);
    }
  }

  return result;
}

void sub_1C9224638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  if (*(v41 - 41) < 0)
  {
    operator delete(*(v41 - 64));
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::Boxes::GainBox::process(AudioDSPGraph::Boxes::GainBox *this, const char *__N)
{
  v3 = *(this + 9);
  v4 = *(this + 10);
  v5 = v4 - v3;
  if (v4 == v3)
  {
    v50 = (this + 40);
    if (*(this + 63) < 0)
    {
      v50 = *v50;
    }

    caulk::make_string(&__Start, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", __N, v50, v5 >> 5, 0);
    AudioDSPGraph::ThrowException(1919837985, &__Start, off_1E8337C60);
  }

  v6 = *(this + 12);
  v7 = *(this + 13);
  v8 = v7 - v6;
  if (v7 == v6)
  {
    v51 = (this + 40);
    if (*(this + 63) < 0)
    {
      v51 = *v51;
    }

    caulk::make_string(&__Start, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", __N, v51, v8 >> 5, 0);
    AudioDSPGraph::ThrowException(1919837985, &__Start, off_1E8337C78);
  }

  v9 = *(v3 + 16);
  v10 = *(v9 + 56);
  v11 = *(v10 + 80);
  v12 = *(v6 + 16);
  v13 = *(*(v12 + 56) + 80);
  v14 = *(v12 + 120);
  v15 = *(v14 + 8);
  v16 = *v11;
  if (*(this + 804) == 1)
  {
    *(this + 804) = 0;
  }

  v17 = (4 * __N) << (v15 == 1718773105);
  v18 = *(this + 805);
  if (v18 == 1)
  {
    v19 = 1.0;
    if (*(this + 768))
    {
      v19 = 0.0;
    }

    *(this + 200) = *(this + 191) * v19;
  }

  if ((*(v10 + 72) & 0x10) == 0)
  {
    v20 = __N;
    v21 = *(this + 199);
    v54 = (this + 800);
    v22 = *(this + 200);
    if (v21 == v22)
    {
      if (v16)
      {
        v23 = (v13 + 16);
        v24 = v11 + 4;
        do
        {
          v25 = *v24;
          v26 = *v23;
          MEMORY[0x1CCA853E0](*v24, 1, v54, *v23, 1, v20);
          if (v15 == 1718773105)
          {
            MEMORY[0x1CCA853E0](v25 + 4 * v20, 1, v54, v26 + 4 * v20, 1, v20);
          }

          *(v23 - 1) = v17;
          v23 += 2;
          v24 += 2;
          --v16;
        }

        while (v16);
      }

      goto LABEL_45;
    }

    if ((v18 & 1) == 0)
    {
      v29 = *(this + 198);
      goto LABEL_28;
    }

    if ((v8 & 0x1FFFFFFFE0) == 0)
    {
      if ((v5 & 0x1FFFFFFFE0) == 0)
      {
        v28 = 1.0;
        goto LABEL_26;
      }

      v14 = *(v9 + 120);
    }

    v28 = *v14;
LABEL_26:
    v29 = (v22 - v21) / (*(this + 97) * v28);
    *(this + 198) = v29;
LABEL_28:
    *(this + 805) = 0;
    v30 = v21 + (v29 * __N);
    if ((v29 <= 0.0 || v30 <= v22) && (v29 >= 0.0 || v30 >= v22))
    {
      if (v16)
      {
        v36 = (v13 + 16);
        v37 = (v11 + 4);
        do
        {
          v38 = *v37;
          v39 = *v36;
          LODWORD(__Start.__r_.__value_.__l.__data_) = *(this + 199);
          vDSP_vrampmul(v38, 1, &__Start, this + 198, v39, 1, v20);
          if (v15 == 1718773105)
          {
            LODWORD(__Start.__r_.__value_.__l.__data_) = *(this + 199);
            vDSP_vrampmul(&v38[v20], 1, &__Start, this + 198, &v39[v20], 1, v20);
          }

          v36 += 2;
          v37 += 2;
          --v16;
        }

        while (v16);
      }
    }

    else if (v16)
    {
      v31 = fabsf((v22 - v21) / v29);
      v53 = (__N - v31);
      v32 = (v13 + 16);
      v33 = (v11 + 4);
      do
      {
        v34 = *v33;
        v35 = *v32;
        LODWORD(__Start.__r_.__value_.__l.__data_) = *(this + 199);
        vDSP_vrampmul(v34, 1, &__Start, this + 198, v35, 1, v31);
        MEMORY[0x1CCA853E0](&v34[v31], 1, v54, &v35[v31], 1, v53);
        if (v15 == 1718773105)
        {
          LODWORD(__Start.__r_.__value_.__l.__data_) = *(this + 199);
          vDSP_vrampmul(&v34[v20], 1, &__Start, this + 198, &v35[v20], 1, v31);
          MEMORY[0x1CCA853E0](&v34[v31 + v20], 1, v54, &v35[v31 + v20], 1, v53);
        }

        v32 += 2;
        v33 += 2;
        --v16;
      }

      while (v16);
      v30 = *v54;
    }

    else
    {
      v30 = v22;
    }

    *(this + 199) = v30;
    goto LABEL_45;
  }

  if (v16)
  {
    v27 = (v13 + 16);
    do
    {
      bzero(*v27, v17);
      *(v27 - 1) = v17;
      v27 += 2;
      --v16;
    }

    while (v16);
  }

LABEL_45:
  if (*(this + 805) == 1)
  {
    v40 = 16 * (*(this + 200) == 0.0);
  }

  else
  {
    v40 = 0;
  }

  v41 = *(this + 9);
  if (*(this + 10) == v41)
  {
    v52 = (this + 40);
    if (*(this + 63) < 0)
    {
      v52 = *v52;
    }

    caulk::make_string(&__Start, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", __N, v52, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &__Start, off_1E8337C60);
  }

  v42 = *(this + 12);
  v43 = *(this + 13);
  if (v42 != v43)
  {
    v44 = *(*(v41 + 16) + 56);
    v45 = *(v44 + 72) | v40;
    do
    {
      v46 = *(*(v42 + 16) + 56);
      v47 = *(v44 + 8);
      v48 = *(v44 + 24);
      v49 = *(v44 + 40);
      *(v46 + 56) = *(v44 + 56);
      *(v46 + 40) = v49;
      *(v46 + 24) = v48;
      *(v46 + 8) = v47;
      *(v46 + 72) = v45;
      v42 += 32;
    }

    while (v42 != v43);
  }

  if (*(this + 199) == *(this + 200))
  {
    *(this + 805) = 1;
  }
}

void sub_1C9224C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Boxes::GainBox::setProperty(AudioDSPGraph::Boxes::GainBox *this, int a2, int a3, unsigned int a4, int a5, double *a6)
{
  if (a2 != 3098)
  {
    return AudioDSPGraph::Box::setProperty(this, a2, a3, a4, a5, a6);
  }

  if (a5 != 8)
  {
    return 561211770;
  }

  if (a3)
  {
    return 4294956430;
  }

  v8 = *a6;
  *(this + 97) = *a6;
  v9 = *(this + 98);
  v6 = 0;
  if (v8 < v9)
  {
    *(this + 97) = v9;
  }

  return v6;
}

double AudioDSPGraph::Boxes::GainBox::getProperty(AudioDSPGraph::Boxes::GainBox *this, int a2, uint64_t a3, uint64_t a4, unsigned int *a5, __n128 *a6, __n128 a7)
{
  if (a2 == 3098)
  {
    if (*a5 == 8 && a6 && !a3)
    {
      a7.n128_u64[0] = *(this + 97);
      a6->n128_u64[0] = a7.n128_u64[0];
    }
  }

  else
  {
    a7.n128_u64[0] = AudioDSPGraph::Box::getProperty(this, a2, a3, a4, a5, a6, a7).n128_u64[0];
  }

  return a7.n128_f64[0];
}

unint64_t AudioDSPGraph::Boxes::GainBox::getPropertyInfo(AudioDSPGraph::Boxes::GainBox *this, int a2, int a3)
{
  if (a2 == 3098)
  {
    v3 = 8;
    if (a3)
    {
      v3 = 4294956430;
      v4 = 0;
    }

    else
    {
      v4 = 0x100000000;
    }
  }

  else
  {
    PropertyInfo = AudioDSPGraph::Box::getPropertyInfo(this, a2, a3);
    v4 = PropertyInfo & 0xFFFFFFFF00000000;
    v3 = PropertyInfo;
  }

  return v4 | v3;
}

uint64_t AudioDSPGraph::Boxes::GainBox::getParameterInfo@<X0>(uint64_t this@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v5 = -10866;
LABEL_3:
    *a4 = v5;
    *(a4 + 104) = 0;
    return this;
  }

  if (a3 == 1)
  {
    *a4 = *"mute";
    *(a4 + 16) = unk_1C925F721;
    *(a4 + 32) = xmmword_1C925F731;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0;
    *(a4 + 72) = @"mute";
    *(a4 + 80) = 2;
    *(a4 + 84) = 0x3F80000000000000;
    *(a4 + 92) = 0;
    *(a4 + 96) = 3355443200;
  }

  else
  {
    if (a3)
    {
      v5 = -10878;
      goto LABEL_3;
    }

    this = (*(*this + 640))(this);
  }

  *(a4 + 104) = 1;
  return this;
}

void AudioDSPGraph::Boxes::GainBox::getParameterList(int a1@<W1>, uint64_t *a2@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v2 = 0x100000000;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v2, &v3, 2uLL);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void AudioDSPGraph::Boxes::GainBox::getParameter(AudioDSPGraph::Boxes::GainBox *this@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (a3)
  {
    LODWORD(v8) = -10866;
    v7 = off_1E8335A60;
  }

  else if (a2 == 1)
  {
    if (!a4)
    {
      v6 = 0.0;
      if (*(this + 768))
      {
        v6 = 1.0;
      }

      goto LABEL_9;
    }

    LODWORD(v8) = -10877;
    v7 = off_1E8335A90;
  }

  else if (a2)
  {
    LODWORD(v8) = -10878;
    v7 = off_1E8334BA8;
  }

  else
  {
    if (!a4)
    {
      (*(*this + 632))(this, *(this + 191));
LABEL_9:
      *a5 = v6;
      *(a5 + 32) = 1;
      return;
    }

    LODWORD(v8) = -10877;
    v7 = off_1E8335A78;
  }

  *(&v8 + 1) = v7;
  v9 = 0;
  *a5 = v8;
  *(a5 + 16) = 0;
  v10 = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  AudioDSPGraph::Error::~Error(&v8);
}

void AudioDSPGraph::Boxes::GainBox::setParameter(AudioDSPGraph::Boxes::GainBox *this@<X0>, float a2@<S0>, int a3@<W1>, int a4@<W2>, int a5@<W3>, uint64_t a6@<X8>)
{
  if (a4)
  {
    LODWORD(v15) = -10866;
    v14 = off_1E8335A18;
  }

  else if (a3 == 1)
  {
    if (!a5)
    {
      v10 = a2 != 0.0;
      *(this + 768) = a2 != 0.0;
      v11 = *(this + 2);
      if (!v11 || *(v11 + 922) != 1 || *(this + 804) == 1)
      {
        v8 = *(this + 191);
        goto LABEL_14;
      }

LABEL_17:
      *(a6 + 32) = 1;
      return;
    }

    LODWORD(v15) = -10877;
    v14 = off_1E8335A48;
  }

  else if (a3)
  {
    LODWORD(v15) = -10878;
    v14 = off_1E8334BC0;
  }

  else
  {
    if (!a5)
    {
      v8 = (*(*this + 624))(this, a2);
      *(this + 191) = v8;
      v9 = *(this + 2);
      if (!v9 || *(v9 + 922) != 1 || *(this + 804) == 1)
      {
        v10 = *(this + 768);
LABEL_14:
        v12 = 1.0;
        if (v10)
        {
          v12 = 0.0;
        }

        v13 = v8 * v12;
        *(this + 199) = v13;
        *(this + 200) = v13;
        goto LABEL_17;
      }

      goto LABEL_17;
    }

    LODWORD(v15) = -10877;
    v14 = off_1E8335A30;
  }

  *(&v15 + 1) = v14;
  v16 = 0;
  *a6 = v15;
  *(a6 + 16) = 0;
  v17 = 0;
  *(a6 + 24) = 0;
  *(a6 + 32) = 0;
  AudioDSPGraph::Error::~Error(&v15);
}

double AudioDSPGraph::Boxes::LinearGainBox::getPolicyGainParameterInfo@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 84) = --2.00000143;
  *(a1 + 80) = 14;
  *a1 = *"gain";
  *(a1 + 16) = unk_1C925F819;
  *(a1 + 32) = xmmword_1C925F829;
  *(a1 + 48) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 72) = @"gain";
  *(a1 + 92) = 1065353216;
  *(a1 + 96) = -939524096;
  return result;
}

double AudioDSPGraph::Boxes::LinearGainBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 9.69732525e189;
  *a1 = xmmword_1C925F230;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::LinearGainBox::~LinearGainBox(AudioDSPGraph::Boxes::LinearGainBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

double AudioDSPGraph::Boxes::DecibelGainBox::getPolicyGainParameterInfo@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 84) = 0x41C00000C3480000;
  *(a1 + 80) = 13;
  *a1 = *"dbgain";
  *(a1 + 16) = unk_1C925F756;
  *(a1 + 32) = xmmword_1C925F766;
  *(a1 + 48) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 72) = @"dbgain";
  *(a1 + 96) = -939524096;
  return result;
}

float AudioDSPGraph::Boxes::DecibelGainBox::convertLinearGainToPolicyGain(AudioDSPGraph::Boxes::DecibelGainBox *this, float a2)
{
  if (a2 < 1.0e-10)
  {
    a2 = 1.0e-10;
  }

  return log10f(a2) * 20.0;
}

double AudioDSPGraph::Boxes::DecibelGainBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 3.64150051e175;
  *a1 = xmmword_1C925F240;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::DecibelGainBox::~DecibelGainBox(AudioDSPGraph::Boxes::DecibelGainBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

void *AudioDSPGraph::Graph::print(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= 1)
  {
    v4 = a4;
    v6 = result;
    (*(*result + 32))(result, a2, a4, 1);
    AudioDSPGraph::printi(a2, v4 + 4, "initialized %d\n", *(v6 + 922));
  }

  return result;
}

void AudioDSPGraph::Graph::~Graph(AudioDSPGraph::Graph *this)
{
  AudioDSPGraph::Graph::~Graph(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48D0CC8;
  AudioDSPGraph::Graph::uninitialize(this);
  if (*(this + 922) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v45, "graph is initialized. uninitialize before unconfiguring");
    AudioDSPGraph::ThrowException(1768843553, v45, off_1E8335DD8);
  }

  for (i = *(this + 4); i; i = *i)
  {
    (*(*i[2] + 608))(i[2]);
  }

  v3 = *(this + 44);
  v4 = *(this + 45);
  if (v3 != v4)
  {
    v5 = *(this + 44);
    do
    {
      v6 = *v5;
      v7 = *(*v5 + 176);
      v8 = *(*v5 + 184);
      while (v7 != v8)
      {
        v9 = *v7++;
        *(v9 + 764) = 0;
      }

      for (j = v6[14]; j; j = *j)
      {
        *(j[2] + 764) = 0;
      }

      v12 = v6[25];
      v11 = v6[26];
      while (v12 != v11)
      {
        v13 = *v12++;
        *(v13 + 764) = 0;
      }

      v5 += 8;
    }

    while (v5 != v4);
  }

  *(this + 45) = v3;
  if (*(this + 42))
  {
    std::__hash_table<std::unique_ptr<AudioDSPGraph::IsoGroup>,std::hash<std::unique_ptr<AudioDSPGraph::IsoGroup>>,std::equal_to<std::unique_ptr<AudioDSPGraph::IsoGroup>>,std::allocator<std::unique_ptr<AudioDSPGraph::IsoGroup>>>::__deallocate_node(*(this + 41));
    *(this + 41) = 0;
    v14 = *(this + 40);
    if (v14)
    {
      for (k = 0; k != v14; ++k)
      {
        *(*(this + 39) + 8 * k) = 0;
      }
    }

    *(this + 42) = 0;
  }

  *(this + 921) = 0;
  for (m = *(this + 4); m; m = *m)
  {
    (*(*m[2] + 552))(m[2]);
  }

  for (n = *(this + 9); n; n = *n)
  {
    v18 = n[2];
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }
  }

  if (*(this + 10))
  {
    v19 = *(this + 9);
    if (v19)
    {
      do
      {
        v20 = *v19;
        operator delete(v19);
        v19 = v20;
      }

      while (v20);
    }

    *(this + 9) = 0;
    v21 = *(this + 8);
    if (v21)
    {
      for (ii = 0; ii != v21; ++ii)
      {
        *(*(this + 7) + 8 * ii) = 0;
      }
    }

    *(this + 10) = 0;
  }

  v23 = *(this + 132);
  if (v23)
  {
    v24 = *(this + 133);
    v25 = *(this + 132);
    if (v24 != v23)
    {
      do
      {
        v26 = *(v24 - 24);
        if (v26)
        {
          v27 = *(v24 - 16);
          v28 = *(v24 - 24);
          if (v27 != v26)
          {
            do
            {
              v29 = *(v27 - 24);
              if (v29)
              {
                *(v27 - 16) = v29;
                operator delete(v29);
              }

              v27 -= 32;
            }

            while (v27 != v26);
            v28 = *(v24 - 24);
          }

          *(v24 - 16) = v26;
          operator delete(v28);
        }

        v30 = *(v24 - 48);
        if (v30)
        {
          *(v24 - 40) = v30;
          operator delete(v30);
        }

        v24 -= 56;
      }

      while (v24 != v23);
      v25 = *(this + 132);
    }

    *(this + 133) = v23;
    operator delete(v25);
  }

  v31 = *(this + 127);
  if (v31)
  {
    v32 = *(this + 128);
    v33 = *(this + 127);
    if (v32 != v31)
    {
      do
      {
        std::unique_ptr<AudioDSPGraph::Subset>::reset[abi:ne200100](--v32);
      }

      while (v32 != v31);
      v33 = *(this + 127);
    }

    *(this + 128) = v31;
    operator delete(v33);
  }

  v34 = *(this + 124);
  if (v34)
  {
    do
    {
      v35 = *v34;
      operator delete(v34);
      v34 = v35;
    }

    while (v35);
  }

  v36 = *(this + 122);
  *(this + 122) = 0;
  if (v36)
  {
    operator delete(v36);
  }

  v37 = *(this + 119);
  if (v37)
  {
    do
    {
      v38 = *v37;
      if (*(v37 + 39) < 0)
      {
        operator delete(v37[2]);
      }

      operator delete(v37);
      v37 = v38;
    }

    while (v38);
  }

  v39 = *(this + 117);
  *(this + 117) = 0;
  if (v39)
  {
    operator delete(v39);
  }

  *(this + 94) = &unk_1F48D0D68;
  v45[0] = (this + 800);
  std::vector<std::shared_ptr<AudioDSPGraph::BoxEventHandler>>::__destroy_vector::operator()[abi:ne200100](v45);
  AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::ConcurrentExchangedPointer<AudioDSPGraph::EventHandlerTree<AudioDSPGraph::BoxEventHandler,AudioDSPGraph::BoxEventDispatcher>::Root>::~ConcurrentExchangedPointer(this + 768);
  std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>>>::~__hash_table(this + 704);
  std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>>>::~__hash_table(this + 664);
  std::__hash_table<std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphProperty>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphProperty>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphProperty>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphProperty>>>::~__hash_table(this + 624);
  std::__hash_table<std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphParameter>>>::~__hash_table(this + 584);
  v40 = *(this + 70);
  if (v40)
  {
    *(this + 71) = v40;
    operator delete(v40);
  }

  v41 = *(this + 67);
  if (v41)
  {
    *(this + 68) = v41;
    operator delete(v41);
  }

  if (*(this + 528) == 1 && *(this + 527) < 0)
  {
    operator delete(*(this + 63));
  }

  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(this + 464);
  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(this + 424);
  v42 = *(this + 50);
  if (v42)
  {
    *(this + 51) = v42;
    operator delete(v42);
  }

  v43 = *(this + 47);
  if (v43)
  {
    *(this + 48) = v43;
    operator delete(v43);
  }

  v44 = *(this + 44);
  if (v44)
  {
    *(this + 45) = v44;
    operator delete(v44);
  }

  std::__hash_table<std::unique_ptr<AudioDSPGraph::IsoGroup>,std::hash<std::unique_ptr<AudioDSPGraph::IsoGroup>>,std::equal_to<std::unique_ptr<AudioDSPGraph::IsoGroup>>,std::allocator<std::unique_ptr<AudioDSPGraph::IsoGroup>>>::~__hash_table(this + 39);
  v45[0] = (this + 288);
  std::vector<std::unique_ptr<AudioDSPGraph::InternalBuffer>>::__destroy_vector::operator()[abi:ne200100](v45);
  *(this + 30) = &unk_1F48D0D00;
  std::__hash_table<std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>>>::~__hash_table(this + 248);
  std::mutex::~mutex((this + 176));
  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(this + 136);
  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(this + 96);
  std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(this + 56);
  std::__hash_table<std::unique_ptr<AudioDSPGraph::Box>,std::hash<std::unique_ptr<AudioDSPGraph::Box>>,std::equal_to<std::unique_ptr<AudioDSPGraph::Box>>,std::allocator<std::unique_ptr<AudioDSPGraph::Box>>>::~__hash_table(this + 16);
}

void sub_1C9225E90(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __clang_call_terminate(a1);
}

void *AudioDSPGraph::Graph::uninitialize(void *this)
{
  if (*(this + 922) == 1)
  {
    v1 = this;
    for (i = this[4]; i; i = *i)
    {
      (*(*i[2] + 568))(i[2]);
      (*(*i[2] + 600))();
    }

    for (j = v1[9]; j; j = *j)
    {
      *(j[2] + 56) = 0;
    }

    this = std::vector<std::unique_ptr<AudioDSPGraph::InternalBuffer>>::clear[abi:ne200100](v1 + 36);
    *(v1 + 922) = 0;
  }

  return this;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphProperty>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphProperty>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphProperty>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphProperty>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  while (v2)
  {
    v3 = v2;
    v2 = *v2;
    v4 = v3[9];
    if (v4)
    {
      v3[10] = v4;
      operator delete(v4);
    }

    if (*(v3 + 56) == 1)
    {
      v5 = v3[4];
      if (v5)
      {
        v3[5] = v5;
        operator delete(v5);
      }
    }

    operator delete(v3);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AudioDSPGraph::Graph::GraphParameter>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[5];
      if (v4)
      {
        v2[6] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void **std::__hash_table<std::unique_ptr<AudioDSPGraph::IsoGroup>,std::hash<std::unique_ptr<AudioDSPGraph::IsoGroup>>,std::equal_to<std::unique_ptr<AudioDSPGraph::IsoGroup>>,std::allocator<std::unique_ptr<AudioDSPGraph::IsoGroup>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::unique_ptr<AudioDSPGraph::IsoGroup>,std::hash<std::unique_ptr<AudioDSPGraph::IsoGroup>>,std::equal_to<std::unique_ptr<AudioDSPGraph::IsoGroup>>,std::allocator<std::unique_ptr<AudioDSPGraph::IsoGroup>>>::__deallocate_node(a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::vector<std::unique_ptr<AudioDSPGraph::InternalBuffer>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<AudioDSPGraph::InternalBuffer>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::__hash_table<std::unique_ptr<AudioDSPGraph::Box>,std::hash<std::unique_ptr<AudioDSPGraph::Box>>,std::equal_to<std::unique_ptr<AudioDSPGraph::Box>>,std::allocator<std::unique_ptr<AudioDSPGraph::Box>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[2];
      v2[2] = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void *std::vector<std::unique_ptr<AudioDSPGraph::InternalBuffer>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void std::__hash_table<std::unique_ptr<AudioDSPGraph::IsoGroup>,std::hash<std::unique_ptr<AudioDSPGraph::IsoGroup>>,std::equal_to<std::unique_ptr<AudioDSPGraph::IsoGroup>>,std::allocator<std::unique_ptr<AudioDSPGraph::IsoGroup>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[2];
      v1[2] = 0;
      if (v3)
      {
        (*(*v3 + 8))(v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t *std::unique_ptr<AudioDSPGraph::Subset>::reset[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::~__hash_table(v1 + 32);
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    JUMPOUT(0x1CCA84AE0);
  }

  return result;
}

unint64_t AudioDSPGraph::Graph::generateSerialNumber(AudioDSPGraph::Graph *this)
{
  {
    std::random_device::random_device[abi:ne200100](&v5);
    v4 = MEMORY[0x1CCA84770](&v5);
    AudioDSPGraph::Graph::generateSerialNumber(void)::sSerialNo = AudioDSPGraph::intHash(v4);
    std::random_device::~random_device(&v5);
  }

  std::mutex::lock(&AudioDSPGraph::Graph::generateSerialNumber(void)::sSerialNoLock);
  v1 = atomic_load(&AudioDSPGraph::Graph::generateSerialNumber(void)::sSerialNo);
  atomic_store(v1 + 1 + (((v1 + 1) / 0x7FFFFFFFFFFFFFFFLL) | (((v1 + 1) / 0x7FFFFFFFFFFFFFFFLL) << 63)), &AudioDSPGraph::Graph::generateSerialNumber(void)::sSerialNo);
  v2 = atomic_load(&AudioDSPGraph::Graph::generateSerialNumber(void)::sSerialNo);
  std::mutex::unlock(&AudioDSPGraph::Graph::generateSerialNumber(void)::sSerialNoLock);
  return v2;
}

void sub_1C9226410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, std::random_device argC, std::random_device a11, int a13, std::random_device a12)
{
  std::random_device::~random_device(&argC);
  _Unwind_Resume(a1);
}

std::random_device *std::random_device::random_device[abi:ne200100](std::random_device *a1)
{
  std::string::basic_string[abi:ne200100]<0>(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1C9226490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t AudioDSPGraph::intHash(AudioDSPGraph *this)
{
  v1 = (this + ~(this << 32)) ^ ((this + ~(this << 32)) >> 22);
  v2 = 9 * ((v1 + ~(v1 << 13)) ^ ((v1 + ~(v1 << 13)) >> 8));
  v3 = (v2 ^ (v2 >> 15)) + ~((v2 ^ (v2 >> 15)) << 27);
  return v3 ^ (v3 >> 31);
}

void AudioDSPGraph::Graph::construct(AudioDSPGraph::Graph *this, const AudioStreamBasicDescription *a2, const AudioDSPGraph::BoxRegistry *a3)
{
  v4 = a2;
  v5 = this;
  v461 = *MEMORY[0x1E69E9840];
  if (LOBYTE(a2->mBytesPerFrame) == 1)
  {
    if (SHIBYTE(a2->mFramesPerPacket) < 0)
    {
      std::string::__init_copy_ctor_external(&v448, *&a2->mSampleRate, *&a2->mFormatID);
      v5 = this;
    }

    else
    {
      *&v448.__r_.__value_.__l.__data_ = *&a2->mSampleRate;
      v448.__r_.__value_.__r.__words[2] = *&a2->mBytesPerPacket;
    }

    v6 = (v5 + 504);
    if (*(v5 + 528) == 1)
    {
      if (*(v5 + 527) < 0)
      {
        operator delete(*v6);
      }

      *v6 = *&v448.__r_.__value_.__l.__data_;
      *(v5 + 65) = *(&v448.__r_.__value_.__l + 2);
      *(&v448.__r_.__value_.__s + 23) = 0;
      v448.__r_.__value_.__s.__data_[0] = 0;
    }

    else
    {
      *v6 = *&v448.__r_.__value_.__l.__data_;
      *(v5 + 65) = *(&v448.__r_.__value_.__l + 2);
      memset(&v448, 0, sizeof(v448));
      *(v5 + 528) = 1;
    }

    v4 = a2;
  }

  for (i = *&v4[4].mFormatID; i; v5 = this)
  {
    v8 = *(i + 7);
    *v455 = *(i + 5);
    *&v455[16] = v8;
    *&v455[32] = i[9];
    *&v455[40] = *(i + 20);
    if (*(v5 + 921) == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v452, "graph is configured");
      AudioDSPGraph::ThrowException(1667655457, &v452, off_1E8336408);
    }

    if (*&v455[8] == 1718773105 && *&v455[32] != 64)
    {
      std::string::basic_string[abi:ne200100]<0>(&v452, "frequency domain format should be 64 bits.");
      AudioDSPGraph::ThrowException(1718449215, &v452, off_1E8336420);
    }

    if (*v455 != floor(*v455))
    {
      std::string::basic_string[abi:ne200100]<0>(&v452, "only integer sample rates are supported.");
      AudioDSPGraph::ThrowException(1718449215, &v452, off_1E8336438);
    }

    if ((AudioDSPGraph::MinimalSafetyCheck(v455, a2) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&v452, "format failed sanity check.");
      AudioDSPGraph::ThrowException(1718449215, &v452, off_1E8336450);
    }

    v452.__r_.__value_.__r.__words[0] = (i + 2);
    v9 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v5 + 166, i + 2, &v452);
    v10 = *&v455[16];
    *(v9 + 5) = *v455;
    *(v9 + 7) = v10;
    *(v9 + 68) = *&v455[28];
    v452.__r_.__value_.__r.__words[0] = (i + 2);
    std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::FormatAndBlockSize>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 166, i + 2, &v452);
    i = *i;
  }

  if (*(v5 + 922) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v455, "graph is initialized");
    AudioDSPGraph::ThrowException(1667655457, v455, off_1E83363D8);
  }

  *(v5 + 260) = a2->mBitsPerChannel;
  v11 = *(v5 + 60);
  if (v11)
  {
    do
    {
      v12 = (*(*v11[2] + 256))(v11[2]);
      if (v12)
      {
        *(v12 + 896) = *(v5 + 260);
      }

      v11 = *v11;
    }

    while (v11);
    if (*(v5 + 922))
    {
      std::string::basic_string[abi:ne200100]<0>(v455, "graph is initialized");
      AudioDSPGraph::ThrowException(1667655457, v455, off_1E83363F0);
    }

    mReserved = a2->mReserved;
  }

  else
  {
    mReserved = a2->mReserved;
  }

  *(v5 + 261) = mReserved;
  for (j = *(v5 + 60); j; j = *j)
  {
    v15 = (*(*j[2] + 256))(j[2]);
    if (v15)
    {
      *(v15 + 900) = *(v5 + 261);
    }
  }

  if (*(v5 + 921) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v455, "cannot set slice duration if graph is already configured.");
    AudioDSPGraph::ThrowException(1667655457, v455, off_1E8335C28);
  }

  mFormatID = a2[1].mFormatID;
  *(v5 + 104) = *&a2[1].mSampleRate;
  *(v5 + 920) = mFormatID;
  if (*(v5 + 922) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v455, "cannot set options if graph is already initialized.");
    AudioDSPGraph::ThrowException(1667655457, v455, off_1E8336468);
  }

  *(v5 + 840) = BYTE1(a2[1].mFormatID);
  v17 = *&a2[1].mBytesPerPacket;
  for (k = *&a2[1].mBytesPerFrame; v17 != k; v5 = this)
  {
    if (*(v17 + 112) == 1)
    {
      v19 = *(v5 + 127);
      v20 = *(v5 + 128);
      Subset = AudioDSPGraph::Graph::getSubset(v19, v20, (v17 + 88));
      if (!Subset)
      {
        Subset = AudioDSPGraph::Graph::getSubset(v19, v20, (v17 + 88));
        if (!Subset)
        {
          operator new();
        }
      }

      v22 = Subset;
    }

    else
    {
      v22 = 0;
    }

    if (*(v17 + 76) == 1)
    {
      if (*(v17 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v447, *v17, *(v17 + 8));
      }

      else
      {
        v447 = *v17;
      }

      AudioDSPGraph::BoxRegistry::newBox(v455, *(a3 + 5), *(a3 + 6), (v17 + 56), &v447, *(v17 + 80), *(v17 + 84));
      v23 = *v455;
      *v455 = 0;
      if (SHIBYTE(v447.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v447.__r_.__value_.__l.__data_);
      }

      if (!v23)
      {
        v402 = v455;
        caulk::string_from_4cc(v455, *(v17 + 56));
        if (v455[23] < 0)
        {
          v402 = *v455;
        }

        v403 = &v452;
        caulk::string_from_4cc(&v452, *(v17 + 60));
        if ((v452.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v403 = v452.__r_.__value_.__r.__words[0];
        }

        caulk::string_from_4cc(__s1, *(v17 + 64));
        if (__s1[23] >= 0)
        {
          v405 = __s1;
        }

        else
        {
          v405 = *__s1;
        }

        caulk::make_string(&v446, "box component (%s %s %s) not found", v404, v402, v403, v405);
        AudioDSPGraph::ThrowException(1852204065, &v446, off_1E8335AA8);
      }
    }

    else
    {
      if (*(v17 + 48) != 1)
      {
        v406 = *(v17 + 23);
        v407 = v406;
        v408 = *v17;
        v409 = *(v17 + 8);
        v452.__r_.__value_.__r.__words[2] = 13;
        if ((v406 & 0x80u) != 0)
        {
          v406 = v409;
        }

        if (v407 >= 0)
        {
          v410 = v17;
        }

        else
        {
          v410 = v408;
        }

        v452.__r_.__value_.__l.__size_ = v406;
        v452.__r_.__value_.__r.__words[0] = v410;
        *v455 = &v455[40];
        *&v455[8] = xmmword_1C925F110;
        *&v455[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
        *&v455[32] = 0;
        v460 = &v455[40];
        *__s1 = 1;
        *&__s1[8] = &v452;
        *&__s1[16] = 13;
        std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v455, "box {} has no class name or component description", 51, __s1);
        std::string::basic_string<std::string_view,0>(v443, v460, *&v455[16]);
        if (v460 != &v455[40])
        {
          operator delete(v460);
        }

        AudioDSPGraph::ThrowException(1852204065, v443, off_1E8335AD8);
      }

      if (*(v17 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v445, *v17, *(v17 + 8));
      }

      else
      {
        v445 = *v17;
      }

      AudioDSPGraph::BoxRegistry::newBox(v455, a3, (v17 + 24), &v445, *(v17 + 80), *(v17 + 84));
      v23 = *v455;
      *v455 = 0;
      if (SHIBYTE(v445.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v445.__r_.__value_.__l.__data_);
      }

      if (!v23)
      {
        v411 = *(v17 + 47);
        v412 = v411;
        v413 = *(v17 + 24);
        v414 = *(v17 + 32);
        v452.__r_.__value_.__r.__words[2] = 13;
        if ((v411 & 0x80u) != 0)
        {
          v411 = v414;
        }

        if (v412 >= 0)
        {
          v415 = v17 + 24;
        }

        else
        {
          v415 = v413;
        }

        v452.__r_.__value_.__l.__size_ = v411;
        v452.__r_.__value_.__r.__words[0] = v415;
        *v455 = &v455[40];
        *&v455[8] = xmmword_1C925F110;
        *&v455[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
        *&v455[32] = 0;
        v460 = &v455[40];
        *__s1 = 1;
        *&__s1[8] = &v452;
        *&__s1[16] = 13;
        std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v455, "box class {} not found", 24, __s1);
        std::string::basic_string<std::string_view,0>(v444, v460, *&v455[16]);
        if (v460 != &v455[40])
        {
          operator delete(v460);
        }

        AudioDSPGraph::ThrowException(1852204065, v444, off_1E8335AC0);
      }
    }

    if (v22)
    {
      v24 = *(v23 + 32);
      if (v24 != v22)
      {
        if (v24)
        {
          v25 = v24[5];
          if (v25)
          {
            v26 = 0x9DDFEA08EB382D69 * ((8 * (v23 & 0x1FFFFFFF) + 8) ^ HIDWORD(v23));
            v27 = 0x9DDFEA08EB382D69 * (HIDWORD(v23) ^ (v26 >> 47) ^ v26);
            v28 = 0x9DDFEA08EB382D69 * (v27 ^ (v27 >> 47));
            v29 = vcnt_s8(v25);
            v29.i16[0] = vaddlv_u8(v29);
            if (v29.u32[0] > 1uLL)
            {
              v30 = 0x9DDFEA08EB382D69 * (v27 ^ (v27 >> 47));
              if (v28 >= *&v25)
              {
                v30 = v28 % *&v25;
              }
            }

            else
            {
              v30 = v28 & (*&v25 - 1);
            }

            v31 = v24[4];
            v32 = *(v31 + 8 * v30);
            if (v32)
            {
              v33 = *v32;
              if (*v32)
              {
                v34 = *&v25 - 1;
                do
                {
                  v35 = v33[1];
                  if (v35 == v28)
                  {
                    if (v33[2] == v23)
                    {
                      v36 = v33[1];
                      if (v29.u32[0] > 1uLL)
                      {
                        if (v36 >= *&v25)
                        {
                          v36 %= *&v25;
                        }
                      }

                      else
                      {
                        v36 &= v34;
                      }

                      v37 = *(v31 + 8 * v36);
                      do
                      {
                        v38 = v37;
                        v37 = *v37;
                      }

                      while (v37 != v33);
                      if (v38 == v24 + 6)
                      {
                        goto LABEL_92;
                      }

                      v39 = v38[1];
                      if (v29.u32[0] > 1uLL)
                      {
                        if (v39 >= *&v25)
                        {
                          v39 %= *&v25;
                        }
                      }

                      else
                      {
                        v39 &= v34;
                      }

                      if (v39 != v36)
                      {
LABEL_92:
                        if (!*v33)
                        {
                          goto LABEL_93;
                        }

                        v40 = *(*v33 + 8);
                        if (v29.u32[0] > 1uLL)
                        {
                          if (v40 >= *&v25)
                          {
                            v40 %= *&v25;
                          }
                        }

                        else
                        {
                          v40 &= v34;
                        }

                        if (v40 != v36)
                        {
LABEL_93:
                          *(v31 + 8 * v36) = 0;
                        }
                      }

                      v41 = *v33;
                      if (*v33)
                      {
                        v42 = *(v41 + 8);
                        if (v29.u32[0] > 1uLL)
                        {
                          if (v42 >= *&v25)
                          {
                            v42 %= *&v25;
                          }
                        }

                        else
                        {
                          v42 &= v34;
                        }

                        if (v42 != v36)
                        {
                          *(v24[4] + 8 * v42) = v38;
                          v41 = *v33;
                        }
                      }

                      *v38 = v41;
                      *v33 = 0;
                      --v24[7];
                      operator delete(v33);
                      break;
                    }
                  }

                  else
                  {
                    if (v29.u32[0] > 1uLL)
                    {
                      if (v35 >= *&v25)
                      {
                        v35 %= *&v25;
                      }
                    }

                    else
                    {
                      v35 &= v34;
                    }

                    if (v35 != v30)
                    {
                      break;
                    }
                  }

                  v33 = *v33;
                }

                while (v33);
              }
            }
          }
        }

        *(v23 + 32) = v22;
        *v455 = v23;
        std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::__emplace_unique_key_args<AudioDSPGraph::Box *,AudioDSPGraph::Box * const&>(v22 + 4, v23, v455);
      }
    }

    AudioDSPGraph::Graph::addBox(v5, v23, 0, 0);
    v17 += 120;
  }

  if (*&a2[4].mBitsPerChannel != *&a2[5].mSampleRate)
  {
    if (*(v5 + 921) != 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(v455, "graph is configured");
    AudioDSPGraph::ThrowException(1667655457, v455, off_1E8335DF0);
  }

  if (*&a2[5].mBytesPerPacket != *&a2[5].mBytesPerFrame)
  {
    if (*(v5 + 921) != 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(v455, "graph is configured");
    AudioDSPGraph::ThrowException(1667655457, v455, off_1E8335E08);
  }

  mSampleRate = a2[6].mSampleRate;
  for (m = *&a2[6].mFormatID; *&mSampleRate != m; v5 = this)
  {
    *v455 = mSampleRate;
    std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Jack>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Jack>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Jack>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Jack>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v5 + 176, *&mSampleRate, v455)[5] = 0;
    *v455 = mSampleRate;
    std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Jack>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Jack>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Jack>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Jack>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 176, *&mSampleRate, v455);
    *&mSampleRate += 24;
  }

  v46 = *&a2[3].mFormatID;
  v45 = *&a2[3].mBytesPerPacket;
  while (v46 != v45)
  {
    memset(__s1, 0, 40);
    *&__s1[40] = 1;
    v47 = *(v46 + 112);
    if (v47 == 2)
    {
      v50 = std::__string_hash<char>::operator()[abi:ne200100](v46 + 64);
      v51 = *(v5 + 672);
      if (!*&v51)
      {
        goto LABEL_511;
      }

      v52 = v50;
      v53 = vcnt_s8(v51);
      v53.i16[0] = vaddlv_u8(v53);
      v54 = v53.u32[0];
      if (v53.u32[0] > 1uLL)
      {
        v55 = v50;
        if (v50 >= *&v51)
        {
          v55 = v50 % *&v51;
        }
      }

      else
      {
        v55 = (*&v51 - 1) & v50;
      }

      v56 = *(*(v5 + 83) + 8 * v55);
      if (!v56 || (v57 = *v56) == 0)
      {
LABEL_511:
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      while (1)
      {
        v58 = v57[1];
        if (v52 == v58)
        {
          if (AudioDSPGraph::IR::BoxAlias::operator==(v57 + 2, (v46 + 64)))
          {
            v48 = v57 + 5;
            v59 = *(v57 + 7);
            *__s1 = *(v57 + 5);
            *&__s1[16] = v59;
            *&__s1[28] = *(v57 + 68);
            goto LABEL_134;
          }
        }

        else
        {
          if (v54 > 1)
          {
            if (v58 >= *&v51)
            {
              v58 %= *&v51;
            }
          }

          else
          {
            v58 &= *&v51 - 1;
          }

          if (v58 != v55)
          {
            goto LABEL_511;
          }
        }

        v57 = *v57;
        if (!v57)
        {
          goto LABEL_511;
        }
      }
    }

    if (v47 != 1)
    {
      v454[0] = 0;
      std::__format::__create_packed_storage[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>,std::string const,unsigned int const,std::string const,unsigned int const>(v454, &v452, v46, (v46 + 24), (v46 + 32), (v46 + 56));
      *v455 = &v455[40];
      *&v455[8] = xmmword_1C925F110;
      *&v455[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
      *&v455[32] = 0;
      v460 = &v455[40];
      v451.__r_.__value_.__r.__words[0] = 4;
      v451.__r_.__value_.__l.__size_ = &v452;
      v451.__r_.__value_.__r.__words[2] = v454[0];
      std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v455, "wire from {} port {} to {} port {} has no configuration", 59, &v451);
      std::string::basic_string<std::string_view,0>(v441, v460, *&v455[16]);
      if (v460 != &v455[40])
      {
        operator delete(v460);
      }

      AudioDSPGraph::ThrowException(1852204065, v441, off_1E8335B08);
    }

    v48 = 0;
    v49 = *(v46 + 80);
    *__s1 = *(v46 + 64);
    *&__s1[16] = v49;
    *&__s1[32] = *(v46 + 96);
    *&__s1[40] = *(v46 + 104);
LABEL_134:
    v60 = *(v46 + 24);
    v61 = *(v46 + 56);
    if (v60)
    {
      v62 = 0;
    }

    else
    {
      v63 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(v5 + 88, v46);
      if (v63)
      {
        v62 = (v63 + 5);
      }

      else
      {
        v62 = 0;
      }
    }

    v64 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(v5 + 117, v46);
    if (v64)
    {
      v65 = v64[5];
    }

    else
    {
      v65 = 0;
    }

    if (!(v65 | v62))
    {
      std::operator+<char>();
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v451, &v450, " index ");
      std::to_string(&v449, v60);
      if ((v449.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v369 = &v449;
      }

      else
      {
        v369 = v449.__r_.__value_.__r.__words[0];
      }

      if ((v449.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v449.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v449.__r_.__value_.__l.__size_;
      }

      v371 = std::string::append(&v451, v369, size);
      v372 = *&v371->__r_.__value_.__l.__data_;
      v452.__r_.__value_.__r.__words[2] = v371->__r_.__value_.__r.__words[2];
      *&v452.__r_.__value_.__l.__data_ = v372;
      v371->__r_.__value_.__l.__size_ = 0;
      v371->__r_.__value_.__r.__words[2] = 0;
      v371->__r_.__value_.__r.__words[0] = 0;
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v455, &v452, " not found");
      AudioDSPGraph::ThrowException(1852204065, v455, off_1E8335E20);
    }

    if (v61)
    {
      v66 = 0;
    }

    else
    {
      v67 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(v5 + 88, (v46 + 32));
      if (v67)
      {
        v66 = v67 + 5;
      }

      else
      {
        v66 = 0;
      }
    }

    v68 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(v5 + 117, (v46 + 32));
    if (v68)
    {
      v70 = v68[5];
    }

    else
    {
      v70 = 0;
    }

    if (!(v70 | v66))
    {
      std::operator+<char>();
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v451, &v450, " index ");
      std::to_string(&v449, v61);
      if ((v449.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v365 = &v449;
      }

      else
      {
        v365 = v449.__r_.__value_.__r.__words[0];
      }

      if ((v449.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v366 = HIBYTE(v449.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v366 = v449.__r_.__value_.__l.__size_;
      }

      v367 = std::string::append(&v451, v365, v366);
      v368 = *&v367->__r_.__value_.__l.__data_;
      v452.__r_.__value_.__r.__words[2] = v367->__r_.__value_.__r.__words[2];
      *&v452.__r_.__value_.__l.__data_ = v368;
      v367->__r_.__value_.__l.__size_ = 0;
      v367->__r_.__value_.__r.__words[2] = 0;
      v367->__r_.__value_.__r.__words[0] = 0;
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v455, &v452, " not found");
      AudioDSPGraph::ThrowException(1852204065, v455, off_1E8335E38);
    }

    if (*&__s1[8] == 1718773105 && *&__s1[32] != 64)
    {
      std::string::basic_string[abi:ne200100]<0>(v455, "frequency domain format should be 64 bits.");
      AudioDSPGraph::ThrowException(1718449215, v455, off_1E8335E50);
    }

    if (*__s1 != floor(*__s1))
    {
      std::string::basic_string[abi:ne200100]<0>(v455, "only integer sample rates are supported.");
      AudioDSPGraph::ThrowException(1718449215, v455, off_1E8335E68);
    }

    if ((AudioDSPGraph::MinimalSafetyCheck(__s1, v69) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v455, "format failed sanity check.");
      AudioDSPGraph::ThrowException(1718449215, v455, off_1E8335E80);
    }

    if (*(v5 + 921) == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(v455, "graph is configured");
      AudioDSPGraph::ThrowException(1667655457, v455, off_1E8335E98);
    }

    if (v62)
    {
      if (v66)
      {
        v72 = *v66;
        v73 = *v62;
        if (*v62)
        {
          if (v72)
          {
            if (v73 == v72)
            {
              goto LABEL_188;
            }

            if (*(v72 + 8))
            {
              std::string::basic_string[abi:ne200100]<0>(v455, "destination jack already has a source.");
              AudioDSPGraph::ThrowException(1633903905, v455, off_1E8335EB0);
            }

            AudioDSPGraph::Wire::addAll(*v62, *(v72 + 32));
            AudioDSPGraph::Graph::removeWire(this, v72);
          }

LABEL_187:
          *v66 = v73;
          goto LABEL_188;
        }

        if (!v72)
        {
          operator new();
        }

        *v62 = v72;
        v73 = v72;
      }

      else
      {
        v78 = *(v70 + 72);
        v79 = (*(v70 + 80) - v78) >> 5;
        if (v79 <= v61)
        {
          v417 = (v70 + 40);
          if (*(v70 + 63) < 0)
          {
            v417 = *v417;
          }

          caulk::make_string(v455, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v71, v417, v79, v61);
          AudioDSPGraph::ThrowException(1919837985, v455, off_1E8337C60);
        }

        v80 = v78 + 32 * v61;
        if (*(v80 + 16))
        {
          std::string::basic_string[abi:ne200100]<0>(v455, "The input port already has a connection.");
          AudioDSPGraph::ThrowException(1633903905, v455, off_1E8335EC8);
        }

        v73 = *v62;
        if (!*v62)
        {
          operator new();
        }

        *v455 = v80;
        std::__hash_table<AudioDSPGraph::InputPort *,std::hash<AudioDSPGraph::InputPort *>,std::equal_to<AudioDSPGraph::InputPort *>,std::allocator<AudioDSPGraph::InputPort *>>::__emplace_unique_key_args<AudioDSPGraph::InputPort *,AudioDSPGraph::InputPort * const&>(v73 + 4, v80, v455);
        *(v80 + 16) = v73;
      }
    }

    else
    {
      v74 = *(v65 + 96);
      v75 = (*(v65 + 104) - v74) >> 5;
      if (v75 <= v60)
      {
        v416 = (v65 + 40);
        if (*(v65 + 63) < 0)
        {
          v416 = *v416;
        }

        caulk::make_string(v455, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v71, v416, v75, v60);
        AudioDSPGraph::ThrowException(1919837985, v455, off_1E8337C78);
      }

      v76 = (v74 + 32 * v60);
      if (v66)
      {
        v73 = v76[2];
        v77 = *v66;
        if (v73)
        {
          if (v77)
          {
            if (v73 == v77)
            {
              goto LABEL_188;
            }

            if (*(v77 + 8))
            {
              std::string::basic_string[abi:ne200100]<0>(v455, "The jack already has a source.");
              AudioDSPGraph::ThrowException(1633903905, v455, off_1E8335EE0);
            }

            AudioDSPGraph::Wire::addAll(v76[2], *(v77 + 32));
            AudioDSPGraph::Graph::removeWire(this, v77);
          }

          goto LABEL_187;
        }

        if (!v77)
        {
          operator new();
        }

        AudioDSPGraph::Wire::setSource(*v66, v76);
        v73 = v77;
      }

      else
      {
        v81 = *(v70 + 72);
        v82 = (*(v70 + 80) - v81) >> 5;
        if (v82 <= v61)
        {
          v418 = (v70 + 40);
          if (*(v70 + 63) < 0)
          {
            v418 = *v418;
          }

          caulk::make_string(v455, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v71, v418, v82, v61);
          AudioDSPGraph::ThrowException(1919837985, v455, off_1E8337C60);
        }

        v83 = v81 + 32 * v61;
        if (*(v83 + 16))
        {
          std::string::basic_string[abi:ne200100]<0>(v455, "The input port already has a connection.");
          AudioDSPGraph::ThrowException(1633903905, v455, off_1E8335EF8);
        }

        v73 = v76[2];
        if (!v73)
        {
          operator new();
        }

        *v455 = v83;
        std::__hash_table<AudioDSPGraph::InputPort *,std::hash<AudioDSPGraph::InputPort *>,std::equal_to<AudioDSPGraph::InputPort *>,std::allocator<AudioDSPGraph::InputPort *>>::__emplace_unique_key_args<AudioDSPGraph::InputPort *,AudioDSPGraph::InputPort * const&>(v73 + 4, v83, v455);
        *(v83 + 16) = v73;
      }
    }

LABEL_188:
    v84 = *&__s1[40];
    if (*(v73 + 64) == 1)
    {
      v85 = *(v73 + 15);
      if (memcmp(__s1, v85, 0x28uLL) || v85[10] != v84)
      {
        v373 = *(*(v73 + 1) + 8);
        v374 = (v373 + 40);
        if (*(v373 + 63) < 0)
        {
          v374 = *v374;
        }

        *v455 = *__s1;
        *&v455[16] = *&__s1[16];
        *&v455[32] = *&__s1[32];
        CA::StreamDescription::AsString(&v452, v455, *__s1, *&__s1[16]);
        v375 = SHIBYTE(v452.__r_.__value_.__r.__words[2]);
        v376 = v452.__r_.__value_.__r.__words[0];
        v377 = *(v73 + 15);
        *v455 = *v377;
        *&v455[16] = *(v377 + 16);
        *&v455[32] = *(v377 + 32);
        CA::StreamDescription::AsString(&v451, v455, *&v455[16], v378);
        if (v375 >= 0)
        {
          v380 = &v452;
        }

        else
        {
          v380 = v376;
        }

        if ((v451.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v381 = &v451;
        }

        else
        {
          v381 = v451.__r_.__value_.__r.__words[0];
        }

        caulk::make_string(v455, "Wire from box %s: format\n%s, %u block size\ndoes not match the one previously set\n%s, %u block size\n", v379, v374, v380, v84, v381, *(*(v73 + 15) + 40));
        AudioDSPGraph::ThrowException(1718444833, v455, off_1E8337D50);
      }
    }

    else
    {
      v86 = *&__s1[16];
      *(v73 + 72) = *__s1;
      *(v73 + 88) = v86;
      *(v73 + 13) = *&__s1[32];
      *(v73 + 64) = 1;
    }

    *(v73 + 28) = v84;
    *(v73 + 15) = v73 + 72;
    v5 = this;
    if (v48)
    {
      if (memcmp(v48, v73 + 72, 0x28uLL) || v48[10] != v84)
      {
        v349 = *(*(v73 + 1) + 8);
        v350 = (v349 + 40);
        if (*(v349 + 63) < 0)
        {
          v350 = *v350;
        }

        v351 = *(v48 + 1);
        *v455 = *v48;
        *&v455[16] = v351;
        *&v455[32] = *(v48 + 4);
        CA::StreamDescription::AsString(&v452, v455, *v455, *&v351);
        v352 = SHIBYTE(v452.__r_.__value_.__r.__words[2]);
        v353 = v452.__r_.__value_.__r.__words[0];
        v354 = v48[10];
        v355 = *(v73 + 15);
        *v455 = *v355;
        *&v455[16] = *(v355 + 16);
        *&v455[32] = *(v355 + 32);
        CA::StreamDescription::AsString(&v451, v455, *&v455[16], v356);
        if (v352 >= 0)
        {
          v358 = &v452;
        }

        else
        {
          v358 = v353;
        }

        if ((v451.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v359 = &v451;
        }

        else
        {
          v359 = v451.__r_.__value_.__r.__words[0];
        }

        caulk::make_string(v455, "Wire from box %s: format\n%s, %u block size\ndoes not match the one previously set\n%s, %u block size\n", v357, v350, v358, v354, v359, *(*(v73 + 15) + 40));
        AudioDSPGraph::ThrowException(1718444833, v455, off_1E8337D68);
      }

      *(v73 + 15) = v48;
    }

    v46 += 120;
  }

  v87 = *&a2[6].mBytesPerFrame;
  v422 = *&a2[6].mBitsPerChannel;
  if (v87 == v422)
  {
    goto LABEL_218;
  }

  while (2)
  {
    if (*(v5 + 921) == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(v455, "graph is configured");
      AudioDSPGraph::ThrowException(1667655457, v455, off_1E8336228);
    }

    v88 = *(v87 + 1);
    v90 = *v87;
    v89 = v87[1];
    v91 = *(v5 + 592);
    if (!*&v91)
    {
      goto LABEL_216;
    }

    v92 = vcnt_s8(v91);
    v92.i16[0] = vaddlv_u8(v92);
    if (v92.u32[0] > 1uLL)
    {
      v93 = *v87;
      if (*&v91 <= v90)
      {
        v93 = v90 % v91.i32[0];
      }
    }

    else
    {
      v93 = (v91.i32[0] - 1) & v90;
    }

    v94 = *(*(v5 + 73) + 8 * v93);
    if (!v94 || (v95 = *v94) == 0)
    {
LABEL_216:
      operator new();
    }

    while (2)
    {
      v96 = v95[1];
      if (v96 != v90)
      {
        if (v92.u32[0] > 1uLL)
        {
          if (v96 >= *&v91)
          {
            v96 %= *&v91;
          }
        }

        else
        {
          v96 &= *&v91 - 1;
        }

        if (v96 != v93)
        {
          goto LABEL_216;
        }

        goto LABEL_215;
      }

      if (*(v95 + 4) != v90)
      {
LABEL_215:
        v95 = *v95;
        if (!v95)
        {
          goto LABEL_216;
        }

        continue;
      }

      break;
    }

    *(v95 + 6) = v90;
    *(v95 + 7) = v88;
    *(v95 + 32) = BYTE4(v88);
    *(v95 + 36) = v89 == 1;
    v95[6] = v95[5];
    v87 += 4;
    if (v87 != v422)
    {
      continue;
    }

    break;
  }

LABEL_218:
  v97 = *&a2[7].mFormatID;
  v98 = *&a2[7].mBytesPerPacket;
  if (v97 != v98)
  {
    while (1)
    {
      v99 = *(v97 + 32);
      v100 = *(v97 + 40);
      v101 = (v97 + 8);
      v102 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(v5 + 117, (v97 + 8));
      if (!v102)
      {
        goto LABEL_554;
      }

      v103 = v102[5];
      if (!v103)
      {
        break;
      }

      if (*(v5 + 921) == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v455, "graph is configured");
        AudioDSPGraph::ThrowException(1667655457, v455, off_1E8336240);
      }

      v104 = std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>(v5 + 73, *v97);
      if (!v104)
      {
        std::string::basic_string[abi:ne200100]<0>(v455, "connectParameter : inParamID not found");
        AudioDSPGraph::ThrowException(1852204065, v455, off_1E8336258);
      }

      v105 = v104;
      v107 = v104[6];
      v106 = v104[7];
      if (v107 >= v106)
      {
        v109 = v104[5];
        v110 = 0xAAAAAAAAAAAAAAABLL * ((v107 - v109) >> 3);
        v111 = v110 + 1;
        if (v110 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
        }

        v112 = 0xAAAAAAAAAAAAAAABLL * ((v106 - v109) >> 3);
        if (2 * v112 > v111)
        {
          v111 = 2 * v112;
        }

        if (v112 >= 0x555555555555555)
        {
          v113 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v113 = v111;
        }

        if (v113)
        {
          if (v113 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v114 = 24 * v110;
        *v114 = v103;
        *(v114 + 8) = v99;
        *(v114 + 16) = v100;
        v108 = 24 * v110 + 24;
        v115 = v104[5];
        v116 = v104[6] - v115;
        v117 = (24 * v110 - v116);
        memcpy(v117, v115, v116);
        v118 = v105[5];
        v105[5] = v117;
        v105[6] = v108;
        v105[7] = 0;
        if (v118)
        {
          operator delete(v118);
        }

        v5 = this;
      }

      else
      {
        *v107 = v103;
        *(v107 + 8) = v99;
        v108 = v107 + 24;
        *(v107 + 16) = v100;
      }

      v105[6] = v108;
      v97 += 48;
      if (v97 == v98)
      {
        goto LABEL_238;
      }
    }

    v101 = (v97 + 8);
LABEL_554:
    AudioDSPGraph::stringFromFourCharCode<unsigned int>(&v451, *v97);
    std::make_format_args[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>,std::string,std::string const>(&v452, &v451, v101);
    *v455 = &v455[40];
    *&v455[8] = xmmword_1C925F110;
    *&v455[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    *&v455[32] = 0;
    v460 = &v455[40];
    *__s1 = 2;
    *&__s1[8] = &v452;
    *&__s1[16] = __s.__r_.__value_.__l.__size_;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v455, "parameter connection {} box {} not found", 42, __s1);
    std::string::basic_string<std::string_view,0>(v440, v460, *&v455[16]);
    if (v460 != &v455[40])
    {
      operator delete(v460);
    }

    AudioDSPGraph::ThrowException(1852204065, v440, off_1E8335B20);
  }

LABEL_238:
  v119 = *&a2[7].mBitsPerChannel;
  v120 = a2[8].mSampleRate;
  if (v119 != *&v120)
  {
    v419 = a2[8].mSampleRate;
    while (1)
    {
      v121 = *(v119 + 24);
      v122 = *(v119 + 32);
      v123 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(v5 + 117, v119);
      if (!v123 || (v124 = v123[5]) == 0)
      {
        v334 = *(v119 + 23);
        v335 = v334;
        v336 = *v119;
        v337 = *(v119 + 8);
        v452.__r_.__value_.__r.__words[2] = 13;
        if ((v334 & 0x80u) != 0)
        {
          v334 = v337;
        }

        if (v335 >= 0)
        {
          v338 = v119;
        }

        else
        {
          v338 = v336;
        }

        v452.__r_.__value_.__l.__size_ = v334;
        v452.__r_.__value_.__r.__words[0] = v338;
        *v455 = &v455[40];
        *&v455[8] = xmmword_1C925F110;
        *&v455[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
        *&v455[32] = 0;
        v460 = &v455[40];
        *__s1 = 1;
        *&__s1[8] = &v452;
        *&__s1[16] = 13;
        std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v455, "parameter wire source box {} not found", 40, __s1);
        std::string::basic_string<std::string_view,0>(__dst, v460, *&v455[16]);
        if (v460 != &v455[40])
        {
          operator delete(v460);
        }

        AudioDSPGraph::ThrowException(1852204065, __dst, off_1E8335B38);
      }

      v125 = v119 + 40;
      v126 = *(v119 + 64);
      v127 = *(v119 + 72);
      v128 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(v5 + 117, (v119 + 40));
      if (!v128)
      {
        goto LABEL_560;
      }

      v129 = v128[5];
      if (!v129)
      {
        break;
      }

      if (*(v5 + 921) == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v455, "graph is configured");
        AudioDSPGraph::ThrowException(1667655457, v455, off_1E8335F10);
      }

      v130 = *(v119 + 80);
      v131 = *(v5 + 68);
      v132 = *(v5 + 69);
      if (v131 >= v132)
      {
        v134 = *(v5 + 67);
        v135 = v131 - v134;
        v136 = 0x6DB6DB6DB6DB6DB7 * ((v131 - v134) >> 3);
        v137 = v136 + 1;
        if ((v136 + 1) > 0x492492492492492)
        {
          std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
        }

        v138 = 0x6DB6DB6DB6DB6DB7 * ((v132 - v134) >> 3);
        if (2 * v138 > v137)
        {
          v137 = 2 * v138;
        }

        if (v138 >= 0x249249249249249)
        {
          v139 = 0x492492492492492;
        }

        else
        {
          v139 = v137;
        }

        if (v139)
        {
          if (v139 <= 0x492492492492492)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v140 = 56 * v136;
        *v140 = v124;
        *(v140 + 8) = v121;
        v423 = v122;
        *(v140 + 16) = v122;
        *(v140 + 24) = v129;
        *(v140 + 32) = v126;
        *(v140 + 40) = v127;
        v141 = v130;
        *(v140 + 48) = v130;
        v133 = 56 * v136 + 56;
        v142 = 56 * v136 - v135;
        memcpy((v140 - v135), v134, v135);
        *(v5 + 67) = v142;
        *(v5 + 68) = v133;
        *(v5 + 69) = 0;
        if (v134)
        {
          operator delete(v134);
        }

        v120 = v419;
        v130 = v141;
        v122 = v423;
      }

      else
      {
        *v131 = v124;
        *(v131 + 8) = v121;
        *(v131 + 16) = v122;
        *(v131 + 24) = v129;
        *(v131 + 32) = v126;
        *(v131 + 40) = v127;
        v133 = v131 + 56;
        *(v131 + 48) = v130;
      }

      *(v5 + 68) = v133;
      v143 = *(v129 + 168);
      v144 = *(v129 + 176);
      if (v143 >= v144)
      {
        v146 = *(v129 + 160);
        v147 = 0xCCCCCCCCCCCCCCCDLL * ((v143 - v146) >> 3);
        v148 = v147 + 1;
        if (v147 + 1 > 0x666666666666666)
        {
          std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
        }

        v149 = 0xCCCCCCCCCCCCCCCDLL * ((v144 - v146) >> 3);
        if (2 * v149 > v148)
        {
          v148 = 2 * v149;
        }

        if (v149 >= 0x333333333333333)
        {
          v150 = 0x666666666666666;
        }

        else
        {
          v150 = v148;
        }

        if (v150)
        {
          if (v150 <= 0x666666666666666)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v151 = 40 * v147;
        *v151 = v124;
        *(v151 + 8) = v121;
        *(v151 + 16) = v122;
        *(v151 + 24) = v126;
        *(v151 + 32) = v127;
        *(v151 + 36) = v130;
        v145 = 40 * v147 + 40;
        v152 = *(v129 + 160);
        v153 = *(v129 + 168) - v152;
        v154 = 40 * v147 - v153;
        memcpy((v151 - v153), v152, v153);
        v155 = *(v129 + 160);
        *(v129 + 160) = v154;
        *(v129 + 168) = v145;
        *(v129 + 176) = 0;
        if (v155)
        {
          operator delete(v155);
        }

        v5 = this;
      }

      else
      {
        *v143 = v124;
        *(v143 + 8) = v121;
        *(v143 + 16) = v122;
        *(v143 + 24) = v126;
        *(v143 + 32) = v127;
        v145 = v143 + 40;
        *(v143 + 36) = v130;
      }

      *(v129 + 168) = v145;
      atomic_fetch_add((v129 + 760), 1u);
      v119 += 88;
      if (v119 == *&v120)
      {
        goto LABEL_274;
      }
    }

    v125 = v119 + 40;
LABEL_560:
    v360 = *(v119 + 63);
    v361 = v360;
    v362 = *(v119 + 40);
    v363 = *(v119 + 48);
    v452.__r_.__value_.__r.__words[2] = 13;
    if ((v360 & 0x80u) != 0)
    {
      v360 = v363;
    }

    if (v361 >= 0)
    {
      v364 = v125;
    }

    else
    {
      v364 = v362;
    }

    v452.__r_.__value_.__l.__size_ = v360;
    v452.__r_.__value_.__r.__words[0] = v364;
    *v455 = &v455[40];
    *&v455[8] = xmmword_1C925F110;
    *&v455[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    *&v455[32] = 0;
    v460 = &v455[40];
    *__s1 = 1;
    *&__s1[8] = &v452;
    *&__s1[16] = 13;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v455, "parameter wire destination {} not found", 41, __s1);
    std::string::basic_string<std::string_view,0>(v438, v460, *&v455[16]);
    if (v460 != &v455[40])
    {
      operator delete(v460);
    }

    AudioDSPGraph::ThrowException(1852204065, v438, off_1E8335B50);
  }

LABEL_274:
  v156 = a2;
  v158 = *&a2[8].mBytesPerPacket;
  v157 = *&a2[8].mBytesPerFrame;
  if (v158 == v157)
  {
    goto LABEL_325;
  }

  while (2)
  {
    v159 = *v158;
    std::__optional_copy_base<std::vector<unsigned char>,false>::__optional_copy_base[abi:ne200100](__p, (v158 + 2));
    v5 = this;
    if (*(this + 921) == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(v455, "graph is configured");
      AudioDSPGraph::ThrowException(1667655457, v455, off_1E8336180);
    }

    v160 = v158[1] == 1;
    *v455 = v159;
    v455[8] = 0;
    v455[32] = 0;
    if (v437 == 1)
    {
      *&v455[8] = *__p;
      *&v455[24] = v436;
      __p[1] = 0;
      v436 = 0;
      __p[0] = 0;
      v455[32] = 1;
    }

    v455[40] = v160;
    v457 = 0;
    v458 = 0;
    __src = 0;
    v161 = *(this + 632);
    if (!*&v161)
    {
      goto LABEL_294;
    }

    v162 = vcnt_s8(v161);
    v162.i16[0] = vaddlv_u8(v162);
    if (v162.u32[0] > 1uLL)
    {
      v163 = v159;
      if (*&v161 <= v159)
      {
        v163 = v159 % v161.i32[0];
      }
    }

    else
    {
      v163 = (v161.i32[0] - 1) & v159;
    }

    v164 = *(*(this + 78) + 8 * v163);
    if (!v164 || (v165 = *v164) == 0)
    {
LABEL_294:
      operator new();
    }

    while (2)
    {
      v166 = v165[1];
      if (v166 != v159)
      {
        if (v162.u32[0] > 1uLL)
        {
          if (v166 >= *&v161)
          {
            v166 %= *&v161;
          }
        }

        else
        {
          v166 &= *&v161 - 1;
        }

        if (v166 != v163)
        {
          goto LABEL_294;
        }

        goto LABEL_293;
      }

      if (*(v165 + 4) != v159)
      {
LABEL_293:
        v165 = *v165;
        if (!v165)
        {
          goto LABEL_294;
        }

        continue;
      }

      break;
    }

    *(v165 + 6) = v159;
    std::__optional_storage_base<std::vector<unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<unsigned char>,false> const&>((v165 + 4), &v455[8]);
    *(v165 + 64) = v455[40];
    if (v165 + 3 != v455)
    {
      v167 = v165[9];
      v168 = __src;
      v169 = v457;
      v170 = v457 - __src;
      v171 = v165[11];
      if (v171 - v167 < (v457 - __src))
      {
        if (v167)
        {
          v165[10] = v167;
          operator delete(v167);
          v171 = 0;
          v165[9] = 0;
          v165[10] = 0;
          v165[11] = 0;
        }

        v172 = 0xAAAAAAAAAAAAAAABLL * (v170 >> 3);
        if (v172 <= 0xAAAAAAAAAAAAAAALL)
        {
          v173 = 0xAAAAAAAAAAAAAAABLL * (v171 >> 3);
          if (2 * v173 > v172)
          {
            v172 = 2 * v173;
          }

          if (v173 >= 0x555555555555555)
          {
            v174 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v174 = v172;
          }

          if (v174 <= 0xAAAAAAAAAAAAAAALL)
          {
            std::allocator<AudioDSPGraph::PropertyEndpoint>::allocate_at_least[abi:ne200100](v174);
          }
        }

        std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
      }

      v175 = v157;
      v176 = v165[10];
      v177 = v176 - v167;
      if (v176 - v167 >= v170)
      {
        v157 = v175;
        if (v457 != __src)
        {
          memmove(v165[9], __src, v170 - 4);
        }

        v165[10] = &v167[v170];
      }

      else
      {
        if (v176 != v167)
        {
          memmove(v165[9], __src, v177 - 4);
          v176 = v165[10];
        }

        v178 = v169 - &v168[v177];
        if (v169 != &v168[v177])
        {
          memmove(v176, &v168[v177], v178 - 4);
        }

        v165[10] = &v176[v178];
        v157 = v175;
      }
    }

    if (__src)
    {
      v457 = __src;
      operator delete(__src);
    }

    v156 = a2;
    if (v455[32] == 1 && *&v455[8])
    {
      *&v455[16] = *&v455[8];
      operator delete(*&v455[8]);
    }

    if (v437 == 1 && __p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v158 += 10;
    if (v158 != v157)
    {
      continue;
    }

    break;
  }

LABEL_325:
  v179 = v156;
  v180 = v156[9].mSampleRate;
  v181 = *&v179[9].mFormatID;
  if (*&v180 != v181)
  {
    while (1)
    {
      v182 = *(*&v180 + 32);
      v183 = *(*&v180 + 40);
      v184 = (*&v180 + 8);
      v185 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(v5 + 117, (*&v180 + 8));
      if (!v185)
      {
        goto LABEL_571;
      }

      v186 = v185[5];
      if (!v186)
      {
        break;
      }

      if (*(v5 + 921) == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v455, "graph is configured");
        AudioDSPGraph::ThrowException(1667655457, v455, off_1E8336198);
      }

      v187 = std::__hash_table<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::DSP::AUDSPGraph::ParameterManager::MetaParameter>>>::find<unsigned int>(v5 + 78, **&v180);
      if (!v187)
      {
        std::string::basic_string[abi:ne200100]<0>(v455, "connectProperty : inPropertyID not found");
        AudioDSPGraph::ThrowException(1852204065, v455, off_1E83361B0);
      }

      v188 = v187;
      v190 = v187[10];
      v189 = v187[11];
      if (v190 >= v189)
      {
        v192 = v187[9];
        v193 = 0xAAAAAAAAAAAAAAABLL * ((v190 - v192) >> 3);
        v194 = v193 + 1;
        if (v193 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
        }

        v195 = 0xAAAAAAAAAAAAAAABLL * ((v189 - v192) >> 3);
        if (2 * v195 > v194)
        {
          v194 = 2 * v195;
        }

        if (v195 >= 0x555555555555555)
        {
          v196 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v196 = v194;
        }

        if (v196)
        {
          std::allocator<AudioDSPGraph::PropertyEndpoint>::allocate_at_least[abi:ne200100](v196);
        }

        v197 = 24 * v193;
        *v197 = v186;
        *(v197 + 8) = v182;
        *(v197 + 16) = v183;
        v191 = 24 * v193 + 24;
        v198 = v188[9];
        v199 = v188[10] - v198;
        v200 = (24 * v193 - v199);
        memcpy(v200, v198, v199);
        v201 = v188[9];
        v188[9] = v200;
        v188[10] = v191;
        v188[11] = 0;
        if (v201)
        {
          operator delete(v201);
        }

        v5 = this;
      }

      else
      {
        *v190 = v186;
        *(v190 + 8) = v182;
        v191 = v190 + 24;
        *(v190 + 16) = v183;
      }

      v188[10] = v191;
      *&v180 += 48;
      if (*&v180 == v181)
      {
        goto LABEL_344;
      }
    }

    v184 = (*&v180 + 8);
LABEL_571:
    AudioDSPGraph::stringFromFourCharCode<unsigned int>(&v451, **&v180);
    std::make_format_args[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>,std::string,std::string const>(&v452, &v451, v184);
    *v455 = &v455[40];
    *&v455[8] = xmmword_1C925F110;
    *&v455[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    *&v455[32] = 0;
    v460 = &v455[40];
    *__s1 = 2;
    *&__s1[8] = &v452;
    *&__s1[16] = __s.__r_.__value_.__l.__size_;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v455, "property connection {} box {} not found", 41, __s1);
    std::string::basic_string<std::string_view,0>(v434, v460, *&v455[16]);
    if (v460 != &v455[40])
    {
      operator delete(v460);
    }

    AudioDSPGraph::ThrowException(1852204065, v434, off_1E8335B68);
  }

LABEL_344:
  v202 = a2;
  v203 = *&a2[9].mBytesPerFrame;
  for (n = *&a2[9].mBitsPerChannel; v203 != n; v203 += 88)
  {
    v204 = *(v203 + 24);
    v205 = *(v203 + 32);
    v206 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(v5 + 117, v203);
    if (!v206 || (v207 = v206[5]) == 0)
    {
      v339 = *(v203 + 23);
      v340 = v339;
      v341 = *v203;
      v342 = *(v203 + 8);
      v452.__r_.__value_.__r.__words[2] = 13;
      if ((v339 & 0x80u) != 0)
      {
        v339 = v342;
      }

      if (v340 >= 0)
      {
        v343 = v203;
      }

      else
      {
        v343 = v341;
      }

      v452.__r_.__value_.__l.__size_ = v339;
      v452.__r_.__value_.__r.__words[0] = v343;
      *v455 = &v455[40];
      *&v455[8] = xmmword_1C925F110;
      *&v455[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
      *&v455[32] = 0;
      v460 = &v455[40];
      *__s1 = 1;
      *&__s1[8] = &v452;
      *&__s1[16] = 13;
      std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v455, "property wire source box {} not found", 39, __s1);
      std::string::basic_string<std::string_view,0>(v433, v460, *&v455[16]);
      if (v460 != &v455[40])
      {
        operator delete(v460);
      }

      AudioDSPGraph::ThrowException(1852204065, v433, off_1E8335B80);
    }

    v208 = *(v203 + 64);
    v209 = *(v203 + 72);
    v210 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(v5 + 117, (v203 + 40));
    if (!v210 || (v211 = v210[5]) == 0)
    {
      v344 = *(v203 + 63);
      v345 = v344;
      v346 = *(v203 + 40);
      v347 = *(v203 + 48);
      v452.__r_.__value_.__r.__words[2] = 13;
      if ((v344 & 0x80u) != 0)
      {
        v344 = v347;
      }

      if (v345 >= 0)
      {
        v348 = v203 + 40;
      }

      else
      {
        v348 = v346;
      }

      v452.__r_.__value_.__l.__size_ = v344;
      v452.__r_.__value_.__r.__words[0] = v348;
      *v455 = &v455[40];
      *&v455[8] = xmmword_1C925F110;
      *&v455[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
      *&v455[32] = 0;
      v460 = &v455[40];
      *__s1 = 1;
      *&__s1[8] = &v452;
      *&__s1[16] = 13;
      std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v455, "property wire destination {} not found", 40, __s1);
      std::string::basic_string<std::string_view,0>(v432, v460, *&v455[16]);
      if (v460 != &v455[40])
      {
        operator delete(v460);
      }

      AudioDSPGraph::ThrowException(1852204065, v432, off_1E8335B98);
    }

    if (*(v5 + 921) == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(v455, "graph is configured");
      AudioDSPGraph::ThrowException(1667655457, v455, off_1E8335F28);
    }

    v212 = *(v203 + 80);
    v213 = *(v5 + 71);
    v214 = *(v5 + 72);
    if (v213 >= v214)
    {
      v216 = *(v5 + 70);
      v217 = v213 - v216;
      v218 = 0x6DB6DB6DB6DB6DB7 * ((v213 - v216) >> 3);
      v219 = v218 + 1;
      if ((v218 + 1) > 0x492492492492492)
      {
        std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
      }

      v220 = 0x6DB6DB6DB6DB6DB7 * ((v214 - v216) >> 3);
      if (2 * v220 > v219)
      {
        v219 = 2 * v220;
      }

      if (v220 >= 0x249249249249249)
      {
        v221 = 0x492492492492492;
      }

      else
      {
        v221 = v219;
      }

      if (v221)
      {
        if (v221 <= 0x492492492492492)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v222 = 56 * v218;
      *v222 = v207;
      *(v222 + 8) = v204;
      v420 = v205;
      *(v222 + 16) = v205;
      *(v222 + 24) = v211;
      *(v222 + 32) = v208;
      *(v222 + 40) = v209;
      v223 = v212;
      *(v222 + 48) = v212;
      v215 = 56 * v218 + 56;
      v224 = 56 * v218 - v217;
      memcpy((v222 - v217), v216, v217);
      *(v5 + 70) = v224;
      *(v5 + 71) = v215;
      *(v5 + 72) = 0;
      if (v216)
      {
        operator delete(v216);
      }

      v212 = v223;
      v5 = this;
      v205 = v420;
    }

    else
    {
      *v213 = v207;
      *(v213 + 8) = v204;
      *(v213 + 16) = v205;
      *(v213 + 24) = v211;
      *(v213 + 32) = v208;
      *(v213 + 40) = v209;
      v215 = v213 + 56;
      *(v213 + 48) = v212;
    }

    *(v5 + 71) = v215;
    v226 = *(v211 + 192);
    v225 = *(v211 + 200);
    if (v226 >= v225)
    {
      v228 = *(v211 + 184);
      v229 = (v226 - v228) >> 6;
      if ((v229 + 1) >> 58)
      {
        std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
      }

      v230 = v225 - v228;
      v231 = v230 >> 5;
      if (v230 >> 5 <= (v229 + 1))
      {
        v231 = v229 + 1;
      }

      if (v230 >= 0x7FFFFFFFFFFFFFC0)
      {
        v232 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v232 = v231;
      }

      *&v455[32] = v211 + 184;
      if (v232)
      {
        if (!(v232 >> 58))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v233 = v229 << 6;
      *v455 = 0;
      *&v455[8] = v233;
      *&v455[16] = v229 << 6;
      *&v455[24] = 0;
      *v233 = v207;
      *(v233 + 8) = v204;
      *(v233 + 16) = v205;
      *(v233 + 24) = v208;
      *(v233 + 32) = v209;
      *(v233 + 36) = v212;
      *(v233 + 48) = 0;
      *(v233 + 56) = 0;
      *(v233 + 40) = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(((v229 << 6) + 40), 0, 0, 0);
      *&v455[16] += 64;
      v235 = *(v211 + 184);
      v234 = *(v211 + 192);
      v236 = *&v455[8] + v235 - v234;
      v202 = a2;
      v5 = this;
      if (v235 != v234)
      {
        v237 = *(v211 + 184);
        v238 = *&v455[8] + v235 - v234;
        do
        {
          v239 = *v237;
          v240 = v237[1];
          *(v238 + 29) = *(v237 + 29);
          *v238 = v239;
          *(v238 + 16) = v240;
          *(v238 + 48) = 0;
          *(v238 + 56) = 0;
          *(v238 + 40) = 0;
          *(v238 + 40) = *(v237 + 40);
          *(v238 + 56) = *(v237 + 7);
          *(v237 + 5) = 0;
          *(v237 + 6) = 0;
          *(v237 + 7) = 0;
          v237 += 4;
          v238 += 64;
        }

        while (v237 != v234);
        do
        {
          v241 = *(v235 + 40);
          if (v241)
          {
            *(v235 + 48) = v241;
            operator delete(v241);
          }

          v235 += 64;
        }

        while (v235 != v234);
      }

      v242 = *(v211 + 184);
      *(v211 + 184) = v236;
      v243 = *(v211 + 200);
      v421 = *&v455[16];
      *(v211 + 192) = *&v455[16];
      *&v455[16] = v242;
      *&v455[24] = v243;
      *&v455[8] = v242;
      *v455 = v242;
      std::__split_buffer<AudioDSPGraph::PropertyTap>::~__split_buffer(v455);
      v227 = v421;
    }

    else
    {
      *v226 = v207;
      *(v226 + 8) = v204;
      *(v226 + 16) = v205;
      *(v226 + 24) = v208;
      *(v226 + 32) = v209;
      *(v226 + 36) = v212;
      *(v226 + 48) = 0;
      *(v226 + 56) = 0;
      *(v226 + 40) = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>((v226 + 40), 0, 0, 0);
      v227 = v226 + 64;
      *(v211 + 192) = v226 + 64;
      v202 = a2;
    }

    *(v211 + 192) = v227;
    atomic_fetch_add((v211 + 760), 1u);
  }

  v244 = v202[2].mSampleRate;
  v245 = *&v202[2].mFormatID;
  if (*&v244 != v245)
  {
    v246 = *&v244 + 24;
    do
    {
      if (*(v246 + 24) == 1)
      {
        v247 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(v5 + 117, (v246 - 24));
        if (!v247 || (v248 = v247[5]) == 0)
        {
          v382 = *(v246 - 1);
          v383 = v382;
          v384 = *(v246 - 24);
          v385 = *(v246 - 16);
          v452.__r_.__value_.__r.__words[2] = 13;
          if ((v382 & 0x80u) != 0)
          {
            v382 = v385;
          }

          if (v383 >= 0)
          {
            v386 = v246 - 24;
          }

          else
          {
            v386 = v384;
          }

          v452.__r_.__value_.__l.__size_ = v382;
          v452.__r_.__value_.__r.__words[0] = v386;
          *v455 = &v455[40];
          *&v455[8] = xmmword_1C925F110;
          *&v455[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
          *&v455[32] = 0;
          v460 = &v455[40];
          *__s1 = 1;
          *&__s1[8] = &v452;
          *&__s1[16] = 13;
          std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v455, "ordering constraint before box {} not found", 45, __s1);
          std::string::basic_string<std::string_view,0>(v431, v460, *&v455[16]);
          if (v460 != &v455[40])
          {
            operator delete(v460);
          }

          AudioDSPGraph::ThrowException(1852204065, v431, off_1E8335BB0);
        }

        v249 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(v5 + 117, v246);
        if (!v249 || (v250 = v249[5]) == 0)
        {
          v387 = *(v246 + 23);
          v388 = v387;
          v389 = *v246;
          v390 = *(v246 + 8);
          v452.__r_.__value_.__r.__words[2] = 13;
          if ((v387 & 0x80u) != 0)
          {
            v387 = v390;
          }

          if (v388 >= 0)
          {
            v391 = v246;
          }

          else
          {
            v391 = v389;
          }

          v452.__r_.__value_.__l.__size_ = v387;
          v452.__r_.__value_.__r.__words[0] = v391;
          *v455 = &v455[40];
          *&v455[8] = xmmword_1C925F110;
          *&v455[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
          *&v455[32] = 0;
          v460 = &v455[40];
          *__s1 = 1;
          *&__s1[8] = &v452;
          *&__s1[16] = 13;
          std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v455, "ordering constraint after box {} not found", 44, __s1);
          std::string::basic_string<std::string_view,0>(v430, v460, *&v455[16]);
          if (v460 != &v455[40])
          {
            operator delete(v460);
          }

          AudioDSPGraph::ThrowException(1852204065, v430, off_1E8335BC8);
        }

        if (*(v5 + 921) == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(v455, "graph is configured");
          AudioDSPGraph::ThrowException(1667655457, v455, off_1E8335F40);
        }

        *v455 = v249[5];
        std::__hash_table<AudioDSPGraph::Box *,std::hash<AudioDSPGraph::Box *>,std::equal_to<AudioDSPGraph::Box *>,std::allocator<AudioDSPGraph::Box *>>::__emplace_unique_key_args<AudioDSPGraph::Box *,AudioDSPGraph::Box * const&>((v248 + 120), v250, v455);
        v5 = this;
      }

      v251 = v246 + 32;
      v246 += 56;
    }

    while (v251 != v245);
  }

  v252 = *&a2[10].mFormatID;
  v253 = *&a2[10].mBytesPerPacket;
  if (v252 != v253)
  {
    while (1)
    {
      data = *v252;
      v256 = (v252 + 32);
      v255 = *(v252 + 32);
      v257 = (v252 + 8);
      LODWORD(v450.__r_.__value_.__l.__data_) = *v252;
      if (v255 >> 15 == 49898)
      {
        break;
      }

      if (v255 == 1634626682 && *(v252 + 36) == 1952805748)
      {
        if ((*(v252 + 31) & 0x80000000) == 0)
        {
          v262 = *v257;
          *&v455[16] = *(v252 + 24);
          *v455 = v262;
          v263 = *(v252 + 48);
          *&v455[24] = *v256;
          *&v455[40] = v263;
          *__s1 = data;
          goto LABEL_414;
        }

        std::string::__init_copy_ctor_external(v455, *(v252 + 8), *(v252 + 16));
        v269 = *(v252 + 31);
        v270 = *(v252 + 48);
        *&v455[24] = *v256;
        *&v455[40] = v270;
        *__s1 = v450.__r_.__value_.__l.__data_;
        if (v269 < 0)
        {
          std::string::__init_copy_ctor_external(&__s1[8], *(v252 + 8), *(v252 + 16));
        }

        else
        {
LABEL_414:
          *&__s1[8] = *v257;
          *&__s1[24] = *(v252 + 24);
        }

        p_src = 0;
        operator new();
      }

      if (*(v252 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(v455, *(v252 + 8), *(v252 + 16));
        data = v450.__r_.__value_.__l.__data_;
        v5 = this;
      }

      else
      {
        v261 = *v257;
        *&v455[16] = *(v252 + 24);
        *v455 = v261;
      }

      v266 = *v256;
      *&v455[40] = *(v252 + 48);
      *&v455[24] = v266;
      __src = &unk_1F48D0E28;
      p_src = &__src;
      v451.__r_.__value_.__r.__words[0] = &v450;
      v267 = std::__hash_table<std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,AudioDSPGraph::AnalyzerBuilder::Info>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v5 + 62, data, &v451);
      v268 = v267;
      if (*(v267 + 47) < 0)
      {
        operator delete(v267[3]);
      }

      *(v268 + 3) = *v455;
      v268[5] = *&v455[16];
      v455[23] = 0;
      v455[0] = 0;
      *(v268 + 3) = *&v455[24];
      *(v268 + 16) = *&v455[40];
      std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Analyzer> ()(void)>::operator=[abi:ne200100]((v268 + 9), &__src);
      std::__function::__value_func<std::unique_ptr<AudioDSPGraph::Analyzer> ()(void)>::~__value_func[abi:ne200100](&__src);
      if ((v455[23] & 0x80000000) != 0)
      {
        operator delete(*v455);
      }

      v252 += 56;
      if (v252 == v253)
      {
        goto LABEL_420;
      }
    }

    if ((*(v252 + 31) & 0x80000000) == 0)
    {
      v258 = *v257;
      *&v455[16] = *(v252 + 24);
      *v455 = v258;
      v259 = *v256;
      *&v455[40] = *(v252 + 48);
      *&v455[24] = v259;
      LODWORD(v452.__r_.__value_.__l.__data_) = data;
      *(v452.__r_.__value_.__r.__words + 4) = *v256;
      HIDWORD(v452.__r_.__value_.__r.__words[2]) = *(v252 + 48);
      goto LABEL_406;
    }

    std::string::__init_copy_ctor_external(v455, *(v252 + 8), *(v252 + 16));
    v264 = *(v252 + 31);
    v265 = *v256;
    *&v455[40] = *(v252 + 48);
    *&v455[24] = v265;
    LODWORD(v452.__r_.__value_.__l.__data_) = v450.__r_.__value_.__l.__data_;
    *(v452.__r_.__value_.__r.__words + 4) = *v256;
    HIDWORD(v452.__r_.__value_.__r.__words[2]) = *(v252 + 48);
    if (v264 < 0)
    {
      std::string::__init_copy_ctor_external(&__s, *(v252 + 8), *(v252 + 16));
    }

    else
    {
LABEL_406:
      *&__s.__r_.__value_.__l.__data_ = *v257;
      __s.__r_.__value_.__r.__words[2] = *(v252 + 24);
    }

    p_src = 0;
    operator new();
  }

LABEL_420:
  v271 = *&a2[10].mBitsPerChannel;
  v272 = a2[11].mSampleRate;
  if (v271 == *&v272)
  {
    goto LABEL_497;
  }

  while (2)
  {
    v273 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(v5 + 117, v271 + 1);
    if (!v273 || (v274 = v273[5]) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v429, "analysis box not found");
      AudioDSPGraph::ThrowException(1852204065, v429, off_1E8335BE0);
    }

    v275 = *v271;
    v276 = v271[8];
    std::mutex::lock((v274 + 256));
    for (ii = *(v274 + 320); ii != *(v274 + 328); ii += 8)
    {
      if (*(*ii + 24) == v275 && *(*ii + 80) == v276)
      {
        goto LABEL_496;
      }
    }

    v278 = *(v274 + 16);
    v279 = v278[32];
    if (!*&v279)
    {
      goto LABEL_510;
    }

    v280 = vcnt_s8(v279);
    v280.i16[0] = vaddlv_u8(v280);
    if (v280.u32[0] > 1uLL)
    {
      v281 = v275;
      if (*&v279 <= v275)
      {
        v281 = v275 % v279.i32[0];
      }
    }

    else
    {
      v281 = (v279.i32[0] - 1) & v275;
    }

    v282 = *(*&v278[31] + 8 * v281);
    if (!v282 || (v283 = *v282) == 0)
    {
LABEL_510:
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    while (2)
    {
      v284 = v283[1];
      if (v284 != v275)
      {
        if (v280.u32[0] > 1uLL)
        {
          if (v284 >= *&v279)
          {
            v284 %= *&v279;
          }
        }

        else
        {
          v284 &= *&v279 - 1;
        }

        if (v284 != v281)
        {
          goto LABEL_510;
        }

        goto LABEL_443;
      }

      if (*(v283 + 4) != v275)
      {
LABEL_443:
        v283 = *v283;
        if (!v283)
        {
          goto LABEL_510;
        }

        continue;
      }

      break;
    }

    v285 = v283[12];
    if (!v285)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v286 = (*(*v285 + 48))(&v452);
    v287 = v452.__r_.__value_.__r.__words[0];
    if (!v452.__r_.__value_.__r.__words[0])
    {
      std::string::basic_string[abi:ne200100]<0>(v455, "Box::addAnalyzer, Analyzer Not Supported.");
      AudioDSPGraph::ThrowException(1852204065, v455, off_1E8334B30);
    }

    *(v452.__r_.__value_.__r.__words[0] + 80) = v276;
    *(v287 + 88) = AudioDSPGraph::Graph::generateSerialNumber(v286);
    v288 = *(v274 + 16);
    v289 = v452.__r_.__value_.__r.__words[0];
    std::mutex::lock((v288 + 176));
    v290 = 0x9DDFEA08EB382D69 * ((8 * (v289 & 0x1FFFFFFF) + 8) ^ HIDWORD(v289));
    v291 = 0x9DDFEA08EB382D69 * (HIDWORD(v289) ^ (v290 >> 47) ^ v290);
    v292 = 0x9DDFEA08EB382D69 * (v291 ^ (v291 >> 47));
    v293 = *(v288 + 104);
    if (!*&v293)
    {
      goto LABEL_463;
    }

    v294 = vcnt_s8(v293);
    v294.i16[0] = vaddlv_u8(v294);
    if (v294.u32[0] > 1uLL)
    {
      v295 = 0x9DDFEA08EB382D69 * (v291 ^ (v291 >> 47));
      if (v292 >= *&v293)
      {
        v295 = v292 % *&v293;
      }
    }

    else
    {
      v295 = v292 & (*&v293 - 1);
    }

    v296 = *(*(v288 + 96) + 8 * v295);
    if (!v296 || (v297 = *v296) == 0)
    {
LABEL_463:
      operator new();
    }

    while (2)
    {
      v298 = v297[1];
      if (v298 != v292)
      {
        if (v294.u32[0] > 1uLL)
        {
          if (v298 >= *&v293)
          {
            v298 %= *&v293;
          }
        }

        else
        {
          v298 &= *&v293 - 1;
        }

        if (v298 != v295)
        {
          goto LABEL_463;
        }

LABEL_462:
        v297 = *v297;
        if (!v297)
        {
          goto LABEL_463;
        }

        continue;
      }

      break;
    }

    if (v297[2] != v289)
    {
      goto LABEL_462;
    }

    v299 = *(v289 + 88);
    v300 = *(v288 + 144);
    if (!*&v300)
    {
      goto LABEL_480;
    }

    v301 = vcnt_s8(v300);
    v301.i16[0] = vaddlv_u8(v301);
    if (v301.u32[0] > 1uLL)
    {
      v302 = *(v289 + 88);
      if (v299 >= *&v300)
      {
        v302 = v299 % *&v300;
      }
    }

    else
    {
      v302 = (*&v300 - 1) & v299;
    }

    v303 = *(*(v288 + 136) + 8 * v302);
    if (!v303 || (v304 = *v303) == 0)
    {
LABEL_480:
      operator new();
    }

    while (2)
    {
      v305 = v304[1];
      if (v305 != v299)
      {
        if (v301.u32[0] > 1uLL)
        {
          if (v305 >= *&v300)
          {
            v305 %= *&v300;
          }
        }

        else
        {
          v305 &= *&v300 - 1;
        }

        if (v305 != v302)
        {
          goto LABEL_480;
        }

LABEL_479:
        v304 = *v304;
        if (!v304)
        {
          goto LABEL_480;
        }

        continue;
      }

      break;
    }

    if (v304[2] != v299)
    {
      goto LABEL_479;
    }

    std::mutex::unlock((v288 + 176));
    v307 = *(v274 + 328);
    v306 = *(v274 + 336);
    if (v307 >= v306)
    {
      v310 = *(v274 + 320);
      v311 = v307 - v310;
      v312 = (v307 - v310) >> 3;
      v313 = v312 + 1;
      if ((v312 + 1) >> 61)
      {
        std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
      }

      v314 = v306 - v310;
      if (v314 >> 2 > v313)
      {
        v313 = v314 >> 2;
      }

      if (v314 >= 0x7FFFFFFFFFFFFFF8)
      {
        v315 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v315 = v313;
      }

      if (v315)
      {
        if (!(v315 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v316 = v312;
      v317 = (8 * v312);
      v318 = v452.__r_.__value_.__r.__words[0];
      v452.__r_.__value_.__r.__words[0] = 0;
      v319 = &v317[-v316];
      *v317 = v318;
      v309 = v317 + 1;
      memcpy(v319, v310, v311);
      v320 = *(v274 + 320);
      *(v274 + 320) = v319;
      *(v274 + 328) = v309;
      *(v274 + 336) = 0;
      if (v320)
      {
        operator delete(v320);
      }
    }

    else
    {
      v308 = v452.__r_.__value_.__r.__words[0];
      v452.__r_.__value_.__r.__words[0] = 0;
      *v307 = v308;
      v309 = v307 + 8;
    }

    *(v274 + 328) = v309;
    atomic_fetch_add((v274 + 760), 1u);
    v321 = v452.__r_.__value_.__r.__words[0];
    v452.__r_.__value_.__r.__words[0] = 0;
    if (v321)
    {
      (*(*v321 + 8))(v321);
    }

LABEL_496:
    std::mutex::unlock((v274 + 256));
    v271 += 10;
    v5 = this;
    if (v271 != *&v272)
    {
      continue;
    }

    break;
  }

LABEL_497:
  v322 = *&a2[11].mBytesPerPacket;
  v323 = *&a2[11].mBytesPerFrame;
  if (v322 != v323)
  {
    while (1)
    {
      v324 = (v322 + 3);
      v325 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(v5 + 117, v322 + 3);
      if (!v325)
      {
        goto LABEL_621;
      }

      v326 = v325[5];
      if (!v326)
      {
        break;
      }

      v327 = v322;
      if (*(v322 + 23) < 0)
      {
        v327 = *v322;
      }

      (*(*v326 + 144))(v326, v327, *(v322 + 12), *(v322 + 52));
      v322 += 7;
      v5 = this;
      if (v322 == v323)
      {
        goto LABEL_503;
      }
    }

    v324 = (v322 + 3);
LABEL_621:
    v392 = *(v322 + 47);
    v393 = v392;
    v394 = v322[3];
    v395 = v322[4];
    v452.__r_.__value_.__r.__words[2] = 13;
    if ((v392 & 0x80u) != 0)
    {
      v392 = v395;
    }

    if (v393 >= 0)
    {
      v396 = v324;
    }

    else
    {
      v396 = v394;
    }

    v452.__r_.__value_.__l.__size_ = v392;
    v452.__r_.__value_.__r.__words[0] = v396;
    *v455 = &v455[40];
    *&v455[8] = xmmword_1C925F110;
    *&v455[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    *&v455[32] = 0;
    v460 = &v455[40];
    *__s1 = 1;
    *&__s1[8] = &v452;
    *&__s1[16] = 13;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v455, "inject box {} not found", 25, __s1);
    std::string::basic_string<std::string_view,0>(v428, v460, *&v455[16]);
    if (v460 != &v455[40])
    {
      operator delete(v460);
    }

    AudioDSPGraph::ThrowException(1852204065, v428, off_1E8335BF8);
  }

LABEL_503:
  v328 = a2[12].mSampleRate;
  v329 = *&a2[12].mFormatID;
  if (*&v328 != v329)
  {
    while (1)
    {
      v330 = *&v328 + 24;
      v331 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(v5 + 117, (*&v328 + 24));
      if (!v331)
      {
        goto LABEL_630;
      }

      v332 = v331[5];
      if (!v332)
      {
        break;
      }

      v333 = v328;
      if (*(*&v328 + 23) < 0)
      {
        v333 = **&v328;
      }

      (*(*v332 + 160))(v332, COERCE_FLOAT64(*&v333), *(*&v328 + 48), 1, (BYTE1(a2[1].mFormatID) >> 3) & 1, 4130);
      *&v328 += 56;
      v5 = this;
      if (*&v328 == v329)
      {
        return;
      }
    }

    v330 = *&v328 + 24;
LABEL_630:
    v397 = *(*&v328 + 47);
    v398 = v397;
    v399 = *(*&v328 + 24);
    v400 = *(*&v328 + 32);
    v452.__r_.__value_.__r.__words[2] = 13;
    if ((v397 & 0x80u) != 0)
    {
      v397 = v400;
    }

    if (v398 >= 0)
    {
      v401 = v330;
    }

    else
    {
      v401 = v399;
    }

    v452.__r_.__value_.__l.__size_ = v397;
    v452.__r_.__value_.__r.__words[0] = v401;
    *v455 = &v455[40];
    *&v455[8] = xmmword_1C925F110;
    *&v455[24] = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    *&v455[32] = 0;
    v460 = &v455[40];
    *__s1 = 1;
    *&__s1[8] = &v452;
    *&__s1[16] = 13;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v455, "record box {} not found", 25, __s1);
    std::string::basic_string<std::string_view,0>(v427, v460, *&v455[16]);
    if (v460 != &v455[40])
    {
      operator delete(v460);
    }

    AudioDSPGraph::ThrowException(1852204065, v427, off_1E8335C10);
  }
}