BOOL CMMsl::KappaPulseInertialHgAccel::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  v3 = *(a2 + 104);
  if ((v2 & 0x800) != 0)
  {
    if ((*(a2 + 104) & 0x800) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((*(a2 + 104) & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 104) & 0x100) != 0)
  {
    if ((*(a2 + 104) & 0x100) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((*(a2 + 104) & 0x100) != 0)
  {
    return 0;
  }

  if ((*(a1 + 104) & 0x200) != 0)
  {
    if ((*(a2 + 104) & 0x200) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((*(a2 + 104) & 0x200) != 0)
  {
    return 0;
  }

  if ((*(a1 + 104) & 0x400) != 0)
  {
    if ((*(a2 + 104) & 0x400) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((*(a2 + 104) & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  v4 = (v3 & 4) == 0;
  if ((v2 & 4) != 0)
  {
    return (v3 & 4) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v4;
}

BOOL CMMsl::PedometerPathStraightness::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 56) & 8) != 0)
  {
    if ((*(a2 + 56) & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 4) != 0)
  {
    if ((*(a2 + 56) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 0x10) != 0)
  {
    if ((*(a2 + 56) & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 2) != 0)
  {
    if ((*(a2 + 56) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 0x20) != 0)
  {
    if ((*(a2 + 56) & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 0x20) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 56) & 1) == 0;
  if (*(a1 + 56))
  {
    return (*(a2 + 56) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

BOOL CMMsl::VO2MaxModelInput::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    if ((*(a2 + 40) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 2) != 0)
  {
    if ((*(a2 + 40) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 2) != 0)
  {
    return 0;
  }

  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 40))
  {
    return 0;
  }

  v2 = (*(a2 + 40) & 8) == 0;
  if ((*(a1 + 40) & 8) != 0)
  {
    return (*(a2 + 40) & 8) != 0 && *(a1 + 32) == *(a2 + 32);
  }

  return v2;
}

BOOL CMMsl::ProxCalibration::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 72) & 2) != 0)
  {
    if ((*(a2 + 72) & 2) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((*(a2 + 72) & 2) != 0)
  {
    return 0;
  }

  if (*(a1 + 72))
  {
    if ((*(a2 + 72) & 1) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if (*(a2 + 72))
  {
    return 0;
  }

  if ((*(a1 + 72) & 4) != 0)
  {
    if ((*(a2 + 72) & 4) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((*(a2 + 72) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 72) & 8) != 0)
  {
    if ((*(a2 + 72) & 8) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((*(a2 + 72) & 8) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v2 - v3 != *(a2 + 16) - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4)
    {
      return 0;
    }

    ++v3;
    ++v4;
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a2 + 32);
  if (v5 - v6 != *(a2 + 40) - v7)
  {
    return 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  v8 = v6 + 4;
  do
  {
    v9 = *v7++;
    result = *(v8 - 4) == v9;
    v11 = *(v8 - 4) != v9 || v8 == v5;
    v8 += 4;
  }

  while (!v11);
  return result;
}

BOOL CMMsl::KappaStepsResult::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 60);
  v3 = *(a2 + 60);
  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 60) & 0x100) != 0)
  {
    if ((*(a2 + 60) & 0x100) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((*(a2 + 60) & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  v4 = (v3 & 2) == 0;
  if ((v2 & 2) != 0)
  {
    return (v3 & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v4;
}

BOOL CMMsl::WakeGestureSample::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 84);
  v3 = *(a2 + 84);
  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 81) != *(a2 + 81))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 79) != *(a2 + 79))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 78) != *(a2 + 78))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 82) != *(a2 + 82))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 77) != *(a2 + 77))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  v4 = (*(a2 + 84) & 0x40) == 0;
  if ((v2 & 0x40) != 0)
  {
    return (v3 & 0x40) != 0 && *(a1 + 56) == *(a2 + 56);
  }

  return v4;
}

BOOL CMMsl::KappaGravityAutocorrelationResult::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v3 = *(a2 + 64);
  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 64) & 0x800) != 0)
  {
    if ((*(a2 + 64) & 0x800) == 0 || *(a1 + 61) != *(a2 + 61))
    {
      return 0;
    }
  }

  else if ((*(a2 + 64) & 0x800) != 0)
  {
    return 0;
  }

  if ((*(a1 + 64) & 0x400) != 0)
  {
    if ((*(a2 + 64) & 0x400) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((*(a2 + 64) & 0x400) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 64) & 0x200) != 0)
  {
    if ((*(a2 + 64) & 0x200) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((*(a2 + 64) & 0x200) != 0)
  {
    return 0;
  }

  if ((*(a1 + 64) & 0x100) != 0)
  {
    if ((*(a2 + 64) & 0x100) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((*(a2 + 64) & 0x100) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x80) == 0;
  if ((v2 & 0x80) != 0)
  {
    return (v3 & 0x80) != 0 && *(a1 + 48) == *(a2 + 48);
  }

  return v4;
}

BOOL CMMsl::RunningVerticalOscillationGradientBoostedSignals::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 212);
  v3 = *(a2 + 212);
  if ((v2 & 0x40000) != 0)
  {
    if ((v3 & 0x40000) == 0 || *(a1 + 152) != *(a2 + 152))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000000) != 0)
  {
    if ((v3 & 0x1000000) == 0 || *(a1 + 200) != *(a2 + 200))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200000) != 0)
  {
    if ((v3 & 0x200000) == 0 || *(a1 + 176) != *(a2 + 176))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100000) != 0)
  {
    if ((v3 & 0x100000) == 0 || *(a1 + 168) != *(a2 + 168))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 144) != *(a2 + 144))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800000) != 0)
  {
    if ((v3 & 0x800000) == 0 || *(a1 + 192) != *(a2 + 192))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 136) != *(a2 + 136))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x400000) != 0)
  {
    if ((v3 & 0x400000) == 0 || *(a1 + 184) != *(a2 + 184))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000) != 0)
  {
    if ((v3 & 0x80000) == 0 || *(a1 + 160) != *(a2 + 160))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x2000000) == 0;
  if ((v2 & 0x2000000) != 0)
  {
    return (v3 & 0x2000000) != 0 && *(a1 + 208) == *(a2 + 208);
  }

  return v4;
}

BOOL CMMsl::SubStats::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = *(a2 + 56);
  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 0x200) != 0)
  {
    if ((*(a2 + 56) & 0x200) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 0x400) != 0)
  {
    if ((*(a2 + 56) & 0x400) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 0x100) != 0)
  {
    if ((*(a2 + 56) & 0x100) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 0x100) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x40) == 0;
  if ((v2 & 0x40) != 0)
  {
    return (v3 & 0x40) != 0 && *(a1 + 36) == *(a2 + 36);
  }

  return v4;
}

BOOL CMMsl::PedOdomFusionExtendedModeSegment::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 56) & 4) != 0)
  {
    if ((*(a2 + 56) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 8) != 0)
  {
    if ((*(a2 + 56) & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 2) != 0)
  {
    if ((*(a2 + 56) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 2) != 0)
  {
    return 0;
  }

  if (*(a1 + 56))
  {
    if ((*(a2 + 56) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 56))
  {
    return 0;
  }

  if ((*(a1 + 56) & 0x10) != 0)
  {
    if ((*(a2 + 56) & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 0x40) != 0)
  {
    if ((*(a2 + 56) & 0x40) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 0x40) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 56) & 0x20) == 0;
  if ((*(a1 + 56) & 0x20) != 0)
  {
    return (*(a2 + 56) & 0x20) != 0 && *(a1 + 48) == *(a2 + 48);
  }

  return v2;
}

BOOL CMMsl::MagicMountState::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 20))
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 2) == 0;
  if ((*(a1 + 20) & 2) != 0)
  {
    return (*(a2 + 20) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::PDRPedestrianClassifierState::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56))
  {
    if ((*(a2 + 56) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if (*(a2 + 56))
  {
    return 0;
  }

  if ((*(a1 + 56) & 8) != 0)
  {
    if ((*(a2 + 56) & 8) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 8) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v2 - v3 != *(a2 + 16) - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4)
    {
      return 0;
    }

    ++v3;
    ++v4;
  }

  if ((*(a1 + 56) & 2) != 0)
  {
    if ((*(a2 + 56) & 2) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 2) != 0)
  {
    return 0;
  }

  v5 = (*(a2 + 56) & 4) == 0;
  if ((*(a1 + 56) & 4) != 0)
  {
    return (*(a2 + 56) & 4) != 0 && *(a1 + 48) == *(a2 + 48);
  }

  return v5;
}

BOOL CMMsl::PDRPlacementClassifierState::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 52))
  {
    if ((*(a2 + 52) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if (*(a2 + 52))
  {
    return 0;
  }

  if ((*(a1 + 52) & 4) != 0)
  {
    if ((*(a2 + 52) & 4) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 4) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v2 - v3 != *(a2 + 16) - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4)
    {
      return 0;
    }

    ++v3;
    ++v4;
  }

  v5 = (*(a2 + 52) & 2) == 0;
  if ((*(a1 + 52) & 2) != 0)
  {
    return (*(a2 + 52) & 2) != 0 && *(a1 + 40) == *(a2 + 40);
  }

  return v5;
}

BOOL CMMsl::PDRSpeedEstimatorState::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 8) != 0)
  {
    if ((*(a2 + 32) & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 8) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 2) == 0;
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*(a2 + 32) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::PDRDOTEstimatorState::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 8) != 0)
  {
    if ((*(a2 + 32) & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 8) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 2) == 0;
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*(a2 + 32) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::PDRVelocityEstimatorState::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a2 + 48);
  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v3 & v2 & 0x80) != 0)
  {
    if (*(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if (((v3 | v2) & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  v4 = (v3 & 2) == 0;
  if ((v2 & 2) != 0)
  {
    return (v3 & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v4;
}

BOOL CMMsl::KMVelocityEstimatorState::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 52);
  v3 = *(a2 + 52);
  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 52) & 0x100) != 0)
  {
    if ((*(a2 + 52) & 0x100) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 0x100) != 0)
  {
    return 0;
  }

  if ((*(a1 + 52) & 0x200) != 0)
  {
    if ((*(a2 + 52) & 0x200) == 0 || *(a1 + 49) != *(a2 + 49))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 0x200) != 0)
  {
    return 0;
  }

  if ((*(a1 + 52) & 0x400) != 0)
  {
    if ((*(a2 + 52) & 0x400) == 0 || *(a1 + 50) != *(a2 + 50))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 0x400) != 0)
  {
    return 0;
  }

  v4 = (v3 & 2) == 0;
  if ((v2 & 2) != 0)
  {
    return (v3 & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v4;
}

BOOL CMMsl::VelocityEstimatorFusionState::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 60);
  v3 = *(a2 + 60);
  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((*(a1 + 60) & 0x100) != 0)
  {
    if ((*(a2 + 60) & 0x100) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 60) & 0x100) != 0)
  {
    return 0;
  }

  if ((*(a1 + 60) & 0x200) != 0)
  {
    if ((*(a2 + 60) & 0x200) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((*(a2 + 60) & 0x200) != 0)
  {
    return 0;
  }

  if ((*(a1 + 60) & 0x400) != 0)
  {
    if ((*(a2 + 60) & 0x400) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((*(a2 + 60) & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  v4 = (v3 & 2) == 0;
  if ((v2 & 2) != 0)
  {
    return (v3 & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v4;
}

BOOL CMMsl::PDRFenceReference::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 20))
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 2) == 0;
  if ((*(a1 + 20) & 2) != 0)
  {
    return (*(a2 + 20) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::PDRFenceState::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 68);
  v3 = *(a2 + 68);
  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((*(a1 + 68) & 0x200) != 0)
  {
    if ((*(a2 + 68) & 0x200) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((*(a2 + 68) & 0x200) != 0)
  {
    return 0;
  }

  if ((*(a1 + 68) & 0x400) != 0)
  {
    if ((*(a2 + 68) & 0x400) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((*(a2 + 68) & 0x400) != 0)
  {
    return 0;
  }

  if ((*(a1 + 68) & 0x800) != 0)
  {
    if ((*(a2 + 68) & 0x800) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((*(a2 + 68) & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((*(a1 + 68) & 0x100) != 0)
  {
    if ((*(a2 + 68) & 0x100) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 68) & 0x100) != 0)
  {
    return 0;
  }

  if ((*(a1 + 68) & 0x1000) != 0)
  {
    if ((*(a2 + 68) & 0x1000) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((*(a2 + 68) & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  v4 = (v3 & 4) == 0;
  if ((v2 & 4) != 0)
  {
    return (v3 & 4) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v4;
}

BOOL CMMsl::UWBRange::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 56) & 8) != 0)
  {
    if ((*(a2 + 56) & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 4) != 0)
  {
    if ((*(a2 + 56) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 4) != 0)
  {
    return 0;
  }

  if (*(a1 + 56))
  {
    if ((*(a2 + 56) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 56))
  {
    return 0;
  }

  if ((*(a1 + 56) & 2) != 0)
  {
    if ((*(a2 + 56) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 0x10) != 0)
  {
    if ((*(a2 + 56) & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 0x10) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 56) & 0x20) == 0;
  if ((*(a1 + 56) & 0x20) != 0)
  {
    return (*(a2 + 56) & 0x20) != 0 && *(a1 + 48) == *(a2 + 48);
  }

  return v2;
}

BOOL CMMsl::KappaTriggerClustersResult::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  v3 = *(a2 + 96);
  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 84) != *(a2 + 84))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v3 & v2 & 0x8000) != 0)
  {
    if (*(a1 + 94) != *(a2 + 94))
    {
      return 0;
    }
  }

  else if (((v3 | v2) & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 93) != *(a2 + 93))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 92) != *(a2 + 92))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  v4 = (v3 & 4) == 0;
  if ((v2 & 4) != 0)
  {
    return (v3 & 4) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v4;
}

BOOL CMMsl::SimActivityEvent::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }

LABEL_6:
    v2 = *(a1 + 8);
    v3 = *(a2 + 8);
    result = v3 == 0;
    if (!v2)
    {
      return result;
    }

    if (!v3)
    {
      return 0;
    }

    if (*(v2 + 12))
    {
      if ((*(v3 + 12) & 1) == 0 || *(v2 + 8) != *(v3 + 8))
      {
        return 0;
      }
    }

    else if (*(v3 + 12))
    {
      return 0;
    }

    return 1;
  }

  if ((*(a2 + 24) & 1) == 0)
  {
    goto LABEL_6;
  }

  return 0;
}

BOOL CMMsl::PDRFeatures::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 108);
  v3 = *(a2 + 108);
  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x40000) != 0)
  {
    if ((v3 & 0x40000) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100000) != 0)
  {
    if ((v3 & 0x100000) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000) != 0)
  {
    if ((v3 & 0x80000) == 0 || *(a1 + 92) != *(a2 + 92))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200000) != 0)
  {
    if ((v3 & 0x200000) == 0 || *(a1 + 100) != *(a2 + 100))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400000) != 0)
  {
    if ((v3 & 0x400000) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 84) != *(a2 + 84))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  v4 = (*(a2 + 108) & 2) == 0;
  if ((v2 & 2) != 0)
  {
    return (v3 & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v4;
}

BOOL CMMsl::PDRDOTEstimatorStateBody::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 8) != 0)
  {
    if ((*(a2 + 32) & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 8) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 2) == 0;
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*(a2 + 32) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::PDRDOTEstimatorStateArmSwing::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 8) != 0)
  {
    if ((*(a2 + 32) & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 8) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 2) == 0;
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*(a2 + 32) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::PDRDOTEstimatorStateHeading::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 8) != 0)
  {
    if ((*(a2 + 32) & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 8) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 2) == 0;
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*(a2 + 32) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::PDRSpeedEstimatorStateDebug::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 8) != 0)
  {
    if ((*(a2 + 32) & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 8) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 2) == 0;
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*(a2 + 32) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::PrecisionFindingDOTEstimate::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    if ((*(a2 + 24) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 24) & 1) == 0;
  if (*(a1 + 24))
  {
    return (*(a2 + 24) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

BOOL CMMsl::PrecisionFindingState::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 92);
  v3 = *(a2 + 92);
  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((*(a1 + 92) & 0x100) != 0)
  {
    if ((*(a2 + 92) & 0x100) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((*(a2 + 92) & 0x100) != 0)
  {
    return 0;
  }

  if ((*(a1 + 92) & 0x800) != 0)
  {
    if ((*(a2 + 92) & 0x800) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((*(a2 + 92) & 0x800) != 0)
  {
    return 0;
  }

  if ((*(a1 + 92) & 0x400) != 0)
  {
    if ((*(a2 + 92) & 0x400) == 0 || *(a1 + 84) != *(a2 + 84))
    {
      return 0;
    }
  }

  else if ((*(a2 + 92) & 0x400) != 0)
  {
    return 0;
  }

  if ((*(a1 + 92) & 0x200) != 0)
  {
    if ((*(a2 + 92) & 0x200) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((*(a2 + 92) & 0x200) != 0)
  {
    return 0;
  }

  if ((*(a1 + 92) & 0x1000) != 0)
  {
    if ((*(a2 + 92) & 0x1000) == 0 || *(a1 + 89) != *(a2 + 89))
    {
      return 0;
    }
  }

  else if ((*(a2 + 92) & 0x1000) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x20) == 0;
  if ((v2 & 0x20) != 0)
  {
    return (v3 & 0x20) != 0 && *(a1 + 48) == *(a2 + 48);
  }

  return v4;
}

BOOL CMMsl::KappaRoadsResult::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    if ((*(a2 + 40) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 8) != 0)
  {
    if ((*(a2 + 40) & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 0x10) != 0)
  {
    if ((*(a2 + 40) & 0x10) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 0x10) != 0)
  {
    return 0;
  }

  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 40))
  {
    return 0;
  }

  v2 = (*(a2 + 40) & 2) == 0;
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*(a2 + 40) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::PrecisionFindingVelocityEstimate::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 44);
  v3 = *(a2 + 44);
  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v3 & v2 & 0x80) != 0)
  {
    if (*(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if (((v3 | v2) & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  v4 = (v3 & 8) == 0;
  if ((v2 & 8) != 0)
  {
    return (v3 & 8) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v4;
}

BOOL CMMsl::PrecisionFindingRangeFilter::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    if ((*(a2 + 40) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 2) != 0)
  {
    return 0;
  }

  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 40))
  {
    return 0;
  }

  if ((*(a1 + 40) & 4) != 0)
  {
    if ((*(a2 + 40) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 0x10) != 0)
  {
    if ((*(a2 + 40) & 0x10) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 8) != 0)
  {
    if ((*(a2 + 40) & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 0x20) != 0)
  {
    if ((*(a2 + 40) & 0x20) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 0x20) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 40) & 0x40) == 0;
  if ((*(a1 + 40) & 0x40) != 0)
  {
    return (*(a2 + 40) & 0x40) != 0 && *(a1 + 37) == *(a2 + 37);
  }

  return v2;
}

BOOL CMMsl::PDRDOTMeasurementSelectorState::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 52))
  {
    if ((*(a2 + 52) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if (*(a2 + 52))
  {
    return 0;
  }

  if ((*(a1 + 52) & 4) != 0)
  {
    if ((*(a2 + 52) & 4) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 4) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v2 - v3 != *(a2 + 16) - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4)
    {
      return 0;
    }

    ++v3;
    ++v4;
  }

  v5 = (*(a2 + 52) & 2) == 0;
  if ((*(a1 + 52) & 2) != 0)
  {
    return (*(a2 + 52) & 2) != 0 && *(a1 + 40) == *(a2 + 40);
  }

  return v5;
}

BOOL CMMsl::PDRDOTEstimatorUncertaintyModelOnBody::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 40))
  {
    return 0;
  }

  if ((*(a1 + 40) & 4) != 0)
  {
    if ((*(a2 + 40) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 2) != 0)
  {
    if ((*(a2 + 40) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 0x20) != 0)
  {
    if ((*(a2 + 40) & 0x20) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 0x20) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 0x40) != 0)
  {
    if ((*(a2 + 40) & 0x40) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 0x40) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 0x10) != 0)
  {
    if ((*(a2 + 40) & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 0x10) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 40) & 8) == 0;
  if ((*(a1 + 40) & 8) != 0)
  {
    return (*(a2 + 40) & 8) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v2;
}

BOOL CMMsl::PeerState::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 20))
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 2) == 0;
  if ((*(a1 + 20) & 2) != 0)
  {
    return (*(a2 + 20) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::MagnetometerCalibratorFilterParameters::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 136))
  {
    if ((*(a2 + 136) & 1) == 0 || *(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if (*(a2 + 136))
  {
    return 0;
  }

  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a2 + 32);
  if (v2 - v3 != *(a2 + 40) - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4)
    {
      return 0;
    }

    ++v3;
    ++v4;
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a2 + 8);
  if (v5 - v6 != *(a2 + 16) - v7)
  {
    return 0;
  }

  while (v6 != v5)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
  }

  v9 = *(a1 + 104);
  v8 = *(a1 + 112);
  v10 = *(a2 + 104);
  if (v8 - v9 != *(a2 + 112) - v10)
  {
    return 0;
  }

  while (v9 != v8)
  {
    if (*v9 != *v10)
    {
      return 0;
    }

    ++v9;
    ++v10;
  }

  v12 = *(a1 + 56);
  v11 = *(a1 + 64);
  v13 = *(a2 + 56);
  if (v11 - v12 != *(a2 + 64) - v13)
  {
    return 0;
  }

  while (v12 != v11)
  {
    if (*v12 != *v13)
    {
      return 0;
    }

    ++v12;
    ++v13;
  }

  v15 = *(a1 + 80);
  v14 = *(a1 + 88);
  v16 = *(a2 + 80);
  if (v14 - v15 != *(a2 + 88) - v16)
  {
    return 0;
  }

  if (v15 == v14)
  {
    return 1;
  }

  v17 = v15 + 4;
  do
  {
    v18 = *v16++;
    result = *(v17 - 4) == v18;
    v20 = *(v17 - 4) != v18 || v17 == v14;
    v17 += 4;
  }

  while (!v20);
  return result;
}

BOOL CMMsl::KappaActivityPhone::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 140);
  v5 = *(a2 + 140);
  if (v4)
  {
    if ((*(a2 + 140) & 1) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if (*(a2 + 140))
  {
    return 0;
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a2 + 8);
  if (v6 - v7 != *(a2 + 16) - v8)
  {
    return 0;
  }

  while (v7 != v6)
  {
    if (*v7 != *v8)
    {
      return 0;
    }

    ++v7;
    ++v8;
  }

  if ((*(a1 + 140) & 4) != 0)
  {
    if ((*(a2 + 140) & 4) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((*(a2 + 140) & 4) != 0)
  {
    return 0;
  }

  v10 = *(a1 + 80);
  v9 = *(a1 + 88);
  v11 = *(a2 + 80);
  if (v9 - v10 != *(a2 + 88) - v11)
  {
    return 0;
  }

  while (v10 != v9)
  {
    if (*v10 != *v11)
    {
      return 0;
    }

    ++v10;
    ++v11;
  }

  if ((*(a1 + 140) & 2) != 0)
  {
    if ((*(a2 + 140) & 2) == 0 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  else if ((*(a2 + 140) & 2) != 0)
  {
    return 0;
  }

  v12 = *(a1 + 32);
  v13 = *(a2 + 32);
  v14 = *(a1 + 40) - v12;
  if (v14 != *(a2 + 40) - v13)
  {
    return 0;
  }

  if (memcmp(v12, v13, v14))
  {
    return 0;
  }

  v15 = *(a1 + 56);
  v16 = *(a2 + 56);
  v17 = *(a1 + 64) - v15;
  if (v17 != *(a2 + 64) - v16 || memcmp(v15, v16, v17))
  {
    return 0;
  }

  if ((v4 & 0x20) != 0)
  {
    if ((v5 & 0x20) == 0 || *(a1 + 132) != *(a2 + 132))
    {
      return 0;
    }
  }

  else if ((v5 & 0x20) != 0)
  {
    return 0;
  }

  if ((v4 & 8) != 0)
  {
    if ((v5 & 8) == 0 || *(a1 + 124) != *(a2 + 124))
    {
      return 0;
    }
  }

  else if ((v5 & 8) != 0)
  {
    return 0;
  }

  if ((v4 & 0x10) == 0)
  {
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_45;
    }

    return 0;
  }

  if ((v5 & 0x10) == 0 || *(a1 + 128) != *(a2 + 128))
  {
    return 0;
  }

LABEL_45:
  result = (v5 & 0x40) == 0;
  if ((v4 & 0x40) != 0)
  {
    return (v5 & 0x40) != 0 && *(a1 + 136) == *(a2 + 136);
  }

  return result;
}

BOOL CMMsl::KappaActivityWatch::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  v5 = *(a2 + 104);
  if (v4)
  {
    if ((v5 & 1) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40) - v6;
  v8 = *(a2 + 32);
  if (v7 != *(a2 + 40) - v8 || memcmp(v6, v8, v7))
  {
    return 0;
  }

  if ((v4 & 0x100) != 0)
  {
    if ((v5 & 0x100) == 0 || *(a1 + 100) != *(a2 + 100))
    {
      return 0;
    }
  }

  else if ((v5 & 0x100) != 0)
  {
    return 0;
  }

  if ((v4 & 0x40) != 0)
  {
    if ((v5 & 0x40) == 0 || *(a1 + 92) != *(a2 + 92))
    {
      return 0;
    }
  }

  else if ((v5 & 0x40) != 0)
  {
    return 0;
  }

  if ((v4 & 0x80) != 0)
  {
    if ((v5 & 0x80) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v5 & 0x80) != 0)
  {
    return 0;
  }

  if ((v4 & 0x20) != 0)
  {
    if ((v5 & 0x20) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v5 & 0x20) != 0)
  {
    return 0;
  }

  if ((v4 & 2) != 0)
  {
    if ((v5 & 2) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v5 & 2) != 0)
  {
    return 0;
  }

  if ((v4 & 4) != 0)
  {
    if ((v5 & 4) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v5 & 4) != 0)
  {
    return 0;
  }

  v10 = *(a1 + 8);
  v11 = *(a2 + 8);
  v12 = *(a1 + 16) - v10;
  if (v12 != *(a2 + 16) - v11 || memcmp(v10, v11, v12))
  {
    return 0;
  }

  if ((v4 & 0x10) == 0)
  {
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_47;
    }

    return 0;
  }

  if ((v5 & 0x10) == 0 || *(a1 + 84) != *(a2 + 84))
  {
    return 0;
  }

LABEL_47:
  result = (v5 & 8) == 0;
  if ((v4 & 8) != 0)
  {
    return (v5 & 8) != 0 && *(a1 + 80) == *(a2 + 80);
  }

  return result;
}

BOOL CMMsl::PrecisionFindingSessionStartStop::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 20))
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 2) == 0;
  if ((*(a1 + 20) & 2) != 0)
  {
    return (*(a2 + 20) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::PDRDOTEstimatorStateDebug::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 8) != 0)
  {
    if ((*(a2 + 32) & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 8) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 2) == 0;
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*(a2 + 32) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::PDRDOTEstimatorStateBodyDebug::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 40))
  {
    return 0;
  }

  if ((*(a1 + 40) & 0x10) != 0)
  {
    if ((*(a2 + 40) & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 0x20) != 0)
  {
    if ((*(a2 + 40) & 0x20) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 0x20) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 8) != 0)
  {
    if ((*(a2 + 40) & 8) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 0x40) != 0)
  {
    if ((*(a2 + 40) & 0x40) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 0x40) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 4) != 0)
  {
    if ((*(a2 + 40) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 40) & 2) == 0;
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*(a2 + 40) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::KappaPeakDetectorMapResult::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 152);
  v3 = *(a2 + 152);
  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 140) != *(a2 + 140))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 144) != *(a2 + 144))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 124) != *(a2 + 124))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 116) != *(a2 + 116))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  v13 = *(a1 + 152);
  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 148) != *(a2 + 148))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 132) != *(a2 + 132))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 136) != *(a2 + 136))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  v6 = *(a1 + 16) - v4;
  if (v6 != *(a2 + 16) - v5)
  {
    return 0;
  }

  if (memcmp(v4, v5, v6))
  {
    return 0;
  }

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a2 + 32);
  if (v7 - v8 != *(a2 + 40) - v9)
  {
    return 0;
  }

  while (v8 != v7)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
  }

  if (v13)
  {
    if ((v3 & 1) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v13 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  result = (v3 & 0x20000) == 0;
  if ((v13 & 0x20000) == 0)
  {
    return result;
  }

  return (v3 & 0x20000) != 0 && *(a1 + 149) == *(a2 + 149);
}

BOOL CMMsl::KappaPeakDetectorMapMagTimestamps::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 44) & 8) != 0)
  {
    if ((*(a2 + 44) & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 8) != 0)
  {
    return 0;
  }

  if (*(a1 + 44))
  {
    if ((*(a2 + 44) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 44))
  {
    return 0;
  }

  if ((*(a1 + 44) & 2) != 0)
  {
    if ((*(a2 + 44) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 44) & 0x10) != 0)
  {
    if ((*(a2 + 44) & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 0x10) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 44) & 4) == 0;
  if ((*(a1 + 44) & 4) != 0)
  {
    return (*(a2 + 44) & 4) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v2;
}

BOOL CMMsl::PrecisionFindingVerticalState::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 60);
  v3 = *(a2 + 60);
  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 60) & 0x100) != 0)
  {
    if ((*(a2 + 60) & 0x100) == 0 || *(a1 + 58) != *(a2 + 58))
    {
      return 0;
    }
  }

  else if ((*(a2 + 60) & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x80) == 0;
  if ((v2 & 0x80) != 0)
  {
    return (v3 & 0x80) != 0 && *(a1 + 57) == *(a2 + 57);
  }

  return v4;
}

BOOL CMMsl::PencilFusionDMYawAlignmentUpdate::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v3 = *(a2 + 64);
  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v3 & v2 & 0x80) != 0)
  {
    return *(a1 + 60) == *(a2 + 60);
  }

  else
  {
    return ((v3 | v2) & 0x80u) == 0;
  }
}

BOOL CMMsl::PencilFusionRingSensorTrustModelUpdate::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    if ((*(a2 + 32) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 8) != 0)
  {
    if ((*(a2 + 32) & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 1) == 0;
  if (*(a1 + 32))
  {
    return (*(a2 + 32) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

BOOL CMMsl::SafetyHertzSample::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 28))
  {
    if ((*(a2 + 28) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 28))
  {
    return 0;
  }

  if ((*(a1 + 28) & 4) != 0)
  {
    if ((*(a2 + 28) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 28) & 2) != 0)
  {
    if ((*(a2 + 28) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 28) & 8) == 0;
  if ((*(a1 + 28) & 8) != 0)
  {
    return (*(a2 + 28) & 8) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v2;
}

BOOL CMMsl::SafetyCompanionStatus::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 20))
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 2) == 0;
  if ((*(a1 + 20) & 2) != 0)
  {
    return (*(a2 + 20) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::PTSConsumedGNSS::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5 || !CMMsl::LocationOscarEmu::operator==(v4, v5))
    {
      return 0;
    }

LABEL_6:
    v6 = *(a1 + 8);
    v7 = *(a2 + 8);
    result = v7 == 0;
    if (!v6)
    {
      return result;
    }

    if (!v7)
    {
      return 0;
    }

    if (*(v6 + 12))
    {
      if ((*(v7 + 12) & 1) == 0 || *(v6 + 8) != *(v7 + 8))
      {
        return 0;
      }
    }

    else if (*(v7 + 12))
    {
      return 0;
    }

    return 1;
  }

  if (!v5)
  {
    goto LABEL_6;
  }

  return 0;
}

BOOL CMMsl::PTSForwardPropagation::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 64) & 0x20) != 0)
  {
    if ((*(a2 + 64) & 0x20) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }

LABEL_6:
    if ((*(a1 + 64) & 8) != 0)
    {
      if ((*(a2 + 64) & 8) == 0 || *(a1 + 32) != *(a2 + 32))
      {
        return 0;
      }
    }

    else if ((*(a2 + 64) & 8) != 0)
    {
      return 0;
    }

    if ((*(a1 + 64) & 0x10) != 0)
    {
      if ((*(a2 + 64) & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
      {
        return 0;
      }
    }

    else if ((*(a2 + 64) & 0x10) != 0)
    {
      return 0;
    }

    if ((*(a1 + 64) & 4) != 0)
    {
      if ((*(a2 + 64) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
      {
        return 0;
      }
    }

    else if ((*(a2 + 64) & 4) != 0)
    {
      return 0;
    }

    if (*(a1 + 64))
    {
      if ((*(a2 + 64) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
      {
        return 0;
      }
    }

    else if (*(a2 + 64))
    {
      return 0;
    }

    if ((*(a1 + 64) & 2) != 0)
    {
      if ((*(a2 + 64) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
      {
        return 0;
      }
    }

    else if ((*(a2 + 64) & 2) != 0)
    {
      return 0;
    }

    v2 = *(a1 + 48);
    v3 = *(a2 + 48);
    result = v3 == 0;
    if (!v2)
    {
      return result;
    }

    if (!v3)
    {
      return 0;
    }

    if (*(v2 + 12))
    {
      if ((*(v3 + 12) & 1) == 0 || *(v2 + 8) != *(v3 + 8))
      {
        return 0;
      }
    }

    else if (*(v3 + 12))
    {
      return 0;
    }

    return 1;
  }

  if ((*(a2 + 64) & 0x20) == 0)
  {
    goto LABEL_6;
  }

  return 0;
}

BOOL CMMsl::PTSReconstructedRoute::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::PTSForwardPropagation::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::PTSMapMatchedRoute::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::PTSForwardPropagation::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::SafetyRemoteSample::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 52) & 0x20) != 0)
  {
    if ((*(a2 + 52) & 0x20) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 0x20) != 0)
  {
    return 0;
  }

  if ((*(a1 + 52) & 0x40) != 0)
  {
    if ((*(a2 + 52) & 0x40) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 0x40) != 0)
  {
    return 0;
  }

  if ((*(a1 + 52) & 0x10) != 0)
  {
    if ((*(a2 + 52) & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 52) & 8) != 0)
  {
    if ((*(a2 + 52) & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 8) != 0)
  {
    return 0;
  }

  if (*(a1 + 52))
  {
    if ((*(a2 + 52) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 52))
  {
    return 0;
  }

  if ((*(a1 + 52) & 4) != 0)
  {
    if ((*(a2 + 52) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 52) & 2) == 0;
  if ((*(a1 + 52) & 2) != 0)
  {
    return (*(a2 + 52) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::SafetyTrustedAudioResult::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 212);
  v3 = *(a2 + 212);
  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200000) != 0)
  {
    if ((v3 & 0x200000) == 0 || *(a1 + 140) != *(a2 + 140))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000000) != 0)
  {
    if ((v3 & 0x1000000) == 0 || *(a1 + 152) != *(a2 + 152))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100000) != 0)
  {
    if ((v3 & 0x100000) == 0 || *(a1 + 136) != *(a2 + 136))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40000) != 0)
  {
    if ((v3 & 0x40000) == 0 || *(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800000) != 0)
  {
    if ((v3 & 0x800000) == 0 || *(a1 + 148) != *(a2 + 148))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400000) != 0)
  {
    if ((v3 & 0x400000) == 0 || *(a1 + 144) != *(a2 + 144))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 124) != *(a2 + 124))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000) != 0)
  {
    if ((v3 & 0x80000) == 0 || *(a1 + 132) != *(a2 + 132))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40000000) != 0)
  {
    if ((v3 & 0x40000000) == 0 || *(a1 + 176) != *(a2 + 176))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000000) != 0)
  {
    if ((v3 & 0x2000000) == 0 || *(a1 + 156) != *(a2 + 156))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200000000) != 0)
  {
    if ((v3 & 0x200000000) == 0 || *(a1 + 188) != *(a2 + 188))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000000) != 0)
  {
    if ((v3 & 0x20000000) == 0 || *(a1 + 172) != *(a2 + 172))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000000) != 0)
  {
    if ((v3 & 0x8000000) == 0 || *(a1 + 164) != *(a2 + 164))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100000000) != 0)
  {
    if ((v3 & 0x100000000) == 0 || *(a1 + 184) != *(a2 + 184))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000000) != 0)
  {
    if ((v3 & 0x80000000) == 0 || *(a1 + 180) != *(a2 + 180))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000000) != 0)
  {
    if ((v3 & 0x4000000) == 0 || *(a1 + 160) != *(a2 + 160))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000000) != 0)
  {
    if ((v3 & 0x10000000) == 0 || *(a1 + 168) != *(a2 + 168))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 108) != *(a2 + 108))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 116) != *(a2 + 116))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800000000) != 0)
  {
    if ((v3 & 0x800000000) == 0 || *(a1 + 196) != *(a2 + 196))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000000000) != 0)
  {
    if ((v3 & 0x2000000000) == 0 || *(a1 + 204) != *(a2 + 204))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000000000) != 0)
  {
    if ((v3 & 0x1000000000) == 0 || *(a1 + 200) != *(a2 + 200))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400000000) != 0)
  {
    if ((v3 & 0x400000000) == 0 || *(a1 + 192) != *(a2 + 192))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000000000) != 0)
  {
    if ((v3 & 0x4000000000) == 0 || *(a1 + 208) != *(a2 + 208))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000000000) != 0)
  {
    if ((v3 & 0x8000000000) == 0 || *(a1 + 209) != *(a2 + 209))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  v4 = (*(a2 + 212) & 1) == 0;
  if (v2)
  {
    return (v3 & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v4;
}

BOOL CMMsl::TNB::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 92);
  v3 = *(a2 + 92);
  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000) != 0)
  {
    if ((v3 & 0x80000) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x40000) == 0;
  if ((v2 & 0x40000) != 0)
  {
    return (v3 & 0x40000) != 0 && *(a1 + 84) == *(a2 + 84);
  }

  return v4;
}

BOOL CMMsl::PDRDOTEstimatorStateTNBDebug::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v3 = *(a2 + 80);
  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((*(a1 + 80) & 0x4000) != 0)
  {
    if ((*(a2 + 80) & 0x4000) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 0x4000) != 0)
  {
    return 0;
  }

  if ((*(a1 + 80) & 0x2000) != 0)
  {
    if ((*(a2 + 80) & 0x2000) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 0x2000) != 0)
  {
    return 0;
  }

  if ((*(a1 + 80) & 0x1000) != 0)
  {
    if ((*(a2 + 80) & 0x1000) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((*(a1 + 80) & 0x100) != 0)
  {
    if ((*(a2 + 80) & 0x100) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 0x100) != 0)
  {
    return 0;
  }

  if ((*(a1 + 80) & 0x200) != 0)
  {
    if ((*(a2 + 80) & 0x200) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 0x200) != 0)
  {
    return 0;
  }

  if ((*(a1 + 80) & 0x400) != 0)
  {
    if ((*(a2 + 80) & 0x400) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 0x400) != 0)
  {
    return 0;
  }

  if ((*(a1 + 80) & 0x800) != 0)
  {
    if ((*(a2 + 80) & 0x800) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  result = v5 == 0;
  if (v4)
  {
    return v5 && CMMsl::TNB::operator==(v4, v5);
  }

  return result;
}

BOOL CMMsl::PDRDOTEstimatorStateSwingDebug::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 40))
  {
    return 0;
  }

  if ((*(a1 + 40) & 2) != 0)
  {
    if ((*(a2 + 40) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 4) != 0)
  {
    if ((*(a2 + 40) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 0x10) != 0)
  {
    if ((*(a2 + 40) & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 8) != 0)
  {
    if ((*(a2 + 40) & 8) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 40) & 0x20) != 0)
  {
    if ((*(a2 + 40) & 0x20) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 0x20) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 40) & 0x40) == 0;
  if ((*(a1 + 40) & 0x40) != 0)
  {
    return (*(a2 + 40) & 0x40) != 0 && *(a1 + 36) == *(a2 + 36);
  }

  return v2;
}

BOOL CMMsl::PTSSmoothedRoute::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::PTSForwardPropagation::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::SPUPlaybackExampleDeviceMotion::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::DeviceMotion::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::SPUPlaybackExampleMotionStateUpdate::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::MotionStateUpdate::operator==(v2, v3);
  }

  return result;
}

unint64_t CMMsl::Item::hash_value(CMMsl::Item *this)
{
  if (*(this + 3928))
  {
    v2 = *(this + 87);
    if (v2 == 0.0)
    {
      v2 = 0.0;
    }

    v1280 = v2;
  }

  else
  {
    v1280 = 0.0;
  }

  v3 = *(this + 170);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v4 = CMMsl::DeviceMotionCorrection::hash_value(v4);
    }

    if (*(v3 + 20))
    {
      v5 = *(v3 + 16);
    }

    else
    {
      v5 = 0;
    }

    v1279 = v5 ^ v4;
  }

  else
  {
    v1279 = 0;
  }

  v6 = *(this + 169);
  if (v6)
  {
    v1278 = CMMsl::GyroBiasConstraints::hash_value(v6);
  }

  else
  {
    v1278 = 0;
  }

  v7 = *(this + 166);
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8)
    {
      v8 = CMMsl::DeviceMotionCorrection::hash_value(v8);
    }

    v1277 = v8 ^ ((*(v7 + 20) << 31 >> 31) & *(v7 + 16));
  }

  else
  {
    v1277 = 0;
  }

  v9 = *(this + 165);
  if (v9)
  {
    v1276 = CMMsl::GravityConstraints::hash_value(v9);
  }

  else
  {
    v1276 = 0;
  }

  v10 = *(this + 96);
  if (v10 && (v11 = *(v10 + 8)) != 0)
  {
    v1275 = CMMsl::DeviceMotionCorrection::hash_value(v11);
  }

  else
  {
    v1275 = 0;
  }

  v12 = *(this + 95);
  if (v12)
  {
    v1274 = CMMsl::CompassConstraints::hash_value(v12);
  }

  else
  {
    v1274 = 0;
  }

  v13 = *(this + 102);
  if (v13 && (v14 = *(v13 + 8)) != 0)
  {
    v1273 = CMMsl::DeviceMotionCorrection::hash_value(v14);
  }

  else
  {
    v1273 = 0;
  }

  v15 = *(this + 101);
  if (v15)
  {
    v16 = *(v15 + 20);
    v17 = *(v15 + 8) == 0.0 || (v16 & 1) == 0;
    v18 = *(v15 + 8);
    if (v17)
    {
      v18 = 0;
    }

    v19 = v16 & 2;
    v20 = *(v15 + 16);
    v21 = v20 == 0.0 || v19 == 0;
    v22 = LODWORD(v20);
    if (v21)
    {
      v22 = 0;
    }

    v1272 = v22 ^ v18;
  }

  else
  {
    v1272 = 0;
  }

  v23 = *(this + 209);
  if (v23)
  {
    v1271 = CMMsl::IntersiloNSCodingData::hash_value(v23);
  }

  else
  {
    v1271 = 0;
  }

  v24 = *(this + 107);
  if (v24)
  {
    v1270 = CMMsl::DeviceMotionCovariance::hash_value(v24);
  }

  else
  {
    v1270 = 0;
  }

  v25 = *(this + 14);
  if (v25)
  {
    v1269 = CMMsl::AccessoryAccel::hash_value(v25);
  }

  else
  {
    v1269 = 0;
  }

  v26 = *(this + 22);
  if (v26)
  {
    v1268 = CMMsl::AccessoryGyro::hash_value(v26);
  }

  else
  {
    v1268 = 0;
  }

  v27 = *(this + 32);
  if (v27)
  {
    v1267 = CMMsl::AccessoryProx::hash_value(v27);
  }

  else
  {
    v1267 = 0;
  }

  v28 = *(this + 465);
  if (v28 && (v29 = *(v28 + 8)) != 0)
  {
    v1266 = CMMsl::Accel::hash_value(v29);
  }

  else
  {
    v1266 = 0;
  }

  v30 = *(this + 470);
  if (v30 && (v31 = *(v30 + 8)) != 0)
  {
    v1265 = CMMsl::BodyMetrics::hash_value(v31);
  }

  else
  {
    v1265 = 0;
  }

  v32 = *(this + 472);
  if (v32 && (v33 = *(v32 + 8)) != 0)
  {
    v1264 = CMMsl::ElevationChange::hash_value(v33);
  }

  else
  {
    v1264 = 0;
  }

  v34 = *(this + 476);
  if (v34 && (v35 = *(v34 + 8)) != 0)
  {
    v1263 = CMMsl::OnsetHeartRateData::hash_value(v35);
  }

  else
  {
    v1263 = 0;
  }

  v36 = *(this + 483);
  if (v36 && (v37 = *(v36 + 8)) != 0)
  {
    v1262 = CMMsl::RotationRate::hash_value(v37);
  }

  else
  {
    v1262 = 0;
  }

  v38 = *(this + 481);
  if (v38 && (v39 = *(v38 + 8)) != 0)
  {
    v1261 = CMMsl::OdometerWithAltitude::hash_value(v39);
  }

  else
  {
    v1261 = 0;
  }

  v40 = *(this + 487);
  if (v40 && (v41 = *(v40 + 8)) != 0)
  {
    v1260 = CMMsl::WorkoutEvent::hash_value(v41);
  }

  else
  {
    v1260 = 0;
  }

  v42 = *(this + 449);
  if (v42)
  {
    v1259 = CMMsl::VO2MaxInput::hash_value(v42);
  }

  else
  {
    v1259 = 0;
  }

  v43 = *(this + 75);
  if (!v43 || (v44 = *(v43 + 8), v45 = *(v43 + 16), v44 == v45))
  {
    v46 = 0;
  }

  else
  {
    v46 = 0;
    do
    {
      v47 = *v44++;
      v46 ^= CMMsl::DeviceMotion::hash_value(v47);
    }

    while (v44 != v45);
  }

  v48 = *(this + 76);
  if (v48)
  {
    v1258 = CMMsl::BraveHeartNatalieData::hash_value(v48);
  }

  else
  {
    v1258 = 0;
  }

  v49 = *(this + 77);
  if (!v49 || (v50 = *(v49 + 8), v51 = *(v49 + 16), v50 == v51))
  {
    v52 = 0;
  }

  else
  {
    v52 = 0;
    do
    {
      v53 = *v50++;
      v52 ^= CMMsl::VO2MaxInput::hash_value(v53);
    }

    while (v50 != v51);
  }

  v54 = *(this + 74);
  if (!v54 || (v55 = *(v54 + 8), v56 = *(v54 + 16), v55 == v56))
  {
    v57 = 0;
  }

  else
  {
    v57 = 0;
    do
    {
      v58 = *v55++;
      v57 ^= CMMsl::Accel::hash_value(v58);
    }

    while (v55 != v56);
  }

  v59 = *(this + 78);
  if (v59)
  {
    v1257 = CMMsl::BraveHeartWorkoutEvent::hash_value(v59);
  }

  else
  {
    v1257 = 0;
  }

  v60 = *(this + 475);
  if (v60)
  {
    v1256 = CMMsl::WorkoutRecorderHealthKitInfo::hash_value(v60);
  }

  else
  {
    v1256 = 0;
  }

  v61 = *(this + 318);
  if (v61)
  {
    v1255 = CMMsl::PearlAttitude::hash_value(v61);
  }

  else
  {
    v1255 = 0;
  }

  v62 = *(this + 371);
  if (v62)
  {
    v1254 = CMMsl::RotationRate::hash_value(v62);
  }

  else
  {
    v1254 = 0;
  }

  v63 = *(this + 485);
  if (v63 && (v64 = *(v63 + 8)) != 0)
  {
    v65 = vbic_s8(v64[1], vceqz_s32(vand_s8(vdup_n_s32(v64[2].u8[0]), 0x200000001)));
    v1253 = (v65.i32[0] ^ v65.i32[1]);
  }

  else
  {
    v1253 = 0;
  }

  v66 = *(this + 459);
  if (v66)
  {
    v1252 = CMMsl::WatchOnWristState::hash_value(v66);
  }

  else
  {
    v1252 = 0;
  }

  v67 = *(this + 86);
  if (v67)
  {
    v1251 = CMMsl::CatherineHealthKitData::hash_value(v67);
  }

  else
  {
    v1251 = 0;
  }

  v1250 = sub_25AC0BC48(*(this + 461));
  v68 = *(this + 205);
  if (v68)
  {
    v1249 = CMMsl::InEarTransitionEntry::hash_value(v68);
  }

  else
  {
    v1249 = 0;
  }

  v69 = *(this + 203);
  if (v69)
  {
    v1248 = CMMsl::InEarSession::hash_value(v69);
  }

  else
  {
    v1248 = 0;
  }

  v70 = *(this + 198);
  if (v70)
  {
    v1247 = CMMsl::InEarBaseline::hash_value(v70);
  }

  else
  {
    v1247 = 0;
  }

  v71 = *(this + 33);
  if (v71)
  {
    v1246 = CMMsl::AccessoryProxSensorDrop::hash_value(v71);
  }

  else
  {
    v1246 = 0;
  }

  v72 = *(this + 34);
  if (v72)
  {
    v1245 = CMMsl::AccessoryProxTempComp::hash_value(v72);
  }

  else
  {
    v1245 = 0;
  }

  v73 = *(this + 39);
  if (v73)
  {
    v1244 = CMMsl::AccessoryWake::hash_value(v73);
  }

  else
  {
    v1244 = 0;
  }

  v74 = *(this + 128);
  if (v74)
  {
    v1243 = CMMsl::FacePose::hash_value(v74);
  }

  else
  {
    v1243 = 0;
  }

  v75 = *(this + 486);
  if (v75)
  {
    v1242 = sub_25AC0BC48(*(v75 + 8));
  }

  else
  {
    v1242 = 0;
  }

  v76 = *(this + 482);
  if (v76 && (v77 = *(v76 + 8)) != 0)
  {
    v1241 = CMMsl::Pressure::hash_value(v77);
  }

  else
  {
    v1241 = 0;
  }

  v78 = *(this + 197);
  if (v78)
  {
    v79 = sub_25AB065E0(*(v78 + 8), *(v78 + 16));
    if (*(v78 + 36))
    {
      v80 = *(v78 + 32);
    }

    else
    {
      v80 = 0;
    }

    v1240 = v80 ^ v79;
  }

  else
  {
    v1240 = 0;
  }

  v81 = *(this + 20);
  if (v81)
  {
    v1239 = CMMsl::AccessoryDeviceMotion::hash_value(v81);
  }

  else
  {
    v1239 = 0;
  }

  v82 = *(this + 444);
  if (v82)
  {
    v1238 = CMMsl::VisionCompassBias::hash_value(v82);
  }

  else
  {
    v1238 = 0;
  }

  v83 = *(this + 49);
  if (v83)
  {
    v84 = *(v83 + 12);
    v85 = *(v83 + 8);
    if ((v84 & 1) == 0)
    {
      v85 = 0;
    }

    v1237 = v85;
  }

  else
  {
    v1237 = 0;
  }

  v86 = *(this + 441);
  if (v86)
  {
    v1236 = CMMsl::VIOEstimation::hash_value(v86);
  }

  else
  {
    v1236 = 0;
  }

  v87 = *(this + 261);
  if (v87)
  {
    v1235 = CMMsl::LSLHeadingEstimation::hash_value(v87);
  }

  else
  {
    v1235 = 0;
  }

  v88 = *(this + 139);
  if (v88)
  {
    v1234 = CMMsl::FallSnippet::hash_value(v88);
  }

  else
  {
    v1234 = 0;
  }

  v89 = *(this + 13);
  if (v89)
  {
    v1233 = CMMsl::AccelerometerPace::hash_value(v89);
  }

  else
  {
    v1233 = 0;
  }

  v90 = *(this + 286);
  if (v90)
  {
    v91 = *(v90 + 8);
    v92 = v91 == 0.0 || (*(v90 + 12) & 1) == 0;
    v93 = LODWORD(v91);
    if (v92)
    {
      v93 = 0;
    }

    v1232 = v93;
  }

  else
  {
    v1232 = 0;
  }

  v94 = *(this + 410);
  if (v94)
  {
    v1231 = CMMsl::StepCountEntry::hash_value(v94);
  }

  else
  {
    v1231 = 0;
  }

  v95 = *(this + 271);
  if (v95)
  {
    v1230 = CMMsl::MobilityBoutMetrics::hash_value(v95);
  }

  else
  {
    v1230 = 0;
  }

  v96 = *(this + 100);
  if (v96)
  {
    v1229 = CMMsl::CoprocessorReplyGaitMetrics::hash_value(v96);
  }

  else
  {
    v1229 = 0;
  }

  v97 = *(this + 442);
  if (v97)
  {
    v1228 = CMMsl::VIOPose::hash_value(v97);
  }

  else
  {
    v1228 = 0;
  }

  v98 = *(this + 387);
  if (v98)
  {
    v99 = *(v98 + 12);
    v100 = *(v98 + 8);
    if ((v99 & 1) == 0)
    {
      v100 = 0;
    }

    v1227 = v100;
  }

  else
  {
    v1227 = 0;
  }

  v101 = *(this + 443);
  if (v101)
  {
    v1226 = CMMsl::VIOReplayPose::hash_value(v101);
  }

  else
  {
    v1226 = 0;
  }

  v102 = *(this + 448);
  if (v102)
  {
    v1225 = CMMsl::VisualStateMeasurement::hash_value(v102);
  }

  else
  {
    v1225 = 0;
  }

  v103 = *(this + 245);
  if (v103)
  {
    v1224 = CMMsl::KappaTriggerDebug::hash_value(v103);
  }

  else
  {
    v1224 = 0;
  }

  v104 = *(this + 220);
  if (v104)
  {
    v1223 = CMMsl::KappaDirectionOfTravel::hash_value(v104);
  }

  else
  {
    v1223 = 0;
  }

  v105 = *(this + 194);
  if (v105 && (v106 = *(v105 + 8)) != 0)
  {
    v1222 = CMMsl::Accel::hash_value(v106);
  }

  else
  {
    v1222 = 0;
  }

  v107 = *(this + 241);
  if (v107)
  {
    v1221 = CMMsl::KappaSteps::hash_value(v107);
  }

  else
  {
    v1221 = 0;
  }

  v108 = *(this + 431);
  if (v108)
  {
    v109 = *(v108 + 20);
    v110 = *(v108 + 8);
    if ((v109 & 1) == 0)
    {
      v110 = 0;
    }

    v111 = *(v108 + 16);
    if ((v109 & 2) == 0)
    {
      v111 = 0;
    }

    v1220 = v111 ^ v110;
  }

  else
  {
    v1220 = 0;
  }

  v112 = *(this + 236);
  if (v112)
  {
    v1219 = CMMsl::KappaRoads::hash_value(v112);
  }

  else
  {
    v1219 = 0;
  }

  v113 = *(this + 432);
  if (v113)
  {
    v1218 = CMMsl::UserStudyEvent::hash_value(v113);
  }

  else
  {
    v1218 = 0;
  }

  v114 = *(this + 53);
  if (v114)
  {
    v1217 = CMMsl::AuxiliaryDeviceMotion::hash_value(v114);
  }

  else
  {
    v1217 = 0;
  }

  v115 = *(this + 424);
  if (v115)
  {
    v1216 = CMMsl::TempestPoCAuxiliaryDeviceMotion::hash_value(v115);
  }

  else
  {
    v1216 = 0;
  }

  v116 = *(this + 52);
  if (v116)
  {
    v1215 = CMMsl::AudioAccessoryDeviceMotion::hash_value(v116);
  }

  else
  {
    v1215 = 0;
  }

  v117 = *(this + 425);
  if (v117)
  {
    v1214 = CMMsl::TempestPoCListenerOrientation::hash_value(v117);
  }

  else
  {
    v1214 = 0;
  }

  v118 = *(this + 466);
  if (v118 && (v119 = *(v118 + 8)) != 0)
  {
    v1213 = CMMsl::Accel::hash_value(v119);
  }

  else
  {
    v1213 = 0;
  }

  v120 = *(this + 42);
  if (v120)
  {
    v121 = *(v120 + 8);
    v122 = v121 == 0.0 || (*(v120 + 12) & 1) == 0;
    v123 = LODWORD(v121);
    if (v122)
    {
      v123 = 0;
    }

    v1212 = v123;
  }

  else
  {
    v1212 = 0;
  }

  v124 = *(this + 464);
  if (v124 && (v125 = *(v124 + 8)) != 0)
  {
    v126 = *(v125 + 8);
    v127 = v126 == 0.0 || (*(v125 + 12) & 1) == 0;
    v128 = LODWORD(v126);
    if (v127)
    {
      v128 = 0;
    }

    v1211 = v128;
  }

  else
  {
    v1211 = 0;
  }

  v129 = *(this + 445);
  if (v129)
  {
    v1210 = CMMsl::VisualLocalization::hash_value(v129);
  }

  else
  {
    v1210 = 0;
  }

  v130 = *(this + 181);
  if (v130)
  {
    v1209 = CMMsl::GyroFactoryCalibrationData::hash_value(v130);
  }

  else
  {
    v1209 = 0;
  }

  v131 = *(this + 398);
  if (v131)
  {
    v132 = *(v131 + 20);
    v133 = *(v131 + 16);
    v134 = v133 == 0.0 || (v132 & 2) == 0;
    v135 = LODWORD(v133);
    if (v134)
    {
      v135 = 0;
    }

    v136 = *(v131 + 8);
    if ((v132 & 1) == 0)
    {
      v136 = 0;
    }

    v1208 = v135 ^ v136;
  }

  else
  {
    v1208 = 0;
  }

  v137 = *(this + 152);
  if (v137)
  {
    v1207 = CMMsl::FrequencyResponse::hash_value(v137);
  }

  else
  {
    v1207 = 0;
  }

  v138 = *(this + 123);
  if (v138)
  {
    v139 = *(v138 + 12);
    v140 = *(v138 + 8);
    if ((v139 & 1) == 0)
    {
      v140 = 0;
    }

    v1206 = v140;
  }

  else
  {
    v1206 = 0;
  }

  v141 = *(this + 6);
  if (v141 && (v142 = *(v141 + 8)) != 0)
  {
    v1205 = CMMsl::Accel::hash_value(v142);
  }

  else
  {
    v1205 = 0;
  }

  v143 = *(this + 280);
  if (v143)
  {
    v1204 = CMMsl::MotionLocation::hash_value(v143);
  }

  else
  {
    v1204 = 0;
  }

  v144 = *(this + 275);
  if (v144)
  {
    v1203 = CMMsl::MotionActivity::hash_value(v144);
  }

  else
  {
    v1203 = 0;
  }

  v145 = *(this + 69);
  if (v145)
  {
    v1202 = CMMsl::BioMotionPose::hash_value(v145);
  }

  else
  {
    v1202 = 0;
  }

  v146 = *(this + 243);
  if (v146)
  {
    v1201 = CMMsl::KappaTrigger::hash_value(v146);
  }

  else
  {
    v1201 = 0;
  }

  v147 = *(this + 364);
  if (v147)
  {
    v1200 = CMMsl::RelDMInSystemConfig::hash_value(v147);
  }

  else
  {
    v1200 = 0;
  }

  v148 = *(this + 212);
  if (v148 && (v149 = *(v148 + 8)) != 0)
  {
    v1199 = CMMsl::BioMotionPose::hash_value(v149);
  }

  else
  {
    v1199 = 0;
  }

  v150 = *(this + 99);
  if (v150 && (v151 = *(v150 + 8)) != 0)
  {
    v1198 = CMMsl::BioMotionPose::hash_value(v151);
  }

  else
  {
    v1198 = 0;
  }

  v152 = *(this + 176);
  if (v152)
  {
    v1197 = CMMsl::GyroCalibrationSample::hash_value(v152);
  }

  else
  {
    v1197 = 0;
  }

  v153 = *(this + 177);
  if (v153)
  {
    v1196 = CMMsl::GyroCalibrationSampleNonlinear::hash_value(v153);
  }

  else
  {
    v1196 = 0;
  }

  v154 = *(this + 175);
  if (!v154 || (v155 = *(v154 + 8), v156 = *(v154 + 16), v155 == v156))
  {
    v157 = 0;
  }

  else
  {
    v157 = 0;
    do
    {
      v158 = *v155++;
      v157 ^= CMMsl::GyroCalibrationSampleNonlinear::hash_value(v158);
    }

    while (v155 != v156);
  }

  v159 = *(this + 174);
  if (!v159 || (v160 = *(v159 + 8), v161 = *(v159 + 16), v160 == v161))
  {
    v162 = 0;
  }

  else
  {
    v162 = 0;
    do
    {
      v163 = *v160++;
      v162 ^= CMMsl::GyroCalibrationSample::hash_value(v163);
    }

    while (v160 != v161);
  }

  v164 = *(this + 66);
  if (v164)
  {
    v1195 = CMMsl::BioMotionClassification::hash_value(v164);
  }

  else
  {
    v1195 = 0;
  }

  v165 = *(this + 153);
  if (v165 && (v166 = *(v165 + 8)) != 0)
  {
    v1194 = CMMsl::BioMotionClassification::hash_value(v166);
  }

  else
  {
    v1194 = 0;
  }

  v167 = *(this + 274);
  if (v167 && (v168 = *(v167 + 8)) != 0)
  {
    v1193 = CMMsl::BioMotionClassification::hash_value(v168);
  }

  else
  {
    v1193 = 0;
  }

  v169 = *(this + 262);
  if (v169 && (v170 = *(v169 + 8)) != 0)
  {
    v1192 = CMMsl::BioMotionClassification::hash_value(v170);
  }

  else
  {
    v1192 = 0;
  }

  v171 = *(this + 334);
  if (v171)
  {
    v1191 = CMMsl::Pose::hash_value(v171);
  }

  else
  {
    v1191 = 0;
  }

  v172 = *(this + 335);
  if (v172)
  {
    v1190 = CMMsl::PoseState::hash_value(v172);
  }

  else
  {
    v1190 = 0;
  }

  v173 = *(this + 70);
  if (v173)
  {
    v1189 = CMMsl::BioMotionPredictedPose::hash_value(v173);
  }

  else
  {
    v1189 = 0;
  }

  v174 = *(this + 213);
  if (v174 && (v175 = *(v174 + 8)) != 0)
  {
    v1188 = CMMsl::BioMotionPredictedPose::hash_value(v175);
  }

  else
  {
    v1188 = 0;
  }

  v176 = *(this + 98);
  if (v176 && (v177 = *(v176 + 8)) != 0)
  {
    v1187 = CMMsl::BioMotionPredictedPose::hash_value(v177);
  }

  else
  {
    v1187 = 0;
  }

  v178 = *(this + 348);
  if (v178 && (v179 = *(v178 + 8)) != 0)
  {
    v1186 = CMMsl::Pressure::hash_value(v179);
  }

  else
  {
    v1186 = 0;
  }

  v180 = *(this + 450);
  if (v180)
  {
    v1185 = CMMsl::VO2MaxOutput::hash_value(v180);
  }

  else
  {
    v1185 = 0;
  }

  v181 = *(this + 264);
  if (v181)
  {
    v1184 = CMMsl::MagneticAccessoryType1::hash_value(v181);
  }

  else
  {
    v1184 = 0;
  }

  v182 = *(this + 265);
  if (v182)
  {
    v1183 = ((*(v182 + 12) << 31 >> 31) & *(v182 + 8));
  }

  else
  {
    v1183 = 0;
  }

  v183 = *(this + 347);
  if (v183)
  {
    v1182 = CMMsl::PressureCalibration::hash_value(v183);
  }

  else
  {
    v1182 = 0;
  }

  v184 = *(this + 480);
  if (v184 && (v185 = *(v184 + 8)) != 0)
  {
    v1181 = CMMsl::Magnetometer::hash_value(v185);
  }

  else
  {
    v1181 = 0;
  }

  v186 = *(this + 471);
  if (v186 && (v187 = *(v186 + 8)) != 0)
  {
    v1180 = CMMsl::CompassCalibration::hash_value(v187);
  }

  else
  {
    v1180 = 0;
  }

  if (*(this + 363))
  {
    v1179 = PBHashBytes();
  }

  else
  {
    v1179 = 0;
  }

  v188 = *(this + 82);
  if (v188)
  {
    v1178 = CMMsl::CV3DPredictedPose::hash_value(v188);
  }

  else
  {
    v1178 = 0;
  }

  v189 = *(this + 67);
  if (v189)
  {
    v1177 = CMMsl::BioMotionLinkLengthFitParameters::hash_value(v189);
  }

  else
  {
    v1177 = 0;
  }

  v190 = *(this + 68);
  if (v190)
  {
    v1176 = CMMsl::BioMotionOnlineLinkLengthUpdate::hash_value(v190);
  }

  else
  {
    v1176 = 0;
  }

  v191 = *(this + 294);
  if (v191)
  {
    v1175 = CMMsl::ODTPose::hash_value(v191);
  }

  else
  {
    v1175 = 0;
  }

  v192 = *(this + 329);
  if (v192)
  {
    v193 = *(v192 + 24);
    v194 = *(v192 + 16);
    v195 = *(v192 + 8) == 0.0 || (v193 & 1) == 0;
    v196 = *(v192 + 8);
    if (v195)
    {
      v196 = 0;
    }

    v197 = v193 & 2;
    v198 = v194 == 0.0 || v197 == 0;
    v199 = v194;
    if (v198)
    {
      v199 = 0.0;
    }

    v1174 = *&v199 ^ v196;
  }

  else
  {
    v1174 = 0;
  }

  v200 = *(this + 330);
  if (v200)
  {
    v1173 = CMMsl::PencilTouch::hash_value(v200);
  }

  else
  {
    v1173 = 0;
  }

  v201 = *(this + 54);
  if (v201)
  {
    v202 = *(v201 + 20);
    v203 = *(v201 + 8) == 0.0 || (v202 & 1) == 0;
    v204 = *(v201 + 8);
    if (v203)
    {
      v204 = 0;
    }

    v205 = v202 & 2;
    v206 = *(v201 + 16);
    v207 = v206 == 0.0 || v205 == 0;
    v208 = LODWORD(v206);
    if (v207)
    {
      v208 = 0;
    }

    v1172 = v208 ^ v204;
  }

  else
  {
    v1172 = 0;
  }

  v209 = *(this + 426);
  if (v209)
  {
    v210 = *(v209 + 20);
    v211 = *(v209 + 16);
    if ((v210 & 2) == 0)
    {
      v211 = 0;
    }

    v212 = *(v209 + 8);
    if ((v210 & 1) == 0)
    {
      v212 = 0;
    }

    v1171 = v212 ^ v211;
  }

  else
  {
    v1171 = 0;
  }

  v213 = *(this + 48);
  if (v213 && (v214 = *(v213 + 8)) != 0)
  {
    v1170 = CMMsl::CV3DSLAMState::hash_value(v214);
  }

  else
  {
    v1170 = 0;
  }

  v215 = *(this + 65);
  if (v215 && (v216 = *(v215 + 8)) != 0)
  {
    v1169 = CMMsl::BioMotionAnchor::hash_value(v216);
  }

  else
  {
    v1169 = 0;
  }

  v217 = *(this + 71);
  if (v217 && (v218 = *(v217 + 8)) != 0)
  {
    v1168 = CMMsl::PropagatedAnchor::hash_value(v218);
  }

  else
  {
    v1168 = 0;
  }

  v219 = *(this + 454);
  if (v219)
  {
    v1167 = CMMsl::WalkingSteadinessClassification::hash_value(v219);
  }

  else
  {
    v1167 = 0;
  }

  v220 = *(this + 406);
  if (v220)
  {
    v1166 = CMMsl::SteadinessModelResult::hash_value(v220);
  }

  else
  {
    v1166 = 0;
  }

  v221 = *(this + 401);
  if (v221)
  {
    v1165 = CMMsl::SteadinessEvent::hash_value(v221);
  }

  else
  {
    v1165 = 0;
  }

  v222 = *(this + 404);
  if (v222)
  {
    v1164 = CMMsl::SteadinessModelGaitBaselineFeatures::hash_value(v222);
  }

  else
  {
    v1164 = 0;
  }

  v223 = *(this + 403);
  if (v223)
  {
    v1163 = CMMsl::SteadinessModelContinuousWalkingFeatures::hash_value(v223);
  }

  else
  {
    v1163 = 0;
  }

  v224 = *(this + 407);
  if (v224)
  {
    v1162 = CMMsl::SteadinessModelTemporalDispersionFeatures::hash_value(v224);
  }

  else
  {
    v1162 = 0;
  }

  v225 = *(this + 408);
  if (v225)
  {
    v1161 = CMMsl::SteadinessModelTemporalEntropyFeatures::hash_value(v225);
  }

  else
  {
    v1161 = 0;
  }

  v226 = *(this + 402);
  if (v226)
  {
    v1160 = CMMsl::SteadinessModelBalanceFeatures::hash_value(v226);
  }

  else
  {
    v1160 = 0;
  }

  v227 = *(this + 268);
  if (v227)
  {
    v1159 = CMMsl::MagnetometerReset::hash_value(v227);
  }

  else
  {
    v1159 = 0;
  }

  v228 = *(this + 484);
  if (v228 && (v229 = *(v228 + 8)) != 0)
  {
    v1158 = CMMsl::WatchOnWristState::hash_value(v229);
  }

  else
  {
    v1158 = 0;
  }

  v230 = *(this + 256);
  if (v230)
  {
    v1157 = CMMsl::LiftToWakeOnHeadStatus::hash_value(v230);
  }

  else
  {
    v1157 = 0;
  }

  v231 = *(this + 29);
  if (v231)
  {
    v1156 = CMMsl::AccessoryMagnetometer::hash_value(v231);
  }

  else
  {
    v1156 = 0;
  }

  v232 = *(this + 411);
  if (v232)
  {
    v1155 = CMMsl::StepCountEntryAddition::hash_value(v232);
  }

  else
  {
    v1155 = 0;
  }

  v233 = *(this + 412);
  if (v233)
  {
    v1154 = CMMsl::StepDistanceFusionResult::hash_value(v233);
  }

  else
  {
    v1154 = 0;
  }

  v234 = *(this + 394);
  if (!v234 || (v235 = *(v234 + 8), v236 = *(v234 + 16), v235 == v236))
  {
    v237 = 0;
  }

  else
  {
    v237 = 0;
    do
    {
      v238 = *v235++;
      v237 ^= CMMsl::SkeletonJoint::hash_value(v238);
    }

    while (v235 != v236);
  }

  v239 = *(this + 104);
  if (v239)
  {
    v1153 = CMMsl::CVWatchCalories::hash_value(v239);
  }

  else
  {
    v1153 = 0;
  }

  v240 = *(this + 125);
  if (v240)
  {
    v1152 = CMMsl::FaceBlendShapeCoefficientsSample::hash_value(v240);
  }

  else
  {
    v1152 = 0;
  }

  v241 = *(this + 64);
  if (v241)
  {
    v1151 = CMMsl::BatteryStatus::hash_value(v241);
  }

  else
  {
    v1151 = 0;
  }

  v242 = *(this + 260);
  if (v242)
  {
    v1150 = ((*(v242 + 12) << 31 >> 31) & *(v242 + 8));
  }

  else
  {
    v1150 = 0;
  }

  v243 = *(this + 63);
  if (v243)
  {
    v1149 = ((*(v243 + 12) << 31 >> 31) & *(v243 + 8));
  }

  else
  {
    v1149 = 0;
  }

  v244 = *(this + 338);
  if (v244)
  {
    v245 = *(v244 + 16);
    v246 = *(v244 + 8);
    if ((v245 & 1) == 0)
    {
      v246 = 0;
    }

    v1148 = v246;
  }

  else
  {
    v1148 = 0;
  }

  v247 = *(this + 151);
  if (v247)
  {
    v1147 = CMMsl::FocusModes::hash_value(v247);
  }

  else
  {
    v1147 = 0;
  }

  v248 = *(this + 111);
  if (v248)
  {
    v1146 = ((*(v248 + 12) << 31 >> 31) & *(v248 + 8));
  }

  else
  {
    v1146 = 0;
  }

  v249 = *(this + 4);
  if (v249 && (v250 = *(v249 + 8)) != 0)
  {
    v1145 = sub_25AD28AE4(v250);
  }

  else
  {
    v1145 = 0;
  }

  v251 = *(this + 45);
  if (v251)
  {
    v1144 = CMMsl::AltimeterKF::hash_value(v251);
  }

  else
  {
    v1144 = 0;
  }

  v252 = *(this + 257);
  if (v252)
  {
    v1143 = CMMsl::LiftToWakeState::hash_value(v252);
  }

  else
  {
    v1143 = 0;
  }

  v253 = *(this + 440);
  if (v253)
  {
    v1142 = CMMsl::ViewObstructedState::hash_value(v253);
  }

  else
  {
    v1142 = 0;
  }

  v254 = *(this + 374);
  if (v254)
  {
    v1141 = CMMsl::RunningFormMetrics::hash_value(v254);
  }

  else
  {
    v1141 = 0;
  }

  v1140 = sub_25AC0BCA0(*(this + 489));
  v255 = *(this + 488);
  if (v255)
  {
    v1139 = sub_25AC0BCA0(*(v255 + 8));
  }

  else
  {
    v1139 = 0;
  }

  v256 = *(this + 50);
  if (v256)
  {
    v1138 = CMMsl::ARKitWorldPose::hash_value(v256);
  }

  else
  {
    v1138 = 0;
  }

  v257 = *(this + 311);
  if (v257)
  {
    v258 = *(v257 + 16);
    if ((*(v257 + 20) & 2) == 0)
    {
      v258 = 0;
    }

    v259 = *(v257 + 8) == 0.0 || (*(v257 + 20) & 1) == 0;
    v260 = *(v257 + 8);
    if (v259)
    {
      v260 = 0;
    }

    v1137 = v260 ^ v258;
  }

  else
  {
    v1137 = 0;
  }

  v261 = *(this + 333);
  if (v261)
  {
    v1136 = CMMsl::PocketDetectionPacket::hash_value(v261);
  }

  else
  {
    v1136 = 0;
  }

  v262 = *(this + 255);
  if (v262)
  {
    v1135 = CMMsl::LiftToWakeFeaturesNeo::hash_value(v262);
  }

  else
  {
    v1135 = 0;
  }

  v263 = *(this + 258);
  if (v263)
  {
    v1134 = CMMsl::LiftToWakeStatusNeo::hash_value(v263);
  }

  else
  {
    v1134 = 0;
  }

  v264 = *(this + 375);
  if (v264)
  {
    v1133 = CMMsl::RunningPower::hash_value(v264);
  }

  else
  {
    v1133 = 0;
  }

  v265 = *(this + 57);
  if (v265)
  {
    v1132 = CMMsl::BasebandCompassCoex::hash_value(v265);
  }

  else
  {
    v1132 = 0;
  }

  v266 = *(this + 58);
  if (v266)
  {
    v1131 = CMMsl::BasebandCompassCoexConstraints::hash_value(v266);
  }

  else
  {
    v1131 = 0;
  }

  v267 = *(this + 277);
  if (v267)
  {
    v1130 = CMMsl::MotionContextActivity::hash_value(v267);
  }

  else
  {
    v1130 = 0;
  }

  v268 = *(this + 297);
  if (v268)
  {
    v269 = *(v268 + 12);
    v270 = *(v268 + 8);
    if ((v269 & 1) == 0)
    {
      v270 = 0;
    }

    v1129 = v270;
  }

  else
  {
    v1129 = 0;
  }

  v271 = *(this + 12);
  if (v271)
  {
    v1128 = CMMsl::AccelTNBFrame::hash_value(v271);
  }

  else
  {
    v1128 = 0;
  }

  v272 = *(this + 117);
  if (v272)
  {
    v1127 = CMMsl::DoTEstimatorWithTNB::hash_value(v272);
  }

  else
  {
    v1127 = 0;
  }

  v273 = *(this + 312);
  if (v273)
  {
    v1126 = CMMsl::PdrMLModelOutput::hash_value(v273);
  }

  else
  {
    v1126 = 0;
  }

  v274 = *(this + 158);
  if (v274)
  {
    v1125 = CMMsl::GaitEventsModelOutput::hash_value(v274);
  }

  else
  {
    v1125 = 0;
  }

  v275 = *(this + 159);
  if (v275)
  {
    v1124 = CMMsl::GaitEventsStrideAggregation::hash_value(v275);
  }

  else
  {
    v1124 = 0;
  }

  v276 = *(this + 157);
  if (v276)
  {
    v1123 = CMMsl::GaitEventsHKResult::hash_value(v276);
  }

  else
  {
    v1123 = 0;
  }

  v277 = *(this + 126);
  if (v277)
  {
    v278 = *(v277 + 20);
    v279 = *(v277 + 8) == 0.0 || (v278 & 1) == 0;
    v280 = *(v277 + 8);
    if (v279)
    {
      v280 = 0;
    }

    v1122 = v280 ^ (*(v277 + 16) & (v278 << 30 >> 31));
  }

  else
  {
    v1122 = 0;
  }

  v281 = *(this + 469);
  if (v281)
  {
    v1121 = CMMsl::WorkoutRecorderAveragedALSData::hash_value(v281);
  }

  else
  {
    v1121 = 0;
  }

  v282 = *(this + 419);
  if (v282)
  {
    v1120 = CMMsl::StrideCalEntry::hash_value(v282);
  }

  else
  {
    v1120 = 0;
  }

  v283 = *(this + 377);
  if (v283)
  {
    v1119 = CMMsl::RunningSpeedKFResult::hash_value(v283);
  }

  else
  {
    v1119 = 0;
  }

  v284 = *(this + 357);
  if (v284)
  {
    v1118 = CMMsl::ProxPDP::hash_value(v284);
  }

  else
  {
    v1118 = 0;
  }

  v285 = *(this + 250);
  if (v285)
  {
    v1117 = CMMsl::KeyboardMotionFeatures::hash_value(v285);
  }

  else
  {
    v1117 = 0;
  }

  v286 = *(this + 251);
  if (v286)
  {
    v287 = *(v286 + 20);
    v288 = *(v286 + 8) == 0.0 || (v287 & 1) == 0;
    v289 = *(v286 + 8);
    if (v288)
    {
      v289 = 0;
    }

    v290 = *(v286 + 16);
    if ((v287 & 2) == 0)
    {
      v290 = 0;
    }

    v1116 = v290 ^ v289;
  }

  else
  {
    v1116 = 0;
  }

  v291 = *(this + 43);
  if (v291)
  {
    v292 = *(v291 + 8);
    if ((*(v291 + 20) & 1) == 0)
    {
      v292 = 0;
    }

    v293 = *(v291 + 16);
    v294 = v293 == 0.0 || (*(v291 + 20) & 2) == 0;
    v295 = LODWORD(v293);
    if (v294)
    {
      v295 = 0;
    }

    v1115 = v295 ^ v292;
  }

  else
  {
    v1115 = 0;
  }

  v296 = *(this + 249);
  if (v296)
  {
    v297 = *(v296 + 20);
    v298 = *(v296 + 8) == 0.0 || (v297 & 1) == 0;
    v299 = *(v296 + 8);
    if (v298)
    {
      v299 = 0;
    }

    v1114 = v299 ^ (*(v296 + 16) & (v297 << 30 >> 31));
  }

  else
  {
    v1114 = 0;
  }

  v300 = *(this + 451);
  if (v300)
  {
    v1113 = CMMsl::WakeGestureNotification::hash_value(v300);
  }

  else
  {
    v1113 = 0;
  }

  v301 = *(this + 355);
  if (v301)
  {
    v1112 = CMMsl::ProxBaselineEstimatorState::hash_value(v301);
  }

  else
  {
    v1112 = 0;
  }

  v302 = *(this + 60);
  if (v302)
  {
    v1111 = CMMsl::BaselineResetCheck::hash_value(v302);
  }

  else
  {
    v1111 = 0;
  }

  v303 = *(this + 370);
  if (v303)
  {
    v1110 = CMMsl::RhythmicGnssOperatorStatus::hash_value(v303);
  }

  else
  {
    v1110 = 0;
  }

  v304 = *(this + 252);
  if (v304)
  {
    v305 = *(v304 + 20);
    v306 = *(v304 + 8) == 0.0 || (v305 & 1) == 0;
    v307 = *(v304 + 8);
    if (v306)
    {
      v307 = 0;
    }

    v1109 = v307 ^ (*(v304 + 16) & (v305 << 30 >> 31));
  }

  else
  {
    v1109 = 0;
  }

  v308 = *(this + 248);
  if (v308)
  {
    v309 = *(v308 + 20);
    v310 = *(v308 + 8) == 0.0 || (v309 & 1) == 0;
    v311 = *(v308 + 8);
    if (v310)
    {
      v311 = 0;
    }

    v1108 = v311 ^ (*(v308 + 16) & (v309 << 30 >> 31));
  }

  else
  {
    v1108 = 0;
  }

  v312 = *(this + 56);
  if (v312)
  {
    v1107 = CMMsl::BacklightState::hash_value(v312);
  }

  else
  {
    v1107 = 0;
  }

  v313 = *(this + 61);
  if (v313)
  {
    v314 = *(v313 + 8);
    if (v314)
    {
      v314 = CMMsl::MotionGPSLocation::hash_value(v314);
    }

    if (*(v313 + 20))
    {
      v315 = *(v313 + 16);
    }

    else
    {
      v315 = 0;
    }

    v1106 = v315 ^ v314;
  }

  else
  {
    v1106 = 0;
  }

  v316 = *(this + 192);
  if (v316)
  {
    v1105 = CMMsl::HeartRateReference::hash_value(v316);
  }

  else
  {
    v1105 = 0;
  }

  v317 = *(this + 393);
  if (v317)
  {
    v1104 = CMMsl::Skeleton2D::hash_value(v317);
  }

  else
  {
    v1104 = 0;
  }

  v318 = *(this + 396);
  if (v318)
  {
    v1103 = CMMsl::Skeleton3DRetargeted::hash_value(v318);
  }

  else
  {
    v1103 = 0;
  }

  v319 = *(this + 395);
  if (v319)
  {
    v1102 = CMMsl::Skeleton3DLifted::hash_value(v319);
  }

  else
  {
    v1102 = 0;
  }

  v320 = *(this + 143);
  if (v320)
  {
    v1101 = CMMsl::FitnessMachineSample::hash_value(v320);
  }

  else
  {
    v1101 = 0;
  }

  v321 = *(this + 458);
  if (v321)
  {
    v1100 = CMMsl::WatchHeartRateData::hash_value(v321);
  }

  else
  {
    v1100 = 0;
  }

  v322 = *(this + 129);
  if (v322)
  {
    v1099 = CMMsl::FacePoseSynchronized::hash_value(v322);
  }

  else
  {
    v1099 = 0;
  }

  v323 = *(this + 455);
  if (v323)
  {
    v1098 = CMMsl::WatchActiveCalories::hash_value(v323);
  }

  else
  {
    v1098 = 0;
  }

  v324 = *(this + 456);
  if (v324)
  {
    v1097 = CMMsl::WatchBasalCalories::hash_value(v324);
  }

  else
  {
    v1097 = 0;
  }

  v325 = *(this + 429);
  if (v325)
  {
    v1096 = CMMsl::TrackRunData::hash_value(v325);
  }

  else
  {
    v1096 = 0;
  }

  v326 = *(this + 163);
  if (v326)
  {
    v1095 = CMMsl::GnssAvailabilityPredictorData::hash_value(v326);
  }

  else
  {
    v1095 = 0;
  }

  v327 = *(this + 164);
  if (v327)
  {
    v1094 = CMMsl::GnssLeechLocationData::hash_value(v327);
  }

  else
  {
    v1094 = 0;
  }

  v328 = *(this + 269);
  if (v328)
  {
    v1093 = CMMsl::MapsRouteHintData::hash_value(v328);
  }

  else
  {
    v1093 = 0;
  }

  v329 = *(this + 142);
  if (v329)
  {
    v1092 = CMMsl::FitnessMachineData::hash_value(v329);
  }

  else
  {
    v1092 = 0;
  }

  v330 = *(this + 474);
  if (v330 && (v331 = *(v330 + 8)) != 0)
  {
    v1091 = CMMsl::FitnessMachineData::hash_value(v331);
  }

  else
  {
    v1091 = 0;
  }

  v332 = *(this + 17);
  if (v332)
  {
    v1090 = CMMsl::AccessoryActivityStateUpdate::hash_value(v332);
  }

  else
  {
    v1090 = 0;
  }

  v333 = *(this + 321);
  if (v333)
  {
    v1089 = CMMsl::PedestrianFenceExit::hash_value(v333);
  }

  else
  {
    v1089 = 0;
  }

  v334 = *(this + 206);
  if (v334)
  {
    v1088 = CMMsl::InertialOdometry::hash_value(v334);
  }

  else
  {
    v1088 = 0;
  }

  v335 = *(this + 331);
  if (v335)
  {
    v1087 = CMMsl::PhysicalEffortInput::hash_value(v335);
  }

  else
  {
    v1087 = 0;
  }

  v336 = *(this + 332);
  if (v336)
  {
    v1086 = CMMsl::PhysicalEffortSample::hash_value(v336);
  }

  else
  {
    v1086 = 0;
  }

  v337 = *(this + 320);
  if (v337)
  {
    v1085 = CMMsl::PedestrianCalorieModelDebugging::hash_value(v337);
  }

  else
  {
    v1085 = 0;
  }

  v338 = *(this + 122);
  if (v338)
  {
    v1084 = CMMsl::ElevationThreshold::hash_value(v338);
  }

  else
  {
    v1084 = 0;
  }

  v339 = *(this + 207);
  if (v339)
  {
    v1083 = CMMsl::InitialHistoricalMeanSeaLevelPressure::hash_value(v339);
  }

  else
  {
    v1083 = 0;
  }

  v340 = *(this + 462);
  if (v340)
  {
    v341 = vbic_s8(v340[1], vceqz_s32(vand_s8(vdup_n_s32(v340[2].u8[0]), 0x200000001)));
    v1082 = (v341.i32[0] ^ v341.i32[1]);
  }

  else
  {
    v1082 = 0;
  }

  v342 = *(this + 324);
  if (v342)
  {
    v1081 = CMMsl::PencilDeviceMotion::hash_value(v342);
  }

  else
  {
    v1081 = 0;
  }

  v343 = *(this + 327);
  if (v343)
  {
    v1080 = CMMsl::PencilFusionResult::hash_value(v343);
  }

  else
  {
    v1080 = 0;
  }

  v344 = *(this + 186);
  if (v344)
  {
    v345 = *(v344 + 20);
    v346 = *(v344 + 8) == 0.0 || (v345 & 1) == 0;
    v347 = *(v344 + 8);
    if (v346)
    {
      v347 = 0;
    }

    v1079 = v347 ^ (*(v344 + 16) & (v345 << 30 >> 31));
  }

  else
  {
    v1079 = 0;
  }

  v348 = *(this + 405);
  if (v348)
  {
    v1078 = CMMsl::SteadinessModelHarmonicFeatures::hash_value(v348);
  }

  else
  {
    v1078 = 0;
  }

  v349 = *(this + 326);
  if (v349)
  {
    v1077 = CMMsl::PencilFusionReplayResult::hash_value(v349);
  }

  else
  {
    v1077 = 0;
  }

  v350 = *(this + 273);
  if (v350)
  {
    v1076 = CMMsl::MobilitySmoothedGaitMetrics::hash_value(v350);
  }

  else
  {
    v1076 = 0;
  }

  v351 = *(this + 457);
  if (v351)
  {
    v352 = *(v351 + 24);
    v353 = *(v351 + 16) == 0.0 || (v352 & 2) == 0;
    v354 = *(v351 + 16);
    if (v353)
    {
      v354 = 0;
    }

    v355 = *(v351 + 8);
    if ((v352 & 1) == 0)
    {
      v355 = 0;
    }

    v1075 = v354 ^ v355;
  }

  else
  {
    v1075 = 0;
  }

  v356 = *(this + 26);
  if (v356)
  {
    v1074 = CMMsl::AccessoryHeartRate::hash_value(v356);
  }

  else
  {
    v1074 = 0;
  }

  v357 = *(this + 31);
  if (v357)
  {
    v1073 = CMMsl::AccessoryPPG::hash_value(v357);
  }

  else
  {
    v1073 = 0;
  }

  v358 = *(this + 281);
  if (v358)
  {
    v1072 = CMMsl::MotionLoiAltitudeData::hash_value(v358);
  }

  else
  {
    v1072 = 0;
  }

  v359 = *(this + 109);
  if (v359)
  {
    v360 = *(v359 + 20);
    v361 = *(v359 + 8) == 0.0 || (v360 & 1) == 0;
    v362 = *(v359 + 8);
    if (v361)
    {
      v362 = 0;
    }

    v363 = *(v359 + 16);
    if ((v360 & 2) == 0)
    {
      v363 = 0;
    }

    v1071 = v363 ^ v362;
  }

  else
  {
    v1071 = 0;
  }

  v364 = *(this + 336);
  if (v364)
  {
    v1070 = CMMsl::PostureJoint::hash_value(v364);
  }

  else
  {
    v1070 = 0;
  }

  v365 = *(this + 337);
  if (!v365 || (v367 = *(v365 + 8), v366 = *(v365 + 16), v367 == v366))
  {
    v368 = 0;
  }

  else
  {
    v368 = 0;
    do
    {
      v369 = *v367++;
      v368 ^= CMMsl::PostureJoint::hash_value(v369);
    }

    while (v367 != v366);
  }

  v370 = *(this + 195);
  if (v370)
  {
    v371 = *(v370 + 20);
    v372 = *(v370 + 8) == 0.0 || (v371 & 1) == 0;
    v373 = *(v370 + 8);
    if (v372)
    {
      v373 = 0;
    }

    v1069 = v373 ^ (*(v370 + 16) & (v371 << 30 >> 31));
  }

  else
  {
    v1069 = 0;
  }

  v374 = *(this + 473);
  if (v374 && (v375 = *(v374 + 8)) != 0)
  {
    v376 = *(v375 + 20);
    v377 = *(v375 + 8) == 0.0 || (v376 & 1) == 0;
    v378 = *(v375 + 8);
    if (v377)
    {
      v378 = 0;
    }

    v1068 = v378 ^ (*(v375 + 16) & (v376 << 30 >> 31));
  }

  else
  {
    v1068 = 0;
  }

  v379 = *(this + 416);
  if (v379 && (v380 = *(v379 + 8)) != 0)
  {
    v1067 = CMMsl::OnsetHeartRateData::hash_value(v380);
  }

  else
  {
    v1067 = 0;
  }

  v381 = *(this + 291);
  if (v381)
  {
    v1066 = CMMsl::NormalGammaCalibrationBin::hash_value(v381);
  }

  else
  {
    v1066 = 0;
  }

  v382 = *(this + 272);
  if (v382)
  {
    v383 = *(v382 + 24);
    v384 = *(v382 + 8);
    v385 = *(v382 + 16) == 0.0 || (v383 & 2) == 0;
    v386 = *(v382 + 16);
    if (v385)
    {
      v386 = 0;
    }

    v387 = v383 & 1;
    v388 = v384 == 0.0 || v387 == 0;
    v389 = v384;
    if (v388)
    {
      v389 = 0.0;
    }

    v1065 = *&v389 ^ v386;
  }

  else
  {
    v1065 = 0;
  }

  v390 = *(this + 119);
  if (v390)
  {
    v1064 = CMMsl::ElevationBatchProcessingTimestamps::hash_value(v390);
  }

  else
  {
    v1064 = 0;
  }

  v391 = *(this + 90);
  if (v391)
  {
    v1063 = CMMsl::CompanionStepCountElevation::hash_value(v391);
  }

  else
  {
    v1063 = 0;
  }

  v392 = *(this + 154);
  if (v392)
  {
    v1062 = CMMsl::GPSCalibrationBin::hash_value(v392);
  }

  else
  {
    v1062 = 0;
  }

  v393 = *(this + 27);
  if (v393)
  {
    v1061 = CMMsl::AccessoryInEarDetection::hash_value(v393);
  }

  else
  {
    v1061 = 0;
  }

  v394 = *(this + 18);
  if (v394)
  {
    v1060 = CMMsl::AccessoryBatchedPPG::hash_value(v394);
  }

  else
  {
    v1060 = 0;
  }

  v395 = *(this + 62);
  if (v395)
  {
    v1059 = CMMsl::BatchedPPGData::hash_value(v395);
  }

  else
  {
    v1059 = 0;
  }

  v396 = *(this + 468);
  if (v396 && (v397 = *(v396 + 8)) != 0)
  {
    v1058 = CMMsl::AudioAccessoryDeviceMotion::hash_value(v397);
  }

  else
  {
    v1058 = 0;
  }

  v398 = *(this + 467);
  if (v398 && (v399 = *(v398 + 8)) != 0)
  {
    v1057 = CMMsl::AccessoryDeviceMotionConfig::hash_value(v399);
  }

  else
  {
    v1057 = 0;
  }

  v400 = *(this + 193);
  if (v400)
  {
    v1056 = CMMsl::HeartRateSourceDevice::hash_value(v400);
  }

  else
  {
    v1056 = 0;
  }

  v401 = *(this + 2);
  if (v401 && (v402 = *(v401 + 8)) != 0)
  {
    v1055 = CMMsl::AccessoryHeartRate::hash_value(v402);
  }

  else
  {
    v1055 = 0;
  }

  v403 = *(this + 415);
  if (v403 && (v404 = *(v403 + 8)) != 0)
  {
    v1054 = CMMsl::OnsetHeartRateData::hash_value(v404);
  }

  else
  {
    v1054 = 0;
  }

  v405 = *(this + 417);
  if (v405 && (v406 = *(v405 + 8)) != 0)
  {
    v1053 = CMMsl::OnsetHeartRateData::hash_value(v406);
  }

  else
  {
    v1053 = 0;
  }

  v407 = *(this + 51);
  if (v407 && (v408 = *(v407 + 8)) != 0)
  {
    v1052 = CMMsl::AudioAccessoryDeviceMotion::hash_value(v408);
  }

  else
  {
    v1052 = 0;
  }

  v409 = *(this + 1);
  if (v409 && (v410 = *(v409 + 8)) != 0)
  {
    v1051 = CMMsl::AccessoryDeviceMotionConfig::hash_value(v410);
  }

  else
  {
    v1051 = 0;
  }

  v411 = *(this + 478);
  if (v411 && (v412 = *(v411 + 8)) != 0)
  {
    v1050 = CMMsl::HeartRateSourceDevice::hash_value(v412);
  }

  else
  {
    v1050 = 0;
  }

  v413 = *(this + 479);
  if (v413 && (v414 = *(v413 + 8)) != 0)
  {
    v1049 = CMMsl::OnsetHeartRateData::hash_value(v414);
  }

  else
  {
    v1049 = 0;
  }

  v415 = *(this + 477);
  if (v415 && (v416 = *(v415 + 8)) != 0)
  {
    v1048 = CMMsl::AccessoryHeartRate::hash_value(v416);
  }

  else
  {
    v1048 = 0;
  }

  v417 = *(this + 430);
  if (v417)
  {
    v418 = *(v417 + 16);
    if (v418)
    {
      v418 = CMMsl::Accel::hash_value(v418);
    }

    if (*(v417 + 24))
    {
      v419 = *(v417 + 8);
    }

    else
    {
      v419 = 0;
    }

    v1047 = v419 ^ v418;
  }

  else
  {
    v1047 = 0;
  }

  v420 = *(this + 5);
  if (v420)
  {
    v1046 = CMMsl::Accel::hash_value(v420);
  }

  else
  {
    v1046 = 0;
  }

  v421 = *(this + 7);
  if (v421)
  {
    v1045 = CMMsl::AccelBatch::hash_value(v421);
  }

  else
  {
    v1045 = 0;
  }

  v422 = *(this + 11);
  if (v422 && (v423 = *(v422 + 8)) != 0)
  {
    v1044 = CMMsl::Accel::hash_value(v423);
  }

  else
  {
    v1044 = 0;
  }

  v424 = *(this + 9);
  if (v424 && (v425 = *(v424 + 8)) != 0)
  {
    v1043 = CMMsl::Accel::hash_value(v425);
  }

  else
  {
    v1043 = 0;
  }

  v426 = *(this + 167);
  if (v426)
  {
    v1042 = CMMsl::Gyro::hash_value(v426);
  }

  else
  {
    v1042 = 0;
  }

  v427 = *(this + 183);
  if (v427)
  {
    v1041 = CMMsl::GyroOscarEmu::hash_value(v427);
  }

  else
  {
    v1041 = 0;
  }

  v428 = *(this + 185);
  if (v428)
  {
    v429 = *(v428 + 16);
    v430 = *(v428 + 12);
    v431 = v430 == 0.0 || (v429 & 2) == 0;
    v432 = LODWORD(v430);
    if (v431)
    {
      v432 = 0;
    }

    v433 = *(v428 + 8);
    if ((v429 & 1) == 0)
    {
      v433 = 0;
    }

    v1040 = v433 ^ v432;
  }

  else
  {
    v1040 = 0;
  }

  v434 = *(this + 168);
  if (v434)
  {
    v1039 = CMMsl::GyroBiasAndVariance::hash_value(v434);
  }

  else
  {
    v1039 = 0;
  }

  v435 = *(this + 173);
  if (v435)
  {
    v1038 = CMMsl::GyroBiasFit::hash_value(v435);
  }

  else
  {
    v1038 = 0;
  }

  v436 = *(this + 180);
  if (v436)
  {
    v437 = *(v436 + 8);
    v438 = v437 == 0.0 || (*(v436 + 12) & 1) == 0;
    v439 = LODWORD(v437);
    if (v438)
    {
      v439 = 0;
    }

    v1037 = v439;
  }

  else
  {
    v1037 = 0;
  }

  v440 = *(this + 266);
  if (v440)
  {
    v1036 = CMMsl::Magnetometer::hash_value(v440);
  }

  else
  {
    v1036 = 0;
  }

  v441 = *(this + 91);
  if (v441)
  {
    v1035 = CMMsl::Compass::hash_value(v441);
  }

  else
  {
    v1035 = 0;
  }

  v442 = *(this + 92);
  if (v442)
  {
    v443 = *(v442 + 20);
    v444 = *(v442 + 8) == 0.0 || (v443 & 1) == 0;
    v445 = *(v442 + 8);
    if (v444)
    {
      v445 = 0;
    }

    v446 = *(v442 + 16);
    if ((v443 & 2) == 0)
    {
      v446 = 0;
    }

    v1034 = v446 ^ v445;
  }

  else
  {
    v1034 = 0;
  }

  v447 = *(this + 178);
  if (v447)
  {
    v1033 = CMMsl::GyroCompass::hash_value(v447);
  }

  else
  {
    v1033 = 0;
  }

  v448 = *(this + 93);
  if (v448)
  {
    v1032 = CMMsl::CompassCalibration::hash_value(v448);
  }

  else
  {
    v1032 = 0;
  }

  v449 = *(this + 346);
  if (v449)
  {
    v1031 = CMMsl::Pressure::hash_value(v449);
  }

  else
  {
    v1031 = 0;
  }

  v450 = *(this + 353);
  if (v450 && (v451 = *(v450 + 8)) != 0)
  {
    v1030 = CMMsl::Pressure::hash_value(v451);
  }

  else
  {
    v1030 = 0;
  }

  v452 = *(this + 349);
  if (v452 && (v453 = *(v452 + 8)) != 0)
  {
    v1029 = CMMsl::Pressure::hash_value(v453);
  }

  else
  {
    v1029 = 0;
  }

  v454 = *(this + 354);
  if (v454)
  {
    v455 = *(v454 + 20);
    v456 = *(v454 + 8) == 0.0 || (v455 & 1) == 0;
    v457 = *(v454 + 8);
    if (v456)
    {
      v457 = 0;
    }

    v458 = *(v454 + 16);
    if ((v455 & 2) == 0)
    {
      v458 = 0;
    }

    v1028 = v458 ^ v457;
  }

  else
  {
    v1028 = 0;
  }

  v459 = *(this + 428);
  if (v459)
  {
    v460 = *(v459 + 20);
    v461 = *(v459 + 8) == 0.0 || (v460 & 1) == 0;
    v462 = *(v459 + 8);
    if (v461)
    {
      v462 = 0;
    }

    v1027 = v462 ^ (*(v459 + 16) & (v460 << 30 >> 31));
  }

  else
  {
    v1027 = 0;
  }

  v463 = *(this + 105);
  if (v463)
  {
    v1026 = CMMsl::DeviceMotion::hash_value(v463);
  }

  else
  {
    v1026 = 0;
  }

  v464 = *(this + 283);
  if (v464)
  {
    v1025 = CMMsl::MotionStateUpdate::hash_value(v464);
  }

  else
  {
    v1025 = 0;
  }

  v465 = *(this + 10);
  if (v465)
  {
    v1024 = CMMsl::AccelGps::hash_value(v465);
  }

  else
  {
    v1024 = 0;
  }

  v466 = *(this + 182);
  if (v466)
  {
    v1023 = CMMsl::GyroGps::hash_value(v466);
  }

  else
  {
    v1023 = 0;
  }

  v467 = *(this + 352);
  if (v467 && (v468 = *(v467 + 8)) != 0)
  {
    v1022 = CMMsl::Pressure::hash_value(v468);
  }

  else
  {
    v1022 = 0;
  }

  v469 = *(this + 55);
  if (v469)
  {
    v1021 = CMMsl::BTConnection::hash_value(v469);
  }

  else
  {
    v1021 = 0;
  }

  v470 = *(this + 386);
  if (v470)
  {
    v471 = *(v470 + 20);
    v472 = *(v470 + 8) == 0.0 || (v471 & 1) == 0;
    v473 = *(v470 + 8);
    if (v472)
    {
      v473 = 0;
    }

    v474 = *(v470 + 16);
    if ((v471 & 2) == 0)
    {
      v474 = 0;
    }

    v1020 = v474 ^ v473;
  }

  else
  {
    v1020 = 0;
  }

  v475 = *(this + 259);
  if (v475)
  {
    v1019 = CMMsl::LocationOscarEmu::hash_value(v475);
  }

  else
  {
    v1019 = 0;
  }

  v476 = *(this + 279);
  if (v476)
  {
    v1018 = CMMsl::MotionHint::hash_value(v476);
  }

  else
  {
    v1018 = 0;
  }

  v477 = *(this + 124);
  if (v477)
  {
    v1017 = CMMsl::EnhancedDeviceMotion::hash_value(v477);
  }

  else
  {
    v1017 = 0;
  }

  v478 = *(this + 290);
  if (v478)
  {
    v1016 = CMMsl::NonlinearBiasFit::hash_value(v478);
  }

  else
  {
    v1016 = 0;
  }

  v479 = *(this + 289);
  if (v479)
  {
    v1015 = CMMsl::NatalieData::hash_value(v479);
  }

  else
  {
    v1015 = 0;
  }

  v480 = *(this + 73);
  if (v480)
  {
    v1014 = CMMsl::BodyMetrics::hash_value(v480);
  }

  else
  {
    v1014 = 0;
  }

  v481 = *(this + 463);
  if (v481)
  {
    v1013 = CMMsl::WorkoutEvent::hash_value(v481);
  }

  else
  {
    v1013 = 0;
  }

  v482 = *(this + 295);
  if (v482)
  {
    v1012 = CMMsl::OnsetHeartRateData::hash_value(v482);
  }

  else
  {
    v1012 = 0;
  }

  v483 = *(this + 414);
  if (v483 && (v484 = *(v483 + 8)) != 0)
  {
    v1011 = CMMsl::OnsetHeartRateData::hash_value(v484);
  }

  else
  {
    v1011 = 0;
  }

  v485 = *(this + 120);
  if (v485)
  {
    v1010 = CMMsl::ElevationChange::hash_value(v485);
  }

  else
  {
    v1010 = 0;
  }

  v486 = *(this + 89);
  if (v486)
  {
    v487 = *(v486 + 20);
    v488 = *(v486 + 8) == 0.0 || (v487 & 1) == 0;
    v489 = *(v486 + 8);
    if (v488)
    {
      v489 = 0;
    }

    v490 = *(v486 + 16);
    if ((v487 & 2) == 0)
    {
      v490 = 0;
    }

    v1009 = v490 ^ v489;
  }

  else
  {
    v1009 = 0;
  }

  v491 = *(this + 278);
  if (v491)
  {
    v1008 = CMMsl::MotionGPSLocation::hash_value(v491);
  }

  else
  {
    v1008 = 0;
  }

  v492 = *(this + 285);
  if (v492 && (v493 = *(v492 + 8)) != 0)
  {
    v1007 = CMMsl::MotionGPSLocation::hash_value(v493);
  }

  else
  {
    v1007 = 0;
  }

  v494 = *(this + 418);
  if (v494)
  {
    v1006 = CMMsl::StrideCalBin::hash_value(v494);
  }

  else
  {
    v1006 = 0;
  }

  v495 = *(this + 85);
  if (v495)
  {
    v1005 = ((*(v495 + 12) << 31 >> 31) & *(v495 + 8));
  }

  else
  {
    v1005 = 0;
  }

  v496 = *(this + 292);
  if (v496)
  {
    v1004 = CMMsl::Odometer::hash_value(v496);
  }

  else
  {
    v1004 = 0;
  }

  v497 = *(this + 270);
  if (v497)
  {
    v1003 = CMMsl::MetsInfo::hash_value(v497);
  }

  else
  {
    v1003 = 0;
  }

  v498 = *(this + 140);
  if (v498)
  {
    v1002 = CMMsl::FallStats::hash_value(v498);
  }

  else
  {
    v1002 = 0;
  }

  v499 = *(this + 59);
  if (v499)
  {
    v1001 = CMMsl::BasebandSpeed::hash_value(v499);
  }

  else
  {
    v1001 = 0;
  }

  v500 = *(this + 436);
  if (v500)
  {
    v1000 = ((*(v500 + 12) << 31 >> 31) & *(v500 + 8));
  }

  else
  {
    v1000 = 0;
  }

  v501 = *(this + 409);
  if (v501)
  {
    v999 = CMMsl::StepCadenceToStrideLengthBin::hash_value(v501);
  }

  else
  {
    v999 = 0;
  }

  v502 = *(this + 460);
  if (v502)
  {
    v503 = vbic_s8(v502[1], vceqz_s32(vand_s8(vdup_n_s32(v502[2].u8[0]), 0x200000001)));
    v998 = (v503.i32[0] ^ v503.i32[1]);
  }

  else
  {
    v998 = 0;
  }

  v504 = *(this + 284);
  if (v504)
  {
    v997 = ((*(v504 + 12) << 31 >> 31) & *(v504 + 8));
  }

  else
  {
    v997 = 0;
  }

  v505 = *(this + 282);
  if (v505)
  {
    v996 = CMMsl::MotionLoiData::hash_value(v505);
  }

  else
  {
    v996 = 0;
  }

  v506 = *(this + 293);
  if (v506)
  {
    v995 = CMMsl::OdometerWithAltitude::hash_value(v506);
  }

  else
  {
    v995 = 0;
  }

  v507 = *(this + 351);
  if (v507)
  {
    v508 = *(v507 + 8);
    if ((*(v507 + 20) & 1) == 0)
    {
      v508 = 0;
    }

    v509 = *(v507 + 16);
    v510 = v509 == 0.0 || (*(v507 + 20) & 2) == 0;
    v511 = LODWORD(v509);
    if (v510)
    {
      v511 = 0;
    }

    v994 = v511 ^ v508;
  }

  else
  {
    v994 = 0;
  }

  v512 = *(this + 204);
  if (v512)
  {
    v993 = CMMsl::InEarTransition::hash_value(v512);
  }

  else
  {
    v993 = 0;
  }

  v513 = *(this + 88);
  if (v513)
  {
    v992 = CMMsl::ClefCalibration::hash_value(v513);
  }

  else
  {
    v992 = 0;
  }

  v514 = *(this + 41);
  if (v514)
  {
    v991 = CMMsl::AirpodEvent::hash_value(v514);
  }

  else
  {
    v991 = 0;
  }

  v515 = *(this + 202);
  if (v515)
  {
    v990 = CMMsl::InEarOptical::hash_value(v515);
  }

  else
  {
    v990 = 0;
  }

  v516 = *(this + 200);
  if (v516)
  {
    v989 = CMMsl::InEarConstraints::hash_value(v516);
  }

  else
  {
    v989 = 0;
  }

  v517 = *(this + 201);
  if (v517)
  {
    v988 = CMMsl::InEarOpenLid::hash_value(v517);
  }

  else
  {
    v988 = 0;
  }

  v518 = *(this + 199);
  if (v518)
  {
    v987 = CMMsl::InEarBaselining::hash_value(v518);
  }

  else
  {
    v987 = 0;
  }

  v519 = *(this + 19);
  if (v519)
  {
    v986 = CMMsl::AccessoryConfig::hash_value(v519);
  }

  else
  {
    v986 = 0;
  }

  v520 = *(this + 15);
  if (v520)
  {
    v985 = CMMsl::AccessoryAccelConfig::hash_value(v520);
  }

  else
  {
    v985 = 0;
  }

  v521 = *(this + 35);
  if (v521)
  {
    v984 = CMMsl::AccessoryProximityConfig::hash_value(v521);
  }

  else
  {
    v984 = 0;
  }

  v522 = *(this + 423);
  if (v522)
  {
    v983 = CMMsl::TapDetect::hash_value(v522);
  }

  else
  {
    v983 = 0;
  }

  v523 = *(this + 422);
  if (v523)
  {
    v982 = CMMsl::TapAccept::hash_value(v523);
  }

  else
  {
    v982 = 0;
  }

  v524 = *(this + 118);
  if (v524)
  {
    v981 = CMMsl::DoubleTap::hash_value(v524);
  }

  else
  {
    v981 = 0;
  }

  v525 = *(this + 40);
  if (v525)
  {
    v980 = CMMsl::AccessoryWakeDebug::hash_value(v525);
  }

  else
  {
    v980 = 0;
  }

  v526 = *(this + 160);
  if (v526)
  {
    v979 = CMMsl::GeomagneticData::hash_value(v526);
  }

  else
  {
    v979 = 0;
  }

  v527 = *(this + 367);
  if (v527)
  {
    v978 = CMMsl::RelativeDeviceMotionInternal::hash_value(v527);
  }

  else
  {
    v978 = 0;
  }

  v528 = *(this + 369);
  if (v528)
  {
    v529 = *(v528 + 8);
    if (v529)
    {
      v529 = CMMsl::DeviceMotionCorrection::hash_value(v529);
    }

    v977 = v529 ^ ((*(v528 + 20) << 31 >> 31) & *(v528 + 16));
  }

  else
  {
    v977 = 0;
  }

  v530 = *(this + 368);
  if (v530)
  {
    v976 = CMMsl::RelativeGravityConstraints::hash_value(v530);
  }

  else
  {
    v976 = 0;
  }

  v531 = *(this + 490);
  if (v531 && (v532 = *(v531 + 8)) != 0)
  {
    v975 = CMMsl::DeviceMotionCorrection::hash_value(v532);
  }

  else
  {
    v975 = 0;
  }

  v533 = *(this + 46);
  if (v533)
  {
    v974 = CMMsl::AnchorCorrection::hash_value(v533);
  }

  else
  {
    v974 = 0;
  }

  v534 = *(this + 345);
  if (v534)
  {
    v973 = CMMsl::PredictedRelativeDeviceMotion::hash_value(v534);
  }

  else
  {
    v973 = 0;
  }

  v535 = *(this + 288);
  if (v535)
  {
    v972 = CMMsl::MovementStatsSignal::hash_value(v535);
  }

  else
  {
    v972 = 0;
  }

  v536 = *(this + 287);
  if (v536)
  {
    v971 = CMMsl::MovementStatsGravityProjection::hash_value(v536);
  }

  else
  {
    v971 = 0;
  }

  v537 = *(this + 72);
  if (v537)
  {
    v538 = *(v537 + 8);
    if (v538)
    {
      v538 = CMMsl::DeviceMotionCorrection::hash_value(v538);
    }

    v970 = v538 ^ ((*(v537 + 20) << 31 >> 31) & *(v537 + 16));
  }

  else
  {
    v970 = 0;
  }

  v539 = *(this + 24);
  if (v539 && (v540 = *(v539 + 8)) != 0)
  {
    v969 = CMMsl::AccessoryConfig::hash_value(v540);
  }

  else
  {
    v969 = 0;
  }

  v541 = *(this + 25);
  if (v541 && (v542 = *(v541 + 8)) != 0)
  {
    v968 = sub_25AD28AE4(v542);
  }

  else
  {
    v968 = 0;
  }

  v543 = *(this + 23);
  if (v543 && (v544 = *(v543 + 8)) != 0)
  {
    v967 = sub_25AD28AE4(v544);
  }

  else
  {
    v967 = 0;
  }

  v545 = *(this + 155);
  if (v545)
  {
    v966 = CMMsl::GaitCycleSegment::hash_value(v545);
  }

  else
  {
    v966 = 0;
  }

  v546 = *(this + 156);
  if (v546)
  {
    v965 = CMMsl::GaitCycleSegmentationState::hash_value(v546);
  }

  else
  {
    v965 = 0;
  }

  v547 = *(this + 94);
  if (v547)
  {
    v964 = CMMsl::CompassCalibrationAttempt::hash_value(v547);
  }

  else
  {
    v964 = 0;
  }

  v548 = *(this + 447);
  if (v548 && (v549 = *(v548 + 8)) != 0)
  {
    v963 = CMMsl::DeviceMotionCorrection::hash_value(v549);
  }

  else
  {
    v963 = 0;
  }

  v550 = *(this + 446);
  if (v550)
  {
    v962 = CMMsl::VisualLocalizationAttitudeConstraints::hash_value(v550);
  }

  else
  {
    v962 = 0;
  }

  v551 = *(this + 30);
  if (v551 && (v552 = *(v551 + 8)) != 0)
  {
    v961 = CMMsl::AccessoryConfig::hash_value(v552);
  }

  else
  {
    v961 = 0;
  }

  v553 = *(this + 133);
  if (v553)
  {
    v960 = CMMsl::FallDetectionReferee::hash_value(v553);
  }

  else
  {
    v960 = 0;
  }

  v554 = *(this + 134);
  if (v554)
  {
    v959 = CMMsl::FallDetectionReplay::hash_value(v554);
  }

  else
  {
    v959 = 0;
  }

  v555 = *(this + 135);
  if (v555)
  {
    v958 = CMMsl::FallDetectionStateMachine::hash_value(v555);
  }

  else
  {
    v958 = 0;
  }

  v556 = *(this + 131);
  if (v556)
  {
    v957 = CMMsl::FallDetectionDetector::hash_value(v556);
  }

  else
  {
    v957 = 0;
  }

  v557 = *(this + 138);
  if (v557)
  {
    v956 = CMMsl::FallFalsePositiveSuppressionFeatures::hash_value(v557);
  }

  else
  {
    v956 = 0;
  }

  v558 = *(this + 21);
  if (v558)
  {
    v955 = CMMsl::AccessoryDeviceMotionConfig::hash_value(v558);
  }

  else
  {
    v955 = 0;
  }

  v559 = *(this + 366);
  if (v559)
  {
    v954 = CMMsl::RelativeDeviceMotionCorrelatedMotion::hash_value(v559);
  }

  else
  {
    v954 = 0;
  }

  v560 = *(this + 365);
  if (v560)
  {
    v953 = CMMsl::RelativeDeviceMotionComplexTransition::hash_value(v560);
  }

  else
  {
    v953 = 0;
  }

  v561 = *(this + 106);
  if (v561)
  {
    v952 = CMMsl::DeviceMotionAlwaysOn::hash_value(v561);
  }

  else
  {
    v952 = 0;
  }

  v562 = *(this + 132);
  if (v562)
  {
    v563 = *(v562 + 20);
    v564 = *(v562 + 8);
    if ((v563 & 1) == 0)
    {
      v564 = 0;
    }

    v951 = v564 ^ (*(v562 + 16) & (v563 << 30 >> 31));
  }

  else
  {
    v951 = 0;
  }

  v565 = *(this + 453);
  if (v565)
  {
    v950 = CMMsl::WalkingDetectionResult::hash_value(v565);
  }

  else
  {
    v950 = 0;
  }

  v566 = *(this + 28);
  if (v566)
  {
    v567 = *(v566 + 8);
    if ((*(v566 + 16) & 1) == 0)
    {
      v567 = 0;
    }

    v568 = *(v566 + 12);
    v569 = v568 == 0.0 || (*(v566 + 16) & 2) == 0;
    v570 = LODWORD(v568);
    if (v569)
    {
      v570 = 0;
    }

    v949 = v570 ^ v567;
  }

  else
  {
    v949 = 0;
  }

  v571 = *(this + 136);
  if (v571)
  {
    v948 = CMMsl::FallDetectionWristStateReplay::hash_value(v571);
  }

  else
  {
    v948 = 0;
  }

  v572 = *(this + 172);
  if (v572)
  {
    v947 = CMMsl::GyroBiasEstimateError::hash_value(v572);
  }

  else
  {
    v947 = 0;
  }

  v573 = *(this + 413);
  if (v573)
  {
    v946 = CMMsl::StepLikelihoodFeatures::hash_value(v573);
  }

  else
  {
    v946 = 0;
  }

  v574 = *(this + 141);
  if (v574)
  {
    v945 = CMMsl::FirstStepFeatures::hash_value(v574);
  }

  else
  {
    v945 = 0;
  }

  v575 = *(this + 38);
  if (v575)
  {
    v944 = CMMsl::AccessoryStepDetectorDebug::hash_value(v575);
  }

  else
  {
    v944 = 0;
  }

  v576 = *(this + 389);
  if (v576)
  {
    v943 = CMMsl::SitStandDetectorFeatures::hash_value(v576);
  }

  else
  {
    v943 = 0;
  }

  v577 = *(this + 392);
  if (v577)
  {
    v578 = *(v577 + 20);
    v579 = *(v577 + 8) == 0.0 || (v578 & 1) == 0;
    v580 = *(v577 + 8);
    if (v579)
    {
      v580 = 0;
    }

    v581 = *(v577 + 16);
    if ((v578 & 2) == 0)
    {
      v581 = 0;
    }

    v942 = v581 ^ v580;
  }

  else
  {
    v942 = 0;
  }

  v582 = *(this + 390);
  if (v582)
  {
    v941 = CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand::hash_value(v582);
  }

  else
  {
    v941 = 0;
  }

  v583 = *(this + 391);
  if (v583)
  {
    v940 = CMMsl::SitStandDetectorPosteriorBufferStatsForStandToSit::hash_value(v583);
  }

  else
  {
    v940 = 0;
  }

  v584 = *(this + 397);
  if (v584)
  {
    v585 = *(v584 + 16);
    if ((*(v584 + 20) & 2) == 0)
    {
      v585 = 0;
    }

    v586 = *(v584 + 8) == 0.0 || (*(v584 + 20) & 1) == 0;
    v587 = *(v584 + 8);
    if (v586)
    {
      v587 = 0;
    }

    v939 = v587 ^ v585;
  }

  else
  {
    v939 = 0;
  }

  v588 = *(this + 137);
  if (v588)
  {
    v938 = CMMsl::FallDistanceReplay::hash_value(v588);
  }

  else
  {
    v938 = 0;
  }

  v589 = *(this + 211);
  if (v589)
  {
    v937 = CMMsl::JitterBufferLevel::hash_value(v589);
  }

  else
  {
    v937 = 0;
  }

  v590 = *(this + 350);
  if (v590)
  {
    v936 = CMMsl::PressureFiltered1HzLowPass::hash_value(v590);
  }

  else
  {
    v936 = 0;
  }

  v591 = *(this + 276);
  if (v591)
  {
    v935 = CMMsl::MotionActivityReplay::hash_value(v591);
  }

  else
  {
    v935 = 0;
  }

  v592 = *(this + 130);
  if (v592)
  {
    v934 = CMMsl::FallDetectionActivityClassifierReplay::hash_value(v592);
  }

  else
  {
    v934 = 0;
  }

  v593 = *(this + 254);
  if (v593)
  {
    v933 = CMMsl::LegacyALS5CHInput::hash_value(v593);
  }

  else
  {
    v933 = 0;
  }

  v594 = *(this + 115);
  if (v594)
  {
    v595 = *(v594 + 20);
    v596 = *(v594 + 8) == 0.0 || (v595 & 1) == 0;
    v597 = *(v594 + 8);
    if (v596)
    {
      v597 = 0;
    }

    v598 = *(v594 + 16);
    if ((v595 & 2) == 0)
    {
      v598 = 0;
    }

    v932 = v598 ^ v597;
  }

  else
  {
    v932 = 0;
  }

  v599 = *(this + 113);
  if (v599)
  {
    v931 = CMMsl::DopplerProximityEvent::hash_value(v599);
  }

  else
  {
    v931 = 0;
  }

  v600 = *(this + 114);
  if (v600)
  {
    v930 = CMMsl::DopplerRawDataInput::hash_value(v600);
  }

  else
  {
    v930 = 0;
  }

  v601 = *(this + 112);
  if (v601)
  {
    v929 = CMMsl::DopplerDebugRecord::hash_value(v601);
  }

  else
  {
    v929 = 0;
  }

  v602 = *(this + 296);
  if (v602)
  {
    v603 = *(v602 + 20);
    v604 = *(v602 + 8) == 0.0 || (v603 & 1) == 0;
    v605 = *(v602 + 8);
    if (v604)
    {
      v605 = 0;
    }

    v606 = *(v602 + 16);
    if ((v603 & 2) == 0)
    {
      v606 = 0;
    }

    v928 = v606 ^ v605;
  }

  else
  {
    v928 = 0;
  }

  v607 = *(this + 217);
  if (v607)
  {
    v927 = CMMsl::KappaAudioResult::hash_value(v607);
  }

  else
  {
    v927 = 0;
  }

  v608 = *(this + 218);
  if (v608)
  {
    v926 = CMMsl::KappaBaroResult::hash_value(v608);
  }

  else
  {
    v926 = 0;
  }

  v609 = *(this + 221);
  if (v609)
  {
    v925 = CMMsl::KappaGpsResult::hash_value(v609);
  }

  else
  {
    v925 = 0;
  }

  v610 = *(this + 232);
  if (v610)
  {
    v924 = CMMsl::KappaPulseResult::hash_value(v610);
  }

  else
  {
    v924 = 0;
  }

  v611 = *(this + 247);
  if (v611)
  {
    v923 = CMMsl::KappaZgResult::hash_value(v611);
  }

  else
  {
    v923 = 0;
  }

  v612 = *(this + 246);
  if (v612)
  {
    v613 = *(v612 + 16);
    v614 = *(v612 + 8);
    if ((v613 & 1) == 0)
    {
      v614 = 0;
    }

    v922 = v614;
  }

  else
  {
    v922 = 0;
  }

  v615 = *(this + 230);
  if (v615)
  {
    v921 = CMMsl::KappaPulseInertialAccel::hash_value(v615);
  }

  else
  {
    v921 = 0;
  }

  v616 = *(this + 191);
  if (v616)
  {
    v617 = *(v616 + 12);
    v618 = *(v616 + 8);
    if ((v617 & 1) == 0)
    {
      v618 = 0;
    }

    v920 = v618;
  }

  else
  {
    v920 = 0;
  }

  v619 = *(this + 190);
  if (v619)
  {
    v620 = *(v619 + 12);
    v621 = *(v619 + 8);
    if ((v620 & 1) == 0)
    {
      v621 = 0;
    }

    v919 = v621;
  }

  else
  {
    v919 = 0;
  }

  v622 = *(this + 216);
  if (v622)
  {
    v918 = CMMsl::KappaAirbagResult::hash_value(v622);
  }

  else
  {
    v918 = 0;
  }

  v623 = *(this + 219);
  if (v623)
  {
    v917 = CMMsl::KappaCrashResult::hash_value(v623);
  }

  else
  {
    v917 = 0;
  }

  v624 = *(this + 233);
  if (v624)
  {
    v916 = CMMsl::KappaQuiescenceResult::hash_value(v624);
  }

  else
  {
    v916 = 0;
  }

  v625 = *(this + 234);
  if (v625)
  {
    v915 = CMMsl::KappaRecoveryResult::hash_value(v625);
  }

  else
  {
    v915 = 0;
  }

  v626 = *(this + 238);
  if (v626)
  {
    v914 = CMMsl::KappaRolloverCrashResult::hash_value(v626);
  }

  else
  {
    v914 = 0;
  }

  v627 = *(this + 226);
  if (v627)
  {
    v913 = CMMsl::KappaMildImpactResult::hash_value(v627);
  }

  else
  {
    v913 = 0;
  }

  v628 = *(this + 224);
  if (v628)
  {
    v912 = CMMsl::KappaLackOfMotionResult::hash_value(v628);
  }

  else
  {
    v912 = 0;
  }

  v629 = *(this + 239);
  if (v629)
  {
    v911 = CMMsl::KappaSevereCrashResult::hash_value(v629);
  }

  else
  {
    v911 = 0;
  }

  v630 = *(this + 225);
  if (v630)
  {
    v910 = CMMsl::KappaLocalAudioResult::hash_value(v630);
  }

  else
  {
    v910 = 0;
  }

  v631 = *(this + 235);
  if (v631)
  {
    v909 = CMMsl::KappaRemoteAudioResult::hash_value(v631);
  }

  else
  {
    v909 = 0;
  }

  v632 = *(this + 108);
  if (v632)
  {
    v908 = CMMsl::DirectionOfTravelMetrics::hash_value(v632);
  }

  else
  {
    v908 = 0;
  }

  v633 = *(this + 437);
  if (v633)
  {
    v634 = *(v633 + 20);
    v635 = *(v633 + 8);
    if ((v634 & 1) == 0)
    {
      v635 = 0;
    }

    v907 = v635 ^ (*(v633 + 16) & (v634 << 30 >> 31));
  }

  else
  {
    v907 = 0;
  }

  v636 = *(this + 189);
  if (v636)
  {
    v906 = CMMsl::HeadToHeadsetTransformationEstimate::hash_value(v636);
  }

  else
  {
    v906 = 0;
  }

  v637 = *(this + 438);
  if (v637)
  {
    v905 = CMMsl::ViewObstructedMachineLearningFeatures::hash_value(v637);
  }

  else
  {
    v905 = 0;
  }

  v638 = *(this + 439);
  if (v638)
  {
    v904 = CMMsl::ViewObstructedMachineLearningProbabilities::hash_value(v638);
  }

  else
  {
    v904 = 0;
  }

  v639 = *(this + 372);
  if (v639)
  {
    v903 = CMMsl::RunningArmSwingSignals::hash_value(v639);
  }

  else
  {
    v903 = 0;
  }

  v640 = *(this + 373);
  if (v640)
  {
    v902 = CMMsl::RunningCentripetalAccelSignals::hash_value(v640);
  }

  else
  {
    v902 = 0;
  }

  v641 = *(this + 376);
  if (v641)
  {
    v901 = CMMsl::RunningRotationAxis::hash_value(v641);
  }

  else
  {
    v901 = 0;
  }

  v642 = *(this + 381);
  if (v642)
  {
    v900 = CMMsl::RunningVerticalOscillationSignals::hash_value(v642);
  }

  else
  {
    v900 = 0;
  }

  v643 = *(this + 379);
  if (v643)
  {
    v899 = CMMsl::RunningVerticalOscillation::hash_value(v643);
  }

  else
  {
    v899 = 0;
  }

  v644 = *(this + 240);
  if (v644)
  {
    v898 = CMMsl::KappaSpinResult::hash_value(v644);
  }

  else
  {
    v898 = 0;
  }

  v645 = *(this + 229);
  if (v645)
  {
    v897 = CMMsl::KappaPulseDeltaV::hash_value(v645);
  }

  else
  {
    v897 = 0;
  }

  v646 = *(this + 378);
  if (v646)
  {
    v896 = CMMsl::RunningStrideLength::hash_value(v646);
  }

  else
  {
    v896 = 0;
  }

  v647 = *(this + 210);
  if (v647)
  {
    v895 = CMMsl::ISPPacket::hash_value(v647);
  }

  else
  {
    v895 = 0;
  }

  v648 = *(this + 223);
  if (v648)
  {
    v894 = CMMsl::KappaHighSpeedCrashResult::hash_value(v648);
  }

  else
  {
    v894 = 0;
  }

  v649 = *(this + 231);
  if (v649)
  {
    v893 = CMMsl::KappaPulseInertialHgAccel::hash_value(v649);
  }

  else
  {
    v893 = 0;
  }

  v650 = *(this + 187);
  if (v650)
  {
    v892 = CMMsl::HarmonicMetrics::hash_value(v650);
  }

  else
  {
    v892 = 0;
  }

  v651 = *(this + 84);
  if (v651)
  {
    v891 = CMMsl::CalorieControllerMETsConsumed::hash_value(v651);
  }

  else
  {
    v891 = 0;
  }

  v652 = *(this + 322);
  if (v652)
  {
    v890 = CMMsl::PedometerPathStraightness::hash_value(v652);
  }

  else
  {
    v890 = 0;
  }

  v653 = *(this + 97);
  if (v653)
  {
    v889 = CMMsl::ComplexHandMotion::hash_value(v653);
  }

  else
  {
    v889 = 0;
  }

  v654 = *(this + 121);
  if (v654)
  {
    v888 = CMMsl::ElevationGradeEstimator::hash_value(v654);
  }

  else
  {
    v888 = 0;
  }

  v655 = *(this + 434);
  if (v655)
  {
    v887 = CMMsl::VO2MaxModelInput::hash_value(v655);
  }

  else
  {
    v887 = 0;
  }

  v656 = *(this + 356);
  if (v656)
  {
    v886 = CMMsl::ProxCalibration::hash_value(v656);
  }

  else
  {
    v886 = 0;
  }

  v657 = *(this + 242);
  if (v657)
  {
    v885 = CMMsl::KappaStepsResult::hash_value(v657);
  }

  else
  {
    v885 = 0;
  }

  v658 = *(this + 452);
  if (v658)
  {
    v884 = CMMsl::WakeGestureSample::hash_value(v658);
  }

  else
  {
    v884 = 0;
  }

  v659 = *(this + 222);
  if (v659)
  {
    v883 = CMMsl::KappaGravityAutocorrelationResult::hash_value(v659);
  }

  else
  {
    v883 = 0;
  }

  v660 = *(this + 380);
  if (v660)
  {
    v882 = CMMsl::RunningVerticalOscillationGradientBoostedSignals::hash_value(v660);
  }

  else
  {
    v882 = 0;
  }

  v661 = *(this + 420);
  if (v661)
  {
    v881 = CMMsl::SubStats::hash_value(v661);
  }

  else
  {
    v881 = 0;
  }

  v662 = *(this + 319);
  if (v662)
  {
    v880 = CMMsl::PedOdomFusionExtendedModeSegment::hash_value(v662);
  }

  else
  {
    v880 = 0;
  }

  v663 = *(this + 263);
  if (v663)
  {
    v664 = *(v663 + 20);
    v665 = *(v663 + 8);
    if ((v664 & 1) == 0)
    {
      v665 = 0;
    }

    v666 = *(v663 + 16);
    if ((v664 & 2) == 0)
    {
      v666 = 0;
    }

    v879 = v666 ^ v665;
  }

  else
  {
    v879 = 0;
  }

  v667 = *(this + 313);
  if (v667)
  {
    v878 = CMMsl::PDRPedestrianClassifierState::hash_value(v667);
  }

  else
  {
    v878 = 0;
  }

  v668 = *(this + 314);
  if (v668)
  {
    v877 = CMMsl::PDRPlacementClassifierState::hash_value(v668);
  }

  else
  {
    v877 = 0;
  }

  v669 = *(this + 315);
  if (v669)
  {
    v876 = CMMsl::PDRSpeedEstimatorState::hash_value(v669);
  }

  else
  {
    v876 = 0;
  }

  v670 = *(this + 298);
  if (v670)
  {
    v875 = CMMsl::PDRDOTEstimatorState::hash_value(v670);
  }

  else
  {
    v875 = 0;
  }

  v671 = *(this + 317);
  if (v671)
  {
    v874 = CMMsl::PDRVelocityEstimatorState::hash_value(v671);
  }

  else
  {
    v874 = 0;
  }

  v672 = *(this + 253);
  if (v672)
  {
    v873 = CMMsl::KMVelocityEstimatorState::hash_value(v672);
  }

  else
  {
    v873 = 0;
  }

  v673 = *(this + 435);
  if (v673)
  {
    v872 = CMMsl::VelocityEstimatorFusionState::hash_value(v673);
  }

  else
  {
    v872 = 0;
  }

  v674 = *(this + 309);
  if (v674)
  {
    v675 = *(v674 + 20);
    v676 = *(v674 + 8) == 0.0 || (v675 & 1) == 0;
    v677 = *(v674 + 8);
    if (v676)
    {
      v677 = 0;
    }

    v678 = v675 & 2;
    v679 = *(v674 + 16);
    v680 = v679 == 0.0 || v678 == 0;
    v681 = LODWORD(v679);
    if (v680)
    {
      v681 = 0;
    }

    v871 = v681 ^ v677;
  }

  else
  {
    v871 = 0;
  }

  v682 = *(this + 310);
  if (v682)
  {
    v870 = CMMsl::PDRFenceState::hash_value(v682);
  }

  else
  {
    v870 = 0;
  }

  v683 = *(this + 433);
  if (v683)
  {
    v869 = CMMsl::UWBRange::hash_value(v683);
  }

  else
  {
    v869 = 0;
  }

  v684 = *(this + 421);
  if (v684)
  {
    v868 = CMMsl::SwingDoTCandidate::hash_value(v684);
  }

  else
  {
    v868 = 0;
  }

  v685 = *(this + 116);
  if (v685)
  {
    v867 = CMMsl::DoTEstimatorHandSwing::hash_value(v685);
  }

  else
  {
    v867 = 0;
  }

  v686 = *(this + 244);
  if (v686)
  {
    v866 = CMMsl::KappaTriggerClustersResult::hash_value(v686);
  }

  else
  {
    v866 = 0;
  }

  v687 = *(this + 388);
  if (v687)
  {
    v688 = *(v687 + 24);
    v691 = v687 + 8;
    v690 = *(v687 + 8);
    v689 = *(v691 + 8);
    if (v690)
    {
      v692 = *(v690 + 12);
      v690 = *(v690 + 8);
      if ((v692 & 1) == 0)
      {
        v690 = 0;
      }
    }

    if ((v688 & 1) == 0)
    {
      v689 = 0;
    }

    v865 = v690 ^ v689;
  }

  else
  {
    v865 = 0;
  }

  v693 = *(this + 308);
  if (v693)
  {
    v864 = CMMsl::PDRFeatures::hash_value(v693);
  }

  else
  {
    v864 = 0;
  }

  v694 = *(this + 300);
  if (v694)
  {
    v863 = CMMsl::PDRDOTEstimatorStateBody::hash_value(v694);
  }

  else
  {
    v863 = 0;
  }

  v695 = *(this + 299);
  if (v695)
  {
    v862 = CMMsl::PDRDOTEstimatorStateArmSwing::hash_value(v695);
  }

  else
  {
    v862 = 0;
  }

  v696 = *(this + 303);
  if (v696)
  {
    v861 = CMMsl::PDRDOTEstimatorStateHeading::hash_value(v696);
  }

  else
  {
    v861 = 0;
  }

  v697 = *(this + 16);
  if (v697)
  {
    v860 = CMMsl::AccessoryActivityAlseepConfidenceEpoch::hash_value(v697);
  }

  else
  {
    v860 = 0;
  }

  v698 = *(this + 316);
  if (v698)
  {
    v859 = CMMsl::PDRSpeedEstimatorStateDebug::hash_value(v698);
  }

  else
  {
    v859 = 0;
  }

  v699 = *(this + 339);
  if (v699)
  {
    v700 = *(v699 + 24);
    v701 = *(v699 + 8);
    v702 = *(v699 + 16) == 0.0 || (v700 & 2) == 0;
    v703 = *(v699 + 16);
    if (v702)
    {
      v703 = 0;
    }

    v704 = v700 & 1;
    v705 = v701 == 0.0 || v704 == 0;
    v706 = v701;
    if (v705)
    {
      v706 = 0.0;
    }

    v858 = *&v706 ^ v703;
  }

  else
  {
    v858 = 0;
  }

  v707 = *(this + 342);
  if (v707)
  {
    v857 = CMMsl::PrecisionFindingState::hash_value(v707);
  }

  else
  {
    v857 = 0;
  }

  v708 = *(this + 237);
  if (v708)
  {
    v856 = CMMsl::KappaRoadsResult::hash_value(v708);
  }

  else
  {
    v856 = 0;
  }

  v709 = *(this + 343);
  if (v709)
  {
    v855 = CMMsl::PrecisionFindingVelocityEstimate::hash_value(v709);
  }

  else
  {
    v855 = 0;
  }

  v710 = *(this + 340);
  if (v710)
  {
    v854 = CMMsl::PrecisionFindingRangeFilter::hash_value(v710);
  }

  else
  {
    v854 = 0;
  }

  v711 = *(this + 307);
  if (v711)
  {
    v853 = CMMsl::PDRDOTMeasurementSelectorState::hash_value(v711);
  }

  else
  {
    v853 = 0;
  }

  v712 = *(this + 79);
  if (v712)
  {
    v713 = *(v712 + 20);
    v714 = *(v712 + 8);
    if ((v713 & 1) == 0)
    {
      v714 = 0;
    }

    v715 = *(v712 + 16);
    if ((v713 & 2) == 0)
    {
      v715 = 0;
    }

    v852 = v715 ^ v714;
  }

  else
  {
    v852 = 0;
  }

  v716 = *(this + 306);
  if (v716)
  {
    v851 = CMMsl::PDRDOTEstimatorUncertaintyModelOnBody::hash_value(v716);
  }

  else
  {
    v851 = 0;
  }

  v717 = *(this + 323);
  if (v717)
  {
    v718 = *(v717 + 20);
    v719 = *(v717 + 8) == 0.0 || (v718 & 1) == 0;
    v720 = *(v717 + 8);
    if (v719)
    {
      v720 = 0;
    }

    v721 = *(v717 + 16);
    if ((v718 & 2) == 0)
    {
      v721 = 0;
    }

    v850 = v721 ^ v720;
  }

  else
  {
    v850 = 0;
  }

  v722 = *(this + 267);
  if (v722)
  {
    v849 = CMMsl::MagnetometerCalibratorFilterParameters::hash_value(v722);
  }

  else
  {
    v849 = 0;
  }

  v723 = *(this + 214);
  if (v723)
  {
    v848 = CMMsl::KappaActivityPhone::hash_value(v723);
  }

  else
  {
    v848 = 0;
  }

  v724 = *(this + 215);
  if (v724)
  {
    v847 = CMMsl::KappaActivityWatch::hash_value(v724);
  }

  else
  {
    v847 = 0;
  }

  v725 = *(this + 341);
  if (v725)
  {
    v726 = *(v725 + 20);
    v727 = *(v725 + 8) == 0.0 || (v726 & 1) == 0;
    v728 = *(v725 + 8);
    if (v727)
    {
      v728 = 0;
    }

    v846 = v728 ^ (*(v725 + 16) & (v726 << 30 >> 31));
  }

  else
  {
    v846 = 0;
  }

  v729 = *(this + 302);
  if (v729)
  {
    v845 = CMMsl::PDRDOTEstimatorStateDebug::hash_value(v729);
  }

  else
  {
    v845 = 0;
  }

  v730 = *(this + 301);
  if (v730)
  {
    v844 = CMMsl::PDRDOTEstimatorStateBodyDebug::hash_value(v730);
  }

  else
  {
    v844 = 0;
  }

  v731 = *(this + 228);
  if (v731)
  {
    v843 = CMMsl::KappaPeakDetectorMapResult::hash_value(v731);
  }

  else
  {
    v843 = 0;
  }

  v732 = *(this + 227);
  if (v732)
  {
    v842 = CMMsl::KappaPeakDetectorMapMagTimestamps::hash_value(v732);
  }

  else
  {
    v842 = 0;
  }

  v733 = *(this + 344);
  if (v733)
  {
    v841 = CMMsl::PrecisionFindingVerticalState::hash_value(v733);
  }

  else
  {
    v841 = 0;
  }

  v734 = *(this + 44);
  if (v734)
  {
    v840 = CMMsl::Altimeter::hash_value(v734);
  }

  else
  {
    v840 = 0;
  }

  v735 = *(this + 127);
  if (v735)
  {
    v839 = CMMsl::FaceDownDetection::hash_value(v735);
  }

  else
  {
    v839 = 0;
  }

  v736 = *(this + 325);
  if (v736)
  {
    v838 = CMMsl::PencilFusionDMYawAlignmentUpdate::hash_value(v736);
  }

  else
  {
    v838 = 0;
  }

  v737 = *(this + 328);
  if (v737)
  {
    v837 = CMMsl::PencilFusionRingSensorTrustModelUpdate::hash_value(v737);
  }

  else
  {
    v837 = 0;
  }

  v738 = *(this + 37);
  if (v738)
  {
    v836 = CMMsl::AccessorySleepStateUpdate::hash_value(v738);
  }

  else
  {
    v836 = 0;
  }

  v739 = *(this + 36);
  if (v739)
  {
    v835 = CMMsl::AccessorySleepStateConfidenceEpoch::hash_value(v739);
  }

  else
  {
    v835 = 0;
  }

  v740 = *(this + 383);
  if (v740)
  {
    v834 = CMMsl::SafetyHertzSample::hash_value(v740);
  }

  else
  {
    v834 = 0;
  }

  v741 = *(this + 382);
  if (v741)
  {
    v742 = *(v741 + 20);
    v743 = *(v741 + 8);
    if ((v742 & 1) == 0)
    {
      v743 = 0;
    }

    v744 = *(v741 + 16);
    if ((v742 & 2) == 0)
    {
      v744 = 0;
    }

    v833 = v744 ^ v743;
  }

  else
  {
    v833 = 0;
  }

  v745 = *(this + 358);
  if (v745)
  {
    v832 = CMMsl::PTSConsumedGNSS::hash_value(v745);
  }

  else
  {
    v832 = 0;
  }

  v746 = *(this + 359);
  if (v746)
  {
    v831 = CMMsl::PTSForwardPropagation::hash_value(v746);
  }

  else
  {
    v831 = 0;
  }

  v747 = *(this + 361);
  if (v747 && (v748 = *(v747 + 8)) != 0)
  {
    v830 = CMMsl::PTSForwardPropagation::hash_value(v748);
  }

  else
  {
    v830 = 0;
  }

  v749 = *(this + 188);
  if (v749)
  {
    v829 = CMMsl::HeadToHeadsetAttitudeEstimatorMeasurementUpdate::hash_value(v749);
  }

  else
  {
    v829 = 0;
  }

  v750 = *(this + 360);
  if (v750 && (v751 = *(v750 + 8)) != 0)
  {
    v828 = CMMsl::PTSForwardPropagation::hash_value(v751);
  }

  else
  {
    v828 = 0;
  }

  v752 = *(this + 47);
  if (v752)
  {
    v827 = CMMsl::AnchorMotionCorrespondence::hash_value(v752);
  }

  else
  {
    v827 = 0;
  }

  v753 = *(this + 147);
  if (v753)
  {
    v754 = *(v753 + 20);
    v755 = *(v753 + 8);
    if ((v754 & 1) == 0)
    {
      v755 = 0;
    }

    v756 = *(v753 + 16);
    if ((v754 & 2) == 0)
    {
      v756 = 0;
    }

    v826 = v756 ^ v755;
  }

  else
  {
    v826 = 0;
  }

  v757 = *(this + 146);
  if (v757)
  {
    v825 = CMMsl::FlickFeatures::hash_value(v757);
  }

  else
  {
    v825 = 0;
  }

  v758 = *(this + 144);
  if (v758)
  {
    v824 = CMMsl::FlickControlParameters::hash_value(v758);
  }

  else
  {
    v824 = 0;
  }

  v759 = *(this + 384);
  if (v759)
  {
    v823 = CMMsl::SafetyRemoteSample::hash_value(v759);
  }

  else
  {
    v823 = 0;
  }

  v760 = *(this + 385);
  if (v760)
  {
    v822 = CMMsl::SafetyTrustedAudioResult::hash_value(v760);
  }

  else
  {
    v822 = 0;
  }

  v761 = *(this + 110);
  if (v761)
  {
    v821 = CMMsl::DisplayPoseState::hash_value(v761);
  }

  else
  {
    v821 = 0;
  }

  v762 = *(this + 427);
  if (v762)
  {
    v820 = CMMsl::TNB::hash_value(v762);
  }

  else
  {
    v820 = 0;
  }

  v763 = *(this + 305);
  if (v763)
  {
    v819 = CMMsl::PDRDOTEstimatorStateTNBDebug::hash_value(v763);
  }

  else
  {
    v819 = 0;
  }

  v764 = *(this + 83);
  if (v764)
  {
    v818 = CMMsl::CVIMUMeasurement::hash_value(v764);
  }

  else
  {
    v818 = 0;
  }

  v765 = *(this + 304);
  if (v765)
  {
    v817 = CMMsl::PDRDOTEstimatorStateSwingDebug::hash_value(v765);
  }

  else
  {
    v817 = 0;
  }

  v766 = *(this + 196);
  if (v766)
  {
    v816 = CMMsl::IMUComboPacket::hash_value(v766);
  }

  else
  {
    v816 = 0;
  }

  v767 = *(this + 184);
  if (v767)
  {
    v815 = CMMsl::GyroScaleEstimate::hash_value(v767);
  }

  else
  {
    v815 = 0;
  }

  v768 = *(this + 171);
  if (v768)
  {
    v814 = CMMsl::GyroBiasEstimate::hash_value(v768);
  }

  else
  {
    v814 = 0;
  }

  v769 = *(this + 8);
  if (v769)
  {
    v813 = CMMsl::AccelBiasEstimate::hash_value(v769);
  }

  else
  {
    v813 = 0;
  }

  v770 = *(this + 179);
  if (v770)
  {
    v771 = *(v770 + 20);
    v772 = *(v770 + 8) == 0.0 || (v771 & 1) == 0;
    v773 = *(v770 + 8);
    if (v772)
    {
      v773 = 0;
    }

    v812 = v773 ^ (*(v770 + 16) & (v771 << 30 >> 31));
  }

  else
  {
    v812 = 0;
  }

  v774 = *(this + 362);
  if (v774 && (v775 = *(v774 + 8)) != 0)
  {
    v811 = CMMsl::PTSForwardPropagation::hash_value(v775);
  }

  else
  {
    v811 = 0;
  }

  v776 = *(this + 150);
  if (v776)
  {
    v810 = CMMsl::FlickMaxima::hash_value(v776);
  }

  else
  {
    v810 = 0;
  }

  v777 = *(this + 148);
  if (v777)
  {
    v778 = *(v777 + 8);
    if (v778)
    {
      v778 = CMMsl::FlickMaxima::hash_value(v778);
    }

    if (*(v777 + 20))
    {
      v779 = *(v777 + 16);
    }

    else
    {
      v779 = 0;
    }

    v809 = v779 ^ v778;
  }

  else
  {
    v809 = 0;
  }

  v780 = *(this + 145);
  if (v780)
  {
    v808 = CMMsl::FlickFPDetectorFeatures::hash_value(v780);
  }

  else
  {
    v808 = 0;
  }

  v781 = *(this + 149);
  if (v781)
  {
    v807 = CMMsl::FlickLPFDM6Data::hash_value(v781);
  }

  else
  {
    v807 = 0;
  }

  v782 = *(this + 103);
  if (v782)
  {
    v806 = CMMsl::CourseFusion::hash_value(v782);
  }

  else
  {
    v806 = 0;
  }

  v783 = *(this + 81);
  if (v783)
  {
    v805 = CMMsl::CMPedometerStep::hash_value(v783);
  }

  else
  {
    v805 = 0;
  }

  v784 = *(this + 80);
  if (v784)
  {
    v804 = CMMsl::CMPedEntry::hash_value(v784);
  }

  else
  {
    v804 = 0;
  }

  v785 = *(this + 162);
  if (v785)
  {
    v803 = CMMsl::GestureQuaternion::hash_value(v785);
  }

  else
  {
    v803 = 0;
  }

  v786 = *(this + 161);
  if (v786)
  {
    v787 = *(v786 + 12);
    v788 = *(v786 + 8);
    if ((v787 & 1) == 0)
    {
      v788 = 0;
    }

    v802 = v788;
  }

  else
  {
    v802 = 0;
  }

  v789 = *(this + 399);
  if (v789 && (v790 = *(v789 + 8)) != 0)
  {
    v791 = CMMsl::DeviceMotion::hash_value(v790);
  }

  else
  {
    v791 = 0;
  }

  v792 = *(this + 400);
  if (v792 && (v793 = *(v792 + 8)) != 0)
  {
    v794 = CMMsl::MotionStateUpdate::hash_value(v793);
  }

  else
  {
    v794 = 0;
  }

  v795 = *(this + 208);
  if (v795)
  {
    v796 = *(v795 + 8);
    if (v796)
    {
      v796 = CMMsl::AccessoryAccel::hash_value(v796);
    }
  }

  else
  {
    v796 = 0;
  }

  v797 = v1279 ^ *&v1280 ^ v1278 ^ v1277 ^ v1276 ^ v1275 ^ v1274 ^ v1273 ^ v1272 ^ v1271 ^ v1270 ^ v1269 ^ v1268 ^ v1267 ^ v1266 ^ v1265 ^ v1264 ^ v1263 ^ v1262 ^ v1261 ^ v1260 ^ v1259 ^ v46 ^ v1258 ^ v52 ^ v57 ^ v1257 ^ v1256 ^ v1255 ^ v1254 ^ v1253 ^ v1252 ^ v1251 ^ v1250 ^ v1249 ^ v1248 ^ v1247 ^ v1246 ^ v1245 ^ v1244 ^ v1243 ^ v1242 ^ v1241 ^ v1240 ^ v1239 ^ v1238 ^ v1237 ^ v1236 ^ v1235 ^ v1234 ^ v1233 ^ v1232 ^ v1231 ^ v1230 ^ v1229 ^ v1228 ^ v1227 ^ v1226 ^ v1225 ^ v1224 ^ v1223 ^ v1222 ^ v1221 ^ v1220 ^ v1219 ^ v1218 ^ v1217 ^ v1216 ^ v1215 ^ v1214 ^ v1213 ^ v1212 ^ v1211 ^ v1210 ^ v1209 ^ v1208 ^ v1207 ^ v1206 ^ v1205;
  v798 = v797 ^ v1204 ^ v1203 ^ v1202 ^ v1201 ^ v1200 ^ v1199 ^ v1198 ^ v1197 ^ v1196 ^ v157 ^ v162 ^ v1195 ^ v1194 ^ v1193 ^ v1192 ^ v1191 ^ v1190 ^ v1189 ^ v1188 ^ v1187 ^ v1186 ^ v1185 ^ v1184 ^ v1183 ^ v1182 ^ v1181 ^ v1180 ^ v1179 ^ v1178 ^ v1177 ^ v1176 ^ v1175 ^ v1174 ^ v1173 ^ v1172 ^ v1171 ^ v1170 ^ v1169 ^ v1168 ^ v1167 ^ v1166 ^ v1165 ^ v1164 ^ v1163 ^ v1162 ^ v1161 ^ v1160 ^ v1159 ^ v1158 ^ v1157 ^ v1156 ^ v1155 ^ v1154 ^ v237 ^ v1153 ^ v1152 ^ v1151 ^ v1150 ^ v1149 ^ v1148 ^ v1147 ^ v1146 ^ v1145 ^ v1144 ^ v1143 ^ v1142 ^ v1141 ^ v1140 ^ v1139 ^ v1138 ^ v1137 ^ v1136 ^ v1135 ^ v1134 ^ v1133 ^ v1132 ^ v1131 ^ v1130 ^ v1129 ^ v1128 ^ v1127 ^ v1126 ^ v1125 ^ v1124 ^ v1123 ^ v1122 ^ v1121 ^ v1120 ^ v1119 ^ v1118 ^ v1117 ^ v1116 ^ v1115 ^ v1114 ^ v1113 ^ v1112 ^ v1111 ^ v1110 ^ v1109 ^ v1108 ^ v1107 ^ v1106 ^ v1105 ^ v1104 ^ v1103 ^ v1102 ^ v1101 ^ v1100 ^ v1099 ^ v1098 ^ v1097 ^ v1096;
  v799 = v798 ^ v1095 ^ v1094 ^ v1093 ^ v1092 ^ v1091 ^ v1090 ^ v1089 ^ v1088 ^ v1087 ^ v1086 ^ v1085 ^ v1084 ^ v1083 ^ v1082 ^ v1081 ^ v1080 ^ v1079 ^ v1078 ^ v1077 ^ v1076 ^ v1075 ^ v1074 ^ v1073 ^ v1072 ^ v1071 ^ v1070 ^ v368 ^ v1069 ^ v1068 ^ v1067 ^ v1066 ^ v1065 ^ v1064 ^ v1063 ^ v1062 ^ v1061 ^ v1060 ^ v1059 ^ v1058 ^ v1057 ^ v1056 ^ v1055 ^ v1054 ^ v1053 ^ v1052 ^ v1051 ^ v1050 ^ v1049 ^ v1048 ^ v1047 ^ v1046 ^ v1045 ^ v1044 ^ v1043 ^ v1042 ^ v1041 ^ v1040 ^ v1039 ^ v1038 ^ v1037 ^ v1036 ^ v1035 ^ v1034 ^ v1033 ^ v1032 ^ v1031 ^ v1030 ^ v1029 ^ v1028 ^ v1027 ^ v1026 ^ v1025 ^ v1024 ^ v1023 ^ v1022 ^ v1021 ^ v1020 ^ v1019 ^ v1018 ^ v1017 ^ v1016 ^ v1015 ^ v1014 ^ v1013 ^ v1012 ^ v1011 ^ v1010 ^ v1009 ^ v1008 ^ v1007 ^ v1006 ^ v1005 ^ v1004 ^ v1003 ^ v1002 ^ v1001 ^ v1000 ^ v999 ^ v998 ^ v997 ^ v996 ^ v995 ^ v994 ^ v993 ^ v992 ^ v991 ^ v990 ^ v989 ^ v988;
  v800 = v799 ^ v987 ^ v986 ^ v985 ^ v984 ^ v983 ^ v982 ^ v981 ^ v980 ^ v979 ^ v978 ^ v977 ^ v976 ^ v975 ^ v974 ^ v973 ^ v972 ^ v971 ^ v970 ^ v969 ^ v968 ^ v967 ^ v966 ^ v965 ^ v964 ^ v963 ^ v962 ^ v961 ^ v960 ^ v959 ^ v958 ^ v957 ^ v956 ^ v955 ^ v954 ^ v953 ^ v952 ^ v951 ^ v950 ^ v949 ^ v948 ^ v947 ^ v946 ^ v945 ^ v944 ^ v943 ^ v942 ^ v941 ^ v940 ^ v939 ^ v938 ^ v937 ^ v936 ^ v935 ^ v934 ^ v933 ^ v932 ^ v931 ^ v930 ^ v929 ^ v928 ^ v927 ^ v926 ^ v925 ^ v924 ^ v923 ^ v922 ^ v921 ^ v920 ^ v919 ^ v918 ^ v917 ^ v916 ^ v915 ^ v914 ^ v913 ^ v912 ^ v911 ^ v910 ^ v909 ^ v908 ^ v907 ^ v906 ^ v905 ^ v904 ^ v903 ^ v902 ^ v901 ^ v900 ^ v899 ^ v898 ^ v897 ^ v896 ^ v895 ^ v894 ^ v893 ^ v892 ^ v891 ^ v890 ^ v889 ^ v888 ^ v887 ^ v886 ^ v885 ^ v884 ^ v883 ^ v882;
  return v800 ^ v881 ^ v880 ^ v879 ^ v878 ^ v877 ^ v876 ^ v875 ^ v874 ^ v873 ^ v872 ^ v871 ^ v870 ^ v869 ^ v868 ^ v867 ^ v866 ^ v865 ^ v864 ^ v863 ^ v862 ^ v861 ^ v860 ^ v859 ^ v858 ^ v857 ^ v856 ^ v855 ^ v854 ^ v853 ^ v852 ^ v851 ^ v850 ^ v849 ^ v848 ^ v847 ^ v846 ^ v845 ^ v844 ^ v843 ^ v842 ^ v841 ^ v840 ^ v839 ^ v838 ^ v837 ^ v836 ^ v835 ^ v834 ^ v833 ^ v832 ^ v831 ^ v830 ^ v829 ^ v828 ^ v827 ^ v826 ^ v825 ^ v824 ^ v823 ^ v822 ^ v821 ^ v820 ^ v819 ^ v818 ^ v817 ^ v816 ^ v815 ^ v814 ^ v813 ^ v812 ^ v811 ^ v810 ^ v809 ^ v808 ^ v807 ^ v806 ^ v805 ^ v804 ^ v803 ^ v802 ^ v791 ^ v794 ^ v796;
}