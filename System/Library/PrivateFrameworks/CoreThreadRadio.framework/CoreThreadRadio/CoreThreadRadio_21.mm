uint64_t ot::Spinel::RadioSpinel::GetPcapEnable(ot::Spinel::RadioSpinel *this)
{
  v5 = this;
  v4 = 0;
  v3 = ot::Spinel::RadioSpinel::Get(this, 0x28u, "b", &v4);
  ot::Spinel::Logger::LogIfFail1(this, "Get Pcap Enable failed", v3);
  return v4 & 1;
}

uint64_t ot::Spinel::RadioSpinel::SetPromiscuousDisable(ot::Spinel::RadioSpinel *this)
{
  v4 = this;
  v2 = this;
  v3 = 0;
  v3 = ot::Spinel::RadioSpinel::Set(this, 0x38u, "C", 0);
  if (!v3)
  {
    return ot::Spinel::RadioSpinel::Set(v2, 0x28u, "b", 0);
  }

  return v3;
}

uint64_t ot::Spinel::RadioSpinel::SetRcp2Vendor2Enabled(ot::Spinel::RadioSpinel *this, char a2)
{
  result = 0;
  *(this + 1736) = a2 != 0;
  return result;
}

uint64_t ot::Spinel::RadioSpinel::getStreamRawHistogram(ot::Spinel::RadioSpinel *this, unsigned int *a2)
{
  if (a2 && this != -24)
  {
    for (i = 0; i < 50; ++i)
    {
      a2[i] = *(this + i + 6);
    }

    return 0;
  }

  else
  {
    return 13;
  }
}

uint64_t ot::Spinel::RadioSpinel::resetStreamRawHistogram(ot::Spinel::RadioSpinel *this)
{
  if (this == -24)
  {
    return 13;
  }

  else
  {
    for (i = 0; i < 50; ++i)
    {
      *(this + i + 6) = 0;
    }

    return 0;
  }
}

uint64_t ot::Spinel::RadioSpinel::GetFrameTxPowerHistogram(ot::Spinel::RadioSpinel *this, unsigned int *a2, unsigned __int8 *a3)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  v4[19] = this;
  v5 = 13;
  v4[18] = v4;
  v5 = ot::Spinel::RadioSpinel::Get(this, 0x1225u, "t(LLLLLLLLLLLLLLLLL)", v7, v7 + 1, v7 + 2, v7 + 3, v7 + 4, v7 + 5, v7 + 6, v7 + 7, v7 + 8, v7 + 9, v7 + 10, v7 + 11, v7 + 12, v7 + 13, v7 + 14, v7 + 15, v7 + 16);
  if (!v5)
  {
    *v6 = 17;
  }

  return v5;
}

uint64_t ot::Spinel::RadioSpinel::ResetFrameTxPowerHistogram(ot::Spinel::RadioSpinel *this)
{
  v4 = this;
  v2 = this;
  v3 = 13;
  return ot::Spinel::RadioSpinel::Set(this, 0x1225u, "L", 0);
}

uint64_t ot::Spinel::RadioSpinel::GetNeighborTxPowerHistogram(ot::Spinel::RadioSpinel *this, unsigned int *a2, unsigned __int8 *a3)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  v4[19] = this;
  v5 = 13;
  v4[18] = v4;
  v5 = ot::Spinel::RadioSpinel::Get(this, 0x1226u, "t(LLLLLLLLLLLLLLLLL)", v7, v7 + 1, v7 + 2, v7 + 3, v7 + 4, v7 + 5, v7 + 6, v7 + 7, v7 + 8, v7 + 9, v7 + 10, v7 + 11, v7 + 12, v7 + 13, v7 + 14, v7 + 15, v7 + 16);
  if (!v5)
  {
    *v6 = 17;
  }

  return v5;
}

uint64_t ot::Spinel::RadioSpinel::ResetNeighborTxPowerHistogram(ot::Spinel::RadioSpinel *this)
{
  v4 = this;
  v2 = this;
  v3 = 13;
  return ot::Spinel::RadioSpinel::Set(this, 0x1226u, "L", 0);
}

uint64_t ot::Spinel::RadioSpinel::GetNeighborEnergySavingsFactorHistogram(ot::Spinel::RadioSpinel *this, unsigned int *a2, unsigned __int8 *a3)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  v4[21] = this;
  v5 = 13;
  v4[20] = v4;
  v5 = ot::Spinel::RadioSpinel::Get(this, 0x1227u, "t(LLLLLLLLLLLLLLLLLLL)", v7, v7 + 1, v7 + 2, v7 + 3, v7 + 4, v7 + 5, v7 + 6, v7 + 7, v7 + 8, v7 + 9, v7 + 10, v7 + 11, v7 + 12, v7 + 13, v7 + 14, v7 + 15, v7 + 16, v7 + 17, v7 + 18);
  if (!v5)
  {
    *v6 = 19;
  }

  return v5;
}

uint64_t ot::Spinel::RadioSpinel::ResetNeighborEnergySavingsFactorHistogram(ot::Spinel::RadioSpinel *this)
{
  v4 = this;
  v2 = this;
  v3 = 13;
  return ot::Spinel::RadioSpinel::Set(this, 0x1227u, "L", 0);
}

uint64_t ot::Spinel::RadioSpinel::SetWakeupConfiguration(ot::Spinel::RadioSpinel *this, unsigned int a2, unsigned __int8 a3, unsigned __int8 a4)
{
  v20 = this;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v9 = this;
  v16 = 0;
  v15 = 0;
  v14 = 1;
  v13 = 60;
  PrioritizedWindowSize = otLinkGetPrioritizedWindowSize(*(this + 28));
  v11 = 8;
  v10 = 0;
  if (otPlatRadioGetRcp2Vendor2Enabled())
  {
    v16 = ot::Spinel::RadioSpinel::Set(v9, 0x37u, "b", 0);
  }

  else
  {
    v16 = ot::Spinel::RadioSpinel::Set(v9, 0x3C25u, "C", 0);
  }

  v8 = v18;
  if (v18 == 1)
  {
    v10 = 15000;
    v15 = 1;
  }

  else if (v8 == 2)
  {
    v10 = 7500;
    v15 = 1;
  }

  else if (v8 == 3)
  {
    v10 = 7500;
    v15 = 2;
  }

  else
  {
    if (v8 == 4)
    {
      v10 = 15000;
    }

    else
    {
      v10 = 7500;
    }

    v15 = 1;
  }

  ot::AsCoreType<otInstance>(*(v9 + 28));
  v5 = ot::Instance::Get<ot::Mle::Mle>(v4);
  if (ot::Mle::Mle::isThreadRegulatoryCertEnabled(v5))
  {
    v10 = 7500;
    v15 = v17;
  }

  if ((otPlatRadioGetRcp2Vendor2Enabled() & 1) == 0 && !otPlatRadioRcp2SpinelVersionIsSameOrNewer(1u, 1u))
  {
    v10 /= 1000;
  }

  v11 = 8;
  v7[9] = v7;
  return ot::Spinel::RadioSpinel::Set(v9, 0x1101u, "LLCLLLLL", v19, v10, v15, 60, 8, v14, v13, PrioritizedWindowSize);
}

uint64_t ot::Spinel::RadioSpinel::GetCslAccuracy(ot::Spinel::RadioSpinel *this)
{
  v5 = this;
  v4 = -1;
  v3 = ot::Spinel::RadioSpinel::Get(this, 0x804u, "C", &v4);
  ot::Spinel::Logger::LogIfFail1(this, "Get CSL Accuracy failed", v3);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetCslUncertainty(ot::Spinel::RadioSpinel *this)
{
  v5 = this;
  v4 = -1;
  v3 = ot::Spinel::RadioSpinel::Get(this, 0x805u, "C", &v4);
  ot::Spinel::Logger::LogIfFail1(this, "Get CSL Uncertainty failed", v3);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::AddCalibratedPower(ot::Spinel::RadioSpinel *this, unsigned __int8 a2, __int16 a3, const unsigned __int8 *a4, unsigned __int16 a5)
{
  if (!a4)
  {
    __assert_rtn("AddCalibratedPower", "radio_spinel.cpp", 4339, "aRawPowerSetting != nullptr");
  }

  return ot::Spinel::RadioSpinel::Insert(this, 0x2Du, "Csd", a2, a3, a4, a5);
}

uint64_t ot::Spinel::RadioSpinel::SetChannelTargetPower(ot::Spinel::RadioSpinel *this, unsigned __int8 a2, __int16 a3)
{
  if (a2 >= 0xBu && a2 <= 0x19u)
  {
    return ot::Spinel::RadioSpinel::Set(this, 0x2Eu, "Cs", a2, a3);
  }

  else
  {
    return 7;
  }
}

uint64_t ot::Spinel::RadioSpinel::SpinelHandleReceivedFrame(char **this, char *a2, unsigned __int16 a3, char *a4, char *a5, char a6)
{
  v30 = this;
  v29 = a2;
  v28 = a3;
  v27 = a4;
  v26 = a5;
  v25 = a6;
  v17 = this;
  v16 = this;
  this[1] = a4;
  this[2] = v26;
  v6 = ot::Spinel::Logger::Snprintf(this, this[1], *(this + 4) - this[1], "\n");
  v17[1] += v6;
  v24 = v15;
  v18 = (v28 + 15) & 0x1FFF0;
  __chkstk_darwin(v6);
  v19 = &v15[-v18];
  v23 = v7;
  ot::Spinel::parse_string_into_data(&v15[-v18], v28, v29, v8);
  v22 = 0;
  v21 = 0;
  v20 = 0;
  if (v25)
  {
    return ot::Spinel::RadioSpinel::SpinelLogSpinelFrame(v16, v19, v28, 1);
  }

  else
  {
    v22 = ot::Spinel::RadioSpinel::SpinelLogSpinelFrame(v16, v19, v28, 0);
    if (!v22)
    {
      v20 = spinel_datatype_unpack(v19, v28, "C", v9, v10, v11, v12, v13, &v21);
      if (v20 >= 1 && (v21 & 0x80) != 0 && ((v21 >> 4) & 3) == 0)
      {
        if ((v21 & 0xF) != 0)
        {
          return ot::Spinel::RadioSpinel::SpinelHandleResponse(v16, v19, v28);
        }

        else
        {
          return ot::Spinel::RadioSpinel::SpinelHandleNotification(v16, v19, v28);
        }
      }

      else
      {
        return 6;
      }
    }
  }

  return v22;
}

uint64_t ot::Spinel::RadioSpinel::SpinelLogSpinelFrame(char **this, const unsigned __int8 *a2, unsigned __int16 a3, char a4)
{
  v212 = v247;
  v300 = this;
  v299 = a2;
  v298 = a3;
  v297 = a4;
  *&__size[1] = this;
  v4 = ot::Spinel::Logger::Snprintf(this, this[1], this[2] - this[1], "\n");
  *(*&__size[1] + 8) += v4;
  v296 = 0;
  v295 = 0;
  v294 = 0;
  v293 = 0;
  v292 = 0;
  v291 = 0;
  v290 = 0;
  v289 = 0;
  if (otLoggingGetLevel(v4) < 5)
  {
    goto LABEL_209;
  }

  v10 = v212;
  v11 = "Sent spinel frame";
  if ((v297 & 1) == 0)
  {
    v11 = "Received spinel frame";
  }

  *(v212 + 34) = v11;
  v12 = *(v10 + 40);
  v170 = &v293;
  v171 = &v292;
  v172 = &v291;
  v173 = &v290;
  *(v212 + 77) = spinel_datatype_unpack(v12, v298, "CiiD", v5, v6, v7, v8, v9, &v294);
  if (*(v212 + 77) <= 0)
  {
    *(v212 + 78) = 6;
    goto LABEL_209;
  }

  __str = *(*&__size[1] + 8);
  __size[0] = *(*&__size[1] + 16) - *(*&__size[1] + 8);
  *&v207[1] = *(v212 + 34);
  v208 = (v294 & 0xC0) >> 6;
  v209 = v294 & 0xF;
  v13 = spinel_command_to_cstr(*(v212 + 75));
  *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], __str, __size[0], "%s, flg:0x%x, tid:%u, cmd:%s", *&v207[1], v208, v209, v13);
  if (*(v212 + 75) == 1)
  {
    goto LABEL_209;
  }

  v206 = *(*&__size[1] + 8);
  v207[0] = *(*&__size[1] + 16) - *(*&__size[1] + 8);
  v14 = spinel_prop_key_to_cstr(*(v212 + 74));
  *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], v206, v207[0], ", key:%s", v14);
  if (*(v212 + 75) == 2)
  {
    goto LABEL_209;
  }

  v205 = *(v212 + 74);
  switch(v205)
  {
    case 0:
      v20 = v212;
      *(v212 + 67) = 0;
      *(v212 + 77) = spinel_datatype_unpack(*(v20 + 36), *(v20 + 71), "i", v15, v16, v17, v18, v19, v288);
      if (*(v212 + 77) > 0)
      {
        v203 = *(*&__size[1] + 8);
        v204 = *(*&__size[1] + 16) - *(*&__size[1] + 8);
        v21 = spinel_status_to_cstr(*(v212 + 67));
        *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], v203, v204, ", status:%s", v21);
      }

      else
      {
        *(v212 + 78) = 6;
      }

      goto LABEL_209;
    case 1:
      v54 = v212;
      *(v212 + 41) = 0;
      *(v54 + 40) = 0;
      v55 = *(v54 + 36);
      v56 = *(v54 + 71);
      v170 = &v276;
      *(v212 + 77) = spinel_datatype_unpack(v55, v56, "ii", v15, v16, v17, v18, v19, v277);
      if (*(v212 + 77) > 0)
      {
        *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", major:%u, minor:%u", *(v212 + 41), *(v212 + 40));
      }

      else
      {
        *(v212 + 78) = 6;
      }

      goto LABEL_209;
    case 2:
      v66 = v212;
      *(v212 + 16) = 0;
      *(v212 + 77) = spinel_datatype_unpack(*(v66 + 36), *(v66 + 71), "U", v15, v16, v17, v18, v19, v273);
      if ((*(v212 + 77) & 0x80000000) != 0)
      {
        *(v212 + 78) = 6;
      }

      else
      {
        *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", version:%s", *(v212 + 16));
      }

      goto LABEL_209;
    case 5:
      v45 = *&__size[1];
      *(v212 + 42) = 0;
      *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(v45, *(v45 + 8), *(v45 + 16) - *(v45 + 8), ", caps:");
      while (*(v212 + 71))
      {
        *(v212 + 77) = spinel_datatype_unpack(*(v212 + 36), *(v212 + 71), "i", v46, v47, v48, v49, v50, v278);
        if (*(v212 + 77) <= 0)
        {
          *(v212 + 78) = 6;
          goto LABEL_209;
        }

        v51 = *&__size[1];
        v52 = v212;
        *(v212 + 36) += *(v212 + 77);
        v52[71] -= v52[77];
        v197 = *(v51 + 8);
        v198 = *(v51 + 16) - *(v51 + 8);
        v53 = spinel_capability_to_cstr(v52[42]);
        *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], v197, v198, "%s ", v53);
      }

      goto LABEL_209;
    case 8:
      goto LABEL_176;
    case 32:
      goto LABEL_54;
    case 33:
      goto LABEL_71;
    case 34:
      goto LABEL_134;
  }

  if ((v205 - 36) <= 3)
  {
    goto LABEL_57;
  }

  switch(v205)
  {
    case 41:
LABEL_134:
      v57 = v212;
      *(v212 + 39) = 0;
      *(v57 + 18) = v310;
      *(v57 + 35) = 32;
      v58 = *(v57 + 36);
      v59 = *(v57 + 71);
      v170 = &v275;
      *(v212 + 77) = spinel_datatype_unpack_in_place(v58, v59, "D", v15, v16, v17, v18, v19, v310);
      if (*(v212 + 77) > 0)
      {
        while (*(v212 + 35))
        {
          v274 = 0;
          *(v212 + 77) = spinel_datatype_unpack(*(v212 + 18), *(v212 + 35), "C", v60, v61, v62, v63, v64, &v274);
          if (*(v212 + 77) <= 0)
          {
            *(v212 + 78) = 6;
            goto LABEL_209;
          }

          if (v274 >= 0x20u)
          {
            *(v212 + 78) = 6;
            goto LABEL_209;
          }

          v65 = v212;
          *(v212 + 39) |= 1 << v274;
          *(v65 + 18) += *(v65 + 77);
          *(v65 + 35) -= *(v65 + 77);
        }

        *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", channelMask:0x%08x", *(v212 + 39));
      }

      else
      {
        *(v212 + 78) = 6;
      }

      goto LABEL_209;
    case 42:
LABEL_57:
      v22 = v212;
      *(v212 + 32) = 0;
      v286[0] = 0;
      *(v212 + 77) = spinel_datatype_unpack(*(v22 + 36), *(v22 + 71), "c", v15, v16, v17, v18, v19, v286);
      if (*(v212 + 77) > 0)
      {
        v202 = *(v212 + 74);
        switch(v202)
        {
          case '$':
            *(v212 + 32) = "threshold";
            break;
          case '%':
            *(v212 + 32) = "power";
            break;
          case '&':
            *(v212 + 32) = "rssi";
            break;
          case '\'':
            *(v212 + 32) = "sensitivity";
            break;
          case '*':
            *(v212 + 32) = "gain";
            break;
        }

        *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", %s:%d", *(v212 + 32), v286[0]);
      }

      else
      {
        *(v212 + 78) = 6;
      }

      goto LABEL_209;
    case 43:
      goto LABEL_120;
    case 44:
      goto LABEL_85;
    case 45:
      if (*(v212 + 75) == 4)
      {
        v219 = 0;
        v218 = 0;
        v217 = 0;
        v216 = 0;
        v164 = *(v212 + 36);
        v165 = *(v212 + 71);
        v170 = &v218;
        v171 = &v217;
        v172 = &v216;
        *(v212 + 77) = spinel_datatype_unpack(v164, v165, "Csd", v15, v16, v17, v18, v19, &v219);
        if (*(v212 + 77) > 0)
        {
          *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", ch:%u, actualPower:%d, rawPowerSetting:", v219, v218);
          for (i = 0; i < v216; ++i)
          {
            *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), "%02x", *(v217 + i));
          }
        }

        else
        {
          *(v212 + 78) = 6;
        }
      }

      goto LABEL_209;
    case 46:
      v214 = 0;
      v213 = 0;
      v166 = *(v212 + 36);
      v167 = *(v212 + 71);
      v170 = &v213;
      *(v212 + 77) = spinel_datatype_unpack(v166, v167, "Cs", v15, v16, v17, v18, v19, &v214);
      if (*(v212 + 77) > 0)
      {
        *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", ch:%u, targetPower:%d", v214, v213);
      }

      else
      {
        *(v212 + 78) = 6;
      }

      goto LABEL_209;
    case 48:
LABEL_71:
      v23 = v212;
      *(v212 + 30) = 0;
      v285[0] = 0;
      *(v212 + 77) = spinel_datatype_unpack(*(v23 + 36), *(v23 + 71), "C", v15, v16, v17, v18, v19, v285);
      if (*(v212 + 77) > 0)
      {
        v201 = *(v212 + 74);
        switch(v201)
        {
          case 33:
            *(v212 + 30) = "channel";
            break;
          case 48:
            *(v212 + 30) = "state";
            break;
          case 56:
            *(v212 + 30) = "mode";
            break;
          case 2052:
            *(v212 + 30) = "accuracy";
            break;
          case 2053:
            *(v212 + 30) = "uncertainty";
            break;
        }

        *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", %s:%u", *(v212 + 30), v285[0]);
      }

      else
      {
        *(v212 + 78) = 6;
      }

      goto LABEL_209;
    case 49:
      v224 = 16;
      v223 = 0;
      v157 = *(v212 + 36);
      v158 = *(v212 + 71);
      v170 = &v223;
      *(v212 + 77) = spinel_datatype_unpack(v157, v158, "D", v15, v16, v17, v18, v19, v302);
      if (*(v212 + 77) > 0)
      {
        *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", channels:");
        for (j = 0; j < v223; ++j)
        {
          *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), "%u ", v302[j]);
        }
      }

      else
      {
        *(v212 + 78) = 6;
      }

      goto LABEL_209;
    case 50:
      goto LABEL_85;
    case 52:
LABEL_176:
      v119 = v212;
      v244 = 0;
      *(v212 + 46) = 0;
      *(v212 + 77) = spinel_datatype_unpack_in_place(*(v119 + 36), *(v119 + 71), "E", v15, v16, v17, v18, v19, v304);
      if (*(v212 + 77) > 0)
      {
        if (*(v212 + 74) == 8)
        {
          v193 = "eui64";
        }

        else
        {
          v193 = "laddr";
        }

        v244 = v193;
        v120 = *(*&__size[1] + 8);
        v121 = *(*&__size[1] + 16) - v120;
        v192 = &v169;
        v122 = ot::Spinel::Logger::Snprintf(*&__size[1], v120, v121, ", %s:%02x%02x%02x%02x%02x%02x%02x%02x", v193, v304[0], v304[1], v304[2], v304[3], v304[4], v304[5], v304[6], v304[7]);
        *(*&__size[1] + 8) += v122;
      }

      else
      {
        *(v212 + 78) = 6;
      }

      goto LABEL_209;
    case 54:
    case 53:
LABEL_85:
      v24 = v212;
      *(v212 + 28) = 0;
      v284[0] = 0;
      *(v212 + 77) = spinel_datatype_unpack(*(v24 + 36), *(v24 + 71), "S", v15, v16, v17, v18, v19, v284);
      if (*(v212 + 77) > 0)
      {
        v200 = *(v212 + 74);
        switch(v200)
        {
          case 44:
            *(v212 + 28) = "region";
            break;
          case 50:
            *(v212 + 28) = "period";
            break;
          case 53:
            *(v212 + 28) = "saddr";
            break;
          case 54:
            *(v212 + 28) = "panid";
            break;
          case 4868:
            *(v212 + 28) = "saddr";
            break;
        }

        *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", %s:0x%04x", *(v212 + 28), v284[0]);
      }

      else
      {
        *(v212 + 78) = 6;
      }

      goto LABEL_209;
    case 55:
      goto LABEL_54;
    case 56:
      goto LABEL_71;
    case 57:
LABEL_120:
      v39 = v212;
      *(v212 + 22) = 0;
      v280[0] = 0;
      v279 = 0;
      v40 = *(v39 + 36);
      v41 = *(v39 + 71);
      v170 = &v279;
      *(v212 + 77) = spinel_datatype_unpack(v40, v41, "Cc", v15, v16, v17, v18, v19, v280);
      if (*(v212 + 77) > 0)
      {
        v42 = *&__size[1];
        v43 = v212;
        v44 = "rssi";
        if (*(v212 + 74) != 57)
        {
          v44 = "power";
        }

        *(v212 + 22) = v44;
        *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(v42, *(v42 + 8), *(v42 + 16) - *(v42 + 8), ", channel:%u, %s:%d", v280[0], v43[22], v279);
      }

      else
      {
        *(v212 + 78) = 6;
      }

      goto LABEL_209;
    case 112:
      v98 = v212;
      *(v212 + 11) = 151;
      v99 = *(v98 + 36);
      v100 = *(v98 + 71);
      v170 = &v254;
      v101 = spinel_datatype_unpack_in_place(v99, v100, "D", v15, v16, v17, v18, v19, v308);
      v102 = v212;
      *(v212 + 77) = v101;
      if (*(v102 + 11) >= 0x97uLL)
      {
        __assert_rtn("SpinelLogSpinelFrame", "spinel_parser_impl.hpp", 1160, "stringLength < sizeof(debugString)");
      }

      if (*(v212 + 77) > 0)
      {
        v103 = *&__size[1];
        v308[*(v212 + 11)] = 0;
        *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(v103, *(v103 + 8), *(v103 + 16) - *(v103 + 8), ", debug:%s", v308);
      }

      else
      {
        *(v212 + 78) = 6;
      }

      goto LABEL_209;
    case 113:
      if (*(v212 + 75) == 6)
      {
        v67 = v212;
        v262 = 0;
        v261 = 0;
        *(v212 + 14) = 0;
        v68 = *(v67 + 36);
        v69 = *(v67 + 71);
        v196 = &v169;
        v170 = &v264;
        v171 = &v267;
        v172 = &v261;
        v173 = &v262;
        v174 = v265;
        v175 = &v268;
        v176 = &v266;
        v177 = &v260;
        v70 = spinel_datatype_unpack(v68, v69, "dccSt(CCX)t(i)", v15, v16, v17, v18, v19, v263);
        *(v212 + 77) = v70;
        if (*(v212 + 77) > 0)
        {
          v71 = ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", len:%u, rssi:%d, ", v264, v267);
          v72 = v212;
          v73 = v71;
          v74 = *&__size[1];
          *(*&__size[1] + 8) += v73;
          v75 = ot::Spinel::Logger::Snprintf(v74, *(v74 + 8), *(v74 + 16) - *(v74 + 8), "noise:%d, flags:0x%04x, channel:%u, lqi:%u, timestamp:%lu, rxerr:%u", v261, v262, v265[0], v268, *(v72 + 10), *(v72 + 14));
          v76 = v212;
          *(*&__size[1] + 8) += v75;
          v195 = v309;
          v309[0] = 0;
          ot::Spinel::encode_data_into_string(v76[8], v264, v309, 0x401, 0);
          v77 = ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), "\n");
          v78 = v195;
          v79 = v77;
          v80 = *&__size[1];
          *(*&__size[1] + 8) += v79;
          v81 = ot::Spinel::Logger::Snprintf(v80, *(v80 + 8), *(v80 + 16) - *(v80 + 8), "Data: %s", v78);
          *(*&__size[1] + 8) += v81;
        }

        else
        {
          *(v212 + 78) = 6;
        }
      }

      else if (*(v212 + 75) == 3)
      {
        v259 = 0;
        v258 = 0;
        v257 = 0;
        v256 = 0;
        v255 = 0;
        v82 = *(v212 + 36);
        v83 = *(v212 + 71);
        v170 = &v259;
        *(v212 + 77) = spinel_datatype_unpack(v82, v83, "CC", v15, v16, v17, v18, v19, v265);
        if (*(v212 + 77) == 2)
        {
          v89 = v212;
          *(v212 + 36) += *(v212 + 77);
          *(v89 + 71) -= *(v89 + 77);
          v90 = *(v212 + 36);
          v91 = *(v212 + 71);
          v170 = &v271;
          if ((v259 & 0x40) != 0)
          {
            v171 = &v269 + 4;
            v172 = &v269;
            v173 = &v272;
            v174 = v263;
            v175 = &v264;
            *(v212 + 77) = spinel_datatype_unpack(v90, v91, "CCLLCd", v84, v85, v86, v87, v88, &v270);
          }

          else
          {
            v171 = v263;
            v172 = &v264;
            v92 = spinel_datatype_unpack(v90, v91, "CCd", v84, v85, v86, v87, v88, &v270);
            v93 = v212;
            *(v212 + 77) = v92;
            *(v93 + 25) = 0;
            *(v93 + 24) = 0;
            v272 = 0;
          }

          if (*(v212 + 77) == *(v212 + 71))
          {
            v258 = (v259 & 4) == 0;
            v257 = (v259 & 8) != 0;
            v256 = (v259 & 0x10) != 0;
            v255 = (v259 & 0x20) != 0;
            v94 = ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", len:%u, channel:%u, maxbackoffs:%u, maxretries:%u, ", v264, v265[0], v270, v271);
            v95 = v212;
            v96 = v94;
            v97 = *&__size[1];
            *(*&__size[1] + 8) += v96;
            *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(v97, *(v97 + 8), *(v97 + 16) - *(v97 + 8), "csmaCaEnabled:%u, isHeaderUpdated:%u, isARetx:%u, skipAes:%u, txDelay:%u, txDelayBase:%u, rxChannelAfterTxDone:%u", v258, v257, v256, v255, *(v95 + 25), *(v95 + 24), v272);
          }

          else
          {
            *(v212 + 78) = 6;
          }
        }

        else
        {
          *(v212 + 78) = 6;
        }
      }

      goto LABEL_209;
    case 116:
      v104 = v212;
      *(v212 + 4) = 0;
      v252 = 0;
      *(v212 + 77) = spinel_datatype_unpack(*(v104 + 36), *(v104 + 71), "U", v15, v16, v17, v18, v19, v253);
      if ((*(v212 + 77) & 0x80000000) != 0)
      {
        *(v212 + 78) = 6;
      }

      else
      {
        v110 = v212;
        *(v212 + 36) += *(v212 + 77);
        *(v110 + 71) -= *(v110 + 77);
        *(v212 + 77) = spinel_datatype_unpack(*(v110 + 36), *(v110 + 71), "C", v105, v106, v107, v108, v109, &v252);
        if (*(v212 + 77) > 0)
        {
          *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", level:%u, log:%s", v252, *(v212 + 4));
        }

        else
        {
          *(v212 + 78) = 6;
        }
      }

      goto LABEL_209;
    case 177:
    case 176:
LABEL_110:
      v38 = v212;
      *(v212 + 24) = 0;
      *(v38 + 47) = 0;
      *(v212 + 77) = spinel_datatype_unpack(*(v38 + 36), *(v38 + 71), "i", v15, v16, v17, v18, v19, v281);
      if (*(v212 + 77) > 0)
      {
        v199 = *(v212 + 74);
        switch(v199)
        {
          case 176:
            *(v212 + 24) = "version";
            break;
          case 177:
            *(v212 + 24) = "min-host-version";
            break;
          case 4619:
            *(v212 + 24) = "caps";
            break;
          default:
            *(v212 + 24) = "";
            break;
        }

        *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", %s:%u", *(v212 + 24), *(v212 + 47));
      }

      else
      {
        *(v212 + 78) = 6;
      }

      goto LABEL_209;
    case 2048:
      v114 = v212;
      v249 = 0;
      v248 = 0;
      *v212 = 16;
      v246 = 16;
      v245 = 16;
      v115 = *(v114 + 36);
      v116 = *(v114 + 71);
      v194 = &v169;
      v170 = &v248;
      v171 = &v307;
      v172 = v247;
      v173 = &v306;
      v174 = &v246;
      v175 = &v305;
      v176 = &v245;
      v117 = spinel_datatype_unpack(v115, v116, "CCddd", v15, v16, v17, v18, v19, &v249);
      *(v212 + 77) = v117;
      if (*(v212 + 77) > 0)
      {
        v118 = ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", keyIdMode:%u, keyId:%u, prevKey:***, currKey:***, nextKey:***", v249, v248);
        *(*&__size[1] + 8) += v118;
      }

      else
      {
        *(v212 + 78) = 6;
      }

      goto LABEL_209;
    case 2050:
    case 2049:
      v34 = v212;
      *(v212 + 26) = 0;
      *(v34 + 51) = 0;
      *(v212 + 77) = spinel_datatype_unpack(*(v34 + 36), *(v34 + 71), "L", v15, v16, v17, v18, v19, v282);
      if (*(v212 + 77) > 0)
      {
        v35 = *&__size[1];
        v36 = v212;
        v37 = "timestamp";
        if (*(v212 + 74) != 2050)
        {
          v37 = "counter";
        }

        *(v212 + 26) = v37;
        *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(v35, *(v35 + 8), *(v35 + 16) - *(v35 + 8), ", %s:%u", v36[26], *(v36 + 51));
      }

      else
      {
        *(v212 + 78) = 6;
      }

      goto LABEL_209;
    case 2051:
      v221 = 0;
      v220 = 0;
      v159 = *(v212 + 36);
      v160 = *(v212 + 71);
      v170 = v301;
      v171 = &v220;
      *(v212 + 77) = spinel_datatype_unpack(v159, v160, "SEC", v15, v16, v17, v18, v19, &v221);
      if (*(v212 + 77) > 0)
      {
        v161 = *(*&__size[1] + 8);
        v162 = *(*&__size[1] + 16) - v161;
        v188 = &v169;
        v163 = ot::Spinel::Logger::Snprintf(*&__size[1], v161, v162, ", saddr:%04x, extaddr:%02x%02x%02x%02x%02x%02x%02x%02x, flags:0x%02x", v221, v301[0], v301[1], v301[2], v301[3], v301[4], v301[5], v301[6], v301[7], v220);
        *(*&__size[1] + 8) += v163;
      }

      else
      {
        *(v212 + 78) = 6;
      }

      goto LABEL_209;
    case 2053:
    case 2052:
      goto LABEL_71;
    case 4619:
      goto LABEL_110;
    case 4620:
      v136 = *(v212 + 36);
      v137 = *(v212 + 71);
      v189 = &v225;
      v190 = &v169;
      v170 = &v227;
      v171 = &v228;
      v172 = &v229;
      v173 = &v230;
      v174 = &v231;
      v175 = &v232;
      v176 = &v233;
      v177 = &v234;
      v178 = &v235;
      v179 = &v236;
      v180 = &v237;
      v181 = &v238;
      v182 = &v239;
      v183 = &v240;
      v184 = &v241;
      v185 = &v242;
      v186 = &v243;
      v187 = &v225;
      v138 = spinel_datatype_unpack(v136, v137, "t(LLLLLLLL)t(LLLLLLLLL)bL", &v234, &v233, &v232, &v231, &v230, &v226);
      *(v212 + 77) = v138;
      if (*(v212 + 77) > 0)
      {
        v139 = ot::ToUlong(v226);
        otLogDebgPlat(" txRequest:%lu", v139);
        v140 = ot::ToUlong(v227);
        otLogDebgPlat(" txGrantImmediate:%lu", v140);
        v141 = ot::ToUlong(v228);
        otLogDebgPlat(" txGrantWait:%lu", v141);
        v142 = ot::ToUlong(v229);
        otLogDebgPlat(" txGrantWaitActivated:%lu", v142);
        v143 = ot::ToUlong(v230);
        otLogDebgPlat(" txGrantWaitTimeout:%lu", v143);
        v144 = ot::ToUlong(v231);
        otLogDebgPlat(" txGrantDeactivatedDuringRequest:%lu", v144);
        v145 = ot::ToUlong(v232);
        otLogDebgPlat(" txDelayedGrant:%lu", v145);
        v146 = ot::ToUlong(v233);
        otLogDebgPlat(" avgTxRequestToGrantTime:%lu", v146);
        v147 = ot::ToUlong(v234);
        otLogDebgPlat(" rxRequest:%lu", v147);
        v148 = ot::ToUlong(v235);
        otLogDebgPlat(" rxGrantImmediate:%lu", v148);
        v149 = ot::ToUlong(v236);
        otLogDebgPlat(" rxGrantWait:%lu", v149);
        v150 = ot::ToUlong(v237);
        otLogDebgPlat(" rxGrantWaitActivated:%lu", v150);
        v151 = ot::ToUlong(v238);
        otLogDebgPlat(" rxGrantWaitTimeout:%lu", v151);
        v152 = ot::ToUlong(v239);
        otLogDebgPlat(" rxGrantDeactivatedDuringRequest:%lu", v152);
        v153 = ot::ToUlong(v240);
        otLogDebgPlat(" rxDelayedGrant:%lu", v153);
        v154 = ot::ToUlong(v241);
        otLogDebgPlat(" avgRxRequestToGrantTime:%lu", v154);
        v155 = ot::ToUlong(v242);
        otLogDebgPlat(" rxGrantNone:%lu", v155);
        otLogDebgPlat(" stopped:%u", v243 & 1);
        v156 = ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), " grantGlitch:%u", v225);
        *(*&__size[1] + 8) += v156;
      }

      else
      {
        *(v212 + 78) = 6;
      }

      goto LABEL_209;
    case 4621:
    case 4867:
LABEL_54:
      v287 = 0;
      *(v212 + 77) = spinel_datatype_unpack(*(v212 + 36), *(v212 + 71), "b", v15, v16, v17, v18, v19, &v287);
      if (*(v212 + 77) > 0)
      {
        *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", enabled:%u", v287 & 1);
      }

      else
      {
        *(v212 + 78) = 6;
      }

      goto LABEL_209;
  }

  if (v205 != 4868)
  {
    if (v205 != 4869)
    {
      if (v205 == 15296)
      {
        v111 = v212;
        *(v212 + 2) = 0;
        *(v111 + 1) = 0;
        v112 = *(v111 + 36);
        v113 = *(v111 + 71);
        v170 = &v250;
        *(v212 + 77) = spinel_datatype_unpack(v112, v113, "U", v15, v16, v17, v18, v19, v251);
        if (*(v212 + 77) > 0)
        {
          *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", diag:%s", *(v212 + 2));
        }

        else
        {
          *(v212 + 78) = 6;
        }
      }

      goto LABEL_209;
    }

    v123 = ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", extaddr:");
    v129 = v212;
    *(*&__size[1] + 8) += v123;
    if (*(v129 + 71) >= 8uLL)
    {
      while (*(v212 + 71) >= 8uLL)
      {
        v130 = spinel_datatype_unpack_in_place(*(v212 + 36), *(v212 + 71), "E", v124, v125, v126, v127, v128, v303);
        *(v212 + 77) = v130;
        if (*(v212 + 77) <= 0)
        {
          *(v212 + 78) = 6;
          goto LABEL_209;
        }

        v131 = *&__size[1];
        v132 = v212;
        *(v212 + 36) += *(v212 + 77);
        *(v132 + 71) -= *(v132 + 77);
        v133 = *(v131 + 1);
        v134 = *(v131 + 2) - v133;
        v191 = &v169;
        v135 = ot::Spinel::Logger::Snprintf(v131, v133, v134, "%02x%02x%02x%02x%02x%02x%02x%02x ", v303[0], v303[1], v303[2], v303[3], v303[4], v303[5], v303[6], v303[7]);
        *(*&__size[1] + 8) += v135;
      }

      goto LABEL_209;
    }

LABEL_100:
    *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), "none");
    goto LABEL_209;
  }

  v283 = 0;
  v25 = ot::Spinel::Logger::Snprintf(*&__size[1], *(*&__size[1] + 8), *(*&__size[1] + 16) - *(*&__size[1] + 8), ", saddr:");
  v31 = v212;
  *(*&__size[1] + 8) += v25;
  if (*(v31 + 71) < 2uLL)
  {
    goto LABEL_100;
  }

  while (*(v212 + 71) >= 2uLL)
  {
    *(v212 + 77) = spinel_datatype_unpack(*(v212 + 36), *(v212 + 71), "S", v26, v27, v28, v29, v30, &v283);
    if (*(v212 + 77) <= 0)
    {
      *(v212 + 78) = 6;
      break;
    }

    v32 = *&__size[1];
    v33 = v212;
    *(v212 + 36) += *(v212 + 77);
    *(v33 + 71) -= *(v33 + 77);
    *(*&__size[1] + 8) += ot::Spinel::Logger::Snprintf(v32, *(v32 + 8), *(v32 + 16) - *(v32 + 8), "0x%04x ", v283);
  }

LABEL_209:
  if (*(v212 + 78))
  {
    otLogDebgPlat("%s, failed to parse spinel frame !", *(v212 + 34));
  }

  return *(v212 + 78);
}

uint64_t ot::Spinel::RadioSpinel::SpinelHandleNotification(char **this, unsigned __int8 *a2, unsigned __int16 a3)
{
  v22 = this;
  v21 = a2;
  v20 = a3;
  this[1] += ot::Spinel::Logger::Snprintf(this, this[1], this[2] - this[1], "\n");
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v17 = spinel_datatype_unpack(v21, v20, "CiiD", v3, v4, v5, v6, v7, &v14);
  if (v17 > 0)
  {
    if ((v14 & 0xF) != 0)
    {
      return 6;
    }

    else if (v15 == 6)
    {
      if (ot::Spinel::RadioSpinel::IsSafeToHandleNow(this, v19))
      {
        return ot::Spinel::RadioSpinel::SpinelHandleValueIs(this, v19, v16, v18);
      }
    }

    else if (v15 != 8 && v15 != 7)
    {
      return 6;
    }

    else
    {
      __str = this[1];
      __size = this[2] - __str;
      v8 = ot::ToUlong(v15);
      this[1] += ot::Spinel::Logger::Snprintf(this, __str, __size, "Ignored command %lu\n", v8);
    }
  }

  else
  {
    return 6;
  }

  return v13;
}

uint64_t ot::Spinel::RadioSpinel::SpinelHandleResponse(char **this, unsigned __int8 *a2, unsigned __int16 a3)
{
  v15 = this;
  v14 = a2;
  v13 = a3;
  this[1] += ot::Spinel::Logger::Snprintf(this, this[1], this[2] - this[1], "\n");
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  spinel_datatype_unpack(v14, v13, "CiiD", v3, v4, v5, v6, v7, &v9);
  return 6;
}

uint64_t ot::Spinel::RadioSpinel::SpinelHandleValueIs(ot::Spinel::RadioSpinel *this, int a2, unsigned __int8 *a3, unsigned __int16 a4)
{
  v42 = this;
  v41 = a2;
  v40 = a3;
  v39 = a4;
  *(this + 1) += ot::Spinel::Logger::Snprintf(this, *(this + 1), *(this + 2) - *(this + 1), "\n");
  v38 = 0;
  v37 = 0;
  v36 = pcap_enabled();
  v35 = promiscuous_enabled();
  if ((v41 != 117 || !v35 && !v36) && v41 != 15538 && v41 != 15518)
  {
    if (v41 == 113)
    {
      return ot::Spinel::RadioSpinel::SpinelParseRadioFrame(this, this + 720, v40, v39, &v37);
    }

    else if (v41)
    {
      if (v41 == 57)
      {
        v33 = 0;
        v32 = 0;
        v37 = spinel_datatype_unpack(v40, v39, "Cc", v4, v5, v6, v7, v8, &v33);
        if (v37 > 0)
        {
          *(this + 1) += ot::Spinel::Logger::Snprintf(this, *(this + 1), *(this + 2) - *(this + 1), "scanChannel: %d, maxRssi:%d\n", v33, v32);
          *(this + 1655) &= ~0x80u;
        }

        else
        {
          return 6;
        }
      }

      else
      {
        if (v41 == 112)
        {
          v31 = 151;
          v37 = spinel_datatype_unpack_in_place(v40, v39, "D", v4, v5, v6, v7, v8, v43);
          __assert_rtn("SpinelHandleValueIs", "spinel_parser_impl.hpp", 234, "len < sizeof(logStream)");
        }

        if (v41 == 116 && (ot::Spinel::RadioSpinel::sSupportsLogStream & 1) != 0)
        {
          v30 = 0;
          v29 = 0;
          v37 = spinel_datatype_unpack(v40, v39, "U", v4, v5, v6, v7, v8, &v30);
          if (v37 < 0)
          {
            return 6;
          }

          else
          {
            v40 += v37;
            v39 -= v37;
            v28 = 0;
            v27 = 0;
            v37 = spinel_datatype_unpack(v40, v39, "Ci", v11, v12, v13, v14, v15, &v29);
            if (v37 > 0)
            {
              v40 += v37;
              v39 -= v37;
              if (v39 >= 8uLL)
              {
                v37 = spinel_datatype_unpack(v40, v39, "X", v16, v17, v18, v19, v20, &v27);
                if (v37 <= 0)
                {
                  return 6;
                }
              }
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }

    else
    {
      v34 = 0;
      v37 = spinel_datatype_unpack(v40, v39, "i", v4, v5, v6, v7, v8, &v34);
      if (v37 > 0)
      {
        v24 = *(this + 1);
        __size = *(this + 2) - v24;
        v9 = spinel_status_to_cstr(v34);
        *(this + 1) += ot::Spinel::Logger::Snprintf(this, v24, __size, "[-RCP-]: RCP was reset (%s, %d)\n", v9, v34);
        if (v34 < 0x70 || v34 > 0x80)
        {
          if (v34 == 2000000)
          {
            *(this + 1) += ot::Spinel::Logger::Snprintf(this, *(this + 1), *(this + 2) - *(this + 1), "[-RCP-]: TX Request Timed out, TRANSMIT_NOT_GRANTED\n");
          }

          else if (v34 != 3)
          {
            __str = *(this + 1);
            v23 = *(this + 2) - __str;
            v10 = spinel_status_to_cstr(v34);
            *(this + 1) += ot::Spinel::Logger::Snprintf(this, __str, v23, "RCP last status: %s\n", v10);
          }
        }
      }

      else
      {
        return 6;
      }
    }
  }

  return v38;
}

uint64_t ot::Spinel::RadioSpinel::SpinelParseRadioFrame(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int16 a4, int *a5)
{
  v42 = a1;
  v41 = a2;
  v40 = a3;
  v39 = a4;
  v38 = a5;
  v31 = a1;
  *(a1 + 8) += ot::Spinel::Logger::Snprintf(a1, *(a1 + 8), *(a1 + 16) - *(a1 + 8), "\n");
  v37 = 0;
  v36 = 0;
  v35 = 0x80;
  v34 = 127;
  v33 = 0;
  v32 = 0;
  if (v39)
  {
    v10 = *v41;
    v30 = &v21;
    v22 = &v34;
    v23 = v41 + 29;
    v24 = &v35;
    v25 = &v36;
    v26 = v41 + 10;
    v27 = v41 + 30;
    v28 = v41 + 16;
    v29 = &v33;
    v32 = spinel_datatype_unpack_in_place(v40, v39, "dccSt(CCX)t(i)", v5, v6, v7, v8, v9, v10);
    if (v32 > 0)
    {
      v11 = ot::Spinel::Logger::Snprintf(v31, v31[1], v31[2] - v31[1], "len:%u, rssi:%d, ", v34, *(v41 + 29));
      v12 = v31;
      v31[1] += v11;
      v13 = ot::Spinel::Logger::Snprintf(v12, v12[1], v12[2] - v12[1], "noise:%d, flags:0x%04x, channel:%u, lqi:%u, timestamp:%lu, rxerr:%u", v35, v36, *(v41 + 10), *(v41 + 30), *(v41 + 16), v33);
      v31[1] += v13;
      *v38 = v32;
      v40 += v32;
      v39 -= v32;
      if ((ot::Spinel::RadioSpinel::sRadioCaps & 0x20) != 0)
      {
        v22 = (v41 + 24);
        v32 = spinel_datatype_unpack_in_place(v40, v39, "t(CL)", v14, v15, v16, v17, v18, v41 + 28);
        if (v32 <= 0)
        {
          return 6;
        }

        v19 = ot::Spinel::Logger::Snprintf(v31, v31[1], v31[2] - v31[1], ", AckKeyId:%d, mAckFrameCounter:0x%d", *(v41 + 28), *(v41 + 24));
        v31[1] += v19;
        *v38 += v32;
      }

      if (v33)
      {
        if (v33 >= 0x26)
        {
          return 6;
        }

        else
        {
          return v33;
        }
      }

      else
      {
        *(v41 + 8) = v34;
        *(v41 + 31) = *(v41 + 31) & 0xFE | ((v36 & 0x10) != 0);
        *(v41 + 31) = *(v41 + 31) & 0xFD | (2 * ((v36 & 0x20) != 0));
      }
    }

    else
    {
      return 6;
    }
  }

  else
  {
    *(v41 + 8) = 0;
  }

  return v37;
}

uint64_t ot::Spinel::RadioSpinel::SpinelHandleTransmitDone(char **this, unsigned int a2, unsigned int a3, unsigned __int8 *a4, unsigned __int16 a5)
{
  v31 = this;
  v30 = __PAIR64__(a2, a3);
  v29 = a4;
  v28 = a5;
  this[1] += ot::Spinel::Logger::Snprintf(this, this[1], this[2] - this[1], "\n");
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  if (v30 == 0x600000000)
  {
    v22 = spinel_datatype_unpack(v29, v28, "i", v5, v6, v7, v8, v9, &v27);
    if (v22 > 0)
    {
      if (v27 == 4)
      {
        this[1] += ot::Spinel::Logger::Snprintf(this, this[1], this[2] - this[1], "HandleTransmitDone: Status[%d] SPINEL_STATUS_INVALID_STATE\n", 4);
        __assert_rtn("SpinelHandleTransmitDone", "spinel_parser_impl.hpp", 530, "false");
      }

      v29 += v22;
      v28 -= v22;
      v22 = spinel_datatype_unpack(v29, v28, "b", v10, v11, v12, v13, v14, &v26);
      if (v22 > 0)
      {
        v29 += v22;
        v28 -= v22;
        v22 = spinel_datatype_unpack(v29, v28, "b", v15, v16, v17, v18, v19, &v25);
        if (v22 > 0)
        {
          v29 += v22;
          v28 -= v22;
          if (v27)
          {
            HIDWORD(v27) = ot::Spinel::SpinelStatusToOtError(v27);
          }

          else
          {
            HIDWORD(v27) = ot::Spinel::RadioSpinel::SpinelParseRadioFrame(this, (this + 106), v29, v28, &v22);
            if (!HIDWORD(v27))
            {
              v29 += v22;
              v28 -= v22;
            }
          }
        }

        else
        {
          HIDWORD(v27) = 6;
        }
      }

      else
      {
        HIDWORD(v27) = 6;
      }
    }

    else
    {
      HIDWORD(v27) = 6;
    }
  }

  else
  {
    HIDWORD(v27) = 1;
  }

  return HIDWORD(v27);
}

uint64_t ot::Spinel::RadioSpinel::Peek(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned __int16 *a3, unsigned int a4, unsigned __int16 a5)
{
  if (*(this + 300))
  {
    __assert_rtn("Peek", "radio_spinel_impl_vendor.hpp", 75, "mWaitingTid == 0");
  }

  do
  {
    ot::Spinel::RadioSpinel::RecoverFromRcpFailure(this);
    v7 = ot::Spinel::RadioSpinel::MemPeek(this, a2, a3, "LS", a4, a5);
  }

  while ((*(this + 952) & 7) != 0);
  return v7;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCoexRxMode(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C00u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCoexRxMode failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCoexRxMixedModeUpperBound(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C0Cu, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCoexRxMixedModeUpperBound failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCoexRxMixedModeLowerBound(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C0Du, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCoexRxMixedModeLowerBound failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCoexTxMode(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C01u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCoexTxMode failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCoexEnabled(ot::Spinel::RadioSpinel *this, BOOL *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C02u, "b", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCoexEnabled failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCoexGrantTimeout(ot::Spinel::RadioSpinel *this, unsigned int *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C04u, "L", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCoexGrantTimeout failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCoexThrottleMaxAttemptsNone(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C05u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCoexThrottleMaxAttemptsNone failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCoexThrottleMaxAttemptsTxOnly(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C06u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCoexThrottleMaxAttemptsTxOnly failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCoexThrottleMaxAttemptsRxOnly(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C07u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCoexThrottleMaxAttemptsRxOnly failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCoexRxThrottleTimeout(ot::Spinel::RadioSpinel *this, unsigned int *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C08u, "L", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCoexRxThrottleTimeout failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCoexRequestAheadCslTx(ot::Spinel::RadioSpinel *this, unsigned __int16 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C0Au, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCoexRequestAheadCslTx failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCoexRequestAheadCslTxMin(ot::Spinel::RadioSpinel *this, unsigned __int16 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C0Bu, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCoexRequestAheadCslTxMin failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCslTxSchedulerFrameRequestAhead(ot::Spinel::RadioSpinel *this, unsigned __int16 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C95u, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCslTxSchedulerFrameRequestAhead failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorPmuWakeTestResult(ot::Spinel::RadioSpinel *this, unsigned int *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C41u, "L", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorPmuWakeTestResult failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorFemEnabled(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C50u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorFemEnabled failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCsmaMinBe(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C60u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCsmaMinBE failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCsmaMaxBe(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C61u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCsmaMaxBE failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCsmaMaxBackoffs(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C62u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCsmaMaxBackoffs failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCsmaSlidingWindowEnabled(ot::Spinel::RadioSpinel *this, BOOL *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C63u, "b", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCsmaSlidingWindowEnabled failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCsmaBackoffHistogram(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned __int16 *a3)
{
  v5 = ot::Spinel::RadioSpinel::Get(this, 0x3C65u, "D", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCsmaBackoffHistogram failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorIfsMode(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C70u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorIfsMode failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorIfsMinSifs(ot::Spinel::RadioSpinel *this, unsigned __int16 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C71u, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorIfsMinSIFS failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorIfsMinLifs(ot::Spinel::RadioSpinel *this, unsigned __int16 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C72u, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorIfsMinLIFS failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorIfsRetxMinSifs(ot::Spinel::RadioSpinel *this, unsigned __int16 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C73u, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorIfsRetxMinSIFS failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorIfsRetxMinLifs(ot::Spinel::RadioSpinel *this, unsigned __int16 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C74u, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorIfsRetxMinLIFS failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorIfsAckTurnAroundTime(ot::Spinel::RadioSpinel *this, unsigned __int16 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C75u, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorIfsAckTurnAroundTime failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorIfsAckTurnAroundMode(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C76u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorIfsAckTurnAroundMode failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorIfsAckTurnAroundEnable(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C77u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorIfsAckTurnAroundEnable failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorIfsAckDataPerNeighbor(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6[2] = this;
  v6[1] = a2;
  v6[0] = a3;
  v5 = ot::Spinel::RadioSpinel::Get(this, 0x3C78u, "D", a2, v6);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorIfsAckDataPerNeighbor failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorVersion(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, uint64_t a3)
{
  v5 = ot::Spinel::RadioSpinel::Get(this, 0x3C80u, "U", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorVersion failed", v5);
  if (v5)
  {
    handle_captureABC(15488);
  }

  return v5;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorOpenThreadRadioCounters(ot::Spinel::RadioSpinel *a1, uint64_t a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(a1, 0x3CE0u, "t(LLLLLLLLLLLLLLLLLL)t(LLLLLLLLLLLLLLLLLLLLL)t(LLLL)", a2, a2 + 4, a2 + 8, a2 + 12, a2 + 16, a2 + 20, a2 + 24, a2 + 28, a2 + 32, a2 + 36, a2 + 40, a2 + 44, a2 + 48, a2 + 52, a2 + 56, a2 + 60, a2 + 64, a2 + 68, a2 + 72, a2 + 76, a2 + 80, a2 + 84, a2 + 88, a2 + 96, a2 + 100, a2 + 104, a2 + 108, a2 + 112, a2 + 116, a2 + 120, a2 + 124, a2 + 132, a2 + 140, a2 + 148, a2 + 128, a2 + 136, a2 + 144, a2 + 152, a2 + 92, a2 + 156, a2 + 160, a2 + 164, a2 + 168);
  ot::Spinel::Logger::LogIfFail1(a1, "Get VendorOpenThreadRadioCounters failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorRadioCounters(ot::Spinel::RadioSpinel *a1, uint64_t a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(a1, 0x3C81u, "t(LLLL)", a2, a2 + 4, a2 + 8, a2 + 12);
  ot::Spinel::Logger::LogIfFail1(a1, "Get VendorRadioCounters failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorAssignedHwMac(ot::Spinel::RadioSpinel *a1, uint64_t a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(a1, 0x3C86u, "E", a2);
  ot::Spinel::Logger::LogIfFail1(a1, "Get VendorAssignedHWMac failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorAssert(ot::Spinel::RadioSpinel *this, unsigned int *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C83u, "L", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorAssert failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorHardFault(const char **this)
{
  v4 = this;
  v2 = this;
  v3 = ot::Spinel::RadioSpinel::Get(this, 0x3C84u, "", 0);
  ot::Spinel::Logger::LogIfFail1(v2, "Get VendorHardFault failed", v3);
  return v3;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorStackOverflow(const char **this)
{
  v4 = this;
  v2 = this;
  v3 = ot::Spinel::RadioSpinel::Get(this, 0x3C85u, "", 0);
  ot::Spinel::Logger::LogIfFail1(v2, "Get VendorStackOverflow failed", v3);
  return v3;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorFactoryReset(const char **this)
{
  v4 = this;
  v2 = this;
  v3 = ot::Spinel::RadioSpinel::Get(this, 0x3C87u, "", 0);
  ot::Spinel::Logger::LogIfFail1(v2, "Get VendorFactoryReset failed", v3);
  return v3;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorFaultInfo(ot::Spinel::RadioSpinel *a1, uint64_t a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(a1, 0x3C8Au, "t(LCXLL)", a2, a2 + 4, a2 + 8, a2 + 16, a2 + 20, a2 + 24);
  ot::Spinel::Logger::LogIfFail1(a1, "Get VendorFaultInfo failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorDeepSleepFilterList(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6[2] = this;
  v6[1] = a2;
  v6[0] = a3;
  v5 = ot::Spinel::RadioSpinel::Get(this, 0x3C8Bu, "A(L)", a2, v6);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorDeepSleepFilterList failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorDeepSleepLogLevel(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C8Cu, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorDeepSleepLogLevel failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorDeepSleepRegionLoglevels(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v5 = ot::Spinel::RadioSpinel::Get(this, 0x3C8Du, "D", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorDeepSleepRegionLoglevels failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorHostWakeReason(ot::Spinel::RadioSpinel *this, unsigned int *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C8Eu, "L", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorHostWakeReason failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorDeviceId(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C93u, "cccccccc", a2, a2 + 1, a2 + 2, a2 + 3, a2 + 4, a2 + 5, a2 + 6, a2 + 7);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorDeviceId failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorValidateSettings(ot::Spinel::RadioSpinel *a1, uint64_t a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(a1, 0x3C96u, "bL", a2, a2 + 4);
  ot::Spinel::Logger::LogIfFail1(a1, "Get VendorValidateSettings failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorPowerLimitTable(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned int *a3)
{
  v5 = ot::Spinel::RadioSpinel::Get(this, 0x3CA0u, "D", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorPowerLimitTable failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorPowerLimitTableActiveId(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3CA2u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorPowerLimitTableActiveId failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorPowerLimitTableVersion(ot::Spinel::RadioSpinel *this, char *a2, uint64_t a3)
{
  v5 = ot::Spinel::RadioSpinel::Get(this, 0x3CA3u, "U", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorPowerLimitTableVersion failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorPowerLimitTablePowerTest(ot::Spinel::RadioSpinel *this, signed __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3CA4u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorPowerLimitTablePowerTest failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorPowerLmitActiveTable(ot::Spinel::RadioSpinel *this, char *a2, unsigned __int8 *a3)
{
  v5 = ot::Spinel::RadioSpinel::Get(this, 0x3CA5u, "D", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorPowerLmitActiveTable failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorPowerMappingTable(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned __int16 *a3)
{
  v5 = ot::Spinel::RadioSpinel::Get(this, 0x3CA6u, "D", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorPowerMappingTable failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorPowerMappingTableVersion(ot::Spinel::RadioSpinel *this, char *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3CA7u, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorPowerMappingTableVersion failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorPowerMappingTablePowerTest(ot::Spinel::RadioSpinel *this, signed __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3CA9u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorPowerMappingTablePowerTest failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorRadioCurrentPowerInfo(ot::Spinel::RadioSpinel *a1, uint64_t a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(a1, 0x3CAAu, "Ccccc", a2, a2 + 1, a2 + 2, a2 + 3, a2 + 4);
  ot::Spinel::Logger::LogIfFail1(a1, "Get VendorRadioCurrentPowerInfo failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorPowerMappingTableFlashData(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned int *a3)
{
  v5 = ot::Spinel::RadioSpinel::Get(this, 0x3CACu, "D", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorPowerMappingTableFlashData failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorPowerMappingTableFlashDataIsvalid(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3CADu, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorPowerMappingTableFlashDataIsvalid failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCoexRxMode(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C00u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCoexRxMode failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCoexRxMixedModeUpperBound(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C0Cu, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCoexRxMixedModeUpperBound failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCoexRxMixedModeLowerBound(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C0Du, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCoexRxMixedModeLowerBound failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCoexTxMode(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C01u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCoexTxMode failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCoexEnabled(ot::Spinel::RadioSpinel *this, char a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C02u, "b", a2 & 1);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCoexEnabled failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCoexCounters(const char **this)
{
  v4 = this;
  v2 = this;
  v3 = 0;
  v3 = ot::Spinel::RadioSpinel::Set(this, 0x3C03u, "C", 0);
  ot::Spinel::Logger::LogIfFail1(v2, "Set VendorCoexCounters failed", v3);
  return v3;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCoexGrantTimeout(ot::Spinel::RadioSpinel *this, unsigned int a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C04u, "L", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCoexGrantTimeout failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCoexThrottleMaxAttemptsNone(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C05u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCoexThrottleMaxAttemptsNone failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCoexThrottleMaxAttemptsTxOnly(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C06u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCoexThrottleMaxAttemptsTxOnly failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCoexThrottleMaxAttemptsRxOnly(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C07u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCoexThrottleMaxAttemptsRxOnly failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCoexRxThrottleTimeout(ot::Spinel::RadioSpinel *this, unsigned int a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C08u, "L", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCoexRxThrottleTimeout failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCoexHistograms(const char **this)
{
  v4 = this;
  v2 = this;
  v3 = ot::Spinel::RadioSpinel::Set(this, 0x3C09u, "C", 0);
  ot::Spinel::Logger::LogIfFail1(v2, "Set VendorCoexHistograms failed", v3);
  return v3;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCoexRequestAheadCslTx(ot::Spinel::RadioSpinel *this, unsigned __int16 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C0Au, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCoexRequestAheadCslTx failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCoexRequestAheadCslTxMin(ot::Spinel::RadioSpinel *this, unsigned __int16 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C0Bu, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCoexRequestAheadCslTxMin failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCslTxSchedulerFrameRequestAhead(ot::Spinel::RadioSpinel *this, unsigned __int16 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C95u, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCslTxSchedulerFrameRequestAhead failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorPmuWakeTestStart(ot::Spinel::RadioSpinel *this, unsigned int a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C40u, "L", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorPmuWakeTestResult failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorFemEnabled(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C50u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorFemEnabled failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCsmaMinBe(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C60u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCsmaMinBE failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCsmaMaxBe(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C61u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCsmaMaxBE failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCsmaMaxBackoffs(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C62u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCsmaMaxBackoffs failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCsmaSlidingWindowEnabled(ot::Spinel::RadioSpinel *this, char a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C63u, "b", a2 & 1);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCsmaSlidingWindowEnabled failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCcaEnergyDetectedHistogram(const char **this)
{
  v4 = this;
  v2 = this;
  v3 = ot::Spinel::RadioSpinel::Set(this, 0x3C64u, "C", 0);
  ot::Spinel::Logger::LogIfFail1(v2, "Set VendorCcaEnergyDetectedHistogram failed", v3);
  return v3;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCsmaBackoffHistogram(const char **this)
{
  v4 = this;
  v2 = this;
  v3 = ot::Spinel::RadioSpinel::Set(this, 0x3C65u, "C", 0);
  ot::Spinel::Logger::LogIfFail1(v2, "Set VendorCsmaBackoffHistogram failed", v3);
  return v3;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorIfsMode(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C70u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorIfsMode failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorIfsMinSifs(ot::Spinel::RadioSpinel *this, unsigned __int16 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C71u, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorIfsMinSIFS failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorIfsMinLifs(ot::Spinel::RadioSpinel *this, unsigned __int16 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C72u, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorIfsMinLIFS failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorIfsRetxMinSifs(ot::Spinel::RadioSpinel *this, unsigned __int16 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C73u, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorIfsRetxMinSIFS failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorIfsRetxMinLifs(ot::Spinel::RadioSpinel *this, unsigned __int16 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C74u, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorIfsRetxMinLIFS failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorIfsAckturnaroundTime(ot::Spinel::RadioSpinel *this, unsigned __int16 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C75u, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorIfsAckturnaroundTime failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorIfsAckturnaroundMode(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C76u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorIfsAckturnaroundMode failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorIfsAckturnaroundEnable(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C77u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorIfsAckturnaroundEnable failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCntrStatsReset(ot::Spinel::RadioSpinel *this)
{
  v3 = ot::Spinel::RadioSpinel::Set(this, 0x3C91u, "S", 0);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorIfsRetxMinLIFS failed", v3);
  return v3;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorOpenThreadRadioCounters(const char **this)
{
  v4 = this;
  v2 = this;
  v3 = ot::Spinel::RadioSpinel::Set(this, 0x3CE0u, "C", 0);
  ot::Spinel::Logger::LogIfFail1(v2, "Set VendorOpenThreadRadioCounters failed", v3);
  return v3;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorRadioCounters(const char **this)
{
  v4 = this;
  v2 = this;
  v3 = ot::Spinel::RadioSpinel::Set(this, 0x3C81u, "C", 0);
  ot::Spinel::Logger::LogIfFail1(v2, "Set VendorRadioCounters failed", v3);
  return v3;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorRadioStats(const char **this)
{
  v4 = this;
  v2 = this;
  v3 = ot::Spinel::RadioSpinel::Set(this, 0x3C82u, "C", 0);
  ot::Spinel::Logger::LogIfFail1(v2, "Set VendorRadioStats failed", v3);
  return v3;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorAssignedHWMac(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C86u, "E", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorAssignedHWMac failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorAssert(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C83u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorAssert failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorHardResdtTest(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  *(this + 1657) = a2;
  otLogInfoPlat("%s: Set hard reset test mode as %d", "SetVendorHardResdtTest", a2);
  return 0;
}

uint64_t ot::Spinel::RadioSpinel::SetLoggingTest(ot::Spinel::RadioSpinel *this, unsigned __int8 a2, unsigned __int8 a3, char *a4)
{
  v6 = ot::Spinel::RadioSpinel::Set(this, 0x3C88u, "CCU", a2, a3, a4);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorAssert failed", v6);
  return v6;
}

uint64_t ot::Spinel::RadioSpinel::SetFilterUnsolNotif (ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C89u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set FilterUnsolNotif failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorFaultInfo(const char **this)
{
  v4 = this;
  v2 = this;
  v3 = ot::Spinel::RadioSpinel::Set(this, 0x3C8Au, "C", 0);
  ot::Spinel::Logger::LogIfFail1(v2, "Set VendorFaultInfo failed", v3);
  return v3;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorDeepSleepFilterList(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v5 = ot::Spinel::RadioSpinel::Set(this, 0x3C8Bu, "L", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorDeepSleepFilterList failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorDeepSleepLogLevel(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C8Cu, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorDeepSleepLogLevel failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorDeepSleepRegionLoglevels(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v5 = ot::Spinel::RadioSpinel::Set(this, 0x3C8Du, "D", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorDeepSleepRegionLoglevels failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorHostWakeReason(const char **this)
{
  v4 = this;
  v2 = this;
  v3 = ot::Spinel::RadioSpinel::Set(this, 0x3C8Eu, "C", 0);
  ot::Spinel::Logger::LogIfFail1(v2, "Set VendorHostWakeReason failed", v3);
  return v3;
}

uint64_t ot::Spinel::RadioSpinel::FlashErase(ot::Spinel::RadioSpinel *this, unsigned int a2, unsigned int a3)
{
  v5 = ot::Spinel::RadioSpinel::Set(this, 0x3C8Fu, "LL", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Set FlashErase failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::FlashWrite(ot::Spinel::RadioSpinel *this, unsigned int a2, unsigned __int8 *a3, unsigned __int16 a4)
{
  v6 = ot::Spinel::RadioSpinel::Set(this, 0x3C90u, "LD", a2, a4, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Set FlashWrite failed", v6);
  return v6;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorPowerLimitTableActiveId(ot::Spinel::RadioSpinel *this, char a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3CA2u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorPowerLimitTableActiveId failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorPowerMappingTableClear(const char **this)
{
  v4 = this;
  v2 = this;
  v3 = ot::Spinel::RadioSpinel::Set(this, 0x3CABu, "C", 0);
  ot::Spinel::Logger::LogIfFail1(v2, "Set VendorPowerMappingTableClear failed", v3);
  return v3;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorPowerMappingTableFlashData(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned __int16 *a3)
{
  v5 = ot::Spinel::RadioSpinel::Set(this, 0x3CACu, "D", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorPowerMappingTableFlashData failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorSetLogTimeStampBase(ot::Spinel::RadioSpinel *this, uint64_t a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x4003u, "X", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set LogTimeStampBase failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorUartDisableStart(ot::Spinel::RadioSpinel *this, unsigned int a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C42u, "L", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorUartDisableStart failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorPTB(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned __int16 *a3)
{
  v5 = ot::Spinel::RadioSpinel::Get(this, 0x3CAEu, "d", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorPTB failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::GetMSFState(ot::Spinel::RadioSpinel *this, BOOL *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3CAFu, "b", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get MSFState failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorPower(ot::Spinel::RadioSpinel *this, signed __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3CB1u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get Vendor Power failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorAntenna(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C98u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorAntenna failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCC(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C99u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCC failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCore(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C97u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCore failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorPCAP(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3C9Au, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorPCAP failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorPriority(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned __int8 *a3, unsigned int *a4)
{
  v6 = ot::Spinel::RadioSpinel::Get(this, 0x901u, "CCL", a2, a3, a4);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorPriority failed", v6);
  return v6;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorGPIO(ot::Spinel::RadioSpinel *a1, uint64_t a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(a1, 0x3C9Bu, "CCCC", a2, a2 + 1, a2 + 2, a2 + 3);
  ot::Spinel::Logger::LogIfFail1(a1, "Get GPIO failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorPTB(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned __int16 a3)
{
  v5 = ot::Spinel::RadioSpinel::Set(this, 0x3CAEu, "d", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorPTB failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorAntenna(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C98u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorAntenna failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCC(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C99u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCC failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorPCAP(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3C9Au, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorPCAP failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorPriority(ot::Spinel::RadioSpinel *this, unsigned __int8 a2, unsigned __int8 a3, unsigned int a4)
{
  v6 = ot::Spinel::RadioSpinel::Set(this, 0x901u, "CCL", a2, a3, a4);
  ot::Spinel::Logger::LogIfFail1(this, "Set Priority failed", v6);
  return v6;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorPower(ot::Spinel::RadioSpinel *this, signed __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3CB1u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorPower failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorGPIO(ot::Spinel::RadioSpinel *this, unsigned __int8 a2, unsigned __int8 a3)
{
  v5 = ot::Spinel::RadioSpinel::Set(this, 0x3C9Bu, "CC", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Set GPIO failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorExposureState(ot::Spinel::RadioSpinel *this, unsigned __int8 a2, unsigned __int8 a3)
{
  v5 = ot::Spinel::RadioSpinel::Set(this, 0x3CB7u, "CC", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Set Exposure state failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorExposureState(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v5 = ot::Spinel::RadioSpinel::Get(this, 0x3CB7u, "CC", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Get Exposure state failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorMWSScanFreqTable(ot::Spinel::RadioSpinel *this, unsigned __int8 a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  if (a2 && a2 < 0x64u && a3 && a4)
  {
    v11 = v12;
    v10 = &v12[2 * a2];
    for (i = 0; i < a2; ++i)
    {
      *v11 = a3[i];
      v4 = v11 + 1;
      v11 += 2;
      *v4 = HIBYTE(a3[i]);
      *v10 = a4[i];
      v5 = v10 + 1;
      v10 += 2;
      *v5 = HIBYTE(a4[i]);
    }

    v8 = ot::Spinel::RadioSpinel::Set(this, 0x3CB8u, "Cd", a2, v12, (4 * a2));
    ot::Spinel::Logger::LogIfFail1(this, "Set MWS Scan freq table failed", v8);
  }

  else
  {
    v8 = 7;
    ot::Spinel::Logger::LogIfFail1(this, "Set MWS Scan freq table failed", 7);
  }

  return v8;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorMWSScanFreqTable(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned __int16 *a3)
{
  v5 = ot::Spinel::RadioSpinel::Get(this, 0x3CB8u, "d", a3, a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get Scan table failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCellState(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3CB9u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set Cell state failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCellState(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 0x3CB9u, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get Cell state failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorThreadStartStop(ot::Spinel::RadioSpinel *this, char a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 0x3CA2u, "b", a2 & 1);
  ot::Spinel::Logger::LogIfFail1(this, "Set Thread start/stop failed", v4);
  return v4;
}

void *ot::MaxPowerTable::MaxPowerTable(void *this)
{
  *this = 0x1E1E1E1E1E1E1E1ELL;
  *(this + 7) = 0x1E1E1E1E1E1E1E1ELL;
  return this;
}

BOOL ot::Spinel::SpinelDriver::Array<unsigned int,(unsigned short)100>::Contains(uint64_t a1, _DWORD *a2)
{
  return ot::Spinel::SpinelDriver::Array<unsigned int,(unsigned short)100>::Find(a1, a2) != 0;
}

{
  return ot::Spinel::SpinelDriver::Array<unsigned int,(unsigned short)100>::Contains(a1, a2);
}

_DWORD *ot::Spinel::SpinelDriver::Array<unsigned int,(unsigned short)100>::Find(uint64_t a1, _DWORD *a2)
{
  v7 = 0;
  ot::Spinel::SpinelDriver::Array<unsigned int,(unsigned short)100>::begin();
  v5 = v2;
  v4 = ot::Spinel::SpinelDriver::Array<unsigned int,(unsigned short)100>::end(a1);
  while (v5 != v4)
  {
    if (*v5 == *a2)
    {
      return v5;
    }

    ++v5;
  }

  return v7;
}

{
  return ot::Spinel::SpinelDriver::Array<unsigned int,(unsigned short)100>::Find(a1, a2);
}

void ot::Spinel::SpinelDriver::Array<unsigned int,(unsigned short)100>::begin()
{
  ;
}

{
  ot::Spinel::SpinelDriver::Array<unsigned int,(unsigned short)100>::begin();
}

uint64_t ot::Spinel::SpinelDriver::Array<unsigned int,(unsigned short)100>::end(uint64_t a1)
{
  return a1 + 4 * *(a1 + 400);
}

{
  return ot::Spinel::SpinelDriver::Array<unsigned int,(unsigned short)100>::end(a1);
}

void ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::Clear(uint64_t a1)
{
  *(a1 + 8208) = a1 + 10;
  *a1 = a1 + 14;
  *(a1 + 8) = 8188;
  ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::SetSkipLength(a1, 0);
  ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::IgnoreError();
}

{
  ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::Clear(a1);
}

char *ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::ClearSavedFrames(char *result)
{
  v1 = result;
  v2 = *(result + 1026) - (result + 10);
  if (v2)
  {
    result = memmove(result + 10, *(result + 1026), (*result - *(result + 1026)));
    *v1 -= v2;
    *(v1 + 1026) -= v2;
    *(v1 + 4) += v2;
  }

  return result;
}

{
  return ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::ClearSavedFrames(result);
}

BOOL ot::Mac::Frame::IsSecurityEnabled(ot::Mac::Frame *this, unsigned __int16 a2, uint64_t a3, unsigned __int16 a4)
{
  return ot::Mac::Frame::GetFcfBit(this, 8u, 512) != 0;
}

{
  return ot::Mac::Frame::IsSecurityEnabled(this, a2, a3, a4);
}

uint64_t ot::Mac::Frame::GetFrameControlField(ot::Mac::Frame *this, unsigned __int16 a2)
{
  v4 = **this;
  if (!ot::Mac::Frame::IsShortFcf(**this))
  {
    v4 |= *(*this + 1) << 8;
  }

  return v4;
}

{
  return ot::Mac::Frame::GetFrameControlField(this, a2);
}

uint64_t ot::Mac::Frame::GetFcfBit(ot::Mac::Frame *this, unsigned __int16 a2, __int16 a3)
{
  v6 = this;
  if (ot::Mac::Frame::IsMultipurpose(this))
  {
    return (v6 & a3);
  }

  else
  {
    return (v6 & a2);
  }
}

{
  return ot::Mac::Frame::GetFcfBit(this, a2, a3);
}

BOOL ot::Mac::Frame::IsMultipurpose(ot::Mac::Frame *this)
{
  return (this & 7) == 5;
}

{
  return ot::Mac::Frame::IsMultipurpose(this);
}

BOOL ot::Mac::Frame::IsShortFcf(ot::Mac::Frame *this)
{
  return (this & 0xF) == 5;
}

{
  return ot::Mac::Frame::IsShortFcf(this);
}

uint64_t ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::markReset(uint64_t result, char a2)
{
  *(result + 8216) = a2 & 1;
  return result;
}

{
  return ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::markReset(result, a2);
}

void platformAlarmInit(int a1, int a2)
{
  sSpeedUpFactor = a1;
  if (a2)
  {
    v4 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/alarm.cpp", 47);
    if (v4)
    {
      v3 = v4 + 1;
    }

    else
    {
      v3 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/alarm.cpp";
    }

    v2 = otExitCodeToString(2);
    otLogCritPlat("%s() at %s:%d: %s", "platformAlarmInit", v3, 127, v2);
    handle_daemon_exit();
    exit(2);
  }

  otLogWarnPlat("Real time signal not enabled, microsecond timers may be inaccurate!");
}

uint64_t ot::Posix::Daemon::OutputFormatV(ot::Posix::Daemon *this, const char *a2, va_list a3)
{
  __nbyte = vsnprintf(__str, 0x280uLL, a2, a3);
  if (__nbyte < 0)
  {
    v3 = __error();
    v4 = strerror(*v3);
    ot::Posix::Logger<ot::Posix::Daemon>::LogWarn2("Failed to format CLI output: %s", v5, v6, v7, v8, v9, v10, v11, v4);
  }

  else
  {
    if (__nbyte >= 640)
    {
      __nbyte = 639;
      strcpy(v25, "(truncated ...)");
    }

    if (*(this + 6) != -1)
    {
      __nbyte = write(*(this + 6), __str, __nbyte);
      if (__nbyte < 0)
      {
        v12 = __error();
        v13 = strerror(*v12);
        ot::Posix::Logger<ot::Posix::Daemon>::LogWarn2("Failed to write CLI output: %s", v14, v15, v16, v17, v18, v19, v20, v13);
        close(*(this + 6));
        *(this + 6) = -1;
      }
    }
  }

  return __nbyte;
}

void ot::Posix::Daemon::InitializeSessionSocket(ot::Posix::Daemon *this)
{
  v21 = this;
  v20 = 0;
  v19 = 0;
  v20 = accept(*(this + 4), 0, 0);
  if (v20 == -1)
  {
    v19 = -1;
  }

  else
  {
    v17 = 0;
    v19 = fcntl(v20, 1);
    if (v19 != -1)
    {
      v17 = v19 | 1u;
      v19 = fcntl(v20, 2);
      if (v19 != -1)
      {
        v19 = setsockopt(v20, 0xFFFF, 4130, &v19, 4u);
        if (v19 != -1)
        {
          if (*(this + 6) != -1)
          {
            close(*(this + 6));
          }

          *(this + 6) = v20;
        }
      }
    }
  }

  if (v19 == -1)
  {
    v8 = __error();
    v9 = strerror(*v8);
    ot::Posix::Logger<ot::Posix::Daemon>::LogWarn2("Failed to initialize session socket: %s", v10, v11, v12, v13, v14, v15, v16, v9);
    if (v20 != -1)
    {
      close(v20);
    }
  }

  else
  {
    ot::Posix::Logger<ot::Posix::Daemon>::LogInfo2("Session socket is ready", v1, v2, v3, v4, v5, v6, v7, v17);
  }
}

void ot::Posix::Logger<ot::Posix::Daemon>::LogInfo2(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  otLogPlatArgs(4, "Daemon", a1, &a9);
}

{
  ot::Posix::Logger<ot::Posix::Daemon>::LogInfo2(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t ot::Posix::Daemon::createListenSocketOrDie(ot::Posix::Daemon *this)
{
  v13 = this;
  v12 = 0;
  *(this + 4) = SocketWithCloseExec(1, 1, 0, 1);
  if (*(this + 4) == -1)
  {
    v11 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/daemon.cpp", 47);
    if (v11)
    {
      v8 = v11 + 1;
    }

    else
    {
      v8 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/daemon.cpp";
    }

    v1 = otExitCodeToString(1);
    otLogCritPlat("%s() at %s:%d: %s", "createListenSocketOrDie", v8, 235, v1);
    handle_daemon_exit();
    exit(1);
  }

  memset(__b, 0, sizeof(__b));
  *(this + 5) = open(__b, 16777728, 384);
  if (*(this + 5) == -1)
  {
    v3 = otExitCodeToString(5);
    otLogCritPlat("exit(%d): %s line %d, %s, %s", 5, "createListenSocketOrDie", 250, "open", v3);
    handle_daemon_exit();
    exit(5);
  }

  if (flock(*(this + 5), 6) == -1)
  {
    v4 = otExitCodeToString(5);
    otLogCritPlat("exit(%d): %s line %d, %s, %s", 5, "createListenSocketOrDie", 255, "flock", v4);
    handle_daemon_exit();
    exit(5);
  }

  memset(v15, 0, sizeof(v15));
  v15[1] = 1;
  unlink(&v15[2]);
  ot::Posix::Daemon::createListenSocketOrDie(void)::AllowAllGuard::AllowAllGuard(v10);
  v12 = bind(*(this + 4), v15, 0x6Au);
  result = ot::Posix::Daemon::createListenSocketOrDie(void)::AllowAllGuard::~AllowAllGuard(v10);
  if (v12 == -1)
  {
    v7 = otExitCodeToString(5);
    otLogCritPlat("exit(%d): %s line %d, %s, %s", 5, "createListenSocketOrDie", 272, "bind", v7);
    handle_daemon_exit();
    exit(5);
  }

  return result;
}

uint64_t ot::Posix::anonymous namespace::GetFilename(ot::Posix::_anonymous_namespace_ *this, char (*a2)[104], const char *a3)
{
  v15 = this;
  v14 = a2;
  v13 = 0;
  v10 = &gNetifName;
  v3 = strlen(&gNetifName);
  v4 = &gNetifName;
  if (!v3)
  {
    v4 = "wpan0";
  }

  v12 = v4;
  result = snprintf(v15, 0x68uLL, v14, v4);
  v13 = result;
  if ((result & 0x80000000) != 0 && v13 >= 0x68)
  {
    v11 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/daemon.cpp", 47);
    if (v11)
    {
      v9 = v11 + 1;
    }

    else
    {
      v9 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/daemon.cpp";
    }

    v7 = v9;
    v8 = 2;
    v6 = otExitCodeToString(2);
    otLogCritPlat("%s() at %s:%d: %s", "GetFilename", v9, 76, v6);
    handle_daemon_exit();
    exit(v8);
  }

  return result;
}

uint64_t ot::Posix::Daemon::createListenSocketOrDie(void)::AllowAllGuard::AllowAllGuard(uint64_t a1)
{
  ot::Posix::Daemon::createListenSocketOrDie(void)::AllowAllGuard::AllowAllGuard(a1);
  return a1;
}

{
  *a1 = 0;
  *(a1 + 2) = 0;
  __s2 = getenv("OT_DAEMON_ALLOW_ALL");
  v3 = 0;
  if (__s2)
  {
    v3 = strcmp("1", __s2) == 0;
  }

  *a1 = v3;
  if (*a1)
  {
    *(a1 + 2) = umask(0);
  }

  return a1;
}

uint64_t ot::Posix::Daemon::createListenSocketOrDie(void)::AllowAllGuard::~AllowAllGuard(uint64_t a1)
{
  ot::Posix::Daemon::createListenSocketOrDie(void)::AllowAllGuard::~AllowAllGuard(a1);
  return a1;
}

{
  if (*a1)
  {
    umask(*(a1 + 2));
  }

  return a1;
}

void *ot::Posix::Daemon::SetUp(ot::Posix::Daemon *this)
{
  v8 = this;
  v6 = this;
  v7 = 0;
  if (*(this + 4) == -1)
  {
    ot::Posix::Daemon::createListenSocketOrDie(v6);
    v7 = listen(*(v6 + 4), 1);
    if (v7 == -1)
    {
      v5 = 5;
      v1 = otExitCodeToString(5);
      otLogCritPlat("exit(%d): %s line %d, %s, %s", 5, "SetUp", 291, "listen", v1);
      handle_daemon_exit();
      exit(v5);
    }
  }

  inited = otSysCliInitUsingDaemon(gInstance);
  v3 = ot::Posix::Mainloop::Manager::Get(inited);
  return ot::Posix::Mainloop::Manager::Add(v3, v6);
}

ot::Cli::Interpreter *ot::Posix::Daemon::EnableCliForXpc(ot::Posix::Daemon *this)
{
  v4 = gInstance;
  v1 = ot::Posix::Daemon::EnableCliForXpc(void)::$_0::operator int (*)(void *,char const*,char *)();
  return otCliInit(v4, v1, this);
}

uint64_t ot::Posix::Daemon::OutputFormatXpc(ot::Posix::Daemon *this, char *a2, va_list a3)
{
  v27 = "com.apple.wpantund.ncp";
  v28 = "default";
  v45 = this;
  __format = a2;
  v43 = a3;
  v29 = this;
  v53 = 0;
  v42 = vsnprintf(&__str, 0x640uLL, a2, a3);
  if (v42 < 0)
  {
    v3 = __error();
    v4 = strerror(*v3);
    otLogCritPlat("Failed to format CLI output: %s", v4);
  }

  else
  {
    if ((*(v29 + 10270) & 1) == 1 && v42 == 2 && __str == 13 && v50 == 10)
    {
      *(v29 + 10271) = 1;
    }

    else
    {
      if (v42 == 4 && __str == 68 && v50 == 111 && v51 == 110 && v52 == 101)
      {
        *(v29 + 10270) = 1;
      }

      if (v42 + *(v29 + 5134) > 10240)
      {
        handle_xpc_output_nobuff(v29 + 28, *(v29 + 5134));
      }

      for (i = 0; i < v42; ++i)
      {
        v5 = *(&__str + i);
        v6 = v29 + 28;
        v7 = (*(v29 + 5134))++;
        v6[v7] = v5;
      }
    }

    if (*(v29 + 5134) > 0x1F40u)
    {
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg && (syslog_is_the_mask_enabled(4) & 1) != 0)
      {
        oslog = logging_obg;
        type = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
        {
          log = oslog;
          *v25 = type;
          v8 = *(v29 + 5134);
          buf = v48;
          __os_log_helper_16_0_1_4_0(v48, v8);
          _os_log_error_impl(&_mh_execute_header, oslog, type, "Daemon::OutputFormatXpc mXpcTxBuffer usage high mXpcTxHead[%d]", v48, 8u);
        }
      }

      else if (!logging_obg)
      {
        v37 = &_os_log_default;
        v36 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v21 = v37;
          *v22 = v36;
          v23 = v47;
          __os_log_helper_16_2_2_8_32_8_32(v47, v27, v28);
          _os_log_error_impl(&_mh_execute_header, v37, v36, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v47, 0x16u);
        }
      }
    }

    if (*(v29 + 10271) & 1) != 0 && (*(v29 + 10270))
    {
      v35 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v35 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        v34 = v35;
        v33 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v18 = v34;
          *v19 = v33;
          v20 = v32;
          __os_log_helper_16_0_0(v32);
          _os_log_impl(&_mh_execute_header, v18, v19[0], "Uart::XpcOutput  mXpcPrompt && mXpcDone = true", v32, 2u);
        }
      }

      else if (!v35)
      {
        v31 = &_os_log_default;
        v30 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v15 = v31;
          *v16 = v30;
          v17 = v46;
          __os_log_helper_16_2_2_8_32_8_32(v46, v27, v28);
          _os_log_error_impl(&_mh_execute_header, v31, v30, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v46, 0x16u);
        }
      }

      v9 = v29;
      v10 = v29 + 28;
      v14 = 10268;
      v11 = (*(v29 + 5134))++;
      v10[v11] = 0;
      send_response_to_otctl(v9 + 28);
      memset(v29 + 28, -1, *(v29 + v14));
      v12 = v29;
      *(v29 + v14) = 0;
      *(v12 + 10271) = 0;
      *(v12 + 10270) = 0;
    }
  }

  return v42;
}

uint64_t ot::Posix::Daemon::Update(uint64_t result, _DWORD *a2)
{
  v2 = result;
  if (*(result + 16) != -1)
  {
    v7 = *(result + 16);
    if (__darwin_check_fd_set_overflow(v7, a2, 0))
    {
      a2[v7 / 0x20uLL] |= 1 << (v7 % 0x20uLL);
    }

    v6 = *(v2 + 16);
    result = __darwin_check_fd_set_overflow(v6, a2 + 64, 0);
    if (result)
    {
      a2[v6 / 0x20uLL + 64] |= 1 << (v6 % 0x20uLL);
    }

    if (a2[96] < *(v2 + 16))
    {
      a2[96] = *(v2 + 16);
    }
  }

  if (*(v2 + 24) != -1)
  {
    v5 = *(v2 + 24);
    if (__darwin_check_fd_set_overflow(v5, a2, 0))
    {
      a2[v5 / 0x20uLL] |= 1 << (v5 % 0x20uLL);
    }

    v4 = *(v2 + 24);
    result = __darwin_check_fd_set_overflow(v4, a2 + 64, 0);
    if (result)
    {
      a2[v4 / 0x20uLL + 64] |= 1 << (v4 % 0x20uLL);
    }

    if (a2[96] < *(v2 + 24))
    {
      a2[96] = *(v2 + 24);
    }
  }

  return result;
}

void ot::Posix::Daemon::Process(ot::Posix::Daemon *result, uint64_t a2)
{
  if (*(result + 4) != -1)
  {
    v21 = *(result + 4);
    if (__darwin_check_fd_set_overflow(v21, (a2 + 256), 0))
    {
      v22 = *(a2 + 256 + 4 * (v21 / 0x20uLL)) & (1 << (v21 % 0x20uLL));
    }

    else
    {
      v22 = 0;
    }

    if (v22)
    {
      v2 = otExitCodeToString(1);
      otLogCritPlat("exit(%d): %s line %d, %s, %s", 1, "Process", 449, "daemon socket error", v2);
      handle_daemon_exit();
      exit(1);
    }

    v19 = *(result + 4);
    if (__darwin_check_fd_set_overflow(v19, a2, 0))
    {
      v20 = *(a2 + 4 * (v19 / 0x20uLL)) & (1 << (v19 % 0x20uLL));
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
      ot::Posix::Daemon::InitializeSessionSocket(result);
    }

    if (*(result + 6) != -1)
    {
      v17 = *(result + 6);
      if (__darwin_check_fd_set_overflow(v17, (a2 + 256), 0))
      {
        v18 = *(a2 + 256 + 4 * (v17 / 0x20uLL)) & (1 << (v17 % 0x20uLL));
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
        close(*(result + 6));
        *(result + 6) = -1;
      }

      else
      {
        v15 = *(result + 6);
        if (__darwin_check_fd_set_overflow(v15, a2, 0))
        {
          v16 = *(a2 + 4 * (v15 / 0x20uLL)) & (1 << (v15 % 0x20uLL));
        }

        else
        {
          v16 = 0;
        }

        if (v16)
        {
          v13 = read(*(result + 6), v23, 0x27FuLL);
          if (v13 <= 0)
          {
            if (v13 < 0)
            {
              v3 = __error();
              v4 = strerror(*v3);
              ot::Posix::Logger<ot::Posix::Daemon>::LogWarn2("Daemon read: %s", v5, v6, v7, v8, v9, v10, v11, v4);
            }

            close(*(result + 6));
            *(result + 6) = -1;
          }

          else
          {
            v23[v13] = 0;
            otCliInputLine(v23);
          }
        }
      }
    }
  }
}

void *ot::Posix::Daemon::Get(ot::Posix::Daemon *this)
{
  {
    ot::Posix::Daemon::Daemon(&ot::Posix::Daemon::Get(void)::sInstance);
    __cxa_atexit(std::allocator<char>::allocator[abi:dn200100], &ot::Posix::Daemon::Get(void)::sInstance, &_mh_execute_header);
  }

  return &ot::Posix::Daemon::Get(void)::sInstance;
}

ot::Posix::Daemon *ot::Posix::Daemon::Daemon(ot::Posix::Daemon *this)
{
  ot::Posix::Daemon::Daemon(this);
  return this;
}

{
  ot::Posix::Mainloop::Source::Source(this);
  result = this;
  *this = off_1004C9000;
  *(this + 4) = -1;
  *(this + 5) = -1;
  *(this + 6) = -1;
  return result;
}

uint64_t ot::Posix::Daemon::EnableCliForXpc(void)::$_0::__invoke(ot::Posix::Daemon *a1, char *a2, va_list a3)
{
  v7 = a1;
  v6 = a2;
  v5 = a3;
  return ot::Posix::Daemon::EnableCliForXpc(void)::$_0::operator()(&v4, a1, a2, a3);
}

void *ot::Posix::Mainloop::Source::Source(void *this)
{
  *this = &off_1004C90A8;
  this[1] = 0;
  return this;
}

uint64_t otPlatEntropyGet(void *a1, unsigned __int16 a2)
{
  __stream = 0;
  if (a1 && a2)
  {
    __stream = fopen("/dev/urandom", "rb");
    if (__stream)
    {
      v4 = fread(a1, 1uLL, a2, __stream) != a2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 7;
  }

  if (__stream)
  {
    fclose(__stream);
  }

  return v4;
}

uint64_t otPlatInfraIfHasAddress(int a1, const void *a2)
{
  v14 = a1;
  v13 = a2;
  v12 = 0;
  v11 = 0;
  if (getifaddrs(&v11) == -1)
  {
    v10 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp", 47);
    if (v10)
    {
      v7 = v10 + 1;
    }

    else
    {
      v7 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp";
    }

    v5 = v7;
    v6 = 5;
    v2 = otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", "otPlatInfraIfHasAddress", v7, 75, v2);
    handle_daemon_exit();
    exit(v6);
  }

  for (i = v11; i; i = i->ifa_next)
  {
    ifa_addr = 0;
    v3 = if_nametoindex(i->ifa_name);
    if (v3 == v14)
    {
      if (i->ifa_addr)
      {
        if (i->ifa_addr->sa_family == 30)
        {
          ifa_addr = i->ifa_addr;
          if (!memcmp(&ifa_addr->sa_data[6], v13, 0x10uLL))
          {
            v12 = 1;
            break;
          }
        }
      }
    }
  }

  freeifaddrs(v11);
  return v12 & 1;
}

void *ot::Posix::InfraNetif::Get(ot::Posix::InfraNetif *this)
{
  {
    ot::Posix::InfraNetif::InfraNetif (&ot::Posix::InfraNetif::Get(void)::sInstance);
    __cxa_atexit(ot::Posix::InfraNetif::~InfraNetif, &ot::Posix::InfraNetif::Get(void)::sInstance, &_mh_execute_header);
  }

  return &ot::Posix::InfraNetif::Get(void)::sInstance;
}

uint64_t ot::Posix::InfraNetif::IsRunning(ot::Posix::InfraNetif *this)
{
  if (*(this + 8))
  {
    HasLinkLocalAddress = 0;
    if ((ot::Posix::InfraNetif::GetFlags(this) & 0x40) != 0)
    {
      HasLinkLocalAddress = ot::Posix::InfraNetif::HasLinkLocalAddress(this);
    }

    v2 = HasLinkLocalAddress;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t ot::Posix::InfraNetif::GetNetifName(ot::Posix::InfraNetif *this)
{
  if (*(this + 8))
  {
    return this + 16;
  }

  else
  {
    return 0;
  }
}

{
  return ot::Posix::InfraNetif::GetNetifName(this);
}

uint64_t ot::Posix::InfraNetif::GetNetifIndex(ot::Posix::InfraNetif *this)
{
  return *(this + 8);
}

{
  return ot::Posix::InfraNetif::GetNetifIndex(this);
}

uint64_t ot::Posix::InfraNetif::GetFlags(ot::Posix::InfraNetif *this)
{
  v23 = this;
  v18 = this;
  v22 = 0;
  v21 = 0;
  if (!*(this + 8))
  {
    __assert_rtn("GetFlags", "infra_if.cpp", 310, "mInfraIfIndex != 0");
  }

  v22 = SocketWithCloseExec(30, 2, 0, 0);
  if (v22 == -1)
  {
    v20 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp", 47);
    if (v20)
    {
      v17 = v20 + 1;
    }

    else
    {
      v17 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp";
    }

    v15 = v17;
    v16 = 5;
    v1 = otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", "GetFlags", v17, 313, v1);
    handle_daemon_exit();
    exit(v16);
  }

  v14 = __dst;
  *__dst = 0u;
  v25 = 0u;
  strcpy(__dst, v18 + 16);
  if (ioctl(v22, 0xC0206911uLL, __dst) == -1)
  {
    ot::Posix::Logger<ot::Posix::InfraNetif>::LogCrit2("The infra link %s may be lost. Exiting.", v2, v3, v4, v5, v6, v7, v8, v18 + 16);
    v19 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp", 47);
    if (v19)
    {
      v13 = v19 + 1;
    }

    else
    {
      v13 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp";
    }

    v11 = v13;
    v12 = 5;
    v9 = otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", "GetFlags", v13, 323, v9);
    handle_daemon_exit();
    exit(v12);
  }

  v21 = v25;
  close(v22);
  return v21;
}

void ot::Posix::InfraNetif::CountAddresses(uint64_t a1, _DWORD *a2)
{
  v22 = a1;
  v21 = a2;
  v20 = 0;
  *a2 = 0;
  v21[1] = 0;
  v21[2] = 0;
  if (getifaddrs(&v20) < 0)
  {
    v2 = __error();
    v3 = strerror(*v2);
    ot::Posix::Logger<ot::Posix::InfraNetif>::LogWarn2("failed to get netif addresses: %s", v4, v5, v6, v7, v8, v9, v10, v3);
  }

  else
  {
    for (i = v20; i; i = i->ifa_next)
    {
      if (!strncmp(i->ifa_name, (a1 + 16), 0x10uLL) && i->ifa_addr && i->ifa_addr->sa_family == 30)
      {
        v18 = &i->ifa_addr->sa_data[6];
        IsAddressLinkLocal = ot::Posix::IsAddressLinkLocal(v18, v11);
        *v21 += IsAddressLinkLocal;
        IsAddressUniqueLocal = ot::Posix::IsAddressUniqueLocal(v18, v13);
        v21[1] += IsAddressUniqueLocal;
        IsAddressGlobalUnicast = ot::Posix::IsAddressGlobalUnicast(v18, v15);
        v21[2] += IsAddressGlobalUnicast;
      }
    }

    freeifaddrs(v20);
  }
}

uint64_t ot::Posix::InfraNetif::CreateIcmp6Socket(ot::Posix::InfraNetif *this, const char *a2)
{
  v35 = this;
  v33 = 0;
  v30 = 1;
  v29 = 2;
  v28 = 255;
  v34 = SocketWithCloseExec(30, 3, 58, 0);
  if (v34 == -1)
  {
    v27 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp", 47);
    if (v27)
    {
      v19 = v27 + 1;
    }

    else
    {
      v19 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp";
    }

    v2 = otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", "CreateIcmp6Socket", v19, 149, v2);
    handle_daemon_exit();
    exit(5);
  }

  v31 = 0u;
  v32 = 0u;
  LODWORD(v32) = 352;
  v33 = setsockopt(v34, 58, 18, &v31, 0x20u);
  if (v33)
  {
    v26 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp", 47);
    if (v26)
    {
      v18 = v26 + 1;
    }

    else
    {
      v18 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp";
    }

    v3 = otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", "CreateIcmp6Socket", v18, 158, v3);
    handle_daemon_exit();
    exit(5);
  }

  v33 = setsockopt(v34, 41, 61, &v30, 4u);
  if (v33)
  {
    v25 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp", 47);
    if (v25)
    {
      v17 = v25 + 1;
    }

    else
    {
      v17 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp";
    }

    v4 = otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", "CreateIcmp6Socket", v17, 162, v4);
    handle_daemon_exit();
    exit(5);
  }

  v33 = setsockopt(v34, 41, 26, &v29, 4u);
  if (v33)
  {
    v24 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp", 47);
    if (v24)
    {
      v16 = v24 + 1;
    }

    else
    {
      v16 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp";
    }

    v5 = otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", "CreateIcmp6Socket", v16, 169, v5);
    handle_daemon_exit();
    exit(5);
  }

  v33 = setsockopt(v34, 41, 37, &v30, 4u);
  if (v33)
  {
    v23 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp", 47);
    if (v23)
    {
      v15 = v23 + 1;
    }

    else
    {
      v15 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp";
    }

    v6 = otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", "CreateIcmp6Socket", v15, 173, v6);
    handle_daemon_exit();
    exit(5);
  }

  v33 = setsockopt(v34, 41, 4, &v28, 4u);
  if (v33)
  {
    v22 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp", 47);
    if (v22)
    {
      v14 = v22 + 1;
    }

    else
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp";
    }

    v7 = otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", "CreateIcmp6Socket", v14, 176, v7);
    handle_daemon_exit();
    exit(5);
  }

  v33 = setsockopt(v34, 41, 10, &v28, 4u);
  if (v33)
  {
    v21 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp", 47);
    if (v21)
    {
      v13 = v21 + 1;
    }

    else
    {
      v13 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp";
    }

    v8 = otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", "CreateIcmp6Socket", v13, 179, v8);
    handle_daemon_exit();
    exit(5);
  }

  v9 = strlen(v35);
  v33 = setsockopt(v34, 41, 125, v35, v9);
  if (v33)
  {
    v20 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp", 47);
    if (v20)
    {
      v12 = v20 + 1;
    }

    else
    {
      v12 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp";
    }

    v10 = otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", "CreateIcmp6Socket", v12, 186, v10);
    handle_daemon_exit();
    exit(5);
  }

  return v34;
}

BOOL ot::Posix::IsAddressLinkLocal(ot::Posix *this, const in6_addr *a2)
{
  v3 = 0;
  if (*this == 254)
  {
    return (*(this + 1) & 0xC0) == 128;
  }

  return v3;
}

uint64_t ot::Posix::InfraNetif::HasLinkLocalAddress(ot::Posix::InfraNetif *this)
{
  v21 = this;
  v15 = this;
  v20 = 0;
  v19 = 0;
  if (getifaddrs(&v19) < 0)
  {
    v1 = __error();
    v2 = strerror(*v1);
    ot::Posix::Logger<ot::Posix::InfraNetif>::LogCrit2("failed to get netif addresses: %s", v3, v4, v5, v6, v7, v8, v9, v2);
    v18 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp", 47);
    if (v18)
    {
      v14 = v18 + 1;
    }

    else
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp";
    }

    v12 = v14;
    v13 = 5;
    v10 = otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", "HasLinkLocalAddress", v12, 393, v10);
    handle_daemon_exit();
    exit(v13);
  }

  for (i = v19; i; i = i->ifa_next)
  {
    ifa_addr = 0;
    if (!strncmp(i->ifa_name, v15 + 16, 0x10uLL))
    {
      if (i->ifa_addr)
      {
        if (i->ifa_addr->sa_family == 30)
        {
          ifa_addr = i->ifa_addr;
          if (ifa_addr->sa_data[6] == 254 && (ifa_addr->sa_data[7] & 0xC0) == 0x80)
          {
            v20 = 1;
            break;
          }
        }
      }
    }
  }

  freeifaddrs(v19);
  return v20 & 1;
}

void ot::Posix::InfraNetif::HandleBackboneStateChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gInstance != a2)
  {
    __assert_rtn("HandleBackboneStateChange", "infra_if.cpp", 374, "gInstance == aInstance");
  }

  ot::Posix::MulticastRoutingManager::HandleStateChange((a1 + 40), a2, a3);
}

void ot::Posix::InfraNetif::SetInfraNetif (ot::Posix::InfraNetif *this, const char *a2)
{
  if (!gInstance)
  {
    __assert_rtn("SetInfraNetif", "infra_if.cpp", 431, "gInstance != nullptr");
  }

  if (ot::Posix::MulticastRoutingManager::IsEnabled((this + 40)))
  {
    v26 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp", 47);
    if (v26)
    {
      v22 = v26 + 1;
    }

    else
    {
      v22 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp";
    }

    v9 = otExitCodeToString(7);
    otLogCritPlat("%s() at %s:%d: %s", "SetInfraNetif", v22, 447, v9);
    handle_daemon_exit();
    exit(7);
  }

  if (a2 && *a2)
  {
    if (strnlen(a2, 0x10uLL) > 0xF)
    {
      v25 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp", 47);
      if (v25)
      {
        v21 = v25 + 1;
      }

      else
      {
        v21 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp";
      }

      v10 = otExitCodeToString(2);
      otLogCritPlat("%s() at %s:%d: %s", "SetInfraNetif", v21, 457, v10);
      handle_daemon_exit();
      exit(2);
    }

    strcpy(this + 16, a2);
    v27 = if_nametoindex(a2);
    if (!v27)
    {
      ot::Posix::Logger<ot::Posix::InfraNetif>::LogCrit2("Failed to get the index for infra interface %s", v11, v12, v13, v14, v15, v16, v17, a2);
      v24 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp", 47);
      if (v24)
      {
        v20 = v24 + 1;
      }

      else
      {
        v20 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp";
      }

      v18 = otExitCodeToString(2);
      otLogCritPlat("%s() at %s:%d: %s", "SetInfraNetif", v20, 465, v18);
      handle_daemon_exit();
      exit(2);
    }

    *(this + 8) = v27;
  }

  else
  {
    ot::Posix::Logger<ot::Posix::InfraNetif>::LogWarn2("Border Routing/Backbone Router feature is disabled: infra interface is missing", v2, v3, v4, v5, v6, v7, v8, v19);
  }
}

void *ot::Posix::InfraNetif::SetUp(ot::Posix::InfraNetif *this)
{
  if (!gInstance)
  {
    __assert_rtn("SetUp", "infra_if.cpp", 476, "gInstance != nullptr");
  }

  ot::Posix::MulticastRoutingManager::SetUp((this + 40));
  v1 = otIp6SetLargeScopeMulticastReceiveCallback(gInstance, platformBackboneProcessMulticast, gInstance);
  v2 = ot::Posix::Mainloop::Manager::Get(v1);
  return ot::Posix::Mainloop::Manager::Add(v2, this);
}

void *ot::Posix::InfraNetif::TearDown(ot::Posix::InfraNetif *this)
{
  v1 = ot::Posix::MulticastRoutingManager::TearDown((this + 40));
  v2 = ot::Posix::Mainloop::Manager::Get(v1);
  return ot::Posix::Mainloop::Manager::Remove(v2, this);
}

uint64_t ot::Posix::InfraNetif::Deinit(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 32) = 0;
  return this;
}

ot::Posix::InfraNetif *ot::Posix::InfraNetif::InfraNetif (ot::Posix::InfraNetif *this)
{
  ot::Posix::InfraNetif::InfraNetif (this);
  return this;
}

{
  ot::Posix::Mainloop::Source::Source(this);
  *this = off_1004C90D8;
  *(this + 8) = 0;
  ot::Posix::MulticastRoutingManager::MulticastRoutingManager((this + 40));
  return this;
}

void ot::Posix::InfraNetif::~InfraNetif (ot::Posix::InfraNetif *this)
{
  ot::Posix::InfraNetif::~InfraNetif (this);
}

{
  ot::Posix::InfraNetif::~InfraNetif (this);
  operator delete();
}

{
  *this = off_1004C90D8;
  ot::Posix::MulticastRoutingManager::~MulticastRoutingManager((this + 40));
  ot::Spinel::SpinelInterface::~SpinelInterface(this);
}

ot::Posix::MulticastRoutingManager *ot::Posix::MulticastRoutingManager::MulticastRoutingManager(ot::Posix::MulticastRoutingManager *this)
{
  ot::Posix::MulticastRoutingManager::MulticastRoutingManager(this);
  return this;
}

{
  ot::Posix::Mainloop::Source::Source(this);
  *this = off_1004C97A8;
  v3 = (this + 16);
  do
  {
    ot::Posix::MulticastRoutingManager::MulticastForwardingCache::MulticastForwardingCache(v3);
    v3 = (v3 + 56);
  }

  while (v3 != (this + 42016));
  *(this + 5252) = 0;
  *(this + 10506) = -1;
  ot::Posix::BackboneIPv6Interface::BackboneIPv6Interface((this + 42032));
  *(this + 42028) = 0;
  return this;
}

void ot::Posix::MulticastRoutingManager::~MulticastRoutingManager(ot::Posix::MulticastRoutingManager *this)
{
  ot::Posix::MulticastRoutingManager::~MulticastRoutingManager(this);
}

{
  *this = off_1004C97A8;
  ot::Posix::BackboneIPv6Interface::~BackboneIPv6Interface((this + 42032));
  ot::Spinel::SpinelInterface::~SpinelInterface(this);
}

{
  ot::Posix::MulticastRoutingManager::~MulticastRoutingManager(this);
  operator delete();
}

void *ot::Posix::Mainloop::Manager::Add(void *this, ot::Posix::Mainloop::Source *a2)
{
  if (*(a2 + 1))
  {
    __assert_rtn("Add", "mainloop.cpp", 41, "aSource.mNext == nullptr");
  }

  *(a2 + 1) = *this;
  *this = a2;
  return this;
}

void *ot::Posix::Mainloop::Manager::Remove(void *this, ot::Posix::Mainloop::Source *a2)
{
  for (i = this; *i; i = (*i + 8))
  {
    if (*i == a2)
    {
      *i = *(a2 + 1);
      break;
    }
  }

  *(a2 + 1) = 0;
  return this;
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,5u>(ot::Spinel::RadioSpinel **a1)
{
  v3 = a1;
  v2 = 100;
  return ot::Spinel::RadioSpinel::Get(*a1, 5u, "D", v4, &v2);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,1u>(ot::Spinel::RadioSpinel **a1)
{
  v4 = a1;
  v3 = 0;
  v2 = 0;
  return ot::Spinel::RadioSpinel::Get(*a1, 1u, "ii", &v3, &v2);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,4619u>(ot::Spinel::RadioSpinel **a1)
{
  v3 = a1;
  v2 = 0;
  return ot::Spinel::RadioSpinel::Get(*a1, 0x120Bu, "i", &v2);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,176u>(ot::Spinel::RadioSpinel **a1)
{
  v3 = a1;
  v2 = 0;
  return ot::Spinel::RadioSpinel::Get(*a1, 0xB0u, "i", &v2);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,41u>(ot::Spinel::RadioSpinel **a1)
{
  v3 = a1;
  v2 = 32;
  return ot::Spinel::RadioSpinel::Get(*a1, 0x29u, "D", v4, &v2);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,34u>(ot::Spinel::RadioSpinel **a1)
{
  v3 = a1;
  v2 = 32;
  return ot::Spinel::RadioSpinel::Get(*a1, 0x22u, "D", v4, &v2);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,38u>(ot::Spinel::RadioSpinel **a1)
{
  v3 = a1;
  v2 = 0;
  return ot::Spinel::RadioSpinel::Get(*a1, 0x26u, "c", &v2);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,39u>(ot::Spinel::RadioSpinel **a1)
{
  v3 = a1;
  v2 = 0;
  return ot::Spinel::RadioSpinel::Get(*a1, 0x27u, "c", &v2);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<3u,2048u>(ot::Spinel::RadioSpinel **a1)
{
  *&v3 = 0x1111111111111111;
  *(&v3 + 1) = 0x1111111111111111;
  qmemcpy(v2, "3333333333333333", sizeof(v2));
  return ot::Spinel::RadioSpinel::SetMacKey(*a1, 8u, 0x64u, &v3, &v2[1], v2);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,2052u>(ot::Spinel::RadioSpinel **a1)
{
  v3 = a1;
  v2 = 0;
  return ot::Spinel::RadioSpinel::Get(*a1, 0x804u, "C", &v2);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,2053u>(ot::Spinel::RadioSpinel **a1)
{
  v3 = a1;
  v2 = 0;
  return ot::Spinel::RadioSpinel::Get(*a1, 0x805u, "C", &v2);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,2050u>(ot::Spinel::RadioSpinel **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11[1] = a1;
  v11[0] = 0;
  v8 = spinel_datatype_pack(v12, 8u, "X", a4, a5, a6, a7, a8, 0);
  return ot::Spinel::RadioSpinel::GetWithParam(*a1, 0x802u, v12, v8, "X", v11);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,36u>(ot::Spinel::RadioSpinel **a1)
{
  v3 = a1;
  v2 = 0;
  return ot::Spinel::RadioSpinel::Get(*a1, 0x24u, "c", &v2);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,42u>(ot::Spinel::RadioSpinel **a1)
{
  v3 = a1;
  v2 = 0;
  return ot::Spinel::RadioSpinel::Get(*a1, 0x2Au, "c", &v2);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,44u>(ot::Spinel::RadioSpinel **a1)
{
  v3 = a1;
  v2 = 0;
  return ot::Spinel::RadioSpinel::Get(*a1, 0x2Cu, "S", &v2);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,37u>(ot::Spinel::RadioSpinel **a1)
{
  v3 = a1;
  v2 = 0;
  return ot::Spinel::RadioSpinel::Get(*a1, 0x25u, "c", &v2);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,4621u>(ot::Spinel::RadioSpinel **a1)
{
  v3 = a1;
  v2 = 0;
  return ot::Spinel::RadioSpinel::Get(*a1, 0x120Du, "b", &v2);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,177u>(ot::Spinel::RadioSpinel **a1)
{
  v3 = a1;
  v2 = 0;
  return ot::Spinel::RadioSpinel::Get(*a1, 0xB1u, "i", &v2);
}

uint64_t ot::Posix::RcpCapsDiag::DiagProcess(ot::Spinel::RadioSpinel **this, char **a2, char a3)
{
  v5 = 0;
  if (a3 == 2)
  {
    if (!strcmp(a2[1], "capflags"))
    {
      ot::Posix::RcpCapsDiag::ProcessCapabilityFlags(this);
    }

    else if (!strcmp(a2[1], "srcmatchtable"))
    {
      ot::Posix::RcpCapsDiag::ProcessSrcMatchTable(this);
    }

    else if (!strcmp(a2[1], "spinel"))
    {
      ot::Posix::RcpCapsDiag::ProcessSpinel(this);
    }

    else if (!strcmp(a2[1], "spinelspeed"))
    {
      ot::Posix::RcpCapsDiag::ProcessSpinelSpeed(this);
    }

    else
    {
      return 35;
    }
  }

  else
  {
    return 7;
  }

  return v5;
}

ot::Posix::RcpCapsDiag *ot::Posix::RcpCapsDiag::ProcessSpinel(ot::Posix::RcpCapsDiag *this)
{
  v1 = this;
  for (i = 0; i < 4u; ++i)
  {
    this = ot::Posix::RcpCapsDiag::TestSpinelCommands(v1, i);
  }

  return this;
}

uint64_t ot::Posix::RcpCapsDiag::ProcessSpinelSpeed(ot::Posix::RcpCapsDiag *this)
{
  v8 = ot::Posix::RcpCapsDiag::HandleDiagOutput;
  *&__len[3] = this;
  v9 = this;
  *&__len[1] = 0;
  __dst = __b;
  v10 = 256;
  memset(__b, 0, sizeof(__b));
  __len[0] = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  memset(&v14[1] + 4, 0, 12);
  v14[0] = 0;
  v13 = 0;
  ot::Spinel::RadioSpinel::GetDiagOutputCallback(*v9, v14, &v13);
  ot::Spinel::RadioSpinel::SetDiagOutputCallback(*v9, ot::Posix::RcpCapsDiag::HandleDiagOutput, v9);
  strncpy(__b, "echo ", 0xFFuLL);
  __len[0] = 256 - strlen(__b) - 1;
  __len[0] = ot::Lib::Utils::Min<unsigned short>(0xC8u, __len[0]);
  v1 = strlen(__b);
  memset(&__b[v1], 49, __len[0]);
  for (i = 0; i < 0x64u; ++i)
  {
    v2 = v9;
    __s[0] = 0;
    *(v9 + 3) = __s;
    *(v2 + 16) = 500;
    v17 = otPlatTimeGet();
    *&__len[1] = ot::Spinel::RadioSpinel::PlatDiagProcess(*v9, __b);
    if (*&__len[1])
    {
      goto LABEL_6;
    }

    v16 = otPlatTimeGet();
    v15 += v16 - v17;
    v7 = strlen(__b) + 9;
    v14[2] = (v14[2] + v7 + strlen(__s) + 1);
  }

  ot::Spinel::RadioSpinel::SetDiagOutputCallback(*v9, v14[0], v13);
LABEL_6:
  if (*&__len[1])
  {
    v5 = otThreadErrorToString(*&__len[1]);
    return ot::Posix::RcpCapsDiag::Output(v9, "Failed to test the Spinel speed: %s", v5);
  }

  else
  {
    HIDWORD(v14[1]) = 8000000 * v14[2] / v15;
    v3 = ot::ToUlong(HIDWORD(v14[1]));
    v6 = __s;
    snprintf(__s, 0x1F4uLL, "%lu bps", v3);
    return ot::Posix::RcpCapsDiag::OutputFormat(v9, "SpinelSpeed", v6);
  }
}

uint64_t ot::Posix::RcpCapsDiag::TestSpinelCommands(ot::Posix::RcpCapsDiag *this, Category a2)
{
  v10 = a2;
  v2 = ot::Posix::RcpCapsDiag::CategoryToString(a2, a2);
  result = ot::Posix::RcpCapsDiag::Output(this, "\r\n%s :\r\n", v2);
  for (i = &ot::Posix::RcpCapsDiag::sSpinelEntries; i != ot::Posix::RcpCapsDiag::CategoryToString(ot::Posix::RcpCapsDiag::Category)::kCategoryStrings; i += 4)
  {
    if (*i == v10)
    {
      v6 = i[2];
      v4 = i[3];
      v7 = (this + (v4 >> 1));
      if (v4)
      {
        v5 = (*(*v7 + v6))(v7);
      }

      else
      {
        v5 = (v6)(v7);
      }

      result = ot::Posix::RcpCapsDiag::OutputResult(this, i, v5);
    }
  }

  return result;
}

uint64_t ot::Posix::RcpCapsDiag::Output(uint64_t this, const char *a2, ...)
{
  va_start(va, a2);
  if (*(this + 8))
  {
    return (*(this + 8))(a2, va, *(this + 16));
  }

  return this;
}

const char *ot::Posix::RcpCapsDiag::CategoryToString(ot::Posix::RcpCapsDiag *this, Category a2)
{
  if (this >= 4uLL)
  {
    return "invalid";
  }

  else
  {
    return ot::Posix::RcpCapsDiag::CategoryToString(ot::Posix::RcpCapsDiag::Category)::kCategoryStrings[this];
  }
}

uint64_t ot::Posix::RcpCapsDiag::OutputResult(ot::Posix::RcpCapsDiag *a1, uint64_t a2, int a3)
{
  memset(__b, 0, sizeof(__b));
  v7 = spinel_command_to_cstr(*(a2 + 4));
  v6 = spinel_prop_key_to_cstr(*(a2 + 8));
  snprintf(__b, 0x39uLL, "%.*s %.*s", 20, v7, 35, v6);
  v3 = otThreadErrorToString(a3);
  return ot::Posix::RcpCapsDiag::OutputFormat(a1, __b, v3);
}

uint64_t ot::Posix::RcpCapsDiag::SetDiagOutputCallback(uint64_t this, void (*a2)(const char *, char *, void *), void *a3)
{
  *(this + 8) = a2;
  *(this + 16) = a3;
  return this;
}

uint64_t ot::Posix::RcpCapsDiag::TestRadioCapbilityFlags(ot::Spinel::RadioSpinel **this)
{
  v6 = this;
  v5 = 0;
  v4 = 0;
  result = ot::Spinel::RadioSpinel::Get(*this, 0x120Bu, "i", &v4);
  v5 = result;
  if (!result)
  {
    ot::Posix::RcpCapsDiag::Output(this, "\r\nRadio Capbility Flags :\r\n");
    ot::Posix::RcpCapsDiag::OutputRadioCapFlags(this, 1, v4, ot::Posix::RcpCapsDiag::TestRadioCapbilityFlags(void)::kRadioThread11Flags, 3u);
    ot::Posix::RcpCapsDiag::OutputRadioCapFlags(this, 2, v4, &ot::Posix::RcpCapsDiag::TestRadioCapbilityFlags(void)::kRadioThread12Flags, 2u);
    result = ot::Posix::RcpCapsDiag::OutputRadioCapFlags(this, 3, v4, ot::Posix::RcpCapsDiag::TestRadioCapbilityFlags(void)::kRadioUtilsFlags, 4u);
  }

  if (v5)
  {
    v2 = otThreadErrorToString(v5);
    return ot::Posix::RcpCapsDiag::Output(this, "Failed to get radio capability flags: %s", v2);
  }

  return result;
}

uint64_t ot::Posix::RcpCapsDiag::TestSpinelCapbilityFlags(ot::Spinel::RadioSpinel **this)
{
  v6 = this;
  v5 = 0;
  v4 = 100;
  result = ot::Spinel::RadioSpinel::Get(*this, 5u, "D", v7, &v4);
  v5 = result;
  if (!result)
  {
    ot::Posix::RcpCapsDiag::Output(this, "\r\nSpinel Capbility Flags :\r\n");
    ot::Posix::RcpCapsDiag::OutputSpinelCapFlags(this, 0, v7, v4, ot::Posix::RcpCapsDiag::TestSpinelCapbilityFlags(void)::kSpinelBasicFlags, 3u);
    result = ot::Posix::RcpCapsDiag::OutputSpinelCapFlags(this, 3, v7, v4, ot::Posix::RcpCapsDiag::TestSpinelCapbilityFlags(void)::kSpinelUtilsFlags, 3u);
  }

  if (v5)
  {
    v2 = otThreadErrorToString(v5);
    return ot::Posix::RcpCapsDiag::Output(this, "Failed to get Spinel capbility flags: %s", v2);
  }

  return result;
}

uint64_t ot::Posix::RcpCapsDiag::OutputRadioCapFlags(ot::Posix::RcpCapsDiag *this, Category a2, int a3, const unsigned int *a4, unsigned __int16 a5)
{
  v5 = ot::Posix::RcpCapsDiag::CategoryToString(a2, a2);
  result = ot::Posix::RcpCapsDiag::Output(this, "\r\n%s :\r\n", v5);
  for (i = 0; i < a5; ++i)
  {
    v8 = ot::Posix::RcpCapsDiag::RadioCapbilityToString(a4[i]);
    v7 = ot::Posix::RcpCapsDiag::SupportToString(((a3 & a4[i]) != 0));
    result = ot::Posix::RcpCapsDiag::OutputFormat(this, v8, v7);
  }

  return result;
}

uint64_t ot::Posix::RcpCapsDiag::OutputFormat(ot::Posix::RcpCapsDiag *this, const char *a2, const char *a3)
{
  v6 = strlen(a2);
  if (v6 <= 0x38u)
  {
    v4 = v6;
  }

  else
  {
    v4 = 56;
  }

  return ot::Posix::RcpCapsDiag::Output(this, "%.*s %s %s\r\n", 56, a2, &ot::Posix::RcpCapsDiag::OutputFormat(char const*,char const*)::kPadding[v4], a3);
}

char *ot::Posix::RcpCapsDiag::RadioCapbilityToString(ot::Posix::RcpCapsDiag *this)
{
  v4 = this;
  v3 = "invalid";
  v2 = 0;
  while ((v4 & 1) == 0)
  {
    if (v2 >= 9uLL)
    {
      return v3;
    }

    v4 >>= 1;
    ++v2;
  }

  return ot::Posix::RcpCapsDiag::RadioCapbilityToString::kCapbilityStrings[v2];
}

const char *ot::Posix::RcpCapsDiag::SupportToString(ot::Posix::RcpCapsDiag *this)
{
  if (this)
  {
    return "OK";
  }

  else
  {
    return "NotSupported";
  }
}

uint64_t ot::Posix::RcpCapsDiag::OutputSpinelCapFlags(ot::Posix::RcpCapsDiag *this, Category a2, unsigned __int8 *a3, unsigned int a4, const unsigned int *a5, unsigned __int16 a6)
{
  v23 = this;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v19 = a5;
  v18 = a6;
  v16 = this;
  v6 = ot::Posix::RcpCapsDiag::CategoryToString(a2, a2);
  result = ot::Posix::RcpCapsDiag::Output(v16, "\r\n%s :\r\n", v6);
  for (i = 0; i < v18; ++i)
  {
    v8 = spinel_capability_to_cstr(v19[i]);
    v15 = __str;
    snprintf(__str, 0x28uLL, "SPINEL_CAPS_%s", v8);
    IsSpinelCapabilitySupported = ot::Posix::RcpCapsDiag::IsSpinelCapabilitySupported(v16, v21, v20, v19[i], v9, v10, v11, v12);
    v14 = ot::Posix::RcpCapsDiag::SupportToString(IsSpinelCapabilitySupported);
    result = ot::Posix::RcpCapsDiag::OutputFormat(v16, v15, v14);
  }

  return result;
}

uint64_t ot::Posix::RcpCapsDiag::IsSpinelCapabilitySupported(ot::Posix::RcpCapsDiag *this, unsigned __int8 *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = this;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = 0;
  while (v13)
  {
    v10 = 0;
    v9 = spinel_datatype_unpack(v14, v13, "i", a4, a5, a6, a7, a8, &v10);
    if (v9 <= 0)
    {
      break;
    }

    if (v10 == v12)
    {
      v11 = 1;
      return v11 & 1;
    }

    v14 += v9;
    v13 -= v9;
  }

  return v11 & 1;
}

uint64_t ot::Posix::RcpCapsDiag::OutputShortSrcMatchTableSize(ot::Spinel::RadioSpinel **this)
{
  i = 0;
  if (!ot::Spinel::RadioSpinel::Set(*this, 0x1303u, "b", 1) && !ot::Spinel::RadioSpinel::Set(*this, 0x1304u, 0))
  {
      ;
    }
  }

  if (i)
  {
    ot::Spinel::RadioSpinel::Set(*this, 0x1304u, 0);
    ot::Spinel::RadioSpinel::Set(*this, 0x1303u, "b", 0);
  }

  return ot::Posix::RcpCapsDiag::OutputFormat(this, "ShortSrcMatchTableSize", i);
}

uint64_t ot::Posix::RcpCapsDiag::OutputExtendedSrcMatchTableSize(ot::Spinel::RadioSpinel **this)
{
  v4 = 0x8877665544332211;
  i = 0;
  if (!ot::Spinel::RadioSpinel::Set(*this, 0x1303u, "b", 1) && !ot::Spinel::RadioSpinel::Set(*this, 0x1305u, 0))
  {
    for (i = 0; i < 0x200u; ++i)
    {
      LOWORD(v4) = i;
      if (ot::Spinel::RadioSpinel::Insert(*this, 0x1305u, "E", &v4))
      {
        break;
      }
    }
  }

  if (i)
  {
    ot::Spinel::RadioSpinel::Set(*this, 0x1305u, 0);
    ot::Spinel::RadioSpinel::Set(*this, 0x1303u, "b", 0);
  }

  return ot::Posix::RcpCapsDiag::OutputFormat(this, "ExtendedSrcMatchTableSize", i);
}

uint64_t ot::Posix::RcpCapsDiag::HandleDiagOutput(uint64_t this, const char *a2, va_list a3)
{
  v4 = this;
  if (*(this + 24))
  {
    if (*(this + 32))
    {
      this = vsnprintf(*(this + 24), *(this + 32), a2, a3);
      if ((this & 0x80000000) == 0)
      {
        if (this <= *(v4 + 32))
        {
          v3 = this;
        }

        else
        {
          v3 = *(v4 + 32);
        }

        *(v4 + 24) += v3;
        *(v4 + 32) -= v3;
      }
    }
  }

  return this;
}

uint64_t ot::Lib::Utils::Min<unsigned short>(unsigned __int16 a1, unsigned __int16 a2)
{
  if (a1 >= a2)
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

{
  return ot::Lib::Utils::Min<unsigned short>(a1, a2);
}

uint64_t otPlatSetMcuPowerState(uint64_t a1, unsigned int a2)
{
  v3 = 0;
  if (a2 > 1)
  {
    return 1;
  }

  else
  {
    gPlatMcuPowerState = a2;
  }

  return v3;
}

uint64_t SocketWithCloseExec(int a1, int a2, int a3, int a4)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = 0;
  v11 = socket(a1, a2, a3);
  if (v11 == -1)
  {
    perror("socket(SOCK_CLOEXEC)");
  }

  else
  {
    v12 = fcntl(v11, 1, 0);
    if (v12 == -1)
    {
      perror("fcntl(F_GETFD)");
    }

    else
    {
      if (v13 == 1)
      {
        v4 = 5;
      }

      else
      {
        v4 = 1;
      }

      v12 |= v4;
      v12 = fcntl(v11, 2, v12);
      if (v12 == -1)
      {
        perror("fcntl(F_SETFD)");
      }
    }
  }

  if (v12 == -1)
  {
    if (close(v11))
    {
      v10 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/misc.cpp", 47);
      if (v10)
      {
        v9 = v10 + 1;
      }

      else
      {
        v9 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/misc.cpp";
      }

      v7 = v9;
      v8 = 5;
      v5 = otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", "SocketWithCloseExec", v7, 118, v5);
      handle_daemon_exit();
      exit(v8);
    }

    return -1;
  }

  return v11;
}

void ot::Posix::MulticastRoutingManager::processLargeScopeMulticastTransmit(ot::Posix::MulticastRoutingManager *this, char *a2, uint64_t *a3)
{
  v30 = this;
  v29 = a2;
  v28 = a3;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  if (!gInstance)
  {
    __assert_rtn("processLargeScopeMulticastTransmit", "multicast_routing.cpp", 92, "gInstance != nullptr");
  }

  v21 = &gInstance;
  v24[0] = otThreadGetDeviceRole(gInstance) != 0;
  v24[1] = 0;
  v27 = otIp6NewMessage(gInstance, v24);
  if (v27)
  {
    if (*v28 >= 4 && !*v29 && !v29[1])
    {
      *v28 -= 4;
      v25 = 4;
    }

    v23 = 0;
    v20 = *v28;
    v3 = otThreadErrorToString(0);
    ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2("MulticastRoutingManager::processLargeScopeMulticastTransmit Packet to NCP (%hu bytes): %s", v4, v5, v6, v7, v8, v9, v10, v20, v3);
    v26 = otMessageAppend(v27, &v29[v25], *v28);
    if (!v26)
    {
      otMessageSetTimestamp(v27);
      v26 = otIp6Send(gInstance, v27);
      v27 = 0;
    }
  }

  else
  {
    v26 = 3;
  }

  if (v27)
  {
    otMessageFree(v27);
  }

  if (v26)
  {
    v22 = v26;
    v19 = otThreadErrorToString(v26);
    v11 = otThreadErrorToString(v22);
    ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogWarn2("MulticastRoutingManager::processLargeScopeMulticastTransmit Failed to transmit, error:%s: %s", v12, v13, v14, v15, v16, v17, v18, v19, v11);
  }
}

void *ot::Posix::MulticastRoutingManager::SetUp(ot::Posix::MulticastRoutingManager *this)
{
  if (!gInstance)
  {
    __assert_rtn("SetUp", "multicast_routing.cpp", 147, "gInstance != nullptr");
  }

  v1 = otBackboneRouterSetMulticastListenerCallback(gInstance, ot::Posix::MulticastRoutingManager::HandleBackboneMulticastListenerEvent, this);
  v2 = ot::Posix::Mainloop::Manager::Get(v1);
  return ot::Posix::Mainloop::Manager::Add(v2, this);
}

void *ot::Posix::MulticastRoutingManager::TearDown(ot::Posix::MulticastRoutingManager *this)
{
  v14 = this;
  v12 = this;
  if (!gInstance)
  {
    __assert_rtn("TearDown", "multicast_routing.cpp", 160, "gInstance != nullptr");
  }

  v13 = 0;
  v1 = otThreadErrorToString(0);
  ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2("MulticastRoutingManager::TearDown: %s", v2, v3, v4, v5, v6, v7, v8, v1);
  v9 = otBackboneRouterSetMulticastListenerCallback(gInstance, 0, 0);
  v10 = ot::Posix::Mainloop::Manager::Get(v9);
  return ot::Posix::Mainloop::Manager::Remove(v10, v12);
}

void ot::Posix::MulticastRoutingManager::HandleBackboneMulticastListenerEvent(ot::Posix::MulticastRoutingManager *result, int a2, const ot::Ip6::Address *a3)
{
  v25 = result;
  v24 = a2;
  v23 = a3;
  v19 = result;
  v20 = a2;
  if (a2)
  {
    if (v20 == 1)
    {
      v21 = 0;
      v11 = otThreadErrorToString(0);
      ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2("MulticastRoutingManager::HandleBackboneMulticastListenerEvent Removed: %s", v12, v13, v14, v15, v16, v17, v18, v11);
      ot::Posix::MulticastRoutingManager::Remove(v19, v23);
    }
  }

  else
  {
    v22 = 0;
    v3 = otThreadErrorToString(0);
    ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2("MulticastRoutingManager::HandleBackboneMulticastListenerEvent Added: %s", v4, v5, v6, v7, v8, v9, v10, v3);
    ot::Posix::MulticastRoutingManager::Add(v19, v23);
  }
}

void ot::Posix::MulticastRoutingManager::Add(ot::Posix::MulticastRoutingManager *this, const ot::Ip6::Address *a2)
{
  v39 = this;
  v38 = a2;
  v34 = this;
  if (ot::Posix::MulticastRoutingManager::IsEnabled(this))
  {
    ot::Posix::MulticastRoutingManager::UnblockInboundMulticastForwardingCache(v34, v38);
    v33 = (v34 + 42032);
    ot::Ip6::Address::GetBytes(v38);
    if (ot::Posix::BackboneIPv6Interface::subscribeMulticastAddress((v34 + 42032), v2))
    {
      v36 = 0;
      v29 = v41;
      ot::Ip6::Address::ToString(v41, v38);
      v30 = ot::String<(unsigned short)40>::AsCString(v41);
      v11 = otThreadErrorToString(0);
      ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2("MulticastRoutingManager: %s: Backbone interface subscribed to %s: %s", v12, v13, v14, v15, v16, v17, v18, "Add", v30, v11);
    }

    else
    {
      v37 = 1;
      v31 = v42;
      ot::Ip6::Address::ToString(v42, v38);
      v32 = ot::String<(unsigned short)40>::AsCString(v42);
      v3 = otThreadErrorToString(1);
      ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogWarn2("MulticastRoutingManager:Failed to subscribe large scope multicast %s on backbone interface: %s", v4, v5, v6, v7, v8, v9, v10, v32, v3);
    }

    v35 = 0;
    v27 = v40;
    ot::Ip6::Address::ToString(v40, v38);
    v28 = ot::String<(unsigned short)40>::AsCString(v27);
    v19 = otThreadErrorToString(v35);
    ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2("%s: %s: %s", v20, v21, v22, v23, v24, v25, v26, "Add", v28, v19);
  }
}

void ot::Posix::MulticastRoutingManager::Remove(ot::Posix::MulticastRoutingManager *this, const ot::Ip6::Address *a2)
{
  v50 = this;
  v49 = a2;
  v44 = this;
  v48 = 0;
  if (ot::Posix::MulticastRoutingManager::IsEnabled(this))
  {
    ot::Posix::MulticastRoutingManager::RemoveInboundMulticastForwardingCache(v44, v49);
    v43 = (v44 + 42032);
    ot::Ip6::Address::GetBytes(v49);
    if (ot::Posix::BackboneIPv6Interface::unSubscribeMulticastAddress((v44 + 42032), v2))
    {
      v46 = 0;
      v39 = v53;
      ot::Ip6::Address::ToString(v53, v49);
      v40 = ot::String<(unsigned short)40>::AsCString(v53);
      v11 = otThreadErrorToString(0);
      ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2("MulticastRoutingManager: %s: Backbone interface unsubscribed to %s: %s", v12, v13, v14, v15, v16, v17, v18, "Remove", v40, v11);
    }

    else
    {
      v47 = 1;
      v41 = v54;
      ot::Ip6::Address::ToString(v54, v49);
      v42 = ot::String<(unsigned short)40>::AsCString(v54);
      v3 = otThreadErrorToString(1);
      ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogWarn2("MulticastRoutingManager:Failed to unsubscribe large scope multicast %s on backbone interface: %s", v4, v5, v6, v7, v8, v9, v10, v42, v3);
    }

    v45 = v48;
    if (v48)
    {
      v35 = v51;
      ot::Ip6::Address::ToString(v51, v49);
      v36 = ot::String<(unsigned short)40>::AsCString(v35);
      v27 = otThreadErrorToString(v45);
      ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogWarn2("%s: %s: %s", v28, v29, v30, v31, v32, v33, v34, "Remove", v36, v27);
    }

    else
    {
      v37 = v52;
      ot::Ip6::Address::ToString(v52, v49);
      v38 = ot::String<(unsigned short)40>::AsCString(v37);
      v19 = otThreadErrorToString(v45);
      ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2("%s: %s: %s", v20, v21, v22, v23, v24, v25, v26, "Remove", v38, v19);
    }
  }
}

void ot::Posix::MulticastRoutingManager::UnblockInboundMulticastForwardingCache(uint64_t this, const ot::Ip6::Address *a2)
{
  v37 = this;
  v36 = a2;
  v35 = this + 16;
  v34 = (this + 16);
  v33 = (this + 42016);
  while (v34 != v33)
  {
    v32 = v34;
    v31 = 0;
    if (ot::Posix::MulticastRoutingManager::MulticastForwardingCache::IsValid(v34) && *(v32 + 48) == 1 && *(v32 + 49) && !ot::Unequatable<ot::Ip6::Address>::operator!=(v32 + 16, v36))
    {
      ot::Posix::MulticastRoutingManager::MulticastForwardingCache::Set(v32, 1, 0);
      v30 = v31;
      if (v31)
      {
        v20 = ot::Posix::MulticastRoutingManager::MifIndexToString(*(v32 + 48));
        v18 = v39;
        ot::Ip6::Address::ToString(v39, v32);
        v21 = ot::String<(unsigned short)40>::AsCString(v18);
        v19 = v38;
        ot::Ip6::Address::ToString(v38, (v32 + 16));
        v22 = ot::String<(unsigned short)40>::AsCString(v19);
        v23 = ot::Posix::MulticastRoutingManager::MifIndexToString(0);
        v10 = otThreadErrorToString(v30);
        ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogWarn2("MulticastRoutingManager: %s: %s %s => %s %s: %s", v11, v12, v13, v14, v15, v16, v17, "UnblockInboundMulticastForwardingCache", v20, v21, v22, v23, v10);
      }

      else
      {
        v26 = ot::Posix::MulticastRoutingManager::MifIndexToString(*(v32 + 48));
        v24 = v41;
        ot::Ip6::Address::ToString(v41, v32);
        v27 = ot::String<(unsigned short)40>::AsCString(v24);
        v25 = v40;
        ot::Ip6::Address::ToString(v40, (v32 + 16));
        v28 = ot::String<(unsigned short)40>::AsCString(v25);
        v29 = ot::Posix::MulticastRoutingManager::MifIndexToString(0);
        v2 = otThreadErrorToString(v30);
        ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2("MulticastRoutingManager: %s: %s %s => %s %s: %s", v3, v4, v5, v6, v7, v8, v9, "UnblockInboundMulticastForwardingCache", v26, v27, v28, v29, v2);
      }
    }

    v34 = (v34 + 56);
  }
}

void ot::Ip6::Address::GetBytes(ot::Ip6::Address *this)
{
  ;
}

{
  ot::Ip6::Address::GetBytes(this);
}

uint64_t ot::String<(unsigned short)40>::AsCString(uint64_t a1)
{
  return a1 + 12;
}

{
  return ot::String<(unsigned short)40>::AsCString(a1);
}

uint64_t ot::Posix::MulticastRoutingManager::RemoveInboundMulticastForwardingCache(uint64_t this, const ot::Ip6::Address *a2)
{
  v2 = this;
  v4 = (this + 16);
  v3 = (this + 42016);
  while (v4 != v3)
  {
    this = ot::Posix::MulticastRoutingManager::MulticastForwardingCache::IsValid(v4);
    if ((this & 1) != 0 && v4[48] == 1)
    {
      this = ot::Equatable<ot::Ip6::Address>::operator==(v4 + 16, a2);
      if (this)
      {
        this = ot::Posix::MulticastRoutingManager::RemoveMulticastForwardingCache(v2, v4);
      }
    }

    v4 += 56;
  }

  return this;
}

void ot::Posix::MulticastRoutingManager::UpdateMldReport(ot::Posix::MulticastRoutingManager *this, const ot::Ip6::Address *a2, char a3)
{
  v34 = this;
  v33 = a2;
  v32 = a3;
  InfraNetifName = otSysGetInfraNetifName(this);
  v31 = if_nametoindex(InfraNetifName);
  ot::Ip6::Address::GetBytes(v33);
  v30 = *v4;
  if (v32)
  {
    v5 = 12;
  }

  else
  {
    v5 = 13;
  }

  v29 = setsockopt(*(this + 10506), 41, v5, &v30, 0x14u) != 0;
  if (v29)
  {
    ot::Ip6::Address::ToString(v35, v33);
    v24 = ot::String<(unsigned short)40>::AsCString(v35);
    v15 = "Added";
    if ((v32 & 1) == 0)
    {
      v15 = "Removed";
    }

    v25 = v15;
    v16 = otThreadErrorToString(v29);
    ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogWarn2("%s: address %s %s: %s", v17, v18, v19, v20, v21, v22, v23, "UpdateMldReport", v24, v25, v16);
  }

  else
  {
    ot::Ip6::Address::ToString(v36, v33);
    v26 = ot::String<(unsigned short)40>::AsCString(v36);
    v6 = "Added";
    if ((v32 & 1) == 0)
    {
      v6 = "Removed";
    }

    v27 = v6;
    v7 = otThreadErrorToString(v29);
    ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2("%s: address %s %s: %s", v8, v9, v10, v11, v12, v13, v14, "UpdateMldReport", v26, v27, v7);
  }
}

uint64_t ot::Posix::MulticastRoutingManager::GetMulticastListenerCount(ot::Posix::MulticastRoutingManager *this)
{
  v6 = this;
  v5 = 0;
  v4 = 0;
  v2 = 0;
  while (!otBackboneRouterMulticastListenerGetNext(gInstance, &v4, v3))
  {
    ++v2;
  }

  return v2;
}

uint64_t ot::Posix::MulticastRoutingManager::HasMulticastListener(ot::Posix::MulticastRoutingManager *this, const ot::Ip6::Address *a2)
{
  v7 = this;
  v6 = a2;
  v5 = 0;
  v4 = 0;
  while (!otBackboneRouterMulticastListenerGetNext(gInstance, &v4, v3))
  {
    if (!ot::Unequatable<ot::Ip6::Address>::operator!=(v3, v6))
    {
      v5 = 1;
      return v5 & 1;
    }
  }

  return v5 & 1;
}

BOOL ot::Unequatable<ot::Ip6::Address>::operator!=(const void *a1, const void *a2)
{
  return !ot::Equatable<ot::Ip6::Address>::operator==(a1, a2);
}

{
  return ot::Unequatable<ot::Ip6::Address>::operator!=(a1, a2);
}

uint64_t ot::Posix::BackboneIPv6Interface::GetBackboneBPFFd(ot::Posix::BackboneIPv6Interface *this)
{
  return *(this + 19);
}

{
  return ot::Posix::BackboneIPv6Interface::GetBackboneBPFFd(this);
}

uint64_t ot::Posix::MulticastRoutingManager::can_read(ot::Posix::MulticastRoutingManager *this)
{
  v5 = this;
  if (ot::Posix::MulticastRoutingManager::IsEnabled(this))
  {
    if (ot::Posix::BackboneIPv6Interface::can_read((this + 42032), &v4, &v3) == 1 && ot::Posix::MulticastRoutingManager::ProcessMulticastMessagesFromBackBone(this, &v4, &v3) == 1)
    {
      v6 = 1;
    }

    else
    {
      ot::Posix::BackboneIPv6Interface::cleanupReadBuffer(this + 42032);
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void ot::Posix::MulticastRoutingManager::ExpireMulticastForwardingCache(ot::Posix::MulticastRoutingManager *this)
{
  v10 = otPlatTimeGet();
  if (v10 >= *(this + 5252) + 60000000)
  {
    *(this + 5252) = v10;
    for (i = (this + 16); i != (this + 42016); i = (i + 56))
    {
      ot::Posix::MulticastRoutingManager::MulticastForwardingCache::IsValid(i);
    }

    ot::Posix::MulticastRoutingManager::DumpMulticastForwardingCache(this, v1, v2, v3, v4, v5, v6, v7);
  }
}

uint64_t ot::Posix::MulticastRoutingManager::ProcessMulticastMessagesFromBackBone(ot::Posix::MulticastRoutingManager *this, __n128 *a2, in6_addr *a3)
{
  v35 = this;
  v34 = a2;
  v33 = a3;
  v26 = this;
  v32 = 0;
  ot::Ip6::Address::SetBytes(&v31, a2);
  v27 = &v30;
  ot::Ip6::Address::SetBytes(&v30, v33);
  if (ot::Posix::MulticastRoutingManager::HasMulticastListener(v26, &v30))
  {
    v32 = ot::Posix::MulticastRoutingManager::AddMulticastForwardingCache(v26, &v31, &v30, 1);
    if (v32)
    {
      v28 = 1;
      v20 = v38;
      ot::Ip6::Address::ToString(v38, &v31);
      v21 = v37;
      ot::Ip6::Address::ToString(v37, &v30);
      v11 = otThreadErrorToString(1);
      ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogWarn2("%s AddMulticastForwardingCache returned false src(%s) dst(%s): %s", v12, v13, v14, v15, v16, v17, v18, "ProcessMulticastMessagesFromBackBone", v38, v37, v11);
      v36 = 0;
    }

    else
    {
      v36 = 1;
    }
  }

  else
  {
    v29 = 1;
    v22 = v40;
    ot::Ip6::Address::ToString(v40, &v31);
    v24 = ot::String<(unsigned short)40>::AsCString(v40);
    v23 = v39;
    ot::Ip6::Address::ToString(v39, &v30);
    v25 = ot::String<(unsigned short)40>::AsCString(v39);
    v3 = otThreadErrorToString(1);
    ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogWarn2("%s Does not have a multicast listener, hence returned false src(%s) dst(%s): %s", v4, v5, v6, v7, v8, v9, v10, "ProcessMulticastMessagesFromBackBone", v24, v25, v3);
    v36 = 0;
  }

  return v36 & 1;
}

uint64_t ot::Posix::MulticastRoutingManager::AddMulticastForwardingCache(ot::Posix::MulticastRoutingManager *a1, ot::Ip6::Address *a2, const ot::Ip6::Address *a3, char a4)
{
  v25 = a1;
  v24 = a2;
  v23 = a3;
  v22 = a4;
  v18 = a1;
  v21 = 0;
  v20 = 0;
  v4 = otThreadErrorToString(0);
  ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2("MulticastRoutingManager:%s:: %s", v5, v6, v7, v8, v9, v10, v11, "AddMulticastForwardingCache", v4);
  v19 = -1;
  if (!v22 || v22 == 1)
  {
    ot::Posix::MulticastRoutingManager::ExpireMulticastForwardingCache(v18);
    if (v22 == 1)
    {
      if (ot::Posix::MulticastRoutingManager::HasMulticastListener(v18, v23))
      {
        v19 = 0;
      }
    }

    else
    {
      if (ot::Ip6::Address::IsLinkLocalUnicast(v24, v12))
      {
        return 0;
      }

      ot::Ip6::Address::GetPrefix(v24);
      v17 = v13;
      MeshLocalPrefix = otThreadGetMeshLocalPrefix(gInstance);
      ot::AsCoreType<otIp6NetworkPrefix>(MeshLocalPrefix);
      if (!ot::Unequatable<ot::Ip6::NetworkPrefix>::operator!=(v17, v15))
      {
        return 0;
      }

      if (ot::Ip6::Address::GetScope(v23) > 3)
      {
        v19 = 1;
      }
    }

    ot::Posix::MulticastRoutingManager::SaveMulticastForwardingCache(v18, v24, v23, v22, v19);
    return v21;
  }

  return 7;
}

void ot::Posix::MulticastRoutingManager::ProcessMulticastMessagesToBackBone(ot::Posix::MulticastRoutingManager *a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v30 = a2;
  v29 = a3;
  v21 = a1;
  if (ot::Posix::MulticastRoutingManager::IsEnabled(a1))
  {
    *&v28[4] = 0;
    *v28 = otMessageGetLength(v30);
    v27 = 0;
    v26 = 1280;
    v25 = 0;
    if (gInstance != v29)
    {
      __assert_rtn("ProcessMulticastMessagesToBackBone", "multicast_routing.cpp", 450, "gInstance == aContext");
    }

    if (*v28 > 0x500u)
    {
      __assert_rtn("ProcessMulticastMessagesToBackBone", "multicast_routing.cpp", 451, "length <= OPENTHREAD_CONFIG_IP6_MAX_DATAGRAM_LENGTH");
    }

    if (otMessageRead(v30, 0, &v32[v27], v26) == *v28)
    {
      v25 = v32;
      v19 = &v24;
      ot::Ip6::Address::SetBytes(&v24, v33);
      v20 = &v23;
      ot::Ip6::Address::SetBytes(&v23, (v25 + 24));
      *&v28[2] = ot::Posix::MulticastRoutingManager::AddMulticastForwardingCache(v21, &v24, &v23, 0);
      if (*&v28[2])
      {
        v22 = 1;
        v11 = otThreadErrorToString(1);
        ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogWarn2("%s MulticastRoutingManager AddMulticastForwardingCache returns false.: %s", v12, v13, v14, v15, v16, v17, v18, "ProcessMulticastMessagesToBackBone", v11);
      }

      else
      {
        ot::Posix::BackboneIPv6Interface::send_packet((v21 + 42032), v32, *v28);
      }
    }

    else
    {
      *&v28[2] = 3;
    }
  }

  else
  {
    *&v28[6] = 0;
    v3 = otThreadErrorToString(0);
    ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2("%s MulticastRoutingManager is not enabled. Return here : %s", v4, v5, v6, v7, v8, v9, v10, "ProcessMulticastMessagesToBackBone", v3);
  }
}

void ot::Posix::MulticastRoutingManager::InitMulticastRouterSock(ot::Posix::MulticastRoutingManager *this)
{
  v11 = this;
  v10 = 0;
  v9 = 0;
  v1 = otThreadErrorToString(0);
  ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2("MulticastRoutingManager:%s:: %s", v2, v3, v4, v5, v6, v7, v8, "InitMulticastRouterSock", v1);
}

uint64_t ot::Posix::MulticastRoutingManager::FinalizeMulticastRouterSock(ot::Posix::MulticastRoutingManager *this)
{
  v14 = this;
  v11 = this;
  v13 = 0;
  v12 = 0;
  v1 = otThreadErrorToString(0);
  ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2("MulticastRoutingManager:%s:: %s", v2, v3, v4, v5, v6, v7, v8, "FinalizeMulticastRouterSock", v1);
  result = ot::Posix::MulticastRoutingManager::IsEnabled(v11);
  if (result)
  {
    v10 = 42024;
    result = close(*(v11 + 10506));
    *(v11 + v10) = -1;
  }

  return result;
}

void ot::Posix::MulticastRoutingManager::ProcessMulticastRouterMessages(ot::Posix::MulticastRoutingManager *this)
{
  v11 = this;
  v10 = 0;
  v9 = 0;
  v1 = otThreadErrorToString(0);
  ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2("%s: %s", v2, v3, v4, v5, v6, v7, v8, "ProcessMulticastRouterMessages", v1);
}

void ot::Ip6::Address::GetPrefix(ot::Ip6::Address *this)
{
  ;
}

{
  ot::Ip6::Address::GetPrefix(this);
}

BOOL ot::Unequatable<ot::Ip6::NetworkPrefix>::operator!=(const void *a1, const void *a2)
{
  return !ot::Equatable<ot::Ip6::NetworkPrefix>::operator==(a1, a2);
}

{
  return ot::Unequatable<ot::Ip6::NetworkPrefix>::operator!=(a1, a2);
}

void ot::AsCoreType<otIp6NetworkPrefix>(uint64_t a1)
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
  ot::AsCoreType<otIp6NetworkPrefix>(a1);
}

{
  ot::AsCoreType<otIp6NetworkPrefix>(a1);
}

unint64_t ot::Posix::MulticastRoutingManager::SaveMulticastForwardingCache(ot::Posix::MulticastRoutingManager *a1, _OWORD *a2, _OWORD *a3, char a4, char a5)
{
  v10 = 0;
  v9 = 0;
  v8 = a1 + 16;
  v7 = a1 + 42016;
  while (v8 != v7)
  {
    if (ot::Posix::MulticastRoutingManager::MulticastForwardingCache::IsValid(v8))
    {
      if (ot::Equatable<ot::Ip6::Address>::operator==(v8, a2) && ot::Equatable<ot::Ip6::Address>::operator==(v8 + 16, a3))
      {
        return ot::Posix::MulticastRoutingManager::MulticastForwardingCache::Set(v8, a4, a5);
      }

      if (!v9 || *(v8 + 4) < *(v9 + 4))
      {
        v9 = v8;
      }
    }

    else if (!v10)
    {
      v10 = v8;
    }

    v8 += 56;
  }

  if (v10)
  {
    return ot::Posix::MulticastRoutingManager::MulticastForwardingCache::Set(v10, a2, a3, a4, a5);
  }

  ot::Posix::MulticastRoutingManager::RemoveMulticastForwardingCache(a1, v9);
  return ot::Posix::MulticastRoutingManager::MulticastForwardingCache::Set(v9, a2, a3, a4, a5);
}

BOOL ot::Posix::MulticastRoutingManager::MulticastForwardingCache::IsValid(ot::Posix::MulticastRoutingManager::MulticastForwardingCache *this)
{
  return *(this + 48) != 255;
}

{
  return ot::Posix::MulticastRoutingManager::MulticastForwardingCache::IsValid(this);
}

unint64_t ot::Posix::MulticastRoutingManager::MulticastForwardingCache::Set(uint64_t a1, char a2, char a3)
{
  *(a1 + 48) = a2;
  *(a1 + 49) = a3;
  *(a1 + 40) = 0;
  result = otPlatTimeGet();
  *(a1 + 32) = result;
  return result;
}

const char *ot::Posix::MulticastRoutingManager::MifIndexToString(unsigned __int8 a1)
{
  v2 = "Unknown";
  switch(a1)
  {
    case 0u:
      return "Thread";
    case 1u:
      return "Backbone";
    case 0xFFu:
      return "None";
  }

  return v2;
}

BOOL ot::Equatable<ot::Ip6::Address>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 0x10uLL) == 0;
}

{
  return ot::Equatable<ot::Ip6::Address>::operator==(a1, a2);
}

uint64_t ot::Posix::MulticastRoutingManager::RemoveMulticastForwardingCache(ot::Posix::MulticastRoutingManager *this, ot::Posix::MulticastRoutingManager::MulticastForwardingCache *a2)
{
  v20 = this;
  v19 = a2;
  v18 = 0;
  v17 = 0;
  v13 = ot::Posix::MulticastRoutingManager::MifIndexToString(*(a2 + 48));
  v11 = v22;
  ot::Ip6::Address::ToString(v22, v19);
  v14 = ot::String<(unsigned short)40>::AsCString(v22);
  v12 = v21;
  ot::Ip6::Address::ToString(v21, (v19 + 16));
  v15 = ot::String<(unsigned short)40>::AsCString(v21);
  v16 = ot::Posix::MulticastRoutingManager::MifIndexToString(*(v19 + 49));
  v2 = otThreadErrorToString(0);
  ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2("%s: %s %s => %s %s: %s", v3, v4, v5, v6, v7, v8, v9, "RemoveMulticastForwardingCache", v13, v14, v15, v16, v2);
  return ot::Posix::MulticastRoutingManager::MulticastForwardingCache::Erase(v19);
}

void ot::Posix::MulticastRoutingManager::DumpMulticastForwardingCache(ot::Posix::MulticastRoutingManager *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogDebg2("==================== MFC ENTRIES ====================", a2, a3, a4, a5, a6, a7, a8, v23);
  for (i = this + 16; i != (this + 42016); i += 56)
  {
    if (ot::Posix::MulticastRoutingManager::MulticastForwardingCache::IsValid(i))
    {
      v25 = ot::Posix::MulticastRoutingManager::MifIndexToString(i[48]);
      ot::Ip6::Address::ToString(v31, i);
      v26 = ot::String<(unsigned short)40>::AsCString(v31);
      ot::Ip6::Address::ToString(v30, (i + 16));
      v27 = ot::String<(unsigned short)40>::AsCString(v30);
      v15 = ot::Posix::MulticastRoutingManager::MifIndexToString(i[49]);
      ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogDebg2("%s %s => %s %s", v16, v17, v18, v19, v20, v21, v22, v25, v26, v27, v15);
    }
  }

  ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogDebg2("=====================================================", v8, v9, v10, v11, v12, v13, v14, v24);
}

void ot::Posix::MulticastRoutingManager::HandleStateChange(ot::Posix::MulticastRoutingManager *a1, uint64_t a2, int a3)
{
  if ((a3 & 0x2000000) != 0)
  {
    State = otBackboneRouterGetState(a2);
    if (State <= 1)
    {
      ot::Posix::MulticastRoutingManager::Disable(a1);
    }

    else if (State == 2)
    {
      ot::Posix::MulticastRoutingManager::Enable(a1);
    }
  }
}

unint64_t ot::Posix::MulticastRoutingManager::MulticastForwardingCache::Set(_OWORD *a1, _OWORD *a2, _OWORD *a3, char a4, char a5)
{
  *a1 = *a2;
  a1[1] = *a3;
  return ot::Posix::MulticastRoutingManager::MulticastForwardingCache::Set(a1, a4, a5);
}

unint64_t ot::Posix::MulticastRoutingManager::MulticastForwardingCache::SetValidPktCnt(ot::Posix::MulticastRoutingManager::MulticastForwardingCache *this, uint64_t a2)
{
  *(this + 5) = a2;
  result = otPlatTimeGet();
  *(this + 4) = result;
  return result;
}

uint64_t ot::Posix::MulticastRoutingManager::MulticastForwardingCache::Erase(uint64_t this)
{
  *(this + 48) = -1;
  return this;
}

{
  return ot::Posix::MulticastRoutingManager::MulticastForwardingCache::Erase(this);
}

BOOL ot::Equatable<ot::Ip6::NetworkPrefix>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 8uLL) == 0;
}

{
  return ot::Equatable<ot::Ip6::NetworkPrefix>::operator==(a1, a2);
}

uint64_t __cxx_global_var_init_2()
{
  return boost::optional_ns::in_place_init_t::in_place_init_t(&boost::optional_ns::in_place_init);
}

{
  v1 = &ot::mAppMap;
  do
  {
    std::map<unsigned long long,ot::appPacketInfo>::map[abi:dn200100](v1);
    v1 = (v1 + 24);
  }

  while (v1 != &ot::mAppQueue);
  return __cxa_atexit(__cxx_global_array_dtor_0, 0, &_mh_execute_header);
}

void platformNetifStateChange(uint64_t result, int a2)
{
  if ((a2 & 0x1000000) != 0)
  {
    UpdateLink(result);
  }
}

void UpdateLink(uint64_t a1)
{
  if (gInstance != a1)
  {
    __assert_rtn("UpdateLink", "netif.cpp", 725, "gInstance == aInstance");
  }

  IsEnabled = otIp6IsEnabled(a1);
  SetLinkState(a1, IsEnabled);
}

uint64_t platformNetifInit(uint64_t a1)
{
  v12 = a1;
  sIpFd = SocketWithCloseExec(30, 2, 0, 1);
  if (sIpFd < 0)
  {
    v11 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/netif.cpp", 47);
    if (v11)
    {
      v9 = v11 + 1;
    }

    else
    {
      v9 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/netif.cpp";
    }

    v7 = v9;
    v8 = 5;
    v1 = otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", "platformNetifInit", v9, 2539, v1);
    handle_daemon_exit();
    exit(v8);
  }

  platformConfigureNetLink();
  platformConfigureTunDevice(v12);
  result = ne_tunnel_get_ifindex();
  gNetifIndex = result;
  if (!result)
  {
    v10 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/netif.cpp", 47);
    if (v10)
    {
      v6 = v10 + 1;
    }

    else
    {
      v6 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/netif.cpp";
    }

    v4 = v6;
    v5 = 1;
    v3 = otExitCodeToString(1);
    otLogCritPlat("%s() at %s:%d: %s", "platformNetifInit", v6, 2549, v3);
    handle_daemon_exit();
    exit(v5);
  }

  return result;
}

uint64_t platformConfigureNetLink(void)
{
  sNetlinkFd = SocketWithCloseExec(17, 3, 0, 1);
  if (sNetlinkFd < 0)
  {
    v6 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/netif.cpp", 47);
    if (v6)
    {
      v4 = v6 + 1;
    }

    else
    {
      v4 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/netif.cpp";
    }

    v0 = otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", "platformConfigureNetLink", v4, 2471, v0);
    handle_daemon_exit();
    exit(5);
  }

  result = fcntl(sNetlinkFd, 4, 4);
  if (result)
  {
    v5 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/netif.cpp", 47);
    if (v5)
    {
      v3 = v5 + 1;
    }

    else
    {
      v3 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/netif.cpp";
    }

    v2 = otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", "platformConfigureNetLink", v3, 2524, v2);
    handle_daemon_exit();
    exit(5);
  }

  return result;
}

BOOL platformConfigureTunDevice(uint64_t a1)
{
  v5 = a1;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v4[1] = 20;
  sTunFd = ne_tunnel_open();
  ne_tunnel_name(&gNetifName, 20);
  if (gVirtualInterfaceReadBufferSize)
  {
    v4[0] = gVirtualInterfaceReadBufferSize;
    if (setsockopt(sTunFd, 0xFFFF, 4098, v4, 4u) < 0)
    {
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg && (syslog_is_the_mask_enabled(3) & 1) != 0)
      {
        if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_0_1_4_0(v9, v4[0]);
          _os_log_error_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_ERROR, "TunnelIPv6Interface::TunnelIPv6Interface socket read buffer size could not be set to %d bytes", v9, 8u);
        }
      }

      else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v8, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v8, 0x16u);
      }
    }

    v2 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v2 && (syslog_is_the_mask_enabled(7) & 1) != 0)
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_4_0(v7, v4[0]);
        _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "TunnelIPv6Interface::TunnelIPv6Interface socket read buffer size set to %d bytes", v7, 8u);
      }
    }

    else if (!v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v6, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v6, 0x16u);
    }
  }

  return ne_tunnel_set_mtu(1280);
}

void *platformNetifSetUp()
{
  if (!gInstance)
  {
    __assert_rtn("platformNetifSetUp", "netif.cpp", 2582, "gInstance != nullptr");
  }

  otIp6SetReceiveFilterEnabled(gInstance, 1);
  otIcmp6SetEchoMode(gInstance, 0);
  otIp6SetReceiveCallback(gInstance, processReceive, gInstance);
  return otIp6SetAddressCallback(gInstance, processAddressChange, gInstance);
}

void processReceive(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  *&__nbyte[6] = a2;
  *&__nbyte[4] = 0;
  *__nbyte = otMessageGetLength(a1);
  v15 = 1280;
  v14 = 0;
  v16 = 4;
  if (gInstance != *&__nbyte[6])
  {
    __assert_rtn("processReceive", "netif.cpp", 1162, "gInstance == aContext");
  }

  if (*__nbyte > 0x500uLL)
  {
    __assert_rtn("processReceive", "netif.cpp", 1163, "length <= kMaxIp6Size");
  }

  if (sTunFd > 0)
  {
    if (otMessageRead(v18, 0, &__buf[v16], v15) == *__nbyte)
    {
      memset(__b, 0, sizeof(__b));
      v11 = &gInstance;
      otMessageGetBufferInfo(gInstance, v13);
      bzero(v20, 0x400uLL);
      if (otMessageGetIsBufferStatsEnabled(gInstance))
      {
        otMessageGetBufferIDs(v18, v20);
      }

      v8 = v19;
      v9 = 0;
      memset(v19, 0, sizeof(v19));
      v10 = &gInstance;
      HeaderStringAndCountDuplicates = otAppGetHeaderStringAndCountDuplicates(gInstance, v18, v19, 0, 1);
      if (otIp6GetSourceDestinationAddressandPort(gInstance, v18, __b))
      {
        if ((__buf[v16] & 0xF0) == 0x40)
        {
          v14 = 1;
        }

        otLogWarnPlat("processReceive: Could not extract IP and port information isIPv4Packet=%d", v14 & 1);
        otDumpInfoPlat("", &__buf[v16], *__nbyte);
        v7 = *__nbyte;
        FreeBufferCount = otMessageGetFreeBufferCount(gInstance);
        otLogInfoPlat("Packet from NCP (%u bytes),freeBuf:%d", v7, FreeBufferCount);
      }

      else
      {
        v6 = *__nbyte;
        v3 = otMessageGetFreeBufferCount(gInstance);
        otLogInfoPlat("Packet from NCP (%u bytes),%s,freeBuf:%d", v6, __b, v3);
      }

      if (*__nbyte > 0xAu && __buf[10] == 58 && otMessageIsIcmpError(gInstance, v18))
      {
        otLogInfoPlat("[netif] *****RX ICMP error packet dump******");
        otDumpInfoPlat("", &__buf[v16], *__nbyte);
      }

      __buf[0] = 0;
      __buf[1] = 0;
      __buf[2] = 0;
      __buf[3] = 30;
      *__nbyte += 4;
      v4 = write(sTunFd, __buf, *__nbyte);
      if (v4 != *__nbyte)
      {
        perror("write");
        *&__nbyte[2] = 1;
      }
    }

    else
    {
      *&__nbyte[2] = 3;
    }
  }

  otMessageFree(v18);
  if (*&__nbyte[2])
  {
    v5 = otThreadErrorToString(*&__nbyte[2]);
    otLogWarnPlat("Failed to receive, error:%s", v5);
  }
}

void processAddressChange(unsigned __int8 **a1, char a2, uint64_t a3)
{
  if (**a1 == 255)
  {
    UpdateMulticast(a3, *a1, a2 & 1);
  }

  else
  {
    UpdateUnicast(a3, a1, a2 & 1);
  }
}

uint64_t platformNetifDeinit()
{
  if (sTunFd != -1)
  {
    result = ne_tunnel_close();
    sTunFd = -1;
  }

  if (sIpFd != -1)
  {
    result = close(sIpFd);
    sIpFd = -1;
  }

  if (sNetlinkFd != -1)
  {
    result = close(sNetlinkFd);
    sNetlinkFd = -1;
  }

  gNetifIndex = 0;
  return result;
}

void processTransmit(uint64_t a1)
{
  v13 = a1;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  if (gInstance != a1)
  {
    __assert_rtn("processTransmit", "netif.cpp", 1399, "gInstance == aInstance");
  }

  v11 = read(sTunFd, v17, 0x504uLL);
  if (v11 > 0)
  {
    if (v11 >= 4 && !v17[0] && !v17[1])
    {
      v11 -= 4;
      v8 = 4;
    }

    v7[0] = otThreadGetDeviceRole(v13) != 0;
    v7[1] = 0;
    v12 = otIp6NewMessage(v13, v7);
    if (v12)
    {
      otMessageSetOrigin(v12, 2u);
      v9 = otMessageAppend(v12, &v17[v8], v11);
      if (v9)
      {
        otLogWarnPlat("[netif] Could not append packet to message");
        otDumpDebgPlat("", &v17[v8], v11);
      }

      else
      {
        otMessageSetTimestamp(v12);
        memset(__b, 0, sizeof(__b));
        otMessageGetBufferInfo(v13, v6);
        bzero(v15, 0x400uLL);
        if (otMessageGetIsBufferStatsEnabled(gInstance))
        {
          otMessageGetBufferIDs(v12, v15);
        }

        memset(v14, 0, sizeof(v14));
        otAppGetHeaderStringAndCountDuplicates(v13, v12, v14, 1, 0);
        if (otIp6GetSourceDestinationAddressandPort(v13, v12, __b))
        {
          v10 = (v17[v8] & 0xF0) == 64;
          otLogWarnPlat("Could not extract IP and port information isIPv4Packet=%d", v10);
          otDumpDebgPlat("", &v17[v8], v11);
          v5 = v11;
          FreeBufferCount = otMessageGetFreeBufferCount(v13);
          otLogInfoPlat("Packet to NCP (%hu bytes),freeBuf:%d", v5, FreeBufferCount);
        }

        else
        {
          v4 = v11;
          v2 = otMessageGetFreeBufferCount(v13);
          otLogInfoPlat("Packet to NCP (%hu bytes) ,%s,freeBuf:%d", v4, __b, v2);
        }

        if (v11 > 10 && v17[10] == 58 && otMessageIsIcmpError(v13, v12))
        {
          otLogInfoPlat(" *****TX ICMP error packet dump******");
          otDumpInfoPlat("", &v17[v8], v11);
        }

        v9 = otIp6Send(v13, v12);
        v12 = 0;
      }
    }

    else
    {
      v9 = 3;
    }
  }

  else
  {
    v9 = 1;
  }

  if (v12)
  {
    otMessageFree(v12);
  }

  if (v9)
  {
    if (v9 == 2)
    {
      otLogInfoPlat("Message dropped by Thread");
    }

    else
    {
      v3 = otThreadErrorToString(v9);
      otLogWarnPlat("Failed to transmit, error:%s", v3);
    }
  }
}

void processNetlinkEvent(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v1 = recv(sNetlinkFd, v3, 0x2000uLL, 0);
  if (v1 < 92)
  {
    otLogWarnPlat("Unexpected netlink recv() result: %ld, header_size: %ld", v1, 92);
    return;
  }

  switch(v4)
  {
    case 13:
    case 12:
      goto LABEL_4;
    case 14:
      processNetifInfoEvent(v2, v3);
      break;
    case 16:
    case 15:
LABEL_4:
      processNetifAddrEvent(v2, v3);
      break;
  }
}

void SetLinkState(uint64_t a1, char a2)
{
  v9 = a1;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  if (gInstance != a1)
  {
    __assert_rtn("SetLinkState", "netif.cpp", 694, "gInstance == aInstance");
  }

  if ((sIpFd & 0x80000000) == 0)
  {
    *__dst = 0u;
    v11 = 0u;
    strncpy(__dst, &gNetifName, 0x10uLL);
    if (ioctl(sIpFd, 0xC0206911uLL, __dst))
    {
      goto LABEL_5;
    }

    v6 = (v11 & 1) == 1;
    if (v8)
    {
      v2 = "up";
    }

    else
    {
      v2 = "down";
    }

    v3 = " (already done, ignoring)";
    if (v6 != (v8 & 1))
    {
      v3 = "";
    }

    otLogNotePlat("Changing interface state to %s%s.", v2, v3);
    if (v6 != (v8 & 1))
    {
      *v5 = (v8 & 1) != 0 ? v11 | 1 : v11 & 0xFFFFFFFE;
      LOWORD(v11) = v5[0];
      if (ioctl(sIpFd, 0x80206910uLL, __dst))
      {
LABEL_5:
        perror("ioctl");
        v7 = 1;
      }
    }
  }

  if (v7)
  {
    v4 = otThreadErrorToString(v7);
    otLogWarnPlat("Failed to update state %s", v4);
  }
}

void UpdateMulticast(uint64_t result, void *a2, char a3)
{
  v28 = result;
  v27 = a2;
  v26 = a3;
  v23 = 0;
  if (gInstance != result)
  {
    __assert_rtn("UpdateMulticast", "netif.cpp", 637, "gInstance == aInstance");
  }

  if ((sIpFd & 0x80000000) == 0)
  {
    v24 = *v27;
    v25 = gNetifIndex;
    if (v26)
    {
      v3 = 12;
    }

    else
    {
      v3 = 13;
    }

    v22 = setsockopt(sIpFd, 41, v3, &v24, 0x14u);
    if ((v26 & 1) == 1)
    {
      ot::Posix::Ip6Utils::Ip6AddressString::Ip6AddressString(v32, v27);
      ot::Posix::Ip6Utils::Ip6AddressString::AsCString(v32);
      v20 = v4;
      v19 = gNetifIndex;
      v5 = __error();
      otLogInfoPlat("Adding multicast address %s, gNetifIndex = %d, err = %d, errno = %d, EINVAL = %d, EADDRNOTAVAIL = %d", v20, v19, v22, *v5, 22, 49);
    }

    else
    {
      ot::Posix::Ip6Utils::Ip6AddressString::Ip6AddressString(v31, v27);
      ot::Posix::Ip6Utils::Ip6AddressString::AsCString(v31);
      v18 = v6;
      v17 = gNetifIndex;
      v7 = __error();
      otLogInfoPlat("Removing multicast address %s, gNetifIndex = %d, err = %d, errno = %d, EINVAL = %d, EADDRNOTAVAIL = %d", v18, v17, v22, *v7, 22, 49);
    }

    if (v22 && (*__error() == 22 || *__error() == 49 || *__error() == 48))
    {
      inet_ntop(30, &v24, v30, 0x2Fu);
      v8 = "IPV6_LEAVE_GROUP";
      if (v26)
      {
        v8 = "IPV6_JOIN_GROUP";
      }

      otLogWarnPlat("Ignoring %s failure (EINVAL) for MC LINKLOCAL address (%s)", v8, v30);
      v22 = 0;
    }

    if (v22)
    {
      v9 = "IPV6_JOIN_GROUP";
      if ((v26 & 1) == 0)
      {
        v9 = "IPV6_LEAVE_GROUP";
      }

      v16 = v9;
      v10 = __error();
      otLogWarnPlat("%s failure (%d)", v16, *v10);
      v23 = 1;
    }

    else
    {
      v11 = "Added";
      if ((v26 & 1) == 0)
      {
        v11 = "Removed";
      }

      v15 = v11;
      ot::Posix::Ip6Utils::Ip6AddressString::Ip6AddressString(v29, v27);
      ot::Posix::Ip6Utils::Ip6AddressString::AsCString(v29);
      otLogInfoPlat("%s multicast address %s", v15, v12);
    }
  }

  if (v23)
  {
    v21 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/netif.cpp", 47);
    if (v21)
    {
      v14 = v21 + 1;
    }

    else
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/netif.cpp";
    }

    v13 = otExitCodeToString(1);
    otLogCritPlat("%s() at %s:%d: %s", "UpdateMulticast", v14, 683, v13);
    handle_daemon_exit();
    exit(1);
  }
}

void UpdateUnicast(uint64_t a1, uint64_t a2, char a3)
{
  if (gInstance != a1)
  {
    __assert_rtn("UpdateUnicast", "netif.cpp", 562, "gInstance == aInstance");
  }

  if (a3)
  {
    ne_tunnel_add_address(*a2, *(a2 + 8), (*(a2 + 9) & 0x10) != 0);
    ot::Posix::Ip6Utils::Ip6AddressString::Ip6AddressString(v7, *a2);
    ot::Posix::Ip6Utils::Ip6AddressString::AsCString(v7);
    otLogInfoPlat("[ne_tunnel] %s %s/%u preferred:%d", "Added", v3, *(a2 + 8), (*(a2 + 9) & 0x10) != 0);
  }

  else
  {
    ne_tunnel_remove_address(*a2);
    ot::Posix::Ip6Utils::Ip6AddressString::Ip6AddressString(v6, *a2);
    ot::Posix::Ip6Utils::Ip6AddressString::AsCString(v6);
    otLogInfoPlat("[ne_tunnel] %s %s/%u", "Removed", v4, *(a2 + 8));
  }
}

ot::Posix::Ip6Utils::Ip6AddressString *ot::Posix::Ip6Utils::Ip6AddressString::Ip6AddressString(ot::Posix::Ip6Utils::Ip6AddressString *this, const void *a2)
{
  ot::Posix::Ip6Utils::Ip6AddressString::Ip6AddressString(this, a2);
  return this;
}

{
  v10 = this;
  v9 = a2;
  v7 = this;
  if (!inet_ntop(30, a2, this, 0x2Eu))
  {
    v8 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/ip6_utils.hpp", 47);
    if (v8)
    {
      v6 = v8 + 1;
    }

    else
    {
      v6 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/ip6_utils.hpp";
    }

    v4 = v6;
    v5 = 5;
    v2 = otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", "Ip6AddressString", v6, 120, v2);
    handle_daemon_exit();
    exit(v5);
  }

  return v7;
}

void ot::Posix::Ip6Utils::Ip6AddressString::AsCString(ot::Posix::Ip6Utils::Ip6AddressString *this)
{
  ;
}

{
  ot::Posix::Ip6Utils::Ip6AddressString::AsCString(this);
}

void processNetifAddrEvent(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v15 = a2;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v9 = 0;
  v8 = 0;
  i = 0;
  v6 = 0;
  v5 = 0;
  BYTE1(v11[0]) = 0;
  v10.sin6_family = 0;
  if (!otIp6IsEnabled(a1) && (*(v15 + 3) == 12 || *(v15 + 3) == 15))
  {
    otLogWarnPlat("add new address not handled as interface is disabled");
    v14 = 0;
    return;
  }

  if (*(v15 + 3) == 12 || *(v15 + 3) == 13)
  {
    v13 = v15;
    if (*(v15 + 12) != gNetifIndex)
    {
      return;
    }

    v9 = v13 + 20;
    v8 = *(v13 + 4);
  }

  else if (*(v15 + 3) == 15 || *(v15 + 3) == 16)
  {
    v12 = v15;
    if (*(v15 + 12) != gNetifIndex)
    {
      return;
    }

    v9 = v12 + 16;
    v8 = *(v12 + 4);
  }

  if (v8)
  {
    for (i = 0; i < 8; ++i)
    {
      if (v8 & (1 << i))
      {
        v6 = v9;
        if (*(v9 + 1) == 30)
        {
          if (i == 5)
          {
            v11[0] = *v6;
            *(v11 + 12) = *(v6 + 12);
          }

          if (i == 2)
          {
            *&v10.sin6_len = *v6;
            *(&v10.sin6_addr + 4) = *(v6 + 12);
          }
        }

        if (*v6)
        {
          v2 = ((*v6 - 1) | 3) + 1;
        }

        else
        {
          v2 = 4;
        }

        v9 += v2;
      }
    }
  }

  if (BYTE1(v11[0]) == 30)
  {
    v5 = 0;
    if (BYTE8(v11[0]) == 254 && (BYTE9(v11[0]) & 0xC0) == 0x80)
    {
      v5 = 1;
      BYTE11(v11[0]) = 0;
    }

    else if (BYTE8(v11[0]) == 255 && (BYTE9(v11[0]) & 0xF0) != 0x30 && (BYTE9(v11[0]) & 0xF) == 2)
    {
      BYTE11(v11[0]) = 0;
    }

    ot::Posix::Ip6Utils::ReadIp6AddressFrom((v11 + 8), &v3);
    if (*(v15 + 3) == 12 || *(v15 + 3) == 15)
    {
      if (ot::Posix::Ip6Utils::IsIp6AddressMulticast(&v3))
      {
        v14 = otIp6SubscribeMulticastAddress(v16, &v3);
        logAddrEvent(1, &v3, v14);
        if (v14 == 24 || v14 == 37)
        {
          v14 = 0;
        }
      }

      else
      {
        NetmaskToPrefixLength(&v10);
        otIp6HasUnicastAddress(v16, &v3);
        logAddrEvent(1, &v3, 24);
        v14 = 0;
      }
    }

    else if (*(v15 + 3) == 13 || *(v15 + 3) == 16)
    {
      if (ot::Posix::Ip6Utils::IsIp6AddressMulticast(&v3))
      {
        v14 = otIp6UnsubscribeMulticastAddress(v16, &v3);
        logAddrEvent(0, &v3, v14);
      }

      else
      {
        v14 = otIp6RemoveUnicastAddress(v16, &v3);
        logAddrEvent(0, &v3, v14);
        if (v14 == 23)
        {
          v14 = 0;
        }
      }
    }
  }
}

void processNetifInfoEvent(uint64_t result, uint64_t a2)
{
  v4 = result;
  v3 = a2;
  v2 = 0;
  if (*(a2 + 12) == gNetifIndex)
  {
    UpdateLink(v4);
  }
}

__n128 ot::Posix::Ip6Utils::ReadIp6AddressFrom(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

BOOL ot::Posix::Ip6Utils::IsIp6AddressMulticast(unsigned __int8 *a1)
{
  return *a1 == 255;
}

{
  return ot::Posix::Ip6Utils::IsIp6AddressMulticast(a1);
}

void logAddrEvent(char a1, unsigned __int8 *a2, int a3)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  if (!a3 || (v21 & 1) != 0 && (v19 == 24 || v19 == 37) || (v21 & 1) == 0 && (v19 == 23 || v19 == 37))
  {
    if (v21)
    {
      v18 = "ADD";
    }

    else
    {
      v18 = "DEL";
    }

    v17 = v18;
    if (ot::Posix::Ip6Utils::IsIp6AddressMulticast(v20))
    {
      v16 = "M";
    }

    else
    {
      v16 = "U";
    }

    v14 = v16;
    ot::Posix::Ip6Utils::Ip6AddressString::Ip6AddressString(v23, v20);
    ot::Posix::Ip6Utils::Ip6AddressString::AsCString(v23);
    v15 = v3;
    if (v19 == 24)
    {
      v13 = " (already subscribed, ignored)";
    }

    else
    {
      if (v19 == 37)
      {
        v12 = " (rejected)";
      }

      else
      {
        v4 = " (not found, ignored)";
        if (v19 != 23)
        {
          v4 = "";
        }

        v12 = v4;
      }

      v13 = v12;
    }

    otLogInfoPlat("%s [%s] %s%s", v17, v14, v15, v13);
  }

  else
  {
    if (v21)
    {
      v11 = "ADD";
    }

    else
    {
      v11 = "DEL";
    }

    v10 = v11;
    if (ot::Posix::Ip6Utils::IsIp6AddressMulticast(v20))
    {
      v9 = "M";
    }

    else
    {
      v9 = "U";
    }

    v7 = v22;
    ot::Posix::Ip6Utils::Ip6AddressString::Ip6AddressString(v22, v20);
    ot::Posix::Ip6Utils::Ip6AddressString::AsCString(v22);
    v8 = v5;
    v6 = otThreadErrorToString(v19);
    otLogWarnPlat("%s [%s] %s failed (%s)", v10, v9, v8, v6);
  }
}

double InitNetaskWithPrefixLength(__n128 *a1, unsigned __int8 a2)
{
  v5 = a1;
  v4 = a2;
  if (a2 > 0x80u)
  {
    v4 = 0x80;
  }

  v3 = 0uLL;
  CopyBits(&v3, kAllOnes, v4);
  return ot::Posix::Ip6Utils::CopyIp6AddressTo(&v3, v5);
}

void *CopyBits(unsigned __int8 *a1, const unsigned __int8 *a2, unsigned __int8 a3)
{
  __n = a3 / 8;
  v5 = a3 % 8;
  result = memcpy(a1, a2, __n);
  if (v5)
  {
    v4 = (128 >> (v5 - 1)) - 1;
    a1[__n] &= v4;
    a1[__n] |= a2[__n] & ~v4;
  }

  return result;
}

__n128 ot::Posix::Ip6Utils::CopyIp6AddressTo(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

ot::Posix::Configuration *ot::Posix::Configuration::Configuration(ot::Posix::Configuration *this)
{
  ot::Posix::Configuration::Configuration(this);
  return this;
}

{
  ot::Posix::ConfigFile::ConfigFile(this, "src/posix/platform/openthread.conf.example");
  ot::Posix::ConfigFile::ConfigFile((this + 24), "src/posix/platform/openthread.conf.example");
  result = this;
  *(this + 24) = 0;
  *(this + 13) = 134215680;
  *(this + 14) = 134215680;
  return result;
}

ot::Posix::Radio *ot::Posix::Radio::Radio(ot::Posix::Radio *this)
{
  ot::Posix::Radio::Radio(this);
  return this;
}

{
  ot::Posix::RadioUrl::RadioUrl(this, 0);
  ot::Spinel::RadioSpinel::RadioSpinel((this + 544));
  ot::Posix::RcpCapsDiag::RcpCapsDiag((this + 2320), (this + 544));
  return this;
}

void ot::Posix::Radio::~Radio(ot::Posix::Radio *this)
{
  ot::Posix::Radio::~Radio(this);
}

{
  ot::Spinel::RadioSpinel::~RadioSpinel((this + 544));
}

void getBandEdgeInfo(void)
{
  memset(__b, 0, sizeof(__b));
  getFilePathFromDirectory(__b, "/usr/share/firmware/wpan/", ".txcb", 0xC8u);
  configReadBandEdgePowerTable(__b);
}

void configReadBandEdgePowerTable(const char *a1)
{
  v4 = 0;
  v3 = -1;
  memset(__b, 0, sizeof(__b));
  memset(radioBackOffPower, 0, sizeof(radioBackOffPower));
  if (!a1)
  {
    __assert_rtn("configReadBandEdgePowerTable", "radio.cpp", 409, "fileName != NULL");
  }

  __stream = fopen(a1, "rb");
  if (__stream)
  {
    v6 = fread(__b, 1uLL, 0x32uLL, __stream);
    if (v6 && !ferror(__stream))
    {
      __b[v6] = 0;
      while (v4 < v6)
      {
        if (__b[v4] == 126)
        {
          ++v4;
          ++v3;
        }

        else
        {
          radioBackOffPower[13 * v3] = __b[v4];
          v5 = v4 + 1;
          v1 = &radioBackOffPower[13 * v3];
          *(v1 + 1) = *&__b[v5];
          *(v1 + 5) = *&__b[v5 + 4];
          v5 += 6;
          *(v1 + 7) = *&__b[v5];
          *(v1 + 11) = *&__b[v5 + 4];
          v4 = v5 + 6;
        }
      }
    }

    else
    {
      otLogWarnPlat("%s(): %s read error\n", "configReadBandEdgePowerTable", a1);
    }

    fclose(__stream);
  }

  else
  {
    otLogWarnPlat("%s(): %s does not exist\n", "configReadBandEdgePowerTable", a1);
  }
}

uint64_t ot::Spinel::parse_string_into_data(ot::Spinel *this, unsigned __int8 *a2, char *a3, const char *a4)
{
  v16 = this;
  v13 = 0;
  if (!this)
  {
    a2 = 0;
  }

  while (1)
  {
    v10 = 0;
    if (*a3)
    {
      v10 = a2 != 0;
    }

    if (!v10)
    {
      break;
    }

    v4 = a3++;
    _c = tolower(*v4);
    if (isdigit(_c) || _c >= 97 && _c <= 102)
    {
      if (isdigit(_c))
      {
        v9 = _c - 48;
      }

      else
      {
        v9 = _c - 87;
      }

      if (a2)
      {
        *v16 = 16 * v9;
        --a2;
      }

      ++v13;
      if (!*a3)
      {
        return v13;
      }

      v5 = a3++;
      _ca = tolower(*v5);
      if (isdigit(_ca) || _ca >= 97 && _ca <= 102)
      {
        if (isdigit(_ca))
        {
          v8 = _ca - 48;
        }

        else
        {
          v8 = _ca - 87;
        }

        v6 = v16;
        v16 = (v16 + 1);
        *v6 |= v8;
      }
    }
  }

  return v13;
}

int tolower(int _c)
{
  return __tolower(_c);
}

{
  return tolower(_c);
}

int isdigit(int _c)
{
  return __isctype(_c, 0x400uLL);
}

{
  return isdigit(_c);
}

uint64_t ot::Spinel::too_many_grants_denied(ot::Spinel *this)
{
  v4 = 0;
  gettimeofday(&v3, &v2);
  if (dword_1004E9D98 && v3.tv_sec >= mTxNotGrantedTracker && v3.tv_sec < mTxNotGrantedTracker + 3600)
  {
    if (++dword_1004E9D98 > 100)
    {
      v4 = 1;
      dword_1004E9D98 = 0;
      mTxNotGrantedTracker = v3.tv_sec;
      otLogWarnPlat("Too many grants denied");
    }
  }

  else
  {
    dword_1004E9D98 = 1;
    mTxNotGrantedTracker = v3.tv_sec;
  }

  otLogDebgPlat("numOccurances=%d, NCP-Tx-Grant-Denied-Time-Sec=%llu, Curr-Time-Sec=%ld", dword_1004E9D98, mTxNotGrantedTracker, v3.tv_sec);
  return v4 & 1;
}

_BYTE *ot::Posix::Radio::Init(const char **this, const char *a2)
{
  v16 = this;
  v15 = a2;
  v14 = 0;
  HasParam = 0;
  v12 = 1;
  ot::Posix::RadioUrl::Init(this, a2);
  if (!ot::Url::Url::GetPath(this))
  {
    v10 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    if (v10)
    {
      v8 = v10 + 1;
    }

    else
    {
      v8 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp";
    }

    v2 = otExitCodeToString(2);
    otLogCritPlat("%s() at %s:%d: %s", "Init", v8, 246, v2);
    handle_daemon_exit();
    exit(2);
  }

  if ((otPlatRadioGetRcp2Vendor2EnabledVerify() & 1) == 0)
  {
    getBandEdgeInfo();
  }

  memset(__b, 0, sizeof(__b));
  __b[6] = otPlatDiagRadioReceiveDone;
  __b[7] = otPlatDiagRadioTransmitDone;
  __b[2] = otPlatRadioEnergyScanDone;
  __b[3] = otPlatRadioBusLatencyChanged;
  __b[0] = otPlatRadioReceiveDone;
  __b[1] = otPlatRadioTxDone;
  __b[4] = otPlatRadioTxStarted;
  v14 = !ot::Url::Url::HasParam(this, "no-reset");
  HasParam = ot::Url::Url::HasParam(this, "skip-rcp-compatibility-check");
  v3 = ot::Spinel::RadioSpinel::SetCallbacks((this + 68), __b);
  v6 = HasParam;
  v7 = v14;
  SpinelDriver = ot::Posix::GetSpinelDriver(v3);
  ot::Spinel::RadioSpinel::Init(this + 68, v6, v7, SpinelDriver, 0x6Du, v12 & 1);
  return ot::Posix::Radio::ProcessRadioUrl(this, this);
}

ot::Posix::RadioUrl *ot::Posix::RadioUrl::RadioUrl(ot::Posix::RadioUrl *this, const char *a2)
{
  ot::Posix::RadioUrl::RadioUrl(this, a2);
  return this;
}

{
  ot::Url::Url::Url(this);
  ot::Posix::RadioUrl::Init(this, a2);
  return this;
}

BOOL ot::Url::Url::HasParam(ot::Url::Url *this, const char *a2)
{
  return ot::Url::Url::GetValue(this, a2, 0) != 0;
}

{
  return ot::Url::Url::HasParam(this, a2);
}

_BYTE *ot::Posix::Radio::ProcessRadioUrl(ot::Posix::Radio *this, const ot::Posix::RadioUrl *a2)
{
  v57 = this;
  v56 = a2;
  Value = 0;
  v54 = 0;
  if (ot::Url::Url::HasParam(a2, "ncp-dataset"))
  {
    otLogCritPlat("The argument ncp-dataset is no longer supported");
    v53 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    if (v53)
    {
      v34 = v53 + 1;
    }

    else
    {
      v34 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp";
    }

    v2 = otExitCodeToString(1);
    otLogCritPlat("%s() at %s:%d: %s", "ProcessRadioUrl", v34, 282, v2);
    handle_daemon_exit();
    exit(1);
  }

  if (ot::Url::Url::HasParam(v56, "fem-lnagain"))
  {
    v52 = ot::Url::Url::ParseInt8(v56, "fem-lnagain", &v54);
    if (v52)
    {
      v51 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
      if (v51)
      {
        v33 = v51 + 1;
      }

      else
      {
        v33 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp";
      }

      if (v52 == 7)
      {
        v3 = 2;
      }

      else
      {
        v3 = 1;
      }

      v4 = otExitCodeToString(v3);
      otLogCritPlat("%s() at %s:%d: %s", "ProcessRadioUrl", v33, 287, v4);
      handle_daemon_exit();
      if (v52 == 7)
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }

      exit(v5);
    }

    v50 = ot::Spinel::RadioSpinel::SetFemLnaGain((this + 544), v54);
    if (v50)
    {
      v49 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
      if (v49)
      {
        v32 = v49 + 1;
      }

      else
      {
        v32 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp";
      }

      if (v50 == 7)
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

      v7 = otExitCodeToString(v6);
      otLogCritPlat("%s() at %s:%d: %s", "ProcessRadioUrl", v32, 288, v7);
      handle_daemon_exit();
      if (v50 == 7)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      exit(v8);
    }
  }

  if (ot::Url::Url::HasParam(v56, "cca-threshold"))
  {
    v48 = ot::Url::Url::ParseInt8(v56, "cca-threshold", &v54);
    if (v48)
    {
      v47 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
      if (v47)
      {
        v31 = v47 + 1;
      }

      else
      {
        v31 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp";
      }

      if (v48 == 7)
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }

      v10 = otExitCodeToString(v9);
      otLogCritPlat("%s() at %s:%d: %s", "ProcessRadioUrl", v31, 293, v10);
      handle_daemon_exit();
      if (v48 == 7)
      {
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }

      exit(v11);
    }

    v46 = ot::Spinel::RadioSpinel::SetCcaEnergyDetectThreshold((this + 544), v54);
    if (v46)
    {
      v45 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
      if (v45)
      {
        v30 = v45 + 1;
      }

      else
      {
        v30 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp";
      }

      if (v46 == 7)
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      v13 = otExitCodeToString(v12);
      otLogCritPlat("%s() at %s:%d: %s", "ProcessRadioUrl", v30, 294, v13);
      handle_daemon_exit();
      if (v46 == 7)
      {
        v14 = 2;
      }

      else
      {
        v14 = 1;
      }

      exit(v14);
    }
  }

  Value = ot::Url::Url::GetValue(v56, "region", 0);
  if (Value)
  {
    v44 = 0;
    if (strnlen(Value, 3uLL) != 2)
    {
      v43 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
      if (v43)
      {
        v29 = v43 + 1;
      }

      else
      {
        v29 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp";
      }

      v15 = otExitCodeToString(2);
      otLogCritPlat("%s() at %s:%d: %s", "ProcessRadioUrl", v29, 301, v15);
      handle_daemon_exit();
      exit(2);
    }

    v44 = Value[1] + (*Value << 8);
    v42 = otPlatRadioSetRegion(gInstance, v44);
    if (v42)
    {
      v41 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
      if (v41)
      {
        v28 = v41 + 1;
      }

      else
      {
        v28 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp";
      }

      if (v42 == 7)
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }

      v17 = otExitCodeToString(v16);
      otLogCritPlat("%s() at %s:%d: %s", "ProcessRadioUrl", v28, 303, v17);
      handle_daemon_exit();
      if (v42 == 7)
      {
        v18 = 2;
      }

      else
      {
        v18 = 1;
      }

      exit(v18);
    }
  }

  if (ot::Url::Url::HasParam(v56, "bus-latency"))
  {
    v40 = 0;
    v39 = ot::Url::Url::ParseUint32(v56, "bus-latency", &v40);
    if (v39)
    {
      v38 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
      if (v38)
      {
        v27 = v38 + 1;
      }

      else
      {
        v27 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp";
      }

      if (v39 == 7)
      {
        v19 = 2;
      }

      else
      {
        v19 = 1;
      }

      v20 = otExitCodeToString(v19);
      otLogCritPlat("%s() at %s:%d: %s", "ProcessRadioUrl", v27, 309, v20);
      handle_daemon_exit();
      if (v39 == 7)
      {
        v21 = 2;
      }

      else
      {
        v21 = 1;
      }

      exit(v21);
    }

    ot::Spinel::RadioSpinel::SetBusLatency((this + 544), v40);
  }

  ot::Posix::Radio::ProcessMaxPowerTable();
  result = ot::Url::Url::GetValue(v56, "enable-coex", 0);
  if (result)
  {
    result = ot::Spinel::RadioSpinel::SetCoexEnabled((this + 544), *result != 48);
    v37 = result;
    if (result)
    {
      v36 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
      if (v36)
      {
        v26 = v36 + 1;
      }

      else
      {
        v26 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp";
      }

      if (v37 == 7)
      {
        v23 = 2;
      }

      else
      {
        v23 = 1;
      }

      v24 = otExitCodeToString(v23);
      otLogCritPlat("%s() at %s:%d: %s", "ProcessRadioUrl", v26, 320, v24);
      handle_daemon_exit();
      if (v37 == 7)
      {
        v25 = 2;
      }

      else
      {
        v25 = 1;
      }

      exit(v25);
    }
  }

  return result;
}

uint64_t otPlatRadioSetRegion(uint64_t a1, unsigned __int16 a2)
{
  if (ot::Posix::Configuration::IsValid(&sConfig))
  {
    return ot::Posix::Configuration::SetRegion(&sConfig, a2);
  }

  else
  {
    RadioSpinel = GetRadioSpinel();
    return ot::Spinel::RadioSpinel::SetRadioRegion(RadioSpinel, a2);
  }
}

uint64_t ot::Posix::Radio::GetRcpCapsDiag(ot::Posix::Radio *this)
{
  return this + 2320;
}

{
  return ot::Posix::Radio::GetRcpCapsDiag(this);
}

uint64_t currentChannelRegionInPowerBackOffTable(signed __int8 *a1)
{
  RadioSpinel = GetRadioSpinel();
  Channel = ot::Spinel::RadioSpinel::GetChannel(RadioSpinel);
  v4 = sCurrentRegion;
  if (sCurrentRegion < 6u)
  {
    for (i = 0; i < 0x10uLL; ++i)
    {
      if (radioBackOffPower[13 * i] == Channel && radioBackOffPower[13 * i + 1 + sCurrentRegion] == sCurrentRegion && radioBackOffPower[13 * i + 7 + sCurrentRegion] != 127)
      {
        *a1 = radioBackOffPower[13 * i + 7 + sCurrentRegion] / 4;
        otLogWarnPlat("Get BackOff power = %d, channel = [%d],region = [%d]", *a1, Channel, v4);
        v7 = 1;
        return v7 & 1;
      }
    }

    v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t ot::Spinel::RadioSpinel::GetChannel(ot::Spinel::RadioSpinel *this)
{
  return *(this + 932);
}

{
  return ot::Spinel::RadioSpinel::GetChannel(this);
}

uint64_t otPlatRadioGetIeeeEui64(uint64_t a1, unsigned __int8 *a2)
{
  RadioSpinel = GetRadioSpinel();
  result = ot::Spinel::RadioSpinel::GetIeeeEui64(RadioSpinel, a2);
  v9 = result;
  if (result)
  {
    v8 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    if (v8)
    {
      v7 = v8 + 1;
    }

    else
    {
      v7 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp";
    }

    if (v9 == 7)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    v5 = otExitCodeToString(v4);
    otLogCritPlat("%s() at %s:%d: %s", "otPlatRadioGetIeeeEui64", v7, 473, v5);
    handle_daemon_exit();
    if (v9 == 7)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    exit(v6);
  }

  return result;
}

uint64_t otPlatRadioSetPanId(uint64_t a1, unsigned __int16 a2)
{
  RadioSpinel = GetRadioSpinel();
  result = ot::Spinel::RadioSpinel::SetPanId(RadioSpinel, a2);
  v9 = result;
  if (result)
  {
    v8 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    if (v8)
    {
      v7 = v8 + 1;
    }

    else
    {
      v7 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp";
    }

    if (v9 == 7)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    v5 = otExitCodeToString(v4);
    otLogCritPlat("%s() at %s:%d: %s", "otPlatRadioSetPanId", v7, 479, v5);
    handle_daemon_exit();
    if (v9 == 7)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    exit(v6);
  }

  return result;
}

uint64_t otPlatRadioSetExtendedAddress(uint64_t a1, unsigned __int8 *a2)
{
  v25 = a1;
  v24 = a2;
  for (i = 0; i < 8; ++i)
  {
    *(&v26 + i) = v24[7 - i];
  }

  v2 = *v24;
  v3 = v24[1];
  v4 = v24[2];
  v5 = v24[3];
  v6 = v24[4];
  v7 = v24[5];
  v8 = v24[6];
  v9 = v24[7];
  v19 = &v15;
  otLogInfoPlat("otPlatRadioSetExtendedAddress aAddress: 0[%d] 1[%d] 2[%d] 3[%d] 4[%d] 5[%d] 6[%d] 7[%d]", v2, v3, v4, v5, v6, v7, v8, v9);
  v20 = &v15;
  otLogInfoPlat("otPlatRadioSetExtendedAddress addr: 0[%d] 1[%d] 2[%d] 3[%d] 4[%d] 5[%d] 6[%d] 7[%d]", v26, BYTE1(v26), BYTE2(v26), BYTE3(v26), BYTE4(v26), BYTE5(v26), BYTE6(v26), HIBYTE(v26));
  RadioSpinel = GetRadioSpinel();
  result = ot::Spinel::RadioSpinel::SetExtendedAddress(RadioSpinel, &v26);
  v22 = result;
  if (result)
  {
    v21 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    if (v21)
    {
      v18 = v21 + 1;
    }

    else
    {
      v18 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp";
    }

    v16 = v18;
    v17 = 2;
    if (v22 == 7)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    v13 = otExitCodeToString(v12);
    otLogCritPlat("%s() at %s:%d: %s", "otPlatRadioSetExtendedAddress", v16, 500, v13);
    handle_daemon_exit();
    if (v22 == 7)
    {
      v14 = v17;
    }

    else
    {
      v14 = 1;
    }

    exit(v14);
  }

  return result;
}

uint64_t otPlatRadioSetShortAddress(uint64_t a1, unsigned __int16 a2)
{
  RadioSpinel = GetRadioSpinel();
  result = ot::Spinel::RadioSpinel::SetShortAddress(RadioSpinel, a2);
  v9 = result;
  if (result)
  {
    v8 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    if (v8)
    {
      v7 = v8 + 1;
    }

    else
    {
      v7 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp";
    }

    if (v9 == 7)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    v5 = otExitCodeToString(v4);
    otLogCritPlat("%s() at %s:%d: %s", "otPlatRadioSetShortAddress", v7, 506, v5);
    handle_daemon_exit();
    if (v9 == 7)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    exit(v6);
  }

  return result;
}

uint64_t otPlatRadioSetAlternateShortAddress(uint64_t a1, unsigned __int16 a2)
{
  RadioSpinel = GetRadioSpinel();
  result = ot::Spinel::RadioSpinel::SetAlternateShortAddress(RadioSpinel, a2);
  v9 = result;
  if (result)
  {
    v8 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    if (v8)
    {
      v7 = v8 + 1;
    }

    else
    {
      v7 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp";
    }

    if (v9 == 7)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    v5 = otExitCodeToString(v4);
    otLogCritPlat("%s() at %s:%d: %s", "otPlatRadioSetAlternateShortAddress", v7, 512, v5);
    handle_daemon_exit();
    if (v9 == 7)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    exit(v6);
  }

  return result;
}

uint64_t otPlatRadioSetPromiscuous(uint64_t a1, char a2)
{
  RadioSpinel = GetRadioSpinel();
  result = ot::Spinel::RadioSpinel::SetPromiscuous(RadioSpinel, a2 & 1);
  v9 = result;
  if (result)
  {
    v8 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    if (v8)
    {
      v7 = v8 + 1;
    }

    else
    {
      v7 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp";
    }

    if (v9 == 7)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    v5 = otExitCodeToString(v4);
    otLogCritPlat("%s() at %s:%d: %s", "otPlatRadioSetPromiscuous", v7, 518, v5);
    handle_daemon_exit();
    if (v9 == 7)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    exit(v6);
  }

  return result;
}

uint64_t ot::Spinel::RadioSpinel::GetTransmitFrame(ot::Spinel::RadioSpinel *this)
{
  return this + 784;
}

{
  return ot::Spinel::RadioSpinel::GetTransmitFrame(this);
}

uint64_t ot::Spinel::RadioSpinel::GetRadioCaps(ot::Spinel::RadioSpinel *this)
{
  return ot::Spinel::RadioSpinel::sRadioCaps;
}

{
  return ot::Spinel::RadioSpinel::GetRadioCaps(this);
}

uint64_t ot::Spinel::RadioSpinel::GetVersion(ot::Spinel::SpinelDriver **this)
{
  return ot::Spinel::SpinelDriver::GetVersion(this[221]);
}

{
  return ot::Spinel::RadioSpinel::GetVersion(this);
}

uint64_t ot::Spinel::RadioSpinel::IsPromiscuous(ot::Spinel::RadioSpinel *this)
{
  return *(this + 948) & 1;
}

{
  return ot::Spinel::RadioSpinel::IsPromiscuous(this);
}

BOOL platformRadioUpdateFdSet(uint64_t a1)
{
  v9 = otPlatTimeGet();
  RadioSpinel = GetRadioSpinel();
  NextRadioTimeRecalcStart = ot::Spinel::RadioSpinel::GetNextRadioTimeRecalcStart(RadioSpinel);
  v2 = GetRadioSpinel();
  if (ot::Spinel::RadioSpinel::IsTransmitting(v2))
  {
    v3 = GetRadioSpinel();
    TxRadioEndUs = ot::Spinel::RadioSpinel::GetTxRadioEndUs(v3);
    if (TxRadioEndUs < NextRadioTimeRecalcStart)
    {
      NextRadioTimeRecalcStart = TxRadioEndUs;
    }
  }

  if (v9 >= NextRadioTimeRecalcStart)
  {
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
  }

  else
  {
    v6 = NextRadioTimeRecalcStart - v9;
    if (NextRadioTimeRecalcStart - v9 < 1000000 * *(a1 + 392) + *(a1 + 400))
    {
      *(a1 + 392) = v6 / 0xF4240;
      *(a1 + 400) = v6 % 0xF4240;
    }
  }

  v4 = GetRadioSpinel();
  result = ot::Spinel::RadioSpinel::IsTransmitDone(v4);
  if (result)
  {
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
  }

  return result;
}

BOOL ot::Spinel::RadioSpinel::IsTransmitting(ot::Spinel::RadioSpinel *this)
{
  return *(this + 236) == 3;
}

{
  return ot::Spinel::RadioSpinel::IsTransmitting(this);
}

uint64_t ot::Spinel::RadioSpinel::GetTxRadioEndUs(ot::Spinel::RadioSpinel *this)
{
  return *(this + 210);
}

{
  return ot::Spinel::RadioSpinel::GetTxRadioEndUs(this);
}

BOOL ot::Spinel::RadioSpinel::IsTransmitDone(ot::Spinel::RadioSpinel *this)
{
  return *(this + 236) == 4;
}

{
  return ot::Spinel::RadioSpinel::IsTransmitDone(this);
}

uint64_t otPlatRadioEnableSrcMatch(uint64_t a1, char a2)
{
  RadioSpinel = GetRadioSpinel();
  result = ot::Spinel::RadioSpinel::EnableSrcMatch(RadioSpinel, a2 & 1);
  v9 = result;
  if (result)
  {
    v8 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    if (v8)
    {
      v7 = v8 + 1;
    }

    else
    {
      v7 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp";
    }

    if (v9 == 7)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    v5 = otExitCodeToString(v4);
    otLogCritPlat("%s() at %s:%d: %s", "otPlatRadioEnableSrcMatch", v7, 655, v5);
    handle_daemon_exit();
    if (v9 == 7)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    exit(v6);
  }

  return result;
}

uint64_t otPlatRadioAddSrcMatchExtEntry(uint64_t a1, uint64_t a2)
{
  for (i = 0; i < 8; ++i)
  {
    *(&v5 + i) = *(a2 + 7 - i);
  }

  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::AddSrcMatchExtEntry(RadioSpinel, &v5);
}

uint64_t otPlatRadioClearSrcMatchExtEntry(uint64_t a1, uint64_t a2)
{
  for (i = 0; i < 8; ++i)
  {
    v5[i] = *(a2 + 7 - i);
  }

  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::ClearSrcMatchExtEntry(RadioSpinel, v5);
}

uint64_t otPlatRadioClearSrcMatchShortEntries()
{
  RadioSpinel = GetRadioSpinel();
  result = ot::Spinel::RadioSpinel::ClearSrcMatchShortEntries(RadioSpinel);
  v7 = result;
  if (result)
  {
    v6 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    if (v6)
    {
      v5 = v6 + 1;
    }

    else
    {
      v5 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp";
    }

    if (v7 == 7)
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    v3 = otExitCodeToString(v2);
    otLogCritPlat("%s() at %s:%d: %s", "otPlatRadioClearSrcMatchShortEntries", v5, 699, v3);
    handle_daemon_exit();
    if (v7 == 7)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    exit(v4);
  }

  return result;
}

uint64_t otPlatRadioClearSrcMatchExtEntries()
{
  RadioSpinel = GetRadioSpinel();
  result = ot::Spinel::RadioSpinel::ClearSrcMatchExtEntries(RadioSpinel);
  v7 = result;
  if (result)
  {
    v6 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    if (v6)
    {
      v5 = v6 + 1;
    }

    else
    {
      v5 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp";
    }

    if (v7 == 7)
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    v3 = otExitCodeToString(v2);
    otLogCritPlat("%s() at %s:%d: %s", "otPlatRadioClearSrcMatchExtEntries", v5, 705, v3);
    handle_daemon_exit();
    if (v7 == 7)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    exit(v4);
  }

  return result;
}

uint64_t otPlatRadioGetTransmitPower(uint64_t a1, signed __int8 *a2)
{
  if (!a2)
  {
    __assert_rtn("otPlatRadioGetTransmitPower", "radio.cpp", 717, "aPower != nullptr");
  }

  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::GetTransmitPower(RadioSpinel, a2);
}

uint64_t otPlatRadioSetTransmitPower(uint64_t a1, signed __int8 a2)
{
  v8 = a1;
  v7 = a2;
  if ((otPlatRadioGetRcp2Vendor2Enabled() & 1) != 0 || (v6 = 0, (currentChannelRegionInPowerBackOffTable(&v6) & 1) == 0) || v6 > v7)
  {
    RadioSpinel = GetRadioSpinel();
    return ot::Spinel::RadioSpinel::SetTransmitPower(RadioSpinel, v7);
  }

  else
  {
    otLogWarnPlat("BandEdge has lower ceiling, set BandEdge Power=[%d]", v6);
    v2 = GetRadioSpinel();
    v5 = ot::Spinel::RadioSpinel::SetTransmitPower(v2, v6);
    if (v5)
    {
      otLogWarnPlat("BandEdge Load failure=[%d]", v5);
      ptb_bandedge_captureABC_Failure(3);
    }

    return v5;
  }
}

uint64_t otPlatRadioGetCcaEnergyDetectThreshold(uint64_t a1, signed __int8 *a2)
{
  if (!a2)
  {
    __assert_rtn("otPlatRadioGetCcaEnergyDetectThreshold", "radio.cpp", 752, "aThreshold != nullptr");
  }

  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::GetCcaEnergyDetectThreshold(RadioSpinel, a2);
}

uint64_t otPlatSetRcpLogLevel(uint64_t a1, char a2)
{
  v4 = 7;
  if (a2)
  {
    switch(a2)
    {
      case 1:
        v4 = 2;
        break;
      case 2:
        v4 = 4;
        break;
      case 3:
        v4 = 5;
        break;
      case 4:
        v4 = 6;
        break;
      case 5:
        v4 = 7;
        break;
    }

    RadioSpinel = GetRadioSpinel();
    return ot::Spinel::RadioSpinel::SetRcpLogLevel(RadioSpinel, v4);
  }

  else
  {
    return 0;
  }
}

uint64_t otPlatRadioGetRssiOffset(uint64_t a1, signed __int8 *a2)
{
  if (!a2)
  {
    __assert_rtn("otPlatRadioGetRssiOffset", "radio.cpp", 824, "aOffset != nullptr");
  }

  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::GetRssiOffset(RadioSpinel, a2);
}

uint64_t otPlatRadioGetRssiOffsetPath1(uint64_t a1, signed __int8 *a2)
{
  if (!a2)
  {
    __assert_rtn("otPlatRadioGetRssiOffsetPath1", "radio.cpp", 837, "aOffset != nullptr");
  }

  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::GetRssiOffsetPath1(RadioSpinel, a2);
}

uint64_t otPlatRadioGetFemLnaGain(uint64_t a1, signed __int8 *a2)
{
  if (!a2)
  {
    __assert_rtn("otPlatRadioGetFemLnaGain", "radio.cpp", 851, "aGain != nullptr");
  }

  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::GetFemLnaGain(RadioSpinel, a2);
}

uint64_t ot::Spinel::RadioSpinel::GetReceiveSensitivity(ot::Spinel::RadioSpinel *this)
{
  return *(this + 933);
}

{
  return ot::Spinel::RadioSpinel::GetReceiveSensitivity(this);
}

uint64_t otPlatRadioGetCoexMetrics(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    RadioSpinel = GetRadioSpinel();
    return ot::Spinel::RadioSpinel::GetCoexMetrics(RadioSpinel, a2);
  }

  else
  {
    return 7;
  }
}

uint64_t otPlatDiagSetOutputCallback(uint64_t a1, void (*a2)(const char *, char *, void *), void *a3)
{
  sDiagOutputCallback = a2;
  sDiagCallbackContext = a3;
  RadioSpinel = GetRadioSpinel();
  ot::Spinel::RadioSpinel::SetDiagOutputCallback(RadioSpinel, a2, a3);
  RcpCapsDiag = GetRcpCapsDiag();
  return ot::Posix::RcpCapsDiag::SetDiagOutputCallback(RcpCapsDiag, a2, a3);
}

uint64_t otPlatDiagProcess(uint64_t a1, char a2, char **a3)
{
  memset(__b, 0, sizeof(__b));
  __str = __b;
  if (!strcmp(*a3, "rcpcaps"))
  {
    RcpCapsDiag = GetRcpCapsDiag();
    return ot::Posix::RcpCapsDiag::DiagProcess(RcpCapsDiag, a3, a2);
  }

  else if (!strcmp(*a3, "radiospinel"))
  {
    RadioSpinel = GetRadioSpinel();
    return ot::Spinel::RadioSpinel::RadioSpinelDiagProcess(RadioSpinel, a3, a2);
  }

  else
  {
    for (i = 0; ; ++i)
    {
      v7 = 0;
      if (i < a2)
      {
        v7 = __str < &v14;
      }

      if (!v7)
      {
        break;
      }

      __str += snprintf(__str, &v14 - __str, "%s ", a3[i]);
    }

    v5 = GetRadioSpinel();
    return ot::Spinel::RadioSpinel::PlatDiagProcess(v5, __b);
  }
}

uint64_t otPlatDiagModeSet(char a1)
{
  RadioSpinel = GetRadioSpinel();
  if (a1)
  {
    v2 = "start";
  }

  else
  {
    v2 = "stop";
  }

  result = ot::Spinel::RadioSpinel::PlatDiagProcess(RadioSpinel, v2);
  if (!result)
  {
    v4 = GetRadioSpinel();
    return ot::Spinel::RadioSpinel::SetDiagEnabled(v4, a1 & 1);
  }

  return result;
}

uint64_t ot::Spinel::RadioSpinel::SetDiagEnabled(uint64_t this, char a2)
{
  *(this + 1659) = a2 & 1;
  return this;
}

{
  return ot::Spinel::RadioSpinel::SetDiagEnabled(this, a2);
}

uint64_t ot::Spinel::RadioSpinel::IsDiagEnabled(ot::Spinel::RadioSpinel *this)
{
  return *(this + 1659) & 1;
}

{
  return ot::Spinel::RadioSpinel::IsDiagEnabled(this);
}

uint64_t otPlatDiagTxPowerSet(char a1)
{
  snprintf(__str, 0x100uLL, "power %d", a1);
  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::PlatDiagProcess(RadioSpinel, __str);
}

uint64_t otPlatDiagChannelSet(unsigned __int8 a1)
{
  snprintf(__str, 0x100uLL, "channel %d", a1);
  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::PlatDiagProcess(RadioSpinel, __str);
}

uint64_t otPlatDiagGpioSet(int a1, char a2)
{
  snprintf(__str, 0x100uLL, "gpio set %d %d", a1, a2 & 1);
  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::PlatDiagProcess(RadioSpinel, __str);
}

uint64_t otPlatDiagGpioGet(int a1, BOOL *a2)
{
  setDiagOutput(v8, 500);
  snprintf(__str, 0x100uLL, "gpio get %d", a1);
  RadioSpinel = GetRadioSpinel();
  v5 = ot::Spinel::RadioSpinel::PlatDiagProcess(RadioSpinel, __str);
  if (!v5)
  {
    v4 = strtok(v8, "\r");
    if (v4)
    {
      *a2 = atoi(v4) != 0;
    }

    else
    {
      v5 = 1;
    }
  }

  freeDiagOutput();
  return v5;
}

uint64_t setDiagOutput(char *a1, __int16 a2)
{
  sDiagOutput = a1;
  sDiagOutputLen = a2;
  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::SetDiagOutputCallback(RadioSpinel, handleDiagOutput, 0);
}

uint64_t freeDiagOutput(void)
{
  sDiagOutput = 0;
  sDiagOutputLen = 0;
  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::SetDiagOutputCallback(RadioSpinel, sDiagOutputCallback, sDiagCallbackContext);
}

uint64_t otPlatDiagGpioSetMode(int a1, int a2)
{
  v2 = "in";
  if (a2)
  {
    v2 = "out";
  }

  snprintf(__str, 0x100uLL, "gpio mode %d %s", a1, v2);
  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::PlatDiagProcess(RadioSpinel, __str);
}

uint64_t otPlatDiagGpioGetMode(int a1, _DWORD *a2)
{
  setDiagOutput(v8, 500);
  snprintf(__str, 0x100uLL, "gpio mode %d", a1);
  RadioSpinel = GetRadioSpinel();
  v5 = ot::Spinel::RadioSpinel::PlatDiagProcess(RadioSpinel, __str);
  if (!v5)
  {
    __s1 = strtok(v8, "\r");
    if (__s1)
    {
      if (!strcmp(__s1, "in"))
      {
        *a2 = 0;
      }

      else if (!strcmp(__s1, "out"))
      {
        *a2 = 1;
      }

      else
      {
        v5 = 1;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  freeDiagOutput();
  return v5;
}

uint64_t otPlatDiagRadioGetPowerSettings(uint64_t a1, unsigned __int8 a2, _WORD *a3, _WORD *a4, unsigned __int16 *a5, char *a6)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  v13 = a6;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  if (a3)
  {
    v9 = 0;
    if (v15)
    {
      v9 = 0;
      if (v14)
      {
        v9 = v13 != 0;
      }
    }
  }

  if (!v9)
  {
    __assert_rtn("otPlatDiagRadioGetPowerSettings", "radio.cpp", 1107, "(aTargetPower != nullptr) && (aActualPower != nullptr) && (aRawPowerSetting != nullptr) && (aRawPowerSettingLength != nullptr)");
  }

  setDiagOutput(v21, 500);
  snprintf(__str, 0x100uLL, "powersettings %d", v17);
  RadioSpinel = GetRadioSpinel();
  v12 = ot::Spinel::RadioSpinel::PlatDiagProcess(RadioSpinel, __str);
  if (!v12)
  {
    snprintf(v19, 0x64uLL, "TargetPower(0.01dBm): %%d\r\nActualPower(0.01dBm): %%d\r\nRawPowerSetting: %%%us\r\n", 33);
    if (sscanf(v21, v19, &v11, &v10, v20) == 3)
    {
      v12 = ot::Utils::CmdLineParser::ParseAsHexString(v20, v13, v14, v7);
      if (!v12)
      {
        *v16 = v11;
        *v15 = v10;
      }
    }

    else
    {
      v12 = 1;
    }
  }

  freeDiagOutput();
  return v12;
}

uint64_t otPlatDiagRadioSetRawPowerSetting(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  if (!a2)
  {
    __assert_rtn("otPlatDiagRadioSetRawPowerSetting", "radio.cpp", 1137, "aRawPowerSetting != nullptr");
  }

  v6 = snprintf(__str, 0x100uLL, "rawpowersetting ");
  for (i = 0; i < a3; ++i)
  {
    v6 += snprintf(&__str[v6], 256 - v6, "%02x", *(a2 + i));
    if (v6 >= 256)
    {
      return 7;
    }
  }

  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::PlatDiagProcess(RadioSpinel, __str);
}

uint64_t otPlatDiagRadioGetRawPowerSetting(uint64_t a1, unsigned __int16 *a2, char *a3)
{
  v6 = 0;
  if (a2)
  {
    v6 = a3 != 0;
  }

  if (!v6)
  {
    __assert_rtn("otPlatDiagRadioGetRawPowerSetting", "radio.cpp", 1163, "(aRawPowerSetting != nullptr) && (aRawPowerSettingLength != nullptr)");
  }

  setDiagOutput(v11, 500);
  snprintf(__str, 0x100uLL, "rawpowersetting");
  RadioSpinel = GetRadioSpinel();
  v8 = ot::Spinel::RadioSpinel::PlatDiagProcess(RadioSpinel, __str);
  if (!v8)
  {
    v7 = strtok(v11, "\r");
    if (v7)
    {
      v8 = ot::Utils::CmdLineParser::ParseAsHexString(v7, a3, a2, v4);
    }

    else
    {
      v8 = 1;
    }
  }

  freeDiagOutput();
  return v8;
}

uint64_t otPlatDiagRadioRawPowerSettingEnable(uint64_t a1, char a2)
{
  v2 = "enable";
  if ((a2 & 1) == 0)
  {
    v2 = "disable";
  }

  snprintf(__str, 0x100uLL, "rawpowersetting %s", v2);
  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::PlatDiagProcess(RadioSpinel, __str);
}

uint64_t otPlatDiagRadioTransmitCarrier(uint64_t a1, char a2)
{
  v2 = "start";
  if ((a2 & 1) == 0)
  {
    v2 = "stop";
  }

  snprintf(__str, 0x100uLL, "cw %s", v2);
  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::PlatDiagProcess(RadioSpinel, __str);
}

uint64_t otPlatDiagRadioTransmitStream(uint64_t a1, char a2)
{
  v2 = "start";
  if ((a2 & 1) == 0)
  {
    v2 = "stop";
  }

  snprintf(__str, 0x100uLL, "stream %s", v2);
  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::PlatDiagProcess(RadioSpinel, __str);
}

uint64_t otPlatRadioGetSupportedChannelMask()
{
  if (ot::Posix::Configuration::IsValid(&sConfig))
  {
    return ot::Posix::Configuration::GetSupportedChannelMask(&sConfig);
  }

  else
  {
    RadioSpinel = GetRadioSpinel();
    return ot::Spinel::RadioSpinel::GetRadioChannelMask(RadioSpinel, 0);
  }
}

uint64_t ot::Posix::Configuration::GetSupportedChannelMask(ot::Posix::Configuration *this)
{
  return *(this + 13);
}

{
  return ot::Posix::Configuration::GetSupportedChannelMask(this);
}

uint64_t otPlatRadioGetPreferredChannelMask()
{
  if (ot::Posix::Configuration::IsValid(&sConfig))
  {
    return ot::Posix::Configuration::GetPreferredChannelMask(&sConfig);
  }

  else
  {
    RadioSpinel = GetRadioSpinel();
    return ot::Spinel::RadioSpinel::GetRadioChannelMask(RadioSpinel, 1);
  }
}

uint64_t ot::Posix::Configuration::GetPreferredChannelMask(ot::Posix::Configuration *this)
{
  return *(this + 14);
}

{
  return ot::Posix::Configuration::GetPreferredChannelMask(this);
}

uint64_t otPlatRadioSetMacKey(uint64_t a1, unsigned __int8 a2, unsigned __int8 a3, _OWORD *a4, _OWORD *a5, _OWORD *a6)
{
  RadioSpinel = GetRadioSpinel();
  result = ot::Spinel::RadioSpinel::SetMacKey(RadioSpinel, a2, a3, a4, a5, a6);
  v13 = result;
  if (result)
  {
    v12 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    if (v12)
    {
      v11 = v12 + 1;
    }

    else
    {
      v11 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp";
    }

    if (v13 == 7)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    v9 = otExitCodeToString(v8);
    otLogCritPlat("%s() at %s:%d: %s", "otPlatRadioSetMacKey", v11, 1280, v9);
    handle_daemon_exit();
    if (v13 == 7)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    exit(v10);
  }

  return result;
}

uint64_t otPlatRadioSetMacFrameCounter(uint64_t a1, unsigned int a2)
{
  RadioSpinel = GetRadioSpinel();
  result = ot::Spinel::RadioSpinel::SetMacFrameCounter(RadioSpinel, a2, 0);
  v9 = result;
  if (result)
  {
    v8 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    if (v8)
    {
      v7 = v8 + 1;
    }

    else
    {
      v7 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp";
    }

    if (v9 == 7)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    v5 = otExitCodeToString(v4);
    otLogCritPlat("%s() at %s:%d: %s", "otPlatRadioSetMacFrameCounter", v7, 1298, v5);
    handle_daemon_exit();
    if (v9 == 7)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    exit(v6);
  }

  return result;
}

uint64_t otPlatRadioSetMacFrameCounterIfLarger(uint64_t a1, unsigned int a2)
{
  RadioSpinel = GetRadioSpinel();
  result = ot::Spinel::RadioSpinel::SetMacFrameCounter(RadioSpinel, a2, 1);
  v9 = result;
  if (result)
  {
    v8 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    if (v8)
    {
      v7 = v8 + 1;
    }

    else
    {
      v7 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp";
    }

    if (v9 == 7)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    v5 = otExitCodeToString(v4);
    otLogCritPlat("%s() at %s:%d: %s", "otPlatRadioSetMacFrameCounterIfLarger", v7, 1304, v5);
    handle_daemon_exit();
    if (v9 == 7)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    exit(v6);
  }

  return result;
}

uint64_t otPlatRadioUpdateCstSampleTime(uint64_t a1, unsigned int a2)
{
  RadioSpinel = GetRadioSpinel();
  result = ot::Spinel::RadioSpinel::UpdateCstSampleTime(RadioSpinel, a2);
  v9 = result;
  if (result)
  {
    v8 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    if (v8)
    {
      v7 = v8 + 1;
    }

    else
    {
      v7 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp";
    }

    if (v9 == 7)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    v5 = otExitCodeToString(v4);
    otLogCritPlat("%s() at %s:%d: %s", "otPlatRadioUpdateCstSampleTime", v7, 1388, v5);
    handle_daemon_exit();
    if (v9 == 7)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    exit(v6);
  }

  return result;
}

uint64_t otPlatRadioSetCslParentClockAccuracy(uint64_t a1, unsigned __int8 a2)
{
  otLogInfoPlat("ClockAccuracy Info-SetCslParentClockAccuracy: %d", a2);
  RadioSpinel = GetRadioSpinel();
  result = ot::Spinel::RadioSpinel::Set(RadioSpinel, 0x3C21u, "C", a2);
  v9 = result;
  if (result)
  {
    v8 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    if (v8)
    {
      v7 = v8 + 1;
    }

    else
    {
      v7 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp";
    }

    if (v9 == 7)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    v5 = otExitCodeToString(v4);
    otLogCritPlat("%s() at %s:%d: %s", "otPlatRadioSetCslParentClockAccuracy", v7, 1459, v5);
    handle_daemon_exit();
    if (v9 == 7)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    exit(v6);
  }

  return result;
}

uint64_t otPlatRadioSetCslParentUncertainty(uint64_t a1, unsigned __int8 a2)
{
  otLogInfoPlat("ClockAccuracy Info-SetCslParentUncertainty: %d", a2);
  RadioSpinel = GetRadioSpinel();
  result = ot::Spinel::RadioSpinel::Set(RadioSpinel, 0x3C22u, "C", a2);
  v9 = result;
  if (result)
  {
    v8 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    if (v8)
    {
      v7 = v8 + 1;
    }

    else
    {
      v7 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp";
    }

    if (v9 == 7)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    v5 = otExitCodeToString(v4);
    otLogCritPlat("%s() at %s:%d: %s", "otPlatRadioSetCslParentUncertainty", v7, 1469, v5);
    handle_daemon_exit();
    if (v9 == 7)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    exit(v6);
  }

  return result;
}

uint64_t otPlatRadioGetRegion(uint64_t a1, unsigned __int16 *a2)
{
  if (ot::Posix::Configuration::IsValid(&sConfig))
  {
    *a2 = ot::Posix::Configuration::GetRegion(&sConfig);
    return 0;
  }

  else
  {
    RadioSpinel = GetRadioSpinel();
    return ot::Spinel::RadioSpinel::GetRadioRegion(RadioSpinel, a2);
  }
}

uint64_t ot::Posix::Configuration::GetRegion(ot::Posix::Configuration *this)
{
  return *(this + 24);
}

{
  return ot::Posix::Configuration::GetRegion(this);
}

uint64_t otPlatRadioConfigureEnhAckProbing(uint64_t a1, char a2, unsigned __int16 a3, uint64_t a4)
{
  v9 = a2;
  v8 = a1;
  v7 = a3;
  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::ConfigureEnhAckProbing(RadioSpinel, v9, &v7, a4);
}

uint64_t otPowerControlSetMode(uint64_t a1, unsigned int a2)
{
  RadioSpinel = GetRadioSpinel();
  ot::Spinel::RadioSpinel::SetTpcMode(RadioSpinel, a2);
  return 0;
}

uint64_t otPowerControlGetMode(uint64_t a1)
{
  v4 = a1;
  v3 = 0;
  RadioSpinel = GetRadioSpinel();
  ot::Spinel::RadioSpinel::GetTpcMode(RadioSpinel, &v3);
  return v3;
}

uint64_t ot::Spinel::RadioSpinel::GetRadioSpinelMetrics(ot::Spinel::RadioSpinel *this)
{
  return this + 1720;
}

{
  return ot::Spinel::RadioSpinel::GetRadioSpinelMetrics(this);
}

uint64_t otPlatVendorGetCsmaBackoffHistogram(uint64_t a1, _BYTE *a2)
{
  v12 = a1;
  v11 = a2;
  VendorCsmaBackoffHistogram = 0;
  v9 = 1024;
  RadioSpinel = GetRadioSpinel();
  VendorCsmaBackoffHistogram = ot::Spinel::RadioSpinel::GetVendorCsmaBackoffHistogram(RadioSpinel, v13, &v9);
  if (!VendorCsmaBackoffHistogram)
  {
    return unpackVendorCsmaBackoffHistogram(v13, v9, v11, v3, v4, v5, v6, v7);
  }

  return VendorCsmaBackoffHistogram;
}

uint64_t unpackVendorCsmaBackoffHistogram(unsigned __int8 *a1, unsigned __int16 a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v17 = spinel_datatype_unpack(a1, a2, "d", a4, a5, a6, a7, a8, &v16);
  if (v17)
  {
    *v19 = 0;
    for (i = 0; i < *v19; ++i)
    {
      v17 = spinel_datatype_unpack(v16, v15, "L", v8, v9, v10, v11, v12, &v19[4 * i + 4]);
      if (!v17)
      {
        return 6;
      }

      v16 += v17;
      v15 -= v17;
    }
  }

  else
  {
    return 6;
  }

  return v18;
}

uint64_t otPlatVendorGetIfsAckDataPerNeighbor(uint64_t a1, unsigned __int8 *a2)
{
  v11 = a1;
  v10 = a2;
  v9 = 100;
  RadioSpinel = GetRadioSpinel();
  VendorIfsAckDataPerNeighbor = ot::Spinel::RadioSpinel::GetVendorIfsAckDataPerNeighbor(RadioSpinel, v12, &v9);
  if (!VendorIfsAckDataPerNeighbor)
  {
    return unpackVendorAckDataPerNeighbor(v12, v9, v11, v10, v3, v4, v5, v6);
  }

  return VendorIfsAckDataPerNeighbor;
}

uint64_t unpackVendorAckDataPerNeighbor(unsigned __int8 *a1, unsigned __int16 a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = 0;
  v15 = 0;
  for (i = 0; v19; *v17 = i)
  {
    v16 = spinel_datatype_unpack(v20, v19, "d", a4, a5, a6, a7, a8, &v15);
    if (v16 <= 0)
    {
      break;
    }

    v20 += v16;
    v19 -= v16;
    if (!spinel_datatype_unpack(v15, 0, "SESD", v8, v9, v10, v11, v12, v18 + 114 * i))
    {
      break;
    }

    ++i;
  }

  return 0;
}

uint64_t otPlatVendorGetPowerLimitTable(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v11 = a2;
  v10 = 500;
  RadioSpinel = GetRadioSpinel();
  VendorPowerLimitTable = ot::Spinel::RadioSpinel::GetVendorPowerLimitTable(RadioSpinel, v13, &v10);
  if (!VendorPowerLimitTable)
  {
    return unpackVendorPowerTable(v13, v10, v11, v3, v4, v5, v6, v7);
  }

  return VendorPowerLimitTable;
}

uint64_t unpackVendorPowerTable(unsigned __int8 *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v22 = spinel_datatype_unpack(a1, a2, "UC", a4, a5, a6, a7, a8, &v21);
  v26 += v22;
  v25 -= v22;
  *(v24 + 30) = 7;
  for (i = 0; i < 7; ++i)
  {
    v22 = spinel_datatype_unpack(v26, v25, "d", v8, v9, v10, v11, v12, &v19);
    v26 += v22;
    v25 -= v22;
    v16 = v18;
    for (j = 0; j < v16; ++j)
    {
      v14 = 0;
      v22 = spinel_datatype_unpack(v19, v18, "c", v8, v9, v10, v11, v12, &v14);
      *(v24 + 31 + 16 * i + j) = v14;
      v19 += v22;
      v18 -= v22;
    }
  }

  return v23;
}

int *otPlatRadioRcp2GetSpinelVersion()
{
  v2 = 0;
  otPlatRcp2SpinelVersion = 0;
  dword_1004E9DBC = 0;
  dword_1004E9DC0 = 0;
  RadioSpinel = GetRadioSpinel();
  if (!ot::Spinel::RadioSpinel::Get(RadioSpinel, 0x3C02u, "LLL", &otPlatRcp2SpinelVersion, &dword_1004E9DBC, &dword_1004E9DC0))
  {
    return &otPlatRcp2SpinelVersion;
  }

  return v2;
}

uint64_t otPlatVendorSetPreferredAntenna(uint64_t a1, __int16 a2)
{
  v4 = a2 == 13;
  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::SetVendorAntenna(RadioSpinel, v4);
}

__int128 *otPlatVendorCoexConfigTest(uint64_t a1, _BYTE *a2, _BYTE *a3, int *a4, int *a5, int *a6, BOOL *a7)
{
  if (a2)
  {
    result = getStringValue("vendor:coex:thread:priority");
    v26 = result;
    if (result)
    {
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
        {
          v19 = *a2;
          v8 = atoi(v26);
          __os_log_helper_16_2_3_8_32_4_0_4_0(v49, "otPlatVendorCoexConfigTest", v19, v8);
          _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "BT Load: %s, kWPANTUNDVendor_CoEx_Priority is set, current priority is %d, overwrite it to %d", v49, 0x18u);
        }
      }

      else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v48, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v48, 0x16u);
      }

      result = atoi(v26);
      *a2 = result;
    }
  }

  if (a3)
  {
    result = getStringValue("vendor:coex:thread:fragment:size");
    v27 = result;
    if (result)
    {
      v24 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v24 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v18 = *a3;
          v9 = atoi(v27);
          __os_log_helper_16_2_3_8_32_4_0_4_0(v47, "otPlatVendorCoexConfigTest", v18, v9);
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "BT Load: %s, kWPANTUNDVendor_CoEx_Fragment_Size is set, current fragment size is %d, overwrite it to %d", v47, 0x18u);
        }
      }

      else if (!v24 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v46, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v46, 0x16u);
      }

      result = atoi(v27);
      *a3 = result;
    }
  }

  if (a4)
  {
    result = getStringValue("vendor:coex:thread:datapoll:timeout");
    v28 = result;
    if (result)
    {
      v23 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v23 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v17 = *a4;
          v10 = atoi(v28);
          __os_log_helper_16_2_3_8_32_4_0_4_0(v45, "otPlatVendorCoexConfigTest", v17, v10);
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "BT Load: %s, kWPANTUNDVendor_CoEx_DataPoll_Timeout is set, current data_poll_timeout is %d, overwrite it to %d", v45, 0x18u);
        }
      }

      else if (!v23 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v44, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v44, 0x16u);
      }

      result = atoi(v28);
      *a4 = result;
    }
  }

  if (a5)
  {
    result = getStringValue("vendor:coex:thread:dutycycle:high");
    v29 = result;
    if (result)
    {
      v22 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v22 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v16 = *a5;
          v11 = atoi(v29);
          __os_log_helper_16_2_3_8_32_4_0_4_0(v43, "otPlatVendorCoexConfigTest", v16, v11);
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "BT Load: %s, kWPANTUNDVendor_CoEx_Dutycycle_High is set, current dt high time is %d, overwrite it to %d", v43, 0x18u);
        }
      }

      else if (!v22 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v42, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v42, 0x16u);
      }

      result = atoi(v29);
      *a5 = result;
    }
  }

  if (a6)
  {
    result = getStringValue("vendor:coex:thread:dutycycle:interval");
    v30 = result;
    if (result)
    {
      v21 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v21 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v15 = *a6;
          v12 = atoi(v30);
          __os_log_helper_16_2_3_8_32_4_0_4_0(v41, "otPlatVendorCoexConfigTest", v15, v12);
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "BT Load: %s, kWPANTUNDVendor_CoEx_Dutycycle_Interval is set, current dt interval time is %d, overwrite it to %d", v41, 0x18u);
        }
      }

      else if (!v21 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v40, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v40, 0x16u);
      }

      result = atoi(v30);
      *a6 = result;
    }
  }

  if (a7)
  {
    result = getStringValue("vendor:coex:thread:dutycycle:datapoll:align");
    v31 = result;
    if (result)
    {
      v20 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v20 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v14 = *a7;
          v13 = atoi(v31);
          __os_log_helper_16_2_3_8_32_4_0_4_0(v39, "otPlatVendorCoexConfigTest", v14, v13);
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "BT Load: %s, kWPANTUNDVendor_CoEx_Dutycycle_Datappoll_Align is set, current datapoll align is %d, overwrite it to %d", v39, 0x18u);
        }
      }

      else if (!v20 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v38, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v38, 0x16u);
      }

      result = atoi(v31);
      *a7 = result != 0;
    }
  }

  return result;
}

uint64_t otPlatVendorCoexThreadClear(uint64_t a1)
{
  v3 = otPlatVendorSetPriority(a1, 0, 0, 0);
  if (!v3 && ((otPlatRadioGetRcp2Vendor2Enabled() & 1) != 0 || !otPlatVendorSetDutyCycle(a1, 0, 0, 0)))
  {
    otLinkSetFragmentSize(a1, 0x7Fu);
    otLinkSetDataPollTimeoutCoex(a1, 100);
  }

  if (v3)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_2_8_32_4_0(v6, "otPlatVendorCoexThreadClear", v3);
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "BT Load: %s, otPlatVendorSetPriority failed error is %d", v6, 0x12u);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v5, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v5, 0x16u);
    }
  }

  return v3;
}

uint64_t otPlatVendorCoexThreadDetached(uint64_t a1, char a2, unsigned __int8 a3, unsigned __int8 a4, char a5, char a6)
{
  v23 = 0;
  v22 = 3;
  v21 = 0;
  v20 = 10000;
  v19 = 450000;
  v18 = 0;
  v17 = 1;
  v16 = 0;
  if (a2)
  {
    if (a3 >= 3u)
    {
      if (a3 >= 5u)
      {
        if (a3 == 5)
        {
          v20 = 2500;
          v19 = 60000;
          v18 = 1;
          v17 = 0;
          if (a4 == 2 || a4 == 5 || a4 == 1 || a4 == 6)
          {
            v16 = 60;
            v21 = 22500;
          }

          else if (a4 == 10 || a4 == 7)
          {
            v16 = 60;
            v21 = 22500;
          }

          else if ((a5 & 1) != 0 && (a4 == 3 || a4 == 4 || a4 == 8))
          {
            v16 = 60;
          }

          logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
          if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
          {
            if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
            {
              __os_log_helper_16_2_4_8_32_4_0_4_0_4_0(v37, "otPlatVendorCoexThreadDetached", a3, a4, 3);
              _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "BT Load: %s NewAttachState is %d: Child ID Req procedure started. bt audio task ID is %d, set the priority as %d.", v37, 0x1Eu);
            }
          }

          else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v36, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v36, 0x16u);
          }

          v10 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v10 && (syslog_is_the_mask_enabled(6) & 1) != 0)
          {
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              __os_log_helper_16_2_1_8_32(v35, "otPlatVendorCoexThreadDetached");
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "BT Load: %s Ongoing Attach procedure after parent response is received, set RX on IDLE use QOS Percentage Policy config to FALSE", v35, 0xCu);
            }
          }

          else if (!v10 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v34, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v34, 0x16u);
          }
        }
      }

      else
      {
        v13 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v13 && (syslog_is_the_mask_enabled(6) & 1) != 0)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            __os_log_helper_16_2_3_8_32_4_0_4_0(v41, "otPlatVendorCoexThreadDetached", a3, 3);
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "BT Load: %s NewAttachState is %d: Backoff time is fired, ready to send out ParentReq now. set the priority as %d.", v41, 0x18u);
          }
        }

        else if (!v13 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v40, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v40, 0x16u);
        }

        v12 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v12 && (syslog_is_the_mask_enabled(6) & 1) != 0)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            __os_log_helper_16_2_1_8_32(v39, "otPlatVendorCoexThreadDetached");
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "BT Load: %s Ongoing Attach procedure, set RX on IDLE use QOS Percentage Policy config to TRUE", v39, 0xCu);
          }
        }

        else if (!v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v38, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v38, 0x16u);
        }

        if (anyVoiceCallActive(a4))
        {
          v20 = 10000;
          v19 = 450000;
        }

        else
        {
          v20 = 10000;
          if (a6)
          {
            v19 = 90000;
          }

          else
          {
            v19 = 60000;
          }
        }
      }
    }

    else
    {
      v22 = 0;
      v20 = 0;
      v19 = 0;
      v15 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v15 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_3_8_32_4_0_4_0(v45, "otPlatVendorCoexThreadDetached", a3, 0);
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "BT Load: %s NewAttachState is %d: We might still wait for backoff timeout to send out ParentReq, keep the priority as %d.", v45, 0x18u);
        }
      }

      else if (!v15 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v44, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v44, 0x16u);
      }

      v14 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v14 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_32(v43, "otPlatVendorCoexThreadDetached");
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "BT Load: %s There is no Ongoing Attach procedure, set RX on IDLE use QOS Percentage Policy config to FALSE", v43, 0xCu);
        }
      }

      else if (!v14 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v42, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v42, 0x16u);
      }

      v17 = 0;
    }
  }

  else
  {
    v9 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v9 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_32(v33, "otPlatVendorCoexThreadDetached");
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "BT Load: %s The role change to detached, but there is no attach state change yet.", v33, 0xCu);
      }
    }

    else if (!v9 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v32, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v32, 0x16u);
    }
  }

  v8 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v8 && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_11_8_32_4_0_4_0_4_0_4_0_4_0_4_0_4_0_4_0_4_0_4_0(v31, "otPlatVendorCoexThreadDetached", v22, 0, v21, 127, 100, v20, v19, v18 & 1, v17 & 1, v16);
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "BT Load: %s Set Thread coex config: priority to %d, overridePriority to %d, overridePriorityDuration to %d us, max fragment size to %d, data poll timeout to %d, dt_high(x) %d, dt_interval(y) %d, dt_datapoll_align %d, RxOnIdleUseQOSPercentagePolicy %d, B2BDataPollDelay %d ms", v31, 0x48u);
    }
  }

  else if (!v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v30, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v30, 0x16u);
  }

  if (!otPlatVendorSetPriority(a1, v22, 0, v21) && ((otPlatRadioGetRcp2Vendor2Enabled() & 1) != 0 || !otPlatVendorSetDutyCycle(a1, v20, v19, v18 & 1) && (v23 = otPlatVendorSetRxOnIdleUseQOSPercentagePolicyConfig(a1, v17 & 1)) == 0))
  {
    otLinkSetFragmentSize(a1, 0x7Fu);
    otLinkSetDataPollTimeoutCoex(a1, 100);
    otLinkSetB2BDataPollDelay(a1, v16);
    otLinkSetSessionPriority(a1, v22);
  }

  if (v23)
  {
    v7 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v7 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_2_8_32_4_0(v29, "otPlatVendorCoexThreadDetached", v23);
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "BT Load: %s, otPlatVendorSetPriority failed error is %d", v29, 0x12u);
      }
    }

    else if (!v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v28, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v28, 0x16u);
    }
  }

  return v23;
}

uint64_t __os_log_helper_16_2_11_8_32_4_0_4_0_4_0_4_0_4_0_4_0_4_0_4_0_4_0_4_0(uint64_t result, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11, int a12)
{
  *result = 2;
  *(result + 1) = 11;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  *(result + 24) = 0;
  *(result + 25) = 4;
  *(result + 26) = a5;
  *(result + 30) = 0;
  *(result + 31) = 4;
  *(result + 32) = a6;
  *(result + 36) = 0;
  *(result + 37) = 4;
  *(result + 38) = a7;
  *(result + 42) = 0;
  *(result + 43) = 4;
  *(result + 44) = a8;
  *(result + 48) = 0;
  *(result + 49) = 4;
  *(result + 50) = a9;
  *(result + 54) = 0;
  *(result + 55) = 4;
  *(result + 56) = a10;
  *(result + 60) = 0;
  *(result + 61) = 4;
  *(result + 62) = a11;
  *(result + 66) = 0;
  *(result + 67) = 4;
  *(result + 68) = a12;
  return result;
}

uint64_t otPlatVendorGetPowerMappingTable(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v11 = a2;
  VendorPowerMappingTable = 0;
  v9 = 343;
  RadioSpinel = GetRadioSpinel();
  VendorPowerMappingTable = ot::Spinel::RadioSpinel::GetVendorPowerMappingTable(RadioSpinel, v13, &v9);
  if (!VendorPowerMappingTable)
  {
    return unpackVendorPowerMappingTable(v13, v9, v11, v3, v4, v5, v6, v7);
  }

  return VendorPowerMappingTable;
}

uint64_t unpackVendorPowerMappingTable(unsigned __int8 *a1, unsigned __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a1;
  v37 = a2;
  v36 = a3;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v34 = spinel_datatype_unpack(a1, a2, "S", a4, a5, a6, a7, a8, &v33);
  if (v34 == 1)
  {
    v34 = 2;
  }

  *v36 = v33;
  v38 += v34;
  v37 -= v34;
  v34 = spinel_datatype_unpack(v38, v37, "C", v8, v9, v10, v11, v12, &v32);
  *(v36 + 2) = v32;
  v38 += v34;
  v37 -= v34;
  v34 = spinel_datatype_unpack(v38, v37, "d", v13, v14, v15, v16, v17, &v31);
  v38 += v34;
  v37 -= v34;
  v29 = v30;
  for (i = 0; i < v29; ++i)
  {
    v27 = 0;
    v34 = spinel_datatype_unpack(v31, v30, "c", v18, v19, v20, v21, v22, &v27);
    v31 += v34;
    v30 -= v34;
    *(v36 + 3 + i) = v27;
  }

  for (j = 0; j < 0x10u; ++j)
  {
    v34 = spinel_datatype_unpack(v38, v37, "d", v18, v19, v20, v21, v22, &v31);
    v38 += v34;
    v37 -= v34;
    v29 = v30;
    for (k = 0; k < v29; ++k)
    {
      v24 = 0;
      v34 = spinel_datatype_unpack(v31, v30, "c", v18, v19, v20, v21, v22, &v24);
      *(v36 + 23 + 20 * j + k) = v24;
      v31 += v34;
      v30 -= v34;
    }
  }

  return v35;
}

uint64_t otPlatVendorGetPowerMappingTableFlashData(uint64_t a1, char *a2, unsigned int *a3)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  VendorPowerMappingTableFlashData = 0;
  v9 = 1024;
  RadioSpinel = GetRadioSpinel();
  VendorPowerMappingTableFlashData = ot::Spinel::RadioSpinel::GetVendorPowerMappingTableFlashData(RadioSpinel, v14, &v9);
  if (!VendorPowerMappingTableFlashData)
  {
    return unpackVendorPowerMappingFlashData(v14, v9, v12, v11, v4, v5, v6, v7);
  }

  return VendorPowerMappingTableFlashData;
}

uint64_t unpackVendorPowerMappingFlashData(unsigned __int8 *a1, unsigned __int16 a2, char *a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v18 = spinel_datatype_unpack(a1, a2, "S", a4, a5, a6, a7, a8, &v17);
  v23 += v18;
  v22 -= v18;
  *v20 = v17;
  v16 = v17;
  for (i = 0; i < v16; ++i)
  {
    v14 = 0;
    v18 = spinel_datatype_unpack(v23, v22, "c", v8, v9, v10, v11, v12, &v14);
    v23 += v18;
    v22 -= v18;
    v21[i] = v14;
  }

  return v19;
}

uint64_t otPlatVendorSetPowerLimitTableActiveId(uint64_t a1, signed __int8 a2)
{
  v9 = a1;
  v8 = a2;
  VendorCC = 0;
  if (sCurrentRegion != 255 && sCurrentRegion == v8)
  {
    v6 = 0;
    RadioSpinel = GetRadioSpinel();
    VendorCC = ot::Spinel::RadioSpinel::GetVendorCC(RadioSpinel, &v6);
    otLogWarnPlat("%s RegionCode = %d in controller, and Host request to set the RegionCode = %d", "otPlatVendorSetPowerLimitTableActiveId", v6, v8);
    if (VendorCC || v6 == v8)
    {
      otLogWarnPlat("%s RegionCode = %d request not set,error = %d", "otPlatVendorSetPowerLimitTableActiveId", v8, VendorCC);
    }

    else
    {
      otLogWarnPlat("A crash may have occurred in the firmware : %s RegionCode = %d to be set", "otPlatVendorSetPowerLimitTableActiveId", v8);
      v4 = GetRadioSpinel();
      VendorCC = ot::Spinel::RadioSpinel::SetVendorCC(v4, v8);
    }
  }

  else
  {
    otLogWarnPlat("%s RegionCode = %d to be set", "otPlatVendorSetPowerLimitTableActiveId", v8);
    v2 = GetRadioSpinel();
    VendorCC = ot::Spinel::RadioSpinel::SetVendorCC(v2, v8);
  }

  if (!VendorCC)
  {
    sCurrentRegion = v8;
  }

  return VendorCC;
}

uint64_t otPlatVendorSetPowerMappingTableFlashData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v5 = 500;
  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::SetVendorPowerMappingTableFlashData(RadioSpinel, v10, &v5);
}

uint64_t otPlatRadioGetMinInterframeDelay(uint64_t a1, unsigned int *a2)
{
  if (!a2)
  {
    __assert_rtn("otPlatRadioGetMinInterframeDelay", "radio.cpp", 3570, "aDurationInMs != nullptr");
  }

  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::GetMinInterframeDelay(RadioSpinel, a2);
}

void ot::Spinel::RadioSpinel::~RadioSpinel(ot::Spinel::RadioSpinel *this)
{
  ot::Spinel::RadioSpinel::~RadioSpinel(this);
}

{
  ot::Spinel::RadioSpinel::Deinit(this);
}

__darwin_ct_rune_t __isctype(__darwin_ct_rune_t _c, unint64_t _f)
{
  return (_c & 0x80000000) == 0 && _c < 256 && (_DefaultRuneLocale.__runetype[_c] & _f) != 0;
}

{
  return __isctype(_c, _f);
}

uint64_t ot::Posix::RcpCapsDiag::RcpCapsDiag(uint64_t this, ot::Spinel::RadioSpinel *a2)
{
  *this = a2;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t ot::Spinel::SpinelDriver::GetVersion(ot::Spinel::SpinelDriver *this)
{
  return this + 8289;
}

{
  return ot::Spinel::SpinelDriver::GetVersion(this);
}

const char *handleDiagOutput(const char *result, va_list a2, void *a3)
{
  if (sDiagOutput)
  {
    if (sDiagOutputLen)
    {
      result = vsnprintf(sDiagOutput, sDiagOutputLen, result, a2);
      if (result > 0)
      {
        if (sDiagOutputLen > result)
        {
          v3 = result;
        }

        else
        {
          v3 = sDiagOutputLen;
        }

        sDiagOutput += v3;
        sDiagOutputLen -= v3;
      }
    }
  }

  return result;
}

char *ot::Posix::RadioUrl::Init(char *this, const char *a2)
{
  v8 = this;
  if (a2)
  {
    if (strnlen(a2, 0x200uLL) >= 0x200)
    {
      v11 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio_url.cpp", 47);
      if (v11)
      {
        v7 = v11 + 1;
      }

      else
      {
        v7 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio_url.cpp";
      }

      v2 = otExitCodeToString(2);
      otLogCritPlat("%s() at %s:%d: %s", "Init", v7, 143, v2);
      handle_daemon_exit();
      exit(2);
    }

    strncpy(v8 + 32, a2, 0x1FFuLL);
    this = ot::Url::Url::Init(v8, v8 + 32);
    v10 = this;
    if (this)
    {
      v9 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio_url.cpp", 47);
      if (v9)
      {
        v6 = v9 + 1;
      }

      else
      {
        v6 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio_url.cpp";
      }

      if (v10 == 7)
      {
        v3 = 2;
      }

      else
      {
        v3 = 1;
      }

      v4 = otExitCodeToString(v3);
      otLogCritPlat("%s() at %s:%d: %s", "Init", v6, 145, v4);
      handle_daemon_exit();
      if (v10 == 7)
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }

      exit(v5);
    }
  }

  return this;
}

uint64_t otPlatIsSettingsFileExists(uint64_t a1)
{
  getSettingsFileName(a1, v10, 0);
  v4 = open(v10, 0, 384);
  if (v4 == -1)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v9, "otPlatIsSettingsFileExists", v10);
        _os_log_error_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_ERROR, "%s: FileName: %s doesn't exist ", v9, 0x16u);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v8, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v8, 0x16u);
    }

    v5 = 0;
  }

  else
  {
    v2 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v2 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_2_8_32_8_32(v7, "otPlatIsSettingsFileExists", v10);
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s: FileName: %s exist ", v7, 0x16u);
      }
    }

    else if (!v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v6, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v6, 0x16u);
    }

    close(v4);
    v5 = 1;
  }

  return v5 & 1;
}

void getSettingsFileName(uint64_t a1, char *a2, char a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = 0;
  otPlatRadioGetIeeeEui64(a1, &v9);
  v9 = ot::BigEndian::HostSwap64(v9, v3);
  ExtendedAddress = otLinkGetExtendedAddress(v12);
  Uint64 = ot::BigEndian::ReadUint64(ExtendedAddress, v4);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_1_8_0(v16, Uint64);
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "ExtendedAddress in Settings File: 0x%llx", v16, 0xCu);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v15, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v15, 0x16u);
  }

  if (v10)
  {
    snprintf(v11, 0x3EuLL, "var/db/com.apple.threadradiod/cfg_%llx.%s", Uint64, "swap");
  }

  else
  {
    snprintf(v11, 0x3EuLL, "var/db/com.apple.threadradiod/cfg_%llx.%s", Uint64, "data");
  }

  v5 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v5 && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_32(v14, v11);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "FileName: %s", v14, 0xCu);
    }
  }

  else if (!v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v13, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v13, 0x16u);
  }
}

uint64_t otPlatSettingsInit(uint64_t a1, uint64_t a2, __int16 a3)
{
  v26 = "com.apple.wpantund.ncp";
  v27 = "default";
  v28 = "otPlatSettingsInit";
  v44 = a1;
  v43 = a2;
  v42 = a3;
  v41 = 0;
  result = IsSystemDryRun();
  if ((result & 1) == 0)
  {
    if (stat("var/db/com.apple.threadradiod", &v40) == -1 && mkdir("var/db/com.apple.threadradiod", 0x1EDu))
    {
      v39 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
      if (v39)
      {
        v25 = v39 + 1;
      }

      else
      {
        v25 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp";
      }

      v23 = v25;
      v24 = 5;
      v4 = otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", "otPlatSettingsInit", v25, 255, v4);
      handle_daemon_exit();
      exit(v24);
    }

    getSettingsFileName(v44, v47, 0);
    if (sSettingsFd != -1)
    {
      p_class_meths = &OBJC_PROTOCOL___NSCopying.class_meths;
      close(sSettingsFd);
      sSettingsFd = -1;
    }

    sSettingsFd = open(v47, 16777730, 384);
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      oslog = logging_obg;
      type = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        log = oslog;
        *v20 = type;
        buf = v46;
        __os_log_helper_16_2_3_8_32_8_32_4_0(v46, v28, v47, sSettingsFd);
        _os_log_impl(&_mh_execute_header, oslog, type, "%s: FileName: %s data file opened with fd = %d", v46, 0x1Cu);
      }
    }

    else if (!logging_obg)
    {
      v35 = &_os_log_default;
      v34 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v16 = v35;
        *v17 = v34;
        v18 = v45;
        __os_log_helper_16_2_2_8_32_8_32(v45, v26, v27);
        _os_log_error_impl(&_mh_execute_header, v35, v34, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v45, 0x16u);
      }
    }

    checkCTRSettingsFileLimit();
    if (sSettingsFd == -1)
    {
      v33 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
      if (v33)
      {
        v15 = v33 + 1;
      }

      else
      {
        v15 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp";
      }

      v13 = v15;
      v14 = 5;
      v5 = otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", "otPlatSettingsInit", v15, 282, v5);
      handle_daemon_exit();
      exit(v14);
    }

    v11 = &OBJC_PROTOCOL___NSCopying.class_meths;
    v12 = 0;
    v32 = lseek(sSettingsFd, 0, 2);
    result = lseek(sSettingsFd, 0, 0);
    *&v31[1] = result;
    while (*&v31[1] < v32)
    {
      v31[0] = 0;
      result = read(sSettingsFd, v31 + 2, 2uLL);
      v30 = result;
      if (result != 2)
      {
        v41 = 6;
        break;
      }

      result = read(sSettingsFd, v31, 2uLL);
      v30 = result;
      if (result != 2)
      {
        v41 = 6;
        break;
      }

      *&v31[1] += LOWORD(v31[0]) + 4;
      v10 = *&v31[1];
      result = lseek(sSettingsFd, LOWORD(v31[0]), 1);
      if (v10 != result)
      {
        v41 = 6;
        break;
      }
    }
  }

  if (v41 == 6)
  {
    result = ftruncate(sSettingsFd, 0);
    if (result)
    {
      v29 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
      if (v29)
      {
        v9 = v29 + 1;
      }

      else
      {
        v9 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp";
      }

      v7 = v9;
      v8 = 5;
      v6 = otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", "otPlatSettingsInit", v9, 307, v6);
      handle_daemon_exit();
      exit(v8);
    }
  }

  return result;
}