@interface APBrokerGroupPollOneBrokerForReceivers
@end

@implementation APBrokerGroupPollOneBrokerForReceivers

void ___APBrokerGroupPollOneBrokerForReceivers_block_invoke(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = a1 + 40;
  v4 = *(a1 + 40);
  *(v4 + 4) = a2;
  if (a2 == -72440 || a2 == -6728)
  {
    *v4 = 1;
    if (gLogCategory_APBrokerGroup <= 90)
    {
      if (gLogCategory_APBrokerGroup == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_16;
        }

        v4 = *v5;
        a2 = *(*v5 + 4);
      }

      LogPrintF(&gLogCategory_APBrokerGroup, "void _APBrokerGroupPollOneBrokerForReceivers(APBrokerGroupRef, APBrokerRef, APBrokerGroupOperationStatus *, APBrokerGroupSingleBrokerCompletionBlock)_block_invoke", 33554522, "[%{ptr}] [%{ptr}] Failed to get brokered receivers with error: %#m, cancelling get receivers operation\n", *(a1 + 48), v4, a2);
    }

LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  if (a2)
  {
    goto LABEL_16;
  }

  CFDictionaryGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!TypedValue)
  {
    ___APBrokerGroupPollOneBrokerForReceivers_block_invoke_cold_2();
    goto LABEL_16;
  }

  v8 = TypedValue;
  Int64 = CFDictionaryGetInt64();
  v10 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v10)
  {
    v11 = v10;
    if (Int64)
    {
      v12 = Int64;
    }

    else
    {
      v12 = 5;
    }

    v13 = *(v10 + 56);
    *(v10 + 56) = v8;
    CFRetain(v8);
    if (v13)
    {
      CFRelease(v13);
    }

    _APBrokerGroupFireReceiversChanged(v11);
    v14 = v11[13];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___APBrokerDoReceiverPollingIfNecessary_block_invoke;
    block[3] = &__block_descriptor_tmp_69;
    block[4] = v11;
    block[5] = v12;
    dispatch_sync(v14, block);
    *(*v5 + 8) = CFRetain(a3);
    **v5 = 1;
  }

  else
  {
    ___APBrokerGroupPollOneBrokerForReceivers_block_invoke_cold_1(a1, v5, block);
    v11 = block[0];
  }

LABEL_17:
  (*(*(a1 + 32) + 16))();
  if (v11)
  {
    CFRelease(v11);
  }

  CFRelease(*(a1 + 56));
  _Block_release(*(a1 + 32));
}

uint64_t ___APBrokerGroupPollOneBrokerForReceivers_block_invoke_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  if (gLogCategory_APBrokerGroup <= 30)
  {
    if (gLogCategory_APBrokerGroup != -1 || (result = OUTLINED_FUNCTION_8_0(&gLogCategory_APBrokerGroup), result))
    {
      result = OUTLINED_FUNCTION_7_0(&gLogCategory_APBrokerGroup, "void _APBrokerGroupPollOneBrokerForReceivers(APBrokerGroupRef, APBrokerRef, APBrokerGroupOperationStatus *, APBrokerGroupSingleBrokerCompletionBlock)_block_invoke", a3, "[%{ptr}] [%{ptr}] BrokerGroup released, cancelling get receivers operation\n");
    }
  }

  *a3 = 0;
  return result;
}

@end