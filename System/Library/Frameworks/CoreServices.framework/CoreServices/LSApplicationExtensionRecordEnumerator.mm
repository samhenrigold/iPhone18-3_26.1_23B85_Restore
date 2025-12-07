@interface LSApplicationExtensionRecordEnumerator
@end

@implementation LSApplicationExtensionRecordEnumerator

void __69___LSApplicationExtensionRecordEnumerator__prepareWithContext_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = _LSGetPlugin(**(a1 + 40), a3);
  if (v7)
  {
    v8 = *(a1 + 48);
    if (!v8 || v8 == *(v7 + 180))
    {
      if ([*(a1 + 32) _evaluatePluginNoIO:a3 data:v7 extensionPointID:? context:?])
      {
        v9 = *(a1 + 32) + 136;
        v11 = *(*(a1 + 32) + 144);
        v10 = *(*(a1 + 32) + 152);
        if (v11 >= v10)
        {
          v13 = *v9;
          v14 = v11 - *v9;
          v15 = v14 >> 2;
          v16 = (v14 >> 2) + 1;
          if (v16 >> 62)
          {
            std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
          }

          v17 = v10 - v13;
          if (v17 >> 1 > v16)
          {
            v16 = v17 >> 1;
          }

          v18 = v17 >= 0x7FFFFFFFFFFFFFFCLL;
          v19 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v18)
          {
            v19 = v16;
          }

          if (v19)
          {
            std::allocator<unsigned int>::allocate_at_least[abi:nn200100](*(a1 + 32) + 136, v19);
          }

          *(4 * v15) = a3;
          v12 = 4 * v15 + 4;
          memcpy(0, v13, v14);
          v20 = *v9;
          *v9 = 0;
          *(v9 + 8) = v12;
          *(v9 + 16) = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v11 = a3;
          v12 = (v11 + 1);
        }

        *(v9 + 8) = v12;
        if ((*(a1 + 52) & 1) == 0)
        {
          *a4 = 1;
        }
      }
    }
  }
}

uint64_t __69___LSApplicationExtensionRecordEnumerator__prepareWithContext_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [(_LSDatabase *)**(a1 + 40) store];

  return _CSArrayEnumerateAllValues();
}

@end