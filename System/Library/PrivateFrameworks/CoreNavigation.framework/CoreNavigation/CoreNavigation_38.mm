uint64_t sub_1D0DCBCEC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5160))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DCBD9C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE51E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DCBE70(uint64_t a1, char **a2, uint64_t a3)
{
  v3 = *a2;
  v4 = sub_1D0DCC07C(v11, a3);
  if ((*(*v3 + 88))(v3, v4))
  {
    v5 = raven::RavenConvergenceEstimator::HandleEvent((v3 + 2968), v11);
    if (v5 && cnprint::CNPrinter::GetLogLevel(v5) <= 1)
    {
      v16 = 12;
      v15 = 1;
      v14[0] = (*(v11[0] + 16))(v11);
      v14[1] = v6;
      (*(v11[0] + 24))(v12, v11);
      if (v13 >= 0)
      {
        v7 = v12;
      }

      else
      {
        v7 = v12[0];
      }

      cnprint::CNLogFormatter::FormatWarning(v3 + 240, v14, "Failed to handle event - %s.", v7);
      if (*(v3 + 263) >= 0)
      {
        v8 = (v3 + 240);
      }

      else
      {
        v8 = *(v3 + 240);
      }

      cnprint::CNPrinter::Print(&v16, &v15, "%s", v8);
      if (v13 < 0)
      {
        operator delete(v12[0]);
      }
    }
  }

  else
  {
    LOWORD(v12[0]) = 12;
    LOBYTE(v14[0]) = 2;
    v9 = cnprint::CNLogFormatter::FormatGeneral((v3 + 240), "Warning,RavenConvergenceEstimatorActiveObject is not configured");
    if (*(v3 + 263) >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(v12, v14, "%s", v10);
  }
}

void sub_1D0DCC014(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DCC030(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5260))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1D0DCC07C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v4 = *(a2 + 24);
  }

  else
  {
    LOWORD(v22.__vftable) = 3;
    LOBYTE(v20) = 5;
    cnprint::CNPrinter::Print(&v22, &v20, "Attempted to access type of uninitialized GenericEvent.");
    v4 = MEMORY[0x1E69E54A8];
  }

  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = (*(*v5 + 16))(v5);
    }

    else
    {
      v6 = MEMORY[0x1E69E54A8];
    }

    v9 = (*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v9 != (off_1F4CEE898 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v9, (off_1F4CEE898 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v22.__vftable = 0;
        std::bad_cast::bad_cast(&v22);
        v22.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C(&v22);
      }
    }

    v10 = *(a2 + 16);
    *a1 = &unk_1F4CEE870;
    *(a1 + 8) = *(v10 + 16);
    v11 = *(v10 + 64);
    v12 = *(v10 + 80);
    v13 = *(v10 + 48);
    *(a1 + 24) = *(v10 + 32);
    *(a1 + 72) = v12;
    *(a1 + 56) = v11;
    *(a1 + 40) = v13;
    v14 = *(v10 + 128);
    v15 = *(v10 + 144);
    v16 = *(v10 + 112);
    *(a1 + 88) = *(v10 + 96);
    *(a1 + 136) = v15;
    *(a1 + 120) = v14;
    *(a1 + 104) = v16;
    result = *(v10 + 192);
    v17 = *(v10 + 208);
    v18 = *(v10 + 176);
    *(a1 + 152) = *(v10 + 160);
    *(a1 + 200) = v17;
    *(a1 + 184) = result;
    *(a1 + 168) = v18;
  }

  else
  {
    v20 = 3;
    v19 = 5;
    if (*(a2 + 8) == 1)
    {
      v7 = *(a2 + 24);
    }

    else
    {
      LOWORD(v22.__vftable) = 3;
      v21 = 5;
      cnprint::CNPrinter::Print(&v22, &v21, "Attempted to access type of uninitialized GenericEvent.");
      v7 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v20, &v19, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEE898 & 0x7FFFFFFFFFFFFFFFLL));
    result.n128_u64[0] = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEE870;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 96) = 0x7FF8000000000000;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 192) = 0x7FF8000000000000;
  }

  return result;
}

void sub_1D0DCC3A8(uint64_t a1, char **a2, uint64_t a3)
{
  v3 = *a2;
  v4 = sub_1D0DCC5B4(v11, a3);
  if ((*(*v3 + 88))(v3, v4))
  {
    v5 = raven::RavenConvergenceEstimator::HandleEvent((v3 + 2968), v11);
    if (v5 && cnprint::CNPrinter::GetLogLevel(v5) <= 1)
    {
      v16 = 12;
      v15 = 1;
      v14[0] = (*(v11[0] + 16))(v11);
      v14[1] = v6;
      (*(v11[0] + 24))(v12, v11);
      if (v13 >= 0)
      {
        v7 = v12;
      }

      else
      {
        v7 = v12[0];
      }

      cnprint::CNLogFormatter::FormatWarning(v3 + 240, v14, "Failed to handle event - %s.", v7);
      if (*(v3 + 263) >= 0)
      {
        v8 = (v3 + 240);
      }

      else
      {
        v8 = *(v3 + 240);
      }

      cnprint::CNPrinter::Print(&v16, &v15, "%s", v8);
      if (v13 < 0)
      {
        operator delete(v12[0]);
      }
    }
  }

  else
  {
    LOWORD(v12[0]) = 12;
    LOBYTE(v14[0]) = 2;
    v9 = cnprint::CNLogFormatter::FormatGeneral((v3 + 240), "Warning,RavenConvergenceEstimatorActiveObject is not configured");
    if (*(v3 + 263) >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(v12, v14, "%s", v10);
  }
}

void sub_1D0DCC54C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DCC568(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE52E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1D0DCC5B4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v4 = *(a2 + 24);
  }

  else
  {
    LOWORD(v23.__vftable) = 3;
    LOBYTE(v21) = 5;
    cnprint::CNPrinter::Print(&v23, &v21, "Attempted to access type of uninitialized GenericEvent.");
    v4 = MEMORY[0x1E69E54A8];
  }

  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = (*(*v5 + 16))(v5);
    }

    else
    {
      v6 = MEMORY[0x1E69E54A8];
    }

    v9 = (*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v9 != (off_1F4CEEB80 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v9, (off_1F4CEEB80 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v23.__vftable = 0;
        std::bad_cast::bad_cast(&v23);
        v23.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C(&v23);
      }
    }

    v10 = *(a2 + 16);
    *a1 = &unk_1F4CEE090;
    v11 = v10[3];
    v12 = v10[4];
    v13 = v10[2];
    *(a1 + 8) = v10[1];
    *(a1 + 56) = v12;
    *(a1 + 40) = v11;
    *(a1 + 24) = v13;
    v14 = v10[7];
    v15 = v10[8];
    v16 = v10[6];
    *(a1 + 72) = v10[5];
    *(a1 + 120) = v15;
    *(a1 + 104) = v14;
    *(a1 + 88) = v16;
    v17 = v10[11];
    v18 = v10[12];
    v19 = v10[10];
    *(a1 + 136) = v10[9];
    *(a1 + 184) = v18;
    *(a1 + 168) = v17;
    *(a1 + 152) = v19;
    sub_1D0BBA094(a1 + 200, (v10 + 13));
    *&result = sub_1D0BE0DE8(a1 + 264, (v10 + 17)).n128_u64[0];
  }

  else
  {
    v21 = 3;
    v20 = 5;
    if (*(a2 + 8) == 1)
    {
      v7 = *(a2 + 24);
    }

    else
    {
      LOWORD(v23.__vftable) = 3;
      v22 = 5;
      cnprint::CNPrinter::Print(&v23, &v22, "Attempted to access type of uninitialized GenericEvent.");
      v7 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v21, &v20, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEEB80 & 0x7FFFFFFFFFFFFFFFLL));
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 264) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEE090;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 96) = 0x7FF8000000000000;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 192) = 0x7FF8000000000000;
    *(a1 + 224) = 0x100000003;
    *(a1 + 200) = &unk_1F4CDEB28;
    *(a1 + 208) = xmmword_1D0E7DCC0;
    *(a1 + 232) = a1 + 240;
    *(a1 + 288) = 0x300000003;
    *(a1 + 264) = &unk_1F4CD5DD0;
    *&result = 0x300000003;
    *(a1 + 272) = xmmword_1D0E76C10;
    *(a1 + 296) = a1 + 304;
  }

  return result;
}

uint64_t sub_1D0DCC990(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5360))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DCCA64(uint64_t a1, char **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0BCA45C(v10, a3);
  if ((*(*v3 + 88))(v3))
  {
    v4 = raven::RavenConvergenceEstimator::HandleEvent((v3 + 2968), v10);
    if (v4 && cnprint::CNPrinter::GetLogLevel(v4) <= 1)
    {
      v15 = 12;
      v14 = 1;
      v13[0] = (*(v10[0] + 16))(v10);
      v13[1] = v5;
      (*(v10[0] + 24))(v11, v10);
      if (v12 >= 0)
      {
        v6 = v11;
      }

      else
      {
        v6 = v11[0];
      }

      cnprint::CNLogFormatter::FormatWarning(v3 + 240, v13, "Failed to handle event - %s.", v6);
      if (*(v3 + 263) >= 0)
      {
        v7 = (v3 + 240);
      }

      else
      {
        v7 = *(v3 + 240);
      }

      cnprint::CNPrinter::Print(&v15, &v14, "%s", v7);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }
  }

  else
  {
    LOWORD(v11[0]) = 12;
    LOBYTE(v13[0]) = 2;
    v8 = cnprint::CNLogFormatter::FormatGeneral((v3 + 240), "Warning,RavenConvergenceEstimatorActiveObject is not configured");
    if (*(v3 + 263) >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(v11, v13, "%s", v9);
  }
}

void sub_1D0DCCC08(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DCCC24(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE53E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DCCCD4(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5460))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DCCDA8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = sub_1D0DC8EF0(v13, a3);
  v5 = (*(*v3 + 88))(v3, v4);
  if (v5)
  {
    if (!cnprint::CNPrinter::GetLogLevel(v5))
    {
      LOWORD(v18[0]) = 12;
      LOBYTE(v20) = 0;
      v15 = (*(v13[0] + 16))(v13);
      v16 = v6;
      cnprint::CNLogFormatter::FormatGeneral(v3 + 240, &v15, "RavenSystemEvent received");
      if (*(v3 + 263) >= 0)
      {
        v7 = (v3 + 240);
      }

      else
      {
        v7 = *(v3 + 240);
      }

      cnprint::CNPrinter::Print(v18, &v20, "%s", v7);
    }

    if (!v14)
    {
      LOWORD(v18[0]) = 12;
      LOBYTE(v20) = 4;
      v15 = (*(v13[0] + 16))(v13);
      v16 = v8;
      cnprint::CNLogFormatter::FormatGeneral(v3 + 240, &v15, "Resetting estimator based on system event");
      if (*(v3 + 263) >= 0)
      {
        v9 = (v3 + 240);
      }

      else
      {
        v9 = *(v3 + 240);
      }

      cnprint::CNPrinter::Print(v18, &v20, "%s", v9);
      (*(*v3 + 40))(v3);
    }
  }

  else
  {
    v20 = 12;
    v19 = 2;
    v18[0] = (*(v13[0] + 16))(v13);
    v18[1] = v10;
    (*(v13[0] + 24))(&v15, v13);
    if (v17 >= 0)
    {
      v11 = &v15;
    }

    else
    {
      v11 = v15;
    }

    cnprint::CNLogFormatter::FormatWarning(v3 + 240, v18, "RavenConvergenceEstimatorActiveObject not configured, cannot handle event, %s", v11);
    if (*(v3 + 263) >= 0)
    {
      v12 = (v3 + 240);
    }

    else
    {
      v12 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(&v20, &v19, "%s", v12);
    if (v17 < 0)
    {
      operator delete(v15);
    }
  }
}

void sub_1D0DCD01C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DCD038(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE54E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DCD0E8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5560))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DCD198(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5628))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DCD2FC(uint64_t a1, char **a2, uint64_t a3)
{
  v3 = *a2;
  v4 = sub_1D0DCD508(v11, a3);
  if ((*(*v3 + 88))(v3, v4))
  {
    v5 = raven::RavenConvergenceEstimator::HandleEvent((v3 + 2968), v11);
    if (v5 && cnprint::CNPrinter::GetLogLevel(v5) <= 1)
    {
      v16 = 12;
      v15 = 1;
      v14[0] = (*(v11[0] + 16))(v11);
      v14[1] = v6;
      (*(v11[0] + 24))(v12, v11);
      if (v13 >= 0)
      {
        v7 = v12;
      }

      else
      {
        v7 = v12[0];
      }

      cnprint::CNLogFormatter::FormatWarning(v3 + 240, v14, "Failed to handle event - %s.", v7);
      if (*(v3 + 263) >= 0)
      {
        v8 = (v3 + 240);
      }

      else
      {
        v8 = *(v3 + 240);
      }

      cnprint::CNPrinter::Print(&v16, &v15, "%s", v8);
      if (v13 < 0)
      {
        operator delete(v12[0]);
      }
    }
  }

  else
  {
    LOWORD(v12[0]) = 12;
    LOBYTE(v14[0]) = 2;
    v9 = cnprint::CNLogFormatter::FormatGeneral((v3 + 240), "Warning,RavenConvergenceEstimatorActiveObject is not configured");
    if (*(v3 + 263) >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(v12, v14, "%s", v10);
  }
}

void sub_1D0DCD4A0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DCD4BC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE56A8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

int64x2_t sub_1D0DCD508(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v4 = *(a2 + 24);
  }

  else
  {
    LOWORD(v18.__vftable) = 3;
    LOBYTE(v16) = 5;
    cnprint::CNPrinter::Print(&v18, &v16, "Attempted to access type of uninitialized GenericEvent.");
    v4 = MEMORY[0x1E69E54A8];
  }

  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = (*(*v5 + 16))(v5);
    }

    else
    {
      v6 = MEMORY[0x1E69E54A8];
    }

    v9 = (*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v9 != (off_1F4CEEC28 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v9, (off_1F4CEEC28 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v18.__vftable = 0;
        std::bad_cast::bad_cast(&v18);
        v18.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C(&v18);
      }
    }

    v10 = *(a2 + 16);
    *a1 = &unk_1F4CEF718;
    v12 = *(v10 + 32);
    v11 = *(v10 + 48);
    *(a1 + 8) = *(v10 + 16);
    *(a1 + 24) = v12;
    *(a1 + 40) = v11;
    result = *(v10 + 96);
    v13 = *(v10 + 112);
    v14 = *(v10 + 80);
    *(a1 + 56) = *(v10 + 64);
    *(a1 + 104) = v13;
    *(a1 + 88) = result;
    *(a1 + 72) = v14;
  }

  else
  {
    v16 = 3;
    v15 = 5;
    if (*(a2 + 8) == 1)
    {
      v7 = *(a2 + 24);
    }

    else
    {
      LOWORD(v18.__vftable) = 3;
      v17 = 5;
      cnprint::CNPrinter::Print(&v18, &v17, "Attempted to access type of uninitialized GenericEvent.");
      v7 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v16, &v15, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEEC28 & 0x7FFFFFFFFFFFFFFFLL));
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEF718;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 88) = 0;
    result = vdupq_n_s64(0x7FF8000000000000uLL);
    *(a1 + 96) = result;
    *(a1 + 112) = 0x7FF8000000000000;
  }

  return result;
}

void sub_1D0DCD7D8(uint64_t a1, char **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0C050F4(v10, a3);
  if ((*(*v3 + 88))(v3))
  {
    v4 = raven::RavenConvergenceEstimator::HandleEvent((v3 + 2968), v10);
    if (v4 && cnprint::CNPrinter::GetLogLevel(v4) <= 1)
    {
      v15 = 12;
      v14 = 1;
      v13[0] = (*(v10[0] + 16))(v10);
      v13[1] = v5;
      (*(v10[0] + 24))(v11, v10);
      if (v12 >= 0)
      {
        v6 = v11;
      }

      else
      {
        v6 = v11[0];
      }

      cnprint::CNLogFormatter::FormatWarning(v3 + 240, v13, "Failed to handle event - %s.", v6);
      if (*(v3 + 263) >= 0)
      {
        v7 = (v3 + 240);
      }

      else
      {
        v7 = *(v3 + 240);
      }

      cnprint::CNPrinter::Print(&v15, &v14, "%s", v7);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }
  }

  else
  {
    LOWORD(v11[0]) = 12;
    LOBYTE(v13[0]) = 2;
    v8 = cnprint::CNLogFormatter::FormatGeneral((v3 + 240), "Warning,RavenConvergenceEstimatorActiveObject is not configured");
    if (*(v3 + 263) >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(v11, v13, "%s", v9);
  }
}

void sub_1D0DCD97C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DCD998(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5728))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DCDA48(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE57F0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D0DCDA94(double *a1, double *a2)
{
  v2 = a1[1];
  if (v2 >= *(a2 - 1))
  {
    v6 = a1 + 2;
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v7 = v6[1];
      v6 += 2;
    }

    while (v2 >= v7);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = (v3 + 2);
      v5 = v3[3];
      v3 += 2;
    }

    while (v2 >= v5);
  }

  if (v4 >= a2)
  {
    v8 = a2;
  }

  else
  {
    do
    {
      v8 = a2 - 2;
      v9 = *(a2 - 1);
      a2 -= 2;
    }

    while (v2 < v9);
  }

  v10 = *a1;
  while (v4 < v8)
  {
    v11 = *v4;
    *v4 = *v8;
    *v8 = v11;
    v12 = *(v4 + 8);
    *(v4 + 8) = v8[1];
    *(v8 + 1) = v12;
    do
    {
      v13 = *(v4 + 24);
      v4 += 16;
    }

    while (v2 >= v13);
    do
    {
      v14 = *(v8 - 1);
      v8 -= 2;
    }

    while (v2 < v14);
  }

  if ((v4 - 16) != a1)
  {
    *a1 = *(v4 - 16);
    a1[1] = *(v4 - 8);
  }

  *(v4 - 16) = v10;
  *(v4 - 8) = v2;
  return v4;
}

BOOL sub_1D0DCDB7C(uint64_t a1, uint64_t *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v17 = (a1 + 24);
      v18 = *(a1 + 24);
      v19 = (a1 + 8);
      v20 = *(a1 + 8);
      v21 = *(a2 - 1);
      if (v18 >= v20)
      {
        if (v21 >= v18)
        {
          return 1;
        }

        v29 = *(a1 + 16);
        *(a1 + 16) = *(a2 - 2);
        *(a2 - 2) = v29;
        v30 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v30;
        if (*(a1 + 24) >= *(a1 + 8))
        {
          return 1;
        }

        v31 = *a1;
        *a1 = *(a1 + 16);
        *(a1 + 16) = v31;
      }

      else
      {
        v22 = *a1;
        if (v21 >= v18)
        {
          *a1 = *(a1 + 16);
          *(a1 + 8) = v18;
          *(a1 + 16) = v22;
          *(a1 + 24) = v20;
          if (*(a2 - 1) >= v20)
          {
            return 1;
          }

          *(a1 + 16) = *(a2 - 2);
          *(a2 - 2) = v22;
          v19 = (a1 + 24);
        }

        else
        {
          *a1 = *(a2 - 2);
          *(a2 - 2) = v22;
        }

        v17 = a2 - 1;
      }

      v35 = *v19;
      *v19 = *v17;
      *v17 = v35;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        sub_1D0BD1E18(a1, (a1 + 16), (a1 + 32), (a1 + 48));
        if (*(a2 - 1) < *(a1 + 56))
        {
          v7 = *(a1 + 48);
          *(a1 + 48) = *(a2 - 2);
          *(a2 - 2) = v7;
          v8 = *(a1 + 56);
          *(a1 + 56) = *(a2 - 1);
          *(a2 - 1) = v8;
          v9 = *(a1 + 56);
          v10 = *(a1 + 40);
          if (v9 < v10)
          {
            v11 = *(a1 + 48);
            v12 = *(a1 + 24);
            v13 = *(a1 + 32);
            *(a1 + 32) = v11;
            *(a1 + 40) = v9;
            *(a1 + 48) = v13;
            *(a1 + 56) = v10;
            if (v9 < v12)
            {
              v14 = *(a1 + 8);
              v15 = *(a1 + 16);
              *(a1 + 16) = v11;
              *(a1 + 24) = v9;
              *(a1 + 32) = v15;
              *(a1 + 40) = v12;
              if (v9 < v14)
              {
                v16 = *a1;
                *a1 = v11;
                *(a1 + 8) = v9;
                *(a1 + 16) = v16;
                *(a1 + 24) = v14;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    sub_1D0BD1E18(a1, (a1 + 16), (a1 + 32), a2 - 2);
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 1) < *(a1 + 8))
    {
      v5 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v5;
      v6 = *(a1 + 8);
      *(a1 + 8) = *(a2 - 1);
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_17:
  v23 = *(a1 + 24);
  v24 = (a1 + 8);
  v25 = *(a1 + 8);
  v26 = (a1 + 40);
  v27 = *(a1 + 40);
  if (v23 < v25)
  {
    v28 = *a1;
    if (v27 >= v23)
    {
      *a1 = *(a1 + 16);
      *(a1 + 8) = v23;
      *(a1 + 16) = v28;
      *(a1 + 24) = v25;
      if (v27 >= v25)
      {
        goto LABEL_34;
      }

      *(a1 + 16) = *(a1 + 32);
      *(a1 + 32) = v28;
      v24 = (a1 + 24);
    }

    else
    {
      *a1 = *(a1 + 32);
      *(a1 + 32) = v28;
    }

    goto LABEL_33;
  }

  if (v27 < v23)
  {
    v32 = *(a1 + 16);
    v33 = *(a1 + 32);
    *(a1 + 16) = v33;
    *(a1 + 24) = v27;
    *(a1 + 32) = v32;
    *(a1 + 40) = v23;
    if (v27 < v25)
    {
      v34 = *a1;
      *a1 = v33;
      *(a1 + 16) = v34;
      v26 = (a1 + 24);
LABEL_33:
      *v24 = v27;
      *v26 = v25;
    }
  }

LABEL_34:
  v36 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v37 = 0;
  v38 = 0;
  v39 = (a1 + 32);
  while (1)
  {
    v40 = v36[1];
    if (v40 < v39[1])
    {
      v41 = *v36;
      v42 = v37;
      while (1)
      {
        v43 = a1 + v42;
        v44 = *(a1 + v42 + 40);
        *(v43 + 48) = *(a1 + v42 + 32);
        *(v43 + 56) = v44;
        if (v42 == -32)
        {
          break;
        }

        v42 -= 16;
        if (v40 >= *(v43 + 24))
        {
          v45 = a1 + v42 + 48;
          goto LABEL_42;
        }
      }

      v45 = a1;
LABEL_42:
      *v45 = v41;
      *(v45 + 8) = v40;
      if (++v38 == 8)
      {
        return v36 + 2 == a2;
      }
    }

    v39 = v36;
    v37 += 16;
    v36 += 2;
    if (v36 == a2)
    {
      return 1;
    }
  }
}

double *sub_1D0DCDEB8(double *a1, double *a2, double *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        sub_1D0DCE074(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (v12[1] < a1[1])
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          v14 = *(v12 + 1);
          v12[1] = a1[1];
          *(a1 + 1) = v14;
          sub_1D0DCE074(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v15 = 0;
        v17 = *a1;
        v16 = *(a1 + 1);
        v18 = a1;
        do
        {
          v19 = &v18[2 * v15];
          v20 = v19 + 2;
          v21 = (2 * v15) | 1;
          v15 = 2 * v15 + 2;
          if (v15 >= v8)
          {
            v15 = v21;
          }

          else
          {
            v22 = v19[3];
            v23 = v19[5];
            v24 = v19 + 4;
            if (v22 >= v23)
            {
              v15 = v21;
            }

            else
            {
              v20 = v24;
            }
          }

          *v18 = *v20;
          v18[1] = v20[1];
          v18 = v20;
        }

        while (v15 <= ((v8 - 2) >> 1));
        if (v20 == v6 - 2)
        {
          *v20 = v17;
          *(v20 + 1) = v16;
        }

        else
        {
          *v20 = *(v6 - 2);
          v20[1] = *(v6 - 1);
          *(v6 - 2) = v17;
          *(v6 - 1) = v16;
          sub_1D0DCE13C(a1, (v20 + 2), a4, ((v20 + 2) - a1) >> 4);
        }

        v6 -= 2;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_1D0DCE074(uint64_t result, uint64_t a2, uint64_t a3, double *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3 && v8[1] < v8[3])
      {
        v8 += 2;
        v7 = v9;
      }

      v10 = a4[1];
      if (v8[1] >= v10)
      {
        v11 = *a4;
        do
        {
          v12 = a4;
          a4 = v8;
          *v12 = *v8;
          v12[1] = v8[1];
          if (v5 < v7)
          {
            break;
          }

          v13 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 16 * v7);
          v14 = v13 + 2;
          if (v14 < a3 && v8[1] < v8[3])
          {
            v8 += 2;
            v7 = v14;
          }
        }

        while (v8[1] >= v10);
        *a4 = v11;
        a4[1] = v10;
      }
    }
  }

  return result;
}

uint64_t sub_1D0DCE13C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 16 * v4);
    v6 = *(a2 - 8);
    if (v5[1] < v6)
    {
      v8 = *(a2 - 16);
      v7 = (a2 - 16);
      v9 = v8;
      do
      {
        v10 = v7;
        v7 = v5;
        *v10 = *v5;
        v10[1] = v5[1];
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 16 * v4);
      }

      while (v5[1] < v6);
      *v7 = v9;
      v7[1] = v6;
    }
  }

  return result;
}

uint64_t sub_1D0DCE2EC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  if (*(a3 + 8) == 1)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    LOWORD(v16.__vftable) = 3;
    LOBYTE(v24) = 5;
    cnprint::CNPrinter::Print(&v16, &v24, "Attempted to access type of uninitialized GenericEvent.");
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
    if (v9 != (off_1F4CEF1C0 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v9, (off_1F4CEF1C0 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v16.__vftable = 0;
      std::bad_cast::bad_cast(&v16);
      v16.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C(&v16);
    }

    v10 = *(a3 + 16);
    v16.__vftable = &unk_1F4CEF198;
    v11 = v10[2];
    v17 = v10[1];
    v18 = v11;
    v12 = v10[5];
    v13 = v10[6];
    v14 = v10[4];
    v19 = v10[3];
    v22 = v13;
    v21 = v12;
    v20 = v14;
  }

  else
  {
    v24 = 3;
    v23 = 5;
    if (*(a3 + 8) == 1)
    {
      v8 = *(a3 + 24);
    }

    else
    {
      LOWORD(v16.__vftable) = 3;
      v25 = 5;
      cnprint::CNPrinter::Print(&v16, &v25, "Attempted to access type of uninitialized GenericEvent.");
      v8 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v24, &v23, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v8 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEF1C0 & 0x7FFFFFFFFFFFFFFFLL));
    v18 = 0uLL;
    v17 = 0uLL;
    v16.__vftable = &unk_1F4CEF198;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    *&v22 = 0;
    *(&v22 + 1) = 0x7FF8000000000000;
  }

  return (*(*v4 + 40))(v4);
}

uint64_t sub_1D0DCE554(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5870))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D0DCE628(uint64_t a1, raven::RavenDeltaVIOEstimateActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DCE6B4(v5, a3);
  return raven::RavenDeltaVIOEstimateActiveObject::HandleEvent(v3, v5);
}

uint64_t sub_1D0DCE668(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE58F0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1D0DCE6B4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v4 = *(a2 + 24);
  }

  else
  {
    LOWORD(v18.__vftable) = 3;
    LOBYTE(v16) = 5;
    cnprint::CNPrinter::Print(&v18, &v16, "Attempted to access type of uninitialized GenericEvent.");
    v4 = MEMORY[0x1E69E54A8];
  }

  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = (*(*v5 + 16))(v5);
    }

    else
    {
      v6 = MEMORY[0x1E69E54A8];
    }

    v9 = (*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v9 != (off_1F4CEEF68 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v9, (off_1F4CEEF68 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v18.__vftable = 0;
        std::bad_cast::bad_cast(&v18);
        v18.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C(&v18);
      }
    }

    v10 = *(a2 + 16);
    *a1 = &unk_1F4CEEF40;
    v12 = *(v10 + 32);
    v11 = *(v10 + 48);
    *(a1 + 8) = *(v10 + 16);
    *(a1 + 24) = v12;
    *(a1 + 40) = v11;
    v13 = *(v10 + 80);
    result = *(v10 + 96);
    v14 = *(v10 + 112);
    *(a1 + 56) = *(v10 + 64);
    *(a1 + 104) = v14;
    *(a1 + 88) = result;
    *(a1 + 72) = v13;
  }

  else
  {
    v16 = 3;
    v15 = 5;
    if (*(a2 + 8) == 1)
    {
      v7 = *(a2 + 24);
    }

    else
    {
      LOWORD(v18.__vftable) = 3;
      v17 = 5;
      cnprint::CNPrinter::Print(&v18, &v17, "Attempted to access type of uninitialized GenericEvent.");
      v7 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v16, &v15, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEEF68 & 0x7FFFFFFFFFFFFFFFLL));
    result.n128_u64[0] = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEEF40;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0x7FF8000000000000;
    *(a1 + 104) = 0;
  }

  return result;
}

uint64_t sub_1D0DCE960(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5970))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DCEA34(uint64_t a1, raven::RavenDeltaVIOEstimateActiveObject **a2, uint64_t a3)
{
  v4 = *a2;
  if (*(a3 + 8) == 1)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    LOWORD(v54.__vftable) = 3;
    LOBYTE(v52) = 5;
    cnprint::CNPrinter::Print(&v54, &v52, "Attempted to access type of uninitialized GenericEvent.");
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

    v11 = (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v11 != (off_1F4CEF3A0 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v11, (off_1F4CEF3A0 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v54.__vftable = 0;
      v12 = std::bad_cast::bad_cast(&v54);
      v54.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C(v12);
    }

    sub_1D0DCECF8(v13, *(a3 + 16) + 8);
  }

  else
  {
    v52 = 3;
    v51 = 5;
    if (*(a3 + 8) == 1)
    {
      v8 = *(a3 + 24);
    }

    else
    {
      LOWORD(v54.__vftable) = 3;
      v53 = 5;
      cnprint::CNPrinter::Print(&v54, &v53, "Attempted to access type of uninitialized GenericEvent.");
      v8 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v52, &v51, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v8 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEF3A0 & 0x7FFFFFFFFFFFFFFFLL));
    bzero(v14, 0x490uLL);
    v13[1] = 0;
    v13[2] = 0;
    v13[0] = &unk_1F4CEE120;
    v14[0] = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v24 = 0;
    v25 = 0;
    v23 = 0x7FF8000000000000;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0x7FF8000000000000;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0x7FF8000000000000;
    cntransformation::CNRigidTransformation::CNRigidTransformation(&v48);
    cntransformation::CNRigidTransformation::CNRigidTransformation(v49);
    v49[220] = 0;
    v50 = 0;
  }

  raven::RavenDeltaVIOEstimateActiveObject::HandleEvent(v4, v13, v9, v10);
  raven::VIOEstimateEvent::~VIOEstimateEvent(v13);
}

uint64_t sub_1D0DCECAC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE59F0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DCECF8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CEE120;
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
  v8 = *(a2 + 120);
  v9 = *(a2 + 136);
  v10 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v10;
  *(a1 + 136) = v9;
  *(a1 + 120) = v8;
  v11 = *(a2 + 184);
  v12 = *(a2 + 200);
  v13 = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 216) = v13;
  *(a1 + 200) = v12;
  *(a1 + 184) = v11;
  v14 = *(a2 + 248);
  v15 = *(a2 + 264);
  v16 = *(a2 + 280);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 264) = v15;
  *(a1 + 280) = v16;
  *(a1 + 248) = v14;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  if (a1 != a2)
  {
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 320) = *(a2 + 320);
  }

  sub_1D0BBA094(a1 + 336, a2 + 336);
  sub_1D0BE0DE8(a1 + 400, a2 + 400);
  sub_1D0BE0DE8(a1 + 512, a2 + 512);
  sub_1D0BE0DE8(a1 + 624, a2 + 624);
  *(a1 + 736) = *(a2 + 736);
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  if (a1 != a2)
  {
    *(a1 + 744) = *(a2 + 744);
    *(a1 + 752) = *(a2 + 752);
    *(a1 + 768) = *(a2 + 768);
  }

  sub_1D0BBA094(a1 + 776, a2 + 776);
  sub_1D0BE0DE8(a1 + 840, a2 + 840);
  sub_1D0BE0DE8(a1 + 952, a2 + 952);
  sub_1D0BE0DE8(a1 + 1064, a2 + 1064);
  *(a1 + 1176) = *(a2 + 1176);
  v17 = *(a2 + 1184);
  *(a1 + 1186) = *(a2 + 1186);
  *(a1 + 1184) = v17;
  return a1;
}

void sub_1D0DCEEDC(_Unwind_Exception *a1)
{
  *v7 = &unk_1F4CD5E28;
  *v6 = &unk_1F4CD5E28;
  *v5 = &unk_1F4CD5E28;
  *v4 = &unk_1F4CD5E28;
  *v3 = &unk_1F4CD5E28;
  *v2 = &unk_1F4CD5E28;
  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(a1);
}

void sub_1D0DCF044(uint64_t a1, raven::RavenDeltaVIOEstimateActiveObject **a2, uint64_t a3)
{
  v4 = *a2;
  if (*(a3 + 8) == 1)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    LOWORD(v40.__vftable) = 3;
    LOBYTE(v38) = 5;
    cnprint::CNPrinter::Print(&v40, &v38, "Attempted to access type of uninitialized GenericEvent.");
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
    if (v9 != (off_1F4CEF3B8 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v9, (off_1F4CEF3B8 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v40.__vftable = 0;
      v10 = std::bad_cast::bad_cast(&v40);
      v40.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C(v10);
    }

    sub_1D0DCF2EC(v11, *(a3 + 16) + 8);
  }

  else
  {
    v38 = 3;
    v37 = 5;
    if (*(a3 + 8) == 1)
    {
      v8 = *(a3 + 24);
    }

    else
    {
      LOWORD(v40.__vftable) = 3;
      v39 = 5;
      cnprint::CNPrinter::Print(&v40, &v39, "Attempted to access type of uninitialized GenericEvent.");
      v8 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v38, &v37, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v8 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEF3B8 & 0x7FFFFFFFFFFFFFFFLL));
    bzero(v12, 0x438uLL);
    v11[1] = 0;
    v11[2] = 0;
    v11[0] = &unk_1F4CEE150;
    v12[0] = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v22 = 0;
    v23 = 0;
    v21 = 0x7FF8000000000000;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0x7FF8000000000000;
    cntransformation::CNRigidTransformation::CNRigidTransformation(&v34);
    cntransformation::CNRigidTransformation::CNRigidTransformation(v35);
    v35[440] = 0;
    v36 = vdupq_n_s64(0x7FF8000000000000uLL);
  }

  raven::RavenDeltaVIOEstimateActiveObject::HandleEvent(v4, v11);
  raven::VLLocalizationEvent::~VLLocalizationEvent(v11);
}

uint64_t sub_1D0DCF2A0(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5A70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DCF2EC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CEE150;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v6;
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  v9 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v9;
  *(a1 + 88) = v8;
  *(a1 + 72) = v7;
  v10 = *(a2 + 136);
  v11 = *(a2 + 152);
  v12 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v12;
  *(a1 + 152) = v11;
  *(a1 + 136) = v10;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  if (a1 != a2)
  {
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
  }

  sub_1D0BBA094(a1 + 232, a2 + 232);
  sub_1D0BE0DE8(a1 + 296, a2 + 296);
  sub_1D0BE0DE8(a1 + 408, a2 + 408);
  sub_1D0BE0DE8(a1 + 520, a2 + 520);
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  if (a1 != a2)
  {
    *(a1 + 640) = *(a2 + 640);
    *(a1 + 656) = *(a2 + 656);
  }

  sub_1D0BBA094(a1 + 672, a2 + 672);
  sub_1D0BE0DE8(a1 + 736, a2 + 736);
  sub_1D0BE0DE8(a1 + 848, a2 + 848);
  sub_1D0BE0DE8(a1 + 960, a2 + 960);
  *(a1 + 1072) = *(a2 + 1072);
  v13 = *(a2 + 1080);
  *(a1 + 1096) = *(a2 + 1096);
  *(a1 + 1080) = v13;
  return a1;
}

void sub_1D0DCF498(_Unwind_Exception *a1)
{
  *v7 = &unk_1F4CD5E28;
  *v6 = &unk_1F4CD5E28;
  *v5 = &unk_1F4CD5E28;
  *v4 = &unk_1F4CD5E28;
  *v3 = &unk_1F4CD5E28;
  *v2 = &unk_1F4CD5E28;
  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DCF5DC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5AF0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DCF68C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5B70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DCF760(uint64_t a1, raven::RavenDeviceAttitudeActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DCF7EC(v4, a3);
  raven::RavenDeviceAttitudeActiveObject::HandleEvent(v3, v4);
}

uint64_t sub_1D0DCF7A0(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5BF0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1D0DCF7EC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v4 = *(a2 + 24);
  }

  else
  {
    LOWORD(v24.__vftable) = 3;
    LOBYTE(v22) = 5;
    cnprint::CNPrinter::Print(&v24, &v22, "Attempted to access type of uninitialized GenericEvent.");
    v4 = MEMORY[0x1E69E54A8];
  }

  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = (*(*v5 + 16))(v5);
    }

    else
    {
      v6 = MEMORY[0x1E69E54A8];
    }

    v10 = (*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v10 != (off_1F4CEEF80 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v10, (off_1F4CEEF80 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v24.__vftable = 0;
      std::bad_cast::bad_cast(&v24);
      v24.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C(&v24);
    }

    v11 = *(a2 + 16);
    *a1 = &unk_1F4CEF6B8;
    v12 = *(v11 + 48);
    v13 = *(v11 + 64);
    v14 = *(v11 + 80);
    v15 = *(v11 + 96);
    v16 = *(v11 + 16);
    v17 = *(v11 + 32);
    *(a1 + 104) = 0u;
    *(a1 + 8) = v16;
    *(a1 + 24) = v17;
    *(a1 + 72) = v14;
    *(a1 + 88) = v15;
    *(a1 + 40) = v12;
    *(a1 + 56) = v13;
    *(a1 + 120) = 0u;
    if (a1 + 104 != v11 + 112)
    {
      *(a1 + 104) = *(v11 + 112);
      *(a1 + 120) = *(v11 + 128);
    }

    v18 = *(v11 + 144);
    *(a1 + 152) = *(v11 + 160);
    *(a1 + 136) = v18;
    result = *(v11 + 176);
    v19 = *(v11 + 192);
    v20 = *(v11 + 208);
    *(a1 + 216) = *(v11 + 224);
    *(a1 + 200) = v20;
    *(a1 + 184) = v19;
    *(a1 + 168) = result;
  }

  else
  {
    v22 = 3;
    v21 = 5;
    if (*(a2 + 8) == 1)
    {
      v7 = *(a2 + 24);
    }

    else
    {
      LOWORD(v24.__vftable) = 3;
      v23 = 5;
      cnprint::CNPrinter::Print(&v24, &v23, "Attempted to access type of uninitialized GenericEvent.");
      v7 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v22, &v21, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEEF80 & 0x7FFFFFFFFFFFFFFFLL));
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 216) = 0;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEF6B8;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0x7FF8000000000000;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    result.n128_u64[0] = 0x3FF0000000000000;
    v9 = vdupq_n_s64(0x7FF8000000000000uLL);
    *(a1 + 128) = xmmword_1D0E87BC0;
    *(a1 + 144) = v9;
    *(a1 + 160) = v9;
    *(a1 + 176) = v9;
    *(a1 + 192) = v9;
    *(a1 + 208) = 0x7FF8000000000000;
    *(a1 + 216) = 1;
  }

  return result;
}

uint64_t sub_1D0DCFB1C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5C70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DCFBCC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5CF0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DCFC7C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5D70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DCFD2C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5DF0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DCFDDC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5E70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1D0DCFEB0(uint64_t a1, raven::RavenDeviceAttitudeActiveObject **a2, uint64_t a3)
{
  v4 = *a2;
  if (*(a3 + 8) == 1)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    LOWORD(v18.__vftable) = 3;
    LOBYTE(v29) = 5;
    cnprint::CNPrinter::Print(&v18, &v29, "Attempted to access type of uninitialized GenericEvent.");
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
    if (v9 != (off_1F4CEF388 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v9, (off_1F4CEF388 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v18.__vftable = 0;
      std::bad_cast::bad_cast(&v18);
      v18.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C(&v18);
    }

    v10 = *(a3 + 16);
    v18.__vftable = &unk_1F4CEF360;
    v19 = *(v10 + 16);
    v11 = *(v10 + 64);
    v12 = *(v10 + 80);
    v13 = *(v10 + 48);
    v20 = *(v10 + 32);
    v21 = v13;
    v22 = v11;
    v23 = v12;
    v14 = *(v10 + 96);
    v15 = *(v10 + 112);
    v16 = *(v10 + 128);
    v27 = *(v10 + 144);
    v25 = v15;
    v26 = v16;
    v24 = v14;
  }

  else
  {
    v29 = 3;
    v28 = 5;
    if (*(a3 + 8) == 1)
    {
      v8 = *(a3 + 24);
    }

    else
    {
      LOWORD(v18.__vftable) = 3;
      v30 = 5;
      cnprint::CNPrinter::Print(&v18, &v30, "Attempted to access type of uninitialized GenericEvent.");
      v8 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v29, &v28, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v8 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEF388 & 0x7FFFFFFFFFFFFFFFLL));
    v20 = 0uLL;
    v19 = 0uLL;
    v18.__vftable = &unk_1F4CEF360;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    *&v24 = 0;
    *(&v24 + 1) = 0x7FF8000000000000;
    *&v25 = 0;
    *(&v25 + 1) = 0x7FF8000000000000;
    *&v26 = 0;
    *(&v26 + 1) = 0x7FF8000000000000;
    v27 = -COERCE_DOUBLE(0x8000000080000000);
  }

  *&result = raven::RavenDeviceAttitudeActiveObject::HandleEvent(v4, &v18).n128_u64[0];
  return result;
}

uint64_t sub_1D0DD0118(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5EF0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD01C8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5F70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD0278(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6080))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD0440(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6100))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD048C(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 200)
  {
    result = *(v3 - 16);
    *(v3 - 16) = 0;
    if (result)
    {
      result = MEMORY[0x1D387ECA0](result, 0x1000C4041240993);
    }
  }

  return result;
}

uint64_t sub_1D0DD0558(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6180))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD0608(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6200))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD06B8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6280))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD0768(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6300))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD083C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  if (*(a3 + 8) == 1)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    LOWORD(v37[0].__vftable) = 3;
    LOBYTE(v53[0]) = 5;
    cnprint::CNPrinter::Print(v37, v53, "Attempted to access type of uninitialized GenericEvent.");
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
    if (v9 != (off_1F4CEF220 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v9, (off_1F4CEF220 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v37[0].__vftable = 0;
      std::bad_cast::bad_cast(v37);
      v37[0].__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C(v37);
    }

    v10 = *(a3 + 16);
    v23 = &unk_1F4CEE0C0;
    v11 = *(v10 + 16);
    v12 = *(v10 + 32);
    v26 = *(v10 + 48);
    v25 = v12;
    v24 = v11;
    v13 = *(v10 + 64);
    v14 = *(v10 + 80);
    v15 = *(v10 + 96);
    v30 = *(v10 + 112);
    v29 = v15;
    v28 = v14;
    v27 = v13;
    v31[1] = 0;
    v32 = 0;
    v31[0] = 0;
    sub_1D0DD0F0C(v31, *(v10 + 128), *(v10 + 136), 0x80FE03F80FE03F81 * ((*(v10 + 136) - *(v10 + 128)) >> 6));
  }

  else
  {
    LOWORD(v53[0]) = 3;
    LOBYTE(__p[0]) = 5;
    if (*(a3 + 8) == 1)
    {
      v8 = *(a3 + 24);
    }

    else
    {
      LOWORD(v37[0].__vftable) = 3;
      LOBYTE(v71[0]) = 5;
      cnprint::CNPrinter::Print(v37, v71, "Attempted to access type of uninitialized GenericEvent.");
      v8 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(v53, __p, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v8 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEF220 & 0x7FFFFFFFFFFFFFFFLL));
    v25 = 0uLL;
    v24 = 0uLL;
    v23 = &unk_1F4CEE0C0;
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    *&v29 = 0;
    *(&v29 + 1) = 0x7FF8000000000000;
    v32 = 0;
    *v31 = 0u;
    v30 = 0u;
  }

  if (*(v4 + 224) == 1)
  {
    *&v37[0].__vftable = *(v4 + 112);
    raven::GnssMeasurementPreprocessor::UpdateCurrentFrameworkTime((v4 + 232), v37);
    if (raven::GnssMeasurementPreprocessor::HandleEvent((v4 + 232), &v23))
    {
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      v78 = 0;
      v79 = 0;
      memset(v80, 0, sizeof(v80));
      v81 = 0;
      v71[1] = 0;
      v71[2] = 0;
      v71[0] = &unk_1F4CEF598;
      v72 = 0;
      if (raven::GnssMeasurementPreprocessor::GetPreprocessedGnssMeasurements((v4 + 232), v71))
      {
        sub_1D0C4499C(v4, v71);
      }

      v53[1] = 0;
      v53[2] = 0;
      v53[0] = &unk_1F4CEE9A8;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0x7FF8000000000000;
      v64 = 0;
      v65 = 0u;
      v66 = 0u;
      v67 = 0;
      v70 = 0;
      v68 = 0;
      v69 = 0;
      if (raven::GnssMeasurementPreprocessor::GetGpsUTCParametersEvent((v4 + 232), v53))
      {
        sub_1D0B9B7B4(v4, v53);
      }

      v37[1].__vftable = 0;
      v38 = 0.0;
      v37[0].__vftable = &unk_1F4CEE030;
      LOBYTE(v39) = 0;
      *(&v39 + 1) = 0;
      *&v40 = 0;
      BYTE8(v40) = 0;
      v41 = 0uLL;
      LOBYTE(v42) = 0;
      *(&v42 + 1) = 0;
      v43 = 0;
      v44 = 0x7FF8000000000000;
      v45 = 0;
      v46 = 0;
      v47 = &unk_1F4CD5A50;
      v48 = 0u;
      v49 = 0u;
      v50 = xmmword_1D0E76640;
      v51 = xmmword_1D0E76650;
      v52 = 0;
      if (raven::GnssMeasurementPreprocessor::GetKlobucharParametersEvent((v4 + 232), v37))
      {
        v17 = *(v4 + 112);
        v16 = *(v4 + 120);
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v37[1].__vftable = v17;
        v38 = v16;
        v43 = 0;
        v44 = 0x7FF8000000000000;
        v36 = 12;
        v35 = 2;
        sub_1D0B751F4(__p, "KlobucharParametersEvent");
        if (v34 >= 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }

        cnprint::CNPrinter::Print(&v36, &v35, "t,%.3lf,RavenGnssPreprocessorActiveObject, Raising event - %s.", v17 + v16, v18);
        if (v34 < 0)
        {
          operator delete(__p[0]);
        }

        sub_1D0C47D0C(v4, v37);
      }

      v71[0] = &unk_1F4CEF598;
      v37[0].__vftable = &v80[4];
      sub_1D0BBBD80(v37);
    }

    else
    {
      LOWORD(v53[0]) = 12;
      LOBYTE(v71[0]) = 2;
      v19 = v23[2](&v23);
      v21 = v20;
      (v23[3])(v37, &v23);
      if (v38 >= 0.0)
      {
        v22 = v37;
      }

      else
      {
        v22 = v37[0].__vftable;
      }

      cnprint::CNPrinter::Print(v53, v71, "t,%.3lf,RavenGnssPreprocessorActiveObject Failed to handle event - %s.", v21 + v19, v22);
      if (SHIBYTE(v38) < 0)
      {
        operator delete(v37[0].__vftable);
      }
    }
  }

  v23 = &unk_1F4CEE0C0;
  if (v31[0])
  {
    v31[1] = v31[0];
    operator delete(v31[0]);
  }
}

void sub_1D0DD0E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, std::exception a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  *(v42 - 168) = v41;
  a36.__vftable = (v42 - 72);
  sub_1D0BBBD80(&a36);
  if (a26)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0DD0EC0(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6380))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1D0DD0F0C(void *result, char *a2, char *a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x7F01FC07F01FDLL)
    {
      sub_1D0DD0FDC(result, a4);
    }

    sub_1D0C5663C();
  }

  return result;
}

void sub_1D0DD0FC0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0DD0FDC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x7F01FC07F01FDLL)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

uint64_t sub_1D0DD109C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6400))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD114C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6480))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD1220(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = sub_1D0DC8EF0(v5, a3);
  if (!v5[26])
  {
    (*(*v3 + 40))(v3, v4);
  }
}

uint64_t sub_1D0DD1284(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6500))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD1334(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6580))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD13E4(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6600))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD1494(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6680))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD1544(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6700))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD15F4(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6780))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD16C8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DCA268(v4, a3);
  *(v3 + 256) = *(v3 + 112);
  v5[1] = 0;
  v5[2] = 0;
  v5[0] = &unk_1F4CEDF40;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v16 = 0;
  v17 = 0;
  v15 = 0x7FF8000000000000;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0x7FF8000000000000;
  v28 = 0;
  v29 = 0u;
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  if (!raven::AccessoryVehicleSpeedChecker::HandleEvent(*(v3 + 1840), v4, v5))
  {
    sub_1D0DD18A0(&v32, v5);
  }

  raven::AccessoryVehicleSpeedEvent::~AccessoryVehicleSpeedEvent(v5);
  raven::AccessoryVehicleSpeedEvent::~AccessoryVehicleSpeedEvent(v4);
}

void sub_1D0DD1818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, ...)
{
  va_start(va, a41);
  v44 = *(v42 - 56);
  if (v44)
  {
    sub_1D0B7CAB8(v44);
  }

  if (v41)
  {
    sub_1D0B7CAB8(v41);
  }

  raven::AccessoryVehicleSpeedEvent::~AccessoryVehicleSpeedEvent(va);
  raven::AccessoryVehicleSpeedEvent::~AccessoryVehicleSpeedEvent(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DD1854(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6848))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD1A64(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  v3 = *(v1 + 40);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DD1AE8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CE6810;
  *(a1 + 8) = &unk_1F4CEDF40;
  *(a1 + 16) = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  v6 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 56);
  *(a1 + 80) = v6;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  v7 = *(a2 + 88);
  v8 = *(a2 + 104);
  v9 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 120);
  *(a1 + 144) = v9;
  *(a1 + 96) = v7;
  *(a1 + 112) = v8;
  v10 = *(a2 + 152);
  v11 = *(a2 + 168);
  v12 = *(a2 + 184);
  *(a1 + 208) = *(a2 + 200);
  *(a1 + 176) = v11;
  *(a1 + 192) = v12;
  *(a1 + 160) = v10;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  sub_1D0DCA588((a1 + 216), *(a2 + 208), *(a2 + 216), (*(a2 + 216) - *(a2 + 208)) >> 3);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  sub_1D0DCA588((a1 + 240), *(a2 + 232), *(a2 + 240), (*(a2 + 240) - *(a2 + 232)) >> 3);
  *(a1 + 264) = *(a2 + 256);
  return a1;
}

void sub_1D0DD1BF0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 224) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0DD1C38(uint64_t a1)
{
  raven::AccessoryVehicleSpeedEvent::~AccessoryVehicleSpeedEvent((a1 + 8));

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0DD1D60(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE68C8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD1EE4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DCA9F8(v5, a3);
  v3[16] = v3[7];
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = &unk_1F4CEEAB0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0x7FF8000000000000;
  raven::RavenIntegrityEstimator::HandleEvent((v3 + 15), v5, v6);
  if (!v4)
  {
    sub_1D0DD205C(&v17, v6);
  }
}

void sub_1D0DD1FEC(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 56);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  if (v1)
  {
    sub_1D0B7CAB8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DD2010(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6990))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD2278(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  v3 = *(v1 + 40);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DD23F8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6A10))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD24CC(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DCE6B4(v8, a3);
  v3[16] = v3[7];
  if (raven::RavenIntegrityEstimator::HandleEvent((v3 + 15), v8))
  {
    v12 = 12;
    v11 = 2;
    v4 = (*(v8[0] + 16))(v8);
    v6 = v5 + v4;
    (*(v8[0] + 24))(v9, v8);
    if (v10 >= 0)
    {
      v7 = v9;
    }

    else
    {
      v7 = v9[0];
    }

    cnprint::CNPrinter::Print(&v12, &v11, "t,%.3lf,IE failed to handle %s", v6, v7);
    if (v10 < 0)
    {
      operator delete(v9[0]);
    }
  }
}

void sub_1D0DD25D4(_Unwind_Exception *exception_object)
{
  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DD25F0(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6A90))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD26C4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DD282C(v5, a3);
  *(v3 + 256) = *(v3 + 112);
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = &unk_1F4CEDF70;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0x7FF8000000000000;
  v19 = 0;
  v21 = 0;
  v20 = 0;
  v22 = 0;
  v24 = 0;
  v23 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0x7FF8000000000000;
  v29 = 0;
  v31 = 0;
  v30 = 0;
  v32 = 0x3FF0000000000000;
  v35 = 0x400000004;
  v33 = &unk_1F4CDEB70;
  v34 = xmmword_1D0E7DCD0;
  v36 = &v37;
  result = raven::AttitudeChangeChecker::HandleEvent(*(v3 + 1864), v5, v6);
  if (!result)
  {
    sub_1D0DD2B70(v3);
  }

  return result;
}

uint64_t sub_1D0DD27E0(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6B10))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1D0DD282C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v4 = *(a2 + 24);
  }

  else
  {
    LOWORD(v26.__vftable) = 3;
    LOBYTE(v24) = 5;
    cnprint::CNPrinter::Print(&v26, &v24, "Attempted to access type of uninitialized GenericEvent.");
    v4 = MEMORY[0x1E69E54A8];
  }

  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = (*(*v5 + 16))(v5);
    }

    else
    {
      v6 = MEMORY[0x1E69E54A8];
    }

    v9 = (*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v9 != (off_1F4CEEAF0 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v9, (off_1F4CEEAF0 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v26.__vftable = 0;
      std::bad_cast::bad_cast(&v26);
      v26.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C(&v26);
    }

    v10 = *(a2 + 16);
    *a1 = &unk_1F4CEDF70;
    v11 = v10[9];
    v12 = v10[10];
    v13 = v10[11];
    v14 = v10[12];
    v15 = v10[5];
    v16 = v10[6];
    v17 = v10[7];
    v18 = v10[8];
    v19 = v10[1];
    v20 = v10[2];
    v21 = v10[3];
    v22 = v10[4];
    *(a1 + 200) = 0u;
    *(a1 + 40) = v21;
    *(a1 + 56) = v22;
    *(a1 + 8) = v19;
    *(a1 + 24) = v20;
    *(a1 + 104) = v17;
    *(a1 + 120) = v18;
    *(a1 + 72) = v15;
    *(a1 + 88) = v16;
    *(a1 + 168) = v13;
    *(a1 + 184) = v14;
    *(a1 + 136) = v11;
    *(a1 + 152) = v12;
    *(a1 + 216) = 0u;
    if ((a1 + 200) != v10 + 13)
    {
      *(a1 + 200) = v10[13];
      *(a1 + 216) = v10[14];
    }

    *&result = sub_1D0DAA484(a1 + 232, (v10 + 15)).n128_u64[0];
  }

  else
  {
    v24 = 3;
    v23 = 5;
    if (*(a2 + 8) == 1)
    {
      v7 = *(a2 + 24);
    }

    else
    {
      LOWORD(v26.__vftable) = 3;
      v25 = 5;
      cnprint::CNPrinter::Print(&v26, &v25, "Attempted to access type of uninitialized GenericEvent.");
      v7 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v24, &v23, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEEAF0 & 0x7FFFFFFFFFFFFFFFLL));
    *(a1 + 392) = 0;
    *(a1 + 248) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 264) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEDF70;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 96) = 0x7FF8000000000000;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 192) = 0x7FF8000000000000;
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    *(a1 + 224) = 0x3FF0000000000000;
    *(a1 + 256) = 0x400000004;
    *(a1 + 232) = &unk_1F4CDEB70;
    *&result = 0x400000004;
    *(a1 + 240) = xmmword_1D0E7DCD0;
    *(a1 + 264) = a1 + 272;
  }

  return result;
}

void sub_1D0DD2C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  if (a13)
  {
    sub_1D0B7CAB8(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0DD2C94(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4CDF5E0;
  sub_1D0DD2CF0((a1 + 3), a2);
}

void sub_1D0DD2CF0(uint64_t a1, uint64_t *a2)
{
  *a1 = &unk_1F4CD55D8;
  *(a1 + 16) = 0;
  v4 = (a1 + 16);
  *(a1 + 8) = 0;
  v5 = MEMORY[0x1E69E54A8];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v5;
  sub_1D0B751F4((a1 + 48), &unk_1D0ED80C5);
  *(a1 + 8) = 1;
  sub_1D0DD2E84(v4, a2);
}

void sub_1D0DD2E2C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*v2)
  {
    (*(**v2 + 8))(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DD2F64(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CEAED8;
  *(a1 + 8) = &unk_1F4CEDF70;
  v3 = *(a2 + 136);
  v4 = *(a2 + 152);
  v5 = *(a2 + 168);
  v6 = *(a2 + 184);
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  v9 = *(a2 + 104);
  v10 = *(a2 + 120);
  v11 = *(a2 + 8);
  v12 = *(a2 + 24);
  v13 = *(a2 + 40);
  v14 = *(a2 + 56);
  *(a1 + 208) = 0u;
  *(a1 + 48) = v13;
  *(a1 + 64) = v14;
  *(a1 + 16) = v11;
  *(a1 + 32) = v12;
  *(a1 + 112) = v9;
  *(a1 + 128) = v10;
  *(a1 + 80) = v7;
  *(a1 + 96) = v8;
  *(a1 + 176) = v5;
  *(a1 + 192) = v6;
  *(a1 + 144) = v3;
  *(a1 + 160) = v4;
  *(a1 + 224) = 0u;
  if (a1 + 208 != a2 + 200)
  {
    *(a1 + 208) = *(a2 + 200);
    *(a1 + 224) = *(a2 + 216);
  }

  sub_1D0DAA484(a1 + 240, a2 + 232);
  return a1;
}

uint64_t sub_1D0DD3044(uint64_t result)
{
  *(result + 8) = &unk_1F4CEDF70;
  *(result + 240) = &unk_1F4CD5E28;
  return result;
}

void sub_1D0DD3088(uint64_t a1)
{
  *(a1 + 8) = &unk_1F4CEDF70;
  *(a1 + 240) = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0DD31B8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6B90))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD328C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DCF7EC(&v4, a3);
  *(v3 + 256) = *(v3 + 112);
  sub_1D0DD3320(v3);
}

uint64_t sub_1D0DD32D4(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6C10))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD33B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  if (a13)
  {
    sub_1D0B7CAB8(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0DD3444(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4CDF5E0;
  sub_1D0DD34A0((a1 + 3), a2);
}

void sub_1D0DD34A0(uint64_t a1, uint64_t *a2)
{
  *a1 = &unk_1F4CD55D8;
  *(a1 + 16) = 0;
  v4 = (a1 + 16);
  *(a1 + 8) = 0;
  v5 = MEMORY[0x1E69E54A8];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v5;
  sub_1D0B751F4((a1 + 48), &unk_1D0ED80C5);
  *(a1 + 8) = 1;
  sub_1D0DD3634(v4, a2);
}

void sub_1D0DD35DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*v2)
  {
    (*(**v2 + 8))(*v2);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1D0DD3714(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CEAD38;
  *(a1 + 8) = &unk_1F4CEF6B8;
  v2 = *(a2 + 40);
  v3 = *(a2 + 56);
  v4 = *(a2 + 72);
  v5 = *(a2 + 88);
  v6 = *(a2 + 8);
  v7 = *(a2 + 24);
  *(a1 + 112) = 0u;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 80) = v4;
  *(a1 + 96) = v5;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *(a1 + 128) = 0u;
  if (a1 + 112 != a2 + 104)
  {
    *(a1 + 112) = *(a2 + 104);
    *(a1 + 128) = *(a2 + 120);
  }

  v8 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 136);
  *(a1 + 160) = v8;
  result = *(a2 + 168);
  v10 = *(a2 + 184);
  v11 = *(a2 + 200);
  *(a1 + 224) = *(a2 + 216);
  *(a1 + 192) = v10;
  *(a1 + 208) = v11;
  *(a1 + 176) = result;
  return result;
}

void sub_1D0DD38E4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DC9660(&v21, a3);
  *(v3 + 256) = *(v3 + 112);
  v24 = 12;
  v23 = 3;
  v4 = (*(v21 + 16))(&v21);
  v6 = *&v22[14] + v22[13];
  v7 = -1.0;
  if (!LOBYTE(v22[25]))
  {
    v6 = -1.0;
  }

  v8 = *&v22[27] + v22[26];
  if (!LOBYTE(v22[38]))
  {
    v8 = -1.0;
  }

  if (LOBYTE(v22[51]))
  {
    v7 = *&v22[40] + v22[39];
  }

  cnprint::CNPrinter::Print(&v24, &v23, "#rwo,integrity_estimator,event_time,%.6f,activity_type,%d,state,%d,source,%d,start_time,%.6f,applicability_time,%.6f,end_time,%.6f", v5 + v4, LOBYTE(v22[12]), BYTE1(v22[12]), LOBYTE(v22[52]), v6, v8, v7);
  if (*(*(v3 + 232) + 3814))
  {
    if (LOBYTE(v22[52]) == 1)
    {
      v24 = 12;
      v23 = 2;
      v10 = (*(v21 + 16))(&v21);
      cnprint::CNPrinter::Print(&v24, &v23, "t,%.3lf,IntegrityEstimatorAO: Processing MotionStateMediator FitnessSessionEvent, event=%d", v11 + v10, BYTE1(v22[12]));
      if ((v22[12] & 0xFD00) != 0)
      {
        if (*(v3 + 2408))
        {
          memcpy((v3 + 1984), v22, 0x1A1uLL);
        }

        else
        {
          *(v3 + 1976) = &unk_1F4CEF508;
          memcpy((v3 + 1984), v22, 0x1A1uLL);
          *(v3 + 2408) = 1;
        }
      }

      else
      {
        if (*(v3 + 2408))
        {
          *(v3 + 2408) = 0;
        }

        if (*(v3 + 2848) == 1 && (*(v3 + 2521) & 0xFD) != 0)
        {
          if (cnprint::CNPrinter::GetLogLevel(v12) <= 1)
          {
            v24 = 12;
            v23 = 1;
            v19 = (*(v21 + 16))(&v21);
            cnprint::CNPrinter::Print(&v24, &v23, "t,%.3lf,IntegrityEstimatorAO: Local ended but remote still active, blocking local end-event and sending cached remote FitnessSessionEvent", v20 + v19);
          }

          *(v3 + 2424) = *(v3 + 112);
          *(v3 + 2504) = 0;
          *(v3 + 2440) = 0u;
          *(v3 + 2456) = 0u;
          *(v3 + 2472) = 0u;
          *(v3 + 2488) = 0u;
          *(v3 + 2512) = 0x7FF8000000000000;
          if (*(v3 + 2848))
          {
            sub_1D0DD3E14(v3, (v3 + 2416));
          }

          sub_1D0C42F28();
        }
      }

LABEL_34:
      sub_1D0DD3E14(v3, &v21);
    }

    if (*(v3 + 2408) != 1 || (*(v3 + 2081) & 0xFD) == 0)
    {
      if (cnprint::CNPrinter::GetLogLevel(v9) <= 1)
      {
        v24 = 12;
        v23 = 1;
        v17 = (*(v21 + 16))(&v21);
        cnprint::CNPrinter::Print(&v24, &v23, "t,%.3lf,IntegrityEstimatorAO: Passing through remote FitnessSessionEvent (no active local), event=%d", v18 + v17, BYTE1(v22[12]));
      }

      sub_1D0DD3E14(v3, &v21);
    }

    if (cnprint::CNPrinter::GetLogLevel(v9) <= 1)
    {
      v24 = 12;
      v23 = 1;
      v15 = (*(v21 + 16))(&v21);
      cnprint::CNPrinter::Print(&v24, &v23, "t,%.3lf,IntegrityEstimatorAO: Caching remote FitnessSessionEvent while local active, event=%d", v16 + v15, BYTE1(v22[12]));
    }

    if (*(v3 + 2848) == 1)
    {
      memcpy((v3 + 2424), v22, 0x1A1uLL);
    }

    else
    {
      *(v3 + 2416) = &unk_1F4CEF508;
      memcpy((v3 + 2424), v22, 0x1A1uLL);
      *(v3 + 2848) = 1;
    }
  }

  else
  {
    if (LOBYTE(v22[52]) != 1)
    {
      goto LABEL_34;
    }

    if (cnprint::CNPrinter::GetLogLevel(v9) <= 1)
    {
      v24 = 12;
      v23 = 1;
      v13 = (*(v21 + 16))(&v21);
      cnprint::CNPrinter::Print(&v24, &v23, "t,%.3lf,IntegrityEstimatorAO: Blocking MotionStateMediator-originated FitnessSessionEvent on Watch platform", v14 + v13);
    }
  }
}

uint64_t sub_1D0DD3DC8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6CD8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD3EA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1D0B7CAB8(a10);
  }

  if (v10)
  {
    sub_1D0B7CAB8(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0DD40D0(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  v3 = *(v1 + 40);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DD426C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DCB9E8(v5, a3);
  *(v3 + 256) = *(v3 + 112);
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = &unk_1F4CEEB40;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0x7FF8000000000000;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = vdupq_n_s64(0x7FF8000000000000uLL);
  v29 = v28;
  v30 = v28;
  v31 = v28;
  v32 = v28;
  v33 = 0;
  result = raven::MapVectorChecker::HandleEvent(*(v3 + 1880), v5, v6);
  if (!result)
  {
    sub_1D0DD4390(v3, v6);
  }

  return result;
}

uint64_t sub_1D0DD4344(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6D58))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD4424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  if (a13)
  {
    sub_1D0B7CAB8(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0DD44B4(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4CDF5E0;
  sub_1D0DD4510((a1 + 3), a2);
}

void sub_1D0DD4510(uint64_t a1, uint64_t *a2)
{
  *a1 = &unk_1F4CD55D8;
  *(a1 + 16) = 0;
  v4 = (a1 + 16);
  *(a1 + 8) = 0;
  v5 = MEMORY[0x1E69E54A8];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v5;
  sub_1D0B751F4((a1 + 48), &unk_1D0ED80C5);
  *(a1 + 8) = 1;
  sub_1D0DD46A4(v4, a2);
}

void sub_1D0DD464C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*v2)
  {
    (*(**v2 + 8))(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DD4880(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6E20))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD49D0(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6EA0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD4B44(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DD4BD8(v4, a3);
  *(v3 + 256) = *(v3 + 112);
  sub_1D0DD4E28(v3);
}

uint64_t sub_1D0DD4B8C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6F20))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1D0DD4BD8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v4 = *(a2 + 24);
  }

  else
  {
    LOWORD(v19.__vftable) = 3;
    LOBYTE(v17) = 5;
    cnprint::CNPrinter::Print(&v19, &v17, "Attempted to access type of uninitialized GenericEvent.");
    v4 = MEMORY[0x1E69E54A8];
  }

  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = (*(*v5 + 16))(v5);
    }

    else
    {
      v6 = MEMORY[0x1E69E54A8];
    }

    v9 = (*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v9 != (off_1F4CEF118 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v9, (off_1F4CEF118 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v19.__vftable = 0;
        std::bad_cast::bad_cast(&v19);
        v19.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C(&v19);
      }
    }

    v10 = *(a2 + 16);
    *a1 = &unk_1F4CEF0F0;
    v11 = *(v10 + 48);
    v12 = *(v10 + 64);
    v13 = *(v10 + 32);
    *(a1 + 8) = *(v10 + 16);
    *(a1 + 56) = v12;
    *(a1 + 40) = v11;
    *(a1 + 24) = v13;
    result = *(v10 + 112);
    v14 = *(v10 + 128);
    v15 = *(v10 + 96);
    *(a1 + 72) = *(v10 + 80);
    *(a1 + 120) = v14;
    *(a1 + 104) = result;
    *(a1 + 88) = v15;
  }

  else
  {
    v17 = 3;
    v16 = 5;
    if (*(a2 + 8) == 1)
    {
      v7 = *(a2 + 24);
    }

    else
    {
      LOWORD(v19.__vftable) = 3;
      v18 = 5;
      cnprint::CNPrinter::Print(&v19, &v18, "Attempted to access type of uninitialized GenericEvent.");
      v7 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v17, &v16, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEF118 & 0x7FFFFFFFFFFFFFFFLL));
    result.n128_u64[0] = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEF0F0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0x7FF8000000000000;
  }

  return result;
}

void sub_1D0DD4EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  if (a13)
  {
    sub_1D0B7CAB8(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0DD4F4C(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4CDF5E0;
  sub_1D0DD4FA8((a1 + 3), a2);
}

void sub_1D0DD4FA8(uint64_t a1, uint64_t *a2)
{
  *a1 = &unk_1F4CD55D8;
  *(a1 + 16) = 0;
  v4 = (a1 + 16);
  *(a1 + 8) = 0;
  v5 = MEMORY[0x1E69E54A8];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v5;
  sub_1D0B751F4((a1 + 48), &unk_1D0ED80C5);
  *(a1 + 8) = 1;
  sub_1D0DD513C(v4, a2);
}

void sub_1D0DD50E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*v2)
  {
    (*(**v2 + 8))(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0DD535C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DCC07C(v4, a3);
  *(v3 + 256) = *(v3 + 112);
  v5[1] = 0;
  v5[2] = 0;
  v5[0] = &unk_1F4CEE870;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v16 = 0;
  v17 = 0;
  v15 = 0x7FF8000000000000;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0x7FF8000000000000;
  if (!raven::OdometerChecker::HandleEvent(*(v3 + 1904), v4, v5))
  {
    operator new();
  }
}

void sub_1D0DD5680(_Unwind_Exception *a1)
{
  v4 = *(v2 - 64);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  sub_1D0B7CAB8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DD5700(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6FE8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD5880(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7068))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD5960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  if (a13)
  {
    sub_1D0B7CAB8(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DD5A9C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DCC5B4(v5, a3);
  *(v3 + 256) = *(v3 + 112);
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = &unk_1F4CEE090;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0x7FF8000000000000;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v24 = 0;
  v23 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0x7FF8000000000000;
  v31 = 0x100000003;
  v30 = xmmword_1D0E7DCC0;
  v29 = &unk_1F4CDEB28;
  v32 = v33;
  v35 = 0x300000003;
  v34 = xmmword_1D0E76C10;
  v33[3] = &unk_1F4CD5DD0;
  v36 = &v37;
  result = raven::PositionChangeChecker::HandleEvent(*(v3 + 1912), v5, v6);
  if (!result)
  {
    sub_1D0DD5C34(v3);
  }

  return result;
}

uint64_t sub_1D0DD5BE8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE70E8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD5CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  if (a13)
  {
    sub_1D0B7CAB8(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0DD5D58(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4CDF5E0;
  sub_1D0DD5DB4((a1 + 3), a2);
}

void sub_1D0DD5DB4(uint64_t a1, uint64_t *a2)
{
  *a1 = &unk_1F4CD55D8;
  *(a1 + 16) = 0;
  v4 = (a1 + 16);
  *(a1 + 8) = 0;
  v5 = MEMORY[0x1E69E54A8];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v5;
  sub_1D0B751F4((a1 + 48), &unk_1D0ED80C5);
  *(a1 + 8) = 1;
  sub_1D0DD5F48(v4, a2);
}

void sub_1D0DD5EF0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*v2)
  {
    (*(**v2 + 8))(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DD6028(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CEAE90;
  *(a1 + 8) = &unk_1F4CEE090;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 40);
  *(a1 + 64) = v6;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  v9 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 104);
  *(a1 + 128) = v9;
  *(a1 + 80) = v7;
  *(a1 + 96) = v8;
  v10 = *(a2 + 136);
  v11 = *(a2 + 152);
  v12 = *(a2 + 184);
  *(a1 + 176) = *(a2 + 168);
  *(a1 + 192) = v12;
  *(a1 + 144) = v10;
  *(a1 + 160) = v11;
  sub_1D0BBA094(a1 + 208, a2 + 200);
  sub_1D0BE0DE8(a1 + 272, a2 + 264);
  return a1;
}

void *sub_1D0DD6118(void *result)
{
  result[1] = &unk_1F4CEE090;
  result[34] = &unk_1F4CD5E28;
  result[26] = &unk_1F4CD5E28;
  return result;
}

void sub_1D0DD617C(void *a1)
{
  a1[1] = &unk_1F4CEE090;
  a1[34] = &unk_1F4CD5E28;
  a1[26] = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0DD62CC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7168))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD63A0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DD6540(v5, a3);
  v3[16] = v3[7];
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = &unk_1F4CEF7D8;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0x7FF8000000000000;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = vdupq_n_s64(0x7FF8000000000000uLL);
  v29 = v28;
  v30 = 0;
  raven::RavenIntegrityEstimator::HandleEvent((v3 + 15), v5, v6, v28);
  if (!v4)
  {
    sub_1D0DD67F4(&v31, v6);
  }
}

void sub_1D0DD64D0(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 56);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  if (v1)
  {
    sub_1D0B7CAB8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DD64F4(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7230))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

int64x2_t sub_1D0DD6540(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v4 = *(a2 + 24);
  }

  else
  {
    LOWORD(v23.__vftable) = 3;
    LOBYTE(v21) = 5;
    cnprint::CNPrinter::Print(&v23, &v21, "Attempted to access type of uninitialized GenericEvent.");
    v4 = MEMORY[0x1E69E54A8];
  }

  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = (*(*v5 + 16))(v5);
    }

    else
    {
      v6 = MEMORY[0x1E69E54A8];
    }

    v9 = (*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v9 != (off_1F4CEEA30 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v9, (off_1F4CEEA30 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v23.__vftable = 0;
        std::bad_cast::bad_cast(&v23);
        v23.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C(&v23);
      }
    }

    v10 = *(a2 + 16);
    *a1 = &unk_1F4CEF7D8;
    v11 = *(v10 + 32);
    *(a1 + 8) = *(v10 + 16);
    *(a1 + 24) = v11;
    v12 = *(v10 + 80);
    v13 = *(v10 + 96);
    v14 = *(v10 + 64);
    *(a1 + 40) = *(v10 + 48);
    *(a1 + 88) = v13;
    *(a1 + 72) = v12;
    *(a1 + 56) = v14;
    v15 = *(v10 + 144);
    v16 = *(v10 + 160);
    v17 = *(v10 + 128);
    *(a1 + 104) = *(v10 + 112);
    *(a1 + 152) = v16;
    *(a1 + 136) = v15;
    *(a1 + 120) = v17;
    v18 = *(v10 + 192);
    result = *(v10 + 208);
    v19 = *(v10 + 220);
    *(a1 + 168) = *(v10 + 176);
    *(a1 + 212) = v19;
    *(a1 + 200) = result;
    *(a1 + 184) = v18;
  }

  else
  {
    v21 = 3;
    v20 = 5;
    if (*(a2 + 8) == 1)
    {
      v7 = *(a2 + 24);
    }

    else
    {
      LOWORD(v23.__vftable) = 3;
      v22 = 5;
      cnprint::CNPrinter::Print(&v23, &v22, "Attempted to access type of uninitialized GenericEvent.");
      v7 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v21, &v20, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEEA30 & 0x7FFFFFFFFFFFFFFFLL));
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEF7D8;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 96) = 0x7FF8000000000000;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    result = vdupq_n_s64(0x7FF8000000000000uLL);
    *(a1 + 192) = result;
    *(a1 + 208) = result;
  }

  return result;
}

void sub_1D0DD6A3C(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  v3 = *(v1 + 40);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_1D0DD6C00(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  if (*(a3 + 8) == 1)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    LOWORD(v36.__vftable) = 3;
    LOBYTE(v65) = 5;
    cnprint::CNPrinter::Print(&v36, &v65, "Attempted to access type of uninitialized GenericEvent.");
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
    if (v9 != (off_1F4CEEC70 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v9, (off_1F4CEEC70 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v36.__vftable = 0;
      std::bad_cast::bad_cast(&v36);
      v36.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C(&v36);
    }

    v10 = *(a3 + 16);
    v22 = &unk_1F4CEEC48;
    v12 = v10[2];
    v11 = v10[3];
    v23 = v10[1];
    v24 = v12;
    v25 = v11;
    v13 = v10[6];
    v14 = v10[7];
    v15 = v10[5];
    v26 = v10[4];
    v27 = v15;
    v28 = v13;
    v29 = v14;
    v16 = v10[10];
    v17 = v10[11];
    v18 = v10[9];
    v30 = v10[8];
    v33 = v17;
    v32 = v16;
    v31 = v18;
    v20 = v10[13];
    v19 = v10[14];
    v21 = *(v10 + 233);
    *v34 = v10[12];
    *&v34[41] = v21;
    *&v34[32] = v19;
    *&v34[16] = v20;
  }

  else
  {
    LOWORD(v65) = 3;
    v35 = 5;
    if (*(a3 + 8) == 1)
    {
      v8 = *(a3 + 24);
    }

    else
    {
      LOWORD(v36.__vftable) = 3;
      LOBYTE(v64) = 5;
      cnprint::CNPrinter::Print(&v36, &v64, "Attempted to access type of uninitialized GenericEvent.");
      v8 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v65, &v35, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v8 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEEC70 & 0x7FFFFFFFFFFFFFFFLL));
    v24 = 0uLL;
    v27 = 0uLL;
    v30 = 0uLL;
    v31 = 0u;
    v33 = 0uLL;
    *&v34[48] = 0u;
    v23 = 0uLL;
    v22 = &unk_1F4CEEC48;
    v25 = 0uLL;
    v26 = 0uLL;
    *&v28 = 0;
    v29 = 0uLL;
    *(&v28 + 1) = 0x7FF8000000000000;
    BYTE8(v31) = 0;
    *&v31 = 0;
    v32 = 0uLL;
    *v34 = 0;
    *&v34[8] = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v34[24] = *&v34[8];
    *&v34[40] = *&v34[8];
  }

  *(v4 + 256) = *(v4 + 112);
  v37 = 0;
  v38 = 0;
  v36.__vftable = &unk_1F4CEEC48;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v49 = 0;
  v50 = 0;
  v48 = 0x7FF8000000000000;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = vdupq_n_s64(0x7FF8000000000000uLL);
  v61 = v60;
  v62 = v60;
  v63 = 0;
  if (!raven::TunnelEndPointAssistanceChecker::HandleEvent(*(v4 + 1968), &v22, &v36))
  {
    sub_1D0DD7040(&v65, &v36);
  }
}

uint64_t sub_1D0DD6FF4(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE72F8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD728C(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  v3 = *(v1 + 40);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DD742C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7378))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD74DC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7440))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD7668(uint64_t a1, _OWORD **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DC8EF0(v4, a3);
  v3[16] = v3[7];
  if (!v4[26])
  {
    (*(*v3 + 40))(v3);
  }
}

uint64_t sub_1D0DD76D4(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE74C0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD77A8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DC9C98(v4, a3);
  *(v3 + 256) = *(v3 + 112);
  v5[1] = 0;
  v5[2] = 0;
  v5[0] = &unk_1F4CEEBE8;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0x7FF8000000000000;
  v16 = 0;
  v17 = vdupq_n_s64(0x7FF8000000000000uLL);
  v18 = 0x7FF8000000000000;
  v19 = 0;
  v20 = 0x7FF8000000000000;
  v21 = 0xFFFFFFFFLL;
  if (!raven::StepCountChecker::HandleEvent(*(v3 + 1936), v4, v5))
  {
    sub_1D0DD7940(&v22, v5);
  }
}

void sub_1D0DD78D0(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 56);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  if (v1)
  {
    sub_1D0B7CAB8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DD78F4(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7588))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD7B70(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  v3 = *(v1 + 40);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_1D0DD7D24(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DCD508(v4, a3);
  *(v3 + 256) = *(v3 + 112);
  v5[1] = 0;
  v5[2] = 0;
  v5[0] = &unk_1F4CEF718;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = vdupq_n_s64(0x7FF8000000000000uLL);
  v16 = 0x7FF8000000000000;
  if (!raven::UserSpeedChecker::HandleEvent(*(v3 + 1944), v4, v5))
  {
    sub_1D0D48BB8(v3);
  }
}

uint64_t sub_1D0DD7DCC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7608))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD7E7C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE76D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD7FBC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7750))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD806C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE77D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1D0DD8140(uint64_t a1, raven::RavenMapVectorActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DCB9E8(v7, a3);
  return raven::RavenMapVectorActiveObject::HandleEvent(v3, v7, v4, v5);
}

uint64_t sub_1D0DD8180(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7850))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD8230(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE78D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD82E0(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7950))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD8390(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE79D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD8440(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7A50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD84F0(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7AD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1D0DD85C4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B9356C(&v9, a3);
  v4 = v15;
  v5 = v17;
  *(v3 + 1272) = v16;
  *(v3 + 1288) = v5;
  *(v3 + 1304) = v18;
  v6 = v11;
  v7 = v13;
  *(v3 + 1208) = v12;
  *(v3 + 1224) = v7;
  *(v3 + 1240) = v14;
  *(v3 + 1256) = v4;
  result = *&v10;
  *(v3 + 1176) = v10;
  *(v3 + 1192) = v6;
  return result;
}

uint64_t sub_1D0DD8634(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7B50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD86E4(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7BD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD87B8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = sub_1D0DC8EF0(v5, a3);
  if (!v5[26])
  {
    (*(*v3 + 40))(v3, v4);
  }
}

uint64_t sub_1D0DD881C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7C50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD88CC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7CD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD897C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7D50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD8A2C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7DD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD8ADC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7E50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD8BB0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = sub_1D0B92680(v8, a3);
  if (*(v3 + 224))
  {
    if (*(v3 + 497) == 1 && *(v3 + 496) == 1)
    {
      raven::RavenMovingStateEstimator::HandleEvent(v3 + 280, v8);
    }
  }

  else
  {
    v13 = 12;
    v12 = 2;
    v11[0] = (*(v8[0] + 16))(v8, v4);
    v11[1] = v5;
    (*(v8[0] + 24))(v9, v8);
    if (v10 >= 0)
    {
      v6 = v9;
    }

    else
    {
      v6 = v9[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v3 + 232, v11, "Failed to handle event - %s.", v6);
    if (*(v3 + 255) >= 0)
    {
      v7 = (v3 + 232);
    }

    else
    {
      v7 = *(v3 + 232);
    }

    cnprint::CNPrinter::Print(&v13, &v12, "%s", v7);
    if (v10 < 0)
    {
      operator delete(v9[0]);
    }
  }
}

void sub_1D0DD8CF0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DD8D0C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7ED0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD8DBC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7F50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD8E6C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7FD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD8F1C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8050))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD8FF0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DC9660(v8, a3);
  v4 = raven::RavenEstimator::HandleFitnessSessionEvent((v3 + 288), v8);
  if (v4 && cnprint::CNPrinter::GetLogLevel(v4) <= 1)
  {
    v13 = 12;
    v12 = 1;
    v11[0] = (*(v8[0] + 16))(v8);
    v11[1] = v5;
    (*(v8[0] + 24))(v9, v8);
    if (v10 >= 0)
    {
      v6 = v9;
    }

    else
    {
      v6 = v9[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v3 + 240, v11, "Failed to handle event - %s.", v6);
    if (*(v3 + 263) >= 0)
    {
      v7 = (v3 + 240);
    }

    else
    {
      v7 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(&v13, &v12, "%s", v7);
    if (v10 < 0)
    {
      operator delete(v9[0]);
    }
  }
}

void sub_1D0DD911C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DD9138(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE80D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD91E8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8150))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD9298(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE81D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD9348(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8250))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD93F8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE82D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD94A8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8350))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD9558(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE83D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD9608(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8450))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD96B8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE84D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD9768(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8550))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD9818(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE85D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD98C8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8650))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD9978(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE86D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD9A28(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8750))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD9AD8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE87D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD9B88(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8850))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD9C5C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DCA268(v8, a3);
  if (raven::RavenPNTEstimator::HandleEvent((v3 + 288), v8))
  {
    v13 = 12;
    v12 = 2;
    v11[0] = (*(v8[0] + 16))(v8);
    v11[1] = v4;
    (*(v8[0] + 24))(v9, v8);
    if (v10 >= 0)
    {
      v5 = v9;
    }

    else
    {
      v5 = v9[0];
    }

    v6 = cnprint::CNLogFormatter::FormatWarning(v3 + 240, v11, "Failed to handle event - %s.", v5);
    if (*(v3 + 263) >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(&v13, &v12, "%s", v7);
    if (v10 < 0)
    {
      operator delete(v9[0]);
    }
  }

  raven::AccessoryVehicleSpeedEvent::~AccessoryVehicleSpeedEvent(v8);
}

void sub_1D0DD9D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 - 57) < 0)
  {
    operator delete(*(v3 - 80));
  }

  raven::AccessoryVehicleSpeedEvent::~AccessoryVehicleSpeedEvent(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DD9DAC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE88D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD9E80(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DCA9F8(v7, a3);
  if (raven::RavenPNTEstimator::HandleEvent((v3 + 288), v7))
  {
    v12 = 12;
    v11 = 2;
    v10[0] = (*(v7[0] + 16))(v7);
    v10[1] = v4;
    (*(v7[0] + 24))(v8, v7);
    if (v9 >= 0)
    {
      v5 = v8;
    }

    else
    {
      v5 = v8[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v3 + 240, v10, "Failed to handle event - %s.", v5);
    if (*(v3 + 263) >= 0)
    {
      v6 = (v3 + 240);
    }

    else
    {
      v6 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(&v12, &v11, "%s", v6);
    if (v9 < 0)
    {
      operator delete(v8[0]);
    }
  }
}

void sub_1D0DD9FA0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DD9FBC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8950))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDA06C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE89D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDA140(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DD282C(v7, a3);
  if (raven::RavenPNTEstimator::HandleEvent((v3 + 288), v7))
  {
    v12 = 12;
    v11 = 2;
    v10[0] = (*(v7[0] + 16))(v7);
    v10[1] = v4;
    (*(v7[0] + 24))(v8, v7);
    if (v9 >= 0)
    {
      v5 = v8;
    }

    else
    {
      v5 = v8[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v3 + 240, v10, "Failed to handle event - %s.", v5);
    if (*(v3 + 263) >= 0)
    {
      v6 = (v3 + 240);
    }

    else
    {
      v6 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(&v12, &v11, "%s", v6);
    if (v9 < 0)
    {
      operator delete(v8[0]);
    }
  }
}

void sub_1D0DDA260(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DDA27C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8A50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDA350(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DCF7EC(v7, a3);
  if (raven::RavenPNTEstimator::HandleEvent((v3 + 288), v7))
  {
    v12 = 12;
    v11 = 2;
    v10[0] = (*(v7[0] + 16))(v7);
    v10[1] = v4;
    (*(v7[0] + 24))(v8, v7);
    if (v9 >= 0)
    {
      v5 = v8;
    }

    else
    {
      v5 = v8[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v3 + 240, v10, "Failed to handle event - %s.", v5);
    if (*(v3 + 263) >= 0)
    {
      v6 = (v3 + 240);
    }

    else
    {
      v6 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(&v12, &v11, "%s", v6);
    if (v9 < 0)
    {
      operator delete(v8[0]);
    }
  }
}

void sub_1D0DDA470(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DDA48C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8AD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDA560(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DCB1A8(v17, a3);
  if (v19 != *(v3 + 344))
  {
    return;
  }

  v23 = 12;
  v22 = 3;
  v21 = v18;
  cnprint::CNLogFormatter::FormatGeneral(v3 + 240, &v21, "EstimatorErrorRecoveryEvent received, type, %u", v20);
  if (*(v3 + 263) >= 0)
  {
    v4 = (v3 + 240);
  }

  else
  {
    v4 = *(v3 + 240);
  }

  cnprint::CNPrinter::Print(&v23, &v22, "%s", v4);
  if (v20 <= 4u)
  {
    if (v20 > 2u)
    {
      if (v20 == 3)
      {
        v23 = 12;
        v22 = 3;
        v21 = v18;
        cnprint::CNLogFormatter::FormatGeneral(v3 + 240, &v21, "Initiating RavenErrorRecoveryAction::InflatePositionUncertainty");
        if (*(v3 + 263) >= 0)
        {
          v10 = (v3 + 240);
        }

        else
        {
          v10 = *(v3 + 240);
        }

        cnprint::CNPrinter::Print(&v23, &v22, "%s", v10);
        raven::RavenPNTEstimator::InflatePositionUncertainty((v3 + 288), *(*(v3 + 1456) + 1440), 1);
      }

      else
      {
        if (v20 != 4)
        {
          goto LABEL_53;
        }

        v23 = 12;
        v22 = 3;
        v21 = v18;
        cnprint::CNLogFormatter::FormatGeneral(v3 + 240, &v21, "Initiating RavenErrorRecoveryAction::InflateVelocityUncertainty");
        if (*(v3 + 263) >= 0)
        {
          v7 = (v3 + 240);
        }

        else
        {
          v7 = *(v3 + 240);
        }

        cnprint::CNPrinter::Print(&v23, &v22, "%s", v7);
        raven::RavenPNTEstimator::InflateVelocityUncertainty((v3 + 288), *(*(v3 + 1456) + 1448), 1);
      }
    }

    else if (v20 == 1)
    {
      v23 = 12;
      v22 = 3;
      v21 = v18;
      cnprint::CNLogFormatter::FormatGeneral(v3 + 240, &v21, "Initiating RavenErrorRecoveryAction::InflateAttitudeUncertainty");
      if (*(v3 + 263) >= 0)
      {
        v9 = (v3 + 240);
      }

      else
      {
        v9 = *(v3 + 240);
      }

      cnprint::CNPrinter::Print(&v23, &v22, "%s", v9);
      raven::RavenPNTEstimator::InflateAttitudeUncertainty((v3 + 288), *(*(v3 + 1456) + 1424), 1);
    }

    else
    {
      if (v20 != 2)
      {
        goto LABEL_53;
      }

      v23 = 12;
      v22 = 3;
      v21 = v18;
      cnprint::CNLogFormatter::FormatGeneral(v3 + 240, &v21, "Initiating RavenErrorRecoveryAction::InflateInsUncertainty");
      if (*(v3 + 263) >= 0)
      {
        v6 = (v3 + 240);
      }

      else
      {
        v6 = *(v3 + 240);
      }

      cnprint::CNPrinter::Print(&v23, &v22, "%s", v6);
      raven::RavenPNTEstimator::InflateInsUncertainty((v3 + 288), *(*(v3 + 1456) + 1432), 1);
    }
  }

  else
  {
    if (v20 > 6u)
    {
      switch(v20)
      {
        case 7u:
          v23 = 12;
          v22 = 3;
          v21 = v18;
          cnprint::CNLogFormatter::FormatGeneral(v3 + 240, &v21, "Initiating RavenErrorRecoveryAction::ResetEstimator");
          if (*(v3 + 263) >= 0)
          {
            v11 = (v3 + 240);
          }

          else
          {
            v11 = *(v3 + 240);
          }

          cnprint::CNPrinter::Print(&v23, &v22, "%s", v11);
          raven::RavenPNTEstimator::Reset((v3 + 288));
        case 8u:
          v23 = 12;
          v22 = 3;
          v21 = v18;
          cnprint::CNLogFormatter::FormatGeneral(v3 + 240, &v21, "Initiating RavenErrorRecoveryAction::ResetInsStates");
          if (*(v3 + 263) >= 0)
          {
            v13 = (v3 + 240);
          }

          else
          {
            v13 = *(v3 + 240);
          }

          cnprint::CNPrinter::Print(&v23, &v22, "%s", v13);
          raven::RavenPNTEstimator::ResetInsStates((v3 + 288), v14, v15);
        case 9u:
          v23 = 12;
          v22 = 3;
          v21 = v18;
          cnprint::CNLogFormatter::FormatGeneral(v3 + 240, &v21, "Initiating RavenErrorRecoveryAction::ResetXOStates");
          if (*(v3 + 263) >= 0)
          {
            v5 = (v3 + 240);
          }

          else
          {
            v5 = *(v3 + 240);
          }

          cnprint::CNPrinter::Print(&v23, &v22, "%s", v5);
          raven::RavenPNTEstimator::ResetOscillatorStates((v3 + 288));
          return;
      }

      goto LABEL_53;
    }

    if (v20 != 5)
    {
      if (v20 == 6)
      {
        v23 = 12;
        v22 = 3;
        v21 = v18;
        cnprint::CNLogFormatter::FormatGeneral(v3 + 240, &v21, "Initiating RavenErrorRecoveryAction::ResetAO");
        if (*(v3 + 263) >= 0)
        {
          v8 = (v3 + 240);
        }

        else
        {
          v8 = *(v3 + 240);
        }

        cnprint::CNPrinter::Print(&v23, &v22, "%s", v8);
        (*(*v3 + 40))(v3);
        return;
      }

LABEL_53:
      v23 = 12;
      v22 = 4;
      v21 = v18;
      cnprint::CNLogFormatter::FormatGeneral(v3 + 240, &v21, "Unhandled RavenErrorRecoveryAction, type, %u", v20);
      if (*(v3 + 263) >= 0)
      {
        v16 = (v3 + 240);
      }

      else
      {
        v16 = *(v3 + 240);
      }

      cnprint::CNPrinter::Print(&v23, &v22, "%s", v16);
      return;
    }

    v23 = 12;
    v22 = 3;
    v21 = v18;
    cnprint::CNLogFormatter::FormatGeneral(v3 + 240, &v21, "Initiating RavenErrorRecoveryAction::InflateXOUncertainty");
    if (*(v3 + 263) >= 0)
    {
      v12 = (v3 + 240);
    }

    else
    {
      v12 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(&v23, &v22, "%s", v12);
    raven::RavenPNTEstimator::InflateXOUncertainty((v3 + 288), *(*(v3 + 1456) + 1456), 1);
  }
}

uint64_t sub_1D0DDAA7C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8B50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDAB50(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DC9660(v7, a3);
  if (raven::RavenEstimator::HandleFitnessSessionEvent((v3 + 288), v7))
  {
    v12 = 12;
    v11 = 2;
    v10[0] = (*(v7[0] + 16))(v7);
    v10[1] = v4;
    (*(v7[0] + 24))(v8, v7);
    if (v9 >= 0)
    {
      v5 = v8;
    }

    else
    {
      v5 = v8[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v3 + 240, v10, "Failed to handle event - %s.", v5);
    if (*(v3 + 263) >= 0)
    {
      v6 = (v3 + 240);
    }

    else
    {
      v6 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(&v12, &v11, "%s", v6);
    if (v9 < 0)
    {
      operator delete(v8[0]);
    }
  }
}

void sub_1D0DDAC70(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DDAC8C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8BD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDAD3C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8C50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDAE10(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  if (*(a3 + 8) == 1)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    LOWORD(v35.__vftable) = 3;
    LOBYTE(v37[0]) = 5;
    cnprint::CNPrinter::Print(&v35, v37, "Attempted to access type of uninitialized GenericEvent.");
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
    if (v9 != (off_1F4CEF0A0 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v9, (off_1F4CEF0A0 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v35.__vftable = 0;
      v20 = std::bad_cast::bad_cast(&v35);
      v35.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C(v20);
    }

    v10 = *(a3 + 16);
    v21 = &unk_1F4CEE000;
    sub_1D0BE0DE8(&v22, (v10 + 1));
    v11 = v10[8];
    *&v26[88] = v10[9];
    *&v26[72] = v11;
    v12 = v10[10];
    v13 = v10[11];
    v14 = v10[12];
    *&v26[152] = v10[13];
    *&v26[136] = v14;
    *&v26[120] = v13;
    *&v26[104] = v12;
    sub_1D0BBA094(&v27, (v10 + 14));
    v33 = 0u;
    v34 = 0u;
    if (&v33 != v10 + 18)
    {
      v15 = v10[19];
      v33 = v10[18];
      v34 = v15;
    }
  }

  else
  {
    LOWORD(v37[0]) = 3;
    v38 = 5;
    if (*(a3 + 8) == 1)
    {
      v8 = *(a3 + 24);
    }

    else
    {
      LOWORD(v35.__vftable) = 3;
      LOBYTE(v39) = 5;
      cnprint::CNPrinter::Print(&v35, &v39, "Attempted to access type of uninitialized GenericEvent.");
      v8 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(v37, &v38, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v8 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEF0A0 & 0x7FFFFFFFFFFFFFFFLL));
    memset(v26, 0, 160);
    v31 = 0u;
    v32 = 0;
    v21 = &unk_1F4CEE000;
    v24 = 0x300000003;
    v22 = &unk_1F4CD5DD0;
    v23 = xmmword_1D0E76C10;
    v25 = v26;
    v29 = 0x100000003;
    *&v26[160] = 0x7FF8000000000000;
    v27 = &unk_1F4CDEB28;
    v28 = xmmword_1D0E7DCC0;
    v30 = &v31;
    v33 = 0uLL;
    *&v34 = 0;
    *(&v34 + 1) = 0x3FF0000000000000;
  }

  if (raven::RavenPNTEstimator::HandleEvent((v4 + 288), &v21))
  {
    v39 = 12;
    v38 = 2;
    v37[0] = v21[2](&v21);
    v37[1] = v16;
    (v21[3])(&v35, &v21);
    if (v36 >= 0)
    {
      v17 = &v35;
    }

    else
    {
      v17 = v35.__vftable;
    }

    v18 = cnprint::CNLogFormatter::FormatWarning(v4 + 240, v37, "Failed to handle event - %s.", v17);
    if (*(v4 + 263) >= 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = *(v4 + 240);
    }

    cnprint::CNPrinter::Print(&v39, &v38, "%s", v19);
    if (v36 < 0)
    {
      operator delete(v35.__vftable);
    }
  }
}

uint64_t sub_1D0DDB248(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8CD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDB31C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DCB9E8(v7, a3);
  if (raven::RavenPNTEstimator::HandleEvent((v3 + 288), v7))
  {
    v12 = 12;
    v11 = 2;
    v10[0] = (*(v7[0] + 16))(v7);
    v10[1] = v4;
    (*(v7[0] + 24))(v8, v7);
    if (v9 >= 0)
    {
      v5 = v8;
    }

    else
    {
      v5 = v8[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v3 + 240, v10, "Failed to handle event - %s.", v5);
    if (*(v3 + 263) >= 0)
    {
      v6 = (v3 + 240);
    }

    else
    {
      v6 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(&v12, &v11, "%s", v6);
    if (v9 < 0)
    {
      operator delete(v8[0]);
    }
  }
}

void sub_1D0DDB43C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DDB458(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8D50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDB508(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8DD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDB5B8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8E50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDB68C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DD4BD8(v7, a3);
  if (raven::RavenPNTEstimator::HandleEvent((v3 + 288), v7))
  {
    v12 = 12;
    v11 = 2;
    v10[0] = (*(v7[0] + 16))(v7);
    v10[1] = v4;
    (*(v7[0] + 24))(v8, v7);
    if (v9 >= 0)
    {
      v5 = v8;
    }

    else
    {
      v5 = v8[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v3 + 240, v10, "Failed to handle event - %s.", v5);
    if (*(v3 + 263) >= 0)
    {
      v6 = (v3 + 240);
    }

    else
    {
      v6 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(&v12, &v11, "%s", v6);
    if (v9 < 0)
    {
      operator delete(v8[0]);
    }
  }
}

void sub_1D0DDB7AC(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DDB7C8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8ED0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDB89C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DCC5B4(v7, a3);
  if (raven::RavenPNTEstimator::HandleEvent((v3 + 288), v7))
  {
    v12 = 12;
    v11 = 2;
    v10[0] = (*(v7[0] + 16))(v7);
    v10[1] = v4;
    (*(v7[0] + 24))(v8, v7);
    if (v9 >= 0)
    {
      v5 = v8;
    }

    else
    {
      v5 = v8[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v3 + 240, v10, "Failed to handle event - %s.", v5);
    if (*(v3 + 263) >= 0)
    {
      v6 = (v3 + 240);
    }

    else
    {
      v6 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(&v12, &v11, "%s", v6);
    if (v9 < 0)
    {
      operator delete(v8[0]);
    }
  }
}

void sub_1D0DDB9BC(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DDB9D8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8F50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDBA88(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8FD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDBB5C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0BCA45C(v7, a3);
  if (raven::RavenPNTEstimator::HandleEvent((v3 + 288), v7))
  {
    v12 = 12;
    v11 = 2;
    v10[0] = (*(v7[0] + 16))(v7);
    v10[1] = v4;
    (*(v7[0] + 24))(v8, v7);
    if (v9 >= 0)
    {
      v5 = v8;
    }

    else
    {
      v5 = v8[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v3 + 240, v10, "Failed to handle event - %s.", v5);
    if (*(v3 + 263) >= 0)
    {
      v6 = (v3 + 240);
    }

    else
    {
      v6 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(&v12, &v11, "%s", v6);
    if (v9 < 0)
    {
      operator delete(v8[0]);
    }
  }
}

void sub_1D0DDBC7C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DDBC98(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9050))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDBD48(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE90D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDBDF8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9150))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDBECC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DC8EF0(v9, a3);
  if (!cnprint::CNPrinter::GetLogLevel(v4))
  {
    v14 = 12;
    v13 = 0;
    v11 = (*(v9[0] + 16))(v9);
    v12 = v5;
    cnprint::CNLogFormatter::FormatGeneral(v3 + 240, &v11, "RavenSystemEvent received");
    if (*(v3 + 263) >= 0)
    {
      v6 = (v3 + 240);
    }

    else
    {
      v6 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(&v14, &v13, "%s", v6);
  }

  if (!v10)
  {
    v14 = 12;
    v13 = 4;
    v11 = (*(v9[0] + 16))(v9);
    v12 = v7;
    cnprint::CNLogFormatter::FormatGeneral(v3 + 240, &v11, "Resetting estimator based on system event");
    if (*(v3 + 263) >= 0)
    {
      v8 = (v3 + 240);
    }

    else
    {
      v8 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(&v14, &v13, "%s", v8);
    (*(*v3 + 40))(v3);
  }
}

uint64_t sub_1D0DDC03C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE91D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDC0EC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9250))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDC19C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE92D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDC24C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9350))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDC320(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DCD508(v7, a3);
  if (raven::RavenPNTEstimator::HandleEvent((v3 + 288), v7))
  {
    v12 = 12;
    v11 = 2;
    v10[0] = (*(v7[0] + 16))(v7);
    v10[1] = v4;
    (*(v7[0] + 24))(v8, v7);
    if (v9 >= 0)
    {
      v5 = v8;
    }

    else
    {
      v5 = v8[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v3 + 240, v10, "Failed to handle event - %s.", v5);
    if (*(v3 + 263) >= 0)
    {
      v6 = (v3 + 240);
    }

    else
    {
      v6 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(&v12, &v11, "%s", v6);
    if (v9 < 0)
    {
      operator delete(v8[0]);
    }
  }
}

void sub_1D0DDC440(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DDC45C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE93D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDC530(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0C050F4(v8, a3);
  if (*(v3 + 345) != 1 || (*(v3 + 346) == 1 ? (v4 = v9 == 0) : (v4 = 1), !v4 && raven::RavenPNTEstimator::AddDeviceVelocityMeasurement((v3 + 288), v8)))
  {
    v14 = 12;
    v13 = 2;
    v12[0] = (*(v8[0] + 16))(v8);
    v12[1] = v5;
    (*(v8[0] + 24))(v10, v8);
    if (v11 >= 0)
    {
      v6 = v10;
    }

    else
    {
      v6 = v10[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v3 + 240, v12, "Failed to handle event - %s.", v6);
    if (*(v3 + 263) >= 0)
    {
      v7 = (v3 + 240);
    }

    else
    {
      v7 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(&v14, &v13, "%s", v7);
    if (v11 < 0)
    {
      operator delete(v10[0]);
    }
  }
}

void sub_1D0DDC670(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DDC68C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9450))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDC73C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE94D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1D0DDC810(uint64_t a1, raven::RavenRayTracingActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B99264(v5, a3);
  *&result = raven::RavenRayTracingActiveObject::HandleEvent(v3, v5).n128_u64[0];
  return result;
}

uint64_t sub_1D0DDC850(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9550))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDC924(uint64_t a1, raven::RavenRayTracingActiveObject **a2, uint64_t a3)
{
  v4 = *a2;
  if (*(a3 + 8) == 1)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    LOWORD(v33.__vftable) = 3;
    LOBYTE(v31) = 5;
    cnprint::CNPrinter::Print(&v33, &v31, "Attempted to access type of uninitialized GenericEvent.");
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

    v10 = (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v10 != (off_1F4CEF028 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v10, (off_1F4CEF028 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v33.__vftable = 0;
      v16 = std::bad_cast::bad_cast(&v33);
      v33.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C(v16);
    }

    v11 = *(a3 + 16);
    v17 = &unk_1F4CEDFA0;
    v12 = *(v11 + 32);
    v18 = *(v11 + 16);
    v19 = v12;
    v13 = *(v11 + 48);
    v14 = *(v11 + 64);
    v15 = *(v11 + 96);
    v22 = *(v11 + 80);
    v23 = v15;
    v20 = v13;
    v21 = v14;
    v25 = 0;
    v26 = 0;
    v24 = 0;
    sub_1D0DDCC68(&v24, *(v11 + 112), *(v11 + 120), 0xCCCCCCCCCCCCCCCDLL * ((*(v11 + 120) - *(v11 + 112)) >> 3));
    v27 = *(v11 + 136);
    sub_1D0DDD1D0(&v28, (v11 + 152));
  }

  else
  {
    v31 = 3;
    v30 = 5;
    if (*(a3 + 8) == 1)
    {
      v8 = *(a3 + 24);
    }

    else
    {
      LOWORD(v33.__vftable) = 3;
      v32 = 5;
      cnprint::CNPrinter::Print(&v33, &v32, "Attempted to access type of uninitialized GenericEvent.");
      v8 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v31, &v30, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v8 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEF028 & 0x7FFFFFFFFFFFFFFFLL));
    v19 = 0uLL;
    v18 = 0uLL;
    v17 = &unk_1F4CEDFA0;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    *&v23 = 0;
    *(&v23 + 1) = 0x7FF8000000000000;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = vdupq_n_s64(0x7FF8000000000000uLL);
    v29[0] = 0;
    v29[1] = 0;
    v28 = v29;
  }

  raven::RavenRayTracingActiveObject::HandleEvent(v4, &v17, v9);
  v17 = &unk_1F4CEDFA0;
  sub_1D0BCB540(&v28, v29[0]);
  v33.__vftable = &v24;
  sub_1D0DDD154(&v33);
}

uint64_t sub_1D0DDCC1C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE95D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDCC68(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x666666666666667)
    {
      sub_1D0DDCEE0(result, a4);
    }

    sub_1D0C5663C();
  }

  return result;
}

void sub_1D0DDCE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1D0DDD154(va);
  _Unwind_Resume(a1);
}

void sub_1D0DDCEE0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

void sub_1D0DDCF38(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

uint64_t sub_1D0DDCF90(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1D0DDCFC8(a1);
  }

  return a1;
}

void sub_1D0DDCFC8(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 80);
      v3 -= 80;
      v4 = v5;
      if (v5)
      {
        *(v1 - 72) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void sub_1D0DDD018(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1D0DDD06C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1D0DDD06C(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 80);
      v4 -= 80;
      v5 = v6;
      if (v6)
      {
        *(v2 - 72) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t sub_1D0DDD0C4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1D0DDD0FC(a1);
  }

  return a1;
}

void sub_1D0DDD0FC(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 40;
      v4 = (v1 - 24);
      sub_1D0DDD018(&v4);
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void sub_1D0DDD154(void ***a1)
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
        v6 = v4 - 40;
        v7 = (v4 - 24);
        sub_1D0DDD018(&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void *sub_1D0DDD1D0(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = a1[1];
      v4 = a1 + 1;
      if (*a1 == a1 + 1)
      {
        goto LABEL_8;
      }

      v5 = a1[1];
      v6 = a1 + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = v2[4];
      if (v4[4] < v8)
      {
LABEL_8:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = a1 + 1;
        }

        if (!*v9)
        {
LABEL_19:
          operator new();
        }
      }

      else
      {
        if (!v3)
        {
          goto LABEL_19;
        }

        while (1)
        {
          while (1)
          {
            v10 = v3;
            v11 = v3[4];
            if (v11 <= v8)
            {
              break;
            }

            v3 = *v10;
            if (!*v10)
            {
              goto LABEL_19;
            }
          }

          if (v11 >= v8)
          {
            break;
          }

          v3 = v10[1];
          if (!v3)
          {
            goto LABEL_19;
          }
        }
      }

      v12 = v2[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v2[2];
          v7 = *v13 == v2;
          v2 = v13;
        }

        while (!v7);
      }

      v2 = v13;
    }

    while (v13 != a2 + 1);
  }

  return a1;
}

void sub_1D0DDD3E4(uint64_t a1, raven::RavenRayTracingActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0BCA910(v4, a3);
  raven::RavenRayTracingActiveObject::HandleEvent(v3, v4);
  v4[0] = &unk_1F4CEF598;
  v6 = &v5;
  sub_1D0BBBD80(&v6);
}

void sub_1D0DDD454(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1 + 96;
  sub_1D0BBBD80((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DDD48C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9650))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDD560(uint64_t a1, raven::RavenRayTracingActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B9FD10(v4, a3);
  raven::RavenRayTracingActiveObject::HandleEvent(v3, v4);
}

uint64_t sub_1D0DDD5A0(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE96D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDD674(uint64_t a1, int64x2_t **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DC8EF0(v4, a3);
  if (!v4[26])
  {
    raven::RavenRayTracingActiveObject::Reset(v3);
  }
}

uint64_t sub_1D0DDD6B8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9750))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDD78C(uint64_t a1, raven::RavenRayTracingActiveObject **a2, uint64_t a3)
{
  v4 = *a2;
  if (*(a3 + 8) == 1)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    LOWORD(v29.__vftable) = 3;
    LOBYTE(v27) = 5;
    cnprint::CNPrinter::Print(&v29, &v27, "Attempted to access type of uninitialized GenericEvent.");
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
    if (v9 != (off_1F4CEF280 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v9, (off_1F4CEF280 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v29.__vftable = 0;
      v16 = std::bad_cast::bad_cast(&v29);
      v29.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C(v16);
    }

    v10 = *(a3 + 16);
    v17 = &unk_1F4CEE0F0;
    v11 = *(v10 + 32);
    v18 = *(v10 + 16);
    v19 = v11;
    v12 = *(v10 + 80);
    v13 = *(v10 + 96);
    v14 = *(v10 + 64);
    v20 = *(v10 + 48);
    v23 = v13;
    v22 = v12;
    v21 = v14;
    if (*(v10 + 135) < 0)
    {
      sub_1D0BC39B4(&__p, *(v10 + 112), *(v10 + 120));
    }

    else
    {
      v15 = *(v10 + 112);
      v25 = *(v10 + 128);
      __p = v15;
    }
  }

  else
  {
    v27 = 3;
    v26 = 5;
    if (*(a3 + 8) == 1)
    {
      v8 = *(a3 + 24);
    }

    else
    {
      LOWORD(v29.__vftable) = 3;
      v28 = 5;
      cnprint::CNPrinter::Print(&v29, &v28, "Attempted to access type of uninitialized GenericEvent.");
      v8 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v27, &v26, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v8 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEF280 & 0x7FFFFFFFFFFFFFFFLL));
    v19 = 0uLL;
    v18 = 0uLL;
    v17 = &unk_1F4CEE0F0;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    *&v23 = 0;
    *(&v23 + 1) = 0x7FF8000000000000;
    __p = 0uLL;
    v25 = 0;
  }

  raven::RavenRayTracingActiveObject::HandleEvent(v4, &v17);
  v17 = &unk_1F4CEE0F0;
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }
}

uint64_t sub_1D0DDDA64(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE97D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1D0DDDB38(uint64_t a1, raven::RavenRayTracingActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0BB2F1C(v5, a3);
  *&result = raven::RavenRayTracingActiveObject::HandleEvent(v3, v5).n128_u64[0];
  return result;
}

uint64_t sub_1D0DDDB78(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9850))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDDC4C(uint64_t a1, raven::RavenSignalEnvironmentActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0BB2F1C(v4, a3);
  raven::RavenSignalEnvironmentActiveObject::HandleEvent(v3, v4);
}

uint64_t sub_1D0DDDC8C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE98D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDDD3C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9950))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDDE10(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0BCA45C(v5, a3);
  return raven::RavenSignalEnvironmentActiveObject::HandleEvent(v3, v5);
}

uint64_t sub_1D0DDDE50(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE99D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDDF00(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9A50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDDFD4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = sub_1D0DC8EF0(v5, a3);
  if (!v5[26])
  {
    (*(*v3 + 40))(v3, v4);
  }
}

uint64_t sub_1D0DDE038(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9AD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDE0E8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9B50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDE198(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9BD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDE248(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9C50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDE31C(uint64_t a1, _BYTE **a2, uint64_t a3)
{
  v4 = *a2;
  if (*(a3 + 8) == 1)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    LOWORD(v14.__vftable) = 3;
    LOBYTE(v17) = 5;
    cnprint::CNPrinter::Print(&v14, &v17, "Attempted to access type of uninitialized GenericEvent.");
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
    if (v9 != (off_1F4CEF010 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v9, (off_1F4CEF010 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v14.__vftable = 0;
      v11 = std::bad_cast::bad_cast(&v14);
      v14.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C(v11);
    }

    v12 = *(*(a3 + 16) + 112);
  }

  else
  {
    v17 = 3;
    v13 = 5;
    if (*(a3 + 8) == 1)
    {
      v8 = *(a3 + 24);
    }

    else
    {
      LOWORD(v14.__vftable) = 3;
      v16 = 5;
      cnprint::CNPrinter::Print(&v14, &v16, "Attempted to access type of uninitialized GenericEvent.");
      v8 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v17, &v13, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v8 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEF010 & 0x7FFFFFFFFFFFFFFFLL));
    v12 = 0;
  }

  if (v4[1720])
  {
    v4[224] = v12;
  }

  else
  {
    v17 = 12;
    v16 = 2;
    (*(*v4 + 16))(&v14, v4);
    if (v15 >= 0)
    {
      v10 = &v14;
    }

    else
    {
      v10 = v14.__vftable;
    }

    cnprint::CNPrinter::Print(&v17, &v16, "Warning: %s Active Object not configured", v10);
    if (v15 < 0)
    {
      operator delete(v14.__vftable);
    }
  }
}

uint64_t sub_1D0DDE604(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9CD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDE6D8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0BCA45C(v5, a3);
  if (*(v3 + 1720))
  {
    if (*(v3 + 648) == 1)
    {
      memcpy((v3 + 296), v6, 0x160uLL);
    }

    else
    {
      *(v3 + 288) = &unk_1F4CEF748;
      memcpy((v3 + 296), v6, 0x160uLL);
      *(v3 + 648) = 1;
    }
  }

  else
  {
    v10 = 12;
    v9 = 2;
    (*(*v3 + 16))(v7, v3);
    if (v8 >= 0)
    {
      v4 = v7;
    }

    else
    {
      v4 = v7[0];
    }

    cnprint::CNPrinter::Print(&v10, &v9, "Warning: %s Active Object not configured", v4);
    if (v8 < 0)
    {
      operator delete(v7[0]);
    }
  }
}

void sub_1D0DDE7F8(_Unwind_Exception *exception_object)
{
  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DDE814(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9D50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDE8C4(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9DD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDE974(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9E50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDEA24(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9ED0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1D0DDEAF8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DD6540(v5, a3);
  *&result = raven::RavenSolutionSelector::HandleEvent(v3 + 224, v5).n128_u64[0];
  return result;
}

uint64_t sub_1D0DDEB38(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9F50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDEBE8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CEA018))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDED28(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CEA098))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDEDD8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CEA118))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDEE88(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CEA198))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDEF38(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CEA218))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDEFE8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CEA298))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDF098(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CEA318))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDF148(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CEA398))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDF21C(uint64_t a1, raven::RavenUserSpeedActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DC9660(v4, a3);
  raven::RavenUserSpeedActiveObject::HandleEvent(v3, v4);
}

uint64_t sub_1D0DDF25C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CEA418))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDF30C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CEA498))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDF3E0(uint64_t a1, raven::RavenUserSpeedActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0DC9C98(v4, a3);
  raven::RavenUserSpeedActiveObject::HandleEvent(v3, v4);
}

uint64_t sub_1D0DDF420(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CEA518))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDF4D0(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CEA598))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDF654(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CEA648;
  *(a1 + 8) = &unk_1F4CEE0F0;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 8);
  *(a1 + 32) = v3;
  v4 = *(a2 + 40);
  v5 = *(a2 + 56);
  v6 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 72);
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  if (*(a2 + 127) < 0)
  {
    sub_1D0BC39B4((a1 + 112), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v7 = *(a2 + 104);
    *(a1 + 128) = *(a2 + 120);
    *(a1 + 112) = v7;
  }

  return a1;
}

uint64_t sub_1D0DDF704(uint64_t a1)
{
  *(a1 + 8) = &unk_1F4CEE0F0;
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  return a1;
}

void sub_1D0DDF758(uint64_t a1)
{
  *(a1 + 8) = &unk_1F4CEE0F0;
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0DDF844(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CEA690;
  *(a1 + 8) = &unk_1F4CEDFA0;
  v4 = *(a2 + 40);
  v5 = *(a2 + 56);
  v6 = *(a2 + 72);
  v7 = *(a2 + 88);
  v8 = *(a2 + 8);
  v9 = *(a2 + 24);
  *(a1 + 112) = 0;
  v10 = a1 + 112;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  sub_1D0DDCC68(a1 + 112, *(a2 + 104), *(a2 + 112), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 112) - *(a2 + 104)) >> 3));
  *(v10 + 24) = *(a2 + 128);
  sub_1D0DDD1D0((v10 + 40), (a2 + 144));
  return a1;
}

void sub_1D0DDF920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D0DDD154(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DDF938(uint64_t a1)
{
  *(a1 + 8) = &unk_1F4CEDFA0;
  sub_1D0BCB540(a1 + 152, *(a1 + 160));
  v3 = (a1 + 112);
  sub_1D0DDD154(&v3);
  return a1;
}

void sub_1D0DDF9A0(uint64_t a1)
{
  *(a1 + 8) = &unk_1F4CEDFA0;
  sub_1D0BCB540(a1 + 152, *(a1 + 160));
  v2 = (a1 + 112);
  sub_1D0DDD154(&v2);

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0DDFAA0(void *a1)
{
  a1[1] = &unk_1F4CEE060;
  v2 = a1[27];
  if (v2)
  {
    a1[28] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1D0DDFFCC(uint64_t a1)
{
  raven::VIOEstimateEvent::~VIOEstimateEvent((a1 + 8));

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DE00D8(uint64_t a1)
{
  raven::VLLocalizationEvent::~VLLocalizationEvent((a1 + 8));

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0DE01B8(void *a1)
{
  a1[1] = &unk_1F4CEE0C0;
  v2 = a1[16];
  if (v2)
  {
    a1[17] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1D0DE020C(void *a1)
{
  a1[1] = &unk_1F4CEE0C0;
  v2 = a1[16];
  if (v2)
  {
    a1[17] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t raven::TunnelBridgeNotificationChecker::Configure(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a3;
  *(a1 + 8) = 1;
  return 0;
}

BOOL raven::TunnelBridgeNotificationChecker::isCoordinateValid(raven::TunnelBridgeNotificationChecker *this, double a2, double a3)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = a2 <= 90.0 && (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && a2 >= -90.0;
  if (a3 > 180.0)
  {
    v5 = 0;
  }

  return a3 >= -180.0 && v5;
}

__n128 raven::TunnelBridgeNotificationChecker::HandleEvent(raven::TunnelBridgeNotificationChecker *this, const raven::TunnelBridgeNotificationEvent *a2, raven::TunnelBridgeNotificationEvent *a3, __n128 result)
{
  if (*(this + 8))
  {
    if (*(this + 9) == 1)
    {
      v5 = *(a2 + 25);
      if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v6 = *(a2 + 26), v6 < -180.0) || v6 > 180.0 || v5 < -90.0 || v5 > 90.0 || (*(a2 + 26) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
        {
          v25 = 12;
          v24 = 1;
          (*(*a2 + 16))(a2);
          cnprint::CNPrinter::Print(&v25, &v24, "t,%.3lf,WARNING: tba,tunnel bridge notification checker, tunnel bridge notification has invalid predicted point coordinates, do not use tunnel bridge notification");
        }
      }

      else
      {
        v7 = *(a2 + 27);
        if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v7 < 10.0 || v7 > 500.0)
        {
          if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
          {
            v23 = 12;
            v22 = 1;
            (*(*a2 + 16))(a2);
            cnprint::CNPrinter::Print(&v23, &v22, "t,%.3lf,WARNING: tba,tunnel bridge notification checker, search radius is not set, too large, negative, or too small, do not use tunnel bridge notification,%.3lf");
          }
        }

        else
        {
          if (!cnprint::CNPrinter::GetLogLevel(this))
          {
            v21 = 12;
            v20 = 0;
            v9 = (*(*a2 + 16))(a2);
            cnprint::CNPrinter::Print(&v21, &v20, "t,%.3lf,TunnelBridgeNotificationChecker,is_tunnel,%d,is_near_tunnel,%d", v10 + v9, *(a2 + 226), *(a2 + 224));
          }

          v11 = *(a2 + 8);
          *(a3 + 24) = *(a2 + 24);
          *(a3 + 8) = v11;
          v12 = *(a2 + 40);
          v13 = *(a2 + 56);
          v14 = *(a2 + 72);
          *(a3 + 88) = *(a2 + 88);
          *(a3 + 72) = v14;
          *(a3 + 56) = v13;
          *(a3 + 40) = v12;
          v15 = *(a2 + 104);
          v16 = *(a2 + 120);
          v17 = *(a2 + 136);
          *(a3 + 152) = *(a2 + 152);
          *(a3 + 136) = v17;
          *(a3 + 120) = v16;
          *(a3 + 104) = v15;
          result = *(a2 + 168);
          v18 = *(a2 + 184);
          v19 = *(a2 + 200);
          *(a3 + 212) = *(a2 + 212);
          *(a3 + 200) = v19;
          *(a3 + 184) = v18;
          *(a3 + 168) = result;
        }
      }
    }
  }

  else
  {
    v27 = 12;
    v26 = 4;
    (*(*a2 + 16))(a2, a2, a3, result);
    cnprint::CNPrinter::Print(&v27, &v26, "t,%.3lf,TunnelBridgeNotificationChecker, not configured");
  }

  return result;
}

void raven::GNSSMeasurementSelectionParameters::GetExpectedConstellations(_BYTE *a1, void *a2)
{
  a2[1] = *a2;
  sub_1D0DE081C(a2, 5uLL);
  if (*a1 == 1)
  {
    v9 = 4;
    sub_1D0DE08E4(a2, &v9);
  }

  if (a1[1] == 1)
  {
    v8 = 3;
    sub_1D0DE08E4(a2, &v8);
  }

  if (a1[2] == 1)
  {
    v7 = 2;
    sub_1D0DE08E4(a2, &v7);
  }

  if (a1[3] == 1)
  {
    v6 = 1;
    sub_1D0DE08E4(a2, &v6);
  }

  if (a1[4] == 1)
  {
    v5 = 5;
    sub_1D0DE08E4(a2, &v5);
  }

  if (a1[5] == 1)
  {
    v4 = 6;
    sub_1D0DE08E4(a2, &v4);
  }
}

void sub_1D0DE081C(void *a1, unint64_t a2)
{
  if (a1[2] - *a1 < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D0DE09D4();
  }
}

void sub_1D0DE08E4(uint64_t a1, char *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      sub_1D0DE09D4();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
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

uint64_t raven::AttitudeChangeChecker::Configure(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a3;
  *(a1 + 8) = 1;
  return 0;
}

uint64_t raven::AttitudeChangeChecker::HandleEvent(raven::AttitudeChangeChecker *this, const raven::AttitudeChangeEvent *a2, raven::AttitudeChangeEvent *a3)
{
  if ((*(this + 8) & 1) == 0)
  {
    LOWORD(v31[0]) = 12;
    v30.i8[0] = 4;
    v28 = (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(v31, &v30, "t,%.3lf,AttitudeChangeChecker, not configured", v29 + v28);
    return 0xFFFFFFFFLL;
  }

  if (*(*(this + 2) + 56) == 9)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a2 + 8);
  v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  *(a3 + 56) = *(a2 + 56);
  *(a3 + 40) = v7;
  *(a3 + 24) = v6;
  *(a3 + 8) = v5;
  v8 = *(a2 + 72);
  v9 = *(a2 + 88);
  v10 = *(a2 + 104);
  *(a3 + 120) = *(a2 + 120);
  *(a3 + 104) = v10;
  *(a3 + 88) = v9;
  *(a3 + 72) = v8;
  v11 = *(a2 + 136);
  v12 = *(a2 + 152);
  v13 = *(a2 + 168);
  *(a3 + 184) = *(a2 + 184);
  *(a3 + 168) = v13;
  *(a3 + 152) = v12;
  *(a3 + 136) = v11;
  if (a3 != a2)
  {
    *(a3 + 200) = *(a2 + 200);
    *(a3 + 216) = *(a2 + 216);
  }

  v14 = sub_1D0B894B0(a3 + 232, a2 + 232);
  if (*(this + 9) != 1)
  {
    return 0;
  }

  v31[0] = (*(*a3 + 16))(a3, v14);
  v31[1] = v15;
  v30 = *(a3 + 104);
  v17 = CNTimeSpan::operator-(v31, &v30, v30, v16);
  v19 = v18 + v17;
  v20 = fabs(v19);
  v21 = (*&v20 - 1) < 0xFFFFFFFFFFFFFLL;
  v22 = *&v19 == 0;
  v23 = v19 < 0.0;
  v24 = v19 < 0.0 && (*&v20 - 0x10000000000000) >> 53 < 0x3FF;
  if (!v23)
  {
    v21 = 0;
  }

  if (v22)
  {
    v21 = 1;
  }

  v25 = *&v20 <= 0x7FF0000000000000;
  v26 = v20 == INFINITY || v21;
  if (!v25)
  {
    v26 = 1;
  }

  return ((v26 | v24) << 31 >> 31);
}

uint64_t raven::RavenMapVectorActiveObject::Configure(cnframework::ActiveObjectBase *this, uint64_t *a2)
{
  if (*(this + 224) == 1 && cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v41 = 12;
    v40 = 1;
    (*(*this + 16))(__p, this);
    v4 = v39 >= 0 ? __p : __p[0];
    cnprint::CNPrinter::Print(&v41, &v40, "Warning: %s configured more than once.", v4);
    if (v39 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(this + 224) = 0;
  v5 = *a2;
  if (!*a2 || (*(v5 + 33) & 1) == 0)
  {
    v41 = 12;
    v40 = 4;
    (*(*this + 16))(__p, this);
    if (v39 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    cnprint::CNPrinter::Print(&v41, &v40, "Error: %s could not be configured. p_raven_parameters is not initialized.", v11);
    goto LABEL_26;
  }

  *(this + 29) = v5;
  v6 = *(v5 + 3152);
  v7 = (v6 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v8 = ((v6 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v6 >= 0)
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = (v6 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v7;
  if ((v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v9 = 1;
  }

  if ((v9 | v8) == 1)
  {
    v41 = 12;
    v40 = 4;
    (*(*this + 16))(__p, this);
    if (v39 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    cnprint::CNPrinter::Print(&v41, &v40, "Error: %s could not be configured. Invalid map_vector_event_raise_minimum_interval: %.3lf", v10, *(*(this + 29) + 3152));
LABEL_26:
    if (v39 < 0)
    {
      operator delete(__p[0]);
    }

    return 0xFFFFFFFFLL;
  }

  v13 = *(v5 + 3144);
  v14 = (v13 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v15 = ((v13 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v13 >= 0)
  {
    v15 = 0;
    v14 = 0;
  }

  if ((v13 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    v14 = 1;
  }

  if ((v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v14 = 1;
  }

  if (v14 || v15)
  {
    v41 = 12;
    v40 = 4;
    (*(*this + 16))(__p, this);
    if (v39 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    cnprint::CNPrinter::Print(&v41, &v40, "Error: %s could not be configured. Invalid map_vector_event_expiration_age: %.3lf", v16, *(*(this + 29) + 3144));
    goto LABEL_26;
  }

  v17 = *(v5 + 3160);
  v18 = (v17 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v19 = ((v17 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v17 >= 0)
  {
    v19 = 0;
    v18 = 0;
  }

  v20 = (v17 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v18;
  if ((v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v20 = 1;
  }

  if ((v20 | v19) == 1)
  {
    v41 = 12;
    v40 = 4;
    (*(*this + 16))(__p, this);
    if (v39 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    cnprint::CNPrinter::Print(&v41, &v40, "Error: %s could not be configured. Invalid map_vector_event_device_rotation_threshold: %.3lf", v21, *(*(this + 29) + 3160));
    goto LABEL_26;
  }

  v22 = *(v5 + 3224);
  v23 = (v22 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v24 = ((v22 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v22 >= 0)
  {
    v24 = 0;
    v23 = 0;
  }

  if ((v22 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    v23 = 1;
  }

  if ((v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v23 = 1;
  }

  if (v23 || v24 || (v25 = *(v5 + 3232), *(v5 + 3224) < v25))
  {
    v41 = 12;
    v40 = 4;
    (*(*this + 16))(__p, this);
    if (v39 >= 0)
    {
      v26 = __p;
    }

    else
    {
      v26 = __p[0];
    }

    cnprint::CNPrinter::Print(&v41, &v40, "Error: %s could not be configured. Invalid turn_state_detector_minimum_threshold_to_trigger_turning_high_confidence_dps_: %.3lf. Must be finite, non-negative, and greater than or equal to turn_state_detector_maximum_threshold_to_trigger_not_turning_low_confidence_dps_", v26, *(*(this + 29) + 3224));
    goto LABEL_26;
  }

  v27 = *(v5 + 3240);
  v28 = (*&v27 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v29 = v27 < 0.0 && ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v27 >= 0.0)
  {
    v28 = 0;
  }

  v30 = (*&v27 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v28;
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v30 = 1;
  }

  if (((v30 | v29) & 1) != 0 || v27 > v25)
  {
    v41 = 12;
    v40 = 4;
    (*(*this + 16))(__p, this);
    if (v39 >= 0)
    {
      v35 = __p;
    }

    else
    {
      v35 = __p[0];
    }

    cnprint::CNPrinter::Print(&v41, &v40, "Error: %s could not be configured. Invalid turn_state_detector_maximum_threshold_to_trigger_not_turning_high_confidence_dps_: %.3lf. Must be finite, non-negative, and less than or equal to turn_state_detector_maximum_threshold_to_trigger_not_turning_low_confidence_dps_", v35, *(*(this + 29) + 3240));
    goto LABEL_26;
  }

  v31 = (*&v25 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v32 = v25 < 0.0 && ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v25 >= 0.0)
  {
    v31 = 0;
  }

  v33 = (*&v25 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v31;
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v33 = 1;
  }

  if ((v33 | v32) == 1)
  {
    v41 = 12;
    v40 = 4;
    (*(*this + 16))(__p, this);
    if (v39 >= 0)
    {
      v34 = __p;
    }

    else
    {
      v34 = __p[0];
    }

    cnprint::CNPrinter::Print(&v41, &v40, "Error: %s could not be configured. Invalid turn_state_detector_maximum_threshold_to_trigger_not_turning_low_confidence_dps_: %.3lf. Must be finite, non-negative, and greater than or equal to turn_state_detector_maximum_threshold_to_trigger_not_turning_high_confidence_dps_", v34, *(*(this + 29) + 3232));
    goto LABEL_26;
  }

  cnframework::ActiveObjectBase::SetEventQueueDelay(this, 0.0);
  *(this + 224) = 1;
  v36 = (*(*this + 40))(this);
  if (cnprint::CNPrinter::GetLogLevel(v36) <= 1)
  {
    v41 = 12;
    v40 = 1;
    (*(*this + 16))(__p, this);
    v37 = v39 >= 0 ? __p : __p[0];
    cnprint::CNPrinter::Print(&v41, &v40, "%s configured successfully.", v37);
    if (v39 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

void sub_1D0DE12DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 raven::RavenMapVectorActiveObject::HandleEvent(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 432) == 1)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 24);
    v4 = *(a2 + 56);
    *(a1 + 280) = *(a2 + 40);
    *(a1 + 296) = v4;
    *(a1 + 264) = v3;
    *(a1 + 248) = v2;
    v5 = *(a2 + 72);
    v6 = *(a2 + 88);
    v7 = *(a2 + 120);
    *(a1 + 344) = *(a2 + 104);
    *(a1 + 360) = v7;
    *(a1 + 312) = v5;
    *(a1 + 328) = v6;
    result = *(a2 + 136);
    v9 = *(a2 + 152);
    v10 = *(a2 + 168);
    *(a1 + 424) = *(a2 + 184);
    *(a1 + 392) = v9;
    *(a1 + 408) = v10;
    *(a1 + 376) = result;
  }

  else
  {
    *(a1 + 240) = &unk_1F4CEF688;
    v11 = *(a2 + 8);
    v12 = *(a2 + 24);
    v13 = *(a2 + 56);
    *(a1 + 280) = *(a2 + 40);
    *(a1 + 296) = v13;
    *(a1 + 264) = v12;
    *(a1 + 248) = v11;
    v14 = *(a2 + 72);
    v15 = *(a2 + 88);
    v16 = *(a2 + 120);
    *(a1 + 344) = *(a2 + 104);
    *(a1 + 360) = v16;
    *(a1 + 312) = v14;
    *(a1 + 328) = v15;
    result = *(a2 + 136);
    v17 = *(a2 + 152);
    v18 = *(a2 + 168);
    *(a1 + 424) = *(a2 + 184);
    *(a1 + 392) = v17;
    *(a1 + 408) = v18;
    *(a1 + 376) = result;
    *(a1 + 432) = 1;
  }

  return result;
}

{
  if (*(a1 + 1120) == 1)
  {
    *(a1 + 1136) = *(a2 + 8);
    v2 = *(a2 + 24);
    v3 = *(a2 + 40);
    v4 = *(a2 + 56);
    *(a1 + 1200) = *(a2 + 72);
    *(a1 + 1184) = v4;
    *(a1 + 1168) = v3;
    *(a1 + 1152) = v2;
    result = *(a2 + 88);
    v6 = *(a2 + 104);
    v7 = *(a2 + 120);
    *(a1 + 1264) = *(a2 + 136);
    *(a1 + 1248) = v7;
    *(a1 + 1232) = v6;
    *(a1 + 1216) = result;
  }

  else
  {
    *(a1 + 1128) = &unk_1F4CEF538;
    *(a1 + 1136) = *(a2 + 8);
    v8 = *(a2 + 24);
    v9 = *(a2 + 40);
    v10 = *(a2 + 56);
    *(a1 + 1200) = *(a2 + 72);
    *(a1 + 1184) = v10;
    *(a1 + 1168) = v9;
    *(a1 + 1152) = v8;
    result = *(a2 + 88);
    v11 = *(a2 + 104);
    v12 = *(a2 + 120);
    *(a1 + 1264) = *(a2 + 136);
    *(a1 + 1248) = v12;
    *(a1 + 1232) = v11;
    *(a1 + 1216) = result;
    *(a1 + 1120) = 1;
  }

  return result;
}

double raven::RavenMapVectorActiveObject::HandleEvent(raven::RavenMapVectorActiveObject *this, const raven::MapVectorEvent *a2, int8x16_t a3, int8x16_t a4)
{
  v6 = *(this + 808);
  if (v6 == 1)
  {
    v6 = 0;
    *(this + 808) = 0;
  }

  *(this + 513) = 0x7FF0000000000000;
  *(this + 514) = 0;
  *(this + 515) = 0x7FF8000000000000;
  *(this + 4128) = 0;
  if (*(this + 1120) != 1)
  {
    goto LABEL_8;
  }

  v7 = *(this + 1232);
  v8 = v7 > 3 || v7 == 1;
  if (!v8 || *(this + 432) != 1 || ((*(this + 344) - 4) & 0xFA) != 0 || *(this + 4080) != 1 || *(this + 4040) != 2)
  {
    goto LABEL_8;
  }

  v12 = CNTimeSpan::operator-(a2 + 1, this + 493, a3, a4);
  v18[0] = v12;
  *&v18[1] = v13;
  if (v12 < 0 || (*v14.i64 = v13, v13 < 0.0))
  {
    v12 = CNTimeSpan::operator-(v18, v14, v15);
    v14.i64[0] = v16;
  }

  result = *v14.i64 + v12;
  if (result >= 0.5)
  {
LABEL_8:
    if (v6)
    {
      memcpy(this + 824, a2 + 8, 0x10CuLL);
    }

    else
    {
      *(this + 102) = &unk_1F4CEEB40;
      memcpy(this + 824, a2 + 8, 0x10CuLL);
      *(this + 808) = 1;
    }

    v9 = (*(*a2 + 16))(a2);
    v10 = *(this + 1096);
    *(this + 138) = v9;
    *(this + 139) = v11;
    if ((v10 & 1) == 0)
    {
      *(this + 1096) = 1;
    }

    *(this + 513) = 0;

    sub_1D0DD4390(this, a2);
  }

  return result;
}

uint64_t raven::RavenMapVectorActiveObject::ResetStoredMapVectorInformation(uint64_t this)
{
  if (*(this + 808) == 1)
  {
    *(this + 808) = 0;
  }

  *(this + 4104) = 0x7FF0000000000000;
  *(this + 4112) = 0;
  *(this + 4120) = 0x7FF8000000000000;
  *(this + 4128) = 0;
  return this;
}

void raven::RavenMapVectorActiveObject::Reset(raven::RavenMapVectorActiveObject *this)
{
  if (*(this + 808) == 1)
  {
    *(this + 808) = 0;
  }

  *(this + 513) = 0x7FF0000000000000;
  *(this + 514) = 0;
  *(this + 515) = 0x7FF8000000000000;
  *(this + 4128) = 0;
  if (*(this + 432) == 1)
  {
    *(this + 432) = 0;
  }

  if (*(this + 440) == 1)
  {
    *(this + 440) = 0;
  }

  if (*(this + 1096) == 1)
  {
    *(this + 1096) = 0;
  }

  if (*(this + 1120) == 1)
  {
    *(this + 1120) = 0;
  }

  if (*(this + 1272) == 1)
  {
    *(this + 1272) = 0;
  }

  if (*(this + 648) == 1)
  {
    *(this + 648) = 0;
  }

  if (*(this + 4080) == 1)
  {
    *(this + 4080) = 0;
  }

  *(this + 4088) = 0;
  v2 = *(this + 518);
  v3 = *(this + 519);
  *(this + 522) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v2 = (*(this + 518) + 8);
      *(this + 518) = v2;
      v4 = (*(this + 519) - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_24;
    }

    v5 = 512;
  }

  *(this + 521) = v5;
LABEL_24:
  *(this + 4184) = 0u;
  *(this + 525) = 0x7FF8000000000000;
  *(this + 128) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0x7FF8000000000000;
  *(this + 19) = 0;
  *(this + 105) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0x7FF8000000000000;

  cnframework::ActiveObjectBase::ResetEventQueue(this);
}

void sub_1D0DE1830(uint64_t a1)
{
  *a1 = &unk_1F4CEB028;
  sub_1D0C56D94((a1 + 4136));
  if (*(a1 + 1272) == 1)
  {
    *(a1 + 1272) = 0;
  }

  if (*(a1 + 1120) == 1)
  {
    *(a1 + 1120) = 0;
  }

  if (*(a1 + 1096) == 1)
  {
    *(a1 + 1096) = 0;
  }

  if (*(a1 + 808) == 1)
  {
    *(a1 + 808) = 0;
  }

  if (*(a1 + 648) == 1)
  {
    *(a1 + 648) = 0;
  }

  if (*(a1 + 440) == 1)
  {
    *(a1 + 440) = 0;
  }

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(a1);
}

void sub_1D0DE18EC(uint64_t a1)
{
  *a1 = &unk_1F4CEB028;
  sub_1D0C56D94((a1 + 4136));
  if (*(a1 + 1272) == 1)
  {
    *(a1 + 1272) = 0;
  }

  if (*(a1 + 1120) == 1)
  {
    *(a1 + 1120) = 0;
  }

  if (*(a1 + 1096) == 1)
  {
    *(a1 + 1096) = 0;
  }

  if (*(a1 + 808) == 1)
  {
    *(a1 + 808) = 0;
  }

  if (*(a1 + 648) == 1)
  {
    *(a1 + 648) = 0;
  }

  if (*(a1 + 440) == 1)
  {
    *(a1 + 440) = 0;
  }

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t raven::MountStateChecker::Configure(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a3;
  *(a1 + 8) = 1;
  return 0;
}

uint64_t raven::PositionChangeChecker::Configure(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a3;
  v3 = *(*a2 + 920);
  *(a1 + 24) = *(*a2 + 2512);
  *(a1 + 32) = v3;
  *(a1 + 8) = 1;
  return 0;
}

uint64_t raven::PositionChangeChecker::HandleEvent(raven::PositionChangeChecker *this, const raven::PositionChangeEvent *a2, raven::PositionChangeEvent *a3)
{
  v6 = MEMORY[0x1EEE9AC00](this);
  v7 = v4;
  if ((*(v3 + 8) & 1) == 0)
  {
    LOWORD(v70) = 12;
    v85[0] = 4;
    v40 = (*(*v4 + 16))(v4, v6);
    v57 = v41 + v40;
    v38 = "t,%.3lf,PositionChangeChecker, not configured";
    v39 = v85;
    goto LABEL_21;
  }

  v8 = v3;
  if (*(*(v3 + 16) + 56) == 9)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v5;
  v10 = *(v4 + 8);
  v11 = *(v4 + 24);
  v12 = *(v4 + 40);
  *(v5 + 56) = *(v4 + 56);
  *(v5 + 40) = v12;
  *(v5 + 24) = v11;
  *(v5 + 8) = v10;
  v13 = *(v4 + 72);
  v14 = *(v4 + 88);
  v15 = *(v4 + 104);
  *(v5 + 120) = *(v4 + 120);
  *(v5 + 104) = v15;
  *(v5 + 88) = v14;
  *(v5 + 72) = v13;
  v16 = *(v4 + 136);
  v17 = *(v4 + 152);
  v18 = *(v4 + 168);
  *(v5 + 184) = *(v4 + 184);
  *(v5 + 168) = v18;
  *(v5 + 152) = v17;
  *(v5 + 136) = v16;
  sub_1D0B894B0(v5 + 200, v4 + 200);
  v19 = sub_1D0B894B0(v9 + 264, v7 + 264);
  v20 = *(v9 + 232);
  v21 = v20[2];
  v22 = *v20 & 0x7FFFFFFFFFFFFFFFLL;
  v23 = (v20[1] & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  result = 0xFFFFFFFFLL;
  if (v22 <= 0x7FEFFFFFFFFFFFFFLL && v23 && (v21 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v70 = (*(*v9 + 16))(v9, v19);
    *&v71 = v25;
    *v85 = *(v9 + 104);
    v27 = CNTimeSpan::operator-(&v70, v85, *v85, v26);
    v29 = v28 + v27;
    v30 = (COERCE__INT64(fabs(v29)) - 0x10000000000000) >> 53;
    if ((v29 < 0.0 || v30 > 0x3FE) && (*&v29 - 1) > 0xFFFFFFFFFFFFELL)
    {
      return 0xFFFFFFFFLL;
    }

    v86 = 0x300000003;
    *&v85[8] = xmmword_1D0E76C10;
    *v85 = &unk_1F4CD5DD0;
    v87 = &v88;
    v82 = 0x300000003;
    v81 = xmmword_1D0E76C10;
    v80 = &unk_1F4CD5DD0;
    v83 = &v84;
    v77 = 0x100000003;
    v76 = xmmword_1D0E7DCC0;
    v75 = &unk_1F4CDEAA0;
    v78 = &v79;
    v72 = 0x1000001E6;
    v70 = &unk_1F4CDFFB0;
    v71 = xmmword_1D0E83DC0;
    v73 = &v74;
    v67 = 0x100000003;
    v65 = &unk_1F4CDEB28;
    v66 = xmmword_1D0E7DCC0;
    v68 = &v69;
    if (sub_1D0C1A8F0((v9 + 264), v85, &v80, &v75, &v70, &v65, "2") > *(v8 + 32))
    {
      return 0xFFFFFFFFLL;
    }

    v85[0] = 0;
    v62 = 0x300000003;
    v60 = &unk_1F4CD5DD0;
    v61 = xmmword_1D0E76C10;
    v63 = &v64;
    sub_1D0B9F748(v9 + 264, &v60, v85);
    v60 = &unk_1F4CD5E28;
    if (!v85[0])
    {
      return 0xFFFFFFFFLL;
    }

    if (*(v8 + 9) != 1)
    {
      return 0;
    }

    sub_1D0BFA800(v9 + 200);
    v35 = v34 / v29;
    if (v34 / v29 > 250.0)
    {
      if (cnprint::CNPrinter::GetLogLevel(v33) <= 1)
      {
        LOWORD(v70) = 12;
        LOBYTE(v80) = 1;
        v36 = (*(*v7 + 16))(v7);
        v57 = v37 + v36;
        v58 = v35;
        v38 = "t,%.3lf,PositionChangeChecker: Position Change too large,returning check failed,PosChange[s] %.3lf";
LABEL_19:
        v39 = &v80;
LABEL_21:
        cnprint::CNPrinter::Print(&v70, v39, v38, *&v57, *&v58, *&v59);
      }

      return 0xFFFFFFFFLL;
    }

    result = sub_1D0B9AF58((*(v8 + 16) + 16), &unk_1D0E9C718);
    if (result)
    {
      v42 = *(sub_1D0BF4B10((*(v8 + 16) + 16), &unk_1D0E9C718) + 1344);
      v43 = sub_1D0BF4B10((*(v8 + 16) + 16), &unk_1D0E9C718);
      if (v42 == 1)
      {
        v44 = *(v43 + 169);
        v45 = sub_1D0BF4B10((*(v8 + 16) + 16), &unk_1D0E9C718);
        v46 = v45[173];
LABEL_29:
        if (v35 > v44 + 13.4112)
        {
          if (cnprint::CNPrinter::GetLogLevel(v45) > 1)
          {
            return 0xFFFFFFFFLL;
          }

          LOWORD(v70) = 12;
          LOBYTE(v80) = 1;
          v52 = (*(*v7 + 16))(v7);
          v58 = v44;
          v59 = v35;
          v57 = v53 + v52;
          v38 = "t,%.3lf,PositionChangeChecker: Position Change too large,returning check failed,raven speed %.3lf, PosChange[s] %.3lf";
          goto LABEL_19;
        }

        v54 = *(v7 + 272);
        if (v54 < 1)
        {
          v56 = 0.0;
        }

        else
        {
          v55 = 0;
          v56 = 0.0;
          do
          {
            v56 = v56 + *(*(v7 + 296) + 8 * v55);
            v55 += *(v7 + 284) + 1;
            --v54;
          }

          while (v54);
        }

        return (((fabs(vabdd_f64(v35, v44) / sqrt(v46 + v56 / (v29 * v29))) > *(v8 + 24)) | ~*(v8 + 8)) << 31 >> 31);
      }

      if (*(v43 + 1544) == 1)
      {
        v47 = *(sub_1D0BF4B10((*(v8 + 16) + 16), &unk_1D0E9C718) + 194);
        v48 = *(sub_1D0BF4B10((*(v8 + 16) + 16), &unk_1D0E9C718) + 195);
        v49 = sub_1D0BF4B10((*(v8 + 16) + 16), &unk_1D0E9C718);
        v44 = sqrt(v48 * v48 + v47 * v47 + *(v49 + 196) * *(v49 + 196));
        v50 = *(sub_1D0BF4B10((*(v8 + 16) + 16), &unk_1D0E9C718) + 197);
        v51 = *(sub_1D0BF4B10((*(v8 + 16) + 16), &unk_1D0E9C718) + 200);
        v45 = sub_1D0BF4B10((*(v8 + 16) + 16), &unk_1D0E9C718);
        v46 = v50 + v51 + v45[202];
        goto LABEL_29;
      }

      return 0;
    }
  }

  return result;
}

double raven::RavenPassThroughEstimator::RavenPassThroughEstimator(raven::RavenPassThroughEstimator *this)
{
  raven::RavenEstimator::RavenEstimator(this, 1);
  *v1 = &unk_1F4CEB1D8;
  *(v1 + 2760) = &unk_1F4CEF748;
  result = 0.0;
  *(v1 + 2768) = 0u;
  *(v1 + 2784) = 0;
  *(v1 + 2792) = 0u;
  *(v1 + 2808) = 0;
  *(v1 + 2816) = 0u;
  *(v1 + 2832) = 0;
  *(v1 + 2840) = 0u;
  *(v1 + 2856) = 0x7FF8000000000000;
  *(v1 + 2864) = 0u;
  *(v1 + 2880) = 0;
  *(v1 + 2904) = 0;
  *(v1 + 2888) = 0u;
  *(v1 + 2912) = 0u;
  *(v1 + 2928) = 0;
  *(v1 + 2936) = 0u;
  *(v1 + 2952) = 0x7FF8000000000000;
  *(v1 + 2960) = 0;
  *(v1 + 2962) = 0;
  *(v1 + 2968) = 0x7FF8000000000000;
  v3 = vdupq_n_s64(0x7FF8000000000000uLL);
  *(v1 + 2976) = v3;
  *(v1 + 2992) = v3;
  *(v1 + 3008) = v3;
  *(v1 + 3024) = v3;
  *(v1 + 3040) = 0;
  *(v1 + 3048) = 0x7FF8000000000000;
  *(v1 + 3056) = v3;
  *(v1 + 3072) = v3;
  *(v1 + 3088) = v3;
  *(v1 + 3104) = v3;
  *(v1 + 3120) = &unk_1F4CEF6E8;
  *(v1 + 3144) = 0;
  *(v1 + 3128) = 0u;
  *(v1 + 3152) = 0u;
  *(v1 + 3168) = 0;
  *(v1 + 3176) = 0u;
  *(v1 + 3192) = 0;
  *(v1 + 3200) = 0u;
  *(v1 + 3216) = 0x7FF8000000000000;
  *(v1 + 3224) = 0u;
  *(v1 + 3240) = 0;
  *(v1 + 3248) = 0u;
  *(v1 + 3264) = 0;
  *(v1 + 3272) = 0u;
  *(v1 + 3288) = 0;
  *(v1 + 3296) = 0u;
  *(v1 + 3312) = 0x7FF8000000000000;
  *(v1 + 3320) = 0;
  *(v1 + 3328) = v3;
  *(v1 + 3344) = v3;
  *(v1 + 3360) = v3;
  *(v1 + 3376) = v3;
  *(v1 + 3392) = 0x7FF8000000000000;
  *(v1 + 3400) = 0;
  *(v1 + 3408) = v3;
  *(v1 + 3424) = v3;
  *(v1 + 3440) = v3;
  *(v1 + 3456) = v3;
  *(v1 + 3472) = 0x7FF8000000000000;
  *(v1 + 3504) = 0;
  *(v1 + 3496) = 0;
  *(v1 + 3480) = 0u;
  return result;
}

uint64_t sub_1D0DE2334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x400000004;
  *a1 = &unk_1F4CDEB70;
  *(a1 + 8) = xmmword_1D0E7DCD0;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

uint64_t sub_1D0DE23BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x300000004;
  *a1 = &unk_1F4CDEC00;
  *(a1 + 8) = xmmword_1D0E7DCF0;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

BOOL raven::RavenPassThroughEstimator::CanPublishRavenSolution(raven::RavenPassThroughEstimator *this)
{
  if (*(this + 3504) != 1)
  {
    return 0;
  }

  v5 = v1;
  v6 = v2;
  v4 = *(this + 179);
  return sub_1D0B7CF88(&v4, this + 436);
}

uint64_t raven::RavenPassThroughEstimator::Initialize(_BYTE *a1)
{
  (*(*a1 + 168))(a1);
  a1[58] = 1;
  return 0;
}

void raven::RavenPassThroughEstimator::Reset(raven::RavenPassThroughEstimator *this)
{
  *&v3[17] = 0;
  *&v3[12] = 0;
  memset(v3, 0, 88);
  *(&v3[5] + 1) = 0x7FF8000000000000;
  memset(&v3[6], 0, 88);
  *(&v3[11] + 1) = 0x7FF8000000000000;
  v2 = vdupq_n_s64(0x7FF8000000000000uLL);
  *(&v3[12] + 8) = v2;
  *(&v3[13] + 8) = v2;
  *(&v3[14] + 8) = v2;
  *(&v3[15] + 8) = v2;
  *(&v3[16] + 1) = 0x7FF8000000000000;
  *(&v3[17] + 8) = v2;
  *(&v3[18] + 8) = v2;
  *(&v3[19] + 8) = v2;
  *(&v3[20] + 8) = v2;
  *(&v3[21] + 1) = 0x7FF8000000000000;
  memcpy(this + 2768, v3, 0x160uLL);
  *&v3[17] = 0;
  *&v3[12] = 0;
  memset(v3, 0, 88);
  *(&v3[5] + 1) = 0x7FF8000000000000;
  memset(&v3[6], 0, 88);
  *(&v3[11] + 1) = 0x7FF8000000000000;
  *(&v3[12] + 8) = v2;
  *(&v3[13] + 8) = v2;
  *(&v3[14] + 8) = v2;
  *(&v3[15] + 8) = v2;
  *(&v3[16] + 1) = 0x7FF8000000000000;
  *(&v3[17] + 8) = v2;
  *(&v3[18] + 8) = v2;
  *(&v3[19] + 8) = v2;
  *(&v3[20] + 8) = v2;
  *(&v3[21] + 1) = 0x7FF8000000000000;
  memcpy(this + 3128, v3, 0x160uLL);
  *(this + 3480) = 0u;
  *(this + 437) = 0xFFF0000000000000;
  *(this + 3504) = 0;
  raven::RavenEstimator::Reset(this);
}

__n128 raven::RavenPassThroughEstimator::SetLastSolutionOutputTime(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[218] = *a2;
  return result;
}

void sub_1D0DE2784(void *a1)
{
  *a1 = &unk_1F4CEB1D8;
  sub_1D0D4FA90(a1);

  JUMPOUT(0x1D387ECA0);
}

raven::GnssReceiverBandCorrectionsManager *raven::GnssReceiverBandCorrectionsManager::GnssReceiverBandCorrectionsManager(raven::GnssReceiverBandCorrectionsManager *this)
{
  return raven::GnssReceiverBandCorrectionsManager::GnssReceiverBandCorrectionsManager(this, 0);
}

{
  return raven::GnssReceiverBandCorrectionsManager::GnssReceiverBandCorrectionsManager(this, 0);
}

raven::GnssReceiverBandCorrectionsManager *raven::GnssReceiverBandCorrectionsManager::GnssReceiverBandCorrectionsManager(raven::GnssReceiverBandCorrectionsManager *this, const raven::RavenParameters *a2)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 1) = this + 16;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 880) = 0;
  *(this + 111) = 0;
  *(this + 113) = 0;
  *(this + 112) = 0;
  *(this + 5) = 0;
  *(this + 48) = 0;
  raven::GnssReceiverBandCorrectionsManager::Configure(this, a2);
  return this;
}

void sub_1D0DE2848(_Unwind_Exception *a1)
{
  sub_1D0DE2FC0((v1 + 40), 0);
  sub_1D0DE2F74(v3, 0);
  sub_1D0BCB540(v2, *(v1 + 16));
  _Unwind_Resume(a1);
}

const raven::RavenParameters **raven::GnssReceiverBandCorrectionsManager::Configure(const raven::RavenParameters **this, const raven::RavenParameters *a2)
{
  *this = a2;
  if (a2)
  {
    if (*(a2 + 551) == 1)
    {
      operator new();
    }

    if (*(a2 + 576) == 1)
    {
      operator new();
    }
  }

  return this;
}

void *raven::GnssReceiverBandCorrectionsManager::RemoveConstellationClockOffset(void *result, uint64_t *a2)
{
  v2 = (result + 1);
  v3 = *result;
  if (*result != result + 1)
  {
    v5 = a2 + 4;
    v6 = a2 + 2;
    v7 = a2 + 3;
    v8 = a2 + 1;
    do
    {
      v9 = *(v3 + 40);
      v10 = 0.0;
      if (v9 > 6)
      {
        if (v9 - 7 < 2)
        {
          result = sub_1D0C35D78(a2);
          v11 = v7;
          if ((result & 1) == 0)
          {
            goto LABEL_16;
          }

LABEL_15:
          v10 = *(*v11 + 16);
          goto LABEL_16;
        }

        if (v9 == 10)
        {
          result = sub_1D0C35E68(a2);
          v11 = v5;
          if (result)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        if (v9 - 4 < 3)
        {
          result = sub_1D0C35DF0(a2);
          v11 = v6;
          if ((result & 1) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }

        if (v9 == 3)
        {
          result = sub_1D0C35D08(a2);
          v11 = v8;
          if (result)
          {
            goto LABEL_15;
          }
        }
      }

LABEL_16:
      v3[6] = v10 + v3[6];
      v12 = *(v3 + 1);
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = *(v3 + 2);
          v14 = *v13 == v3;
          v3 = v13;
        }

        while (!v14);
      }

      v3 = v13;
    }

    while (v13 != v2);
  }

  return result;
}