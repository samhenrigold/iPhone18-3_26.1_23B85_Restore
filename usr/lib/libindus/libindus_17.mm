uint64_t XofSvcsIf::GetGpsSvOrbData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = *MEMORY[0x29EDCA608];
  v9[0] = a2;
  std::mutex::lock((a1 + 1136));
  v7 = XofSvcsIf::GetExtEphData<std::map<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,XofGpsQzssEphemeris>(a1, 0, a3, v9, a1 + 856, a4);
  std::mutex::unlock((a1 + 1136));
  return v7;
}

uint64_t XofSvcsIf::GetExtEphData<std::map<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,XofGpsQzssEphemeris>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v13 = *MEMORY[0x29EDCA608];
  if (*(a1 + 1128) == 1 && (v8 = a3, v9 = a2, v12 = 0, XofSvcsIf::GetExtEphBlockNum(a1, a2, *a4, &v12) == 1))
  {
    return XofSvcsIf::GetExtEphData<std::map<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,XofGpsQzssEphemeris>(a1, v9, v8, v12, a5, a6);
  }

  else
  {
    return 7;
  }
}

uint64_t XofSvcsIf::GetExtEphData<std::map<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,XofGpsQzssEphemeris>(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  result = 7;
  if (a2 != 7 && *(a1 + 1128) == 1)
  {
    v8 = a1 + 16;
    if (*(v8 + 48 * a2 + 3))
    {
      v9 = *(v8 + 48 * a2 + 8);
      if (a2 == 1)
      {
        v10 = -120;
      }

      else
      {
        v10 = -1;
      }

      if (a2 == 2)
      {
        v10 = 63;
      }

      if ((v9 >> (v10 + a3)))
      {
        if (a4 <= 0x2A)
        {
          v13 = *(a5 + 8);
          v11 = a5 + 8;
          v12 = v13;
          if (v13)
          {
            v14 = v11;
            do
            {
              v15 = *(v12 + 32);
              v16 = v15 >= a4;
              v17 = v15 < a4;
              if (v16)
              {
                v14 = v12;
              }

              v12 = *(v12 + 8 * v17);
            }

            while (v12);
            if (v14 == v11)
            {
              return 7;
            }

            if (*(v14 + 32) > a4)
            {
              return 7;
            }

            v20 = *(v14 + 48);
            v18 = v14 + 48;
            v19 = v20;
            if (!v20)
            {
              return 7;
            }

            v21 = v18;
            do
            {
              v22 = *(v19 + 28);
              v16 = v22 >= a3;
              v23 = v22 < a3;
              if (v16)
              {
                v21 = v19;
              }

              v19 = *(v19 + 8 * v23);
            }

            while (v19);
            if (v21 == v18 || *(v21 + 28) > a3)
            {
              return 7;
            }

            else
            {
              *a6 = *(v21 + 32);
              v24 = *(v21 + 48);
              v25 = *(v21 + 64);
              v26 = *(v21 + 80);
              *(a6 + 64) = *(v21 + 96);
              *(a6 + 32) = v25;
              *(a6 + 48) = v26;
              *(a6 + 16) = v24;
              return 1;
            }
          }
        }

        else
        {
          return 9;
        }
      }
    }
  }

  return result;
}

uint64_t XofSvcsIf::GetGloSvOrbData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = *MEMORY[0x29EDCA608];
  v9[0] = a2;
  std::mutex::lock((a1 + 1136));
  v7 = XofSvcsIf::GetExtEphData<std::map<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,XofGpsQzssEphemeris>(a1, 4, a3, v9, a1 + 880, a4);
  std::mutex::unlock((a1 + 1136));
  return v7;
}

uint64_t XofSvcsIf::GetQzssSvOrbData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = *MEMORY[0x29EDCA608];
  v9[0] = a2;
  std::mutex::lock((a1 + 1136));
  v7 = XofSvcsIf::GetExtEphData<std::map<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,XofGpsQzssEphemeris>(a1, 2, a3, v9, a1 + 928, a4);
  std::mutex::unlock((a1 + 1136));
  return v7;
}

uint64_t XofSvcsIf::GetGalSvOrbData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = *MEMORY[0x29EDCA608];
  v9[0] = a2;
  std::mutex::lock((a1 + 1136));
  v7 = XofSvcsIf::GetExtEphData<std::map<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,XofGpsQzssEphemeris>(a1, 3, a3, v9, a1 + 904, a4);
  std::mutex::unlock((a1 + 1136));
  return v7;
}

uint64_t XofSvcsIf::GetBdsSvOrbData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = *MEMORY[0x29EDCA608];
  v9[0] = a2;
  std::mutex::lock((a1 + 1136));
  v7 = XofSvcsIf::GetExtEphData<std::map<unsigned char,std::map<unsigned char,XofBeidouEphemeris>>,XofBeidouEphemeris>(a1, 5, a3, v9, a1 + 952, a4);
  std::mutex::unlock((a1 + 1136));
  return v7;
}

uint64_t XofSvcsIf::GetExtEphData<std::map<unsigned char,std::map<unsigned char,XofBeidouEphemeris>>,XofBeidouEphemeris>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v13 = *MEMORY[0x29EDCA608];
  if (*(a1 + 1128) == 1 && (v8 = a3, v9 = a2, v12 = 0, XofSvcsIf::GetExtEphBlockNum(a1, a2, *a4, &v12) == 1))
  {
    return XofSvcsIf::GetExtEphData<std::map<unsigned char,std::map<unsigned char,XofBeidouEphemeris>>,XofBeidouEphemeris>(a1, v9, v8, v12, a5, a6);
  }

  else
  {
    return 7;
  }
}

uint64_t XofSvcsIf::GetExtEphData<std::map<unsigned char,std::map<unsigned char,XofBeidouEphemeris>>,XofBeidouEphemeris>(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  result = 7;
  if (a2 != 7 && *(a1 + 1128) == 1)
  {
    v8 = a1 + 16;
    if (*(v8 + 48 * a2 + 3))
    {
      v9 = *(v8 + 48 * a2 + 8);
      if (a2 == 1)
      {
        v10 = -120;
      }

      else
      {
        v10 = -1;
      }

      if (a2 == 2)
      {
        v10 = 63;
      }

      if ((v9 >> (v10 + a3)))
      {
        if (a4 <= 0x2A)
        {
          v13 = *(a5 + 8);
          v11 = a5 + 8;
          v12 = v13;
          if (v13)
          {
            v14 = v11;
            do
            {
              v15 = *(v12 + 32);
              v16 = v15 >= a4;
              v17 = v15 < a4;
              if (v16)
              {
                v14 = v12;
              }

              v12 = *(v12 + 8 * v17);
            }

            while (v12);
            if (v14 == v11)
            {
              return 7;
            }

            if (*(v14 + 32) > a4)
            {
              return 7;
            }

            v20 = *(v14 + 48);
            v18 = v14 + 48;
            v19 = v20;
            if (!v20)
            {
              return 7;
            }

            v21 = v18;
            do
            {
              v22 = *(v19 + 32);
              v16 = v22 >= a3;
              v23 = v22 < a3;
              if (v16)
              {
                v21 = v19;
              }

              v19 = *(v19 + 8 * v23);
            }

            while (v19);
            if (v21 == v18 || *(v21 + 32) > a3)
            {
              return 7;
            }

            else
            {
              *a6 = *(v21 + 40);
              v24 = *(v21 + 56);
              v25 = *(v21 + 72);
              v26 = *(v21 + 104);
              *(a6 + 48) = *(v21 + 88);
              *(a6 + 64) = v26;
              *(a6 + 16) = v24;
              *(a6 + 32) = v25;
              v27 = *(v21 + 120);
              v28 = *(v21 + 136);
              v29 = *(v21 + 152);
              *(a6 + 126) = *(v21 + 166);
              *(a6 + 96) = v28;
              *(a6 + 112) = v29;
              *(a6 + 80) = v27;
              return 1;
            }
          }
        }

        else
        {
          return 9;
        }
      }
    }
  }

  return result;
}

uint64_t XofSvcsIf::GetNavicSvOrbData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = *MEMORY[0x29EDCA608];
  v9[0] = a2;
  std::mutex::lock((a1 + 1136));
  v7 = XofSvcsIf::GetExtEphData<std::map<unsigned char,std::map<unsigned char,XofNavicEphemeris>>,XofNavicEphemeris>(a1, 6, a3, v9, a1 + 976, a4);
  std::mutex::unlock((a1 + 1136));
  return v7;
}

uint64_t XofSvcsIf::GetExtEphData<std::map<unsigned char,std::map<unsigned char,XofNavicEphemeris>>,XofNavicEphemeris>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v13 = *MEMORY[0x29EDCA608];
  if (*(a1 + 1128) == 1 && (v8 = a3, v9 = a2, v12 = 0, XofSvcsIf::GetExtEphBlockNum(a1, a2, *a4, &v12) == 1))
  {
    return XofSvcsIf::GetExtEphData<std::map<unsigned char,std::map<unsigned char,XofNavicEphemeris>>,XofNavicEphemeris>(a1, v9, v8, v12, a5, a6);
  }

  else
  {
    return 7;
  }
}

uint64_t XofSvcsIf::GetExtEphData<std::map<unsigned char,std::map<unsigned char,XofNavicEphemeris>>,XofNavicEphemeris>(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  result = 7;
  if (a2 != 7 && *(a1 + 1128) == 1)
  {
    v8 = a1 + 16;
    if (*(v8 + 48 * a2 + 3))
    {
      v9 = *(v8 + 48 * a2 + 8);
      if (a2 == 1)
      {
        v10 = -120;
      }

      else
      {
        v10 = -1;
      }

      if (a2 == 2)
      {
        v10 = 63;
      }

      if ((v9 >> (v10 + a3)))
      {
        if (a4 <= 0x2A)
        {
          v13 = *(a5 + 8);
          v11 = a5 + 8;
          v12 = v13;
          if (v13)
          {
            v14 = v11;
            do
            {
              v15 = *(v12 + 32);
              v16 = v15 >= a4;
              v17 = v15 < a4;
              if (v16)
              {
                v14 = v12;
              }

              v12 = *(v12 + 8 * v17);
            }

            while (v12);
            if (v14 == v11)
            {
              return 7;
            }

            if (*(v14 + 32) > a4)
            {
              return 7;
            }

            v20 = *(v14 + 48);
            v18 = v14 + 48;
            v19 = v20;
            if (!v20)
            {
              return 7;
            }

            v21 = v18;
            do
            {
              v22 = *(v19 + 28);
              v16 = v22 >= a3;
              v23 = v22 < a3;
              if (v16)
              {
                v21 = v19;
              }

              v19 = *(v19 + 8 * v23);
            }

            while (v19);
            if (v21 == v18 || *(v21 + 28) > a3)
            {
              return 7;
            }

            else
            {
              *a6 = *(v21 + 32);
              v24 = *(v21 + 48);
              v25 = *(v21 + 64);
              v26 = *(v21 + 80);
              *(a6 + 64) = *(v21 + 96);
              *(a6 + 32) = v25;
              *(a6 + 48) = v26;
              *(a6 + 16) = v24;
              return 1;
            }
          }
        }

        else
        {
          return 9;
        }
      }
    }
  }

  return result;
}

uint64_t XofSvcsIf::GetRtiData(uint64_t a1, int a2, _OWORD *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  std::mutex::lock((a1 + 1200));
  if (*(a1 + 1132) == 1)
  {
    if (a2 == 7)
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v6 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Unknown constellation\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 87, "GetRtiData");
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      v7 = 9;
    }

    else
    {
      *a3 = *(a1 + 16 * a2 + 1016);
      v7 = 1;
    }
  }

  else
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: RTI data is not parsed yet!\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 87, "GetRtiData");
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    v7 = 7;
  }

  std::mutex::unlock((a1 + 1200));
  return v7;
}

void XofSvcsIf::ClrBceOrbData(XofSvcsIf *this)
{
  v66 = *MEMORY[0x29EDCA608];
  std::mutex::lock((this + 1136));
  v45 = &v46;
  v46 = 0;
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = &v49;
  v51 = &v52;
  v52 = 0;
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = &v55;
  v57 = &v58;
  v58 = 0;
  v61 = 0;
  v62 = 0;
  v59 = 0;
  v60 = &v61;
  v64 = 0;
  v65 = 0;
  v63 = &v64;
  v2 = this + 696;
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(this + 688, *(this + 87));
  v3 = v46;
  *(this + 86) = &v46;
  *(this + 87) = v3;
  v4 = v47;
  *(this + 88) = v47;
  if (v4)
  {
    v3[2] = v2;
    v45 = &v46;
    v46 = 0;
    v47 = 0;
  }

  else
  {
    *(this + 86) = v2;
  }

  v5 = this + 720;
  std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(*(this + 90));
  v6 = v49;
  *(this + 89) = v48;
  *(this + 90) = v6;
  v7 = v50;
  *(this + 91) = v50;
  if (v7)
  {
    v6[2] = v5;
    v48 = &v49;
    v49 = 0;
    v50 = 0;
  }

  else
  {
    *(this + 89) = v5;
  }

  v8 = this + 744;
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(this + 736, *(this + 93));
  v9 = v52;
  *(this + 92) = v51;
  *(this + 93) = v9;
  v10 = v53;
  *(this + 94) = v53;
  if (v10)
  {
    v9[2] = v8;
    v51 = &v52;
    v52 = 0;
    v53 = 0;
  }

  else
  {
    *(this + 92) = v8;
  }

  v11 = this + 768;
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(this + 760, *(this + 96));
  v12 = v55;
  *(this + 95) = v54;
  *(this + 96) = v12;
  v13 = v56;
  *(this + 97) = v56;
  if (v13)
  {
    v12[2] = v11;
    v54 = &v55;
    v55 = 0;
    v56 = 0;
  }

  else
  {
    *(this + 95) = v11;
  }

  v14 = this + 792;
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(this + 784, *(this + 99));
  v15 = v58;
  *(this + 98) = v57;
  *(this + 99) = v15;
  v16 = v59;
  *(this + 100) = v59;
  if (v16)
  {
    v15[2] = v14;
    v57 = &v58;
    v58 = 0;
    v59 = 0;
  }

  else
  {
    *(this + 98) = v14;
  }

  v17 = this + 816;
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(this + 808, *(this + 102));
  v18 = v61;
  *(this + 101) = v60;
  *(this + 102) = v18;
  v19 = v62;
  *(this + 103) = v62;
  if (v19)
  {
    v18[2] = v17;
    v60 = &v61;
    v61 = 0;
    v62 = 0;
  }

  else
  {
    *(this + 101) = v17;
  }

  v20 = this + 840;
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(this + 832, *(this + 105));
  v21 = v64;
  *(this + 104) = v63;
  *(this + 105) = v21;
  v22 = v65;
  *(this + 106) = v65;
  if (v22)
  {
    v21[2] = v20;
    v21 = 0;
    v63 = &v64;
    v64 = 0;
    v65 = 0;
  }

  else
  {
    *(this + 104) = v20;
  }

  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(&v63, v21);
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(&v60, v61);
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(&v57, v58);
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(&v54, v55);
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(&v51, v52);
  std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(v49);
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(&v45, v46);
  v45 = &v46;
  v46 = 0;
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = &v49;
  v51 = &v52;
  v52 = 0;
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = &v55;
  v57 = &v58;
  v58 = 0;
  v61 = 0;
  v62 = 0;
  v59 = 0;
  v60 = &v61;
  v23 = this + 552;
  std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(*(this + 69));
  v24 = v46;
  *(this + 68) = v45;
  *(this + 69) = v24;
  v25 = v47;
  *(this + 70) = v47;
  if (v25)
  {
    v24[2] = v23;
    v45 = &v46;
    v46 = 0;
    v47 = 0;
  }

  else
  {
    *(this + 68) = v23;
  }

  v26 = this + 576;
  std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(*(this + 72));
  v27 = v49;
  *(this + 71) = v48;
  *(this + 72) = v27;
  v28 = v50;
  *(this + 73) = v50;
  if (v28)
  {
    v27[2] = v26;
    v48 = &v49;
    v49 = 0;
    v50 = 0;
  }

  else
  {
    *(this + 71) = v26;
  }

  v29 = this + 600;
  std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(*(this + 75));
  v30 = v52;
  *(this + 74) = v51;
  *(this + 75) = v30;
  v31 = v53;
  *(this + 76) = v53;
  if (v31)
  {
    v30[2] = v29;
    v51 = &v52;
    v52 = 0;
    v53 = 0;
  }

  else
  {
    *(this + 74) = v29;
  }

  v32 = this + 624;
  std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(*(this + 78));
  v33 = v55;
  *(this + 77) = v54;
  *(this + 78) = v33;
  v34 = v56;
  *(this + 79) = v56;
  if (v34)
  {
    v33[2] = v32;
    v54 = &v55;
    v55 = 0;
    v56 = 0;
  }

  else
  {
    *(this + 77) = v32;
  }

  v35 = this + 648;
  std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(*(this + 81));
  v36 = v58;
  *(this + 80) = v57;
  *(this + 81) = v36;
  v37 = v59;
  *(this + 82) = v59;
  if (v37)
  {
    v36[2] = v35;
    v57 = &v58;
    v58 = 0;
    v59 = 0;
  }

  else
  {
    *(this + 80) = v35;
  }

  v38 = this + 672;
  std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(*(this + 84));
  v39 = v61;
  *(this + 83) = v60;
  *(this + 84) = v39;
  v40 = v62;
  *(this + 85) = v62;
  if (v40)
  {
    v39[2] = v38;
    v39 = 0;
    v60 = &v61;
    v61 = 0;
    v62 = 0;
  }

  else
  {
    *(this + 83) = v38;
  }

  std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(v39);
  std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(v58);
  std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(v55);
  std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(v52);
  std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(v49);
  std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(v46);
  *(this + 46) = 0;
  v41 = this + 444;
  v42 = 96;
  do
  {
    *(v41 + 5) = 0;
    *v41 = 0;
    *(v41 + 7) = 0;
    v41 += 16;
    v42 -= 16;
  }

  while (v42);
  *(this + 47) = 0;
  *(this + 48) = 0;
  v43 = this + 17;
  v44 = 7;
  *(this + 98) = 0;
  do
  {
    *v43 = 0;
    *(v43 + 15) = 0uLL;
    *(v43 + 31) = 0uLL;
    v43 += 48;
    --v44;
  }

  while (v44);
  std::mutex::unlock((this + 1136));
}

uint64_t XofSvcsIf::GetBlockLen(uint64_t a1, int a2)
{
  std::mutex::lock((a1 + 1136));
  v4 = 0;
  if (a2 != 7 && *(a1 + 1128) == 1)
  {
    v4 = *(a1 + 48 * a2 + 21);
  }

  std::mutex::unlock((a1 + 1136));
  return v4;
}

uint64_t XofSvcsIf::GetXofInjctTime(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  std::mutex::lock((a1 + 1136));
  if (*(a1 + 1128) == 1)
  {
    *a2 = *(a1 + 2);
    *(a2 + 4) = *(a1 + 4);
    v4 = 1;
  }

  else
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: XOF file has not been injected!\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 87, "GetXofInjctTime");
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    v4 = 7;
  }

  std::mutex::unlock((a1 + 1136));
  return v4;
}

uint64_t XofSvcsIf::GetRtiInjctTime(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  std::mutex::lock((a1 + 1200));
  if (*(a1 + 1132) == 1)
  {
    *a2 = *(a1 + 1002);
    *(a2 + 4) = *(a1 + 1004);
    v4 = 1;
  }

  else
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: RTI file has not been injected!\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 87, "GetRtiInjctTime");
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    v4 = 7;
  }

  std::mutex::unlock((a1 + 1200));
  return v4;
}

uint64_t XofSvcsIf::GetXofExtEphStartTime(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  std::mutex::lock((a1 + 1136));
  if (*(a1 + 1128) == 1)
  {
    *a2 = *(a1 + 8);
    *(a2 + 4) = *(a1 + 12);
    v4 = 1;
  }

  else
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: XOF file has not been injected!\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 87, "GetXofExtEphStartTime");
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    v4 = 7;
  }

  std::mutex::unlock((a1 + 1136));
  return v4;
}

uint64_t XofSvcsIf::GetXofBrdSvBitMask(uint64_t a1, int a2, _OWORD *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  std::mutex::lock((a1 + 1136));
  if (*(a1 + 1128) == 1)
  {
    if (a2 == 7)
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v6 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Invalid input, unknown constellation\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 87, "GetXofBrdSvBitMask");
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      v7 = 9;
    }

    else
    {
      *a3 = *(a1 + 48 * a2 + 32);
      v7 = 1;
    }
  }

  else
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: XOF file has not been injected!\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 87, "GetXofBrdSvBitMask");
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    v7 = 7;
  }

  std::mutex::unlock((a1 + 1136));
  return v7;
}

uint64_t XofSvcsIf::GetXofDoNotUseSvBitMask(uint64_t a1, int a2, _OWORD *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  std::mutex::lock((a1 + 1136));
  if (*(a1 + 1128) == 1)
  {
    if (a2 == 7)
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v6 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Invalid input, unknown constellation\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 87, "GetXofDoNotUseSvBitMask");
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      v7 = 9;
    }

    else
    {
      *a3 = *(a1 + 48 * a2 + 48);
      v7 = 1;
    }
  }

  else
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: XOF file has not been injected!\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 87, "GetXofDoNotUseSvBitMask");
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    v7 = 7;
  }

  std::mutex::unlock((a1 + 1136));
  return v7;
}

uint64_t XofSvcsIf::DecodeXofFormatVersion(uint64_t a1, void *a2, unsigned __int16 *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  XofHeaderCodec::XofHeaderCodec(v9);
  if (XofHeaderCodec::DecodeXofFormatVersion(v9, a2, a3) == 1)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: XOF format version is [%u]\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 73, "DecodeXofFormatVersion", *a3);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v6 = 1;
  }

  else
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Could not decode XOF format version!\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 73, "DecodeXofFormatVersion");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v6 = 5;
  }

  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofConstellationHeaderCodec,XofIntegralType<unsigned long long>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>>::~__tuple_impl(v9);
  return v6;
}

void sub_299026C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofConstellationHeaderCodec,XofIntegralType<unsigned long long>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>>::~__tuple_impl(va);
  _Unwind_Resume(a1);
}

uint64_t XofSvcsIf::DecodeRtiFormatVersion(uint64_t a1, void *a2, unsigned __int16 *a3)
{
  v21 = *MEMORY[0x29EDCA608];
  RtiDataCodec::RtiDataCodec(v8);
  if (RtiDataCodec::DecodeRtiFormatVersion(v8, a2, a3) == 1)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: RTI format version is [%u]\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 73, "DecodeRtiFormatVersion", *a3);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v6 = 1;
  }

  else
  {
    v6 = 5;
  }

  if (v19 < 0)
  {
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  *__str = &v15;
  std::vector<RtiPayloadCodec::Payload>::__destroy_vector::operator()[abi:ne200100](__str);
  if (v14 < 0)
  {
    operator delete(v13);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_299026DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  RtiDataCodec::~RtiDataCodec(va);
  _Unwind_Resume(a1);
}

void XofSvcsIf::XofSvcsIf(XofSvcsIf *this)
{
  v1 = 0;
  *(this + 3) = 0;
  *this = 0;
  *(this + 4) = 0;
  do
  {
    v2 = this + v1;
    *(v2 + 10) = 0;
    *(v2 + 4) = 0;
    *(v2 + 24) = 0uLL;
    *(v2 + 40) = 0uLL;
    v1 += 48;
    *(v2 + 7) = 0;
  }

  while (v1 != 336);
  v3 = 0;
  *(this + 44) = 0;
  *(this + 90) = 0;
  *(this + 47) = 0;
  *(this + 48) = 0;
  *(this + 46) = 0;
  *(this + 98) = 0;
  do
  {
    *(this + v3 + 396) = 25344;
    v3 += 2;
  }

  while (v3 != 48);
  for (i = 0; i != 96; i += 16)
  {
    v5 = (this + i + 444);
    *(this + i + 458) = 0;
    *v5 = 0;
    *(v5 + 5) = 0;
  }

  *(this + 552) = 0u;
  *(this + 68) = this + 552;
  *(this + 36) = 0u;
  *(this + 71) = this + 576;
  *(this + 600) = 0u;
  *(this + 74) = this + 600;
  *(this + 39) = 0u;
  *(this + 77) = this + 624;
  *(this + 648) = 0u;
  *(this + 80) = this + 648;
  *(this + 42) = 0u;
  *(this + 83) = this + 672;
  *(this + 696) = 0u;
  *(this + 86) = this + 696;
  *(this + 45) = 0u;
  *(this + 89) = this + 720;
  *(this + 744) = 0u;
  *(this + 92) = this + 744;
  *(this + 48) = 0u;
  *(this + 95) = this + 768;
  *(this + 792) = 0u;
  *(this + 98) = this + 792;
  *(this + 51) = 0u;
  *(this + 101) = this + 816;
  *(this + 840) = 0u;
  *(this + 104) = this + 840;
  *(this + 54) = 0u;
  *(this + 107) = this + 864;
  *(this + 888) = 0u;
  *(this + 110) = this + 888;
  *(this + 57) = 0u;
  *(this + 113) = this + 912;
  *(this + 936) = 0u;
  *(this + 116) = this + 936;
  *(this + 60) = 0u;
  *(this + 119) = this + 960;
  *(this + 984) = 0u;
  *(this + 122) = this + 984;
  *(this + 1096) = 0u;
  *(this + 1112) = 0u;
  *(this + 1064) = 0u;
  *(this + 1080) = 0u;
  *(this + 1032) = 0u;
  *(this + 1048) = 0u;
  *(this + 1016) = 0u;
  *(this + 142) = 850045863;
  *(this + 149) = 0;
  *(this + 1160) = 0u;
  *(this + 1176) = 0u;
  *(this + 1144) = 0u;
  *(this + 150) = 850045863;
  *(this + 157) = 0;
  *(this + 1224) = 0u;
  *(this + 1240) = 0u;
  *(this + 1208) = 0u;
}

uint64_t **std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__tree_node<std::__value_type<unsigned char,XofGpsQzssAlmanac>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  v23 = *MEMORY[0x29EDCA608];
  if (result[2])
  {
    v6 = *result;
    v8 = result + 1;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v9 = v6[1];
    }

    else
    {
      v9 = v6;
    }

    v20 = result;
    v21 = v9;
    v22 = v9;
    if (v9)
    {
      v10 = std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::__detach_next(v9);
      v21 = v10;
      if (a2 != a3)
      {
        v11 = a2;
        do
        {
          v12 = v10;
          v13 = *(v11 + 28);
          *(v9 + 28) = v13;
          v14 = *(v11 + 3);
          *(v9 + 32) = *(v11 + 2);
          *(v9 + 48) = v14;
          v15 = *v8;
          v16 = (v5 + 1);
          v17 = (v5 + 1);
          if (*v8)
          {
            do
            {
              while (1)
              {
                v16 = v15;
                if (v13 >= *(v15 + 28))
                {
                  break;
                }

                v15 = *v15;
                v17 = v16;
                if (!*v16)
                {
                  goto LABEL_14;
                }
              }

              v15 = v15[1];
            }

            while (v15);
            v17 = v16 + 1;
          }

LABEL_14:
          std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::__insert_node_at(v5, v16, v17, v9);
          if (v12)
          {
            v10 = std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::__detach_next(v12);
          }

          else
          {
            v10 = 0;
          }

          v18 = v11[1];
          if (v18)
          {
            do
            {
              a2 = v18;
              v18 = *v18;
            }

            while (v18);
          }

          else
          {
            do
            {
              a2 = v11[2];
              v19 = *a2 == v11;
              v11 = a2;
            }

            while (!v19);
          }

          if (!v12)
          {
            break;
          }

          v9 = v12;
          v11 = a2;
        }

        while (a2 != a3);
        v21 = v10;
        v22 = v12;
      }
    }

    result = std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v20);
  }

  if (a2 != a3)
  {
    operator new();
  }

  return result;
}

void *std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t **std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__tree_node<std::__value_type<unsigned char,XofGpsQzssEphemeris>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  v25 = *MEMORY[0x29EDCA608];
  if (result[2])
  {
    v6 = *result;
    v8 = result + 1;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v9 = v6[1];
    }

    else
    {
      v9 = v6;
    }

    v22 = result;
    v23 = v9;
    v24 = v9;
    if (v9)
    {
      v10 = std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::__detach_next(v9);
      v23 = v10;
      if (a2 != a3)
      {
        v11 = a2;
        do
        {
          v12 = v10;
          v13 = *(v11 + 28);
          *(v9 + 28) = v13;
          *(v9 + 32) = *(v11 + 2);
          v14 = *(v11 + 3);
          v15 = *(v11 + 4);
          v16 = *(v11 + 5);
          *(v9 + 96) = v11[12];
          *(v9 + 64) = v15;
          *(v9 + 80) = v16;
          *(v9 + 48) = v14;
          v17 = *v8;
          v18 = (v5 + 1);
          v19 = (v5 + 1);
          if (*v8)
          {
            do
            {
              while (1)
              {
                v18 = v17;
                if (v13 >= *(v17 + 28))
                {
                  break;
                }

                v17 = *v17;
                v19 = v18;
                if (!*v18)
                {
                  goto LABEL_14;
                }
              }

              v17 = v17[1];
            }

            while (v17);
            v19 = v18 + 1;
          }

LABEL_14:
          std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::__insert_node_at(v5, v18, v19, v9);
          if (v12)
          {
            v10 = std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::__detach_next(v12);
          }

          else
          {
            v10 = 0;
          }

          v20 = v11[1];
          if (v20)
          {
            do
            {
              a2 = v20;
              v20 = *v20;
            }

            while (v20);
          }

          else
          {
            do
            {
              a2 = v11[2];
              v21 = *a2 == v11;
              v11 = a2;
            }

            while (!v21);
          }

          if (!v12)
          {
            break;
          }

          v9 = v12;
          v11 = a2;
        }

        while (a2 != a3);
        v23 = v10;
        v24 = v12;
      }
    }

    result = std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v22);
  }

  if (a2 != a3)
  {
    operator new();
  }

  return result;
}

uint64_t std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(*a1, v2);
  }

  return a1;
}

uint64_t **std::__tree<std::__value_type<unsigned char,XofGalileoEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGalileoEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGalileoEphemeris>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned char,XofGalileoEphemeris>,std::__tree_node<std::__value_type<unsigned char,XofGalileoEphemeris>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  v25 = *MEMORY[0x29EDCA608];
  if (result[2])
  {
    v6 = *result;
    v8 = result + 1;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v9 = v6[1];
    }

    else
    {
      v9 = v6;
    }

    v22 = result;
    v23 = v9;
    v24 = v9;
    if (v9)
    {
      v10 = std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::__detach_next(v9);
      v23 = v10;
      if (a2 != a3)
      {
        v11 = a2;
        do
        {
          v12 = v10;
          v13 = *(v11 + 28);
          *(v9 + 28) = v13;
          *(v9 + 32) = *(v11 + 2);
          v14 = *(v11 + 3);
          v15 = *(v11 + 4);
          v16 = *(v11 + 5);
          *(v9 + 96) = v11[12];
          *(v9 + 64) = v15;
          *(v9 + 80) = v16;
          *(v9 + 48) = v14;
          v17 = *v8;
          v18 = (v5 + 1);
          v19 = (v5 + 1);
          if (*v8)
          {
            do
            {
              while (1)
              {
                v18 = v17;
                if (v13 >= *(v17 + 28))
                {
                  break;
                }

                v17 = *v17;
                v19 = v18;
                if (!*v18)
                {
                  goto LABEL_14;
                }
              }

              v17 = v17[1];
            }

            while (v17);
            v19 = v18 + 1;
          }

LABEL_14:
          std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::__insert_node_at(v5, v18, v19, v9);
          if (v12)
          {
            v10 = std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::__detach_next(v12);
          }

          else
          {
            v10 = 0;
          }

          v20 = v11[1];
          if (v20)
          {
            do
            {
              a2 = v20;
              v20 = *v20;
            }

            while (v20);
          }

          else
          {
            do
            {
              a2 = v11[2];
              v21 = *a2 == v11;
              v11 = a2;
            }

            while (!v21);
          }

          if (!v12)
          {
            break;
          }

          v9 = v12;
          v11 = a2;
        }

        while (a2 != a3);
        v23 = v10;
        v24 = v12;
      }
    }

    result = std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v22);
  }

  if (a2 != a3)
  {
    operator new();
  }

  return result;
}

uint64_t **std::__tree<std::__value_type<unsigned char,XofBeidouEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofBeidouEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofBeidouEphemeris>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned char,XofBeidouEphemeris>,std::__tree_node<std::__value_type<unsigned char,XofBeidouEphemeris>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  v28 = *MEMORY[0x29EDCA608];
  if (result[2])
  {
    v6 = *result;
    v8 = result + 1;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v9 = v6[1];
    }

    else
    {
      v9 = v6;
    }

    v25 = result;
    v26 = v9;
    v27 = v9;
    if (v9)
    {
      v10 = std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::__detach_next(v9);
      v26 = v10;
      if (a2 != a3)
      {
        v11 = a2;
        do
        {
          v12 = v10;
          v13 = *(v11 + 32);
          *(v9 + 32) = v13;
          *(v9 + 40) = *(v11 + 5);
          v14 = *(v11 + 7);
          v15 = *(v11 + 9);
          v16 = *(v11 + 11);
          *(v9 + 104) = *(v11 + 13);
          *(v9 + 88) = v16;
          *(v9 + 72) = v15;
          *(v9 + 56) = v14;
          v17 = *(v11 + 15);
          v18 = *(v11 + 17);
          v19 = *(v11 + 19);
          *(v9 + 166) = *(v11 + 166);
          *(v9 + 152) = v19;
          *(v9 + 136) = v18;
          *(v9 + 120) = v17;
          v20 = *v8;
          v21 = (v5 + 1);
          v22 = (v5 + 1);
          if (*v8)
          {
            do
            {
              while (1)
              {
                v21 = v20;
                if (v13 >= *(v20 + 32))
                {
                  break;
                }

                v20 = *v20;
                v22 = v21;
                if (!*v21)
                {
                  goto LABEL_14;
                }
              }

              v20 = v20[1];
            }

            while (v20);
            v22 = v21 + 1;
          }

LABEL_14:
          std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::__insert_node_at(v5, v21, v22, v9);
          if (v12)
          {
            v10 = std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::__detach_next(v12);
          }

          else
          {
            v10 = 0;
          }

          v23 = v11[1];
          if (v23)
          {
            do
            {
              a2 = v23;
              v23 = *v23;
            }

            while (v23);
          }

          else
          {
            do
            {
              a2 = v11[2];
              v24 = *a2 == v11;
              v11 = a2;
            }

            while (!v24);
          }

          if (!v12)
          {
            break;
          }

          v9 = v12;
          v11 = a2;
        }

        while (a2 != a3);
        v26 = v10;
        v27 = v12;
      }
    }

    result = std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v25);
  }

  if (a2 != a3)
  {
    operator new();
  }

  return result;
}

uint64_t **std::__tree<std::__value_type<unsigned char,XofNavicEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofNavicEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofNavicEphemeris>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned char,XofNavicEphemeris>,std::__tree_node<std::__value_type<unsigned char,XofNavicEphemeris>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  v25 = *MEMORY[0x29EDCA608];
  if (result[2])
  {
    v6 = *result;
    v8 = result + 1;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v9 = v6[1];
    }

    else
    {
      v9 = v6;
    }

    v22 = result;
    v23 = v9;
    v24 = v9;
    if (v9)
    {
      v10 = std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::__detach_next(v9);
      v23 = v10;
      if (a2 != a3)
      {
        v11 = a2;
        do
        {
          v12 = v10;
          v13 = *(v11 + 28);
          *(v9 + 28) = v13;
          *(v9 + 32) = *(v11 + 2);
          v14 = *(v11 + 3);
          v15 = *(v11 + 4);
          v16 = *(v11 + 5);
          *(v9 + 96) = *(v11 + 24);
          *(v9 + 64) = v15;
          *(v9 + 80) = v16;
          *(v9 + 48) = v14;
          v17 = *v8;
          v18 = (v5 + 1);
          v19 = (v5 + 1);
          if (*v8)
          {
            do
            {
              while (1)
              {
                v18 = v17;
                if (v13 >= *(v17 + 28))
                {
                  break;
                }

                v17 = *v17;
                v19 = v18;
                if (!*v18)
                {
                  goto LABEL_14;
                }
              }

              v17 = v17[1];
            }

            while (v17);
            v19 = v18 + 1;
          }

LABEL_14:
          std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::__insert_node_at(v5, v18, v19, v9);
          if (v12)
          {
            v10 = std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::__detach_next(v12);
          }

          else
          {
            v10 = 0;
          }

          v20 = v11[1];
          if (v20)
          {
            do
            {
              a2 = v20;
              v20 = *v20;
            }

            while (v20);
          }

          else
          {
            do
            {
              a2 = v11[2];
              v21 = *a2 == v11;
              v11 = a2;
            }

            while (!v21);
          }

          if (!v12)
          {
            break;
          }

          v9 = v12;
          v11 = a2;
        }

        while (a2 != a3);
        v23 = v10;
        v24 = v12;
      }
    }

    result = std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v22);
  }

  if (a2 != a3)
  {
    operator new();
  }

  return result;
}

uint64_t **std::__tree<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::__tree_node<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,void *> *,long>>(uint64_t **result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  v19 = *MEMORY[0x29EDCA608];
  if (result[2])
  {
    v6 = *result;
    v8 = result + 1;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v9 = v6[1];
    }

    else
    {
      v9 = v6;
    }

    v16 = result;
    v17 = v9;
    v18 = v9;
    if (v9)
    {
      v17 = std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::__detach_next(v9);
      if (a2 != a3)
      {
        v10 = a2;
        do
        {
          *(v9 + 32) = *(v10 + 32);
          if (v9 != v10)
          {
            std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__tree_node<std::__value_type<unsigned char,XofGpsQzssEphemeris>,void *> *,long>>(v9 + 5, v10[5], v10 + 6);
            v9 = v18;
          }

          v11 = *v8;
          v12 = (v5 + 1);
          v13 = (v5 + 1);
          if (*v8)
          {
            do
            {
              while (1)
              {
                v12 = v11;
                if (*(v9 + 32) >= *(v11 + 32))
                {
                  break;
                }

                v11 = *v11;
                v13 = v12;
                if (!*v12)
                {
                  goto LABEL_16;
                }
              }

              v11 = v11[1];
            }

            while (v11);
            v13 = v12 + 1;
          }

LABEL_16:
          std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::__insert_node_at(v5, v12, v13, v9);
          v9 = v17;
          v18 = v17;
          if (v17)
          {
            v17 = std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::_DetachedTreeCache::__detach_next(v17);
          }

          v14 = v10[1];
          if (v14)
          {
            do
            {
              a2 = v14;
              v14 = *v14;
            }

            while (v14);
          }

          else
          {
            do
            {
              a2 = v10[2];
              v15 = *a2 == v10;
              v10 = a2;
            }

            while (!v15);
          }

          if (!v9)
          {
            break;
          }

          v10 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v16);
  }

  if (a2 != a3)
  {
    operator new();
  }

  return result;
}

uint64_t std::__tree<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>>>::destroy(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>>>::destroy(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>>>::destroy(a1[1]);
    std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy((a1 + 5), a1[6]);

    operator delete(a1);
  }
}

void XofData::~XofData(XofData *this)
{
  std::__tree<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>>>::destroy(*(this + 123));
  std::__tree<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>>>::destroy(*(this + 120));
  std::__tree<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>>>::destroy(*(this + 117));
  std::__tree<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>>>::destroy(*(this + 114));
  std::__tree<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>>>::destroy(*(this + 111));
  std::__tree<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::map<unsigned char,XofGpsQzssEphemeris>>>>::destroy(*(this + 108));
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(this + 832, *(this + 105));
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(this + 808, *(this + 102));
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(this + 784, *(this + 99));
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(this + 760, *(this + 96));
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(this + 736, *(this + 93));
  std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(*(this + 90));
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(this + 688, *(this + 87));
  std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(*(this + 84));
  std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(*(this + 81));
  std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(*(this + 78));
  std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(*(this + 75));
  std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(*(this + 72));
  std::__tree<std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssAlmanac>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssAlmanac>>>::destroy(*(this + 69));
}

void RtiDataCodec::RtiDataCodec(RtiDataCodec *this)
{
  v30 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&v26, "formatVersion");
  XofIntegralType<unsigned short>::XofIntegralType(&v27, &v26, 3, 3, 0);
  std::string::basic_string[abi:ne200100]<0>(&v22, "fileCreateGPSWeek");
  XofIntegralType<unsigned short>::XofIntegralType(&v23, &v22, 0, 0x1FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v18, "fileCreateGPSTOW");
  XofIntegralType<unsigned int>::XofIntegralType(&v19, &v18, 0, 604799, 0);
  std::vector<RtiPayloadCodec::Payload>::vector[abi:ne200100](&v16, 7uLL);
  std::string::basic_string[abi:ne200100]<0>(&v12, "reserved");
  XofIntegralType<unsigned int>::XofIntegralType(&v13, &v12, 0, -1, 0);
  std::string::basic_string[abi:ne200100]<0>(&__p, "fileCRC32");
  XofIntegralType<unsigned int>::XofIntegralType(&v9, &__p, 0, -1, 0);
  *(this + 8) = v28;
  *(this + 40) = v24;
  v2 = *v20;
  *(this + 4) = v19;
  *(this + 5) = v2;
  *(this + 104) = v16;
  v3 = *v14;
  *(this + 8) = v13;
  *(this + 9) = v3;
  v4 = v10;
  *(this + 168) = v9;
  v5 = v29;
  *this = v27;
  v28 = 0uLL;
  v29 = 0;
  v6 = v23;
  v7 = v25;
  *(this + 3) = v5;
  *(this + 4) = v6;
  *(this + 7) = v7;
  v25 = 0;
  v24 = 0uLL;
  *(this + 12) = v21;
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  *(this + 15) = v17;
  v16 = 0uLL;
  v17 = 0;
  *(this + 20) = v15;
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  *(this + 25) = v11;
  *(this + 184) = v4;
  v10 = 0uLL;
  v11 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14[0]);
    }
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  *&v13 = &v16;
  std::vector<RtiPayloadCodec::Payload>::__destroy_vector::operator()[abi:ne200100](&v13);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }
}

void sub_2990285E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char *a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  a26 = &a34;
  std::vector<RtiPayloadCodec::Payload>::__destroy_vector::operator()[abi:ne200100](&a26);
  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (*(v50 - 81) < 0)
  {
    operator delete(*(v50 - 104));
  }

  if (*(v50 - 113) < 0)
  {
    operator delete(*(v50 - 136));
  }

  if (*(v50 - 25) < 0)
  {
    operator delete(*(v50 - 48));
  }

  if (*(v50 - 57) < 0)
  {
    operator delete(*(v50 - 80));
  }

  _Unwind_Resume(a1);
}

void std::vector<RtiPayloadCodec::Payload>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 112;
        std::allocator<RtiPayloadCodec::Payload>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<RtiPayloadCodec::Payload>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 111) < 0)
  {
    operator delete(*(a2 + 88));
  }

  if (*(a2 + 55) < 0)
  {
    v3 = *(a2 + 32);

    operator delete(v3);
  }
}

void XofHeaderCodec::XofHeaderCodec(XofHeaderCodec *this)
{
  v47 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&v43, "formatVersion");
  XofIntegralType<unsigned short>::XofIntegralType(v44, &v43, 3, 3, 0);
  std::string::basic_string[abi:ne200100]<0>(&v39, "fileCreateGPSWeek");
  XofIntegralType<unsigned short>::XofIntegralType(v40, &v39, 0, 0x1FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v35, "fileCreateGPSTOW");
  XofIntegralType<unsigned int>::XofIntegralType(v36, &v35, 0, 604800, 0);
  std::string::basic_string[abi:ne200100]<0>(&v31, "reserved1");
  XofIntegralType<unsigned short>::XofIntegralType(v32, &v31, 0, 0xFFFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v27, "eeStartGPSWeek");
  XofIntegralType<unsigned short>::XofIntegralType(v28, &v27, 0, 0x1FFF, 0);
  std::string::basic_string[abi:ne200100]<0>(&v23, "eeStartGPSTOW");
  XofIntegralType<unsigned int>::XofIntegralType(v24, &v23, 0, 604800, 0);
  std::vector<XofConstellationHeaderCodec::Payload>::vector[abi:ne200100](v22, 7uLL);
  std::string::basic_string[abi:ne200100]<0>(&v18, "reserved2");
  XofIntegralType<unsigned long long>::XofIntegralType(v19, &v18, 0, -1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v14, "payloadLength");
  XofIntegralType<unsigned int>::XofIntegralType(v15, &v14, 0, -1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v10, "payloadCRC32");
  XofIntegralType<unsigned int>::XofIntegralType(v11, &v10, 0, -1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v6, "reserved3");
  XofIntegralType<unsigned int>::XofIntegralType(v7, &v6, 0, -1, 0);
  std::string::basic_string[abi:ne200100]<0>(&v2, "headerCRC32");
  XofIntegralType<unsigned int>::XofIntegralType(v3, &v2, 0, -1, 0);
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11EEEEJ15XofIntegralTypeItES4_S3_IjES4_S4_S5_27XofConstellationHeaderCodecS3_IyES5_S5_S5_S5_EEC2B8ne200100IJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11EEJS4_S4_S5_S4_S4_S5_S6_S7_S5_S5_S5_S5_EJEJEJS4_S4_S5_S4_S4_S5_S6_S7_S5_S5_S5_S5_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_(this, v44, v40, v36, v32, v28, v24, v22, v19, v15, v11, v7, v3);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v2.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v2.__r_.__value_.__l.__data_);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  *&v19[0] = v22;
  std::vector<XofConstellationHeaderCodec::Payload>::__destroy_vector::operator()[abi:ne200100](v19);
  if (v26 < 0)
  {
    operator delete(v25);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (v34 < 0)
  {
    operator delete(v33);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (v38 < 0)
  {
    operator delete(v37);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (v42 < 0)
  {
    operator delete(v41);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (v46 < 0)
  {
    operator delete(v45);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }
}

void sub_299028C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a65 < 0)
  {
    operator delete(a62);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  if (a70 < 0)
  {
    operator delete(a69);
  }

  if (a67 < 0)
  {
    operator delete(a66);
  }

  a68 = &a71;
  std::vector<XofConstellationHeaderCodec::Payload>::__destroy_vector::operator()[abi:ne200100](&a68);
  if (a75 < 0)
  {
    operator delete(a74);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(a78);
  }

  if (a77 < 0)
  {
    operator delete(a76);
  }

  if (*(v78 - 217) < 0)
  {
    operator delete(*(v78 - 240));
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  if (*(v78 - 153) < 0)
  {
    operator delete(*(v78 - 176));
  }

  if (*(v78 - 193) < 0)
  {
    operator delete(*(v78 - 216));
  }

  if (*(v78 - 97) < 0)
  {
    operator delete(*(v78 - 120));
  }

  if (*(v78 - 129) < 0)
  {
    operator delete(*(v78 - 152));
  }

  if (*(v78 - 41) < 0)
  {
    operator delete(*(v78 - 64));
  }

  if (*(v78 - 73) < 0)
  {
    operator delete(*(v78 - 96));
  }

  _Unwind_Resume(a1);
}

__n128 _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11EEEEJ15XofIntegralTypeItES4_S3_IjES4_S4_S5_27XofConstellationHeaderCodecS3_IyES5_S5_S5_S5_EEC2B8ne200100IJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11EEJS4_S4_S5_S4_S4_S5_S6_S7_S5_S5_S5_S5_EJEJEJS4_S4_S5_S4_S4_S5_S6_S7_S5_S5_S5_S5_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a1 = *a2;
  v13 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v13;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a1 + 32) = *a3;
  v14 = *(a3 + 8);
  *(a1 + 56) = *(a3 + 24);
  *(a1 + 40) = v14;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  *(a1 + 64) = *a4;
  v15 = *(a4 + 16);
  *(a1 + 96) = *(a4 + 32);
  *(a1 + 80) = v15;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 16) = 0;
  *(a1 + 104) = *a5;
  v16 = *(a5 + 8);
  *(a1 + 128) = *(a5 + 24);
  *(a1 + 112) = v16;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 8) = 0;
  *(a1 + 136) = *a6;
  v17 = *(a6 + 8);
  *(a1 + 160) = *(a6 + 24);
  *(a1 + 144) = v17;
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  *(a6 + 8) = 0;
  *(a1 + 168) = *a7;
  v18 = *(a7 + 16);
  *(a1 + 200) = *(a7 + 32);
  *(a1 + 184) = v18;
  *(a7 + 24) = 0;
  *(a7 + 32) = 0;
  *(a7 + 16) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 208) = *a8;
  *(a1 + 224) = *(a8 + 16);
  *a8 = 0;
  *(a8 + 8) = 0;
  *(a8 + 16) = 0;
  v19 = *a9;
  *(a1 + 248) = a9[1];
  *(a1 + 232) = v19;
  v20 = a9[2];
  *(a1 + 280) = *(a9 + 6);
  *(a1 + 264) = v20;
  *(a9 + 40) = 0uLL;
  *(a9 + 4) = 0;
  *(a1 + 288) = *a10;
  v21 = *(a10 + 16);
  *(a1 + 320) = *(a10 + 32);
  *(a1 + 304) = v21;
  *(a10 + 24) = 0;
  *(a10 + 32) = 0;
  *(a10 + 16) = 0;
  *(a1 + 328) = *a11;
  v22 = *(a11 + 16);
  *(a1 + 360) = *(a11 + 32);
  *(a1 + 344) = v22;
  *(a11 + 24) = 0;
  *(a11 + 32) = 0;
  *(a11 + 16) = 0;
  *(a1 + 368) = *a12;
  v23 = *(a12 + 16);
  *(a1 + 400) = *(a12 + 32);
  *(a1 + 384) = v23;
  *(a12 + 24) = 0;
  *(a12 + 32) = 0;
  *(a12 + 16) = 0;
  *(a1 + 408) = *a13;
  result = *(a13 + 16);
  *(a1 + 440) = *(a13 + 32);
  *(a1 + 424) = result;
  *(a13 + 24) = 0;
  *(a13 + 32) = 0;
  *(a13 + 16) = 0;
  return result;
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofConstellationHeaderCodec,XofIntegralType<unsigned long long>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>>::~__tuple_impl(uint64_t a1)
{
  v3[1] = *MEMORY[0x29EDCA608];
  if (*(a1 + 447) < 0)
  {
    operator delete(*(a1 + 424));
  }

  if (*(a1 + 407) < 0)
  {
    operator delete(*(a1 + 384));
  }

  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
  }

  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  if (*(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

  v3[0] = (a1 + 208);
  std::vector<XofConstellationHeaderCodec::Payload>::__destroy_vector::operator()[abi:ne200100](v3);
  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t Hal01_01HandleInitReq(uint64_t a1)
{
  v29 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:HAL_INIT_MSG\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal01_01HandleInitReq");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    g_IsFSMDeInit = 0;
    v3 = *(a1 + 24);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 73, "Hal01_01HandleInitReq", 1291);
      gnssOsa_PrintLog(__str, 4, 1, 0);
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v5 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        DebugFeaturesBitmask = Ga05_GetDebugFeaturesBitmask();
        v7 = Ga05_GetDebugFeaturesBitmask();
        v8 = 89;
        if ((v7 & 0x10) != 0)
        {
          v9 = 89;
        }

        else
        {
          v9 = 78;
        }

        if ((DebugFeaturesBitmask & 0x20) == 0)
        {
          v8 = 78;
        }

        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GnssHw,%u, Platform SPI,%c,PCIe,%c\n", v5, "HAL", 73, "Hal01_01HandleInitReq", v3, v8, v9);
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }
    }

    v10 = gnssOsa_Calloc("Hal01_01HandleInitReq", 265, 1, 0x48uLL);
    if (v10)
    {
      v11 = v10;
      if (Hal22_InitializeConn())
      {
        goto LABEL_31;
      }

      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v12 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "HAL", 73, "Hal01_01HandleInitReq", 1313);
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      if (!v3)
      {
        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v14 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Invalid GnssHw,%u\n", (*&g_MacClockTicksToMsRelation * v14), "HAL", 69, "Hal01_01HandleInitReq", 0);
          gnssOsa_PrintLog(__str, 1, 1, 0);
        }

        *v11 = 0x300000001;
        (*(a1 + 16))(3, v11);
        goto LABEL_31;
      }

      if (v3 != 1)
      {
LABEL_31:
        free(v11);
        return 0;
      }

      if (Hal35_Is_HW_SPI_EN_Default() && (Ga05_GetDebugFeaturesBitmask() & 0x10) == 0)
      {
        Hal01_Init_SPI(a1, v11, v11);
        goto LABEL_31;
      }

      v27 = 3;
      if (Hal34_InitPciGnssDevice(&v27))
      {
        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v15 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v15), "HAL", 69, "Hal01_Init_SPI_OR_PCIe", 1293);
          gnssOsa_PrintLog(__str, 1, 1, 0);
        }

        v16 = v27;
        *v11 = 1;
        v11[1] = v16;
        v17 = (a1 + 16);
        goto LABEL_30;
      }

      v19 = *(a1 + 16);
      v17 = (a1 + 16);
      if (!Hal01_GetRevisionInfo(v11, v19))
      {
        goto LABEL_31;
      }

      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v20 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v20), "HAL", 73, "Hal01_Init_SPI_OR_PCIe", 1285);
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      v21 = v27;
      *v11 = 2;
      v11[1] = v21;
      v22 = word_2A13EC520;
      v23 = byte_2A13EC51D;
      if (word_2A13EC520 == 3599 && byte_2A13EC51D < 2u)
      {
        goto LABEL_30;
      }

      if (word_2A13EC520 == 3599 && byte_2A13EC51D >= 2u)
      {
        if ((Ga05_GetDebugFeaturesBitmask() & 0x20) == 0)
        {
LABEL_30:
          (*v17)(3, v11);
          goto LABEL_31;
        }

        v22 = word_2A13EC520;
        v23 = byte_2A13EC51D;
      }

      if (v22 != 3599 || v23 < 2 || (Ga05_GetDebugFeaturesBitmask() & 0x20) == 0)
      {
        goto LABEL_31;
      }

      if (Hal35_InitSPI())
      {
        if (!Hal01_GetRevisionInfo(v11, *v17))
        {
          goto LABEL_31;
        }

        if (g_LbsOsaTrace_Config >= 4)
        {
          bzero(__str, 0x3C6uLL);
          v24 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v24), "HAL", 73, "Hal01_Init_SPI_OR_PCIe", 1285);
          gnssOsa_PrintLog(__str, 4, 1, 0);
        }

        v25 = 2;
      }

      else
      {
        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v26 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: SPI Init failed\n", (*&g_MacClockTicksToMsRelation * v26), "HAL", 69, "Hal01_Init_SPI_OR_PCIe");
          gnssOsa_PrintLog(__str, 1, 1, 0);
        }

        v25 = 1;
      }

      *v11 = v25;
      v11[1] = v21;
      goto LABEL_30;
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v13 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v13), "HAL", 69, "Hal01_01HandleInitReq", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

uint64_t Hal01_03WriteDataToChip(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:HAL_WRITE_DATA_MSG\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 68, "Hal01_03WriteDataToChip");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (g_IsFSMDeInit == 1)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx DeInitState\n");
LABEL_12:
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  else if (a1)
  {
    Hal22_ZxSendToChip(*(a1 + 16), *(a1 + 24));
    v3 = *(a1 + 16);
    if (v3)
    {
      free(v3);
    }

    *(a1 + 16) = 0;
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_12;
  }

  return 0;
}

uint64_t Hal01_02HandleDeInitReq(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:HAL_DEINIT_MSG\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal01_02HandleDeInitReq");
    gnssOsa_PrintLog(__str, 4, 1, 0);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "HAL", 73, "Hal01_02HandleDeInitReq");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  if (a1)
  {
    g_IsFSMDeInit = 1;
    v4 = gnssOsa_Calloc("Hal01_02HandleDeInitReq", 333, 1, 0x48uLL);
    if (v4)
    {
      v5 = v4;
      *v4 = 6;
      v6 = word_2A13EC520 == 3599 && byte_2A13EC51D >= 2u;
      if (v6 && (Ga05_GetDebugFeaturesBitmask() & 0x20) != 0)
      {
        Hal35_DeInitSPI();
      }

      Hal22_DeInitializeConn();
      v7 = *(a1 + 16);
      if (v7)
      {
        v7(4, v5);
      }

      free(v5);
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "HAL", 73, "Hal01_02HandleDeInitReq");
        v9 = 4;
LABEL_19:
        gnssOsa_PrintLog(__str, v9, 1, 0);
      }
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v10 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "HAL", 69, "Hal01_02HandleDeInitReq", 517);
    v9 = 1;
    goto LABEL_19;
  }

  return 0;
}

uint64_t Hal01_HandleGnssBBResetReq(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:HAL_GNSSBASEBAND_RESET_MSG\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal01_HandleGnssBBResetReq");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    if (byte_2A13C3B6B == 1)
    {
      Hal29_TriggerTrapOverPCIe(*(a1 + 12));
    }

    else
    {
      Hal_BaseBandSPMI_GNSSTriggerTrap();
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "HAL", 69, "Hal01_HandleGnssBBResetReq", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

uint64_t Hal01_HandleSetPowerReport(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:HAL_SET_POWER_RPT_MSG\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal01_HandleSetPowerReport");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    if (*(a1 + 12) == 1)
    {
      g_PowerReportDataCB = *(a1 + 24);
    }

    (*(a1 + 16))(1);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "HAL", 69, "Hal01_HandleSetPowerReport", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

uint64_t Hal01_HandleTMPulseTrig(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:HAL_TRIG_TIMEMARK_PULSE_MSG\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal01_HandleTMPulseTrig");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (!a1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n");
LABEL_10:
    gnssOsa_PrintLog(__str, 1, 1, 0);
    return 0;
  }

  if (!*(a1 + 16))
  {
    if (!g_LbsOsaTrace_Config)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx TimeMarkPulseCb\n");
    goto LABEL_10;
  }

  *__str = 0;
  v3 = Hal25_TriggerTimeMarkStrobe(__str);
  (*(a1 + 16))(*__str, v3);
  return 0;
}

uint64_t Hal01_HandleGNSSWakeReq(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:HAL_GNSS_WAKE_REQUEST_MSG\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal01_HandleGNSSWakeReq");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    if (g_IsSPIEnabled)
    {
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v3 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Triggered GNSS wake\n", (*&g_MacClockTicksToMsRelation * v3), "HAL", 73, "Hal01_HandleGNSSWakeReq");
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      if (!Hal_WakeUpGNSS())
      {
        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v4 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GNSS Wake failed, trigger GNSS coredump\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 69, "Hal01_HandleGNSSWakeReq");
          gnssOsa_PrintLog(__str, 1, 1, 0);
        }

        if (byte_2A13C3B6B == 1)
        {
          Hal29_TriggerTrapOverPCIe(1u);
        }

        else
        {
          Hal_BaseBandSPMI_GNSSTriggerTrap();
        }

        v7 = 0;
        goto LABEL_25;
      }
    }

    else if (Hal15_ReadHwRevision(80))
    {
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v6 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: CP read rev failed, trigger GNSS coredump\n", (*&g_MacClockTicksToMsRelation * v6), "HAL", 69, "Hal01_HandleGNSSWakeReq");
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      if (byte_2A13C3B6B == 1)
      {
        v7 = 1;
        Hal29_TriggerTrapOverPCIe(1u);
        goto LABEL_25;
      }

      Hal_BaseBandSPMI_GNSSTriggerTrap();
    }

    else if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: CP read rev success\n", (*&g_MacClockTicksToMsRelation * v8), "HAL", 73, "Hal01_HandleGNSSWakeReq");
      v7 = 1;
      gnssOsa_PrintLog(__str, 4, 1, 0);
      goto LABEL_25;
    }

    v7 = 1;
LABEL_25:
    v9 = *(a1 + 16);
    if (v9)
    {
      v9(v7);
    }

    return 0;
  }

  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 69, "Hal01_HandleGNSSWakeReq", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

uint64_t Hal01_Init_SPI(uint64_t a1, void *a2, char *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if (!Hal35_InitSPI())
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: SPI Init failed\n");
LABEL_11:
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

LABEL_12:
    *a2 = 0x300000001;
    v6 = (a1 + 16);
    return (*v6)(3, a3);
  }

  if (!Hal_WakeUpGNSS())
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GNSS wake trigger failed\n");
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v7 = *(a1 + 16);
  v6 = (a1 + 16);
  result = Hal01_GetRevisionInfo(a3, v7);
  if (!result)
  {
    return result;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "HAL", 73, "Hal01_Init_SPI", 1285);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  *a2 = 0x300000002;
  return (*v6)(3, a3);
}

uint64_t Hal01_GetRevisionInfo(char *a1, void (*a2)(uint64_t, char *))
{
  v19 = *MEMORY[0x29EDCA608];
  v17 = 1;
  result = gnssOsa_Calloc("Hal01_GetRevisionInfo", 83, 1, 0x48uLL);
  if (result)
  {
    v5 = result;
    if (Hal22_GetHwRevision(&v17))
    {
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v6 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "HAL", 69, "Hal01_GetRevisionInfo", 1286);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      v7 = v17;
      *a1 = 3;
      *(a1 + 1) = v7;
      a2(3, a1);
      free(v5);
      return 0;
    }

    else
    {
      *v5 = 4;
      *(v5 + 1) = word_2A13EC520;
      Hal15_GetGNSSVersionString(&__p);
      v8 = v16;
      if (v16 < 0)
      {
        p_p = __p;
        if (v15 >= 0x40)
        {
          v9 = 64;
        }

        else
        {
          v9 = v15;
        }
      }

      else
      {
        if (v16 >= 0x40)
        {
          v9 = 64;
        }

        else
        {
          v9 = v16;
        }

        p_p = &__p;
      }

      strncpy(v5 + 8, p_p, v9);
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v11 = mach_continuous_time();
        v12 = byte_2A13EC51D > 1u && word_2A13EC520 == 3599;
        v13 = 78;
        if (v12)
        {
          v13 = 89;
        }

        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s, GNSSHW SPI,%c\n", (*&g_MacClockTicksToMsRelation * v11), "HAL", 73, "Hal01_GetRevisionInfo", v5 + 8, v13);
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      a2(1, v5);
      free(v5);
      if (v8 < 0)
      {
        operator delete(__p);
      }

      return 1;
    }
  }

  return result;
}

void sub_29902A910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p)
{
  if (v15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CRCGenerator::GetCRC32(void *a1, unsigned int a2, int a3)
{
  v3 = a3 + a2;
  if (v3 <= a2)
  {
    v10 = 0;
  }

  else
  {
    v4 = a2;
    v5 = -1;
    do
    {
      v6 = __rbit32(*(*a1 + v4));
      v7 = 8;
      do
      {
        v8 = v5 ^ v6;
        v9 = 2 * v5;
        v5 = (2 * v5) ^ 0x4C11DB7;
        if (v8 >= 0)
        {
          v5 = v9;
        }

        v6 *= 2;
        --v7;
      }

      while (v7);
      ++v4;
    }

    while (v4 != v3);
    v10 = ~v5;
  }

  return __rbit32(v10);
}

void Geo2ECEF(uint64_t a1, uint64_t a2, float64x2_t *a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 16);
  v7 = __sincos_stret(*a1);
  v8 = *(a2 + 8) / sqrt(-(*(a2 + 24) * v7.__sinval) * v7.__sinval + 1.0);
  v9 = v7.__cosval * (v6 + v8);
  v10 = cos(*(a1 + 8)) * v9;
  a3->f64[0] = v10;
  v11 = sin(*(a1 + 8)) * v9;
  a3->f64[1] = v11;
  v12 = v7.__sinval * (v6 + v8 * *(a2 + 40));
  a3[1].f64[0] = v12;
  if (*a2)
  {
    v13.f64[0] = v10 - *(a2 + 48);
    a3->f64[0] = v13.f64[0];
    v14 = v11 - *(a2 + 56);
    a3->f64[1] = v14;
    v15 = v12 - *(a2 + 64);
    a3[1].f64[0] = v15;
    if (*(a2 + 2) == 1)
    {
      v16 = 0;
      v17 = (a2 + 88);
      do
      {
        v18 = v14 * *(v17 - 1) + *(v17 - 2) * v13.f64[0];
        v19 = *v17;
        v17 += 3;
        v20.f64[v16++] = v18 + v19 * v15;
      }

      while (v16 != 3);
      v13.f64[1] = v14;
      *a3 = vsubq_f64(v13, v20);
      a3[1].f64[0] = v15 - v21;
    }
  }
}

void GncS04_07SndDbgNmea(char *a1, size_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v4 = gnssOsa_Calloc("GncS04_07SndDbgNmea", 211, 1, 0x18uLL);
  if (v4)
  {
    v5 = v4;
    v6 = gnssOsa_Calloc("GncS04_07SndDbgNmea", 220, (a2 + 1), 1uLL);
    v5[2] = v6;
    if (v6)
    {
      memcpy_s("GncS04_07SndDbgNmea", 227, v6, (a2 + 1), a1, a2);
      *(v5 + 6) = a2;
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v7 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_NMEA_DATA_IND =>GNM Len,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 73, "GncS04_07SndDbgNmea", *(v5 + 6));
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      AgpsSendFsmMsg(130, 128, 8521475, v5);
    }

    else
    {

      free(v5);
    }
  }
}

void GncS04_08SndStartPosNmea(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = word_2A13C3B68;
  bzero(__str, 0x400uLL);
  v3 = mach_continuous_time();
  v6 = snprintf(__str, 0x400uLL, "$PDPSS,%u,%u,%u,%u,%d,%u,%u,%u,%u,%u", (*&g_MacClockTicksToMsRelation * v3), *(a1 + 2), *(a1 + 4), *(a1 + 49), *(a1 + 20), *(a1 + 24), *(a1 + 28), *(a1 + 34), *(a1 + 36), *(a1 + 32));
  if (HswUtil_AddNmeaCS(__str, 0x400u, &v6))
  {
    v4 = v6;
    LbsOsaTrace_PrintAsciiBuf(1u, 4u, 0, __str, v6);
    if ((v2 & 0x200) != 0)
    {
      GncS04_07SndDbgNmea(__str, v4);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__s, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__s, 0x3C5uLL, "%10u %s%c %s: #%04hx BytesWritten,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 69, "GncS04_08SndStartPosNmea", 772, v6);
    gnssOsa_PrintLog(__s, 1, 1, 0);
  }
}

void GncS04_20SendUpdateToGncpe(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  BYTE8(v4) = 0;
  *&v4 = 0;
  BYTE12(v4) = 1;
  HIWORD(v4) = *(a1 + 2);
  v5 = *(a1 + 32) & 3;
  v6 = *(a1 + 8);
  v15 = *(a1 + 50);
  v1 = *(a1 + 4);
  if (*(a1 + 4))
  {
    v1 = *(a1 + 28);
  }

  v2 = *(a1 + 12);
  v7 = v1;
  v8 = v2;
  v3 = *(a1 + 34);
  v9 = *(a1 + 24);
  v10 = v3;
  v11 = 0;
  v12 = *(a1 + 33);
  v13 = 1;
  v14 = *(a1 + 49);
  GncS03_07PosEventUpdate(&v4);
}

uint64_t GncS04_29GetRespUpdtStat(uint64_t a1, int a2, _BYTE *a3)
{
  v28 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    if (*(a1 + 4) - 1 < 2)
    {
      v6 = *(a1 + 8);
      v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v6;
      if (a2 == 1 && !*(a1 + 48) || (v8 = v7 + 30, (v7 + 30) >= *(a1 + 28)))
      {
        v19 = 1;
      }

      else
      {
        LatestUpdtOsTime = GncP_GetLatestUpdtOsTime();
        if (LatestUpdtOsTime)
        {
          v10 = LatestUpdtOsTime;
          v11 = mach_continuous_time();
          v12 = word_2A13C3B66;
          if ((*&g_MacClockTicksToMsRelation * v11) - v10 <= word_2A13C3B66)
          {
            v7 = v10 - *(a1 + 8);
            v8 = v7 + 30;
          }
        }

        else
        {
          v12 = word_2A13C3B66;
        }

        v19 = (v8 + v12) > *(a1 + 28);
      }

      v20 = *(a1 + 4);
      v21 = v20 == 1;
      v22 = v20 != 1;
      v23 = v21;
      LOBYTE(v13) = v23 | v19;
      v18 = v22 || v19;
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v24 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: SS ID,%u,Qual,%hhu,IsFinal,%u,SndUpdt,%u,TimeElapsed,%u,RespTime,%u\n", (*&g_MacClockTicksToMsRelation * v24), "GNC", 73, "GncS04_29GetRespUpdtStat", *(a1 + 2), a2, v13 & 1, v18 & 1, v7, *(a1 + 28));
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      goto LABEL_31;
    }

    if (!*(a1 + 4))
    {
      v13 = *(a1 + 20) == 1;
      if (*(a1 + 16))
      {
        v14 = *(a1 + 8);
        v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v14;
        if (word_2A13C3B66 + v15 + 30 > *(a1 + 16))
        {
          if (g_LbsOsaTrace_Config < 4)
          {
            LOBYTE(v13) = 1;
            v18 = 1;
LABEL_31:
            *a3 = v13 & 1;
            return v18 & 1;
          }

          bzero(__str, 0x3C6uLL);
          v16 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: PeriodicSessStopTm,%u,TimeElapsed,%u\n", (*&g_MacClockTicksToMsRelation * v16), "GNC", 73, "GncS04_29GetRespUpdtStat", *(a1 + 16), v15);
          v13 = 1;
          gnssOsa_PrintLog(__str, 4, 1, 0);
        }
      }

      if (g_LbsOsaTrace_Config < 4)
      {
        v18 = 1;
      }

      else
      {
        bzero(__str, 0x3C6uLL);
        v17 = mach_continuous_time();
        v18 = 1;
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Periodc ID,%u,Qual,%hhu,IsFinal,%u,SndUpdt,%u\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 73, "GncS04_29GetRespUpdtStat", *(a1 + 2), a2, v13, 1);
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      goto LABEL_31;
    }

    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v26 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SessionType,%hhu\n", v26);
      goto LABEL_21;
    }
  }

  else if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n");
LABEL_21:
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  v18 = 0;
  return v18 & 1;
}

void GncS04_33SessStopAckTimrExpiry(void)
{
  v2 = *MEMORY[0x29EDCA608];
  if (byte_2A13EE498 == 1)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v0 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: NoResp from GNCP\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 87, "GncS04_33SessStopAckTimrExpiry");
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    byte_2A13EE498 = 0;
    GncS04_31ChkSendPendingStopAck(0);
  }
}

void GncS04_31ChkSendPendingStopAck(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  v10 = *MEMORY[0x29EDCA608];
  v3 = 1;
  do
  {
    v4 = v3;
    v5 = &g_GncSFGClientData + 52 * v2;
    v7 = v5[28];
    v6 = v5 + 28;
    if (v7 == 3)
    {
      GncS04_21SendStopPosResp(v1, *(v6 + 1));
      GncS04_05DeRegClient(v2);
    }

    v3 = 0;
    v2 = 1;
  }

  while ((v4 & 1) != 0);
  if (byte_2A13EE498)
  {
    if (AgpsFsmStopTimer(8523270))
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 87, "GncS04_31ChkSendPendingStopAck", 1545);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }
    }

    byte_2A13EE498 = 0;
  }
}

void GncS04_36SessStartAckTimrExp(void)
{
  v2 = *MEMORY[0x29EDCA608];
  if (BYTE8(g_GncSFGClientData) == 1)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v0 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: NoResp from GNCP\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 87, "GncS04_36SessStartAckTimrExp");
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    BYTE8(g_GncSFGClientData) = 0;
    GncS04_35ChkSendPendingStartAck(0);
  }
}

void GncS04_35ChkSendPendingStartAck(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  *&v13[233] = *MEMORY[0x29EDCA608];
  v3 = 1;
  do
  {
    v4 = v3;
    v5 = &g_GncSFGClientData + 52 * v2;
    v7 = v5[28];
    v6 = v5 + 28;
    if (v7 == 2)
    {
      GncS04_22SendStartPosResp(v1, *(v6 + 1));
      if (v1 == 255)
      {
        *v6 = 1;
      }

      else
      {
        v8 = *(v6 + 1);
        __str[8] = 0;
        *__str = 0;
        v11 = 0;
        *v13 = 0;
        v12 = 0;
        *(&v13[1] + 3) = 0;
        __str[12] = 1;
        *&__str[14] = v8;
        __str[16] = 0;
        GncS03_07PosEventUpdate(__str);
        GncS04_05DeRegClient(v2);
      }
    }

    v3 = 0;
    v2 = 1;
  }

  while ((v4 & 1) != 0);
  if (BYTE8(g_GncSFGClientData))
  {
    if (AgpsFsmStopTimer(8523014))
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v9 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 87, "GncS04_35ChkSendPendingStartAck", 1545);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }
    }

    BYTE8(g_GncSFGClientData) = 0;
  }
}

void GncS04_41SendNavData(__int16 a1, char a2, char a3, _DWORD *a4)
{
  v19 = *MEMORY[0x29EDCA608];
  v8 = gnssOsa_Calloc("GncS04_41SendNavData", 1234, 1, 0x20uLL);
  if (v8)
  {
    v9 = v8;
    v10 = gnssOsa_Calloc("GncS04_41SendNavData", 1240, 1, 0x1740uLL);
    v9[3] = v10;
    if (v10)
    {
      *(v9 + 3) = *a4;
      *(v9 + 8) = a1;
      *(v9 + 18) = a2;
      *(v9 + 19) = a3;
      memcpy(v10, a4 + 2, 0x1740uLL);
      v11 = word_2A13C3B68;
      bzero(__str, 0x400uLL);
      v12 = v9[3];
      v16 = snprintf(__str, 0x400uLL, "$PDPPR,%u,%u,%u,%.9f,%.9f,%f,%.12f,%.12f,%u,%u,%u,%u,%u,%u", *(v9 + 3), *v12, *(v9 + 8), *(v12 + 112), *(v12 + 120), *(v12 + 136), *(v12 + 48), *(v12 + 40), *(v12 + 315), *(v12 + 316), *(v12 + 304), *(v12 + 312), *(v12 + 297), *(v12 + 308));
      if (HswUtil_AddNmeaCS(__str, 0x400u, &v16))
      {
        v13 = v16;
        LbsOsaTrace_PrintAsciiBuf(1u, 4u, 0, __str, v16);
        if ((v11 & 0x200) != 0)
        {
          GncS04_07SndDbgNmea(__str, v13);
        }
      }

      else
      {
        if (!g_LbsOsaTrace_Config)
        {
LABEL_13:
          AgpsSendFsmMsg(130, 128, 8520707, v9);
          return;
        }

        bzero(__s, 0x3C6uLL);
        v14 = mach_continuous_time();
        snprintf(__s, 0x3C5uLL, "%10u %s%c %s: #%04hx BytesWritten,%u\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 69, "GncS04_40SndNavRespNmea", 772, v16);
        gnssOsa_PrintLog(__s, 1, 1, 0);
      }

      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v15 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_NAV_DATA_IND =>GNM ID,%u,OSTTick,%u,BBTick,%u,Valid,%u,VSF,%u,SVSignalsInView,%u,SatsUsed,%u\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 73, "GncS04_41SendNavData", *(v9 + 8), *(v9 + 3), *v9[3], *(v9 + 19), *(v9[3] + 297), *(v9[3] + 315), *(v9[3] + 316));
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      goto LABEL_13;
    }

    free(v9);
  }
}

uint64_t GncS04_42GetValidNavDataCopy(uint64_t a1, int a2, unsigned int a3)
{
  v14 = *MEMORY[0x29EDCA608];
  GncP_GetNavData(a1);
  if (*(a1 + 20))
  {
    if ((*a1 - a2) >= 0x3E9)
    {
      v6 = a2 - *a1;
    }

    else
    {
      v6 = 0;
    }

    if (v6 <= word_2A13C3B66 + 900)
    {
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v9 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: NavData PosDataAge,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 68, "GncS04_42GetValidNavDataCopy", v6);
        v8 = 1;
        v10 = 5;
LABEL_14:
        gnssOsa_PrintLog(__str, v10, 1, 0);
        return v8;
      }
    }

    else
    {
      if (v6 > a3)
      {
        if (g_LbsOsaTrace_Config >= 4)
        {
          bzero(__str, 0x3C6uLL);
          v7 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: NavData NA PosDataAge,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 73, "GncS04_42GetValidNavDataCopy", v6);
          gnssOsa_PrintLog(__str, 4, 1, 0);
        }

        return 0;
      }

      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v11 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: NavData AllwdAge,%u,PosDataAge,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 73, "GncS04_42GetValidNavDataCopy", a3, v6);
        v8 = 1;
        v10 = 4;
        goto LABEL_14;
      }
    }

    return 1;
  }

  return 0;
}

uint64_t GncS04_71CheckAgeLimitCond(uint64_t a1)
{
  v2 = MEMORY[0x2A1C7C4A8](a1);
  v3 = 0;
  v52 = *MEMORY[0x29EDCA608];
  v22[0] = 0;
  memset(&v49[32], 0, 512);
  memset(&v22[2], 0, 11);
  v24 = 0;
  v23 = 0;
  v25 = 0;
  v40 = 0u;
  memset(v41, 0, sizeof(v41));
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v48 = 0u;
  memset(v49, 0, 29);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  do
  {
    v4 = v22 + v3;
    *(v4 + 484) = 0;
    v4[970] = v49[v3 + 546] & 0xE0;
    v3 += 3;
  }

  while (v3 != 384);
  v5 = &g_GncSFGClientData + 52 * v1;
  bzero(&v50, 0x1209uLL);
  v7 = v5[60];
  v6 = v5 + 60;
  if ((v7 & 2) != 0)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(v51, 0x3C6uLL);
      v21 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(v51, 0x3C5uLL, "%10u %s%c %s: AgeLimit NA ID,%u,PosOutput,%u\n", v21);
LABEL_29:
      v18 = 1;
      goto LABEL_30;
    }

    return 1;
  }

  if ((GncS04_42GetValidNavDataCopy(v22, v2, *(v6 + 3)) & 1) == 0)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(v51, 0x3C6uLL);
      mach_continuous_time();
      snprintf(v51, 0x3C5uLL, "%10u %s%c %s: NavData NA ID,%u\n");
      goto LABEL_29;
    }

    return 1;
  }

  v8 = *(v6 + 3);
  if (*(v6 + 1))
  {
    v9 = *(v6 + 1);
  }

  else
  {
    v9 = 100;
  }

  if (*(v6 + 2))
  {
    v10 = *(v6 + 2);
  }

  else
  {
    v10 = 150;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(v51, 0x3C6uLL);
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = v22[0];
    v13 = mach_continuous_time();
    snprintf(v51, 0x3C5uLL, "%10u %s%c %s: CurrPos Age,%u,VSF,%u,HAcc,%f,VAcc,%f\n", v11, "GNC", 73, "GncS04_70QualifyNavForAgeLimit", (*&g_MacClockTicksToMsRelation * v13) - v12, v41[25], *&v37, *(&v36 + 1));
    gnssOsa_PrintLog(v51, 4, 1, 0);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(v51, 0x3C6uLL);
      v14 = mach_continuous_time();
      snprintf(v51, 0x3C5uLL, "%10u %s%c %s: SessReq Age,%u,HAcc,%u,VAcc,%u\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 73, "GncS04_70QualifyNavForAgeLimit", v8, v9, v10);
      gnssOsa_PrintLog(v51, 4, 1, 0);
    }
  }

  v15 = v22[0];
  if (!v22[0])
  {
    goto LABEL_22;
  }

  v16 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v17 = v16 - v15;
  if (v15 - v16 < 0x3E9)
  {
    v17 = 0;
  }

  if (v17 < v8 && v41[25] == 1 && *&v37 <= v9 && *(&v36 + 1) <= v10 && (GncS04_22SendStartPosResp(255, *(v6 - 15)), (*v6 & 1) != 0))
  {
    GncS04_41SendNavData(*(v6 - 15), 1, 1, v22);
    v18 = 0;
  }

  else
  {
LABEL_22:
    v18 = 1;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(v51, 0x3C6uLL);
    v19 = mach_continuous_time();
    snprintf(v51, 0x3C5uLL, "%10u %s%c %s: SendReqGncP,%u\n", (*&g_MacClockTicksToMsRelation * v19), "GNC", 73, "GncS04_71CheckAgeLimitCond", v18);
LABEL_30:
    gnssOsa_PrintLog(v51, 4, 1, 0);
  }

  return v18;
}

void GncS04_22SendStartPosResp(int a1, int a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = gnssOsa_Calloc("GncS04_22SendStartPosResp", 416, 1, 0x10uLL);
  if (v4)
  {
    v5 = v4;
    *(v4 + 6) = a2;
    v4[14] = a1;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_START_POS_RSP =>GNM ID,%hu,Code,%hhu\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncS04_22SendStartPosResp", a2, a1);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(130, 128, 8519684, v5);
  }
}

void GncS04_72SendUpdates(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v82 = *MEMORY[0x29EDCA608];
  v2 = 0;
  v57 = v1;
  v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  v4 = 1;
  v56 = v3;
  do
  {
    v5 = v4;
    v6 = &g_GncSFGClientData + 52 * v2;
    v9 = v6[28];
    v8 = v6 + 28;
    v7 = v9;
    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    if (v7 == 1)
    {
      if (!*(v8 + 5))
      {
        if (g_LbsOsaTrace_Config < 4)
        {
          goto LABEL_90;
        }

        bzero(__str, 0x3C6uLL);
        mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: NoUpdt ID,%u,NumFix,0\n");
        goto LABEL_12;
      }

      if ((v3 - *(v8 + 2) + 30) < *(v8 + 3))
      {
        if (g_LbsOsaTrace_Config < 4)
        {
          goto LABEL_90;
        }

        bzero(__str, 0x3C6uLL);
        v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: NoUpdt ID,%u,Unsol,%c,TmElapsed,%u,StartUpdt,%u\n", v11, "GNC");
LABEL_12:
        v12 = 4;
LABEL_89:
        gnssOsa_PrintLog(__str, v12, 1, 0);
        goto LABEL_90;
      }

      if (v57)
      {
        if (g_LbsOsaTrace_Config < 4)
        {
          goto LABEL_20;
        }

        bzero(__str, 0x3C6uLL);
        v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Updt Unsol ID,%u,Type,%hhu,PrevUpdt,%u\n", v13);
      }

      else
      {
        if (!v8[4])
        {
          if (g_LbsOsaTrace_Config < 4)
          {
            goto LABEL_90;
          }

          bzero(__str, 0x3C6uLL);
          v36 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: NoUpdt ID,%u,Type,%hhu,Unsol,N,PrevUpdt,%u\n", v36);
          goto LABEL_12;
        }

        if (g_LbsOsaTrace_Config < 4)
        {
LABEL_20:
          v15 = &g_GncSFGClientData + 52 * v2;
          v18 = v15[60];
          v17 = v15 + 60;
          v16 = v18;
          if ((v18 & 1) == 0)
          {
            RespUpdtStat = 0;
            if ((v16 & 2) == 0)
            {
              goto LABEL_64;
            }

            goto LABEL_45;
          }

          v20 = 0;
          v58 = 0;
          *__str = 0;
          memset(&v78[176], 0, 512);
          *(&v61[1] + 3) = 0;
          *v61 = 0;
          *&v61[5] = 0;
          *&v61[3] = 0;
          v62 = 0;
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
          v77 = 0u;
          memset(v78, 0, 30);
          memset(&v78[32], 0, 141);
          do
          {
            v21 = &__str[v20];
            *(v21 + 484) = 0;
            v21[970] = v78[v20 + 690] & 0xE0;
            v20 += 3;
          }

          while (v20 != 384);
          bzero(&v79, 0x1209uLL);
          ValidNavDataCopy = GncS04_42GetValidNavDataCopy(__str, v3, 0);
          v23 = ValidNavDataCopy;
          if (ValidNavDataCopy)
          {
            if (v81)
            {
              if (v81 >= 2u)
              {
                v24 = 2;
              }

              else
              {
                v24 = v81;
              }

              v25 = v80;
              while (*(v25 - 1) != 1 || *v25 != *(v10 + 2))
              {
                v25 += 2;
                if (!--v24)
                {
                  goto LABEL_34;
                }
              }

              v27 = *(v25 - 2);
LABEL_39:
              RespUpdtStat = GncS04_29GetRespUpdtStat(v10, v27, &v58);
              if (RespUpdtStat)
              {
                GncS04_41SendNavData(*(v10 + 2), v58, v23, __str);
                if (*(v10 + 24) >> 3 >= 0x271u)
                {
                  GncS03_08SessRespSentInd(v56, v61[0], *(v10 + 2), 0);
                }
              }

              else if (g_LbsOsaTrace_Config >= 4)
              {
                bzero(__s, 0x3C6uLL);
                v29 = mach_continuous_time();
                snprintf(__s, 0x3C5uLL, "%10u %s%c %s: NavData NoUpdt ID,%u\n", (*&g_MacClockTicksToMsRelation * v29), "GNC", 73, "GncS04_43UpdateNavSvData", *(v10 + 2));
                gnssOsa_PrintLog(__s, 4, 1, 0);
              }

              if ((*v17 & 2) == 0)
              {
                goto LABEL_64;
              }

LABEL_45:
              if (!v57)
              {
                goto LABEL_64;
              }

              v30 = gnssOsa_Calloc("GncS04_37UpdateDetailedMeasData", 1143, 1, 0x1B8uLL);
              if (!v30)
              {
                goto LABEL_64;
              }

              v31 = v30;
              if (GncP_GetDetailedMeasData(v30))
              {
                __s[0] = 0;
                GncS04_29GetRespUpdtStat(v10, 1, __s);
                v32 = gnssOsa_Calloc("GncS04_37UpdateDetailedMeasData", 1167, 1, 0x20uLL);
                if (v32)
                {
                  v33 = v32;
                  v32[3] = v56;
                  *(v32 + 8) = *(v10 + 2);
                  *(v32 + 18) = __s[0];
                  *(v32 + 3) = v31;
                  if (g_LbsOsaTrace_Config >= 4)
                  {
                    bzero(__str, 0x3C6uLL);
                    v34 = mach_continuous_time();
                    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_RAWMEAS_DATA_IND =>GNM ID,%d,OSTTick,%d,Final,%d,NumMeas,%u,NumUsed,%u\n", (*&g_MacClockTicksToMsRelation * v34), "GNC", 73, "GncS04_37UpdateDetailedMeasData", *(v33 + 8), v33[3], *(v33 + 18), *(v31 + 44), *(v31 + 164));
                    gnssOsa_PrintLog(__str, 4, 1, 0);
                  }

                  AgpsSendFsmMsg(130, 128, 8520195, v33);
                  if (*v17 == 2)
                  {
                    v35 = RespUpdtStat + 1;
                    goto LABEL_65;
                  }

LABEL_64:
                  v35 = 1;
                  if (!RespUpdtStat)
                  {
                    v43 = 0;
                    v35 = 0;
                    v42 = 1;
LABEL_67:
                    v44 = *(v10 + 4);
                    LODWORD(v3) = v56;
                    if (v44 == 2)
                    {
                      v50 = *(v8 + 2);
                      if ((*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v50 < *(v10 + 28))
                      {
LABEL_87:
                        if (g_LbsOsaTrace_Config < 5)
                        {
                          goto LABEL_90;
                        }

                        bzero(__str, 0x3C6uLL);
                        v54 = mach_continuous_time();
                        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ID,%u,UpdtSnt,%u,PrevUpdt,%u,NumFix,%d\n", (*&g_MacClockTicksToMsRelation * v54), "GNC", 68, "GncS04_30UpdateSessionParam", *(v10 + 2), v35, *(v10 + 40), *(v8 + 5));
                        v12 = 5;
                        goto LABEL_89;
                      }

                      *(v8 + 5) = 0;
                      if (g_LbsOsaTrace_Config < 4)
                      {
                        goto LABEL_90;
                      }

                      bzero(__str, 0x3C6uLL);
                      v51 = mach_continuous_time();
                      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ID,%u,RespTime,%u\n", (*&g_MacClockTicksToMsRelation * v51), "GNC", 73, "GncS04_30UpdateSessionParam", *(v10 + 2), *(v10 + 28));
                      v52 = 4;
                    }

                    else
                    {
                      if (v44 == 1)
                      {
                        if (v42)
                        {
                          *(v10 + 40) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                        }

                        else
                        {
                          *(v8 + 5) = 0;
                        }

                        goto LABEL_87;
                      }

                      if (!*(v10 + 4))
                      {
                        if (v43)
                        {
                          v45 = *(v8 + 5);
                          if (v45 != -1)
                          {
                            *(v8 + 5) = v45 - 1;
                          }
                        }

                        if (*(v10 + 16))
                        {
                          v46 = *(v8 + 2);
                          v47 = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v46;
                          LODWORD(v3) = v56;
                          v48 = v47 + word_2A13C3B66 + 30 > *(v10 + 16);
                          v49 = v43 ^ 1;
                          if (!v48)
                          {
                            v49 = 1;
                          }

                          if ((v49 & 1) == 0)
                          {
                            *(v8 + 5) = 0;
                          }
                        }

                        goto LABEL_87;
                      }

                      if (g_LbsOsaTrace_Config < 2)
                      {
                        goto LABEL_90;
                      }

                      bzero(__str, 0x3C6uLL);
                      v53 = mach_continuous_time();
                      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SessionType,%hhu\n", (*&g_MacClockTicksToMsRelation * v53), "GNC", 87, "GncS04_30UpdateSessionParam", 770, *(v10 + 4));
                      v52 = 2;
                    }

                    gnssOsa_PrintLog(__str, v52, 1, 0);
                    goto LABEL_87;
                  }

LABEL_65:
                  v41 = mach_continuous_time();
                  v42 = 0;
                  *(v10 + 40) = (*&g_MacClockTicksToMsRelation * v41);
                  v43 = 1;
                  goto LABEL_67;
                }
              }

              else if (g_LbsOsaTrace_Config >= 2)
              {
                bzero(__str, 0x3C6uLL);
                v37 = mach_continuous_time();
                snprintf(__str, 0x3C5uLL, "%10u %s%c %s: DetailMeas Updt NA ID,%u\n", (*&g_MacClockTicksToMsRelation * v37), "GNC", 87, "GncS04_37UpdateDetailedMeasData", *(v10 + 2));
                gnssOsa_PrintLog(__str, 2, 1, 0);
              }

              v38 = v31[12];
              if (v38)
              {
                free(v38);
              }

              v31[12] = 0;
              v39 = v31[42];
              if (v39)
              {
                free(v39);
              }

              v31[42] = 0;
              v40 = v31[44];
              if (v40)
              {
                free(v40);
              }

              free(v31);
              goto LABEL_64;
            }

LABEL_34:
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__s, 0x3C6uLL);
              v26 = mach_continuous_time();
              snprintf(__s, 0x3C5uLL, "%10u %s%c %s: NavQual Missing ID,%u\n", (*&g_MacClockTicksToMsRelation * v26), "GNC", 87, "GncS04_43UpdateNavSvData", *(v10 + 2));
              v27 = 2;
              gnssOsa_PrintLog(__s, 2, 1, 0);
              goto LABEL_39;
            }
          }

          else if (g_LbsOsaTrace_Config >= 4)
          {
            bzero(__s, 0x3C6uLL);
            v28 = mach_continuous_time();
            snprintf(__s, 0x3C5uLL, "%10u %s%c %s: NavData NA ID,%u\n", (*&g_MacClockTicksToMsRelation * v28), "GNC", 73, "GncS04_43UpdateNavSvData", *(v10 + 2));
            gnssOsa_PrintLog(__s, 4, 1, 0);
          }

          v27 = 2;
          goto LABEL_39;
        }

        bzero(__str, 0x3C6uLL);
        v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Updt ID,%u,Type,%hhu,Unsol,N,TmElapsed,%u,RespTime,%u\n", v14, "GNC");
      }

      gnssOsa_PrintLog(__str, 4, 1, 0);
      goto LABEL_20;
    }

LABEL_90:
    v4 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  if ((byte_2A13EE4D8 - 3 >= 0xFFFFFFFE || byte_2A13EE4A4 - 3 >= 0xFFFFFFFE) && (v57 & 1) == 0)
  {
    GncS04_74UpdateScheduler();
  }
}

void GncS04_74UpdateScheduler(void)
{
  v21 = *MEMORY[0x29EDCA608];
  if (g_GncSFGClientData)
  {
    if (AgpsFsmStopTimer(8522758) && g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v0 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 87, "GncS04_74UpdateScheduler", 1545);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    LOBYTE(g_GncSFGClientData) = 0;
  }

  v1 = 0;
  v2 = 0x7FFFFFFF;
  v3 = 1;
  do
  {
    v4 = v3;
    v5 = &g_GncSFGClientData + 52 * v1;
    v8 = v5[28];
    v7 = v5 + 28;
    v6 = v8;
    if (v8)
    {
      if (v6 <= 2 && *(v7 + 5) != 0)
      {
        if (v7[4] - 1 >= 2)
        {
          if (v7[4] && g_LbsOsaTrace_Config >= 2)
          {
            bzero(__str, 0x3C6uLL);
            v17 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SessionType,%hhu\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 87, "GncS04_27GetUpdateReportInt", 770, v7[4]);
            v16 = 2;
            goto LABEL_24;
          }
        }

        else
        {
          v10 = *(v7 + 2);
          v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v10;
          v12 = v11 + 30;
          v13 = *(v7 + 3) + *(v7 + 7);
          v14 = v13 - v11 - 30;
          if (v14 <= 30)
          {
            v14 = 30;
          }

          if (v12 >= v13)
          {
            v14 = 30;
          }

          if (v14 < v2)
          {
            v2 = v14;
          }

          if (g_LbsOsaTrace_Config > 4)
          {
            bzero(__str, 0x3C6uLL);
            v15 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ID,%u,StartTm,%u,RespTime,%u,MinPosTime,%u\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 68, "GncS04_27GetUpdateReportInt", *(v7 + 1), *(v7 + 3), *(v7 + 7), v2);
            v16 = 5;
LABEL_24:
            gnssOsa_PrintLog(__str, v16, 1, 0);
          }
        }
      }
    }

    v3 = 0;
    v1 = 1;
  }

  while ((v4 & 1) != 0);
  if (v2 == 0x7FFFFFFF)
  {
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FGSess timer Not Req\n");
      goto LABEL_34;
    }
  }

  else
  {
    if (AgpsFsmStartTimer(8522758, v2))
    {
      if (g_LbsOsaTrace_Config < 2)
      {
        return;
      }

      bzero(__str, 0x3C6uLL);
      v18 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Dur,%u\n", (*&g_MacClockTicksToMsRelation * v18), "GNC", 87, "GncS04_74UpdateScheduler", 1544, v2);
      v19 = 2;
    }

    else
    {
      LOBYTE(g_GncSFGClientData) = 1;
      if (g_LbsOsaTrace_Config < 5)
      {
        return;
      }

      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Scheduler timer,%u\n");
LABEL_34:
      v19 = 5;
    }

    gnssOsa_PrintLog(__str, v19, 1, 0);
  }
}

void GncS04_73FGPosTimerExpiry(void)
{
  v2 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v0 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FG timer Expired\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 68, "GncS04_73FGPosTimerExpiry");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  LOBYTE(g_GncSFGClientData) = 0;
  GncS04_72SendUpdates(0);
}

uint64_t GncS04_75HandleStopPos(uint64_t a1)
{
  *&v36[247] = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(&__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(&__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_STOP_POS_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncS04_75HandleStopPos");
    gnssOsa_PrintLog(&__str, 4, 1, 0);
  }

  if (a1)
  {
    v3 = *(a1 + 12);
    if (word_2A13EE4A6 == v3)
    {
      v4 = 0;
    }

    else
    {
      if (word_2A13EE4DA != v3)
      {
        if (g_LbsOsaTrace_Config >= 2)
        {
          bzero(&__str, 0x3C6uLL);
          v22 = mach_continuous_time();
          snprintf(&__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SessionNotFound ID,%u\n", (*&g_MacClockTicksToMsRelation * v22), "GNC", 87, "GncS04_75HandleStopPos", 2052, v3);
          gnssOsa_PrintLog(&__str, 2, 1, 0);
        }

        GncS04_21SendStopPosResp(1, v3);
        return 0;
      }

      v4 = 1;
    }

    v7 = word_2A13C3B68;
    bzero(&__str, 0x400uLL);
    v8 = mach_continuous_time();
    v30 = snprintf(&__str, 0x400uLL, "$PDPST,%u,%u", (*&g_MacClockTicksToMsRelation * v8), v3);
    if (HswUtil_AddNmeaCS(&__str, 0x400u, &v30))
    {
      v9 = v30;
      LbsOsaTrace_PrintAsciiBuf(1u, 4u, 0, &__str, v30);
      if ((v7 & 0x200) != 0)
      {
        GncS04_07SndDbgNmea(&__str, v9);
      }
    }

    else if (g_LbsOsaTrace_Config)
    {
      bzero(__s, 0x3C6uLL);
      v10 = mach_continuous_time();
      snprintf(__s, 0x3C5uLL, "%10u %s%c %s: #%04hx BytesWritten,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 69, "GncS04_09SndStopPosNmea", 772, v30);
      gnssOsa_PrintLog(__s, 1, 1, 0);
    }

    v11 = &g_GncSFGClientData + 52 * v4;
    v14 = v11[28];
    v13 = (v11 + 28);
    v12 = v14;
    if (v14 > 1)
    {
      if (v12 == 2)
      {
        if (g_LbsOsaTrace_Config >= 2)
        {
          bzero(&__str, 0x3C6uLL);
          v24 = mach_continuous_time();
          snprintf(&__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SessionNotActive ID,%u,State,%hhu\n", (*&g_MacClockTicksToMsRelation * v24), "GNC", 87, "GncS04_75HandleStopPos", 2050, v3, *v13);
          gnssOsa_PrintLog(&__str, 2, 1, 0);
        }

        v25 = *(&g_GncSFGClientData + 26 * v4 + 15);
        BYTE8(__str) = 0;
        *&__str = 0;
        v34 = 0;
        *v36 = 0;
        v35 = 0;
        *(&v36[1] + 3) = 0;
        BYTE12(__str) = 1;
        HIWORD(__str) = v25;
        v33 = 0;
        GncS03_07PosEventUpdate(&__str);
        GncS04_05DeRegClient(v4);
        GncS04_21SendStopPosResp(0, v3);
LABEL_47:
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(&__str, 0x3C6uLL);
          v27 = mach_continuous_time();
          snprintf(&__str, 0x3C5uLL, "%10u %s%c %s: InstanceCount,%u\n", (*&g_MacClockTicksToMsRelation * v27), "GNC", 68, "GncS04_75HandleStopPos", byte_2A13EE4A0);
          v6 = 5;
          goto LABEL_49;
        }

        return 0;
      }

      if (v12 == 3)
      {
        if (g_LbsOsaTrace_Config < 4)
        {
          return 0;
        }

        bzero(&__str, 0x3C6uLL);
        v20 = mach_continuous_time();
        snprintf(&__str, 0x3C5uLL, "%10u %s%c %s: StopAckPending ID,%u\n", (*&g_MacClockTicksToMsRelation * v20), "GNC", 73, "GncS04_75HandleStopPos", v3);
        v21 = 4;
        goto LABEL_37;
      }
    }

    else
    {
      if (!v12)
      {
        goto LABEL_47;
      }

      if (v12 == 1)
      {
        v15 = *(v13 + 1);
        BYTE8(__str) = 0;
        *&__str = 0;
        v34 = 0;
        *v36 = 0;
        v35 = 0;
        *(&v36[1] + 3) = 0;
        BYTE12(__str) = 1;
        HIWORD(__str) = v15;
        v33 = 0;
        GncS03_07PosEventUpdate(&__str);
        if (g_LbsOsaTrace_Config >= 4)
        {
          bzero(&__str, 0x3C6uLL);
          v16 = mach_continuous_time();
          snprintf(&__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Stopped ID,%u\n", (*&g_MacClockTicksToMsRelation * v16), "GNC", 73, "GncS04_75HandleStopPos", 2058, v3);
          gnssOsa_PrintLog(&__str, 4, 1, 0);
        }

        if (byte_2A13EE498 == 1)
        {
          if (AgpsFsmStopTimer(8523270) && g_LbsOsaTrace_Config >= 2)
          {
            bzero(&__str, 0x3C6uLL);
            v17 = mach_continuous_time();
            snprintf(&__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 87, "GncS04_75HandleStopPos", 1545);
            gnssOsa_PrintLog(&__str, 2, 1, 0);
          }

          byte_2A13EE498 = 0;
        }

        *v13 = 3;
        if (AgpsFsmStartTimer(8523270, 0x258u))
        {
          if (g_LbsOsaTrace_Config >= 2)
          {
            bzero(&__str, 0x3C6uLL);
            v18 = mach_continuous_time();
            snprintf(&__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Dur,%u\n", (*&g_MacClockTicksToMsRelation * v18), "GNC", 87, "GncS04_75HandleStopPos", 1544, 600);
            v19 = 2;
LABEL_43:
            gnssOsa_PrintLog(&__str, v19, 1, 0);
          }
        }

        else
        {
          byte_2A13EE498 = 1;
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(&__str, 0x3C6uLL);
            v26 = mach_continuous_time();
            snprintf(&__str, 0x3C5uLL, "%10u %s%c %s: SessStopAck Timer,%u\n", (*&g_MacClockTicksToMsRelation * v26), "GNC", 68, "GncS04_75HandleStopPos", 600);
            v19 = 5;
            goto LABEL_43;
          }
        }

        if (byte_2A13EE4A4 - 1 >= 2 && byte_2A13EE4D8 - 1 >= 2)
        {
          if (g_GncSFGClientData == 1)
          {
            if (AgpsFsmStopTimer(8522758) && g_LbsOsaTrace_Config >= 2)
            {
              bzero(&__str, 0x3C6uLL);
              v29 = mach_continuous_time();
              snprintf(&__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v29), "GNC", 87, "GncS04_75HandleStopPos", 1545);
              gnssOsa_PrintLog(&__str, 2, 1, 0);
            }

            LOBYTE(g_GncSFGClientData) = 0;
          }
        }

        else
        {
          GncS04_74UpdateScheduler();
        }

        goto LABEL_47;
      }
    }

    if (g_LbsOsaTrace_Config < 2)
    {
      return 0;
    }

    bzero(&__str, 0x3C6uLL);
    v23 = mach_continuous_time();
    snprintf(&__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v23), "GNC", 87, "GncS04_75HandleStopPos", 770);
    v21 = 2;
LABEL_37:
    gnssOsa_PrintLog(&__str, v21, 1, 0);
    goto LABEL_47;
  }

  if (g_LbsOsaTrace_Config)
  {
    bzero(&__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(&__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 69, "GncS04_75HandleStopPos", 517);
    v6 = 1;
LABEL_49:
    gnssOsa_PrintLog(&__str, v6, 1, 0);
  }

  return 0;
}

void GncS04_21SendStopPosResp(int a1, int a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = gnssOsa_Calloc("GncS04_21SendStopPosResp", 393, 1, 0x10uLL);
  if (v4)
  {
    v5 = v4;
    *(v4 + 6) = a2;
    v4[14] = a1;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_STOP_POS_RSP =>GNM ID,%hu,Code,%hhu\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncS04_21SendStopPosResp", a2, a1);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(130, 128, 8519940, v5);
  }
}

void GncS04_05DeRegClient(unsigned int a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (!byte_2A13EE4A0)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: InstanceCount,%u\n");
    goto LABEL_13;
  }

  if (a1 >= 2)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return;
    }

LABEL_12:
    bzero(__str, 0x3C6uLL);
    v5 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Handle,%u\n", v5);
LABEL_13:
    gnssOsa_PrintLog(__str, 2, 1, 0);
    return;
  }

  v1 = &g_GncSFGClientData + 52 * a1;
  v3 = v1[28];
  v2 = v1 + 28;
  if (!v3)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return;
    }

    goto LABEL_12;
  }

  --byte_2A13EE4A0;
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: InstanceCount,%u,DeRegSessionID,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 73, "GncS04_05DeRegClient", byte_2A13EE4A0, *(v2 + 1));
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  *(v2 + 47) = 0;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *v2 = 0u;
}

uint64_t GncS04_76HandleStartPos(uint64_t a1)
{
  v77 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_START_POS_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncS04_76HandleStartPos");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v4 = *(a1 + 12);
    if (word_2A13EE4A6 == v4)
    {
      v5 = 0;
      goto LABEL_10;
    }

    v5 = 1;
    if (word_2A13EE4DA == v4)
    {
LABEL_10:
      v8 = *(a1 + 14);
      v9 = &g_GncSFGClientData + 52 * v5;
      if (v8)
      {
        if (*(a1 + 14))
        {
          v10 = *(a1 + 32);
          if (*(a1 + 15) == 2 && v10 > *(a1 + 36))
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx FixInterval,%u,ResponseTime,%u\n", v11);
LABEL_47:
              v22 = 1;
              gnssOsa_PrintLog(__str, 2, 1, 0);
LABEL_108:
              v24 = *(a1 + 12);
              v25 = v22;
              goto LABEL_109;
            }

            goto LABEL_48;
          }

          if (v10 - 1 <= 0x62)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx FixInterval,%u,MinSupportedInt,%u\n", v15);
              goto LABEL_47;
            }

LABEL_48:
            v22 = 1;
            goto LABEL_108;
          }
        }

        if ((*(a1 + 14) & 2) != 0 && v9[32])
        {
          v16 = *(a1 + 36);
          if (!v16)
          {
            v16 = 1000;
          }

          *(v9 + 14) = v16;
          if (g_LbsOsaTrace_Config < 4)
          {
            v18 = 1;
            if ((v8 & 1) == 0)
            {
              goto LABEL_56;
            }
          }

          else
          {
            bzero(__str, 0x3C6uLL);
            v17 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Updated RespTime,%u\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 73, "GncS04_32HandleSessionModifyReq", *(v9 + 14));
            v18 = 1;
            gnssOsa_PrintLog(__str, 4, 1, 0);
            v8 = *(a1 + 14);
            if ((v8 & 1) == 0)
            {
              goto LABEL_56;
            }
          }
        }

        else
        {
          v18 = 0;
          if ((v8 & 1) == 0)
          {
            goto LABEL_56;
          }
        }

        v19 = 1000;
        if (*(a1 + 32))
        {
          if (v9[32] == 1)
          {
            v19 = 1000;
          }

          else
          {
            v19 = *(a1 + 32);
          }
        }

        *(v9 + 13) = v19;
        if (g_LbsOsaTrace_Config < 4)
        {
          v18 = 1;
        }

        else
        {
          bzero(__str, 0x3C6uLL);
          v20 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Updated FixInterval,%u\n", (*&g_MacClockTicksToMsRelation * v20), "GNC", 73, "GncS04_32HandleSessionModifyReq", *(v9 + 13));
          v18 = 1;
          gnssOsa_PrintLog(__str, 4, 1, 0);
          v8 = *(a1 + 14);
        }

LABEL_56:
        if ((v8 & 4) != 0)
        {
          v26 = *(a1 + 48);
          if (v9[60] != v26)
          {
            v9[60] = v26;
            if (g_LbsOsaTrace_Config < 4)
            {
              v18 = 1;
            }

            else
            {
              bzero(__str, 0x3C6uLL);
              v27 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Updated PosOutput,%u\n", (*&g_MacClockTicksToMsRelation * v27), "GNC", 73, "GncS04_32HandleSessionModifyReq", v9[60]);
              v18 = 1;
              gnssOsa_PrintLog(__str, 4, 1, 0);
              v8 = *(a1 + 14);
            }
          }
        }

        if ((v8 & 8) != 0)
        {
          v32 = *(a1 + 50);
          if (v9[61] != v32)
          {
            v9[61] = v32;
            if (g_LbsOsaTrace_Config < 4)
            {
              v18 = 1;
              if ((v8 & 0x10) == 0)
              {
                goto LABEL_82;
              }

LABEL_75:
              v34 = *(a1 + 28);
              if (*(a1 + 28))
              {
                if (!v9[32])
                {
                  goto LABEL_80;
                }
              }

              else if (!v9[32])
              {
                v34 = -1;
                goto LABEL_80;
              }

              v34 = 1;
LABEL_80:
              *(v9 + 12) = v34;
              if (g_LbsOsaTrace_Config < 4)
              {
                v18 = 1;
                if ((v8 & 0x20) == 0)
                {
                  goto LABEL_91;
                }

LABEL_83:
                v36 = *(a1 + 44);
                if (*(v9 + 31) != v36)
                {
                  *(v9 + 31) = v36;
                  if (g_LbsOsaTrace_Config < 4)
                  {
                    v18 = 1;
                  }

                  else
                  {
                    bzero(__str, 0x3C6uLL);
                    v37 = mach_continuous_time();
                    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Updated HorAcc,%u\n", (*&g_MacClockTicksToMsRelation * v37), "GNC", 73, "GncS04_32HandleSessionModifyReq", *(v9 + 31));
                    v18 = 1;
                    gnssOsa_PrintLog(__str, 4, 1, 0);
                    v8 = *(a1 + 14);
                  }
                }

LABEL_91:
                if ((v8 & 0x40) != 0)
                {
                  v38 = *(a1 + 46);
                  if (*(v9 + 32) != v38)
                  {
                    *(v9 + 32) = v38;
                    if (g_LbsOsaTrace_Config < 4)
                    {
                      v18 = 1;
                    }

                    else
                    {
                      bzero(__str, 0x3C6uLL);
                      v39 = mach_continuous_time();
                      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Updated VertAcc,%u\n", (*&g_MacClockTicksToMsRelation * v39), "GNC", 73, "GncS04_32HandleSessionModifyReq", *(v9 + 32));
                      v18 = 1;
                      gnssOsa_PrintLog(__str, 4, 1, 0);
                      v8 = *(a1 + 14);
                    }
                  }
                }

                if ((v8 & 0x80) == 0)
                {
                  goto LABEL_103;
                }

                v40 = *(a1 + 40);
                if (*(v9 + 18) == v40 || !*(a1 + 15))
                {
                  goto LABEL_103;
                }

                *(v9 + 18) = v40;
                if (g_LbsOsaTrace_Config >= 4)
                {
                  bzero(__str, 0x3C6uLL);
                  v41 = mach_continuous_time();
                  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Updated AgeLimit,%u\n", (*&g_MacClockTicksToMsRelation * v41), "GNC", 73, "GncS04_32HandleSessionModifyReq", *(v9 + 18));
                  gnssOsa_PrintLog(__str, 4, 1, 0);
                  v40 = *(v9 + 18);
                }

                if (v40 && !v9[76])
                {
                  v47 = GncS04_71CheckAgeLimitCond(v3);
                  *(v9 + 9) = v3;
                  *(v9 + 17) = v3;
                  if (v47)
                  {
                    goto LABEL_104;
                  }
                }

                else
                {
LABEL_103:
                  *(v9 + 9) = v3;
                  *(v9 + 17) = v3;
                  if (v18)
                  {
LABEL_104:
                    if (g_LbsOsaTrace_Config >= 4)
                    {
                      bzero(__str, 0x3C6uLL);
                      v42 = mach_continuous_time();
                      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SessionUpdted\n", (*&g_MacClockTicksToMsRelation * v42), "GNC", 73, "GncS04_32HandleSessionModifyReq", 2059);
                      gnssOsa_PrintLog(__str, 4, 1, 0);
                    }

                    GncS04_20SendUpdateToGncpe((v9 + 28));
                    GncS04_74UpdateScheduler();
                  }
                }

                GncS04_08SndStartPosNmea((v9 + 28));
                v22 = 255;
                goto LABEL_108;
              }

              bzero(__str, 0x3C6uLL);
              v35 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Updated NumReports,%d\n", (*&g_MacClockTicksToMsRelation * v35), "GNC", 73, "GncS04_32HandleSessionModifyReq", *(v9 + 12));
              v18 = 1;
              gnssOsa_PrintLog(__str, 4, 1, 0);
              v8 = *(a1 + 14);
LABEL_82:
              if ((v8 & 0x20) == 0)
              {
                goto LABEL_91;
              }

              goto LABEL_83;
            }

            bzero(__str, 0x3C6uLL);
            v33 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Updated ConstMask,%u\n", (*&g_MacClockTicksToMsRelation * v33), "GNC", 73, "GncS04_32HandleSessionModifyReq", v9[61]);
            v18 = 1;
            gnssOsa_PrintLog(__str, 4, 1, 0);
            v8 = *(a1 + 14);
          }
        }

        if ((v8 & 0x10) == 0)
        {
          goto LABEL_82;
        }

        goto LABEL_75;
      }

      if (v9[28] != 2)
      {
        if (g_LbsOsaTrace_Config >= 2)
        {
          bzero(__str, 0x3C6uLL);
          v21 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ID,%u,ReqRcvd,%u\n", v21);
          goto LABEL_47;
        }

        goto LABEL_48;
      }

      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v12 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx StartAckPending ID,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 73, "GncS04_76HandleStartPos", 2053, *(a1 + 12));
        v7 = 4;
        goto LABEL_8;
      }

      return 0;
    }

    if (byte_2A13EE4D8)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    if (byte_2A13EE4A4)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v14 >= 2)
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n");
        goto LABEL_52;
      }

      goto LABEL_54;
    }

    if (byte_2A13EE4A0 >= 2u)
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v74 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: InstanceCount,%u,Max,%lu\n", v74);
LABEL_52:
        gnssOsa_PrintLog(__str, 2, 1, 0);
        if (g_LbsOsaTrace_Config >= 2)
        {
          bzero(__str, 0x3C6uLL);
          v23 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v23), "GNC", 87, "GncS04_76HandleStartPos", 2049);
          gnssOsa_PrintLog(__str, 2, 1, 0);
        }
      }

LABEL_54:
      v24 = *(a1 + 12);
      v25 = 0;
LABEL_109:
      GncS04_22SendStartPosResp(v25, v24);
      return 0;
    }

    ++byte_2A13EE4A0;
    v28 = &g_GncSFGClientData + 52 * v14;
    v28[28] = 1;
    v29 = (v28 + 28);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v30 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: InstanceCount,%u\n", (*&g_MacClockTicksToMsRelation * v30), "GNC", 73, "GncS04_76HandleStartPos", byte_2A13EE4A0);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    if (*(a1 + 14))
    {
      if (g_LbsOsaTrace_Config < 2)
      {
LABEL_66:
        GncS04_05DeRegClient(v14);
        v24 = *(a1 + 12);
        v25 = 1;
        goto LABEL_109;
      }

      bzero(__str, 0x3C6uLL);
      v31 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SessionID,%u,ReqType,%u\n", v31);
LABEL_65:
      gnssOsa_PrintLog(__str, 2, 1, 0);
      goto LABEL_66;
    }

    if (!*(a1 + 48))
    {
      if (g_LbsOsaTrace_Config < 2)
      {
        goto LABEL_66;
      }

      bzero(__str, 0x3C6uLL);
      v75 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx OutputType,%u\n", v75);
      goto LABEL_65;
    }

    v44 = *(a1 + 24);
    v45 = *(a1 + 15);
    if (v44)
    {
      if (*(a1 + 15))
      {
        if (g_LbsOsaTrace_Config < 2)
        {
          goto LABEL_66;
        }

        bzero(__str, 0x3C6uLL);
        v46 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SessType,%hhu,StopTime,%u\n", v46);
        goto LABEL_65;
      }

      if (v44 <= *(a1 + 20))
      {
        if (g_LbsOsaTrace_Config < 2)
        {
          goto LABEL_66;
        }

        bzero(__str, 0x3C6uLL);
        v52 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx StartTime,%u,StopTime,%u\n", v52);
        goto LABEL_65;
      }

      v48 = 0;
    }

    else
    {
      v48 = *(a1 + 15);
      if (v45 == 2)
      {
        v49 = *(a1 + 32);
        if (v49 > *(a1 + 36))
        {
          if (g_LbsOsaTrace_Config < 2)
          {
            goto LABEL_66;
          }

          bzero(__str, 0x3C6uLL);
          v50 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx FixInterval,%u,ResponseTime,%u\n", v50);
          goto LABEL_65;
        }

        v51 = 0;
LABEL_131:
        if (v49 - 1 <= 0x62)
        {
          if (g_LbsOsaTrace_Config < 2)
          {
            goto LABEL_66;
          }

          bzero(__str, 0x3C6uLL);
          v53 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx FixInterval,%u,MinSupportedInt,%u\n", v53);
          goto LABEL_65;
        }

        v54 = !v51;
        if (!*(a1 + 40))
        {
          v54 = 1;
        }

        if ((v54 & 1) == 0)
        {
          if (g_LbsOsaTrace_Config >= 2)
          {
            bzero(__str, 0x3C6uLL);
            v55 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx AgeLimit,%u,SessionType,%hhu\n", (*&g_MacClockTicksToMsRelation * v55), "GNC", 87, "GncS04_23ChkStartPosParams", 515, *(a1 + 40), *(a1 + 15));
            gnssOsa_PrintLog(__str, 2, 1, 0);
            v45 = *(a1 + 15);
          }

          *(a1 + 40) = 0;
        }

        v56 = *(a1 + 16);
        if (v56 && !v45)
        {
          if (g_LbsOsaTrace_Config < 2)
          {
            v45 = 0;
          }

          else
          {
            bzero(__str, 0x3C6uLL);
            v57 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx WaitToTimeout,%u,SessionType,%hhu\n", (*&g_MacClockTicksToMsRelation * v57), "GNC", 87, "GncS04_23ChkStartPosParams", 515, *(a1 + 16), *(a1 + 15));
            gnssOsa_PrintLog(__str, 2, 1, 0);
            v45 = *(a1 + 15);
          }

          v56 = 0;
          *(a1 + 16) = 0;
        }

        *(v29 + 2) = *(a1 + 12);
        *(v29 + 8) = v3;
        *(v29 + 40) = v3;
        *(v29 + 4) = v45;
        v58 = 1000 * *(a1 + 20);
        *(v29 + 12) = v58;
        v59 = *(a1 + 28);
        if (*(a1 + 28))
        {
          if (!v45)
          {
LABEL_151:
            *(v29 + 20) = v59;
            v60 = *(a1 + 32);
            if (v45 == 1 || v60 == 0)
            {
              v60 = 1000;
            }

            *(v29 + 24) = v60;
            v62 = *(a1 + 24);
            if (v62)
            {
              if (!v45)
              {
                v63 = 1000 * v62;
                v64 = 16;
LABEL_164:
                *(v29 + v64) = v63;
                goto LABEL_165;
              }
            }

            else if (!v45)
            {
LABEL_165:
              *(v29 + 50) = *(a1 + 54);
              *(v29 + 32) = *(a1 + 48);
              *(v29 + 33) = *(a1 + 50);
              *(v29 + 34) = *(a1 + 44);
              *(v29 + 44) = *(a1 + 40);
              *(v29 + 48) = v56;
              *(v29 + 49) = *(a1 + 49) != 0;
              if (g_LbsOsaTrace_Config >= 4)
              {
                bzero(__str, 0x3C6uLL);
                v67 = mach_continuous_time();
                snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ID,%u,Type,%hhu,NumFix,%d,FixInt,%u,Age,%u,PrefFtaMeasTime,%u,StartTm,%u,StopTm,%u\n", (*&g_MacClockTicksToMsRelation * v67), "GNC", 73, "GncS04_24StoreSessParams", 2057, *(v29 + 2), *(v29 + 4), *(v29 + 20), *(v29 + 24), *(v29 + 44), *(v29 + 50), *(v29 + 12), *(v29 + 16));
                gnssOsa_PrintLog(__str, 4, 1, 0);
                if (g_LbsOsaTrace_Config >= 4)
                {
                  bzero(__str, 0x3C6uLL);
                  v68 = mach_continuous_time();
                  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespTime,%u,HAcc,%u,VAcc,%u,Output,%u,ConstMask,%u,WaitTO,%u\n", (*&g_MacClockTicksToMsRelation * v68), "GNC", 73, "GncS04_24StoreSessParams", 2057, *(v29 + 28), *(v29 + 34), *(v29 + 36), *(v29 + 32), *(v29 + 33), *(v29 + 48));
                  gnssOsa_PrintLog(__str, 4, 1, 0);
                }
              }

              if (*(v29 + 44) && !*(v29 + 48) && !GncS04_71CheckAgeLimitCond(v3))
              {
                return 0;
              }

              *v29 = 2;
              if (g_LbsOsaTrace_Config >= 4)
              {
                bzero(__str, 0x3C6uLL);
                v69 = mach_continuous_time();
                snprintf(__str, 0x3C5uLL, "%10u %s%c %s: StartAckPending ID,%u\n", (*&g_MacClockTicksToMsRelation * v69), "GNC", 73, "GncS04_76HandleStartPos", *(v29 + 2));
                gnssOsa_PrintLog(__str, 4, 1, 0);
              }

              if (BYTE8(g_GncSFGClientData) == 1)
              {
                if (AgpsFsmStopTimer(8523014) && g_LbsOsaTrace_Config >= 2)
                {
                  bzero(__str, 0x3C6uLL);
                  v70 = mach_continuous_time();
                  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v70), "GNC", 87, "GncS04_76HandleStartPos", 1545);
                  gnssOsa_PrintLog(__str, 2, 1, 0);
                }

                BYTE8(g_GncSFGClientData) = 0;
              }

              if (AgpsFsmStartTimer(8523014, 0x1F40u))
              {
                if (g_LbsOsaTrace_Config >= 2)
                {
                  bzero(__str, 0x3C6uLL);
                  v71 = mach_continuous_time();
                  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Dur,%u\n", (*&g_MacClockTicksToMsRelation * v71), "GNC", 87, "GncS04_76HandleStartPos", 1544, 8000);
                  v72 = 2;
LABEL_183:
                  gnssOsa_PrintLog(__str, v72, 1, 0);
                }
              }

              else
              {
                BYTE8(g_GncSFGClientData) = 1;
                if (g_LbsOsaTrace_Config >= 5)
                {
                  bzero(__str, 0x3C6uLL);
                  v73 = mach_continuous_time();
                  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: SessStartAck Timer,%u\n", (*&g_MacClockTicksToMsRelation * v73), "GNC", 68, "GncS04_76HandleStartPos", 8000);
                  v72 = 5;
                  goto LABEL_183;
                }
              }

              GncS04_20SendUpdateToGncpe(v29);
              GncS04_74UpdateScheduler();
              GncS04_08SndStartPosNmea(v29);
              return 0;
            }

            v65 = *(a1 + 36);
            v66 = v65 + v58;
            if (v65)
            {
              v63 = v66;
            }

            else
            {
              v63 = 1000;
            }

            v64 = 28;
            goto LABEL_164;
          }
        }

        else if (!v45)
        {
          v59 = -1;
          goto LABEL_151;
        }

        v59 = 1;
        goto LABEL_151;
      }
    }

    v49 = *(a1 + 32);
    v51 = v48 == 0;
    goto LABEL_131;
  }

  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 69, "GncS04_76HandleStartPos", 517);
    v7 = 1;
LABEL_8:
    gnssOsa_PrintLog(__str, v7, 1, 0);
  }

  return 0;
}

uint64_t GncS04_82HandlePosEvntResp(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 69, "GncS04_82HandlePosEvntResp", 517);
      v6 = 1;
LABEL_12:
      gnssOsa_PrintLog(__str, v6, 1, 0);
      return 0;
    }

    return 0;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_POS_EVENT_RSP Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncS04_82HandlePosEvntResp", *(a1 + 12));
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v3 = *(a1 + 12);
  if (v3 <= 4)
  {
    if (*(a1 + 12) > 2u)
    {
      if (v3 != 3)
      {
        if (v3 != 4)
        {
          goto LABEL_28;
        }

LABEL_24:
        v7 = 2;
LABEL_26:
        GncS04_31ChkSendPendingStopAck(v7);
        return 0;
      }
    }

    else if (v3 != 1)
    {
      if (v3 == 2)
      {
        return 0;
      }

      goto LABEL_28;
    }

    v7 = 255;
    goto LABEL_26;
  }

  if (*(a1 + 12) <= 6u)
  {
    if (v3 != 5)
    {
      if (v3 == 6)
      {
        goto LABEL_22;
      }

LABEL_28:
      if (g_LbsOsaTrace_Config < 2)
      {
        return 0;
      }

      bzero(__str, 0x3C6uLL);
      v9 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 87, "GncS04_82HandlePosEvntResp", 770, *(a1 + 12));
      v6 = 2;
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  if (v3 != 7)
  {
    if (v3 != 8)
    {
      if (v3 == 9)
      {
        v4 = 0;
LABEL_23:
        GncS04_35ChkSendPendingStartAck(v4);
        return 0;
      }

      goto LABEL_28;
    }

LABEL_22:
    v4 = 255;
    goto LABEL_23;
  }

  return 0;
}

void GncS04_99DeInitFGClientInstance(void)
{
  if (g_GncSFGClientData == 1)
  {
    AgpsFsmStopTimer(8522758);
  }

  if (byte_2A13EE498 == 1)
  {
    AgpsFsmStopTimer(8523270);
  }

  if (BYTE8(g_GncSFGClientData) == 1)
  {

    AgpsFsmStopTimer(8523014);
  }
}

uint64_t Gnm10_00InitReq(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_INIT\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_00InitReq");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    *&qword_2A13EE520 = 0u;
    *&qword_2A13EE530 = 0u;
    *&g_GnmCBs = 0u;
    HSW_InitConfiguration(a1);
    qword_2A13EC308 = 0;
    unk_2A13EC310 = 0;
    qword_2A13EC318 = 0;
    g_GnmInstances[0] = 0;
    g_HWStatus = 0u;
    unk_2A13EC374 = 0u;
    xmmword_2A13EC384 = 0u;
    unk_2A13EC394 = 0u;
    unk_2A13EC39D = 0u;
    g_HalStatusInfo = 0;
    qword_2A13EC608 = 0;
    unk_2A13EC610 = 0;
    g_Gnm_NVStoreCntxt = 0;
    *&byte_2A13EC617 = 0;
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 69, "Gnm10_00InitReq", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

void *Gnm10_01DeinitReq(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_DEINIT\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_01DeinitReq");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    g_IsHwInit = 0;
    Gnm02_24AbortAllNafSessions(7);
    v3 = 2u;
    do
    {
      v4 = *&g_GnmInstances[v3];
      if (v4)
      {
        Gnm02_21DeleteInstn(v4);
      }

      v3 += 2;
    }

    while (v3 != 8);
    g_GnmInstances[0] = 0;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GnmState,Active/Reset->Init\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 73, "Gnm10_01DeinitReq", 261);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    return &a_GnmInitState;
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 69, "Gnm10_01DeinitReq", 517);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    return 0;
  }
}

uint64_t Gnm10_04PositioningReq(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_REG_POS_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_04PositioningReq");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    v3 = *(a1 + 54);
    v4 = Gnm02_13ReqNewNafInstn(*(a1 + 12), "GNM_REG_POS_REQ");
    if (v4 && (v5 = v4, (v6 = *(v4 + 1)) != 0) && *(v4 + 2) == 1)
    {
      v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v6->i8[4] = *(a1 + 54);
      v6[9] = *(a1 + 64);
      v6[1].i8[0] = *(a1 + 48);
      v6[1].i32[1] = v7;
      v6[5].i32[0] = v7;
      v6[2] = vmul_s32(*(a1 + 36), vdup_n_s32(0x3E8u));
      v6[3].i32[0] = *(a1 + 32);
      v6[3].i32[1] = *(a1 + 24);
      v6[4].i32[1] = v7;
      v6[5].i16[2] = *(a1 + 44);
      v6[6].i16[2] = *(a1 + 50);
      v6[6].i16[3] = *(a1 + 52);
      v6[4].i32[0] = *(a1 + 28);
      v6[7] = *(a1 + 16);
      v6[8].i8[0] = *(a1 + 56);
      Hal_StoreCoExConfiguration(*(a1 + 72));
      v8 = *(v5 + 1);
      v9 = gnssOsa_Calloc("Gnm10_27SendPosStart", 464, 1, 0x38uLL);
      if (v9)
      {
        v11 = v9;
        v9[6] = *v5;
        v9[7] = 0;
        if ((*(v8 + 4) & 2) != 0)
        {
          v9[14] = *(v8 + 44);
        }

        else if (g_LbsOsaTrace_Config >= 2)
        {
          bzero(__str, 0x3C6uLL);
          v12 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SessType\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 87, "Gnm10_27SendPosStart", 770);
          gnssOsa_PrintLog(__str, 2, 1, 0);
        }

        LODWORD(v10) = *(v8 + 16);
        *&v17 = v10 * 0.001;
        *(v11 + 5) = *&v17;
        LODWORD(v17) = *(v8 + 20);
        *(v11 + 6) = (v17 * 0.001);
        *(v11 + 8) = *(v8 + 24);
        v11[22] = *(v8 + 52);
        v11[23] = *(v8 + 54);
        *(v11 + 48) = *(v8 + 8);
        *(v11 + 50) = 115;
        if (g_LbsOsaTrace_Config >= 4)
        {
          bzero(__str, 0x3C6uLL);
          v18 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: SessionId,%u,StartTime,%u,StopTime,%u,NoOfRep,%u,FixInt,%u RespTime,%u,HorAcc,%u,VerAcc,%u,PosOutput,%u,ConstRep,%u\n", (*&g_MacClockTicksToMsRelation * v18), "GNM", 73, "Gnm10_27SendPosStart", v11[6], *(v11 + 5), *(v11 + 6), v11[14], *(v11 + 8), *(v11 + 9), v11[22], v11[23], *(v11 + 48), *(v11 + 50));
          gnssOsa_PrintLog(__str, 4, 1, 0);
          if (g_LbsOsaTrace_Config >= 4)
          {
            bzero(__str, 0x3C6uLL);
            v19 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_START_POS_REQ =>GNCS Id,%u\n", (*&g_MacClockTicksToMsRelation * v19), "GNM", 73, "Gnm10_27SendPosStart", v11[6]);
            gnssOsa_PrintLog(__str, 4, 1, 0);
          }
        }

        AgpsSendFsmMsg(128, 130, 8519680, v11);
      }

      else
      {
        Gnm11_00ApiStatusCB(11, 1, *(a1 + 12), v3 & 2);
        Gnm02_21DeleteInstn(v5);
      }
    }

    else
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v13 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 87, "Gnm10_04PositioningReq", 2052);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      Gnm11_00ApiStatusCB(3, 1, *(a1 + 12), v3 & 2);
      v14 = *(a1 + 64);
      if (v14)
      {
        free(v14);
      }

      *(a1 + 64) = 0;
    }
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v15 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v15), "GNM", 69, "Gnm10_04PositioningReq", 517);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    Gnm11_00ApiStatusCB(11, 0, 0, 0);
  }

  return 0;
}

uint64_t Gnm10_05DiscardPosReq(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_REG_POS_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_05DiscardPosReq");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    Gnm11_00ApiStatusCB(4, 1, *(a1 + 12), *(a1 + 54) & 2);
    v3 = *(a1 + 64);
    if (v3)
    {
      free(v3);
    }

    *(a1 + 64) = 0;
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm10_05DiscardPosReq", 517);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    Gnm11_00ApiStatusCB(11, 0, 0, 0);
  }

  return 0;
}

uint64_t Gnm10_06StopPosnReq(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_STOP_POSN_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_06StopPosnReq");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (!a1)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 69, "Gnm10_06StopPosnReq", 517);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    v6 = 11;
    goto LABEL_14;
  }

  InstnFromNafId = Gnm02_32GetInstnFromNafId(*(a1 + 12));
  if (!InstnFromNafId)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 87, "Gnm10_06StopPosnReq", 2052);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    v6 = 3;
LABEL_14:
    Gnm11_00ApiStatusCB(v6, 0, 0, 1);
    return 0;
  }

  v4 = InstnFromNafId;
  if ((*(*(InstnFromNafId + 8) + 4) & 7) == 0 || !Gnm02_23StopNafSession(InstnFromNafId))
  {
    Gnm11_00ApiStatusCB(11, 1, *(a1 + 12), 1);
    Gnm02_21DeleteInstn(v4);
  }

  return 0;
}

uint64_t Gnm10_08HandleClearGnss(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_CLEAR_GNSS_CACHE\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_08HandleClearGnss");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    v3 = *(a1 + 12);
    if ((v3 - 0x400000) <= 0xFFC00000)
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v4 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx DeleteFields,0x%X\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 87, "Gnm10_08HandleClearGnss", 770, v3);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      v5 = 1;
      goto LABEL_15;
    }

    if (byte_2A13EE541 != 1)
    {
      byte_2A13EE541 = 1;
      Gnm31_04SendClearNv(v3);
      return 0;
    }

    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx PrevReqOngoing\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 87, "Gnm10_08HandleClearGnss", 1028);
      v7 = 2;
      goto LABEL_13;
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 69, "Gnm10_08HandleClearGnss", 517);
    v7 = 1;
LABEL_13:
    gnssOsa_PrintLog(__str, v7, 1, 0);
  }

  v5 = 11;
LABEL_15:
  Gnm11_00ApiStatusCB(v5, 0, 0, 16);
  return 0;
}

uint64_t Gnm10_09DisableGnss(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_DISABLE_GNSS\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_09DisableGnss");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    Gnm02_24AbortAllNafSessions(7);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 69, "Gnm10_09DisableGnss", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

uint64_t Gnm10_10RegisterGnmCBs(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_REG_CALLBACKS\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_10RegisterGnmCBs");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    if (*(a1 + 16))
    {
      g_GnmCBs = *(a1 + 16);
    }

    if (*(a1 + 24))
    {
      qword_2A13EE530 = *(a1 + 24);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 69, "Gnm10_10RegisterGnmCBs", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

uint64_t Gnm10_13StopFwActivityRsp(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_STOP_FW_ACTIVE_RSP\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_13StopFwActivityRsp");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v3 = g_LbsOsaTrace_Config;
  if (!a1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    v8 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 69, "Gnm10_13StopFwActivityRsp", 517);
    v7 = 1;
LABEL_14:
    gnssOsa_PrintLog(__str, v7, 1, 0);
    return 0;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Activity,%hhu,Resp,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm10_13StopFwActivityRsp", *(a1 + 12), *(a1 + 13));
    gnssOsa_PrintLog(__str, 4, 1, 0);
    v3 = g_LbsOsaTrace_Config;
  }

  if (*(a1 + 12) != 1 && v3 >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ActivityType,%hhu\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm10_13StopFwActivityRsp", 770, *(a1 + 12));
    v7 = 2;
    goto LABEL_14;
  }

  return 0;
}

uint64_t Gnm10_15NmeaUpdateReq(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_REG_NMEA_UPDATES\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_15NmeaUpdateReq");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v4 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Registering\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm10_15NmeaUpdateReq");
        gnssOsa_PrintLog(__str, 4, 1, 0);
        v3 = *(a1 + 16);
      }

      qword_2A13EE520 = v3;
      word_2A13C3B68 = *(a1 + 24);
    }

    else
    {
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v6 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Deregistering\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm10_15NmeaUpdateReq");
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      qword_2A13EE520 = 0;
      word_2A13C3B68 = 0;
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 69, "Gnm10_15NmeaUpdateReq", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

BOOL Gnm10_28StopPositioning(unsigned __int16 *a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("Gnm10_28StopPositioning", 517, 1, 0x10uLL);
  v3 = v2;
  if (v2)
  {
    v2[6] = *a1;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_STOP_POS_REQ =>GNCS Id,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm10_28StopPositioning", v3[6]);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(128, 130, 8519936, v3);
  }

  return v3 != 0;
}

uint64_t Gnm10_29SendFwActivity(char a1, int a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    result = gnssOsa_Calloc("Gnm10_29SendFwActivity", 543, 1, 0x10uLL);
    if (!result)
    {
      return result;
    }

    v4 = result;
    *(result + 12) = a1;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_START_FW_ACTIVE_IND =>GNCP Activity,%hhu\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 73, "Gnm10_29SendFwActivity", v4[12]);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v6 = 8390403;
  }

  else
  {
    result = gnssOsa_Calloc("Gnm10_29SendFwActivity", 560, 1, 0x10uLL);
    if (!result)
    {
      return result;
    }

    v4 = result;
    *(result + 12) = a1;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_STOP_FW_ACTIVE_REQ =>GNC Activity,%hhu\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm10_29SendFwActivity", v4[12]);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v6 = 8390656;
  }

  AgpsSendFsmMsg(128, 132, v6, v4);
  return 1;
}

BOOL Gnm10_31SendMEWakeRsp(int a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("Gnm10_31SendMEWakeRsp", 586, 1, 0x10uLL);
  v3 = v2;
  if (v2)
  {
    v2[12] = a1;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_ME_WAKE_RSP =>GNCP Status,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm10_31SendMEWakeRsp", a1);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(128, 132, 8390916, v3);
  }

  return v3 != 0;
}

uint64_t Gnm10_zxGnssInitRsp(unsigned __int8 *a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = a1[8];
  if (g_LbsOsaTrace_Config > 3)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Status,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm10_zxGnssInitRsp", v1);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (v1 == 32)
  {
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Success response\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 68, "Gnm10_zxGnssInitRsp");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    Gnm10_31SendMEWakeRsp(1);
    Gnm10_29SendFwActivity(1, 0);
  }

  else if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Status,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 87, "Gnm10_zxGnssInitRsp", 770, v1);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  return 0;
}

void XofData::LogSummaryOfDecodedData(XofData *this)
{
  v140 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Xof File create time [ Week number: %u, TOW: %u ]\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "LogSummaryOfDecodedData", *(this + 1), *(this + 1));
    gnssOsa_PrintLog(__str, 4, 1, 0);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Ext. Eph. start time [ Week number: %u, TOW: %u ]\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 73, "LogSummaryOfDecodedData", *(this + 4), *(this + 3));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  XofData::LogSummaryOfDecodedConstllationData<std::map<unsigned char,XofGpsQzssEphemeris>,std::map<unsigned char,XofGpsQzssAlmanac>>(this, this + 688, this + 544, 0, 1, 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v131);
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  for (i = 1; i != 25; ++i)
  {
    if (*(this + 209) && *(this + 72))
    {
      v9 = this + 576;
      v10 = *(this + 72);
      do
      {
        v11 = v10[28];
        v12 = v11 >= i;
        v13 = v11 < i;
        if (v12)
        {
          v9 = v10;
        }

        v10 = *&v10[8 * v13];
      }

      while (v10);
      if (v9 != (this + 576) && v9[28] <= i)
      {
        v6 |= 1 << (i - 1);
        v5 = (v5 + 1);
      }
    }

    if (*(this + 210) && *(this + 90))
    {
      v14 = this + 720;
      v15 = *(this + 90);
      do
      {
        v16 = v15[28];
        v12 = v16 >= i;
        v17 = v16 < i;
        if (v12)
        {
          v14 = v15;
        }

        v15 = *&v15[8 * v17];
      }

      while (v15);
      if (v14 != (this + 720) && v14[28] <= i)
      {
        v7 |= 1 << (i - 1);
        v4 = (v4 + 1);
      }
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__str, "GLO");
  if ((v139 & 0x80u) == 0)
  {
    v18 = __str;
  }

  else
  {
    v18 = *__str;
  }

  if ((v139 & 0x80u) == 0)
  {
    v19 = v139;
  }

  else
  {
    v19 = v138;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, v18, v19);
  if (v139 < 0)
  {
    operator delete(*__str);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", Alm sats: ", 12);
  *(&v133[1].__locale_ + *(v131 - 24)) = 2;
  MEMORY[0x29C296190](&v131, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", Alm Bitmask: ", 15);
  v20 = v131;
  *(&v133[1].__locale_ + *(v131 - 24)) = 15;
  *(&v131 + *(v20 - 24) + 8) = *(&v131 + *(v20 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(&v131 + *(v20 - 24) + 8) |= 0x200u;
  *(&v131 + *(v20 - 24) + 8) |= 0x4000u;
  v21 = MEMORY[0x29C2961A0](&v131, v6);
  *(v21 + *(*v21 - 24) + 8) = *(v21 + *(*v21 - 24) + 8) & 0xFFFFFFB5 | 2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", BCE Sats: ", 12);
  *(&v133[1].__locale_ + *(v131 - 24)) = 2;
  MEMORY[0x29C296190](&v131, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", BCE Bitmask: ", 15);
  v22 = v131;
  *(&v133[1].__locale_ + *(v131 - 24)) = 15;
  *(&v131 + *(v22 - 24) + 8) = *(&v131 + *(v22 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(&v131 + *(v22 - 24) + 8) |= 0x200u;
  *(&v131 + *(v22 - 24) + 8) |= 0x4000u;
  v23 = MEMORY[0x29C2961A0](&v131, v7);
  *(v23 + *(*v23 - 24) + 8) = *(v23 + *(*v23 - 24) + 8) & 0xFFFFFFB5 | 2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", EE Sats: ", 11);
  *(&v133[1].__locale_ + *(v131 - 24)) = 2;
  MEMORY[0x29C296190](&v131, *(this + 211));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", EE Blocks: ", 13);
  *(&v133[1].__locale_ + *(v131 - 24)) = 2;
  MEMORY[0x29C296190](&v131, *(this + 212));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", EE Bitmask: ", 14);
  v24 = v131;
  *(&v133[1].__locale_ + *(v131 - 24)) = 15;
  *(&v131 + *(v24 - 24) + 8) = *(&v131 + *(v24 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(&v131 + *(v24 - 24) + 8) |= 0x200u;
  *(&v131 + *(v24 - 24) + 8) |= 0x4000u;
  v25 = MEMORY[0x29C2961A0](&v131, *(this + 27));
  *(v25 + *(*v25 - 24) + 8) = *(v25 + *(*v25 - 24) + 8) & 0xFFFFFFB5 | 2;
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v26 = mach_continuous_time();
    v27 = *&g_MacClockTicksToMsRelation;
    std::stringbuf::str();
    if (v130 >= 0)
    {
      v28 = __p;
    }

    else
    {
      v28 = __p[0];
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (v27 * v26), "GNC", 73, "LogSummaryOfDecodedConstllationData", v28);
    if (v130 < 0)
    {
      operator delete(__p[0]);
    }

    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v131 = *MEMORY[0x29EDC9538];
  v29 = v131;
  v30 = *(MEMORY[0x29EDC9538] + 24);
  *(&v131 + *(v131 - 24)) = v30;
  v132 = MEMORY[0x29EDC9570] + 16;
  if (v135 < 0)
  {
    operator delete(v134);
  }

  v132 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v133);
  std::ostream::~ostream();
  MEMORY[0x29C296240](v136);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v131);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  for (j = 1; j != 37; ++j)
  {
    if (*(this + 161) && *(this + 75))
    {
      v36 = this + 600;
      v37 = *(this + 75);
      do
      {
        v38 = v37[28];
        v12 = v38 >= j;
        v39 = v38 < j;
        if (v12)
        {
          v36 = v37;
        }

        v37 = *&v37[8 * v39];
      }

      while (v37);
      if (v36 != (this + 600) && v36[28] <= j)
      {
        v33 |= 1 << (j - 1);
        v32 = (v32 + 1);
      }
    }

    if (*(this + 162) && *(this + 93))
    {
      v40 = this + 744;
      v41 = *(this + 93);
      do
      {
        v42 = v41[28];
        v12 = v42 >= j;
        v43 = v42 < j;
        if (v12)
        {
          v40 = v41;
        }

        v41 = *&v41[8 * v43];
      }

      while (v41);
      if (v40 != (this + 744) && v40[28] <= j)
      {
        v34 |= 1 << (j - 1);
        v31 = (v31 + 1);
      }
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__str, "GAL");
  if ((v139 & 0x80u) == 0)
  {
    v44 = __str;
  }

  else
  {
    v44 = *__str;
  }

  if ((v139 & 0x80u) == 0)
  {
    v45 = v139;
  }

  else
  {
    v45 = v138;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, v44, v45);
  if (v139 < 0)
  {
    operator delete(*__str);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", Alm sats: ", 12);
  *(&v133[1].__locale_ + *(v131 - 24)) = 2;
  MEMORY[0x29C296190](&v131, v32);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", Alm Bitmask: ", 15);
  v46 = v131;
  *(&v133[1].__locale_ + *(v131 - 24)) = 15;
  *(&v131 + *(v46 - 24) + 8) = *(&v131 + *(v46 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(&v131 + *(v46 - 24) + 8) |= 0x200u;
  *(&v131 + *(v46 - 24) + 8) |= 0x4000u;
  v47 = MEMORY[0x29C2961A0](&v131, v33);
  *(v47 + *(*v47 - 24) + 8) = *(v47 + *(*v47 - 24) + 8) & 0xFFFFFFB5 | 2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", BCE Sats: ", 12);
  *(&v133[1].__locale_ + *(v131 - 24)) = 2;
  MEMORY[0x29C296190](&v131, v31);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", BCE Bitmask: ", 15);
  v48 = v131;
  *(&v133[1].__locale_ + *(v131 - 24)) = 15;
  *(&v131 + *(v48 - 24) + 8) = *(&v131 + *(v48 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(&v131 + *(v48 - 24) + 8) |= 0x200u;
  *(&v131 + *(v48 - 24) + 8) |= 0x4000u;
  v49 = MEMORY[0x29C2961A0](&v131, v34);
  *(v49 + *(*v49 - 24) + 8) = *(v49 + *(*v49 - 24) + 8) & 0xFFFFFFB5 | 2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", EE Sats: ", 11);
  *(&v133[1].__locale_ + *(v131 - 24)) = 2;
  MEMORY[0x29C296190](&v131, *(this + 163));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", EE Blocks: ", 13);
  *(&v133[1].__locale_ + *(v131 - 24)) = 2;
  MEMORY[0x29C296190](&v131, *(this + 164));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", EE Bitmask: ", 14);
  v50 = v131;
  *(&v133[1].__locale_ + *(v131 - 24)) = 15;
  *(&v131 + *(v50 - 24) + 8) = *(&v131 + *(v50 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(&v131 + *(v50 - 24) + 8) |= 0x200u;
  *(&v131 + *(v50 - 24) + 8) |= 0x4000u;
  v51 = MEMORY[0x29C2961A0](&v131, *(this + 21));
  *(v51 + *(*v51 - 24) + 8) = *(v51 + *(*v51 - 24) + 8) & 0xFFFFFFB5 | 2;
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v52 = mach_continuous_time();
    v53 = *&g_MacClockTicksToMsRelation;
    std::stringbuf::str();
    if (v130 >= 0)
    {
      v54 = __p;
    }

    else
    {
      v54 = __p[0];
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (v53 * v52), "GNC", 73, "LogSummaryOfDecodedConstllationData", v54);
    if (v130 < 0)
    {
      operator delete(__p[0]);
    }

    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v131 = v29;
  *(&v131 + *(v29 - 24)) = v30;
  v132 = MEMORY[0x29EDC9570] + 16;
  if (v135 < 0)
  {
    operator delete(v134);
  }

  v132 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v133);
  std::ostream::~ostream();
  MEMORY[0x29C296240](v136);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v131);
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  for (k = 1; k != 64; ++k)
  {
    if (*(this + 257) && *(this + 81))
    {
      v60 = this + 648;
      v61 = *(this + 81);
      do
      {
        v62 = v61[28];
        v12 = v62 >= k;
        v63 = v62 < k;
        if (v12)
        {
          v60 = v61;
        }

        v61 = *&v61[8 * v63];
      }

      while (v61);
      if (v60 != (this + 648) && v60[28] <= k)
      {
        v57 |= 1 << (k - 1);
        v56 = (v56 + 1);
      }
    }

    if (*(this + 258) && *(this + 99))
    {
      v64 = this + 792;
      v65 = *(this + 99);
      do
      {
        v66 = v65[32];
        v12 = v66 >= k;
        v67 = v66 < k;
        if (v12)
        {
          v64 = v65;
        }

        v65 = *&v65[8 * v67];
      }

      while (v65);
      if (v64 != (this + 792) && v64[32] <= k)
      {
        v58 |= 1 << (k - 1);
        v55 = (v55 + 1);
      }
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__str, "BDS");
  if ((v139 & 0x80u) == 0)
  {
    v68 = __str;
  }

  else
  {
    v68 = *__str;
  }

  if ((v139 & 0x80u) == 0)
  {
    v69 = v139;
  }

  else
  {
    v69 = v138;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, v68, v69);
  if (v139 < 0)
  {
    operator delete(*__str);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", Alm sats: ", 12);
  *(&v133[1].__locale_ + *(v131 - 24)) = 2;
  MEMORY[0x29C296190](&v131, v56);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", Alm Bitmask: ", 15);
  v70 = v131;
  *(&v133[1].__locale_ + *(v131 - 24)) = 15;
  *(&v131 + *(v70 - 24) + 8) = *(&v131 + *(v70 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(&v131 + *(v70 - 24) + 8) |= 0x200u;
  *(&v131 + *(v70 - 24) + 8) |= 0x4000u;
  v71 = MEMORY[0x29C2961A0](&v131, v57);
  *(v71 + *(*v71 - 24) + 8) = *(v71 + *(*v71 - 24) + 8) & 0xFFFFFFB5 | 2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", BCE Sats: ", 12);
  *(&v133[1].__locale_ + *(v131 - 24)) = 2;
  MEMORY[0x29C296190](&v131, v55);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", BCE Bitmask: ", 15);
  v72 = v131;
  *(&v133[1].__locale_ + *(v131 - 24)) = 15;
  *(&v131 + *(v72 - 24) + 8) = *(&v131 + *(v72 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(&v131 + *(v72 - 24) + 8) |= 0x200u;
  *(&v131 + *(v72 - 24) + 8) |= 0x4000u;
  v73 = MEMORY[0x29C2961A0](&v131, v58);
  *(v73 + *(*v73 - 24) + 8) = *(v73 + *(*v73 - 24) + 8) & 0xFFFFFFB5 | 2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", EE Sats: ", 11);
  *(&v133[1].__locale_ + *(v131 - 24)) = 2;
  MEMORY[0x29C296190](&v131, *(this + 259));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", EE Blocks: ", 13);
  *(&v133[1].__locale_ + *(v131 - 24)) = 2;
  MEMORY[0x29C296190](&v131, *(this + 260));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", EE Bitmask: ", 14);
  v74 = v131;
  *(&v133[1].__locale_ + *(v131 - 24)) = 15;
  *(&v131 + *(v74 - 24) + 8) = *(&v131 + *(v74 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(&v131 + *(v74 - 24) + 8) |= 0x200u;
  *(&v131 + *(v74 - 24) + 8) |= 0x4000u;
  v75 = MEMORY[0x29C2961A0](&v131, *(this + 33));
  *(v75 + *(*v75 - 24) + 8) = *(v75 + *(*v75 - 24) + 8) & 0xFFFFFFB5 | 2;
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v76 = mach_continuous_time();
    v77 = *&g_MacClockTicksToMsRelation;
    std::stringbuf::str();
    if (v130 >= 0)
    {
      v78 = __p;
    }

    else
    {
      v78 = __p[0];
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (v77 * v76), "GNC", 73, "LogSummaryOfDecodedConstllationData", v78);
    if (v130 < 0)
    {
      operator delete(__p[0]);
    }

    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v131 = v29;
  *(&v131 + *(v29 - 24)) = v30;
  v132 = MEMORY[0x29EDC9570] + 16;
  if (v135 < 0)
  {
    operator delete(v134);
  }

  v132 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v133);
  std::ostream::~ostream();
  MEMORY[0x29C296240](v136);
  XofData::LogSummaryOfDecodedConstllationData<std::map<unsigned char,XofGpsQzssEphemeris>,std::map<unsigned char,XofGpsQzssAlmanac>>(this, this + 760, this + 616, 2u, 193, 10);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v131);
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  for (m = 1; m != 15; ++m)
  {
    if (*(this + 305) && *(this + 84))
    {
      v84 = this + 672;
      v85 = *(this + 84);
      do
      {
        v86 = v85[28];
        v12 = v86 >= m;
        v87 = v86 < m;
        if (v12)
        {
          v84 = v85;
        }

        v85 = *&v85[8 * v87];
      }

      while (v85);
      if (v84 != (this + 672) && v84[28] <= m)
      {
        v81 |= 1 << (m - 1);
        v80 = (v80 + 1);
      }
    }

    if (*(this + 306) && *(this + 105))
    {
      v88 = this + 840;
      v89 = *(this + 105);
      do
      {
        v90 = v89[28];
        v12 = v90 >= m;
        v91 = v90 < m;
        if (v12)
        {
          v88 = v89;
        }

        v89 = *&v89[8 * v91];
      }

      while (v89);
      if (v88 != (this + 840) && v88[28] <= m)
      {
        v82 |= 1 << (m - 1);
        v79 = (v79 + 1);
      }
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__str, "NVC");
  if ((v139 & 0x80u) == 0)
  {
    v92 = __str;
  }

  else
  {
    v92 = *__str;
  }

  if ((v139 & 0x80u) == 0)
  {
    v93 = v139;
  }

  else
  {
    v93 = v138;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, v92, v93);
  if (v139 < 0)
  {
    operator delete(*__str);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", Alm sats: ", 12);
  *(&v133[1].__locale_ + *(v131 - 24)) = 2;
  MEMORY[0x29C296190](&v131, v80);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", Alm Bitmask: ", 15);
  v94 = v131;
  *(&v133[1].__locale_ + *(v131 - 24)) = 15;
  *(&v131 + *(v94 - 24) + 8) = *(&v131 + *(v94 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(&v131 + *(v94 - 24) + 8) |= 0x200u;
  *(&v131 + *(v94 - 24) + 8) |= 0x4000u;
  v95 = MEMORY[0x29C2961A0](&v131, v81);
  *(v95 + *(*v95 - 24) + 8) = *(v95 + *(*v95 - 24) + 8) & 0xFFFFFFB5 | 2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", BCE Sats: ", 12);
  *(&v133[1].__locale_ + *(v131 - 24)) = 2;
  MEMORY[0x29C296190](&v131, v79);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", BCE Bitmask: ", 15);
  v96 = v131;
  *(&v133[1].__locale_ + *(v131 - 24)) = 15;
  *(&v131 + *(v96 - 24) + 8) = *(&v131 + *(v96 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(&v131 + *(v96 - 24) + 8) |= 0x200u;
  *(&v131 + *(v96 - 24) + 8) |= 0x4000u;
  v97 = MEMORY[0x29C2961A0](&v131, v82);
  *(v97 + *(*v97 - 24) + 8) = *(v97 + *(*v97 - 24) + 8) & 0xFFFFFFB5 | 2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", EE Sats: ", 11);
  *(&v133[1].__locale_ + *(v131 - 24)) = 2;
  MEMORY[0x29C296190](&v131, *(this + 307));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", EE Blocks: ", 13);
  *(&v133[1].__locale_ + *(v131 - 24)) = 2;
  MEMORY[0x29C296190](&v131, *(this + 308));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", EE Bitmask: ", 14);
  v98 = v131;
  *(&v133[1].__locale_ + *(v131 - 24)) = 15;
  *(&v131 + *(v98 - 24) + 8) = *(&v131 + *(v98 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(&v131 + *(v98 - 24) + 8) |= 0x200u;
  *(&v131 + *(v98 - 24) + 8) |= 0x4000u;
  v99 = MEMORY[0x29C2961A0](&v131, *(this + 39));
  *(v99 + *(*v99 - 24) + 8) = *(v99 + *(*v99 - 24) + 8) & 0xFFFFFFB5 | 2;
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v100 = mach_continuous_time();
    v101 = *&g_MacClockTicksToMsRelation;
    std::stringbuf::str();
    if (v130 >= 0)
    {
      v102 = __p;
    }

    else
    {
      v102 = __p[0];
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (v101 * v100), "GNC", 73, "LogSummaryOfDecodedConstllationData", v102);
    if (v130 < 0)
    {
      operator delete(__p[0]);
    }

    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v131 = v29;
  *(&v131 + *(v29 - 24)) = v30;
  v132 = MEMORY[0x29EDC9570] + 16;
  if (v135 < 0)
  {
    operator delete(v134);
  }

  v132 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v133);
  std::ostream::~ostream();
  MEMORY[0x29C296240](v136);
  v128[0] = 0;
  v128[1] = 0;
  v127 = v128;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v131);
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  for (n = 120; n != 159; ++n)
  {
    if (*(this + 65) && v128[0])
    {
      v108 = v128;
      v109 = v128[0];
      do
      {
        v110 = *(v109 + 28);
        v12 = v110 >= n;
        v111 = v110 < n;
        if (v12)
        {
          v108 = v109;
        }

        v109 = v109[v111];
      }

      while (v109);
      if (v108 != v128 && *(v108 + 28) <= n)
      {
        v105 |= 1 << (n - 120);
        v104 = (v104 + 1);
      }
    }

    if (*(this + 66) && *(this + 102))
    {
      v112 = this + 816;
      v113 = *(this + 102);
      do
      {
        v114 = v113[28];
        v12 = v114 >= n;
        v115 = v114 < n;
        if (v12)
        {
          v112 = v113;
        }

        v113 = *&v113[8 * v115];
      }

      while (v113);
      if (v112 != (this + 816) && v112[28] <= n)
      {
        v106 |= 1 << (n - 120);
        v103 = (v103 + 1);
      }
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__str, "SBA");
  if ((v139 & 0x80u) == 0)
  {
    v116 = __str;
  }

  else
  {
    v116 = *__str;
  }

  if ((v139 & 0x80u) == 0)
  {
    v117 = v139;
  }

  else
  {
    v117 = v138;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, v116, v117);
  if (v139 < 0)
  {
    operator delete(*__str);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", Alm sats: ", 12);
  *(&v133[1].__locale_ + *(v131 - 24)) = 2;
  MEMORY[0x29C296190](&v131, v104);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", Alm Bitmask: ", 15);
  v118 = v131;
  *(&v133[1].__locale_ + *(v131 - 24)) = 15;
  *(&v131 + *(v118 - 24) + 8) = *(&v131 + *(v118 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(&v131 + *(v118 - 24) + 8) |= 0x200u;
  *(&v131 + *(v118 - 24) + 8) |= 0x4000u;
  v119 = MEMORY[0x29C2961A0](&v131, v105);
  *(v119 + *(*v119 - 24) + 8) = *(v119 + *(*v119 - 24) + 8) & 0xFFFFFFB5 | 2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", BCE Sats: ", 12);
  *(&v133[1].__locale_ + *(v131 - 24)) = 2;
  MEMORY[0x29C296190](&v131, v103);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", BCE Bitmask: ", 15);
  v120 = v131;
  *(&v133[1].__locale_ + *(v131 - 24)) = 15;
  *(&v131 + *(v120 - 24) + 8) = *(&v131 + *(v120 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(&v131 + *(v120 - 24) + 8) |= 0x200u;
  *(&v131 + *(v120 - 24) + 8) |= 0x4000u;
  v121 = MEMORY[0x29C2961A0](&v131, v106);
  *(v121 + *(*v121 - 24) + 8) = *(v121 + *(*v121 - 24) + 8) & 0xFFFFFFB5 | 2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", EE Sats: ", 11);
  *(&v133[1].__locale_ + *(v131 - 24)) = 2;
  MEMORY[0x29C296190](&v131, *(this + 67));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", EE Blocks: ", 13);
  *(&v133[1].__locale_ + *(v131 - 24)) = 2;
  MEMORY[0x29C296190](&v131, *(this + 68));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v131, ", EE Bitmask: ", 14);
  v122 = v131;
  *(&v133[1].__locale_ + *(v131 - 24)) = 15;
  *(&v131 + *(v122 - 24) + 8) = *(&v131 + *(v122 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(&v131 + *(v122 - 24) + 8) |= 0x200u;
  *(&v131 + *(v122 - 24) + 8) |= 0x4000u;
  v123 = MEMORY[0x29C2961A0](&v131, *(this + 9));
  *(v123 + *(*v123 - 24) + 8) = *(v123 + *(*v123 - 24) + 8) & 0xFFFFFFB5 | 2;
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v124 = mach_continuous_time();
    v125 = *&g_MacClockTicksToMsRelation;
    std::stringbuf::str();
    if (v130 >= 0)
    {
      v126 = __p;
    }

    else
    {
      v126 = __p[0];
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (v125 * v124), "GNC", 73, "LogSummaryOfDecodedConstllationData", v126);
    if (v130 < 0)
    {
      operator delete(__p[0]);
    }

    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v131 = v29;
  *(&v131 + *(v29 - 24)) = v30;
  v132 = MEMORY[0x29EDC9570] + 16;
  if (v135 < 0)
  {
    operator delete(v134);
  }

  v132 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v133);
  std::ostream::~ostream();
  MEMORY[0x29C296240](v136);
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(&v127, v128[0]);
}

void sub_2990335F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  std::ostringstream::~ostringstream(&a21);
  std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(&a15, a16);
  _Unwind_Resume(a1);
}

uint64_t XofData::LogSummaryOfDecodedConstllationData<std::map<unsigned char,XofGpsQzssEphemeris>,std::map<unsigned char,XofGpsQzssAlmanac>>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int a6)
{
  v55 = *MEMORY[0x29EDCA608];
  std::ostringstream::basic_ostringstream[abi:ne200100](&v48);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = a6 + a5;
  v17 = a1 + 48 * a4;
  v20 = *(a3 + 8);
  v19 = a3 + 8;
  v18 = v20;
  v23 = *(a2 + 8);
  v22 = a2 + 8;
  v21 = v23;
  v24 = a5;
  do
  {
    if (*(v17 + 17) && v18)
    {
      v25 = v19;
      v26 = v18;
      do
      {
        v27 = *(v26 + 28);
        v28 = v27 >= v24;
        v29 = v27 < v24;
        if (v28)
        {
          v25 = v26;
        }

        v26 = *(v26 + 8 * v29);
      }

      while (v26);
      if (v25 != v19 && *(v25 + 28) <= v24)
      {
        v14 |= 1 << (v24 - a5);
        v13 = (v13 + 1);
      }
    }

    if (*(v17 + 18) && v21)
    {
      v30 = v22;
      v31 = v21;
      do
      {
        v32 = *(v31 + 28);
        v28 = v32 >= v24;
        v33 = v32 < v24;
        if (v28)
        {
          v30 = v31;
        }

        v31 = *(v31 + 8 * v33);
      }

      while (v31);
      if (v30 != v22 && *(v30 + 28) <= v24)
      {
        v15 |= 1 << (v24 - a5);
        v12 = (v12 + 1);
      }
    }

    ++v24;
  }

  while (v24 < v16);
  std::string::basic_string[abi:ne200100]<0>(__p, off_29EF06738[a4]);
  if ((v54 & 0x80u) == 0)
  {
    v34 = __p;
  }

  else
  {
    v34 = __p[0];
  }

  if ((v54 & 0x80u) == 0)
  {
    v35 = v54;
  }

  else
  {
    v35 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, v34, v35);
  if (v54 < 0)
  {
    operator delete(__p[0]);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, ", Alm sats: ", 12);
  *(&v50[1].__locale_ + *(v48 - 24)) = 2;
  MEMORY[0x29C296190](&v48, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, ", Alm Bitmask: ", 15);
  v36 = v48;
  *(&v50[1].__locale_ + *(v48 - 24)) = 15;
  *(&v48 + *(v36 - 24) + 8) = *(&v48 + *(v36 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(&v48 + *(v36 - 24) + 8) |= 0x200u;
  *(&v48 + *(v36 - 24) + 8) |= 0x4000u;
  v37 = MEMORY[0x29C2961A0](&v48, v14);
  *(v37 + *(*v37 - 24) + 8) = *(v37 + *(*v37 - 24) + 8) & 0xFFFFFFB5 | 2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, ", BCE Sats: ", 12);
  *(&v50[1].__locale_ + *(v48 - 24)) = 2;
  MEMORY[0x29C296190](&v48, v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, ", BCE Bitmask: ", 15);
  v38 = v48;
  *(&v50[1].__locale_ + *(v48 - 24)) = 15;
  *(&v48 + *(v38 - 24) + 8) = *(&v48 + *(v38 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(&v48 + *(v38 - 24) + 8) |= 0x200u;
  *(&v48 + *(v38 - 24) + 8) |= 0x4000u;
  v39 = MEMORY[0x29C2961A0](&v48, v15);
  *(v39 + *(*v39 - 24) + 8) = *(v39 + *(*v39 - 24) + 8) & 0xFFFFFFB5 | 2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, ", EE Sats: ", 11);
  *(&v50[1].__locale_ + *(v48 - 24)) = 2;
  MEMORY[0x29C296190](&v48, *(v17 + 19));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, ", EE Blocks: ", 13);
  *(&v50[1].__locale_ + *(v48 - 24)) = 2;
  MEMORY[0x29C296190](&v48, *(v17 + 20));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, ", EE Bitmask: ", 14);
  v40 = v48;
  *(&v50[1].__locale_ + *(v48 - 24)) = 15;
  *(&v48 + *(v40 - 24) + 8) = *(&v48 + *(v40 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(&v48 + *(v40 - 24) + 8) |= 0x200u;
  *(&v48 + *(v40 - 24) + 8) |= 0x4000u;
  v41 = MEMORY[0x29C2961A0](&v48, *(v17 + 24));
  *(v41 + *(*v41 - 24) + 8) = *(v41 + *(*v41 - 24) + 8) & 0xFFFFFFB5 | 2;
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__p, 0x3C6uLL);
    v42 = mach_continuous_time();
    v43 = *&g_MacClockTicksToMsRelation;
    std::stringbuf::str();
    if (v47 >= 0)
    {
      v44 = &v46;
    }

    else
    {
      v44 = v46;
    }

    snprintf(__p, 0x3C5uLL, "%10u %s%c %s: %s\n", (v43 * v42), "GNC", 73, "LogSummaryOfDecodedConstllationData", v44);
    if (v47 < 0)
    {
      operator delete(v46);
    }

    gnssOsa_PrintLog(__p, 4, 1, 0);
  }

  v48 = *MEMORY[0x29EDC9538];
  *(&v48 + *(v48 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v49 = MEMORY[0x29EDC9570] + 16;
  if (v51 < 0)
  {
    operator delete(v50[7].__locale_);
  }

  v49 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v50);
  std::ostream::~ostream();
  return MEMORY[0x29C296240](&v52);
}

uint64_t XofData::Decode(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v157 = *MEMORY[0x29EDCA608];
  v106 = 372;
  std::string::basic_string[abi:ne200100]<0>(__p, "xofHeaderCRC");
  XofIntegralType<unsigned int>::XofIntegralType(v130, __p, 0, -1, 0);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (XofIntegralType<unsigned int>::DecodeFromHexData(v130, a2, &v106) == 1)
  {
    v6 = 0;
    v7 = -1;
    do
    {
      v8 = __rbit32(*(*a2 + v6));
      v9 = 8;
      do
      {
        v10 = v7 ^ v8;
        v11 = 2 * v7;
        v7 = (2 * v7) ^ 0x4C11DB7;
        if (v10 >= 0)
        {
          v7 = v11;
        }

        v8 *= 2;
        --v9;
      }

      while (v9);
      ++v6;
    }

    while (v6 != 372);
    if (v131 == __rbit32(~v7))
    {
      v12 = 1;
      v13 = 1;
    }

    else
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v15 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Invalid header CRC in the XOF file!\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 87, "VerifyHeaderCRC");
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      v12 = 0;
      v13 = 2;
    }
  }

  else
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v14 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Could not decode XOF header CRC!\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 87, "VerifyHeaderCRC");
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    v12 = 0;
    v13 = 5;
  }

  if (v133 < 0)
  {
    operator delete(v132);
    if (!v12)
    {
      return v13;
    }
  }

  else if (!v12)
  {
    return v13;
  }

  v106 = 364;
  std::string::basic_string[abi:ne200100]<0>(__p, "xofPayloadCRC");
  XofIntegralType<unsigned int>::XofIntegralType(v130, __p, 0, -1, 0);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (XofIntegralType<unsigned int>::DecodeFromHexData(v130, a2, &v106) == 1)
  {
    CRC32 = CRCGenerator::GetCRC32(a2, 0x178u, *(a2 + 8) - *a2 - 376);
    if (v131 == CRC32)
    {
      v17 = 1;
      v13 = 1;
    }

    else
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v19 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: XOF file has invalid Payload CRC!\n", (*&g_MacClockTicksToMsRelation * v19), "GNC", 87, "VerifyPayloadCRC");
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      v17 = 0;
      v13 = 3;
    }
  }

  else
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v18 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Could not decode XOF payload CRC!\n", (*&g_MacClockTicksToMsRelation * v18), "GNC", 87, "VerifyPayloadCRC");
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    v17 = 0;
    v13 = 5;
  }

  if (v133 < 0)
  {
    operator delete(v132);
    if (!v17)
    {
      return v13;
    }
  }

  else if (!v17)
  {
    return v13;
  }

  XofHeaderCodec::XofHeaderCodec(v130);
  if (XofHeaderCodec::Decode(v130, a2, a3))
  {
    XofHeader::XofHeader(__str, v130);
    memcpy(a1, __str, 0x16CuLL);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v20 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: XOF Header decoded, bytes decoded = [%u]\n", (*&g_MacClockTicksToMsRelation * v20), "GNC", 73, "Decode", *a3);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    if (*(a2 + 8) - (*a2 + *a3) == *(a1 + 352))
    {
      std::string::basic_string[abi:ne200100]<0>(&v136, "sa0");
      XofIntegralType<signed char>::XofIntegralType(__str, &v136, -128, 127, 0);
      std::string::basic_string[abi:ne200100]<0>(&v153, "sa1");
      XofIntegralType<signed char>::XofIntegralType(__p, &v153, -128, 127, 0);
      std::string::basic_string[abi:ne200100]<0>(&v150, "sa2");
      XofIntegralType<signed char>::XofIntegralType(v68, &v150, -128, 127, 0);
      std::string::basic_string[abi:ne200100]<0>(&v149, "sa3");
      XofIntegralType<signed char>::XofIntegralType(v147, &v149, -128, 127, 0);
      std::string::basic_string[abi:ne200100]<0>(&v146, "sb0");
      XofIntegralType<signed char>::XofIntegralType(&v154, &v146, -128, 127, 0);
      std::string::basic_string[abi:ne200100]<0>(&v142, "sb1");
      XofIntegralType<signed char>::XofIntegralType(&v151, &v142, -128, 127, 0);
      std::string::basic_string[abi:ne200100]<0>(&v138, "sb2");
      XofIntegralType<signed char>::XofIntegralType(&v143, &v138, -128, 127, 0);
      std::string::basic_string[abi:ne200100]<0>(&v135, "sb3");
      XofIntegralType<signed char>::XofIntegralType(&v139, &v135, -128, 127, 0);
      v106 = *__str;
      v107 = *&__str[8];
      v108 = *&__str[24];
      memset(&__str[8], 0, 24);
      v109 = *__p;
      v110 = *&__p[8];
      v111 = *&__p[24];
      memset(&__p[8], 0, 24);
      v112 = *v68;
      v114 = *&v68[24];
      v113 = *&v68[8];
      memset(&v68[8], 0, 24);
      v115 = *v147;
      v117 = *&v147[24];
      v116 = *&v147[8];
      memset(&v147[8], 0, 24);
      data = v154.__r_.__value_.__l.__data_;
      v120 = v155;
      v119 = *&v154.__r_.__value_.__r.__words[1];
      *&v154.__r_.__value_.__r.__words[1] = 0uLL;
      v155 = 0;
      v121 = v151.__r_.__value_.__l.__data_;
      v123 = v152;
      v122 = *&v151.__r_.__value_.__r.__words[1];
      *&v151.__r_.__value_.__r.__words[1] = 0uLL;
      v152 = 0;
      v124 = v143;
      v126 = v145;
      v125 = v144;
      v144 = 0uLL;
      v145 = 0;
      v127 = v139;
      v129 = v141;
      v128 = v140;
      v140 = 0uLL;
      v141 = 0;
      if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v135.__r_.__value_.__l.__data_);
        if (SHIBYTE(v145) < 0)
        {
          operator delete(v144);
        }
      }

      if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v138.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v152) < 0)
      {
        operator delete(v151.__r_.__value_.__l.__size_);
      }

      if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v142.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v155) < 0)
      {
        operator delete(v154.__r_.__value_.__l.__size_);
      }

      if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v146.__r_.__value_.__l.__data_);
      }

      if ((v147[31] & 0x80000000) != 0)
      {
        operator delete(*&v147[8]);
      }

      if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v149.__r_.__value_.__l.__data_);
      }

      if ((v68[31] & 0x80000000) != 0)
      {
        operator delete(*&v68[8]);
      }

      if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v150.__r_.__value_.__l.__data_);
      }

      if ((__p[31] & 0x80000000) != 0)
      {
        operator delete(*&__p[8]);
      }

      if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v153.__r_.__value_.__l.__data_);
      }

      if (__str[31] < 0)
      {
        operator delete(*&__str[8]);
      }

      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      if (XofIonosphericModelCodec::Decode(&v106, a2, a3))
      {
        *(a1 + 368) = HIBYTE(v106) | (HIBYTE(v109) << 8) | (HIBYTE(v112) << 16) | (HIBYTE(v115) << 24) | (HIBYTE(data) << 32) | (HIBYTE(v121) << 40) | (HIBYTE(v124) << 48) | (HIBYTE(v127) << 56);
        if (g_LbsOsaTrace_Config >= 4)
        {
          bzero(__str, 0x3C6uLL);
          v21 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: IonoSpheric Model decoded, bytes decoded = [%u]\n", (*&g_MacClockTicksToMsRelation * v21), "GNC", 73, "Decode", *a3);
          gnssOsa_PrintLog(__str, 4, 1, 0);
        }

        std::string::basic_string[abi:ne200100]<0>(&v153, "a1");
        XofIntegralType<int>::XofIntegralType(__str, &v153, -8388608, 0x7FFFFF, 0);
        std::string::basic_string[abi:ne200100]<0>(&v150, "a0");
        XofIntegralType<int>::XofIntegralType(v68, &v150, 0x80000000, 0x7FFFFFFF, 0);
        std::string::basic_string[abi:ne200100]<0>(&v149, "tot");
        XofIntegralType<unsigned short>::XofIntegralType(v147, &v149, 0, 255, 0);
        std::string::basic_string[abi:ne200100]<0>(&v146, "wNt");
        XofIntegralType<unsigned short>::XofIntegralType(&v154, &v146, 0, 255, 0);
        std::string::basic_string[abi:ne200100]<0>(&v142, "deltaTls");
        XofIntegralType<short>::XofIntegralType(&v151, &v142, -128, 127, 0);
        std::string::basic_string[abi:ne200100]<0>(&v138, "wnLsf");
        XofIntegralType<unsigned short>::XofIntegralType(&v143, &v138, 0, 255, 0);
        std::string::basic_string[abi:ne200100]<0>(&v135, "dn");
        XofIntegralType<short>::XofIntegralType(&v139, &v135, 1, 7, 0);
        std::string::basic_string[abi:ne200100]<0>(&v134, "deltaTLsf");
        XofIntegralType<short>::XofIntegralType(&v136, &v134, -128, 127, 0);
        *__p = *__str;
        *&__p[16] = *&__str[16];
        v88 = *v68;
        v22 = *&__str[32];
        memset(&__str[16], 0, 24);
        v89 = *&v68[16];
        v23 = v69.__r_.__value_.__r.__words[0];
        v87 = v22;
        *&v68[24] = 0;
        v69.__r_.__value_.__r.__words[0] = 0;
        *&v68[16] = 0;
        v24 = *&v147[24];
        v90 = v23;
        v91 = *v147;
        v92 = *&v147[8];
        memset(&v147[8], 0, 24);
        v25 = v155;
        v93 = v24;
        v94 = v154;
        *&v154.__r_.__value_.__r.__words[1] = 0uLL;
        v155 = 0;
        v26 = v152;
        v95 = v25;
        v96 = v151;
        *&v151.__r_.__value_.__r.__words[1] = 0uLL;
        v152 = 0;
        v27 = v145;
        v97 = v26;
        v98 = v143;
        v99 = v144;
        v144 = 0uLL;
        v145 = 0;
        v100 = v27;
        v101 = v139;
        v103 = v141;
        v102 = v140;
        v140 = 0uLL;
        v141 = 0;
        v104 = v136;
        v105 = v137;
        *&v136.__r_.__value_.__r.__words[1] = 0uLL;
        v137 = 0;
        if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v134.__r_.__value_.__l.__data_);
          if (SHIBYTE(v141) < 0)
          {
            operator delete(v140);
          }
        }

        if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v135.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v145) < 0)
        {
          operator delete(v144);
        }

        if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v138.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v152) < 0)
        {
          operator delete(v151.__r_.__value_.__l.__size_);
        }

        if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v142.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v155) < 0)
        {
          operator delete(v154.__r_.__value_.__l.__size_);
        }

        if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v146.__r_.__value_.__l.__data_);
        }

        if ((v147[31] & 0x80000000) != 0)
        {
          operator delete(*&v147[8]);
        }

        if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v149.__r_.__value_.__l.__data_);
        }

        if (v69.__r_.__value_.__s.__data_[7] < 0)
        {
          operator delete(*&v68[16]);
        }

        if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v150.__r_.__value_.__l.__data_);
        }

        if (__str[39] < 0)
        {
          operator delete(*&__str[16]);
        }

        if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v153.__r_.__value_.__l.__data_);
        }

        if (XofUtcModelCodec::Decode(__p, a2, a3))
        {
          v28 = HIDWORD(v88);
          v29 = HIWORD(v91);
          v30 = HIWORD(v94.__r_.__value_.__r.__words[0]);
          v31 = HIWORD(v96.__r_.__value_.__r.__words[0]);
          v32 = HIWORD(v98);
          v33 = HIWORD(v101);
          v34 = HIWORD(v104.__r_.__value_.__r.__words[0]);
          *(a1 + 376) = *&__p[12];
          *(a1 + 380) = v28;
          *(a1 + 384) = v29;
          *(a1 + 386) = v30;
          *(a1 + 388) = v31;
          *(a1 + 390) = v32;
          *(a1 + 392) = v33;
          *(a1 + 394) = v34;
          if (g_LbsOsaTrace_Config >= 4)
          {
            bzero(__str, 0x3C6uLL);
            v35 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: UTC Model decoded, bytes decoded = [%u]\n", (*&g_MacClockTicksToMsRelation * v35), "GNC", 73, "Decode", *a3);
            gnssOsa_PrintLog(__str, 4, 1, 0);
          }

          if (*(a1 + 210) || *(a1 + 209) || *(a1 + 211))
          {
            v36 = 0;
            while (1)
            {
              std::string::basic_string[abi:ne200100]<0>(&v154, "svId");
              XofIntegralType<unsigned char>::XofIntegralType(__str, &v154, 0, 24, 0);
              std::string::basic_string[abi:ne200100]<0>(&v151, "channelNo");
              XofIntegralType<signed char>::XofIntegralType(v147, &v151, -7, 6, 99);
              *&v68[8] = *&__str[8];
              *&v68[24] = *&__str[24];
              memset(&__str[8], 0, 24);
              *v68 = *__str;
              LODWORD(v69.__r_.__value_.__l.__data_) = *v147;
              *&v69.__r_.__value_.__r.__words[1] = *&v147[8];
              v70 = *&v147[24];
              memset(&v147[8], 0, 24);
              if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v151.__r_.__value_.__l.__data_);
                if (__str[31] < 0)
                {
                  operator delete(*&__str[8]);
                }
              }

              if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v154.__r_.__value_.__l.__data_);
              }

              v37 = XofGlonassChannelMapCodec::Decode(v68, a2, a3);
              if (v37)
              {
                *(a1 + 396 + 2 * v36) = v68[3] | (v69.__r_.__value_.__s.__data_[3] << 8);
              }

              else if (g_LbsOsaTrace_Config >= 2)
              {
                bzero(__str, 0x3C6uLL);
                v38 = mach_continuous_time();
                snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Glonass channel map decode failure, Sat Id = [ %d ]\n", (*&g_MacClockTicksToMsRelation * v38), "GNC", 87, "Decode", v36 + 1);
                gnssOsa_PrintLog(__str, 2, 1, 0);
              }

              if (SHIBYTE(v70) < 0)
              {
                operator delete(v69.__r_.__value_.__l.__size_);
              }

              if ((v68[31] & 0x80000000) != 0)
              {
                operator delete(*&v68[8]);
              }

              if (!v37)
              {
                break;
              }

              if (++v36 == 24)
              {
                goto LABEL_124;
              }
            }
          }

          else
          {
LABEL_124:
            if (g_LbsOsaTrace_Config >= 4)
            {
              bzero(__str, 0x3C6uLL);
              v39 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Glonass Channel map decoded, bytes decoded = [%u] \n", (*&g_MacClockTicksToMsRelation * v39), "GNC", 73, "Decode", *a3);
              gnssOsa_PrintLog(__str, 4, 1, 0);
            }

            v40 = 0;
            v41 = off_29EF06750;
            v42 = 67;
            while (1)
            {
              if (*(a1 + v42 - 1) || *(a1 + v42 - 2) || *(a1 + v42))
              {
                std::string::basic_string[abi:ne200100]<0>(&v153, "sRefTime");
                XofIntegralType<unsigned short>::XofIntegralType(&v154, &v153, 0, 0xFFFF, 0);
                std::string::basic_string[abi:ne200100]<0>(&v150, "refWeekNo");
                XofIntegralType<unsigned short>::XofIntegralType(&v151, &v150, 0, 0x1FFF, 0);
                std::string::basic_string[abi:ne200100]<0>(&v149, "sTA0");
                XofIntegralType<int>::XofIntegralType(__str, &v149, 0x80000000, 0x7FFFFFFF, 0);
                std::string::basic_string[abi:ne200100]<0>(&v146, "sTA1");
                XofIntegralType<int>::XofIntegralType(v147, &v146, -8388608, 0x7FFFFF, 0);
                std::string::basic_string[abi:ne200100]<0>(&v142, "sTA2");
                XofIntegralType<signed char>::XofIntegralType(&v143, &v142, -64, 63, 0);
                std::string::basic_string[abi:ne200100]<0>(&v138, "sTA0_Corr");
                XofIntegralType<short>::XofIntegralType(&v139, &v138, -32768, 0x7FFF, 0);
                std::string::basic_string[abi:ne200100]<0>(&v135, "reserved");
                XofIntegralType<unsigned char>::XofIntegralType(&v136, &v135, 0, 255, 0);
                *v68 = v154;
                *&v68[24] = v155;
                *&v154.__r_.__value_.__r.__words[1] = 0uLL;
                v155 = 0;
                v69 = v151;
                v70 = v152;
                v152 = 0;
                *&v151.__r_.__value_.__r.__words[1] = 0uLL;
                v73 = *&__str[32];
                v71 = *__str;
                v72 = *&__str[16];
                memset(&__str[16], 0, 24);
                v74 = *v147;
                v76 = v148;
                v75 = *&v147[16];
                *&v147[16] = 0;
                *&v147[24] = 0;
                v148 = 0;
                v77 = v143;
                v79 = v145;
                v78 = v144;
                v144 = 0uLL;
                v145 = 0;
                v80 = v139;
                v82 = v141;
                v81 = v140;
                v140 = 0uLL;
                v141 = 0;
                v83 = v136.__r_.__value_.__l.__data_;
                v85 = v137;
                v84 = *&v136.__r_.__value_.__r.__words[1];
                *&v136.__r_.__value_.__r.__words[1] = 0uLL;
                v137 = 0;
                if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v135.__r_.__value_.__l.__data_);
                  if (SHIBYTE(v141) < 0)
                  {
                    operator delete(v140);
                  }
                }

                if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v138.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v145) < 0)
                {
                  operator delete(v144);
                }

                if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v142.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v148) < 0)
                {
                  operator delete(*&v147[16]);
                }

                if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v146.__r_.__value_.__l.__data_);
                }

                if (__str[39] < 0)
                {
                  operator delete(*&__str[16]);
                }

                if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v149.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v152) < 0)
                {
                  operator delete(v151.__r_.__value_.__l.__size_);
                }

                if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v150.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v155) < 0)
                {
                  operator delete(v154.__r_.__value_.__l.__size_);
                }

                if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v153.__r_.__value_.__l.__data_);
                }

                v43 = XofTimeModelCodec::Decode(v68, a2, a3);
                if (v43)
                {
                  if (g_LbsOsaTrace_Config >= 4)
                  {
                    bzero(__str, 0x3C6uLL);
                    v44 = mach_continuous_time();
                    v45 = *&g_MacClockTicksToMsRelation;
                    std::string::basic_string[abi:ne200100]<0>(v147, *v41);
                    if (v147[23] >= 0)
                    {
                      v46 = v147;
                    }

                    else
                    {
                      v46 = *v147;
                    }

                    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Time Model for [ %s ] is decoded, bytes decoded = [%u]\n", (v45 * v44), "GNC", 73, "Decode", v46, *a3);
                    if ((v147[23] & 0x80000000) != 0)
                    {
                      operator delete(*v147);
                    }

                    gnssOsa_PrintLog(__str, 4, 1, 0);
                  }

                  v47 = HIWORD(v69.__r_.__value_.__r.__words[0]);
                  v48 = HIDWORD(v71);
                  v49 = HIDWORD(v74);
                  v50 = HIBYTE(v77);
                  v51 = HIWORD(v80);
                  v52 = a1 + v40;
                  *(v52 + 444) = *&v68[6];
                  *(v52 + 446) = v47;
                  *(v52 + 448) = v48;
                  *(v52 + 452) = v49;
                  *(v52 + 456) = v50;
                  *(v52 + 458) = v51;
                }

                else if (g_LbsOsaTrace_Config >= 2)
                {
                  bzero(__str, 0x3C6uLL);
                  v53 = mach_continuous_time();
                  v54 = *&g_MacClockTicksToMsRelation;
                  std::string::basic_string[abi:ne200100]<0>(v147, *v41);
                  if (v147[23] >= 0)
                  {
                    v55 = v147;
                  }

                  else
                  {
                    v55 = *v147;
                  }

                  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Time Model decode failure, constellation Id = [ %s ]\n", (v54 * v53), "GNC", 87, "Decode", v55);
                  if ((v147[23] & 0x80000000) != 0)
                  {
                    operator delete(*v147);
                  }

                  gnssOsa_PrintLog(__str, 2, 1, 0);
                }

                if (SHIBYTE(v85) < 0)
                {
                  operator delete(v84);
                }

                if (SHIBYTE(v82) < 0)
                {
                  operator delete(v81);
                }

                if (SHIBYTE(v79) < 0)
                {
                  operator delete(v78);
                }

                if (SHIBYTE(v76) < 0)
                {
                  operator delete(v75);
                }

                if (SHIBYTE(v73) < 0)
                {
                  operator delete(v72);
                }

                if (SHIBYTE(v70) < 0)
                {
                  operator delete(v69.__r_.__value_.__l.__size_);
                }

                if ((v68[31] & 0x80000000) != 0)
                {
                  operator delete(*&v68[8]);
                }

                if (!v43)
                {
                  break;
                }
              }

              ++v41;
              v40 += 16;
              v42 += 48;
              if (v40 == 96)
              {
                if (XofAlmanacData::Decode(a1 + 544, a2, a3, a1) == 1)
                {
                  if (g_LbsOsaTrace_Config >= 4)
                  {
                    bzero(__str, 0x3C6uLL);
                    v56 = mach_continuous_time();
                    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Almanac decoded, bytes decoded = [%u]\n", (*&g_MacClockTicksToMsRelation * v56), "GNC", 73, "Decode", *a3);
                    gnssOsa_PrintLog(__str, 4, 1, 0);
                  }

                  if (XofBrdcstEph::Decode(a1 + 688) == 1)
                  {
                    if (g_LbsOsaTrace_Config >= 4)
                    {
                      bzero(__str, 0x3C6uLL);
                      v57 = mach_continuous_time();
                      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Broadcast Ephemeris decoded, bytes decoded = [%u]\n", (*&g_MacClockTicksToMsRelation * v57), "GNC", 73, "Decode", *a3);
                      gnssOsa_PrintLog(__str, 4, 1, 0);
                    }

                    if (XofExtEph::Decode(a1 + 856) == 1)
                    {
                      if (g_LbsOsaTrace_Config >= 4)
                      {
                        bzero(__str, 0x3C6uLL);
                        v58 = mach_continuous_time();
                        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Extended Ephemeris decoded, bytes decoded = [%u]\n", (*&g_MacClockTicksToMsRelation * v58), "GNC", 73, "Decode", *a3);
                        gnssOsa_PrintLog(__str, 4, 1, 0);
                      }

                      if (*(a2 + 8) - *a2 == *a3)
                      {
                        XofData::LogSummaryOfDecodedData(a1);
                        v13 = 1;
                      }

                      else
                      {
                        if (g_LbsOsaTrace_Config)
                        {
                          bzero(__str, 0x3C6uLL);
                          v67 = mach_continuous_time();
                          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Buffer is not fully decoded. Invalid data length!\n", (*&g_MacClockTicksToMsRelation * v67), "GNC", 69, "Decode");
                          gnssOsa_PrintLog(__str, 1, 1, 0);
                        }

                        v13 = 9;
                      }

                      goto LABEL_210;
                    }

                    if (g_LbsOsaTrace_Config >= 2)
                    {
                      bzero(__str, 0x3C6uLL);
                      v66 = mach_continuous_time();
                      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Extended Ephemeris decode failure\n", (*&g_MacClockTicksToMsRelation * v66), "GNC", 87, "Decode");
                      gnssOsa_PrintLog(__str, 2, 1, 0);
                    }
                  }

                  else if (g_LbsOsaTrace_Config >= 2)
                  {
                    bzero(__str, 0x3C6uLL);
                    v65 = mach_continuous_time();
                    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Broadcast Ephemeris decode failure\n", (*&g_MacClockTicksToMsRelation * v65), "GNC", 87, "Decode");
                    gnssOsa_PrintLog(__str, 2, 1, 0);
                  }
                }

                else if (g_LbsOsaTrace_Config >= 2)
                {
                  bzero(__str, 0x3C6uLL);
                  v64 = mach_continuous_time();
                  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Almanac decode failure\n", (*&g_MacClockTicksToMsRelation * v64), "GNC", 87, "Decode");
                  gnssOsa_PrintLog(__str, 2, 1, 0);
                }

                break;
              }
            }
          }
        }

        else if (g_LbsOsaTrace_Config >= 2)
        {
          bzero(__str, 0x3C6uLL);
          v62 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: UTC Model decode failure!\n", (*&g_MacClockTicksToMsRelation * v62), "GNC", 87, "Decode");
          gnssOsa_PrintLog(__str, 2, 1, 0);
        }

        v13 = 5;
LABEL_210:
        std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(__p);
      }

      else
      {
        if (g_LbsOsaTrace_Config >= 2)
        {
          bzero(__str, 0x3C6uLL);
          v61 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Ionosphere model decode failure!\n", (*&g_MacClockTicksToMsRelation * v61), "GNC", 87, "Decode");
          gnssOsa_PrintLog(__str, 2, 1, 0);
        }

        v13 = 5;
      }

      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<signed char>>::~__tuple_impl(&v106);
    }

    else
    {
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v60 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Invalid payload length!\n", (*&g_MacClockTicksToMsRelation * v60), "GNC", 69, "Decode");
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      v13 = 9;
    }
  }

  else
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v59 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: XOF Header data decode Failure\n", (*&g_MacClockTicksToMsRelation * v59), "GNC", 73, "Decode");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v13 = 5;
  }

  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofConstellationHeaderCodec,XofIntegralType<unsigned long long>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>>::~__tuple_impl(v130);
  return v13;
}

void sub_29903593C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(&a45);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<signed char>>::~__tuple_impl(&STACK[0x238]);
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofConstellationHeaderCodec,XofIntegralType<unsigned long long>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>>::~__tuple_impl(&STACK[0x338]);
  _Unwind_Resume(a1);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<short>,XofIntegralType<unsigned char>>::~__tuple_impl(uint64_t a1)
{
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>>::~__tuple_impl(uint64_t a1)
{
  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<signed char>,XofIntegralType<signed char>>::~__tuple_impl(uint64_t a1)
{
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x29EDC95A8] + 64;
  *(a1 + 112) = MEMORY[0x29EDC95A8] + 64;
  v3 = a1 + 8;
  v4 = *(MEMORY[0x29EDC9538] + 16);
  v5 = *(MEMORY[0x29EDC9538] + 8);
  *a1 = v5;
  *(a1 + *(v5 - 24)) = v4;
  v6 = (a1 + *(*a1 - 24));
  std::ios_base::init(v6, (a1 + 8));
  v7 = MEMORY[0x29EDC95A8] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  *a1 = v7;
  *(a1 + 112) = v2;
  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C2961F0](a1 + 16);
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 16;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](v3);
  return a1;
}

void sub_2990362DC(_Unwind_Exception *a1)
{
  if (*(v2 + 95) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 8) = v3;
  std::locale::~locale((v2 + 16));
  std::ostream::~ostream();
  MEMORY[0x29C296240](v1);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9538];
  v3 = *MEMORY[0x29EDC9538];
  *a1 = *MEMORY[0x29EDC9538];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x29C296240](a1 + 112);
  return a1;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x29EDCA608];
  MEMORY[0x29C296160](v20, a1);
  if (v20[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x29EDC93D0]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C296170](v20);
  return a1;
}

void sub_299036748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    if (a16 < 0)
    {
      operator delete(__p);
    }

    MEMORY[0x29C296170](&a9);
    __cxa_begin_catch(exception_object);
    std::ios_base::__set_badbit_and_consider_rethrow((v16 + *(*v16 - 24)));
    __cxa_end_catch();
    JUMPOUT(0x299036700);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *NK_Set_Fix_Type(_BYTE *result, double *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, double a9, double a10, int a11, char a12, int a13, int a14, _BYTE *a15, _DWORD *a16, unsigned int *a17, _DWORD *a18, int *a19, int *a20)
{
  if (a8 > 8)
  {
    v20 = 100000000.0;
  }

  else
  {
    v20 = dbl_2990542B0[a8 & 0xF];
  }

  v21 = sqrt(a2[6] + a2[7]);
  v22 = sqrt(a2[9] + a2[10]);
  v23 = 1000 * a11 / a5;
  v24 = sqrt(v20);
  if (!a13 || (v25 = *a17, *a17 >= v23))
  {
    v28 = 0;
    v29 = 0;
    v27 = 0;
    LOBYTE(v26) = 0;
    *(a4 + 20) = 0;
    goto LABEL_31;
  }

  if (*(a4 + 16) > v25)
  {
    v26 = *(a3 + 48) == 2 || *(a3 + 68) == 2 || *(a3 + 72) == 2 || *(a3 + 76) == 2 || *(a3 + 80) == 2 || *(a3 + 84) == 2 || *(a3 + 88) == 2;
    v27 = (*(a3 + 92) == 2 || *(a3 + 96) == 2) && a8 - 3 < 6;
    v29 = a9 < 1000000.0 && *(a3 + 56) == 2 || *(a3 + 36) == 2 || v26;
LABEL_27:
    v28 = v22 < v24 + ((v25 * a5 / 0x1F4) & 0xFFFFFE) && v21 < 400.0;
    ++*(a4 + 20);
    goto LABEL_31;
  }

  if (a8 - 4 > 4)
  {
    v28 = 0;
    v29 = 0;
    v27 = 0;
    LOBYTE(v26) = 0;
    goto LABEL_31;
  }

  LOBYTE(v26) = 0;
  v27 = 0;
  v29 = 0;
  v28 = 0;
  if (*(a3 + 2) <= 1u)
  {
    goto LABEL_27;
  }

LABEL_31:
  v31 = *(a3 + 60);
  v30 = *(a3 + 64);
  v32 = *(a3 + 56);
  v34 = a10 < 500000.0 && v31 == 2;
  *a19 = 0;
  v35 = result[6];
  if (v35 != 1 || (*a4 & 1) != 0)
  {
    v36 = 1;
LABEL_40:
    if (*a17 < 0x1869F)
    {
      ++*a17;
    }

    *a16 = 0;
    if (v35)
    {
      v37 = 0;
    }

    else
    {
      v37 = v36;
    }

    if ((v37 & v28) == 1 && *a17 <= v23 && *(a3 + 2) <= 1u)
    {
      *a19 = 1;
    }

    goto LABEL_95;
  }

  if (v21 >= 400.0 && (a6 > 0x7CF || (*a15 & 1) != 0 || v21 >= 1000.0))
  {
    v38 = a12 ^ 1;
    v36 = 1;
    if (a6 < 0x186A0)
    {
      v38 = 0;
    }

    if ((v38 & 1) != 0 || !*a15)
    {
      goto LABEL_40;
    }
  }

  v39 = *(a3 + 36);
  if (a14 > 8 || (v40 = v39 == 1, a14 >= 7) && (result[5] & 1) != 0)
  {
    if (v39 == 1)
    {
      v40 = 2;
    }

    else
    {
      v40 = 1;
    }
  }

  if (((v29 | v34) & 1) != 0 || (v44 = *(a3 + 1), v42 = 5, 5 - v40 > v44) && (4 - v40 > v44 || (a9 < 160000.0 ? (v45 = v32 == 1) : (v45 = 0), !v45 ? (v46 = 0) : (v46 = 1), v31 == 1 ? (v47 = a10 < 160000.0) : (v47 = 0), (v42 = 5, !v47) && (v46 & 1) == 0)))
  {
    if (v30 == 2)
    {
      v34 = 1;
    }

    if ((v29 & 1) != 0 || (v21 < 400.0 ? (v41 = !v34) : (v41 = 1), v41 || (v42 = 4, 4 - v40 > *(a3 + 1))))
    {
      if ((a8 > 1) | v29 & 1 || 2 - v40 > *(a3 + 1))
      {
        if (!v28)
        {
          v36 = 1;
          if (1 - v40 > *(a3 + 1) || ((v29 | v27) & 1) == 0)
          {
            goto LABEL_40;
          }

          goto LABEL_167;
        }

        if (v32 != 1 && (*(a3 + 92) != 1 || *(a3 + 68) != 1 && *(a3 + 72) != 1 && *(a3 + 76) != 1 && *(a3 + 80) != 1 && *(a3 + 84) != 1 && *(a3 + 88) != 1) && (*(a3 + 96) != 1 || *(a3 + 68) != 1 && *(a3 + 72) != 1 && *(a3 + 76) != 1 && *(a3 + 80) != 1 && *(a3 + 84) != 1 && *(a3 + 88) != 1))
        {
LABEL_167:
          v43 = 1;
          goto LABEL_168;
        }

        v43 = 2;
      }

      else
      {
        v43 = 3;
      }

LABEL_168:
      v36 = 0;
      *a19 = v43;
      goto LABEL_40;
    }
  }

  *a19 = v42;
  if (*a16 < 0x1869Fu)
  {
    ++*a16;
  }

  *a17 = 0;
  *a18 = 0;
  if (!a13 && *a16 >= 3u)
  {
    *a16 = 2;
  }

LABEL_95:
  if (*a15 == 1)
  {
    if (*a16 > 4u)
    {
      goto LABEL_97;
    }

    v48 = 1;
    if (a6 > 0x12B || !v35 || v21 >= 400.0)
    {
      goto LABEL_99;
    }

    if (*(a3 + 1) >= 6u)
    {
LABEL_97:
      v48 = 0;
      *a15 = 0;
    }

    else
    {
      v48 = 1;
    }
  }

  else
  {
    v48 = 0;
  }

LABEL_99:
  *a20 = 0;
  if (a8 - 5 >= 4)
  {
    v49 = 30;
  }

  else
  {
    v49 = 100;
  }

  if (result[9] == 1 && (*a4 & 1) == 0 && ((v48 & 1) != 0 || v49 > a7 && v22 < v24))
  {
    v50 = *(a3 + 48);
    v51 = v50 == 1;
    v52 = v30 == 2 || v26;
    if (v52)
    {
      v53 = v30 != 2 || v26;
      if ((v53 & 1) == 0 && (v51 ^ 3u) <= *(a3 + 5))
      {
        v54 = 4;
LABEL_151:
        *a20 = v54;
        return result;
      }
    }

    else
    {
      v55 = *(a3 + 5);
      if (v50 == 1)
      {
        v56 = 3;
      }

      else
      {
        v56 = 4;
      }

      if (v56 <= v55 || (v51 ^ 3u) <= v55 && v30 == 1)
      {
        v54 = 5;
        goto LABEL_151;
      }
    }

    if (a8 > 1)
    {
      LOBYTE(v26) = 1;
    }

    if (!v26)
    {
      v57 = v50 == 1 ? 1 : 2;
      if (v57 <= *(a3 + 5))
      {
        v54 = 3;
        goto LABEL_151;
      }
    }

    if (*(a3 + 76) == 1)
    {
      v54 = 2;
      goto LABEL_151;
    }

    if (*(a3 + 68) == 1)
    {
      v54 = 2;
    }

    else
    {
      v54 = 1;
    }

    if (*(a3 + 68) == 1 || v28)
    {
      goto LABEL_151;
    }

    v58 = v52 ^ 1;
    if (!v51 > *(a3 + 5))
    {
      v58 = 1;
    }

    if ((v58 & 1) == 0)
    {
      v54 = 1;
      goto LABEL_151;
    }
  }

  return result;
}

double *NK_Correct_State(double *result, _BYTE *a2, double *a3)
{
  if (*a2 == 1)
  {
    a3[15] = a3[15] + *result * -0.00000000333564095;
  }

  if (a2[1] == 1)
  {
    a3[16] = a3[16] + result[1] * -0.00000000333564095;
  }

  if (a2[2] == 1)
  {
    a3[17] = a3[17] + result[2] * -0.00000000333564095;
  }

  if (a2[3] == 1)
  {
    a3[18] = a3[18] + result[3] * -0.00000000333564095;
  }

  if (a2[4] == 1)
  {
    a3[19] = a3[19] + result[4] * -0.00000000333564095;
  }

  if (a2[6] == 1 && a2[7] == 1 && a2[8] == 1)
  {
    for (i = 0; i != 3; ++i)
    {
      a3[i + 6] = a3[i + 6] - result[i + 6];
    }
  }

  if (a2[9] == 1 && a2[10] == 1 && a2[11] == 1)
  {
    v4 = a3 + 9;
    v5 = a3[5];
    for (j = 9; j != 12; ++j)
    {
      *v4 = *v4 - result[j];
      v4[3] = -result[j] / v5;
      ++v4;
    }
  }

  if (a2[5] == 1)
  {
    a3[20] = a3[20] - result[5];
  }

  return result;
}

void Hal_StoreCoExConfiguration(uint64_t a1)
{
  v3 = *MEMORY[0x29EDCA608];
  g_GNSSCoExConfigSWRequest = a1;
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v1 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #CoexConfig bitmask 0x%llx\n", (*&g_MacClockTicksToMsRelation * v1), "HAL", 73, "Hal_StoreCoExConfiguration", g_GNSSCoExConfigSWRequest);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }
}

uint64_t Hal_SetCoexConfig(void)
{
  v0 = 0;
  v17 = *MEMORY[0x29EDCA608];
  memset(v16 + 1, 0, 40);
  *v15 = 0x1900284D6242787ALL;
  LOBYTE(v16[0]) = 71;
  for (i = 8; i != 46; ++i)
  {
    v0 += v15[i];
  }

  v16[19] = v0;
  LOBYTE(v16[20]) = 10;
  g_HalState = 7;
  qword_2A145C630 = 0;
  if (Hal22_ZxSendToChip(v15, 0x31uLL) <= 0)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_24;
  }

  v2 = gnssOsa_SemWaitTimeOut(g_HandleAckSem, 0xC8u);
  if (v2 == 1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return 0;
    }

    goto LABEL_23;
  }

  if (v2)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return 0;
    }

LABEL_23:
    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx err\n");
LABEL_24:
    gnssOsa_PrintLog(__str, 1, 1, 0);
    if (!g_LbsOsaTrace_Config)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Get Coex config failed\n");
LABEL_26:
    gnssOsa_PrintLog(__str, 1, 1, 0);
    return 0;
  }

  if (_MergedGlobals_6 != 32)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx err,%u\n", v12);
    goto LABEL_24;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Success\n", (*&g_MacClockTicksToMsRelation * v3), "HAL", 73, "Hal_GetCoexConfiguration");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  memset(&v16[1], 0, 39);
  *v15 = 0x1900284D6242787ALL;
  v16[0] = 339;
  HIBYTE(v16[1]) = g_GNSSCoExConfigSWRequest & 1;
  HIBYTE(v16[2]) = (g_GNSSCoExConfigSWRequest & 4) != 0;
  HIBYTE(v16[3]) = (g_GNSSCoExConfigSWRequest & 8) != 0;
  HIBYTE(v16[4]) = (g_GNSSCoExConfigSWRequest & 2) != 0;
  HIBYTE(v16[5]) = (g_GNSSCoExConfigSWRequest & 0x10) != 0;
  HIBYTE(v16[6]) = (g_GNSSCoExConfigSWRequest & 0x20) != 0;
  Hal_PrintCoExConfig("Setting CoEx Config", g_GNSSCoExConfigSWRequest);
  v4 = 0;
  qword_2A145C630 = 0;
  for (j = 8; j != 46; ++j)
  {
    v4 += v15[j];
  }

  v16[19] = v4;
  LOBYTE(v16[20]) = 10;
  g_HalState = 6;
  if (Hal22_ZxSendToChip(v15, 0x31uLL) <= 0)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_26;
  }

  v6 = gnssOsa_SemWaitTimeOut(g_HandleAckSem, 0xC8u);
  if (v6 == 1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return 0;
    }

    goto LABEL_36;
  }

  if (v6)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return 0;
    }

LABEL_36:
    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx err\n");
    goto LABEL_26;
  }

  if (_MergedGlobals_6 == 83)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: SetCoex,session ongoing\n", (*&g_MacClockTicksToMsRelation * v11), "HAL", 87, "Hal_SetCoexConfig");
      v8 = 1;
      v9 = 2;
      goto LABEL_39;
    }

    return 1;
  }

  if (_MergedGlobals_6 == 32)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Success\n", (*&g_MacClockTicksToMsRelation * v7), "HAL", 73, "Hal_SetCoexConfig");
      v8 = 1;
      v9 = 4;
LABEL_39:
      gnssOsa_PrintLog(__str, v9, 1, 0);
      return v8;
    }

    return 1;
  }

  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx err,%u\n", v13);
    goto LABEL_26;
  }

  return 0;
}

void Hal_PrintCoExConfig(const char *a1, unsigned int a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s: 2G,%u, NR,%u, LTEB13,%u, LTEB14,%u, EAssist,%u, STW,%u\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 73, "Hal_PrintCoExConfig", a1, a2 & 1, (a2 >> 1) & 1, (a2 >> 2) & 1, (a2 >> 3) & 1, (a2 >> 4) & 1, (a2 >> 5) & 1);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }
}

void Hal_CoexConfigRespone(unsigned __int8 *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    v7 = 513;
    v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v3 = "%10u %s%c %s: #%04hx data\n";
    goto LABEL_17;
  }

  if (a1[2] != 66 || a1[3] != 66)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    v2 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MC,%u,MID,%u,MIDEx,%u\n", v2, "HAL");
    goto LABEL_18;
  }

  _MergedGlobals_6 = a1[8];
  v1 = qword_2A145C630 | a1[11] | (2 * a1[17]) | (4 * a1[13]) | (8 * a1[15]) | (16 * a1[19]) | (32 * a1[21]);
  qword_2A145C630 |= a1[11] | (2 * a1[17]) | (4 * a1[13]) | (8 * a1[15]) | (16 * a1[19]) | (32 * a1[21]);
  if (g_HalState == 6)
  {
    Hal_PrintCoExConfig("FWCoEx Set Response", v1);
    if (g_GNSSCoExConfigSWRequest != qword_2A145C630)
    {
      _MergedGlobals_6 = 71;
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v4 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Config mismatch SW,0x%llx,FW,0x%llx\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 87, "Hal_CoexConfigRespone", g_GNSSCoExConfigSWRequest, qword_2A145C630);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }
    }
  }

  else if (g_HalState == 7)
  {
    Hal_PrintCoExConfig("FWCoEx Get Response", v1);
  }

  if (!gnssOsa_SemRelease(g_HandleAckSem) && g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v7 = 1542;
    v8 = *__error();
    v6 = v5;
    v3 = "%10u %s%c %s: #%04hx HandleAckSem err,%d\n";
LABEL_17:
    snprintf(__str, 0x3C5uLL, v3, v6, "HAL", 69, "Hal_CoexConfigRespone", v7, v8);
LABEL_18:
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

void GNB_Debug_Flush_Check(void)
{
  v0 = qword_2A1453F98 - qword_2A1453F90;
  if (dword_2A1453F88 - g_CB_GDbg > 0)
  {
    v0 = 0;
  }

  if ((v0 + dword_2A1453F88 - g_CB_GDbg) <= 0x1FF)
  {

    GNSS_GNB_Debug_Ctl(&g_CB_GDbg);
  }
}

void GNB_Debug_BlockMove(char *__src, int a2)
{
  if (g_Logging_Cfg >= 4)
  {
    v2 = a2;
    v4 = g_CB_GDbg;
    v5 = qword_2A1453F98;
    v6 = qword_2A1453F98 - qword_2A1453F90;
    if (dword_2A1453F88 - g_CB_GDbg > 0)
    {
      v6 = 0;
    }

    if (v6 + dword_2A1453F88 - g_CB_GDbg <= a2)
    {
      GNSS_GNB_Debug_Ctl(&g_CB_GDbg);
      v10 = g_CB_GDbg;
      v11 = qword_2A1453F98;
      v12 = qword_2A1453F98 - qword_2A1453F90;
      if (dword_2A1453F88 - g_CB_GDbg > 0)
      {
        v12 = 0;
      }

      v13 = v12 + dword_2A1453F88 - g_CB_GDbg;
      if (v2 > 1023)
      {
        if (v13 == 1024)
        {
          do
          {
            v16 = 1023;
            do
            {
              v17 = v16;
              v18 = v16-- != 0;
            }

            while (v18 && __src[v17] != 10);
            v19 = v16 + 2;
            if (v17)
            {
              v20 = v19;
            }

            else
            {
              v20 = 1024;
            }

            v21 = GN_GPS_Write_GNB_Debug(v20, __src);
            if (!v21)
            {
              LbsOsaTrace_PrintAsciiBuf(0, 4u, 1, "<OVERFLOW>\n", 12);
              goto LABEL_12;
            }

            __src += v21;
            v2 -= v21;
          }

          while (v2 > 1023);
          if (v2 >= 1)
          {
            v22 = qword_2A1453F98;
            v23 = g_CB_GDbg;
            do
            {
              v24 = v22 - v23;
              if (v2 >= v24)
              {
                v25 = v24;
              }

              else
              {
                v25 = v2;
              }

              memcpy(v23, __src, v25);
              v23 = (g_CB_GDbg + v25);
              g_CB_GDbg = v23;
              v22 = qword_2A1453F98;
              if (v23 >= qword_2A1453F98)
              {
                v23 = qword_2A1453F90;
                g_CB_GDbg = qword_2A1453F90;
              }

              __src += v25;
              v9 = __OFSUB__(v2, v25);
              v2 -= v25;
            }

            while (!((v2 < 0) ^ v9 | (v2 == 0)));
          }
        }
      }

      else if (v13 > v2)
      {
        do
        {
          v14 = v11 - v10;
          if (v2 >= v14)
          {
            v15 = v14;
          }

          else
          {
            v15 = v2;
          }

          memcpy(v10, __src, v15);
          v10 = (g_CB_GDbg + v15);
          g_CB_GDbg = v10;
          v11 = qword_2A1453F98;
          if (v10 >= qword_2A1453F98)
          {
            v10 = qword_2A1453F90;
            g_CB_GDbg = qword_2A1453F90;
          }

          __src += v15;
          v9 = __OFSUB__(v2, v15);
          v2 -= v15;
        }

        while (!((v2 < 0) ^ v9 | (v2 == 0)));
      }
    }

    else
    {
      do
      {
        v7 = v5 - v4;
        if (v2 >= v7)
        {
          v8 = v7;
        }

        else
        {
          v8 = v2;
        }

        memcpy(v4, __src, v8);
        v4 = (g_CB_GDbg + v8);
        g_CB_GDbg = v4;
        v5 = qword_2A1453F98;
        if (v4 >= qword_2A1453F98)
        {
          v4 = qword_2A1453F90;
          g_CB_GDbg = qword_2A1453F90;
        }

        __src += v8;
        v9 = __OFSUB__(v2, v8);
        v2 -= v8;
      }

      while (!((v2 < 0) ^ v9 | (v2 == 0)));
    }

LABEL_12:

    GNB_Debug_Flush_Check();
  }
}

float64_t BDS_EphInt2Real(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 20) = vmul_s32(*(a1 + 20), vdup_n_s32(0x12Cu));
  *(a2 + 28) = 300 * *(a1 + 28);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4.i64[0] = v2;
  v4.i64[1] = SHIDWORD(v2);
  v5 = vmulq_f64(vcvtq_f64_s64(v4), xmmword_299054300);
  v4.i64[0] = v3;
  v4.i64[1] = SHIDWORD(v3);
  *(a2 + 32) = v5;
  *(a2 + 48) = vmulq_f64(vcvtq_f64_s64(v4), xmmword_299054310);
  v6 = *(a1 + 48);
  *&v7.f64[0] = *&vcvtq_f64_s64(v6);
  v7.f64[1] = vcvtq_f64_u64(*&v6).f64[1];
  v8 = vmulq_f64(vcvtq_f64_s64(*(a1 + 64)), vdupq_n_s64(0x3E0921FB54442D28uLL));
  *(a2 + 64) = vmulq_f64(v7, xmmword_299054320);
  *(a2 + 80) = v8;
  v6.f64[0] = *(a1 + 80);
  v6.f64[1] = *(a1 + 88);
  *(a2 + 96) = vmulq_f64(v6, xmmword_299054330);
  v8.f64[0] = vcvtd_n_f64_s32(*(a1 + 94), 0x1EuLL);
  v7.f64[0] = *(a1 + 96);
  v7.f64[1] = *(a1 + 100);
  *(a2 + 112) = *(a1 + 92) * 1.78578867e-13;
  *(a2 + 120) = v8.f64[0];
  v9 = vmulq_f64(v7, xmmword_299054340);
  v8.f64[0] = *(a1 + 104);
  v7.f64[0] = *(a1 + 112);
  v4.i64[0] = SLODWORD(v8.f64[0]);
  v4.i64[1] = SHIDWORD(v8.f64[0]);
  *(a2 + 128) = v9;
  *(a2 + 144) = vmulq_f64(vcvtq_f64_s64(v4), xmmword_299054350);
  v4.i64[0] = SLODWORD(v7.f64[0]);
  v4.i64[1] = SHIDWORD(v7.f64[0]);
  v8.f64[0] = *(a1 + 120);
  v8.f64[1] = *(a1 + 124);
  *(a2 + 160) = vmulq_f64(vcvtq_f64_s64(v4), xmmword_299054360);
  *(a2 + 176) = vmulq_f64(v8, xmmword_299054370);
  *(a2 + 192) = *(a1 + 126);
  *(a2 + 194) = *(a1 + 128);
  *(a2 + 200) = *(a1 + 132) * 5.82076609e-11;
  v9.f64[0] = *(a1 + 134) * 5.82076609e-11;
  v10 = *(a1 + 138);
  *(a2 + 216) = *(a1 + 136) * 5.82076609e-11;
  *(a2 + 224) = v10 * 5.82076609e-11;
  *(a2 + 232) = *(a1 + 140);
  *(a2 + 236) = *(a1 + 144);
  *(a2 + 237) = *(a1 + 145);
  result = v9.f64[0] + *(a1 + 147) * 2.32830644e-10;
  *(a2 + 208) = result;
  return result;
}

_WORD *GPS_To_UTC_Time(_WORD *result, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6, unsigned __int16 *a7, __int16 a8, double a9, double a10)
{
  for (i = 0.0005 - a10 + a9; i >= 604800.0; ++a8)
  {
    i = i + -604800.0;
  }

  while (i < 0.0)
  {
    i = i + 604800.0;
    --a8;
  }

  v11 = i;
  v12 = (i - i) * 1000.0;
  v13 = v12;
  if (v12 < -2147483650.0)
  {
    LOWORD(v13) = 0;
  }

  if (v12 <= 2147483650.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = -1;
  }

  *a7 = v14;
  v15 = v11 / 86400;
  v16 = v11 % 86400;
  *a4 = v16 / 3600;
  v16 %= 3600;
  *a5 = v16 / 60;
  *a6 = v16 % 60;
  v17 = v15 - a8 + 8 * a8;
  v18 = v17 + 6;
  if (v17 < 1456)
  {
    LOWORD(v20) = 1980;
  }

  else
  {
    if (v18 >= 0xB6A)
    {
      v18 = 2922;
    }

    v19 = v17 - v18 + 1466;
    v18 = v17 - 1461 * (v19 / 0x5B5) - 1455;
    v20 = 4 * (v19 / 0x5B5) + 1984;
  }

  if (v18 >= 367)
  {
    do
    {
      if ((v20 & 3) != 0)
      {
        v21 = -365;
      }

      else
      {
        v21 = -366;
      }

      v18 += v21;
      LOWORD(v20) = v20 + 1;
    }

    while (v18 > 0x16E);
  }

  v22 = 0;
  if ((v20 & 3) != 0)
  {
    v23 = v20 + 1;
  }

  else
  {
    v23 = v20;
  }

  if ((v20 & 3) != 0)
  {
    v24 = 1;
  }

  else
  {
    v24 = 366;
  }

  if (v18 == 366)
  {
    LOWORD(v20) = v23;
  }

  else
  {
    v24 = v18;
  }

  *result = v20;
  while (1)
  {
    v25 = Days_in_Month[v22];
    v26 = __OFSUB__(v24, v25);
    v27 = v24 - v25;
    if ((v27 < 0) ^ v26 | (v27 == 0))
    {
      *a3 = v24;
      v28 = v22 + 1;
      goto LABEL_40;
    }

    if (v22 == 1 && (v20 & 3) == 0)
    {
      break;
    }

LABEL_36:
    ++v22;
    v24 = v27;
    if (v22 == 12)
    {
      return result;
    }
  }

  if (v27 >= 2)
  {
    --v27;
    goto LABEL_36;
  }

  *a3 = 29;
  v28 = 2;
LABEL_40:
  *a2 = v28;
  return result;
}