uint64_t ot::Cli::Joiner::Process<25605ull>(ot::Cli::Utils *a1)
{
  InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
  otJoinerGetId(InstancePtr);
  ot::Cli::Utils::OutputExtAddressLine(a1, v2);
  return 0;
}

uint64_t ot::Cli::Joiner::Process<13525664152328030601ull>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser **a2)
{
  v10 = a1;
  v9 = a2;
  v8 = 7;
  RepeatScan = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    RepeatScan = otJoinerGetRepeatScan(InstancePtr);
    ot::Cli::Utils::OutputLine(a1, "%u", RepeatScan);
    return 0;
  }

  else
  {
    v8 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v9, &RepeatScan, v2);
    if (!v8)
    {
      v4 = ot::Cli::Utils::GetInstancePtr(a1);
      return otJoinerSetRepeatScan(v4, RepeatScan);
    }
  }

  return v8;
}

uint64_t ot::Cli::Joiner::Process<492373686370ull>(ot::Cli::Utils *a1, uint64_t a2)
{
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return 7;
  }

  else
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    CString = ot::Utils::CmdLineParser::Arg::GetCString(a2);
    v2 = ot::Utils::CmdLineParser::Arg::GetCString((a2 + 8));
    return otJoinerStart(InstancePtr, CString, v2, "OPENTHREAD", "POSIX", "0.01.00", 0, ot::Cli::Joiner::HandleCallback, a1);
  }
}

uint64_t ot::Cli::Joiner::Process<1864361470ull>(ot::Cli::Utils *a1)
{
  InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
  otJoinerStop(InstancePtr);
  return 0;
}

uint64_t ot::Cli::Joiner::Process<428983089745ull>(ot::Cli::Utils *a1)
{
  InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
  State = otJoinerGetState(InstancePtr);
  v3 = otJoinerStateToString(State);
  ot::Cli::Utils::OutputLine(a1, "%s", v3);
  return 0;
}

uint64_t ot::Cli::Joiner::Process(ot::Cli::Joiner *this, const char **a2)
{
  v17 = this;
  v16 = a2;
  v15 = 35;
  v14 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2) || ot::Utils::CmdLineParser::Arg::operator==(v16, "help"))
  {
    ot::Cli::Utils::OutputCommandTable<ot::Cli::Joiner,(unsigned short)6>(this, &ot::Cli::Joiner::Process(ot::Utils::CmdLineParser::Arg *)::kCommands);
    if (ot::Utils::CmdLineParser::Arg::IsEmpty(v16))
    {
      return v15;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    CString = ot::Utils::CmdLineParser::Arg::GetCString(v16);
    v14 = ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Joiner>,(unsigned short)6>(&CString, &ot::Cli::Joiner::Process(ot::Utils::CmdLineParser::Arg *)::kCommands, v2, v3, v4, v5);
    if (v14)
    {
      v9 = *(v14 + 1);
      v6 = *(v14 + 2);
      v10 = (this + (v6 >> 1));
      if (v6)
      {
        return (*(*v10 + v9))(v10, v16 + 1);
      }

      else
      {
        return v9(v10, v16 + 1);
      }
    }
  }

  return v15;
}

ot::Cli::Utils *ot::Cli::Utils::OutputCommandTable<ot::Cli::Joiner,(unsigned short)6>(ot::Cli::Utils *result, const char **a2)
{
  v2 = result;
  v4 = a2;
  v3 = a2 + 18;
  while (v4 != v3)
  {
    result = ot::Cli::Utils::CommandEntry<ot::Cli::Joiner>::Compare(v4, "reset");
    if (result)
    {
      result = ot::Cli::Utils::OutputLine(v2, "%s", *v4);
    }

    v4 += 3;
  }

  return result;
}

{
  return ot::Cli::Utils::OutputCommandTable<ot::Cli::Joiner,(unsigned short)6>(result, a2);
}

char *ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Joiner>,(unsigned short)6>(ot::BinarySearch *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  return ot::BinarySearch::Find(a1, a2, 6, 0x18u, ot::BinarySearch::Compare<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Joiner>>, a6);
}

{
  return ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Joiner>,(unsigned short)6>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::Cli::Joiner::HandleCallback(ot::Cli::Utils *a1, int a2)
{
  if (!a2)
  {
    return ot::Cli::Utils::OutputLine(a1, "Join success");
  }

  v3 = otThreadErrorToString(a2);
  return ot::Cli::Utils::OutputLine(a1, "Join failed [%s]", v3);
}

uint64_t ot::Cli::Utils::CommandEntry<ot::Cli::Joiner>::Compare(const char **a1, const char *a2)
{
  return strcmp(a2, *a1);
}

{
  return ot::Cli::Utils::CommandEntry<ot::Cli::Joiner>::Compare(a1, a2);
}

uint64_t ot::Cli::NetworkData::NetworkData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ot::Cli::Utils::Utils(a1, a2, a3);
  *(a1 + 16) = 0;
  otBorderRouterSetNetDataFullCallback(a2, ot::Cli::NetworkData::HandleNetdataFull, a1);
  return a1;
}

{
  ot::Cli::NetworkData::NetworkData(a1, a2, a3);
  return a1;
}

uint64_t ot::Cli::NetworkData::PrefixFlagsToString(uint64_t result, _BYTE *a2)
{
  v10 = a2;
  if ((*(result + 17) & 4) != 0)
  {
    v10 = a2 + 1;
    *a2 = 112;
  }

  if ((*(result + 17) & 8) != 0)
  {
    v2 = v10++;
    *v2 = 97;
  }

  if ((*(result + 17) & 0x10) != 0)
  {
    v3 = v10++;
    *v3 = 100;
  }

  if ((*(result + 17) & 0x20) != 0)
  {
    v4 = v10++;
    *v4 = 99;
  }

  if ((*(result + 17) & 0x40) != 0)
  {
    v5 = v10++;
    *v5 = 114;
  }

  if ((*(result + 17) & 0x80) != 0)
  {
    v6 = v10++;
    *v6 = 111;
  }

  if ((*(result + 17) & 0x100) != 0)
  {
    v7 = v10++;
    *v7 = 115;
  }

  if ((*(result + 17) & 0x200) != 0)
  {
    v8 = v10++;
    *v8 = 110;
  }

  if ((*(result + 17) & 0x400) != 0)
  {
    v9 = v10++;
    *v9 = 68;
  }

  *v10 = 0;
  return result;
}

uint64_t ot::Cli::NetworkData::OutputPrefix(ot::Cli::Utils *a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  v7 = 0;
  ot::Cli::Utils::OutputIp6Prefix(a1, a2);
  ot::Cli::NetworkData::PrefixFlagsToString(a2, v6);
  if (LOBYTE(v6[0]))
  {
    ot::Cli::Utils::OutputFormat(a1, " %s", v6);
  }

  v2 = ot::Cli::Utils::PreferenceToString(((*(a2 + 17) << 14) >> 14));
  return ot::Cli::Utils::OutputLine(a1, " %s %04x", v2, *(a2 + 20));
}

uint64_t ot::Cli::NetworkData::RouteFlagsToString(uint64_t result, _BYTE *a2)
{
  v4 = a2;
  if ((*(result + 20) & 8) != 0)
  {
    v4 = a2 + 1;
    *a2 = 115;
  }

  if ((*(result + 20) & 4) != 0)
  {
    v2 = v4++;
    *v2 = 110;
  }

  if ((*(result + 20) & 0x20) != 0)
  {
    v3 = v4++;
    *v3 = 97;
  }

  *v4 = 0;
  return result;
}

uint64_t ot::Cli::NetworkData::OutputRoute(ot::Cli::Utils *a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  v7 = 0;
  ot::Cli::Utils::OutputIp6Prefix(a1, a2);
  ot::Cli::NetworkData::RouteFlagsToString(a2, v6);
  if (LOBYTE(v6[0]))
  {
    ot::Cli::Utils::OutputFormat(a1, " %s", v6);
  }

  v2 = ot::Cli::Utils::PreferenceToString(((*(a2 + 20) << 6) >> 6));
  return ot::Cli::Utils::OutputLine(a1, " %s %04x", v2, *(a2 + 18));
}

uint64_t ot::Cli::NetworkData::OutputService(ot::Cli::Utils *a1, unsigned __int8 *a2)
{
  ot::Cli::Utils::OutputFormat(a1, "sid[%u] ", *a2);
  v2 = ot::ToUlong(*(a2 + 1));
  ot::Cli::Utils::OutputFormat(a1, "%lu ", v2);
  ot::Cli::Utils::OutputBytes(a1, a2 + 9, a2[8]);
  ot::Cli::Utils::OutputFormat(a1, " ");
  ot::Cli::Utils::OutputBytes(a1, a2 + 264, a2[263]);
  if (a2[262])
  {
    ot::Cli::Utils::OutputFormat(a1, " s");
  }

  return ot::Cli::Utils::OutputLine(a1, " %04x %u", *(a2 + 256), *a2);
}

uint64_t ot::Cli::NetworkData::Process<112625398707738ull>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2)
{
  v6 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    Length = otNetDataGetLength(InstancePtr);
    ot::Cli::Utils::OutputLine(a1, "%u", Length);
  }

  else
  {
    return 7;
  }

  return v6;
}

uint64_t ot::Cli::NetworkData::Process<4362819052862294378ull>(ot::Cli::Utils *a1, const char **a2)
{
  v7 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    MaxLength = otNetDataGetMaxLength(InstancePtr);
    ot::Cli::Utils::OutputLine(a1, "%u", MaxLength);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "reset"))
  {
    v4 = ot::Cli::Utils::GetInstancePtr(a1);
    otNetDataResetMaxLength(v4);
  }

  else
  {
    return 7;
  }

  return v7;
}

uint64_t ot::Cli::NetworkData::Process<3328099188798998309ull>(ot::Cli::Utils *a1, const char **a2)
{
  v12 = a1;
  v11 = a2;
  v10 = 0;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "check"))
  {
    v10 = ot::Cli::Utils::ParseJoinerDiscerner(v11 + 1, v8);
    if (v10 == 23)
    {
      v9 = 0;
      v10 = ot::Utils::CmdLineParser::Arg::ParseAsHexString<(unsigned short)8>(v11 + 1, v13, v2, v3);
    }

    if (!v10)
    {
      if (v9)
      {
        InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
        return otNetDataSteeringDataCheckJoinerWithDiscerner(InstancePtr, v8);
      }

      else
      {
        v5 = ot::Cli::Utils::GetInstancePtr(a1);
        return otNetDataSteeringDataCheckJoiner(v5, v13);
      }
    }
  }

  else
  {
    return 7;
  }

  return v10;
}

uint64_t ot::Cli::NetworkData::GetNextPrefix(ot::Cli::Utils *a1, unsigned int *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    return otBorderRouterGetNextOnMeshPrefix(InstancePtr, a2, a3);
  }

  else
  {
    v5 = ot::Cli::Utils::GetInstancePtr(a1);
    return otNetDataGetNextOnMeshPrefix(v5, a2, a3);
  }
}

uint64_t ot::Cli::NetworkData::OutputNetworkData(ot::Cli::NetworkData *this, char a2, unsigned __int16 a3)
{
  v17 = this;
  v16 = a2;
  v15 = a3;
  v14 = 0;
  ot::Cli::Utils::OutputLine(this, "Prefixes:");
  while (!ot::Cli::NetworkData::GetNextPrefix(this, &v14, v12, v16 & 1))
  {
    if (v15 == 0xFFFF || v15 == v13)
    {
      ot::Cli::NetworkData::OutputPrefix(this, v12);
    }
  }

  ot::Cli::Utils::OutputLine(this, "Routes:");
  v14 = 0;
  while (!ot::Cli::NetworkData::GetNextRoute(this, &v14, v10, v16 & 1))
  {
    if (v15 == 0xFFFF || v15 == v11)
    {
      ot::Cli::NetworkData::OutputRoute(this, v10);
    }
  }

  ot::Cli::Utils::OutputLine(this, "Services:");
  v14 = 0;
  while (1)
  {
    result = ot::Cli::NetworkData::GetNextService(this, &v14, v22, v16 & 1);
    if (result)
    {
      break;
    }

    if (v15 == 0xFFFF || v15 == v23)
    {
      ot::Cli::NetworkData::OutputService(this, v22);
    }
  }

  if ((v16 & 1) == 0 && v15 == 0xFFFF)
  {
    ot::Cli::Utils::OutputLine(this, "Contexts:");
    v14 = 0;
    while (1)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
      if (otNetDataGetNextLowpanContextInfo(InstancePtr, &v14, v8))
      {
        break;
      }

      ot::Cli::Utils::OutputIp6Prefix(this, &v9);
      if (v8[1])
      {
        v5 = 99;
      }

      else
      {
        v5 = 45;
      }

      ot::Cli::Utils::OutputLine(this, " %u %c", v8[0], v5);
    }

    v6 = ot::Cli::Utils::GetInstancePtr(this);
    otNetDataGetCommissioningDataset(v6, v18);
    ot::Cli::Utils::OutputLine(this, "Commissioning:");
    if ((v21 & 2) != 0)
    {
      ot::Cli::Utils::OutputFormat(this, "%u ", v18[1]);
    }

    else
    {
      ot::Cli::Utils::OutputFormat(this, "- ");
    }

    if (v21)
    {
      ot::Cli::Utils::OutputFormat(this, "%04x ", v18[0]);
    }

    else
    {
      ot::Cli::Utils::OutputFormat(this, "- ");
    }

    if ((v21 & 8) != 0)
    {
      ot::Cli::Utils::OutputFormat(this, "%u ", v20);
    }

    else
    {
      ot::Cli::Utils::OutputFormat(this, "- ");
    }

    if ((v21 & 4) != 0)
    {
      ot::Cli::Utils::OutputBytes(this, &v19[1], v19[0]);
    }

    else
    {
      ot::Cli::Utils::OutputFormat(this, "-");
    }

    if ((v21 & 0x10) != 0)
    {
      ot::Cli::Utils::OutputFormat(this, " e");
    }

    return ot::Cli::Utils::OutputNewLine(this);
  }

  return result;
}

uint64_t ot::Cli::NetworkData::GetNextRoute(ot::Cli::Utils *a1, unsigned int *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    return otBorderRouterGetNextRoute(InstancePtr, a2, a3);
  }

  else
  {
    v5 = ot::Cli::Utils::GetInstancePtr(a1);
    return otNetDataGetNextRoute(v5, a2, a3);
  }
}

uint64_t ot::Cli::NetworkData::GetNextService(ot::Cli::Utils *a1, unsigned int *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
    return otServerGetNextService(InstancePtr, a2, a3);
  }

  else
  {
    v5 = ot::Cli::Utils::GetInstancePtr(a1);
    return otNetDataGetNextService(v5, a2, a3);
  }
}

uint64_t ot::Cli::NetworkData::OutputBinary(ot::Cli::NetworkData *this, char a2)
{
  v7 = this;
  v6[8] = a2;
  *&v6[1] = 0;
  v6[0] = -1;
  if (a2)
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
    *&v6[1] = otBorderRouterGetNetData(InstancePtr, 0, v8, v6);
  }

  else
  {
    v3 = ot::Cli::Utils::GetInstancePtr(this);
    *&v6[1] = otNetDataGet(v3, 0, v8, v6);
  }

  if (!*&v6[1])
  {
    ot::Cli::Utils::OutputBytesLine(this, v8, v6[0]);
  }

  return *&v6[1];
}

uint64_t ot::Cli::NetworkData::Process<1980428035ull>(ot::Cli::NetworkData *a1, uint64_t a2)
{
  v11 = a1;
  v10 = a2;
  v9 = 7;
  v8 = -1;
  v7 = 0;
  v6 = 0;
  for (i = 0; !ot::Utils::CmdLineParser::Arg::IsEmpty((v10 + 8 * i)); ++i)
  {
    if (ot::Utils::CmdLineParser::Arg::operator==((v10 + 8 * i), "local"))
    {
      v7 = 1;
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==((v10 + 8 * i), "-x"))
    {
      v6 = 1;
    }

    else
    {
      v9 = ot::Utils::CmdLineParser::Arg::ParseAsUint16((v10 + 8 * i), &v8, v2);
      if (v9)
      {
        return v9;
      }
    }
  }

  if ((v7 & 1) != 0 || (v6) && v8 != 0xFFFF)
  {
    return 7;
  }

  else if (v6)
  {
    return ot::Cli::NetworkData::OutputBinary(a1, v7 & 1);
  }

  else
  {
    ot::Cli::NetworkData::OutputNetworkData(a1, v7 & 1, v8);
    return 0;
  }
}

uint64_t ot::Cli::NetworkData::Process<109323266905330ull>(ot::Cli::Utils *a1, uint64_t a2)
{
  InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
  DeviceRole = otThreadGetDeviceRole(InstancePtr);
  v4 = otThreadDeviceRoleToString(DeviceRole);
  if (!strcmp(v4, "disabled") || (v5 = ot::Cli::Utils::GetInstancePtr(a1), otThreadIsDeviceDetached(v5)))
  {
    v10 = 7;
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 8)))
    {
      memset(__b, 0, sizeof(__b));
      ot::Utils::CmdLineParser::Arg::CopyArgsToStringArray(a2, __b, v6);
      strcpy(__dst, __b[0]);
      v7 = strlen(__dst);
      if (!ot::Cli::NetworkData::SetNetdata(a1, __dst, v7, 0, 0))
      {
        ot::Cli::NetworkData::OutputNetworkData(a1, 0, 0xFFFFu);
        return 0;
      }
    }

    else
    {
      return 7;
    }
  }

  else
  {
    v10 = 13;
    ot::Cli::Utils::OutputLine(a1, "Invalid state. To process this decode command , device must be in offline, detached or disabled state.");
  }

  return v10;
}

uint64_t ot::Cli::NetworkData::Process<1797841137ull>(ot::Cli::Utils *a1, const char **a2)
{
  v4 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    if (*(a1 + 16))
    {
      ot::Cli::Utils::OutputLine(a1, "yes", a1);
    }

    else
    {
      ot::Cli::Utils::OutputLine(a1, "no", a1);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "reset"))
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 1)))
    {
      *(a1 + 16) = 0;
    }

    else
    {
      return 7;
    }
  }

  else
  {
    return 7;
  }

  return v4;
}

uint64_t ot::Cli::NetworkData::Process(ot::Cli::NetworkData *this, const char **a2)
{
  v17 = this;
  v16 = a2;
  v15 = 35;
  v14 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2) || ot::Utils::CmdLineParser::Arg::operator==(v16, "help"))
  {
    ot::Cli::Utils::OutputCommandTable<ot::Cli::NetworkData,(unsigned short)7>(this, &ot::Cli::NetworkData::Process(ot::Utils::CmdLineParser::Arg *)::kCommands);
    if (ot::Utils::CmdLineParser::Arg::IsEmpty(v16))
    {
      return v15;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    CString = ot::Utils::CmdLineParser::Arg::GetCString(v16);
    v14 = ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::NetworkData>,(unsigned short)7>(&CString, &ot::Cli::NetworkData::Process(ot::Utils::CmdLineParser::Arg *)::kCommands, v2, v3, v4, v5);
    if (v14)
    {
      v9 = *(v14 + 1);
      v6 = *(v14 + 2);
      v10 = (this + (v6 >> 1));
      if (v6)
      {
        return (*(*v10 + v9))(v10, v16 + 1);
      }

      else
      {
        return v9(v10, v16 + 1);
      }
    }
  }

  return v15;
}

ot::Cli::Utils *ot::Cli::Utils::OutputCommandTable<ot::Cli::NetworkData,(unsigned short)7>(ot::Cli::Utils *result, const char **a2)
{
  v2 = result;
  v4 = a2;
  v3 = a2 + 21;
  while (v4 != v3)
  {
    result = ot::Cli::Utils::CommandEntry<ot::Cli::NetworkData>::Compare(v4, "reset");
    if (result)
    {
      result = ot::Cli::Utils::OutputLine(v2, "%s", *v4);
    }

    v4 += 3;
  }

  return result;
}

{
  return ot::Cli::Utils::OutputCommandTable<ot::Cli::NetworkData,(unsigned short)7>(result, a2);
}

char *ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::NetworkData>,(unsigned short)7>(ot::BinarySearch *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  return ot::BinarySearch::Find(a1, a2, 7, 0x18u, ot::BinarySearch::Compare<char *,ot::Cli::Utils::CommandEntry<ot::Cli::NetworkData>>, a6);
}

{
  return ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::NetworkData>,(unsigned short)7>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::Cli::NetworkData::HandleNetdataFull(uint64_t this)
{
  *(this + 16) = 1;
  return this;
}

{
  return ot::Cli::NetworkData::HandleNetdataFull(this);
}

uint64_t ot::Cli::Utils::CommandEntry<ot::Cli::NetworkData>::Compare(const char **a1, const char *a2)
{
  return strcmp(a2, *a1);
}

{
  return ot::Cli::Utils::CommandEntry<ot::Cli::NetworkData>::Compare(a1, a2);
}

uint64_t ot::Cli::Vendor::ProcessGetVendorAssert(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  v6 = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  v6 = otPlatVendorGenerateAssert(InstancePtr, &v5);
  if (!v6)
  {
    ot::Cli::Utils::OutputLine(this, "VendorAssert=%u", v5);
  }

  return v6;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorAssignedHwMac(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  v5 = this;
  v9 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  AssignedHwMac = otPlatVendorGetAssignedHwMac(InstancePtr, &v9);
  if (!AssignedHwMac)
  {
    v4[9] = v4;
    ot::Cli::Utils::OutputLine(v5, "AssignedHWMac=%x:%x:%x:%x:%x:%x:%x:%x", v9, BYTE1(v9), BYTE2(v9), BYTE3(v9), BYTE4(v9), BYTE5(v9), BYTE6(v9), HIBYTE(v9));
  }

  return AssignedHwMac;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorHardFault(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  ot::Cli::Utils::GetInstancePtr(this);
  HardFault = otPlatVendorGenerateHardFault();
  if (!HardFault)
  {
    ot::Cli::Utils::OutputLine(this, "HardFault");
  }

  return HardFault;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorPower(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  Power = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  Power = otPlatVendorGetPower(InstancePtr, &v5);
  if (!Power)
  {
    ot::Cli::Utils::OutputLine(this, " Power = %f dBm", v5 * 0.25);
  }

  return Power;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorPowerLimitTableVersion(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  PowerLimitTableVersion = otPlatVendorGetPowerLimitTableVersion(InstancePtr, v6, 60);
  if (!PowerLimitTableVersion)
  {
    ot::Cli::Utils::OutputLine(this, "Version = %s", v6);
  }

  return PowerLimitTableVersion;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorPTB(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v15 = this;
  v14 = a2;
  v8 = this;
  PTB = 0;
  v12 = 1300;
  v11 = v5;
  v6 = 1312;
  __chkstk_darwin(this);
  v7 = &v5[-v6];
  v10 = v2;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(v8);
  PTB = otPlatVendorGetPTB(InstancePtr, v7, &v12);
  if (!PTB)
  {
    ot::Cli::Utils::OutputLine(v8, "RCP2 PTB Read data response Size = %d", v12);
    for (i = 0; i < v12; ++i)
    {
      ot::Cli::Utils::OutputLine(v8, "Byte[%d] = 0X%x", i, v7[i]);
    }
  }

  return PTB;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorStackOverflow(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  ot::Cli::Utils::GetInstancePtr(this);
  StackOverflow = otPlatVendorGenerateStackOverflow();
  if (!StackOverflow)
  {
    ot::Cli::Utils::OutputLine(this, "StackOverflow");
  }

  return StackOverflow;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorVersion(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  Version = otPlatVendorGetVersion(InstancePtr, v6, 500);
  if (!Version)
  {
    ot::Cli::Utils::OutputLine(this, "mVersion=%s", v6);
  }

  return Version;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorAssert(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return 7;
  }

  else
  {
    v7 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v8, &v6, v2);
    if (!v7)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
      v7 = otPlatVendorSetAssert(InstancePtr, v6);
      if (!v7)
      {
        ot::Cli::Utils::OutputLine(this, "VendorAssert=%u", v6);
      }
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorAssignedHwMac(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2, uint64_t a3, unsigned __int16 a4)
{
  v11 = this;
  v10 = a2;
  v7 = this;
  *v12 = 0x807060504030201;
  v8 = 8;
  v9 = ot::Utils::CmdLineParser::Arg::ParseAsHexString(a2, v12, 8u, a4);
  if (!v9)
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(v7);
    v9 = otPlatVendorSetAssignedHwMac(InstancePtr, v12);
    if (!v9)
    {
      v6[9] = v6;
      ot::Cli::Utils::OutputLine(v7, "AssignedHWMac=%x:%x:%x:%x:%x:%x:%x:%x", v12[0], v12[1], v12[2], v12[3], v12[4], v12[5], v12[6], v12[7]);
    }
  }

  return v9;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorPower(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return 7;
  }

  else
  {
    v7 = ot::Utils::CmdLineParser::Arg::ParseAsInt8(v8, &v6, v2);
    if (!v7)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
      v7 = otPlatVendorSetPower(InstancePtr, &v6);
      if (!v7)
      {
        ot::Cli::Utils::OutputLine(this, " Setting Power as %f dBm", v6 * 0.25);
      }
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessHelp(ot::Cli::Vendor *this)
{
  v9 = &ot::Cli::Vendor::sGetCommands;
  v8 = &ot::Cli::Vendor::sGetCommands;
  v7 = 9;
  v6 = 4;
  ot::Cli::Utils::GetInstancePtr(this);
  if (otPlatRadioGetRcp2Vendor2Enabled())
  {
    v9 = &ot::Cli::Vendor::sGetCommandsProxima;
    v8 = &ot::Cli::Vendor::sSetCommandsProxima;
    v7 = 3;
    v6 = 2;
  }

  ot::Cli::Utils::OutputLine(this, "GET PROPERTIES:", this);
  for (i = 0; i < v7; ++i)
  {
    ot::Cli::Utils::OutputLine(v3, v9[3 * i]);
  }

  ot::Cli::Utils::OutputLine(v3, "");
  ot::Cli::Utils::OutputLine(v3, "SET PROPERTIES:");
  for (j = 0; j < v6; ++j)
  {
    ot::Cli::Utils::OutputLine(v3, v8[3 * j]);
  }

  return 0;
}

uint64_t ot::Cli::Vendor::ProcessGet(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v14 = 35;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    ot::Cli::Vendor::ProcessHelp(this);
    IgnoreError();
    return 0;
  }

  else
  {
    CString = ot::Utils::CmdLineParser::Arg::GetCString(a2);
    v13 = ot::Utils::LookupTable::Find<ot::Cli::Vendor::Command,(unsigned short)9>(CString, &ot::Cli::Vendor::sGetCommands, v3, v4, v5, v6);
    if (v13)
    {
      v10 = *(v13 + 1);
      v7 = *(v13 + 2);
      v11 = (this + (v7 >> 1));
      if (v7)
      {
        return (*(*v11 + v10))(v11, a2 + 8);
      }

      else
      {
        return v10(v11, a2 + 8);
      }
    }
  }

  return v14;
}

const char *ot::Utils::LookupTable::Find<ot::Cli::Vendor::Command,(unsigned short)9>(ot::Utils::LookupTable *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *(*a6)(const void *))
{
  return ot::Utils::LookupTable::Find(a1, a2, 9, 0x18u, ot::Utils::LookupTable::GetName<ot::Cli::Vendor::Command>, a6);
}

{
  return ot::Utils::LookupTable::Find<ot::Cli::Vendor::Command,(unsigned short)9>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::Cli::Vendor::ProcessSet(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v14 = 35;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    ot::Cli::Vendor::ProcessHelp(this);
    IgnoreError();
    return 0;
  }

  else
  {
    CString = ot::Utils::CmdLineParser::Arg::GetCString(a2);
    v13 = ot::Utils::LookupTable::Find<ot::Cli::Vendor::Command,(unsigned short)4>(CString, &ot::Cli::Vendor::sSetCommands, v3, v4, v5, v6);
    if (v13)
    {
      v10 = *(v13 + 1);
      v7 = *(v13 + 2);
      v11 = (this + (v7 >> 1));
      if (v7)
      {
        return (*(*v11 + v10))(v11, a2 + 8);
      }

      else
      {
        return v10(v11, a2 + 8);
      }
    }
  }

  return v14;
}

const char *ot::Utils::LookupTable::Find<ot::Cli::Vendor::Command,(unsigned short)4>(ot::Utils::LookupTable *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *(*a6)(const void *))
{
  return ot::Utils::LookupTable::Find(a1, a2, 4, 0x18u, ot::Utils::LookupTable::GetName<ot::Cli::Vendor::Command>, a6);
}

{
  return ot::Utils::LookupTable::Find<ot::Cli::Vendor::Command,(unsigned short)4>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::Cli::Vendor::ProcessGetVendorPeek(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v12 = this;
  v11 = a2;
  v10 = 0;
  v9 = 0;
  v8[2] = 0;
  *v8 = ot::Utils::CmdLineParser::Arg::GetArgsLength(a2, a2);
  if (v8[0] != 2)
  {
    ot::Cli::Utils::OutputLine(this, "Usage: get peek [address:32-bit] [count:16-bit]");
  }

  v10 = ot::Utils::CmdLineParser::Arg::ParseAsUint32(v11, &v9, v2);
  if (!v10)
  {
    v10 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v11 + 1, &v8[1], v3);
    if (!v10)
    {
      v7 = 0;
      v10 = otPlatPeek(v13, &v7, v9, *&v8[1]);
      ot::Cli::Utils::OutputLine(this, "BytesRead=%u", v7);
      for (i = 0; i < v7; ++i)
      {
        ot::Cli::Utils::OutputLine(this, "Byte[%d]=%x", i, v13[i]);
      }
    }
  }

  return v10;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorCoexRx(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  CoexRxMode = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  CoexRxMode = otPlatVendorGetCoexRxMode(InstancePtr, &v5);
  if (!CoexRxMode)
  {
    switch(v5)
    {
      case 1u:
        ot::Cli::Utils::OutputLine(this, "COEX_RX_REQUEST_MODE_RESERVED");
        break;
      case 2u:
        ot::Cli::Utils::OutputLine(this, "COEX_RX_REQUEST_MODE_PREAMBLE");
        break;
      case 3u:
        ot::Cli::Utils::OutputLine(this, "COEX_RX_REQUEST_MODE_DESTINED");
        break;
      case 4u:
        ot::Cli::Utils::OutputLine(this, "COEX_RX_REQUEST_MODE_MIXED");
        break;
      default:
        ot::Cli::Utils::OutputLine(this, "Unknown Rx Coex Mode");
        break;
    }
  }

  return CoexRxMode;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorCoexRxUpperBound(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  CoexRxMixedModeUpperBound = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  CoexRxMixedModeUpperBound = otPlatVendorGetCoexRxMixedModeUpperBound(InstancePtr, &v5);
  if (!CoexRxMixedModeUpperBound)
  {
    ot::Cli::Utils::OutputLine(this, "Upper bound threshold=%u", v5);
  }

  return CoexRxMixedModeUpperBound;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorCoexRxLowerBound(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  CoexRxMixedModeLowerBound = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  CoexRxMixedModeLowerBound = otPlatVendorGetCoexRxMixedModeLowerBound(InstancePtr, &v5);
  if (!CoexRxMixedModeLowerBound)
  {
    ot::Cli::Utils::OutputLine(this, "Lower bound threshold=%u", v5);
  }

  return CoexRxMixedModeLowerBound;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorCoexTx(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  CoexTxMode = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  CoexTxMode = otPlatVendorGetCoexTxMode(InstancePtr, &v5);
  if (!CoexTxMode)
  {
    switch(v5)
    {
      case 1u:
        ot::Cli::Utils::OutputLine(this, "COEX_TX_REQUEST_MODE_FRAME_READY");
        break;
      case 2u:
        ot::Cli::Utils::OutputLine(this, "COEX_TX_REQUEST_MODE_CCA_START");
        break;
      case 3u:
        ot::Cli::Utils::OutputLine(this, "COEX_TX_REQUEST_MODE_EVERY_CCA_START");
        break;
      case 4u:
        ot::Cli::Utils::OutputLine(this, "COEX_TX_REQUEST_MODE_BEFORE_CCA_REQ_TOGGLE");
        break;
      default:
        ot::Cli::Utils::OutputLine(this, "Unknown COEX_TX_REQUEST_MODE");
        break;
    }
  }

  return CoexTxMode;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorIfsMode(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  IfsMode = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  IfsMode = otPlatVendorGetIfsMode(InstancePtr, &v5);
  if (!IfsMode)
  {
    ot::Cli::Utils::OutputLine(this, "IFSMode=%u", v5);
  }

  return IfsMode;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorIfsMinSifs(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  IfsMinSifs = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  IfsMinSifs = otPlatVendorGetIfsMinSifs(InstancePtr, &v5);
  if (!IfsMinSifs)
  {
    ot::Cli::Utils::OutputLine(this, "MinSIFS=%u", v5);
  }

  return IfsMinSifs;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorIfsMinLifs(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  IfsMinLifs = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  IfsMinLifs = otPlatVendorGetIfsMinLifs(InstancePtr, &v5);
  if (!IfsMinLifs)
  {
    ot::Cli::Utils::OutputLine(this, "MinLIFS=%u", v5);
  }

  return IfsMinLifs;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorGetIfsAckTurnAroundTime(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  IfsAckTurnAroundTime = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  IfsAckTurnAroundTime = otPlatVendorGetIfsAckTurnAroundTime(InstancePtr, &v5);
  if (!IfsAckTurnAroundTime)
  {
    ot::Cli::Utils::OutputLine(this, "AckTurnAroundTime=%u", v5);
    persist_ifs_ackturnaround_time(v5);
  }

  return IfsAckTurnAroundTime;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorGetIfsAckTurnAroundMode(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  IfsAckTurnAroundMode = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  IfsAckTurnAroundMode = otPlatVendorGetIfsAckTurnAroundMode(InstancePtr, &v5);
  if (!IfsAckTurnAroundMode)
  {
    ot::Cli::Utils::OutputLine(this, "AckTurnAroundMode=%u", v5);
    persist_ifs_ackturnaround_mode(v5);
  }

  return IfsAckTurnAroundMode;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorGetIfsAckTurnAroundEnable(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  IfsAckTurnAroundEnable = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  IfsAckTurnAroundEnable = otPlatVendorGetIfsAckTurnAroundEnable(InstancePtr, &v5);
  if (!IfsAckTurnAroundEnable)
  {
    ot::Cli::Utils::OutputLine(this, "AckTurnAroundEnable=%u", v5);
    persist_ifs_ackturnaround_enable(v5);
  }

  return IfsAckTurnAroundEnable;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorIfsAckDataPerNeighbor(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v9 = __chkstk_darwin(this);
  v8 = v2;
  v4 = v9;
  IfsAckDataPerNeighbor = 0;
  v6 = 0;
  IfsAckDataPerNeighbor = otPlatVendorGetIfsAckDataPerNeighbor(v10, &v6);
  if (!IfsAckDataPerNeighbor)
  {
    for (i = 0; i < v6; ++i)
    {
      ot::Cli::Utils::OutputFormat(v4, "[%u] Neighbor Short Address = %04x | Bit field = %04x", i, v10[57 * i], v10[57 * i + 5]);
      ot::Cli::Utils::OutputFormat(v4, " | Extended Address = ");
      ot::Cli::Utils::OutputExtAddress(v4, &v10[57 * i + 1]);
      ot::Cli::Utils::OutputFormat(v4, " | IE data = ");
      ot::Cli::Utils::OutputBytesLine(v4, &v10[57 * i + 6], v10[57 * i + 56]);
    }
  }

  return IfsAckDataPerNeighbor;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorOtRadioCounters(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  OpenThreadRadioCounters = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  OpenThreadRadioCounters = otPlatVendorGetOpenThreadRadioCounters(InstancePtr, v5);
  if (!OpenThreadRadioCounters)
  {
    ot::Cli::Utils::OutputLine(this, "TransmittedFrames=%u", v5[0]);
    ot::Cli::Utils::OutputLine(this, "TxErrorTimeslotEnded=%u", v5[1]);
    ot::Cli::Utils::OutputLine(this, "TxErrorTimeslotDenied=%u", v5[2]);
    ot::Cli::Utils::OutputLine(this, "TxErrorBusyChannelCcaNotStarted=%u", v5[3]);
    ot::Cli::Utils::OutputLine(this, "TxErrorChannelAccessCcaBusy=%u", v5[4]);
    ot::Cli::Utils::OutputLine(this, "TxErrorChannelAccessFailure=%u", v5[5]);
    ot::Cli::Utils::OutputLine(this, "TxErrorTxAborted=%u", v5[6]);
    ot::Cli::Utils::OutputLine(this, "TxErrorTxAbortedCsmaCfgBackoff=%u", v5[7]);
    ot::Cli::Utils::OutputLine(this, "TxErrorTxAbortedCsmaBackoff=%u", v5[8]);
    ot::Cli::Utils::OutputLine(this, "TxErrorTxAbortedCsmaPrepare=%u", v5[9]);
    ot::Cli::Utils::OutputLine(this, "TxErrorTxAbortedIfs=%u", v5[10]);
    ot::Cli::Utils::OutputLine(this, "TxErrorTxAbortedRxAck=%u", v5[11]);
    ot::Cli::Utils::OutputLine(this, "TxErrorTxAbortedCcaTx=%u", v5[12]);
    ot::Cli::Utils::OutputLine(this, "TxErrorTxAbortedTx=%u", v5[13]);
    ot::Cli::Utils::OutputLine(this, "TxErrorNotGranted=%u", v5[14]);
    ot::Cli::Utils::OutputLine(this, "TxErrorInvalidAck=%u", v5[15]);
    ot::Cli::Utils::OutputLine(this, "TxErrorNoAck=%u", v5[16]);
    ot::Cli::Utils::OutputLine(this, "TxErrorAckNoMem=%u", v5[17]);
    ot::Cli::Utils::OutputLine(this, "ReceivedFrames=%u", v5[18]);
    ot::Cli::Utils::OutputLine(this, "RxErrorReceiveFailed=%u", v5[19]);
    ot::Cli::Utils::OutputLine(this, "RxErrorInvalidFrame=%u", v5[20]);
    ot::Cli::Utils::OutputLine(this, "RxErrorDelayedTimeout=%u", v5[21]);
    ot::Cli::Utils::OutputLine(this, "RxErrorInvalidFcs=%u", v5[22]);
    ot::Cli::Utils::OutputLine(this, "RxErrorDestAddrFiltered=%u", v5[24]);
    ot::Cli::Utils::OutputLine(this, "RxErrorRuntimeDelay=%u", v5[25]);
    ot::Cli::Utils::OutputLine(this, "RxErrorTimeslotEnded=%u", v5[26]);
    ot::Cli::Utils::OutputLine(this, "RxErrorAborted=%u", v5[27]);
    ot::Cli::Utils::OutputLine(this, "RxErrorDelayedTimeslotEnded=%u", v5[28]);
    ot::Cli::Utils::OutputLine(this, "RxErrorInvalidLength=%u", v5[29]);
    ot::Cli::Utils::OutputLine(this, "RxErrorInvalidData=%u", v5[30]);
    ot::Cli::Utils::OutputLine(this, "RxErrorAckFailedRadioState[PATH_0]=%u", v5[31]);
    ot::Cli::Utils::OutputLine(this, "RxErrorAckFailedRadioDelay[PATH_0]=%u", v5[33]);
    ot::Cli::Utils::OutputLine(this, "RxErrorAckDenied[PATH_0]=%u", v5[35]);
    ot::Cli::Utils::OutputLine(this, "RxErrorAckAborted[PATH_0]=%u", v5[37]);
    ot::Cli::Utils::OutputLine(this, "RxErrorAckFailedRadioState[PATH_1]=%u", v5[32]);
    ot::Cli::Utils::OutputLine(this, "RxErrorAckFailedRadioDelay[PATH_1]=%u", v5[34]);
    ot::Cli::Utils::OutputLine(this, "RxErrorAckDenied[PATH_1]=%u", v5[36]);
    ot::Cli::Utils::OutputLine(this, "RxErrorAckAborted[PATH_1]=%u", v5[38]);
    ot::Cli::Utils::OutputLine(this, "RxErrorInvalidFcsWhenSwitchingRadioPath=%u", v5[23]);
    ot::Cli::Utils::OutputLine(this, "SleepState=%u", v5[39]);
    ot::Cli::Utils::OutputLine(this, "EnergyDetectedRequests=%u", v5[40]);
    ot::Cli::Utils::OutputLine(this, "EnergyDetectedEvents=%u", v5[41]);
    ot::Cli::Utils::OutputLine(this, "Radio status double notification events=%u", v5[42]);
  }

  return OpenThreadRadioCounters;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorRadioCounters(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  RadioCounters = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  RadioCounters = otPlatVendorGetRadioCounters(InstancePtr, v5);
  if (!RadioCounters)
  {
    ot::Cli::Utils::OutputLine(this, "CcaFailedAttempts=%u", v5[0]);
    ot::Cli::Utils::OutputLine(this, "ReceivedFrames=%u", v5[1]);
    ot::Cli::Utils::OutputLine(this, "ReceivedEnergyEvents=%u", v5[2]);
    ot::Cli::Utils::OutputLine(this, "ReceivedPreambles=%u", v5[3]);
  }

  return RadioCounters;
}

uint64_t ot::Cli::Vendor::ProcessGetMSFState(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  MSFState = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  MSFState = otPlatVendorGetMSFState(InstancePtr, &v5);
  if (!MSFState)
  {
    if (v5)
    {
      ot::Cli::Utils::OutputLine(this, "MSF loaded", this);
    }

    else
    {
      ot::Cli::Utils::OutputLine(this, "MSF not loaded", this);
    }
  }

  return MSFState;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorFaultInfo(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v9 = this;
  v8 = a2;
  FaultInfo = 0;
  v5 = 0u;
  v6 = 0u;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  FaultInfo = otPlatVendorGetFaultInfo(InstancePtr, &v5);
  if (!FaultInfo)
  {
    ot::Cli::Utils::OutputLine(this, "Address=%u", v6);
    ot::Cli::Utils::OutputLine(this, "Line=%u", DWORD1(v6));
    ot::Cli::Utils::OutputLine(this, "RandomId=%u", v5);
    ot::Cli::Utils::OutputLine(this, "CrashCount=%u", WORD4(v6));
    ot::Cli::Utils::OutputLine(this, "CrashType=%u", DWORD1(v5));
    ot::Cli::Utils::OutputLine(this, "Timestamp=%u", DWORD2(v5));
  }

  return FaultInfo;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorDeepSleepFilterList(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v9 = this;
  v8 = a2;
  DeepSleepFilterList = 0;
  v6 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  DeepSleepFilterList = otPlatVendorGetDeepSleepFilterList(InstancePtr, v10, &v6);
  if (!DeepSleepFilterList)
  {
    for (i = 0; i < v6; ++i)
    {
      ot::Cli::Utils::OutputLine(this, "DeepSleepFilterList=%u", v10[i]);
    }
  }

  return DeepSleepFilterList;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorDeepSleepLogLevel(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  DeepSleepLogLevel = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  DeepSleepLogLevel = otPlatVendorGetDeepSleepLogLevel(InstancePtr, &v5);
  if (!DeepSleepLogLevel)
  {
    ot::Cli::Utils::OutputLine(this, "DeepSleepLogLevel=%u", v5);
  }

  return DeepSleepLogLevel;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorDeepSleepRegionLogLevels(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v9 = this;
  v8 = a2;
  DeepSleepRegionLogLevels = 0;
  v6 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  DeepSleepRegionLogLevels = otPlatVendorGetDeepSleepRegionLogLevels(InstancePtr, v10, &v6);
  if (!DeepSleepRegionLogLevels)
  {
    for (i = 0; i < v6; ++i)
    {
      ot::Cli::Utils::OutputLine(this, "%u", v10[i]);
    }
  }

  return DeepSleepRegionLogLevels;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorLastHostWakeReason(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  HostWakeReason = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  HostWakeReason = otPlatVendorGetHostWakeReason(InstancePtr, &v5);
  if (!HostWakeReason)
  {
    ot::Cli::Utils::OutputLine(this, "HostWakeReason=%u", v5);
  }

  return HostWakeReason;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorDeviceId(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  v5 = this;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  DeviceId = otPlatVendorGetDeviceId(InstancePtr, v9);
  if (!DeviceId)
  {
    v4[10] = v4;
    ot::Cli::Utils::OutputLine(v5, "%x:%x:%x:%x:%x:%x:%x:%x", v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7]);
  }

  return DeviceId;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorNcpStateDump(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v33 = this;
  v32 = a2;
  CoexGrantTimeout = 0;
  ot::Cli::Utils::OutputLine(this, "RCP State Dump");
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  State = otBorderAgentGetState(InstancePtr);
  ot::Cli::Utils::OutputFormat(this, "Border Agent State=%d\n", State);
  v29 = 0;
  ot::Cli::Utils::OutputFormat(this, "Role=");
  v3 = ot::Cli::Utils::GetInstancePtr(this);
  DeviceRole = otThreadGetDeviceRole(v3);
  v5 = otThreadDeviceRoleToString(DeviceRole);
  ot::Cli::Utils::OutputLine(this, "%s", v5);
  ot::Cli::Utils::OutputFormat(this, "\nRLOC16=");
  v6 = ot::Cli::Utils::GetInstancePtr(this);
  otThreadGetRloc(v6);
  ot::Cli::Utils::OutputIp6Address(this, v7);
  v8 = ot::Cli::Utils::GetInstancePtr(this);
  v20 = otJoinerGetState(v8);
  if (v20)
  {
    switch(v20)
    {
      case 1:
        ot::Cli::Utils::OutputFormat(this, "\nJOINER_STATE: %s", "discover");
        break;
      case 2:
        ot::Cli::Utils::OutputFormat(this, "\nJOINER_STATE: %s", "connecting");
        break;
      case 3:
        ot::Cli::Utils::OutputFormat(this, "\nJOINER_STATE: %s", "connected");
        break;
      case 4:
        ot::Cli::Utils::OutputFormat(this, "\nJOINER_STATE: %s", "entrust");
        break;
      case 5:
        ot::Cli::Utils::OutputFormat(this, "\nJOINER_STATE: %s", "joined");
        break;
      default:
        ot::Cli::Utils::OutputFormat(this, "\nJOINER_STATE: unknown");
        break;
    }
  }

  else
  {
    ot::Cli::Utils::OutputFormat(this, "\nJOINER_STATE: %s", "idle");
  }

  v28 = 0;
  v9 = ot::Cli::Utils::GetInstancePtr(this);
  v19 = otCommissionerGetState(v9);
  if (v19)
  {
    if (v19 == 1)
    {
      v28 = 1;
    }

    else if (v19 == 2)
    {
      v28 = 2;
    }
  }

  else
  {
    v28 = 0;
  }

  ot::Cli::Utils::OutputFormat(this, "\nMESHCOP_COMMISSIONER_STATE: %d", v28);
  ot::Cli::Utils::OutputFormat(this, "\nIPV6_ADDRESS_TABLE: \n");
  v10 = ot::Cli::Utils::GetInstancePtr(this);
  for (i = otIp6GetUnicastAddresses(v10); i; i = *(i + 24))
  {
    ot::Cli::Utils::OutputIp6Address(this, i);
    ot::Cli::Utils::OutputFormat(this, "Prefix Length=%d", *(i + 16));
    if (*(i + 18))
    {
      v11 = -1;
    }

    else
    {
      v11 = 0;
    }

    ot::Cli::Utils::OutputFormat(this, "Preferred:%d", v11);
    if ((*(i + 18) & 2) != 0)
    {
      v12 = -1;
    }

    else
    {
      v12 = 0;
    }

    ot::Cli::Utils::OutputFormat(this, "Valid:%d\n", v12);
  }

  ot::Cli::Utils::OutputFormat(this, "\nMSG_BUFFER_COUNTERS\n");
  v13 = ot::Cli::Utils::GetInstancePtr(this);
  otMessageGetBufferInfo(v13, v26);
  ot::Cli::Utils::OutputFormat(this, "\nmTotalBuffers:%u", v26[0]);
  ot::Cli::Utils::OutputFormat(this, "\nmFreeBuffers:%u", v26[1]);
  ot::Cli::Utils::OutputFormat(this, "\nm6loSendMessages:%u", v26[4]);
  ot::Cli::Utils::OutputFormat(this, "\nm6loSendBuffers:%u", v26[5]);
  ot::Cli::Utils::OutputFormat(this, "\nm6loReassemblyMessages:%u", v26[8]);
  ot::Cli::Utils::OutputFormat(this, "\nm6loReassemblyBuffers:%u", v26[9]);
  ot::Cli::Utils::OutputFormat(this, "\nmIp6Messages:%u", v26[12]);
  ot::Cli::Utils::OutputFormat(this, "\nmIp6Buffers:%u", v26[13]);
  ot::Cli::Utils::OutputFormat(this, "\nmMplMessages:%u", v26[16]);
  ot::Cli::Utils::OutputFormat(this, "\nmMplBuffers:%u", v26[17]);
  ot::Cli::Utils::OutputFormat(this, "\nmMleMessages:%u", v26[20]);
  ot::Cli::Utils::OutputFormat(this, "\nmMleBuffers:%u", v26[21]);
  ot::Cli::Utils::OutputFormat(this, "\nmCoapMessages:%u", v26[24]);
  ot::Cli::Utils::OutputFormat(this, "\nmCoapBuffers:%u", v26[25]);
  ot::Cli::Utils::OutputFormat(this, "\nNeighbor Info\n");
  while (1)
  {
    v14 = ot::Cli::Utils::GetInstancePtr(this);
    if (otThreadGetNextNeighborInfo(v14, &v29, v35))
    {
      break;
    }

    ot::Cli::Utils::OutputFormat(this, " neighInfo.mIsChild:%u", (v39 & 8) != 0);
    ot::Cli::Utils::OutputFormat(this, " neighInfo.mRloc16:%u", v36);
    ot::Cli::Utils::OutputFormat(this, " neighInfo.mAverageRssi:%u", v37);
    ot::Cli::Utils::OutputFormat(this, " neighInfo.mLastRssi:%u", v38);
  }

  ot::Cli::Utils::OutputFormat(this, "\nLEADER_NETWORK_DATA\n");
  v25 = -1;
  v15 = ot::Cli::Utils::GetInstancePtr(this);
  otNetDataGet(v15, 0, v34, &v25);
  IgnoreError();
  for (j = 0; j < v25; ++j)
  {
    ot::Cli::Utils::OutputFormat(this, "%x", v34[j]);
  }

  ot::Cli::Utils::OutputFormat(this, "\nMLE_COUNTERS\n");
  v16 = ot::Cli::Utils::GetInstancePtr(this);
  MleCounters = otThreadGetMleCounters(v16);
  if (!MleCounters)
  {
    __assert_rtn("ProcessGetVendorNcpStateDump", "cli_vendor.cpp", 1424, "counters != nullptr");
  }

  ot::Cli::Utils::OutputFormat(this, "\ncounters->mDisabledRole:%u", *MleCounters);
  ot::Cli::Utils::OutputFormat(this, "\ncounters->mDetachedRole:%u", MleCounters[1]);
  ot::Cli::Utils::OutputFormat(this, "\ncounters->mChildRole:%u", MleCounters[2]);
  ot::Cli::Utils::OutputFormat(this, "\ncounters->mRouterRole:%u", MleCounters[3]);
  ot::Cli::Utils::OutputFormat(this, "\ncounters->mLeaderRole:%u", MleCounters[4]);
  ot::Cli::Utils::OutputFormat(this, "\ncounters->mAttachAttempts:%u", MleCounters[5]);
  ot::Cli::Utils::OutputFormat(this, "\ncounters->mPartitionIdChanges:%u", MleCounters[6]);
  ot::Cli::Utils::OutputFormat(this, "\ncounters->mBetterPartitionAttachAttempts:%u", MleCounters[7]);
  ot::Cli::Utils::OutputFormat(this, "\ncounters->mParentChanges:%u", MleCounters[32]);
  v22 = 0;
  v17 = ot::Cli::Utils::GetInstancePtr(this);
  CoexGrantTimeout = otPlatVendorGetCoexGrantTimeout(v17, &v22);
  if (!CoexGrantTimeout)
  {
    ot::Cli::Utils::OutputFormat(this, "\nCoexGrantTimeout:%u", v22);
  }

  return CoexGrantTimeout;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorCoexRx(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return 7;
  }

  else
  {
    v7 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v8, &v6, v2);
    if (!v7)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
      v7 = otPlatVendorSetCoexRxMode(InstancePtr, v6);
      if (!v7)
      {
        persist_coex_rxmode(v6);
      }
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorCoexRxUpperBound(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return 7;
  }

  else
  {
    v7 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v8, &v6, v2);
    if (!v7)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
      v7 = otPlatVendorSetCoexRxMixedModeUpperBound(InstancePtr, v6);
      if (!v7)
      {
        persist_coex_rxthresholdUpperBound(v6);
      }
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorCoexRxLowerBound(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return 7;
  }

  else
  {
    v7 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v8, &v6, v2);
    if (!v7)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
      v7 = otPlatVendorSetCoexRxMixedModeLowerBound(InstancePtr, v6);
      if (!v7)
      {
        persist_coex_rxthresholdLowerBound(v6);
      }
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorCoexTx(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return 7;
  }

  else
  {
    v7 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v8, &v6, v2);
    if (!v7)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
      v7 = otPlatVendorSetCoexTxMode(InstancePtr, v6);
      if (!v7)
      {
        persist_coex_txmode(v6);
      }
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorIfsMode(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return 7;
  }

  else
  {
    v7 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v8, &v6, v2);
    if (!v7)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
      v7 = otPlatVendorSetIfsMode(InstancePtr, v6);
      if (!v7)
      {
        ot::Cli::Utils::OutputLine(this, "IFSMode=%u", v6);
      }
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorIfsMinSifs(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return 7;
  }

  else
  {
    v7 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v8, &v6, v2);
    if (!v7)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
      v7 = otPlatVendorSetIfsMinSifs(InstancePtr, v6);
      if (!v7)
      {
        ot::Cli::Utils::OutputLine(this, "MinSIFS=%u", v6);
      }
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorIfsMinLifs(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return 7;
  }

  else
  {
    v7 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v8, &v6, v2);
    if (!v7)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
      v7 = otPlatVendorSetIfsMinLifs(InstancePtr, v6);
      if (!v7)
      {
        ot::Cli::Utils::OutputLine(this, "MinLIFS=%u", v6);
      }
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorIfsMinRetxSifs(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v4 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return 7;
  }

  else
  {
    ot::Cli::Utils::OutputLine(this, "RICK UPMERGE CANDIDATE");
  }

  return v4;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorIfsMinRetxLifs(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v4 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return 7;
  }

  else
  {
    ot::Cli::Utils::OutputLine(this, "RICK UPMERGE CANDIDATE");
  }

  return v4;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorIfsAckTurnAroundMode(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  if (!ot::Utils::CmdLineParser::Arg::IsEmpty(a2) && ot::Utils::CmdLineParser::Arg::IsEmpty((v8 + 1)))
  {
    v7 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v8, &v6, v2);
    if (!v7)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
      v7 = otPlatVendorSetIfsAckTurnAroundMode(InstancePtr, v6);
      if (!v7)
      {
        ot::Cli::Utils::OutputLine(this, "AckTurnAroundMode=%u", v6);
        persist_ifs_ackturnaround_mode(v6);
      }
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorIfsAckTurnAroundEnable(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  if (!ot::Utils::CmdLineParser::Arg::IsEmpty(a2) && ot::Utils::CmdLineParser::Arg::IsEmpty((v8 + 1)))
  {
    v7 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v8, &v6, v2);
    if (!v7)
    {
      if (v6 <= 1u)
      {
        InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
        v7 = otPlatVendorSetIfsAckTurnAroundEnable(InstancePtr, v6);
        if (!v7)
        {
          ot::Cli::Utils::OutputLine(this, "AckTurnAroundEnable=%u", v6);
          persist_ifs_ackturnaround_enable(v6);
        }
      }

      else
      {
        return 7;
      }
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorIfsAckTurnAroundTime(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  if (!ot::Utils::CmdLineParser::Arg::IsEmpty(a2) && ot::Utils::CmdLineParser::Arg::IsEmpty((v8 + 1)))
  {
    v7 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v8, &v6, v2);
    if (!v7)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
      v7 = otPlatVendorSetIfsAckTurnAroundTime(InstancePtr, v6);
      if (!v7)
      {
        ot::Cli::Utils::OutputLine(this, "AckTurnAroundTime=%u", v6);
        persist_ifs_ackturnaround_time(v6);
      }
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorCntrStatsReset(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  ot::Cli::Utils::GetInstancePtr(this);
  v4 = otPlatVendorCntrStatsReset();
  if (!v4)
  {
    ot::Cli::Utils::OutputLine(this, "CnrtStatsReset=%s", v5);
  }

  return v4;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorOtRadioCounters(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  ot::Cli::Utils::GetInstancePtr(this);
  v4 = otPlatVendorResetOpenThreadRadioCounters();
  if (!v4)
  {
    ot::Cli::Utils::OutputLine(this, "Reset Radio counters");
  }

  return v4;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorRadioCounters(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  ot::Cli::Utils::GetInstancePtr(this);
  v4 = otPlatVendorResetRadioCounters();
  if (!v4)
  {
    ot::Cli::Utils::OutputLine(this, "Reset Radio Counters");
  }

  return v4;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorRadioStats(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  ot::Cli::Utils::GetInstancePtr(this);
  v4 = otPlatVendorResetRadioStats();
  if (!v4)
  {
    ot::Cli::Utils::OutputLine(this, "Reset RadioStats");
  }

  return v4;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorLoggingTest(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
{
  v10 = this;
  v9 = a2;
  v8 = 0;
  v7[7] = 1;
  v7[6] = 1;
  strcpy(v7, "hello");
  if (ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 1)))
  {
    return 7;
  }

  else
  {
    v8 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v9, &v7[7], v2);
    if (!v8)
    {
      v8 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v9 + 1, &v7[6], v3);
      if (!v8)
      {
        InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
        v8 = otPlatVendorLoggingTest(InstancePtr, v7[7], v7[6], v7);
        if (!v8)
        {
          ot::Cli::Utils::OutputLine(this, "Log test");
        }
      }
    }
  }

  return v8;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorFilterNotif (ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  v6 = 0;
  v5 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return 7;
  }

  else
  {
    v6 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v7, &v5, v2);
    if (!v6)
    {
      v6 = otPlatVendorSetNotificationFilter(v5);
      if (!v6)
      {
        ot::Cli::Utils::OutputLine(this, "FilterNotif");
      }
    }
  }

  return v6;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorDeepSleepFilterList(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 100;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  v7 = otPlatVendorSetDeepSleepFilterList(InstancePtr, v10, &v6);
  if (!v7)
  {
    for (i = 0; i < v6; ++i)
    {
      ot::Cli::Utils::OutputLine(this, "DeepSleepFilterLis=%u", v10[i]);
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorDeepSleepLogLevel(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return 7;
  }

  else
  {
    v7 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v8, &v6, v2);
    if (!v7)
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
      v7 = otPlatVendorSetDeepSleepLogLevel(InstancePtr, v6);
      if (!v7)
      {
        ot::Cli::Utils::OutputLine(this, "DeepSleepLogLevel=%u", v6);
      }
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorDeepSleepRegionLogLevels(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = -1;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  v7 = otPlatVendorSetDeepSleepRegionLogLevels(InstancePtr, v10, &v6);
  if (!v7)
  {
    for (i = 0; i < v6; ++i)
    {
      ot::Cli::Utils::OutputLine(this, "%u", v10[i]);
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorLastHostWakeReason(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  ot::Cli::Utils::GetInstancePtr(this);
  v4 = otPlatVendorSetHostWakeReason();
  if (!v4)
  {
    ot::Cli::Utils::OutputLine(this, "Clear HostWakeReason");
  }

  return v4;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorFlashErase(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
{
  v11 = this;
  v10 = a2;
  v9 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 1)))
  {
    return 7;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v9 = ot::Utils::CmdLineParser::Arg::ParseAsUint32(v10, &v8, v2);
    if (!v9)
    {
      v9 = ot::Utils::CmdLineParser::Arg::ParseAsUint32(v10 + 1, &v7, v3);
      if (!v9)
      {
        InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
        v9 = otPlatVendorFlashErase(InstancePtr, v8, v7);
        if (!v9)
        {
          ot::Cli::Utils::OutputLine(this, "%u:%u", v8, v7);
        }
      }
    }
  }

  return v9;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorFlashWrite(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v11 = this;
  v10 = a2;
  v9 = 0;
  v8 = 0;
  v7 = 100;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 8)))
  {
    return 7;
  }

  else
  {
    v9 = ot::Utils::CmdLineParser::Arg::ParseAsUint32(v10, &v8, v2);
    if (!v9)
    {
      v9 = ot::Utils::CmdLineParser::Arg::ParseAsHexString(v10 + 1, &v7, v12, v3);
      if (!v9)
      {
        InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
        v9 = otPlatVendorFlashWrite(InstancePtr, v8, v12, v7);
        if (!v9)
        {
          ot::Cli::Utils::OutputLine(this, "Flash write Address=%u", v8);
        }
      }
    }
  }

  return v9;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorOtLogTimestampBase(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v7 = this;
  v6 = a2;
  v5 = 0;
  v4 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return 7;
  }

  else
  {
    v5 = ot::Utils::CmdLineParser::Arg::ParseAsUint64(v6, &v4, v2);
    if (!v5)
    {
      return otPlatVendorSetLogTimestampBase(v4);
    }
  }

  return v5;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorUartDisableStart(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v7 = this;
  v6 = a2;
  v5 = 0;
  v4 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    return 7;
  }

  else
  {
    return ot::Utils::CmdLineParser::Arg::ParseAsUint32(v6, &v4, v2);
  }
}

uint64_t ot::Cli::Vendor::ProcessGetVendorCore(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  Core = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  Core = otPlatVendorGetCore(InstancePtr, &v5);
  if (!Core)
  {
    ot::Cli::Utils::OutputLine(this, "Core=%d", v5);
  }

  return Core;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorAntenna(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  Antenna = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  Antenna = otPlatVendorGetAntenna(InstancePtr, &v5);
  if (!Antenna)
  {
    ot::Cli::Utils::OutputLine(this, "Antenna=%d", v5);
  }

  return Antenna;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorCC(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  CC = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  CC = otPlatVendorGetCC(InstancePtr, &v5);
  if (!CC)
  {
    ot::Cli::Utils::OutputLine(this, "CountryCode=%u", v5);
  }

  return CC;
}

uint64_t ot::Cli::Vendor::ProcessGetVendorPCAP(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  PCAP = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  PCAP = otPlatVendorGetPCAP(InstancePtr, &v5);
  if (!PCAP)
  {
    ot::Cli::Utils::OutputLine(this, "pcap=%d", v5 & 0xF);
  }

  return PCAP;
}

uint64_t ot::Cli::Vendor::ProcessGetPriority(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v10 = this;
  v9 = a2;
  Priority = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  Priority = otPlatVendorGetPriority(InstancePtr, &v7, &v6, &v5);
  if (!Priority)
  {
    ot::Cli::Utils::OutputLine(this, "priority = %d, overridePriority = %d, overridePriorityDuration = %d", v7, v6, v5);
  }

  return Priority;
}

uint64_t ot::Cli::Vendor::ProcessGetGPIO(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v8 = this;
  v7 = a2;
  GPIO = 0;
  v9[0] = *off_1004CC840;
  v9[1] = *off_1004CC850;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
  GPIO = otPlatVendorGetGPIO(InstancePtr, v5);
  if (!GPIO)
  {
    ot::Cli::Utils::OutputLine(this, "GPIO: txd->%s, rxd->%s, rts->%s, cts->%s", *(v9 + v5[0]), *(v9 + v5[1]), *(v9 + v5[2]), *(v9 + v5[3]));
  }

  return GPIO;
}

uint64_t ot::Cli::Vendor::ProcessGetBackOff(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v2 = "Enabled";
  if (!enablebackoff)
  {
    v2 = "Disabled";
  }

  ot::Cli::Utils::OutputLine(this, "Backoff is %s", v2);
  return 0;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorAntenna(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2, unsigned __int8 *a3)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  v7 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(a2, &v6, a3);
  if (!v7)
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
    v7 = otPlatVendorSetAntenna(InstancePtr, v6);
    if (!v7)
    {
      ot::Cli::Utils::OutputLine(this, "Set Antenna %u", v6);
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorCC(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2, unsigned __int8 *a3)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  v7 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(a2, &v6, a3);
  if (!v7)
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
    v7 = otPlatVendorSetCC(InstancePtr, v6);
    if (!v7)
    {
      ot::Cli::Utils::OutputLine(this, "Set CC =%u", v6);
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetVendorPCAP(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2, unsigned __int8 *a3)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  v7 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(a2, &v6, a3);
  if (!v7)
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
    v7 = otPlatVendorSetPCAP(InstancePtr, v6);
    if (!v7)
    {
      ot::Cli::Utils::OutputLine(this, "Set pcap =%x", v6);
    }
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessSetPriority(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
{
  v13 = this;
  v12 = a2;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty((a2 + 2)))
  {
    return 7;
  }

  else
  {
    v11 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v12, &v10, v2);
    if (!v11)
    {
      v11 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v12 + 1, &v9, v3);
      if (!v11)
      {
        v11 = ot::Utils::CmdLineParser::Arg::ParseAsUint32(v12 + 2, &v8, v4);
        if (!v11)
        {
          InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
          v11 = otPlatVendorSetPriority(InstancePtr, v10, v9, v8);
          if (!v11)
          {
            ot::Cli::Utils::OutputLine(this, "Set priority =%d, overritePriority =%d, overritePriorityDuration =%u", v10, v9, v8);
          }
        }
      }
    }
  }

  return v11;
}

uint64_t ot::Cli::Vendor::ProcessSetGPIO(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v15[0] = *off_1004CC860;
  v15[1] = *off_1004CC870;
  v14[0] = *off_1004CC880;
  v14[1] = *off_1004CC890;
  v8 = -1;
  v7 = -1;
  __s1 = ot::Utils::CmdLineParser::Arg::GetCString(a2);
  CString = ot::Utils::CmdLineParser::Arg::GetCString((a2 + 8));
  for (i = 0; i < 4u; ++i)
  {
    if (!strcmp(__s1, *(v15 + i)))
    {
      v8 = i + 1;
      break;
    }
  }

  for (j = 0; j < 4u; ++j)
  {
    if (!strcmp(CString, *(v14 + j)))
    {
      v7 = j;
      break;
    }
  }

  if (v8 < 0 || v7 < 0)
  {
    return 7;
  }

  else
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
    v11 = otPlatVendorSetGPIO(InstancePtr, v8, v7);
    if (!v11)
    {
      ot::Cli::Utils::OutputLine(this, "Set GPIO %s(%d) as %s(%d)", *(v15 + v8 - 1), v8, *(v14 + v7), v7);
    }

    return v11;
  }
}

uint64_t ot::Cli::Vendor::ProcessSetBackOff(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2, unsigned __int8 *a3)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  v7 = ot::Utils::CmdLineParser::Arg::ParseAsUint8(a2, &v6, a3);
  if (!v7)
  {
    enablebackoff = v6;
    v3 = "Enable";
    if (!v6)
    {
      v3 = "Disable";
    }

    ot::Cli::Utils::OutputLine(this, "%s Backoff", v3);
  }

  return v7;
}

uint64_t ot::Cli::Vendor::ProcessExposureState(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
{
  v12 = this;
  v11 = a2;
  ExposureState = 0;
  v9 = 0;
  v8 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
    ExposureState = otPlatVendorGetExposureState(InstancePtr, &v9, &v8);
    if (!ExposureState)
    {
      ot::Cli::Utils::OutputLine(this, " Exposure state is %d %d", v9, v8);
    }
  }

  else
  {
    ExposureState = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v11, &v9, v2);
    if (!ExposureState)
    {
      ExposureState = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v11 + 1, &v8, v4);
      if (!ExposureState)
      {
        v5 = ot::Cli::Utils::GetInstancePtr(this);
        ExposureState = otPlatVendorSetExposureState(v5, v9, v8);
        if (!ExposureState)
        {
          ot::Cli::Utils::OutputLine(this, " Setting Exposure state as Head/Body: %d pcap: %d", v9, v8);
        }
      }
    }
  }

  return ExposureState;
}

uint64_t ot::Cli::Vendor::ProcessMWSFreqTable(ot::Cli::Vendor *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v26 = this;
  v25 = a2;
  MWSFrequencyTable = 0;
  v23 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    ot::Cli::Utils::OutputLine(this, " Getting MWS Freq Table");
    InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
    MWSFrequencyTable = otPlatVendorGetMWSFrequencyTable(InstancePtr, &v23, v28);
    if (!MWSFrequencyTable)
    {
      otCliOutputFormat("scan freq: num_scan_sequence=%d\n", v23);
      for (i = 0; i < v23; ++i)
      {
        otCliOutputFormat(" %d %x", i, v28[i]);
      }
    }
  }

  else
  {
    ot::Cli::Utils::OutputLine(this, " Setting MWS Freq Table");
    v17 = 1;
    MWSFrequencyTable = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v25, &v23, v3);
    v22 = 0;
    v21 = 0;
    for (j = 0; ; ++j)
    {
      v15 = 0;
      if (j < v23)
      {
        v15 = v17 < ot::Utils::CmdLineParser::Arg::GetArgsLength(v25, v4);
      }

      if (!v15)
      {
        break;
      }

      v6 = v17++;
      v7 = (v25 + 8 * v6);
      v8 = v22++;
      MWSFrequencyTable = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v7, &v28[v8], v5);
    }

    for (k = 0; ; ++k)
    {
      v14 = 0;
      if (k < v23)
      {
        v14 = v17 < ot::Utils::CmdLineParser::Arg::GetArgsLength(v25, v4);
      }

      if (!v14)
      {
        break;
      }

      v9 = v17++;
      v10 = (v25 + 8 * v9);
      v11 = v21++;
      MWSFrequencyTable = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v10, &v27[v11], v5);
    }

    if (v22 == v23 && v21 == v23)
    {
      v12 = ot::Cli::Utils::GetInstancePtr(this);
      return otPlatVendorSetMWSFrequencyTable(v12, v23, v28, v27);
    }

    else
    {
      otCliOutputFormat("Error: scan freq <num_scan_sequence=%d> does not match number low/high scan frequency pairs\n", v23);
    }
  }

  return MWSFrequencyTable;
}

uint64_t ot::Cli::Vendor::ProcessCellState(ot::Cli::Vendor *this, ot::Utils::CmdLineParser **a2)
{
  v10 = this;
  v9 = a2;
  CellState = 0;
  v7 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr(this);
    CellState = otPlatVendorGetCellState(InstancePtr, &v7);
    if (!CellState)
    {
      ot::Cli::Utils::OutputLine(this, "Cell State is %d", v7);
    }
  }

  else
  {
    CellState = ot::Utils::CmdLineParser::Arg::ParseAsUint8(v9, &v7, v2);
    if (!CellState)
    {
      v4 = ot::Cli::Utils::GetInstancePtr(this);
      CellState = otPlatVendorSetCellState(v4, v7);
      if (!CellState)
      {
        ot::Cli::Utils::OutputLine(this, " Setting Cell State as %d", v7);
      }
    }
  }

  return CellState;
}

uint64_t ot::Cli::UdpExample::UdpExample(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ot::Cli::Utils::Utils(a1, a2, a3);
  *(a1 + 16) = 1;
  ot::Cli::Utils::ClearAllBytes<otUdpSocket>((a1 + 24));
  return a1;
}

{
  ot::Cli::UdpExample::UdpExample(a1, a2, a3);
  return a1;
}

void *ot::Cli::Utils::ClearAllBytes<otUdpSocket>(void *a1)
{
  return memset(a1, 0, 0x48uLL);
}

{
  return ot::Cli::Utils::ClearAllBytes<otUdpSocket>(a1);
}

uint64_t ot::Cli::UdpExample::Process<1665317123ull>(ot::Cli::Utils *a1, const char **a2)
{
  v11 = a1;
  v10 = a2;
  v9 = 0;
  v6 = 1;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "-u"))
  {
    v6 = 0;
    ++v10;
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v10, "-b"))
  {
    v6 = 2;
    ++v10;
  }

  v9 = ot::Utils::CmdLineParser::Arg::ParseAsIp6Address(v10, v7);
  if (!v9)
  {
    v9 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v10 + 1, &v8, v2);
    if (!v9)
    {
      if (ot::Utils::CmdLineParser::Arg::IsEmpty((v10 + 2)))
      {
        InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
        return otUdpBind(InstancePtr, a1 + 24, v7, v6);
      }

      else
      {
        return 7;
      }
    }
  }

  return v9;
}

uint64_t ot::Cli::UdpExample::Process<32000442710786154ull>(ot::Cli::Utils *a1, const char **a2)
{
  v12 = a1;
  v11 = a2;
  v10 = 0;
  v7 = 0;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
  v10 = ot::Cli::Utils::ParseToIp6Address(InstancePtr, v11, v8, &v7);
  if (!v10)
  {
    if (v7)
    {
      ot::Cli::Utils::OutputFormat(a1, "Connecting to synthesized IPv6 address: ");
      ot::Cli::Utils::OutputIp6AddressLine(a1, v8);
    }

    v10 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v11 + 1, &v9, v3);
    if (!v10)
    {
      if (ot::Utils::CmdLineParser::Arg::IsEmpty((v11 + 2)))
      {
        v4 = ot::Cli::Utils::GetInstancePtr(a1);
        return otUdpConnect(v4, a1 + 24, v8);
      }

      else
      {
        return 7;
      }
    }
  }

  return v10;
}

uint64_t ot::Cli::UdpExample::Process<1830547446ull>(ot::Cli::Utils *a1)
{
  InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
  if (otUdpIsOpen(InstancePtr, a1 + 24))
  {
    return 24;
  }

  else
  {
    v2 = ot::Cli::Utils::GetInstancePtr(a1);
    return otUdpOpen(v2, a1 + 24, ot::Cli::UdpExample::HandleUdpReceive, a1);
  }
}

void ot::Cli::UdpExample::HandleUdpReceive(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ot::Cli::UdpExample::HandleUdpReceive(a1, a2, a3);
}

{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = 0;
  logging_obg = log_get_logging_obg("com.apple.wpantund", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(2) & 1) != 0)
  {
    oslog = logging_obg;
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v8 = type;
      __os_log_helper_16_0_0(v9);
      _os_log_error_impl(&_mh_execute_header, log, v8, "HandleUdpReceive: ", v9, 2u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v17, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging Module is not defined for SubSystem: %s, Category: %s", v17, 0x16u);
  }

  Length = otMessageGetLength(v15);
  Offset = otMessageGetOffset(v15);
  otctl_OutputFormat("%d bytes from ", Length - Offset);
  otctl_OutputIp6Address(v14 + 16);
  otctl_OutputFormat(" %d ", *(v14 + 34));
  v6 = v15;
  v4 = otMessageGetOffset(v15);
  v13 = otMessageRead(v6, v4, v18, 0x5DBu);
  v18[v13] = 0;
  otctl_OutputLine("%s", v18);
  otctl_output_done();
}

uint64_t ot::Cli::UdpExample::Process<1665316120ull>(ot::Cli::Utils *a1, const char **a2)
{
  v26 = a1;
  v25 = a2;
  v24 = 0;
  v23 = 0;
  v19 = 0;
  LOBYTE(v19) = *(a1 + 16) & 1;
  HIBYTE(v19) = 1;
  InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
  if (!otUdpIsOpen(InstancePtr, a1 + 24))
  {
    v24 = 13;
    goto LABEL_27;
  }

  ot::Cli::Utils::ClearAllBytes<otMessageInfo>(v20);
  if (!ot::Utils::CmdLineParser::Arg::IsEmpty((v25 + 2)))
  {
    v18 = 0;
    v3 = ot::Cli::Utils::GetInstancePtr(a1);
    v24 = ot::Cli::Utils::ParseToIp6Address(v3, v25, v21, &v18);
    if (v24)
    {
      goto LABEL_27;
    }

    if (v18)
    {
      ot::Cli::Utils::OutputFormat(a1, "Sending to synthesized IPv6 address: ");
      ot::Cli::Utils::OutputIp6AddressLine(a1, v21);
    }

    v24 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v25 + 1, v22, v4);
    if (v24)
    {
      goto LABEL_27;
    }

    v25 += 2;
  }

  v5 = ot::Cli::Utils::GetInstancePtr(a1);
  v23 = otUdpNewMessage(v5, &v19);
  if (!v23)
  {
    v24 = 3;
    goto LABEL_27;
  }

  if (ot::Utils::CmdLineParser::Arg::operator==(v25, "-s"))
  {
    v17 = 0;
    v24 = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v25 + 1, &v17, v6);
    if (v24)
    {
      goto LABEL_27;
    }

    v24 = ot::Cli::UdpExample::PrepareAutoGeneratedPayload(v23, v17);
    if (v24)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (ot::Utils::CmdLineParser::Arg::operator==(v25, "-x"))
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v25 + 1)))
    {
      v24 = 7;
      goto LABEL_27;
    }

    v15 = v23;
    CString = ot::Utils::CmdLineParser::Arg::GetCString((v25 + 1));
    v24 = ot::Cli::UdpExample::PrepareHexStringPayload(v15, CString, v8, v9);
    if (!v24)
    {
LABEL_25:
      v11 = ot::Cli::Utils::GetInstancePtr(a1);
      v24 = otUdpSend(v11, a1 + 24, v23, v20);
      if (!v24)
      {
        v23 = 0;
      }
    }
  }

  else
  {
    if (ot::Utils::CmdLineParser::Arg::operator==(v25, "-t"))
    {
      ++v25;
    }

    if (ot::Utils::CmdLineParser::Arg::IsEmpty(v25))
    {
      v24 = 7;
      goto LABEL_27;
    }

    v14 = v23;
    v13 = ot::Utils::CmdLineParser::Arg::GetCString(v25);
    Length = ot::Utils::CmdLineParser::Arg::GetLength(v25);
    v24 = otMessageAppend(v14, v13, Length);
    if (!v24)
    {
      goto LABEL_25;
    }
  }

LABEL_27:
  if (v23)
  {
    otMessageFree(v23);
  }

  return v24;
}

uint64_t ot::Cli::UdpExample::PrepareAutoGeneratedPayload(uint64_t a1, __int16 a2)
{
  v6 = a1;
  v5 = a2;
  v4 = 0;
  v3 = 48;
  while (v5)
  {
    v4 = otMessageAppend(v6, &v3, 1u);
    if (v4)
    {
      break;
    }

    switch(v3)
    {
      case '9':
        v3 = 65;
        break;
      case 'Z':
        v3 = 97;
        break;
      case 'z':
        v3 = 48;
        break;
      default:
        ++v3;
        break;
    }

    --v5;
  }

  return v4;
}

uint64_t ot::Cli::UdpExample::PrepareHexStringPayload(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v7 = a1;
  *&v6[6] = a2;
  *&v6[2] = 0;
  *v6 = 0;
  v5 = 0;
  do
  {
    if (v5)
    {
      break;
    }

    strcpy(v6, "2");
    *&v6[2] = ot::Utils::CmdLineParser::ParseAsHexStringSegment(&v6[6], v6, v8, a4);
    if (*&v6[2])
    {
      if (*&v6[2] != 36)
      {
        break;
      }
    }

    v5 = *&v6[2] == 0;
    *&v6[2] = otMessageAppend(v7, v8, *v6);
  }

  while (!*&v6[2]);
  return *&v6[2];
}

uint64_t ot::Cli::UdpExample::Process<12648424561679575046ull>(uint64_t a1, const char **a2)
{
  v5 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    ot::Cli::Utils::OutputEnabledDisabledStatus(a1, *(a1 + 16) & 1);
  }

  else
  {
    return ot::Cli::Utils::ParseEnableOrDisable(a2, (a1 + 16), v2);
  }

  return v5;
}

uint64_t ot::Cli::UdpExample::Process(ot::Cli::UdpExample *this, const char **a2)
{
  v17 = this;
  v16 = a2;
  v15 = 35;
  v14 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2) || ot::Utils::CmdLineParser::Arg::operator==(v16, "help"))
  {
    ot::Cli::Utils::OutputCommandTable<ot::Cli::UdpExample,(unsigned short)6>(this, &ot::Cli::UdpExample::Process(ot::Utils::CmdLineParser::Arg *)::kCommands);
    if (ot::Utils::CmdLineParser::Arg::IsEmpty(v16))
    {
      return v15;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    CString = ot::Utils::CmdLineParser::Arg::GetCString(v16);
    v14 = ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::UdpExample>,(unsigned short)6>(&CString, &ot::Cli::UdpExample::Process(ot::Utils::CmdLineParser::Arg *)::kCommands, v2, v3, v4, v5);
    if (v14)
    {
      v9 = *(v14 + 1);
      v6 = *(v14 + 2);
      v10 = (this + (v6 >> 1));
      if (v6)
      {
        return (*(*v10 + v9))(v10, v16 + 1);
      }

      else
      {
        return v9(v10, v16 + 1);
      }
    }
  }

  return v15;
}

ot::Cli::Utils *ot::Cli::Utils::OutputCommandTable<ot::Cli::UdpExample,(unsigned short)6>(ot::Cli::Utils *result, const char **a2)
{
  v2 = result;
  v4 = a2;
  v3 = a2 + 18;
  while (v4 != v3)
  {
    result = ot::Cli::Utils::CommandEntry<ot::Cli::UdpExample>::Compare(v4, "reset");
    if (result)
    {
      result = ot::Cli::Utils::OutputLine(v2, "%s", *v4);
    }

    v4 += 3;
  }

  return result;
}

{
  return ot::Cli::Utils::OutputCommandTable<ot::Cli::UdpExample,(unsigned short)6>(result, a2);
}

char *ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::UdpExample>,(unsigned short)6>(ot::BinarySearch *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  return ot::BinarySearch::Find(a1, a2, 6, 0x18u, ot::BinarySearch::Compare<char *,ot::Cli::Utils::CommandEntry<ot::Cli::UdpExample>>, a6);
}

{
  return ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::UdpExample>,(unsigned short)6>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::Cli::Utils::CommandEntry<ot::Cli::UdpExample>::Compare(const char **a1, const char *a2)
{
  return strcmp(a2, *a1);
}

{
  return ot::Cli::Utils::CommandEntry<ot::Cli::UdpExample>::Compare(a1, a2);
}

uint64_t otAppGetHeaderStringAndCountDuplicates(uint64_t a1, uint64_t a2, char *a3, char a4, char a5)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = a5;
  IsAppPacket = 0;
  ot::AsCoreType<otInstance>(a1);
  v14 = ot::Instance::Get<ot::AppMetricsManager>(v5);
  ot::AsCoreType<otMessage>(v21);
  IsAppPacket = ot::AppMetricsManager::IsAppPacket(v14, v6, v16, 1);
  HopsLft = 0;
  if (IsAppPacket)
  {
    ot::AsCoreType<otInstance>(v22);
    v8 = ot::Instance::Get<ot::AppMetricsManager>(v7);
    ot::AppMetricsManager::GetAppHeaderString(v8, v16, v20);
    if (v18)
    {
      ot::AsCoreType<otMessage>(v21);
      HopsLft = ot::Message::GetHopsLft(v9);
    }

    if (v19)
    {
      ot::AsCoreType<otInstance>(v22);
      v13 = ot::Instance::Get<ot::AppMetricsManager>(v10);
      ot::AsCoreType<otMessage>(v21);
      ot::AppMetricsManager::CountAppDuplicates(v13, v11, v16, v18 & 1, HopsLft);
    }
  }

  return IsAppPacket & 1;
}

uint64_t ot::Instance::Get<ot::AppMetricsManager>(uint64_t a1)
{
  return a1 + 167216;
}

{
  return ot::Instance::Get<ot::AppMetricsManager>(a1);
}

void ot::AsCoreType<otMessage>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otMessage>(a1);
}

{
  ot::AsCoreType<otMessage>(a1);
}

uint64_t ot::Message::GetHopsLft(ot::Message *this)
{
  return *(ot::Buffer::GetMetadata(this) + 44);
}

{
  return ot::Message::GetHopsLft(this);
}

uint64_t otGetApplicationPacketType(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::AppMetricsManager>(v3);
  ot::AsCoreType<otMessage>(a2);
  return ot::AppMetricsManager::GetApplicationPacketType(v6, v4, a3);
}

void otAppGetCounters(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::AppMetricsManager>(v1);
  ot::AppMetricsManager::GetCounters(v2);
}

void ot::AppMetricsManager::GetCounters(ot::AppMetricsManager *this)
{
  ;
}

{
  ot::AppMetricsManager::GetCounters(this);
}

uint64_t otAppGetAvgRouteCostHistogram(uint64_t a1, unsigned __int8 *a2, unsigned __int8 a3, unsigned __int8 a4)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::AppMetricsManager>(v4);
  return ot::AppMetricsManager::GetAvgRouteCostHistogram(v5, a2, a3, a4);
}

uint64_t otAppGetMaxRouteCostHistogram(uint64_t a1, unsigned __int8 *a2, unsigned __int8 a3, unsigned __int8 a4)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::AppMetricsManager>(v4);
  return ot::AppMetricsManager::GetMaxRouteCostHistogram(v5, a2, a3, a4);
}

uint64_t otAppGetAvgHopCountHistogram(uint64_t a1, unsigned __int8 *a2, unsigned __int8 a3, unsigned __int8 a4)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::AppMetricsManager>(v4);
  return ot::AppMetricsManager::GetAvgHopCountHistogram(v5, a2, a3, a4);
}

uint64_t otAppGetMaxHopCountHistogram(uint64_t a1, unsigned __int8 *a2, unsigned __int8 a3, unsigned __int8 a4)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::AppMetricsManager>(v4);
  return ot::AppMetricsManager::GetMaxHopCountHistogram(v5, a2, a3, a4);
}

char *otAppGetAppTxCountHistogram(uint64_t a1, _BYTE *a2, unsigned __int8 a3, unsigned __int8 a4)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::AppMetricsManager>(v4);
  return ot::AppMetricsManager::GetRetryCountHistogram(v5, a2, a3, a4);
}

char *otAppGetAppRxDupCountHistogram(uint64_t a1, _BYTE *a2, unsigned __int8 a3, unsigned __int8 a4)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::AppMetricsManager>(v4);
  return ot::AppMetricsManager::GetDuplicateCountHistogram(v5, a2, a3, a4);
}

void otAppResetAppAndRoutingMetricsHistograms(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::AppMetricsManager>(v1);
  ot::AppMetricsManager::ResetAppAndRoutingMetricsHistograms(v2);
}

BOOL otAppUpdateAppAndRoutingMetricsHistograms(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::AppMetricsManager>(v1);
  return ot::AppMetricsManager::UpdateAppAndRoutingMetricsHistograms(v2);
}

BOOL otAppResetMatterSubscriptionCounts(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::AppMetricsManager>(v1);
  return ot::AppMetricsManager::ResetMatterSubscriptionCounts(v2);
}

BOOL otAppUpdateMatterSubscriptionCountHistogram(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::AppMetricsManager>(v1);
  return ot::AppMetricsManager::UpdateMatterSubscriptionCountHistogram(v2);
}

_WORD *otThreadResetAppCounters(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::AppMetricsManager>(v1);
  return ot::AppMetricsManager::ResetCounters(v2);
}

BOOL otAppIsPrimaryResident(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::AppMetricsManager>(v1);
  return ot::AppMetricsManager::GetIsPrimaryResident(v2);
}

uint64_t otAppGetThreadReachabilityStatusBitmaps(uint64_t a1, const unint64_t *a2, const BOOL *a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  ot::AsCoreType<otInstance>(a1);
  v7 = ot::Instance::Get<ot::AppMetricsManager>(v6);
  return ot::AppMetricsManager::GetThreadReachabilityStatusBitmaps(v7, a2, a3, a4, a5, a6);
}

uint64_t ot::Buffer::GetMetadata(ot::Buffer *this)
{
  return this + 8;
}

{
  return this + 8;
}

{
  return ot::Buffer::GetMetadata(this);
}

{
  return ot::Buffer::GetMetadata(this);
}

ot::WakeupTxScheduler *ot::WakeupTxScheduler::WakeupTxScheduler(ot::WakeupTxScheduler *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Time::Time((this + 8), 0);
  ot::Time::Time((this + 12), 0);
  ot::TimerMicroIn<ot::Mac::Mac,&ot::Mac::Mac::RequestWakeupFrameTransmission>::TimerMicroIn((this + 24), a2);
  result = this;
  *(this + 48) &= ~1u;
  *(this + 49) = 1;
  return result;
}

{
  ot::WakeupTxScheduler::WakeupTxScheduler(this, a2);
  return this;
}

ot::Time *ot::Time::Time(ot::Time *this, int a2)
{
  ot::Time::Time(this, a2);
  return this;
}

{
  ot::Time::SetValue(this, a2);
  return this;
}

uint64_t ot::anonymous namespace::CalcTxRequestAheadTimeUs(ot::_anonymous_namespace_ *this, ot::Instance *a2)
{
  v4 = 2000;
  BusSpeed = otPlatRadioGetBusSpeed();
  if (BusSpeed)
  {
    return ((BusSpeed + 799999999) / BusSpeed + 2000);
  }

  return v4;
}

ot::TimerMilli *ot::TimerMicroIn<ot::Mac::Mac,&ot::Mac::Mac::RequestWakeupFrameTransmission>::TimerMicroIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMicroIn<ot::Mac::Mac,&ot::Mac::Mac::RequestWakeupFrameTransmission>::TimerMicroIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMicroIn<ot::Mac::Mac,&ot::Mac::Mac::RequestWakeupFrameTransmission>::HandleTimer);
  return a1;
}

uint64_t ot::WakeupTxScheduler::WakeUpPatternToInterval(ot::WakeupTxScheduler *this, char a2)
{
  if (a2 == 1)
  {
    return 15000;
  }

  else if (a2 != 3 && a2 != 2)
  {
    if (a2 == 4)
    {
      return 15000;
    }

    else
    {
      return 7500;
    }
  }

  else
  {
    return 7500;
  }
}

uint64_t ot::WakeupTxScheduler::WakeUp(ot::WakeupTxScheduler *this, const ot::Mac::ExtAddress *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = this;
  v41 = a2;
  v40 = a3;
  v39 = a4;
  v38 = a5;
  v33 = this;
  v37 = 0;
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("WakeupTxSched", "Wake-up sequence ongoing: %d, %s", a3, a4, a5, a6, a7, a8, *(this + 48) & 1, "WakeUp");
  if (*(v33 + 48))
  {
    return 13;
  }

  else
  {
    *v33 = *v41;
    Now = ot::TimerMicro::GetNow(v8);
    v36 = Now;
    v9 = ot::Time::operator+(&v36, *(v33 + 8));
    v10 = v33;
    v34[2] = v9;
    *(v33 + 2) = v9;
    v11 = ot::WakeupTxScheduler::WakeUpPatternToInterval(v10, v39);
    v12 = v33;
    *(v33 + 9) = v11;
    v34[0] = ot::Time::operator+(v12 + 2, 1000 * v40);
    v13 = ot::Time::operator+(v34, *(v33 + 9));
    v14 = v33;
    v34[1] = v13;
    *(v33 + 3) = v13;
    v15 = *(v14 + 48) & 0xFE;
    v32 = 1;
    *(v14 + 48) = v15 | 1;
    v31 = v43;
    ot::Mac::ExtAddress::ToString(v41, v43);
    v16 = ot::String<(unsigned short)17>::AsCString(v43);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("WakeupTxSched", "Scheduled wake-up sequence to %s", v17, v18, v19, v20, v21, v22, v16);
    v23 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(v33);
    ot::Radio::SetWakeupConfiguration(v23, v40, v39, v38);
    IgnoreError();
    ot::WakeupTxScheduler::ScheduleNext(v33, v32 & 1, v24, v25, v26, v27, v28, v29);
  }

  return v37;
}

uint64_t ot::TimerMicro::GetNow(ot::TimerMicro *this)
{
  Now = otPlatAlarmMicroGetNow();
  ot::Time::Time(&v3, Now);
  return v3;
}

{
  return ot::TimerMicro::GetNow(this);
}

uint64_t ot::Time::operator+(_DWORD *a1, int a2)
{
  ot::Time::Time(&v3, *a1 + a2);
  return v3;
}

{
  return ot::Time::operator+(a1, a2);
}

uint64_t ot::String<(unsigned short)17>::AsCString(uint64_t a1)
{
  return a1 + 12;
}

{
  return ot::String<(unsigned short)17>::AsCString(a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Radio>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(a1);
}

uint64_t ot::Radio::SetWakeupConfiguration(ot::Radio *this, unsigned int a2, unsigned __int8 a3, unsigned __int8 a4)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioSetWakeupConfiguration(InstancePtr, a2, a3, a4);
}

{
  return ot::Radio::SetWakeupConfiguration(this, a2, a3, a4);
}

void ot::WakeupTxScheduler::ScheduleNext(ot::WakeupTxScheduler *this, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v9 = ot::Time::operator-(this + 2, *(this + 8));
    ot::TimerMicro::FireAt((this + 24), v9);
  }

  else
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("WakeupTxSched", "Started wake-up sequence", a3, a4, a5, a6, a7, a8);
    *(this + 48) &= ~1u;
  }
}

ot::Mac::TxFrame *ot::WakeupTxScheduler::PrepareWakeupFrame(ot::WakeupTxScheduler *this, ot::Mac::TxFrames *a2)
{
  v38 = this;
  v37 = a2;
  TxFrame = 0;
  ot::Mac::Address::Address(v35);
  ot::Mac::Address::Address(v34);
  v32 = 0;
  v31 = 0;
  if ((*(this + 48) & 1) == 1)
  {
    ot::Mac::Address::SetExtended(v35, this);
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    ExtAddress = ot::Mac::Mac::GetExtAddress(v2);
    ot::Mac::Address::SetExtended(v34, ExtAddress);
    Instance = ot::InstanceLocator::GetInstance(this);
    v29 = RadioNow;
    Now = ot::TimerMicro::GetNow(RadioNow);
    v7 = ot::Time::operator-(this + 2, &Now);
    v30 = ot::Time::operator+(&v29, v7);
    v33 = v30;
    TxFrame = ot::Mac::TxFrames::GetTxFrame(v37);
    v26 = TxFrame;
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    PanId = ot::Mac::Mac::GetPanId(v8);
    if (ot::Mac::TxFrame::GenerateWakeupFrame(v26, PanId, v35, v34))
    {
      return 0;
    }

    else
    {
      ot::Mac::TxFrame::SetTxDelayBaseTime(TxFrame, 0);
      v25 = TxFrame;
      Value = ot::Time::GetValue(&v33);
      ot::Mac::TxFrame::SetTxDelay(v25, Value);
      ot::Mac::TxFrame::SetCsmaCaEnabled(TxFrame, 0);
      ot::Mac::TxFrame::SetMaxCsmaBackoffs(TxFrame, 0);
      ot::Mac::TxFrame::SetMaxFrameRetries(TxFrame, 0);
      v32 = (*(this + 9) - 4224) / 2;
      v32 += *(this + 9);
      ot::Mac::Frame::GetRendezvousTimeIe(TxFrame);
      ot::Mac::RendezvousTimeIe::SetRendezvousTime(v11, v32 / 0xA0, v12);
      ot::Mac::Frame::GetConnectionIe(TxFrame);
      v31 = v13;
      v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      v15 = ot::Mle::Mle::WedWakeUpPattern(v14);
      v16 = 2;
      if (v15 == 2)
      {
        v16 = 1;
      }

      *(this + 49) = v16;
      ot::Mac::ConnectionIe::SetRetryInterval(v31, *(this + 49));
      ot::Mac::ConnectionIe::SetRetryCount(v31, 12);
      ot::WakeupTxScheduler::ScheduleNext(this, 0, v17, v18, v19, v20, v21, v22);
      v23 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      ot::Mle::Mle::HandleCslWakeupTxInitiatedStartAttachTimer(v23);
    }
  }

  return TxFrame;
}

uint64_t ot::Mac::Address::SetExtended(uint64_t result, void *a2)
{
  *result = *a2;
  *(result + 8) = 2;
  return result;
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Mac::Mac>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
}

uint64_t ot::Mac::Mac::GetExtAddress(ot::Mac::Mac *this)
{
  return ot::Mac::Links::GetExtAddress((this + 56));
}

{
  return ot::Mac::Mac::GetExtAddress(this);
}

uint64_t ot::anonymous namespace::GetRadioNow(ot::_anonymous_namespace_ *this, ot::Instance *a2)
{
  Now = otPlatRadioGetNow();
  ot::Time::Time(&v4, Now);
  return v4;
}

void *ot::InstanceLocator::GetInstance(ot::InstanceLocator *this)
{
  return &ot::gInstanceRaw;
}

{
  return ot::InstanceLocator::GetInstance(this);
}

uint64_t ot::Time::operator-(_DWORD *a1, _DWORD *a2)
{
  return (*a1 - *a2);
}

{
  return ot::Time::operator-(a1, a2);
}

uint64_t ot::Mac::TxFrames::GetTxFrame(ot::Mac::TxFrames *this)
{
  return *this;
}

{
  return ot::Mac::TxFrames::GetTxFrame(this);
}

uint64_t ot::Mac::Mac::GetPanId(ot::Mac::Mac *this)
{
  return *(this + 4);
}

{
  return ot::Mac::Mac::GetPanId(this);
}

uint64_t ot::Mac::TxFrame::SetTxDelayBaseTime(uint64_t this, int a2)
{
  *(this + 32) = a2;
  return this;
}

{
  return ot::Mac::TxFrame::SetTxDelayBaseTime(this, a2);
}

uint64_t ot::Mac::TxFrame::SetTxDelay(uint64_t this, int a2)
{
  *(this + 36) = a2;
  return this;
}

{
  return ot::Mac::TxFrame::SetTxDelay(this, a2);
}

uint64_t ot::Time::GetValue(ot::Time *this)
{
  return *this;
}

{
  return ot::Time::GetValue(this);
}

uint64_t ot::Mac::TxFrame::SetCsmaCaEnabled(uint64_t this, char a2)
{
  *(this + 45) = *(this + 45) & 0xFB | (4 * (a2 & 1));
  return this;
}

{
  return ot::Mac::TxFrame::SetCsmaCaEnabled(this, a2);
}

uint64_t ot::Mac::TxFrame::SetMaxCsmaBackoffs(uint64_t this, char a2)
{
  *(this + 40) = a2;
  return this;
}

{
  return ot::Mac::TxFrame::SetMaxCsmaBackoffs(this, a2);
}

uint64_t ot::Mac::TxFrame::SetMaxFrameRetries(uint64_t this, char a2)
{
  *(this + 41) = a2;
  return this;
}

{
  return ot::Mac::TxFrame::SetMaxFrameRetries(this, a2);
}

void ot::Mac::Frame::GetRendezvousTimeIe(ot::Mac::Frame *this)
{
  ot::AsConst<ot::Mac::Frame>();
  ot::Mac::Frame::GetRendezvousTimeIe(v1);
  ot::AsNonConst<ot::Mac::RendezvousTimeIe>();
}

{
  ot::Mac::Frame::GetRendezvousTimeIe(this);
}

uint64_t ot::Mac::RendezvousTimeIe::SetRendezvousTime(ot::Mac::RendezvousTimeIe *this, unsigned __int16 a2, unsigned __int8 *a3)
{
  return ot::LittleEndian::WriteUint16(a2, this, a3);
}

{
  return ot::Mac::RendezvousTimeIe::SetRendezvousTime(this, a2, a3);
}

void ot::Mac::Frame::GetConnectionIe(ot::Mac::Frame *this)
{
  ot::AsConst<ot::Mac::Frame>();
  ot::Mac::Frame::GetConnectionIe(v1);
  ot::AsNonConst<ot::Mac::ConnectionIe>();
}

{
  ot::Mac::Frame::GetConnectionIe(this);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Mle::Mle>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
}

uint64_t ot::Mac::ConnectionIe::SetRetryInterval(uint64_t this, char a2)
{
  *(this + 4) = *(this + 4) & 0xCF | (16 * a2);
  return this;
}

{
  return ot::Mac::ConnectionIe::SetRetryInterval(this, a2);
}

uint64_t ot::Mac::ConnectionIe::SetRetryCount(uint64_t this, char a2)
{
  *(this + 4) = a2 | *(this + 4) & 0xF0;
  return this;
}

{
  return ot::Mac::ConnectionIe::SetRetryCount(this, a2);
}

uint64_t ot::Time::operator-(_DWORD *a1, int a2)
{
  ot::Time::Time(&v3, *a1 - a2);
  return v3;
}

{
  return ot::Time::operator-(a1, a2);
}

_DWORD *ot::Time::SetValue(_DWORD *this, int a2)
{
  *this = a2;
  return this;
}

{
  return ot::Time::SetValue(this, a2);
}

void *ot::Radio::GetInstancePtr(ot::Radio *this)
{
  return ot::InstanceLocator::GetInstance(this);
}

{
  return ot::Radio::GetInstancePtr(this);
}

uint64_t ot::Mac::Links::GetExtAddress(ot::Mac::Links *this)
{
  return ot::Mac::SubMac::GetExtAddress((this + 8));
}

{
  return ot::Mac::Links::GetExtAddress(this);
}

uint64_t ot::Mac::SubMac::GetExtAddress(ot::Mac::SubMac *this)
{
  return this + 12;
}

{
  return ot::Mac::SubMac::GetExtAddress(this);
}

void ot::AsNonConst<ot::Mac::RendezvousTimeIe>()
{
  ;
}

{
  ot::AsNonConst<ot::Mac::RendezvousTimeIe>();
}

void ot::AsConst<ot::Mac::Frame>()
{
  ;
}

{
  ot::AsConst<ot::Mac::Frame>();
}

uint64_t ot::Mac::Frame::GetRendezvousTimeIe(ot::Mac::Frame *this)
{
  return ot::Mac::Frame::GetHeaderIe(this, 0x1Du) + 2;
}

{
  return ot::Mac::Frame::GetRendezvousTimeIe(this);
}

uint64_t ot::LittleEndian::WriteUint16(uint64_t this, _WORD *a2, unsigned __int8 *a3)
{
  *a2 = this;
  return this;
}

{
  return ot::LittleEndian::WriteUint16(this, a2, a3);
}

void ot::AsNonConst<ot::Mac::ConnectionIe>()
{
  ;
}

{
  ot::AsNonConst<ot::Mac::ConnectionIe>();
}

uint64_t ot::Mac::Frame::GetConnectionIe(ot::Mac::Frame *this)
{
  return ot::Mac::Frame::GetThreadIe(this, 1u) + 2;
}

{
  return ot::Mac::Frame::GetConnectionIe(this);
}

uint64_t ot::Instance::Get<ot::Radio>(uint64_t a1)
{
  return a1 + 34;
}

{
  return ot::Instance::Get<ot::Radio>(a1);
}

uint64_t ot::Instance::Get<ot::Mac::Mac>(uint64_t a1)
{
  return a1 + 88200;
}

{
  return ot::Instance::Get<ot::Mac::Mac>(a1);
}

const char *ot::Utils::LookupTable::Find(ot::Utils::LookupTable *this, const char *a2, const void *a3, unsigned __int16 a4, uint64_t (*a5)(const char *), const char *(*a6)(const void *))
{
  v11 = 0;
  v10 = a3;
  while (v11 < v10)
  {
    v9 = (v11 + v10) / 2;
    v12 = &a2[a4 * v9];
    v6 = a5(v12);
    v8 = strcmp(this, v6);
    if (!v8)
    {
      return v12;
    }

    if (v8 <= 0)
    {
      v10 = (v11 + v10) / 2;
    }

    else
    {
      v11 = v9 + 1;
    }
  }

  return 0;
}

uint64_t otBackboneRouterGetPrimary(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    __assert_rtn("otBackboneRouterGetPrimary", "backbone_router_api.cpp", 47, "(aConfig) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::BackboneRouter::Leader>(v2);
  return ot::BackboneRouter::Leader::GetConfig(v3, a2);
}

uint64_t ot::Instance::Get<ot::BackboneRouter::Leader>(uint64_t a1)
{
  return a1 + 146560;
}

{
  return ot::Instance::Get<ot::BackboneRouter::Leader>(a1);
}

void otBackboneRouterSetEnabled(uint64_t a1, char a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::BackboneRouter::Local>(v2);
  ot::BackboneRouter::Local::SetEnabled(v3, a2 & 1);
}

uint64_t ot::Instance::Get<ot::BackboneRouter::Local>(uint64_t a1)
{
  return a1 + 87184;
}

{
  return ot::Instance::Get<ot::BackboneRouter::Local>(a1);
}

uint64_t otBackboneRouterGetState(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::BackboneRouter::Local>(v1);
  State = ot::BackboneRouter::Local::GetState(v2);
  return ot::MapEnum<ot::BackboneRouter::Local::State>(State);
}

uint64_t ot::MapEnum<ot::BackboneRouter::Local::State>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<ot::BackboneRouter::Local::State>(result);
}

uint64_t ot::BackboneRouter::Local::GetState(ot::BackboneRouter::Local *this)
{
  return *(this + 1);
}

{
  return ot::BackboneRouter::Local::GetState(this);
}

uint64_t otBackboneRouterGetConfig(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    __assert_rtn("otBackboneRouterGetConfig", "backbone_router_ftd_api.cpp", 58, "(aConfig) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::BackboneRouter::Local>(v2);
  return ot::BackboneRouter::Local::GetConfig(v3, a2);
}

uint64_t otBackboneRouterSetConfig(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    __assert_rtn("otBackboneRouterSetConfig", "backbone_router_ftd_api.cpp", 65, "(aConfig) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::BackboneRouter::Local>(v2);
  return ot::BackboneRouter::Local::SetConfig(v3, a2);
}

uint64_t otBackboneRouterRegister(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::BackboneRouter::Local>(v1);
  return ot::BackboneRouter::Local::AddService(v2, 1);
}

uint64_t otBackboneRouterGetRegistrationJitter(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::BackboneRouter::Local>(v1);
  return ot::BackboneRouter::Local::GetRegistrationJitter(v2);
}

uint64_t ot::BackboneRouter::Local::GetRegistrationJitter(ot::BackboneRouter::Local *this)
{
  return *(this + 3);
}

{
  return ot::BackboneRouter::Local::GetRegistrationJitter(this);
}

uint64_t otBackboneRouterSetRegistrationJitter(uint64_t a1, char a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::BackboneRouter::Local>(v2);
  return ot::BackboneRouter::Local::SetRegistrationJitter(v3, a2);
}

uint64_t ot::BackboneRouter::Local::SetRegistrationJitter(uint64_t this, char a2)
{
  *(this + 3) = a2;
  return this;
}

{
  return ot::BackboneRouter::Local::SetRegistrationJitter(this, a2);
}

uint64_t otBackboneRouterGetDomainPrefix(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::BackboneRouter::Local>(v2);
  ot::AsCoreType<otBorderRouterConfig>(a2);
  return ot::BackboneRouter::Local::GetDomainPrefix(v5, v3);
}

void ot::AsCoreType<otBorderRouterConfig>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otBorderRouterConfig>(a1);
}

{
  ot::AsCoreType<otBorderRouterConfig>(a1);
}

void *otBackboneRouterSetDomainPrefixCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::BackboneRouter::Local>(v3);
  return ot::BackboneRouter::Local::SetDomainPrefixCallback(v4, a2, a3);
}

void *ot::BackboneRouter::Local::SetDomainPrefixCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return ot::CallbackBase<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*)>::Set((a1 + 104), a2, a3);
}

{
  return ot::BackboneRouter::Local::SetDomainPrefixCallback(a1, a2, a3);
}

void *otBackboneRouterSetNdProxyCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::BackboneRouter::NdProxyTable>(v3);
  return ot::BackboneRouter::NdProxyTable::SetCallback(v4, a2, a3);
}

uint64_t ot::Instance::Get<ot::BackboneRouter::NdProxyTable>(uint64_t a1)
{
  return ot::BackboneRouter::Manager::GetNdProxyTable((a1 + 146592));
}

{
  return ot::Instance::Get<ot::BackboneRouter::NdProxyTable>(a1);
}

void *ot::BackboneRouter::NdProxyTable::SetCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return ot::CallbackBase<void (*)(void *,otBackboneRouterNdProxyEvent,otIp6Address const*)>::Set((a1 + 6000), a2, a3);
}

{
  return ot::BackboneRouter::NdProxyTable::SetCallback(a1, a2, a3);
}

uint64_t otBackboneRouterGetNdProxyInfo(uint64_t a1, ot::Ip6::Address *a2, uint64_t a3)
{
  if (!a3)
  {
    __assert_rtn("otBackboneRouterGetNdProxyInfo", "backbone_router_ftd_api.cpp", 109, "(aNdProxyInfo) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::BackboneRouter::NdProxyTable>(v3);
  return ot::BackboneRouter::NdProxyTable::GetInfo(v4, a2, a3);
}

uint64_t otBackboneRouterSetMulticastListenerCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::BackboneRouter::MulticastListenersTable>(v3);
  return ot::BackboneRouter::MulticastListenersTable::SetCallback(v4, a2, a3);
}

uint64_t ot::Instance::Get<ot::BackboneRouter::MulticastListenersTable>(uint64_t a1)
{
  return ot::BackboneRouter::Manager::GetMulticastListenersTable((a1 + 146592));
}

{
  return ot::Instance::Get<ot::BackboneRouter::MulticastListenersTable>(a1);
}

uint64_t otBackboneRouterMulticastListenerGetNext(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  if (!a2)
  {
    __assert_rtn("otBackboneRouterMulticastListenerGetNext", "backbone_router_ftd_api.cpp", 128, "(aIterator) != nullptr");
  }

  if (!a3)
  {
    __assert_rtn("otBackboneRouterMulticastListenerGetNext", "backbone_router_ftd_api.cpp", 129, "(aListenerInfo) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::BackboneRouter::MulticastListenersTable>(v3);
  return ot::BackboneRouter::MulticastListenersTable::GetNext(v4, a2, a3);
}

void *ot::CallbackBase<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*)>::Set(result, a2, a3);
}

void *ot::CallbackBase<void (*)(void *,otBackboneRouterNdProxyEvent,otIp6Address const*)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(void *,otBackboneRouterNdProxyEvent,otIp6Address const*)>::Set(result, a2, a3);
}

uint64_t ot::BackboneRouter::Manager::GetMulticastListenersTable(ot::BackboneRouter::Manager *this)
{
  return this + 6032;
}

{
  return ot::BackboneRouter::Manager::GetMulticastListenersTable(this);
}

uint64_t otBorderAgentGetId(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::MeshCoP::BorderAgent>(v2);
  ot::AsCoreType<otBorderAgentId>(a2);
  return ot::MeshCoP::BorderAgent::GetId(v5, v3);
}

uint64_t ot::Instance::Get<ot::MeshCoP::BorderAgent>(uint64_t a1)
{
  return a1 + 144304;
}

{
  return ot::Instance::Get<ot::MeshCoP::BorderAgent>(a1);
}

void ot::AsCoreType<otBorderAgentId>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otBorderAgentId>(a1);
}

{
  ot::AsCoreType<otBorderAgentId>(a1);
}

uint64_t otBorderAgentSetId(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::MeshCoP::BorderAgent>(v2);
  ot::AsCoreType<otBorderAgentId>(a2);
  return ot::MeshCoP::BorderAgent::SetId(v5, v3);
}

uint64_t otBorderAgentGetState(uint64_t a1)
{
  v5 = 0;
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshCoP::BorderAgent>(v1);
  State = ot::MeshCoP::BorderAgent::GetState(v2);
  if (State)
  {
    if (State == 1)
    {
      return 1;
    }

    else if (State == 3 || State == 2)
    {
      return 2;
    }
  }

  return v5;
}

uint64_t ot::MeshCoP::BorderAgent::GetState(ot::MeshCoP::BorderAgent *this)
{
  return *this;
}

{
  return ot::MeshCoP::BorderAgent::GetState(this);
}

uint64_t otBorderAgentGetUdpPort(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshCoP::BorderAgent>(v1);
  return ot::MeshCoP::BorderAgent::GetUdpPort(v2);
}

uint64_t otBorderRouterGetNetData(uint64_t a1, char a2, unsigned __int8 *a3, char *a4)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::NetworkData::Local>(v4);
  return ot::NetworkData::NetworkData::CopyNetworkData(v5, (a2 & 1) != 0, a3, a4);
}

uint64_t ot::Instance::Get<ot::NetworkData::Local>(uint64_t a1)
{
  return a1 + 143544;
}

{
  return ot::Instance::Get<ot::NetworkData::Local>(a1);
}

uint64_t otBorderRouterAddOnMeshPrefix(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 17) & 0x400) != 0)
  {
    ot::AsCoreType<otInstance>(a1);
    v8 = ot::Instance::Get<ot::BackboneRouter::Local>(v2);
    ot::AsCoreType<otBorderRouterConfig>(a2);
    return ot::BackboneRouter::Local::SetDomainPrefix(v8, v3);
  }

  else
  {
    ot::AsCoreType<otInstance>(a1);
    v7 = ot::Instance::Get<ot::NetworkData::Local>(v4);
    ot::AsCoreType<otBorderRouterConfig>(a2);
    return ot::NetworkData::Local::AddOnMeshPrefix(v7, v5);
  }
}

uint64_t otBorderRouterRemoveOnMeshPrefix(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v8 = ot::Instance::Get<ot::BackboneRouter::Local>(v2);
  ot::AsCoreType<otIp6Prefix>(a2);
  v9 = ot::BackboneRouter::Local::RemoveDomainPrefix(v8, v3);
  if (v9 == 23)
  {
    ot::AsCoreType<otInstance>(a1);
    v7 = ot::Instance::Get<ot::NetworkData::Local>(v4);
    ot::AsCoreType<otIp6Prefix>(a2);
    return ot::NetworkData::Local::RemoveOnMeshPrefix(v7, v5);
  }

  return v9;
}

void ot::AsCoreType<otIp6Prefix>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otIp6Prefix>(a1);
}

{
  ot::AsCoreType<otIp6Prefix>(a1);
}

uint64_t ot::NetworkData::Local::RemoveOnMeshPrefix(ot::NetworkData::Local *this, const ot::Ip6::Prefix *a2)
{
  return ot::NetworkData::Local::RemovePrefix(this, a2);
}

{
  return ot::NetworkData::Local::RemoveOnMeshPrefix(this, a2);
}

uint64_t otBorderRouterGetNextOnMeshPrefix(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (!a2)
  {
    __assert_rtn("otBorderRouterGetNextOnMeshPrefix", "border_router_api.cpp", 90, "(aIterator) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::NetworkData::Local>(v3);
  ot::AsCoreType<otBorderRouterConfig>(a3);
  return ot::NetworkData::NetworkData::GetNextOnMeshPrefix(v6, a2, v4);
}

uint64_t otBorderRouterAddRoute(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::NetworkData::Local>(v2);
  ot::AsCoreType<otExternalRouteConfig>(a2);
  return ot::NetworkData::Local::AddHasRoutePrefix(v5, v3);
}

void ot::AsCoreType<otExternalRouteConfig>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otExternalRouteConfig>(a1);
}

{
  ot::AsCoreType<otExternalRouteConfig>(a1);
}

uint64_t otBorderRouterRemoveRoute(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::NetworkData::Local>(v2);
  ot::AsCoreType<otIp6Prefix>(a2);
  return ot::NetworkData::Local::RemoveHasRoutePrefix(v5, v3);
}

uint64_t ot::NetworkData::Local::RemoveHasRoutePrefix(ot::NetworkData::Local *this, const ot::Ip6::Prefix *a2)
{
  return ot::NetworkData::Local::RemovePrefix(this, a2);
}

{
  return ot::NetworkData::Local::RemoveHasRoutePrefix(this, a2);
}

uint64_t otBorderRouterGetNextRoute(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (!a2)
  {
    __assert_rtn("otBorderRouterGetNextRoute", "border_router_api.cpp", 109, "(aIterator) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::NetworkData::Local>(v3);
  ot::AsCoreType<otExternalRouteConfig>(a3);
  return ot::NetworkData::NetworkData::GetNextExternalRoute(v6, a2, v4);
}

uint64_t otBorderRouterRegister(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::NetworkData::Notifier>(v1);
  ot::NetworkData::Notifier::HandleServerDataUpdated(v2);
  return 0;
}

uint64_t ot::Instance::Get<ot::NetworkData::Notifier>(uint64_t a1)
{
  return a1 + 144176;
}

{
  return ot::Instance::Get<ot::NetworkData::Notifier>(a1);
}

uint64_t otBorderRouterClearLocalNetworkData(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::NetworkData::Local>(v1);
  ot::NetworkData::Local::ClearLocalNetworkData(v2);
  return 0;
}

void *otBorderRouterSetNetDataFullCallback(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::NetworkData::Notifier>(v3);
  return ot::NetworkData::Notifier::SetNetDataFullCallback(v4, a2, a3);
}

void otChannelManagerRequestChannelChange(uint64_t a1, unsigned __int8 a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Utils::ChannelManager>(v2);
  ot::Utils::ChannelManager::RequestNetworkChannelChange(v3, a2);
}

uint64_t ot::Instance::Get<ot::Utils::ChannelManager>(uint64_t a1)
{
  return a1 + 156696;
}

{
  return ot::Instance::Get<ot::Utils::ChannelManager>(a1);
}

uint64_t otChannelManagerGetRequestedChannel(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Utils::ChannelManager>(v1);
  return ot::Utils::ChannelManager::GetRequestedChannel(v2);
}

uint64_t ot::Utils::ChannelManager::GetRequestedChannel(ot::Utils::ChannelManager *this)
{
  return *(this + 10);
}

{
  return ot::Utils::ChannelManager::GetRequestedChannel(this);
}

uint64_t otChannelManagerGetDelay(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Utils::ChannelManager>(v1);
  return ot::Utils::ChannelManager::GetDelay(v2);
}

uint64_t ot::Utils::ChannelManager::GetDelay(ot::Utils::ChannelManager *this)
{
  return *(this + 4);
}

{
  return ot::Utils::ChannelManager::GetDelay(this);
}

uint64_t otChannelManagerSetDelay(uint64_t a1, unsigned __int16 a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Utils::ChannelManager>(v2);
  return ot::Utils::ChannelManager::SetDelay(v3, a2);
}

void otChannelManagerSetAutoChannelSelectionEnabled(uint64_t a1, char a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Utils::ChannelManager>(v2);
  ot::Utils::ChannelManager::SetAutoNetworkChannelSelectionEnabled(v3);
}

uint64_t otChannelManagerGetAutoChannelSelectionEnabled(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Utils::ChannelManager>(v1);
  return ot::Utils::ChannelManager::GetAutoNetworkChannelSelectionEnabled(v2);
}

uint64_t ot::Utils::ChannelManager::GetAutoNetworkChannelSelectionEnabled(ot::Utils::ChannelManager *this)
{
  return *(this + 44) & 1;
}

{
  return ot::Utils::ChannelManager::GetAutoNetworkChannelSelectionEnabled(this);
}

uint64_t otChannelManagerSetAutoChannelSelectionInterval(uint64_t a1, unsigned int a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Utils::ChannelManager>(v2);
  return ot::Utils::ChannelManager::SetAutoChannelSelectionInterval(v3, a2);
}

uint64_t otChannelManagerGetAutoChannelSelectionInterval(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Utils::ChannelManager>(v1);
  return ot::Utils::ChannelManager::GetAutoChannelSelectionInterval(v2);
}

uint64_t ot::Utils::ChannelManager::GetAutoChannelSelectionInterval(ot::Utils::ChannelManager *this)
{
  return *(this + 10);
}

{
  return ot::Utils::ChannelManager::GetAutoChannelSelectionInterval(this);
}

uint64_t otChannelManagerGetSupportedChannels(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Utils::ChannelManager>(v1);
  return ot::Utils::ChannelManager::GetSupportedChannels(v2);
}

uint64_t ot::Utils::ChannelManager::GetSupportedChannels(ot::Utils::ChannelManager *this)
{
  return ot::Mac::ChannelMask::GetMask(this);
}

{
  return ot::Utils::ChannelManager::GetSupportedChannels(this);
}

void otChannelManagerSetSupportedChannels(uint64_t a1, int a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Utils::ChannelManager>(v2);
  ot::Utils::ChannelManager::SetSupportedChannels(v3, a2);
}

uint64_t otChannelManagerGetFavoredChannels(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Utils::ChannelManager>(v1);
  return ot::Utils::ChannelManager::GetFavoredChannels(v2);
}

uint64_t ot::Utils::ChannelManager::GetFavoredChannels(ot::Utils::ChannelManager *this)
{
  return ot::Mac::ChannelMask::GetMask((this + 4));
}

{
  return ot::Utils::ChannelManager::GetFavoredChannels(this);
}

void otChannelManagerSetFavoredChannels(uint64_t a1, int a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Utils::ChannelManager>(v2);
  ot::Utils::ChannelManager::SetFavoredChannels(v3, a2);
}

uint64_t otChannelManagerGetCcaFailureRateThreshold(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Utils::ChannelManager>(v1);
  return ot::Utils::ChannelManager::GetCcaFailureRateThreshold(v2);
}

uint64_t ot::Utils::ChannelManager::GetCcaFailureRateThreshold(ot::Utils::ChannelManager *this)
{
  return *(this + 23);
}

{
  return ot::Utils::ChannelManager::GetCcaFailureRateThreshold(this);
}

void otChannelManagerSetCcaFailureRateThreshold(uint64_t a1, __int16 a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Utils::ChannelManager>(v2);
  ot::Utils::ChannelManager::SetCcaFailureRateThreshold(v3, a2, v4, v5, v6, v7, v8, v9);
}

uint64_t ot::Mac::ChannelMask::GetMask(ot::Mac::ChannelMask *this)
{
  return *this;
}

{
  return ot::Mac::ChannelMask::GetMask(this);
}

uint64_t ot::DataUtils::MatchBytes(ot::DataUtils *this, const unsigned __int8 *a2, const unsigned __int8 *a3, uint64_t a4, BOOL (*a5)(unsigned __int8, unsigned __int8))
{
  v13 = this;
  v12 = a2;
  v11 = a3;
  *&v10[1] = a4;
  v10[0] = 1;
  if (a4)
  {
    while (v11--)
    {
      v6 = v13;
      v13 = (v13 + 1);
      v7 = *v6;
      v8 = v12++;
      if (((*&v10[1])(v7, *v8) & 1) == 0)
      {
        v10[0] = 0;
        return v10[0] & 1;
      }
    }
  }

  else
  {
    *v10 = memcmp(this, a2, a3) == 0;
  }

  return v10[0] & 1;
}

uint64_t otChildSupervisionGetInterval(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::SupervisionListener>(v1);
  return ot::SupervisionListener::GetInterval(v2);
}

uint64_t ot::Instance::Get<ot::SupervisionListener>(uint64_t a1)
{
  return a1 + 154552;
}

{
  return ot::Instance::Get<ot::SupervisionListener>(a1);
}

uint64_t ot::SupervisionListener::GetInterval(ot::SupervisionListener *this)
{
  return *(this + 1);
}

{
  return ot::SupervisionListener::GetInterval(this);
}

void otChildSupervisionSetInterval(uint64_t a1, unsigned __int16 a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::SupervisionListener>(v2);
  ot::SupervisionListener::SetInterval(v3, a2, v4, v5, v6, v7, v8, v9);
}

uint64_t otChildSupervisionGetCheckTimeout(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::SupervisionListener>(v1);
  return ot::SupervisionListener::GetTimeout(v2);
}

uint64_t ot::SupervisionListener::GetTimeout(ot::SupervisionListener *this)
{
  return *this;
}

{
  return ot::SupervisionListener::GetTimeout(this);
}

unsigned __int16 *otChildSupervisionSetCheckTimeout(uint64_t a1, unsigned __int16 a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::SupervisionListener>(v2);
  return ot::SupervisionListener::SetTimeout(v3, a2, v4, v5, v6, v7, v8, v9);
}

uint64_t otChildSupervisionGetCheckFailureCounter(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::SupervisionListener>(v1);
  return ot::SupervisionListener::GetCounter(v2);
}

uint64_t ot::SupervisionListener::GetCounter(ot::SupervisionListener *this)
{
  return *(this + 2);
}

{
  return ot::SupervisionListener::GetCounter(this);
}

uint64_t otChildSupervisionResetCheckFailureCounter(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::SupervisionListener>(v1);
  return ot::SupervisionListener::ResetCounter(v2);
}

uint64_t ot::SupervisionListener::ResetCounter(uint64_t this)
{
  *(this + 4) = 0;
  return this;
}

{
  return ot::SupervisionListener::ResetCounter(this);
}

ot::Message *otCoapNewMessage(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  ApplicationCoap = ot::Instance::GetApplicationCoap(v2);
  v3 = ot::Message::Settings::From(a2);
  return ot::Coap::CoapBase::NewMessage(ApplicationCoap, v3);
}

uint64_t ot::Instance::GetApplicationCoap(ot::Instance *this)
{
  return this + 156336;
}

{
  return ot::Instance::GetApplicationCoap(this);
}

void otCoapMessageInit(uint64_t a1, unsigned int a2, unsigned int a3)
{
  ot::AsCoapMessage();
  v6 = v3;
  v5 = ot::MapEnum<otCoapType>(a2);
  v4 = ot::MapEnum<otCoapCode>(a3);
  ot::Coap::Message::Init(v6, v5, v4);
}

void ot::AsCoapMessage()
{
  ;
}

{
  ;
}

{
  ot::AsCoapMessage();
}

{
  ot::AsCoapMessage();
}

uint64_t ot::MapEnum<otCoapType>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<otCoapType>(result);
}

uint64_t ot::MapEnum<otCoapCode>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<otCoapCode>(result);
}

uint64_t otCoapMessageInitResponse(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  ot::AsCoapMessage();
  v11 = v4;
  ot::AsCoapMessage();
  v10 = v5;
  v9 = ot::MapEnum<otCoapType>(a3);
  v6 = ot::MapEnum<otCoapCode>(a4);
  ot::Coap::Message::Init(v11, v9, v6);
  MessageId = ot::Coap::Message::GetMessageId(v10);
  ot::Coap::Message::SetMessageId(v11, MessageId);
  return ot::Coap::Message::SetTokenFromMessage(v11, v10);
}

uint64_t ot::Coap::Message::SetMessageId(ot::Coap::Message *this, unsigned __int16 a2)
{
  v6 = ot::BigEndian::HostSwap16(a2, a2);
  ot::Coap::Message::GetHelpData(this);
  v3 = v2;
  result = v6;
  *(v3 + 2) = v6;
  return result;
}

{
  return ot::Coap::Message::SetMessageId(this, a2);
}

uint64_t ot::Coap::Message::GetMessageId(ot::Coap::Message *this)
{
  HelpData = ot::Coap::Message::GetHelpData(this);
  return ot::BigEndian::HostSwap16(*(HelpData + 2), v2);
}

{
  return ot::Coap::Message::GetMessageId(this);
}

void otCoapMessageGenerateToken(uint64_t a1, unsigned __int8 a2)
{
  ot::AsCoapMessage();
  ot::Coap::Message::GenerateRandomToken(v2, a2, v3);
  IgnoreError();
}

uint64_t ot::Coap::Message::AppendContentFormatOption(ot::Coap::Message *a1, unsigned int a2)
{
  return ot::Coap::Message::AppendUintOption(a1, 0xCu, a2);
}

{
  return ot::Coap::Message::AppendContentFormatOption(a1, a2);
}

uint64_t ot::Coap::Message::AppendObserveOption(ot::Coap::Message *this, int a2)
{
  return ot::Coap::Message::AppendUintOption(this, 6u, (a2 & 0xFFFFFF));
}

{
  return ot::Coap::Message::AppendObserveOption(this, a2);
}

uint64_t ot::Coap::Message::AppendProxyUriOption(ot::Coap::Message *this, const char *a2)
{
  return ot::Coap::Message::AppendStringOption(this, 0x23u, a2);
}

{
  return ot::Coap::Message::AppendProxyUriOption(this, a2);
}

uint64_t ot::Coap::Message::AppendMaxAgeOption(ot::Coap::Message *this, unsigned int a2)
{
  return ot::Coap::Message::AppendUintOption(this, 0xEu, a2);
}

{
  return ot::Coap::Message::AppendMaxAgeOption(this, a2);
}

uint64_t ot::Coap::Message::AppendUriQueryOption(ot::Coap::Message *this, const char *a2)
{
  return ot::Coap::Message::AppendStringOption(this, 0xFu, a2);
}

{
  return ot::Coap::Message::AppendUriQueryOption(this, a2);
}

uint64_t ot::Coap::Message::GetType(ot::Coap::Message *this)
{
  return (*ot::Coap::Message::GetHelpData(this) & 0x30) >> 4;
}

{
  return ot::Coap::Message::GetType(this);
}

uint64_t ot::Coap::Message::GetCode(ot::Coap::Message *this)
{
  return *(ot::Coap::Message::GetHelpData(this) + 1);
}

{
  return ot::Coap::Message::GetCode(this);
}

void otCoapMessageSetCode(uint64_t a1, unsigned int a2)
{
  ot::AsCoapMessage();
  v4 = v2;
  v3 = ot::MapEnum<otCoapCode>(a2);
  ot::Coap::Message::SetCode(v4, v3);
}

void ot::Coap::Message::SetCode(ot::Coap::Message *a1, char a2)
{
  ot::Coap::Message::GetHelpData(a1);
  *(v2 + 1) = a2;
}

{
  ot::Coap::Message::SetCode(a1, a2);
}

uint64_t ot::Coap::Message::GetTokenLength(ot::Coap::Message *this)
{
  return *ot::Coap::Message::GetHelpData(this) & 0xF;
}

{
  return ot::Coap::Message::GetTokenLength(this);
}

unint64_t ot::Coap::Message::GetToken(ot::Coap::Message *this)
{
  return ot::Coap::Message::GetHelpData(this) + 4;
}

{
  return ot::Coap::Message::GetToken(this);
}

uint64_t otCoapOptionIteratorInit(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otCoapOptionIterator>(a1);
  v5 = v2;
  ot::AsCoapMessage();
  return ot::Coap::Option::Iterator::Init(v5, v3);
}

void ot::AsCoreType<otCoapOptionIterator>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otCoapOptionIterator>(a1);
}

uint64_t otCoapOptionIteratorGetFirstOptionMatching(uint64_t a1, unsigned __int16 a2)
{
  ot::AsCoreType<otCoapOptionIterator>(a1);
  v6 = v2;
  v5 = v2;
  Message = ot::Coap::Option::Iterator::GetMessage(v2);
  ot::Coap::Option::Iterator::Init(v5, Message, a2);
  IgnoreError();
  return ot::Coap::Option::Iterator::GetOption(v6);
}

uint64_t ot::Coap::Option::Iterator::Init(ot::Coap::Option::Iterator *this, const ot::Coap::Message *a2, unsigned __int16 a3)
{
  return ot::Coap::Option::Iterator::InitOrAdvance(this, a2, a3);
}

{
  return ot::Coap::Option::Iterator::Init(this, a2, a3);
}

uint64_t ot::Coap::Option::Iterator::GetMessage(ot::Coap::Option::Iterator *this)
{
  return *this;
}

{
  return ot::Coap::Option::Iterator::GetMessage(this);
}

uint64_t ot::Coap::Option::Iterator::GetOption(ot::Coap::Option::Iterator *this)
{
  if (ot::Coap::Option::Iterator::IsDone(this))
  {
    return 0;
  }

  else
  {
    return this + 8;
  }
}

{
  return ot::Coap::Option::Iterator::GetOption(this);
}

uint64_t otCoapOptionIteratorGetFirstOption(uint64_t a1)
{
  ot::AsCoreType<otCoapOptionIterator>(a1);
  v5 = v1;
  v4 = v1;
  Message = ot::Coap::Option::Iterator::GetMessage(v1);
  ot::Coap::Option::Iterator::Init(v4, Message);
  IgnoreError();
  return ot::Coap::Option::Iterator::GetOption(v5);
}

uint64_t otCoapOptionIteratorGetNextOptionMatching(uint64_t a1, unsigned __int16 a2)
{
  ot::AsCoreType<otCoapOptionIterator>(a1);
  v4 = v2;
  ot::Coap::Option::Iterator::Advance(v2, a2);
  IgnoreError();
  return ot::Coap::Option::Iterator::GetOption(v4);
}

uint64_t ot::Coap::Option::Iterator::Advance(ot::Coap::Option::Iterator *this, unsigned __int16 a2)
{
  return ot::Coap::Option::Iterator::InitOrAdvance(this, 0, a2);
}

{
  return ot::Coap::Option::Iterator::Advance(this, a2);
}

uint64_t otCoapOptionIteratorGetNextOption(uint64_t a1)
{
  ot::AsCoreType<otCoapOptionIterator>(a1);
  v3 = v1;
  ot::Coap::Option::Iterator::Advance(v1);
  IgnoreError();
  return ot::Coap::Option::Iterator::GetOption(v3);
}

uint64_t otCoapSendRequestWithParameters(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = ot::Coap::TxParameters::From(a6);
  ot::AsCoreType<otMessage>(a2);
  if (ot::Message::IsOriginThreadNetif (v6))
  {
    return 7;
  }

  else if (!a6 || ot::Coap::TxParameters::IsValid(v15, v7, v8))
  {
    ot::AsCoreType<otInstance>(a1);
    ApplicationCoap = ot::Instance::GetApplicationCoap(v9);
    ot::AsCoapMessage();
    v13 = v10;
    ot::AsCoreType<otMessageInfo>(a3);
    return ot::Coap::CoapBase::SendMessage(ApplicationCoap, v13, v11, v15, a4, a5);
  }

  else
  {
    return 7;
  }
}

void *ot::Coap::TxParameters::From(uint64_t a1)
{
  if (a1)
  {
    return a1;
  }

  else
  {
    return ot::Coap::TxParameters::GetDefault(0);
  }
}

{
  return ot::Coap::TxParameters::From(a1);
}

BOOL ot::Message::IsOriginThreadNetif (ot::Message *this)
{
  return ot::Message::GetOrigin(this) == 0;
}

{
  return ot::Message::IsOriginThreadNetif (this);
}

void ot::AsCoreType<otMessageInfo>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otMessageInfo>(a1);
}

{
  ot::AsCoreType<otMessageInfo>(a1);
}

uint64_t otCoapStart(uint64_t a1, __int16 a2)
{
  ot::AsCoreType<otInstance>(a1);
  ApplicationCoap = ot::Instance::GetApplicationCoap(v2);
  return ot::Coap::Coap::Start(ApplicationCoap, a2, 0);
}

uint64_t otCoapStop(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  ApplicationCoap = ot::Instance::GetApplicationCoap(v1);
  return ot::Coap::Coap::Stop(ApplicationCoap);
}

void otCoapAddResource(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  ApplicationCoap = ot::Instance::GetApplicationCoap(v2);
  ot::AsCoreType<otCoapResource>(a2);
  ot::Coap::CoapBase::AddResource(ApplicationCoap, v3);
}

void ot::AsCoreType<otCoapResource>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otCoapResource>(a1);
}

uint64_t otCoapRemoveResource(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  ApplicationCoap = ot::Instance::GetApplicationCoap(v2);
  ot::AsCoreType<otCoapResource>(a2);
  return ot::Coap::CoapBase::RemoveResource(ApplicationCoap, v3);
}

void *otCoapSetDefaultHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ot::AsCoreType<otInstance>(a1);
  ApplicationCoap = ot::Instance::GetApplicationCoap(v3);
  return ot::Coap::CoapBase::SetDefaultHandler(ApplicationCoap, a2, a3);
}

void *ot::Coap::CoapBase::SetDefaultHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return ot::CallbackBase<void (*)(void *,otMessage *,otMessageInfo const*)>::Set((a1 + 112), a2, a3);
}

{
  return ot::Coap::CoapBase::SetDefaultHandler(a1, a2, a3);
}

uint64_t otCoapSendResponseWithParameters(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ot::AsCoreType<otMessage>(a2);
  if (ot::Message::IsOriginThreadNetif (v4))
  {
    return 7;
  }

  else
  {
    ot::AsCoreType<otInstance>(a1);
    ApplicationCoap = ot::Instance::GetApplicationCoap(v5);
    ot::AsCoapMessage();
    v10 = v6;
    ot::AsCoreType<otMessageInfo>(a3);
    v11 = v7;
    v8 = ot::Coap::TxParameters::From(a4);
    return ot::Coap::CoapBase::SendMessage(ApplicationCoap, v10, v11, v8, 0, 0);
  }
}

uint64_t ot::BigEndian::HostSwap16(ot::BigEndian *this, unsigned __int16 a2)
{
  return ot::Swap16(this);
}

{
  return ot::BigEndian::HostSwap16(this, a2);
}

void ot::Coap::Message::GetHelpData(ot::Coap::Message *this)
{
  ot::AsConst<ot::Coap::Message>();
  ot::Coap::Message::GetHelpData(v1);
  ot::AsNonConst<ot::Coap::Message::HelpData>();
}

{
  ot::Coap::Message::GetHelpData(this);
}

uint64_t ot::Swap16(ot *this)
{
  return ((this << 8) | ((this & 0xFF00) >> 8));
}

{
  return ot::Swap16(this);
}

void ot::AsNonConst<ot::Coap::Message::HelpData>()
{
  ;
}

{
  ot::AsNonConst<ot::Coap::Message::HelpData>();
}

void ot::AsConst<ot::Coap::Message>()
{
  ;
}

{
  ot::AsConst<ot::Coap::Message>();
}

unint64_t ot::Coap::Message::GetHelpData(ot::Coap::Message *this)
{
  return (ot::Buffer::GetFirstData(this) + 1) & 0xFFFFFFFFFFFFFFFELL;
}

{
  return ot::Coap::Message::GetHelpData(this);
}

uint64_t ot::Buffer::GetFirstData(ot::Buffer *this)
{
  return this + 88;
}

{
  return this + 88;
}

{
  return ot::Buffer::GetFirstData(this);
}

{
  return ot::Buffer::GetFirstData(this);
}

BOOL ot::Coap::Option::Iterator::IsDone(ot::Coap::Option::Iterator *this)
{
  return *(this + 5) == 0xFFFF;
}

{
  return ot::Coap::Option::Iterator::IsDone(this);
}

void *ot::Coap::TxParameters::GetDefault(ot::Coap::TxParameters *this)
{
  return &ot::Coap::TxParameters::kDefaultTxParameters;
}

{
  return ot::Coap::TxParameters::GetDefault(this);
}

uint64_t ot::Message::GetOrigin(ot::Message *this)
{
  return (*(ot::Buffer::GetMetadata(this) + 70) >> 18) & 3;
}

{
  return ot::Message::GetOrigin(this);
}

void *ot::CallbackBase<void (*)(void *,otMessage *,otMessageInfo const*)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(void *,otMessage *,otMessageInfo const*)>::Set(result, a2, a3);
}

uint64_t otCommissionerStart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v4);
  return ot::MeshCoP::Commissioner::Start(v5, a2, a3, a4);
}

uint64_t ot::Instance::Get<ot::MeshCoP::Commissioner>(uint64_t a1)
{
  return a1 + 144416;
}

{
  return ot::Instance::Get<ot::MeshCoP::Commissioner>(a1);
}

uint64_t otCommissionerGetId(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v1);
  return ot::MeshCoP::Commissioner::GetId(v2);
}

uint64_t ot::MeshCoP::Commissioner::GetId(ot::MeshCoP::Commissioner *this)
{
  return this + 489;
}

{
  return ot::MeshCoP::Commissioner::GetId(this);
}

uint64_t otCommissionerSetId(uint64_t a1, ot *a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v2);
  return ot::MeshCoP::Commissioner::SetId(v3, a2);
}

uint64_t otCommissionerStop(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v1);
  return ot::MeshCoP::Commissioner::Stop(v2);
}

uint64_t ot::MeshCoP::Commissioner::Stop(ot::MeshCoP::Commissioner *this)
{
  return ot::MeshCoP::Commissioner::Stop(this, 0);
}

{
  return ot::MeshCoP::Commissioner::Stop(this);
}

uint64_t otCommissionerAddJoiner(uint64_t a1, uint64_t a2, ot *a3, unsigned int a4)
{
  ot::AsCoreType<otInstance>(a1);
  v7 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v4);
  if (a2)
  {
    ot::AsCoreType<otExtAddress>(a2);
    return ot::MeshCoP::Commissioner::AddJoiner(v7, v5, a3, a4);
  }

  else
  {
    return ot::MeshCoP::Commissioner::AddJoinerAny(v7, a3, a4);
  }
}

uint64_t ot::MeshCoP::Commissioner::AddJoinerAny(ot::MeshCoP::Commissioner *this, ot *a2, unsigned int a3)
{
  return ot::MeshCoP::Commissioner::AddJoiner(this, 0, 0, a2, a3);
}

{
  return ot::MeshCoP::Commissioner::AddJoinerAny(this, a2, a3);
}

uint64_t ot::MeshCoP::Commissioner::AddJoiner(ot::MeshCoP::Commissioner *this, const ot::Mac::ExtAddress *a2, ot *a3, unsigned int a4)
{
  return ot::MeshCoP::Commissioner::AddJoiner(this, a2, 0, a3, a4);
}

{
  return ot::MeshCoP::Commissioner::AddJoiner(this, a2, a3, a4);
}

void ot::AsCoreType<otExtAddress>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otExtAddress>(a1);
}

{
  ot::AsCoreType<otExtAddress>(a1);
}

uint64_t otCommissionerAddJoinerWithDiscerner(uint64_t a1, uint64_t a2, ot *a3, unsigned int a4)
{
  ot::AsCoreType<otInstance>(a1);
  v7 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v4);
  ot::AsCoreType<otJoinerDiscerner>(a2);
  return ot::MeshCoP::Commissioner::AddJoiner(v7, v5, a3, a4);
}

uint64_t ot::MeshCoP::Commissioner::AddJoiner(ot::MeshCoP::Commissioner *this, const ot::MeshCoP::JoinerDiscerner *a2, ot *a3, unsigned int a4)
{
  return ot::MeshCoP::Commissioner::AddJoiner(this, 0, a2, a3, a4);
}

{
  return ot::MeshCoP::Commissioner::AddJoiner(this, a2, a3, a4);
}

void ot::AsCoreType<otJoinerDiscerner>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otJoinerDiscerner>(a1);
}

{
  ot::AsCoreType<otJoinerDiscerner>(a1);
}

uint64_t otCommissionerGetNextJoinerInfo(uint64_t a1, _WORD *a2, char *a3)
{
  ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v3);
  return ot::MeshCoP::Commissioner::GetNextJoinerInfo(v4, a2, a3);
}

uint64_t otCommissionerRemoveJoiner(uint64_t a1, uint64_t a2)
{
  *&v6[4] = a2;
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v2);
  if (*&v6[4])
  {
    ot::AsCoreType<otExtAddress>(*&v6[4]);
    *v6 = ot::MeshCoP::Commissioner::RemoveJoiner(v5, v3, 0);
  }

  else
  {
    *v6 = ot::MeshCoP::Commissioner::RemoveJoinerAny(v5, 0);
  }

  return *v6;
}

uint64_t ot::MeshCoP::Commissioner::RemoveJoinerAny(ot::MeshCoP::Commissioner *this, unsigned int a2)
{
  return ot::MeshCoP::Commissioner::RemoveJoiner(this, 0, 0, a2);
}

{
  return ot::MeshCoP::Commissioner::RemoveJoinerAny(this, a2);
}

uint64_t ot::MeshCoP::Commissioner::RemoveJoiner(ot::MeshCoP::Commissioner *this, const ot::Mac::ExtAddress *a2, unsigned int a3)
{
  return ot::MeshCoP::Commissioner::RemoveJoiner(this, a2, 0, a3);
}

{
  return ot::MeshCoP::Commissioner::RemoveJoiner(this, a2, a3);
}

uint64_t otCommissionerRemoveJoinerWithDiscerner(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v2);
  ot::AsCoreType<otJoinerDiscerner>(a2);
  return ot::MeshCoP::Commissioner::RemoveJoiner(v5, v3, 0);
}

uint64_t ot::MeshCoP::Commissioner::RemoveJoiner(ot::MeshCoP::Commissioner *this, const ot::MeshCoP::JoinerDiscerner *a2, unsigned int a3)
{
  return ot::MeshCoP::Commissioner::RemoveJoiner(this, 0, a2, a3);
}

{
  return ot::MeshCoP::Commissioner::RemoveJoiner(this, a2, a3);
}

uint64_t otCommissionerSetProvisioningUrl(uint64_t a1, ot *a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v2);
  return ot::MeshCoP::Commissioner::SetProvisioningUrl(v3, a2);
}

uint64_t otCommissionerGetProvisioningUrl(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v1);
  return ot::MeshCoP::Commissioner::GetProvisioningUrl(v2);
}

uint64_t ot::MeshCoP::Commissioner::GetProvisioningUrl(ot::MeshCoP::Commissioner *this)
{
  return this + 424;
}

{
  return ot::MeshCoP::Commissioner::GetProvisioningUrl(this);
}

uint64_t otCommissionerAnnounceBegin(uint64_t a1, unsigned int a2, unsigned __int8 a3, unsigned __int16 a4, uint64_t a5)
{
  ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v5);
  AnnounceBeginClient = ot::MeshCoP::Commissioner::GetAnnounceBeginClient(v6);
  ot::AsCoreType<otIp6Address>(a5);
  return ot::AnnounceBeginClient::SendRequest(AnnounceBeginClient, a2, a3, a4, v7);
}

uint64_t ot::MeshCoP::Commissioner::GetAnnounceBeginClient(ot::MeshCoP::Commissioner *this)
{
  return this + 352;
}

{
  return ot::MeshCoP::Commissioner::GetAnnounceBeginClient(this);
}

void ot::AsCoreType<otIp6Address>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otIp6Address>(a1);
}

{
  ot::AsCoreType<otIp6Address>(a1);
}

uint64_t otCommissionerEnergyScan(uint64_t a1, unsigned int a2, unsigned __int8 a3, unsigned __int16 a4, unsigned __int16 a5, uint64_t a6, void (*a7)(unsigned int, const unsigned __int8 *, unsigned __int8, void *), uint64_t a8)
{
  ot::AsCoreType<otInstance>(a1);
  v9 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v8);
  EnergyScanClient = ot::MeshCoP::Commissioner::GetEnergyScanClient(v9);
  ot::AsCoreType<otIp6Address>(a6);
  return ot::EnergyScanClient::SendQuery(EnergyScanClient, a2, a3, a4, a5, v10, a7, a8);
}

uint64_t ot::MeshCoP::Commissioner::GetEnergyScanClient(ot::MeshCoP::Commissioner *this)
{
  return this + 360;
}

{
  return ot::MeshCoP::Commissioner::GetEnergyScanClient(this);
}

uint64_t otCommissionerPanIdQuery(uint64_t a1, unsigned __int16 a2, unsigned int a3, uint64_t a4, void (*a5)(unsigned __int16, unsigned int, void *), uint64_t a6)
{
  ot::AsCoreType<otInstance>(a1);
  v7 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v6);
  PanIdQueryClient = ot::MeshCoP::Commissioner::GetPanIdQueryClient(v7);
  ot::AsCoreType<otIp6Address>(a4);
  return ot::PanIdQueryClient::SendQuery(PanIdQueryClient, a2, a3, v8, a5, a6);
}

uint64_t ot::MeshCoP::Commissioner::GetPanIdQueryClient(ot::MeshCoP::Commissioner *this)
{
  return this + 376;
}

{
  return ot::MeshCoP::Commissioner::GetPanIdQueryClient(this);
}

uint64_t otCommissionerSendMgmtGet(uint64_t a1, char *a2, unsigned __int8 a3)
{
  ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v3);
  return ot::MeshCoP::Commissioner::SendMgmtCommissionerGetRequest(v4, a2, a3);
}

uint64_t otCommissionerSendMgmtSet(uint64_t a1, uint64_t a2, char *a3, unsigned __int8 a4)
{
  ot::AsCoreType<otInstance>(a1);
  v7 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v4);
  ot::AsCoreType<otCommissioningDataset>(a2);
  return ot::MeshCoP::Commissioner::SendMgmtCommissionerSetRequest(v7, v5, a3, a4);
}

void ot::AsCoreType<otCommissioningDataset>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otCommissioningDataset>(a1);
}

{
  ot::AsCoreType<otCommissioningDataset>(a1);
}

uint64_t otCommissionerGetSessionId(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v1);
  return ot::MeshCoP::Commissioner::GetSessionId(v2);
}

uint64_t ot::MeshCoP::Commissioner::GetSessionId(ot::MeshCoP::Commissioner *this)
{
  return *(this + 138);
}

{
  return ot::MeshCoP::Commissioner::GetSessionId(this);
}

uint64_t otCommissionerGetState(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshCoP::Commissioner>(v1);
  State = ot::MeshCoP::Commissioner::GetState(v2);
  return ot::MapEnum<ot::MeshCoP::Commissioner::State>(State);
}

uint64_t ot::MapEnum<ot::MeshCoP::Commissioner::State>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<ot::MeshCoP::Commissioner::State>(result);
}

uint64_t ot::MeshCoP::Commissioner::GetState(ot::MeshCoP::Commissioner *this)
{
  return *(this + 554);
}

{
  return ot::MeshCoP::Commissioner::GetState(this);
}

uint64_t otDatasetIsCommissioned(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  active = ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(v1);
  return ot::MeshCoP::ActiveDatasetManager::IsCommissioned(active);
}

uint64_t ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(uint64_t a1)
{
  return a1 + 87312;
}

{
  return ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(a1);
}

uint64_t otDatasetGetActive(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  active = ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(v2);
  ot::AsCoreType<otOperationalDataset>(a2);
  return ot::MeshCoP::DatasetManager::Read(active, v3);
}

void ot::AsCoreType<otOperationalDataset>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otOperationalDataset>(a1);
}

{
  ot::AsCoreType<otOperationalDataset>(a1);
}

uint64_t otDatasetGetActiveTlvs(uint64_t a1, _BYTE *a2)
{
  if (!a2)
  {
    __assert_rtn("otDatasetGetActiveTlvs", "dataset_api.cpp", 57, "(aDataset) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  active = ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(v2);
  return ot::MeshCoP::DatasetManager::Read(active, a2);
}

uint64_t otDatasetSetActive(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  active = ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(v2);
  ot::AsCoreType<otOperationalDataset>(a2);
  ot::MeshCoP::DatasetManager::SaveLocal(active, v3);
  return 0;
}

uint64_t otDatasetSetActiveTlvs(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    __assert_rtn("otDatasetSetActiveTlvs", "dataset_api.cpp", 71, "(aDataset) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  active = ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(v2);
  return ot::MeshCoP::DatasetManager::SaveLocal(active, a2);
}

uint64_t otDatasetGetPending(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(v2);
  ot::AsCoreType<otOperationalDataset>(a2);
  return ot::MeshCoP::DatasetManager::Read(v5, v3);
}

uint64_t ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(uint64_t a1)
{
  return a1 + 87640;
}

{
  return ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(a1);
}

uint64_t otDatasetGetPendingTlvs(uint64_t a1, _BYTE *a2)
{
  if (!a2)
  {
    __assert_rtn("otDatasetGetPendingTlvs", "dataset_api.cpp", 83, "(aDataset) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(v2);
  return ot::MeshCoP::DatasetManager::Read(v3, a2);
}

uint64_t otDatasetSetPending(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(v2);
  ot::AsCoreType<otOperationalDataset>(a2);
  ot::MeshCoP::DatasetManager::SaveLocal(v5, v3);
  return 0;
}

uint64_t otDatasetSetPendingTlvs(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    __assert_rtn("otDatasetSetPendingTlvs", "dataset_api.cpp", 97, "(aDataset) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(v2);
  return ot::MeshCoP::DatasetManager::SaveLocal(v3, a2);
}

uint64_t otDatasetSendMgmtActiveGet(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  ot::AsCoreType<otInstance>(a1);
  active = ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(v5);
  ot::AsCoreType<otOperationalDatasetComponents>(a2);
  return ot::MeshCoP::DatasetManager::SendGetRequest(active, v6, a3, a4, a5);
}

void ot::AsCoreType<otOperationalDatasetComponents>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otOperationalDatasetComponents>(a1);
}

uint64_t otDatasetSendMgmtActiveSet(uint64_t a1, uint64_t a2, const unsigned __int8 *a3, unsigned __int8 a4, uint64_t a5, uint64_t a6)
{
  ot::AsCoreType<otInstance>(a1);
  active = ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(v6);
  ot::AsCoreType<otOperationalDataset>(a2);
  return ot::MeshCoP::DatasetManager::SendSetRequest(active, v7, a3, a4, a5, a6);
}

uint64_t otDatasetSendMgmtPendingGet(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  ot::AsCoreType<otInstance>(a1);
  v8 = ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(v5);
  ot::AsCoreType<otOperationalDatasetComponents>(a2);
  return ot::MeshCoP::DatasetManager::SendGetRequest(v8, v6, a3, a4, a5);
}

uint64_t otDatasetSendMgmtPendingSet(uint64_t a1, uint64_t a2, const unsigned __int8 *a3, unsigned __int8 a4, uint64_t a5, uint64_t a6)
{
  ot::AsCoreType<otInstance>(a1);
  v9 = ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(v6);
  ot::AsCoreType<otOperationalDataset>(a2);
  return ot::MeshCoP::DatasetManager::SendSetRequest(v9, v7, a3, a4, a5, a6);
}

uint64_t otDatasetGeneratePskc(ot::MeshCoP *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ot::AsCoreType<otNetworkName>(a2);
  v9 = v4;
  ot::AsCoreType<otExtendedPanId>(a3);
  v10 = v5;
  ot::AsCoreType<otPskc>(a4);
  return ot::MeshCoP::GeneratePskc(a1, v9, v10, v6, v7);
}

void ot::AsCoreType<otNetworkName>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otNetworkName>(a1);
}

{
  ot::AsCoreType<otNetworkName>(a1);
}

void ot::AsCoreType<otExtendedPanId>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otExtendedPanId>(a1);
}

{
  ot::AsCoreType<otExtendedPanId>(a1);
}

void ot::AsCoreType<otPskc>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otPskc>(a1);
}

{
  ot::AsCoreType<otPskc>(a1);
}

uint64_t otNetworkNameFromString(uint64_t a1, ot *a2)
{
  ot::AsCoreType<otNetworkName>(a1);
  v5 = ot::MeshCoP::NetworkName::Set(v2, a2);
  if (v5 == 24)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t otDatasetParseTlvs(uint64_t a1, uint64_t a2)
{
  ot::MeshCoP::Dataset::Dataset(v7);
  if (!a1)
  {
    __assert_rtn("otDatasetParseTlvs", "dataset_api.cpp", 166, "(aDatasetTlvs) != nullptr");
  }

  v4 = ot::MeshCoP::Dataset::SetFrom(v7, a1);
  if (!v4)
  {
    if (ot::MeshCoP::Dataset::ValidateTlvs(v7))
    {
      return 7;
    }

    else
    {
      ot::AsCoreType<otOperationalDataset>(a2);
      ot::MeshCoP::Dataset::ConvertTo(v7, v2);
    }
  }

  return v4;
}

void *otDatasetConvertToTlvs(uint64_t a1, _BYTE *a2)
{
  ot::MeshCoP::Dataset::Dataset(v6);
  if (!a2)
  {
    __assert_rtn("otDatasetConvertToTlvs", "dataset_api.cpp", 180, "(aDatasetTlvs) != nullptr");
  }

  ot::AsCoreType<otOperationalDataset>(a1);
  ot::MeshCoP::Dataset::SetFrom(v6, v2);
  return ot::MeshCoP::Dataset::ConvertTo(v6, a2);
}

uint64_t otDatasetUpdateTlvs(uint64_t a1, _BYTE *a2)
{
  ot::MeshCoP::Dataset::Dataset(v7);
  if (!a2)
  {
    __assert_rtn("otDatasetUpdateTlvs", "dataset_api.cpp", 191, "(aDatasetTlvs) != nullptr");
  }

  v4 = ot::MeshCoP::Dataset::SetFrom(v7, a2);
  if (!v4)
  {
    ot::AsCoreType<otOperationalDataset>(a1);
    v4 = ot::MeshCoP::Dataset::WriteTlvsFrom(v7, v2);
    if (!v4)
    {
      ot::MeshCoP::Dataset::ConvertTo(v7, a2);
    }
  }

  return v4;
}

uint64_t otDatasetCreateNewNetwork(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  active = ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(v2);
  ot::AsCoreType<otOperationalDataset>(a2);
  return ot::MeshCoP::ActiveDatasetManager::CreateNewNetwork(active, v3);
}

uint64_t ot::MeshCoP::ActiveDatasetManager::CreateNewNetwork(ot::MeshCoP::ActiveDatasetManager *this, ot::MeshCoP::Dataset::Info *a2)
{
  Instance = ot::InstanceLocator::GetInstance(this);
  return ot::MeshCoP::Dataset::Info::GenerateRandom(a2, Instance);
}

{
  return ot::MeshCoP::ActiveDatasetManager::CreateNewNetwork(this, a2);
}

uint64_t otDatasetGetDelayTimerMinimal(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshCoP::Leader>(v1);
  return ot::MeshCoP::Leader::GetDelayTimerMinimal(v2);
}

uint64_t ot::Instance::Get<ot::MeshCoP::Leader>(uint64_t a1)
{
  return a1 + 146456;
}

{
  return ot::Instance::Get<ot::MeshCoP::Leader>(a1);
}

uint64_t ot::MeshCoP::Leader::GetDelayTimerMinimal(ot::MeshCoP::Leader *this)
{
  return *(this + 8);
}

{
  return ot::MeshCoP::Leader::GetDelayTimerMinimal(this);
}

uint64_t otDatasetSetDelayTimerMinimal(uint64_t a1, unsigned int a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::MeshCoP::Leader>(v2);
  return ot::MeshCoP::Leader::SetDelayTimerMinimal(v3, a2);
}

uint64_t otDiagProcessCmdLine(uint64_t a1, char *a2)
{
  if (!a2)
  {
    __assert_rtn("otDiagProcessCmdLine", "diags_api.cpp", 47, "(aString) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::FactoryDiags::Diags>(v2);
  return ot::FactoryDiags::Diags::ProcessLine(v3, a2);
}

uint64_t ot::Instance::Get<ot::FactoryDiags::Diags>(uint64_t a1)
{
  return a1 + 168288;
}

{
  return ot::Instance::Get<ot::FactoryDiags::Diags>(a1);
}

uint64_t otDiagProcessCmd(uint64_t a1, char a2, const char **a3)
{
  ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::FactoryDiags::Diags>(v3);
  return ot::FactoryDiags::Diags::ProcessCmd(v4, a2, a3);
}

uint64_t otDiagIsEnabled(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::FactoryDiags::Diags>(v1);
  return ot::FactoryDiags::Diags::IsEnabled(v2);
}

uint64_t otDiagSetOutputCallback(uint64_t a1, void (*a2)(const char *, char *, void *), void *a3)
{
  ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::FactoryDiags::Diags>(v3);
  return ot::FactoryDiags::Diags::SetOutputCallback(v4, a2, a3);
}

ot::ChildSupervisor *ot::ChildSupervisor::ChildSupervisor(ot::ChildSupervisor *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::TimerMilliIn<ot::ChildSupervisor,&ot::ChildSupervisor::HandleTimer>::TimerMilliIn((this + 8), a2);
  return this;
}

{
  ot::ChildSupervisor::ChildSupervisor(this, a2);
  return this;
}

uint64_t ot::SupervisionListener::HandleTimer(ot::SupervisionListener *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::Mle::IsChild(v1))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
    if ((ot::MeshForwarder::GetRxOnWhenIdle(v3) & 1) == 0)
    {
      CurrentTimeoutMs = ot::SupervisionListener::GetCurrentTimeoutMs(this, v2);
      ot::Logger::LogAtLevel<(ot::LogLevel)2>("ChildSupervsn", "Supervision timeout. No frame from parent in %u ms", v5, v6, v7, v8, v9, v10, CurrentTimeoutMs);
      ++*(this + 2);
      v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      ot::Mle::MleRouter::SendChildUpdateRequest(v11);
      IgnoreError();
    }
  }

  return ot::SupervisionListener::RestartTimer(this, v2);
}

uint64_t ot::ChildSupervisor::HandleTimer(ot::ChildSupervisor *this)
{
  v15 = this;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
  v13 = ot::ChildTable::Iterate(v1, 0);
  v14 = &v13;
  v18 = ot::ChildTable::IteratorBuilder::begin(&v13);
  v19 = v2;
  v11 = v18;
  v12 = v2;
  v16 = ot::ChildTable::IteratorBuilder::end(v14);
  v17 = v3;
  v9 = v16;
  v10 = v3;
  while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v11, &v9))
  {
    v8 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v11);
    if (!ot::Neighbor::IsRxOnWhenIdle(v8) && ot::Child::GetSupervisionInterval(v8))
    {
      ot::Child::IncrementSecondsSinceLastSupervision(v8);
      SecondsSinceLastSupervision = ot::Child::GetSecondsSinceLastSupervision(v8);
      if (SecondsSinceLastSupervision >= ot::Child::GetSupervisionInterval(v8))
      {
        ot::ChildSupervisor::SendMessage(this, v8);
      }
    }

    ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v11);
  }

  Interval = ot::ChildSupervisor::GetInterval(this);
  return ot::TimerMilli::Start((this + 8), Interval);
}

ot::TimerMilli *ot::TimerMilliIn<ot::ChildSupervisor,&ot::ChildSupervisor::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::ChildSupervisor,&ot::ChildSupervisor::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::ChildSupervisor,&ot::ChildSupervisor::HandleTimer>::HandleTimer);
  return a1;
}

uint64_t ot::ChildSupervisor::GetDestination(ot::ChildSupervisor *this, const ot::Message *a2)
{
  v8 = this;
  v7 = a2;
  v6 = 0;
  v5 = 0;
  if (ot::Message::GetType(a2) == 2)
  {
    ot::Message::Read<unsigned short>(v7, 0, &v5);
    IgnoreError();
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
    return ot::ChildTable::GetChildAtIndex(v2, v5);
  }

  return v6;
}

uint64_t ot::Message::GetType(ot::Message *this)
{
  return *(ot::Buffer::GetMetadata(this) + 70) & 7;
}

{
  return ot::Message::GetType(this);
}

uint64_t ot::Message::Read<unsigned short>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 2u);
}

{
  return ot::Message::Read<unsigned short>(a1, a2, a3);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::ChildTable>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(a1);
}

ot::Message **ot::ChildSupervisor::SendMessage(ot::ChildSupervisor *this, ot::Child *a2)
{
  v21 = this;
  v20 = a2;
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v19);
  ChildIndex = 0;
  if (!ot::IndirectSender::ChildInfo::GetIndirectMessageCount((v20 + 144)))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(this);
    v3 = ot::MessagePool::Allocate(v2, 2, 1);
    ot::OwnedPtr<ot::Message>::Reset(&v19, v3);
    if (ot::Ptr<ot::Message>::operator!=(&v19, 0))
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
      ChildIndex = ot::ChildTable::GetChildIndex(v4, v20);
      v5 = ot::Ptr<ot::Message>::operator->(&v19);
      if (!ot::Message::Append<unsigned short>(v5, &ChildIndex))
      {
        v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
        ot::OwnedPtr<ot::Message>::PassOwnership();
        ot::OwnedPtr<ot::Message>::OwnedPtr(&v17, v6);
        ot::MeshForwarder::SendMessage(v15, &v17);
        ot::OwnedPtr<ot::Message>::~OwnedPtr(&v17);
        Rloc16 = ot::Neighbor::GetRloc16(v20);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("ChildSupervsn", "Sending supervision message to child 0x%04x", v8, v9, v10, v11, v12, v13, Rloc16);
      }
    }
  }

  return ot::OwnedPtr<ot::Message>::~OwnedPtr(&v19);
}

void *ot::OwnedPtr<ot::Message>::OwnedPtr(void *a1)
{
  ot::OwnedPtr<ot::Message>::OwnedPtr(a1);
  return a1;
}

{
  ot::Ptr<ot::Message>::Ptr(a1);
  return a1;
}

uint64_t ot::IndirectSender::ChildInfo::GetIndirectMessageCount(ot::IndirectSender::ChildInfo *this)
{
  return (*(this + 1) >> 16) & 0x3FFFLL;
}

{
  return ot::IndirectSender::ChildInfo::GetIndirectMessageCount(this);
}

void ot::OwnedPtr<ot::Message>::Reset(ot::Message **result, ot::Message *a2)
{
  if (*result != a2)
  {
    ot::OwnedPtr<ot::Message>::Delete(result);
    *result = a2;
  }
}

{
  ot::OwnedPtr<ot::Message>::Reset(result, a2);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::MessagePool>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(a1);
}

BOOL ot::Ptr<ot::Message>::operator!=(void *a1, uint64_t a2)
{
  return *a1 != a2;
}

{
  return ot::Ptr<ot::Message>::operator!=(a1, a2);
}

uint64_t ot::ChildTable::GetChildIndex(ot::ChildTable *this, const ot::Child *a2)
{
  return ((a2 - (this + 8)) / 464);
}

{
  return ot::ChildTable::GetChildIndex(this, a2);
}

uint64_t ot::Ptr<ot::Message>::operator->(uint64_t a1)
{
  return *a1;
}

{
  return ot::Ptr<ot::Message>::operator->(a1);
}

uint64_t ot::Message::Append<unsigned short>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 2u);
}

{
  return ot::Message::Append<unsigned short>(a1, a2);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::MeshForwarder>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1);
}

void ot::OwnedPtr<ot::Message>::PassOwnership()
{
  ;
}

{
  ot::OwnedPtr<ot::Message>::PassOwnership();
}

void *ot::OwnedPtr<ot::Message>::OwnedPtr(void *a1, void *a2)
{
  ot::OwnedPtr<ot::Message>::OwnedPtr(a1, a2);
  return a1;
}

{
  ot::Ptr<ot::Message>::Ptr(a1);
  result = a1;
  *a1 = *a2;
  *a2 = 0;
  return result;
}

ot::Message **ot::OwnedPtr<ot::Message>::~OwnedPtr(ot::Message **a1)
{
  ot::OwnedPtr<ot::Message>::~OwnedPtr(a1);
  return a1;
}

{
  ot::OwnedPtr<ot::Message>::Delete(a1);
  return a1;
}

uint64_t ot::Neighbor::GetRloc16(ot::Neighbor *this)
{
  return *(this + 14);
}

{
  return ot::Neighbor::GetRloc16(this);
}

uint64_t ot::Child::ResetSecondsSinceLastSupervision(uint64_t this)
{
  *(this + 460) = 0;
  return this;
}

{
  return ot::Child::ResetSecondsSinceLastSupervision(this);
}

uint64_t ot::ChildSupervisor::GetInterval(ot::ChildSupervisor *this)
{
  v3 = 1000;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  if (ot::Mle::Mle::IsCslPeripheralPresent(v1))
  {
    return 100;
  }

  return v3;
}

BOOL ot::Mle::Mle::IsCslPeripheralPresent(ot::Mle::Mle *this)
{
  return *(this + 103) != 0;
}

{
  return ot::Mle::Mle::IsCslPeripheralPresent(this);
}

uint64_t ot::ChildTable::Iterate(ot::InstanceLocator *a1, char a2)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  ot::ChildTable::IteratorBuilder::IteratorBuilder(&v5, Instance, a2);
  return v5;
}

{
  return ot::ChildTable::Iterate(a1, a2);
}

uint64_t ot::ChildTable::IteratorBuilder::begin(ot::ChildTable::IteratorBuilder *this)
{
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::ChildTable::Iterator::Iterator(&v4, Instance, *this);
  return v4;
}

{
  return ot::ChildTable::IteratorBuilder::begin(this);
}

uint64_t ot::ChildTable::IteratorBuilder::end(ot::ChildTable::IteratorBuilder *this)
{
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::ChildTable::Iterator::Iterator(&v3, Instance);
  return v3;
}

{
  return ot::ChildTable::IteratorBuilder::end(this);
}

BOOL ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(void *a1, void *a2)
{
  return *a1 != *a2;
}

{
  return ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(a1, a2);
}

uint64_t ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(uint64_t a1)
{
  return *a1;
}

{
  return ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(a1);
}

BOOL ot::Neighbor::IsRxOnWhenIdle(ot::Neighbor *this)
{
  v3 = this;
  DeviceMode = ot::Neighbor::GetDeviceMode(this);
  return ot::Mle::DeviceMode::IsRxOnWhenIdle(&DeviceMode);
}

{
  return ot::Neighbor::IsRxOnWhenIdle(this);
}

uint64_t ot::Child::GetSupervisionInterval(ot::Child *this)
{
  return *(this + 229);
}

{
  return ot::Child::GetSupervisionInterval(this);
}

uint64_t ot::Child::IncrementSecondsSinceLastSupervision(uint64_t this)
{
  ++*(this + 460);
  return this;
}

{
  return ot::Child::IncrementSecondsSinceLastSupervision(this);
}

uint64_t ot::Child::GetSecondsSinceLastSupervision(ot::Child *this)
{
  return *(this + 230);
}

{
  return ot::Child::GetSecondsSinceLastSupervision(this);
}

uint64_t ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(ot::ChildTable::Iterator *a1)
{
  return ot::ChildTable::Iterator::Advance(a1);
}

{
  return ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(a1);
}

void ot::ChildSupervisor::CheckState(ot::ChildSupervisor *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  HasChildren = 0;
  if (!ot::Mle::Mle::IsDisabled(v1))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
    HasChildren = ot::ChildTable::HasChildren(v2, 0);
  }

  if (HasChildren && !ot::Timer::IsRunning((this + 8)))
  {
    Interval = ot::ChildSupervisor::GetInterval(this);
    ot::TimerMilli::Start((this + 8), Interval);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("ChildSupervsn", "Starting Child Supervision", v4, v5, v6, v7, v8, v9);
  }

  if (!HasChildren && ot::Timer::IsRunning((this + 8)))
  {
    ot::TimerMilli::Stop((this + 8));
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("ChildSupervsn", "Stopping Child Supervision", v10, v11, v12, v13, v14, v15);
  }
}

BOOL ot::Mle::Mle::IsDisabled(ot::Mle::Mle *this)
{
  return *(this + 130) == 0;
}

{
  return ot::Mle::Mle::IsDisabled(this);
}

BOOL ot::Timer::IsRunning(ot::Timer *this)
{
  return *(this + 2) != this;
}

{
  return ot::Timer::IsRunning(this);
}

void ot::ChildSupervisor::HandleNotifierEvents(ot::ChildSupervisor *a1, uint64_t a2)
{
  v3 = a2;
  if (ot::Events::ContainsAny(&v3, 3076))
  {
    ot::ChildSupervisor::CheckState(a1);
  }
}

BOOL ot::Events::ContainsAny(ot::Events *this, uint64_t a2)
{
  return (*this & a2) != 0;
}

{
  return ot::Events::ContainsAny(this, a2);
}

ot::SupervisionListener *ot::SupervisionListener::SupervisionListener(ot::SupervisionListener *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *this = 0;
  *(this + 1) = 129;
  ot::TimerMilliIn<ot::SupervisionListener,&ot::SupervisionListener::HandleTimer>::TimerMilliIn((this + 8), a2);
  ot::SupervisionListener::SetTimeout(this, 0xBEu, v2, v3, v4, v5, v6, v7);
  return this;
}

{
  ot::SupervisionListener::SupervisionListener(this, a2);
  return this;
}

ot::TimerMilli *ot::TimerMilliIn<ot::SupervisionListener,&ot::SupervisionListener::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::SupervisionListener,&ot::SupervisionListener::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::SupervisionListener,&ot::SupervisionListener::HandleTimer>::HandleTimer);
  return a1;
}

unsigned __int16 *ot::SupervisionListener::SetTimeout(unsigned __int16 *this, unsigned __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = this;
  if (*this != a2)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("ChildSupervsn", "Timeout: %u -> %u", a3, a4, a5, a6, a7, a8, *this, a2);
    *v9 = a2;
    return ot::SupervisionListener::RestartTimer(v9, v8);
  }

  return this;
}

uint64_t ot::SupervisionListener::RestartTimer(ot::SupervisionListener *this, unsigned int a2)
{
  CurrentTimeoutMs = ot::SupervisionListener::GetCurrentTimeoutMs(this, a2);
  if (!CurrentTimeoutMs)
  {
    return ot::TimerMilli::Stop((this + 8));
  }

  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::Mle::IsDisabled(v2))
  {
    return ot::TimerMilli::Stop((this + 8));
  }

  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
  if (ot::MeshForwarder::GetRxOnWhenIdle(v3))
  {
    return ot::TimerMilli::Stop((this + 8));
  }

  else
  {
    return ot::TimerMilli::Start((this + 8), CurrentTimeoutMs);
  }
}

void ot::SupervisionListener::SetInterval(ot::SupervisionListener *this, unsigned __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 1) != a2)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("ChildSupervsn", "Interval: %u -> %u", a3, a4, a5, a6, a7, a8, *(this + 1), a2);
    *(this + 1) = a2;
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    if (ot::Mle::Mle::IsChild(v8))
    {
      v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      ot::Mle::Mle::SendChildUpdateRequest(v9);
      IgnoreError();
    }
  }
}

BOOL ot::Mle::Mle::IsChild(ot::Mle::Mle *this)
{
  return *(this + 130) == 2;
}

{
  return ot::Mle::Mle::IsChild(this);
}

uint64_t ot::SupervisionListener::UpdateOnReceive(ot::SupervisionListener *this, const ot::Mac::Address *a2, char a3)
{
  result = ot::Timer::IsRunning((this + 8));
  if (result & 1) != 0 && (a3)
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    result = ot::Mle::Mle::IsChild(v4);
    if (result)
    {
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
      Neighbor = ot::NeighborTable::FindNeighbor(v5, a2, 1);
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      Parent = ot::Mle::Mle::GetParent(v6);
      result = Neighbor;
      if (Neighbor == Parent)
      {
        v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
        v9 = ot::NeighborTable::FindNeighbor(v8, a2, 1);
        v20 = v9;
        if (v9)
        {
          Now = ot::TimerMilli::GetNow(v9);
          ot::Neighbor::SetLastHeard(v20, Now);
        }

        else
        {
          ot::Logger::LogAtLevel<(ot::LogLevel)1>("ChildSupervsn", "Parent is nullptr, cannot update last heard time", v10, v11, v12, v13, v14, v15);
        }

        return ot::SupervisionListener::RestartTimer(this, v16);
      }
    }
  }

  return result;
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Mle::MleRouter>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::NeighborTable>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(a1);
}

uint64_t ot::Mle::Mle::GetParent(ot::Mle::Mle *this)
{
  return this + 192;
}

{
  return ot::Mle::Mle::GetParent(this);
}

uint64_t ot::Neighbor::SetLastHeard(uint64_t result, int a2)
{
  *(result + 8) = a2;
  return result;
}

{
  return ot::Neighbor::SetLastHeard(result, a2);
}

uint64_t ot::TimerMilli::GetNow(ot::TimerMilli *this)
{
  Now = otPlatAlarmMilliGetNow();
  ot::Time::Time(&v3, Now);
  return v3;
}

{
  return ot::TimerMilli::GetNow(this);
}

uint64_t ot::Time::SecToMsec(ot::Time *this)
{
  return (1000 * this);
}

{
  return ot::Time::SecToMsec(this);
}

uint64_t ot::Mle::MleRouter::SendChildUpdateRequest(ot::Mle::MleRouter *this)
{
  return ot::Mle::Mle::SendChildUpdateRequest(this);
}

{
  return ot::Mle::MleRouter::SendChildUpdateRequest(this);
}

ot::InstanceLocator *ot::ChildTable::IteratorBuilder::IteratorBuilder(ot::InstanceLocator *a1, ot::Instance *a2, char a3)
{
  ot::ChildTable::IteratorBuilder::IteratorBuilder(a1, a2, a3);
  return a1;
}

{
  ot::InstanceLocator::InstanceLocator(a1, a2);
  result = a1;
  *a1 = a3;
  return result;
}

ot::ChildTable::Iterator *ot::ChildTable::Iterator::Iterator(ot::ChildTable::Iterator *this, ot::Instance *a2)
{
  ot::ChildTable::Iterator::Iterator(this, a2);
  return this;
}

{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Ptr<ot::Message>::Ptr(this);
  result = this;
  *(this + 8) = 0;
  return result;
}

uint64_t ot::Neighbor::GetDeviceMode(ot::Neighbor *this)
{
  ot::Mle::DeviceMode::DeviceMode(&v2, *(this + 30) >> 4);
  return v2;
}

{
  return ot::Neighbor::GetDeviceMode(this);
}

BOOL ot::Mle::DeviceMode::IsRxOnWhenIdle(ot::Mle::DeviceMode *this)
{
  return (*this & 8) != 0;
}

{
  return ot::Mle::DeviceMode::IsRxOnWhenIdle(this);
}

ot::Mle::DeviceMode *ot::Mle::DeviceMode::DeviceMode(ot::Mle::DeviceMode *this, char a2)
{
  ot::Mle::DeviceMode::DeviceMode(this, a2);
  return this;
}

{
  ot::Mle::DeviceMode::Set(this, a2);
  return this;
}

_BYTE *ot::Mle::DeviceMode::Set(_BYTE *this, char a2)
{
  *this = a2 | 4;
  return this;
}

{
  return ot::Mle::DeviceMode::Set(this, a2);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildSupervisor>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::ChildSupervisor>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildSupervisor>(a1);
}

uint64_t ot::Instance::Get<ot::ChildSupervisor>(uint64_t a1)
{
  return a1 + 154520;
}

{
  return ot::Instance::Get<ot::ChildSupervisor>(a1);
}

uint64_t ot::Instance::Get<ot::ChildTable>(uint64_t a1)
{
  return a1 + 92360;
}

{
  return ot::Instance::Get<ot::ChildTable>(a1);
}

void ot::OwnedPtr<ot::Message>::Delete(ot::Message **result)
{
  if (*result)
  {
    ot::Message::Free(*result);
  }
}

{
  ot::OwnedPtr<ot::Message>::Delete(result);
}

uint64_t ot::Instance::Get<ot::MessagePool>(uint64_t a1)
{
  return a1 + 208;
}

{
  return ot::Instance::Get<ot::MessagePool>(a1);
}

uint64_t ot::Instance::Get<ot::MeshForwarder>(uint64_t a1)
{
  return a1 + 89904;
}

{
  return ot::Instance::Get<ot::MeshForwarder>(a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::SupervisionListener>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::SupervisionListener>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::SupervisionListener>(a1);
}

uint64_t ot::Instance::Get<ot::Mle::MleRouter>(uint64_t a1)
{
  return a1 + 91160;
}

{
  return ot::Instance::Get<ot::Mle::MleRouter>(a1);
}

uint64_t ot::Instance::Get<ot::NeighborTable>(uint64_t a1)
{
  return a1 + 91504;
}

{
  return ot::Instance::Get<ot::NeighborTable>(a1);
}

void ot::AsCoreType<otDnsTxtEntryIterator>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otDnsTxtEntryIterator>(a1);
}

uint64_t otDnsGetNextTxtEntry(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otDnsTxtEntryIterator>(a1);
  v5 = v2;
  ot::AsCoreType<otDnsTxtEntry>(a2);
  return ot::Dns::TxtEntry::Iterator::GetNextEntry(v5, v3);
}

void ot::AsCoreType<otDnsTxtEntry>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otDnsTxtEntry>(a1);
}

uint64_t otDnsEncodeTxtData(uint64_t a1, unsigned __int8 a2, uint64_t a3, __int16 *a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  appended = 0;
  if (!a1)
  {
    __assert_rtn("otDnsEncodeTxtData", "dns_api.cpp", 61, "(aTxtEntries) != nullptr");
  }

  if (!v10)
  {
    __assert_rtn("otDnsEncodeTxtData", "dns_api.cpp", 62, "(aTxtData) != nullptr");
  }

  if (!v9)
  {
    __assert_rtn("otDnsEncodeTxtData", "dns_api.cpp", 63, "(aTxtDataLength) != nullptr");
  }

  ot::MutableData<(ot::DataLengthType)1>::Init(v7, v10, *v9);
  ot::AsCoreTypePtr<otDnsTxtEntry>();
  appended = ot::Dns::TxtEntry::AppendEntries(v4, v11, v7);
  if (!appended)
  {
    Length = ot::Data<(ot::DataLengthType)1>::GetLength(v7);
    *v9 = Length;
  }

  return appended;
}

uint64_t ot::MutableData<(ot::DataLengthType)1>::Init(uint64_t a1, uint64_t a2, __int16 a3)
{
  return ot::Data<(ot::DataLengthType)1>::Init(a1, a2, a3);
}

{
  return ot::MutableData<(ot::DataLengthType)1>::Init(a1, a2, a3);
}

void ot::AsCoreTypePtr<otDnsTxtEntry>()
{
  ;
}

{
  ot::AsCoreTypePtr<otDnsTxtEntry>();
}

uint64_t ot::Data<(ot::DataLengthType)1>::GetLength(uint64_t a1)
{
  return *(a1 + 8);
}

{
  return ot::Data<(ot::DataLengthType)1>::GetLength(a1);
}

uint64_t ot::Data<(ot::DataLengthType)1>::Init(uint64_t result, uint64_t a2, __int16 a3)
{
  *result = a2;
  *(result + 8) = a3;
  return result;
}

{
  return ot::Data<(ot::DataLengthType)1>::Init(result, a2, a3);
}

uint64_t otIcmp6GetEchoMode(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Ip6::Icmp>(v1);
  return ot::Ip6::Icmp::GetEchoMode(v2);
}

uint64_t ot::Instance::Get<ot::Ip6::Icmp>(uint64_t a1)
{
  return a1 + 85312;
}

{
  return ot::Instance::Get<ot::Ip6::Icmp>(a1);
}

uint64_t ot::Ip6::Icmp::GetEchoMode(ot::Ip6::Icmp *this)
{
  return *(this + 3);
}

{
  return ot::Ip6::Icmp::GetEchoMode(this);
}

uint64_t otIcmp6SetEchoMode(uint64_t a1, int a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Ip6::Icmp>(v2);
  return ot::Ip6::Icmp::SetEchoMode(v3, a2);
}

uint64_t ot::Ip6::Icmp::SetEchoMode(uint64_t result, int a2)
{
  *(result + 12) = a2;
  return result;
}

{
  return ot::Ip6::Icmp::SetEchoMode(result, a2);
}

uint64_t otIcmp6RegisterHandler(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Ip6::Icmp>(v2);
  ot::AsCoreType<otIcmp6Handler>(a2);
  return ot::Ip6::Icmp::RegisterHandler(v5, v3);
}

void ot::AsCoreType<otIcmp6Handler>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otIcmp6Handler>(a1);
}

uint64_t otIcmp6SendEchoRequest(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  ot::AsCoreType<otInstance>(a1);
  v9 = ot::Instance::Get<ot::Ip6::Icmp>(v4);
  ot::AsCoreType<otMessage>(a2);
  v8 = v5;
  ot::AsCoreType<otMessageInfo>(a3);
  return ot::Ip6::Icmp::SendEchoRequest(v9, v8, v6, a4);
}

ot::Utils::MeshDiag *ot::Utils::MeshDiag::MeshDiag(ot::Utils::MeshDiag *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  ot::TimerMilliIn<ot::Utils::MeshDiag,&ot::Utils::MeshDiag::HandleTimer>::TimerMilliIn((this + 8), a2);
  return this;
}

{
  ot::Utils::MeshDiag::MeshDiag(this, a2);
  return this;
}

ot::TimerMilli *ot::TimerMilliIn<ot::Utils::MeshDiag,&ot::Utils::MeshDiag::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::Utils::MeshDiag,&ot::Utils::MeshDiag::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::Utils::MeshDiag,&ot::Utils::MeshDiag::HandleTimer>::HandleTimer);
  return a1;
}

uint64_t ot::Utils::MeshDiag::DiscoverTopology(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v22 = 0;
  v20 = 0;
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
  if (ot::Mle::Mle::IsAttached(v4))
  {
    if (*a1)
    {
      return 5;
    }

    else
    {
      v5 = v20++;
      v21[v5] = 1;
      v6 = v20++;
      v21[v6] = 0;
      v7 = v20++;
      v21[v7] = 5;
      v8 = v20++;
      v21[v8] = 24;
      if (*v25)
      {
        v9 = v20++;
        v21[v9] = 8;
      }

      if ((*v25 & 2) != 0)
      {
        v10 = v20++;
        v21[v10] = 16;
      }

      v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(a1);
      ot::RouterTable::GetRouterIdSet(v11, (a1 + 48));
      for (i = 0; i <= 0x3Eu; ++i)
      {
        if (ot::Mle::RouterIdSet::Contains((a1 + 48), i))
        {
          v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
          MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v12);
          v13 = ot::Mle::Rloc16FromRouterId(i);
          ot::Ip6::Address::SetToRoutingLocator(v18, MeshLocalPrefix, v13);
          v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkDiagnostic::Client>(a1);
          v22 = ot::NetworkDiagnostic::Client::SendCommand(v14, 0x22u, 0, v18, v21, v20, ot::Utils::MeshDiag::HandleDiagGetResponse, a1);
          if (v22)
          {
            return v22;
          }
        }
      }

      ot::CallbackBase<void (*)(otError,otMeshDiagRouterInfo *,void *)>::Set(a1 + 4, v24, v23);
      *a1 = 1;
      ot::TimerMilli::Start((a1 + 8), 0x1388u);
    }
  }

  else
  {
    return 13;
  }

  return v22;
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::RouterTable>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(a1);
}

uint64_t ot::RouterTable::GetRouterIdSet(ot::RouterTable *this, ot::Mle::RouterIdSet *a2)
{
  return ot::RouterTable::RouterIdMap::GetAsRouterIdSet((this + 4640), a2);
}

{
  return ot::RouterTable::GetRouterIdSet(this, a2);
}

BOOL ot::Mle::RouterIdSet::Contains(ot::Mle::RouterIdSet *this, unsigned __int8 a2)
{
  v3 = *(this + a2 / 8);
  return (v3 & ot::Mle::RouterIdSet::MaskFor(a2)) != 0;
}

{
  return ot::Mle::RouterIdSet::Contains(this, a2);
}

uint64_t ot::Ip6::Address::SetToRoutingLocator(ot::Ip6::Address *a1, const ot::Ip6::NetworkPrefix *a2, unsigned __int16 a3)
{
  return ot::Ip6::Address::SetToLocator(a1, a2, a3);
}

{
  return ot::Ip6::Address::SetToRoutingLocator(a1, a2, a3);
}

uint64_t ot::Mle::Mle::GetMeshLocalPrefix(ot::Mle::Mle *this)
{
  return this + 984;
}

{
  return ot::Mle::Mle::GetMeshLocalPrefix(this);
}

uint64_t ot::Mle::Rloc16FromRouterId(ot::Mle *this)
{
  return (this << 10);
}

{
  return ot::Mle::Rloc16FromRouterId(this);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkDiagnostic::Client>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::NetworkDiagnostic::Client>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkDiagnostic::Client>(a1);
}

_BYTE *ot::Utils::MeshDiag::HandleDiagGetResponse(_BYTE *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  ot::AsCoapMessagePtr();
  v7 = v4;
  ot::AsCoreTypePtr<otMessageInfo>();
  return ot::Utils::MeshDiag::HandleDiagGetResponse(a1, v7, v5, a4);
}

void *ot::CallbackBase<void (*)(otError,otMeshDiagRouterInfo *,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(otError,otMeshDiagRouterInfo *,void *)>::Set(result, a2, a3);
}

_BYTE *ot::Utils::MeshDiag::HandleDiagGetResponse(_BYTE *result, ot::Message *a2, uint64_t a3, unsigned int a4)
{
  v14 = result;
  v13 = a2;
  v12 = a3;
  v11[1] = a4;
  v7 = result;
  v11[0] = 0;
  if (!a4)
  {
    if (v13)
    {
      if (*result == 1)
      {
        result = ot::Utils::MeshDiag::RouterInfo::ParseFrom(v15, v13);
        if (!result)
        {
          if (!ot::Utils::MeshDiag::Ip6AddrIterator::InitFrom(v10, v13, v4, v5))
          {
            v18 = v10;
          }

          if (!ot::Utils::MeshDiag::ChildIterator::InitFrom(v9, v13, v16, v6))
          {
            v19 = v9;
          }

          ot::Mle::RouterIdSet::Remove((v7 + 48), v17);
          if (ot::Mle::RouterIdSet::GetNumberOfAllocatedIds((v7 + 48)))
          {
            v11[0] = 36;
          }

          else
          {
            v11[0] = 0;
            *v7 = 0;
            ot::TimerMilli::Stop((v7 + 8));
          }

          v8 = v15;
          return ot::Callback<void (*)(otError,otMeshDiagRouterInfo *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,ot::Utils::MeshDiag::RouterInfo *>(v7 + 4, v11, &v8);
        }
      }
    }
  }

  return result;
}

void ot::AsCoapMessagePtr()
{
  ;
}

{
  ot::AsCoapMessagePtr();
}

void ot::AsCoreTypePtr<otMessageInfo>()
{
  ;
}

{
  ot::AsCoreTypePtr<otMessageInfo>();
}

uint64_t ot::Utils::MeshDiag::RouterInfo::ParseFrom(ot::Utils::MeshDiag::RouterInfo *this, const ot::Message *a2)
{
  v20 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(a2);
  ot::Clearable<ot::Utils::MeshDiag::RouterInfo>::Clear(this);
  v21 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(a2, this + 8);
  if (!v21)
  {
    ot::AsCoreType<otExtAddress>(this);
    v21 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)0,ot::Mac::ExtAddress>>(a2, v2, v3, v4, v5);
    if (!v21)
    {
      v21 = ot::Tlv::FindTlv<ot::NetworkDiagnostic::RouteTlv>(a2, v23, v6, v7, v8, v9);
      if (!v21)
      {
        v16 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)24,unsigned short>>(a2, this + 12);
        v21 = v16;
        if (v16)
        {
          if (v16 != 23)
          {
            return v21;
          }

          *(this + 6) = -1;
          v21 = 0;
        }

        *(this + 10) = ot::Mle::RouterIdFromRloc16(*(this + 4));
        *(this + 14) = *(this + 14) & 0xFE | ot::Mle::Mle::HasRloc16(v20, *(this + 4));
        v15 = 0;
        if (ot::Mle::Mle::IsChild(v20))
        {
          v14 = *(this + 4);
          Parent = ot::Mle::Mle::GetParent(v20);
          v15 = v14 == ot::Neighbor::GetRloc16(Parent);
        }

        *(this + 14) = *(this + 14) & 0xFD | (2 * v15);
        v13 = *(this + 10);
        *(this + 14) = *(this + 14) & 0xFB | (4 * (v13 == ot::Mle::Mle::GetLeaderId(v20)));
        v11 = ot::GetProvider<ot::Message>::Get<ot::NetworkData::Leader>(a2);
        *(this + 14) = *(this + 14) & 0xF7 | (8 * ot::NetworkData::NetworkData::ContainsBorderRouterWithRloc(v11, *(this + 4)));
        v19 = 0;
        v18 = 0;
        while (v19 <= 0x3Eu)
        {
          if (ot::Mle::RouteTlv::IsRouterIdSet(v23, v19))
          {
            *(this + v19 + 15) = ot::Mle::RouteTlv::GetLinkQualityIn(v23, v18++);
          }

          ++v19;
        }
      }
    }
  }

  return v21;
}

uint64_t ot::Utils::MeshDiag::Ip6AddrIterator::InitFrom(ot::Utils::MeshDiag::Ip6AddrIterator *this, const ot::Message *a2, uint64_t a3, ot::OffsetRange *a4)
{
  TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(a2, 8, this + 2, a4);
  if (!TlvValueOffsetRange)
  {
    *this = a2;
  }

  return TlvValueOffsetRange;
}

uint64_t ot::Utils::MeshDiag::ChildIterator::InitFrom(ot::Utils::MeshDiag::ChildIterator *this, const ot::Message *a2, __int16 a3, ot::OffsetRange *a4)
{
  TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(a2, 0x10, this + 2, a4);
  if (!TlvValueOffsetRange)
  {
    *this = a2;
    *(this + 6) = a3;
  }

  return TlvValueOffsetRange;
}

uint64_t ot::Mle::RouterIdSet::Remove(ot::Mle::RouterIdSet *this, unsigned __int8 a2)
{
  result = ot::Mle::RouterIdSet::MaskFor(a2);
  *(this + a2 / 8) &= ~result;
  return result;
}

{
  return ot::Mle::RouterIdSet::Remove(this, a2);
}

void *ot::Callback<void (*)(otError,otMeshDiagRouterInfo *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,ot::Utils::MeshDiag::RouterInfo *>(void *result, unsigned int *a2, void *a3)
{
  if (*result)
  {
    return ot::Callback<void (*)(otError,otMeshDiagRouterInfo *,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,ot::Utils::MeshDiag::RouterInfo *>(result, a2, a3);
  }

  return result;
}

{
  return ot::Callback<void (*)(otError,otMeshDiagRouterInfo *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,ot::Utils::MeshDiag::RouterInfo *>(result, a2, a3);
}

uint64_t ot::Utils::MeshDiag::SendQuery(ot::Utils::MeshDiag *this, unsigned __int16 a2, const unsigned __int8 *a3, unsigned __int8 a4)
{
  v19 = this;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = 0;
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  if (ot::Mle::Mle::IsAttached(v4))
  {
    if (*this)
    {
      return 5;
    }

    else if (ot::Mle::IsRouterRloc16(v18, v5))
    {
      v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
      v6 = ot::Mle::RouterIdFromRloc16(v18);
      if (ot::RouterTable::IsAllocated(v12, v6))
      {
        v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
        MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v7);
        ot::Ip6::Address::SetToRoutingLocator(v14, MeshLocalPrefix, v18);
        v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkDiagnostic::Client>(this);
        v15 = ot::NetworkDiagnostic::Client::SendCommand(v9, 0x23u, 1u, v14, v17, v16, 0, 0);
        if (!v15)
        {
          v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkDiagnostic::Client>(this);
          *(this + 1) = ot::NetworkDiagnostic::Client::GetLastQueryId(v10);
          *(this + 2) = 0;
          ot::TimerMilli::Start((this + 8), 0x1388u);
        }
      }

      else
      {
        return 23;
      }
    }

    else
    {
      return 7;
    }
  }

  else
  {
    return 13;
  }

  return v15;
}

BOOL ot::Mle::IsRouterRloc16(ot::Mle *this, unsigned __int16 a2)
{
  return ot::Mle::ChildIdFromRloc16(this) == 0;
}

{
  return ot::Mle::IsRouterRloc16(this, a2);
}

BOOL ot::RouterTable::IsAllocated(ot::RouterTable *this, unsigned __int8 a2)
{
  return ot::RouterTable::RouterIdMap::IsAllocated((this + 4640), a2);
}

{
  return ot::RouterTable::IsAllocated(this, a2);
}

uint64_t ot::Mle::RouterIdFromRloc16(ot::Mle *this)
{
  return this >> 10;
}

{
  return ot::Mle::RouterIdFromRloc16(this);
}

uint64_t ot::NetworkDiagnostic::Client::GetLastQueryId(ot::NetworkDiagnostic::Client *this)
{
  return *this;
}

{
  return ot::NetworkDiagnostic::Client::GetLastQueryId(this);
}

uint64_t ot::Utils::MeshDiag::QueryChildTable(ot::Utils::MeshDiag *a1, unsigned __int16 a2, uint64_t a3, uint64_t a4)
{
  v6 = ot::Utils::MeshDiag::SendQuery(a1, a2, &ot::Utils::MeshDiag::QueryChildTable(unsigned short,void (*)(otError,otMeshDiagChildEntry const*,void *),void *)::kTlvTypes, 1u);
  if (!v6)
  {
    ot::CallbackBase<void (*)(otError,otMeshDiagChildEntry const*,void *)>::Set(a1 + 4, a3, a4);
    *(a1 + 24) = a2;
    *a1 = 2;
  }

  return v6;
}

void *ot::CallbackBase<void (*)(otError,otMeshDiagChildEntry const*,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(otError,otMeshDiagChildEntry const*,void *)>::Set(result, a2, a3);
}

uint64_t ot::Utils::MeshDiag::QueryChildrenIp6Addrs(ot::Utils::MeshDiag *a1, unsigned __int16 a2, uint64_t a3, uint64_t a4)
{
  v6 = ot::Utils::MeshDiag::SendQuery(a1, a2, &ot::Utils::MeshDiag::QueryChildrenIp6Addrs(unsigned short,void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),void *)::kTlvTypes, 1u);
  if (!v6)
  {
    ot::CallbackBase<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *)>::Set(a1 + 4, a3, a4);
    *(a1 + 24) = a2;
    *a1 = 3;
  }

  return v6;
}

void *ot::CallbackBase<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *)>::Set(result, a2, a3);
}

uint64_t ot::Utils::MeshDiag::QueryRouterNeighborTable(ot::Utils::MeshDiag *a1, unsigned __int16 a2, uint64_t a3, uint64_t a4)
{
  v6 = ot::Utils::MeshDiag::SendQuery(a1, a2, &ot::Utils::MeshDiag::QueryRouterNeighborTable(unsigned short,void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),void *)::kTlvTypes, 1u);
  if (!v6)
  {
    ot::CallbackBase<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *)>::Set(a1 + 4, a3, a4);
    *(a1 + 24) = a2;
    *a1 = 4;
  }

  return v6;
}

void *ot::CallbackBase<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *)>::Set(result, a2, a3);
}

uint64_t ot::Utils::MeshDiag::HandleDiagnosticGetAnswer(ot::Utils::MeshDiag *this, ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v5 = 0;
  v4 = *this;
  switch(v4)
  {
    case 2:
      v5 = ot::Utils::MeshDiag::ProcessChildTableAnswer(this, a2, a3);
      break;
    case 3:
      v5 = ot::Utils::MeshDiag::ProcessChildrenIp6AddrsAnswer(this, a2, a3);
      break;
    case 4:
      v5 = ot::Utils::MeshDiag::ProcessRouterNeighborTableAnswer(this, a2, a3);
      break;
  }

  return v5 & 1;
}

uint64_t ot::Utils::MeshDiag::ProcessChildTableAnswer(ot::Utils::MeshDiag *this, ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v17 = this;
  v16 = a2;
  v15 = a3;
  v14 = 0;
  v13 = 0;
  if (!ot::Utils::MeshDiag::ProcessMessage(this, a2, a3, *(this + 24)))
  {
    while (!ot::Tlv::FindTlv<ot::NetworkDiagnostic::ChildTlv>(v16, v19, &v13, v3, v4, v5) && !ot::Tlv::IsExtended(v19))
    {
      v14 = 1;
      if (!ot::Tlv::GetLength(v19))
      {
        *this = 0;
        ot::TimerMilli::Stop((this + 8));
        v12 = 0;
        ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,decltype(nullptr)>(this + 4, &ot::kErrorNone, &v12);
        return v14 & 1;
      }

      if (ot::Tlv::GetLength(v19) < 0x2BuLL)
      {
        return v14 & 1;
      }

      ot::Message::Read<ot::NetworkDiagnostic::ChildTlv>(v16, v13, v19);
      IgnoreError();
      ot::Utils::MeshDiag::ChildEntry::SetFrom(v18, v19);
      v11 = v18;
      ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,ot::Utils::MeshDiag::ChildEntry *>(this + 4, &ot::kErrorPending, &v11);
      if (*this != 2)
      {
        return v14 & 1;
      }

      v9 = v16;
      v8 = v13;
      Size = ot::Tlv::GetSize(v19);
      ot::Message::SetOffset(v9, v8 + Size);
    }
  }

  return v14 & 1;
}

uint64_t ot::Utils::MeshDiag::ProcessChildrenIp6AddrsAnswer(ot::Utils::MeshDiag *this, ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v19 = this;
  v18 = a2;
  v17 = a3;
  v16 = 0;
  if (!ot::Utils::MeshDiag::ProcessMessage(this, a2, a3, *(this + 24)))
  {
    while (!ot::Tlv::FindTlvValueOffsetRange(v18, 0x1E, &v15, v3))
    {
      v16 = 1;
      if (ot::OffsetRange::IsEmpty(&v15))
      {
        *this = 0;
        ot::TimerMilli::Stop((this + 8));
        v11 = 0;
        ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,unsigned short const&,decltype(nullptr)>(this + 4, &ot::kErrorNone, &ot::Mle::kInvalidRloc16, &v11);
        return v16 & 1;
      }

      if (ot::Message::Read<ot::NetworkDiagnostic::ChildIp6AddressListTlvValue>(v18, &v15, v14))
      {
        return v16 & 1;
      }

      ot::OffsetRange::AdvanceOffset(&v15, 2u);
      v12 = v18;
      v13 = v15;
      Rloc16 = ot::NetworkDiagnostic::ChildIp6AddressListTlvValue::GetRloc16(v14, v4);
      v9 = &v12;
      ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,unsigned short,ot::Utils::MeshDiag::Ip6AddrIterator *>(this + 4, &ot::kErrorPending, &Rloc16, &v9);
      if (*this != 3)
      {
        return v16 & 1;
      }

      v7 = v18;
      EndOffset = ot::OffsetRange::GetEndOffset(&v15);
      ot::Message::SetOffset(v7, EndOffset);
    }
  }

  return v16 & 1;
}

uint64_t ot::Utils::MeshDiag::ProcessRouterNeighborTableAnswer(ot::Utils::MeshDiag *this, ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v17 = this;
  v16 = a2;
  v15 = a3;
  v14 = 0;
  v13 = 0;
  if (!ot::Utils::MeshDiag::ProcessMessage(this, a2, a3, *(this + 24)))
  {
    while (!ot::Tlv::FindTlv<ot::NetworkDiagnostic::RouterNeighborTlv>(v16, v19, &v13, v3, v4, v5) && !ot::Tlv::IsExtended(v19))
    {
      v14 = 1;
      if (!ot::Tlv::GetLength(v19))
      {
        *this = 0;
        ot::TimerMilli::Stop((this + 8));
        v12 = 0;
        ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,decltype(nullptr)>(this + 4, &ot::kErrorNone, &v12);
        return v14 & 1;
      }

      if (ot::Tlv::GetLength(v19) < 0x18uLL)
      {
        return v14 & 1;
      }

      ot::Utils::MeshDiag::RouterNeighborEntry::SetFrom(v18, v19);
      v11 = v18;
      ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,ot::Utils::MeshDiag::RouterNeighborEntry *>(this + 4, &ot::kErrorPending, &v11);
      if (*this != 4)
      {
        return v14 & 1;
      }

      v9 = v16;
      v8 = v13;
      Size = ot::Tlv::GetSize(v19);
      ot::Message::SetOffset(v9, v8 + Size);
    }
  }

  return v14 & 1;
}

uint64_t ot::Utils::MeshDiag::ProcessMessage(ot::Utils::MeshDiag *this, ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3, unsigned __int16 a4)
{
  v22 = this;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = 1;
  v16 = 0;
  v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  ot::Ip6::MessageInfo::GetPeerAddr(v20);
  if (ot::Mle::Mle::IsRoutingLocator(v14, v4))
  {
    ot::Ip6::MessageInfo::GetPeerAddr(v20);
    Iid = ot::Ip6::Address::GetIid(v5);
    if (ot::Ip6::InterfaceIdentifier::GetLocator(Iid, v7) == v19 && !ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)33,unsigned short>>(v21, &v16) && v16 == *(this + 1) && !ot::Tlv::FindTlv<ot::NetworkDiagnostic::AnswerTlv>(v21, v17, v8, v9, v10, v11))
    {
      if (ot::NetworkDiagnostic::AnswerTlv::GetIndex(v17, v12) == *(this + 2))
      {
        ++*(this + 2);
        return 0;
      }

      else
      {
        ot::Utils::MeshDiag::Finalize(this, 28);
      }
    }
  }

  return v18;
}

void ot::Ip6::MessageInfo::GetPeerAddr(ot::Ip6::MessageInfo *this)
{
  ot::AsCoreType<otIp6Address>(this + 16);
}

{
  ot::AsCoreType<otIp6Address>(this + 16);
}

{
  ot::Ip6::MessageInfo::GetPeerAddr(this);
}

{
  ot::Ip6::MessageInfo::GetPeerAddr(this);
}

uint64_t ot::Ip6::Address::GetIid(ot::Ip6::Address *this)
{
  return this + 8;
}

{
  return this + 8;
}

{
  return ot::Ip6::Address::GetIid(this);
}

{
  return ot::Ip6::Address::GetIid(this);
}

uint64_t ot::Ip6::InterfaceIdentifier::GetLocator(ot::Ip6::InterfaceIdentifier *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 3), a2);
}

{
  return ot::Ip6::InterfaceIdentifier::GetLocator(this, a2);
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)33,unsigned short>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned short>(a1, 0x21u, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)33,unsigned short>>(a1, a2);
}

uint64_t ot::Tlv::FindTlv<ot::NetworkDiagnostic::AnswerTlv>(ot::Tlv *a1, char *a2, uint64_t a3, uint64_t a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  return ot::Tlv::FindTlv(a1, 0x20, 4u, a2, a5, a6);
}

{
  return ot::Tlv::FindTlv<ot::NetworkDiagnostic::AnswerTlv>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::NetworkDiagnostic::AnswerTlv::GetIndex(ot::NetworkDiagnostic::AnswerTlv *this, unsigned __int16 a2)
{
  return ot::NetworkDiagnostic::AnswerTlv::GetFlagsIndex(this, a2) & 0x7F;
}

{
  return ot::NetworkDiagnostic::AnswerTlv::GetIndex(this, a2);
}

void *ot::Utils::MeshDiag::Finalize(ot::Utils::MeshDiag *a1, int a2)
{
  v10 = a1;
  v9 = a2;
  v8 = *a1;
  result = ot::Utils::MeshDiag::Cancel(a1);
  if (v8)
  {
    switch(v8)
    {
      case 1:
        v7 = 0;
        return ot::Callback<void (*)(otError,otMeshDiagRouterInfo *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,decltype(nullptr)>(a1 + 4, &v9, &v7);
      case 2:
        v6 = 0;
        return ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,decltype(nullptr)>(a1 + 4, &v9, &v6);
      case 3:
        v5 = 0;
        return ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,unsigned short const&,decltype(nullptr)>(a1 + 4, &v9, &ot::Mle::kInvalidRloc16, &v5);
      case 4:
        v4 = 0;
        return ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,decltype(nullptr)>(a1 + 4, &v9, &v4);
    }
  }

  return result;
}

uint64_t ot::Tlv::FindTlv<ot::NetworkDiagnostic::ChildTlv>(ot::Tlv *a1, char *a2, ot::Tlv *a3, uint64_t a4, uint64_t a5, unsigned __int16 *a6)
{
  return ot::Tlv::FindTlv(a1, 0x1D, 0x2Du, a2, a3, a6);
}

{
  return ot::Tlv::FindTlv<ot::NetworkDiagnostic::ChildTlv>(a1, a2, a3, a4, a5, a6);
}

BOOL ot::Tlv::IsExtended(ot::Tlv *this)
{
  return *(this + 1) == 255;
}

{
  return ot::Tlv::IsExtended(this);
}

uint64_t ot::Tlv::GetLength(ot::Tlv *this)
{
  return *(this + 1);
}

{
  return ot::Tlv::GetLength(this);
}

void *ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,decltype(nullptr)>(void *result, unsigned int *a2, uint64_t a3)
{
  if (*result)
  {
    return ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,decltype(nullptr)>(result, a2);
  }

  return result;
}

{
  return ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,decltype(nullptr)>(result, a2, a3);
}

uint64_t ot::Message::Read<ot::NetworkDiagnostic::ChildTlv>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0x2Du);
}

{
  return ot::Message::Read<ot::NetworkDiagnostic::ChildTlv>(a1, a2, a3);
}

uint64_t ot::Utils::MeshDiag::ChildEntry::SetFrom(ot::Utils::MeshDiag::ChildEntry *this, const ot::NetworkDiagnostic::ChildTlv *a2)
{
  *this = *this & 0xFE | ((ot::NetworkDiagnostic::ChildTlv::GetFlags(a2) & 0x80) != 0);
  *this = *this & 0xFD | (2 * ((ot::NetworkDiagnostic::ChildTlv::GetFlags(a2) & 0x40) != 0));
  *this = *this & 0xFB | (4 * ((ot::NetworkDiagnostic::ChildTlv::GetFlags(a2) & 0x20) != 0));
  *this = *this & 0xF7 | (8 * ((ot::NetworkDiagnostic::ChildTlv::GetFlags(a2) & 0x10) != 0));
  *this = *this & 0xEF | (16 * ((ot::NetworkDiagnostic::ChildTlv::GetFlags(a2) & 8) != 0));
  *(this + 1) = ot::NetworkDiagnostic::ChildTlv::GetRloc16(a2, v2);
  *(this + 4) = *ot::NetworkDiagnostic::ChildTlv::GetExtAddress(a2);
  *(this + 6) = ot::NetworkDiagnostic::ChildTlv::GetVersion(a2, v3);
  *(this + 4) = ot::NetworkDiagnostic::ChildTlv::GetTimeout(a2, v4);
  *(this + 5) = ot::NetworkDiagnostic::ChildTlv::GetAge(a2, v5);
  *(this + 6) = ot::NetworkDiagnostic::ChildTlv::GetConnectionTime(a2, v6);
  *(this + 14) = ot::NetworkDiagnostic::ChildTlv::GetSupervisionInterval(a2, v7);
  *(this + 30) = ot::NetworkDiagnostic::ChildTlv::GetLinkMargin(a2);
  *(this + 31) = ot::NetworkDiagnostic::ChildTlv::GetAverageRssi(a2);
  *(this + 32) = ot::NetworkDiagnostic::ChildTlv::GetLastRssi(a2);
  *(this + 17) = ot::NetworkDiagnostic::ChildTlv::GetFrameErrorRate(a2, v8);
  *(this + 18) = ot::NetworkDiagnostic::ChildTlv::GetMessageErrorRate(a2, v9);
  *(this + 19) = ot::NetworkDiagnostic::ChildTlv::GetQueuedMessageCount(a2, v10);
  *(this + 20) = ot::NetworkDiagnostic::ChildTlv::GetCslPeriod(a2, v11);
  *(this + 11) = ot::NetworkDiagnostic::ChildTlv::GetCslTimeout(a2, v12);
  result = ot::NetworkDiagnostic::ChildTlv::GetCslChannel(a2);
  *(this + 48) = result;
  return result;
}

void *ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,ot::Utils::MeshDiag::ChildEntry *>(void *result, unsigned int *a2, void *a3)
{
  if (*result)
  {
    return ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,ot::Utils::MeshDiag::ChildEntry *>(result, a2, a3);
  }

  return result;
}

{
  return ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,ot::Utils::MeshDiag::ChildEntry *>(result, a2, a3);
}

uint64_t ot::Tlv::FindTlv<ot::NetworkDiagnostic::RouterNeighborTlv>(ot::Tlv *a1, char *a2, ot::Tlv *a3, uint64_t a4, uint64_t a5, unsigned __int16 *a6)
{
  return ot::Tlv::FindTlv(a1, 0x1F, 0x1Au, a2, a3, a6);
}

{
  return ot::Tlv::FindTlv<ot::NetworkDiagnostic::RouterNeighborTlv>(a1, a2, a3, a4, a5, a6);
}

void *ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,decltype(nullptr)>(void *result, unsigned int *a2, uint64_t a3)
{
  if (*result)
  {
    return ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,decltype(nullptr)>(result, a2);
  }

  return result;
}

{
  return ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,decltype(nullptr)>(result, a2, a3);
}

uint64_t ot::Utils::MeshDiag::RouterNeighborEntry::SetFrom(ot::Utils::MeshDiag::RouterNeighborEntry *this, const ot::NetworkDiagnostic::RouterNeighborTlv *a2)
{
  *this = *this & 0xFE | ((ot::NetworkDiagnostic::RouterNeighborTlv::GetFlags(a2) & 0x80) != 0);
  *(this + 1) = ot::NetworkDiagnostic::RouterNeighborTlv::GetRloc16(a2, v2);
  *(this + 4) = *ot::NetworkDiagnostic::RouterNeighborTlv::GetExtAddress(a2);
  *(this + 6) = ot::NetworkDiagnostic::RouterNeighborTlv::GetVersion(a2, v3);
  *(this + 4) = ot::NetworkDiagnostic::RouterNeighborTlv::GetConnectionTime(a2, v4);
  *(this + 20) = ot::NetworkDiagnostic::RouterNeighborTlv::GetLinkMargin(a2);
  *(this + 21) = ot::NetworkDiagnostic::RouterNeighborTlv::GetAverageRssi(a2);
  *(this + 22) = ot::NetworkDiagnostic::RouterNeighborTlv::GetLastRssi(a2);
  *(this + 12) = ot::NetworkDiagnostic::RouterNeighborTlv::GetFrameErrorRate(a2, v5);
  result = ot::NetworkDiagnostic::RouterNeighborTlv::GetMessageErrorRate(a2, v6);
  *(this + 13) = result;
  return result;
}

void *ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,ot::Utils::MeshDiag::RouterNeighborEntry *>(void *result, unsigned int *a2, void *a3)
{
  if (*result)
  {
    return ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,ot::Utils::MeshDiag::RouterNeighborEntry *>(result, a2, a3);
  }

  return result;
}

{
  return ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,ot::Utils::MeshDiag::RouterNeighborEntry *>(result, a2, a3);
}

BOOL ot::OffsetRange::IsEmpty(ot::OffsetRange *this)
{
  return *(this + 1) == 0;
}

{
  return ot::OffsetRange::IsEmpty(this);
}

void *ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,unsigned short const&,decltype(nullptr)>(void *result, unsigned int *a2, unsigned __int16 *a3, uint64_t a4)
{
  if (*result)
  {
    return ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,unsigned short const&,decltype(nullptr)>(result, a2, a3);
  }

  return result;
}

{
  return ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,unsigned short const&,decltype(nullptr)>(result, a2, a3, a4);
}

uint64_t ot::Message::Read<ot::NetworkDiagnostic::ChildIp6AddressListTlvValue>(ot::Message *a1, const ot::OffsetRange *a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 2u);
}

{
  return ot::Message::Read<ot::NetworkDiagnostic::ChildIp6AddressListTlvValue>(a1, a2, a3);
}

void *ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,unsigned short,ot::Utils::MeshDiag::Ip6AddrIterator *>(void *result, unsigned int *a2, unsigned __int16 *a3, void *a4)
{
  if (*result)
  {
    return ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,unsigned short,ot::Utils::MeshDiag::Ip6AddrIterator *>(result, a2, a3, a4);
  }

  return result;
}

{
  return ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError const&,unsigned short,ot::Utils::MeshDiag::Ip6AddrIterator *>(result, a2, a3, a4);
}

uint64_t ot::NetworkDiagnostic::ChildIp6AddressListTlvValue::GetRloc16(ot::NetworkDiagnostic::ChildIp6AddressListTlvValue *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*this, a2);
}

{
  return ot::NetworkDiagnostic::ChildIp6AddressListTlvValue::GetRloc16(this, a2);
}

uint64_t ot::OffsetRange::GetEndOffset(ot::OffsetRange *this)
{
  return (*this + *(this + 1));
}

{
  return ot::OffsetRange::GetEndOffset(this);
}

uint64_t ot::Utils::MeshDiag::Cancel(ot::Utils::MeshDiag *this)
{
  if (*this && *this == 1)
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
    ot::Coap::CoapBase::AbortTransaction(v1, ot::Utils::MeshDiag::HandleDiagGetResponse, this);
    IgnoreError();
  }

  *this = 0;
  return ot::TimerMilli::Stop((this + 8));
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Tmf::Agent>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
}

void *ot::Callback<void (*)(otError,otMeshDiagRouterInfo *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,decltype(nullptr)>(void *result, unsigned int *a2, uint64_t a3)
{
  if (*result)
  {
    return ot::Callback<void (*)(otError,otMeshDiagRouterInfo *,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,decltype(nullptr)>(result, a2);
  }

  return result;
}

{
  return ot::Callback<void (*)(otError,otMeshDiagRouterInfo *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,decltype(nullptr)>(result, a2, a3);
}

void *ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,decltype(nullptr)>(void *result, unsigned int *a2, uint64_t a3)
{
  if (*result)
  {
    return ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,decltype(nullptr)>(result, a2);
  }

  return result;
}

{
  return ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,decltype(nullptr)>(result, a2, a3);
}

void *ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,unsigned short const&,decltype(nullptr)>(void *result, unsigned int *a2, unsigned __int16 *a3, uint64_t a4)
{
  if (*result)
  {
    return ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,unsigned short const&,decltype(nullptr)>(result, a2, a3);
  }

  return result;
}

{
  return ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,unsigned short const&,decltype(nullptr)>(result, a2, a3, a4);
}

void *ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,decltype(nullptr)>(void *result, unsigned int *a2, uint64_t a3)
{
  if (*result)
  {
    return ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,decltype(nullptr)>(result, a2);
  }

  return result;
}

{
  return ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::InvokeIfSet<otError&,decltype(nullptr)>(result, a2, a3);
}

uint64_t ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(ot::Message *a1)
{
  Instance = ot::Message::GetInstance(a1);
  return ot::Instance::Get<ot::Mle::Mle>(Instance);
}

{
  return ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(a1);
}

void *ot::Clearable<ot::Utils::MeshDiag::RouterInfo>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::Utils::MeshDiag::RouterInfo>(a1);
}

{
  return ot::Clearable<ot::Utils::MeshDiag::RouterInfo>::Clear(a1);
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned short>(a1, 1u, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)1,unsigned short>>(a1, a2);
}

uint64_t ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)0,ot::Mac::ExtAddress>>(ot::Tlv *a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int16 a5)
{
  return ot::Tlv::FindTlv(a1, 0, a2, 8);
}

{
  return ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)0,ot::Mac::ExtAddress>>(a1, a2, a3, a4, a5);
}

uint64_t ot::Tlv::FindTlv<ot::NetworkDiagnostic::RouteTlv>(ot::Tlv *a1, char *a2, uint64_t a3, uint64_t a4, ot::Tlv *a5, unsigned __int16 *a6)
{
  return ot::Tlv::FindTlv(a1, 5, 0x4Au, a2, a5, a6);
}

{
  return ot::Tlv::FindTlv<ot::NetworkDiagnostic::RouteTlv>(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)24,unsigned short>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned short>(a1, 0x18u, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)24,unsigned short>>(a1, a2);
}

BOOL ot::Mle::Mle::HasRloc16(ot::Mle::Mle *this, unsigned __int16 a2)
{
  return *(this + 72) == a2;
}

{
  return ot::Mle::Mle::HasRloc16(this, a2);
}

uint64_t ot::Mle::Mle::GetLeaderId(ot::Mle::Mle *this)
{
  return ot::Mle::LeaderData::GetLeaderRouterId((this + 184));
}

{
  return ot::Mle::Mle::GetLeaderId(this);
}

uint64_t ot::GetProvider<ot::Message>::Get<ot::NetworkData::Leader>(ot::Message *a1)
{
  Instance = ot::Message::GetInstance(a1);
  return ot::Instance::Get<ot::NetworkData::Leader>(Instance);
}

{
  return ot::GetProvider<ot::Message>::Get<ot::NetworkData::Leader>(a1);
}

BOOL ot::Mle::RouteTlv::IsRouterIdSet(ot::Mle::RouteTlv *this, unsigned __int8 a2)
{
  return ot::Mle::RouterIdSet::Contains((this + 3), a2);
}

{
  return ot::Mle::RouteTlv::IsRouterIdSet(this, a2);
}

uint64_t ot::Mle::RouteTlv::GetLinkQualityIn(ot::Mle::RouteTlv *this, unsigned __int8 a2)
{
  return (*(this + a2 + 11) & 0x30) >> 4;
}

{
  return ot::Mle::RouteTlv::GetLinkQualityIn(this, a2);
}

uint64_t ot::Utils::MeshDiag::Ip6AddrIterator::GetNextAddress(ot::Utils::MeshDiag::Ip6AddrIterator *this, ot::Ip6::Address *a2)
{
  v4 = 0;
  if (*this)
  {
    if (ot::Message::Read<ot::Ip6::Address>(*this, (this + 8), a2))
    {
      return 23;
    }

    else
    {
      ot::OffsetRange::AdvanceOffset(this + 4, 0x10u);
    }
  }

  else
  {
    return 23;
  }

  return v4;
}

uint64_t ot::Message::Read<ot::Ip6::Address>(ot::Message *a1, const ot::OffsetRange *a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0x10u);
}

{
  return ot::Message::Read<ot::Ip6::Address>(a1, a2, a3);
}

uint64_t ot::Utils::MeshDiag::ChildIterator::GetNextChildInfo(void *a1, uint64_t a2)
{
  v17 = a1;
  v16 = a2;
  v15 = 0;
  if (*a1)
  {
    if (ot::Message::Read<ot::NetworkDiagnostic::ChildTableEntry>(*a1, (a1 + 1), v14))
    {
      return 23;
    }

    else
    {
      ot::OffsetRange::AdvanceOffset(a1 + 4, 3u);
      v11 = *(a1 + 6);
      ChildId = ot::NetworkDiagnostic::ChildTableEntry::GetChildId(v14, v2);
      *v16 = v11 + ChildId;
      Mode = ot::NetworkDiagnostic::ChildTableEntry::GetMode(v14);
      ot::Mle::DeviceMode::Get(&Mode, (v16 + 2));
      LinkQuality = ot::NetworkDiagnostic::ChildTableEntry::GetLinkQuality(v14, v4);
      *(v16 + 3) = LinkQuality;
      v6 = ot::GetProvider<ot::Message>::Get<ot::Mle::Mle>(*a1);
      HasRloc16 = ot::Mle::Mle::HasRloc16(v6, *v16);
      *(v16 + 4) = *(v16 + 4) & 0xFE | HasRloc16;
      v8 = ot::GetProvider<ot::Message>::Get<ot::NetworkData::Leader>(*a1);
      v9 = ot::NetworkData::NetworkData::ContainsBorderRouterWithRloc(v8, *v16);
      *(v16 + 4) = *(v16 + 4) & 0xFD | (2 * v9);
    }
  }

  else
  {
    return 23;
  }

  return v15;
}

uint64_t ot::Message::Read<ot::NetworkDiagnostic::ChildTableEntry>(ot::Message *a1, const ot::OffsetRange *a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 3u);
}

{
  return ot::Message::Read<ot::NetworkDiagnostic::ChildTableEntry>(a1, a2, a3);
}

uint64_t ot::NetworkDiagnostic::ChildTableEntry::GetChildId(ot::NetworkDiagnostic::ChildTableEntry *this, unsigned __int16 a2)
{
  return ot::NetworkDiagnostic::ChildTableEntry::GetTimeoutChildId(this, a2) & 0x1FF;
}

{
  return ot::NetworkDiagnostic::ChildTableEntry::GetChildId(this, a2);
}

uint64_t ot::NetworkDiagnostic::ChildTableEntry::GetMode(ot::NetworkDiagnostic::ChildTableEntry *this)
{
  ot::Mle::DeviceMode::DeviceMode(&v2, *(this + 2));
  return v2;
}

{
  return ot::NetworkDiagnostic::ChildTableEntry::GetMode(this);
}

uint64_t ot::NetworkDiagnostic::ChildTableEntry::GetLinkQuality(ot::NetworkDiagnostic::ChildTableEntry *this, unsigned __int16 a2)
{
  return (ot::NetworkDiagnostic::ChildTableEntry::GetTimeoutChildId(this, a2) & 0x600) >> 9;
}

{
  return ot::NetworkDiagnostic::ChildTableEntry::GetLinkQuality(this, a2);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetFlags(ot::NetworkDiagnostic::ChildTlv *this)
{
  return *(this + 2);
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetFlags(this);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetRloc16(ot::NetworkDiagnostic::ChildTlv *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 3), a2);
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetRloc16(this, a2);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetExtAddress(ot::NetworkDiagnostic::ChildTlv *this)
{
  return this + 5;
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetExtAddress(this);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetVersion(ot::NetworkDiagnostic::ChildTlv *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 13), a2);
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetVersion(this, a2);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetTimeout(ot::NetworkDiagnostic::ChildTlv *this, unsigned int a2)
{
  return ot::BigEndian::HostSwap32(*(this + 15), a2);
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetTimeout(this, a2);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetAge(ot::NetworkDiagnostic::ChildTlv *this, unsigned int a2)
{
  return ot::BigEndian::HostSwap32(*(this + 19), a2);
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetAge(this, a2);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetConnectionTime(ot::NetworkDiagnostic::ChildTlv *this, unsigned int a2)
{
  return ot::BigEndian::HostSwap32(*(this + 23), a2);
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetConnectionTime(this, a2);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetSupervisionInterval(ot::NetworkDiagnostic::ChildTlv *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 27), a2);
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetSupervisionInterval(this, a2);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetLinkMargin(ot::NetworkDiagnostic::ChildTlv *this)
{
  return *(this + 29);
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetLinkMargin(this);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetAverageRssi(ot::NetworkDiagnostic::ChildTlv *this)
{
  return *(this + 30);
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetAverageRssi(this);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetLastRssi(ot::NetworkDiagnostic::ChildTlv *this)
{
  return *(this + 31);
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetLastRssi(this);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetFrameErrorRate(ot::NetworkDiagnostic::ChildTlv *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 16), a2);
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetFrameErrorRate(this, a2);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetMessageErrorRate(ot::NetworkDiagnostic::ChildTlv *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 17), a2);
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetMessageErrorRate(this, a2);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetQueuedMessageCount(ot::NetworkDiagnostic::ChildTlv *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 18), a2);
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetQueuedMessageCount(this, a2);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetCslPeriod(ot::NetworkDiagnostic::ChildTlv *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 19), a2);
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetCslPeriod(this, a2);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetCslTimeout(ot::NetworkDiagnostic::ChildTlv *this, unsigned int a2)
{
  return ot::BigEndian::HostSwap32(*(this + 10), a2);
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetCslTimeout(this, a2);
}

uint64_t ot::NetworkDiagnostic::ChildTlv::GetCslChannel(ot::NetworkDiagnostic::ChildTlv *this)
{
  return *(this + 44);
}

{
  return ot::NetworkDiagnostic::ChildTlv::GetCslChannel(this);
}

uint64_t ot::NetworkDiagnostic::RouterNeighborTlv::GetFlags(ot::NetworkDiagnostic::RouterNeighborTlv *this)
{
  return *(this + 2);
}

{
  return ot::NetworkDiagnostic::RouterNeighborTlv::GetFlags(this);
}

uint64_t ot::NetworkDiagnostic::RouterNeighborTlv::GetRloc16(ot::NetworkDiagnostic::RouterNeighborTlv *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 3), a2);
}

{
  return ot::NetworkDiagnostic::RouterNeighborTlv::GetRloc16(this, a2);
}

uint64_t ot::NetworkDiagnostic::RouterNeighborTlv::GetExtAddress(ot::NetworkDiagnostic::RouterNeighborTlv *this)
{
  return this + 5;
}

{
  return ot::NetworkDiagnostic::RouterNeighborTlv::GetExtAddress(this);
}

uint64_t ot::NetworkDiagnostic::RouterNeighborTlv::GetVersion(ot::NetworkDiagnostic::RouterNeighborTlv *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 13), a2);
}

{
  return ot::NetworkDiagnostic::RouterNeighborTlv::GetVersion(this, a2);
}

uint64_t ot::NetworkDiagnostic::RouterNeighborTlv::GetConnectionTime(ot::NetworkDiagnostic::RouterNeighborTlv *this, unsigned int a2)
{
  return ot::BigEndian::HostSwap32(*(this + 15), a2);
}

{
  return ot::NetworkDiagnostic::RouterNeighborTlv::GetConnectionTime(this, a2);
}

uint64_t ot::NetworkDiagnostic::RouterNeighborTlv::GetLinkMargin(ot::NetworkDiagnostic::RouterNeighborTlv *this)
{
  return *(this + 19);
}

{
  return ot::NetworkDiagnostic::RouterNeighborTlv::GetLinkMargin(this);
}

uint64_t ot::NetworkDiagnostic::RouterNeighborTlv::GetAverageRssi(ot::NetworkDiagnostic::RouterNeighborTlv *this)
{
  return *(this + 20);
}

{
  return ot::NetworkDiagnostic::RouterNeighborTlv::GetAverageRssi(this);
}

uint64_t ot::NetworkDiagnostic::RouterNeighborTlv::GetLastRssi(ot::NetworkDiagnostic::RouterNeighborTlv *this)
{
  return *(this + 21);
}

{
  return ot::NetworkDiagnostic::RouterNeighborTlv::GetLastRssi(this);
}

uint64_t ot::NetworkDiagnostic::RouterNeighborTlv::GetFrameErrorRate(ot::NetworkDiagnostic::RouterNeighborTlv *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 11), a2);
}

{
  return ot::NetworkDiagnostic::RouterNeighborTlv::GetFrameErrorRate(this, a2);
}

uint64_t ot::NetworkDiagnostic::RouterNeighborTlv::GetMessageErrorRate(ot::NetworkDiagnostic::RouterNeighborTlv *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 12), a2);
}

{
  return ot::NetworkDiagnostic::RouterNeighborTlv::GetMessageErrorRate(this, a2);
}

uint64_t ot::Mle::RouterIdSet::MaskFor(ot::Mle::RouterIdSet *this)
{
  return 128 >> (this % 8);
}

{
  return ot::Mle::RouterIdSet::MaskFor(this);
}

uint64_t ot::Mle::ChildIdFromRloc16(ot::Mle *this)
{
  return this & 0x1FF;
}

{
  return ot::Mle::ChildIdFromRloc16(this);
}

BOOL ot::RouterTable::RouterIdMap::IsAllocated(ot::RouterTable::RouterIdMap *this, unsigned __int8 a2)
{
  return *(this + a2) < 0;
}

{
  return ot::RouterTable::RouterIdMap::IsAllocated(this, a2);
}

uint64_t ot::NetworkDiagnostic::AnswerTlv::GetFlagsIndex(ot::NetworkDiagnostic::AnswerTlv *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*(this + 1), a2);
}

{
  return ot::NetworkDiagnostic::AnswerTlv::GetFlagsIndex(this, a2);
}

uint64_t ot::Mle::LeaderData::GetLeaderRouterId(ot::Mle::LeaderData *this)
{
  return *(this + 7);
}

{
  return ot::Mle::LeaderData::GetLeaderRouterId(this);
}

uint64_t ot::NetworkDiagnostic::ChildTableEntry::GetTimeoutChildId(ot::NetworkDiagnostic::ChildTableEntry *this, unsigned __int16 a2)
{
  return ot::BigEndian::HostSwap16(*this, a2);
}

{
  return ot::NetworkDiagnostic::ChildTableEntry::GetTimeoutChildId(this, a2);
}

uint64_t ot::BigEndian::HostSwap32(ot::BigEndian *this, unsigned int a2)
{
  return ot::Swap32(this);
}

{
  return ot::BigEndian::HostSwap32(this, a2);
}

uint64_t ot::Swap32(ot *this)
{
  return ((this & 0xFF00) << 8) | (this << 24) | ((this & 0xFF0000) >> 8) | ((this & 0xFF000000) >> 24);
}

{
  return ot::Swap32(this);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::MeshDiag>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Utils::MeshDiag>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::MeshDiag>(a1);
}

uint64_t ot::Instance::Get<ot::Utils::MeshDiag>(uint64_t a1)
{
  return a1 + 156744;
}

{
  return ot::Instance::Get<ot::Utils::MeshDiag>(a1);
}

uint64_t ot::Instance::Get<ot::RouterTable>(uint64_t a1)
{
  return a1 + 122064;
}

{
  return ot::Instance::Get<ot::RouterTable>(a1);
}

uint64_t ot::Instance::Get<ot::NetworkDiagnostic::Client>(uint64_t a1)
{
  return a1 + 144280;
}

{
  return ot::Instance::Get<ot::NetworkDiagnostic::Client>(a1);
}

uint64_t ot::Callback<void (*)(otError,otMeshDiagRouterInfo *,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,ot::Utils::MeshDiag::RouterInfo *>(uint64_t a1, unsigned int *a2, void *a3)
{
  return (*a1)(*a2, *a3, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otError,otMeshDiagRouterInfo *,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,ot::Utils::MeshDiag::RouterInfo *>(a1, a2, a3);
}

uint64_t ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,decltype(nullptr)>(uint64_t a1, unsigned int *a2)
{
  return (*a1)(*a2, 0, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,decltype(nullptr)>(a1, a2);
}

uint64_t ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,ot::Utils::MeshDiag::ChildEntry *>(uint64_t a1, unsigned int *a2, void *a3)
{
  return (*a1)(*a2, *a3, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,ot::Utils::MeshDiag::ChildEntry *>(a1, a2, a3);
}

uint64_t ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,decltype(nullptr)>(uint64_t a1, unsigned int *a2)
{
  return (*a1)(*a2, 0, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,decltype(nullptr)>(a1, a2);
}

uint64_t ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,ot::Utils::MeshDiag::RouterNeighborEntry *>(uint64_t a1, unsigned int *a2, void *a3)
{
  return (*a1)(*a2, *a3, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,ot::Utils::MeshDiag::RouterNeighborEntry *>(a1, a2, a3);
}

uint64_t ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,unsigned short const&,decltype(nullptr)>(uint64_t a1, unsigned int *a2, unsigned __int16 *a3)
{
  return (*a1)(*a2, *a3, 0, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,unsigned short const&,decltype(nullptr)>(a1, a2, a3);
}

uint64_t ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,unsigned short,ot::Utils::MeshDiag::Ip6AddrIterator *>(uint64_t a1, unsigned int *a2, unsigned __int16 *a3, void *a4)
{
  return (*a1)(*a2, *a3, *a4, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::Invoke<otError const&,unsigned short,ot::Utils::MeshDiag::Ip6AddrIterator *>(a1, a2, a3, a4);
}

uint64_t ot::Instance::Get<ot::Tmf::Agent>(uint64_t a1)
{
  return a1 + 86104;
}

{
  return ot::Instance::Get<ot::Tmf::Agent>(a1);
}

uint64_t ot::Callback<void (*)(otError,otMeshDiagRouterInfo *,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,decltype(nullptr)>(uint64_t a1, unsigned int *a2)
{
  return (*a1)(*a2, 0, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otError,otMeshDiagRouterInfo *,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,decltype(nullptr)>(a1, a2);
}

uint64_t ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,decltype(nullptr)>(uint64_t a1, unsigned int *a2)
{
  return (*a1)(*a2, 0, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otError,otMeshDiagChildEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,decltype(nullptr)>(a1, a2);
}

uint64_t ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,unsigned short const&,decltype(nullptr)>(uint64_t a1, unsigned int *a2, unsigned __int16 *a3)
{
  return (*a1)(*a2, *a3, 0, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otError,unsigned short,otMeshDiagIp6AddrIterator *,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,unsigned short const&,decltype(nullptr)>(a1, a2, a3);
}

uint64_t ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,decltype(nullptr)>(uint64_t a1, unsigned int *a2)
{
  return (*a1)(*a2, 0, *(a1 + 8));
}

{
  return ot::Callback<void (*)(otError,otMeshDiagRouterNeighborEntry const*,void *),(ot::CallbackContextPosition)1>::Invoke<otError&,decltype(nullptr)>(a1, a2);
}

void *ot::Message::GetInstance(ot::Message *this)
{
  MessagePool = ot::Message::GetMessagePool(this);
  return ot::InstanceLocator::GetInstance(MessagePool);
}

{
  return ot::Message::GetInstance(this);
}

uint64_t ot::Message::GetMessagePool(ot::Message *this)
{
  return *(ot::Buffer::GetMetadata(this) + 16);
}

{
  return ot::Message::GetMessagePool(this);
}

void *ot::ClearAllBytes<ot::Utils::MeshDiag::RouterInfo>(void *a1)
{
  return memset(a1, 0, 0x60uLL);
}

{
  return ot::ClearAllBytes<ot::Utils::MeshDiag::RouterInfo>(a1);
}

uint64_t ot::Instance::Get<ot::NetworkData::Leader>(uint64_t a1)
{
  return a1 + 143808;
}

{
  return ot::Instance::Get<ot::NetworkData::Leader>(a1);
}

uint64_t ot::Preference::To2BitUint(ot::Preference *this)
{
  if (this)
  {
    if (this > 0)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    return 0;
  }
}

BOOL ot::Preference::IsValid(ot::Preference *this)
{
  v2 = 1;
  if (this != 1)
  {
    v2 = 1;
    if (this)
    {
      return this == -1;
    }
  }

  return v2;
}

const char *ot::Preference::ToString(ot::Preference *this)
{
  if (!this)
  {
    return "medium";
  }

  v1 = "high";
  if (this <= 0)
  {
    return "low";
  }

  return v1;
}

uint64_t ot::Instance::GetId(ot::Instance *this)
{
  return *(this + 42087);
}

{
  return ot::Instance::GetId(this);
}

unint64_t otInstanceGetUptime(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Uptime>(v1);
  return ot::Uptime::GetUptime(v2);
}

uint64_t ot::Instance::Get<ot::Uptime>(uint64_t a1)
{
  return a1 + 40;
}

{
  return ot::Instance::Get<ot::Uptime>(a1);
}

ot::StringWriter *otInstanceGetUptimeAsString(uint64_t a1, char *a2, __int16 a3)
{
  if (!a2)
  {
    __assert_rtn("otInstanceGetUptimeAsString", "instance_api.cpp", 108, "(aBuffer) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::Uptime>(v3);
  return ot::Uptime::GetUptime(v4, a2, a3);
}

uint64_t otSetStateChangedCallback(uint64_t a1, void (*a2)(unint64_t, void *), uint64_t a3)
{
  ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::Notifier>(v3);
  return ot::Notifier::RegisterCallback(v4, a2, a3);
}

uint64_t ot::Instance::Get<ot::Notifier>(uint64_t a1)
{
  return a1 + 72;
}

{
  return ot::Instance::Get<ot::Notifier>(a1);
}

uint64_t otRemoveStateChangeCallback(uint64_t a1, void (*a2)(unint64_t, void *), uint64_t a3)
{
  ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::Notifier>(v3);
  return ot::Notifier::RemoveCallback(v4, a2, a3);
}

uint64_t otGetRadioVersionString(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Radio>(v1);
  return ot::Radio::GetVersionString(v2);
}

uint64_t ot::Radio::GetVersionString(ot::Radio *this)
{
  ot::Radio::GetInstancePtr(this);
  return otPlatRadioGetVersionString();
}

{
  return ot::Radio::GetVersionString(this);
}

uint64_t otIp6SetEnabled(uint64_t a1, char a2)
{
  v7 = 0;
  ot::AsCoreType<otInstance>(a1);
  v6 = v2;
  v3 = ot::Instance::Get<ot::Mac::LinkRaw>(v2);
  if (ot::Mac::LinkRaw::IsEnabled(v3))
  {
    return 13;
  }

  else
  {
    v4 = ot::Instance::Get<ot::ThreadNetif>(v6);
    if (a2)
    {
      ot::ThreadNetif::Up(v4);
    }

    else
    {
      ot::ThreadNetif::Down(v4);
    }
  }

  return v7;
}

uint64_t ot::Instance::Get<ot::Mac::LinkRaw>(uint64_t a1)
{
  return a1 + 167168;
}

{
  return ot::Instance::Get<ot::Mac::LinkRaw>(a1);
}

BOOL ot::Mac::LinkRaw::IsEnabled(ot::Mac::LinkRaw *this)
{
  return *(this + 1) != 0;
}

{
  return ot::Mac::LinkRaw::IsEnabled(this);
}

uint64_t ot::Instance::Get<ot::ThreadNetif>(uint64_t a1)
{
  return a1 + 85536;
}

{
  return ot::Instance::Get<ot::ThreadNetif>(a1);
}

uint64_t otIp6IsEnabled(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::ThreadNetif>(v1);
  return ot::ThreadNetif::IsUp(v2);
}

uint64_t ot::ThreadNetif::IsUp(ot::ThreadNetif *this)
{
  return *(this + 560) & 1;
}

{
  return ot::ThreadNetif::IsUp(this);
}

uint64_t otIp6GetUnicastAddresses(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::ThreadNetif>(v1);
  ot::Ip6::Netif::GetUnicastAddresses(v2);
  return ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::GetHead(v3);
}

void ot::Ip6::Netif::GetUnicastAddresses(ot::Ip6::Netif *this)
{
  ;
}

{
  ot::Ip6::Netif::GetUnicastAddresses(this);
}

uint64_t ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::GetHead(uint64_t a1)
{
  return *a1;
}

{
  return ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::GetHead(a1);
}

BOOL otIp6HasUnicastAddress(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::ThreadNetif>(v2);
  ot::AsCoreType<otIp6Address>(a2);
  return ot::Ip6::Netif::HasUnicastAddress(v5, v3);
}

uint64_t otIp6AddUnicastAddress(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::ThreadNetif>(v2);
  ot::AsCoreType<otNetifAddress>(a2);
  return ot::Ip6::Netif::AddExternalUnicastAddress(v5, v3);
}

void ot::AsCoreType<otNetifAddress>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otNetifAddress>(a1);
}

uint64_t otIp6RemoveUnicastAddress(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::ThreadNetif>(v2);
  ot::AsCoreType<otIp6Address>(a2);
  return ot::Ip6::Netif::RemoveExternalUnicastAddress(v5, v3);
}

uint64_t otIp6GetMulticastAddresses(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::ThreadNetif>(v1);
  MulticastAddresses = ot::Ip6::Netif::GetMulticastAddresses(v2);
  return ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::GetHead(MulticastAddresses);
}

uint64_t ot::Ip6::Netif::GetMulticastAddresses(ot::Ip6::Netif *this)
{
  return this + 8;
}

{
  return ot::Ip6::Netif::GetMulticastAddresses(this);
}

uint64_t ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::GetHead(uint64_t a1)
{
  return *a1;
}

{
  return *a1;
}

{
  return ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::GetHead(a1);
}

{
  return ot::LinkedList<ot::Ip6::Netif::MulticastAddress>::GetHead(a1);
}

uint64_t otIp6SubscribeMulticastAddress(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::ThreadNetif>(v2);
  ot::AsCoreType<otIp6Address>(a2);
  return ot::Ip6::Netif::SubscribeExternalMulticast(v5, v3);
}

uint64_t otIp6UnsubscribeMulticastAddress(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::ThreadNetif>(v2);
  ot::AsCoreType<otIp6Address>(a2);
  return ot::Ip6::Netif::UnsubscribeExternalMulticast(v5, v3);
}

void *otIp6SetReceiveCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::Ip6::Ip6>(v3);
  return ot::Ip6::Ip6::SetReceiveDatagramCallback(v4, a2, a3);
}

uint64_t ot::Instance::Get<ot::Ip6::Ip6>(uint64_t a1)
{
  return a1 + 85224;
}

{
  return ot::Instance::Get<ot::Ip6::Ip6>(a1);
}

void *ot::Ip6::Ip6::SetReceiveDatagramCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return ot::CallbackBase<void (*)(otMessage *,void *)>::Set((a1 + 8), a2, a3);
}

{
  return ot::Ip6::Ip6::SetReceiveDatagramCallback(a1, a2, a3);
}

uint64_t otIp6SetLargeScopeMulticastReceiveCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::Ip6::Ip6>(v3);
  return ot::Ip6::Ip6::SetLargeScopeMulticastReceiveDatagramCallback(v4, a2, a3);
}

void *otIp6SetAddressCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::ThreadNetif>(v3);
  return ot::Ip6::Netif::SetAddressCallback(v4, a2, a3);
}

void *ot::Ip6::Netif::SetAddressCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return ot::CallbackBase<void (*)(otIp6AddressInfo const*,BOOL,void *)>::Set((a1 + 16), a2, a3);
}

{
  return ot::Ip6::Netif::SetAddressCallback(a1, a2, a3);
}

uint64_t otIp6IsReceiveFilterEnabled(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Ip6::Ip6>(v1);
  return ot::Ip6::Ip6::IsReceiveIp6FilterEnabled(v2);
}

uint64_t ot::Ip6::Ip6::IsReceiveIp6FilterEnabled(ot::Ip6::Ip6 *this)
{
  return *this & 1;
}

{
  return ot::Ip6::Ip6::IsReceiveIp6FilterEnabled(this);
}

_BYTE *otIp6SetReceiveFilterEnabled(uint64_t a1, char a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Ip6::Ip6>(v2);
  return ot::Ip6::Ip6::SetReceiveIp6FilterEnabled(v3, a2 & 1);
}

_BYTE *ot::Ip6::Ip6::SetReceiveIp6FilterEnabled(_BYTE *this, char a2)
{
  *this = a2 & 1;
  return this;
}

{
  return ot::Ip6::Ip6::SetReceiveIp6FilterEnabled(this, a2);
}

uint64_t otIp6Send(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v9 = a2;
  v8 = 0;
  ot::AsCoreType<otMessage>(a2);
  if (ot::Message::IsOriginThreadNetif (v2))
  {
    return 7;
  }

  else
  {
    ot::AsCoreType<otInstance>(v10);
    v6 = ot::Instance::Get<ot::Ip6::Ip6>(v3);
    ot::AsCoreTypePtr<otMessage>();
    ot::OwnedPtr<ot::Message>::OwnedPtr(&v7, v4);
    v8 = ot::Ip6::Ip6::SendRaw(v6, &v7);
    ot::OwnedPtr<ot::Message>::~OwnedPtr(&v7);
  }

  return v8;
}

void ot::AsCoreTypePtr<otMessage>()
{
  ;
}

{
  ot::AsCoreTypePtr<otMessage>();
}

void *ot::OwnedPtr<ot::Message>::OwnedPtr(void *a1, uint64_t a2)
{
  ot::OwnedPtr<ot::Message>::OwnedPtr(a1, a2);
  return a1;
}

{
  ot::Ptr<ot::Message>::Ptr(a1, a2);
  return a1;
}

uint64_t otIp6GetSourceDestinationAddressandPort(uint64_t a1, uint64_t a2, char *a3)
{
  ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::Ip6::Ip6>(v3);
  ot::AsCoreType<otMessage>(a2);
  return ot::Ip6::Ip6::extractAddressAndportfromHeader(v6, v4, a3);
}

ot::Message *otIp6NewMessage(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Ip6::Ip6>(v2);
  v3 = ot::Message::Settings::From(a2);
  return ot::Ip6::Ip6::NewMessage(v5, 0, v3);
}

ot::Message *otIp6NewMessageFromBuffer(uint64_t a1, ot::Ip6::Header *a2, unsigned __int16 a3, uint64_t a4)
{
  ot::AsCoreType<otInstance>(a1);
  v7 = ot::Instance::Get<ot::Ip6::Ip6>(v4);
  v5 = ot::Message::Settings::From(a4);
  return ot::Ip6::Ip6::NewMessageFromData(v7, a2, a3, v5);
}

uint64_t otIp6AddUnsecurePort(uint64_t a1, unsigned __int16 a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Ip6::Filter>(v2);
  return ot::Ip6::Filter::AddUnsecurePort(v3, a2);
}

uint64_t ot::Instance::Get<ot::Ip6::Filter>(uint64_t a1)
{
  return a1 + 88034;
}

{
  return ot::Instance::Get<ot::Ip6::Filter>(a1);
}

uint64_t ot::Ip6::Filter::AddUnsecurePort(ot::Ip6::Filter *this, unsigned __int16 a2)
{
  return ot::Ip6::Filter::UpdateUnsecurePorts(this, 0, a2);
}

{
  return ot::Ip6::Filter::AddUnsecurePort(this, a2);
}

uint64_t otIp6RemoveUnsecurePort(uint64_t a1, unsigned __int16 a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Ip6::Filter>(v2);
  return ot::Ip6::Filter::RemoveUnsecurePort(v3, a2);
}

uint64_t ot::Ip6::Filter::RemoveUnsecurePort(ot::Ip6::Filter *this, unsigned __int16 a2)
{
  return ot::Ip6::Filter::UpdateUnsecurePorts(this, 1, a2);
}

{
  return ot::Ip6::Filter::RemoveUnsecurePort(this, a2);
}

uint64_t otIp6RemoveAllUnsecurePorts(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Ip6::Filter>(v1);
  return ot::Ip6::Filter::RemoveAllUnsecurePorts(v2);
}

uint64_t ot::Ip6::Filter::RemoveAllUnsecurePorts(ot::Ip6::Filter *this)
{
  return ot::Array<unsigned short,(unsigned short)2,unsigned char>::Clear(this);
}

{
  return ot::Ip6::Filter::RemoveAllUnsecurePorts(this);
}

uint64_t otIp6GetUnsecurePorts(uint64_t a1, unsigned __int8 *a2)
{
  if (!a2)
  {
    __assert_rtn("otIp6GetUnsecurePorts", "ip6_api.cpp", 184, "(aNumEntries) != nullptr");
  }

  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Ip6::Filter>(v2);
  return ot::Ip6::Filter::GetUnsecurePorts(v3, a2);
}

uint64_t ot::Ip6::Filter::GetUnsecurePorts(ot::Ip6::Filter *this, unsigned __int8 *a2)
{
  *a2 = ot::Array<unsigned short,(unsigned short)2,unsigned char>::GetLength(this);
  return ot::Array<unsigned short,(unsigned short)2,unsigned char>::operator[](this, 0);
}

{
  return ot::Ip6::Filter::GetUnsecurePorts(this, a2);
}

BOOL otIp6IsAddressEqual(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otIp6Address>(a1);
  v5 = v2;
  ot::AsCoreType<otIp6Address>(a2);
  return ot::Equatable<ot::Ip6::Address>::operator==(v5, v3);
}

BOOL otIp6ArePrefixesEqual(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otIp6Prefix>(a1);
  v5 = v2;
  ot::AsCoreType<otIp6Prefix>(a2);
  return ot::Ip6::Prefix::operator==(v5, v3);
}

ot::StringWriter *otIp6AddressToString(uint64_t a1, char *a2, __int16 a3)
{
  if (!a2)
  {
    __assert_rtn("otIp6AddressToString", "ip6_api.cpp", 211, "(aBuffer) != nullptr");
  }

  ot::AsCoreType<otIp6Address>(a1);
  return ot::Ip6::Address::ToString(v3, a2, a3);
}

ot::StringWriter *otIp6SockAddrToString(uint64_t a1, char *a2, __int16 a3)
{
  if (!a2)
  {
    __assert_rtn("otIp6SockAddrToString", "ip6_api.cpp", 218, "(aBuffer) != nullptr");
  }

  ot::AsCoreType<otSockAddr>(a1);
  return ot::Ip6::SockAddr::ToString(v3, a2, a3);
}

void ot::AsCoreType<otSockAddr>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  ot::AsCoreType<otSockAddr>(a1);
}

{
  ot::AsCoreType<otSockAddr>(a1);
}

ot::StringWriter *otIp6PrefixToString(uint64_t a1, char *a2, __int16 a3)
{
  if (!a2)
  {
    __assert_rtn("otIp6PrefixToString", "ip6_api.cpp", 225, "(aBuffer) != nullptr");
  }

  ot::AsCoreType<otIp6Prefix>(a1);
  return ot::Ip6::Prefix::ToString(v3, a2, a3);
}

uint64_t otIp6PrefixMatch(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otIp6Address>(a1);
  v5 = v2;
  ot::AsCoreType<otIp6Address>(a2);
  return ot::Ip6::Address::PrefixMatch(v5, v3);
}

void *otIp6GetPrefix(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  ot::AsCoreType<otIp6Address>(a1);
  v6 = v3;
  ot::AsCoreType<otIp6Prefix>(a3);
  return ot::Ip6::Address::GetPrefix(v6, a2, v4);
}

void *ot::Ip6::Address::GetPrefix(ot::Ip6::Address *this, unsigned __int8 a2, ot::Ip6::Prefix *a3)
{
  return ot::Ip6::Prefix::Set(a3, this, a2);
}

{
  return ot::Ip6::Address::GetPrefix(this, a2, a3);
}

uint64_t otIp6SelectSourceAddress(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Ip6::Ip6>(v2);
  ot::AsCoreType<otMessageInfo>(a2);
  return ot::Ip6::Ip6::SelectSourceAddress(v5, v3);
}

uint64_t otIp6RegisterMulticastListeners(uint64_t a1, uint64_t a2, unsigned __int8 a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  ot::AsCoreType<otInstance>(a1);
  v9 = ot::Instance::Get<ot::MlrManager>(v6);
  ot::AsCoreTypePtr<otIp6Address>();
  return ot::MlrManager::RegisterMulticastListeners(v9, v7, a3, a4, a5, a6);
}

uint64_t ot::Instance::Get<ot::MlrManager>(uint64_t a1)
{
  return a1 + 154384;
}

{
  return ot::Instance::Get<ot::MlrManager>(a1);
}

void ot::AsCoreTypePtr<otIp6Address>()
{
  ;
}

{
  ;
}

{
  ot::AsCoreTypePtr<otIp6Address>();
}

{
  ot::AsCoreTypePtr<otIp6Address>();
}

uint64_t otIp6IsSlaacEnabled(uint64_t a1)
{
  ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Utils::Slaac>(v1);
  return ot::Utils::Slaac::IsEnabled(v2);
}

uint64_t ot::Instance::Get<ot::Utils::Slaac>(uint64_t a1)
{
  return a1 + 86984;
}

{
  return ot::Instance::Get<ot::Utils::Slaac>(a1);
}

uint64_t ot::Utils::Slaac::IsEnabled(ot::Utils::Slaac *this)
{
  return *this & 1;
}

{
  return ot::Utils::Slaac::IsEnabled(this);
}

void otIp6SetSlaacEnabled(uint64_t a1, char a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Utils::Slaac>(v2);
  if (a2)
  {
    ot::Utils::Slaac::Enable(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    ot::Utils::Slaac::Disable(v3);
  }
}

void otIp6SetSlaacPrefixFilter(uint64_t a1, uint64_t a2)
{
  ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Utils::Slaac>(v2);
  ot::Utils::Slaac::SetFilter(v3, a2, v4, v5, v6, v7, v8, v9);
}

void *ot::CallbackBase<void (*)(otMessage *,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(otMessage *,void *)>::Set(result, a2, a3);
}