void sub_1D0E43204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t raven::RavenDeltaVIOEstimateActiveObject::InterpolateVIOdata(cnprint::CNPrinter *a1, double *a2, double *a3, uint64_t *a4, uint64_t a5)
{
  *v52 = *a3;
  if (!sub_1D0B7C8AC(a2, v52))
  {
    *v48 = *a4;
    if (!sub_1D0B7CF88(a2, v48))
    {
      v13 = *a4;
      v12 = a4[1];
      *v52 = *a4;
      *&v52[8] = v12;
      v14 = *a3;
      v15 = *(a3 + 1);
      *v48 = *a3;
      *&v48[8] = v15;
      v16 = CNTimeSpan::operator-(v52, v48, v10, v11);
      v18 = v17 + v16;
      *v19.i64 = fabs(v18);
      v20.i64[0] = 0x3CB0000000000000;
      if (*v19.i64 >= 2.22044605e-16)
      {
        *v52 = v13;
        *&v52[8] = v12;
        *v21.i64 = CNTimeSpan::operator-(v52, a2, v19, v20);
        *v23.i64 = v22 + *v21.i64;
        v24 = (v22 + *v21.i64) / v18;
        *v52 = v14;
        *&v52[8] = v15;
        v25 = CNTimeSpan::operator-(a2, v52, v23, v21);
        v27 = (v26 + v25) / v18;
        v53 = 0x100000003;
        *&v28.f64[1] = 0x300000003;
        *&v52[8] = xmmword_1D0E7DCC0;
        *v52 = &unk_1F4CDEB28;
        v54 = v55;
        v28.f64[0] = v24;
        sub_1D0B8930C((a3 + 29), v52, v28);
        v49 = 0x100000003;
        *&v29.f64[1] = 0x300000003;
        *&v48[8] = xmmword_1D0E7DCC0;
        *v48 = &unk_1F4CDEB28;
        v50 = v51;
        v29.f64[0] = v27;
        sub_1D0B8930C((a4 + 29), v48, v29);
        v65 = 0x100000003;
        v63 = &unk_1F4CDEB28;
        v64 = xmmword_1D0E7DCC0;
        v66 = &v67;
        sub_1D0B88838(v52, v48, &v63);
        sub_1D0B894B0(a5 + 232, &v63);
        v61 = 0uLL;
        *&v62 = 0;
        *(&v62 + 1) = 0x3FF0000000000000;
        if (!cnrotation::Slerp((a3 + 25), (a4 + 25), &v61, v27, 8))
        {
          if ((a5 + 200) != &v61)
          {
            v30 = v62;
            *(a5 + 200) = v61;
            *(a5 + 216) = v30;
          }

          cnrotation::Inv(v52, (a3 + 25));
          cnrotation::Cat((a5 + 200), v52, &v57);
          cnrotation::CNRotation::RotationMatrix(v47, &v57);
          v49 = 0x300000003;
          *&v48[8] = xmmword_1D0E76C10;
          *v48 = &unk_1F4CD5DD0;
          v50 = v51;
          sub_1D0B89390(v47, (a3 + 37), v48);
          v31 = sqrt(v58 * v58 + v57 * v57 + v59 * v59 + v60 * v60);
          if (fabs(v31) >= 2.22044605e-16)
          {
            v33 = -v57 / v31;
            v34 = -v58 / v31;
            v35 = -v59 / v31;
            v32 = v60 / v31;
          }

          else
          {
            v32 = 1.0;
            v33 = 0.0;
            v34 = 0.0;
            v35 = 0.0;
          }

          *v45 = v33;
          *&v45[1] = v34;
          *&v45[2] = v35;
          *&v45[3] = v32;
          cnrotation::CNRotation::RotationMatrix(v46, v45);
          v53 = 0x300000003;
          *&v52[8] = xmmword_1D0E76C10;
          *v52 = &unk_1F4CD5DD0;
          v54 = v55;
          sub_1D0B89390(v48, v46, v52);
          if (cntransformation::CNRigidTransformation::SetPrr(a5 + 200, v52))
          {
            cnrotation::CNRotation::RotationMatrix(v48, &v57);
            v53 = 0x300000003;
            *&v52[8] = xmmword_1D0E76C10;
            *v52 = &unk_1F4CD5DD0;
            v54 = v55;
            sub_1D0B89390(v48, (a3 + 65), v52);
            if (*&v52[8] == 3 && *&v52[12] == 3)
            {
              sub_1D0B894B0(a5 + 520, v52);
              *(a5 + 632) = 1;
            }

            v53 = 0x300000003;
            *v52 = &unk_1F4CD5DD0;
            v54 = v55;
            *&v52[8] = xmmword_1D0E76C10;
            memset(v55, 0, sizeof(v55));
            v56 = 0;
            if (raven::RavenDeltaVIOEstimateActiveObject::ComputeSigmaCorrelationMatrixFromCovariance(a1, (a3 + 51), v52))
            {
              sub_1D0BFA9C4(3, 3, v48);
              if (raven::RavenDeltaVIOEstimateActiveObject::ComputeSigmaCorrelationMatrixFromCovariance(a1, (a4 + 51), v48))
              {
                v36.f64[0] = v24;
                sub_1D0C51778(v52, v46, v36);
                v37.f64[0] = v27;
                sub_1D0C51778(v48, v45, v37);
                sub_1D0D4C358(v46, v45, v47);
                sub_1D0BFA9C4(3, 3, v46);
                result = raven::RavenDeltaVIOEstimateActiveObject::ComputeCovarianceFromSigmaCorrelationMatrix(a1, v47, v46);
                if (!result)
                {
                  return result;
                }

                if (cntransformation::CNRigidTransformation::SetPpp(a5 + 200, v46))
                {
                  if (*(a3 + 1081) == 1 && *(a4 + 1081) == 1)
                  {
                    v39.f64[0] = v24;
                    sub_1D0C51FB4((a3 + 84), &v43, v39);
                    v40.f64[0] = v27;
                    sub_1D0C51FB4((a4 + 84), v42, v40);
                    sub_1D0D6F584(&v43, v42, v45);
                    sub_1D0B894B0(a5 + 672, v45);
                    v43 = 0uLL;
                    *&v44 = 0;
                    *(&v44 + 1) = 0x3FF0000000000000;
                    if (cnrotation::Slerp((a3 + 80), (a4 + 80), &v43, v27, 8))
                    {
                      return 0;
                    }

                    if ((a5 + 640) != &v43)
                    {
                      v41 = v44;
                      *(a5 + 640) = v43;
                      *(a5 + 656) = v41;
                    }
                  }

                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

BOOL raven::RavenDeltaVIOEstimateActiveObject::IsVIOEstimateSensible(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 440);
  v4 = (*v2 < 0 || ((*v2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*v2 - 1) > 0xFFFFFFFFFFFFELL;
  result = 0;
  if (!v4)
  {
    v6 = *(a2 + 428);
    v7 = &v2[v6];
    v8 = v7[1];
    v9 = v8 < 0 || ((v8 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
    if (!v9 || (v8 - 1) <= 0xFFFFFFFFFFFFELL)
    {
      v11 = &v2[2 * v6];
      v12 = v11[2];
      v13 = v12 < 0 || ((v12 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
      if ((!v13 || (v12 - 1) <= 0xFFFFFFFFFFFFELL) && (*v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v2[((2 * v6) | 1)] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v35 = INFINITY;
        v32 = 0x300000003;
        v30 = &unk_1F4CD5DD0;
        v31 = xmmword_1D0E76C10;
        v33 = &v34;
        v48 = 0x100000003;
        v47 = xmmword_1D0E7DCC0;
        v46 = &unk_1F4CDEAA0;
        v49 = &v50;
        v43 = 0x100000003;
        v42 = xmmword_1D0E7DCC0;
        v41 = &unk_1F4CDEAA0;
        v44 = &v45;
        v38 = 0x10000000CLL;
        v37 = xmmword_1D0E83DD0;
        v36 = &unk_1F4CDFFF8;
        v39 = &v40;
        v16 = sub_1D0BA5174(a2 + 408, &v46, &v41, &v36, &v30);
        v35 = v16;
        if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v16 <= *(a1 + 10128))
        {
          v17 = *(a2 + 328);
          v18 = *v17 < 0 || ((*v17 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
          if (!v18 || (*v17 - 1) <= 0xFFFFFFFFFFFFELL)
          {
            v20 = *(a2 + 316);
            v21 = &v17[v20];
            v22 = v21[1];
            v23 = v22 < 0 || ((v22 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
            if (!v23 || (v22 - 1) <= 0xFFFFFFFFFFFFELL)
            {
              v25 = &v17[2 * v20];
              v26 = v25[2];
              v27 = v26 < 0 || ((v26 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
              if ((!v27 || (v26 - 1) <= 0xFFFFFFFFFFFFELL) && (*v21 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v17[((2 * v20) | 1)] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*v25 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                sub_1D0D4BAFC(a2 + 296, &v35, &v36);
                sub_1D0B894B0(&v30, &v36);
                if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v35 <= *(a1 + 10128))
                {
                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D0E43B8C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v6;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v9;
  *(a1 + 80) = v7;
  *(a1 + 96) = v8;
  v10 = *(a2 + 144);
  v11 = *(a2 + 160);
  v12 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v11;
  *(a1 + 176) = v12;
  *(a1 + 144) = v10;
  if (a1 != a2)
  {
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
  }

  sub_1D0B894B0(a1 + 232, a2 + 232);
  sub_1D0B894B0(a1 + 296, a2 + 296);
  sub_1D0B894B0(a1 + 408, a2 + 408);
  sub_1D0B894B0(a1 + 520, a2 + 520);
  *(a1 + 632) = *(a2 + 632);
  if (a1 != a2)
  {
    *(a1 + 640) = *(a2 + 640);
    *(a1 + 656) = *(a2 + 656);
  }

  sub_1D0B894B0(a1 + 672, a2 + 672);
  sub_1D0B894B0(a1 + 736, a2 + 736);
  sub_1D0B894B0(a1 + 848, a2 + 848);
  sub_1D0B894B0(a1 + 960, a2 + 960);
  *(a1 + 1072) = *(a2 + 1072);
  v13 = *(a2 + 1080);
  *(a1 + 1082) = *(a2 + 1082);
  *(a1 + 1080) = v13;
  return a1;
}

void raven::RavenDeltaVIOEstimateActiveObject::Reset(raven::RavenDeltaVIOEstimateActiveObject *this)
{
  *(this + 240) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 264) = 0;
  if (*(this + 280) == 1)
  {
    *(this + 280) = 0;
  }

  if (*(this + 296) == 1)
  {
    *(this + 296) = 0;
  }

  if (*(this + 312) == 1)
  {
    *(this + 312) = 0;
  }

  if (*(this + 328) == 1)
  {
    *(this + 328) = 0;
  }

  if (*(this + 352) == 1)
  {
    *(this + 352) = 0;
  }

  if (*(this + 368) == 1)
  {
    *(this + 368) = 0;
  }

  v16 = 0x100000003;
  v14 = &unk_1F4CDEB28;
  v15 = xmmword_1D0E7DCC0;
  v17 = &v18;
  v18 = 0uLL;
  *&v19 = 0;
  sub_1D0B894B0(this + 376, &v14);
  if (*(this + 448) == 1)
  {
    *(this + 448) = 0;
  }

  v2 = this + 5808;
  if (*(this + 464) == 1)
  {
    *(this + 464) = 0;
  }

  *(this + 480) = 0;
  *(this + 59) = 0;
  if (*(this + 3144) == 1)
  {
    *(this + 3144) = 0;
  }

  if (*v2 == 1)
  {
    *v2 = 0;
  }

  v3 = this + 10040;
  if (*(this + 6920) == 1)
  {
    raven::VLLocalizationEvent::~VLLocalizationEvent((this + 5816));
    *(this + 6920) = 0;
  }

  if (*(this + 8016) == 1)
  {
    *(this + 986) = &unk_1F4CD5E28;
    *(this + 972) = &unk_1F4CD5E28;
    *(this + 958) = &unk_1F4CD5E28;
    *(this + 950) = &unk_1F4CD5E28;
    *(this + 931) = &unk_1F4CD5E28;
    *(this + 917) = &unk_1F4CD5E28;
    *(this + 903) = &unk_1F4CD5E28;
    *(this + 895) = &unk_1F4CD5E28;
    *(this + 8016) = 0;
  }

  sub_1D0D2D7D8(this + 8024);
  sub_1D0D2D7D8(this + 8464);
  sub_1D0D2D7D8(this + 8904);
  sub_1D0D2D7D8(this + 9344);
  v16 = 0x100000003;
  v14 = &unk_1F4CDEB28;
  v15 = xmmword_1D0E7DCC0;
  v17 = &v18;
  v18 = 0uLL;
  *&v19 = 0;
  sub_1D0B894B0(this + 9784, &v14);
  v16 = 0x100000003;
  v14 = &unk_1F4CDEB28;
  v15 = xmmword_1D0E7DCC0;
  v17 = &v18;
  v18 = 0uLL;
  *&v19 = 0;
  sub_1D0B894B0(this + 9848, &v14);
  v16 = 0x300000003;
  v14 = &unk_1F4CD5DD0;
  v17 = &v18;
  v15 = xmmword_1D0E76C10;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  sub_1D0B894B0(this + 9912, &v14);
  if (*v3 == 1)
  {
    *v3 = 0;
  }

  if (*(this + 10064) == 1)
  {
    *(this + 10064) = 0;
  }

  v4 = *(this + 1261);
  v5 = *(this + 1262);
  if (v5 == v4)
  {
    v9 = (this + 10120);
    v5 = *(this + 1261);
  }

  else
  {
    v6 = *(this + 1264);
    v7 = &v4[v6 >> 4];
    v8 = *v7 + 1088 * (v6 & 0xF);
    v9 = (this + 10120);
    v10 = *(v4 + (((*(this + 1265) + v6) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * ((*(this + 2530) + v6) & 0xF);
    if (v8 != v10)
    {
      do
      {
        sub_1D0E44254(v8);
        v8 += 1088;
        if (v8 - *v7 == 17408)
        {
          v11 = v7[1];
          ++v7;
          v8 = v11;
        }
      }

      while (v8 != v10);
      v5 = *(this + 1262);
      v4 = *(this + 1261);
    }
  }

  *v9 = 0;
  v12 = v5 - v4;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v4);
      v4 = (*(this + 1261) + 8);
      *(this + 1261) = v4;
      v12 = (*(this + 1262) - v4) >> 3;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 8;
    goto LABEL_42;
  }

  if (v12 == 2)
  {
    v13 = 16;
LABEL_42:
    *(this + 1264) = v13;
  }

  *(this + 128) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0x7FF8000000000000;
  *(this + 19) = 0;
  *(this + 105) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0x7FF8000000000000;
  cnframework::ActiveObjectBase::ResetEventQueue(this);
}

void sub_1D0E441A8(void *a1)
{
  sub_1D0DC7490(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t **sub_1D0E441E0(uint64_t **result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0xF0F0F0F0F0F0F0FLL * ((result[1] - **result) >> 6);
    if (v3 < 1)
    {
      v7 = 15 - v3;
      v8 = (v2 - 8 * (v7 >> 4));
      *result = v8;
      v5 = *v8;
      v6 = ~v7 & 0xF;
    }

    else
    {
      v4 = (v2 + ((v3 >> 1) & 0x7FFFFFFFFFFFFFF8));
      *result = v4;
      v5 = *v4;
      v6 = v3 & 0xF;
    }

    result[1] = (v5 + 1088 * v6);
  }

  return result;
}

void *sub_1D0E44254(void *result)
{
  result[120] = &unk_1F4CD5E28;
  result[106] = &unk_1F4CD5E28;
  result[92] = &unk_1F4CD5E28;
  result[84] = &unk_1F4CD5E28;
  result[65] = &unk_1F4CD5E28;
  result[51] = &unk_1F4CD5E28;
  result[37] = &unk_1F4CD5E28;
  result[29] = &unk_1F4CD5E28;
  return result;
}

BOOL sub_1D0E44358(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2 * (v1 - v2) - 1;
  }

  v4 = v3 - (a1[5] + a1[4]);
  if (v4 >= 0x20)
  {
    operator delete(*(v1 - 8));
    a1[2] -= 8;
  }

  return v4 > 0x1F;
}

uint64_t *sub_1D0E443C0(uint64_t *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a2;
  if (a2 != a3)
  {
    v30 = result;
    v8 = *a4;
    v9 = a3;
    while (1)
    {
      v10 = 0xF0F0F0F0F0F0F0F1 * ((a5 - v8) >> 6);
      if ((0xF0F0F0F0F0F0F0F1 * ((v9 - v7) >> 6)) >= v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0xF0F0F0F0F0F0F0F1 * ((v9 - v7) >> 6);
      }

      if (v11)
      {
        v12 = 0;
        do
        {
          v13 = a5 + v12;
          v14 = v9 + v12;
          v15 = a5 + v12 - 1088;
          *v15 = *(v9 + v12 - 1088);
          v16 = *(v9 + v12 - 1072);
          v17 = *(v9 + v12 - 1056);
          v18 = *(v9 + v12 - 1024);
          *(v15 + 48) = *(v9 + v12 - 1040);
          *(v15 + 64) = v18;
          *(v15 + 16) = v16;
          *(v15 + 32) = v17;
          v19 = *(v9 + v12 - 1008);
          v20 = *(v9 + v12 - 992);
          v21 = *(v9 + v12 - 960);
          *(v15 + 112) = *(v9 + v12 - 976);
          *(v15 + 128) = v21;
          *(v15 + 80) = v19;
          *(v15 + 96) = v20;
          v22 = *(v9 + v12 - 944);
          v23 = *(v9 + v12 - 928);
          v24 = *(v9 + v12 - 912);
          *(v15 + 192) = *(v9 + v12 - 896);
          *(v15 + 160) = v23;
          *(v15 + 176) = v24;
          *(v15 + 144) = v22;
          if (v9 != a5)
          {
            *(v13 - 888) = *(v14 - 888);
            *(v13 - 872) = *(v14 - 872);
          }

          sub_1D0B894B0(v13 - 856, v14 - 856);
          sub_1D0B894B0(v13 - 792, v14 - 792);
          sub_1D0B894B0(v13 - 680, v14 - 680);
          sub_1D0B894B0(v13 - 568, v14 - 568);
          *(v13 - 456) = *(v14 - 456);
          if (v14 != v13)
          {
            *(a5 + v12 - 448) = *(v9 + v12 - 448);
            *(a5 + v12 - 432) = *(v9 + v12 - 432);
          }

          v25 = a5 + v12;
          sub_1D0B894B0(a5 + v12 - 416, v9 + v12 - 416);
          sub_1D0B894B0(a5 + v12 - 352, v9 + v12 - 352);
          sub_1D0B894B0(a5 + v12 - 240, v9 + v12 - 240);
          sub_1D0B894B0(a5 + v12 - 128, v9 + v12 - 128);
          *(v25 - 16) = *(v9 + v12 - 16);
          v26 = *(v9 + v12 - 8);
          *(v25 - 6) = *(v9 + v12 - 6);
          *(v25 - 8) = v26;
          v12 -= 1088;
        }

        while (-1088 * v11 != v12);
        a5 += v12;
      }

      v9 -= 1088 * v11;
      if (v9 == v7)
      {
        break;
      }

      v27 = *--v6;
      v8 = v27;
      a5 = v27 + 17408;
    }

    if (*v6 + 17408 == a5)
    {
      v28 = v6[1];
      ++v6;
      a5 = v28;
    }

    v7 = a3;
    result = v30;
  }

  *result = v7;
  result[1] = v6;
  result[2] = a5;
  return result;
}

uint64_t *sub_1D0E445EC(uint64_t *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a2;
  if (a2 == a3)
  {
    v12 = a2;
    goto LABEL_19;
  }

  v28 = result;
  v9 = *a4;
  while (1)
  {
    v10 = 0xF0F0F0F0F0F0F0F1 * ((v9 - a5 + 17408) >> 6);
    if ((0xF0F0F0F0F0F0F0F1 * ((a3 - v7) >> 6)) < v10)
    {
      v10 = 0xF0F0F0F0F0F0F0F1 * ((a3 - v7) >> 6);
    }

    if (v10)
    {
      break;
    }

LABEL_14:
    v26 = v6[1];
    ++v6;
    v9 = v26;
    a5 = v26;
  }

  v11 = 0;
  v12 = v7 + 1088 * v10;
  do
  {
    v13 = v7 + v11;
    v14 = a5 + v11;
    *v14 = *(v7 + v11);
    v15 = *(v7 + v11 + 16);
    v16 = *(v7 + v11 + 32);
    v17 = *(v7 + v11 + 64);
    *(v14 + 48) = *(v7 + v11 + 48);
    *(v14 + 64) = v17;
    *(v14 + 16) = v15;
    *(v14 + 32) = v16;
    v18 = *(v7 + v11 + 80);
    v19 = *(v7 + v11 + 96);
    v20 = *(v7 + v11 + 128);
    *(v14 + 112) = *(v7 + v11 + 112);
    *(v14 + 128) = v20;
    *(v14 + 80) = v18;
    *(v14 + 96) = v19;
    v21 = *(v7 + v11 + 144);
    v22 = *(v7 + v11 + 160);
    v23 = *(v7 + v11 + 176);
    *(v14 + 192) = *(v7 + v11 + 192);
    *(v14 + 160) = v22;
    *(v14 + 176) = v23;
    *(v14 + 144) = v21;
    if (a5 != v7)
    {
      *(v14 + 200) = *(v13 + 200);
      *(v14 + 216) = *(v13 + 216);
    }

    sub_1D0B894B0(v14 + 232, v13 + 232);
    sub_1D0B894B0(v14 + 296, v13 + 296);
    sub_1D0B894B0(v14 + 408, v13 + 408);
    sub_1D0B894B0(v14 + 520, v13 + 520);
    *(v14 + 632) = *(v13 + 632);
    if (v14 != v13)
    {
      v24 = a5 + v11;
      *(v24 + 640) = *(v7 + v11 + 640);
      *(v24 + 656) = *(v7 + v11 + 656);
    }

    sub_1D0B894B0(v14 + 672, v13 + 672);
    sub_1D0B894B0(v14 + 736, v13 + 736);
    sub_1D0B894B0(v14 + 848, v13 + 848);
    sub_1D0B894B0(v14 + 960, v13 + 960);
    *(v14 + 1072) = *(v13 + 1072);
    v25 = *(v13 + 1080);
    *(v14 + 1082) = *(v13 + 1082);
    *(v14 + 1080) = v25;
    v11 += 1088;
  }

  while (v13 + 1088 != v12);
  if (v12 != a3)
  {
    v7 = v12;
    goto LABEL_14;
  }

  a5 += v11;
  if (a5 == *v6 + 17408)
  {
    v27 = v6[1];
    ++v6;
    a5 = v27;
  }

  result = v28;
LABEL_19:
  *result = v12;
  result[1] = v6;
  result[2] = a5;
  return result;
}

swan::BatchedGNSSDataSmoother *swan::BatchedGNSSDataSmoother::BatchedGNSSDataSmoother(swan::BatchedGNSSDataSmoother *this)
{
  *this = &unk_1F4CF02B0;
  sub_1D0B751F4(this + 1, &unk_1D0ED80C5);
  *this = &unk_1F4CF0250;
  *(this + 33) = 0;
  *(this + 35) = 0;
  *(this + 291) = 0;
  *(this + 274) = 0;
  *(this + 805) = 0;
  *(this + 1062) = 0;
  *(this + 659) = 0;
  *(this + 1575) = 0;
  *(this + 197) = 0x4014000000000000;
  *(this + 99) = xmmword_1D0EC1580;
  *(this + 100) = xmmword_1D0EC1590;
  *(this + 101) = xmmword_1D0EC15A0;
  *(this + 204) = 0x4006A09E667F3BCCLL;
  return this;
}

uint64_t sub_1D0E448C0(uint64_t a1)
{
  *a1 = &unk_1F4CF02B0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1D0E44934(uint64_t a1, uint64_t a2, char a3)
{
  v3 = a1;
  v31[19] = *MEMORY[0x1E69E9840];
  *(a1 + 32) = a3;
  sub_1D0C541CC(v29, a2, 8);
  v4 = v29[0];
  if ((v30[*(v29[0] - 24) + 16] & 5) != 0)
  {
    LOWORD(__str.__r_.__value_.__l.__data_) = 0;
    v26.__r_.__value_.__s.__data_[0] = 2;
    cnprint::CNPrinter::Print(&__str, &v26, "ConfigLoader: could not open config file, using default values");
  }

  else
  {
    v5 = (v3 + 8);
    v25 = v3;
    if (*(v3 + 31) < 0)
    {
      *(v3 + 16) = 0;
      v6 = *(v3 + 8);
    }

    else
    {
      *(v3 + 31) = 0;
      v6 = (v3 + 8);
    }

    *v6 = 0;
    memset(&__str, 0, sizeof(__str));
    v7 = MEMORY[0x1E69E5318];
    while (1)
    {
      std::ios_base::getloc((v29 + *(v4 - 24)));
      v8 = std::locale::use_facet(&v26, v7);
      v9 = (v8->__vftable[2].~facet_0)(v8, 10);
      std::locale::~locale(&v26);
      v10 = sub_1D0D44808(v29, &__str, v9);
      v11 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      LOBYTE(v12) = *(&__str.__r_.__value_.__s + 23);
      if ((*(v10 + *(*v10 - 24) + 32) & 5) != 0)
      {
        break;
      }

      size = __str.__r_.__value_.__l.__size_;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v15 = __str.__r_.__value_.__l.__size_;
      }

      if (v15 >= 1)
      {
        v16 = p_str + v15;
        v17 = p_str;
        do
        {
          v18 = memchr(v17, 35, v15);
          if (!v18)
          {
            break;
          }

          if (*v18 == 35)
          {
            if (v18 != v16 && v18 - p_str != -1)
            {
              std::string::basic_string(&v26, &__str, 0, v18 - p_str, &v28);
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              __str = v26;
              v11 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
              size = v26.__r_.__value_.__l.__size_;
              v12 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
            }

            break;
          }

          v17 = (v18 + 1);
          v15 = v16 - v17;
        }

        while (v16 - v17 >= 1);
      }

      if ((v12 & 0x80u) != 0)
      {
        v11 = size;
      }

      sub_1D0BBB710(&v26, v11 + 1);
      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v26;
      }

      else
      {
        v19 = v26.__r_.__value_.__r.__words[0];
      }

      if (v11)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &__str;
        }

        else
        {
          v20 = __str.__r_.__value_.__r.__words[0];
        }

        memmove(v19, v20, v11);
      }

      *(&v19->__r_.__value_.__l.__data_ + v11) = 10;
      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &v26;
      }

      else
      {
        v21 = v26.__r_.__value_.__r.__words[0];
      }

      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v22 = v26.__r_.__value_.__l.__size_;
      }

      std::string::append(v5, v21, v22);
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      v4 = v29[0];
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v3 = v25;
  }

  v23 = (*(*v3 + 32))(v3);
  v29[0] = *MEMORY[0x1E69E54C8];
  *(v29 + *(v29[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1D387E8C0](v30);
  std::istream::~istream();
  MEMORY[0x1D387EBF0](v31);
  return v23;
}

void sub_1D0E44D08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1D0DC5018(&a23, MEMORY[0x1E69E54C8]);
  MEMORY[0x1D387EBF0](&a65);
  _Unwind_Resume(a1);
}

uint64_t swan::BatchedGNSSDataSmoother::Configure(uint64_t a1, uint64_t a2)
{
  std::string::operator=((a1 + 8), (a2 + 8));
  *(a1 + 32) = *(a2 + 32);
  memcpy((a1 + 33), (a2 + 33), 0x647uLL);
  return 0;
}

uint64_t swan::BatchedGNSSDataSmoother::Run(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a1[34] & 1) != 0 || a1[291] == 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    operator new();
  }

  return 0xFFFFFFFFLL;
}

void sub_1D0E451B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_1D0E452D8(&a32);
  if (*(v33 - 121) < 0)
  {
    operator delete(*(v33 - 144));
  }

  if (*(v33 - 97) < 0)
  {
    operator delete(*(v33 - 120));
  }

  v35 = *(v33 - 88);
  if (v35)
  {
    *(v33 - 80) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void sub_1D0E452C8()
{
  if (!*(v0 - 88))
  {
    JUMPOUT(0x1D0E452C0);
  }

  JUMPOUT(0x1D0E452BCLL);
}

uint64_t sub_1D0E452D8(uint64_t a1)
{
  sub_1D0E48E44((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1D0E45314(uint64_t a1, unint64_t a2)
{
  if (a2 > *(a1 + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      sub_1D0C3994C(&v2, ((a2 - 1) >> 6) + 1);
    }

    sub_1D0C5663C();
  }
}

void sub_1D0E4543C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t swan::BatchedGNSSDataSmoother::Run(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, const void **a5, void *a6, uint64_t *a7, __int128 **a8, void **a9, unint64_t *a10, uint64_t *a11)
{
  if (a5[1] != *a5 || a6[1] != *a6 || a7[1] != *a7 || a8[1] != *a8)
  {
    return 0xFFFFFFFFLL;
  }

  if (a9[1] != *a9 || a11[1] != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v19 = a3;
  sub_1D0DEA260(v66, a3);
  sub_1D0E48FA0(v65, v19);
  sub_1D0E49080(v64, v19);
  sub_1D0E49080(v63, v19);
  sub_1D0DEA260(v62, v19);
  sub_1D0DEA260(v61, v19);
  sub_1D0E48FA0(v60, v19);
  sub_1D0E49128(v59, v19);
  sub_1D0E48FA0(v58, v19);
  v22 = sub_1D0E49128(__p, v19);
  if (*(a1 + 805) == 1)
  {
    v19 = 224;
    swan::BatchedGNSSDataSmoother::LoadMATLAB(v22, (a1 + 806), 0xE0uLL, v66, v65, v64, v63, v83, v67, v62, v61);
  }

  else
  {
    sub_1D0C4D030(a6, v19);
    sub_1D0E46104(a7, v19);
    if (swan::BatchedGNSSDataSmoother::formatData(a1, a2, v19, v83, v67, v66, v65, v64, v63, a6, a7))
    {
      goto LABEL_29;
    }

    if (v19)
    {
      v29 = 0;
      v30 = v62[0];
      v31 = v61[0];
      do
      {
        v30[v29] = *(a1 + 1584);
        v31[v29++] = *(a1 + 1592);
      }

      while (v19 > v29);
    }
  }

  v56 = 0x4202A05F20000000;
  if (!swan::ForwardBackwardFixedIntervalSmoother::Update(a1 + 1640, v83, v67, v19, v66, v65, v64, v63, v62, v61, 1, v58, __p, &v56, v60, v59))
  {
    if (v19)
    {
      v23 = v19;
      do
      {
        v24 = a11[1];
        v25 = a11[2];
        if (v24 == v25 << 6)
        {
          if ((v24 + 1) < 0)
          {
            sub_1D0C5663C();
          }

          v26 = v25 << 7;
          if (v26 <= (v24 & 0x3FFFFFFFFFFFFFC0) + 64)
          {
            v26 = (v24 & 0x3FFFFFFFFFFFFFC0) + 64;
          }

          if (v24 <= 0x3FFFFFFFFFFFFFFELL)
          {
            v27 = v26;
          }

          else
          {
            v27 = 0x7FFFFFFFFFFFFFFFLL;
          }

          sub_1D0E45314(a11, v27);
          v24 = a11[1];
        }

        a11[1] = v24 + 1;
        *(*a11 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        --v23;
      }

      while (v23);
    }

    if ((*(a1 + 1575) & 1) == 0)
    {
      goto LABEL_71;
    }

    v55 = 0;
    sub_1D0C4333C(v54, v19);
    sub_1D0E4693C(v54, v19);
    if (swan::PositionVelocityDataEditor::TestNormalizedInnovations(*(a1 + 1576), a1 + 1641, v19, v60, v59, &v55, v54))
    {
      goto LABEL_27;
    }

    v32 = v55;
    v33 = v55 - 1;
    if (v55 - 1 >= vcvtad_u64_f64(v19 * 0.1))
    {
      goto LABEL_67;
    }

    if (v19)
    {
      v34 = 0;
      v35 = 0;
      v36 = *a11;
      do
      {
        *(v36 + 8 * (v34 >> 6)) &= ~(1 << v34);
        if (*v54[0] != v34)
        {
          v37 = 0;
          while (v33 != v37)
          {
            v38 = *(v54[0] + ++v37);
            if (v38 == v34)
            {
              if (v37 < v32)
              {
                goto LABEL_63;
              }

              break;
            }
          }

          *(v66[0] + v35) = *(v66[0] + v34);
          v39 = (v65[0] + 48 * v34);
          v40 = v65[0] + 48 * v35;
          v41 = v39[2];
          v42 = *v39;
          v40[1] = v39[1];
          v40[2] = v41;
          *v40 = v42;
          v43 = v64[0] + 24 * v34;
          v44 = v64[0] + 24 * v35;
          v45 = *v43;
          *(v44 + 2) = *(v43 + 2);
          *v44 = v45;
          v46 = v63[0] + 24 * v34;
          v47 = v63[0] + 24 * v35;
          v48 = *v46;
          *(v47 + 2) = *(v46 + 2);
          *v47 = v48;
          *(*a6 + 8 * v35) = *(*a6 + 8 * v34);
          *(*a7 + 4 * v35) = *(*a7 + 4 * v34);
          v36 = *a11;
          *(*a11 + 8 * (v34 >> 6)) |= 1 << v34;
          ++v35;
        }

LABEL_63:
        ++v34;
      }

      while (v34 != v19);
    }

    v49 = 0;
    v50 = v65[0];
    do
    {
      *&v83[v49] = *&v50[v49];
      v49 += 8;
    }

    while (v49 != 48);
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v68 = 0u;
    memset(v67, 0, sizeof(v67));
    v51 = *(v64[0] + 1) * *(v64[0] + 1);
    v67[0] = *v64[0] * *v64[0];
    *(&v68 + 1) = v51;
    *&v72 = *(v64[0] + 2) * *(v64[0] + 2);
    *(&v75 + 1) = *v63[0] * *v63[0];
    *&v79 = *(v63[0] + 1) * *(v63[0] + 1);
    *(&v82 + 1) = *(v63[0] + 2) * *(v63[0] + 2);
    v19 -= v32;
    if (swan::ForwardBackwardFixedIntervalSmoother::Update(a1 + 1640, v83, v67, v19, v66, v65, v64, v63, v62, v61, 1, v58, __p, &v56, v60, v59))
    {
LABEL_27:
      v28 = 0;
    }

    else
    {
LABEL_67:
      v28 = 1;
    }

    if (v54[0])
    {
      v54[1] = v54[0];
      operator delete(v54[0]);
    }

    if (v28)
    {
LABEL_71:
      v54[0] = 0;
      updated = swan::ConsistencyChecker::UpdateNormalizedInnovationsSquared(a1 + 1642, v19, 6u, v60, v59, v54);
      *a4 = 0;
      v53 = swan::BatchedGNSSDataSmoother::CopySmootherOutputs(updated, v19, v66, v58, __p, a5, a8, a9);
      if (*(a1 + 548) == 1)
      {
        swan::BatchedGNSSDataSmoother::SaveToDisk(v53, (a1 + 549), v19, v66, v58, __p, v60, v59);
      }

      v15 = 0;
      *a10 = v19;
      goto LABEL_30;
    }
  }

LABEL_29:
  v15 = 0xFFFFFFFFLL;
LABEL_30:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v58[0])
  {
    v58[1] = v58[0];
    operator delete(v58[0]);
  }

  if (v59[0])
  {
    v59[1] = v59[0];
    operator delete(v59[0]);
  }

  if (v60[0])
  {
    v60[1] = v60[0];
    operator delete(v60[0]);
  }

  if (v61[0])
  {
    v61[1] = v61[0];
    operator delete(v61[0]);
  }

  if (v62[0])
  {
    v62[1] = v62[0];
    operator delete(v62[0]);
  }

  if (v63[0])
  {
    v63[1] = v63[0];
    operator delete(v63[0]);
  }

  if (v64[0])
  {
    v64[1] = v64[0];
    operator delete(v64[0]);
  }

  if (v65[0])
  {
    v65[1] = v65[0];
    operator delete(v65[0]);
  }

  if (v66[0])
  {
    v66[1] = v66[0];
    operator delete(v66[0]);
  }

  return v15;
}

void sub_1D0E45AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a29)
  {
    operator delete(a29);
  }

  if (a32)
  {
    operator delete(a32);
  }

  if (a35)
  {
    operator delete(a35);
  }

  if (a38)
  {
    operator delete(a38);
  }

  if (a41)
  {
    operator delete(a41);
  }

  if (a44)
  {
    operator delete(a44);
  }

  if (a47)
  {
    operator delete(a47);
  }

  if (a50)
  {
    operator delete(a50);
  }

  _Unwind_Resume(exception_object);
}

uint64_t swan::BatchedGNSSDataSmoother::LoadMATLAB(uint64_t a1, const char *a2, unint64_t a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, void *a10, void *a11)
{
  v52 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x100uLL, "%s%s", a2, "t_noisy.txt");
  v18 = fopen(__str, "r");
  if (!v18)
  {
    goto LABEL_32;
  }

  v19 = v18;
  v50 = a2;
  if (a3)
  {
    v20 = 0;
    v21 = a3;
    do
    {
      fscanf(v19, "%lf\n", *a4 + v20);
      v20 += 8;
      --v21;
    }

    while (v21);
  }

  fclose(v19);
  snprintf(__str, 0x100uLL, "%s%s", a2, "x_noisy.txt");
  v22 = fopen(__str, "r");
  if (!v22)
  {
    goto LABEL_32;
  }

  v23 = v22;
  if (a3)
  {
    v24 = 0;
    v25 = 1;
    do
    {
      v26 = *a5 + 48 * v24;
      fscanf(v23, "%lf %lf %lf %lf %lf %lf\n", v26, v26 + 8, v26 + 16, v26 + 24, v26 + 32, v26 + 40);
      v24 = v25++;
    }

    while (v24 < a3);
  }

  fclose(v23);
  snprintf(__str, 0x100uLL, "%s%s", v50, "sigma_x.txt");
  v27 = fopen(__str, "r");
  if (!v27)
  {
    goto LABEL_32;
  }

  v28 = v27;
  if (a3)
  {
    v29 = 0;
    v30 = 1;
    do
    {
      fscanf(v28, "%lf %lf %lf\n", *a6 + 24 * v29, *a6 + 24 * v29 + 8, *a6 + 24 * v29 + 16);
      v29 = v30++;
    }

    while (v29 < a3);
  }

  fclose(v28);
  snprintf(__str, 0x100uLL, "%s%s", v50, "sigma_vx.txt");
  v31 = fopen(__str, "r");
  if (!v31)
  {
    goto LABEL_32;
  }

  v32 = v31;
  if (a3)
  {
    v33 = 0;
    v34 = 1;
    do
    {
      fscanf(v32, "%lf %lf %lf\n", *a7 + 24 * v33, *a7 + 24 * v33 + 8, *a7 + 24 * v33 + 16);
      v33 = v34++;
    }

    while (v33 < a3);
  }

  fclose(v32);
  snprintf(__str, 0x100uLL, "%s%s", v50, "x0.txt");
  v35 = fopen(__str, "r");
  if (!v35)
  {
    goto LABEL_32;
  }

  v36 = v35;
  v37 = 6;
  do
  {
    fscanf(v36, "%lf\n", a8);
    a8 += 8;
    --v37;
  }

  while (v37);
  fclose(v36);
  snprintf(__str, 0x100uLL, "%s%s", v50, "P0.txt");
  v38 = fopen(__str, "r");
  if (!v38)
  {
    goto LABEL_32;
  }

  v39 = v38;
  for (i = 0; i != 288; i += 48)
  {
    fscanf(v39, "%lf %lf %lf %lf %lf %lf\n", a9 + i, a9 + i + 8, a9 + i + 16, a9 + i + 24, a9 + i + 32, a9 + i + 40);
  }

  fclose(v39);
  snprintf(__str, 0x100uLL, "%s%s", v50, "sigma_wx_horizontal.txt");
  v41 = fopen(__str, "r");
  if (!v41)
  {
    goto LABEL_32;
  }

  if (a3)
  {
    v42 = v41;
    v43 = 0;
    v44 = 1;
    do
    {
      fscanf(v42, "%lf\n", *a10 + 8 * v43);
      v43 = v44++;
    }

    while (v43 < a3);
  }

  snprintf(__str, 0x100uLL, "%s%s", v50, "sigma_wx_vertical.txt");
  v45 = fopen(__str, "r");
  if (v45)
  {
    v46 = v45;
    if (a3)
    {
      v47 = 0;
      v48 = 1;
      do
      {
        fscanf(v46, "%lf\n", *a11 + 8 * v47);
        v47 = v48++;
      }

      while (v47 < a3);
    }

    fclose(v46);
    return 0;
  }

  else
  {
LABEL_32:
    printf("Error opening %s. Exiting.\n", __str);
    return 0xFFFFFFFFLL;
  }
}

void sub_1D0E46104(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 2;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 4 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = v7 - v3;
        v9 = v8 >> 1;
        if (v8 >> 1 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_1D0D2FF2C(a1, v10);
      }

      sub_1D0C5663C();
    }

    bzero(a1[1], 4 * v6);
    v11 = v4 + 4 * v6;
  }

  a1[1] = v11;
}

uint64_t swan::BatchedGNSSDataSmoother::formatData(double *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t *a7, double **a8, double **a9, void *a10, void *a11)
{
  v102 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v15 = 0;
    v63 = *(*a2 + 92);
    v62 = *(*a2 + 96) / 1000.0;
    v16 = 1;
    v60 = vdupq_n_s64(0x4066800000000000uLL);
    v61 = vdupq_n_s64(0x400921FB54442D18uLL);
    while (1)
    {
      v17 = *a2 + 248 * v15;
      v18 = *(v17 + 92);
      *(*a6 + 8 * v15) = *(v17 + 96) / 1000.0 - v62 + (v18 - v63) * 604800.0;
      *(*a10 + 8 * v15) = *(v17 + 96) / 1000.0;
      *(*a11 + 4 * v15) = v18;
      v100 = vdivq_f64(vmulq_f64(*(v17 + 8), v61), v60);
      v101 = *(v17 + 64);
      if (cnnavigation::LLAToECEF(v100.f64, 1, &v98, 0, &v78))
      {
        break;
      }

      v19 = *a7 + 48 * v15;
      *v19 = v98;
      *(v19 + 16) = v99;
      v20 = *(v17 + 56);
      v21 = 0.0;
      v22 = 0.0;
      if (v20 > 0.0)
      {
        v23 = *(v17 + 48);
        v24 = __sincos_stret(v20 * 3.14159265 / 180.0);
        v21 = v24.__cosval * v23;
        v22 = v24.__sinval * v23;
      }

      v96.f64[0] = v21;
      v96.f64[1] = v22;
      v25 = *(v17 + 232);
      if (v25 > a1[201])
      {
        v25 = 0.0;
      }

      v97 = v25;
      v26 = cnnavigation::ENUToECEF(&v96, 1, 0, &v98, 1, &v94);
      if (v26)
      {
        break;
      }

      v27 = *a7;
      v28 = *a7 + 48 * v15;
      *(v28 + 24) = v94;
      *(v28 + 40) = v95;
      if (!v15)
      {
        for (i = 0; i != 48; i += 8)
        {
          *(a4 + i) = *(v27 + i);
        }
      }

      v91 = 0x200000002;
      v90 = xmmword_1D0E83F70;
      v89 = &unk_1F4CE0268;
      v92 = &v93;
      swan::BatchedGNSSDataSmoother::convertErrorEllipseToCovariance(*(*a2 + 248 * v15 + 128), *(*a2 + 248 * v15 + 136), *(*a2 + 248 * v15 + 144) * 3.14159265 / 180.0, v26, &v89);
      v86 = 0x300000003;
      v85 = xmmword_1D0E76C10;
      v84 = &unk_1F4CD5DD0;
      v87 = &v88;
      *&v80 = 0x300000003;
      v78 = &unk_1F4CD5DD0;
      *(&v80 + 1) = &v81;
      v79 = xmmword_1D0E76C10;
      v81 = 0u;
      memset(v82, 0, sizeof(v82));
      v83 = 0;
      sub_1D0B894B0(&v84, &v78);
      v30 = v92;
      v31 = v87;
      *v87 = *v92;
      v32 = &v30[SHIDWORD(v90)];
      v33 = SHIDWORD(v85);
      v34 = &v31[SHIDWORD(v85)];
      *v34 = *v32;
      v31[1] = v30[1];
      v34[1] = v32[1];
      v35 = *(*a2 + 248 * v15 + 72);
      v31[2 * v33 + 2] = v35 * v35;
      LOBYTE(v79) = 0;
      *&v81 = 0x300000003;
      v80 = xmmword_1D0E76C10;
      *(&v79 + 1) = &unk_1F4CD5DD0;
      *(&v81 + 1) = v82;
      v78 = &unk_1F4CD5D90;
      if (cnnavigation::ENUToECEF(&v98, 1, 0, &v98, 1, &v96, &v78))
      {
        break;
      }

      v75 = 0x300000003;
      v73 = &unk_1F4CD5DD0;
      v74 = xmmword_1D0E76C10;
      v76 = &v77;
      sub_1D0BFE654(&v78, &v84, &v73);
      v36 = v76;
      v37 = &(*a8)[3 * v15];
      *v37 = sqrt(*v76);
      v38 = SHIDWORD(v74);
      v37[1] = sqrt(v36[SHIDWORD(v74) + 1]);
      v37[2] = sqrt(v36[2 * v38 + 2]);
      v39 = (*a2 + 248 * v15);
      v40 = v39[14] / 1.41421356;
      v41 = v39[6];
      if (fabs(v41) < 2.22044605e-16 && v40 < a1[202])
      {
        v40 = a1[202];
      }

      v42 = v39[15];
      v43 = fabs(v42);
      if (v42 < 0.0 || v43 < 2.22044605e-16)
      {
        v45 = 21.2132;
      }

      else
      {
        v45 = v40;
      }

      v46 = v39[30];
      if (sqrt(v39[29] * v39[29] + v41 * v41) > a1[203])
      {
        v45 = a1[204];
      }

      v69 = 0x300000003;
      v67 = &unk_1F4CD5DD0;
      v70 = v71;
      v68 = xmmword_1D0E76C10;
      memset(v71, 0, sizeof(v71));
      v72 = 0;
      sub_1D0B894B0(&v84, &v67);
      v47 = v87;
      *v87 = v45 * v45;
      v48 = SHIDWORD(v85);
      v47[SHIDWORD(v85) + 1] = v45 * v45;
      v47[2 * v48 + 2] = v46 * v46;
      sub_1D0BFE654(&v78, &v84, &v73);
      v49 = v76;
      v50 = sqrt(*v76);
      v51 = *a9;
      v52 = &(*a9)[3 * v15];
      *v52 = v50;
      v53 = SHIDWORD(v74);
      v54 = sqrt(v49[SHIDWORD(v74) + 1]);
      v52[1] = v54;
      v55 = sqrt(v49[2 * v53 + 2]);
      v52[2] = v55;
      v56 = a1[200];
      *v52 = v50 * v56;
      v52[1] = v54 * v56;
      v52[2] = v55 * v56;
      if (!v15)
      {
        *(a5 + 256) = 0u;
        *(a5 + 272) = 0u;
        *(a5 + 224) = 0u;
        *(a5 + 240) = 0u;
        *(a5 + 192) = 0u;
        *(a5 + 208) = 0u;
        *(a5 + 160) = 0u;
        *(a5 + 176) = 0u;
        *(a5 + 128) = 0u;
        *(a5 + 144) = 0u;
        *(a5 + 96) = 0u;
        *(a5 + 112) = 0u;
        *(a5 + 64) = 0u;
        *(a5 + 80) = 0u;
        *(a5 + 32) = 0u;
        *(a5 + 48) = 0u;
        *a5 = 0u;
        *(a5 + 16) = 0u;
        v57 = *a8;
        *a5 = **a8 * **a8;
        *(a5 + 56) = *(v57 + 8) * *(v57 + 8);
        *(a5 + 112) = *(v57 + 16) * *(v57 + 16);
        *(a5 + 168) = *v51 * *v51;
        *(a5 + 224) = v51[1] * v51[1];
        *(a5 + 280) = v51[2] * v51[2];
      }

      v16 = ++v15 < a3;
      if (v15 == a3)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
LABEL_27:
    v16 = 0;
  }

  return (v16 << 31 >> 31);
}

void sub_1D0E4693C(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    sub_1D0C3994C(a1, a2);
  }
}

uint64_t swan::BatchedGNSSDataSmoother::CopySmootherOutputs(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, const void **a6, __int128 **a7, void **a8)
{
  v64 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v13 = a2;
    for (i = 0; i != v13; ++i)
    {
      v15 = *a3;
      v17 = a6[1];
      v16 = a6[2];
      if (v17 >= v16)
      {
        v19 = *a6;
        v20 = v17 - *a6;
        v21 = v20 >> 3;
        v22 = (v20 >> 3) + 1;
        if (v22 >> 61)
        {
          sub_1D0C5663C();
        }

        v23 = v16 - v19;
        if (v23 >> 2 > v22)
        {
          v22 = v23 >> 2;
        }

        v24 = v23 >= 0x7FFFFFFFFFFFFFF8;
        v25 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v24)
        {
          v25 = v22;
        }

        if (v25)
        {
          sub_1D0C3994C(a6, v25);
        }

        *(8 * v21) = *(v15 + 8 * i);
        v18 = (8 * v21 + 8);
        memcpy(0, v19, v20);
        v26 = *a6;
        *a6 = 0;
        a6[1] = v18;
        a6[2] = 0;
        if (v26)
        {
          operator delete(v26);
        }

        v13 = a2;
      }

      else
      {
        *v17 = *(v15 + 8 * i);
        v18 = v17 + 8;
      }

      a6[1] = v18;
      v27 = (*a4 + 48 * i);
      v28 = v27[1];
      __dst[0] = *v27;
      __dst[1] = v28;
      __dst[2] = v27[2];
      v29 = a7[1];
      v30 = a7[2];
      if (v29 >= v30)
      {
        v34 = 0xAAAAAAAAAAAAAAABLL * (v29 - *a7);
        v35 = v34 + 1;
        if (v34 + 1 > 0x555555555555555)
        {
          sub_1D0C5663C();
        }

        if (0x5555555555555556 * (v30 - *a7) > v35)
        {
          v35 = 0x5555555555555556 * (v30 - *a7);
        }

        if (0xAAAAAAAAAAAAAAABLL * (v30 - *a7) >= 0x2AAAAAAAAAAAAAALL)
        {
          v36 = 0x555555555555555;
        }

        else
        {
          v36 = v35;
        }

        if (v36)
        {
          sub_1D0E49028(v36);
        }

        v37 = 16 * (v29 - *a7);
        v38 = __dst[1];
        *v37 = __dst[0];
        *(v37 + 16) = v38;
        *(v37 + 32) = __dst[2];
        v39 = *a7;
        v40 = a7[1];
        v41 = (48 * v34 + *a7 - v40);
        if (*a7 != v40)
        {
          v42 = (v37 + *a7 - v40);
          do
          {
            v43 = *v39;
            v44 = *(v39 + 2);
            v42[1] = *(v39 + 1);
            v42[2] = v44;
            *v42 = v43;
            v42 += 3;
            v39 += 48;
          }

          while (v39 != v40);
          v39 = *a7;
        }

        v33 = (v37 + 48);
        *a7 = v41;
        a7[1] = (v37 + 48);
        a7[2] = 0;
        if (v39)
        {
          operator delete(v39);
        }
      }

      else
      {
        v31 = *v27;
        v32 = v27[2];
        v29[1] = v27[1];
        v29[2] = v32;
        *v29 = v31;
        v33 = v29 + 3;
      }

      a7[1] = v33;
    }

    v45 = 0;
    v46 = 0xE38E38E38E38E3;
    v47 = a8[1];
    do
    {
      v48 = (*a5 + 288 * v45);
      memcpy(__dst, v48, sizeof(__dst));
      v49 = a8[2];
      if (v47 >= v49)
      {
        v50 = 0x8E38E38E38E38E39 * ((v47 - *a8) >> 5) + 1;
        if (v50 > v46)
        {
          sub_1D0C5663C();
        }

        v51 = 0x8E38E38E38E38E39 * ((v49 - *a8) >> 5);
        if (2 * v51 > v50)
        {
          v50 = 2 * v51;
        }

        if (v51 >= 0x71C71C71C71C71)
        {
          v52 = v46;
        }

        else
        {
          v52 = v50;
        }

        if (v52)
        {
          sub_1D0E491B4(v52);
        }

        v53 = (32 * ((v47 - *a8) >> 5));
        memcpy(v53, __dst, 0x120uLL);
        v55 = *a8;
        v54 = a8[1];
        v56 = (*a8 - v54);
        v57 = &v56[v53];
        if (*a8 != v54)
        {
          v58 = v46;
          v59 = &v56[v53];
          do
          {
            memcpy(v59, v55, 0x120uLL);
            v55 += 288;
            v59 += 288;
          }

          while (v55 != v54);
          v55 = *a8;
          v46 = v58;
        }

        v47 = v53 + 288;
        *a8 = v57;
        a8[1] = v53 + 288;
        a8[2] = 0;
        v13 = a2;
        if (v55)
        {
          operator delete(v55);
        }
      }

      else
      {
        memmove(v47, v48, 0x120uLL);
        v47 += 288;
      }

      a8[1] = v47;
      ++v45;
    }

    while (v45 != v13);
  }

  return 0;
}

uint64_t swan::BatchedGNSSDataSmoother::SaveToDisk(uint64_t a1, const char *a2, unint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v44 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x100uLL, "%s%s", a2, "t_out.txt");
  v15 = fopen(__str, "w");
  if (!v15)
  {
    goto LABEL_26;
  }

  v16 = v15;
  if (a3)
  {
    v17 = 0;
    do
    {
      fprintf(v16, "%.15le\n", *(*a4 + 8 * v17++));
    }

    while (a3 != v17);
  }

  fclose(v16);
  snprintf(__str, 0x100uLL, "%s%s", a2, "x_out.txt");
  v18 = fopen(__str, "w");
  if (!v18)
  {
    goto LABEL_26;
  }

  v19 = v18;
  v42 = a2;
  if (a3)
  {
    v20 = 0;
    v21 = a3;
    do
    {
      v22 = (*a5 + v20);
      fprintf(v19, "%.15le %.15le %.15le %.15le %.15le %.15le\n", *v22, v22[1], v22[2], v22[3], v22[4], v22[5]);
      v20 += 48;
      --v21;
    }

    while (v21);
  }

  fclose(v19);
  snprintf(__str, 0x100uLL, "%s%s", v42, "P_out.txt");
  v23 = fopen(__str, "w");
  if (!v23)
  {
    goto LABEL_26;
  }

  v24 = v23;
  if (a3)
  {
    v25 = 0;
    v26 = 0;
    do
    {
      v27 = v25;
      v28 = 6;
      do
      {
        v29 = (*a6 + v27);
        fprintf(v24, "%.15le %.15le %.15le %.15le %.15le %.15le\n", *v29, v29[1], v29[2], v29[3], v29[4], v29[5]);
        v27 += 48;
        --v28;
      }

      while (v28);
      ++v26;
      v25 += 288;
    }

    while (v26 != a3);
  }

  fclose(v24);
  snprintf(__str, 0x100uLL, "%s%s", v42, "nu.txt");
  v30 = fopen(__str, "w");
  if (!v30)
  {
    goto LABEL_26;
  }

  v31 = v30;
  if (a3)
  {
    v32 = 0;
    v33 = 1;
    do
    {
      v34 = (*a7 + 48 * v32);
      fprintf(v31, "%.15le %.15le %.15le %.15le %.15le %.15le\n", *v34, v34[1], v34[2], v34[3], v34[4], v34[5]);
      v32 = v33++;
    }

    while (v32 < a3);
  }

  fclose(v31);
  snprintf(__str, 0x100uLL, "%s%s", v42, "P_nu.txt");
  v35 = fopen(__str, "w");
  if (v35)
  {
    v36 = v35;
    if (a3)
    {
      LODWORD(v37) = 0;
      do
      {
        v38 = 288 * v37;
        v39 = 6;
        do
        {
          v40 = (*a8 + v38);
          fprintf(v36, "%.15le %.15le %.15le %.15le %.15le %.15le\n", *v40, v40[1], v40[2], v40[3], v40[4], v40[5]);
          v38 += 48;
          --v39;
        }

        while (v39);
        v37 = (v37 + 1);
      }

      while (v37 < a3);
    }

    fclose(v36);
    return 0;
  }

  else
  {
LABEL_26:
    printf("Error opening %s. Exiting.\n", __str);
    return 0xFFFFFFFFLL;
  }
}

uint64_t swan::BatchedGNSSDataSmoother::SaveToDisk(uint64_t a1, const char *a2, unint64_t a3, double *a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9)
{
  v41 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x100uLL, "%s%s", a2, "t_in.txt");
  v16 = fopen(__str, "w");
  if (!v16)
  {
    goto LABEL_22;
  }

  v17 = v16;
  if (a3)
  {
    v18 = 0;
    v19 = 1;
    do
    {
      fprintf(v17, "%.15le\n", *(*a6 + 8 * v18));
      v18 = v19++;
    }

    while (v18 < a3);
  }

  fclose(v17);
  snprintf(__str, 0x100uLL, "%s%s", a2, "x_in.txt");
  v20 = fopen(__str, "w");
  if (!v20)
  {
    goto LABEL_22;
  }

  v21 = v20;
  if (a3)
  {
    v22 = 0;
    v23 = 1;
    do
    {
      v24 = (*a7 + 48 * v22);
      fprintf(v21, "%.15le %.15le %.15le %.15le %.15le %.15le\n", *v24, v24[1], v24[2], v24[3], v24[4], v24[5]);
      v22 = v23++;
    }

    while (v22 < a3);
  }

  fclose(v21);
  snprintf(__str, 0x100uLL, "%s%s", a2, "P0.txt");
  v25 = fopen(__str, "w");
  if (!v25)
  {
    goto LABEL_22;
  }

  v26 = v25;
  v27 = (a5 + 24);
  v28 = 6;
  do
  {
    fprintf(v26, "%.15le %.15le %.15le %.15le %.15le %.15le\n", *(v27 - 3), *(v27 - 2), *(v27 - 1), *v27, v27[1], v27[2]);
    v27 += 6;
    --v28;
  }

  while (v28);
  fclose(v26);
  snprintf(__str, 0x100uLL, "%s%s", a2, "x0.txt");
  v29 = fopen(__str, "w");
  if (!v29)
  {
    goto LABEL_22;
  }

  v30 = v29;
  fprintf(v29, "%.15le %.15le %.15le %.15le %.15le %.15le\n", *a4, a4[1], a4[2], a4[3], a4[4], a4[5]);
  fclose(v30);
  snprintf(__str, 0x100uLL, "%s%s", a2, "sigma_x.txt");
  v31 = fopen(__str, "w");
  if (!v31)
  {
    goto LABEL_22;
  }

  v32 = v31;
  if (a3)
  {
    v33 = 0;
    v34 = 1;
    do
    {
      fprintf(v32, "%.15le %.15le %.15le\n", *(*a8 + 24 * v33), *(*a8 + 24 * v33 + 8), *(*a8 + 24 * v33 + 16));
      v33 = v34++;
    }

    while (v33 < a3);
  }

  fclose(v32);
  snprintf(__str, 0x100uLL, "%s%s", a2, "sigma_vx.txt");
  v35 = fopen(__str, "w");
  if (v35)
  {
    v36 = v35;
    if (a3)
    {
      v37 = 0;
      v38 = 1;
      do
      {
        fprintf(v36, "%.15le %.15le %.15le\n", *(*a9 + 24 * v37), *(*a9 + 24 * v37 + 8), *(*a9 + 24 * v37 + 16));
        v37 = v38++;
      }

      while (v37 < a3);
    }

    fclose(v36);
    return 0;
  }

  else
  {
LABEL_22:
    printf("Error opening %s. Exiting.\n", __str);
    return 0xFFFFFFFFLL;
  }
}

void swan::BatchedGNSSDataSmoother::convertErrorEllipseToCovariance(double a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v47 = 0x200000002;
  v46 = xmmword_1D0E83F70;
  v45 = &unk_1F4CE0268;
  v48 = &v49;
  v41 = 0x200000002;
  v39 = &unk_1F4CE0268;
  v42 = &v43;
  v40 = xmmword_1D0E83F70;
  v43 = 0u;
  v44 = 0u;
  sub_1D0B894B0(&v45, &v39);
  v9 = v48;
  *v48 = a1 * a1 * 0.1669041;
  v9[SHIDWORD(v46) + 1] = a2 * a2 * 0.1669041;
  if (a3 == 0.0)
  {
    v20 = &v45;
  }

  else
  {
    v41 = 0x200000002;
    v40 = xmmword_1D0E83F70;
    v39 = &unk_1F4CE0268;
    v42 = &v43;
    v10 = __sincos_stret(a3);
    *&v43 = v10.__cosval;
    *(&v43 + 1) = *&v10.__sinval;
    *&v44 = -v10.__sinval;
    *(&v44 + 1) = *&v10.__cosval;
    v31 = 0x200000002;
    v29 = &unk_1F4CE0268;
    v30 = xmmword_1D0E83F70;
    v32 = &v33;
    sub_1D0B89390(&v39, &v45, &v29);
    v12 = v40;
    v11 = DWORD1(v40);
    v26 = 0x200000002;
    v21 = &unk_1F4CE0268;
    v27 = v28;
    v22 = DWORD1(v40);
    v23 = v40;
    v24 = v40 * DWORD1(v40);
    v25 = DWORD1(v40);
    if (DWORD1(v40))
    {
      v13 = 0;
      v14 = 0;
      v15 = HIDWORD(v40);
      v16 = v42;
      do
      {
        v17 = v13;
        v18 = v14;
        for (i = v12; i; --i)
        {
          v28[v18] = *(v16 + v17);
          v18 += v11;
          ++v17;
        }

        ++v14;
        v13 += v15;
      }

      while (v14 != v11);
    }

    v36 = 0x200000002;
    v35 = xmmword_1D0E83F70;
    v34 = &unk_1F4CE0268;
    v37 = &v38;
    sub_1D0B89390(&v29, &v21, &v34);
    v20 = &v34;
  }

  sub_1D0B894B0(a5, v20);
}

uint64_t swan::BatchedGNSSDataSmoother::formatData(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double *a8, double *a9)
{
  v84 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v12 = 0;
    v44 = *(*a2 + 24);
    v13 = *(*a2 + 16);
    v42 = vdupq_n_s64(0x4066800000000000uLL);
    v43 = vdupq_n_s64(0x400921FB54442D18uLL);
    do
    {
      v14 = *a2 + 264 * v12;
      *(a6 + 8 * v12) = *(v14 + 16) - v13 + (*(v14 + 24) - v44) * 604800.0;
      v82 = vdivq_f64(vmulq_f64(*(v14 + 48), v43), v42);
      v83 = *(v14 + 64);
      if (cnnavigation::LLAToECEF(v82.f64, 1, &v80, 0, &v60))
      {
        break;
      }

      v15 = a7 + 48 * v12;
      *v15 = v80;
      *(v15 + 16) = v81;
      v78.f64[0] = *(v14 + 152);
      v78.f64[1] = v78.f64[0];
      v79 = *(v14 + 160);
      v16 = cnnavigation::ENUToECEF(&v78, 1, 0, &v80, 1, &v76);
      if (v16)
      {
        break;
      }

      *(v15 + 24) = v76;
      *(v15 + 40) = v77;
      if (!v12)
      {
        for (i = 0; i != 48; i += 8)
        {
          *(a4 + i) = *(a7 + i);
        }
      }

      v73 = 0x200000002;
      v72 = xmmword_1D0E83F70;
      v71 = &unk_1F4CE0268;
      v74 = &v75;
      swan::BatchedGNSSDataSmoother::convertErrorEllipseToCovariance(*(*a2 + 264 * v12 + 120), *(*a2 + 264 * v12 + 128), *(*a2 + 264 * v12 + 136) * 3.14159265 / 180.0, v16, &v71);
      v68 = 0x300000003;
      v67 = xmmword_1D0E76C10;
      v66 = &unk_1F4CD5DD0;
      v69 = &v70;
      *&v62 = 0x300000003;
      v60 = &unk_1F4CD5DD0;
      *(&v62 + 1) = &v63;
      v61 = xmmword_1D0E76C10;
      v63 = 0u;
      memset(v64, 0, sizeof(v64));
      v65 = 0;
      sub_1D0B894B0(&v66, &v60);
      v18 = v74;
      v19 = v69;
      *v69 = *v74;
      v20 = &v18[SHIDWORD(v72)];
      v21 = SHIDWORD(v67);
      v22 = &v19[SHIDWORD(v67)];
      *v22 = *v20;
      v19[1] = v18[1];
      v22[1] = v20[1];
      v23 = *(*a2 + 264 * v12 + 144);
      v19[2 * v21 + 2] = v23 * v23;
      LOBYTE(v61) = 0;
      *&v63 = 0x300000003;
      v62 = xmmword_1D0E76C10;
      *(&v61 + 1) = &unk_1F4CD5DD0;
      *(&v63 + 1) = v64;
      v60 = &unk_1F4CD5D90;
      if (cnnavigation::ENUToECEF(&v80, 1, 0, &v80, 1, &v78, &v60))
      {
        break;
      }

      v57 = 0x300000003;
      v55 = &unk_1F4CD5DD0;
      v56 = xmmword_1D0E76C10;
      v58 = &v59;
      sub_1D0BFE654(&v60, &v66, &v55);
      v24 = v58;
      v25 = &a8[3 * v12];
      *v25 = sqrt(*v58);
      v26 = SHIDWORD(v56);
      v25[1] = sqrt(v24[SHIDWORD(v56) + 1]);
      v25[2] = sqrt(v24[2 * v26 + 2]);
      v27 = (*a2 + 264 * v12);
      v28 = v27[22] / 1.41421356;
      v29 = v27[19];
      if (fabs(v29) < 2.22044605e-16 && v28 < a1[202])
      {
        v28 = a1[202];
      }

      v30 = v27[23];
      if (sqrt(v27[20] * v27[20] + v29 * v29) > a1[203])
      {
        v28 = a1[204];
      }

      v51 = 0x300000003;
      v49 = &unk_1F4CD5DD0;
      v52 = v53;
      v50 = xmmword_1D0E76C10;
      memset(v53, 0, sizeof(v53));
      v54 = 0;
      sub_1D0B894B0(&v66, &v49);
      v31 = v69;
      *v69 = v28 * v28;
      v32 = SHIDWORD(v67);
      v31[SHIDWORD(v67) + 1] = v28 * v28;
      v31[2 * v32 + 2] = v30 * v30;
      sub_1D0BFE654(&v60, &v66, &v55);
      v33 = v58;
      v34 = sqrt(*v58);
      v35 = &a9[3 * v12];
      *v35 = v34;
      v36 = SHIDWORD(v56);
      v37 = sqrt(v33[SHIDWORD(v56) + 1]);
      v35[1] = v37;
      v38 = sqrt(v33[2 * v36 + 2]);
      v35[2] = v38;
      v39 = a1[200];
      *v35 = v34 * v39;
      v35[1] = v37 * v39;
      v35[2] = v38 * v39;
      if (!v12)
      {
        *(a5 + 256) = 0u;
        *(a5 + 272) = 0u;
        *(a5 + 224) = 0u;
        *(a5 + 240) = 0u;
        *(a5 + 192) = 0u;
        *(a5 + 208) = 0u;
        *(a5 + 160) = 0u;
        *(a5 + 176) = 0u;
        *(a5 + 128) = 0u;
        *(a5 + 144) = 0u;
        *(a5 + 96) = 0u;
        *(a5 + 112) = 0u;
        *(a5 + 64) = 0u;
        *(a5 + 80) = 0u;
        *(a5 + 32) = 0u;
        *(a5 + 48) = 0u;
        *a5 = 0u;
        *(a5 + 16) = 0u;
        *a5 = *a8 * *a8;
        *(a5 + 56) = a8[1] * a8[1];
        *(a5 + 112) = a8[2] * a8[2];
        *(a5 + 168) = *a9 * *a9;
        *(a5 + 224) = a9[1] * a9[1];
        *(a5 + 280) = a9[2] * a9[2];
      }

      ++v12;
    }

    while (v12 != a3);
  }

  return 0xFFFFFFFFLL;
}

void sub_1D0E47E1C(uint64_t a1)
{
  *a1 = &unk_1F4CF02B0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E47E8C(_BYTE *a1, char *a2, char a3)
{
  a1[32] = a3;
  sub_1D0BBB60C((a1 + 8), a2);
  v4 = *(*a1 + 32);

  return v4(a1);
}

uint64_t sub_1D0E47EEC(uint64_t a1)
{
  if (sub_1D0E48A04(a1, (a1 + 34), "use_input_locationd_data_file"))
  {
    if ((*(a1 + 34) & 1) != 0 && (sub_1D0E48578(a1, a1 + 35, "input_locationd_data_file") & 1) == 0)
    {
      v2 = sub_1D0BCD7C4(MEMORY[0x1E69E5310], "Invalid input_locationd_batched_data_file", 41);
      std::ios_base::getloc((v2 + *(*v2 - 24)));
      v3 = std::locale::use_facet(&v17, MEMORY[0x1E69E5318]);
      (v3->__vftable[2].~facet_0)(v3, 10);
LABEL_29:
      std::locale::~locale(&v17);
      std::ostream::put();
      std::ostream::flush();
      return 0;
    }
  }

  else
  {
    *(a1 + 34) = 0;
  }

  if ((sub_1D0E48A04(a1, (a1 + 33), "load_batched_data_from_locationd") & 1) == 0)
  {
    *(a1 + 33) = 0;
  }

  if (sub_1D0E48A04(a1, (a1 + 291), "use_input_ascii_batched_data_file"))
  {
    if ((*(a1 + 291) & 1) != 0 && (sub_1D0E48578(a1, a1 + 292, "input_ascii_batched_data_file") & 1) == 0)
    {
      v4 = sub_1D0BCD7C4(MEMORY[0x1E69E5310], "Invalid input_ascii_batched_data_file", 37);
      std::ios_base::getloc((v4 + *(*v4 - 24)));
      v5 = std::locale::use_facet(&v17, MEMORY[0x1E69E5318]);
      (v5->__vftable[2].~facet_0)(v5, 10);
      goto LABEL_29;
    }
  }

  else
  {
    *(a1 + 291) = 0;
  }

  if (sub_1D0E48A04(a1, (a1 + 548), "save_results_to_disk"))
  {
    if ((*(a1 + 548) & 1) != 0 && (sub_1D0E48578(a1, a1 + 549, "save_results_path") & 1) == 0)
    {
      v6 = sub_1D0BCD7C4(MEMORY[0x1E69E5310], "Invalid save_results_path", 25);
      std::ios_base::getloc((v6 + *(*v6 - 24)));
      v7 = std::locale::use_facet(&v17, MEMORY[0x1E69E5318]);
      (v7->__vftable[2].~facet_0)(v7, 10);
      goto LABEL_29;
    }
  }

  else
  {
    *(a1 + 548) = 0;
  }

  if (sub_1D0E48A04(a1, (a1 + 805), "load_matlab_inputs"))
  {
    if ((*(a1 + 805) & 1) != 0 && (sub_1D0E48578(a1, a1 + 806, "load_matlab_inputs_path") & 1) == 0)
    {
      v8 = sub_1D0BCD7C4(MEMORY[0x1E69E5310], "Invalid load_matlab_inputs_path", 31);
      std::ios_base::getloc((v8 + *(*v8 - 24)));
      v9 = std::locale::use_facet(&v17, MEMORY[0x1E69E5318]);
      (v9->__vftable[2].~facet_0)(v9, 10);
      goto LABEL_29;
    }
  }

  else
  {
    *(a1 + 805) = 0;
  }

  if ((sub_1D0E48578(a1, a1 + 1062, "temp_writable_path") & 1) == 0)
  {
    v12 = sub_1D0BCD7C4(MEMORY[0x1E69E5310], "Invalid temp_writable_path", 26);
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v13 = std::locale::use_facet(&v17, MEMORY[0x1E69E5318]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    goto LABEL_29;
  }

  if (sub_1D0E48A04(a1, (a1 + 1318), "use_truth_reference"))
  {
    if ((*(a1 + 1318) & 1) != 0 && (sub_1D0E48578(a1, a1 + 1319, "truth_reference_filename") & 1) == 0)
    {
      v10 = sub_1D0BCD7C4(MEMORY[0x1E69E5310], "Invalid truth_reference_filename", 32);
      std::ios_base::getloc((v10 + *(*v10 - 24)));
      v11 = std::locale::use_facet(&v17, MEMORY[0x1E69E5318]);
      (v11->__vftable[2].~facet_0)(v11, 10);
      goto LABEL_29;
    }
  }

  else
  {
    *(a1 + 1318) = 0;
  }

  if (sub_1D0E48A04(a1, (a1 + 1575), "enable_data_editing"))
  {
    if ((*(a1 + 1575) & 1) != 0 && (sub_1D0E48CE0(a1, (a1 + 1576), "data_editing_sigma_threshold") & 1) == 0)
    {
      *(a1 + 1576) = 0x4008000000000000;
      v15 = sub_1D0BCD7C4(MEMORY[0x1E69E5310], "Invalid data_editing_sigma_threshold", 36);
      std::ios_base::getloc((v15 + *(*v15 - 24)));
      v16 = std::locale::use_facet(&v17, MEMORY[0x1E69E5318]);
      (v16->__vftable[2].~facet_0)(v16, 10);
      goto LABEL_29;
    }
  }

  else
  {
    *(a1 + 1575) = 0;
  }

  if ((sub_1D0E48CE0(a1, (a1 + 1584), "horizontal_position_process_noise") & 1) == 0)
  {
    *(a1 + 1584) = 0x3FF0000000000000;
  }

  if ((sub_1D0E48CE0(a1, (a1 + 1592), "vertical_position_process_noise") & 1) == 0)
  {
    *(a1 + 1592) = 0x3FB999999999999ALL;
  }

  if ((sub_1D0E48CE0(a1, (a1 + 1600), "velocity_sigma_fudge_factor") & 1) == 0)
  {
    *(a1 + 1600) = 0x3FF0000000000000;
  }

  if ((sub_1D0E48CE0(a1, (a1 + 1608), "vertical_speed_limit") & 1) == 0)
  {
    *(a1 + 1608) = 0x4049000000000000;
  }

  if ((sub_1D0E48CE0(a1, (a1 + 1616), "minimum_single_component_speed_standard_deviation") & 1) == 0)
  {
    *(a1 + 1616) = 0x3FD6A09E667F3BD1;
  }

  if ((sub_1D0E48CE0(a1, (a1 + 1624), "mimimum_driving_speed_that_requires_speed_uncertainty_inflation") & 1) == 0)
  {
    *(a1 + 1624) = 0x4024000000000000;
  }

  if ((sub_1D0E48CE0(a1, (a1 + 1632), "minimum_driving_speed_standard_deviation") & 1) == 0)
  {
    *(a1 + 1632) = 0x4006A09E667F3BCCLL;
  }

  return 1;
}

uint64_t sub_1D0E48578(uint64_t a1, uint64_t a2, char *a3)
{
  if ((*(a1 + 31) & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 31))
    {
      goto LABEL_98;
    }

LABEL_5:
    sub_1D0B751F4(&v56, "\n");
    v6 = strlen(a3);
    v7 = std::string::append(&v56, a3, v6);
    v8 = std::string::append(v7, ":", 1uLL);
    v9 = (a1 + 8);
    v10 = *(a1 + 31);
    __s = a3;
    if (v10 < 0)
    {
      v11 = *(a1 + 8);
      v12 = *(a1 + 16);
    }

    else
    {
      v11 = (a1 + 8);
      v12 = *(a1 + 31);
    }

    v13 = SHIBYTE(v8->__r_.__value_.__r.__words[2]);
    if (v13 >= 0)
    {
      v14 = v8;
    }

    else
    {
      v14 = v8->__r_.__value_.__r.__words[0];
    }

    if (v13 >= 0)
    {
      size = HIBYTE(v8->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8->__r_.__value_.__l.__size_;
    }

    if (size)
    {
      if (v12 >= size)
      {
        v20 = &v11[v12];
        v21 = v14->__r_.__value_.__s.__data_[0];
        v22 = v11;
        do
        {
          v23 = v12 - size;
          if (v23 == -1)
          {
            break;
          }

          v24 = memchr(v22, v21, v23 + 1);
          if (!v24)
          {
            break;
          }

          v25 = v24;
          if (!memcmp(v24, v14, size))
          {
            if (v25 != v20)
            {
              v19 = v25 - v11;
              if (v25 - v11 != -1)
              {
                goto LABEL_48;
              }
            }

            break;
          }

          v22 = v25 + 1;
          v12 = v20 - (v25 + 1);
        }

        while (v12 >= size);
      }

      sub_1D0BBB60C(&v56, __s);
      v16 = std::string::append(&v56, ":", 1uLL);
      v10 = *(a1 + 31);
      if (v10 < 0)
      {
        v17 = *(a1 + 8);
        v18 = *(a1 + 16);
      }

      else
      {
        v17 = (a1 + 8);
        v18 = *(a1 + 31);
      }

      v26 = SHIBYTE(v16->__r_.__value_.__r.__words[2]);
      if (v26 >= 0)
      {
        v27 = v16;
      }

      else
      {
        v27 = v16->__r_.__value_.__r.__words[0];
      }

      if (v26 >= 0)
      {
        v28 = HIBYTE(v16->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v28 = v16->__r_.__value_.__l.__size_;
      }

      if (v28)
      {
        if (v18 >= v28)
        {
          v30 = &v17[v18];
          v31 = v27->__r_.__value_.__s.__data_[0];
          v32 = v17;
          do
          {
            v33 = v18 - v28;
            if (v33 == -1)
            {
              break;
            }

            v34 = memchr(v32, v31, v33 + 1);
            if (!v34)
            {
              break;
            }

            v35 = v34;
            if (!memcmp(v34, v27, v28))
            {
              v29 = 1;
              if (v35 == v30)
              {
                goto LABEL_35;
              }

              a3 = __s;
              if (v35 != v17)
              {
                goto LABEL_96;
              }

              goto LABEL_47;
            }

            v32 = v35 + 1;
            v18 = v30 - (v35 + 1);
          }

          while (v18 >= v28);
        }

        v29 = 1;
LABEL_35:
        a3 = __s;
LABEL_96:
        if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v56.__r_.__value_.__l.__data_);
          if (v29)
          {
            goto LABEL_98;
          }
        }

        else if (v29)
        {
          goto LABEL_98;
        }

        return 1;
      }

LABEL_47:
      v19 = 0;
    }

    else
    {
      v19 = 0;
    }

LABEL_48:
    v36 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v36 = v56.__r_.__value_.__l.__size_;
    }

    v37 = v36 + v19;
    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

LABEL_51:
    v38 = v10;
    if (v37 < v10)
    {
      while (v38 > v37)
      {
        v39 = a1 + 8;
        if ((v10 & 0x80000000) != 0)
        {
          v39 = *v9;
        }

        if (*(v39 + v37) != 58)
        {
          v40 = v10;
          if ((v10 & 0x80000000) != 0)
          {
            v40 = *(a1 + 16);
          }

          if (v40 <= v37)
          {
            break;
          }

          v41 = a1 + 8;
          if ((v10 & 0x80000000) != 0)
          {
            v41 = *v9;
          }

          if (*(v41 + v37) != 32)
          {
            v42 = v10;
            if ((v10 & 0x80000000) != 0)
            {
              v42 = *(a1 + 16);
            }

            if (v42 <= v37)
            {
              break;
            }

            v43 = a1 + 8;
            if ((v10 & 0x80000000) != 0)
            {
              v43 = *v9;
            }

            if (*(v43 + v37) != 9)
            {
              goto LABEL_72;
            }
          }
        }

        ++v37;
        if ((v10 & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

LABEL_53:
        v38 = *(a1 + 16);
        if (v37 >= v38)
        {
          goto LABEL_72;
        }
      }

      sub_1D0C54390();
    }

LABEL_72:
    v44 = 0;
    a3 = __s;
    do
    {
      v45 = v37 + v44;
      v46 = *(a1 + 31);
      if ((v46 & 0x8000000000000000) != 0)
      {
        if (v45 >= *(a1 + 16))
        {
          break;
        }
      }

      else if (v45 >= v46)
      {
        break;
      }

      v47 = a1 + 8;
      if ((v46 & 0x80000000) != 0)
      {
        v47 = *v9;
      }

      if (*(v47 + v44 + v37) == 10)
      {
        break;
      }

      if ((v46 & 0x80000000) != 0)
      {
        v48 = *(a1 + 16);
      }

      else
      {
        v48 = *(a1 + 31);
      }

      if (v48 <= v45)
      {
LABEL_104:
        sub_1D0C54390();
      }

      v49 = a1 + 8;
      if ((v46 & 0x80000000) != 0)
      {
        v49 = *v9;
      }

      if (*(v49 + v44 + v37) == 13)
      {
        break;
      }

      if ((v46 & 0x80000000) != 0)
      {
        v50 = *(a1 + 16);
      }

      else
      {
        v50 = *(a1 + 31);
      }

      if (v50 <= v45)
      {
        goto LABEL_104;
      }

      v51 = a1 + 8;
      if ((v46 & 0x80000000) != 0)
      {
        v51 = *v9;
      }

      *(a2 + v44) = *(v51 + v44 + v37);
      ++v44;
    }

    while (v44 != 255);
    v29 = 0;
    *(a2 + v44) = 0;
    if (*(a1 + 32) == 1)
    {
      v55 = 0;
      v54 = 2;
      cnprint::CNPrinter::Print(&v55, &v54, "ConfigLoader: %s loaded value %s", __s, a2);
      v29 = 0;
    }

    goto LABEL_96;
  }

  if (*(a1 + 16))
  {
    goto LABEL_5;
  }

LABEL_98:
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (*(a1 + 32) == 1)
  {
    LOWORD(v56.__r_.__value_.__l.__data_) = 0;
    LOBYTE(v55) = 2;
    cnprint::CNPrinter::Print(&v56, &v55, "ConfigLoader: %s using default value %s", a3, &unk_1D0ED80C5);
  }

  return 0;
}

void sub_1D0E489DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0E48A04(uint64_t a1, char *a2, char *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!sub_1D0E48578(a1, __s, a3))
  {
    return 0;
  }

  if (!__s[0])
  {
    goto LABEL_70;
  }

  p_p = &__p;
  sub_1D0B751F4(&__p, __s);
  v5 = v20;
  v6 = __p;
  if ((v20 & 0x80u) == 0)
  {
    v7 = &__p + v20;
  }

  else
  {
    v7 = __p + v19;
  }

  if ((v20 & 0x80u) != 0)
  {
    p_p = __p;
  }

  if (p_p != v7)
  {
    do
    {
      *p_p = __tolower(*p_p);
      ++p_p;
    }

    while (p_p != v7);
    v5 = v20;
    v6 = __p;
  }

  v8 = &__p;
  if ((v5 & 0x80u) != 0)
  {
    v8 = v6;
  }

  if (*v8 == 49)
  {
    goto LABEL_14;
  }

  if ((v5 & 0x80) != 0)
  {
    if (v19 == 1)
    {
      v16 = *v6;
      switch(v16)
      {
        case '0':
          goto LABEL_66;
        case 'y':
          goto LABEL_14;
        case 'n':
          goto LABEL_66;
      }
    }

    else
    {
      if (v19 == 3)
      {
        if (*v6 == 25977 && *(v6 + 2) == 115)
        {
          goto LABEL_14;
        }
      }

      else if (v19 == 4 && *v6 == 1702195828)
      {
        goto LABEL_14;
      }

      if (*v6 == 48)
      {
        goto LABEL_66;
      }

      v14 = v6;
      if (v19 == 2)
      {
        goto LABEL_63;
      }

      if (v19 == 5 && *v6 == 1936482662 && *(v6 + 4) == 101)
      {
        goto LABEL_66;
      }
    }

    v10 = 0;
    *a2 = 0;
LABEL_69:
    operator delete(v6);
    return v10;
  }

  if (v5 == 1)
  {
    if (v6 == 48 || v6 == 110)
    {
      goto LABEL_66;
    }

    if (v6 != 121)
    {
      goto LABEL_70;
    }
  }

  else if (v5 == 3)
  {
    if (__p != 25977 || BYTE2(__p) != 115)
    {
      goto LABEL_31;
    }
  }

  else if (v5 != 4 || v6 != 1702195828)
  {
LABEL_31:
    if (v6 == 48)
    {
      goto LABEL_66;
    }

    if (v5 != 1)
    {
      if (v5 != 2)
      {
        if (v5 != 5)
        {
          goto LABEL_70;
        }

        if (__p != 1936482662 || BYTE4(__p) != 101)
        {
          goto LABEL_70;
        }

LABEL_66:
        v9 = 0;
        goto LABEL_67;
      }

      v14 = &__p;
LABEL_63:
      v9 = 0;
      v10 = 0;
      if (*v14 != 28526)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }

    if (v6 == 110)
    {
      goto LABEL_66;
    }

LABEL_70:
    v10 = 0;
    *a2 = 0;
    return v10;
  }

LABEL_14:
  v9 = 1;
LABEL_67:
  v10 = 1;
LABEL_68:
  *a2 = v9;
  if ((v5 & 0x80) != 0)
  {
    goto LABEL_69;
  }

  return v10;
}

uint64_t sub_1D0E48CE0(uint64_t a1, void *a2, char *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  result = sub_1D0E48578(a1, __s, a3);
  if (result)
  {
    v5 = 0;
    v6[0] = __s;
    v6[1] = &__s[strlen(__s)];
    if ((sub_1D0D42304(v6, &v5) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v7);
      v7.__vftable = &unk_1F4CDFA50;
      v8 = MEMORY[0x1E69E53D8];
      v9 = MEMORY[0x1E69E5458];
      sub_1D0D428D0(&v7);
    }

    *a2 = v5;
    return 1;
  }

  return result;
}

void sub_1D0E48DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::exception a13, __int128 a14)
{
  std::exception::~exception(&a13);
  if (a2 == 1)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    a13.__vftable = &unk_1F4CDFA50;
    a14 = *(exception_ptr + 8);
    __cxa_begin_catch(a1);
    std::exception::~exception(&a13);
    __cxa_end_catch();
    JUMPOUT(0x1D0E48D4CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0E48E44(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0xAA];
    v7 = *v6;
    v8 = *v6 + 24 * (v5 % 0xAA);
    v9 = v2[(a1[5] + v5) / 0xAA] + 24 * ((a1[5] + v5) % 0xAA);
    if (v8 != v9)
    {
      do
      {
        if (*(v8 + 23) < 0)
        {
          operator delete(*v8);
          v7 = *v6;
        }

        v8 += 24;
        if (v8 - v7 == 4080)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
          v8 = v10;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 85;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_18;
    }

    v12 = 170;
  }

  a1[4] = v12;
LABEL_18:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return sub_1D0C565EC(a1);
}

uint64_t *sub_1D0E48FA0(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if (a2 < 0x555555555555556)
    {
      sub_1D0E49028(a2);
    }

    sub_1D0C5663C();
  }

  return a1;
}

void sub_1D0E4900C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0E49028(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

uint64_t *sub_1D0E49080(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1D0C5663C();
  }

  return a1;
}

void sub_1D0E4910C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1D0E49128(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if (a2 < 0xE38E38E38E38E4)
    {
      sub_1D0E491B4(a2);
    }

    sub_1D0C5663C();
  }

  return a1;
}

void sub_1D0E49198(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0E491B4(unint64_t a1)
{
  if (a1 < 0xE38E38E38E38E4)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

uint64_t swan::LoadMATLABData::Load(uint64_t a1, const char *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v45 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x100uLL, "%s%s", a2, "t_noisy.txt");
  v18 = fopen(__str, "r");
  if (!v18)
  {
    goto LABEL_26;
  }

  v19 = v18;
  if (a3)
  {
    v20 = 0;
    v21 = 1;
    do
    {
      fscanf(v19, "%lf\n", a4 + 8 * v20);
      v20 = v21++;
    }

    while (v20 < a3);
  }

  fclose(v19);
  snprintf(__str, 0x100uLL, "%s%s", a2, "x_noisy.txt");
  v22 = fopen(__str, "r");
  if (!v22)
  {
    goto LABEL_26;
  }

  v23 = v22;
  if (a3)
  {
    v24 = 0;
    v25 = 1;
    do
    {
      fscanf(v23, "%lf %lf %lf %lf %lf %lf\n", a5 + 48 * v24, a5 + 48 * v24 + 8, a5 + 48 * v24 + 16, a5 + 48 * v24 + 24, a5 + 48 * v24 + 32, a5 + 48 * v24 + 40);
      v24 = v25++;
    }

    while (v24 < a3);
  }

  fclose(v23);
  snprintf(__str, 0x100uLL, "%s%s", a2, "sigma_x.txt");
  v26 = fopen(__str, "r");
  if (!v26)
  {
    goto LABEL_26;
  }

  v27 = v26;
  if (a3)
  {
    v28 = 0;
    v29 = 1;
    do
    {
      fscanf(v27, "%lf %lf %lf\n", a6 + 24 * v28, a6 + 24 * v28 + 8, a6 + 24 * v28 + 16);
      v28 = v29++;
    }

    while (v28 < a3);
  }

  fclose(v27);
  snprintf(__str, 0x100uLL, "%s%s", a2, "sigma_vx.txt");
  v30 = fopen(__str, "r");
  if (!v30)
  {
    goto LABEL_26;
  }

  v31 = v30;
  if (a3)
  {
    v32 = 0;
    v33 = 1;
    do
    {
      fscanf(v31, "%lf %lf %lf\n", a7 + 24 * v32, a7 + 24 * v32 + 8, a7 + 24 * v32 + 16);
      v32 = v33++;
    }

    while (v32 < a3);
  }

  fclose(v31);
  snprintf(__str, 0x100uLL, "%s%s", a2, "x0.txt");
  v34 = fopen(__str, "r");
  if (!v34)
  {
    goto LABEL_26;
  }

  v35 = v34;
  v36 = 6;
  do
  {
    fscanf(v35, "%lf\n", a8);
    a8 += 8;
    --v36;
  }

  while (v36);
  fclose(v35);
  snprintf(__str, 0x100uLL, "%s%s", a2, "P0.txt");
  v37 = fopen(__str, "r");
  if (!v37)
  {
    goto LABEL_26;
  }

  v38 = v37;
  for (i = 0; i != 48; i += 8)
  {
    fscanf(v38, "%lf %lf %lf %lf %lf %lf\n", *(a9 + i), *(a9 + i) + 8, *(a9 + i) + 16, *(a9 + i) + 24, *(a9 + i) + 32, *(a9 + i) + 40);
  }

  fclose(v38);
  snprintf(__str, 0x100uLL, "%s%s", a2, "sigma_wx_horizontal.txt");
  v40 = fopen(__str, "r");
  if (v40 && (fscanf(v40, "%lf\n", a10), snprintf(__str, 0x100uLL, "%s%s", a2, "sigma_wx_vertical.txt"), (v41 = fopen(__str, "r")) != 0))
  {
    v42 = v41;
    fscanf(v41, "%lf\n", a11);
    fclose(v42);
  }

  else
  {
LABEL_26:
    printf("Error opening %s. Exiting.\n", __str);
  }

  return 0xFFFFFFFFLL;
}

double swan::BatchLogParser::BatchLogParser(swan::BatchLogParser *this)
{
  *(this + 8) = 0;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  *(this + 8) = 0;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

BOOL swan::BatchLogParser::contains(swan::BatchLogParser *this, char *__s1, const char *__s2)
{
  result = 0;
  if (__s1)
  {
    if (__s2)
    {
      return strstr(__s1, __s2) != 0;
    }
  }

  return result;
}

void swan::BatchLogParser::trimField(uint64_t a1, void *a2)
{
  if (*(a2 + 23) >= 0)
  {
    v2 = *(a2 + 23);
  }

  else
  {
    v2 = a2[1];
  }

  if (v2)
  {
    operator new[]();
  }
}

BOOL swan::BatchLogParser::getField(void *a1, std::string *this, unint64_t a3)
{
  v4 = a1[8];
  if (v4 > a3)
  {
    std::string::operator=(this, (*(a1[4] + 8 * ((a1[7] + a3) / 0xAA)) + 24 * ((a1[7] + a3) % 0xAA)));
  }

  return v4 > a3;
}

BOOL swan::BatchLogParser::getField(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[8];
  if (!v4)
  {
    return 0;
  }

  for (i = 0; i < v4; ++i)
  {
    v9 = a1[7];
    v10 = a1[4];
    v11 = *(v10 + 8 * ((i + v9) / 0xAA)) + 24 * ((i + v9) % 0xAA);
    v12 = *(v11 + 23);
    if (v12 >= 0)
    {
      v13 = *(v11 + 23);
    }

    else
    {
      v13 = *(v11 + 8);
    }

    v14 = *(a3 + 23);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a3 + 8);
    }

    if (v13 == v14)
    {
      v16 = v12 >= 0 ? (*(v10 + 8 * ((i + v9) / 0xAA)) + 24 * ((i + v9) % 0xAA)) : *v11;
      v17 = v15 >= 0 ? a3 : *a3;
      if (!memcmp(v16, v17, v13))
      {
        if (a4 + i >= v4)
        {
          return 0;
        }

        std::string::operator=(a2, (*(v10 + 8 * ((a4 + i + v9) / 0xAA)) + 24 * ((a4 + i + v9) % 0xAA)));
        v4 = a1[8];
      }
    }
  }

  v18 = *(a2 + 23);
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a2 + 8);
  }

  return v18 != 0;
}

BOOL swan::BatchLogParser::getField(swan::BatchLogParser *this, double *a2, unint64_t a3)
{
  memset(&v10, 0, sizeof(v10));
  v4 = *(this + 8);
  if (v4 > a3)
  {
    std::string::operator=(&v10, (*(*(this + 4) + 8 * ((*(this + 7) + a3) / 0xAA)) + 24 * ((*(this + 7) + a3) % 0xAA)));
    v6 = SHIBYTE(v10.__r_.__value_.__r.__words[2]);
    v7 = v10.__r_.__value_.__r.__words[0];
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v10;
    }

    else
    {
      v8 = v10.__r_.__value_.__r.__words[0];
    }

    *a2 = atof(v8);
    if (v6 < 0)
    {
      operator delete(v7);
    }
  }

  return v4 > a3;
}

void sub_1D0E49B14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL swan::BatchLogParser::getField(void *a1, double *a2, uint64_t a3, uint64_t a4)
{
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  if (*(a3 + 23) < 0)
  {
    sub_1D0BC39B4(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v12 = *(a3 + 16);
  }

  Field = swan::BatchLogParser::getField(a1, v13, __p, a4);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  v8 = SHIBYTE(v14);
  if (Field)
  {
    if (v14 >= 0)
    {
      v9 = v13;
    }

    else
    {
      v9 = v13[0];
    }

    *a2 = atof(v9);
  }

  if (v8 < 0)
  {
    operator delete(v13[0]);
  }

  return Field;
}

void sub_1D0E49BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL swan::BatchLogParser::getField(swan::BatchLogParser *this, int *a2, unint64_t a3)
{
  memset(&v10, 0, sizeof(v10));
  v4 = *(this + 8);
  if (v4 > a3)
  {
    std::string::operator=(&v10, (*(*(this + 4) + 8 * ((*(this + 7) + a3) / 0xAA)) + 24 * ((*(this + 7) + a3) % 0xAA)));
    v6 = SHIBYTE(v10.__r_.__value_.__r.__words[2]);
    v7 = v10.__r_.__value_.__r.__words[0];
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v10;
    }

    else
    {
      v8 = v10.__r_.__value_.__r.__words[0];
    }

    *a2 = atoi(v8);
    if (v6 < 0)
    {
      operator delete(v7);
    }
  }

  return v4 > a3;
}

void sub_1D0E49CDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL swan::BatchLogParser::getField(swan::BatchLogParser *this, uint64_t *a2, unint64_t a3)
{
  memset(&v10, 0, sizeof(v10));
  v4 = *(this + 8);
  if (v4 > a3)
  {
    std::string::operator=(&v10, (*(*(this + 4) + 8 * ((*(this + 7) + a3) / 0xAA)) + 24 * ((*(this + 7) + a3) % 0xAA)));
    v6 = SHIBYTE(v10.__r_.__value_.__r.__words[2]);
    v7 = v10.__r_.__value_.__r.__words[0];
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v10;
    }

    else
    {
      v8 = v10.__r_.__value_.__r.__words[0];
    }

    *a2 = atoll(v8);
    if (v6 < 0)
    {
      operator delete(v7);
    }
  }

  return v4 > a3;
}

void sub_1D0E49DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL swan::BatchLogParser::getField(swan::BatchLogParser *this, unsigned int *a2, unint64_t a3)
{
  memset(&__str, 0, sizeof(__str));
  v4 = *(this + 8);
  if (v4 > a3)
  {
    std::string::operator=(&__str, (*(*(this + 4) + 8 * ((*(this + 7) + a3) / 0xAA)) + 24 * ((*(this + 7) + a3) % 0xAA)));
    *a2 = std::stoul(&__str, 0, 10);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  return v4 > a3;
}

void sub_1D0E49E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL swan::BatchLogParser::getField(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  memset(&__str, 0, sizeof(__str));
  if (*(a3 + 23) < 0)
  {
    sub_1D0BC39B4(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v11 = *(a3 + 16);
  }

  Field = swan::BatchLogParser::getField(a1, &__str, __p, a4);
  v8 = Field;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
    if (!v8)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (Field)
  {
LABEL_8:
    *a2 = std::stoul(&__str, 0, 10);
  }

LABEL_9:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_1D0E49F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL swan::BatchLogParser::getField(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  if (*(a3 + 23) < 0)
  {
    sub_1D0BC39B4(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v12 = *(a3 + 16);
  }

  Field = swan::BatchLogParser::getField(a1, v13, __p, a4);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  v8 = SHIBYTE(v14);
  if (Field)
  {
    if (v14 >= 0)
    {
      v9 = v13;
    }

    else
    {
      v9 = v13[0];
    }

    *a2 = atoll(v9);
  }

  if (v8 < 0)
  {
    operator delete(v13[0]);
  }

  return Field;
}

void sub_1D0E4A04C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL swan::BatchLogParser::getField(void *a1, int *a2, uint64_t a3, uint64_t a4)
{
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  if (*(a3 + 23) < 0)
  {
    sub_1D0BC39B4(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v12 = *(a3 + 16);
  }

  Field = swan::BatchLogParser::getField(a1, v13, __p, a4);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  v8 = SHIBYTE(v14);
  if (Field)
  {
    if (v14 >= 0)
    {
      v9 = v13;
    }

    else
    {
      v9 = v13[0];
    }

    *a2 = atoi(v9);
  }

  if (v8 < 0)
  {
    operator delete(v13[0]);
  }

  return Field;
}

void sub_1D0E4A140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void swan::BatchLogParser::wipef(uint64_t a1, uint64_t i)
{
  sub_1D0E4E3A8(&v2);
  v5 = 0;
  v4 = 0u;
  v3 = 0u;
  sub_1D0E4E408(&v2, ",Function,.*,", "");
}

void sub_1D0E4A574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::locale a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  sub_1D0E4A610(&a18);
  _Unwind_Resume(a1);
}

void sub_1D0E4A610(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    sub_1D0B7CAB8(locale);
  }

  std::locale::~locale(this);
}

void sub_1D0E4AC8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  operator delete(v17);
  if (v16)
  {
    operator delete(v16);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void swan::BatchLogParser::updateEnforceCsv(std::string *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1D0BC39B4(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    for (i = 0; i != size; ++i)
    {
      v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v6 = __p.__r_.__value_.__r.__words[0];
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (p_p->__r_.__value_.__s.__data_[i] == 58)
      {
        p_p->__r_.__value_.__s.__data_[i] = 44;
        v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v6 = __p.__r_.__value_.__r.__words[0];
      }

      if (v5 >= 0)
      {
        v8 = &__p;
      }

      else
      {
        v8 = v6;
      }

      if (v8->__r_.__value_.__s.__data_[i] == 93)
      {
        v8->__r_.__value_.__s.__data_[i] = 44;
        v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v6 = __p.__r_.__value_.__r.__words[0];
      }

      if (v5 >= 0)
      {
        v9 = &__p;
      }

      else
      {
        v9 = v6;
      }

      if (v9->__r_.__value_.__s.__data_[i] == 61)
      {
        v9->__r_.__value_.__s.__data_[i] = 44;
      }
    }
  }

  swan::BatchLogParser::update(a1, &__p);
}

void sub_1D0E4ADE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t swan::BatchLogParser::convertASCIIToStruct(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v51 = *MEMORY[0x1E69E9840];
  bzero(&v34, 0xF8uLL);
  if (*(v10 + 23) >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = *v10;
  }

  v12 = fopen(v11, "r");
  if (v12)
  {
    v13 = v12;
    sub_1D0B751F4(&__p, "%%1:deviceTime(s),2:Latitude(deg),3:Longitude(deg),4:Accuracy(m),5:TTFF(s),6:TTF(s),7:Speed(m/s),8:Course(deg),9:Altitude(m),10:VerticalAccuracy(m),11:AssistanceTime,12:AssistanceLocation,13:AssistanceEph,14:GpsTimeOfWeeks(ms),15:GpsWeek,16:Undulation(m),17:SpeedAccuracy(m/s),18:CourseAccuracy(deg),19:A(m),20:B(m),21:AZ(deg),22:HDOP,23:VDOP,24:ODOM,25:LP,26:SA,27:R,28:VTOW,29:CTOW,30:TUNC,31:NS,32:MS,33:AgeOfPowerMode,34:SQI,35:verticalSpeed(m/s),36:vertcalSpeedAccuracy(m/s)\n");
    v14 = 0;
    v15 = 0;
    *v2 = 0;
    while (1)
    {
      do
      {
        if (feof(v13) || !fgets(v50, 0x2000, v13))
        {
          goto LABEL_14;
        }
      }

      while (v50[0] == 37);
      if (sscanf(v50, "%lf,%lf,%lf,%lf,%lf,%lf,%lf,%lf,%lf,%lf,%d,%d,%d,%d,%lf,%lf,%lf,%lf,%lf,%lf,%lf,%lf,%lf,%lf,%d,%d,%d,%d,%d,%lf,%d,%d,%lf,%d,%lf,%lf\n", &v34, &v34 + 8, &v35, &v35 + 8, &v36, &v36 + 8, &v37, &v37 + 8, &v38, &v38 + 8, &v39, &v39 + 4, &v39 + 8, &v39 + 12, &v40, &v40 + 8, &v41, &v41 + 8, &v42, &v42 + 8, &v43, &v43 + 8, &v44, &v44 + 8, &v45, &v45 + 4, &v45 + 8, &v45 + 12, &v46, &v46 + 8, &v47, &v47 + 4, &v47 + 8, &v48, &v48 + 8, &v49) != 36)
      {
        break;
      }

      v16 = *v4 + 248 * v15;
      v17 = v34;
      v18 = v35;
      v19 = v37;
      *(v16 + 32) = v36;
      *(v16 + 48) = v19;
      *v16 = v17;
      *(v16 + 16) = v18;
      v20 = v38;
      v21 = v39;
      v22 = v41;
      *(v16 + 96) = v40;
      *(v16 + 112) = v22;
      *(v16 + 64) = v20;
      *(v16 + 80) = v21;
      v23 = v42;
      v24 = v43;
      v25 = v45;
      *(v16 + 160) = v44;
      *(v16 + 176) = v25;
      *(v16 + 128) = v23;
      *(v16 + 144) = v24;
      v26 = v46;
      v27 = v47;
      v28 = v48;
      *(v16 + 240) = v49;
      *(v16 + 208) = v27;
      *(v16 + 224) = v28;
      *(v16 + 192) = v26;
      if (++v14 > v6)
      {
        ++v15;
      }

      if (v15 == v8)
      {
        v15 = v8;
LABEL_14:
        v29 = 0;
        *v2 = v15;
        goto LABEL_15;
      }
    }

    v29 = 0xFFFFFFFFLL;
LABEL_15:
    if (v33 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    if (*(v10 + 23) >= 0)
    {
      v30 = v10;
    }

    else
    {
      v30 = *v10;
    }

    fprintf(*MEMORY[0x1E69E9848], "Unable to open %s\n", v30);
    return 0xFFFFFFFFLL;
  }

  return v29;
}

{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v12 = v3;
  v5 = v4;
  v17 = *MEMORY[0x1E69E9840];
  bzero(__src, 0x108uLL);
  if (*(v5 + 23) >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = *v5;
  }

  v7 = fopen(v6, "r");
  if (v7)
  {
    v8 = v7;
    sub_1D0B751F4(&__p, "%%1:deviceTime(s),2:Latitude(deg),3:Longitude(deg),4:Accuracy(m),5:TTFF(s),6:TTF(s),7:Speed(m/s),8:Course(deg),9:Altitude(m),10:VerticalAccuracy(m),11:AssistanceTime,12:AssistanceLocation,13:AssistanceEph,14:GpsTimeOfWeeks(ms),15:GpsWeek,16:Undulation(m),17:SpeedAccuracy(m/s),18:CourseAccuracy(deg),19:A(m),20:B(m),21:AZ(deg),22:HDOP,23:VDOP,24:ODOM,25:LP,26:SA,27:R,28:VTOW,29:CTOW,30:TUNC,31:NS,32:MS,33:AgeOfPowerMode,34:SQI,35:verticalSpeed(m/s),36:vertcalSpeedAccuracy(m/s)\n");
    *v2 = 0;
    if (!feof(v8))
    {
      while (fgets(v16, 0x2000, v8))
      {
        if (v16[0] != 37)
        {
          if (sscanf(v16, "%lf,%x,%lf,%d,%d,%lld,%d,%lf,%lf,%lf,%lf,%lf,%d,%lf,%lf,%lf,%lf,%lf,%lf,%lf,%lf,%lf,%lf,%lf,%lf,%d,%lf,%lf,%lf,%d,%lf,%lf,%lf,%lf\n", __src, &__src[8], &__src[16], &__src[24], &__src[28], &__src[32], &__src[40], &__src[48], &__src[56], &__src[64], &__src[72], &__src[80], &__src[88], &__src[96], &__src[104], &__src[112], &__src[120], &__src[128], &__src[136], &__src[144], &__src[152], &__src[160], &__src[168], &__src[176], &__src[184], &__src[192], &__src[200], &__src[208], &__src[216], &__src[224], &__src[232], &__src[240], &__src[248], &__src[256]) != 34)
          {
            v9 = 0xFFFFFFFFLL;
            goto LABEL_7;
          }

          memcpy((v12 + 264 * *v2), __src, 0x108uLL);
          ++*v2;
        }

        if (feof(v8))
        {
          break;
        }
      }
    }

    v9 = 0;
LABEL_7:
    if (v14 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    if (*(v5 + 23) >= 0)
    {
      v10 = v5;
    }

    else
    {
      v10 = *v5;
    }

    fprintf(*MEMORY[0x1E69E9848], "Unable to open %s\n", v10);
    return 0;
  }

  return v9;
}

uint64_t swan::BatchLogParser::parseGPSBatchIntoASCII(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v47 = *MEMORY[0x1E69E9840];
  bzero(v43, 0x108uLL);
  if (*(v4 + 23) >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = *v4;
  }

  v6 = fopen(v5, "r");
  if (!v6)
  {
    if (*(v4 + 23) >= 0)
    {
      v30 = v4;
    }

    else
    {
      v30 = *v4;
    }

    fprintf(*MEMORY[0x1E69E9848], "Unable to open %s\n", v30);
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  if (*(v2 + 23) >= 0)
  {
    v8 = *(v2 + 23);
  }

  else
  {
    v8 = v2[1];
  }

  p_p = &__p;
  sub_1D0BBB710(&__p, v8 + 6);
  if (v42 < 0)
  {
    p_p = __p;
  }

  if (v8)
  {
    if (*(v2 + 23) >= 0)
    {
      v10 = v2;
    }

    else
    {
      v10 = *v2;
    }

    memmove(p_p, v10, v8);
  }

  strcpy(p_p + v8, ".1.csv");
  if (v42 >= 0)
  {
    v11 = &__p;
  }

  else
  {
    v11 = __p;
  }

  v12 = fopen(v11, "w");
  if (!v12)
  {
    v31 = &__p;
    if (v42 < 0)
    {
      v31 = __p;
    }

    fprintf(*MEMORY[0x1E69E9848], "Unable to open %s\n", v31);
    v29 = 0xFFFFFFFFLL;
    goto LABEL_85;
  }

  sub_1D0B751F4(v38, "%%1:deviceTime(s),2:Latitude(deg),3:Longitude(deg),4:Accuracy(m),5:TTFF(s),6:TTF(s),7:Speed(m/s),8:Course(deg),9:Altitude(m),10:VerticalAccuracy(m),11:AssistanceTime,12:AssistanceLocation,13:AssistanceEph,14:GpsTimeOfWeeks(ms),15:GpsWeek,16:Undulation(m),17:SpeedAccuracy(m/s),18:CourseAccuracy(deg),19:A(m),20:B(m),21:AZ(deg),22:HDOP,23:VDOP,24:ODOM,25:LP,26:SA,27:R,28:VTOW,29:CTOW,30:TUNC,31:NS,32:MS,33:AgeOfPowerMode,34:SQI,35:verticalSpeed(m/s),36:vertcalSpeedAccuracy(m/s)\n");
  if (v39 >= 0)
  {
    v13 = v38;
  }

  else
  {
    v13 = v38[0];
  }

  fputs(v13, v12);
  v14 = 1;
  v33 = -1;
  while (!feof(v7) && fgets(__s1, 0x2000, v7))
  {
    v37 = 0;
    memset(v36, 0, sizeof(v36));
    if (!strstr(__s1, "Batched results processed"))
    {
      goto LABEL_61;
    }

    fclose(v12);
    if (*(v2 + 23) >= 0)
    {
      v15 = *(v2 + 23);
    }

    else
    {
      v15 = v2[1];
    }

    sub_1D0BBB710(&v35, v15 + 1);
    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v35;
    }

    else
    {
      v16 = v35.__r_.__value_.__r.__words[0];
    }

    if (v15)
    {
      if (*(v2 + 23) >= 0)
      {
        v17 = v2;
      }

      else
      {
        v17 = *v2;
      }

      memmove(v16, v17, v15);
    }

    ++v14;
    *(&v16->__r_.__value_.__l.__data_ + v15) = 46;
    std::to_string(&v34, v14);
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v34;
    }

    else
    {
      v18 = v34.__r_.__value_.__r.__words[0];
    }

    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v34.__r_.__value_.__l.__size_;
    }

    v20 = std::string::append(&v35, v18, size);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v46[0].__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v46[0].__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = std::string::append(v46, ".csv", 4uLL);
    v23 = v22->__r_.__value_.__r.__words[0];
    v44[0] = v22->__r_.__value_.__l.__size_;
    *(v44 + 7) = *(&v22->__r_.__value_.__r.__words[1] + 7);
    v24 = HIBYTE(v22->__r_.__value_.__r.__words[2]);
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    if (v42 < 0)
    {
      operator delete(__p);
    }

    __p = v23;
    *v41 = v44[0];
    *&v41[7] = *(v44 + 7);
    v42 = v24;
    if (SHIBYTE(v46[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (v42 >= 0)
    {
      v25 = &__p;
    }

    else
    {
      v25 = __p;
    }

    v12 = fopen(v25, "w");
    if (v12)
    {
      sub_1D0B751F4(v46, "%%1:deviceTime(s),2:Latitude(deg),3:Longitude(deg),4:Accuracy(m),5:TTFF(s),6:TTF(s),7:Speed(m/s),8:Course(deg),9:Altitude(m),10:VerticalAccuracy(m),11:AssistanceTime,12:AssistanceLocation,13:AssistanceEph,14:GpsTimeOfWeeks(ms),15:GpsWeek,16:Undulation(m),17:SpeedAccuracy(m/s),18:CourseAccuracy(deg),19:A(m),20:B(m),21:AZ(deg),22:HDOP,23:VDOP,24:ODOM,25:LP,26:SA,27:R,28:VTOW,29:CTOW,30:TUNC,31:NS,32:MS,33:AgeOfPowerMode,34:SQI,35:verticalSpeed(m/s),36:vertcalSpeedAccuracy(m/s)\n");
      if ((v46[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = v46;
      }

      else
      {
        v26 = v46[0].__r_.__value_.__r.__words[0];
      }

      fputs(v26, v12);
      if (SHIBYTE(v46[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46[0].__r_.__value_.__l.__data_);
      }

      v33 = 0;
LABEL_61:
      if (strstr(__s1, ",CL-GPS,BATCHED,"))
      {
        sub_1D0B751F4(v46, __s1);
        swan::BatchLogParser::updateEnforceCsv(v36, v46);
      }

      v27 = 1;
      goto LABEL_68;
    }

    if (v42 >= 0)
    {
      v28 = &__p;
    }

    else
    {
      v28 = __p;
    }

    fprintf(*MEMORY[0x1E69E9848], "Unable to open %s\n", v28);
    v27 = 0;
LABEL_68:
    sub_1D0E48E44(&v36[24]);
    if ((v36[23] & 0x80000000) != 0)
    {
      operator delete(*v36);
      if ((v27 & 1) == 0)
      {
LABEL_72:
        v29 = 0;
        goto LABEL_80;
      }
    }

    else if ((v27 & 1) == 0)
    {
      goto LABEL_72;
    }
  }

  if (v12)
  {
    fclose(v12);
  }

  fclose(v7);
  v29 = v33;
LABEL_80:
  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

LABEL_85:
  if (v42 < 0)
  {
    operator delete(__p);
  }

  return v29;
}

void sub_1D0E4C15C(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x3C7]) < 0)
  {
    operator delete(STACK[0x3B0]);
  }

  _Unwind_Resume(a1);
}

uint64_t swan::BatchLogParser::parseGPSSaIntoASCII(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  __p[128] = *MEMORY[0x1E69E9840];
  bzero(&v27, 0xF8uLL);
  if (*(v6 + 23) >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = *v6;
  }

  v8 = fopen(v7, "r");
  if (!v8)
  {
    v20 = *MEMORY[0x1E69E9848];
    if (*(v6 + 23) >= 0)
    {
      v21 = v6;
    }

    else
    {
      v21 = *v6;
    }

    goto LABEL_26;
  }

  v9 = v8;
  v10 = *(v6 + 23);
  if (v10 >= 0)
  {
    v11 = v6;
  }

  else
  {
    v11 = *v6;
  }

  if (v10 >= 0)
  {
    v12 = *(v6 + 23);
  }

  else
  {
    v12 = *(v6 + 8);
  }

  v13 = sub_1D0BCD7C4(MEMORY[0x1E69E5310], v11, v12);
  std::ios_base::getloc((v13 + *(*v13 - 24)));
  v14 = std::locale::use_facet(__p, MEMORY[0x1E69E5318]);
  (v14->__vftable[2].~facet_0)(v14, 10);
  std::locale::~locale(__p);
  std::ostream::put();
  std::ostream::flush();
  if (*(v2 + 23) >= 0)
  {
    v15 = v2;
  }

  else
  {
    v15 = *v2;
  }

  v16 = fopen(v15, "w");
  if (!v16)
  {
    v20 = *MEMORY[0x1E69E9848];
    if (*(v2 + 23) >= 0)
    {
      v21 = v2;
    }

    else
    {
      v21 = *v2;
    }

LABEL_26:
    fprintf(v20, "Unable to open %s\n", v21);
    return 0;
  }

  v17 = v16;
  sub_1D0B751F4(v25, "%%1:deviceTime(s),2:Latitude(deg),3:Longitude(deg),4:Accuracy(m),5:TTFF(s),6:TTF(s),7:Speed(m/s),8:Course(deg),9:Altitude(m),10:VerticalAccuracy(m),11:AssistanceTime,12:AssistanceLocation,13:AssistanceEph,14:GpsTimeOfWeeks(ms),15:GpsWeek,16:Undulation(m),17:SpeedAccuracy(m/s),18:CourseAccuracy(deg),19:A(m),20:B(m),21:AZ(deg),22:HDOP,23:VDOP,24:ODOM,25:LP,26:SA,27:R,28:VTOW,29:CTOW,30:TUNC,31:NS,32:MS,33:AgeOfPowerMode,34:SQI,35:verticalSpeed(m/s),36:vertcalSpeedAccuracy(m/s)\n");
  if (v26 >= 0)
  {
    v18 = v25;
  }

  else
  {
    v18 = v25[0];
  }

  fputs(v18, v17);
  if (feof(v9))
  {
    v19 = 0xFFFFFFFFLL;
  }

  else
  {
    v19 = 0xFFFFFFFFLL;
    do
    {
      if (!fgets(__s1, 0x2000, v9))
      {
        break;
      }

      v24 = 0;
      memset(v23, 0, sizeof(v23));
      if (strstr(__s1, "Type,CL-GPSsa,Pos,") && !strstr(__s1, "TTFF") && (v4 & 1) == 0 || strstr(__s1, ",Type,CL-BATCHED,Pos,") && v4)
      {
        sub_1D0B751F4(__p, __s1);
        swan::BatchLogParser::updateEnforceCsv(v23, __p);
      }

      sub_1D0E48E44(&v23[24]);
      if ((v23[23] & 0x80000000) != 0)
      {
        operator delete(*v23);
      }
    }

    while (!feof(v9));
  }

  fclose(v17);
  fclose(v9);
  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  return v19;
}

uint64_t swan::BatchLogParser::parseRavenFixIntoRouteSmootherEpoch(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v32 = *MEMORY[0x1E69E9840];
  v23 = xmmword_1D0EC1620;
  v24 = xmmword_1D0E87BD0;
  __asm { FMOV            V0.2D, #-1.0 }

  v25 = xmmword_1D0E87BD0;
  v26 = _Q0;
  v27 = _Q0;
  v28 = _Q0;
  v29 = 0xBFF0000000000000;
  v30 = 0;
  if (*(v1 + 23) >= 0)
  {
    v8 = v1;
  }

  else
  {
    v8 = *v1;
  }

  v9 = fopen(v8, "r");
  if (v9)
  {
    v10 = v9;
    v11 = *(v2 + 23);
    if (v11 >= 0)
    {
      v12 = v2;
    }

    else
    {
      v12 = *v2;
    }

    if (v11 >= 0)
    {
      v13 = *(v2 + 23);
    }

    else
    {
      v13 = *(v2 + 8);
    }

    v14 = sub_1D0BCD7C4(MEMORY[0x1E69E5310], v12, v13);
    std::ios_base::getloc((v14 + *(*v14 - 24)));
    v15 = std::locale::use_facet(v20, MEMORY[0x1E69E5318]);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(v20);
    std::ostream::put();
    std::ostream::flush();
    if (feof(v10))
    {
      v16 = 0xFFFFFFFFLL;
    }

    else
    {
      v16 = 0xFFFFFFFFLL;
      do
      {
        if (!fgets(__s1, 0x2000, v10))
        {
          break;
        }

        v22 = 0;
        *&v20[0].__locale_ = 0u;
        memset(v21, 0, sizeof(v21));
        if (strstr(__s1, "Raven,Fix,1,solution_type,5"))
        {
          sub_1D0B751F4(&__p, __s1);
          swan::BatchLogParser::updateEnforceCsv(v20, &__p);
        }

        if (strstr(__s1, "CL,Pos,1"))
        {
          sub_1D0B751F4(&__p, __s1);
          swan::BatchLogParser::updateEnforceCsv(v20, &__p);
        }

        sub_1D0E48E44(v21 + 1);
        if (SBYTE7(v21[0]) < 0)
        {
          operator delete(v20[0].__locale_);
        }
      }

      while (!feof(v10));
    }

    fclose(v10);
  }

  else
  {
    if (*(v2 + 23) >= 0)
    {
      v17 = v2;
    }

    else
    {
      v17 = *v2;
    }

    fprintf(*MEMORY[0x1E69E9848], "Unable to open %s\n", v17);
    return 0;
  }

  return v16;
}

void sub_1D0E4DA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, std::locale a57)
{
  std::locale::~locale(&STACK[0x248]);
  sub_1D0E452D8(&a57);
  _Unwind_Resume(a1);
}

void sub_1D0E4DBC8(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v12 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 4);
    v13 = v12 + 1;
    if ((v12 + 1) > 0x249249249249249)
    {
      sub_1D0C5663C();
    }

    v14 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 4);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x124924924924924)
    {
      v15 = 0x249249249249249;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      sub_1D0E4E34C(a1, v15);
    }

    v16 = 112 * v12;
    v17 = *a2;
    v18 = a2[2];
    *(v16 + 16) = a2[1];
    *(v16 + 32) = v18;
    *v16 = v17;
    v19 = a2[3];
    v20 = a2[4];
    v21 = a2[6];
    *(v16 + 80) = a2[5];
    *(v16 + 96) = v21;
    *(v16 + 48) = v19;
    *(v16 + 64) = v20;
    v11 = 112 * v12 + 112;
    v22 = *(a1 + 8) - *a1;
    v23 = v16 - v22;
    memcpy((v16 - v22), *a1, v22);
    v24 = *a1;
    *a1 = v23;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    v4[1] = a2[1];
    v4[2] = v7;
    *v4 = v6;
    v8 = a2[3];
    v9 = a2[4];
    v10 = a2[6];
    v4[5] = a2[5];
    v4[6] = v10;
    v4[3] = v8;
    v4[4] = v9;
    v11 = (v4 + 7);
  }

  *(a1 + 8) = v11;
}

uint64_t swan::BatchLogParser::parseCLRSFixIntoRouteSmootherEpoch(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v34 = *MEMORY[0x1E69E9840];
  v25 = xmmword_1D0EC1620;
  v26 = xmmword_1D0E87BD0;
  __asm { FMOV            V0.2D, #-1.0 }

  v27 = xmmword_1D0E87BD0;
  v28 = _Q0;
  v29 = _Q0;
  v30 = _Q0;
  v31 = 0xBFF0000000000000;
  v32 = 0;
  if (*(v1 + 23) >= 0)
  {
    v10 = v1;
  }

  else
  {
    v10 = *v1;
  }

  v11 = fopen(v10, "r");
  if (v11)
  {
    v12 = v11;
    v13 = *(v4 + 23);
    if (v13 >= 0)
    {
      v14 = v4;
    }

    else
    {
      v14 = *v4;
    }

    if (v13 >= 0)
    {
      v15 = *(v4 + 23);
    }

    else
    {
      v15 = *(v4 + 8);
    }

    v16 = sub_1D0BCD7C4(MEMORY[0x1E69E5310], v14, v15);
    std::ios_base::getloc((v16 + *(*v16 - 24)));
    v17 = std::locale::use_facet(v22, MEMORY[0x1E69E5318]);
    (v17->__vftable[2].~facet_0)(v17, 10);
    std::locale::~locale(v22);
    std::ostream::put();
    std::ostream::flush();
    if (feof(v12))
    {
      v18 = 0xFFFFFFFFLL;
    }

    else
    {
      v18 = 0xFFFFFFFFLL;
      do
      {
        if (!fgets(__s1, 0x2000, v12))
        {
          break;
        }

        v24 = 0;
        *&v22[0].__locale_ = 0u;
        memset(v23, 0, sizeof(v23));
        if (strstr(__s1, "CLRS,") && strstr(__s1, "PreMMRaw,latitude,"))
        {
          sub_1D0B751F4(__p, __s1);
          swan::BatchLogParser::updateEnforceCsv(v22, __p);
        }

        if (strstr(__s1, "CLRS,Smoothing,PreMM,dataCount,"))
        {
          v3[1] = *v3;
        }

        sub_1D0E48E44(v23 + 1);
        if (SBYTE7(v23[0]) < 0)
        {
          operator delete(v22[0].__locale_);
        }
      }

      while (!feof(v12));
    }

    fclose(v12);
  }

  else
  {
    if (*(v4 + 23) >= 0)
    {
      v19 = v4;
    }

    else
    {
      v19 = *v4;
    }

    fprintf(*MEMORY[0x1E69E9848], "Unable to open %s\n", v19);
    return 0;
  }

  return v18;
}

void sub_1D0E4E34C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

const std::locale *sub_1D0E4E3A8(const std::locale *a1)
{
  v2 = MEMORY[0x1D387EB80]();
  a1[1].__locale_ = std::locale::use_facet(v2, MEMORY[0x1E69E5318]);
  a1[2].__locale_ = std::locale::use_facet(a1, MEMORY[0x1E69E5340]);
  return a1;
}

void sub_1D0E4E834(_Unwind_Exception *a1)
{
  (*(*v1 + 8))(v1);
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

void sub_1D0E4E898()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1D387E7B0](exception, 17);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *sub_1D0E4E8F0(uint64_t a1, unsigned __int8 *a2, char *a3)
{
  v6 = *(a1 + 56);
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = sub_1D0E4EFE8(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3 && *v7 == 124)
  {
    v9 = *(a1 + 56);
    v10 = v7 + 1;
    v11 = v7 + 1;
    do
    {
      v12 = v11;
      v11 = sub_1D0E4EFE8(a1, v11, a3);
    }

    while (v11 != v12);
    if (v12 == v10)
    {
      operator new();
    }

    sub_1D0E4EEE8(a1, v6, v9);
  }

  return v7;
}

unsigned __int8 *sub_1D0E4EA60(_BYTE *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      sub_1D0E4F8D8(a1);
    }

    if (a2 != a3)
    {
      do
      {
        v6 = v3;
        v7 = sub_1D0E5580C(a1, v3, a3);
        v3 = v7;
      }

      while (v7 != v6);
      if (v6 != a3 && v7 + 1 == a3 && *v7 == 36)
      {
        sub_1D0E4F95C(a1);
      }
    }

    if (v3 != a3)
    {
      sub_1D0E557B4();
    }
  }

  return v3;
}

unsigned __int8 *sub_1D0E4EB14(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  result = sub_1D0E55D44(a1, a2, a3);
  if (result == a2)
  {
LABEL_7:
    sub_1D0E557B4();
  }

  if (result != a3 && *result == 124)
  {
    v8 = *(a1 + 56);
    if (sub_1D0E55D44(a1, result + 1, a3) != result + 1)
    {
      sub_1D0E4EEE8(a1, v6, v8);
    }

    goto LABEL_7;
  }

  return result;
}

void sub_1D0E4EBB4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1D387E7B0](exception, 14);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_1D0E4EC3C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E4EC74(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1D0E4ECA4(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CF0390))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_1D0E4ECE4(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1D0E4ED50(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E4EDDC(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_1D0E4EDF0(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1D0E4EE5C(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1D387ECA0);
}

unsigned __int8 *sub_1D0E4EFE8(unsigned __int8 *result, char *a2, char *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = *a2;
  if (v6 > 0x5B)
  {
    if (v6 != 92)
    {
      if (v6 == 94)
      {
        sub_1D0E4F8D8(result);
      }

      goto LABEL_57;
    }

    if (a2 + 1 != a3)
    {
      v8 = a2[1];
      if (v8 == 66)
      {
        v9 = 1;
LABEL_51:
        sub_1D0E4F9E0(result, v9);
      }

      if (v8 == 98)
      {
        v9 = 0;
        goto LABEL_51;
      }
    }

    v10 = *(result + 7);
    v11 = *(result + 7);
    goto LABEL_34;
  }

  if (v6 == 36)
  {
    sub_1D0E4F95C(result);
  }

  if (v6 == 40)
  {
    if (a2 + 1 != a3 && a2[1] == 63 && a2 + 2 != a3)
    {
      v7 = a2[2];
      if (v7 == 33)
      {
        sub_1D0E4E3A8(v30);
        v31 = 0u;
        v33 = 0;
        v32 = 0u;
        LODWORD(v31) = *(result + 6);
        sub_1D0E4E408(v30, a2 + 3, a3);
        sub_1D0E4FA74(result, v30, 1, *(result + 7));
      }

      if (v7 == 61)
      {
        sub_1D0E4E3A8(v30);
        v31 = 0u;
        v33 = 0;
        v32 = 0u;
        LODWORD(v31) = *(result + 6);
        sub_1D0E4E408(v30, a2 + 3, a3);
        sub_1D0E4FA74(result, v30, 0, *(result + 7));
      }
    }

    v10 = *(result + 7);
    v11 = *(result + 7);
    goto LABEL_20;
  }

LABEL_57:
  v10 = *(result + 7);
  v11 = *(result + 7);
  if (*a2 <= 0x3Eu)
  {
    if (*a2 <= 0x28u)
    {
      if (v6 != 36)
      {
        if (v6 == 40)
        {
LABEL_20:
          if (a2 + 1 == a3)
          {
            goto LABEL_90;
          }

          if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
          {
            v12 = result + 36;
            ++*(result + 9);
            v13 = sub_1D0E4E8F0(result, a2 + 3, a3);
            if (v13 == a3)
            {
              goto LABEL_90;
            }

            v14 = v13;
            if (*v13 != 41)
            {
              goto LABEL_90;
            }
          }

          else
          {
            sub_1D0E51E28(result);
            v15 = *(result + 7);
            v12 = result + 36;
            ++*(result + 9);
            v16 = sub_1D0E4E8F0(result, a2 + 1, a3);
            if (v16 == a3 || (v14 = v16, *v16 != 41))
            {
LABEL_90:
              sub_1D0E4FB44();
            }

            sub_1D0E51EB0(result, v15);
          }

          --*v12;
          v17 = (v14 + 1);
          goto LABEL_31;
        }

        goto LABEL_74;
      }
    }

    else if (v6 != 41)
    {
      if (v6 == 46)
      {
        operator new();
      }

      if (v6 - 42 < 2)
      {
LABEL_89:
        sub_1D0E51F30();
      }

LABEL_74:
      sub_1D0E524D4(result, v6);
    }

    return a2;
  }

  v26 = v6 - 92;
  if (v26 > 0x21)
  {
    goto LABEL_66;
  }

  if (((1 << (v6 - 92)) & 0x300000006) != 0)
  {
    return a2;
  }

  if (v6 == 92)
  {
LABEL_34:
    v19 = a2 + 1;
    if (a2 + 1 == a3)
    {
      sub_1D0E52080();
    }

    v20 = *v19;
    if (v20 == 48)
    {
      sub_1D0E524D4(result, 0);
    }

    if ((v20 - 49) <= 8)
    {
      v21 = (v20 - 48);
      v22 = a2 + 2;
      if (a2 + 2 == a3)
      {
        goto LABEL_43;
      }

      do
      {
        v23 = *v22;
        if ((v23 - 48) > 9)
        {
          break;
        }

        if (v21 >= 0x19999999)
        {
          goto LABEL_91;
        }

        v21 = v23 + 10 * v21 - 48;
        ++v22;
      }

      while (v22 != a3);
      if (v21)
      {
LABEL_43:
        if (v21 <= v11)
        {
          sub_1D0E52710(result, v21);
        }
      }

LABEL_91:
      sub_1D0E526B8();
    }

    if (*v19 > 0x63u)
    {
      if (v20 == 119)
      {
        v24 = 0;
LABEL_78:
        sub_1D0E53298(result, v24);
      }

      if (v20 == 115)
      {
        v28 = 0;
        goto LABEL_84;
      }

      if (v20 != 100)
      {
        goto LABEL_79;
      }

      v25 = 0;
    }

    else
    {
      if (v20 != 68)
      {
        if (v20 != 83)
        {
          if (v20 == 87)
          {
            v24 = 1;
            goto LABEL_78;
          }

LABEL_79:
          v27 = sub_1D0E520D8(result, a2 + 1, a3, 0);
          if (v27 == v19)
          {
            v17 = a2;
          }

          else
          {
            v17 = v27;
          }

          goto LABEL_31;
        }

        v28 = 1;
LABEL_84:
        sub_1D0E53298(result, v28);
      }

      v25 = 1;
    }

    sub_1D0E53298(result, v25);
  }

  if (v26 == 31)
  {
    goto LABEL_89;
  }

LABEL_66:
  if (v6 != 91)
  {
    if (v6 == 63)
    {
      goto LABEL_89;
    }

    goto LABEL_74;
  }

  v17 = sub_1D0E51150(result, a2, a3);
LABEL_31:
  v18 = a2;
  if (v17 != a2)
  {
    v29 = (*(result + 7) + 1);

    return sub_1D0E4F5DC(result, v17, a3, v10, v11 + 1, v29);
  }

  return v18;
}

unsigned __int8 *sub_1D0E4F5DC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a6;
  v7 = a5;
  v10 = a1;
  v11 = *(a1 + 24) & 0x1F0;
  v12 = *a2;
  if (v12 > 0x3E)
  {
    if (v12 == 63)
    {
      v22 = a2 + 1;
      if (v11)
      {
        v23 = 1;
      }

      else
      {
        v23 = v22 == a3;
      }

      if (!v23 && *v22 == 63)
      {
        v14 = 0;
        v19 = 1;
        goto LABEL_33;
      }

      v14 = 0;
      v19 = 1;
      goto LABEL_45;
    }

    if (v12 != 123)
    {
      return a2;
    }

    v15 = a2 + 1;
    v16 = sub_1D0E5534C(a2 + 1, a3, &v31);
    if (v16 != v15)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v18 = v16 + 1;
            if (!v11 && v18 != a3 && *v18 == 63)
            {
              v14 = v31;
              LODWORD(a5) = v7;
              LODWORD(a6) = v6;
              a1 = v10;
              v19 = v31;
LABEL_33:
              v24 = a4;
              v25 = 0;
              goto LABEL_46;
            }

            v14 = v31;
            LODWORD(a5) = v7;
            LODWORD(a6) = v6;
            a1 = v10;
            v19 = v31;
            goto LABEL_45;
          }

          goto LABEL_56;
        }

        v26 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_56;
        }

        if (*v26 == 125)
        {
          v27 = v16 + 2;
          if (!v11 && v27 != a3 && *v27 == 63)
          {
            v14 = v31;
            LODWORD(a5) = v7;
            LODWORD(a6) = v6;
            a1 = v10;
            goto LABEL_26;
          }

          v14 = v31;
          LODWORD(a5) = v7;
          LODWORD(a6) = v6;
          a1 = v10;
LABEL_36:
          v19 = -1;
LABEL_45:
          v24 = a4;
          v25 = 1;
          goto LABEL_46;
        }

        v30 = -1;
        v29 = sub_1D0E5534C(v16 + 1, a3, &v30);
        if (v29 != v26 && v29 != a3 && *v29 == 125)
        {
          v19 = v30;
          v14 = v31;
          if (v30 >= v31)
          {
            v25 = 1;
            if (!v11 && v29 + 1 != a3)
            {
              v25 = v29[1] != 63;
            }

            LODWORD(a5) = v7;
            LODWORD(a6) = v6;
            a1 = v10;
            v24 = a4;
LABEL_46:
            sub_1D0E551BC(a1, v14, v19, v24, a5, a6, v25);
          }

          goto LABEL_56;
        }
      }

      sub_1D0E5543C();
    }

LABEL_56:
    sub_1D0E553E4();
  }

  if (v12 == 42)
  {
    v20 = a2 + 1;
    if (v11)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20 == a3;
    }

    if (!v21 && *v20 == 63)
    {
      v14 = 0;
      goto LABEL_26;
    }

    v14 = 0;
    goto LABEL_36;
  }

  if (v12 == 43)
  {
    v13 = a2 + 1;
    if (!v11 && v13 != a3 && *v13 == 63)
    {
      v14 = 1;
LABEL_26:
      v19 = -1;
      goto LABEL_33;
    }

    v14 = 1;
    goto LABEL_36;
  }

  return a2;
}

void sub_1D0E4FB44()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1D387E7B0](exception, 6);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void *sub_1D0E4FB9C(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1D0E4FC08(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E4FC94(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void *sub_1D0E4FCFC(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1D0E4FD68(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E4FDF4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *sub_1D0E4FE48(std::locale *a1)
{
  a1->__locale_ = &unk_1F4CF04F0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F4CF0430;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1D0E4FED4(std::locale *a1)
{
  a1->__locale_ = &unk_1F4CF04F0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F4CF0430;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E4FF80(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

std::locale *sub_1D0E50094(std::locale *a1)
{
  a1->__locale_ = &unk_1F4CF0538;
  locale = a1[8].__locale_;
  if (locale)
  {
    sub_1D0B7CAB8(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F4CF0430;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_1D0E50130(std::locale *a1)
{
  a1->__locale_ = &unk_1F4CF0538;
  locale = a1[8].__locale_;
  if (locale)
  {
    sub_1D0B7CAB8(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F4CF0430;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E501EC(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0uLL;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  __p = 0;
  v19 = 0;
  v4 = (*(a1 + 44) + 1);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v20 = 0;
  *&v21 = v5;
  *(&v21 + 1) = v5;
  v22 = 0;
  sub_1D0E50730(&__p, v4, &v21);
  v23 = v6;
  v24 = v6;
  v25 = 0;
  v26 = v21;
  v27 = v22;
  v29 = v6;
  v28 = 1;
  v7 = *(a2 + 16);
  if (v7 == *(a2 + 8))
  {
    v8 = *(a2 + 92);
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 84) == sub_1D0E5038C(a1 + 16, v7, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v8))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    v9 = __p;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  v9 = __p;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((v19 - __p) >> 3);
  if (v10 < 2)
  {
LABEL_10:
    if (!v9)
    {
      return;
    }

    goto LABEL_11;
  }

  v11 = *(a1 + 80);
  v12 = *(a2 + 32);
  v13 = 2;
  v14 = 1;
  do
  {
    v15 = &v9[24 * v14];
    v16 = v12 + 24 * v11;
    *v16 = *v15;
    *(v16 + 16) = v15[16];
    v14 = v13;
    ++v11;
  }

  while (v10 > v13++);
LABEL_11:

  operator delete(v9);
}

void sub_1D0E50370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0E5038C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  *&v40 = a3;
  *(&v40 + 1) = a3;
  v41 = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  sub_1D0E5093C(&v42, v36);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    operator delete(*&v36[32]);
  }

  v35 = a4;
  v13 = v43;
  *(v43 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  sub_1D0E50BB0(v13 - 8, *(a1 + 28), &v40);
  sub_1D0E50D48(v43 - 5, *(a1 + 32));
  v14 = v43;
  *(v43 - 2) = v6;
  *(v14 - 2) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      sub_1D0E50E48();
    }

    v17 = v14 - 4;
    v16 = *(v14 - 2);
    v18 = v14 - 24;
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 24);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          v22 = *(v14 - 5);
          *v36 = *v18;
          *&v36[16] = v22;
          v37 = 0uLL;
          *&v36[32] = 0;
          sub_1D0E50F98(&v36[32], *(v14 - 8), *(v14 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 7) - *(v14 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          sub_1D0E51018(__p, *(v14 - 5), *(v14 - 4), (*(v14 - 4) - *(v14 - 5)) >> 4);
          v23 = *v17;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 24);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          sub_1D0E5093C(&v42, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          sub_1D0E50EA0();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v43;
    ++v15;
    if (v42 == v43)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 10);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = (v43 - 24);
    sub_1D0E50EF8(v43 - 12);
    v43 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 8);
  v28 = *(v14 - 7) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *v36 = &v42;
  sub_1D0E510CC(v36);
  return v24;
}

void sub_1D0E506D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  sub_1D0E50B6C(&a11);
  a11 = v16 - 112;
  sub_1D0E510CC(&a11);
  _Unwind_Resume(a1);
}

char *sub_1D0E50730(char **a1, unint64_t a2, __int128 *a3)
{
  v5 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - result) >> 3) < a2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= a2)
      {
        v8 = a2;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      sub_1D0E50894(a1, v9);
    }

    sub_1D0C5663C();
  }

  v10 = a1[1];
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  }

  if (v12)
  {
    v13 = *a3;
    v14 = *(a3 + 16);
    v15 = result;
    do
    {
      *v15 = v13;
      v15[16] = v14;
      v15 += 24;
      --v12;
    }

    while (v12);
  }

  if (a2 <= v11)
  {
    a1[1] = &result[24 * a2];
  }

  else
  {
    v16 = &v10[24 * (a2 - v11)];
    v17 = 24 * a2 - 8 * ((v10 - result) >> 3);
    do
    {
      v18 = *a3;
      *(v10 + 2) = *(a3 + 2);
      *v10 = v18;
      v10 += 24;
      v17 -= 24;
    }

    while (v17);
    a1[1] = v16;
  }

  return result;
}

void sub_1D0E50894(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1D0E508E4(a2);
  }

  sub_1D0C5663C();
}

void sub_1D0E508E4(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

void sub_1D0E5093C(void **a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 5);
    v9 = v8 + 1;
    if (v8 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      sub_1D0C5663C();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x155555555555555)
    {
      v11 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1D0C54BE8();
    }

    v12 = *(a2 + 16);
    v13 = 96 * v8;
    *v13 = *a2;
    *(v13 + 16) = v12;
    *(v13 + 32) = *(a2 + 32);
    *(v13 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(v13 + 56) = *(a2 + 56);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v14 = *(a2 + 72);
    v15 = *(a2 + 80);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(v13 + 85) = *(a2 + 85);
    *(v13 + 72) = v14;
    *(v13 + 80) = v15;
    v16 = *a1;
    v17 = a1[1];
    v18 = (v13 + *a1 - v17);
    if (*a1 != v17)
    {
      v19 = *a1;
      v20 = (v13 + *a1 - v17);
      do
      {
        v21 = *(v19 + 1);
        *v20 = *v19;
        *(v20 + 1) = v21;
        *(v20 + 5) = 0;
        *(v20 + 6) = 0;
        *(v20 + 2) = *(v19 + 2);
        *(v20 + 6) = *(v19 + 6);
        *(v19 + 4) = 0;
        *(v19 + 5) = 0;
        *(v19 + 6) = 0;
        *(v20 + 8) = 0;
        *(v20 + 9) = 0;
        *(v20 + 56) = *(v19 + 56);
        *(v20 + 9) = *(v19 + 9);
        *(v19 + 7) = 0;
        *(v19 + 8) = 0;
        *(v19 + 9) = 0;
        v22 = *(v19 + 10);
        *(v20 + 85) = *(v19 + 85);
        *(v20 + 10) = v22;
        v19 += 96;
        v20 += 96;
      }

      while (v19 != v17);
      do
      {
        sub_1D0E50EF8(v16);
        v16 += 12;
      }

      while (v16 != v17);
      v16 = *a1;
    }

    v7 = (v13 + 96);
    *a1 = v18;
    a1[1] = v7;
    a1[2] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 1) = v5;
    *(v3 + 5) = 0;
    *(v3 + 6) = 0;
    *(v3 + 4) = 0;
    *(v3 + 2) = *(a2 + 32);
    *(v3 + 6) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 7) = 0;
    *(v3 + 8) = 0;
    *(v3 + 9) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 9) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v6 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 10) = v6;
    v7 = v3 + 96;
  }

  a1[1] = v7;
}

void *sub_1D0E50B6C(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1D0E50BB0(uint64_t *a1, unint64_t a2, __int128 *a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 - *a1;
  v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  v7 = a2 - v6;
  if (a2 <= v6)
  {
    if (a2 < v6)
    {
      a1[1] = v4 + 24 * a2;
    }
  }

  else
  {
    v8 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - v3) >> 3) < v7)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v4) >> 3);
        v10 = 2 * v9;
        if (2 * v9 <= a2)
        {
          v10 = a2;
        }

        if (v9 >= 0x555555555555555)
        {
          v11 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v11 = v10;
        }

        sub_1D0E508E4(v11);
      }

      sub_1D0C5663C();
    }

    v12 = v3 + 24 * v7;
    v13 = 24 * a2 - 8 * (v5 >> 3);
    do
    {
      v14 = *a3;
      *(v3 + 16) = *(a3 + 2);
      *v3 = v14;
      v3 += 24;
      v13 -= 24;
    }

    while (v13);
    a1[1] = v12;
  }
}

void sub_1D0E50D48(const void **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = &v3[16 * a2];
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 4)
    {
      if (!(a2 >> 60))
      {
        v8 = v7 - v3;
        v9 = v8 >> 3;
        if (v8 >> 3 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_1D0E50F50(v10);
      }

      sub_1D0C5663C();
    }

    bzero(a1[1], 16 * v6);
    v11 = &v4[16 * v6];
  }

  a1[1] = v11;
}

void sub_1D0E50E48()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1D387E7B0](exception, 12);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_1D0E50EA0()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1D387E7B0](exception, 16);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_1D0E50EF8(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

void sub_1D0E50F50(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_1D0C54BE8();
}

uint64_t *sub_1D0E50F98(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    sub_1D0E50894(result, a4);
  }

  return result;
}

void sub_1D0E50FFC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1D0E51018(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    sub_1D0E5108C(result, a4);
  }

  return result;
}

void sub_1D0E51070(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0E5108C(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1D0E50F50(a2);
  }

  sub_1D0C5663C();
}

void sub_1D0E510CC(void ***a1)
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
        v4 -= 12;
        sub_1D0E50EF8(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unsigned __int8 *sub_1D0E51150(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 != a3)
    {
      sub_1D0E53298(a1, a2[1] == 94);
    }

    sub_1D0E5429C();
  }

  return a2;
}

void sub_1D0E51CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  *(v48 + 144) = v49;
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0E51E28(uint64_t result)
{
  if ((*(result + 24) & 2) == 0)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1D0E51EB0(uint64_t result, int a2)
{
  if ((*(result + 24) & 2) == 0)
  {
    operator new();
  }

  return result;
}

void sub_1D0E51F30()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1D387E7B0](exception, 11);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void *sub_1D0E51F88(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1D0E51FF4(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E52080()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1D387E7B0](exception, 3);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *sub_1D0E520D8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 > 0x71)
  {
    if (*a2 <= 0x74u)
    {
      if (v5 == 114)
      {
        if (!a4)
        {
          v16 = 13;
          goto LABEL_77;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v17 = 13;
      }

      else
      {
        if (v5 != 116)
        {
          goto LABEL_72;
        }

        if (!a4)
        {
          v16 = 9;
          goto LABEL_77;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v17 = 9;
      }
    }

    else
    {
      if (v5 == 117)
      {
        if (a2 + 1 == a3)
        {
          goto LABEL_97;
        }

        v8 = a2[1];
        if ((v8 & 0xF8) != 0x30 && (v8 & 0xFE) != 0x38 && (v8 | 0x20u) - 97 >= 6)
        {
          goto LABEL_97;
        }

        v4 = a2 + 2;
        if (a2 + 2 == a3)
        {
          goto LABEL_97;
        }

        v9 = *v4;
        v10 = -48;
        if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38)
        {
          v9 |= 0x20u;
          if ((v9 - 97) >= 6)
          {
            goto LABEL_97;
          }

          v10 = -87;
        }

        v6 = 16 * (v10 + v9);
LABEL_45:
        if (v4 + 1 == a3)
        {
          goto LABEL_97;
        }

        v11 = v4[1];
        v12 = -48;
        if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
        {
          v11 |= 0x20u;
          if ((v11 - 97) >= 6)
          {
            goto LABEL_97;
          }

          v12 = -87;
        }

        if (v4 + 2 != a3)
        {
          v13 = v4[2];
          v14 = -48;
          if ((v13 & 0xF8) == 0x30 || (v13 & 0xFE) == 0x38)
          {
            goto LABEL_55;
          }

          v13 |= 0x20u;
          if ((v13 - 97) < 6)
          {
            v14 = -87;
LABEL_55:
            v15 = v13 + 16 * (v6 + v12 + v11) + v14;
            if (!a4)
            {
              sub_1D0E524D4(a1, v15);
            }

            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            *a4 = v15;
            *(a4 + 1) = 0;
            v4 += 3;
            return v4;
          }
        }

LABEL_97:
        sub_1D0E52080();
      }

      if (v5 != 118)
      {
        if (v5 == 120)
        {
          v6 = 0;
          goto LABEL_45;
        }

LABEL_72:
        v16 = v5;
        if ((v16 & 0x80000000) == 0 && (*(*(*(a1 + 8) + 16) + 4 * v5) & 0x500) != 0)
        {
          goto LABEL_97;
        }

        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = v5;
          return ++v4;
        }

LABEL_77:
        sub_1D0E524D4(a1, v16);
      }

      if (!a4)
      {
        v16 = 11;
        goto LABEL_77;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      v17 = 11;
    }

LABEL_90:
    *a4 = v17;
    return ++v4;
  }

  if (*a2 > 0x65u)
  {
    if (v5 == 102)
    {
      if (!a4)
      {
        v16 = 12;
        goto LABEL_77;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      v17 = 12;
    }

    else
    {
      if (v5 != 110)
      {
        goto LABEL_72;
      }

      if (!a4)
      {
        v16 = 10;
        goto LABEL_77;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      v17 = 10;
    }

    goto LABEL_90;
  }

  if (v5 == 48)
  {
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return ++v4;
    }

    v16 = 0;
    goto LABEL_77;
  }

  if (v5 != 99)
  {
    if (v5 == 95)
    {
      goto LABEL_97;
    }

    goto LABEL_72;
  }

  if (a2 + 1 == a3 || ((a2[1] & 0xDF) - 65) > 0x19u)
  {
    goto LABEL_97;
  }

  v7 = a2[1] & 0x1F;
  if (!a4)
  {
    sub_1D0E524D4(a1, v7);
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = v7;
  *(a4 + 1) = 0;
  v4 += 2;
  return v4;
}

void sub_1D0E524D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if ((v2 & 1) == 0)
  {
    if ((v2 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_1D0E5264C(_Unwind_Exception *a1)
{
  std::locale::~locale(v2 + 2);
  v2->__locale_ = &unk_1F4CF0430;
  locale = v2[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  MEMORY[0x1D387ECA0](v2, v1);
  _Unwind_Resume(a1);
}

void sub_1D0E526B8()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1D387E7B0](exception, 4);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_1D0E52710(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  if ((v2 & 1) == 0)
  {
    if ((v2 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

std::locale *sub_1D0E52840(std::locale *a1)
{
  a1->__locale_ = &unk_1F4CF05C8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F4CF0430;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1D0E528CC(std::locale *a1)
{
  a1->__locale_ = &unk_1F4CF05C8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F4CF0430;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E52978(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *sub_1D0E52A0C(std::locale *a1)
{
  a1->__locale_ = &unk_1F4CF0610;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F4CF0430;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1D0E52A98(std::locale *a1)
{
  a1->__locale_ = &unk_1F4CF0610;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F4CF0430;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E52B44(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void *sub_1D0E52B8C(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1D0E52BF8(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E52C84(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

std::locale *sub_1D0E52CCC(std::locale *a1)
{
  a1->__locale_ = &unk_1F4CF06A0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F4CF0430;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1D0E52D58(std::locale *a1)
{
  a1->__locale_ = &unk_1F4CF06A0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F4CF0430;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E52E04(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8) - *v3;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = result;
      if (v4 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v8 = 0;
      while (1)
      {
        v9 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*v3 + v8));
        result = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*(a2 + 16) + v8));
        if (v9 != result)
        {
          break;
        }

        if (v4 == ++v8)
        {
          v5 = *(a2 + 16);
          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

std::locale *sub_1D0E52F20(std::locale *a1)
{
  a1->__locale_ = &unk_1F4CF06E8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F4CF0430;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1D0E52FAC(std::locale *a1)
{
  a1->__locale_ = &unk_1F4CF06E8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F4CF0430;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E53058(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8) - *v2;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      if (v4 < 1)
      {
LABEL_9:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(result + 8);
        goto LABEL_4;
      }

      v7 = v4;
      v8 = *(a2 + 16);
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v8++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v7)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void *sub_1D0E530E4(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1D0E53150(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1D387ECA0);
}

unsigned int *sub_1D0E531DC(unsigned int *result, uint64_t a2)
{
  v2 = result[4];
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    sub_1D0E526B8();
  }

  v5 = v3 + 24 * (v2 - 1);
  if (*(v5 + 16) == 1 && (v6 = result, result = *v5, v7 = *(v5 + 8) - *v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (result = memcmp(result, *(a2 + 16), v7), !result))
  {
    *a2 = -994;
    *(a2 + 16) = v8 + v7;
    v9 = *(v6 + 1);
  }

  else
  {
    v9 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v9;
  return result;
}

void sub_1D0E53418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
{
  std::locale::~locale(&a9);
  a10 = v10 + 17;
  sub_1D0D41594(&a10);
  locale = v10[14].__locale_;
  if (locale)
  {
    v10[15].__locale_ = locale;
    operator delete(locale);
  }

  sub_1D0E53DC8(&a10);
  v16 = v10[8].__locale_;
  if (v16)
  {
    v10[9].__locale_ = v16;
    operator delete(v16);
  }

  v17 = *v13;
  if (*v13)
  {
    v10[6].__locale_ = v17;
    operator delete(v17);
  }

  std::locale::~locale(v10 + 2);
  v10->__locale_ = v12;
  v18 = v10[1].__locale_;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  MEMORY[0x1D387ECA0](v10, v11);
  _Unwind_Resume(a1);
}

void sub_1D0E534BC(uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 40;
    v4 = &v6;
LABEL_5:
    sub_1D0BF71E4(v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 40;
    v4 = &v5;
    goto LABEL_5;
  }

  sub_1D0BF71E4(a1 + 40, &v7);
}

void sub_1D0E5355C(std::locale *a1)
{
  sub_1D0E53EA4(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E53594(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v4 == v5)
  {
    v9 = 0;
    v10 = *(a1 + 168);
    goto LABEL_65;
  }

  if (*(a1 + 171) != 1 || v4 + 1 == v5)
  {
    goto LABEL_40;
  }

  LOBYTE(__src) = *v4;
  v6 = v4[1];
  HIBYTE(__src) = v4[1];
  if (*(a1 + 169) == 1)
  {
    LOBYTE(__src) = (*(**(a1 + 24) + 40))(*(a1 + 24));
    HIBYTE(__src) = (*(**(a1 + 24) + 40))(*(a1 + 24), v6);
  }

  *(&__s.__r_.__value_.__s + 23) = 2;
  LOWORD(__s.__r_.__value_.__l.__data_) = __src;
  __s.__r_.__value_.__s.__data_[2] = 0;
  std::__get_collation_name(&v76, &__s);
  __p = v76;
  size = HIBYTE(v76.__r_.__value_.__r.__words[2]);
  v8 = SHIBYTE(v76.__r_.__value_.__r.__words[2]);
  if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v76.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    goto LABEL_14;
  }

  (*(**(a1 + 32) + 32))(&v76);
  if (v8 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v76;
  if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(v76.__r_.__value_.__r.__words[2]) != 12 && HIBYTE(v76.__r_.__value_.__r.__words[2]) != 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_171;
  }

  if (__p.__r_.__value_.__l.__size_ == 1 || __p.__r_.__value_.__l.__size_ == 12)
  {
LABEL_171:
    std::string::operator=(&__p, &__s);
    goto LABEL_9;
  }

  *__p.__r_.__value_.__l.__data_ = 0;
  __p.__r_.__value_.__l.__size_ = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

LABEL_14:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_16;
    }

LABEL_40:
    v10 = 0;
    v9 = 1;
    goto LABEL_41;
  }

  v23 = __p.__r_.__value_.__l.__size_;
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v23)
  {
    goto LABEL_40;
  }

LABEL_16:
  v11 = *(a1 + 112);
  v12 = *(a1 + 120) - v11;
  if (v12)
  {
    v13 = v12 >> 1;
    if ((v12 >> 1) <= 1)
    {
      v13 = 1;
    }

    v14 = (v11 + 1);
    while (__src != *(v14 - 1) || HIBYTE(__src) != *v14)
    {
      v14 += 2;
      if (!--v13)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_167;
  }

LABEL_25:
  if (*(a1 + 170) == 1 && *(a1 + 88) != *(a1 + 96))
  {
    sub_1D0E53F8C(&__s, a1 + 16, &__src, &v76);
    v16 = *(a1 + 88);
    v17 = *(a1 + 96) - v16;
    if (v17)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 4);
      v19 = v18 <= 1 ? 1 : v18;
      while (sub_1D0E54050(v16, &__s) > 0 || sub_1D0E54050(&__s, v16 + 3) >= 1)
      {
        v16 += 6;
        if (!--v19)
        {
          goto LABEL_34;
        }
      }

      v21 = 5;
      v20 = 1;
    }

    else
    {
LABEL_34:
      v20 = 0;
      v21 = 0;
    }

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (v20)
    {
      v22 = 1;
      goto LABEL_147;
    }
  }

  if (*(a1 + 136) == *(a1 + 144))
  {
    v22 = 0;
    goto LABEL_149;
  }

  sub_1D0E54180(&__s, a1 + 16, &__src, &v76);
  v39 = *(a1 + 136);
  v40 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  v41 = *(a1 + 144) - v39;
  if (v41)
  {
    v42 = 0xAAAAAAAAAAAAAAABLL * (v41 >> 3);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v43 = __s.__r_.__value_.__l.__size_;
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_s = &__s;
    }

    else
    {
      p_s = __s.__r_.__value_.__r.__words[0];
    }

    if (v42 <= 1)
    {
      v45 = 1;
    }

    else
    {
      v45 = 0xAAAAAAAAAAAAAAABLL * (v41 >> 3);
    }

    v46 = 1;
    v47 = 1;
    while (1)
    {
      v48 = *(v39 + 23);
      v49 = v48;
      if ((v48 & 0x80u) != 0)
      {
        v48 = *(v39 + 8);
      }

      if (v43 == v48)
      {
        v50 = v49 >= 0 ? v39 : *v39;
        if (!memcmp(p_s, v50, v43))
        {
          break;
        }
      }

      v47 = v46++ < v42;
      v39 += 24;
      if (!--v45)
      {
        goto LABEL_144;
      }
    }

    v22 = 1;
    v21 = 5;
    if (v40 < 0)
    {
LABEL_145:
      operator delete(__s.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v47 = 0;
LABEL_144:
    v21 = 0;
    v22 = 0;
    if (v40 < 0)
    {
      goto LABEL_145;
    }
  }

  if (!v47)
  {
LABEL_149:
    if (__src < 0)
    {
      v71 = *(a1 + 164);
    }

    else
    {
      v68 = *(a1 + 160);
      v69 = *(*(a1 + 24) + 16);
      v70 = *(v69 + 4 * __src);
      if (((v70 & v68) != 0 || __src == 95 && (v68 & 0x80) != 0) && (SHIBYTE(__src) & 0x8000000000000000) == 0 && ((*(v69 + 4 * SHIBYTE(__src)) & v68) != 0 || (v68 & 0x80) != 0 && SHIBYTE(__src) == 95))
      {
        goto LABEL_167;
      }

      v71 = *(a1 + 164);
      if ((v71 & v70) != 0 || __src == 95 && (v71 & 0x80) != 0)
      {
LABEL_166:
        v10 = v22;
LABEL_168:
        v9 = 2;
        goto LABEL_65;
      }
    }

    if ((SHIBYTE(__src) & 0x8000000000000000) == 0)
    {
      if ((*(*(*(a1 + 24) + 16) + 4 * SHIBYTE(__src)) & v71) == 0)
      {
        v10 = 1;
        if (SHIBYTE(__src) != 95 || (v71 & 0x80) == 0)
        {
          goto LABEL_168;
        }
      }

      goto LABEL_166;
    }

LABEL_167:
    v10 = 1;
    goto LABEL_168;
  }

LABEL_147:
  v9 = 2;
  v10 = v22;
  if (v21)
  {
    goto LABEL_65;
  }

LABEL_41:
  v24 = **(a2 + 16);
  v76.__r_.__value_.__s.__data_[0] = **(a2 + 16);
  if (*(a1 + 169) == 1)
  {
    LODWORD(v24) = (*(**(a1 + 24) + 40))(*(a1 + 24), v24);
    v76.__r_.__value_.__s.__data_[0] = v24;
  }

  v25 = *(a1 + 40);
  v26 = *(a1 + 48) - v25;
  if (v26)
  {
    if (v26 <= 1)
    {
      v26 = 1;
    }

    do
    {
      v27 = *v25++;
      if (v27 == v24)
      {
        goto LABEL_64;
      }
    }

    while (--v26);
  }

  v28 = *(a1 + 164);
  if (v28 || *(a1 + 64) != *(a1 + 72))
  {
    if ((v24 & 0x80000000) != 0 || (*(*(*(a1 + 24) + 16) + 4 * v24) & v28) == 0)
    {
      v30 = (v28 >> 7) & 1;
      v29 = v24 == 95 ? v30 : 0;
    }

    else
    {
      v29 = 1;
    }

    v31 = *(a1 + 72);
    v32 = memchr(*(a1 + 64), v24, v31 - *(a1 + 64));
    v33 = !v32 || v32 == v31;
    v34 = !v33;
    if ((v29 & 1) == 0 && !v34)
    {
LABEL_64:
      v10 = 1;
      goto LABEL_65;
    }
  }

  v38 = *(a1 + 88);
  v37 = *(a1 + 96);
  if (v38 == v37)
  {
    goto LABEL_103;
  }

  if (*(a1 + 170) == 1)
  {
    sub_1D0E53F8C(&__s, a1 + 16, &v76, &v76.__r_.__value_.__s.__data_[1]);
    v38 = *(a1 + 88);
    v37 = *(a1 + 96);
  }

  else
  {
    *(&__s.__r_.__value_.__s + 23) = 1;
    LOWORD(__s.__r_.__value_.__l.__data_) = v24;
  }

  v51 = v37 - v38;
  if (v51)
  {
    v52 = 0;
    v53 = 0xAAAAAAAAAAAAAAABLL * (v51 >> 4);
    while (sub_1D0E54050(v38, &__s) > 0 || sub_1D0E54050(&__s, v38 + 3) >= 1)
    {
      ++v52;
      v38 += 48;
      if (v52 >= v53)
      {
        goto LABEL_99;
      }
    }

    v54 = 1;
    v10 = 1;
  }

  else
  {
LABEL_99:
    v54 = 0;
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if ((v54 & 1) == 0)
  {
LABEL_103:
    if (*(a1 + 136) == *(a1 + 144))
    {
LABEL_138:
      v66 = *(a1 + 160);
      if ((v76.__r_.__value_.__s.__data_[0] & 0x8000000000000000) == 0 && (*(*(*(a1 + 24) + 16) + 4 * v76.__r_.__value_.__s.__data_[0]) & v66) != 0)
      {
        goto LABEL_64;
      }

      v67 = (v66 >> 7) & 1;
      if (v76.__r_.__value_.__s.__data_[0] != 95)
      {
        LOBYTE(v67) = 0;
      }

      v10 |= v67;
      goto LABEL_65;
    }

    v55 = &__s;
    sub_1D0E54180(&__s, a1 + 16, &v76, &v76.__r_.__value_.__s.__data_[1]);
    v56 = *(a1 + 136);
    v57 = *(a1 + 144) - v56;
    if (v57)
    {
      v72 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      v73 = v9;
      v58 = 0xAAAAAAAAAAAAAAABLL * (v57 >> 3);
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v59 = __s.__r_.__value_.__l.__size_;
      }

      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v55 = __s.__r_.__value_.__r.__words[0];
      }

      if (v58 <= 1)
      {
        v60 = 1;
      }

      else
      {
        v60 = 0xAAAAAAAAAAAAAAABLL * (v57 >> 3);
      }

      v61 = 1;
      v62 = 1;
      while (1)
      {
        v63 = *(v56 + 23);
        v64 = v63;
        if ((v63 & 0x80u) != 0)
        {
          v63 = *(v56 + 8);
        }

        if (v59 == v63)
        {
          v65 = v64 >= 0 ? v56 : *v56;
          if (!memcmp(v55, v65, v59))
          {
            break;
          }
        }

        v62 = v61++ < v58;
        v56 += 24;
        if (!--v60)
        {
          goto LABEL_135;
        }
      }

      v10 = 1;
LABEL_135:
      v9 = v73;
      if ((v72 & 0x80) == 0)
      {
LABEL_137:
        if (v62)
        {
          goto LABEL_65;
        }

        goto LABEL_138;
      }
    }

    else
    {
      v62 = 0;
      if ((*(&__s.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_137;
      }
    }

    operator delete(__s.__r_.__value_.__l.__data_);
    goto LABEL_137;
  }

LABEL_65:
  if (*(a1 + 168) == (v10 & 1))
  {
    v35 = 0;
    v36 = -993;
  }

  else
  {
    *(a2 + 16) += v9;
    v35 = *(a1 + 8);
    v36 = -995;
  }

  *a2 = v36;
  *(a2 + 80) = v35;
}

void sub_1D0E53D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0E53DC8(void ***a1)
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
        v4 -= 48;
        sub_1D0E53E4C(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1D0E53E4C(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

std::locale *sub_1D0E53EA4(std::locale *a1)
{
  a1->__locale_ = &unk_1F4CF0778;
  v7 = a1 + 17;
  sub_1D0D41594(&v7);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v7 = a1 + 11;
  sub_1D0E53DC8(&v7);
  v3 = a1[8].__locale_;
  if (v3)
  {
    a1[9].__locale_ = v3;
    operator delete(v3);
  }

  v4 = a1[5].__locale_;
  if (v4)
  {
    a1[6].__locale_ = v4;
    operator delete(v4);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F4CF0430;
  v5 = a1[1].__locale_;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

void sub_1D0E53F8C(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  sub_1D0E540D0(__p, __src, a4, a4 - __src);
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1D0E54034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0E54050(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}

void *sub_1D0E540D0(void *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D0C537F0();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  *(__dst + 23) = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  *(v4 + v5) = 0;
  return __dst;
}

void sub_1D0E54180(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  sub_1D0E540D0(__p, __src, a4, a4 - __src);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v7, v7 + v6);
  v8 = *(a1 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a1 = 0;
      *(a1 + 8) = 0;
    }

    else
    {
      *a1 = 0;
      *(a1 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1D0E54280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0E5429C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1D387E7B0](exception, 5);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

_BYTE *sub_1D0E542F4(uint64_t a1, _BYTE *__src, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - __src - 2;
  if (a3 - __src < 2)
  {
    goto LABEL_14;
  }

  v6 = __src;
  for (i = __src; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 46 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_14;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_14:
    sub_1D0E5429C();
  }

  sub_1D0E549D0(&v12, a1, __src, v6);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  v9 = v13;
  *(a4 + 16) = v13;
  v10 = HIBYTE(v9);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10 - 1 >= 2)
  {
    sub_1D0E54978();
  }

  return v6 + 2;
}

unsigned __int8 *sub_1D0E543C4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    sub_1D0E52080();
  }

  v7 = *a2;
  if (v7 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v7 != 115)
      {
        if (v7 != 119)
        {
          goto LABEL_26;
        }

        *(a5 + 160) |= 0x500u;
        sub_1D0E534BC(a5, 95);
        return a2 + 1;
      }

      v9 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v7 == 98)
      {
        if (*(a4 + 23) < 0)
        {
          *(a4 + 8) = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 8;
        return a2 + 1;
      }

      if (v7 != 100)
      {
        goto LABEL_26;
      }

      v9 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v9;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (!*a2)
    {
      if (*(a4 + 23) < 0)
      {
        *(a4 + 8) = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return a2 + 1;
    }

    if (v7 == 68)
    {
      v8 = *(a5 + 164) | 0x400;
LABEL_23:
      *(a5 + 164) = v8;
      return a2 + 1;
    }

    goto LABEL_26;
  }

  if (v7 == 83)
  {
    v8 = *(a5 + 164) | 0x4000;
    goto LABEL_23;
  }

  if (v7 == 87)
  {
    *(a5 + 164) |= 0x500u;
    v15 = 95;
    if (*(a5 + 169) == 1)
    {
      v14 = (*(**(a5 + 24) + 40))(*(a5 + 24), 95);
      v10 = a5 + 64;
      v11 = &v14;
    }

    else
    {
      if (*(a5 + 170) != 1)
      {
        sub_1D0BF71E4(a5 + 64, &v15);
        return a2 + 1;
      }

      v13 = 95;
      v10 = a5 + 64;
      v11 = &v13;
    }

    sub_1D0BF71E4(v10, v11);
    return a2 + 1;
  }

LABEL_26:

  return sub_1D0E520D8(a1, a2, a3, a4);
}

unsigned __int8 *sub_1D0E545B8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
LABEL_78:
    sub_1D0E52080();
  }

  v5 = *a2;
  v6 = v5;
  if (v5 > 101)
  {
    if (v5 <= 113)
    {
      if (v5 == 102)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v10 = 12;
          goto LABEL_73;
        }

        v6 = 12;
        goto LABEL_57;
      }

      if (v5 == 110)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v10 = 10;
          goto LABEL_73;
        }

        v6 = 10;
        goto LABEL_57;
      }
    }

    else
    {
      switch(v5)
      {
        case 'r':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v10 = 13;
            goto LABEL_73;
          }

          v6 = 13;
          goto LABEL_57;
        case 't':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v10 = 9;
            goto LABEL_73;
          }

          v6 = 9;
          goto LABEL_57;
        case 'v':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v10 = 11;
            goto LABEL_73;
          }

          v6 = 11;
          goto LABEL_57;
      }
    }

    goto LABEL_39;
  }

  if (v5 <= 91)
  {
    if (v5 != 34 && v5 != 47)
    {
      goto LABEL_39;
    }

LABEL_19:
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v5;
      return a2 + 1;
    }

    goto LABEL_57;
  }

  switch(v5)
  {
    case '\\':
      goto LABEL_19;
    case 'a':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v10 = 7;
        goto LABEL_73;
      }

      v6 = 7;
LABEL_57:
      sub_1D0E524D4(a1, v6);
    case 'b':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v10 = 8;
LABEL_73:
        *a4 = v10;
        return a2 + 1;
      }

      v6 = 8;
      goto LABEL_57;
  }

LABEL_39:
  if ((v6 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_78;
  }

  v7 = v5 - 48;
  v8 = a2 + 1;
  if (a2 + 1 != a3 && (*v8 & 0xF8) == 0x30)
  {
    v7 = *v8 + 8 * v7 - 48;
    v8 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v9 = *v8 + 8 * v7 - 48;
      if ((*v8 & 0xF8) == 0x30)
      {
        v8 = a2 + 3;
        v7 = v9;
      }
    }
  }

  if (!a4)
  {
    sub_1D0E524D4(a1, v7);
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = v7;
  *(a4 + 1) = 0;
  return v8;
}

void sub_1D0E5489C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24), a2);
    v11 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v6 = a1 + 112;
    v7 = &v11;
  }

  else
  {
    v8 = a2 | (a3 << 8);
    if (*(a1 + 170) == 1)
    {
      v10 = v8;
      v6 = a1 + 112;
      v7 = &v10;
    }

    else
    {
      v9 = v8;
      v6 = a1 + 112;
      v7 = &v9;
    }
  }

  sub_1D0E54E6C(v6, v7);
}

void sub_1D0E54978()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1D387E7B0](exception, 1);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_1D0E549D0(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  sub_1D0E540D0(&__s, __src, a4, a4 - __src);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a1 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a2 + 16) + 32))(&v11);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v11;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v9 = *(a1 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a1 = 0;
      *(a1 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a1 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a1, &__s);
    goto LABEL_9;
  }

  **a1 = 0;
  *(a1 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_1D0E54B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0E54B88()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1D387E7B0](exception, 2);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_1D0E54BE0(void **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v9 = v8 + 1;
    if (v8 + 1 > 0x555555555555555)
    {
      sub_1D0C5663C();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x555555555555555)
      {
        operator new();
      }

      sub_1D0C54BE8();
    }

    v12 = 48 * v8;
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *a2 = 0uLL;
    v13 = *(a2 + 24);
    a2[1] = 0uLL;
    *(v12 + 40) = *(a2 + 5);
    a2[2] = 0uLL;
    v7 = (48 * v8 + 48);
    v14 = *a1;
    v15 = a1[1] - *a1;
    *(v12 + 24) = v13;
    v16 = (48 * v8 - v15);
    memcpy((v12 - v15), v14, v15);
    *a1 = v16;
    a1[1] = v7;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 24) = v6;
    a2[2] = 0uLL;
    *(a2 + 3) = 0;
    v7 = v3 + 48;
  }

  a1[1] = v7;
}

void sub_1D0E54D50(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  sub_1D0E540D0(__p, __src, a4, a4 - __src);
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1D0E54DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0E54E14()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1D387E7B0](exception, 9);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_1D0E54E6C(uint64_t a1, __int16 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 1;
    if (v7 >> 1 <= -2)
    {
      sub_1D0C5663C();
    }

    v9 = v3 - v6;
    if (v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1D0C54BE8();
    }

    v12 = (2 * v8);
    v13 = &v12[-(v7 >> 1)];
    *v12 = *a2;
    v5 = v12 + 1;
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void *sub_1D0E54F64(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1D0E54FD0(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E5505C(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_1D0E5508C(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1D0E550F8(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E55184(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

unsigned __int8 *sub_1D0E5534C(unsigned __int8 *result, unsigned __int8 *a2, int *a3)
{
  if (result != a2)
  {
    v3 = *result;
    if ((v3 & 0xF8) == 0x30 || (v3 & 0xFE) == 0x38)
    {
      v4 = v3 - 48;
      *a3 = v4;
      if (++result != a2)
      {
        do
        {
          v5 = *result;
          if ((v5 & 0xF8) != 0x30 && (v5 & 0xFE) != 0x38)
          {
            break;
          }

          if (v4 >= 214748364)
          {
            sub_1D0E553E4();
          }

          v4 = v5 + 10 * v4 - 48;
          *a3 = v4;
          ++result;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

void sub_1D0E553E4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1D387E7B0](exception, 8);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_1D0E5543C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1D387E7B0](exception, 7);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_1D0E55498(void *a1)
{
  sub_1D0E555EC(a1);

  JUMPOUT(0x1D387ECA0);
}

unsigned int *sub_1D0E554D0(unsigned int *result, void *a2)
{
  v2 = (a2[7] + 16 * result[10]);
  if (*a2 == -991)
  {
    v3 = *v2 + 1;
    *v2 = v3;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = v3 < v5;
    if (v3 < v5 && v3 >= v4)
    {
      v8 = v2[1];
      v6 = v3 < v5 && v8 != a2[2];
    }

    if (!v6 || v3 < v4)
    {
      *a2 = -994;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_22:
      a2[10] = *(result + 1);
      return sub_1D0E556A0(result, a2);
    }

    goto LABEL_23;
  }

  *v2 = 0;
  if (*(result + 4))
  {
    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_22;
    }

LABEL_23:
    *a2 = -992;
    return result;
  }

  *a2 = -994;
LABEL_25:
  a2[10] = *(result + 2);
  return result;
}

unsigned int *sub_1D0E55580(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return sub_1D0E556A0(result, a3);
  }

  return result;
}

void sub_1D0E555B4(void *a1)
{
  sub_1D0E555EC(a1);

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0E555EC(void *a1)
{
  *a1 = &unk_1F4CF08B0;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_1F4CF0430;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

unsigned int *sub_1D0E556A0(unsigned int *result, void *a2)
{
  v2 = result[11];
  *(a2[7] + 16 * result[10] + 8) = a2[2];
  v3 = result[12];
  if (v2 != v3)
  {
    v4 = v2 - 1;
    v5 = a2[3];
    v6 = v3 - 1 - v4;
    v7 = (a2[4] + 24 * v4 + 16);
    do
    {
      *(v7 - 2) = v5;
      *(v7 - 1) = v5;
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_1D0E55708(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_1D0E55720(void *a1)
{
  sub_1D0E555EC(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E55764(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

uint64_t sub_1D0E557A0(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_1D0E557B4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1D387E7B0](exception, 15);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *sub_1D0E5580C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 28);
    v9 = a2 + 1;
    v8 = *a2;
    if (a2 + 1 != a3 || v8 != 36)
    {
      if ((v8 - 46) > 0x2E || ((1 << (v8 - 46)) & 0x600000000001) == 0)
      {
        sub_1D0E524D4(a1, v8);
      }

      if (v9 == a3 || v8 != 92)
      {
        if (v8 == 46)
        {
          operator new();
        }
      }

      else
      {
        v18 = *v9;
        if ((v18 - 36) <= 0x3A && ((1 << (v18 - 36)) & 0x580000000000441) != 0)
        {
          sub_1D0E524D4(a1, v18);
        }
      }
    }

    v10 = sub_1D0E51150(a1, a2, a3);
    v11 = v10;
    if (v10 == v3 && v10 != a3 && v10 + 1 != a3 && *v10 == 92)
    {
      v12 = v10[1];
      if (v12 == 40)
      {
        v13 = v10 + 2;
        sub_1D0E51E28(a1);
        v14 = *(a1 + 28);
        do
        {
          v15 = v13;
          v16 = sub_1D0E5580C(a1, v13, a3);
          v13 = v16;
        }

        while (v16 != v15);
        if (v15 == a3 || v16 + 1 == a3 || *v16 != 92 || v16[1] != 41)
        {
          sub_1D0E4FB44();
        }

        v11 = v16 + 2;
        sub_1D0E51EB0(a1, v14);
      }

      else
      {
        v19 = sub_1D0E55CE4(a1, v12);
        v20 = 2;
        if (!v19)
        {
          v20 = 0;
        }

        v11 += v20;
      }
    }

    if (v11 != v3)
    {
      if (v11 != a3)
      {
        v21 = *(a1 + 28) + 1;
        v22 = *v11;
        if (v22 == 42)
        {
          sub_1D0E551BC(a1, 0, -1, v6, v7 + 1, *(a1 + 28) + 1, 1);
        }

        if (v11 + 1 != a3 && v22 == 92 && v11[1] == 123)
        {
          v31 = 0;
          v23 = sub_1D0E5534C(v11 + 2, a3, &v31);
          if (v23 == v11 + 2)
          {
            goto LABEL_58;
          }

          if (v23 != a3)
          {
            v24 = v23 + 1;
            v25 = *v23;
            if (v25 == 44)
            {
              v30 = -1;
              v26 = sub_1D0E5534C(v23 + 1, a3, &v30);
              if (v26 != a3 && v26 + 1 != a3 && *v26 == 92 && v26[1] == 125)
              {
                v27 = v30;
                if (v30 == -1)
                {
                  v28 = a1;
                  v27 = -1;
LABEL_55:
                  sub_1D0E551BC(v28, v31, v27, v6, v7 + 1, v21, 1);
                }

                if (v30 >= v31)
                {
                  v28 = a1;
                  goto LABEL_55;
                }

LABEL_58:
                sub_1D0E553E4();
              }
            }

            else if (v24 != a3 && v25 == 92 && *v24 == 125)
            {
              sub_1D0E551BC(a1, v31, v31, v6, v7 + 1, v21, 1);
            }
          }

          sub_1D0E5543C();
        }
      }

      return v11;
    }
  }

  return v3;
}

void *sub_1D0E55BAC(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1D0E55C18(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E55CA4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

uint64_t sub_1D0E55CE4(uint64_t a1, unsigned __int8 a2)
{
  if (((a2 & 0xF8) == 0x30 || (a2 & 0xFE) == 0x38) && a2 - 49 <= 8)
  {
    if (a2 - 48 <= *(a1 + 28))
    {
      sub_1D0E52710(a1, a2 - 48);
    }

    sub_1D0E526B8();
  }

  return 0;
}

unsigned __int8 *sub_1D0E55D44(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_1D0E55DA4(a1, a2, a3);
  if (v6 == a2)
  {
    sub_1D0E557B4();
  }

  do
  {
    v7 = v6;
    v6 = sub_1D0E55DA4(a1, v6, a3);
  }

  while (v6 != v7);
  return v7;
}

unsigned __int8 *sub_1D0E55DA4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  if (a2 == a3)
  {
    goto LABEL_23;
  }

  v8 = *a2;
  v9 = (v8 - 36);
  if (v9 <= 0x3A)
  {
    if (((1 << (v8 - 36)) & 0x5800000080004D1) != 0)
    {
      goto LABEL_4;
    }

    if (v9 == 5)
    {
      if (!*(a1 + 36))
      {
        LOBYTE(v8) = 41;
        goto LABEL_15;
      }

LABEL_23:
      v12 = sub_1D0E51150(a1, a2, a3);
      goto LABEL_24;
    }
  }

  if ((v8 - 123) >= 2)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = a2 + 1;
  if (a2 + 1 == a3 || v8 != 92)
  {
LABEL_21:
    if (v8 == 46)
    {
      operator new();
    }

    goto LABEL_23;
  }

  v11 = *v10;
  LOBYTE(v8) = *v10;
  if ((v11 - 36) <= 0x3A && ((1 << (v11 - 36)) & 0x5800000080004F1) != 0 || (v11 - 123) < 3)
  {
LABEL_15:
    sub_1D0E524D4(a1, v8);
  }

  if ((*(a1 + 24) & 0x1F0) == 0x40)
  {
    v12 = sub_1D0E545B8(a1, a2 + 1, a3, 0);
  }

  else
  {
    v13 = sub_1D0E55CE4(a1, v8);
    v14 = 2;
    if (!v13)
    {
      v14 = 0;
    }

    v12 = &a2[v14];
  }

  if (v12 == a2)
  {
    v8 = *v12;
    goto LABEL_21;
  }

LABEL_24:
  if (v12 == a2 && v12 != a3)
  {
    v15 = *v12;
    switch(v15)
    {
      case '$':
        sub_1D0E4F95C(a1);
      case '(':
        sub_1D0E51E28(a1);
        v16 = *(a1 + 28);
        ++*(a1 + 36);
        v17 = sub_1D0E4EB14(a1, (v12 + 1), a3);
        if (v17 == a3 || (v18 = v17, *v17 != 41))
        {
          sub_1D0E4FB44();
        }

        sub_1D0E51EB0(a1, v16);
        --*(a1 + 36);
        v12 = v18 + 1;
        break;
      case '^':
        sub_1D0E4F8D8(a1);
    }
  }

  if (v12 == a2)
  {
    return v12;
  }

  v19 = (*(a1 + 28) + 1);

  return sub_1D0E4F5DC(a1, v12, a3, v6, (v7 + 1), v19);
}

BOOL sub_1D0E56064(uint64_t a1, uint64_t a2)
{
  v6 = a1 + 32;
  v4 = *(a1 + 32);
  v5 = *(v6 + 8);
  v9 = a2 + 32;
  v7 = *(a2 + 32);
  v8 = *(v9 + 8);
  v10 = v8 == v7 && v5 == v4;
  if (v5 != v4 && v8 != v7)
  {
    return *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && sub_1D0E57BAC(v4, v7) == 0;
  }

  return v10;
}

uint64_t sub_1D0E56100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  v10 = *(a1 + 28);
  *(a4 + 24) = a3;
  v11 = (a4 + 24);
  *(a4 + 32) = a3;
  *(a4 + 40) = 0;
  sub_1D0E50730(a4, (v10 + 1), (a4 + 24));
  *(a4 + 48) = a2;
  *(a4 + 56) = a2;
  *(a4 + 64) = 0;
  *(a4 + 72) = *v11;
  *(a4 + 88) = *(a4 + 40);
  if ((v9 & 0x800) == 0)
  {
    *(a4 + 104) = a2;
  }

  *(a4 + 96) = 1;
  if (!sub_1D0E565D8(a1, a2, a3, a4, v9, (v9 & 0x800) == 0))
  {
    if (a2 == a3 || (v9 & 0x40) != 0)
    {
      goto LABEL_18;
    }

    v18 = a2 + 1;
    if (v18 != a3)
    {
      do
      {
        sub_1D0E50730(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), v11);
        v19 = sub_1D0E565D8(a1, v18, a3, a4, v9 | 0x80, 0);
        v13 = *a4;
        v12 = *(a4 + 8);
        if (v19)
        {
          goto LABEL_8;
        }

        sub_1D0E50730(a4, 0xAAAAAAAAAAAAAAABLL * ((v12 - v13) >> 3), v11);
      }

      while (++v18 != a3);
    }

    sub_1D0E50730(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), v11);
    if (!sub_1D0E565D8(a1, v18, a3, a4, v9 | 0x80, 0))
    {
LABEL_18:
      result = 0;
      *(a4 + 8) = *a4;
      return result;
    }
  }

  v13 = *a4;
  v12 = *(a4 + 8);
LABEL_8:
  if (v12 == v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = v13;
  }

  v15 = *v14;
  *(a4 + 56) = *v14;
  *(a4 + 64) = *(a4 + 48) != v15;
  v16 = v14[1];
  *(a4 + 72) = v16;
  *(a4 + 88) = v16 != *(a4 + 80);
  return 1;
}

void sub_1D0E562DC(char **a1, uint64_t a2, char *a3, uint64_t *a4, char a5)
{
  v5 = a4[6];
  v6 = a4[1] - *a4;
  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 - *a1;
  v11 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
  v12 = v7 - v11;
  if (v7 <= v11)
  {
    if (v7 < v11)
    {
      v8 = (v9 + v6);
      a1[1] = (v9 + v6);
    }
  }

  else
  {
    v13 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v13 - v8) >> 3) < v12)
    {
      if (v7 <= 0xAAAAAAAAAAAAAAALL)
      {
        v14 = 0xAAAAAAAAAAAAAAABLL * (&v13[-v9] >> 3);
        v15 = 2 * v14;
        if (2 * v14 <= v7)
        {
          v15 = v7;
        }

        if (v14 >= 0x555555555555555)
        {
          v16 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v16 = v15;
        }

        if (v16 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_1D0C54BE8();
      }

      sub_1D0C5663C();
    }

    v17 = &v8[24 * v12];
    v18 = 24 * v7 - 8 * (v10 >> 3);
    do
    {
      *v8 = 0;
      *(v8 + 1) = 0;
      v8[16] = 0;
      v8 += 24;
      v18 -= 24;
    }

    while (v18);
    a1[1] = v17;
    v8 = v17;
  }

  v19 = *a1;
  if (v8 == *a1)
  {
    v22 = a2 - v5;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = a2 - v5;
    v24 = *a4;
    v23 = a4[1];
    do
    {
      v25 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v24) >> 3);
      v26 = (v24 + v20);
      if (v25 <= v21)
      {
        v27 = a4 + 3;
      }

      else
      {
        v27 = v26;
      }

      *(v19 + v20) = v22 + *v27;
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v21)
      {
        v28 = a4 + 3;
      }

      else
      {
        v28 = (*a4 + v20);
      }

      *&(*a1)[v20 + 8] = v22 + v28[1];
      v24 = *a4;
      v23 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v23 - *a4) >> 3) <= v21)
      {
        v29 = a4 + 3;
      }

      else
      {
        v29 = (*a4 + v20);
      }

      v30 = *(v29 + 16);
      v19 = *a1;
      v31 = a1[1];
      (*a1)[v20 + 16] = v30;
      ++v21;
      v20 += 24;
    }

    while (v21 < 0xAAAAAAAAAAAAAAABLL * (&v31[-v19] >> 3));
  }

  a1[3] = a3;
  a1[4] = a3;
  *(a1 + 40) = 0;
  v32 = (v22 + a4[6]);
  a1[6] = v32;
  a1[7] = (v22 + a4[7]);
  *(a1 + 64) = *(a4 + 64);
  a1[9] = (v22 + a4[9]);
  a1[10] = (v22 + a4[10]);
  *(a1 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    a1[13] = v32;
  }

  *(a1 + 96) = *(a4 + 96);
}

uint64_t sub_1D0E565D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, char a6)
{
  v7 = a5;
  v10 = a2;
  if ((*(a1 + 24) & 0x1F0) == 0)
  {

    return sub_1D0E5038C(a1, a2, a3, a4, a5, a6);
  }

  if (!*(a1 + 28))
  {
    memset(v118, 0, 48);
    v63 = *(a1 + 40);
    if (!v63)
    {
LABEL_186:
      sub_1D0E57A2C(v118);
      return v63;
    }

    *v123 = 0;
    memset(&v123[8], 0, 32);
    v124 = 0uLL;
    memset(v125, 0, 37);
    sub_1D0E57650(v118, v123);
    if (v125[0])
    {
      operator delete(v125[0]);
    }

    if (*&v123[32])
    {
      operator delete(*&v123[32]);
    }

    v112 = a4;
    v64 = *&v118[8];
    v65 = *&v118[40] + *&v118[32] - 1;
    v66 = v65 / 0x2A;
    v67 = *(*&v118[8] + 8 * (v65 / 0x2A));
    v68 = 3 * (v65 % 0x2A);
    v69 = v67 + 32 * v68;
    *v69 = 0;
    *(v69 + 8) = v10;
    *(*(v64 + 8 * v66) + 32 * v68 + 16) = v10;
    *(*(v64 + 8 * v66) + 32 * v68 + 24) = a3;
    sub_1D0E50D48((*(v64 + 8 * v66) + 32 * v68 + 56), *(a1 + 32));
    v114 = 0;
    v70 = 0;
    v113 = 0;
    v71 = *&v118[40];
    v72 = *&v118[8];
    v73 = *&v118[40] + *&v118[32] - 1;
    v74 = v73 / 0x2A;
    v75 = 3 * (v73 % 0x2A);
    *(*(*&v118[8] + 8 * v74) + 32 * v75 + 80) = v63;
    v117 = a3 - v10;
    v76 = *(v72 + 8 * v74) + 32 * v75;
    *(v76 + 88) = v7;
    *(v76 + 92) = a6;
    while (1)
    {
      if ((++v70 & 0xFFF) == 0 && (v70 >> 12) >= v117)
      {
        sub_1D0E50E48();
      }

      v78 = *(*&v118[8] + 8 * ((v71 + *&v118[32] - 1) / 0x2AuLL)) + 96 * ((v71 + *&v118[32] - 1) % 0x2AuLL);
      v80 = (v78 + 80);
      v79 = *(v78 + 80);
      if (v79)
      {
        (*(*v79 + 16))(v79, v78);
      }

      v81 = *v78;
      if (*v78 <= -995)
      {
        switch(v81)
        {
          case -1000:
            v86 = *(v78 + 16);
            v88 = (v7 & 0x1000) == 0 || v86 == a3;
            v89 = v86 != v10 || (v7 & 0x20) == 0;
            if (!v89 || !v88)
            {
              goto LABEL_181;
            }

            v90 = v86 - *(v78 + 8);
            v91 = v113;
            if (v113 <= v90)
            {
              v91 = v90;
            }

            if ((v114 & 1) == 0)
            {
              v91 = v90;
            }

            if (v91 == v117)
            {
              v92 = *&v118[8];
              v93 = *&v118[16];
              if (*&v118[16] == *&v118[8])
              {
                v93 = *&v118[8];
              }

              else
              {
                v94 = v7;
                v95 = v10;
                v96 = (*&v118[8] + 8 * (*&v118[32] / 0x2AuLL));
                v97 = (*v96 + 96 * (*&v118[32] % 0x2AuLL));
                v98 = *(*&v118[8] + 8 * ((*&v118[40] + *&v118[32]) / 0x2AuLL)) + 96 * ((*&v118[40] + *&v118[32]) % 0x2AuLL);
                if (v97 != v98)
                {
                  do
                  {
                    sub_1D0E50EF8(v97);
                    v97 += 12;
                    if ((v97 - *v96) == 4032)
                    {
                      v99 = v96[1];
                      ++v96;
                      v97 = v99;
                    }
                  }

                  while (v97 != v98);
                  v92 = *&v118[8];
                  v93 = *&v118[16];
                }

                v10 = v95;
                v7 = v94;
              }

              *&v118[40] = 0;
              v102 = (v93 - v92) >> 3;
              if (v102 >= 3)
              {
                do
                {
                  operator delete(*v92);
                  v92 = (*&v118[8] + 8);
                  *&v118[8] = v92;
                  v102 = (*&v118[16] - v92) >> 3;
                }

                while (v102 > 2);
              }

              if (v102 == 1)
              {
                v103 = 21;
LABEL_172:
                *&v118[32] = v103;
              }

              else if (v102 == 2)
              {
                v103 = 42;
                goto LABEL_172;
              }

              v114 = 1;
              v113 = v117;
              break;
            }

            v113 = v91;
            sub_1D0E5797C(v118);
            v114 = 1;
            break;
          case -999:
            break;
          case -995:
            v82 = *&v118[32];
            v83 = *&v118[8];
            v84 = *&v118[16];
            if (!*&v118[32])
            {
              v85 = 42 * ((*&v118[16] - *&v118[8]) >> 3) - 1;
              if (*&v118[16] == *&v118[8])
              {
                v85 = 0;
              }

              if ((v85 - *&v118[40]) < 0x2A)
              {
                if (*&v118[16] - *&v118[8] < *&v118[24] - *v118)
                {
                  if (*&v118[8] != *v118)
                  {
                    operator new();
                  }

                  operator new();
                }

                if (*&v118[24] == *v118)
                {
                  v104 = 1;
                }

                else
                {
                  v104 = (*&v118[24] - *v118) >> 2;
                }

                *&v123[32] = v118;
                sub_1D0C4E87C(v104);
              }

              *&v118[32] = 42;
              *v123 = *(*&v118[16] - 8);
              *&v118[16] -= 8;
              sub_1D0C15D70(v118, v123);
              v82 = *&v118[32];
              v83 = *&v118[8];
              v84 = *&v118[16];
            }

            v105 = (v83 + 8 * (v82 / 0x2A));
            v106 = *v105 + 96 * (v82 % 0x2A);
            if (v84 == v83)
            {
              v107 = 0;
            }

            else
            {
              v107 = v106;
            }

            if (v107 == *v105)
            {
              v107 = *(v105 - 1) + 4032;
            }

            v108 = *(v78 + 16);
            *(v107 - 96) = *v78;
            *(v107 - 80) = v108;
            *(v107 - 56) = 0;
            *(v107 - 48) = 0;
            *(v107 - 64) = 0;
            *(v107 - 64) = *(v78 + 32);
            *(v107 - 48) = *(v78 + 48);
            *(v78 + 32) = 0;
            *(v78 + 40) = 0;
            *(v78 + 48) = 0;
            *(v107 - 40) = 0;
            *(v107 - 32) = 0;
            *(v107 - 24) = 0;
            *(v107 - 40) = *(v78 + 56);
            *(v107 - 24) = *(v78 + 72);
            *(v78 + 56) = 0;
            *(v78 + 64) = 0;
            *(v78 + 72) = 0;
            v109 = *v80;
            *(v107 - 11) = *(v78 + 85);
            *(v107 - 16) = v109;
            *&v118[32] = vaddq_s64(*&v118[32], xmmword_1D0E82EC0);
            goto LABEL_181;
          default:
            goto LABEL_189;
        }
      }

      else
      {
        if (v81 > -993)
        {
          if (v81 == -992)
          {
            v100 = *(v78 + 16);
            *v123 = *v78;
            *&v123[16] = v100;
            v124 = 0uLL;
            *&v123[32] = 0;
            sub_1D0E50F98(&v123[32], *(v78 + 32), *(v78 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v78 + 40) - *(v78 + 32)) >> 3));
            memset(v125, 0, 24);
            sub_1D0E51018(v125, *(v78 + 56), *(v78 + 64), (*(v78 + 64) - *(v78 + 56)) >> 4);
            v101 = *v80;
            *(&v125[3] + 5) = *(v78 + 85);
            v125[3] = v101;
            (*(**(v78 + 80) + 24))(*(v78 + 80), 1, v78);
            (*(*v125[3] + 24))(v125[3], 0, v123);
            sub_1D0E57650(v118, v123);
            if (v125[0])
            {
              v125[1] = v125[0];
              operator delete(v125[0]);
            }

            if (*&v123[32])
            {
              *&v124 = *&v123[32];
              operator delete(*&v123[32]);
            }
          }

          else if (v81 != -991)
          {
LABEL_189:
            sub_1D0E50EA0();
          }

          goto LABEL_182;
        }

        if (v81 != -994)
        {
          if (v81 != -993)
          {
            goto LABEL_189;
          }

LABEL_181:
          sub_1D0E5797C(v118);
        }
      }

LABEL_182:
      v71 = *&v118[40];
      if (!*&v118[40])
      {
        if (v114)
        {
          v110 = *v112;
          *v110 = v10;
          *(v110 + 8) = v10 + v113;
          v63 = 1;
          *(v110 + 16) = 1;
        }

        else
        {
          v63 = 0;
        }

        goto LABEL_186;
      }
    }
  }

  v12 = a5;
  v126 = 0;
  v127 = 0;
  v128 = 0;
  *v123 = 0;
  memset(&v123[8], 0, 32);
  v124 = 0u;
  memset(v125, 0, 37);
  v13 = *(a1 + 40);
  if (!v13)
  {
LABEL_94:
    v63 = 0;
    goto LABEL_95;
  }

  *&v121 = a3;
  *(&v121 + 1) = a3;
  v122 = 0;
  *v118 = 0;
  memset(&v118[8], 0, 48);
  *__p = 0uLL;
  memset(v120, 0, 21);
  sub_1D0E5093C(&v126, v118);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v118[32])
  {
    operator delete(*&v118[32]);
  }

  v111 = a4;
  v14 = v127;
  *(v127 - 24) = 0;
  *(v14 - 11) = v10;
  *(v14 - 10) = v10;
  v115 = v10;
  *(v14 - 9) = a3;
  sub_1D0E50BB0(v14 - 8, *(a1 + 28), &v121);
  sub_1D0E50D48(v127 - 5, *(a1 + 32));
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v116 = a3;
  v18 = a3 - v115;
  v19 = v127;
  *(v127 - 2) = v13;
  *(v19 - 2) = v12;
  *(v19 - 4) = a6;
  do
  {
    v20 = (++v17 & 0xFFF) != 0 || (v17 >> 12) < v18;
    if (!v20)
    {
      sub_1D0E50E48();
    }

    v22 = v19 - 4;
    v21 = *(v19 - 2);
    v23 = v19 - 24;
    if (v21)
    {
      (*(*v21 + 16))(v21, v19 - 24);
    }

    v24 = *v23;
    if (*v23 > -994)
    {
      switch(v24)
      {
        case -993:
          goto LABEL_40;
        case -992:
          v37 = *(v19 - 5);
          *v118 = *v23;
          *&v118[16] = v37;
          memset(&v118[32], 0, 24);
          sub_1D0E50F98(&v118[32], *(v19 - 8), *(v19 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v19 - 7) - *(v19 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v120[0] = 0;
          sub_1D0E51018(__p, *(v19 - 5), *(v19 - 4), (*(v19 - 4) - *(v19 - 5)) >> 4);
          v38 = *v22;
          *(&v120[1] + 5) = *(v19 - 11);
          v120[1] = v38;
          (*(**v22 + 24))(*v22, 1, v19 - 24);
          (*(*v120[1] + 24))(v120[1], 0, v118);
          sub_1D0E5093C(&v126, v118);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v118[32])
          {
            *&v118[40] = *&v118[32];
            operator delete(*&v118[32]);
          }

          break;
        case -991:
          break;
        default:
LABEL_188:
          sub_1D0E50EA0();
      }
    }

    else
    {
      if ((v24 + 995) < 2)
      {
        goto LABEL_45;
      }

      if (v24 != -1000)
      {
        goto LABEL_188;
      }

      v25 = *(v19 - 10);
      if ((v12 & 0x20) != 0 && v25 == v115 || (v12 & 0x1000) != 0 && v25 != v116)
      {
LABEL_40:
        v36 = (v127 - 24);
        sub_1D0E50EF8(v127 - 12);
        v127 = v36;
        goto LABEL_45;
      }

      v26 = v25 - *(v19 - 11);
      if ((v16 & (v15 >= v26)) == 0)
      {
        v27 = *(v19 - 5);
        *v123 = *v23;
        *&v123[16] = v27;
        if (v123 != v23)
        {
          v29 = *(v19 - 8);
          v28 = *(v19 - 7);
          v30 = v28 - v29;
          v31 = *(&v124 + 1);
          v32 = *&v123[32];
          if (*(&v124 + 1) - *&v123[32] < v28 - v29)
          {
            if (*&v123[32])
            {
              *&v124 = *&v123[32];
              operator delete(*&v123[32]);
              v31 = 0;
              *&v123[32] = 0;
              v124 = 0uLL;
            }

            v33 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 3);
            if (v33 <= 0xAAAAAAAAAAAAAAALL)
            {
              v34 = 0xAAAAAAAAAAAAAAABLL * (v31 >> 3);
              if (2 * v34 > v33)
              {
                v33 = 2 * v34;
              }

              if (v34 >= 0x555555555555555)
              {
                v35 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v35 = v33;
              }

              if (v35 <= 0xAAAAAAAAAAAAAAALL)
              {
                sub_1D0E508E4(v35);
              }
            }

            sub_1D0C5663C();
          }

          v39 = v124;
          if (v124 - *&v123[32] >= v30)
          {
            while (v29 != v28)
            {
              *v32 = *v29;
              *(v32 + 16) = *(v29 + 16);
              v29 += 24;
              v32 += 24;
            }
          }

          else
          {
            v40 = (v29 + v124 - *&v123[32]);
            if (v124 != *&v123[32])
            {
              do
              {
                *v32 = *v29;
                *(v32 + 16) = *(v29 + 16);
                v29 += 24;
                v32 += 24;
              }

              while (v29 != v40);
            }

            if (v40 == v28)
            {
              v32 = v39;
            }

            else
            {
              v32 = v39;
              do
              {
                v41 = *v40;
                *(v39 + 16) = *(v40 + 2);
                *v39 = v41;
                v39 += 24;
                v40 = (v40 + 24);
                v32 += 24;
              }

              while (v40 != v28);
            }
          }

          *&v124 = v32;
          v43 = *(v19 - 5);
          v42 = *(v19 - 4);
          v44 = v42 - v43;
          v45 = v125[2];
          v46 = v125[0];
          if ((v125[2] - v125[0]) < (v42 - v43))
          {
            if (v125[0])
            {
              v125[1] = v125[0];
              operator delete(v125[0]);
              v45 = 0;
              memset(v125, 0, 24);
            }

            v47 = v44 >> 4;
            if (!((v44 >> 4) >> 60))
            {
              if (v45 >> 3 > v47)
              {
                v47 = v45 >> 3;
              }

              if (v45 >= 0x7FFFFFFFFFFFFFF0)
              {
                v48 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v48 = v47;
              }

              if (!(v48 >> 60))
              {
                sub_1D0E50F50(v48);
              }
            }

            sub_1D0C5663C();
          }

          v49 = v125[1];
          if ((v125[1] - v125[0]) >= v44)
          {
            while (v43 != v42)
            {
              *v46 = *v43;
              v46[1] = *(v43 + 1);
              v43 += 16;
              v46 += 2;
            }
          }

          else
          {
            v50 = &v43[v125[1] - v125[0]];
            if (v125[1] != v125[0])
            {
              do
              {
                *v46 = *v43;
                v46[1] = *(v43 + 1);
                v43 += 16;
                v46 += 2;
              }

              while (v43 != v50);
            }

            if (v50 == v42)
            {
              v46 = v49;
            }

            else
            {
              v46 = v49;
              do
              {
                v51 = *v50;
                v50 += 16;
                *v49++ = v51;
                v46 += 2;
              }

              while (v50 != v42);
            }
          }

          v125[1] = v46;
        }

        v52 = *v22;
        *(&v125[3] + 5) = *(v22 + 5);
        v125[3] = v52;
        v15 = v26;
      }

      v53 = v127;
      if (v15 == v18)
      {
        v54 = v126;
        while (v53 != v54)
        {
          v53 -= 12;
          sub_1D0E50EF8(v53);
        }

        v127 = v54;
        v16 = 1;
        v15 = v18;
      }

      else
      {
        v55 = (v127 - 24);
        sub_1D0E50EF8(v127 - 12);
        v127 = v55;
        v16 = 1;
      }
    }

LABEL_45:
    v19 = v127;
  }

  while (v126 != v127);
  if ((v16 & 1) == 0)
  {
    goto LABEL_94;
  }

  v57 = *v111;
  *v57 = v115;
  *(v57 + 8) = v115 + v15;
  *(v57 + 16) = 1;
  if (v124 != *&v123[32])
  {
    v58 = 0xAAAAAAAAAAAAAAABLL * ((v124 - *&v123[32]) >> 3);
    v59 = (*&v123[32] + 16);
    v60 = 1;
    do
    {
      v61 = v57 + 24 * v60;
      *v61 = *(v59 - 1);
      v62 = *v59;
      v59 += 24;
      *(v61 + 16) = v62;
      v20 = v58 > v60++;
    }

    while (v20);
  }

  v63 = 1;
LABEL_95:
  if (v125[0])
  {
    v125[1] = v125[0];
    operator delete(v125[0]);
  }

  if (*&v123[32])
  {
    *&v124 = *&v123[32];
    operator delete(*&v123[32]);
  }

  *v123 = &v126;
  sub_1D0E510CC(v123);
  return v63;
}

void sub_1D0E57578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  operator delete(v38);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1D0E57A2C(&a17);
  _Unwind_Resume(a1);
}

__n128 sub_1D0E57650(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = v5 - v4;
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = 42 * ((v5 - v4) >> 3) - 1;
  }

  v8 = a1[4];
  v9 = a1[5] + v8;
  if (v7 == v9)
  {
    if (v8 < 0x2A)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v6 < v11)
      {
        if (v10 != v5)
        {
          operator new();
        }

        operator new();
      }

      if (v10 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11 >> 2;
      }

      v17[4] = a1;
      sub_1D0C4E87C(v12);
    }

    a1[4] = v8 - 42;
    v17[0] = *v4;
    a1[1] = (v4 + 1);
    sub_1D0C149C4(a1, v17);
    v4 = a1[1];
    v9 = a1[5] + a1[4];
  }

  v13 = v4[v9 / 0x2A] + 96 * (v9 % 0x2A);
  v14 = *(a2 + 16);
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  *(v13 + 32) = 0;
  *(v13 + 32) = *(a2 + 32);
  *(v13 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  result = *(a2 + 56);
  *(v13 + 56) = result;
  *(v13 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v16 = *(a2 + 80);
  *(v13 + 85) = *(a2 + 85);
  *(v13 + 80) = v16;
  ++a1[5];
  return result;
}

void sub_1D0E5794C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  operator delete(v10);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1D0E5797C(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  sub_1D0E50EF8((*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)));
  v3 = a1[2];
  v4 = v3 == a1[1];
  v5 = 42 * ((v3 - a1[1]) >> 3) - 1;
  v7 = a1[4];
  v6 = a1[5];
  a1[5] = v6 - 1;
  if (v4)
  {
    v5 = 0;
  }

  if ((v5 - (v6 + v7) - 83) <= 0xFFFFFFFFFFFFFFABLL)
  {
    operator delete(*(v3 - 8));
    a1[2] -= 8;
  }
}

uint64_t sub_1D0E57A2C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x2A];
    v7 = *v6 + 96 * (v5 % 0x2A);
    v8 = v3[(*(a1 + 40) + v5) / 0x2A] + 96 * ((*(a1 + 40) + v5) % 0x2A);
    if (v7 != v8)
    {
      do
      {
        sub_1D0E50EF8(v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 42;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1D0E57BAC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    sub_1D0E540D0(&__dst, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  }

  else
  {
    __dst = 0;
    v20 = 0;
    v21 = 0;
  }

  if (*(a2 + 16) == 1)
  {
    sub_1D0E540D0(&v16, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    v3 = HIBYTE(v18);
    v5 = v16;
    v4 = v17;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  v6 = SHIBYTE(v21);
  v7 = __dst;
  if (v21 >= 0)
  {
    v8 = HIBYTE(v21);
  }

  else
  {
    v8 = v20;
  }

  if (v21 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if ((v3 & 0x80u) == 0)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if ((v3 & 0x80u) == 0)
  {
    v11 = &v16;
  }

  else
  {
    v11 = v5;
  }

  if (v10 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = memcmp(p_dst, v11, v12);
  if ((v3 & 0x80) != 0)
  {
    operator delete(v5);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(v7);
LABEL_24:
  v14 = v10 < v8;
  if (v8 < v10)
  {
    v14 = -1;
  }

  if (v13)
  {
    return v13;
  }

  else
  {
    return v14;
  }
}

void sub_1D0E57CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t swan::FixedLagSmoother::Initialize(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unsigned int a5, double a6, double a7)
{
  for (i = 0; i != 112608; i += 1104)
  {
    v15 = a1 + i;
    *(v15 + 8) = xmmword_1D0E7F320;
    *(v15 + 336) = xmmword_1D0E84530;
    *(a1 + i + 424) = xmmword_1D0E7F320;
    *(v15 + 752) = xmmword_1D0E7F320;
    sub_1D0BBBC00(a1 + i, 0.0);
    sub_1D0BBBC00(a1 + i + 328, 0.0);
    sub_1D0BBBC00(a1 + i + 416, 0.0);
    sub_1D0BBBC00(a1 + i + 744, 0.0);
    *(v15 + 1072) = 0;
    *(v15 + 1080) = 0;
    *(v15 + 1088) = 0x7FF0000000000000;
    *(v15 + 1096) = 0;
    *(v15 + 1100) = 0;
  }

  sub_1D0B894B0(a1 + 328, a3);
  sub_1D0B894B0(a1 + 416, a4);
  sub_1D0B894B0(a1 + 744, a1 + 416);
  *(a1 + 1072) = a6;
  *(a1 + 1080) = a2;
  if (a5 >= 0x64)
  {
    v16 = 100;
  }

  else
  {
    v16 = a5;
  }

  *(a1 + 1100) = v16;
  *(a1 + 1088) = a7;
  sub_1D0BBBC00(a1, 0.0);
  sub_1D0BBBC00(a1 + 113272, 0.0);
  sub_1D0BBBC00(a1 + 112616, 0.0);
  *(a1 + 1096) = 1;
  sub_1D0B894B0(a1 + 1104, a1);
  sub_1D0B894B0(a1 + 1432, a1 + 328);
  sub_1D0B894B0(a1 + 1520, a1 + 416);
  sub_1D0B894B0(a1 + 1848, a1 + 744);
  *(a1 + 2176) = *(a1 + 1072);
  *(a1 + 2192) = *(a1 + 1088);
  *(a1 + 112608) = 1;
  return 0;
}

uint64_t swan::FixedLagSmoother::Update(uint64_t a1, char a2, uint64_t a3, uint64_t a4, int a5, double a6, double a7, double a8)
{
  v177 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE055078, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE055078))
  {
    sub_1D0E59168();
    __cxa_atexit(sub_1D0D2D710, &qword_1EE055088, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE055078);
  }

  if ((atomic_load_explicit(&qword_1EE055080, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE055080))
  {
    sub_1D0D8CCB0(&qword_1EE055088, &unk_1EE0551D0);
    __cxa_atexit(sub_1D0D2D710, &unk_1EE0551D0, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE055080);
  }

  v153 = 0x600000006;
  v151 = &unk_1F4CDF278;
  v154 = &v155;
  v152 = xmmword_1D0E7F320;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  v128 = 0x600000006;
  v126 = &unk_1F4CDF278;
  v129 = &v130;
  v127 = xmmword_1D0E7F320;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v137 = 0;
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v145 = 0;
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v130 = 0x3FF0000000000000;
  *&v134 = 0x3FF0000000000000;
  v138 = 0x3FF0000000000000;
  *&v142 = 0x3FF0000000000000;
  v146 = 0x3FF0000000000000;
  v150 = 0x3FF0000000000000;
  *(&v140 + 1) = a6 - *(a1 + 2176);
  *&v144 = *(&v140 + 1);
  *(&v148 + 1) = *(&v140 + 1);
  v15 = fabs(*(&v140 + 1) * 0.5);
  v16 = a7 * a7 * (*(&v140 + 1) * *(&v140 + 1));
  *&v166 = v16;
  *(&v164 + 1) = v16 * v15;
  *&v157 = v16 * v15;
  v155 = v15 * (v16 * v15);
  *(&v169 + 1) = v16;
  *&v168 = v16 * v15;
  *&v159 = v155;
  *(&v160 + 1) = v16 * v15;
  v17 = a8 * a8 * (*(&v140 + 1) * *(&v140 + 1));
  v173 = v17;
  *(&v171 + 1) = v15 * v17;
  *&v164 = v15 * v17;
  *(&v162 + 1) = v15 * (v15 * v17);
  v120 = 0;
  v123 = 0x300000003;
  v122 = xmmword_1D0E76C10;
  v121 = &unk_1F4CD5DD0;
  v124 = &v125;
  v119 = &unk_1F4CD5D50;
  v18 = *(a1 + 1464);
  v175 = *v18;
  v176 = v18[1].f64[0];
  cnnavigation::ECEFToENU(&v175, 1, 0, &v175, 1, v174, &v119, v176);
  v116 = 0x300000003;
  v115 = xmmword_1D0E76C10;
  v19 = v118;
  v114 = &unk_1F4CD5DD0;
  v117 = v118;
  if (v120 == 1)
  {
    sub_1D0B894B0(&v114, &v121);
    v19 = v117;
    v20 = HIDWORD(v115);
  }

  else
  {
    v20 = 3;
  }

  v21 = 0;
  v94 = 0x600000006;
  v22 = &v96;
  v92 = &unk_1F4CDF278;
  v95 = &v96;
  v93 = xmmword_1D0E7F320;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  *&v96 = *v19;
  v23 = &v19[v20];
  *&v99 = *v23;
  v24 = &v19[2 * v20];
  *&v102 = *v24;
  *(&v96 + 1) = v19[1];
  *(&v99 + 1) = v23[1];
  v25 = (2 * v20) | 1;
  *(&v102 + 1) = v19[v25];
  *&v97 = v19[2];
  *&v100 = v23[2];
  *&v103 = v24[2];
  *(&v106 + 1) = *v19;
  *(&v109 + 1) = *v23;
  *(&v112 + 1) = *v24;
  *&v107 = v19[1];
  *&v110 = v23[1];
  *&v113 = v19[v25];
  *(&v107 + 1) = v19[2];
  *(&v110 + 1) = v23[2];
  *(&v113 + 1) = v24[2];
  v79 = 0x600000006;
  v77 = &unk_1F4CDF278;
  v80 = v81;
  v78 = xmmword_1D0E7F320;
  v26 = 40;
  do
  {
    v27 = 0;
    v28 = v26;
    do
    {
      *(&v77 + v28) = *(v22 + v27);
      v27 += 8;
      v28 += 48;
    }

    while (v27 != 48);
    ++v21;
    v26 += 8;
    v22 += 3;
  }

  while (v21 != 6);
  v84 = 0x600000006;
  v83 = xmmword_1D0E7F320;
  v82 = &unk_1F4CDF278;
  v85 = v86;
  sub_1D0B89390(&v77, &v151, &v82);
  v89 = 0x600000006;
  v88 = xmmword_1D0E7F320;
  v87 = &unk_1F4CDF278;
  v90 = v91;
  sub_1D0B89390(&v82, &v92, &v87);
  sub_1D0B894B0(a1 + 112944, &v87);
  v89 = 0x600000006;
  v88 = xmmword_1D0E7F320;
  v87 = &unk_1F4CDF278;
  v90 = v91;
  sub_1D0B89390(&v126, a1 + 112616, &v87);
  sub_1D0B894B0(a1, &v87);
  v79 = 0x600000006;
  v78 = xmmword_1D0E7F320;
  v77 = &unk_1F4CDF278;
  v80 = v81;
  sub_1D0B89390(a1, &qword_1EE055088, &v77);
  v84 = 0x600000006;
  v83 = xmmword_1D0E7F320;
  v82 = &unk_1F4CDF278;
  v85 = v86;
  sub_1D0BA5A78(&v126, &v77, &v82);
  v29 = DWORD1(v83);
  v30 = v83;
  v89 = 0x600000006;
  v87 = &unk_1F4CDF278;
  v90 = v91;
  *&v88 = __PAIR64__(v83, DWORD1(v83));
  DWORD2(v88) = v83 * DWORD1(v83);
  HIDWORD(v88) = DWORD1(v83);
  if (DWORD1(v83))
  {
    v31 = 0;
    v32 = 0;
    v33 = HIDWORD(v83);
    v34 = v85;
    do
    {
      v35 = v31;
      v36 = v32;
      for (i = v30; i; --i)
      {
        v91[v36] = *&v34[8 * v35];
        v36 += v29;
        ++v35;
      }

      ++v32;
      v31 += v33;
    }

    while (v32 != v29);
  }

  v50 = a2;
  v38 = a1 + 110816;
  v39 = -101;
  v40 = xmmword_1D0E7F320;
  do
  {
    if (*(v38 + 680) == 1)
    {
      v84 = 0x600000006;
      v83 = v40;
      v82 = &unk_1F4CDF278;
      v85 = v86;
      sub_1D0B89390(v38, &v87, &v82);
      sub_1D0B894B0(v38 + 1104, &v82);
      v40 = xmmword_1D0E7F320;
    }

    v38 -= 1104;
  }

  while (!__CFADD__(v39++, 1));
  v79 = 0x100000006;
  v78 = xmmword_1D0E84530;
  v77 = &unk_1F4CE0BF8;
  v80 = v81;
  sub_1D0B89390(&v126, a1 + 328, &v77);
  v74 = 0x100000006;
  v73 = xmmword_1D0E84530;
  v72 = &unk_1F4CE0BF8;
  v75 = v76;
  sub_1D0B89390(a1, a1 + 113272, &v72);
  v84 = 0x100000006;
  v83 = xmmword_1D0E84530;
  v82 = &unk_1F4CE0BF8;
  v85 = v86;
  sub_1D0B88838(&v77, &v72, &v82);
  sub_1D0B894B0(a1 + 328, &v82);
  v74 = 0x600000006;
  v73 = xmmword_1D0E7F320;
  v72 = &unk_1F4CDF278;
  v75 = v76;
  sub_1D0B89390(&v126, a1 + 416, &v72);
  v79 = 0x600000006;
  v78 = xmmword_1D0E7F320;
  v77 = &unk_1F4CDF278;
  v80 = v81;
  sub_1D0B89390(&v72, &v87, &v77);
  v84 = 0x600000006;
  v83 = xmmword_1D0E7F320;
  v82 = &unk_1F4CDF278;
  v85 = v86;
  sub_1D0B88838(&v77, a1 + 112944, &v82);
  sub_1D0B894B0(a1 + 416, &v82);
  sub_1D0B894B0(a1 + 744, a1 + 416);
  *(a1 + 1096) = 1;
  *(a1 + 1100) = a5;
  *(a1 + 1072) = a6;
  v74 = 0x600000006;
  v73 = xmmword_1D0E7F320;
  v72 = &unk_1F4CDF278;
  v75 = v76;
  sub_1D0B89390(&qword_1EE055088, a1 + 416, &v72);
  v79 = 0x600000006;
  v78 = xmmword_1D0E7F320;
  v77 = &unk_1F4CDF278;
  v80 = v81;
  sub_1D0B89390(&v72, &unk_1EE0551D0, &v77);
  v84 = 0x600000006;
  v83 = xmmword_1D0E7F320;
  v82 = &unk_1F4CDF278;
  v85 = v86;
  sub_1D0B88838(a4, &v77, &v82);
  v74 = 0x600000006;
  v73 = xmmword_1D0E7F320;
  v72 = &unk_1F4CDF278;
  v75 = v76;
  v64 = 0x100000006;
  v63 = xmmword_1D0E84530;
  v62 = &unk_1F4CE1400;
  v65 = v66;
  v59 = 0x100000006;
  v57 = &unk_1F4CE1400;
  v58 = xmmword_1D0E84530;
  v60 = v61;
  v69 = 0x100000018;
  v68 = xmmword_1D0E84770;
  v67 = &unk_1F4CE2408;
  v70 = v71;
  v42 = sub_1D0BA5174(&v82, &v62, &v57, &v67, &v72);
  v79 = 0x600000006;
  v78 = xmmword_1D0E7F320;
  v77 = &unk_1F4CDF278;
  v80 = v81;
  sub_1D0B89390(&unk_1EE0551D0, &v72, &v77);
  if (v42 > 100000000.0)
  {
    return 0xFFFFFFFFLL;
  }

  v74 = 0x600000006;
  v73 = xmmword_1D0E7F320;
  v72 = &unk_1F4CDF278;
  v75 = v76;
  sub_1D0B89390(a1 + 416, &v77, &v72);
  sub_1D0B894B0(a1 + 112616, &v72);
  v69 = 0x100000006;
  v68 = xmmword_1D0E84530;
  v67 = &unk_1F4CE0BF8;
  v70 = v71;
  sub_1D0B89390(&qword_1EE055088, a1 + 328, &v67);
  v74 = 0x100000006;
  v73 = xmmword_1D0E84530;
  v72 = &unk_1F4CE0BF8;
  v75 = v76;
  sub_1D0BA5A78(a3, &v67, &v72);
  sub_1D0B894B0(a1 + 113272, &v72);
  v44 = a1 + 110728;
  for (j = 102; j >= 3; --j)
  {
    if (*(v44 + 768) == 1)
    {
      *(v44 + 1848) = *(v44 + 744);
      *(v44 + 1856) = *(v44 + 752);
      *(v44 + 1864) = *(v44 + 760);
      *(v44 + 1876) = *(v44 + 772);
      v74 = 0x600000006;
      v73 = xmmword_1D0E7F320;
      v72 = &unk_1F4CDF278;
      v75 = v76;
      sub_1D0B89390(v44 + 88, &v77, &v72);
      sub_1D0B894B0(v44 + 776, &v72);
      v64 = 0x600000006;
      v63 = xmmword_1D0E7F320;
      v62 = &unk_1F4CDF278;
      v65 = v66;
      sub_1D0B89390(v44 + 88, &unk_1EE0551D0, &v62);
      v46 = *(v44 + 788);
      v47 = *(v44 + 784);
      v59 = 0x600000006;
      v57 = &unk_1F4CDF278;
      *&v58 = __PAIR64__(v47, v46);
      DWORD2(v58) = v47 * v46;
      HIDWORD(v58) = v46;
      v60 = v61;
      sub_1D0BD2018(v44 + 776, &v57);
      v69 = 0x600000006;
      v68 = xmmword_1D0E7F320;
      v67 = &unk_1F4CDF278;
      v70 = v71;
      sub_1D0B89390(&v62, &v57, &v67);
      v74 = 0x600000006;
      v73 = xmmword_1D0E7F320;
      v72 = &unk_1F4CDF278;
      v75 = v76;
      sub_1D0BA5A78(v44 + 416, &v67, &v72);
      sub_1D0B894B0(v44 + 1520, &v72);
      LOBYTE(v62) = 0;
      v54 = 0x600000006;
      v52 = &unk_1F4CDF278;
      v53 = xmmword_1D0E7F320;
      v55 = &v56;
      sub_1D0B9F748(v44 + 1520, &v52, &v62);
      v52 = &unk_1F4CD5E28;
      if (!v62)
      {
        return 0xFFFFFFFFLL;
      }

      v69 = 0x100000006;
      v68 = xmmword_1D0E84530;
      v67 = &unk_1F4CE0BF8;
      v70 = v71;
      sub_1D0B89390(v44 + 776, a1 + 113272, &v67);
      v74 = 0x100000006;
      v73 = xmmword_1D0E84530;
      v72 = &unk_1F4CE0BF8;
      v75 = v76;
      sub_1D0B88838(v44, &v67, &v72);
      sub_1D0B894B0(v44 + 1104, &v72);
      *(v44 + 1872) = 1;
    }

    v44 -= 1104;
  }

  *(a1 + 2176) = a6;
  *(a1 + 2184) = v50;
  *(a1 + 2192) = a7;
  *(a1 + 2204) = a5;
  v74 = 0x600000006;
  v73 = xmmword_1D0E7F320;
  v72 = &unk_1F4CDF278;
  v75 = v76;
  sub_1D0B89390(a1 + 416, &v77, &v72);
  sub_1D0B894B0(a1 + 1104, &v72);
  v64 = 0x600000006;
  v63 = xmmword_1D0E7F320;
  v62 = &unk_1F4CDF278;
  v65 = v66;
  sub_1D0B89390(a1 + 416, &unk_1EE0551D0, &v62);
  v48 = *(a1 + 1116);
  v49 = *(a1 + 1112);
  v59 = 0x600000006;
  v57 = &unk_1F4CDF278;
  *&v58 = __PAIR64__(v49, v48);
  DWORD2(v58) = v49 * v48;
  HIDWORD(v58) = v48;
  v60 = v61;
  sub_1D0BD2018(a1 + 1104, &v57);
  v69 = 0x600000006;
  v68 = xmmword_1D0E7F320;
  v67 = &unk_1F4CDF278;
  v70 = v71;
  sub_1D0B89390(&v62, &v57, &v67);
  v74 = 0x600000006;
  v73 = xmmword_1D0E7F320;
  v72 = &unk_1F4CDF278;
  v75 = v76;
  sub_1D0BA5A78(a1 + 744, &v67, &v72);
  sub_1D0B894B0(a1 + 1848, &v72);
  v69 = 0x100000006;
  v68 = xmmword_1D0E84530;
  v67 = &unk_1F4CE0BF8;
  v70 = v71;
  sub_1D0B89390(a1 + 1104, a1 + 113272, &v67);
  v74 = 0x100000006;
  v73 = xmmword_1D0E84530;
  v72 = &unk_1F4CE0BF8;
  v75 = v76;
  sub_1D0B88838(a1 + 328, &v67, &v72);
  sub_1D0B894B0(a1 + 1432, &v72);
  result = 0;
  *(a1 + 2200) = 1;
  return result;
}

uint64_t sub_1D0E59168()
{
  qword_1EE0550A0 = 0x600000006;
  qword_1EE055088 = &unk_1F4CDF278;
  qword_1EE0550A8 = &unk_1EE0550B0;
  unk_1EE055090 = xmmword_1D0E7F320;
  result = sub_1D0BBBC00(&qword_1EE055088, 0.0);
  v1 = 0;
  v2 = dword_1EE05509C + 1;
  v3 = qword_1EE0550A8;
  v4 = 6;
  do
  {
    *(v3 + 8 * v1) = 0x3FF0000000000000;
    v1 += v2;
    --v4;
  }

  while (v4);
  return result;
}

uint64_t swan::FixedLagSmoother::ExtractOutput(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, int a7)
{
  v12 = *a5;
  v11 = a5[1];
  if (v11 != *a5)
  {
    v13 = v11 - 88;
    v14 = (v11 - 88);
    v15 = (v11 - 88);
    do
    {
      v16 = *v15;
      v15 -= 11;
      (*v16)(v14);
      v13 -= 88;
      v26 = v14 == v12;
      v14 = v15;
    }

    while (!v26);
  }

  a5[1] = v12;
  v18 = *a6;
  v17 = a6[1];
  if (v17 != *a6)
  {
    v19 = v17 - 328;
    v20 = (v17 - 328);
    do
    {
      (**v20)(v20);
      v19 -= 328;
      v26 = v20 == v18;
      v20 -= 41;
    }

    while (!v26);
  }

  a6[1] = v18;
  *(a4 + 8) = *a4;
  *(a2 + 8) = *a2;
  v21 = 102;
  v22 = 101;
  a3[1] = *a3;
  v76 = a7;
  v77 = a3;
  v23 = a1;
  do
  {
    while (1)
    {
      v24 = v23 + 1104 * v22;
      v25 = *(v24 + 1096);
      if (v25 == 1)
      {
        v26 = v21 - 2 < *(v24 + 1100) && a7 == 0;
        if (!v26)
        {
          break;
        }
      }

      if ((v25 & 1) == 0)
      {
        v21 = v22--;
        if (v22)
        {
          continue;
        }
      }

      return 0;
    }

    sub_1D0C4E0E8(a2, (v24 + 1072));
    v28 = a3[1];
    v27 = a3[2];
    if (v28 >= v27)
    {
      v30 = *a3;
      v31 = &v28[-*a3];
      v32 = (v31 + 1);
      if ((v31 + 1) < 0)
      {
        sub_1D0C5663C();
      }

      v33 = v27 - v30;
      if (2 * v33 > v32)
      {
        v32 = 2 * v33;
      }

      if (v33 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v34 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v34 = v32;
      }

      if (v34)
      {
        operator new();
      }

      v35 = &v28[-*a3];
      a3 = v77;
      v36 = &v31[v30 - v28];
      *v31 = *(v24 + 1080);
      v29 = v31 + 1;
      memcpy(v36, v30, v35);
      *v77 = v36;
      v77[1] = v31 + 1;
      v77[2] = 0;
      if (v30)
      {
        operator delete(v30);
      }
    }

    else
    {
      *v28 = *(v24 + 1080);
      v29 = v28 + 1;
    }

    a3[1] = v29;
    sub_1D0C4E0E8(a4, (v24 + 1088));
    v38 = a5[1];
    v37 = a5[2];
    if (v38 >= v37)
    {
      v40 = 0x2E8BA2E8BA2E8BA3 * ((v38 - *a5) >> 3);
      v41 = v40 + 1;
      if ((v40 + 1) > 0x2E8BA2E8BA2E8BALL)
      {
        sub_1D0C5663C();
      }

      v42 = 0x2E8BA2E8BA2E8BA3 * ((v37 - *a5) >> 3);
      if (2 * v42 > v41)
      {
        v41 = 2 * v42;
      }

      if (v42 >= 0x1745D1745D1745DLL)
      {
        v43 = 0x2E8BA2E8BA2E8BALL;
      }

      else
      {
        v43 = v41;
      }

      v85 = a5;
      if (v43)
      {
        sub_1D0E59A58(a5, v43);
      }

      v81 = 0;
      v82 = 88 * v40;
      v83 = 88 * v40;
      v84 = 0;
      sub_1D0E59910(88 * v40, v24 + 328);
      v45 = *a5;
      v44 = a5[1];
      v46 = v82 - (v44 - *a5);
      v39 = v83 + 88;
      v83 += 88;
      v74 = v46;
      if (v44 != v45)
      {
        v47 = 0;
        v48 = v82 - 8 * ((v44 - v45) >> 3) - 88;
        v49 = v45;
        v50 = v46;
        do
        {
          v51 = sub_1D0E59910(v50, v49);
          v49 += 88;
          v50 += 88;
          v47 -= 88;
          v48 += 88;
        }

        while (v49 != v44);
        v52 = v45;
        v53 = v45;
        a3 = v77;
        do
        {
          v54 = *v53;
          v53 += 11;
          (*v54)(v45, v51);
          v52 += 11;
          v45 = v53;
        }

        while (v53 != v44);
        v45 = *a5;
        v39 = v83;
      }

      *a5 = v74;
      a5[1] = v39;
      v55 = a5[2];
      a5[2] = v84;
      v83 = v45;
      v84 = v55;
      v81 = v45;
      v82 = v45;
      sub_1D0E59AB4(&v81);
      a7 = v76;
    }

    else
    {
      sub_1D0E59910(a5[1], v24 + 328);
      v39 = v38 + 88;
      a5[1] = v38 + 88;
    }

    a5[1] = v39;
    v57 = a6[1];
    v56 = a6[2];
    if (v57 >= v56)
    {
      v59 = 0x8F9C18F9C18F9C19 * ((v57 - *a6) >> 3);
      v60 = v59 + 1;
      if (v59 + 1 > 0xC7CE0C7CE0C7CELL)
      {
        sub_1D0C5663C();
      }

      v61 = 0x8F9C18F9C18F9C19 * ((v56 - *a6) >> 3);
      if (2 * v61 > v60)
      {
        v60 = 2 * v61;
      }

      if (v61 >= 0x63E7063E7063E7)
      {
        v62 = 0xC7CE0C7CE0C7CELL;
      }

      else
      {
        v62 = v60;
      }

      v85 = a6;
      if (v62)
      {
        sub_1D0E59B20(a6, v62);
      }

      v81 = 0;
      v82 = 328 * v59;
      v83 = 328 * v59;
      v84 = 0;
      sub_1D0B9F484(328 * v59, v24 + 744);
      v64 = *a6;
      v63 = a6[1];
      v65 = v82 - (v63 - *a6);
      v58 = v83 + 328;
      v83 += 328;
      if (v63 != v64)
      {
        v66 = 0;
        v67 = v82 - 8 * ((v63 - v64) >> 3) - 328;
        v68 = v64;
        v75 = v65;
        v69 = v65;
        do
        {
          v70 = sub_1D0B9F484(v69, v68);
          v68 += 328;
          v69 += 328;
          v66 -= 328;
          v67 += 328;
        }

        while (v68 != v63);
        v71 = v64;
        a3 = v77;
        do
        {
          (**v64)(v64, v70);
          v64 += 41;
          v71 += 41;
        }

        while (v64 != v63);
        v64 = *a6;
        v58 = v83;
        v65 = v75;
      }

      *a6 = v65;
      a6[1] = v58;
      v72 = a6[2];
      a6[2] = v84;
      v83 = v64;
      v84 = v72;
      v81 = v64;
      v82 = v64;
      sub_1D0E59B7C(&v81);
      a7 = v76;
    }

    else
    {
      sub_1D0B9F484(a6[1], v24 + 744);
      v58 = v57 + 328;
      a6[1] = v57 + 328;
    }

    a6[1] = v58;
    *(v24 + 1096) = 0;
    v21 = v22--;
    v23 = a1;
  }

  while (v22);
  return 0;
}

void sub_1D0E59844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1D0E59B7C(va);
  _Unwind_Resume(a1);
}

__n128 sub_1D0E59910(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x100000006;
  *(a1 + 24) = 0x100000006;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE0BF8;
  if (a1 == a2)
  {
    v17 = "this != &(A)";
    v18 = 603;
    goto LABEL_16;
  }

  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 6)
  {
    v17 = "this->max_num_rows_ >= A.num_rows_";
    v18 = 616;
    goto LABEL_16;
  }

  if (v3 >= 2)
  {
    v17 = "this->max_num_cols_ >= A.num_cols_";
    v18 = 617;
LABEL_16:
    __assert_rtn("CNMatrix", "cnmatrix.h", v18, v17);
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v7 - 1) >> 1;
    v13 = v11;
    v14 = (a1 + 40);
    do
    {
      v15 = *v13++;
      *v14++ = v15;
      --v12;
    }

    while (v12);
    v16 = v10;
    result = *(v11 + v16 * 8);
    *&v6[v16] = result;
  }

  else if (v5 >= 1)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6++ = v9;
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1D0E59A58(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

uint64_t sub_1D0E59AB4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 88);
    *(a1 + 16) = i - 88;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1D0E59B20(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xC7CE0C7CE0C7CFLL)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

uint64_t sub_1D0E59B7C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 328;
    (**(i - 328))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t swan::RouteSmoother::ConfigureFromFile(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  if (sub_1D0E44934(a1, a2, 0))
  {
    return -(*(a1 + 296) ^ 1);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t swan::RouteSmoother::Configure(uint64_t a1, uint64_t a2)
{
  std::string::operator=((a1 + 8), (a2 + 8));
  *(a1 + 32) = *(a2 + 32);
  std::string::operator=((a1 + 40), (a2 + 40));
  v4 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v4;
  v6 = *(a2 + 112);
  v5 = *(a2 + 128);
  v7 = *(a2 + 96);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v6;
  *(a1 + 128) = v5;
  *(a1 + 96) = v7;
  v39 = a2;
  v40 = a1;
  if (a1 == a2)
  {
    goto LABEL_63;
  }

  i = a1;
  v9 = *(a2 + 152);
  v10 = (a2 + 160);
  if (*(a1 + 168))
  {
    v12 = (a1 + 160);
    v11 = *(v40 + 160);
    v13 = *(v40 + 152);
    *(v40 + 152) = v40 + 160;
    *(v11 + 16) = 0;
    *(v40 + 160) = 0;
    *(v40 + 168) = 0;
    if (*(v13 + 8))
    {
      v14 = *(v13 + 8);
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      v15 = sub_1D0E5BFA0(v14);
      if (v9 == v10)
      {
        v17 = v14;
      }

      else
      {
        v16 = v9;
        do
        {
          v17 = v15;
          v18 = *(v16 + 28);
          *(v14 + 28) = v18;
          *(v14 + 32) = *(v16 + 8);
          v19 = *v12;
          v20 = v12;
          v21 = v12;
          if (*v12)
          {
            do
            {
              while (1)
              {
                v20 = v19;
                if (v18 >= *(v19 + 28))
                {
                  break;
                }

                v19 = *v19;
                v21 = v20;
                if (!*v20)
                {
                  goto LABEL_15;
                }
              }

              v19 = v19[1];
            }

            while (v19);
            v21 = v20 + 1;
          }

LABEL_15:
          sub_1D0D4B7BC((v40 + 152), v20, v21, v14);
          if (v15)
          {
            v15 = sub_1D0E5BFA0(v15);
          }

          else
          {
            v15 = 0;
          }

          v22 = v16[1];
          if (v22)
          {
            do
            {
              v9 = v22;
              v22 = *v22;
            }

            while (v22);
          }

          else
          {
            do
            {
              v9 = v16[2];
              v23 = *v9 == v16;
              v16 = v9;
            }

            while (!v23);
          }

          if (!v17)
          {
            break;
          }

          v14 = v17;
          v16 = v9;
        }

        while (v9 != v10);
      }

      sub_1D0B99218(v17);
      if (v15)
      {
        v24 = v15[2];
        for (i = v40; v24; v24 = v24[2])
        {
          v15 = v24;
        }

        sub_1D0B99218(v15);
        goto LABEL_33;
      }
    }

    else
    {
      sub_1D0B99218(0);
    }

    i = v40;
  }

LABEL_33:
  if (v9 != v10)
  {
    operator new();
  }

  sub_1D0E5BFF4((i + 176), *(v39 + 176), (v39 + 184));
  v25 = *(v39 + 200);
  v41 = (v39 + 208);
  if (*(i + 216))
  {
    v27 = (i + 208);
    v26 = *(i + 208);
    v28 = *(i + 200);
    *(i + 200) = i + 208;
    *(v26 + 16) = 0;
    *(i + 208) = 0;
    *(i + 216) = 0;
    if (v28[1])
    {
      v29 = v28[1];
    }

    else
    {
      v29 = v28;
    }

    v42 = i + 200;
    v43 = v29;
    v44 = v29;
    if (!v29 || (v43 = sub_1D0E5BFA0(v29), v25 == v41))
    {
      v34 = v25;
    }

    else
    {
      do
      {
        *(v29 + 32) = *(v25 + 32);
        if (v29 != v25)
        {
          sub_1D0E5BFF4(v29 + 5, v25[5], v25 + 6);
          v29 = v44;
        }

        v30 = *v27;
        v31 = (i + 208);
        v32 = (i + 208);
        if (*v27)
        {
          do
          {
            while (1)
            {
              v31 = v30;
              if (*(v29 + 32) >= *(v30 + 32))
              {
                break;
              }

              v30 = *v30;
              v32 = v31;
              if (!*v31)
              {
                goto LABEL_49;
              }
            }

            v30 = v30[1];
          }

          while (v30);
          v32 = v31 + 1;
        }

LABEL_49:
        sub_1D0D4B7BC((i + 200), v31, v32, v29);
        v29 = v43;
        v44 = v43;
        if (v43)
        {
          v43 = sub_1D0E5BFA0(v43);
        }

        v33 = v25[1];
        if (v33)
        {
          do
          {
            v34 = v33;
            v33 = *v33;
          }

          while (v33);
        }

        else
        {
          do
          {
            v34 = v25[2];
            v23 = *v34 == v25;
            v25 = v34;
          }

          while (!v23);
        }

        if (!v29)
        {
          break;
        }

        v25 = v34;
      }

      while (v34 != v41);
    }

    sub_1D0E5C250(&v42);
    v25 = v34;
  }

  if (v25 != v41)
  {
    operator new();
  }

LABEL_63:
  *(v40 + 224) = *(v39 + 224);
  v35 = *(v39 + 240);
  v36 = *(v39 + 256);
  v37 = *(v39 + 272);
  *(v40 + 281) = *(v39 + 281);
  *(v40 + 256) = v36;
  *(v40 + 272) = v37;
  *(v40 + 240) = v35;
  return 0;
}

void sub_1D0E5A26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1D0E5C250(va);
  _Unwind_Resume(a1);
}

uint64_t swan::RouteSmoother::RunPlayback(uint64_t a1, uint64_t a2)
{
  v34 = 0;
  v35 = 0;
  v36 = 0;
  if (*(a1 + 63) < 0)
  {
    sub_1D0BC39B4(__dst, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    *__dst = *(a1 + 40);
    v33 = *(a1 + 56);
  }

  v31 = 0;
  *__p = 0u;
  memset(v30, 0, sizeof(v30));
  if (swan::BatchLogParser::parseRavenFixIntoRouteSmootherEpoch(__p) && swan::BatchLogParser::parseCLRSFixIntoRouteSmootherEpoch(__p))
  {
LABEL_6:
    v4 = 0xFFFFFFFFLL;
    goto LABEL_27;
  }

  v5 = sub_1D0BCD7C4(MEMORY[0x1E69E5310], "Found ", 6);
  v6 = MEMORY[0x1D387E9E0](v5, 0x6DB6DB6DB6DB6DB7 * ((v35 - v34) >> 4));
  v7 = sub_1D0BCD7C4(v6, " epochs to smooth", 17);
  std::ios_base::getloc((v7 + *(*v7 - 24)));
  v8 = std::locale::use_facet(&v37, MEMORY[0x1E69E5318]);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v37);
  std::ostream::put();
  std::ostream::flush();
  v28.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v10 = v34;
  v9 = v35;
  if (v34 != v35)
  {
    do
    {
      v11 = *(a1 + 208);
      if (!v11)
      {
LABEL_15:
        operator new();
      }

      v12 = *(a1 + 224);
      while (1)
      {
        while (1)
        {
          v13 = v11;
          v14 = *(v11 + 32);
          if (v14 <= v12)
          {
            break;
          }

          v11 = *v13;
          if (!*v13)
          {
            goto LABEL_15;
          }
        }

        if (v14 >= v12)
        {
          break;
        }

        v11 = v13[1];
        if (!v11)
        {
          goto LABEL_15;
        }
      }

      v15 = v13[6];
      if (!v15)
      {
LABEL_23:
        operator new();
      }

      v16 = v10[104];
      while (1)
      {
        while (1)
        {
          v17 = v15;
          v18 = *(v15 + 32);
          if (v18 <= v16)
          {
            break;
          }

          v15 = *v17;
          if (!*v17)
          {
            goto LABEL_23;
          }
        }

        if (v18 >= v16)
        {
          break;
        }

        v15 = *(v17 + 1);
        if (!v15)
        {
          goto LABEL_23;
        }
      }

      if (swan::RouteSmoother::Update(a1, v10, v17 + 5, (a1 + 232), a2))
      {
        goto LABEL_6;
      }

      v10 += 112;
    }

    while (v10 != v9);
  }

  v4 = swan::RouteSmoother::Finish(a1, a2);
  rep = std::chrono::steady_clock::now().__d_.__rep_;
  v20 = sub_1D0BCD7C4(MEMORY[0x1E69E5310], "Elapsed time in milliseconds for entire smoother Run(): ", 56);
  v21 = MEMORY[0x1D387EA00](v20, (rep - v28.__d_.__rep_) / 1000000);
  v22 = sub_1D0BCD7C4(v21, " ms", 3);
  std::ios_base::getloc((v22 + *(*v22 - 24)));
  v23 = std::locale::use_facet(&v37, MEMORY[0x1E69E5318]);
  (v23->__vftable[2].~facet_0)(v23, 10);
  std::locale::~locale(&v37);
  std::ostream::put();
  std::ostream::flush();
  v24 = sub_1D0BCD7C4(MEMORY[0x1E69E5310], "retVal: ", 8);
  v25 = MEMORY[0x1D387E9C0](v24, v4);
  std::ios_base::getloc((v25 + *(*v25 - 24)));
  v26 = std::locale::use_facet(&v37, MEMORY[0x1E69E5318]);
  (v26->__vftable[2].~facet_0)(v26, 10);
  std::locale::~locale(&v37);
  std::ostream::put();
  std::ostream::flush();
LABEL_27:
  sub_1D0E48E44(v30 + 1);
  if (SBYTE7(v30[0]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(__dst[0]);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  return v4;
}

void sub_1D0E5A738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t swan::RouteSmoother::Update(uint64_t a1, uint64_t a2, double *a3, double *a4, uint64_t a5)
{
  v62 = 0.0;
  v59 = 0x100000006;
  v57 = &unk_1F4CE0BF8;
  v60 = v61;
  v58 = xmmword_1D0E84530;
  memset(v61, 0, sizeof(v61));
  v54 = 0x600000006;
  v52 = &unk_1F4CDF278;
  v55 = v56;
  v53 = xmmword_1D0E7F320;
  memset(v56, 0, sizeof(v56));
  if (swan::RouteSmoother::ConvertRouteSmootherEpochToSmootherInput(a1, a2, &v62, &v57, &v52))
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v62;
  v13 = *(a2 + 104);
  v11 = a2 + 104;
  v12 = v13;
  v14 = *a3;
  if (*(a1 + 112912))
  {
    v15 = *a4;
    *&v34[0] = v11;
    v16 = sub_1D0E5C474((a1 + 152), v12, v34);
    if (swan::FixedLagSmoother::Update(a1 + 304, v12, &v57, &v52, *(v16 + 8), v10, v14, v15))
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    *&v34[0] = v11;
    v19 = sub_1D0E5C474((a1 + 152), v12, v34);
    if (swan::FixedLagSmoother::Initialize(a1 + 304, v12, &v57, &v52, *(v19 + 8), v10, v14))
    {
      return 0xFFFFFFFFLL;
    }
  }

  v49 = 0;
  v50 = 0;
  v51 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  __p = 0;
  v44 = 0;
  v45 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v20 = swan::FixedLagSmoother::ExtractOutput(a1 + 304, &v49, &v46, &__p, &v40, &v37, 0);
  v21 = v50 - v49;
  if (v47 - v46 == (v50 - v49) >> 3 && v44 - __p == v21 && (v22 = v21 >> 3, 0x2E8BA2E8BA2E8BA3 * ((v41 - v40) >> 3) == v21 >> 3) && 0x8F9C18F9C18F9C19 * ((v38 - v37) >> 3) == v22)
  {
    if (v50 == v49)
    {
      v17 = 0;
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      if (v22 <= 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = v21 >> 3;
      }

      v27 = 1;
      __asm { FMOV            V0.2D, #-1.0 }

      v33 = _Q0;
      while (1)
      {
        v34[0] = xmmword_1D0EC1620;
        v34[1] = xmmword_1D0E87BD0;
        v34[2] = xmmword_1D0E87BD0;
        v34[3] = v33;
        v34[4] = v33;
        v34[5] = v33;
        v35 = 0xBFF0000000000000;
        v36 = 0;
        if (swan::RouteSmoother::ConvertSmootherOutputToRouteSmootherEpoch(*(v49 + v25), *(__p + v25), v20, *(v46 + v25), v40 + v23, v37 + v24, v34))
        {
          break;
        }

        sub_1D0E4DBC8(a5, v34);
        v17 = 0;
        v27 = ++v25 < v22;
        v24 += 328;
        v23 += 88;
        if (v26 == v25)
        {
          goto LABEL_20;
        }
      }

      v17 = (v27 << 31 >> 31);
    }
  }

  else
  {
    v17 = 0xFFFFFFFFLL;
  }

LABEL_20:
  *&v34[0] = &v37;
  sub_1D0E5C2F4(v34);
  *&v34[0] = &v40;
  sub_1D0E5C3B4(v34);
  if (__p)
  {
    v44 = __p;
    operator delete(__p);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  return v17;
}

void sub_1D0E5AB70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42)
{
  a15 = &a29;
  sub_1D0E5C2F4(&a15);
  a15 = &a32;
  sub_1D0E5C3B4(&a15);
  if (__p)
  {
    a36 = __p;
    operator delete(__p);
  }

  if (a38)
  {
    a39 = a38;
    operator delete(a38);
  }

  if (a41)
  {
    a42 = a41;
    operator delete(a41);
  }

  _Unwind_Resume(a1);
}

uint64_t swan::RouteSmoother::Finish(uint64_t a1, uint64_t a2)
{
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v3 = swan::FixedLagSmoother::ExtractOutput(a1 + 304, &v34, &v31, &v28, &v25, &v22, 1);
  v4 = v35 - v34;
  if (v32 - v31 == v35 - v34 && v29 - v28 == v4 && (v5 = v4 >> 3, 0x2E8BA2E8BA2E8BA3 * ((v26 - v25) >> 3) == v4 >> 3) && 0x8F9C18F9C18F9C19 * ((v23 - v22) >> 3) == v5)
  {
    if (v35 == v34)
    {
      v16 = 0;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      if (v5 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v4 >> 3;
      }

      v10 = 1;
      __asm { FMOV            V0.2D, #-1.0 }

      v18 = _Q0;
      while (1)
      {
        v19[0] = xmmword_1D0EC1620;
        v19[1] = xmmword_1D0E87BD0;
        v19[2] = xmmword_1D0E87BD0;
        v19[3] = v18;
        v19[4] = v18;
        v19[5] = v18;
        v20 = 0xBFF0000000000000;
        v21 = 0;
        if (swan::RouteSmoother::ConvertSmootherOutputToRouteSmootherEpoch(v34[v8], v28[v8], v3, v31[v8], v25 + v6, v22 + v7, v19))
        {
          break;
        }

        sub_1D0E4DBC8(a2, v19);
        v16 = 0;
        v10 = ++v8 < v5;
        v7 += 328;
        v6 += 88;
        if (v9 == v8)
        {
          goto LABEL_14;
        }
      }

      v16 = (v10 << 31 >> 31);
    }
  }

  else
  {
    v16 = 0xFFFFFFFFLL;
  }

LABEL_14:
  *&v19[0] = &v22;
  sub_1D0E5C2F4(v19);
  *&v19[0] = &v25;
  sub_1D0E5C3B4(v19);
  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  return v16;
}

void sub_1D0E5AE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  a15 = &a30;
  sub_1D0E5C2F4(&a15);
  a15 = (v30 - 176);
  sub_1D0E5C3B4(&a15);
  v32 = *(v30 - 152);
  if (v32)
  {
    *(v30 - 144) = v32;
    operator delete(v32);
  }

  v33 = *(v30 - 128);
  if (v33)
  {
    *(v30 - 120) = v33;
    operator delete(v33);
  }

  v34 = *(v30 - 104);
  if (v34)
  {
    *(v30 - 96) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

uint64_t swan::RouteSmoother::ConvertRouteSmootherEpochToSmootherInput(double *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  *a3 = *a2;
  v126 = vmulq_f64(*(a2 + 8), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v127 = *(a2 + 32);
  if (cnnavigation::LLAToECEF(v126.f64, 1, v128, 0, &v80))
  {
    return 0xFFFFFFFFLL;
  }

  *(a4 + 8) = xmmword_1D0E84530;
  v9 = *(a4 + 32);
  *v9 = v128[0];
  v9[1] = v128[1];
  v9[2] = v128[2];
  v10 = *(a2 + 64);
  v11 = *(a2 + 48);
  v12 = __sincos_stret(v11 * 0.0174532925);
  v13 = *(a2 + 56);
  v14 = v10 * v12.__sinval;
  if (v11 >= 0.0)
  {
    v15 = v10 * v12.__cosval;
  }

  else
  {
    v15 = 0.0;
  }

  if (v11 < 0.0)
  {
    v14 = 0.0;
  }

  *&v122 = v14;
  *(&v122 + 1) = v15;
  v17 = *(a2 + 72);
  v16 = *(a2 + 80);
  v123 = v16;
  v18 = a1[31];
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || fabs(v16) > v18)
  {
    v19 = 1.0;
    if (v16 <= 0.0)
    {
      v19 = -1.0;
      if (v16 >= 0.0)
      {
        v19 = 0.0;
      }
    }

    v123 = v18 * v19;
  }

  v116 = 0;
  v119 = 0x300000003;
  v118 = xmmword_1D0E76C10;
  v117 = &unk_1F4CD5DD0;
  v120 = &v121;
  v115 = &unk_1F4CD5D90;
  if (cnnavigation::ENUToECEF(&v122, 1, 0, v128, 1, &v124, &v115))
  {
    return 0xFFFFFFFFLL;
  }

  v21 = *(a4 + 32);
  *(v21 + 24) = v124;
  *(v21 + 40) = v125;
  v107 = 0x300000003;
  v105 = &unk_1F4CD5DD0;
  v108 = &v109;
  v106 = xmmword_1D0E76C10;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0;
  v109 = *(a2 + 24) * *(a2 + 24) * 0.5;
  *(&v111 + 1) = v109;
  v114 = *(a2 + 40) * *(a2 + 40);
  v102 = 0x300000003;
  v101 = xmmword_1D0E76C10;
  v100 = &unk_1F4CD5DD0;
  v103 = &v104;
  sub_1D0BFE654(&v115, &v105, &v100);
  if ((atomic_load_explicit(&qword_1EE055318, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE055318))
  {
    v82 = 0x300000001;
    v80 = &unk_1F4CDF0C8;
    v83 = v84;
    v81 = xmmword_1D0E7F310;
    *&v84[0] = 0x100000000;
    LODWORD(v84[1]) = 2;
    sub_1D0D2CF48(&v80, &unk_1EE055348);
    __cxa_atexit(sub_1D0D26840, &unk_1EE055348, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE055318);
  }

  v82 = 0x600000006;
  v80 = &unk_1F4CDF278;
  v83 = v84;
  v81 = xmmword_1D0E7F320;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  memset(v84, 0, sizeof(v84));
  memset(v85, 0, sizeof(v85));
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  sub_1D0B894B0(a5, &v80);
  sub_1D0BADC74(&v80, a5, &unk_1EE055348, &unk_1EE055348);
  sub_1D0D2CFF0(&v80, &v100);
  v22 = v17 * v17;
  v23 = *(a2 + 88);
  v24 = sqrt(v17 * v17);
  v82 = 0x300000003;
  v80 = &unk_1F4CD5DD0;
  v83 = v84;
  v81 = xmmword_1D0E76C10;
  v51 = v23 * v23;
  memset(v84, 0, sizeof(v84));
  memset(v85, 0, sizeof(v85));
  *&v86 = 0;
  v25 = sqrt(v13 * 0.0174532925 * (v13 * 0.0174532925));
  sub_1D0B894B0(&v105, &v80);
  v26 = a1[36];
  if (v10 >= v24 * a1[35])
  {
    v27 = fabs(v13);
    v28 = fabs(v17);
    if (v25 < v26 && v13 >= 0.0 && v17 >= 0.0 && (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v17 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v82 = 0x300000003;
      v81 = xmmword_1D0E76C10;
      v80 = &unk_1F4CD5DD0;
      v83 = v84;
      v84[0] = v17 * v17;
      v85[0] = v13 * 0.0174532925 * (v13 * 0.0174532925);
      memset(&v84[1], 0, 24);
      memset(&v85[1], 0, 24);
      *&v86 = v51;
      v72 = 0x300000003;
      v70 = &unk_1F4CD5DD0;
      v73 = &v74;
      v71 = xmmword_1D0E76C10;
      v75 = 0;
      v77 = 0u;
      v78 = 0u;
      v74 = v12;
      v76 = v10 * v12.__cosval;
      *&v77 = -(v10 * v12.__sinval);
      v79 = 0x3FF0000000000000;
      v62 = 0x300000003;
      v60 = &unk_1F4CD5DD0;
      v61 = xmmword_1D0E76C10;
      v63 = &v64;
      sub_1D0B89390(&v70, &v80, &v60);
      v31 = DWORD1(v71);
      v32 = v71;
      v57 = 0x300000003;
      v52 = &unk_1F4CD5DD0;
      v58 = v59;
      v53 = DWORD1(v71);
      v54 = v71;
      v55 = v71 * DWORD1(v71);
      v56 = DWORD1(v71);
      if (DWORD1(v71))
      {
        v33 = 0;
        v34 = 0;
        v35 = HIDWORD(v71);
        v36 = v73;
        do
        {
          v37 = v33;
          v38 = v34;
          for (i = v32; i; --i)
          {
            v59[v38] = *(&v36->__sinval + v37);
            v38 += v31;
            ++v37;
          }

          ++v34;
          v33 += v35;
        }

        while (v34 != v31);
      }

      v67 = 0x300000003;
      v66 = xmmword_1D0E76C10;
      v65 = &unk_1F4CD5DD0;
      v68 = &v69;
      sub_1D0B89390(&v60, &v52, &v65);
      sub_1D0B894B0(&v105, &v65);
      goto LABEL_49;
    }
  }

  else
  {
    v27 = fabs(v13);
    v28 = fabs(v17);
  }

  if (v25 >= v26 || v13 < 0.0 || v17 < 0.0 || v27 == INFINITY || v28 == INFINITY)
  {
    v42 = *&v17 > -1 && ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v17 - 1) < 0xFFFFFFFFFFFFFLL || (*&v17 & 0x7FFFFFFFFFFFFFFFLL) == 0;
    v29 = v108;
    if (v42)
    {
      v43 = (v10 + v24 * 3.0) / 3.0;
    }

    else
    {
      v43 = a1[34];
    }

    v44 = v43 * v43;
    *v108 = v44;
    v30 = SHIDWORD(v106);
    v29[SHIDWORD(v106) + 1] = v44;
  }

  else
  {
    v29 = v108;
    *v108 = v22;
    v30 = SHIDWORD(v106);
    v29[SHIDWORD(v106) + 1] = v22;
  }

  v29[2 * v30 + 2] = v51;
LABEL_49:
  if ((atomic_load_explicit(&qword_1EE055328, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE055328))
  {
    *&qword_1EE055320 = a1[30] * a1[30];
    __cxa_guard_release(&qword_1EE055328);
  }

  v45 = v108;
  *v108 = *&qword_1EE055320 * *v108;
  v46 = SHIDWORD(v106);
  v47 = &v45[SHIDWORD(v106)];
  v47[1] = *&qword_1EE055320 * v47[1];
  v45[2 * v46 + 2] = *&qword_1EE055320 * v45[2 * v46 + 2];
  v48 = a1[32];
  if (v10 > v48 || hypot(v10, *(a2 + 80)) > v48)
  {
    v49 = a1[33] * a1[33];
    v50 = *v45;
    if (*v45 <= v49)
    {
      v50 = a1[33] * a1[33];
    }

    *v45 = v50;
    if (v47[1] > v49)
    {
      v49 = v47[1];
    }

    v47[1] = v49;
  }

  sub_1D0BFE654(&v115, &v105, &v100);
  if ((atomic_load_explicit(&qword_1EE055330, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1EE055330))
    {
      v82 = 0x300000001;
      v80 = &unk_1F4CDF0C8;
      v83 = v84;
      v81 = xmmword_1D0E7F310;
      *&v84[0] = 0x400000003;
      LODWORD(v84[1]) = 5;
      sub_1D0D2CF48(&v80, &unk_1EE055380);
      __cxa_atexit(sub_1D0D26840, &unk_1EE055380, &dword_1D0B71000);
      __cxa_guard_release(&qword_1EE055330);
    }
  }

  sub_1D0BADC74(&v80, a5, &unk_1EE055380, &unk_1EE055380);
  sub_1D0D2CFF0(&v80, &v100);
  return 0;
}

uint64_t swan::RouteSmoother::ConvertSmootherOutputToRouteSmootherEpoch(double a1, double a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a7 = a1;
  v11 = *(a5 + 32);
  v88 = *v11;
  v89 = *(v11 + 16);
  if (cnnavigation::ECEFToLLA(&v88, 1, &v86, 0, &v79))
  {
    return 0xFFFFFFFFLL;
  }

  *(a7 + 8) = vmulq_f64(v86, vdupq_n_s64(0x404CA5DC1A63C1F8uLL));
  *(a7 + 32) = v87;
  v80 = 0;
  v83 = 0x300000003;
  v82 = xmmword_1D0E76C10;
  v81 = &unk_1F4CD5DD0;
  v84 = &v85;
  v79 = &unk_1F4CD5D50;
  v74 = *(v11 + 24);
  v75 = *(v11 + 40);
  cnnavigation::ECEFToENU(&v74, 1, 0, &v88, 1, &__x, &v79, v75);
  if (v12)
  {
    return 0xFFFFFFFFLL;
  }

  *(a7 + 64) = hypot(__x, __y);
  *(a7 + 80) = v78;
  v71 = 0x300000003;
  v70 = xmmword_1D0E76C10;
  v69 = &unk_1F4CD5DD0;
  v72 = &v73;
  v66 = 0x300000003;
  v65 = xmmword_1D0E76C10;
  v64 = &unk_1F4CD5DD0;
  v67 = &v68;
  if (v80 == 1)
  {
    sub_1D0B894B0(&v69, &v81);
  }

  if ((atomic_load_explicit(&qword_1EE055338, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE055338))
  {
    v60 = 0x300000001;
    v58 = &unk_1F4CDF0C8;
    v61 = &v62;
    v59 = xmmword_1D0E7F310;
    v62 = 0x100000000;
    v63 = 2;
    sub_1D0D2CF48(&v58, &unk_1EE0553B8);
    __cxa_atexit(sub_1D0D26840, &unk_1EE0553B8, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE055338);
  }

  sub_1D0D2D730(a6, &unk_1EE0553B8, &unk_1EE0553B8, v50);
  v55 = 0x300000003;
  v54 = xmmword_1D0E76C10;
  v53 = &unk_1F4CD5DD0;
  v56 = &v57;
  sub_1D0B89390(&v69, v50, &v53);
  v13 = DWORD1(v70);
  v14 = v70;
  v47 = 0x300000003;
  v42 = &unk_1F4CD5DD0;
  v48 = v49;
  v43 = DWORD1(v70);
  v44 = v70;
  v45 = v70 * DWORD1(v70);
  v46 = DWORD1(v70);
  if (DWORD1(v70))
  {
    v15 = 0;
    v16 = 0;
    v17 = HIDWORD(v70);
    v18 = v72;
    do
    {
      v19 = v15;
      v20 = v16;
      for (i = v14; i; --i)
      {
        v49[v20] = v18[v19];
        v20 += v13;
        ++v19;
      }

      ++v16;
      v15 += v17;
    }

    while (v16 != v13);
  }

  v60 = 0x300000003;
  v59 = xmmword_1D0E76C10;
  v58 = &unk_1F4CD5DD0;
  v61 = &v62;
  sub_1D0B89390(&v53, &v42, &v58);
  sub_1D0B894B0(&v64, &v58);
  v22 = v67;
  v23 = *v67;
  if (*v67 < 0.0)
  {
    return 0xFFFFFFFFLL;
  }

  v25 = SHIDWORD(v65);
  v26 = v67[SHIDWORD(v65) + 1];
  result = 0xFFFFFFFFLL;
  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v26 >= 0.0 && (*&v67[SHIDWORD(v65) + 1] & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    *(a7 + 24) = sqrt(v23 + v26);
    v27 = v22[2 * v25 + 2];
    v28 = *&v27 <= -1 || ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF;
    v29 = v28 && (*&v27 - 1) >= 0xFFFFFFFFFFFFFLL;
    if (!v29 || (*&v27 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      *(a7 + 40) = sqrt(v27);
      if ((atomic_load_explicit(&qword_1EE055340, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE055340))
      {
        v60 = 0x300000001;
        v58 = &unk_1F4CDF0C8;
        v61 = &v62;
        v59 = xmmword_1D0E7F310;
        v62 = 0x400000003;
        v63 = 5;
        sub_1D0D2CF48(&v58, &unk_1EE0553F0);
        __cxa_atexit(sub_1D0D26840, &unk_1EE0553F0, &dword_1D0B71000);
        __cxa_guard_release(&qword_1EE055340);
      }

      sub_1D0D2D730(a6, &unk_1EE0553F0, &unk_1EE0553F0, v50);
      sub_1D0C1B688(&v69, v50, &v53);
      sub_1D0C1B708(&v69, &v42);
      sub_1D0C1B688(&v53, &v42, &v58);
      sub_1D0B894B0(&v64, &v58);
      if (*v67 < 0.0)
      {
        return 0xFFFFFFFFLL;
      }

      result = 0xFFFFFFFFLL;
      if ((*v67 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v67[SHIDWORD(v65) + 1] >= 0.0 && (*&v67[SHIDWORD(v65) + 1] & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        v31 = atan2(__x, __y);
        v32 = fmod(v31 * 57.2957795 + 360.0, 360.0);
        *(a7 + 48) = v32;
        v33 = *(a7 + 64);
        sub_1D0BFA9C4(3, 3, &v58);
        v34 = __sincos_stret(v32 * 0.0174532925);
        v35 = v61;
        *v61 = v34.__sinval;
        v36 = SHIDWORD(v59);
        v37 = &v35[SHIDWORD(v59)];
        *v37 = v33 * v34.__cosval;
        v35[1] = v34.__cosval;
        v37[1] = -(v33 * v34.__sinval);
        v35[2 * v36 + 2] = 1.0;
        sub_1D0D4C398(&v58, &v53);
        sub_1D0C1B688(&v53, &v64, &v42);
        sub_1D0C1B708(&v53, v41);
        sub_1D0C1B688(&v42, v41, v50);
        result = 0;
        v38 = v52;
        *(a7 + 72) = sqrt(*v52);
        v39 = v51;
        *(a7 + 56) = sqrt(v38[v51 + 1]) * 57.2957795;
        v40 = v38[2 * v39 + 2];
        *(a7 + 104) = a4;
        *(a7 + 88) = sqrt(v40);
        *(a7 + 96) = a2;
      }
    }
  }

  return result;
}

void *sub_1D0E5BFA0(uint64_t a1)
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

uint64_t *sub_1D0E5BFF4(uint64_t *result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v8 = result + 1;
    v7 = result[1];
    *result = (result + 1);
    *(v7 + 16) = 0;
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

    v19 = result;
    v20 = v9;
    v21 = v9;
    if (v9)
    {
      v10 = sub_1D0E5BFA0(v9);
      v20 = v10;
      if (a2 != a3)
      {
        v11 = a2;
        do
        {
          v12 = v10;
          v13 = *(v11 + 32);
          *(v9 + 32) = v13;
          *(v9 + 40) = v11[5];
          v14 = *v8;
          v15 = (v5 + 1);
          v16 = (v5 + 1);
          if (*v8)
          {
            do
            {
              while (1)
              {
                v15 = v14;
                if (v13 >= *(v14 + 32))
                {
                  break;
                }

                v14 = *v14;
                v16 = v15;
                if (!*v15)
                {
                  goto LABEL_14;
                }
              }

              v14 = *(v14 + 8);
            }

            while (v14);
            v16 = v15 + 1;
          }

LABEL_14:
          sub_1D0D4B7BC(v5, v15, v16, v9);
          if (v12)
          {
            v10 = sub_1D0E5BFA0(v12);
          }

          else
          {
            v10 = 0;
          }

          v17 = v11[1];
          if (v17)
          {
            do
            {
              a2 = v17;
              v17 = *v17;
            }

            while (v17);
          }

          else
          {
            do
            {
              a2 = v11[2];
              v18 = *a2 == v11;
              v11 = a2;
            }

            while (!v18);
          }

          if (!v12)
          {
            break;
          }

          v9 = v12;
          v11 = a2;
        }

        while (a2 != a3);
        v20 = v10;
        v21 = v12;
      }
    }

    result = sub_1D0E5C200(&v19);
  }

  if (a2 != a3)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1D0E5C200(uint64_t a1)
{
  sub_1D0B99218(*(a1 + 16));
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

    sub_1D0B99218(v2);
  }

  return a1;
}

uint64_t sub_1D0E5C250(uint64_t a1)
{
  sub_1D0E5C2A0(*(a1 + 16));
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

    sub_1D0E5C2A0(v2);
  }

  return a1;
}

void sub_1D0E5C2A0(void *a1)
{
  if (a1)
  {
    sub_1D0E5C2A0(*a1);
    sub_1D0E5C2A0(a1[1]);
    sub_1D0B99218(a1[6]);

    operator delete(a1);
  }
}

void sub_1D0E5C2F4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 41;
      v7 = v4 - 41;
      do
      {
        (**v7)(v7);
        v6 -= 41;
        v8 = v7 == v2;
        v7 -= 41;
      }

      while (!v8);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1D0E5C3B4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 11;
      v7 = v4 - 11;
      v8 = v4 - 11;
      do
      {
        v9 = *v8;
        v8 -= 11;
        (*v9)(v7);
        v6 -= 11;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t **sub_1D0E5C474(uint64_t **a1, unsigned __int8 a2, _BYTE **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 28);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t swan::ForwardBackwardFixedIntervalSmoother::Update(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, char a11, void *a12, void *a13, uint64_t a14, void *a15, void *a16)
{
  MEMORY[0x1EEE9AC00](a1);
  v131 = *MEMORY[0x1E69E9840];
  if (v16 >= 2)
  {
    v108 = 0x600000006;
    v106 = &unk_1F4CDF278;
    v109 = &v110;
    v107 = xmmword_1D0E7F320;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0;
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v110 = 0x3FF0000000000000;
    *&v114 = 0x3FF0000000000000;
    v118 = 0x3FF0000000000000;
    *&v122 = 0x3FF0000000000000;
    v126 = 0x3FF0000000000000;
    v130 = 0x3FF0000000000000;
    v83 = 0x600000006;
    v81 = &unk_1F4CDF278;
    v82 = xmmword_1D0E7F320;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v84 = &v85;
    v85 = 0x3FF0000000000000;
    v89 = 0x3FF0000000000000uLL;
    v93 = 0x3FF0000000000000;
    v97 = 0x3FF0000000000000uLL;
    v101 = 0x3FF0000000000000;
    v105 = 0x3FF0000000000000;
    v58 = 0x600000006;
    v56 = &unk_1F4CDF278;
    v59 = &v60;
    v57 = xmmword_1D0E7F320;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v60 = 0x3FF0000000000000;
    *&v64 = 0x3FF0000000000000;
    v68 = 0x3FF0000000000000;
    *&v72 = 0x3FF0000000000000;
    v76 = 0x3FF0000000000000;
    v80 = 0x3FF0000000000000;
    v53 = 0x600000006;
    v51[36] = &unk_1F4CDF278;
    v54 = v55;
    v52 = xmmword_1D0E7F320;
    memset(v55, 0, sizeof(v55));
    v49 = 0x600000006;
    v47 = &unk_1F4CDF278;
    v48 = xmmword_1D0E7F320;
    v50 = v51;
    v24 = 0x600000006;
    v22[6] = &unk_1F4CDF278;
    v25 = &v26;
    v23 = xmmword_1D0E7F320;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v26 = 0x3FF0000000000000;
    v30 = 0x3FF0000000000000uLL;
    v34 = 0x3FF0000000000000;
    v38 = 0x3FF0000000000000uLL;
    v42 = 0x3FF0000000000000;
    v46 = 0x3FF0000000000000;
    v20 = 0x100000006;
    v19 = xmmword_1D0E84530;
    v18[3] = &unk_1F4CE0BF8;
    v21 = v22;
    sub_1D0E5E758(v18, v16);
  }

  return 0xFFFFFFFFLL;
}

void sub_1D0E5E484(_Unwind_Exception *a1)
{
  STACK[0x768] = &STACK[0x8C8];
  sub_1D0E5C2F4(&STACK[0x768]);
  STACK[0x768] = &STACK[0x8E0];
  sub_1D0E5C3B4(&STACK[0x768]);
  STACK[0x768] = &STACK[0x8F8];
  sub_1D0E5C2F4(&STACK[0x768]);
  STACK[0x768] = &STACK[0x910];
  sub_1D0E5C3B4(&STACK[0x768]);
  _Unwind_Resume(a1);
}

void sub_1D0E5E584(_DWORD *a1)
{
  v16 = 0x600000006;
  v14[36] = &unk_1F4CDF278;
  v15 = xmmword_1D0E7F320;
  v17 = &v18;
  v12 = 0x600000006;
  v11 = xmmword_1D0E7F320;
  v10[3] = &unk_1F4CDF278;
  v13 = v14;
  v8 = 0x100000006;
  v7 = xmmword_1D0E84530;
  v5 = 0;
  v6 = &unk_1F4CE1400;
  v9 = v10;
  v3 = 0x10000045CLL;
  v1 = &unk_1F4CF0A00;
  v4 = 0;
  v2 = xmmword_1D0EC1AC0;
  sub_1D0E5EA84(&v1);
}

void sub_1D0E5E71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_1D0E5EB04(va);
  _Unwind_Resume(a1);
}

void sub_1D0E5E758(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    sub_1D0E59A58(a1, a2);
  }

  sub_1D0C5663C();
}

void sub_1D0E5E838(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 < 0xC7CE0C7CE0C7CFLL)
  {
    sub_1D0E59B20(a1, a2);
  }

  sub_1D0C5663C();
}

void sub_1D0E5E918(void *a1)
{
  sub_1D0E5EB04(a1);

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0E5EB04(void *a1)
{
  *a1 = &unk_1F4CF0A00;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

uint64_t swan::PositionVelocityDataEditor::TestNormalizedInnovations(double a1, uint64_t a2, uint64_t a3, uint64_t *a4, double **a5, void *a6, uint64_t *a7)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = 0;
    LODWORD(v8) = 0;
    v9 = *a4;
    v10 = *a5;
    v11 = *a7;
    do
    {
      v12 = 0;
      v13 = v10;
      do
      {
        v14 = v13 + 7;
        v15 = *v13;
        v13 += 14;
        v16.f64[0] = v15;
        v16.f64[1] = *v14;
        *&v19[v12] = vdivq_f64(vabsq_f64(*(v9 + v12)), vsqrtq_f64(v16));
        v12 += 16;
      }

      while (v12 != 48);
      v17 = 0;
      while (*&v19[v17] <= a1)
      {
        v17 += 8;
        if (v17 == 48)
        {
          goto LABEL_10;
        }
      }

      *(v11 + 8 * v8) = v7;
      LODWORD(v8) = v8 + 1;
LABEL_10:
      ++v7;
      v10 += 36;
      v9 += 48;
    }

    while (v7 != a3);
    v8 = v8;
  }

  else
  {
    v8 = 0;
  }

  *a6 = v8;
  return 0;
}

BOOL swan::PositionVelocityDataEditor::isIndexInArray(uint64_t a1, uint64_t a2, unint64_t a3, void **a4)
{
  if (!a3)
  {
    return 0;
  }

  if (**a4 == a2)
  {
    return 1;
  }

  v5 = 1;
  do
  {
    v6 = v5;
    if (a3 == v5)
    {
      break;
    }

    v7 = (*a4)[v5++];
  }

  while (v7 != a2);
  return v6 < a3;
}

uint64_t swan::ConsistencyChecker::UpdateNormalizedInnovationsSquared(uint64_t a1, unint64_t a2, unsigned int a3, void *a4, void *a5, double *a6)
{
  *a6 = 0.0;
  v72 = 0x100000006;
  v67 = &unk_1F4CE0BF8;
  v68 = a3;
  v69 = 1;
  v70 = a3;
  v71 = a3;
  v73 = &v74;
  v64 = 0x600000006;
  v59 = &unk_1F4CDF278;
  v60 = a3;
  v61 = a3;
  v62 = a3 * a3;
  v63 = a3;
  v65 = &v66;
  if (a2)
  {
    v8 = 0;
    v9 = 0;
    v10 = a3;
    do
    {
      if (a3)
      {
        v11 = 0;
        v12 = *a4 + 48 * v9;
        v13 = v73;
        v14 = v63;
        v15 = v65;
        v16 = (*a5 + v8);
        do
        {
          v13[v11] = *(v12 + 8 * v11);
          v17 = v16;
          v18 = v11;
          v19 = v10;
          do
          {
            v20 = *v17++;
            v15[v18] = v20;
            v18 += v14;
            --v19;
          }

          while (v19);
          ++v11;
          v16 += 6;
        }

        while (v11 != v10);
      }

      v21 = v69;
      v22 = v68;
      v41 = &unk_1F4CEB818;
      v46 = 0x600000001;
      v47 = v48;
      v42 = v69;
      v43 = v68;
      v44 = v68 * v69;
      v45 = v69;
      if (v69)
      {
        v23 = 0;
        v24 = 0;
        v25 = v71;
        v26 = v73;
        do
        {
          v27 = v23;
          v28 = v24;
          for (i = v22; i; --i)
          {
            v48[v28] = v26[v27];
            v28 += v21;
            ++v27;
          }

          ++v24;
          v23 += v25;
        }

        while (v24 != v21);
      }

      v38 = 0x600000006;
      v36 = &unk_1F4CDF278;
      v37 = xmmword_1D0E7F320;
      v39 = &v40;
      v82 = 0x100000006;
      v80 = &unk_1F4CE1400;
      v81 = xmmword_1D0E84530;
      v83 = &v84;
      v77 = 0x100000018;
      v75 = &unk_1F4CE2408;
      v76 = xmmword_1D0E84770;
      v78 = &v79;
      sub_1D0B9F868(&v59, &v80, &v75, &v36);
      v51 = 0x600000001;
      v50 = xmmword_1D0E84600;
      v49 = &unk_1F4CEB818;
      v52 = &v53;
      sub_1D0B89390(&v41, &v36, &v49);
      v56 = 0x100000001;
      *&v30 = 0x100000001;
      *(&v30 + 1) = 0x100000001;
      v55 = v30;
      v54 = &unk_1F4CDF418;
      v57 = &v58;
      sub_1D0B89390(&v49, &v67, &v54);
      v31 = *v57 + *a6;
      *a6 = v31;
      ++v9;
      v8 += 288;
    }

    while (v9 != a2);
  }

  else
  {
    v31 = 0.0;
  }

  *a6 = v31 / a2;
  return 0;
}

uint64_t swan::ConsistencyChecker::UpdateNormalizedStateEstimationErrorSquared(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, uint64_t a6, double *a7)
{
  *a7 = 0.0;
  v83 = 0x100000006;
  v78 = &unk_1F4CE0BF8;
  v79 = a3;
  v80 = 1;
  v81 = a3;
  v82 = a3;
  v84 = &v85;
  v75 = 0x600000006;
  v70 = &unk_1F4CDF278;
  v71 = a3;
  v72 = a3;
  v73 = a3 * a3;
  v74 = a3;
  v76 = &v77;
  v67 = 0x100000006;
  v62 = &unk_1F4CE0BF8;
  v63 = a3;
  v64 = 1;
  v65 = a3;
  v66 = a3;
  v68 = &v69;
  if (a2)
  {
    v10 = 0;
    v11 = a3;
    do
    {
      if (a3)
      {
        v12 = 0;
        v13 = v84;
        v14 = v68;
        v15 = v74;
        v16 = v76;
        v17 = a5;
        do
        {
          v18 = v12;
          v13[v18] = *(a4 + 48 * v10 + 8 * v12);
          v14[v18] = *(a6 + 48 * v10 + 8 * v12);
          v19 = v17;
          v20 = v12;
          v21 = a3;
          do
          {
            v22 = *v19++;
            v16[v20] = v22;
            v20 += v15;
            --v21;
          }

          while (v21);
          ++v12;
          v17 += 6;
        }

        while (v12 != v11);
      }

      v49 = 0x100000006;
      v47 = &unk_1F4CE0BF8;
      v48 = xmmword_1D0E84530;
      v50 = &v51;
      sub_1D0BA5A78(&v78, &v62, &v47);
      v44 = 0x600000006;
      v42 = &unk_1F4CDF278;
      v43 = xmmword_1D0E7F320;
      v45 = &v46;
      v39 = 0x100000006;
      v37 = &unk_1F4CE1400;
      v38 = xmmword_1D0E84530;
      v40 = v41;
      v88 = 0x100000018;
      v86 = &unk_1F4CE2408;
      v87 = xmmword_1D0E84770;
      v89 = v90;
      sub_1D0B9F868(&v70, &v37, &v86, &v42);
      v54 = 0x600000006;
      v53 = xmmword_1D0E7F320;
      v52 = &unk_1F4CDF278;
      v55 = &v56;
      sub_1D0B89390(&v47, &v42, &v52);
      v39 = 0x100000006;
      v37 = &unk_1F4CE0BF8;
      v38 = xmmword_1D0E84530;
      v40 = v41;
      sub_1D0BA5A78(&v78, &v62, &v37);
      v24 = v38;
      v23 = DWORD1(v38);
      v88 = 0x600000001;
      v86 = &unk_1F4CEB818;
      v89 = v90;
      *&v87 = __PAIR64__(v38, DWORD1(v38));
      DWORD2(v87) = v38 * DWORD1(v38);
      HIDWORD(v87) = DWORD1(v38);
      if (DWORD1(v38))
      {
        v25 = 0;
        v26 = 0;
        v27 = HIDWORD(v38);
        v28 = v40;
        do
        {
          v29 = v25;
          v30 = v26;
          for (i = v24; i; --i)
          {
            v90[v30] = *&v28[8 * v29];
            v30 += v23;
            ++v29;
          }

          ++v26;
          v25 += v27;
        }

        while (v26 != v23);
      }

      v59 = 0x600000006;
      v57 = &unk_1F4CDF278;
      v58 = xmmword_1D0E7F320;
      v60 = &v61;
      sub_1D0B89390(&v52, &v86, &v57);
      v32 = *v60 + *a7;
      *a7 = v32;
      ++v10;
      a5 += 36;
    }

    while (v10 != a2);
  }

  else
  {
    v32 = 0.0;
  }

  *a7 = v32 / a2;
  return 0;
}

uint64_t trackrun::ConvertProtobufToGEOMapRunningTrackDataEvent(trackrun *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData *a2, trackrun::GEOMapRunningTrackDataEvent *a3, int8x16_t a4, int8x16_t a5)
{
  if ((*(this + 48) & 1) == 0)
  {
    return 0;
  }

  v8 = *(this + 1);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::default_instance_ + 8);
  }

  result = trackrun::ConvertProtobufToTrackRunTime(v8, a2 + 32, 0, a4, a5);
  if (result)
  {
    v9 = *(a2 + 1);
    v107 = (a2 + 8);
    for (i = *(a2 + 2); i != v9; sub_1D0E61C78(i))
    {
      i -= 104;
    }

    *(a2 + 2) = v9;
    sub_1D0E60898(v107, *(this + 6));
    if ((*(this + 48) & 4) != 0)
    {
      *(a2 + 80) = *(this + 40);
    }

    v11 = *(this + 6);
    result = 1;
    if (v11)
    {
      v12 = *(this + 2);
      v108 = &v12[v11];
      v109 = a2;
      while (1)
      {
        v13 = *v12;
        v116[0] = 0;
        v116[1] = 0;
        v117 = 0;
        LOBYTE(v120) = 0;
        BYTE8(v120) = 0;
        v121 = 0;
        memset(v119, 0, 36);
        v110 = v12;
        v111 = v13;
        v14 = *(v13 + 24);
        if (v14)
        {
          if ((v14 & 0x80000000) == 0)
          {
            v115 = v119;
            sub_1D0E61E1C(v119, v14);
          }

          sub_1D0C5663C();
        }

        v15 = *(v13 + 76);
        if ((v15 & 0x40) != 0)
        {
          break;
        }

        if (*&v119[8] != *v119)
        {
          v16 = 0x8E38E38E38E38E39 * ((*&v119[8] - *v119) >> 3);
LABEL_20:
          v121 = v16;
          goto LABEL_21;
        }

        v16 = v121;
LABEL_21:
        v17 = v109;
        if (v16)
        {
          if (v15)
          {
            v18 = *(v111 + 8);
            if (!v18)
            {
              CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
              v18 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::default_instance_ + 8);
            }

            if (*(v18 + 48) >= 4)
            {
              v19 = *(v111 + 8);
              if (!v19)
              {
                CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
                v19 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::default_instance_ + 8);
              }

              v20 = *(v19 + 48);
              if (v20)
              {
                v21 = *(v19 + 40);
                v22 = 8 * v20;
                do
                {
                  v23 = *v21;
                  if ((~*(*v21 + 28) & 3) != 0)
                  {
                    LOWORD(__p[0]) = 13;
                    LOBYTE(v122) = 2;
                    cnprint::CNPrinter::Print(__p, &v122, "Warning,coordinate has no data");
                  }

                  else
                  {
                    v24 = *(v23 + 8);
                    if (fabs(v24) <= 90.0)
                    {
                      v25 = *(v23 + 16);
                      if (v25 < -180.0 || v25 > 360.0)
                      {
                        LOWORD(__p[0]) = 13;
                        LOBYTE(v122) = 4;
                        cnprint::CNPrinter::Print(__p, &v122, "Coordinate has invalid longitude,%.7lf", v25);
                      }

                      else
                      {
                        v26 = v116[1];
                        if (v116[1] >= v117)
                        {
                          v28 = (v116[1] - v116[0]) >> 4;
                          v29 = v28 + 1;
                          if ((v28 + 1) >> 60)
                          {
                            sub_1D0C5663C();
                          }

                          v30 = v117 - v116[0];
                          if ((v117 - v116[0]) >> 3 > v29)
                          {
                            v29 = v30 >> 3;
                          }

                          if (v30 >= 0x7FFFFFFFFFFFFFF0)
                          {
                            v31 = 0xFFFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v31 = v29;
                          }

                          if (v31)
                          {
                            sub_1D0BC40DC(v116, v31);
                          }

                          v32 = 16 * v28;
                          *v32 = v24;
                          *(v32 + 8) = v25;
                          v27 = (16 * v28 + 16);
                          v33 = (16 * v28 - (v116[1] - v116[0]));
                          memcpy((v32 - (v116[1] - v116[0])), v116[0], v116[1] - v116[0]);
                          result = v116[0];
                          v116[0] = v33;
                          v116[1] = v27;
                          v117 = 0;
                          if (result)
                          {
                            operator delete(result);
                          }
                        }

                        else
                        {
                          *v116[1] = v24;
                          v26[1] = v25;
                          v27 = v26 + 2;
                        }

                        v116[1] = v27;
                        v17 = v109;
                      }
                    }

                    else
                    {
                      LOWORD(__p[0]) = 13;
                      LOBYTE(v122) = 4;
                      cnprint::CNPrinter::Print(__p, &v122, "Coordinate has invalid latitude,%.7lf", v24);
                    }
                  }

                  ++v21;
                  v22 -= 8;
                }

                while (v22);
              }

              goto LABEL_124;
            }
          }

          v34 = *(v111 + 8);
          if (v34)
          {
            v35 = v34[1];
            goto LABEL_57;
          }

          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
          v34 = *(v111 + 8);
          v35 = *(*(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::default_instance_ + 8) + 8);
          if (v34)
          {
LABEL_57:
            v36 = v34[4];
            goto LABEL_58;
          }

          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
          v34 = *(v111 + 8);
          v36 = *(*(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::default_instance_ + 8) + 32);
          if (v34)
          {
LABEL_58:
            v37 = v34[1];
          }

          else
          {
            CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
            v34 = *(v111 + 8);
            v37 = *(*(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::default_instance_ + 8) + 8);
            if (!v34)
            {
              CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
              v34 = *(v111 + 8);
              v38 = *(*(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::default_instance_ + 8) + 16);
              if (!v34)
              {
                CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
                v34 = *(v111 + 8);
                v39 = *(*(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::default_instance_ + 8) + 24);
                if (!v34)
                {
                  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
                  v34 = *(v111 + 8);
                  v40 = *(*(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::default_instance_ + 8) + 16);
                  if (!v34)
                  {
                    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
                    v34 = *(v111 + 8);
                    v41 = *(*(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::default_instance_ + 8) + 24);
                    if (!v34)
                    {
                      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
                      v34 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::default_instance_ + 8);
                    }

                    goto LABEL_63;
                  }

LABEL_62:
                  v41 = v34[3];
LABEL_63:
                  v42 = v34[4];
                  v43 = v116[1];
                  if (v116[1] >= v117)
                  {
                    v45 = (v116[1] - v116[0]) >> 4;
                    v46 = v45 + 1;
                    if ((v45 + 1) >> 60)
                    {
                      goto LABEL_174;
                    }

                    v47 = v117 - v116[0];
                    if ((v117 - v116[0]) >> 3 > v46)
                    {
                      v46 = v47 >> 3;
                    }

                    if (v47 >= 0x7FFFFFFFFFFFFFF0)
                    {
                      v48 = 0xFFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v48 = v46;
                    }

                    if (v48)
                    {
                      sub_1D0BC40DC(v116, v48);
                    }

                    v49 = (16 * v45);
                    *v49 = v35;
                    v49[1] = v36;
                    v44 = (16 * v45 + 16);
                    v50 = v49 - (v116[1] - v116[0]);
                    memcpy(v50, v116[0], v116[1] - v116[0]);
                    result = v116[0];
                    v116[0] = v50;
                    v116[1] = v44;
                    v117 = 0;
                    if (result)
                    {
                      operator delete(result);
                    }
                  }

                  else
                  {
                    *v116[1] = v35;
                    v43[1] = v36;
                    v44 = (v43 + 2);
                  }

                  v116[1] = v44;
                  if (v44 >= v117)
                  {
                    v52 = (v44 - v116[0]) >> 4;
                    if ((v52 + 1) >> 60)
                    {
                      goto LABEL_174;
                    }

                    v53 = (v117 - v116[0]) >> 3;
                    if (v53 <= v52 + 1)
                    {
                      v53 = v52 + 1;
                    }

                    if ((v117 - v116[0]) >= 0x7FFFFFFFFFFFFFF0)
                    {
                      v54 = 0xFFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v54 = v53;
                    }

                    if (v54)
                    {
                      sub_1D0BC40DC(v116, v54);
                    }

                    v55 = (16 * v52);
                    *v55 = v37;
                    v55[1] = v38;
                    v51 = (16 * v52 + 16);
                    v56 = v55 - (v116[1] - v116[0]);
                    memcpy(v56, v116[0], v116[1] - v116[0]);
                    result = v116[0];
                    v116[0] = v56;
                    v116[1] = v51;
                    v117 = 0;
                    if (result)
                    {
                      operator delete(result);
                    }
                  }

                  else
                  {
                    *v44 = v37;
                    *(v44 + 1) = v38;
                    v51 = v44 + 16;
                  }

                  v116[1] = v51;
                  if (v51 >= v117)
                  {
                    v58 = (v51 - v116[0]) >> 4;
                    if ((v58 + 1) >> 60)
                    {
                      goto LABEL_174;
                    }

                    v59 = (v117 - v116[0]) >> 3;
                    if (v59 <= v58 + 1)
                    {
                      v59 = v58 + 1;
                    }

                    if ((v117 - v116[0]) >= 0x7FFFFFFFFFFFFFF0)
                    {
                      v60 = 0xFFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v60 = v59;
                    }

                    if (v60)
                    {
                      sub_1D0BC40DC(v116, v60);
                    }

                    v61 = (16 * v58);
                    *v61 = v39;
                    v61[1] = v40;
                    v57 = (16 * v58 + 16);
                    v62 = v61 - (v116[1] - v116[0]);
                    memcpy(v62, v116[0], v116[1] - v116[0]);
                    result = v116[0];
                    v116[0] = v62;
                    v116[1] = v57;
                    v117 = 0;
                    if (result)
                    {
                      operator delete(result);
                    }
                  }

                  else
                  {
                    *v51 = v39;
                    *(v51 + 1) = v40;
                    v57 = v51 + 16;
                  }

                  v116[1] = v57;
                  if (v57 >= v117)
                  {
                    v64 = (v57 - v116[0]) >> 4;
                    if ((v64 + 1) >> 60)
                    {
                      goto LABEL_174;
                    }

                    v65 = (v117 - v116[0]) >> 3;
                    if (v65 <= v64 + 1)
                    {
                      v65 = v64 + 1;
                    }

                    if ((v117 - v116[0]) >= 0x7FFFFFFFFFFFFFF0)
                    {
                      v66 = 0xFFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v66 = v65;
                    }

                    if (v66)
                    {
                      sub_1D0BC40DC(v116, v66);
                    }

                    v67 = (16 * v64);
                    *v67 = v41;
                    v67[1] = v42;
                    v63 = (16 * v64 + 16);
                    v68 = v67 - (v116[1] - v116[0]);
                    memcpy(v68, v116[0], v116[1] - v116[0]);
                    result = v116[0];
                    v116[0] = v68;
                    v116[1] = v63;
                    v117 = 0;
                    if (result)
                    {
                      operator delete(result);
                    }
                  }

                  else
                  {
                    *v57 = v41;
                    *(v57 + 1) = v42;
                    v63 = v57 + 16;
                  }

                  v116[1] = v63;
                  if (v63 >= v117)
                  {
                    v70 = (v63 - v116[0]) >> 4;
                    if ((v70 + 1) >> 60)
                    {
LABEL_174:
                      sub_1D0C5663C();
                    }

                    v71 = (v117 - v116[0]) >> 3;
                    if (v71 <= v70 + 1)
                    {
                      v71 = v70 + 1;
                    }

                    if ((v117 - v116[0]) >= 0x7FFFFFFFFFFFFFF0)
                    {
                      v72 = 0xFFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v72 = v71;
                    }

                    if (v72)
                    {
                      sub_1D0BC40DC(v116, v72);
                    }

                    v73 = (16 * v70);
                    *v73 = v35;
                    v73[1] = v36;
                    v69 = (16 * v70 + 16);
                    v74 = v73 - (v116[1] - v116[0]);
                    memcpy(v74, v116[0], v116[1] - v116[0]);
                    result = v116[0];
                    v116[0] = v74;
                    v116[1] = v69;
                    v117 = 0;
                    if (result)
                    {
                      operator delete(result);
                    }
                  }

                  else
                  {
                    *v63 = v35;
                    *(v63 + 1) = v36;
                    v69 = v63 + 16;
                  }

                  v116[1] = v69;
LABEL_124:
                  if ((v116[1] - v116[0]) <= 0x10)
                  {
                    if (v116[1] == v116[0])
                    {
                      v122 = &unk_1F4CF0B38;
                      __p[0] = "/AppleInternal/Library/BuildRoots/4~B_vtugDL9R_i6FW7bXTnamipqOQLftg52EzW3Mg/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/geometry/algorithms/centroid.hpp";
                      __p[1] = "BOOL boost::geometry::detail::centroid::range_ok(const Range &, Point &) [Point = boost::geometry::model::d2::point_xy<double>, Range = boost::geometry::model::ring<boost::geometry::model::d2::point_xy<double>, false>]";
                      *&v114 = 159;
                      sub_1D0E62164(__p);
                    }

                    v118 = *v116[0];
                  }

                  else if (v116[0] != v116[1])
                  {
                    v75 = (v116[0] + 16);
                    v76 = *v116[0];
                    if (v116[0] + 16 != v116[1])
                    {
                      v77 = vsubq_f64(v76, v76);
                      v78 = 0uLL;
                      v79 = 0.0;
                      do
                      {
                        v80 = *v75++;
                        v81 = vsubq_f64(v80, v76);
                        v82 = -v77.f64[1] * v81.f64[0] + v77.f64[0] * v81.f64[1];
                        v79 = v79 + v82;
                        v78 = vmlaq_n_f64(v78, vaddq_f64(v77, v81), v82);
                        v77 = v81;
                      }

                      while (v75 != v116[1]);
                      if (v79 != 0.0)
                      {
                        if ((*&v79 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                        {
                          goto LABEL_134;
                        }

                        v83 = fabs(v79);
                        v84 = 1.0;
                        if (v83 >= 1.0)
                        {
                          v84 = v83;
                        }

                        if (v83 > v84 * 2.22044605e-16)
                        {
LABEL_134:
                          v85 = v79 * 3.0;
                          if ((*&v85 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                          {
                            v86 = vdivq_f64(v78, vdupq_lane_s64(*&v85, 0));
                            v118 = v86;
                            v118.f64[0] = v86.f64[0] + *v116[0];
                            v87 = v86.f64[1] + *(v116[0] + 1);
                            goto LABEL_140;
                          }
                        }
                      }
                    }
                  }

                  if (v116[0] != v116[1])
                  {
                    v118.f64[0] = *v116[0];
                    v87 = *(v116[0] + 1);
LABEL_140:
                    v118.f64[1] = v87;
                  }

                  if ((v116[1] - v116[0]) < 0x31)
                  {
                    LOWORD(__p[0]) = 13;
                    LOBYTE(v122) = 4;
                    cnprint::CNPrinter::Print(__p, &v122, "Bounding box doesn't have at least four coordinates");
                  }

                  else
                  {
                    if (cnprint::CNPrinter::GetLogLevel(result) <= 1)
                    {
                      LOWORD(__p[0]) = 13;
                      LOBYTE(v122) = 1;
                      cnprint::CNPrinter::Print(__p, &v122, "bbox,1,%.8lf,%.8lf,2,%.8lf,%.8lf,3,%.8lf,%.8lf,4,%.8lf,%.8lf,center,%.8lf,%.8lf", *v116[0], *(v116[0] + 1), *(v116[0] + 2), *(v116[0] + 3), *(v116[0] + 4), *(v116[0] + 5), *(v116[0] + 6), *(v116[0] + 7), v118.f64[0], v118.f64[1]);
                    }

                    if (((v116[1] - v116[0]) >> 4) >= 6)
                    {
                      LOWORD(__p[0]) = 13;
                      LOBYTE(v122) = 3;
                      cnprint::CNPrinter::Print(__p, &v122, "Warning: Received a non-rectangular bounding box, which is handleable, but unexpected,number of coordinates,%lu", (v116[1] - v116[0]) >> 4);
                    }
                  }

                  v88 = *(v111 + 48);
                  if (v88 == 3)
                  {
                    v89 = 2;
                  }

                  else
                  {
                    v89 = v88 == 2;
                  }

                  *&v119[32] = v89;
                  *&v119[24] = *(v111 + 40);
                  v90 = *(v17 + 2);
                  v91 = *(v17 + 3);
                  if (v90 >= v91)
                  {
                    v95 = 0x4EC4EC4EC4EC4EC5 * ((v90 - *v107) >> 3);
                    v96 = v95 + 1;
                    if ((v95 + 1) > 0x276276276276276)
                    {
                      sub_1D0C5663C();
                    }

                    v97 = 0x4EC4EC4EC4EC4EC5 * ((v91 - *v107) >> 3);
                    if (2 * v97 > v96)
                    {
                      v96 = 2 * v97;
                    }

                    if (v97 >= 0x13B13B13B13B13BLL)
                    {
                      v98 = 0x276276276276276;
                    }

                    else
                    {
                      v98 = v96;
                    }

                    v115 = v107;
                    if (v98)
                    {
                      sub_1D0E61CC0(v107, v98);
                    }

                    v99 = 104 * v95;
                    __p[0] = 0;
                    __p[1] = v99;
                    *(&v114 + 1) = 0;
                    *v99 = 0;
                    *(v99 + 8) = 0;
                    *(v99 + 16) = 0;
                    *v99 = *v116;
                    *(v99 + 16) = v117;
                    v116[1] = 0;
                    v117 = 0;
                    v116[0] = 0;
                    *(v99 + 24) = v118;
                    *(v99 + 48) = 0;
                    *(v99 + 56) = 0;
                    *(v99 + 40) = 0;
                    *(v99 + 40) = *v119;
                    *(v99 + 56) = *&v119[16];
                    memset(v119, 0, 24);
                    v100 = *&v119[24];
                    v101 = v120;
                    *(v99 + 96) = v121;
                    *(v99 + 64) = v100;
                    *(v99 + 80) = v101;
                    *&v114 = 104 * v95 + 104;
                    v102 = *(v17 + 1);
                    v103 = *(v17 + 2);
                    v104 = 104 * v95 + v102 - v103;
                    sub_1D0E61D1C(v107, v102, v103, v104);
                    v105 = *(v17 + 1);
                    *(v17 + 1) = v104;
                    v106 = *(v17 + 3);
                    v112 = v114;
                    *(v17 + 1) = v114;
                    *&v114 = v105;
                    *(&v114 + 1) = v106;
                    __p[0] = v105;
                    __p[1] = v105;
                    sub_1D0E61DCC(__p);
                    v94 = v112;
                  }

                  else
                  {
                    *(v90 + 8) = 0;
                    *(v90 + 16) = 0;
                    *v90 = 0;
                    *v90 = *v116;
                    *(v90 + 16) = v117;
                    v116[0] = 0;
                    v116[1] = 0;
                    v117 = 0;
                    *(v90 + 24) = v118;
                    *(v90 + 48) = 0;
                    *(v90 + 56) = 0;
                    *(v90 + 40) = 0;
                    *(v90 + 40) = *v119;
                    *(v90 + 56) = *&v119[16];
                    memset(v119, 0, 24);
                    v92 = *&v119[24];
                    v93 = v120;
                    *(v90 + 96) = v121;
                    *(v90 + 64) = v92;
                    *(v90 + 80) = v93;
                    v94 = v90 + 104;
                  }

                  *(v17 + 2) = v94;
                  goto LABEL_162;
                }

LABEL_61:
                v40 = v34[2];
                goto LABEL_62;
              }

LABEL_60:
              v39 = v34[3];
              goto LABEL_61;
            }
          }

          v38 = v34[2];
          goto LABEL_60;
        }

        LOWORD(__p[0]) = 13;
        LOBYTE(v122) = 3;
        cnprint::CNPrinter::Print(__p, &v122, "Warning,track has no lanes");
LABEL_162:
        __p[0] = v119;
        sub_1D0E620B8(__p);
        result = v116[0];
        if (v116[0])
        {
          v116[1] = v116[0];
          operator delete(v116[0]);
        }

        v12 = v110 + 1;
        if (v110 + 1 == v108)
        {
          return 1;
        }
      }

      v16 = *(v111 + 64);
      goto LABEL_20;
    }
  }

  return result;
}

void sub_1D0E607C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  sub_1D0E6206C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1D0E60898(uint64_t *result, unint64_t a2)
{
  if (0x4EC4EC4EC4EC4EC5 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x276276276276277)
    {
      sub_1D0E61CC0(result, a2);
    }

    sub_1D0C5663C();
  }

  return result;
}

void sub_1D0E6096C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D0E61DCC(va);
  _Unwind_Resume(a1);
}

uint64_t trackrun::ConvertProtobufToRunningTrackLaneType(_DWORD *a1)
{
  if (*a1 == 3)
  {
    return 2;
  }

  else
  {
    return *a1 == 2;
  }
}

uint64_t trackrun::ConvertProtobufToRunningTrackType(_DWORD *a1)
{
  if (*a1 == 3)
  {
    return 2;
  }

  else
  {
    return *a1 == 2;
  }
}

uint64_t trackrun::ConvertProtobufToMovingStateEvent(trackrun *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionState *a2, trackrun::MovingStateEvent *a3, int8x16_t a4, int8x16_t a5)
{
  if ((*(this + 32) & 1) == 0)
  {
    return 0;
  }

  v8 = *(this + 1);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 8);
  }

  result = trackrun::ConvertProtobufToTrackRunTime(v8, a2 + 8, 1, a4, a5);
  if (!result)
  {
    return result;
  }

  if ((*(this + 32) & 4) == 0)
  {
    return 0;
  }

  v9 = *(this + 2);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
  }

  if ((*(v9 + 92) & 1) == 0)
  {
    return 0;
  }

  v10 = *(this + 2);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
  }

  if ((*(v10 + 92) & 2) == 0)
  {
    return 0;
  }

  v11 = *(this + 2);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
    v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
  }

  v12 = *(v11 + 8);
  result = 1;
  if (v12 > 11804)
  {
    if (v12 > 15651)
    {
      if (v12 <= 18199)
      {
        if (v12 <= 15732)
        {
          v15 = (v12 - 15652);
          if (v15 > 0x3A)
          {
            return result;
          }

          if (((1 << v15) & 0x400000000800101) != 0)
          {
            goto LABEL_80;
          }

          if (v15 != 18)
          {
            return result;
          }

          goto LABEL_77;
        }

        if (v12 == 15733 || v12 == 17150)
        {
          goto LABEL_80;
        }

        v14 = 18070;
      }

      else if (v12 > 19149)
      {
        if (v12 <= 90602)
        {
          if (v12 == 19150)
          {
            goto LABEL_80;
          }

          v14 = 19160;
        }

        else
        {
          if (v12 == 90603 || v12 == 515621)
          {
            goto LABEL_80;
          }

          v14 = 515652;
        }
      }

      else
      {
        if ((v12 - 18200) <= 0x28 && ((1 << (v12 - 24)) & 0x10002000001) != 0 || v12 == 19030)
        {
          goto LABEL_80;
        }

        v14 = 19090;
      }
    }

    else if (v12 > 15329)
    {
      if ((v12 - 15562) <= 0x3A && ((1 << (v12 + 54)) & 0x401000040000001) != 0 || (v12 - 15330) <= 0x1E && ((1 << (v12 + 30)) & 0x40100001) != 0)
      {
        goto LABEL_80;
      }

      v14 = 15460;
    }

    else if (v12 <= 15054)
    {
      if (v12 == 11805 || v12 == 12150)
      {
        goto LABEL_80;
      }

      v14 = 15030;
    }

    else
    {
      if ((v12 - 15100) <= 0x32 && ((1 << (v12 + 4)) & 0x4000000000401) != 0 || (v12 - 15230) <= 0x19 && ((1 << (v12 - 126)) & 0x2000401) != 0)
      {
        goto LABEL_80;
      }

      v14 = 15055;
    }

    if (v12 == v14)
    {
      goto LABEL_80;
    }

    return result;
  }

  if (v12 <= 2009)
  {
    if (v12 <= 0x38)
    {
      if (((1 << v12) & 0x110020000000378) != 0)
      {
        goto LABEL_80;
      }

      if (((1 << v12) & 0xC06) != 0)
      {
        LOBYTE(v12) = 1;
        goto LABEL_81;
      }

      if (v12 == 7)
      {
        goto LABEL_77;
      }
    }

    if ((v12 - 61) <= 0x27 && ((1 << (v12 - 61)) & 0x800000003FLL) != 0)
    {
      goto LABEL_80;
    }

    if (v12)
    {
      return result;
    }

LABEL_81:
    *(a2 + 56) = v12;
    return result;
  }

  if (v12 <= 2100)
  {
    v13 = v12 - 2010;
    if (v13 > 0x3D)
    {
      return result;
    }

    if (((1 << v13) & 0x2480000000005400) == 0)
    {
      if (((1 << v13) & 0x8004000000001) == 0)
      {
        return result;
      }

      goto LABEL_77;
    }

LABEL_80:
    LOBYTE(v12) = 3;
    goto LABEL_81;
  }

  if (v12 <= 2149)
  {
    if (v12 == 2101)
    {
      goto LABEL_80;
    }

    if (v12 != 2105)
    {
      return result;
    }

LABEL_77:
    LOBYTE(v12) = 2;
    goto LABEL_81;
  }

  if (v12 == 2150 || v12 == 3015)
  {
    goto LABEL_77;
  }

  if (v12 == 3016)
  {
    goto LABEL_80;
  }

  return result;
}

uint64_t trackrun::ConvertProtobufToTrackRunHintEvent(trackrun *this, const CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint *a2, trackrun::TrackRunHintEvent *a3, int8x16_t a4, int8x16_t a5)
{
  if ((*(this + 36) & 2) == 0)
  {
    return 0;
  }

  v14 = v5;
  v15 = v6;
  v10 = *(this + 2);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::TropicalSavanna::protobuf_AddDesc_CoreNavigationCLPTropicalSavannaLogEntry_2eproto(0);
    v10 = *(CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::default_instance_ + 16);
  }

  result = trackrun::ConvertProtobufToTrackRunTime(v10, a2 + 8, 0, a4, a5);
  if (result)
  {
    if ((*(this + 36) & 4) == 0)
    {
      return 0;
    }

    v11 = *(this + 6);
    if ((v11 - 256) <= 0xFFFFFF00)
    {
      v13 = 13;
      v12 = 4;
      cnprint::CNPrinter::Print(&v13, &v12, "Invalid lane number,%d", v11);
      return 0;
    }

    *(a2 + 56) = v11;
    return 1;
  }

  return result;
}

uint64_t trackrun::ConvertProtobufToVisitEvent(trackrun *this, const CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit *a2, trackrun::VisitEvent *a3, int8x16_t a4, int8x16_t a5)
{
  if ((*(this + 68) & 1) == 0)
  {
    goto LABEL_5;
  }

  v7 = *(this + 1);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 8);
  }

  if ((trackrun::ConvertProtobufToTrackRunTime(v7, a2 + 8, 1, a4, a5) & 1) == 0)
  {
LABEL_5:
    v29 = 13;
    v28 = 3;
    cnprint::CNPrinter::Print(&v29, &v28, "Warning: ConvertProtobufToTrackRunTime,receipt time not present. Proceeding but this is unexpected.", *a4.i64, *a5.i64);
  }

  if ((*(this + 68) & 2) == 0)
  {
    goto LABEL_10;
  }

  v8 = *(this + 2);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 16);
  }

  if ((trackrun::ConvertProtobufToTrackRunTime(v8, a2 + 56, 1, a4, a5) & 1) == 0)
  {
LABEL_10:
    v29 = 13;
    v28 = 3;
    cnprint::CNPrinter::Print(&v29, &v28, "ConvertProtobufToTrackRunTime,Arrival time not present. User probably isn't in a known visit location.");
  }

  if ((*(this + 68) & 4) == 0)
  {
    goto LABEL_15;
  }

  v11 = *(this + 3);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 24);
  }

  if ((trackrun::ConvertProtobufToTrackRunTime(v11, a2 + 104, 1, v9, v10) & 1) == 0)
  {
LABEL_15:
    v29 = 13;
    v28 = 3;
    cnprint::CNPrinter::Print(&v29, &v28, "ConvertProtobufToTrackRunTime,Departure time is not present. User has arrived at a known visit location");
  }

  if ((*(this + 68) & 8) == 0)
  {
    goto LABEL_20;
  }

  v14 = *(this + 4);
  if (!v14)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 32);
  }

  v15 = trackrun::ConvertProtobufToTrackRunTime(v14, a2 + 152, 1, v12, v13);
  if ((v15 & 1) == 0)
  {
LABEL_20:
    v29 = 13;
    v28 = 3;
    cnprint::CNPrinter::Print(&v29, &v28, "Warning: ConvertProtobufToTrackRunTime,detection time not present. Proceeding, but this is unexpected.");
  }

  if ((*(this + 68) & 0x20) == 0)
  {
    v29 = 13;
    v28 = 4;
    cnprint::CNPrinter::Print(&v29, &v28, "ConvertProtobufToTrackRunTime,coordinate not present. Cannot create visit event.");
    return 0;
  }

  v16 = *(this + 6);
  if (v16)
  {
    *(a2 + 25) = *(v16 + 8);
  }

  else
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
    v16 = *(this + 6);
    *(a2 + 25) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 48) + 8);
    if (!v16)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
      v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 48);
    }
  }

  *(a2 + 26) = *(v16 + 16);
  v17 = *(this + 17);
  if ((v17 & 0x40) == 0)
  {
    v29 = 13;
    v28 = 4;
    cnprint::CNPrinter::Print(&v29, &v28, "Visit does not have an estimated radius. Cannot create visit event.");
    return 0;
  }

  *(a2 + 27) = *(this + 7);
  if ((v17 & 0x10) == 0)
  {
    v29 = 13;
    v28 = 4;
    cnprint::CNPrinter::Print(&v29, &v28, "Visit does not have a place inference. Cannot create visit event");
    return 0;
  }

  v18 = *(this + 5);
  if (!v18)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
    v18 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 40);
  }

  if ((*(v18 + 36) & 1) == 0)
  {
    v29 = 13;
    v28 = 4;
    cnprint::CNPrinter::Print(&v29, &v28, "Visit does not have a user specific place type. Cannot create visit event");
    return 0;
  }

  v19 = *(this + 5);
  if (!v19)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
    v19 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 40);
  }

  if ((*(v19 + 36) & 2) == 0)
  {
    v29 = 13;
    v28 = 4;
    cnprint::CNPrinter::Print(&v29, &v28, "Visit does not have a place inference place type. Cannot create visit event");
    return 0;
  }

  v21 = *(this + 5);
  if (!v21)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
    v21 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 40);
  }

  v22 = *(v21 + 8);
  if (v22 <= 4)
  {
    *(a2 + 224) = v22;
  }

  v23 = *(this + 5);
  if (!v23)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
    v23 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 40);
  }

  v24 = *(v23 + 12);
  if (v24 <= 2)
  {
    *(a2 + 225) = v24 + 1;
  }

  v25 = *(this + 5);
  v26 = v25;
  if (!v25)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
    v26 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 40);
    v25 = *(this + 5);
  }

  if ((*(v26 + 36) & 4) != 0)
  {
    if (!v25)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
      v25 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 40);
    }

    v15 = std::string::operator=((a2 + 232), *(v25 + 16));
    v25 = *(this + 5);
  }

  if (!v25)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
    v25 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 40);
  }

  if ((*(v25 + 36) & 8) != 0)
  {
    v27 = *(this + 5);
    if (!v27)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
      v27 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 40);
    }

    std::string::operator=((a2 + 256), *(v27 + 24));
  }

  return 1;
}

uint64_t trackrun::ConvertProtobufToWatchStateEvent(trackrun *this, const CoreNavigation::CLP::LogEntry::PrivateData::WatchState *a2, trackrun::WatchStateEvent *a3, int8x16_t a4, int8x16_t a5)
{
  if ((*(this + 40) & 1) == 0)
  {
    return 0;
  }

  v8 = *(this + 1);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::WatchState::default_instance_ + 8);
  }

  result = trackrun::ConvertProtobufToTrackRunTime(v8, a2 + 8, 0, a4, a5);
  if (result)
  {
    if ((*(this + 40) & 4) == 0)
    {
      return 0;
    }

    v9 = *(this + 2);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::WatchState::default_instance_ + 16);
    }

    if (*(v9 + 20))
    {
      v11 = *(this + 2);
      if (!v11)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::WatchState::default_instance_ + 16);
      }

      v12 = *(v11 + 8);
      if (v12 > 3)
      {
LABEL_17:
        v13 = *(this + 2);
        if (!v13)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
          v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::WatchState::default_instance_ + 16);
        }

        if ((*(v13 + 20) & 2) != 0)
        {
          v15 = *(this + 2);
          if (!v15)
          {
            CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
            v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::WatchState::default_instance_ + 16);
          }

          v16 = *(v15 + 12);
          if (v16 > 3)
          {
            return 1;
          }

          v14 = 0x2010000u >> (8 * v16);
        }

        else
        {
          LOBYTE(v14) = 0;
        }

        *(a2 + 56) = v14;
        return 1;
      }

      v10 = 0x2010000u >> (8 * v12);
    }

    else
    {
      LOBYTE(v10) = 0;
    }

    *(a2 + 57) = v10;
    goto LABEL_17;
  }

  return result;
}

uint64_t trackrun::ConvertProtobufToWorkoutSessionEvent(trackrun *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator *a2, trackrun::WorkoutSessionEvent *a3, int8x16_t a4, int8x16_t a5)
{
  if ((*(this + 32) & 1) == 0)
  {
    return 0;
  }

  v8 = *(this + 1);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 8);
  }

  result = trackrun::ConvertProtobufToTrackRunTime(v8, a2 + 8, 0, a4, a5);
  if (result)
  {
    if ((*(this + 32) & 4) == 0)
    {
      return 0;
    }

    v11 = *(this + 2);
    if (!v11)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
    }

    if ((*(v11 + 48) & 4) == 0)
    {
      return 0;
    }

    v12 = *(this + 2);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
    }

    if ((*(v12 + 48) & 1) == 0)
    {
      return 0;
    }

    v13 = *(this + 2);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
    }

    if ((*(v13 + 48) & 0x10) == 0)
    {
      return 0;
    }

    v14 = *(this + 2);
    if (!v14)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
    }

    v15 = *(v14 + 32);
    if (!v15)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 32);
    }

    if ((*(v15 + 40) & 4) != 0)
    {
      v16 = *(this + 2);
      v17 = v16;
      if (!v16)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v17 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
        v16 = *(this + 2);
      }

      if ((v17[6] & 8) != 0)
      {
        if (!v16)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
          v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
        }

        v18 = v16[3];
        if (!v18)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
          v18 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 24);
        }

        v19 = trackrun::ConvertProtobufToTrackRunTime(v18, a2 + 8, 1, v9, v10);
        v22 = *(this + 2);
        if (!v22)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v19);
          v22 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
        }

        v23 = *(v22 + 24);
        if (!v23)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
          v23 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 24);
        }

        result = trackrun::ConvertProtobufToTrackRunTime(v23, a2 + 184, 1, v20, v21);
        v16 = *(this + 2);
      }

      v24 = v16;
      if (!v16)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v24 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
        v16 = *(this + 2);
      }

      if (v24[6])
      {
        if (!v16)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
          v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
        }

        v25 = v16[1];
        if (!v25)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
          v25 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 8);
        }

        result = trackrun::ConvertProtobufToTrackRunTime(v25, a2 + 88, 1, v9, v10);
        v16 = *(this + 2);
      }

      v26 = v16;
      if (!v16)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v26 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
        v16 = *(this + 2);
      }

      if ((v26[6] & 2) != 0)
      {
        if (!v16)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
          v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
        }

        v27 = v16[2];
        if (!v27)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
          v27 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 16);
        }

        result = trackrun::ConvertProtobufToTrackRunTime(v27, a2 + 136, 1, v9, v10);
        v16 = *(this + 2);
      }

      if (!v16)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
      }

      v28 = v16[4];
      if (!v28)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v28 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 32);
      }

      v29 = *(this + 2);
      if (*(v28 + 40))
      {
        if (!v29)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
          v29 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
        }

        v30 = *(v29 + 32);
        if (!v30)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
          v30 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 32);
        }

        result = std::string::operator=((a2 + 64), *(v30 + 8));
        v29 = *(this + 2);
      }

      if (!v29)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v29 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
      }

      v31 = *(v29 + 32);
      if (!v31)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v31 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 32);
      }

      v32 = *(v31 + 24);
      if (v32 <= 0x42)
      {
        *(a2 + 56) = byte_1D0EC1B8A[v32];
      }

      v33 = *(this + 2);
      if (!v33)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v33 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
      }

      v34 = *(v33 + 40);
      if (v34 <= 0x12)
      {
        *(a2 + 57) = byte_1D0EC1BCD[v34];
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t trackrun::ConvertProtobufToWorkoutSessionEvent(trackrun *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver *a2, trackrun::WorkoutSessionEvent *a3, int8x16_t a4, int8x16_t a5)
{
  if ((*(this + 32) & 1) == 0)
  {
    return 0;
  }

  v8 = *(this + 1);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 8);
  }

  result = trackrun::ConvertProtobufToTrackRunTime(v8, a2 + 8, 0, a4, a5);
  if (result)
  {
    if ((*(this + 32) & 4) == 0)
    {
      return 0;
    }

    v11 = *(this + 2);
    if (!v11)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 16);
    }

    if ((*(v11 + 36) & 1) == 0)
    {
      return 0;
    }

    v12 = *(this + 2);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 16);
    }

    if ((*(v12 + 36) & 4) == 0)
    {
      return 0;
    }

    v13 = *(this + 2);
    v14 = v13;
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 16);
      v13 = *(this + 2);
    }

    if ((*(v14 + 36) & 4) != 0)
    {
      if (!v13)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 16);
      }

      v15 = *(v13 + 24);
      if (!v15)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
        v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::default_instance_ + 24);
      }

      result = trackrun::ConvertProtobufToTrackRunTime(v15, a2 + 88, 1, v9, v10);
      v13 = *(this + 2);
    }

    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 16);
    }

    v16 = *(v13 + 16);
    result = 1;
    if (v16 <= 11804)
    {
      if (v16 > 2009)
      {
        if (((v16 - 2010) > 0x3D || ((1 << (v16 + 38)) & 0x2488004000005401) == 0) && ((v16 - 2101) > 0x31 || ((1 << (v16 - 53)) & 0x2000000000011) == 0) && (v16 - 3015) >= 2)
        {
          return result;
        }

        goto LABEL_81;
      }

      if (v16 <= 0x38)
      {
        if (((1 << v16) & 0x110000000000EEELL) != 0)
        {
          goto LABEL_81;
        }

        if (((1 << v16) & 0x20000000010) != 0)
        {
          LOBYTE(v16) = 3;
          goto LABEL_82;
        }

        if (v16 == 8)
        {
          LOBYTE(v16) = 4;
          goto LABEL_82;
        }
      }

      if ((v16 - 61) > 0x27 || ((1 << (v16 - 61)) & 0x800000003FLL) == 0)
      {
        if (v16)
        {
          return result;
        }

LABEL_82:
        *(a2 + 56) = v16;
        return result;
      }

LABEL_81:
      LOBYTE(v16) = 1;
      goto LABEL_82;
    }

    if (v16 <= 15651)
    {
      if (v16 > 15329)
      {
        if ((v16 - 15562) <= 0x3A && ((1 << (v16 + 54)) & 0x401000040000001) != 0 || (v16 - 15330) <= 0x1E && ((1 << (v16 + 30)) & 0x40100001) != 0)
        {
          goto LABEL_81;
        }

        v17 = 15460;
        goto LABEL_75;
      }

      if (v16 > 15054)
      {
        if ((v16 - 15100) <= 0x32 && ((1 << (v16 + 4)) & 0x4000000000401) != 0 || (v16 - 15230) <= 0x19 && ((1 << (v16 - 126)) & 0x2000401) != 0)
        {
          goto LABEL_81;
        }

        v17 = 15055;
        goto LABEL_75;
      }

      if (v16 != 11805)
      {
        if (v16 == 12150)
        {
          goto LABEL_81;
        }

        v17 = 15030;
        goto LABEL_75;
      }

LABEL_72:
      LOBYTE(v16) = 7;
      goto LABEL_82;
    }

    if (v16 <= 18199)
    {
      if (v16 <= 15732)
      {
        v18 = v16 - 15652;
        if (v18 > 0x3A || ((1 << v18) & 0x400000000840101) == 0)
        {
          return result;
        }

        goto LABEL_81;
      }

      if (v16 == 15733 || v16 == 17150)
      {
        goto LABEL_81;
      }

      v17 = 18070;
    }

    else
    {
      if (v16 <= 19149)
      {
        if ((v16 - 18200) <= 0x28 && ((1 << (v16 - 24)) & 0x10002000001) != 0 || v16 == 19030)
        {
          goto LABEL_81;
        }

        v17 = 19090;
        goto LABEL_75;
      }

      if (v16 <= 90602)
      {
        if (v16 == 19150)
        {
          goto LABEL_81;
        }

        v17 = 19160;
        goto LABEL_75;
      }

      if (v16 == 90603)
      {
        goto LABEL_72;
      }

      if (v16 == 515621)
      {
        goto LABEL_81;
      }

      v17 = 515652;
    }

LABEL_75:
    if (v16 != v17)
    {
      return result;
    }

    goto LABEL_81;
  }

  return result;
}

void sub_1D0E61C78(uint64_t a1)
{
  v3 = (a1 + 40);
  sub_1D0E620B8(&v3);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }
}

void sub_1D0E61CC0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

void sub_1D0E61D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 40) = 0;
      *(a4 + 40) = *(v6 + 40);
      *(a4 + 56) = *(v6 + 56);
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      v7 = *(v6 + 64);
      v8 = *(v6 + 80);
      *(a4 + 96) = *(v6 + 96);
      *(a4 + 64) = v7;
      *(a4 + 80) = v8;
      v6 += 104;
      a4 += 104;
    }

    while (v6 != a3);
    do
    {
      sub_1D0E61C78(v5);
      v5 += 104;
    }

    while (v5 != a3);
  }
}

uint64_t sub_1D0E61DCC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 104;
    sub_1D0E61C78(i - 104);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1D0E61E1C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

uint64_t sub_1D0E61E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v13 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      v7 = *(v6 + 24);
      v8 = *(v6 + 40);
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 40) = v8;
      *(a4 + 24) = v7;
      v6 += 72;
      a4 += 72;
    }

    while (v6 != a3);
    v14 = a4;
    v12 = 1;
    do
    {
      v9 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v9;
        operator delete(v9);
      }

      v5 += 72;
    }

    while (v5 != a3);
  }

  return sub_1D0E61F4C(v11);
}

uint64_t sub_1D0E61F4C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1D0E61F84(a1);
  }

  return a1;
}

void sub_1D0E61F84(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 72);
      v3 -= 72;
      v4 = v5;
      if (v5)
      {
        *(v1 - 64) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t sub_1D0E61FD4(uint64_t a1)
{
  sub_1D0E6200C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1D0E6200C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 72);
    *(a1 + 16) = v2 - 72;
    if (v5)
    {
      *(v2 - 64) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 72;
    }
  }
}

uint64_t sub_1D0E6206C(uint64_t a1)
{
  v4 = (a1 + 40);
  sub_1D0E620B8(&v4);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1D0E620B8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1D0E6210C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1D0E6210C(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 72);
      v4 -= 72;
      v5 = v6;
      if (v6)
      {
        *(v2 - 64) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void sub_1D0E62164(int8x16_t *a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  sub_1D0E621A8(exception, a1);
  __cxa_throw(v3, &unk_1F4CF0A68, sub_1D0E62224);
}

int8x16_t sub_1D0E621A8(uint64_t a1, int8x16_t *a2)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *a1 = &unk_1F4CF0AC0;
  *(a1 + 8) = &unk_1F4CF0AF0;
  *(a1 + 16) = &unk_1F4CF0B18;
  *(a1 + 48) = a2[1].i32[0];
  result = vextq_s8(*a2, *a2, 8uLL);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D0E62224(uint64_t a1)
{
  *(a1 + 16) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 24));
  std::exception::~exception((a1 + 8));
  return a1;
}

void sub_1D0E6243C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1D0D278F8(&a9);
  sub_1D0D278F8(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_1D0E624A8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  sub_1D0E6275C(exception, a1);
  __cxa_throw(exception, &unk_1F4CF0A68, sub_1D0E62224);
}

void sub_1D0E62504(uint64_t a1)
{
  *(a1 + 16) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 24));
  std::exception::~exception((a1 + 8));

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E62578(uint64_t a1)
{
  *(a1 + 8) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 16));

  std::exception::~exception(a1);
}

void sub_1D0E625D4(uint64_t a1)
{
  *(a1 + 8) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 16));
  std::exception::~exception(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E62658(void *a1)
{
  *a1 = &unk_1F4CDEDE8;
  v1 = (a1 - 1);
  sub_1D0D278F8(a1 + 1);

  std::exception::~exception(v1);
}

void sub_1D0E626B0(void *a1)
{
  *a1 = &unk_1F4CDEDE8;
  v1 = (a1 - 1);
  sub_1D0D278F8(a1 + 1);
  std::exception::~exception(v1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E62724(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E6275C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CDEDB8;
  *(a1 + 8) = &unk_1F4CF0B38;
  v4 = *(a2 + 24);
  *(a1 + 16) = &unk_1F4CDEDE8;
  *(a1 + 24) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *a1 = &unk_1F4CF0AC0;
  *(a1 + 8) = &unk_1F4CF0AF0;
  *(a1 + 16) = &unk_1F4CF0B18;
  return a1;
}

void trackrun::GEOMapRunningTrackDataEvent::~GEOMapRunningTrackDataEvent(trackrun::GEOMapRunningTrackDataEvent *this)
{
  *this = &unk_1F4CF0B60;
  v1 = (this + 8);
  sub_1D0E62CA0(&v1);
}

{
  *this = &unk_1F4CF0B60;
  v1 = (this + 8);
  sub_1D0E62CA0(&v1);
}

{
  *this = &unk_1F4CF0B60;
  v2 = (this + 8);
  sub_1D0E62CA0(&v2);
  MEMORY[0x1D387ECA0](this, 0x10A1C40BB09DC8BLL);
}

void trackrun::VisitEvent::~VisitEvent(void **this)
{
  *this = &unk_1F4CF0B90;
  if (*(this + 279) < 0)
  {
    operator delete(this[32]);
  }

  if (*(this + 255) < 0)
  {
    operator delete(this[29]);
  }
}

{
  trackrun::VisitEvent::~VisitEvent(this);

  JUMPOUT(0x1D387ECA0);
}

void trackrun::WorkoutSessionEvent::~WorkoutSessionEvent(void **this)
{
  *this = &unk_1F4CF0BC0;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }
}

{
  *this = &unk_1F4CF0BC0;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }
}

{
  *this = &unk_1F4CF0BC0;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E62CA0(void ***a1)
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
        v4 -= 104;
        sub_1D0E61C78(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

trackrun::TrackRunParameters *trackrun::TrackRunParameters::TrackRunParameters(trackrun::TrackRunParameters *this, const trackrun::TrackRunPlatformInfo *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  *this = 0;
  sub_1D0B751F4(this + 1, "trackrun_output.bin");
  *(this + 16) = 1;
  sub_1D0B751F4(this + 5, "trackrun_debug.txt");
  *(this + 16) = 256;
  *(this + 34) = 256;
  v8 = 2;
  v9 = 0x40A3880000000000;
  v10 = 3;
  v11 = 0x40A3880000000000;
  v12 = 4;
  v13 = 0x4059000000000000;
  v4 = sub_1D0E62F60(this + 72, &v8, 3);
  *(this + 14) = 0x410E848000000000;
  *(this + 120) = 1;
  *(this + 8) = xmmword_1D0EC1CE0;
  *(this + 9) = xmmword_1D0EC1CF0;
  *(this + 10) = xmmword_1D0EC1D00;
  *(this + 22) = 0x3F50624DD2F1A9FCLL;
  *(this + 23) = 5;
  *(this + 24) = 0x4052C00000000000;
  *(this + 100) = 0;
  *(this + 202) = 0;
  *(this + 26) = 1;
  *(this + 108) = 256;
  *(this + 14) = xmmword_1D0E83260;
  *(this + 15) = xmmword_1D0EC1D10;
  *(this + 256) = 0;
  if (cnprint::CNPrinter::GetLogLevel(v4) <= 1)
  {
    LOWORD(v8) = 13;
    v7 = 1;
    cnprint::CNPrinter::Print(&v8, &v7, "Hardware platform %hu received", *a2);
  }

  if (*a2)
  {
    *this = *(a2 + 15) == 2;
    v5 = 1;
  }

  else
  {
    LOWORD(v8) = 13;
    v7 = 5;
    cnprint::CNPrinter::Print(&v8, &v7, "Error: Unsupported hardware type %hu detected", 0);
    v5 = 0;
  }

  *(this + 256) = v5;
  return this;
}

void sub_1D0E62F08(_Unwind_Exception *a1)
{
  sub_1D0BCB594(v1 + 72);
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0E62F60(uint64_t a1, int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 16 * a3;
    do
    {
      sub_1D0E62FD8(a1, a2, a2);
      a2 += 4;
      v5 -= 16;
    }

    while (v5);
  }

  return a1;
}

uint64_t *sub_1D0E62FD8(void *a1, int *a2, _OWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t trackrun::TrackRunLaneEstimator::Configure(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 1497) == 1)
  {
    v19 = 13;
    v18 = 2;
    cnprint::CNPrinter::Print(&v19, &v18, "TrackRunLaneEstimator::Configure() called more than once");
  }

  else
  {
    v2 = *a2;
    if (*a2)
    {
      if (*(v2 + 256))
      {
        *(a1 + 1504) = v2;
        v3 = *(v2 + 128);
        v5 = v3 < 0.0 || v3 > 1.0 || (*(v2 + 128) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
        if (v5 || ((v6 = *(v2 + 144), v6 >= 0.0) ? (v7 = v6 > 1.0) : (v7 = 1), !v7 ? (v8 = (*(v2 + 144) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000) : (v8 = 1), v8 || ((v9 = *(v2 + 152), v9 >= 0.0) ? (v10 = v9 > 1.0) : (v10 = 1), !v10 ? (v11 = (*(v2 + 152) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000) : (v11 = 1), v11 || ((v12 = *(v2 + 160), v12 >= 0.0) ? (v13 = v12 > 1.0) : (v13 = 1), !v13 ? (v14 = (*(v2 + 160) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000) : (v14 = 1), v14 || ((v15 = *(v2 + 176), v15 >= 0.0) ? (v16 = v15 > 1.0) : (v16 = 1), v16 || (*&v15 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)))))
        {
          v19 = 13;
          v18 = 4;
          cnprint::CNPrinter::Print(&v19, &v18, "TrackRunPositionContextEstimator::Configure() called with invalid trackrun parameter probabilities");
        }

        else
        {
          if (fabs(v6 + v9 + v12 + -1.0) <= 0.000000015)
          {
            *(a1 + 1497) = 1;
            v19 = 13;
            v18 = 2;
            cnprint::CNPrinter::Print(&v19, &v18, "TrackRunLaneEstimator configured successfully");
            return 0;
          }

          v19 = 13;
          v18 = 4;
          cnprint::CNPrinter::Print(&v19, &v18, "TrackRunPositionContextEstimator::Configure() lane transition probabilities don't add up to 1.0");
        }
      }

      else
      {
        v19 = 13;
        v18 = 4;
        cnprint::CNPrinter::Print(&v19, &v18, "TrackRunPositionContextEstimator::Configure() called with uninitialized trackrun parameters");
      }
    }

    else
    {
      v19 = 13;
      v18 = 4;
      cnprint::CNPrinter::Print(&v19, &v18, "TrackRunPositionContextEstimator::Configure() called with null trackrun parameters");
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t trackrun::TrackRunLaneEstimator::Initialize(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  *(v1 + 1488) = 0x3DDB7CDFD9D7BDBBLL;
  v4 = v2[16];
  *(v1 + 1496) = v4;
  if (v4)
  {
    v5 = v1;
    v121 = 0x10000000CLL;
    v116 = &unk_1F4CDFFF8;
    v122 = v123;
    memset(v123, 0, sizeof(v123));
    v117 = v4;
    v118 = 1;
    v119 = v4;
    v120 = v4;
    v6 = *(v1 + 1504);
    if (*(v6 + 120) == 1)
    {
      v7 = 1.0 / v4;
    }

    else
    {
      v7 = *(v6 + 128);
    }

    if (v2[88] == 1)
    {
      if (!v2[80])
      {
        LOWORD(v111) = 13;
        LOBYTE(v106) = 4;
        cnprint::CNPrinter::Print(&v111, &v106, "TrackRunLaneEstimator::Initialize(), provided lane number is invalid. Cannot initialize.");
        return 0xFFFFFFFFLL;
      }

      LODWORD(v8) = v2[80] - 1;
      if (v8 >= v4 - 1)
      {
        v8 = (v4 - 1);
      }

      else
      {
        v8 = v8;
      }

      v7 = *(v6 + 136);
    }

    else
    {
      v8 = 0;
    }

    if (v4 == 1)
    {
      v123[0] = 1.0;
      v9 = 1.0;
      v10 = 1;
    }

    else
    {
      v11 = v8;
      v12 = v4;
      v13 = v123;
      do
      {
        if (v11)
        {
          *v13 = 1.0 / (v4 - 1) * (1.0 - v7);
        }

        else
        {
          v123[v8] = v7;
        }

        ++v13;
        --v11;
        --v12;
      }

      while (v12);
      v9 = v123[0];
      v10 = v4;
    }

    if (v4 != 1)
    {
      v14 = 1;
      do
      {
        v9 = v9 + v123[v14++];
      }

      while (v10 != v14);
    }

    if (fabs(v9 + -1.0) > 1.0e-10 && cnprint::CNPrinter::GetLogLevel(v1) <= 1)
    {
      LOWORD(v111) = 2;
      LOBYTE(v106) = 1;
      cnprint::CNPrinter::Print(&v111, &v106, "WARNING: HMM initialized with non-normalized probability vector.");
    }

    v15 = 1.0;
    sub_1D0E656D4(&v106, &v116);
    v107 = v4;
    v108 = 1;
    v109 = v4;
    v110 = v4;
    v113 = 0x10000000CLL;
    *&v16.f64[1] = 0xC0000000CLL;
    v112 = xmmword_1D0E83DD0;
    v111 = &unk_1F4CDFFF8;
    v114 = &v115;
    v16.f64[0] = 1.0 / v9;
    sub_1D0B8930C(&v106, &v111, v16);
    sub_1D0B894B0(v5 + 1208, &v111);
    *&v17 = sub_1D0B894B0(v5 + 1344, v5 + 1208).n128_u64[0];
    *(v5 + 1480) = 1;
    v18 = *(v5 + 1496);
    if (*(v5 + 1496))
    {
      v19 = 0.0;
      v20 = 0.0;
      if (v18 != 1)
      {
        v21 = *(v5 + 1504);
        v15 = v21[18];
        v22 = v21[19];
        v23 = v21[20];
        v24 = v18 + -3.0;
        if (v24 < 1.0)
        {
          v24 = 1.0;
        }

        v25 = v23 / v24;
        v26 = v22 + v23;
        if (v18 == 2)
        {
          v23 = 0.0;
        }

        if (v18 > 3)
        {
          v20 = v25;
        }

        else
        {
          v22 = v26;
          v20 = v23;
        }

        v19 = v22 * 0.5;
        if (v18 >= 3 && v20 > v19 + 0.000000015)
        {
          LOWORD(v111) = 13;
          LOBYTE(v106) = 4;
          cnprint::CNPrinter::Print(&v111, &v106, "TrackRunLaneEstimator::Initialize(), probability of moving by one lane is less than the probability of moving by more than one lane, \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\trenormalizing to maintain proper transition matrix");
          v27 = 1.0;
          v28 = 1.0 - v15;
          if ((v18 - 1) >= 1.0)
          {
            v27 = (v18 - 1);
          }

          v19 = v28 / v27;
          v20 = v28 / v27;
        }
      }

      v93 = 0xC0000000CLL;
      v88 = &unk_1F4CF0DA0;
      v29 = v95;
      v94 = v95;
      v30 = v18 * v18;
      v89 = v18;
      v90 = v18;
      v91 = v18 * v18;
      v92 = v18;
      if ((v18 * v18) > 3)
      {
        v31 = &v95[v30];
        bzero(v95, 16 * ((v30 - 1) >> 1));
        *(v31 - 2) = 0;
        *(v31 - 1) = 0;
        v29 = v94;
      }

      else
      {
        bzero(v95, 8 * v30);
      }

      v32 = 0;
      v33 = v18 + 1;
      v34 = v18;
      do
      {
        v29[v32] = 0x3FF0000000000000;
        v32 += v33;
        --v34;
      }

      while (v34);
      v98 = 0xC0000000CLL;
      v96 = &unk_1F4CF0DA0;
      *&v35.f64[1] = 0xC00000090;
      v97 = xmmword_1D0EC1D30;
      v99 = &v100;
      v35.f64[0] = v15;
      sub_1D0B8930C(&v88, &v96, v35);
      v76[0] = 0xC0000000CLL;
      v71 = &unk_1F4CF0DA0;
      v76[1] = v77;
      v72 = v18;
      v73 = v18;
      v74 = v18 * v18;
      v75 = v18;
      __asm { FMOV            V0.2D, #1.0 }

      v48 = _Q0;
      if (v30 > 3)
      {
        memset_pattern16(v77, &unk_1D0E7F4B0, 16 * ((v30 - 1) >> 1));
        *&v76[v30] = v48;
      }

      else
      {
        memset_pattern16(v77, &unk_1D0E7F4B0, 8 * v30);
      }

      v68 = 0xC0000000CLL;
      v63 = &unk_1F4CF0DA0;
      v41 = v70;
      v69 = v70;
      v64 = v18;
      v65 = v18;
      v66 = v18 * v18;
      v67 = v18;
      if (v30 > 3)
      {
        v42 = &v70[v30];
        bzero(v70, 16 * ((v30 - 1) >> 1));
        *(v42 - 2) = 0;
        *(v42 - 1) = 0;
        v41 = v69;
      }

      else
      {
        bzero(v70, 8 * v30);
      }

      v43 = 0;
      v44 = v18;
      do
      {
        v41[v43] = 0x3FF0000000000000;
        v43 += v33;
        --v44;
      }

      while (v44);
      v80 = 0xC0000000CLL;
      v78 = &unk_1F4CF0DA0;
      v79 = xmmword_1D0EC1D30;
      v81 = &v82;
      sub_1D0BA5A78(&v71, &v63, &v78);
      v85 = 0xC0000000CLL;
      v83 = &unk_1F4CF0DA0;
      *&v45.f64[1] = 0xC00000090;
      v84 = xmmword_1D0EC1D30;
      v86 = &v87;
      v45.f64[0] = v20;
      sub_1D0B8930C(&v78, &v83, v45);
      v103 = 0xC0000000CLL;
      v102 = xmmword_1D0EC1D30;
      v101 = &unk_1F4CF0DA0;
      v104 = &v105;
      sub_1D0B88838(&v96, &v83, &v101);
      v54[0] = 0x10000000BLL;
      v49 = &unk_1F4CF0DE8;
      v54[1] = v55;
      v50 = v18 - 1;
      v51 = 1;
      v52 = v18 - 1;
      v53 = v18 - 1;
      if (v18 > 4)
      {
        memset_pattern16(v55, &unk_1D0E7F4B0, 16 * ((v18 - 2) >> 1));
        *&v54[(v18 - 1)] = v48;
      }

      else if (v18 != 1)
      {
        memset_pattern16(v55, &unk_1D0E7F4B0, 8 * (v18 - 1));
      }

      v58 = 0x10000000BLL;
      v56 = &unk_1F4CF0DE8;
      *&v46.f64[1] = 0xB0000000BLL;
      v57 = xmmword_1D0EC1D40;
      v59 = &v60;
      v46.f64[0] = v19 - v20;
      sub_1D0B8930C(&v49, &v56, v46);
      sub_1D0E65BE8(v61, &v56);
      sub_1D0E65950(v62);
    }

    LOWORD(v111) = 13;
    LOBYTE(v106) = 4;
    cnprint::CNPrinter::Print(&v111, &v106, "TrackRunLaneEstimator::Initialize(),invalid lane count,%d,could not initialize HMM", v17);
  }

  else
  {
    LOWORD(v111) = 13;
    LOBYTE(v106) = 4;
    cnprint::CNPrinter::Print(&v111, &v106, "TrackRunLaneEstimator::Initialize(), there is not at least one lane on the \t\t\t\t\t\tcurrent track, cannot initialize the lane estimator.", v3);
  }

  return 0xFFFFFFFFLL;
}

void sub_1D0E63E94(_Unwind_Exception *a1, __n128 a2)
{
  sub_1D0E65CCC(&STACK[0x5E8]);
  STACK[0x2C88] = &unk_1F4CD5E28;
  sub_1D0E65CCC(&STACK[0xBC0]);
  _Unwind_Resume(a1);
}

uint64_t trackrun::TrackRunLaneEstimator::UpdateLaneEstimate(trackrun::TrackRunLaneEstimator *this)
{
  if (*(this + 1498) != 1)
  {
    return 0;
  }

  v50[12] = v6;
  *&v50[13] = v5;
  v50[14] = v4;
  v50[15] = v3;
  v50[20] = v1;
  v50[21] = v2;
  v8 = 144;
  if (!*(this + 370))
  {
    v8 = 8;
  }

  v48 = 0x10000000CLL;
  v46 = &unk_1F4CDFFF8;
  v47 = xmmword_1D0E83DD0;
  v49 = v50;
  sub_1D0B894B0(&v46, this + v8 + 1200);
  v9 = v47;
  v10 = DWORD1(v47);
  if (v47 <= DWORD1(v47))
  {
    v11 = DWORD1(v47);
  }

  else
  {
    v11 = v47;
  }

  if (v47 && DWORD1(v47) && v11)
  {
    v12 = 0;
    v13 = v49;
    do
    {
      v14 = *(v13 + (v12 >> 29));
      if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        return 0;
      }

      if (v14 >= 0.0)
      {
        v15 = *(v13 + (v12 >> 29));
      }

      else
      {
        v15 = 0.0;
      }

      if (v14 <= 1.0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 1.0;
      }

      *(v13 + (v12 >> 29)) = v16;
      v12 += 0x100000000;
    }

    while (--v11);
  }

  if (v10)
  {
    v17 = 0;
    v18 = v49;
    v19 = 1;
    do
    {
      v20 = *&v18[(v9 * v17)];
      v21 = v19;
      v22 = v9 - 1;
      if (v9 >= 2)
      {
        do
        {
          v20 = v20 + *&v18[v21++];
          --v22;
        }

        while (v22);
      }

      v45[v17++] = v20;
      v19 += v9;
    }

    while (v17 != v10);
    v5 = v45[0];
  }

  if (fabs(v5 + -1.0) > 0.000000015)
  {
    LOWORD(v41) = 13;
    LOBYTE(v36) = 4;
    cnprint::CNPrinter::Print(&v41, &v36, "TrackRunPositionContextEstimator::UpdateLaneEstimate() has lane probabilities that don't add up to 1.0,%.3lf,sum_lane_probability. Renormalizing...", v5);
    v43 = 0x10000000CLL;
    v41 = &unk_1F4CDFFF8;
    v42 = xmmword_1D0E83DD0;
    v44 = v45;
    v24.f64[0] = 1.0 / v5;
    sub_1D0BC5ED4(&v46, &v41, v24);
    sub_1D0B894B0(&v46, &v41);
    v25 = DWORD1(v47);
    if (DWORD1(v47))
    {
      v26 = 0;
      v27 = v47;
      v28 = v49;
      v29 = 1;
      do
      {
        v30 = *&v28[(v27 * v26)];
        v31 = v29;
        v32 = v27 - 1;
        if (v27 >= 2)
        {
          do
          {
            v30 = v30 + *&v28[v31++];
            --v32;
          }

          while (v32);
        }

        v45[v26++] = v30;
        v29 += v27;
      }

      while (v26 != v25);
      v33 = v45[0] + -1.0;
    }

    else
    {
      v33 = NAN;
    }

    if (fabs(v33) > 0.000000015)
    {
      LOWORD(v41) = 13;
      LOBYTE(v36) = 4;
      cnprint::CNPrinter::Print(&v41, &v36, "TrackRunPositionContextEstimator::UpdateLaneEstimate() has lane probabilities that don't add up to 1.0. Cannot update lane estimate.");
      return 0;
    }
  }

  v43 = 0x100000001;
  v41 = &unk_1F4CDF418;
  *&v34 = 0x100000001;
  *(&v34 + 1) = 0x100000001;
  v42 = v34;
  v44 = v45;
  v38 = 0x100000001;
  v36 = &unk_1F4CDF460;
  v37 = v34;
  v39 = &v40;
  sub_1D0BBAD9C(&v46, &v41, &v36);
  v35 = *v39;
  if ((*(this + 1) & 1) == 0)
  {
    *(this + 1) = 1;
  }

  *this = v35 + 1;
  return 1;
}

void trackrun::TrackRunLaneEstimator::HandleEvidence(trackrun::TrackRunLaneEstimator *a1, double *a2)
{
  v2 = a2[1];
  v3 = *a2;
  if (a2[2] > 0.000000015 && ((v3 = fabs(v3), v2 > 0.000000015) ? (v4 = v2 < 20.0) : (v4 = 0), v4 ? (v5 = v3 < 20.0) : (v5 = 0), v5))
  {
    if (!trackrun::TrackRunLaneEstimator::HmmPredictAndUpdate(a1, a2))
    {

      trackrun::TrackRunLaneEstimator::UpdateLaneEstimate(a1);
    }
  }

  else
  {
    v8 = 13;
    v7 = 4;
    cnprint::CNPrinter::Print(&v8, &v7, "Across track distance evidence invalid. Cannot inject into the HMM.", v2, v3);
  }
}

uint64_t trackrun::TrackRunLaneEstimator::HmmPredictAndUpdate(uint64_t a1, uint64_t a2)
{
  v121 = *MEMORY[0x1E69E9840];
  LOBYTE(v87) = 0;
  v92 = 0;
  *v120 = 0;
  *&v120[3] = 0;
  *&v120[7] = *(a2 + 24);
  v82 = 0;
  *v83 = *v120;
  *&v83[15] = *&v120[15];
  v84 = 0;
  memset(v86, 0, sizeof(v86));
  v85 = 0;
  if (*(a1 + 1576))
  {
    v87 = &unk_1F4CF0CE0;
    v88 = *(a1 + 1520);
    v89 = *(a1 + 1536);
    v90 = *(a1 + 1552);
    v91 = *(a1 + 1568);
    v92 = 1;
  }

  v4 = trackrun::TrackRunLaneEstimator::HmmPredict(a1, &v82);
  *&v72 = 0;
  *(&v72 + 1) = 0x7FF8000000000000;
  v78 = 0x10000000CLL;
  v73 = &unk_1F4CDFFF8;
  v79 = v80;
  memset(v80, 0, sizeof(v80));
  v81 = 0;
  v5 = *(a1 + 1496);
  v74 = v5;
  v75 = 1;
  v76 = v5;
  v77 = v5;
  v6 = *(a2 + 16);
  if (fabs(v6) == INFINITY || v6 <= 0.000000015)
  {
    LOWORD(v63) = 13;
    LOBYTE(v115) = 4;
    cnprint::CNPrinter::Print(&v63, &v115, "TrackRunPositionContextEstimator::HmmPredictAndUpdate() failed. Provided evidence has standard deviation with a value of zero or inf,%.1lf", v6);
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    v7 = 0;
    v8 = *(a2 + 8);
    v9 = INFINITY;
    do
    {
      if (v9 >= *a2 + v7 * v8)
      {
        v9 = *a2 + v7 * v8;
      }

      ++v7;
    }

    while (v5 != v7);
  }

  else
  {
    v9 = INFINITY;
  }

  if (v9 > v6)
  {
    v6 = v9;
  }

  v10 = v6;
  v12 = cnstatistics::NormalCDF(v4, *a2 + *(a2 + 8) * -0.5, 0.0, v6);
  LOBYTE(v13) = *(a1 + 1496);
  if (v13)
  {
    v14 = v12;
    v15 = 0;
    do
    {
      v16 = cnstatistics::NormalCDF(v11, *a2 + (v15 + 0.5) * *(a2 + 8), 0.0, v10);
      v17 = *(*(a1 + 1504) + 176);
      if (v17 <= v16 - v14)
      {
        v17 = v16 - v14;
      }

      *&v79[8 * v15++] = v17;
      v13 = *(a1 + 1496);
      v14 = v16;
    }

    while (v15 < v13);
  }

  v67 = 0x10000000CLL;
  v65 = &unk_1F4CDFFF8;
  v68 = v69;
  v66 = xmmword_1D0E83DD0;
  memset(v69, 0, sizeof(v69));
  v70 = 0;
  v71 = *(a2 + 24);
  v81 = v13;
  v64 = v72;
  sub_1D0B894B0(&v65, &v73);
  v70 = v81;
  v63 = sub_1D0E654D4;
  if (*(a1 + 1480) == 1)
  {
    sub_1D0B894B0(a1 + 1208, a1 + 1344);
  }

  v101 = 0x100000001;
  *&v18 = 0x100000001;
  *(&v18 + 1) = 0x100000001;
  v100 = v18;
  v99[12] = &unk_1F4CF0E78;
  v102 = &v103;
  v103 = sub_1D0E654D4;
  v97 = 0x10000000CLL;
  v96 = v18;
  v95 = &unk_1F4CF0F00;
  v98 = v99;
  v99[0] = &v64;
  v19 = *(a1 + 1216);
  v20 = *(a1 + 1220);
  sub_1D0B95DC8(v93, &v95);
  if (v19 <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  if (v20)
  {
    _ZF = v19 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    v23 = 0;
  }

  else
  {
    v23 = v21;
  }

  v24 = *(a1 + 1488);
  if (!*(a1 + 1216) || !*(a1 + 1220))
  {
    if ((v23 & 0x80000000) != 0)
    {
      __assert_rtn("Ones", "cnmatrix.h", 2317, "nr >= 0");
    }

    v112 = 0x10000000CLL;
    v110 = &unk_1F4CDFFF8;
    v113 = v114;
    *&v111 = v23 | 0x100000000;
    DWORD2(v111) = v23;
    HIDWORD(v111) = v23;
    if (v23 > 3)
    {
      memset_pattern16(v114, &unk_1D0E7F4B0, 16 * ((v23 - 1) >> 1));
      __asm { FMOV            V0.2D, #1.0 }

      *(&v112 + v23) = _Q0;
    }

    else if (v23)
    {
      memset_pattern16(v114, &unk_1D0E7F4B0, (8 * v23));
    }

    v117 = 0x10000000CLL;
    v27.n128_u64[1] = 0xC0000000CLL;
    v116 = xmmword_1D0E83DD0;
    v115 = &unk_1F4CDFFF8;
    v118 = v119;
    v27.n128_f64[0] = 1.0 / v23;
    goto LABEL_46;
  }

  v117 = 0x10000000CLL;
  v116 = xmmword_1D0E83DD0;
  v115 = &unk_1F4CDFFF8;
  v118 = v119;
  v25 = sub_1D0B94BA0(a1 + 1208, 1, &v115);
  v26 = *v118;
  if (fabs(*v118 + -1.0) > v24)
  {
    if (cnprint::CNPrinter::GetLogLevel(v25) <= 1)
    {
      LOWORD(v115) = 2;
      LOBYTE(v110) = 1;
      cnprint::CNPrinter::Print(&v115, &v110, "WARNING: HMM update passed a non-normalized probability vector.");
    }

    if ((v23 & 0x80000000) != 0)
    {
      __assert_rtn("Reshape", "cnmatrix.h", 2936, "nr >= 0");
    }

    v27 = sub_1D0E656D4(&v110, a1 + 1208);
    *&v111 = v23 | 0x100000000;
    DWORD2(v111) = v23;
    HIDWORD(v111) = v23;
    v117 = 0x10000000CLL;
    v116 = xmmword_1D0E83DD0;
    v115 = &unk_1F4CDFFF8;
    v118 = v119;
    v27.n128_f64[0] = 1.0 / v26;
LABEL_46:
    sub_1D0B8930C(&v110, &v115, v27);
    goto LABEL_47;
  }

  if ((v23 & 0x80000000) != 0)
  {
    __assert_rtn("Reshape", "cnmatrix.h", 2936, "nr >= 0");
  }

  sub_1D0E656D4(&v115, a1 + 1208);
  *&v116 = v23 | 0x100000000;
  DWORD2(v116) = v23;
  HIDWORD(v116) = v23;
LABEL_47:
  sub_1D0B894B0(a1 + 1208, &v115);
  sub_1D0E656D4(&v115, a1 + 1208);
  v32 = *v102;
  v112 = 0x10000000CLL;
  v110 = &unk_1F4CDFFF8;
  v111 = xmmword_1D0E83DD0;
  v113 = v114;
  v33 = v32(*v94, &v110);
  if (v33)
  {
    LOWORD(v104) = 2;
    v109 = 4;
    cnprint::CNPrinter::Print(&v104, &v109, "ERROR: HMM emission function failed.");
    v35 = 29;
LABEL_70:
    LOWORD(v115) = 13;
    LOBYTE(v110) = 4;
    cnprint::CNPrinter::Print(&v115, &v110, "failed to update,code,%d", v35);
    return 0xFFFFFFFFLL;
  }

  if (v23)
  {
    v36 = 0.0;
    v37 = v113;
    v38 = v113;
    v39 = v23;
    do
    {
      v40 = *v38;
      if (*v38 < 0.0 || v40 > 1.0)
      {
        LOWORD(v104) = 2;
        v109 = 4;
        cnprint::CNPrinter::Print(&v104, &v109, "ERROR: HMM emission probability matrix is invalid.", v36, 1.0, v40);
        goto LABEL_69;
      }

      v36 = v36 + v40;
      ++v38;
      --v39;
    }

    while (v39);
    if (fabs(v36) > v24)
    {
      v42 = v118;
      do
      {
        v43 = *v37++;
        v34.n128_f64[0] = v43 * *v42;
        *v42++ = v34.n128_f64[0];
        --v23;
      }

      while (v23);
      goto LABEL_62;
    }

LABEL_68:
    LOWORD(v104) = 2;
    v109 = 4;
    cnprint::CNPrinter::Print(&v104, &v109, "ERROR: HMM emission probability matrix is null matrix");
LABEL_69:
    v35 = 30;
    goto LABEL_70;
  }

  if (v24 >= 0.0)
  {
    goto LABEL_68;
  }

LABEL_62:
  v44 = DWORD1(v116);
  if (DWORD1(v116))
  {
    v45 = 0;
    v46 = v116;
    v47 = v118;
    v48 = v116 - 1;
    v49 = 1;
    do
    {
      v50 = v47[v46 * v45];
      v51 = v49;
      v52 = v48;
      if (v46 >= 2)
      {
        do
        {
          v50 = v50 + v47[v51++];
          --v52;
        }

        while (v52);
      }

      v108[v45++] = v50;
      v49 += v46;
    }

    while (v45 != v44);
    v34.n128_f64[0] = v108[0];
  }

  if (fabs(v34.n128_f64[0]) < 2.22044605e-16)
  {
    if (cnprint::CNPrinter::GetLogLevel(v33) <= 1)
    {
      LOWORD(v104) = 2;
      v109 = 1;
      cnprint::CNPrinter::Print(&v104, &v109, "HMM state is null vector after update; revert to input state");
    }

    v34 = sub_1D0B894B0(&v115, a1 + 1208);
    v54 = DWORD1(v116);
    if (DWORD1(v116))
    {
      v55 = 0;
      v56 = v116;
      v57 = v118;
      v58 = v116 - 1;
      v59 = 1;
      do
      {
        v60 = v57[v56 * v55];
        v61 = v59;
        v62 = v58;
        if (v56 >= 2)
        {
          do
          {
            v60 = v60 + v57[v61++];
            --v62;
          }

          while (v62);
        }

        v108[v55++] = v60;
        v59 += v56;
      }

      while (v55 != v54);
      v34.n128_f64[0] = v108[0];
    }
  }

  v106 = 0x10000000CLL;
  v105 = xmmword_1D0E83DD0;
  v104 = &unk_1F4CDFFF8;
  v107 = v108;
  v34.n128_f64[0] = 1.0 / v34.n128_f64[0];
  sub_1D0B8930C(&v115, &v104, v34);
  sub_1D0B894B0(&v115, &v104);
  sub_1D0B894B0(a1 + 1344, &v115);
  result = 0;
  *(a1 + 1480) = 1;
  return result;
}

__n128 trackrun::TrackRunLaneEstimator::SetTrackRunHintEvent(__n128 *this, const trackrun::TrackRunHintEvent *a2)
{
  if (this[98].n128_u8[8] == 1)
  {
    result = *(a2 + 8);
    v3 = *(a2 + 24);
    v4 = *(a2 + 40);
    this[98].n128_u8[0] = *(a2 + 56);
    this[97] = v4;
    this[96] = v3;
    this[95] = result;
  }

  else
  {
    this[94].n128_u64[1] = &unk_1F4CF0CE0;
    result = *(a2 + 8);
    v5 = *(a2 + 24);
    v6 = *(a2 + 40);
    this[98].n128_u8[0] = *(a2 + 56);
    this[97] = v6;
    this[96] = v5;
    this[95] = result;
    this[98].n128_u8[8] = 1;
  }

  return result;
}

uint64_t trackrun::TrackRunLaneEstimator::HmmPredict(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 1498) & 1) == 0)
  {
    LOWORD(v44) = 13;
    LOBYTE(v58) = 4;
    cnprint::CNPrinter::Print(&v44, &v58, "Failed to predict and update HMM, Uninitialized");
    return 0xFFFFFFFFLL;
  }

  v50 = 0xC0000000CLL;
  v45 = &unk_1F4CF0DA0;
  v51 = v52;
  bzero(v52, 0x480uLL);
  for (i = 56; i != 1304; i += 104)
  {
    *(&v44 + i) = 0x3FF0000000000000;
  }

  v44 = *(a2 + 8);
  v46 = *(a1 + 1496);
  v47 = v46;
  v48 = v46 * v46;
  v49 = v46;
  v52[1152] = v46;
  sub_1D0B894B0(&v45, a1 + 8);
  if (*(a2 + 112) == 1)
  {
    v6 = *(a2 + 104);
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = *(a2 + 104);
    }

    if (v6 > *(a1 + 1496))
    {
      v7 = *(a1 + 1496);
    }

    if (*(a1 + 1496))
    {
      v8 = v7;
    }

    else
    {
      v8 = *(a2 + 104);
    }

    if (cnprint::CNPrinter::GetLogLevel(v5) <= 1)
    {
      LOWORD(v58) = 13;
      LOBYTE(v63) = 1;
      cnprint::CNPrinter::Print(&v58, &v63, "HMM Prioritizing lane %d", v8);
    }

    v9 = v47;
    if (v47)
    {
      v10 = 0;
      v11 = 0;
      v12 = *(*(a1 + 1504) + 168);
      v13 = v8 - 1;
      if (!v8)
      {
        v13 = 0;
      }

      v14 = v51;
      v15 = v49;
      v16 = v46;
      do
      {
        if (v16)
        {
          v17 = (1.0 - v12) / (1.0 - *&v14[8 * v13 + 8 * v11 * v15]);
          v18 = v10;
          v19 = v13;
          v20 = v16;
          do
          {
            v21 = v17 * *&v14[8 * v18];
            if (!v19)
            {
              v21 = v12;
            }

            *&v14[8 * v18] = v21;
            --v19;
            ++v18;
            --v20;
          }

          while (v20);
        }

        ++v11;
        v10 += v15;
      }

      while (v11 != v9);
    }
  }

  if (!*(a1 + 1480))
  {
    sub_1D0B894B0(a1 + 1344, a1 + 1208);
  }

  v22 = *(a1 + 1352);
  v23 = *(a1 + 1356);
  if (v22)
  {
    v24 = v23 == 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = v24;
  if (v22 <= v23)
  {
    v26 = *(a1 + 1356);
  }

  else
  {
    v26 = *(a1 + 1352);
  }

  if (v25)
  {
    v27 = 0;
  }

  else
  {
    v27 = v26;
  }

  if (v25 == 1)
  {
    v65 = 0x10000000CLL;
    v63 = &unk_1F4CDFFF8;
    v66 = v67;
    v64 = xmmword_1D0E7F490;
    v60 = 0x10000000CLL;
    *&v28.f64[1] = 0xC0000000CLL;
    v59 = xmmword_1D0E83DD0;
    v58 = &unk_1F4CDFFF8;
    v61 = v62;
    v28.f64[0] = INFINITY;
    v29 = &v63;
LABEL_47:
    sub_1D0B8930C(v29, &v58, v28);
    goto LABEL_50;
  }

  v30 = *(a1 + 1488);
  v60 = 0x10000000CLL;
  v59 = xmmword_1D0E83DD0;
  v58 = &unk_1F4CDFFF8;
  v61 = v62;
  v31 = sub_1D0B94BA0(a1 + 1344, 1, &v58);
  v32 = *v61;
  if (fabs(*v61 + -1.0) > v30)
  {
    if (cnprint::CNPrinter::GetLogLevel(v31) <= 1)
    {
      LOWORD(v58) = 2;
      LOBYTE(v63) = 1;
      cnprint::CNPrinter::Print(&v58, &v63, "WARNING: HMM prediction passed a non-normalized probability vector.");
    }

    if ((v26 & 0x80000000) == 0)
    {
      sub_1D0E656D4(&v63, a1 + 1344);
      *&v64 = v26 | 0x100000000;
      DWORD2(v64) = v26;
      HIDWORD(v64) = v26;
      v60 = 0x10000000CLL;
      *&v28.f64[1] = 0xC0000000CLL;
      v59 = xmmword_1D0E83DD0;
      v58 = &unk_1F4CDFFF8;
      v61 = v62;
      v28.f64[0] = 1.0 / v32;
      goto LABEL_47;
    }

LABEL_70:
    __assert_rtn("Reshape", "cnmatrix.h", 2936, "nr >= 0");
  }

  if ((v26 & 0x80000000) != 0)
  {
    goto LABEL_70;
  }

  sub_1D0E656D4(&v58, a1 + 1344);
  *&v59 = v26 | 0x100000000;
  DWORD2(v59) = v26;
  HIDWORD(v59) = v26;
LABEL_50:
  sub_1D0B894B0(a1 + 1344, &v58);
  *(a1 + 1480) = 1;
  v60 = 0xC0000000CLL;
  v59 = xmmword_1D0EC1D30;
  v58 = &unk_1F4CF0DA0;
  v61 = v62;
  v33 = sub_1D0E65434(&v44, &v58);
  if (v33)
  {
    LOWORD(v63) = 2;
    LOBYTE(v53) = 4;
    cnprint::CNPrinter::Print(&v63, &v53, "ERROR: HMM transition probability function failed.");
LABEL_52:
    LOWORD(v58) = 13;
    LOBYTE(v63) = 4;
    cnprint::CNPrinter::Print(&v58, &v63, "failed to predict,code,%d");
    return 0xFFFFFFFFLL;
  }

  if (v27)
  {
    v35 = 0;
    v36 = 0;
    v37 = v61;
LABEL_56:
    v38 = 0.0;
    v39 = v37;
    v40 = v27;
    while (1)
    {
      v41 = *v39;
      if (*v39 < 0.0 || v41 > 1.0)
      {
        break;
      }

      v38 = v38 + v41;
      ++v39;
      if (!--v40)
      {
        if (fabs(v38 + -1.0) <= *(a1 + 1488))
        {
          ++v35;
          v37 += SHIDWORD(v59);
          v36 = v35 >= v27;
          if (v35 != v27)
          {
            goto LABEL_56;
          }
        }

        break;
      }
    }

    if (!v36)
    {
      if (cnprint::CNPrinter::GetLogLevel(v33) <= 1)
      {
        LOWORD(v63) = 2;
        LOBYTE(v53) = 1;
        cnprint::CNPrinter::Print(&v63, &v53, "ERROR: HMM transition probability matrix is invalid.");
      }

      goto LABEL_52;
    }
  }

  v65 = 0x10000000CLL;
  v64 = xmmword_1D0E83DD0;
  v63 = &unk_1F4CDFFF8;
  v66 = v67;
  sub_1D0B89390(&v58, a1 + 1344, &v63);
  sub_1D0B894B0(a1 + 1208, &v63);
  v55 = 0x10000000CLL;
  v54 = xmmword_1D0E83DD0;
  v53 = &unk_1F4CDFFF8;
  v56 = &v57;
  sub_1D0B94BA0(a1 + 1208, 1, &v53);
  v43.f64[0] = 1.0 / *v56;
  v65 = 0x10000000CLL;
  v64 = xmmword_1D0E83DD0;
  v63 = &unk_1F4CDFFF8;
  v66 = v67;
  sub_1D0B8930C(a1 + 1208, &v63, v43);
  sub_1D0B894B0(a1 + 1208, &v63);
  result = 0;
  *(a1 + 1480) = 0;
  return result;
}

uint64_t sub_1D0E65434(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 1208);
  if (v2 < 0xD)
  {
    a2[2] = v2;
    a2[3] = v2;
    a2[4] = v2 * v2;
    a2[5] = v2;
    sub_1D0B894B0(a2, a1 + 16);
    return 0;
  }

  else
  {
    v5 = 13;
    v4 = 4;
    cnprint::CNPrinter::Print(&v5, &v4, "time,%.3lf,t-function failure on line %d: %s() %s", *(a1 + 8) + *a1, 197, "t_TrackRunLane", "inadequate matrix size");
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1D0E654D4(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 152);
  if (v2 <= 0xC)
  {
    if (!*(a1 + 152))
    {
LABEL_20:
      a2[2] = v2;
      a2[3] = 1;
      a2[4] = v2;
      a2[5] = v2;
      sub_1D0B894B0(a2, a1 + 16);
      return 0;
    }

    v3 = *(a1 + 48);
    v4 = *(a1 + 152);
    while (1)
    {
      v5 = *v3 & 0x7FFFFFFFFFFFFFFFLL;
      v6 = *v3 <= -1 || (v5 - 0x10000000000000) >> 53 >= 0x3FF;
      v7 = v6 && (*v3 - 1) >= 0xFFFFFFFFFFFFFLL;
      v8 = !v7 || v5 == 0;
      if (!v8 || *v3 > 1.0)
      {
        break;
      }

      ++v3;
      if (!--v4)
      {
        goto LABEL_20;
      }
    }

    v14 = 13;
    v13 = 4;
    cnprint::CNPrinter::Print(&v14, &v13, "time,%.3lf,e-function failure on line %d: %s() %s");
  }

  else
  {
    v12 = 13;
    v11 = 4;
    cnprint::CNPrinter::Print(&v12, &v11, "time,%.3lf,e-function failure on line %d: %s() %s");
  }

  return 0xFFFFFFFFLL;
}

_BYTE *trackrun::TrackRunLaneEstimator::Reset(_BYTE *this)
{
  this[1498] = 0;
  this[1496] = 0;
  if (this[1] == 1)
  {
    this[1] = 0;
  }

  if (this[1576] == 1)
  {
    this[1576] = 0;
  }

  return this;
}

__n128 sub_1D0E656D4(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x10000000CLL;
  *(a1 + 24) = 0x10000000CLL;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CDFFF8;
  if (a1 == a2)
  {
    v17 = "this != &(A)";
    v18 = 603;
    goto LABEL_16;
  }

  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 0xC)
  {
    v17 = "this->max_num_rows_ >= A.num_rows_";
    v18 = 616;
    goto LABEL_16;
  }

  if (v3 >= 2)
  {
    v17 = "this->max_num_cols_ >= A.num_cols_";
    v18 = 617;
LABEL_16:
    __assert_rtn("CNMatrix", "cnmatrix.h", v18, v17);
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v7 - 1) >> 1;
    v13 = v11;
    v14 = (a1 + 40);
    do
    {
      v15 = *v13++;
      *v14++ = v15;
      --v12;
    }

    while (v12);
    v16 = v10;
    result = *(v11 + v16 * 8);
    *&v6[v16] = result;
  }

  else if (v5 >= 1)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6++ = v9;
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1D0E65858(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v13, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

void sub_1D0E65950(uint64_t a1)
{
  *(a1 + 24) = 0x3000000030;
  *a1 = &unk_1F4CF0E30;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = xmmword_1D0EC1D50;
  sub_1D0E65B68(a1);
}

void sub_1D0E659B4(_Unwind_Exception *exception_object)
{
  v3 = v1[5];
  v1[5] = 0;
  if (v3)
  {
    MEMORY[0x1D387EC80](v3, 0x1000C8000313F17);
  }

  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(exception_object);
}

void sub_1D0E659FC(void *a1, __n128 a2)
{
  sub_1D0E65CCC(a1);

  JUMPOUT(0x1D387ECA0);
}

double sub_1D0E65BE8(uint64_t a1, uint64_t a2)
{
  *&result = 0xC0000000CLL;
  *(a1 + 24) = 0xC0000000CLL;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CF0DA0;
  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 0xC)
  {
    v9 = "this->max_num_rows_ >= A.NumRows()";
    v10 = 567;
    goto LABEL_9;
  }

  if (v3 > 0xC)
  {
    v9 = "this->max_num_cols_ >= A.NumCols()";
    v10 = 568;
LABEL_9:
    __assert_rtn("CNMatrix", "cnmatrix.h", v10, v9);
  }

  if (v5 >= 1)
  {
    v7 = *(a2 + 32);
    do
    {
      v8 = *v7++;
      result = v8;
      *v6++ = v8;
      --v5;
    }

    while (v5);
  }

  return result;
}

void *sub_1D0E65CCC(void *a1)
{
  *a1 = &unk_1F4CF0E30;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0E65DC4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(&v9, v4);
      if (v4 >= 3)
      {
        v6 = v9;
        v7 = 8;
        v8 = v3 + v1 - v5;
        do
        {
          if (!v6)
          {
            *(*(a1 + 32) + 8 * (v8 % (v4 - 1))) = *(*(a1 + 32) + v7);
            v6 = 1;
          }

          v8 += v3 + v1 - v5;
          v7 += 8;
        }

        while (8 * (v4 - 1) != v7);
      }
    }
  }
}

void sub_1D0E65EB8(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v13, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = 1;
        do
        {
          v8 = &v13[v7];
          if ((v13[v7] & 1) == 0)
          {
            v9 = *(*(a1 + 32) + 8 * v7);
            v10 = v7;
            do
            {
              v10 = (v10 * (v3 + v1 - v5)) % v6;
              v11 = *(a1 + 32);
              v12 = *(v11 + 8 * v10);
              *(v11 + 8 * v10) = v9;
              *v8 = 1;
              v8 = &v13[v10];
              v9 = v12;
            }

            while (!*v8);
          }

          ++v7;
        }

        while (v7 != v6);
      }
    }
  }
}

uint64_t trackrun::TrackRunPlatformInfo::TrackRunPlatformInfo(uint64_t this)
{
  *(this + 32) = 0u;
  *(this + 48) = 0u;
  *this = 0u;
  *(this + 16) = 0u;
  return sub_1D0E65FC4(this);
}

{
  *(this + 32) = 0u;
  *(this + 48) = 0u;
  *this = 0u;
  *(this + 16) = 0u;
  return sub_1D0E65FC4(this);
}

uint64_t sub_1D0E65FC4(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  sub_1D0B751F4((a1 + 8), &unk_1D0ED80C5);
  sub_1D0B751F4((a1 + 32), &unk_1D0ED80C5);
  *(a1 + 56) = 0;
  return a1;
}

void sub_1D0E66014(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void trackrun::TrackRunEngineActiveObject::PopulateAllStartingLineFields(trackrun::TrackRunEngineActiveObject *this)
{
  if (*(this + 2568))
  {
    if ((*(this + 368) & 1) == 0)
    {
      sub_1D0C42F28();
    }

    v1 = *(this + 22);
    v2 = *(this + 376);
    v3 = vmulq_f64(vsubq_f64(*(this + 2408), v1), v2);
    v4 = vmulq_f64(vsubq_f64(*(this + 2392), v1), v2);
    *(this + 2440) = vextq_s8(v3, v3, 8uLL);
    *(this + 2424) = vextq_s8(v4, v4, 8uLL);
    v5 = sqrt((*&v4.i64[1] - *&v3.i64[1]) * (*&v4.i64[1] - *&v3.i64[1]) + 0.0 + (*v4.i64 - *v3.i64) * (*v4.i64 - *v3.i64));
    v6 = (*&v3.i64[1] - *&v4.i64[1]) / v5;
    *(this + 313) = v6;
    *(this + 2512) = 1;
    v7 = (*v3.i64 - *v4.i64) / v5;
    *(this + 315) = v7;
    *(this + 2528) = 1;
    if ((*(this + 2496) & 1) == 0)
    {
      *(this + 2496) = 1;
    }

    *(this + 154) = *(this + 2424);
    v8 = *(this + 308);
    v9 = *(this + 309);
    v10 = v6 + v8;
    v11 = v7 + v9;
    *(this + 310) = v10;
    *(this + 311) = v11;
    if (fabs(sqrt((v8 - v10) * (v8 - v10) + 0.0 + (v9 - v11) * (v9 - v11)) + -1.0) > 0.000000015)
    {
      v13 = 13;
      v12 = 4;
      cnprint::CNPrinter::Print(&v13, &v12, "#tre_ao,starting line segment unit direction vector length is not unity,length,%.1lf");
    }
  }

  else
  {
    v15 = 13;
    v14 = 4;
    cnprint::CNPrinter::Print(&v15, &v14, "#tre_ao,cannot populate starting line fields. No starting line geodetic coordinates available");
  }
}

uint64_t trackrun::TrackRunEngineActiveObject::TrackCoordinateTransform::ConvertLatLonToEastNorth@<X0>(uint64_t result@<X0>, float64x2_t *a2@<X1>, int8x16_t *a3@<X8>)
{
  if (*(result + 16))
  {
    v3 = vmulq_f64(vsubq_f64(*a2, *result), *(result + 24));
    *a3 = vextq_s8(v3, v3, 8uLL);
    v4 = 1;
  }

  else
  {
    v4 = 0;
    a3->i8[0] = 0;
  }

  a3[1].i8[0] = v4;
  return result;
}

int64x2_t trackrun::TrackRunEngineActiveObject::TrackCoordinateTransform::Reset(trackrun::TrackRunEngineActiveObject::TrackCoordinateTransform *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  result = vdupq_n_s64(0x7FF8000000000000uLL);
  *(this + 24) = result;
  return result;
}

BOOL trackrun::TrackRunEngineActiveObject::TrackCoordinateTransform::SetTransformationOriginUsingLatLon(uint64_t a1, uint64_t a2, double *a3)
{
  if ((*a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a2 + 8) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    LOWORD(v14) = 13;
    LOBYTE(v13) = 4;
    cnprint::CNPrinter::Print(&v14, &v13, "#tre_ao,invalid origin for track coordinate transform,%.3lf,%.3lf");
    return 0;
  }

  if (fabs(*a2) > 80.0)
  {
    LOWORD(v14) = 13;
    LOBYTE(v13) = 4;
    cnprint::CNPrinter::Print(&v14, &v13, "#tre_ao,origin too close to poles,lat,%.9lf");
    return 0;
  }

  v7 = *(a1 + 16);
  *a1 = *a2;
  if ((v7 & 1) == 0)
  {
    *(a1 + 16) = 1;
  }

  v8 = *a1;
  v13 = 0.0;
  v14 = 0.0;
  v9 = cnnavigation::GeodeticLatLonIncrementsToNorthEastMetersPerRadian(&v14, v8 * 0.0174532925, 0.0, &v13, a3);
  v4 = v9 == 0;
  if (v9)
  {
    v12 = 13;
    v11 = 4;
    cnprint::CNPrinter::Print(&v12, &v11, "#tre_ao,error converting delta lat/lon to delta N/E,lat,%.9lf", v8);
  }

  else
  {
    v10.f64[0] = v14;
    v10.f64[1] = v13;
    *(a1 + 24) = vmulq_f64(v10, vdupq_n_s64(0x3F91DF46A2529D39uLL));
  }

  return v4;
}

double trackrun::TrackRunEngineActiveObject::TrackRunEngineActiveObject(uint64_t a1)
{
  *(a1 + 56) = 0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 64) = 1065353216;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 105) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x7FF8000000000000;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0x7FF8000000000000;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *a1 = &unk_1F4CF0F48;
  *(a1 + 224) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 288) = 850045863;
  *(a1 + 368) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 337) = 0u;
  *(a1 + 376) = 0x7FF8000000000000;
  *(a1 + 384) = 0x7FF8000000000000;
  *(a1 + 392) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0;
  *(a1 + 744) = 0;
  *(a1 + 752) = 0;
  *(a1 + 816) = 0;
  *(a1 + 824) = 0;
  *(a1 + 1104) = 0;
  *(a1 + 1112) = 0;
  *(a1 + 1176) = 0;
  *(a1 + 1184) = 0;
  *(a1 + 1416) = 0;
  *(a1 + 1424) = 0;
  *(a1 + 1800) = 0;
  *(a1 + 1808) = 0;
  *(a1 + 2184) = 0;
  *(a1 + 2192) = 0;
  *(a1 + 2280) = 0;
  *(a1 + 2288) = 0;
  *(a1 + 2376) = 0;
  *(a1 + 2384) = 0;
  *(a1 + 2392) = 0;
  *(a1 + 2568) = 0;
  *(a1 + 2576) = 0;
  *(a1 + 2736) = 0;
  *(a1 + 2744) = 0;
  *(a1 + 2792) = 0;
  *(a1 + 2848) = 0;
  *(a1 + 2832) = 0u;
  *(a1 + 2816) = 0u;
  *(a1 + 2800) = 0u;
  *(a1 + 2880) = 0xC0000000CLL;
  *(a1 + 2856) = &unk_1F4CF0DA0;
  *(a1 + 2864) = 0u;
  *(a1 + 2888) = a1 + 2896;
  *(a1 + 4048) = &unk_1F4CF0FD8;
  *(a1 + 4080) = 0x10000000CLL;
  *(a1 + 4056) = &unk_1F4CDFFF8;
  *(a1 + 4088) = a1 + 4096;
  *(a1 + 4216) = 0x10000000CLL;
  *(a1 + 4192) = &unk_1F4CDFFF8;
  *(a1 + 4224) = a1 + 4232;
  *(a1 + 4336) = 0x3DDB7CDFD9D7BDBBLL;
  *(a1 + 4064) = 0u;
  *(a1 + 4200) = 0u;
  *(a1 + 4328) = 1;
  *(a1 + 4344) = 0;
  *(a1 + 4346) = 0;
  *(a1 + 4352) = 0;
  *(a1 + 4360) = 0;
  *(a1 + 4424) = 0;
  *(a1 + 4432) = 0;
  *(a1 + 4440) = 0;
  *(a1 + 4448) = 0;
  *(a1 + 4472) = 0u;
  *(a1 + 4488) = 0u;
  *(a1 + 4456) = 0u;
  return result;
}

uint64_t trackrun::TrackRunEngineActiveObject::Configure(cnframework::ActiveObjectBase *this, uint64_t *a2)
{
  if (*(this + 224) == 1)
  {
    LOWORD(v38) = 13;
    LOBYTE(v37) = 3;
    sub_1D0B751F4(__p, "TrackRunEngineActiveObject");
    v4 = v40 >= 0 ? __p : __p[0];
    cnprint::CNPrinter::Print(&v38, &v37, "Warning: %s configured more than once.", v4);
    if (v40 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(this + 224) = 0;
  v5 = *a2;
  if (!*a2 || (*(v5 + 256) & 1) == 0)
  {
    LOWORD(v38) = 13;
    LOBYTE(v37) = 4;
    sub_1D0B751F4(__p, "TrackRunEngineActiveObject");
    if (v40 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    cnprint::CNPrinter::Print(&v38, &v37, "Error: %s could not be configured.", v7);
    goto LABEL_18;
  }

  *(this + 35) = v5;
  cnframework::ActiveObjectBase::SetEventQueueDelay(this, 0.0);
  v38 = *a2;
  if (trackrun::TrackRunLaneEstimator::Configure(this + 2848, &v38))
  {
    LOWORD(v37) = 13;
    LOBYTE(v36) = 4;
    sub_1D0B751F4(__p, "TrackRunEngineActiveObject");
    if (v40 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    cnprint::CNPrinter::Print(&v37, &v36, "Error: %s could not be configured. Configuration of TrackRun lane estimator failed.", v6);
LABEL_18:
    if (v40 < 0)
    {
      operator delete(__p[0]);
    }

    return 0xFFFFFFFFLL;
  }

  v9 = *(this + 35);
  if (!sub_1D0BD2DFC((v9 + 72), 4) || (v37 = 4, __p[0] = &v37, (sub_1D0B85E58((v9 + 72), 4, __p)[3] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL) || (v10 = *(this + 35), v36 = 4, __p[0] = &v36, *(sub_1D0B85E58((v10 + 72), 4, __p) + 3) < 0.0) || (v11 = *(this + 35), !sub_1D0BD2DFC((v11 + 72), 3)) || (v35 = 3, __p[0] = &v35, (sub_1D0B85E58((v11 + 72), 3, __p)[3] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL) || (v12 = *(this + 35), v34 = 3, __p[0] = &v34, *(sub_1D0B85E58((v12 + 72), 3, __p) + 3) < 0.0) || (v13 = *(this + 35), !sub_1D0BD2DFC((v13 + 72), 2)) || (v33 = 2, __p[0] = &v33, (sub_1D0B85E58((v13 + 72), 2, __p)[3] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL) || (v14 = *(this + 35), v32 = 2, __p[0] = &v32, *(sub_1D0B85E58((v14 + 72), 2, __p) + 3) < 0.0) || (v15 = *(this + 35), v31 = 2, __p[0] = &v31, v16 = *(sub_1D0B85E58((v15 + 72), 2, __p) + 3), v17 = *(this + 35), v30 = 3, __p[0] = &v30, v16 < *(sub_1D0B85E58((v17 + 72), 3, __p) + 3)) || (v18 = *(this + 35), v29 = 3, __p[0] = &v29, v19 = *(sub_1D0B85E58((v18 + 72), 3, __p) + 3), v20 = *(this + 35), v28 = 4, __p[0] = &v28, v19 < *(sub_1D0B85E58((v20 + 72), 4, __p) + 3)))
  {
    LOWORD(v37) = 13;
    LOBYTE(v36) = 4;
    sub_1D0B751F4(__p, "TrackRunEngineActiveObject");
    if (v40 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    cnprint::CNPrinter::Print(&v37, &v36, "Error: %s could not be configured. Proximity distance threshold parameters do not exist or are invalid.", v21);
    goto LABEL_18;
  }

  v22 = *(*(this + 35) + 248);
  if ((v22 <= -1 || ((v22 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v22 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    LOWORD(v37) = 13;
    LOBYTE(v36) = 4;
    sub_1D0B751F4(__p, "TrackRunEngineActiveObject");
    if (v40 >= 0)
    {
      v27 = __p;
    }

    else
    {
      v27 = __p[0];
    }

    cnprint::CNPrinter::Print(&v37, &v36, "Error: %s could not be configured. Home visit consistency threshold is invalid.", v27);
    goto LABEL_18;
  }

  *(this + 224) = 1;
  v25 = (*(*this + 40))(this);
  if (cnprint::CNPrinter::GetLogLevel(v25) <= 1)
  {
    LOWORD(v37) = 13;
    LOBYTE(v36) = 1;
    sub_1D0B751F4(__p, "TrackRunEngineActiveObject");
    v26 = v40 >= 0 ? __p : __p[0];
    cnprint::CNPrinter::Print(&v37, &v36, "%s configured successfully.", v26);
    if (v40 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

void sub_1D0E66AC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void trackrun::TrackRunEngineActiveObject::HandleEvent(trackrun::TrackRunEngineActiveObject *this, const trackrun::MovingStateEvent *a2)
{
  if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    LOWORD(v29[0]) = 13;
    LOBYTE(v27[0]) = 1;
    v4 = (*(*a2 + 16))(a2);
    v6 = v5 + v4;
    v7 = *(a2 + 6) + *(a2 + 5);
    sub_1D0E66DF8(__p, *(a2 + 56));
    v8 = v34 >= 0 ? __p : __p[0];
    cnprint::CNPrinter::Print(v29, v27, "#tre_ao,received MovingStateEvent,time,%.1lf,ios_time,%.1lf,moving_state,%s", v6, v7, v8);
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(this + 744) == 1)
  {
    v32 = 13;
    v31 = 3;
    v9 = *(this + 2384);
    sub_1D0E66DF8(__p, *(a2 + 56));
    if (v34 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = *(a2 + 5);
    v12 = *(a2 + 6);
    v13 = *(a2 + 2);
    v14 = *(a2 + 3);
    v15 = v29;
    trackrun::TrackRunEngineActiveObject::ConvertIosTimeToGregorianString(this, v11, v12, v29);
    if (v30 < 0)
    {
      v15 = v29[0];
    }

    if ((*(this + 744) & 1) == 0)
    {
      sub_1D0C42F28();
    }

    v16 = *(this + 80);
    v17 = *(this + 81);
    v18 = *(this + 85);
    v19 = *(this + 87);
    sub_1D0E66DF8(v27, *(a2 + 56));
    if (v28 >= 0)
    {
      v20 = v27;
    }

    else
    {
      v20 = v27[0];
    }

    cnprint::CNPrinter::Print(&v32, &v31, "TrackRun-Moving-%u-%s,viewType,SingleArrowCoordinate,iOSTime,%.1lf,mcTime,%.1lf,gregTime,%s,latitude,%.7lf,longitude,%.7lf,course,%.2lf,speed,%.1lf,moving_state,%s", v9, v10, *&v12 + v11, v14 + v13, v15, v16, v17, v18, v19, v20);
    if (v28 < 0)
    {
      operator delete(v27[0]);
    }

    if (v30 < 0)
    {
      operator delete(v29[0]);
    }

    if (v34 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(this + 520) == 1)
  {
    v21 = *(a2 + 8);
    v22 = *(a2 + 24);
    v23 = *(a2 + 40);
    *(this + 512) = *(a2 + 56);
    *(this + 30) = v22;
    *(this + 31) = v23;
    *(this + 29) = v21;
  }

  else
  {
    *(this + 57) = &unk_1F4CF0C50;
    v24 = *(a2 + 8);
    v25 = *(a2 + 24);
    v26 = *(a2 + 40);
    *(this + 512) = *(a2 + 56);
    *(this + 30) = v25;
    *(this + 31) = v26;
    *(this + 29) = v24;
    *(this + 520) = 1;
  }
}

void sub_1D0E66DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(exception_object);
}

uint64_t trackrun::TrackRunEngineActiveObject::HandleEvent(trackrun::TrackRunEngineActiveObject *this, const trackrun::VisitEvent *a2)
{
  v21 = 13;
  v20 = 3;
  v4 = (*(*a2 + 16))(a2);
  v6 = v5;
  v7 = *(a2 + 5);
  v8 = *(a2 + 6);
  v9 = *(a2 + 8);
  v10 = *(a2 + 9);
  sub_1D0E66F8C(a2, v18);
  v11 = v19;
  v12 = v18[0];
  sub_1D0E66FA4(a2, __p);
  if (v11 >= 0)
  {
    v13 = v18;
  }

  else
  {
    v13 = v12;
  }

  if (v17 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  cnprint::CNPrinter::Print(&v21, &v20, "#tre_ao,received visit event,time,%.1lf,ios_time,%.1lf,arrival time,%.1lf,user specific place type,%s,place inference place type,%s", v6 + v4, v8 + v7, v10 + v9, v13, v14);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  return sub_1D0E66FBC(this + 824, a2);
}

void sub_1D0E66F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0E66FBC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 280) == 1)
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
    v5 = *(a2 + 40);
    v6 = *(a2 + 56);
    v7 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v7;
    *(a1 + 56) = v6;
    *(a1 + 40) = v5;
    v8 = *(a2 + 104);
    v9 = *(a2 + 120);
    v10 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v10;
    *(a1 + 120) = v9;
    *(a1 + 104) = v8;
    v11 = *(a2 + 168);
    v12 = *(a2 + 184);
    v13 = *(a2 + 200);
    *(a1 + 210) = *(a2 + 210);
    *(a1 + 200) = v13;
    *(a1 + 184) = v12;
    *(a1 + 168) = v11;
    std::string::operator=((a1 + 232), (a2 + 232));
    std::string::operator=((a1 + 256), (a2 + 256));
  }

  else
  {
    *a1 = &unk_1F4CF0B90;
    v14 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v14;
    v15 = *(a2 + 40);
    v16 = *(a2 + 56);
    v17 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v17;
    *(a1 + 56) = v16;
    *(a1 + 40) = v15;
    v18 = *(a2 + 104);
    v19 = *(a2 + 120);
    v20 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v20;
    *(a1 + 120) = v19;
    *(a1 + 104) = v18;
    v21 = *(a2 + 168);
    v22 = *(a2 + 184);
    v23 = *(a2 + 200);
    *(a1 + 210) = *(a2 + 210);
    *(a1 + 200) = v23;
    *(a1 + 184) = v22;
    *(a1 + 168) = v21;
    if (*(a2 + 255) < 0)
    {
      sub_1D0BC39B4((a1 + 232), *(a2 + 232), *(a2 + 240));
    }

    else
    {
      v24 = *(a2 + 232);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 232) = v24;
    }

    if (*(a2 + 279) < 0)
    {
      sub_1D0BC39B4((a1 + 256), *(a2 + 256), *(a2 + 264));
    }

    else
    {
      v25 = *(a2 + 256);
      *(a1 + 272) = *(a2 + 272);
      *(a1 + 256) = v25;
    }

    *(a1 + 280) = 1;
  }

  return a1;
}

void sub_1D0E67160(_Unwind_Exception *exception_object)
{
  if (*(v1 + 255) < 0)
  {
    operator delete(*(v1 + 232));
  }

  _Unwind_Resume(exception_object);
}

void trackrun::TrackRunEngineActiveObject::HandleEvent(trackrun::TrackRunEngineActiveObject *this, const trackrun::WatchStateEvent *a2)
{
  v24 = 13;
  v23 = 3;
  v4 = (*(*a2 + 16))(a2);
  v6 = v5;
  v7 = *(a2 + 5);
  v8 = *(a2 + 6);
  sub_1D0B751F4(v21, off_1E83D8418[*(a2 + 57)]);
  v9 = v22;
  v10 = v21[0];
  sub_1D0B751F4(__p, off_1E83D8418[*(a2 + 56)]);
  if (v9 >= 0)
  {
    v11 = v21;
  }

  else
  {
    v11 = v10;
  }

  if (v20 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  cnprint::CNPrinter::Print(&v24, &v23, "#tre_ao,received watch state event,time,%.1lf,ios_time,%.1lf,wrist_orientation,%s,crown_orientation,%s", v6 + v4, v8 + v7, v11, v12);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (*(this + 1176) == 1)
  {
    v13 = *(a2 + 8);
    v14 = *(a2 + 24);
    v15 = *(a2 + 40);
    *(this + 584) = *(a2 + 28);
    *(this + 72) = v15;
    *(this + 71) = v14;
    *(this + 70) = v13;
  }

  else
  {
    *(this + 139) = &unk_1F4CF0D40;
    v16 = *(a2 + 8);
    v17 = *(a2 + 24);
    v18 = *(a2 + 40);
    *(this + 584) = *(a2 + 28);
    *(this + 72) = v18;
    *(this + 71) = v17;
    *(this + 70) = v16;
    *(this + 1176) = 1;
  }
}

void sub_1D0E67330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void trackrun::TrackRunEngineActiveObject::HandleEvent(trackrun::TrackRunEngineActiveObject *this, const trackrun::WorkoutSessionEvent *a2)
{
  v37 = this;
  v38 = &unk_1F4CF0BC0;
  v4 = *(a2 + 24);
  v39 = *(a2 + 8);
  v40 = v4;
  v41 = *(a2 + 40);
  v5 = *(a2 + 28);
  v42 = v5;
  if (*(a2 + 87) < 0)
  {
    sub_1D0BC39B4(&v43, *(a2 + 8), *(a2 + 9));
    v5 = *(a2 + 28);
    v6 = *(a2 + 87) < 0;
  }

  else
  {
    v6 = 0;
    v43 = *(a2 + 4);
    v44 = *(a2 + 10);
  }

  v7 = *(a2 + 168);
  v8 = *(a2 + 200);
  v51 = *(a2 + 184);
  v52 = v8;
  v53 = *(a2 + 216);
  v9 = *(a2 + 104);
  v10 = *(a2 + 136);
  v47 = *(a2 + 120);
  v48 = v10;
  v49 = *(a2 + 152);
  v50 = v7;
  v45 = *(a2 + 88);
  v46 = v9;
  v20 = this;
  v21 = &unk_1F4CF0BC0;
  v11 = *(a2 + 24);
  v22 = *(a2 + 8);
  v23 = v11;
  v24 = *(a2 + 40);
  v25 = v5;
  if (v6)
  {
    sub_1D0BC39B4(&__p, *(a2 + 8), *(a2 + 9));
    LOBYTE(v5) = *(a2 + 56);
  }

  else
  {
    __p = *(a2 + 4);
    v27 = *(a2 + 10);
  }

  v12 = *(a2 + 168);
  v13 = *(a2 + 200);
  v34 = *(a2 + 184);
  v35 = v13;
  v36 = *(a2 + 216);
  v14 = *(a2 + 104);
  v15 = *(a2 + 136);
  v30 = *(a2 + 120);
  v31 = v15;
  v32 = *(a2 + 152);
  v33 = v12;
  v28 = *(a2 + 88);
  v29 = v14;
  if (v5 > 7u || ((1 << v5) & 0xD8) == 0)
  {
LABEL_16:
    sub_1D0E6766C(&v37);
    goto LABEL_20;
  }

  v16 = *(a2 + 57);
  if ((v16 - 4) < 2)
  {
LABEL_15:
    sub_1D0E6766C(&v37);
    sub_1D0E678EC(this + 1184, a2);
    sub_1D0E67A4C(&v20);
    goto LABEL_20;
  }

  if (v16 != 3)
  {
    if (v16 == 2)
    {
      trackrun::TrackRunEngineActiveObject::ResetTrackStateWhenSessionStarts(this);
      v17 = *(this + 2792);
      v18 = *(a2 + 40);
      v19 = *(a2 + 24);
      *(this + 2744) = *(a2 + 8);
      *(this + 2760) = v19;
      *(this + 2776) = v18;
      if ((v17 & 1) == 0)
      {
        *(this + 2792) = 1;
      }

      *(this + 2384) = *(this + 2384) + 1 - 30 * ((2185 * (*(this + 2384) + 1)) >> 16);
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (*(this + 2792) == 1)
  {
    *(this + 2792) = 0;
  }

  sub_1D0E6766C(&v37);
  sub_1D0E678EC(this + 1184, a2);
  sub_1D0E67A4C(&v20);
  trackrun::TrackRunEngineActiveObject::ResetTrackStateWhenLeaveTrackOrSessionEnds(this);
  *(this + 2384) = *(this + 2384) + 1 - 30 * ((2185 * (*(this + 2384) + 1)) >> 16);
LABEL_20:
  v21 = &unk_1F4CF0BC0;
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p);
  }

  v38 = &unk_1F4CF0BC0;
  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43);
  }
}

void sub_1D0E67630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a56 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0E6766C(uint64_t *a1)
{
  v2 = *a1;
  v18 = 13;
  v17 = 3;
  v3 = a1 + 1;
  v4 = (*(a1[1] + 16))(a1 + 1);
  v6 = v5;
  v7 = v3[5];
  v8 = *(v3 + 6);
  v9 = *(v2 + 2384);
  v10 = v15;
  sub_1D0E6A91C(v15, *(v3 + 56));
  if (v16 < 0)
  {
    v10 = v15[0];
  }

  sub_1D0E6A930(__p, *(v3 + 57));
  if (v14 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  v12 = (a1 + 9);
  if (*(a1 + 95) < 0)
  {
    v12 = *v12;
  }

  cnprint::CNPrinter::Print(&v18, &v17, "#tre_ao,received workout session event,time,%.1lf,ios_time,%.1lf,workout_number,%d,workout_type,%s,workout_event,%s,session_id,%s", v6 + v4, v8 + v7, v9, v10, v11, v12);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_1D0E677A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

double trackrun::TrackRunEngineActiveObject::ResetTrackStateWhenSessionStarts(trackrun::TrackRunEngineActiveObject *this)
{
  v2 = this + 4096;
  *(this + 4346) = 0;
  *(this + 4344) = 0;
  if (*(this + 2849) == 1)
  {
    *(this + 2849) = 0;
  }

  if (*(this + 4424) == 1)
  {
    *(this + 4424) = 0;
  }

  if (*(this + 2568) == 1)
  {
    *(this + 2568) = 0;
  }

  if (*(this + 2736) == 1)
  {
    *(this + 2736) = 0;
  }

  v3 = *(this + 351);
  v4 = *(this + 352);
  *(this + 355) = 0;
  v5 = (v4 - v3) >> 3;
  if (v5 >= 3)
  {
    do
    {
      operator delete(*v3);
      v3 = (*(this + 351) + 8);
      *(this + 351) = v3;
      v5 = (*(this + 352) - v3) >> 3;
    }

    while (v5 > 2);
  }

  if (v5 == 1)
  {
    v6 = 25;
  }

  else
  {
    if (v5 != 2)
    {
      goto LABEL_16;
    }

    v6 = 51;
  }

  *(this + 354) = v6;
LABEL_16:
  if (v2[352] == 1)
  {
    v2[352] = 0;
  }

  *(this + 2216) = 0;
  if (*(this + 520) == 1)
  {
    *(this + 520) = 0;
  }

  if (*(this + 2184) == 1)
  {
    *(this + 2184) = 0;
  }

  result = 0.0;
  *(this + 4472) = 0u;
  *(this + 4488) = 0u;
  *(this + 4456) = 0u;
  return result;
}

uint64_t sub_1D0E678EC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 232) == 1)
  {
    v4 = *(a2 + 8);
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v5;
    *(a1 + 8) = v4;
    *(a1 + 56) = *(a2 + 56);
    std::string::operator=((a1 + 64), (a2 + 64));
    *(a1 + 88) = *(a2 + 88);
    v6 = *(a2 + 120);
    v7 = *(a2 + 136);
    v8 = *(a2 + 152);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 152) = v8;
    *(a1 + 136) = v7;
    *(a1 + 120) = v6;
    v9 = *(a2 + 184);
    v10 = *(a2 + 200);
    v11 = *(a2 + 216);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 216) = v11;
    *(a1 + 200) = v10;
    *(a1 + 184) = v9;
  }

  else
  {
    *a1 = &unk_1F4CF0BC0;
    v12 = *(a2 + 8);
    v13 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v13;
    *(a1 + 8) = v12;
    *(a1 + 56) = *(a2 + 56);
    if (*(a2 + 87) < 0)
    {
      sub_1D0BC39B4((a1 + 64), *(a2 + 64), *(a2 + 72));
    }

    else
    {
      v14 = *(a2 + 64);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 64) = v14;
    }

    *(a1 + 88) = *(a2 + 88);
    v15 = *(a2 + 104);
    v16 = *(a2 + 120);
    v17 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v17;
    *(a1 + 120) = v16;
    *(a1 + 104) = v15;
    v18 = *(a2 + 168);
    v19 = *(a2 + 184);
    v20 = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 200) = v20;
    *(a1 + 184) = v19;
    *(a1 + 168) = v18;
    *(a1 + 232) = 1;
  }

  return a1;
}

void sub_1D0E67A4C(uint64_t a1)
{
  v2 = *a1;
  v24 = 13;
  v23 = 3;
  sub_1D0E6A91C(v21, *(a1 + 64));
  if (v22 >= 0)
  {
    v3 = v21;
  }

  else
  {
    v3 = v21[0];
  }

  sub_1D0E6A930(v19, *(a1 + 65));
  if (v20 >= 0)
  {
    v4 = v19;
  }

  else
  {
    v4 = v19[0];
  }

  v5 = *(v2 + 2384);
  v6 = (*(*(a1 + 8) + 16))();
  v8 = v7;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v12 = *(a1 + 128);
  v11 = *(a1 + 136);
  trackrun::TrackRunEngineActiveObject::ConvertIosTimeToGregorianString(v2, v9, v10, __p);
  if (v18 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  v14 = 0.0;
  v15 = 0.0;
  if (*(v2 + 744) == 1)
  {
    v14 = *(v2 + 640);
    v15 = *(v2 + 648);
  }

  if (*(v2 + 816) == 1)
  {
    v16 = *(v2 + 808);
  }

  else
  {
    v16 = -1;
  }

  cnprint::CNPrinter::Print(&v24, &v23, "Workout-%s-%s-%u,viewType,SingleArrowCoordinate,time,%.1lf,iOSTime,%.1lf,start_time,%.1lf,gregTime,%s,latitude,%.7lf,longitude,%.7lf,lane_hint,%d", v3, v4, v5, v8 + v6, *&v10 + v9, v11 + v12, v13, v14, v15, v16);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }
}

void sub_1D0E67C10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

double trackrun::TrackRunEngineActiveObject::ResetTrackStateWhenLeaveTrackOrSessionEnds(trackrun::TrackRunEngineActiveObject *this)
{
  if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v4 = 13;
    v3 = 1;
    cnprint::CNPrinter::Print(&v4, &v3, "#tre_ao,user has left the track or ended the workout,resetting the track state.");
  }

  if (*(this + 816) == 1)
  {
    *(this + 816) = 0;
  }

  return trackrun::TrackRunEngineActiveObject::ResetTrackStateWhenSessionStarts(this);
}

void trackrun::TrackRunEngineActiveObject::HandleEvent(uint64_t this, const trackrun::GEOMapRunningTrackDataEvent *a2, double *a3, int *a4, __n128 a5)
{
  if (*(this + 224) != 1)
  {
    return;
  }

  if (*(a2 + 1) == *(a2 + 2))
  {
    LOWORD(__p[0]) = 13;
    LOBYTE(v107[0]) = 4;
    v9 = (*(*a2 + 16))(a2, a5);
    cnprint::CNPrinter::Print(__p, v107, "#tre_ao,time,%.3lf,running track event has no tracks", v10 + v9);
    return;
  }

  v6 = this;
  v7 = *(a2 + 80);
  if ((*(this + 744) & 1) == 0)
  {
    LOWORD(__p[0]) = 13;
    LOBYTE(v107[0]) = 3;
    v11 = (*(*a2 + 16))(a2, a5);
    cnprint::CNPrinter::Print(__p, v107, "#tre_ao,time,%.3lf,no previous position available; caching running track data to process at a future time", v12 + v11);
    if (v7)
    {
      v13 = v6 + 2192;
    }

    else
    {
      v13 = v6 + 2288;
    }

    sub_1D0E68BAC(v13, a2);
    return;
  }

  if (!*(a2 + 80))
  {
    this = sub_1D0E68BAC(this + 2288, a2);
    v93 = v6 + 280;
    if (*(*(v6 + 35) + 67))
    {
      v8 = *(v6 + 448) ^ 1;
      goto LABEL_28;
    }

    if ((*(v6 + 448) & 1) == 0)
    {
LABEL_27:
      v8 = 1;
      goto LABEL_28;
    }

    v15 = v6 + 448;
    v16 = v6 + 424;
LABEL_26:
    __p[0] = v16;
    sub_1D0E62CA0(__p);
    *v15 = 0;
    goto LABEL_27;
  }

  v93 = (this + 280);
  if (!*(*(this + 280) + 67) || (*(this + 416) & 1) == 0)
  {
    *(this + 352) = 0;
    *(this + 360) = 0;
    *(this + 368) = 0;
    *(this + 376) = 0x7FF8000000000000;
    *(this + 384) = 0x7FF8000000000000;
    if (*(this + 2568) == 1)
    {
      v14 = *(this + 2408);
      *__p = *(this + 2392);
      *v112 = v14;
      memset(&v112[16], 0, 32);
      *(this + 2424) = 0u;
      a5.n128_u64[1] = *&v112[40];
      *(this + 2440) = *&v112[32];
      *(this + 2456) = 0;
      if (*(this + 2496))
      {
        *(this + 2496) = 0;
      }

      *(this + 2504) = 0;
      *(this + 2512) = 0;
      *(this + 2520) = 0;
      *(this + 2528) = 0;
      *(this + 2536) = 0;
      *(this + 2560) = 0;
    }

    if (*(this + 416) != 1)
    {
      goto LABEL_27;
    }

    v15 = (this + 416);
    v16 = (this + 392);
    goto LABEL_26;
  }

  v8 = 0;
LABEL_28:
  if (*(v6 + 368) == 1)
  {
    a5.n128_u64[0] = *(v6 + 48);
  }

  else
  {
    *v107 = *(v6 + 40);
    this = trackrun::TrackRunEngineActiveObject::TrackCoordinateTransform::SetTransformationOriginUsingLatLon(v6 + 352, v107, a3);
    if (!this || *(v6 + 368) != 1)
    {
      LOWORD(v115) = 13;
      LOBYTE(v103[0]) = 4;
      v18 = (*(*a2 + 16))(a2);
      v20 = v19 + v18;
      sub_1D0B751F4(__p, "TrackRunEngineActiveObject");
      if (v112[7] >= 0)
      {
        v21 = __p;
      }

      else
      {
        v21 = __p[0];
      }

      cnprint::CNPrinter::Print(&v115, v103, "#tre_ao,time,%.3lf,%s could not configure running track coordinate transform", v20, v21);
      if ((v112[7] & 0x80000000) != 0)
      {
        operator delete(__p[0]);
      }

      return;
    }

    a5.n128_u64[0] = *(v6 + 48);
    if (*(v6 + 2568) == 1)
    {
      trackrun::TrackRunEngineActiveObject::PopulateAllStartingLineFields(v6);
    }
  }

  v100 = v7;
  if (v8)
  {
    __p[0] = 0;
    __p[1] = 0;
    *v112 = 0;
    v112[8] = 1;
    if (v7)
    {
      v17 = (v6 + 392);
    }

    else
    {
      v17 = (v6 + 424);
    }

    sub_1D0E6B108(v17, __p);
    if (v112[8] == 1)
    {
      v107[0] = __p;
      sub_1D0E62CA0(v107);
    }

    this = sub_1D0E60898(v17, 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 2) - *(a2 + 1)) >> 3));
  }

  v22 = *(a2 + 1);
  if (*(a2 + 2) != v22)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    while (1)
    {
      v26 = (v22 + 104 * v25);
      if (v26[12])
      {
        break;
      }

      LOWORD(__p[0]) = 13;
      LOBYTE(v107[0]) = 4;
      v53 = (*(*a2 + 16))(a2, a5);
      cnprint::CNPrinter::Print(__p, v107, "#tre_ao,time,%.3lf,track has no lanes", v54 + v53);
LABEL_122:
      ++v25;
      v22 = *(a2 + 1);
      if (v25 >= 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 2) - v22) >> 3))
      {
        goto LABEL_125;
      }
    }

    v94 = v25;
    v95 = v23;
    __p[0] = 0;
    __p[1] = 0;
    *v112 = 0;
    LOBYTE(v113) = 0;
    BYTE8(v113) = 0;
    v114 = 0;
    memset(&v112[24], 0, 36);
    v28 = v26[5];
    v27 = v26[6];
    v96 = v26 + 12;
    v97 = v22 + 104 * v25;
    if (v28 == v27)
    {
      v29 = v100;
    }

    else
    {
      v101 = 0;
      v29 = v100;
      v99 = v26[6];
      do
      {
        v108[16] = 0;
        LOBYTE(v109) = 0;
        BYTE8(v109) = 0;
        LOBYTE(v110) = 0;
        v107[1] = 0;
        *v108 = 0;
        v107[0] = 0;
        *&v108[8] = 0;
        *(&v110 + 1) = 0xBFF0000000000000;
        if (trackrun::TrackRunEngineActiveObject::CopyTrackLaneData(v6, v28, v107, a4))
        {
          v30 = *v28;
          if (*v28 != v28[1])
          {
            v31 = 0;
            do
            {
              LOWORD(v103[0]) = 13;
              LOBYTE(v106) = 3;
              v32 = *(a2 + 8);
              v33 = *(a2 + 9);
              v34 = (*(*a2 + 16))(a2);
              v36 = v35;
              trackrun::TrackRunEngineActiveObject::ConvertIosTimeToGregorianString(v6, *(a2 + 8), *(a2 + 9), &v115);
              v37 = &v115;
              if (SBYTE7(v116) < 0)
              {
                v37 = v115;
              }

              cnprint::CNPrinter::Print(v103, &v106, "TrackRun-Track,viewType,ConnectedCoordinates,iOSTime,%.1lf,mcTime,%.1lf,gregTime,%s,latitude,%.7lf,longitude,%.7lf,lane,%zu,index,%zu", v33 + v32, v36 + v34, v37, *v30, v30[1], v101 + 1, v31);
              if (SBYTE7(v116) < 0)
              {
                operator delete(v115);
              }

              ++v31;
              v30 += 2;
            }

            while (v30 != v28[1]);
          }

          v38 = *&v112[32];
          if (*&v112[32] >= *&v112[40])
          {
            v44 = 0x8E38E38E38E38E39 * ((*&v112[32] - *&v112[24]) >> 3);
            v45 = v44 + 1;
            if (v44 + 1 > 0x38E38E38E38E38ELL)
            {
              sub_1D0C5663C();
            }

            if (0x1C71C71C71C71C72 * ((*&v112[40] - *&v112[24]) >> 3) > v45)
            {
              v45 = 0x1C71C71C71C71C72 * ((*&v112[40] - *&v112[24]) >> 3);
            }

            if (0x8E38E38E38E38E39 * ((*&v112[40] - *&v112[24]) >> 3) >= 0x1C71C71C71C71C7)
            {
              v46 = 0x38E38E38E38E38ELL;
            }

            else
            {
              v46 = v45;
            }

            v117 = &v112[24];
            if (v46)
            {
              sub_1D0E61E1C(&v112[24], v46);
            }

            v47 = 8 * ((*&v112[32] - *&v112[24]) >> 3);
            *&v115 = 0;
            *(&v115 + 1) = v47;
            v116 = v47;
            *v47 = 0;
            *(v47 + 8) = 0;
            *(v47 + 16) = 0;
            sub_1D0E6B1AC((72 * v44), v107[0], v107[1], (v107[1] - v107[0]) >> 4);
            v48 = v110;
            v49 = *&v108[8];
            *(v47 + 40) = v109;
            *(v47 + 24) = v49;
            *(v47 + 56) = v48;
            *&v116 = v116 + 72;
            v50 = *(&v115 + 1) + *&v112[24] - *&v112[32];
            sub_1D0E61E78(&v112[24], *&v112[24], *&v112[32], v50);
            v51 = *&v112[24];
            v52 = *&v112[40];
            *&v112[24] = v50;
            v98 = v116;
            *&v112[32] = v116;
            *&v116 = v51;
            *(&v116 + 1) = v52;
            *&v115 = v51;
            *(&v115 + 1) = v51;
            sub_1D0E61FD4(&v115);
            v41 = v98;
            v29 = v100;
          }

          else
          {
            **&v112[32] = 0uLL;
            *(v38 + 16) = 0;
            sub_1D0E6B1AC(v38, v107[0], v107[1], (v107[1] - v107[0]) >> 4);
            v39 = *&v108[8];
            v40 = v109;
            *(v38 + 56) = v110;
            *(v38 + 40) = v40;
            *(v38 + 24) = v39;
            v41 = v38 + 72;
            v29 = v100;
          }

          v27 = v99;
          *&v112[32] = v41;
          ++v101;
          ++v24;
        }

        else
        {
          LOWORD(v115) = 13;
          LOBYTE(v103[0]) = 4;
          v42 = (*(*a2 + 16))(a2);
          cnprint::CNPrinter::Print(&v115, v103, "#tre_ao,time,%.3lf,cannot add lane data to track", v43 + v42);
        }

        if (v107[0])
        {
          v107[1] = v107[0];
          operator delete(v107[0]);
        }

        v28 += 9;
      }

      while (v28 != v27);
    }

    *&v112[48] = *(v97 + 64);
    *&v112[56] = *(v97 + 72);
    v115 = 0uLL;
    *&v116 = 0;
    sub_1D0E6B1AC(&v115, *v97, *(v97 + 8), (*(v97 + 8) - *v97) >> 4);
    v55 = *(&v115 + 1);
    v56 = v115;
    if (v115 != *(&v115 + 1))
    {
      do
      {
        sub_1D0B751F4(v107, &unk_1D0ED80C5);
        if (!v29)
        {
          if ((v108[7] & 0x80000000) != 0)
          {
            v107[1] = 7;
            v57 = v107[0];
          }

          else
          {
            v108[7] = 7;
            v57 = v107;
          }

          strcpy(v57, "-sparse");
        }

        v58 = v29;
        v106 = 13;
        v105 = 3;
        if (v108[7] >= 0)
        {
          v59 = v107;
        }

        else
        {
          v59 = v107[0];
        }

        v60 = *(a2 + 8);
        v61 = *(a2 + 9);
        v62 = (*(*a2 + 16))(a2);
        v64 = v63;
        trackrun::TrackRunEngineActiveObject::ConvertIosTimeToGregorianString(v6, *(a2 + 8), *(a2 + 9), v103);
        v65 = v103;
        if (v104 < 0)
        {
          v65 = v103[0];
        }

        cnprint::CNPrinter::Print(&v106, &v105, "TrackRun-Track-Bbox%s,viewType,ConnectedCoordinates,iOSTime,%.1lf,mcTime,%.1lf,gregTime,%s,latitude,%.7lf,longitude,%.7lf", v59, v61 + v60, v64 + v62, v65, v56->f64[0], v56->f64[1]);
        v29 = v58;
        if (v104 < 0)
        {
          operator delete(v103[0]);
        }

        if ((v108[7] & 0x80000000) != 0)
        {
          operator delete(v107[0]);
        }

        ++v56;
        v55 = *(&v115 + 1);
      }

      while (v56 != *(&v115 + 1));
      v56 = v115;
    }

    while (v56 != v55)
    {
      trackrun::TrackRunEngineActiveObject::ConvertPointLatLonToEastNorth(v6, v56++);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = v115;
    *v112 = v116;
    *&v116 = 0;
    v115 = 0uLL;
    *v103 = *(v97 + 24);
    trackrun::TrackRunEngineActiveObject::ConvertPointLatLonToEastNorth(v6, v103);
    *&v112[8] = *v103;
    if (v29 && v114 >= 2)
    {
      trackrun::TrackRunEngineActiveObject::FindClosestPointOnRing(**&v112[24], (*&v112[24] + 72 * v114 - 72), 1, 0);
      v67 = fabs(v66) / (v114 - 1);
    }

    else
    {
      v67 = 1.22;
      v68 = (v6 + 424);
      if (!v29)
      {
LABEL_104:
        v69 = (*v93 + 208);
        if (!*(*v93 + 202))
        {
          v69 = v96;
        }

        v114 = *v69;
        v71 = v68[1];
        v70 = v68[2];
        if (v71 >= v70)
        {
          v76 = 0x4EC4EC4EC4EC4EC5 * ((v71 - *v68) >> 3);
          v77 = v76 + 1;
          if ((v76 + 1) > 0x276276276276276)
          {
            sub_1D0C5663C();
          }

          v78 = 0x4EC4EC4EC4EC4EC5 * ((v70 - *v68) >> 3);
          if (2 * v78 > v77)
          {
            v77 = 2 * v78;
          }

          if (v78 >= 0x13B13B13B13B13BLL)
          {
            v79 = 0x276276276276276;
          }

          else
          {
            v79 = v77;
          }

          *&v108[16] = v68;
          if (v79)
          {
            sub_1D0E61CC0(v68, v79);
          }

          v80 = 104 * v76;
          v107[0] = 0;
          v107[1] = v80;
          *v108 = (104 * v76);
          *v80 = 0;
          *(v80 + 8) = 0;
          *(v80 + 16) = 0;
          sub_1D0E6B1AC((104 * v76), __p[0], __p[1], (__p[1] - __p[0]) >> 4);
          v81 = *&v112[8];
          *(v80 + 40) = 0;
          *(v80 + 24) = v81;
          *(v80 + 48) = 0;
          *(v80 + 56) = 0;
          sub_1D0E6AB04((104 * v76 + 40), *&v112[24], *&v112[32], 0x8E38E38E38E38E39 * ((*&v112[32] - *&v112[24]) >> 3));
          v82 = *&v112[48];
          v83 = v113;
          *(v80 + 96) = v114;
          *(v80 + 64) = v82;
          *(v80 + 80) = v83;
          *v108 += 104;
          v84 = v68[1];
          v85 = v107[1] + *v68 - v84;
          sub_1D0E61D1C(v68, *v68, v84, v85);
          v86 = *v68;
          *v68 = v85;
          v87 = v68[2];
          v102 = *v108;
          *(v68 + 1) = *v108;
          *v108 = v86;
          *&v108[8] = v87;
          v107[0] = v86;
          v107[1] = v86;
          sub_1D0E61DCC(v107);
          v75 = v102;
        }

        else
        {
          *v71 = 0;
          *(v71 + 8) = 0;
          *(v71 + 16) = 0;
          sub_1D0E6B1AC(v71, __p[0], __p[1], (__p[1] - __p[0]) >> 4);
          v72 = *&v112[8];
          *(v71 + 40) = 0;
          *(v71 + 24) = v72;
          *(v71 + 48) = 0;
          *(v71 + 56) = 0;
          sub_1D0E6AB04((v71 + 40), *&v112[24], *&v112[32], 0x8E38E38E38E38E39 * ((*&v112[32] - *&v112[24]) >> 3));
          v73 = *&v112[48];
          v74 = v113;
          *(v71 + 96) = v114;
          *(v71 + 64) = v73;
          *(v71 + 80) = v74;
          v75 = v71 + 104;
          v68[1] = v71 + 104;
        }

        v68[1] = v75;
        if (v115)
        {
          *(&v115 + 1) = v115;
          operator delete(v115);
        }

        v107[0] = &v112[24];
        sub_1D0E620B8(v107);
        this = __p[0];
        v25 = v94;
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        v23 = v95 + 1;
        goto LABEL_122;
      }
    }

    *&v113 = v67;
    BYTE8(v113) = 1;
    v68 = (v6 + 392);
    goto LABEL_104;
  }

  v24 = 0;
  v23 = 0;
LABEL_125:
  if (cnprint::CNPrinter::GetLogLevel(this) < 2)
  {
    LOWORD(__p[0]) = 13;
    LOBYTE(v107[0]) = 1;
    v91 = (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(__p, v107, "#tre_ao,time,%.3lf,new track data,num_tracks,%d,num_lanes,%d,num_lane_coordinates,%d,is_sparse_event,%d", v92 + v91, v23, v24, 0, v100 ^ 1);
  }

  if (v100)
  {
    if (*(v6 + 2376) == 1)
    {
      trackrun::TrackRunEngineActiveObject::HandleEvent(v6, (v6 + 2288), v88, v89, v90);
    }
  }
}

void sub_1D0E68A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  if (a56 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0E68B94()
{
  if (*(v0 - 137) < 0)
  {
    operator delete(*(v0 - 160));
  }

  JUMPOUT(0x1D0E68B74);
}

uint64_t sub_1D0E68BAC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) == 1)
  {
    if (a1 != a2)
    {
      v4 = *(a1 + 8);
      v6 = *(a2 + 8);
      v5 = *(a2 + 16);
      v7 = v5 - v6;
      if (*(a1 + 24) - v4 < (v5 - v6))
      {
        v8 = 0x4EC4EC4EC4EC4EC5 * (v7 >> 3);
        sub_1D0E6A944((a1 + 8));
        if (v8 <= 0x276276276276276)
        {
          v9 = 0x9D89D89D89D89D8ALL * ((*(a1 + 24) - *(a1 + 8)) >> 3);
          if (v9 <= v8)
          {
            v9 = v8;
          }

          if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 24) - *(a1 + 8)) >> 3)) >= 0x13B13B13B13B13BLL)
          {
            v10 = 0x276276276276276;
          }

          else
          {
            v10 = v9;
          }

          sub_1D0E6A9AC((a1 + 8), v10);
        }

        sub_1D0C5663C();
      }

      v14 = *(a1 + 16) - v4;
      if (v14 >= v7)
      {
        v15 = sub_1D0E6ACA8(*(a2 + 8), *(a2 + 16), v4);
        for (i = *(a1 + 16); i != v15; sub_1D0E61C78(i))
        {
          i -= 104;
        }

        *(a1 + 16) = v15;
      }

      else
      {
        sub_1D0E6ACA8(*(a2 + 8), v6 + v14, v4);
        *(a1 + 16) = sub_1D0E6A9FC(a1 + 8, v6 + v14, v5, *(a1 + 16));
      }
    }

    v17 = *(a2 + 32);
    v18 = *(a2 + 48);
    v19 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 48) = v18;
    *(a1 + 64) = v19;
    *(a1 + 32) = v17;
  }

  else
  {
    *a1 = &unk_1F4CF0B60;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    sub_1D0E6B080((a1 + 8), *(a2 + 8), *(a2 + 16), 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 16) - *(a2 + 8)) >> 3));
    v11 = *(a2 + 32);
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 48) = v12;
    *(a1 + 64) = v13;
    *(a1 + 32) = v11;
    *(a1 + 88) = 1;
  }

  return a1;
}

BOOL trackrun::TrackRunEngineActiveObject::CopyTrackLaneData(trackrun::TrackRunEngineActiveObject *this, const trackrun::RunningTrackData::RunningTrackLane *a2, trackrun::RunningTrackData::RunningTrackLane *a3, int *a4)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = *(a2 + 1);
  v9 = (v7 - v6) >> 4;
  if (v9 <= 2)
  {
    LOWORD(v49) = 13;
    v48 = 4;
    cnprint::CNPrinter::Print(&v49, &v48, "#tre_ao,lane has fewer than three coordinates,%lu", (v7 - v6) >> 4);
  }

  else
  {
    if (a3 != a2)
    {
      sub_1D0E6AE98(a3, v6, v7, (v7 - v6) >> 4);
    }

    v11 = *(a2 + 24);
    v12 = *(a2 + 40);
    *(a3 + 56) = *(a2 + 56);
    *(a3 + 40) = v12;
    *(a3 + 24) = v11;
    v13 = *a3;
    v14 = *(a3 + 1);
    if (*a3 != v14)
    {
      do
      {
        trackrun::TrackRunEngineActiveObject::ConvertPointLatLonToEastNorth(this, v13++);
      }

      while (v13 != v14);
      v13 = *a3;
      v14 = *(a3 + 1);
    }

    v15 = v14 - v13;
    v16 = (v14 - v13) >> 4;
    if (v16 >= 3)
    {
      v17 = v13->f64[0];
      v18 = *(v14 - 2);
      if (v13->f64[0] != v18)
      {
        if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_27;
        }

        v45 = fabs(v17);
        v46 = fabs(v18);
        v47 = vabdd_f64(v17, v18);
        if (v45 < v46)
        {
          v45 = v46;
        }

        if (v45 < 1.0)
        {
          v45 = 1.0;
        }

        if (v47 > v45 * 2.22044605e-16)
        {
          goto LABEL_27;
        }
      }

      v19 = v13->f64[1];
      v20 = *(v14 - 1);
      if (v19 != v20)
      {
        if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_27;
        }

        v22 = fabs(v19);
        v23 = fabs(v20);
        v24 = vabdd_f64(v19, v20);
        if (v22 >= v23)
        {
          v25 = v22;
        }

        else
        {
          v25 = v23;
        }

        if (v25 < 1.0)
        {
          v25 = 1.0;
        }

        if (v24 > v25 * 2.22044605e-16)
        {
LABEL_27:
          v27 = v13->f64[1];
          v28 = *(a3 + 2);
          if (v14 >= v28)
          {
            v29 = v16 + 1;
            if ((v16 + 1) >> 60)
            {
              sub_1D0C5663C();
            }

            v30 = v28 - v13;
            if (v30 >> 3 > v29)
            {
              v29 = v30 >> 3;
            }

            if (v30 >= 0x7FFFFFFFFFFFFFF0)
            {
              v31 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v31 = v29;
            }

            if (v31)
            {
              sub_1D0BC40DC(a3, v31);
            }

            v32 = (16 * v16);
            *v32 = v17;
            v32[1] = v27;
            v14 = (16 * v16 + 16);
            v33 = *(a3 + 1) - *a3;
            v34 = (16 * v16 - v33);
            memcpy(v34, *a3, v33);
            v35 = *a3;
            *a3 = v34;
            *(a3 + 1) = v14;
            *(a3 + 2) = 0;
            if (v35)
            {
              operator delete(v35);
            }
          }

          else
          {
            *v14 = v17;
            *(v14 + 1) = v27;
            v14 += 16;
          }

          *(a3 + 1) = v14;
          v13 = *a3;
          v15 = &v14[-*a3];
        }
      }
    }

    if (v15 >= 0x40)
    {
      v36 = (v14 - 16);
      if (v14 - 16 != v13)
      {
        v37 = 0.0;
        v38 = (v14 - 16);
        v39 = (v14 - 16);
        do
        {
          v40 = v39[-1].f64[0];
          --v39;
          v37 = v37 + (*v38 + v40) * (v38[1] - *(v38 - 1));
          v38 = v39;
        }

        while (v39 != v13);
        if (v37 * 0.5 < 0.0 && v36 > v13)
        {
          v42 = v13 + 1;
          do
          {
            v49 = v42[-1];
            v42[-1] = *v36;
            *v36-- = v49;
          }

          while (v42++ < v36);
        }
      }
    }
  }

  return v9 > 2;
}

uint64_t trackrun::TrackRunEngineActiveObject::ConvertPointLatLonToEastNorth(uint64_t a1, float64x2_t *a2)
{
  v3 = *(a1 + 368);
  if (v3 == 1)
  {
    v4 = vmulq_f64(vsubq_f64(*a2, *(a1 + 352)), *(a1 + 376));
  }

  else
  {
    v7 = 13;
    v6 = 4;
    cnprint::CNPrinter::Print(&v7, &v6, "#tre_ao,point coordinate conversion from lat lon to east north could not be completed");
    v4 = 0uLL;
  }

  *a2 = vextq_s8(v4, v4, 8uLL);
  return v3;
}

double trackrun::TrackRunEngineActiveObject::FindClosestPointOnRing(cnprint::CNPrinter *a1, double **a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = *(*a2 + 1);
  v34 = **a2;
  v35 = v6;
  if (v5 != v4)
  {
    v7 = v5 + 2;
    if (v5 + 2 == v4)
    {
      v23 = *v5;
      v24 = v5[1];
      v25 = *(a1 + 1);
      v26 = v23 - v23;
      v27 = v24 - v24;
      v28 = *a1 - *v5;
      v29 = (v24 - v24) * (v25 - v24) + v28 * (v23 - v23);
      if (v29 <= 0.0 || (v30 = v27 * v27 + v26 * v26, v30 <= v29))
      {
        v32 = v28 * v28 + 0.0 + (v25 - v24) * (v25 - v24);
      }

      else
      {
        v31 = *a1 - (v23 + v26 * (v29 / v30));
        v32 = v31 * v31 + 0.0 + (v25 - (v24 + v27 * (v29 / v30))) * (v25 - (v24 + v27 * (v29 / v30)));
      }

      if (v32 < 1.79769313e308)
      {
        v34 = *v5;
        v35 = v34;
      }
    }

    else
    {
      v8 = *a1;
      v9 = *(a1 + 1);
      v11 = *v5;
      v10 = v5[1];
      v12 = 1.79769313e308;
      do
      {
        v13 = *v7;
        v14 = v7[1];
        v15 = *v7 - v11;
        v16 = v14 - v10;
        v17 = (v9 - v10) * (v14 - v10) + (v8 - v11) * v15;
        if (v17 <= 0.0)
        {
          v22 = (v8 - v11) * (v8 - v11) + 0.0 + (v9 - v10) * (v9 - v10);
        }

        else
        {
          v18 = v16 * v16 + v15 * v15;
          if (v18 <= v17)
          {
            v20 = v9 - v14;
            v21 = v8 - v13;
          }

          else
          {
            v19 = v17 / v18;
            v20 = v9 - (v10 + v16 * v19);
            v21 = v8 - (v11 + v15 * v19);
          }

          v22 = v21 * v21 + 0.0 + v20 * v20;
        }

        if (v22 < v12)
        {
          v34 = *(v7 - 1);
          v35 = *v7;
          v12 = v22;
        }

        v7 += 2;
        v10 = v14;
        v11 = v13;
      }

      while (v7 != v4);
    }
  }

  return trackrun::TrackRunEngineActiveObject::FindClosestPointOnLineSegment(a1, &v34, a3, a4, 0);
}

void trackrun::TrackRunEngineActiveObject::ComputeAcrossTrackDistanceInformation(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, cnprint::CNPrinter *a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 64) = 0;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 72) = 0x3FF0000000000000;
  if (*(a3 + 96))
  {
    trackrun::TrackRunEngineActiveObject::FindClosestPointOnRing(a4, *(a3 + 40), 1, 0);
    v11 = v10;
    *(a5 + 24) = v10;
  }

  else
  {
    v11 = 0.0;
  }

  if (*(a1 + 1176) == 1)
  {
    v12 = *(a1 + 1169);
    if (v12 == 1)
    {
      v13 = -0.1863;
    }

    else
    {
      if (v12 != 2)
      {
        goto LABEL_10;
      }

      v13 = 0.1863;
    }

    v11 = v11 + v13;
    *(a5 + 24) = v11;
  }

LABEL_10:
  *a5 = *a4;
  v14 = *(a2 + 200);
  if (v14 > 20.0)
  {
    LOWORD(v36[0]) = 13;
    LOBYTE(v35) = 3;
    sub_1D0B751F4(v37, "TrackRunEngineActiveObject");
    if (v38 >= 0)
    {
      v15 = v37;
    }

    else
    {
      v15 = v37[0];
    }

    cnprint::CNPrinter::Print(v36, &v35, "Warning %s, delta_distance for current epoch is very large,%.1lf", v15, *(a2 + 200));
    if (v38 < 0)
    {
      operator delete(v37[0]);
    }

    v14 = 20.0;
  }

  *(a5 + 16) = v14;
  v16 = *(a3 + 40);
  v17 = &v16[9 * *(a3 + 96) - 9];
  ClosestPointOnRing = trackrun::TrackRunEngineActiveObject::FindClosestPointOnRing(a4, v16, 0, 0);
  v20 = v19;
  v21 = trackrun::TrackRunEngineActiveObject::FindClosestPointOnRing(a4, v17, 0, 0);
  *(a5 + 32) = ClosestPointOnRing;
  *(a5 + 40) = v20;
  *(a5 + 48) = v21;
  *(a5 + 56) = v22;
  if (*(a1 + 2736) == 1)
  {
    *(a5 + 64) = *(a1 + 2704);
  }

  if ((*(a3 + 88) & 1) == 0)
  {
    sub_1D0C42F28();
  }

  v23 = *(a3 + 80);
  v24 = v11 + *(a3 + 96) * v23;
  v25 = v11 - v23;
  if (v24 < 0.0 || v25 > 0.0)
  {
    if (v24 >= 0.0)
    {
      v26 = v25;
    }

    else
    {
      v26 = -v24;
    }

    v27 = exp(-(*(*(a1 + 280) + 224) * v26));
    *(a5 + 72) = v27;
    *v36 = *a5;
    trackrun::TrackRunEngineActiveObject::ConvertPointEastNorthToLatLon(a1, v36);
    v35 = 13;
    v34 = 3;
    v28 = *(a1 + 2384);
    v29 = *(a2 + 48) + *(a2 + 40);
    v30 = (*(*a2 + 16))(a2);
    v32 = v31 + v30;
    trackrun::TrackRunEngineActiveObject::ConvertIosTimeToGregorianString(a1, *(a2 + 40), *(a2 + 48), v37);
    if (v38 >= 0)
    {
      v33 = v37;
    }

    else
    {
      v33 = v37[0];
    }

    cnprint::CNPrinter::Print(&v35, &v34, "TrackRun-OUT-%u,viewType,SingleArrowCoordinate,iOSTime,%.1lf,mcTime,%.1lf,gregTime,%s,latitude,%.7lf,longitude,%.7lf,course,%.2lf,speed,%.2lf,type,%d,distance,%.1lf,weight_factor,%.1lf", v28, v29, v32, v33, v36[0], v36[1], *(a2 + 152), *(a2 + 168), *(a2 + 104), v26, v27);
    if (v38 < 0)
    {
      operator delete(v37[0]);
    }
  }
}

void sub_1D0E695D4(_Unwind_Exception *exception_object)
{
  if (*(v1 - 81) < 0)
  {
    operator delete(*(v1 - 104));
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1D0E695F4(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 51 * ((v5 - v4) >> 3) - 1;
  }

  v7 = a1[4];
  v8 = a1[5] + v7;
  if (v6 == v8)
  {
    if (v7 < 0x33)
    {
      v9 = a1[3];
      v10 = v9 - *a1;
      if (v5 - v4 < v10)
      {
        operator new();
      }

      v11 = v10 >> 2;
      if (v9 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      sub_1D0C4E87C(v12);
    }

    a1[4] = v7 - 51;
    v17 = *v4;
    a1[1] = (v4 + 1);
    sub_1D0C149C4(a1, &v17);
    v4 = a1[1];
    v8 = a1[5] + a1[4];
  }

  v13 = v4[v8 / 0x33] + 80 * (v8 % 0x33);
  *v13 = *a2;
  result = *(a2 + 16);
  v15 = *(a2 + 32);
  v16 = *(a2 + 64);
  *(v13 + 48) = *(a2 + 48);
  *(v13 + 64) = v16;
  *(v13 + 16) = result;
  *(v13 + 32) = v15;
  ++a1[5];
  return result;
}

void sub_1D0E69A80(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void trackrun::TrackRunEngineActiveObject::PruneAcrossTrackDistanceDeque(trackrun::TrackRunEngineActiveObject *this)
{
  v5 = *(this + 355);
  if (v5 >= 2)
  {
    v28 = v4;
    v29 = v3;
    v30 = v1;
    v31 = v2;
    v7 = *(this + 354);
    do
    {
      v8 = v7 + v5;
      v9 = *(this + 351);
      v10 = (v9 + 8 * (v8 / 0x33));
      v11 = *v10 + 80 * (v8 % 0x33);
      if (*(this + 352) == v9)
      {
        v11 = 0;
      }

      if (*v10 == v11)
      {
        v11 = *(v10 - 1) + 4080;
      }

      trackrun::TrackRunEngineActiveObject::FindClosestPointOnLineSegment((v11 - 80), (*(v9 + 8 * (v7 / 0x33)) + 80 * (v7 % 0x33) + 32), 1, 0, 0);
      v14 = v13;
      v15 = *(this + 354);
      v16 = v15 + *(this + 355);
      v17 = *(this + 351);
      v18 = (v17 + 8 * (v16 / 0x33));
      v19 = *v18 + 80 * (v16 % 0x33);
      if (*(this + 352) == v17)
      {
        v19 = 0;
      }

      if (*v18 == v19)
      {
        v19 = *(v18 - 1) + 4080;
      }

      v20 = *(v19 - 16);
      v21 = *(*(v17 + 8 * (v15 / 0x33)) + 80 * (v15 % 0x33) + 64);
      LogLevel = cnprint::CNPrinter::GetLogLevel(v12);
      if (!LogLevel)
      {
        v27 = 13;
        v26 = 0;
        cnprint::CNPrinter::Print(&v27, &v26, "#tre_ao,lap_count,first,%d,last,%d,signed_last,%.1lf", v21, v20, v14);
      }

      if (v14 <= 0.0 || v20 <= v21 && *(this + 331) <= 250.0)
      {
        break;
      }

      if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
      {
        v25 = 13;
        v24 = 1;
        cnprint::CNPrinter::Print(&v25, &v24, "#tre_ao,dist_to_first_point is positive,discarding,%.1lf,size,%lu", v14, *(this + 355));
      }

      v23 = vaddq_s64(*(this + 177), xmmword_1D0E76280);
      *(this + 177) = v23;
      v7 = v23.i64[0];
      if (v23.i64[0] < 0x66uLL)
      {
        v5 = v23.u64[1];
      }

      else
      {
        operator delete(**(this + 351));
        *(this + 351) += 8;
        v7 = *(this + 354) - 51;
        *(this + 354) = v7;
        v5 = *(this + 355);
      }
    }

    while (v5 > 1);
  }
}

void trackrun::TrackRunEngineActiveObject::ComputeAcrossTrackDistanceEvidence(uint64_t *__return_ptr a1@<X8>, trackrun::TrackRunEngineActiveObject *this@<X0>, const trackrun::PositionEvent *a3@<X1>, const trackrun::RunningTrackData::RunningTrack *a4@<X2>)
{
  v4 = this;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  a1[4] = 0x7FF8000000000000;
  v5 = *(a4 + 12);
  if (!*(*(this + 35) + 66))
  {
    v5 = 1;
  }

  v29 = v5;
  if (!v5)
  {
    if ((*(*(this + 35) + 66) & 1) == 0)
    {
      return;
    }

    v8 = 0;
    goto LABEL_26;
  }

  v8 = 0;
  v9 = 0;
  v26 = this + 4456;
  v27 = 0x7FF8000000000000;
  v28 = 0;
  v10 = 0;
  v11 = INFINITY;
  v12 = 0;
  v13 = 0;
  do
  {
    v32[0] = 0;
    v33 = 0u;
    memset(v34, 0, sizeof(v34));
    v14 = 0.0;
    v15 = 10.0;
    if (*(v4 + 355))
    {
      v16 = 0;
      do
      {
        if ((*(a4 + 88) & 1) == 0)
        {
          goto LABEL_30;
        }

        v17 = (*(*(v4 + 351) + 8 * ((v16 + *(v4 + 354)) / 0x33)) + 80 * ((v16 + *(v4 + 354)) % 0x33));
        v31 = v17[3] + *(a4 + 10) * v9;
        this = sub_1D0B8954C(v32, &v31, v17[9] * v17[2]);
        ++v16;
        v18 = *(v4 + 355);
      }

      while (v16 < v18);
      v14 = *&v34[1];
      v19 = sqrt(*&v34[5]);
      if (v18 <= 4)
      {
        v15 = 10.0;
      }

      else
      {
        v15 = v19;
      }
    }

    v20 = fabs(v14);
    if (v20 < v11)
    {
      v11 = v20;
      v8 = v9;
    }

    if (*(*(v4 + 35) + 66))
    {
      this = cnprint::CNPrinter::GetLogLevel(this);
      if (this <= 1)
      {
        LOWORD(v31) = 13;
        v30 = 1;
        v21 = (*(*a3 + 16))(a3);
        if ((*(a4 + 88) & 1) == 0)
        {
LABEL_30:
          a1[1] = v12;
          a1[2] = v10;
          a1[3] = v28;
          a1[4] = v27;
          *a1 = v13;
          sub_1D0C42F28();
        }

        cnprint::CNPrinter::Print(&v31, &v30, "#tre_ao,time,%.3lf,laneidx,%lu,weighted_across_track_distance_sum,%.2lf,delta_distance_sum,%.1lf,lane_width,%.1lf,win_count,%u,standard_deviation,%.1lf,source,%hhu,delta_dist,%.3lf,speed,%.1lf", v22 + v21, v9 + 1, v14, *(&v33 + 4), *(a4 + 10), *&v26[4 * v9], v15, *(a3 + 104), *(a3 + 25), *(a3 + 21));
      }
    }

    if (!v9)
    {
      this = (*(*a3 + 16))(a3);
      v27 = v23;
      v28 = this;
      if ((*(a4 + 88) & 1) == 0)
      {
        a1[1] = v12;
        a1[2] = v10;
        a1[3] = this;
        a1[4] = v23;
        *a1 = v14;
        sub_1D0C42F28();
      }

      v12 = *(a4 + 10);
      v10 = *&v15;
      v13 = *&v14;
    }

    ++v9;
  }

  while (v9 != v29);
  a1[1] = v12;
  a1[2] = v10;
  v24 = *(*(v4 + 35) + 66);
  a1[3] = v28;
  a1[4] = v27;
  *a1 = v13;
  if (v24)
  {
LABEL_26:
    if (*(v4 + 2736) == 1)
    {
      if (*(v4 + 1352))
      {
        ++*(v4 + v8 + 1114);
      }
    }
  }
}

void sub_1D0E6A014(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 25;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 51;
  }

  a1[4] = v6;
}

double trackrun::TrackRunEngineActiveObject::FindClosestPointOnLineSegment(cnprint::CNPrinter *a1, double *a2, int a3, int a4, int a5)
{
  v6 = *(a1 + 1);
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = *a1 - *a2;
  v11 = v6 - v7;
  v12 = v8 - *a2;
  v13 = v9 - v7;
  v14 = v13 * v13 + v12 * v12;
  v15 = -1.0;
  if (fabs(v14) >= 2.22044605e-16)
  {
    v15 = (v11 * v13 + v10 * v12) / v14;
  }

  if (v15 < 0.0 && a5 == 0)
  {
    v8 = *a2;
    v9 = a2[1];
    if (a3)
    {
      goto LABEL_13;
    }

LABEL_22:
    if (!a4)
    {
      return v8;
    }

    goto LABEL_23;
  }

  if (v15 <= 1.0 || a5 != 0)
  {
    v8 = *a2 + v15 * v12;
    v9 = v7 + v15 * v13;
  }

  if (!a3)
  {
    goto LABEL_22;
  }

LABEL_13:
  v18 = sqrt((v6 - v9) * (v6 - v9) + (*a1 - v8) * (*a1 - v8));
  v19 = v12 * v11 - v13 * v10;
  v20 = 1.0;
  v21 = 0.0;
  if (v19 < 0.0)
  {
    v21 = -1.0;
  }

  if (v19 <= 0.0)
  {
    v20 = v21;
  }

  v22 = v18 * v20;
  if (!cnprint::CNPrinter::GetLogLevel(a1))
  {
    v25 = 13;
    v24 = 0;
    cnprint::CNPrinter::Print(&v25, &v24, "#tre_ao,signed_distance_to_closest_point_m,%.1lf", v22);
  }

  if (a4)
  {
LABEL_23:
    if (fabs(v12) > 0.000000015 || fabs(v13) > 0.000000015)
    {
      atan2(v12, v13);
    }
  }

  return v8;
}

uint64_t sub_1D0E6A238(uint64_t a1, uint64_t a2, void *a3, int8x16_t a4, int8x16_t a5)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  result = CNTimeSpan::operator-((a2 + 8), a3, a4, a5);
  *(a1 + 8) = result;
  *(a1 + 16) = v11;
  if (*(a2 + 24) == 1)
  {
    result = CNTimeSpan::operator-((a2 + 32), a3, v9, v10);
    *(a1 + 32) = result;
    *(a1 + 40) = v12;
  }

  return result;
}

void trackrun::TrackRunEngineActiveObject::HandleEvent(trackrun::TrackRunEngineActiveObject *this, const trackrun::TrackRunHintEvent *a2)
{
  if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    LOWORD(__p[0]) = 13;
    LOBYTE(v35) = 1;
    v4 = (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(__p, &v35, "#tre_ao,received track run hint event,time,%.1lf,lane_number,%hhu", v5 + v4, *(a2 + 56));
  }

  v35 = 13;
  v34 = 3;
  v6 = *(this + 2384);
  v7 = *(a2 + 56);
  v8 = -1.0;
  v9 = -1.0;
  if (*(this + 744) == 1 && (v10 = (*(*(this + 66) + 16))(), v9 = v11 + v10, (*(this + 744) & 1) != 0))
  {
    v12 = *(this + 71);
    v8 = *(this + 72) + v12;
    v13 = *(this + 72);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  trackrun::TrackRunEngineActiveObject::ConvertIosTimeToGregorianString(this, v12, v13, __p);
  if (v33 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  v15 = 0.0;
  v16 = 0.0;
  if (*(this + 744) == 1)
  {
    v15 = *(this + 80);
    v16 = *(this + 81);
  }

  if (*(this + 816) == 1)
  {
    v17 = *(this + 808);
  }

  else
  {
    v17 = -1;
  }

  cnprint::CNPrinter::Print(&v35, &v34, "TrackRun-Hint-%u hint:%d,viewType,SingleArrowCoordinate,time,%.1lf,iOSTime,%.1lf,gregTime,%s,latitude,%.7lf,longitude,%.7lf,lane_hint,%d", v6, v7, v9, v8, v14, v15, v16, v17);
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  if ((*(*(this + 35) + 201) & 1) == 0)
  {
    if (*(this + 4424) == 1)
    {
      v19 = *(a2 + 56);
      v20 = *(a2 + 8);
      v21 = *(a2 + 24);
      *(this + 275) = *(a2 + 40);
      *(this + 274) = v21;
      *(this + 273) = v20;
      *(this + 4416) = v19;
    }

    else
    {
      *(this + 545) = &unk_1F4CF0CE0;
      v22 = *(a2 + 8);
      v23 = *(a2 + 24);
      v24 = *(a2 + 40);
      *(this + 4416) = *(a2 + 56);
      *(this + 275) = v24;
      *(this + 274) = v23;
      *(this + 273) = v22;
      *(this + 4424) = 1;
    }

    if ((*(this + 816) & 1) == 0)
    {
      if (*(this + 2568) == 1)
      {
        *(this + 2568) = 0;
      }

      if (cnprint::CNPrinter::GetLogLevel(v18) <= 1)
      {
        LOWORD(__p[0]) = 13;
        LOBYTE(v35) = 1;
        cnprint::CNPrinter::Print(__p, &v35, "#tre_ao,received first lane hint of the workout, resetting start line.");
      }
    }

    if (*(this + 816) == 1)
    {
      v25 = *(a2 + 8);
      v26 = *(a2 + 24);
      v27 = *(a2 + 40);
      *(this + 808) = *(a2 + 56);
      *(this + 776) = v26;
      *(this + 792) = v27;
      *(this + 760) = v25;
    }

    else
    {
      *(this + 94) = &unk_1F4CF0CE0;
      v28 = *(a2 + 8);
      v29 = *(a2 + 24);
      v30 = *(a2 + 40);
      *(this + 808) = *(a2 + 56);
      *(this + 776) = v29;
      *(this + 792) = v30;
      *(this + 760) = v28;
      *(this + 816) = 1;
    }

    v31 = *(this + 808);
    if ((*(this + 4448) & 1) == 0)
    {
      *(this + 4448) = 1;
    }

    *(this + 555) = v31;
  }
}

void sub_1D0E6A5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void trackrun::TrackRunEngineActiveObject::Reset(trackrun::TrackRunEngineActiveObject *this)
{
  if (*(this + 224) == 1)
  {
    v6 = 13;
    v5 = 2;
    sub_1D0B751F4(__p, "TrackRunEngineActiveObject");
    if (v4 >= 0)
    {
      v2 = __p;
    }

    else
    {
      v2 = __p[0];
    }

    cnprint::CNPrinter::Print(&v6, &v5, "Resetting %s", v2);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }

    trackrun::TrackRunEngineActiveObject::ResetTrackStateWhenLeaveTrackOrSessionEnds(this);
    if (*(this + 744) == 1)
    {
      *(this + 744) = 0;
    }

    std::mutex::lock((this + 288));
    if (*(this + 1800) == 1)
    {
      *(this + 1800) = 0;
    }

    if (*(this + 2184) == 1)
    {
      *(this + 2184) = 0;
    }

    if (*(this + 416) == 1)
    {
      __p[0] = this + 392;
      sub_1D0E62CA0(__p);
      *(this + 416) = 0;
    }

    *(this + 44) = 0;
    *(this + 45) = 0;
    *(this + 46) = 0;
    *(this + 47) = 0x7FF8000000000000;
    *(this + 48) = 0x7FF8000000000000;
    std::mutex::unlock((this + 288));
  }

  *(this + 128) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0x7FF8000000000000;
  *(this + 19) = 0;
  *(this + 105) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0x7FF8000000000000;
  cnframework::ActiveObjectBase::ResetEventQueue(this);
}

void sub_1D0E6A720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t trackrun::TrackRunEngineActiveObject::ConvertPointEastNorthToLatLon(uint64_t a1, uint64_t a2)
{
  trackrun::TrackRunEngineActiveObject::TrackCoordinateTransform::ConvertEastNorthToLatLon(a1 + 352, a2, &v7);
  v3 = v8;
  if (v8 == 1)
  {
    *a2 = v7;
  }

  else
  {
    v6 = 13;
    v5 = 4;
    cnprint::CNPrinter::Print(&v6, &v5, "#tre_ao,point coordinate conversion from east north to lat lon could not be completed");
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return v3;
}

void sub_1D0E6A7B8(uint64_t a1)
{
  sub_1D0E6B318(a1);

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0E6A7F0(void *result)
{
  *result = &unk_1F4CF0FD8;
  result[18] = &unk_1F4CD5E28;
  result[1] = &unk_1F4CD5E28;
  return result;
}

void sub_1D0E6A850(void *a1)
{
  *a1 = &unk_1F4CF0FD8;
  a1[18] = &unk_1F4CD5E28;
  a1[1] = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

double sub_1D0E6A8C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x10000000CLL;
  *a2 = &unk_1F4CDFFF8;
  *(a2 + 8) = xmmword_1D0E83DD0;
  *(a2 + 32) = a2 + 40;
  v2 = 144;
  if (!*(a1 + 280))
  {
    v2 = 8;
  }

  *&result = sub_1D0B894B0(a2, a1 + v2).n128_u64[0];
  return result;
}

void sub_1D0E6A944(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 104;
        sub_1D0E61C78(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1D0E6A9AC(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    sub_1D0E61CC0(a1, a2);
  }

  sub_1D0C5663C();
}

uint64_t sub_1D0E6A9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      sub_1D0E6B1AC(a4, *(a2 + v7), *(a2 + v7 + 8), (*(a2 + v7 + 8) - *(a2 + v7)) >> 4);
      v9 = *(a2 + v7 + 24);
      *(a4 + 40) = 0;
      *(a4 + 24) = v9;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      sub_1D0E6AB04((a4 + 40), *(v8 + 40), *(v8 + 48), 0x8E38E38E38E38E39 * ((*(v8 + 48) - *(v8 + 40)) >> 3));
      v10 = *(a2 + v7 + 64);
      v11 = *(a2 + v7 + 80);
      *(a4 + 96) = *(a2 + v7 + 96);
      *(a4 + 64) = v10;
      *(a4 + 80) = v11;
      a4 += 104;
      v7 += 104;
    }

    while (v8 + 104 != a3);
  }

  return a4;
}

void sub_1D0E6AAC0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 104;
    v5 = -v2;
    do
    {
      sub_1D0E61C78(v4);
      v4 -= 104;
      v5 += 104;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1D0E6AB04(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1D0E6AB8C(result, a4);
  }

  return result;
}

void sub_1D0E6AB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1D0E620B8(&a9);
  _Unwind_Resume(a1);
}

void sub_1D0E6AB8C(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    sub_1D0E61E1C(a1, a2);
  }

  sub_1D0C5663C();
}

uint64_t sub_1D0E6ABDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      sub_1D0E6B1AC(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 4);
      v7 = *(v6 + 24);
      v8 = *(v6 + 40);
      *(v4 + 56) = *(v6 + 56);
      *(v4 + 40) = v8;
      *(v4 + 24) = v7;
      v6 += 72;
      v4 = v13 + 72;
      v13 += 72;
    }

    while (v6 != a3);
  }

  v11 = 1;
  sub_1D0E61F4C(v10);
  return v4;
}

uint64_t sub_1D0E6ACA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (a3 == v5)
      {
        *(a3 + 24) = *(v5 + 24);
      }

      else
      {
        sub_1D0E6AE98(a3, *v5, *(v5 + 8), (*(v5 + 8) - *v5) >> 4);
        v7 = (a3 + 40);
        v6 = *(a3 + 40);
        *(a3 + 24) = *(v5 + 24);
        v9 = *(v5 + 40);
        v8 = *(v5 + 48);
        v10 = v8 - v9;
        v11 = *(a3 + 56);
        if (v11 - v6 < (v8 - v9))
        {
          if (v6)
          {
            sub_1D0E6210C((a3 + 40));
            operator delete(*v7);
            v11 = 0;
            *v7 = 0;
            *(a3 + 48) = 0;
            *(a3 + 56) = 0;
          }

          v12 = 0x8E38E38E38E38E39 * (v10 >> 3);
          if (v12 <= 0x38E38E38E38E38ELL)
          {
            v13 = 0x8E38E38E38E38E39 * (v11 >> 3);
            if (2 * v13 > v12)
            {
              v12 = 2 * v13;
            }

            if (v13 >= 0x1C71C71C71C71C7)
            {
              v14 = 0x38E38E38E38E38ELL;
            }

            else
            {
              v14 = v12;
            }

            sub_1D0E6AB8C((a3 + 40), v14);
          }

          sub_1D0C5663C();
        }

        v15 = *(a3 + 48) - v6;
        if (v15 >= v10)
        {
          v16 = sub_1D0E6B000(*(v5 + 40), *(v5 + 48), v6);
          v17 = *(a3 + 48);
          if (v17 != v16)
          {
            v18 = *(a3 + 48);
            do
            {
              v20 = *(v18 - 72);
              v18 -= 72;
              v19 = v20;
              if (v20)
              {
                *(v17 - 64) = v19;
                operator delete(v19);
              }

              v17 = v18;
            }

            while (v18 != v16);
          }

          *(a3 + 48) = v16;
        }

        else
        {
          sub_1D0E6B000(*(v5 + 40), v9 + v15, v6);
          *(a3 + 48) = sub_1D0E6ABDC(a3 + 40, v9 + v15, v8, *(a3 + 48));
        }
      }

      v21 = *(v5 + 64);
      v22 = *(v5 + 80);
      *(a3 + 96) = *(v5 + 96);
      *(a3 + 64) = v21;
      *(a3 + 80) = v22;
      v5 += 104;
      a3 += 104;
    }

    while (v5 != a2);
  }

  return a3;
}

void **sub_1D0E6AE98(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1D0E6AFC4(v6, v10);
    }

    sub_1D0C5663C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_1D0E6AFC4(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1D0BC40DC(a1, a2);
  }

  sub_1D0C5663C();
}

uint64_t sub_1D0E6B000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (v5 != a3)
      {
        sub_1D0E6AE98(a3, *v5, *(v5 + 8), (*(v5 + 8) - *v5) >> 4);
      }

      v6 = *(v5 + 24);
      v7 = *(v5 + 40);
      *(a3 + 56) = *(v5 + 56);
      *(a3 + 40) = v7;
      *(a3 + 24) = v6;
      v5 += 72;
      a3 += 72;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t *sub_1D0E6B080(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1D0E6A9AC(result, a4);
  }

  return result;
}

void sub_1D0E6B0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1D0E62CA0(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_1D0E6B108(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      sub_1D0E6A944(a1);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v5 = a1;
    sub_1D0E62CA0(&v5);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a2 = 0uLL;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t *sub_1D0E6B1AC(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1D0E6AFC4(result, a4);
  }

  return result;
}

void sub_1D0E6B20C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1D0E6B228(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 176) == *(a2 + 176))
  {
    if (*(a1 + 176))
    {
      *a1 = *a2;
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = *(a2 + 64);
      if (*(a1 + 104) == *(a2 + 104))
      {
        if (*(a1 + 104))
        {
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 88) = *(a2 + 88);
        }
      }

      else if (*(a1 + 104))
      {
        *(a1 + 104) = 0;
      }

      else
      {
        v4 = *(a2 + 72);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 72) = v4;
        *(a1 + 104) = 1;
      }

      result = *(a2 + 112);
      v5 = *(a2 + 128);
      v6 = *(a2 + 144);
      *(a1 + 153) = *(a2 + 153);
      *(a1 + 128) = v5;
      *(a1 + 144) = v6;
      *(a1 + 112) = result;
    }
  }

  else if (*(a1 + 176))
  {
    *(a1 + 176) = 0;
  }

  else
  {
    v2 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v2;
    *(a1 + 72) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 168) = 0;
    result.n128_u64[0] = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0;
    *(a1 + 176) = 1;
  }

  return result;
}

void sub_1D0E6B318(uint64_t a1)
{
  *a1 = &unk_1F4CF0F48;
  *(a1 + 4048) = &unk_1F4CF0FD8;
  *(a1 + 4192) = &unk_1F4CD5E28;
  *(a1 + 4056) = &unk_1F4CD5E28;
  *(a1 + 2856) = &unk_1F4CD5E28;
  sub_1D0E6B518((a1 + 2800));
  if (*(a1 + 2376) == 1)
  {
    *(a1 + 2288) = &unk_1F4CF0B60;
    v2 = (a1 + 2296);
    sub_1D0E62CA0(&v2);
  }

  if (*(a1 + 2280) == 1)
  {
    *(a1 + 2192) = &unk_1F4CF0B60;
    v2 = (a1 + 2200);
    sub_1D0E62CA0(&v2);
  }

  if (*(a1 + 1416) == 1)
  {
    *(a1 + 1184) = &unk_1F4CF0BC0;
    if (*(a1 + 1271) < 0)
    {
      operator delete(*(a1 + 1248));
    }
  }

  if (*(a1 + 1104) == 1)
  {
    trackrun::VisitEvent::~VisitEvent((a1 + 824));
  }

  if (*(a1 + 448) == 1)
  {
    v2 = (a1 + 424);
    sub_1D0E62CA0(&v2);
  }

  if (*(a1 + 416) == 1)
  {
    v2 = (a1 + 392);
    sub_1D0E62CA0(&v2);
  }

  std::mutex::~mutex((a1 + 288));
  if (*(a1 + 279) < 0)
  {
    operator delete(*(a1 + 256));
  }

  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(a1);
}

uint64_t sub_1D0E6B518(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 25;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 51;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_1D0C565EC(a1);
}

std::bad_cast *sub_1D0E6B5C4(std::bad_cast *a1)
{
  result = std::bad_cast::bad_cast(a1);
  result->__vftable = &unk_1F4CF1058;
  return result;
}

std::bad_cast *sub_1D0E6B5FC(std::bad_cast *a1)
{
  result = std::bad_cast::bad_cast(a1);
  result->__vftable = &unk_1F4CF1080;
  return result;
}

void sub_1D0E6B634(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E6B678(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E6B6BC(__n128 *a1, uint64_t **a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = a1[1].n128_i64[0];
  v7 = v6 / 2 + a1->n128_u64[0] / 2;
  v8 = a1->n128_u64[0] % 2;
  v9 = a1[1];
  v83 = *a1;
  v84[1] = v9.n128_u64[1];
  v81.n128_u64[1] = v83.n128_u64[1];
  v82 = v9;
  v10 = v7 + ((((v6 % 2) + v8 + ((((v6 % 2) + v8) & 0x80) >> 7)) << 24) >> 25);
  v84[0] = v10;
  v80 = 0;
  v81.n128_u64[0] = v10;
  v78 = 0;
  v79 = 0;
  __p = 0;
  v76 = 0;
  v77 = 0;
  v73 = 0uLL;
  v74 = 0;
  v12 = *a2;
  v11 = a2[1];
  if (*a2 == v11)
  {
    v31 = 0;
    goto LABEL_59;
  }

  v14 = v84[1];
  v15 = v83;
  v16 = v82;
  v17 = v81.n128_i64[1];
  do
  {
    v18 = *v12;
    v19 = *(*v12 + 32);
    v20 = v10 >= v19 && v15.n128_i64[0] <= v18[6] && v14 >= v18[5] && v15.n128_u64[1] <= v18[7];
    if (v16.n128_i64[0] < v19 || v10 > v18[6])
    {
      if (!v20)
      {
        goto LABEL_32;
      }

      p_p = &v78;
LABEL_31:
      sub_1D0E6BC48(p_p, v12);
      v11 = a2[1];
      goto LABEL_32;
    }

    v23 = v18[5];
    v24 = v18[7];
    v25 = v16.n128_i64[1] >= v23 && v17 <= v24;
    v26 = v25;
    v27 = v25 || v20;
    v28 = (v20 & v26) == 0;
    v29 = &v78;
    if (!v28)
    {
      v29 = &v73;
    }

    if (v20)
    {
      p_p = v29;
    }

    else
    {
      p_p = &__p;
    }

    if (v27)
    {
      goto LABEL_31;
    }

LABEL_32:
    ++v12;
  }

  while (v12 != v11);
  v30 = *(&v73 + 1);
  v31 = v73;
  if (v73 == *(&v73 + 1))
  {
    v5 = a3;
    goto LABEL_59;
  }

  v32 = vnegq_f64(0);
  v33.f64[0] = NAN;
  v33.f64[1] = NAN;
  v34 = vnegq_f64(v33);
  v35 = v73;
  v36 = v34;
  v37 = v32;
  v5 = a3;
  do
  {
    v38 = *v35++;
    v39 = v38[2];
    v40 = v38[3];
    v41 = vcgtq_s64(v34, v39);
    v42 = vbslq_s8(v41, v39, v36);
    v43 = vbslq_s8(v41, v39, v34);
    v44 = vcgtq_s64(v43, v40);
    v36 = vbslq_s8(v44, v40, v42);
    v34 = vbslq_s8(v44, v40, v43);
    v45 = vcgtq_s64(v39, v32);
    v46 = vbslq_s8(v45, v39, v37);
    v47 = vbslq_s8(v45, v39, v32);
    v48 = vcgtq_s64(v40, v47);
    v37 = vbslq_s8(v48, v40, v46);
    v32 = vbslq_s8(v48, v40, v47);
  }

  while (v35 != *(&v73 + 1));
  v72[0] = v36;
  v72[1] = v37;
  v49 = v73;
  if (a3 > 0x63 || (v49 = v73, *(&v73 + 1) - v73 < 0x79uLL))
  {
LABEL_53:
    v54 = v49 + 1;
    if (v49 + 1 == v30)
    {
      goto LABEL_54;
    }

    v50 = v49 + 1;
    while (1)
    {
      v51 = *v49;
      v52 = *v50;
      if (*(*v49 + 48) >= *(*v50 + 32) && *(v51 + 32) <= *(v52 + 48))
      {
        v53 = *(v51 + 56) >= *(v52 + 40) && *(v51 + 40) <= *(v52 + 56);
        if (v53 && (*(v51 + 96) & 1) == 0 && (*(v52 + 96) & 1) == 0 && !sub_1D0B82AC0(*(a4 + 40), **a4, *(*a4 + 8), v51, *(a4 + 40), **a4, *(*a4 + 8), v52, *(a4 + 44), *(a4 + 8), *(a4 + 16), *(a4 + 24), *(a4 + 32)))
        {
          break;
        }
      }

      if (++v50 == v30)
      {
        ++v49;
        if (v54 == v30)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      }
    }

LABEL_62:
    v57 = 0;
    if (!v31)
    {
      goto LABEL_83;
    }

LABEL_82:
    *(&v73 + 1) = v31;
    operator delete(v31);
    goto LABEL_83;
  }

  if (!sub_1D0E6BEB8(v72, &v73, a3 + 1, a4))
  {
    goto LABEL_62;
  }

LABEL_54:
  if (!sub_1D0E6BD48(v72, &v73, &v78, a3, a4) || (sub_1D0E6BD48(v72, &v73, &__p, a3, a4) & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_59:
  v56 = v78;
  v55 = v79;
  if (v5 > 0x63 || (v79 - v78) < 0x79)
  {
    if (v78 != v79)
    {
LABEL_65:
      v58 = v56 + 8;
      if (v56 + 8 != v55)
      {
        v59 = v56 + 8;
        while (1)
        {
          v60 = *v56;
          v61 = *v59;
          if (*(*v56 + 48) >= *(*v59 + 32) && *(v60 + 32) <= *(v61 + 48))
          {
            v62 = *(v60 + 56) >= *(v61 + 40) && *(v60 + 40) <= *(v61 + 56);
            if (v62 && (*(v60 + 96) & 1) == 0 && (*(v61 + 96) & 1) == 0 && !sub_1D0B82AC0(*(a4 + 40), **a4, *(*a4 + 8), v60, *(a4 + 40), **a4, *(*a4 + 8), v61, *(a4 + 44), *(a4 + 8), *(a4 + 16), *(a4 + 24), *(a4 + 32)))
            {
              goto LABEL_62;
            }
          }

          v59 += 8;
          if (v59 == v55)
          {
            v56 += 8;
            if (v58 != v55)
            {
              goto LABEL_65;
            }

            break;
          }
        }
      }
    }
  }

  else if (!sub_1D0E6BEB8(&v83, &v78, v5 + 1, a4))
  {
    goto LABEL_62;
  }

  v64 = __p;
  v63 = v76;
  if (v5 > 0x63 || (v76 - __p) < 0x79)
  {
    if (__p != v76)
    {
LABEL_89:
      v66 = v64 + 8;
      if (v64 + 8 != v63)
      {
        v67 = v64 + 8;
        while (1)
        {
          v68 = *v64;
          v69 = *v67;
          if (*(*v64 + 48) >= *(*v67 + 32) && *(v68 + 32) <= *(v69 + 48))
          {
            v70 = *(v68 + 56) >= *(v69 + 40) && *(v68 + 40) <= *(v69 + 56);
            if (v70 && (*(v68 + 96) & 1) == 0 && (*(v69 + 96) & 1) == 0 && !sub_1D0B82AC0(*(a4 + 40), **a4, *(*a4 + 8), v68, *(a4 + 40), **a4, *(*a4 + 8), v69, *(a4 + 44), *(a4 + 8), *(a4 + 16), *(a4 + 24), *(a4 + 32)))
            {
              goto LABEL_62;
            }
          }

          v67 += 8;
          if (v67 == v63)
          {
            v64 += 8;
            if (v66 != v63)
            {
              goto LABEL_89;
            }

            break;
          }
        }
      }
    }

    v57 = 1;
    if (!v31)
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

  v57 = sub_1D0E6BEB8(&v81, &__p, v5 + 1, a4);
  if (v31)
  {
    goto LABEL_82;
  }

LABEL_83:
  if (__p)
  {
    operator delete(__p);
  }

  if (v78)
  {
    operator delete(v78);
  }

  return v57;
}

void sub_1D0E6BBFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26)
{
  if (v26)
  {
    operator delete(v26);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0E6BC48(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      sub_1D0C5663C();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_1D0C54BE8();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t sub_1D0E6BD48(uint64_t a1, uint64_t **a2, uint64_t **a3, unint64_t a4, uint64_t a5)
{
  v9 = *a2;
  v8 = a2[1];
  if ((v8 - *a2) < 0x80 || a4 > 0x63 || (a3[1] - *a3) < 0x79)
  {
    if (v9 != v8)
    {
      v10 = a3[1];
      if (*a3 != v10)
      {
        do
        {
          v11 = *a3;
          if (*a3 != v10)
          {
            do
            {
              v12 = *v9;
              v13 = *v11;
              if (*(*v9 + 48) >= *(*v11 + 32) && *(v12 + 32) <= *(v13 + 48))
              {
                v14 = *(v12 + 56) >= *(v13 + 40) && *(v12 + 40) <= *(v13 + 56);
                if (v14 && (*(v12 + 96) & 1) == 0 && (*(v13 + 96) & 1) == 0)
                {
                  result = sub_1D0B82AC0(*(a5 + 40), **a5, *(*a5 + 8), v12, *(a5 + 40), **a5, *(*a5 + 8), v13, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32));
                  if (!result)
                  {
                    return result;
                  }

                  v10 = a3[1];
                }
              }

              ++v11;
            }

            while (v11 != v10);
            v8 = a2[1];
          }

          ++v9;
        }

        while (v9 != v8);
      }
    }

    return 1;
  }

  else
  {
    v16 = a4 + 1;

    return sub_1D0E6D16C(a1, a2, a3, v16, a5);
  }
}

uint64_t sub_1D0E6BEB8(__n128 *a1, uint64_t **a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = a1[1].n128_u64[0];
  v6 = a1[1].n128_i64[1];
  v8 = a1->n128_i64[1];
  v9 = v6 / 2 + v8 / 2;
  v10 = a1[1];
  v85 = *a1;
  v83.n128_u64[0] = v85.n128_u64[0];
  v84 = v10;
  LODWORD(v6) = v6 % 2 + v8 % 2;
  v11 = v9 + ((v6 + ((v6 & 0x80) >> 7)) << 24 >> 25);
  v86 = v7;
  v87 = v11;
  v83.n128_u64[1] = v11;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  __p = 0;
  v78 = 0;
  v79 = 0;
  v75 = 0uLL;
  v76 = 0;
  v13 = *a2;
  v12 = a2[1];
  if (*a2 == v12)
  {
    v33 = 0;
    goto LABEL_59;
  }

  v16 = v85.n128_i64[1];
  v15 = v86;
  v17 = v85.n128_u64[0];
  v18 = v84;
  v19 = v83.n128_u64[0];
  do
  {
    v20 = *v13;
    v21 = *(*v13 + 32);
    v22 = v15 >= v21 && v17 <= v20[6] && v11 >= v20[5] && v16 <= v20[7];
    if (v18.n128_i64[0] < v21 || v19 > v20[6])
    {
      if (!v22)
      {
        goto LABEL_32;
      }

      p_p = &v80;
LABEL_31:
      sub_1D0E6BC48(p_p, v13);
      v12 = a2[1];
      goto LABEL_32;
    }

    v25 = v20[5];
    v26 = v20[7];
    v27 = v18.n128_i64[1] >= v25 && v11 <= v26;
    v28 = v27;
    v29 = v27 || v22;
    v30 = (v22 & v28) == 0;
    v31 = &v80;
    if (!v30)
    {
      v31 = &v75;
    }

    if (v22)
    {
      p_p = v31;
    }

    else
    {
      p_p = &__p;
    }

    if (v29)
    {
      goto LABEL_31;
    }

LABEL_32:
    ++v13;
  }

  while (v13 != v12);
  v32 = *(&v75 + 1);
  v33 = v75;
  if (v75 == *(&v75 + 1))
  {
    v5 = a3;
    goto LABEL_59;
  }

  v34 = vnegq_f64(0);
  v35.f64[0] = NAN;
  v35.f64[1] = NAN;
  v36 = vnegq_f64(v35);
  v37 = v75;
  v38 = v36;
  v39 = v34;
  v5 = a3;
  do
  {
    v40 = *v37++;
    v41 = v40[2];
    v42 = v40[3];
    v43 = vcgtq_s64(v36, v41);
    v44 = vbslq_s8(v43, v41, v38);
    v45 = vbslq_s8(v43, v41, v36);
    v46 = vcgtq_s64(v45, v42);
    v38 = vbslq_s8(v46, v42, v44);
    v36 = vbslq_s8(v46, v42, v45);
    v47 = vcgtq_s64(v41, v34);
    v48 = vbslq_s8(v47, v41, v39);
    v49 = vbslq_s8(v47, v41, v34);
    v50 = vcgtq_s64(v42, v49);
    v39 = vbslq_s8(v50, v42, v48);
    v34 = vbslq_s8(v50, v42, v49);
  }

  while (v37 != *(&v75 + 1));
  v74[0] = v38;
  v74[1] = v39;
  v51 = v75;
  if (a3 > 0x63 || (v51 = v75, *(&v75 + 1) - v75 < 0x79uLL))
  {
LABEL_53:
    v56 = v51 + 1;
    if (v51 + 1 == v32)
    {
      goto LABEL_54;
    }

    v52 = v51 + 1;
    while (1)
    {
      v53 = *v51;
      v54 = *v52;
      if (*(*v51 + 48) >= *(*v52 + 32) && *(v53 + 32) <= *(v54 + 48))
      {
        v55 = *(v53 + 56) >= *(v54 + 40) && *(v53 + 40) <= *(v54 + 56);
        if (v55 && (*(v53 + 96) & 1) == 0 && (*(v54 + 96) & 1) == 0 && !sub_1D0B82AC0(*(a4 + 40), **a4, *(*a4 + 8), v53, *(a4 + 40), **a4, *(*a4 + 8), v54, *(a4 + 44), *(a4 + 8), *(a4 + 16), *(a4 + 24), *(a4 + 32)))
        {
          break;
        }
      }

      if (++v52 == v32)
      {
        ++v51;
        if (v56 == v32)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      }
    }

LABEL_62:
    v59 = 0;
    if (!v33)
    {
      goto LABEL_83;
    }

LABEL_82:
    *(&v75 + 1) = v33;
    operator delete(v33);
    goto LABEL_83;
  }

  if (!sub_1D0E6B6BC(v74, &v75, a3 + 1, a4))
  {
    goto LABEL_62;
  }

LABEL_54:
  if (!sub_1D0E6C448(v74, &v75, &v80, a3, a4) || (sub_1D0E6C448(v74, &v75, &__p, a3, a4) & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_59:
  v58 = v80;
  v57 = v81;
  if (v5 > 0x63 || (v81 - v80) < 0x79)
  {
    if (v80 != v81)
    {
LABEL_65:
      v60 = v58 + 8;
      if (v58 + 8 != v57)
      {
        v61 = v58 + 8;
        while (1)
        {
          v62 = *v58;
          v63 = *v61;
          if (*(*v58 + 48) >= *(*v61 + 32) && *(v62 + 32) <= *(v63 + 48))
          {
            v64 = *(v62 + 56) >= *(v63 + 40) && *(v62 + 40) <= *(v63 + 56);
            if (v64 && (*(v62 + 96) & 1) == 0 && (*(v63 + 96) & 1) == 0 && !sub_1D0B82AC0(*(a4 + 40), **a4, *(*a4 + 8), v62, *(a4 + 40), **a4, *(*a4 + 8), v63, *(a4 + 44), *(a4 + 8), *(a4 + 16), *(a4 + 24), *(a4 + 32)))
            {
              goto LABEL_62;
            }
          }

          v61 += 8;
          if (v61 == v57)
          {
            v58 += 8;
            if (v60 != v57)
            {
              goto LABEL_65;
            }

            break;
          }
        }
      }
    }
  }

  else if (!sub_1D0E6B6BC(&v85, &v80, v5 + 1, a4))
  {
    goto LABEL_62;
  }

  v66 = __p;
  v65 = v78;
  if (v5 > 0x63 || (v78 - __p) < 0x79)
  {
    if (__p != v78)
    {
LABEL_89:
      v68 = v66 + 8;
      if (v66 + 8 != v65)
      {
        v69 = v66 + 8;
        while (1)
        {
          v70 = *v66;
          v71 = *v69;
          if (*(*v66 + 48) >= *(*v69 + 32) && *(v70 + 32) <= *(v71 + 48))
          {
            v72 = *(v70 + 56) >= *(v71 + 40) && *(v70 + 40) <= *(v71 + 56);
            if (v72 && (*(v70 + 96) & 1) == 0 && (*(v71 + 96) & 1) == 0 && !sub_1D0B82AC0(*(a4 + 40), **a4, *(*a4 + 8), v70, *(a4 + 40), **a4, *(*a4 + 8), v71, *(a4 + 44), *(a4 + 8), *(a4 + 16), *(a4 + 24), *(a4 + 32)))
            {
              goto LABEL_62;
            }
          }

          v69 += 8;
          if (v69 == v65)
          {
            v66 += 8;
            if (v68 != v65)
            {
              goto LABEL_89;
            }

            break;
          }
        }
      }
    }

    v59 = 1;
    if (!v33)
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

  v59 = sub_1D0E6B6BC(&v83, &__p, v5 + 1, a4);
  if (v33)
  {
    goto LABEL_82;
  }

LABEL_83:
  if (__p)
  {
    operator delete(__p);
  }

  if (v80)
  {
    operator delete(v80);
  }

  return v59;
}

void sub_1D0E6C3FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26)
{
  if (v26)
  {
    operator delete(v26);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0E6C448(__n128 *a1, uint64_t **a2, uint64_t **a3, unint64_t a4, uint64_t a5)
{
  v9 = *a2;
  v8 = a2[1];
  if ((v8 - *a2) < 0x80 || a4 > 0x63 || (a3[1] - *a3) < 0x79)
  {
    if (v9 != v8)
    {
      v10 = a3[1];
      if (*a3 != v10)
      {
        do
        {
          v11 = *a3;
          if (*a3 != v10)
          {
            do
            {
              v12 = *v9;
              v13 = *v11;
              if (*(*v9 + 48) >= *(*v11 + 32) && *(v12 + 32) <= *(v13 + 48))
              {
                v14 = *(v12 + 56) >= *(v13 + 40) && *(v12 + 40) <= *(v13 + 56);
                if (v14 && (*(v12 + 96) & 1) == 0 && (*(v13 + 96) & 1) == 0)
                {
                  result = sub_1D0B82AC0(*(a5 + 40), **a5, *(*a5 + 8), v12, *(a5 + 40), **a5, *(*a5 + 8), v13, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32));
                  if (!result)
                  {
                    return result;
                  }

                  v10 = a3[1];
                }
              }

              ++v11;
            }

            while (v11 != v10);
            v8 = a2[1];
          }

          ++v9;
        }

        while (v9 != v8);
      }
    }

    return 1;
  }

  else
  {
    v16 = a4 + 1;

    return sub_1D0E6C5B8(a1, a2, a3, v16, a5);
  }
}

uint64_t sub_1D0E6C5B8(__n128 *a1, uint64_t **a2, uint64_t **a3, unint64_t a4, uint64_t a5)
{
  v6 = a1[1].n128_i64[0];
  v7 = a1[1];
  v8 = a1->n128_u64[0] / 2;
  v191 = *a1;
  v192[1] = v7.n128_u64[1];
  v189 = *(&v191 + 1);
  v190 = v7;
  v9 = v6 % 2 + v191 - 2 * v8;
  v10 = v6 / 2 + v191 / 2 + ((v9 + ((v9 & 0x80) >> 7)) << 24 >> 25);
  v192[0] = v10;
  v187 = 0;
  v188 = v10;
  v185 = 0;
  v186 = 0;
  v182 = 0;
  v183 = 0;
  v184 = 0;
  v179 = 0;
  v180 = 0;
  v181 = 0;
  v176 = 0;
  v177 = 0;
  v178 = 0;
  v173 = 0;
  v174 = 0;
  v175 = 0;
  __p = 0;
  v171 = 0;
  v172 = 0;
  v12 = *a2;
  v11 = a2[1];
  if (*a2 != v11)
  {
    v14 = v192[1];
    v15 = v191;
    v16 = v190;
    v17 = v189;
    while (1)
    {
      v18 = *v12;
      v19 = *(*v12 + 32);
      if (v10 >= v19 && v15 <= v18[6])
      {
        v21 = v14 >= v18[5] && *(&v15 + 1) <= v18[7];
        v20 = v21;
      }

      else
      {
        v20 = 0;
      }

      if (v16.n128_i64[0] >= v19 && v10 <= v18[6])
      {
        break;
      }

      if (v20)
      {
        v22 = &v185;
LABEL_31:
        sub_1D0E6BC48(v22, v12);
        v11 = a2[1];
      }

LABEL_32:
      if (++v12 == v11)
      {
        goto LABEL_33;
      }
    }

    v23 = v18[5];
    v24 = v18[7];
    v25 = v16.n128_i64[1] >= v23 && v17 <= v24;
    v26 = v25;
    v27 = v25 || v20;
    v28 = (v20 & v26) == 0;
    v29 = &v185;
    if (!v28)
    {
      v29 = &v179;
    }

    if (v20)
    {
      v22 = v29;
    }

    else
    {
      v22 = &v182;
    }

    if ((v27 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_33:
  v31 = *a3;
  v30 = a3[1];
  if (*a3 != v30)
  {
    v32 = v192[1];
    v33 = v191;
    v34 = v190;
    v35 = v189;
    while (1)
    {
      v36 = *v31;
      v37 = *(*v31 + 32);
      if (v10 >= v37 && v33 <= v36[6])
      {
        v39 = v32 >= v36[5] && *(&v33 + 1) <= v36[7];
        v38 = v39;
      }

      else
      {
        v38 = 0;
      }

      if (v34.n128_i64[0] >= v37 && v10 <= v36[6])
      {
        break;
      }

      if (v38)
      {
        v40 = &v176;
LABEL_63:
        sub_1D0E6BC48(v40, v31);
        v30 = a3[1];
      }

LABEL_64:
      if (++v31 == v30)
      {
        v47 = __p;
        goto LABEL_67;
      }
    }

    v41 = v36[5];
    v42 = v36[7];
    v43 = v34.n128_i64[1] >= v41 && v35 <= v42;
    v44 = v43;
    v45 = v43 || v38;
    v28 = (v38 & v44) == 0;
    p_p = &v176;
    if (!v28)
    {
      p_p = &__p;
    }

    if (v38)
    {
      v40 = p_p;
    }

    else
    {
      v40 = &v173;
    }

    if ((v45 & 1) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  v47 = 0;
LABEL_67:
  v48 = v179;
  v49 = v180;
  if (v179 == v180)
  {
    v51 = v171;
  }

  else
  {
    v50 = v180 - v179;
    v51 = v171;
    if ((v180 - v179) < 0x80 || a4 > 0x63 || (v171 - v47) < 0x79)
    {
      if (v47 != v171)
      {
        v52 = v179;
LABEL_71:
        v53 = v47;
        while (1)
        {
          v54 = *v52;
          v55 = *v53;
          if (*(*v52 + 48) >= (*v53)[2].i64[0] && *(v54 + 32) <= v55[3].i64[0])
          {
            v56 = *(v54 + 56) >= v55[2].i64[1] && *(v54 + 40) <= v55[3].i64[1];
            if (v56 && (*(v54 + 96) & 1) == 0 && (v55[6].i8[0] & 1) == 0 && !sub_1D0B82AC0(*(a5 + 40), **a5, *(*a5 + 8), v54, *(a5 + 40), **a5, *(*a5 + 8), v55->i32, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
            {
              goto LABEL_216;
            }
          }

          if (++v53 == v51)
          {
            if (++v52 != v49)
            {
              goto LABEL_71;
            }

            break;
          }
        }
      }
    }

    else
    {
      v71 = vnegq_f64(0);
      v72.f64[0] = NAN;
      v72.f64[1] = NAN;
      v73 = vnegq_f64(v72);
      v74 = v179;
      v75 = v73;
      v76 = v71;
      do
      {
        v77 = *v74++;
        v78 = v77[2];
        v79 = v77[3];
        v80 = vcgtq_s64(v73, v78);
        v81 = vbslq_s8(v80, v78, v75);
        v82 = vbslq_s8(v80, v78, v73);
        v83 = vcgtq_s64(v82, v79);
        v75 = vbslq_s8(v83, v79, v81);
        v73 = vbslq_s8(v83, v79, v82);
        v84 = vcgtq_s64(v78, v71);
        v85 = vbslq_s8(v84, v78, v76);
        v86 = vbslq_s8(v84, v78, v71);
        v87 = vcgtq_s64(v79, v86);
        v76 = vbslq_s8(v87, v79, v85);
        v71 = vbslq_s8(v87, v79, v86);
      }

      while (v74 != v180);
      v168 = v75;
      v169 = v76;
      if (v47 != v171)
      {
        v88 = v47;
        v89 = v75;
        v90 = v76;
        do
        {
          v91 = *v88++;
          v92 = v91[2];
          v93 = v91[3];
          v94 = vcgtq_s64(v75, v92);
          v95 = vbslq_s8(v94, v92, v89);
          v96 = vbslq_s8(v94, v92, v75);
          v97 = vcgtq_s64(v96, v93);
          v89 = vbslq_s8(v97, v93, v95);
          v75 = vbslq_s8(v97, v93, v96);
          v98 = vcgtq_s64(v92, v76);
          v99 = vbslq_s8(v98, v92, v90);
          v100 = vbslq_s8(v98, v92, v76);
          v101 = vcgtq_s64(v93, v100);
          v90 = vbslq_s8(v101, v93, v99);
          v76 = vbslq_s8(v101, v93, v100);
        }

        while (v88 != v171);
        v168 = v89;
        v169 = v90;
      }

      if ((sub_1D0E6D16C(&v168, &v179, &__p, a4 + 1, a5) & 1) == 0)
      {
        goto LABEL_216;
      }
    }

    v103 = v176;
    v102 = v177;
    if ((v177 - v176) < 0x80 || (v174 - v173) < 0x80 || a4 > 0x63 || v50 < 0x79)
    {
      if (v176 != v177)
      {
        v104 = v48;
LABEL_132:
        v105 = v103;
        while (1)
        {
          v106 = *v104;
          v107 = *v105;
          if (*(*v104 + 48) >= *(*v105 + 32) && *(v106 + 32) <= *(v107 + 48))
          {
            v108 = *(v106 + 56) >= *(v107 + 40) && *(v106 + 40) <= *(v107 + 56);
            if (v108 && (*(v106 + 96) & 1) == 0 && (*(v107 + 96) & 1) == 0 && !sub_1D0B82AC0(*(a5 + 40), **a5, *(*a5 + 8), v106, *(a5 + 40), **a5, *(*a5 + 8), v107, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
            {
              goto LABEL_216;
            }
          }

          v105 += 8;
          if (v105 == v102)
          {
            if (++v104 != v49)
            {
              goto LABEL_132;
            }

            break;
          }
        }
      }

      v109 = v173;
      v110 = v174;
      if (v173 != v174)
      {
        v111 = v48;
LABEL_147:
        v112 = v109;
        while (1)
        {
          v113 = *v111;
          v114 = *v112;
          if (*(*v111 + 48) >= *(*v112 + 32) && *(v113 + 32) <= *(v114 + 48))
          {
            v115 = *(v113 + 56) >= *(v114 + 40) && *(v113 + 40) <= *(v114 + 56);
            if (v115 && (*(v113 + 96) & 1) == 0 && (*(v114 + 96) & 1) == 0 && !sub_1D0B82AC0(*(a5 + 40), **a5, *(*a5 + 8), v113, *(a5 + 40), **a5, *(*a5 + 8), v114, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
            {
              goto LABEL_216;
            }
          }

          v112 += 8;
          if (v112 == v110)
          {
            if (++v111 != v49)
            {
              goto LABEL_147;
            }

            break;
          }
        }
      }
    }

    else
    {
      v116 = vnegq_f64(0);
      v117.f64[0] = NAN;
      v117.f64[1] = NAN;
      v118 = vnegq_f64(v117);
      v119 = v48;
      v120 = v118;
      v121 = v116;
      do
      {
        v122 = *v119++;
        v123 = v122[2];
        v124 = v122[3];
        v125 = vcgtq_s64(v118, v123);
        v126 = vbslq_s8(v125, v123, v120);
        v127 = vbslq_s8(v125, v123, v118);
        v128 = vcgtq_s64(v127, v124);
        v120 = vbslq_s8(v128, v124, v126);
        v118 = vbslq_s8(v128, v124, v127);
        v129 = vcgtq_s64(v123, v116);
        v130 = vbslq_s8(v129, v123, v121);
        v131 = vbslq_s8(v129, v123, v116);
        v132 = vcgtq_s64(v124, v131);
        v121 = vbslq_s8(v132, v124, v130);
        v116 = vbslq_s8(v132, v124, v131);
      }

      while (v119 != v49);
      v168 = v120;
      v169 = v121;
      if (!sub_1D0E6D16C(&v168, &v179, &v176, a4 + 1, a5) || (sub_1D0E6D16C(&v168, &v179, &v173, a4 + 1, a5) & 1) == 0)
      {
        goto LABEL_216;
      }
    }
  }

  v58 = v185;
  v57 = v186;
  v59 = v186 - v185;
  if (v47 != v51)
  {
    if (v59 < 0x80 || (v183 - v182) < 0x80 || a4 > 0x63 || (v51 - v47) < 0x79)
    {
      if (v185 != v186)
      {
        v60 = v185;
LABEL_91:
        v61 = v47;
        while (1)
        {
          v62 = *v60;
          v63 = *v61;
          if (*(*v60 + 48) >= (*v61)[2].i64[0] && *(v62 + 32) <= v63[3].i64[0])
          {
            v64 = *(v62 + 56) >= v63[2].i64[1] && *(v62 + 40) <= v63[3].i64[1];
            if (v64 && (*(v62 + 96) & 1) == 0 && (v63[6].i8[0] & 1) == 0 && !sub_1D0B82AC0(*(a5 + 40), **a5, *(*a5 + 8), v62, *(a5 + 40), **a5, *(*a5 + 8), v63->i32, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
            {
              goto LABEL_216;
            }
          }

          if (++v61 == v51)
          {
            if (++v60 != v57)
            {
              goto LABEL_91;
            }

            break;
          }
        }
      }

      v65 = v182;
      v66 = v183;
LABEL_105:
      if (v65 != v66)
      {
        v67 = v47;
        while (1)
        {
          v68 = *v65;
          v69 = *v67;
          if (*(*v65 + 48) >= (*v67)[2].i64[0] && *(v68 + 32) <= v69[3].i64[0])
          {
            v70 = *(v68 + 56) >= v69[2].i64[1] && *(v68 + 40) <= v69[3].i64[1];
            if (v70 && (*(v68 + 96) & 1) == 0 && (v69[6].i8[0] & 1) == 0 && !sub_1D0B82AC0(*(a5 + 40), **a5, *(*a5 + 8), v68, *(a5 + 40), **a5, *(*a5 + 8), v69->i32, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
            {
              goto LABEL_216;
            }
          }

          if (++v67 == v51)
          {
            v65 += 8;
            goto LABEL_105;
          }
        }
      }
    }

    else
    {
      v133 = vnegq_f64(0);
      v134.f64[0] = NAN;
      v134.f64[1] = NAN;
      v135 = vnegq_f64(v134);
      v136 = v47;
      v137 = v135;
      v138 = v133;
      do
      {
        v139 = *v136++;
        v140 = v139[2];
        v141 = v139[3];
        v142 = vcgtq_s64(v135, v140);
        v143 = vbslq_s8(v142, v140, v137);
        v144 = vbslq_s8(v142, v140, v135);
        v145 = vcgtq_s64(v144, v141);
        v137 = vbslq_s8(v145, v141, v143);
        v135 = vbslq_s8(v145, v141, v144);
        v146 = vcgtq_s64(v140, v133);
        v147 = vbslq_s8(v146, v140, v138);
        v148 = vbslq_s8(v146, v140, v133);
        v149 = vcgtq_s64(v141, v148);
        v138 = vbslq_s8(v149, v141, v147);
        v133 = vbslq_s8(v149, v141, v148);
      }

      while (v136 != v51);
      v168 = v137;
      v169 = v138;
      if (!sub_1D0E6D16C(&v168, &v185, &__p, a4 + 1, a5) || (sub_1D0E6D16C(&v168, &v182, &__p, a4 + 1, a5) & 1) == 0)
      {
        goto LABEL_216;
      }
    }
  }

  if (v59 < 0x80 || a4 > 0x63 || (v177 - v176) < 0x79)
  {
    if (v58 != v57)
    {
      v150 = v176;
      v151 = v177;
      if (v176 != v177)
      {
LABEL_177:
        v152 = v150;
        while (1)
        {
          v153 = *v58;
          v154 = *v152;
          if (*(*v58 + 48) >= *(*v152 + 32) && *(v153 + 32) <= *(v154 + 48))
          {
            v155 = *(v153 + 56) >= *(v154 + 40) && *(v153 + 40) <= *(v154 + 56);
            if (v155 && (*(v153 + 96) & 1) == 0 && (*(v154 + 96) & 1) == 0 && !sub_1D0B82AC0(*(a5 + 40), **a5, *(*a5 + 8), v153, *(a5 + 40), **a5, *(*a5 + 8), v154, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
            {
              goto LABEL_216;
            }
          }

          v152 += 8;
          if (v152 == v151)
          {
            if (++v58 != v57)
            {
              goto LABEL_177;
            }

            break;
          }
        }
      }
    }
  }

  else if ((sub_1D0E6D16C(&v191, &v185, &v176, a4 + 1, a5) & 1) == 0)
  {
    goto LABEL_216;
  }

  v157 = v182;
  v156 = v183;
  if ((v183 - v182) < 0x80 || a4 > 0x63 || (v174 - v173) < 0x79)
  {
    if (v182 == v183)
    {
      goto LABEL_214;
    }

    v158 = v173;
    v159 = v174;
    if (v173 == v174)
    {
      goto LABEL_214;
    }

LABEL_197:
    v160 = v158;
    while (1)
    {
      v161 = *v157;
      v162 = *v160;
      if (*(*v157 + 48) >= *(*v160 + 32) && *(v161 + 32) <= *(v162 + 48))
      {
        v163 = *(v161 + 56) >= *(v162 + 40) && *(v161 + 40) <= *(v162 + 56);
        if (v163 && (*(v161 + 96) & 1) == 0 && (*(v162 + 96) & 1) == 0 && !sub_1D0B82AC0(*(a5 + 40), **a5, *(*a5 + 8), v161, *(a5 + 40), **a5, *(*a5 + 8), v162, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
        {
          break;
        }
      }

      v160 += 8;
      if (v160 == v159)
      {
        v157 += 8;
        if (v157 != v156)
        {
          goto LABEL_197;
        }

        goto LABEL_214;
      }
    }

LABEL_216:
    v164 = 0;
    if (!v47)
    {
      goto LABEL_218;
    }

    goto LABEL_217;
  }

  if ((sub_1D0E6D16C(&v188, &v182, &v173, a4 + 1, a5) & 1) == 0)
  {
    goto LABEL_216;
  }

LABEL_214:
  v164 = 1;
  if (v47)
  {
LABEL_217:
    operator delete(v47);
  }

LABEL_218:
  if (v173)
  {
    operator delete(v173);
  }

  if (v176)
  {
    operator delete(v176);
  }

  if (v48)
  {
    operator delete(v48);
  }

  if (v182)
  {
    operator delete(v182);
  }

  if (v185)
  {
    operator delete(v185);
  }

  return v164;
}

void sub_1D0E6D0DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33)
{
  if (v33)
  {
    operator delete(v33);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  if (a33)
  {
    operator delete(a33);
  }

  v36 = *(v34 - 184);
  if (v36)
  {
    operator delete(v36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0E6D16C(uint64_t a1, uint64_t **a2, uint64_t **a3, unint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 24);
  v7 = *(a1 + 8);
  v8 = *a1;
  v193 = *(a1 + 16);
  v194 = v8;
  v192.n128_u64[0] = v8.n128_u64[0];
  v9 = v6 / 2 + v7 / 2;
  LODWORD(v6) = v6 % 2 + v7 % 2;
  v10 = v9 + ((v6 + ((v6 & 0x80) >> 7)) << 24 >> 25);
  v195 = v193;
  v196 = v10;
  v192.n128_u64[1] = v10;
  v189 = 0;
  v190 = 0;
  v191 = 0;
  v186 = 0;
  v187 = 0;
  v188 = 0;
  v183 = 0;
  v184 = 0;
  v185 = 0;
  v180 = 0;
  v181 = 0;
  v182 = 0;
  v177 = 0;
  v178 = 0;
  v179 = 0;
  __p = 0;
  v175 = 0;
  v176 = 0;
  v12 = *a2;
  v11 = a2[1];
  if (*a2 != v11)
  {
    v15 = v194.n128_i64[1];
    v14 = v195;
    v16 = *(&v193 + 1);
    v17 = v194.n128_u64[0];
    v18 = v193;
    v19 = v192.n128_u64[0];
    while (1)
    {
      v20 = *v12;
      v21 = *(*v12 + 32);
      if (v14 >= v21 && v17 <= v20[6])
      {
        v23 = v10 >= v20[5] && v15 <= v20[7];
        v22 = v23;
      }

      else
      {
        v22 = 0;
      }

      if (v18 >= v21 && v19 <= v20[6])
      {
        break;
      }

      if (v22)
      {
        v24 = &v189;
LABEL_31:
        sub_1D0E6BC48(v24, v12);
        v11 = a2[1];
      }

LABEL_32:
      if (++v12 == v11)
      {
        goto LABEL_33;
      }
    }

    v25 = v20[5];
    v26 = v20[7];
    v27 = v16 >= v25 && v10 <= v26;
    v28 = v27;
    v29 = v27 || v22;
    v30 = (v22 & v28) == 0;
    v31 = &v189;
    if (!v30)
    {
      v31 = &v183;
    }

    if (v22)
    {
      v24 = v31;
    }

    else
    {
      v24 = &v186;
    }

    if ((v29 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_33:
  v33 = *a3;
  v32 = a3[1];
  if (*a3 != v32)
  {
    v35 = v194.n128_i64[1];
    v34 = v195;
    v36 = *(&v193 + 1);
    v37 = v194.n128_u64[0];
    v38 = v193;
    v39 = v192.n128_u64[0];
    while (1)
    {
      v40 = *v33;
      v41 = *(*v33 + 32);
      if (v34 >= v41 && v37 <= v40[6])
      {
        v43 = v10 >= v40[5] && v35 <= v40[7];
        v42 = v43;
      }

      else
      {
        v42 = 0;
      }

      if (v38 >= v41 && v39 <= v40[6])
      {
        break;
      }

      if (v42)
      {
        v44 = &v180;
LABEL_63:
        sub_1D0E6BC48(v44, v33);
        v32 = a3[1];
      }

LABEL_64:
      if (++v33 == v32)
      {
        v51 = __p;
        goto LABEL_67;
      }
    }

    v45 = v40[5];
    v46 = v40[7];
    v47 = v36 >= v45 && v10 <= v46;
    v48 = v47;
    v49 = v47 || v42;
    v30 = (v42 & v48) == 0;
    p_p = &v180;
    if (!v30)
    {
      p_p = &__p;
    }

    if (v42)
    {
      v44 = p_p;
    }

    else
    {
      v44 = &v177;
    }

    if ((v49 & 1) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  v51 = 0;
LABEL_67:
  v52 = v183;
  v53 = v184;
  if (v183 == v184)
  {
    v55 = v175;
  }

  else
  {
    v54 = v184 - v183;
    v55 = v175;
    if ((v184 - v183) < 0x80 || a4 > 0x63 || (v175 - v51) < 0x79)
    {
      if (v51 != v175)
      {
        v56 = v183;
LABEL_71:
        v57 = v51;
        while (1)
        {
          v58 = *v56;
          v59 = *v57;
          if (*(*v56 + 48) >= (*v57)[2].i64[0] && *(v58 + 32) <= v59[3].i64[0])
          {
            v60 = *(v58 + 56) >= v59[2].i64[1] && *(v58 + 40) <= v59[3].i64[1];
            if (v60 && (*(v58 + 96) & 1) == 0 && (v59[6].i8[0] & 1) == 0 && !sub_1D0B82AC0(*(a5 + 40), **a5, *(*a5 + 8), v58, *(a5 + 40), **a5, *(*a5 + 8), v59->i32, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
            {
              goto LABEL_216;
            }
          }

          if (++v57 == v55)
          {
            if (++v56 != v53)
            {
              goto LABEL_71;
            }

            break;
          }
        }
      }
    }

    else
    {
      v75 = vnegq_f64(0);
      v76.f64[0] = NAN;
      v76.f64[1] = NAN;
      v77 = vnegq_f64(v76);
      v78 = v183;
      v79 = v77;
      v80 = v75;
      do
      {
        v81 = *v78++;
        v82 = v81[2];
        v83 = v81[3];
        v84 = vcgtq_s64(v77, v82);
        v85 = vbslq_s8(v84, v82, v79);
        v86 = vbslq_s8(v84, v82, v77);
        v87 = vcgtq_s64(v86, v83);
        v79 = vbslq_s8(v87, v83, v85);
        v77 = vbslq_s8(v87, v83, v86);
        v88 = vcgtq_s64(v82, v75);
        v89 = vbslq_s8(v88, v82, v80);
        v90 = vbslq_s8(v88, v82, v75);
        v91 = vcgtq_s64(v83, v90);
        v80 = vbslq_s8(v91, v83, v89);
        v75 = vbslq_s8(v91, v83, v90);
      }

      while (v78 != v184);
      v172 = v79;
      v173 = v80;
      if (v51 != v175)
      {
        v92 = v51;
        v93 = v79;
        v94 = v80;
        do
        {
          v95 = *v92++;
          v96 = v95[2];
          v97 = v95[3];
          v98 = vcgtq_s64(v79, v96);
          v99 = vbslq_s8(v98, v96, v93);
          v100 = vbslq_s8(v98, v96, v79);
          v101 = vcgtq_s64(v100, v97);
          v93 = vbslq_s8(v101, v97, v99);
          v79 = vbslq_s8(v101, v97, v100);
          v102 = vcgtq_s64(v96, v80);
          v103 = vbslq_s8(v102, v96, v94);
          v104 = vbslq_s8(v102, v96, v80);
          v105 = vcgtq_s64(v97, v104);
          v94 = vbslq_s8(v105, v97, v103);
          v80 = vbslq_s8(v105, v97, v104);
        }

        while (v92 != v175);
        v172 = v93;
        v173 = v94;
      }

      if ((sub_1D0E6C5B8(&v172, &v183, &__p, a4 + 1, a5) & 1) == 0)
      {
        goto LABEL_216;
      }
    }

    v107 = v180;
    v106 = v181;
    if ((v181 - v180) < 0x80 || (v178 - v177) < 0x80 || a4 > 0x63 || v54 < 0x79)
    {
      if (v180 != v181)
      {
        v108 = v52;
LABEL_132:
        v109 = v107;
        while (1)
        {
          v110 = *v108;
          v111 = *v109;
          if (*(*v108 + 48) >= *(*v109 + 32) && *(v110 + 32) <= *(v111 + 48))
          {
            v112 = *(v110 + 56) >= *(v111 + 40) && *(v110 + 40) <= *(v111 + 56);
            if (v112 && (*(v110 + 96) & 1) == 0 && (*(v111 + 96) & 1) == 0 && !sub_1D0B82AC0(*(a5 + 40), **a5, *(*a5 + 8), v110, *(a5 + 40), **a5, *(*a5 + 8), v111, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
            {
              goto LABEL_216;
            }
          }

          v109 += 8;
          if (v109 == v106)
          {
            if (++v108 != v53)
            {
              goto LABEL_132;
            }

            break;
          }
        }
      }

      v113 = v177;
      v114 = v178;
      if (v177 != v178)
      {
        v115 = v52;
LABEL_147:
        v116 = v113;
        while (1)
        {
          v117 = *v115;
          v118 = *v116;
          if (*(*v115 + 48) >= *(*v116 + 32) && *(v117 + 32) <= *(v118 + 48))
          {
            v119 = *(v117 + 56) >= *(v118 + 40) && *(v117 + 40) <= *(v118 + 56);
            if (v119 && (*(v117 + 96) & 1) == 0 && (*(v118 + 96) & 1) == 0 && !sub_1D0B82AC0(*(a5 + 40), **a5, *(*a5 + 8), v117, *(a5 + 40), **a5, *(*a5 + 8), v118, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
            {
              goto LABEL_216;
            }
          }

          v116 += 8;
          if (v116 == v114)
          {
            if (++v115 != v53)
            {
              goto LABEL_147;
            }

            break;
          }
        }
      }
    }

    else
    {
      v120 = vnegq_f64(0);
      v121.f64[0] = NAN;
      v121.f64[1] = NAN;
      v122 = vnegq_f64(v121);
      v123 = v52;
      v124 = v122;
      v125 = v120;
      do
      {
        v126 = *v123++;
        v127 = v126[2];
        v128 = v126[3];
        v129 = vcgtq_s64(v122, v127);
        v130 = vbslq_s8(v129, v127, v124);
        v131 = vbslq_s8(v129, v127, v122);
        v132 = vcgtq_s64(v131, v128);
        v124 = vbslq_s8(v132, v128, v130);
        v122 = vbslq_s8(v132, v128, v131);
        v133 = vcgtq_s64(v127, v120);
        v134 = vbslq_s8(v133, v127, v125);
        v135 = vbslq_s8(v133, v127, v120);
        v136 = vcgtq_s64(v128, v135);
        v125 = vbslq_s8(v136, v128, v134);
        v120 = vbslq_s8(v136, v128, v135);
      }

      while (v123 != v53);
      v172 = v124;
      v173 = v125;
      if (!sub_1D0E6C5B8(&v172, &v183, &v180, a4 + 1, a5) || (sub_1D0E6C5B8(&v172, &v183, &v177, a4 + 1, a5) & 1) == 0)
      {
        goto LABEL_216;
      }
    }
  }

  v62 = v189;
  v61 = v190;
  v63 = v190 - v189;
  if (v51 != v55)
  {
    if (v63 < 0x80 || (v187 - v186) < 0x80 || a4 > 0x63 || (v55 - v51) < 0x79)
    {
      if (v189 != v190)
      {
        v64 = v189;
LABEL_91:
        v65 = v51;
        while (1)
        {
          v66 = *v64;
          v67 = *v65;
          if (*(*v64 + 48) >= (*v65)[2].i64[0] && *(v66 + 32) <= v67[3].i64[0])
          {
            v68 = *(v66 + 56) >= v67[2].i64[1] && *(v66 + 40) <= v67[3].i64[1];
            if (v68 && (*(v66 + 96) & 1) == 0 && (v67[6].i8[0] & 1) == 0 && !sub_1D0B82AC0(*(a5 + 40), **a5, *(*a5 + 8), v66, *(a5 + 40), **a5, *(*a5 + 8), v67->i32, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
            {
              goto LABEL_216;
            }
          }

          if (++v65 == v55)
          {
            if (++v64 != v61)
            {
              goto LABEL_91;
            }

            break;
          }
        }
      }

      v69 = v186;
      v70 = v187;
LABEL_105:
      if (v69 != v70)
      {
        v71 = v51;
        while (1)
        {
          v72 = *v69;
          v73 = *v71;
          if (*(*v69 + 48) >= (*v71)[2].i64[0] && *(v72 + 32) <= v73[3].i64[0])
          {
            v74 = *(v72 + 56) >= v73[2].i64[1] && *(v72 + 40) <= v73[3].i64[1];
            if (v74 && (*(v72 + 96) & 1) == 0 && (v73[6].i8[0] & 1) == 0 && !sub_1D0B82AC0(*(a5 + 40), **a5, *(*a5 + 8), v72, *(a5 + 40), **a5, *(*a5 + 8), v73->i32, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
            {
              goto LABEL_216;
            }
          }

          if (++v71 == v55)
          {
            v69 += 8;
            goto LABEL_105;
          }
        }
      }
    }

    else
    {
      v137 = vnegq_f64(0);
      v138.f64[0] = NAN;
      v138.f64[1] = NAN;
      v139 = vnegq_f64(v138);
      v140 = v51;
      v141 = v139;
      v142 = v137;
      do
      {
        v143 = *v140++;
        v144 = v143[2];
        v145 = v143[3];
        v146 = vcgtq_s64(v139, v144);
        v147 = vbslq_s8(v146, v144, v141);
        v148 = vbslq_s8(v146, v144, v139);
        v149 = vcgtq_s64(v148, v145);
        v141 = vbslq_s8(v149, v145, v147);
        v139 = vbslq_s8(v149, v145, v148);
        v150 = vcgtq_s64(v144, v137);
        v151 = vbslq_s8(v150, v144, v142);
        v152 = vbslq_s8(v150, v144, v137);
        v153 = vcgtq_s64(v145, v152);
        v142 = vbslq_s8(v153, v145, v151);
        v137 = vbslq_s8(v153, v145, v152);
      }

      while (v140 != v55);
      v172 = v141;
      v173 = v142;
      if (!sub_1D0E6C5B8(&v172, &v189, &__p, a4 + 1, a5) || (sub_1D0E6C5B8(&v172, &v186, &__p, a4 + 1, a5) & 1) == 0)
      {
        goto LABEL_216;
      }
    }
  }

  if (v63 < 0x80 || a4 > 0x63 || (v181 - v180) < 0x79)
  {
    if (v62 != v61)
    {
      v154 = v180;
      v155 = v181;
      if (v180 != v181)
      {
LABEL_177:
        v156 = v154;
        while (1)
        {
          v157 = *v62;
          v158 = *v156;
          if (*(*v62 + 48) >= *(*v156 + 32) && *(v157 + 32) <= *(v158 + 48))
          {
            v159 = *(v157 + 56) >= *(v158 + 40) && *(v157 + 40) <= *(v158 + 56);
            if (v159 && (*(v157 + 96) & 1) == 0 && (*(v158 + 96) & 1) == 0 && !sub_1D0B82AC0(*(a5 + 40), **a5, *(*a5 + 8), v157, *(a5 + 40), **a5, *(*a5 + 8), v158, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
            {
              goto LABEL_216;
            }
          }

          v156 += 8;
          if (v156 == v155)
          {
            if (++v62 != v61)
            {
              goto LABEL_177;
            }

            break;
          }
        }
      }
    }
  }

  else if ((sub_1D0E6C5B8(&v194, &v189, &v180, a4 + 1, a5) & 1) == 0)
  {
    goto LABEL_216;
  }

  v161 = v186;
  v160 = v187;
  if ((v187 - v186) < 0x80 || a4 > 0x63 || (v178 - v177) < 0x79)
  {
    if (v186 == v187)
    {
      goto LABEL_214;
    }

    v162 = v177;
    v163 = v178;
    if (v177 == v178)
    {
      goto LABEL_214;
    }

LABEL_197:
    v164 = v162;
    while (1)
    {
      v165 = *v161;
      v166 = *v164;
      if (*(*v161 + 48) >= *(*v164 + 32) && *(v165 + 32) <= *(v166 + 48))
      {
        v167 = *(v165 + 56) >= *(v166 + 40) && *(v165 + 40) <= *(v166 + 56);
        if (v167 && (*(v165 + 96) & 1) == 0 && (*(v166 + 96) & 1) == 0 && !sub_1D0B82AC0(*(a5 + 40), **a5, *(*a5 + 8), v165, *(a5 + 40), **a5, *(*a5 + 8), v166, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
        {
          break;
        }
      }

      v164 += 8;
      if (v164 == v163)
      {
        v161 += 8;
        if (v161 != v160)
        {
          goto LABEL_197;
        }

        goto LABEL_214;
      }
    }

LABEL_216:
    v168 = 0;
    if (!v51)
    {
      goto LABEL_218;
    }

    goto LABEL_217;
  }

  if ((sub_1D0E6C5B8(&v192, &v186, &v177, a4 + 1, a5) & 1) == 0)
  {
    goto LABEL_216;
  }

LABEL_214:
  v168 = 1;
  if (v51)
  {
LABEL_217:
    operator delete(v51);
  }

LABEL_218:
  if (v177)
  {
    operator delete(v177);
  }

  if (v180)
  {
    operator delete(v180);
  }

  if (v52)
  {
    operator delete(v52);
  }

  if (v186)
  {
    operator delete(v186);
  }

  if (v189)
  {
    operator delete(v189);
  }

  return v168;
}

void sub_1D0E6DC94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33)
{
  if (v33)
  {
    operator delete(v33);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  if (a33)
  {
    operator delete(a33);
  }

  v36 = *(v34 - 184);
  if (v36)
  {
    operator delete(v36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1D0E6DD24(uint64_t *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v4 >= v5)
  {
    v16 = *v3;
    v17 = v4 - *v3;
    v18 = 0x8F5C28F5C28F5C29 * (v17 >> 3) + 1;
    if (v18 > 0x147AE147AE147AELL)
    {
      sub_1D0C5663C();
    }

    v19 = 0x8F5C28F5C28F5C29 * ((v5 - v16) >> 3);
    if (2 * v19 > v18)
    {
      v18 = 2 * v19;
    }

    if (v19 >= 0xA3D70A3D70A3D7)
    {
      v20 = 0x147AE147AE147AELL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 <= 0x147AE147AE147AELL)
      {
        operator new();
      }

      sub_1D0C54BE8();
    }

    v21 = a2[11];
    v22 = 8 * (v17 >> 3);
    *(v22 + 160) = a2[10];
    *(v22 + 176) = v21;
    *(v22 + 192) = *(a2 + 24);
    v23 = a2[7];
    *(v22 + 96) = a2[6];
    *(v22 + 112) = v23;
    v24 = a2[9];
    *(v22 + 128) = a2[8];
    *(v22 + 144) = v24;
    v25 = a2[3];
    *(v22 + 32) = a2[2];
    *(v22 + 48) = v25;
    v26 = a2[5];
    *(v22 + 64) = a2[4];
    *(v22 + 80) = v26;
    v27 = a2[1];
    v15 = v22 + 200;
    v28 = v22 - v17;
    *v22 = *a2;
    *(v22 + 16) = v27;
    memcpy((v22 - v17), v16, v17);
    *v3 = v28;
    *(v3 + 8) = v15;
    *(v3 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v4 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    v8 = a2[4];
    *(v4 + 48) = a2[3];
    *(v4 + 64) = v8;
    *(v4 + 16) = v6;
    *(v4 + 32) = v7;
    v9 = a2[5];
    v10 = a2[6];
    v11 = a2[8];
    *(v4 + 112) = a2[7];
    *(v4 + 128) = v11;
    *(v4 + 80) = v9;
    *(v4 + 96) = v10;
    v12 = a2[9];
    v13 = a2[10];
    v14 = a2[11];
    *(v4 + 192) = *(a2 + 24);
    *(v4 + 160) = v13;
    *(v4 + 176) = v14;
    *(v4 + 144) = v12;
    v15 = v4 + 200;
  }

  *(v3 + 8) = v15;
  return a1;
}

void sub_1D0E6DED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 80);
  v7 = *(a2 + 136);
  if (vabdd_f64(v6, v7) >= 50.0)
  {
    v8 = v6 < v7;
  }

  else
  {
    v38 = *(a2 + 64);
    sub_1D0E6F7F8(&v38);
    v37 = *(a2 + 120);
    sub_1D0E6F7F8(&v37);
    v8 = sub_1D0E6F6E4(v38, *(&v38 + 1), v37, *(&v37 + 1));
  }

  *(a1 + 16) = 6;
  if (*a2 <= v8)
  {
    __assert_rtn("assign_point", "get_turn_info.hpp", 164, "index < info.count");
  }

  *a1 = *(a2 + 16 * v8 + 8);
  v9 = a2 + 56 * v8;
  v10 = *(v9 + 40);
  *(a1 + 104) = *(v9 + 56);
  *(a1 + 88) = v10;
  v11 = *(v9 + 64);
  *(a1 + 184) = *(v9 + 80);
  *(a1 + 168) = v11;
  v12 = *(a3 + 16);
  v13 = *(v12 + 24);
  v14 = sub_1D0E6E4CC(v12);
  v15 = sub_1D0E6E4CC(*(a3 + 8));
  *&v38 = 0x3FF0000000000000;
  v16 = sub_1D0E6E618(*v13, v13[1], *v14, v14[1], *v15, v15[1], &v38);
  if (v16 == 0.0)
  {
    goto LABEL_6;
  }

  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v18 = fabs(v16);
    if (v16 > 0.0)
    {
      v17 = 1;
    }

    else
    {
      v17 = -1;
    }

    if (v18 <= *&v38 * 2.22044605e-16)
    {
LABEL_6:
      v17 = 0;
    }
  }

  else if (v16 > 0.0)
  {
    v17 = 1;
  }

  else
  {
    v17 = -1;
  }

  v19 = *(a3 + 8);
  v20 = *(v19 + 16);
  v21 = *(v19 + 24);
  v22 = sub_1D0E6E4CC(v19);
  *&v38 = 0x3FF0000000000000;
  v23 = sub_1D0E6E618(*v20, v20[1], *v21, v21[1], *v22, v22[1], &v38);
  if (v23 == 0.0)
  {
LABEL_16:
    v24 = 0;
    goto LABEL_25;
  }

  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v25 = fabs(v23);
    if (v23 > 0.0)
    {
      v24 = 1;
    }

    else
    {
      v24 = -1;
    }

    if (v25 <= *&v38 * 2.22044605e-16)
    {
      goto LABEL_16;
    }
  }

  else if (v23 > 0.0)
  {
    v24 = 1;
  }

  else
  {
    v24 = -1;
  }

LABEL_25:
  v27 = *(a3 + 8);
  v26 = *(a3 + 16);
  v28 = *(v27 + 16);
  v29 = *(v27 + 24);
  v30 = sub_1D0E6E4CC(v26);
  *&v38 = 0x3FF0000000000000;
  v31 = sub_1D0E6E618(*v28, v28[1], *v29, v29[1], *v30, v30[1], &v38);
  if (v31 == 0.0)
  {
LABEL_26:
    v32 = 0;
    goto LABEL_35;
  }

  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v33 = fabs(v31);
    if (v31 > 0.0)
    {
      v32 = 1;
    }

    else
    {
      v32 = -1;
    }

    if (v33 > *&v38 * 2.22044605e-16)
    {
      goto LABEL_35;
    }

    goto LABEL_26;
  }

  if (v31 > 0.0)
  {
    v32 = 1;
  }

  else
  {
    v32 = -1;
  }

LABEL_35:
  if (v17 || v24 != v32)
  {
    if (v32 * v24 == -1)
    {
      v35 = v24 == -1;
    }

    else
    {
      v35 = v17 == -1;
    }

    if (v35)
    {
      v36 = 2;
    }

    else
    {
      v36 = 1;
    }

    *(a1 + 40) = v36;
    if (v35)
    {
      v34 = 1;
    }

    else
    {
      v34 = 2;
    }
  }

  else
  {
    v34 = 4;
    *(a1 + 40) = 4;
  }

  *(a1 + 120) = v34;
}

uint64_t sub_1D0E6E1B8(uint64_t a1, double *a2, uint64_t a3)
{
  v6 = *(a1 + 112) + (a2[1] - *(a1 + 96)) * *(a1 + 120);
  if (v6 >= 0.0)
  {
    v7 = 0.5;
  }

  else
  {
    v7 = -0.5;
  }

  v8 = v6 + v7;
  v50 = v8;
  if (v8 <= -9.22337204e18)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * (v8 >= 9.22337204e18);
  }

  sub_1D0B828E4(v9);
  v10 = *(a1 + 104) + (*a2 - *(a1 + 88)) * *(a1 + 120);
  if (v10 >= 0.0)
  {
    v11 = 0.5;
  }

  else
  {
    v11 = -0.5;
  }

  v12 = v10 + v11;
  v52 = v12;
  if (v12 <= -9.22337204e18)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2 * (v12 >= 9.22337204e18);
  }

  sub_1D0B828E4(v13);
  v14 = *a3;
  v15 = *(a1 + 112) + (*(*a3 + 8) - *(a1 + 96)) * *(a1 + 120);
  if (v15 >= 0.0)
  {
    v16 = 0.5;
  }

  else
  {
    v16 = -0.5;
  }

  v17 = v15 + v16;
  v48 = v17;
  if (v17 <= -9.22337204e18)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2 * (v17 >= 9.22337204e18);
  }

  sub_1D0B828E4(v18);
  v19.f64[0] = v50;
  v19.f64[1] = v48;
  v51 = vbslq_s8(vcltzq_f64(v19), vrndpq_f64(v19), vrndmq_f64(v19));
  v20 = *(a1 + 104) + (*v14 - *(a1 + 88)) * *(a1 + 120);
  if (v20 >= 0.0)
  {
    v21 = 0.5;
  }

  else
  {
    v21 = -0.5;
  }

  v22 = v20 + v21;
  v49 = v22;
  if (v22 <= -9.22337204e18)
  {
    v23 = 1;
  }

  else
  {
    v23 = 2 * (v22 >= 9.22337204e18);
  }

  result = sub_1D0B828E4(v23);
  v25.f64[0] = v52;
  v25.f64[1] = v49;
  v26 = vcvtq_s64_f64(vbslq_s8(vcltzq_f64(v25), vrndpq_f64(v25), vrndmq_f64(v25)));
  v27 = vcvtq_s64_f64(v51);
  *&v25.f64[0] = vmovn_s64(vmvnq_s8(vceqq_s64(vzip1q_s64(v27, v26), vzip2q_s64(v27, v26))));
  if (((HIDWORD(v25.f64[0]) | LODWORD(v25.f64[0])) & 1) == 0)
  {
    v28 = v27.i64[0];
    v29 = v26.i64[0];
    v30 = -1;
    do
    {
      if (++v30 >= *(*a1 + 88))
      {
        break;
      }

      v31 = *a3;
      v32 = (*a3 + 16);
      *a3 = v32;
      if (v32 == *(a3 + 16))
      {
        v33 = *(a3 + 8);
        *a3 = v33;
        v32 = v33;
        if (*(a3 + 24) == 1)
        {
          v32 = v33 + 2;
          *a3 = v33 + 2;
          if (v31 == v33)
          {
            *a3 = v33;
            v32 = v33;
          }
        }
      }

      v34 = *(a1 + 112) + (v32[1] - *(a1 + 96)) * *(a1 + 120);
      if (v34 >= 0.0)
      {
        v35 = 0.5;
      }

      else
      {
        v35 = -0.5;
      }

      v36 = v34 + v35;
      if (v34 + v35 <= -9.22337204e18)
      {
        v37 = 1;
      }

      else
      {
        v37 = 2 * (v34 + v35 >= 9.22337204e18);
      }

      sub_1D0B828E4(v37);
      v38 = ceil(v36);
      v39 = floor(v36);
      if (v36 >= 0.0)
      {
        v40 = v39;
      }

      else
      {
        v40 = v38;
      }

      v41 = *(a1 + 104) + (*v32 - *(a1 + 88)) * *(a1 + 120);
      if (v41 >= 0.0)
      {
        v42 = 0.5;
      }

      else
      {
        v42 = -0.5;
      }

      v43 = v41 + v42;
      if (v41 + v42 <= -9.22337204e18)
      {
        v44 = 1;
      }

      else
      {
        v44 = 2 * (v41 + v42 >= 9.22337204e18);
      }

      result = sub_1D0B828E4(v44);
      v45 = ceil(v43);
      v46 = floor(v43);
      if (v43 >= 0.0)
      {
        v45 = v46;
      }
    }

    while (v29 == v45 && v28 == v40);
  }

  return result;
}

uint64_t sub_1D0E6E4CC(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    v2 = *a1;
    if ((*(*a1 + 80) & 1) == 0)
    {
      sub_1D0E6E1B8(*a1, *(v2 + 24), v2 + 32);
      *(v2 + 64) = **(v2 + 32);
      *(v2 + 80) = 1;
    }

    v3 = *(a1 + 8);
    v4 = *(v3 + 24) + (*(v2 + 72) - *(v3 + 8)) * *(v3 + 32);
    if (v4 >= 0.0)
    {
      v5 = 0.5;
    }

    else
    {
      v5 = -0.5;
    }

    v6 = v4 + v5;
    if (v4 + v5 <= -9.22337204e18)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2 * (v4 + v5 >= 9.22337204e18);
    }

    sub_1D0B828E4(v7);
    v8 = ceil(v6);
    v9 = floor(v6);
    if (v6 >= 0.0)
    {
      v8 = v9;
    }

    *(a1 + 40) = v8;
    v10 = *(v3 + 16) + (*(v2 + 64) - *v3) * *(v3 + 32);
    if (v10 >= 0.0)
    {
      v11 = 0.5;
    }

    else
    {
      v11 = -0.5;
    }

    v12 = v10 + v11;
    if (v10 + v11 <= -9.22337204e18)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2 * (v10 + v11 >= 9.22337204e18);
    }

    sub_1D0B828E4(v13);
    v14 = ceil(v12);
    v15 = floor(v12);
    if (v12 >= 0.0)
    {
      v14 = v15;
    }

    *(a1 + 32) = v14;
    *(a1 + 48) = 1;
  }

  return a1 + 32;
}

double sub_1D0E6E618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double *a7)
{
  v20[0] = a1;
  v20[1] = a2;
  v19[0] = a3;
  v19[1] = a4;
  v18[0] = a5;
  v18[1] = a6;
  v7 = a1 - a5;
  v27[0] = v7;
  v8 = a4 - a6;
  v26[0] = v8;
  v9 = a2 - a6;
  v25[0] = v9;
  v10 = a3 - a5;
  v24[0] = v10;
  v11 = vabdd_f64(a1, a5);
  v12 = vabdd_f64(a4, a6);
  v13 = vabdd_f64(a2, a6);
  v14 = vabdd_f64(a3, a5);
  if (v11 < v12)
  {
    v11 = v12;
  }

  if (v11 < v13)
  {
    v11 = v13;
  }

  if (v11 < v14)
  {
    v11 = v14;
  }

  if (v11 < 1.0)
  {
    v11 = 1.0;
  }

  *a7 = v11;
  v15 = v7 * v8;
  v23[0] = v7 * v8;
  v16 = v10 * v9;
  result = v7 * v8 - v10 * v9;
  v21 = fabs(v7 * v8) + fabs(v10 * v9);
  v22[0] = v10 * v9;
  if (vabdd_f64(v7 * v8, v10 * v9) < v21 * 3.33066907e-16 && (v15 <= 0.0 || v16 > 0.0) && (v15 >= 0.0 || v16 < 0.0))
  {
    return sub_1D0E0C744(v20, v19, v18, v27, v26, v25, v24, v23, v22, &v21);
  }

  return result;
}

__n128 sub_1D0E6E738(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3 - a4;
  v7 = a5 - a4;
  if (a5 - a4 < 0)
  {
    v6 = a4 - a3;
    v7 = a4 - a5;
    goto LABEL_5;
  }

  if (v7)
  {
LABEL_5:
    v8 = v6 * 1000000.0 / v7;
    goto LABEL_6;
  }

  v8 = 0.0;
LABEL_6:
  if (v6 < 0 || v6 > v7)
  {
    v13 = 0;
    *v38 = 0;
    do
    {
      v14 = &v38[v13];
      *(v14 + 40) = xmmword_1D0E7DD30;
      *(v14 + 7) = 0;
      *(v14 + 8) = 0;
      *(v14 + 9) = 1;
      *(v14 + 10) = 0;
      v13 += 56;
      v14[88] = 0;
    }

    while (v13 != 112);
    memset(&v46[2], 0, 32);
    v15 = v43;
    *(a1 + 96) = v42;
    *(a1 + 112) = v15;
    *(a1 + 128) = v44;
    v16 = *&v39[16];
    *(a1 + 32) = *v39;
    *(a1 + 48) = v16;
    v17 = v41;
    *(a1 + 64) = v40;
    *(a1 + 80) = v17;
    v18 = *&v38[16];
    *a1 = *v38;
    *(a1 + 16) = v18;
    v19 = *&v46[16];
    *(a1 + 154) = *v46;
    *&v46[34] = 0;
    *(a1 + 144) = v45;
    v20 = 100;
  }

  else
  {
    for (i = 0; i != 112; i += 56)
    {
      v10 = &v38[i];
      *(v10 + 40) = xmmword_1D0E7DD30;
      *(v10 + 7) = 0;
      *(v10 + 8) = 0;
      *(v10 + 9) = 1;
      *(v10 + 10) = 0;
      v10[88] = 0;
    }

    *v38 = 1;
    *&v38[8] = *a2;
    v11 = &v39[8];
    explicit = atomic_load_explicit(&qword_1EE055430, memory_order_acquire);
    if (a6)
    {
      if ((explicit & 1) == 0)
      {
        v26 = a1;
        v27 = v6;
        v28 = v7;
        v36 = v8;
        v29 = __cxa_guard_acquire(&qword_1EE055430);
        v8 = v36;
        v7 = v28;
        v6 = v27;
        v30 = v29;
        a1 = v26;
        if (v30)
        {
          xmmword_1EE055440 = xmmword_1D0E7DD30;
          qword_1EE055450 = 0;
          __cxa_guard_release(&qword_1EE055430);
          v8 = v36;
          v7 = v28;
          v6 = v27;
          a1 = v26;
        }
      }

      *&v39[8] = xmmword_1EE055440;
      *&v39[24] = qword_1EE055450;
      BYTE8(v41) = 1;
      v11 = &v40;
    }

    else
    {
      if ((explicit & 1) == 0)
      {
        v31 = a1;
        v32 = v6;
        v33 = v7;
        v37 = v8;
        v34 = __cxa_guard_acquire(&qword_1EE055430);
        v11 = &v39[8];
        v8 = v37;
        v7 = v33;
        v6 = v32;
        v35 = v34;
        a1 = v31;
        if (v35)
        {
          xmmword_1EE055440 = xmmword_1D0E7DD30;
          qword_1EE055450 = 0;
          __cxa_guard_release(&qword_1EE055430);
          v11 = &v39[8];
          v8 = v37;
          v7 = v33;
          v6 = v32;
          a1 = v31;
        }
      }

      v40 = xmmword_1EE055440;
      *&v41 = qword_1EE055450;
      BYTE8(v41) = 1;
    }

    *v11 = v6;
    *(v11 + 1) = v7;
    *(v11 + 2) = v8;
    memset(&v46[2], 0, 32);
    v21 = v43;
    *(a1 + 96) = v42;
    *(a1 + 112) = v21;
    *(a1 + 128) = v44;
    v22 = *&v39[16];
    *(a1 + 32) = *v39;
    *(a1 + 48) = v22;
    v23 = v41;
    *(a1 + 64) = v40;
    *(a1 + 80) = v23;
    v24 = *&v38[16];
    *a1 = *v38;
    *(a1 + 16) = v24;
    v19 = *&v46[16];
    *(a1 + 154) = *v46;
    *&v46[34] = 0;
    *(a1 + 144) = v45;
    v20 = 48;
  }

  *(a1 + 152) = v20;
  *(a1 + 170) = v19;
  result = *&v46[26];
  *(a1 + 180) = *&v46[26];
  return result;
}

void sub_1D0E6EA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v156 = *MEMORY[0x1E69E9840];
  v8 = a5 - a4;
  v9 = a7 - a6;
  v10 = a4 - a6;
  if (a7 - a6 < 0)
  {
    v10 = a6 - a4;
    v14 = a6 - a7;
    v11 = (a6 - a7);
    v12 = (a6 - a4) * 1000000.0 / v11;
    v13 = a6 - a5;
    goto LABEL_5;
  }

  if (v9)
  {
    v11 = v9;
    v12 = v10 * 1000000.0 / v9;
    v13 = a5 - a6;
    v14 = a7 - a6;
LABEL_5:
    v15 = v13 * 1000000.0 / v11;
    goto LABEL_7;
  }

  v14 = 0;
  v13 = a5 - a6;
  v12 = 0.0;
  v15 = 0.0;
LABEL_7:
  v16 = a6 - a4;
  v147 = a5 - a4;
  if (v8 < 0)
  {
    v16 = a4 - a6;
    v17 = a4 - a5;
    v147 = a4 - a5;
  }

  else
  {
    if (!v8)
    {
      v145 = 0;
      v146 = 0.0;
      v18 = a7 - a4;
      v20 = 0.0;
      goto LABEL_16;
    }

    v17 = a5 - a4;
  }

  v146 = v16 * 1000000.0 / v17;
  v18 = a7 - a4;
  if (v8 >= 0)
  {
    v19 = a5 - a4;
  }

  else
  {
    v18 = a4 - a7;
    v19 = a4 - a5;
  }

  v145 = v19;
  v20 = v18 * 1000000.0 / v19;
LABEL_16:
  v144 = v20;
  if (a4 != a6)
  {
    if (a7 == a4)
    {
      v21 = 3;
      goto LABEL_31;
    }

    if (a7 <= a6)
    {
      if (a4 <= a6)
      {
        if (a7 <= a4)
        {
          v21 = 2;
        }

        else
        {
          v21 = 4;
        }

LABEL_31:
        if (a5 == a6)
        {
          v23 = 3;
          v22 = 1;
          goto LABEL_57;
        }

        goto LABEL_33;
      }
    }

    else if (a4 >= a6)
    {
      if (a7 >= a4)
      {
        v21 = 2;
      }

      else
      {
        v21 = 4;
      }

      goto LABEL_31;
    }

    v21 = 0;
    goto LABEL_31;
  }

  v21 = 1;
  v22 = 1;
  v23 = 1;
  if (a5 == a4)
  {
    goto LABEL_57;
  }

LABEL_33:
  if (a5 == a7)
  {
    v22 = 3;
    goto LABEL_45;
  }

  if (a7 > a6)
  {
    if (a5 >= a6)
    {
      if (a5 <= a7)
      {
        v22 = 2;
      }

      else
      {
        v22 = 4;
      }

      goto LABEL_45;
    }

LABEL_41:
    v22 = 0;
    goto LABEL_45;
  }

  if (a5 > a6)
  {
    goto LABEL_41;
  }

  if (a5 >= a7)
  {
    v22 = 2;
  }

  else
  {
    v22 = 4;
  }

LABEL_45:
  if (a4 == a6)
  {
    v23 = 1;
    goto LABEL_57;
  }

  if (a5 > a4)
  {
    if (a6 >= a4)
    {
      if (a5 >= a6)
      {
        v23 = 2;
      }

      else
      {
        v23 = 4;
      }

      goto LABEL_57;
    }

LABEL_53:
    v23 = 0;
    goto LABEL_57;
  }

  if (a6 > a4)
  {
    goto LABEL_53;
  }

  if (a5 <= a6)
  {
    v23 = 2;
  }

  else
  {
    v23 = 4;
  }

LABEL_57:
  if (a7 == a4)
  {
    v24 = 1;
    goto LABEL_71;
  }

  if (a7 == a5)
  {
    v24 = 3;
    goto LABEL_71;
  }

  if (a5 > a4)
  {
    if (a7 >= a4)
    {
      if (a7 <= a5)
      {
        v24 = 2;
      }

      else
      {
        v24 = 4;
      }

      goto LABEL_71;
    }

LABEL_67:
    v24 = 0;
    goto LABEL_71;
  }

  if (a7 > a4)
  {
    goto LABEL_67;
  }

  if (a7 >= a5)
  {
    v24 = 2;
  }

  else
  {
    v24 = 4;
  }

LABEL_71:
  if (v21 == 1)
  {
    v10 = 0;
    v16 = 0;
    v25 = &v146;
    v26 = &v147;
    v12 = 0.0;
    goto LABEL_75;
  }

  if (v21 == 3)
  {
    v18 = 0;
    v25 = &v144;
    v26 = &v145;
    v10 = 1;
    v12 = 1000000.0;
LABEL_75:
    v27 = 1;
    *v26 = 1;
    *v25 = 0.0;
    goto LABEL_77;
  }

  v27 = v14;
LABEL_77:
  v28 = v22 - 1;
  if (v22 == 1)
  {
    v13 = 0;
    v29 = &v146;
    v30 = &v147;
    v15 = 0.0;
    v16 = 1;
    goto LABEL_81;
  }

  if (v22 == 3)
  {
    v29 = &v144;
    v30 = &v145;
    v13 = 1;
    v15 = 1000000.0;
    v18 = 1;
LABEL_81:
    v14 = 1;
    *v30 = 1;
    *v29 = 1000000.0;
    goto LABEL_82;
  }

  if (!(v22 | v21) || v21 >= 4 && v22 >= 4)
  {
    v54 = 0;
    *v148 = 0;
    do
    {
      v55 = &v148[v54];
      *(v55 + 40) = xmmword_1D0E7DD30;
      *(v55 + 7) = 0;
      *(v55 + 8) = 0;
      *(v55 + 9) = 1;
      *(v55 + 10) = 0;
      v54 += 56;
      v55[88] = 0;
    }

    while (v54 != 112);
    memset(&v154[2], 0, 32);
    v56 = v150;
    *(a1 + 96) = v149;
    *(a1 + 112) = v56;
    *(a1 + 128) = v151;
    v57 = *&v148[48];
    *(a1 + 32) = *&v148[32];
    *(a1 + 48) = v57;
    v58 = *&v148[80];
    *(a1 + 64) = *&v148[64];
    *(a1 + 80) = v58;
    v59 = *&v148[16];
    *a1 = *v148;
    *(a1 + 16) = v59;
    v60 = *&v154[16];
    *(a1 + 154) = *v154;
    *&v154[34] = 0;
    *(a1 + 144) = v152;
    *(a1 + 152) = 100;
    *(a1 + 170) = v60;
    *(a1 + 180) = *&v154[26];
    return;
  }

LABEL_82:
  v31 = 0;
  if (v8)
  {
    v32 = -1;
  }

  else
  {
    v32 = 0;
  }

  v33 = v9 <= 0;
  if (v9)
  {
    v34 = -1;
  }

  else
  {
    v34 = 0;
  }

  if (v33)
  {
    v35 = v34;
  }

  else
  {
    v35 = 1;
  }

  *v148 = 0;
  v36 = xmmword_1D0E7DD30;
  do
  {
    v37 = &v148[v31];
    *(v37 + 40) = xmmword_1D0E7DD30;
    *(v37 + 7) = 0;
    *(v37 + 8) = 0;
    *(v37 + 9) = 1;
    *(v37 + 10) = 0;
    v31 += 56;
    v37[88] = 0;
  }

  while (v31 != 112);
  *v154 = xmmword_1D0E7DD30;
  if (v8 > 0)
  {
    v38 = 1;
  }

  else
  {
    v38 = v32;
  }

  *&v154[16] = 0;
  *&v154[24] = 0;
  *&v154[32] = 1;
  *&v154[40] = 0;
  if (v21 - 1 > 2)
  {
    v39 = 0;
  }

  else
  {
    *&v148[8] = **a2;
    if ((atomic_load_explicit(&qword_1EE055430, memory_order_acquire) & 1) == 0)
    {
      v115 = a3;
      v118 = v13;
      v88 = a2;
      v109 = v18;
      v112 = v16;
      v121 = v14;
      v125 = v15;
      v105 = v10;
      v106 = v12;
      v129 = v35;
      v134 = v23;
      v138 = v38;
      v89 = __cxa_guard_acquire(&qword_1EE055430);
      v36 = xmmword_1D0E7DD30;
      v23 = v134;
      v38 = v138;
      v35 = v129;
      v12 = v106;
      v10 = v105;
      v18 = v109;
      v16 = v112;
      v15 = v125;
      v13 = v118;
      v14 = v121;
      a2 = v88;
      a3 = v115;
      if (v89)
      {
        xmmword_1EE055440 = xmmword_1D0E7DD30;
        qword_1EE055450 = 0;
        __cxa_guard_release(&qword_1EE055430);
        v36 = xmmword_1D0E7DD30;
        v23 = v134;
        v38 = v138;
        v35 = v129;
        v12 = v106;
        v10 = v105;
        v18 = v109;
        v16 = v112;
        v15 = v125;
        v13 = v118;
        v14 = v121;
        a2 = v88;
        a3 = v115;
      }
    }

    *&v148[40] = xmmword_1EE055440;
    *&v148[56] = qword_1EE055450;
    v148[88] = 1;
    *&v148[64] = v10;
    *&v148[72] = v27;
    *&v148[80] = v12;
    if ((atomic_load_explicit(&qword_1EE055430, memory_order_acquire) & 1) == 0)
    {
      v90 = a3;
      v91 = a2;
      v110 = v18;
      v113 = v16;
      v92 = v13;
      v122 = v14;
      v126 = v15;
      v130 = v35;
      v135 = v23;
      v139 = v38;
      v107 = v36;
      v93 = __cxa_guard_acquire(&qword_1EE055430);
      v36 = v107;
      v23 = v135;
      v38 = v139;
      v35 = v130;
      v18 = v110;
      v16 = v113;
      v15 = v126;
      v14 = v122;
      v13 = v92;
      a2 = v91;
      a3 = v90;
      if (v93)
      {
        xmmword_1EE055440 = v107;
        qword_1EE055450 = 0;
        __cxa_guard_release(&qword_1EE055430);
        v36 = v107;
        v23 = v135;
        v38 = v139;
        v35 = v130;
        v18 = v110;
        v16 = v113;
        v15 = v126;
        v14 = v122;
        v13 = v92;
        a2 = v91;
        a3 = v90;
      }
    }

    *v154 = xmmword_1EE055440;
    *&v154[16] = qword_1EE055450;
    v39 = 1;
  }

  if (v23 == 2)
  {
    *&v148[16 * v39 + 8] = **a3;
    v40 = &v148[56 * v39];
    if ((atomic_load_explicit(&qword_1EE055430, memory_order_acquire) & 1) == 0)
    {
      v116 = a3;
      v119 = v13;
      v94 = a2;
      v111 = v18;
      v114 = v16;
      v123 = v14;
      v127 = v15;
      v131 = v35;
      v140 = v38;
      v108 = v36;
      v95 = __cxa_guard_acquire(&qword_1EE055430);
      v23 = 2;
      v38 = v140;
      v35 = v131;
      v18 = v111;
      v16 = v114;
      v15 = v127;
      v13 = v119;
      v14 = v123;
      a2 = v94;
      a3 = v116;
      if (v95)
      {
        xmmword_1EE055440 = v108;
        qword_1EE055450 = 0;
        __cxa_guard_release(&qword_1EE055430);
        v23 = 2;
        v38 = v140;
        v35 = v131;
        v18 = v111;
        v16 = v114;
        v15 = v127;
        v13 = v119;
        v14 = v123;
        a2 = v94;
        a3 = v116;
      }
    }

    v40[88] = 1;
    v41 = v147;
    *(v40 + 5) = v16;
    *(v40 + 6) = v41;
    v42 = v146;
    *(v40 + 7) = v146;
    *(v40 + 4) = xmmword_1EE055440;
    *(v40 + 10) = qword_1EE055450;
    v43 = &v154[24 * v39];
    *v43 = v16;
    v43[1] = v41;
    ++v39;
    *(v43 + 2) = v42;
  }

  if (v28 <= 2 && v39 <= 1)
  {
    *&v148[16 * v39 + 8] = **(a2 + 8);
    v44 = &v148[56 * v39];
    if ((atomic_load_explicit(&qword_1EE055438, memory_order_acquire) & 1) == 0)
    {
      v117 = a3;
      v120 = v13;
      v96 = v18;
      v124 = v14;
      v128 = v15;
      v132 = v35;
      v136 = v23;
      v141 = v38;
      v97 = __cxa_guard_acquire(&qword_1EE055438);
      v23 = v136;
      v38 = v141;
      v35 = v132;
      v15 = v128;
      v13 = v120;
      v14 = v124;
      v18 = v96;
      a3 = v117;
      if (v97)
      {
        xmmword_1EE055460 = vdupq_n_s64(1uLL);
        qword_1EE055470 = 0x412E848000000000;
        __cxa_guard_release(&qword_1EE055438);
        v23 = v136;
        v38 = v141;
        v35 = v132;
        v15 = v128;
        v13 = v120;
        v14 = v124;
        v18 = v96;
        a3 = v117;
      }
    }

    v44[88] = 1;
    *(v44 + 40) = xmmword_1EE055460;
    *(v44 + 7) = qword_1EE055470;
    *(v44 + 8) = v13;
    *(v44 + 9) = v14;
    *(v44 + 10) = v15;
    if ((atomic_load_explicit(&qword_1EE055438, memory_order_acquire) & 1) == 0)
    {
      v98 = a3;
      v99 = v18;
      v100 = v23;
      v133 = v35;
      v142 = v38;
      v101 = __cxa_guard_acquire(&qword_1EE055438);
      v38 = v142;
      v35 = v133;
      v23 = v100;
      v18 = v99;
      a3 = v98;
      if (v101)
      {
        xmmword_1EE055460 = vdupq_n_s64(1uLL);
        qword_1EE055470 = 0x412E848000000000;
        __cxa_guard_release(&qword_1EE055438);
        v38 = v142;
        v35 = v133;
        v23 = v100;
        v18 = v99;
        a3 = v98;
      }
    }

    v45 = &v154[24 * v39];
    *v45 = xmmword_1EE055460;
    *(v45 + 2) = qword_1EE055470;
    ++v39;
  }

  if (v24 == 2 && v39 <= 1)
  {
    *&v148[16 * v39 + 8] = **(a3 + 8);
    v46 = &v148[56 * v39];
    if ((atomic_load_explicit(&qword_1EE055438, memory_order_acquire) & 1) == 0)
    {
      v102 = v18;
      v137 = v23;
      v143 = v38;
      v103 = v35;
      v104 = __cxa_guard_acquire(&qword_1EE055438);
      v23 = v137;
      v38 = v143;
      v35 = v103;
      v18 = v102;
      if (v104)
      {
        xmmword_1EE055460 = vdupq_n_s64(1uLL);
        qword_1EE055470 = 0x412E848000000000;
        __cxa_guard_release(&qword_1EE055438);
        v23 = v137;
        v38 = v143;
        v35 = v103;
        v18 = v102;
      }
    }

    v46[88] = 1;
    v47 = v145;
    *(v46 + 5) = v18;
    *(v46 + 6) = v47;
    v48 = v144;
    *(v46 + 7) = v144;
    *(v46 + 4) = xmmword_1EE055460;
    *(v46 + 10) = qword_1EE055470;
    v49 = &v154[24 * v39];
    *v49 = v18;
    v49[1] = v47;
    *(v49 + 2) = v48;
    ++v39;
  }

  if (v39 != 2)
  {
    goto LABEL_125;
  }

  if (vabdd_f64(*&v154[40], *&v154[16]) < 50.0)
  {
    v50 = v38;
    v51 = v35;
    v52 = v23;
    v155 = *&v154[24];
    sub_1D0E6F7F8(&v155);
    v153 = *v154;
    sub_1D0E6F7F8(&v153);
    v53 = sub_1D0E6F6E4(v155, *(&v155 + 1), v153, *(&v153 + 1));
    v23 = v52;
    v35 = v51;
    v38 = v50;
    if ((v53 & 1) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_124;
  }

  if (*&v154[40] < *&v154[16])
  {
LABEL_124:
    v61 = v148[88];
    v62 = *&v148[40];
    v63 = *&v148[56];
    *&v148[40] = v149;
    *&v148[56] = v150;
    v64 = *&v148[72];
    *&v148[72] = v151;
    v148[88] = v152;
    v151 = v64;
    v150 = v63;
    v149 = v62;
    LOBYTE(v152) = v61;
    v65 = *&v148[8];
    v155 = *&v148[8];
    *&v148[8] = *&v148[24];
    *&v148[24] = v65;
  }

LABEL_125:
  if ((v22 & 0xFFFFFFFD) == 1)
  {
    v66 = 0;
  }

  else
  {
    v66 = -1;
  }

  v67 = (v21 & 0xFFFFFFFD) != 1;
  v68 = (v21 & 0xFFFFFFFD) != 1 || v21 - 4 < 0xFFFFFFFD;
  if (v21 - 4 <= 0xFFFFFFFC)
  {
    v67 = 0;
  }

  if (v22 == 2)
  {
    v66 = 1;
  }

  else
  {
    v67 = v21 - 4 < 0xFFFFFFFD;
  }

  v69 = !v68;
  if ((v22 & 0xFFFFFFFD) == 1)
  {
    v67 = !v68;
    v70 = v28 >= 3;
  }

  else
  {
    v70 = 1;
  }

  *v148 = v39;
  memset(&v154[2], 0, 32);
  v71 = v24 & 0xFFFFFFFD;
  if (!v70)
  {
    v69 = v67 + 1;
  }

  v72 = (v23 & 0xFFFFFFFD) != 1;
  v73 = (v23 & 0xFFFFFFFD) != 1 || (v23 - 4) < 0xFFFFFFFD;
  if ((v23 - 4) <= 0xFFFFFFFC)
  {
    v72 = 0;
  }

  v74 = !v73;
  if (v24 != 2)
  {
    v72 = (v23 - 4) < 0xFFFFFFFD;
  }

  v75 = v24 - 1;
  if (v71 == 1)
  {
    v76 = v74;
  }

  else
  {
    v76 = v72;
  }

  if (v71 != 1 || v75 >= 3)
  {
    v78 = v74;
  }

  else
  {
    v78 = v76 + 1;
  }

  v79 = v67 == 0;
  if (v28 < 3)
  {
    v79 = v21 - 4 < 0xFFFFFFFD;
  }

  v80 = v76 == 0;
  if (v75 < 3)
  {
    v80 = (v23 - 4) < 0xFFFFFFFD;
  }

  if (v69 == 1 && v78 == 1 && v79 && v80)
  {
    if (v38 == v35)
    {
      v81 = 97;
    }

    else if (v66)
    {
      v81 = 102;
    }

    else
    {
      v81 = 116;
    }
  }

  else
  {
    v81 = 99;
    if (v69 == 2 && v78 == 2)
    {
      v81 = 101;
    }
  }

  v82 = v150;
  *(a1 + 96) = v149;
  *(a1 + 112) = v82;
  *(a1 + 128) = v151;
  v83 = *&v148[48];
  *(a1 + 32) = *&v148[32];
  *(a1 + 48) = v83;
  v84 = *&v148[80];
  *(a1 + 64) = *&v148[64];
  *(a1 + 80) = v84;
  v85 = *&v148[16];
  *a1 = *v148;
  *(a1 + 16) = v85;
  v86 = *&v154[16];
  *(a1 + 154) = *v154;
  if (v71 == 1)
  {
    v87 = 0;
  }

  else
  {
    v87 = -1;
  }

  if (v24 == 2)
  {
    v87 = 1;
  }

  *(a1 + 144) = v152;
  *(a1 + 152) = v81;
  *(a1 + 153) = v38 != v35;
  *(a1 + 170) = v86;
  *(a1 + 186) = *&v154[32];
  *(a1 + 188) = v66;
  *(a1 + 192) = v87;
}

uint64_t sub_1D0E6F6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 <= 0)
  {
    __assert_rtn("operator<", "rational.hpp", 794, "this->den > zero");
  }

  if (a4 <= 0)
  {
    __assert_rtn("operator<", "rational.hpp", 795, "r.den > zero");
  }

  v4 = a1 / a2;
  v5 = a1 % a2;
  v6 = a3 / a4;
  for (i = a3 % a4; (v5 & 0x8000000000000000) != 0; --v4)
  {
    v5 += a2;
  }

  for (; (i & 0x8000000000000000) != 0; --v6)
  {
    i += a4;
  }

  if (v4 != v6)
  {
    return v4 < v6;
  }

  v8 = 0;
  while (1)
  {
    v9 = v5;
    v10 = i;
    v11 = v8;
    if (!v5 || !i)
    {
      break;
    }

    v8 ^= 1u;
    v12 = a2 / v5;
    v5 = a2 % v5;
    v13 = a4 / i;
    i = a4 % i;
    a4 = v10;
    a2 = v9;
    if (v12 != v13)
    {
      result = v12 > v13;
      if (v11 == 1)
      {
        return v12 < v13;
      }

      return result;
    }
  }

  v15 = (v8 != 1) ^ (v5 != 0);
  if (v9 == i)
  {
    return 0;
  }

  else
  {
    return v15;
  }
}

uint64_t *sub_1D0E6F7F8(uint64_t *result)
{
  v1 = result[1];
  if (!v1)
  {
    std::logic_error::logic_error(&v27, "bad rational: zero denominator");
    v27.__vftable = &unk_1F4CF1180;
    v25.i64[0] = "/AppleInternal/Library/BuildRoots/4~B_vtugDL9R_i6FW7bXTnamipqOQLftg52EzW3Mg/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/rational.hpp";
    v25.i64[1] = "void boost::rational<long long>::normalize() [T = long long]";
    v26 = 892;
    sub_1D0E6FAC8(&v27, &v25);
  }

  v2 = *result;
  if (*result)
  {
    v3 = *result;
    if (v2 == 0x8000000000000000)
    {
      v3 = 0x8000000000000000 % v1;
    }

    v4 = result[1];
    if (v1 == 0x8000000000000000)
    {
      v4 = 0x8000000000000000 % v3;
    }

    if (v3 >= 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = -v3;
    }

    if (v4 < 0)
    {
      v4 = -v4;
    }

    if (v5 >= v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    if (v5 <= v4)
    {
      v5 = v4;
    }

    if (v5)
    {
      if (v6)
      {
        v7 = __clz(__rbit64(v5));
        v8 = v5 >> v7;
        v9 = __clz(__rbit64(v6));
        v10 = v6 >> v9;
        if (v7 >= v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = v7;
        }

        if (v10 < 2)
        {
LABEL_30:
          if (v10 == 1)
          {
            v8 = 1;
          }
        }

        else
        {
          while (1)
          {
            v12 = v8 % v10;
            v8 = v10 - v8 % v10;
            if (!v12)
            {
              break;
            }

            v13 = v12 >> __clz(__rbit64(v12));
            v8 >>= __clz(__rbit64(v8));
            if (v13 >= v8)
            {
              v10 = v8;
            }

            else
            {
              v10 = v13;
            }

            if (v13 > v8)
            {
              v8 = v13;
            }

            if (v10 <= 1)
            {
              goto LABEL_30;
            }
          }
        }

        v6 = v8 << v11;
      }

      else
      {
        v6 = v5;
      }
    }

    v14 = v2 / v6;
    v15 = v1 / v6;
    *result = v14;
    result[1] = v15;
    if (v15 == 0x8000000000000000)
    {
      std::logic_error::logic_error(&v27, "bad rational: non-zero singular denominator");
      v27.__vftable = &unk_1F4CF1180;
      v25.i64[0] = "/AppleInternal/Library/BuildRoots/4~B_vtugDL9R_i6FW7bXTnamipqOQLftg52EzW3Mg/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/rational.hpp";
      v25.i64[1] = "void boost::rational<long long>::normalize() [T = long long]";
      v26 = 906;
      sub_1D0E6FAC8(&v27, &v25);
    }

    if ((v15 & 0x8000000000000000) != 0)
    {
      v14 = -v14;
      v15 = -v15;
      *result = v14;
      result[1] = v15;
    }

    else
    {
      if (!v15)
      {
        goto LABEL_65;
      }

      if (v14 == 0x8000000000000000)
      {
        v14 = 0x8000000000000000 / v15 * v15 + 0x8000000000000000;
      }
    }

    if (v14 >= 0)
    {
      v16 = v14;
    }

    else
    {
      v16 = -v14;
    }

    if (v16 <= v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v16;
    }

    if (v14)
    {
      if (v16 < v15)
      {
        v15 = v16;
      }

      v18 = __clz(__rbit64(v17));
      v19 = v17 >> v18;
      v20 = __clz(__rbit64(v15));
      v21 = v15 >> v20;
      if (v18 >= v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = v18;
      }

      if (v21 < 2)
      {
LABEL_61:
        if (v21 == 1)
        {
          v19 = 1;
        }
      }

      else
      {
        while (1)
        {
          v23 = v19 % v21;
          v19 = v21 - v19 % v21;
          if (!v23)
          {
            break;
          }

          v24 = v23 >> __clz(__rbit64(v23));
          v19 >>= __clz(__rbit64(v19));
          if (v24 >= v19)
          {
            v21 = v19;
          }

          else
          {
            v21 = v24;
          }

          if (v24 > v19)
          {
            v19 = v24;
          }

          if (v21 <= 1)
          {
            goto LABEL_61;
          }
        }
      }

      v17 = v19 << v22;
    }

    if (v17 != 1)
    {
LABEL_65:
      __assert_rtn("normalize", "rational.hpp", 915, "this->test_invariant()");
    }
  }

  else
  {
    result[1] = 1;
  }

  return result;
}

void sub_1D0E6FAC8(const std::logic_error *a1, int8x16_t *a2)
{
  exception = __cxa_allocate_exception(0x40uLL);
  v5 = sub_1D0E6FB14(exception, a1, a2);
  __cxa_throw(v5, &unk_1F4CF10B0, sub_1D0E6FBCC);
}

uint64_t sub_1D0E6FB14(uint64_t a1, const std::logic_error *a2, int8x16_t *a3)
{
  *a1 = &unk_1F4CDEDB8;
  std::logic_error::logic_error((a1 + 8), a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_1F4CF1108;
  *(a1 + 8) = &unk_1F4CF1138;
  *(a1 + 24) = &unk_1F4CF1160;
  *(a1 + 32) = 0;
  *(a1 + 56) = a3[1].i32[0];
  *(a1 + 40) = vextq_s8(*a3, *a3, 8uLL);
  return a1;
}

uint64_t sub_1D0E6FBCC(uint64_t a1)
{
  *(a1 + 24) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 32));
  std::logic_error::~logic_error((a1 + 8));
  return a1;
}

void sub_1D0E6FDF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1D0D278F8(&a9);
  sub_1D0D278F8(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_1D0E6FE5C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1D0E70104(exception, a1);
  __cxa_throw(exception, &unk_1F4CF10B0, sub_1D0E6FBCC);
}

void sub_1D0E6FEB8(uint64_t a1)
{
  *(a1 + 24) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 32));
  std::logic_error::~logic_error((a1 + 8));

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E6FF2C(uint64_t a1)
{
  *(a1 + 16) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 24));

  std::logic_error::~logic_error(a1);
}

void sub_1D0E6FF88(uint64_t a1)
{
  *(a1 + 16) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 24));
  std::logic_error::~logic_error(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E70000(void *a1)
{
  *a1 = &unk_1F4CDEDE8;
  v1 = (a1 - 2);
  sub_1D0D278F8(a1 + 1);

  std::logic_error::~logic_error(v1);
}

void sub_1D0E70058(void *a1)
{
  *a1 = &unk_1F4CDEDE8;
  v1 = (a1 - 2);
  sub_1D0D278F8(a1 + 1);
  std::logic_error::~logic_error(v1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E700CC(std::logic_error *a1)
{
  std::logic_error::~logic_error(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E70104(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CDEDB8;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &unk_1F4CF1180;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_1F4CDEDE8;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_1F4CF1108;
  *(a1 + 8) = &unk_1F4CF1138;
  *(a1 + 24) = &unk_1F4CF1160;
  return a1;
}

double sub_1D0E70240(double *a1, double *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (!a4)
  {
    __assert_rtn("assign", "intersection.hpp", 176, "ratio.denominator() != typename SegmentRatio::int_type(0)");
  }

  *a1 = a3 * a5 / a4 + *a2;
  result = a3 * a6 / a4 + a2[1];
  a1[1] = result;
  return result;
}

uint64_t sub_1D0E702A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = 1.0;
  v6 = sub_1D0E6E618(a3, a4, a5, a6, a1, a2, &v9);
  if (v6 == 0.0)
  {
    return 0;
  }

  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v8 = fabs(v6);
    if (v6 > 0.0)
    {
      result = 1;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }

    if (v8 <= v9 * 2.22044605e-16)
    {
      return 0;
    }
  }

  else if (v6 > 0.0)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t trackrun::TrackRunSupervisor::TrackRunSupervisor(trackrun::TrackRunSupervisor *this)
{
  return trackrun::TrackRunSupervisor::TrackRunSupervisor(this);
}

{
  return trackrun::TrackRunSupervisor::TrackRunSupervisor(this);
}

uint64_t trackrun::TrackRunSupervisor::TrackRunSupervisor(uint64_t a1)
{
  v2 = cnframework::Supervisor::Supervisor(a1);
  *v2 = &unk_1F4CF11A8;
  *(v2 + 481) = 0;
  sub_1D0E72B28(v2 + 488);
  sub_1D0E72B28(a1 + 752);
  trackrun::TrackRunEngineActiveObject::TrackRunEngineActiveObject(a1 + 1016);
  return a1;
}

void sub_1D0E703D8(_Unwind_Exception *a1)
{
  sub_1D0E70434(v1 + 752);
  sub_1D0E70434(v1 + 488);
  cnframework::Supervisor::~Supervisor(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0E70434(uint64_t a1)
{
  sub_1D0BCB594(a1 + 72);
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

void trackrun::TrackRunSupervisor::~TrackRunSupervisor(void **this)
{
  *this = &unk_1F4CF11A8;
  cnframework::Supervisor::TearDown(this);
  sub_1D0E6B318((this + 127));
  sub_1D0BCB594((this + 103));
  if (*(this + 815) < 0)
  {
    operator delete(this[99]);
  }

  if (*(this + 783) < 0)
  {
    operator delete(this[95]);
  }

  sub_1D0BCB594((this + 70));
  if (*(this + 551) < 0)
  {
    operator delete(this[66]);
  }

  if (*(this + 519) < 0)
  {
    operator delete(this[62]);
  }

  cnframework::Supervisor::~Supervisor(this);
}

{
  trackrun::TrackRunSupervisor::~TrackRunSupervisor(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t trackrun::TrackRunSupervisor::Configure(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 256))
  {
    v4 = a1 + 488;
    *(a1 + 488) = *a2;
    std::string::operator=((a1 + 496), (a2 + 8));
    *(a1 + 520) = *(a2 + 32);
    std::string::operator=((a1 + 528), (a2 + 40));
    v5 = *(a2 + 68);
    *(a1 + 552) = *(a2 + 64);
    *(a1 + 556) = v5;
    if (v4 != a2)
    {
      *(a1 + 592) = *(a2 + 104);
      sub_1D0E72CAC((a1 + 560), *(a2 + 88));
    }

    v6 = *(a2 + 128);
    *(a1 + 600) = *(a2 + 112);
    *(a1 + 616) = v6;
    v7 = *(a2 + 144);
    v8 = *(a2 + 160);
    v9 = *(a2 + 192);
    *(a1 + 664) = *(a2 + 176);
    *(a1 + 680) = v9;
    *(a1 + 632) = v7;
    *(a1 + 648) = v8;
    v10 = *(a2 + 208);
    v11 = *(a2 + 224);
    v12 = *(a2 + 240);
    *(a1 + 744) = *(a2 + 256);
    *(a1 + 712) = v11;
    *(a1 + 728) = v12;
    *(a1 + 696) = v10;
    *(a1 + 752) = *a2;
    std::string::operator=((a1 + 760), (a2 + 8));
    *(a1 + 784) = *(a2 + 32);
    v13 = std::string::operator=((a1 + 792), (a2 + 40));
    v14 = *(a2 + 68);
    *(a1 + 816) = *(a2 + 64);
    *(a1 + 820) = v14;
    if (a1 + 752 != a2)
    {
      *(a1 + 856) = *(a2 + 104);
      sub_1D0E72CAC((a1 + 824), *(a2 + 88));
    }

    v15 = *(a2 + 128);
    *(a1 + 864) = *(a2 + 112);
    *(a1 + 880) = v15;
    v16 = *(a2 + 144);
    v17 = *(a2 + 160);
    v18 = *(a2 + 192);
    *(a1 + 928) = *(a2 + 176);
    *(a1 + 944) = v18;
    *(a1 + 896) = v16;
    *(a1 + 912) = v17;
    v19 = *(a2 + 208);
    v20 = *(a2 + 224);
    v21 = *(a2 + 240);
    *(a1 + 1008) = *(a2 + 256);
    *(a1 + 976) = v20;
    *(a1 + 992) = v21;
    *(a1 + 960) = v19;
    if (*(a1 + 784) == 1)
    {
      v24 = 0;
      cnprint::CNPrinter::EnableLogStream(&v24);
    }

    if (*(a1 + 785) == 1)
    {
      cnprint::CNPrinter::SetFileLogStreamName((a1 + 792));
      v24 = 1;
      cnprint::CNPrinter::EnableLogStream(&v24);
    }

    if (*(a1 + 816) == 1)
    {
      v24 = 2;
      cnprint::CNPrinter::EnableLogStream(&v24);
    }

    if ((*(a1 + 784) & 1) != 0 || (*(a1 + 785) & 1) != 0 || *(a1 + 816) == 1)
    {
      v22 = *(a1 + 817);
      if (v22 < cnprint::CNPrinter::GetLogLevel(v13))
      {
        cnprint::CNPrinter::SetLogLevel((a1 + 817));
      }
    }

    LOWORD(v24) = 13;
    v25 = 2;
    cnprint::CNPrinter::Print(&v24, &v25, "TrackRunSupervisor configuration parameters set");
    if (*(a1 + 481) != 1 || (LOWORD(v24) = 13, v25 = 2, cnprint::CNPrinter::Print(&v24, &v25, "TrackRunSupervisor::Configure called after TrackRunSupervisor was already configured."), (*(a1 + 481) & 1) == 0))
    {
      (*(*a1 + 24))(a1);
    }

    LOWORD(v24) = 13;
    v25 = 2;
    cnprint::CNPrinter::Print(&v24, &v25, "TrackRunSupervisor successfully configured");
  }

  else
  {
    LOWORD(v24) = 13;
    v25 = 4;
    cnprint::CNPrinter::Print(&v24, &v25, "TrackRunSupervisor::Configure called with uninitialized parameters.");
  }

  return 0;
}

uint64_t trackrun::TrackRunSupervisor::Configure(std::recursive_mutex *this)
{
  v124 = *MEMORY[0x1E69E9840];
  v1 = this[15].__m_.__opaque[40];
  if (v1)
  {
    v117 = &this[11].__m_.__opaque[40];
    trackrun::TrackRunEngineActiveObject::Configure(&this[15].__m_.__opaque[48], &v117);
    cnframework::Supervisor::RegisterActiveObject(this, &this[15].__m_.__opaque[48]);
    LOBYTE(v118) = 0;
    LOBYTE(v119) = 0;
    *(&v119 + 1) = this->__m_.__opaque;
    v3 = this + 16;
    sig = this[16].__m_.__sig;
    v5 = *this[16].__m_.__opaque;
    if (sig == v5)
    {
LABEL_6:
      v6 = *&this[16].__m_.__opaque[8];
      if (v5 >= v6)
      {
        v9 = &v5[-v3->__m_.__sig] >> 5;
        if ((v9 + 1) >> 59)
        {
          sub_1D0C5663C();
        }

        v10 = v6 - v3->__m_.__sig;
        v11 = v10 >> 4;
        if (v10 >> 4 <= (v9 + 1))
        {
          v11 = v9 + 1;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFE0)
        {
          v12 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          sub_1D0DC7E20(&this[16], v12);
        }

        v13 = (32 * v9);
        v14 = v119;
        *v13 = v118;
        v13[1] = v14;
        v8 = 32 * v9 + 32;
        v15 = this[16].__m_.__sig;
        v16 = *this[16].__m_.__opaque - v15;
        v17 = 32 * v9 - v16;
        memcpy(v13 - v16, v15, v16);
        v18 = this[16].__m_.__sig;
        this[16].__m_.__sig = v17;
        *this[16].__m_.__opaque = v8;
        *&this[16].__m_.__opaque[8] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        v7 = v119;
        *v5 = v118;
        *(v5 + 1) = v7;
        v8 = (v5 + 32);
      }

      *this[16].__m_.__opaque = v8;
      if (!sub_1D0B7D618(&this[16].__m_.__opaque[16], &v120))
      {
        v123 = v122;
        v121 = &v120;
        v122[0] = &unk_1F4CF1248;
        v19 = sub_1D0DC87BC(&this[16].__m_.__opaque[16], &v120, &std::piecewise_construct, &v121);
        sub_1D0DC7E68(v19 + 3, v122);
        sub_1D0B7D7C4(v122);
      }
    }

    else
    {
      while (!cnframework::EventSubscription::operator==(sig, &v118))
      {
        sig += 32;
        if (sig == v5)
        {
          v5 = *this[16].__m_.__opaque;
          goto LABEL_6;
        }
      }
    }

    LOBYTE(v118) = 0;
    LOBYTE(v119) = 0;
    *(&v119 + 1) = this->__m_.__opaque;
    v20 = this[16].__m_.__sig;
    v21 = *this[16].__m_.__opaque;
    if (v20 == v21)
    {
LABEL_25:
      v22 = *&this[16].__m_.__opaque[8];
      if (v21 >= v22)
      {
        v25 = &v21[-v3->__m_.__sig] >> 5;
        if ((v25 + 1) >> 59)
        {
          sub_1D0C5663C();
        }

        v26 = v22 - v3->__m_.__sig;
        v27 = v26 >> 4;
        if (v26 >> 4 <= (v25 + 1))
        {
          v27 = v25 + 1;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFE0)
        {
          v28 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v27;
        }

        if (v28)
        {
          sub_1D0DC7E20(&this[16], v28);
        }

        v29 = (32 * v25);
        v30 = v119;
        *v29 = v118;
        v29[1] = v30;
        v24 = 32 * v25 + 32;
        v31 = this[16].__m_.__sig;
        v32 = *this[16].__m_.__opaque - v31;
        v33 = 32 * v25 - v32;
        memcpy(v29 - v32, v31, v32);
        v34 = this[16].__m_.__sig;
        this[16].__m_.__sig = v33;
        *this[16].__m_.__opaque = v24;
        *&this[16].__m_.__opaque[8] = 0;
        if (v34)
        {
          operator delete(v34);
        }
      }

      else
      {
        v23 = v119;
        *v21 = v118;
        *(v21 + 1) = v23;
        v24 = (v21 + 32);
      }

      *this[16].__m_.__opaque = v24;
      if (!sub_1D0B7D618(&this[16].__m_.__opaque[16], &v120))
      {
        v123 = v122;
        v121 = &v120;
        v122[0] = &unk_1F4CF12C8;
        v35 = sub_1D0DC87BC(&this[16].__m_.__opaque[16], &v120, &std::piecewise_construct, &v121);
        sub_1D0DC7E68(v35 + 3, v122);
        sub_1D0B7D7C4(v122);
      }
    }

    else
    {
      while (!cnframework::EventSubscription::operator==(v20, &v118))
      {
        v20 += 32;
        if (v20 == v21)
        {
          v21 = *this[16].__m_.__opaque;
          goto LABEL_25;
        }
      }
    }

    LOBYTE(v118) = 0;
    LOBYTE(v119) = 0;
    *(&v119 + 1) = this->__m_.__opaque;
    v36 = this[16].__m_.__sig;
    v37 = *this[16].__m_.__opaque;
    if (v36 == v37)
    {
LABEL_43:
      v38 = *&this[16].__m_.__opaque[8];
      if (v37 >= v38)
      {
        v41 = &v37[-v3->__m_.__sig] >> 5;
        if ((v41 + 1) >> 59)
        {
          sub_1D0C5663C();
        }

        v42 = v38 - v3->__m_.__sig;
        v43 = v42 >> 4;
        if (v42 >> 4 <= (v41 + 1))
        {
          v43 = v41 + 1;
        }

        if (v42 >= 0x7FFFFFFFFFFFFFE0)
        {
          v44 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v44 = v43;
        }

        if (v44)
        {
          sub_1D0DC7E20(&this[16], v44);
        }

        v45 = (32 * v41);
        v46 = v119;
        *v45 = v118;
        v45[1] = v46;
        v40 = 32 * v41 + 32;
        v47 = this[16].__m_.__sig;
        v48 = *this[16].__m_.__opaque - v47;
        v49 = 32 * v41 - v48;
        memcpy(v45 - v48, v47, v48);
        v50 = this[16].__m_.__sig;
        this[16].__m_.__sig = v49;
        *this[16].__m_.__opaque = v40;
        *&this[16].__m_.__opaque[8] = 0;
        if (v50)
        {
          operator delete(v50);
        }
      }

      else
      {
        v39 = v119;
        *v37 = v118;
        *(v37 + 1) = v39;
        v40 = (v37 + 32);
      }

      *this[16].__m_.__opaque = v40;
      if (!sub_1D0B7D618(&this[16].__m_.__opaque[16], &v120))
      {
        v123 = v122;
        v121 = &v120;
        v122[0] = &unk_1F4CF1348;
        v51 = sub_1D0DC87BC(&this[16].__m_.__opaque[16], &v120, &std::piecewise_construct, &v121);
        sub_1D0DC7E68(v51 + 3, v122);
        sub_1D0B7D7C4(v122);
      }
    }

    else
    {
      while (!cnframework::EventSubscription::operator==(v36, &v118))
      {
        v36 += 32;
        if (v36 == v37)
        {
          v37 = *this[16].__m_.__opaque;
          goto LABEL_43;
        }
      }
    }

    LOBYTE(v118) = 0;
    LOBYTE(v119) = 0;
    *(&v119 + 1) = this->__m_.__opaque;
    v52 = this[16].__m_.__sig;
    v53 = *this[16].__m_.__opaque;
    if (v52 == v53)
    {
LABEL_61:
      v54 = *&this[16].__m_.__opaque[8];
      if (v53 >= v54)
      {
        v57 = &v53[-v3->__m_.__sig] >> 5;
        if ((v57 + 1) >> 59)
        {
          sub_1D0C5663C();
        }

        v58 = v54 - v3->__m_.__sig;
        v59 = v58 >> 4;
        if (v58 >> 4 <= (v57 + 1))
        {
          v59 = v57 + 1;
        }

        if (v58 >= 0x7FFFFFFFFFFFFFE0)
        {
          v60 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v60 = v59;
        }

        if (v60)
        {
          sub_1D0DC7E20(&this[16], v60);
        }

        v61 = (32 * v57);
        v62 = v119;
        *v61 = v118;
        v61[1] = v62;
        v56 = 32 * v57 + 32;
        v63 = this[16].__m_.__sig;
        v64 = *this[16].__m_.__opaque - v63;
        v65 = 32 * v57 - v64;
        memcpy(v61 - v64, v63, v64);
        v66 = this[16].__m_.__sig;
        this[16].__m_.__sig = v65;
        *this[16].__m_.__opaque = v56;
        *&this[16].__m_.__opaque[8] = 0;
        if (v66)
        {
          operator delete(v66);
        }
      }

      else
      {
        v55 = v119;
        *v53 = v118;
        *(v53 + 1) = v55;
        v56 = (v53 + 32);
      }

      *this[16].__m_.__opaque = v56;
      if (!sub_1D0B7D618(&this[16].__m_.__opaque[16], &v120))
      {
        v123 = v122;
        v121 = &v120;
        v122[0] = &unk_1F4CF13C8;
        v67 = sub_1D0DC87BC(&this[16].__m_.__opaque[16], &v120, &std::piecewise_construct, &v121);
        sub_1D0DC7E68(v67 + 3, v122);
        sub_1D0B7D7C4(v122);
      }
    }

    else
    {
      while (!cnframework::EventSubscription::operator==(v52, &v118))
      {
        v52 += 32;
        if (v52 == v53)
        {
          v53 = *this[16].__m_.__opaque;
          goto LABEL_61;
        }
      }
    }

    LOBYTE(v118) = 0;
    LOBYTE(v119) = 0;
    *(&v119 + 1) = this->__m_.__opaque;
    v68 = this[16].__m_.__sig;
    v69 = *this[16].__m_.__opaque;
    if (v68 == v69)
    {
LABEL_79:
      v70 = *&this[16].__m_.__opaque[8];
      if (v69 >= v70)
      {
        v73 = &v69[-v3->__m_.__sig] >> 5;
        if ((v73 + 1) >> 59)
        {
          sub_1D0C5663C();
        }

        v74 = v70 - v3->__m_.__sig;
        v75 = v74 >> 4;
        if (v74 >> 4 <= (v73 + 1))
        {
          v75 = v73 + 1;
        }

        if (v74 >= 0x7FFFFFFFFFFFFFE0)
        {
          v76 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v76 = v75;
        }

        if (v76)
        {
          sub_1D0DC7E20(&this[16], v76);
        }

        v77 = (32 * v73);
        v78 = v119;
        *v77 = v118;
        v77[1] = v78;
        v72 = 32 * v73 + 32;
        v79 = this[16].__m_.__sig;
        v80 = *this[16].__m_.__opaque - v79;
        v81 = 32 * v73 - v80;
        memcpy(v77 - v80, v79, v80);
        v82 = this[16].__m_.__sig;
        this[16].__m_.__sig = v81;
        *this[16].__m_.__opaque = v72;
        *&this[16].__m_.__opaque[8] = 0;
        if (v82)
        {
          operator delete(v82);
        }
      }

      else
      {
        v71 = v119;
        *v69 = v118;
        *(v69 + 1) = v71;
        v72 = (v69 + 32);
      }

      *this[16].__m_.__opaque = v72;
      if (!sub_1D0B7D618(&this[16].__m_.__opaque[16], &v120))
      {
        v123 = v122;
        v121 = &v120;
        v122[0] = &unk_1F4CF1448;
        v83 = sub_1D0DC87BC(&this[16].__m_.__opaque[16], &v120, &std::piecewise_construct, &v121);
        sub_1D0DC7E68(v83 + 3, v122);
        sub_1D0B7D7C4(v122);
      }
    }

    else
    {
      while (!cnframework::EventSubscription::operator==(v68, &v118))
      {
        v68 += 32;
        if (v68 == v69)
        {
          v69 = *this[16].__m_.__opaque;
          goto LABEL_79;
        }
      }
    }

    LOBYTE(v118) = 0;
    LOBYTE(v119) = 0;
    *(&v119 + 1) = this->__m_.__opaque;
    v84 = this[16].__m_.__sig;
    v85 = *this[16].__m_.__opaque;
    if (v84 == v85)
    {
LABEL_97:
      v86 = *&this[16].__m_.__opaque[8];
      if (v85 >= v86)
      {
        v89 = &v85[-v3->__m_.__sig] >> 5;
        if ((v89 + 1) >> 59)
        {
          sub_1D0C5663C();
        }

        v90 = v86 - v3->__m_.__sig;
        v91 = v90 >> 4;
        if (v90 >> 4 <= (v89 + 1))
        {
          v91 = v89 + 1;
        }

        if (v90 >= 0x7FFFFFFFFFFFFFE0)
        {
          v92 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v92 = v91;
        }

        if (v92)
        {
          sub_1D0DC7E20(&this[16], v92);
        }

        v93 = (32 * v89);
        v94 = v119;
        *v93 = v118;
        v93[1] = v94;
        v88 = 32 * v89 + 32;
        v95 = this[16].__m_.__sig;
        v96 = *this[16].__m_.__opaque - v95;
        v97 = 32 * v89 - v96;
        memcpy(v93 - v96, v95, v96);
        v98 = this[16].__m_.__sig;
        this[16].__m_.__sig = v97;
        *this[16].__m_.__opaque = v88;
        *&this[16].__m_.__opaque[8] = 0;
        if (v98)
        {
          operator delete(v98);
        }
      }

      else
      {
        v87 = v119;
        *v85 = v118;
        *(v85 + 1) = v87;
        v88 = (v85 + 32);
      }

      *this[16].__m_.__opaque = v88;
      if (!sub_1D0B7D618(&this[16].__m_.__opaque[16], &v120))
      {
        v123 = v122;
        v121 = &v120;
        v122[0] = &unk_1F4CF14C8;
        v99 = sub_1D0DC87BC(&this[16].__m_.__opaque[16], &v120, &std::piecewise_construct, &v121);
        sub_1D0DC7E68(v99 + 3, v122);
        sub_1D0B7D7C4(v122);
      }
    }

    else
    {
      while (!cnframework::EventSubscription::operator==(v84, &v118))
      {
        v84 += 32;
        if (v84 == v85)
        {
          v85 = *this[16].__m_.__opaque;
          goto LABEL_97;
        }
      }
    }

    LOBYTE(v118) = 0;
    LOBYTE(v119) = 0;
    *(&v119 + 1) = this->__m_.__opaque;
    v100 = this[16].__m_.__sig;
    v101 = *this[16].__m_.__opaque;
    if (v100 == v101)
    {
LABEL_115:
      v102 = *&this[16].__m_.__opaque[8];
      if (v101 >= v102)
      {
        v105 = &v101[-v3->__m_.__sig] >> 5;
        if ((v105 + 1) >> 59)
        {
          sub_1D0C5663C();
        }

        v106 = v102 - v3->__m_.__sig;
        v107 = v106 >> 4;
        if (v106 >> 4 <= (v105 + 1))
        {
          v107 = v105 + 1;
        }

        if (v106 >= 0x7FFFFFFFFFFFFFE0)
        {
          v108 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v108 = v107;
        }

        if (v108)
        {
          sub_1D0DC7E20(&this[16], v108);
        }

        v109 = (32 * v105);
        v110 = v119;
        *v109 = v118;
        v109[1] = v110;
        v104 = 32 * v105 + 32;
        v111 = this[16].__m_.__sig;
        v112 = *this[16].__m_.__opaque - v111;
        v113 = v109 - v112;
        memcpy(v109 - v112, v111, v112);
        v114 = this[16].__m_.__sig;
        this[16].__m_.__sig = v113;
        *this[16].__m_.__opaque = v104;
        *&this[16].__m_.__opaque[8] = 0;
        if (v114)
        {
          operator delete(v114);
        }
      }

      else
      {
        v103 = v119;
        *v101 = v118;
        *(v101 + 1) = v103;
        v104 = (v101 + 32);
      }

      *this[16].__m_.__opaque = v104;
      if (!sub_1D0B7D618(&this[16].__m_.__opaque[16], &v120))
      {
        v123 = v122;
        v121 = &v120;
        v122[0] = &unk_1F4CF1548;
        v115 = sub_1D0DC87BC(&this[16].__m_.__opaque[16], &v120, &std::piecewise_construct, &v121);
        sub_1D0DC7E68(v115 + 3, v122);
        sub_1D0B7D7C4(v122);
      }
    }

    else
    {
      while (!cnframework::EventSubscription::operator==(v100, &v118))
      {
        v100 += 32;
        if (v100 == v101)
        {
          v101 = *this[16].__m_.__opaque;
          goto LABEL_115;
        }
      }
    }

    this[7].__m_.__opaque[25] = 1;
    LOWORD(v122[0]) = 13;
    LOBYTE(v118) = 2;
    cnprint::CNPrinter::Print(v122, &v118, "TrackRunSupervisor configured successfully");
  }

  else
  {
    LOWORD(v122[0]) = 13;
    LOBYTE(v118) = 5;
    cnprint::CNPrinter::Print(v122, &v118, "TrackRunSupervisor::Configure() called with invalid configuration parameters.");
  }

  return v1;
}

void sub_1D0E712F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1D0B7D7C4(va);
  _Unwind_Resume(a1);
}

void trackrun::TrackRunSupervisor::RaiseEventsFrom(trackrun::TrackRunSupervisor *this, const CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo *a2)
{
  if ((*(this + 481) & 1) == 0)
  {
    sub_1D0E72B28(&v40);
    CNPlatformInfo::CNPlatformInfo(&v12, a2);
    trackrun::TrackRunParameters::TrackRunParameters(&v17, &v12);
    v40 = v17;
    if (SHIBYTE(v42) < 0)
    {
      operator delete(__p);
    }

    __p = v18;
    v42 = v19;
    HIBYTE(v19) = 0;
    LOBYTE(v18) = 0;
    v43 = v20;
    if (SHIBYTE(v45) < 0)
    {
      operator delete(v44);
    }

    v44 = *v21;
    v45 = v22;
    HIBYTE(v22) = 0;
    LOBYTE(v21[0]) = 0;
    v46 = v23;
    v47 = v24;
    if (v51)
    {
      v4 = v50;
      if (v50)
      {
        do
        {
          v5 = *v4;
          operator delete(v4);
          v4 = v5;
        }

        while (v5);
      }

      v50 = 0;
      v6 = v49;
      if (v49)
      {
        v7 = 0;
        do
        {
          *(v48 + v7++) = 0;
        }

        while (v6 != v7);
      }

      v51 = 0;
    }

    v8 = v25;
    v25 = 0;
    v9 = v48;
    v48 = v8;
    if (v9)
    {
      operator delete(v9);
    }

    v10 = v26;
    v26 = 0;
    v50 = v27;
    v51 = v28;
    v52 = v29;
    v49 = v10;
    if (v28)
    {
      v11 = v27[1];
      if ((v10 & (v10 - 1)) != 0)
      {
        if (v11 >= v10)
        {
          v11 %= v10;
        }
      }

      else
      {
        v11 &= v10 - 1;
      }

      *(v48 + v11) = &v50;
      v27 = 0;
      v28 = 0;
    }

    v59 = v36;
    v60 = v37;
    v61 = v38;
    v62 = v39;
    v55 = v32;
    v56 = v33;
    v57 = v34;
    v58 = v35;
    v53 = v30;
    v54 = v31;
    sub_1D0BCB594(&v25);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21[0]);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18);
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }

    if (v14 < 0)
    {
      operator delete(v13);
    }

    trackrun::TrackRunSupervisor::Configure(this, &v40);
    sub_1D0BCB594(&v48);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(v44);
    }

    if (SHIBYTE(v42) < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_1D0E7157C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, ...)
{
  va_start(va, a49);
  sub_1D0E70434(va);
  _Unwind_Resume(a1);
}

void trackrun::TrackRunSupervisor::RaiseEventsFrom(trackrun::TrackRunSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData *a2, trackrun::GEOMapRunningTrackDataEvent *a3, int8x16_t a4, int8x16_t a5)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v5 = &unk_1F4CF0B60;
  memset(v6, 0, sizeof(v6));
  v7 = 0;
  v13 = 1;
  if (trackrun::ConvertProtobufToGEOMapRunningTrackDataEvent(a2, &v5, a3, a4, a5))
  {
    operator new();
  }

  LOWORD(v14) = 13;
  v15[0] = 2;
  cnprint::CNPrinter::Print(&v14, v15, "Warning:Unable to create GEOMapTrackRunDataEvent from protobuf");
  v5 = &unk_1F4CF0B60;
  *&v14 = v6;
  sub_1D0E62CA0(&v14);
}

void sub_1D0E718AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    sub_1D0B7CAB8(a22);
  }

  sub_1D0B7CAB8(v22);
  *(v24 - 72) = v23;
  sub_1D0E62CA0((v24 - 72));
  _Unwind_Resume(a1);
}

void trackrun::TrackRunSupervisor::RaiseEventsFrom(trackrun::TrackRunSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionState *a2, trackrun::MovingStateEvent *a3, int8x16_t a4, int8x16_t a5)
{
  v11 = &unk_1F4CF0C50;
  v12 = 0;
  v13 = 0;
  v14 = 0.0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v6 = trackrun::ConvertProtobufToMovingStateEvent(a2, &v11, a3, a4, a5);
  if (v6)
  {
    LOWORD(v19) = 13;
    v10 = 2;
    v7 = v14 + v13;
    v8 = v18;
    v9 = *(a2 + 2);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v6);
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
    }

    cnprint::CNPrinter::Print(&v19, &v10, "ExternalMovingState,t,%.3lf,moving_tate,%d,activityType,%d", v7, v8, *(v9 + 8));
    operator new();
  }
}

void sub_1D0E71C50(_Unwind_Exception *a1)
{
  v4 = *(v2 - 64);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  sub_1D0B7CAB8(v1);
  _Unwind_Resume(a1);
}

void trackrun::TrackRunSupervisor::RaiseEventsFrom(trackrun::TrackRunSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator *a2)
{
  v7 = &unk_1F4CF0BC0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_1D0B751F4(&__p, &unk_1D0ED80C5);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  if (trackrun::ConvertProtobufToWorkoutSessionEvent(a2, &v7, v4, v5, v6))
  {
    sub_1D0E71DCC(this, &v7);
  }

  v7 = &unk_1F4CF0BC0;
  if (v16 < 0)
  {
    operator delete(__p);
  }
}

void sub_1D0E71DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0E71FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  sub_1D0B7CAB8(v11);
  _Unwind_Resume(a1);
}

void trackrun::TrackRunSupervisor::RaiseEventsFrom(trackrun::TrackRunSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver *a2)
{
  v7 = &unk_1F4CF0BC0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_1D0B751F4(&__p, &unk_1D0ED80C5);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  if (trackrun::ConvertProtobufToWorkoutSessionEvent(a2, &v7, v4, v5, v6))
  {
    sub_1D0E71DCC(this, &v7);
  }

  v7 = &unk_1F4CF0BC0;
  if (v16 < 0)
  {
    operator delete(__p);
  }
}

void sub_1D0E7213C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void trackrun::TrackRunSupervisor::RaiseEventsFrom(trackrun::TrackRunSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit *a2)
{
  v6 = &unk_1F4CF0B90;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v13 = 0;
  v11 = 0;
  v12 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v31 = vdupq_n_s64(0x7FF8000000000000uLL);
  v32 = 0xBFF0000000000000;
  v33 = 0;
  sub_1D0B751F4(v34, &unk_1D0ED80C5);
  sub_1D0B751F4(v35, &unk_1D0ED80C5);
  if (trackrun::ConvertProtobufToVisitEvent(a2, &v6, v3, v4, v5))
  {
    operator new();
  }

  trackrun::VisitEvent::~VisitEvent(&v6);
}

void sub_1D0E72404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  v46 = *(v44 - 64);
  if (v46)
  {
    sub_1D0B7CAB8(v46);
  }

  sub_1D0B7CAB8(v43);
  trackrun::VisitEvent::~VisitEvent(&a9);
  _Unwind_Resume(a1);
}

void trackrun::TrackRunSupervisor::RaiseEventsFrom(trackrun::TrackRunSupervisor *this, const CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint *a2, trackrun::TrackRunHintEvent *a3, int8x16_t a4, int8x16_t a5)
{
  v6 = &unk_1F4CF0CE0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (trackrun::ConvertProtobufToTrackRunHintEvent(a2, &v6, a3, a4, a5))
  {
    operator new();
  }

  LOWORD(v14) = 13;
  v5 = 2;
  cnprint::CNPrinter::Print(&v14, &v5, "Warning:Unable to create TrackRunHintEvent from protobuf");
}

void sub_1D0E72780(_Unwind_Exception *a1)
{
  v4 = *(v2 - 48);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  sub_1D0B7CAB8(v1);
  _Unwind_Resume(a1);
}

void trackrun::TrackRunSupervisor::RaiseEventsFrom(trackrun::TrackRunSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::WatchState *a2, trackrun::WatchStateEvent *a3, int8x16_t a4, int8x16_t a5)
{
  v6 = &unk_1F4CF0D40;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (trackrun::ConvertProtobufToWatchStateEvent(a2, &v6, a3, a4, a5))
  {
    operator new();
  }

  LOWORD(v13) = 13;
  v5 = 2;
  cnprint::CNPrinter::Print(&v13, &v5, "Warning:Unable to create WatchStateEvent from protobuf");
}

void sub_1D0E72AA8(_Unwind_Exception *a1)
{
  v4 = *(v2 - 48);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  sub_1D0B7CAB8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0E72B28(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  sub_1D0B751F4((a1 + 8), "trackrun_output.bin");
  *(a1 + 32) = 1;
  sub_1D0B751F4((a1 + 40), "trackrun_debug.txt");
  *(a1 + 64) = 256;
  *(a1 + 68) = 256;
  v3 = 2;
  v4 = 0x40A3880000000000;
  v5 = 3;
  v6 = 0x40A3880000000000;
  v7 = 4;
  v8 = 0x4059000000000000;
  sub_1D0E62F60(a1 + 72, &v3, 3);
  *(a1 + 112) = 0x410E848000000000;
  *(a1 + 120) = 1;
  *(a1 + 128) = xmmword_1D0EC1CE0;
  *(a1 + 144) = xmmword_1D0EC1CF0;
  *(a1 + 160) = xmmword_1D0EC1D00;
  *(a1 + 176) = 0x3F50624DD2F1A9FCLL;
  *(a1 + 184) = 5;
  *(a1 + 192) = 0x4052C00000000000;
  *(a1 + 200) = 0;
  *(a1 + 202) = 0;
  *(a1 + 208) = 1;
  *(a1 + 216) = 256;
  *(a1 + 224) = xmmword_1D0E83260;
  *(a1 + 240) = xmmword_1D0EC1D10;
  *(a1 + 256) = 0;
  return a1;
}

void sub_1D0E72C78(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0E72CAC(void *a1, uint64_t **a2)
{
  v4 = a1[1];
  if (!v4)
  {
    goto LABEL_7;
  }

  for (i = 0; i != v4; ++i)
  {
    *(*a1 + 8 * i) = 0;
  }

  v6 = a1[2];
  a1[2] = 0;
  a1[3] = 0;
  if (v6)
  {
    while (a2)
    {
      v7 = *(a2 + 4);
      *(v6 + 4) = v7;
      v6[3] = a2[3];
      v8 = *v6;
      v6[1] = v7;
      v9 = sub_1D0E72E00(a1, v7, v6 + 4);
      sub_1D0E73160(a1, v6, v9);
      a2 = *a2;
      v6 = v8;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    do
    {
      v10 = *v6;
      operator delete(v6);
      v6 = v10;
    }

    while (v10);
  }

  else
  {
LABEL_7:
    if (a2)
    {
      operator new();
    }
  }
}

void sub_1D0E72DBC(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t *sub_1D0E72E00(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      sub_1D0C54BE8();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v26 = *a1;
        *a1 = 0;
        if (v26)
        {
          operator delete(v26);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v6);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = a2;
    if (v6 <= a2)
    {
      v17 = a2 % v6;
    }
  }

  else
  {
    v17 = (v6 - 1) & a2;
  }

  v18 = *(*a1 + 8 * v17);
  if (!v18)
  {
    return 0;
  }

  v19 = 0;
  do
  {
    result = v18;
    v18 = *v18;
    if (!v18)
    {
      break;
    }

    v21 = *(v18 + 8);
    if (v16.u32[0] > 1uLL)
    {
      v22 = *(v18 + 8);
      if (v21 >= v6)
      {
        v22 = v21 % v6;
      }
    }

    else
    {
      v22 = v21 & (v6 - 1);
    }

    if (v22 != v17)
    {
      break;
    }

    v23 = v21 == a2 && *(v18 + 16) == *a3;
    v24 = v23 != (v19 & 1);
    v25 = v19 & v24;
    v19 |= v24;
  }

  while (v25 != 1);
  return result;
}

void *sub_1D0E73160(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

uint64_t sub_1D0E73248(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1D0E73314(uint64_t a1, trackrun::TrackRunEngineActiveObject **a2, uint64_t a3)
{
  v4 = *a2;
  if (*(a3 + 8) == 1)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    LOWORD(v28.__vftable) = 3;
    LOBYTE(v26) = 5;
    cnprint::CNPrinter::Print(&v28, &v26, "Attempted to access type of uninitialized GenericEvent.");
    v5 = MEMORY[0x1E69E54A8];
  }

  {
    v6 = *(a3 + 16);
    if (v6)
    {
      v7 = (*(*v6 + 16))(v6);
    }

    else
    {
      v7 = MEMORY[0x1E69E54A8];
    }

    v12 = (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v12 != (off_1F4CF0C30 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v12, (off_1F4CF0C30 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v28.__vftable = 0;
      v16 = std::bad_cast::bad_cast(&v28);
      v28.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C(v16);
    }

    v13 = *(a3 + 16);
    v19 = 0;
    v20 = 0;
    v17 = &unk_1F4CF0B60;
    v18 = 0;
    sub_1D0E6B080(&v18, *(v13 + 16), *(v13 + 24), 0x4EC4EC4EC4EC4EC5 * ((*(v13 + 24) - *(v13 + 16)) >> 3));
    v11 = *(v13 + 40);
    v14 = *(v13 + 56);
    v15 = *(v13 + 72);
    LOBYTE(v24) = *(v13 + 88);
    v23 = v15;
    v22 = v14;
    v21 = v11;
  }

  else
  {
    v26 = 3;
    v25 = 5;
    if (*(a3 + 8) == 1)
    {
      v8 = *(a3 + 24);
    }

    else
    {
      LOWORD(v28.__vftable) = 3;
      v27 = 5;
      cnprint::CNPrinter::Print(&v28, &v27, "Attempted to access type of uninitialized GenericEvent.");
      v8 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v26, &v25, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v8 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CF0C30 & 0x7FFFFFFFFFFFFFFFLL));
    v11 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v17 = &unk_1F4CF0B60;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v24 = 1;
  }

  trackrun::TrackRunEngineActiveObject::HandleEvent(v4, &v17, v9, v10, v11);
  v17 = &unk_1F4CF0B60;
  v28.__vftable = &v18;
  sub_1D0E62CA0(&v28);
}

uint64_t sub_1D0E735E0(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CF12A8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0E736B4(uint64_t a1, trackrun::TrackRunEngineActiveObject **a2, uint64_t a3)
{
  v4 = *a2;
  if (*(a3 + 8) == 1)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    LOWORD(v14.__vftable) = 3;
    LOBYTE(v20) = 5;
    cnprint::CNPrinter::Print(&v14, &v20, "Attempted to access type of uninitialized GenericEvent.");
    v5 = MEMORY[0x1E69E54A8];
  }

  {
    v6 = *(a3 + 16);
    if (v6)
    {
      v7 = (*(*v6 + 16))(v6);
    }

    else
    {
      v7 = MEMORY[0x1E69E54A8];
    }

    v9 = (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v9 != (off_1F4CF0C78 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v9, (off_1F4CF0C78 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v14.__vftable = 0;
      std::bad_cast::bad_cast(&v14);
      v14.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C(&v14);
    }

    v10 = *(a3 + 16);
    v14.__vftable = &unk_1F4CF0C50;
    v11 = *(v10 + 16);
    v12 = *(v10 + 32);
    v13 = *(v10 + 48);
    LOBYTE(v18) = *(v10 + 64);
    v16 = v12;
    v17 = v13;
    v15 = v11;
  }

  else
  {
    v20 = 3;
    v19 = 5;
    if (*(a3 + 8) == 1)
    {
      v8 = *(a3 + 24);
    }

    else
    {
      LOWORD(v14.__vftable) = 3;
      v21 = 5;
      cnprint::CNPrinter::Print(&v14, &v21, "Attempted to access type of uninitialized GenericEvent.");
      v8 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v20, &v19, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v8 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CF0C78 & 0x7FFFFFFFFFFFFFFFLL));
    v15 = 0uLL;
    v14.__vftable = &unk_1F4CF0C50;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0;
  }

  trackrun::TrackRunEngineActiveObject::HandleEvent(v4, &v14);
}

uint64_t sub_1D0E738DC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CF1328))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0E7398C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CF13A8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0E73A60(uint64_t a1, trackrun::TrackRunEngineActiveObject **a2, uint64_t a3)
{
  v4 = *a2;
  if (*(a3 + 8) == 1)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    LOWORD(v14.__vftable) = 3;
    LOBYTE(v20) = 5;
    cnprint::CNPrinter::Print(&v14, &v20, "Attempted to access type of uninitialized GenericEvent.");
    v5 = MEMORY[0x1E69E54A8];
  }

  {
    v6 = *(a3 + 16);
    if (v6)
    {
      v7 = (*(*v6 + 16))(v6);
    }

    else
    {
      v7 = MEMORY[0x1E69E54A8];
    }

    v9 = (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v9 != (off_1F4CF0D08 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v9, (off_1F4CF0D08 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v14.__vftable = 0;
      std::bad_cast::bad_cast(&v14);
      v14.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C(&v14);
    }

    v10 = *(a3 + 16);
    v14.__vftable = &unk_1F4CF0CE0;
    v11 = *(v10 + 16);
    v12 = *(v10 + 32);
    v13 = *(v10 + 48);
    LOBYTE(v18) = *(v10 + 64);
    v16 = v12;
    v17 = v13;
    v15 = v11;
  }

  else
  {
    v20 = 3;
    v19 = 5;
    if (*(a3 + 8) == 1)
    {
      v8 = *(a3 + 24);
    }

    else
    {
      LOWORD(v14.__vftable) = 3;
      v21 = 5;
      cnprint::CNPrinter::Print(&v14, &v21, "Attempted to access type of uninitialized GenericEvent.");
      v8 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v20, &v19, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v8 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CF0D08 & 0x7FFFFFFFFFFFFFFFLL));
    v15 = 0uLL;
    v14.__vftable = &unk_1F4CF0CE0;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0;
  }

  trackrun::TrackRunEngineActiveObject::HandleEvent(v4, &v14);
}

uint64_t sub_1D0E73C88(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CF1428))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0E73D5C(uint64_t a1, trackrun::TrackRunEngineActiveObject **a2, uint64_t a3)
{
  v4 = *a2;
  if (*(a3 + 8) == 1)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    LOWORD(v42.__vftable) = 3;
    LOBYTE(v40) = 5;
    cnprint::CNPrinter::Print(&v42, &v40, "Attempted to access type of uninitialized GenericEvent.");
    v5 = MEMORY[0x1E69E54A8];
  }

  {
    v6 = *(a3 + 16);
    if (v6)
    {
      v7 = (*(*v6 + 16))(v6);
    }

    else
    {
      v7 = MEMORY[0x1E69E54A8];
    }

    v9 = (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v9 != (off_1F4CF0D20 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v9, (off_1F4CF0D20 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v42.__vftable = 0;
      v23 = std::bad_cast::bad_cast(&v42);
      v42.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C(v23);
    }

    v10 = *(a3 + 16);
    v24 = &unk_1F4CF0B90;
    v11 = *(v10 + 32);
    v25 = *(v10 + 16);
    v26 = v11;
    v12 = *(v10 + 80);
    v13 = *(v10 + 96);
    v14 = *(v10 + 64);
    v27 = *(v10 + 48);
    v28 = v14;
    v29 = v12;
    v30 = v13;
    v15 = *(v10 + 144);
    v16 = *(v10 + 160);
    v17 = *(v10 + 128);
    v31 = *(v10 + 112);
    v32 = v17;
    v34 = v16;
    v33 = v15;
    v19 = *(v10 + 192);
    v18 = *(v10 + 208);
    v20 = *(v10 + 218);
    v35 = *(v10 + 176);
    *&v37[10] = v20;
    *v37 = v18;
    v36 = v19;
    if (*(v10 + 263) < 0)
    {
      sub_1D0BC39B4(v38, *(v10 + 240), *(v10 + 248));
    }

    else
    {
      v21 = *(v10 + 240);
      *&v38[1] = *(v10 + 256);
      v38[0] = v21;
    }

    if (*(v10 + 287) < 0)
    {
      sub_1D0BC39B4(&v38[1] + 8, *(v10 + 264), *(v10 + 272));
    }

    else
    {
      v22 = *(v10 + 264);
      *(&v38[2] + 1) = *(v10 + 280);
      *(&v38[1] + 8) = v22;
    }
  }

  else
  {
    v40 = 3;
    v39 = 5;
    if (*(a3 + 8) == 1)
    {
      v8 = *(a3 + 24);
    }

    else
    {
      LOWORD(v42.__vftable) = 3;
      v41 = 5;
      cnprint::CNPrinter::Print(&v42, &v41, "Attempted to access type of uninitialized GenericEvent.");
      v8 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v40, &v39, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v8 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CF0D20 & 0x7FFFFFFFFFFFFFFFLL));
    v25 = 0uLL;
    v28 = 0uLL;
    v31 = 0uLL;
    v34 = 0uLL;
    v35 = 0u;
    *&v37[16] = 0u;
    memset(v38, 0, sizeof(v38));
    v26 = 0uLL;
    v24 = &unk_1F4CF0B90;
    v29 = 0uLL;
    v32 = 0uLL;
    *&v35 = 0;
    BYTE8(v35) = 0;
    v36 = 0uLL;
    v27 = 0uLL;
    v30 = 0uLL;
    v33 = 0uLL;
    *v37 = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v37[16] = 0xBFF0000000000000;
    sub_1D0B751F4(v38, &unk_1D0ED80C5);
    sub_1D0B751F4(&v38[1] + 1, &unk_1D0ED80C5);
  }

  trackrun::TrackRunEngineActiveObject::HandleEvent(v4, &v24);
  trackrun::VisitEvent::~VisitEvent(&v24);
}

void sub_1D0E74094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0E740D4(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CF14A8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0E741A8(uint64_t a1, trackrun::TrackRunEngineActiveObject **a2, uint64_t a3)
{
  v4 = *a2;
  if (*(a3 + 8) == 1)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    LOWORD(v14.__vftable) = 3;
    LOBYTE(v20) = 5;
    cnprint::CNPrinter::Print(&v14, &v20, "Attempted to access type of uninitialized GenericEvent.");
    v5 = MEMORY[0x1E69E54A8];
  }

  {
    v6 = *(a3 + 16);
    if (v6)
    {
      v7 = (*(*v6 + 16))(v6);
    }

    else
    {
      v7 = MEMORY[0x1E69E54A8];
    }

    v9 = (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v9 != (off_1F4CF0D68 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v9, (off_1F4CF0D68 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v14.__vftable = 0;
      std::bad_cast::bad_cast(&v14);
      v14.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C(&v14);
    }

    v10 = *(a3 + 16);
    v14.__vftable = &unk_1F4CF0D40;
    v11 = *(v10 + 16);
    v12 = *(v10 + 32);
    v13 = *(v10 + 48);
    LOWORD(v18) = *(v10 + 64);
    v16 = v12;
    v17 = v13;
    v15 = v11;
  }

  else
  {
    v20 = 3;
    v19 = 5;
    if (*(a3 + 8) == 1)
    {
      v8 = *(a3 + 24);
    }

    else
    {
      LOWORD(v14.__vftable) = 3;
      v21 = 5;
      cnprint::CNPrinter::Print(&v14, &v21, "Attempted to access type of uninitialized GenericEvent.");
      v8 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v20, &v19, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v8 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CF0D68 & 0x7FFFFFFFFFFFFFFFLL));
    v15 = 0uLL;
    v18 = 0;
    v14.__vftable = &unk_1F4CF0D40;
    v16 = 0uLL;
    v17 = 0uLL;
  }

  trackrun::TrackRunEngineActiveObject::HandleEvent(v4, &v14);
}

uint64_t sub_1D0E743CC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CF1528))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0E744A0(uint64_t a1, trackrun::TrackRunEngineActiveObject **a2, uint64_t a3)
{
  v4 = *a2;
  if (*(a3 + 8) == 1)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    LOWORD(v38.__vftable) = 3;
    LOBYTE(v36) = 5;
    cnprint::CNPrinter::Print(&v38, &v36, "Attempted to access type of uninitialized GenericEvent.");
    v5 = MEMORY[0x1E69E54A8];
  }

  {
    v6 = *(a3 + 16);
    if (v6)
    {
      v7 = (*(*v6 + 16))(v6);
    }

    else
    {
      v7 = MEMORY[0x1E69E54A8];
    }

    v9 = (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v9 != (off_1F4CF0D80 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v9, (off_1F4CF0D80 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v38.__vftable = 0;
      v20 = std::bad_cast::bad_cast(&v38);
      v38.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C(v20);
    }

    v10 = *(a3 + 16);
    v21 = &unk_1F4CF0BC0;
    v12 = *(v10 + 32);
    v11 = *(v10 + 48);
    v22 = *(v10 + 16);
    v23 = v12;
    v24 = v11;
    LOWORD(__p[0]) = *(v10 + 64);
    if (*(v10 + 95) < 0)
    {
      sub_1D0BC39B4(&__p[1], *(v10 + 72), *(v10 + 80));
    }

    else
    {
      v13 = *(v10 + 72);
      __p[3] = *(v10 + 88);
      *&__p[1] = v13;
    }

    v26 = *(v10 + 96);
    v14 = *(v10 + 112);
    v15 = *(v10 + 128);
    v16 = *(v10 + 144);
    v30 = *(v10 + 160);
    v29 = v16;
    v27 = v14;
    v28 = v15;
    v17 = *(v10 + 176);
    v18 = *(v10 + 192);
    v19 = *(v10 + 208);
    v34 = *(v10 + 224);
    v33 = v19;
    v32 = v18;
    v31 = v17;
  }

  else
  {
    v36 = 3;
    v35 = 5;
    if (*(a3 + 8) == 1)
    {
      v8 = *(a3 + 24);
    }

    else
    {
      LOWORD(v38.__vftable) = 3;
      v37 = 5;
      cnprint::CNPrinter::Print(&v38, &v37, "Attempted to access type of uninitialized GenericEvent.");
      v8 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v36, &v35, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v8 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CF0D80 & 0x7FFFFFFFFFFFFFFFLL));
    v22 = 0uLL;
    memset(__p, 0, sizeof(__p));
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v21 = &unk_1F4CF0BC0;
    v23 = 0uLL;
    v24 = 0uLL;
    LOWORD(__p[0]) = 0;
    sub_1D0B751F4(&__p[1], &unk_1D0ED80C5);
    LOBYTE(v26) = 0;
    *(&v26 + 1) = 0;
    *&v27 = 0;
    BYTE8(v27) = 0;
    *(&v29 + 1) = 0;
    *&v30 = 0;
    BYTE8(v30) = 0;
    *(&v32 + 1) = 0;
    *&v33 = 0;
    BYTE8(v33) = 0;
    v34 = 0uLL;
    v28 = 0uLL;
    LOBYTE(v29) = 0;
    LOBYTE(v32) = 0;
    v31 = 0uLL;
  }

  trackrun::TrackRunEngineActiveObject::HandleEvent(v4, &v21);
  v21 = &unk_1F4CF0BC0;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }
}

uint64_t sub_1D0E747EC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CF15A8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0E74838(uint64_t a1)
{
  *(a1 + 8) = &unk_1F4CF0B60;
  v3 = (a1 + 16);
  sub_1D0E62CA0(&v3);
  return a1;
}

void sub_1D0E74894(uint64_t a1)
{
  *(a1 + 8) = &unk_1F4CF0B60;
  v1 = (a1 + 16);
  sub_1D0E62CA0(&v1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E74B68(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CF16A0;
  *(a1 + 8) = &unk_1F4CF0BC0;
  v4 = *(a2 + 8);
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 24);
  *(a1 + 48) = v5;
  *(a1 + 16) = v4;
  *(a1 + 64) = *(a2 + 56);
  if (*(a2 + 87) < 0)
  {
    sub_1D0BC39B4((a1 + 72), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v6 = *(a2 + 64);
    *(a1 + 88) = *(a2 + 80);
    *(a1 + 72) = v6;
  }

  *(a1 + 96) = *(a2 + 88);
  v7 = *(a2 + 104);
  v8 = *(a2 + 120);
  v9 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 136);
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  v10 = *(a2 + 168);
  v11 = *(a2 + 184);
  v12 = *(a2 + 216);
  *(a1 + 208) = *(a2 + 200);
  *(a1 + 224) = v12;
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  return a1;
}

uint64_t sub_1D0E74C48(uint64_t a1)
{
  *(a1 + 8) = &unk_1F4CF0BC0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  return a1;
}

void sub_1D0E74C9C(uint64_t a1)
{
  *(a1 + 8) = &unk_1F4CF0BC0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E74D88(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CF16E8;
  *(a1 + 8) = &unk_1F4CF0B90;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 8);
  *(a1 + 32) = v4;
  v5 = *(a2 + 40);
  v6 = *(a2 + 56);
  v7 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 72);
  *(a1 + 96) = v7;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  v8 = *(a2 + 104);
  v9 = *(a2 + 120);
  v10 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 136);
  *(a1 + 160) = v10;
  *(a1 + 112) = v8;
  *(a1 + 128) = v9;
  v11 = *(a2 + 168);
  v12 = *(a2 + 184);
  v13 = *(a2 + 200);
  *(a1 + 218) = *(a2 + 210);
  *(a1 + 192) = v12;
  *(a1 + 208) = v13;
  *(a1 + 176) = v11;
  if (*(a2 + 255) < 0)
  {
    sub_1D0BC39B4((a1 + 240), *(a2 + 232), *(a2 + 240));
  }

  else
  {
    v14 = *(a2 + 232);
    *(a1 + 256) = *(a2 + 248);
    *(a1 + 240) = v14;
  }

  v15 = (a1 + 264);
  if (*(a2 + 279) < 0)
  {
    sub_1D0BC39B4(v15, *(a2 + 256), *(a2 + 264));
  }

  else
  {
    v16 = *(a2 + 256);
    *(a1 + 280) = *(a2 + 272);
    *v15 = v16;
  }

  return a1;
}

void sub_1D0E74E94(_Unwind_Exception *exception_object)
{
  if (*(v1 + 263) < 0)
  {
    operator delete(*(v1 + 240));
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0E74EDC(uint64_t a1)
{
  trackrun::VisitEvent::~VisitEvent((a1 + 8));

  JUMPOUT(0x1D387ECA0);
}

uint64_t trackrun::RunningTrackData::RunningTrackLane::PopulateLaneLength(uint64_t this, double a2, double a3, double a4, double a5)
{
  v5 = *this;
  v6 = *(this + 8);
  if (*this == v6)
  {
    v8 = 0.0;
  }

  else
  {
    v7 = 0;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      if (v7)
      {
        v8 = v8 + sqrt((v9 - *v5) * (v9 - *v5) + 0.0 + (a5 - v5[1]) * (a5 - v5[1]));
        a5 = v5[1];
        v9 = *v5;
      }

      else
      {
        v9 = *v5;
        a5 = v5[1];
      }

      v5 += 2;
      v7 = 1;
    }

    while (v5 != v6);
  }

  if (*&v8 > -1 && ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v8 - 1) < 0xFFFFFFFFFFFFFLL)
  {
    *(this + 32) = v8;
    *(this + 40) = 1;
  }

  return this;
}

void *trackrun::RunningTrackData::RunningTrack::PopulateLaneCountFromLaneGeometry(void *this)
{
  v1 = this[6] - this[5];
  if (v1)
  {
    this[12] = 0x8E38E38E38E38E39 * (v1 >> 3);
  }

  return this;
}

void std::domain_error::~domain_error(std::domain_error *this)
{
  MEMORY[0x1EEE63AD0](this);
}

{
  MEMORY[0x1EEE63AD8](this);
}

void std::overflow_error::~overflow_error(std::overflow_error *this)
{
  MEMORY[0x1EEE63B68](this);
}

{
  MEMORY[0x1EEE63B70](this);
}

uint64_t std::istream::~istream()
{
  return MEMORY[0x1EEE63DF8]();
}

{
  return MEMORY[0x1EEE63E00]();
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x1EEE63E10]();
}

{
  return MEMORY[0x1EEE63E18]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63EA0]();
}

{
  return MEMORY[0x1EEE63EB8]();
}

{
  return MEMORY[0x1EEE63EC0]();
}

{
  return MEMORY[0x1EEE63EC8]();
}

{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63ED8]();
}

{
  return MEMORY[0x1EEE63EE8]();
}

{
  return MEMORY[0x1EEE63EF0]();
}

{
  return MEMORY[0x1EEE63F00]();
}

{
  return MEMORY[0x1EEE63F08]();
}

uint64_t std::ofstream::open()
{
  return MEMORY[0x1EEE63F70]();
}

{
  return MEMORY[0x1EEE63F78]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}