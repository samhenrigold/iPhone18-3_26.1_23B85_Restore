@interface UIColor(_QLUtilities)
+ (id)_ql_markupBackgroundColor;
@end

@implementation UIColor(_QLUtilities)

+ (id)_ql_markupBackgroundColor
{
  if (_ql_markupBackgroundColor_onceToken != -1)
  {
    +[UIColor(_QLUtilities) _ql_markupBackgroundColor];
  }

  v2 = _ql_markupBackgroundColor_markupBackgroundColor;

  return v2;
}

@end