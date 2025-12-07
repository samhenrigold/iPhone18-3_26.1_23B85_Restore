@interface ANSTTensorData
+ (ANSTTensorData)new;
- (ANSTTensorData)init;
- (ANSTTensorData)initWithDescriptor:(id)descriptor dataPointer:(void *)pointer length:(unint64_t)length deallocator:(id)deallocator error:(id *)error;
- (void)dealloc;
@end

@implementation ANSTTensorData

- (ANSTTensorData)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (ANSTTensorData)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTTensorData)initWithDescriptor:(id)descriptor dataPointer:(void *)pointer length:(unint64_t)length deallocator:(id)deallocator error:(id *)error
{
  v34[1] = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  deallocatorCopy = deallocator;
  v32.receiver = self;
  v32.super_class = ANSTTensorData;
  v16 = [(ANSTTensorData *)&v32 init];
  if (!v16)
  {
    goto LABEL_8;
  }

  v17 = objc_msgSend_copy(descriptorCopy, v14, v15);
  tensorDescriptor = v16->_tensorDescriptor;
  v16->_tensorDescriptor = v17;

  v16->_dataPointer = pointer;
  v16->_length = length;
  if (deallocatorCopy)
  {
    v21 = objc_msgSend_copy(deallocatorCopy, v19, v20);
    v22 = MEMORY[0x2318EADA0]();
    deallocator = v16->_deallocator;
    v16->_deallocator = v22;
  }

  else
  {
    v21 = v16->_deallocator;
    v16->_deallocator = 0;
  }

  length = v16->_length;
  if (length < objc_msgSend__minimumContiguousLength(v16->_tensorDescriptor, v25, v26))
  {
    if (error)
    {
      v28 = MEMORY[0x277CCA9B8];
      v33 = *MEMORY[0x277CCA068];
      v34[0] = @"Tensor data length does not satisfy its descriptor's minimum contiguous length.";
      v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v27, v34, &v33, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v28, v30, @"ANSTErrorDomain", 12, v29);

      error = 0;
    }
  }

  else
  {
LABEL_8:
    error = v16;
  }

  return error;
}

- (void)dealloc
{
  if (self->_dataPointer)
  {
    deallocator = self->_deallocator;
    if (deallocator)
    {
      deallocator[2]();
    }
  }

  v4.receiver = self;
  v4.super_class = ANSTTensorData;
  [(ANSTTensorData *)&v4 dealloc];
}

@end