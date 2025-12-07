uint64_t AppleBCMWLANNANDataInterface::init(AppleBCMWLANNANDataInterface *this, AppleBCMWLANCore *a2, ether_addr *a3, unsigned int a4, char *a5)
{
  v8 = IO80211VirtualInterface::init(this, a2, a3, a4, a5);
  if (v8)
  {
    if (AppleBCMWLANCore::isHostAssignedInterfaceIndex(a2))
    {
      IO80211SkywalkInterface::setInterfaceId(this, 4u);
      AppleBCMWLANCore::setNanMgtSkywalkInterface(a2, 3u);
    }

    else
    {
      IO80211SkywalkInterface::setInterfaceId(this, 0xFFFFFFFF);
    }

    IO80211SkywalkInterface::setInterfaceRole(this, a4);
    *(*(this + 17) + 8) = a2;
    *(*(this + 17) + 24) = AppleBCMWLANCore::getCommander(a2);
    *(*(this + 17) + 32) = (*(*a2 + 1952))(a2);
    v9 = *(this + 17);
    v10 = *(v9 + 8);
    if (v10)
    {
      *(*(this + 17) + 16) = AppleBCMWLANCore::getP2PNANMgmtDataInterface(v10);
      v9 = *(this + 17);
    }

    *(v9 + 72) = 4;
    *(*(this + 17) + 160) = 0;
    *(*(this + 17) + 164) = 1;
    *(*(this + 17) + 168) = 2;
    *(*(this + 17) + 172) = 3;
  }

  return v8;
}

uint64_t AppleBCMWLANNANDataInterface::start()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: ERROR: NAN data interface parameters invalid\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: ERROR: nan skywalk start fail\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: ERROR: Failed to register NAN data interface with bus interface\n", v3, v4, v5);
}

uint64_t AppleBCMWLANNANDataInterface::registerInterface(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_5_5();
  v5 = (*(v4 + 1088))();
  return CCLogStream::logAlert(v5, "[dk] %s@%d:NANDataInterface: media type report fail, ret[0x%08x]\n", "registerInterface", 277, a3);
}

{
  OUTLINED_FUNCTION_5_5();
  v5 = (*(v4 + 1088))();
  return CCLogStream::logAlert(v5, "[dk] %s@%d:NANDataInterface: set headroom fail fail, ret[0x%08x]\n", "registerInterface", 282, a3);
}

{
  OUTLINED_FUNCTION_5_5();
  v5 = (*(v4 + 1088))();
  return CCLogStream::logAlert(v5, "[dk] %s@%d:%s: FAILED: skywalk NAN data interface registration fail, ret[0x%08x]\n", "registerInterface", 313, "virtual BOOL AppleBCMWLANNANDataInterface::registerInterface()", a3);
}

uint64_t AppleBCMWLANNANDataInterface::stop()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:AppleBCMWLANNANDataInterface Interface Stop\n", "stop", 356);
}

uint64_t AppleBCMWLANNANDataInterface::resetInterface()
{
  OUTLINED_FUNCTION_0_8();
  (*(v3 + 1088))();
  OUTLINED_FUNCTION_3_5();
  (*(v4 + 160))(v1);
  v5 = OUTLINED_FUNCTION_7_6();
  isPoweredOn = AppleBCMWLANCore::isPoweredOn(v5);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s Wifi Driver poweredOn %u \n", "resetInterface", 403, v0, isPoweredOn);
}

uint64_t AppleBCMWLANNANDataInterface::createNANChipInterface(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_8();
  v6 = (*(v5 + 1088))();
  LODWORD(a3) = AppleBCMWLANCore::getFirmwareInterfaceVersion(*(*a3 + 8));
  v7 = (*(*v3 + 160))(v3);
  return CCLogStream::logAlert(v6, "[dk] %s@%d:ALERT: NAN not supported on this FW version %u, cannot create NAN data interface %s\n", "createNANChipInterface", 523, a3, v7);
}

{
  OUTLINED_FUNCTION_0_8();
  (*(v6 + 1088))();
  OUTLINED_FUNCTION_3_5();
  (*(v7 + 920))(v3, a3);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v4, "[dk] %s@%d:ERROR: Cannot create interface for NAN Data, error %s\n", v9, v10, v11);
}

uint64_t AppleBCMWLANNANDataInterface::setInterfaceEnable()
{
  OUTLINED_FUNCTION_1_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_4_6();
  v4 = (*(v3 + 160))(v0);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s:%d ERROR: NAN data interface %s, enable failed!\n", "setInterfaceEnable", 448, "setInterfaceEnable", 448, v4);
}

{
  OUTLINED_FUNCTION_1_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_4_6();
  v4 = (*(v3 + 160))(v0);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: NAN data interface %s not up yet, not enabling queues\n", "setInterfaceEnable", 452, "setInterfaceEnable", v4);
}

uint64_t AppleBCMWLANNANDataInterface::setInterfaceEnable(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_0_8();
  (*(v6 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v8 = (*(v7 + 160))(v3);
  v9 = "disable";
  if (a3)
  {
    v9 = "enable";
  }

  return CCLogStream::logAlert(v4, "[dk] %s@%d:%s:%d NAN Data interface %s %s\n", "setInterfaceEnable", 456, "setInterfaceEnable", 456, v8, v9);
}

uint64_t AppleBCMWLANNANDataInterface::setInterfaceEnable(uint64_t a1, uint64_t a2, char a3, int a4)
{
  OUTLINED_FUNCTION_5_5();
  v8 = (*(v7 + 1088))();
  if (a3)
  {
    v9 = "Enable";
  }

  else
  {
    v9 = "Disable";
  }

  v10 = (*(*a1 + 160))(a1);
  return CCLogStream::logAlert(v8, "[dk] %s@%d:%s: %s on interface %s, ret=0x%08x\n", "setInterfaceEnable", 482, "virtual IOReturn AppleBCMWLANNANDataInterface::setInterfaceEnable(BOOL)", v9, v10, a4);
}

uint64_t AppleBCMWLANNANDataInterface::bringupLink()
{
  OUTLINED_FUNCTION_1_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_4_6();
  v4 = (*(v3 + 160))(v0);
  isPoweredOn = AppleBCMWLANCore::isPoweredOn(*(*(v0 + 136) + 8));
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Bringing up %s NAN data link, powerON %u\n", "bringupLink", 570, v4, isPoweredOn);
}

uint64_t AppleBCMWLANNANDataInterface::bringdownLink()
{
  OUTLINED_FUNCTION_1_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_4_6();
  (*(v3 + 160))(v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Bringing down %s NAN Data link\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANDataInterface::setNAN_INIT(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_0_8();
  (*(v6 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v8 = (*(v7 + 160))(v3);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:ERROR: Creating NAN interface %s failed, ret %d\n", "setNAN_INIT", 599, v8, a3);
}

uint64_t AppleBCMWLANNANDataInterface::setCOMPANION_SKYWALK_IF_CREATE()
{
  OUTLINED_FUNCTION_1_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_4_6();
  (*(v3 + 160))(v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Deletion failed, NAN companion skywalk interface does not exists for %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANDataInterface::setCOMPANION_SKYWALK_IF_CREATE(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_8();
  v6 = (*(v5 + 1088))();
  v7 = (*(**(*a3 + 48) + 160))(*(*a3 + 48));
  v8 = (*(*v3 + 160))(v3);
  return CCLogStream::logAlert(v6, "[dk] %s@%d:ALERT: NAN companion skywalk interface %s already exists for %s\n", "setCOMPANION_SKYWALK_IF_CREATE", 614, v7, v8);
}

uint64_t AppleBCMWLANNANDataInterface::setCOMPANION_SKYWALK_IF_CREATE(uint64_t a1, uint64_t a2, const char *a3)
{
  OUTLINED_FUNCTION_0_8();
  (*(v6 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v8 = (*(v7 + 160))(v3);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Created NAN %s companion low latency skywalk interface %s\n", "setCOMPANION_SKYWALK_IF_CREATE", 639, v8, a3);
}

uint64_t AppleBCMWLANNANDataInterface::handleEvent(uint64_t a1)
{
  OUTLINED_FUNCTION_5_5();
  v3 = (*(v2 + 1088))();
  (*(*a1 + 160))(a1);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v3, v4);
}

uint64_t AppleBCMWLANNANDataInterface::setMacAddress()
{
  OUTLINED_FUNCTION_1_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_4_6();
  (*(v3 + 160))(v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Cannot set MAC address on %s NDI when NMI is not initialized\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANDataInterface::setMacAddress(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_8();
  (*(v6 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v8 = (*(v7 + 160))(v3);
  v9 = (*(*v3 + 920))(v3, a3);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:ERROR: cur_etheraddr failed for %s, error %s\n", "setMacAddress", 699, v8, v9);
}

uint64_t AppleBCMWLANNANDataInterface::enableDatapath()
{
  OUTLINED_FUNCTION_8_6();
  v4 = v3 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  result = (*(v5 + 1088))(v6);
  if (result)
  {
    (*(*v2 + 1088))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v8 = (*(*v2 + 1088))(v2);
      result = CCLogStream::logCrit(v8, "[dk] %s@%d:tx submission queue ac %d not valid\n", "enableDatapath", 793, v1);
    }
  }

  *v0 = v4;
  return result;
}

{
  OUTLINED_FUNCTION_2_6();
  v3 = v2 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  result = (*(v4 + 1088))();
  if (result)
  {
    (*(*v1 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v1 + 1088))(v1);
      result = CCLogStream::logCrit(v6, "[dk] %s@%d:rx completion queue not valid\n", "enableDatapath", 790);
    }
  }

  *v0 = v3;
  return result;
}

{
  OUTLINED_FUNCTION_2_6();
  v3 = v2 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  result = (*(v4 + 1088))();
  if (result)
  {
    (*(*v1 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v1 + 1088))(v1);
      result = CCLogStream::logCrit(v6, "[dk] %s@%d:tx completion queue not valid\n", "enableDatapath", 787);
    }
  }

  *v0 = v3;
  return result;
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:skywalk data path enable fail\n", "enableDatapath", 811);
}

uint64_t AppleBCMWLANNANDataInterface::enableDatapath(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_5_5();
  v5 = (*(v4 + 1088))();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:skywalk rx completion queue enqueue fail with return %d\n", "enableDatapath", 805, a3);
}

uint64_t AppleBCMWLANNANDataInterface::enable()
{
  OUTLINED_FUNCTION_1_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_4_6();
  v4 = (*(v3 + 160))(v0);
  isPoweredOn = AppleBCMWLANCore::isPoweredOn(*(*(v0 + 136) + 8));
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: enabling NAN data interface %s, pwr %d\n", v6, v7, v8, v4, isPoweredOn);
}

uint64_t AppleBCMWLANNANDataInterface::enable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_8();
  (*(v7 + 1088))();
  OUTLINED_FUNCTION_3_5();
  (*(v8 + 160))(v4);
  v9 = OUTLINED_FUNCTION_7_6();
  isPoweredOn = AppleBCMWLANCore::isPoweredOn(v9);
  isWatchdogRunning = AppleBCMWLANCore::isWatchdogRunning(*(*a3 + 8));
  return CCLogStream::logAlert(v5, "[dk] %s@%d:%s data path cannot enable, power state %d, watchdog status %d\n", "enable", 838, v3, isPoweredOn, isWatchdogRunning);
}

uint64_t AppleBCMWLANNANDataInterface::disableDatapath()
{
  OUTLINED_FUNCTION_8_6();
  v4 = v3 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  result = (*(v5 + 1088))(v6);
  if (result)
  {
    (*(*v2 + 1088))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v8 = (*(*v2 + 1088))(v2);
      result = CCLogStream::logCrit(v8, "[dk] %s@%d:tx submission queue ac %d not valid\n", "disableDatapath", 853, v1);
    }
  }

  *v0 = v4;
  return result;
}

{
  OUTLINED_FUNCTION_2_6();
  v3 = v2 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  result = (*(v4 + 1088))();
  if (result)
  {
    (*(*v1 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v1 + 1088))(v1);
      result = CCLogStream::logCrit(v6, "[dk] %s@%d:tx completion queue not valid\n", "disableDatapath", 864);
    }
  }

  *v0 = v3;
  return result;
}

{
  OUTLINED_FUNCTION_2_6();
  v3 = v2 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  result = (*(v4 + 1088))();
  if (result)
  {
    (*(*v1 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v1 + 1088))(v1);
      result = CCLogStream::logCrit(v6, "[dk] %s@%d:rx completion queue not valid\n", "disableDatapath", 861);
    }
  }

  *v0 = v3;
  return result;
}

{
  OUTLINED_FUNCTION_1_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_4_6();
  (*(v3 + 160))(v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:%s: skywalk data path disable fail\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANDataInterface::disable()
{
  OUTLINED_FUNCTION_1_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_4_6();
  v4 = (*(v3 + 160))(v0);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: Interface %s disable\n", "disable", 877, "virtual void AppleBCMWLANNANDataInterface::disable(IOOptionBits)", v4);
}

uint64_t AppleBCMWLANNANInterface::init(AppleBCMWLANNANInterface *this, AppleBCMWLANCore *a2, ether_addr *a3, unsigned int a4, char *a5)
{
  v10 = IO80211VirtualInterface::init(this, a2, a3, a4, a5);
  if (v10)
  {
    if (AppleBCMWLANCore::isHostAssignedInterfaceIndex(a2))
    {
      IO80211SkywalkInterface::setInterfaceId(this, 3u);
      AppleBCMWLANCore::setNanMgtSkywalkInterface(a2, 3u);
    }

    else
    {
      IO80211SkywalkInterface::setInterfaceId(this, 0xFFFFFFFF);
    }

    IO80211SkywalkInterface::setInterfaceRole(this, a4);
    *(*(this + 17) + 64) = a2;
    *(*(this + 17) + 72) = AppleBCMWLANCore::getCommander(a2);
    *(*(this + 17) + 80) = (*(*a2 + 1952))(a2);
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        v12 = (*(*this + 1088))(this);
        InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
        InterfaceRole = IO80211SkywalkInterface::getInterfaceRole(this);
        CCLogStream::logAlert(v12, "[dk] %s@%d:%s: Initializing NAN interface %s, ifId %d, role %d, addr %02x:%02x:%02x:%02x:%02x:%02x\n", "init", 244, "virtual BOOL AppleBCMWLANNANInterface::init(AppleBCMWLANCore *, struct ether_addr *, uint32_t, char *)", a5, InterfaceId, InterfaceRole, a3->octet[0], a3->octet[1], a3->octet[2], a3->octet[3], a3->octet[4], a3->octet[5]);
      }
    }

    *(*(this + 17) + 42) = 80;
    *(*(this + 17) + 43) = 111;
    *(*(this + 17) + 44) = -102;
    *(*(this + 17) + 45) = 1;
    *(*(this + 17) + 46) = 0;
    *(*(this + 17) + 47) = 0;
    *(*(this + 17) + 5) = 6;
    *(*(this + 17) + 6) = 0;
    *(*(this + 17) + 128) = 4;
    *(*(this + 17) + 216) = 0;
    *(*(this + 17) + 220) = 1;
    *(*(this + 17) + 224) = 2;
    *(*(this + 17) + 228) = 3;
  }

  return v10;
}

uint64_t AppleBCMWLANNANInterface::start()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: ERROR: nan skywalk start fail\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: ERROR: Failed to register NAN interface with bus interface\n", v3, v4, v5);
}

uint64_t AppleBCMWLANNANInterface::registerInterface()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s: NANInterface: media type report fail, ret[0x%08x]\n", "registerInterface", 402, "virtual BOOL AppleBCMWLANNANInterface::registerInterface()", v0);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s: NANInterface: set headroom fail, ret[0x%08x]\n", "registerInterface", 407, "virtual BOOL AppleBCMWLANNANInterface::registerInterface()", v0);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s: FAILED: skywalk NAN interface registration fail, ret[0x%08x]\n", "registerInterface", 438, "virtual BOOL AppleBCMWLANNANInterface::registerInterface()", v0);
}

uint64_t AppleBCMWLANNANInterface::stop()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:AppleBCMWLANNANInterface Interface Stop\n", "stop", 479);
}

uint64_t AppleBCMWLANNANInterface::reset()
{
  OUTLINED_FUNCTION_1_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_4_6();
  (*(v3 + 160))(v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Resetting NAN %s Interface\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::resetInterface()
{
  OUTLINED_FUNCTION_0_8();
  (*(v3 + 1088))();
  OUTLINED_FUNCTION_3_5();
  (*(v4 + 160))(v1);
  v5 = OUTLINED_FUNCTION_23_1();
  isPoweredOn = AppleBCMWLANCore::isPoweredOn(v5);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s Wifi Driver poweredOn %u \n", "resetInterface", 540, v0, isPoweredOn);
}

uint64_t AppleBCMWLANNANInterface::createNANChipInterface()
{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1088))();
  v2 = OUTLINED_FUNCTION_23_1();
  AppleBCMWLANCore::getFirmwareInterfaceVersion(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ALERT: NAN not supported on this FW version %u\n", v4, v5, v6);
}

{
  OUTLINED_FUNCTION_0_8();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ERROR: Cannot create interface for NAN, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::setInterfaceEnable()
{
  OUTLINED_FUNCTION_1_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_4_6();
  v4 = (*(v3 + 160))(v0);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s:%d ERROR: NAN interface %s, enable failed!\n", "setInterfaceEnable", 577, "setInterfaceEnable", 577, v4);
}

{
  OUTLINED_FUNCTION_1_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_4_6();
  v4 = (*(v3 + 160))(v0);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: NAN mgmt interface %s not up yet, not enabling queues\n", "setInterfaceEnable", 581, "setInterfaceEnable", v4);
}

uint64_t AppleBCMWLANNANInterface::setInterfaceEnable(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_0_8();
  (*(v6 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v8 = (*(v7 + 160))(v3);
  v9 = "disable";
  if (a3)
  {
    v9 = "enable";
  }

  v15 = v8;
  v16 = v9;
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v4, "[dk] %s@%d:%s:%d NAN interface %s %s\n", v11, v12, v13, v14, v15, v16);
}

uint64_t AppleBCMWLANNANInterface::setInterfaceEnable(uint64_t a1, uint64_t a2, char a3, int a4)
{
  OUTLINED_FUNCTION_7_7();
  v8 = (*(v7 + 1088))();
  if (a3)
  {
    v9 = "Enable";
  }

  else
  {
    v9 = "Disable";
  }

  v10 = (*(*v4 + 160))(v4);
  return CCLogStream::logAlert(v8, "[dk] %s@%d:%s: %s on interface %s, ret=0x%08x\n", "setInterfaceEnable", 611, "virtual IOReturn AppleBCMWLANNANInterface::setInterfaceEnable(BOOL)", v9, v10, a4);
}

uint64_t AppleBCMWLANNANInterface::setMacAddress()
{
  OUTLINED_FUNCTION_0_8();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v4 = (*(v3 + 160))(v0);
  v5 = OUTLINED_FUNCTION_16_2();
  v7 = v6(v5);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: cur_etheraddr failed for %s, error %s\n", "setMacAddress", 697, v4, v7);
}

uint64_t AppleBCMWLANNANInterface::setNAN_InterfaceAddr()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN interface address\n", "setNAN_InterfaceAddr", 4392);
}

uint64_t AppleBCMWLANNANInterface::bringupLink()
{
  OUTLINED_FUNCTION_1_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_4_6();
  v4 = (*(v3 + 160))(v0);
  isPoweredOn = AppleBCMWLANCore::isPoweredOn(*(*(v0 + 136) + 64));
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Bringing up %s NAN link, powerON %u\n", "bringupLink", 708, v4, isPoweredOn);
}

uint64_t AppleBCMWLANNANInterface::bringdownLink()
{
  OUTLINED_FUNCTION_1_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_4_6();
  (*(v3 + 160))(v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Bringing down %s NAN link\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::disableNAN()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN enable to 0\n", "disableNAN", 4240);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Disabling btc slotted bss policy\n", "disableNAN", 4244);
}

uint64_t AppleBCMWLANNANInterface::handleEvent()
{
  OUTLINED_FUNCTION_7_7();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_28_1();
  (*(v3 + 160))(v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, v4);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEvent", 919);
}

uint64_t AppleBCMWLANNANInterface::handleEventNANStateChanged()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleEventNANStateChanged", 952, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Event: NAN State changed \n", "handleEventNANStateChanged", 966);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANStateChanged", 964);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleEventNANStateChanged", 958, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleEventNANStateChanged", 944, v3);
}

uint64_t AppleBCMWLANNANInterface::handleEventNANClusterIDChanged()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleEventNANClusterIDChanged", 1060, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Event: NAN Cluster changed \n", "handleEventNANClusterIDChanged", 1074);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANClusterIDChanged", 1072);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleEventNANClusterIDChanged", 1066, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleEventNANClusterIDChanged", 1052, v3);
}

uint64_t AppleBCMWLANNANInterface::handleEventNANPublishReplied()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleEventNANPublishReplied", 1125, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%d: ERROR: Invalid event data length %d \n", "handleEventNANPublishReplied", 1119, 1119, *v0);
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_25_1();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Event: NAN Publish (%d) Replied to subscriber %02x:%02x:%02x:%02x:%02x:%02x \n", "handleEventNANPublishReplied", 1149, v3, v4, v5, v6, v7, v8, v9);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANPublishReplied", 1158);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANPublishReplied", 1164);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANPublishReplied", 1163);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANPublishReplied", 1159);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANPublishReplied", 1136);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleEventNANPublishReplied", 1131, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%d: ERROR: Invalid event data length %d \n", "handleEventNANPublishReplied", 1091, 1091, *v0);
}

uint64_t AppleBCMWLANNANInterface::handleEventNANPublishTerminated()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleEventNANPublishTerminated", 1185, v3);
}

{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1088))();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Event: NAN Publish %d Terminated, reason %d\n", "handleEventNANPublishTerminated", 1204, *v1, *(v0 + 53));
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANPublishTerminated", 1196);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleEventNANPublishTerminated", 1191, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleEventNANPublishTerminated", 1177, v3);
}

uint64_t AppleBCMWLANNANInterface::handleEventNANSubscribeTerminated()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleEventNANSubscribeTerminated", 1315, v3);
}

{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1088))();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Event: NAN Subscribe %d Terminated, reason %d\n", "handleEventNANSubscribeTerminated", 1333, *v1, *(v0 + 53));
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANSubscribeTerminated", 1326);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleEventNANSubscribeTerminated", 1321, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleEventNANSubscribeTerminated", 1307, v3);
}

uint64_t AppleBCMWLANNANInterface::handleEventNANDiscoveryResultReceived()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleEventNANDiscoveryResultReceived", 1255, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%d: ERROR: Invalid event data length %d \n", "handleEventNANDiscoveryResultReceived", 1249, 1249, *v0);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_25_1();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Event: NAN discovery result for subscribe id = %d, publisher %02x:%02x:%02x:%02x:%02x:%02x\n", "handleEventNANDiscoveryResultReceived", 1278, v3, v4, v5, v6, v7, v8, v9);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANDiscoveryResultReceived", 1288);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANDiscoveryResultReceived", 1294);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANDiscoveryResultReceived", 1293);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANDiscoveryResultReceived", 1289);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANDiscoveryResultReceived", 1266);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleEventNANDiscoveryResultReceived", 1261, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%d: ERROR: Invalid event data length %d \n", "handleEventNANDiscoveryResultReceived", 1221, 1221, *v0);
}

uint64_t AppleBCMWLANNANInterface::handleEventNANFollowupReceived()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleEventNANFollowupReceived", 1385, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%d: ERROR: Invalid event data length %d \n", "handleEventNANFollowupReceived", 1379, 1379, *v0);
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_13();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Followup for instance %d received from %02x:%02x:%02x:%02x:%02x:%02x, instance %d\n", "handleEventNANFollowupReceived", 1410, v3, v4, v5, v6, v7, v8, v9, v10);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANFollowupReceived", 1420);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANFollowupReceived", 1426);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANFollowupReceived", 1425);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANFollowupReceived", 1421);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANFollowupReceived", 1396);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleEventNANFollowupReceived", 1391, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%d: ERROR: Invalid event data length %d \n", "handleEventNANFollowupReceived", 1351, 1351, *v0);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventNAFTxComplete()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventNAFTxComplete", 1507, v3);
}

{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1088))();
  v4 = v3;
  v5 = *(v1 + 54);
  v6 = *v0;
  if (v6 == 1)
  {
    v7 = "SUCCESS";
  }

  else
  {
    v7 = "FAILURE";
  }

  v8 = *(v1 + 53);
  v9 = *(v1 + 56);
  v10 = AppleBCMWLANNANInterface::stringForFrameType(v3, v9);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:NAN Action Frame completed for token %d status %s (%x), reason %x, frame type %s (%x)\n", "handleNANEventNAFTxComplete", 1523, v5, v7, v6, v8, v10, v9);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventNAFTxComplete", 1555);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventNAFTxComplete", 1580);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventNAFTxComplete", 1573);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventNAFTxComplete", 1567);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventNAFTxComplete", 1561);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventNAFTxComplete", 1518);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleNANEventNAFTxComplete", 1513, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleNANEventNAFTxComplete", 1499, v3);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventBeaconReceived()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventBeaconReceived", 1649);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventBeaconReceived", 1673);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventBeaconReceived", 1676, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventBeaconReceived", 1700);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:copy nan beacon frame fail\n", "handleNANEventBeaconReceived", 1728);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:action packet not avaialbe from pool\n", "handleNANEventBeaconReceived", 1722);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventBeaconReceived", 1707);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventBeaconReceived", 1706);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:handleActionFrame_v1_rx: invalid event msg len=%u, expect at least %lu\n", "handleNANEventBeaconReceived", 1645, *v0, 24);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventBeaconReceived", 1632);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Invalid event msg len=%u, expect at least %lu\n", "handleNANEventBeaconReceived", 1622, *v0, 16);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventPeerDataPathIndication()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventPeerDataPathIndication", 1841, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathIndication", 1860);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathIndication", 1897);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathIndication", 1900);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathIndication", 1906);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathIndication", 1911);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathIndication", 1891);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathIndication", 1852);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleNANEventPeerDataPathIndication", 1847, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleNANEventPeerDataPathIndication", 1832, v3);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventPeerDataPathResponse()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventPeerDataPathResponse", 1932, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathResponse", 1951);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathResponse", 1992);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathResponse", 1997);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathResponse", 1982);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathResponse", 1943);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleNANEventPeerDataPathResponse", 1938, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleNANEventPeerDataPathResponse", 1923, v3);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventPeerDataPathConfirm()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventPeerDataPathConfirm", 2017, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathConfirm", 2031);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: optional xtlv type 0x%x mismatch with event\n", "handleNANEventPeerDataPathConfirm", 2033, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathConfirm", 2063);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathConfirm", 2064);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathConfirm", 2067);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathConfirm", 2068);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathConfirm", 2083);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathConfirm", 2082);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid TLV len\n", "handleNANEventPeerDataPathConfirm", 2076);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathConfirm", 2058);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventPeerDataPathConfirm", 2028);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleNANEventPeerDataPathConfirm", 2023, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleNANEventPeerDataPathConfirm", 2009, v3);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventDataPathEstablished()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventDataPathEstablished", 1753, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1088))();
  v20 = v0[66];
  v21 = v0[67];
  v18 = v0[64];
  v19 = v0[65];
  v16 = v0[62];
  v17 = v0[63];
  v14 = v0[60];
  v15 = v0[61];
  v12 = v0[58];
  v13 = v0[59];
  OUTLINED_FUNCTION_13();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Data Path Established with %02x:%02x:%02x:%02x:%02x:%02x, initiator %02x:%02x:%02x:%02x:%02x:%02x, responder %02x:%02x:%02x:%02x:%02x:%02x\n", "handleNANEventDataPathEstablished", 1773, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Enabling btc slotted bss policy\n", "handleNANEventDataPathEstablished", 1783);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventDataPathEstablished", 1763);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleNANEventDataPathEstablished", 1759, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleNANEventDataPathEstablished", 1745, v3);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventDataPathEnd()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventDataPathEnd", 1811, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventDataPathEnd", 1822);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleNANEventDataPathEnd", 1817, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleNANEventDataPathEnd", 1803, v3);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventRangeRequestIndication()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventRangeRequestIndication", 2103, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventRangeRequestIndication", 2114);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleNANEventRangeRequestIndication", 2109, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleNANEventRangeRequestIndication", 2095, v3);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventRangeResponseIndication()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventRangeResponseIndication", 2140, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventRangeResponseIndication", 2151);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleNANEventRangeResponseIndication", 2146, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleNANEventRangeResponseIndication", 2132, v3);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventRangeReportIndication()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventRangeReportIndication", 2178, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventRangeReportIndication", 2189);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleNANEventRangeReportIndication", 2184, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleNANEventRangeReportIndication", 2170, v3);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventRangeTerminateIndication()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventRangeTerminateIndication", 2217, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventRangeTerminateIndication", 2228);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleNANEventRangeTerminateIndication", 2223, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleNANEventRangeTerminateIndication", 2209, v3);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventDWStart()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventDWStart", 2256, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventDWStart", 2276);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventDWStart", 2280);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventDWStart", 2267);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleNANEventDWStart", 2262, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleNANEventDWStart", 2247, v3);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventDWEnd()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventDWEnd", 2320, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventDWEnd", 2340);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventDWEnd", 2344);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventDWEnd", 2331);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleNANEventDWEnd", 2326, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleNANEventDWEnd", 2311, v3);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventChanBoundary()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventChanBoundary", 2424, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventChanBoundary", 2449);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventChanBoundary", 2494);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventChanBoundary", 2473);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventChanBoundary", 2466);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventChanBoundary", 2461);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventChanBoundary", 2455);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventChanBoundary", 2435);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleNANEventChanBoundary", 2430, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleNANEventChanBoundary", 2415, v3);
}

uint64_t AppleBCMWLANNANInterface::handleEventNANMasterChanged()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleEventNANMasterChanged", 990, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANMasterChanged", 1015);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANMasterChanged", 1001);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleEventNANMasterChanged", 996, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleEventNANMasterChanged", 981, v3);
}

uint64_t AppleBCMWLANNANInterface::handleEventNANHostAssistRequest()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleEventNANHostAssistRequest", 2814, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANHostAssistRequest", 2825);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleEventNANHostAssistRequest", 2820, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleEventNANHostAssistRequest", 2806, v3);
}

uint64_t AppleBCMWLANNANInterface::handleEventNANPeerScheduleUpdate()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: tlv type 0x%x mismatch with event\n", "handleEventNANPeerScheduleUpdate", 2855, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANPeerScheduleUpdate", 2876);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANPeerScheduleUpdate", 2916);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANPeerScheduleUpdate", 2922);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANPeerScheduleUpdate", 2921);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANPeerScheduleUpdate", 2866);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleEventNANPeerScheduleUpdate", 2861, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleEventNANPeerScheduleUpdate", 2847, v3);
}

uint64_t AppleBCMWLANNANInterface::handleEventNANFWDataPathTerminated()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleEventNANFWDataPathTerminated", 2944, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DataPath terminated due to %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleEventNANFWDataPathTerminated", 2955);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleEventNANFWDataPathTerminated", 2950, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleEventNANFWDataPathTerminated", 2936, v3);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventOobActionFrameTxStatus()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventOobActionFrameTxStatus", 3047, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventOobActionFrameTxStatus", 3059);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleNANEventOobActionFrameTxStatus", 3054, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleNANEventOobActionFrameTxStatus", 3037, v3);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventOobActionFrameRx()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventOobActionFrameRx", 3123, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventOobActionFrameRx", 3162);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventOobActionFrameRx", 3166);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventOobActionFrameRx", 3167);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventOobActionFrameRx", 3170);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventOobActionFrameRx", 3171);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventOobActionFrameRx", 3175);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventOobActionFrameRx", 3174);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventOobActionFrameRx", 3163);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: AutoreleasedBuffer alloc failure\n", "handleNANEventOobActionFrameRx", 3144);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventOobActionFrameRx", 3135);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleNANEventOobActionFrameRx", 3130, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleNANEventOobActionFrameRx", 3088, v3);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventAuthFrameRx()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: xtlv type 0x%x mismatch with event\n", "handleNANEventAuthFrameRx", 3202, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventAuthFrameRx", 3241);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventAuthFrameRx", 3245);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventAuthFrameRx", 3246);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventAuthFrameRx", 3249);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventAuthFrameRx", 3250);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventAuthFrameRx", 3254);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventAuthFrameRx", 3253);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventAuthFrameRx", 3242);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: AutoreleasedBuffer alloc failure\n", "handleNANEventAuthFrameRx", 3223);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleNANEventAuthFrameRx", 3214);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid xtlv length %d \n", "handleNANEventAuthFrameRx", 3209, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleNANEventAuthFrameRx", 3192, v3);
}

uint64_t AppleBCMWLANNANInterface::handelNANEventInfraAssociatioStart()
{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1088))();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Association start on channel %d bw 0x%x\n", "handelNANEventInfraAssociatioStart", 2597, *v1, *v0);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handelNANEventInfraAssociatioStart", 2590);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handelNANEventInfraAssociatioStart", 2583, v3);
}

uint64_t AppleBCMWLANNANInterface::handleNANEventQuiteIE()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s:%u Quite IE received\n", v3, v4, v5, v6);
}

uint64_t AppleBCMWLANNANInterface::getMCS()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unknown rpsec received from FW\n", "getMCS", 2381);
}

uint64_t AppleBCMWLANNANInterface::getTransmissionMode()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unknown tranmission mode\n", "getTransmissionMode", 2402);
}

uint64_t AppleBCMWLANNANInterface::convertNANFWHostAssistReason()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ALERT: Received unknown reason code (%d) for host assist\n", v3, v4, v5);
}

uint64_t AppleBCMWLANNANInterface::handleNANIovarAsyncCallBack()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  v3 = *v0;
  IOVARString = AppleBCMWLANNANInterface::getIOVARString(v2, v3);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ERROR: Async callback for NAN iovar command %s (%d), invalid rxPayload.cmd\n", "handleNANIovarAsyncCallBack", 3615, IOVARString, v3);
}

{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1088))();
  v4 = *v1;
  IOVARString = AppleBCMWLANNANInterface::getIOVARString(v3, v4);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Async callback for NAN command %s (0x%x) failed, return status %d (0x%x)\n", "handleNANIovarAsyncCallBack", 3623, IOVARString, v4, *v0, *v0);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  v3 = *v0;
  IOVARString = AppleBCMWLANNANInterface::getIOVARString(v2, v3);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ERROR: Async callback for NAN iovar command %s (%d), invalid rxPayload.buffer. Bailing out...\n", "handleNANIovarAsyncCallBack", 3605, IOVARString, v3);
}

uint64_t AppleBCMWLANNANInterface::handleNANIovarAsyncCallBack(uint64_t a1, uint64_t a2, unsigned __int16 *a3, int a4)
{
  OUTLINED_FUNCTION_7_7();
  v7 = (*(v6 + 1088))();
  LODWORD(a3) = *a3;
  IOVARString = AppleBCMWLANNANInterface::getIOVARString(v7, a3);
  v9 = OUTLINED_FUNCTION_33_1();
  v11 = v10(v9);
  return CCLogStream::logAlert(v7, "[dk] %s@%d:ERROR: Async callback for NAN iovar failed, command %s (0x%x), retVal %s:(0x%x)\n", "handleNANIovarAsyncCallBack", 3599, IOVARString, a3, v11, a4);
}

uint64_t AppleBCMWLANNANInterface::handleProxIovarAsyncCallBack(uint64_t a1, uint64_t a2, const char *a3, int a4)
{
  OUTLINED_FUNCTION_7_7();
  (*(v7 + 1088))();
  OUTLINED_FUNCTION_34_1();
  v8 = OUTLINED_FUNCTION_33_1();
  v10 = v9(v8);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:ERROR: Cannot send prox iovar %s, return %s [0x%x]\n", "handleProxIovarAsyncCallBack", 3658, a3, v10, a4);
}

uint64_t AppleBCMWLANNANInterface::handleSlotBssIovarAsyncCallBack(uint64_t a1, uint64_t a2, const char *a3, int a4)
{
  OUTLINED_FUNCTION_7_7();
  (*(v7 + 1088))();
  OUTLINED_FUNCTION_34_1();
  v8 = OUTLINED_FUNCTION_33_1();
  v10 = v9(v8);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:ERROR: Cannot send P2p Coex Protection iovar %s, return %s [0x%x]\n", "handleSlotBssIovarAsyncCallBack", 3669, a3, v10, a4);
}

uint64_t AppleBCMWLANNANInterface::issueSyncSetIOVAR(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  OUTLINED_FUNCTION_5_5();
  v5 = (*(v4 + 1088))();
  AppleBCMWLANNANInterface::getIOVARString(v5, a3);
  OUTLINED_FUNCTION_31_1();
  return CCLogStream::logAlert(v5, "[dk] %s@%d:ERROR: Set Sync NAN IOVAR %s (0x%x), return status %d (0x%x)\n", "issueSyncSetIOVAR", 3726, v7, v8, v9, v10);
}

uint64_t AppleBCMWLANNANInterface::issueSyncSetIOVAR()
{
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_5_5();
  v2 = (*(v1 + 1088))();
  OUTLINED_FUNCTION_29_1(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlertIf(v0, 0x4000000000uLL, "[dk] %s@%d:Failed to issue NAN set Sync IOVAR %s (%x) due to invalid length %x\n", v4, v5, v6, v7, v8);
}

uint64_t AppleBCMWLANNANInterface::runNANSetIOVAR()
{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN iovar %s (0x%x)\n", "runNANSetIOVAR", 3963, v5, v0);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to run NAN set IOVAR due to invalid length %x\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to run NAN set IOVAR due to invalid length %x\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: NAN Chip interface not initialized, bailing out\n", "runNANSetIOVAR", 3917);
}

uint64_t AppleBCMWLANNANInterface::issueSetIOVAR()
{
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_5_5();
  v2 = (*(v1 + 1088))();
  OUTLINED_FUNCTION_29_1(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Failed to issue set IOVAR %s (%x) due to invalid length %x\n", v4, v5, v6, v7, v8);
}

uint64_t AppleBCMWLANNANInterface::sendNANSetIOVAR()
{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set async nan iovar %s (0x%x)\n", "sendNANSetIOVAR", 3901, v5, v0);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: IOVAR txPayload memory allocation failed\n", "sendNANSetIOVAR", 3879);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: IOVAR context memory allocation failed\n", "sendNANSetIOVAR", 3874);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to send NAN set IOVAR due to invalid length %x\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to send NAN set IOVAR due to invalid length %x\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: NAN Chip interface not initialized, bailing out\n", "sendNANSetIOVAR", 3846);
}

uint64_t AppleBCMWLANNANInterface::issueGetIOVAR(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  OUTLINED_FUNCTION_5_5();
  v5 = (*(v4 + 1088))();
  AppleBCMWLANNANInterface::getIOVARString(v5, a3);
  OUTLINED_FUNCTION_31_1();
  return CCLogStream::logAlert(v5, "[dk] %s@%d:ERROR: Get NAN IOVAR %s (0x%x), return status %d (0x%x)\n", "issueGetIOVAR", 3829, v7, v8, v9, v10);
}

uint64_t AppleBCMWLANNANInterface::issueGetIOVAR()
{
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_5_5();
  v2 = (*(v1 + 1088))();
  OUTLINED_FUNCTION_29_1(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Failed to issue get IOVAR %s (%x) due to invalid length %x\n", v4, v5, v6, v7, v8);
}

uint64_t AppleBCMWLANNANInterface::sendNANGetIOVAR()
{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Unable to get nan iovar %s (0x%x)\n", "sendNANGetIOVAR", 4025, v5, v0);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to send NAN get IOVAR due to invalid rxPayload length %x\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to send NAN get IOVAR due to invalid buf length %x\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to send NAN get IOVAR due to invalid rx length %x\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to send NAN get IOVAR due to invalid tx length %x\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: NAN Chip interface not initialized, bailing out\n", "sendNANGetIOVAR", 3977);
}

uint64_t AppleBCMWLANNANInterface::getNAN_ControlBits()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN control bits\n", "getNAN_ControlBits", 4073);
}

uint64_t AppleBCMWLANNANInterface::setNAN_ControlBits()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN control bits\n", "setNAN_ControlBits", 4087);
}

uint64_t AppleBCMWLANNANInterface::getNAN_ControlExtBits()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN control-ext bits\n", "getNAN_ControlExtBits", 4107);
}

uint64_t AppleBCMWLANNANInterface::setNAN_ControlExtBits()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN control-ext bits\n", "setNAN_ControlExtBits", 4132);
}

uint64_t AppleBCMWLANNANInterface::setNAN_EventMask()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN event mask\n", "setNAN_EventMask", 4189);
}

uint64_t AppleBCMWLANNANInterface::getNAN_ENABLED()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ERROR: Unable to get NAN enable\n", "getNAN_ENABLED", 4209);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: ALERT: NAN FW interface not configured yet, bailing...\n", "getNAN_ENABLED", 4203, "getNAN_ENABLED");
}

uint64_t AppleBCMWLANNANInterface::enableNAN()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN enable to 1\n", "enableNAN", 4225);
}

uint64_t AppleBCMWLANNANInterface::setNANFwEvents()
{
  OUTLINED_FUNCTION_0_8();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ERROR: Failure to enable NAN events, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::clearNANFwEvents()
{
  OUTLINED_FUNCTION_0_8();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ERROR: Failure to enable NAN events, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::setNAN_ENABLED()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:NAN is enabled\n", "setNAN_ENABLED", 4315);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Failed to set nan stats duration\n", "setNAN_ENABLED", 4322);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:NAN is disabled\n", "setNAN_ENABLED", 4338);
}

uint64_t AppleBCMWLANNANInterface::setNANStatsSampleDuration()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set nan stats duration %d\n", v3, v4, v5);
}

uint64_t AppleBCMWLANNANInterface::getNAN_InterfaceAddr()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to get NAN interface address\n", "getNAN_InterfaceAddr", 4379);
}

uint64_t AppleBCMWLANNANInterface::setNAN_HOP_COUNT_TO_ANCHOR_MASTER()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN Hop Count\n", "setNAN_HOP_COUNT_TO_ANCHOR_MASTER", 4447);
}

uint64_t AppleBCMWLANNANInterface::getNAN_HOP_COUNT_LIMIT()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to get NAN Hop Count Limit\n", "getNAN_HOP_COUNT_LIMIT", 4461);
}

uint64_t AppleBCMWLANNANInterface::setNAN_HOP_COUNT_LIMIT()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN Hop Count Limit\n", "setNAN_HOP_COUNT_LIMIT", 4477);
}

uint64_t AppleBCMWLANNANInterface::getNAN_WARMUP_TIME()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to get NAN warmup time\n", "getNAN_WARMUP_TIME", 4490);
}

uint64_t AppleBCMWLANNANInterface::setNAN_WARMUP_TIME()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN warmup time\n", "setNAN_WARMUP_TIME", 4505);
}

uint64_t AppleBCMWLANNANInterface::getNAN_RSSI_CLOSE()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to get NAN Rssi Close\n", "getNAN_RSSI_CLOSE", 4557);
}

uint64_t AppleBCMWLANNANInterface::setNAN_RSSI_CLOSE()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN Rssi Close\n", "setNAN_RSSI_CLOSE", 4581);
}

uint64_t AppleBCMWLANNANInterface::getNAN_RSSI_MIDDLE()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to get NAN Rssi Mid\n", "getNAN_RSSI_MIDDLE", 4600);
}

uint64_t AppleBCMWLANNANInterface::setNAN_RSSI_MIDDLE()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN Rssi Mid\n", "setNAN_RSSI_MIDDLE", 4624);
}

uint64_t AppleBCMWLANNANInterface::getNAN_RSSI_5G_CLOSE()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to get NAN Rssi 5G Close\n", "getNAN_RSSI_5G_CLOSE", 4643);
}

uint64_t AppleBCMWLANNANInterface::setNAN_RSSI_5G_CLOSE()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN Rssi 5G Close\n", "setNAN_RSSI_5G_CLOSE", 4667);
}

uint64_t AppleBCMWLANNANInterface::getNAN_RSSI_5G_MIDDLE()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to get NAN Rssi 5G Mid\n", "getNAN_RSSI_5G_MIDDLE", 4686);
}

uint64_t AppleBCMWLANNANInterface::setNAN_RSSI_5G_MIDDLE()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN Rssi 5G Mid\n", "setNAN_RSSI_5G_MIDDLE", 4710);
}

uint64_t AppleBCMWLANNANInterface::getNAN_MAX_PEERS()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to get NAN max num of peers\n", "getNAN_MAX_PEERS", 4775);
}

uint64_t AppleBCMWLANNANInterface::setNAN_MAX_PEERS()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN max num of peers to %d\n", v3, v4, v5);
}

uint64_t AppleBCMWLANNANInterface::getNAN_CLUSTER_ID()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to get NAN clusterId\n", "getNAN_CLUSTER_ID", 4808);
}

uint64_t AppleBCMWLANNANInterface::setNAN_CLUSTER_ID()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN clusterId\n", "setNAN_CLUSTER_ID", 4830);
}

uint64_t AppleBCMWLANNANInterface::getNAN_ElectionMetric()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to get NAN election metric, ret %d\n", v3, v4, v5);
}

uint64_t AppleBCMWLANNANInterface::setNAN_ElectionMetric()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN election metric, ret %d\n", v3, v4, v5);
}

uint64_t AppleBCMWLANNANInterface::getNAN_MASTER_PREFERENCE()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to get NAN master pref, ret = %d\n", v3, v4, v5);
}

uint64_t AppleBCMWLANNANInterface::setNAN_MASTER_PREFERENCE()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN master pref, ret = %d\n", v3, v4, v5);
}

uint64_t AppleBCMWLANNANInterface::getNAN_RANDOM_FACTOR()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to get NAN random factor, ret = %d\n", v3, v4, v5);
}

uint64_t AppleBCMWLANNANInterface::setNAN_RANDOM_FACTOR()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN random factor, ret = %d\n", v3, v4, v5);
}

uint64_t AppleBCMWLANNANInterface::getNAN_RANDOM_FACTOR_ROTATION()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to get NAN random factor rotation, ret = %d\n", v3, v4, v5);
}

uint64_t AppleBCMWLANNANInterface::setNAN_RANDOM_FACTOR_ROTATION()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN random factor rotation, ret = %d\n", v3, v4, v5);
}

uint64_t AppleBCMWLANNANInterface::getNAN_HOST_ELECTION()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to get NAN host election, ret = %d\n", v3, v4, v5);
}

uint64_t AppleBCMWLANNANInterface::setNAN_HOST_ELECTION()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN host election, ret = %d\n", v3, v4, v5);
}

uint64_t AppleBCMWLANNANInterface::getNAN_DEVICE_INFO()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to get NAN device state, ret = %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ALERT: NAN FW interface not configured yet, bailing...\n", "getNAN_DEVICE_INFO", 5160);
}

uint64_t AppleBCMWLANNANInterface::getNAN_DISC_BCN_PERIOD()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to get NAN discovery beacon period, ret = %d\n", v3, v4, v5);
}

uint64_t AppleBCMWLANNANInterface::getNAN_DW_AWAKE_PERIOD()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to get NAN dw awake period for 2.4/5GHz, ret = %d\n", v3, v4, v5);
}

uint64_t AppleBCMWLANNANInterface::setNAN_DW_AWAKE_PERIOD()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN dw awake period for 2.4/5GHz, ret = %d\n", v3, v4, v5);
}

uint64_t AppleBCMWLANNANInterface::getNAN_MASTER_CHANNEL()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to get NAN primary master channel, ret = %d\n", v3, v4, v5);
}

uint64_t AppleBCMWLANNANInterface::getNAN_FwCapability()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to get NAN Fw Capability, ret = %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Nan-FwCapability XTLV Id=0x%0x XTLV Len:%0x\n ", "getNAN_FwCapability", 5319, *v0, v0[1]);
}

uint64_t AppleBCMWLANNANInterface::getNAN_deviceCapability()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to get NAN Fw Capability, ret = %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Nan-FwCapability XTLV Id=0x%0x XTLV Len:%0x\n ", "getNAN_deviceCapability", 5373, *v0, v0[1]);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Nan-FwCapability Flag1=0x%0x\n ", "getNAN_deviceCapability", 5377, v3);
}

uint64_t AppleBCMWLANNANInterface::getNAN_SECONDARY_MASTER_CHANNEL()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to get NAN secondary master channel, ret = %d\n", v3, v4, v5);
}

uint64_t AppleBCMWLANNANInterface::setNAN_PUBLISH()
{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1088))();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Publish-GTK: fNANGTKenable:%d, control:%x, set CFG_SEC_GTK_CSID \n", "setNAN_PUBLISH", 5744, *(*v1 + 92), *v0);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN publish, ret = %d\n", v3, v4, v5);
}

uint64_t AppleBCMWLANNANInterface::getNAN_PUBLISHED_SERVICE_LIST()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to get NAN publish list, ret = %d\n", v3, v4, v5);
}

uint64_t AppleBCMWLANNANInterface::setNAN_SUBSCRIBE()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ERROR: SRF filter count %d greater than max %d\n", "setNAN_SUBSCRIBE", 5940, *v0, 16);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN subscribe, ret = %d\n", v3, v4, v5);
}

uint64_t AppleBCMWLANNANInterface::getNAN_SUBSCRIBED_SERVICE_LIST()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to get NAN subscribe list, ret = %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ERROR: Invalid servicelist length:%u, max length: %u\n", "getNAN_SUBSCRIBED_SERVICE_LIST", 6184, *v0, 254);
}

uint64_t AppleBCMWLANNANInterface::setNAN_FOLLOW_UP_TRANSMIT()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN followup transmit, ret = %d\n", v3, v4, v5);
}

uint64_t AppleBCMWLANNANInterface::getNAN_SERVICE_DISCOVERY_STATS()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to get NAN service discovery statistics, ret = %d\n", v3, v4, v5);
}

uint64_t AppleBCMWLANNANInterface::getNAN_ADVERTISERS()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to get NAN sync advertisers, ret = %d\n", v3, v4, v5);
}

uint64_t AppleBCMWLANNANInterface::setNAN_INIT()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Creating NAN interface failed, ret %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Init NAN failed, ret %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Getting NAN conig-control failed, ret %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Setting NAN conig-control failed, ret %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Getting NAN conig-control-ext failed, ret %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:HostPairing/enableGTK is enabled: setting NAN config-control-ext for xGTKs\n", "setNAN_INIT", 6527);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Setting NAN conig-control-ext failed, ret %d\n", v3, v4, v5);
}

uint64_t AppleBCMWLANNANInterface::setNAN_COMMITTED_AVAILABILITY()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s:%u ERROR: Invalid length\n", v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set the NAN committed availability, ret = %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:ERROR: Num Channel Entries (%d) is larger than expected (16). Returning Error. \n", "setNAN_COMMITTED_AVAILABILITY", 6624, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logCrit(v2, "[dk] %s@%d: MapId %d larger than max of %d \n", "setNAN_COMMITTED_AVAILABILITY", 6602, *v0, 2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_RemoveCommittedAvailability()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Removing map %d from NAN availability\n", v3, v4, v5);
}

uint64_t AppleBCMWLANNANInterface::buildNAN_CommittedAvailability()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s:%u ERROR: Invalid length\n", v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logCrit(v2, "[dk] %s@%d:ERROR: Num Entries %d larger than max of %d \n", "buildNAN_CommittedAvailability", 6702, *v0, 16);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logCrit(v2, "[dk] %s@%d:ERROR: MapId %d larger than max of %d \n", "buildNAN_CommittedAvailability", 6696, v0, 2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_POTENTIAL_AVAILABILITYInternal()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s:%u ERROR: Invalid length\n", v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s:%u ERROR: Invalid length\n", v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set the NAN potential availability, ret = %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid number of maps %d \n", "setNAN_POTENTIAL_AVAILABILITYInternal", 6804, v3);
}

uint64_t AppleBCMWLANNANInterface::setNAN_NDC_AVAILABILITY()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Removing NDC availability for id %d", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set the NAN Data cluster availability, ret = %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid number of maps %d \n", "setNAN_NDC_AVAILABILITY", 6902, v3);
}

uint64_t AppleBCMWLANNANInterface::setNAN_IMMUTABLE_AVAILABILITY()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set the NAN immutable availability, ret = %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid number of maps %d \n", "setNAN_IMMUTABLE_AVAILABILITY", 6977, v3);
}

uint64_t AppleBCMWLANNANInterface::setNAN_RANGING_AVAILABILITY()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set the NAN ranging availability, ret = %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid number of maps %d \n", "setNAN_RANGING_AVAILABILITY", 7039, v3);
}

uint64_t AppleBCMWLANNANInterface::getNAN_DEVICE_CAPABILITY()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to get the txchain iovar\n", "getNAN_DEVICE_CAPABILITY", 7100);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to get the rxchain iovar\n", "getNAN_DEVICE_CAPABILITY", 7107);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Nan host pairing enabled, Chip %u\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:disbaling nan host pairing, Chip %u\n", "getNAN_DEVICE_CAPABILITY", 7155, 4378);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: OnThread cannot issue sync iovars\n", "getNAN_DEVICE_CAPABILITY", 7093);
}

uint64_t AppleBCMWLANNANInterface::setNAN_DP_REQ()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:cipher_suite_ids (%d)\n", "setNAN_DP_REQ", 7190, v3);
}

{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1088))();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:DPReq-GTK: fNANGTKenable:%d, gtk_required:%d, set SEC_GTK_CSID(5) \n", "setNAN_DP_REQ", 7306, *(*v1 + 92), *v0);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN DP request %s (%d)\n", "setNAN_DP_REQ", 7361, v5, v0);
}

uint64_t AppleBCMWLANNANInterface::setNAN_DP_RESP()
{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN DP response %s (%d)\n", "setNAN_DP_RESP", 7488, v5, v0);
}

uint64_t AppleBCMWLANNANInterface::setNAN_DP_END()
{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN DP terminate %s (%d)\n", "setNAN_DP_END", 7507, v5, v0);
}

uint64_t AppleBCMWLANNANInterface::setNAN_DP_CONF()
{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN DP confirm %s (%d)\n", "setNAN_DP_CONF", 7528, v5, v0);
}

uint64_t AppleBCMWLANNANInterface::setNAN_RANGING_REQUEST()
{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN Range request %s (%d)\n", "setNAN_RANGING_REQUEST", 7561, v5, v0);
}

uint64_t AppleBCMWLANNANInterface::setNAN_RANGING_RESPONSE()
{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN Range auto response %s (%d)\n", "setNAN_RANGING_RESPONSE", 7578, v5, v0);
}

uint64_t AppleBCMWLANNANInterface::setNAN_RANGING_CANCEL()
{
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_7_7();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_28_1();
  v3 = OUTLINED_FUNCTION_33_1();
  v9 = v4(v3);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN Cancel Range Id =%d, %s (%d)\n", v6, v7, v8, v9, v0);
}

uint64_t AppleBCMWLANNANInterface::setNAN_VENDOR_PAYLOAD()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Could not set vendor specific attribute, issueSetIOVAR failed with retVal [ %d ]\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Could not issue setIOVAR for vendor specific attribute; Invalid parameters", "setNAN_VENDOR_PAYLOAD", 7625);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ALERT: Host pairing is supported, payload could be large to fit in a beacon, bailing out", "setNAN_VENDOR_PAYLOAD", 7619);
}

uint64_t AppleBCMWLANNANInterface::setNAN_VENDOR_PAYLOAD_COMPACT()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ALERT: Host pairing is not supported, ignoring compact payload", "setNAN_VENDOR_PAYLOAD_COMPACT", 7665);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Could not set vendor specific attribute, issueSetIOVAR failed with retVal [ %d ]\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s:%d AllocationFailure\n", v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Could not issue setNAN_VENDOR_PAYLOAD_COMPACT for vendor specific attribute; Invalid parameters", "setNAN_VENDOR_PAYLOAD_COMPACT", 7671);
}

uint64_t AppleBCMWLANNANInterface::setNAN_ADDITIONAL_ATTR()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Host pairing is not supported, ignoring additional attributes\n", "setNAN_ADDITIONAL_ATTR", 7713);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s:%d attrLen is 0\n", v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Could not set additional attribute, issueSetIOVAR failed with retVal [ %d ]\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s:%d AllocationFailure\n", v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Could not issue setIOVAR for vendor specific attribute; Invalid parameters\n", "setNAN_ADDITIONAL_ATTR", 7719);
}

uint64_t AppleBCMWLANNANInterface::setNAN_SCHEDULE_UPDATE()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN schedule update, ret = %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN schedule update, ret = %d\n", v3, v4, v5);
}

uint64_t AppleBCMWLANNANInterface::setNAN_ELECTION_ROLE()
{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN Election Params %s (%d)\n", "setNAN_ELECTION_ROLE", 7857, v5, v0);
}

uint64_t AppleBCMWLANNANInterface::setNAN_FAST_DISCOVERY()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Setting NAN conig-control failed, ret %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set the NAN immutable availability, ret = %d\n", v3, v4, v5);
}

uint64_t AppleBCMWLANNANInterface::setNAN_DATA_PATH_RESTORE()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s:%u In here\n", v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1088))();
  v8 = *v0;
  v9 = v0[1];
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s:%u peerInfoCount:%u, ndpInfoLen:%u \n", v4, v5, v6, v7, v8, v9);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_3_0();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s:%d Unexpected tagId in cmd:%u\n", v3, v4, v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_3_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:%s:%u writeBufferLen:%u \n", v3, v4, v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_3_0();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s:%d ERROR: Unexpected tagId in cmd:%u\n", v3, v4, v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_3_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:%s:%u cmdBufLen:%u \n", v3, v4, v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN NSR Params %s (%d)\n", "setNAN_DATA_PATH_RESTORE", 8049, v5, v0);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s:%u nanDpRestoreCmdData is NULL! \n", v3, v4, v5, v6);
}

uint64_t AppleBCMWLANNANInterface::setCOMPANION_SKYWALK_IF_CREATE()
{
  OUTLINED_FUNCTION_1_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_4_6();
  (*(v3 + 160))(v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Deletion failed, NAN companion skywalk interface does not exists for %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_8();
  v2 = (*(v1 + 1088))();
  OUTLINED_FUNCTION_5_0();
  v4 = (*(v3 + 160))();
  v5 = (*(*v0 + 160))(v0);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ALERT: NAN companion skywalk interface %s already exists for %s\n", "setCOMPANION_SKYWALK_IF_CREATE", 8065, v4, v5);
}

uint64_t AppleBCMWLANNANInterface::setCOMPANION_SKYWALK_IF_CREATE(uint64_t a1, uint64_t a2, const char *a3)
{
  OUTLINED_FUNCTION_0_8();
  (*(v6 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v8 = (*(v7 + 160))(v3);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Created NAN %s companion low latency skywalk interface %s\n", "setCOMPANION_SKYWALK_IF_CREATE", 8091, v8, a3);
}

uint64_t AppleBCMWLANNANInterface::setNANLLW_PARAMSCallback(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  OUTLINED_FUNCTION_7_7();
  (*(v8 + 1088))();
  OUTLINED_FUNCTION_28_1();
  v10 = (*(v9 + 920))(v4, a3);
  return CCLogStream::logAlert(v5, "[dk] %s@%d: ERROR: Cannot set llwParams (%s): %s\n", "setNANLLW_PARAMSCallback", 8109, a4, v10);
}

uint64_t AppleBCMWLANNANInterface::setNAN_LLW_PARAMS()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14_3();
  result = (*(v2 + 1088))();
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v4 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v6 = (*(v5 + 1088))(v1);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:FW does not support llw", "setNAN_LLW_PARAMS", 8147);
    }
  }

  *v0 = 711;
  return result;
}

{
  OUTLINED_FUNCTION_13_3();
  result = (*(v3 + 1088))();
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v5 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v7 = (*(v6 + 1088))(v1);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:hp2p cmd alloc fail\n", "setNAN_LLW_PARAMS", 8149);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14_3();
  result = (*(v2 + 1088))();
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v4 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v6 = (*(v5 + 1088))(v1);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:bad argument\n", "setNAN_LLW_PARAMS", 8148);
    }
  }

  *v0 = 706;
  return result;
}

uint64_t AppleBCMWLANNANInterface::setNAN_LLW_PARAMS(uint64_t a1, int a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_5_0();
  result = (*(v6 + 1088))();
  if (result)
  {
    (*(*a1 + 1088))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v8 = (*(*a1 + 1088))(a1);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d:hp2p set iovar failed\n", "setNAN_LLW_PARAMS", 8256);
    }
  }

  *a3 = a2;
  return result;
}

uint64_t AppleBCMWLANNANInterface::getHP2P_PARAMS()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14_3();
  result = (*(v2 + 1088))();
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v4 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v6 = (*(v5 + 1088))(v1);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:FW does not support llw", "getHP2P_PARAMS", 8321);
    }
  }

  *v0 = 711;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0();
  result = (*(v2 + 1088))();
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v4 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v6 = (*(v5 + 1088))(v1);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:Unexpected hp2p subcmd resp length\n", "getHP2P_PARAMS", 8439);
    }
  }

  *v0 = -536870911;
  return result;
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unexpected hp2p subcmd resp id\n", "getHP2P_PARAMS", 8437);
}

{
  OUTLINED_FUNCTION_13_3();
  result = (*(v3 + 1088))();
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v5 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v7 = (*(v6 + 1088))(v1);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:hp2p cmd resp alloc fail\n", "getHP2P_PARAMS", 8323);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_13_3();
  result = (*(v3 + 1088))();
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v5 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v7 = (*(v6 + 1088))(v1);
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:hp2p cmd alloc fail\n", "getHP2P_PARAMS", 8322);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANNANInterface::getHP2P_PARAMS(uint64_t a1, int a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_5_0();
  result = (*(v6 + 1088))();
  if (result)
  {
    (*(*a1 + 1088))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v8 = (*(*a1 + 1088))(a1);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d:hp2p get iovar failed\n", "getHP2P_PARAMS", 8355);
    }
  }

  *a3 = a2;
  return result;
}

uint64_t AppleBCMWLANNANInterface::setNAN_OOB_AF_TX()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Could not set OOB action frame, issueSetIOVAR failed with retVal:%d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Could not allocate memory for wl_nan_oob_af_t\n", "setNAN_OOB_AF_TX", 8509);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Could not set OOB action frame, issueSetIOVAR failed with retVal:%d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Could not allocate memory for wl_nan_oob_af_t\n", "setNAN_OOB_AF_TX", 8462);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Could not issue setIOVAR for vendor specific attribute; Invalid parameters", "setNAN_OOB_AF_TX", 8452);
}

uint64_t AppleBCMWLANNANInterface::setAWDL_DFSP_CONFIG()
{
  OUTLINED_FUNCTION_0_8();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v4 = v3(v2);
  return CCLogStream::logAlert(v0, "[dk] %s@%d:%s: Could not Enable DFS Proxy mode. Error code  %s\n", "setAWDL_DFSP_CONFIG", 8574, "setAWDL_DFSP_CONFIG", v4);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  if (*v0)
  {
    v3 = "Enabled";
  }

  else
  {
    v3 = "Disabled";
  }

  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s: DFSP DFS Proxy Mode %s\n", "setAWDL_DFSP_CONFIG", 8577, "setAWDL_DFSP_CONFIG", v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: NAN Chip interface not initialized, bailing out\n", "setAWDL_DFSP_CONFIG", 8548);
}

uint64_t AppleBCMWLANNANInterface::setP2P_COEX_PROTECTION_2G_Only()
{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set async nan iovar %s (0x%x)\n", "setP2P_COEX_PROTECTION_2G_Only", 8627, v5, v0);
}

uint64_t AppleBCMWLANNANInterface::setP2P_COEX_PROTECTION()
{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set P2p Coex Protection %s (0x%x)\n", "setP2P_COEX_PROTECTION", 8710, v5, v0);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: NAN Chip interface not initialized, bailing out\n", "setP2P_COEX_PROTECTION", 8637);
}

uint64_t AppleBCMWLANNANInterface::enableDatapath()
{
  OUTLINED_FUNCTION_9_5();
  result = (*(v1 + 1088))();
  if (result)
  {
    (*(*v0 + 1088))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1088))(v0);
      v4 = (*(*v0 + 160))(v0);
      return CCLogStream::logAlert(v3, "[dk] %s@%d:%s %s failed because interface has not been enabled yet\n", "enableDatapath", 8785, v4, "enableDatapath");
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_30_1();
  result = (*(v1 + 1088))(v2);
  if (result)
  {
    (*(*v0 + 1088))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v0 + 1088))(v0);
      OUTLINED_FUNCTION_11_3();
      return CCLogStream::logAlert(v4, "[dk] %s@%d:tx submission queue ac %d not valid\n", v5, v6, v7);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:skywalk rx completion queue enqueue fail with return %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_9_5();
  result = (*(v1 + 1088))();
  if (result)
  {
    (*(*v0 + 1088))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1088))(v0);
      return CCLogStream::logAlert(v3, "[dk] %s@%d:rx completion queue not valid\n", "enableDatapath", 8790);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_9_5();
  result = (*(v1 + 1088))();
  if (result)
  {
    (*(*v0 + 1088))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1088))(v0);
      return CCLogStream::logAlert(v3, "[dk] %s@%d:tx completion queue not valid\n", "enableDatapath", 8787);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_1_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_4_6();
  v4 = (*(v3 + 160))(v0);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s:%d ERROR: Enabling data path on %s\n", "enableDatapath", 8806, "virtual IOReturn AppleBCMWLANNANInterface::enableDatapath()", 8806, v4);
}

uint64_t AppleBCMWLANNANInterface::enable()
{
  OUTLINED_FUNCTION_1_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_4_6();
  v4 = (*(v3 + 160))(v0);
  isPoweredOn = AppleBCMWLANCore::isPoweredOn(*(*(v0 + 136) + 64));
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: enabling NAN interface %s, pwr %d\n", v6, v7, v8, v4, isPoweredOn);
}

uint64_t AppleBCMWLANNANInterface::enable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_8();
  (*(v7 + 1088))();
  OUTLINED_FUNCTION_3_5();
  (*(v8 + 160))(v4);
  v9 = OUTLINED_FUNCTION_23_1();
  isPoweredOn = AppleBCMWLANCore::isPoweredOn(v9);
  isWatchdogRunning = AppleBCMWLANCore::isWatchdogRunning(*(*a3 + 64));
  return CCLogStream::logAlert(v5, "[dk] %s@%d:%s data path cannot enable, power state %d, watchdog status %d\n", "enable", 8833, v3, isPoweredOn, isWatchdogRunning);
}

uint64_t AppleBCMWLANNANInterface::disableDatapath()
{
  OUTLINED_FUNCTION_1_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_4_6();
  (*(v3 + 160))(v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:disable data path on %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_30_1();
  result = (*(v1 + 1088))(v2);
  if (result)
  {
    (*(*v0 + 1088))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v0 + 1088))(v0);
      OUTLINED_FUNCTION_11_3();
      return CCLogStream::logCrit(v4, "[dk] %s@%d:tx submission queue ac %d not valid\n", v5, v6, v7);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_9_5();
  result = (*(v1 + 1088))();
  if (result)
  {
    (*(*v0 + 1088))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1088))(v0);
      return CCLogStream::logCrit(v3, "[dk] %s@%d:tx completion queue not valid\n", "disableDatapath", 8894);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_9_5();
  result = (*(v1 + 1088))();
  if (result)
  {
    (*(*v0 + 1088))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1088))(v0);
      return CCLogStream::logCrit(v3, "[dk] %s@%d:rx completion queue not valid\n", "disableDatapath", 8891);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_1_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_4_6();
  (*(v3 + 160))(v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:%s: skywalk data path disable fail\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::disable()
{
  OUTLINED_FUNCTION_1_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_4_6();
  (*(v3 + 160))(v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Interface %s disable\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNANInterface::setPromiscuousModeEnable(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_5_5();
  (*(v4 + 1088))();
  v5 = "Disable";
  if (a3)
  {
    v5 = "Enable";
  }

  v11 = v5;
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v6, "[dk] %s@%d:%s::(%s) ret=0x%08x\n", v8, v9, v10, v11, 0);
}

uint64_t AppleBCMWLANNANInterface::setNAN_PAIRING_KEYS()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s No NAN interface address found\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s adding key\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN Custom Attribute, ret = %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s deleting pairing keys\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN Custom Attribute, ret = %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s Invalid Peer Address\n", v3, v4, v5);
}

uint64_t AppleBCMWLANNANInterface::setNAN_CREATE_GCR_SESSION()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to create GCR session\n", "setNAN_CREATE_GCR_SESSION", 9307);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to set GCR multicast bitmap\n", "setNAN_CREATE_GCR_SESSION", 9317);
}

uint64_t AppleBCMWLANNANInterface::setNAN_GCR_Multicast_Bitmap()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_25_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Configuring NAN Multicast bitmap for ndi: %x:%x:%x:%x:%x:%x, len: %u\n", "setNAN_GCR_Multicast_Bitmap", 9438, v3, v4, v5, v6, v7, v8, v9);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Unable to set NAN Multicast bitmap\n", "setNAN_GCR_Multicast_Bitmap", 9441);
}

uint64_t IO80211BufferCursor::copyFrom(IO80211BufferCursor *this, const IO80211BufferCursor *a2, rsize_t __n)
{
  v3 = 3758097128;
  if (__n - 1 >= *(a2 + 1))
  {
    v4 = 0;
  }

  else
  {
    v4 = *a2;
  }

  if (__n - 1 < *(this + 1))
  {
    v5 = *this;
    if (v4 && v5)
    {
      memcpy(v5, v4, __n);
      return 0;
    }

    else if (v5)
    {
      memset_s(v5, __n, 0, __n);
    }
  }

  return v3;
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_SYNC_FRAME_TEMPLATE(IO80211SkywalkInterface *a1, uint64_t a2)
{
  if (!a2)
  {
    return 22;
  }

  v2 = *(a2 + 4);
  if (!v2)
  {
    return 22;
  }

  v3 = *(a2 + 8);
  if (!v3)
  {
    return 22;
  }

  v15[1] = -21846;
  v15[0] = v2;
  v16.iov_base = v15;
  v16.iov_len = 2;
  v17 = v3;
  v18 = v2;
  if (IO80211SkywalkInterface::getInterfaceId(a1) != -1 && IO80211SkywalkInterface::getInterfaceId(a1) != 255 && IO80211SkywalkInterface::getInterfaceId(a1) < 0xC)
  {
    return AppleBCMWLANProximityInterface::sendIOVarSetCommand(a1, &v16, 2u, "awdl_payload");
  }

  OUTLINED_FUNCTION_24_1();
  if (!(*(v5 + 1088))(a1))
  {
    return 1;
  }

  OUTLINED_FUNCTION_24_1();
  (*(v6 + 1088))(a1);
  v7 = 1;
  if (CCLogStream::shouldLog())
  {
    OUTLINED_FUNCTION_24_1();
    (*(v8 + 1088))(a1);
    OUTLINED_FUNCTION_7_1();
    CCLogStream::logAlert(v9, "[dk] %s@%d:ERROR: %s:%u AWDL Chip interface not initialized, bailing out\n", v11, v12, v13, v14);
  }

  return v7;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_SYNC_FRAME_TEMPLATE(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_SYNC_FRAME_TEMPLATE((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_SYNC_FRAME_TEMPLATE((a1 - 128), a2);
}

IO80211SkywalkInterface *AppleBCMWLANProximityInterface::handleCacheControlAsyncCallBack(IO80211SkywalkInterface *result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  if (a5)
  {
    v7 = result;
    if (a3)
    {
      OUTLINED_FUNCTION_19_1();
      if ((*(v9 + 1088))(v7))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v10 + 1088))(v7);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          v25 = (*(v24 + 1088))(v7);
          OUTLINED_FUNCTION_19_1();
          v27 = (*(v26 + 920))(v7, a3);
          v28 = *(a2 + 8);
          if (!v28)
          {
            v28 = "unknown";
          }

          CCLogStream::logAlert(v25, "[dk] %s@%d: Error: cannot send prox iovar %s [%s]\n", "handleCacheControlAsyncCallBack", 3348, v27, v28);
        }
      }

      OUTLINED_FUNCTION_19_1();
      if ((*(v11 + 1088))(v7))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v12 + 1088))(v7);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          (*(v29 + 1088))(v7);
          v40 = a5[16];
          v41 = a5[45];
          v38 = a5[13];
          v39 = a5[44];
          OUTLINED_FUNCTION_25_1();
          CCLogStream::logAlert(v30, "[dk] %s@%d: Opcode %u %s [%02x:%02x:%02x:%02x:%02x:%02x] ampdu %u ht %u vht %u\n", "handleCacheControlAsyncCallBack", 3355, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
        }
      }

      mach_continuous_time();
      absolutetime_to_nanoseconds();
      if (a3 != -469793790)
      {
        *(*(v7 + 17) + 40) = mach_continuous_time();
        FaultReporter = AppleBCMWLANCore::getFaultReporter(*(*(v7 + 17) + 64));
        v14 = *(a2 + 8);
        if (!v14)
        {
          v14 = "unknown";
        }

        v15 = CCFaultReporter::reportFault(FaultReporter, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANProximityInterface.cpp", 0xD22u, "handleCacheControlAsyncCallBack", 0, -469793502, "%s", v14);
        if (v15)
        {
          v16 = v15;
          OUTLINED_FUNCTION_19_1();
          if ((*(v17 + 1088))(v7))
          {
            OUTLINED_FUNCTION_19_1();
            (*(v18 + 1088))(v7);
            if (CCLogStream::shouldLog())
            {
              OUTLINED_FUNCTION_19_1();
              v20 = (*(v19 + 1088))(v7);
              v21 = OUTLINED_FUNCTION_16_3(*(v7 + 17));
              v23 = (*(v22 + 112))(v21, v16);
              CCLogStream::logAlert(v20, "[dk] %s@%d: Failed to trigger Full Capture, %s\n", "handleCacheControlAsyncCallBack", 3365, v23);
            }
          }
        }
      }
    }

    else
    {
      AppleBCMWLANCore::completePeerCacheControl(*(*(result + 17) + 64), a5, result);
    }

    return IOFreeData();
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_PRESENCE_MODE(IO80211SkywalkInterface *this, uint64_t a2)
{
  if (!a2)
  {
    return 22;
  }

  v2 = *(a2 + 4);
  v20 = v2;
  if (v2 > 0x40)
  {
    return 34;
  }

  v5 = *(this + 17);
  if (*(v5 + 836))
  {
    result = 0;
    *(v5 + 656) = v2;
  }

  else
  {
    if (*(v5 + 832))
    {
      v20 = 0;
    }

    *&v18 = this;
    *(&v18 + 1) = AppleBCMWLANProximityInterface::handleProxIovarAsyncCallBack;
    v19 = 0;
    v6 = *(v5 + 960);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
    v17[0] = &v20;
    v17[1] = 4;
    LODWORD(v6) = AppleBCMWLANCommander::sendVirtualIOVarSet(v6, InterfaceId, "awdl_presencemode", v17, kNoRxExpected, &v18, 0);
    v8 = (*(*this + 1088))(this);
    if (v6)
    {
      if (v8)
      {
        OUTLINED_FUNCTION_24_1();
        v10 = (*(v9 + 1088))(this);
        if (OUTLINED_FUNCTION_38_0(v10))
        {
          OUTLINED_FUNCTION_24_1();
          v14 = (*(v13 + 1088))(this);
          CCLogStream::logAlertIf(v14, 0x400uLL, "[dk] %s@%d: Unable to send awdl_presencemode\n", "setAWDL_PRESENCE_MODE", 4072);
        }
      }

      return 6;
    }

    else
    {
      if (v8)
      {
        OUTLINED_FUNCTION_24_1();
        v12 = (*(v11 + 1088))(this);
        if (OUTLINED_FUNCTION_38_0(v12))
        {
          OUTLINED_FUNCTION_24_1();
          v16 = (*(v15 + 1088))(this);
          CCLogStream::logAlertIf(v16, 0x400uLL, "[dk] %s@%d: mode %lu\n", "setAWDL_PRESENCE_MODE", 4075, v20);
        }
      }

      result = 0;
      *(*(this + 17) + 656) = v20;
    }
  }

  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_PRESENCE_MODE(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_PRESENCE_MODE((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_PRESENCE_MODE((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_OOB_SEC_PAYLOAD_REQUEST(IO80211SkywalkInterface *a1, uint64_t a2)
{
  if (!a2)
  {
    return 22;
  }

  if (!*(*(a1 + 17) + 664))
  {
    return 3758097084;
  }

  v15 = 0;
  HIDWORD(v15) = *(a2 + 4);
  WORD1(v15) = *(a2 + 2) + 8;
  OUTLINED_FUNCTION_24_1();
  if ((*(v4 + 1088))(a1))
  {
    OUTLINED_FUNCTION_24_1();
    (*(v5 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_24_1();
      (*(v8 + 1088))(a1);
      v14 = *(a2 + 2);
      OUTLINED_FUNCTION_7_1();
      CCLogStream::logInfoIf(v9, 0x400uLL, "[dk] %s@%d:%s:%d OOB SEC PAYLOAD sent with len %hu afSecondary len %lu \n", v10, v11, v12, v13, v14, 8);
    }
  }

  v16.iov_base = &v15;
  v16.iov_len = 8;
  v6 = *(a2 + 2);
  v17 = *(a2 + 8);
  v18 = v6;
  return AppleBCMWLANProximityInterface::sendIOVarSetCommand(a1, &v16, 2u, "awdl_afs_pload");
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_OOB_SEC_PAYLOAD_REQUEST(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_OOB_SEC_PAYLOAD_REQUEST((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_OOB_SEC_PAYLOAD_REQUEST((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::resetInterface()
{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1088))();
  isPoweredOn = AppleBCMWLANCore::isPoweredOn(*(*v0 + 64));
  v7 = *(*v0 + 664);
  v2 = OUTLINED_FUNCTION_33_2();
  return CCLogStream::logAlertIf(v2, v3, v4, "resetInterface", 317, isPoweredOn, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Failure to enable Country Code Changed event, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::waitForDriverEvent()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Sleep failed 0x%08x", v3, v4, v5);
}

uint64_t AppleBCMWLANProximityInterface::handleEvent()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlertIf(v1, 0x400uLL, "[dk] %s@%d: Unable to send awdl_presencemode\n", "handleEvent", 871);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlertIf(v1, 0x400uLL, "[dk] %s@%d: WLC_E_SET_SSID: mode %lu\n", "handleEvent", 873, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: WLC_E_ACTION_FRAME on prox interface = not supported\n", "handleEvent", 840);
}

{
  OUTLINED_FUNCTION_2_6();
  result = (*(v2 + 1088))();
  if (result)
  {
    (*(*v1 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = (*(*v1 + 1088))(v1);
      return CCLogStream::logAlert(v4, "[dk] %s@%d: Insufficient space[%u] < %lu\n", "handleEvent", 708, *v0, 28);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1088))();
  v8 = *v0;
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s[%d] : Unknown SDB Status Code (%d) received \n", v4, v5, v6, v7, v8);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1088))();
  v8 = *v0;
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s[%d] : Unknown SDB Reason Code (%d) received \n", v4, v5, v6, v7, v8);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s[%d] : ALERT: DRIVER got DWELL START Event \n", v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s[%d] : ALERT: DRIVER got DFS Proxy Resume Event \n", v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s[%d] : ALERT: DRIVER got DFS Proxy Suspect Event \n", v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Incorrect data length received for WLC_E_AWDL_PHYCAL_STATUS event, expecting 2, got %d\n", "handleEvent", 572, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logNoticeIf(v2, 0x440uLL, "[dk] %s@%d:WLC_E_AWDL_SCAN_DONE, ivars->fRoamScanInProgress(%d), ivars->fOOBScanInProgress(%d)\n", "handleEvent", 528, *(*v0 + 81), *(*v0 + 82));
}

{
  OUTLINED_FUNCTION_2_6();
  result = (*(v2 + 1088))();
  if (result)
  {
    (*(*v1 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = (*(*v1 + 1088))(v1);
      return CCLogStream::logAlert(v4, "[dk] %s@%d: Insufficient space[%u] < %lu\n", "handleEvent", 440, *v0, 5);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v1 + 1088))();
  v13 = v0[28];
  v14 = v0[29];
  v11 = v0[26];
  v12 = v0[27];
  OUTLINED_FUNCTION_25_1();
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Prox interface Unhandled event %lu: status = %lu, reason = %lu, flags = 0x%x, authtype = %lu, addr = %02x:%02x:%02x:%02x:%02x:%02x\n", "handleEvent", 885, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
}

void AppleBCMWLANProximityInterface::handleEvent(uint64_t a1, const char *a2)
{
  os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", a2);
}

{
  os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator->: Accessing a member through this pointer would access memory outside of the bounds set originally", a2);
}

{
  os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", a2);
}

unsigned __int8 *AppleBCMWLANProximityInterface::handleEvent(unsigned __int8 *result, uint64_t a2, IO80211SkywalkInterface *a3)
{
  if (*(*a2 + 920) == result[3])
  {
    v5 = result;
    if (!AppleBCMWLANCore::isHostAssignedInterfaceIndex(*(*a2 + 64)))
    {
      IO80211SkywalkInterface::setInterfaceId(a3, *v5);
      v6 = *(*a2 + 64);
      InterfaceId = IO80211SkywalkInterface::getInterfaceId(a3);
      AppleBCMWLANCore::setProxSkywalkInterface(v6, InterfaceId);
    }

    OUTLINED_FUNCTION_5_0();
    result = (*(v8 + 104))();
    v9 = v5[1];
    if (v9 != 1)
    {
      if (v9 != 2)
      {
        return result;
      }

      LOBYTE(v9) = 0;
    }

    *(*a2 + 936) = v9;
    return AppleBCMWLANProximityInterface::signalDriverEvent(a3);
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::handleEvent(unsigned __int8 *a1, IO80211SkywalkInterface *this, uint64_t a3)
{
  v5 = *a1;
  result = IO80211SkywalkInterface::getInterfaceId(this);
  if (result == v5)
  {
    *(*a3 + 920) = a1[3];
  }

  *(*a3 + 936) = 1;
  return result;
}

uint64_t AppleBCMWLANProximityInterface::handleEvent(uint64_t result, uint64_t a2)
{
  ++*(*(result + 136) + 76);
  v3 = *(result + 136);
  if (*(v3 + 80) == 1)
  {
    ScanAdapter = AppleBCMWLANCore::getScanAdapter(*(v3 + 64));

    return AppleBCMWLANScanAdapter::eventScanComplete(ScanAdapter, a2);
  }

  return result;
}

{
  v2 = *(a2 + 136);
  if (*(result + 2))
  {
    ++*(v2 + 892);
    v3 = 1;
  }

  else
  {
    v3 = 0;
    ++*(v2 + 896);
  }

  *(*(a2 + 136) + 708) = v3;
  return result;
}

IO80211SkywalkInterface *AppleBCMWLANProximityInterface::handleEvent(IO80211SkywalkInterface *this, uint64_t a2)
{
  v2 = *(this + 17);
  if (*(v2 + 664))
  {
    *(v2 + 668) = *(a2 + 8);
    v3 = *(*(this + 17) + 668);
    if (v3)
    {
      if (v3 == 2)
      {
        return AppleBCMWLANProximityInterface::handleMasterEvent(this);
      }

      else if (v3 == 1)
      {
        return AppleBCMWLANProximityInterface::handleNonElectionMasterEvent(this);
      }
    }

    else
    {
      return AppleBCMWLANProximityInterface::handleSlaveEvent(this);
    }
  }

  return this;
}

void *AppleBCMWLANProximityInterface::handleEvent(void *result, unint64_t a2, uint64_t a3, IO80211SkywalkInterface *a4)
{
  if (result)
  {
    if (a2 >= 4)
    {
      return OUTLINED_FUNCTION_29_2(*(a3 + 64), a4, 0x58u, result, 0x15uLL);
    }
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::handleEvent(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v5 = 0;
  v2 = *(a1 + 8);
  v4[0] = 1;
  v4[1] = v2;
  return AppleBCMWLANCore::postMessageInfra(*(*(a2 + 136) + 64), 0x54u, v4, 0x14uLL);
}

uint64_t AppleBCMWLANProximityInterface::handleEvent(uint64_t a1, uint64_t a2, IO80211SkywalkInterface *a3)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 28);
  v6 = *(a1 + 12);
  return IO80211Controller::postMessage(*(a2 + 64), a3, 0x45u, &v4, 7uLL, 1);
}

uint64_t AppleBCMWLANProximityInterface::handleActionFrame_rx()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: Invalid event payload bounded pointer.\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1088))();
  v8 = *v0;
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s[%d] v1_rx: invalid event msg len=%u, expect at least %lu\n", v4, v5, v6, v7, v8, 16);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:%s: Invalid destination Bounded copy cursor\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:%s: Invalid source Bounded copy cursor\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:%s: Failed to copy to frame\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:action packet not avaialbe from pool\n", "handleActionFrame_rx", 1464);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Buffer Pool is not ready yet\n", "handleActionFrame_rx", 1469);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1088))();
  v8 = *v0;
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s[%d] v2_rx: invalid event msg len=%u, expect at least %lu\n", v4, v5, v6, v7, v8, 24);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: wl_event_rx_frame_data bounded pointer.\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s: Invalid action frame rx event msg length=%u\n", "handleActionFrame_rx", 1382, "handleActionFrame_rx", *v0);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: Invalid event bounded pointer.\n", v3, v4, v5);
}

uint64_t AppleBCMWLANProximityInterface::handleProbeResponse_rx()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:action packet not avaialbe from pool\n", "handleProbeResponse_rx", 1560);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Buffer Pool is not ready yet\n", "handleProbeResponse_rx", 1565);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Invalid event msg len=%u, expect at least %lu\n", "handleProbeResponse_rx", 1506, *v0, 16);
}

uint64_t AppleBCMWLANProximityInterface::handleAvailabilityWindowEnd(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0();
  result = (*(v2 + 1088))();
  if (result)
  {
    (*(*a1 + 1088))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*a1 + 1088))(a1);
      OUTLINED_FUNCTION_5_2();
      return CCLogStream::logAlert(v4, "[dk] %s@%d:%s: Invalid pxtlv bounded pointer\n", v5, v6, v7);
    }
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::handleAvailabilityWindowEnd()
{
  OUTLINED_FUNCTION_2_6();
  result = (*(v2 + 1088))();
  if (result)
  {
    (*(*v1 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = (*(*v1 + 1088))(v1);
      return CCLogStream::logAlert(v4, "[dk] %s@%d: ERROR: AWDL cca_stats, insufficient space[%lu] < %lu\n", "handleAvailabilityWindowEnd", 3291, v0, 52);
    }
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::handleAvailabilityWindowStart()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: unknown role %u\n", "handleAvailabilityWindowStart", 1723, v3);
}

_DWORD *AppleBCMWLANProximityInterface::handleAvailabilityWindowExtension(_DWORD *result, const char *a2, IO80211SkywalkInterface *a3, uint64_t a4)
{
  v4 = (a4 + (a2 >> 32));
  if (v4)
  {
    if (HIDWORD(a2) + 28 > a2)
    {
      os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator->: Accessing a member through this pointer would access memory outside of the bounds set originally", a2);
    }

    v5 = *(v4 + 12);
    v6 = *v4;
    *result = v5;
    result[1] = v6;
    return IO80211Controller::postMessage(*(*(a3 + 17) + 64), a3, 0x2Au, result, 8uLL, 1);
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::handleMasterEvent()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:MST \n", "handleMasterEvent", 1678);
}

uint64_t AppleBCMWLANProximityInterface::handleSlaveEvent()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:slv\n", "handleSlaveEvent", 1693);
}

uint64_t AppleBCMWLANProximityInterface::handleNonElectionMasterEvent()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:NE_MST \n", "handleNonElectionMasterEvent", 1664);
}

void AppleBCMWLANProximityInterface::handleActionFrame_complete()
{
  OUTLINED_FUNCTION_41_1();
  v1 = v0;
  v3 = v2;
  v4 = HIDWORD(v0);
  v6 = v5 + HIDWORD(v0);
  v7 = (*(*v2 + 1088))(v2);
  if (v6)
  {
    if (v7)
    {
      v8 = (*(*v3 + 1088))(v3);
      if (OUTLINED_FUNCTION_38_0(v8))
      {
        (*(*v3 + 1088))(v3);
        if (v4 + 48 <= v1)
        {
          OUTLINED_FUNCTION_28_2();
          CCLogStream::logAlertIf(v10, 0x400uLL, "[dk] %s@%d:AFC %llu.%03llu len %lu status %lu\n");
          goto LABEL_8;
        }

LABEL_12:
        os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator->: Accessing a member through this pointer would access memory outside of the bounds set originally", v9);
      }
    }
  }

  else if (v7)
  {
    v11 = (*(*v3 + 1088))(v3);
    if (OUTLINED_FUNCTION_38_0(v11))
    {
      (*(*v3 + 1088))(v3);
      if (v4 + 48 <= v1)
      {
        OUTLINED_FUNCTION_28_2();
        CCLogStream::logAlertIf(v12, 0x400uLL, "[dk] %s@%d:AFC %llu.%03llu len %lu invalid status.\n");
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_40_0();
}

uint64_t AppleBCMWLANProximityInterface::init()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlertIf(v1, 0x400uLL, "[dk] %s@%d: created PROXIMITY interface\n", "init", 997);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to get Tx Power Manager\n", "init", 1023);
}

uint64_t AppleBCMWLANProximityInterface::setLifeTime()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlertIf(v1, 0x400uLL, "[dk] %s@%d: lifetime %lu\n", v3, v4, v5);
}

uint64_t AppleBCMWLANProximityInterface::setGuardTime()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlertIf(v1, 0x400uLL, "[dk] %s@%d: ivars->fGuardTime %lu\n", v3, v4, v5);
}

uint64_t AppleBCMWLANProximityInterface::setMaxNoMasterPeriod()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlertIf(v1, 0x400uLL, "[dk] %s@%d: ivars->fMaxNoMasterPeriod %lu\n", v3, v4, v5);
}

uint64_t AppleBCMWLANProximityInterface::stop()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:AppleBCMWLANProximityInterface Interface Stop\n", "stop", 1095);
}

uint64_t AppleBCMWLANProximityInterface::getSTATE()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlertIf(v1, 0x400uLL, "[dk] %s@%d: %u\n", "getSTATE", 1151, v3);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_AF_TX_MODE()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to set awdl_aftxmode %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_AF_TX_MODE(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  OUTLINED_FUNCTION_0_8();
  (*(v5 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v11 = (*(v6 + 920))(v3, 0);
  v12 = *a3;
  v7 = OUTLINED_FUNCTION_34_2();
  return CCLogStream::logAlertIf(v7, v8, v9, "setAWDL_AF_TX_MODE", 1177, v11, v12);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_AF_TX_MODE()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to get awdl awdl_aftxmode %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logNoticeIf(v1, 0x400uLL, "[dk] %s@%d: %u\n", "getAWDL_AF_TX_MODE", 1196, v3);
}

uint64_t AppleBCMWLANProximityInterface::bringdownLink()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlertIf(v2, 0x400uLL, "[dk] %s@%d: ivars->fSyncRole %lu ivars->fSyncEnabled %lu\n", "bringdownLink", 1241, *(*v0 + 668), *(*v0 + 664));
}

uint64_t AppleBCMWLANProximityInterface::doSetSyncState(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  OUTLINED_FUNCTION_8_7();
  v7 = (*(v6 + 1088))();
  return CCLogStream::logAlertIf(v7, 0x400uLL, "[dk] %s@%d: %u was %lu\n", "doSetSyncState", 4921, a4, *(*v4 + 664));
}

uint64_t AppleBCMWLANProximityInterface::doSetSyncState()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:AWDL turned off while in an OOB scan\n", "doSetSyncState", 4971);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:AWDL turned off while in a roam scan\n", "doSetSyncState", 4965);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Failure to enable AWDL events, %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:fPowerManager is NULL\n", "doSetSyncState", 5035);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: %s:%u AWDL Chip interface not initialized, bailing out\n", v3, v4, v5, v6);
}

uint64_t AppleBCMWLANProximityInterface::setBssRates()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: %s:%u AWDL Chip interface not initialized, bailing out\n", v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: %s:%u AWDL Chip interface not initialized, bailing out\n", v3, v4, v5, v6);
}

uint64_t AppleBCMWLANProximityInterface::bringupLink()
{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1088))();
  AppleBCMWLANCore::isPoweredOn(*(*v0 + 64));
  OUTLINED_FUNCTION_11_3();
  v2 = OUTLINED_FUNCTION_33_2();
  return CCLogStream::logWarnIf(v2, v3, v4);
}

uint64_t AppleBCMWLANProximityInterface::setAfTxMode()
{
  OUTLINED_FUNCTION_10_5();
  v2 = (*(v1 + 1088))();
  v3 = *(v0 + 136);
  v4 = v3[167];
  if (v4 > 4)
  {
    v5 = "UNKNOWN";
  }

  else
  {
    v5 = off_1003C8830[v4];
  }

  return CCLogStream::logAlertIf(v2, 0x400uLL, "[dk] %s@%d: was %lu metric %lu role %lu %s en %lu -> %lu\n", "setAfTxMode", 1642, v3[134], *(v3 + 555), v4, v5, v3[166], 0);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlertIf(v2, 0x400uLL, "[dk] %s@%d:AF TX Mode -> %lu\n", "setAfTxMode", 1657, *(*v0 + 536));
}

uint64_t AppleBCMWLANProximityInterface::dumpSyncParams()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlertIf(v1, 0x400uLL, "[dk] %s@%d: Unable to awdl_sync_params\n", "dumpSyncParams", 3663);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_SYNC_ENABLED()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlertIf(v1, 0x400uLL, "[dk] %s@%d: Unable to awdl\n", "getAWDL_SYNC_ENABLED", 1764);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_SYNC_PARAMS()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlertIf(v1, 0x400uLL, "[dk] %s@%d: Unable to awdl_sync_params\n", "getAWDL_SYNC_PARAMS", 1798);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Zero AWExt Invalid aw_ext_length\n", "getAWDL_SYNC_PARAMS", 1811);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Zero AWExt Invalid action_frame_period\n", "getAWDL_SYNC_PARAMS", 1806);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Zero AWExt Invalid aw_cmn_length\n", "getAWDL_SYNC_PARAMS", 1802);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_3_0();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: %s:%u AWDL Chip interface not initialized, bailing out, interfaceId : %x\n", v3, v4, v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_SYNC_STATE()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to get awdl opmode %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_DEV_STATS()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to get awdl stats %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_CCA()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid channel : %d for getAWDL_CCA\n", "getAWDL_CCA", 2056, v3);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to get awdl cca %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_PRESENCE_MODE()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to get awdl_presencemode %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_EXTENSION_STATE_MACHINE_PARAMETERS()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to get awdl_extcounts %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_EXTENSION_STATE_MACHINE_PARAMETERS()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to set awdl_extcounts %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::getElectionParams()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to get awdl election info %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_ELECTION_PARAMS()
{
  OUTLINED_FUNCTION_0_9();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v1 = OUTLINED_FUNCTION_16_2();
  v2(v1);
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_34_2();
  return CCLogStream::logAlertIf(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logInfoIf(v1, 0x400uLL, "[dk] %s@%d: election params  set \n", "setAWDL_ELECTION_PARAMS", 2210);
}

uint64_t AppleBCMWLANProximityInterface::handleElectionTreeIovarAsyncCallBack()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to set awdl_election_tree; trying again without private election\n", "handleElectionTreeIovarAsyncCallBack", 3440);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to set awdl election tree iovar %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_AWDL_ADVERTISERS()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to set awdl_advertisers %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_ELECTION_ID()
{
  OUTLINED_FUNCTION_0_9();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v1 = OUTLINED_FUNCTION_16_2();
  v2(v1);
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_34_2();
  return CCLogStream::logAlertIf(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlertIf(v1, 0x400uLL, "[dk] %s@%d: election_id set to %u\n", "setAWDL_ELECTION_ID", 2280, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: %s:%u AWDL Chip interface not initialized, bailing out\n", v3, v4, v5, v6);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_ELECTION_METRIC()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to get awdl election info %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_ELECTION_PARAMS()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to get awdl election info %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_ELECTION_METRIC()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to set awdl election metric %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_10_5();
  v2 = (*(v1 + 1088))();
  IO80211SkywalkInterface::getInterfaceId(v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d: setAWDL_ELECTION_METRIC invalid interface id %d\n", v4, v5, v6);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_ELECTION_RSSI_THRESHOLDS()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to set awdl election %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_ELECTION_RSSI_THRESHOLDS()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to get awdl election tree info %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::sendUnicastAFIOVar()
{
  OUTLINED_FUNCTION_5_6();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_35_0();
  MaxCmdTxPayload = AppleBCMWLANCommander::getMaxCmdTxPayload(*(v3 + 960));
  return CCLogStream::logAlert(v1, "[dk] %s@%d: excessive payload length iovar_len 11 data_len %lu max %lu\n", "sendUnicastAFIOVar", 2467, v0, MaxCmdTxPayload);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Too many async iovars in flight (%d) , rejecting awdl_oob_af\n", "sendUnicastAFIOVar", 2491, *(*v0 + 48));
}

{
  OUTLINED_FUNCTION_2_6();
  result = (*(v2 + 1088))();
  if (result)
  {
    (*(*v1 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = (*(*v1 + 1088))(v1);
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Error: cannot send OOBAF IOVar. MemAlloc Failed \n", "sendUnicastAFIOVar", 2477);
    }
  }

  *v0 = 1;
  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error, unable to allocate %lu bytes of buffer memory for command\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error, Invalid size[%lu] for OOB AF, expected >= %lu\n", "sendUnicastAFIOVar", 2462, v0, 38);
}

uint64_t AppleBCMWLANProximityInterface::sendUnicastAFIOVar(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_8_7();
  (*(v6 + 1088))();
  OUTLINED_FUNCTION_35_0();
  v8 = OUTLINED_FUNCTION_16_3(v7);
  (*(v9 + 112))(v8, a4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlertIf(v4, 0x400uLL, "[dk] %s@%d: Error: cannot send awdl_oob_af %s\n", v11, v12, v13);
}

uint64_t AppleBCMWLANProximityInterface::sendIOVarSetCommand()
{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1088))();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Too many async iovars in flight (%d) , rejecting %s\n", "sendIOVarSetCommand", 2537, *(*v1 + 48), v0);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error, unable to allocate %lu bytes of buffer memory for command\n", v3, v4, v5);
}

uint64_t AppleBCMWLANProximityInterface::updateSyncParams()
{
  OUTLINED_FUNCTION_10_5();
  v2 = (*(v1 + 1088))();
  v3 = *(v0 + 136);
  return CCLogStream::logAlertIf(v2, 0x400uLL, "[dk] %s@%d:%s ivars->fSyncEnabled %lu (masterChannel=%lu secMasterChannel=%lu awLen=%lu awPeriod=%lu)\n", "updateSyncParams", 2597, "int32_t AppleBCMWLANProximityInterface::updateSyncParams()", v3[166], v3[170], v3[171], v3[179], v3[180]);
}

uint64_t AppleBCMWLANProximityInterface::setSyncParams()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to set awdl_sync_params %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: %s:%u AWDL Chip interface not initialized, bailing out\n", v3, v4, v5, v6);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_SYNC_PARAMS()
{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1088))();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: +++ [%s] aw_period %lu aw_len %lu aw_ext_len %lu adv_period %lu as non election master %lu\n", "setAWDL_SYNC_PARAMS", 2668, v0, *(*v1 + 720), *(*v1 + 716), *(*v1 + 724), *(*v1 + 732), *(*v1 + 660));
}

uint64_t AppleBCMWLANProximityInterface::setPSF_DWELL()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to set awdl_psf_dwell %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:setPSF_DWELL data is NULL\n", "setPSF_DWELL", 2703);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_SYNC_STATE()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: unsupported mode %u\n", "setAWDL_SYNC_STATE", 2735, v3);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to set awdl opmode %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_SYNC_ENABLED()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:SoftAP interface is UP, hence cannot set APPLE80211_IOC_AWDL_SYNC_ENABLED\n", "setAWDL_SYNC_ENABLED", 2766);
}

uint64_t AppleBCMWLANProximityInterface::setSYNC_ENABLED_internal()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:%s", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logWarn(v1, " AWDL MODE: ON \n");
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();

  return CCLogStream::logWarn(v1, " AWDL MODE: OFF \n");
}

uint64_t AppleBCMWLANProximityInterface::setCHANNEL()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlertIf(v1, 0x400uLL, "[dk] %s@%d: -> %u\n", v3, v4, v5);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_MASTER_CHANNEL()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Trying to set channel 0 as master channel \n", "setAWDL_MASTER_CHANNEL", 2853);
}

{
  OUTLINED_FUNCTION_10_5();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlertIf(v2, 0x400uLL, "[dk] %s@%d: channel %lu secondary %lu\n", "setAWDL_MASTER_CHANNEL", 2855, *(*(v0 + 136) + 680), *(*(v0 + 136) + 684));
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_SECONDARY_MASTER_CHANNEL()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlertIf(v1, 0x400uLL, "[dk] %s@%d: Unable to get awdl_osoc_chan\n", "getAWDL_SECONDARY_MASTER_CHANNEL", 2870);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_AF_SECONDARY_PAYLOAD_CAPABILITIES()
{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v4(v3);
  v5 = OUTLINED_FUNCTION_39_1();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failed (%s) to get awdl_cap for AWDL if %d\n", "getAWDL_AF_SECONDARY_PAYLOAD_CAPABILITIES", 2896, v0, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlertIf(v2, 0x400uLL, "[dk] %s@%d: awdl_cap 0x%X\n", "getAWDL_AF_SECONDARY_PAYLOAD_CAPABILITIES", 2898, *(v0 + 4));
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logWarnIf(v1, 0x400uLL, "[dk] %s@%d: awdl_cap 0x%X, Supports APPLE80211_AWDL_CAP_SEC_PAYLOAD\n", "getAWDL_AF_SECONDARY_PAYLOAD_CAPABILITIES", 2904, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logWarnIf(v1, 0x400uLL, "[dk] %s@%d: awdl_cap 0x%X, supports APPLE80211_AWDL_CAP_CCA_STATS\n", "getAWDL_AF_SECONDARY_PAYLOAD_CAPABILITIES", 2909, v3);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_SECONDARY_MASTER_CHANNEL()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to set awdl secondary channel id %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlertIf(v2, 0x400uLL, "[dk] %s@%d: channel %lu secondary %lu\n", "setAWDL_SECONDARY_MASTER_CHANNEL", 2939, *(*v0 + 680), *(*v0 + 684));
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_MASTER_CHANNEL()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to get awdl_sync_params\n", "getAWDL_MASTER_CHANNEL", 2974);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Zero AWExt Invalid aw_ext_length\n", "getAWDL_MASTER_CHANNEL", 2987);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Zero AWExt Invalid action_frame_period\n", "getAWDL_MASTER_CHANNEL", 2982);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Zero AWExt Invalid aw_cmn_length\n", "getAWDL_MASTER_CHANNEL", 2978);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_ENCRYPTION_KEYS(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_11_4();
  v6 = (*(v5 + 1088))();
  v7 = OUTLINED_FUNCTION_16_3(*(v3 + 136));
  (*(v8 + 112))(v7, a3);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v6, "[dk] %s@%d: mapAppleKeyToBcomKey() failed, error %s\n", v10, v11, v12);
}

uint64_t AppleBCMWLANProximityInterface::programKeyAsync()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Setting AWDL keys asynchronously\n", "programKeyAsync", 3054);
}

uint64_t AppleBCMWLANProximityInterface::programKeyAsync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_8_7();
  (*(v6 + 1088))();
  OUTLINED_FUNCTION_35_0();
  v8 = OUTLINED_FUNCTION_16_3(v7);
  (*(v9 + 112))(v8, a4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v4, "[dk] %s@%d: WLC_SET_KEY() failed, error %s\n", v11, v12, v13);
}

uint64_t AppleBCMWLANProximityInterface::programKeySync()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Setting AWDL keys synchronously\n", "programKeySync", 3036);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v4(v3);
  v5 = OUTLINED_FUNCTION_39_1();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failed (%s) setting keys for AWDL if %d\n", "programKeySync", 3045, v0, v5);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_ENCRYPTION_TYPE()
{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v4(v3);
  v5 = OUTLINED_FUNCTION_39_1();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failed (%s) getting encryption for AWDL if %d\n", "getAWDL_ENCRYPTION_TYPE", 3080, v0, v5);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_ENCRYPTION_TYPE()
{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v4(v3);
  v5 = OUTLINED_FUNCTION_39_1();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failed (%s) setting encryption for AWDL if %d\n", "setAWDL_ENCRYPTION_TYPE", 3100, v0, v5);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_RTG_PEER_STATS_CONFIG()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  v3 = "enabled";
  if (!*(*v0 + 664))
  {
    v3 = "disabled";
  }

  if (*(*v0 + 1104))
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  return CCLogStream::logAlert(v2, "[dk] %s@%d:Cannot set PEER_STATS_CONFIG sync state: %s CreatingChipIF %s", "setAWDL_RTG_PEER_STATS_CONFIG", 3126, v3, v4);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_PEER_TRAFFIC_REGISTRATION(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_8_7();
  (*(v6 + 1088))();
  OUTLINED_FUNCTION_35_0();
  v8 = OUTLINED_FUNCTION_16_3(v7);
  (*(v9 + 112))(v8, a4);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v4, "[dk] %s@%d: Error toggling btc_flags for ranging: %s\n", v11, v12, v13);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_PEER_TRAFFIC_REGISTRATION()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: Assisted discovery teardown: clearing all keys\n", "setAWDL_PEER_TRAFFIC_REGISTRATION", 3176);
}

uint64_t AppleBCMWLANProximityInterface::setMacAddress()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: cur_etheraddr failed, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  v3 = "enabled";
  if (!*(*v0 + 664))
  {
    v3 = "disabled";
  }

  if (*(*v0 + 1104))
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  return CCLogStream::logAlert(v2, "[dk] %s@%d:Cannot update MAC address because sync state: %s CreatingChipIF %s", "setMacAddress", 3243, v3, v4);
}

uint64_t AppleBCMWLANProximityInterface::handleProxSlotBSSCompletion(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_0_8();
  (*(v5 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v6 = OUTLINED_FUNCTION_16_2();
  v8 = v7(v6);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: SlotBSS iovar failed, retVal %s:(0x%x)\n", "handleProxSlotBSSCompletion", 3404, v8, a3);
}

uint64_t AppleBCMWLANProximityInterface::getTX_RATE()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to get tx min rate %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::setTX_RATE()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Could configure tx min rate . Error code : %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlertIf(v1, 0x400uLL, "[dk] %s@%d: Configured tx min rate.\n", "setTX_RATE", 3514);
}

uint64_t AppleBCMWLANProximityInterface::copyPeerCache()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to get peer cache table", "copyPeerCache", 4410);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_CONFIG()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s: send awdl_config (0x%x)\n", "setAWDL_CONFIG", 3706, "setAWDL_CONFIG", v0);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: %s:%u AWDL Chip interface not initialized, bailing out\n", v3, v4, v5, v6);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_BSSID()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlertIf(v1, 0x400uLL, "[dk] %s@%d: \n", "setAWDL_BSSID", 3738);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to send awdl_af_hdr (%d)\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlertIf(v1, 0x400uLL, "[dk] %s@%d: Sent awdl_af_hdr length %lu\n", "setAWDL_BSSID", 3778, 10);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to send awdl_config (%d)\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlertIf(v1, 0x400uLL, "[dk] %s@%d: Sent awdl_config 0x%X\n", "setAWDL_BSSID", 3789, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to send awdl_af_rssi (%d)\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlertIf(v1, 0x400uLL, "[dk] %s@%d: Sent awdl_af_rssi %d\n", "setAWDL_BSSID", 3795, v3);
}

{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1088))();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: success, set BSSID to: %02x:%02x:%02x:%02x:%02x:%02x\n", "setAWDL_BSSID", 3804, *v1, v0[5], v0[6], v0[7], v0[8], v0[9]);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: failed to delete awdl if (%d)\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: destroy awdl if success!\n", "setAWDL_BSSID", 3745);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_BSSID(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_11_4();
  result = (*(v5 + 1088))();
  if (result)
  {
    (*(*v3 + 1088))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v3 + 1088))(v3);
      OUTLINED_FUNCTION_7_1();
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:ERROR: %s:%u AWDL Chip interface not initialized, bailing out\n", v8, v9, v10, v11);
    }
  }

  *a3 = 22;
  return result;
}

uint64_t AppleBCMWLANProximityInterface::deleteChipInterface()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Need to disable sync before deleting chip interface...", "deleteChipInterface", 3972);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d:ERROR: Cannot bring down awdl if, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d:ERROR: Cannot remove interface for AWDL, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: %s:%u AWDL Chip interface not initialized, bailing out\n", v3, v4, v5, v6);
}

uint64_t AppleBCMWLANProximityInterface::deleteChipInterface(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_0_8();
  (*(v5 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v6 = OUTLINED_FUNCTION_16_2();
  v8 = v7(v6);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:AWDL i/f deletion timedout Error = %s(%d)\n", "deleteChipInterface", 4010, v8, a3);
}

uint64_t AppleBCMWLANProximityInterface::createChipInterface()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  FirmwareInterfaceVersion = AppleBCMWLANCore::getFirmwareInterfaceVersion(*(*v0 + 64));
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s[%d]: Creating AWDL chip interface %d, fw ver %d\n", v4, v5, v6, v7, 2, FirmwareInterfaceVersion);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d:ERROR: Cannot bring up awdl if, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ERROR: cur_etheraddr failed on create chip interface, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d:ERROR: Cannot create interface for AWDL, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::createChipInterface(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_0_8();
  (*(v5 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v6 = OUTLINED_FUNCTION_16_2();
  v8 = v7(v6);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:AWDL i/f creation timedout Error = %s(%d)\n", "createChipInterface", 3928, v8, a3);
}

uint64_t AppleBCMWLANProximityInterface::setCOMPANION_SKYWALK_IF_CREATE()
{
  OUTLINED_FUNCTION_2_6();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_4_6();
  (*(v3 + 160))(v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Deletion failed, NAN companion skywalk interface does not exists for %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_8();
  v2 = (*(v1 + 1088))();
  OUTLINED_FUNCTION_5_0();
  v4 = (*(v3 + 160))();
  v5 = (*(*v0 + 160))(v0);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ALERT: AWDL companion skywalk interface %s already exists for %s\n", "setCOMPANION_SKYWALK_IF_CREATE", 3825, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Not Creating Skywalk interface for AWDL %d\n", v3, v4, v5);
}

uint64_t AppleBCMWLANProximityInterface::getPEER_CACHE_MAXIMUM_SIZE()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to get awdl max peer count %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logNoticeIf(v1, 0x400uLL, "[dk] %s@%d: get awdl peer count returned %d\n", "getPEER_CACHE_MAXIMUM_SIZE", 4104, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_3_0();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: %s:%u AWDL Chip interface not initialized, bailing out, interfaceId : %x\n", v3, v4, v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::setPEER_CACHE_CONTROL()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  v3 = *(v0 + 4);
  v4 = "UPDATE";
  v5 = "other";
  if (v3 == 2)
  {
    v5 = "DELETE";
  }

  if (v3 != 6)
  {
    v4 = v5;
  }

  if (!v3)
  {
    v4 = "ADD";
  }

  return CCLogStream::logAlertIf(v2, 0x400uLL, "[dk] %s@%d: Opcode %u %s [%02x:%02x:%02x:%02x:%02x:%02x] ampdu %u ht %u vht %u he %u\n", "setPEER_CACHE_CONTROL", 4159, v3, v4, *(v0 + 8), *(v0 + 9), *(v0 + 10), *(v0 + 11), *(v0 + 12), *(v0 + 13), *(v0 + 44), *(v0 + 16), *(v0 + 45), *(v0 + 60));
}

{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1088))();
  return CCLogStream::logAlertIf(v3, 0x400uLL, "[dk] %s@%d: deleting peer op %u num %lu\n", "setPEER_CACHE_CONTROL", 4246, *v1, *(*v0 + 528));
}

{
  OUTLINED_FUNCTION_10_5();
  (*(v1 + 1088))();
  ClassNameHelper = getClassNameHelper(v0);
  v2 = OUTLINED_FUNCTION_33_2();
  return CCLogStream::logAlertIf(v2, v3, v4, "setPEER_CACHE_CONTROL", 4190, ClassNameHelper, "setPEER_CACHE_CONTROL");
}

{
  OUTLINED_FUNCTION_10_5();
  (*(v1 + 1088))();
  ClassNameHelper = getClassNameHelper(v0);
  v2 = OUTLINED_FUNCTION_33_2();
  return CCLogStream::logAlertIf(v2, v3, v4, "setPEER_CACHE_CONTROL", 4234, ClassNameHelper, "setPEER_CACHE_CONTROL");
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_31_2();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: channel %u[0x%X] has no band info\n", "setPEER_CACHE_CONTROL", 4324, v3, v4);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to send awdl_peer_op\n", "setPEER_CACHE_CONTROL", 4381);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlertIf(v1, 0x400uLL, "[dk] %s@%d: cache op SUCCESS op %u\n", "setPEER_CACHE_CONTROL", 4388, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: invalid opcode %u\n", "setPEER_CACHE_CONTROL", 4251, v3);
}

uint64_t AppleBCMWLANProximityInterface::setPEER_CACHE_CONTROL(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  OUTLINED_FUNCTION_11_4();
  v6 = (*(v5 + 1088))();
  ClassNameHelper = getClassNameHelper(v3);
  return CCLogStream::logAlertIf(v6, 0x400uLL, "[dk] %s@%d:%s::%s adding HT IE, ampdu %u\n", "setPEER_CACHE_CONTROL", 4181, ClassNameHelper, "setPEER_CACHE_CONTROL", *a3);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_SYNCHRONIZATION_CHANNEL_SEQUENCE()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to get channel sequence", "getAWDL_SYNCHRONIZATION_CHANNEL_SEQUENCE", 4441);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_SYNCHRONIZATION_CHANNEL_SEQUENCE()
{
  OUTLINED_FUNCTION_0_8();
  (*(v1 + 1088))();
  (*(*v0 + 920))(v0, 0);
  OUTLINED_FUNCTION_11_3();
  v2 = OUTLINED_FUNCTION_34_2();
  return CCLogStream::logWarnIf(v2, v3, v4);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: AWDLChanSeqRequest Failed with retVal : \n %s", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to send awdl_chan_seq\n %s", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1088))();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: AWDL chan seq params: Something is wrong!! length %u encoding %u\n", "setAWDL_SYNCHRONIZATION_CHANNEL_SEQUENCE", 4485, *v1, *(v0 + 6));
}

uint64_t AppleBCMWLANProximityInterface::buildChanSequenceCommand()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:%s[%d]:FAILED to setup AWDL channel sequence\n", v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_3_0();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:%s[%d]:FAILED to setup Slice %d Channel sequence ----\n", v3, v4, v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1088))();
  v8 = *v0 + 12;
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logCrit(v2, "[dk] %s@%d:%s[%d] : COMMAND BUF SIZE Exceeded : Need %d. Available %d ----\n", v4, v5, v6, v7, v8, 2048);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to send awdl_chan_seq\n %s", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:%s[%d] : Neither channel sequences specified. Bogus command ?\n", v3, v4, v5, v6);
}

uint64_t AppleBCMWLANProximityInterface::buildAWDLChanSequence()
{
  OUTLINED_FUNCTION_5_6();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_31_2();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: setting DFS channel %d bandwidth %d\n", "buildAWDLChanSequence", 5403, v3, v4);
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_31_2();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: channel %u[0x%X] has no band info\n", "buildAWDLChanSequence", 5361, v3, v4);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:chan_sequence[0]==0, forcing to %d (%02X) \n", "buildAWDLChanSequence", 5453, 6, *v0);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:chan_sequence[0]==0, forcing to %d\n", "buildAWDLChanSequence", 5456, 6);
}

uint64_t AppleBCMWLANProximityInterface::buildAWDLChanSequence(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_0_8();
  (*(v6 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v8 = (*(v7 + 920))(v3, 3758096385);
  return CCLogStream::logAlert(v4, "[dk] %s@%d: awdl_chan_seq: Couldn't find chanspec for specified channel: %d, %s Returning.\n", "buildAWDLChanSequence", 5443, a3, v8);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_OOB_REQUEST()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logInfoIf(v2, 0x400uLL, "[dk] %s@%d: OOB sent with payload len %u \n", "setAWDL_OOB_REQUEST", 4552, *v0);
}

uint64_t AppleBCMWLANProximityInterface::setLLW_PARAMS()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14_3();
  result = (*(v2 + 1088))();
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v4 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v6 = (*(v5 + 1088))(v1);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:FW does not support llw", "setLLW_PARAMS", 4604);
    }
  }

  *v0 = 711;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14_3();
  result = (*(v2 + 1088))();
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v4 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v6 = (*(v5 + 1088))(v1);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:hp2p cmd alloc fail\n", "setLLW_PARAMS", 4606);
    }
  }

  *v0 = 701;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14_3();
  result = (*(v2 + 1088))();
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v4 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v6 = (*(v5 + 1088))(v1);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:bad argument\n", "setLLW_PARAMS", 4605);
    }
  }

  *v0 = 706;
  return result;
}

uint64_t AppleBCMWLANProximityInterface::setLLW_PARAMS(uint64_t a1, int a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_5_0();
  result = (*(v6 + 1088))();
  if (result)
  {
    (*(*a1 + 1088))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v8 = (*(*a1 + 1088))(a1);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d:hp2p set iovar failed\n", "setLLW_PARAMS", 4719);
    }
  }

  *a3 = a2;
  return result;
}

uint64_t AppleBCMWLANProximityInterface::getLLW_PARAMS()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14_3();
  result = (*(v2 + 1088))();
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v4 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v6 = (*(v5 + 1088))(v1);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:FW does not support llw", "getLLW_PARAMS", 4743);
    }
  }

  *v0 = 711;
  return result;
}

{
  OUTLINED_FUNCTION_2_6();
  result = (*(v2 + 1088))();
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v4 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v6 = (*(v5 + 1088))(v1);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:Unexpected hp2p subcmd resp length\n", "getLLW_PARAMS", 4807);
    }
  }

  *v0 = -536870911;
  return result;
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unexpected hp2p subcmd resp id\n", "getLLW_PARAMS", 4805);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14_3();
  result = (*(v2 + 1088))();
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v4 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v6 = (*(v5 + 1088))(v1);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:hp2p cmd resp alloc fail\n", "getLLW_PARAMS", 4746);
    }
  }

  *v0 = 701;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14_3();
  result = (*(v2 + 1088))();
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v4 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v6 = (*(v5 + 1088))(v1);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:hp2p cmd alloc fail\n", "getLLW_PARAMS", 4745);
    }
  }

  *v0 = 701;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14_3();
  result = (*(v2 + 1088))();
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v4 + 1088))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v6 = (*(v5 + 1088))(v1);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:bad argument\n", "getLLW_PARAMS", 4744);
    }
  }

  *v0 = 706;
  return result;
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: %s:%u AWDL Chip interface not initialized, bailing out\n", v3, v4, v5, v6);
}

uint64_t AppleBCMWLANProximityInterface::getLLW_PARAMS(uint64_t a1, int a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_5_0();
  result = (*(v6 + 1088))();
  if (result)
  {
    (*(*a1 + 1088))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v8 = (*(*a1 + 1088))(a1);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d:hp2p get iovar failed\n", "getLLW_PARAMS", 4768);
    }
  }

  *a3 = a2;
  return result;
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_OOB_AUTO_REQUEST()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logInfoIf(v2, 0x400uLL, "[dk] %s@%d: OOB AUTO sent with payload len %u \n", "setAWDL_OOB_AUTO_REQUEST", 4834, *v0);
}

uint64_t AppleBCMWLANProximityInterface::enableRoamEvents()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Failure to get event mask, %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Failure to enable AWDL events, %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: Enabling AWDL Events\n", "enableRoamEvents", 4906);
}

uint64_t AppleBCMWLANProximityInterface::reset()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:%s\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:\n", "reset", 5124);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_TXCAL_PERIOD()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to set awdl_phycal_period %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_TXCAL_PERIOD()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to get awdl phycal period %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_DFSP_CONFIG()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Could not Enable DFS Proxy mode. Error code  %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlertIf(v1, 0x400uLL, "[dk] %s@%d: Enabled DFS Proxy Mode.\n", "setAWDL_DFSP_CONFIG", 5223);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_DFSP_CONFIG()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Could not Enable DFS Proxy mode. Error code  %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlertIf(v1, 0x400uLL, "[dk] %s@%d: Enabled DFS Proxy Mode.\n", "getAWDL_DFSP_CONFIG", 5246);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_DFSP_UCSA_CONFIG()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Could not Enable DFS Proxy UCSA. Error code : %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlertIf(v1, 0x400uLL, "[dk] %s@%d: Enabled DFS Proxy UCSA.\n", "setAWDL_DFSP_UCSA_CONFIG", 5281);
}

uint64_t AppleBCMWLANProximityInterface::fillSliceDataForStandAloneAWDL()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:%s[%d] : Unexpected. SDB On = false and SDB Off = false \n", v3, v4, v5, v6);
}

uint64_t AppleBCMWLANProximityInterface::convertCommittedAvailabilityToChanSpecSequence(uint64_t a1, uint64_t a2, unsigned __int16 a3, unsigned __int16 *a4)
{
  OUTLINED_FUNCTION_5_5();
  (*(v6 + 1088))();
  v13 = *a4;
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v7, "[dk] %s@%d:%s[%d]: ERROR : slot %d already has a channel allocated %x\n", v9, v10, v11, v12, a3, v13);
}

uint64_t AppleBCMWLANProximityInterface::convertCommittedAvailabilityToChanSpecSequence()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_3_0();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:%s[%d] ERROR : Max Period out of bounds : %d, Expected 1024\n", v3, v4, v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::convertOpClassToNanChannel()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR:NOT 6G OPCLASS: Should not come here..\n", "convertOpClassToNanChannel", 6076);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:SHOULD NOT COME HERE temp_band %x\n", "convertOpClassToNanChannel", 6026, 0);
}

uint64_t AppleBCMWLANProximityInterface::start()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: ERROR: awdl skywalk start fail\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to register interface with bus interface", "start", 6230);
}

uint64_t AppleBCMWLANProximityInterface::registerInterface()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ProximityInterface: media type report fail, ret[0x%08x]\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ProximityInterface: set headroom fail fail, ret[0x%08x]\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ProximityInterface: skywalk interface registration fail, ret[0x%08x]\n", v3, v4, v5);
}

uint64_t AppleBCMWLANProximityInterface::setInterfaceEnable()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s:%d ERROR: AWDL interface enable failed!\n", v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: AWDL interface not up yet, not enabling queues\n", v3, v4, v5);
}

uint64_t AppleBCMWLANProximityInterface::setInterfaceEnable(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_5_5();
  v5 = (*(v4 + 1088))();
  if (a3)
  {
    v6 = "enable";
  }

  else
  {
    v6 = "disable";
  }

  return CCLogStream::logAlert(v5, "[dk] %s@%d:%s:%d AWDL prox interface %s\n", "setInterfaceEnable", 6370, "setInterfaceEnable", 6370, v6);
}

uint64_t AppleBCMWLANProximityInterface::enableDatapath()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:awdl interface enable data path\n", "enableDatapath", 6417);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1088))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:skywalk rx completion queue enqueue fail with return %d\n", v3, v4, v5);
}

uint64_t AppleBCMWLANProximityInterface::enableDatapath(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_5_5();
  result = (*(v5 + 1088))();
  if (result)
  {
    (*(*a1 + 1088))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*a1 + 1088))(a1);
      result = CCLogStream::logCrit(v7, "[dk] %s@%d:rx completion queue not valid\n", "enableDatapath", 6423);
    }
  }

  *a3 = -536870212;
  return result;
}

uint64_t AppleBCMWLANProximityInterface::disableDatapath()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:awdl interface disable data path\n", "disableDatapath", 6453);
}

{
  OUTLINED_FUNCTION_10_5();
  result = (*(v1 + 1088))();
  if (result)
  {
    (*(*v0 + 1088))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1088))(v0);
      return CCLogStream::logCrit(v3, "[dk] %s@%d:tx completion queue not valid\n", "disableDatapath", 6467);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_10_5();
  result = (*(v1 + 1088))();
  if (result)
  {
    (*(*v0 + 1088))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1088))(v0);
      return CCLogStream::logCrit(v3, "[dk] %s@%d:rx completion queue not valid\n", "disableDatapath", 6464);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_2_6();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_4_6();
  (*(v3 + 160))(v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:%s: skywalk data path disable fail\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::disableDatapath(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 1088))(a2);
  if (result)
  {
    (*(*a2 + 1088))(a2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*a2 + 1088))(a2);
      OUTLINED_FUNCTION_11_3();
      return CCLogStream::logCrit(v4, "[dk] %s@%d:tx submission queue ac %d not valid\n", v5, v6, v7);
    }
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::enable()
{
  OUTLINED_FUNCTION_2_6();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_4_6();
  (*(v3 + 160))(v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s enabling AWDL interface\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::disable()
{
  OUTLINED_FUNCTION_2_6();
  (*(v2 + 1088))();
  OUTLINED_FUNCTION_4_6();
  (*(v3 + 160))(v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: disabling AWDL interface\n", v5, v6, v7);
}

uint64_t AppleBCMWLANProximityInterface::printDataPath()
{
  OUTLINED_FUNCTION_2_6();
  v2 = (*(v1 + 1088))();
  InterfaceRoleStr = IO80211SkywalkInterface::getInterfaceRoleStr(v0);
  v4 = (*(*v0 + 160))(v0);
  return CCLogStream::logInfo(v2, "[dk] %s@%d:Enter InterfaceRole:%s bsdname:%s\n", "printDataPath", 6661, InterfaceRoleStr, v4);
}

uint64_t AppleBCMWLANProximityInterface::sendPendingPacketsToStack()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: FAIL : Invalid Rx Completion Queue available \n", "sendPendingPacketsToStack", 6705);
}

uint64_t AppleBCMWLANProximityInterface::freePendingPackets()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: FAIL : Invalid Rx Completion Queue available \n", "freePendingPackets", 6723);
}

uint64_t AppleBCMWLANProximityInterface::clearTrafficRegistrationState()
{
  OUTLINED_FUNCTION_10_5();
  v2 = (*(v1 + 1088))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d: CarPlay active %d, low latency %d, AirPlay %d, SideCar %d", "clearTrafficRegistrationState", 6735, *(*(v0 + 136) + 92), *(*(v0 + 136) + 544), *(*(v0 + 136) + 94), *(*(v0 + 136) + 95));
}

uint64_t AppleBCMWLANProximityInterface::setP2P_COEX_PROTECTION(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_0_8();
  (*(v5 + 1088))();
  OUTLINED_FUNCTION_3_5();
  v6 = OUTLINED_FUNCTION_16_2();
  v8 = v7(v6);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Unable to set P2p Coex Protection %s (0x%x)\n", "setP2P_COEX_PROTECTION", 6819, v8, a3);
}

uint64_t AppleBCMWLANProximityInterface::setP2P_COEX_PROTECTION()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: AWDL Chip interface not initialized, bailing out\n", "setP2P_COEX_PROTECTION", 6745);
}

uint64_t AppleBCMWLANChipManagerPCIe4357::prepareHardware(AppleBCMWLANChipManagerPCIe4357 *this, AppleBCMWLANChipConfigSpace *a2, AppleBCMWLANChipBackplane *a3)
{
  v3 = 3758097090;
  v6 = 0;
  if (a2 && a3)
  {
    if (AppleBCMWLANChipBackplane::readGCICoreReg32(a3, 0xE64u, &v6))
    {
      return 3758097098;
    }

    else
    {
      v6 = v6 & 0xFFFFFFFC | 1;
      AppleBCMWLANChipBackplane::writeGCICoreReg32(a3, 0xE64u, v6);
      return 0;
    }
  }

  return v3;
}

uint64_t AppleBCMWLANChipManagerPCIe4357::checkHardware(AppleBCMWLANChipManagerPCIe4357 *this, AppleBCMWLANChipConfigSpace *a2, AppleBCMWLANChipBackplane *a3)
{
  v6 = 0;
  result = 3758097090;
  if (a2 && a3)
  {
    AppleBCMWLANChipBackplane::writeGCICoreReg32(a3, 0x40u, 4u);
    if (AppleBCMWLANChipBackplane::readGCICoreReg32(a3, 0x204u, &v6) || (v6 & 0x4000) != 0)
    {
      return 3758097098;
    }

    else
    {
      v5 = AppleBCMWLANChipBackplane::readGCICoreReg32(a3, 0x40u, &v6);
      result = 3758097098;
      if (!v5)
      {
        if (v6 == 4)
        {
          return 0;
        }

        else
        {
          return 3758097098;
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANChipManagerPCIe4387::prepareHardware(AppleBCMWLANChipManagerPCIe4387 *this, AppleBCMWLANChipConfigSpace *a2, AppleBCMWLANChipBackplane *a3)
{
  v3 = 3758097090;
  v6 = 0;
  if (a2 && a3)
  {
    if (AppleBCMWLANChipBackplane::readGCICoreReg32(a3, 0xE64u, &v6))
    {
      return 3758097098;
    }

    else
    {
      v6 = v6 & 0xFFFFFFFC | 1;
      AppleBCMWLANChipBackplane::writeGCICoreReg32(a3, 0xE64u, v6);
      return 0;
    }
  }

  return v3;
}

uint64_t AppleBCMWLANChipManagerPCIe4387::checkHardware(AppleBCMWLANChipManagerPCIe4387 *this, AppleBCMWLANChipConfigSpace *a2, AppleBCMWLANChipBackplane *a3)
{
  v6 = 0;
  result = 3758097090;
  if (a2 && a3)
  {
    AppleBCMWLANChipBackplane::writeGCICoreReg32(a3, 0x40u, 4u);
    if (AppleBCMWLANChipBackplane::readGCICoreReg32(a3, 0x204u, &v6) || (v6 & 0x4000) != 0)
    {
      return 3758097098;
    }

    else
    {
      v5 = AppleBCMWLANChipBackplane::readGCICoreReg32(a3, 0x40u, &v6);
      result = 3758097098;
      if (!v5)
      {
        if (v6 == 4)
        {
          return 0;
        }

        else
        {
          return 3758097098;
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANChipManagerPCIe4387::readChipProvisioningData(AppleBCMWLANChipManagerPCIe4387 *this, AppleBCMWLANChipBackplane *a2, const OSData *a3)
{
  v66 = 0;
  if (**(this + 9))
  {
    return 0;
  }

  v3 = 3758097085;
  if (!a2 || AppleBCMWLANChipManagerPCIe4387::readSFLASH(this, a2, a3))
  {
    return 3758097086;
  }

  if (!**(this + 9))
  {
    return 3758097086;
  }

  SROMByteCount = AppleBCMWLANChipManagerPCIe::getSROMByteCount(this);
  v6 = OUTLINED_FUNCTION_2_8();
  if (OSData::getLength(v6) != SROMByteCount)
  {
    return 3825175817;
  }

  v7 = OUTLINED_FUNCTION_2_8();
  BytesNoCopy = OSData::getBytesNoCopy(v7);
  if (!BytesNoCopy)
  {
    return 3825175818;
  }

  v9 = BytesNoCopy;
  v10 = AppleBCMWLANChipManagerPCIe::getSROMByteCount(this);
  v11 = OSData::withBytes(v9, v10);
  if (v11)
  {
    v12 = v11;
    OUTLINED_FUNCTION_4_8(v11, "SROM");
    OUTLINED_FUNCTION_1_10();
    (*(v13 + 16))(v12);
    v14 = OUTLINED_FUNCTION_2_8();
    v15 = OSData::getBytesNoCopy(v14);
    v16 = &v15[AppleBCMWLANChipManagerPCIe::getSROMoffsetMacAddress(this)];
    bytes[0] = *v16;
    bytes[1] = v16[1];
    bytes[2] = v16[2];
    bytes[3] = v16[3];
    bytes[4] = v16[4];
    bytes[5] = v16[5];
    v17 = OSData::withBytes(bytes, 6uLL);
    if (v17)
    {
      v18 = v17;
      OUTLINED_FUNCTION_4_8(v17, "macaddress");
      OUTLINED_FUNCTION_1_10();
      (*(v19 + 16))(v18);
      v64 = (v9[1] << 9) | (2 * *v9);
      v20 = OSData::withBytes(&v64, 2uLL);
      if (v20)
      {
        v21 = v20;
        OUTLINED_FUNCTION_4_8(v20, "SROM:datalength");
        OUTLINED_FUNCTION_1_10();
        (*(v22 + 16))(v21);
        v23 = v64;
        v24 = AppleBCMWLANChipManagerPCIe::getSROMByteCount(this);
        v25 = v64;
        v26 = OSData::withCapacity(1u);
        if (v26)
        {
          v27 = v26;
          v28 = v25 - 2;
          if (v25 <= 2 || v23 >= v24)
          {
            v28 = 0;
          }

          appended = OSData::appendBytes(v26, &v9[v28], 1uLL);
          OUTLINED_FUNCTION_4_8(appended, "SROM:version");
          OUTLINED_FUNCTION_1_10();
          (*(v31 + 16))(v27);
          v32 = OSData::withCapacity(2u);
          if (v32)
          {
            v33 = v32;
            SROMoffsetSignature = AppleBCMWLANChipManagerPCIe::getSROMoffsetSignature(this);
            OSData::appendBytes(v33, &v9[SROMoffsetSignature + 1], 1uLL);
            v35 = AppleBCMWLANChipManagerPCIe::getSROMoffsetSignature(this);
            v36 = OSData::appendBytes(v33, &v9[v35], 1uLL);
            OUTLINED_FUNCTION_4_8(v36, "SROM:signature");
            OUTLINED_FUNCTION_1_10();
            (*(v37 + 16))(v33);
            LODWORD(v33) = v64;
            v38 = v33 >= AppleBCMWLANChipManagerPCIe::getSROMByteCount(this) ? 0 : getcrc8(v9, v64, 0xFFu);
            v65 = v38;
            v39 = OSData::withCapacity(1u);
            if (v39)
            {
              v40 = v39;
              v41 = OSData::appendBytes(v39, &v65, 1uLL);
              OUTLINED_FUNCTION_4_8(v41, "checksum:value");
              OUTLINED_FUNCTION_1_10();
              (*(v42 + 16))(v40);
              v63 = v65 == 159;
              v43 = OSData::withCapacity(1u);
              if (v43)
              {
                v44 = v43;
                v45 = OSData::appendBytes(v43, &v63, 1uLL);
                OUTLINED_FUNCTION_4_8(v45, "checksum:valid");
                OUTLINED_FUNCTION_1_10();
                (*(v46 + 16))(v44);
                v47 = v64;
                v48 = AppleBCMWLANChipManagerPCIe::getSROMByteCount(this);
                v49 = v64;
                v50 = OSData::withCapacity(1u);
                if (v50)
                {
                  v51 = v50;
                  v52 = v49 - 1;
                  if (v49 <= 2 || v47 >= v48)
                  {
                    v52 = 0;
                  }

                  v54 = OSData::appendBytes(v50, &v9[v52], 1uLL);
                  OUTLINED_FUNCTION_4_8(v54, "checksum:rawvalue");
                  OUTLINED_FUNCTION_1_10();
                  (*(v55 + 16))(v51);
                  v56 = **(this + 9);
                  SROMoffsetSKU = AppleBCMWLANChipManagerPCIe::getSROMoffsetSKU(this);
                  LOBYTE(v66) = *OSData::getBytesNoCopy(v56, SROMoffsetSKU, 1uLL);
                  v58 = **(this + 9);
                  v59 = AppleBCMWLANChipManagerPCIe::getSROMoffsetSKU(this);
                  HIBYTE(v66) = *OSData::getBytesNoCopy(v58, (v59 + 1), 1uLL);
                  v60 = OSData::withCapacity(2u);
                  if (v60)
                  {
                    v61 = v60;
                    OSData::appendBytes(v60, &v66, 1uLL);
                    OSData::appendBytes(v61, &v66 + 1, 1uLL);
                    AppleBCMWLANChipManagerPCIe::setChipProvisioningData(this, "SKU", v61);
                    (v61->release)(v61);
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v3;
}

uint64_t AppleBCMWLANChipManagerPCIe4387::readSFLASH(AppleBCMWLANChipManagerPCIe4387 *this, AppleBCMWLANChipBackplane *a2, const OSData *a3)
{
  v21 = 0;
  bytes = 58;
  if (**(this + 9))
  {
    return 0;
  }

  if (!a2)
  {
    return 3758097086;
  }

  if (a3 && OSData::getLength(a3))
  {
    v6 = OSData::withData(a3);
  }

  else
  {
    SROMByteCount = AppleBCMWLANChipManagerPCIe::getSROMByteCount(this);
    v6 = OSData::withCapacity(SROMByteCount);
  }

  **(this + 9) = v6;
  v8 = **(this + 9);
  if (v8)
  {
    result = 0;
  }

  else
  {
    result = 3758097085;
  }

  if (!a3 && v8)
  {
    if (AppleBCMWLANChipManagerPCIe::getSROMByteCount(this))
    {
      v10 = 0;
      do
      {
        v11 = OUTLINED_FUNCTION_2_8();
        OSData::appendBytes(v11, &bytes, 1uLL);
        ++v10;
      }

      while (v10 < AppleBCMWLANChipManagerPCIe::getSROMByteCount(this));
    }

    v12 = OUTLINED_FUNCTION_2_8();
    BytesNoCopy = OSData::getBytesNoCopy(v12);
    if (!BytesNoCopy)
    {
      return 3758097085;
    }

    result = AppleBCMWLANChipManagerPCIe4387::sflashGPIOConfig(BytesNoCopy, a2);
    if (!result)
    {
      if (AppleBCMWLANChipManagerPCIe::getSROMByteCount(this) >= 4)
      {
        v14 = 0;
        v15 = 0;
        do
        {
          AppleBCMWLANChipBackplane::readCommonSFLASHWrapperReg32(a2, v14, &v21);
          v16 = v21;
          v17 = OUTLINED_FUNCTION_2_8();
          *OSData::getBytesNoCopy(v17, v14, 2uLL) = v16;
          v18 = HIWORD(v21);
          v19 = OUTLINED_FUNCTION_2_8();
          *OSData::getBytesNoCopy(v19, v14 + 2, 2uLL) = v18;
          ++v15;
          v14 += 4;
        }

        while (v15 < AppleBCMWLANChipManagerPCIe::getSROMByteCount(this) >> 2);
      }

      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANChipManagerPCIe4387::sflashGPIOConfig(AppleBCMWLANChipManagerPCIe4387 *this, AppleBCMWLANChipBackplane *a2)
{
  v2 = 3758097098;
  if (!a2)
  {
    return 3758097086;
  }

  AppleBCMWLANChipBackplane::writeGCICoreReg32(a2, 0x40u, 1u);
  v4 = OUTLINED_FUNCTION_5_7();
  if (!AppleBCMWLANChipBackplane::readGCICoreReg32(v4, v5, v6))
  {
    v7 = OUTLINED_FUNCTION_5_7();
    AppleBCMWLANChipBackplane::writeGCICoreReg32(v7, v8, v9);
    AppleBCMWLANChipBackplane::writeGCICoreReg32(a2, 0x40u, 2u);
    v10 = OUTLINED_FUNCTION_5_7();
    if (!AppleBCMWLANChipBackplane::readGCICoreReg32(v10, v11, v12))
    {
      v13 = OUTLINED_FUNCTION_5_7();
      AppleBCMWLANChipBackplane::writeGCICoreReg32(v13, v14, v15);
      return 0;
    }
  }

  return v2;
}

uint64_t AppleBCMWLANChipManagerPCIe4387::validateChipProvisioningData(AppleBCMWLANChipManagerPCIe4387 *this)
{
  ChipProvisioningData = AppleBCMWLANChipManagerPCIe::getChipProvisioningData(this);
  if (!ChipProvisioningData)
  {
    return 3758097086;
  }

  OUTLINED_FUNCTION_3_6(ChipProvisioningData, "checksum:valid", v3, v4, v5, v6, v7, v8, v15, v16, v17, 0);
  OUTLINED_FUNCTION_24_1();
  if (!(*(v11 + 72))(this))
  {
    return 3825175815;
  }

  OUTLINED_FUNCTION_24_1();
  (*(v12 + 72))(this);
  v10 = 3825175815;
  if (CCLogStream::shouldLog())
  {
    OUTLINED_FUNCTION_24_1();
    v14 = (*(v13 + 72))(this);
    CCLogStream::logAlert(v14, "[dk] %s@%d: Invalid checksum\n");
  }

  return v10;
}

OSDataPtr AppleBCMWLANChipManagerPCIe4387::copySROM(AppleBCMWLANChipManagerPCIe4387 *this)
{
  v2 = **(this + 9);
  if (!v2 || !OSData::getLength(v2))
  {
    return 0;
  }

  v3 = **(this + 9);

  return OSData::withData(v3);
}

BOOL AppleBCMWLANAudioProtector::createReportersAndLegend(AppleBCMWLANAudioProtector *this)
{
  ReporterProvider = IO80211Controller::getReporterProvider(*(*(this + 8) + 16));
  *(*(this + 8) + 80) = IOSimpleReporter::with(ReporterProvider, 0x8010, 0, v3);
  v4 = *(this + 8);
  v5 = *(v4 + 80);
  if (!v5)
  {
    return 0;
  }

  OSSet::setObject(*(v4 + 96), v5);
  (*(**(*(this + 8) + 80) + 16))(*(*(this + 8) + 80));
  v6 = &off_1003C8DF0;
  v7 = 7;
  do
  {
    IOReporter::addChannel(*(*(this + 8) + 80), *(v6 - 1), *v6);
    v6 += 2;
    --v7;
  }

  while (v7);
  IO80211Controller::addReporterLegend(*(*(this + 8) + 16), *(*(this + 8) + 32), *(*(this + 8) + 80), "Audio Protect", "Events");
  v8 = IO80211Controller::getReporterProvider(*(*(this + 8) + 16));
  *(*(this + 8) + 88) = IOStateReporter::with(v8, 0x12, 2u, 0, v9);
  v10 = *(this + 8);
  v11 = *(v10 + 88);
  if (!v11)
  {
    return 0;
  }

  OSSet::setObject(*(v10 + 96), v11);
  v12 = OUTLINED_FUNCTION_0_10();
  (*(*v12 + 16))(v12);
  v13 = OUTLINED_FUNCTION_0_10();
  IOReporter::addChannel(v13, 0x574946494C444F53uLL, "LDO Control");
  v14 = OUTLINED_FUNCTION_0_10();
  IOStateReporter::setStateID(v14, 0x574946494C444F53uLL, 0, 0x466F726365204F4EuLL);
  v15 = OUTLINED_FUNCTION_0_10();
  IOStateReporter::setStateID(v15, 0x574946494C444F53uLL, 1, 0x6175746FuLL);
  v16 = OUTLINED_FUNCTION_0_10();
  IOStateReporter::setChannelState(v16, 0x574946494C444F53uLL, 0x6175746FuLL);
  return IO80211Controller::addReporterLegend(*(*(this + 8) + 16), *(*(this + 8) + 32), *(*(this + 8) + 88), "Audio Protect", "LDO Control") == 0;
}

uint64_t AppleBCMWLANAudioProtector::initWithDriver(uint64_t *a1, uint64_t *a2)
{
  if (!OUTLINED_FUNCTION_2_9(a1, a2))
  {
    return 1;
  }

  result = CCLogStream::shouldLog();
  if (result)
  {
    v3 = OUTLINED_FUNCTION_0_5();
    CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to create Report Set\n", "initWithDriver", 151);
    return 0;
  }

  return result;
}

{
  if (!OUTLINED_FUNCTION_2_9(a1, a2))
  {
    return 1;
  }

  result = CCLogStream::shouldLog();
  if (result)
  {
    v3 = OUTLINED_FUNCTION_0_5();
    CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to create Reporters and Legend\n", "initWithDriver", 154);
    return 0;
  }

  return result;
}

uint64_t AppleBCMWLANAudioProtector::initWithDriver(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_0_5();
      return CCLogStream::logAlert(v2, "[dk] %s@%d: Unable to get timer to send FW command\n", "initWithDriver", 148);
    }
  }

  return result;
}

{
  result = *(a1 + 8);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_0_5();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:Failed to get Command Manager\n", "initWithDriver", 128);
    }
  }

  return result;
}

uint64_t AppleBCMWLANAudioProtector::initWithDriver()
{
  if (!MEMORY[8])
  {
    return 1;
  }

  result = CCLogStream::shouldLog();
  if (result)
  {
    v1 = OUTLINED_FUNCTION_0_5();
    CCLogStream::logCrit(v1, "[dk] %s@%d:Failed to allocate AppleBCMWLANAudioProtector_IVars\n", "initWithDriver", 114);
    return 0;
  }

  return result;
}

uint64_t AppleBCMWLANAudioProtector::sendLDOCommmand(uint64_t a1, int a2, _DWORD *a3)
{
  result = IOSimpleReporter::incrementValue(*(*a1 + 80), 0x576C616E41504366uLL, 1);
  ++*(*a1 + 48);
  v7 = *(*a1 + 44);
  if (*(*a1 + 48) <= 9u)
  {
    v7 ^= 1u;
  }

  *(*a1 + 45) = v7;
  *a3 = a2;
  return result;
}

uint64_t AppleBCMWLANAudioProtector::sendLDOCommmand(uint64_t a1, int a2)
{
  v4 = *(*a1 + 44);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 72);
  v7 = (*(**(*a1 + 16) + 112))(*(*a1 + 16));
  return CCLogStream::logNotice(v5, "[dk] %s@%d:No %d ldo_prot_ovrd %d return %d %s: %u\n", "sendLDOCommmand", 399, v6, v4, a2, v7, *(*a1 + 48));
}

uint64_t AppleBCMWLANAudioProtector::configureReport(uint64_t a1, OSObject *a2)
{
  result = *(*a1 + 8);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = *(*a1 + 8);
      ClassNameHelper = getClassNameHelper(a2);
      return CCLogStream::logEmergency(v5, "[dk] %s@%d:DKReporter::%s::%s(%d) testPostConfigureAllAndAdjustV3 failed\n", "configureReport", 473, ClassNameHelper, "configureReport", 473);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCoreDbg::dbgTriggerCrash(int a1, CCLogStream *this)
{
  if (a1)
  {
    v2 = *(&kCrashIDMapping + 2 * a1 - 1);
  }

  else
  {
    v2 = "UNKOWN";
  }

  return CCLogStream::logAlert(this, "[dk] %s@%d:Crash command id = %s \n", "dbgTriggerCrash", 897, v2);
}

uint64_t AppleBCMWLANPCIeSkywalk::initWithProviderAndCapacity(AppleBCMWLANPCIeSkywalk *this, OSObject *a2, int a3, int a4, int a5, int a6, int a7, CCLogStream *a8, CCFaultReporter *a9)
{
  v21 = 0;
  result = AppleBCMWLANBusSkywalk::init(this);
  if (result)
  {
    result = IOMallocZeroTyped();
    *(this + 7) = result;
    if (result)
    {
      *(*(this + 7) + 160) = IOLockAlloc();
      v18 = *(this + 7);
      if (*(v18 + 160))
      {
        *(v18 + 24) = a3;
        *(*(this + 7) + 28) = a4;
        *(*(this + 7) + 32) = a5;
        *(*(this + 7) + 36) = a6;
        *(*(this + 7) + 40) = a7;
        *(*(this + 7) + 48) = a2;
        **(this + 7) = a8;
        if (OUTLINED_FUNCTION_4_9())
        {
          OUTLINED_FUNCTION_5_0();
          (*(v20 + 8))();
          v19 = *(this + 7);
        }

        *(v19 + 16) = a9;
        IOParseBootArgNumber("wlan.skywalk.ktrace", &fKernelTraceEnabled, 1);
        *(*(this + 7) + 129) = 0;
        if (IOParseBootArgNumber("wlan.txcomp.debug", &v21, 4))
        {
          *(*(this + 7) + 129) = 1;
        }

        *(*(this + 7) + 120) = 0;
        *(*(this + 7) + 476) = 0;
        *(*(this + 7) + 480) = 0;
        *(*(this + 7) + 484) = 0;
        return AppleBCMWLANPCIeSkywalk::allocSkywalkCommonResources(this, a2) == 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::registerSkywalkInterface(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 88);
  if (!v4)
  {
    v4 = **(a1 + 56);
  }

  if (*a2 && *(a2 + 24) && *(a2 + 40) && *(a2 + 48))
  {
    v5 = 3758097084;
    isLowLatencyEnabled = IO80211SkywalkInterface::isLowLatencyEnabled(*a2);
    v7 = *(a1 + 56);
    v8 = 24;
    if (isLowLatencyEnabled)
    {
      v8 = 28;
    }

    v9 = *(v7 + v8);
    **(a2 + 32) = *(v7 + 64);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(*a2);
    if (!*(a2 + 56))
    {
LABEL_14:
      if (*(a2 + 8))
      {
        v13 = 0;
        while (1)
        {
          v14 = OUTLINED_FUNCTION_18_1();
          *(*(a2 + 24) + 8 * v13) = AppleBCMWLANPCIeSkywalkTxSubmissionQueue::withProviderAndQueueInfoAndPool(v14, *a2, InterfaceId, v13, *(*(a2 + 16) + 4 * v13), v9, *(*(a1 + 56) + 56), v4, *(*(a1 + 56) + 16));
          v15 = *(*(a2 + 24) + 8 * v13);
          if (!v15)
          {
            goto LABEL_30;
          }

          AppleBCMWLANSkywalkTxSubmissionQueue::setInterface(v15, *a2);
          if (++v13 >= *(a2 + 8))
          {
            v16 = (v13 + 1);
            goto LABEL_20;
          }
        }
      }

      v13 = 0;
      v16 = 1;
LABEL_20:
      v17 = OUTLINED_FUNCTION_18_1();
      **(a2 + 40) = AppleBCMWLANPCIeSkywalkTxCompletionQueue::withProviderAndQueueInfoAndPool(v17, *a2, InterfaceId, v13, v9, *(*(a1 + 56) + 56), v4, *(*(a1 + 56) + 16), v28);
      v18 = **(a2 + 40);
      if (!v18)
      {
        goto LABEL_30;
      }

      AppleBCMWLANSkywalkTxCompletionQueue::setInterface(v18, *a2);
      v19 = OUTLINED_FUNCTION_18_1();
      **(a2 + 48) = AppleBCMWLANPCIeSkywalkRxCompletionQueue::withProviderAndQueueInfoAndPool(v19, *a2, InterfaceId, v16, *(*(a1 + 56) + 32), *(*(a1 + 56) + 56), v4, *(*(a1 + 56) + 16), v29);
      if (!**(a2 + 48))
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_5_0();
      (*(v20 + 176))();
      AppleBCMWLANPCIeSkywalkPacketPool::setTxPacketHeadroom(*(*(a1 + 56) + 56), *(a2 + 80));
      if (isLowLatencyEnabled)
      {
        if (!IO80211SkywalkInterface::getWorkQueue(*a2))
        {
          return 0;
        }

        OUTLINED_FUNCTION_10_6();
        OUTLINED_FUNCTION_5_0();
        (*(v21 + 112))();
      }

      **(a2 + 64) = *(*(a1 + 56) + 56);
      **(a2 + 72) = *(*(a1 + 56) + 56);
      if (InterfaceId != -1)
      {
        v5 = 0;
        *(*(a1 + 56) + 44) |= 1 << InterfaceId;
        return v5;
      }

      return 0;
    }

    v11 = OUTLINED_FUNCTION_18_1();
    **(a2 + 56) = AppleBCMWLANPCIeSkywalkMulticastQueue::withProviderAndQueueInfo(v11, *a2, **(a1 + 56), *(*(a1 + 56) + 16), v12);
    if (**(a2 + 56))
    {
      if (**(a1 + 56) && CCLogStream::shouldLog())
      {
        CCLogStream::logInfo(**(a1 + 56), "[dk] %s@%d:mc queue %p\n", "registerSkywalkInterface", 478, **(a2 + 56));
      }

      goto LABEL_14;
    }
  }

  else
  {
    v5 = 3758096385;
  }

LABEL_30:
  v23 = *(a2 + 8);
  if (*(a2 + 8))
  {
    v24 = 0;
    do
    {
      if (*(*(a2 + 24) + 8 * v24))
      {
        OUTLINED_FUNCTION_5_0();
        (*(v25 + 16))();
        *(*(a2 + 24) + 8 * v24) = 0;
        v23 = *(a2 + 8);
      }

      ++v24;
    }

    while (v24 < v23);
  }

  if (**(a2 + 40))
  {
    OUTLINED_FUNCTION_5_0();
    (*(v26 + 16))();
    **(a2 + 40) = 0;
  }

  if (**(a2 + 48))
  {
    OUTLINED_FUNCTION_5_0();
    (*(v27 + 16))();
    **(a2 + 48) = 0;
  }

  return v5;
}

AppleBCMWLANPCIeSubmissionRing *AppleBCMWLANPCIeSkywalk::attachRxSubmRing(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  if (!a2)
  {
    return 0;
  }

  if (*(*(a1 + 56) + 8) && CCLogStream::shouldLog())
  {
    CCLogStream::logInfo(*(*(a1 + 56) + 8), "[dk] %s@%d:Enter", "attachRxSubmRing", 543);
  }

  *(a2 + 16) = AppleBCMWLANPCIeSkywalkRxSubmissionQueue::fwRingPending;
  *(a2 + 24) = *(*(a1 + 56) + 64);
  v4 = *(a1 + 56);
  v5 = *(v4 + 48);
  v6 = *(v4 + 64);
  v7 = (*(*v5 + 80))(v5);
  v8 = (*(*v5 + 1080))(v5, &v11, a2, v6, v7, AppleBCMWLANPCIeSkywalkRxSubmissionQueue::fwRingFill, AppleBCMWLANPCIeSkywalkRxSubmissionQueue::fwRingError);
  v9 = *(a1 + 56);
  if (v8)
  {
    result = *(v9 + 8);
    if (!result)
    {
      return result;
    }

    if (CCLogStream::shouldLog())
    {
      CCLogStream::logInfo(*(*(a1 + 56) + 8), "[dk] %s@%d:Skywalk Create RX submission ring Fail\n", "attachRxSubmRing", 553);
    }

    return 0;
  }

  AppleBCMWLANPCIeSkywalkRxSubmissionQueue::setFWRing(*(v9 + 64), v11);
  AppleBCMWLANPCIeSkywalkRxSubmissionQueue::setRxRingSize(*(*(a1 + 56) + 64), *(a2 + 8));
  return v11;
}

uint64_t AppleBCMWLANPCIeSkywalk::rxCompRingDrain(AppleBCMWLANPCIeSkywalk *this, OSMetaClassBase *anObject, unsigned __int8 *a3, unsigned int a4)
{
  *v151 = 0;
  v7 = OSMetaClassBase::safeMetaCast(anObject, gAppleBCMWLANPCIeCompletionRingMetaClass);
  v8 = OUTLINED_FUNCTION_12_4(*(this + 7));
  v10 = (*(v9 + 1104))(v8);
  OUTLINED_FUNCTION_9_6();
  v145 = (*(v11 + 208))(v7);
  if (fKernelTraceEnabled)
  {
    OUTLINED_FUNCTION_9_6();
    (*(v131 + 208))(v7);
    v132 = OUTLINED_FUNCTION_0_11(*(this + 7));
    (*(v133 + 792))(v132);
    kdebug_trace();
  }

  RxPacketTracker = AppleBCMWLANPCIeSkywalkPacketPool::getRxPacketTracker(*(*(this + 7) + 56));
  *(*(this + 7) + 336) += a4;
  v143 = mach_continuous_time();
  *(*(this + 7) + 192) = v143;
  v144 = a4;
  if (a4)
  {
    v142 = 0;
    v12 = a4;
    v149 = v7;
    do
    {
      v13 = *(a3 + 2);
      v14 = AppleBCMWLANHashtable::remove(RxPacketTracker, v13);
      v15 = OSMetaClassBase::safeMetaCast(v14, gAppleBCMWLANPCIeSkywalkPacketMetaClass);
      v16 = v15;
      v17 = a3[1];
      if (v17 <= 0xB)
      {
        ++*(*(this + 7) + 8 * v17 + 368);
      }

      if (!v15)
      {
        if (OUTLINED_FUNCTION_4_9())
        {
          shouldLog = CCLogStream::shouldLog();
          v104 = *(this + 7);
          if (shouldLog)
          {
            CCLogStream::logAlert(*v104, "[dk] %s@%d:invalid rx comp packet, resource id %d\n", "rxCompRingDrain", 1348, v13);
            goto LABEL_113;
          }
        }

LABEL_114:
        ++*(v104 + 352);
        goto LABEL_109;
      }

      OUTLINED_FUNCTION_9_6();
      v19 = (*(v18 + 248))(v7);
      LOBYTE(v20) = a3[2];
      if (v19 == ((v20 & 0x80u) == 0) || *a3 != 18)
      {
        if (OUTLINED_FUNCTION_4_9())
        {
          v97 = CCLogStream::shouldLog();
          v81 = *(this + 7);
          if (v97)
          {
            v98 = *v81;
            OUTLINED_FUNCTION_9_6();
            (*(v99 + 248))(v7);
            CCLogStream::logAlert(v98, "[dk] %s@%d:Ring Phase=%d msg Phase=%d msg type=%d ifId=%d packet=%p", "rxCompRingDrain");
            goto LABEL_102;
          }
        }

LABEL_112:
        AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(*(v81 + 56), v16);
LABEL_113:
        v104 = *(this + 7);
        goto LABEL_114;
      }

      if ((a3[2] & 8) != 0 && OUTLINED_FUNCTION_4_9() && (v21 = CCLogStream::shouldLog(), v20 = a3[2], v21))
      {
        v148 = **(this + 7);
        v141 = a3[1];
        v139 = *(a3 + 5);
        v138 = *(a3 + 9);
        v107 = *(a3 + 8);
        v108 = *(a3 + 7);
        v109 = v12;
        v110 = (*(*v149 + 224))(v149);
        v111 = (*(*v149 + 232))(v149);
        v137 = v110;
        v12 = v109;
        CCLogStream::logAlert(v148, "[dk] %s@%d:Rx packet, wake packet bit, header flags %d ifId %d flowid %d flags %d, data offset %d length %d @ {%d %d}, type:0x%08x\n", "rxCompRingDrain", 1369, v20, v141, v139, v138, v107, v108, v137, v111, 32);
        if ((a3[2] & 8) == 0)
        {
          goto LABEL_14;
        }
      }

      else if ((v20 & 8) == 0)
      {
        goto LABEL_14;
      }

      if (*(*(this + 7) + 48))
      {
        OUTLINED_FUNCTION_5_0();
        if ((*(v112 + 1104))())
        {
          v113 = OUTLINED_FUNCTION_0_11(*(this + 7));
          v115 = (*(v114 + 1104))(v113);
          AppleBCMWLANCore::setWiFiWakeType(v115, 32);
        }
      }

LABEL_14:
      v151[1] = *(a3 + 7);
      v22 = v151[1];
      v23 = *(a3 + 8);
      v151[0] = *(a3 + 8);
      if (!v151[1] || v23 + v151[1] > 0x800 || (v24 = v23 + v22 + IO80211NetworkPacket::getHeadroom(v16), OUTLINED_FUNCTION_8_8(), v24 > (*(v25 + 488))(v16)))
      {
        if (OUTLINED_FUNCTION_4_9())
        {
          v82 = CCLogStream::shouldLog();
          v81 = *(this + 7);
          v7 = v149;
          if (v82)
          {
            CCLogStream::logAlert(*v81, "[dk] %s@%d:RX SW, packet offset/length invalid\n");
            goto LABEL_102;
          }
        }

        else
        {
          v7 = v149;
        }

        goto LABEL_112;
      }

      v147 = v12;
      OUTLINED_FUNCTION_5_8();
      v27 = (*(v26 + 1992))(v10, v17);
      v28 = v27;
      if (!v27 || (*(*(this + 7) + 128) & 1) != 0)
      {
        v7 = v149;
LABEL_91:
        AppleBCMWLANItemRing::getItemSize(v7);
        v100 = OUTLINED_FUNCTION_27_2();
        AppleBCMWLANPCIeSkywalk::completeRxPacketMonitor(v100, v101, v28, v16, v102);
        OUTLINED_FUNCTION_21_0();
        OUTLINED_FUNCTION_3_7();
        ++v142;
        goto LABEL_108;
      }

      InterfaceRole = IO80211SkywalkInterface::getInterfaceRole(v27);
      Scratch = AppleBCMWLANPCIeSkywalkPacket::getScratch(v16);
      v31 = AppleBCMWLANItemRing::getItemSize(v149) == 40;
      AppleBCMWLANPCIeSkywalk::getRxTimeStamp(this, Scratch, a3, v31);
      *(Scratch + 24) = a3[18] >> 5;
      v32 = OUTLINED_FUNCTION_4_9();
      *(Scratch + 12) = ratespec2rate(v32, *(a3 + 5));
      *Scratch = a3[28];
      if ((*(a3 + 7) & 0x1000000) != 0)
      {
        v33 = 2;
      }

      else
      {
        v33 = 1;
      }

      *(Scratch + 40) = v33;
      v34 = v145 == 5 && v17 == 3;
      if (v34 || IO80211SkywalkInterface::isLowLatencyEnabled(v28))
      {
        if (AppleBCMWLANCore::getProximityInterfaceId(v10) == v17)
        {
          OUTLINED_FUNCTION_8_8();
          v36 = ((*(v35 + 480))(v16) + v23);
          if ((*(a3 + 9) & 2) != 0)
          {
            v37 = 26;
            if (*v36 != 136)
            {
              v37 = 24;
            }
          }

          else
          {
            v37 = 14;
          }

          v52 = &v36[v37];
          v7 = v149;
          if (*v52 == 240298 && *(v52 + 2) == -3561)
          {
            goto LABEL_91;
          }
        }

        else
        {
          v7 = v149;
          OUTLINED_FUNCTION_9_6();
          v39 = (*(v38 + 208))(v149);
          OUTLINED_FUNCTION_5_8();
          LODWORD(v17) = 10;
          v28 = (*(v40 + 1992))(v10, 10);
          if (v39 != 5)
          {
            goto LABEL_91;
          }
        }
      }

      else
      {
        if (InterfaceRole == 10)
        {
          v151[0] = (IO80211NetworkPacket::getHeadroom(v16) + v23);
          IO80211NetworkPacket::setHeadroom(v16, v151[0]);
          v28 = (*(*v10 + 1992))(v10, 4);
          if (!AppleBCMWLANPCIeSkywalk::handleRxNanDataInterfacePacket(this, v16, v151, &v151[1]) || (OUTLINED_FUNCTION_8_8(), v54 = (*(v53 + 480))(v16), OUTLINED_FUNCTION_8_8(), v56 = v54 + (*(v55 + 240))(v16), !(*(*v28 + 624))(v28, v16, Scratch, v56, 0, 0)))
          {
            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_3_7();
LABEL_107:
            v7 = v149;
            goto LABEL_108;
          }

          IO80211NetworkPacket::setHeadroom(v16, v151[0]);
        }

        else if (InterfaceRole == 6)
        {
          v150 = -86;
          Headroom = IO80211NetworkPacket::getHeadroom(v16);
          if (v22 < 0x1C)
          {
            if (OUTLINED_FUNCTION_4_9() && CCLogStream::shouldLog())
            {
              v74 = OUTLINED_FUNCTION_4_9();
              CCLogStream::logAlert(v74, "[dk] %s@%d:ERROR ! Discarding packet - Too small (len %d)\n");
            }

            goto LABEL_106;
          }

          v42 = *(a3 + 9);
          LOBYTE(v23) = Headroom + v23;
          v151[0] = 0;
          OUTLINED_FUNCTION_8_8();
          v44 = (*(v43 + 480))(v16);
          if ((v42 & 2) != 0)
          {
            v75 = (v44 + v23);
            if ((v75[1] & 3) != 0 || (*v75 & 0xC) != 8)
            {
              goto LABEL_106;
            }

            v76 = *v75 < 0 ? 26 : 24;
            if ((v76 | 4) > v22)
            {
              goto LABEL_106;
            }

            v77 = &v75[v76];
            *(v77 - 2) = *(v75 + 10);
            *(v77 - 2) = *(v75 + 7);
            *(v77 - 14) = *(v75 + 1);
            *(v77 - 5) = *(v75 + 4);
            v78 = v76 - 14;
            v45 = v23 + v76 - 14;
            LOWORD(v22) = v22 - v78 - 4;
            v23 = v45;
          }

          else
          {
            v45 = v23;
            v23 = v23;
          }

          v140 = v45;
          v46 = v45;
          IO80211NetworkPacket::setHeadroom(v16, v45);
          OUTLINED_FUNCTION_8_8();
          v48 = (*(v47 + 480))(v16) + v23;
          if (*(v48 + 14) == 170 && *(v48 + 15) == 170 && *(v48 + 16) == 3)
          {
            v49 = *(v48 + 17);
            if (v49 == 150083328)
            {
              *(v48 + 16) = *v48;
              *(v48 + 24) = *(v48 + 8);
              v50 = -16;
              v51 = 16;
            }

            else
            {
              if (*(v48 + 17) || (v49 & 0xFF00) != 0 || (v49 & 0xFF0000) != 0)
              {
                if (OUTLINED_FUNCTION_4_9() && CCLogStream::shouldLog())
                {
                  v103 = OUTLINED_FUNCTION_4_9();
                  CCLogStream::logAlert(v103, "[dk] %s@%d:ERROR ! Discard packet : BAD OUI %02x %02x %02x Ethertype = 0x%04x \n");
                }

                goto LABEL_106;
              }

              OUTLINED_FUNCTION_5_8();
              v84 = (*(v83 + 1992))(v10, 9);
              if (!v84)
              {
                if (OUTLINED_FUNCTION_4_9() && CCLogStream::shouldLog())
                {
                  v116 = OUTLINED_FUNCTION_4_9();
                  CCLogStream::logAlert(v116, "[dk] %s@%d:ERROR ! LLW interface is null\n");
                }

LABEL_106:
                OUTLINED_FUNCTION_3_7();
                OUTLINED_FUNCTION_21_0();
                goto LABEL_107;
              }

              v28 = v84;
              v85 = *(v48 + 8);
              *(v48 + 8) = *v48;
              *(v48 + 16) = v85;
              v50 = -8;
              v51 = 8;
            }

            LOWORD(v22) = v22 + v50;
            v86 = (v140 + v51);
            v87 = OUTLINED_FUNCTION_24_2();
            IO80211NetworkPacket::setHeadroom(v87, v88);
            v151[1] = v22;
            v151[0] = v86;
          }

          else
          {
            v151[0] = v46;
            v151[1] = v22;
            if (*(v48 + 12) < 0x600u)
            {
              goto LABEL_106;
            }

            OUTLINED_FUNCTION_5_8();
            v80 = (*(v79 + 1992))(v10, 9);
            if (!v80)
            {
              IOLog("%s[%d] ERROR : LLW interface does not exist, Discard packet\n", "rxCompRingDrain", 1571);
              goto LABEL_106;
            }

            v28 = v80;
            LODWORD(v17) = IO80211SkywalkInterface::getInterfaceId(v80);
          }

          v150 = 0;
          OUTLINED_FUNCTION_8_8();
          v89 = OUTLINED_FUNCTION_24_2();
          v90(v89);
          OUTLINED_FUNCTION_8_8();
          (*(v91 + 216))(v16, v22);
          v92 = OUTLINED_FUNCTION_24_2();
          IO80211NetworkPacket::setLinkHeaderOffset(v92, v93);
          v94 = (v16->OSObject::OSMetaClassBase::__vftable[1].getDataLength)(v16);
          OUTLINED_FUNCTION_8_8();
          v96 = v94 + (*(v95 + 240))(v16);
          if (!(*(*v28 + 624))(v28, v16, Scratch, v96, &v150, 0))
          {
            goto LABEL_106;
          }

          if (v150)
          {
            goto LABEL_107;
          }
        }

        v7 = v149;
      }

      OUTLINED_FUNCTION_19_2();
      v58 = (*(v57 + 1192))(v28);
      v59 = OSMetaClassBase::safeMetaCast(v58, gAppleBCMWLANPCIeSkywalkRxCompletionQueueMetaClass);
      if (!v59)
      {
        if (OUTLINED_FUNCTION_4_9())
        {
          v106 = CCLogStream::shouldLog();
          v81 = *(this + 7);
          v12 = v147;
          if (v106)
          {
            CCLogStream::logAlert(*v81, "[dk] %s@%d:Invalid getRxCompQueue(), go next\n");
LABEL_102:
            v81 = *(this + 7);
          }
        }

        else
        {
          v12 = v147;
        }

        goto LABEL_112;
      }

      v60 = v59;
      if ((a3[2] & 8) != 0)
      {
        OUTLINED_FUNCTION_8_8();
        (*(v61 + 272))(v16);
      }

      OUTLINED_FUNCTION_8_8();
      if ((*(v62 + 376))(v16))
      {
        OUTLINED_FUNCTION_8_8();
        (*(v63 + 384))(v16, 135528453);
      }

      OUTLINED_FUNCTION_8_8();
      v64 = OUTLINED_FUNCTION_24_2();
      v65(v64);
      OUTLINED_FUNCTION_8_8();
      (*(v66 + 216))(v16);
      v67 = OUTLINED_FUNCTION_24_2();
      IO80211NetworkPacket::setLinkHeaderOffset(v67, v68);
      AppleBCMWLANItemRing::getItemSize(v7);
      v69 = OUTLINED_FUNCTION_27_2();
      AppleBCMWLANPCIeSkywalk::setRXTimestamp(v69, v70, v16, v28, v71);
      OUTLINED_FUNCTION_24_1();
      if (((*(v72 + 216))(v60) & 1) != 0 || !v17)
      {
        OUTLINED_FUNCTION_24_1();
        (*(v73 + 232))(v60, v16, 0, 0);
        ++*(*(this + 7) + 360);
      }

      else
      {
        OUTLINED_FUNCTION_3_7();
        OUTLINED_FUNCTION_21_0();
      }

LABEL_108:
      v12 = v147;
LABEL_109:
      a3 += AppleBCMWLANItemRing::getItemSize(v7);
      ++*(*(this + 7) + 344);
      --v12;
    }

    while (v12);
  }

  AppleBCMWLANPCIeSkywalkRxSubmissionQueue::requestRingFill(*(*(this + 7) + 64));
  v117 = 0;
  do
  {
    OUTLINED_FUNCTION_5_8();
    v119 = (*(v118 + 1992))(v10, v117);
    if (v119)
    {
      v120 = v119;
      OUTLINED_FUNCTION_5_0();
      v122 = (*(v121 + 1192))();
      if (v122)
      {
        v123 = v122;
        OUTLINED_FUNCTION_5_0();
        if ((*(v124 + 120))())
        {
          if (IO80211SkywalkInterface::getInterfaceRole(v120) != 1)
          {
            (*(*v123 + 192))(v123);
          }
        }
      }
    }

    v117 = (v117 + 1);
  }

  while (v117 != 12);
  AppleBCMWLANBusInterfacePCIe::updateActiveRxBufferCount(*(*(this + 7) + 48), -v144);
  OUTLINED_FUNCTION_5_0();
  (*(v125 + 128))();
  v126 = OUTLINED_FUNCTION_12_4(*(this + 7));
  v128 = (*(v127 + 1104))(v126);
  if (v128)
  {
    v129 = v128;
    AppleBCMWLANCore::updateDataPathActivityTimestamp(v128, v143);
    AppleBCMWLANCore::handleDataPathActivity(v129);
  }

  if (fKernelTraceEnabled)
  {
    OUTLINED_FUNCTION_9_6();
    (*(v134 + 208))(v7);
    v135 = OUTLINED_FUNCTION_0_11(*(this + 7));
    (*(v136 + 792))(v135);
    kdebug_trace();
  }

  return v144;
}

uint64_t AppleBCMWLANPCIeSkywalk::createLowLatencyCompRing(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 > 1)
  {
    return 3758097084;
  }

  *&v12 = a1;
  *(&v12 + 1) = AppleBCMWLANPCIeSkywalk::createLowLatencyCompRingComplete;
  v4 = *(a1 + 56);
  v5 = 88;
  if (a3)
  {
    v5 = 96;
    v6 = AppleBCMWLANPCIeSkywalk::rxCompRingError;
  }

  else
  {
    v6 = AppleBCMWLANPCIeSkywalk::txCompRingError;
  }

  if (a3)
  {
    v7 = AppleBCMWLANPCIeSkywalk::rxCompRingDrain;
  }

  else
  {
    v7 = AppleBCMWLANPCIeSkywalk::txCompRingDrain;
  }

  v13 = v4 + v5;
  v8 = AppleBCMWLANBusInterfacePCIe::createDynamicCompletionRing(*(v4 + 48), a2, &v12, v7, v6);
  if (OUTLINED_FUNCTION_2_10() && CCLogStream::shouldLog())
  {
    v11 = OUTLINED_FUNCTION_2_10();
    CCLogStream::logAlert(v11, "[dk] %s@%d:dynamic completion ring create returned 0x%x\n", "createLowLatencyCompRing", 648, v8);
    if (v8)
    {
      return v8;
    }

    goto LABEL_11;
  }

  if (!v8)
  {
LABEL_11:
    ++*(*(a1 + 56) + 112);
    OUTLINED_FUNCTION_5_0();
    (*(v9 + 56))();
  }

  return v8;
}

uint64_t AppleBCMWLANPCIeSkywalk::createLowLatencyCompRingComplete(uint64_t this, AppleBCMWLANPCIeCompletionRing *a2, int a3, CCLogStream **a4)
{
  v7 = this;
  v8 = *(this + 56);
  if (!*(v8 + 112) || (--*(v8 + 112), v9 = *(this + 56), !*(v9 + 112)))
  {
    OUTLINED_FUNCTION_5_0();
    this = (*(v10 + 72))();
    v9 = *(v7 + 56);
  }

  v12 = (v9 + 88) != a4 && v9 + 96 != a4;
  if (a2 && !v12)
  {
    if (*v9 && CCLogStream::shouldLog())
    {
      v22 = *(v7 + 56);
      if (v22 + 11 == a4)
      {
        v23 = "tx";
      }

      else
      {
        v23 = "rx";
      }

      CCLogStream::logAlert(*v22, "[dk] %s@%d:Skywalk low latency %s comp ring create complete ", "createLowLatencyCompRingComplete", 673, v23);
    }

    v13 = OUTLINED_FUNCTION_2_10();
    if (a3)
    {
      if (v13)
      {
        shouldLog = CCLogStream::shouldLog();
        v14 = *(v7 + 56);
        if (shouldLog)
        {
          CCLogStream::logAlert(*v14, "[dk] %s@%d:failed\n", "createLowLatencyCompRingComplete", 685);
          v14 = *(v7 + 56);
        }
      }

      v16 = v14[2];

      return CCFaultReporter::reportFault(v16, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANPCIeSkywalk.cpp", 0x2AEu, "createLowLatencyCompRingComplete", 0, -469794010, 0);
    }

    else
    {
      if (v13)
      {
        v17 = CCLogStream::shouldLog();
        v14 = *(v7 + 56);
        if (v17)
        {
          CCLogStream::logAlert(*v14, "[dk] %s@%d:succeeded %p\n", "createLowLatencyCompRingComplete", 675, a2);
          v14 = *(v7 + 56);
        }
      }

      v18 = 12;
      if (v14 + 11 == a4)
      {
        v18 = 11;
      }

      v14[v18] = a2;
      v19 = OUTLINED_FUNCTION_0_11(*(v7 + 56));
      this = (*(v20 + 80))(v19);
      if (this)
      {
        OUTLINED_FUNCTION_10_6();
        OUTLINED_FUNCTION_5_0();
        return (*(v21 + 112))();
      }
    }
  }

  return this;
}

uint64_t AppleBCMWLANPCIeSkywalk::txCompRingDrain(AppleBCMWLANPCIeSkywalk *this, OSMetaClassBase *anObject, char *a3, unsigned int a4)
{
  memset(v145, 170, 24);
  v8 = OSMetaClassBase::safeMetaCast(anObject, gAppleBCMWLANPCIeCompletionRingMetaClass);
  v9 = OUTLINED_FUNCTION_12_4(*(this + 7));
  v11 = (*(v10 + 1104))(v9);
  TxPacketTracker = AppleBCMWLANPCIeSkywalkPacketPool::getTxPacketTracker(*(*(this + 7) + 56));
  v12 = OUTLINED_FUNCTION_26();
  TxChipDelayToUsecMultiplier = AppleBCMWLANBusInterfacePCIe::getTxChipDelayToUsecMultiplier(v12);
  v144 = 0;
  PTMMode = AppleBCMWLANCore::getPTMMode(v11);
  v13 = &kSliceChannelSwitchDwellHistConfig;
  if (fKernelTraceEnabled)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v119 + 208))(v8);
    v120 = OUTLINED_FUNCTION_0_11(*(this + 7));
    (*(v121 + 784))(v120);
    kdebug_trace();
  }

  v14 = mach_continuous_time();
  v15 = v14;
  *(*(this + 7) + 200) = v14;
  *(*(this + 7) + 208) += a4;
  if (!a4)
  {
    v110 = 0;
    goto LABEL_183;
  }

  v132 = anObject;
  v16 = 0;
  v17 = 0;
  v134 = 0;
  v133 = 0;
  v137 = 0;
  v135 = v14;
  v131 = a4;
  v136 = a4;
  v18 = a4;
  v140 = v8;
  do
  {
    v145[0] = *a3;
    *&v145[1] = *(a3 + 2);
    if (BYTE1(v145[0]) <= 0xBuLL)
    {
      ++*(*(this + 7) + 8 * BYTE1(v145[0]) + 240);
    }

    if ((AppleBCMWLANPCIeTransmitFlowRing::isSkywalkResource(WORD3(v145[0])) & 1) == 0)
    {
      OUTLINED_FUNCTION_14_4();
      if (v24)
      {
        if ((!*v65 || (CCLogStream::shouldLogConsole() & 1) == 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67110402;
          v147 = 73;
          v148 = 2080;
          v149 = "txCompRingDrain";
          v150 = 1024;
          v151 = 1923;
          v152 = 1024;
          v153 = WORD2(v145[0]);
          v154 = 1024;
          v155 = BYTE1(v145[0]);
          v156 = 1024;
          *v157 = WORD5(v145[0]);
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: TxCompletionDebug: Skipping packet in isSkywalkResource resource id <%d> ifId <%d> flowid <%d>\n", buf, 0x2Au);
        }

        if (!OUTLINED_FUNCTION_2_10())
        {
          goto LABEL_154;
        }

        shouldLog = CCLogStream::shouldLog();
        v65 = *(this + 7);
        if (shouldLog)
        {
          CCLogStream::logInfo(*v65, "[dk] %s@%d:TxCompletionDebug: Skipping packet in isSkywalkResource resource id <%d> ifId <%d> flowid <%d>\n", "txCompRingDrain", 1923, WORD2(v145[0]), BYTE1(v145[0]), WORD5(v145[0]));
          v65 = *(this + 7);
        }

        v8 = v140;
      }

      if (*v65 && CCLogStream::shouldLog())
      {
        v66 = OUTLINED_FUNCTION_2_10();
        CCLogStream::logEmergency(v66, "[dk] %s@%d:Skipping, completion is not a skywalkResource:0x%hx\n", "txCompRingDrain", 1925, WORD3(v145[0]));
      }

      goto LABEL_41;
    }

    v19 = WORD2(v145[0]);
    v20 = AppleBCMWLANHashtable::remove(TxPacketTracker, SWORD2(v145[0]));
    v21 = OSMetaClassBase::safeMetaCast(v20, gAppleBCMWLANPCIeSkywalkPacketMetaClass);
    v22 = *(*(this + 7) + 88);
    v23 = BYTE1(v145[0]);
    if (v22)
    {
      v24 = v8 == v22;
    }

    else
    {
      v24 = 0;
    }

    if (v24)
    {
      if (AppleBCMWLANCore::getProximityInterfaceId(v11) == v23)
      {
        v23 = 9;
      }

      else
      {
        if (BYTE1(v145[0]) != 3)
        {
          goto LABEL_18;
        }

        v23 = 10;
      }
    }

    OUTLINED_FUNCTION_1_10();
    v16 = (*(v25 + 1992))(v11, v23);
LABEL_18:
    if (!v16)
    {
      if (OUTLINED_FUNCTION_2_10() && CCLogStream::shouldLog())
      {
        v96 = OUTLINED_FUNCTION_2_10();
        CCLogStream::logAlert(v96, "[dk] %s@%d:%s[%u] Invalid skywalkInterface\n", "txCompRingDrain", 1942, "txCompRingDrain", 1942);
      }

      v16 = 0;
      goto LABEL_41;
    }

    v26 = v19;
    InterfaceRole = IO80211SkywalkInterface::getInterfaceRole(v16);
    if (!v21)
    {
      if (OUTLINED_FUNCTION_2_10())
      {
        v68 = CCLogStream::shouldLog();
        v67 = *(this + 7);
        if (v68)
        {
          CCLogStream::logAlert(*v67, "[dk] %s@%d:itemCount %d resource id %d tx comp invalid packet, item ring %p, go next\n", "txCompRingDrain", 1946, v131, v19, v132);
          v67 = *(this + 7);
        }
      }

      if (*(v67 + 129) == 1)
      {
        if ((!*v67 || (CCLogStream::shouldLogConsole() & 1) == 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_6_6(1.5049e-36);
          v149 = "txCompRingDrain";
          v150 = 1024;
          v151 = 1948;
          v152 = 1024;
          v153 = v136;
          v154 = 1024;
          v155 = v19;
          v156 = 2048;
          *v157 = v132;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: TxCompletionDebug: itemCount %d resource id %d tx comp invalid packet, item ring %p, go next\n", buf, 0x2Eu);
        }

        if (OUTLINED_FUNCTION_2_10() && CCLogStream::shouldLog())
        {
          v69 = OUTLINED_FUNCTION_2_10();
          v126 = v19;
          v127 = v132;
          v125 = v136;
          CCLogStream::logInfo(v69, "[dk] %s@%d:TxCompletionDebug: itemCount %d resource id %d tx comp invalid packet, item ring %p, go next\n");
        }

        goto LABEL_154;
      }

      goto LABEL_41;
    }

    v28 = InterfaceRole;
    if (AppleBCMWLANPCIeSkywalkPacket::getPktDup(v21))
    {
      OUTLINED_FUNCTION_14_4();
      if (v24)
      {
        if ((!*v29 || (CCLogStream::shouldLogConsole() & 1) == 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_7_8(1.505e-36);
          OUTLINED_FUNCTION_22_1();
          v151 = 1956;
          v152 = v73;
          v153 = v26;
          OUTLINED_FUNCTION_23_3(v74);
          *&v157[6] = v28;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: TxCompletionDebug: Skipping duplicate packet resource id <%d> ifId <%d> flowid <%d> ifRole:%d\n", buf, 0x30u);
        }

        if (OUTLINED_FUNCTION_2_10())
        {
          v75 = CCLogStream::shouldLog();
          v29 = *(this + 7);
          if (v75)
          {
            CCLogStream::logInfo(*v29, "[dk] %s@%d:TxCompletionDebug: Skipping duplicate packet resource id <%d> ifId <%d> flowid <%d> ifRole:%d\n", "txCompRingDrain", 1956, v26, BYTE1(v145[0]), WORD5(v145[0]), v28);
            v29 = *(this + 7);
          }
        }
      }

      ++*(v29 + 224);
      AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(*(*(this + 7) + 56), v21);
      goto LABEL_41;
    }

    OUTLINED_FUNCTION_19_1();
    v31 = (*(v30 + 248))(v8);
    if (v31 == ((SBYTE2(v145[0]) & 0x80u) == 0) || LOBYTE(v145[0]) != 16)
    {
      if (OUTLINED_FUNCTION_2_10())
      {
        v72 = CCLogStream::shouldLog();
        v71 = *(this + 7);
        if (v72)
        {
          v97 = *v71;
          OUTLINED_FUNCTION_19_1();
          (*(v98 + 248))(v8);
          OUTLINED_FUNCTION_17_2();
          CCLogStream::logAlert(v97, "[dk] %s@%d:Ring Phase=%d msg Phase=%d msg type=%d flowIdValid=%d packet=%p skywalkInterface=%p", "txCompRingDrain", 1968, v125, v126, v127, v128, v129, v130);
          v71 = *(this + 7);
        }
      }

      if (*(v71 + 129) == 1)
      {
        if ((!*v71 || (CCLogStream::shouldLogConsole() & 1) == 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_5_0();
          (*(v91 + 248))();
          OUTLINED_FUNCTION_7_8(1.505e-36);
          OUTLINED_FUNCTION_22_1();
          v151 = 1973;
          v152 = v92;
          v153 = v93;
          OUTLINED_FUNCTION_23_3(v94);
          *&v157[6] = 1;
          v158 = 2048;
          v159 = v21;
          v160 = 2048;
          v161 = v16;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: TxCompletionDebug: Ring Phase=%d msg Phase=%d msg type=%d flowIdValid=%d packet=%p skywalkInterface=%p", buf, 0x44u);
        }

        if (OUTLINED_FUNCTION_2_10() && (v95 = CCLogStream::shouldLog(), v71 = *(this + 7), v95))
        {
          v99 = *v71;
          v8 = v140;
          OUTLINED_FUNCTION_19_1();
          (*(v100 + 248))(v140);
          OUTLINED_FUNCTION_17_2();
          CCLogStream::logInfo(v99, "[dk] %s@%d:TxCompletionDebug: Ring Phase=%d msg Phase=%d msg type=%d flowIdValid=%d packet=%p skywalkInterface=%p", "txCompRingDrain", 1973, v125, v126, v127, v128, v129, v130);
          v71 = *(this + 7);
        }

        else
        {
          v8 = v140;
        }
      }

      AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(*(v71 + 56), v21);
      ++*(*(this + 7) + 224);
      goto LABEL_41;
    }

    v141 = v26;
    v33 = BYTE14(v145[0]);
    Scratch = AppleBCMWLANPCIeSkywalkPacket::getScratch(v21);
    if ((*(Scratch + 40) & 0x20) != 0)
    {
      *(Scratch + 40) &= ~0x20u;
      v28 = 2;
    }

    v35 = v33;
    v143 = kWlToHostTxStatusMap[v33];
    OUTLINED_FUNCTION_9_6();
    (*(v36 + 512))(v21);
    if (v28 != 2)
    {
      if (v28 == 6)
      {
        AppleBCMWLANPCIeSkywalkPacket::setStatus(v21);
        v17 |= 1 << IO80211SkywalkInterface::getInterfaceId(v16);
      }

      goto LABEL_33;
    }

    if (IO80211SkywalkInterface::getInterfaceId(v16) == 3 || (v44 = BYTE1(v145[0]), AppleBCMWLANCore::getProximityInterfaceId(v11) == v44))
    {
      OUTLINED_FUNCTION_1_10();
      v16 = (*(v45 + 1992))(v11);
    }

    if (v33 > 0xAu || ((1 << v33) & 0x441) == 0)
    {
      InterfaceId = IO80211SkywalkInterface::getInterfaceId(v16);
      if (InterfaceId == AppleBCMWLANCore::getProximityInterfaceId(v11) && AppleBCMWLANCore::isP2pAirplayActive(v11) && AppleBCMWLANCore::isLlwRequeueEnabled(v11))
      {
        mach_absolute_time();
        absolutetime_to_nanoseconds();
        v144 /= 0x3E8uLL;
        Ac = AppleBCMWLANPCIeSkywalkPacket::getAc(v21);
        v61 = (*(*v16 + 1208))(v16, Ac);
        v133 = OSMetaClassBase::safeMetaCast(v61, gAppleBCMWLANPCIeSkywalkTxSubmissionQueueMetaClass);
        if (v133 && AppleBCMWLANPCIeSkywalkTxSubmissionQueue::isRequeueSupported(v133))
        {
          OUTLINED_FUNCTION_9_6();
          if (v144 <= (*(v84 + 504))(v21))
          {
            v86 = 20000;
          }

          else
          {
            OUTLINED_FUNCTION_9_6();
            v86 = v144 - (*(v85 + 504))(v21);
          }

          PktRemainingLifeTime = AppleBCMWLANPCIeSkywalkPacket::getPktRemainingLifeTime(v21);
          if (PktRemainingLifeTime >= v86)
          {
            v88 = PktRemainingLifeTime - v86;
          }

          else
          {
            v88 = 0;
          }

          AppleBCMWLANPCIeSkywalkPacket::setPktRemainingLifeTime(v21, v88);
          FlowQueueIdx = AppleBCMWLANPCIeSkywalkPacket::getFlowQueueIdx(v21);
          if (v88 > AppleBCMWLANPCIeSkywalkTxSubmissionQueue::getAvgTxCompLatency(v133, FlowQueueIdx, v86) && AppleBCMWLANPCIeSkywalkPacket::getPktRequeueCount(v21) < 3)
          {
            AppleBCMWLANPCIeSkywalkTxSubmissionQueue::addPacketToRequeueList(v133, v21);
            AppleBCMWLANPCIeSkywalkPacket::setPktRequeued(v21, 1);
            AppleBCMWLANPCIeSkywalkPacket::incrPktRequeueCount(v21);
            ++v137;
LABEL_154:
            v8 = v140;
            goto LABEL_41;
          }
        }

        else if (OUTLINED_FUNCTION_2_10() && CCLogStream::shouldLog())
        {
          v62 = OUTLINED_FUNCTION_2_10();
          CCLogStream::logAlert(v62, "[dk] %s@%d:%s: Failed to requeue packet. Null txSubQ \n", "txCompRingDrain", 2127, "txCompRingDrain");
        }
      }
    }

    if (AppleBCMWLANPCIeSkywalkPacket::getScratch(v21))
    {
      v46 = AppleBCMWLANPCIeSkywalkPacket::getScratch(v21);
      v46[45] = AppleBCMWLANPCIeSkywalkPacket::isPktRequeued(v21);
      v46[46] = AppleBCMWLANPCIeSkywalkPacket::getPktRequeueCount(v21);
      if (v35)
      {
        ++v46[47];
      }
    }

    else if (OUTLINED_FUNCTION_2_10() && CCLogStream::shouldLog())
    {
      v83 = OUTLINED_FUNCTION_2_10();
      CCLogStream::logAlert(v83, "[dk] %s@%d:%s: Scratch header is Null! \n", "txCompRingDrain", 2141, "txCompRingDrain");
    }

    v47 = AppleBCMWLANPCIeSkywalkPacket::getScratch(v21);
    v48 = OUTLINED_FUNCTION_26();
    if (!AppleBCMWLANBusInterfacePCIe::isFWPacketTimestampEnabled(v48) || (v49 = WORD2(v145[1]), (DWORD1(v145[1]) & 0x40000000) != 0))
    {
      if (!v47)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v50 = (DWORD1(v145[1]) >> 10) & 0x3FF;
      if (v50 > ((DWORD1(v145[1]) >> 20) & 0x3FF))
      {
        v49 = WORD2(v145[1]);
        DWORD1(v145[1]) = DWORD1(v145[1]) & 0x800FFFFF | (v50 << 20);
      }

      if (!v47)
      {
LABEL_64:
        v56 = 1;
        goto LABEL_65;
      }

      v51 = *(v47 + 20);
      *(v47 + 4) = v51 + 1000 * (v49 & 0x3FF) * TxChipDelayToUsecMultiplier;
      v52 = DWORD1(v145[1]);
      LOWORD(v53) = WORD2(v145[1]) & 0x3FF;
      v54 = (DWORD1(v145[1]) >> 10) & 0x3FF;
      if ((WORD2(v145[1]) & 0x3FFu) > v54)
      {
        DWORD1(v145[1]) = v54 | DWORD1(v145[1]) & 0xFFFFFC00;
        v51 = *(v47 + 20);
        v53 = (v52 >> 10) & 0x3FF;
      }

      *v47 = (v54 - v53) * TxChipDelayToUsecMultiplier;
      *(v47 + 12) = v51 + 1000 * TxChipDelayToUsecMultiplier * ((DWORD1(v145[1]) >> 20) & 0x3FF);
    }

    *(v47 + 42) = BYTE12(v145[0]);
    v55 = OUTLINED_FUNCTION_2_10();
    *(v47 + 34) = ratespec2rate(v55, v145[1]);
    *(v47 + 32) = BYTE13(v145[0]);
    v56 = 0;
    *(v47 + 36) = AppleBCMWLANPCIeSkywalkPacket::getPktLifetime(v21);
LABEL_65:
    AppleBCMWLANPCIeSkywalkPacket::setPktRequeued(v21, 0);
    AppleBCMWLANPCIeSkywalkPacket::resetPktRequeueCount(v21);
    v57 = *(*(this + 7) + 88);
    if (!v57 || v140 != v57 || !AppleBCMWLANCore::isSplitTxStatusEnabled(v11) || (v56 & 1) != 0)
    {
      goto LABEL_33;
    }

    v58 = HIWORD(v145[0]);
    *(v47 + 43) = 0;
    if (v58 == 10)
    {
      *(v47 + 43) = 4;
LABEL_33:
      v8 = v140;
      goto LABEL_34;
    }

    v63 = v58 >> 8;
    if ((v58 & 0x8000u) == 0)
    {
      v64 = 2;
    }

    else
    {
      v64 = 3;
    }

    if ((v63 & 0x40) == 0)
    {
      v64 = 1;
    }

    *(v47 + 43) = v64;
    *(v47 + 44) = 0;
    v8 = v140;
    if ((v63 & 0x10) != 0)
    {
      *(v47 + 44) = 1;
    }

    else if ((v63 & 8) != 0)
    {
      *(v47 + 44) = 2;
    }

LABEL_34:
    AppleBCMWLANPCIeSkywalkPacket::setStatus(v21);
    if (v35)
    {
      ++v134;
    }

    OUTLINED_FUNCTION_14_4();
    if (v24)
    {
      if ((!*v37 || (CCLogStream::shouldLogConsole() & 1) == 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_7_8(1.505e-36);
        OUTLINED_FUNCTION_22_1();
        v151 = 2210;
        v152 = v76;
        v153 = v141;
        v154 = v76;
        v155 = v143;
        v156 = v76;
        *v157 = v77;
        *&v157[4] = v76;
        *&v157[6] = v78;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: TxCompletionDebug: tx comp status resource id <%d> status <0x%x> ifId <%d> flowid <%d>\n", buf, 0x30u);
      }

      if (OUTLINED_FUNCTION_2_10() && CCLogStream::shouldLog())
      {
        v79 = OUTLINED_FUNCTION_2_10();
        CCLogStream::logInfo(v79, "[dk] %s@%d:TxCompletionDebug: tx comp status resource id <%d> status <0x%x> ifId <%d> flowid <%d>\n", "txCompRingDrain", 2210, v141, v143, BYTE1(v145[0]), WORD5(v145[0]));
      }
    }

    v38 = AppleBCMWLANItemRing::getItemSize(v8) == 24;
    AppleBCMWLANPCIeSkywalk::setTXTimestamp(this, v145, PTMMode, v21, v16, v38);
    v39 = (*(*v16 + 1200))(v16);
    v40 = OSMetaClassBase::safeMetaCast(v39, gAppleBCMWLANPCIeSkywalkTxCompletionQueueMetaClass);
    if (v40)
    {
      v41 = v40;
      OUTLINED_FUNCTION_9_6();
      if ((*(v42 + 376))(v21))
      {
        OUTLINED_FUNCTION_9_6();
        (*(v43 + 384))(v21, 135528522);
      }

      ++*(*(this + 7) + 232);
      AppleBCMWLANPCIeSkywalkTxCompletionQueue::stagePacket(v41, v21);
      v17 |= 1 << IO80211SkywalkInterface::getInterfaceId(v16);
    }

    else
    {
      if (OUTLINED_FUNCTION_2_10())
      {
        v81 = CCLogStream::shouldLog();
        v80 = *(this + 7);
        if (v81)
        {
          CCLogStream::logCrit(*v80, "[dk] %s@%d:Invalid getTxCompQueue(), go next\n", "txCompRingDrain", 2215);
          v80 = *(this + 7);
        }
      }

      if (*(v80 + 129) == 1)
      {
        if ((!*v80 || (CCLogStream::shouldLogConsole() & 1) == 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_6_6(1.5048e-36);
          v149 = "txCompRingDrain";
          v150 = 1024;
          v151 = 2217;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: TxCompletionDebug: Invalid getTxCompQueue(), go next\n", buf, 0x18u);
        }

        if (OUTLINED_FUNCTION_2_10() && CCLogStream::shouldLog())
        {
          v82 = OUTLINED_FUNCTION_2_10();
          CCLogStream::logInfo(v82, "[dk] %s@%d:TxCompletionDebug: Invalid getTxCompQueue(), go next\n");
        }

        goto LABEL_154;
      }
    }

LABEL_41:
    a3 += AppleBCMWLANItemRing::getItemSize(v8);
    --v18;
  }

  while (v18);
  if (v137 && AppleBCMWLANCore::isLlwRequeueEnabled(v11))
  {
    AppleBCMWLANPCIeSkywalkTxSubmissionQueue::batchedReenqueuePackets(v133);
  }

  if (v17)
  {
    v101 = __clz(__rbit32(v17));
    do
    {
      OUTLINED_FUNCTION_1_10();
      if ((*(v102 + 1992))(v11, v101))
      {
        OUTLINED_FUNCTION_5_0();
        v104 = (*(v103 + 1200))();
        OUTLINED_FUNCTION_5_0();
        if ((*(v105 + 120))())
        {
          OUTLINED_FUNCTION_14_4();
          if (v24)
          {
            v108 = v106;
            if ((!*v107 || (CCLogStream::shouldLogConsole() & 1) == 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              OUTLINED_FUNCTION_6_6(1.5048e-36);
              v149 = "txCompRingDrain";
              v150 = 1024;
              v151 = 2284;
              v152 = 1024;
              v153 = v108;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: TxCompletionDebug: tx comp enqueue req fail 0x%x\n", buf, 0x1Eu);
            }

            if (OUTLINED_FUNCTION_2_10() && CCLogStream::shouldLog())
            {
              v109 = OUTLINED_FUNCTION_2_10();
              CCLogStream::logInfo(v109, "[dk] %s@%d:TxCompletionDebug: tx comp enqueue req fail 0x%x\n", "txCompRingDrain", 2284, v108);
            }
          }

          AppleBCMWLANPCIeSkywalkTxCompletionQueue::flushPackets(v104);
        }
      }

      v17 &= ~(1 << v101);
      v101 = __clz(__rbit32(v17));
    }

    while (v17);
  }

  v15 = v135;
  v110 = v136;
  v13 = &kSliceChannelSwitchDwellHistConfig;
LABEL_183:
  v111 = v110;
  *(*(this + 7) + 216) += v110;
  v112 = OUTLINED_FUNCTION_26();
  AppleBCMWLANBusInterfacePCIe::updateActiveTxPacketCount(v112, -v113);
  v114 = OUTLINED_FUNCTION_12_4(*(this + 7));
  v116 = (*(v115 + 1104))(v114);
  if (v116)
  {
    v117 = v116;
    AppleBCMWLANCore::updateDataPathActivityTimestamp(v116, v15);
    AppleBCMWLANCore::handleDataPathActivity(v117);
  }

  if (v13[1176])
  {
    OUTLINED_FUNCTION_19_1();
    (*(v122 + 208))(v8);
    v123 = OUTLINED_FUNCTION_0_11(*(this + 7));
    (*(v124 + 784))(v123);
    kdebug_trace();
  }

  return v111;
}

uint64_t AppleBCMWLANPCIeSkywalk::destroyLowLatencyCompRing(uint64_t result, unsigned int a2)
{
  v3 = result;
  v4 = *(result + 56);
  if (*(v4 + 112))
  {
    *(v4 + 112) = 0;
    OUTLINED_FUNCTION_5_0();
    result = (*(v5 + 72))();
    *(*(v3 + 56) + 120) = 0;
  }

  if (a2 <= 1)
  {
    v6 = *(v3 + 56);
    v7 = 96;
    if (!a2)
    {
      v7 = 88;
    }

    v8 = (v6 + v7);
    if (*(v6 + v7))
    {
      v9 = OUTLINED_FUNCTION_0_11(v6);
      result = (*(v10 + 80))(v9);
      if (result)
      {
        v14 = _NSConcreteStackBlock;
        v15 = 0x40000000;
        v16 = ___ZN23AppleBCMWLANPCIeSkywalk25destroyLowLatencyCompRingE22LowLatencyCompRingType_block_invoke;
        v17 = &__block_descriptor_tmp_34;
        v18 = v3;
        v19 = v8;
        v20 = result;
        OUTLINED_FUNCTION_5_0();
        (*(v11 + 112))();
        *&v21 = v3;
        *(&v21 + 1) = AppleBCMWLANPCIeSkywalk::destroyLowLatencyCompRingComplete;
        v22 = v8;
        v12 = OUTLINED_FUNCTION_26();
        result = AppleBCMWLANBusInterfacePCIe::destroyDynamicCompletionRing(v12, *v8, &v21);
        if (result)
        {
          result = *v8;
          if (*v8)
          {
            OUTLINED_FUNCTION_5_0();
            result = (*(v13 + 16))();
            *v8 = 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::clearFlowIdInFlowQ(AppleBCMWLANPCIeSkywalk *this, int a2, uint64_t a3, int a4)
{
  v6 = 3758097098;
  v7 = *(this + 7);
  v8 = 1 << a2;
  if ((*(v7 + 44) & (1 << a2)) != 0)
  {
    v11 = OUTLINED_FUNCTION_0_11(v7);
    (*(v12 + 1104))(v11);
    OUTLINED_FUNCTION_15_5();
    v14 = (*(v13 + 1992))();
    if (v14)
    {
      v15 = v14;
      OUTLINED_FUNCTION_5_0();
      if ((*(v16 + 1088))())
      {
        OUTLINED_FUNCTION_1_10();
        if ((*(v17 + 1088))(v15))
        {
          OUTLINED_FUNCTION_1_10();
          (*(v18 + 1088))(v15);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_1_10();
            v27 = (*(v26 + 1088))(v15);
            CCLogStream::logInfo(v27, "[dk] %s@%d:Enter ifId %d ac %d\n", "clearFlowIdInFlowQ", 781, a2, a3);
          }
        }
      }

      if (**(this + 7) && CCLogStream::shouldLog())
      {
        CCLogStream::logAlert(**(this + 7), "[dk] %s@%d:clearFlowIdInFlowQ ifId:%d ac:%d flowId:%d\n", "clearFlowIdInFlowQ", 783, a2, a3, a4);
      }

      OUTLINED_FUNCTION_1_10();
      v20 = (*(v19 + 1160))(v15);
      v21 = OSMetaClassBase::safeMetaCast(v20, gAppleBCMWLANPCIeSkywalkMulticastQueueMetaClass);
      if (v21)
      {
        AppleBCMWLANPCIeSkywalkMulticastQueue::clearFlowIdInFlowQ(v21, a4);
      }

      OUTLINED_FUNCTION_1_10();
      v23 = (*(v22 + 1208))(v15, a3);
      v24 = OSMetaClassBase::safeMetaCast(v23, gAppleBCMWLANPCIeSkywalkTxSubmissionQueueMetaClass);
      if (v24)
      {
        AppleBCMWLANPCIeSkywalkTxSubmissionQueue::clearFlowIdInFlowQ(v24, a4);
      }

      return 0;
    }

    else
    {
      return 3758097084;
    }
  }

  else if (*v7 && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(**(this + 7), "[dk] %s@%d:clearFlowIdInFlowQ failed on ifId:%x (op:%x)  bitmap:%x validation\n", "clearFlowIdInFlowQ", 774, a2, v8, *(*(this + 7) + 44));
  }

  return v6;
}

uint64_t AppleBCMWLANPCIeSkywalk::attachTxSubmRing(AppleBCMWLANPCIeSkywalk *this, AppleBCMWLANPCIeTransmitFlowRing *a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = 3758097084;
  v6 = *(this + 7);
  if (((*(v6 + 44) >> a3) & 1) == 0)
  {
    return 3758097098;
  }

  v12 = OUTLINED_FUNCTION_0_11(v6);
  (*(v13 + 1104))(v12);
  OUTLINED_FUNCTION_15_5();
  v15 = (*(v14 + 1992))();
  if (v15)
  {
    v16 = v15;
    OUTLINED_FUNCTION_5_0();
    if ((*(v17 + 1088))())
    {
      OUTLINED_FUNCTION_19_2();
      if ((*(v18 + 1088))(v16))
      {
        OUTLINED_FUNCTION_19_2();
        (*(v19 + 1088))(v16);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_2();
          v36 = (*(v35 + 1088))(v16);
          CCLogStream::logInfo(v36, "[dk] %s@%d:Enter ifId %d ac %d flowId:%u\n", "attachTxSubmRing", 813, a3, a4, a5);
        }
      }
    }

    OUTLINED_FUNCTION_19_2();
    v21 = (*(v20 + 1160))(v16);
    v22 = OSMetaClassBase::safeMetaCast(v21, gAppleBCMWLANPCIeSkywalkMulticastQueueMetaClass);
    if (v22)
    {
      v23 = v22;
      if (AppleBCMWLANPCIeSkywalkMulticastQueue::getFlowId(v22) == a5)
      {
        AppleBCMWLANPCIeSkywalkMulticastQueue::setFWRing(v23, a2);
        (*(*v23 + 64))(v23);
        return 0;
      }
    }

    v24 = OUTLINED_FUNCTION_0_11(*(this + 7));
    v26 = (*(v25 + 1104))(v24);
    if (AppleBCMWLANCore::getProximityInterfaceId(v26) == a3)
    {
      if ((AppleBCMWLANPCIeTransmitFlowRing::isLowLatencyRing(a2) & 1) == 0)
      {
LABEL_17:
        OUTLINED_FUNCTION_19_2();
        v31 = (*(v30 + 1208))(v16, a4);
        v32 = OSMetaClassBase::safeMetaCast(v31, gAppleBCMWLANPCIeSkywalkTxSubmissionQueueMetaClass);
        isLowLatencyRing = AppleBCMWLANPCIeTransmitFlowRing::isLowLatencyRing(a2);
        AppleBCMWLANPCIeSkywalkTxSubmissionQueue::setFWRing(v32, a2, a5, isLowLatencyRing);
        (v32->__vftable[6].release)(v32);
        return 0;
      }
    }

    else if (a3 != 3 || !AppleBCMWLANPCIeTransmitFlowRing::isLowLatencyRing(a2))
    {
      goto LABEL_17;
    }

    v27 = OUTLINED_FUNCTION_0_11(*(this + 7));
    (*(v28 + 1104))(v27);
    OUTLINED_FUNCTION_15_5();
    v16 = (*(v29 + 1992))();
    goto LABEL_17;
  }

  return v5;
}

uint64_t AppleBCMWLANPCIeSkywalk::detachTxSubmFwQueue(AppleBCMWLANPCIeSkywalk *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(this + 7);
  if (!v5)
  {
    IOLog("AppleBCMWLANPCIeSkywalk::detachTxSubmFwQueue, no ivars\n", a2, a3, a4, a5);
    return 3758096385;
  }

  if (!*(v5 + 48) || (v7 = a5, v10 = a2, OUTLINED_FUNCTION_5_0(), !(*(v11 + 1104))()))
  {
    IOLog("AppleBCMWLANPCIeSkywalk::detachTxSubmFwQueue, no bus/driver\n", a2, a3, a4, a5);
    return 3758096385;
  }

  v12 = *(this + 7);
  if (((*(v12 + 44) >> v10) & 1) == 0)
  {
    return 3758096385;
  }

  v13 = OUTLINED_FUNCTION_0_11(v12);
  if (!(*(v14 + 1104))(v13))
  {
    return 3758096385;
  }

  OUTLINED_FUNCTION_5_0();
  v16 = (*(v15 + 1992))();
  if (!v16)
  {
    return 3758096385;
  }

  v17 = v16;
  OUTLINED_FUNCTION_5_0();
  if ((*(v18 + 1088))())
  {
    OUTLINED_FUNCTION_5_8();
    if ((*(v19 + 1088))(v17))
    {
      OUTLINED_FUNCTION_5_8();
      (*(v20 + 1088))(v17);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_5_8();
        v42 = (*(v41 + 1088))(v17);
        CCLogStream::logInfo(v42, "[dk] %s@%d:ifid %u ac %u flowid %u\n", "detachTxSubmFwQueue", 971, v10, a3, a4);
      }
    }
  }

  OUTLINED_FUNCTION_5_8();
  v22 = (*(v21 + 1160))(v17);
  v23 = OSMetaClassBase::safeMetaCast(v22, gAppleBCMWLANPCIeSkywalkMulticastQueueMetaClass);
  if (v23)
  {
    v24 = v23;
    if (AppleBCMWLANPCIeSkywalkMulticastQueue::getFlowId(v23) == a4)
    {
      OUTLINED_FUNCTION_5_8();
      if ((*(v25 + 1088))(v17))
      {
        OUTLINED_FUNCTION_5_8();
        if ((*(v26 + 1088))(v17))
        {
          OUTLINED_FUNCTION_5_8();
          (*(v27 + 1088))(v17);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_5_8();
            v46 = (*(v45 + 1088))(v17);
            CCLogStream::logInfo(v46, "[dk] %s@%d:detach tx mc common fw queue, flow id %d\n", "detachTxSubmFwQueue", 976, a4);
          }
        }
      }

      (*(*v24 + 72))(v24);
      AppleBCMWLANPCIeSkywalkMulticastQueue::setFWRing(v24, 0);
      return 0;
    }
  }

  v28 = OUTLINED_FUNCTION_0_11(*(this + 7));
  v30 = (*(v29 + 1104))(v28);
  if (AppleBCMWLANCore::getProximityInterfaceId(v30) == v10)
  {
    if (v7)
    {
LABEL_23:
      v31 = OUTLINED_FUNCTION_0_11(*(this + 7));
      (*(v32 + 1104))(v31);
      OUTLINED_FUNCTION_15_5();
      v17 = (*(v33 + 1992))();
    }
  }

  else if (v10 == 3 && v7)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_5_8();
  if ((*(v34 + 1088))(v17))
  {
    OUTLINED_FUNCTION_5_8();
    if ((*(v35 + 1088))(v17))
    {
      OUTLINED_FUNCTION_5_8();
      (*(v36 + 1088))(v17);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_5_8();
        v44 = (*(v43 + 1088))(v17);
        CCLogStream::logInfo(v44, "[dk] %s@%d:detach tx uc queue ifId %d, ac %d, flowId %d\n", "detachTxSubmFwQueue", 990, v10, a3, a4);
      }
    }
  }

  OUTLINED_FUNCTION_5_8();
  v38 = (*(v37 + 1208))(v17, a3);
  v39 = OSMetaClassBase::safeMetaCast(v38, gAppleBCMWLANPCIeSkywalkTxSubmissionQueueMetaClass);
  if (v39)
  {
    AppleBCMWLANPCIeSkywalkTxSubmissionQueue::setFWRing(v39, 0, a4, v7);
    return 0;
  }

  return 3758096385;
}

uint64_t AppleBCMWLANPCIeSkywalk::completeRxPacketMonitor(AppleBCMWLANPCIeSkywalk *a1, uint64_t a2, IO80211SkywalkInterface *a3, AppleBCMWLANPCIeSkywalkPacket *a4, char a5)
{
  if (a2)
  {
    if (a4)
    {
      v8 = *(a2 + 14);
      if (((v8 - 2049) >> 11) <= 0x1Eu)
      {
        if (OUTLINED_FUNCTION_4_9() && CCLogStream::shouldLog())
        {
          v35 = OUTLINED_FUNCTION_4_9();
          CCLogStream::logAlert(v35, "[dk] %s@%d:RX SW, packet length invalid\n", "completeRxPacketMonitor", 1756);
        }

        return 3758096385;
      }

      else
      {
        v9 = *(a2 + 16);
        v10 = 3758097084;
        if (v9 >= 5)
        {
          OUTLINED_FUNCTION_9_6();
          v14 = (*(v13 + 488))(a4);
          if ((v9 + v8) > 0x7FC || v9 + v8 >= v14)
          {
            return 3758097128;
          }

          v16 = *(a1 + 7);
          if (*(v16 + 128) == 1)
          {
            v17 = *(a2 + 18);
            if ((v17 & 2) != 0)
            {
              v18 = (v17 >> 8) & 3;
              if (v18)
              {
                IOLockLock(*(v16 + 160));
                v19 = *(a1 + 7);
                if (!*(v19 + 144) || (OUTLINED_FUNCTION_5_0(), v21 = (*(v20 + 480))(), OUTLINED_FUNCTION_9_6(), v23 = (*(v22 + 480))(a4), v19 = *(a1 + 7), !v23) || !v21)
                {
LABEL_32:
                  IOLockUnlock(*(v19 + 160));
                  return v10;
                }

                v24 = v23;
                v36 = v21;
                v25 = *(v19 + 152) + v8;
                OUTLINED_FUNCTION_5_0();
                if (v25 > (*(v26 + 488))())
                {
                  IOLockUnlock(*(*(a1 + 7) + 160));
                  return 3758097128;
                }

                if (v18 != 1)
                {
                  v10 = 0;
                  v30 = v36;
LABEL_29:
                  memcpy((v30 + *(*(a1 + 7) + 152)), (v24 + v9), v8);
                  *(*(a1 + 7) + 152) += v8;
                  if (v18 == 3)
                  {
                    v31 = AppleBCMWLANPCIeSkywalk::setRXTimestamp(a1, a2, *(*(a1 + 7) + 144), a3, a5);
                    AppleBCMWLANPCIeSkywalk::inputMonitorPacket(v31, a3, *(*(a1 + 7) + 144), 0, *(*(a1 + 7) + 152));
                    *(*(a1 + 7) + 152) = 0;
                  }

                  v19 = *(a1 + 7);
                  goto LABEL_32;
                }

                v28 = *(a1 + 7);
                if (*(v28 + 152))
                {
                  if (*v28)
                  {
                    shouldLog = CCLogStream::shouldLog();
                    v28 = *(a1 + 7);
                    v30 = v36;
                    if (shouldLog)
                    {
                      CCLogStream::logCrit(*v28, "[dk] %s@%d:unfinished monitor packet chain dropped\n", "completeRxPacketMonitor", 1813);
                      v28 = *(a1 + 7);
                    }

                    goto LABEL_28;
                  }
                }

                else
                {
                  v10 = 0;
                }

                v30 = v36;
LABEL_28:
                *(v28 + 152) = 0;
                goto LABEL_29;
              }

              v27 = AppleBCMWLANPCIeSkywalk::setRXTimestamp(a1, a2, a4, a3, a5);
              AppleBCMWLANPCIeSkywalk::inputMonitorPacket(v27, a3, a4, v9, v8);
            }
          }

          return 0;
        }
      }
    }

    else
    {
      v10 = 3758097084;
      if (OUTLINED_FUNCTION_4_9() && CCLogStream::shouldLog())
      {
        v34 = OUTLINED_FUNCTION_4_9();
        CCLogStream::logCrit(v34, "[dk] %s@%d:invalid rx packet data buffer\n");
      }
    }
  }

  else
  {
    v10 = 3758097084;
    if (OUTLINED_FUNCTION_4_9() && CCLogStream::shouldLog())
    {
      v33 = OUTLINED_FUNCTION_4_9();
      CCLogStream::logCrit(v33, "[dk] %s@%d:invalid rx packet message\n");
    }
  }

  return v10;
}

uint64_t AppleBCMWLANPCIeSkywalk::allocSkywalkCommonResources(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:common resource rx comp already allocated, skip to allocate again\n", "allocSkywalkCommonResources", 338);
}

{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Faild to copy dataQueue\n", "allocSkywalkCommonResources", 367);
}

{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:rx submission queue alloc fail\n", "allocSkywalkCommonResources", 343);
}

{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logEmergency(v1, "[dk] %s@%d: Unable to allocate Skywalk Tx pool\n", "allocSkywalkCommonResources", 332);
}

uint64_t AppleBCMWLANPCIeSkywalk::allocSkywalkMonitorResources(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logEmergency(v1, "[dk] %s@%d: Unable to allocate Skywalk monitor packet\n", "allocSkywalkMonitorResources", 299);
}

{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logEmergency(v1, "[dk] %s@%d: Unable to allocate Skywalk monitor pool\n", "allocSkywalkMonitorResources", 290);
}

uint64_t AppleBCMWLANPCIeSkywalk::validateRxDMAStall(uint64_t *a1, CCLogStream ***a2)
{
  result = *a1;
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return CCLogStream::logAlert(**a2, "[dk] %s@%d:validateRxDMAStall: skywalk rx submssion queue is not ready\n", "validateRxDMAStall", 571);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::attachDefaultRxCompRing()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 224))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Enable rxCompQueue\n", "attachDefaultRxCompRing", 611);
}

uint64_t AppleBCMWLANPCIeSkywalk::attachDefaultTxCompRing()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:attach txCompletion ring\n", "attachDefaultTxCompRing", 865);
}

uint64_t AppleBCMWLANPCIeSkywalk::detachRxCompFwQueue()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:detachRxCompRing\n", "detachRxCompFwQueue", 904);
}

uint64_t AppleBCMWLANPCIeSkywalk::detachTxCompFwQueue()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:detachTxCompRing\n", "detachTxCompFwQueue", 936);
}

uint64_t AppleBCMWLANPCIeSkywalk::disableAllSubmissionQueue()
{
  OUTLINED_FUNCTION_26_2();
  do
  {
    OUTLINED_FUNCTION_24_1();
    result = (*(v4 + 1992))(v0, v2);
    if (result)
    {
      OUTLINED_FUNCTION_5_0();
      result = (*(v6 + 1240))();
    }

    v1 &= ~(v3 << v2);
    v2 = __clz(__rbit32(v1));
  }

  while (v1);
  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::enableAllSubmissionQueue()
{
  OUTLINED_FUNCTION_26_2();
  do
  {
    OUTLINED_FUNCTION_24_1();
    result = (*(v4 + 1992))(v0, v2);
    if (result)
    {
      OUTLINED_FUNCTION_5_0();
      result = (*(v6 + 1232))();
    }

    v1 &= ~(v3 << v2);
    v2 = __clz(__rbit32(v1));
  }

  while (v1);
  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::attachTxSubmissionQueues()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Enter\n", "attachTxSubmissionQueues", 1062);
}

uint64_t AppleBCMWLANPCIeSkywalk::attachTxSubmissionQueues(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Request to attach LLW, before interface is enabled\n", "attachTxSubmissionQueues", 1067);
}

{
  v1 = OUTLINED_FUNCTION_11_5(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Packets trashed on roam in (AQM: %d  TxSubQ: %d)\n", "attachTxSubmissionQueues", 1102, *(v2 + 480), *(v2 + 476));
}

uint64_t AppleBCMWLANPCIeSkywalk::detachTxSubmissionQueues()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1088))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Enter\n", "detachTxSubmissionQueues", 1117);
}

uint64_t AppleBCMWLANGCRAdapter::createGCRSession(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_9_0(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Creating GCR session\n", "createGCRSession", 158);
}

{
  v3 = OUTLINED_FUNCTION_0_12(a1);
  v5 = (*(v4 + 112))(v3);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Unable to create GCR session: %d:%s\n", "createGCRSession", 207, v1, v5);
}

uint64_t AppleBCMWLANGCRAdapter::joinGCRSession(uint64_t *a1)
{
  result = OUTLINED_FUNCTION_9_0(a1);
  if (result)
  {
    v4 = v3;
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = *a1;
      v6 = *(*a1 + 32);
      v7 = (*(**(v5 + 8) + 112))(*(v5 + 8), v4);
      return CCLogStream::logAlert(v6, "[dk] %s@%d:Unable to join GCR session: %d:%s\n", "joinGCRSession", 267, v4, v7);
    }
  }

  return result;
}

void AppleBCMWLANGCRAdapter::configureGCRRate()
{
  panic("invaid GCR rate bandwidth\n");
}

{
  panic("invaid GCR rate encoding mode\n");
}

{
  panic("invaid GCR rate NSS\n");
}

uint64_t AppleBCMWLANGCRAdapter::configureGCRRate(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_0_12(a1);
  v5 = (*(v4 + 112))(v3);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Unable to configure GCR rate: %d:%s\n", "configureGCRRate", 412, v1, v5);
}

uint64_t AppleBCMWLANGCRAdapter::clearGCRStats(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_0_12(a1);
  v5 = (*(v4 + 112))(v3);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Unable to clear GCR stats: %d:%s\n", "clearGCRStats", 459, v1, v5);
}

uint64_t AppleBCMWLANGCRAdapter::getGCRLinkCondition(uint64_t a1, char a2)
{
  if (OUTLINED_FUNCTION_9_0(a1) && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(*(*a1 + 32), "[dk] %s@%d:gcr stats get iovar failed\n", "getGCRLinkCondition", 521);
  }

  return a2 & 1;
}

uint64_t AppleBCMWLANGCRAdapter::getGCRLinkCondition(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = OUTLINED_FUNCTION_9_0(a1);
  if (result)
  {
    v7 = v6;
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*a1 + 32), "[dk] %s@%d:Stats tlv is of wrong format %u\n", "getGCRLinkCondition", 539, *v7);
    }
  }

  *a3 = -536870911;
  return result;
}

uint64_t AppleBCMWLANGCRAdapter::getGCRLinkCondition(uint64_t a1, _DWORD *a2)
{
  result = OUTLINED_FUNCTION_9_0(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*a1 + 32), "[dk] %s@%d:not enough room for gcr subcmd resp data\n", "getGCRLinkCondition", 532);
    }
  }

  *a2 = -536870911;
  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkFlowQueue::initWithProviderAndQueueInfo(OSObject *a1, AppleBCMWLANBusInterfacePCIe *a2, uint64_t a3, unsigned __int8 a4, IO80211SkywalkInterface *a5, BOOL (__cdecl *a6)(OSObject *__hidden this), void (__cdecl *a7)(OSObject *__hidden this))
{
  result = OSObject::init(a1);
  if (result)
  {
    result = IOMallocZeroTyped();
    a1[1].OSMetaClassBase::__vftable = result;
    if (result)
    {
      *result = a3;
      *(result + 4) = WORD2(a3);
      a1[1].init = a6;
      v15 = a1[1].OSMetaClassBase::__vftable;
      init = v15->init;
      if (init)
      {
        (*(*init + 8))(init);
        v15 = a1[1].OSMetaClassBase::__vftable;
      }

      v15->free = a7;
      a1[1].OSMetaClassBase::__vftable[1].retain = a5;
      LOWORD(a1[1].OSMetaClassBase::__vftable[1].init) = -1;
      a1[1].OSMetaClassBase::__vftable[1].getMetaClass = a2;
      a1[1].Dispatch = 0;
      v17 = (*(*a1[1].OSMetaClassBase::__vftable[1].getMetaClass + 752))();
      v18 = OSMetaClassBase::safeMetaCast(v17, gAppleBCMWLANPCIeSkywalkMetaClass);
      a1[1].OSMetaClassBase::__vftable[1].isEqualTo = AppleBCMWLANPCIeSkywalk::getPacketPool(v18);
      v19 = a1[1].OSMetaClassBase::__vftable;
      if (v19->init)
      {
        shouldLog = CCLogStream::shouldLog();
        v19 = a1[1].OSMetaClassBase::__vftable;
        if (shouldLog)
        {
          v24 = v19->init;
          InterfaceId = IO80211SkywalkInterface::getInterfaceId(a5);
          CCLogStream::logAlert(v24, "[dk] %s@%d:%s: flowQ %p IfID:%u ac:%u \n", "initWithProviderAndQueueInfo", 103, "initWithProviderAndQueueInfo", a1, InterfaceId, a4);
          v19 = a1[1].OSMetaClassBase::__vftable;
        }
      }

      v19->retain = &v19->retain;
      a1[1].release = &a1[1].retain;
      LODWORD(a1[1].isEqualTo) = 0;
      BYTE1(a1[1].OSMetaClassBase::__vftable[1].Dispatch) = a4;
      LOBYTE(a1[1].OSMetaClassBase::__vftable[1].Dispatch) = IO80211SkywalkInterface::getInterfaceId(a5);
      v21 = a1[1].OSMetaClassBase::__vftable;
      HIWORD(v21[1].Dispatch) = WORD2(v21->getMetaClass);
      *(&v21[1].Dispatch + 2) = v21->getMetaClass;
      if (AppleBCMWLANBusInterfacePCIe::isTSICMPV6LoggingEnabled(a2))
      {
        TweakAllTxAsTS = 1;
      }

      else
      {
        TweakAllTxAsTS = AppleBCMWLANBusInterfacePCIe::getTweakAllTxAsTS(a2);
      }

      BYTE2(a1[1].OSMetaClassBase::__vftable[1].init) = TweakAllTxAsTS;
      BYTE3(a1[1].OSMetaClassBase::__vftable[1].init) = AppleBCMWLANBusInterfacePCIe::isTSLoggingEnabled(a2);
      IgnoreTSIfBitmap = AppleBCMWLANBusInterfacePCIe::getIgnoreTSIfBitmap(a2);
      BYTE4(a1[1].OSMetaClassBase::__vftable[1].init) = (IgnoreTSIfBitmap >> IO80211SkywalkInterface::getInterfaceId(a5)) & 1;
      BYTE5(a1[1].OSMetaClassBase::__vftable[1].init) = AppleBCMWLANBusInterfacePCIe::getTSTxExtendedFlags(a2);
      LODWORD(a1[1].OSMetaClassBase::__vftable[1].free) = AppleBCMWLANBusInterfacePCIe::getTimestampingMode(a2);
      return 1;
    }
  }

  return result;
}

AppleBCMWLANItemRing *AppleBCMWLANPCIeSkywalkFlowQueue::getRingFreeSpace(AppleBCMWLANPCIeSkywalkFlowQueue *this)
{
  v2 = *(this + 5);
  result = *(v2 + 72);
  if (result)
  {
    v4 = *(v2 + 24);
    if (v4 > AppleBCMWLANItemRing::getWritableItemCount(result))
    {
      return 0;
    }

    else
    {
      return (AppleBCMWLANItemRing::getWritableItemCount(*(*(this + 5) + 72)) - *(*(this + 5) + 24));
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkFlowQueue::enqueuePacket(uint64_t a1, AppleBCMWLANCore *a2, void *a3, void *a4)
{
  v7 = *(a1 + 40);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(*(a1 + 64));
  v9 = AppleBCMWLANCore::checkForHP2PSupport(a2);
  isP2pAirplayActive = AppleBCMWLANCore::isP2pAirplayActive(a2);
  v11 = AppleBCMWLANCore::mapLowLatencyLowPriority(a2);
  result = CCLogStream::logInfo(v7, "[dk] %s@%d:%s: IfID:%u hP2pSupport:%u airplay:%u lowPrioMap:%u \n", "enqueuePacket", 167, "enqueuePacket", InterfaceId, v9, isP2pAirplayActive, v11);
  *a4 = *a3;
  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkFlowQueue::enqueuePacket(uint64_t a1, AppleBCMWLANCore *a2, unsigned __int8 a3, int a4)
{
  v7 = *(*a1 + 40);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(*(*a1 + 64));
  ProximityInterfaceId = AppleBCMWLANCore::getProximityInterfaceId(a2);
  return CCLogStream::logInfo(v7, "[dk] %s@%d:%s: IfID:%u proxIntId:%u ac:%u userPriority:%u \n", "enqueuePacket", 171, "enqueuePacket", InterfaceId, ProximityInterfaceId, a4, a3);
}

uint64_t AppleBCMWLANPCIeSkywalkFlowQueue::enqueuePacket(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_11(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: NULL flow ring!\n", "enqueuePacket", 219);
}

{
  v1 = OUTLINED_FUNCTION_0_13(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s[%d] : ERROR ! Invalid Flow ID in transmit path :%02x:%02x:%02x:%02x:%02x:%02x\n", "enqueuePacket", 223, "void AppleBCMWLANPCIeSkywalkFlowQueue::enqueuePacket(AppleBCMWLANPCIeSkywalkPacket *, BOOL)", 223, v3, v4, v5, v6, v7, v2);
}

{
  v1 = OUTLINED_FUNCTION_1_11(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid InterfaceId\n", "enqueuePacket", 198);
}

uint64_t AppleBCMWLANPCIeSkywalkFlowQueue::fwRingFill(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_11(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid parentIf\n", "fwRingFill", 361);
}

{
  v1 = OUTLINED_FUNCTION_1_11(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:tx submit, out of tracker\n", "fwRingFill", 444);
}

uint64_t AppleBCMWLANPCIeSkywalkMulticastQueue::initWithProviderAndQueueInfo(OSObject *this, AppleBCMWLANBusInterfacePCIe *a2, IO80211SkywalkInterface *a3, CCLogStream *a4, CCFaultReporter *a5)
{
  result = AppleBCMWLANSkywalkMulticastQueue::initWithInterface(this, a3);
  if (result)
  {
    result = IOMallocZeroTyped();
    this[1].ivars = result;
    if (result)
    {
      *(this[1].ivars + 1) = AppleBCMWLANPCIeSkywalkFlowQueue::withProviderAndQueueInfo(a2, 0xFFFFFFFFFFFFLL, 0, a3, a4, a5);
      *this[1].ivars = a4;
      v11 = *this[1].ivars;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      if ((this->OSMetaClassBase::__vftable[2].isEqualTo)(this))
      {
        (this->OSMetaClassBase::__vftable[2].isEqualTo)(this);
        if (CCLogStream::shouldLog())
        {
          v12 = (this->OSMetaClassBase::__vftable[2].isEqualTo)(this);
          CCLogStream::logInfo(v12, "[dk] %s@%d:%s\n", "initWithProviderAndQueueInfo", 71, "initWithProviderAndQueueInfo");
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::free(const void *a1)
{
  OUTLINED_FUNCTION_5_5();
  v3 = (*(v2 + 216))();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Enter ::free [%p]", "free", 122, a1);
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::dequeuePackets(uint64_t a1, uint64_t *a2)
{
  (*(*a1 + 208))(a1);
  v3 = OUTLINED_FUNCTION_1_12(*a2);
  (*(v4 + 792))(v3);
  OUTLINED_FUNCTION_3_8(0x4081u);

  return kdebug_trace();
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::dequeuePackets(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_1_12(*a1);
  (*(v2 + 792))(v1);
  OUTLINED_FUNCTION_2_11(0x4082u);

  return kdebug_trace();
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::flushPackets(uint64_t a1)
{
  OUTLINED_FUNCTION_5_5();
  v3 = (*(v2 + 216))();
  v4 = *(a1 + 88);
  v5 = *(v4 + 40);
  v6 = *(v4 + 72);
  if (v6)
  {
    RetainCount = OSMetaClassBase::getRetainCount(*(v4 + 72));
  }

  else
  {
    RetainCount = 0;
  }

  return CCLogStream::logInfo(v3, "[dk] %s@%d:Enter with fPacketCount:%u, fPacketPool[%p] nRetained[%u]", "flushPackets", 201, v5, v6, RetainCount);
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::flushPackets()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 216))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:invalid packet\n", "flushPackets", 210);
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::setFWRing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_5();
  v5 = (*(v4 + 216))();
  if (a3)
  {
    v6 = "Set";
  }

  else
  {
    v6 = "Clear";
  }

  return CCLogStream::logInfo(v5, "[dk] %s@%d:fwRing:%s\n", "setFWRing", 232, v6);
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::setFWRing()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 216))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:assign fw ring into queue, queue enabled, request dequeue\n", "setFWRing", 243);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 216))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:rx submission ring flush\n", "setFWRing", 249);
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::setFWRing(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_5_5();
  v5 = (*(v4 + 216))();
  return CCLogStream::logInfo(v5, "[dk] %s@%d:rx sub dequeue fail 0x%x\n", "setFWRing", 246, a3);
}