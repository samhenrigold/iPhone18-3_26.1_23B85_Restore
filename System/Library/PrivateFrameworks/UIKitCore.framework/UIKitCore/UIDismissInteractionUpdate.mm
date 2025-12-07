@interface UIDismissInteractionUpdate
@end

@implementation UIDismissInteractionUpdate

double __39___UIDismissInteractionUpdate_isEqual___block_invoke_2@<D0>(uint64_t a1@<X0>, const char *a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_msgSend_translation(v3, a2);
  }

  else
  {
    result = 0.0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

double __39___UIDismissInteractionUpdate_isEqual___block_invoke_3@<D0>(uint64_t a1@<X0>, const char *a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_msgSend_transform(v3, a2);
  }

  else
  {
    result = 0.0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

@end