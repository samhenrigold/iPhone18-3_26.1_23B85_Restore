@interface SGCubicColorCurve
- (SGCubicColorCurve)initWithColorCurveElements:(id)elements;
- (SGCubicColorCurve)initWithCubicColorCurveElements:(id)elements;
- (id)colorForFraction:(float)fraction;
- (void)dealloc;
- (void)rgbfColorForFraction:(void *)result;
@end

@implementation SGCubicColorCurve

- (SGCubicColorCurve)initWithCubicColorCurveElements:(id)elements
{
  elementsCopy = elements;
  v19.receiver = self;
  v19.super_class = SGCubicColorCurve;
  v5 = [(SGCubicColorCurve *)&v19 init];
  if (v5)
  {
    v6 = [elementsCopy sortedArrayUsingComparator:&__block_literal_global_2];
    v7 = [elementsCopy count];
    v5->_count = v7;
    v5->_fractions = malloc_type_malloc(4 * v7, 0x100004052888210uLL);
    *v5->_colors = malloc_type_malloc(16 * v5->_count, 0x1000040451B5BE8uLL);
    v8 = [[SGCubicSpline alloc] initWithNumberOfControlPoints:LODWORD(v5->_count) isClosed:0];
    spline = v5->_spline;
    v5->_spline = v8;

    controlPointsBuffer = [(SGCubicSpline *)v5->_spline controlPointsBuffer];
    if (v5->_count)
    {
      v11 = controlPointsBuffer;
      v12 = 0;
      do
      {
        v13 = [v6 objectAtIndexedSubscript:v12];
        [v13 fraction];
        *&v14 = v14;
        *(*v11 + 8 * v12) = __PAIR64__(LODWORD(v14), v12);
        [v13 fraction];
        *&v15 = v15;
        v5->_fractions[v12] = *&v15;
        [v13 color];
        *(*v5->_colors + 16 * v12) = v16;

        ++v12;
      }

      while (v5->_count > v12);
    }

    [(SGCubicSpline *)v5->_spline process];
    v17 = v5;
  }

  return v5;
}

uint64_t __53__SGCubicColorCurve_initWithCubicColorCurveElements___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 fraction];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 fraction];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (SGCubicColorCurve)initWithColorCurveElements:(id)elements
{
  elementsCopy = elements;
  v20.receiver = self;
  v20.super_class = SGCubicColorCurve;
  v5 = [(SGCubicColorCurve *)&v20 init];
  if (v5)
  {
    v6 = [elementsCopy sortedArrayUsingComparator:&__block_literal_global_19];
    v7 = [elementsCopy count];
    v5->_count = v7;
    v5->_fractions = malloc_type_malloc(4 * v7, 0x100004052888210uLL);
    *v5->_colors = malloc_type_malloc(16 * v5->_count, 0x1000040451B5BE8uLL);
    v8 = [[SGCubicSpline alloc] initWithNumberOfControlPoints:LODWORD(v5->_count) isClosed:0];
    spline = v5->_spline;
    v5->_spline = v8;

    controlPointsBuffer = [(SGCubicSpline *)v5->_spline controlPointsBuffer];
    if (v5->_count)
    {
      v11 = controlPointsBuffer;
      v12 = 0;
      do
      {
        v13 = [v6 objectAtIndexedSubscript:v12];
        [v13 fraction];
        *(*v11 + 8 * v12) = __PAIR64__(v14, v12);
        [v13 fraction];
        v5->_fractions[v12] = v15;
        color = [v13 color];
        CLKUIConvertToRGBfFromUIColor_fast();
        *(*v5->_colors + 16 * v12) = v17;

        ++v12;
      }

      while (v5->_count > v12);
    }

    [(SGCubicSpline *)v5->_spline process];
    v18 = v5;
  }

  return v5;
}

uint64_t __48__SGCubicColorCurve_initWithColorCurveElements___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 fraction];
  v6 = [v4 numberWithFloat:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 fraction];
  v9 = v8;

  LODWORD(v10) = v9;
  v11 = [v7 numberWithFloat:v10];
  v12 = [v6 compare:v11];

  return v12;
}

- (void)dealloc
{
  free(self->_fractions);
  free(*self->_colors);
  v3.receiver = self;
  v3.super_class = SGCubicColorCurve;
  [(SGCubicColorCurve *)&v3 dealloc];
}

- (id)colorForFraction:(float)fraction
{
  v3 = [(SGCubicColorCurve *)self rgbfColorForFraction:fraction];

  return MEMORY[0x28214CCB0](v3);
}

- (void)rgbfColorForFraction:(void *)result
{
  v2 = *(result + 5);
  if (v2 != 1)
  {
    v3 = 0;
    v4 = *(result + 4);
    while (1)
    {
      v5 = *(v4 + 4 * v3);
      if (v5 <= a2)
      {
        v6 = *(v4 + 4 * v3 + 4);
        if (v6 > a2)
        {
          break;
        }
      }

      if (v2 - 1 == ++v3)
      {
        return result;
      }
    }

    v7 = (a2 - v5) / (v6 - v5) + v3;
    *&v7 = v7;
    return [*(result + 2) interpolateAt:v7];
  }

  return result;
}

@end