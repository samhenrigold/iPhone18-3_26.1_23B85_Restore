@interface UIResponder
@end

@implementation UIResponder

id *__58__UIResponder__NTKResponderFix___ntk_becomeFirstResponder__block_invoke(id *result)
{
  if ((*(*(result[5] + 1) + 24) & 1) == 0)
  {
    v1 = result;
    result = [result[4] becomeFirstResponder];
    *(*(v1[5] + 1) + 24) = result;
  }

  return result;
}

@end