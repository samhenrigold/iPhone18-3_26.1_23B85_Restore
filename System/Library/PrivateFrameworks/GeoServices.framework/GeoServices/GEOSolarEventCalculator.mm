@interface GEOSolarEventCalculator
- (void)dealloc;
@end

@implementation GEOSolarEventCalculator

- (void)dealloc
{
  rts = self->_rts;
  if (rts)
  {
    std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](rts + 312);
    MEMORY[0x18CFD1E40](rts, 0x1020C40CBE26B1DLL);
  }

  v4.receiver = self;
  v4.super_class = GEOSolarEventCalculator;
  [(GEOSolarEventCalculator *)&v4 dealloc];
}

@end