os_log_t __gvnode_logger_block_invoke()
{
  result = os_log_create("com.apple.graphvisualizer", "GVNode");
  gvnode_logger_logger = result;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

os_log_t __gvgraph_logger_block_invoke()
{
  result = os_log_create("com.apple.graphvisualizer", "GVGraph");
  gvgraph_logger_logger = result;
  return result;
}

void _traverse_edges(void *a1, uint64_t a2, uint64_t a3, void *a4, int a5, unsigned int *a6, void *a7, uint64_t a8)
{
  v40 = *MEMORY[0x277D85DE8];
  if (a1 && a4)
  {
    if (a2)
    {
      if (([a7 containsObject:a2] & 1) != 0 || (*(a8 + 16))(a8, a2, a3, a4) == 1)
      {
        return;
      }

      [a7 addObject:a2];
    }

    v14 = [a1 edges];
    v15 = [objc_msgSend(v14 "array")];
    v16 = [v14 count];
    if (a6)
    {
      if (v16)
      {
        v17 = [v14 count];
        v18 = v17 - 1;
        if (v17 != 1)
        {
          do
          {
            [v15 exchangeObjectAtIndex:rand_r(a6) % (v18 + 1) withObjectAtIndex:v18];
            --v18;
          }

          while (v18);
        }
      }
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v19 = [v15 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v36;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v36 != v21)
          {
            objc_enumerationMutation(v15);
          }

          v23 = *(*(&v35 + 1) + 8 * i);
          if (([a7 containsObject:v23] & 1) == 0)
          {
            if (a5 == 2)
            {
              if ([v23 from] == a4)
              {
                _traverse_edges(a1, v23, [v23 from], objc_msgSend(v23, "to"), 2, a6, a7, v33);
              }

              if ([v23 to] == a4)
              {
                v31 = [v23 to];
                v25 = [v23 from];
                v26 = a1;
                v27 = v23;
                v28 = v31;
                v29 = 2;
                goto LABEL_28;
              }
            }

            else
            {
              if (a5 == 1)
              {
                if ([v23 to] != a4)
                {
                  continue;
                }

                v30 = [v23 to];
                v25 = [v23 from];
                v26 = a1;
                v27 = v23;
                v28 = v30;
                v29 = 1;
                goto LABEL_28;
              }

              if (!a5 && [v23 from] == a4)
              {
                v24 = [v23 from];
                v25 = [v23 to];
                v26 = a1;
                v27 = v23;
                v28 = v24;
                v29 = 0;
LABEL_28:
                _traverse_edges(v26, v27, v28, v25, v29, a6, a7, v33);
                continue;
              }
            }
          }
        }

        v20 = [v15 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v20);
    }
  }
}

void sub_2507D520C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2507D537C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2507D8644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t medianPt(void *a1)
{
  result = [a1 count];
  if (result)
  {
    v3 = result >> 1;
    if ((result & 1) == 0)
    {
      [objc_msgSend(a1 objectAtIndexedSubscript:{v3 - 1), "center"}];
    }

    return [objc_msgSend(a1 objectAtIndexedSubscript:{v3), "center"}];
  }

  return result;
}

uint64_t __sortByIndex_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 index];
  if (v5 < [a3 index])
  {
    return -1;
  }

  v7 = [a2 index];
  return v7 > [a3 index];
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}