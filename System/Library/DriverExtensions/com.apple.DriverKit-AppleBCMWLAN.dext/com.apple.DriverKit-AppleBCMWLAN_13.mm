uint64_t AppleBCMWLANCore::isRejectingCommands(AppleBCMWLANCore *this)
{
  v1 = *(this + 9);
  v2 = *(v1 + 10376);
  if ((v2 & 0x20) != 0)
  {
    return 3766622210;
  }

  result = 3766622209;
  if ((v2 & 0x2000) == 0)
  {
    result = 3766630402;
    if ((v2 & 0x80) == 0)
    {
      if ((v2 & 0x10) != 0)
      {
        return 3766622211;
      }

      else if ((v2 & 0x8000) != 0)
      {
        return 3766630404;
      }

      else if ((v2 & 1) != 0 && *(v1 + 19852) == 1 && (v5 = *(v1 + 5408)) != 0 && (AppleBCMWLANCommander::isSleeping(v5) & 1) == 0)
      {
        v6 = *(this + 9);
        v7 = *(v6 + 10376);
        if ((v7 & 0x10000000) == 0 || (v7 & 1) != 0 && *(v6 + 19852))
        {
          return 0;
        }

        else
        {
          return 3766622213;
        }
      }

      else
      {
        return 82;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::isOCLEnabled(AppleBCMWLANCore *this)
{
  result = AppleBCMWLANCore::featureFlagIsBitSet(this, 47);
  if (result)
  {
    v3 = *(*(this + 9) + 5464);

    return AppleBCMWLANConfigManager::isOCLSupportedInDriver(v3);
  }

  return result;
}

uint64_t AppleBCMWLANCore::reportEscoTrafficIndication(AppleBCMWLANCore *this, OSNumber *a2)
{
  v4 = OSNumber::unsigned32BitValue(a2);
  IO80211Controller::postMessage(this, *(*(this + 9) + 11288), 0xB5u, &v4, 4uLL, 1);
  return 0;
}

void *AppleBCMWLANCore::simulateRoamStatusSubStateGated(void *result, uint64_t a2)
{
  v2 = result;
  if (a2)
  {
    v4 = (a2 + 1);
    if (*(a2 + 1) <= 3u)
    {
      *(result[9] + 12153) = 1;
      if ((*(*result + 1952))(result))
      {
        (*(*v2 + 1952))(v2);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::simulateRoamStatusSubStateGated();
        }
      }

      v5 = *v4;
      if (v5 == 3)
      {
        *(v2[9] + 12164) |= 4u;
        *(v2[9] + 12184) = mapBcmStatusToApple80211IOReturnScan(*(a2 + 4));
        result = mapBcmStatusToApple80211IOReturnIEEEStatus(*(a2 + 8));
        *(v2[9] + 12188) = result;
      }

      else if (v5 == 1)
      {
        *(v2[9] + 12164) |= 2u;
        *(v2[9] + 12176) = mapBcmStatusToApple80211IOReturnScan(*(a2 + 4));
        result = mapBcmStatusToApple80211IOReturnIEEEStatus(*(a2 + 8));
        *(v2[9] + 12180) = result;
      }

      else if (*v4)
      {
        result = (*(*v2 + 1952))(v2);
        if (result)
        {
          (*(*v2 + 1952))(v2);
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANCore::simulateRoamStatusSubStateGated();
          }
        }
      }

      else
      {
        *(v2[9] + 12164) |= 1u;
        *(v2[9] + 12168) = mapBcmStatusToApple80211IOReturnScan(*(a2 + 4));
        result = mapBcmStatusToApple80211IOReturnIEEEStatus(*(a2 + 8));
        *(v2[9] + 12172) = result;
      }
    }
  }

  else
  {
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v2 + 1952))(v2);
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = AppleBCMWLANCore::simulateRoamStatusSubStateGated();
      }
    }

    *(v2[9] + 12153) = 0;
    v6 = v2[9];
    *(v6 + 12188) = 0;
    *(v6 + 12156) = 0u;
    *(v6 + 12172) = 0u;
  }

  return result;
}

uint64_t ___ZN16AppleBCMWLANCore13setPropertiesEP8OSObject_block_invoke(uint64_t a1, OSMetaClassBase *anObject)
{
  v3 = OSMetaClassBase::safeMetaCast(anObject, gOSStringMetaClass);
  OSArray::setObject(*(*(*(a1 + 32) + 8) + 24), v3);
  return 1;
}

uint64_t AppleBCMWLANCore::handleSetEventBitFieldAsyncCallBack(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result;
    if ((*(*result + 1952))(result, a2))
    {
      (*(*v3 + 1952))(v3);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleSetEventBitFieldAsyncCallBack();
      }
    }

    result = *(v3[9] + 14248);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = IOMallocZeroData();
        v4 = result;
        if (result)
        {
          strcpy(result, "Currently:");
          v5 = 10;
        }

        else
        {
          v5 = 0;
        }

        for (i = 0; i != 28; ++i)
        {
          v7 = 0;
          v8 = i;
          do
          {
            if ((*(v3[9] + i + 1096) >> v7))
            {
              result = 0;
              if (!v4 || v5 > 0x3FE || (v9 = 1024, v10 = convertEventToString(v8, 0, 0), result = snprintf(&v4[v5], 1024 - v5, " %s", v10), result <= 0x3FF))
              {
                v9 = result;
              }

              v5 += v9;
            }

            ++v7;
            v8 += 8;
          }

          while (v7 != 8);
        }

        if (v4 && v5 <= 0x3FE)
        {
          snprintf(&v4[v5], 1024 - v5, "\n");
        }

        else if (!v4)
        {
          return result;
        }

        if (*(v3[9] + 14248) && CCLogStream::shouldLog())
        {
          CCLogStream::log(*(v3[9] + 14248), 1, "%s", v4);
        }

        *v4 = 0;

        return IOFreeData();
      }
    }
  }

  return result;
}

IO80211Controller *AppleBCMWLANCore::startRoamScanAsyncCallback(IO80211Controller *result, uint64_t a2, int a3)
{
  v4 = a3;
  if (a3)
  {
    v3 = result;
    IO80211Controller::postMessage(result, *(*(result + 9) + 11288), 0xCFu, &v4, 4uLL, 1);
    result = (*(*v3 + 1952))(v3);
    if (result)
    {
      (*(*v3 + 1952))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::startRoamScanAsyncCallback();
      }
    }
  }

  return result;
}

IO80211Controller *AppleBCMWLANCore::getRssiAsyncCallback(void *a1, uint64_t a2, uint64_t a3, int **a4)
{
  if (a3)
  {
    result = (*(*a1 + 1952))(a1, a2);
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::getRssiAsyncCallback();
      }
    }
  }

  else if (*a4)
  {
    v6 = **a4;
    v7 = *(a1[9] + 5608);

    return AppleBCMWLANLQM::updateRSSI(v7, v6);
  }

  else
  {
    result = (*(*a1 + 1952))(a1, a2);
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::getRssiAsyncCallback();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handlePktFilterPortsAsyncCallBack(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result;
    result = (*(*result + 1952))(result, a2);
    if (result)
    {
      (*(*v3 + 1952))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handlePktFilterPortsAsyncCallBack();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleSetARPOffloadAsyncCallBack(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result;
    result = (*(*result + 1952))(result, a2);
    if (result)
    {
      (*(*v3 + 1952))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleSetARPOffloadAsyncCallBack();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleSetICMPAsyncCallBack(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result;
    result = (*(*result + 1952))(result, a2);
    if (result)
    {
      (*(*v3 + 1952))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleSetICMPAsyncCallBack();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleSetLpasAsyncCallBack(void *a1, int a2, uint64_t a3, int a4, unsigned int *address)
{
  v5 = a3;
  if (address)
  {
    v7 = *address;
    IOFree(address, 4uLL);
    if (v5)
    {
LABEL_3:
      result = (*(*a1 + 1952))(a1);
      if (result)
      {
        (*(*a1 + 1952))(a1);
        result = CCLogStream::shouldLog();
        if (result)
        {
          result = AppleBCMWLANCore::handleSetLpasAsyncCallBack();
        }
      }

      atomic_fetch_and((a1[9] + 10376), 0xFF7FFFFF);
      return result;
    }
  }

  else
  {
    v7 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  if (v7 == 1)
  {
    atomic_fetch_or((a1[9] + 10376), 0x800000u);
  }

  else if (!v7)
  {
    atomic_fetch_and((a1[9] + 10376), 0xFF7FFFFF);
  }

  result = (*(*a1 + 1952))(a1);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::handleSetLpasAsyncCallBack();
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleSetNDOffloadAsyncCallBack(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result;
    result = (*(*result + 1952))(result, a2);
    if (result)
    {
      (*(*v3 + 1952))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleSetNDOffloadAsyncCallBack();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setRangingAsyncCallBack(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    if (*(a2 + 8))
    {
      v5 = *(a2 + 8);
    }

    else
    {
      v5 = "(null)";
    }

    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v4 + 1952))(v4);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::setRangingAsyncCallBack(v4, v4 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, v5);
      }
    }
  }

  return result;
}

void *AppleBCMWLANCore::handleExtDTIMIoVarAsyncCallBack(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (a3)
  {
    result = (*(*result + 1952))(result, a2);
    if (result)
    {
      (*(*v3 + 1952))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleExtDTIMIoVarAsyncCallBack(v3, v3 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3);
      }
    }
  }

  else
  {
    v5 = result[9];
    if (!*(v5 + 19840) && (*(v5 + 10378) & 0x80) != 0)
    {
      result = (*(*result + 1952))(result, a2);
      if (result)
      {
        (*(*v3 + 1952))(v3);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANCore::handleExtDTIMIoVarAsyncCallBack();
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleBcnLiBcnIoVarAsyncCallBack(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result;
    result = (*(*result + 1952))(result, a2);
    if (result)
    {
      (*(*v3 + 1952))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleBcnLiBcnIoVarAsyncCallBack();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleMWSCoexIoVarAsyncCallBack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v8 = a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  result = (*(*a1 + 1952))(a1, a2, a3, a4);
  if (a3)
  {
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleMWSCoexIoVarAsyncCallBack(a1, v8, a3, a5);
      }
    }
  }

  else if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::handleMWSCoexIoVarAsyncCallBack(a1, v8, a5);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handle2GWiFiType7BitmapAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = result;
    result = (*(*result + 1952))(result, a2, a3, a4);
    if (result)
    {
      (*(*v7 + 1952))(v7);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handle2GWiFiType7BitmapAsyncCallback(v7, v7 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, a5);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleMWSCoexBitmapsWiFiEnhAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = result;
    result = (*(*result + 1952))(result, a2, a3, a4);
    if (result)
    {
      (*(*v7 + 1952))(v7);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleMWSCoexBitmapsWiFiEnhAsyncCallback(v7, v7 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, a5);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleMWSOCLCoexBitmapsWiFiEnhAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = result;
    result = (*(*result + 1952))(result, a2, a3, a4);
    if (result)
    {
      (*(*v7 + 1952))(v7);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleMWSOCLCoexBitmapsWiFiEnhAsyncCallback(v7, v7 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, a5);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleMWSWiFiType7CoexBitmapsWiFiEnhAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = result;
    result = (*(*result + 1952))(result, a2, a3, a4);
    if (result)
    {
      (*(*v7 + 1952))(v7);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleMWSWiFiType7CoexBitmapsWiFiEnhAsyncCallback(v7, v7 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, a5);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleMWSWiFiType4BlankCoexBitmapsWiFiEnhAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = result;
    result = (*(*result + 1952))(result, a2, a3, a4);
    if (result)
    {
      (*(*v7 + 1952))(v7);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleMWSWiFiType4BlankCoexBitmapsWiFiEnhAsyncCallback(v7, v7 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, a5);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleMWSWiFiType4BlankModeCoexBitmapsWiFiEnhAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = result;
    result = (*(*result + 1952))(result, a2, a3, a4);
    if (result)
    {
      (*(*v7 + 1952))(v7);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleMWSWiFiType4BlankModeCoexBitmapsWiFiEnhAsyncCallback(v7, v7 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, a5);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleMWSWiFiAssocProtConfigCoexBitmapsWiFiEnhAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = result;
    result = (*(*result + 1952))(result, a2, a3, a4);
    if (result)
    {
      (*(*v7 + 1952))(v7);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleMWSWiFiAssocProtConfigCoexBitmapsWiFiEnhAsyncCallback(v7, v7 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, a5);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleMWSWiFiRfemConfigCoexBitmapsWiFiEnhAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = result;
    result = (*(*result + 1952))(result, a2, a3, a4);
    if (result)
    {
      (*(*v7 + 1952))(v7);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleMWSWiFiRfemConfigCoexBitmapsWiFiEnhAsyncCallback(v7, v7 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, a5);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleMWSWiFiConditionIdCoexBitmapsWiFiEnhAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = result;
    result = (*(*result + 1952))(result, a2, a3, a4);
    if (result)
    {
      (*(*v7 + 1952))(v7);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleMWSWiFiConditionIdCoexBitmapsWiFiEnhAsyncCallback(v7, v7 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, a5);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleMWSAntSelCoexBitmapsWiFiEnhAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = result;
    result = (*(*result + 1952))(result, a2, a3, a4);
    if (result)
    {
      (*(*v7 + 1952))(v7);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleMWSAntSelCoexBitmapsWiFiEnhAsyncCallback(v7, v7 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, a5);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleAutoCountryAsyncCallBack(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result;
    result = (*(*result + 1952))(result, a2);
    if (result)
    {
      (*(*v3 + 1952))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleAutoCountryAsyncCallBack();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleGetCountryCodeAsyncCallBack(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result;
    result = (*(*result + 1952))(result, a2);
    if (result)
    {
      (*(*v3 + 1952))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleGetCountryCodeAsyncCallBack();
      }
    }
  }

  return result;
}

void *AppleBCMWLANCore::handleExcessPMPeriodAsyncCallBack(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = result;
    result = (*(*result + 1952))(result, a2);
    if (result)
    {
      (*(*v4 + 1952))(v4);
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = AppleBCMWLANCore::handleExcessPMPeriodAsyncCallBack();
      }
    }

    if (v3 == -469794537)
    {
      *(v4[9] + 35528) = 1;
    }
  }

  return result;
}

void *AppleBCMWLANCore::handleExcessPMPercentAsyncCallBack(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = result;
    result = (*(*result + 1952))(result, a2);
    if (result)
    {
      (*(*v4 + 1952))(v4);
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = AppleBCMWLANCore::handleExcessPMPercentAsyncCallBack();
      }
    }

    if (v3 == -469794537)
    {
      *(v4[9] + 35528) = 1;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleGetPowerSaveModeAsyncCallBack(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (!a3)
  {
    v4 = result;
    result = (*(*result + 1952))(result, a2);
    if (result)
    {
      (*(*v4 + 1952))(v4);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleGetPowerSaveModeAsyncCallBack();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleCollectBeaconRxCountersAsyncCallBack(IOService *a1, uint64_t a2, uint64_t a3, __int128 **a4)
{
  if (a3)
  {
    result = (a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1, a2);
    if (result)
    {
      (a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleCollectBeaconRxCountersAsyncCallBack();
      }
    }
  }

  else
  {
    v6 = (&a1[1].OSObject::OSObjectInterface::__vftable[1230].free + 4);
    v7 = *a4;
    v8 = **a4;
    v9 = (*a4)[1];
    *(v6 + 28) = *(*a4 + 28);
    *v6 = v8;
    v6[1] = v9;
    if ((a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1, a2))
    {
      (a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleCollectBeaconRxCountersAsyncCallBack();
      }
    }

    AppleBCMWLANCore::updateTrafficInactivityScanCoreBeaconStats(a1, v7);
    mach_continuous_time();
    absolutetime_to_nanoseconds();
    a1[1].OSObject::OSObjectInterface::__vftable[1234].init = -a1[1].OSObject::OSObjectInterface::__vftable[1233].free;
    AppleBCMWLANCore::updateBeaconOffloadStatsReport(a1, v7, a1[1].OSObject::OSObjectInterface::__vftable[1234].init);
    v10 = a1[1].OSObject::OSObjectInterface::__vftable;
    result = v10[344].init;
    if (result && *(v7 + 9))
    {
      result = AppleBCMWLANIOReportingCore::updateBeaconOffloadStats();
      v10 = a1[1].OSObject::OSObjectInterface::__vftable;
    }

    if (LOBYTE(v10[1234].free) == 1)
    {
      result = AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics(a1);
      LOBYTE(a1[1].OSObject::OSObjectInterface::__vftable[1234].free) = 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateTrafficInactivityScanCoreBeaconStats(void *a1, _DWORD *a2)
{
  if (*(a1[9] + 18195) == 1)
  {
    *(a1[9] + 18276) = a2[9];
    v4 = a2[6];
    *(a1[9] + 18292) = a2[5];
    *(a1[9] + 18288) = v4;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        v5 = (*(*a1 + 1952))(a1);
        CCLogStream::logInfo(v5, "[dk] %s@%d:Enter: BCN_OFLD_DUR= %d EXPECTED=%d MISSED_BCN_CNT= %d\n", "updateTrafficInactivityScanCoreBeaconStats", 13442, a2[9], a2[5], a2[6]);
      }
    }
  }

  else
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::updateTrafficInactivityScanCoreBeaconStats();
      }
    }

    v6 = *(a1[9] + 18276);
    if (v6)
    {
      v7 = a2[9];
      if (v7)
      {
        v8 = *(a1[9] + 18228);
        v9 = v7 - v6;
        v10 = __CFADD__(v8, v9);
        v11 = v8 + v9;
        v12 = v10;
        *(a1[9] + 18228) = v11;
        v13 = *(a1[9] + 18244);
        v14 = a2[5] - *(a1[9] + 18292);
        v10 = __CFADD__(v13, v14);
        v15 = v13 + v14;
        v16 = v10;
        *(a1[9] + 18244) = v15;
        v17 = *(a1[9] + 18240);
        v18 = a2[6] - *(a1[9] + 18288);
        v10 = __CFADD__(v17, v18);
        v19 = v17 + v18;
        v20 = v10;
        *(a1[9] + 18240) = v19;
        *(a1[9] + 18276) = 0;
        *(a1[9] + 18292) = 0;
        *(a1[9] + 18288) = 0;
        if (v12 || v16 || v20)
        {
          AppleBCMWLANCore::updateTrafficInactivityScanCoreBeaconStats();
        }
      }
    }
  }

  *(a1[9] + 19901) = 0;
  return 0;
}

uint64_t AppleBCMWLANCore::updateBeaconOffloadStatsReport(AppleBCMWLANCore *a1, _DWORD *a2, uint64_t a3)
{
  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 76))
  {
    v6 = *(a1 + 9);
    if ((*(v6 + 18484) & 1) == 0)
    {
      *(v6 + 19008) = a3;
      *(*(a1 + 9) + 19016) = a2[9] / 0x3E8uLL;
      v7 = a2[4];
      *(*(a1 + 9) + 19024) = a2[5];
      *(*(a1 + 9) + 19028) = a2[6];
      *(*(a1 + 9) + 19032) = a2[2];
      *(*(a1 + 9) + 19036) = v7;
      *(*(a1 + 9) + 19000) = 1;
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::updateBeaconOffloadStatsReport();
        }
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics(IOService *this)
{
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  v2 = OSString::withCString("com.apple.wifi.BeaconOffloadStats");
  if (!v2)
  {
    return AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics();
  }

  v3 = v2;
  v4 = OSDictionary::withCapacity(6u);
  if (v4)
  {
    this[1].OSObject::OSObjectInterface::__vftable[1234].init = -this[1].OSObject::OSObjectInterface::__vftable[1233].free;
    v5 = OSString::withCString("WiFiSessionDuration");
    if (v5)
    {
      v6 = v5;
      v7 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[1234].init, 0x40uLL);
      if (v7)
      {
        OSDictionary::setObject(v4, v6, v7);
        v8 = OSString::withCString("BcnOffloadDuration");
        if (v8)
        {
          v9 = v8;
          v34 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[1188].free, 0x40uLL);
          OSDictionary::setObject(v4, v9, v34);
          v10 = OSString::withCString("BcnOffldRxBcnCount");
          v38 = v9;
          if (v10)
          {
            v11 = v10;
            v12 = OSNumber::withNumber(LODWORD(this[1].OSObject::OSObjectInterface::__vftable[1189].init), 0x20uLL);
            v37 = v11;
            if (v12)
            {
              v36 = v12;
              OSDictionary::setObject(v4, v11, v12);
              v13 = OSString::withCString("BcnOffldMissedBcnCount");
              if (v13)
              {
                v14 = v13;
                v15 = OSNumber::withNumber(HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[1189].init), 0x20uLL);
                v35 = v14;
                if (v15)
                {
                  v16 = v15;
                  OSDictionary::setObject(v4, v14, v15);
                  v17 = OSString::withCString("BcnOffldEnterCount");
                  if (v17)
                  {
                    v18 = v17;
                    v19 = OSNumber::withNumber(LODWORD(this[1].OSObject::OSObjectInterface::__vftable[1189].free), 0x20uLL);
                    if (v19)
                    {
                      v20 = v19;
                      OSDictionary::setObject(v4, v18, v19);
                      v21 = OSString::withCString("OffldBcnRejectCount");
                      if (v21)
                      {
                        v22 = v21;
                        v23 = OSNumber::withNumber(HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[1189].free), 0x20uLL);
                        OSDictionary::setObject(v4, v22, v23);
                        v24 = this[1].OSObject::OSObjectInterface::__vftable;
                        init = v24[1234].init;
                        if (init <= 0x57E3F && init > v24[1188].free)
                        {
                          v33 = v7;
                          v26 = v6;
                          v27 = v3;
                          v28 = IOService::CoreAnalyticsSendEvent(this, 0, v3, v4, 0);
                          if (v28 && (v29 = v28, (this->OSObject::OSMetaClassBase::__vftable[34].free)(this)) && ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this), CCLogStream::shouldLog()))
                          {
                            v32 = v29;
                            v3 = v27;
                            AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v27, v32);
                          }

                          else
                          {
                            v3 = v27;
                          }

                          v6 = v26;
                          v7 = v33;
                        }

                        goto LABEL_20;
                      }

                      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                      {
                        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                        if (CCLogStream::shouldLog())
                        {
                          AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics();
                        }
                      }

                      v22 = 0;
LABEL_74:
                      v23 = 0;
LABEL_20:
                      v30 = v34;
LABEL_21:
                      (v6->release)(v6);
                      if (v7)
                      {
                        (v7->release)(v7);
                      }

                      if (v38)
                      {
                        (v38->release)(v38);
                      }

                      if (v30)
                      {
                        (v30->release)(v30);
                      }

                      if (v37)
                      {
                        (v37->release)(v37);
                      }

                      if (v36)
                      {
                        (v36->release)(v36);
                      }

                      if (v35)
                      {
                        (v35->release)(v35);
                      }

                      if (v16)
                      {
                        (v16->release)(v16);
                      }

                      if (v18)
                      {
                        (v18->release)(v18);
                      }

                      if (v20)
                      {
                        (v20->release)(v20);
                      }

                      if (v22)
                      {
                        (v22->release)(v22);
                      }

                      if (v23)
                      {
                        (v23->release)(v23);
                      }

                      goto LABEL_43;
                    }

                    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                    {
                      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics();
                      }
                    }

LABEL_73:
                    v22 = 0;
                    v20 = 0;
                    goto LABEL_74;
                  }

                  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                  {
                    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics();
                    }
                  }

LABEL_72:
                  v18 = 0;
                  goto LABEL_73;
                }

                if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                {
                  (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics();
                  }
                }
              }

              else
              {
                if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                {
                  (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics();
                  }
                }

                v35 = 0;
              }

LABEL_71:
              v16 = 0;
              goto LABEL_72;
            }

            if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
            {
              (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics();
              }
            }
          }

          else
          {
            if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
            {
              (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics();
              }
            }

            v37 = 0;
          }

          v35 = 0;
          v36 = 0;
          goto LABEL_71;
        }

        if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
        {
          (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics();
          }
        }
      }

      else if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics();
        }
      }

      v37 = 0;
      v38 = 0;
      v35 = 0;
      v36 = 0;
      v30 = 0;
      v16 = 0;
      v18 = 0;
      v22 = 0;
      v20 = 0;
      v23 = 0;
      goto LABEL_21;
    }

    AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics();
  }

  else
  {
    AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics();
  }

LABEL_43:
  result = (v3->release)(v3);
  if (v4)
  {
    return (v4->release)(v4);
  }

  return result;
}

uint64_t AppleBCMWLANCore::deleteIPv6PktFiltersAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (!a3)
  {
    *(*(result + 72) + 10040) = 0;
  }

  return result;
}

uint64_t AppleBCMWLANCore::deleteIPv4PktFiltersAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (!a3)
  {
    *(*(result + 72) + 10041) = 0;
  }

  return result;
}

uint64_t AppleBCMWLANCore::deleteMagicPktFiltersAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (!a3)
  {
    *(*(result + 72) + 10042) = 0;
  }

  return result;
}

void *AppleBCMWLANCore::deleteEapolFilterAsyncCallBack(void *result, uint64_t a2, int a3)
{
  if (!a3)
  {
    v3 = result;
    *(result[9] + 10043) = 0;
    result = (*(*result + 1952))(result, a2);
    if (result)
    {
      (*(*v3 + 1952))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::deleteEapolFilterAsyncCallBack();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleResetLinkParamsAsyncCallBack(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result;
    result = (*(*result + 1952))(result, a2);
    if (result)
    {
      (*(*v3 + 1952))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleResetLinkParamsAsyncCallBack();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleBusWakeReasonSyncCallBack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = 0u;
  v35 = 0u;
  *__dst = 0u;
  v33 = 0u;
  v4 = *a3;
  v5 = 8;
  if (**a3 == 1)
  {
    v5 = 4;
  }

  v6 = (a3 + 8);
  if (v5 > *(a3 + 8))
  {
    return AppleBCMWLANCore::handleBusWakeReasonSyncCallBack();
  }

  v7 = a2;
  v8 = (*(*a1 + 1952))(a1);
  if (v7)
  {
    if (v8)
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleBusWakeReasonSyncCallBack();
      }
    }

    v9 = *(*(a1 + 72) + 5536);

    return CCFaultReporter::reportFault(v9, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x325Eu, "handleBusWakeReasonSyncCallBack", 0, -469793518, "Failed to get cached FW wakeup data");
  }

  if (v8)
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::handleBusWakeReasonSyncCallBack();
    }
  }

  v11 = v4[1];
  if (v4[1])
  {
    v12 = *v6 + 16 >= v11;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    result = (*(*a1 + 1952))(a1);
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        v31 = (*(*a1 + 1952))(a1);
        return CCLogStream::logNoticeIf(v31, 0x8000000uLL, "[dk] %s@%d:Rx payload buffer size %d is too small to contain the cached wakeup data size %d (version %d).\n", "handleBusWakeReasonSyncCallBack", 12904, *v6, v11, *v4);
      }
    }

    return result;
  }

  if (v11 <= 7)
  {
    return AppleBCMWLANCore::handleBusWakeReasonSyncCallBack(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v4[1]);
  }

  v13 = 4;
  if (*v4 == 1)
  {
    v13 = 2;
  }

  v14 = &v4[v13];
  v15 = LOBYTE(v4[v13]);
  if (v15 != 14)
  {
    if (v15 == 67)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleBusWakeReasonSyncCallBack();
        }
      }

      if (v11 <= 0xF)
      {
        return AppleBCMWLANCore::handleBusWakeReasonSyncCallBack(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v11);
      }

      v16 = v4[1] - 16;
      v17 = (v14 + 8);
      v18 = a1;
      v19 = 2;
      v20 = 67;
    }

    else
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleBusWakeReasonSyncCallBack();
        }
      }

      v16 = v4[1];
      v18 = a1;
      v19 = 3;
      v17 = v14;
      v20 = 0;
    }

    AppleBCMWLANCore::updateWoWReasonToIoReg(v18, v19, v17, v16, v20, 0);
    goto LABEL_43;
  }

  if ((v11 - 8) <= 0x47)
  {
    return AppleBCMWLANCore::handleBusWakeReasonSyncCallBack(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v11 - 8);
  }

  if ((v11 - 22) <= 9)
  {
    return AppleBCMWLANCore::handleBusWakeReasonSyncCallBack(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v11 - 22);
  }

  if (*(v14 + 27) == 4096 && *(v14 + 29) == 24)
  {
    v23 = v14[15];
    if (v23 == 256)
    {
      if ((v11 - 32) <= 0x2F)
      {
        return AppleBCMWLANCore::handleBusWakeReasonSyncCallBack(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v11 - 32);
      }

      v25 = *(v14 + 9);
      v24 = (v14 + 18);
      *v24 = bswap32(v25);
      v26 = v24 + 4;
      v24[4] = bswap32(v24[4]);
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleBusWakeReasonSyncCallBack();
        }
      }

      if ((v11 - 80) < *v26)
      {
        return AppleBCMWLANCore::handleBusWakeReasonSyncCallBack(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v24 + 4, v11 - 80);
      }

      WakeReasonFromEvent = getWakeReasonFromEvent(*v24);
      AppleBCMWLANCore::updateWoWReasonToIoReg(a1, WakeReasonFromEvent, v24 - 4, *v26 + 48, 14, *v24);
      if ((AppleBCMWLANCore::whitelistedWakeReason(a1, *v24) & 1) == 0)
      {
        v28 = *(*(a1 + 72) + 5536);
        v29 = convertEventToString(*v24, __dst, 0x40uLL);
        CCFaultReporter::reportFault(v28, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x32ADu, "handleBusWakeReasonSyncCallBack", 0, -469793518, "Event=%s", v29);
      }
    }

    else
    {
      if (v23 != 1280)
      {
        goto LABEL_35;
      }

      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleBusWakeReasonSyncCallBack();
        }
      }

      AppleBCMWLANCore::updateWoWReasonToIoReg(a1, 0x17u, v14, v11, 14, 224);
    }

    v30 = *(*(a1 + 72) + 5504);
    if (v30)
    {
      AppleBCMWLANIOReportingCore::reportWakeReason(v30);
    }

LABEL_43:
    result = (*(*a1 + 1952))(a1);
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleBusWakeReasonSyncCallBack();
      }
    }

    return result;
  }

LABEL_35:
  result = (*(*a1 + 1952))(a1);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v22 = (*(*a1 + 1952))(a1);
      return CCLogStream::logAlert(v22, "[dk] %s@%d: Got a BRCM host wakeup event packet but an OUI/SUBTYPE mismatch (OUI=%02x %02x %02x, subtype=%d) length %lu\n", "handleBusWakeReasonSyncCallBack", 12941, *(v14 + 27), *(v14 + 28), *(v14 + 29), v14[15], v4[1]);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateWoWReasonToIoReg(AppleBCMWLANCore *this, unsigned int a2, char *a3, unsigned int a4, int a5, int a6)
{
  TkoWakeReason = AppleBCMWLANKeepAliveOffload::getTkoWakeReason(*(*(this + 9) + 5544));
  v13 = TkoWakeReason;
  if (a6 == 151)
  {
    v14 = TkoWakeReason;
  }

  else
  {
    v14 = a2;
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v16 = (*(*this + 1952))(this);
      v17 = "";
      if (!v14)
      {
        v17 = " Reason unknown, please add it";
      }

      CCLogStream::logAlert(v16, "[dk] %s@%d:%s reason<%d> -> <%d>, type<%d> subtype<%d> tkoWakeReason<%d>\n", "updateWoWReasonToIoReg", 48154, v17, a2, v14, a5, a6, v13);
    }
  }

  IO80211Controller::updateWoWReasonToIoReg(this, v14, a3, a4, v13);
  return 0;
}

uint64_t AppleBCMWLANCore::whitelistedWakeReason(AppleBCMWLANCore *this, uint64_t a2)
{
  if (a2 == 52 || a2 == 124)
  {
    return 0;
  }

  if (a2 == 151)
  {
    return AppleBCMWLANCore::checkForTCPKAOffloadSupport(this);
  }

  return AppleBCMWLANCore::isCachedSleepingEventBitFieldSet(this, a2);
}

IO80211BssManager *AppleBCMWLANCore::linkChangeEvent(AppleBCMWLANCore *this, uint64_t a2, int a3)
{
  v21 = 0;
  v5 = (*(*this + 1952))(this, a2);
  if (a3)
  {
    if (v5)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::linkChangeEvent();
      }
    }

    isAssociated = IO80211BssManager::isAssociated(*(*(this + 9) + 5432));
    v7 = *(this + 9);
    if (isAssociated)
    {
      v8 = *(v7 + 6232);
      if (v8)
      {
        (*(*v8 + 56))(v8, 2000);
        v7 = *(this + 9);
      }
    }

    result = *(v7 + 6256);
    if (result)
    {
      result = (*(*result + 56))(result, 120000);
      v7 = *(this + 9);
    }

    if (*(v7 + 4480) == 1)
    {
      v10 = *(v7 + 6264);
      if (v10)
      {
        (*(*v10 + 56))(v10, 10000);
        v7 = *(this + 9);
      }

      result = *(v7 + 6272);
      if (result)
      {
        result = (*(*result + 56))(result, 10000);
        v7 = *(this + 9);
      }
    }

    if (*(v7 + 5528))
    {
      result = *(v7 + 5432);
      if (result)
      {
        IO80211BssManager::getCurrentRSSI(result, &v21);
        v11 = v21;
        result = AppleBCMWLANTxPowerManager::getDynSARRssiThreshUpper(*(*(this + 9) + 5528));
        if (v11 > result)
        {
          AppleBCMWLANTxPowerManager::resetDynSARLqmRssi(*(*(this + 9) + 5528));
          return AppleBCMWLANTxPowerManager::configureDynSARPwrBoost(*(*(this + 9) + 5528), 0);
        }
      }
    }
  }

  else
  {
    if (v5)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::linkChangeEvent();
      }
    }

    v12 = *(this + 9);
    v13 = *(v12 + 6232);
    if (v13)
    {
      (*(*v13 + 72))(v13);
      v12 = *(this + 9);
    }

    v14 = *(v12 + 6256);
    if (v14)
    {
      (*(*v14 + 72))(v14);
      v12 = *(this + 9);
    }

    if (*(v12 + 4480) == 1)
    {
      v15 = *(v12 + 6264);
      if (v15)
      {
        (*(*v15 + 72))(v15);
        v12 = *(this + 9);
      }

      v16 = *(v12 + 6272);
      if (v16)
      {
        (*(*v16 + 72))(v16);
        v12 = *(this + 9);
      }
    }

    v17 = *(v12 + 5528);
    if (v17 && !AppleBCMWLANTxPowerManager::getDynSARPwrBoostCur(v17))
    {
      AppleBCMWLANTxPowerManager::resetDynSARLqmRssi(*(*(this + 9) + 5528));
      v18 = *(this + 9);
      v19 = *(v18 + 5528);
      DynSARPwrBoostCtl = AppleBCMWLANConfigManager::getDynSARPwrBoostCtl(*(v18 + 5464));
      AppleBCMWLANTxPowerManager::configureDynSARPwrBoost(v19, *(DynSARPwrBoostCtl + 3));
    }

    result = AppleBCMWLANCore::featureFlagIsBitSet(this, 89);
    if (result)
    {

      return AppleBCMWLANCore::cfgAmpduWindowSize(this);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::resetScanRoamStats(AppleBCMWLANCore *this)
{
  memset_s((*(this + 9) + 35920), 0x28uLL, 0, 0x28uLL);
  v2 = *(this + 9);
  *(v2 + 19096) = 0;
  *(v2 + 19048) = 0u;
  *(v2 + 19064) = 0u;
  *(v2 + 19080) = 0u;
  v3 = *(this + 9);
  *(v3 + 19120) = 0;
  *(v3 + 19104) = 0u;
  v4 = (*(this + 9) + 19128);
  *v4 = 0u;
  v4[1] = 0u;
  memset_s((*(this + 9) + 35960), 0x10uLL, 0, 0x10uLL);
  mach_continuous_time();
  result = absolutetime_to_nanoseconds();
  *(*(this + 9) + 19104) = 0;
  *(*(this + 9) + 19104) /= 0x3E8uLL;
  *(*(this + 9) + 18456) = 0;
  *(*(this + 9) + 18464) = 0;
  *(*(this + 9) + 1016) = 0;
  return result;
}

uint64_t AppleBCMWLANCore::setLQM(AppleBCMWLANCore *this)
{
  result = (*(*this + 128))(this);
  if (result)
  {
    v3 = *(*(*(*this + 128))(this) + 752);

    return v3();
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleIPv4AddressNotificationGated(AppleBCMWLANCore *this, void *a2)
{
  v3 = *(this + 9);
  v4 = *(v3 + 5392);
  if (v4)
  {
    AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(v4, 0, 10);
    v3 = *(this + 9);
  }

  v5 = *(v3 + 9484);
  if (!(*(*this + 1952))(this, a2) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110658;
      v10 = 78;
      v11 = 2080;
      v12 = "handleIPv4AddressNotificationGated";
      v13 = 1024;
      v14 = 13206;
      v15 = 1024;
      v16 = v5;
      v17 = 1024;
      v18 = BYTE1(v5);
      v19 = 1024;
      v20 = BYTE2(v5);
      v21 = 1024;
      v22 = HIBYTE(v5);
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d:  Local IPv4  address %u.%u.%u.%u\n", buf, 0x30u);
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v8 = (*(*this + 1952))(this);
      CCLogStream::logNotice(v8, "[dk] %s@%d: Local IPv4  address %u.%u.%u.%u\n", "handleIPv4AddressNotificationGated", 13206, v5, BYTE1(v5), BYTE2(v5), HIBYTE(v5));
    }
  }

  v6 = *(this + 9);
  if (*(v6 + 9484))
  {
    if (*(v6 + 30092) == 1)
    {
      AppleBCMWLANCore::setupTrafficMonitoring(this, 1);
    }
  }

  else
  {
    *(v6 + 9492) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCore::setupTrafficMonitoring(void *this, int a2)
{
  v4 = (*(*this + 88))(this);
  v5 = *(this[9] + 11288);
  if (!v5)
  {
    if (v4)
    {
      return AppleBCMWLANCore::setupTrafficMonitoring();
    }

    return AppleBCMWLANCore::setupTrafficMonitoring();
  }

  TrafficMonitor = IO80211InfraInterface::getTrafficMonitor(v5);
  if (!v4)
  {
    return AppleBCMWLANCore::setupTrafficMonitoring();
  }

  if (!TrafficMonitor)
  {
    return AppleBCMWLANCore::setupTrafficMonitoring();
  }

  if (a2)
  {
    TrafficNotification = IO80211TrafficMonitor::createTrafficNotification();
    if (TrafficNotification)
    {
      v8 = TrafficNotification;
      (*(*v4 + 64))(v4, TrafficNotification);
      (*(*v8 + 64))(v8);
      result = (*(*this + 1952))(this);
      if (result)
      {
        (*(*this + 1952))(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          v10 = (*(*this + 1952))(this);
          return CCLogStream::logInfo(v10, "[dk] %s@%d:Created RT/NRT traffic notification with config reportIntervalMS:%u realTimePacketCount:%u backgroundPackCount:%u\n", "setupTrafficMonitoring", 58430, 5000, 10, 10);
        }
      }
    }

    else
    {
      result = (*(*this + 1952))(this);
      if (result)
      {
        (*(*this + 1952))(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANCore::setupTrafficMonitoring();
        }
      }
    }
  }

  else
  {
    result = (*(*this + 1952))(this);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::setupTrafficMonitoring();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleKeepaliveDataNotificationGated(AppleBCMWLANCore *this, void *a2)
{
  v3 = *(*(this + 9) + 9492);
  if ((*(*this + 1952))(this, a2))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v15 = (*(*this + 1952))(this);
      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v5 = *(*(this + 9) + 9496);
      }

      else
      {
        v5 = 0;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v6 = *(*(this + 9) + 9497);
      }

      else
      {
        v6 = 0;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v7 = *(*(this + 9) + 9498);
      }

      else
      {
        v7 = 0;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v8 = *(*(this + 9) + 9499);
      }

      else
      {
        v8 = 0;
      }

      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v9 = *(*(this + 9) + 9500);
      }

      else
      {
        v9 = 0;
      }

      v10 = HIBYTE(v3);
      v11 = v3;
      v12 = BYTE1(v3);
      v13 = BYTE2(v3);
      if (IO80211_io80211isSensitiveInfoAllowed())
      {
        v14 = *(*(this + 9) + 9501);
      }

      else
      {
        v14 = 0;
      }

      CCLogStream::logAlert(v15, "[dk] %s@%d: Router IPv4 address = %u.%u.%u.%u, MAC = %02X:%02X:%02X:%02X:%02X:%02X\n", "handleKeepaliveDataNotificationGated", 13274, v11, v12, v13, v10, v5, v6, v7, v8, v9, v14);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::handleIPv6AddressNotificationGated(void *this, void *a2)
{
  v4 = this + 9;
  v3 = this[9];
  v5 = *(v3 + 5392);
  if (v5)
  {
    AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(v5, 0, 11);
    v3 = *v4;
  }

  if (*(v3 + 10036))
  {
    v6 = 0;
    do
    {
      if ((*(*this + 1952))(this, a2))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleIPv6AddressNotificationGated();
        }
      }

      ++v6;
    }

    while (v6 < *(*v4 + 10036));
  }

  return 0;
}

uint64_t AppleBCMWLANCore::recoverFromDisassocFailure(uint64_t this, int a2)
{
  if (a2 != -469793790 && a2 != -469793788)
  {
    v3 = *(this + 72);
    if (*(v3 + 10368))
    {
      v4 = 5;
    }

    else
    {
      v4 = 4;
    }

    return CCFaultReporter::reportFault(*(v3 + 5536), v4, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x3424u, "recoverFromDisassocFailure", 0, -469793525, 0);
  }

  return this;
}

uint64_t AppleBCMWLANCore::handlGetPMDurationAsyncCallback(void *a1, uint64_t a2, uint64_t a3, unsigned int **a4)
{
  if (a3)
  {
    AppleBCMWLANCore::handlGetPMDurationAsyncCallback();
  }

  else
  {
    v6 = a1 + 9;
    if (*(a1[9] + 18195) == 1)
    {
      *(a1[9] + 18256) = **a4;
      if ((*(*a1 + 1952))(a1, a2))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handlGetPMDurationAsyncCallback();
        }
      }
    }

    else
    {
      v7 = **a4;
      v8 = *(a1[9] + 18256);
      if (v8)
      {
        v9 = v7 > v8;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        v10 = v7 - v8;
        if ((*(*a1 + 1952))(a1, a2))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            v13 = (*(*a1 + 1952))(a1);
            CCLogStream::logInfo(v13, "[dk] %s@%d:Async exit MPC duration - last: %d current: %d delta: %d\n", "handlGetPMDurationAsyncCallback", 13366, *(a1[9] + 18256), v7, v10);
          }
        }

        v11 = *(*v6 + 18208);
        *(*v6 + 18208) = v11 + v10;
        *(*v6 + 18256) = 0;
        if (__CFADD__(v11, v10))
        {
          AppleBCMWLANCore::handlGetPMDurationAsyncCallback();
        }
      }
    }
  }

  return a3;
}

uint64_t AppleBCMWLANCore::updateTrafficInactivityBeaconStats(void *this, OSData *a2)
{
  v20 = 0;
  OSData::getBytesNoCopy(a2);
  memset(v21, 170, sizeof(v21));
  AppleBCMWLANUtil::AutoreleasedAlignedOSData::AutoreleasedAlignedOSData(v21, a2, 4);
  v4 = v21[0];
  if (v21[0])
  {
    CounterValueSafe = AppleBCMWLANUtil::getCounterValueSafe(&v20, 4uLL, v21[0], 4uLL);
    v6 = AppleBCMWLANUtil::getCounterValueSafe(&v20, 4uLL, v4, 8uLL);
    v7 = v6;
    if (*(this[9] + 18195) == 1)
    {
      *(this[9] + 18272) = v6;
      *(this[9] + 18260) = CounterValueSafe;
    }

    else
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v19 = (*(*this + 1952))(this);
          CCLogStream::logInfo(v19, "[dk] %s@%d:Beacon stats: Prev [sched: %d rcvd: %d] Current [sched: %d rcvd: %d]\n", "updateTrafficInactivityBeaconStats", 13418, *(this[9] + 18272), *(this[9] + 18260), v7, CounterValueSafe);
        }
      }

      v9 = *(this[9] + 18224);
      v10 = v7 - *(this[9] + 18272);
      v11 = __CFADD__(v9, v10);
      v12 = v9 + v10;
      v13 = v11;
      *(this[9] + 18224) = v12;
      v14 = *(this[9] + 18212);
      v15 = CounterValueSafe - *(this[9] + 18260);
      v11 = __CFADD__(v14, v15);
      v16 = v14 + v15;
      v17 = v11;
      *(this[9] + 18212) = v16;
      *(this[9] + 18272) = 0;
      *(this[9] + 18260) = 0;
      if ((v13 & 1) != 0 || v17)
      {
        AppleBCMWLANCore::updateTrafficInactivityBeaconStats();
      }
    }

    *(this[9] + 19900) = 0;
    v8 = v20;
  }

  else
  {
    v8 = 3758097084;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::updateTrafficInactivityBeaconStats();
      }
    }
  }

  AppleBCMWLANUtil::AutoreleasedAlignedOSData::~AutoreleasedAlignedOSData(v21);
  return v8;
}

uint64_t AppleBCMWLANCore::setTrafficInactivityStats(IO80211Controller *this)
{
  v16 = 0;
  *v13 = 0;
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  v3 = (this + 72);
  v2 = *(this + 9);
  v15 = *(v2 + 778);
  if (*(v2 + 18195) == 1)
  {
    *(v2 + 18248) = 0;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setTrafficInactivityStats();
      }
    }
  }

  else
  {
    v4 = -*(v2 + 18248);
    *(v2 + 18200) += v4;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        v11 = (*(*this + 1952))(this);
        CCLogStream::logInfo(v11, "[dk] %s@%d:exit %llu duration %llu\n", "setTrafficInactivityStats", 13482, 0, v4);
      }
    }
  }

  v5 = (*(*this + 88))(this);
  if ((*(*v5 + 136))(v5))
  {
    *v13 = this;
    *&v13[8] = AppleBCMWLANCore::handlGetPMDurationAsyncCallback;
    *&v13[16] = 0;
    v6 = *(*(this + 9) + 5408);
    v14 = 262148;
    if (AppleBCMWLANCommander::sendIOVarGet(v6, "pm_dur", &kNoTxPayload, &v14, v13, 0))
    {
      AppleBCMWLANCore::setTrafficInactivityStats();
      return IO80211Controller::postMessage(this, *(*(this + 9) + 11288), 0xDDu, &v15, 4uLL, 1);
    }
  }

  else
  {
    *v13 = &v16;
    *&v13[8] = 0x400040004;
    if (AppleBCMWLANCommander::runIOVarGet(*(*v3 + 5408), "pm_dur", &kNoTxPayload, v13, 0))
    {
      AppleBCMWLANCore::setTrafficInactivityStats();
      return IO80211Controller::postMessage(this, *(*(this + 9) + 11288), 0xDDu, &v15, 4uLL, 1);
    }

    if (*(*v3 + 18195) == 1)
    {
      *(*v3 + 18256) = v16;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setTrafficInactivityStats();
        }
      }
    }

    else
    {
      v7 = *(*v3 + 18256);
      if (v7)
      {
        v8 = v16 - v7;
        if (v16 > v7)
        {
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              v12 = (*(*this + 1952))(this);
              CCLogStream::logInfo(v12, "[dk] %s@%d:Sync exit MPC duration - last: %d current: %d delta: %d\n", "setTrafficInactivityStats", 13505, *(*(this + 9) + 18256), v16, v8);
            }
          }

          v9 = *(*v3 + 18208);
          *(*v3 + 18208) = v9 + v8;
          *(*v3 + 18256) = 0;
          if (__CFADD__(v9, v8))
          {
            AppleBCMWLANCore::setTrafficInactivityStats();
            return IO80211Controller::postMessage(this, *(*(this + 9) + 11288), 0xDDu, &v15, 4uLL, 1);
          }
        }
      }
    }
  }

  if (AppleBCMWLANCore::checkForEarlyBeconTerminationSupport(this))
  {
    AppleBCMWLANCore::getChipIfCounters(this);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 76) && (*(*v3 + 18484) & 1) == 0)
  {
    memset(v13, 0, sizeof(v13));
    AppleBCMWLANCore::collectBeaconRxCounters(this, v13, 0);
  }

  return IO80211Controller::postMessage(this, *(*(this + 9) + 11288), 0xDDu, &v15, 4uLL, 1);
}

uint64_t AppleBCMWLANCore::checkForEarlyBeconTerminationSupport(AppleBCMWLANCore *this)
{
  result = AppleBCMWLANCore::featureFlagIsBitSet(this, 57);
  if (result)
  {
    v3 = *(*(this + 9) + 5464);

    return AppleBCMWLANConfigManager::isEBTSupportedInDriver(v3);
  }

  return result;
}

uint64_t AppleBCMWLANCore::getChipIfCounters(AppleBCMWLANCore *this)
{
  v2 = *(*(this + 9) + 11304);
  if (v2 && AppleBCMWLANIO80211APSTAInterface::enabled(v2) && AppleBCMWLANCore::issueIfCounterIOVar(this, 1u))
  {
    AppleBCMWLANCore::getChipIfCounters();
  }

  v3 = AppleBCMWLANCore::issueIfCounterIOVar(this, 0);
  if (v3)
  {
    AppleBCMWLANCore::getChipIfCounters();
  }

  return v3;
}

uint64_t AppleBCMWLANCore::collectBeaconRxCounters(AppleBCMWLANCore *a1, uint64_t a2, int a3)
{
  result = AppleBCMWLANCore::featureFlagIsBitSet(a1, 76);
  if (result)
  {
    v7 = *(a1 + 9);
    if ((*(v7 + 18484) & 1) == 0)
    {
      result = IO80211BssManager::isAssociatedToAdhoc(*(v7 + 5432));
      if ((result & 1) == 0)
      {
        *(*(a1 + 9) + 19752) = a3;
        v8 = (*(a1 + 9) + 19692);
        *(v8 + 28) = 0u;
        *v8 = 0u;
        v8[1] = 0u;
        result = IOMallocZeroData();
        if (result)
        {
          v9 = result;
          *result = 1;
          *(result + 4) |= a3;
          v10 = (*(*a1 + 88))(a1);
          if ((*(*v10 + 136))(v10))
          {
            *&v19 = a1;
            *(&v19 + 1) = AppleBCMWLANCore::handleCollectBeaconRxCountersAsyncCallBack;
            v20 = a2;
            v11 = *(*(a1 + 9) + 5408);
            v17 = v9;
            v18 = 44;
            v16 = 2883628;
            if (AppleBCMWLANCommander::sendIOVarGet(v11, "sta_pm_sc_offload_status", &v17, &v16, &v19, 0) && (*(*a1 + 1952))(a1))
            {
              (*(*a1 + 1952))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::collectBeaconRxCounters();
              }
            }
          }

          else
          {
            *&v19 = v9;
            *(&v19 + 1) = 0x2C002C002CLL;
            v12 = *(*(a1 + 9) + 5408);
            v17 = v9;
            v18 = 44;
            if (!AppleBCMWLANCommander::runIOVarGet(v12, "sta_pm_sc_offload_status", &v17, &v19, 0))
            {
              v13 = *v9;
              v14 = *(v9 + 16);
              *(a2 + 28) = *(v9 + 28);
              *a2 = v13;
              *(a2 + 16) = v14;
              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::collectBeaconRxCounters();
                }
              }

              if (*(*(a1 + 9) + 19901) == 1)
              {
                AppleBCMWLANCore::updateTrafficInactivityScanCoreBeaconStats(a1, v9);
              }

              *(*(a1 + 9) + 19744) = getCurrentContinuousTimeMilliSeconds() / 0x3E8 - *(*(a1 + 9) + 19736);
              AppleBCMWLANCore::updateBeaconOffloadStatsReport(a1, a2, *(*(a1 + 9) + 19744));
              v15 = *(a1 + 9);
              if (*(v15 + 5504) && *(a2 + 36))
              {
                AppleBCMWLANIOReportingCore::updateBeaconOffloadStats();
                v15 = *(a1 + 9);
              }

              if (*(v15 + 19752) == 1)
              {
                AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics(a1);
                *(*(a1 + 9) + 19752) = 0;
              }
            }
          }

          return IOFreeData();
        }
      }
    }
  }

  return result;
}

unint64_t AppleBCMWLANCore::timeSinceLastActivity_ms(AppleBCMWLANCore *this)
{
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  return 0xB2F4FC07949;
}

uint64_t AppleBCMWLANCore::printDataPathDebug(AppleBCMWLANCore *this, char *a2, int a3, int a4)
{
  v8 = (*(*this + 1952))(this);
  v9 = a3;
  v10 = a4;
  v11 = IO80211Print(v8, 5, -1, 0, a2, a3, a4, "WME ACM %u %u %u %u\n", *(*(this + 9) + 19753) & 0x10, *(*(this + 9) + 19757) & 0x10, *(*(this + 9) + 19761) & 0x10, *(*(this + 9) + 19765) & 0x10);
  v12 = AppleBCMWLANCore::dumpWmeCounters(this, a2, v11 + a3, a4 - v11) + v11;
  v13 = (*(*this + 1952))(this);
  v14 = v12 + IO80211Print(v13, 5, -1, 0, a2, v12 + a3, v10 - v12, "   Sent        : [prox,n-p2p,infra,softap] [%u,%u%u,%u]\n", *(*(this + 9) + 11072), *(*(this + 9) + 11076), *(*(this + 9) + 11064), *(*(this + 9) + 11068));
  v15 = (*(*this + 1952))(this);
  v16 = *(this + 9);
  v17 = v14 + IO80211Print(v15, 5, -1, 0, a2, v14 + a3, v10 - v14, "fRequestIOTx: Busy %u BusyTags %u. FromPreRx (%u+%u)/%u FromPostRx %u/%u\n", v16[4611], v16[4612], v16[2689], v16[2688], v16[2687], v16[2691], v16[2690]);
  v18 = (*(*this + 1952))(this);
  v19 = v17 + IO80211Print(v18, 5, -1, 0, a2, v17 + a3, v10 - v17, "Packet Requests: family=%u\n", *(*(this + 9) + 11004));
  v20 = (*(*this + 1952))(this);
  v21 = v19 + IO80211Print(v20, 5, -1, 0, a2, v19 + a3, v10 - v19, "BDC Rx: invalid=%u short=%u\n", *(*(this + 9) + 4452), *(*(this + 9) + 4456));
  if (*(*(this + 9) + 11304))
  {
    v22 = (*(*this + 1952))(this);
    v23 = *(*(this + 9) + 11304);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(v23);
    v25 = AppleBCMWLANIO80211APSTAInterface::enabled(*(*(this + 9) + 11304));
    return v21 + IO80211Print(v22, 5, -1, 0, a2, v9 + v21, v10 - v21, "virtual interface %p: ifid %d enabled %d\n", v23, InterfaceId, v25);
  }

  return v21;
}

uint64_t AppleBCMWLANCore::releaseFlowQueue(IO80211Controller *a1, IO80211FlowQueue *a2)
{
  if ((*(**(*(a1 + 9) + 5392) + 408))(*(*(a1 + 9) + 5392)))
  {
    v4 = *(**(*(a1 + 9) + 5392) + 424);

    return v4();
  }

  else
  {

    return IO80211Controller::releaseFlowQueue(a1, a2);
  }
}

uint64_t AppleBCMWLANCore::requestFlowQueue(AppleBCMWLANCore *a1, uint64_t a2)
{
  if ((*(**(*(a1 + 9) + 5392) + 408))(*(*(a1 + 9) + 5392)))
  {
    if (AppleBCMWLANCore::isRejectingCommands(a1))
    {
      return 0;
    }

    else
    {
      v5 = *(**(*(a1 + 9) + 5392) + 416);

      return v5();
    }
  }

  else
  {

    return IO80211Controller::requestFlowQueue(a1, a2);
  }
}

unsigned __int8 *AppleBCMWLANCore::validateBrcmExtChIE(unint64_t this, unsigned __int8 *a2, unint64_t a3)
{
  if (!a2 || !a3)
  {
    AppleBCMWLANCore::validateBrcmExtChIE();
    return v7;
  }

  if (a3 < 7)
  {
    return 0;
  }

  if (*(a2 + 1) != -28672 || a2[4] != 76)
  {
    return 0;
  }

  v5 = 0;
  if (a3 >= 0x83 && a2[5] == 64)
  {
    if (*(a2 + 10) + 6 <= a3 && !*(a2 + 126) && !*(a2 + 61))
    {
      v5 = a2 + 6;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::validateBrcmExtChIE();
        }
      }

      return v5;
    }

    AppleBCMWLANCore::validateBrcmExtChIE();
    return v7;
  }

  return v5;
}

uint64_t AppleBCMWLANCore::getRoamNoNetworkReason(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(a2 + 20);
  if (v2 < 2 || *(a2 + 4) != 19 || *(a2 + 8) != 3)
  {
    return 0;
  }

  v4 = v2 + 47 + a2;
  if (!__CFADD__(v2 + 47, a2))
  {
    v6 = (a2 + 48);
    v7 = a2 + 49;
    if (v7 >= a2 && a2 != -49 && v7 <= v4 && v6 >= a2 && v4 >= v6)
    {
      if (*v6 != 221)
      {
        v8 = *(a2 + 50);
        if (v2 >= v8 && *(a2 + 54) + 8 <= v8 && *(a2 + 52) == 1)
        {
          return *(a2 + 56);
        }
      }

      return 0;
    }
  }

  result = (*(*a1 + 1952))(a1);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANCore::getRoamNoNetworkReason();
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleExtendedEventData(uint64_t this, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 20);
    if (v3 >= 2)
    {
      v4 = this;
      v5 = (a2 + 48);
      v6 = v3 + 47 + a2;
      v7 = __CFADD__(v3 + 47, a2);
      v8 = *(a2 + 4);
      if (v8)
      {
        v9 = a2 + 48;
      }

      else
      {
        v9 = a2 + 81;
      }

      if (v7 || (v9 + 1 >= a2 ? (v10 = v9 != -1) : (v10 = 0), v10 ? (v11 = v9 + 1 <= v6) : (v11 = 0), v11 ? (v12 = v9 < a2) : (v12 = 1), !v12 ? (v13 = v6 < v9) : (v13 = 1), v13))
      {
        this = (*(*this + 1952))(this);
        if (this)
        {
          (*(*v4 + 1952))(v4);
          this = CCLogStream::shouldLog();
          if (this)
          {
            return AppleBCMWLANCore::handleExtendedEventData();
          }
        }
      }

      else
      {
        v14 = *(v9 + 1) + 2;
        v15 = &v5[v3 - 1];
        v16 = __CFADD__(v3 - 1, v5);
        if (v8 == 19 && *(a2 + 8) == 3)
        {
          v17 = v9;
          if (*v5 != 221)
          {
            v18 = *(a2 + 50);
            v17 = &v5[v18];
            v14 = v18 + v5[v18 + 1] + 2;
          }
        }

        else
        {
          v17 = v9;
        }

        if (v14 <= v3)
        {
          while (1)
          {
            if (*v17 == 221)
            {
              this = AppleBCMWLANCore::validateBrcmExtChIE(v4, v17, v17[1] + 2);
              if (this)
              {
                v22 = *(this + 8);
                v23 = *(this + 12);
                if (*(a2 + 4) == 16 && !(v22 | v23))
                {
                  v22 = *(a2 + 24);
                  v23 = *(a2 + 28);
                }

                if (v22 | v23)
                {
                  this = AppleBCMWLANScanAdapter::processAndSendWLBSSInfo(*(v4[9] + 5424), this, *(this + 4));
                }
              }
            }

            v19 = *(a2 + 20);
            if (v19 == v14)
            {
              return this;
            }

            if (v19 > v14 && v19 - v14 <= 1)
            {
              break;
            }

            if (v16 || (v17 = (v9 + v14), v21 = v17 + 1, v17 == -1) || v21 < v5 || v21 > v15 || v5 > v17 || v15 < v17)
            {
              this = (*(*v4 + 1952))(v4);
              if (this)
              {
                (*(*v4 + 1952))(v4);
                this = CCLogStream::shouldLog();
                if (this)
                {
                  return AppleBCMWLANCore::handleExtendedEventData();
                }
              }

              return this;
            }

            v14 += v17[1] + 2;
            if (v14 > v19)
            {
              return this;
            }
          }

          this = (*(*v4 + 1952))(v4);
          if (this)
          {
            (*(*v4 + 1952))(v4);
            this = CCLogStream::shouldLog();
            if (this)
            {
              return AppleBCMWLANCore::handleExtendedEventData();
            }
          }
        }
      }
    }
  }

  return this;
}

uint64_t AppleBCMWLANCore::updateSlowWifiRxAmpduStats(AppleBCMWLANCore *this, OSData *a2)
{
  v6 = 0;
  v3 = IOMallocZeroData();
  if (!a2)
  {
LABEL_7:
    v4 = 3758097084;
    if (v3)
    {
      goto LABEL_8;
    }

    return v4;
  }

  if ((OSData::getBytesNoCopy(a2, 4uLL, 4uLL) & 3) != 0)
  {
    AppleBCMWLANCore::updateSlowWifiRxAmpduStats();
    goto LABEL_7;
  }

  if (v3)
  {
    *(v3 + 2160) = AppleBCMWLANUtil::getCounterValueSafe(&v6, 4uLL, a2, 4uLL);
    *(v3 + 2168) = AppleBCMWLANUtil::getCounterValueSafe(&v6, 4uLL, a2, 0x14uLL);
    *(v3 + 2176) = AppleBCMWLANUtil::getCounterValueSafe(&v6, 4uLL, a2, 0x18uLL);
    *(v3 + 2184) = AppleBCMWLANUtil::getCounterValueSafe(&v6, 4uLL, a2, 8uLL);
    *(v3 + 2200) = AppleBCMWLANUtil::getCounterValueSafe(&v6, 4uLL, a2, 0x40uLL);
    *(v3 + 2208) = AppleBCMWLANUtil::getCounterValueSafe(&v6, 4uLL, a2, 0x30uLL);
    *(v3 + 2216) = AppleBCMWLANUtil::getCounterValueSafe(&v6, 4uLL, a2, 0x34uLL);
    *(v3 + 2224) = AppleBCMWLANUtil::getCounterValueSafe(&v6, 4uLL, a2, 0x28uLL);
    *(v3 + 2232) = AppleBCMWLANUtil::getCounterValueSafe(&v6, 4uLL, a2, 0x2CuLL);
    *(v3 + 2240) = AppleBCMWLANUtil::getCounterValueSafe(&v6, 4uLL, a2, 0x1CuLL);
    *(v3 + 2248) = AppleBCMWLANUtil::getCounterValueSafe(&v6, 4uLL, a2, 0xCuLL);
    *(v3 + 2256) = AppleBCMWLANUtil::getCounterValueSafe(&v6, 4uLL, a2, 0x10uLL);
    *(v3 + 2264) = AppleBCMWLANUtil::getCounterValueSafe(&v6, 4uLL, a2, 0x20uLL);
    *(v3 + 2272) = AppleBCMWLANUtil::getCounterValueSafe(&v6, 4uLL, a2, 0x24uLL);
    *(v3 + 2288) = AppleBCMWLANUtil::getCounterValueSafe(&v6, 4uLL, a2, 0x50uLL);
    *(v3 + 2296) = AppleBCMWLANUtil::getCounterValueSafe(&v6, 4uLL, a2, 0x4CuLL);
    *(v3 + 2280) = AppleBCMWLANUtil::getCounterValueSafe(&v6, 4uLL, a2, 0x48uLL);
    *(v3 + 2152) = 3;
    IO80211Controller::setChipCounterStats();
    v4 = v6;
LABEL_8:
    IOFreeData();
    return v4;
  }

  return 0;
}

uint64_t AppleBCMWLANCore::handleDongleEventPacket(IOService *a1, unsigned int *a2)
{
  v53 = 0;
  v4 = *(a2 + 1);
  v5 = &a1[1].OSObjectInterface;
  result = a1[1].OSObject::OSObjectInterface::__vftable[337].init;
  if (result)
  {
    result = (*(*result + 368))(result);
    v7 = result;
  }

  else
  {
    v7 = 0;
  }

  v8 = *a2;
  if (*a2 < 4uLL)
  {
    return result;
  }

  v9 = *(a2 + 1);
  v10 = *(v9 + 3);
  v11 = 4 * v10 + 36;
  if (v8 < v11)
  {
    return result;
  }

  v12 = v9 + 4 * v10;
  if (*(v12 + 26) != 1280)
  {
    return result;
  }

  v14 = (v12 + 34);
  v13 = *(v12 + 34);
  v15 = v11 + (bswap32(v13) >> 16);
  if (v8 < v15)
  {
    if ((a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1))
    {
      (a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1);
      if (CCLogStream::shouldLog())
      {
        v16 = (a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1);
        CCLogStream::logAlert(v16, "[dk] %s@%d:Event too short for a specified datalen(%d, %d) vs (%d)\n", "handleDongleEventPacket", 14561, bswap32(*v14) >> 16, v15, *a2);
      }
    }

LABEL_31:

    return IO80211Hexdump();
  }

  if (*(v12 + 28) != 256)
  {
    if ((a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1))
    {
      (a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleDongleEventPacket();
      }
    }

    goto LABEL_31;
  }

  v17 = *(v12 + 32);
  if (v17 == 512)
  {
    v51 = v4 + v8;
    if (CCLogStream::shouldLog(v5->__vftable[891].init, 1uLL))
    {
      LODWORD(keys) = 0;
      CCLogStream::logHeaderAndBuf(v5->__vftable[891].init, *(a2 + 1), 0, *a2, *a2, &keys, 4uLL);
    }

    *(v12 + 28) = bswap32(*(v12 + 28)) >> 16;
    *(v12 + 32) = bswap32(*(v12 + 32)) >> 16;
    *(v12 + 34) = bswap32(*(v12 + 34)) >> 16;
    v52 = -469793522;
    v18 = (v12 + 36);
    v19 = v51;
    if (v51 - (v12 + 36) < 5)
    {
      if ((a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1))
      {
        (a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleDongleEventPacket();
        }
      }

      return IO80211Hexdump();
    }

    v22 = v53;
    if (*(v12 + 34) <= (*(v12 + 38) - 1))
    {
      v24 = -469793522;
    }

    else
    {
      v23 = 0;
      v24 = -469793522;
      do
      {
        v18 = (v18 + v23);
        if (v19 - v18 <= 4)
        {
          v52 = v24;
          v53 = v22;
          if ((a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1))
          {
            (a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::handleDongleEventPacket();
            }
          }

          return IO80211Hexdump();
        }

        v25 = *v18;
        if (v25 == 1)
        {
          v24 = -469793504;
        }

        else if (v25 == 2)
        {
          v26 = v18 + 2;
          if (v19 - (v18 + 2) < 5)
          {
            v52 = v24;
            v53 = v22;
            if ((a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1))
            {
              (a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::handleDongleEventPacket();
              }
            }

            return IO80211Hexdump();
          }

          if (v18[1] > (v18[3] - 1))
          {
            v27 = 0;
            do
            {
              v28 = (v26 + v27);
              v29 = v19 - v28;
              if (v19 - v28 <= 4)
              {
                v52 = v24;
                v53 = v22;
                if ((a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1))
                {
                  (a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::handleDongleEventPacket();
                  }
                }

                return IO80211Hexdump();
              }

              v30 = *v28;
              if (v30 <= 3)
              {
                switch(v30)
                {
                  case 1u:
                    if (v28[1] >= 0x70u)
                    {
                      v52 = v24;
                      v53 = v22;
                      if (v19 - v28 - 4 > 111)
                      {
                        v43 = v28[4];
                        v52 = -469793510;
                        v53 = v43;
                        if (v43 <= 2)
                        {
                          if (v43 == 1)
                          {
                            v44 = -469793509;
                          }

                          else
                          {
                            if (v43 != 2)
                            {
                              goto LABEL_134;
                            }

                            v44 = -469793508;
                          }
                        }

                        else
                        {
                          switch(v43)
                          {
                            case 3:
                              v44 = -469793507;
                              break;
                            case 4:
                              v44 = -469793506;
                              break;
                            case 5:
                              v44 = -469793505;
                              break;
                            default:
                              goto LABEL_134;
                          }
                        }

                        v52 = v44;
                        goto LABEL_134;
                      }

                      if ((a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1))
                      {
                        (a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1);
                        if (CCLogStream::shouldLog())
                        {
                          AppleBCMWLANCore::handleDongleEventPacket();
                        }
                      }

                      return IO80211Hexdump();
                    }

                    break;
                  case 2u:
                    v42 = -469793513;
                    goto LABEL_133;
                  case 3u:
                    v42 = -469793512;
                    goto LABEL_133;
                }
              }

              else if (v30 - 5 >= 2)
              {
                if (v30 == 4)
                {
                  v42 = -469793511;
                  goto LABEL_133;
                }
              }

              else
              {
                v31 = v28[1];
                if (v31 >= 2)
                {
                  v32 = v28 + 2;
                  if (v19 - (v28 + 2) <= 1)
                  {
                    v52 = v24;
                    v53 = v22;
                    if ((a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1))
                    {
                      (a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1);
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANCore::handleDongleEventPacket();
                      }
                    }

                    return IO80211Hexdump();
                  }

                  v22 = *v32;
                  if (v22 <= 7)
                  {
                    if (*v32 > 2u)
                    {
                      if (*v32 > 5u)
                      {
                        if (v22 == 6)
                        {
                          v42 = -469793496;
                          goto LABEL_133;
                        }

                        if (v22 == 7)
                        {
                          v42 = -469793495;
                          goto LABEL_133;
                        }
                      }

                      else
                      {
                        if (v22 == 3)
                        {
                          v42 = -469793514;
                          goto LABEL_133;
                        }

                        if (v22 == 4)
                        {
                          v42 = -469793497;
                          goto LABEL_133;
                        }
                      }

LABEL_132:
                      v42 = -469793517;
                      goto LABEL_133;
                    }

                    if (*v32)
                    {
                      if (v22 == 1)
                      {
                        v39 = v19 - (v28 + 2);
                        v52 = -469793516;
                        v53 = 1;
                        v40 = (*(*v5->__vftable[337].init + 368))(v5->__vftable[337].init);
                        if ((v40 - 4378) > 0x15 || ((1 << (v40 - 26)) & 0x200601) == 0)
                        {
                          if ((v7 - 4355) > 0x16 || ((1 << (v7 - 3)) & 0x400005) == 0)
                          {
                            goto LABEL_134;
                          }

                          v48 = (a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1);
                          if (v39 <= 7)
                          {
                            if (v48)
                            {
                              (a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1);
                              if (CCLogStream::shouldLog())
                              {
                                AppleBCMWLANCore::handleDongleEventPacket();
                              }
                            }

                            goto LABEL_134;
                          }

                          if (v48)
                          {
                            (a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANCore::handleDongleEventPacket();
                            }
                          }
                        }

                        else
                        {
                          if (v39 <= 5)
                          {
                            if ((a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1))
                            {
                              (a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1);
                              if (CCLogStream::shouldLog())
                              {
                                AppleBCMWLANCore::handleDongleEventPacket();
                              }
                            }

                            goto LABEL_134;
                          }

                          if (v28[3] != 8)
                          {
                            if ((a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1))
                            {
                              (a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1);
                              if (CCLogStream::shouldLog())
                              {
                                AppleBCMWLANCore::handleDongleEventPacket();
                              }
                            }

                            goto LABEL_134;
                          }

                          v47 = (a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1);
                          if (v29 - 8 <= 7)
                          {
                            if (v47)
                            {
                              (a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1);
                              if (CCLogStream::shouldLog())
                              {
                                AppleBCMWLANCore::handleDongleEventPacket();
                              }
                            }

                            goto LABEL_134;
                          }

                          if (v47)
                          {
                            (a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANCore::handleDongleEventPacket();
                            }
                          }
                        }

                        AppleBCMWLANCore::validateRxDMAStall(a1);
LABEL_134:
                        keys = OSString::withCString("DongleEventData.bin");
                        values = OSData::withBytes(*(a2 + 1), *a2);
                        init = v5->__vftable[346].init;
                        v46 = OSDictionary::withObjects(&values, &keys, 1u, 0);
                        CCFaultReporter::reportFault(init, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x39F0u, "handleDongleEventPacket", v46, v52, "reason=(0x%x)", v53);
                        return AppleBCMWLANUtil::releaseOSObjectArray(&keys, &values, 1);
                      }

                      v42 = -469793515;
                    }

                    else
                    {
                      v42 = -469793510;
                    }

LABEL_133:
                    v52 = v42;
                    v53 = v22;
                    goto LABEL_134;
                  }

                  if (v22 == 8 || v22 == 14)
                  {
                    if (v31 >= 0x20)
                    {
                      goto LABEL_141;
                    }
                  }

                  else
                  {
                    if (v22 != 16)
                    {
                      goto LABEL_132;
                    }

                    if (v31 > 0x1F)
                    {
LABEL_141:
                      v52 = v24;
                      v53 = v22;
                      result = AppleBCMWLANCore::handleRxStallReasons(a1, v26 + v27, &v53, &v52, v19);
                      if (result)
                      {
                        return result;
                      }

                      goto LABEL_134;
                    }

                    v49 = v26;
                    v50 = v24;
                    v34 = *v32;
                    if ((a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1) && ((a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1), CCLogStream::shouldLog()))
                    {
                      AppleBCMWLANCore::handleDongleEventPacket();
                      v22 = v34;
                      v19 = v51;
                    }

                    else
                    {
                      v19 = v51;
                      v22 = v34;
                    }

                    v24 = v50;
                    v26 = v49;
                  }
                }
              }

              v35 = v28[1];
              v27 += v35;
              if (v28[1])
              {
                v36 = v27 + v35 > v18[1];
              }

              else
              {
                v36 = 1;
              }
            }

            while (!v36);
          }
        }

        v37 = v18[1];
        v23 += v37;
        if (v18[1])
        {
          v38 = v23 + v37 > *v14;
        }

        else
        {
          v38 = 1;
        }
      }

      while (!v38);
    }

    v52 = v24;
    v53 = v22;
    goto LABEL_134;
  }

  if (v17 != 1024)
  {
    if ((a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1))
    {
      (a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleDongleEventPacket();
      }
    }

    goto LABEL_31;
  }

  if (v13 > 7)
  {
    v20 = *(v12 + 40);
    if (v20 <= 1)
    {
      v21 = *(v12 + 38);
      *(&v5->__vftable[2228].init + v20) += v21;
      if (!v20)
      {
        AppleBCMWLANCore::collectSPMIHEBResetStats(a1, v21);
      }
    }

    result = (a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1);
    if (result)
    {
      (a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleDongleEventPacket();
      }
    }
  }

  else
  {
    result = (a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1);
    if (result)
    {
      (a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleDongleEventPacket();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::validateRxDMAStall(void *this)
{
  v2 = *(this[9] + 5392);
  if (v2)
  {
    v3 = (*(*v2 + 752))(v2);
    v4 = OSMetaClassBase::safeMetaCast(v3, gAppleBCMWLANBusSkywalkMetaClass);
    if (v4)
    {
      release = v4->__vftable[2].release;

      return release();
    }

    else
    {
      result = (*(*this + 1952))(this);
      if (result)
      {
        (*(*this + 1952))(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANCore::validateRxDMAStall();
        }
      }
    }
  }

  else
  {
    result = (*(*this + 1952))(this);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::validateRxDMAStall();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleRxStallReasons(IO80211Controller *a1, uint64_t a2, int *a3, int *a4, uint64_t a5)
{
  v10 = a1 + 72;
  v11 = (*(**(*(a1 + 9) + 5392) + 368))(*(*(a1 + 9) + 5392));
  v12 = (*(**(*v10 + 5392) + 368))();
  v14 = v12 == 4388 || v12 == 4399;
  v56 = 0u;
  v57 = 0u;
  *__dst = 0u;
  v55 = 0u;
  v15 = *a3;
  if (v14 && v15 == 16)
  {
    if (a5 - a2 - 4 <= 31)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        v20 = 1;
        if (!CCLogStream::shouldLog())
        {
          return v20;
        }

LABEL_51:
        AppleBCMWLANCore::handleRxStallReasons();
        return v20;
      }

      return 1;
    }

    *a3 = *(a2 + 24);
    *a4 = -469793456;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleRxStallReasons();
      }
    }
  }

  else
  {
    v17 = a5 - a2 - 4;
    if (v11 < 0x112F || v15 != 14)
    {
      if (v17 > 31)
      {
        *a3 = *(a2 + 24);
        *a4 = -469793484;
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::handleRxStallReasons();
          }
        }

        goto LABEL_27;
      }

      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        v20 = 1;
        if (!CCLogStream::shouldLog())
        {
          return v20;
        }

        goto LABEL_51;
      }

      return 1;
    }

    if (v17 <= 31)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        v20 = 1;
        if (!CCLogStream::shouldLog())
        {
          return v20;
        }

        goto LABEL_51;
      }

      return 1;
    }

    *a3 = *(a2 + 24);
    *a4 = -469793465;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleRxStallReasons();
      }
    }
  }

LABEL_27:
  v19 = *a3;
  if (*a3 <= 3)
  {
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v20 = 0;
        if (*a4 == -469793465)
        {
          v28 = -469793463;
        }

        else
        {
          v28 = -469793481;
        }

        v29 = -469793454;
        if (*a4 != -469793456)
        {
          v29 = v28;
        }

        *a4 = v29;
        ++*(*v10 + 30032);
      }

      else
      {
        v20 = 0;
        if (v19 == 3)
        {
          v20 = 0;
          if (*a4 == -469793465)
          {
            v24 = -469793462;
          }

          else
          {
            v24 = -469793480;
          }

          v25 = -469793453;
          if (*a4 != -469793456)
          {
            v25 = v24;
          }

          *a4 = v25;
          ++*(*v10 + 30024);
        }
      }

      goto LABEL_88;
    }

    if (v19)
    {
      v20 = 0;
      if (v19 != 1)
      {
        goto LABEL_88;
      }

      v20 = 0;
      v23 = -469793482;
    }

    else
    {
      v20 = 0;
      v23 = -469793483;
    }

    goto LABEL_87;
  }

  if (v19 <= 6)
  {
    if (v19 != 4)
    {
      v20 = 0;
      if (v19 == 6)
      {
        v20 = 0;
        if (*a4 == -469793465)
        {
          v26 = -469793460;
        }

        else
        {
          v26 = -469793478;
        }

        v27 = -469793451;
        if (*a4 != -469793456)
        {
          v27 = v26;
        }

        *a4 = v27;
        ++*(*v10 + 30016);
      }

      goto LABEL_88;
    }

    v20 = 0;
    if (*a4 == -469793465)
    {
      v32 = -469793461;
    }

    else
    {
      v32 = -469793479;
    }

    v23 = -469793452;
    if (*a4 != -469793456)
    {
      v23 = v32;
    }

LABEL_87:
    *a4 = v23;
    goto LABEL_88;
  }

  if (v19 == 7)
  {
    if (*a4 == -469793465)
    {
      v30 = -469793459;
    }

    else
    {
      v30 = -469793477;
    }

    v31 = -469793450;
    if (*a4 != -469793456)
    {
      v31 = v30;
    }

    *a4 = v31;
    ++*(*v10 + 30040);
LABEL_81:
    v20 = 1;
    goto LABEL_88;
  }

  if (v19 != 8)
  {
    v20 = 0;
    if (v19 != 9)
    {
      goto LABEL_88;
    }

    if (*a4 == -469793465)
    {
      v21 = -469793458;
    }

    else
    {
      v21 = -469793475;
    }

    if (*a4 == -469793456)
    {
      v22 = -469793449;
    }

    else
    {
      v22 = v21;
    }

    *a4 = v22;
    ++*(*v10 + 30056);
    goto LABEL_81;
  }

  if (*a4 == -469793465)
  {
    v38 = -469793464;
  }

  else
  {
    v38 = -469793476;
  }

  if (*a4 == -469793456)
  {
    v39 = -469793455;
  }

  else
  {
    v39 = v38;
  }

  *a4 = v39;
  ++*(*v10 + 30048);
  if (*(*v10 + 11288))
  {
    if (*a4 == -469793455 && v14)
    {
      if (*(a2 + 6) != 68)
      {
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::handleRxStallReasons();
          }
        }

        return 1;
      }

      *v51 = 0xE3FF855100340001;
      *&v51[8] = *a3;
      *&v51[12] = *(a2 + 36);
      v52 = *(a2 + 52);
      v53 = *(a2 + 68);
      v41 = *(a2 + 40);
      v42 = v41;
      if (v41)
      {
        strlcat(__dst, "STALL_IN_PROGRESS ", 0x40uLL);
        if ((v42 & 2) == 0)
        {
LABEL_109:
          if ((v42 & 4) == 0)
          {
            goto LABEL_110;
          }

          goto LABEL_136;
        }
      }

      else if ((v41 & 2) == 0)
      {
        goto LABEL_109;
      }

      strlcat(__dst, "STALL_TIM_SET ", 0x40uLL);
      if ((v42 & 4) == 0)
      {
LABEL_110:
        if ((v42 & 8) == 0)
        {
LABEL_112:
          (*(**(*(a1 + 9) + 11288) + 864))();
          IO80211Controller::postMessage(a1, *(*(a1 + 9) + 11288), 0xF5u, v51, 0x34uLL, 1);
          goto LABEL_113;
        }

LABEL_111:
        strlcat(__dst, "STALL_MU ", 0x40uLL);
        goto LABEL_112;
      }

LABEL_136:
      strlcat(__dst, "STALL_NON_MU ", 0x40uLL);
      if ((v42 & 8) == 0)
      {
        goto LABEL_112;
      }

      goto LABEL_111;
    }
  }

LABEL_113:
  *v51 = 0;
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  v43 = *v51 / 0xF4240uLL;
  v44 = *v10;
  v45 = *(*v10 + 14288);
  v46 = *v51 / 0xF4240uLL >= v45;
  v47 = *v51 / 0xF4240uLL - v45;
  if (v46)
  {
    if (v47 >= 0x5265C01)
    {
      *(v44 + 14288) = v43;
      *(*v10 + 14296) = 0;
      v44 = *v10;
    }

    v48 = *(v44 + 14296);
    v50 = v43;
    if (IO80211BssManager::isAssociated(*(v44 + 5432)))
    {
      memset(v51, 0, sizeof(v51));
      AppleBCMWLANLQM::getExtCCAStats(*(*v10 + 5608), v51);
      IO80211BssManager::getCurrentChannel();
      if (v51[6] >= 41)
      {
        v20 = 1;
        if (*&v51[4] == 43690 || v48)
        {
LABEL_88:
          v33 = *a3;
          v34 = (*(*a1 + 1952))(a1);
          if (v33 == 8)
          {
            if (v34)
            {
              (*(*a1 + 1952))(a1);
              if (CCLogStream::shouldLog())
              {
                v35 = (*(*a1 + 1952))(a1);
                v36 = convertAppleBCMWLANReturnToString(*a4);
                CCLogStream::logAlert(v35, "[dk] %s@%d:Rx Stall %s [if_idx=%u ac=%u link=%u] [Bitmap Reason(s): %s] - Pkts=%u Dropped=%u AlertTh=%u\n", "handleRxStallReasons", 15015, v36);
              }
            }
          }

          else if (v34)
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              v37 = (*(*a1 + 1952))(a1);
              convertAppleBCMWLANReturnToString(*a4);
              CCLogStream::logAlert(v37, "[dk] %s@%d:Rx Stall Reason Code %s - NumPkts Considered=%u, NumPkts Dropped=%u, Alert Threshold=%u\n");
            }
          }

          return v20;
        }

LABEL_132:
        v20 = 0;
        *(*v10 + 14288) = v50;
        ++*(*v10 + 14296);
        goto LABEL_88;
      }

      if (!v48)
      {
        goto LABEL_132;
      }
    }

    else if (!v48)
    {
      goto LABEL_132;
    }

    v20 = 1;
    goto LABEL_88;
  }

  if (!(*(*a1 + 1952))(a1))
  {
    return 1;
  }

  (*(*a1 + 1952))(a1);
  v20 = 1;
  if (CCLogStream::shouldLog())
  {
    AppleBCMWLANCore::handleRxStallReasons();
  }

  return v20;
}

BOOL AppleBCMWLANCore::isEventForInterface(uint64_t a1, IO80211SkywalkInterface *this, uint64_t a3)
{
  v6 = *(a1 + 72);
  if (*(v6 + 780) < 5u)
  {
    v10 = *(v6 + 11296);
    if (v10)
    {
      v11 = v10 == this;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      if (AppleBCMWLANProximityInterface::getBssCfgId(v10) == *(a3 + 47))
      {
        return 1;
      }

      v6 = *(a1 + 72);
    }

    v12 = *(v6 + 29944);
    if (v12)
    {
      v13 = v12 == this;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      if (AppleBCMWLANNANInterface::getBssCfgId(v12) == *(a3 + 47))
      {
        return 1;
      }

      v6 = *(a1 + 72);
    }

    v14 = *(v6 + 11304);
    if (v14)
    {
      v15 = v14 == this;
    }

    else
    {
      v15 = 0;
    }

    return v15 && AppleBCMWLANIO80211APSTAInterface::getBssCfgId(v14) == *(a3 + 47);
  }

  v7 = *(a3 + 46);
  if (IO80211SkywalkInterface::getInterfaceId(this) == v7)
  {
    return 1;
  }

  v8 = *(*(a1 + 72) + 11304);
  v9 = v8 && v8 == this;
  return v9 && *(a3 + 46) == 1 && *(a3 + 4) == 54;
}

uint64_t AppleBCMWLANCore::checkActionFrameCompleteOverdue(uint64_t this)
{
  v1 = this + 72;
  if (*(*(this + 72) + 17528) == 1)
  {
    if ((v2 = this, mach_continuous_time(), this = absolutetime_to_nanoseconds(), v3 = *(*v1 + 17536), v3 <= 0xB2F4FC07949) && 0xB2F4FC07949 - v3 > 0x12C || v3 > 0xB2F4FC07949 && v3 - 0xB2F4FC07949 <= 0xFFFFFFFFFFFFFED2)
    {
      *(*v1 + 17528) = 0;
      if ((*(*v2 + 1952))(v2))
      {
        (*(*v2 + 1952))(v2);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::checkActionFrameCompleteOverdue();
        }
      }

      return CCFaultReporter::reportFault(*(*v1 + 5536), 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x3B12u, "checkActionFrameCompleteOverdue", 0, -469793493, 0, 0xB2F4FC07949);
    }
  }

  return this;
}

uint64_t AppleBCMWLANCore::getTransDisabledFlags(unint64_t this, unsigned __int8 *a2, unint64_t a3)
{
  if (a2 && a3)
  {
    if (a3 >= 7 && (*(a2 + 1) == 28496 ? (v4 = a2[4] == 154) : (v4 = 0), v4 && a2[5] == 32))
    {
      v5 = a2[6];
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::getTransDisabledFlags();
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    AppleBCMWLANCore::getTransDisabledFlags();
    return v7;
  }

  return v5;
}

uint64_t AppleBCMWLANCore::updateTransitionDisabledInfo(unint64_t this, uint64_t a2)
{
  if (!a2 || (v4 = *(a2 + 20), v4 <= 1))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::updateTransitionDisabledInfo();
      }
    }

    return 0;
  }

  v5 = v4 + 47 + a2;
  if (__CFADD__(v4 + 47, a2) || (v6 = a2 + 48, a2 + 49 < a2) || a2 == -49 || (a2 + 49 <= v5 ? (v7 = v6 < a2) : (v7 = 1), !v7 ? (v8 = v5 < v6) : (v8 = 1), v8))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::updateTransitionDisabledInfo();
      }
    }

    return 0;
  }

  v9 = v4 - 1 + v6;
  v10 = __CFADD__(v4 - 1, v6);
  v11 = *(a2 + 49) + 2;
  if (v11 > v4)
  {
    return 0;
  }

  v12 = 0;
  v13 = (a2 + 48);
  do
  {
    if (*v13 == 221)
    {
      TransDisabledFlags = AppleBCMWLANCore::getTransDisabledFlags(this, v13, v13[1] + 2);
      if (TransDisabledFlags)
      {
        v12 = TransDisabledFlags;
      }

      else
      {
        v12 = v12;
      }

      LODWORD(v4) = *(a2 + 20);
    }

    if (v4 - v11 < 2)
    {
      break;
    }

    if (v10)
    {
      break;
    }

    v13 = (v6 + v11);
    v15 = v13 + 1;
    if (v13 == -1)
    {
      break;
    }

    if (v15 < v6)
    {
      break;
    }

    if (v15 > v9)
    {
      break;
    }

    if (v6 > v13)
    {
      break;
    }

    if (v9 < v13)
    {
      break;
    }

    v11 += v13[1] + 2;
  }

  while (v11 <= v4);
  return v12;
}

uint64_t AppleBCMWLANCore::handleScanEvent(AppleBCMWLANCore *a1, uint64_t a2)
{
  v91 = 0;
  v92 = 0;
  v4 = *(a1 + 9);
  v5 = *(v4 + 208);
  v89 = 0xAAAAAAAAAAAAAAAALL;
  v90 = -1431655766;
  CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(*(v4 + 5432));
  result = AppleBCMWLANScanAdapter::handleScanEvent(*(*(a1 + 9) + 5424), a2);
  v8 = *(a2 + 12);
  if (v8 != 3)
  {
    if (v8 == 2)
    {
      v9 = *(a1 + 9);
      if (*(v9 + 17796) == 2)
      {
        AppleBCMWLANRoamAdapter::getRoamCacheAsync(*(v9 + 5568));
        v10 = *(a1 + 9) + 600 * *(*(a1 + 9) + 14164);
        ++*(v10 + 12770);
        *(*(a1 + 9) + 14146) = *(*(a1 + 9) + 600 * *(*(a1 + 9) + 14164) + 12770);
        v9 = *(a1 + 9);
      }

      result = AppleBCMWLANTxPowerManager::dynTxSDBUnPause(*(v9 + 5528), 1);
      *(*(a1 + 9) + 17796) = 0;
    }

    else if (v8 == 1)
    {
      if (*(a2 + 20) > 0xBu)
      {
        *(*(a1 + 9) + 17796) = *(a2 + 52);
        AppleBCMWLANTxPowerManager::dynTxSDBPause(*(*(a1 + 9) + 5528), 1);
        if (2 * (*(a2 + 58) + *(a2 + 56)) + 12 <= *(a2 + 20))
        {
          result = IO80211BssManager::isAssociated(*(*(a1 + 9) + 5432));
          v62 = 0;
          if (result && CurrentBSS)
          {
            result = (*(*CurrentBSS + 256))(CurrentBSS);
            v62 = result;
          }

          if (*(a2 + 48) >= 2u)
          {
            v72 = *(a2 + 56);
            if (v72)
            {
              v73 = 0;
              v74 = 0;
              v87 = v5;
              do
              {
                v75 = (a2 + 60 + v74);
                if (*v75 == v5)
                {
                  v76 = v75[1];
                  if (v76 >= 2)
                  {
                    v77 = 0;
                    v78 = v75 + 2;
                    v79 = v76 >> 1;
                    do
                    {
                      v80 = v77;
                      AppleBCMWLANChanSpec::getAppleChannelSpec(*(*(a1 + 9) + 17744), v78[v77]);
                      result = ChanSpecConvToApple80211Channel();
                      if (v62 != HIDWORD(v89))
                      {
                        result = AppleBCMWLANCore::isPassiveChanSpec(a1, v78[v80]);
                      }

                      v77 = v80 + 1;
                    }

                    while (v79 > (v80 + 1));
                    v72 = *(a2 + 56);
                    v5 = v87;
                  }
                }

                v74 += ((v75[1] + 3) & 0x1FFFC) + 4;
                ++v73;
              }

              while (v72 > v73);
            }
          }

          else
          {
            v63 = *(a2 + 56);
            if (v5)
            {
              v64 = *(a2 + 56);
              v63 += *(a2 + 58);
            }

            else
            {
              v64 = 0;
            }

            if (v64 < v63)
            {
              v81 = (a2 + 2 * v64 + 60);
              v82 = v64 + 1;
              do
              {
                AppleBCMWLANChanSpec::getAppleChannelSpec(*(*(a1 + 9) + 17744), *v81);
                result = ChanSpecConvToApple80211Channel();
                if (v62 != HIDWORD(v89))
                {
                  result = AppleBCMWLANCore::isPassiveChanSpec(a1, *v81);
                }

                ++v81;
                v20 = v63 == v82++;
              }

              while (!v20);
            }
          }
        }

        else
        {
          result = (*(*a1 + 1952))(a1);
          if (result)
          {
            (*(*a1 + 1952))(a1);
            result = CCLogStream::shouldLog();
            if (result)
            {
              v21 = (*(*a1 + 1952))(a1);
              return CCLogStream::logAlert(v21, "[dk] %s@%d:ERROR: Invalid event data length %d, num channels slice0 %d, slice1 %d \n", "handleScanEvent", 22246, *(a2 + 20), *(a2 + 56), *(a2 + 58));
            }
          }
        }
      }

      else
      {
        result = (*(*a1 + 1952))(a1);
        if (result)
        {
          (*(*a1 + 1952))(a1);
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANCore::handleScanEvent();
          }
        }
      }
    }

    return result;
  }

  v11 = *(a2 + 20) + 48;
  v91 = a2;
  v92 = v11;
  IO80211BufferCursor::_crop(v88, &v91, 0x30uLL, -1);
  v12 = IO80211BufferCursor::asType<wl_roam_11kvr_nbr_rpt_req_v1>(v88, 0, 0xC);
  v14 = v12 + (v13 >> 32);
  if (__CFADD__(v12, v13 >> 32))
  {
    v15 = (v13 >> 63) + 1;
  }

  else
  {
    v15 = v13 >> 63;
  }

  v16 = v15 << 63 >> 63;
  if (v16 != v15 || v16 < 0)
  {
    AppleBCMWLANProximityInterface::handleEvent(v12, v13);
  }

  if (v14)
  {
    v17 = v13;
    isAssociated = IO80211BssManager::isAssociated(*(*(a1 + 9) + 5432));
    if (isAssociated)
    {
      v20 = CurrentBSS == 0;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      v22 = 0;
    }

    else
    {
      isAssociated = (*(*CurrentBSS + 256))(CurrentBSS);
      v22 = isAssociated;
    }

    if ((v17 & 0x8000000000000000) != 0 || HIDWORD(v17) + 12 > v17)
    {
      AppleBCMWLANProximityInterface::handleEvent(isAssociated, v19);
    }

    if (*v14 <= 1u)
    {
      v24 = (v14 + 8);
      v23 = *(v14 + 8);
      v26 = (v14 + 10);
      v25 = *(v14 + 10);
      if ((v25 + v23) >= 0x191)
      {
        result = (*(*a1 + 1952))(a1);
        if (result)
        {
          (*(*a1 + 1952))(a1);
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANCore::handleScanEvent();
          }
        }

        return result;
      }

      v65 = 0;
      v66 = 0;
      if (v5)
      {
        v67 = *(v14 + 8);
      }

      else
      {
        v67 = 0;
      }

      if (!v5)
      {
        LOWORD(v25) = 0;
      }

      v68 = v23 + v25;
      if (v67 < v68)
      {
        LOBYTE(v66) = 0;
        LOBYTE(v65) = 0;
        v69 = (v14 + 2 * v67 + 12);
        v70 = v67 + 1;
        v71 = v68;
        do
        {
          AppleBCMWLANChanSpec::getAppleChannelSpec(*(*(a1 + 9) + 17744), *v69);
          ChanSpecConvToApple80211Channel();
          if (v22 != HIDWORD(v89))
          {
            if (AppleBCMWLANCore::isPassiveChanSpec(a1, *v69))
            {
              LOBYTE(v66) = v66 + 1;
            }

            else
            {
              LOBYTE(v65) = v65 + 1;
            }
          }

          ++v69;
          v20 = v71 == v70++;
        }

        while (!v20);
        v66 = v66;
        v65 = v65;
      }

      if (IO80211Controller::isLQMOSLOGEnabled(a1))
      {
        io80211_os_log("LQM-WIFI: SCAN_ADD Event:V%d currentSlice:%d num_chan_slice0:%d num_chan_slice1:%d passiveCnt:%d activeCnt:%d\n", v83, v5, *v24, *v26, v66, v65);
        if (!IO80211Controller::isLQMIOLOGEnabled(a1))
        {
LABEL_126:
          result = IO80211Controller::isLQMCCLOGEnabled(a1);
          if (result)
          {
            return IO80211Controller::logLQMToCC(a1, "LQM-WIFI: SCAN_ADD Event:V%d currentSlice:%d num_chan_slice0:%d num_chan_slice1:%d passiveCnt:%d activeCnt:%d\n");
          }

          return result;
        }
      }

      else if ((IO80211Controller::isLQMIOLOGEnabled(a1) & 1) == 0)
      {
        goto LABEL_126;
      }

      IOLog("LQM-WIFI: SCAN_ADD Event:V%d currentSlice:%d num_chan_slice0:%d num_chan_slice1:%d passiveCnt:%d activeCnt:%d\n", v83, v5, *v24, *v26, v66, v65);
      goto LABEL_126;
    }

    if (*v14 == 2)
    {
      IO80211BufferCursor::_crop(v88, &v91, 0x30uLL, -1);
      result = IO80211BufferCursor::asType<wl_roam_11kvr_nbr_rpt_resp_v1>(v88, 0, 0x10);
      v28 = (result + (v27 >> 32));
      if (__CFADD__(result, v27 >> 32))
      {
        v29 = (v27 >> 63) + 1;
      }

      else
      {
        v29 = v27 >> 63;
      }

      v30 = v29 << 63 >> 63;
      if (v30 != v29 || v30 < 0)
      {
        AppleBCMWLANProximityInterface::handleEvent(result, v27);
      }

      if (v28)
      {
        if (v27 < 0 || HIDWORD(v27) + 16 > v27)
        {
          AppleBCMWLANProximityInterface::handleEvent(result, v27);
        }

        v84 = (result + (v27 >> 32));
        if (v28[2])
        {
          v31 = 0;
          LOBYTE(v32) = 0;
          v33 = 0;
          v34 = 0;
          v86 = 0;
          v85 = 0;
          v35 = 0;
          v36 = 60;
          while (1)
          {
            IO80211BufferCursor::_crop(v88, &v91, v36, -1);
            result = IO80211BufferCursor::asType<ether_addr>(v88, 0, 6);
            v38 = (result + (v37 >> 32));
            if (__CFADD__(result, v37 >> 32))
            {
              v39 = (v37 >> 63) + 1;
            }

            else
            {
              v39 = v37 >> 63;
            }

            v40 = v39 << 63 >> 63;
            if (v40 != v39 || v40 < 0)
            {
              AppleBCMWLANProximityInterface::handleEvent(result, v37);
            }

            if (!v38)
            {
LABEL_86:
              v58 = v33;
              v32 = v32;
              v59 = v85;
              v60 = v86;
              v61 = WORD2(v85);
              goto LABEL_140;
            }

            if (v37 < 0 || HIDWORD(v37) + 6 > v37)
            {
              AppleBCMWLANProximityInterface::handleEvent(result, v37);
            }

            v41 = v36 + 4;
            v42 = v38[1];
            if (v38[1])
            {
              if (v34 + (v42 >> 1) >= 0x191)
              {
                result = (*(*a1 + 1952))(a1);
                if (result)
                {
                  (*(*a1 + 1952))(a1);
                  result = CCLogStream::shouldLog();
                  if (result)
                  {
                    return AppleBCMWLANCore::handleScanEvent();
                  }
                }

                return result;
              }

              v31 = v42 >> 1;
              v43 = *v38;
              v45 = v85;
              v44 = HIDWORD(v85);
              if (v43 == 2)
              {
                v46 = v42 >> 1;
              }

              else
              {
                v46 = 0;
              }

              v47 = v46 + HIDWORD(v85);
              v48 = v86;
              v49 = v86 + (v42 >> 1);
              if (v43)
              {
                v49 = v86;
              }

              else
              {
                v47 = HIDWORD(v85);
              }

              if (v43 == 1)
              {
                v45 = v85 + (v42 >> 1);
              }

              else
              {
                v48 = v49;
              }

              LODWORD(v85) = v45;
              if (v43 != 1)
              {
                v44 = v47;
              }

              HIDWORD(v85) = v44;
              v86 = v48;
              if (v42 != 1)
              {
                if (v31 <= 1)
                {
                  v50 = 1;
                }

                else
                {
                  v50 = v42 >> 1;
                }

                v51 = (v50 + v34);
                v52 = v36 + 4;
                do
                {
                  IO80211BufferCursor::_crop(v88, &v91, v52, -1);
                  result = IO80211BufferCursor::asType<unsigned short>(v88, 0, 2);
                  v54 = (result + (v53 >> 32));
                  if (__CFADD__(result, v53 >> 32))
                  {
                    v55 = (v53 >> 63) + 1;
                  }

                  else
                  {
                    v55 = v53 >> 63;
                  }

                  v56 = v55 << 63 >> 63;
                  if (v56 != v55 || v56 < 0)
                  {
                    AppleBCMWLANProximityInterface::handleEvent(result, v53);
                  }

                  if (!v54)
                  {
                    break;
                  }

                  if (v53 < 0 || HIDWORD(v53) + 2 > v53)
                  {
                    AppleBCMWLANCore::handleScanEvent(result, v53);
                  }

                  isPassiveChanSpec = AppleBCMWLANCore::isPassiveChanSpec(a1, *v54);
                  v52 += 2;
                  v33 += isPassiveChanSpec;
                  LOBYTE(v32) = v32 + (isPassiveChanSpec ^ 1);
                  result = AppleBCMWLANChanSpec::getAppleChannelSpec(*(*(a1 + 9) + 17744), *v54);
                  ++v34;
                }

                while (v51 != v34);
                v28 = v84;
                v31 = v42 >> 1;
              }
            }

            v36 = ((v42 + 3) & 0x1FFFC) + v41;
            if (v28[2] <= ++v35)
            {
              goto LABEL_86;
            }
          }
        }

        v61 = 0;
        v59 = 0;
        v60 = 0;
        v58 = 0;
        v32 = 0;
        v31 = 0;
LABEL_140:
        if (a1)
        {
          if (IO80211Controller::isLQMOSLOGEnabled(a1))
          {
            io80211_os_log("LQM-WIFI: SCAN_ADD Event:V%d passiveChannelCnt=%d ActiveChannelCnt=%d total channel cnt=%d Num2G=%d Num5G=%d Num6G=%d\n", *v84, v58, v32, v31, v59, v60, v61);
          }

          if (IO80211Controller::isLQMIOLOGEnabled(a1))
          {
            IOLog("LQM-WIFI: SCAN_ADD Event:V%d passiveChannelCnt=%d ActiveChannelCnt=%d total channel cnt=%d Num2G=%d Num5G=%d Num6G=%d\n", *v84, v58, v32, v31, v59, v60, v61);
          }

          result = IO80211Controller::isLQMCCLOGEnabled(a1);
          if (result)
          {
            return IO80211Controller::logLQMToCC(a1, "LQM-WIFI: SCAN_ADD Event:V%d passiveChannelCnt=%d ActiveChannelCnt=%d total channel cnt=%d Num2G=%d Num5G=%d Num6G=%d\n", *v84);
          }
        }
      }

      else
      {
        result = (*(*a1 + 1952))(a1);
        if (result)
        {
          (*(*a1 + 1952))(a1);
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANCore::handleScanEvent();
          }
        }
      }
    }

    else
    {
      result = (*(*a1 + 1952))(a1);
      if (result)
      {
        (*(*a1 + 1952))(a1);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANCore::handleScanEvent();
        }
      }
    }
  }

  else
  {
    result = (*(*a1 + 1952))(a1);
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleScanEvent();
      }
    }
  }

  return result;
}

unsigned __int16 *AppleBCMWLANCore::handleCCAChanQualEvent(IO80211Controller *a1, uint64_t a2)
{
  v49 = 0xAAAAAAAAAAAAAAAALL;
  v50 = -1431655766;
  v47 = 0xAAAAAAAAAAAAAAAALL;
  v48 = -1431655766;
  v4 = IOMallocZeroData();
  result = IOMallocZeroData();
  if (result)
  {
    v6 = result;
    v46 = 0xAAAAAAAAAAAAAAAALL;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v44 = v7;
    v45 = v7;
    v43 = 3;
    if (v4)
    {
      v8 = *(a2 + 20);
      if (v8 <= 7)
      {
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::handleCCAChanQualEvent();
          }
        }

LABEL_7:
        v9 = *(*(a1 + 9) + 5536);
        if (v9)
        {
          CCFaultReporter::reportFault(v9, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x5F62u, "handleCCAChanQualEvent", 0, -469793488, 0);
        }

        goto LABEL_24;
      }

      v10 = *(a2 + 50);
      if (v10 <= 0xFF)
      {
        if (v10 < 3)
        {
          v11 = 20;
          goto LABEL_27;
        }
      }

      else
      {
        if (*(a2 + 50) <= 0x3FFu)
        {
          if (v10 != 256)
          {
            if (v10 != 512)
            {
              goto LABEL_47;
            }

            goto LABEL_23;
          }

          v11 = 28;
LABEL_27:
          if (v8 < v11 || v8 >= 0x1D)
          {
            if ((*(*a1 + 1952))(a1))
            {
              (*(*a1 + 1952))(a1);
              if (CCLogStream::shouldLog())
              {
                v18 = (*(*a1 + 1952))(a1);
                CCLogStream::logAlert(v18, "[dk] %s@%d:handleCCAChanQualEvent: Invalid wle message length=%u, expected_min=%u expected_max=%u\n", "handleCCAChanQualEvent", 24242, *(a2 + 20), v11, 28);
              }
            }

            goto LABEL_7;
          }

          memcpy(result, (a2 + 48), v11);
          v44 = 0u;
          v45 = 0u;
          v46 = 0;
          BYTE4(v44) = 1;
          LODWORD(v44) = 16;
          AppleChannelSpec = AppleBCMWLANChanSpec::getAppleChannelSpec(*(*(a1 + 9) + 17744), v6[2]);
          ChanSpecConvToApple80211Channel();
          *(&v44 + 1) = v49;
          LODWORD(v45) = v50;
          IO80211BssManager::getCurrentBand();
          v13 = v6[1];
          if (v13 > 1)
          {
            if (v13 == 2)
            {
              IO80211Controller::setChanNoiseFloorLTE();
              goto LABEL_24;
            }

            if (v13 != 256)
            {
LABEL_24:
              IOFreeData();
              return IOFreeData();
            }

            v20 = (v6 + 6);
            v19 = *(v6 + 3);
            v21 = *(v6 + 4);
            v22 = __CFADD__(v19, v21);
            v23 = v19 + v21;
            v24 = v22;
            v26 = (v6 + 10);
            v25 = *(v6 + 5);
            v27 = v23 + v25;
            v28 = __CFADD__(v23, v25);
            v29 = *(v6 + 2);
            v42[0] = v29;
            v42[1] = v27;
            v30 = *(v6 + 6);
            v42[2] = v30;
            if (!v29)
            {
              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleCCAChanQualEvent();
                }
              }

              goto LABEL_24;
            }

            v41 = (v6 + 8);
            v31 = 100 * v27;
            if ((v24 & 1) != 0 || v28 || (v31 & 0xFFFFFFFF00000000) != 0)
            {
              AppleBCMWLANCore::handleCCAChanQualEvent(a1, (v6 + 6), v41, v6 + 5);
              goto LABEL_24;
            }

            v32 = v31 / v29;
            v33 = AppleBCMWLANChanSpec::convToAscii(AppleChannelSpec, v4, 0x20u);
            io80211_os_log("%s CCA %d%% duration: %d congest: %d ts: %d\n", v33, v32, v29, v27, v30);
            io80211_os_log("congest_ibss %d congest_obss %d interference %d\n", *v20, *v41, *v26);
            if (v29 > 0x2710 || v29 < v27)
            {
              goto LABEL_24;
            }

            if (((100 * *v26) & 0xFFFFFFFF00000000) != 0 || ((100 * *v41) & 0xFFFFFFFF00000000) != 0 || ((100 * *v20) & 0xFFFFFFFF00000000) != 0)
            {
              AppleBCMWLANCore::handleCCAChanQualEvent(a1, (v6 + 6), v41, v6 + 5);
              goto LABEL_24;
            }

            IO80211Controller::setChanExtendedCCA();
            if (IO80211BssManager::getCurrentChannel() || HIDWORD(v47) != ChanSpecGetPrimaryChannel() || v43 != AppleChannelSpec >> 14)
            {
              goto LABEL_24;
            }

            v34 = *(*(a1 + 9) + 5608);
            v35 = v42;
          }

          else
          {
            if (v6[1])
            {
              if (v13 != 1)
              {
                goto LABEL_24;
              }

              if (IO80211Controller::isLQMOSLOGEnabled(a1))
              {
                v14 = AppleBCMWLANChanSpec::convToAscii(AppleChannelSpec, v4, 0x20u);
                io80211_os_log("LQM-WIFI: %s Noise %d\n", v14, *(v6 + 2));
              }

              if (IO80211Controller::isLQMIOLOGEnabled(a1))
              {
                v15 = AppleBCMWLANChanSpec::convToAscii(AppleChannelSpec, v4, 0x20u);
                IOLog("LQM-WIFI: %s Noise %d\n", v15, *(v6 + 2));
              }

              if (IO80211Controller::isLQMCCLOGEnabled(a1))
              {
                v16 = AppleBCMWLANChanSpec::convToAscii(AppleChannelSpec, v4, 0x20u);
                IO80211Controller::logLQMToCC(a1, "LQM-WIFI: %s Noise %d\n", v16, *(v6 + 2));
              }

              IO80211Controller::setChanNoiseFloor();
              if (IO80211BssManager::getCurrentChannel())
              {
                goto LABEL_24;
              }

              if (HIDWORD(v47) != ChanSpecGetPrimaryChannel())
              {
                goto LABEL_24;
              }

              if (v43 != AppleChannelSpec >> 14)
              {
                goto LABEL_24;
              }

              v17 = *(*(a1 + 9) + 11288);
              if (!v17 || ((*(*v17 + 792))(v17, v49, v50, *(v6 + 2)) & 1) != 0)
              {
                goto LABEL_24;
              }

              AppleBCMWLANCore::handleCCAChanQualEvent();
              goto LABEL_7;
            }

            v36 = *(v6 + 2);
            if (!v36)
            {
              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleCCAChanQualEvent();
                }
              }

              goto LABEL_24;
            }

            v37 = 100 * *(v6 + 3);
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              AppleBCMWLANCore::handleCCAChanQualEvent();
              goto LABEL_24;
            }

            v38 = v37 / v36;
            v39 = AppleBCMWLANChanSpec::convToAscii(AppleChannelSpec, v4, 0x20u);
            io80211_os_log("%s CCA %d%% duration: %d congest: %d ts: %d\n", v39, v38, *(v6 + 2), *(v6 + 3), *(v6 + 4));
            v40 = *(v6 + 2);
            if (v40 > 0x2710)
            {
              goto LABEL_24;
            }

            if (v40 < *(v6 + 3))
            {
              goto LABEL_24;
            }

            IO80211Controller::setChanCCA();
            if (IO80211BssManager::getCurrentChannel() || HIDWORD(v47) != ChanSpecGetPrimaryChannel() || v43 != AppleChannelSpec >> 14)
            {
              goto LABEL_24;
            }

            v34 = *(*(a1 + 9) + 5608);
            v35 = v6 + 4;
          }

          AppleBCMWLANLQM::updateCCA(v34, v35);
          goto LABEL_24;
        }

        if (v10 == 1024 || v10 == 1280)
        {
LABEL_23:
          AppleBCMWLANCore::handleCCAOnlyChanQualEvent(a1, a2);
          goto LABEL_24;
        }
      }

LABEL_47:
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleCCAChanQualEvent();
        }
      }

      goto LABEL_7;
    }

    return IOFreeData();
  }

  else if (v4)
  {
    return IOFreeData();
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleTxStatusErrEvent(void *a1, uint64_t a2)
{
  v3 = *(a1[9] + 5504);
  if (v3)
  {
    v4 = (*(a2 + 8) & 1) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    AppleBCMWLANIOReportingCore::incrementBackoffStuckDetected(v3);
  }

  result = (*(*a1 + 1952))(a1);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::handleTxStatusErrEvent();
    }
  }

  return result;
}

AppleBCMWLANCore ***AppleBCMWLANCore::handleWeightAvgLQMEvent(IO80211Controller *a1, uint64_t a2)
{
  memset(v29, 170, sizeof(v29));
  if ((IO80211BssManager::isAssociated(*(*(a1 + 9) + 5432)) & 1) == 0)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleWeightAvgLQMEvent();
      }
    }
  }

  v4 = a2 + 20;
  v5 = *(a2 + 20);
  if (v5 <= 3)
  {
    return AppleBCMWLANCore::handleWeightAvgLQMEvent();
  }

  if (((a2 + 48) & 3) != 0)
  {
    return AppleBCMWLANCore::handleWeightAvgLQMEvent();
  }

  v6 = a2 + 50;
  v7 = *(a2 + 50);
  v8 = v7 - 4;
  if (v7 <= 4)
  {
    return AppleBCMWLANCore::handleWeightAvgLQMEvent();
  }

  if (v5 < v7)
  {
    return AppleBCMWLANCore::handleWeightAvgLQMEvent();
  }

  if (*(a2 + 48))
  {
    result = (*(*a1 + 1952))(a1, v6, v4);
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleWeightAvgLQMEvent();
      }
    }
  }

  else
  {
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v44 = v10;
    v45 = v10;
    v42 = v10;
    v43 = v10;
    v40 = v10;
    v41 = v10;
    v38 = v10;
    v39 = v10;
    v36 = v10;
    v37 = v10;
    v34 = v10;
    v35 = v10;
    v32 = v10;
    v33 = v10;
    *__str = v10;
    v31 = v10;
    if (v8 < 5)
    {
LABEL_26:
      v26 = *(a1 + 9);
      if (v26[679])
      {
        IO80211BssManager::updateWeightAvgLQM();
        v26 = *(a1 + 9);
        v27 = v26[1411];
        if (v27)
        {
          IO80211Controller::postMessage(a1, v27, 0x91u, v29, 0x10uLL, 1);
          v26 = *(a1 + 9);
        }
      }

      result = v26[691];
      if (result)
      {
        return AppleBCMWLANTxPowerManager::configureDynSARPwrBoostPerRSSI(result, v29[0]);
      }
    }

    else
    {
      v11 = a2 + 52;
      while (1)
      {
        if ((v11 & 3) != 0)
        {
          return AppleBCMWLANCore::handleWeightAvgLQMEvent();
        }

        v12 = *(v11 + 2);
        if (v8 < v12 + 4)
        {
          break;
        }

        if (*v11)
        {
          result = (*(*a1 + 1952))(a1, v6, v4);
          if (result)
          {
            (*(*a1 + 1952))(a1);
            result = CCLogStream::shouldLog();
            if (result)
            {
              return AppleBCMWLANCore::handleWeightAvgLQMEvent();
            }
          }

          return result;
        }

        if (v12 != 16)
        {
          result = (*(*a1 + 1952))(a1, v6, v4);
          if (result)
          {
            (*(*a1 + 1952))(a1);
            result = CCLogStream::shouldLog();
            if (result)
            {
              return AppleBCMWLANCore::handleWeightAvgLQMEvent();
            }
          }

          return result;
        }

        *v29 = *(v11 + 4);
        snprintf(__str, 0x100uLL, "WeightAvgLQM rssi=%d snr=%d txRate=%u rxRate=%u\n", v29[0], v29[1], v29[2], v29[3]);
        v13 = *(a1 + 9);
        if ((*(v13 + 964) - 1) > 1)
        {
          v14 = (v13 + 31437);
          v15 = v43;
          v14[12] = v42;
          v14[13] = v15;
          v16 = v45;
          v14[14] = v44;
          v14[15] = v16;
          v17 = v39;
          v14[8] = v38;
          v14[9] = v17;
          v18 = v41;
          v14[10] = v40;
          v14[11] = v18;
          v19 = v35;
          v14[4] = v34;
          v14[5] = v19;
          v20 = v37;
          v14[6] = v36;
          v14[7] = v20;
          v21 = v31;
          *v14 = *__str;
          v14[1] = v21;
          v22 = v33;
          v14[2] = v32;
          v14[3] = v22;
        }

        else
        {
          io80211_os_log("LQM-WiFi: %s\n", __str);
        }

        v23 = *(v11 + 2);
        v24 = v23 + 4;
        v11 += v23 + 4;
        v25 = v8 - (v23 + 4);
        if (v8 >= v24)
        {
          v8 = v25;
        }

        else
        {
          v8 = 0;
        }

        if (v8 <= 4)
        {
          goto LABEL_26;
        }
      }

      result = (*(*a1 + 1952))(a1, v6, v4);
      if (result)
      {
        (*(*a1 + 1952))(a1);
        result = CCLogStream::shouldLog();
        if (result)
        {
          v28 = (*(*a1 + 1952))(a1);
          return CCLogStream::logAlert(v28, "[dk] %s@%d:Error: remaining_len = %u, sub_event->len = %d\n", "handleWeightAvgLQMEvent", 23256, v8, *(v11 + 2));
        }
      }
    }
  }

  return result;
}

void AppleBCMWLANCore::handleDynSAREvent(void *a1, uint64_t a2)
{
  v4 = IOMallocZeroTyped();
  if (v4)
  {
    v5 = v4;
    *(v4 + 80) = 0;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *v4 = 0u;
    if (((a2 + 48) & 3) != 0)
    {
      AppleBCMWLANCore::handleDynSAREvent();
    }

    else if (*(a2 + 20) == 12)
    {
      if (*(a2 + 50) == 12)
      {
        if (*(a2 + 48) - 3 <= 0xFFFFFFFD)
        {
          AppleBCMWLANCore::handleDynSAREvent();
        }

        else
        {
          v7 = (a2 + 57);
          v6 = *(a2 + 57);
          if (v6 < 2)
          {
            *v4 = v6;
            *(v4 + 66) = *(a2 + 56);
            v8 = *(a2 + 58);
            *(v4 + 64) = v8;
            *(v4 + 80) = *(a2 + 59);
            v9 = *(a1[9] + 5528);
            if (v9)
            {
              AppleBCMWLANTxPowerManager::updateDynSARCurState(v9, v8);
              if (!*v5 && *(v5 + 64) == 2)
              {
                *(a1[9] + 29920) = mach_continuous_time();
              }

              AppleBCMWLANTxPowerManager::processDynSAREvent(*(a1[9] + 5528), a2 + 48);
              *(v5 + 76) = AppleBCMWLANTxPowerManager::getDynSARUpdateCnt(*(a1[9] + 5528), *v7);
              *(v5 + 8) = AppleBCMWLANTxPowerManager::getDynSARDurNoOpt(*(a1[9] + 5528), *v7);
              *(v5 + 16) = AppleBCMWLANTxPowerManager::getDynSARDurPwrOpt(*(a1[9] + 5528), *v7);
              *(v5 + 24) = AppleBCMWLANTxPowerManager::getDynSARDurFailSafe(*(a1[9] + 5528), *v7);
              *(v5 + 32) = AppleBCMWLANTxPowerManager::getDynSARDurNoMute(*(a1[9] + 5528), *v7);
              *(v5 + 40) = AppleBCMWLANTxPowerManager::getDynSARDurHybrid(*(a1[9] + 5528), *v7);
              *(v5 + 48) = AppleBCMWLANTxPowerManager::getDynSARDurTxDCThrottle(*(a1[9] + 5528), *v7);
              DynSARDurPwrOptTxDCThrottle = AppleBCMWLANTxPowerManager::getDynSARDurPwrOptTxDCThrottle(*(a1[9] + 5528), *v7);
              *(v5 + 56) = DynSARDurPwrOptTxDCThrottle;
              v11 = *(v5 + 16);
              v12 = *v7;
              *(a1[9] + (v12 << 6) + 4744) = *(v5 + 8) / 0x3E8uLL;
              *(a1[9] + (v12 << 6) + 4752) = v11 / 0x3E8;
              v13 = *(v5 + 32);
              *(a1[9] + (v12 << 6) + 4760) = *(v5 + 24) / 0x3E8uLL;
              *(a1[9] + (v12 << 6) + 4768) = v13 / 0x3E8;
              v14 = *(v5 + 48);
              *(a1[9] + (v12 << 6) + 4776) = *(v5 + 40) / 0x3E8uLL;
              *(a1[9] + (v12 << 6) + 4784) = v14 / 0x3E8;
              *(a1[9] + (v12 << 6) + 4792) = DynSARDurPwrOptTxDCThrottle / 0x3E8uLL;
              ++*(a1[9] + (v12 << 6) + 4800);
              v15 = *(a1[9] + 5528);

              AppleBCMWLANTxPowerManager::handleDynSAREventToPopulateUnsharedTxDCUtil(v15, v5);
            }

            return;
          }

          AppleBCMWLANCore::handleDynSAREvent();
        }
      }

      else
      {
        AppleBCMWLANCore::handleDynSAREvent();
      }
    }

    else
    {
      AppleBCMWLANCore::handleDynSAREvent();
    }

    IOFree(v5, 0x58uLL);
  }

  else if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::handleDynSAREvent();
    }
  }
}

uint64_t AppleBCMWLANCore::handleRangingEvent(IO80211Controller *a1, uint64_t a2)
{
  v2 = a1;
  v3 = (a2 + 48);
  v4 = *(a2 + 20);
  v5 = v4 - 1 + a2 + 48;
  v6 = __CFADD__(v4 - 1, a2 + 48);
  if (v4)
  {
    v7 = v4 - 1 + a2 + 48;
  }

  else
  {
    v7 = 0;
  }

  if (v4 <= 0x11)
  {
    result = (*(*a1 + 1952))(a1);
    if (result)
    {
      (*(*v2 + 1952))(v2);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleRangingEvent();
      }
    }

    return result;
  }

  if (v6 || a2 + 65 < v3 || v3 >= 0xFFFFFFFFFFFFFFEFLL || (a2 + 65 <= v5 ? (v9 = v5 < v3) : (v9 = 1), v9))
  {
    result = (*(*a1 + 1952))(a1);
    if (result)
    {
      (*(*v2 + 1952))(v2);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleRangingEvent();
      }
    }

    return result;
  }

  result = (*(*a1 + 1952))(a1);
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = AppleBCMWLANCore::handleRangingEvent();
    }
  }

  v11 = v4 - 16;
  v12 = *(a2 + 52);
  if (v12 == 5)
  {
    result = (*(*v2 + 1952))(v2);
    if (result)
    {
      (*(*v2 + 1952))(v2);
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = AppleBCMWLANCore::handleRangingEvent();
      }
    }

    v14 = *(a2 + 60);
    if ((v14 - 515) > 6 || ((1 << (v14 - 3)) & 0x61) == 0)
    {
LABEL_271:
      if ((~v14 & 0x206) == 0)
      {
        if (v11 > 0xB)
        {
          v107 = *(a2 + 64);
          v108 = *(a2 + 66);
          v109 = *(a2 + 68);
          v110 = *(a2 + 72);
          v111 = *(a2 + 74);
          result = (*(*v2 + 1952))(v2);
          if (result)
          {
            (*(*v2 + 1952))(v2);
            result = CCLogStream::shouldLog();
            if (result)
            {
              v112 = (*(*v2 + 1952))(v2);
              if (v109)
              {
                if (v109 == -1)
                {
                  v113 = "error";
                }

                else if ((v109 + 1056) > 0x20)
                {
                  v113 = "unknown";
                }

                else
                {
                  v113 = wl_proxd_error_to_string[v109 + 1056];
                }
              }

              else
              {
                v113 = "OK";
              }

              return CCLogStream::logAlert(v112, "[dk] %s@%d:Proxd: Burst Status - sid: %u state: %d status: %d(%s) BurstNum: %u core supported: %d core id: %d\n", "handleRangingEvent", 24144, v107, v108, v109, v113, v110, v111, v111 >> 8);
            }
          }
        }

        else
        {
          result = (*(*v2 + 1952))(v2);
          if (result)
          {
            (*(*v2 + 1952))(v2);
            result = CCLogStream::shouldLog();
            if (result)
            {
              return AppleBCMWLANCore::handleRangingEvent();
            }
          }
        }
      }

      return result;
    }

    v164 = 0u;
    memset(v163, 0, sizeof(v163));
    v161 = 0u;
    v162 = 0u;
    if (v14 != 521)
    {
      if (v14 != 520)
      {
        if (v14 == 515)
        {
          if (v11 <= 0x7F)
          {
            result = (*(*v2 + 1952))(v2);
            if (result)
            {
              (*(*v2 + 1952))(v2);
              result = CCLogStream::shouldLog();
              if (result)
              {
                return AppleBCMWLANCore::handleRangingEvent();
              }
            }

            return result;
          }

          v71 = *(a2 + 132);
          if ((*(*v2 + 1952))(v2))
          {
            (*(*v2 + 1952))(v2);
            if (CCLogStream::shouldLog())
            {
              v131 = (*(*v2 + 1952))(v2);
              v132 = *(a2 + 68);
              if (v132)
              {
                if (v132 == -1)
                {
                  v133 = "error";
                }

                else if ((v132 + 1056) > 0x20)
                {
                  v133 = "unknown";
                }

                else
                {
                  v133 = wl_proxd_error_to_string[v132 + 1056];
                }
              }

              else
              {
                v133 = "OK";
              }

              CCLogStream::logNotice(v131, "[dk] %s@%d: Ranging result v1: session=%d, flags=0x%x, status=%d(%s) peer=%02X:%02X:%02X:%02X:%02X:%02X, state=%d,avg_dist=%d.%04dm,  num RTT samples=%d, valid=%d, num_ftm %d, burst_num  %d\n ", "handleRangingEvent", 23672, *(a2 + 64), *(a2 + 66), v132, v133, *(a2 + 72), *(a2 + 73), *(a2 + 74), *(a2 + 75), *(a2 + 76), *(a2 + 77), *(a2 + 78), v71 >> 8, (625 * v71) >> 4, *(a2 + 142), *(a2 + 138), *(a2 + 139), *(a2 + 140));
            }
          }

          WORD4(v163[24]) = *(a2 + 66);
          v72 = 1000 * v71;
          if (v72 != v72)
          {
            return AppleBCMWLANCore::handleRangingEvent();
          }

          *(&v163[24] + 3) = (v72 >> 8);
          LOWORD(v164) = *(a2 + 136);
          BYTE2(v164) = *(a2 + 138);
          *(&v162 + 10) = *(a2 + 72);
          HIWORD(v162) = *(a2 + 76);
          v11 = v4 - 100;
          if (*(a2 + 142))
          {
            v73 = 0;
            LOBYTE(v28) = 0;
            v74 = 0;
            v152 = 0;
            v146 = a2 + 148;
            v147 = -100;
            while (1)
            {
              if (v28 > 7u)
              {
                goto LABEL_250;
              }

              if (v11 <= 0x2B)
              {
                result = (*(*v2 + 1952))(v2);
                if (result)
                {
                  (*(*v2 + 1952))(v2);
                  result = CCLogStream::shouldLog();
                  if (result)
                  {
                    return AppleBCMWLANCore::handleRangingEvent();
                  }
                }

                return result;
              }

              v75 = v146 + v73 + 43;
              if ((v146 + v73) >= 0xFFFFFFFFFFFFFFD5 || v75 < v3 || v75 > v7 || v3 > a2 + v73 + 148 || v7 < v146 + v73)
              {
                result = (*(*v2 + 1952))(v2);
                if (result)
                {
                  (*(*v2 + 1952))(v2);
                  result = CCLogStream::shouldLog();
                  if (result)
                  {
                    return AppleBCMWLANCore::handleRangingEvent();
                  }
                }

                return result;
              }

              v143 = (a2 + v73 + 148);
              v157 = v11;
              v76 = a2 + v73;
              v77 = *(a2 + v73 + 152);
              __sizeb = *(a2 + v73 + 166);
              v78 = *(a2 + v73 + 184);
              v79 = *(a2 + v73 + 186);
              v80 = *(v2 + 72);
              if (*(v80 + 36088) == 1 && (*(v80 + 36092) || *(v80 + 36096)))
              {
                if (*(a2 + v73 + 188) == 1)
                {
                  v139 = *(a2 + v73 + 152);
                  if ((*(*v2 + 1952))(v2))
                  {
                    (*(*v2 + 1952))(v2);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANCore::handleRangingEvent();
                    }
                  }

                  v80 = *(v2 + 72);
                  v81 = 36096;
                }

                else
                {
                  if (*(a2 + v73 + 188))
                  {
                    goto LABEL_218;
                  }

                  v139 = *(a2 + v73 + 152);
                  if ((*(*v2 + 1952))(v2))
                  {
                    (*(*v2 + 1952))(v2);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANCore::handleRangingEvent();
                    }
                  }

                  v80 = *(v2 + 72);
                  v81 = 36092;
                }

                v77 = v139 - *(v80 + v81);
              }

LABEL_218:
              if (v79)
              {
                v82 = v78 == 0;
              }

              else
              {
                v82 = 1;
              }

              v83 = !v82;
              v84 = (v77 - 1334) < 0xFFFFF97D;
              if (*(v80 + 976) == 1 && (v77 - 1334) <= 0xFFFFF97C)
              {
                v85 = v77;
                if ((*(*v2 + 1952))(v2))
                {
                  (*(*v2 + 1952))(v2);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::handleRangingEvent();
                  }
                }

                v84 = 0;
                v77 = v85;
              }

              v86 = a2 + v73;
              if (!*(a2 + v73 + 168))
              {
                v88 = *(v86 + 149);
                if (((v88 | v84 | v83) & 1) == 0)
                {
                  v89 = a2 + v73;
                  v90 = &v163[3 * v28] + 8;
                  *(v90 + 3) = *(a2 + v73 + 150);
                  v140 = v77;
                  *(v90 + 6) = v77;
                  *(v90 + 10) = v88;
                  *(v90 + 4) = *(a2 + v73 + 164);
                  *v90 = __sizeb;
                  *(v90 + 11) = 0;
                  *(v90 + 5) = *(v76 + 184);
                  v90[1] = *(v76 + 186);
                  *(v90 + 12) = *(a2 + v73 + 176);
                  v90[2] = *(a2 + v73 + 188);
                  v90[5] = *(a2 + v73 + 160);
                  v90[4] = *(a2 + v73 + 172);
                  if ((*(*v2 + 1952))(v2))
                  {
                    (*(*v2 + 1952))(v2);
                    if (CCLogStream::shouldLog())
                    {
                      v92 = (*(*v2 + 1952))(v2);
                      CCLogStream::logNotice(v92, "[dk] %s@%d:sample[%d]: id=%d rssi=%d snr=%d bitflips=%d tof_phy_error %x tof_tgt_phy_error %x tof_target_snr=%d tof_target_bitflips=%d rtt=%d status=%d coreid = %d\n", "handleRangingEvent", 23756, v74, *v143, *(v89 + 150), *(v89 + 164), *(v76 + 166), *(v89 + 176), *(v89 + 180), *(v76 + 184), *(v76 + 186), *(v76 + 152), *(v86 + 168), *(v89 + 188));
                    }
                  }

                  LOBYTE(v28) = ++BYTE3(v164);
                  v91 = v147;
                  if (v147 <= *(v89 + 150))
                  {
                    v91 = *(v89 + 150);
                  }

                  v147 = v91;
                  v152 += v140;
                  goto LABEL_246;
                }

                if ((v88 & 1) == 0)
                {
                  if (v84)
                  {
                    WORD4(v163[24]) |= 0x2000u;
                  }

                  if (v83)
                  {
                    WORD4(v163[24]) |= 0x8000u;
                  }
                }
              }

              if ((*(*v2 + 1952))(v2))
              {
                (*(*v2 + 1952))(v2);
                if (CCLogStream::shouldLog())
                {
                  v87 = (*(*v2 + 1952))(v2);
                  CCLogStream::logNotice(v87, "[dk] %s@%d:Discarding sample[%d]: id=%d rssi=%d snr=%d bitflips=%d tof_phy_error %x tof_tgt_phy_error %x tof_target_snr=%d tof_target_bitflips=%d rtt=%d status=%d coreid = %d\n", "handleRangingEvent", 23778, v74, *v143, *(a2 + v73 + 150), *(a2 + v73 + 164), *(v76 + 166), *(a2 + v73 + 176), *(a2 + v73 + 180), *(v76 + 184), *(v76 + 186), *(v76 + 152), *(v86 + 168), *(a2 + v73 + 188));
                }
              }

LABEL_246:
              v11 = v157 - 44;
              if (v74 <= 6)
              {
                ++v74;
                v73 += 44;
                if (v74 < *(a2 + 142))
                {
                  continue;
                }
              }

              goto LABEL_250;
            }
          }
        }

        goto LABEL_249;
      }

      if (v11 <= 0x5F)
      {
        result = (*(*v2 + 1952))(v2);
        if (result)
        {
          (*(*v2 + 1952))(v2);
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANCore::handleRangingEvent();
          }
        }

        return result;
      }

      if ((*(a2 + 70) & 0x80) != 0)
      {
        v25 = -*(a2 + 92);
      }

      else
      {
        v25 = *(a2 + 92);
      }

      if ((*(*v2 + 1952))(v2))
      {
        (*(*v2 + 1952))(v2);
        if (CCLogStream::shouldLog())
        {
          v128 = (*(*v2 + 1952))(v2);
          v129 = *(a2 + 72);
          if (v129)
          {
            if (v129 == -1)
            {
              v130 = "error";
            }

            else if ((v129 + 1056) > 0x20)
            {
              v130 = "unknown";
            }

            else
            {
              v130 = wl_proxd_error_to_string[v129 + 1056];
            }
          }

          else
          {
            v130 = "OK";
          }

          CCLogStream::logNotice(v128, "[dk] %s@%d: Ranging result V2: session=%d, flags=0x%x, status=%d(%s), peer=%02X:%02X:%02X:%02X:%02X:%02X, state=%d,avg_dist=%d.%04dm,  num RTT samples=%d, valid=%d, num_ftm %d, burst_num  %d\n ", "handleRangingEvent", 23814, *(a2 + 68), *(a2 + 70), v129, v130, *(a2 + 76), *(a2 + 77), *(a2 + 78), *(a2 + 79), *(a2 + 80), *(a2 + 81), *(a2 + 82), v25 >> 8, (625 * v25) >> 4, *(a2 + 102), *(a2 + 98), *(a2 + 99), *(a2 + 100));
        }
      }

      WORD4(v163[24]) = *(a2 + 70);
      v26 = 1000 * v25;
      if (v26 != v26)
      {
        return AppleBCMWLANCore::handleRangingEvent();
      }

      *(&v163[24] + 3) = (v26 >> 8);
      LOWORD(v164) = *(a2 + 96);
      BYTE2(v164) = *(a2 + 98);
      *(&v162 + 10) = *(a2 + 76);
      HIWORD(v162) = *(a2 + 80);
      v11 = v4 - 60;
      if (*(a2 + 102))
      {
        v27 = 0;
        LOBYTE(v28) = 0;
        v152 = 0;
        v144 = a2 + 160;
        v147 = -100;
        v29 = 1;
        while (1)
        {
          if (v28 > 7u)
          {
            goto LABEL_250;
          }

          if (v11 <= 0x33)
          {
            result = (*(*v2 + 1952))(v2);
            if (result)
            {
              (*(*v2 + 1952))(v2);
              result = CCLogStream::shouldLog();
              if (result)
              {
                return AppleBCMWLANCore::handleRangingEvent();
              }
            }

            return result;
          }

          v30 = v144 + v27 + 51;
          if ((v144 + v27) >= 0xFFFFFFFFFFFFFFCDLL || v30 < v3 || v30 > v7 || v3 > a2 + v27 + 160 || v7 < v144 + v27)
          {
            result = (*(*v2 + 1952))(v2);
            if (result)
            {
              (*(*v2 + 1952))(v2);
              result = CCLogStream::shouldLog();
              if (result)
              {
                return AppleBCMWLANCore::handleRangingEvent();
              }
            }

            return result;
          }

          v31 = a2 + v27;
          v32 = "-";
          if (*(a2 + v27 + 165) >= 0)
          {
            v32 = "";
          }

          v141 = v32;
          if (*(a2 + v27 + 165) >= 0)
          {
            v33 = *(a2 + v27 + 168);
          }

          else
          {
            v33 = -*(a2 + v27 + 168);
          }

          __size = *(v31 + 182);
          v154 = *(v31 + 202);
          v34 = *(v2 + 72);
          if (*(v34 + 36088) == 1 && (*(v34 + 36092) || *(v34 + 36096)))
          {
            if (*(a2 + v27 + 204) == 1)
            {
              v135 = v29;
              v35 = v33;
              if ((*(*v2 + 1952))(v2))
              {
                (*(*v2 + 1952))(v2);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleRangingEvent();
                }
              }

              v34 = *(v2 + 72);
              v36 = 36096;
              goto LABEL_103;
            }

            if (!*(a2 + v27 + 204))
            {
              v135 = v29;
              v35 = v33;
              if ((*(*v2 + 1952))(v2))
              {
                (*(*v2 + 1952))(v2);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleRangingEvent();
                }
              }

              v34 = *(v2 + 72);
              v36 = 36092;
LABEL_103:
              v33 = v35 - *(v34 + v36);
              v29 = v135;
            }
          }

          v37 = (v33 - 1334) < 0xFFFFF97D;
          if (*(v34 + 976) == 1 && (v33 - 1334) <= 0xFFFFF97C)
          {
            v38 = v29;
            v39 = v33;
            if ((*(*v2 + 1952))(v2))
            {
              (*(*v2 + 1952))(v2);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::handleRangingEvent();
              }
            }

            v37 = 0;
            v33 = v39;
            v29 = v38;
            v31 = a2 + v27;
          }

          v136 = a2 + v27;
          if (!*(a2 + v27 + 184))
          {
            v41 = v154 - 1;
            v42 = *(v31 + 165);
            if (((v42 | v37) & 1) == 0 && v41 >= 0xFFFE)
            {
              v155 = v11;
              v43 = a2 + v27;
              v44 = &v163[3 * v28] + 8;
              *(v44 + 3) = *(a2 + v27 + 166);
              v134 = v33;
              *(v44 + 6) = v33;
              *(v44 + 10) = v42;
              *(v44 + 4) = *(a2 + v27 + 180);
              *v44 = __size;
              *(v44 + 11) = 0;
              *(v44 + 5) = *(a2 + v27 + 200);
              v44[1] = *(v31 + 202);
              *(v44 + 12) = *(a2 + v27 + 192);
              v44[2] = *(a2 + v27 + 204);
              v44[5] = *(a2 + v27 + 176);
              v44[4] = *(a2 + v27 + 188);
              *(v44 + 14) = *(a2 + v27 + 208);
              if ((*(*v2 + 1952))(v2))
              {
                (*(*v2 + 1952))(v2);
                if (CCLogStream::shouldLog())
                {
                  v47 = (*(*v2 + 1952))(v2);
                  CCLogStream::logNotice(v47, "[dk] %s@%d:sample[%d]: id=%d rssi=%d snr=%d bitflips=%d tof_phy_error %x tof_tgt_phy_error %x tof_target_snr=%d tof_target_bitflips=%d rtt=%s%d status=%d coreid = %d flags=%d channel = %d\n", "handleRangingEvent", 23907, v29, *(a2 + v27 + 164), *(v43 + 166), *(v43 + 180), *(v31 + 182), *(v43 + 192), *(v43 + 196), *(v43 + 200), *(v31 + 202), v141, *(v31 + 168), *(v136 + 184), *(v43 + 204), *(v31 + 165), *(v43 + 208));
                }
              }

              LOBYTE(v28) = ++BYTE3(v164);
              v45 = v147;
              if (v147 <= *(v43 + 166))
              {
                v45 = *(v43 + 166);
              }

              v147 = v45;
              v152 += v134;
              v11 = v155;
              goto LABEL_122;
            }

            if ((v42 & 1) == 0)
            {
              if (v37)
              {
                WORD4(v163[24]) |= 0x2000u;
              }

              if (v41 <= 0xFFFD)
              {
                WORD4(v163[24]) |= 0x8000u;
              }
            }
          }

          if ((*(*v2 + 1952))(v2))
          {
            (*(*v2 + 1952))(v2);
            if (CCLogStream::shouldLog())
            {
              v40 = (*(*v2 + 1952))(v2);
              CCLogStream::logNotice(v40, "[dk] %s@%d:Discarding sample[%d]: id=%d rssi=%d snr=%d bitflips=%d tof_phy_error %x tof_tgt_phy_error %x tof_target_snr=%d tof_target_bitflips=%d rtt=%s%d status=%d coreid = %d flags=%d channel = %d\n", "handleRangingEvent", 23933, v29, *(a2 + v27 + 164), *(a2 + v27 + 166), *(a2 + v27 + 180), *(v31 + 182), *(a2 + v27 + 192), *(a2 + v27 + 196), *(a2 + v27 + 200), *(v31 + 202), v141, *(v31 + 168), *(v136 + 184), *(a2 + v27 + 204), *(v31 + 165), *(a2 + v27 + 208));
            }
          }

LABEL_122:
          v11 -= 52;
          if (v29 <= 6)
          {
            v27 += 52;
            v46 = v29++ >= *(a2 + 102);
            if (!v46)
            {
              continue;
            }
          }

          goto LABEL_250;
        }
      }

LABEL_249:
      LOBYTE(v28) = 0;
      v152 = 0;
      v147 = -100;
LABEL_250:
      v93 = *(v2 + 72);
      if (*(v93 + 31081) == 1)
      {
        v158 = v11;
        *&v94 = 0xAAAAAAAAAAAAAAAALL;
        *(&v94 + 1) = 0xAAAAAAAAAAAAAAAALL;
        __src[22] = v94;
        __src[23] = v94;
        __src[20] = v94;
        __src[21] = v94;
        __src[18] = v94;
        __src[19] = v94;
        v95 = v28;
        v96 = v147 - 10;
        __src[16] = v94;
        __src[17] = v94;
        v97 = v95;
        __src[14] = v94;
        __src[15] = v94;
        __src[12] = v94;
        __src[13] = v94;
        __src[10] = v94;
        __src[11] = v94;
        __src[8] = v94;
        __src[9] = v94;
        __src[6] = v94;
        __src[7] = v94;
        __src[4] = v94;
        __src[5] = v94;
        __src[2] = v94;
        __src[3] = v94;
        __src[0] = v94;
        __src[1] = v94;
        __sizec = v95;
        v153 = v152 / v95;
        if ((*(*v2 + 1952))(v2))
        {
          (*(*v2 + 1952))(v2);
          if (CCLogStream::shouldLog())
          {
            v127 = (*(*v2 + 1952))(v2);
            CCLogStream::logAlert(v127, "[dk] %s@%d:Checking RSSI of ranging samples, count=%d, rssiPassThreshold=%d avgRtt=%d\n", "handleRangingEvent", 24099, v97, v96, v153);
          }
        }

        if (__sizec)
        {
          v98 = 0;
          v99 = 0;
          v100 = 0;
          do
          {
            v101 = &v161 + v98 * 16;
            v102 = SHIWORD(v163[v98]);
            if (v96 >= v102 && (v103 = *(v101 + 16), v103 >= v153))
            {
              if ((*(*v2 + 1952))(v2))
              {
                (*(*v2 + 1952))(v2);
                if (CCLogStream::shouldLog())
                {
                  v106 = (*(*v2 + 1952))(v2);
                  CCLogStream::logNotice(v106, "[dk] %s@%d:Discarding sample[%d]: rssi=%d snr=%d bitflips=%d tof_phy_error=%x tof_tgt_phy_error=%x tof_target_snr=%d tof_target_bitflips=%d rtt=%d status=%d coreid=%d flags=%d channel=%d\n", "handleRangingEvent", 24121, v99, v102, LOWORD(v163[v98 + 1]), v101[40], DWORD1(v163[v98 + 1]), DWORD2(v163[v98 + 1]), WORD1(v163[v98 + 1]), BYTE9(v163[v98]), v103, HIWORD(v163[v98 + 1]), BYTE10(v163[v98]), WORD6(v163[v98 + 1]), WORD2(v163[v98 + 2]));
                }
              }
            }

            else
            {
              v104 = &__src[3 * v100];
              v105 = *(v101 + 56);
              *v104 = *(v101 + 40);
              v104[1] = v105;
              v104[2] = *(v101 + 72);
              ++v100;
            }

            ++v99;
            v98 += 3;
          }

          while (3 * __sizec != v98);
        }

        else
        {
          v100 = 0;
        }

        if (__sizec != v100)
        {
          WORD4(v163[24]) |= 0x4000u;
          BYTE2(v164) = v100;
          BYTE3(v164) = v100;
          memcpy(v163 + 8, __src, 0x180uLL);
          if ((*(*v2 + 1952))(v2))
          {
            (*(*v2 + 1952))(v2);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::handleRangingEvent();
            }
          }
        }

        v93 = *(v2 + 72);
        v11 = v158;
      }

      result = IO80211Controller::postMessage(v2, *(v93 + 11296), 0x55u, &v161, 0x1C0uLL, 1);
      v14 = *(a2 + 60);
      goto LABEL_271;
    }

    if (v11 <= 0x2B)
    {
      result = (*(*v2 + 1952))(v2);
      if (result)
      {
        (*(*v2 + 1952))(v2);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANCore::handleRangingEvent();
        }
      }

      return result;
    }

    v48 = *(a2 + 92);
    if ((*(*v2 + 1952))(v2))
    {
      (*(*v2 + 1952))(v2);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleRangingEvent(v2, v2 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a2, v48);
      }
    }

    WORD4(v163[24]) = *(a2 + 70);
    v49 = 1000 * v48;
    if (v49 != v49)
    {
      return AppleBCMWLANCore::handleRangingEvent();
    }

    *(&v163[24] + 3) = (v49 >> 8);
    LOWORD(v164) = *(a2 + 96);
    BYTE2(v164) = *(a2 + 98);
    *(&v162 + 10) = *(a2 + 76);
    HIWORD(v162) = *(a2 + 80);
    v11 = v4 - 60;
    if (!*(a2 + 102))
    {
      goto LABEL_249;
    }

    v50 = 0;
    v28 = 0;
    v152 = 0;
    v142 = a2 + 164;
    v147 = -100;
    v51 = 1;
    while (1)
    {
      if (v28 > 7u)
      {
        goto LABEL_250;
      }

      if (v11 <= 0x37)
      {
        result = (*(*v2 + 1952))(v2);
        if (result)
        {
          (*(*v2 + 1952))(v2);
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANCore::handleRangingEvent();
          }
        }

        return result;
      }

      v52 = v142 + v50 + 55;
      if ((v142 + v50) >= 0xFFFFFFFFFFFFFFC9 || v52 < v3 || v52 > v7 || v3 > a2 + v50 + 164 || v7 < v142 + v50)
      {
        result = (*(*v2 + 1952))(v2);
        if (result)
        {
          (*(*v2 + 1952))(v2);
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANCore::handleRangingEvent();
          }
        }

        return result;
      }

      __sizea = v28;
      v156 = v11;
      v53 = a2 + v50;
      v54 = *(a2 + v50 + 172);
      v145 = *(a2 + v50 + 186);
      v55 = *(a2 + v50 + 204);
      v56 = *(a2 + v50 + 206);
      v57 = *(v2 + 72);
      if (*(v57 + 36088) == 1 && (*(v57 + 36092) || *(v57 + 36096)))
      {
        if (*(a2 + v50 + 208) == 1)
        {
          v137 = *(a2 + v50 + 172);
          if ((*(*v2 + 1952))(v2))
          {
            (*(*v2 + 1952))(v2);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::handleRangingEvent();
            }
          }

          v57 = *(v2 + 72);
          v58 = 36096;
        }

        else
        {
          if (*(a2 + v50 + 208))
          {
            goto LABEL_158;
          }

          v137 = *(a2 + v50 + 172);
          if ((*(*v2 + 1952))(v2))
          {
            (*(*v2 + 1952))(v2);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::handleRangingEvent();
            }
          }

          v57 = *(v2 + 72);
          v58 = 36092;
        }

        v54 = v137 - *(v57 + v58);
      }

LABEL_158:
      v60 = v56 != -1 && v55 != 0xFFFF;
      v61 = (v54 - 1334) < 0xFFFFF97D;
      if (*(v57 + 976) == 1 && (v54 - 1334) <= 0xFFFFF97C)
      {
        v62 = v54;
        if ((*(*v2 + 1952))(v2))
        {
          (*(*v2 + 1952))(v2);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::handleRangingEvent();
          }
        }

        v61 = 0;
        v54 = v62;
      }

      v63 = a2 + v50;
      if (!*(a2 + v50 + 188))
      {
        v66 = *(v63 + 169);
        if (((v66 | v61 | v60) & 1) == 0)
        {
          v67 = a2 + v50;
          v68 = &v163[3 * __sizea] + 8;
          *(v68 + 3) = *(a2 + v50 + 170);
          v138 = v54;
          *(v68 + 6) = v54;
          *(v68 + 10) = v66;
          *(v68 + 4) = *(a2 + v50 + 184);
          *v68 = v145;
          *(v68 + 11) = 0;
          *(v68 + 5) = *(v53 + 204);
          v68[1] = *(v53 + 206);
          *(v68 + 12) = *(a2 + v50 + 196);
          v68[2] = *(a2 + v50 + 208);
          v68[5] = *(a2 + v50 + 180);
          v68[4] = *(a2 + v50 + 192);
          *(v68 + 14) = *(a2 + v50 + 212);
          *(v68 + 10) = *(a2 + v50 + 216);
          if ((*(*v2 + 1952))(v2))
          {
            (*(*v2 + 1952))(v2);
            if (CCLogStream::shouldLog())
            {
              v70 = (*(*v2 + 1952))(v2);
              CCLogStream::logNotice(v70, "[dk] %s@%d:sample[%d]: id=%d rssi=%d snr=%d bitflips=%d tof_phy_error %x tof_tgt_phy_error %x tof_target_snr=%d tof_target_bitflips=%d rtt=%d status=%d coreid = %d flags=%d channel = %d gd_var=%d\n", "handleRangingEvent", 24049, v51, *(a2 + v50 + 168), *(v67 + 170), *(v67 + 184), *(v53 + 186), *(v67 + 196), *(v67 + 200), *(v53 + 204), *(v53 + 206), *(v53 + 172), *(v63 + 188), *(v67 + 208), *(v63 + 169), *(v67 + 212), *(v67 + 216));
            }
          }

          v28 = BYTE3(v164) + 1;
          ++BYTE3(v164);
          v69 = v147;
          if (v147 <= *(v67 + 170))
          {
            v69 = *(v67 + 170);
          }

          v147 = v69;
          v152 += v138;
          v64 = v156;
          goto LABEL_182;
        }

        if ((v66 & 1) == 0)
        {
          if (v61)
          {
            WORD4(v163[24]) |= 0x2000u;
          }

          if (v60)
          {
            WORD4(v163[24]) |= 0x8000u;
          }
        }
      }

      if ((*(*v2 + 1952))(v2))
      {
        (*(*v2 + 1952))(v2);
        v64 = v156;
        if (CCLogStream::shouldLog())
        {
          v65 = (*(*v2 + 1952))(v2);
          CCLogStream::logNotice(v65, "[dk] %s@%d:Discarding sample[%d]: id=%d rssi=%d snr=%d bitflips=%d tof_phy_error %x tof_tgt_phy_error %x tof_target_snr=%d tof_target_bitflips=%d rtt=%d status=%d coreid = %d flags=%d channel = %d gd_var=%d\n", "handleRangingEvent", 24076, v51, *(a2 + v50 + 168), *(a2 + v50 + 170), *(a2 + v50 + 184), *(v53 + 186), *(a2 + v50 + 196), *(a2 + v50 + 200), *(v53 + 204), *(v53 + 206), *(v53 + 172), *(v63 + 188), *(a2 + v50 + 208), *(a2 + v50 + 169), *(a2 + v50 + 212), *(a2 + v50 + 216));
        }
      }

      else
      {
        v64 = v156;
      }

      v28 = __sizea;
LABEL_182:
      v11 = v64 - 56;
      if (v51 <= 6)
      {
        v50 += 56;
        v46 = v51++ >= *(a2 + 102);
        if (!v46)
        {
          continue;
        }
      }

      goto LABEL_250;
    }
  }

  if (v12 == 6)
  {
    if (*(a2 + 60) == 518)
    {
      if (v11 <= 0xB)
      {
        result = (*(*v2 + 1952))(v2);
        if (result)
        {
          (*(*v2 + 1952))(v2);
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANCore::handleRangingEvent();
          }
        }

        return result;
      }

      v15 = *(a2 + 64);
      v16 = *(a2 + 66);
      v17 = *(a2 + 68);
      v18 = *(a2 + 72);
      v19 = *(a2 + 74);
      if ((*(*v2 + 1952))(v2))
      {
        (*(*v2 + 1952))(v2);
        if (CCLogStream::shouldLog())
        {
          v125 = (*(*v2 + 1952))(v2);
          if (v17)
          {
            if (v17 == -1)
            {
              v126 = "error";
            }

            else if ((v17 + 1056) > 0x20)
            {
              v126 = "unknown";
            }

            else
            {
              v126 = wl_proxd_error_to_string[v17 + 1056];
            }
          }

          else
          {
            v126 = "OK";
          }

          CCLogStream::logAlert(v125, "[dk] %s@%d:Proxd: Session Status - sid: %u state: %d status: %d(%s) BurstNum: %u core supported: %d core id: %d\n", "handleRangingEvent", 24158, v15, v16, v17, v126, v18, v19, v19 >> 8);
        }
      }

      if (v17 == -1033)
      {
        v20 = *(v2 + 72);
        if ((*(v20 + 10376) & 0x80) == 0)
        {
          CCFaultReporter::reportFault(*(v20 + 5536), 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x5E61u, "handleRangingEvent", 0, -469794531, "Ranging Protocol Error");
        }
      }
    }

    result = IO80211Controller::postMessage(v2, *(*(v2 + 72) + 11296), 0x55u, 0, 0, 1);
    atomic_fetch_and((*(v2 + 72) + 10376), 0xFFFBFFFF);
    return result;
  }

  if (v12 != 17)
  {
    return result;
  }

  v13 = *v3;
  if (v13 == 3 && v11 > 0x4AC || v13 == 4 && v11 >= 0x4D1)
  {
    result = (*(*v2 + 1952))(v2);
    if (result)
    {
      (*(*v2 + 1952))(v2);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleRangingEvent();
      }
    }
  }

  else
  {
    v21 = *(v2 + 72);
    if ((*(v21 + 18194) & 1) != 0 || *(v21 + 31080) == 1)
    {
      v22 = (*(a2 + 20) + 48) & 0xFFFFFFE0;
      result = IOMallocZeroData();
      v23 = result;
      if (result)
      {
        strcpy(result, "Proxd Dump:\n");
        v24 = 12;
      }

      else
      {
        v24 = 0;
      }

      if (v22)
      {
        v114 = (a2 + 15);
        v115 = 31;
        v159 = v2;
        do
        {
          v116 = 0;
          if (!v23 || v24 > 0xC7E || (v117 = 3200, v116 = snprintf(&v23[v24], 3200 - v24, "proxd %05d: ", v115 - 31), v116 <= 0xC7F))
          {
            v117 = v116;
          }

          result = 0;
          v118 = v117 + v24;
          if (!v23 || v118 > 0xC7E || (result = snprintf(&v23[v118], 3200 - v118, "%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x\n", *(v114 - 15), *(v114 - 14), *(v114 - 13), *(v114 - 12), *(v114 - 11), *(v114 - 10), *(v114 - 9), *(v114 - 8), *(v114 - 7), *(v114 - 6), *(v114 - 5), *(v114 - 4), *(v114 - 3), *(v114 - 2), *(v114 - 1), *v114, v114[1], v114[2], v114[3], v114[4], v114[5], v114[6], v114[7], v114[8], v114[9], v114[10], v114[11], v114[12], v114[13], v114[14], v114[15], v114[16]), v119 = 3200, result <= 0xC7F))
          {
            v119 = result;
          }

          v24 = v119 + v118;
          v120 = v115 + 1;
          v115 += 32;
          v114 += 32;
          v2 = v159;
        }

        while (v120 < v22);
        v121 = v22;
      }

      else
      {
        v121 = 0;
      }

      if (*(a2 + 20) + 48 > v121)
      {
        result = 0;
        if (!v23 || v24 > 0xC7E || (v122 = 3200, result = snprintf(&v23[v24], 3200 - v24, "proxd %05d: ", v22), result <= 0xC7F))
        {
          v122 = result;
        }

        v24 += v122;
        if (*(a2 + 20) + 48 > v121)
        {
          v123 = v22 + 1;
          do
          {
            result = 0;
            if (!v23 || v24 > 0xC7E || (v124 = 3200, result = snprintf(&v23[v24], 3200 - v24, "%02x", *(a2 + v121)), result <= 0xC7F))
            {
              v124 = result;
            }

            v24 += v124;
            v121 = v123;
            v9 = *(a2 + 20) + 48 > v123++;
          }

          while (v9);
        }
      }

      if (v23 && v24 <= 0xC7E)
      {
        snprintf(&v23[v24], 3200 - v24, "\n");
      }

      else if (!v23)
      {
        return result;
      }

      if (*(*(v2 + 72) + 14248) && CCLogStream::shouldLog())
      {
        CCLogStream::log(*(*(v2 + 72) + 14248), 1, "%s", v23);
      }

      *v23 = 0;

      return IOFreeData();
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleAuthEvent(IO80211Controller *a1, uint64_t a2)
{
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  AppleBCMWLANCore::processAuthEvenData(a1, a2);
  v9[0] = mapBcmStatusToApple80211IOReturnScan(*(a2 + 8));
  v9[1] = mapBcmStatusToApple80211IOReturnIEEEStatus(*(a2 + 12));
  v4 = *(a1 + 9);
  v5 = *(v4 + 11288);
  if (v5)
  {
    IO80211Controller::postMessage(a1, v5, 0x4Au, v9, 0x68uLL, 1);
    v4 = *(a1 + 9);
  }

  v6 = *(v4 + 29944);
  if (v6)
  {
    IO80211Controller::postMessage(a1, v6, 0x4Au, v9, 0x68uLL, 1);
  }

  AppleBCMWLANCore::handleExtendedEventData(a1, a2);
  result = AppleBCMWLANJoinAdapter::handleAuth(*(*(a1 + 9) + 5416), a2);
  v8 = *(a1 + 9);
  if (*(v8 + 12152))
  {
    *(v8 + 14108) |= 1u;
    *(*(a1 + 9) + 14112) = mapBcmStatusToApple80211IOReturnScan(*(a2 + 8));
    result = mapBcmStatusToApple80211IOReturnIEEEStatus(*(a2 + 12));
    *(*(a1 + 9) + 14116) = result;
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleAssocEvent(IO80211Controller *a1, uint64_t a2)
{
  v8[0] = mapBcmStatusToApple80211IOReturnScan(*(a2 + 8));
  v8[1] = mapBcmStatusToApple80211IOReturnIEEEStatus(*(a2 + 12));
  v4 = *(a1 + 9);
  v5 = *(v4 + 11288);
  if (v5)
  {
    IO80211Controller::postMessage(a1, v5, 0x4Eu, v8, 8uLL, 1);
    v4 = *(a1 + 9);
  }

  v6 = *(v4 + 29944);
  if (v6)
  {
    IO80211Controller::postMessage(a1, v6, 0x4Eu, v8, 8uLL, 1);
  }

  AppleBCMWLANCore::handleExtendedEventData(a1, a2);
  return AppleBCMWLANJoinAdapter::handleAssoc(*(*(a1 + 9) + 5416), a2);
}

uint64_t AppleBCMWLANCore::handleSetSSIDEvent(IO80211Controller *a1, uint64_t a2)
{
  v8[0] = mapBcmStatusToApple80211IOReturnScan(*(a2 + 8));
  v8[1] = mapBcmReasonToApple80211IOReturnIEEEReason(*(a2 + 12));
  v4 = *(*(a1 + 9) + 11288);
  if (v4)
  {
    IO80211Controller::postMessage(a1, v4, 2u, v8, 8uLL, 1);
  }

  AppleBCMWLANCore::handleExtendedEventData(a1, a2);
  v5 = *(a1 + 9);
  v6 = *(v5 + 11296);
  if (v6)
  {
    IO80211Controller::postMessage(a1, v6, 2u, v8, 8uLL, 1);
    v5 = *(a1 + 9);
  }

  AppleBCMWLANJoinAdapter::handleSetSSID(*(v5 + 5416), a2);
  return AppleBCMWLANCore::collectDtimConfigFromFW(a1);
}

uint64_t AppleBCMWLANCore::handleLinkEvent(void *a1, uint64_t a2)
{
  v3 = a1[9];
  if (*(v3 + 780) < 5u || (*(a2 + 46) | 2) == 2)
  {
    AppleBCMWLANNetAdapter::handleLink(*(v3 + 5600), a2);
    if (AppleBCMWLANBGScanAdapter::generateAndApplyNewPrivateMACForScans(*(a1[9] + 5496)) && (*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleLinkEvent();
      }
    }

    return IO80211BssManager::getCurrentChannel();
  }

  else
  {
    result = (*(*a1 + 1952))(a1);
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleLinkEvent();
      }
    }
  }

  return result;
}

IO80211Controller *AppleBCMWLANCore::handleReassocEvent(IO80211Controller *result, uint64_t a2)
{
  if (*(a2 + 8) != 6)
  {
    v3 = result;
    AppleBCMWLANJoinAdapter::enableSupplicantEvents(*(*(result + 9) + 5416));
    v6[0] = mapBcmStatusToApple80211IOReturnScan(*(a2 + 8));
    v6[1] = mapBcmReasonToApple80211IOReturnIEEEReason(*(a2 + 12));
    v4 = *(*(v3 + 9) + 11288);
    if (v4)
    {
      IO80211Controller::postMessage(v3, v4, 0x49u, v6, 8uLL, 1);
    }

    AppleBCMWLANCore::handleExtendedEventData(v3, a2);
    result = AppleBCMWLANCore::collectWmeParameters(v3);
    atomic_fetch_or((*(v3 + 9) + 10376), 0x20000u);
    v5 = *(v3 + 9);
    if (*(v5 + 12152))
    {
      *(v5 + 14108) |= 2u;
      *(*(v3 + 9) + 14120) = mapBcmStatusToApple80211IOReturnScan(*(a2 + 8));
      result = mapBcmStatusToApple80211IOReturnIEEEStatus(*(a2 + 12));
      *(*(v3 + 9) + 14124) = result;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleRoamScanStartEvent(AppleBCMWLANCore *a1, uint64_t a2)
{
  v34 = 0;
  AppleBCMWLANCore::setBeaconListenInterval(a1);
  *(*(a1 + 9) + 6575) = 1;
  v4 = mapBcmStatusToApple80211IOReturnScan(*(a2 + 8));
  v33[0] = v4;
  v5 = mapBcmReasonToApple80211IOReturnRoam(*(a2 + 12));
  v33[1] = v5;
  v6 = (*(**(*(a1 + 9) + 5392) + 368))();
  if ((v6 - 4377) > 0x16 || ((1 << (v6 - 25)) & 0x400C03) == 0)
  {
    if (!(*(*a1 + 1952))(a1) || ((*(*a1 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a2 + 8);
        v25 = *(a2 + 12);
        *buf = 67110658;
        v36 = 73;
        v37 = 2080;
        v38 = "handleRoamScanStartEvent";
        v39 = 1024;
        v40 = 22171;
        v41 = 1024;
        v42 = v4;
        v43 = 1024;
        *v44 = v24;
        *&v44[4] = 1024;
        *&v44[6] = v5;
        v45 = 1024;
        v46 = v25;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: roamStartEv.status: %d wle->status %d roamStartEv.reason: %d wle->reason: %d \n", buf, 0x30u);
      }
    }

    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        v30 = (*(*a1 + 1952))(a1);
        CCLogStream::logInfo(v30, "[dk] %s@%d:roamStartEv.status: %d wle->status %d roamStartEv.reason: %d wle->reason: %d \n", "handleRoamScanStartEvent", 22171, v4, *(a2 + 8), v5, *(a2 + 12));
      }
    }
  }

  else
  {
    v8 = (a2 + 20);
    if (*(a2 + 20) < 6u)
    {
      if (!(*(*a1 + 1952))(a1) || ((*(*a1 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *v8;
          *buf = 67110146;
          v36 = 65;
          v37 = 2080;
          v38 = "handleRoamScanStartEvent";
          v39 = 1024;
          v40 = 22101;
          v41 = 1024;
          v42 = v12;
          v43 = 2048;
          *v44 = 6;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Insufficient space, wle->datalen[%u] < %lu\n", buf, 0x28u);
        }
      }

      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleRoamScanStartEvent();
        }
      }
    }

    else
    {
      LOWORD(v34) = *(a2 + 52);
      AppleBCMWLANLQM::updateRSSI(*(*(a1 + 9) + 5608), v34);
      if (!(*(*a1 + 1952))(a1) || ((*(*a1 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(a2 + 8);
          v10 = *(a2 + 12);
          *buf = 67110914;
          v36 = 73;
          v37 = 2080;
          v38 = "handleRoamScanStartEvent";
          v39 = 1024;
          v40 = 22098;
          v41 = 1024;
          v42 = v4;
          v43 = 1024;
          *v44 = v9;
          *&v44[4] = 1024;
          *&v44[6] = v5;
          v45 = 1024;
          v46 = v10;
          v47 = 1024;
          v48 = v34;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: roamStartEv.status: %d wle->status %d roamStartEv.reason: %d wle->reason: %d Rssi %d\n", buf, 0x36u);
        }
      }

      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          v11 = (*(*a1 + 1952))(a1);
          CCLogStream::logInfo(v11, "[dk] %s@%d:roamStartEv.status: %d wle->status %d roamStartEv.reason: %d wle->reason: %d Rssi %d\n", "handleRoamScanStartEvent", 22098, v4, *(a2 + 8), v5, *(a2 + 12), v34);
        }
      }
    }

    if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 105) && (*(*(a1 + 9) + 17522) & 2) != 0 && v5 == 4)
    {
      v13 = *(a2 + 50);
      if (v13 <= 7)
      {
        AppleBCMWLANCore::handleRoamScanStartEvent(a1);
      }

      else
      {
        v14 = v13 - 8;
        if (*v8 - 8 < (v13 - 8))
        {
          AppleBCMWLANCore::handleRoamScanStartEvent(a1, v14);
        }

        else if (v13 != 8)
        {
          v15 = 0;
          v16 = 0;
          v17 = a2 + 56;
          while (1)
          {
            if (v17 + 4 >= a2 + 48 + *(a2 + 50))
            {
              AppleBCMWLANCore::handleRoamScanStartEvent();
              goto LABEL_42;
            }

            if (*v17 == 1)
            {
              v32 = *(v17 + 8);
              v18 = *(v17 + 16);
              v31 = *(v17 + 12);
              v20 = *(v17 + 20);
              v19 = *(v17 + 24);
              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  v23 = (*(*a1 + 1952))(a1);
                  CCLogStream::logAlert(v23, "[dk] %s@%d: BSSID %02x:%02x:%02x:%02x:%02x:%02x, RSSI %d roaming due to beacon protection failures -> BSS beacon protection: Unprotected beacon rx count (%d), beacons without MME IE (%d), beacon with mic failure (%d), beacon with replay fails (%d), no. of error since good beacon rx (%d)\n", "handleRoamScanStartEvent", 22152, *(a2 + 24), *(a2 + 25), *(a2 + 26), *(a2 + 27), *(a2 + 28), *(a2 + 29), *(a2 + 52), v32, v31, v18, v20, v19);
                }
              }
            }

            v21 = *(v17 + 2);
            if (v15 + v21 >= 0xFFFC)
            {
              break;
            }

            v22 = v16 + v21;
            v16 += v21 + 4;
            v17 += v21 + 4;
            v15 = (v22 + 4);
            if (v15 >= v14)
            {
              goto LABEL_42;
            }
          }

          AppleBCMWLANCore::handleRoamScanStartEvent();
        }
      }
    }
  }

LABEL_42:
  v26 = *(a1 + 9);
  v27 = *(v26 + 11288);
  if (v27)
  {
    IO80211Controller::postMessage(a1, v27, 0x89u, v33, 0xCuLL, 1);
    v26 = *(a1 + 9);
  }

  v28 = *(v26 + 11296);
  if (v28)
  {
    IO80211Controller::postMessage(a1, v28, 0x89u, 0, 0, 1);
  }

  AppleBCMWLANCore::handleExtendedEventData(a1, a2);
  return AppleBCMWLANLQM::setPendingBssidUpdatePostRoam(*(*(a1 + 9) + 5608), 1);
}

uint64_t AppleBCMWLANCore::handleRoamEvent(AppleBCMWLANCore *a1, uint64_t a2)
{
  ++*(*(a1 + 9) + 18120);
  ++*(*(a1 + 9) + 18152);
  *(*(a1 + 9) + 14146) = *(*(a1 + 9) + 600 * *(*(a1 + 9) + 14164) + 12770);
  isAssociatedOnHighBand = IO80211BssManager::isAssociatedOnHighBand(*(*(a1 + 9) + 5432));
  v30 = 0;
  v29 = 0;
  if (AppleBCMWLANCore::dumpEventLogReportedStats(a1, 7))
  {
    if (!(*(*a1 + 1952))(a1) || ((*(*a1 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        *&buf[4] = 78;
        v32 = 2080;
        v33 = "handleRoamEvent";
        v34 = 1024;
        v35 = 22496;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: LQM-WiFi-Roam: Fail to dump roam target evaluation\n", buf, 0x18u);
      }
    }

    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleRoamEvent();
      }
    }
  }

  *(*(a1 + 9) + 13992) = mapBcmStatusToApple80211IOReturnScan(*(a2 + 8));
  *(*(a1 + 9) + 13996) = mapBcmReasonToApple80211IOReturnRoam(*(a2 + 12));
  *(*(a1 + 9) + 14020) = AppleBCMWLANRoamAdapter::getCurrentRoamProfile(*(*(a1 + 9) + 5568));
  CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(*(*(a1 + 9) + 5432));
  if (!CurrentBSS)
  {
    goto LABEL_29;
  }

  v6 = CurrentBSS;
  if ((*(*CurrentBSS + 696))(CurrentBSS))
  {
    *(*(a1 + 9) + 14016) |= 1u;
  }

  if ((*(*v6 + 704))(v6))
  {
    *(*(a1 + 9) + 14016) |= 2u;
  }

  if ((*(*v6 + 648))(v6))
  {
    *(*(a1 + 9) + 14016) |= 4u;
  }

  if ((*(*v6 + 712))(v6))
  {
    *(*(a1 + 9) + 14016) |= 0x10u;
  }

  if ((*(*v6 + 728))(v6))
  {
    *(*(a1 + 9) + 14016) |= 0x20u;
  }

  if ((*(*v6 + 720))(v6))
  {
    *(*(a1 + 9) + 14016) |= 8u;
  }

  if (*(a2 + 8))
  {
    v7 = (*(*v6 + 184))(v6);
    if (v7)
    {
      *(*(a1 + 9) + 14048) = *v7;
      *(*(a1 + 9) + 14049) = *(v7 + 1);
      *(*(a1 + 9) + 14050) = *(v7 + 2);
      v8 = *(a1 + 9);
      v9 = *(v7 + 4);
      *(v8 + 14080) = *v7;
      *(v8 + 14084) = v9;
    }

    *(*(a1 + 9) + 14032) = (*(*v6 + 256))(v6);
    IO80211BssManager::getCurrentRSSI(*(*(a1 + 9) + 5432), (*(a1 + 9) + 14024));
    (*(*v6 + 264))(v6);
    ChanSpecConvToApple80211Channel();
    *(*(a1 + 9) + 14040) = v30;
  }

  v10 = *(a2 + 12);
  if (!((v10 != 1) | isAssociatedOnHighBand & 1))
  {
    if (*(*(a1 + 9) + 14024) >= -64)
    {
      *(*(a1 + 9) + 13996) = mapBcmReasonToApple80211IOReturnRoam(8);
    }

LABEL_29:
    v10 = *(a2 + 12);
  }

  if (v10 == 1 && (IO80211BssManager::isAssociatedOn5G(*(*(a1 + 9) + 5432)) & 1) == 0 && *(*(a1 + 9) + 14024) >= -64)
  {
    *(*(a1 + 9) + 13996) = mapBcmReasonToApple80211IOReturnRoam(8);
  }

  *buf = 0;
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  *(*(a1 + 9) + 14008) = *buf / 0xF4240uLL;
  *(*(a1 + 9) + 14060) = IO80211BssManager::getCurrentAuthType(*(*(a1 + 9) + 5432));
  *(*(a1 + 9) + 14068) = IO80211BssManager::getCurrentBSSAKMs(*(*(a1 + 9) + 5432));
  if (*(*(a1 + 9) + 12153) == 1)
  {
    if (!(*(*a1 + 1952))(a1) || ((*(*a1 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        *&buf[4] = 65;
        v32 = 2080;
        v33 = "handleRoamEvent";
        v34 = 1024;
        v35 = 22546;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Using simulated roam status substate\n", buf, 0x18u);
      }
    }

    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleRoamEvent();
      }
    }

    *(*(a1 + 9) + 14108) = *(*(a1 + 9) + 12164);
    *(*(a1 + 9) + 14112) = *(*(a1 + 9) + 12168);
    *(*(a1 + 9) + 14116) = *(*(a1 + 9) + 12172);
    *(*(a1 + 9) + 14120) = *(*(a1 + 9) + 12176);
    *(*(a1 + 9) + 14124) = *(*(a1 + 9) + 12180);
    *(*(a1 + 9) + 14128) = *(*(a1 + 9) + 12184);
    *(*(a1 + 9) + 14132) = *(*(a1 + 9) + 12188);
  }

  v11 = *(a2 + 8);
  if (v11 != 3)
  {
    goto LABEL_48;
  }

  if (AppleBCMWLANCore::getRoamNoNetworkReason(a1, a2))
  {
    *(*(a1 + 9) + 13992) = -528350133;
  }

  v11 = *(a2 + 8);
  if (v11 == 3)
  {
    ++*(*(a1 + 9) + 18112);
    ++*(*(a1 + 9) + 18144);
    v12 = *(a1 + 9) + 600 * *(*(a1 + 9) + 14164);
    ++*(v12 + 12768);
    v13 = *(a1 + 9);
    v14 = *(v13 + 600 * *(v13 + 14164) + 12768);
    v15 = 14144;
  }

  else
  {
LABEL_48:
    switch(v11)
    {
      case 1:
        v18 = *(a1 + 9) + 600 * *(*(a1 + 9) + 14164);
        ++*(v18 + 12774);
        v13 = *(a1 + 9);
        v14 = *(v13 + 600 * *(v13 + 14164) + 12774);
        v15 = 14150;
        break;
      case 2:
        v17 = *(a1 + 9) + 600 * *(*(a1 + 9) + 14164);
        ++*(v17 + 12773);
        v13 = *(a1 + 9);
        v14 = *(v13 + 600 * *(v13 + 14164) + 12773);
        v15 = 14149;
        break;
      case 4:
        v16 = *(a1 + 9) + 600 * *(*(a1 + 9) + 14164);
        ++*(v16 + 12772);
        v13 = *(a1 + 9);
        v14 = *(v13 + 600 * *(v13 + 14164) + 12772);
        v15 = 14148;
        break;
      default:
        goto LABEL_55;
    }
  }

  *(v13 + v15) = v14;
LABEL_55:
  AppleBCMWLANCore::handleExtendedEventData(a1, a2);
  AppleBCMWLANNetAdapter::handleRoam(*(*(a1 + 9) + 5600), a2);
  AppleBCMWLANRoamAdapter::restoreReassocParams(*(*(a1 + 9) + 5568));
  AppleBCMWLANCore::collectDtimConfigFromFW(a1);
  result = AppleBCMWLANBssManager::getCurrentBSS(*(*(a1 + 9) + 5432));
  if (result)
  {
    result = AppleBCMWLANCore::postRoamCompletionStatus(a1);
  }

  if (!*(a2 + 8))
  {
    *(*(a1 + 9) + 600 * *(*(a1 + 9) + 14164) + 12780) = *(a2 + 12);
    v20 = (*(*a1 + 1992))(a1, 0);
    v21 = OSMetaClassBase::safeMetaCast(v20, gAppleBCMWLANSkywalkInterfaceMetaClass);
    *buf = 0;
    v28 = 0;
    if (v21)
    {
      AppleBCMWLANSkywalkInterface::retrievePendingPacketsOnRoam(v21, buf, &v28);
      v22 = buf[0];
      v23 = v28;
    }

    else
    {
      v23 = 0;
      v22 = 0;
    }

    *(*(a1 + 9) + 600 * *(*(a1 + 9) + 14164) + 12776) = v22;
    *(*(a1 + 9) + 600 * *(*(a1 + 9) + 14164) + 12352) = *(*(a1 + 9) + 600 * *(*(a1 + 9) + 14164) + 12776);
    *(*(a1 + 9) + 600 * *(*(a1 + 9) + 14164) + 12777) = v23;
    *(*(a1 + 9) + 600 * *(*(a1 + 9) + 14164) + 12353) = *(*(a1 + 9) + 600 * *(*(a1 + 9) + 14164) + 12777);
    result = AppleBCMWLANBssManager::getCurrentBSS(*(*(a1 + 9) + 5432));
    if (result)
    {
      result = (*(*result + 752))(result);
      *(*(a1 + 9) + 600 * *(*(a1 + 9) + 14164) + 12788) = result;
    }

    v24 = *(a1 + 9);
    if ((*(v24 + 14160) & 1) == 0)
    {
      result = AppleBCMWLANCore::printRoamInfo(a1, *(v24 + 14164));
      ++*(*(a1 + 9) + 14164);
      v25 = *(a1 + 9);
      v26 = *(v25 + 14164);
      if (v26 > 2)
      {
        v26 = 0;
      }

      *(v25 + 14164) = v26;
      v27 = *(a1 + 9) + 600 * *(*(a1 + 9) + 14164);
      *(v27 + 12768) = 0;
      *(v27 + 12760) = 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleRoamPrepEvent(IO80211Controller *a1, uint64_t a2)
{
  v4 = *(a2 + 12);
  v32 = 0;
  v31[0] = v4;
  v5 = (*(**(*(a1 + 9) + 5392) + 368))(*(*(a1 + 9) + 5392));
  if ((v5 - 4377) <= 0x16 && ((1 << (v5 - 25)) & 0x400C03) != 0)
  {
    if (*(a2 + 20) < 8u)
    {
      if (!(*(*a1 + 1952))(a1) || ((*(*a1 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a2 + 20);
          *buf = 67110146;
          v34 = 65;
          v35 = 2080;
          v36 = "handleRoamPrepEvent";
          v37 = 1024;
          v38 = 22017;
          v39 = 1024;
          v40 = v8;
          v41 = 2048;
          *v42 = 8;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Insufficent space, wle->datalen[%u] < %zu\n", buf, 0x28u);
        }
      }

      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleRoamPrepEvent();
        }
      }

      v7 = 0;
    }

    else
    {
      HIWORD(v32) = *(a2 + 52);
      v7 = SHIWORD(v32);
      *(*(a1 + 9) + 14028) = SHIWORD(v32);
    }

    if (!(*(*a1 + 1952))(a1) || ((*(*a1 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a2 + 12);
        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v10 = *(a2 + 24);
        }

        else
        {
          v10 = 0;
        }

        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v11 = *(a2 + 25);
        }

        else
        {
          v11 = 0;
        }

        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v12 = *(a2 + 26);
        }

        else
        {
          v12 = 0;
        }

        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v13 = *(a2 + 27);
        }

        else
        {
          v13 = 0;
        }

        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v14 = *(a2 + 28);
        }

        else
        {
          v14 = 0;
        }

        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v15 = *(a2 + 29);
        }

        else
        {
          v15 = 0;
        }

        v16 = *(*(a1 + 9) + 14028);
        *buf = 67111938;
        v34 = 65;
        v35 = 2080;
        v36 = "handleRoamPrepEvent";
        v37 = 1024;
        v38 = 22027;
        v39 = 1024;
        v40 = v9;
        v41 = 1024;
        *v42 = v10;
        *&v42[4] = 1024;
        *&v42[6] = v11;
        v43 = 1024;
        v44 = v12;
        v45 = 1024;
        v46 = v13;
        v47 = 1024;
        v48 = v14;
        v49 = 1024;
        v50 = v15;
        v51 = 1024;
        v52 = v7;
        v53 = 1024;
        v54 = v16;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Roam reason:%d addr = %02X:%02X:%02X:%02X:%02X:%02X  Roam RSSI:%d Target RSSI:%d\n", buf, 0x4Eu);
      }
    }

    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        v23 = (*(*a1 + 1952))(a1);
        v24 = *(a2 + 12);
        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v25 = *(a2 + 24);
        }

        else
        {
          v25 = 0;
        }

        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v26 = *(a2 + 25);
        }

        else
        {
          v26 = 0;
        }

        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v27 = *(a2 + 26);
        }

        else
        {
          v27 = 0;
        }

        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v28 = *(a2 + 27);
        }

        else
        {
          v28 = 0;
        }

        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v29 = *(a2 + 28);
        }

        else
        {
          v29 = 0;
        }

        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v30 = *(a2 + 29);
        }

        else
        {
          v30 = 0;
        }

        CCLogStream::logAlert(v23, "[dk] %s@%d:Roam reason:%d addr = %02X:%02X:%02X:%02X:%02X:%02X  Roam RSSI:%d Target RSSI:%d\n", "handleRoamPrepEvent", 22027, v24, v25, v26, v27, v28, v29, v30, v7, *(*(a1 + 9) + 14028));
      }
    }
  }

  v31[1] = *(a2 + 24);
  LOWORD(v32) = *(a2 + 28);
  v17 = *(a1 + 9);
  v18 = *(v17 + 11288);
  if (v18)
  {
    IO80211Controller::postMessage(a1, v18, 0x8Bu, v31, 0xCuLL, 1);
    v17 = *(a1 + 9);
  }

  v19 = *(v17 + 11296);
  if (v19)
  {
    IO80211Controller::postMessage(a1, v19, 0x8Bu, 0, 0, 1);
  }

  AppleBCMWLANCore::handleExtendedEventData(a1, a2);
  result = AppleBCMWLANCore::setBeaconListenInterval(a1);
  ++*(*(a1 + 9) + 12152);
  v21 = *(a1 + 9) + 14100;
  v22 = *(a2 + 28);
  *v21 = *(a2 + 24);
  *(v21 + 4) = v22;
  return result;
}

uint64_t AppleBCMWLANCore::handleMICErrorEvent(IO80211Controller *a1, uint64_t a2)
{
  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 0))
  {
    v4 = *(*(a1 + 9) + 11288);
    if (v4)
    {
      if ((*(a2 + 2) & 4) != 0)
      {
        v5 = 6;
      }

      else
      {
        v5 = 5;
      }

      IO80211Controller::postMessage(a1, v4, v5, (a2 + 24), 6uLL, 1);
    }
  }

  result = (*(*a1 + 1952))(a1);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::handleMICErrorEvent();
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleCountryCodeChangedEvent(AppleBCMWLANCore *a1, uint64_t a2)
{
  if (*(a2 + 20) > 2u)
  {
    v4 = a1 + 72;
    strlcpy((*(a1 + 9) + 6744), (a2 + 48), 3uLL);
    *(*v4 + 6747) = 0;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleCountryCodeChangedEvent();
      }
    }

    AppleBCMWLANCore::setLMTPC(a1);
    v5 = strncmp((*(a1 + 9) + 6748), (*(a1 + 9) + 6744), 4uLL);
    result = (*(*a1 + 1952))(a1);
    if (v5)
    {
      if (result)
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleCountryCodeChangedEvent();
        }
      }

      strlcpy((*(a1 + 9) + 6748), (*(a1 + 9) + 6744), 4uLL);
      *(*(a1 + 9) + 6751) = 0;
      result = AppleBCMWLANCore::handleCountryCodeChangeToRepopulateChannels(a1);
    }

    else
    {
      if (result)
      {
        (*(*a1 + 1952))(a1);
        result = CCLogStream::shouldLog();
        if (result)
        {
          result = AppleBCMWLANCore::handleCountryCodeChangedEvent();
        }
      }

      v6 = *v4;
      v7 = *(*v4 + 29944);
      if (v7)
      {
        result = IO80211Controller::postMessage(a1, v7, 0xBu, 0, 0, 1);
        v6 = *(a1 + 9);
      }

      v8 = *(v6 + 11296);
      if (v8)
      {
        result = IO80211Controller::postMessage(a1, v8, 0xBu, 0, 0, 1);
      }
    }

    v9 = *(*v4 + 11288);
    if (v9)
    {

      return IO80211Controller::postMessage(a1, v9, 0xBu, 0, 0, 1);
    }
  }

  else
  {
    result = (*(*a1 + 1952))(a1);
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleCountryCodeChangedEvent();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleICVErrorEvent(IO80211Controller *a1, uint64_t a2)
{
  v7[0] = mapBcmStatusToApple80211IOReturnIEEEStatus(*(a2 + 8));
  v7[1] = mapBcmReasonToApple80211IOReturnIEEEReason(*(a2 + 12));
  v4 = *(a1 + 9);
  v5 = *(v4 + 11288);
  if (v5)
  {
    IO80211Controller::postMessage(a1, v5, 0xEu, v7, 8uLL, 1);
    v4 = *(a1 + 9);
  }

  AppleBCMWLANJoinAdapter::handleICVErrorEvent(*(v4 + 5416), a2);
  result = (*(*a1 + 1952))(a1);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::handleICVErrorEvent();
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handlePSKEvent(AppleBCMWLANCore *a1, uint64_t a2)
{
  updated = AppleBCMWLANCore::updateTransitionDisabledInfo(a1, a2);
  if (*(a2 + 8) == 6 && (v5 = updated, AppleBCMWLANCore::featureFlagIsBitSet(a1, 65)))
  {
    AppleBCMWLANJoinAdapter::updateTransDisabledModeAsync(*(*(a1 + 9) + 5416), v5);
  }

  else
  {
    v5 = 0x80000000;
  }

  v16 = -1431655766;
  v13[0] = mapBcmStatusToApple80211IOReturnScan(*(a2 + 8));
  v13[1] = mapBcmReasonToApple80211IOReturnSupplicant(*(a2 + 12));
  v13[2] = mapBcmSupplicantEventToAppleStatus(*(a2 + 8), *(a2 + 12));
  v13[3] = v5;
  v14 = 0uLL;
  v15 = 0;
  LOBYTE(v16) = AppleBCMWLANJoinAdapter::isJoining(*(*(a1 + 9) + 5416));
  v6 = (*(**(*(a1 + 9) + 5392) + 368))();
  if ((v6 - 4378) <= 0x15 && ((1 << (v6 - 26)) & 0x200601) != 0)
  {
    if (*(a2 + 20) < 0x1Eu)
    {
      if (!(*(*a1 + 1952))(a1) || ((*(*a1 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a2 + 20);
          *buf = 67110146;
          v18 = 65;
          v19 = 2080;
          v20 = "handlePSKEvent";
          v21 = 1024;
          v22 = 21692;
          v23 = 1024;
          v24 = v8;
          v25 = 2048;
          v26 = 30;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Insufficent space, wle->datalen[%u] < %zu\n", buf, 0x28u);
        }
      }

      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handlePSKEvent();
        }
      }
    }

    else if (*(a2 + 53) == 57)
    {
      v14 = *(a2 + 58);
      v15 = *(a2 + 74);
    }
  }

  v9 = *(a1 + 9);
  v10 = *(v9 + 11288);
  if (v10)
  {
    IO80211Controller::postMessage(a1, v10, 0x4Cu, v13, 0x28uLL, 1);
    v9 = *(a1 + 9);
  }

  result = AppleBCMWLANJoinAdapter::handleSupplicantEvent(*(v9 + 5416), a2);
  v12 = *(a1 + 9);
  if (*(v12 + 12152))
  {
    *(v12 + 14108) |= 4u;
    *(*(a1 + 9) + 14128) = mapBcmStatusToApple80211IOReturnScan(*(a2 + 8));
    result = mapBcmReasonToApple80211IOReturnSupplicant(*(a2 + 12));
    *(*(a1 + 9) + 14132) = result;
  }

  return result;
}

uint64_t AppleBCMWLANCore::handlePruneEvent(IO80211Controller *a1, uint64_t a2)
{
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::handlePruneEvent();
    }
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::handlePruneEvent();
    }
  }

  v8 = -1431655766;
  v7[0] = mapBcmStatusToApple80211IOReturnScan(*(a2 + 8));
  result = mapBcmReasonToApple80211IOReturnPrune(*(a2 + 12));
  v5 = *(a2 + 24);
  v7[1] = result;
  v7[2] = v5;
  LOWORD(v8) = *(a2 + 28);
  v6 = *(*(a1 + 9) + 11288);
  if (v6)
  {
    return IO80211Controller::postMessage(a1, v6, 0x4Bu, v7, 0x10uLL, 1);
  }

  return result;
}

void AppleBCMWLANCore::handlePSMWatchdog(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 12);
  if (v4 == 1)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handlePSMWatchdog();
      }
    }
  }

  else
  {
    v5 = *(a2 + 8);
    if (v4 == 3 && v5 == 3)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handlePSMWatchdog();
        }
      }
    }

    else if (!(v5 | v4))
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handlePSMWatchdog();
        }
      }
    }
  }

  AppleBCMWLANCore::reportMicrocodeLockup(a1, a2);
}

void *AppleBCMWLANCore::handlePMAlertEvent(IOService *a1, uint64_t a2, const void **a3)
{
  v21 = 0;
  AppleBCMWLANCore::retrieveExcessPMParams(a1, a2, &v21);
  v5 = v21;
  HIDWORD(a1[1].OSObject::OSObjectInterface::__vftable[412].init) = v21 != 0;
  v6 = a1[1].OSObject::OSObjectInterface::__vftable;
  if (!*(v6 + 8882))
  {
    v20 = 0;
    *&values = a1;
    *(&values + 1) = AppleBCMWLANCore::handleExcessPMPeriodAsyncCallBack;
    v31 = 0;
    v7 = *(v6 + 676);
    *buf = &v20;
    *v23 = 4;
    v8 = AppleBCMWLANCommander::sendIOVarSet(v7, "excess_pm_period", buf, kNoRxExpected, &values, 0);
    if (v8)
    {
      v9 = v8;
      if (!(a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1) || ((a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v10 = (a1->OSObject::OSMetaClassBase::__vftable[2].getMetaClass)(a1, v9);
          *buf = 67110146;
          *&buf[4] = 65;
          *v23 = 2080;
          *&v23[2] = "handlePMAlertEvent";
          v24 = 1024;
          v25 = 22910;
          v26 = 1024;
          v27 = v9;
          v28 = 2080;
          v29 = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d:  cannot set excess_pm_period to 0 : ret %x: %s  -> got WLC_E_PM_ALERT\n", buf, 0x28u);
        }
      }

      if ((a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1))
      {
        (a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handlePMAlertEvent();
        }
      }
    }

    v20 = 0;
    *&values = a1;
    *(&values + 1) = AppleBCMWLANCore::handleExcessPMPercentAsyncCallBack;
    v31 = 0;
    init = a1[1].OSObject::OSObjectInterface::__vftable[338].init;
    *buf = &v20;
    *v23 = 4;
    v12 = AppleBCMWLANCommander::sendIOVarSet(init, "excess_pm_percent", buf, kNoRxExpected, &values, 0);
    if (v12)
    {
      v13 = v12;
      if (!(a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1) || ((a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v14 = (a1->OSObject::OSMetaClassBase::__vftable[2].getMetaClass)(a1, v13);
          *buf = 67110146;
          *&buf[4] = 65;
          *v23 = 2080;
          *&v23[2] = "handlePMAlertEvent";
          v24 = 1024;
          v25 = 22922;
          v26 = 1024;
          v27 = v13;
          v28 = 2080;
          v29 = v14;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d:  cannot set excess_pm_percent to 0 : ret %x: %s  -> got WLC_E_PM_ALERT\n", buf, 0x28u);
        }
      }

      if ((a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1))
      {
        (a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handlePMAlertEvent();
        }
      }
    }

    *&values = a1;
    *(&values + 1) = AppleBCMWLANCore::handleGetPowerSaveModeAsyncCallBack;
    v31 = 0;
    v15 = a1[1].OSObject::OSObjectInterface::__vftable[338].init;
    *buf = 262148;
    if (AppleBCMWLANCommander::sendIOCtlGet(v15, 85, &kNoTxPayload, buf, &values, 0))
    {
      if (!(a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1) || ((a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = 73;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c Failed to get Current Power Save Mode\n", buf, 8u);
        }
      }

      if ((a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1))
      {
        (a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handlePMAlertEvent();
        }
      }
    }

    v6 = a1[1].OSObject::OSObjectInterface::__vftable;
  }

  result = IO80211BssManager::isAssociated(*(v6 + 679));
  if (result)
  {
    v17 = a1[1].OSObject::OSObjectInterface::__vftable;
    if (*(v17 + 1646))
    {
      *(v17 + 1647) = 1;
    }

    else
    {
      if (*(v17 + 1411))
      {
        if (!(a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1) || ((a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109634;
            *&buf[4] = 65;
            *v23 = 2080;
            *&v23[2] = "handlePMAlertEvent";
            v24 = 1024;
            v25 = 22947;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d:  Send BLACKLIST_NETWORK\n", buf, 0x18u);
          }
        }

        if ((a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1))
        {
          (a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::handlePMAlertEvent();
          }
        }

        result = IO80211Controller::postMessage(a1, a1[1].OSObject::OSObjectInterface::__vftable[705].free, 0x23u, 0, 0, 1);
        v17 = a1[1].OSObject::OSObjectInterface::__vftable;
      }

      *(v17 + 1647) = 0;
    }
  }

  else
  {
    if (!(a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1) || ((a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        *&buf[4] = 65;
        *v23 = 2080;
        *&v23[2] = "handlePMAlertEvent";
        v24 = 1024;
        v25 = 22953;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Received PM ALERT Event in Un-Associated Sleep Mode\n", buf, 0x18u);
      }
    }

    result = (a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1);
    if (result)
    {
      (a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = AppleBCMWLANCore::handlePMAlertEvent();
      }
    }
  }

  if (v5)
  {
    *buf = OSString::withCString("FirmwareEvent.bin");
    *&values = OSData::withBytes(a3[1], *a3);
    v18 = a1[1].OSObject::OSObjectInterface::__vftable[346].init;
    v19 = OSDictionary::withObjects(&values, buf, 1u, 0);
    CCFaultReporter::reportFault(v18, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x59B6u, "handlePMAlertEvent", v19, -469793529, 0);
    return AppleBCMWLANUtil::releaseOSObjectArray(buf, &values, 1);
  }

  return result;
}

void *AppleBCMWLANCore::handleTraceEvent(void *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 20);
  if (v3 <= 0xF)
  {
    return AppleBCMWLANCore::handleTraceEvent();
  }

  if (*(a2 + 48) == 1)
  {
    v5 = bswap32(*(a2 + 50)) >> 16;
    v6 = v5 + 16;
    if (v5 + 16 <= v3)
    {
      if (*(a2 + 49) == 1)
      {
        v8 = v3 - 16;
        if (v8 >= v5)
        {
          v9 = v5;
        }

        else
        {
          v9 = v8;
        }

        v10 = OSData::withBytesNoCopy((a2 + 64), v9);
        if (v10)
        {
          v11 = v10;
          v12 = AppleBCMWLANCore::handleMsgTraceBlock(v2, v10);
          result = (v11->release)(v11);
          if (!v12)
          {
            return result;
          }
        }

        else if ((*(*v2 + 1952))(v2))
        {
          (*(*v2 + 1952))(v2);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::handleTraceEvent();
          }
        }

        IO80211Hexdump();
        keys = OSString::withCString("RawTraceEvent.bin");
        values = OSData::withBytes(a2, *(a2 + 20) + 48);
        v13 = *(v2[9] + 5536);
        v14 = OSDictionary::withObjects(&values, &keys, 1u, 0);
        CCFaultReporter::reportFault(v13, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x546Bu, "handleTraceEvent", v14, -469793521, 0);
        return AppleBCMWLANUtil::releaseOSObjectArray(&keys, &values, 1);
      }
    }

    else
    {
      result = (*(*result + 1952))(result);
      if (result)
      {
        (*(*v2 + 1952))(v2);
        result = CCLogStream::shouldLog();
        if (result)
        {
          v7 = (*(*v2 + 1952))(v2);
          return CCLogStream::logAlert(v7, "[dk] %s@%d: Invalid trace event payload length %u allowed %u\n", "handleTraceEvent", 21578, v6, *(a2 + 20));
        }
      }
    }
  }

  else
  {
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v2 + 1952))(v2);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleTraceEvent();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::csaReceived(unint64_t this)
{
  if (IO80211BssManager::isAssociated(*(*(this + 72) + 5432)))
  {
    v8[0] = this;
    v8[1] = AppleBCMWLANCore::handleBcnLiBcnIoVarAsyncCallBack;
    v8[2] = 0;
    v7 = 1;
    *(*(this + 72) + 19832) = 1;
    v2 = *(*(this + 72) + 5408);
    v6[0] = &v7;
    v6[1] = 8;
    v3 = AppleBCMWLANCommander::sendIOVarSet(v2, "bcn_li_bcn", v6, kNoRxExpected, v8, 0);
    if (v3)
    {
      v4 = v3;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::csaReceived(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v7, v4);
        }
      }
    }

    IO80211Controller::postMessage(this, *(*(this + 72) + 11288), 0xD1u, 0, 0, 1);
    return AppleBCMWLANLQM::setCsaReceived(*(*(this + 72) + 5608));
  }

  else
  {
    result = (*(*this + 1952))(this);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::csaReceived();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleWSECEvent(IO80211Controller *a1, uint64_t a2)
{
  v22 = 0;
  isDevFusedOrCSRInternal = AppleBCMWLAN_isDevFusedOrCSRInternal();
  if (*(a2 + 20) <= 5u)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleWSECEvent();
      }
    }

LABEL_20:
    v16 = "UNKNOWN";
    return CCFaultReporter::reportFault(*(*(a1 + 9) + 5536), 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x6080u, "handleWSECEvent", 0, -469793486, "%s", v16);
  }

  if (isDevFusedOrCSRInternal)
  {
    IOParseBootArgNumber("wlan.wsec.reassoc", &v22 + 1, 1);
    IOParseBootArgNumber("wlan.wsec.disassoc", &v22, 1);
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::handleWSECEvent();
    }
  }

  if (*(a2 + 52) != 1)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleWSECEvent();
      }
    }

    goto LABEL_20;
  }

  if (*(a2 + 20) <= 0x2Bu)
  {
    AppleBCMWLANCore::handleWSECEvent();
    v16 = v23;
  }

  else
  {
    v5 = IOMallocZeroData();
    if (v5)
    {
      v6 = v5;
      v21 = *(a2 + 60);
      v20 = *(a2 + 56);
      v19 = *(a2 + 72);
      v7 = *(a2 + 70);
      v8 = *(a2 + 78);
      v10 = *(a2 + 80);
      v9 = *(a2 + 84);
      v11 = *(a2 + 88);
      v12 = *(a2 + 76);
      v13 = *(a2 + 68);
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          v18 = (*(*a1 + 1952))(a1);
          CCLogStream::logAlert(v18, "[dk] %s@%d: WLC_WSEC_EVENT_PTK_PN_SYNC_ERROR: TSF[0x%08x%08x] keyID[%d] keyIDX[0x%04x] tid[%d] rx SN[0x%04x] PN[0x%08x%04x], RX PN[0x%08x%04x] span[ time[0x%08x] pkts[0x%04x]  \n", "handleWSECEvent", 24674, v21, v20, *(a2 + 64), v12, *(a2 + 65), v13, v19, v7, v10, v8, v9, v11);
        }
      }

      *v6 = 0x100000011;
      *(v6 + 2) = 1;
      IO80211BssManager::getCurrentBSSID(*(*(a1 + 9) + 5432), v6 + 2);
      *(v6 + 5) = 36;
      v14 = *(a2 + 56);
      v15 = *(a2 + 72);
      *(v6 + 14) = *(a2 + 88);
      *(v6 + 40) = v15;
      *(v6 + 24) = v14;
      IO80211Controller::postMessage(a1, *(*(a1 + 9) + 11288), 0x92u, v6, 0x98uLL, 1);
      IOFreeData();
    }

    else if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleWSECEvent();
      }
    }

    v16 = "WLC_WSEC_EVENT_PTK_PN_SYNC_ERROR";
  }

  return CCFaultReporter::reportFault(*(*(a1 + 9) + 5536), 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x6080u, "handleWSECEvent", 0, -469793486, "%s", v16);
}

uint64_t AppleBCMWLANCore::handleSCChanQualEvent(void *a1, uint64_t a2)
{
  v5 = (a2 + 48);
  v4 = *(a2 + 48);
  if (v4 >= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = 84;
  }

  if (v4 == 6)
  {
    v7 = 80;
  }

  else
  {
    v7 = v6;
  }

  if (v4 >= 6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 72;
  }

  v9 = IOMallocZeroData();
  if (v9)
  {
    v10 = v9;
    if ((v5 & 3) != 0)
    {
      AppleBCMWLANCore::handleSCChanQualEvent();
    }

    else if ((v4 & 0xFFFFFFFC) == 4)
    {
      if (*(a2 + 52) == v8)
      {
        if (*(a2 + 57) == 1)
        {
          if (*(a2 + 58) == 1)
          {
            v11 = *(a2 + 64);
            *v9 = *(a2 + 60);
            *(v9 + 56) = *(a2 + 116);
            *(v9 + 8) = *(a2 + 68);
            *(v9 + 24) = *(a2 + 84);
            *(v9 + 40) = *(a2 + 100);
            *(v9 + 4) = v11;
            v12 = *(a2 + 48);
            if (v12 - 5 <= 1)
            {
              *(v9 + 6) = *(a2 + 66);
            }

            v23 = (v9 + 28);
            v24 = (v9 + 20);
            if (v12 >= 6)
            {
              *(v9 + 60) = *(a2 + 120);
              *(v9 + 64) = *(a2 + 124);
              if (*(a2 + 48) >= 7u)
              {
                *(v9 + 66) = *(a2 + 126);
                *(v9 + 68) = *(a2 + 128);
              }
            }

            AppleBCMWLANChanSpec::getAppleChannelSpec(*(a1[9] + 17744), v11);
            PrimaryChannel = ChanSpecGetPrimaryChannel();
            v25 = PrimaryChannel;
            if (*v10)
            {
              v14 = *v10;
              if (PrimaryChannel > 0x23)
              {
                v15 = ((*v24 / v14) * 100.0);
                v26 = v15;
              }

              else
              {
                v15 = ((50 * *v23) / 100.0) + ((v10[6] / v14) * 100.0);
                if (v15 >= 0x64)
                {
                  v16 = 100;
                }

                else
                {
                  v16 = ((50 * *v23) / 100.0) + ((v10[6] / v14) * 100.0);
                }

                v26 = v16;
              }

              v18 = v15 > 0x19;
              *(a1[9] + 19688) = v18;
            }

            else
            {
              v18 = 0;
              v26 = 0;
            }

            if (*(a1[9] + 18485) == 1)
            {
              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent();
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent();
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent();
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent();
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent();
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent();
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent();
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent();
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent();
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent();
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent();
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent();
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent();
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent();
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent();
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent();
                }
              }

              if ((*v5 - 5) <= 1)
              {
                if ((*(*a1 + 1952))(a1))
                {
                  (*(*a1 + 1952))(a1);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::handleSCChanQualEvent();
                  }
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent();
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent();
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent();
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent();
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent();
                }
              }

              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::handleSCChanQualEvent();
                }
              }
            }

            v19 = *(a1[9] + 5424);
            if (!v19)
            {
              goto LABEL_111;
            }

            if (v18)
            {
              AppleBCMWLANScanAdapter::setSCTxBlankStatus(v19, 4);
              v20 = a1;
              v21 = v26;
            }

            else
            {
              if (!v26)
              {
                AppleBCMWLANScanAdapter::setSCTxBlankStatus(v19, 1);
                ++*(a1[9] + 18088);
                goto LABEL_111;
              }

              AppleBCMWLANScanAdapter::setSCTxBlankStatus(v19, 2);
              v20 = a1;
              v21 = v26;
            }

            AppleBCMWLANCore::updateSCTxBlankingSummary(v20, v21, v25);
LABEL_111:

            return IOFreeData();
          }

          AppleBCMWLANCore::handleSCChanQualEvent();
        }

        else
        {
          AppleBCMWLANCore::handleSCChanQualEvent();
        }
      }

      else
      {
        AppleBCMWLANCore::handleSCChanQualEvent(a1, a2 + 52, v8);
      }
    }

    else
    {
      AppleBCMWLANCore::handleSCChanQualEvent();
    }

    v22 = *(a1[9] + 5536);
    if (v22)
    {
      CCFaultReporter::reportFault(v22, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x6146u, "handleSCChanQualEvent", 0, -469793488, 0);
    }

    goto LABEL_111;
  }

  result = (*(*a1 + 1952))(a1);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::handleSCChanQualEvent();
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleUlOfdmaDisableEvent(uint64_t result, uint64_t a2)
{
  if (*(a2 + 48) != 1)
  {
    v2 = result;
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v2 + 1952))(v2);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleUlOfdmaDisableEvent();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleObssDetectEvent(uint64_t a1, uint64_t a2)
{
  result = (*(*a1 + 1952))(a1);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::handleObssDetectEvent();
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setBeaconListenInterval(uint64_t this)
{
  v2 = *(this + 72);
  if (*(v2 + 8828) == 1)
  {
    result = (*(*this + 1952))(this);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::setBeaconListenInterval();
      }
    }
  }

  else
  {
    v19[0] = this;
    v19[1] = AppleBCMWLANCore::handleBcnLiBcnIoVarAsyncCallBack;
    v19[2] = 0;
    v18 = 1;
    *(v2 + 19832) = 1;
    v4 = *(*(this + 72) + 5408);
    v15 = &v18;
    v16 = 8;
    v5 = AppleBCMWLANCommander::sendIOVarSet(v4, "bcn_li_bcn", &v15, kNoRxExpected, v19, 0);
    if (v5)
    {
      v6 = v5;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setBeaconListenInterval(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v18, v6);
        }
      }
    }

    v17 = 0;
    v18 = 0;
    v15 = this;
    v16 = AppleBCMWLANCore::handleExtDTIMIoVarAsyncCallBack;
    v7 = *(*(this + 72) + 5408);
    v14[0] = &v18;
    v14[1] = 8;
    result = AppleBCMWLANCommander::sendIOVarSet(v7, "bcn_li_dtim", v14, kNoRxExpected, &v15, 0);
    v8 = result;
    v9 = *(this + 72);
    if ((*(v9 + 10378) & 0x80) == 0)
    {
      *(v9 + 19840) = 0;
    }

    if (result)
    {
      result = (*(*this + 1952))(this);
      if (result)
      {
        (*(*this + 1952))(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          v10 = (*(*this + 1952))(this);
          v11 = v18;
          v12 = *(*(this + 72) + 19836);
          v13 = (*(*this + 112))(this, v8);
          return CCLogStream::logAlert(v10, "[dk] %s@%d: Error: cannot disable extended dtim(%d): ret %x: %s\n", "setBeaconListenInterval", 15925, v12, v11, v13);
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordAMPDU(uint64_t this, OSData *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v8 = a4;
  if (OSData::getLength(a2) == a4 + 4)
  {
    v9 = OSData::getLength(a2) + 272;
    v10 = IOMallocZeroData();
    if (v10)
    {
      v11 = v10;
      if (v5 >= 0x4C)
      {
        AppleBCMWLANCore::parseEventLogRecordAMPDU(this, &v24, &v25);
        v13 = v25;
      }

      else
      {
        switch(v5)
        {
          case 0u:
          case 1u:
          case 2u:
          case 3u:
          case 8u:
          case 9u:
          case 0xAu:
          case 0xBu:
          case 0x10u:
          case 0x11u:
          case 0x14u:
          case 0x15u:
          case 0x1Au:
          case 0x1Cu:
          case 0x1Eu:
            v12 = 1;
            goto LABEL_15;
          case 4u:
          case 5u:
          case 6u:
          case 7u:
          case 0xCu:
          case 0xDu:
          case 0xEu:
          case 0xFu:
          case 0x12u:
          case 0x13u:
          case 0x16u:
          case 0x17u:
          case 0x1Bu:
          case 0x1Du:
          case 0x1Fu:
            v12 = 2;
            goto LABEL_15;
          case 0x18u:
          case 0x19u:
          case 0x2Du:
            *v10 = 0;
            break;
          case 0x20u:
          case 0x21u:
          case 0x22u:
          case 0x23u:
          case 0x24u:
          case 0x25u:
          case 0x26u:
          case 0x27u:
          case 0x28u:
          case 0x29u:
          case 0x2Au:
          case 0x2Bu:
          case 0x2Cu:
          case 0x2Eu:
          case 0x2Fu:
          case 0x30u:
          case 0x31u:
          case 0x32u:
          case 0x33u:
          case 0x34u:
          case 0x35u:
          case 0x36u:
          case 0x37u:
          case 0x38u:
          case 0x39u:
          case 0x3Au:
          case 0x3Bu:
          case 0x3Cu:
          case 0x3Du:
          case 0x3Eu:
          case 0x3Fu:
          case 0x40u:
          case 0x41u:
          case 0x42u:
          case 0x43u:
          case 0x44u:
          case 0x45u:
          case 0x46u:
          case 0x47u:
          case 0x48u:
          case 0x49u:
          case 0x4Au:
            v12 = 3;
LABEL_15:
            *v10 = v12;
            break;
          default:
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::parseEventLogRecordAMPDU();
              }
            }

            break;
        }

        switch(v5)
        {
          case 0u:
          case 1u:
          case 2u:
          case 3u:
          case 4u:
          case 5u:
          case 6u:
          case 7u:
          case 0x10u:
          case 0x12u:
          case 0x14u:
          case 0x16u:
          case 0x18u:
          case 0x1Au:
          case 0x1Bu:
          case 0x20u:
          case 0x21u:
          case 0x22u:
          case 0x23u:
          case 0x24u:
          case 0x25u:
          case 0x26u:
          case 0x2Du:
          case 0x2Eu:
          case 0x2Fu:
          case 0x30u:
          case 0x31u:
          case 0x36u:
          case 0x37u:
          case 0x38u:
          case 0x39u:
          case 0x3Eu:
          case 0x3Fu:
          case 0x40u:
          case 0x41u:
          case 0x42u:
          case 0x43u:
          case 0x44u:
            v11[1] = 0;
            break;
          case 8u:
          case 9u:
          case 0xAu:
          case 0xBu:
          case 0xCu:
          case 0xDu:
          case 0xEu:
          case 0xFu:
          case 0x11u:
          case 0x13u:
          case 0x15u:
          case 0x17u:
          case 0x19u:
          case 0x1Cu:
          case 0x1Du:
          case 0x1Eu:
          case 0x1Fu:
          case 0x27u:
          case 0x28u:
          case 0x29u:
          case 0x2Au:
          case 0x2Bu:
          case 0x2Cu:
          case 0x32u:
          case 0x33u:
          case 0x34u:
          case 0x35u:
          case 0x3Au:
          case 0x3Bu:
          case 0x3Cu:
          case 0x3Du:
          case 0x45u:
          case 0x46u:
          case 0x47u:
          case 0x48u:
          case 0x49u:
          case 0x4Au:
            v11[1] = 1;
            break;
          default:
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::parseEventLogRecordAMPDU();
              }
            }

            break;
        }

        switch(v5)
        {
          case 0u:
          case 4u:
          case 8u:
          case 0xCu:
          case 0x2Eu:
          case 0x32u:
            v11[2] = 0;
            break;
          case 1u:
          case 5u:
          case 9u:
          case 0xDu:
          case 0x2Fu:
          case 0x33u:
            v16 = 1;
            goto LABEL_39;
          case 2u:
          case 6u:
          case 0xAu:
          case 0xEu:
          case 0x30u:
          case 0x34u:
            v16 = 2;
            goto LABEL_39;
          case 3u:
          case 7u:
          case 0xBu:
          case 0xFu:
          case 0x31u:
          case 0x35u:
            v16 = 3;
            goto LABEL_39;
          case 0x10u:
          case 0x11u:
          case 0x12u:
          case 0x13u:
            v16 = 4;
            goto LABEL_39;
          case 0x14u:
          case 0x15u:
          case 0x16u:
          case 0x17u:
            v16 = 7;
            goto LABEL_39;
          case 0x18u:
          case 0x19u:
            v16 = 5;
            goto LABEL_39;
          case 0x1Au:
          case 0x1Bu:
          case 0x1Eu:
          case 0x1Fu:
          case 0x20u:
          case 0x28u:
          case 0x3Eu:
          case 0x46u:
            v16 = 8;
            goto LABEL_39;
          case 0x1Cu:
          case 0x1Du:
          case 0x27u:
          case 0x45u:
            v16 = 6;
            goto LABEL_39;
          case 0x21u:
          case 0x3Fu:
            v16 = 10;
            goto LABEL_39;
          case 0x22u:
          case 0x40u:
            v16 = 16;
            goto LABEL_39;
          case 0x23u:
          case 0x41u:
            v16 = 12;
            goto LABEL_39;
          case 0x24u:
          case 0x42u:
            v16 = 15;
            goto LABEL_39;
          case 0x25u:
          case 0x43u:
            v16 = 11;
            goto LABEL_39;
          case 0x26u:
          case 0x2Bu:
          case 0x44u:
          case 0x49u:
            v16 = 17;
            goto LABEL_39;
          case 0x29u:
          case 0x47u:
            v16 = 14;
            goto LABEL_39;
          case 0x2Au:
          case 0x48u:
            v16 = 13;
            goto LABEL_39;
          case 0x2Cu:
          case 0x4Au:
            v16 = 18;
LABEL_39:
            v11[2] = v16;
            break;
          case 0x2Du:
            break;
          default:
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::parseEventLogRecordAMPDU();
              }
            }

            break;
        }

        if (v11[2] != 5)
        {
          v11[3] = v4 >> 2;
          BytesNoCopy = OSData::getBytesNoCopy(a2, 4uLL, v4);
          v20 = v11 + 4;
          v21 = v4;
          goto LABEL_46;
        }

        v17 = OSData::getBytesNoCopy(a2);
        v18 = v17;
        if (v4 <= 7)
        {
          v13 = 3758097084;
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::parseEventLogRecordAMPDU();
            }
          }

LABEL_57:
          IOFreeData();
          return v13;
        }

        if (v17[1] != v4)
        {
          v13 = 3758097084;
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              v23 = (*(*this + 1952))(this);
              CCLogStream::logEmergency(v23, "[dk] %s@%d:Length for Density Distribution len %d, aggregationDens->len %d\n", "parseEventLogRecordAMPDU", 16301, v4, v18[1]);
            }
          }

          goto LABEL_57;
        }

        v21 = (v8 - 8);
        v11[3] = (v8 - 8) >> 2;
        if (v9 >= v21)
        {
          v20 = v11 + 4;
          BytesNoCopy = v18 + 6;
LABEL_46:
          memcpy(v20, BytesNoCopy, v21);
          if (IO80211Controller::setAMPDUstat())
          {
            v13 = 0;
          }

          else
          {
            v13 = 3758097084;
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::parseEventLogRecordAMPDU();
              }
            }
          }

          goto LABEL_57;
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parseEventLogRecordAMPDU();
          }
        }

        v13 = 3758096385;
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parseEventLogRecordAMPDU();
        }
      }

      goto LABEL_57;
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      v13 = 3758097085;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::parseEventLogRecordAMPDU();
      }
    }

    else
    {
      return 3758097085;
    }
  }

  else
  {
    v13 = 3758097084;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        v14 = (*(*this + 1952))(this);
        Length = OSData::getLength(a2);
        CCLogStream::logEmergency(v14, "[dk] %s@%d:Unexpected length payload, total len %d, needs to support nBins %ld totalling %d\n", "parseEventLogRecordAMPDU", 15943, Length, v4 >> 2, v4);
      }
    }
  }

  return v13;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordWLCounters(AppleBCMWLANCore *this, OSData *a2)
{
  v4 = IOMallocZeroData();
  if (!v4)
  {
    return 12;
  }

  if (AppleBCMWLANCore::convertWlCntToApple80211ChipStats(this, a2, v4))
  {
    AppleBCMWLANCore::parseEventLogRecordWLCounters();
LABEL_12:
    v6 = v8;
    goto LABEL_6;
  }

  v5 = *(*(this + 9) + 5608);
  if (v5 && AppleBCMWLANLQM::updateInfraStatistics(v5, a2))
  {
    AppleBCMWLANCore::parseEventLogRecordWLCounters();
    goto LABEL_12;
  }

  v6 = 0;
  if ((IO80211Controller::setChipCounterStats() & 1) == 0)
  {
    AppleBCMWLANCore::parseEventLogRecordWLCounters();
    goto LABEL_12;
  }

LABEL_6:
  IOFreeData();
  return v6;
}

uint64_t AppleBCMWLANCore::convertWlCntToApple80211ChipStats(AppleBCMWLANCore *a1, OSData *a2, unsigned __int16 **a3)
{
  v10 = 0;
  memset(v11, 170, sizeof(v11));
  AppleBCMWLANUtil::AutoreleasedAlignedOSData::AutoreleasedAlignedOSData(v11, a2, 4);
  v5 = v11[0];
  if (v11[0])
  {
    a3[153] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v11[0], 4uLL);
    a3[154] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 8uLL);
    a3[155] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0xCuLL);
    a3[156] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x10uLL);
    a3[157] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x14uLL);
    a3[158] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x18uLL);
    a3[159] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1CuLL);
    a3[160] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x20uLL);
    a3[161] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x24uLL);
    a3[162] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x28uLL);
    a3[163] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x2CuLL);
    a3[164] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x30uLL);
    a3[172] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x40uLL);
    a3[173] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x44uLL);
    a3[174] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x48uLL);
    a3[175] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x4CuLL);
    a3[176] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x50uLL);
    a3[177] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x34CuLL);
    a3[178] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x54uLL);
    a3[179] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x58uLL);
    a3[180] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x5CuLL);
    a3[181] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x60uLL);
    a3[182] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x64uLL);
    a3[183] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x68uLL);
    a3[184] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x6CuLL);
    a3[185] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x70uLL);
    a3[186] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x74uLL);
    a3[187] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x78uLL);
    a3[188] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x7CuLL);
    a3[166] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x34uLL);
    a3[167] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x38uLL);
    a3[168] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x3CuLL);
    a3[169] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x210uLL);
    a3[170] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x2A0uLL);
    a3[190] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x104uLL);
    a3[191] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x108uLL);
    a3[192] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x10CuLL);
    a3[193] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x110uLL);
    a3[194] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x114uLL);
    a3[195] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x118uLL);
    a3[196] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x11CuLL);
    a3[213] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x294uLL);
    a3[214] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x298uLL);
    a3[215] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x29CuLL);
    a3[199] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x120uLL);
    a3[200] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x124uLL);
    a3[201] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x128uLL);
    a3[202] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x12CuLL);
    a3[203] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x130uLL);
    a3[204] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x134uLL);
    a3[205] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x138uLL);
    a3[206] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x13CuLL);
    a3[207] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x140uLL);
    a3[208] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x144uLL);
    a3[209] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x148uLL);
    a3[210] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x14CuLL);
    a3[211] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x150uLL);
    a3[212] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x154uLL);
    a3[22] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x35CuLL);
    a3[23] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1A4uLL);
    a3[24] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x364uLL);
    a3[25] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0xC8uLL);
    a3[26] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0xCCuLL);
    a3[27] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0xD0uLL);
    *a3 = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x360uLL);
    a3[1] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1A0uLL);
    a3[2] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x368uLL);
    CounterValueSafe = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x12CuLL);
    a3[3] = (CounterValueSafe + AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x144uLL));
    v7 = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x130uLL);
    a3[4] = (v7 + AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x148uLL));
    a3[5] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x134uLL);
    a3[122] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x37CuLL);
    a3[123] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x394uLL);
    a3[124] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x384uLL);
    a3[125] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x39CuLL);
    a3[126] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x3B4uLL);
    a3[127] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x3BCuLL);
    a3[128] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0xD8uLL);
    *(*(a1 + 9) + 17504) = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0xD8uLL);
    a3[130] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x38CuLL);
    a3[131] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x3A4uLL);
    a3[132] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x3ACuLL);
    a3[133] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x3C4uLL);
    a3[106] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x380uLL);
    a3[107] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x398uLL);
    a3[108] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x388uLL);
    a3[109] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x3A0uLL);
    a3[110] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x3B8uLL);
    a3[111] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x3C0uLL);
    if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 93))
    {
      a3[118] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x3CCuLL);
    }

    a3[112] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x158uLL);
    *(*(a1 + 9) + 17496) = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x158uLL);
    a3[114] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x390uLL);
    a3[115] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x3A8uLL);
    a3[116] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x3B0uLL);
    a3[117] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x3C8uLL);
    a3[79] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x36CuLL);
    a3[86] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x374uLL);
    a3[48] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x370uLL);
    a3[55] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x378uLL);
    a3[217] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1E0uLL);
    a3[218] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1E4uLL);
    a3[219] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1E8uLL);
    a3[220] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1ECuLL);
    a3[221] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1F0uLL);
    a3[222] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1F4uLL);
    a3[223] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1F8uLL);
    a3[224] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1FCuLL);
    a3[225] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x200uLL);
    a3[226] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x204uLL);
    a3[227] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x208uLL);
    a3[228] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x20CuLL);
    a3[230] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x2B8uLL);
    a3[231] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x2BCuLL);
    a3[232] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x2C0uLL);
    a3[233] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x2C4uLL);
    a3[234] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x2C8uLL);
    a3[235] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x2CCuLL);
    a3[236] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x2D0uLL);
    a3[237] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x2D4uLL);
    a3[238] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x2D8uLL);
    a3[239] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x2DCuLL);
    a3[240] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x2E0uLL);
    a3[241] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x2E4uLL);
    a3[243] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1A8uLL);
    a3[244] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1ACuLL);
    a3[245] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1B0uLL);
    a3[246] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1B4uLL);
    a3[247] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1B8uLL);
    a3[248] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1BCuLL);
    a3[249] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1C0uLL);
    a3[250] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1C4uLL);
    a3[251] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1C8uLL);
    a3[252] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1CCuLL);
    a3[253] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1D0uLL);
    a3[254] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1D4uLL);
    a3[255] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1D8uLL);
    a3[256] = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x1DCuLL);
    v8 = v10;
  }

  else
  {
    v8 = 3758097084;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::convertWlCntToApple80211ChipStats();
      }
    }
  }

  AppleBCMWLANUtil::AutoreleasedAlignedOSData::~AutoreleasedAlignedOSData(v11);
  return v8;
}