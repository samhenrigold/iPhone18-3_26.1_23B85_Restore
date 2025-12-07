BOOL non-virtual thunk toBlueFin::GlPePrawnKf::GetQbv(BlueFin::GlPePrawnKf *this, BlueFin::QuaternionD *a2)
{
  *a2 = *(this - 1016);
  *(a2 + 1) = *(this - 1000);
  return *(this - 1456) == 2 && (*(this - 14) & 1) == 0 && (*(*(this - 76) + 8) - 3) < 4;
}

BOOL non-virtual thunk toBlueFin::GlPePrawnKf::GetAccBias(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 - 1224);
  *(a2 + 16) = *(a1 - 1208);
  return *(a1 - 5824) == 2 && (*(a1 - 14) & 1) == 0 && (*(*(a1 - 608) + 8) - 3) < 4;
}

double non-virtual thunk toBlueFin::GlPePrawnKf::GetInfoForPdrCalibration(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, double *a5, double *a6)
{
  v8 = (a1 - 5832);
  v9 = *(a1 - 5832);
  v10 = a1 - 5832 + *(v9 - 24);
  *a2 = *(v10 + 8);
  *(a2 + 16) = *(v10 + 24);
  *a3 = (*(v9 + 304))(a1 - 5832);
  v11 = *v8;
  *a5 = *(v8 + *(*v8 - 24) + 176);
  result = *(v8 + *(v11 - 24) + 184);
  *a6 = result;
  return result;
}

float virtual thunk toBlueFin::GlPePrawnKf::GetEstPosErr(BlueFin::GlPePrawnKf *this)
{
  v1 = this + *(*this - 32);
  result = 6378100.0;
  if (*(v1 + 2) == 2 && (v1[5818] & 1) == 0 && (*(*(v1 + 653) + 8) - 3) <= 3)
  {
    return *&v1[*(*v1 - 24) + 80];
  }

  return result;
}

void *BlueFin::GlPeSubsetsKf::GlPeSubsetsKf(void *this)
{
  *this = this + 4;
  this[1] = this + 4;
  this[2] = this + 361;
  v1 = 160;
  v2 = vdupq_n_s32(0x43C80000u);
  do
  {
    v3 = (*this + v1);
    v3[-10].i64[0] = 0;
    v3[-10].i64[1] = 0;
    *(&v3[-8] + 4) = 0uLL;
    v3[-9].i64[0] = 0;
    v3[-9].i64[1] = v3[-8].i64 + 4;
    v3[-8].i8[0] = 19;
    *(&v3[-7] + 4) = 0uLL;
    *(&v3[-6] + 4) = 0uLL;
    *(&v3[-5] + 4) = 0uLL;
    *(&v3[-4] + 4) = 0uLL;
    v3[-3] = 0uLL;
    v3[-2] = v2;
    v3[-1] = v2;
    v3->i8[0] = 0;
    v1 += 168;
  }

  while (v1 != 3016);
  return this;
}

uint64_t BlueFin::GlPeLocationHubCb::OnTimerSet(uint64_t this, unsigned int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v2 = *(this + 8);
    *(v2 + 168) = v2;
    this = BlueFin::GlTimer::arm((v2 + 136), 55, 0, a2);
    *(v2 + 160) = 1;
  }

  return this;
}

uint64_t BlueFin::GlPeLocationHubCb::OnLog(uint64_t a1, int a2, const char *a3)
{
  switch(a2)
  {
    case 1:
      v4 = 15;
      break;
    case 4:
      v4 = 11;
      break;
    case 2:
      v4 = 14;
      break;
    default:
      (*(*a1 + 72))(a1, 2, "Using Wrong loggging level", "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/glposeng/req_mgr/glpe_location_hub_mgr.cpp", 74);
      v4 = 8;
      break;
  }

  return BlueFin::GlUtils::SysLogForce(BlueFin::GlUtils::m_pInstance, v4, "%s", a3);
}

uint64_t BlueFin::GlPeLocationHubCb::OnLhStart(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (*(v4 + 200) != 1)
  {
    (*(*a2 + 24))(a2);
    v4 = *(a1 + 8);
  }

  v5 = *(v4 + 128);
  v6 = *(v5 + 88);
  if (v6 > 0x22)
  {
    goto LABEL_19;
  }

  if (((1 << v6) & 0x255504C40) != 0)
  {
    v7 = 1;
    goto LABEL_6;
  }

  if (v6 == 34)
  {
    v7 = (*(v5 + 92) & 3) != 0;
  }

  else
  {
LABEL_19:
    v7 = 0;
  }

LABEL_6:
  (*(*a2 + 40))(a2, v7);
  v8 = *(*(a1 + 8) + 128);
  if (*(v8 + 11567) == 1)
  {
    (*(*a2 + 64))(a2);
    v8 = *(*(a1 + 8) + 128);
  }

  v9 = *(v8 + 156);
  v12 = v8 + 144;
  v10 = *(v8 + 144);
  v11 = *(v12 + 4);
  v13 = *(v12 + 4) == 0xFF;
  if (*(v12 + 4) == 0xFF)
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  if ((~v11 & 0x7F) == 0)
  {
    v13 = v14;
  }

  if ((~v11 & 0xF) != 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = v13 | 4u;
  }

  (*(*a2 + 16))(a2, v9, 4294959103, v15, (v10 << 22 >> 31) & 0xF);
  return 1;
}

uint64_t BlueFin::GlPeLocationHubCb::OnResource(uint64_t result, int a2, int a3)
{
  if (a2 == 1)
  {
    v3 = *(*(result + 8) + 112);
    if (a3)
    {
      v4 = *(v3 + 72);
      if (v4 && (*(v3 + 296) & 1) == 0)
      {
        result = v4(*(v3 + 8), 0);
        if (!result)
        {
          *(v3 + 296) = 1;
        }
      }
    }

    else
    {
      v5 = *(v3 + 80);
      if (v5)
      {
        result = v5(*(v3 + 8), 0);
        *(v3 + 296) = 0;
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlPeLocationHubCb::OnLhStop(uint64_t result, int a2, const char *a3, const char *a4, int a5)
{
  if (a2)
  {
    v5 = result;
    BlueFin::GlUtils::SysLogForce(BlueFin::GlUtils::m_pInstance, 2, "LH FAILED: %s AT %s:%d\n", a3, a4, a5);
    v6 = (*(*(v5 + 8) + 120) + 126184);

    return BlueFin::GlQueue::putFIFO(v6, 67, 0);
  }

  return result;
}

uint64_t BlueFin::GlPeLocationHubCb::OnPatchRead(BlueFin::GlPeLocationHubCb *this, unsigned __int8 *a2, int a3)
{
  v8 = a3;
  v3 = *(*(this + 1) + 112);
  v4 = *(v3 + 264);
  if (v4)
  {
    v5 = v4(*(v3 + 8), a2, &v8);
    v6 = v8;
    if ((v5 & 1) == 0)
    {
      return -1;
    }
  }

  else
  {
    return -1;
  }

  return v6;
}

uint64_t BlueFin::GlPeLocationHubCb::OnPatchClose(uint64_t this)
{
  v1 = *(*(this + 8) + 112);
  v2 = *(v1 + 264);
  if (v2)
  {
    return v2(*(v1 + 8), 0, 0);
  }

  return this;
}

uint64_t BlueFin::GlPeLocationHubCb::OnGnssTurnedOn(BlueFin::GlPeLocationHubCb *this, int a2)
{
  v2 = *(*(this + 1) + 120);
  if (a2)
  {
    result = BlueFin::GlQueue::putFIFO((v2 + 126184), 52, 0);
    *(v2 + 126254) = 1;
  }

  else
  {

    return BlueFin::GlQueue::putFIFO((v2 + 126184), 54, 0);
  }

  return result;
}

__int16 *BlueFin::GlPeLocationHubCb::OnGnssData(__int16 *this, unsigned __int8 *a2, unsigned int a3)
{
  v3 = a3;
  v4 = a2;
  v5 = this;
  if (a3 >= 0x10D)
  {
    if (a3 >= 1)
    {
      do
      {
        v7 = v3;
        if (v3 >= 0x10Cu)
        {
          v8 = 268;
        }

        else
        {
          v8 = v3;
        }

        BlueFin::GlReqSm::ReceiveChipData((*(*(v5 + 1) + 120) + 126144), v4, v8);
        this = BlueFin::GlReqSm::ProcessChipData((*(*(v5 + 1) + 120) + 126144), v9);
        v3 -= 268;
        v4 += 268;
      }

      while (v7 > 0x10C);
    }
  }

  else
  {
    v6 = (*(*(this + 1) + 120) + 126144);

    return BlueFin::GlReqSm::ReceiveChipData(v6, a2, a3);
  }

  return this;
}

uint64_t BlueFin::GlPeLocationHubCb::OnSensorData(uint64_t this, unsigned __int8 *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = *(this + 8);
    v5 = (v4 + 213);
    v6 = a3;
    v7 = *(v4 + 204);
    do
    {
      v9 = *a2++;
      v8 = v9;
      if (v7 <= 1)
      {
        if (v7)
        {
          if (v7 == 1)
          {
            if (v8 == 93)
            {
              goto LABEL_21;
            }

            v7 = 1;
          }
        }

        else
        {
          if (v8 == 91)
          {
            v7 = 2;
            goto LABEL_53;
          }

          v7 = 0;
        }
      }

      else
      {
        switch(v7)
        {
          case 2:
            if (v8 <= 0x14 && (v8 & 3) == 0)
            {
              *(v4 + 208) = v8 - 3;
              *(v4 + 210) = 0;
              *(v4 + 212) = v8;
              v7 = 3;
            }

            else
            {
LABEL_21:
              v7 = 0;
            }

LABEL_53:
            *(v4 + 204) = v7;
            break;
          case 3:
            *(v4 + 212) += v8;
            v13 = *(v4 + 210);
            *(v4 + 210) = v13 + 1;
            v5[v13] = v8;
            if (*(v4 + 208) == (v13 + 1))
            {
              v7 = 4;
              goto LABEL_53;
            }

            v7 = 3;
            break;
          case 4:
            if (*(v4 + 212) != v8)
            {
              goto LABEL_52;
            }

            v19 = 1;
            v20 = v21;
            v10 = *v5;
            if (v10 > 5)
            {
              if (*v5 > 0x12u)
              {
                if (v10 == 19)
                {
                  v11 = 0;
                  v21[0] = 8;
                }

                else
                {
                  if (v10 != 80)
                  {
                    goto LABEL_52;
                  }

                  v11 = 0;
                  v21[0] = 10;
                }

                goto LABEL_44;
              }

              if (v10 != 6)
              {
                if (v10 != 16)
                {
                  goto LABEL_52;
                }

LABEL_35:
                v21[0] = 2;
                v11 = 1;
                goto LABEL_44;
              }

              v11 = 0;
              v14 = 4;
            }

            else
            {
              if (*v5 <= 2u)
              {
                if (v10 != 1)
                {
                  if (v10 == 2)
                  {
                    v11 = 0;
                    v21[0] = 1;
                    goto LABEL_44;
                  }

LABEL_52:
                  v7 = 1;
                  goto LABEL_53;
                }

                v11 = 0;
                v21[0] = 0;
LABEL_44:
                v21[1] = *(v4 + 214);
                v15 = *(v4 + 208);
                if (v15 != 5)
                {
                  if (v15 == 9)
                  {
                    LODWORD(v22) = *(v4 + 218);
                  }

                  else
                  {
                    if (v15 != 17)
                    {
                      goto LABEL_52;
                    }

                    if (v11)
                    {
                      v16 = (*(v4 + 218) * -180.0) / 3.14159265;
                      *&v22 = v16;
                      v17 = (*(v4 + 222) * -180.0) / 3.14159265;
                      *(&v22 + 1) = v17;
                      v18 = (*(v4 + 226) * -180.0) / 3.14159265;
                      v23 = v18;
                    }

                    else
                    {
                      v22 = *(v4 + 218);
                      v23 = *(v4 + 226);
                    }
                  }
                }

                this = (*(**(v4 + 120) + 352))(*(v4 + 120), &v19);
                goto LABEL_52;
              }

              if (v10 != 3)
              {
                if (v10 != 4)
                {
                  goto LABEL_52;
                }

                goto LABEL_35;
              }

              v11 = 0;
              v14 = 3;
            }

            v21[0] = v14;
            goto LABEL_44;
        }
      }

      --v6;
    }

    while (v6);
  }

  return this;
}

uint64_t BlueFin::GlPeMeasFilter::UpdateRng(uint64_t result, unsigned int a2, unsigned __int8 *a3, int a4, int a5, char a6, double a7, double a8)
{
  v8 = *(result + 24);
  if (a5)
  {
    v9 = *(result + 8);
    v10 = v9 + 500;
    if (v9 + 500 >= a2)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(result + 8);
    }

    v12 = -((a2 - v11) * a8);
    v13 = *a3;
    if (v13 < 0x42)
    {
      v14 = 1;
    }

    else
    {
      v14 = a6;
    }

    if (v13 >= 0x34)
    {
      a6 = v14;
    }
  }

  else
  {
    if (*(result + 36))
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 12) = 0;
      *(result + 16) = 1;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 36) = 0;
      return result;
    }

    v12 = a8 * -1000.0;
    v9 = *(result + 8);
    v10 = v9 + 500;
  }

  v15 = a7 * 1000.0;
  v16 = *(result + 16);
  if (v16 > 59)
  {
    v17 = 1;
  }

  else
  {
    v17 = a6;
  }

  v18 = v10 < a2 && v9 + 5000 >= a2;
  if (!v18 || (v17 & 1) != 0 || (a4 - *(result + 32)) >= 0x9C5)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 12) = 0;
    v16 = 1;
    *(result + 16) = 1;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 36) = 0;
    if (v17)
    {
      return result;
    }

    if (v9 >= a2)
    {
      v8 = 0.0;
    }

    goto LABEL_28;
  }

  if (v16 > 2)
  {
    v21 = v12 * 299792458.0 / 1000.0;
    if ((a5 & 1) == 0)
    {
      v21 = v21 + v8 * -299792458.0 / 1000.0;
    }

    v22 = v21;
    if (v22 <= 262140.0)
    {
      if (v22 >= -262140.0)
      {
        goto LABEL_40;
      }

      v23 = 524290.0;
    }

    else
    {
      v23 = -524290.0;
    }

    v22 = v22 + v23;
LABEL_40:
    v24 = (v22 * -1000.0) / 299792458.0;
    v25 = *result + v24;
    v26 = 1.0;
    if (v25 <= 1.0)
    {
      if (v25 >= 0.0)
      {
LABEL_44:
        v27 = v15 - floor(v15);
        if (vabdd_f64(v27, v25) > 0.5)
        {
          if (v27 <= v25)
          {
            v27 = v27 + 1.0;
          }

          else
          {
            v25 = v25 + 1.0;
          }
        }

        v19 = v25 * (1.0 - (1.0 / v16)) + (1.0 / v16) * v27;
        if (v19 >= 1.0)
        {
          v19 = v19 + -1.0;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v26 = -1.0;
    }

    v25 = v25 + v26;
    goto LABEL_44;
  }

LABEL_28:
  v19 = v15 - floor(v15);
LABEL_29:
  *result = v19;
  *(result + 8) = a2;
  v20 = v12 + v8;
  if (!a5)
  {
    v20 = v12;
  }

  *(result + 24) = v20;
  *(result + 36) = a5;
  *(result + 32) = a4;
  *(result + 16) = v16 + 1;
  return result;
}

char *BlueFin::GlPeNmeaGen::FormatNmeaGNS(uint64_t a1, uint64_t a2, BlueFin::GlFormat *this, const char *a4)
{
  v6 = this + a4 - 1;
  *this = 0;
  v7 = *(a2 + 4274);
  if (!*(a2 + 4048) || (*(a2 + 4068) & 8) != 0)
  {
    if (v6 > this)
    {
      v25 = a4;
    }

    else
    {
      v25 = 0;
    }

    v27 = (this + BlueFin::GlFormat::glsnprintf(this, v25, "$GNGNS,%s,", a4, a1 + 1767));
    v28 = v6 + 1;
    if (v6 <= v27)
    {
      v29 = 0;
    }

    else
    {
      v29 = (v6 + 1 - v27);
    }

    if (*(a2 + 4049))
    {
      v62 = *(a2 + 4096);
      v64 = *(a2 + 4112);
      v60 = *(a2 + 4120);
      v58 = v7;
      v30 = ",,,,%c%c%c%c%c%c,%02d,%.1f,%.1f,%.1f,,";
    }

    else
    {
      v60 = *(a2 + 4120);
      v58 = v7;
      v30 = ",,,,%c%c%c%c%c%c,%02d,%.1f,,,,";
    }

    v31 = BlueFin::GlFormat::glsnprintf(v27, v29, v30, v26, 78, 78, 78, 78, 78, 78, v58, v60, v62, *&v64);
  }

  else
  {
    v8 = *(a2 + 4072);
    v9 = fabs(v8);
    v10 = fabs(*(a2 + 4080));
    v11 = v9;
    v12 = v10;
    v13 = (v9 - v11) * 60.0;
    v14 = v13;
    v15 = (v13 - v14) * 1000000.0;
    v16 = (v10 - v12) * 60.0;
    v69 = v16;
    v70 = v12;
    v17 = (v16 - v69) * 1000000.0;
    v18 = 78;
    if (v7 < 1)
    {
      v20 = 69;
      v24 = 78;
      v66 = 78;
      v67 = 78;
      v68 = 78;
    }

    else
    {
      if (*(a2 + 5624))
      {
        v19 = 68;
      }

      else
      {
        v19 = 78;
      }

      if (*(a2 + 4280))
      {
        v20 = 65;
      }

      else
      {
        v20 = v19;
      }

      if (*(a2 + 4296))
      {
        v21 = 65;
      }

      else
      {
        v21 = 78;
      }

      v68 = v21;
      if (*(a2 + 4328))
      {
        v22 = 65;
      }

      else
      {
        v22 = 78;
      }

      v67 = v22;
      if (*(a2 + 4320))
      {
        v23 = 65;
      }

      else
      {
        v23 = 78;
      }

      v66 = v23;
      if (*(a2 + 4304))
      {
        v24 = 65;
      }

      else
      {
        v24 = 78;
      }

      if (*(a2 + 4336))
      {
        v18 = 65;
      }

      else
      {
        v18 = 78;
      }
    }

    v33 = v17;
    v34 = *(a2 + 4060);
    if (v34 == 7 || v34 == 4)
    {
      v20 = 77;
    }

    if (v6 > this)
    {
      v35 = a4;
    }

    else
    {
      v35 = 0;
    }

    v52 = v11;
    v36 = 83;
    if (v8 >= 0.0)
    {
      v36 = 78;
    }

    v37 = BlueFin::GlFormat::glsnprintf(this, v35, "$GNGNS,%s,%02d%02d.%06d,%c,", a4, a1 + 1767, v52, v14, v15, v36);
    v39 = this + v37;
    v28 = v6 + 1;
    if (v6 <= v39)
    {
      v40 = 0;
    }

    else
    {
      v40 = (v6 + 1 - v39);
    }

    v41 = 87;
    if (*(a2 + 4080) >= 0.0)
    {
      v41 = 69;
    }

    v43 = &v39[BlueFin::GlFormat::glsnprintf((this + v37), v40, "%03d%02d.%06d,%c,%c%c%c%c%c%c,%02d,", v38, v70, v69, v33, v41, v20, v68, v67, v66, v24, v18, v7)];
    if (v6 <= v43)
    {
      v44 = 0;
    }

    else
    {
      v44 = (v28 - v43);
    }

    v27 = (v43 + BlueFin::GlFormat::glsnprintf(v43, v44, "%.1f,%.1f,%.1f,", v42, *(a2 + 4120), *(a2 + 4096), *(a2 + 4112)));
    if (v6 <= v27)
    {
      v46 = 0;
    }

    else
    {
      v46 = (v28 - v27);
    }

    if (*(a2 + 5624))
    {
      v31 = BlueFin::GlFormat::glsnprintf(v27, v46, "%.1f,%04d", v45, *(a2 + 7300), *(a2 + 7296), v54, v55, v56, v57, v59, v61, v63, v65);
    }

    else
    {
      v31 = BlueFin::GlFormat::glsnprintf(v27, v46, ",", v45, v51, v53, v54, v55, v56, v57, v59, v61, v63, v65);
    }
  }

  v47 = (v27 + v31);
  if (v6 <= v47)
  {
    v48 = 0;
  }

  else
  {
    v48 = (v28 - v47);
  }

  BlueFin::GlFormat::glsnprintf(v47, v48, ",%c", v32, 86);

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v6, v49);
}

char *BlueFin::GlPeNmeaGen::FormatNmeaRID(BlueFin::GlPeNmeaGen *this, BlueFin::GlFormat *a2, int a3, const char *a4)
{
  v6 = *(*(this + 229) + 88);
  if (v6 <= 0x28)
  {
    v7 = BlueFin::ulRfType2AsicNumber[v6];
  }

  else
  {
    v7 = 0;
  }

  BlueFin::GlFormat::glsnprintf(a2, a3, "$PGLOR,%d,RID,%u,%d,%d,%d,%u", a4, 0, v7, 162, 20, 25, 643487);

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(a2, a2 + a3 - 1, v8);
}

char *BlueFin::GlPeNmeaGen::FormatNmeaNVM(BlueFin::GlPeNmeaGen *this, BlueFin::GlFormat *a2, int a3, const char *a4, int a5)
{
  for (i = 0; i != 6; ++i)
  {
    v8 = BlueFin::GlPeNmeaGen::FormatNmeaNVM(char *,short,unsigned int,unsigned int)::pcIdentifier[i];
    v9 = __const__ZN7BlueFin11GlPeNmeaGen13FormatNmeaNVMEPcsjj_aulCheck[i];
    if ((v9 & a4) != 0)
    {
      v10 = -32;
    }

    else
    {
      v10 = 0;
    }

    v15[i] = v10 + v8;
    if ((v9 & a5) != 0)
    {
      v11 = -32;
    }

    else
    {
      v11 = 0;
    }

    v14[i] = v11 + v8;
  }

  BlueFin::GlFormat::glsnprintf(a2, a3, "$PGLOR,%d,NVM,%s,%s", a4, 0, v15, v14);
  return BlueFin::GlPeNmeaGen::nmeaAddChksum(a2, a2 + a3 - 1, v12);
}

char *BlueFin::GlPeNmeaGen::FormatNmeaPFM(BlueFin::GlPeNmeaGen *this, const BlueFin::GlPePlatfStat *a2, BlueFin::GlFormat *a3, const char *a4)
{
  v6 = a3 + a4 - 1;
  if (v6 <= a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4;
  }

  v8 = BlueFin::GlFormat::glsnprintf(a3, v7, "$PGLOR,%d,PFM,HAL,%c,%d,%d,%d,%d,RF,%c,%d,%.1f,%.0f,", a4, 2, str_104_0[*a2], *(a2 + 2), *(a2 + 3), *(a2 + 4), *(a2 + 5), str_104_0[*(a2 + 41)], *(a2 + 84), *(a2 + 44), *(a2 + 48));
  v9 = a3 + v8;
  if (v6 > v9)
  {
    v10 = v6 - v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  v12 = &v9[BlueFin::GlPeNmeaGen::FormatNmeaPFM_Rtc(v8, a2, (a3 + v8), v10)];
  if (v6 > v12)
  {
    v13 = (v6 - v12 + 1);
  }

  else
  {
    v13 = 0;
  }

  v14 = BlueFin::GlFormat::glsnprintf(v12, v13, ",STO,%c,LTO,%c,SW,%c,", v11, str_104_0[*(a2 + 52)], str_104_0[*(a2 + 53)], str_104_0[*(a2 + 54)]);
  v15 = (v12 + v14);
  if (v6 > v15)
  {
    v16 = v6 - v15 + 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = BlueFin::GlPeNmeaGen::FormatNmeaPFM_Cntin(v14, a2, v15, v16);
  v18 = (v15 + v17);
  if (v6 > v18)
  {
    v19 = v6 - v18 + 1;
  }

  else
  {
    v19 = 0;
  }

  BlueFin::GlPeNmeaGen::FormatNmeaPFM_Osc(v17, a2, v18, v19);

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(a3, v6, v20);
}

uint64_t BlueFin::GlPeNmeaGen::FormatNmeaPFM_Rtc(BlueFin::GlPeNmeaGen *this, const BlueFin::GlPePlatfStat *a2, BlueFin::GlFormat *a3, const char *a4)
{
  v6 = a3 + a4;
  v7 = v6 - 1;
  v8 = *(a2 + 51);
  if (v6 - 1 <= a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a4;
  }

  v10 = BlueFin::GlFormat::glsnprintf(a3, v9, "RTC,", a4);
  v12 = (a3 + v10);
  if (*(a2 + 196) == 1)
  {
    if (v7 <= v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = (v6 - v12);
    }

    v12 = (v12 + BlueFin::GlFormat::glsnprintf((a3 + v10), v13, "%.1f", v11, (*(a2 + 50) * 1000000.0)));
  }

  if (v8 == 2)
  {
    LODWORD(v14) = 70;
  }

  else
  {
    LODWORD(v14) = 45;
  }

  if (v8 == 1)
  {
    v14 = 80;
  }

  else
  {
    v14 = v14;
  }

  if (v7 <= v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = (v6 - v12);
  }

  return v12 + BlueFin::GlFormat::glsnprintf(v12, v15, ",%c", v11, v14) - a3;
}

unint64_t BlueFin::GlPeNmeaGen::FormatNmeaPFM_Cntin(BlueFin::GlPeNmeaGen *this, const BlueFin::GlPePlatfStat *a2, BlueFin::GlFormat *a3, const char *a4)
{
  if ((*(a2 + 55) - 8) < 0xFFFFFFF9)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(a2 + 55);
  }

  if (v4 != 3)
  {
    return BlueFin::GlFormat::glsnprintf(a3, a4, BlueFin::GlPeNmeaGen::FormatNmeaPFM_Cntin(BlueFin::GlPePlatfStat const&,char *,short)::paCntinStrings[v4], a4, *(a2 + 56));
  }

  v5 = *(a2 + 57);
  if (v5 >= 8)
  {
    v5 = 8;
  }

  return BlueFin::GlFormat::glsnprintf(a3, a4, "CNTIN,NM,%s,", a4, BlueFin::GlPeNmeaGen::FormatNmeaPFM_Cntin(BlueFin::GlPePlatfStat const&,char *,short)::paCntinErrors[v5]);
}

uint64_t BlueFin::GlPeNmeaGen::FormatNmeaPFM_Osc(BlueFin::GlPeNmeaGen *this, const BlueFin::GlPePlatfStat *a2, BlueFin::GlFormat *a3, const char *a4)
{
  v6 = a3 + a4;
  v7 = v6 - 1;
  if (v6 - 1 <= a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = a4;
  }

  v9 = BlueFin::GlFormat::glsnprintf(a3, v8, "OSC,", a4);
  v11 = a3 + v9;
  if (*(a2 + 59))
  {
    v12 = *(a2 + 60);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a2 + 61);
  if (v7 <= v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = (v6 - v11);
  }

  v16 = &v11[BlueFin::GlFormat::glsnprintf((a3 + v9), v14, "%c,", v10, str_125[*(a2 + 59)])];
  if (v7 <= v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = (v6 - v16);
  }

  v18 = BlueFin::GlFormat::glsnprintf(v16, v17, "%c,", v15, str_125[v12]);
  v20 = v16 + v18;
  if (v12 && v13)
  {
    if (v7 <= v20)
    {
      v21 = 0;
    }

    else
    {
      v21 = (v6 - v20);
    }

    LODWORD(v20) = v20 + BlueFin::GlFormat::glsnprintf((v16 + v18), v21, "%c", v19, str_125[v13]);
  }

  return (v20 - a3);
}

char *BlueFin::GlPeNmeaGen::FormatNmeaFTS(uint64_t a1, uint64_t a2, BlueFin::GlFormat *this, const char *a4)
{
  v145 = *MEMORY[0x29EDCA608];
  v7 = this + a4;
  v8 = v7 - 1;
  if (v7 - 1 <= this)
  {
    v9 = 0;
  }

  else
  {
    v9 = a4;
  }

  v10 = BlueFin::GlFormat::glsnprintf(this, v9, "$PGLOR,%d,FTS,", a4, 11);
  v11 = *(a2 + 12);
  if ((v11 - 1) >= 0x20)
  {
    if ((v11 - 52) >= 0xE)
    {
      if ((v11 - 33) >= 0x13)
      {
        if ((v11 - 66) >= 0xA)
        {
          v13 = v11 - 76;
          v14 = v11 - 139;
          if ((v11 - 175) < 0xE)
          {
            v12 = 6;
          }

          else
          {
            v12 = 7;
          }

          if (v14 < 0x24)
          {
            v12 = 5;
          }

          if (v13 < 0x3F)
          {
            v12 = 4;
          }
        }

        else
        {
          v12 = 3;
        }
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {
      v12 = 2;
    }
  }

  else
  {
    v12 = 0;
  }

  v15 = (this + v10);
  v16 = BlueFin::GNSS2CHARCODE(v12);
  v18 = *(a2 + 320);
  if (v18 == 3)
  {
    v19 = 65;
  }

  else if (v18 == 4)
  {
    v19 = 67;
  }

  else
  {
    v19 = v16;
  }

  if (*a2)
  {
    v20 = *(a2 + 12);
    if ((*(a2 + 12) - 52) > 0xDu)
    {
      v21 = BlueFin::GlSvId::s_aucSvId2prn[v20];
    }

    else
    {
      v21 = (v20 - 59);
    }

    if (v8 <= v15)
    {
      v31 = 0;
    }

    else
    {
      v31 = (v7 - v15);
    }

    v33 = (v15 + BlueFin::GlFormat::glsnprintf(v15, v31, "%d,", v17, v21));
    if (*(a2 + 14) && *(a2 + 206))
    {
      if (v8 <= v33)
      {
        v34 = 0;
      }

      else
      {
        v34 = (v7 - v33);
      }

      v35 = *(a2 + 56);
      if (*(a2 + 16))
      {
        v36 = BlueFin::GlFormat::glsnprintf(v33, v34, "%.1lf,%.1lf,dBm,%.1lf,%.1lf,%.1lf,%.1lf,dBHz,", v32, *(a2 + 24) + v35, v35 + *(a2 + 32), v35 + *(a2 + 40), v35 + *(a2 + 48), *(a2 + 40), *(a2 + 48));
        goto LABEL_99;
      }

      v137 = v35 + *(a2 + 40);
      v141 = *(a2 + 40);
      v127 = *(a2 + 24) + v35;
      v38 = "%.1lf,,dBm,%.1lf,,%.1lf,,dBHz,";
    }

    else
    {
      if (v8 <= v33)
      {
        v34 = 0;
      }

      else
      {
        v34 = (v7 - v33);
      }

      v38 = ",,dBm,,,,,dBHz,";
    }

    v36 = BlueFin::GlFormat::glsnprintf(v33, v34, v38, v32, *&v127, *&v137, v141);
LABEL_99:
    v57 = (v33 + v36);
    if (v8 <= v57)
    {
      v58 = 0;
    }

    else
    {
      v58 = (v7 - v57);
    }

    if (*(a2 + 64))
    {
      v59 = BlueFin::GlFormat::glsnprintf(v57, v58, "%.1lf,%.1lf,", v37, *(a2 + 72) * 1000000000.0, *(a2 + 80) * 1000000000.0);
    }

    else
    {
      v59 = BlueFin::GlFormat::glsnprintf(v57, v58, ",,", v37, v128, v139);
    }

    v61 = (v57 + v59);
    if (v8 <= v61)
    {
      v62 = 0;
    }

    else
    {
      v62 = (v7 - v61);
    }

    if (*(a2 + 120))
    {
      v63 = BlueFin::GlFormat::glsnprintf(v61, v62, "%.1lf,", v60, *(a2 + 128) * 1000000.0);
    }

    else
    {
      v63 = BlueFin::GlFormat::glsnprintf(v61, v62, ",", v60, v131);
    }

    v65 = (v61 + v63);
    v66 = *(a2 + 100);
    if (*(*(a1 + 1832) + 136) == 1)
    {
      GlCustomLog(20, "<FTCW> CNTIN was requested, etCntInStatus (%d) \n", *(a2 + 100));
      v66 = *(a2 + 100);
      if (v66)
      {
        v67 = 0;
      }

      else
      {
        v67 = 3;
      }
    }

    else
    {
      v67 = 0;
    }

    if (v8 <= v65)
    {
      v68 = 0;
    }

    else
    {
      v68 = (v7 - v65);
    }

    if (v66 > 5)
    {
      v69 = BlueFin::GlFormat::glsnprintf(v65, v68, ",", v64, v132);
    }

    else
    {
      v69 = BlueFin::GlFormat::glsnprintf(v65, v68, "%s,", v64, (&off_29EEB4128[v67])[v66]);
    }

    v71 = v65 + v69;
    if (v8 <= v71)
    {
      v72 = 0;
    }

    else
    {
      v72 = (v7 - v71);
    }

    if (*(a2 + 104))
    {
      v73 = BlueFin::GlFormat::glsnprintf((v65 + v69), v72, "%.1lf,", v70, *(a2 + 112) * 1000000000.0);
    }

    else
    {
      v73 = BlueFin::GlFormat::glsnprintf((v65 + v69), v72, ",", v70, v133);
    }

    v75 = &v71[v73];
    v76 = *(a2 + 96);
    if (v8 <= v75)
    {
      v77 = 0;
    }

    else
    {
      v77 = (v7 - v75);
    }

    if (v76 && *(a2 + 14))
    {
      v78 = BlueFin::GlFormat::glsnprintf(v75, v77, "%d,%d,%.2lf,", v74, *(a2 + 92), v76, 100.0 - *(a2 + 92) * 100.0 / v76);
    }

    else
    {
      v78 = BlueFin::GlFormat::glsnprintf(v75, v77, ",,,", v74, v134, v140, v142);
    }

    v80 = (v75 + v78);
    if (v8 <= v80)
    {
      v81 = 0;
    }

    else
    {
      v81 = (v7 - v80);
    }

    v83 = (v80 + BlueFin::GlFormat::glsnprintf(v80, v81, "%u,", v79, *(a2 + 200)));
    v84 = *(a2 + 12);
    v85 = (v84 - 1);
    if (*(a2 + 152))
    {
      if (v85 >= 0x20)
      {
        if ((v84 - 52) < 0xE)
        {
          if (v8 <= v83)
          {
            v86 = 0;
          }

          else
          {
            v86 = (v7 - v83);
          }

          v87 = ",,";
          goto LABEL_159;
        }

        if ((v84 - 52) > 0xFFECu || (v84 - 76) > 0xFFF5u || (v84 - 139) > 0x23u)
        {
          goto LABEL_160;
        }
      }
    }

    else if (v85 >= 0x20)
    {
      if ((v84 - 52) < 0xE)
      {
        if (v8 <= v83)
        {
          v86 = 0;
        }

        else
        {
          v86 = (v7 - v83);
        }

        v88 = *(a2 + 164);
        v89 = *(a2 + 168);
        goto LABEL_158;
      }

      if ((v84 - 33) < 0x13 || (v84 - 66) < 0xAu)
      {
        goto LABEL_241;
      }

      if ((v84 - 76) < 0x3F)
      {
        if (v8 <= v83)
        {
          v86 = 0;
        }

        else
        {
          v86 = (v7 - v83);
        }

        v88 = *(a2 + 172);
        v89 = *(a2 + 176);
        goto LABEL_158;
      }

      if ((v84 - 139) > 0x23)
      {
LABEL_241:
        if (v8 <= v83)
        {
          v86 = 0;
        }

        else
        {
          v86 = (v7 - v83);
        }

        v87 = ",";
        goto LABEL_159;
      }
    }

    if (v8 <= v83)
    {
      v86 = 0;
    }

    else
    {
      v86 = (v7 - v83);
    }

    v88 = *(a2 + 156);
    v89 = *(a2 + 160);
LABEL_158:
    v135 = (v88 + v89);
    v87 = "%.1lf,";
LABEL_159:
    v83 = (v83 + BlueFin::GlFormat::glsnprintf(v83, v86, v87, v82, *&v135));
LABEL_160:
    if (v8 <= v83)
    {
      v90 = 0;
    }

    else
    {
      v90 = (v7 - v83);
    }

    v92 = (v83 + BlueFin::GlFormat::glsnprintf(v83, v90, "%c,", v82, 67));
    if (v8 <= v92)
    {
      v93 = 0;
    }

    else
    {
      v93 = (v7 - v92);
    }

    v94 = BlueFin::GlFormat::glsnprintf(v92, v93, "%c,", v91, v19);
    v96 = v92 + v94;
    v97 = *(a2 + 4);
    if (v97 != 5 && v97 != 3)
    {
      if (v8 <= v96)
      {
        v101 = 0;
      }

      else
      {
        v101 = (v7 - v96);
      }

      v102 = ",,";
      v103 = (v92 + v94);
      goto LABEL_190;
    }

    v98 = *(a2 + 304);
    if (v8 <= v96)
    {
      v99 = 0;
    }

    else
    {
      v99 = (v7 - v96);
    }

    if (v98 == 1)
    {
      v104 = 80;
    }

    else
    {
      if (v98 == 2)
      {
        v100 = ",";
LABEL_181:
        v106 = &v96[BlueFin::GlFormat::glsnprintf((v92 + v94), v99, v100, v95, *&v136)];
        if (v8 <= v106)
        {
          v107 = 0;
        }

        else
        {
          v107 = (v7 - v106);
        }

        v108 = BlueFin::GlFormat::glsnprintf(v106, v107, "%0.1lf,", v105, *(a2 + 308));
        v110 = *(a2 + 312);
        if (v110 == 0.0 && *(a2 + 304) != 1)
        {
          goto LABEL_191;
        }

        v103 = (v106 + v108);
        if (v8 <= v103)
        {
          v101 = 0;
        }

        else
        {
          v101 = (v7 - v103);
        }

        v136 = v110;
        v102 = "%0.1lf";
LABEL_190:
        BlueFin::GlFormat::glsnprintf(v103, v101, v102, v95, *&v136);
LABEL_191:

        return BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v7 - 1, v109);
      }

      v104 = 70;
    }

    v136 = *&v104;
    v100 = "%c,";
    goto LABEL_181;
  }

  v144 = 0;
  v143 = 0;
  if (v19 == 82)
  {
    v22 = *(a2 + 12);
    v23 = v22 - 52;
    LODWORD(v24) = (v22 - 59);
    if (v23 >= 0xE)
    {
      v24 = 4294967288;
    }

    else
    {
      v24 = v24;
    }

    BlueFin::GlFormat::glsnprintf(&v143, 0xA, "(%d)", v17, v24);
  }

  if (*(a2 + 204))
  {
    v25 = *(a2 + 224);
    if (v25 >= -118.5 && *(*(a1 + 1832) + 26014) != 1 || (v26 = *(a2 + 208), v26 == 1.79769313e308) || (v27 = *(a2 + 216), v27 == 1.79769313e308))
    {
      if (v8 <= v15)
      {
        v39 = 0;
      }

      else
      {
        v39 = (v7 - v15);
      }

      v29 = BlueFin::GlFormat::glsnprintf(v15, v39, "CW,%.1lf,dBm,,,ppb,%c%s,", v17, *&v25, v19, &v143);
    }

    else
    {
      if (v8 <= v15)
      {
        v28 = 0;
      }

      else
      {
        v28 = (v7 - v15);
      }

      v29 = BlueFin::GlFormat::glsnprintf(v15, v28, "CW,%.1lf,dBm,%.0lf,%.1lf,ppb,%c%s,", v17, v25 + 0.05, v26 * 1000000000.0 + 0.5, v27 * 1000000000.0 + 0.05, v19, &v143);
    }
  }

  else
  {
    if (v8 <= v15)
    {
      v40 = 0;
    }

    else
    {
      v40 = (v7 - v15);
    }

    v29 = BlueFin::GlFormat::glsnprintf(v15, v40, "CW,,dBm,,,ppb,%c%s,", v17, v19, &v143);
  }

  v41 = (v15 + v29);
  v42 = *(a2 + 100);
  if (*(*(a1 + 1832) + 136) == 1)
  {
    GlCustomLog(20, "<FTCW> CNTIN was requested, etCntInStatus (%d) \n", *(a2 + 100));
    v42 = *(a2 + 100);
    if (v42)
    {
      v43 = 0;
    }

    else
    {
      v43 = 3;
    }
  }

  else
  {
    v43 = 0;
  }

  if (v8 <= v41)
  {
    v44 = 0;
  }

  else
  {
    v44 = (v7 - v41);
  }

  if (v42 > 5)
  {
    v45 = BlueFin::GlFormat::glsnprintf(v41, v44, ",", v30, v126);
  }

  else
  {
    v45 = BlueFin::GlFormat::glsnprintf(v41, v44, "%s,", v30, (&off_29EEB4128[v43])[v42]);
  }

  v47 = (v41 + v45);
  if (*(a2 + 104))
  {
    if (v8 <= v47)
    {
      v48 = 0;
    }

    else
    {
      v48 = (v7 - v47);
    }

    v47 = (v47 + BlueFin::GlFormat::glsnprintf(v47, v48, "%.1lf", v46, *(a2 + 112) * 1000000000.0));
  }

  if (!*(a2 + 204))
  {
    if (v8 <= v47)
    {
      v52 = 0;
    }

    else
    {
      v52 = (v7 - v47);
    }

    v53 = ",,dBHz,,ppb";
LABEL_210:
    v55 = BlueFin::GlFormat::glsnprintf(v47, v52, v53, v46, *&v129, *&v138);
    goto LABEL_211;
  }

  v49 = *(a2 + 208);
  if (v49 != 1.79769313e308 && *(a2 + 216) != 1.79769313e308)
  {
    v50 = *(a2 + 12);
    if ((v50 - 52) < 0xE || (v51 = *(a2 + 320), v51 == 4))
    {
      if (v8 <= v47)
      {
        v52 = 0;
      }

      else
      {
        v52 = (v7 - v47);
      }

      v129 = *(a2 + 224) + 174.0;
      v138 = v49 * 1000000000.0 + 0.5;
    }

    else
    {
      v112 = dbl_298A44900[v51 == 3];
      if ((v50 - 76) < 0x3F)
      {
        v112 = 128114.95;
      }

      if (v8 <= v47)
      {
        v52 = 0;
      }

      else
      {
        v52 = (v7 - v47);
      }

      v113 = v49 * 1000000000.0 + 0.5;
      v114 = v113 - v112;
      if (!*(a2 + 136))
      {
        v113 = v114;
      }

      v129 = *(a2 + 224) + 174.0;
      v138 = v113;
    }

    v53 = ",%.1lf,dBHz,%.0lf,ppb";
    goto LABEL_210;
  }

  if (v8 <= v47)
  {
    v54 = 0;
  }

  else
  {
    v54 = (v7 - v47);
  }

  v55 = BlueFin::GlFormat::glsnprintf(v47, v54, ",%.1lf,dBHz,,ppb", v46, *(a2 + 224) + 174.0, *&v138);
LABEL_211:
  v115 = (v47 + v55);
  v116 = *(a2 + 12);
  v117 = v116 - 1;
  if (*(a2 + 152))
  {
    if (v8 <= v115)
    {
      v118 = 0;
    }

    else
    {
      v118 = (v7 - v115);
    }

    if (v117 >= 0x20 && (v116 - 139) > 0x23)
    {
      goto LABEL_217;
    }

    goto LABEL_222;
  }

  if (v117 < 0x20)
  {
    goto LABEL_219;
  }

  if ((v116 - 52) < 0xE)
  {
    if (v8 <= v115)
    {
      v118 = 0;
    }

    else
    {
      v118 = (v7 - v115);
    }

    v120 = *(a2 + 164);
    v121 = *(a2 + 168);
    goto LABEL_223;
  }

  if ((v116 - 33) >= 0x13 && (v116 - 66) >= 0xA)
  {
    if ((v116 - 76) < 0x3F)
    {
      if (v8 <= v115)
      {
        v118 = 0;
      }

      else
      {
        v118 = (v7 - v115);
      }

      v120 = *(a2 + 172);
      v121 = *(a2 + 176);
      goto LABEL_223;
    }

    if ((v116 - 139) <= 0x23)
    {
LABEL_219:
      if (v8 <= v115)
      {
        v118 = 0;
      }

      else
      {
        v118 = (v7 - v115);
      }

LABEL_222:
      v120 = *(a2 + 156);
      v121 = *(a2 + 160);
LABEL_223:
      v130 = (v120 + v121);
      v119 = ",%.1lf";
      goto LABEL_224;
    }
  }

  if (v8 <= v115)
  {
    v118 = 0;
  }

  else
  {
    v118 = (v7 - v115);
  }

LABEL_217:
  v119 = ",";
LABEL_224:
  v122 = (v115 + BlueFin::GlFormat::glsnprintf(v115, v118, v119, v56, *&v130));
  if (v8 <= v122)
  {
    v124 = 0;
  }

  else
  {
    v124 = (v7 - v122);
  }

  BlueFin::GlFormat::glsnprintf(v122, v124, ",%c", v123, 67);
  return BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v7 - 1, v125);
}

uint64_t BlueFin::GNSS2CHARCODE(unsigned int a1)
{
  if (a1 == 6)
  {
    v1 = 78;
  }

  else
  {
    v1 = 120;
  }

  if (a1 < 6)
  {
    v1 = 0x454251525347uLL >> (8 * a1);
  }

  return v1 & 0x7F;
}

char *BlueFin::GlPeNmeaGen::FormatNmeaSVD(BlueFin::GlPeNmeaGen *this, const BlueFin::GlMePlatfStat *a2, BlueFin::GlFormat *a3, const char *a4)
{
  v6 = a3 + a4 - 1;
  *a3 = 0;
  v7 = *(a2 + 111);
  if (v6 <= a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = a4;
  }

  v9 = BlueFin::GlFormat::glsnprintf(a3, v8, "$PGLOR,%d,SVD,%d", a4, 0, v7);
  if (*(a2 + 111) >= 1)
  {
    v12 = 0;
    v13 = (a3 + v9);
    v14 = (a2 + 226);
    do
    {
      v15 = *(v14 - 1);
      if ((*(v14 - 1) - 52) > 0xDu)
      {
        v16 = BlueFin::GlSvId::s_aucSvId2prn[v15];
      }

      else
      {
        v16 = (v15 - 59);
      }

      if (v6 <= v13)
      {
        v17 = 0;
      }

      else
      {
        v17 = (v6 + 1 - v13);
      }

      v18 = *v14;
      v14 += 2;
      v13 = (v13 + BlueFin::GlFormat::glsnprintf(v13, v17, ",%02d,%d", v11, v16, v18));
      ++v12;
    }

    while (v12 < *(a2 + 111));
  }

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(a3, v6, v10);
}

char *BlueFin::GlPeNmeaGen::FormatNmeaPFA(uint64_t a1, uint64_t a2, signed int a3, BlueFin::GlFormat *a4, int a5)
{
  LODWORD(v5) = a5;
  v9 = BlueFin::GNSS2CHARCODE(a3);
  v11 = *(a2 + 160);
  if (!v11)
  {
    v5 = v5;
    BlueFin::GlFormat::glsnprintf(a4, v5, "$PGLOR,%d,PFA,%c,Detect,,Xcorr,,Attempt,,ValidPR,,ValidRR,", v10, 0, v9);
    goto LABEL_13;
  }

  v12 = 0;
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v11 += 16;
      goto LABEL_11;
    }

    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    if (a3 == 5)
    {
      v11 += 24;
      goto LABEL_11;
    }
  }

  else
  {
    if (!a3)
    {
LABEL_11:
      v16 = *v11;
      v15 = v11[1];
      v14 = v11[2];
      v12 = *(v11 + 2);
      v13 = *(v11 + 3);
      goto LABEL_12;
    }

    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    if (a3 == 2)
    {
      v11 += 8;
      goto LABEL_11;
    }
  }

LABEL_12:
  v5 = v5;
  BlueFin::GlFormat::glsnprintf(a4, v5, "$PGLOR,%d,PFA,%c,Detect,%u,Xcorr,%u,Attempt,%u,ValidPR,%u,ValidRR,%u", v10, 0, v9, v15, v14, v16, v12, v13);
LABEL_13:

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(a4, a4 + v5 - 1, v17);
}

void BlueFin::GlPeNmeaGen::FormatNmeaCN0(uint64_t a1, uint64_t a2, BlueFin::GlFormat *a3, int a4)
{
  if (*a2 == 1)
  {
    v8 = BlueFin::GNSS2CHARCODE(BlueFin::GlSvId::s_aucSvId2gnss[*(a2 + 1)]);
    v10 = *(a2 + 1);
    if ((v10 - 52) > 0xD)
    {
      BlueFin::GlFormat::glsnprintf(a3, a4, "$PGLOR,%d,CN0,%c,PRN,%d,BAND,%d,MOM,%.1f,SNV,%.1f,NC,%.1f,NT,%.1f", v9, 0, v8, BlueFin::GlSvId::s_aucSvId2prn[*(a2 + 1)], *(a2 + 2), *(a2 + 4), *(a2 + 8), *(a2 + 12), *(a2 + 16));
    }

    else
    {
      BlueFin::GlFormat::glsnprintf(a3, a4, "$PGLOR,%d,CN0,%c,FCN,%d,BAND,%d,MOM,%.1f,SNV,%.1f,NC,%.1f,NT,%.1f", v9, 0, v8, (v10 - 59), *(a2 + 2), *(a2 + 4), *(a2 + 8), *(a2 + 12), *(a2 + 16));
    }

    BlueFin::GlPeNmeaGen::nmeaAddChksum(a3, a3 + a4 - 1, v11);
  }
}

char *BlueFin::GlPeNmeaGen::FormatNmeaFIN(BlueFin::GlPeNmeaGen *this, uint64_t a2, uint64_t a3, const char *a4, unsigned int a5, BlueFin::GlFormat *a6, int a7, int8x16_t a8, double a9, int8x16_t a10, int8x16_t a11)
{
  if (a4)
  {
    *a8.i64 = a5 * 100.0 / a4 + 0.5;
    *a8.i32 = *a8.i64;
    *a11.i32 = *a8.i32 + (truncf(*a8.i32 * 2.3283e-10) * -4295000000.0);
    v12.i64[0] = 0x8000000080000000;
    v12.i64[1] = 0x8000000080000000;
    a11.i32[0] = vbslq_s8(v12, a11, a8).u32[0];
    if (*a8.i32 > 4295000000.0)
    {
      a8.i32[0] = a11.i32[0];
    }

    if (*a8.i32 < -4295000000.0)
    {
      *a10.i32 = -*a8.i32;
      *a8.i32 = -(*a8.i32 - (truncf(*a8.i32 * -2.3283e-10) * -4295000000.0));
      *a8.i32 = -*vbslq_s8(v12, a8, a10).i32;
    }

    if (*a8.i32 < 0.0)
    {
      v13 = --*a8.i32;
    }

    else
    {
      LOWORD(v13) = *a8.i32;
    }

    v14 = v13;
    v15 = "$PGLOR,%d,FIN,%d,%hu,%u,%hu";
  }

  else
  {
    v14 = 0;
    v15 = "$PGLOR,%d,FIN,%d,%hu,,";
  }

  v16 = a6 + a7 - 1;
  BlueFin::GlFormat::glsnprintf(a6, a7, v15, a4, 2, a2, a3, a4, v14);

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(a6, v16, v17);
}

char *BlueFin::GlPeNmeaGen::FormatNmeaPPS(int a1, uint64_t a2, BlueFin::GlFormat *this, const char *a4)
{
  v6 = this + a4;
  v7 = v6 - 1;
  if (v6 - 1 <= this)
  {
    v8 = 0;
  }

  else
  {
    v8 = a4;
  }

  v9 = BlueFin::GlFormat::glsnprintf(this, v8, "$PGLOR,%d,PPS,%02d%02d%02d,%02d%02d%02d.%03d,", a4, 0, *(a2 + 8), *(a2 + 6), *(a2 + 4) % 0x64u, *(a2 + 10), *(a2 + 12), *(a2 + 14), *(a2 + 16));
  v11 = this + v9;
  if (v7 <= v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = (v6 - v11);
  }

  if (*(a2 + 7248))
  {
    v13 = BlueFin::GlFormat::glsnprintf((this + v9), v12, "%02d%02d%02d,%02d%02d%02d.%03d,", v10, *(a2 + 7252), *(a2 + 7250), *(a2 + 7248) % 0x64u, *(a2 + 7254), *(a2 + 7256), *(a2 + 7258), *(a2 + 7260));
  }

  else
  {
    v13 = BlueFin::GlFormat::glsnprintf((this + v9), v12, ",,", v10, v28, v30, v32, v34, v36, v38, v39);
  }

  v15 = &v11[v13];
  v16 = *(a2 + 7268);
  if (v16 == 0x7FFFFFFF)
  {
    if (v7 <= v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = (v6 - v15);
    }

    v18 = ",,,,";
  }

  else
  {
    v19 = v16 / 0x3E8;
    v20 = *(a2 + 7264);
    if (v20)
    {
      v19 = sqrtf((v19 * v19 + v20 * v20));
    }

    if (v7 <= v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = (v6 - v15);
    }

    v21 = v19 / 0x3E8uLL;
    v22 = v19 % 0x3E8;
    v23 = 48;
    if (*(a2 + 7274))
    {
      v24 = 49;
    }

    else
    {
      v24 = 48;
    }

    if (*(a2 + 7273))
    {
      v25 = 49;
    }

    else
    {
      v25 = 48;
    }

    if (*(a2 + 7272))
    {
      v23 = 49;
    }

    v35 = v25;
    v37 = v24;
    v31 = v22;
    v33 = v23;
    v29 = v21;
    v18 = "%03d.%03d,%c,%c,%c,";
  }

  BlueFin::GlFormat::glsnprintf(v15, v17, v18, v14, v29, v31, v33, v35, v37);

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v6 - 1, v26);
}

char *BlueFin::GlPeNmeaGen::FormatNmeaSPA(int a1, uint64_t a2, BlueFin::GlFormat *this, const char *a4)
{
  v6 = *(a2 + 12);
  if ((*(a2 + 12) + 67) >= 0x44u)
  {
    v9 = BlueFin::GlSvId::s_aucSvId2gnss[v6];
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v9] == 255)
    {
      v8 = 0;
      v7 = -1;
    }

    else
    {
      v7 = 0;
      v8 = (BlueFin::GlSignalId::s_ausGnss2signalId[v9] + v6 - BlueFin::GlSvId::s_aucGnss2minSvId[v9]) < 0x23Fu;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v10 = this + a4;
  v11 = v10 - 1;
  if (v10 - 1 <= this)
  {
    v12 = 0;
  }

  else
  {
    v12 = a4;
  }

  v13 = BlueFin::GlFormat::glsnprintf(this, v12, "$PGLOR,%d,SPA,", a4, 2);
  v15 = this + v13;
  if (v11 <= v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = (v10 - v15);
  }

  v17 = 82;
  if (((v6 - 1) & 0xE0) == 0)
  {
    v17 = 71;
  }

  v19 = &v15[BlueFin::GlFormat::glsnprintf((this + v13), v16, "%c,", v14, v17)];
  if (v11 <= v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = (v10 - v19);
  }

  v22 = (v19 + BlueFin::GlFormat::glsnprintf(v19, v20, "%.3f,dBm,", v18, *(a2 + 224)));
  v23 = *(a2 + 208);
  if (v11 <= v22)
  {
    v24 = 0;
  }

  else
  {
    v24 = (v10 - v22);
  }

  if (v23 == 1.79769313e308)
  {
    v25 = ",Hz";
  }

  else
  {
    if (!v8)
    {
      DeviceFaultNotify("glsignalid.h", 651, "GetRfCarrierFrqHz", "IsValid()");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 651, "IsValid()");
    }

    v26 = BlueFin::GlSvId::s_aucSvId2gnss[v6];
    v27 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v7 - v7 + v26]];
    if (v26 == 2)
    {
      v28 = (v6 - 59);
      if ((v6 - 52) >= 0xE)
      {
        v28 = -8.0;
      }

      v27 = v27 + v28 * 562500.0;
    }

    v34 = v23 * v27;
    v25 = "%.0f,Hz";
  }

  v29 = (v22 + BlueFin::GlFormat::glsnprintf(v22, v24, v25, v21, *&v34));
  if (v11 <= v29)
  {
    v31 = 0;
  }

  else
  {
    v31 = (v10 - v29);
  }

  BlueFin::GlFormat::glsnprintf(v29, v31, ",AGC_AD_IQ,%d,%d,%.1f,%.1f", v30, *(a2 + 156), *(a2 + 160), *(a2 + 164), *(a2 + 168));

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v10 - 1, v32);
}

char *BlueFin::GlPeNmeaGen::FormatNmeaRTC(uint64_t a1, unsigned int *a2, BlueFin::GlFormat *this, const char *a4)
{
  v6 = this + a4 - 1;
  if (v6 <= this)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4;
  }

  v8 = (this + BlueFin::GlFormat::glsnprintf(this, v7, "$PGLOR,%d,RTC,%s,", a4, 1, a1 + 1767));
  if (v6 > v8)
  {
    v10 = (v6 - v8 + 1);
  }

  else
  {
    v10 = 0;
  }

  BlueFin::GlFormat::glsnprintf(v8, v10, "%lu,%.3f,%+.0f,%.0f,%lu,", v9, *a2, *(a2 + 1), *(a2 + 2), *(a2 + 3), a2[8]);

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v6, v11);
}

unint64_t BlueFin::GlPeNmeaGsvSatsNum::GetNmeaSystemID(uint64_t a1, unsigned int a2)
{
  v2 = 0x6030405020101uLL >> (8 * a2);
  if (a2 >= 7)
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 7;
}

uint64_t BlueFin::GlPePendingBag::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *v48 = *(a2 + 52);
    *&v48[12] = *(a2 + 64);
    v4 = *(a2 + 4);
    v5 = *(a2 + 36);
    v6 = *(a2 + 20);
    *a1 = *a2;
    *(a1 + 20) = v6;
    *(a1 + 36) = v5;
    *(a1 + 4) = v4;
    *(a1 + 52) = *v48;
    *(a1 + 64) = *&v48[12];
    BlueFin::GlGnssSet::operator=(a1 + 96, a2 + 96);
    v7 = *(a2 + 288);
    v8 = *(a2 + 304);
    *(a1 + 320) = *(a2 + 320);
    *(a1 + 288) = v7;
    *(a1 + 304) = v8;
    v9 = *(a2 + 340);
    *(a1 + 324) = *(a2 + 324);
    *(a1 + 340) = v9;
    v10 = *(a2 + 356);
    *(a1 + 372) = *(a2 + 372);
    *(a1 + 356) = v10;
    BlueFin::GlSetBase::operator=(a1 + 384, a2 + 384);
    v11 = *(a2 + 396);
    *(a1 + 404) = *(a2 + 404);
    *(a1 + 396) = v11;
    BlueFin::GlSetBase::operator=(a1 + 408, a2 + 408);
    v12 = *(a2 + 420);
    *(a1 + 428) = *(a2 + 428);
    *(a1 + 420) = v12;
    BlueFin::GlSetBase::operator=(a1 + 432, a2 + 432);
    v13 = *(a2 + 444);
    *(a1 + 452) = *(a2 + 452);
    *(a1 + 444) = v13;
    *(a1 + 456) = *(a2 + 456);
    *(a1 + 464) = *(a2 + 464);
    v14 = *(a2 + 480);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 480) = v14;
    memcpy((a1 + 500), (a2 + 500), 0x158uLL);
    memcpy((a1 + 844), (a2 + 844), 0x13CuLL);
    memcpy((a1 + 1160), (a2 + 1160), 0x13CuLL);
    memcpy((a1 + 1476), (a2 + 1476), 0x13CuLL);
    memcpy((a1 + 1792), (a2 + 1792), 0x108uLL);
    v15 = *(a2 + 2056);
    *(a1 + 2064) = *(a2 + 2064);
    *(a1 + 2056) = v15;
    *(a1 + 2068) = *(a2 + 2068);
    *(a1 + 2072) = *(a2 + 2072);
    *(a1 + 2080) = *(a2 + 2080);
    *(a1 + 3144) = *(a2 + 3144);
    for (i = 56; i != 1080; i += 64)
    {
      v17 = *(a2 + 3136);
      v18 = *(a1 + 3136);
      if (v18 != v17)
      {
        v19 = (v17 + i);
        v20 = (v18 + i);
        v21 = *(v19 - 14);
        v22 = *(v19 - 10);
        *(v20 - 3) = *(v19 - 3);
        *(v20 - 10) = v22;
        *(v20 - 14) = v21;
        *(v20 - 2) = *(v19 - 2);
        *(v20 - 2) = *(v19 - 2);
        *(v20 - 4) = *(v19 - 4);
        *v20 = *v19;
      }
    }

    v23 = 0;
    v24 = *(a2 + 3168);
    *(a1 + 3184) = *(a2 + 3184);
    *(a1 + 3168) = v24;
    v25 = *(a2 + 3192);
    v26 = *(a2 + 3208);
    *(a1 + 3224) = *(a2 + 3224);
    *(a1 + 3192) = v25;
    *(a1 + 3208) = v26;
    v27 = *(a2 + 3232);
    *(a1 + 3248) = *(a2 + 3248);
    *(a1 + 3232) = v27;
    *(a1 + 3252) = *(a2 + 3252);
    v28 = *(a2 + 3336);
    v30 = *(a2 + 3288);
    v29 = *(a2 + 3304);
    *(a1 + 3320) = *(a2 + 3320);
    *(a1 + 3336) = v28;
    *(a1 + 3288) = v30;
    *(a1 + 3304) = v29;
    v32 = *(a2 + 3368);
    v31 = *(a2 + 3384);
    v33 = *(a2 + 3352);
    *(a1 + 3400) = *(a2 + 3400);
    *(a1 + 3368) = v32;
    *(a1 + 3384) = v31;
    *(a1 + 3352) = v33;
    *(a1 + 3272) = *(a2 + 3272);
    *(a1 + 3408) = *(a2 + 3408);
    v34 = *(a2 + 3424);
    *(a1 + 3440) = *(a2 + 3440);
    *(a1 + 3424) = v34;
    v35 = *(a2 + 3512);
    v37 = *(a2 + 3464);
    v36 = *(a2 + 3480);
    *(a1 + 3496) = *(a2 + 3496);
    *(a1 + 3512) = v35;
    *(a1 + 3464) = v37;
    *(a1 + 3480) = v36;
    v39 = *(a2 + 3544);
    v38 = *(a2 + 3560);
    v40 = *(a2 + 3528);
    *(a1 + 3576) = *(a2 + 3576);
    *(a1 + 3544) = v39;
    *(a1 + 3560) = v38;
    *(a1 + 3528) = v40;
    *(a1 + 3448) = *(a2 + 3448);
    *(a1 + 3580) = *(a2 + 3580);
    *(a1 + 3596) = *(a2 + 3596);
    *(a1 + 3600) = *(a2 + 3600);
    *(a1 + 3608) = *(a2 + 3608);
    *(a1 + 3768) = *(a2 + 3768);
    *(a1 + 3624) = *(a2 + 3624);
    *(a1 + 3632) = *(a2 + 3632);
    v41 = *(a2 + 3648);
    v42 = *(a2 + 3664);
    v43 = *(a2 + 3680);
    *(a1 + 3696) = *(a2 + 3696);
    *(a1 + 3680) = v43;
    *(a1 + 3664) = v42;
    *(a1 + 3648) = v41;
    v44 = *(a2 + 3712);
    v45 = *(a2 + 3728);
    v46 = *(a2 + 3744);
    *(a1 + 3760) = *(a2 + 3760);
    *(a1 + 3744) = v46;
    *(a1 + 3728) = v45;
    *(a1 + 3712) = v44;
    do
    {
      *(a1 + 3776 + v23) = *(a2 + 3776 + v23);
      v23 += 8;
    }

    while (v23 != 576);
    *(a1 + 4352) = *(a2 + 4352);
  }

  return a1;
}

uint64_t BlueFin::GlPePendingBag::TerminateRequest(uint64_t this, BlueFin::GlRequestImpl *a2)
{
  v2 = *(this + 3768);
  if (v2 > 0x47)
  {
    v11 = "m_sReqNum < _DIM(m_aptReqList)";
    DeviceFaultNotify("glpe_pendingbag.cpp", 307, "TerminateRequest", "m_sReqNum < _DIM(m_aptReqList)");
    v12 = 307;
LABEL_16:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_pendingbag.cpp", v12, v11);
  }

  if (!*(this + 3768))
  {
    return this;
  }

  v4 = this;
  v5 = 0;
  for (i = (this + 3784); ; ++i)
  {
    v7 = *(i - 1);
    if (!v7)
    {
      v11 = "pTempReq != nullptr";
      DeviceFaultNotify("glpe_pendingbag.cpp", 312, "TerminateRequest", "pTempReq != nullptr");
      v12 = 312;
      goto LABEL_16;
    }

    if (v7 == a2)
    {
      break;
    }

    if (v2 == ++v5)
    {
      return this;
    }
  }

  v8 = *(a2 + 7);
  if (v8)
  {
    v8(a2);
  }

  this = BlueFin::GlRequestBase::Destroy(a2);
  v9 = *(v4 + 3768);
  if (*(v4 + 3768) > (v5 + 1))
  {
    v10 = ~v5 + v9;
    do
    {
      *(i - 1) = *i;
      ++i;
      --v10;
    }

    while (v10);
  }

  *(v4 + 3768) = v9 - 1;
  return this;
}

uint64_t BlueFin::GlPePendingBag::TerminateAll(uint64_t this)
{
  v1 = *(this + 3768);
  if (v1 > 0x47)
  {
    v7 = "m_sReqNum < _DIM(m_aptReqList)";
    DeviceFaultNotify("glpe_pendingbag.cpp", 330, "TerminateAll", "m_sReqNum < _DIM(m_aptReqList)");
    v8 = 330;
    goto LABEL_10;
  }

  if (*(this + 3768))
  {
    v2 = this;
    v3 = this + 3776;
    while (1)
    {
      v4 = v1 - 1;
      *(v2 + 3768) = v4;
      v5 = *(v3 + 8 * v4);
      *(v3 + 8 * v4) = 0;
      if (!v5)
      {
        break;
      }

      v6 = *(v5 + 56);
      if (v6)
      {
        v6(v5);
      }

      this = BlueFin::GlRequestBase::Destroy(v5);
      v1 = *(v2 + 3768);
      if (v1 <= 0)
      {
        return this;
      }
    }

    v7 = "pReq != nullptr";
    DeviceFaultNotify("glpe_pendingbag.cpp", 335, "TerminateAll", "pReq != nullptr");
    v8 = 335;
LABEL_10:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_pendingbag.cpp", v8, v7);
  }

  return this;
}

uint64_t *BlueFin::GlPePendingBag::GetNonInstantaneousRequests@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v2 = *(this + 1884);
  if (v2 >= 0x48)
  {
    DeviceFaultNotify("glpe_pendingbag.cpp", 387, "GetNonInstantaneousRequests", "m_sReqNum < _DIM(m_aptReqList)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_pendingbag.cpp", 387, "m_sReqNum < _DIM(m_aptReqList)");
  }

  v3 = 0;
  if (*(this + 1884))
  {
    v4 = this + 472;
    do
    {
      v5 = *v4;
      if (*v4)
      {
        v6 = *(v5 + 16);
        if (v6 != 1 || *(v5 + 22))
        {
          v3 |= 1 << v6;
        }
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  *a1 = v3;
  return this;
}

uint64_t BlueFin::GlPePendingBag::GetFactTestItem(BlueFin::GlPePendingBag *this)
{
  v1 = *(this + 1884);
  if (v1 > 0x47)
  {
    v6 = "m_sReqNum < _DIM(m_aptReqList)";
    DeviceFaultNotify("glpe_pendingbag.cpp", 432, "GetFactTestItem", "m_sReqNum < _DIM(m_aptReqList)");
    v7 = 432;
LABEL_12:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_pendingbag.cpp", v7, v6);
  }

  if (!*(this + 1884))
  {
    return 8;
  }

  for (i = (this + 3776); ; ++i)
  {
    v3 = *i;
    if (!*i)
    {
      v6 = "pReq != nullptr";
      DeviceFaultNotify("glpe_pendingbag.cpp", 437, "GetFactTestItem", "pReq != nullptr");
      v7 = 437;
      goto LABEL_12;
    }

    if (v3[4] == 8)
    {
      break;
    }

    if (!--v1)
    {
      return 8;
    }
  }

  v5 = *(*v3 + 360);

  return v5();
}

BOOL BlueFin::GlPePendingBag::HasNILRReq(BlueFin::GlPePendingBag *this)
{
  v1 = *(this + 1884);
  if (v1 > 0x47)
  {
    DeviceFaultNotify("glpe_pendingbag.cpp", 554, "HasNILRReq", "m_sReqNum < _DIM(m_aptReqList)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_pendingbag.cpp", 554, "m_sReqNum < _DIM(m_aptReqList)");
  }

  if (*(this + 1884))
  {
    v2 = this + 3776;
    v3 = 1;
    v4 = *(this + 1884);
    v5 = 1;
    do
    {
      if (*v2 && (*(*v2 + 16) - 1) < 2)
      {
        break;
      }

      v5 = v3++ < v1;
      v2 += 8;
      --v4;
    }

    while (v4);
  }

  else
  {
    return 0;
  }

  return v5;
}

BOOL BlueFin::GlPePendingBag::HasPosReq(BlueFin::GlPePendingBag *this)
{
  v1 = *(this + 1884);
  if (v1 > 0x47)
  {
    DeviceFaultNotify("glpe_pendingbag.cpp", 575, "HasPosReq", "m_sReqNum < _DIM(m_aptReqList)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_pendingbag.cpp", 575, "m_sReqNum < _DIM(m_aptReqList)");
  }

  if (*(this + 1884))
  {
    v2 = this + 3776;
    v3 = 1;
    v4 = *(this + 1884);
    v5 = 1;
    do
    {
      if (*v2 && !*(*v2 + 16))
      {
        break;
      }

      v5 = v3++ < v1;
      v2 += 8;
      --v4;
    }

    while (v4);
  }

  else
  {
    return 0;
  }

  return v5;
}

BOOL BlueFin::GlPeAsstPosReqDataFifo::Get(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1032);
  if (*(a1 + 1032))
  {
    v3 = *(a1 + 1024);
    if (v3 != a2)
    {
      v4 = *v3;
      v5 = v3[1];
      *(a2 + 32) = *(v3 + 4);
      *a2 = v4;
      *(a2 + 16) = v5;
      *(a2 + 40) = *(v3 + 5);
      *(a2 + 48) = *(v3 + 12);
      *(a2 + 52) = *(v3 + 52);
      *(a2 + 56) = *(v3 + 14);
    }

    v6 = *(a1 + 1032) - 1;
    *(a1 + 1032) = v6;
    if (v6)
    {
      memmove(*(a1 + 1024), (*(a1 + 1024) + 64), v6 << 6);
    }
  }

  return v2 != 0;
}

uint64_t (*(*BlueFin::GlPePwrStateMgr::Wait4Me(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlPePwrStateMgr *a1, unsigned __int8 *a2))()
{
  v2 = *a2;
  if ((v2 - 2) < 2)
  {
    return 0;
  }

  if (v2 != 47)
  {
    return BlueFin::GlPePwrStateMgr::PowerSaveMode;
  }

  if (BlueFin::GlPePwrStateMgr::LpExit(a1))
  {
    v5 = "&GlPePwrStateMgr::Wait4Exit";
    v6 = BlueFin::GlPePwrStateMgr::Wait4Exit;
LABEL_9:
    BlueFin::QHsm::tran(a1, v6, v5);
    return 0;
  }

  if (*(a1 + 210) == 1)
  {
    v5 = "&GlPePwrStateMgr::SteadyPowerSave";
    v6 = BlueFin::GlPePwrStateMgr::SteadyPowerSave;
    goto LABEL_9;
  }

  return 0;
}

uint64_t (*BlueFin::GlPePwrStateMgr::PowerSaveMode(BlueFin::GlPePwrStateMgr *a1, unsigned __int8 *a2))()
{
  v2 = *a2;
  switch(v2)
  {
    case 48:
      v3 = 0;
      *(a1 + 208) = a2[1] != 0;
      break;
    case 3:
      return 0;
    case 2:
      *(a1 + 211) = 1;
      BlueFin::GlPePwrStateMgr::ComputeLowPowerState(a1);
      return 0;
    default:
      return BlueFin::QHsm::top;
  }

  return v3;
}

uint64_t BlueFin::GlPePwrStateMgr::LpExit(BlueFin::GlPePwrStateMgr *this)
{
  if (*(this + 208))
  {
    *(this + 248) = 0;
    v8 = 0;
    memset(v6, 0, 13);
    v6[2] = 0.0;
    v7[0] = 0;
    *(v7 + 6) = 0;
    BlueFin::GlPeKF::GetDataForLowPowerDecision(*(this + 19), v6);
    *(this + 248) = BlueFin::GlPePwrStateMgr::LowPowerAllowed(this, 0, *(this + 209), *(this + 210), *(this + 211), v6);
    v2 = BlueFin::GlPePwrStateMgr::ComputeLowPowerState(this);
    v3 = v2;
    v4 = v2 ^ 1u;
    BlueFin::GlPePwrStateMgr::Print(this, "Exit", v4);
    if ((v3 & 1) == 0)
    {
      *(*(this + 15) + 54844) = 0;
    }
  }

  else
  {
    GlCustomLog(15, "PMM::pe +LpExit disabled must exit\n");
    return 1;
  }

  return v4;
}

uint64_t (*(*BlueFin::GlPePwrStateMgr::Wait4Exit(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlPePwrStateMgr *a1, unsigned __int8 *a2))()
{
  v2 = *a2;
  if ((v2 - 2) < 2)
  {
    return 0;
  }

  if (v2 != 47)
  {
    return BlueFin::GlPePwrStateMgr::PowerSaveMode;
  }

  if (BlueFin::GlPePwrStateMgr::LpExit(a1))
  {
    v5 = "&GlPePwrStateMgr::SteadyNormalMode";
    v6 = BlueFin::GlPePwrStateMgr::SteadyNormalMode;
LABEL_9:
    BlueFin::QHsm::tran(a1, v6, v5);
    return 0;
  }

  if ((*(a1 + 210) & 1) == 0)
  {
    v5 = "&GlPePwrStateMgr::Wait4Me";
    v6 = BlueFin::GlPePwrStateMgr::Wait4Me;
    goto LABEL_9;
  }

  return 0;
}

uint64_t (*(*BlueFin::GlPePwrStateMgr::SteadyPowerSave(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlPePwrStateMgr *a1, unsigned __int8 *a2))()
{
  v2 = *a2;
  if ((v2 - 2) < 2)
  {
    return 0;
  }

  if (v2 != 47)
  {
    return BlueFin::GlPePwrStateMgr::PowerSaveMode;
  }

  if (BlueFin::GlPePwrStateMgr::LpExit(a1))
  {
    v5 = "&GlPePwrStateMgr::Wait4Exit";
    v6 = BlueFin::GlPePwrStateMgr::Wait4Exit;
LABEL_9:
    BlueFin::QHsm::tran(a1, v6, v5);
    return 0;
  }

  if ((*(a1 + 210) & 1) == 0)
  {
    v5 = "&GlPePwrStateMgr::Wait4Me";
    v6 = BlueFin::GlPePwrStateMgr::Wait4Me;
    goto LABEL_9;
  }

  return 0;
}

uint64_t BlueFin::GlPePwrStateMgr::LowPowerAllowed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6)
{
  v7 = *(a1 + 280);
  if (v7)
  {
    LOBYTE(v8) = v7(a6, a2, a3, a4, a5);
    if (*(a6 + 11))
    {
      v9 = 84;
    }

    else
    {
      v9 = 70;
    }

    if (*(a6 + 9))
    {
      v10 = 84;
    }

    else
    {
      v10 = 70;
    }

    if (*(a6 + 7))
    {
      v11 = 84;
    }

    else
    {
      v11 = 70;
    }

    GlCustomLog(15, "GlPePwrStateMgr::LowPowerAllowed: EnoughGoodPMMSvCnt:%c  GoodForNav:%c  SpeedValid:%c\n", v11, v10, v9);
    GlCustomLog(15, "GlPePwrStateMgr::LowPowerAllowed: User LowPowerAllowed function returned:%c\n");
    return v8 & 1;
  }

  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = a2;
  *(a1 + 210) = a4;
  *(a1 + 211) = a5;
  v17 = *(a6 + 11);
  v18 = a6[3];
  v19 = *(a6 + 10);
  v20 = *(a6 + 10);
  if (v17 != 1 || v18 >= 1.0 || v19 < -1.0)
  {
    if (*(a6 + 10))
    {
      v27 = (*(a6 + 8) - *(a1 + 264)) * 0.001;
      v28 = 0.0;
      if (v27 > 0.0)
      {
        v23 = vabdd_f64(a6[2], *(a1 + 260));
        if (v23 > 180.0)
        {
          v23 = 360.0 - v23;
        }

        if (v27 < 0.5)
        {
          v27 = 0.5;
        }

        v28 = v23 / v27;
      }

      v24 = 2.0;
      if (*(a6 + 2))
      {
        v24 = 5.0;
      }

      if (v18 <= 19.0)
      {
        v24 = 5.0;
      }

      v25 = v28 > v24;
    }

    else
    {
      v25 = 0;
      v27 = 0.0;
      v28 = 0.0;
    }

    v30 = v18 < 10.0 && v19 < -1.0;
    v26 = (v25 | v30 & v17) ^ 1;
  }

  else
  {
    v26 = 1;
    v27 = 0.0;
    v28 = 0.0;
  }

  v31 = a6[2];
  v32 = v31;
  *(a1 + 260) = v32;
  *(a1 + 264) = *(a6 + 8);
  v33 = v32;
  v34 = v19;
  if (*(a6 + 12))
  {
    v35 = 84;
  }

  else
  {
    v35 = 70;
  }

  v65 = v35;
  if (a5)
  {
    v36 = 84;
  }

  else
  {
    v36 = 70;
  }

  if (a4)
  {
    v37 = 84;
  }

  else
  {
    v37 = 70;
  }

  v64 = v36;
  if (a2)
  {
    v38 = 84;
  }

  else
  {
    v38 = 70;
  }

  if (v20)
  {
    v39 = 84;
  }

  else
  {
    v39 = 70;
  }

  GlCustomLog(14, "PMM::KF td:%.3f,TRK:%.1f,%.1f,headRate:%.1f,dAcc:%.1f,speed:%.1f,speedVal:%c,bReportMore:%c,bMeInPMM:%c,bPeInPMM:%c, bIsStatic:%c\n", v27, v33, v31, v28, v34, v18, v39, v38, v37, v64, v65);
  v40 = *a6;
  v41 = *(a6 + 5);
  v42 = v40 ^ 1;
  if (v41 == 1)
  {
    v42 = v42 & (a6[3] > 5.0);
  }

  v43 = 0;
  v44 = v40 & (*(a6 + 12) ^ 1) & (v14 ^ 1);
  v45 = *(a6 + 1);
  if ((v42 & v14) != 0)
  {
    v46 = *(a6 + 1);
  }

  else
  {
    v46 = v42;
  }

  v47 = *(a6 + 36) / (*(a6 + 37) * 0.01);
  v48 = *(a6 + 4);
  if ((v44 & 1) == 0 && (*(a6 + 4) & 1) == 0 && v47 > 50.0)
  {
    if (*(a6 + 9) != 1 || *(a6 + 8) != 1)
    {
      v43 = 0;
      if (v46)
      {
        goto LABEL_67;
      }

LABEL_69:
      v49 = (*(a6 + 6) ^ 1) & v43 & v26;
      goto LABEL_70;
    }

    v43 = *(a6 + 3);
  }

  if ((v46 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_67:
  v49 = 0;
LABEL_70:
  *(a1 + 276) = 0;
  if (*(a1 + 273) == 1 && v12 && v13 && (v41 & 1) != 0)
  {
    *(a1 + 272) = 1;
    if (v49)
    {
      goto LABEL_89;
    }
  }

  else if ((*(a1 + 272) ^ 1 | v49))
  {
    goto LABEL_89;
  }

  if ((v43 ^ 1))
  {
    goto LABEL_89;
  }

  if ((((v13 ^ 1) & v12 | v15) & v26 & v46 & 1) == 0)
  {
    if ((((v28 > 4.0) | v26) & ~v46 & 1) == 0 && v13 && v12)
    {
      v51 = *(a6 + 8);
      v52 = *(a1 + 268);
      if (v52 && (v51 - v52) >= 0x3E9)
      {
        *(a1 + 274) = 0;
        *(a1 + 268) = v51;
      }

      else
      {
        v63 = ++*(a1 + 274);
        *(a1 + 268) = v51;
        if (v63 >= 4)
        {
          LOBYTE(v8) = 0;
          *(a1 + 274) = 0;
          v53 = "CITY";
          *(a1 + 268) = 0;
          if ((v45 & 1) == 0)
          {
            v53 = "DRIVE";
          }

          v54 = 45;
          v50 = "!ped // ";
          goto LABEL_96;
        }
      }

      v50 = "PED // ";
      LOBYTE(v8) = 1;
      goto LABEL_90;
    }

LABEL_89:
    *(a1 + 274) = 0;
    *(a1 + 268) = 0;
    v50 = "";
    LOBYTE(v8) = v49;
    if (v49)
    {
      goto LABEL_90;
    }

    goto LABEL_91;
  }

  v8 = *(a6 + 7);
  *(a1 + 274) = 0;
  *(a1 + 268) = 0;
  v50 = "";
  if (v8)
  {
    v50 = "DRIVE // ";
  }

  if (v8)
  {
LABEL_90:
    if (!v15)
    {
      return v8 & 1;
    }
  }

LABEL_91:
  v53 = "DRIVE";
  if (v45)
  {
    v53 = "CITY";
  }

  if (v8)
  {
    v54 = 43;
  }

  else
  {
    v54 = 45;
  }

LABEL_96:
  if (v44)
  {
    v55 = "WALK";
  }

  else
  {
    v55 = "!walk";
  }

  v56 = "!drive";
  if (v46)
  {
    v56 = v53;
  }

  if (*(a6 + 6))
  {
    v57 = "DGNSS";
  }

  else
  {
    v57 = "!dgnss";
  }

  if (v48)
  {
    v58 = "TUNNEL";
  }

  else
  {
    v58 = "!tunnel";
  }

  v59 = "!sigdeg";
  if (v47 <= 50.0)
  {
    v59 = "SIGDEG";
  }

  v60 = "!nav";
  if (*(a6 + 9))
  {
    v60 = "NAV";
  }

  if (*(a6 + 8))
  {
    v61 = "POLAROID";
  }

  else
  {
    v61 = "!polaroid";
  }

  GlCustomLog(14, "PMM::pe %cLowPowerAllowed = %s(!%s !%s !%s !%s !%s %s %s %s %s)=%s%s%s BasicOk %d\n", v54, v50, v55, v56, v57, v58, v59, v60, v61);
  return v8 & 1;
}

uint64_t BlueFin::GlPePwrStateMgr::Print(uint64_t this, const char *a2, int a3)
{
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    v5 = this;
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xE);
    if (this)
    {
      if (*(v5 + 257))
      {
        v6 = 43;
      }

      else
      {
        v6 = 45;
      }

      if (*(v5 + 248))
      {
        v7 = 43;
      }

      else
      {
        v7 = 45;
      }

      v13 = v7;
      if (a3)
      {
        v8 = 43;
      }

      else
      {
        v8 = 45;
      }

      GlCustomLog(14, "PMM::pe %cLp%s %cKF %cFIX %u/%u", v8, a2, v13, v6, *(v5 + 240), *(v5 + 244));
      if (*(v5 + 208) == 1)
      {
        if (*(v5 + 210))
        {
          LODWORD(v9) = 43;
        }

        else
        {
          LODWORD(v9) = 45;
        }

        if (*(v5 + 210))
        {
          v10 = 43;
        }

        else
        {
          v10 = 45;
        }

        if ((**(v5 + 216) & 2) != 0)
        {
          v9 = v9;
        }

        else
        {
          v9 = 45;
        }

        if (*(*(v5 + 120) + 54557))
        {
          v11 = "eph";
        }

        else
        {
          v11 = "alm";
        }

        if (*(v5 + 258))
        {
          v12 = 43;
        }

        else
        {
          v12 = 45;
        }

        GlCustomLog(14, "  %cPMM{%cME %c%s}", v9, v10, v12, v11);
      }

      return GlCustomLog(14, "\n");
    }
  }

  return this;
}

uint64_t BlueFin::GlPeReqBag::TerminateAll(BlueFin::GlPeReqBag *this)
{
  v2 = 0;
  v4 = this + 3233;
  v5 = *(this + 3233);
  *(this + 3233) = 0;
  do
  {
    result = *(this + v2);
    if (result)
    {
      result = (*(*result + 280))(result);
    }

    v2 += 8;
  }

  while (v2 != 576);
  *v4 = v5;
  return result;
}

void BlueFin::GlPeReqBagCleanUpProtector::~GlPeReqBagCleanUpProtector(BlueFin::GlPeReqBagCleanUpProtector *this)
{
  *this = &unk_2A1F13AA0;
  **(this + 1) = *(this + 16);
}

{
  *this = &unk_2A1F13AA0;
  **(this + 1) = *(this + 16);
  JUMPOUT(0x29C292F70);
}

uint64_t BlueFin::GlPeReqBag::TerminateRequest(uint64_t this, BlueFin::GlRequestImpl *a2)
{
  v2 = this;
  v3 = 0;
  v4 = (this + 3233);
  v8 = (this + 3233);
  v5 = *(this + 3233);
  v9 = v5;
  *(this + 3233) = 0;
  while (1)
  {
    v6 = *(this + v3);
    if (v6)
    {
      if (*(v6 + 8) == a2)
      {
        break;
      }
    }

    v3 += 8;
    if (v3 == 576)
    {
      goto LABEL_7;
    }
  }

  v7 = BlueFin::GlRequestImpl::GlRequestTypeToString(a2);
  GlCustomLog(14, "GlPeReqBag: terminate request %s\n", v7);
  this = (*(**(v2 + v3) + 280))(*(v2 + v3));
  v5 = v9;
  v4 = v8;
LABEL_7:
  *v4 = v5;
  return this;
}

uint64_t BlueFin::GlPeReqBag::HandleFactoryTestFailure(BlueFin::GlPeReqBag *this, const BlueFin::GlMePlatfStat *a2)
{
  result = GlCustomLog(14, "GlPeReqBag:%s \n", "HandleFactoryTestFailure");
  for (i = 0; i != 576; i += 8)
  {
    v6 = *(this + i);
    if (v6)
    {
      if (*(*(v6 + 8) + 16) == 8)
      {
        GlCustomLog(14, " GlPeReqBag::Calling HandleFailure\n");
        result = (*(**(this + i) + 176))(*(this + i), a2);
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlPeReqBag::GetAccuracymask(BlueFin::GlPeReqBag *this)
{
  v1 = this + 3233;
  v6 = this + 3233;
  v2 = *(this + 3233);
  v7 = v2;
  *(this + 3233) = 0;
  v3 = *(this + 329);
  if ((v3 & 0x80000000) != 0)
  {
    if (v3 == -1)
    {
      result = 0xFFFFFFFFLL;
    }

    else
    {
      result = *(this + 812);
    }
  }

  else
  {
    v4 = *(*(this + v3) + 8);
    result = (*(*v4 + 152))(v4);
    v2 = v7;
    v1 = v6;
  }

  *v1 = v2;
  return result;
}

uint64_t BlueFin::GlPeReqBag::GetFactTestSvIds(BlueFin::GlPeReqBag *this, void **a2)
{
  v33 = &unk_2A1F13AA0;
  v34 = this + 3233;
  v35 = *(this + 3233);
  *(this + 3233) = 0;
  bzero(*a2, ((4 * *(a2 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(this + v4);
    if (!v6)
    {
      goto LABEL_59;
    }

    v7 = *(v6 + 8);
    if (v7[4] != 8)
    {
      goto LABEL_59;
    }

    (*(*v7 + 240))(&v32);
    if (v32 != 255)
    {
      if (v32 - 189 < 0xFFFFFF44 || (v8 = BlueFin::GlSvId::s_aucSvId2gnss[v32], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v8] == 255))
      {
        v9 = 575;
      }

      else
      {
        v9 = (BlueFin::GlSignalId::s_ausGnss2signalId[v8] + v32 - BlueFin::GlSvId::s_aucGnss2minSvId[v8]);
      }

      v5 = 1;
      *(*a2 + (v9 >> 5)) |= 1 << v9;
    }

    (*(**(v6 + 8) + 248))(&v31);
    if (v31 != 255)
    {
      if (v31 - 189 < 0xFFFFFF44 || (v10 = BlueFin::GlSvId::s_aucSvId2gnss[v31], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v10] == 255))
      {
        v11 = 575;
      }

      else
      {
        v11 = (BlueFin::GlSignalId::s_ausGnss2signalId[v10] + v31 - BlueFin::GlSvId::s_aucGnss2minSvId[v10]);
      }

      v5 = 1;
      *(*a2 + (v11 >> 5)) |= 1 << v11;
    }

    (*(**(v6 + 8) + 272))(&v30);
    if (v30 != 255)
    {
      v12 = *(this + 72);
      if ((*(v12 + 48) - 3) >= 2)
      {
        if (*(v12 + 26294) == 1 && *(v12 + 88) >= 37)
        {
          v13 = (*(*(v12 + 26232) + 1) << 27 >> 31) & 3;
        }

        else
        {
          v13 = 0;
        }

        if (v30 - 189 < 0xFFFFFF44 || (v14 = BlueFin::GlSvId::s_aucSvId2gnss[v30], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v13 - v13 + v14] == 255))
        {
          v15 = 575;
        }

        else
        {
          v15 = (BlueFin::GlSignalId::s_ausGnss2signalId[v14] + v30 - BlueFin::GlSvId::s_aucGnss2minSvId[v14] + v13 * BlueFin::GlSvId::s_aucGnss2numSvId[v14]);
        }

        v5 = 1;
        *(*a2 + (v15 >> 5)) |= 1 << v15;
      }
    }

    (*(**(v6 + 8) + 280))(&v29);
    if (v29 != 255)
    {
      if (v29 - 189 < 0xFFFFFF44 || (v16 = BlueFin::GlSvId::s_aucSvId2gnss[v29], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v16] == 255))
      {
        v17 = 575;
      }

      else
      {
        v17 = (BlueFin::GlSignalId::s_ausGnss2signalId[v16] + v29 - BlueFin::GlSvId::s_aucGnss2minSvId[v16]);
      }

      v5 = 1;
      *(*a2 + (v17 >> 5)) |= 1 << v17;
    }

    (*(**(v6 + 8) + 288))(&v28);
    if (v28 != 255)
    {
      if (!v28)
      {
        goto LABEL_61;
      }

      if (v28 >= 0x21u)
      {
        if (v28 < 0x8Bu)
        {
          if (v28 < 0x42u)
          {
LABEL_61:
            DeviceFaultNotify("glpe_reqbag.cpp", 1242, "GetFactTestSvIds", "0");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqbag.cpp", 1242, "0");
          }
        }

        else if (v28 >= 0xAFu)
        {
          if (v28 > 0xBCu)
          {
            goto LABEL_61;
          }

          v18 = BlueFin::GlSvId::s_aucSvId2gnss[v28];
          if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v18] != 255)
          {
            LOWORD(v19) = BlueFin::GlSignalId::s_ausGnss2signalId[v18] + v28 - BlueFin::GlSvId::s_aucGnss2minSvId[v18];
LABEL_44:
            v19 = v19;
LABEL_46:
            v5 = 1;
            *(*a2 + (v19 >> 5)) |= 1 << v19;
            goto LABEL_47;
          }

          goto LABEL_45;
        }
      }

      v20 = BlueFin::GlSvId::s_aucSvId2gnss[v28];
      if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v20 + 14] != 255)
      {
        LOWORD(v19) = BlueFin::GlSignalId::s_ausGnss2signalId[v20] + v28 - BlueFin::GlSvId::s_aucGnss2minSvId[v20] + 2 * BlueFin::GlSvId::s_aucGnss2numSvId[v20];
        goto LABEL_44;
      }

LABEL_45:
      v19 = 575;
      goto LABEL_46;
    }

LABEL_47:
    (*(**(v6 + 8) + 296))(&v27);
    if (v27 != 255)
    {
      if (v27 - 189 < 0xFFFFFF44 || (v21 = BlueFin::GlSvId::s_aucSvId2gnss[v27], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v21 + 7] == 255))
      {
        v22 = 575;
      }

      else
      {
        v22 = (BlueFin::GlSignalId::s_ausGnss2signalId[v21] + v27 + BlueFin::GlSvId::s_aucGnss2numSvId[v21] - BlueFin::GlSvId::s_aucGnss2minSvId[v21]);
      }

      v5 = 1;
      *(*a2 + (v22 >> 5)) |= 1 << v22;
    }

    (*(**(v6 + 8) + 312))(&v26);
    if (v26 != 255)
    {
      if (v26 - 189 < 0xFFFFFF44 || (v23 = BlueFin::GlSvId::s_aucSvId2gnss[v26], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v23] == 255))
      {
        v24 = 575;
      }

      else
      {
        v24 = (BlueFin::GlSignalId::s_ausGnss2signalId[v23] + v26 - BlueFin::GlSvId::s_aucGnss2minSvId[v23]);
      }

      v5 = 1;
      *(*a2 + (v24 >> 5)) |= 1 << v24;
    }

LABEL_59:
    v4 += 8;
  }

  while (v4 != 576);
  *v34 = v35;
  return v5 & 1;
}

uint64_t BlueFin::GlPeReqBag::GetFactTestItem(BlueFin::GlPeReqBag *this)
{
  v1 = 0;
  v2 = 0;
  v3 = this + 3233;
  v8 = this + 3233;
  v4 = *(this + 3233);
  v9 = v4;
  *(this + 3233) = 0;
  while (1)
  {
    v5 = *(this + v1);
    if (v5)
    {
      v6 = *(v5 + 8);
      if (v6[4] == 8)
      {
        break;
      }
    }

    v2 = v1++ > 0x46;
    if (v1 == 72)
    {
      result = 0xFFFFFFFFLL;
      goto LABEL_9;
    }
  }

  LODWORD(result) = (*(*v6 + 360))(v6);
  v4 = v9;
  v3 = v8;
  if (v2)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = result;
  }

LABEL_9:
  *v3 = v4;
  return result;
}

uint64_t BlueFin::GlPeReqBag::PopRequest(BlueFin::GlPeReqBag *this)
{
  v2 = 0;
  v14 = this + 3233;
  v15 = *(this + 3233);
  *(this + 3233) = 0;
  while (1)
  {
    v3 = *(this + v2);
    if (v3)
    {
      break;
    }

    if (++v2 == 72)
    {
      v4 = 0;
      goto LABEL_16;
    }
  }

  v4 = *(v3 + 8);
  v5 = *(v4 + 16);
  BlueFin::GlSetBase::Remove(this + 624, v2);
  if (v5 == 12)
  {
    v6 = BlueFin::GlUtils::m_pInstance;
    ++*(BlueFin::GlUtils::m_pInstance + 1088);
    v7 = (*(**v6 + 48))();
    *(this + 5172) = v7;
    v8 = *(this + v2);
    v6[273] = v7;
  }

  else
  {
    v8 = *(this + v2);
  }

  v9 = (*(**(this + 77) + 96))(*(this + 77));
  if (v9)
  {
    v9(v8);
  }

  v10 = 0;
  *(this + v2) = 0;
  v11 = *(this + 328);
  *(this + 328) = v11 & ~(1 << v5);
  while (1)
  {
    v12 = *(this + v10);
    if (v12)
    {
      if (*(*(v12 + 8) + 16) == v5)
      {
        break;
      }
    }

    v10 += 8;
    if (v10 == 576)
    {
      goto LABEL_16;
    }
  }

  *(this + 328) = v11 | (1 << v5);
LABEL_16:
  *v14 = v15;
  return v4;
}

void *BlueFin::GlPeReqBag::SetInterPolateFixStatus(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v2;
  v56 = *MEMORY[0x29EDCA608];
  v22 = &unk_2A1F13AA0;
  v23 = (v2 + 3233);
  v24 = *(v2 + 3233);
  *(v2 + 3233) = 0;
  bzero(v25, 0x1CF8uLL);
  v12 = 0;
  memset(v30, 248, sizeof(v30));
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v13 = v6[1];
  *v19 = *v6;
  *&v19[16] = v13;
  v14 = v6[3];
  v20 = v6[2];
  v21 = v14;
  do
  {
    result = *(v11 + v12);
    if (result)
    {
      if (*(result[1] + 16) == 13)
      {
        (*(*result + 24))(result, v10);
        result = (*(**(v11 + v12) + 248))(*(v11 + v12), v25, v10);
        if (v25[4048])
        {
          v16 = *(*(v11 + v12) + 8);
          if ((*(v16 + 172) & 8) != 0)
          {
            v19[4] = 1;
            *&v19[24] = v27;
            *&v19[8] = v26;
            result = BlueFin::GlPeReqBag::GetAvgOfTop4Cn0(v25);
            LOWORD(v20) = result;
            DWORD1(v20) = 0;
            if (v28)
            {
              v17 = v29 / 1.9438445;
              *(&v20 + 1) = v17;
            }

            *v19 = v8;
            v18 = *(v16 + 184);
            if (v18)
            {
              result = v18(v16, v19, 0);
            }
          }
        }
      }

      else if (v4)
      {
        result = (*(*result + 304))(result, 0);
      }
    }

    v12 += 8;
  }

  while (v12 != 576);
  *v23 = v24;
  return result;
}

uint64_t BlueFin::GlPeReqBag::ResetInterpolation(uint64_t this)
{
  v1 = this;
  for (i = 0; i != 576; i += 8)
  {
    v3 = *(v1 + i);
    if (v3)
    {
      (*(**(v3 + 8) + 464))(*(v3 + 8), 0);
      this = (*(**(*(v1 + i) + 8) + 488))();
    }
  }

  return this;
}

uint64_t BlueFin::GlPeReqBag::SetCntinMeas(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v11 = (a1 + 3233);
  v12 = *(a1 + 3233);
  *(a1 + 3233) = 0;
  if (a2 >= 5)
  {
    v8 = "UNKNOWN";
    if (a2 == 5)
    {
      v8 = "GL_CNTIN_USER_CANCEL";
    }
  }

  else
  {
    v8 = off_29EEB41A8[a2];
  }

  GlCustomLog(14, "CNTIN:SetCntinMeas(%s, %.1f, %.1f)[PPB]\n", v8, a3 * 1000000000.0, a4);
  for (i = 0; i != 576; i += 8)
  {
    result = *(a1 + i);
    if (result)
    {
      result = (*(*result + 48))(result, a2, a3, a4);
    }
  }

  *v11 = v12;
  return result;
}

uint64_t BlueFin::GlPeReqBag::CWResults(BlueFin::GlPeReqBag *this, uint64_t a2, uint64_t a3, double a4, double a5, double a6, uint64_t a7)
{
  v14 = 0;
  v16 = this + 3233;
  v17 = *(this + 3233);
  *(this + 3233) = 0;
  do
  {
    result = *(this + v14);
    if (result)
    {
      result = (*(*result + 56))(result, a2, a3, a7, a4, a5, a6);
    }

    v14 += 8;
  }

  while (v14 != 576);
  *v16 = v17;
  return result;
}

uint64_t BlueFin::GlPeReqBag::GetFactoryTestStatus(uint64_t result)
{
  v1 = 0;
  while (1)
  {
    v2 = *(result + v1);
    if (v2)
    {
      if (*(v2[1] + 16) == 8)
      {
        break;
      }
    }

    v1 += 8;
    if (v1 == 576)
    {
      return result;
    }
  }

  return (*(*v2 + 64))(*(result + v1));
}

uint64_t BlueFin::GlPeReqBag::SpaResults(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v6 = (a1 + 3233);
  v7 = *(a1 + 3233);
  *(a1 + 3233) = 0;
  do
  {
    result = *(a1 + v4);
    if (result)
    {
      result = (*(*result + 80))(result, a2);
    }

    v4 += 8;
  }

  while (v4 != 576);
  *v6 = v7;
  return result;
}

uint64_t BlueFin::GlPeReqBag::InitializeCWTest(uint64_t a1, char *a2, char *a3, char *a4, char *a5, char *a6, char *a7, char *a8, char *a9)
{
  v17 = 0;
  v27 = &unk_2A1F13AA0;
  v28 = (a1 + 3233);
  v29 = *(a1 + 3233);
  *(a1 + 3233) = 0;
  do
  {
    result = *(a1 + v17);
    if (result)
    {
      v26 = *a2;
      v25 = *a3;
      v24 = *a4;
      v23 = *a5;
      v22 = *a6;
      v21 = *a7;
      v20 = *a8;
      v19 = *a9;
      result = (*(*result + 88))(result, &v26, &v25, &v24, &v23, &v22, &v21, &v20, &v19);
    }

    v17 += 8;
  }

  while (v17 != 576);
  *v28 = v29;
  return result;
}

uint64_t BlueFin::GlPeReqBag::GetCWRequest(BlueFin::GlPeReqBag *this)
{
  v2 = 0;
  v6 = this + 3233;
  v7 = *(this + 3233);
  *(this + 3233) = 0;
  while (1)
  {
    v3 = *(this + v2);
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4[4] == 8 && !(*(*v4 + 360))(v4))
      {
        break;
      }
    }

    v2 += 8;
    if (v2 == 576)
    {
      result = 0;
      goto LABEL_8;
    }
  }

  result = *(*(this + v2) + 8);
LABEL_8:
  *v6 = v7;
  return result;
}

uint64_t BlueFin::GlPeReqBag::SetGalileoDataPage(BlueFin::GlPeReqBag *this, BlueFin::GlGalileoINavPage *a2)
{
  v4 = 0;
  v6 = this + 3233;
  v7 = *(this + 3233);
  *(this + 3233) = 0;
  do
  {
    result = *(this + v4);
    if (result)
    {
      result = (*(*result + 128))(result, a2);
    }

    v4 += 8;
  }

  while (v4 != 576);
  *v6 = v7;
  return result;
}

uint64_t BlueFin::GlPeReqBag::SetAsstStat(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v6 = (a1 + 3233);
  v7 = *(a1 + 3233);
  *(a1 + 3233) = 0;
  do
  {
    result = *(a1 + v4);
    if (result)
    {
      result = (*(*result + 136))(result, a2);
    }

    v4 += 8;
  }

  while (v4 != 576);
  *v6 = v7;
  return result;
}

BOOL BlueFin::GlPeReqBagData::Deserialize(BlueFin::GlPeReqBagData *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 12);
  if (v2 <= 3)
  {
    if (v2 < 2)
    {
      S8 = -2;
    }

    else
    {
      S8 = BlueFin::GlSysLogEntry::GetS8(a2);
    }

    *(this + 8) = S8;
    *(this + 5) = BlueFin::GlSysLogEntry::GetS16(a2);
    v6 = *(a2 + 12);
    U32 = BlueFin::GlSysLogEntry::GetU32(a2);
    v8 = U32;
    if (v6 < 2)
    {
      v9 = BlueFin::GlSysLogEntry::GetU32(a2);
      v10 = v8 - v9;
      if (v8 < v9)
      {
        v10 = 0;
      }

      *(this + 4) = v10;
      v11 = *(this + 5);
      if (v11 >= v10)
      {
        *(this + 3) = v11 - v10;
      }

      else
      {
        *(this + 3) = 0;
      }
    }

    else
    {
      *(this + 3) = U32;
      *(this + 4) = BlueFin::GlSysLogEntry::GetU32(a2);
    }

    if (*(a2 + 12) == 2)
    {
      S16 = BlueFin::GlSysLogEntry::GetS16(a2);
    }

    else
    {
      S16 = BlueFin::GlSysLogEntry::GetS32(a2);
    }

    *(this + 5) = S16;
    v13 = *(a2 + 12) != 1 && BlueFin::GlSysLogEntry::GetU8(a2) != 0;
    *(this + 24) = v13;
    if (*(a2 + 11) != *(a2 + 10))
    {
      DeviceFaultNotify("glpe_reqbag.cpp", 3440, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqbag.cpp", 3440, "otEntry.DataSize() == otEntry.ReadIdx()");
    }
  }

  return v2 < 4;
}

uint64_t BlueFin::GlPeReqBagData::SerializeImpl(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v15 = *MEMORY[0x29EDCA608];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 3;
  }

  if ((v5 & 0xFE) != 2)
  {
    DeviceFaultNotify("glpe_reqbag.cpp", 3504, "SerializeImpl", "ucVersion >= 2 && ucVersion <= 3");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqbag.cpp", 3504, "ucVersion >= 2 && ucVersion <= 3");
  }

  v6 = v3;
  v7 = v2;
  if (v3 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v11 = 46;
    v12 = v5;
    v13 = 0x1000000000000;
    v10 = &unk_2A1F092C0;
    v14 = v5;
    BlueFin::GlSysLogEntry::PutS8(&v10, *(v2 + 8));
    BlueFin::GlSysLogEntry::PutS16(&v10, *(v7 + 10));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(v7 + 12));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(v7 + 16));
    v8 = *(v7 + 20);
    if (v5 == 2)
    {
      BlueFin::GlSysLogEntry::PutS16(&v10, v8);
    }

    else
    {
      BlueFin::GlSysLogEntry::PutS32(&v10, v8);
    }

    BlueFin::GlSysLogEntry::PutU8(&v10, *(v7 + 24));
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v10, v6, 4);
  }

  return 1;
}

BlueFin::GlBitBuffer *BlueFin::GlPeReqBag::GetPreviousPositionBuffer(BlueFin::GlPeReqBag *this, unsigned int *a2, int a3, unsigned int *a4)
{
  v8 = *(this + 1290);
  v9 = *(this + 20656);
  v10 = *(this + 5165);
  v5 = *(this + 5167);
  v13 = *(this + 2584);
  v7[8] = 0;
  BlueFin::GlBitBuffer::Initialize(v7, a2, a3);
  v11 = v5;
  v12 = 0;
  v14 = 0;
  result = BlueFin::GlBitBuffer::Put(v7, &v8, v5);
  *a4 = v7[7];
  return result;
}

BlueFin::GlBitBuffer *BlueFin::GlPeReqBag::SetPreviousPositionBuffer(BlueFin::GlPeReqBag *this, const unsigned int *a2, int a3, unsigned int a4)
{
  v6 = this + 20480;
  v11 = 0;
  BlueFin::GlBitBuffer::InitializeForRead(v9, a2, a3);
  *(v6 + 49) = 0;
  *(v6 + 23) = *(v6 + 45);
  v6[200] = 0;
  BlueFin::GlBitBuffer::Position(v9, a4);
  v7 = v10;
  v9[6] = v10;
  v10 = 0;
  v12 = 0;
  return BlueFin::GlBitBuffer::Put((this + 20640), v9, v7);
}

BOOL BlueFin::GlPeReqBag::ReadPreviousPosition(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a1 + 20668);
  if (v4 / 0x12E > a2)
  {
    BlueFin::GlBitBuffer::Position(a1 + 20640, 302 * a2);
    *a3 = BlueFin::GlBitBuffer::GetU((a1 + 20640), 1u) != 0;
    *(a3 + 1) = BlueFin::GlBitBuffer::GetU((a1 + 20640), 1u) != 0;
    *(a3 + 2) = BlueFin::GlBitBuffer::GetU((a1 + 20640), 1u) != 0;
    *(a3 + 3) = BlueFin::GlBitBuffer::GetU((a1 + 20640), 1u) != 0;
    *(a3 + 8) = BlueFin::GlBitBuffer::GetU((a1 + 20640), 0x20u);
    *(a3 + 12) = BlueFin::GlBitBuffer::GetU((a1 + 20640), 0x10u);
    *(a3 + 16) = BlueFin::GlBitBuffer::GetU((a1 + 20640), 0x20u) * 0.0000000419095166;
    *(a3 + 24) = BlueFin::GlBitBuffer::GetU((a1 + 20640), 0x20u) * 0.0000000838190367;
    v7 = BlueFin::GlBitBuffer::GetU((a1 + 20640), 0x10u);
    if ((v7 & 0xFFFF8000) == 0x8000)
    {
      v8 = -65536;
    }

    else
    {
      v8 = 0;
    }

    *(a3 + 32) = (v8 + v7);
    *(a3 + 40) = BlueFin::GlBitBuffer::GetU((a1 + 20640), 0x10u) * 0.0158730159;
    v9 = BlueFin::GlBitBuffer::GetU((a1 + 20640), 0x10u);
    if ((v9 & 0xFFFF8000) == 0x8000)
    {
      v10 = -65536;
    }

    else
    {
      v10 = 0;
    }

    *(a3 + 48) = (v10 + v9) * 0.010989011;
    *(a3 + 5) = BlueFin::GlBitBuffer::GetU((a1 + 20640), 1u) != 0;
    *(a3 + 4) = BlueFin::GlBitBuffer::GetU((a1 + 20640), 1u) != 0;
    v11 = BlueFin::GlBitBuffer::GetU((a1 + 20640), 0x10u) * 0.01;
    *(a3 + 56) = v11;
    *(a3 + 60) = BlueFin::GlBitBuffer::GetU((a1 + 20640), 0x20u);
    *(a3 + 64) = BlueFin::GlBitBuffer::GetU((a1 + 20640), 0x20u) << 32;
    *(a3 + 64) |= BlueFin::GlBitBuffer::GetU((a1 + 20640), 0x20u);
    v12 = (BlueFin::GlBitBuffer::GetU((a1 + 20640), 0x18u) - 2000000) * 0.001;
    *(a3 + 72) = v12;
    BlueFin::GlBitBuffer::Position(a1 + 20640, v4);
  }

  return v4 / 0x12E > a2;
}

uint64_t BlueFin::GlPeRqHdlr::SetCurrentTimeOsMs(uint64_t this)
{
  v1 = *(this + 8);
  v2 = 1000 * *(v1 + 22);
  v3 = *(BlueFin::GlUtils::m_pInstance + 1092) - *(v1 + 28);
  v4 = 1000 * *(v1 + 36);
  if (v3 > v2)
  {
    *(this + 23) = 1;
  }

  if (v3 > v4)
  {
    *(this + 24) = 1;
  }

  return this;
}

uint64_t BlueFin::GlPeRqHdlr::FinalizeNmea(BlueFin::GlPeRqHdlr *this, uint64_t a2)
{
  result = MEMORY[0x2A1C7C4A8](this, a2);
  v48 = *MEMORY[0x29EDCA608];
  if ((*(result + 18) & 1) == 0)
  {
    v5 = v4;
    v6 = v3;
    v7 = result;
    memset(v47, 0, sizeof(v47));
    bzero(v21, 0x1CF8uLL);
    memset(&v21[7416], 248, 24);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
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
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    BlueFin::GlPeNmeaGen::FormatNmeaPFM(**(v7 + 56), (*(*(v7 + 56) + 88) + 31808), v47, 0x140);
    v8 = strlen(v47);
    if ((*(*v7 + 40))(v7, 0, v21, v47, v8))
    {
      GlCustomLog(20, "GL_NMEA[%d][%s", *(v7 + 48), v47);
    }

    v13 = *(v7 + 56);
    v14 = v13[11];
    v15 = *(v14 + 33048);
    if (v15)
    {
      BlueFin::GlPeNmeaGen::FormatNmeaPFA(*v13, *(v14 + 33048), 0, v47, 320);
      v16 = strlen(v47);
      if ((*(*v7 + 40))(v7, 0, v21, v47, v16))
      {
        GlCustomLog(20, "GL_NMEA[%d][%s", *(v7 + 48), v47);
      }

      BlueFin::GlPeNmeaGen::FormatNmeaPFA(**(v7 + 56), v15, 2, v47, 320);
      v17 = strlen(v47);
      if ((*(*v7 + 40))(v7, 0, v21, v47, v17))
      {
        GlCustomLog(20, "GL_NMEA[%d][%s", *(v7 + 48), v47);
      }

      BlueFin::GlPeNmeaGen::FormatNmeaPFA(**(v7 + 56), v15, 4, v47, 320);
      v18 = strlen(v47);
      if ((*(*v7 + 40))(v7, 0, v21, v47, v18))
      {
        GlCustomLog(20, "GL_NMEA[%d][%s", *(v7 + 48), v47);
      }

      BlueFin::GlPeNmeaGen::FormatNmeaPFA(**(v7 + 56), v15, 5, v47, 320);
      v19 = strlen(v47);
      if ((*(*v7 + 40))(v7, 0, v21, v47, v19))
      {
        GlCustomLog(20, "GL_NMEA[%d][%s", *(v7 + 48), v47);
      }
    }

    BlueFin::GlPeNmeaGen::FormatNmeaFIN(**(v7 + 56), *(v7 + 44), *(v7 + 48), v6, v5, v47, 320, v9, v10, v11, v12);
    v20 = strlen(v47);
    result = (*(*v7 + 40))(v7, 0, v21, v47, v20);
    if (result)
    {
      result = GlCustomLog(20, "GL_NMEA[%d][%s", *(v7 + 48), v47);
    }

    *(v7 + 18) = 1;
  }

  return result;
}

uint64_t BlueFin::GlPeRqHdlr::SetCntinMeas(uint64_t result)
{
  if ((*(result + 20) & 1) == 0)
  {
    return (*(**(result + 8) + 528))();
  }

  return result;
}

uint64_t BlueFin::GlPeRqHdlr::GetDynAccyMask_ToutForSmartphoneFF(uint64_t result, int *a2, unsigned int a3, _DWORD *a4, _WORD *a5)
{
  v9 = result;
  v10 = *a2;
  if (*a2 > 1)
  {
    if (v10 == 3)
    {
      v16 = 1000 * (*(**(result + 8) + 384))(*(result + 8), 6);
      v12 = **(v9 + 8);
      if (v16 > a3)
      {
        if (1000 * (*(v12 + 384))() <= a3)
        {
LABEL_19:
          *a4 = (*(**(v9 + 8) + 392))(*(v9 + 8), 2);
          v15 = *(**(v9 + 8) + 384);
          goto LABEL_20;
        }

LABEL_16:
        result = BlueFin::GlPeRqHdlr::GetReqSmartMaskAccyM_Startup(v9, a2);
        *a4 = result;
        return result;
      }

      goto LABEL_17;
    }

    if (v10 != 2)
    {
      return result;
    }
  }

  else if (v10)
  {
    if (v10 != 1)
    {
      return result;
    }

    v11 = 1000 * (*(**(result + 8) + 384))(*(result + 8), 4);
    v12 = **(v9 + 8);
    if (v11 > a3)
    {
      if (1000 * (*(v12 + 384))() <= a3)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v13 = 1000 * (*(**(result + 8) + 384))(*(result + 8), 2);
  v12 = **(v9 + 8);
  if (v13 <= a3 || (v14 = 1000 * (*(v12 + 384))(), v12 = **(v9 + 8), v14 <= a3))
  {
LABEL_17:
    *a4 = (*(v12 + 392))();
    v15 = *(**(v9 + 8) + 384);
    goto LABEL_20;
  }

  if (1000 * (*(v12 + 384))() > a3)
  {
    goto LABEL_16;
  }

  *a4 = (*(**(v9 + 8) + 392))(*(v9 + 8), 1);
  v15 = *(**(v9 + 8) + 384);
LABEL_20:
  result = v15();
  *a5 = result;
  return result;
}

uint64_t BlueFin::GlPeReqHdlrParams::SerializeImpl(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v5 = v3;
  v6 = v2;
  v18 = *MEMORY[0x29EDCA608];
  if (v4)
  {
    v7 = v4;
    if (v4 >= 5)
    {
      DeviceFaultNotify("glpe_reqhdlr.cpp", 379, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 4");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr.cpp", 379, "ucVersion >= 1 && ucVersion <= 4");
    }

    if (v3)
    {
LABEL_8:
      v14 = 57;
      v15 = v7;
      v16 = 0x1000000000000;
      v13 = &unk_2A1F092C0;
      v17 = v7;
      BlueFin::GlSysLogEntry::PutU32(&v13, *(v2 + 8));
      BlueFin::GlSysLogEntry::PutS16(&v13, *(v6 + 12));
      BlueFin::GlSysLogEntry::PutS32(&v13, *(v6 + 16));
      BlueFin::GlSysLogEntry::PutU32(&v13, *(v6 + 20));
      BlueFin::GlSysLogEntry::PutU32(&v13, *(v6 + 24));
      BlueFin::GlSysLogEntry::PutU32(&v13, *(v6 + 28));
      BlueFin::GlSysLogEntry::PutU16(&v13, *(v6 + 32));
      if (v7 == 2)
      {
        for (i = 0; i != 12; i += 4)
        {
          BlueFin::GlSysLogEntry::PutU32(&v13, *(v6 + 40 + i));
        }

        for (j = 0; j != 12; j += 2)
        {
          BlueFin::GlSysLogEntry::PutU16(&v13, *(v6 + 54 + j));
        }
      }

      else
      {
        if (v7 < 3)
        {
LABEL_21:
          BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v13, v5, 4);
          return 1;
        }

        for (k = 0; k != 16; k += 4)
        {
          BlueFin::GlSysLogEntry::PutU32(&v13, *(v6 + 36 + k));
        }

        for (m = 0; m != 14; m += 2)
        {
          BlueFin::GlSysLogEntry::PutU16(&v13, *(v6 + 52 + m));
        }
      }

      if (v7 >= 4)
      {
        BlueFin::GlSysLogEntry::PutU32(&v13, *(v6 + 68));
        BlueFin::GlSysLogEntry::PutU32(&v13, *(v6 + 72));
      }

      goto LABEL_21;
    }
  }

  else
  {
    v7 = 4;
    if (v3)
    {
      goto LABEL_8;
    }
  }

  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    goto LABEL_8;
  }

  return 1;
}

uint64_t BlueFin::GlPeReqHdlrParams::Deserialize(BlueFin::GlPeReqHdlrParams *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 57)
  {
    return 0;
  }

  if (*(a2 + 12) - 5 < 0xFFFFFFFC)
  {
    return 0;
  }

  *(this + 2) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 6) = BlueFin::GlSysLogEntry::GetS16(a2);
  *(this + 4) = BlueFin::GlSysLogEntry::GetS32(a2);
  *(this + 5) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 6) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 7) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 16) = BlueFin::GlSysLogEntry::GetU16(a2);
  v5 = *(a2 + 12);
  if (v5 == 2)
  {
    v7 = 0;
    *(this + 9) = 50;
    do
    {
      *(this + v7 + 40) = BlueFin::GlSysLogEntry::GetU32(a2);
      v7 += 4;
    }

    while (v7 != 12);
    v8 = 0;
    *(this + 26) = 90;
    do
    {
      *(this + v8 + 54) = BlueFin::GlSysLogEntry::GetU16(a2);
      v8 += 2;
    }

    while (v8 != 12);
    v5 = *(a2 + 12);
  }

  else if (v5 == 1)
  {
    v6 = 0;
    *(this + 36) = vmovl_s16(BlueFin::GlRequestImplPos::m_asSmartMaskAccyM_default);
    do
    {
      *(this + v6 + 52) = *(&BlueFin::GlRequestImplPos::m_asSmartMaskToutS_default + v6);
      v6 += 2;
    }

    while (v6 != 14);
LABEL_22:
    U32 = 0;
    *(this + 17) = 0;
    goto LABEL_23;
  }

  if (v5 < 3)
  {
    goto LABEL_22;
  }

  for (i = 0; i != 16; i += 4)
  {
    *(this + i + 36) = BlueFin::GlSysLogEntry::GetU32(a2);
  }

  for (j = 0; j != 14; j += 2)
  {
    *(this + j + 52) = BlueFin::GlSysLogEntry::GetU16(a2);
  }

  if (*(a2 + 12) < 4u)
  {
    goto LABEL_22;
  }

  *(this + 17) = BlueFin::GlSysLogEntry::GetU32(a2);
  U32 = BlueFin::GlSysLogEntry::GetU32(a2);
LABEL_23:
  *(this + 18) = U32;
  BlueFin::GlSysLogEntry::CheckConsumed(a2, 505);
  return 1;
}

uint64_t BlueFin::GlPeReqStopEvent::SerializeImpl(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v12 = *MEMORY[0x29EDCA608];
  if (v4 >= 2)
  {
    DeviceFaultNotify("glpe_reqhdlr.cpp", 524, "SerializeImpl", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr.cpp", 524, "ucVersion == 1");
  }

  v5 = v3;
  if (v3 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v8 = 61;
    v9 = 1;
    v10 = 0x1000000000000;
    v7 = &unk_2A1F092C0;
    v11 = 1;
    BlueFin::GlSysLogEntry::PutU16(&v7, *(v2 + 8));
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v7, v5, 4);
  }

  return 1;
}

uint64_t BlueFin::GlPeReqStopEvent::Deserialize(BlueFin::GlPeReqStopEvent *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 2) == 61 && *(a2 + 12) == 1;
  v3 = v2;
  if (v2)
  {
    *(this + 4) = BlueFin::GlSysLogEntry::GetU16(a2);
    BlueFin::GlSysLogEntry::CheckConsumed(a2, 548);
  }

  return v3;
}

uint64_t BlueFin::GlPeRqHdlrAsstStat::SetAsstStat(uint64_t result)
{
  if ((*(result + 20) & 1) == 0)
  {
    v1 = result;
    result = *(result + 8);
    v2 = *(result + 80);
    if (v2)
    {
      result = v2();
    }

    *(v1 + 19) = 1;
  }

  return result;
}

void BlueFin::GlPeRqHdlrAsstStat::~GlPeRqHdlrAsstStat(BlueFin::GlPeRqHdlrAsstStat *this)
{
  BlueFin::GlPeRqHdlr::~GlPeRqHdlr(this);

  JUMPOUT(0x29C292F70);
}

uint64_t BlueFin::GlPeRqHdlrCntin::SetCntinMeas(uint64_t result)
{
  if ((*(result + 20) & 1) == 0)
  {
    v1 = result;
    result = *(result + 8);
    if (*(result + 16) == 5)
    {
      result = (*(*result + 528))(result);
    }

    *(v1 + 19) = 1;
  }

  return result;
}

uint64_t BlueFin::GlPeRqHdlrCntin::Cleanup(uint64_t this)
{
  if (*(this + 23) == 1)
  {
    *(this + 19) = 1;
  }

  return BlueFin::GlPeRqHdlr::Cleanup(this);
}

void BlueFin::GlPeRqHdlrCntin::~GlPeRqHdlrCntin(BlueFin::GlPeRqHdlrCntin *this)
{
  BlueFin::GlPeRqHdlr::~GlPeRqHdlr(this);

  JUMPOUT(0x29C292F70);
}

uint64_t BlueFin::GlPeRqHdlrCollectEph::SetFixStatus(uint64_t result, uint64_t a2)
{
  if ((*(result + 20) & 1) == 0)
  {
    if (*(a2 + 4048))
    {
      *(result + 88) = 1;
    }
  }

  return result;
}

uint64_t BlueFin::GlPeRqHdlrCollectEph::SetSIGMeasuement(uint64_t this, const void **a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, float a23, unsigned __int8 a24, unsigned __int8 a25, unsigned __int16 a26, int a27, int a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, char a52, int a53, char a54, uint64_t a55, uint64_t a56, char a57, int a58, unsigned __int16 a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a66 = *MEMORY[0x29EDCA608];
  if ((*(this + 20) & 1) == 0)
  {
    v67 = this;
    BlueFin::GlSetBase::GlSetBase(&__src, &v99, 0x13u, a2 + 1);
    bzero(*(v67 + 64), ((4 * *(v67 + 72) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    a24 = v98;
    memcpy(&a28, __src, 4 * v98);
    a26 = 0;
    a25 = 0;
    a27 = a28;
    BlueFin::GlSetIterator::operator++(&a24);
    while (a25 != a24)
    {
      if (a26 >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v68 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * a26;
      v69 = *v68;
      LODWORD(v68) = v68[1];
      a57 = v69;
      a58 = v68;
      a59 = a26;
      MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(a2, &a57, 0, 0);
      if ((MeMeas[13] & 0x40) != 0 && *(MeMeas + 29) >= 30.0)
      {
        *(*(v67 + 64) + ((*MeMeas >> 3) & 0x1C)) |= 1 << *MeMeas;
      }

      BlueFin::GlSetIterator::operator++(&a24);
    }

    v71 = 0;
    a65 = &a57;
    do
    {
      v72 = a65 + v71;
      v73 = a65 + v71;
      *(v73 + 12) = 0;
      *v72 = v73 + 12;
      v72[8] = 2;
      v71 += 24;
    }

    while (v71 != 168);
    v96 = 66;
    this = BlueFin::GlGnssSetIterator::GlGnssSetIterator(&a24, (*(*(v67 + 56) + 24) + 120032));
    v74 = a51;
    for (i = a52; a51 != 6 || a52 != 14; i = a52)
    {
      a53 = v74;
      a54 = i;
      HIDWORD(v94) = v74;
      v95 = i;
      v77 = *(*(v67 + 56) + 24);
      v78 = *(v67 + 92);
      a23 = -90.0;
      v79 = BlueFin::GlPeAsstMgr::computeAzElCommon(v77, &v94 + 1, v78, 0, &v96, 0, &a23);
      if (a23 >= 0.0)
      {
        v80 = v79;
      }

      else
      {
        v80 = 0;
      }

      if (v80 == 1)
      {
        BlueFin::GlGnssSet::Add(&a57, &v94 + 1);
      }

      this = BlueFin::GlGnssSetIterator::operator++(&a24);
      v74 = a51;
    }

    if (*(v67 + 88))
    {
      v81 = 0;
      v82 = a65;
      v83 = 7;
      do
      {
        this = BlueFin::GlSetBase::Cnt(v82);
        v81 += this;
        v82 = (v82 + 24);
        --v83;
      }

      while (v83);
      if (v81 >= 6u)
      {
        *(v67 + 19) = 1;
      }
    }

    v84 = *(v67 + 36);
    if (v84 != -1)
    {
      v85 = *(*(v67 + 8) + 28);
      v86 = *(v67 + 32) + v84;
      v87 = v86 >= v85;
      v88 = v86 - v85;
      if (v87)
      {
        if (v88 >> 5 > 0x752)
        {
          goto LABEL_30;
        }

        if (v88 >> 4 < 0x271)
        {
          return this;
        }

        v89 = *(v67 + 64);
        if (*v89)
        {
          return this;
        }

        v90 = *(v67 + 72);
        if (v90 < 2)
        {
LABEL_30:
          *(v67 + 19) = 1;
          return this;
        }

        v91 = v90 - 1;
        v92 = v89 + 1;
        while (!*v92++)
        {
          if (!--v91)
          {
            goto LABEL_30;
          }
        }
      }
    }
  }

  return this;
}

void BlueFin::GlPeRqHdlrCollectEph::~GlPeRqHdlrCollectEph(BlueFin::GlPeRqHdlrCollectEph *this)
{
  BlueFin::GlPeRqHdlr::~GlPeRqHdlr(this);

  JUMPOUT(0x29C292F70);
}

uint64_t BlueFin::SPASerializer::SerializeImpl(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v5 = v3;
  v6 = v2;
  v18 = *MEMORY[0x29EDCA608];
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = 10;
  }

  v14 = 93;
  v15 = v7;
  v16 = 0x1000000000000;
  v13 = &unk_2A1F092C0;
  v17 = v7;
  if (!v3 && (!BlueFin::GlUtils::m_pInstance || *(BlueFin::GlUtils::m_pInstance + 1122) != 1))
  {
    return 0;
  }

  BlueFin::GlSysLogEntry::PutU16(&v13, *(v2 + 8));
  v8 = *(v6 + 8);
  if (v8)
  {
    BlueFin::GlSysLogEntry::PutU32(&v13, *(v6 + 12));
    BlueFin::GlSysLogEntry::PutU32(&v13, *(v6 + 16));
    BlueFin::GlSysLogEntry::PutU32(&v13, 500000);
    BlueFin::GlSysLogEntry::PutU32(&v13, *(v6 + 24));
    BlueFin::GlSysLogEntry::PutU32(&v13, *(v6 + 28));
    BlueFin::GlSysLogEntry::PutU32(&v13, *(v6 + 32));
    BlueFin::GlSysLogEntry::PutU8(&v13, *(v6 + 36));
    BlueFin::GlSysLogEntry::PutU32(&v13, *(v6 + 40));
    BlueFin::GlSysLogEntry::PutU8(&v13, *(v6 + 44));
    BlueFin::GlSysLogEntry::PutU8(&v13, *(v6 + 45));
    v8 = *(v6 + 8);
  }

  if ((v8 & 2) != 0)
  {
    BlueFin::GlSysLogEntry::PutU8(&v13, *(v6 + 56));
    BlueFin::GlSysLogEntry::PutU8(&v13, *(v6 + 57));
    BlueFin::GlSysLogEntry::PutU8(&v13, *(v6 + 58));
    BlueFin::GlSysLogEntry::PutU8(&v13, *(v6 + 59));
    BlueFin::GlSysLogEntry::PutU16(&v13, *(v6 + 60));
    BlueFin::GlSysLogEntry::PutD64(&v13, *(v6 + 240));
    v8 = *(v6 + 8);
  }

  if ((v8 & 0x80) != 0)
  {
    BlueFin::GlSysLogEntry::PutU8(&v13, *(v6 + 248));
    BlueFin::GlSysLogEntry::PutU8(&v13, *(v6 + 249));
    BlueFin::GlSysLogEntry::PutU8(&v13, *(v6 + 250));
    v8 = *(v6 + 8);
  }

  if ((v8 & 0x74) != 0)
  {
    BlueFin::GlSysLogEntry::PutU16(&v13, *(v6 + 64));
    BlueFin::GlSysLogEntry::PutBuffer(&v13, *(v6 + 48), *(v6 + 68));
    v8 = *(v6 + 8);
  }

  if ((v8 & 8) != 0)
  {
    BlueFin::GlSysLogEntry::PutU8(&v13, *(v6 + 232));
    if (*(v6 + 232))
    {
      v9 = (v6 + 152);
      v10 = 38;
      do
      {
        BlueFin::GlSysLogEntry::PutU32(&v13, *v9);
        BlueFin::GlSysLogEntry::PutU32(&v13, *(v9 - 20));
        v11 = v10 - 37;
        ++v10;
        ++v9;
      }

      while (v11 < *(v6 + 232));
    }
  }

  BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v13, v5, 4);
  return 1;
}

uint64_t BlueFin::SPASerializer::Deserialize(BlueFin::SPASerializer *this, BlueFin::GlSysLogEntry *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if (*(a2 + 2) != 93 || *(a2 + 12) > 0xAu)
  {
    return 0;
  }

  v5 = (this + 8);
  v11 = this + 8;
  v12 = 1;
  BlueFin::GlSysLogEntry::GetGlSet(a2, &v11);
  if (*(this + 8))
  {
    *(this + 3) = BlueFin::GlSysLogEntry::GetU32(a2);
    *(this + 4) = BlueFin::GlSysLogEntry::GetU32(a2);
    BlueFin::GlSysLogEntry::GetU32(a2);
    *(this + 6) = BlueFin::GlSysLogEntry::GetU32(a2);
    *(this + 7) = BlueFin::GlSysLogEntry::GetU32(a2);
    *(this + 8) = BlueFin::GlSysLogEntry::GetU32(a2);
    if (*(a2 + 12) >= 3u)
    {
      *(this + 9) = BlueFin::GlSysLogEntry::GetU8(a2);
    }
  }

  v6 = *v5;
  if ((*v5 & 2) != 0)
  {
    *(this + 30) = BlueFin::GlSysLogEntry::GetD64(a2);
    *(this + 15) = BlueFin::GlSysLogEntry::GetU32(a2);
    v6 = *(this + 2);
  }

  if ((v6 & 0x64) != 0)
  {
    *(this + 16) = BlueFin::GlSysLogEntry::GetU32(a2);
    *(this + 17) = BlueFin::GlSysLogEntry::GetBuffer(a2, &v11, 0x1F4u);
    v6 = *(this + 2);
  }

  if ((v6 & 8) != 0)
  {
    if (*(a2 + 12) == 1)
    {
      *(this + 232) = 1;
      *(this + 18) = BlueFin::GlSysLogEntry::GetU32(a2);
      *(this + 38) = BlueFin::GlSysLogEntry::GetU32(a2);
    }

    else
    {
      U8 = BlueFin::GlSysLogEntry::GetU8(a2);
      *(this + 232) = U8;
      if (U8)
      {
        v8 = (this + 152);
        v9 = 38;
        do
        {
          *v8 = BlueFin::GlSysLogEntry::GetU32(a2);
          *(v8 - 20) = BlueFin::GlSysLogEntry::GetU32(a2);
          v10 = v9 - 37;
          ++v9;
          ++v8;
        }

        while (v10 < *(this + 232));
      }
    }
  }

  BlueFin::GlSysLogEntry::CheckConsumed(a2, 337);
  return 1;
}

uint64_t BlueFin::GlPeRqHdlrFactTest::GlPeRqHdlrFactTest(uint64_t a1, _DWORD *a2, int a3, __int16 a4, uint64_t *a5, uint64_t a6)
{
  v10 = BlueFin::GlPeRqHdlr::GlPeRqHdlr(a1, a2, a3, a4, a5);
  *v10 = &unk_2A1F141A8;
  *(v10 + 88) = 0;
  v11 = (v10 + 88);
  *(v10 + 96) = 0;
  *(v10 + 102) = 0;
  *(v10 + 296) = 0;
  *(v10 + 64) = &unk_2A1F14178;
  *(v10 + 72) = 0;
  *(v10 + 77) = 0;
  *(v10 + 120) = 0;
  *(v10 + 128) = 0;
  *(v10 + 112) = 0;
  *(v10 + 304) = 0;
  *(v10 + 311) = 0;
  *(v10 + 320) = a6;
  *(v10 + 328) = a6 + 344;
  *(v10 + 336) = a6 + 688;
  *(v10 + 344) = a6 + 1032;
  *(v10 + 352) = a6 + 1376;
  *(v10 + 360) = a6 + 1720;
  *(v10 + 368) = a6 + 2064;
  *(v10 + 376) = a6 + 2408;
  *(v10 + 384) = a6 + 2752;
  *(v10 + 392) = a6 + 3096;
  *(v10 + 400) = a6 + 3440;
  *(v10 + 408) = a6 + 3784;
  *(v10 + 416) = a6 + 4128;
  *(v10 + 424) = a6 + 4472;
  *(v10 + 432) = a6 + 4816;
  *(v10 + 440) = a6 + 5160;
  *(v10 + 448) = a6 + 5504;
  *(v10 + 456) = a6 + 5848;
  *(v10 + 464) = a6 + 6192;
  *(v10 + 472) = a6 + 6536;
  *(v10 + 480) = a2;
  *(v10 + 488) = 0;
  *(v10 + 492) = 0;
  (*(**(v10 + 8) + 240))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(a6, v40, 0);
  v12 = *(a1 + 328);
  (*(**(a1 + 8) + 240))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v12, v40, 0);
  v13 = *(a1 + 336);
  (*(**(a1 + 8) + 248))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v13, v40, 1);
  v14 = *(a1 + 344);
  (*(**(a1 + 8) + 248))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v14, v40, 1);
  v15 = *(a1 + 352);
  (*(**(a1 + 8) + 272))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v15, v40, 2);
  v16 = *(a1 + 360);
  (*(**(a1 + 8) + 272))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v16, v40, 2);
  v17 = *(a1 + 368);
  (*(**(a1 + 8) + 280))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v17, v40, 0);
  v18 = *(a1 + 376);
  (*(**(a1 + 8) + 280))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v18, v40, 0);
  v19 = *(a1 + 384);
  (*(**(a1 + 8) + 288))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v19, v40, 3);
  v20 = *(a1 + 392);
  (*(**(a1 + 8) + 288))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v20, v40, 3);
  v21 = *(a1 + 400);
  (*(**(a1 + 8) + 296))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v21, v40, 4);
  v22 = *(a1 + 408);
  (*(**(a1 + 8) + 296))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v22, v40, 4);
  v23 = *(a1 + 416);
  (*(**(a1 + 8) + 256))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v23, v40, 7);
  v24 = *(a1 + 424);
  (*(**(a1 + 8) + 256))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v24, v40, 7);
  v25 = *(a1 + 432);
  (*(**(a1 + 8) + 264))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v25, v40, 8);
  v26 = *(a1 + 440);
  (*(**(a1 + 8) + 264))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v26, v40, 8);
  v27 = *(a1 + 448);
  (*(**(a1 + 8) + 304))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v27, v40, 5);
  v28 = *(a1 + 456);
  (*(**(a1 + 8) + 304))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v28, v40, 5);
  v29 = *(a1 + 464);
  (*(**(a1 + 8) + 312))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v29, v40, 9);
  v30 = *(a1 + 472);
  (*(**(a1 + 8) + 312))(v40);
  BlueFin::GL_FACT_TEST_STATUS_wrapper::init(v30, v40, 9);
  v47 = 0;
  v48 = 0;
  v49 = 0xFFFF0100000000;
  memset(v40, 0, sizeof(v40));
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0;
  (*(**(a1 + 480) + 456))();
  v31 = *(a5[7] + 88);
  if (v31 <= 0x28)
  {
    v32 = BlueFin::ulRfType2AsicNumber[v31];
  }

  else
  {
    v32 = 0;
  }

  v33 = DWORD2(v41);
  *(a1 + 76) = v40[0];
  *(a1 + 80) = v33;
  v34 = v47;
  if (v47)
  {
    v35 = 0xF4240 / v47;
  }

  else
  {
    v35 = 0;
  }

  *v11 = v35;
  v36 = v34 * v48;
  if (v36)
  {
    v37 = 0xF4240 / v36;
  }

  else
  {
    v37 = 0;
  }

  v38 = v49;
  *(a1 + 92) = v37;
  *(a1 + 96) = v38;
  *(a1 + 104) = v32;
  *(a1 + 72) |= 1u;
  *(a1 + 493) = (*(**(a1 + 8) + 344))();
  *(a1 + 494) = (*(**(a1 + 8) + 352))(*(a1 + 8));
  return a1;
}

uint64_t BlueFin::GlPeRqHdlrFactTest::SetCntinMeas(uint64_t result, int a2, double a3)
{
  v8[7] = *MEMORY[0x29EDCA608];
  v3 = *(result + 336);
  v8[0] = *(result + 320);
  v8[1] = v3;
  v4 = *(result + 368);
  v8[2] = *(result + 352);
  v8[3] = v4;
  v5 = *(result + 400);
  v8[4] = *(result + 384);
  v8[5] = v5;
  v8[6] = *(result + 464);
  if ((*(result + 20) & 1) == 0)
  {
    for (i = 0; i != 7; ++i)
    {
      v7 = v8[i];
      if (*(v7 + 12) != 255)
      {
        *(v7 + 100) = a2;
        *(v7 + 104) = a2 == 1;
        *(v7 + 112) = a3;
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlPeRqHdlrFactTest::SetPlatfStat(uint64_t this, const BlueFin::GlPePlatfStat *a2)
{
  v55[7] = *MEMORY[0x29EDCA608];
  v2 = *(this + 336);
  v55[0] = *(this + 320);
  v55[1] = v2;
  v3 = *(this + 368);
  v55[2] = *(this + 352);
  v55[3] = v3;
  v4 = *(this + 400);
  v55[4] = *(this + 384);
  v55[5] = v4;
  v55[6] = *(this + 464);
  if ((*(this + 20) & 1) == 0)
  {
    v5 = this;
    v6 = 0;
    v7 = (a2 + 252);
    this = a2 + 60;
    while (1)
    {
      v8 = v55[v6];
      v9 = *(v8 + 12);
      if (v9 == 255)
      {
        goto LABEL_26;
      }

      *(v8 + 120) = *(a2 + 196);
      *(v8 + 128) = *(a2 + 50);
      *(v8 + 152) = *(a2 + 251);
      v10 = *v7;
      v11 = *(a2 + 268);
      *(v8 + 184) = *(a2 + 280);
      *(v8 + 172) = v11;
      *(v8 + 156) = v10;
      if ((v9 - 52) <= 0xD && !*(v8 + 4))
      {
        v12 = *(v5 + 416);
        if (*(v12 + 12) != 255)
        {
          *(v12 + 120) = *(a2 + 196);
          *(v12 + 128) = *(a2 + 50);
          *(v12 + 152) = *(a2 + 251);
          v13 = *v7;
          v14 = *(a2 + 268);
          *(v12 + 184) = *(a2 + 280);
          *(v12 + 172) = v14;
          *(v12 + 156) = v13;
        }

        v15 = *(v5 + 432);
        if (*(v15 + 12) != 255)
        {
          *(v15 + 120) = *(a2 + 196);
          *(v15 + 128) = *(a2 + 50);
          *(v15 + 152) = *(a2 + 251);
          v16 = *v7;
          v17 = *(a2 + 268);
          *(v15 + 184) = *(a2 + 280);
          *(v15 + 172) = v17;
          *(v15 + 156) = v16;
        }
      }

      if (*(a2 + 170) != 1)
      {
        goto LABEL_26;
      }

      v18 = *(v8 + 12);
      if ((v18 - 1) > 0x1F)
      {
        if ((v18 - 52) > 0xD)
        {
          if ((v18 - 76) > 0x3E)
          {
            if ((v18 - 139) > 0x23)
            {
              if ((v18 - 66) > 9)
              {
                goto LABEL_26;
              }

              v19 = a2 + 332;
              v20 = a2 + 336;
              if (*(a2 + 328) != 1)
              {
                goto LABEL_26;
              }
            }

            else
            {
              v19 = a2 + 84;
              v20 = a2 + 88;
              if ((*(a2 + 174) & 1) == 0)
              {
                goto LABEL_26;
              }
            }
          }

          else
          {
            v19 = a2 + 76;
            v20 = a2 + 80;
            if ((*(a2 + 173) & 1) == 0)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
          v19 = a2 + 68;
          v20 = a2 + 72;
          if ((*(a2 + 172) & 1) == 0)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        v19 = a2 + 60;
        v20 = a2 + 64;
        if ((*(a2 + 171) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      *(v8 + 96) = *v19;
      *(v8 + 92) = *v20;
      *(v8 + 88) = 1;
      *v8 = 3;
LABEL_26:
      if (++v6 == 7)
      {
        v21 = 0;
        v22 = a2 + 96;
        v51 = a2 + 128;
        while (2)
        {
          v23 = v55[v21];
          v24 = *(v23 + 4);
          if (v24 != 5 && v24 != 3)
          {
            goto LABEL_61;
          }

          v26 = *(v23 + 12);
          if ((v26 - 76) >= 0x63)
          {
            v27 = v26 - 1;
            v28 = v26 - 52;
            if (v27 >= 0x20 && v28 > 0xD)
            {
              goto LABEL_61;
            }
          }

          *(v5 + 488) = (*(**(v5 + 8) + 328))(*(v5 + 8));
          v30 = (*(**(v5 + 8) + 336))();
          *(v5 + 490) = v30;
          *(v23 + 308) = *(*(*(v5 + 56) + 56) + 912);
          v31 = *(v23 + 12);
          v32 = 2 * (*(v23 + 320) == 3);
          v52[0] = *(v23 + 12);
          v53 = v32;
          v54 = 575;
          if (v52[0] - 189 >= 0xFFFFFF44)
          {
            v33 = BlueFin::GlSvId::s_aucSvId2gnss[v31];
            if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v32 - v32 + v33] == 255)
            {
              v32 = -1;
              v53 = -1;
            }

            else
            {
              v54 = BlueFin::GlSignalId::s_ausGnss2signalId[v33] + v31 - BlueFin::GlSvId::s_aucGnss2minSvId[v33] + v32 * BlueFin::GlSvId::s_aucGnss2numSvId[v33];
            }
          }

          this = BlueFin::GlIqData::Svid2EnumGnssIQ(v30, v52, v32);
          if (this <= 7 && *&v22[4 * this])
          {
            v34 = *(v23 + 316) + 1;
            *(v23 + 316) = v34;
            if (*(v5 + 490) < v34 && *(v23 + 321) == 1)
            {
              v35 = BlueFin::GlIqData::Svid2EnumGnssIQ(this, v52, v32);
              v37 = 0.0;
              v38 = 0.0;
              if (v35 <= 7)
              {
                LODWORD(v36) = *&v22[4 * v35];
                v38 = v36;
              }

              v39 = BlueFin::GlIqData::Svid2EnumGnssIQ(v35, v52, v32);
              if (v39 <= 7)
              {
                LODWORD(v40) = *&v51[4 * v39];
                v37 = v40;
              }

              v41 = v38 + *(v23 + 288);
              v42 = v37 + *(v23 + 296);
              *(v23 + 288) = v41;
              *(v23 + 296) = v42;
              v43 = v41 / v42;
              v44 = *(v23 + 40);
              *&v41 = v44;
              v45 = (__exp10f(*&v41 / 10.0) * 20.0) / 1000.0;
              v46 = (((((v45 * 2.0) + 1.0) - v43) / ((v43 + 1.0) * (v45 + v45))) * -4.0) + 1.0;
              GlCustomLog(20, "<FTPHN> Svid,%d, %s, CN0,%.2f,DbgArgSqrt,%.3f,IQRatio %.3f, ", *(v23 + 12), BlueFin::GlSignalId::s_ausSignalType2str[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v32 - v32 + BlueFin::GlSvId::s_aucSvId2gnss[v31]]], v44, v46, v43);
              if (v46 < 0.0)
              {
                GlCustomLog(20, "Phase noise is too high, variance cannot be computed,");
                goto LABEL_55;
              }

              v47 = (1.0 - sqrtf(v46)) * 0.5;
              GlCustomLog(20, "var,%.4f,rho,%.2f,", v47, v45);
              if (v46 <= 1.0)
              {
                v48 = sqrtf(v47) * 57.2957795;
                *(v23 + 312) = v48;
                v49 = *(v23 + 308);
                *(v23 + 304) = v49 > v48;
                GlCustomLog(20, "StdDev(degrees),%.2f,Threshold(degrees),%.2f,", v48, v49);
              }

              else
              {
                GlCustomLog(20, "Unique Error: value,");
LABEL_55:
                *(v23 + 304) = 0;
              }

              this = GlCustomLog(20, "%s\n");
            }

            else
            {
              this = GlCustomLog(20, "<FTPHN> Counter=%hu,Neglect=%hu,Svid=%d,CN0=%.2f, \n");
            }
          }

          v50 = *(v5 + 320);
          if (*(v50 + 316) - *(v5 + 490) == *(v5 + 488) && *(v50 + 4) == 5)
          {
            *(v5 + 492) = 1;
          }

LABEL_61:
          if (++v21 == 7)
          {
            return this;
          }

          continue;
        }
      }
    }
  }

  return this;
}

uint64_t BlueFin::GlPeRqHdlrFactTest::SetNmeaSentence(uint64_t a1, int a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v105[10] = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 20);
  if (v5)
  {
    return v5 ^ 1u;
  }

  v10 = *(a1 + 328);
  v11 = *(a1 + 336);
  v12 = *(a1 + 344);
  v105[0] = *(a1 + 320);
  v105[1] = v11;
  v13 = *(a1 + 360);
  v14 = *(a1 + 368);
  v15 = *(a1 + 376);
  v105[2] = *(a1 + 352);
  v105[3] = v14;
  v16 = *(a1 + 392);
  v17 = *(a1 + 400);
  v18 = *(a1 + 408);
  v105[4] = *(a1 + 384);
  v105[5] = v17;
  v19 = *(a1 + 416);
  v20 = *(a1 + 424);
  v22 = *(a1 + 432);
  v21 = *(a1 + 440);
  v105[6] = v19;
  v105[7] = v22;
  v23 = *(a1 + 456);
  v24 = *(a1 + 464);
  v25 = *(a1 + 472);
  v105[8] = *(a1 + 448);
  v105[9] = v24;
  v104[0] = v10;
  v104[1] = v12;
  v104[2] = v13;
  v104[3] = v15;
  v104[4] = v16;
  v104[5] = v18;
  v104[6] = v20;
  v104[7] = v21;
  v104[8] = v23;
  v104[9] = v25;
  if ((*(a1 + 16) & 1) == 0)
  {
    *(a1 + 16) = 1;
    BlueFin::GlPeNmeaGen::FormatNmeaRID(**(a1 + 56), __s, 80, a4);
    GlCustomLog(20, "GL_NMEA[%d][%s", *(a1 + 48), __s);
    v26 = strlen(__s);
    (*(**(a1 + 480) + 504))(*(a1 + 480), __s, v26);
  }

  (*(**(a1 + 480) + 504))(*(a1 + 480), a4, a5);
  if (a2 == 1)
  {
    v69 = 0;
    while (1)
    {
      v70 = v105[v69];
      if (*(v70 + 12) != 255)
      {
        break;
      }

LABEL_250:
      if (++v69 == 10)
      {
        goto LABEL_255;
      }
    }

    if (*(v70 + 14))
    {
      *(v70 + 333) = 1;
    }

    *(v70 + 136) = *(a1 + 493);
    *(v70 + 8) = (*(**(a1 + 8) + 368))(*(a1 + 8));
    *(v70 + 206) = 1;
    if ((*(**(a1 + 8) + 360))() != 2 || *(v70 + 8))
    {
LABEL_246:
      if (*(v70 + 333) == 1 && !*(v70 + 14))
      {
        v97 = **(a1 + 56);
        v98 = v104[v69];
      }

      else
      {
        v97 = **(a1 + 56);
        v98 = v70;
      }

      BlueFin::GlPeNmeaGen::FormatNmeaFTS(v97, v98, __s, 0x96);
      v99 = strlen(__s);
      (*(**(a1 + 480) + 504))(*(a1 + 480), __s, v99);
      GlCustomLog(20, "GL_NMEA[%d][%s", *(a1 + 48), __s);
      goto LABEL_250;
    }

    v71 = *(a1 + 320);
    if (*(v71 + 12) != 255)
    {
      v81 = *(v71 + 4);
      if (v81 > 4)
      {
        if (v81 == 5 || v81 == 8)
        {
          goto LABEL_245;
        }
      }

      else if ((v81 - 1) >= 4)
      {
        if (!v81 && *v71)
        {
          goto LABEL_245;
        }
      }

      else
      {
        v82 = *v71;
        v83 = v82 <= 4 && v82 >= v81;
        if (!v83)
        {
          goto LABEL_245;
        }
      }
    }

    v72 = *(a1 + 336);
    if (*(v72 + 12) != 255)
    {
      v84 = *(v72 + 4);
      if (v84 > 4)
      {
        if (v84 == 5 || v84 == 8)
        {
          goto LABEL_245;
        }
      }

      else if ((v84 - 1) >= 4)
      {
        if (!v84 && *v72)
        {
          goto LABEL_245;
        }
      }

      else
      {
        v85 = *v72;
        if (v85 > 4 || v85 < v84)
        {
          goto LABEL_245;
        }
      }
    }

    v73 = *(a1 + 352);
    if (*(v73 + 12) != 255)
    {
      v86 = *(v73 + 4);
      if (v86 > 4)
      {
        if (v86 == 5 || v86 == 8)
        {
          goto LABEL_245;
        }
      }

      else if ((v86 - 1) >= 4)
      {
        if (!v86 && *v73)
        {
          goto LABEL_245;
        }
      }

      else
      {
        v87 = *v73;
        if (v87 > 4 || v87 < v86)
        {
          goto LABEL_245;
        }
      }
    }

    v74 = *(a1 + 368);
    if (*(v74 + 12) != 255)
    {
      v88 = *(v74 + 4);
      if (v88 > 4)
      {
        if (v88 == 5 || v88 == 8)
        {
          goto LABEL_245;
        }
      }

      else if ((v88 - 1) >= 4)
      {
        if (!v88 && *v74)
        {
          goto LABEL_245;
        }
      }

      else
      {
        v89 = *v74;
        if (v89 > 4 || v89 < v88)
        {
          goto LABEL_245;
        }
      }
    }

    v75 = *(a1 + 384);
    if (*(v75 + 12) != 255)
    {
      v91 = *(v75 + 4);
      if (v91 > 4)
      {
        if (v91 == 5 || v91 == 8)
        {
          goto LABEL_245;
        }
      }

      else if ((v91 - 1) >= 4)
      {
        if (!v91 && *v75)
        {
          goto LABEL_245;
        }
      }

      else
      {
        v92 = *v75;
        if (v92 > 4 || v92 < v91)
        {
          goto LABEL_245;
        }
      }
    }

    v76 = *(a1 + 400);
    if (*(v76 + 12) != 255)
    {
      v93 = *(v76 + 4);
      if (v93 > 4)
      {
        if (v93 == 5 || v93 == 8)
        {
          goto LABEL_245;
        }
      }

      else if ((v93 - 1) >= 4)
      {
        if (!v93 && *v76)
        {
          goto LABEL_245;
        }
      }

      else
      {
        v94 = *v76;
        if (v94 > 4 || v94 < v93)
        {
          goto LABEL_245;
        }
      }
    }

    v77 = *(a1 + 448);
    if (*(v77 + 12) == 255)
    {
LABEL_153:
      v78 = *(a1 + 464);
      if (*(v78 + 12) == 255)
      {
        goto LABEL_246;
      }

      v79 = *(v78 + 4);
      if (v79 > 4)
      {
        if (v79 != 5 && v79 != 8)
        {
          goto LABEL_246;
        }
      }

      else if ((v79 - 1) >= 4)
      {
        if (v79 || !*v78)
        {
          goto LABEL_246;
        }
      }

      else
      {
        v80 = *v78;
        if (v80 <= 4 && v80 >= v79)
        {
          goto LABEL_246;
        }
      }

      goto LABEL_245;
    }

    v95 = *(v77 + 4);
    if (v95 > 4)
    {
      if (v95 != 5 && v95 != 8)
      {
        goto LABEL_153;
      }
    }

    else if ((v95 - 1) >= 4)
    {
      if (v95 || !*v77)
      {
        goto LABEL_153;
      }
    }

    else
    {
      v96 = *v77;
      if (v96 <= 4 && v96 >= v95)
      {
        goto LABEL_153;
      }
    }

LABEL_245:
    *(v70 + 206) = 0;
    goto LABEL_246;
  }

  if (a2 != 8)
  {
    goto LABEL_255;
  }

  v27 = 0;
  __s[0] = 0;
  while (1)
  {
    v28 = v105[v27];
    if (*(v28 + 6) == 255)
    {
      goto LABEL_18;
    }

    v29 = (*(**(a1 + 8) + 360))(*(a1 + 8));
    v30 = *v28;
    v31 = *v28 < v29 || v30 == 8;
    if (v31 && *(a1 + 23) != 1)
    {
      goto LABEL_18;
    }

    if (!v30)
    {
      if (!*(v28 + 7))
      {
        goto LABEL_18;
      }

      v32 = *(a1 + 320);
      v33 = *(v32 + 12) == 255 || *(v32 + 14) != 0;
      v43 = *(a1 + 336);
      if (*(v43 + 12) != 255)
      {
        v33 = (*(v43 + 14) != 0) & v33;
      }

      v44 = *(a1 + 352);
      if (*(v44 + 12) != 255)
      {
        v33 = (*(v44 + 14) != 0) & v33;
      }

      v45 = *(a1 + 384);
      if (*(v45 + 12) != 255)
      {
        v33 = (*(v45 + 14) != 0) & v33;
      }

      v46 = *(a1 + 400);
      if (*(v46 + 12) != 255)
      {
        v33 = (*(v46 + 14) != 0) & v33;
      }

      v47 = *(a1 + 448);
      if (*(v47 + 12) == 255)
      {
        if (!v33)
        {
          goto LABEL_18;
        }
      }

      else if (((*(v47 + 14) != 0) & v33) == 0)
      {
        goto LABEL_18;
      }
    }

    if ((v29 - 1) > 2 || v28[2])
    {
      goto LABEL_17;
    }

    v34 = *(a1 + 320);
    if (*(v34 + 12) != 255)
    {
      v48 = *(v34 + 4);
      if (v48 > 4)
      {
        if (v48 == 5 || v48 == 8)
        {
          goto LABEL_18;
        }
      }

      else if ((v48 - 1) >= 4)
      {
        if (!v48 && *v34)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v49 = *v34;
        if (v49 > 4 || v49 < v48)
        {
          goto LABEL_18;
        }
      }
    }

    v35 = *(a1 + 336);
    if (*(v35 + 12) != 255)
    {
      v50 = *(v35 + 4);
      if (v50 > 4)
      {
        if (v50 == 5 || v50 == 8)
        {
          goto LABEL_18;
        }
      }

      else if ((v50 - 1) >= 4)
      {
        if (!v50 && *v35)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v51 = *v35;
        if (v51 > 4 || v51 < v50)
        {
          goto LABEL_18;
        }
      }
    }

    v36 = *(a1 + 352);
    if (*(v36 + 12) != 255)
    {
      v52 = *(v36 + 4);
      if (v52 > 4)
      {
        if (v52 == 5 || v52 == 8)
        {
          goto LABEL_18;
        }
      }

      else if ((v52 - 1) >= 4)
      {
        if (!v52 && *v36)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v53 = *v36;
        if (v53 > 4 || v53 < v52)
        {
          goto LABEL_18;
        }
      }
    }

    v37 = *(a1 + 368);
    if (*(v37 + 12) != 255)
    {
      v54 = *(v37 + 4);
      if (v54 > 4)
      {
        if (v54 == 5 || v54 == 8)
        {
          goto LABEL_18;
        }
      }

      else if ((v54 - 1) >= 4)
      {
        if (!v54 && *v37)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v55 = *v37;
        if (v55 > 4 || v55 < v54)
        {
          goto LABEL_18;
        }
      }
    }

    v38 = *(a1 + 384);
    if (*(v38 + 12) != 255)
    {
      v57 = *(v38 + 4);
      if (v57 > 4)
      {
        if (v57 == 5 || v57 == 8)
        {
          goto LABEL_18;
        }
      }

      else if ((v57 - 1) >= 4)
      {
        if (!v57 && *v38)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v58 = *v38;
        if (v58 > 4 || v58 < v57)
        {
          goto LABEL_18;
        }
      }
    }

    v39 = *(a1 + 400);
    if (*(v39 + 12) != 255)
    {
      v59 = *(v39 + 4);
      if (v59 > 4)
      {
        if (v59 == 5 || v59 == 8)
        {
          goto LABEL_18;
        }
      }

      else if ((v59 - 1) >= 4)
      {
        if (!v59 && *v39)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v60 = *v39;
        if (v60 > 4 || v60 < v59)
        {
          goto LABEL_18;
        }
      }
    }

    v40 = *(a1 + 448);
    if (*(v40 + 12) != 255)
    {
      v61 = *(v40 + 4);
      if (v61 > 4)
      {
        if (v61 == 5 || v61 == 8)
        {
          goto LABEL_18;
        }
      }

      else if ((v61 - 1) >= 4)
      {
        if (!v61 && *v40)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v62 = *v40;
        if (v62 > 4 || v62 < v61)
        {
          goto LABEL_18;
        }
      }
    }

    v41 = *(a1 + 464);
    if (*(v41 + 12) == 255)
    {
      goto LABEL_17;
    }

    v42 = *(v41 + 4);
    if (v42 > 4)
    {
      if (v42 == 5 || v42 == 8)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if ((v42 - 1) >= 4)
    {
      break;
    }

    if (v30 != 8 && *v41 <= 4u && *v41 >= v42)
    {
      goto LABEL_136;
    }

LABEL_18:
    if (++v27 == 10)
    {
      goto LABEL_255;
    }
  }

  if (v42)
  {
LABEL_17:
    if (v30 != 8)
    {
      goto LABEL_136;
    }

    goto LABEL_18;
  }

  if (v30 == 8 || *v41)
  {
    goto LABEL_18;
  }

LABEL_136:
  v63 = *(a1 + 36);
  if (v63 == -1)
  {
    v65 = *(a1 + 32);
    v68 = 1;
  }

  else
  {
    v64 = *(*(a1 + 8) + 28);
    v65 = *(a1 + 32);
    v66 = v65 + v63;
    v83 = v66 >= v64;
    v67 = v66 - v64;
    if (v83)
    {
      v68 = v67;
    }

    else
    {
      v68 = 1;
    }
  }

  BlueFin::GlPeNmeaGen::FormatNmeaFIX(**(a1 + 56), v68, v65 - *(a1 + 28), __s, 120);
  GlCustomLog(20, "GL_NMEA[%d][%s", *(a1 + 48), __s);
  v100 = strlen(__s);
  (*(**(a1 + 480) + 504))(*(a1 + 480), __s, v100);
LABEL_255:
  for (i = 0; i != 10; ++i)
  {
    memcpy(v104[i], v105[i], 0x158uLL);
  }

  return v5 ^ 1u;
}

uint64_t BlueFin::GlPeRqHdlrFactTest::SetSIGMeasuement(uint64_t this, BlueFin::GlPeMsmtMgr *a2)
{
  if ((*(this + 20) & 1) == 0)
  {
    v3 = this;
    v4 = *(this + 320);
    if (*(v4 + 12) != 255)
    {
      this = BlueFin::GlPeRqHdlrFactTest::SetSIGMeasurement(this, a2, v4, 0);
    }

    v5 = v3[42];
    if (*(v5 + 12) != 255)
    {
      this = BlueFin::GlPeRqHdlrFactTest::SetSIGMeasurement(v3, a2, v5, 0);
    }

    v6 = v3[52];
    if (*(v6 + 12) != 255)
    {
      this = BlueFin::GlPeRqHdlrFactTest::SetSIGMeasurement(v3, a2, v6, 0);
    }

    v7 = v3[54];
    if (*(v7 + 12) != 255)
    {
      this = BlueFin::GlPeRqHdlrFactTest::SetSIGMeasurement(v3, a2, v7, 0);
    }

    v8 = v3[44];
    if (*(v8 + 12) != 255)
    {
      if (*(v8 + 12) - 189 < 0xFFFFFF44 || (v9 = *(v8 + 12), v10 = BlueFin::GlSvId::s_aucSvId2gnss[v9], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v10] == 255))
      {
        v11 = 575;
      }

      else
      {
        v11 = (BlueFin::GlSignalId::s_ausGnss2signalId[v10] + v9 - BlueFin::GlSvId::s_aucGnss2minSvId[v10]);
      }

      if ((*(*(a2 + 12) + 4 * (v11 >> 5)) >> (v11 & 0x1F)))
      {
        v12 = 0;
      }

      else
      {
        v12 = 3;
      }

      this = BlueFin::GlPeRqHdlrFactTest::SetSIGMeasurement(v3, a2, v8, v12);
    }

    v13 = v3[46];
    if (*(v13 + 12) != 255)
    {
      this = BlueFin::GlPeRqHdlrFactTest::SetSIGMeasurement(v3, a2, v13, 0);
    }

    v14 = v3[48];
    v15 = *(v14 + 12);
    if (v15 != 255)
    {
      v16 = 2;
      if ((v15 - 1) >= 0x20 && (v15 - 66) >= 0x6D)
      {
        if ((v15 - 175) >= 0xE)
        {
          DeviceFaultNotify("glpe_reqhdlr_fact_test.cpp", 842, "SetSIGMeasuement", "0");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr_fact_test.cpp", 842, "0");
        }

        v16 = 0;
      }

      this = BlueFin::GlPeRqHdlrFactTest::SetSIGMeasurement(v3, a2, v14, v16);
    }

    v17 = v3[50];
    if (*(v17 + 12) != 255)
    {
      this = BlueFin::GlPeRqHdlrFactTest::SetSIGMeasurement(v3, a2, v17, 1u);
    }

    v18 = v3[56];
    if (*(v18 + 12) != 255)
    {
      this = BlueFin::GlPeRqHdlrFactTest::SetSIGMeasurement(v3, a2, v18, 0);
    }

    v19 = v3[58];
    if (*(v19 + 12) != 255)
    {

      return BlueFin::GlPeRqHdlrFactTest::SetSIGMeasurement(v3, a2, v19, 0);
    }
  }

  return this;
}

uint64_t BlueFin::GlPeRqHdlrFactTest::SetSIGMeasurement(uint64_t result, unsigned int *a2, uint64_t a3, unsigned int a4)
{
  v7 = result;
  *(a3 + 16) = 0;
  v8 = *(a3 + 12);
  v33[0] = v8;
  v34 = a4;
  v35 = 575;
  if (v8 - 189 >= 0xFFFFFF44)
  {
    v9 = BlueFin::GlSvId::s_aucSvId2gnss[v8];
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * a4 - a4 + v9] != 255)
    {
      v35 = BlueFin::GlSignalId::s_ausGnss2signalId[v9] + v8 - BlueFin::GlSvId::s_aucGnss2minSvId[v9] + BlueFin::GlSvId::s_aucGnss2numSvId[v9] * a4;
      v10 = v35;
      goto LABEL_8;
    }

    v34 = -1;
  }

  else if (v33[0] == 255)
  {
    return result;
  }

  v10 = 575;
LABEL_8:
  if ((*(**(result + 8) + 360))(*(result + 8)))
  {
    v11 = 0x2030400u >> (8 * a4);
    if (a4 >= 4)
    {
      LOBYTE(v11) = 0;
    }

    *(a3 + 320) = v11;
  }

  if (((*(*(a2 + 1) + 4 * (v10 >> 5)) >> (v10 & 0x1F)) & 1) == 0)
  {
    v18 = *(a3 + 4);
    if (!v18)
    {
      goto LABEL_59;
    }

    goto LABEL_54;
  }

  MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(a2, v33, 0, 0);
  v13 = MeMeas;
  if (MeMeas)
  {
    if ((*(MeMeas + 3) & 0x8002) != 2)
    {
      LOBYTE(v13) = 0;
      goto LABEL_46;
    }

    if (*(MeMeas + 12))
    {
      *(a3 + 332) = 1;
    }

    *(a3 + 56) = *(*(*(v7 + 56) + 56) + 40);
    v14 = (*(MeMeas + 29) + -174.0);
    *(a3 + 24) = v14;
    if (*a3 == 8)
    {
      *a3 = 1;
      *(a3 + 32) = v14;
    }

    v15 = *(a3 + 328);
    if (v15)
    {
      v16 = *(a3 + 32);
      v17 = *(a3 + 336);
    }

    else
    {
      v19 = *a2;
      v17 = v19 + 1000 * (*(**(v7 + 8) + 320))(*(v7 + 8)) - 1100;
      *(a3 + 336) = v17;
      v14 = *(a3 + 24);
      v16 = 0.0;
    }

    v20 = v16 + v14;
    *(a3 + 32) = v20;
    *(a3 + 328) = v15 + 1;
    if ((v15 & 0x80000000) == 0 && *a2 > v17)
    {
      v20 = v20 / (v15 + 1);
      *(a3 + 32) = v20;
      *(a3 + 328) = 0;
      *(a3 + 16) = 1;
    }

    *(a3 + 40) = v14 + 174.0;
    *(a3 + 48) = v20 + 174.0;
    v21 = v13[27];
    if (v21 >= 0.000000015)
    {
      *(a3 + 64) = 0;
LABEL_34:
      if (*(v13 + 13))
      {
        *(a3 + 232) = 1;
        *(a3 + 14) = 1;
      }

      v23 = *(a3 + 4);
      if (*(a3 + 8) || v23 != 1)
      {
        if (!v23)
        {
LABEL_45:
          LOBYTE(v13) = 1;
          goto LABEL_46;
        }
      }

      else
      {
        *(a3 + 14) = 1;
      }

      v24 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(v13 + 1) - *(v13 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*v13]];
      if (v24 <= 0xC && ((1 << v24) & 0x1041) != 0)
      {
        v25 = *(v13 + 9) == 2;
      }

      else
      {
        v25 = *(v13 + 9) > 2;
      }

      *(a3 + 321) = v25;
      goto LABEL_45;
    }

    v22 = *a3;
    if ((*a3 - 1) >= 4)
    {
      if (v22 != 8)
      {
        goto LABEL_32;
      }
    }

    else if (v22 > 1)
    {
LABEL_32:
      *(a3 + 64) = 1;
      *(a3 + 72) = -v13[26];
      *(a3 + 80) = v21;
      goto LABEL_34;
    }

    *a3 = 2;
    goto LABEL_32;
  }

LABEL_46:
  v26 = *(a3 + 328);
  v27 = v26;
  if (!v26)
  {
    v27 = 1.0;
  }

  v28 = *(a3 + 32) / v27;
  v29 = *(a3 + 48);
  if (!*(a3 + 16))
  {
    v29 = 0.0;
  }

  v30 = 84;
  if (!*(a3 + 14))
  {
    v30 = 70;
  }

  GlCustomLog(14, "<FT> SetSIGMeasurement SVID=%hd, CarrBand %d, NrgyFnd=%c, SigStr=%.2fdBm, AvgSigStr=%.2fdBm, Snr=%.2fdBHz, AvgSnr=%.2f\n", v33[0], v34, v30, *(a3 + 24), v28, *(a3 + 40), v29);
  v18 = *(a3 + 4);
  if ((v13 & 1) == 0 && v18)
  {
LABEL_54:
    *(a3 + 14) = 0;
    *(a3 + 64) = 0;
    if (*(a3 + 332) == 1)
    {
      ++*(a3 + 200);
    }
  }

  if (v18 == 7)
  {
    v31 = *(v7 + 32);
    if ((v31 - 1000) <= 0x3E7)
    {
      *(a3 + 318) = 1;
      GlCustomLog(14, "<FT> GlPeRqHdlrFactTest::Sending Plat Sleep Ok as part of callback @CurrentLms (%u)\n", v31);
      goto LABEL_60;
    }
  }

LABEL_59:
  *(a3 + 318) = 0;
LABEL_60:
  result = *(v7 + 480);
  v32 = *(result + 80);
  if (v32)
  {
    return v32();
  }

  return result;
}

uint64_t BlueFin::GlPeRqHdlrFactTest::HandleFailure(BlueFin::GlPeRqHdlrFactTest *this, const BlueFin::GlMePlatfStat *a2)
{
  result = GlCustomLog(14, "<FT> GlPeRqHdlrFactTest::HandleFailure \n");
  v5 = *(this + 40);
  *(v5 + 236) = 1;
  v6 = *(this + 42);
  v6[59] = 1;
  v7 = *(this + 44);
  v7[59] = 1;
  v8 = *(this + 46);
  v8[59] = 1;
  v9 = *(this + 48);
  v9[59] = 1;
  v10 = *(this + 50);
  v10[59] = 1;
  v11 = *(this + 56);
  v11[59] = 1;
  v12 = *(this + 58);
  v12[59] = 1;
  if (a2)
  {
    v13 = *(a2 + 9);
    *(v5 + 272) = v13;
    v14 = *(a2 + 5);
    v15 = *(a2 + 6);
    *(v5 + 256) = v14;
    v16 = *(a2 + 7);
    v17 = *(a2 + 8);
    *(v5 + 264) = v16;
    *(v5 + 268) = v17;
    result = *(a2 + 3);
    v18 = *(a2 + 4);
    *(v5 + 248) = result;
    *(v5 + 252) = v18;
    v19 = *(a2 + 1);
    v20 = *(a2 + 2);
    *(v5 + 240) = v19;
    *(v5 + 244) = v20;
    *(v5 + 260) = v15;
    v6[68] = v13;
    v6[63] = v18;
    v6[64] = v14;
    v6[66] = v16;
    v6[67] = v17;
    v6[61] = v20;
    v6[62] = result;
    v6[60] = v19;
    v6[65] = v15;
    v7[68] = v13;
    v7[63] = v18;
    v7[64] = v14;
    v7[66] = v16;
    v7[67] = v17;
    v7[61] = v20;
    v7[62] = result;
    v7[60] = v19;
    v7[65] = v15;
    v8[68] = v13;
    v8[63] = v18;
    v8[64] = v14;
    v8[66] = v16;
    v8[67] = v17;
    v8[61] = v20;
    v8[62] = result;
    v8[60] = v19;
    v8[65] = v15;
    v9[68] = v13;
    v9[63] = v18;
    v9[64] = v14;
    v9[66] = v16;
    v9[67] = v17;
    v9[61] = v20;
    v9[62] = result;
    v9[60] = v19;
    v9[65] = v15;
    v10[68] = v13;
    v10[63] = v18;
    v10[64] = v14;
    v10[66] = v16;
    v10[67] = v17;
    v10[61] = v20;
    v10[62] = result;
    v10[60] = v19;
    v10[65] = v15;
    v11[68] = v13;
    v11[63] = v18;
    v11[64] = v14;
    v11[66] = v16;
    v11[67] = v17;
    v11[61] = v20;
    v11[62] = result;
    v11[60] = v19;
    v11[65] = v15;
    v12[68] = v13;
    v12[63] = v18;
    v12[64] = v14;
    v12[66] = v16;
    v12[67] = v17;
    v12[61] = v20;
    v12[62] = result;
    v12[60] = v19;
    v12[65] = v15;
  }

  if (*(v5 + 12) != 255)
  {
    result = *(this + 60);
    v21 = *(result + 80);
    if (v21)
    {
      result = v21();
    }
  }

  if (*(*(this + 42) + 12) != 255)
  {
    result = *(this + 60);
    v22 = *(result + 80);
    if (v22)
    {
      result = v22();
    }
  }

  if (*(*(this + 44) + 12) != 255)
  {
    result = *(this + 60);
    v23 = *(result + 80);
    if (v23)
    {
      result = v23();
    }
  }

  if (*(*(this + 46) + 12) != 255)
  {
    result = *(this + 60);
    v24 = *(result + 80);
    if (v24)
    {
      result = v24();
    }
  }

  if (*(*(this + 48) + 12) != 255)
  {
    result = *(this + 60);
    v25 = *(result + 80);
    if (v25)
    {
      result = v25();
    }
  }

  if (*(*(this + 50) + 12) != 255)
  {
    result = *(this + 60);
    v26 = *(result + 80);
    if (v26)
    {
      result = v26();
    }
  }

  if (*(*(this + 56) + 12) != 255)
  {
    result = *(this + 60);
    v27 = *(result + 80);
    if (v27)
    {
      result = v27();
    }
  }

  if (*(*(this + 58) + 12) != 255)
  {
    result = *(this + 60);
    v28 = *(result + 80);
    if (v28)
    {

      return v28();
    }
  }

  return result;
}

void *BlueFin::GlPeRqHdlrFactTest::SetMePlatfStats(void *this, const BlueFin::GlMePlatfStat *a2)
{
  if (a2)
  {
    v2 = this[40];
    v3 = *(a2 + 9);
    v2[68] = v3;
    v4 = *(a2 + 5);
    v5 = *(a2 + 6);
    v2[64] = v4;
    v6 = *(a2 + 7);
    v7 = *(a2 + 8);
    v2[66] = v6;
    v2[67] = v7;
    v8 = *(a2 + 3);
    v9 = *(a2 + 4);
    v2[62] = v8;
    v2[63] = v9;
    v10 = *(a2 + 1);
    v11 = *(a2 + 2);
    v2[60] = v10;
    v2[61] = v11;
    v2[65] = v5;
    v12 = this[42];
    v12[68] = v3;
    v12[63] = v9;
    v12[64] = v4;
    v12[66] = v6;
    v12[67] = v7;
    v12[61] = v11;
    v12[62] = v8;
    v12[60] = v10;
    v12[65] = v5;
    v13 = this[44];
    v13[68] = v3;
    v13[63] = v9;
    v13[64] = v4;
    v13[66] = v6;
    v13[67] = v7;
    v13[61] = v11;
    v13[62] = v8;
    v13[60] = v10;
    v13[65] = v5;
    v14 = this[46];
    v14[68] = v3;
    v14[63] = v9;
    v14[64] = v4;
    v14[66] = v6;
    v14[67] = v7;
    v14[61] = v11;
    v14[62] = v8;
    v14[60] = v10;
    v14[65] = v5;
    v15 = this[58];
    v15[68] = v3;
    v15[63] = v9;
    v15[64] = v4;
    v15[66] = v6;
    v15[67] = v7;
    v15[61] = v11;
    v15[62] = v8;
    v15[60] = v10;
    v15[65] = v5;
  }

  return this;
}

uint64_t BlueFin::GlPeRqHdlrFactTest::CWResults(uint64_t this, __int16 a2, char a3, double a4, double a5, double a6, int a7)
{
  v8 = this;
  v23 = *MEMORY[0x29EDCA608];
  v9 = (this + 320);
  v10 = (this + 416);
  v11 = (this + 432);
  if (a7 != 8)
  {
    v11 = (this + 320);
  }

  if (a7 != 7)
  {
    v10 = v11;
  }

  v12 = (this + 400);
  v13 = (this + 448);
  if (a7 != 5)
  {
    v13 = (this + 320);
  }

  if (a7 != 4)
  {
    v12 = v13;
  }

  if (a7 <= 6)
  {
    v10 = v12;
  }

  if (a7 == 3)
  {
    v9 = (this + 384);
  }

  if (a7 == 2)
  {
    v9 = (this + 352);
  }

  if (a7 == 1)
  {
    v9 = (this + 336);
  }

  if (a7 > 3)
  {
    v9 = v10;
  }

  v14 = *v9;
  *(v14 + 204) = a2;
  *(v14 + 208) = a5;
  *(v14 + 216) = a6;
  *(v14 + 224) = a4;
  *v14 = 0;
  *(v14 + 320) = a7;
  v15 = -a5;
  if (a5 >= 0.0)
  {
    v15 = a5;
  }

  if (v15 <= 2.22044605e-16)
  {
    goto LABEL_29;
  }

  v16 = -a6;
  if (a6 >= 0.0)
  {
    v16 = a6;
  }

  if (v16 <= 2.22044605e-16)
  {
    goto LABEL_29;
  }

  v17 = -a4;
  if (a4 >= 0.0)
  {
    v17 = a4;
  }

  if (v17 <= 2.22044605e-16)
  {
LABEL_29:
    *(v14 + 14) = 0;
    v18 = 1;
  }

  else
  {
    v18 = 0;
    *(v14 + 14) = 1;
    v19 = *(*(*(this + 56) + 56) + 40);
    *(v14 + 56) = v19;
    *(v14 + 224) = v19 + a4;
  }

  v20 = a5 != 1.79769313e308 && a6 != 1.79769313e308 && a6 < 0.00000005;
  *(v14 + 64) = v20;
  if (a5 == 1.79769313e308 || a6 == 1.79769313e308 || (a3 & 1) == 0)
  {
    BlueFin::GlPeNmeaGen::FormatNmeaSPA(**(this + 56), v14, __s, 0x50);
    v21 = strlen(__s);
    (*(**(v8 + 480) + 504))(*(v8 + 480), __s, v21);
    return GlCustomLog(20, "GL_NMEA[%d][%s", *(v8 + 48), __s);
  }

  else if ((v18 & 1) == 0)
  {
    *(this + 19) = 1;
  }

  return this;
}

char *BlueFin::GlPeRqHdlrFactTest::SpaResults(char *result, uint64_t a2)
{
  v2 = result;
  if (*(a2 + 185) == 1)
  {
    result[19] = 1;
  }

  else
  {
    v4 = *(a2 + 4);
    if (v4)
    {
      *(result + 25) = *(a2 + 220);
      result[108] = *(a2 + 224);
      result[109] = *(a2 + 235);
      v5 = *(a2 + 228);
      if (v4 == 1)
      {
        if ((v5 & 0x400000) != 0)
        {
          result[312] = *(a2 + 232);
          *(result + 313) = *(a2 + 233);
          *(result + 18) |= 0x80u;
          v4 = 1;
        }

        else
        {
          *(result + 38) = *(a2 + 192);
          v6 = vrev32_s16(vmovn_s32(*(a2 + 200)));
          *(result + 30) = vuzp1_s8(v6, v6).u32[0];
          *(result + 31) = *a2;
          v7 = *(result + 18);
          *(result + 18) = v7 | 2;
          v8 = *(a2 + 184);
          result[296] = v8;
          v9 = 4 * v8;
          memcpy(result + 136, (a2 + 24), 4 * v8);
          result = memcpy(v2 + 216, (a2 + 104), v9);
          *(v2 + 18) = v7 | 0xA;
          v5 = *(a2 + 228);
          v4 = *(a2 + 4);
        }

        *(v2 + 24) = v5;
      }

      v10 = *(a2 + 8);
      v11 = *(a2 + 16);
      if ((v5 & 0x400000) != 0)
      {
        v12 = 64;
      }

      else if (*(a2 + 217))
      {
        v12 = 32;
      }

      else
      {
        v12 = 4;
      }

      *(v2 + 32) = v4;
      *(v2 + 33) = v10;
      *(v2 + 14) = v11;
      v13 = *(v2 + 18) | v12;
      *(v2 + 18) = v13;
      if (BlueFin::GlUtils::m_pInstance)
      {
        if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
        {
          result = (*(*(v2 + 8) + 24))(v2 + 64, 0, 0);
          v13 = *(v2 + 18);
        }
      }

      *(v2 + 18) = v13 & 0xFFFFFF00;
    }
  }

  return result;
}

void *BlueFin::GlPeRqHdlrFactTest::InitializeCWTest(void *result, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned __int8 *a6, unsigned __int8 *a7, unsigned __int8 *a8, unsigned __int8 *a9)
{
  if (*a2 != 255)
  {
    v9 = result[40];
    *v9 = 0;
    *(v9 + 14) = 0;
    *(v9 + 224) = 0;
    *(v9 + 64) = 0;
  }

  v10 = *a3;
  if (v10 != 255)
  {
    v11 = result[42];
    *v11 = 0;
    *(v11 + 14) = 0;
    *(v11 + 224) = 0;
    *(v11 + 12) = v10;
    *(v11 + 64) = 0;
    v12 = *a7;
    if (v12 != 255)
    {
      v13 = result[52];
      *v13 = 0;
      *(v13 + 14) = 0;
      *(v13 + 224) = 0;
      *(v13 + 12) = v12;
      *(v13 + 64) = 0;
    }

    v14 = *a8;
    if (v14 != 255)
    {
      v15 = result[54];
      *v15 = 0;
      *(v15 + 14) = 0;
      *(v15 + 224) = 0;
      *(v15 + 12) = v14;
      *(v15 + 64) = 0;
    }
  }

  if (*a4 != 255)
  {
    v16 = result[44];
    *v16 = 0;
    *(v16 + 14) = 0;
    *(v16 + 224) = 0;
    *(v16 + 64) = 0;
  }

  if (*a5 != 255)
  {
    v17 = result[48];
    *v17 = 0;
    *(v17 + 14) = 0;
    *(v17 + 224) = 0;
    *(v17 + 64) = 0;
  }

  if (*a6 != 255)
  {
    v18 = result[50];
    *v18 = 0;
    *(v18 + 14) = 0;
    *(v18 + 224) = 0;
    *(v18 + 64) = 0;
  }

  if (*a9 != 255)
  {
    v19 = result[56];
    *v19 = 0;
    *(v19 + 14) = 0;
    *(v19 + 224) = 0;
    *(v19 + 64) = 0;
  }

  return result;
}

void *BlueFin::GlPeRqHdlrFactTest::GetFactoryTestStatus(uint64_t a1, unsigned int a2, void *__dst)
{
  if (a2 >= 4)
  {
    DeviceFaultNotify("glpe_reqhdlr_fact_test.cpp", 1350, "GetFactoryTestStatus", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr_fact_test.cpp", 1350, "0");
  }

  v4 = *(a1 + qword_298A44C08[a2]);

  return memcpy(__dst, v4, 0x148uLL);
}

uint64_t BlueFin::GlPeRqHdlrFactTest::Cleanup(BlueFin::GlPeRqHdlrFactTest *this)
{
  v2 = *(*(*(this + 7) + 56) + 88);
  *(*(this + 40) + 4) = (*(**(this + 1) + 360))(*(this + 1));
  *(*(this + 42) + 4) = (*(**(this + 1) + 360))();
  *(*(this + 44) + 4) = (*(**(this + 1) + 360))();
  *(*(this + 46) + 4) = (*(**(this + 1) + 360))();
  *(*(this + 48) + 4) = (*(**(this + 1) + 360))();
  *(*(this + 50) + 4) = (*(**(this + 1) + 360))();
  *(*(this + 56) + 4) = (*(**(this + 1) + 360))();
  *(*(this + 58) + 4) = (*(**(this + 1) + 360))();
  v4 = (v2 - 5) <= 1 && (v3 = *(this + 42), *(v3 + 12) != 255) && *(v3 + 232) == 0;
  if (!(*(**(this + 1) + 368))(*(this + 1)) && (*(**(this + 1) + 360))(*(this + 1)))
  {
    v15 = *(this + 40);
    if (*(v15 + 12) != 255)
    {
      v19 = *(v15 + 4);
      if (v19 > 4)
      {
        if (v19 == 5 || v19 == 8)
        {
          goto LABEL_6;
        }
      }

      else if ((v19 - 1) >= 4)
      {
        if (!v19 && *v15)
        {
          goto LABEL_6;
        }
      }

      else if (*v15 > 4u || *v15 < v19)
      {
        goto LABEL_6;
      }
    }

    v16 = *(this + 44);
    if (*(v16 + 12) != 255)
    {
      v20 = *(v16 + 4);
      if (v20 > 4)
      {
        if (v20 == 5 || v20 == 8)
        {
          goto LABEL_6;
        }
      }

      else if ((v20 - 1) >= 4)
      {
        if (!v20 && *v16)
        {
          goto LABEL_6;
        }
      }

      else if (*v16 > 4u || *v16 < v20)
      {
        goto LABEL_6;
      }
    }

    v17 = *(this + 42);
    if (*(v17 + 12) == 255)
    {
      v18 = 1;
    }

    else
    {
      v21 = *(v17 + 4);
      v18 = 1;
      if (v21 > 4)
      {
        if (v21 == 5 || v21 == 8)
        {
          goto LABEL_6;
        }
      }

      else if ((v21 - 1) >= 4)
      {
        if (!v21)
        {
          v18 = *v17 == 0;
        }
      }

      else
      {
        v18 = *v17 < 5u && *v17 >= v21;
      }
    }

    if (v4 || !v18)
    {
      goto LABEL_6;
    }

    v23 = *(this + 46);
    if (*(v23 + 12) != 255)
    {
      v28 = *(v23 + 4);
      if (v28 > 4)
      {
        if (v28 == 5 || v28 == 8)
        {
          goto LABEL_6;
        }
      }

      else if ((v28 - 1) >= 4)
      {
        if (!v28 && *v23)
        {
          goto LABEL_6;
        }
      }

      else if (*v23 > 4u || *v23 < v28)
      {
        goto LABEL_6;
      }
    }

    v24 = *(this + 48);
    if (*(v24 + 12) != 255)
    {
      v29 = *(v24 + 4);
      if (v29 > 4)
      {
        if (v29 == 5 || v29 == 8)
        {
          goto LABEL_6;
        }
      }

      else if ((v29 - 1) >= 4)
      {
        if (!v29 && *v24)
        {
          goto LABEL_6;
        }
      }

      else if (*v24 > 4u || *v24 < v29)
      {
        goto LABEL_6;
      }
    }

    v25 = *(this + 50);
    if (*(v25 + 12) != 255)
    {
      v30 = *(v25 + 4);
      if (v30 > 4)
      {
        if (v30 == 5 || v30 == 8)
        {
          goto LABEL_6;
        }
      }

      else if ((v30 - 1) >= 4)
      {
        if (!v30 && *v25)
        {
          goto LABEL_6;
        }
      }

      else if (*v25 > 4u || *v25 < v30)
      {
        goto LABEL_6;
      }
    }

    v26 = *(this + 56);
    if (*(v26 + 12) != 255)
    {
      v31 = *(v26 + 4);
      if (v31 > 4)
      {
        if (v31 == 5 || v31 == 8)
        {
          goto LABEL_6;
        }
      }

      else if ((v31 - 1) >= 4)
      {
        if (!v31 && *v26)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v32 = *v26;
        if (v32 > 4 || v32 < v31)
        {
          goto LABEL_6;
        }
      }
    }

    v27 = *(this + 58);
    if (*(v27 + 12) != 255)
    {
      v33 = *(v27 + 4);
      if (v33 > 4)
      {
        if (v33 == 5 || v33 == 8)
        {
          goto LABEL_6;
        }
      }

      else if ((v33 - 1) >= 4)
      {
        if (!v33 && *v27)
        {
          goto LABEL_6;
        }
      }

      else if (*v27 > 4u || *v27 < v33)
      {
        goto LABEL_6;
      }
    }

    if (*(v15 + 232) || *(v17 + 232) || *(v16 + 232) || *(v23 + 232) || *(v25 + 232) || *(v24 + 232) || *(v27 + 232))
    {
      *(this + 19) = 1;
    }
  }

LABEL_6:
  result = (*(**(this + 1) + 360))(*(this + 1));
  if (result == 5 && *(this + 492) == 1)
  {
    result = (*(**(this + 1) + 368))(*(this + 1));
    if (!result)
    {
      *(this + 19) = 1;
    }
  }

  v6 = *(this + 40);
  if (!*v6)
  {
    *(v6 + 204) = 0;
    *(v6 + 14) = 0;
    *(v6 + 216) = 0;
    *(v6 + 224) = 0;
    *(v6 + 208) = 0;
  }

  v7 = *(this + 42);
  if (!*v7)
  {
    *(v7 + 204) = 0;
    *(v7 + 14) = 0;
    *(v7 + 216) = 0;
    *(v7 + 224) = 0;
    *(v7 + 208) = 0;
  }

  v8 = *(this + 52);
  if (!*v8)
  {
    *(v8 + 204) = 0;
    *(v8 + 14) = 0;
    *(v8 + 216) = 0;
    *(v8 + 224) = 0;
    *(v8 + 208) = 0;
  }

  v9 = *(this + 54);
  if (!*v9)
  {
    *(v9 + 204) = 0;
    *(v9 + 14) = 0;
    *(v9 + 216) = 0;
    *(v9 + 224) = 0;
    *(v9 + 208) = 0;
  }

  v10 = *(this + 44);
  if (!*v10)
  {
    *(v10 + 204) = 0;
    *(v10 + 14) = 0;
    *(v10 + 216) = 0;
    *(v10 + 224) = 0;
    *(v10 + 208) = 0;
  }

  v11 = *(this + 48);
  if (!*v11)
  {
    *(v11 + 204) = 0;
    *(v11 + 14) = 0;
    *(v11 + 216) = 0;
    *(v11 + 224) = 0;
    *(v11 + 208) = 0;
  }

  v12 = *(this + 50);
  if (!*v12)
  {
    *(v12 + 204) = 0;
    *(v12 + 14) = 0;
    *(v12 + 216) = 0;
    *(v12 + 224) = 0;
    *(v12 + 208) = 0;
  }

  v13 = *(this + 56);
  if (!*v13)
  {
    *(v13 + 204) = 0;
    *(v13 + 14) = 0;
    *(v13 + 216) = 0;
    *(v13 + 224) = 0;
    *(v13 + 208) = 0;
  }

  if ((*(this + 23) & 1) != 0 || *(this + 20) == 1)
  {
    *(this + 19) = 1;
  }

  else if ((*(this + 19) & 1) == 0)
  {
    return result;
  }

  (*(*this + 272))(this, 0, 0);
  result = *(this + 1);
  v14 = *(result + 56);
  if (v14)
  {

    return v14();
  }

  return result;
}

void BlueFin::GlPeRqHdlrFactTest::~GlPeRqHdlrFactTest(BlueFin::GlPeRqHdlrFactTest *this)
{
  BlueFin::GlPeRqHdlr::~GlPeRqHdlr(this);

  JUMPOUT(0x29C292F70);
}

uint64_t BlueFin::GlPeRqHdlrGnssMeasData::SetGalileoDataPage(BlueFin::GlPeRqHdlrGnssMeasData *this, BlueFin::GlGalileoINavPage *a2)
{
  v15[2] = *MEMORY[0x29EDCA608];
  v3 = *(this + 1);
  v4 = this + 36864;
  *(this + 4995) = 0;
  *(this + 4994) = 0;
  *(this + 4993) = 0;
  v14 = 0;
  memset(v15, 0, 13);
  v13 = 0;
  *(this + 19974) = *(a2 + 8) - 138;
  *(this + 19975) = 1537;
  *(this + 9986) = 24;
  *(this + 19977) = *(a2 + 10);
  v5 = *(a2 + 4);
  if (!v5)
  {
    v5 = 604800;
    *(a2 + 4) = 604800;
  }

  v6 = fmodf(((v5 - 2) / 0x1Eu), 24.0);
  v7 = 0;
  v8 = 0;
  *(v4 + 1544) = (v6 + 1.0);
  *(v4 + 773) = 29;
  while (1)
  {
    v9 = *(a2 + (v8 & 0xFFFFFFFC) + 20);
    if (v8 < 0xE)
    {
      *(&v13 + v8) = v9 >> (~v7 & 0x18);
      goto LABEL_10;
    }

    if (v8 != 14)
    {
      break;
    }

    BYTE6(v14) = BYTE1(v9) & 0xC0;
LABEL_10:
    ++v8;
    v7 += 8;
    if (v8 == 30)
    {
      goto LABEL_13;
    }
  }

  v10 = v9 >> (~v7 & 0x18);
  if (v8 != 29)
  {
    v11 = &v13 + v8;
    *(v11 - 1) = *(&v13 + v8 - 1) | ((v10 & 0xFC) >> 2);
    *v11 = v10 << 6;
    goto LABEL_10;
  }

  BYTE4(v15[1]) |= (v10 >> 2) & 0x30;
LABEL_13:
  *(v4 + 387) = &v13;
  return BlueFin::GlRequestImplGnssMeasData::OnNavData(v3, (v4 + 3080));
}

uint64_t BlueFin::GlPeGnssDataLogger::SerializeImpl(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v20 = *MEMORY[0x29EDCA608];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 3;
  }

  if (v5 >= 4)
  {
    DeviceFaultNotify("glpe_reqhdlr_gnss_meas_data.cpp", 1607, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 3");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr_gnss_meas_data.cpp", 1607, "ucVersion >= 1 && ucVersion <= 3");
  }

  v6 = v3;
  v7 = v2;
  if (v3 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v16 = 109;
    v17 = v5;
    v18 = 0x1000000000000;
    v15 = &unk_2A1F09578;
    v19 = v5;
    if (*(*(v2 + 8) + 4) >= 0x65u)
    {
      DeviceFaultNotify("glpe_reqhdlr_gnss_meas_data.cpp", 1613, "SerializeImpl", "m_oMeasData.uiMmeasurementCount <= GL_GNSS_MAX_MEASUREMENT");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr_gnss_meas_data.cpp", 1613, "m_oMeasData.uiMmeasurementCount <= GL_GNSS_MAX_MEASUREMENT");
    }

    BlueFin::GlSysLogEntry::PutU8(&v15, *(*(v2 + 8) + 4));
    v8 = *(v7 + 8);
    if (*(v8 + 4))
    {
      v9 = 0;
      v10 = 176;
      do
      {
        BlueFin::GlSysLogEntry::PutU32(&v15, *(v8 + v10 - 164));
        BlueFin::GlSysLogEntry::PutU8(&v15, *(v8 + v10 - 160));
        BlueFin::GlSysLogEntry::PutU8(&v15, *(v8 + v10 - 158));
        BlueFin::GlSysLogEntry::PutU32(&v15, *(v8 + v10 - 144));
        BlueFin::GlSysLogEntry::PutS64(&v15, *(v8 + v10 - 136));
        v11 = *(v8 + v10 - 128);
        if ((v11 - 0x100000000) <= 0xFFFFFFFF00000000)
        {
          DeviceFaultNotify("glpe_reqhdlr_gnss_meas_data.cpp", 1624, "SerializeImpl", "meas.sllReceivedGnssTimeUncNs > 0 && meas.sllReceivedGnssTimeUncNs <= MAX_RCVD_SYS_TIME_UNC_NS");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr_gnss_meas_data.cpp", 1624, "meas.sllReceivedGnssTimeUncNs > 0 && meas.sllReceivedGnssTimeUncNs <= MAX_RCVD_SYS_TIME_UNC_NS");
        }

        BlueFin::GlSysLogEntry::PutU32(&v15, v11);
        v12 = *(v8 + v10 - 120);
        BlueFin::GlSysLogEntry::PutF32(&v15, v12);
        BlueFin::GlSysLogEntry::PutD64(&v15, *(v8 + v10 - 112));
        BlueFin::GlSysLogEntry::PutD64(&v15, *(v8 + v10 - 104));
        if (*(v8 + v10 - 96) >= 0x100u)
        {
          DeviceFaultNotify("glpe_reqhdlr_gnss_meas_data.cpp", 1629, "SerializeImpl", "meas.adrsAccumulatedDeltaRangeState < 256");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr_gnss_meas_data.cpp", 1629, "meas.adrsAccumulatedDeltaRangeState < 256");
        }

        BlueFin::GlSysLogEntry::PutU8(&v15, *(v8 + v10 - 96));
        BlueFin::GlSysLogEntry::PutD64(&v15, *(v8 + v10 - 88));
        BlueFin::GlSysLogEntry::PutD64(&v15, *(v8 + v10 - 80));
        BlueFin::GlSysLogEntry::PutF32(&v15, *(v8 + v10 - 48));
        BlueFin::GlSysLogEntry::PutU8(&v15, *(v8 + v10 - 16));
        v13 = *(v8 + v10);
        BlueFin::GlSysLogEntry::PutF32(&v15, v13);
        BlueFin::GlSysLogEntry::PutU8(&v15, *(v8 + v10 - 157));
        ++v9;
        v8 = *(v7 + 8);
        v10 += 392;
      }

      while (v9 < *(v8 + 4));
    }

    BlueFin::GlSysLogEntry::PutU16(&v15, *(v8 + 39212));
    BlueFin::GlSysLogEntry::PutU8(&v15, *(*(v7 + 8) + 39216));
    BlueFin::GlSysLogEntry::PutS64(&v15, *(*(v7 + 8) + 39224));
    BlueFin::GlSysLogEntry::PutS64(&v15, *(*(v7 + 8) + 39240));
    BlueFin::GlSysLogEntry::PutD64(&v15, *(*(v7 + 8) + 39256));
    if (v5 == 3)
    {
      BlueFin::GlSysLogEntry::PutD64(&v15, *(*(v7 + 8) + 39264));
      BlueFin::GlSysLogEntry::PutD64(&v15, *(*(v7 + 8) + 39272));
    }

    BlueFin::GlSysLogEntry::PutU32(&v15, *(*(v7 + 8) + 39280));
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v15, v6, 4);
  }

  return 1;
}

uint64_t BlueFin::GlPeGnssDataLogger::Deserialize(BlueFin::GlPeGnssDataLogger *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 109)
  {
    return 0;
  }

  if (*(a2 + 12) - 4 < 0xFFFFFFFD)
  {
    return 0;
  }

  U8 = BlueFin::GlSysLogEntry::GetU8(a2);
  if (U8)
  {
    v5 = U8;
    for (i = 0; i < v5; ++i)
    {
      BlueFin::GlSysLogEntry::GetU32(a2);
      BlueFin::GlSysLogEntry::GetU8(a2);
      BlueFin::GlSysLogEntry::GetU8(a2);
      BlueFin::GlSysLogEntry::GetU32(a2);
      BlueFin::GlSysLogEntry::GetS64(a2);
      BlueFin::GlSysLogEntry::GetU32(a2);
      BlueFin::GlSysLogEntry::GetF32(a2);
      BlueFin::GlSysLogEntry::GetD64(a2);
      BlueFin::GlSysLogEntry::GetD64(a2);
      BlueFin::GlSysLogEntry::GetU8(a2);
      BlueFin::GlSysLogEntry::GetD64(a2);
      BlueFin::GlSysLogEntry::GetD64(a2);
      BlueFin::GlSysLogEntry::GetF32(a2);
      BlueFin::GlSysLogEntry::GetU8(a2);
      BlueFin::GlSysLogEntry::GetF32(a2);
      BlueFin::GlSysLogEntry::GetU8(a2);
    }
  }

  BlueFin::GlSysLogEntry::GetU16(a2);
  BlueFin::GlSysLogEntry::GetU8(a2);
  BlueFin::GlSysLogEntry::GetS64(a2);
  BlueFin::GlSysLogEntry::GetS64(a2);
  BlueFin::GlSysLogEntry::GetD64(a2);
  if (*(a2 + 12) > 2u)
  {
    BlueFin::GlSysLogEntry::GetD64(a2);
    BlueFin::GlSysLogEntry::GetD64(a2);
  }

  BlueFin::GlSysLogEntry::GetU32(a2);
  return 1;
}

uint64_t BlueFin::GlPeGnssNavDataLogger::SerializeImpl(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v18 = *MEMORY[0x29EDCA608];
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (v4 >= 2)
  {
    DeviceFaultNotify("glpe_reqhdlr_gnss_meas_data.cpp", 1719, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr_gnss_meas_data.cpp", 1719, "ucVersion >= 1 && ucVersion <= 1");
  }

  v6 = v3;
  v7 = v2;
  if (v3 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v14 = 110;
    v15 = v5;
    v16 = 0x1000000000000;
    v13 = &unk_2A1F092C0;
    v17 = v5;
    v8 = v2 + 8;
    BlueFin::GlSysLogEntry::PutU16(&v13, *(*(v2 + 8) + 4));
    BlueFin::GlSysLogEntry::PutU16(&v13, *(*v8 + 6));
    BlueFin::GlSysLogEntry::PutS16(&v13, *(*v8 + 8));
    BlueFin::GlSysLogEntry::PutS16(&v13, *(*v8 + 10));
    BlueFin::GlSysLogEntry::PutU32(&v13, *(*v8 + 12));
    v9 = *v8;
    v10 = *(*v8 + 12);
    if (v10 >= 5120 - HIWORD(v16))
    {
      DeviceFaultNotify("glpe_reqhdlr_gnss_meas_data.cpp", 1730, "SerializeImpl", "m_oNavData.ulDataLength < (GlIntU32) (MAX_SYS_LOG_ENTRY_LONG_SIZE - otEntry.DataSize())");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr_gnss_meas_data.cpp", 1730, "m_oNavData.ulDataLength < (GlIntU32) (MAX_SYS_LOG_ENTRY_LONG_SIZE - otEntry.DataSize())");
    }

    if (v10)
    {
      v11 = 0;
      do
      {
        BlueFin::GlSysLogEntry::PutU8(&v13, *(*(v9 + 16) + v11++));
        v9 = *(v7 + 8);
      }

      while (v11 < *(v9 + 12));
    }

    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v13, v6, 4);
  }

  return 1;
}

uint64_t BlueFin::GlPeRqHdlrGnssMeasData::ReportIqData(uint64_t a1)
{
  result = *(a1 + 8);
  v2 = *(result + 112);
  if (v2)
  {
    return v2();
  }

  return result;
}

void BlueFin::GlPeRqHdlrGnssMeasData::~GlPeRqHdlrGnssMeasData(BlueFin::GlPeRqHdlrGnssMeasData *this)
{
  BlueFin::GlPeRqHdlr::~GlPeRqHdlr(this);

  JUMPOUT(0x29C292F60);
}

uint64_t BlueFin::GlPeRqHdlrGpsData::Cleanup(BlueFin::GlPeRqHdlrGpsData *this)
{
  if ((*(this + 20) & 1) == 0 && (*(this + 19) & 1) == 0)
  {
    v2 = *(this + 1);
    v3 = *(v2 + 88);
    v4 = *(v2 + 80);
    if (v4)
    {
      v4(*(this + 1), 0, 0);
    }

    if (v3)
    {
      (*(**(*(this + 7) + 40) + 304))(__src);
      v58.i32[0] = LOBYTE(__src[1]);
      memcpy(v59, __src[0], 4 * LOBYTE(__src[1]));
      v58.i32[1] = v59[0];
      while (1)
      {
        BlueFin::GlSetIterator::operator++(&v58);
        if (v58.u8[1] == v58.u8[0])
        {
          break;
        }

        v5 = *(*(this + 7) + 40);
        v57 = v58.i8[2];
        v6 = (*(*v5 + 112))(v5, &v57, 1);
        if (v6)
        {
          v7 = v6;
          if ((*(*v6 + 152))(v6) == 1)
          {
            (*(*v7 + 272))(v7, __src);
            v8 = *(v2 + 80);
            if (v8)
            {
              v8(v2, 1, __src);
            }
          }
        }
      }

      v9 = *(v2 + 80);
      if (v9)
      {
        v9(v2, 1, 0);
      }
    }

    if ((v3 & 2) != 0)
    {
      v10 = 1;
      do
      {
        v11 = v10;
        if (BlueFin::GlPeAlmMgr::GetAsstAlm(*(*(this + 7) + 32), 0, v10, __src))
        {
          v12 = *(v2 + 80);
          if (v12)
          {
            v12(v2, 2, __src);
          }
        }

        ++v10;
      }

      while (v11 < 0x20);
      v13 = *(v2 + 80);
      if (v13)
      {
        v13(v2, 2, 0);
      }
    }

    if ((v3 & 4) != 0)
    {
      v14 = *(*(this + 7) + 8);
      v15 = v14[642];
      v16 = v15;
      if (v15 <= 0xFF9222FE)
      {
        v16 = v15;
      }

      v17.n128_f64[0] = BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(v14, 0, 1, __src, v16);
      v18 = HIDWORD(__src[1]);
      if (HIDWORD(__src[1]) != -1)
      {
        if (HIDWORD(__src[1]) <= 0xF4240)
        {
          v18 = 1000000;
        }

        HIDWORD(__src[1]) = v18;
      }

      v19 = *(v2 + 80);
      if (v19)
      {
        v19(v2, 4, __src, v17);
      }
    }

    if ((v3 & 8) != 0)
    {
      *__src = 0u;
      memset(v61, 0, sizeof(v61));
      v20 = *(*(this + 7) + 64);
      if (*(v20 + 44) == -1)
      {
        v21 = 0;
      }

      else
      {
        v21 = __src;
        if (__src != v20)
        {
          *v61 = *(v20 + 16);
          *__src = *v20;
          *&v61[8] = *(v20 + 24);
          v21 = __src;
        }
      }

      v22 = *(v2 + 80);
      if (v22)
      {
        v22(v2, 8, v21);
      }
    }

    if ((v3 & 0x10) != 0)
    {
      v23 = *(v2 + 80);
      if (v23)
      {
        v23(v2, 16, 0);
      }
    }

    if ((v3 & 0x20) != 0)
    {
      v24 = *(*(this + 7) + 8);
      v25 = *(v24 + 136);
      if (v25 == 2)
      {
        *__src = *(v24 + 160);
      }

      v26 = *(v2 + 80);
      if (v26)
      {
        if (v25 == 2)
        {
          v27 = __src;
        }

        else
        {
          v27 = 0;
        }

        v26(v2, 32, v27);
      }
    }

    if ((v3 & 0x40) != 0)
    {
      v68 = 7;
      v69 = 0;
      LODWORD(__src[0]) = -65536;
      __src[1] = 0;
      *v61 = 0;
      *&v61[8] = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0;
      v66 = -1;
      v28 = 1;
      v67 = 0;
      do
      {
        v29 = v28;
        if (BlueFin::GlPeAlmMgr::GetAlm(*(*(this + 7) + 32), 1u, v28, __src, 0, 1))
        {
          v34 = BlueFin::GlPeAlmanac::Export(__src, &v58, v30, v31, v32, v33);
          v35 = *(v2 + 80);
          if (v35)
          {
            v35(v2, 64, &v58, v34);
          }
        }

        ++v28;
      }

      while (v29 < 0x13);
      v36 = *(v2 + 80);
      if (v36)
      {
        v36(v2, 64, 0);
      }
    }

    if ((v3 & 0x80) != 0)
    {
      v68 = 7;
      v69 = 0;
      LODWORD(__src[0]) = -65536;
      __src[1] = 0;
      *v61 = 0;
      *&v61[8] = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0;
      v66 = -1;
      v37 = 1;
      v67 = 0;
      do
      {
        v38 = v37;
        if (BlueFin::GlPeAlmMgr::GetAlm(*(*(this + 7) + 32), 2u, v37, __src, 0, 1))
        {
          v43 = BlueFin::GlPeAlmanac::Export(__src, &v58, v39, v40, v41, v42);
          v44 = *(v2 + 80);
          if (v44)
          {
            v44(v2, 128, &v58, v43);
          }
        }

        ++v37;
      }

      while (v38 < 0x18);
      v45 = *(v2 + 80);
      if (v45)
      {
        v45(v2, 128, 0);
      }
    }

    if ((v3 & 0x100) != 0)
    {
      v68 = 7;
      v69 = 0;
      LODWORD(__src[0]) = -65536;
      __src[1] = 0;
      *v61 = 0;
      *&v61[8] = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0;
      v66 = -1;
      v46 = 1;
      v67 = 0;
      do
      {
        v47 = v46;
        if (BlueFin::GlPeAlmMgr::GetAlm(*(*(this + 7) + 32), 3u, v46, __src, 0, 1))
        {
          v52 = BlueFin::GlPeAlmanac::Export(__src, &v58, v48, v49, v50, v51);
          v53 = *(v2 + 80);
          if (v53)
          {
            v53(v2, 256, &v58, v52);
          }
        }

        ++v46;
      }

      while (v47 < 0xA);
      v54 = *(v2 + 80);
      if (v54)
      {
        v54(v2, 256, 0);
      }
    }

    v55 = *(v2 + 80);
    if (v55)
    {
      v55(v2, 0x8000, 0);
    }

    *(this + 19) = 1;
  }

  return BlueFin::GlPeRqHdlr::Cleanup(this);
}

void BlueFin::GlPeRqHdlrGpsData::~GlPeRqHdlrGpsData(BlueFin::GlPeRqHdlrGpsData *this)
{
  BlueFin::GlPeRqHdlr::~GlPeRqHdlr(this);

  JUMPOUT(0x29C292F70);
}

uint64_t BlueFin::GlPeRqHdlrMeas_SortPrns(BlueFin *this, double *a2, const void *a3)
{
  v3 = *(this + 2) - a2[2];
  if (v3 >= 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  if (v3 > 0.0)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

void BlueFin::GlPeMeasStatus::Start(BlueFin::GlPeMeasStatus *this, int a2)
{
  BlueFin::GlPeTowFilter::init((this + 4), *(*(this + 3) + 8), a2);
  v3 = *(*(this + 3) + 56);
  if (*(v3 + 26056) == 1 && (v4 = *(v3 + 48), v4 <= 8))
  {
    v5 = 0x1F4u >> v4;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  *(this + 9808) = v5 & 1;
}

uint64_t *BlueFin::GlPeMeasStatus::SetSatellitesDetectedAndQaAndStoreMeas(BlueFin::GlPeMeasStatus *this, BlueFin::GlPeMsmtMgr *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__src, unsigned __int8 a18, unsigned int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char *a29, __int128 a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, __int128 a35, __int128 a36, __int128 a37, __int128 a38, __int128 a39, __int128 a40, __int128 a41, __int128 a42, __int128 a43, __int128 a44, __int128 a45, __int128 a46, __int128 a47, __int128 a48, __int128 a49, __int128 a50, __int128 a51)
{
  v51 = MEMORY[0x2A1C7C4A8](this, a2);
  v53 = v52;
  v54 = v51;
  v56 = v55;
  v57 = 0;
  STACK[0x12B8] = *MEMORY[0x29EDCA608];
  v174 = *v52;
  *(v51 + 32) = xmmword_298A44E50;
  *&STACK[0xC10] = 0u;
  *&STACK[0xC00] = 0u;
  *&STACK[0xBF0] = 0u;
  *&STACK[0xBE0] = 0u;
  *&STACK[0xBD0] = 0u;
  *&STACK[0xBC0] = 0u;
  *&STACK[0xBB0] = 0u;
  *&STACK[0xBA0] = 0u;
  *&STACK[0xB90] = 0u;
  *&STACK[0xB80] = 0u;
  *&STACK[0xB70] = 0u;
  *&STACK[0xB60] = 0u;
  *&STACK[0xB50] = 0u;
  *&STACK[0xB40] = 0u;
  *&STACK[0xB30] = 0u;
  *&STACK[0xB20] = 0u;
  *&STACK[0xB10] = 0u;
  *&STACK[0xB00] = 0u;
  *&STACK[0xAF0] = 0u;
  *&STACK[0xAE0] = 0u;
  *&STACK[0xAD0] = 0u;
  *&STACK[0xAC0] = 0u;
  *&STACK[0xAB0] = 0u;
  *&STACK[0xAA0] = 0u;
  *&STACK[0xA90] = 0u;
  *&STACK[0xA80] = 0u;
  *&STACK[0xA70] = 0u;
  *&STACK[0xA60] = 0u;
  *&STACK[0xA50] = 0u;
  *&STACK[0xA40] = 0u;
  *&STACK[0xA30] = 0u;
  *&STACK[0xA20] = 0u;
  do
  {
    v58 = &STACK[0xA20] + v57;
    *v58 = 0;
    *(v58 + 1) = -1;
    *(v58 + 4) = 575;
    *(v58 + 2) = 0;
    v57 += 24;
  }

  while (v57 != 2184);
  v59 = 0;
  *&STACK[0x360] = 0u;
  *&STACK[0x370] = 0u;
  *&STACK[0x340] = 0u;
  *&STACK[0x350] = 0u;
  *&STACK[0x320] = 0u;
  *&STACK[0x330] = 0u;
  *&STACK[0x300] = 0u;
  *&STACK[0x310] = 0u;
  *&STACK[0x2E0] = 0u;
  *&STACK[0x2F0] = 0u;
  *&STACK[0x2C0] = 0u;
  *&STACK[0x2D0] = 0u;
  *&STACK[0x2A0] = 0u;
  *&STACK[0x2B0] = 0u;
  a51 = 0u;
  *&STACK[0x290] = 0u;
  a49 = 0u;
  a50 = 0u;
  a47 = 0u;
  a48 = 0u;
  a45 = 0u;
  a46 = 0u;
  a43 = 0u;
  a44 = 0u;
  a41 = 0u;
  a42 = 0u;
  a39 = 0u;
  a40 = 0u;
  a37 = 0u;
  a38 = 0u;
  a35 = 0u;
  a36 = 0u;
  do
  {
    v60 = &a35 + v59;
    *v60 = 0;
    *(v60 + 1) = -1;
    *(v60 + 4) = 575;
    *(v60 + 2) = 0;
    v59 += 24;
  }

  while (v59 != 2184);
  v61 = *(*(v51 + 24) + 48);
  BlueFin::GlSetBase::GlSetBase(&__src, &a19, 0x13u, v52 + 1);
  LOBYTE(a29) = a18;
  memcpy(&a30, __src, 4 * a18);
  WORD1(a29) = 0;
  BYTE1(a29) = 0;
  HIDWORD(a29) = a30;
  BlueFin::GlSetIterator::operator++(&a29);
  if (BYTE1(a29) == a29)
  {
    v63 = 0;
    v64 = 0;
    *(v54 + 44) = 100;
    *(v54 + 52) = 0xFFFF;
    goto LABEL_7;
  }

  v170 = v61;
  v66 = 0;
  v173 = 0;
  v64 = 0;
  v67 = -30.0;
  v68.f64[0] = NAN;
  v68.f64[1] = NAN;
  v171 = vnegq_f64(v68);
  do
  {
    if (WORD1(a29) >= 0x23FuLL)
    {
      goto LABEL_189;
    }

    v69 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(a29);
    v70 = *v69;
    v71 = v69[1];
    v72 = v69[1];
    LOBYTE(v181[0]) = v70;
    v181[1] = v71;
    LOWORD(vars0) = WORD1(a29);
    if (*(v54 + 9808) == 1)
    {
      if (v72 != 2)
      {
        goto LABEL_84;
      }
    }

    else if (v72)
    {
      goto LABEL_84;
    }

    MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(v53, v181, 0, 0);
    if (MeMeas)
    {
      v76 = MeMeas;
      v77 = *MeMeas;
      if (*MeMeas)
      {
        if (v77 < 0x21 || v77 - 52 <= 0xD)
        {
          if (*(v54 + 58) == 1 && ((*(*(v54 + 496) + ((LOBYTE(v181[0]) >> 3) & 0x1C)) >> (v181[0] & 0x1F)) & 1) == 0)
          {
            GlCustomLog(14, "Do not have aiding for SV %d\n", LOBYTE(v181[0]));
            goto LABEL_84;
          }

          if ((*(MeMeas + 3) & 0x8002) != 2)
          {
            goto LABEL_84;
          }

          *v74.i64 = *(MeMeas + 24) * 299792458.0;
          *v75.i64 = *v74.i64 + trunc(*v74.i64 * 2.32830644e-10) * -4294967300.0;
          v78 = vbslq_s8(v171, v75, v74);
          if (*v74.i64 > 4294967300.0)
          {
            v74.i64[0] = v78.i64[0];
          }

          if (*v74.i64 < -4294967300.0)
          {
            *v78.i64 = -*v74.i64;
            *v74.i64 = -(*v74.i64 - trunc(*v74.i64 * -2.32830644e-10) * -4294967300.0);
            *v74.i64 = -*vbslq_s8(v171, v74, v78).i64;
          }

          if (*v74.i64 < 0.0)
          {
            v79 = --*v74.i64;
          }

          else
          {
            v79 = *v74.i64;
          }

          v172 = v79;
          v80 = LOBYTE(v181[0]);
          BlueFin::GlArray::EnsureValidHandle(v54 + 456, LOBYTE(v181[0]));
          v81 = *(*(v54 + 472) + v80 - *(v54 + 492));
          v82 = BlueFin::GlArray::Add((v54 + 456), LOBYTE(v181[0]));
          if (v82)
          {
            if (v81 == 255)
            {
              *v82 = 0;
            }

            *v83.i32 = v76[14].f32[1] + 0.5;
            *v84.i32 = *v83.i32 + (truncf(*v83.i32 * 2.3283e-10) * -4295000000.0);
            v85.i64[0] = 0x8000000080000000;
            v85.i64[1] = 0x8000000080000000;
            v86 = vbslq_s8(v85, v84, v83);
            if (*v83.i32 > 4295000000.0)
            {
              v83.i32[0] = v86.i32[0];
            }

            if (*v83.i32 < -4295000000.0)
            {
              *v86.i32 = -*v83.i32;
              *v83.i32 = -(*v83.i32 - (truncf(*v83.i32 * -2.3283e-10) * -4295000000.0));
              *v83.i32 = -*vbslq_s8(v85, v83, v86).i32;
            }

            if (*v83.i32 < 0.0)
            {
              v87 = --*v83.i32;
            }

            else
            {
              LOBYTE(v87) = *v83.i32;
            }

            *v82 = v87;
            if (v87 >= 0x25u)
            {
              ++*(v54 + 40);
              LOBYTE(v87) = *v82;
            }

            if (v87 <= 0x1Bu)
            {
              ++*(v54 + 36);
              LOBYTE(v87) = *v82;
            }

            if (v67 < v87)
            {
              v67 = v87;
            }
          }

          if (v76->u8[0] - 1 <= 0x1F)
          {
            ++*(v54 + 32);
          }

          if (v76[2].i32[1] == 4)
          {
            *(v54 + 60) = 0;
            v88 = 1;
          }

          else
          {
            v89 = (*(v54 + 60))++ + 1;
            if (v89 != 5)
            {
              goto LABEL_51;
            }

            v88 = 0;
          }

          *(v54 + 59) = v88;
LABEL_51:
          v90 = BlueFin::GlPeMeasStatus::MsaLogic(v76);
          v91 = v90;
          if (v90 > 0.0)
          {
            v92 = &STACK[0xA20] + 3 * v64;
            if (v92 != v76)
            {
              *v92 = v76->i8[0];
              *(v92 + 1) = v76->i32[1];
              *(v92 + 4) = v76[1].i16[0];
            }

            *(v92 + 2) = v90;
            v93 = &a35 + 3 * v64;
            if (v93 != v76)
            {
              v93->i8[0] = v76->i8[0];
              v93->i32[1] = v76->i32[1];
              v93[1].i16[0] = v76[1].i16[0];
            }

            *&v93[2] = v76[14].f32[1];
            v64 = (v64 + 1);
          }

          v94 = v76->u8[0];
          BlueFin::GlArray::EnsureValidHandle(v54 + 616, v94);
          v95 = v76->u8[0];
          v96 = (v54 + 616);
          if (*(*(v54 + 632) + v94 - *(v54 + 652)) == 255)
          {
            v98 = BlueFin::GlArray::Add(v96, v95);
            if (!v98)
            {
              v167 = "potStoredMeas != nullptr";
              DeviceFaultNotify("glpe_reqhdlr_meas.cpp", 220, "SetSatellitesDetectedAndQaAndStoreMeas", "potStoredMeas != nullptr");
              v168 = "glpe_reqhdlr_meas.cpp";
              v169 = 220;
              goto LABEL_190;
            }

            v97 = v98;
            *(v98 + 40) = -1065353216;
          }

          else
          {
            v97 = BlueFin::GlArray::Get(v96, v95);
            if (!v97)
            {
              v167 = "potStoredMeas != nullptr";
              DeviceFaultNotify("glpe_reqhdlr_meas.cpp", 224, "SetSatellitesDetectedAndQaAndStoreMeas", "potStoredMeas != nullptr");
              v168 = "glpe_reqhdlr_meas.cpp";
              v169 = 224;
              goto LABEL_190;
            }
          }

          *(v97 + 48) = v174;
          *v97 = v76->i8[0];
          *(v97 + 8) = vcvtq_f64_f32(v76[13]);
          *(v97 + 24) = v76[8];
          *(v97 + 32) = v76[12].f32[0];
          *(v97 + 56) = v91;
          if ((v97 + 64) != v76)
          {
            *(v97 + 64) = v76->i8[0];
            *(v97 + 68) = v76->i32[1];
            *(v97 + 72) = v76[1].i16[0];
          }

          v99 = *(v97 + 52);
          if (v99 == -7200001 || (v174 - v99) < 0x7D1)
          {
            if (v99 != -7200001)
            {
              v100 = v76[2].i32[1];
              goto LABEL_73;
            }
          }

          else
          {
            *(v97 + 52) = -7200001;
          }

          v100 = v76[2].i32[1];
          if (v100 < 3 || (*(v97 + 52) = v174, v174 == -7200001))
          {
LABEL_77:
            ++v66;
            v173 += v172 * v172;
            v103 = *(*(v54 + 24) + 8);
            if (*(v103 + 2576) == 3 || (*(v103 + 2744) & 8) != 0)
            {
              v104 = v76[14].f32[1];
              if (*(v97 + 40) > v104)
              {
                goto LABEL_84;
              }
            }

            else
            {
              v104 = v76[14].f32[1];
            }

            *(v97 + 40) = v104;
            AidBySvId = BlueFin::GlPeSatAidInfo::GetAidBySvId(v170 + 32, v181);
            if (AidBySvId)
            {
              *(v97 + 80) = (*(AidBySvId + 11) - v76[13].f32[0]) * 1000000000.0;
            }

            else
            {
              *(v97 + 80) = 0;
            }

            goto LABEL_84;
          }

LABEL_73:
          v101 = v56;
          v102 = *(v97 + 44);
          if (v100 <= v102)
          {
            *(BlueFin::GlPeMsmtMgr::AccessMeMeas(v53, v181, 1, 0) + 5) = v102;
          }

          else
          {
            *(v97 + 44) = v100;
          }

          v56 = v101;
          goto LABEL_77;
        }
      }
    }

LABEL_84:
    BlueFin::GlSetIterator::operator++(&a29);
  }

  while (BYTE1(a29) != a29);
  if (v66 >= 3u)
  {
    v106.i32[0] = 20.0;
    v110 = 4.0;
    if (v66 >= 8u)
    {
      v111 = 1;
    }

    else
    {
      v111 = 2;
    }

    v112 = 1.0;
    if (v66 < 8u)
    {
      v112 = 2.0;
    }

    if (v66 == 5)
    {
      v113 = 4;
    }

    else
    {
      v113 = v111;
    }

    if (v66 != 5)
    {
      v110 = v112;
    }

    if (v66 >= 5u)
    {
      *v106.i32 = v110;
    }

    else
    {
      v113 = 20;
    }

    *(v54 + 44) = v113;
    v109 = (v54 + 52);
LABEL_102:
    v63 = v66;
    *v106.i32 = sqrtf(v173 / v66) * *v106.i32;
    *v108.i32 = *v106.i32 + (truncf(*v106.i32 * 2.3283e-10) * -4295000000.0);
    v114.i64[0] = 0x8000000080000000;
    v114.i64[1] = 0x8000000080000000;
    v108.i32[0] = vbslq_s8(v114, v108, v106).u32[0];
    if (*v106.i32 > 4295000000.0)
    {
      v106.i32[0] = v108.i32[0];
    }

    if (*v106.i32 < -4295000000.0)
    {
      *v107.i32 = -*v106.i32;
      *v106.i32 = -(*v106.i32 - (truncf(*v106.i32 * -2.3283e-10) * -4295000000.0));
      *v106.i32 = -*vbslq_s8(v114, v106, v107).i32;
    }

    if (*v106.i32 < 0.0)
    {
      v115 = --*v106.i32;
    }

    else
    {
      v115 = *v106.i32;
    }

    *v109 = v115;
    v65 = v66 < 7u;
  }

  else
  {
    *(v54 + 52) = 0xFFFF;
    v109 = (v54 + 52);
    *(v54 + 44) = 100;
    if (v66)
    {
      v106.i32[0] = 1120403456;
      goto LABEL_102;
    }

    v63 = 0;
LABEL_7:
    v65 = 1;
  }

  *(v54 + 49) = 0;
  if (*(v54 + 59) == 1 && *(v54 + 32) < 6)
  {
    goto LABEL_115;
  }

  v116 = v63 - *(v54 + 36) <= 4;
  v117 = !v65;
  if (!v116)
  {
    v117 = 1;
  }

  if ((v117 & 1) == 0)
  {
LABEL_115:
    *(v54 + 49) = 1;
  }

  if ((v64 - 1) <= 3)
  {
    BlueFin::GlSetBase::GlSetBase(&a29, &a30 + 1, 0x13u, v53 + 181);
    LOBYTE(v181[0]) = a30;
    memcpy(&vars0, a29, 4 * a30);
    HIWORD(v181[0]) = 0;
    BYTE1(v181[0]) = 0;
    v181[1] = vars0;
    BlueFin::GlSetIterator::operator++(v181);
    if (BYTE1(v181[0]) == LOBYTE(v181[0]))
    {
      v118 = v64;
LABEL_131:
      v64 = v118;
      goto LABEL_132;
    }

    v118 = v64;
    while (HIWORD(v181[0]) < 0x23FuLL)
    {
      v119 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * HIWORD(v181[0]);
      v120 = *v119;
      LODWORD(v119) = v119[1];
      LOBYTE(v178[0]) = v120;
      v179 = v119;
      v180 = HIWORD(v181[0]);
      v121 = BlueFin::GlPeMsmtMgr::AccessPropagatedMeMeas(v53, v178);
      v122 = v121;
      if (*(v54 + 58) != 1 || (v123 = *v121, BlueFin::GlArray::EnsureValidHandle(v54 + 456, v123), *(*(v54 + 472) + v123 - *(v54 + 492)) != 255))
      {
        v124 = BlueFin::GlPeMeasStatus::MsaLogic(v122);
        if (v124 > 0.0)
        {
          v125 = &STACK[0xA20] + 3 * v118;
          if (v125 != v122)
          {
            *v125 = *v122;
            *(v125 + 1) = *(v122 + 1);
            *(v125 + 4) = *(v122 + 4);
          }

          *(v125 + 2) = v124;
          v126 = &a35 + 24 * v118;
          if (v126 == v122)
          {
            v127 = *(v122 + 1);
          }

          else
          {
            *v126 = *v122;
            v127 = *(v122 + 1);
            *(v126 + 1) = v127;
            *(v126 + 4) = *(v122 + 4);
          }

          *(v126 + 2) = *(v122 + 29);
          v118 = (v118 + 1);
          GlCustomLog(14, "<PropMeasQa> PRN %02d Carrband %d\n", *v122, v127);
        }
      }

      BlueFin::GlSetIterator::operator++(v181);
      if (BYTE1(v181[0]) == LOBYTE(v181[0]))
      {
        goto LABEL_131;
      }
    }

LABEL_189:
    v167 = "usIndex < NUM_SIGNAL_IDS";
    DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
    v168 = "glsignalid.h";
    v169 = 578;
LABEL_190:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v168, v169, v167);
  }

LABEL_132:
  BlueFin::GlStdLib::QsortImpl(&STACK[0xA20], v64, 0x18u, BlueFin::GlPeRqHdlrMeas_SortPrns, &a29, v62);
  BlueFin::GlStdLib::QsortImpl(&a35, v64, 0x18u, BlueFin::GlPeRqHdlrMeas_SortPrns, &a29, v128);
  a29 = &a30 + 4;
  LOBYTE(a30) = 19;
  *(&a30 + 4) = 0u;
  *(&a31 + 4) = 0u;
  *(&a32 + 4) = 0u;
  *(&a33 + 4) = 0u;
  a34 = 0u;
  v129 = *(*(v54 + 24) + 8);
  v130 = v129[642];
  v131 = v130;
  if (v130 <= 0xFF9222FE)
  {
    v131 = v130;
  }

  v132 = BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(v129, 2u, 0, v178, v131);
  v133 = *(*(v54 + 24) + 8);
  v134 = *(v133 + 2576);
  v135 = v178[0];
  if (v134)
  {
    v136 = v178[0] >= 0x7E4u;
  }

  else
  {
    v136 = 1;
  }

  v137 = !v136;
  *v54 = v137;
  if (v134 != 3)
  {
    if ((v137 & ((*(v133 + 2744) & 8) >> 3) & 1) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_162;
  }

  if (v135 <= 0x7E3)
  {
LABEL_162:
    if (v64 >= 1)
    {
      v152 = 0;
      v153 = a29;
      v154 = &a29[4 * a30 - 4];
      v132 = 1000.0;
      do
      {
        v155 = 0;
        v156 = v154;
        do
        {
          if (*v156)
          {
            v157 = *v156 - (((*v156 >> 1) & 0x5B6DB6DB) + ((*v156 >> 2) & 0x9249249));
            v155 = ((v157 + (v157 >> 3)) & 0xC71C71C7) + v155 - 63 * (((v157 + (v157 >> 3)) & 0xC71C71C7) / 0x3F);
          }

          v156 -= 4;
        }

        while (v156 >= v153);
        if ((v155 & 0xFFF8) != 0 && *(&STACK[0xA20] + 3 * v152 + 2) >= 1000.0)
        {
          break;
        }

        v158 = *(&STACK[0xA20] + 12 * v152 + 4);
        *&v153[4 * (v158 >> 5)] |= 1 << v158;
        ++v152;
      }

      while (v152 != v64);
    }

    goto LABEL_182;
  }

LABEL_142:
  v138 = a29;
  if (v64 >= 1)
  {
    v139 = v64;
    v140 = &STACK[0xA28];
    do
    {
      v141 = *v140;
      v140 += 3;
      *&v138[4 * (v141 >> 5)] |= 1 << v141;
      --v139;
    }

    while (v139);
  }

  v142 = 0;
  v143 = &v138[4 * a30 - 4];
  do
  {
    if (*v143)
    {
      v144 = *v143 - (((*v143 >> 1) & 0x5B6DB6DB) + ((*v143 >> 2) & 0x9249249));
      v142 = ((v144 + (v144 >> 3)) & 0xC71C71C7) + v142 - 63 * (((v144 + (v144 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    v143 -= 4;
  }

  while (v143 >= v138);
  if ((v142 < 7u) | v137 & 1)
  {
    v145 = v142 > 6u;
    if (v64 >= 1 && ((v145 | v137) & 1) != 0)
    {
      v146 = &a35;
      v147 = BlueFin::GlArray::Get((v54 + 616), *(&a35 + 24 * (v64 - 1)));
      v148 = v64;
      while (1)
      {
        v150 = *v146;
        v146 = (v146 + 24);
        v149 = v150;
        v151 = BlueFin::GlArray::Get((v54 + 616), v150);
        if (!v151)
        {
          break;
        }

        LODWORD(v132) = *(v151 + 40);
        if (*&v132 < 18.0)
        {
          v132 = *(v147 + 80) - *(v151 + 80);
          if (v132 < 0.0)
          {
            v132 = -v132;
          }

          if (v132 > 12.0)
          {
            BlueFin::GlSetBase::Remove(&a29, *(v151 + 72));
            GlCustomLog(14, "<SvQa> Remove PRN %02d, Ghost SV detected\n", v149);
          }
        }

        if (!--v148)
        {
          goto LABEL_182;
        }
      }

      v167 = "potStoredMeas != nullptr";
      DeviceFaultNotify("glpe_reqhdlr_meas.cpp", 424, "SetSatellitesDetectedAndQaAndStoreMeas", "potStoredMeas != nullptr");
      v168 = "glpe_reqhdlr_meas.cpp";
      v169 = 424;
      goto LABEL_190;
    }
  }

  else
  {
    LOBYTE(v181[0]) = a30;
    memcpy(&vars0, v138, 4 * a30);
    HIWORD(v181[0]) = 0;
    BYTE1(v181[0]) = 0;
    v181[1] = vars0;
    BlueFin::GlSetIterator::operator++(v181);
    if (BYTE1(v181[0]) != LOBYTE(v181[0]))
    {
      while (HIWORD(v181[0]) < 0x23FuLL)
      {
        v159 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * HIWORD(v181[0]);
        v160 = *v159;
        LODWORD(v159) = v159[1];
        v175 = v160;
        v176 = v159;
        v177 = HIWORD(v181[0]);
        v161 = BlueFin::GlPeMsmtMgr::GetMeMeas(v53, &v175, 1, 0);
        v162 = v161;
        v163 = 0;
        v164 = &a29[4 * a30 - 4];
        do
        {
          if (*v164)
          {
            v165 = *v164 - (((*v164 >> 1) & 0x5B6DB6DB) + ((*v164 >> 2) & 0x9249249));
            v163 = ((v165 + (v165 >> 3)) & 0xC71C71C7) + v163 - 63 * (((v165 + (v165 >> 3)) & 0xC71C71C7) / 0x3F);
          }

          v164 -= 4;
        }

        while (v164 >= a29);
        if (v163 >= 7u && *(v161 + 5) == 4)
        {
          BlueFin::GlSetBase::Remove(&a29, *(v161 + 4));
          GlCustomLog(14, "<SvQa> Remove PRN %02d, high MP\n", *v162);
        }

        BlueFin::GlSetIterator::operator++(v181);
        if (BYTE1(v181[0]) == LOBYTE(v181[0]))
        {
          goto LABEL_182;
        }
      }

      goto LABEL_189;
    }
  }

LABEL_182:
  GlCustomLog(14, "<HdlrMeas::MeasQa><PreQaSort=", v132);
  BlueFin::GlSignalIdSet::GetSvIdSet(v181, &__src);
  BlueFin::GlSetBase::Print(v181, 0xEu);
  GlCustomLog(14, "\n");
  GlCustomLog(14, "<HdlrMeas::MeasQa><PostQaSort=");
  BlueFin::GlSignalIdSet::GetSvIdSet(v181, &a29);
  BlueFin::GlSetBase::Print(v181, 0xEu);
  GlCustomLog(14, "\n");
  LOBYTE(v181[0]) = a18;
  memcpy(&vars0, __src, 4 * a18);
  HIWORD(v181[0]) = 0;
  BYTE1(v181[0]) = 0;
  v181[1] = vars0;
  BlueFin::GlSetIterator::operator++(v181);
  if (BYTE1(v181[0]) != LOBYTE(v181[0]))
  {
    while (HIWORD(v181[0]) < 0x23Fu)
    {
      if (((*&a29[(HIWORD(v181[0]) >> 3) & 0x1FFC] >> (BYTE2(v181[0]) & 0x1F)) & 1) == 0)
      {
        GlCustomLog(14, "SVIDMSA %d is missing from fresh list\n", *(&BlueFin::GlSignalId::s_aotIndex2signalId + 2 * HIWORD(v181[0])));
      }

      BlueFin::GlSetIterator::operator++(v181);
      if (BYTE1(v181[0]) == LOBYTE(v181[0]))
      {
        return BlueFin::GlSignalIdSet::GetSvIdSet(v56, &a29);
      }
    }

    goto LABEL_189;
  }

  return BlueFin::GlSignalIdSet::GetSvIdSet(v56, &a29);
}

double BlueFin::GlPeMeasStatus::MsaLogic(unsigned __int8 *a1)
{
  v1 = *(a1 + 3);
  v2 = -1.0;
  if ((v1 & 0x8002) != 2)
  {
    return v2;
  }

  v4 = *(a1 + 5);
  v5 = *(a1 + 29);
  if (v5 >= 16.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = v4 - 3;
  if ((v1 & 0x100) == 0)
  {
    v8 = *(a1 + 27);
    if (v5 >= 24.0)
    {
      v10 = 0.0;
      v9 = 1.0;
      if (v8 < 0.000000014)
      {
        v9 = 0.0;
      }
    }

    else
    {
      v9 = 0.0;
      if (v8 >= 0.000000014)
      {
        v10 = ((fabsf(v5) / 1000.0) + 1.0);
      }

      else
      {
        v10 = 0.0;
      }
    }

    goto LABEL_28;
  }

  v11 = *(a1 + 12);
  v12 = fmodf(v11, 1000.0);
  v10 = 0.0;
  if (v12 > 50.0 && v12 < 950.0)
  {
    goto LABEL_11;
  }

  if (v5 < 24.0)
  {
    if (v11 >= 0xFA0)
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 0.0;
    }

    if (v11 >= 0xFA0)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = 1.0;
    }

    v9 = 0.0;
    goto LABEL_29;
  }

  if (v7 > 1)
  {
LABEL_11:
    v9 = 0.0;
LABEL_28:
    v13 = 0.0;
    v14 = 0.0;
LABEL_29:
    v16 = 0.0;
    v17 = 0.0;
    goto LABEL_30;
  }

  if (v11 >> 6 < 0x7D)
  {
    v9 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    if (v11 < 0xFA0)
    {
      goto LABEL_30;
    }

    v15 = *(a1 + 14);
LABEL_40:
    if (v15 <= 3)
    {
      v17 = 0.0;
    }

    else
    {
      v17 = 1.0;
    }

    v9 = 0.0;
    v16 = 0.0;
    goto LABEL_30;
  }

  v15 = *(a1 + 14);
  v16 = 1.0;
  v9 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v17 = 0.0;
  if (v15 <= 7)
  {
    goto LABEL_40;
  }

LABEL_30:
  v18 = v6;
  if (v4 == 4)
  {
    v19 = 1.0;
  }

  else
  {
    v19 = 0.0;
  }

  v20 = v10 * 10000000.0 + v6 * 100000000.0 + v19 * 1000000.0 + v14 * 100000.0;
  if (v7 >= 2)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = 1.0;
  }

  v22 = *(a1 + 24);
  v2 = v20 + v21 * 100000.0 + v13 * 10000.0 + v9 * 1000.0 + v17 * 100.0 + v16 * 10.0 + v22;
  GlCustomLog(14, "<HdlrMeas::MeasQa><PRN=%i,CN0=%.1f,o=%g,HMp=%.1f,MMp=%.1f,Vlss=%.1f,LssM1=%5.4f,LssTrk=%.1f,HssM1=%.1f,HssEpShort=%.1f,HssEpLong%.1f,Metric=%10g,EpCnt=%u>\n", *a1, v5, v22 * 1000000.0, v19, v21, v18, v10, v13, v9, v17, v16, v2, *(a1 + 12));
  return v2;
}

BOOL BlueFin::GlPeMeasStatus::PositionPossible(BlueFin::GlPeMeasStatus *this, BlueFin::GlPeMsmtMgr *a2)
{
  v2 = *(*(*(this + 3) + 8) + 2568);
  if (v2 <= 0xFF9222FE)
  {
    v3 = v2;
  }

  else
  {
    v3 = v2;
  }

  v15 = this + 456;
  v16 = *(this + 495) + 1;
  if (*(this + 494) <= v16)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v14 = BlueFin::GlArrayIterator::Next(&v15);
    v6 = *(*(this + 3) + 24);
    v17 = 7;
    v18 = 0;
    BlueFin::GlPeSvIdConverter::SvId2Gnss((v6 + 119744), &v14, &v17, v7, v8);
    v9 = v18;
    if (v18 - 64 >= 0xFFFFFFC1 && v17 != 1)
    {
      Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr((*(*(this + 3) + 24) + 384), v17);
      if (Mgr)
      {
        LOBYTE(v17) = v9;
        if (!(*(*Mgr + 64))(Mgr, &v17, 1, v3))
        {
          ++v5;
        }
      }
    }
  }

  while (v16 < v15[38]);
  if (v5 <= 3)
  {
    return 0;
  }

  v12 = *(this + 3);
  return *(*(v12 + 64) + 44) != -1 && *(*(v12 + 8) + 2576) != 0;
}

uint64_t BlueFin::GlPeMeasStatus::ComputeReferencePosition(BlueFin::GlPeMeasStatus *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double d0_0, double d1_0, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a9, uint64_t a10, __int128 a19, __int128 a20, uint64_t a21, uint64_t a22, char *a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, uint64_t a29, char *a30, __int128 a31, __int128 a32, uint64_t a33, __int128 a34, double a35, int a36, int a37, int a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, char *a43, __int128 a44, __int128 a45, uint64_t a46, char a47, uint64_t a48, void (**a49)(BlueFin::GlGpsTime *__hidden this), unint64_t *a50, uint64_t a51, uint64_t *a52, uint64_t a53, int a54, char a55, int a56, uint64_t a57, uint64_t a58, int a59, unsigned int a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  result = MEMORY[0x2A1C7C4A8](this, a2);
  STACK[0x2558] = *MEMORY[0x29EDCA608];
  if ((*(result + 57) & 1) == 0)
  {
    v63 = result;
    v64 = result + 24;
    (*(**(*(result + 24) + 40) + 120))(&STACK[0x288]);
    v65 = *(*v64 + 48);
    v66 = *(v65 + 9232);
    result = BlueFin::GlPeTimeManager::TimeKnown(*(*v64 + 8), 0, 0x200B20u);
    if (result)
    {
      if (!*STACK[0x288])
      {
        v96 = LOBYTE(STACK[0x290]);
        if (v96 < 2)
        {
          return result;
        }

        v97 = v96 - 1;
        v98 = (STACK[0x288] + 4);
        while (!*v98++)
        {
          if (!--v97)
          {
            return result;
          }
        }
      }

      if (v66 < 10.0)
      {
        *(v63 + 57) = 1;
        BlueFin::GlSatAidInfo::GlSatAidInfo(&STACK[0x2C0], (v65 + 9216));
        a68 = &a69 + 4;
        LOBYTE(a69) = 19;
        *(&a69 + 4) = 0u;
        *(&a70 + 4) = 0u;
        *&STACK[0x25C] = 0u;
        *&STACK[0x26C] = 0u;
        v67 = 91;
        *&STACK[0x278] = 0u;
        v68 = STACK[0x2528];
        do
        {
          v70 = *v68;
          v68 += 96;
          v69 = v70;
          if ((v70 - 1) > 0xBB)
          {
            break;
          }

          v71 = BlueFin::GlSvId::s_aucSvId2gnss[v69];
          v72 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v71] == 255 ? 575 : (BlueFin::GlSignalId::s_ausGnss2signalId[v71] + v69 - BlueFin::GlSvId::s_aucGnss2minSvId[v71]);
          *(&a69 + (v72 >> 5) + 1) |= 1 << v72;
          --v67;
        }

        while (v67);
        if (LODWORD(STACK[0x2E4]) == -7200001)
        {
          BlueFin::GlPeTimeManager::GetTime(*(*(v63 + 24) + 8), 1, &a19);
          v100 = &off_2A1F0B5F0;
          v101 = 0;
          BlueFin::GlPeGnssTime::GetGps(&a19, &v100);
          v73.i64[0] = STACK[0x2C8];
          BlueFin::GlWeekTowTime::resolveTowAmbiguity(&v106, &v100, v73, v74);
          a50 = v106;
          a49 = &off_2A1F0B5F0;
          Time = BlueFin::GlPeTimeManager::GetTime(*(*(v63 + 24) + 8), &a49, 0, &a19);
          v76.i64[0] = a20;
          LODWORD(STACK[0x2E4]) = BlueFin::GlPeTimeMgrUtil::DoubleToLms(Time, v76, v77, v78, v79, v80);
        }

        v81 = *(v63 + 24);
        v82 = *(v81 + 16);
        v83 = BlueFin::GlPeKF::InFlightMode(v82);
        v84 = *(*(v81 + 24) + 120012);
        a66 = 0;
        a65 = 0;
        a67 = 0xC158548D40000000;
        v85 = *(v82 + 14346);
        *&a19 = &a19 + 12;
        BYTE8(a19) = 8;
        *(&a19 + 12) = 0u;
        *(&a20 + 12) = 0u;
        if (v83)
        {
          v86 = 1297;
        }

        else
        {
          v86 = 273;
        }

        if (v84 == 1)
        {
          v87 = v86 | 0x2000;
        }

        else
        {
          v87 = v86;
        }

        if (BlueFin::GlPeFirstFix::m_bReqTimeOutReached)
        {
          v87 |= 0x100000u;
        }

        a49 = &a68;
        a50 = &STACK[0x2C0];
        a51 = 0;
        a52 = &a65;
        a53 = 0;
        a54 = v85;
        a55 = 1;
        a56 = v87;
        a57 = 0;
        BlueFin::GlSetBase::GlSetBase(&a58, &a60, 8u, &a19);
        *(&a20 + 10) = 0u;
        a19 = 0u;
        a20 = 0u;
        a23 = &a24 + 4;
        LOBYTE(a24) = 19;
        *(&a24 + 4) = 0u;
        *(&a25 + 4) = 0u;
        *(&a26 + 4) = 0u;
        *(&a27 + 4) = 0u;
        *(&a28 + 4) = 0u;
        a30 = &a31 + 4;
        LOBYTE(a31) = 8;
        *(&a31 + 4) = 0u;
        *(&a32 + 4) = 0u;
        a34 = xmmword_298A41DA0;
        a35 = COERCE_DOUBLE(vdup_n_s32(0x42C60000u));
        a36 = 1120272384;
        a38 = 0;
        a39 = 0;
        a40 = 0;
        a42 = 0;
        a41 = 0;
        a43 = &a44 + 4;
        LOBYTE(a44) = 8;
        *(&a44 + 4) = 0u;
        *(&a45 + 4) = 0u;
        a47 = 0;
        result = BlueFin::GlPeLsq::LsPos(*(*(v63 + 24) + 16) + 12160, &a49, &a19, a35, 0);
        if (result)
        {
          v106 = a19;
          vars0 = *(&a19 + 8);
          LODWORD(v101) = 419;
          v102 = &BlueFin::GlPeCityFine::m_aotRegions;
          LODWORD(v103) = 102;
          v104 = &BlueFin::GlPeCityFine::m_aotIndex;
          LODWORD(v105) = -39;
          v100 = &unk_2A1F12398;
          v88 = *&a19;
          v89 = *(&a19 + 1);
          Region = BlueFin::GlPeLatLonRegionSet::findRegion(&v100, v88, v89);
          if ((Region & 0x80000000) == 0)
          {
            *(&vars0 + 1) = ((v102[6 * Region + 5] >> 4) - 100);
          }

          v92 = *(*(v63 + 24) + 64);
          v93 = SLODWORD(STACK[0x2E4]);
          v94 = *(v92 + 40);
          if (LODWORD(STACK[0x2E4]) <= 0xFF9222FE)
          {
            v93 = LODWORD(STACK[0x2E4]);
          }

          v91.i64[0] = 0xC0ED4C0000000000;
          v95 = v93 + -60000.0;
          LODWORD(STACK[0x2A0]) = 2;
          *&STACK[0x2A8] = v95;
          STACK[0x2B8] = 0;
          STACK[0x2B0] = &off_2A1F0B5F0;
          return BlueFin::GlPeAsstPosMgr::processAssistance(v92, &v106, v94, 2, &STACK[0x2A0], 0, 0, v95, v91);
        }
      }
    }
  }

  return result;
}