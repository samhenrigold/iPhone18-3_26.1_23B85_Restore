@interface _CNComposeAddressConcatenator
+ (id)defaultRecipientListConcatenator;
- (id)commaSeparatedAddressListWithAddressCount:(unint64_t)count prefixForAddressAtIndex:(id)index stringForAddressAtIndex:(id)atIndex lengthValidationBlock:(id)block;
- (void)getCommaSeparatedAddressList:(id *)list andListSuffix:(id *)suffix withAddressCount:(unint64_t)count prefixForAddressAtIndex:(id)index stringForAddressAtIndex:(id)atIndex lengthValidationBlock:(id)block;
@end

@implementation _CNComposeAddressConcatenator

+ (id)defaultRecipientListConcatenator
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65___CNComposeAddressConcatenator_defaultRecipientListConcatenator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultRecipientListConcatenator_onceToken != -1)
  {
    dispatch_once(&defaultRecipientListConcatenator_onceToken, block);
  }

  v2 = defaultRecipientListConcatenator___context;

  return v2;
}

- (void)getCommaSeparatedAddressList:(id *)list andListSuffix:(id *)suffix withAddressCount:(unint64_t)count prefixForAddressAtIndex:(id)index stringForAddressAtIndex:(id)atIndex lengthValidationBlock:(id)block
{
  indexCopy = index;
  atIndexCopy = atIndex;
  blockCopy = block;
  v13 = 0;
  v36 = atIndexCopy;
  v37 = 0;
  v38 = blockCopy;
  v14 = &stru_1F3002C60;
  while (v13 < count)
  {
    if (indexCopy)
    {
      blockCopy = indexCopy[2](indexCopy, v13);
      v15 = blockCopy;
    }

    else
    {
      v15 = 0;
    }

    if (v13 && !v15)
    {
      v15 = CNAUILocalizedAddressSeparator(blockCopy);
    }

    if (v15)
    {
      v16 = [@"‌" stringByAppendingString:v15];
    }

    else
    {
      v16 = 0;
    }

    v54 = 0;
    v55 = &v54;
    v56 = 0x3032000000;
    v57 = __Block_byref_object_copy__1;
    v58 = __Block_byref_object_dispose__1;
    v59 = 0;
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __163___CNComposeAddressConcatenator_getCommaSeparatedAddressList_andListSuffix_withAddressCount_prefixForAddressAtIndex_stringForAddressAtIndex_lengthValidationBlock___block_invoke;
    v48[3] = &unk_1E7CD2380;
    v52 = v13;
    countCopy = count;
    v51 = &v54;
    v14 = v14;
    v49 = v14;
    v17 = v16;
    v50 = v17;
    v18 = MEMORY[0x1B8CB9350](v48);
    v19 = v36[2](v36, v13);
    v20 = (v18)[2](v18, v19, self->_andNMoreFormat);
    v21 = (v38)[2](v38, v20, v55[5]);
    v22 = v21;
    if (v21)
    {
      v23 = v20;

      v24 = v55[5];
      ++v13;
      v37 = v24;
    }

    else
    {
      if (!-[__CFString length](v14, "length") && self->_truncatedAddressFormat && self->_andNMoreNoEllipsisFormat && [v19 length] >= 2)
      {
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __163___CNComposeAddressConcatenator_getCommaSeparatedAddressList_andListSuffix_withAddressCount_prefixForAddressAtIndex_stringForAddressAtIndex_lengthValidationBlock___block_invoke_2;
        v45[3] = &unk_1E7CD23A8;
        v47 = v18;
        v45[4] = self;
        v25 = v19;
        v46 = v25;
        v32 = MEMORY[0x1B8CB9350](v45);
        v26 = [v25 length];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __163___CNComposeAddressConcatenator_getCommaSeparatedAddressList_andListSuffix_withAddressCount_prefixForAddressAtIndex_stringForAddressAtIndex_lengthValidationBlock___block_invoke_3;
        v41[3] = &unk_1E7CD23D0;
        v42 = v38;
        v33 = v32;
        v43 = v33;
        v44 = &v54;
        if (v26 != 1)
        {
          IndexInRangePassingTest = CNComposeLastIndexInRangePassingTest(0, v26 - 2, v41);
          if (IndexInRangePassingTest)
          {
            if (IndexInRangePassingTest != 0x7FFFFFFFFFFFFFFFLL)
            {
              v28 = v33[2]();

              v29 = v55[5];
              v37 = v29;
              v14 = v28;
            }
          }
        }
      }

      if ([(__CFString *)v14 length])
      {
        goto LABEL_18;
      }

      v23 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:self->_nAddressesFormat, count];
    }

    v14 = v23;
LABEL_18:

    _Block_object_dispose(&v54, 8);
    if ((v22 & 1) == 0)
    {
      break;
    }
  }

  v30 = v14;
  *list = v14;
  v31 = v37;
  *suffix = v31;
}

- (id)commaSeparatedAddressListWithAddressCount:(unint64_t)count prefixForAddressAtIndex:(id)index stringForAddressAtIndex:(id)atIndex lengthValidationBlock:(id)block
{
  blockCopy = block;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __145___CNComposeAddressConcatenator_commaSeparatedAddressListWithAddressCount_prefixForAddressAtIndex_stringForAddressAtIndex_lengthValidationBlock___block_invoke;
  v22[3] = &unk_1E7CD23F8;
  v11 = blockCopy;
  v23 = v11;
  atIndexCopy = atIndex;
  indexCopy = index;
  v14 = MEMORY[0x1B8CB9350](v22);
  v20 = 0;
  v21 = 0;
  [(_CNComposeAddressConcatenator *)self getCommaSeparatedAddressList:&v21 andListSuffix:&v20 withAddressCount:count prefixForAddressAtIndex:indexCopy stringForAddressAtIndex:atIndexCopy lengthValidationBlock:v14];

  v15 = v21;
  v16 = v20;
  if (v16)
  {
    v17 = [v15 stringByAppendingString:v16];
  }

  else
  {
    v17 = v15;
  }

  v18 = v17;

  return v18;
}

@end