void KB::LikelihoodInfo::~LikelihoodInfo(void **this)
{
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

uint64_t *std::vector<unsigned int>::vector[abi:nn200100](uint64_t *a1, int *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    std::vector<unsigned int>::__vallocate[abi:nn200100](a1, a3);
  }

  return a1;
}

void std::vector<unsigned int>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a1, a2);
  }

  std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
}

void _GLOBAL__sub_I_TIKeyboardInputManager_haw_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_29EA1F000);

  objc_autoreleasePoolPop(v0);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}