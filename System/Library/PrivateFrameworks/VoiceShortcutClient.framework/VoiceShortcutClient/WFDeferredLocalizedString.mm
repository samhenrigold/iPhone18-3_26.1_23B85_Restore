@interface WFDeferredLocalizedString
- (WFDeferredLocalizedString)initWithCharactersNoCopy:(unsigned __int16 *)copy length:(unint64_t)length freeWhenDone:(BOOL)done;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)length;
- (unsigned)characterAtIndex:(unint64_t)index;
@end

@implementation WFDeferredLocalizedString

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[WFDeferredLocalizedString alloc] initWithString:self];
  localizedValue = [(WFDeferredLocalizedString *)self localizedValue];
  [(WFDeferredLocalizedString *)v4 setLocalizedValue:localizedValue];

  stringResource = [(WFDeferredLocalizedString *)self stringResource];
  [(WFDeferredLocalizedString *)v4 setStringResource:stringResource];

  return v4;
}

- (unsigned)characterAtIndex:(unint64_t)index
{
  backingStore = [(WFDeferredLocalizedString *)self backingStore];
  LOWORD(index) = [backingStore characterAtIndex:index];

  return index;
}

- (unint64_t)length
{
  backingStore = [(WFDeferredLocalizedString *)self backingStore];
  v3 = [backingStore length];

  return v3;
}

- (WFDeferredLocalizedString)initWithCharactersNoCopy:(unsigned __int16 *)copy length:(unint64_t)length freeWhenDone:(BOOL)done
{
  doneCopy = done;
  v12.receiver = self;
  v12.super_class = WFDeferredLocalizedString;
  v8 = [(WFDeferredLocalizedString *)&v12 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharactersNoCopy:copy length:length freeWhenDone:doneCopy];
    [(WFDeferredLocalizedString *)v8 setBackingStore:v9];

    v10 = v8;
  }

  return v8;
}

@end