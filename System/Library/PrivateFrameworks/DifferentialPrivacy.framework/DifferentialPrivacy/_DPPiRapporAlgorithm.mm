@interface _DPPiRapporAlgorithm
+ (id)piRapporWithNumberOfClasses:(unint64_t)classes prime:(unsigned int)prime alpha0:(double)alpha0 alpha1:(double)alpha1;
- (BOOL)encodeClassIndex:(unint64_t)index coeffs:(unsigned int *)coeffs phi0Buf:(unsigned int *)buf otherPhiBuf:(unsigned int *)phiBuf;
- (_DPPiRapporAlgorithm)initWithNumberOfClasses:(unint64_t)classes prime:(unsigned int)prime alpha0:(double)alpha0 alpha1:(double)alpha1;
- (id)decode:(id)decode;
- (id)encodeClassIndex:(unint64_t)index;
- (id)encodeClassIndices:(id)indices;
@end

@implementation _DPPiRapporAlgorithm

- (_DPPiRapporAlgorithm)initWithNumberOfClasses:(unint64_t)classes prime:(unsigned int)prime alpha0:(double)alpha0 alpha1:(double)alpha1
{
  selfCopy = self;
  if (!classes)
  {
    v9 = [_DPLog framework:0];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_DPPiRapporAlgorithm initWithNumberOfClasses:prime:alpha0:alpha1:];
    }

    goto LABEL_29;
  }

  if (prime > 1)
  {
    if (alpha0 <= 0.0 || alpha0 >= 1.0)
    {
      v9 = +[_DPLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [_DPPiRapporAlgorithm initWithNumberOfClasses:prime:alpha0:alpha1:];
      }

LABEL_29:

      goto LABEL_30;
    }

    if (alpha1 <= 0.0 || alpha1 >= 1.0)
    {
      v9 = +[_DPLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [_DPPiRapporAlgorithm initWithNumberOfClasses:prime:alpha0:alpha1:];
      }

      goto LABEL_29;
    }

    if (alpha0 >= alpha1)
    {
      v9 = +[_DPLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [_DPPiRapporAlgorithm initWithNumberOfClasses:prime:alpha0:alpha1:];
      }

      goto LABEL_29;
    }

    v22.receiver = self;
    v22.super_class = _DPPiRapporAlgorithm;
    v14 = [(_DPPiRapporAlgorithm *)&v22 init];
    selfCopy = v14;
    if (v14)
    {
      v14->_numberOfClasses = classes;
      v14->_prime = prime;
      v14->_alpha0 = alpha0;
      v14->_alpha1 = alpha1;
      v15 = log(classes);
      selfCopy->_numberOfOtherPhi = vcvtpd_u64_f64(v15 / log(prime));
      v16 = vcvtpd_u64_f64(prime * alpha0);
      selfCopy->_threshold = v16;
      if (v16)
      {
        v17 = v16 >= prime;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        v8 = +[_DPLog framework];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [_DPPiRapporAlgorithm initWithNumberOfClasses:prime:alpha0:alpha1:];
        }

        goto LABEL_5;
      }

      v20 = [_DPBiasedCoin coinWithBias:alpha1];
      if (!v20)
      {
        v9 = +[_DPLog framework];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [_DPPiRapporAlgorithm initWithNumberOfClasses:prime:alpha0:alpha1:];
        }

        goto LABEL_29;
      }

      coin = selfCopy->_coin;
      selfCopy->_coin = v20;
    }

    selfCopy = selfCopy;
    v18 = selfCopy;
    goto LABEL_31;
  }

  v8 = [_DPLog framework:alpha0];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [_DPPiRapporAlgorithm initWithNumberOfClasses:prime:alpha0:alpha1:];
  }

LABEL_5:

LABEL_30:
  v18 = 0;
LABEL_31:

  return v18;
}

+ (id)piRapporWithNumberOfClasses:(unint64_t)classes prime:(unsigned int)prime alpha0:(double)alpha0 alpha1:(double)alpha1
{
  v6 = [[_DPPiRapporAlgorithm alloc] initWithNumberOfClasses:classes prime:*&prime alpha0:alpha0 alpha1:alpha1];

  return v6;
}

- (id)encodeClassIndex:(unint64_t)index
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v6 = [(_DPPiRapporAlgorithm *)self encodeClassIndices:v5];

  return v6;
}

- (id)encodeClassIndices:(id)indices
{
  indicesCopy = indices;
  v5 = 4 * [indicesCopy count];
  v6 = [MEMORY[0x277CBEB28] dataWithLength:v5];
  v7 = [MEMORY[0x277CBEB28] dataWithLength:{v5 * -[_DPPiRapporAlgorithm numberOfOtherPhi](self, "numberOfOtherPhi")}];
  v20 = v6;
  bytes = [v6 bytes];
  bytes2 = [v7 bytes];
  context = objc_autoreleasePoolPush();
  v10 = [MEMORY[0x277CBEB28] dataWithLength:{4 * -[_DPPiRapporAlgorithm numberOfOtherPhi](self, "numberOfOtherPhi")}];
  bytes3 = [v10 bytes];
  if ([indicesCopy count])
  {
    v12 = 0;
    while (1)
    {
      v13 = [indicesCopy objectAtIndexedSubscript:v12];
      unsignedIntegerValue = [v13 unsignedIntegerValue];

      if (unsignedIntegerValue >= [(_DPPiRapporAlgorithm *)self numberOfClasses])
      {
        break;
      }

      if (![(_DPPiRapporAlgorithm *)self encodeClassIndex:unsignedIntegerValue coeffs:bytes3 phi0Buf:bytes otherPhiBuf:bytes2 + 4 * [(_DPPiRapporAlgorithm *)self numberOfOtherPhi]* v12])
      {
        v17 = +[_DPLog framework];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [_DPPiRapporAlgorithm encodeClassIndices:];
        }

        goto LABEL_11;
      }

      ++v12;
      bytes += 4;
      if (v12 >= [indicesCopy count])
      {
        goto LABEL_6;
      }
    }

    v17 = +[_DPLog framework];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_DPPiRapporAlgorithm encodeClassIndices:];
    }

LABEL_11:
    v15 = v20;

    objc_autoreleasePoolPop(context);
    v16 = 0;
  }

  else
  {
LABEL_6:

    objc_autoreleasePoolPop(context);
    v15 = v20;
    v16 = [_DPPiRapporEncoderResult encoderResultWithPhi0:v20 otherPhi:v7];
  }

  return v16;
}

- (id)decode:(id)decode
{
  decodeCopy = decode;
  numberOfEncodedIndices = [decodeCopy numberOfEncodedIndices];
  phi0 = [decodeCopy phi0];
  bytes = [phi0 bytes];

  otherPhi = [decodeCopy otherPhi];
  bytes2 = [otherPhi bytes];

  numberOfOtherPhi = [decodeCopy numberOfOtherPhi];
  if (numberOfOtherPhi == [(_DPPiRapporAlgorithm *)self numberOfOtherPhi])
  {
    v23 = decodeCopy;
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[_DPPiRapporAlgorithm numberOfClasses](self, "numberOfClasses")}];
    context = objc_autoreleasePoolPush();
    v21 = [MEMORY[0x277CBEB28] dataWithLength:4 * numberOfOtherPhi];
    bytes3 = [v21 bytes];
    if ([(_DPPiRapporAlgorithm *)self numberOfClasses])
    {
      v11 = 0;
      v26 = v9;
      v27 = numberOfEncodedIndices;
      do
      {
        v28 = v11;
        pi_rappor_get_coefficients(bytes3, numberOfOtherPhi, v11, [(_DPPiRapporAlgorithm *)self prime]);
        v12 = 0;
        if (numberOfEncodedIndices)
        {
          v14 = bytes2;
          v13 = bytes;
          do
          {
            v15 = *v13++;
            v16 = dotprod_mod32(bytes3, v14, numberOfOtherPhi, [(_DPPiRapporAlgorithm *)self prime]);
            v17 = addmod32(v16, v15, [(_DPPiRapporAlgorithm *)self prime]);
            v12 += pi_rappor_BOOL_func(v17, [(_DPPiRapporAlgorithm *)self threshold]);
            v14 += numberOfOtherPhi;
            --numberOfEncodedIndices;
          }

          while (numberOfEncodedIndices);
        }

        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
        v9 = v26;
        [v26 setObject:v18 atIndexedSubscript:v28];

        v11 = v28 + 1;
        numberOfEncodedIndices = v27;
      }

      while (v28 + 1 < [(_DPPiRapporAlgorithm *)self numberOfClasses]);
    }

    objc_autoreleasePoolPop(context);
    decodeCopy = v23;
  }

  else
  {
    v19 = +[_DPLog framework];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(_DPPiRapporAlgorithm *)self decode:numberOfOtherPhi, v19];
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)encodeClassIndex:(unint64_t)index coeffs:(unsigned int *)coeffs phi0Buf:(unsigned int *)buf otherPhiBuf:(unsigned int *)phiBuf
{
  if ([(_DPPiRapporAlgorithm *)self numberOfOtherPhi])
  {
    v11 = 0;
    do
    {
      phiBuf[v11++] = arc4random_uniform([(_DPPiRapporAlgorithm *)self prime]);
    }

    while (v11 < [(_DPPiRapporAlgorithm *)self numberOfOtherPhi]);
  }

  coin = [(_DPPiRapporAlgorithm *)self coin];
  flip = [coin flip];

  pi_rappor_get_coefficients(coeffs, [(_DPPiRapporAlgorithm *)self numberOfOtherPhi], index, [(_DPPiRapporAlgorithm *)self prime]);
  v14 = dotprod_mod32(coeffs, phiBuf, [(_DPPiRapporAlgorithm *)self numberOfOtherPhi], [(_DPPiRapporAlgorithm *)self prime]);
  v15 = submod32(0, v14, [(_DPPiRapporAlgorithm *)self prime]);
  v22 = 0;
  prime = [(_DPPiRapporAlgorithm *)self prime];
  pi_rappor_inverse_BOOL_func(flip, [(_DPPiRapporAlgorithm *)self threshold], [(_DPPiRapporAlgorithm *)self prime], &v22, &prime);
  v17 = prime;
  v16 = v22;
  if (prime <= v22)
  {
    v19 = +[_DPLog framework];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [_DPPiRapporAlgorithm encodeClassIndex:&prime coeffs:v19 phi0Buf:? otherPhiBuf:?];
    }
  }

  else
  {
    v18 = arc4random_uniform(prime - v22);
    *buf = addmod32(v18 + v16, v15, [(_DPPiRapporAlgorithm *)self prime]);
  }

  return v17 > v16;
}

- (void)decode:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 134218240;
  v6 = [a1 numberOfOtherPhi];
  v7 = 2048;
  v8 = a2;
  _os_log_error_impl(&dword_22622D000, a3, OS_LOG_TYPE_ERROR, "The provided Pi-Rappor encoder result is likely not generated by this Pi-Rappor algorithm instance, expected numberOfOtherPhi: %lu, got numberOfOtherPhi: %lu", &v5, 0x16u);
}

- (void)encodeClassIndex:(os_log_t)log coeffs:phi0Buf:otherPhiBuf:.cold.1(int *a1, int *a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2;
  v5[0] = 67109376;
  v5[1] = v3;
  v6 = 1024;
  v7 = v4;
  _os_log_error_impl(&dword_22622D000, log, OS_LOG_TYPE_ERROR, "Pi-Rappor algorithm failed to sample phi0 within lower bound (%d) and upper bound (%d).", v5, 0xEu);
}

@end