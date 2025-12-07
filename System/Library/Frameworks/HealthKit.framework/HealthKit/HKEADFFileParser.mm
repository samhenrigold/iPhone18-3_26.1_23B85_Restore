@interface HKEADFFileParser
- (HKEADFFileParser)initWithData:(id)data;
- (id)newBuilderWithStartDate:(id)date;
- (id)payloadInRange:(_NSRange)range;
- (void)_enumerateHeadersWithHandler:(id)handler;
- (void)enumerateChannelsWithHandler:(id)handler;
@end

@implementation HKEADFFileParser

- (HKEADFFileParser)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = HKEADFFileParser;
  v6 = [(HKEADFFileParser *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, data);
  }

  return v7;
}

- (void)_enumerateHeadersWithHandler:(id)handler
{
  handlerCopy = handler;
  v6 = 0;
  do
  {
    v7 = v6 + 12;
    data = [(HKEADFFileParser *)self data];
    v9 = [data length];

    if (v6 + 12 > v9)
    {
      break;
    }

    v14 = 0;
    v13 = 0;
    data2 = [(HKEADFFileParser *)self data];
    [data2 getBytes:&v13 range:{v6, 12}];

    v11 = HIDWORD(v13);
    v12 = 0;
    v3 = v3 & 0xFFFFFFFF00000000 | v14;
    handlerCopy[2](handlerCopy, v13, v3, v7, 4 * HIDWORD(v13), &v12);
    v6 = v7 + 4 * v11;
  }

  while (v12 != 1);
}

- (void)enumerateChannelsWithHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__HKEADFFileParser_enumerateChannelsWithHandler___block_invoke;
  v6[3] = &unk_1E7381808;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(HKEADFFileParser *)self _enumerateHeadersWithHandler:v6];
}

void __49__HKEADFFileParser_enumerateChannelsWithHandler___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (*&a3 <= 0.0)
  {
    v6 = 0;
  }

  else
  {
    v5 = +[HKUnit hertzUnit];
    v6 = [HKQuantity quantityWithUnit:v5 doubleValue:*&a3];
  }

  (*(*(a1 + 40) + 16))();
}

- (id)payloadInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  data = [(HKEADFFileParser *)self data];
  v6 = [data subdataWithRange:{location, length}];

  return v6;
}

- (id)newBuilderWithStartDate:(id)date
{
  v27 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__40;
  v25 = __Block_byref_object_dispose__40;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__40;
  v19 = __Block_byref_object_dispose__40;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __44__HKEADFFileParser_newBuilderWithStartDate___block_invoke;
  v14[3] = &unk_1E7381830;
  v14[4] = &v21;
  v14[5] = &v15;
  [(HKEADFFileParser *)self enumerateChannelsWithHandler:v14];
  v5 = v22[5];
  if (v5 && v16[5])
  {
    v6 = [v5 length];
    v7 = v6 >> 2;
    v8 = (&v14[-1] - ((4 * (v6 >> 2) + 15) & 0xFFFFFFFFFFFFFFF0));
    [v22[5] getBytes:v8 length:v6 & 0xFFFFFFFFFFFFFFFCLL];
    v9 = [HKElectrocardiogramBuilder alloc];
    v10 = [(HKElectrocardiogramBuilder *)v9 initWithStartDate:dateCopy frequency:v16[5]];
    if (v6 >= 4)
    {
      do
      {
        LODWORD(v11) = *v8;
        [(HKElectrocardiogramBuilder *)v10 addValue:1 lead:v11];
        ++v8;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  return v10;
}

void __44__HKEADFFileParser_newBuilderWithStartDate___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = a6;
  if (a3 == 503)
  {
    v16 = v12;
    v13 = [a2 payloadInRange:{a4, a5}];
    v14 = *(*(a1 + 32) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a6);
    v12 = v16;
  }
}

@end