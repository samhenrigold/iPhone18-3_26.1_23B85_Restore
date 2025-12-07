RoseSyntheticApertureFiltering::PRRoseRangeFilter *RoseSyntheticApertureFiltering::PRRoseRangeFilter::PRRoseRangeFilter(RoseSyntheticApertureFiltering::PRRoseRangeFilter *this)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 1) = xmmword_261415A90;
  *(this + 4) = 0;
  v2 = this + 48;
  *(this + 9) = 0x100000003;
  *(this + 6) = &unk_2873C40E8;
  *(this + 56) = xmmword_261415AA0;
  *(this + 10) = this + 88;
  v3 = this + 112;
  *(this + 17) = 0x100000003;
  *(this + 14) = &unk_2873C40E8;
  *(this + 120) = xmmword_261415AA0;
  *(this + 18) = this + 152;
  v4 = this + 176;
  *(this + 25) = 0x100000003;
  *(this + 22) = &unk_2873C40E8;
  *(this + 184) = xmmword_261415AA0;
  *(this + 26) = this + 216;
  *(this + 15) = xmmword_261415AB0;
  *(this + 32) = 0xBFFBB67AE8584CAALL;
  v5 = (this + 264);
  v6 = erf(1.73205081);
  *v5 = 0u;
  v5[1] = 0u;
  *(this + 37) = 0;
  *(this + 38) = v6;
  v7 = 0;
  *(this + 39) = erf(-1.73205081);
  *(this + 360) = xmmword_261415B68;
  *(this + 376) = unk_261415B78;
  *(this + 44) = 0x3FC5555555555555;
  *(this + 20) = xmmword_261415B40;
  *(this + 21) = unk_261415B50;
  *(this + 49) = 0x3FC5555555555555;
  do
  {
    *cnmatrix::CNMatrixBase<double>::operator()(v3, v7) = 0;
    *cnmatrix::CNMatrixBase<double>::operator()(v4, v7) = 0;
    *cnmatrix::CNMatrixBase<double>::operator()(v2, v7++) = 0;
  }

  while (v7 != 3);
  v8 = os_log_create("com.apple.proximity", "RangeFilter");
  *(this + 5) = v8;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_2613DF000, v8, OS_LOG_TYPE_DEFAULT, "PRRoseRangeFilter constructed", v10, 2u);
  }

  return this;
}

void sub_2613E0348(_Unwind_Exception *a1)
{
  *v3 = &unk_2873C4140;
  *v2 = &unk_2873C4140;
  *v1 = &unk_2873C4140;
  _Unwind_Resume(a1);
}

void RoseSyntheticApertureFiltering::PRRoseRangeFilter::addMeasurementWithVIO(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = *(a2 + 16);
    v10 = *(a2 + 96);
    v11 = *(a2 + 104);
    v12 = *(a2 + 112);
    *buf = 134219264;
    v47 = v7;
    v48 = 2048;
    v49 = v8;
    v50 = 2048;
    v51 = v9;
    v52 = 2048;
    v53 = v10;
    v54 = 2048;
    v55 = v11;
    v56 = 2048;
    v57 = v12;
    _os_log_impl(&dword_2613DF000, v6, OS_LOG_TYPE_DEFAULT, "Measurement added with VIO: timestamp %3.2f s, range %3.2f m, uncertainty %3.2f m, position [%3.2f, %3.2f, %3.2f] m", buf, 0x3Eu);
  }

  v40 = 0x100000003;
  v39 = xmmword_261415AA0;
  v38 = &unk_2873C40E8;
  v41 = &v42;
  cnmatrix::FastResize<double>(&v38, 3, 1);
  cnmatrix::CNMatrixBase<double>::WriteValue(&v38, 0.0);
  v35 = 0x100000004;
  v33 = &unk_2873C4170;
  v34 = xmmword_261415AC0;
  v36 = &v37;
  cnmatrix::FastResize<double>(&v33, 4, 1);
  cnmatrix::CNMatrixBase<double>::WriteValue(&v33, 0.0);
  for (i = 0; i != 3; ++i)
  {
    v14 = a2 + 8 * i;
    v15 = *(v14 + 96);
    *cnmatrix::CNMatrixBase<double>::operator()(&v38, i) = v15;
    v16 = *(v14 + 120);
    *cnmatrix::CNMatrixBase<double>::operator()(&v33, i) = v16;
  }

  v17 = *(a2 + 144);
  *cnmatrix::CNMatrixBase<double>::operator()(&v33, 3) = v17;
  RoseSyntheticApertureFiltering::quatn2rot(&v33, buf);
  v44 = 0x100000003;
  *&v43[8] = xmmword_261415AA0;
  *v43 = &unk_2873C40E8;
  v45[0] = &v45[1];
  cnmatrix::Multiply<double>(buf, a1 + 112, v43);
  v30 = 0x100000003;
  v28 = &unk_2873C40E8;
  v29 = xmmword_261415AA0;
  v31 = &v32;
  cnmatrix::Add<double>(&v38, v43, &v28);
  if (*a1)
  {
    v18 = *(a1 + 8);
    if (v18 == 1)
    {
      RoseSyntheticApertureFiltering::PRRoseRangeFilter::propagateStateWithPose(a1, &v28);
    }

    else if (!v18)
    {
      v19 = *(a1 + 40);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v43 = 0;
        _os_log_impl(&dword_2613DF000, v19, OS_LOG_TYPE_DEFAULT, "Range filter transitioning from non-VIO to VIO mode", v43, 2u);
      }

      RoseSyntheticApertureFiltering::PRRoseRangeFilter::propagateStateWithTime(a1, *a2, 0);
      cnmatrix::CNMatrixBase<double>::operator=(a1 + 48, &v28);
    }

    RoseSyntheticApertureFiltering::PRRoseRangeFilter::measurementUpdate(a1, *(a2 + 8), *(a2 + 16), 0);
  }

  else
  {
    *(a1 + 16) = *(a2 + 8);
    cnmatrix::CNMatrixBase<double>::operator=(a1 + 48, &v28);
    *a1 = 1;
    v20 = *(a1 + 40);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 16);
      v22 = *(a1 + 24);
      *v43 = 134218240;
      *&v43[4] = v21;
      *&v43[12] = 2048;
      *&v43[14] = v22;
      _os_log_impl(&dword_2613DF000, v20, OS_LOG_TYPE_DEFAULT, "Initializing range filter with VIO: range %f m, uncertainty %f m", v43, 0x16u);
    }
  }

  v23 = *a2;
  *(a1 + 8) = 1;
  *(a1 + 32) = v23;
  v24 = *(a1 + 40);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *(a1 + 16);
    v26 = *(a1 + 24);
    *v43 = 134218754;
    *&v43[4] = v23;
    *&v43[12] = 2048;
    *&v43[14] = v25;
    *&v43[22] = 2048;
    v44 = v26;
    LOWORD(v45[0]) = 2080;
    *(v45 + 2) = "YES";
    _os_log_impl(&dword_2613DF000, v24, OS_LOG_TYPE_DEFAULT, "Filter state after meas with VIO: timestamp %3.2f s, range %3.2f m, uncertainty %3.2f m, with VIO: %s", v43, 0x2Au);
  }

  v27 = *(a1 + 24);
  *a3 = *(a1 + 8);
  *(a3 + 16) = v27;
  *(a3 + 8) = fmax(*(a3 + 8), 0.0);
}

void RoseSyntheticApertureFiltering::PRRoseRangeFilter::propagateStateWithTime(RoseSyntheticApertureFiltering::PRRoseRangeFilter *this, double a2, int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *(this + 4);
  v5 = a2 - v4;
  if (!a3)
  {
    v5 = v5 * 0.0625;
  }

  v6 = sqrt(v5 + *(this + 3) * *(this + 3));
  *(this + 3) = v6;
  v7 = *(this + 5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(this + 2);
    if (*(this + 2) == 1)
    {
      v9 = "YES";
    }

    else
    {
      v9 = "NO";
    }

    v10 = 134218754;
    v11 = v4;
    v12 = 2048;
    v13 = v8;
    v14 = 2048;
    v15 = v6;
    v16 = 2080;
    v17 = v9;
    _os_log_impl(&dword_2613DF000, v7, OS_LOG_TYPE_DEFAULT, "Filter state after propagation with time: timestamp %3.2f s, range %3.2f m, uncertainty %3.2f m, with VIO: %s", &v10, 0x2Au);
  }
}

void RoseSyntheticApertureFiltering::PRRoseRangeFilter::propagateStateWithPose(uint64_t a1, uint64_t a2)
{
  v35[309] = *MEMORY[0x277D85DE8];
  v20 = 0x100000003;
  v18 = &unk_2873C40E8;
  v19 = xmmword_261415AA0;
  v21 = &v22;
  cnmatrix::Subtract<double>(a2, a1 + 48, &v18);
  v30 = 0x100000003;
  v29 = xmmword_261415AA0;
  v28 = &unk_2873C40E8;
  v31 = &v32;
  v34 = 0x100000134;
  *&buf[8] = xmmword_261415AD0;
  *buf = &unk_2873C41B8;
  v35[0] = &v35[1];
  v25 = 0x100000003;
  v23 = &unk_2873C40E8;
  v24 = xmmword_261415AA0;
  v26 = &v27;
  cnmatrix::Norm<double>(&v18, &v28, buf, &v23, "2");
  v5 = v4;
  cnmatrix::CNMatrixBase<double>::operator=(a1 + 48, a2);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v7 + v6 * -1.73205081 <= 0.0)
  {
    v14 = sqrt(v5 * 0.5 * (v5 * 0.5) + v6 * v6);
    *(a1 + 24) = v14;
  }

  else
  {
    v8 = 0;
    v9 = (a1 + 240);
    v10 = 0.0;
    do
    {
      v11 = sqrt(v5 * v5 + (v7 + v6 * *v9) * (v7 + v6 * *v9) + v5 * -2.0 * (v7 + v6 * *v9) * v9[5]);
      *&buf[v8] = v11;
      v10 = v10 + v9[10] * v11;
      ++v9;
      v8 += 8;
    }

    while (v8 != 40);
    v12 = 0;
    v13 = 0.0;
    do
    {
      v13 = v13 + *(a1 + 360 + v12) * (*&buf[v12] - v10) * (*&buf[v12] - v10);
      v12 += 8;
    }

    while (v12 != 40);
    v14 = sqrt(v13);
    *(a1 + 16) = v10;
    *(a1 + 24) = v14;
    v7 = v10;
  }

  v15 = *(a1 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    if (*(a1 + 8) == 1)
    {
      v17 = "YES";
    }

    else
    {
      v17 = "NO";
    }

    *buf = 134218754;
    *&buf[4] = v16;
    *&buf[12] = 2048;
    *&buf[14] = v7;
    *&buf[22] = 2048;
    v34 = *&v14;
    LOWORD(v35[0]) = 2080;
    *(v35 + 2) = v17;
    _os_log_impl(&dword_2613DF000, v15, OS_LOG_TYPE_DEFAULT, "Filter state after propagation with pose: timestamp %3.2f s, range %3.2f m, uncertainty %3.2f m, with VIO: %s", buf, 0x2Au);
  }
}

void RoseSyntheticApertureFiltering::PRRoseRangeFilter::measurementUpdate(RoseSyntheticApertureFiltering::PRRoseRangeFilter *this, double a2, double a3, char a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3 * a3;
  v8 = *(this + 2);
  v9 = *(this + 3);
  v10 = a3 * a3 + v9 * v9;
  v11 = sqrt(v10);
  v12 = (a2 - v8) / v11;
  if ((a4 & 1) != 0 || v12 <= 6.0)
  {
    if ((a4 & 1) != 0 || v12 >= -6.0)
    {
      if (*(this + 1))
      {
        *(this + 1) = 0;
        v19 = *(this + 5);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v21) = 0;
          _os_log_impl(&dword_2613DF000, v19, OS_LOG_TYPE_DEFAULT, "Did not observe a second nLoS->LoS event after the first one - marked as a false event due to packet collision", &v21, 2u);
          v8 = *(this + 2);
          v9 = *(this + 3);
        }
      }

      *(this + 2) = (v7 * v8 + a2 * (v9 * v9)) / v10;
      *(this + 3) = v9 * a3 / v11;
    }

    else if (*(this + 1))
    {
      *(this + 1) = 0;
      v18 = *(this + 5);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v21 = 134218496;
        v22 = v8;
        v23 = 2048;
        v24 = a2;
        v25 = 2048;
        v26 = v12;
        _os_log_error_impl(&dword_2613DF000, v18, OS_LOG_TYPE_ERROR, "Second nLos->LoS event detected by the range filter: Previous range %f m, Current range %f m, Normalized change %f", &v21, 0x20u);
        v18 = *(this + 5);
      }

      *(this + 2) = a2;
      *(this + 3) = a3;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 134218240;
        v22 = a2;
        v23 = 2048;
        v24 = a3;
        v15 = "Re-initializing range filter: range %f m, uncertainty %f m";
        v16 = v18;
        v17 = 22;
        goto LABEL_15;
      }
    }

    else
    {
      *(this + 1) = 1;
      v20 = *(this + 5);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = 134218496;
        v22 = v8;
        v23 = 2048;
        v24 = a2;
        v25 = 2048;
        v26 = v12;
        _os_log_error_impl(&dword_2613DF000, v20, OS_LOG_TYPE_ERROR, "Possible nLos->LoS event detected by the range filter: Previous range %f m, Current range %f m, Normalized change %f - not acting yet", &v21, 0x20u);
      }
    }
  }

  else
  {
    v13 = *(this + 5);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v21 = 134218496;
      v22 = v8;
      v23 = 2048;
      v24 = a2;
      v25 = 2048;
      v26 = v12;
      _os_log_error_impl(&dword_2613DF000, v13, OS_LOG_TYPE_ERROR, "LoS->nLoS event detected by the range filter: Previous range %f m, Current range %f m, Normalized change %f", &v21, 0x20u);
    }

    if (*(this + 1) == 1)
    {
      *(this + 1) = 0;
      v14 = *(this + 5);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        v15 = "Did not observe a second nLoS->LoS event after the first one - marked as a false event due to packet collision";
        v16 = v14;
        v17 = 2;
LABEL_15:
        _os_log_impl(&dword_2613DF000, v16, OS_LOG_TYPE_DEFAULT, v15, &v21, v17);
      }
    }
  }
}

double RoseSyntheticApertureFiltering::PRRoseRangeFilter::getCurrentState@<D0>(RoseSyntheticApertureFiltering::PRRoseRangeFilter *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 24);
  *a2 = *(this + 8);
  *(a2 + 16) = v2;
  result = fmax(*(a2 + 8), 0.0);
  *(a2 + 8) = result;
  return result;
}

void RoseSyntheticApertureFiltering::PRRoseRangeFilter::addMeasurementWithoutVIO(uint64_t a1@<X0>, double *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v43 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *a2;
    v12 = *(a2 + 1);
    v13 = *(a2 + 2);
    v14 = "YES";
    if (a3)
    {
      v15 = "YES";
    }

    else
    {
      v15 = "NO";
    }

    if (!a4)
    {
      v14 = "NO";
    }

    v33 = 134219010;
    v34 = v11;
    v35 = 2048;
    v36 = v12;
    v37 = 2048;
    v38 = v13;
    v39 = 2080;
    v40 = v15;
    v41 = 2080;
    v42 = v14;
    _os_log_impl(&dword_2613DF000, v10, OS_LOG_TYPE_DEFAULT, "Measurement added without VIO: timestamp %3.2f s, range %3.2f m, uncertainty %3.2f m, isCompanionMoving %s, isDeviceMoving %s", &v33, 0x34u);
  }

  if (*a1)
  {
    if (a3 & 1) != 0 || (a4)
    {
      RoseSyntheticApertureFiltering::PRRoseRangeFilter::propagateStateWithTime(a1, *a2, a3);
      v19 = a2[1];
      v20 = a2[2];
      v21 = a1;
      v22 = a3;
    }

    else
    {
      v16 = *(a1 + 40);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a2 + 1);
        v18 = *(a2 + 2);
        v33 = 134218240;
        v34 = v17;
        v35 = 2048;
        v36 = v18;
        _os_log_impl(&dword_2613DF000, v16, OS_LOG_TYPE_DEFAULT, "Range filter update with stationary companion and device: range %f m, uncertainty %f m", &v33, 0x16u);
      }

      v19 = a2[1];
      v20 = a2[2];
      v21 = a1;
      v22 = 0;
    }

    RoseSyntheticApertureFiltering::PRRoseRangeFilter::measurementUpdate(v21, v19, v20, v22);
  }

  else
  {
    v23 = *(a2 + 1);
    *(a1 + 16) = v23;
    v24 = *(a2 + 2);
    *(a1 + 24) = v24;
    *a1 = 1;
    v25 = *(a1 + 40);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 134218240;
      v34 = v23;
      v35 = 2048;
      v36 = v24;
      _os_log_impl(&dword_2613DF000, v25, OS_LOG_TYPE_DEFAULT, "Initializing range filter without VIO: range %f m, uncertainty %f m", &v33, 0x16u);
    }
  }

  v27 = (a1 + 8);
  v26 = *(a1 + 8);
  *(a1 + 32) = *a2;
  v28 = *(a1 + 40);
  if (v26 == 1 && os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v33) = 0;
    _os_log_impl(&dword_2613DF000, v28, OS_LOG_TYPE_DEFAULT, "Range filter transitioning from VIO to non-VIO mode", &v33, 2u);
    v28 = *(a1 + 40);
  }

  *v27 = 0;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v30 = *(a1 + 24);
    v29 = *(a1 + 32);
    v31 = *(a1 + 16);
    v33 = 134218754;
    v34 = v29;
    v35 = 2048;
    v36 = v31;
    v37 = 2048;
    v38 = v30;
    v39 = 2080;
    v40 = "NO";
    _os_log_impl(&dword_2613DF000, v28, OS_LOG_TYPE_DEFAULT, "Filter state after meas without VIO: timestamp %3.2f s, range %3.2f m, uncertainty %3.2f m, with VIO: %s", &v33, 0x2Au);
  }

  v32 = *(a1 + 24);
  *a5 = *v27;
  *(a5 + 16) = v32;
  *(a5 + 8) = fmax(*(a5 + 8), 0.0);
}

void cnmatrix::CNMatrix<3u,1u,double>::TransposeDataFootprint(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= 2)
  {
    v4 = *(a1 + 12);
    if (v4 >= 2)
    {
      if (!a2)
      {
        cnmatrix::CNMatrix<3u,1u,double>::TransposeDataFootprint();
      }

      v6 = v4 + v2 - *(a1 + 20);
      if (v6 <= 0)
      {
        cnmatrix::CNMatrix<3u,1u,double>::TransposeDataFootprint();
      }

      bzero(a2, *(a1 + 16));
      v7 = *(a1 + 16);
      if (v7 >= 3)
      {
        v8 = (v7 - 1);
        v9 = *(a1 + 32);
        v10 = 1;
        do
        {
          v11 = &a2[v10];
          if ((a2[v10] & 1) == 0)
          {
            v12 = *(v9 + 8 * v10);
            v13 = v10;
            do
            {
              v13 = v13 * v6 % v8;
              v14 = *(v9 + 8 * v13);
              *(v9 + 8 * v13) = v12;
              *v11 = 1;
              v11 = &a2[v13];
              v12 = v14;
            }

            while (!*v11);
          }

          ++v10;
        }

        while (v10 != v8);
      }
    }
  }
}

_DWORD *cnmatrix::FastResize<double>(_DWORD *result, int a2, int a3)
{
  if (a2 < 0)
  {
    cnmatrix::FastResize<double>();
  }

  if (result[6] < a2)
  {
    cnmatrix::FastResize<double>();
  }

  if (a3 < 0)
  {
    cnmatrix::FastResize<double>();
  }

  if (result[7] < a3)
  {
    cnmatrix::FastResize<double>();
  }

  result[2] = a2;
  result[3] = a3;
  result[4] = a3 * a2;
  result[5] = a2;
  return result;
}

uint64_t cnmatrix::CNMatrixBase<double>::WriteValue(uint64_t result, double a2)
{
  v2 = *(result + 32);
  if (!v2)
  {
    cnmatrix::CNMatrixBase<double>::WriteValue();
  }

  v3 = *(result + 16);
  if (v3 > 3)
  {
    v10 = (v2 + 8 * v3);
    v11 = (v3 - 1) >> 1;
    v12 = vdupq_lane_s64(*&a2, 0);
    do
    {
      *v2++ = v12;
      --v11;
    }

    while (v11);
    v10[-1] = v12;
  }

  else if (v3 >= 1)
  {
    v4 = (v3 + 1) & 0xFFFFFFFE;
    v5 = vdupq_n_s64(v3 - 1);
    v6 = xmmword_261415AE0;
    v7 = &v2->i64[1];
    v8 = vdupq_n_s64(2uLL);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v5, v6));
      if (v9.i8[0])
      {
        *(v7 - 1) = a2;
      }

      if (v9.i8[4])
      {
        *v7 = a2;
      }

      v6 = vaddq_s64(v6, v8);
      v7 += 2;
      v4 -= 2;
    }

    while (v4);
  }

  return result;
}

uint64_t cnmatrix::CNMatrixBase<double>::operator()(uint64_t a1, signed int a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    cnmatrix::CNMatrixBase<double>::operator()();
  }

  if (a2 < 0)
  {
    cnmatrix::CNMatrixBase<double>::operator()();
  }

  if (*(a1 + 16) <= a2)
  {
    cnmatrix::CNMatrixBase<double>::operator()();
  }

  return v2 + 8 * a2;
}

double *cnmatrix::Multiply<double>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 12);
  if (v3 != *(a2 + 8))
  {
    cnmatrix::Multiply<double>();
  }

  if (a1 == a3)
  {
    cnmatrix::Multiply<double>();
  }

  if (a2 == a3)
  {
    cnmatrix::Multiply<double>();
  }

  v7 = *(a1 + 8);
  v8 = *(a2 + 12);
  result = cnmatrix::FastResize<double>(a3, *(a1 + 8), *(a2 + 12));
  if (v3 <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v3;
  }

  if (v10 <= v7)
  {
    v10 = v7;
  }

  v11 = *(a1 + 32);
  if (v10 > 5)
  {
    return cblas_dgemm_NEWLAPACK();
  }

  if (v8)
  {
    v12 = 0;
    v13 = *(a2 + 32);
    v14 = *(a3 + 32);
    do
    {
      if (v7)
      {
        v15 = 0;
        v16 = v11;
        do
        {
          v17 = 0.0;
          if (v3)
          {
            v18 = v3;
            v19 = v13;
            result = v16;
            do
            {
              v20 = *v19++;
              v17 = v17 + *result * v20;
              result += v7;
              --v18;
            }

            while (v18);
          }

          *(v14 + 8 * v12 * v7 + 8 * v15++) = v17;
          ++v16;
        }

        while (v15 != v7);
      }

      ++v12;
      v13 += v3;
    }

    while (v12 != v8);
  }

  return result;
}

float64x2_t cnmatrix::Add<double>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (v4 != *(a2 + 8))
  {
    cnmatrix::Add<double>();
  }

  v7 = *(a1 + 12);
  if (v7 != *(a2 + 12))
  {
    cnmatrix::Add<double>();
  }

  if (a1 == a3)
  {
    cnmatrix::Add<double>();
  }

  if (a2 == a3)
  {
    cnmatrix::Add<double>();
  }

  cnmatrix::FastResize<double>(a3, v4, v7);
  v9 = *(a3 + 16);
  if (v9 > 3)
  {
    v16 = *(a1 + 32);
    v17 = *(a2 + 32);
    v18 = (v16 + 8 * (v9 - 2));
    v19 = *(a3 + 32);
    v20 = (v17 + 8 * (v9 - 2));
    v21 = (v19 + 8 * (v9 - 2));
    v22 = (v9 - 1) >> 1;
    do
    {
      v23 = *v16++;
      v24 = v23;
      v25 = *v17++;
      *v19++ = vaddq_f64(v24, v25);
      --v22;
    }

    while (v22);
    result = vaddq_f64(*v18, *v20);
    *v21 = result;
  }

  else if (v9 >= 1)
  {
    v10 = *(a1 + 32);
    v11 = *(a2 + 32);
    v12 = *(a3 + 32);
    do
    {
      v13 = *v10++;
      v14 = v13;
      v15 = *v11++;
      result.f64[0] = v14 + v15;
      *v12++ = result.f64[0];
      --v9;
    }

    while (v9);
  }

  return result;
}

__n128 cnmatrix::CNMatrixBase<double>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a2 + 8);
    if (*(a1 + 24) < v2)
    {
      cnmatrix::CNMatrixBase<double>::operator=();
    }

    v3 = *(a2 + 12);
    if (*(a1 + 28) < v3)
    {
      cnmatrix::CNMatrixBase<double>::operator=();
    }

    *(a1 + 8) = v2;
    *(a1 + 12) = v3;
    v4 = v3 * v2;
    *(a1 + 16) = v4;
    *(a1 + 20) = v2;
    v5 = *(a2 + 16);
    if (v5 > 3)
    {
      v10 = *(a1 + 32);
      v11 = *(a2 + 32);
      v12 = (v10 + 8 * (v5 - 2));
      v13 = (v11 + 8 * (v5 - 2));
      v14 = (v5 - 1) >> 1;
      do
      {
        v15 = *v11++;
        *v10++ = v15;
        --v14;
      }

      while (v14);
      result = *v13;
      *v12 = *v13;
    }

    else if (v4 >= 1)
    {
      v6 = *(a2 + 32);
      v7 = *(a1 + 32);
      do
      {
        v8 = *v6++;
        result.n128_u64[0] = v8;
        *v7++ = v8;
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

float64x2_t cnmatrix::Subtract<double>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (v4 != *(a2 + 8))
  {
    cnmatrix::Subtract<double>();
  }

  v7 = *(a1 + 12);
  if (v7 != *(a2 + 12))
  {
    cnmatrix::Subtract<double>();
  }

  if (a1 == a3)
  {
    cnmatrix::Subtract<double>();
  }

  if (a2 == a3)
  {
    cnmatrix::Subtract<double>();
  }

  cnmatrix::FastResize<double>(a3, v4, v7);
  v9 = *(a3 + 16);
  if (v9 > 3)
  {
    v16 = *(a1 + 32);
    v17 = *(a2 + 32);
    v18 = (v16 + 8 * (v9 - 2));
    v19 = *(a3 + 32);
    v20 = (v17 + 8 * (v9 - 2));
    v21 = (v19 + 8 * (v9 - 2));
    v22 = (v9 - 1) >> 1;
    do
    {
      v23 = *v16++;
      v24 = v23;
      v25 = *v17++;
      *v19++ = vsubq_f64(v24, v25);
      --v22;
    }

    while (v22);
    result = vsubq_f64(*v18, *v20);
    *v21 = result;
  }

  else if (v9 >= 1)
  {
    v10 = *(a1 + 32);
    v11 = *(a2 + 32);
    v12 = *(a3 + 32);
    do
    {
      v13 = *v10++;
      v14 = v13;
      v15 = *v11++;
      result.f64[0] = v14 - v15;
      *v12++ = result.f64[0];
      --v9;
    }

    while (v9);
  }

  return result;
}

void cnmatrix::Norm<double>(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, char *__s1)
{
  if (a1 == a2)
  {
    cnmatrix::Norm<double>();
  }

  if (a1 == a3)
  {
    cnmatrix::Norm<double>();
  }

  if (a1 == a4)
  {
    cnmatrix::Norm<double>();
  }

  if (a2 == a3)
  {
    cnmatrix::Norm<double>();
  }

  if (a2 == a4)
  {
    cnmatrix::Norm<double>();
  }

  if (a3 == a4)
  {
    cnmatrix::Norm<double>();
  }

  v7 = *(a1 + 16);
  if (*(a2 + 16) < v7)
  {
    cnmatrix::Norm<double>();
  }

  if (v7)
  {
    v9 = *(a1 + 8);
    v10 = *__s1;
    if (v9 == 1 || (v11 = *(a1 + 12), v11 == 1))
    {
      if (v10 == 50)
      {
        if (!__s1[1])
        {
          v12 = *(a1 + 32);
          v13 = *v12 * *v12;
          if (v7 != 1)
          {
            v14 = v12 + 1;
            v15 = v7 - 1;
            do
            {
              v16 = *v14++;
              v13 = v13 + v16 * v16;
              --v15;
            }

            while (v15);
          }

          return;
        }
      }

      else if (v10 == 49 && !__s1[1])
      {
        v56 = *(a1 + 32);
        v57 = fabs(*v56);
        if (v7 != 1)
        {
          v58 = v56 + 1;
          v59 = v7 - 1;
          do
          {
            v60 = *v58++;
            v57 = v57 + fabs(v60);
            --v59;
          }

          while (v59);
        }

        return;
      }

      if (!strcmp(__s1, "inf"))
      {
        v23 = *(a1 + 32);
        v24 = fabs(*v23);
        if (v7 != 1)
        {
          v25 = v23 + 1;
          v26 = v7 - 1;
          do
          {
            v27 = *v25++;
            v28 = fabs(v27);
            if (v28 > v24)
            {
              v24 = v28;
            }

            --v26;
          }

          while (v26);
        }
      }

      else if (!strcmp(__s1, "-inf"))
      {
        v40 = *(a1 + 32);
        v41 = fabs(*v40);
        if (v7 != 1)
        {
          v42 = v40 + 1;
          v43 = v7 - 1;
          do
          {
            v44 = *v42++;
            v45 = fabs(v44);
            if (v45 < v41)
            {
              v41 = v45;
            }

            --v43;
          }

          while (v43);
        }
      }

      else
      {
        v73 = 0.0;
        if (sscanf(__s1, "%lg", &v73) != 1)
        {
          cnmatrix::Norm<double>(__s1);
        }

        v17 = v73;
        if (fabs(v73) >= 2.22044605e-16)
        {
          v46 = *(a1 + 32);
          v47 = pow(fabs(*v46), v73);
          if (v7 != 1)
          {
            v48 = v46 + 1;
            v49 = v7 - 1;
            do
            {
              v50 = *v48++;
              v47 = v47 + pow(fabs(v50), v17);
              --v49;
            }

            while (v49);
          }

          pow(v47, 1.0 / v17);
        }
      }

      return;
    }

    if (v10 == 50)
    {
      if (!__s1[1])
      {
        cnmatrix::SingularValues<double>(a1, a2, a3, a4);
        return;
      }

      goto LABEL_30;
    }

    if (v10 != 49 || __s1[1])
    {
LABEL_30:
      if (!strcmp(__s1, "inf"))
      {
        if (v9)
        {
          v29 = *(a1 + 32);
          v30 = *(a2 + 32);
          v31 = v9;
          do
          {
            v32 = *v29++;
            *v30++ = fabs(v32);
            --v31;
          }

          while (v31);
        }

        if (v11 <= 1)
        {
          v34 = *(a2 + 32);
        }

        else
        {
          v33 = *(a1 + 32);
          v34 = *(a2 + 32);
          v35 = 1;
          v36 = v9;
          do
          {
            v37 = v9;
            v38 = v36;
            v39 = v34;
            if (v9)
            {
              do
              {
                *v39 = fabs(*(v33 + 8 * v38)) + *v39;
                ++v39;
                ++v38;
                --v37;
              }

              while (v37);
            }

            ++v35;
            v36 += v9;
          }

          while (v35 != v11);
        }

        v51 = *v34;
        if (v9 >= 2)
        {
          v52 = v34 + 1;
          v53 = v9 - 1;
          do
          {
            v54 = *v52++;
            v55 = v54;
            if (v54 > v51)
            {
              v51 = v55;
            }

            --v53;
          }

          while (v53);
        }
      }

      else
      {
        if (strcmp(__s1, "fro"))
        {
          cnmatrix::Norm<double>(__s1);
        }

        v18 = *(a1 + 32);
        v19 = *v18 * *v18;
        if (v7 != 1)
        {
          v20 = v18 + 1;
          v21 = v7 - 1;
          do
          {
            v22 = *v20++;
            v19 = v19 + v22 * v22;
            --v21;
          }

          while (v21);
        }
      }

      return;
    }

    if (v11)
    {
      v61 = 0;
      v62 = *(a1 + 32);
      v63 = *(a2 + 32);
      v64 = 1;
      do
      {
        v65 = fabs(*(v62 + 8 * (v9 * v61)));
        v63[v61] = v65;
        v66 = v9 - 1;
        v67 = v64;
        if (v9 >= 2)
        {
          do
          {
            v65 = v65 + fabs(*(v62 + 8 * v67));
            v63[v61] = v65;
            ++v67;
            --v66;
          }

          while (v66);
        }

        ++v61;
        v64 += v9;
      }

      while (v61 != v11);
      v68 = *v63;
      v69 = v63 + 1;
      v70 = v11 - 1;
      do
      {
        v71 = *v69++;
        v72 = v71;
        if (v71 > v68)
        {
          v68 = v72;
        }

        --v70;
      }

      while (v70);
    }
  }
}

_DWORD *cnmatrix::SingularValues<double>(_DWORD *a1, _DWORD *a2, uint64_t a3, _DWORD *a4)
{
  v6 = a1[2];
  v5 = a1[3];
  if (v5 <= v6)
  {
    v7 = a1[2];
  }

  else
  {
    v7 = a1[3];
  }

  if (v5 >= v6)
  {
    v8 = a1[2];
  }

  else
  {
    v8 = a1[3];
  }

  if (a1 == a2)
  {
    cnmatrix::SingularValues<double>();
  }

  if (a1 == a3)
  {
    cnmatrix::SingularValues<double>();
  }

  if (a1 == a4)
  {
    cnmatrix::SingularValues<double>();
  }

  if (a2 == a3)
  {
    cnmatrix::SingularValues<double>();
  }

  if (a2 == a4)
  {
    cnmatrix::SingularValues<double>();
  }

  if (a3 == a4)
  {
    cnmatrix::SingularValues<double>();
  }

  v11 = *(a3 + 28) * *(a3 + 24);
  if (!v11)
  {
    cnmatrix::SingularValues<double>();
  }

  if (v11 < 3 * v8 + v7)
  {
    cnmatrix::SingularValues<double>();
  }

  if (v11 < 5 * v8)
  {
    cnmatrix::SingularValues<double>();
  }

  if (a2[6] < v6)
  {
    cnmatrix::SingularValues<double>();
  }

  if (a2[7] < v5)
  {
    cnmatrix::SingularValues<double>();
  }

  if (a4[6] < v8)
  {
    cnmatrix::SingularValues<double>();
  }

  if (!a4[7])
  {
    cnmatrix::SingularValues<double>();
  }

  cnmatrix::CNMatrixBase<double>::operator=(a2, a1);
  v12 = a2[2];
  v13 = a2[3];
  v20 = 78;
  v19 = 78;
  v17 = v13;
  v18 = v12;
  v14 = dgesvd_NEWLAPACK();
  v15 = **(a3 + 32);
  if (v11 < v15 && cnprint::CNPrinter::GetLogLevel(v14) <= 1)
  {
    LOWORD(v18) = 4;
    LOBYTE(v17) = 1;
    cnprint::CNPrinter::Print(&v18, &v17, "Warning: Svd optimal workspace size %u is greater than provided workspace size %u; performance may suffer.", v15, v11);
  }

  cnmatrix::FastResize<double>(a3, *(a3 + 24), *(a3 + 28));
  return cnmatrix::FastResize<double>(a4, v8, 1);
}

void sub_2613E391C(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_2613E3FE8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2613E45B8(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_2613E5E78(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

double PRCommonConvertTicksToSeconds(unint64_t a1)
{
  v2 = *&PRCommonConvertTicksToSeconds(unsigned long long)::ticksToSeconds;
  if (*&PRCommonConvertTicksToSeconds(unsigned long long)::ticksToSeconds == 0.0)
  {
    if (mach_timebase_info(&info))
    {
      PRCommonConvertTicksToSeconds();
    }

    if (info.denom)
    {
      denom = info.denom;
      numer = info.numer;
      do
      {
        v5 = denom;
        denom = numer % denom;
        numer = v5;
      }

      while (denom);
    }

    else
    {
      v5 = info.numer;
    }

    v6 = 1000000000;
    v7 = info.numer / v5;
    do
    {
      v8 = v7;
      v7 = v6;
      v6 = v8 % v6;
    }

    while (v6);
    v2 = (info.numer / v5 / v7) / (0x3B9ACA00 / v7 * (info.denom / v5));
    *&PRCommonConvertTicksToSeconds(unsigned long long)::ticksToSeconds = v2;
  }

  return v2 * a1;
}

double PRCommonGetMachTimeSeconds(void)
{
  v0 = mach_absolute_time();

  return PRCommonConvertTicksToSeconds(v0);
}

double PRCommonGetMachContinuousTimeSeconds(void)
{
  v0 = mach_continuous_time();

  return PRCommonConvertTicksToSeconds(v0);
}

BOOL PRCommonGetAllTimes(double *a1, double *a2, double *a3)
{
  times = mach_get_times();
  if (!times)
  {
    if (a1)
    {
      *a1 = v9 / 1000000000.0 + v8 - *MEMORY[0x277CBECD0];
    }

    if (a2)
    {
      *a2 = PRCommonConvertTicksToSeconds(0);
    }

    if (a3)
    {
      *a3 = PRCommonConvertTicksToSeconds(0);
    }
  }

  return times == 0;
}

id PRCommonConvertNSDataToHexNSString(NSData *a1, int a2)
{
  v3 = a1;
  memset(&v16, 0, sizeof(v16));
  std::vector<unsigned char>::vector[abi:ne200100](&v14, -[NSData length](v3, "length"));
  [(NSData *)v3 getBytes:v14 length:[(NSData *)v3 length]];
  v4 = v14;
  v5 = v15;
  if (v14 == v15)
  {
    v9 = &v16;
  }

  else
  {
    do
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", *v4];
      std::string::basic_string[abi:ne200100]<0>(__p, [v6 UTF8String]);

      if ((v13 & 0x80u) == 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      if ((v13 & 0x80u) == 0)
      {
        v8 = v13;
      }

      else
      {
        v8 = __p[1];
      }

      if (a2)
      {
        std::string::insert(&v16, 0, v7, v8);
      }

      else
      {
        std::string::append(&v16, v7, v8);
      }

      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      ++v4;
    }

    while (v4 != v5);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v16;
    }

    else
    {
      v9 = v16.__r_.__value_.__r.__words[0];
    }
  }

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_2613E70E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

id PRCommonConvertHexNSStringToNSData(NSString *a1)
{
  v1 = a1;
  if (([(NSString *)v1 length]& 1) != 0)
  {
    v2 = 0;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, -[NSString UTF8String](v1, "UTF8String"));
    v2 = objc_opt_new();
    v11 = 0;
    v3 = v13;
    if (v14 >= 0)
    {
      v3 = v14;
    }

    if (v3 >= 2)
    {
      v4 = 0;
      v5 = v14 >> 63;
      do
      {
        if (v5)
        {
          p_p = __p;
        }

        else
        {
          p_p = &__p;
        }

        *__str = *&p_p[v4];
        HIBYTE(v11) = strtol(__str, 0, 16);
        [v2 appendBytes:&v11 + 1 length:1];
        v7 = v4 + 3;
        v4 += 2;
        v8 = v14;
        v5 = v14 >> 63;
        if (v14 < 0)
        {
          v8 = v13;
        }
      }

      while (v8 > v7);
    }

    if (v14 < 0)
    {
      operator delete(__p);
    }
  }

  return v2;
}

void sub_2613E7310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

char *PRCommonSerializePrintableState(void *a1, void *a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x277CCAC58] dataWithPropertyList:v4 format:200 options:0 error:0];
  if ([v6 length] > 0x8000)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: statedump too big (%d > %d)", objc_msgSend(v6, "length"), 0x8000];
    v8 = MEMORY[0x277CCAC58];
    v16 = v3;
    v17[0] = v7;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v10 = [v8 dataWithPropertyList:v9 format:200 options:0 error:0];

    v6 = v10;
  }

  v11 = malloc_type_calloc(1uLL, [v6 length] + 200, 0x1000040BEF03554uLL);
  *v11 = 1;
  *(v11 + 1) = [v6 length];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"[nearbyd] %@", v3];
  v13 = v12;
  strlcpy(v11 + 136, [v12 UTF8String], 0x40uLL);

  v14 = v6;
  memcpy(v11 + 200, [v6 bytes], objc_msgSend(v6, "length"));

  objc_autoreleasePoolPop(v5);
  return v11;
}

{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v8 = v3;
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = PRCommonSerializePrintableState(v3, v5);

  return v6;
}

uint64_t *std::vector<unsigned char>::vector[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_2613E76C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279AD6030, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_2613E87B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2613E8984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_2613E9370(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2613E9F88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2613EA130(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2613EA888(_Unwind_Exception *a1)
{
  v6 = v2;

  _Unwind_Resume(a1);
}

void sub_2613EB258(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2613EC55C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_2613EC828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = PRBTLocalizer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<BTFinding::PRRSSIFilter>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 88);
    if (v3)
    {
      *(v2 + 96) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 64);
    if (v4)
    {
      *(v2 + 72) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 40);
    if (v5)
    {
      *(v2 + 48) = v5;
      operator delete(v5);
    }

    JUMPOUT(0x2667015A0);
  }

  return result;
}

void RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::PRRoseSyntheticApertureBatchFilter(RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter *this)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 12) = 0;
  *(this + 1) = 0u;
  *(this + 14) = 0;
  *(this + 60) = 0;
  *(this + 4) = 0u;
  *(this + 26) = 0;
  *(this + 108) = 0;
  *(this + 7) = 0u;
  *(this + 9) = 0u;
  v2 = this + 168;
  *(this + 2) = 0u;
  *(this + 45) = 0;
  *(this + 5) = 0u;
  *(this + 93) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0x100000003;
  *(this + 20) = 0;
  *(this + 21) = &unk_2873C40E8;
  *(this + 11) = xmmword_261415AA0;
  *(this + 25) = this + 208;
  cnmatrix::FastResize<double>(this + 42, 3, 1);
  cnmatrix::CNMatrixBase<double>::WriteValue(v2, 0.0);
  *(this + 33) = 0x100000004;
  *(this + 30) = &unk_2873C4170;
  *(this + 248) = xmmword_261415AC0;
  *(this + 34) = this + 280;
  cnmatrix::FastResize<double>(this + 60, 4, 1);
  cnmatrix::CNMatrixBase<double>::WriteValue(this + 240, 0.0);
  *(this + 42) = 0x300000003;
  *(this + 39) = &unk_2873C4240;
  *(this + 20) = xmmword_261415D50;
  *(this + 43) = this + 352;
  *(this + 53) = 0;
  *(this + 440) = 0;
  *(this + 60) = 0x100000003;
  *(this + 57) = &unk_2873C40E8;
  *(this + 29) = xmmword_261415AA0;
  *(this + 61) = this + 496;
  *(this + 68) = 0x100000003;
  *(this + 65) = &unk_2873C40E8;
  *(this + 33) = xmmword_261415AA0;
  *(this + 69) = this + 560;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 77) = 0x3FF0000000000000;
  *(this + 78) = 0;
  *(this + 83) = 0;
  operator new();
}

void sub_2613ECFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void **a10, void **a11, void **a12, uint64_t a13, uint64_t a14, void *a15)
{
  *v21 = &unk_2873C4140;
  *v20 = &unk_2873C4140;
  a15 = v15 + 90;
  std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__destroy_vector::operator()[abi:ne200100](&a15);
  a15 = v15 + 87;
  std::vector<RoseSyntheticApertureFiltering::InternalAoAMeas>::__destroy_vector::operator()[abi:ne200100](&a15);
  std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__destroy_vector::operator()[abi:ne200100](&a15);
  boost::circular_buffer<double,std::allocator<double>>::destroy((v15 + 79));
  *v19 = &unk_2873C4140;
  *v18 = &unk_2873C4140;
  *a9 = &unk_2873C4140;
  *v17 = &unk_2873C4140;
  *v16 = &unk_2873C4140;
  std::vector<RoseSyntheticApertureFiltering::InternalFilterState>::__destroy_vector::operator()[abi:ne200100](&a15);
  v23 = *a10;
  if (*a10)
  {
    v15[15] = v23;
    operator delete(v23);
  }

  v24 = *a11;
  if (*a11)
  {
    v15[9] = v24;
    operator delete(v24);
  }

  v25 = *a12;
  if (*a12)
  {
    v15[3] = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

void std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::reserve(void **a1, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x24924924924924ALL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalRangeMeas>>(a1, a2);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }
}

void sub_2613ED1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<RoseSyntheticApertureFiltering::InternalRangeMeas>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

double *RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::getCurrentRotatedSolution@<X0>(RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter *this@<X0>, uint64_t a2@<X8>)
{
  cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v11, *(this + 81), *(this + 80));
  cnmatrix::Transpose<double>(this + 78, v11);
  v4 = *(this + 18);
  v8 = 0x100000003;
  v6 = &unk_2873C40E8;
  v7 = xmmword_261415AA0;
  v9 = &v10;
  cnmatrix::Subtract<double>(v4, this + 168, &v6);
  *(a2 + 24) = 0x100000003;
  *a2 = &unk_2873C40E8;
  *(a2 + 8) = xmmword_261415AA0;
  *(a2 + 32) = a2 + 40;
  return cnmatrix::Multiply<double>(v11, &v6, a2);
}

double *RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::getCurrentRotatedCovariance@<X0>(RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter *this@<X0>, uint64_t a2@<X8>)
{
  cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v6, *(this + 81), *(this + 80));
  cnmatrix::Transpose<double>(this + 78, v6);
  cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v5, *(this + 18) + 128);
  *(a2 + 24) = 0x300000003;
  *a2 = &unk_2873C4240;
  *(a2 + 8) = xmmword_261415D50;
  *(a2 + 32) = a2 + 40;
  return cnmatrix::Multiply<double>(v6, v5, a2);
}

double RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::getBatchOrAoASolution@<D0>(RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter *this@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(this + 934) & 1) != 0 || (*(this + 933))
  {
    goto LABEL_3;
  }

  if (*(this + 928) == 1)
  {
    v6 = *(this + 56);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(this + 76);
      v10 = 134217984;
      v11 = v7;
      _os_log_impl(&dword_2613DF000, v6, OS_LOG_TYPE_DEFAULT, "Returning solution from AoA at %f s", &v10, 0xCu);
    }

    *a2 = *(this + 6);
    *(a2 + 5) = *(this + 53);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    std::vector<RoseSyntheticApertureFiltering::BatchSolutionParticle>::__init_with_size[abi:ne200100]<RoseSyntheticApertureFiltering::BatchSolutionParticle*,RoseSyntheticApertureFiltering::BatchSolutionParticle*>((a2 + 16), *(this + 8), *(this + 9), 0xCF3CF3CF3CF3CF3DLL * ((*(this + 9) - *(this + 8)) >> 3));
    v4 = 88;
  }

  else
  {
    if (*(this + 929) != 1)
    {
LABEL_3:
      *a2 = *this;
      *(a2 + 5) = *(this + 5);
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 0;
      std::vector<RoseSyntheticApertureFiltering::BatchSolutionParticle>::__init_with_size[abi:ne200100]<RoseSyntheticApertureFiltering::BatchSolutionParticle*,RoseSyntheticApertureFiltering::BatchSolutionParticle*>((a2 + 16), *(this + 2), *(this + 3), 0xCF3CF3CF3CF3CF3DLL * ((*(this + 3) - *(this + 2)) >> 3));
      v4 = 40;
      goto LABEL_4;
    }

    v8 = *(this + 56);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(this + 107);
      v10 = 134217984;
      v11 = v9;
      _os_log_impl(&dword_2613DF000, v8, OS_LOG_TYPE_DEFAULT, "Returning solution from straight path estimator at %f s", &v10, 0xCu);
    }

    *a2 = *(this + 12);
    *(a2 + 5) = *(this + 101);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    std::vector<RoseSyntheticApertureFiltering::BatchSolutionParticle>::__init_with_size[abi:ne200100]<RoseSyntheticApertureFiltering::BatchSolutionParticle*,RoseSyntheticApertureFiltering::BatchSolutionParticle*>((a2 + 16), *(this + 14), *(this + 15), 0xCF3CF3CF3CF3CF3DLL * ((*(this + 15) - *(this + 14)) >> 3));
    v4 = 136;
  }

LABEL_4:
  result = *(this + v4);
  *(a2 + 40) = result;
  return result;
}

void RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::updateCurrentBatchSolution(RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter *this@<X0>, double a2@<D0>, double a3@<D1>, uint64_t a4@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  *(this + 29) = a3;
  if (a2 - *(this + 74) <= 10.0 || *(this + 85) == *(this + 84))
  {
    if (*(this + 933) == 1)
    {
      *(this + 12) = 0;
      v7 = *(this + 2);
      RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::checkVerticalAmbiguityResolution(this);
      if (v7 != *(this + 2))
      {
        v8 = *(this + 56);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v11) = 0;
          _os_log_impl(&dword_2613DF000, v8, OS_LOG_TYPE_DEFAULT, "Vertical state changed with the pose update", &v11, 2u);
        }

        *(this + 12) = 1;
      }
    }
  }

  else
  {
    RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::reinitFilter(this);
    *this = 0;
    *(this + 4) = 0;
    *(this + 2) = 0;
    *(this + 12) = 0;
    std::vector<RoseSyntheticApertureFiltering::BatchSolutionParticle>::__assign_with_size[abi:ne200100]<RoseSyntheticApertureFiltering::BatchSolutionParticle*,RoseSyntheticApertureFiltering::BatchSolutionParticle*>(this + 2, 0, 0, 0);
    *(this + 5) = 0;
  }

  if (*(this + 928) == 1)
  {
    v9 = *(this + 76);
    if (a2 - v9 > 10.0)
    {
      *(this + 928) = 0;
      v10 = *(this + 56);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 134218240;
        v12 = v9;
        v13 = 2048;
        v14 = a2;
        _os_log_impl(&dword_2613DF000, v10, OS_LOG_TYPE_DEFAULT, "AoA Solution from AoA at %f s is no longer valid - current time is %f s", &v11, 0x16u);
      }
    }
  }

  RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::getBatchOrAoASolution(this, a4);
}

void RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::reinitFilter(RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter *this)
{
  v2 = *(this + 85);
  v3 = *(this + 84);
  if (v2 != v3)
  {
    v4 = v2 - 72;
    do
    {
      *(v2 - 72) = &unk_2873C4140;
      v4 -= 112;
      v2 -= 112;
    }

    while (v2 != v3);
  }

  *(this + 85) = v3;
  v5 = *(this + 88);
  v6 = *(this + 87);
  if (v5 != v6)
  {
    v7 = v5 - 176;
    do
    {
      *(v5 - 112) = &unk_2873C4140;
      *(v5 - 176) = &unk_2873C4140;
      v7 -= 208;
      v5 -= 208;
    }

    while (v5 != v6);
  }

  *(this + 88) = v6;
  RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::resetFilter(this);
  v8 = *(this + 2);
  *(this + 5) = 0;
  *this = 0;
  if (v8)
  {
    *(this + 3) = v8;
    operator delete(v8);
  }

  v9 = 0uLL;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  v10 = *(this + 8);
  *(this + 6) = 0;
  *(this + 53) = 0;
  if (v10)
  {
    *(this + 9) = v10;
    operator delete(v10);
    v9 = 0uLL;
  }

  *(this + 4) = v9;
  *(this + 5) = v9;
  v11 = *(this + 14);
  *(this + 12) = 0;
  *(this + 101) = 0;
  if (v11)
  {
    *(this + 15) = v11;
    operator delete(v11);
  }

  *(this + 7) = 0u;
  *(this + 8) = 0u;
  v12 = *(this + 18);
  *(this + 29) = 0;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 77) = 0x3FF0000000000000;
  std::vector<RoseSyntheticApertureFiltering::InternalFilterState>::__base_destruct_at_end[abi:ne200100](this + 144, v12);
  v13 = *(this + 83);
  v15 = *(this + 80);
  v14 = *(this + 81);
  if (v13 >= (v15 - v14) >> 3)
  {
    v13 -= (v15 - *(this + 79)) >> 3;
  }

  *(this + 81) = v14 + 8 * v13;
  *(this + 83) = 0;
  *(this + 464) = 0;
  *(this + 107) = 0;
  *(this + 440) = 0;
  v16 = *(this + 56);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_2613DF000, v16, OS_LOG_TYPE_DEFAULT, "Batch filter is reinitialized", v17, 2u);
  }
}

void RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::checkVerticalAmbiguityResolution(RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter *this)
{
  *(this + 234) = 0;
  *(this + 940) = 0;
  if (*(this + 933) == 1)
  {
    v2 = *(this + 18);
    v44 = 0x100000003;
    v42 = &unk_2873C40E8;
    v43 = xmmword_261415AA0;
    v45 = v46;
    cnmatrix::Subtract<double>(v2, this + 168, &v42);
    v3 = cnmatrix::CNMatrixBase<double>::operator()(&v42, 0);
    v4 = cnmatrix::CNMatrixBase<double>::operator()(&v42, 0);
    v5 = cnmatrix::CNMatrixBase<double>::operator()(&v42, 2);
    if (sqrt(v5 * cnmatrix::CNMatrixBase<double>::operator()(&v42, 2) + v3 * v4) <= 2.0)
    {
      v6 = *(this + 18);
      v7 = *(this + 19);
      if (v6 == v7)
      {
LABEL_15:
        *(this + 234) = 1;
      }

      else
      {
        while (1)
        {
          v8 = cnmatrix::CNMatrixBase<double>::operator()(v6 + 128, 1, 1);
          v9 = cnmatrix::CNMatrixBase<double>::operator()(v6, 1);
          v10 = sqrt(v8);
          v11 = v9 - *(this + 29);
          v12 = v10 + v11;
          v13 = v11 - v10;
          if (v13 <= -2.5 && v12 >= -2.5)
          {
            break;
          }

          if (v13 <= 2.5 && v12 >= 2.5)
          {
            break;
          }

          v6 += 432;
          if (v6 == v7)
          {
            goto LABEL_15;
          }
        }
      }
    }

    v16 = 0x6DB6DB6DB6DB6DB7 * ((*(this + 85) - *(this + 84)) >> 4);
    __src[0] = 0;
    __src[1] = 0;
    v41 = 0;
    std::vector<double>::reserve(__src, v16);
    v17 = *(this + 84);
    v18 = *(this + 85);
    if (v17 != v18)
    {
      v19 = *(this + 18);
      do
      {
        v37 = 0x100000003;
        v35 = &unk_2873C40E8;
        v36 = xmmword_261415AA0;
        v38 = &v39;
        cnmatrix::Subtract<double>(v19, v17 + 40, &v35);
        v20 = cnmatrix::CNMatrixBase<double>::operator()(&v35, 0);
        v21 = cnmatrix::CNMatrixBase<double>::operator()(&v35, 2);
        if (sqrt(v21 * v21 + v20 * v20) <= 1.0)
        {
          v22 = cnmatrix::CNMatrixBase<double>::operator()(&v35, 1);
          v23 = __src[1];
          if (__src[1] >= v41)
          {
            v25 = __src[0];
            v26 = __src[1] - __src[0];
            v27 = (__src[1] - __src[0]) >> 3;
            v28 = v27 + 1;
            if ((v27 + 1) >> 61)
            {
              std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
            }

            v29 = v41 - __src[0];
            if ((v41 - __src[0]) >> 2 > v28)
            {
              v28 = v29 >> 2;
            }

            if (v29 >= 0x7FFFFFFFFFFFFFF8)
            {
              v30 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v30 = v28;
            }

            if (v30)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(__src, v30);
            }

            *(8 * v27) = v22;
            v24 = (8 * v27 + 8);
            memcpy(0, v25, v26);
            v31 = __src[0];
            __src[0] = 0;
            __src[1] = v24;
            v41 = 0;
            if (v31)
            {
              operator delete(v31);
            }
          }

          else
          {
            *__src[1] = v22;
            v24 = v23 + 8;
          }

          __src[1] = v24;
        }

        v17 += 112;
      }

      while (v17 != v18);
    }

    v32 = __src[0];
    if (__src[0] != __src[1])
    {
      v46[31] = 0;
      v33 = std::__minmax_element_impl[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>,std::__identity,std::__less<void,void>>(__src[0], __src[1]);
      if (*v34 - *v33 >= 0.5)
      {
        *(this + 234) = 2;
        *(this + 940) = 1;
      }

      v32 = __src[0];
    }

    if (v32)
    {
      __src[1] = v32;
      operator delete(v32);
    }
  }
}

void sub_2613EDCFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(char **a1@<X1>, uint64_t *a2@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v62 = v6;
  v63[0] = v6;
  v7 = &v5[-v6];
  if (v5 == v6 || (v8 = (v6 + 112), v65 = (v6 + 112), (v6 + 112) == v5))
  {
    v10 = v6;
    goto LABEL_26;
  }

  if (std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_0,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v65, &v62))
  {
    v62 = (v6 + 112);
    v9 = v6;
  }

  else
  {
    v63[0] = (v6 + 112);
    v9 = (v6 + 112);
    v8 = v6;
  }

  v10 = (v6 + 224);
  if ((v6 + 224) == v5)
  {
LABEL_20:
    v6 = v9;
    v10 = v8;
    goto LABEL_26;
  }

  v11 = v6 + 336;
  while (1)
  {
    v64 = (v11 - 112);
    v65 = v10 + 7;
    if (v10 + 7 == v5)
    {
      break;
    }

    if (std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_0,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v65, &v64))
    {
      if (std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_0,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v65, &v62))
      {
        v62 = v11;
        v8 = v11;
      }

      v12 = std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_0,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v64, v63);
      v13 = v10;
      if (v12)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_0,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v64, &v62))
      {
        v62 = (v11 - 112);
        v8 = (v11 - 112);
      }

      v14 = std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_0,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v65, v63);
      v13 = v11;
      if (v14)
      {
        goto LABEL_19;
      }
    }

    v63[0] = v13;
    v9 = v13;
LABEL_19:
    v10 += 14;
    v65 = v10;
    v11 += 224;
    if (v10 == v5)
    {
      goto LABEL_20;
    }
  }

  if (!std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_0,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v64, &v62))
  {
    if (!std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_0,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v64, v63))
    {
      v9 = (v11 - 112);
    }

    v10 = v8;
  }

  v6 = v9;
LABEL_26:
  v15 = cnmatrix::CNMatrixBase<double>::operator()(v10 + 40, 0);
  v16 = cnmatrix::CNMatrixBase<double>::operator()(v6 + 40, 0);
  v17 = *a1;
  v18 = a1[1];
  v62 = v17;
  v63[0] = v17;
  if (v17 == v18)
  {
    goto LABEL_48;
  }

  v19 = v17 + 112;
  v65 = (v17 + 112);
  if ((v17 + 112) == v18)
  {
    goto LABEL_48;
  }

  if (std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_1,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v65, &v62))
  {
    v62 = (v17 + 112);
  }

  else
  {
    v63[0] = (v17 + 112);
    v19 = v17;
  }

  if ((v17 + 224) == v18)
  {
LABEL_47:
    v17 = v19;
    goto LABEL_48;
  }

  v20 = v17 + 336;
  v17 += 224;
  while (2)
  {
    v64 = (v20 - 112);
    v65 = (v17 + 112);
    if ((v17 + 112) != v18)
    {
      if (std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_1,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v65, &v64))
      {
        if (std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_1,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v65, &v62))
        {
          v62 = v20;
          v19 = v20;
        }

        v21 = std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_1,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v64, v63);
        v22 = v17;
        if (v21)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_1,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v64, &v62))
        {
          v62 = (v20 - 112);
          v19 = v20 - 112;
        }

        v23 = std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_1,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v65, v63);
        v22 = v20;
        if (v23)
        {
LABEL_43:
          v17 += 224;
          v65 = v17;
          v20 += 224;
          if (v17 == v18)
          {
            goto LABEL_47;
          }

          continue;
        }
      }

      v63[0] = v22;
      goto LABEL_43;
    }

    break;
  }

  if (!std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_1,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v64, &v62))
  {
    std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_1,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v64, v63);
    goto LABEL_47;
  }

LABEL_48:
  v24 = cnmatrix::CNMatrixBase<double>::operator()(v17 + 40, 1);
  v26 = *a1;
  v25 = a1[1];
  v62 = v26;
  v63[0] = v26;
  if (v26 == v25 || (v27 = (v26 + 112), v65 = (v26 + 112), (v26 + 112) == v25))
  {
    v29 = v26;
    goto LABEL_73;
  }

  if (std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_2,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v65, &v62))
  {
    v62 = (v26 + 112);
    v28 = v26;
  }

  else
  {
    v63[0] = (v26 + 112);
    v28 = (v26 + 112);
    v27 = v26;
  }

  v29 = (v26 + 224);
  if ((v26 + 224) == v25)
  {
LABEL_67:
    v26 = v28;
    v29 = v27;
    goto LABEL_73;
  }

  v30 = v26 + 336;
  while (2)
  {
    v64 = (v30 - 112);
    v65 = v29 + 7;
    if (v29 + 7 != v25)
    {
      if (std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_2,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v65, &v64))
      {
        if (std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_2,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v65, &v62))
        {
          v62 = v30;
          v27 = v30;
        }

        v31 = std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_2,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v64, v63);
        v32 = v29;
        if (v31)
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_2,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v64, &v62))
        {
          v62 = (v30 - 112);
          v27 = (v30 - 112);
        }

        v33 = std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_2,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v65, v63);
        v32 = v30;
        if (v33)
        {
LABEL_66:
          v29 += 14;
          v65 = v29;
          v30 += 224;
          if (v29 == v25)
          {
            goto LABEL_67;
          }

          continue;
        }
      }

      v63[0] = v32;
      v28 = v32;
      goto LABEL_66;
    }

    break;
  }

  if (!std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_2,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v64, &v62))
  {
    if (!std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_2,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(&v64, v63))
    {
      v28 = (v30 - 112);
    }

    v29 = v27;
  }

  v26 = v28;
LABEL_73:
  v34 = cnmatrix::CNMatrixBase<double>::operator()(v29 + 40, 2);
  v35.n128_f64[0] = cnmatrix::CNMatrixBase<double>::operator()(v26 + 40, 2);
  v36 = 0x6DB6DB6DB6DB6DB7 * (v7 >> 4);
  v63[0] = 0;
  v63[1] = 0;
  v62 = v63;
  v37 = v36;
  if (v36)
  {
    v38 = 0;
    v39 = ceil((v16 - v15) * 4.0);
    v40 = fmaxf(v39, 1.0);
    v41 = ceil((v35.n128_f64[0] - v34) * 4.0);
    v42 = fmaxf(v41, 1.0);
    do
    {
      v43 = cnmatrix::CNMatrixBase<double>::operator()(&(*a1)[112 * v38 + 40], 0);
      v44 = cnmatrix::CNMatrixBase<double>::operator()(&(*a1)[112 * v38 + 40], 1);
      v35.n128_f64[0] = cnmatrix::CNMatrixBase<double>::operator()(&(*a1)[112 * v38 + 40], 2);
      v45 = ceil((v43 - v15) * 4.0) + -1.0;
      v46 = fmaxf(v45, 0.0);
      v47 = ceil((v44 - v24) * 4.0) + -1.0;
      v35.n128_f32[0] = ceil((v35.n128_f64[0] - v34) * 4.0) + -1.0;
      v48 = v46 + (fmaxf(v35.n128_f32[0], 0.0) + fmaxf(v47, 0.0) * v42) * v40;
      v49 = v63[0];
      if (!v63[0])
      {
        goto LABEL_83;
      }

      v50 = v63;
      do
      {
        v51 = *(v49 + 7);
        v52 = v51 >= v48;
        v53 = v51 < v48;
        if (v52)
        {
          v50 = v49;
        }

        v49 = v49[v53];
      }

      while (v49);
      if (v50 != v63 && v48 >= *(v50 + 7))
      {
        v35.n128_u64[0] = *&(*a1)[112 * v38 + 8];
        if (v35.n128_f64[0] < *&(*a1)[112 * *(v50 + 8) + 8])
        {
          *(v50 + 8) = v38;
        }
      }

      else
      {
LABEL_83:
        v66 = __PAIR64__(v38, v48);
        std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int>>(&v62, &v66, &v66);
      }

      ++v38;
    }

    while (v38 != v37);
    v54 = v62;
    if (v62 != v63)
    {
      v55 = a2[1];
      do
      {
        v56 = &(*a1)[112 * *(v54 + 32)];
        if (v55 >= a2[2])
        {
          v55 = std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__emplace_back_slow_path<RoseSyntheticApertureFiltering::InternalRangeMeas const&>(a2, &(*a1)[112 * *(v54 + 32)]);
        }

        else
        {
          v57 = *v56;
          v58 = *(v56 + 1);
          *(v55 + 32) = *(v56 + 4);
          *v55 = v57;
          *(v55 + 16) = v58;
          v35 = cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v55 + 40, (v56 + 40));
          *(v55 + 104) = *(v56 + 26);
          v55 += 112;
        }

        a2[1] = v55;
        v59 = *(v54 + 8);
        if (v59)
        {
          do
          {
            v60 = v59;
            v59 = *v59;
          }

          while (v59);
        }

        else
        {
          do
          {
            v60 = *(v54 + 16);
            v61 = *v60 == v54;
            v54 = v60;
          }

          while (!v61);
        }

        v54 = v60;
      }

      while (v60 != v63);
    }
  }

  std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(&v62, v63[0], v35);
}

void sub_2613EE3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::emplace_back<RoseSyntheticApertureFiltering::InternalRangeMeas const&>(uint64_t *a1, __int128 *a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    v7 = std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__emplace_back_slow_path<RoseSyntheticApertureFiltering::InternalRangeMeas const&>(a1, a2);
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    *(v4 + 32) = *(a2 + 4);
    *v4 = v5;
    *(v4 + 16) = v6;
    cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v4 + 40, a2 + 40);
    *(v4 + 104) = *(a2 + 26);
    v7 = v4 + 112;
    a1[1] = v4 + 112;
  }

  a1[1] = v7;
  return v7 - 112;
}

double RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::estimateTargetOnStraightPath(uint64_t a1, uint64_t *a2, void *a3)
{
  memset(v41, 0, sizeof(v41));
  v3 = *a2;
  if (a2[1] == *a2)
  {
    v7 = 0.0;
  }

  else
  {
    v6 = 0;
    v7 = 0.0;
    do
    {
      v38 = 0x100000003;
      v36 = &unk_2873C40E8;
      v37 = xmmword_261415AA0;
      v39 = &v40;
      v33 = 0x100000003;
      v31 = &unk_2873C40E8;
      v32 = xmmword_261415AA0;
      v34 = &v35;
      v8 = 112 * v6;
      v9 = *a3 + 112 * v6;
      v10 = *(v9 + 8);
      v11 = v3 + 112 * v6;
      v12 = *(v11 + 8);
      v13 = 3.14159265 - acos(((v12 + 0.1) * (v12 + 0.1) + (v10 - v12) * (v10 - v12) - (v10 + -0.1) * (v10 + -0.1)) / ((v12 + 0.1) * (v10 - v12 + v10 - v12)));
      if (v13 <= 1.0)
      {
        v14 = 1.0;
      }

      else
      {
        v14 = 1.0 / v13;
      }

      if (v10 <= v12)
      {
        v15 = v9;
      }

      else
      {
        v15 = v11;
      }

      cnmatrix::CNMatrixBase<double>::operator=(&v36, v15 + 40);
      v16 = *a3 + v8;
      if (*(v16 + 8) <= *(*a2 + v8 + 8))
      {
        v16 = *a2 + v8;
      }

      cnmatrix::CNMatrixBase<double>::operator=(&v31, v16 + 40);
      v17 = *a2 + v8;
      v18 = *a3 + v8;
      if (*(v17 + 8) >= *(v18 + 8))
      {
        v19 = *(v17 + 8);
      }

      else
      {
        v19 = *(v18 + 8);
      }

      v28 = 0x100000003;
      v26 = &unk_2873C40E8;
      v27 = xmmword_261415AA0;
      v29 = &v30;
      cnmatrix::Subtract<double>(&v36, &v31, &v26);
      v54 = 0x100000003;
      v52 = &unk_2873C40E8;
      v53 = xmmword_261415AA0;
      v55 = &v56;
      v49 = 0x100000134;
      v48 = xmmword_261415AD0;
      v47 = &unk_2873C41B8;
      v50 = v51;
      v44 = 0x100000003;
      v43 = xmmword_261415AA0;
      v42 = &unk_2873C40E8;
      v45 = &v46;
      cnmatrix::Norm<double>(&v26, &v52, &v47, &v42, "2");
      v21 = v20;
      v49 = 0x100000003;
      v48 = xmmword_261415AA0;
      v47 = &unk_2873C40E8;
      v50 = v51;
      cnmatrix::Subtract<double>(&v36, &v31, &v47);
      v22 = 0;
      v7 = v7 + v14;
      do
      {
        v23 = *cnmatrix::CNMatrixBase<double>::operator()(&v31, v22);
        *&v41[v22] = *&v41[v22] + v14 * (v23 + v19 * *cnmatrix::CNMatrixBase<double>::operator()(&v47, v22) / v21);
        ++v22;
      }

      while (v22 != 3);
      ++v6;
      v3 = *a2;
    }

    while (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4) > v6);
  }

  for (i = 0; i != 3; ++i)
  {
    *&v41[i] = *&v41[i] / v7;
  }

  return *v41;
}

void RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::computeStraightPathSolution(void *this)
{
  v105[308] = *MEMORY[0x277D85DE8];
  v1 = this[85];
  v2 = this[84];
  v3 = 0x6DB6DB6DB6DB6DB7 * ((v1 - v2) >> 4);
  if (v3 >= 4)
  {
    v4 = this;
    v5 = this[91];
    v6 = this[90];
    if (v5 != v6)
    {
      v7 = v5 - 72;
      do
      {
        *(v5 - 72) = &unk_2873C4140;
        v7 -= 112;
        v5 -= 112;
      }

      while (v5 != v6);
    }

    this[91] = v6;
    memset(v91, 0, sizeof(v91));
    std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__init_with_size[abi:ne200100]<RoseSyntheticApertureFiltering::InternalRangeMeas*,RoseSyntheticApertureFiltering::InternalRangeMeas*>(v91, v2, v1, v3);
    RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(v91, buf);
    v8 = v4 + 90;
    std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__vdeallocate(v4 + 90);
    *(v4 + 45) = *buf;
    v4[92] = *&buf[16];
    memset(buf, 0, sizeof(buf));
    v97 = buf;
    std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__destroy_vector::operator()[abi:ne200100](&v97);
    v97 = v91;
    std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__destroy_vector::operator()[abi:ne200100](&v97);
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v9 = v4[91];
    if (v9 == v4[90])
    {
      v27 = v4[91];
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = &unk_2873C40E8;
      v13 = v87;
      v14 = v101;
      v9 = v4[90];
      do
      {
        v15 = v4[85] - 72;
        v85 = 0x100000003;
        v83 = v12;
        v84 = xmmword_261415AA0;
        v86 = v13;
        cnmatrix::Subtract<double>(v9 + v10 + 40, v15, &v83);
        v99 = 0x100000003;
        v98 = xmmword_261415AA0;
        v97 = &unk_2873C40E8;
        v100 = v14;
        v103 = 0x100000134;
        *&buf[8] = xmmword_261415AD0;
        *buf = &unk_2873C41B8;
        v104 = v105;
        v94 = 0x100000003;
        v93 = xmmword_261415AA0;
        v92 = &unk_2873C40E8;
        v95 = v96;
        cnmatrix::Norm<double>(&v83, &v97, buf, &v92, "2");
        if (v16 < 2.0)
        {
          v17 = v14;
          v18 = v13;
          v19 = v12;
          v20 = v4;
          v21 = *v8;
          v22 = *v8 + v10;
          v23 = v89;
          if (v89 >= v90)
          {
            v26 = std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__emplace_back_slow_path<RoseSyntheticApertureFiltering::InternalRangeMeas&>(&v88, v22);
          }

          else
          {
            v24 = *v22;
            v25 = *(v22 + 16);
            *(v89 + 32) = *(v22 + 32);
            *v23 = v24;
            *(v23 + 16) = v25;
            cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v23 + 40, v22 + 40);
            *(v23 + 104) = *(v21 + v10 + 104);
            v26 = v23 + 112;
          }

          v4 = v20;
          v89 = v26;
          v12 = v19;
          v13 = v18;
          v14 = v17;
        }

        ++v11;
        v27 = v4[91];
        v9 = v4[90];
        v10 += 112;
      }

      while (0x6DB6DB6DB6DB6DB7 * ((v27 - v9) >> 4) > v11);
    }

    if (v8 != &v88)
    {
      std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__assign_with_size[abi:ne200100]<RoseSyntheticApertureFiltering::InternalRangeMeas*,RoseSyntheticApertureFiltering::InternalRangeMeas*>(v8, v88, v89, 0x6DB6DB6DB6DB6DB7 * ((v89 - v88) >> 4));
      v27 = v4[91];
      v9 = v4[90];
    }

    v28 = 0x6DB6DB6DB6DB6DB7 * ((v27 - v9) >> 4);
    v29 = v28 - 2;
    if (v28 >= 2)
    {
      if (v28 >= 4)
      {
        v29 = 2;
      }

      v30 = ((v28 - 1) * v28) >> 1;
      if (v29 == 1)
      {
        v30 = v28;
      }

      if (v29)
      {
        v31 = v30;
      }

      else
      {
        v31 = 1;
      }

      if (v28 >= 5)
      {
        v69 = v31;
        v68 = v4;
        v32 = 0;
        v80 = 0;
        v81 = 0;
        v82 = 0;
        v77 = 0;
        v78 = 0;
        v70 = (v28 - 1);
        v71 = v28 & 0x7FFFFFFF;
        v74 = v71 - 1;
        v73 = 112;
        v79 = 0;
        do
        {
          v72 = v32 + 1;
          if (v32 + 1 < v71)
          {
            v33 = v73;
            v34 = v74;
            do
            {
              v35 = *v8 + v33;
              v36 = *(v35 + 8);
              v37 = *v8 + 112 * v32;
              v38 = *(v37 + 8);
              if (vabdd_f64(3.14159265, acos(((v38 + 0.1) * (v38 + 0.1) + (v36 - v38) * (v36 - v38) - (v36 + -0.1) * (v36 + -0.1)) / ((v38 + 0.1) * (v36 - v38 + v36 - v38)))) < 1.22173048)
              {
                v85 = 0x100000003;
                v83 = &unk_2873C40E8;
                v84 = xmmword_261415AA0;
                v86 = v87;
                cnmatrix::Subtract<double>(v37 + 40, v35 + 40, &v83);
                v99 = 0x100000003;
                v98 = xmmword_261415AA0;
                v97 = &unk_2873C40E8;
                v100 = v101;
                v103 = 0x100000134;
                *&buf[8] = xmmword_261415AD0;
                *buf = &unk_2873C41B8;
                v104 = v105;
                v94 = 0x100000003;
                v93 = xmmword_261415AA0;
                v92 = &unk_2873C40E8;
                v95 = v96;
                cnmatrix::Norm<double>(&v83, &v97, buf, &v92, "2");
                if (vabdd_f64(v39, fmax(v38, v36) - fmin(v38, v36)) < 0.1414)
                {
                  v40 = *v8 + 112 * v32;
                  v41 = *v8 + v33;
                  v85 = 0x100000003;
                  v83 = &unk_2873C40E8;
                  v84 = xmmword_261415AA0;
                  v86 = v87;
                  cnmatrix::Subtract<double>(v40 + 40, v41 + 40, &v83);
                  v99 = 0x100000003;
                  v98 = xmmword_261415AA0;
                  v97 = &unk_2873C40E8;
                  v100 = v101;
                  v103 = 0x100000134;
                  *&buf[8] = xmmword_261415AD0;
                  *buf = &unk_2873C41B8;
                  v104 = v105;
                  v94 = 0x100000003;
                  v93 = xmmword_261415AA0;
                  v92 = &unk_2873C40E8;
                  v95 = v96;
                  cnmatrix::Norm<double>(&v83, &v97, buf, &v92, "2");
                  if (v42 > 0.25)
                  {
                    v43 = *v8 + 112 * v32;
                    v44 = v81;
                    if (v81 >= v82)
                    {
                      v47 = std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__emplace_back_slow_path<RoseSyntheticApertureFiltering::InternalRangeMeas&>(&v80, (*v8 + 112 * v32));
                    }

                    else
                    {
                      v45 = *v43;
                      v46 = *(v43 + 16);
                      *(v81 + 32) = *(v43 + 32);
                      *v44 = v45;
                      *(v44 + 16) = v46;
                      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v44 + 40, v43 + 40);
                      *(v44 + 104) = *(v43 + 104);
                      v47 = v44 + 112;
                    }

                    v81 = v47;
                    v48 = *v8;
                    v49 = *v8 + v33;
                    v50 = v78;
                    if (v78 >= v79)
                    {
                      v53 = std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__emplace_back_slow_path<RoseSyntheticApertureFiltering::InternalRangeMeas&>(&v77, v49);
                    }

                    else
                    {
                      v51 = *v49;
                      v52 = *(v49 + 16);
                      *(v78 + 32) = *(v49 + 32);
                      *v50 = v51;
                      *(v50 + 16) = v52;
                      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v50 + 40, v49 + 40);
                      *(v50 + 104) = *(v48 + v33 + 104);
                      v53 = v50 + 112;
                    }

                    v78 = v53;
                  }
                }
              }

              v33 += 112;
              --v34;
            }

            while (v34);
          }

          v73 += 112;
          --v74;
          ++v32;
        }

        while (v72 != v70);
        v54 = 0x6DB6DB6DB6DB6DB7 * ((v81 - v80) >> 4);
        if (v54 > 5 && ((v54 / v69) * 100.0) >= 70.0)
        {
          *(v68 + 929) = 1;
          v68[107] = v68[74];
          cnmatrix::CNMatrixBase<double>::operator=((v68 + 108), (v68 + 21));
          v55 = v68[56];
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v56 = v68[74];
            *buf = 134217984;
            *&buf[4] = v56;
            _os_log_impl(&dword_2613DF000, v55, OS_LOG_TYPE_DEFAULT, "Straight path solution generated at %f s", buf, 0xCu);
          }

          *(v68 + 24) = 5;
          *(v68 + 100) = 1;
          *(v68 + 26) = 2;
          *(v68 + 108) = 0;
          v68[17] = 0;
          memset(v76, 0, sizeof(v76));
          std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__init_with_size[abi:ne200100]<RoseSyntheticApertureFiltering::InternalRangeMeas*,RoseSyntheticApertureFiltering::InternalRangeMeas*>(v76, v80, v81, 0x6DB6DB6DB6DB6DB7 * ((v81 - v80) >> 4));
          memset(v75, 0, sizeof(v75));
          v57 = std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__init_with_size[abi:ne200100]<RoseSyntheticApertureFiltering::InternalRangeMeas*,RoseSyntheticApertureFiltering::InternalRangeMeas*>(v75, v77, v78, 0x6DB6DB6DB6DB6DB7 * ((v78 - v77) >> 4));
          v58 = RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::estimateTargetOnStraightPath(v57, v76, v75);
          v60 = v59;
          v62 = v61;
          *buf = v75;
          std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__destroy_vector::operator()[abi:ne200100](buf);
          *buf = v76;
          std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__destroy_vector::operator()[abi:ne200100](buf);
          v63 = v68[14];
          v68[15] = v63;
          v64 = v68[16];
          if (v63 >= v64)
          {
            v65 = 0xCF3CF3CF3CF3CF3DLL * ((v64 - v63) >> 3);
            v66 = 2 * v65;
            if (2 * v65 <= 1)
            {
              v66 = 1;
            }

            if (v65 >= 0xC30C30C30C30C3)
            {
              v67 = 0x186186186186186;
            }

            else
            {
              v67 = v66;
            }

            std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::BatchSolutionParticle>>((v68 + 14), v67);
          }

          *v63 = v58;
          *(v63 + 8) = v60;
          *(v63 + 16) = v62;
          *(v63 + 32) = 0;
          *(v63 + 40) = 0;
          *(v63 + 24) = 0x3F847AE147AE147CLL;
          *(v63 + 48) = xmmword_261415D80;
          *(v63 + 64) = xmmword_261415D90;
          *(v63 + 80) = 0x3FF0000000000000;
          *(v63 + 88) = 0u;
          *(v63 + 104) = 0u;
          *(v63 + 120) = 0u;
          *(v63 + 136) = 0u;
          *(v63 + 160) = 2;
          *(v63 + 152) = 0;
          v68[15] = v63 + 168;
        }

        *buf = &v77;
        std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__destroy_vector::operator()[abi:ne200100](buf);
        *buf = &v80;
        std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__destroy_vector::operator()[abi:ne200100](buf);
      }
    }

    *buf = &v88;
    std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__destroy_vector::operator()[abi:ne200100](buf);
  }
}

void sub_2613EF3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, char *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  a37 = &a31;
  std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__destroy_vector::operator()[abi:ne200100](&a37);
  a37 = &a34;
  std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__destroy_vector::operator()[abi:ne200100](&a37);
  a37 = &a45;
  std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__destroy_vector::operator()[abi:ne200100](&a37);
  _Unwind_Resume(a1);
}

uint64_t RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::setCurrentRangeFilterEstimate(uint64_t this, double a2, char a3)
{
  *(this + 432) = a2;
  *(this + 440) = a3;
  return this;
}

void RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::addMeasurement(RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v214 = *MEMORY[0x277D85DE8];
  if (*(this + 934) == 1)
  {
    *(this + 934) = 0;
    if (*(this + 84) != *(this + 85))
    {
      RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::reinitFilter(this);
    }
  }

  *(this + 29) = *(a2 + 104);
  v196 = 0x100000003;
  v195 = xmmword_261415AA0;
  v194 = &unk_2873C40E8;
  v197 = &v198;
  cnmatrix::FastResize<double>(&v194, 3, 1);
  cnmatrix::CNMatrixBase<double>::WriteValue(&v194, 0.0);
  v191 = 0x100000004;
  v190 = xmmword_261415AC0;
  v189 = &unk_2873C4170;
  v192 = &v193;
  cnmatrix::FastResize<double>(&v189, 4, 1);
  cnmatrix::CNMatrixBase<double>::WriteValue(&v189, 0.0);
  for (i = 0; i != 3; ++i)
  {
    v6 = a2 + 8 * i;
    v7 = *(v6 + 96);
    *cnmatrix::CNMatrixBase<double>::operator()(&v194, i) = v7;
    v8 = *(v6 + 120);
    *cnmatrix::CNMatrixBase<double>::operator()(&v189, i) = v8;
  }

  v9 = *(a2 + 144);
  *cnmatrix::CNMatrixBase<double>::operator()(&v189, 3) = v9;
  RoseSyntheticApertureFiltering::quatn2rot(&v189, v188);
  buf[3] = 0x100000003;
  *&buf[1] = xmmword_261415AA0;
  buf[0] = &unk_2873C40E8;
  *&v205 = &v205 + 8;
  cnmatrix::Multiply<double>(v188, this + 456, buf);
  v185 = 0x100000003;
  v184 = xmmword_261415AA0;
  v183 = &unk_2873C40E8;
  v186 = &v187;
  cnmatrix::Add<double>(&v194, buf, &v183);
  cnmatrix::CNMatrixBase<double>::operator=(this + 168, &v194);
  cnmatrix::CNMatrixBase<double>::operator=(this + 240, &v189);
  cnmatrix::CNMatrixBase<double>::operator=(this + 312, v188);
  v11 = *a2;
  *(this + 74) = *a2;
  if (*(this + 928) == 1)
  {
    v12 = *(this + 76);
    if (v11 - v12 > 10.0)
    {
      *(this + 928) = 0;
      v13 = *(this + 56);
      v10 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        LODWORD(buf[0]) = 134218240;
        *(buf + 4) = v12;
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = v11;
        _os_log_impl(&dword_2613DF000, v13, OS_LOG_TYPE_DEFAULT, "AoA Solution from AoA at %f s is no longer valid - current time is %f s", buf, 0x16u);
      }
    }
  }

  if (*(this + 929) == 1)
  {
    if ((v14 = *(this + 74) - *(this + 107), v14 >= 2.0) && (*(this + 54) < 2.0 || *(this + 440) != 1) || v14 >= 5.0 && (v156 = 0x100000003, v154 = &unk_2873C40E8, v155 = xmmword_261415AA0, v157 = v158, cnmatrix::Subtract<double>(&v183, this + 864, &v154), *(&v170[1] + 1) = 0x100000003, *(v170 + 8) = xmmword_261415AA0, *&v170[0] = &unk_2873C40E8, *&v171 = &v171 + 8, buf[3] = 0x100000134, *&buf[1] = xmmword_261415AD0, buf[0] = &unk_2873C41B8, *&v205 = &v205 + 8, v161 = 0x100000003, v160 = xmmword_261415AA0, v159 = &unk_2873C40E8, v162 = v163, cnmatrix::Norm<double>(&v154, v170, buf, &v159, "2"), v15 > 1.0))
    {
      *(this + 929) = 0;
      v16 = *(this + 56);
      v10 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        v17 = *(this + 107);
        v18 = *(this + 74);
        LODWORD(buf[0]) = 134218240;
        *(buf + 4) = v17;
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = v18;
        _os_log_impl(&dword_2613DF000, v16, OS_LOG_TYPE_DEFAULT, "Straight path solution at %f s is no longer valid - current time is %f s", buf, 0x16u);
      }
    }
  }

  v19 = *(a2 + 16);
  if (v19 <= 0.0 || *(a2 + 8) < -1.0)
  {
    v20 = *(this + 56);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::addMeasurement(a2, v20, v19);
    }

    goto LABEL_150;
  }

  v21 = *(this + 85);
  if (v21 != *(this + 84))
  {
    v156 = 0x100000003;
    v154 = &unk_2873C40E8;
    v155 = xmmword_261415AA0;
    v157 = v158;
    cnmatrix::Subtract<double>(&v183, v21 - 72, &v154);
    *(&v170[1] + 1) = 0x100000003;
    *(v170 + 8) = xmmword_261415AA0;
    *&v170[0] = &unk_2873C40E8;
    *&v171 = &v171 + 8;
    buf[3] = 0x100000134;
    *&buf[1] = xmmword_261415AD0;
    buf[0] = &unk_2873C41B8;
    *&v205 = &v205 + 8;
    v161 = 0x100000003;
    v160 = xmmword_261415AA0;
    v159 = &unk_2873C40E8;
    v162 = v163;
    cnmatrix::Norm<double>(&v154, v170, buf, &v159, "2");
    v23 = v22;
    v24 = *(a2 + 8);
    v25 = *(v21 - 104);
    v26 = v24 - v25;
    if (v24 - v25 <= 0.0)
    {
      if ((fabs(v26) - v22) / *(a2 + 16) <= 6.0)
      {
        if (*(this + 941) == 1)
        {
          *(this + 941) = 0;
          v62 = *(this + 56);
          v10 = os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);
          if (v10)
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(&dword_2613DF000, v62, OS_LOG_TYPE_DEFAULT, "Did not observe a second consecutive nLoS->LoS event after the first one - marked as a false event due to packet collision", buf, 2u);
          }
        }
      }

      else
      {
        v31 = *(this + 56);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf[0]) = 134218496;
          *(buf + 4) = v25;
          WORD2(buf[1]) = 2048;
          *(&buf[1] + 6) = v24;
          HIWORD(buf[2]) = 2048;
          *&buf[3] = v23;
          _os_log_error_impl(&dword_2613DF000, v31, OS_LOG_TYPE_ERROR, "nLoS->LoS event detected by the batch filter: Previous range %f m, Current range %f m, Distance travelled %f m", buf, 0x20u);
        }

        v32 = *(this + 941);
        v33 = *(this + 56);
        v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
        if ((v32 & 1) == 0)
        {
          if (v34)
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(&dword_2613DF000, v33, OS_LOG_TYPE_DEFAULT, "fRangeDropped is false, buffering this nLoS->LoS event for now", buf, 2u);
          }

          *(this + 941) = 1;
          v63 = RoseSyntheticApertureFiltering::range2deweight(v34, *(a2 + 8) / *(this + 77));
          v64 = *a2;
          v65 = *(a2 + 8);
          v66 = *(a2 + 16);
          v67 = *(a2 + 24);
          *buf = v64;
          *&buf[1] = v65;
          *&buf[2] = v65 / (v63 * v66);
          *&buf[3] = v66;
          *&v205 = v63;
          cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(&v205 + 8, &v183);
          DWORD2(v209) = v67;
          *(this + 97) = v205;
          v68 = *&buf[2];
          *(this + 744) = *buf;
          *(this + 760) = v68;
          cnmatrix::CNMatrixBase<double>::operator=(this + 784, &v205 + 8);
          *(this + 212) = DWORD2(v209);
          goto LABEL_137;
        }

        if (v34)
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_2613DF000, v33, OS_LOG_TYPE_DEFAULT, "fRangeDropped is true, detected two consecutive nLoS->LoS events", buf, 2u);
        }

        std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::emplace_back<RoseSyntheticApertureFiltering::InternalRangeMeas const&>(this + 84, (this + 744));
        *(this + 941) = 0;
        __src = 0;
        v150 = 0uLL;
        v35 = *(this + 84);
        if (v35 != *(this + 85))
        {
          do
          {
            v156 = 0x100000003;
            v154 = &unk_2873C40E8;
            v155 = xmmword_261415AA0;
            v157 = v158;
            cnmatrix::Subtract<double>(&v183, v35 + 40, &v154);
            *(&v170[1] + 1) = 0x100000003;
            *(v170 + 8) = xmmword_261415AA0;
            *&v170[0] = &unk_2873C40E8;
            *&v171 = &v171 + 8;
            buf[3] = 0x100000134;
            *&buf[1] = xmmword_261415AD0;
            buf[0] = &unk_2873C41B8;
            *&v205 = &v205 + 8;
            v161 = 0x100000003;
            v160 = xmmword_261415AA0;
            v159 = &unk_2873C40E8;
            v162 = v163;
            cnmatrix::Norm<double>(&v154, v170, buf, &v159, "2");
            if ((*(v35 + 8) - *(a2 + 8) - v36) / *(a2 + 16) <= 6.0)
            {
              v35 += 112;
              v41 = *(this + 85);
            }

            else
            {
              v37 = *(this + 87);
              v38 = *(this + 88) - v37;
              if (v38)
              {
                v39 = 0;
                v40 = 0x4EC4EC4EC4EC4EC5 * (v38 >> 4);
                while (*v37 != *v35)
                {
                  ++v39;
                  v37 += 26;
                  if (v40 <= v39)
                  {
                    goto LABEL_57;
                  }
                }

                v42 = v150;
                if (v150 >= *(&v150 + 1))
                {
                  v44 = __src;
                  v45 = v150 - __src;
                  v46 = (v150 - __src) >> 3;
                  v47 = v46 + 1;
                  if ((v46 + 1) >> 61)
                  {
                    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
                  }

                  v48 = *(&v150 + 1) - __src;
                  if ((*(&v150 + 1) - __src) >> 2 > v47)
                  {
                    v47 = v48 >> 2;
                  }

                  v49 = v48 >= 0x7FFFFFFFFFFFFFF8;
                  v50 = 0x1FFFFFFFFFFFFFFFLL;
                  if (!v49)
                  {
                    v50 = v47;
                  }

                  if (v50)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v50);
                  }

                  *(8 * v46) = v39;
                  v43 = 8 * v46 + 8;
                  memcpy(0, v44, v45);
                  v51 = __src;
                  __src = 0;
                  v150 = v43;
                  if (v51)
                  {
                    operator delete(v51);
                  }
                }

                else
                {
                  *v150 = v39;
                  v43 = v42 + 8;
                }

                *&v150 = v43;
              }

LABEL_57:
              if (*(this + 928) == 1)
              {
                v52 = *(this + 76);
                if (*v35 == v52)
                {
                  *(this + 928) = 0;
                  v53 = *(this + 56);
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(buf[0]) = 134217984;
                    *(buf + 4) = v52;
                    _os_log_impl(&dword_2613DF000, v53, OS_LOG_TYPE_DEFAULT, "AoA Solution from AoA at %f s is no longer valid due to multipath", buf, 0xCu);
                  }
                }
              }

              v54 = *(this + 56);
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                v60 = *v35;
                v61 = *(v35 + 8);
                LODWORD(buf[0]) = 134218240;
                *(buf + 4) = v60;
                WORD2(buf[1]) = 2048;
                *(&buf[1] + 6) = v61;
                _os_log_error_impl(&dword_2613DF000, v54, OS_LOG_TYPE_ERROR, "Removing measurement at time %f s with range %f m", buf, 0x16u);
              }

              v55 = *(this + 85);
              if (v35 + 112 == v55)
              {
                v41 = v35;
              }

              else
              {
                v56 = v35;
                do
                {
                  v57 = v56;
                  v58 = *(v56 + 128);
                  *v56 = *(v56 + 112);
                  *(v56 + 16) = v58;
                  *(v56 + 32) = *(v56 + 144);
                  cnmatrix::CNMatrixBase<double>::operator=(v56 + 40, v56 + 152);
                  *(v57 + 104) = *(v57 + 216);
                  v56 = v57 + 112;
                }

                while (v57 + 224 != v55);
                v41 = v57 + 112;
                v55 = *(this + 85);
              }

              if (v55 != v41)
              {
                v59 = v55 - 72;
                do
                {
                  *(v55 - 72) = &unk_2873C4140;
                  v59 -= 112;
                  v55 -= 112;
                }

                while (v55 != v41);
              }

              *(this + 85) = v41;
            }
          }

          while (v35 != v41);
          v69 = v150;
          if (v150 != __src)
          {
            v70 = *(this + 88);
            do
            {
              v71 = *(v69 - 1);
              v69 -= 8;
              std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<RoseSyntheticApertureFiltering::InternalAoAMeas *,RoseSyntheticApertureFiltering::InternalAoAMeas *,RoseSyntheticApertureFiltering::InternalAoAMeas *>(buf, (*(this + 87) + 208 * v71 + 208), v70, (*(this + 87) + 208 * v71));
              v70 = v72;
              v73 = *(this + 88);
              if (v73 != v72)
              {
                v74 = v73 - 11;
                do
                {
                  *(v73 - 14) = &unk_2873C4140;
                  *(v73 - 22) = &unk_2873C4140;
                  v74 -= 13;
                  v73 -= 13;
                }

                while (v73 != v72);
              }

              *(this + 88) = v72;
            }

            while (v69 != __src);
          }
        }

        RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::resetFilter(this);
        v76 = *(this + 84);
        v77 = *(this + 85);
        if (v76 == v77)
        {
          *(this + 77) = 0x3FF0000000000000;
        }

        else
        {
          v78 = v76 + 14;
          v79 = *(this + 84);
          if (v76 + 14 != v77)
          {
            v79 = *(this + 84);
            do
            {
              if (v78[1] < v79[1])
              {
                v79 = v78;
              }

              v78 += 14;
            }

            while (v78 != v77);
          }

          v80 = fmax(v79[1], 1.0);
          if (v80 != *(this + 77))
          {
            *(this + 77) = v80;
            do
            {
              v81 = RoseSyntheticApertureFiltering::range2deweight(v75, v76[1] / *(this + 77));
              v76[4] = v81;
              v76[2] = v76[1] / (v81 * v76[3]);
              v76 += 14;
            }

            while (v76 != v77);
          }
        }

        v10 = __src;
        if (__src)
        {
          *&v150 = __src;
          operator delete(__src);
        }
      }
    }

    else
    {
      if (*(this + 941) == 1)
      {
        *(this + 941) = 0;
        v27 = *(this + 56);
        v10 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
        if (v10)
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_2613DF000, v27, OS_LOG_TYPE_DEFAULT, "Did not observe a second consecutive nLoS->LoS event after the first one - marked as a false event due to packet collision", buf, 2u);
        }
      }

      if ((v26 - v23) / *(a2 + 16) > 6.0)
      {
        v28 = *(this + 56);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = *(v21 - 104);
          v30 = *(a2 + 8);
          LODWORD(buf[0]) = 134218496;
          *(buf + 4) = v29;
          WORD2(buf[1]) = 2048;
          *(&buf[1] + 6) = v30;
          HIWORD(buf[2]) = 2048;
          *&buf[3] = v23;
          _os_log_error_impl(&dword_2613DF000, v28, OS_LOG_TYPE_ERROR, "LoS->nLoS event detected by the batch filter: Previous range %f m, Current range %f m, Distance travelled %f m", buf, 0x20u);
        }

        goto LABEL_137;
      }
    }
  }

  v82 = *(this + 84);
  v83 = *(this + 85);
  v84 = *(a2 + 8);
  if (v82 == v83)
  {
    v89 = fmax(v84, 1.0);
    *(this + 77) = v89;
    v90 = *(this + 56);
    v10 = os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      LODWORD(buf[0]) = 134217984;
      *(buf + 4) = v89;
      _os_log_impl(&dword_2613DF000, v90, OS_LOG_TYPE_DEFAULT, "Minimum observed range initialized to %f m", buf, 0xCu);
    }
  }

  else
  {
    v85 = *(this + 77);
    if (v84 < v85 && v85 > 1.0)
    {
      v86 = fmax(v84, 1.0);
      *(this + 77) = v86;
      v87 = *(this + 56);
      v10 = os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        LODWORD(buf[0]) = 134217984;
        *(buf + 4) = v86;
        _os_log_impl(&dword_2613DF000, v87, OS_LOG_TYPE_DEFAULT, "Minimum observed range changed to %f m", buf, 0xCu);
        v82 = *(this + 84);
        v83 = *(this + 85);
      }

      while (v82 != v83)
      {
        v88 = RoseSyntheticApertureFiltering::range2deweight(v10, v82[1] / *(this + 77));
        v82[4] = v88;
        v82[2] = v82[1] / (v88 * v82[3]);
        v82 += 14;
      }
    }
  }

  v91 = RoseSyntheticApertureFiltering::range2deweight(v10, *(a2 + 8) / *(this + 77));
  v92 = *(a2 + 8);
  v93 = *(a2 + 16);
  v94 = *(a2 + 24);
  buf[0] = *a2;
  *&buf[1] = v92;
  *&buf[2] = v92 / (v91 * v93);
  *&buf[3] = v93;
  *&v205 = v91;
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(&v205 + 8, &v183);
  DWORD2(v209) = v94;
  v95 = *(this + 85);
  if (v95 >= *(this + 86))
  {
    v98 = std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__emplace_back_slow_path<RoseSyntheticApertureFiltering::InternalRangeMeas>(this + 84, buf);
  }

  else
  {
    v96 = *buf;
    v97 = *&buf[2];
    *(v95 + 32) = v205;
    *v95 = v96;
    *(v95 + 16) = v97;
    cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v95 + 40, &v205 + 8);
    *(v95 + 104) = DWORD2(v209);
    v98 = v95 + 112;
    *(this + 85) = v95 + 112;
  }

  *(this + 85) = v98;
  if (*(a2 + 88) == 1)
  {
    if (*(a2 + 80) == 1)
    {
      v99 = *(a2 + 72);
      if (v99 > 1.1)
      {
        v100 = *(this + 56);
        if (!os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_137;
        }

        LODWORD(buf[0]) = 134217984;
        *(buf + 4) = v99;
        v101 = "AoA measurement rejected due to high multipath probability (%4.2f)";
        v102 = v100;
        v103 = 12;
        goto LABEL_117;
      }
    }

    v104 = *(a2 + 56);
    v105 = *(a2 + 64);
    if ((v105 < 450.0 || v104 < 0.0) && (v105 < 200.0 || v104 < 40.0))
    {
      v146 = *(this + 56);
      if (!os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_137;
      }

      LODWORD(buf[0]) = 134218240;
      *(buf + 4) = v105;
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v104;
      v101 = "AoA measurement rejected due to low track score (%4.1f) or low sweep angle (%4.1f deg)";
      v102 = v146;
      v103 = 22;
LABEL_117:
      _os_log_impl(&dword_2613DF000, v102, OS_LOG_TYPE_DEFAULT, v101, buf, v103);
      goto LABEL_137;
    }

    v106 = *(this + 56);
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 134218240;
      *(buf + 4) = v105;
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v104;
      _os_log_impl(&dword_2613DF000, v106, OS_LOG_TYPE_DEFAULT, "AoA measurement accepted: track score (%4.1f) and sweep angle (%4.1f deg)", buf, 0x16u);
    }

    *(this + 464) = 1;
    *(this + 76) = *a2;
    buf[3] = 0x100000003;
    *&buf[1] = xmmword_261415AA0;
    buf[0] = &unk_2873C40E8;
    *&v205 = &v205 + 8;
    cnmatrix::Multiply<double>(v188, this + 520, buf);
    *(&v170[1] + 1) = 0x100000003;
    *(v170 + 8) = xmmword_261415AA0;
    *&v170[0] = &unk_2873C40E8;
    *&v171 = &v171 + 8;
    cnmatrix::Add<double>(&v194, buf, v170);
    if ((*(a2 + 88) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    RoseSyntheticApertureFiltering::rangeAzEl2pos(&v159, *(a2 + 8), *(a2 + 40) / 180.0 * 3.14159265, *(a2 + 32) / 180.0 * 3.14159265);
    buf[3] = 0x100000003;
    *&buf[1] = xmmword_261415AA0;
    buf[0] = &unk_2873C40E8;
    *&v205 = &v205 + 8;
    cnmatrix::Multiply<double>(v188, &v159, buf);
    v156 = 0x100000003;
    v154 = &unk_2873C40E8;
    v155 = xmmword_261415AA0;
    v157 = v158;
    cnmatrix::Add<double>(buf, v170, &v154);
    v107 = *(this + 56);
    if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
    {
      v108 = *(this + 76);
      v109 = cnmatrix::CNMatrixBase<double>::operator()(&v154, 0);
      v110 = cnmatrix::CNMatrixBase<double>::operator()(&v154, 1);
      v111 = cnmatrix::CNMatrixBase<double>::operator()(&v154, 2);
      LODWORD(buf[0]) = 134218752;
      *(buf + 4) = v108;
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v109;
      HIWORD(buf[2]) = 2048;
      *&buf[3] = v110;
      LOWORD(v205) = 2048;
      *(&v205 + 2) = v111;
      _os_log_impl(&dword_2613DF000, v107, OS_LOG_TYPE_DEFAULT, "Solution from AoA is generated at %f s - device pos is [%f, %f, %f] m", buf, 0x2Au);
    }

    v112 = 0;
    *(this + 12) = 5;
    *(this + 52) = 1;
    *(this + 14) = 2;
    *(this + 60) = 0;
    *(this + 11) = 0;
    v211 = 0u;
    v212 = 0u;
    v209 = 0u;
    v210 = 0u;
    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    memset(buf, 0, sizeof(buf));
    do
    {
      *&buf[v112] = cnmatrix::CNMatrixBase<double>::operator()(&v154, v112);
      ++v112;
    }

    while (v112 != 3);
    buf[3] = 0x3F847AE147AE147CLL;
    v205 = 0uLL;
    v206 = xmmword_261415D80;
    v207 = xmmword_261415D90;
    *&v208 = 0x3FF0000000000000;
    LODWORD(v213) = 0;
    v113 = *(this + 8);
    *(this + 9) = v113;
    v114 = *(this + 10);
    if (v113 >= v114)
    {
      v115 = 0xCF3CF3CF3CF3CF3DLL * ((v114 - v113) >> 3);
      v116 = 2 * v115;
      if (2 * v115 <= 1)
      {
        v116 = 1;
      }

      if (v115 >= 0xC30C30C30C30C3)
      {
        v117 = 0x186186186186186;
      }

      else
      {
        v117 = v116;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::BatchSolutionParticle>>(this + 64, v117);
    }

    *(v113 + 112) = v210;
    *(v113 + 128) = v211;
    *(v113 + 144) = v212;
    *(v113 + 160) = v213;
    *(v113 + 48) = v206;
    *(v113 + 64) = v207;
    *(v113 + 80) = v208;
    *(v113 + 96) = v209;
    *v113 = *buf;
    *(v113 + 16) = *&buf[2];
    *(v113 + 32) = v205;
    *(this + 9) = v113 + 168;
  }

LABEL_137:
  if (((*(this + 931) & 1) != 0 || *(this + 932) == 1) && (0x6DB6DB6DB6DB6DB7 * ((*(this + 85) - *(this + 84)) >> 4)) >= 4)
  {
    RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::checkMotionStateAndObservability(this);
  }

  v118 = *(this + 85) - *(this + 84);
  v119 = 0x6DB6DB6DB6DB6DB7 * (v118 >> 4);
  if (v119 >= 4 && (*(this + 931) & 1) == 0 && (*(this + 932) & 1) == 0 && *(this + 74) - *(this + 75) >= 0.5)
  {
    v145 = RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(this);
    *(this + 933) = v145;
    if (v145)
    {
      *(this + 75) = *(this + 74);
      RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::checkVerticalAmbiguityResolution(this);
      *(this + 929) = 0;
      goto LABEL_150;
    }

LABEL_149:
    RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::computeStraightPathSolution(this);
    goto LABEL_150;
  }

  if (v118 == 112)
  {
    v120 = *(this + 74);
    *(this + 73) = v120;
    *(this + 75) = v120 + -0.5;
    goto LABEL_150;
  }

  if (v119 >= 5 && (*(this + 933) & 1) == 0)
  {
    goto LABEL_149;
  }

LABEL_150:
  *v180 = 0;
  v180[4] = 0;
  *&v180[8] = 0;
  __p = 0u;
  v182 = 0u;
  v180[12] = 0;
  if (*(this + 934) == 1)
  {
    v121 = 6;
LABEL_152:
    *v180 = v121;
    goto LABEL_153;
  }

  if (*(this + 931) == 1)
  {
    if ((*(this + 932) & 1) == 0)
    {
      v121 = 1;
      goto LABEL_152;
    }
  }

  else
  {
    if (*(this + 932))
    {
      v122 = *(this + 56);
      if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
      {
        v123 = *(this + 78);
        LODWORD(buf[0]) = 134217984;
        *(buf + 4) = v123;
        _os_log_impl(&dword_2613DF000, v122, OS_LOG_TYPE_DEFAULT, "Linear user path length is %4.2f m", buf, 0xCu);
      }

      if (*(this + 78) >= 1.5)
      {
        v121 = 3;
      }

      else
      {
        v121 = 2;
      }

      goto LABEL_152;
    }

    if (*(this + 933) != 1)
    {
      v121 = 4;
      goto LABEL_152;
    }

    *v180 = 5;
    *&v180[8] = *(this + 234);
    v180[4] = *&v180[8] == 2;
    v124 = *(this + 18);
    for (j = *(this + 19); v124 != j; v124 += 432)
    {
      v125 = 0;
      v177 = 0u;
      v178 = 0u;
      v175 = 0u;
      v176 = 0u;
      v173 = 0u;
      v174 = 0u;
      v171 = 0u;
      v172 = 0u;
      memset(v170, 0, sizeof(v170));
      LODWORD(v179) = 1;
      do
      {
        *(v170 + v125) = *cnmatrix::CNMatrixBase<double>::operator()(v124, v125);
        ++v125;
      }

      while (v125 != 3);
      *(&v170[1] + 1) = *cnmatrix::CNMatrixBase<double>::operator()(v124 + 128, 0, 0);
      *&v171 = *cnmatrix::CNMatrixBase<double>::operator()(v124 + 128, 0, 1);
      *(&v171 + 1) = *cnmatrix::CNMatrixBase<double>::operator()(v124 + 128, 0, 2);
      *&v172 = *cnmatrix::CNMatrixBase<double>::operator()(v124 + 128, 1, 1);
      *(&v172 + 1) = *cnmatrix::CNMatrixBase<double>::operator()(v124 + 128, 1, 2);
      *&v173 = *cnmatrix::CNMatrixBase<double>::operator()(v124 + 128, 2, 2);
      v126 = *(v124 + 136);
      if (v126 != *(v124 + 140))
      {
        __assert_rtn("Trace", "cnmatrixbase.h", 4977, "A.NumRows() == A.NumCols()");
      }

      if (v126 < 1)
      {
        v128 = 0.0;
      }

      else
      {
        v127 = 0;
        v128 = 0.0;
        do
        {
          v128 = v128 + cnmatrix::CNMatrixBase<double>::operator()<int,int>(v124 + 128, v127, v127);
          ++v127;
        }

        while (v126 != v127);
      }

      v129 = *(v124 + 352);
      *(&v173 + 1) = sqrt(v128);
      *&v174 = v129;
      LODWORD(v179) = *(v124 + 360);
      v151 = 0x100000003;
      __src = &unk_2873C40E8;
      v150 = xmmword_261415AA0;
      v152 = v153;
      cnmatrix::Subtract<double>(v124 + 368, this + 168, &__src);
      v161 = 0x100000003;
      v160 = xmmword_261415AA0;
      v159 = &unk_2873C40E8;
      v162 = v163;
      buf[3] = 0x100000134;
      *&buf[1] = xmmword_261415AD0;
      buf[0] = &unk_2873C41B8;
      *&v205 = &v205 + 8;
      v156 = 0x100000003;
      v154 = &unk_2873C40E8;
      v155 = xmmword_261415AA0;
      v157 = v158;
      cnmatrix::Norm<double>(&__src, &v159, buf, &v154, "2");
      if (v130 != 0.0)
      {
        v168 = 0;
        v167 = 0;
        v169 = 0;
        memset(v166, 0, sizeof(v166));
        memset(v165, 0, sizeof(v165));
        std::vector<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::reserve(&v167, 0x6DB6DB6DB6DB6DB7 * ((*(this + 85) - *(this + 84)) >> 4));
        cnmatrix::CNMatrixBase<double>::operator=(v124 + 368, this + 168);
        buf[3] = 0x100000003;
        *&buf[1] = xmmword_261415AA0;
        buf[0] = &unk_2873C40E8;
        *&v205 = &v205 + 8;
        cnmatrix::Subtract<double>(v124, this + 168, buf);
        RoseSyntheticApertureFiltering::pos2rangeThPhi(buf, v164);
        cnmatrix::CNMatrixBase<double>::operator=(v124 + 64, v164);
        RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::measModelBatchAlt(v131, v164, this + 168, this + 84, v165, &v167, v166);
        v161 = 0x300000003;
        v160 = xmmword_261415D50;
        v159 = &unk_2873C4240;
        v162 = v163;
        cnmatrix::FastResize<double>(&v159, 3, 3);
        cnmatrix::CNMatrixBase<double>::WriteValue(&v159, 0.0);
        v132 = v167;
        for (k = v168; v132 != k; v132 += 136)
        {
          v156 = 0x300000003;
          v154 = &unk_2873C4240;
          v155 = xmmword_261415D50;
          v157 = v158;
          cnmatrix::Multiply<double>(v132 + 72, v132 + 8, &v154);
          buf[3] = 0x300000003;
          *&buf[1] = xmmword_261415D50;
          buf[0] = &unk_2873C4240;
          *&v205 = &v205 + 8;
          cnmatrix::Add<double>(&v159, &v154, buf);
          cnmatrix::CNMatrixBase<double>::operator=(&v159, buf);
        }

        cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(&v154, &v159);
        v151 = 0x300000003;
        __src = &unk_2873C4240;
        v150 = xmmword_261415D50;
        v152 = v153;
        v201 = 0x100000003;
        v200 = xmmword_261415AA0;
        v199 = &unk_2873C4360;
        v202 = &v203;
        buf[3] = 0x10000000CLL;
        *&buf[1] = xmmword_261415DA0;
        buf[0] = &unk_2873C43E8;
        *&v205 = &v205 + 8;
        cnmatrix::Inv<double>(&v154, &v199, buf, &__src);
        cnmatrix::CNMatrixBase<double>::operator=(v124 + 240, &__src);
        buf[0] = v165;
        std::vector<RoseSyntheticApertureFiltering::InternalAoAMeas>::__destroy_vector::operator()[abi:ne200100](buf);
        buf[0] = v166;
        std::vector<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::__destroy_vector::operator()[abi:ne200100](buf);
        buf[0] = &v167;
        std::vector<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::__destroy_vector::operator()[abi:ne200100](buf);
      }

      *(&v174 + 1) = *cnmatrix::CNMatrixBase<double>::operator()(v124 + 64, 0);
      *&v175 = *cnmatrix::CNMatrixBase<double>::operator()(v124 + 64, 1);
      *(&v175 + 1) = *cnmatrix::CNMatrixBase<double>::operator()(v124 + 64, 2);
      *&v176 = sqrt(*cnmatrix::CNMatrixBase<double>::operator()(v124 + 240, 0, 0));
      *(&v176 + 1) = sqrt(*cnmatrix::CNMatrixBase<double>::operator()(v124 + 240, 1, 1));
      v134 = 0;
      *&v177 = sqrt(*cnmatrix::CNMatrixBase<double>::operator()(v124 + 240, 2, 2));
      do
      {
        *(&v177 + v134 + 1) = *cnmatrix::CNMatrixBase<double>::operator()(v124 + 368, v134);
        ++v134;
      }

      while (v134 != 3);
      v135 = *(&__p + 1);
      if (*(&__p + 1) >= v182)
      {
        v137 = __p;
        v138 = *(&__p + 1) - __p;
        v139 = 0xCF3CF3CF3CF3CF3DLL * ((*(&__p + 1) - __p) >> 3);
        v140 = v139 + 1;
        if (v139 + 1 > 0x186186186186186)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        if (0x9E79E79E79E79E7ALL * ((v182 - __p) >> 3) > v140)
        {
          v140 = 0x9E79E79E79E79E7ALL * ((v182 - __p) >> 3);
        }

        if (0xCF3CF3CF3CF3CF3DLL * ((v182 - __p) >> 3) >= 0xC30C30C30C30C3)
        {
          v140 = 0x186186186186186;
        }

        if (v140)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::BatchSolutionParticle>>(&__p, v140);
        }

        v141 = 8 * ((*(&__p + 1) - __p) >> 3);
        *(v141 + 112) = v176;
        *(v141 + 128) = v177;
        *(v141 + 144) = v178;
        *(v141 + 160) = v179;
        *(v141 + 48) = v172;
        *(v141 + 64) = v173;
        *(v141 + 80) = v174;
        *(v141 + 96) = v175;
        *v141 = v170[0];
        *(v141 + 16) = v170[1];
        *(v141 + 32) = v171;
        v136 = 168 * v139 + 168;
        v142 = v141 - v138;
        memcpy((v141 - v138), v137, v138);
        v143 = __p;
        *&__p = v142;
        *(&__p + 1) = v136;
        *&v182 = 0;
        if (v143)
        {
          operator delete(v143);
        }
      }

      else
      {
        *(*(&__p + 1) + 112) = v176;
        *(v135 + 128) = v177;
        *(v135 + 144) = v178;
        *(v135 + 160) = v179;
        *(v135 + 48) = v172;
        *(v135 + 64) = v173;
        *(v135 + 80) = v174;
        *(v135 + 96) = v175;
        *v135 = v170[0];
        *(v135 + 16) = v170[1];
        *(v135 + 32) = v171;
        v136 = v135 + 168;
      }

      *(&__p + 1) = v136;
      v144 = *(this + 82);
      if (v144 == *(this + 79))
      {
        v144 = *(this + 80);
      }

      *(&v182 + 1) = *(v144 - 8);
    }
  }

LABEL_153:
  *this = *v180;
  *(this + 5) = *&v180[5];
  if (v180 != this)
  {
    std::vector<RoseSyntheticApertureFiltering::BatchSolutionParticle>::__assign_with_size[abi:ne200100]<RoseSyntheticApertureFiltering::BatchSolutionParticle*,RoseSyntheticApertureFiltering::BatchSolutionParticle*>(this + 2, __p, *(&__p + 1), 0xCF3CF3CF3CF3CF3DLL * ((*(&__p + 1) - __p) >> 3));
  }

  *(this + 5) = *(&v182 + 1);
  RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::getBatchOrAoASolution(this, a3);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }
}

void RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::resetFilter(RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter *this)
{
  *(this + 75) = *(this + 73);
  *(this + 78) = 0;
  *(this + 930) = 65792;
  *(this + 470) = 0;
  *(this + 234) = 0;
  v1 = *(this + 56);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2613DF000, v1, OS_LOG_TYPE_DEFAULT, "Batch filter is reset", v2, 2u);
  }
}

void RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::checkMotionStateAndObservability(RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter *this)
{
  v1 = this;
  v69[226] = *MEMORY[0x277D85DE8];
  v2 = *(this + 85);
  v3 = *(this + 84);
  v4 = 0x6DB6DB6DB6DB6DB7 * ((v2 - v3) >> 4);
  v59 = 0;
  v60 = 0;
  v61 = 0;
  std::vector<cnmatrix::CNMatrix<2u,1u,double>>::reserve(&v59, v4);
  v56 = 0x100000002;
  v55 = xmmword_261415DB0;
  v54 = &unk_2873C4478;
  v57 = &v58;
  v5 = *(v1 + 84);
  v6 = *(v1 + 85);
  while (v5 != v6)
  {
    v7 = cnmatrix::CNMatrixBase<double>::operator()(v5 + 40, 2);
    *cnmatrix::CNMatrixBase<double>::operator()(&v54, 0) = v7;
    v8 = cnmatrix::CNMatrixBase<double>::operator()(v5 + 40, 0);
    *cnmatrix::CNMatrixBase<double>::operator()(&v54, 1) = v8;
    v9 = v60;
    if (v60 >= v61)
    {
      v10 = std::vector<cnmatrix::CNMatrix<2u,1u,double>>::__emplace_back_slow_path<cnmatrix::CNMatrix<2u,1u,double> const&>(&v59, &v54);
    }

    else
    {
      cnmatrix::CNMatrix<2u,1u,double>::CNMatrix(v60, &v54);
      v10 = v9 + 56;
    }

    v60 = v10;
    v5 += 112;
  }

  v51 = 0x100000002;
  v50 = xmmword_261415DB0;
  v49 = &unk_2873C4478;
  v52 = &v53;
  cnmatrix::FastResize<double>(&v49, 2, 1);
  cnmatrix::CNMatrixBase<double>::WriteValue(&v49, 0.0);
  v12 = v59;
  v11 = v60;
  if (v59 != v60)
  {
    do
    {
      v67 = 0x100000002;
      buf[0] = &unk_2873C4478;
      *&buf[1] = xmmword_261415DB0;
      v68 = v69;
      cnmatrix::Add<double>(&v49, v12, buf);
      cnmatrix::CNMatrixBase<double>::operator=(&v49, buf);
      v12 += 56;
    }

    while (v12 != v11);
  }

  v67 = 0x100000002;
  *&buf[1] = xmmword_261415DB0;
  buf[0] = &unk_2873C4478;
  v68 = v69;
  cnmatrix::Multiply<double>(&v49, buf, 1.0 / v4);
  cnmatrix::CNMatrixBase<double>::operator=(&v49, buf);
  if (v2 == v3)
  {
    LOBYTE(v18) = *(v1 + 931);
    goto LABEL_25;
  }

  v13 = v1;
  v14 = 0;
  if (v4 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v4;
  }

  v16 = 0.0;
  do
  {
    v67 = 0x100000002;
    buf[0] = &unk_2873C4478;
    *&buf[1] = xmmword_261415DB0;
    v68 = v69;
    cnmatrix::Subtract<double>(&v59[v14], &v49, buf);
    cnmatrix::CNMatrixBase<double>::operator=(&v59[v14], buf);
    if (*(v13 + 931) == 1)
    {
      v46 = 0x100000002;
      v45 = xmmword_261415DB0;
      v44 = &unk_2873C4478;
      v47 = v48;
      v67 = 0x1000000E1;
      *&buf[1] = xmmword_261415DC0;
      buf[0] = &unk_2873C44C0;
      v68 = v69;
      v41 = 0x100000002;
      v39 = &unk_2873C4478;
      v40 = xmmword_261415DB0;
      v42 = v43;
      cnmatrix::Norm<double>(&v59[v14], &v44, buf, &v39, "2");
      if (v17 > v16)
      {
        v16 = v17;
      }
    }

    v14 += 14;
    --v15;
  }

  while (v15);
  v1 = v13;
  v18 = *(v13 + 931);
  if (v18 != 1 || v16 < 0.3)
  {
LABEL_25:
    if (*(v1 + 932) != 1 || (v18 & 1) != 0)
    {
      goto LABEL_56;
    }

    goto LABEL_27;
  }

  v19 = *(v13 + 56);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 134217984;
    *(buf + 4) = *&v16;
    _os_log_impl(&dword_2613DF000, v19, OS_LOG_TYPE_DEFAULT, "Enough user motion is detected: %f m - fStatic set to false", buf, 0xCu);
  }

  *(v13 + 931) = 0;
  if (*(v13 + 932) == 1)
  {
LABEL_27:
    v67 = 0x200000002;
    *&buf[1] = xmmword_261415DD0;
    buf[0] = &unk_2873C4508;
    v68 = v69;
    cnmatrix::FastResize<double>(buf, 2, 2);
    cnmatrix::CNMatrixBase<double>::WriteValue(buf, 0.0);
    v21 = v59;
    for (i = v60; v21 != i; v21 += 14)
    {
      cnmatrix::CNMatrix<1u,2u,double>::CNMatrix(v38, v21[3], v21[2]);
      cnmatrix::Transpose<double>(v21, v38);
      v41 = 0x200000002;
      v39 = &unk_2873C4508;
      v40 = xmmword_261415DD0;
      v42 = v43;
      cnmatrix::Multiply<double>(v21, v38, &v39);
      v46 = 0x200000002;
      v45 = xmmword_261415DD0;
      v44 = &unk_2873C4508;
      v47 = v48;
      cnmatrix::Add<double>(buf, &v39, &v44);
      cnmatrix::CNMatrixBase<double>::operator=(buf, &v44);
    }

    v46 = 0x200000002;
    v45 = xmmword_261415DD0;
    v44 = &unk_2873C4508;
    v47 = v48;
    v41 = 0x200000002;
    v39 = &unk_2873C4508;
    v40 = xmmword_261415DD0;
    v42 = v43;
    cnmatrix::Eig<2u,2u,2u,2u,2u,2u,double>(buf, &v44, &v39);
    v22 = *cnmatrix::CNMatrixBase<double>::operator()(&v39, 0, 0);
    v23 = cnmatrix::CNMatrixBase<double>::operator()(&v39, 1, 1);
    if (*v23 >= v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = *v23;
    }

    cnmatrix::CNMatrix<2u,2u,double>::CNMatrix(v38, DWORD1(v45), v45);
    cnmatrix::Transpose<double>(&v44, v38);
    v26 = v59;
    v25 = v60;
    if (v59 == v60)
    {
      v34 = 0.0;
      v35 = 0.0;
    }

    else
    {
      v27 = 0.0;
      v28 = 0.0;
      v29 = 0.0;
      v30 = 0.0;
      do
      {
        v63 = 0x100000002;
        *v62 = &unk_2873C4478;
        *&v62[8] = xmmword_261415DB0;
        v64 = &v65;
        cnmatrix::Multiply<double>(v38, v26, v62);
        v31 = cnmatrix::CNMatrixBase<double>::operator()(v62, 0);
        v32 = cnmatrix::CNMatrixBase<double>::operator()(v62, 1);
        if (v31 < v27)
        {
          v33 = v31;
        }

        else
        {
          v33 = v27;
        }

        if (v31 <= v28)
        {
          v27 = v33;
        }

        else
        {
          v28 = v31;
        }

        if (v32 <= v30)
        {
          if (v32 < v29)
          {
            v29 = v32;
          }
        }

        else
        {
          v30 = v32;
        }

        v26 += 56;
      }

      while (v26 != v25);
      v34 = v28 - v27;
      v35 = v30 - v29;
    }

    if (v35 >= v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = v35;
    }

    if (v34 < v35)
    {
      v34 = v35;
    }

    *(v1 + 78) = v34;
    if (v36 >= 0.3)
    {
      v37 = *(v1 + 56);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *v62 = 134218240;
        *&v62[4] = v24;
        *&v62[12] = 2048;
        *&v62[14] = v36;
        _os_log_impl(&dword_2613DF000, v37, OS_LOG_TYPE_DEFAULT, "Batch filter problem is observable now: smallest eigenvalue is %f, smallest rectangular box dimension is %f m", v62, 0x16u);
      }

      *(v1 + 932) = 0;
    }
  }

LABEL_56:
  buf[0] = &v59;
  std::vector<cnmatrix::CNMatrix<2u,1u,double>>::__destroy_vector::operator()[abi:ne200100](buf);
}

void sub_2613F1DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  a13 = &a54;
  std::vector<cnmatrix::CNMatrix<2u,1u,double>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

BOOL RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter *this)
{
  v136[308] = *MEMORY[0x277D85DE8];
  v1 = *(this + 85);
  v2 = *(this + 84);
  if ((0x6DB6DB6DB6DB6DB7 * ((v1 - v2) >> 4)) >= 4)
  {
    v126 = 0;
    v125 = 0;
    v127 = 0;
    v4 = *(this + 18);
    v96 = (this + 144);
    v5 = *(this + 19);
    if ((*(this + 933) & 1) != 0 || v4 != v5)
    {
      if (v4 != v5)
      {
        do
        {
          std::vector<cnmatrix::CNMatrix<3u,1u,double>>::push_back[abi:ne200100](&v125, v4);
          v4 += 432;
        }

        while (v4 != v5);
        v4 = *v96;
      }

      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(buf, v4);
      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(&v106, buf);
      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(&v101, buf);
      v8 = *cnmatrix::CNMatrixBase<double>::operator()(&v106, 1);
      *cnmatrix::CNMatrixBase<double>::operator()(&v106, 1) = v8 + 3.0;
      v9 = *cnmatrix::CNMatrixBase<double>::operator()(&v101, 1);
      *cnmatrix::CNMatrixBase<double>::operator()(&v101, 1) = v9 + -3.0;
      std::vector<cnmatrix::CNMatrix<3u,1u,double>>::push_back[abi:ne200100](&v125, &v106);
      std::vector<cnmatrix::CNMatrix<3u,1u,double>>::push_back[abi:ne200100](&v125, &v101);
    }

    else
    {
      if (v2 != v1)
      {
        for (i = v2 + 112; i != v1; i += 112)
        {
          if (*(i + 8) < *(v2 + 8))
          {
            v2 = i;
          }
        }
      }

      if (*(v2 + 8) >= 0.5)
      {
        v10 = *(v2 + 8);
      }

      else
      {
        v10 = 0.5;
      }

      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(buf, v2 + 40);
      for (j = 0; j != 3; ++j)
      {
        cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(&v106, buf);
        cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(&v101, buf);
        v12 = *cnmatrix::CNMatrixBase<double>::operator()(&v106, j);
        *cnmatrix::CNMatrixBase<double>::operator()(&v106, j) = v10 + v12;
        v13 = *cnmatrix::CNMatrixBase<double>::operator()(&v101, j);
        *cnmatrix::CNMatrixBase<double>::operator()(&v101, j) = v13 - v10;
        std::vector<cnmatrix::CNMatrix<3u,1u,double>>::push_back[abi:ne200100](&v125, &v106);
        std::vector<cnmatrix::CNMatrix<3u,1u,double>>::push_back[abi:ne200100](&v125, &v101);
      }
    }

    v122 = 0;
    v123 = 0;
    v124 = 0;
    v14 = v125;
    v15 = v126;
    if (v125 == v126)
    {
      v18 = 0;
    }

    else
    {
      do
      {
        v106 = 0;
        v107 = 0uLL;
        RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::initializeFilterWithGuess(this, v14, this + 672, &v106, buf);
        std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::push_back[abi:ne200100](&v122, buf);
        v136[26] = &unk_2873C4140;
        v136[12] = &unk_2873C4140;
        v136[4] = &unk_2873C4140;
        *&buf[8] = &unk_2873C4140;
        v101 = &v106;
        std::vector<RoseSyntheticApertureFiltering::InternalAoAMeas>::__destroy_vector::operator()[abi:ne200100](&v101);
        v14 += 64;
      }

      while (v14 != v15);
      v17 = v122;
      v16 = v123;
      while (1)
      {
        if (v17 == v123)
        {
          v18 = v123;
          goto LABEL_36;
        }

        if (*v17 != 1)
        {
          break;
        }

        v17 += 47;
      }

      if (v17 == v123 || v17 + 47 == v123)
      {
        v18 = v17;
      }

      else
      {
        v18 = v17;
        do
        {
          if (*(v17 + 376) == 1)
          {
            *v18 = 1;
            cnmatrix::CNMatrixBase<double>::operator=((v18 + 1), (v17 + 48));
            cnmatrix::CNMatrixBase<double>::operator=((v18 + 9), (v17 + 56));
            cnmatrix::CNMatrixBase<double>::operator=((v18 + 17), (v17 + 64));
            cnmatrix::CNMatrixBase<double>::operator=((v18 + 31), (v17 + 78));
            v19 = *(v17 + 92);
            *(v18 + 92) = *(v17 + 186);
            *(v18 + 45) = v19;
            v18 += 47;
          }

          v20 = v17 + 94;
          v17 += 47;
        }

        while (v20 != v16);
      }
    }

LABEL_36:
    std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::erase(&v122, v18, v123);
    v22 = 126 - 2 * __clz(0x51B3BEA3677D46CFLL * (v123 - v122));
    if (v123 == v122)
    {
      v23 = 0;
    }

    else
    {
      v23 = v22;
    }

    std::__introsort<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_2 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,false>(v122, v123, v23, 1, v21);
    if (v122 != v123)
    {
      *buf = sqrt(v122[45] / ((0x6DB6DB6DB6DB6DB7 * ((*(this + 85) - *(this + 84)) >> 4)) + -3.0));
      boost::circular_buffer<double,std::allocator<double>>::push_back_impl<double &&>(this + 79, buf);
      v24 = *(this + 82);
      v25 = *(this + 79);
      v26 = v24;
      if (v24 == v25)
      {
        v26 = *(this + 80);
      }

      v27 = *(this + 123);
      if (*(v26 - 8) > v27)
      {
        v50 = *(this + 56);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          if (v24 == v25)
          {
            v24 = *(this + 80);
          }

          v51 = *(v24 - 8);
          *buf = 134218240;
          *&buf[4] = v51;
          *&buf[12] = 2048;
          *&buf[14] = v27;
          _os_log_impl(&dword_2613DF000, v50, OS_LOG_TYPE_DEFAULT, "Batch filter has detected an issue with the measurements - rms normalized error (%f) is above the threshold (%f)", buf, 0x16u);
        }

        RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::reinitFilter(this);
        v7 = 0;
        *(this + 934) = 1;
        goto LABEL_138;
      }

      v119 = 0;
      v120 = 0;
      v121 = 0;
      std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::push_back[abi:ne200100](&v119, v122);
      v29 = v122;
      if ((0x51B3BEA3677D46CFLL * (v123 - v122)) >= 2)
      {
        v30 = 1;
        *&v28 = 0x100000134;
        do
        {
          v31 = v119;
          v32 = v120;
          if (v120 == v119)
          {
            goto LABEL_53;
          }

          v33 = 0;
          v34 = 1;
          do
          {
            v35 = 0x51B3BEA3677D46CFLL * ((v32 - v31) >> 3);
            v36 = v31 + 376 * v33 + 8;
            while (!v34)
            {
              v34 = 0;
              ++v33;
              v36 += 376;
              if (v35 <= v33)
              {
                goto LABEL_55;
              }
            }

            v116 = 0x100000003;
            v115 = xmmword_261415AA0;
            v114 = &unk_2873C40E8;
            v117 = v118;
            cnmatrix::Subtract<double>(&v122[47 * v30 + 1], v36, &v114);
            v108 = 0x100000003;
            v107 = xmmword_261415AA0;
            v106 = &unk_2873C40E8;
            v109 = v110;
            v134 = 0x100000134;
            *&buf[8] = xmmword_261415AD0;
            *buf = &unk_2873C41B8;
            v135 = v136;
            v103 = 0x100000003;
            v101 = &unk_2873C40E8;
            v102 = xmmword_261415AA0;
            v104 = v105;
            cnmatrix::Norm<double>(&v114, &v106, buf, &v101, "2");
            v34 = v28 > 0.1;
            v31 = v119;
            v32 = v120;
            ++v33;
          }

          while (0x51B3BEA3677D46CFLL * ((v120 - v119) >> 3) > v33);
          v29 = v122;
          if (v28 > 0.1)
          {
LABEL_53:
            v28 = exp(*(v31 + 360) - v29[47 * v30 + 45]);
            if (v28 > 0.01)
            {
              std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::push_back[abi:ne200100](&v119, &v29[47 * v30]);
LABEL_55:
              v29 = v122;
            }
          }

          ++v30;
        }

        while (0x51B3BEA3677D46CFLL * (v123 - v29) > v30);
      }

      v38 = v119;
      v37 = v120;
      if ((0x51B3BEA3677D46CFLL * ((v120 - v119) >> 3)) <= 1)
      {
        goto LABEL_74;
      }

      v39 = exp(-*(v119 + 360));
      v40 = 0.0;
      if (v38 != v37)
      {
        v41 = v38;
        do
        {
          v40 = v40 + exp(-*(v41 + 360));
          v41 += 376;
        }

        while (v41 != v37);
      }

      v42 = v39 / v40;
      v28 = 0.9;
      if (v42 >= 0.9 || (v43 = cnmatrix::CNMatrixBase<double>::operator()(v38 + 72, 1), v38 = v119, v37 = v120, (0x51B3BEA3677D46CFLL * ((v120 - v119) >> 3)) < 2))
      {
LABEL_74:
        v111 = 0;
        v112 = 0;
        v113 = 0;
        if (v38 == v37)
        {
          v57 = 0;
          v56 = 0;
        }

        else
        {
          do
          {
            RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::checkFoVBatch(v38 + 8, this + 87, &v106);
            if (v106 == v107)
            {
              std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::push_back[abi:ne200100](&v111, v38);
            }

            else
            {
              RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::initializeFilterWithGuess(this, v38 + 8, this + 672, &v106, buf);
              v52 = v106;
              v53 = v107;
              if (v106 == v107)
              {
                goto LABEL_85;
              }

              v54 = 1;
              do
              {
                while (!v54)
                {
                  v54 = 0;
                  v52 += 26;
                  if (v52 == v53)
                  {
                    v55 = v38;
                    goto LABEL_88;
                  }
                }

                v54 = RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::checkFoV(&buf[8], v52);
                v52 += 26;
              }

              while (v52 != v53);
              v55 = v38;
              if (v54)
              {
LABEL_85:
                if (buf[0])
                {
                  v55 = buf;
                }

                else
                {
                  v55 = v38;
                }
              }

LABEL_88:
              std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::push_back[abi:ne200100](&v111, v55);
            }

            *buf = &v106;
            std::vector<RoseSyntheticApertureFiltering::InternalAoAMeas>::__destroy_vector::operator()[abi:ne200100](buf);
            v38 += 376;
          }

          while (v38 != v37);
          v56 = v111;
          v57 = v112;
        }
      }

      else
      {
        v44 = *v43;
        v45 = 1;
        v46 = 448;
        while (1)
        {
          v47 = cnmatrix::CNMatrixBase<double>::operator()(v38 + v46, 1);
          v48 = fmod(*v47 - v44 + 3.14159265, 6.28318531);
          if (v48 < 0.0)
          {
            v48 = v48 + 6.28318531;
          }

          v28 = v48 + -3.14159265;
          v49 = fabs(v28);
          if (v49 > 0.392699082)
          {
            break;
          }

          ++v45;
          v38 = v119;
          v37 = v120;
          v46 += 376;
          if (0x51B3BEA3677D46CFLL * ((v120 - v119) >> 3) <= v45)
          {
            goto LABEL_74;
          }
        }

        v91 = *(this + 56);
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v42;
          *&buf[12] = 2048;
          *&buf[14] = v49;
          _os_log_impl(&dword_2613DF000, v91, OS_LOG_TYPE_DEFAULT, "Batch filter clearing solutions since the best one has a low weight (%f) and the horizontal angle difference to a secondary solution is too high (%f)", buf, 0x16u);
        }

        v92 = v119;
        if (v120 != v119)
        {
          v93 = v120 - 46;
          v94 = v120 - 46;
          do
          {
            v94[30] = &unk_2873C4140;
            v94[16] = &unk_2873C4140;
            v94[8] = &unk_2873C4140;
            *v94 = &unk_2873C4140;
            v95 = v94 - 1;
            v94 -= 47;
            v93 -= 47;
          }

          while (v95 != v92);
        }

        v57 = 0;
        v56 = 0;
        v120 = v92;
        v111 = 0;
        v112 = 0;
        v113 = 0;
      }

      v58 = 126 - 2 * __clz(0x51B3BEA3677D46CFLL * ((v57 - v56) >> 3));
      if (v57 == v56)
      {
        v59 = 0;
      }

      else
      {
        v59 = v58;
      }

      std::__introsort<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_3 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,false>(v56, v57, v59, 1, v28);
      v60 = v111;
      if (v111 != v112)
      {
        v61 = xmmword_261415D50;
        v62 = xmmword_261415AA0;
        v63 = xmmword_261415DA0;
        do
        {
          v108 = 0x300000003;
          v106 = &unk_2873C4240;
          v107 = v61;
          v109 = v110;
          v103 = 0x100000003;
          v101 = &unk_2873C4360;
          v102 = v62;
          v104 = v105;
          v134 = 0x10000000CLL;
          *buf = &unk_2873C43E8;
          *&buf[8] = v63;
          v135 = v136;
          cnmatrix::Inv<double>((v60 + 248), &v101, buf, &v106);
          v64 = *cnmatrix::CNMatrixBase<double>::operator()(&v106, 1, 1);
          v103 = 0x300000003;
          v101 = &unk_2873C4240;
          v102 = xmmword_261415D50;
          v104 = v105;
          v116 = 0x100000003;
          v115 = xmmword_261415AA0;
          v114 = &unk_2873C4360;
          v117 = v118;
          v134 = 0x10000000CLL;
          *&buf[8] = xmmword_261415DA0;
          *buf = &unk_2873C43E8;
          v135 = v136;
          cnmatrix::Inv<double>((v60 + 136), &v114, buf, &v101);
          v65 = v102;
          if (v102 != DWORD1(v102))
          {
            __assert_rtn("Trace", "cnmatrixbase.h", 4977, "A.NumRows() == A.NumCols()");
          }

          if (v102 < 1)
          {
            v67 = 0.0;
          }

          else
          {
            v66 = 0;
            v67 = 0.0;
            do
            {
              v67 = v67 + cnmatrix::CNMatrixBase<double>::operator()<int,int>(&v101, v66, v66);
              ++v66;
            }

            while (v65 != v66);
          }

          if (sqrt(v64) * 180.0 / 3.14159265 <= *(this + 122) || v67 <= *(this + 121))
          {
            v60 += 376;
            v68 = v112;
            v61 = xmmword_261415D50;
            v62 = xmmword_261415AA0;
            v63 = xmmword_261415DA0;
          }

          else
          {
            std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(buf, v60 + 376, v112, v60);
            v61 = xmmword_261415D50;
            v62 = xmmword_261415AA0;
            v63 = xmmword_261415DA0;
            if (v112 != v68)
            {
              v69 = v112 - 46;
              v70 = v112 - 46;
              do
              {
                *(v70 + 30) = &unk_2873C4140;
                *(v70 + 16) = &unk_2873C4140;
                *(v70 + 8) = &unk_2873C4140;
                *v70 = &unk_2873C4140;
                v71 = v70 - 1;
                v70 -= 47;
                v69 -= 47;
              }

              while (v71 != v68);
            }

            v112 = v68;
          }
        }

        while (v60 != v68);
        if (v111 != v68)
        {
          v98 = 0;
          v99 = 0;
          v100 = 0;
          std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::push_back[abi:ne200100](&v98, v111);
          v72 = v111;
          v73 = *(v111 + 360);
          v74 = xmmword_261415AA0;
          if ((0x51B3BEA3677D46CFLL * ((v112 - v111) >> 3)) >= 2)
          {
            v75 = 1;
            do
            {
              v76 = v98;
              v77 = v99;
              if (v99 == v98)
              {
                goto LABEL_122;
              }

              v78 = 0;
              v79 = 1;
              do
              {
                v80 = 0x51B3BEA3677D46CFLL * ((v77 - v76) >> 3);
                v81 = v76 + 376 * v78 + 8;
                while (!v79)
                {
                  v79 = 0;
                  ++v78;
                  v81 += 376;
                  if (v80 <= v78)
                  {
                    v72 = v111;
                    goto LABEL_123;
                  }
                }

                v116 = 0x100000003;
                v115 = v74;
                v114 = &unk_2873C40E8;
                v117 = v118;
                cnmatrix::Subtract<double>(v111 + 376 * v75 + 8, v81, &v114);
                v108 = 0x100000003;
                v107 = xmmword_261415AA0;
                v106 = &unk_2873C40E8;
                v109 = v110;
                v134 = 0x100000134;
                *&buf[8] = xmmword_261415AD0;
                *buf = &unk_2873C41B8;
                v135 = v136;
                v103 = 0x100000003;
                v101 = &unk_2873C40E8;
                v102 = xmmword_261415AA0;
                v104 = v105;
                cnmatrix::Norm<double>(&v114, &v106, buf, &v101, "2");
                v79 = v82 > 0.1;
                v76 = v98;
                v77 = v99;
                ++v78;
                v74 = xmmword_261415AA0;
              }

              while (0x51B3BEA3677D46CFLL * ((v99 - v98) >> 3) > v78);
              v72 = v111;
              if (v82 > 0.1)
              {
LABEL_122:
                std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::push_back[abi:ne200100](&v98, v72 + 376 * v75);
                v72 = v111;
                v74 = xmmword_261415AA0;
              }

LABEL_123:
              ++v75;
            }

            while (0x51B3BEA3677D46CFLL * ((v112 - v72) >> 3) > v75);
          }

          std::vector<RoseSyntheticApertureFiltering::InternalFilterState>::__base_destruct_at_end[abi:ne200100](v96, *v96);
          v83 = v98;
          v84 = v99;
          if (v98 == v99)
          {
            v88 = *(this + 19);
            v85 = 0.0;
          }

          else
          {
            v85 = 0.0;
            do
            {
              cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(&v114, v83 + 8);
              cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v97, v83 + 72);
              v108 = 0x300000003;
              v107 = xmmword_261415D50;
              v106 = &unk_2873C4240;
              v109 = v110;
              v103 = 0x100000003;
              v101 = &unk_2873C4360;
              v102 = xmmword_261415AA0;
              v104 = v105;
              v134 = 0x10000000CLL;
              *&buf[8] = xmmword_261415DA0;
              *buf = &unk_2873C43E8;
              v135 = v136;
              cnmatrix::Inv<double>((v83 + 136), &v101, buf, &v106);
              v103 = 0x300000003;
              v101 = &unk_2873C4240;
              v102 = xmmword_261415D50;
              v104 = v105;
              v130 = 0x100000003;
              v129 = xmmword_261415AA0;
              v128 = &unk_2873C4360;
              v131 = &v132;
              v134 = 0x10000000CLL;
              *&buf[8] = xmmword_261415DA0;
              *buf = &unk_2873C43E8;
              v135 = v136;
              cnmatrix::Inv<double>((v83 + 248), &v128, buf, &v101);
              v86 = exp(v73 - *(v83 + 360));
              *buf = v86;
              LODWORD(v128) = *(v83 + 368);
              v87 = *(this + 19);
              if (v87 >= *(this + 20))
              {
                v88 = std::vector<RoseSyntheticApertureFiltering::InternalFilterState>::__emplace_back_slow_path<cnmatrix::CNMatrix<3u,1u,double> const&,cnmatrix::CNMatrix<3u,1u,double> const&,cnmatrix::CNMatrix<3u,3u,double> const&,cnmatrix::CNMatrix<3u,3u,double> const&,double &,RoseSyntheticApertureFiltering::BatchSolutionType const&,cnmatrix::CNMatrix<3u,1u,double>&>(v96, &v114, v97, &v106, &v101, buf, &v128, this + 168);
              }

              else
              {
                std::vector<RoseSyntheticApertureFiltering::InternalFilterState>::__construct_one_at_end[abi:ne200100]<cnmatrix::CNMatrix<3u,1u,double> const&,cnmatrix::CNMatrix<3u,1u,double> const&,cnmatrix::CNMatrix<3u,3u,double> const&,cnmatrix::CNMatrix<3u,3u,double> const&,double &,RoseSyntheticApertureFiltering::BatchSolutionType const&,cnmatrix::CNMatrix<3u,1u,double>&>(v96, &v114, v97, &v106, &v101, buf, &v128, this + 168);
                v88 = v87 + 432;
              }

              *(this + 19) = v88;
              v85 = v85 + v86;
              v83 += 376;
            }

            while (v83 != v84);
          }

          for (k = *v96; k != v88; k += 432)
          {
            *(k + 352) = *(k + 352) / v85;
          }

          *buf = &v98;
          std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::__destroy_vector::operator()[abi:ne200100](buf);
        }
      }

      *buf = &v111;
      std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::__destroy_vector::operator()[abi:ne200100](buf);
      *buf = &v119;
      std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::__destroy_vector::operator()[abi:ne200100](buf);
    }

    v7 = *(this + 19) != *(this + 18);
LABEL_138:
    *buf = &v122;
    std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::__destroy_vector::operator()[abi:ne200100](buf);
    *buf = &v125;
    std::vector<cnmatrix::CNMatrix<3u,1u,double>>::__destroy_vector::operator()[abi:ne200100](buf);
    return v7;
  }

  return 0;
}

void sub_2613F31A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, unint64_t *a61, uint64_t a62, uint64_t a63)
{
  a61 = &a65;
  std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::__destroy_vector::operator()[abi:ne200100](&a61);
  a61 = &a66;
  std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::__destroy_vector::operator()[abi:ne200100](&a61);
  a61 = &STACK[0x210];
  std::vector<cnmatrix::CNMatrix<3u,1u,double>>::__destroy_vector::operator()[abi:ne200100](&a61);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::reserve(uint64_t *result, unint64_t a2)
{
  if (0xF0F0F0F0F0F0F0F1 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x1E1E1E1E1E1E1E2)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>>(result, a2);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2613F3418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

unint64_t RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::measModelBatchAlt(uint64_t a1, uint64_t a2, uint64_t a3, double **a4, double **a5, uint64_t *a6, uint64_t *a7)
{
  v11 = *a6;
  v12 = a6[1];
  if (*a6 != v12)
  {
    v13 = v12 - 128;
    do
    {
      *(v12 - 64) = &unk_2873C4140;
      *(v12 - 128) = &unk_2873C4140;
      v13 -= 136;
      v12 -= 136;
    }

    while (v12 != v11);
    a6[1] = v11;
    std::vector<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::reserve(a6, 0x6DB6DB6DB6DB6DB7 * ((a4[1] - *a4) >> 4));
  }

  v14 = *a7;
  v15 = a7[1];
  if (*a7 != v15)
  {
    v16 = v15 - 176;
    do
    {
      *(v15 - 88) = &unk_2873C4140;
      *(v15 - 176) = &unk_2873C4140;
      v16 -= 192;
      v15 -= 192;
    }

    while (v15 != v14);
    a7[1] = v14;
    std::vector<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::reserve(a7, 0x4EC4EC4EC4EC4EC5 * ((a5[1] - *a5) >> 4));
  }

  v41 = a5;
  v73 = 0x100000003;
  v71 = &unk_2873C40E8;
  v72 = xmmword_261415AA0;
  v74 = &v75;
  v68 = 0x300000003;
  v67 = xmmword_261415D50;
  v66 = &unk_2873C4240;
  v69 = &v70;
  result = RoseSyntheticApertureFiltering::rhoThPhi2pos(a2, &v71, &v66);
  v18 = *a4;
  v19 = a4[1];
  if (*a4 != v19)
  {
    do
    {
      v62 = 0x100000001;
      v60 = &unk_2873C4430;
      *&v20 = 0x100000001;
      *(&v20 + 1) = 0x100000001;
      v61 = v20;
      v63 = v64;
      v57 = 0x300000001;
      v55 = &unk_2873C4288;
      v56 = xmmword_261415DE0;
      v58 = v59;
      v51 = 0x100000003;
      v49 = &unk_2873C40E8;
      v50 = xmmword_261415AA0;
      v52 = v53;
      cnmatrix::Subtract<double>((v18 + 5), a3, &v49);
      RoseSyntheticApertureFiltering::measModelRangeAlt(a2, &v66, &v71, &v49, &v60, &v55);
      v22 = v18[3];
      v21 = v18[4];
      v23 = v18[2];
      v24 = cnmatrix::CNMatrixBase<double>::operator()(&v60, 0);
      v25 = 1.0 / (v22 * v21);
      v65 = v23 - v25 * *v24;
      v51 = 0x300000001;
      v49 = &unk_2873C4288;
      v50 = xmmword_261415DE0;
      v52 = v53;
      cnmatrix::Multiply<double>(&v55, &v49, v25);
      v26 = 0;
      v46 = 0x100000003;
      v44 = &unk_2873C40E8;
      v45 = xmmword_261415AA0;
      v47 = v48;
      do
      {
        v27 = cnmatrix::CNMatrixBase<double>::operator()(&v49, v26);
        *cnmatrix::CNMatrixBase<double>::operator()(&v44, v26++) = v27;
      }

      while (v26 != 3);
      v28 = a6[1];
      if (v28 >= a6[2])
      {
        result = std::vector<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::__emplace_back_slow_path<double const&,cnmatrix::CNMatrix<1u,3u,double> const&,cnmatrix::CNMatrix<3u,1u,double> &>(a6, &v65, &v49, &v44);
      }

      else
      {
        RoseSyntheticApertureFiltering::InternalExpectedRangeMeas::InternalExpectedRangeMeas(a6[1], &v49, &v44, v65);
        result = v28 + 136;
        a6[1] = v28 + 136;
      }

      a6[1] = result;
      v18 += 14;
    }

    while (v18 != v19);
  }

  v29 = *v41;
  v30 = v41[1];
  if (*v41 != v30)
  {
    do
    {
      v62 = 0x100000002;
      v60 = &unk_2873C4478;
      v61 = xmmword_261415DB0;
      v63 = v64;
      v57 = 0x300000002;
      v55 = &unk_2873C42D0;
      v56 = xmmword_261415DF0;
      v58 = v59;
      v51 = 0x100000003;
      v49 = &unk_2873C40E8;
      v50 = xmmword_261415AA0;
      v52 = v53;
      cnmatrix::Subtract<double>((v29 + 4), a3, &v49);
      RoseSyntheticApertureFiltering::measModelAoAAlt(a2, &v66, &v71, &v49, (v29 + 12), &v60, &v55);
      v31 = v29[3];
      v32 = v29[1];
      v33 = cnmatrix::CNMatrixBase<double>::operator()(&v60, 0);
      v34 = 1.0 / v31;
      v35 = fmod(v31 * v32 - *v33 + 3.14159265, 6.28318531);
      if (v35 < 0.0)
      {
        v35 = v35 + 6.28318531;
      }

      v65 = v34 * (v35 + -3.14159265);
      v36 = v29[2];
      v54 = v36 - v34 * *cnmatrix::CNMatrixBase<double>::operator()(&v60, 1);
      v51 = 0x300000002;
      v49 = &unk_2873C42D0;
      v50 = xmmword_261415DF0;
      v52 = v53;
      cnmatrix::Multiply<double>(&v55, &v49, v34);
      v37 = 0;
      v46 = 0x200000003;
      v44 = &unk_2873C4318;
      v45 = xmmword_261415E00;
      v47 = v48;
      do
      {
        v38 = cnmatrix::CNMatrixBase<double>::operator()(&v49, 0, v37);
        *cnmatrix::CNMatrixBase<double>::operator()(&v44, v37, 0) = v38;
        v39 = cnmatrix::CNMatrixBase<double>::operator()(&v49, 1, v37);
        *cnmatrix::CNMatrixBase<double>::operator()(&v44, v37++, 1) = v39;
      }

      while (v37 != 3);
      v40 = a7[1];
      if (v40 >= a7[2])
      {
        result = std::vector<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::__emplace_back_slow_path<double const&,double const&,cnmatrix::CNMatrix<2u,3u,double> const&,cnmatrix::CNMatrix<3u,2u,double> &>(a7, &v65, &v54, &v49, &v44);
      }

      else
      {
        RoseSyntheticApertureFiltering::InternalExpectedAoAMeas::InternalExpectedAoAMeas(a7[1], &v49, &v44, v65, v54);
        result = v40 + 192;
        a7[1] = v40 + 192;
      }

      a7[1] = result;
      v29 += 26;
    }

    while (v29 != v30);
  }

  return result;
}

uint64_t std::vector<cnmatrix::CNMatrix<3u,1u,double>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<cnmatrix::CNMatrix<3u,1u,double>>::__emplace_back_slow_path<cnmatrix::CNMatrix<3u,1u,double> const&>(a1, a2);
  }

  else
  {
    cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(a1[1], a2);
    result = v3 + 64;
    a1[1] = v3 + 64;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::__emplace_back_slow_path<RoseSyntheticApertureFiltering::FilterInitializationResult>(a1, a2);
  }

  else
  {
    std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::__construct_one_at_end[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult>(a1, a2);
    result = v3 + 376;
  }

  a1[1] = result;
  return result;
}

void RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::initializeFilterWithGuess(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double **a4@<X3>, uint64_t a5@<X8>)
{
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v82, a2);
  v79 = 0x100000003;
  v78 = xmmword_261415AA0;
  v77 = &unk_2873C40E8;
  v80 = &v81;
  GNStep = RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::generateGNStep(a1, v82, a3, a4, &v77);
  v74 = 0x100000003;
  v73 = xmmword_261415AA0;
  v72 = &unk_2873C40E8;
  v75 = &v76;
  if (*(a1 + 944) < 1)
  {
    v17 = 0;
    v9 = 1;
  }

  else
  {
    v9 = 1;
LABEL_3:
    cnmatrix::CNMatrixBase<double>::operator=(&v72, &v77);
    v10 = 0;
    while (v10 < *(a1 + 948))
    {
      v85 = 0x100000003;
      v84 = xmmword_261415AA0;
      v83 = &unk_2873C40E8;
      v86 = v87;
      cnmatrix::Add<double>(v82, &v72, &v83);
      v11 = RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::generateGNStep(a1, &v83, a3, a4, &v77);
      if (v11 < GNStep)
      {
        v85 = 0x100000003;
        v84 = xmmword_261415AA0;
        v83 = &unk_2873C40E8;
        v86 = v87;
        cnmatrix::Add<double>(v82, &v72, &v83);
        cnmatrix::CNMatrixBase<double>::operator=(v82, &v83);
        v63 = 0x100000003;
        v62 = xmmword_261415AA0;
        v61 = &unk_2873C40E8;
        v64 = v65;
        v85 = 0x100000134;
        v84 = xmmword_261415AD0;
        v83 = &unk_2873C41B8;
        v86 = v87;
        v58 = 0x100000003;
        v57 = xmmword_261415AA0;
        v56 = &unk_2873C40E8;
        v59 = v60;
        cnmatrix::Norm<double>(&v72, &v61, &v83, &v56, "2");
        v14 = v15 < *(a1 + 952) || (GNStep - v11) / GNStep < *(a1 + 960);
        ++v9;
        GNStep = v11;
LABEL_15:
        if (v9 > *(a1 + 944) || v14)
        {
          v17 = 0;
          goto LABEL_22;
        }

        goto LABEL_3;
      }

      v12 = 0;
      ++v10;
      do
      {
        v13 = *cnmatrix::CNMatrixBase<double>::operator()(&v72, v12);
        *cnmatrix::CNMatrixBase<double>::operator()(&v72, v12++) = v13 * 0.5;
      }

      while (v12 != 3);
      if (v11 < GNStep)
      {
        v14 = 0;
        goto LABEL_15;
      }
    }

    v17 = 1;
  }

LABEL_22:
  v70 = 0;
  v69 = 0;
  v71 = 0;
  v67 = 0;
  v66 = 0;
  v68 = 0;
  std::vector<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::reserve(&v69, 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 8) - *a3) >> 4));
  v18 = std::vector<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::reserve(&v66, 0x4EC4EC4EC4EC4EC5 * ((a4[1] - *a4) >> 4));
  RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::measModelBatch(v18, v82, a3, a4, &v69, &v66);
  v37 = v17;
  v85 = 0x300000003;
  v84 = xmmword_261415D50;
  v83 = &unk_2873C4240;
  v86 = v87;
  cnmatrix::FastResize<double>(&v83, 3, 3);
  v19 = 0.0;
  cnmatrix::CNMatrixBase<double>::WriteValue(&v83, 0.0);
  v20 = v69;
  v21 = v70;
  if (v69 != v70)
  {
    do
    {
      v22 = v20 + 1;
      v23 = *v20;
      v58 = 0x300000003;
      v56 = &unk_2873C4240;
      v57 = xmmword_261415D50;
      v59 = v60;
      cnmatrix::Multiply<double>((v20 + 9), (v20 + 1), &v56);
      v63 = 0x300000003;
      v62 = xmmword_261415D50;
      v61 = &unk_2873C4240;
      v64 = v65;
      cnmatrix::Add<double>(&v83, &v56, &v61);
      cnmatrix::CNMatrixBase<double>::operator=(&v83, &v61);
      v19 = v19 + v23 * v23;
      v20 = v22 + 16;
    }

    while (v22 + 16 != v21);
  }

  v24 = v66;
  v25 = v67;
  if (v66 != v67)
  {
    do
    {
      v26 = *v24;
      v27 = v24[1];
      v58 = 0x300000003;
      v56 = &unk_2873C4240;
      v57 = xmmword_261415D50;
      v28 = v24 + 2;
      v59 = v60;
      cnmatrix::Multiply<double>((v24 + 13), (v24 + 2), &v56);
      v63 = 0x300000003;
      v62 = xmmword_261415D50;
      v61 = &unk_2873C4240;
      v64 = v65;
      cnmatrix::Add<double>(&v83, &v56, &v61);
      cnmatrix::CNMatrixBase<double>::operator=(&v83, &v61);
      v19 = v19 + v27 * v27 + v26 * v26;
      v24 = v28 + 22;
    }

    while (v28 + 22 != v25);
  }

  cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(&v61, &v83);
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  std::vector<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::reserve(&v53, 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 8) - *a3) >> 4));
  std::vector<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::reserve(&v50, 0x4EC4EC4EC4EC4EC5 * ((a4[1] - *a4) >> 4));
  v58 = 0x100000003;
  v57 = xmmword_261415AA0;
  v56 = &unk_2873C40E8;
  v59 = v60;
  cnmatrix::Subtract<double>(v82, a1 + 168, &v56);
  RoseSyntheticApertureFiltering::pos2rangeThPhi(&v56, v49);
  RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::measModelBatchAlt(v29, v49, a1 + 168, a3, a4, &v53, &v50);
  v58 = 0x300000003;
  v57 = xmmword_261415D50;
  v56 = &unk_2873C4240;
  v59 = v60;
  cnmatrix::FastResize<double>(&v56, 3, 3);
  cnmatrix::CNMatrixBase<double>::WriteValue(&v56, 0.0);
  v30 = v53;
  for (i = v54; v30 != i; v30 += 136)
  {
    v41 = 0x300000003;
    v39 = &unk_2873C4240;
    v40 = xmmword_261415D50;
    v42 = v43;
    cnmatrix::Multiply<double>(v30 + 72, v30 + 8, &v39);
    v46 = 0x300000003;
    v44 = &unk_2873C4240;
    v45 = xmmword_261415D50;
    v47 = v48;
    cnmatrix::Add<double>(&v56, &v39, &v44);
    cnmatrix::CNMatrixBase<double>::operator=(&v56, &v44);
  }

  v32 = v50;
  for (j = v51; v32 != j; v32 += 192)
  {
    v41 = 0x300000003;
    v39 = &unk_2873C4240;
    v40 = xmmword_261415D50;
    v42 = v43;
    cnmatrix::Multiply<double>(v32 + 104, v32 + 16, &v39);
    v46 = 0x300000003;
    v44 = &unk_2873C4240;
    v45 = xmmword_261415D50;
    v47 = v48;
    cnmatrix::Add<double>(&v56, &v39, &v44);
    cnmatrix::CNMatrixBase<double>::operator=(&v56, &v44);
  }

  cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(&v44, &v56);
  v34 = (v37 & 1) != 0 || v9 <= *(a1 + 944);
  v35 = *a4;
  v36 = a4[1];
  *a5 = v34;
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(a5 + 8, v82);
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(a5 + 72, v49);
  cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(a5 + 136, &v61);
  cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(a5 + 248, &v44);
  *(a5 + 360) = v19;
  *(a5 + 368) = v35 == v36;
  v56 = &v50;
  std::vector<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::__destroy_vector::operator()[abi:ne200100](&v56);
  v56 = &v53;
  std::vector<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::__destroy_vector::operator()[abi:ne200100](&v56);
  v83 = &v66;
  std::vector<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::__destroy_vector::operator()[abi:ne200100](&v83);
  v83 = &v69;
  std::vector<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::__destroy_vector::operator()[abi:ne200100](&v83);
}

uint64_t std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::erase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(&v7, a3, *(a1 + 8), a2);
    std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::__base_destruct_at_end[abi:ne200100](a1, v5);
  }

  return a2;
}

uint64_t std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::__emplace_back_slow_path<RoseSyntheticApertureFiltering::FilterInitializationResult const&>(a1, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<RoseSyntheticApertureFiltering::FilterInitializationResult>>::construct[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult,RoseSyntheticApertureFiltering::FilterInitializationResult const&,0>(a1, *(a1 + 8), a2);
    result = v3 + 376;
    *(a1 + 8) = v3 + 376;
  }

  *(a1 + 8) = result;
  return result;
}

void RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::checkFoVBatch(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      if (RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::checkFoV(a1, v3))
      {
        std::vector<RoseSyntheticApertureFiltering::InternalAoAMeas>::push_back[abi:ne200100](a3, v3);
      }

      v3 += 13;
    }

    while (v3 != v4);
  }
}

void sub_2613F47B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<RoseSyntheticApertureFiltering::InternalAoAMeas>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::checkFoV(uint64_t a1, uint64_t a2)
{
  v13 = 0x100000003;
  v11 = &unk_2873C40E8;
  v12 = xmmword_261415AA0;
  v14 = &v15;
  cnmatrix::Subtract<double>(a1, a2 + 32, &v11);
  v8 = 0x100000003;
  v6 = &unk_2873C40E8;
  v7 = xmmword_261415AA0;
  v9 = &v10;
  cnmatrix::Multiply<double>(a2 + 96, &v11, &v6);
  v3 = cnmatrix::CNMatrixBase<double>::operator()(&v6, 2);
  v28 = 0x100000003;
  v26 = &unk_2873C40E8;
  v27 = xmmword_261415AA0;
  v29 = &v30;
  v23 = 0x100000134;
  v22 = xmmword_261415AD0;
  v21 = &unk_2873C41B8;
  v24 = &v25;
  v18 = 0x100000003;
  v17 = xmmword_261415AA0;
  v16 = &unk_2873C40E8;
  v19 = &v20;
  cnmatrix::Norm<double>(&v6, &v26, &v21, &v16, "2");
  return acos(-v3 / v4) * 180.0 / 3.14159265 <= 60.0;
}

double RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::generateGNStep(uint64_t a1, uint64_t a2, double **a3, double **a4, uint64_t a5)
{
  v9 = (a3[1] - *a3) >> 4;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v10 = std::vector<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::reserve(&v45, 0x6DB6DB6DB6DB6DB7 * v9);
  RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::measModelBatch(v10, a2, a3, a4, &v45, &v42);
  v39 = 0x300000003;
  v38 = xmmword_261415D50;
  v37 = &unk_2873C4240;
  v40 = &v41;
  cnmatrix::FastResize<double>(&v37, 3, 3);
  cnmatrix::CNMatrixBase<double>::WriteValue(&v37, 0.0);
  v34 = 0x100000003;
  v33 = xmmword_261415AA0;
  v32 = &unk_2873C40E8;
  v35 = &v36;
  cnmatrix::FastResize<double>(&v32, 3, 1);
  v11 = 0.0;
  cnmatrix::CNMatrixBase<double>::WriteValue(&v32, 0.0);
  v12 = v45;
  v13 = v46;
  if (v45 != v46)
  {
    do
    {
      v14 = (v12 + 1);
      v15 = *v12;
      v29 = 0x300000003;
      v27 = &unk_2873C4240;
      v28 = xmmword_261415D50;
      v30 = v31;
      cnmatrix::Multiply<double>((v12 + 9), (v12 + 1), &v27);
      v50 = 0x300000003;
      v49 = xmmword_261415D50;
      v48 = &unk_2873C4240;
      v51 = v52;
      cnmatrix::Add<double>(&v37, &v27, &v48);
      cnmatrix::CNMatrixBase<double>::operator=(&v37, &v48);
      v29 = 0x100000003;
      v27 = &unk_2873C40E8;
      v28 = xmmword_261415AA0;
      v30 = v31;
      v14 += 64;
      cnmatrix::Multiply<double>(v14, &v27, v15);
      v50 = 0x100000003;
      v49 = xmmword_261415AA0;
      v48 = &unk_2873C40E8;
      v51 = v52;
      cnmatrix::Add<double>(&v32, &v27, &v48);
      cnmatrix::CNMatrixBase<double>::operator=(&v32, &v48);
      v11 = v11 + v15 * v15;
      v12 = (v14 + 64);
    }

    while ((v14 + 64) != v13);
  }

  v16 = v42;
  v17 = v43;
  if (v42 != v43)
  {
    do
    {
      v18 = *v16;
      v19 = v16[1];
      v29 = 0x300000003;
      v27 = &unk_2873C4240;
      v28 = xmmword_261415D50;
      v20 = (v16 + 2);
      v30 = v31;
      cnmatrix::Multiply<double>((v16 + 13), (v16 + 2), &v27);
      v50 = 0x300000003;
      v49 = xmmword_261415D50;
      v48 = &unk_2873C4240;
      v51 = v52;
      cnmatrix::Add<double>(&v37, &v27, &v48);
      cnmatrix::CNMatrixBase<double>::operator=(&v37, &v48);
      v24 = 0x100000002;
      v22 = &unk_2873C4478;
      v23 = xmmword_261415DB0;
      v25 = v26;
      *cnmatrix::CNMatrixBase<double>::operator()(&v22, 0) = v18;
      *cnmatrix::CNMatrixBase<double>::operator()(&v22, 1) = v19;
      v29 = 0x100000003;
      v27 = &unk_2873C40E8;
      v28 = xmmword_261415AA0;
      v30 = v31;
      v20 += 88;
      cnmatrix::Multiply<double>(v20, &v22, &v27);
      v50 = 0x100000003;
      v49 = xmmword_261415AA0;
      v48 = &unk_2873C40E8;
      v51 = v52;
      cnmatrix::Add<double>(&v32, &v27, &v48);
      cnmatrix::CNMatrixBase<double>::operator=(&v32, &v48);
      v11 = v11 + v19 * v19 + v18 * v18;
      v16 = (v20 + 88);
    }

    while ((v20 + 88) != v17);
  }

  v29 = 0x300000003;
  v27 = &unk_2873C4240;
  v28 = xmmword_261415D50;
  v30 = v31;
  v55 = 0x100000003;
  v53 = &unk_2873C4360;
  v54 = xmmword_261415AA0;
  v56 = &v57;
  v50 = 0x10000000CLL;
  v49 = xmmword_261415DA0;
  v48 = &unk_2873C43E8;
  v51 = v52;
  cnmatrix::Inv<double>(&v37, &v53, &v48, &v27);
  v24 = 0x100000003;
  v22 = &unk_2873C40E8;
  v23 = xmmword_261415AA0;
  v25 = v26;
  cnmatrix::Multiply<double>(&v27, &v32, &v22);
  cnmatrix::CNMatrixBase<double>::operator=(a5, &v22);
  v48 = &v42;
  std::vector<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::__destroy_vector::operator()[abi:ne200100](&v48);
  v48 = &v45;
  std::vector<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::__destroy_vector::operator()[abi:ne200100](&v48);
  return v11;
}

void sub_2613F4F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  a66 = &a62;
  std::vector<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::__destroy_vector::operator()[abi:ne200100](&a66);
  a66 = &a65;
  std::vector<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::__destroy_vector::operator()[abi:ne200100](&a66);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::reserve(uint64_t *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 6) < a2)
  {
    if (a2 < 0x155555555555556)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>>(result, a2);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2613F5090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::measModelBatch(uint64_t a1, uint64_t a2, double **a3, double **a4, uint64_t *a5, uint64_t *a6)
{
  v10 = *a5;
  v11 = a5[1];
  if (*a5 != v11)
  {
    v12 = v11 - 128;
    do
    {
      *(v11 - 64) = &unk_2873C4140;
      *(v11 - 128) = &unk_2873C4140;
      v12 -= 136;
      v11 -= 136;
    }

    while (v11 != v10);
    a5[1] = v10;
    std::vector<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::reserve(a5, 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 4));
  }

  v13 = *a6;
  v14 = a6[1];
  if (*a6 != v14)
  {
    v15 = v14 - 176;
    do
    {
      *(v14 - 88) = &unk_2873C4140;
      *(v14 - 176) = &unk_2873C4140;
      v15 -= 192;
      v14 -= 192;
    }

    while (v14 != v13);
    a6[1] = v13;
    std::vector<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::reserve(a6, 0x4EC4EC4EC4EC4EC5 * ((a4[1] - *a4) >> 4));
  }

  v41 = a4;
  v16 = *a3;
  v17 = a3[1];
  if (*a3 != v17)
  {
    do
    {
      v61 = 0x100000001;
      v59 = &unk_2873C4430;
      *&v18 = 0x100000001;
      *(&v18 + 1) = 0x100000001;
      v60 = v18;
      v62 = v63;
      v56 = 0x300000001;
      v54 = &unk_2873C4288;
      v55 = xmmword_261415DE0;
      v57 = v58;
      RoseSyntheticApertureFiltering::measModelRange(a2, (v16 + 5), &v59, &v54);
      v20 = v16[3];
      v19 = v16[4];
      v21 = v16[2];
      v22 = cnmatrix::CNMatrixBase<double>::operator()(&v59, 0);
      v23 = 1.0 / (v20 * v19);
      v64[0] = v21 - v23 * *v22;
      v50 = 0x300000001;
      v48 = &unk_2873C4288;
      v49 = xmmword_261415DE0;
      v51 = v52;
      cnmatrix::Multiply<double>(&v54, &v48, v23);
      v24 = 0;
      v45 = 0x100000003;
      v43 = &unk_2873C40E8;
      v44 = xmmword_261415AA0;
      v46 = v47;
      do
      {
        v25 = cnmatrix::CNMatrixBase<double>::operator()(&v48, v24);
        *cnmatrix::CNMatrixBase<double>::operator()(&v43, v24++) = v25;
      }

      while (v24 != 3);
      v26 = a5[1];
      if (v26 >= a5[2])
      {
        v27 = std::vector<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::__emplace_back_slow_path<double const&,cnmatrix::CNMatrix<1u,3u,double> const&,cnmatrix::CNMatrix<3u,1u,double> &>(a5, v64, &v48, &v43);
      }

      else
      {
        RoseSyntheticApertureFiltering::InternalExpectedRangeMeas::InternalExpectedRangeMeas(a5[1], &v48, &v43, v64[0]);
        v27 = v26 + 136;
        a5[1] = v26 + 136;
      }

      a5[1] = v27;
      v16 += 14;
    }

    while (v16 != v17);
  }

  v28 = *v41;
  v29 = v41[1];
  if (*v41 != v29)
  {
    do
    {
      v61 = 0x100000002;
      v59 = &unk_2873C4478;
      v60 = xmmword_261415DB0;
      v62 = v63;
      v56 = 0x300000002;
      v54 = &unk_2873C42D0;
      v55 = xmmword_261415DF0;
      v57 = v58;
      RoseSyntheticApertureFiltering::measModelAoA(a2, (v28 + 4), (v28 + 12), &v59, &v54);
      v30 = v28[3];
      v31 = v28[1];
      v32 = cnmatrix::CNMatrixBase<double>::operator()(&v59, 0);
      v33 = 1.0 / v30;
      v34 = fmod(v30 * v31 - *v32 + 3.14159265, 6.28318531);
      if (v34 < 0.0)
      {
        v34 = v34 + 6.28318531;
      }

      v64[0] = v33 * (v34 + -3.14159265);
      v35 = v28[2];
      v53 = v35 - v33 * *cnmatrix::CNMatrixBase<double>::operator()(&v59, 1);
      v50 = 0x300000002;
      v48 = &unk_2873C42D0;
      v49 = xmmword_261415DF0;
      v51 = v52;
      cnmatrix::Multiply<double>(&v54, &v48, 1.0 / v30);
      v36 = 0;
      v45 = 0x200000003;
      v43 = &unk_2873C4318;
      v44 = xmmword_261415E00;
      v46 = v47;
      do
      {
        v37 = cnmatrix::CNMatrixBase<double>::operator()(&v48, 0, v36);
        *cnmatrix::CNMatrixBase<double>::operator()(&v43, v36, 0) = v37;
        v38 = cnmatrix::CNMatrixBase<double>::operator()(&v48, 1, v36);
        *cnmatrix::CNMatrixBase<double>::operator()(&v43, v36++, 1) = v38;
      }

      while (v36 != 3);
      v39 = a6[1];
      if (v39 >= a6[2])
      {
        v40 = std::vector<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::__emplace_back_slow_path<double const&,double const&,cnmatrix::CNMatrix<2u,3u,double> const&,cnmatrix::CNMatrix<3u,2u,double> &>(a6, v64, &v53, &v48, &v43);
      }

      else
      {
        RoseSyntheticApertureFiltering::InternalExpectedAoAMeas::InternalExpectedAoAMeas(a6[1], &v48, &v43, v64[0], v53);
        v40 = v39 + 192;
        a6[1] = v39 + 192;
      }

      a6[1] = v40;
      v28 += 26;
    }

    while (v28 != v29);
  }
}

uint64_t *std::vector<cnmatrix::CNMatrix<2u,1u,double>>::reserve(uint64_t *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x492492492492493)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cnmatrix::CNMatrix<2u,1u,double>>>(result, a2);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2613F586C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<cnmatrix::CNMatrix<2u,1u,double>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void cnmatrix::Eig<2u,2u,2u,2u,2u,2u,double>(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v36 = 0x200000002;
  v34 = &unk_2873C4508;
  v35 = xmmword_261415DD0;
  v37 = &v38;
  v31 = 0x200000002;
  v29 = &unk_2873C4508;
  v30 = xmmword_261415DD0;
  v32 = &v33;
  v26 = 0x200000002;
  v24 = &unk_2873C4508;
  v25 = xmmword_261415DD0;
  v27 = &v28;
  v21 = 0x100000002;
  v19 = &unk_2873C4478;
  v20 = xmmword_261415DB0;
  v22 = &v23;
  v16 = 0x200000002;
  v14 = &unk_2873C4508;
  v15 = xmmword_261415DD0;
  v17 = &v18;
  v11 = 0x1000000A8;
  v9 = &unk_2873C4598;
  v10 = xmmword_261415E10;
  v12 = &v13;
  cnmatrix::Eig<double>(a1, &v34, a3, &v29, a2, &v24, &v19, &v14, &v9);
  if (DWORD2(v30))
  {
    v3 = 0;
    while (1)
    {
      v4 = *cnmatrix::CNMatrixBase<double>::operator()(&v29, v3);
      if (v4 != 0.0)
      {
        break;
      }

      if (++v3 >= DWORD2(v30))
      {
        goto LABEL_6;
      }
    }

    v8 = 4;
    v7 = 2;
    cnprint::CNPrinter::Print(&v8, &v7, "Warning: Imaginary parts of complex eigenvalues are being ignored.", v4);
  }

LABEL_6:
  if (DWORD2(v25))
  {
    v5 = 0;
    while (1)
    {
      v6 = *cnmatrix::CNMatrixBase<double>::operator()(&v24, v5);
      if (v6 != 0.0)
      {
        break;
      }

      if (++v5 >= DWORD2(v25))
      {
        return;
      }
    }

    v8 = 4;
    v7 = 2;
    cnprint::CNPrinter::Print(&v8, &v7, "Warning: Imaginary parts of complex eigenvectors are being ignored.", v6);
  }
}

void std::vector<double>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t std::vector<RoseSyntheticApertureFiltering::InternalAoAMeas>::push_back[abi:ne200100](uint64_t *a1, _OWORD *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<RoseSyntheticApertureFiltering::InternalAoAMeas>::__emplace_back_slow_path<RoseSyntheticApertureFiltering::InternalAoAMeas const&>(a1, a2);
  }

  else
  {
    std::allocator<RoseSyntheticApertureFiltering::InternalAoAMeas>::construct[abi:ne200100]<RoseSyntheticApertureFiltering::InternalAoAMeas,RoseSyntheticApertureFiltering::InternalAoAMeas const&>(a1, a1[1], a2);
    result = v3 + 208;
    a1[1] = v3 + 208;
  }

  a1[1] = result;
  return result;
}

void RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::checkFoVBatchMultiple(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      v7 = *a1;
      v8 = a1[1];
      if (*a1 == v8)
      {
        goto LABEL_10;
      }

      v9 = 1;
      do
      {
        while (!v9)
        {
          v9 = 0;
          v7 += 64;
          if (v7 == v8)
          {
            goto LABEL_11;
          }
        }

        v9 = RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::checkFoV(v7, v3);
        v7 += 64;
      }

      while (v7 != v8);
      if (v9)
      {
LABEL_10:
        std::vector<RoseSyntheticApertureFiltering::InternalAoAMeas>::push_back[abi:ne200100](a3, v3);
      }

LABEL_11:
      v3 += 13;
    }

    while (v3 != v4);
  }
}

void sub_2613F5CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<RoseSyntheticApertureFiltering::InternalAoAMeas>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<RoseSyntheticApertureFiltering::BatchSolutionParticle>::__init_with_size[abi:ne200100]<RoseSyntheticApertureFiltering::BatchSolutionParticle*,RoseSyntheticApertureFiltering::BatchSolutionParticle*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<RoseSyntheticApertureFiltering::BatchSolutionParticle>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2613F5D44(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<RoseSyntheticApertureFiltering::BatchSolutionParticle>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::BatchSolutionParticle>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::BatchSolutionParticle>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t *std::vector<RoseSyntheticApertureFiltering::BatchSolutionParticle>::__assign_with_size[abi:ne200100]<RoseSyntheticApertureFiltering::BatchSolutionParticle*,RoseSyntheticApertureFiltering::BatchSolutionParticle*>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xCF3CF3CF3CF3CF3DLL * ((v7 - *result) >> 3) < a4)
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

    if (a4 <= 0x186186186186186)
    {
      v9 = 0xCF3CF3CF3CF3CF3DLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0xC30C30C30C30C3)
      {
        v11 = 0x186186186186186;
      }

      else
      {
        v11 = v10;
      }

      std::vector<RoseSyntheticApertureFiltering::BatchSolutionParticle>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xCF3CF3CF3CF3CF3DLL * ((v12 - v8) >> 3) >= a4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17 - 4);
    }

    v16 = &v8[v17];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13 - 4);
      v12 = v6[1];
    }

    v15 = (a3 - v14);
    if (a3 != v14)
    {
      result = memmove(v12, v14, (v15 - 4));
    }

    v16 = &v15[v12];
  }

  v6[1] = v16;
  return result;
}

BOOL std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_0,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(__int128 **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  v5 = (*a1)[1];
  v11 = *(*a1 + 4);
  v9 = v4;
  v10 = v5;
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v12, v2 + 40);
  v12[16] = *(v2 + 26);
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v8, v3 + 40);
  v8[16] = *(v3 + 104);
  v6 = cnmatrix::CNMatrixBase<double>::operator()(v12, 0);
  return v6 < cnmatrix::CNMatrixBase<double>::operator()(v8, 0);
}

BOOL std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_1,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(__int128 **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  v5 = (*a1)[1];
  v11 = *(*a1 + 4);
  v9 = v4;
  v10 = v5;
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v12, v2 + 40);
  v12[16] = *(v2 + 26);
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v8, v3 + 40);
  v8[16] = *(v3 + 104);
  v6 = cnmatrix::CNMatrixBase<double>::operator()(v12, 1);
  return v6 < cnmatrix::CNMatrixBase<double>::operator()(v8, 1);
}

BOOL std::_MinmaxElementLessFunc<RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::spatialBinning(std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>)::$_2,std::__identity>::operator()[abi:ne200100]<std::__wrap_iter<RoseSyntheticApertureFiltering::InternalRangeMeas const*>>(__int128 **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  v5 = (*a1)[1];
  v11 = *(*a1 + 4);
  v9 = v4;
  v10 = v5;
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v12, v2 + 40);
  v12[16] = *(v2 + 26);
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v8, v3 + 40);
  v8[16] = *(v3 + 104);
  v6 = cnmatrix::CNMatrixBase<double>::operator()(v12, 2);
  return v6 < cnmatrix::CNMatrixBase<double>::operator()(v8, 2);
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

double *std::__minmax_element_impl[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>,std::__identity,std::__less<void,void>>(double *result, double *a2)
{
  v2 = result;
  if (result != a2 && result + 1 != a2)
  {
    v5 = *result;
    v4 = result[1];
    if (v4 < *result)
    {
      ++result;
    }

    v6 = v4 >= *v2 ? v2 + 1 : v2;
    v7 = v2 + 2;
    if (v7 != a2)
    {
      if (v4 >= v5)
      {
        v4 = v5;
      }

      while (v7 + 1 != a2)
      {
        v9 = *v7;
        v8 = v7[1];
        if (v8 >= *v7)
        {
          if (v9 < v4)
          {
            v4 = *v7;
            result = v7;
          }

          if (v8 >= *v6)
          {
            v6 = v7 + 1;
          }
        }

        else
        {
          v4 = *result;
          if (v8 < *result)
          {
            v4 = v7[1];
            result = v7 + 1;
          }

          if (v9 >= *v6)
          {
            v6 = v7;
          }
        }

        v7 += 2;
        if (v7 == a2)
        {
          return result;
        }
      }

      if (*v7 < *result)
      {
        return v7;
      }
    }
  }

  return result;
}

uint64_t cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x300000003;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_2873C4240;
  if (a2 > 3)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
    goto LABEL_6;
  }

  if (a3 >= 4)
  {
    v3 = "this->max_num_cols_ >= num_cols";
    v4 = 423;
LABEL_6:
    __assert_rtn("SetMatrixSize", "cnmatrixbase.h", v4, v3);
  }

  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a3 * a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

__n128 cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x100000003;
  *(a1 + 24) = 0x100000003;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2873C40E8;
  if (a1 == a2)
  {
    v16 = "this != &(A)";
    v17 = 603;
LABEL_21:
    v18 = "cnmatrix.h";
    v19 = "CNMatrix";
LABEL_22:
    __assert_rtn(v19, v18, v17, v16);
  }

  v3 = *(a2 + 8);
  if (v3 > 3)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
LABEL_18:
    v18 = "cnmatrixbase.h";
    v19 = "SetMatrixSize";
    goto LABEL_22;
  }

  v4 = *(a2 + 12);
  if (v4 >= 2)
  {
    v16 = "this->max_num_cols_ >= num_cols";
    v17 = 423;
    goto LABEL_18;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  v5 = v4 * v3;
  *(a1 + 16) = v5;
  *(a1 + 20) = v3;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (*(a2 + 8) > 3u)
  {
    v16 = "this->max_num_rows_ >= A.num_rows_";
    v17 = 616;
    goto LABEL_21;
  }

  if (*(a2 + 12) > 1u)
  {
    v16 = "this->max_num_cols_ >= A.num_cols_";
    v17 = 617;
    goto LABEL_21;
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v6 + 8 * v10);
    v13 = (v7 - 1) >> 1;
    v14 = v11;
    do
    {
      v15 = *v14++;
      *v6++ = v15;
      --v13;
    }

    while (v13);
    result = *(v11 + 8 * v10);
    *v12 = result;
  }

  else if (v5)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6 = v9;
      v6 = (v6 + 8);
      --v5;
    }

    while (v5);
  }

  return result;
}

__n128 cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x300000003;
  *(a1 + 24) = 0x300000003;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2873C4240;
  if (a1 == a2)
  {
    v16 = "this != &(A)";
    v17 = 603;
LABEL_21:
    v18 = "cnmatrix.h";
    v19 = "CNMatrix";
LABEL_22:
    __assert_rtn(v19, v18, v17, v16);
  }

  v3 = *(a2 + 8);
  if (v3 > 3)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
LABEL_18:
    v18 = "cnmatrixbase.h";
    v19 = "SetMatrixSize";
    goto LABEL_22;
  }

  v4 = *(a2 + 12);
  if (v4 >= 4)
  {
    v16 = "this->max_num_cols_ >= num_cols";
    v17 = 423;
    goto LABEL_18;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  v5 = v4 * v3;
  *(a1 + 16) = v5;
  *(a1 + 20) = v3;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (*(a2 + 8) > 3u)
  {
    v16 = "this->max_num_rows_ >= A.num_rows_";
    v17 = 616;
    goto LABEL_21;
  }

  if (*(a2 + 12) > 3u)
  {
    v16 = "this->max_num_cols_ >= A.num_cols_";
    v17 = 617;
    goto LABEL_21;
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v6 + 8 * v10);
    v13 = (v7 - 1) >> 1;
    v14 = v11;
    do
    {
      v15 = *v14++;
      *v6++ = v15;
      --v13;
    }

    while (v13);
    result = *(v11 + 8 * v10);
    *v12 = result;
  }

  else if (v5)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6 = v9;
      v6 = (v6 + 8);
      --v5;
    }

    while (v5);
  }

  return result;
}

void std::vector<RoseSyntheticApertureFiltering::InternalFilterState>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<RoseSyntheticApertureFiltering::InternalFilterState>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void boost::circular_buffer<double,std::allocator<double>>::destroy(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *a1;
  v6 = v3 - v2;
  v7 = (v3 - v5) >> 3;
  if (v4 < v6 >> 3)
  {
    v7 = 0;
  }

  *(a1 + 16) = v2 + 8 * (v4 - v7);
  if (v5)
  {
    operator delete(v5);
  }
}

void std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    if (v3 != v2)
    {
      v4 = v3 - 72;
      do
      {
        *(v3 - 9) = &unk_2873C4140;
        v4 -= 112;
        v3 -= 112;
      }

      while (v3 != v2);
    }

    v1[1] = v2;
    operator delete(v2);
  }
}

void std::vector<RoseSyntheticApertureFiltering::InternalAoAMeas>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    if (v3 != v2)
    {
      v4 = v3 - 176;
      do
      {
        *(v3 - 14) = &unk_2873C4140;
        *(v3 - 22) = &unk_2873C4140;
        v4 -= 208;
        v3 -= 208;
      }

      while (v3 != v2);
    }

    v1[1] = v2;
    operator delete(v2);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalRangeMeas>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalRangeMeas>,RoseSyntheticApertureFiltering::InternalRangeMeas*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    v7 = a2 + 40;
    do
    {
      v9 = *(v7 - 40);
      v10 = *(v7 - 24);
      *(a4 + 32) = *(v7 - 8);
      *a4 = v9;
      *(a4 + 16) = v10;
      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(a4 + 40, v7);
      v11 = v7 - 40;
      *(a4 + 104) = *(v7 + 64);
      a4 += 112;
      v6 -= 112;
      v7 += 112;
    }

    while (v11 + 112 != a3);
    if (v5 != a3)
    {
      v12 = v5 + 40;
      do
      {
        *(v5 + 40) = &unk_2873C4140;
        v5 += 112;
        v12 += 112;
      }

      while (v5 != a3);
    }
  }
}

void sub_2613F6AFC(_Unwind_Exception *a1)
{
  if (v2)
  {
    v3 = -v2;
    do
    {
      *(v1 - 72 + v3) = &unk_2873C4140;
      v3 -= 112;
    }

    while (v3);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<RoseSyntheticApertureFiltering::InternalRangeMeas>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = v3 - 72;
    do
    {
      *(v3 - 72) = &unk_2873C4140;
      v3 -= 112;
      v4 -= 112;
    }

    while (v3 != v2);
    *(a1 + 16) = v3;
  }

  v5 = *a1;
  if (*a1)
  {
    operator delete(v5);
  }

  return a1;
}

double *cnmatrix::Transpose<double>(_DWORD *a1, _DWORD *a2)
{
  if (a1 == a2)
  {
    cnmatrix::Transpose<double>();
  }

  result = cnmatrix::FastResize<double>(a2, a1[3], a1[2]);
  v5 = a2[2];
  if (v5)
  {
    v6 = 0;
    v7 = a2[3];
    do
    {
      if (v7)
      {
        for (i = 0; i != v7; ++i)
        {
          v9 = cnmatrix::CNMatrixBase<double>::operator()(a1, i, v6);
          result = cnmatrix::CNMatrixBase<double>::operator()(a2, v6, i);
          *result = v9;
        }
      }

      ++v6;
    }

    while (v6 != v5);
  }

  return result;
}

double cnmatrix::CNMatrixBase<double>::operator()(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    cnmatrix::CNMatrixBase<double>::operator()();
  }

  v4 = a2 + *(a1 + 20) * a3;
  if ((v4 & 0x80000000) != 0)
  {
    cnmatrix::CNMatrixBase<double>::operator()();
  }

  if (v4 >= *(a1 + 16))
  {
    cnmatrix::CNMatrixBase<double>::operator()();
  }

  return *(v3 + 8 * v4);
}

uint64_t cnmatrix::CNMatrixBase<double>::operator()(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    cnmatrix::CNMatrixBase<double>::operator()();
  }

  v4 = a2 + *(a1 + 20) * a3;
  if ((v4 & 0x80000000) != 0)
  {
    cnmatrix::CNMatrixBase<double>::operator()();
  }

  if (v4 >= *(a1 + 16))
  {
    cnmatrix::CNMatrixBase<double>::operator()();
  }

  return v3 + 8 * v4;
}

double cnmatrix::CNMatrixBase<double>::operator()(uint64_t a1, signed int a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    cnmatrix::CNMatrixBase<double>::operator()();
  }

  if (a2 < 0)
  {
    cnmatrix::CNMatrixBase<double>::operator()();
  }

  if (*(a1 + 16) <= a2)
  {
    cnmatrix::CNMatrixBase<double>::operator()();
  }

  return *(v2 + 8 * a2);
}

void std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(uint64_t a1, void *a2, __n128 a3)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(a1, *a2, a3);
    std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(a1, a2[1], v5);

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int>>(uint64_t a1, unsigned int *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 28);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__emplace_back_slow_path<RoseSyntheticApertureFiltering::InternalRangeMeas const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v6 = 0x249249249249249;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalRangeMeas>>(a1, v6);
  }

  v14 = 16 * ((a1[1] - *a1) >> 4);
  v7 = *a2;
  v8 = a2[1];
  *(v14 + 32) = *(a2 + 4);
  *v14 = v7;
  *(v14 + 16) = v8;
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(112 * v2 + 40, a2 + 40);
  *(v14 + 104) = *(a2 + 26);
  v9 = 112 * v2 + 112;
  v10 = a1[1];
  v11 = 112 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalRangeMeas>,RoseSyntheticApertureFiltering::InternalRangeMeas*>(a1, *a1, v10, v14 + *a1 - v10);
  v12 = *a1;
  *a1 = v11;
  a1[1] = v9;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_2613F7160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<RoseSyntheticApertureFiltering::InternalRangeMeas>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__init_with_size[abi:ne200100]<RoseSyntheticApertureFiltering::InternalRangeMeas*,RoseSyntheticApertureFiltering::InternalRangeMeas*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2613F71DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalRangeMeas>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalRangeMeas>,RoseSyntheticApertureFiltering::InternalRangeMeas*,RoseSyntheticApertureFiltering::InternalRangeMeas*,RoseSyntheticApertureFiltering::InternalRangeMeas*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a4;
  }

  v5 = 0;
  v6 = a2 + 40;
  v7 = a4;
  do
  {
    v8 = *(v6 - 40);
    v9 = *(v6 - 24);
    *(v7 + 32) = *(v6 - 8);
    *v7 = v8;
    *(v7 + 16) = v9;
    cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v7 + 40, v6);
    v10 = v6 - 40;
    *(v7 + 104) = *(v6 + 64);
    v7 += 112;
    v5 -= 112;
    v6 += 112;
  }

  while (v10 + 112 != a3);
  return v7;
}

void sub_2613F72E4(_Unwind_Exception *a1)
{
  if (v2)
  {
    v3 = -v2;
    do
    {
      *(v1 - 72 + v3) = &unk_2873C4140;
      v3 -= 112;
    }

    while (v3);
  }

  _Unwind_Resume(a1);
}

void std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__vdeallocate(char **a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = a1[1];
    if (v3 != v2)
    {
      v4 = v3 - 72;
      do
      {
        *(v3 - 9) = &unk_2873C4140;
        v4 -= 112;
        v3 -= 112;
      }

      while (v3 != v2);
    }

    a1[1] = v2;
    operator delete(v2);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__emplace_back_slow_path<RoseSyntheticApertureFiltering::InternalRangeMeas&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v6 = 0x249249249249249;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalRangeMeas>>(a1, v6);
  }

  v14 = 16 * ((a1[1] - *a1) >> 4);
  v7 = *a2;
  v8 = a2[1];
  *(v14 + 32) = *(a2 + 4);
  *v14 = v7;
  *(v14 + 16) = v8;
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(112 * v2 + 40, a2 + 40);
  *(v14 + 104) = *(a2 + 26);
  v9 = 112 * v2 + 112;
  v10 = a1[1];
  v11 = 112 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalRangeMeas>,RoseSyntheticApertureFiltering::InternalRangeMeas*>(a1, *a1, v10, v14 + *a1 - v10);
  v12 = *a1;
  *a1 = v11;
  a1[1] = v9;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_2613F74CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<RoseSyntheticApertureFiltering::InternalRangeMeas>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__assign_with_size[abi:ne200100]<RoseSyntheticApertureFiltering::InternalRangeMeas*,RoseSyntheticApertureFiltering::InternalRangeMeas*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__vdeallocate(a1);
    if (a4 <= 0x249249249249249)
    {
      v9 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 4)) >= 0x124924924924924)
      {
        v10 = 0x249249249249249;
      }

      else
      {
        v10 = v9;
      }

      std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8);
  if (0x6DB6DB6DB6DB6DB7 * ((v11 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        v15 = *v6;
        v16 = *(v6 + 16);
        *(v8 + 4) = *(v6 + 32);
        *v8 = v15;
        *(v8 + 1) = v16;
        cnmatrix::CNMatrixBase<double>::operator=((v8 + 40), v6 + 40);
        *(v8 + 26) = *(v6 + 104);
        v8 += 112;
        v6 += 112;
      }

      while (v6 != a3);
      v11 = *(a1 + 8);
    }

    if (v11 != v8)
    {
      v17 = v11 - 72;
      do
      {
        *(v11 - 72) = &unk_2873C4140;
        v17 -= 112;
        v11 -= 112;
      }

      while (v11 != v8);
    }

    *(a1 + 8) = v8;
  }

  else
  {
    v12 = a2 + v11 - v8;
    if (v11 != v8)
    {
      do
      {
        v13 = *v6;
        v14 = *(v6 + 16);
        *(v8 + 4) = *(v6 + 32);
        *v8 = v13;
        *(v8 + 1) = v14;
        cnmatrix::CNMatrixBase<double>::operator=((v8 + 40), v6 + 40);
        *(v8 + 26) = *(v6 + 104);
        v6 += 112;
        v8 += 112;
      }

      while (v6 != v12);
      v11 = *(a1 + 8);
    }

    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalRangeMeas>,RoseSyntheticApertureFiltering::InternalRangeMeas*,RoseSyntheticApertureFiltering::InternalRangeMeas*,RoseSyntheticApertureFiltering::InternalRangeMeas*>(a1, v12, a3, v11);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

_OWORD *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<RoseSyntheticApertureFiltering::InternalAoAMeas *,RoseSyntheticApertureFiltering::InternalAoAMeas *,RoseSyntheticApertureFiltering::InternalAoAMeas *>(uint64_t a1, _OWORD *a2, _OWORD *a3, _OWORD *a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    v7 = v5[1];
    *a4 = *v5;
    a4[1] = v7;
    cnmatrix::CNMatrixBase<double>::operator=((a4 + 2), (v5 + 2));
    cnmatrix::CNMatrixBase<double>::operator=((a4 + 6), (v5 + 6));
    a4 += 13;
    v5 += 13;
  }

  while (v5 != v6);
  return v6;
}

uint64_t std::vector<RoseSyntheticApertureFiltering::InternalRangeMeas>::__emplace_back_slow_path<RoseSyntheticApertureFiltering::InternalRangeMeas>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v6 = 0x249249249249249;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalRangeMeas>>(a1, v6);
  }

  v14 = 16 * ((a1[1] - *a1) >> 4);
  v7 = *a2;
  v8 = a2[1];
  *(v14 + 32) = *(a2 + 4);
  *v14 = v7;
  *(v14 + 16) = v8;
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(112 * v2 + 40, a2 + 40);
  *(v14 + 104) = *(a2 + 26);
  v9 = 112 * v2 + 112;
  v10 = a1[1];
  v11 = 112 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalRangeMeas>,RoseSyntheticApertureFiltering::InternalRangeMeas*>(a1, *a1, v10, v14 + *a1 - v10);
  v12 = *a1;
  *a1 = v11;
  a1[1] = v9;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_2613F78CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<RoseSyntheticApertureFiltering::InternalRangeMeas>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

double cnmatrix::CNMatrixBase<double>::operator()<int,int>(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    cnmatrix::CNMatrixBase<double>::operator()<int,int>();
  }

  v4 = a2 + *(a1 + 20) * a3;
  if ((v4 & 0x80000000) != 0)
  {
    cnmatrix::CNMatrixBase<double>::operator()<int,int>();
  }

  if (v4 >= *(a1 + 16))
  {
    cnmatrix::CNMatrixBase<double>::operator()<int,int>();
  }

  return *(v3 + 8 * v4);
}

void std::vector<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    if (v3 != v2)
    {
      v4 = v3 - 128;
      do
      {
        *(v3 - 8) = &unk_2873C4140;
        *(v3 - 16) = &unk_2873C4140;
        v4 -= 136;
        v3 -= 136;
      }

      while (v3 != v2);
    }

    v1[1] = v2;
    operator delete(v2);
  }
}

void std::vector<RoseSyntheticApertureFiltering::InternalExpectedAoAMeas>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    if (v3 != v2)
    {
      v4 = v3 - 176;
      do
      {
        *(v3 - 11) = &unk_2873C4140;
        *(v3 - 22) = &unk_2873C4140;
        v4 -= 192;
        v3 -= 192;
      }

      while (v3 != v2);
    }

    v1[1] = v2;
    operator delete(v2);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1E1E1E1E1E1E1E2)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>,RoseSyntheticApertureFiltering::InternalExpectedRangeMeas*>(uint64_t result, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0;
    v9 = a2;
    do
    {
      std::allocator<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::construct[abi:ne200100]<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas,RoseSyntheticApertureFiltering::InternalExpectedRangeMeas const&>(result, (a4 + v8), v9);
      v9 += 17;
      v8 += 136;
    }

    while (v9 != a3);
    if (v6 != a3)
    {
      v10 = v6 + 72;
      do
      {
        *(v6 + 72) = &unk_2873C4140;
        *(v6 + 8) = &unk_2873C4140;
        v6 += 136;
        v10 += 136;
      }

      while (v6 != a3);
    }
  }
}

void sub_2613F7B2C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>,RoseSyntheticApertureFiltering::InternalExpectedRangeMeas*>();
  }

  _Unwind_Resume(exception_object);
}

double std::allocator<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::construct[abi:ne200100]<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas,RoseSyntheticApertureFiltering::InternalExpectedRangeMeas const&>(uint64_t a1, void *a2, void *a3)
{
  v3 = a3 + 9;
  *a2 = *a3;
  v4 = a2 + 9;
  cnmatrix::CNMatrix<1u,3u,double>::CNMatrix((a2 + 1), (a3 + 1));
  *&result = cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v4, v3).n128_u64[0];
  return result;
}

__n128 cnmatrix::CNMatrix<1u,3u,double>::CNMatrix(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x300000001;
  *(a1 + 24) = 0x300000001;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2873C4288;
  if (a1 == a2)
  {
    v16 = "this != &(A)";
    v17 = 603;
LABEL_21:
    v18 = "cnmatrix.h";
    v19 = "CNMatrix";
LABEL_22:
    __assert_rtn(v19, v18, v17, v16);
  }

  v3 = *(a2 + 8);
  if (v3 > 1)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
LABEL_18:
    v18 = "cnmatrixbase.h";
    v19 = "SetMatrixSize";
    goto LABEL_22;
  }

  v4 = *(a2 + 12);
  if (v4 >= 4)
  {
    v16 = "this->max_num_cols_ >= num_cols";
    v17 = 423;
    goto LABEL_18;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  v5 = v4 * v3;
  *(a1 + 16) = v5;
  *(a1 + 20) = v3;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (*(a2 + 8) > 1u)
  {
    v16 = "this->max_num_rows_ >= A.num_rows_";
    v17 = 616;
    goto LABEL_21;
  }

  if (*(a2 + 12) > 3u)
  {
    v16 = "this->max_num_cols_ >= A.num_cols_";
    v17 = 617;
    goto LABEL_21;
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v6 + 8 * v10);
    v13 = (v7 - 1) >> 1;
    v14 = v11;
    do
    {
      v15 = *v14++;
      *v6++ = v15;
      --v13;
    }

    while (v13);
    result = *(v11 + 8 * v10);
    *v12 = result;
  }

  else if (v5)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6 = v9;
      v6 = (v6 + 8);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t std::__split_buffer<RoseSyntheticApertureFiltering::InternalExpectedRangeMeas>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = v3 - 128;
    do
    {
      *(v3 - 64) = &unk_2873C4140;
      *(v3 - 128) = &unk_2873C4140;
      v3 -= 136;
      v4 -= 136;
    }

    while (v3 != v2);
    *(a1 + 16) = v3;
  }

  v5 = *a1;
  if (*a1)
  {
    operator delete(v5);
  }

  return a1;
}

cnprint::CNPrinter *cnmatrix::Inv<double>(unsigned int *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (a1 == a3)
  {
    cnmatrix::Inv<double>();
  }

  if (a1 == a4)
  {
    cnmatrix::Inv<double>();
  }

  if (a3 == a4)
  {
    cnmatrix::Inv<double>();
  }

  v7 = a1[2];
  if (v7 != a1[3])
  {
    cnmatrix::Inv<double>();
  }

  if (*(a2 + 28) * *(a2 + 24) < v7)
  {
    cnmatrix::Inv<double>();
  }

  if (*(a3 + 28) * *(a3 + 24) < 4 * v7)
  {
    cnmatrix::Inv<double>();
  }

  if (a4[6] < v7)
  {
    cnmatrix::Inv<double>();
  }

  if (a4[7] < v7)
  {
    cnmatrix::Inv<double>();
  }

  cnmatrix::CNMatrixBase<double>::operator=(a4, a1);
  v8 = a4[2];
  v9 = a4[3];
  v10 = a4[5];
  v11 = *(a2 + 32);
  v24 = a4[3];
  v25 = v8;
  if (v8 < 1)
  {
    cnmatrix::Inv<double>(-1);
  }

  v12 = 4 * v8;
  v13 = operator new[](4 * v8, MEMORY[0x277D826F0]);
  if (!v13)
  {
    cnmatrix::Inv<double>(-5);
  }

  v14 = v13;
  dgetrf_NEWLAPACK();
  memcpy(v11, v14, v12);
  MEMORY[0x266701580](v14, 0x1000C8052888210);
  v15 = *(a3 + 28) * *(a3 + 24);
  v24 = v10;
  v25 = v9;
  if (v9 < 1)
  {
    v22 = -1;
LABEL_16:
    LOWORD(v25) = 4;
    LOBYTE(v24) = 5;
    result = cnprint::CNPrinter::Print(&v25, &v24, "Error using Inv: input argument %d invalid in getri.", -v22);
    v20 = 1;
    v21 = 1;
    goto LABEL_17;
  }

  v16 = 4 * v9;
  v17 = operator new[](v16, MEMORY[0x277D826F0]);
  if (!v17)
  {
    v22 = -4;
    goto LABEL_16;
  }

  v18 = v17;
  memcpy(v17, v11, v16);
  dgetri_NEWLAPACK();
  result = MEMORY[0x266701580](v18, 0x1000C8052888210);
  v20 = 0;
  v21 = 0;
LABEL_17:
  v23 = **(a3 + 32);
  if (v15 < v23)
  {
    result = cnprint::CNPrinter::GetLogLevel(result);
    if (result <= 1)
    {
      LOWORD(v25) = 4;
      LOBYTE(v24) = 1;
      result = cnprint::CNPrinter::Print(&v25, &v24, "Warning: Inv optimal workspace size %d is greater than provided workspace size %d; performance may suffer.", v23, v15);
    }
  }

  if (v20)
  {
    cnmatrix::Inv<double>();
  }

  if (v21)
  {
    return cnmatrix::CNMatrixBase<double>::WriteValue(a4, INFINITY);
  }

  return result;
}

void cnmatrix::CNMatrix<3u,1u,int>::TransposeDataFootprint(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= 2)
  {
    v4 = *(a1 + 12);
    if (v4 >= 2)
    {
      if (!a2)
      {
        cnmatrix::CNMatrix<3u,1u,double>::TransposeDataFootprint();
      }

      v6 = v4 + v2 - *(a1 + 20);
      if (v6 <= 0)
      {
        cnmatrix::CNMatrix<3u,1u,double>::TransposeDataFootprint();
      }

      bzero(a2, *(a1 + 16));
      v7 = *(a1 + 16);
      if (v7 >= 3)
      {
        v8 = (v7 - 1);
        v9 = *(a1 + 32);
        v10 = 1;
        do
        {
          v11 = &a2[v10];
          if ((a2[v10] & 1) == 0)
          {
            v12 = *(v9 + 4 * v10);
            v13 = v10;
            do
            {
              v13 = v13 * v6 % v8;
              v14 = *(v9 + 4 * v13);
              *(v9 + 4 * v13) = v12;
              *v11 = 1;
              v11 = &a2[v13];
              v12 = v14;
            }

            while (!*v11);
          }

          ++v10;
        }

        while (v10 != v8);
      }
    }
  }
}

void std::vector<cnmatrix::CNMatrix<3u,1u,double>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 8;
      v7 = v4 - 8;
      v8 = v4 - 8;
      do
      {
        v9 = *v8;
        v8 -= 8;
        (*v9)(v7);
        v6 -= 8;
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

uint64_t std::vector<cnmatrix::CNMatrix<3u,1u,double>>::__emplace_back_slow_path<cnmatrix::CNMatrix<3u,1u,double> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<cnmatrix::CNMatrix<3u,1u,double>>>(a1, v7);
  }

  v14 = 0;
  v15 = (v2 << 6);
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v2 << 6, a2);
  v16 = ((v2 << 6) + 64);
  v8 = a1[1];
  v9 = (v2 << 6) + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cnmatrix::CNMatrix<3u,1u,double>>,cnmatrix::CNMatrix<3u,1u,double>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<cnmatrix::CNMatrix<3u,1u,double>>::~__split_buffer(&v14);
  return v13;
}

void sub_2613F845C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<cnmatrix::CNMatrix<3u,1u,double>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<cnmatrix::CNMatrix<3u,1u,double>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cnmatrix::CNMatrix<3u,1u,double>>,cnmatrix::CNMatrix<3u,1u,double>*>(uint64_t a1, void (***a2)(void, __n128), void (***a3)(void, __n128), uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      v9 = cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(a4 + v7, v8);
      v8 += 8;
      v7 += 64;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v10 = v6;
      v11 = v6;
      do
      {
        v12 = *v11;
        v11 += 8;
        (*v12)(v6, v9);
        v10 += 8;
        v6 = v11;
      }

      while (v11 != a3);
    }
  }
}

void sub_2613F8564(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cnmatrix::CNMatrix<3u,1u,double>>,cnmatrix::CNMatrix<3u,1u,double>*>(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<cnmatrix::CNMatrix<3u,1u,double>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 64);
    *(a1 + 16) = i - 64;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::__construct_one_at_end[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v4 + 8, a2 + 8);
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v4 + 72, a2 + 72);
  cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v4 + 136, a2 + 136);
  cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v4 + 248, a2 + 248);
  v5 = *(a2 + 360);
  *(v4 + 368) = *(a2 + 368);
  *(v4 + 360) = v5;
  *(a1 + 8) = v4 + 376;
}

void sub_2613F86D0(_Unwind_Exception *a1)
{
  *v4 = &unk_2873C4140;
  *v3 = &unk_2873C4140;
  *v2 = &unk_2873C4140;
  *(v1 + 8) = v5;
  _Unwind_Resume(a1);
}

uint64_t std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::__emplace_back_slow_path<RoseSyntheticApertureFiltering::FilterInitializationResult>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x51B3BEA3677D46CFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xAE4C415C9882B9)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0xA3677D46CEFA8D9ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xA3677D46CEFA8D9ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x51B3BEA3677D46CFLL * ((a1[2] - *a1) >> 3)) >= 0x572620AE4C415CLL)
  {
    v6 = 0xAE4C415C9882B9;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::FilterInitializationResult>>(a1, v6);
  }

  v15 = 0;
  v16 = 376 * v2;
  v17 = (376 * v2);
  v7 = 376 * v2;
  *v7 = *a2;
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(376 * v2 + 8, a2 + 8);
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(376 * v2 + 72, a2 + 72);
  cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(376 * v2 + 136, a2 + 136);
  cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(376 * v2 + 248, a2 + 248);
  v8 = *(a2 + 360);
  *(v7 + 368) = *(a2 + 368);
  *(v7 + 360) = v8;
  *&v17 = v17 + 376;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::FilterInitializationResult>,RoseSyntheticApertureFiltering::FilterInitializationResult*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<RoseSyntheticApertureFiltering::FilterInitializationResult>::~__split_buffer(&v15);
  return v14;
}

void sub_2613F88BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  *v9 = &unk_2873C4140;
  *v8 = &unk_2873C4140;
  *v7 = &unk_2873C4140;
  std::__split_buffer<RoseSyntheticApertureFiltering::FilterInitializationResult>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::FilterInitializationResult>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAE4C415C9882BALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<RoseSyntheticApertureFiltering::FilterInitializationResult>,RoseSyntheticApertureFiltering::FilterInitializationResult*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<RoseSyntheticApertureFiltering::FilterInitializationResult>>::construct[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult,RoseSyntheticApertureFiltering::FilterInitializationResult const&,0>(a1, a4, v7);
      v7 += 47;
      a4 = v13 + 376;
      v13 += 376;
    }

    while (v7 != a3);
    v11 = 1;
    if (v5 != a3)
    {
      v8 = v5 + 31;
      do
      {
        v5[31] = &unk_2873C4140;
        v5[17] = &unk_2873C4140;
        v5[9] = &unk_2873C4140;
        v5[1] = &unk_2873C4140;
        v5 += 47;
        v8 += 47;
      }

      while (v5 != a3);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<RoseSyntheticApertureFiltering::FilterInitializationResult>,RoseSyntheticApertureFiltering::FilterInitializationResult*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

void std::allocator_traits<std::allocator<RoseSyntheticApertureFiltering::FilterInitializationResult>>::construct[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult,RoseSyntheticApertureFiltering::FilterInitializationResult const&,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 + 72;
  *a2 = *a3;
  v6 = a2 + 72;
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(a2 + 8, a3 + 8);
  cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v6, v5);
  cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(a2 + 136, a3 + 136);
  cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(a2 + 248, a3 + 248);
  v7 = *(a3 + 360);
  *(a2 + 368) = *(a3 + 368);
  *(a2 + 360) = v7;
}

void sub_2613F8B70(_Unwind_Exception *a1)
{
  *v3 = &unk_2873C4140;
  *v2 = &unk_2873C4140;
  *v1 = &unk_2873C4140;
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<RoseSyntheticApertureFiltering::FilterInitializationResult>,RoseSyntheticApertureFiltering::FilterInitializationResult*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<RoseSyntheticApertureFiltering::FilterInitializationResult>,RoseSyntheticApertureFiltering::FilterInitializationResult*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::_AllocatorDestroyRangeReverse<std::allocator<RoseSyntheticApertureFiltering::FilterInitializationResult>,RoseSyntheticApertureFiltering::FilterInitializationResult*>::operator()[abi:ne200100](uint64_t result)
{
  v1 = **(result + 16);
  v2 = **(result + 8);
  if (v1 != v2)
  {
    v3 = v1 - 46;
    v4 = v3;
    do
    {
      v4[30] = &unk_2873C4140;
      v4[16] = &unk_2873C4140;
      v4[8] = &unk_2873C4140;
      *v4 = &unk_2873C4140;
      v5 = v4 - 1;
      v4 -= 47;
      v3 -= 47;
    }

    while (v5 != v2);
  }

  return result;
}

uint64_t std::__split_buffer<RoseSyntheticApertureFiltering::FilterInitializationResult>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<RoseSyntheticApertureFiltering::FilterInitializationResult>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<RoseSyntheticApertureFiltering::FilterInitializationResult>::__destruct_at_end[abi:ne200100](uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = v2 - 46;
    v4 = v3;
    do
    {
      v4[30] = &unk_2873C4140;
      v4[16] = &unk_2873C4140;
      v4[8] = &unk_2873C4140;
      *v4 = &unk_2873C4140;
      v5 = v4 - 47;
      v6 = v4 - 1;
      v3 -= 47;
      v4 -= 47;
    }

    while (v6 != a2);
    *(result + 16) = v5 + 46;
  }

  return result;
}

uint64_t std::vector<RoseSyntheticApertureFiltering::FilterInitializationResult>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != a2)
  {
    v3 = v2 - 128;
    do
    {
      *(v2 - 128) = &unk_2873C4140;
      *(v2 - 240) = &unk_2873C4140;
      *(v2 - 304) = &unk_2873C4140;
      *(v2 - 368) = &unk_2873C4140;
      v3 -= 376;
      v2 -= 376;
    }

    while (v2 != a2);
  }

  *(result + 8) = a2;
  return result;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    *a4 = *v5;
    cnmatrix::CNMatrixBase<double>::operator=(a4 + 8, v5 + 8);
    cnmatrix::CNMatrixBase<double>::operator=(a4 + 72, v5 + 72);
    cnmatrix::CNMatrixBase<double>::operator=(a4 + 136, v5 + 136);
    cnmatrix::CNMatrixBase<double>::operator=(a4 + 248, v5 + 248);
    v7 = *(v5 + 368);
    *(a4 + 360) = *(v5 + 360);
    *(a4 + 368) = v7;
    a4 += 376;
    v5 += 376;
  }

  while (v5 != v6);
  return v6;
}

double std::__introsort<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_2 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,false>(double *a1, double *a2, uint64_t a3, char a4, __n128 a5)
{
LABEL_1:
  v8 = a2;
  v122 = a2 - 49;
  v123 = (a2 - 47);
  v121 = a2 - 96;
  v9 = a1;
  while (1)
  {
    a1 = v9;
    v10 = v8 - v9;
    v11 = 0x51B3BEA3677D46CFLL * (v8 - v9);
    v12 = v11 - 2;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return a5.n128_f64[0];
      }

      v8 = a2;
      if (v11 == 2)
      {
        a5.n128_f64[0] = *(a2 - 2);
        if (a5.n128_f64[0] >= a1[45])
        {
          return a5.n128_f64[0];
        }

LABEL_110:
        v70 = a1;
LABEL_111:
        v71 = a2 - 47;
LABEL_112:
        std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v70, v71);
        return a5.n128_f64[0];
      }

      goto LABEL_9;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_2 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,0>(a1, (a1 + 47), (a1 + 94), v123);
      return a5.n128_f64[0];
    }

    if (v11 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_2 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,0>(a1, (a1 + 47), (a1 + 94), (a1 + 141));
      a5.n128_f64[0] = *(v8 - 2);
      if (a5.n128_f64[0] >= a1[186])
      {
        return a5.n128_f64[0];
      }

      std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a1 + 1128, v123);
      a5.n128_f64[0] = a1[186];
      if (a5.n128_f64[0] >= a1[139])
      {
        return a5.n128_f64[0];
      }

      std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a1 + 752, a1 + 1128);
      a5.n128_f64[0] = a1[139];
      if (a5.n128_f64[0] >= a1[92])
      {
        return a5.n128_f64[0];
      }

      v67 = (a1 + 47);
      v68 = a1 + 94;
      goto LABEL_163;
    }

LABEL_9:
    if (v10 <= 9023)
    {
      if (a4)
      {
        if (a1 != v8)
        {
          v72 = a1 + 47;
          if (a1 + 47 != a2)
          {
            v73 = 0;
            v74 = a1;
            do
            {
              v75 = v72;
              a5.n128_f64[0] = v74[92];
              if (a5.n128_f64[0] < v74[45])
              {
                v133 = *v72;
                cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v134, (v74 + 48));
                cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v135, (v74 + 56));
                cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v136, (v74 + 64));
                cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v137, (v74 + 78));
                v138 = v74[92];
                v139 = *(v74 + 186);
                v76 = v73;
                while (1)
                {
                  v77 = a1 + v76;
                  *(a1 + v76 + 376) = *(a1 + v76);
                  cnmatrix::CNMatrixBase<double>::operator=(a1 + v76 + 384, a1 + v76 + 8);
                  cnmatrix::CNMatrixBase<double>::operator=((v77 + 448), (v77 + 72));
                  cnmatrix::CNMatrixBase<double>::operator=((v77 + 512), (v77 + 136));
                  cnmatrix::CNMatrixBase<double>::operator=((v77 + 624), (v77 + 248));
                  *(v77 + 92) = *(v77 + 45);
                  *(v77 + 186) = *(v77 + 92);
                  if (!v76)
                  {
                    break;
                  }

                  v76 -= 376;
                  if (v138 >= *(v77 - 2))
                  {
                    v78 = (a1 + v76 + 376);
                    goto LABEL_124;
                  }
                }

                v78 = a1;
LABEL_124:
                *v78 = v133;
                cnmatrix::CNMatrixBase<double>::operator=((v77 + 8), v134);
                cnmatrix::CNMatrixBase<double>::operator=((v77 + 72), v135);
                cnmatrix::CNMatrixBase<double>::operator=((v77 + 136), v136);
                a5.n128_u64[0] = cnmatrix::CNMatrixBase<double>::operator=((v77 + 248), v137).n128_u64[0];
                v79 = v139;
                *(v77 + 45) = v138;
                *(v77 + 92) = v79;
              }

              v72 = v75 + 47;
              v73 += 376;
              v74 = v75;
            }

            while (v75 + 47 != a2);
          }
        }
      }

      else if (a1 != v8)
      {
        v114 = a1 + 47;
        if (a1 + 47 != a2)
        {
          v115 = a1 - 2;
          do
          {
            v116 = v114;
            a5.n128_f64[0] = a1[92];
            if (a5.n128_f64[0] < a1[45])
            {
              v133 = *v114;
              cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v134, (a1 + 48));
              cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v135, (a1 + 56));
              cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v136, (a1 + 64));
              cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v137, (a1 + 78));
              v138 = a1[92];
              v139 = *(a1 + 186);
              v117 = v115;
              do
              {
                *(v117 + 392) = *(v117 + 16);
                cnmatrix::CNMatrixBase<double>::operator=((v117 + 50), (v117 + 3));
                cnmatrix::CNMatrixBase<double>::operator=((v117 + 58), (v117 + 11));
                cnmatrix::CNMatrixBase<double>::operator=((v117 + 66), (v117 + 19));
                cnmatrix::CNMatrixBase<double>::operator=((v117 + 80), (v117 + 33));
                *(v117 + 190) = *(v117 + 96);
                v117[94] = v117[47];
                v118 = *v117;
                v117 -= 47;
              }

              while (v138 < v118);
              *(v117 + 392) = v133;
              cnmatrix::CNMatrixBase<double>::operator=((v117 + 50), v134);
              cnmatrix::CNMatrixBase<double>::operator=((v117 + 58), v135);
              cnmatrix::CNMatrixBase<double>::operator=((v117 + 66), v136);
              a5.n128_u64[0] = cnmatrix::CNMatrixBase<double>::operator=((v117 + 80), v137).n128_u64[0];
              v119 = v139;
              v117[94] = v138;
              *(v117 + 190) = v119;
            }

            v114 = v116 + 47;
            v115 += 47;
            a1 = v116;
          }

          while (v116 + 47 != a2);
        }
      }

      return a5.n128_f64[0];
    }

    if (!a3)
    {
      if (a1 != v8)
      {
        v80 = v12 >> 1;
        v81 = v12 >> 1;
        do
        {
          v82 = v81;
          if (v80 >= v81)
          {
            v83 = (2 * v81) | 1;
            v84 = &a1[47 * v83];
            if (2 * v81 + 2 < v11 && v84[45] < v84[92])
            {
              v84 += 47;
              v83 = 2 * v81 + 2;
            }

            v85 = &a1[47 * v81];
            if (v84[45] >= v85[45])
            {
              v133 = *v85;
              cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v134, (v85 + 1));
              cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v135, (v85 + 9));
              cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v136, (v85 + 17));
              cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v137, (v85 + 31));
              v86 = v85[45];
              v139 = *(v85 + 92);
              v138 = v86;
              do
              {
                v87 = v84;
                *v85 = *v84;
                cnmatrix::CNMatrixBase<double>::operator=((v85 + 1), (v84 + 1));
                cnmatrix::CNMatrixBase<double>::operator=((v85 + 9), (v84 + 9));
                cnmatrix::CNMatrixBase<double>::operator=((v85 + 17), (v84 + 17));
                cnmatrix::CNMatrixBase<double>::operator=((v85 + 31), (v84 + 31));
                v88 = *(v84 + 92);
                v85[45] = v84[45];
                *(v85 + 92) = v88;
                if (v80 < v83)
                {
                  break;
                }

                v89 = 2 * v83;
                v83 = (2 * v83) | 1;
                v84 = &a1[47 * v83];
                v90 = v89 + 2;
                if (v90 < v11 && v84[45] < v84[92])
                {
                  v84 += 47;
                  v83 = v90;
                }

                v85 = v87;
              }

              while (v84[45] >= v138);
              *v87 = v133;
              cnmatrix::CNMatrixBase<double>::operator=((v87 + 1), v134);
              cnmatrix::CNMatrixBase<double>::operator=((v87 + 9), v135);
              cnmatrix::CNMatrixBase<double>::operator=((v87 + 17), v136);
              cnmatrix::CNMatrixBase<double>::operator=((v87 + 31), v137);
              v91 = v139;
              v87[45] = v138;
              *(v87 + 92) = v91;
            }
          }

          v81 = v82 - 1;
        }

        while (v82);
        v92 = 0x51B3BEA3677D46CFLL * (v10 >> 3);
        do
        {
          v93 = a2;
          v126 = *a1;
          cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v127, (a1 + 1));
          cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v128, (a1 + 9));
          cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v129, (a1 + 17));
          cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v130, (a1 + 31));
          v94 = 0;
          v95 = *(a1 + 45);
          v132 = *(a1 + 92);
          v131 = v95;
          v96 = a1;
          do
          {
            v97 = &v96[47 * v94];
            v98 = v97 + 47;
            if (2 * v94 + 2 >= v92)
            {
              v94 = (2 * v94) | 1;
            }

            else
            {
              v99 = v97[92];
              v100 = v97[139];
              v101 = v97 + 94;
              if (v99 >= v100)
              {
                v94 = (2 * v94) | 1;
              }

              else
              {
                v98 = v101;
                v94 = 2 * v94 + 2;
              }
            }

            *v96 = *v98;
            cnmatrix::CNMatrixBase<double>::operator=((v96 + 1), (v98 + 1));
            cnmatrix::CNMatrixBase<double>::operator=((v96 + 9), (v98 + 9));
            cnmatrix::CNMatrixBase<double>::operator=((v96 + 17), (v98 + 17));
            cnmatrix::CNMatrixBase<double>::operator=((v96 + 31), (v98 + 31));
            v102 = *(v98 + 92);
            v96[45] = v98[45];
            *(v96 + 92) = v102;
            v96 = v98;
          }

          while (v94 <= ((v92 - 2) >> 1));
          v124 = v98 + 45;
          a2 -= 47;
          if (v98 == v93 - 47)
          {
            *v98 = v126;
            cnmatrix::CNMatrixBase<double>::operator=((v98 + 1), v127);
            cnmatrix::CNMatrixBase<double>::operator=((v98 + 9), v128);
            cnmatrix::CNMatrixBase<double>::operator=((v98 + 17), v129);
            a5.n128_u64[0] = cnmatrix::CNMatrixBase<double>::operator=((v98 + 31), v130).n128_u64[0];
            v112 = v132;
            *v124 = v131;
            *(v98 + 92) = v112;
          }

          else
          {
            *v98 = *(v93 - 376);
            cnmatrix::CNMatrixBase<double>::operator=((v98 + 1), (v93 - 46));
            cnmatrix::CNMatrixBase<double>::operator=((v98 + 9), (v93 - 38));
            cnmatrix::CNMatrixBase<double>::operator=((v98 + 17), (v93 - 30));
            cnmatrix::CNMatrixBase<double>::operator=((v98 + 31), (v93 - 16));
            v103 = *(v93 - 2);
            *(v98 + 92) = *(v93 - 2);
            *v124 = v103;
            *(v93 - 376) = v126;
            cnmatrix::CNMatrixBase<double>::operator=((v93 - 46), v127);
            cnmatrix::CNMatrixBase<double>::operator=((v93 - 38), v128);
            cnmatrix::CNMatrixBase<double>::operator=((v93 - 30), v129);
            a5.n128_u64[0] = cnmatrix::CNMatrixBase<double>::operator=((v93 - 16), v130).n128_u64[0];
            v104 = v132;
            *(v93 - 2) = v131;
            *(v93 - 2) = v104;
            v105 = v98 - a1 + 376;
            if (v105 >= 377)
            {
              v106 = (0x51B3BEA3677D46CFLL * (v105 >> 3) - 2) >> 1;
              v107 = &a1[47 * v106];
              a5.n128_f64[0] = v107[45];
              if (a5.n128_f64[0] < *v124)
              {
                v133 = *v98;
                cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v134, (v98 + 1));
                cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v135, (v98 + 9));
                cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v136, (v98 + 17));
                cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v137, (v98 + 31));
                v108 = *v124;
                v139 = *(v98 + 92);
                v138 = v108;
                do
                {
                  v109 = v107;
                  *v98 = *v107;
                  cnmatrix::CNMatrixBase<double>::operator=((v98 + 1), (v107 + 1));
                  cnmatrix::CNMatrixBase<double>::operator=((v98 + 9), (v107 + 9));
                  cnmatrix::CNMatrixBase<double>::operator=((v98 + 17), (v107 + 17));
                  cnmatrix::CNMatrixBase<double>::operator=((v98 + 31), (v107 + 31));
                  v110 = *(v107 + 92);
                  v98[45] = v107[45];
                  *(v98 + 92) = v110;
                  if (!v106)
                  {
                    break;
                  }

                  v106 = (v106 - 1) >> 1;
                  v107 = &a1[47 * v106];
                  v98 = v109;
                }

                while (v107[45] < v138);
                *v109 = v133;
                cnmatrix::CNMatrixBase<double>::operator=((v109 + 1), v134);
                cnmatrix::CNMatrixBase<double>::operator=((v109 + 9), v135);
                cnmatrix::CNMatrixBase<double>::operator=((v109 + 17), v136);
                a5.n128_u64[0] = cnmatrix::CNMatrixBase<double>::operator=((v109 + 31), v137).n128_u64[0];
                v111 = v139;
                v109[45] = v138;
                *(v109 + 92) = v111;
              }
            }
          }
        }

        while (v92-- > 2);
      }

      return a5.n128_f64[0];
    }

    v13 = v11 >> 1;
    v14 = &a1[47 * (v11 >> 1)];
    v15 = *(v8 - 2);
    if (v10 >= 0xBC01)
    {
      v16 = v14[45];
      if (v16 >= a1[45])
      {
        if (v15 < v16)
        {
          std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v14, v123);
          if (v14[45] < a1[45])
          {
            v17 = a1;
            v18 = v14;
            goto LABEL_25;
          }
        }
      }

      else
      {
        v17 = a1;
        if (v15 < v16)
        {
          goto LABEL_16;
        }

        std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a1, v14);
        if (*(v8 - 2) < v14[45])
        {
          v17 = v14;
LABEL_16:
          v18 = (a2 - 47);
LABEL_25:
          std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v17, v18);
        }
      }

      v22 = &a1[47 * v13];
      v23 = v22 - 47;
      v24 = *(v22 - 2);
      v25 = *v122;
      if (v24 >= a1[92])
      {
        if (v25 < v24)
        {
          std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v23, a2 - 752);
          if (v23[45] < a1[92])
          {
            v26 = (a1 + 47);
            v27 = v23;
            goto LABEL_37;
          }
        }
      }

      else
      {
        v26 = (a1 + 47);
        if (v25 < v24)
        {
          goto LABEL_30;
        }

        std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v26, v23);
        if (*v122 < v23[45])
        {
          v26 = v23;
LABEL_30:
          v27 = (a2 - 94);
LABEL_37:
          std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v26, v27);
        }
      }

      v28 = &a1[47 * v13];
      v29 = v28 + 47;
      v30 = v28[92];
      v31 = *v121;
      if (v30 >= a1[139])
      {
        if (v31 < v30)
        {
          std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v29, a2 - 1128);
          if (v29[45] < a1[139])
          {
            v32 = (a1 + 94);
            v33 = v29;
            goto LABEL_46;
          }
        }
      }

      else
      {
        v32 = (a1 + 94);
        if (v31 < v30)
        {
          goto LABEL_42;
        }

        std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v32, v29);
        if (*v121 < v29[45])
        {
          v32 = v29;
LABEL_42:
          v33 = (a2 - 141);
LABEL_46:
          std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v32, v33);
        }
      }

      v34 = v14[45];
      v35 = v29[45];
      if (v34 >= v23[45])
      {
        if (v35 < v34)
        {
          std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v14, v29);
          if (v14[45] < v23[45])
          {
            v36 = v23;
            v37 = v14;
            goto LABEL_55;
          }
        }
      }

      else
      {
        v36 = v23;
        if (v35 < v34)
        {
          goto LABEL_51;
        }

        std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v23, v14);
        if (v29[45] < v14[45])
        {
          v36 = v14;
LABEL_51:
          v37 = v29;
LABEL_55:
          std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v36, v37);
        }
      }

      v20 = a1;
      v21 = v14;
      goto LABEL_57;
    }

    v19 = a1[45];
    if (v19 >= v14[45])
    {
      if (v15 >= v19)
      {
        goto LABEL_58;
      }

      std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a1, v123);
      if (a1[45] >= v14[45])
      {
        goto LABEL_58;
      }

      v20 = v14;
      v21 = a1;
    }

    else
    {
      v20 = v14;
      if (v15 >= v19)
      {
        std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v14, a1);
        if (*(v8 - 2) >= a1[45])
        {
          goto LABEL_58;
        }

        v20 = a1;
      }

      v21 = a2 - 47;
    }

LABEL_57:
    std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v20, v21);
LABEL_58:
    --a3;
    if ((a4 & 1) != 0 || *(a1 - 2) < a1[45])
    {
      v133 = *a1;
      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v134, (a1 + 1));
      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v135, (a1 + 9));
      cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v136, (a1 + 17));
      cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v137, (a1 + 31));
      v38 = 0;
      v39 = a1[45];
      v139 = *(a1 + 92);
      v138 = v39;
      do
      {
        v40 = a1[v38 + 92];
        v38 += 47;
      }

      while (v40 < v138);
      v41 = &a1[v38];
      v42 = v8;
      if (v38 == 47)
      {
        v45 = a2;
        while (v41 < v45)
        {
          v43 = v45 - 47;
          v46 = *(v45 - 2);
          v45 -= 47;
          if (v46 < v138)
          {
            goto LABEL_70;
          }
        }

        v43 = v45;
      }

      else
      {
        do
        {
          v43 = v42 - 47;
          v44 = *(v42 - 2);
          v42 -= 47;
        }

        while (v44 >= v138);
      }

LABEL_70:
      v9 = v41;
      if (v41 < v43)
      {
        v47 = v43;
        do
        {
          std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v9, v47);
          do
          {
            v48 = v9[92];
            v9 += 47;
          }

          while (v48 < v138);
          do
          {
            v49 = *(v47 - 2);
            v47 -= 376;
          }

          while (v49 >= v138);
        }

        while (v9 < v47);
      }

      v50 = v9 - 47;
      if (v9 - 47 != a1)
      {
        *a1 = *v50;
        cnmatrix::CNMatrixBase<double>::operator=((a1 + 1), (v9 - 46));
        cnmatrix::CNMatrixBase<double>::operator=((a1 + 9), (v9 - 38));
        cnmatrix::CNMatrixBase<double>::operator=((a1 + 17), (v9 - 30));
        cnmatrix::CNMatrixBase<double>::operator=((a1 + 31), (v9 - 16));
        v51 = *(v9 - 2);
        a1[45] = *(v9 - 2);
        *(a1 + 92) = v51;
      }

      *v50 = v133;
      cnmatrix::CNMatrixBase<double>::operator=((v9 - 46), v134);
      cnmatrix::CNMatrixBase<double>::operator=((v9 - 38), v135);
      cnmatrix::CNMatrixBase<double>::operator=((v9 - 30), v136);
      a5 = cnmatrix::CNMatrixBase<double>::operator=((v9 - 16), v137);
      v52 = v139;
      *(v9 - 2) = v138;
      *(v9 - 2) = v52;
      v53 = v41 >= v43;
      v8 = a2;
      if (!v53)
      {
        goto LABEL_82;
      }

      v54 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_2 &,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a1, v9 - 47);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_2 &,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v9, a2))
      {
        a2 = v9 - 47;
        if (!v54)
        {
          goto LABEL_1;
        }

        return a5.n128_f64[0];
      }

      if (!v54)
      {
LABEL_82:
        a5.n128_f64[0] = std::__introsort<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_2 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,false>(a1, v9 - 47, a3, a4 & 1, a5);
        a4 = 0;
      }
    }

    else
    {
      v133 = *a1;
      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v134, (a1 + 1));
      cnmatrix::CNMatrix<3u,1u,double>::CNMatrix(v135, (a1 + 9));
      cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v136, (a1 + 17));
      cnmatrix::CNMatrix<3u,3u,double>::CNMatrix(v137, (a1 + 31));
      v55 = a1[45];
      v139 = *(a1 + 92);
      v138 = v55;
      if (v55 >= *(v8 - 2))
      {
        v58 = a1 + 47;
        do
        {
          v9 = v58;
          if (v58 >= v8)
          {
            break;
          }

          v59 = v58[45];
          v58 += 47;
        }

        while (v138 >= v59);
      }

      else
      {
        v56 = a1;
        do
        {
          v9 = v56 + 47;
          v57 = v56[92];
          v56 += 47;
        }

        while (v138 >= v57);
      }

      v60 = v8;
      if (v9 < v8)
      {
        do
        {
          v60 = (v8 - 47);
          v61 = *(v8 - 2);
          v8 -= 47;
        }

        while (v138 < v61);
      }

      while (v9 < v60)
      {
        std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v9, v60);
        do
        {
          v62 = v9[92];
          v9 += 47;
        }

        while (v138 >= v62);
        do
        {
          v63 = *(v60 - 2);
          v60 -= 376;
        }

        while (v138 < v63);
      }

      v64 = v9 - 47;
      if (v9 - 47 != a1)
      {
        *a1 = *v64;
        cnmatrix::CNMatrixBase<double>::operator=((a1 + 1), (v9 - 46));
        cnmatrix::CNMatrixBase<double>::operator=((a1 + 9), (v9 - 38));
        cnmatrix::CNMatrixBase<double>::operator=((a1 + 17), (v9 - 30));
        cnmatrix::CNMatrixBase<double>::operator=((a1 + 31), (v9 - 16));
        v65 = *(v9 - 2);
        a1[45] = *(v9 - 2);
        *(a1 + 92) = v65;
      }

      *v64 = v133;
      cnmatrix::CNMatrixBase<double>::operator=((v9 - 46), v134);
      cnmatrix::CNMatrixBase<double>::operator=((v9 - 38), v135);
      cnmatrix::CNMatrixBase<double>::operator=((v9 - 30), v136);
      a5.n128_u64[0] = cnmatrix::CNMatrixBase<double>::operator=((v9 - 16), v137).n128_u64[0];
      a4 = 0;
      v66 = v139;
      *(v9 - 2) = v138;
      *(v9 - 2) = v66;
      v8 = a2;
    }
  }

  a5.n128_f64[0] = a1[92];
  v69 = *(v8 - 2);
  if (a5.n128_f64[0] < a1[45])
  {
    if (v69 < a5.n128_f64[0])
    {
      goto LABEL_110;
    }

    std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a1, a1 + 376);
    a5.n128_f64[0] = *(v8 - 2);
    if (a5.n128_f64[0] < a1[92])
    {
      v70 = a1 + 47;
      goto LABEL_111;
    }

    return a5.n128_f64[0];
  }

  if (v69 >= a5.n128_f64[0])
  {
    return a5.n128_f64[0];
  }

  v67 = (a1 + 47);
  v68 = a2 - 47;
LABEL_163:
  std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v67, v68);
  a5.n128_f64[0] = a1[92];
  if (a5.n128_f64[0] < a1[45])
  {
    v71 = a1 + 47;
    v70 = a1;
    goto LABEL_112;
  }

  return a5.n128_f64[0];
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::batchSolver(void)::$_2 &,RoseSyntheticApertureFiltering::FilterInitializationResult *,0>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = *(a2 + 360);
  v9 = *(a3 + 360);
  if (v8 >= *(result + 360))
  {
    if (v9 < v8)
    {
      std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a2, a3);
      if (*(a2 + 360) < *(v7 + 360))
      {
        result = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(result, v10);
      goto LABEL_10;
    }

    std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(result, a2);
    if (*(a3 + 360) < *(a2 + 360))
    {
      result = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 360) < *(a3 + 360))
  {
    std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a3, a4);
    if (*(a3 + 360) < *(a2 + 360))
    {
      std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(a2, a3);
      if (*(a2 + 360) < *(v7 + 360))
      {

        std::iter_swap[abi:ne200100]<RoseSyntheticApertureFiltering::FilterInitializationResult *,RoseSyntheticApertureFiltering::FilterInitializationResult *>(v7, a2);
      }
    }
  }
}