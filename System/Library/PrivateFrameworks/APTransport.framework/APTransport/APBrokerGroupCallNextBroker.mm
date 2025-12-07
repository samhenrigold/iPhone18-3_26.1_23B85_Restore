@interface APBrokerGroupCallNextBroker
@end

@implementation APBrokerGroupCallNextBroker

void ___APBrokerGroupCallNextBroker_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (gLogCategory_APBrokerGroup <= 30 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
  {
    ___APBrokerGroupCallNextBroker_block_invoke_cold_1(v4, a2, a3);
  }

  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v6)
  {
    *(v4 + 40) = 1;
    *(v4 + 11) = -71148;
    if (gLogCategory_APBrokerGroup <= 30 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APBrokerGroup, "void _APBrokerGroupHandleBrokerResult(FigCFWeakReferenceHolderRef, APBrokerGroupOperationData *)", 33554462, "[%{ptr}] [%{ptr}] BrokerGroup released, cancelling operation\n", *v4, v4 + 5);
    }
  }

  if (*(v4 + 40))
  {
    if (!*(v4 + 11))
    {
      if (v5)
      {
        v7 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v7)
        {
          if (gLogCategory_APBrokerGroup <= 50 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APBrokerGroup, "void _APBrokerGroupUpdatePrimaryBroker(APBrokerGroupRef, FigCFWeakReferenceHolderRef, APBrokerGroupOperationData *)", 33554482, "[%{ptr}] [%{ptr}] Updating primary broker to [%{ptr}]\n", *v4, v4 + 5, v7);
          }

          v8 = v6[6];
          GroupID = APBrokerGroupGetGroupID(v7);
          v6[6] = GroupID;
          if (GroupID)
          {
            CFRetain(GroupID);
          }

          if (v8)
          {
            CFRelease(v8);
          }

          CFRelease(v7);
        }

        else
        {
          ___APBrokerGroupCallNextBroker_block_invoke_cold_2(gLogCategory_APBrokerGroup, v4, (v4 + 5));
        }
      }

      else
      {
        ___APBrokerGroupCallNextBroker_block_invoke_cold_3();
      }
    }

    _APBrokerGroupDoneCallingBrokers(v6, v4);
    if (v6)
    {
      goto LABEL_25;
    }
  }

  else
  {
    _APBrokerGroupCallNextBroker(v6, v4);
    if (v6)
    {
LABEL_25:
      CFRelease(v6);
    }
  }

  v10 = *(a1 + 32);
  if (v10)
  {

    CFRelease(v10);
  }
}

uint64_t ___APBrokerGroupCallNextBroker_block_invoke_cold_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result <= 30)
  {
    if (result != -1)
    {
      return OUTLINED_FUNCTION_7_0(&gLogCategory_APBrokerGroup, "void _APBrokerGroupUpdatePrimaryBroker(APBrokerGroupRef, FigCFWeakReferenceHolderRef, APBrokerGroupOperationData *)", a3, "[%{ptr}] [%{ptr}] Broker released. Not updating primary broker\n");
    }

    result = OUTLINED_FUNCTION_8_0(&gLogCategory_APBrokerGroup);
    if (result)
    {
      return OUTLINED_FUNCTION_7_0(&gLogCategory_APBrokerGroup, "void _APBrokerGroupUpdatePrimaryBroker(APBrokerGroupRef, FigCFWeakReferenceHolderRef, APBrokerGroupOperationData *)", a3, "[%{ptr}] [%{ptr}] Broker released. Not updating primary broker\n");
    }
  }

  return result;
}

@end