uint64_t sub_19B5AE160(uint64_t result)
{
  *result = &unk_1F0E2E238;
  *(result + 48) = 0;
  return result;
}

void sub_19B5AE188(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5AE1C0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 48);
  if (v5)
  {
    PB::TextFormatter::format(this, "primaryAxisX", *(a1 + 8));
    v5 = *(a1 + 48);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a1 + 48) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "primaryAxisY", *(a1 + 16));
  v5 = *(a1 + 48);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PB::TextFormatter::format(this, "primaryAxisZ", *(a1 + 24));
  v5 = *(a1 + 48);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PB::TextFormatter::format(this, "startTime", *(a1 + 32));
  if ((*(a1 + 48) & 0x10) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 40));
  }

LABEL_7:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5AE2A4(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_51;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 2)
      {
        if (v22 == 1)
        {
          *(a1 + 48) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_42:
            *(this + 24) = 1;
            goto LABEL_47;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_46;
        }

        if (v22 == 2)
        {
          *(a1 + 48) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_42;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_46;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 48) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_42;
            }

            *(a1 + 8) = *(*this + v2);
            goto LABEL_46;
          case 4:
            *(a1 + 48) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_42;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_46;
          case 5:
            *(a1 + 48) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_42;
            }

            *(a1 + 24) = *(*this + v2);
LABEL_46:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_47;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_47:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_51:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_19B5AE56C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 48);
  if ((v4 & 8) != 0)
  {
    result = PB::Writer::write(this, *(result + 32));
    v4 = *(v3 + 48);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 48) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 48);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = PB::Writer::write(this, *(v3 + 16));
    if ((*(v3 + 48) & 4) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 48);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_11:
  v5 = *(v3 + 24);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B5AE630(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  *a1 = 16777217;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1065353216;
  *(a1 + 28) = 0;
  *(a1 + 36) = 0x3F80000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 1097859072;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
  }

  v2 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "[CMAnchorMotionCorrespondence] Created the anchor-motion correspondence.", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
    }

    v7[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMAnchorMotionCorrespondence] Created the anchor-motion correspondence.", v7, 2);
    v5 = v4;
    sub_19B6BB7CC("Generic", 1, 0, 2, "CMAnchorMotionCorrespondence::CMAnchorMotionCorrespondence()", "CoreLocation: %s\n", v4);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  sub_19B5AE824(a1);
  return a1;
}

void sub_19B5AE824(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *a1 = 16777217;
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
  }

  v1 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "[CMAnchorMotionCorrespondence] Reset is called.", buf, 2u);
  }

  v2 = sub_19B420058();
  if (*(v2 + 160) > 1 || *(v2 + 164) > 1 || *(v2 + 168) > 1 || *(v2 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
    }

    v5[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMAnchorMotionCorrespondence] Reset is called.", v5, 2);
    v4 = v3;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAnchorMotionCorrespondence::reset()", "CoreLocation: %s\n", v3);
    if (v4 != buf)
    {
      free(v4);
    }
  }
}

void sub_19B5AE9DC(uint64_t a1, float32x2_t *a2, float *a3, uint64_t a4, double a5)
{
  v58 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    v10.f32[0] = sub_19B66C1A4((a1 + 28), *a3, a3[1], a3[2]);
    v12 = a5;
    v13 = (a2[1].f32[0] - v11) * v12;
    v10.i32[1] = v14;
    *v49 = vmul_n_f32(vsub_f32(*a2, v10), v12);
    *&v49[8] = v13;
    *v15.i64 = sub_19B66C264(buf, v49);
    v16 = sub_19B66BF70(buf, (a1 + 28), v15);
    v17 = 0;
    *(a1 + 28) = v16;
    *(a1 + 32) = v18;
    *(a1 + 36) = v19;
    *(a1 + 40) = v20;
    v21 = 0.0;
    do
    {
      v21 = v21 + (a2->f32[v17] * a2->f32[v17]);
      ++v17;
    }

    while (v17 != 3);
    if (sqrtf(v21) > 3.0)
    {
      goto LABEL_8;
    }

    v22 = 0;
    v23 = 0.0;
    do
    {
      v23 = v23 + (a3[v22] * a3[v22]);
      ++v22;
    }

    while (v22 != 3);
    if (sqrtf(v23) > 3.0)
    {
LABEL_8:
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
      }

      v24 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        v25 = 0;
        v26 = 0.0;
        do
        {
          v26 = v26 + (a2->f32[v25] * a2->f32[v25]);
          ++v25;
        }

        while (v25 != 3);
        v27 = 0;
        v28 = 0.0;
        do
        {
          v28 = v28 + (a3[v27] * a3[v27]);
          ++v27;
        }

        while (v27 != 3);
        *buf = 134218496;
        *v54 = sqrtf(v26);
        *&v54[8] = 2048;
        v55 = sqrtf(v28);
        v56 = 2048;
        v57 = a5;
        _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_DEBUG, "[CMAnchorMotionCorrespondence] Pose update done with src %f aux %f dt %f.", buf, 0x20u);
      }

      v29 = sub_19B420058();
      if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
        }

        v30 = 0;
        v31 = 0.0;
        do
        {
          v31 = v31 + (a2->f32[v30] * a2->f32[v30]);
          ++v30;
        }

        while (v30 != 3);
        v32 = 0;
        v33 = 0.0;
        do
        {
          v33 = v33 + (a3[v32] * a3[v32]);
          ++v32;
        }

        while (v32 != 3);
        *v49 = 134218496;
        *&v49[4] = sqrtf(v31);
        *&v49[12] = 2048;
        v50 = sqrtf(v33);
        v51 = 2048;
        v52 = a5;
        LODWORD(v48) = 32;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMAnchorMotionCorrespondence] Pose update done with src %f aux %f dt %f.", COERCE_DOUBLE(v49), v48);
        v35 = v34;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAnchorMotionCorrespondence::feedIMU(const CMRelDM::IMUData &, const CMRelDM::IMUData &, double, uint64_t)", "CoreLocation: %s\n", v34);
        if (v35 != buf)
        {
          free(v35);
        }
      }
    }

    if (*(a1 + 1) == 1 && (*(a1 + 2) & 1) == 0)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
      }

      v36 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        v37 = *(a1 + 1);
        v38 = *(a1 + 2);
        *buf = 67109376;
        *v54 = v37;
        *&v54[4] = 1024;
        *&v54[6] = v38;
        _os_log_impl(&dword_19B41C000, v36, OS_LOG_TYPE_DEBUG, "[CMAnchorMotionCorrespondence] Anchor sensor state changed from %d to %d.", buf, 0xEu);
      }

      v39 = sub_19B420058();
      if (*(v39 + 160) > 1 || *(v39 + 164) > 1 || *(v39 + 168) > 1 || *(v39 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
        }

        v40 = *(a1 + 1);
        v41 = *(a1 + 2);
        *v49 = 67109376;
        *&v49[4] = v40;
        *&v49[8] = 1024;
        *&v49[10] = v41;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMAnchorMotionCorrespondence] Anchor sensor state changed from %d to %d.", v49, 14);
        v43 = v42;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAnchorMotionCorrespondence::feedIMU(const CMRelDM::IMUData &, const CMRelDM::IMUData &, double, uint64_t)", "CoreLocation: %s\n", v42);
        if (v43 != buf)
        {
          free(v43);
        }
      }

      *(a1 + 28) = *(a1 + 12);
      if (*(a1 + 3) == 1)
      {
        *(a1 + 3) = 0;
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
        }

        v44 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v44, OS_LOG_TYPE_DEBUG, "[CMAnchorMotionCorrespondence] fFirstBurst is set to false.", buf, 2u);
        }

        v45 = sub_19B420058();
        if (*(v45 + 160) > 1 || *(v45 + 164) > 1 || *(v45 + 168) > 1 || *(v45 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
          }

          *v49 = 0;
          LODWORD(v48) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMAnchorMotionCorrespondence] fFirstBurst is set to false.", v49, *&v48);
          v47 = v46;
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAnchorMotionCorrespondence::feedIMU(const CMRelDM::IMUData &, const CMRelDM::IMUData &, double, uint64_t)", "CoreLocation: %s\n", v46);
          if (v47 != buf)
          {
            free(v47);
          }
        }
      }
    }

    *(a1 + 1) = *(a1 + 2);
    *(a1 + 64) = a4;
  }
}

void sub_19B5AF054(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v59 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
  }

  v6 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEBUG, "[CMAnchorMotionCorrespondence] Feed anchor", buf, 2u);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
    }

    LOWORD(v51) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMAnchorMotionCorrespondence] Feed anchor", &v51, 2);
    v9 = v8;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAnchorMotionCorrespondence::feedAnchor(const CMOQuaternion &, uint64_t)", "CoreLocation: %s\n", v8);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  if (*(a1 + 3) == 1)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
    }

    v10 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEBUG, "[CMAnchorMotionCorrespondence] Entering the first burst condition", buf, 2u);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
      }

      LOWORD(v51) = 0;
      LODWORD(v50) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMAnchorMotionCorrespondence] Entering the first burst condition", &v51, v50);
      v13 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAnchorMotionCorrespondence::feedAnchor(const CMOQuaternion &, uint64_t)", "CoreLocation: %s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    *(a1 + 12) = *a2;
    *(a1 + 48) = a3;
    *(a1 + 56) = a3;
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
    }

    v14 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_DEBUG, "[CMAnchorMotionCorrespondence] Calling anchor correspondence.", buf, 2u);
    }

    v15 = sub_19B420058();
    if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
      }

      LOWORD(v51) = 0;
      LODWORD(v50) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMAnchorMotionCorrespondence] Calling anchor correspondence.", &v51, v50);
      v18 = v17;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAnchorMotionCorrespondence::feedAnchor(const CMOQuaternion &, uint64_t)", "CoreLocation: %s\n", v17);
      if (v18 != buf)
      {
        free(v18);
      }
    }

    v16.f32[0] = (a3 - *(a1 + 56)) * 0.000001;
    if (v16.f32[0] <= 0.0)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
      }

      v37 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v37, OS_LOG_TYPE_DEBUG, "[CMAnchorMotionCorrespondence] dtSeconds == 0", buf, 2u);
      }

      v38 = sub_19B420058();
      if (*(v38 + 160) > 1 || *(v38 + 164) > 1 || *(v38 + 168) > 1 || *(v38 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
        }

        LOWORD(v51) = 0;
        LODWORD(v50) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMAnchorMotionCorrespondence] dtSeconds == 0", &v51, v50);
        v40 = v39;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAnchorMotionCorrespondence::anchorCorrespondence(const CMOQuaternion &, const uint64_t)", "CoreLocation: %s\n", v39);
        if (v40 != buf)
        {
          free(v40);
        }
      }
    }

    else
    {
      v19.f32[0] = sub_19B66BFF4((a1 + 28), v16);
      *buf = v19.i32[0];
      v57 = __PAIR64__(v21, v20);
      v58[0] = v22;
      v51 = sub_19B66BF70(a2, buf, v19);
      v52 = __PAIR64__(v24, v23);
      v53[0] = v25;
      v26 = sub_19B66C31C(&v51);
      v27 = 0;
      *buf = v26;
      v57 = __PAIR64__(v29, v28);
      v30 = 0.0;
      do
      {
        v30 = v30 + (*&buf[v27] * *&buf[v27]);
        v27 += 4;
      }

      while (v27 != 12);
      *(a1 + 8) = sqrtf(v30) * 57.296;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
      }

      v31 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *&v32 = *(a1 + 8);
        *buf = 134217984;
        v57 = v32;
        _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_DEBUG, "[CMAnchorMotionCorrespondence] dThetaNorm %f.", buf, 0xCu);
      }

      v33 = sub_19B420058();
      if (*(v33 + 160) > 1 || *(v33 + 164) > 1 || *(v33 + 168) > 1 || *(v33 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
        }

        v34 = *(a1 + 8);
        v54 = 134217984;
        v55 = v34;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMAnchorMotionCorrespondence] dThetaNorm %f.", COERCE_DOUBLE(&v54));
        v36 = v35;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAnchorMotionCorrespondence::anchorCorrespondence(const CMOQuaternion &, const uint64_t)", "CoreLocation: %s\n", v35);
        if (v36 != buf)
        {
          free(v36);
        }
      }

      *(a1 + 48) = a3;
      if (*(a1 + 8) >= *(a1 + 72))
      {
        *a1 = 0;
      }

      else
      {
        *a1 = 1;
        *(a1 + 12) = *a2;
        *(a1 + 56) = a3;
      }
    }

    v41 = *(a1 + 56);
    v42 = (*(a1 + 48) - v41) * 0.000001;
    if (v42 >= 120.0 && v41 && (*(a1 + 3) & 1) == 0)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
      }

      v43 = off_1EAFE29A0;
      v44 = v42;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        v45 = *(a1 + 56);
        *buf = 134218240;
        v57 = *&v44;
        LOWORD(v58[0]) = 2048;
        *(v58 + 2) = v45;
        _os_log_impl(&dword_19B41C000, v43, OS_LOG_TYPE_DEBUG, "[CMAnchorMotionCorrespondence] Resetting for large correspondence gap: dtSeconds %f fLastAnchorCorrespondenceUpdateUs is %llu.", buf, 0x16u);
      }

      v46 = sub_19B420058();
      if (*(v46 + 160) > 1 || *(v46 + 164) > 1 || *(v46 + 168) > 1 || *(v46 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E28D00);
        }

        v47 = *(a1 + 56);
        v51 = 3.8521e-34;
        v52 = *&v44;
        LOWORD(v53[0]) = 2048;
        *(v53 + 2) = v47;
        LODWORD(v50) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMAnchorMotionCorrespondence] Resetting for large correspondence gap: dtSeconds %f fLastAnchorCorrespondenceUpdateUs is %llu.", COERCE_DOUBLE(&v51), v50);
        v49 = v48;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAnchorMotionCorrespondence::feedAnchor(const CMOQuaternion &, uint64_t)", "CoreLocation: %s\n", v48);
        if (v49 != buf)
        {
          free(v49);
        }
      }

      sub_19B5AE824(a1);
    }
  }
}

os_log_t sub_19B5AF9D8()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

void sub_19B5AFCBC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v25, v24, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_19B5AFCF4(uint64_t a1, CLConnectionMessage **a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*a2 && (Dictionary = CLConnectionMessage::getDictionary(*a2)) != 0 && (v4 = objc_msgSend_objectForKeyedSubscript_(Dictionary, v3, @"CMErrorMessage")) != 0)
  {
    v7 = objc_msgSend_intValue(v4, v5, v6);
  }

  else
  {
    v7 = 103;
  }

  if (qword_1EAFE2AA8 != -1)
  {
    dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
  }

  v8 = qword_1EAFE2AB0;
  if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v14 = v7;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "CMHistoricalDatastore, Failed with CMError code %{public}d", buf, 8u);
  }

  v9 = sub_19B420058();
  if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v12[0] = 67240192;
    v12[1] = v7;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AB0, 17, "CMHistoricalDatastore, Failed with CMError code %{public}d", v12, 8);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore init]_block_invoke", "CoreLocation: %s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }
}

void sub_19B5AFEE0(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v6 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_INFO))
    {
      v9 = objc_msgSend_UTF8String(v5, v7, v8);
      v10 = *(a1 + 32);
      *buf = 136446722;
      v26 = v9;
      v27 = 1026;
      v28 = v2;
      v29 = 2050;
      v30 = v10;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "CMHistoricalDatastore, Client connection interrupt, %{public}s, %{public}d, %{public}p", buf, 0x1Cu);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      v14 = qword_1EAFE2AB0;
      v15 = objc_msgSend_UTF8String(v5, v12, v13);
      v16 = *(a1 + 32);
      v19 = 136446722;
      v20 = v15;
      v21 = 1026;
      v22 = v2;
      v23 = 2050;
      v24 = v16;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v14, 1, "CMHistoricalDatastore, Client connection interrupt, %{public}s, %{public}d, %{public}p", &v19, 28);
      v18 = v17;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore init]_block_invoke", "CoreLocation: %s\n", v17);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }
}

void sub_19B5B06E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B5B1064(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v7 = *(*(a1 + 48) + 16);

    return v7();
  }

  if (qword_1EAFE2AA8 != -1)
  {
    dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
  }

  v11 = qword_1EAFE2AB0;
  if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v48 = objc_msgSend_count(a2, v12, v13);
    v49 = 2048;
    v50 = a3;
    v51 = 2048;
    v52 = a4;
    _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEFAULT, "[HistoricalFetch] Received %lu samples, cardio datatype %lu, state %lu", buf, 0x20u);
  }

  v14 = sub_19B420058();
  if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v18 = qword_1EAFE2AB0;
    v41 = 134218496;
    v42 = objc_msgSend_count(a2, v16, v17);
    v43 = 2048;
    v44 = a3;
    v45 = 2048;
    v46 = a4;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v18, 0, "[HistoricalFetch] Received %lu samples, cardio datatype %lu, state %lu", &v41, 32, v39);
    v20 = v19;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore fetchCardioSamplesFrom:to:queryToken:withHandler:]_block_invoke", "CoreLocation: %s\n", v19);
    if (v20 != buf)
    {
      free(v20);
    }
  }

  if (a3 > 3)
  {
    if (a3 > 5)
    {
      if (a3 == 6)
      {
        objc_msgSend_setCardioSessionMetrics_(*(a1 + 32), v15, a2);
      }

      else
      {
        if (a3 != 7)
        {
          goto LABEL_50;
        }

        objc_msgSend_setCardioFitnessSummary_(*(a1 + 32), v15, a2);
      }
    }

    else if (a3 == 4)
    {
      objc_msgSend_setCardioFitnessInputs_(*(a1 + 32), v15, a2);
    }

    else
    {
      objc_msgSend_setCardioFitnessResults_(*(a1 + 32), v15, a2);
    }

LABEL_34:
    v23 = objc_msgSend_count(a2, v21, v22);
    v24 = *(a1 + 48);
    if (!v23)
    {
      return (*(v24 + 16))(v24, 0, *(*(a1 + 40) + 16), 1, 0);
    }

    result = (*(v24 + 16))(v24, *(a1 + 32), *(*(a1 + 40) + 16), a4, 0);
    if ((result & 1) == 0)
    {
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      v25 = qword_1EAFE2AB0;
      if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_DEFAULT, "[HistoricalFetch] Received interrupt from client", buf, 2u);
      }

      v26 = sub_19B420058();
      if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2AA8 != -1)
        {
          dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
        }

        LOWORD(v41) = 0;
        LODWORD(v38) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AB0, 0, "[HistoricalFetch] Received interrupt from client", &v41, v38);
        v30 = v29;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore fetchCardioSamplesFrom:to:queryToken:withHandler:]_block_invoke", "CoreLocation: %s\n", v29);
        if (v30 != buf)
        {
          free(v30);
        }
      }

      return objc_msgSend_closeDBConnection(*(a1 + 40), v27, v28);
    }

    return result;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      objc_msgSend_setRecoveryWorkRate_(*(a1 + 32), v15, a2);
    }

    else
    {
      objc_msgSend_setRecoverySessions_(*(a1 + 32), v15, a2);
    }

    goto LABEL_34;
  }

  if (!a3)
  {
    objc_msgSend_setPedestrianGrade_(*(a1 + 32), v15, a2);
    goto LABEL_34;
  }

  if (a3 == 1)
  {
    objc_msgSend_setRecoveryHeartRate_(*(a1 + 32), v15, a2);
    goto LABEL_34;
  }

LABEL_50:
  if (qword_1EAFE2AA8 != -1)
  {
    dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
  }

  v31 = qword_1EAFE2AB0;
  if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v48 = a3;
    _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_ERROR, "[HistoricalFetch] Unexpected datatype: %lu", buf, 0xCu);
  }

  v32 = sub_19B420058();
  if ((*(v32 + 160) & 0x80000000) == 0 || (*(v32 + 164) & 0x80000000) == 0 || (*(v32 + 168) & 0x80000000) == 0 || *(v32 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v41 = 134217984;
    v42 = a3;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AB0, 16, "[HistoricalFetch] Unexpected datatype: %lu", &v41);
    v35 = v34;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalDataStore fetchCardioSamplesFrom:to:queryToken:withHandler:]_block_invoke", "CoreLocation: %s\n", v34);
    if (v35 != buf)
    {
      free(v35);
    }
  }

  v39 = *MEMORY[0x1E696A578];
  v40 = @"Unexpected internal error.";
  v36 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v33, &v40, &v39, 1);
  objc_msgSend_CMErrorWithCode_userInfo_(CMErrorUtils, v37, 103, v36);
  return (*(*(a1 + 48) + 16))();
}

uint64_t sub_19B5B1E78(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v7 = *(*(a1 + 48) + 16);

    return v7();
  }

  else
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
    }

    v11 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v38 = objc_msgSend_count(a2, v12, v13);
      v39 = 2048;
      v40 = a3;
      v41 = 2048;
      v42 = a4;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEFAULT, "[HistoricalFetch] Received %lu samples, mobility datatype %lu, state %lu", buf, 0x20u);
    }

    v14 = sub_19B420058();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
      }

      v19 = qword_1EAFE2AB0;
      v31 = 134218496;
      v32 = objc_msgSend_count(a2, v17, v18);
      v33 = 2048;
      v34 = a3;
      v35 = 2048;
      v36 = a4;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v19, 0, "[HistoricalFetch] Received %lu samples, mobility datatype %lu, state %lu", &v31, 32);
      v21 = v20;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore fetchMobilitySamplesFrom:to:queryToken:withHandler:]_block_invoke", "CoreLocation: %s\n", v20);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    if (a3 <= 1)
    {
      if (a3)
      {
        if (a3 == 1)
        {
          objc_msgSend_setPredictedDistanceBouts_(*(a1 + 32), v15, a2);
        }
      }

      else
      {
        objc_msgSend_setWalkingBoutMobility_(*(a1 + 32), v15, a2);
      }
    }

    else
    {
      switch(a3)
      {
        case 2:
          objc_msgSend_setGaitMetrics_(*(a1 + 32), v15, a2);
          break;
        case 3:
          objc_msgSend_setPredictedDistanceBoutsMobilityCalibration_(*(a1 + 32), v15, a2);
          break;
        case 4:
          objc_msgSend_setStrideCalEntries_(*(a1 + 32), v15, a2);
          break;
      }
    }

    v22 = objc_msgSend_count(a2, v15, v16);
    v23 = *(a1 + 48);
    if (v22)
    {
      result = (*(v23 + 16))(v23, *(a1 + 32), *(*(a1 + 40) + 16), a4, 0);
      if ((result & 1) == 0)
      {
        if (qword_1EAFE2AA8 != -1)
        {
          dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
        }

        v24 = qword_1EAFE2AB0;
        if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_DEFAULT, "[HistoricalFetch] Received interrupt from client", buf, 2u);
        }

        v25 = sub_19B420058();
        if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2AA8 != -1)
          {
            dispatch_once(&qword_1EAFE2AA8, &unk_1F0E3A2E0);
          }

          LOWORD(v31) = 0;
          LODWORD(v30) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AB0, 0, "[HistoricalFetch] Received interrupt from client", &v31, v30);
          v29 = v28;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHistoricalDataStore fetchMobilitySamplesFrom:to:queryToken:withHandler:]_block_invoke", "CoreLocation: %s\n", v28);
          if (v29 != buf)
          {
            free(v29);
          }
        }

        return objc_msgSend_closeDBConnection(*(a1 + 40), v26, v27);
      }
    }

    else
    {
      return (*(v23 + 16))(v23, 0, *(*(a1 + 40) + 16), 1, 0);
    }
  }

  return result;
}

os_log_t sub_19B5B64B0()
{
  result = os_log_create("com.apple.locationd.Motion", "HealthColdStorage");
  qword_1EAFE2AB0 = result;
  return result;
}

void *sub_19B5B654C(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B5B661C((a1 + 3), a2);
  return a1;
}

void sub_19B5B65C8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E2AD08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5B661C(uint64_t a1, char *a2)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71E0](a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B5B666C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B5B6A00(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 24), *(a1 + 40));
  Weak = objc_loadWeak((*(a1 + 32) + 24));
  v5 = *(a1 + 32);
  if (Weak)
  {

    return objc_msgSend__connect(v5, v2, v3);
  }

  else
  {

    return objc_msgSend__disconnect(v5, v2, v3);
  }
}

void sub_19B5B6B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5B6EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (v28)
  {
    sub_19B41FFEC(v28);
  }

  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19B5B6F48(uint64_t a1, uint64_t *a2)
{
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v4 = Weak;
    if (objc_loadWeak(Weak + 3))
    {
      v6 = a2[1];
      v7 = *a2;
      v8 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      objc_msgSend__handleMessage_(v4, v5, &v7);
      if (v8)
      {
        sub_19B41FFEC(v8);
      }
    }
  }
}

void sub_19B5B6FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5B6FD4()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2AE8 != -1)
  {
    dispatch_once(&qword_1EAFE2AE8, &unk_1F0E28060);
  }

  v0 = qword_1EAFE2AF0;
  if (os_log_type_enabled(qword_1EAFE2AF0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_DEFAULT, "[CMNoMovementManager] interruption with locationd occurred", buf, 2u);
  }

  v1 = sub_19B420058();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AE8 != -1)
    {
      dispatch_once(&qword_1EAFE2AE8, &unk_1F0E28060);
    }

    v4[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AF0, 0, "[CMNoMovementManager] interruption with locationd occurred", v4, 2);
    v3 = v2;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMNoMovementManager _connect]_block_invoke", "CoreLocation: %s\n", v2);
    if (v3 != buf)
    {
      free(v3);
    }
  }
}

void sub_19B5B73B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B5B77F8(uint64_t a1)
{
  Weak = objc_loadWeak((*(a1 + 32) + 24));
  v3 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](Weak, sel_didStateUpdate_, v3);
}

os_log_t sub_19B5B7888()
{
  result = os_log_create("com.apple.locationd.Motion", "CheckIn");
  qword_1EAFE2AF0 = result;
  return result;
}

void *sub_19B5B7924(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B5B7980((a1 + 3), a2);
  return a1;
}

uint64_t sub_19B5B7980(uint64_t a1, char *a2)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71E0](a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B5B79D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5B7A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

uint64_t sub_19B5B816C(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 24), *(a1 + 40));
  Weak = objc_loadWeak((*(a1 + 32) + 24));
  v5 = *(a1 + 32);
  if (Weak)
  {

    return objc_msgSend__connect(v5, v2, v3);
  }

  else
  {

    return objc_msgSend__disconnect(v5, v2, v3);
  }
}

void sub_19B5B865C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, std::__shared_weak_count *a24, int a25, __int16 a26, char a27, char a28)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  if (a24)
  {
    sub_19B41FFEC(a24);
  }

  objc_destroyWeak((v28 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19B5B86D8(uint64_t a1, uint64_t *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
  }

  v4 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "[HeadphoneUsage] CMAudioAccessoryUsageManager - Calling default handler", buf, 2u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
    }

    v22[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 1, "[HeadphoneUsage] CMAudioAccessoryUsageManager - Calling default handler", v22, 2);
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMAudioAccessoryUsageManager _connect]_block_invoke", "CoreLocation: %s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  Weak = objc_loadWeak((a1 + 32));
  v9 = Weak;
  if (Weak)
  {
    if (objc_loadWeak(Weak + 3))
    {
      v11 = a2[1];
      v20 = *a2;
      v21 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      objc_msgSend__handleMessage_(v9, v10, &v20);
      if (v21)
      {
        sub_19B41FFEC(v21);
      }

      return;
    }

    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
    }

    v16 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] No delegate set", buf, 2u);
    }

    v17 = sub_19B420058();
    if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
      }

      v22[0] = 0;
      LODWORD(v19) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 16, "[HeadphoneUsage] No delegate set", v22, v19);
      v15 = v18;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMAudioAccessoryUsageManager _connect]_block_invoke", "CoreLocation: %s\n", v18);
LABEL_39:
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  else
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
    }

    v12 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] CMAudioAccessoryUsageManager: strongSelf missing!", buf, 2u);
    }

    v13 = sub_19B420058();
    if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
      }

      v22[0] = 0;
      LODWORD(v19) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 16, "[HeadphoneUsage] CMAudioAccessoryUsageManager: strongSelf missing!", v22, v19);
      v15 = v14;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMAudioAccessoryUsageManager _connect]_block_invoke", "CoreLocation: %s\n", v14);
      goto LABEL_39;
    }
  }
}

void sub_19B5B8B50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5B8B70()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
  }

  v0 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_DEFAULT, "[HeadphoneUsage] CMAudioAccessoryUsageManager - interruptionHandler", buf, 2u);
  }

  v1 = sub_19B420058();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
    }

    v4[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 0, "[HeadphoneUsage] CMAudioAccessoryUsageManager - interruptionHandler", v4, 2);
    v3 = v2;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMAudioAccessoryUsageManager _connect]_block_invoke", "CoreLocation: %s\n", v2);
    if (v3 != buf)
    {
      free(v3);
    }
  }
}

uint64_t sub_19B5B9600(uint64_t a1)
{
  Weak = objc_loadWeak((*(a1 + 32) + 24));
  v3 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](Weak, sel_errorOccurred_, v3);
}

uint64_t sub_19B5B9640(uint64_t a1)
{
  Weak = objc_loadWeak((*(a1 + 32) + 24));
  v3 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](Weak, sel_didReceiveUsageMetrics_, v3);
}

uint64_t sub_19B5B9680(uint64_t a1)
{
  Weak = objc_loadWeak((*(a1 + 32) + 24));
  v3 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](Weak, sel_errorOccurred_, v3);
}

void sub_19B5B9A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    sub_19B41FFEC(a14);
  }

  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B5B9C58()
{
  result = os_log_create("com.apple.locationd.Motion", "Accessory");
  qword_1ED71C7C8 = result;
  return result;
}

void *sub_19B5B9CFC(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B5B9D58((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B5B9D58(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B5B9DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5B9DCC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 52) = 0x1900000000;
  *(a1 + 360) = 0x1900000000;
  *(a1 + 668) = 0x1900000000;
  *(a1 + 976) = 0x1900000000;
  *(a1 + 1284) = 0x1900000000;
  *(a1 + 1392) = 0x1900000000;
  *(a1 + 1500) = 0x1900000000;
  *(a1 + 1608) = 0x1900000000;
  *(a1 + 1716) = 0x1900000000;
  *(a1 + 1824) = 0x1900000000;
  *(a1 + 1932) = 0x1900000000;
  *(a1 + 2040) = 0x1900000000;
  *(a1 + 2148) = 0xB200000000;
  *(a1 + 5056) = 0u;
  *(a1 + 5080) = 0;
  *(a1 + 5072) = 0;
  *(a1 + 5096) = 0;
  *(a1 + 5088) = 0;
  *(a1 + 5100) = 1;
  *(a1 + 5104) = 0u;
  *(a1 + 5120) = 0u;
  *(a1 + 5136) = 0u;
  *(a1 + 5152) = 0u;
  *(a1 + 5168) = 0u;
  *(a1 + 5184) = 0u;
  *(a1 + 5212) = 0u;
  *(a1 + 5228) = 0x3C00000000;
  *(a1 + 5200) = 1;
  *(a1 + 5476) = 1;
  *(a1 + 5488) = 0u;
  *(a1 + 5504) = 0x3C00000000;
  *(a1 + 5752) = 1;
  *(a1 + 5764) = 0u;
  *(a1 + 5784) = 11;
  *(a1 + 5780) = 0;
  *(a1 + 5832) = 1057360530;
  *(a1 + 5856) = 0;
  *(a1 + 5840) = 0;
  *(a1 + 5847) = 0;
  *(a1 + 5860) = 1;
  *(a1 + 5872) = 0u;
  *(a1 + 5888) = 0xF00000000;
  *(a1 + 5980) = 0;
  *(a1 + 5984) = 0;
  *(a1 + 6032) = 0;
  *(a1 + 5956) = 0;
  *(a1 + 5959) = 0;
  *(a1 + 5969) = 0;
  *(a1 + 5964) = 0;
  *(a1 + 6024) = 0;
  *(a1 + 5992) = 0u;
  *(a1 + 6008) = 0u;
  sub_19B5B9FB8(a1);
}

void sub_19B5B9F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = v11;
  a10 = v10 + 5176;
  sub_19B5BE5A4(&a10);
  a10 = v10 + 5152;
  sub_19B5BE5A4(&a10);
  a10 = v10 + 5128;
  sub_19B5BE5A4(&a10);
  a10 = v12;
  sub_19B5BE5A4(&a10);
  _Unwind_Resume(a1);
}

void sub_19B5B9FB8(const void **a1)
{
  *(a1 + 1) = 0;
  *(a1 + 90) = 0;
  *(a1 + 167) = 0;
  *(a1 + 244) = 0;
  *(a1 + 321) = 0;
  *(a1 + 348) = 0;
  *(a1 + 375) = 0;
  *(a1 + 402) = 0;
  *(a1 + 429) = 0;
  *(a1 + 456) = 0;
  *(a1 + 483) = 0;
  *(a1 + 510) = 0;
  *(a1 + 537) = 0;
  *(a1 + 4) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 13) = 0;
  *(a1 + 5004) = 0u;
  *(a1 + 5020) = 0u;
  *(a1 + 5036) = 0u;
  *(a1 + 5052) = 0;
  *(a1 + 1270) = 0;
  a1[634] = 0;
  *(a1 + 316) = 0u;
  a1[636] = 0;
  *(a1 + 1274) = 0;
  *(a1 + 2550) = 1;
  sub_19B5BA23C(a1);
}

const void **sub_19B5BA034(const void **result, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*result != a2)
  {
    v3 = result;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28D80);
    }

    v4 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      v5 = *v3;
      *buf = 67109376;
      v14 = v5;
      v15 = 1024;
      v16 = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "[CMComplexTransition] Changed tracking behavior from %d to %d.", buf, 0xEu);
    }

    v6 = sub_19B420058();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28D80);
      }

      v7 = *v3;
      v10[0] = 67109376;
      v10[1] = v7;
      v11 = 1024;
      v12 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMComplexTransition] Changed tracking behavior from %d to %d.", v10, 14);
      v9 = v8;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMComplexTransition::setTrackingBehavior(CMRelDM::TrackingBehavior)", "CoreLocation: %s\n", v8);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    sub_19B5B9FB8(v3);
  }

  return result;
}

void sub_19B5BA304(unsigned __int8 *a1, float32x2_t *a2, float32x2_t *a3, unsigned __int8 a4, unsigned __int8 a5, __int128 *a6, unint64_t a7, float32x4_t a8, float a9)
{
  v318 = *MEMORY[0x1E69E9840];
  v13 = a1 + 4096;
  if (*a1 == 1)
  {
    a1[5101] = a5;
    v14 = *a6;
    *(a1 + 6009) = *(a6 + 9);
    *(a1 + 375) = v14;
    *(a1 + 1508) = a8.i32[0];
    *(a1 + 1509) = a9;
  }

  a1[5100] = a4;
  v15.f32[0] = sub_19B66BFF4(a2 + 7, a8);
  v283[0] = v15.f32[0];
  v283[1] = v16;
  v283[2] = v17;
  v283[3] = v18;
  v282[0] = sub_19B66BFF4(a3 + 7, v15);
  v282[1] = v19;
  v282[2] = v20;
  v282[3] = v21;
  v22 = sub_19B66C1A4(v283, a2->f32[0], a2->f32[1], a2[1].f32[0]);
  v279 = v23;
  v280 = v22;
  v281 = v24;
  *&v25 = sub_19B66C1A4(v282, a3->f32[0], a3->f32[1], a3[1].f32[0]);
  v278 = v26;
  v275 = v25;
  v276 = v27;
  v28 = sub_19B5BBFC0(a2);
  *&v31 = sub_19B66C1A4(v283, v28, v29, v30);
  v273 = v31;
  v274 = v32;
  v277 = v33;
  v34 = sub_19B5BBFC0(a3);
  v37 = sub_19B66C1A4(v282, v34, v35, v36);
  v38.i64[0] = __PAIR64__(v279, LODWORD(v280));
  v38.i64[1] = __PAIR64__(v275, v281);
  v39.i64[0] = __PAIR64__(v276, v278);
  v39.i64[1] = __PAIR64__(v274, v273);
  v40 = v39;
  v41 = vaddq_f32(v38, *(a1 + 4));
  v42 = *(a1 + 36);
  v43 = vaddq_f32(v40, *(a1 + 20));
  *(a1 + 4) = v41;
  *(a1 + 20) = v43;
  v40.i64[0] = __PAIR64__(LODWORD(v37), v277);
  v40.i64[1] = __PAIR64__(v45, v44);
  v46 = vaddq_f32(v40, v42);
  *(a1 + 36) = v46;
  v47 = ++a1[1];
  if (v47 == 4)
  {
    __asm { FMOV            V1.4S, #0.25 }

    *(a1 + 4) = vmulq_f32(v41, _Q1);
    *(a1 + 20) = vmulq_f32(v43, _Q1);
    *(a1 + 36) = vmulq_f32(v46, _Q1);
    if (*a1 == 1)
    {
      v51 = 0;
      v52 = 1;
      do
      {
        v53 = *(*(a1 + 638) + 8 * v51);
        v54 = sub_19B5BC0F0((a1 + 4), v51);
        LODWORD(v53) = sub_19B5BE1A8(v53, *v54);
        v55 = *(*(a1 + 641) + 8 * v51);
        v56 = sub_19B5BC0F0((a1 + 16), v51);
        v57 = v53 & sub_19B5BE1A8(v55, *v56);
        v58 = *(*(a1 + 644) + 8 * v51);
        v59 = sub_19B5BC0F0((a1 + 28), v51);
        LODWORD(v58) = sub_19B5BE1A8(v58, *v59);
        v60 = *(*(a1 + 647) + 8 * v51);
        v61 = sub_19B5BC0F0((a1 + 40), v51);
        v52 &= v57 & v58 & sub_19B5BE1A8(v60, *v61);
        ++v51;
      }

      while (v51 != 3);
      v62 = 0;
      if (v52)
      {
        do
        {
          v63 = *(*(a1 + 638) + 8 * v62);
          v64 = *(v63 + 4 * *(v63 + 8) + 16);
          *sub_19B5BC0F0((a1 + 4), v62) = v64;
          v65 = *(*(a1 + 641) + 8 * v62);
          v66 = *(v65 + 4 * *(v65 + 8) + 16);
          *sub_19B5BC0F0((a1 + 16), v62) = v66;
          v67 = *(*(a1 + 644) + 8 * v62);
          v68 = *(v67 + 4 * *(v67 + 8) + 16);
          *sub_19B5BC0F0((a1 + 28), v62) = v68;
          v69 = *(*(a1 + 647) + 8 * v62);
          v70 = *(v69 + 4 * *(v69 + 8) + 16);
          *sub_19B5BC0F0((a1 + 40), v62++) = v70;
        }

        while (v62 != 3);
      }

      else
      {
        do
        {
          *sub_19B5BC0F0((a1 + 4), v62) = 0;
          *sub_19B5BC0F0((a1 + 16), v62) = 0;
          *sub_19B5BC0F0((a1 + 28), v62) = 0;
          *sub_19B5BC0F0((a1 + 40), v62++) = 0;
        }

        while (v62 != 3);
      }
    }

    sub_19B5BE720(a1 + 26, (a1 + 4));
    sub_19B5BE720(a1 + 180, (a1 + 16));
    sub_19B5BE720(a1 + 334, (a1 + 28));
    sub_19B5BE720(a1 + 488, (a1 + 40));
    if (*a1 == 1)
    {
      sub_19B5BC034((a1 + 5476), a1 + 6);
      sub_19B5BC034((v13 + 1104), a1 + 3);
      if (*(a1 + 1308) == *(a1 + 2615))
      {
        if (v13[1104] == 1)
        {
          sub_19B5BE7E0((v13 + 1104));
        }

        *buf = fabsf(*(a1 + 1301) * 1.2);
        sub_19B5BC034((a1 + 5752), buf);
      }
    }

    a1[1] = 0;
    *(a1 + 4) = 0u;
    *(a1 + 20) = 0u;
    *(a1 + 36) = 0u;
    if (*(a1 + 14) == *(a1 + 27) && *(a1 + 91) == *(a1 + 181) && *(a1 + 168) == *(a1 + 335) && *(a1 + 245) == *(a1 + 489))
    {
      sub_19B5BC2E8(a1 + 26, a1 + 642, a1 + 750);
      sub_19B5BC2E8(a1 + 180, a1 + 696, a1 + 804);
      sub_19B5BC2E8(a1 + 334, a1 + 858, a1 + 966);
      sub_19B5BC2E8(a1 + 488, a1 + 912, a1 + 1020);
    }

    if ((*a1 != 1 || *(a1 + 1446) == *(a1 + 2891)) && *(a1 + 322) == *(a1 + 643) && *(a1 + 349) == *(a1 + 697) && *(a1 + 376) == *(a1 + 751) && *(a1 + 403) == *(a1 + 805) && *(a1 + 430) == *(a1 + 859) && *(a1 + 457) == *(a1 + 913) && *(a1 + 484) == *(a1 + 967) && *(a1 + 511) == *(a1 + 1021))
    {
      v71 = a1 + 5004;
      *(a1 + 1251) = (sub_19B5BC378(a1 + 642, a1 + 696) * 3282.8) / 25.0;
      *(a1 + 1252) = (sub_19B5BC378(a1 + 750, a1 + 804) * 3282.8) / 25.0;
      *(a1 + 1253) = (sub_19B5BC378(a1 + 858, a1 + 912) * 96.17) / 25.0;
      *(a1 + 1254) = (sub_19B5BC378(a1 + 966, a1 + 1020) * 96.17) / 25.0;
      v72 = a1 + 2148;
      v73 = *(a1 + 538);
      v74 = *(a1 + 1074) + *(a1 + 1075);
      if (v74 < v73)
      {
        v73 = 0;
      }

      *&a1[16 * (v74 - v73) + 2156] = *v71;
      v75 = *(a1 + 1075);
      v76 = *(a1 + 538);
      if (v76 <= v75)
      {
        v77 = *v72 + 1;
        if (v77 < v76)
        {
          LOWORD(v76) = 0;
        }

        *v72 = v77 - v76;
      }

      else
      {
        *(a1 + 1075) = v75 + 1;
      }

      v78 = sub_19B5BC5F0(a1 + 642);
      v79 = sub_19B5BEE68(a1 + 642, *(a1 + 643));
      v80 = -v78;
      if (v78 > 0.0)
      {
        v80 = v78;
      }

      v82 = v79 < 0.0076154 && v80 < 0.17453;
      v13[1001] = v82;
      v83 = sub_19B5BC5F0(a1 + 696);
      v84 = sub_19B5BEE68(a1 + 696, *(a1 + 697));
      v85 = -v83;
      if (v83 > 0.0)
      {
        v85 = v83;
      }

      v87 = v84 < 0.0076154 && v85 < 0.17453;
      v13[1002] = v87;
      sub_19B5BC7B8(a1 + 334);
      v89 = -v88;
      if (v88 > 0.0)
      {
        v89 = v88;
      }

      if (v89 <= 0.25)
      {
        v90 = *(a1 + 636);
      }

      else
      {
        *(a1 + 636) = *&a7;
        v90 = a7;
      }

      v92 = ((a7 - v90) * 0.000001) < 0.5 && v90 != 0;
      v13[1003] = v92;
      if (v13[1001] & 1) != 0 || (v13[1002])
      {
        v93 = 0;
      }

      else
      {
        v119 = sub_19B5BCC5C(a1 + 26, 0.2618, 0.2618);
        v120 = sub_19B5BCC5C(a1 + 180, 0.17453, 0.17453);
        v121 = sub_19B5BC5F0(a1 + 642);
        v122 = sub_19B5BC5F0(a1 + 696);
        v123 = v121 - v122;
        if ((v121 - v122) <= 0.0)
        {
          v123 = -(v121 - v122);
        }

        v124 = -v121;
        if (v121 > 0.0)
        {
          v124 = v121;
        }

        if (v122 <= 0.0)
        {
          v122 = -v122;
        }

        if (v124 < v122)
        {
          v122 = v124;
        }

        if (v123 >= (v122 * 0.2) || !v120 || (v93 = a7, !v119))
        {
LABEL_69:
          v94 = sub_19B5BC5F0(a1 + 642);
          v95 = sub_19B5BC5F0(a1 + 696);
          *v96.i32 = -v95;
          if (v95 > 0.0)
          {
            *v96.i32 = v95;
          }

          v97 = -v94;
          if (v94 > 0.0)
          {
            v97 = v94;
          }

          if (v97 < 0.087266)
          {
            v97 = 0.087266;
          }

          v98 = v95 - v94;
          if (v98 <= 0.0)
          {
            v98 = -v98;
          }

          v99 = ((*v96.i32 / v97) > 3.0) & ~v13[1002] | (v98 > 0.5236) & ~v13[1004];
          v13[1000] = v99;
          if (v99)
          {
            v100 = *(a1 + 1270) + 1;
            *(a1 + 1270) = v100;
            if (v100 >= 4)
            {
              *(a1 + 634) = *&a7;
            }
          }

          else
          {
            *(a1 + 1270) = 0;
          }

          if (v13[956] == 1)
          {
            *v72 = 0;
            v101 = 1.0;
          }

          else
          {
            v102 = *(a1 + 1075);
            if (v102 < 0x1A || (v103 = v102 - 25, *(a1 + 1255) = sub_19B5BC3F0(a1 + 1074, v102 - 25, 0), *(a1 + 1256) = sub_19B5BC3F0(a1 + 1074, v103, 1uLL), *(a1 + 1257) = sub_19B5BC3F0(a1 + 1074, v103, 2uLL), *(a1 + 1258) = sub_19B5BC3F0(a1 + 1074, v103, 3uLL), v101 = 1.0, (v13[956] & 1) == 0))
            {
              v101 = 1.0;
              if ((v13[1003] & 1) == 0)
              {
                v104 = sub_19B5BC5F0(a1 + 642);
                if (v104 <= 0.0)
                {
                  v104 = -v104;
                }

                if (v104 < 0.5236)
                {
                  v105 = *(a1 + 634);
                  if (v105)
                  {
                    if (((a7 - v105) * 0.000001) >= 3.0)
                    {
                      v101 = 1.0;
                    }

                    else
                    {
                      v101 = 3.0;
                    }
                  }
                }
              }
            }
          }

          v106 = 0.5;
          if (v13[956])
          {
            v106 = 0.25;
          }

          *v96.i32 = v101 * v106;
          v107 = vaddq_f32(*(v13 + 924), xmmword_19B7B7490);
          *&v96.i32[1] = v106;
          *(v13 + 940) = vmulq_f32(vzip1q_s32(v96, vrev64q_s32(v96)), vbslq_s8(vcgtq_f32(xmmword_19B7B74A0, v107), xmmword_19B7B74A0, v107));
          if (*a1 != 1)
          {
LABEL_228:
            if (fabsf(sub_19B5BC5F0(a1 + 642)) <= 0.17453)
            {
              v187 = v13[956];
            }

            else
            {
              v187 = 1;
            }

            v188 = *a1;
            v189 = *(a1 + 1251);
            v190 = *(a1 + 1259);
            v191 = v189 > v190;
            if (*a1 && v189 <= v190)
            {
              v191 = v13[1758];
            }

            else
            {
              if (!*a1)
              {
                goto LABEL_238;
              }

              v191 = 1;
            }

            if (v13[1005] == 1)
            {
              v191 &= v13[1757];
            }

LABEL_238:
            if (fabsf(sub_19B5BC5F0(a1 + 750)) <= 0.087266)
            {
              v192 = v13[956];
            }

            else
            {
              v192 = 1;
            }

            v193 = *(a1 + 1252);
            v194 = v192 & (v193 > *(a1 + 1260));
            if (v188)
            {
              if (v187 & v191)
              {
                v195 = 1;
              }

              else
              {
                v195 = (v13[1005] ^ 1) & v194;
              }

              if (*(a1 + 1254) <= *(a1 + 1262))
              {
                v196 = (*(a1 + 1253) > *(a1 + 1261)) & ~v13[1005];
              }

              else
              {
                v196 = 1;
              }
            }

            else
            {
              v195 = v187 & v191 | v194;
              v196 = *(a1 + 1254) > *(a1 + 1262);
              if (*(a1 + 1253) > *(a1 + 1261))
              {
                v196 = 1;
              }
            }

            if ((v13[956] & 1) == 0)
            {
              v198 = v195 & v196;
              v13[956] = v198 & 1;
              if ((v198 & 1) == 0)
              {
                return;
              }

              if (sub_19B5BC984(a1, a7) || v188 && ((sub_19B5BC984(a1, a7) & 1) != 0 || (v13[1866] & 1) != 0 || (*(a1 + 749) + 200000.0) >= a7))
              {
                v13[956] = 0;
                return;
              }

              *(a1 + 632) = 0;
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E28D80);
              }

              v199 = off_1EAFE29A0;
              if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
              {
                v200 = *(a1 + 1251);
                v201 = *(a1 + 1252);
                v202 = *(a1 + 1253);
                v203 = *(a1 + 1254);
                v204 = *(a1 + 1255);
                v205 = *(a1 + 1256);
                v206 = *(a1 + 1257);
                v207 = *(a1 + 1258);
                *buf = 134220288;
                v302 = a7;
                v303 = 2048;
                v304 = v200;
                v305 = 2048;
                *v306 = v201;
                *&v306[8] = 2048;
                *v307 = v202;
                *&v307[8] = 2048;
                v308 = v203;
                *v309 = 2048;
                *&v309[2] = v204;
                v310 = 2048;
                v311 = v205;
                v312 = 2048;
                v313 = v206;
                v314 = 2048;
                v315 = v207;
                v316 = 2048;
                v317 = 0xBFF0000000000000;
                _os_log_impl(&dword_19B41C000, v199, OS_LOG_TYPE_DEFAULT, "[CMComplexTransition][Entering Complex Transition] Timestamp: %llu, VrtRotSim: %.2f, HrzRotSim: %.2f, VrtTrnSim: %.2f, HrzTrnSim: %.2f, VrtRotSimBln: %.2f, HrzRotSimBln: %.2f, VrtTrnSimBln: %.2f, HrzTrnSimBln: %.2f, TimeSincePureYawRot: %0.1f", buf, 0x66u);
              }

              v208 = sub_19B420058();
              if (*(v208 + 160) <= 1 && *(v208 + 164) <= 1 && *(v208 + 168) <= 1 && !*(v208 + 152))
              {
                goto LABEL_335;
              }

              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E28D80);
              }

              v209 = *(a1 + 1251);
              v210 = *(a1 + 1252);
              v211 = *(a1 + 1253);
              v212 = *(a1 + 1254);
              v213 = *(a1 + 1255);
              v214 = *(a1 + 1256);
              v215 = *(a1 + 1257);
              v216 = *(a1 + 1258);
              v284 = 134220288;
              v285 = a7;
              v286 = 2048;
              v287 = v209;
              v288 = 2048;
              *v289 = v210;
              *&v289[8] = 2048;
              *v290 = v211;
              *&v290[8] = 2048;
              v291 = v212;
              *v292 = 2048;
              *&v292[2] = v213;
              v293 = 2048;
              v294 = v214;
              v295 = 2048;
              v296 = v215;
              v297 = 2048;
              v298 = v216;
              v299 = 2048;
              v300 = 0xBFF0000000000000;
              LODWORD(v272) = 102;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMComplexTransition][Entering Complex Transition] Timestamp: %llu, VrtRotSim: %.2f, HrzRotSim: %.2f, VrtTrnSim: %.2f, HrzTrnSim: %.2f, VrtRotSimBln: %.2f, HrzRotSimBln: %.2f, VrtTrnSimBln: %.2f, HrzTrnSimBln: %.2f, TimeSincePureYawRot: %0.1f", &v284, v272, *&v273, *(&v273 + 1), *&v274, *(&v274 + 1), *&v275, *(&v275 + 1), *&v276, *(&v276 + 1));
              v218 = v217;
              sub_19B6BB7CC("Generic", 1, 0, 2, "void CMComplexTransition::logEnteringComplexTransition(const uint64_t) const", "CoreLocation: %s\n", v217);
LABEL_333:
              if (v218 != buf)
              {
                free(v218);
              }

LABEL_335:
              sub_19B5BCED8(a1);
              return;
            }

            if (*v71 <= 100.0)
            {
              if ((v193 <= 100.0) | v195 & 1)
              {
                LOBYTE(v197) = 0;
                goto LABEL_297;
              }
            }

            else if (v195)
            {
              LOBYTE(v197) = 0;
              goto LABEL_298;
            }

            v219 = *(a1 + 633);
            v220 = sub_19B5BF0D0(a1 + 26, 0, *(a1 + 27));
            v221 = 0;
            *buf = v220;
            *&v302 = COERCE_DOUBLE(__PAIR64__(v223, v222));
            v224 = 0.0;
            do
            {
              v224 = v224 + (*&buf[v221] * *&buf[v221]);
              v221 += 4;
            }

            while (v221 != 12);
            v225 = sub_19B5BF0D0(a1 + 180, 0, *(a1 + 181));
            v226 = 0;
            *buf = v225;
            *&v302 = COERCE_DOUBLE(__PAIR64__(v228, v227));
            v229 = 0.0;
            do
            {
              v229 = v229 + (*&buf[v226] * *&buf[v226]);
              v226 += 4;
            }

            while (v226 != 12);
            v230 = sqrtf(v224);
            v232 = ((a7 - v219) * 0.000001) <= 5.0 || v219 == 0;
            v197 = fmaxf(v230, sqrtf(v229)) > 0.05236 && v232;
            if (v188)
            {
              if (v13[1005] == 1)
              {
                v233 = *(a1 + 2890) + *(a1 + 2891) - 1;
                v234 = *(a1 + 1446);
                if (v233 < v234)
                {
                  v234 = 0;
                }

                v235 = *&a1[4 * (v233 - v234) + 5788] > 0.17453;
              }

              else
              {
                v235 = 1;
              }

              v197 &= v235;
            }

            if (!*(a1 + 633) && v197)
            {
              *(a1 + 633) = *&a7;
              LOBYTE(v197) = 1;
            }

LABEL_297:
            if ((v195 & 1) == 0)
            {
LABEL_299:
              if (v13[1004])
              {
                v236 = 0;
              }

              else
              {
                v236 = v13[1000];
              }

              v237 = sub_19B5BC5F0(a1 + 642);
              v238 = sub_19B5BEE68(a1 + 642, *(a1 + 643));
              v239 = -v237;
              if (v237 > 0.0)
              {
                v239 = v237;
              }

              v241 = v238 < 0.0076154 && v239 < 0.087266;
              v242 = sub_19B5BC5F0(a1 + 696);
              v243 = sub_19B5BEE68(a1 + 696, *(a1 + 697));
              v244 = -v242;
              if (v242 > 0.0)
              {
                v244 = v242;
              }

              v245 = v241 && v244 < 0.087266;
              if (v243 >= 0.0076154)
              {
                v245 = 0;
              }

              v246 = ((v236 | v245) ^ 1) & (v195 | v197);
              v13[956] = v246 & 1;
              if (v188 && v13[1756] == 1 && *(a1 + 1492) < 1.7453)
              {
                v13[956] = 0;
                *(a1 + 749) = *&a7;
              }

              else if (v246)
              {
                return;
              }

              *(a1 + 633) = 0;
              v247 = *(a1 + 632);
              if (v247)
              {
                v248 = ((a7 - v247) * 0.000001);
              }

              else
              {
                v248 = -1.0;
              }

              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E28D80);
              }

              v249 = off_1EAFE29A0;
              if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
              {
                v250 = *(a1 + 1251);
                v251 = *(a1 + 1252);
                v252 = *(a1 + 1253);
                v253 = *(a1 + 1254);
                v254 = *(a1 + 1255);
                v255 = *(a1 + 1256);
                v256 = *(a1 + 1257);
                v257 = *(a1 + 1258);
                *buf = 134220288;
                v302 = a7;
                v303 = 2048;
                v304 = v250;
                v305 = 2048;
                *v306 = v251;
                *&v306[8] = 2048;
                *v307 = v252;
                *&v307[8] = 2048;
                v308 = v253;
                *v309 = 2048;
                *&v309[2] = v254;
                v310 = 2048;
                v311 = v255;
                v312 = 2048;
                v313 = v256;
                v314 = 2048;
                v315 = v257;
                v316 = 2048;
                v317 = *&v248;
                _os_log_impl(&dword_19B41C000, v249, OS_LOG_TYPE_DEFAULT, "[CMComplexTransition][Exiting Complex Transition] Timestamp: %llu, VrtRotSim: %.2f, HrzRotRim: %.2f, VrtTrnSim: %.2f, HrzTrnSim: %.2f, VrtRotSimBln: %.2f, HrzRotSimBln: %.2f, VrtTrnSimBln: %.2f, HrzTrnSimBln: %.2f, TimeSincePureYawRot: %0.1f", buf, 0x66u);
              }

              v258 = sub_19B420058();
              if (*(v258 + 160) <= 1 && *(v258 + 164) <= 1 && *(v258 + 168) <= 1 && !*(v258 + 152))
              {
                goto LABEL_335;
              }

              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E28D80);
              }

              v259 = *(a1 + 1251);
              v260 = *(a1 + 1252);
              v261 = *(a1 + 1253);
              v262 = *(a1 + 1254);
              v263 = *(a1 + 1255);
              v264 = *(a1 + 1256);
              v265 = *(a1 + 1257);
              v266 = *(a1 + 1258);
              v284 = 134220288;
              v285 = a7;
              v286 = 2048;
              v287 = v259;
              v288 = 2048;
              *v289 = v260;
              *&v289[8] = 2048;
              *v290 = v261;
              *&v290[8] = 2048;
              v291 = v262;
              *v292 = 2048;
              *&v292[2] = v263;
              v293 = 2048;
              v294 = v264;
              v295 = 2048;
              v296 = v265;
              v297 = 2048;
              v298 = v266;
              v299 = 2048;
              v300 = *&v248;
              LODWORD(v272) = 102;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMComplexTransition][Exiting Complex Transition] Timestamp: %llu, VrtRotSim: %.2f, HrzRotRim: %.2f, VrtTrnSim: %.2f, HrzTrnSim: %.2f, VrtRotSimBln: %.2f, HrzRotSimBln: %.2f, VrtTrnSimBln: %.2f, HrzTrnSimBln: %.2f, TimeSincePureYawRot: %0.1f", &v284, v272, *&v273, *(&v273 + 1), *&v274, *(&v274 + 1), *&v275, *(&v275 + 1), *&v276, *(&v276 + 1));
              v218 = v267;
              sub_19B6BB7CC("Generic", 1, 0, 2, "void CMComplexTransition::logExitingComplexTransition(const uint64_t) const", "CoreLocation: %s\n", v267);
              goto LABEL_333;
            }

LABEL_298:
            *(a1 + 633) = 0;
            goto LABEL_299;
          }

          *(a1 + 746) = 0;
          if (*(a1 + 1377) == *(a1 + 2753) && *(a1 + 1308) == *(a1 + 2615))
          {
            for (i = 50; i != 60; ++i)
            {
              v109 = *sub_19B5BFE1C(a1 + 2752, i);
              *(a1 + 1492) = *(a1 + 1492) + (v109 * *sub_19B5BFE1C(a1 + 2614, i));
            }

            for (j = 10; j != 60; ++j)
            {
              v111 = *sub_19B5BFE1C(a1 + 2752, j);
              v112 = *(a1 + 1493) + (v111 * *sub_19B5BFE1C(a1 + 2614, j));
              *(a1 + 1493) = v112;
            }

            v113.i32[0] = *(a1 + 1492);
            v113.f32[1] = v112;
            *(a1 + 746) = vbsl_s8(vcgez_f32(v113), vsqrt_f32(v113), vneg_f32(vsqrt_f32(vneg_f32(v113))));
            v114 = sub_19B5BC5F0(a1 + 642);
            v115 = sub_19B5BC5F0(a1 + 750);
            v116 = fabsf(v114);
            if (v115 < 0.17453)
            {
              v115 = 0.17453;
            }

            v117 = v116 / v115;
            *(a1 + 1491) = v117;
            if (v13[1880])
            {
              v118 = *(a1 + 1492) > 3.4907;
LABEL_106:
              v13[1880] = v118;
              goto LABEL_121;
            }

            if (v117 >= 4.0 && *(a1 + 1493) >= 12.217)
            {
              v118 = 1;
              goto LABEL_106;
            }
          }

LABEL_121:
          if (v13[1888])
          {
            v125 = fabsf(*(a1 + 1509));
            v13[1888] = v125 > 0.17453;
            if (v125 <= 0.17453)
            {
              *(a1 + 1495) = 0;
            }
          }

          else
          {
            v126 = fabsf(*(a1 + 1508));
            v127 = *(a1 + 1495);
            v128 = v127 - 5;
            if (v127 < 5)
            {
              v128 = 0;
            }

            if (v126 > 0.2618)
            {
              v129 = v127 + 1;
            }

            else
            {
              v129 = v128;
            }

            *(a1 + 1495) = v129;
            v13[1888] = v129 > 0x31;
          }

          v130 = *sub_19B5BFE1C(a1 + 2890, 6uLL);
          v131 = *(a1 + 2890) + *(a1 + 2891) - 1;
          v132 = *(a1 + 1446);
          if (v131 < v132)
          {
            v132 = 0;
          }

          v133 = *&a1[4 * (v131 - v132) + 5788];
          v134 = *(a1 + 1464);
          if (v134)
          {
            v135 = 0.0;
          }

          else
          {
            v135 = 0.087266;
          }

          v136 = *(a1 + 1458);
          v137 = v136 + v135;
          if ((v134 + 1) < 0x1F4)
          {
            v138 = v134 + 1;
          }

          else
          {
            v138 = 500;
          }

          if (v133 <= v137)
          {
            v138 = 0;
          }

          *(a1 + 1464) = v138;
          if ((v13[1757] & 1) != 0 || (v133 <= (v136 + 0.34907) ? (v139 = v138 > 0x19) : (v139 = 1), !v139 ? (v140 = 0) : (v140 = 1), v13[1757] = v140, v140 != 1))
          {
            v155 = *sub_19B5BFE1C(a1 + 2890, 6uLL);
            if (vabds_f32(v155, sub_19B5C0034(a1 + 2890, sub_19B5C024C, 0)) >= 0.0000001)
            {
              goto LABEL_167;
            }

            if (v13[1656] == 1)
            {
              sub_19B5BE7E0((v13 + 1656));
            }

            if (vabds_f32(v155, *(a1 + 1439)) >= 0.0000001)
            {
              v158 = 0;
              v156 = 0;
              v157 = 1;
            }

            else
            {
              if (vabds_f32(v155, sub_19B5C0034(a1 + 2890, sub_19B5C0258, 0)) >= 0.0000001)
              {
                goto LABEL_168;
              }

LABEL_167:
              if (v13[1656] == 1)
              {
                sub_19B5BE7E0((v13 + 1656));
              }

              if (vabds_f32(v155, *(a1 + 1439)) >= 0.0000001)
              {
                v157 = 0;
                v158 = 1;
                v156 = 1;
              }

              else
              {
LABEL_168:
                v156 = 0;
                v157 = 0;
                v158 = 1;
              }
            }

            if (v13[1757] == 1)
            {
              v159 = *(a1 + 1458);
              v13[1758] = v133 > (v159 + 0.69813);
              v160 = v13[1756];
              if ((v158 | v160) == 1)
              {
                if ((v160 & 1) == 0)
                {
                  goto LABEL_185;
                }

                if ((*(a1 + 1462) - v133) <= fmaxf(*(a1 + 1462) * 0.5, 0.5236))
                {
                  v156 = 0;
                }

                if (v156 == 1)
                {
                  sub_19B5BE23C(a1, a7);
                  goto LABEL_185;
                }
              }

              else
              {
                *(a1 + 1462) = v130;
                v13[1756] = 1;
              }

              v13[1757] = v133 > v159;
              v13[1758] = v133 > (v159 + 0.087266);
              if (v133 > v159)
              {
                goto LABEL_185;
              }

              sub_19B5BE23C(a1, a7);
            }

            if (*(a1 + 1446) == *(a1 + 2891))
            {
              if (v157)
              {
                v161 = *(a1 + 730);
                v162 = fmaxf(v130, 0.17453) + (v161++ * *(a1 + 1458));
                *(a1 + 1458) = v162 / v161;
                *(a1 + 730) = v161;
              }
            }

            else
            {
              *(a1 + 730) = 0;
              *(a1 + 1458) = 1057360530;
            }
          }

          else
          {
            *(a1 + 1462) = v130;
            v13[1756] = 0;
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E28D80);
            }

            v141 = off_1EAFE29A0;
            if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
            {
              v142 = *(a1 + 1458);
              v143 = *(a1 + 1464);
              v144 = v13[1758];
              v145 = *(a1 + 1462);
              v146 = v13[1756];
              *buf = 134219520;
              *&v302 = v133;
              v303 = 2048;
              v304 = v142;
              v305 = 1024;
              *v306 = v143;
              *&v306[4] = 1024;
              *&v306[6] = v144;
              *v307 = 2048;
              *&v307[2] = v145;
              LOWORD(v308) = 1024;
              *(&v308 + 2) = v146;
              HIWORD(v308) = 2048;
              *v309 = a7;
              _os_log_impl(&dword_19B41C000, v141, OS_LOG_TYPE_DEFAULT, "[CMComplexTransition] Entering body turn, body turn signal: %.2f, fBodyTurnMaximaBaseline: %0.2f, fCounterBodyTurnAboveBaseline: %d, fInStrongBodyTurn: %d, fLastInBodyTurnMaxima: %0.2f, fLastInBodyTurnFallingEdge: %d, timestamp: %llu", buf, 0x3Cu);
            }

            v147 = sub_19B420058();
            if (*(v147 + 160) > 1 || *(v147 + 164) > 1 || *(v147 + 168) > 1 || *(v147 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E28D80);
              }

              v148 = *(a1 + 1458);
              v149 = *(a1 + 1464);
              v150 = v13[1758];
              v151 = *(a1 + 1462);
              v152 = v13[1756];
              v284 = 134219520;
              *&v285 = v133;
              v286 = 2048;
              v287 = v148;
              v288 = 1024;
              *v289 = v149;
              *&v289[4] = 1024;
              *&v289[6] = v150;
              *v290 = 2048;
              *&v290[2] = v151;
              LOWORD(v291) = 1024;
              *(&v291 + 2) = v152;
              HIWORD(v291) = 2048;
              *v292 = a7;
              LODWORD(v272) = 60;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMComplexTransition] Entering body turn, body turn signal: %.2f, fBodyTurnMaximaBaseline: %0.2f, fCounterBodyTurnAboveBaseline: %d, fInStrongBodyTurn: %d, fLastInBodyTurnMaxima: %0.2f, fLastInBodyTurnFallingEdge: %d, timestamp: %llu", COERCE_DOUBLE(&v284), v272, v273, DWORD2(v273), *&v274, DWORD2(v274), v275);
              v154 = v153;
              sub_19B6BB7CC("Generic", 1, 0, 2, "void CMComplexTransition::updateInBodyTurnState(const uint64_t)", "CoreLocation: %s\n", v153);
              if (v154 != buf)
              {
                free(v154);
              }
            }
          }

LABEL_185:
          *(v13 + 1865) = 0;
          v163 = *(a1 + 750);
          if (v163 && (*(a1 + 1508) + *(a1 + 1508)) <= 0.7854 && (v13[1888] & 1) == 0 && (v13[1880] & 1) == 0)
          {
            if ((v13[1928] & 1) == 0)
            {
              v163 = *(a1 + 751);
            }

            _CF = a7 >= v163;
            v164 = a7 - v163;
            if (_CF)
            {
              v165 = v164 < 0x1E8481 ? 1 : v13[1928];
              v13[1865] = v165;
              if (v165 == 1)
              {
                v166 = sub_19B5BE518((a1 + 5200), 20, 0x28u);
                v167 = fabsf(*(a1 + 1504));
                v168 = fabsf((v166 * 40.0) / 50.0);
                v169 = v167 * 0.5;
                v139 = v167 <= 2.618;
                v170 = 1.309;
                if (v139)
                {
                  v170 = v169;
                }

                v13[1866] = v168 < v170;
              }
            }
          }

          if (v13[1888] == 1)
          {
            v13[1864] = 1;
          }

          if (v13[1756] == 1)
          {
            v13[1864] = 0;
          }

          else
          {
            v171 = sub_19B5BC5F0(a1 + 642);
            v172 = *(a1 + 1489);
            v173 = fmaxf(v172, 0.2618);
            v174 = fabsf(v171);
            if (v13[1864])
            {
              v175 = v173 + 0.17453;
            }

            else
            {
              v176 = fmaxf(v172, 0.5236);
              v177 = 1.0;
              if (v13[1866])
              {
                v177 = 1.5;
              }

              v175 = v173 + (v177 * v176);
            }

            v13[1864] = v174 > v175;
            if (v174 > v175)
            {
              *(a1 + 1472) = 0;
              *(a1 + 367) = 0u;
              v13[1764] = 1;
LABEL_224:
              if (v13[1880])
              {
                v186 = 1;
              }

              else
              {
                v186 = v13[1888];
              }

              v13[1757] |= v186;
              goto LABEL_228;
            }
          }

          v178 = *sub_19B5BD934(a1 + 642, 0xCuLL);
          v179 = sub_19B5BF588(a1 + 642, 0, *(a1 + 643), 0);
          v180 = *sub_19B5BEA34(a1 + 642, v179);
          v181 = sub_19B5BF9A4(a1 + 642, 0, *(a1 + 643), 0);
          v182 = *sub_19B5BEA34(a1 + 642, v181);
          v183 = sub_19B5BFBC4(a1 + 642, 0, *(a1 + 643), 0);
          if (vabds_f32(v178, v180) < 0.0000001 && vabds_f32(v178, v183) >= 0.0000001 || vabds_f32(v178, v182) < 0.0000001 && vabds_f32(v178, v183) >= 0.0000001)
          {
            if (*(a1 + 643) <= 0xCu)
            {
              if (qword_1ED71C820 != -1)
              {
                dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
              }

              v268 = off_1ED71C828;
              if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
              {
                *buf = 134217984;
                v302 = 12;
                _os_log_impl(&dword_19B41C000, v268, OS_LOG_TYPE_FAULT, "Assertion failed: i < size(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 39,out of buffer range %zu.", buf, 0xCu);
              }

              v269 = sub_19B420058();
              if ((*(v269 + 160) & 0x80000000) == 0 || (*(v269 + 164) & 0x80000000) == 0 || (*(v269 + 168) & 0x80000000) == 0 || *(v269 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1ED71C820 != -1)
                {
                  dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
                }

                v284 = 134217984;
                v285 = 12;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < size(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 39,out of buffer range %zu.", &v284);
                v271 = v270;
                sub_19B6BB7CC("Generic", 1, 0, 0, "Element &CMVectorBufferBase<float, 1>::operator[](const size_t) [T = float, N = 1]", "CoreLocation: %s\n", v270);
                if (v271 != buf)
                {
                  free(v271);
                }
              }
            }

            v184 = sub_19B5BEA34(a1 + 642, 0xCuLL);
            v185 = *v184;
            if (*v184 > (*(a1 + 1489) + 0.17453))
            {
              *(a1 + 1472) = 0;
              *(a1 + 367) = 0u;
              v13[1764] = 1;
            }

            *buf = fabsf(v185);
            sub_19B5BC034((a1 + 5860), buf);
          }

          if (*(a1 + 2945))
          {
            if (v13[1764] == 1)
            {
              sub_19B5BE7E0((v13 + 1764));
            }

            *(a1 + 1489) = *(a1 + 1466);
          }

          goto LABEL_224;
        }
      }

      *(a1 + 632) = v93;
      goto LABEL_69;
    }
  }
}

float32_t sub_19B5BBFC0(uint64_t a1)
{
  v2.f32[0] = sub_19B447000((a1 + 56));
  v3 = 0;
  v5 = v4 + *(a1 + 20);
  v2.i32[1] = v6;
  v8 = vadd_f32(*(a1 + 12), v2);
  v9 = v5;
  do
  {
    v8.f32[v3] = -v8.f32[v3];
    ++v3;
  }

  while (v3 != 3);
  return v8.f32[0];
}

unsigned __int16 *sub_19B5BC034(uint64_t a1, float *a2)
{
  if (*(a1 + 32) == *(a1 + 30))
  {
    v3 = *(a1 + 4 * *(a1 + 28) + 36);
    v4 = *(a1 + 12);
    v5 = (*a2 - v3) - *(a1 + 16);
    *(a1 + 12) = v4 + v5;
    *(a1 + 16) = ((v4 + v5) - v4) - v5;
    v6 = (v3 + *a2) * (*a2 - v3);
  }

  else
  {
    v7 = *(a1 + 12);
    v8 = *a2 - *(a1 + 16);
    *(a1 + 12) = v7 + v8;
    *(a1 + 16) = ((v7 + v8) - v7) - v8;
    v6 = *a2 * *a2;
  }

  v9 = *(a1 + 20);
  v10 = v6 - *(a1 + 24);
  *(a1 + 20) = v9 + v10;
  *(a1 + 24) = ((v9 + v10) - v9) - v10;
  result = sub_19B5BE78C((a1 + 28), a2);
  *a1 = 1;
  return result;
}

uint64_t sub_19B5BC0F0(uint64_t a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v5 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v14 = a2;
      v15 = 2048;
      v16 = 3;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 279,invalid index %zu >= %zu.", buf, 0x16u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v9 = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = 3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 279,invalid index %zu >= %zu.", &v9, 22);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMVector<float, 3>::operator[](const size_t) [T = float, N = 3]", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  return a1 + 4 * a2;
}

unsigned __int16 *sub_19B5BC2E8(unsigned __int16 *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v5 = sub_19B5BF2B8(a1, 0, a1[1]);
  v7 = v6;
  v11 = v8 * 0.02;
  sub_19B5BF528(a2, &v11);
  v10 = sqrtf((v5 * v5) + (v7 * v7)) * 0.02;
  return sub_19B5BF528(a3, &v10);
}

float sub_19B5BC378(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v4 = 0;
  v5 = 0.0;
  do
  {
    v6 = sub_19B5BD934(a1, v4);
    v5 = v5 + (*v6 * *sub_19B5BD934(a2, v4++));
  }

  while (v4 != 25);
  return v5;
}

float sub_19B5BC3F0(unsigned __int16 *a1, unint64_t a2, unint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1[1])
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v10 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_FAULT, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 104,mean() on empty buffer.", buf, 2u);
    }

    v11 = sub_19B420058();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v14[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 104,mean() on empty buffer.", v14, 2);
      v13 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T CMVectorBufferBase<float, 4>::mean(size_t, size_t, size_t) const [T = float, N = 4]", "CoreLocation: %s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  v6 = 0;
  v7 = 0.0;
  do
  {
    v8 = sub_19B5BE81C(a1, v6);
    v7 = v7 + sub_19B5BDB18(v8, a3);
    ++v6;
  }

  while (a2 != v6);
  return v7 / a2;
}

float sub_19B5BC5F0(unsigned __int16 *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a1[1])
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v3 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 145,back() on empty buffer.", buf, 2u);
    }

    v4 = sub_19B420058();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v7[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 145,back() on empty buffer.", v7, 2);
      v6 = v5;
      sub_19B6BB7CC("Generic", 1, 0, 0, "Element CMVectorBufferBase<float, 1>::back() const [T = float, N = 1]", "CoreLocation: %s\n", v5);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  return *sub_19B5BEA34(a1, a1[1] - 1);
}

float sub_19B5BC7B8(unsigned __int16 *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a1[1])
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v3 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 145,back() on empty buffer.", buf, 2u);
    }

    v4 = sub_19B420058();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v7[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 145,back() on empty buffer.", v7, 2);
      v6 = v5;
      sub_19B6BB7CC("Generic", 1, 0, 0, "Element CMVectorBufferBase<float, 3>::back() const [T = float, N = 3]", "CoreLocation: %s\n", v5);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  return *sub_19B5BEC4C(a1, a1[1] - 1);
}

uint64_t sub_19B5BC984(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = a1 + 4096;
  if (*(a1 + 5052) == 1)
  {
    v4 = *(a1 + 5056);
    if (v4 && ((a2 - v4) * 0.000001) < 3.0)
    {
      return 1;
    }

    v5 = *(a1 + 5072);
    if (v5)
    {
      v6 = (a2 - v5) * 0.000001;
    }

    else
    {
      v6 = -1.0;
    }

    if (*(a1 + 5099))
    {
      goto LABEL_17;
    }

    v7 = sub_19B5BC5F0((a1 + 1284));
    if (v7 <= 0.0)
    {
      v7 = -v7;
    }

    if (v7 >= 0.5236)
    {
LABEL_17:
      v9 = 0;
    }

    else
    {
      v9 = v6 < 0.5 && *(a1 + 5072) != 0;
    }

    if (*(v2 + 1004) & 1) == 0 && ((*(v2 + 1000) | v9))
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28D80);
      }

      v10 = off_1EAFE29A0;
      v11 = v6;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(v2 + 1000);
        v13 = *(a1 + 5080);
        *buf = 67109632;
        v26 = v12;
        v27 = 1024;
        v28 = v13;
        v29 = 2048;
        v30 = v11;
        _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "[CMComplexTransition][Head Turn Blocked CT] fInstantaneousHeadTurn: %d, fSustainedHeadTurnCounter: %d, time elapsed: %0.2f", buf, 0x18u);
      }

      v14 = sub_19B420058();
      if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E28D80);
        }

        v15 = *(v2 + 1000);
        v16 = *(a1 + 5080);
        LODWORD(v20) = 67109632;
        HIDWORD(v20) = v15;
        v21 = 1024;
        v22 = v16;
        v23 = 2048;
        v24 = v11;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMComplexTransition][Head Turn Blocked CT] fInstantaneousHeadTurn: %d, fSustainedHeadTurnCounter: %d, time elapsed: %0.2f", &v20, 24, v20);
        v18 = v17;
        sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMComplexTransition::checkFalsePositiveSuppression(const uint64_t) const", "CoreLocation: %s\n", v17);
        if (v18 != buf)
        {
          free(v18);
        }
      }

      return 1;
    }
  }

  return 0;
}

uint64_t sub_19B5BCC5C(unsigned __int16 *a1, float a2, float a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1ED71C958, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71C958))
  {
    qword_1ED71C960 = 0;
    dword_1ED71C968 = 1065353216;
    __cxa_guard_release(&qword_1ED71C958);
  }

  v6 = 0;
  v29[0] = 1;
  v33 = 0;
  v32 = 0;
  v34 = 0x1900000000;
  do
  {
    v7 = sub_19B5BF344(a1, v6);
    v8 = 0;
    v9 = 0.0;
    do
    {
      v9 = v9 + (*&v7[v8] * *&v7[v8]);
      v8 += 2;
    }

    while (v8 != 6);
    if (sqrtf(v9) >= 0.000001)
    {
      v10 = sub_19B5BF344(a1, v6);
      v11 = sub_19B5BF344(a1, v6);
      v12 = 0;
      v13 = 0.0;
      do
      {
        v13 = v13 + (*&v11[v12] * *&v11[v12]);
        v12 += 2;
      }

      while (v12 != 6);
      v14 = sqrtf(v13);
      v15 = (((v10[2] / v14) * *&dword_1ED71C968) + ((v10[1] / v14) * *(&qword_1ED71C960 + 1))) + ((*v10 / v14) * *&qword_1ED71C960);
      v16 = 1.0;
      if (v15 <= 1.0)
      {
        v16 = -1.0;
        if (v15 >= -1.0)
        {
          v16 = v15;
        }
      }

      v17 = acosf(v16);
      if (v17 <= 0.0)
      {
        v17 = -v17;
      }

      v18 = 3.14159265 - v17;
      if (v18 <= v17)
      {
        v17 = v18;
      }

      v28 = v17;
      sub_19B5BC034(v29, &v28);
    }

    else
    {
      v28 = 0.0;
      sub_19B5BC034(v29, &v28);
    }

    ++v6;
  }

  while (v6 != 25);
  if (v29[0] == 1)
  {
    sub_19B5BE7E0(v29);
    v19 = v31;
    if (v29[0])
    {
      sub_19B5BE7E0(v29);
    }
  }

  else
  {
    v19 = v31;
  }

  if (v19 >= 0.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0.0;
  }

  v21 = v30;
  sub_19B5BF0D0(a1, 0, a1[1]);
  v23 = sqrtf(v20);
  v24 = -v22;
  if (v22 > 0.0)
  {
    v24 = v22;
  }

  v26 = v21 < a2 && v23 < a3;
  return v26 & (v24 > 0.087266);
}

void sub_19B5BCED8(unsigned __int16 *a1)
{
  v63 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E28D80);
  }

  v2 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_19B5BF588(a1 + 642, 0, a1[643], 0);
    v4 = (*sub_19B5BEA34(a1 + 642, v3) * 57.296);
    v5 = (sub_19B5BF7A8(a1 + 642, a1[643]) * 57.296);
    v6 = sub_19B5BF9A4(a1 + 642, 0, a1[643], 0);
    v7 = (*sub_19B5BEA34(a1 + 642, v6) * 57.296);
    v8 = (sub_19B5BD770(a1 + 642) * 57.296);
    v9 = (*sub_19B5BD934(a1 + 642, 0xCuLL) * 57.296);
    *buf = 134219264;
    v52 = v4;
    v53 = 2048;
    v54 = v5;
    v55 = 2048;
    v56 = v7;
    v57 = 2048;
    v58 = v8;
    v59 = 2048;
    v60 = v9;
    v61 = 2048;
    v62 = (sub_19B5BC5F0(a1 + 642) * 57.296);
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[CMComplexTransition] Src inertial-Z rot rate buffer stats (dps): Min: %.2f, Mean: %.2f, Max: %.2f, First: %.2f, Mid: %.2f, Last: %.2f ", buf, 0x3Eu);
  }

  v10 = sub_19B420058();
  if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28D80);
    }

    v11 = off_1EAFE29A0;
    v12 = (sub_19B5BD4FC(a1 + 642) * 57.296);
    v13 = (sub_19B5BF7A8(a1 + 642, a1[643]) * 57.296);
    v14 = (sub_19B5BD730(a1 + 642) * 57.296);
    v15 = (sub_19B5BD770(a1 + 642) * 57.296);
    v16 = (*sub_19B5BD934(a1 + 642, 0xCuLL) * 57.296);
    v39 = 134219264;
    v40 = v12;
    v41 = 2048;
    v42 = v13;
    v43 = 2048;
    v44 = v14;
    v45 = 2048;
    v46 = v15;
    v47 = 2048;
    v48 = v16;
    v49 = 2048;
    v50 = (sub_19B5BC5F0(a1 + 642) * 57.296);
    LODWORD(v38) = 62;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v11, 0, "[CMComplexTransition] Src inertial-Z rot rate buffer stats (dps): Min: %.2f, Mean: %.2f, Max: %.2f, First: %.2f, Mid: %.2f, Last: %.2f ", COERCE_DOUBLE(&v39), v38);
    v18 = v17;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMComplexTransition::logVerticalRotationBufferStats(const uint64_t) const", "CoreLocation: %s\n", v17);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E28D80);
  }

  v19 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    v20 = sub_19B5BF588(a1 + 696, 0, a1[697], 0);
    v21 = (*sub_19B5BEA34(a1 + 696, v20) * 57.296);
    v22 = (sub_19B5BF7A8(a1 + 696, a1[697]) * 57.296);
    v23 = sub_19B5BF9A4(a1 + 696, 0, a1[697], 0);
    v24 = (*sub_19B5BEA34(a1 + 696, v23) * 57.296);
    v25 = (sub_19B5BD770(a1 + 696) * 57.296);
    v26 = (*sub_19B5BD934(a1 + 696, 0xCuLL) * 57.296);
    v27 = sub_19B5BC5F0(a1 + 696);
    *buf = 134219264;
    v52 = v21;
    v53 = 2048;
    v54 = v22;
    v55 = 2048;
    v56 = v24;
    v57 = 2048;
    v58 = v25;
    v59 = 2048;
    v60 = v26;
    v61 = 2048;
    v62 = (v27 * 57.296);
    _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_DEFAULT, "[CMComplexTransition] Aux inertial-Z rot rate buffer stats (dps): Min: %.2f, Mean: %.2f, Max: %.2f, First: %.2f, Mid: %.2f, Last: %.2f ", buf, 0x3Eu);
  }

  v28 = sub_19B420058();
  if (*(v28 + 160) > 1 || *(v28 + 164) > 1 || *(v28 + 168) > 1 || *(v28 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28D80);
    }

    v29 = off_1EAFE29A0;
    v30 = (sub_19B5BD4FC(a1 + 696) * 57.296);
    v31 = (sub_19B5BF7A8(a1 + 696, a1[697]) * 57.296);
    v32 = (sub_19B5BD730(a1 + 696) * 57.296);
    v33 = (sub_19B5BD770(a1 + 696) * 57.296);
    v34 = (*sub_19B5BD934(a1 + 696, 0xCuLL) * 57.296);
    v35 = sub_19B5BC5F0(a1 + 696);
    v39 = 134219264;
    v40 = v30;
    v41 = 2048;
    v42 = v31;
    v43 = 2048;
    v44 = v32;
    v45 = 2048;
    v46 = v33;
    v47 = 2048;
    v48 = v34;
    v49 = 2048;
    v50 = (v35 * 57.296);
    LODWORD(v38) = 62;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v29, 0, "[CMComplexTransition] Aux inertial-Z rot rate buffer stats (dps): Min: %.2f, Mean: %.2f, Max: %.2f, First: %.2f, Mid: %.2f, Last: %.2f ", COERCE_DOUBLE(&v39), v38);
    v37 = v36;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMComplexTransition::logVerticalRotationBufferStats(const uint64_t) const", "CoreLocation: %s\n", v36);
    if (v37 != buf)
    {
      free(v37);
    }
  }
}

float sub_19B5BD53C(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v5 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v14 = a2;
      v15 = 2048;
      v16 = 1;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 273,invalid index %zu >= %zu.", buf, 0x16u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v9 = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = 1;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 273,invalid index %zu >= %zu.", &v9, 22);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMVector<float, 1>::operator[](const size_t) const [T = float, N = 1]", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  return *(a1 + 4 * a2);
}

float sub_19B5BD770(unsigned __int16 *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a1[1])
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v3 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 139,front() on empty buffer.", buf, 2u);
    }

    v4 = sub_19B420058();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v7[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 139,front() on empty buffer.", v7, 2);
      v6 = v5;
      sub_19B6BB7CC("Generic", 1, 0, 0, "Element CMVectorBufferBase<float, 1>::front() const [T = float, N = 1]", "CoreLocation: %s\n", v5);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  return *sub_19B5BEA34(a1, 0);
}

unsigned __int16 *sub_19B5BD934(unsigned __int16 *a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1[1] <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v5 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v12 = a2;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "Assertion failed: i < size(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 45,out of buffer range %zu.", buf, 0xCu);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v9 = 134217984;
      v10 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < size(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 45,out of buffer range %zu.", &v9);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 0, "const Element &CMVectorBufferBase<float, 1>::operator[](const size_t) const [T = float, N = 1]", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  return sub_19B5BEA34(a1, a2);
}

float sub_19B5BDB18(uint64_t a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2 >= 4)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v5 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v14 = a2;
      v15 = 2048;
      v16 = 4;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 273,invalid index %zu >= %zu.", buf, 0x16u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v9 = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = 4;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 273,invalid index %zu >= %zu.", &v9, 22);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMVector<float, 4>::operator[](const size_t) const [T = float, N = 4]", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  return *(a1 + 4 * a2);
}

void sub_19B5BDD10(const void **a1)
{
  sub_19B5BE628((a1 + 638), a1[638]);
  sub_19B5BDFDC(a1 + 638);
  sub_19B5BE628((a1 + 641), a1[641]);
  sub_19B5BDFDC(a1 + 641);
  sub_19B5BE628((a1 + 644), a1[644]);
  sub_19B5BDFDC(a1 + 644);
  sub_19B5BE628((a1 + 647), a1[647]);
  sub_19B5BDFDC(a1 + 647);
  operator new();
}

void sub_19B5BDFB4(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x19EAE76F0](a12, v12, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_19B5BDFDC(const void **result)
{
  if ((result[2] - *result) <= 0x10)
  {
    operator new();
  }

  return result;
}

void *sub_19B5BE08C(void *result, uint64_t *a2)
{
  v2 = result;
  v4 = result[1];
  v3 = result[2];
  if (v4 >= v3)
  {
    v7 = *result;
    v8 = v4 - *result;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_19B5BE690();
    }

    v10 = v3 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v15[4] = result;
    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_19B4C5080();
    }

    v12 = (8 * (v8 >> 3));
    v13 = *a2;
    *a2 = 0;
    *v12 = v13;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    *v2 = 0;
    v2[1] = v6;
    v14 = v2[2];
    v2[2] = 0;
    v15[2] = v7;
    v15[3] = v14;
    v15[0] = v7;
    v15[1] = v7;
    result = sub_19B5BE6A8(v15);
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = v4 + 1;
  }

  v2[1] = v6;
  return result;
}

BOOL sub_19B5BE1A8(float *a1, float a2)
{
  v2 = *a1;
  if (*a1)
  {
    *a1 = v2 - 1;
    v3 = *(a1 + 1);
    if ((v3 + 1) <= 4)
    {
      v4 = v3 + 1;
    }

    else
    {
      v4 = 0;
    }

    a1[v4 + 4] = a2;
  }

  else
  {
    v5 = 0;
    v6 = *(a1 + 1);
    if ((v6 + 1) <= 4)
    {
      v4 = v6 + 1;
    }

    else
    {
      v4 = 0;
    }

    a1[v4 + 4] = a2;
    a2 = 0.0;
    do
    {
      a2 = a2 + (a1[v5 + 13 - v4] * a1[v5 + 4]);
      ++v5;
    }

    while (v5 != 5);
  }

  v7 = v2 == 0;
  if ((v4 + 1) <= 4)
  {
    v8 = v4 + 1;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 1) = v8;
  a1[v8 + 4] = a2;
  return v7;
}

void sub_19B5BE23C(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  *(a1 + 5856) = 0;
  *(a1 + 5848) = 0;
  *(a1 + 5851) = 0;
  *(a1 + 5840) >>= 1;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E28D80);
  }

  v4 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 5780) + *(a1 + 5782) - 1;
    v6 = *(a1 + 5784);
    if (v5 < v6)
    {
      v6 = 0;
    }

    v7 = *(a1 + 4 * (v5 - v6) + 5788);
    v8 = *(a1 + 5832);
    v9 = *(a1 + 5856);
    v10 = *(a1 + 5848);
    v11 = *(a1 + 5852);
    *buf = 134219264;
    v36 = v7;
    v37 = 2048;
    v38 = v8;
    v39 = 1024;
    v40 = v9;
    v41 = 2048;
    v42 = v10;
    v43 = 1024;
    v44 = v11;
    v45 = 2048;
    v46 = a2;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "[CMComplexTransition] Exiting body turn, body turn signal: %.2f, fBodyTurnMaximaBaseline: %0.2f, fCounterBodyTurnAboveBaseline: %d, fLastInBodyTurnMaxima: %0.2f, fLastInBodyTurnFallingEdge: %d, timestamp: %llu", buf, 0x36u);
  }

  v12 = sub_19B420058();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28D80);
    }

    v13 = *(a1 + 5780) + *(a1 + 5782) - 1;
    v14 = *(a1 + 5784);
    if (v13 < v14)
    {
      v14 = 0;
    }

    v15 = *(a1 + 4 * (v13 - v14) + 5788);
    v16 = *(a1 + 5832);
    v17 = *(a1 + 5856);
    v18 = *(a1 + 5848);
    v19 = *(a1 + 5852);
    v23 = 134219264;
    v24 = v15;
    v25 = 2048;
    v26 = v16;
    v27 = 1024;
    v28 = v17;
    v29 = 2048;
    v30 = v18;
    v31 = 1024;
    v32 = v19;
    v33 = 2048;
    v34 = a2;
    LODWORD(v22) = 54;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMComplexTransition] Exiting body turn, body turn signal: %.2f, fBodyTurnMaximaBaseline: %0.2f, fCounterBodyTurnAboveBaseline: %d, fLastInBodyTurnMaxima: %0.2f, fLastInBodyTurnFallingEdge: %d, timestamp: %llu", COERCE_DOUBLE(&v23), v22);
    v21 = v20;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMComplexTransition::onBodyTurnStateExit(const uint64_t)", "CoreLocation: %s\n", v20);
    if (v21 != buf)
    {
      free(v21);
    }
  }
}

float sub_19B5BE518(uint64_t a1, int a2, unsigned int a3)
{
  if (a3 < 1)
  {
    v10 = 0.0;
  }

  else
  {
    v5 = a2;
    v6 = 0.0;
    v7 = 0.0;
    v8 = a3;
    do
    {
      v9 = *sub_19B5BFE1C((a1 + 28), v5) - v7;
      v10 = v6 + v9;
      v7 = ((v6 + v9) - v6) - v9;
      ++v5;
      v6 = v6 + v9;
      --v8;
    }

    while (v8);
  }

  return v10 / a3;
}

void sub_19B5BE5A4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_19B5BE628(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

os_log_t sub_19B5BE5F8()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

uint64_t sub_19B5BE628(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  while (v4 != a2)
  {
    v5 = *--v4;
    result = v5;
    *v4 = 0;
    if (v5)
    {
      result = MEMORY[0x19EAE76F0](result, 0x1000C40FF89C88ELL);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t sub_19B5BE6A8(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      MEMORY[0x19EAE76F0](v4, 0x1000C40FF89C88ELL);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

unsigned __int16 *sub_19B5BE720(unsigned __int16 *result, uint64_t a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  v4 = &result[6 * (v3 - v2)];
  v5 = *(a2 + 8);
  *(v4 + 1) = *a2;
  *(v4 + 4) = v5;
  v6 = result[1];
  v7 = *(result + 1);
  if (v7 <= v6)
  {
    v8 = *result + 1;
    if (v8 < v7)
    {
      LOWORD(v7) = 0;
    }

    *result = v8 - v7;
  }

  else
  {
    result[1] = v6 + 1;
  }

  return result;
}

unsigned __int16 *sub_19B5BE78C(unsigned __int16 *result, _DWORD *a2)
{
  v2 = result[1];
  v3 = *(result + 1);
  v4 = *result;
  if (v4 + v2 >= v3)
  {
    v5 = *(result + 1);
  }

  else
  {
    v5 = 0;
  }

  *&result[2 * (v4 + v2 - v5) + 4] = *a2;
  if (v3 <= v2)
  {
    if (v4 + 1 < v3)
    {
      LOWORD(v3) = 0;
    }

    *result = v4 + 1 - v3;
  }

  else
  {
    result[1] = v2 + 1;
  }

  return result;
}

uint64_t sub_19B5BE7E0(uint64_t result)
{
  v1 = *(result + 30);
  if (v1 > 1)
  {
    v4 = *(result + 12);
    v2 = v4 / v1;
    v3 = (*(result + 20) - (v4 * v2)) / v1;
  }

  else
  {
    v2 = *(result + 12);
    v3 = 0.0;
  }

  *(result + 4) = v2;
  *(result + 8) = v3;
  *result = 0;
  return result;
}

unsigned __int16 *sub_19B5BE81C(unsigned __int16 *a1, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v18 = a2;
      v19 = 1024;
      v20 = v8;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v10 = *(a1 + 1);
      v13 = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v13, 18);
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<CMVector<float, 4>>::operator[](const size_t) const [T = CMVector<float, 4>]", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[8 * (v4 - v5) + 4];
}

unsigned __int16 *sub_19B5BEA34(unsigned __int16 *a1, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v18 = a2;
      v19 = 1024;
      v20 = v8;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v10 = *(a1 + 1);
      v13 = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v13, 18);
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<CMVector<float, 1>>::operator[](const size_t) const [T = CMVector<float, 1>]", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[2 * (v4 - v5) + 4];
}

unsigned __int16 *sub_19B5BEC4C(unsigned __int16 *a1, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v18 = a2;
      v19 = 1024;
      v20 = v8;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v10 = *(a1 + 1);
      v13 = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v13, 18);
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<CMVector<float, 3>>::operator[](const size_t) const [T = CMVector<float, 3>]", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[6 * (v4 - v5) + 4];
}

float sub_19B5BEE68(unsigned __int16 *a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1[1])
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v12 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_FAULT, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 210,variance() on empty buffer.", buf, 2u);
    }

    v13 = sub_19B420058();
    if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v16[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 210,variance() on empty buffer.", v16, 2);
      v15 = v14;
      sub_19B6BB7CC("Generic", 1, 0, 0, "const CMVector<T, N> CMVectorBufferBase<float, 1>::variance(size_t, size_t) const [T = float, N = 1]", "CoreLocation: %s\n", v14);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  v4 = 1.0 / a2;
  v5 = *sub_19B5BEA34(a1, 0);
  v6 = v4 * v5;
  if (a2 < 2)
  {
    return v4 * ((v5 - v6) * (v5 - v6));
  }

  v7 = 1;
  do
  {
    v6 = v6 + (v4 * *sub_19B5BEA34(a1, v7++));
  }

  while (a2 != v7);
  v8 = v4 * ((v5 - v6) * (v5 - v6));
  v9 = 1;
  do
  {
    v10 = sub_19B5BEA34(a1, v9);
    v8 = v8 + (v4 * ((*v10 - v6) * (*v10 - v6)));
    ++v9;
  }

  while (a2 != v9);
  return v8;
}

float sub_19B5BF0D0(unsigned __int16 *a1, unint64_t a2, unint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a1[1])
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 93,mean() on empty buffer.", buf, 2u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v11[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 93,mean() on empty buffer.", v11, 2);
      v10 = v9;
      sub_19B6BB7CC("Generic", 1, 0, 0, "const Element CMVectorBufferBase<float, 3>::mean(size_t, size_t) const [T = float, N = 3]", "CoreLocation: %s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  return sub_19B5BF2B8(a1, a2, a3) / (a3 - a2);
}

float sub_19B5BF2B8(unsigned __int16 *a1, unint64_t a2, unint64_t a3)
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  if (a2 < a3)
  {
    v7 = a2;
    do
    {
      v9 = sub_19B5BEC4C(a1, v7);
      v3 = v3 + *v9;
      v4 = v4 + v9[1];
      v5 = v5 + v9[2];
      ++v7;
    }

    while (a3 != v7);
  }

  return v3;
}

unsigned __int16 *sub_19B5BF344(unsigned __int16 *a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1[1] <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v5 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v12 = a2;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "Assertion failed: i < size(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 45,out of buffer range %zu.", buf, 0xCu);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v9 = 134217984;
      v10 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < size(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 45,out of buffer range %zu.", &v9);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 0, "const Element &CMVectorBufferBase<float, 3>::operator[](const size_t) const [T = float, N = 3]", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  return sub_19B5BEC4C(a1, a2);
}

unsigned __int16 *sub_19B5BF528(unsigned __int16 *result, _DWORD *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  *&result[2 * (v3 - v2) + 4] = *a2;
  v4 = result[1];
  v5 = *(result + 1);
  if (v5 <= v4)
  {
    v6 = *result + 1;
    if (v6 < v5)
    {
      LOWORD(v5) = 0;
    }

    *result = v6 - v5;
  }

  else
  {
    result[1] = v4 + 1;
  }

  return result;
}

unint64_t sub_19B5BF588(unsigned __int16 *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1[1])
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v13 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 183,minElement() on empty buffer.", buf, 2u);
    }

    v14 = sub_19B420058();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v17[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 183,minElement() on empty buffer.", v17, 2);
      v16 = v15;
      sub_19B6BB7CC("Generic", 1, 0, 0, "size_t CMVectorBufferBase<float, 1>::minElement(size_t, size_t, size_t) const [T = float, N = 1]", "CoreLocation: %s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  v8 = a2 + 1;
  if (a2 + 1 < a3)
  {
    do
    {
      v9 = sub_19B5BEA34(a1, v8);
      v10 = sub_19B5BD53C(v9, a4);
      v11 = sub_19B5BEA34(a1, a2);
      if (v10 < sub_19B5BD53C(v11, a4))
      {
        a2 = v8;
      }

      ++v8;
    }

    while (a3 != v8);
  }

  return a2;
}

float sub_19B5BF7A8(unsigned __int16 *a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a1[1])
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 93,mean() on empty buffer.", buf, 2u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v11[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 93,mean() on empty buffer.", v11, 2);
      v10 = v9;
      sub_19B6BB7CC("Generic", 1, 0, 0, "const Element CMVectorBufferBase<float, 1>::mean(size_t, size_t) const [T = float, N = 1]", "CoreLocation: %s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  if (a2)
  {
    v4 = 0;
    v5 = 0.0;
    do
    {
      v5 = v5 + *sub_19B5BEA34(a1, v4++);
    }

    while (a2 != v4);
  }

  else
  {
    v5 = 0.0;
  }

  return v5 / a2;
}

unint64_t sub_19B5BF9A4(unsigned __int16 *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1[1])
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v13 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 161,maxElement() on empty buffer.", buf, 2u);
    }

    v14 = sub_19B420058();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v17[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 161,maxElement() on empty buffer.", v17, 2);
      v16 = v15;
      sub_19B6BB7CC("Generic", 1, 0, 0, "size_t CMVectorBufferBase<float, 1>::maxElement(size_t, size_t, size_t) const [T = float, N = 1]", "CoreLocation: %s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  v8 = a2 + 1;
  if (a2 + 1 < a3)
  {
    do
    {
      v9 = sub_19B5BEA34(a1, v8);
      v10 = sub_19B5BD53C(v9, a4);
      v11 = sub_19B5BEA34(a1, a2);
      if (v10 > sub_19B5BD53C(v11, a4))
      {
        a2 = v8;
      }

      ++v8;
    }

    while (a3 != v8);
  }

  return a2;
}

float sub_19B5BFBC4(unsigned __int16 *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1[1])
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v9 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 104,mean() on empty buffer.", buf, 2u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v13[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 104,mean() on empty buffer.", v13, 2);
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T CMVectorBufferBase<float, 1>::mean(size_t, size_t, size_t) const [T = float, N = 1]", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  return sub_19B5BFDAC(a1, a2, a3, a4) / (a3 - a2);
}

float sub_19B5BFDAC(unsigned __int16 *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = 0.0;
  if (a2 < a3)
  {
    v7 = a2;
    do
    {
      v9 = sub_19B5BEA34(a1, v7);
      v4 = v4 + sub_19B5BD53C(v9, a4);
      ++v7;
    }

    while (a3 != v7);
  }

  return v4;
}

unsigned __int16 *sub_19B5BFE1C(unsigned __int16 *a1, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v18 = a2;
      v19 = 1024;
      v20 = v8;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v10 = *(a1 + 1);
      v13 = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v13, 18);
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<float>::operator[](const size_t) const [T = float]", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[2 * (v4 - v5) + 4];
}

float sub_19B5C0034(unsigned __int16 *a1, unsigned int (*a2)(float, float), unint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a1[1];
  if (!a1[1])
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
    }

    v11 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "Assertion failed: n > 0, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 179,.", buf, 2u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A300);
      }

      v15[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: n > 0, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 179,.", v15, 2);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMQueue<float>::getComparison(int (*)(const T, const T), size_t) const [T = float]", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  v7 = *sub_19B5BFE1C(a1, a3);
  if (v6 > a3)
  {
    do
    {
      v8 = sub_19B5BFE1C(a1, a3);
      v9 = *v8;
      if (a2(*v8, v7))
      {
        v7 = v9;
      }

      ++a3;
    }

    while (v6 != a3);
  }

  return v7;
}

uint64_t sub_19B5C1298(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return MEMORY[0x1EEE66B58](a2, sel_feedSourceDeviceIMU_, result);
  }

  return result;
}

uint64_t sub_19B5C12AC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return MEMORY[0x1EEE66B58](a2, sel_feedAccessoryConfig_, result);
  }

  return result;
}

uint64_t sub_19B5C12C0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return MEMORY[0x1EEE66B58](a2, sel_feedAudioAccessoryIMU_, result);
  }

  return result;
}

void sub_19B5C1D1C(_Unwind_Exception *a1)
{
  MEMORY[0x19EAE76F0](v2, 0x1080C40C3C00EEFLL);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void *sub_19B5C1D50(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_19B659D48(result);

    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

void sub_19B5C47D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  sub_19B51DBD4(va);
  sub_19B5C6074(&a39);
  _Unwind_Resume(a1);
}

void sub_19B5C5BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_19B51DBD4(va);
  sub_19B5C6074(v7 - 136);
  _Unwind_Resume(a1);
}

void sub_19B5C5D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B51DBD4(va);
  sub_19B5C6074(v3 - 104);
  _Unwind_Resume(a1);
}

os_log_t sub_19B5C6044()
{
  result = os_log_create("com.apple.locationd.Motion", "MotionContext");
  qword_1EAFE2A60 = result;
  return result;
}

uint64_t sub_19B5C6074(uint64_t a1)
{
  if (*(a1 + 17) == 1)
  {
    if (*(a1 + 16))
    {
      pthread_mutex_unlock(*(a1 + 8));
    }

    else
    {
      (*(**a1 + 24))();
    }

    *(a1 + 17) = 0;
  }

  return a1;
}

void **sub_19B5C60E8(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    v9 = v7 >> 2;
    if (v7 >> 2 <= a4)
    {
      v9 = a4;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    sub_19B4C50B4(v6, v10);
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15++ = v16;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t *sub_19B5C6210(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = 480;
    while (1)
    {
      v4 = *(v2 + v3);
      *(v2 + v3) = 0;
      if (v4)
      {
        MEMORY[0x19EAE76F0](v4, 0x1000C40FF89C88ELL);
      }

      v3 -= 8;
      if (v3 == 464)
      {
        v5 = *(v2 + 464);
        *(v2 + 464) = 0;
        if (v5)
        {
          MEMORY[0x19EAE76F0](v5, 0x1000C40FF89C88ELL);
        }

        v6 = 248;
        while (1)
        {
          v7 = *(v2 + v6);
          *(v2 + v6) = 0;
          if (v7)
          {
            MEMORY[0x19EAE76F0](v7, 0x1000C40FF89C88ELL);
          }

          v6 -= 8;
          if (v6 == 232)
          {

            JUMPOUT(0x19EAE76F0);
          }
        }
      }
    }
  }

  return result;
}

__n128 sub_19B5C62E0(uint64_t a1, __n128 *a2)
{
  sub_19B5C6388(a1);
  v4 = *(a1 + 8);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  result = *a2;
  *(v4 + 16) = a2[1].n128_u64[0];
  *v4 = result;
  a2[1].n128_u8[7] = 0;
  a2->n128_u8[0] = 0;
  return result;
}

__n128 sub_19B5C6334(uint64_t a1, __n128 *a2)
{
  sub_19B5C63FC(a1);
  v4 = *(a1 + 16);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  result = *a2;
  *(v4 + 16) = a2[1].n128_u64[0];
  *v4 = result;
  a2[1].n128_u8[7] = 0;
  a2->n128_u8[0] = 0;
  return result;
}

void sub_19B5C6388(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    operator new();
  }
}

void sub_19B5C63FC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    operator new();
  }
}

void sub_19B5C6470(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = 184;
    while (1)
    {
      v4 = *(a2 + v3);
      *(a2 + v3) = 0;
      if (v4)
      {
        MEMORY[0x19EAE76F0](v4, 0x1000C40FF89C88ELL);
      }

      v3 -= 8;
      if (v3 == 168)
      {

        JUMPOUT(0x19EAE76F0);
      }
    }
  }
}

void sub_19B5C6508(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B5C6550(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t *sub_19B5C6594(uint64_t **a1, uint64_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_19B5E5718(result);

    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

void sub_19B5C6608(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E2ACD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B5C6684(uint64_t *a1, char *a2, char *a3)
{
  v3 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  sub_19B4294F0(a1 + 1, "CameraWorkoutLoggerMutex", 0, 1);
}

void sub_19B5C692C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_19B5F4684(v27);
  sub_19B4C5B2C(v26, 0);
  _Unwind_Resume(a1);
}

void sub_19B5C6AC4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  MEMORY[0x19EAE76F0](v23, v22, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C6B1C(uint64_t *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E28DC0);
    }

    v2 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[CMCameraWorkoutLogger] Sync'ing MSL file.", buf, 2u);
    }

    v3 = sub_19B420058();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E28DC0);
      }

      v7[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27B8, 0, "[CMCameraWorkoutLogger] Sync'ing MSL file.", v7, 2);
      v5 = v4;
      sub_19B6BB7CC("Generic", 1, 0, 2, "CMCameraWorkoutLogger::~CMCameraWorkoutLogger()", "CoreLocation: %s\n", v4);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    (*(a1[1] + 16))(a1 + 1);
    sub_19B50B004(*a1);
    (*(a1[1] + 24))(a1 + 1);
  }

  sub_19B5F4684((a1 + 1));
  sub_19B4C5B2C(a1, 0);
  return a1;
}

void sub_19B5C6D48(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_19B45E110(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C6D58(uint64_t *result, void *a2)
{
  if (*result)
  {
    v3 = result[1];
    v19 = result + 1;
    (*(v3 + 16))();
    v20 = 256;
    sub_19B517F80(v16);
    Current = CFAbsoluteTimeGetCurrent();
    v18 |= 1u;
    *&v16[87] = Current;
    sub_19B531EF8(v16);
    v5 = v17;
    v6 = *a2;
    *(v17 + 48) |= 2u;
    *(v5 + 40) = v6;
    v7 = v17;
    v8 = a2[1];
    *(v17 + 48) |= 1u;
    *(v7 + 8) = v8;
    sub_19B53DD34(v10);
    v15 |= 2u;
    v13 = 0;
    LODWORD(v21) = a2[2];
    sub_19B5C706C(v11, &v21);
    LODWORD(v21) = *(a2 + 5);
    sub_19B5C706C(v11, &v21);
    v12 = *(a2 + 42);
    v9 = *(a2 + 244);
    v15 |= 5u;
    v14 = v9;
    operator new();
  }

  return result;
}

void sub_19B5C7004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_19B51DBD4(va);
  sub_19B5C6074(v17 - 152);
  _Unwind_Resume(a1);
}

void sub_19B5C706C(const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_19B5BE690();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_19B4C4FA8(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 4;
  }

  a1[1] = v6;
}

uint64_t *sub_19B5C714C(uint64_t *result, void *a2)
{
  if (*result)
  {
    v3 = result[1];
    v16 = result + 1;
    (*(v3 + 16))(result + 1, a2);
    v17 = 256;
    sub_19B517F80(v13);
    Current = CFAbsoluteTimeGetCurrent();
    v15 |= 1u;
    *&v13[87] = Current;
    sub_19B532018(v13);
    v5 = v14;
    v6 = *a2;
    *(v14 + 48) |= 2u;
    *(v5 + 40) = v6;
    v7 = v14;
    v8 = a2[1];
    *(v14 + 48) |= 1u;
    *(v7 + 8) = v8;
    sub_19B53F0C0(v9);
    v12 |= 1u;
    v11 = 0;
    LODWORD(v18) = *(a2 + 4);
    sub_19B5C706C(v10, &v18);
    LODWORD(v18) = *(a2 + 5);
    sub_19B5C706C(v10, &v18);
    LODWORD(v18) = *(a2 + 6);
    sub_19B5C706C(v10, &v18);
    operator new();
  }

  return result;
}

void sub_19B5C73D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_19B51DBD4(va);
  sub_19B5C6074(v15 - 152);
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C7440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x1EEE9AC00](a1, a2, a3);
  if (*result)
  {
    v5 = v4;
    v6 = result[1];
    v20 = result + 1;
    (*(v6 + 16))();
    v21 = 256;
    sub_19B517F80(v17);
    Current = CFAbsoluteTimeGetCurrent();
    v19 |= 1u;
    *&v17[87] = Current;
    sub_19B531F88(v17);
    v8 = v18;
    v9 = *v5;
    *(v18 + 48) |= 2u;
    *(v8 + 40) = v9;
    v10 = v18;
    v11 = v5[1];
    *(v18 + 48) |= 1u;
    *(v10 + 8) = v11;
    sub_19B53FC60(v12);
    v16 |= 1u;
    v15 = 0;
    LODWORD(v22) = *(v5 + 4);
    sub_19B5C706C(v13, &v22);
    LODWORD(v22) = *(v5 + 5);
    sub_19B5C706C(v13, &v22);
    LODWORD(v22) = *(v5 + 6);
    sub_19B5C706C(v13, &v22);
    LODWORD(v22) = *(v5 + 104);
    sub_19B5C706C(v14, &v22);
    LODWORD(v22) = *(v5 + 105);
    sub_19B5C706C(v14, &v22);
    LODWORD(v22) = *(v5 + 106);
    sub_19B5C706C(v14, &v22);
    LODWORD(v22) = *(v5 + 107);
    sub_19B5C706C(v14, &v22);
    operator new();
  }

  return result;
}

void sub_19B5C773C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_19B51DBD4(va);
  sub_19B5C6074(v19 - 152);
  _Unwind_Resume(a1);
}

void sub_19B5C77B8(uint64_t *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  if (*a1)
  {
    v10 = a1[1];
    v51 = a1 + 1;
    (*(v10 + 16))();
    v53 = 256;
    sub_19B517F80(v48);
    Current = CFAbsoluteTimeGetCurrent();
    v50 |= 1u;
    *&v48[87] = Current;
    sub_19B5321C8(v48);
    v12 = v49;
    *(v49 + 32) |= 2u;
    v12[2] = a4;
    v13 = v49;
    *(v49 + 32) |= 1u;
    v13[1] = a5;
    sub_19B461150(v49);
    v14 = *(v49 + 3);
    v15 = *(a2 + 8);
    *(v14 + 140) |= 2u;
    *(v14 + 16) = v15;
    v16 = *(v49 + 3);
    v17 = *(a2 + 16);
    *(v16 + 140) |= 0x4000000u;
    *(v16 + 120) = v17;
    v18 = *(v49 + 3);
    v19 = *(a2 + 20);
    *(v18 + 140) |= 0x20000u;
    *(v18 + 84) = v19;
    v20 = *(v49 + 3);
    *&v15 = *(a2 + 32);
    *(v20 + 140) |= 0x100000u;
    *(v20 + 96) = v15;
    v21 = *(v49 + 3);
    *&v15 = *(a2 + 40);
    *(v21 + 140) |= 0x200000u;
    *(v21 + 100) = v15;
    v22 = *(v49 + 3);
    *&v15 = *(a2 + 48);
    *(v22 + 140) |= 0x400000u;
    *(v22 + 104) = v15;
    v23 = *(v49 + 3);
    *&v15 = *(a2 + 24);
    *(v23 + 140) |= 0x80000u;
    *(v23 + 92) = v15;
    v24 = *(v49 + 3);
    LODWORD(v15) = *(a2 + 56);
    *(v24 + 140) |= 0x8000000u;
    *(v24 + 124) = v15;
    v25 = *(v49 + 3);
    LODWORD(v15) = *(a2 + 60);
    *(v25 + 140) |= 0x10000000u;
    *(v25 + 128) = v15;
    v26 = *(v49 + 3);
    LODWORD(v15) = *(a2 + 64);
    *(v26 + 140) |= 0x20000000u;
    *(v26 + 132) = v15;
    v27 = *(v49 + 3);
    LODWORD(v15) = *(a2 + 68);
    *(v27 + 140) |= 0x8000u;
    *(v27 + 76) = v15;
    v28 = *(v49 + 3);
    LODWORD(v15) = *(a2 + 72);
    *(v28 + 140) |= 0x20u;
    *(v28 + 36) = v15;
    v29 = *(v49 + 3);
    LODWORD(v15) = *(a2 + 76);
    *(v29 + 140) |= 0x400u;
    *(v29 + 56) = v15;
    v30 = *(v49 + 3);
    LODWORD(v15) = *(a2 + 80);
    *(v30 + 140) |= 4u;
    *(v30 + 24) = v15;
    v31 = *(v49 + 3);
    LODWORD(v15) = *(a2 + 84);
    *(v31 + 140) |= 0x10u;
    *(v31 + 32) = v15;
    v32 = *(v49 + 3);
    LODWORD(v15) = *(a2 + 92);
    *(v32 + 140) |= 0x80u;
    *(v32 + 44) = v15;
    v33 = *(v49 + 3);
    LODWORD(v15) = *(a2 + 96);
    *(v33 + 140) |= 0x100u;
    *(v33 + 48) = v15;
    v34 = *(v49 + 3);
    LODWORD(v15) = *(a2 + 100);
    *(v34 + 140) |= 0x200u;
    *(v34 + 52) = v15;
    v35 = *(v49 + 3);
    LODWORD(v15) = *(a2 + 104);
    *(v35 + 140) |= 0x800u;
    *(v35 + 60) = v15;
    v36 = *(v49 + 3);
    LODWORD(v15) = *(a2 + 108);
    *(v36 + 140) |= 0x1000u;
    *(v36 + 64) = v15;
    v37 = *(v49 + 3);
    LODWORD(v15) = *(a2 + 112);
    *(v37 + 140) |= 0x2000u;
    *(v37 + 68) = v15;
    v38 = *(v49 + 3);
    LODWORD(v15) = *(a2 + 116);
    *(v38 + 140) |= 0x800000u;
    *(v38 + 108) = v15;
    v39 = *(v49 + 3);
    LODWORD(v15) = *(a2 + 120);
    *(v39 + 140) |= 0x1000000u;
    *(v39 + 112) = v15;
    v40 = *(v49 + 3);
    LODWORD(v15) = *(a2 + 124);
    *(v40 + 140) |= 0x2000000u;
    *(v40 + 116) = v15;
    v41 = *(v49 + 3);
    LOBYTE(v19) = *(a3 + 5);
    *(v41 + 140) |= 0x40000000u;
    *(v41 + 136) = v19;
    v42 = *(v49 + 3);
    v43 = *(a3 + 8);
    *(v42 + 140) |= 0x40u;
    *(v42 + 40) = v43;
    v44 = *(v49 + 3);
    LOBYTE(v43) = *(a3 + 4);
    *(v44 + 140) |= 0x80000000;
    *(v44 + 137) = v43;
    v45 = *(v49 + 3);
    LODWORD(v15) = *a3;
    *(v45 + 140) |= 8u;
    *(v45 + 28) = v15;
    v46 = *(v49 + 3);
    v47 = *(a3 + 16);
    *(v46 + 140) |= 1u;
    *(v46 + 8) = v47;
    sub_19B50AF20(*a1, v48);
    sub_19B51DBD4(v48);
    if (HIBYTE(v53) == 1)
    {
      if (v53)
      {
        pthread_mutex_unlock(v52);
      }

      else
      {
        (*(*v51 + 24))(v51);
      }
    }
  }
}

void sub_19B5C7C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B51DBD4(va);
  sub_19B5C6074(v3 - 72);
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C7C44(uint64_t *result, float a2, double a3, double a4)
{
  if (*result)
  {
    v7 = result;
    v9 = result + 1;
    v8 = result[1];
    v17 = result + 1;
    (*(v8 + 16))(result + 1);
    v18 = 256;
    sub_19B517F80(v14);
    Current = CFAbsoluteTimeGetCurrent();
    v16 |= 1u;
    *&v14[87] = Current;
    sub_19B532258(v14);
    v11 = v15;
    *(v15 + 28) |= 2u;
    *(v11 + 16) = a3;
    v12 = v15;
    *(v15 + 28) |= 1u;
    *(v12 + 8) = a4;
    v13 = v15;
    *(v15 + 28) |= 4u;
    *(v13 + 24) = a2;
    sub_19B50AF20(*v7, v14);
    sub_19B51DBD4(v14);
    return (*(*v9 + 24))(v9);
  }

  return result;
}

void sub_19B5C7D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B51DBD4(va);
  sub_19B5C6074(v3 - 88);
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C7D8C(uint64_t *result, float a2, double a3, double a4)
{
  if (*result)
  {
    v7 = result;
    v9 = result + 1;
    v8 = result[1];
    v17 = result + 1;
    (*(v8 + 16))(result + 1);
    v18 = 256;
    sub_19B517F80(v14);
    Current = CFAbsoluteTimeGetCurrent();
    v16 |= 1u;
    *&v14[87] = Current;
    sub_19B5322E8(v14);
    v11 = v15;
    *(v15 + 28) |= 2u;
    *(v11 + 16) = a3;
    v12 = v15;
    *(v15 + 28) |= 1u;
    *(v12 + 8) = a4;
    v13 = v15;
    *(v15 + 28) |= 4u;
    *(v13 + 24) = a2;
    sub_19B50AF20(*v7, v14);
    sub_19B51DBD4(v14);
    return (*(*v9 + 24))(v9);
  }

  return result;
}

void sub_19B5C7EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B51DBD4(va);
  sub_19B5C6074(v3 - 88);
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C7ED4(uint64_t *result, float a2, float a3, double a4, double a5)
{
  if (*result)
  {
    v9 = result;
    v11 = result + 1;
    v10 = result[1];
    v25 = result + 1;
    (*(v10 + 16))(result + 1);
    v26 = 256;
    Current = CFAbsoluteTimeGetCurrent();
    sub_19B517F80(v22);
    v24 |= 1u;
    *&v22[87] = Current;
    sub_19B532138(v22);
    v13 = v23;
    *(v23 + 32) |= 2u;
    v13[2] = a4;
    v14 = v23;
    *(v23 + 32) |= 1u;
    v14[1] = a5;
    sub_19B5628DC(v23);
    v15 = *(v23 + 3);
    *(v15 + 68) |= 0x10u;
    *(v15 + 40) = a4;
    v16 = *(v23 + 3);
    *(v16 + 68) |= 8u;
    *(v16 + 32) = Current;
    v17 = *(v23 + 3);
    *(v17 + 68) |= 0x40u;
    *(v17 + 52) = 3;
    v18 = *(v23 + 3);
    *(v18 + 68) |= 2u;
    *(v18 + 16) = a2;
    v19 = *(v23 + 3);
    *(v19 + 68) |= 4u;
    *(v19 + 24) = 0;
    v20 = *(v23 + 3);
    *(v20 + 68) |= 1u;
    *(v20 + 8) = a3;
    v21 = *(v23 + 3);
    *(v21 + 68) |= 0x80u;
    *(v21 + 56) = 2;
    sub_19B50AF20(*v9, v22);
    sub_19B51DBD4(v22);
    return (*(*v11 + 24))(v11);
  }

  return result;
}

uint64_t *sub_19B5C80E0(uint64_t *result, int **a2, double a3, double a4)
{
  if (*result)
  {
    v14 = result;
    v8 = result + 1;
    v7 = result[1];
    v22 = result + 1;
    (*(v7 + 16))(result + 1);
    v23 = 256;
    sub_19B517F80(v19);
    Current = CFAbsoluteTimeGetCurrent();
    v21 |= 1u;
    *&v19[87] = Current;
    sub_19B531B98(v19);
    v10 = v20;
    *(v20 + 48) |= 2u;
    *(v10 + 40) = a3;
    v11 = v20;
    *(v20 + 48) |= 1u;
    *(v11 + 32) = a4;
    if (a2[1] != *a2)
    {
      sub_19B5085F0(v15);
      v12 = v18;
      v18 |= 1u;
      v16 = 0;
      if (a2[1] - *a2)
      {
        v13 = **a2;
        v18 = v12 | 3;
        v17 = v13;
        operator new();
      }

      sub_19B5C9A28();
    }

    sub_19B50AF20(*v14, v19);
    sub_19B51DBD4(v19);
    return (*(*v8 + 24))(v8);
  }

  return result;
}

void sub_19B5C8364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_19B51DBD4(va);
  sub_19B5C6074(v11 - 168);
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C83C8(uint64_t *result)
{
  if (*result)
  {
    v1 = result;
    v2 = result + 1;
    (*(result[1] + 16))(result + 1);
    sub_19B50B004(*v1);
    return (*(*v2 + 24))(v2);
  }

  return result;
}

void sub_19B5C8464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B5C6074(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C8478(uint64_t *result, uint64_t a2)
{
  if (*result)
  {
    v3 = result;
    v5 = result + 1;
    v4 = result[1];
    v18 = result + 1;
    (*(v4 + 16))(result + 1);
    v19 = 256;
    sub_19B517F80(v14);
    sub_19B5329A8(v14);
    Current = CFAbsoluteTimeGetCurrent();
    v17 |= 1u;
    v16 = Current;
    v7 = v15;
    LODWORD(Current) = *(a2 + 8);
    *(v15 + 64) |= 0x20u;
    *(v7 + 28) = LODWORD(Current);
    v8 = v15;
    LODWORD(Current) = *(a2 + 12);
    *(v15 + 64) |= 0x1000u;
    *(v8 + 56) = LODWORD(Current);
    v9 = v15;
    LODWORD(Current) = *(a2 + 20);
    *(v15 + 64) |= 2u;
    *(v9 + 12) = LODWORD(Current);
    v10 = v15;
    v11 = *(a2 + 48);
    *(v15 + 64) |= 0x2000u;
    *(v10 + 60) = v11;
    v12 = v15;
    v13 = *(a2 + 4);
    *(v15 + 64) |= 4u;
    *(v12 + 16) = v13;
    sub_19B50AF20(*v3, v14);
    sub_19B51DBD4(v14);
    return (*(*v5 + 24))(v5);
  }

  return result;
}

void sub_19B5C85C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B51DBD4(va);
  sub_19B5C6074(v3 - 56);
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C85E4(uint64_t *result, void *a2)
{
  if (*result)
  {
    v3 = result;
    v5 = result + 1;
    v4 = result[1];
    v79 = result + 1;
    (*(v4 + 16))(result + 1);
    v80 = 256;
    sub_19B517F80(v75);
    Current = CFAbsoluteTimeGetCurrent();
    v78 |= 1u;
    v77 = Current;
    sub_19B531838(v75);
    sub_19B4DF8BC(v76);
    v7 = v76[11];
    objc_msgSend_timestamp(a2, v8, v9);
    *(v7 + 152) |= 2u;
    *(v7 + 136) = v10;
    v11 = v76[11];
    v14 = objc_msgSend_attitude(a2, v12, v13);
    objc_msgSend_quaternion(v14, v15, v16);
    *&v17 = v17;
    v74 = *&v17;
    sub_19B5C706C((v11 + 56), &v74);
    v18 = v76[11];
    v21 = objc_msgSend_attitude(a2, v19, v20);
    objc_msgSend_quaternion(v21, v22, v23);
    v25 = v24;
    v74 = v25;
    sub_19B5C706C((v18 + 56), &v74);
    v26 = v76[11];
    v29 = objc_msgSend_attitude(a2, v27, v28);
    objc_msgSend_quaternion(v29, v30, v31);
    v33 = v32;
    v74 = v33;
    sub_19B5C706C((v26 + 56), &v74);
    v34 = v76[11];
    v37 = objc_msgSend_attitude(a2, v35, v36);
    objc_msgSend_quaternion(v37, v38, v39);
    v41 = v40;
    v74 = v41;
    sub_19B5C706C((v34 + 56), &v74);
    v42 = v76[11];
    objc_msgSend_rotationRate(a2, v43, v44);
    *&v45 = v45;
    v74 = *&v45;
    sub_19B5C706C((v42 + 80), &v74);
    v46 = v76[11];
    objc_msgSend_rotationRate(a2, v47, v48);
    v50 = v49;
    v74 = v50;
    sub_19B5C706C((v46 + 80), &v74);
    v51 = v76[11];
    objc_msgSend_rotationRate(a2, v52, v53);
    v55 = v54;
    v74 = v55;
    sub_19B5C706C((v51 + 80), &v74);
    v56 = v76[11];
    objc_msgSend_userAcceleration(a2, v57, v58);
    *&v59 = v59;
    v74 = *&v59;
    sub_19B5C706C((v56 + 104), &v74);
    v60 = v76[11];
    objc_msgSend_userAcceleration(a2, v61, v62);
    v64 = v63;
    v74 = v64;
    sub_19B5C706C((v60 + 104), &v74);
    v65 = v76[11];
    objc_msgSend_userAcceleration(a2, v66, v67);
    v69 = v68;
    v74 = v69;
    sub_19B5C706C((v65 + 104), &v74);
    v70 = v76;
    if (objc_msgSend_sensorLocation(a2, v71, v72) == 2)
    {
      v73 = 1;
    }

    else
    {
      v73 = 2;
    }

    *(v70 + 66) |= 0x40u;
    *(v70 + 26) = v73;
    sub_19B50AF20(*v3, v75);
    sub_19B51DBD4(v75);
    return (*(*v5 + 24))(v5);
  }

  return result;
}

void sub_19B5C8890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B51DBD4(va);
  sub_19B5C6074(v3 - 72);
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C88D4(uint64_t *result, int a2, double a3)
{
  if (*result)
  {
    v5 = result;
    v7 = result + 1;
    v6 = result[1];
    v16 = result + 1;
    (*(v6 + 16))(result + 1);
    v17 = 256;
    sub_19B517F80(v12);
    Current = CFAbsoluteTimeGetCurrent();
    v15 |= 1u;
    v14 = Current;
    sub_19B532EB8(v12);
    v9 = v13;
    *(v13 + 16) |= 1u;
    *(v9 + 8) = a2;
    v10 = v13;
    v11 = a3;
    *(v13 + 16) |= 2u;
    *(v10 + 12) = v11;
    sub_19B50AF20(*v5, v12);
    sub_19B51DBD4(v12);
    return (*(*v7 + 24))(v7);
  }

  return result;
}

void sub_19B5C89E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B51DBD4(va);
  sub_19B5C6074(v3 - 72);
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C8A00(uint64_t *result, char *a2)
{
  if (*result)
  {
    v3 = result;
    v5 = result + 1;
    v4 = result[1];
    v20 = result + 1;
    (*(v4 + 16))(result + 1);
    v21 = 256;
    sub_19B517F80(v16);
    Current = CFAbsoluteTimeGetCurrent();
    v19 |= 1u;
    v18 = Current;
    sub_19B532D98(v16);
    sub_19B4CEB20(v17);
    v7 = v17[4];
    v8 = *a2;
    *(v7 + 36) |= 2u;
    *(v7 + 28) = v8;
    v9 = v17[4];
    sub_19B428B50(&__p, a2 + 4);
    sub_19B5C62E0(v9, &__p);
    if (v15 < 0)
    {
      operator delete(__p.n128_u64[0]);
    }

    v10 = v17[4];
    sub_19B428B50(&__p, a2 + 68);
    sub_19B5C6334(v10, &__p);
    if (v15 < 0)
    {
      operator delete(__p.n128_u64[0]);
    }

    v11 = v17[4];
    v12 = *(a2 + 25);
    *(v11 + 36) |= 1u;
    *(v11 + 24) = v12;
    v13 = v17;
    LOBYTE(v12) = a2[124];
    *(v17 + 44) |= 1u;
    *(v13 + 40) = v12;
    __p.n128_u32[0] = *(a2 + 32);
    sub_19B5C706C(v17 + 1, &__p);
    __p.n128_u32[0] = *(a2 + 33);
    sub_19B5C706C(v17 + 1, &__p);
    __p.n128_u32[0] = *(a2 + 34);
    sub_19B5C706C(v17 + 1, &__p);
    __p.n128_u32[0] = *(a2 + 35);
    sub_19B5C706C(v17 + 1, &__p);
    sub_19B50AF20(*v3, v16);
    sub_19B51DBD4(v16);
    return (*(*v5 + 24))(v5);
  }

  return result;
}

void sub_19B5C8BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_19B51DBD4(&a15);
  sub_19B5C6074(v15 - 72);
  _Unwind_Resume(a1);
}

void sub_19B5C8C48(uint64_t *a1, double *a2, int a3)
{
  if (*a1)
  {
    v6 = a1[1];
    v40 = a1 + 1;
    (*(v6 + 16))();
    v42 = 256;
    sub_19B517F80(v37);
    sub_19B532918(v37);
    Current = CFAbsoluteTimeGetCurrent();
    v39 |= 1u;
    *&v37[87] = Current;
    v8 = v38;
    v9 = *a2;
    *(v38 + 124) |= 0x10u;
    *(v8 + 40) = v9;
    v10 = v38;
    *&v9 = a2[2];
    *(v38 + 124) |= 2u;
    *(v10 + 16) = *&v9;
    v11 = v38;
    *&v9 = a2[3];
    *(v38 + 124) |= 4u;
    *(v11 + 24) = *&v9;
    v12 = v38;
    *&v9 = a2[4];
    *(v38 + 124) |= 8u;
    *(v12 + 32) = *&v9;
    v13 = v38;
    *&v9 = a2[1];
    *(v38 + 124) |= 1u;
    *(v13 + 8) = *&v9;
    v14 = v38;
    LODWORD(v9) = *(a2 + 10);
    *(v38 + 124) |= 0x40000u;
    *(v14 + 100) = v9;
    v15 = v38;
    LODWORD(v9) = *(a2 + 11);
    *(v38 + 124) |= 0x80000u;
    *(v15 + 104) = v9;
    v16 = v38;
    LODWORD(v9) = *(a2 + 12);
    *(v38 + 124) |= 0x100000u;
    *(v16 + 108) = v9;
    v17 = v38;
    LODWORD(v9) = *(a2 + 13);
    *(v38 + 124) |= 0x2000u;
    *(v17 + 80) = v9;
    v18 = v38;
    LODWORD(v9) = *(a2 + 14);
    *(v38 + 124) |= 0x4000u;
    *(v18 + 84) = v9;
    v19 = v38;
    LODWORD(v9) = *(a2 + 15);
    *(v38 + 124) |= 0x8000u;
    *(v19 + 88) = v9;
    v20 = v38;
    LODWORD(v9) = *(a2 + 16);
    *(v38 + 124) |= 0x100u;
    *(v20 + 60) = v9;
    v21 = v38;
    LODWORD(v9) = *(a2 + 17);
    *(v38 + 124) |= 0x200u;
    *(v21 + 64) = v9;
    v22 = v38;
    LODWORD(v9) = *(a2 + 18);
    *(v38 + 124) |= 0x400u;
    *(v22 + 68) = v9;
    v23 = v38;
    v24 = *(a2 + 19);
    *(v38 + 124) |= 0x80u;
    *(v23 + 56) = v24;
    v25 = v38;
    LODWORD(v9) = *(a2 + 21);
    *(v38 + 124) |= 0x800u;
    *(v25 + 72) = v9;
    v26 = v38;
    LODWORD(v9) = *(a2 + 24);
    *(v38 + 124) |= 0x20u;
    *(v26 + 48) = v9;
    v27 = v38;
    *(v38 + 124) |= 0x200000u;
    *(v27 + 112) = a3;
    v28 = v38;
    *(v38 + 124) |= 0x20000u;
    *(v28 + 96) = -1082130432;
    v29 = v38;
    v30 = *(a2 + 120);
    *(v38 + 124) |= 0x1000u;
    *(v29 + 76) = v30;
    v31 = v38;
    v32 = *(a2 + 29);
    *(v38 + 124) |= 0x40u;
    *(v31 + 52) = v32;
    v33 = v38;
    v34 = *(a2 + 61);
    *(v38 + 124) |= 0x10000u;
    *(v33 + 92) = v34;
    v35 = v38;
    *(v38 + 124) |= 0x800000u;
    *(v35 + 120) = 1;
    v36 = v38;
    LODWORD(v9) = *(a2 + 31);
    *(v38 + 124) |= 0x400000u;
    *(v36 + 116) = v9;
    sub_19B50AF20(*a1, v37);
    sub_19B51DBD4(v37);
    if (HIBYTE(v42) == 1)
    {
      if (v42)
      {
        pthread_mutex_unlock(v41);
      }

      else
      {
        (*(*v40 + 24))(v40);
      }
    }
  }
}

void sub_19B5C8F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B51DBD4(va);
  sub_19B5C6074(v3 - 56);
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C8FB4(uint64_t *result, uint64_t *a2)
{
  if (*result)
  {
    v3 = result;
    v5 = result + 1;
    v4 = result[1];
    v16 = result + 1;
    (*(v4 + 16))(result + 1);
    v17 = 256;
    sub_19B517F80(v12);
    sub_19B532378(v12);
    Current = CFAbsoluteTimeGetCurrent();
    v15 |= 1u;
    v14 = Current;
    v7 = v13;
    v8 = *a2;
    *(v13 + 32) |= 1u;
    *(v7 + 8) = v8;
    v9 = v13;
    LODWORD(v8) = *(a2 + 2);
    *(v13 + 32) |= 4u;
    *(v9 + 20) = v8;
    v10 = v13;
    LODWORD(v8) = *(a2 + 3);
    *(v13 + 32) |= 8u;
    *(v10 + 24) = v8;
    v11 = v13;
    LODWORD(v8) = *(a2 + 4);
    *(v13 + 32) |= 0x10u;
    *(v11 + 28) = v8;
    sub_19B50AF20(*v3, v12);
    sub_19B51DBD4(v12);
    return (*(*v5 + 24))(v5);
  }

  return result;
}

void sub_19B5C90EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B51DBD4(va);
  sub_19B5C6074(v3 - 56);
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C9108(uint64_t *result, uint64_t *a2)
{
  if (*result)
  {
    v3 = result;
    v5 = result + 1;
    v4 = result[1];
    v21 = result + 1;
    (*(v4 + 16))(result + 1);
    v22 = 256;
    sub_19B517F80(v18);
    sub_19B532408(v18);
    Current = CFAbsoluteTimeGetCurrent();
    v20 |= 1u;
    *&v18[87] = Current;
    v7 = v19;
    v8 = *a2;
    *(v19 + 44) |= 1u;
    *(v7 + 8) = v8;
    v9 = v19;
    LODWORD(v8) = *(a2 + 2);
    *(v19 + 44) |= 0x10u;
    *(v9 + 28) = v8;
    v10 = v19;
    LODWORD(v8) = *(a2 + 3);
    *(v19 + 44) |= 0x20u;
    *(v10 + 32) = v8;
    v11 = v19;
    LODWORD(v8) = *(a2 + 4);
    *(v19 + 44) |= 0x40u;
    *(v11 + 36) = v8;
    v12 = v19;
    *(v19 + 44) |= 8u;
    *(v12 + 24) = 0;
    v13 = v19;
    v14 = HIWORD(*(v19 + 24));
    *(v19 + 44) |= 4u;
    *(v13 + 20) = v14 % 3u;
    v15 = v19;
    LOBYTE(v14) = *(v19 + 25) & 1;
    *(v19 + 44) |= 0x80u;
    *(v15 + 40) = v14;
    v16 = v19;
    v17 = (*(v19 + 24) >> 9) & 1;
    *(v19 + 44) |= 0x100u;
    *(v16 + 41) = v17;
    sub_19B50AF20(*v3, v18);
    sub_19B51DBD4(v18);
    return (*(*v5 + 24))(v5);
  }

  return result;
}

void sub_19B5C92C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B51DBD4(va);
  sub_19B5C6074(v3 - 56);
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C92E4(uint64_t *result, uint64_t a2)
{
  if (*result)
  {
    v3 = result;
    v5 = result + 1;
    v4 = result[1];
    v11 = result + 1;
    (*(v4 + 16))(result + 1);
    v12 = 256;
    sub_19B517F80(v8);
    sub_19B532498(v8);
    Current = CFAbsoluteTimeGetCurrent();
    v10 |= 1u;
    *&v8[87] = Current;
    v7 = v9;
    LODWORD(Current) = *(a2 + 8);
    *(v9 + 16) |= 2u;
    *(v7 + 12) = LODWORD(Current);
    sub_19B50AF20(*v3, v8);
    sub_19B51DBD4(v8);
    return (*(*v5 + 24))(v5);
  }

  return result;
}

void sub_19B5C93D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B51DBD4(va);
  sub_19B5C6074(v3 - 56);
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C93F0(uint64_t *result, unsigned int a2, double a3, double a4)
{
  if (*result)
  {
    v7 = result;
    v9 = result + 1;
    v8 = result[1];
    v17 = result + 1;
    (*(v8 + 16))(result + 1);
    v18 = 256;
    sub_19B517F80(v14);
    sub_19B531E68(v14);
    Current = CFAbsoluteTimeGetCurrent();
    v16 |= 1u;
    *&v14[87] = Current;
    v11 = v15;
    *(v15 + 32) |= 4u;
    *(v11 + 24) = a3;
    v12 = v15;
    *(v15 + 32) |= 2u;
    *(v12 + 16) = a4;
    v13 = v15;
    *(v15 + 32) |= 1u;
    *(v13 + 8) = a2;
    sub_19B50AF20(*v7, v14);
    sub_19B51DBD4(v14);
    return (*(*v9 + 24))(v9);
  }

  return result;
}

void sub_19B5C9518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B51DBD4(va);
  sub_19B5C6074(v3 - 72);
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5C9534(uint64_t *result, uint64_t *a2)
{
  if (*result)
  {
    v3 = result;
    v5 = result + 1;
    v4 = result[1];
    v21 = result + 1;
    (*(v4 + 16))(result + 1);
    v22 = 256;
    sub_19B517F80(v18);
    Current = CFAbsoluteTimeGetCurrent();
    v20 |= 1u;
    *&v18[87] = Current;
    sub_19B532A38(v18);
    v7 = v19;
    v8 = a2[3];
    *(v19 + 64) |= 2u;
    *(v7 + 16) = v8;
    v9 = v19;
    v10 = *a2;
    *(v19 + 64) |= 8u;
    *(v9 + 32) = v10;
    v11 = v19;
    *(v19 + 64) |= 1u;
    *(v11 + 8) = 0;
    v12 = v19;
    v13 = a2[2];
    *(v19 + 64) |= 0x10u;
    *(v12 + 40) = v13;
    v14 = v19;
    v15 = a2[12];
    *(v19 + 64) |= 0x200u;
    *(v14 + 60) = v15;
    v16 = v19;
    *(v19 + 64) |= 0x80u;
    *(v16 + 52) = 0;
    v17 = v19;
    *(v19 + 64) |= 0x100u;
    *(v17 + 56) = 0;
    sub_19B50AF20(*v3, v18);
    sub_19B51DBD4(v18);
    return (*(*v5 + 24))(v5);
  }

  return result;
}

void sub_19B5C96A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B51DBD4(va);
  sub_19B5C6074(v3 - 56);
  _Unwind_Resume(a1);
}

void sub_19B5C96C4(uint64_t *a1, uint64_t *a2)
{
  if (*a1)
  {
    v4 = a1[1];
    v37 = a1 + 1;
    (*(v4 + 16))();
    v39 = 256;
    sub_19B517F80(v34);
    Current = CFAbsoluteTimeGetCurrent();
    v36 |= 1u;
    *&v34[87] = Current;
    sub_19B5320A8(v34);
    v6 = v35;
    v7 = *a2;
    *(v35 + 112) |= 4u;
    *(v6 + 24) = v7;
    v8 = v35;
    v9 = a2[1];
    *(v35 + 112) |= 2u;
    *(v8 + 16) = v9;
    v10 = v35;
    v11 = a2[2];
    *(v35 + 112) |= 1u;
    *(v10 + 8) = v11;
    v12 = v35;
    LODWORD(v11) = *(a2 + 6);
    *(v35 + 112) |= 0x400u;
    *(v12 + 60) = v11;
    v13 = v35;
    LODWORD(v11) = *(a2 + 7);
    *(v35 + 112) |= 0x400000u;
    *(v13 + 108) = v11;
    v14 = v35;
    LODWORD(v11) = *(a2 + 8);
    *(v35 + 112) |= 0x2000u;
    *(v14 + 72) = v11;
    v15 = v35;
    LODWORD(v11) = *(a2 + 9);
    *(v35 + 112) |= 0x100u;
    *(v15 + 52) = v11;
    v16 = v35;
    v17 = *(a2 + 10);
    *(v35 + 112) |= 0x800u;
    *(v16 + 64) = v17;
    v18 = v35;
    v19 = *(a2 + 11);
    *(v35 + 112) |= 0x100000u;
    *(v18 + 100) = v19;
    v20 = v35;
    LODWORD(v11) = *(a2 + 12);
    *(v35 + 112) |= 0x200000u;
    *(v20 + 104) = v11;
    v21 = v35;
    LODWORD(v11) = *(a2 + 13);
    *(v35 + 112) |= 0x40000u;
    *(v21 + 92) = v11;
    v22 = v35;
    LODWORD(v11) = *(a2 + 14);
    *(v35 + 112) |= 0x80u;
    *(v22 + 48) = v11;
    v23 = v35;
    LODWORD(v11) = *(a2 + 15);
    *(v35 + 112) |= 0x10000u;
    *(v23 + 84) = v11;
    v24 = v35;
    LODWORD(v11) = *(a2 + 16);
    *(v35 + 112) |= 0x20u;
    *(v24 + 40) = v11;
    v25 = v35;
    LODWORD(v11) = *(a2 + 17);
    *(v35 + 112) |= 0x200u;
    *(v25 + 56) = v11;
    v26 = v35;
    LODWORD(v11) = *(a2 + 18);
    *(v35 + 112) |= 0x1000u;
    *(v26 + 68) = v11;
    v27 = v35;
    LODWORD(v11) = *(a2 + 19);
    *(v35 + 112) |= 0x80000u;
    *(v27 + 96) = v11;
    v28 = v35;
    LODWORD(v11) = *(a2 + 20);
    *(v35 + 112) |= 0x20000u;
    *(v28 + 88) = v11;
    v29 = v35;
    LODWORD(v11) = *(a2 + 21);
    *(v35 + 112) |= 0x40u;
    *(v29 + 44) = v11;
    v30 = v35;
    LODWORD(v11) = *(a2 + 22);
    *(v35 + 112) |= 0x4000u;
    *(v30 + 76) = v11;
    v31 = v35;
    LODWORD(v11) = *(a2 + 23);
    *(v35 + 112) |= 8u;
    *(v31 + 32) = v11;
    v32 = v35;
    LODWORD(v11) = *(a2 + 24);
    *(v35 + 112) |= 0x8000u;
    *(v32 + 80) = v11;
    v33 = v35;
    LODWORD(v11) = *(a2 + 25);
    *(v35 + 112) |= 0x10u;
    *(v33 + 36) = v11;
    sub_19B50AF20(*a1, v34);
    sub_19B51DBD4(v34);
    if (HIBYTE(v39) == 1)
    {
      if (v39)
      {
        pthread_mutex_unlock(v38);
      }

      else
      {
        (*(*v37 + 24))(v37);
      }
    }
  }
}

void sub_19B5C99DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B51DBD4(va);
  sub_19B5C6074(v3 - 56);
  _Unwind_Resume(a1);
}

os_log_t sub_19B5C99F8()
{
  result = os_log_create("com.apple.locationd.Motion", "Workout");
  qword_1EAFE27B8 = result;
  return result;
}

void sub_19B5C9A40(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_19B5C9A9C(exception, a1);
  __cxa_throw(exception, off_1E7532778, MEMORY[0x1E69E5280]);
}

std::logic_error *sub_19B5C9A9C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void sub_19B5C9AD0(uint64_t a1)
{
  *a1 = xmmword_19B7B7710;
  *(a1 + 16) = xmmword_19B7B7710;
  *(a1 + 32) = xmmword_19B7B7710;
  *(a1 + 48) = xmmword_19B7B7710;
  *(a1 + 64) = xmmword_19B7B7710;
  *(a1 + 80) = xmmword_19B7B7710;
  *(a1 + 96) = xmmword_19B7B7710;
  *(a1 + 112) = xmmword_19B7B7710;
  *(a1 + 128) = xmmword_19B7B7710;
  *(a1 + 144) = xmmword_19B7B7710;
  *(a1 + 160) = xmmword_19B7B7710;
  *(a1 + 176) = xmmword_19B7B7710;
  *(a1 + 192) = xmmword_19B7B7710;
  *(a1 + 208) = xmmword_19B7B7710;
  *(a1 + 224) = xmmword_19B7B7710;
  *(a1 + 240) = xmmword_19B7B7710;
  *(a1 + 256) = xmmword_19B7B7710;
  *(a1 + 272) = xmmword_19B7B7710;
  *(a1 + 288) = xmmword_19B7B7710;
  *(a1 + 304) = xmmword_19B7B7710;
  *(a1 + 320) = xmmword_19B7B7710;
  *(a1 + 336) = xmmword_19B7B7710;
  *(a1 + 352) = xmmword_19B7B7710;
  *(a1 + 368) = xmmword_19B7B7710;
  *(a1 + 384) = xmmword_19B7B7710;
  *(a1 + 400) = xmmword_19B7B7710;
  *(a1 + 416) = xmmword_19B7B7710;
  *(a1 + 432) = xmmword_19B7B7710;
  *(a1 + 448) = xmmword_19B7B7710;
  *(a1 + 464) = xmmword_19B7B7710;
  *(a1 + 480) = xmmword_19B7B7710;
  *(a1 + 496) = xmmword_19B7B7710;
  *(a1 + 512) = xmmword_19B7B7710;
  *(a1 + 528) = xmmword_19B7B7710;
  *(a1 + 544) = xmmword_19B7B7710;
  *(a1 + 560) = xmmword_19B7B7710;
  *(a1 + 576) = xmmword_19B7B7710;
  *(a1 + 592) = xmmword_19B7B7710;
  *(a1 + 608) = xmmword_19B7B7710;
  *(a1 + 624) = xmmword_19B7B7710;
  *(a1 + 640) = xmmword_19B7B7510;
  *(a1 + 656) = 0;
  *(a1 + 664) = 0;
  *(a1 + 672) = xmmword_19B7B7510;
  *(a1 + 688) = 0;
  *(a1 + 696) = 0;
  *(a1 + 704) = xmmword_19B7B7510;
  *(a1 + 720) = 0;
  *(a1 + 728) = 0;
  *(a1 + 736) = xmmword_19B7B7510;
  *(a1 + 752) = 0;
  *(a1 + 760) = 0;
  *(a1 + 768) = xmmword_19B7B7510;
  *(a1 + 784) = 0;
  *(a1 + 792) = 0;
  *(a1 + 800) = xmmword_19B7B7510;
  *(a1 + 816) = 0;
  *(a1 + 824) = 0;
  *(a1 + 832) = xmmword_19B7B7510;
  *(a1 + 848) = 0;
  *(a1 + 856) = 0;
  *(a1 + 864) = xmmword_19B7B7510;
  *(a1 + 880) = 0;
  *(a1 + 888) = 0;
  *(a1 + 896) = xmmword_19B7B7510;
  *(a1 + 912) = 0;
  *(a1 + 920) = 0;
  *(a1 + 928) = xmmword_19B7B7510;
  *(a1 + 944) = 0;
  *(a1 + 952) = 0;
  *(a1 + 960) = xmmword_19B7B7510;
  *(a1 + 976) = 0;
  *(a1 + 984) = 0;
  *(a1 + 992) = xmmword_19B7B7510;
  *(a1 + 1008) = 0;
  *(a1 + 1016) = 0;
  *(a1 + 1024) = xmmword_19B7B7510;
  *(a1 + 1040) = 0;
  *(a1 + 1048) = 0;
  *(a1 + 1056) = xmmword_19B7B7510;
  *(a1 + 1072) = 0;
  *(a1 + 1080) = 0;
  *(a1 + 1088) = xmmword_19B7B7510;
  *(a1 + 1104) = 0;
  *(a1 + 1112) = 0;
  *(a1 + 1120) = xmmword_19B7B7510;
  *(a1 + 1136) = 0;
  *(a1 + 1144) = 0;
  *(a1 + 1152) = xmmword_19B7B7510;
  *(a1 + 1168) = 0;
  *(a1 + 1176) = 0;
  *(a1 + 1184) = xmmword_19B7B7510;
  *(a1 + 1200) = 0;
  *(a1 + 1208) = 0;
  *(a1 + 1216) = xmmword_19B7B7510;
  *(a1 + 1232) = 0;
  *(a1 + 1240) = 0;
  *(a1 + 1248) = xmmword_19B7B7510;
  *(a1 + 1264) = 0;
  *(a1 + 1272) = 0;
  *(a1 + 1280) = xmmword_19B7B7510;
  *(a1 + 1296) = 0;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = xmmword_19B7B7510;
  *(a1 + 1328) = 0;
  *(a1 + 1336) = 0;
  *(a1 + 1344) = xmmword_19B7B7510;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 0;
  *(a1 + 1376) = xmmword_19B7B7510;
  *(a1 + 1392) = 0;
  *(a1 + 1400) = 0;
  *(a1 + 1408) = xmmword_19B7B7510;
  *(a1 + 1424) = 0;
  *(a1 + 1432) = 0;
  *(a1 + 1440) = xmmword_19B7B7510;
  *(a1 + 1456) = 0;
  *(a1 + 1464) = 0;
  *(a1 + 1472) = xmmword_19B7B7510;
  *(a1 + 1488) = 0;
  *(a1 + 1496) = 0;
  *(a1 + 1504) = xmmword_19B7B7510;
  *(a1 + 1520) = 0;
  *(a1 + 1528) = 0;
  *(a1 + 1536) = xmmword_19B7B7510;
  *(a1 + 1552) = 0;
  *(a1 + 1560) = 0;
  *(a1 + 1568) = xmmword_19B7B7510;
  *(a1 + 1584) = 0;
  *(a1 + 1592) = 0;
  *(a1 + 1600) = xmmword_19B7B7510;
  *(a1 + 1616) = 0;
  *(a1 + 1624) = 0;
  *(a1 + 1632) = xmmword_19B7B7510;
  *(a1 + 1648) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1664) = xmmword_19B7B7510;
  *(a1 + 1680) = 0;
  *(a1 + 1688) = 0;
  *(a1 + 1696) = xmmword_19B7B7510;
  *(a1 + 1712) = 0;
  *(a1 + 1720) = 0;
  *(a1 + 1728) = xmmword_19B7B7510;
  *(a1 + 1744) = 0;
  *(a1 + 1752) = 0;
  *(a1 + 1760) = xmmword_19B7B7510;
  *(a1 + 1776) = 0;
  *(a1 + 1784) = 0;
  *(a1 + 1792) = xmmword_19B7B7510;
  *(a1 + 1808) = 0;
  *(a1 + 1816) = 0;
  *(a1 + 1824) = xmmword_19B7B7510;
  *(a1 + 1840) = 0;
  *(a1 + 1848) = 0;
  *(a1 + 1856) = xmmword_19B7B7510;
  *(a1 + 1872) = 0;
  *(a1 + 1880) = 0;
  *(a1 + 1888) = xmmword_19B7B7510;
  *(a1 + 1904) = 0;
  *(a1 + 1912) = 0;
  *(a1 + 1920) = xmmword_19B7B7510;
  *(a1 + 1936) = 0;
  *(a1 + 1944) = 0;
  *(a1 + 2076) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2016) = 0u;
  *(a1 + 2000) = 0u;
  *(a1 + 1984) = 0u;
  *(a1 + 1968) = 0u;
  *(a1 + 1952) = 0u;
  *(a1 + 2096) = xmmword_19B7B7720;
  *(a1 + 2112) = 0;
  *(a1 + 2120) = -1;
  *(a1 + 2124) = 0u;
  *(a1 + 2144) = 0u;
  *(a1 + 2160) = 0u;
  *(a1 + 2176) = 0u;
  *(a1 + 2192) = 0u;
  *(a1 + 2208) = 0u;
  *(a1 + 2224) = -1;
  *(a1 + 2228) = 0;
  *(a1 + 2232) = 0xFFFFFFFF00000000;
  *(a1 + 2240) = -1;
  *(a1 + 2244) = 0u;
  *(a1 + 2268) = 0;
  *(a1 + 2260) = 0;
  operator new();
}

void sub_19B5C9FB0(_Unwind_Exception *exception_object)
{
  v3 = v1[281];
  if (v3)
  {
    v1[282] = v3;
    operator delete(v3);
  }

  v4 = v1[275];
  if (v4)
  {
    v1[276] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5C9FEC(uint64_t result, const char *a2)
{
  v2 = a2;
  v4 = 0;
  v5 = aPdx;
  while (1)
  {
    v6 = v4 ? *(v5 - 1) : 0;
    if (v6 < a2 && *v5 >= a2)
    {
      break;
    }

    --v4;
    ++v5;
    if (v4 == -6)
    {
      v7 = 6;
      goto LABEL_10;
    }
  }

  v7 = -v4;
LABEL_10:
  v8 = *(result + 2224);
  if (v8 != v7)
  {
    *(result + 2224) = v7;
    if (v8 != -1)
    {
      v9 = *(result + 2200);
      v10 = (v9 + 16 * v8);
      v11 = *v10;
      if (*v10 > 0.0)
      {
        sub_19B6A80D8(v10, &stru_1F0E3D7A0);
        v9 = *(result + 2200);
      }

      LOWORD(v11) = *(result + 2228);
      v12 = *(result + 2232) + *&v11 * *(v9 + 16 * v8 + 8);
      *(result + 2232) = v12;
    }

    if (v7 == 6)
    {
      v13 = @"JBLAccumulatedEventMetric_OverLimit";
      v14 = 6;
    }

    else
    {
      v14 = v7;
      v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"JBLAccumulatedEventMetric_%d", aPdx[v7]);
    }

    sub_19B6A7EE8((*(result + 2200) + 16 * v14), v13);
    *(result + 2228) = v2;
  }
}

void sub_19B5CA124(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a1 > 0.0)
  {
    sub_19B6A80D8(a1, &stru_1F0E3D7A0);
  }

  if (*(a1 + 16) > 0.0)
  {
    sub_19B6A80D8((a1 + 16), &stru_1F0E3D7A0);
  }

  if (*(a1 + 32) > 0.0)
  {
    sub_19B6A80D8((a1 + 32), &stru_1F0E3D7A0);
  }

  if (*(a1 + 48) > 0.0)
  {
    sub_19B6A80D8((a1 + 48), &stru_1F0E3D7A0);
  }

  if (*(a1 + 64) > 0.0)
  {
    sub_19B6A80D8((a1 + 64), &stru_1F0E3D7A0);
  }

  if (*(a1 + 80) > 0.0)
  {
    sub_19B6A80D8((a1 + 80), &stru_1F0E3D7A0);
  }

  if (*(a1 + 96) > 0.0)
  {
    sub_19B6A80D8((a1 + 96), &stru_1F0E3D7A0);
  }

  if (*(a1 + 112) > 0.0)
  {
    sub_19B6A80D8((a1 + 112), &stru_1F0E3D7A0);
  }

  if (*(a1 + 128) > 0.0)
  {
    sub_19B6A80D8((a1 + 128), &stru_1F0E3D7A0);
  }

  if (*(a1 + 144) > 0.0)
  {
    sub_19B6A80D8((a1 + 144), &stru_1F0E3D7A0);
  }

  if (*(a1 + 160) > 0.0)
  {
    sub_19B6A80D8((a1 + 160), &stru_1F0E3D7A0);
  }

  if (*(a1 + 176) > 0.0)
  {
    sub_19B6A80D8((a1 + 176), &stru_1F0E3D7A0);
  }

  if (*(a1 + 192) > 0.0)
  {
    sub_19B6A80D8((a1 + 192), &stru_1F0E3D7A0);
  }

  if (*(a1 + 208) > 0.0)
  {
    sub_19B6A80D8((a1 + 208), &stru_1F0E3D7A0);
  }

  if (*(a1 + 224) > 0.0)
  {
    sub_19B6A80D8((a1 + 224), &stru_1F0E3D7A0);
  }

  if (*(a1 + 240) > 0.0)
  {
    sub_19B6A80D8((a1 + 240), &stru_1F0E3D7A0);
  }

  if (*(a1 + 256) > 0.0)
  {
    sub_19B6A80D8((a1 + 256), &stru_1F0E3D7A0);
  }

  if (*(a1 + 272) > 0.0)
  {
    sub_19B6A80D8((a1 + 272), &stru_1F0E3D7A0);
  }

  if (*(a1 + 288) > 0.0)
  {
    sub_19B6A80D8((a1 + 288), &stru_1F0E3D7A0);
  }

  if (*(a1 + 304) > 0.0)
  {
    sub_19B6A80D8((a1 + 304), &stru_1F0E3D7A0);
  }

  if (*(a1 + 320) > 0.0)
  {
    sub_19B6A80D8((a1 + 320), &stru_1F0E3D7A0);
  }

  if (*(a1 + 336) > 0.0)
  {
    sub_19B6A80D8((a1 + 336), &stru_1F0E3D7A0);
  }

  if (*(a1 + 352) > 0.0)
  {
    sub_19B6A80D8((a1 + 352), &stru_1F0E3D7A0);
  }

  if (*(a1 + 368) > 0.0)
  {
    sub_19B6A80D8((a1 + 368), &stru_1F0E3D7A0);
  }

  if (*(a1 + 384) > 0.0)
  {
    sub_19B6A80D8((a1 + 384), &stru_1F0E3D7A0);
  }

  if (*(a1 + 400) > 0.0)
  {
    sub_19B6A80D8((a1 + 400), &stru_1F0E3D7A0);
  }

  if (*(a1 + 416) > 0.0)
  {
    sub_19B6A80D8((a1 + 416), &stru_1F0E3D7A0);
  }

  if (*(a1 + 432) > 0.0)
  {
    sub_19B6A80D8((a1 + 432), &stru_1F0E3D7A0);
  }

  if (*(a1 + 448) > 0.0)
  {
    sub_19B6A80D8((a1 + 448), &stru_1F0E3D7A0);
  }

  if (*(a1 + 464) > 0.0)
  {
    sub_19B6A80D8((a1 + 464), &stru_1F0E3D7A0);
  }

  if (*(a1 + 480) > 0.0)
  {
    sub_19B6A80D8((a1 + 480), &stru_1F0E3D7A0);
  }

  if (*(a1 + 496) > 0.0)
  {
    sub_19B6A80D8((a1 + 496), &stru_1F0E3D7A0);
  }

  if (*(a1 + 512) > 0.0)
  {
    sub_19B6A80D8((a1 + 512), &stru_1F0E3D7A0);
  }

  if (*(a1 + 528) > 0.0)
  {
    sub_19B6A80D8((a1 + 528), &stru_1F0E3D7A0);
  }

  if (*(a1 + 544) > 0.0)
  {
    sub_19B6A80D8((a1 + 544), &stru_1F0E3D7A0);
  }

  if (*(a1 + 560) > 0.0)
  {
    sub_19B6A80D8((a1 + 560), &stru_1F0E3D7A0);
  }

  if (*(a1 + 576) > 0.0)
  {
    sub_19B6A80D8((a1 + 576), &stru_1F0E3D7A0);
  }

  if (*(a1 + 592) > 0.0)
  {
    sub_19B6A80D8((a1 + 592), &stru_1F0E3D7A0);
  }

  if (*(a1 + 608) > 0.0)
  {
    sub_19B6A80D8((a1 + 608), &stru_1F0E3D7A0);
  }

  if (*(a1 + 624) > 0.0)
  {
    sub_19B6A80D8((a1 + 624), &stru_1F0E3D7A0);
  }

  v2 = *(a1 + 2200);
  for (i = *(a1 + 2208); v2 != i; v2 += 2)
  {
    if (*v2 > 0.0)
    {
      sub_19B6A80D8(v2, &stru_1F0E3D7A0);
    }
  }

  if (fabs(*(a1 + 8)) <= 0.0001)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28DE0);
    }

    v10 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_ERROR, "[CMMediaSessionAnalyticsTracker] Trying to send analytics but the session duration was 0.0, not sending.", buf, 2u);
    }

    v11 = sub_19B420058();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28DE0);
      }

      LOWORD(v14[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMMediaSessionAnalyticsTracker] Trying to send analytics but the session duration was 0.0, not sending.", v14, 2);
      v13 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CMMediaSessionAnalyticsTracker::send()", "CoreLocation: %s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  else
  {
    if (*(a1 + 2136) >= 1)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28DE0);
      }

      v4 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 2136);
        *buf = 67240192;
        v16 = v5;
        _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_ERROR, "[CMMediaSessionAnalyticsTracker] We've already sent analytics for this instance, was this intended? sent: %{public}d", buf, 8u);
      }

      v6 = sub_19B420058();
      if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E28DE0);
        }

        v7 = *(a1 + 2136);
        v14[0] = 67240192;
        v14[1] = v7;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMMediaSessionAnalyticsTracker] We've already sent analytics for this instance, was this intended? sent: %{public}d", v14, 8);
        v9 = v8;
        sub_19B6BB7CC("Generic", 1, 0, 0, "void CMMediaSessionAnalyticsTracker::send()", "CoreLocation: %s\n", v8);
        if (v9 != buf)
        {
          free(v9);
        }
      }
    }

    AnalyticsSendEventLazy();
    ++*(a1 + 2136);
  }
}

uint64_t sub_19B5CA9E8(uint64_t a1)
{
  v45[13] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = sub_19B74FB58(*(v2 + 2128));
  v44[0] = @"sessionDuration";
  v6 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v4, v5, *(v2 + 8));
  v8 = @"unknown";
  if (v3)
  {
    v8 = v3;
  }

  v45[0] = v6;
  v45[1] = v8;
  v44[1] = @"accessoryHardwareModel";
  v44[2] = @"accessoryBudLocation";
  v45[2] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v7, *(v2 + 2132));
  v44[3] = @"percentageOfSrcSamplesThatAreVeryEarly_shortSession";
  LODWORD(v9) = *(v2 + 2000);
  v10 = v9 / *(a1 + 40);
  *&v10 = v10;
  v45[3] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v11, v12, v10);
  v44[4] = @"percentageOfSrcSamplesThatAreVeryLate_shortSession";
  LODWORD(v13) = *(v2 + 2004);
  v14 = v13 / *(a1 + 40);
  *&v14 = v14;
  v45[4] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v15, v16, v14);
  v44[5] = @"percentageOfAuxSamplesWithLargeGaps_shortSession";
  v17 = *(v2 + 2168) / *(a1 + 48);
  *&v17 = v17;
  v45[5] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v18, v19, v17);
  v44[6] = @"percentageOfAuxSamplesFailedToFindSource_shortSession";
  v20 = *(v2 + 2176) / *(a1 + 48);
  *&v20 = v20;
  v45[6] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v21, v22, v20);
  v44[7] = @"percentageOfAuxSamplesIndexUnchanged_shortSession";
  v23 = *(v2 + 2184) / *(a1 + 48);
  *&v23 = v23;
  v45[7] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v24, v25, v23);
  v44[8] = @"percentageOfAuxSamplesSourceDataMissing_shortSession";
  v26 = *(v2 + 2192) / *(a1 + 48);
  *&v26 = v26;
  v45[8] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v27, v28, v26);
  v44[9] = @"trackingClientMode";
  v45[9] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v29, *(v2 + 2236));
  v44[10] = @"hasDistractedViewing";
  v45[10] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v30, *(a1 + 56));
  v44[11] = @"hasJBLOverLimit";
  v45[11] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v31, *(a1 + 57));
  v44[12] = @"trackingScheme";
  v45[12] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v32, *(v2 + 2240));
  v34 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v33, v45, v44, 13);
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E28DE0);
  }

  v35 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v43 = v34;
    _os_log_impl(&dword_19B41C000, v35, OS_LOG_TYPE_DEFAULT, "[CMMediaSessionAnalyticsTracker] Sending basic analytics: \n%{private}@", buf, 0xCu);
  }

  v36 = sub_19B420058();
  if (*(v36 + 160) > 1 || *(v36 + 164) > 1 || *(v36 + 168) > 1 || *(v36 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28DE0);
    }

    v40 = 138477827;
    v41 = v34;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSessionAnalyticsTracker] Sending basic analytics: \n%{private}@", &v40, 12);
    v38 = v37;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMMediaSessionAnalyticsTracker::send()_block_invoke", "CoreLocation: %s\n", v37);
    if (v38 != buf)
    {
      free(v38);
    }
  }

  return v34;
}

void *sub_19B5CADAC(uint64_t a1)
{
  v844[79] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = sub_19B74FB58(*(v2 + 2128));
  v4 = *(v2 + 8);
  v5 = *(v2 + 280);
  v8 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v6, v7);
  v843[0] = @"trackingClientMode";
  v844[0] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v9, *(v2 + 2236));
  v843[1] = @"sessionDuration";
  v844[1] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v10, v11, *(v2 + 8));
  v843[2] = @"sessionDurationType";
  v13 = *(v2 + 8);
  if (v13 <= 60.0)
  {
    v14 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v12, 0);
  }

  else if (v13 <= 300.0)
  {
    v14 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v12, 1);
  }

  else if (v13 <= 600.0)
  {
    v14 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v12, 2);
  }

  else if (v13 <= 1200.0)
  {
    v14 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v12, 3);
  }

  else if (v13 <= 1800.0)
  {
    v14 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v12, 4);
  }

  else if (v13 <= 2400.0)
  {
    v14 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v12, 5);
  }

  else if (v13 <= 3000.0)
  {
    v14 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v12, 6);
  }

  else if (v13 <= 3600.0)
  {
    v14 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v12, 7);
  }

  else if (v13 <= 7200.0)
  {
    v14 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v12, 8);
  }

  else if (v13 <= 10800.0)
  {
    v14 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v12, 9);
  }

  else
  {
    v14 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v12, 10);
  }

  v16 = @"unknown";
  if (v3)
  {
    v16 = v3;
  }

  v844[2] = v14;
  v844[3] = v16;
  v843[3] = @"accessoryHardwareModel";
  v843[4] = @"accessoryBudLocation";
  v844[4] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v15, *(v2 + 2132));
  v843[5] = @"percentSessionInBTZ";
  v19 = 0.0;
  v20 = 0.0;
  if (v4 >= 0.001)
  {
    v21 = *(v2 + 24) / v4;
    v20 = v21;
  }

  v844[5] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v17, v18, v20);
  v843[6] = @"percentSourceActivityStateStatic";
  if (v4 >= 0.001)
  {
    v24 = *(v2 + 40) / v4;
    v19 = v24;
  }

  v844[6] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v22, v23, v19);
  v843[7] = @"percentSourceActivityStateVehicular";
  v27 = 0.0;
  v28 = 0.0;
  if (v4 >= 0.001)
  {
    v29 = *(v2 + 56) / v4;
    v28 = v29;
  }

  v844[7] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v25, v26, v28);
  v843[8] = @"percentSourceActivityStatePedestrian";
  if (v4 >= 0.001)
  {
    v32 = *(v2 + 72) / v4;
    v27 = v32;
  }

  v844[8] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v30, v31, v27);
  v843[9] = @"timeBeforeFirstAuxSample";
  v844[9] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v33, v34, *(v2 + 2144));
  v843[10] = @"percent2IMUInVehicle";
  v37 = *(v2 + 56);
  v38 = 0.0;
  v39 = 0.0;
  if (v37 >= 0.001)
  {
    v40 = *(v2 + 88) / v37;
    v39 = v40;
  }

  v844[10] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v35, v36, v39);
  v843[11] = @"percent2IMUWhilePedestrian";
  v43 = *(v2 + 72);
  if (v43 >= 0.001)
  {
    v44 = *(v2 + 104) / v43;
    v38 = v44;
  }

  v844[11] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v41, v42, v38);
  v843[12] = @"percent1IMU";
  v47 = 0.0;
  if (v4 >= 0.001)
  {
    v48 = *(v2 + 120) / v4;
    v47 = v48;
  }

  v844[12] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v45, v46, v47);
  v843[13] = @"trackingModeSwitchCount";
  v844[13] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v49, *(v2 + 1968));
  v843[14] = @"percentSessionInCT";
  v52 = 0.0;
  v53 = 0.0;
  if (v4 >= 0.001)
  {
    v53 = *(v2 + 136) / v4;
    *&v53 = v53;
  }

  v844[14] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v50, v51, v53);
  v843[15] = @"percentSessionInCTIn1IMU";
  if (v4 >= 0.001)
  {
    v56 = *(v2 + 152) / v4;
    v52 = v56;
  }

  *&v56 = v52;
  v844[15] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v54, v55, v56);
  v843[16] = @"percentSessionInCTInVehicle";
  v59 = 0.0;
  v60 = 0.0;
  if (v4 >= 0.001)
  {
    v60 = *(v2 + 168) / v4;
    *&v60 = v60;
  }

  v844[16] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v57, v58, v60);
  v843[17] = @"percentSessionInCTInPedestrian";
  if (v4 >= 0.001)
  {
    v63 = *(v2 + 184) / v4;
    v59 = v63;
  }

  *&v63 = v59;
  v844[17] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v61, v62, v63);
  v843[18] = @"numberOfCTEvents";
  v844[18] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v64, *(v2 + 1952));
  v843[19] = @"numberOfCTEventsIn1IMU";
  v844[19] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v65, *(v2 + 1956));
  v843[20] = @"numberOfCTEventsInVehicle";
  v844[20] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v66, *(v2 + 1960));
  v843[21] = @"numberOfCTEventsInPedestrian";
  v844[21] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v67, *(v2 + 1964));
  v843[22] = @"distractedViewingCount";
  v844[22] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v68, *(v2 + 1972));
  v843[23] = @"trackingReEnabledViaTouchCount";
  v844[23] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v69, *(v2 + 1976));
  v843[24] = @"trackingReEnabledViaSrcPickUpCount";
  v844[24] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v70, *(v2 + 1980));
  v843[25] = @"trackingReEnabledViaAuxStaticCount";
  v844[25] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v71, *(v2 + 1984));
  v843[26] = @"trackingReEnabledViaStandToSitCount";
  v844[26] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v72, *(v2 + 1988));
  v843[27] = @"trackingReEnabledViaJBLUnderLimitCount";
  v844[27] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v73, *(v2 + 1992));
  v843[28] = @"trackingReEnabledViaFaceDetectCount";
  v844[28] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v74, *(v2 + 1996));
  v843[29] = @"timeBeforeFirstValidPose";
  v75 = *(v2 + 2152);
  *&v75 = v75;
  v844[29] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v76, v77, v75);
  v843[30] = @"percentSessionSrcMoving";
  v80 = 0.0;
  v81 = 0.0;
  if (v4 >= 0.001)
  {
    v81 = *(v2 + 216) / v4;
    *&v81 = v81;
  }

  v844[30] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v78, v79, v81);
  v843[31] = @"percentSessionAuxMoving";
  if (v4 >= 0.001)
  {
    v84 = *(v2 + 200) / v4;
    v80 = v84;
  }

  *&v84 = v80;
  v844[31] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v82, v83, v84);
  v843[32] = @"percentSessionAuxAndSrcMoving";
  v87 = 0.0;
  v88 = 0.0;
  if (v4 >= 0.001)
  {
    v88 = *(v2 + 232) / v4;
    *&v88 = v88;
  }

  v844[32] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v85, v86, v88);
  v843[33] = @"percentSessionAuxAndSrcQuiescent";
  if (v4 >= 0.001)
  {
    v91 = *(v2 + 248) / v4;
    v87 = v91;
  }

  *&v91 = v87;
  v844[33] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v89, v90, v91);
  v843[34] = @"percentFeedAuxSuccess";
  v94 = *(v2 + 920);
  v95 = 0.0;
  v96 = 0.0;
  if (v94 >= 1)
  {
    v96 = *(v2 + 912) / v94;
    *&v96 = v96;
  }

  v844[34] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v92, v93, v96);
  v843[35] = @"percentRecentPoseAvailable";
  v100 = *(v2 + 952);
  if (v100 >= 1)
  {
    v99 = *(v2 + 944) / v100;
    v95 = v99;
  }

  *&v99 = v95;
  v844[35] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v97, v98, v99);
  v843[36] = @"auxGyroBiasConvergenceDuration";
  v101 = *(v2 + 264);
  *&v101 = v101;
  v844[36] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v102, v103, v101);
  v843[37] = @"JBLOverLimitCount";
  v844[37] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v104, *(v2 + 2012));
  v843[38] = @"percentSessionSteadyStatePedestrian";
  v107 = 0.0;
  v108 = 0.0;
  if (v4 >= 0.001)
  {
    v108 = *(v2 + 280) / v4;
    *&v108 = v108;
  }

  v844[38] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v105, v106, v108);
  v843[39] = @"trackingDisabledViaWalkingCount";
  v844[39] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v109, *(v2 + 2016));
  v843[40] = @"trackingDisabledViaSitToStandWalkingCount";
  v844[40] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v110, *(v2 + 2020));
  v843[41] = @"trackingDisabledViaJBLCount";
  v844[41] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v111, *(v2 + 2024));
  v843[42] = @"keepBoresightCenteredDueToDynamicsCount";
  v844[42] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v112, *(v2 + 2028));
  v843[43] = @"percentSessionKeepBoresightCentered";
  if (v4 >= 0.001)
  {
    v115 = *(v2 + 296) / v4;
    v107 = v115;
  }

  *&v115 = v107;
  v844[43] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v113, v114, v115);
  v843[44] = @"hasDistractedViewing";
  v844[44] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v116, *(a1 + 56));
  v843[45] = @"hasJBLOverLimit";
  v844[45] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v117, *(a1 + 57));
  v843[46] = @"sitCount";
  v844[46] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v118, *(v2 + 2032));
  v843[47] = @"standCount";
  v844[47] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v119, *(v2 + 2036));
  v843[48] = @"percentSessionDisabledDueToWalking";
  v122 = 0.0;
  v123 = 0.0;
  if (v4 >= 0.001)
  {
    v123 = *(v2 + 312) / v4;
    *&v123 = v123;
  }

  v844[48] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v120, v121, v123);
  v843[49] = @"percentSessionDisabledDueToJBL";
  if (v4 >= 0.001)
  {
    v126 = *(v2 + 328) / v4;
    v122 = v126;
  }

  v127 = v5;
  *&v126 = v122;
  v844[49] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v124, v125, v126);
  v843[50] = @"percentSessionHeadtracked";
  v130 = 0.0;
  v131 = 0.0;
  if (v4 >= 0.001)
  {
    v131 = *(v2 + 344) / v4;
    *&v131 = v131;
  }

  v844[50] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v128, v129, v131);
  v843[51] = @"sessionEnvironmentType";
  v844[51] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v132, *(v2 + 2244));
  v843[52] = @"percentSteadyStatePedestrianCTBodyTurn";
  if (v127 >= 0.001)
  {
    v135 = *(v2 + 360) / v127;
    v130 = v135;
  }

  *&v135 = v130;
  v844[52] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v133, v134, v135);
  v843[53] = @"percentSteadyStatePedestrianHeadTurn";
  v138 = 0.0;
  if (v127 >= 0.001)
  {
    v138 = *(v2 + 376) / v127;
    *&v138 = v138;
  }

  v844[53] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v136, v137, v138);
  v843[54] = @"maxJBLDisablesPerMinute";
  v140 = *(v2 + 2112);
  v141 = *(v2 + 2124);
  if (v140 <= v141)
  {
    v142 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v139, v141);
  }

  else
  {
    v142 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v139, v140);
  }

  v844[54] = v142;
  v843[55] = @"bucketedMaxJBLDisablesPerMinute";
  v144 = *(v2 + 2124);
  if (*(v2 + 2112) > v144)
  {
    v144 = *(v2 + 2112);
  }

  v145 = *(v2 + 2248);
  v146 = *(v2 + 2256);
  if (v145 == v146)
  {
    v148 = *(v2 + 2248);
  }

  else
  {
    v147 = v144;
    v148 = *(v2 + 2248);
    while (*v148 <= v147)
    {
      if (++v148 == v146)
      {
        v148 = *(v2 + 2256);
        break;
      }
    }
  }

  v844[55] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v143, (v148 - v145) >> 3);
  v843[56] = @"cameraOnDuration";
  v149 = *(v2 + 392);
  *&v149 = v149;
  v844[56] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v150, v151, v149);
  v843[57] = @"percentageOfSessionCameraOn";
  v154 = 0.0;
  v155 = 0.0;
  if (v4 >= 0.001)
  {
    v155 = *(v2 + 392) / v4;
    *&v155 = v155;
  }

  v844[57] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v152, v153, v155);
  v843[58] = @"numberOfCameraRequest";
  v844[58] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v156, *(v2 + 2040));
  v843[59] = @"percentageOfSessionInLockScreen";
  if (v4 >= 0.001)
  {
    v159 = *(v2 + 408) / v4;
    v154 = v159;
  }

  *&v159 = v154;
  v844[59] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v157, v158, v159);
  v843[60] = @"percentageOfSessionWithExternalScreen";
  v162 = 0.0;
  v163 = 0.0;
  if (v4 >= 0.001)
  {
    v163 = *(v2 + 424) / v4;
    *&v163 = v163;
  }

  v844[60] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v160, v161, v163);
  v843[61] = @"numberOfExternalScreens";
  v844[61] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v164, *(v2 + 2044));
  v843[62] = @"numberOfBTZ";
  v844[62] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v165, *(v2 + 2272));
  v843[63] = @"numberOfDeviceOrientationChange";
  v844[63] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v166, *(v2 + 2276));
  v843[64] = @"trackingScheme";
  v844[64] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v167, *(v2 + 2240));
  v843[65] = @"percentHeadsetActivityOther";
  if (v4 >= 0.001)
  {
    v170 = *(v2 + 440) / v4;
    v162 = v170;
  }

  *&v170 = v162;
  v844[65] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v168, v169, v170);
  v843[66] = @"percentHeadsetActivityWalking";
  v173 = 0.0;
  v174 = 0.0;
  if (v4 >= 0.001)
  {
    v174 = *(v2 + 456) / v4;
    *&v174 = v174;
  }

  v844[66] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v171, v172, v174);
  v843[67] = @"percentHeadsetActivityRunning";
  if (v4 >= 0.001)
  {
    v177 = *(v2 + 472) / v4;
    v173 = v177;
  }

  *&v177 = v173;
  v844[67] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v175, v176, v177);
  v843[68] = @"percentHeadsetActivityStationary";
  v180 = 0.0;
  v181 = 0.0;
  if (v4 >= 0.001)
  {
    v181 = *(v2 + 488) / v4;
    *&v181 = v181;
  }

  v844[68] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v178, v179, v181);
  v843[69] = @"percentHeadsetActivityPedestrian";
  if (v4 >= 0.001)
  {
    v184 = *(v2 + 504) / v4;
    v180 = v184;
  }

  *&v184 = v180;
  v844[69] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v182, v183, v184);
  v843[70] = @"percentageOfSessionSrcActivityStationaryAndHeadsetActivityPedestrian";
  v187 = 0.0;
  v188 = 0.0;
  if (v4 >= 0.001)
  {
    v188 = *(v2 + 520) / v4;
    *&v188 = v188;
  }

  v844[70] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v185, v186, v188);
  v843[71] = @"percentageOfSessionSrcActivityStationaryAndHeadsetActivityOtherMoving";
  if (v4 >= 0.001)
  {
    v191 = *(v2 + 536) / v4;
    v187 = v191;
  }

  *&v191 = v187;
  v844[71] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v189, v190, v191);
  v843[72] = @"percentageOfSessionSrcActivityStationaryAndHeadsetActivityStationary";
  v194 = 0.0;
  v195 = 0.0;
  if (v4 >= 0.001)
  {
    v195 = *(v2 + 552) / v4;
    *&v195 = v195;
  }

  v844[72] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v192, v193, v195);
  v843[73] = @"percentageOfSrcActivityWalkingWhenHeadsetActivityWalking";
  v198 = *(v2 + 456);
  *&v198 = v198;
  if (*&v198 >= 0.001)
  {
    v198 = *(v2 + 584) / *&v198;
    v194 = v198;
  }

  *&v198 = v194;
  v844[73] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v196, v197, v198);
  v843[74] = @"percentageOfSrcActivityPedestrianWhenHeadsetActivityPedestrian";
  v201 = *(v2 + 504);
  v202 = 0.0;
  v203 = 0.0;
  if (v201 >= 0.001)
  {
    v203 = *(v2 + 600) / v201;
    *&v203 = v203;
  }

  v844[74] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v199, v200, v203);
  v843[75] = @"percentageOfHeadsetActivityPedestrianWhenSessionSrcActivityPedestrian";
  v206 = *(v2 + 72);
  *&v206 = v206;
  if (*&v206 >= 0.001)
  {
    v206 = *(v2 + 616) / *&v206;
    v202 = v206;
  }

  *&v206 = v202;
  v844[75] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v204, v205, v206);
  v843[76] = @"percentageOfHeadsetActivityWalkingWhenSrcActivityWalking";
  v209 = *(v2 + 568);
  v210 = 0.0;
  if (v209 >= 0.001)
  {
    v210 = *(v2 + 632) / v209;
    *&v210 = v210;
  }

  v844[76] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v207, v208, v210);
  v843[77] = @"percentageOfPotentiallyRejectedAnchors";
  LODWORD(v211) = *(v2 + 2284);
  v844[77] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v212, v213, v211);
  v843[78] = @"percentageOfActuallyRejectedAnchors";
  LODWORD(v214) = *(v2 + 2288);
  v844[78] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v215, v216, v214);
  v218 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v217, v844, v843, 79);
  objc_msgSend_setDictionary_(v8, v219, v218);
  v222 = *(v2 + 2160);
  if (v222 > 0.0)
  {
    *&v222 = v222;
    v223 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v220, v221, v222);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v224, v223, @"timeToFirstFaceposeInSession");
  }

  v225 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v220, *(v2 + 2280));
  objc_msgSend_setObject_forKeyedSubscript_(v8, v226, v225, @"maxNumberOfFaceDetectedDuringSession");
  v230 = *(v2 + 2088);
  if (v230 >= 1)
  {
    v231 = v230;
    *&v229 = *(v2 + 2080) / v230;
    v232 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v229);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v233, v232, @"percentageOfCameraRequestMultipleFaceDetected");
    *&v234 = *(v2 + 2084) / v231;
    v237 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v235, v236, v234);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v238, v237, @"percentageOfCameraRequestNoFaceDetected");
  }

  if (*(v2 + 640) != 1.79769313e308)
  {
    v239 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v227, v228, *(v2 + 648));
    objc_msgSend_setObject_forKeyedSubscript_(v8, v240, v239, @"maxGapBetweenAuxSamples");
    v243 = *(v2 + 664);
    if (v243 < 1)
    {
      v244 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v241, v242, 0.0);
    }

    else
    {
      v244 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v241, v242, *(v2 + 656) / v243);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v245, v244, @"avgGapBetweenAuxSamples");
  }

  if (*(v2 + 672) != 1.79769313e308)
  {
    v246 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v227, v228, *(v2 + 680));
    objc_msgSend_setObject_forKeyedSubscript_(v8, v247, v246, @"maxGapBetweenBTZ");
    v250 = *(v2 + 696);
    if (v250 < 1)
    {
      v251 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v248, v249, 0.0);
    }

    else
    {
      v251 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v248, v249, *(v2 + 688) / v250);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v252, v251, @"avgGapBetweenBTZ");
  }

  v253 = *(v2 + 704);
  if (v253 != 1.79769313e308)
  {
    *&v253 = v253;
    v254 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v253);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v255, v254, @"minGapBetweenCTSeconds");
    v258 = *(v2 + 728);
    if (v258 < 1)
    {
      v260 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v256, v257, 0.0);
    }

    else
    {
      v259 = *(v2 + 720) / v258;
      *&v259 = v259;
      v260 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v256, v257, v259);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v261, v260, @"avgGapBetweenCTSeconds");
    v262 = *(v2 + 712);
    *&v262 = v262;
    v265 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v263, v264, v262);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v266, v265, @"maxGapBetweenCTSeconds");
  }

  v267 = *(v2 + 736);
  if (v267 != 1.79769313e308)
  {
    v268 = v267 * 57.2957802;
    *&v268 = v268;
    v269 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v268);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v270, v269, @"minCTBTZCorrectionAngleDeg");
    v273 = *(v2 + 760);
    if (v273 < 1)
    {
      v275 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v271, v272, 0.0);
    }

    else
    {
      v274 = *(v2 + 752) / v273 * 57.2957802;
      *&v274 = v274;
      v275 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v271, v272, v274);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v276, v275, @"avgCTBTZCorrectionAngleDeg");
    v277 = *(v2 + 744) * 57.2957802;
    *&v277 = v277;
    v280 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v278, v279, v277);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v281, v280, @"maxCTBTZCorrectionAngleDeg");
  }

  v282 = *(v2 + 768);
  if (v282 != 1.79769313e308)
  {
    v283 = v282 * 57.2957802;
    *&v283 = v283;
    v284 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v283);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v285, v284, @"minCTSrcYawRateDps");
    v288 = *(v2 + 792);
    if (v288 < 1)
    {
      v290 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v286, v287, 0.0);
    }

    else
    {
      v289 = *(v2 + 784) / v288 * 57.2957802;
      *&v289 = v289;
      v290 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v286, v287, v289);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v291, v290, @"avgCTSrcYawRateDps");
    v292 = *(v2 + 776) * 57.2957802;
    *&v292 = v292;
    v295 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v293, v294, v292);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v296, v295, @"maxCTSrcYawRateDps");
  }

  v297 = *(v2 + 800);
  if (v297 != 1.79769313e308)
  {
    v298 = v297 * 57.2957802;
    *&v298 = v298;
    v299 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v298);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v300, v299, @"minCTAuxYawRateDps");
    v303 = *(v2 + 824);
    if (v303 < 1)
    {
      v305 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v301, v302, 0.0);
    }

    else
    {
      v304 = *(v2 + 816) / v303 * 57.2957802;
      *&v304 = v304;
      v305 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v301, v302, v304);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v306, v305, @"avgCTAuxYawRateDps");
    v307 = *(v2 + 808) * 57.2957802;
    *&v307 = v307;
    v310 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v308, v309, v307);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v311, v310, @"maxCTAuxYawRateDps");
  }

  if (*(v2 + 832) != 1.79769313e308)
  {
    v312 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v227, v228);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v313, v312, @"minDistractedViewingDuration");
    v316 = *(v2 + 856);
    if (v316 < 1)
    {
      v317 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v314, v315, 0.0);
    }

    else
    {
      v317 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v314, v315, *(v2 + 848) / v316);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v318, v317, @"avgDistractedViewingDuration");
    v321 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v319, v320, *(v2 + 840));
    objc_msgSend_setObject_forKeyedSubscript_(v8, v322, v321, @"maxDistractedViewingDuration");
  }

  v323 = *(v2 + 864);
  if (v323 != 1.79769313e308)
  {
    v324 = v323 * 57.2957802;
    *&v324 = v324;
    v325 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v324);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v326, v325, @"minBTZCorrectionAngleDeg");
    v329 = *(v2 + 888);
    if (v329 < 1)
    {
      v331 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v327, v328, 0.0);
    }

    else
    {
      v330 = *(v2 + 880) / v329 * 57.2957802;
      *&v330 = v330;
      v331 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v327, v328, v330);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v332, v331, @"avgBTZCorrectionAngleDeg");
    v333 = *(v2 + 872) * 57.2957802;
    *&v333 = v333;
    v336 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v334, v335, v333);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v337, v336, @"maxBTZCorrectionAngleDeg");
  }

  v338 = *(v2 + 960);
  if (v338 != 1.79769313e308)
  {
    *&v338 = v338;
    v339 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v338);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v340, v339, @"minAuxMotionToPoseLatency");
    v343 = *(v2 + 984);
    if (v343 < 1)
    {
      v345 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v341, v342, 0.0);
    }

    else
    {
      v344 = *(v2 + 976) / v343;
      *&v344 = v344;
      v345 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v341, v342, v344);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v346, v345, @"avgAuxMotionToPoseLatency");
    v347 = *(v2 + 968);
    *&v347 = v347;
    v350 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v348, v349, v347);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v351, v350, @"maxAuxMotionToPoseLatency");
  }

  v352 = *(v2 + 992);
  if (v352 != 1.79769313e308)
  {
    *&v352 = v352;
    v353 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v352);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v354, v353, @"minJBL");
    v355 = *(v2 + 1000);
    *&v355 = v355;
    v358 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v356, v357, v355);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v359, v358, @"maxJBL");
    LOWORD(v360) = *(v2 + 2228);
    v361 = *(v2 + 2232) + v360 * *(*(v2 + 2200) + 16 * *(v2 + 2224) + 8);
    *&v361 = v361;
    *(v2 + 2232) = LODWORD(v361);
    *&v361 = *&v361 / v4;
    v364 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v362, v363, v361);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v365, v364, @"avgJBL");
  }

  v366 = *(v2 + 1024);
  if (v366 != 1.79769313e308)
  {
    *&v366 = v366;
    v367 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v366);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v368, v367, @"timeBetweenStandAndWalkingEventSecondsMin");
    v369 = *(v2 + 1032);
    *&v369 = v369;
    v372 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v370, v371, v369);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v373, v372, @"timeBetweenStandAndWalkingEventSecondsMax");
    v376 = *(v2 + 1048);
    if (v376 < 1)
    {
      v378 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v374, v375, 0.0);
    }

    else
    {
      v377 = *(v2 + 1040) / v376;
      *&v377 = v377;
      v378 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v374, v375, v377);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v379, v378, @"timeBetweenStandAndWalkingEventSecondsAverage");
  }

  v380 = *(v2 + 1056);
  if (v380 != 1.79769313e308)
  {
    *&v380 = v380;
    v381 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v380);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v382, v381, @"timeBetweenSitAndWalkingEventSecondsMin");
    v383 = *(v2 + 1064);
    *&v383 = v383;
    v386 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v384, v385, v383);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v387, v386, @"timeBetweenSitAndWalkingEventSecondsMax");
    v390 = *(v2 + 1080);
    if (v390 < 1)
    {
      v392 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v388, v389, 0.0);
    }

    else
    {
      v391 = *(v2 + 1072) / v390;
      *&v391 = v391;
      v392 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v388, v389, v391);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v393, v392, @"timeBetweenSitAndWalkingEventSecondsAverage");
  }

  v394 = *(v2 + 1088);
  if (v394 != 1.79769313e308)
  {
    *&v394 = v394;
    v395 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v394);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v396, v395, @"timeBetweenStandingAndSittingSecondsMin");
    v397 = *(v2 + 1096);
    *&v397 = v397;
    v400 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v398, v399, v397);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v401, v400, @"timeBetweenStandingAndSittingSecondsMax");
    v404 = *(v2 + 1112);
    if (v404 < 1)
    {
      v406 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v402, v403, 0.0);
    }

    else
    {
      v405 = *(v2 + 1104) / v404;
      *&v405 = v405;
      v406 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v402, v403, v405);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v407, v406, @"timeBetweenStandingAndSittingSecondsAverage");
  }

  v408 = *(v2 + 1120);
  if (v408 != 1.79769313e308)
  {
    *&v408 = v408;
    v409 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v408);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v410, v409, @"timeBetweenSittingAndStandingSecondsMin");
    v411 = *(v2 + 1128);
    *&v411 = v411;
    v414 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v412, v413, v411);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v415, v414, @"timeBetweenSittingAndStandingSecondsMax");
    v418 = *(v2 + 1144);
    if (v418 < 1)
    {
      v420 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v416, v417, 0.0);
    }

    else
    {
      v419 = *(v2 + 1136) / v418;
      *&v419 = v419;
      v420 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v416, v417, v419);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v421, v420, @"timeBetweenSittingAndStandingSecondsAverage");
  }

  v422 = *(v2 + 1152);
  if (v422 != 1.79769313e308)
  {
    *&v422 = v422;
    v423 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v422);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v424, v423, @"timeBetweenStandAndDisableSecondsMin");
    v425 = *(v2 + 1160);
    *&v425 = v425;
    v428 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v426, v427, v425);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v429, v428, @"timeBetweenStandAndDisableSecondsMax");
    v432 = *(v2 + 1176);
    if (v432 < 1)
    {
      v434 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v430, v431, 0.0);
    }

    else
    {
      v433 = *(v2 + 1168) / v432;
      *&v433 = v433;
      v434 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v430, v431, v433);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v435, v434, @"timeBetweenStandAndDisableSecondsAverage");
  }

  v436 = *(v2 + 1184);
  if (v436 != 1.79769313e308)
  {
    *&v436 = v436;
    v437 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v436);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v438, v437, @"timeBetweenEnableAndDisableTrackingMin");
    v439 = *(v2 + 1192);
    *&v439 = v439;
    v442 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v440, v441, v439);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v443, v442, @"timeBetweenEnableAndDisableTrackingMax");
    v446 = *(v2 + 1208);
    if (v446 < 1)
    {
      v448 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v444, v445, 0.0);
    }

    else
    {
      v447 = *(v2 + 1200) / v446;
      *&v447 = v447;
      v448 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v444, v445, v447);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v449, v448, @"timeBetweenEnableAndDisableTrackingAverage");
  }

  v450 = *(v2 + 1216);
  if (v450 != 1.79769313e308)
  {
    *&v450 = v450;
    v451 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v450);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v452, v451, @"minTimeBetweenCameraRequest");
    v453 = *(v2 + 1224);
    *&v453 = v453;
    v456 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v454, v455, v453);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v457, v456, @"maxTimeBetweenCameraRequest");
    v460 = *(v2 + 1240);
    if (v460 < 1)
    {
      v462 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v458, v459, 0.0);
    }

    else
    {
      v461 = *(v2 + 1232) / v460;
      *&v461 = v461;
      v462 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v458, v459, v461);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v463, v462, @"avgTimeBetweenCameraRequest");
  }

  v464 = *(v2 + 1248);
  if (v464 != 1.79769313e308)
  {
    *&v464 = v464;
    v465 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v464);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v466, v465, @"minLidAngle");
    v467 = *(v2 + 1256);
    *&v467 = v467;
    v470 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v468, v469, v467);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v471, v470, @"maxLidAngle");
    v474 = *(v2 + 1272);
    if (v474 < 1)
    {
      v476 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v472, v473, 0.0);
    }

    else
    {
      v475 = *(v2 + 1264) / v474;
      *&v475 = v475;
      v476 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v472, v473, v475);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v477, v476, @"avgLidAngle");
  }

  v478 = *(v2 + 1280);
  if (v478 != 1.79769313e308)
  {
    *&v478 = v478;
    v479 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v478);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v480, v479, @"minDurationBetweenUserMovementForCameraController");
    v481 = *(v2 + 1288);
    *&v481 = v481;
    v484 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v482, v483, v481);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v485, v484, @"maxDurationBetweenUserMovementForCameraController");
    v488 = *(v2 + 1304);
    if (v488 < 1)
    {
      v490 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v486, v487, 0.0);
    }

    else
    {
      v489 = *(v2 + 1296) / v488;
      *&v489 = v489;
      v490 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v486, v487, v489);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v491, v490, @"avgDurationBetweenUserMovementForCameraController");
  }

  v492 = *(v2 + 1312);
  if (v492 != 1.79769313e308)
  {
    *&v492 = v492;
    v493 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v492);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v494, v493, @"minUserMotionDurationForCameraController");
    v495 = *(v2 + 1320);
    *&v495 = v495;
    v498 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v496, v497, v495);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v499, v498, @"maxUserMotionDurationForCameraController");
    v502 = *(v2 + 1336);
    if (v502 < 1)
    {
      v504 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v500, v501, 0.0);
    }

    else
    {
      v503 = *(v2 + 1328) / v502;
      *&v503 = v503;
      v504 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v500, v501, v503);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v505, v504, @"avgUserMotionDurationForCameraController");
  }

  v506 = *(v2 + 1344);
  if (v506 != 1.79769313e308)
  {
    *&v506 = v506;
    v507 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v506);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v508, v507, @"minUserStaticPoseAfterDisturbanceDurationForCameraController");
    v509 = *(v2 + 1352);
    *&v509 = v509;
    v512 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v510, v511, v509);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v513, v512, @"maxUserStaticPoseAfterDisturbanceDurationForCameraController");
    v516 = *(v2 + 1368);
    if (v516 < 1)
    {
      v518 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v514, v515, 0.0);
    }

    else
    {
      v517 = *(v2 + 1360) / v516;
      *&v517 = v517;
      v518 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v514, v515, v517);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v519, v518, @"avgUserStaticPoseAfterDisturbanceDurationForCameraController");
  }

  v520 = *(v2 + 1376);
  if (v520 != 1.79769313e308)
  {
    *&v520 = v520;
    v521 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v520);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v522, v521, @"minTimeToFirstFaceposeInCameraRequest");
    v523 = *(v2 + 1384);
    *&v523 = v523;
    v526 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v524, v525, v523);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v527, v526, @"maxTimeToFirstFaceposeInCameraRequest");
    v530 = *(v2 + 1400);
    if (v530 < 1)
    {
      v532 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v528, v529, 0.0);
    }

    else
    {
      v531 = *(v2 + 1392) / v530;
      *&v531 = v531;
      v532 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v528, v529, v531);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v533, v532, @"avgTimeToFirstFaceposeInCameraRequest");
  }

  if (*(v2 + 1408) != 1.79769313e308)
  {
    v534 = *(v2 + 1416);
    *&v534 = v534;
    v535 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v534);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v536, v535, @"maxFaceposeLatencySec");
    v539 = *(v2 + 1432);
    if (v539 < 1)
    {
      v541 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v537, v538, 0.0);
    }

    else
    {
      v540 = *(v2 + 1424) / v539;
      *&v540 = v540;
      v541 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v537, v538, v540);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v542, v541, @"avgFaceposeLatencySec");
  }

  v543 = *(v2 + 1888);
  if (v543 != 1.79769313e308)
  {
    v544 = *(v2 + 1912);
    if (v544 < 1)
    {
      v546 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, 0.0);
    }

    else
    {
      v545 = *(v2 + 1904) / v544;
      *&v545 = v545;
      v546 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v545);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v547, v546, @"avgDistanceFromCamera");
  }

  v548 = *(v2 + 2048);
  if (v548)
  {
    v549 = *(v2 + 2056) + *(v2 + 2052);
    v550 = v548 >= v549;
    v551 = v548 - v549;
    if (v550)
    {
      *&v543 = v551 / v548;
      v552 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v543);
      objc_msgSend_setObject_forKeyedSubscript_(v8, v553, v552, @"percentageOfFaceposeAnchorValid");
      *&v554 = *(v2 + 2052) / *(v2 + 2048);
      v557 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v555, v556, v554);
      objc_msgSend_setObject_forKeyedSubscript_(v8, v558, v557, @"percentageOfFaceposeAnchorInvalidDueToFaceposeFailure");
      *&v559 = *(v2 + 2056) / *(v2 + 2048);
      v562 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v560, v561, v559);
      objc_msgSend_setObject_forKeyedSubscript_(v8, v563, v562, @"percentageOfFaceposeAnchorInvalidDueToConfidence");
    }
  }

  v564 = *(v2 + 2040);
  if (v564)
  {
    v565 = *(v2 + 2060);
    if (vaddvq_s32(v565) + *(v2 + 2076) <= v564)
    {
      *v565.i32 = v565.u32[0] / v564;
      v566 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, *v565.i64);
      objc_msgSend_setObject_forKeyedSubscript_(v8, v567, v566, @"percentageOfCameraRequestDueToMaxDutyCycleStatic");
      *&v568 = *(v2 + 2064) / *(v2 + 2040);
      v571 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v569, v570, v568);
      objc_msgSend_setObject_forKeyedSubscript_(v8, v572, v571, @"percentageOfCameraRequestDueToMaxDutyCycleMoving");
      *&v573 = *(v2 + 2068) / *(v2 + 2040);
      v576 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v574, v575, v573);
      objc_msgSend_setObject_forKeyedSubscript_(v8, v577, v576, @"percentageOfCameraRequestDueToAuxAndSrcMotion");
      *&v578 = *(v2 + 2072) / *(v2 + 2040);
      v581 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v579, v580, v578);
      objc_msgSend_setObject_forKeyedSubscript_(v8, v582, v581, @"percentageOfCameraRequestDueToAuxMotion");
      *&v583 = *(v2 + 2076) / *(v2 + 2040);
      v586 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v584, v585, v583);
      objc_msgSend_setObject_forKeyedSubscript_(v8, v587, v586, @"percentageOfCameraRequestDueToSrcMotion");
    }
  }

  v588 = *(v2 + 1440);
  if (v588 != 1.79769313e308)
  {
    *&v588 = v588;
    v589 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v588);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v590, v589, @"minAnchorCorrectionAngleDeg");
    v593 = *(v2 + 1464);
    if (v593 < 1)
    {
      v595 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v591, v592, 0.0);
    }

    else
    {
      v594 = *(v2 + 1456) / v593;
      *&v594 = v594;
      v595 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v591, v592, v594);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v596, v595, @"avgAnchorCorrectionAngleDeg");
    v597 = *(v2 + 1448);
    *&v597 = v597;
    v600 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v598, v599, v597);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v601, v600, @"maxAnchorCorrectionAngleDeg");
  }

  v602 = *(v2 + 1472);
  if (v602 != 1.79769313e308)
  {
    *&v602 = v602;
    v603 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v602);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v604, v603, @"minAnchorCorrectionYawAngleDeg");
    v607 = *(v2 + 1496);
    if (v607 < 1)
    {
      v609 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v605, v606, 0.0);
    }

    else
    {
      v608 = *(v2 + 1488) / v607;
      *&v608 = v608;
      v609 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v605, v606, v608);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v610, v609, @"avgAnchorCorrectionYawAngleDeg");
    v611 = *(v2 + 1480);
    *&v611 = v611;
    v614 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v612, v613, v611);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v615, v614, @"maxAnchorCorrectionYawAngleDeg");
  }

  v616 = *(v2 + 1504);
  if (v616 != 1.79769313e308)
  {
    *&v616 = v616;
    v617 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v616);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v618, v617, @"minAnchorCorrectionPitchAngleDeg");
    v621 = *(v2 + 1528);
    if (v621 < 1)
    {
      v623 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v619, v620, 0.0);
    }

    else
    {
      v622 = *(v2 + 1520) / v621;
      *&v622 = v622;
      v623 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v619, v620, v622);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v624, v623, @"avgAnchorCorrectionPitchAngleDeg");
    v625 = *(v2 + 1512);
    *&v625 = v625;
    v628 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v626, v627, v625);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v629, v628, @"maxAnchorCorrectionPitchAngleDeg");
  }

  v630 = *(v2 + 1568);
  if (v630 != 1.79769313e308)
  {
    *&v630 = v630;
    v631 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v630);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v632, v631, @"minDistanceToCamera");
    v635 = *(v2 + 1592);
    if (v635 < 1)
    {
      v637 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v633, v634, 0.0);
    }

    else
    {
      v636 = *(v2 + 1584) / v635;
      *&v636 = v636;
      v637 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v633, v634, v636);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v638, v637, @"avgDistanceToCamera");
    v639 = *(v2 + 1576);
    *&v639 = v639;
    v642 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v640, v641, v639);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v643, v642, @"maxDistanceToCamera");
  }

  v644 = *(v2 + 1600);
  if (v644 != 1.79769313e308)
  {
    *&v644 = v644;
    v645 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v644);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v646, v645, @"minYawAngleInFaceFrame");
    v649 = *(v2 + 1624);
    if (v649 < 1)
    {
      v651 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v647, v648, 0.0);
    }

    else
    {
      v650 = *(v2 + 1616) / v649;
      *&v650 = v650;
      v651 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v647, v648, v650);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v652, v651, @"avgYawAngleInFaceFrame");
    v653 = *(v2 + 1608);
    *&v653 = v653;
    v656 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v654, v655, v653);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v657, v656, @"maxYawAngleInFaceFrame");
  }

  v658 = *(v2 + 1632);
  if (v658 != 1.79769313e308)
  {
    *&v658 = v658;
    v659 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v658);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v660, v659, @"minPitchAngleInFaceFrame");
    v663 = *(v2 + 1656);
    if (v663 < 1)
    {
      v665 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v661, v662, 0.0);
    }

    else
    {
      v664 = *(v2 + 1648) / v663;
      *&v664 = v664;
      v665 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v661, v662, v664);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v666, v665, @"avgPitchAngleInFaceFrame");
    v667 = *(v2 + 1640);
    *&v667 = v667;
    v670 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v668, v669, v667);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v671, v670, @"maxPitchAngleInFaceFrame");
  }

  v672 = *(v2 + 1664);
  if (v672 != 1.79769313e308)
  {
    *&v672 = v672;
    v673 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v672);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v674, v673, @"minRollAngleInFaceFrame");
    v677 = *(v2 + 1688);
    if (v677 < 1)
    {
      v679 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v675, v676, 0.0);
    }

    else
    {
      v678 = *(v2 + 1680) / v677;
      *&v678 = v678;
      v679 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v675, v676, v678);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v680, v679, @"avgRollAngleInFaceFrame");
    v681 = *(v2 + 1672);
    *&v681 = v681;
    v684 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v682, v683, v681);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v685, v684, @"maxRollAngleInFaceFrame");
  }

  v686 = *(v2 + 1696);
  if (v686 != 1.79769313e308)
  {
    *&v686 = v686;
    v687 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v686);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v688, v687, @"minFaceposeConfidence");
    v691 = *(v2 + 1720);
    if (v691 < 1)
    {
      v693 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v689, v690, 0.0);
    }

    else
    {
      v692 = *(v2 + 1712) / v691;
      *&v692 = v692;
      v693 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v689, v690, v692);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v694, v693, @"avgFaceposeConfidence");
    v695 = *(v2 + 1704);
    *&v695 = v695;
    v698 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v696, v697, v695);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v699, v698, @"maxFaceposeConfidence");
  }

  v700 = *(v2 + 1728);
  if (v700 != 1.79769313e308)
  {
    *&v700 = v700;
    v701 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v700);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v702, v701, @"minHorizontalAngleInCameraFrame");
    v705 = *(v2 + 1752);
    if (v705 < 1)
    {
      v707 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v703, v704, 0.0);
    }

    else
    {
      v706 = *(v2 + 1744) / v705;
      *&v706 = v706;
      v707 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v703, v704, v706);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v708, v707, @"avgHorizontalAngleInCameraFrame");
    v709 = *(v2 + 1736);
    *&v709 = v709;
    v712 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v710, v711, v709);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v713, v712, @"maxHorizontalAngleInCameraFrame");
  }

  v714 = *(v2 + 1760);
  if (v714 != 1.79769313e308)
  {
    *&v714 = v714;
    v715 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v714);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v716, v715, @"minVerticalAngleInCameraFrame");
    v719 = *(v2 + 1784);
    if (v719 < 1)
    {
      v721 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v717, v718, 0.0);
    }

    else
    {
      v720 = *(v2 + 1776) / v719;
      *&v720 = v720;
      v721 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v717, v718, v720);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v722, v721, @"avgVerticalAngleInCameraFrame");
    v723 = *(v2 + 1768);
    *&v723 = v723;
    v726 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v724, v725, v723);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v727, v726, @"maxVerticalAngleInCameraFrame");
  }

  if (*(v2 + 1792) != 1.79769313e308)
  {
    v728 = *(v2 + 1816);
    if (v728 < 1)
    {
      v730 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, 0.0);
    }

    else
    {
      v729 = *(v2 + 1808) / v728;
      *&v729 = v729;
      v730 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v729);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v731, v730, @"avgAngleBetweenStemAndGravity");
  }

  if (*(v2 + 1824) != 1.79769313e308)
  {
    v732 = *(v2 + 1848);
    if (v732 < 1)
    {
      v734 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, 0.0);
    }

    else
    {
      v733 = *(v2 + 1840) / v732;
      *&v733 = v733;
      v734 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v733);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v735, v734, @"avgAngleBetweenHeadRotationAxisAndGravity");
  }

  if (*(v2 + 1856) != 1.79769313e308)
  {
    v736 = *(v2 + 1880);
    if (v736 < 1)
    {
      v738 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, 0.0);
    }

    else
    {
      v737 = *(v2 + 1872) / v736;
      *&v737 = v737;
      v738 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v737);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v739, v738, @"avgAngleBetweenStemAndFaceY");
  }

  if (*(v2 + 1536) != 1.79769313e308)
  {
    v740 = *(v2 + 1560);
    if (v740 < 1)
    {
      v742 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, 0.0);
    }

    else
    {
      v741 = *(v2 + 1552) / v740;
      *&v741 = v741;
      v742 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v741);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v743, v742, @"avgAngleFromDefaultHeadToHeadsetDeg");
  }

  v744 = *(v2 + 1920);
  if (v744 != 1.79769313e308)
  {
    *&v744 = v744;
    v745 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v744);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v746, v745, @"minFwdPredictorErrorDeg");
    v749 = *(v2 + 1944);
    if (v749 < 1)
    {
      v751 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v747, v748, 0.0);
    }

    else
    {
      v750 = *(v2 + 1936) / v749;
      *&v750 = v750;
      v751 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v747, v748, v750);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v8, v752, v751, @"avgFwdPredictorErrorDeg");
    v753 = *(v2 + 1928);
    *&v753 = v753;
    v756 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v754, v755, v753);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v757, v756, @"maxFwdPredictorErrorDeg");
  }

  v758 = *(v2 + 8);
  LODWORD(v744) = *(v2 + 2000);
  v759 = *&v744 / *(a1 + 40);
  *&v759 = v759;
  v761 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v227, v228, v759);
  if (v758 <= 60.0)
  {
    v762 = @"percentageOfSrcSamplesThatAreVeryEarly_shortSession";
  }

  else
  {
    v762 = @"percentageOfSrcSamplesThatAreVeryEarly";
  }

  if (v758 <= 60.0)
  {
    v763 = @"percentageOfSrcSamplesThatAreVeryLate_shortSession";
  }

  else
  {
    v763 = @"percentageOfSrcSamplesThatAreVeryLate";
  }

  if (v758 <= 60.0)
  {
    v764 = @"percentageOfAuxSamplesWithLargeGaps_shortSession";
  }

  else
  {
    v764 = @"percentageOfAuxSamplesWithLargeGaps";
  }

  if (v758 <= 60.0)
  {
    v765 = @"percentageOfAuxSamplesFailedToFindSource_shortSession";
  }

  else
  {
    v765 = @"percentageOfAuxSamplesFailedToFindSource";
  }

  if (v758 <= 60.0)
  {
    v766 = @"percentageOfAuxSamplesIndexUnchanged_shortSession";
  }

  else
  {
    v766 = @"percentageOfAuxSamplesIndexUnchanged";
  }

  if (v758 <= 60.0)
  {
    v767 = @"percentageOfAuxSamplesSourceDataMissing_shortSession";
  }

  else
  {
    v767 = @"percentageOfAuxSamplesSourceDataMissing";
  }

  objc_msgSend_setObject_forKeyedSubscript_(v8, v760, v761, v762);
  LODWORD(v768) = *(v2 + 2004);
  v769 = v768 / *(a1 + 40);
  *&v769 = v769;
  v772 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v770, v771, v769);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v773, v772, v763);
  v774 = *(v2 + 2168) / *(a1 + 48);
  *&v774 = v774;
  v777 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v775, v776, v774);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v778, v777, v764);
  v779 = *(v2 + 2176) / *(a1 + 48);
  *&v779 = v779;
  v782 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v780, v781, v779);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v783, v782, v765);
  v784 = *(v2 + 2184) / *(a1 + 48);
  *&v784 = v784;
  v787 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v785, v786, v784);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v788, v787, v766);
  v789 = *(v2 + 2192) / *(a1 + 48);
  *&v789 = v789;
  v792 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v790, v791, v789);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v793, v792, v767);
  v796 = v4;
  v797 = aPdx;
  for (i = 8; i != 104; i += 16)
  {
    v799 = 0.0;
    if (v4 >= 0.001)
    {
      v799 = *(*(v2 + 2200) + i) / v796;
      *&v799 = v799;
    }

    v800 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v794, v795, v799);
    v801 = *v797++;
    v803 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v802, @"percentSessionJBL%d", v801);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v804, v800, v803);
  }

  v805 = 0.0;
  if (v4 >= 0.001)
  {
    v805 = *(*(v2 + 2200) + 104) / v796;
    *&v805 = v805;
  }

  v806 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v794, v795, v805);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v807, v806, @"percentSessionJBLOverLimit");
  v832 = 0u;
  v833 = 0u;
  v830 = 0u;
  v831 = 0u;
  v808 = v8;
  obj = objc_msgSend_allKeys(v8, v809, v810);
  v812 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v811, &v830, v842, 16);
  if (v812)
  {
    v813 = v812;
    v814 = *v831;
    do
    {
      v815 = 0;
      do
      {
        if (*v831 != v814)
        {
          objc_enumerationMutation(obj);
        }

        v816 = *(*(&v830 + 1) + 8 * v815);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E28DE0);
        }

        v817 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          v819 = objc_msgSend_objectForKey_(v808, v818, v816);
          *buf = 138478083;
          v839 = v816;
          v840 = 2113;
          v841 = v819;
          _os_log_impl(&dword_19B41C000, v817, OS_LOG_TYPE_DEFAULT, "[CMMediaSessionAnalyticsTracker] %{private}@ -> %{private}@", buf, 0x16u);
        }

        v820 = sub_19B420058();
        if (*(v820 + 160) > 1 || *(v820 + 164) > 1 || *(v820 + 168) > 1 || *(v820 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E28DE0);
          }

          v823 = off_1EAFE29A0;
          v824 = objc_msgSend_objectForKey_(v808, v822, v816);
          v834 = 138478083;
          v835 = v816;
          v836 = 2113;
          v837 = v824;
          LODWORD(v828) = 22;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v823, 0, "[CMMediaSessionAnalyticsTracker] %{private}@ -> %{private}@", &v834, v828);
          v826 = v825;
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMMediaSessionAnalyticsTracker::send()_block_invoke", "CoreLocation: %s\n", v825);
          if (v826 != buf)
          {
            free(v826);
          }
        }

        ++v815;
      }

      while (v813 != v815);
      v813 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v821, &v830, v842, 16);
    }

    while (v813);
  }

  return v808;
}

os_log_t sub_19B5CD93C()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

void sub_19B5CDA58(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v16, v15, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_19B5CDA88(uint64_t a1, CLConnectionMessage **a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v3, v6, v4, v5, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7)) != 0 && (v10 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage")) != 0)
  {
    v13 = objc_msgSend_intValue(v10, v11, v12);
  }

  else
  {
    v13 = 103;
  }

  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
  }

  v14 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v21 = v13;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "SedentaryAlarm,Error response,%{public}d", buf, 8u);
  }

  v15 = sub_19B420058();
  if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
    }

    v19[0] = 67240192;
    v19[1] = v13;
    LODWORD(v18) = 8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 17, "SedentaryAlarm,Error response,%{public}d", v19, v18);
    v17 = v16;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSedentaryTimer_Internal init]_block_invoke", "CoreLocation: %s\n", v16);
    if (v17 != buf)
    {
      free(v17);
    }
  }
}

void sub_19B5CDF54(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
  }

  v1 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm _isActive dispatch sync.", buf, 2u);
  }

  v2 = sub_19B420058();
  if (*(v2 + 160) > 1 || *(v2 + 164) > 1 || *(v2 + 168) > 1 || *(v2 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
    }

    LOWORD(v5) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "[SedentaryTimerTriage] SedentaryAlarm _isActive dispatch sync.", &v5, 2);
    v4 = v3;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSedentaryTimer_Internal _isActive]_block_invoke", "CoreLocation: %s\n", v3);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  sub_19B5D1194();
}

void sub_19B5CE348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B5CEC4C(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
  }

  v2 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm _handleStartStopTimerResponse calling handler.", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
    }

    v10[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "[SedentaryTimerTriage] SedentaryAlarm _handleStartStopTimerResponse calling handler.", v10, 2);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSedentaryTimer_Internal _handleStartStopTimerResponse:withHandler:]_block_invoke", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = *(a1 + 32);
  v8 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v4, @"CMErrorDomain", 103, 0);
  return (*(v7 + 16))(v7, v8);
}

uint64_t sub_19B5CEE34(uint64_t a1, const char *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_intValue(*(a1 + 32), a2, a3) != 100)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
    }

    v6 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_msgSend_intValue(*(a1 + 32), v7, v8);
      *buf = 67240192;
      v25 = v9;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_ERROR, "SedentaryAlarm,Error start / stop response,%{public}d", buf, 8u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
      }

      v13 = off_1ED71C838;
      v14 = objc_msgSend_intValue(*(a1 + 32), v11, v12);
      v23[0] = 67240192;
      v23[1] = v14;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v13, 16, "SedentaryAlarm,Error start / stop response,%{public}d", v23, 8);
      v16 = v15;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSedentaryTimer_Internal _handleStartStopTimerResponse:withHandler:]_block_invoke", "CoreLocation: %s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  v17 = MEMORY[0x1E696ABC0];
  v18 = *(a1 + 40);
  v19 = objc_msgSend_integerValue(*(a1 + 32), v4, v5);
  v21 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v20, @"CMErrorDomain", v19, 0);
  return (*(v18 + 16))(v18, v21);
}

uint64_t sub_19B5CF058(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t sub_19B5CF834(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
  }

  v2 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm _handleAlarmDataResponse nil response calling handler.", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
    }

    v10[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "[SedentaryTimerTriage] SedentaryAlarm _handleAlarmDataResponse nil response calling handler.", v10, 2);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSedentaryTimer_Internal _handleAlarmDataResponse:withHandler:]_block_invoke", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = *(a1 + 32);
  v8 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v4, @"CMErrorDomain", 103, 0);
  return (*(v7 + 16))(v7, 0, v8);
}

uint64_t sub_19B5CFA20(uint64_t a1, const char *a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_intValue(*(a1 + 32), a2, a3) != 100)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
    }

    v4 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_msgSend_intValue(*(a1 + 32), v5, v6);
      *buf = 67240192;
      v30 = v7;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_ERROR, "SedentaryAlarm,Error query response,%{public}d", buf, 8u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
      }

      v11 = off_1ED71C838;
      v12 = objc_msgSend_intValue(*(a1 + 32), v9, v10);
      v28[0] = 67240192;
      v28[1] = v12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v11, 16, "SedentaryAlarm,Error query response,%{public}d", v28, 8);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSedentaryTimer_Internal _handleAlarmDataResponse:withHandler:]_block_invoke", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
  }

  v15 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm _handleAlarmDataResponse error dispatching.", buf, 2u);
  }

  v16 = sub_19B420058();
  if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
    }

    LOWORD(v28[0]) = 0;
    LODWORD(v27) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "[SedentaryTimerTriage] SedentaryAlarm _handleAlarmDataResponse error dispatching.", v28, v27);
    v20 = v19;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSedentaryTimer_Internal _handleAlarmDataResponse:withHandler:]_block_invoke", "CoreLocation: %s\n", v19);
    if (v20 != buf)
    {
      free(v20);
    }
  }

  v21 = MEMORY[0x1E696ABC0];
  v22 = *(a1 + 40);
  v23 = objc_msgSend_integerValue(*(a1 + 32), v17, v18);
  v25 = objc_msgSend_errorWithDomain_code_userInfo_(v21, v24, @"CMErrorDomain", v23, 0);
  return (*(v22 + 16))(v22, 0, v25);
}

uint64_t sub_19B5CFD8C(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
  }

  v2 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm _handleAlarmDataResponse alarmDataArray dispatching.", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
    }

    v7[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "[SedentaryTimerTriage] SedentaryAlarm _handleAlarmDataResponse alarmDataArray dispatching.", v7, 2);
    v5 = v4;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSedentaryTimer_Internal _handleAlarmDataResponse:withHandler:]_block_invoke", "CoreLocation: %s\n", v4);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_19B5CFF50(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
  }

  v2 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm _handleAlarmDataResponse else dispatching.", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
    }

    v10[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "[SedentaryTimerTriage] SedentaryAlarm _handleAlarmDataResponse else dispatching.", v10, 2);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSedentaryTimer_Internal _handleAlarmDataResponse:withHandler:]_block_invoke", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = *(a1 + 32);
  v8 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v4, @"CMErrorDomain", 103, 0);
  return (*(v7 + 16))(v7, 0, v8);
}

void sub_19B5D036C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5D0390(uint64_t a1, uint64_t *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
  }

  v4 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm _registerForAlarmsWithHandler, setting handler for message.", buf, 2u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
    }

    v13[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "[SedentaryTimerTriage] SedentaryAlarm _registerForAlarmsWithHandler, setting handler for message.", v13, 2);
    v8 = v7;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSedentaryTimer_Internal _registerForAlarmsWithHandler:]_block_invoke", "CoreLocation: %s\n", v7);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  v9 = *(a1 + 32);
  v10 = a2[1];
  v11 = *a2;
  v12 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objc_msgSend__handleAlarmDataResponse_withHandler_(v9, v6, &v11, *(a1 + 40));
  if (v12)
  {
    sub_19B41FFEC(v12);
  }
}