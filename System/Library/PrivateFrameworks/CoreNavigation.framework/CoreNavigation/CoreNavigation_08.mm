void sub_1D0BF61C8(uint64_t a1, raven::RavenMapVectorActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B9FD10(v4, a3);
  raven::RavenMapVectorActiveObject::HandleEvent(v3, v4);
}

uint64_t raven::RavenPositionContextEstimator::PopulateEvent(raven::RavenPositionContextEstimator *this, raven::PositionContextStateEvent *a2)
{
  if ((*(this + 1) & 1) == 0)
  {
    v12 = 12;
    v11 = 2;
    cnprint::CNLogFormatter::FormatWarning((this + 424), "RavenPositionContextEstimator::PopulateEvent(),estimator is not configured");
    cnprint::CNPrinter::Print(&v12, &v11, "%s");
    return 0xFFFFFFFFLL;
  }

  if ((*this & 1) == 0)
  {
    v10 = 12;
    v9 = 2;
    cnprint::CNLogFormatter::FormatWarning((this + 424), "RavenPositionContextEstimator::PopulateEvent(),estimator is not initialized");
    cnprint::CNPrinter::Print(&v10, &v9, "%s");
    return 0xFFFFFFFFLL;
  }

  *(a2 + 104) = *(this + 400);
  *(a2 + 7) = *(this + 408);
  if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v8 = 12;
    v7 = 1;
    v4 = cnprint::CNLogFormatter::FormatGeneral(this + 424, a2 + 8, "RavenPositionContextEstimator::PopulateEvent(),estimated_state,%u,prob_indoor,%.3lf,prob_outdoor,%.3lf", *(a2 + 104), *(a2 + 14), *(a2 + 15));
    if (*(this + 447) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *(this + 53);
    }

    cnprint::CNPrinter::Print(&v8, &v7, "%s", v5);
  }

  return 0;
}

void sub_1D0BF638C(cnprint::CNPrinter *a1, uint64_t a2)
{
  v4 = *a1;
  if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    v9 = 12;
    v8 = 1;
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    v6 = cnprint::CNLogFormatter::FormatGeneral(v4 + 2712, a1 + 8, "Could not initialize - %s", v5);
    if (*(v4 + 2735) >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = *(v4 + 2712);
    }

    cnprint::CNPrinter::Print(&v9, &v8, "%s", v7);
  }
}

uint64_t raven::RavenIonosphereEstimator::IsSane(raven::RavenIonosphereEstimator *this)
{
  if (!*(this + 9))
  {
    return 0;
  }

  v2 = 1088;
  if (!*(this + 1567))
  {
    v2 = 8;
  }

  v14 = 0x10000000ALL;
  v12 = &unk_1F4CEAE48;
  v13 = xmmword_1D0E87BE0;
  v15 = &v16;
  sub_1D0B894B0(&v12, this + v2 + 4088);
  v4 = *v15;
  v5 = v15[1];
  v6 = *(this + 504);
  if (*v15 >= *(v6 + 3112) && v4 <= *(v6 + 3120) && v5 >= 0.0)
  {
    return 1;
  }

  if (cnprint::CNPrinter::GetLogLevel(v3) <= 1)
  {
    v11 = 12;
    v10 = 1;
    v7 = cnprint::CNLogFormatter::FormatGeneral(this + 4040, this + 32, "Sanity failure,thin-shell height,%.1lf,vtec0,%.1lf", v4, v5);
    if (*(this + 4063) >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = *(this + 505);
    }

    cnprint::CNPrinter::Print(&v11, &v10, "%s", v8);
  }

  return 0;
}

uint64_t sub_1D0BF656C(uint64_t a1)
{
  v1 = *(a1 + 2176);
  if (v1 == 2)
  {
    return 1;
  }

  if (v1 != 1)
  {
    if (!*(a1 + 2176))
    {
      (*(*a1 + 40))(v6, a1);
      v24 = 0xA0000000ALL;
      v22 = &unk_1F4CE2180;
      v23 = xmmword_1D0E84630;
      v25 = &v26;
      v19 = 0xA0000000ALL;
      v17 = &unk_1F4CE2180;
      v18 = xmmword_1D0E84630;
      v20 = &v21;
      v14 = 0x10000000ALL;
      v13 = xmmword_1D0E87BE0;
      v12 = &unk_1F4CED1E8;
      v15 = &v16;
      v9 = 0x100000884;
      v11 = 0;
      v7 = &unk_1F4CED278;
      v10 = 0;
      v8 = xmmword_1D0EA1290;
      sub_1D0E1ADFC(&v7);
    }

    LOWORD(v22) = 2;
    LOBYTE(v17) = 5;
    v4 = cnprint::CNLogFormatter::FormatGeneral((a1 + 2344), "LeastSquaresEstimator::IsObservable called with unexpected observability state %hhu", v1);
    if (*(a1 + 2367) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *(a1 + 2344);
    }

    cnprint::CNPrinter::Print(&v22, &v17, "%s", v5);
  }

  return 0;
}

uint64_t raven::RavenIonosphereEstimator::IsConverged(raven::RavenIonosphereEstimator *this)
{
  if (*(this + 9) != 1)
  {
    return 0;
  }

  v9 = v1;
  v10 = v2;
  result = raven::RavenIonosphereEstimator::IsSane(this);
  if (result)
  {
    if (*(this + 9))
    {
      result = sub_1D0BF656C(this + 4088);
      if (!result)
      {
        return result;
      }

      sub_1D0BF22F0(this + 4088, v6);
      v5 = *(this + 504);
      if (*v8 <= v5[373] * v5[373] && v8[v7 + 1] <= v5[374] * v5[374] && v8[2 * v7 + 2] <= v5[375] * v5[375] && v8[3 * v7 + 3] <= v5[376] * v5[376] && v8[4 * v7 + 4] <= v5[377] * v5[377] && v8[5 * v7 + 5] <= v5[378] * v5[378] && v8[6 * v7 + 6] <= v5[379] * v5[379] && v8[7 * v7 + 7] <= v5[380] * v5[380] && v8[8 * v7 + 8] <= v5[381] * v5[381])
      {
        return v8[9 * v7 + 9] <= v5[382] * v5[382];
      }
    }

    return 0;
  }

  return result;
}

void sub_1D0BF69A8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v4 = *(a2 + 24);
  }

  else
  {
    LOWORD(v14.__vftable) = 3;
    LOBYTE(v12) = 5;
    cnprint::CNPrinter::Print(&v14, &v12, "Attempted to access type of uninitialized GenericEvent.");
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
    if (v9 != (off_1F4CEF2E0 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v9, (off_1F4CEF2E0 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v14.__vftable = 0;
      std::bad_cast::bad_cast(&v14);
      v14.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C(&v14);
    }

    v10 = *(a2 + 16);
    *a1 = &unk_1F4CEF2B8;

    memcpy((a1 + 8), (v10 + 16), 0x334uLL);
  }

  else
  {
    v12 = 3;
    v11 = 5;
    if (*(a2 + 8) == 1)
    {
      v7 = *(a2 + 24);
    }

    else
    {
      LOWORD(v14.__vftable) = 3;
      v13 = 5;
      cnprint::CNPrinter::Print(&v14, &v13, "Attempted to access type of uninitialized GenericEvent.");
      v7 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v12, &v11, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEF2E0 & 0x7FFFFFFFFFFFFFFFLL));
    bzero((a1 + 24), 0x328uLL);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEF2B8;
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
    *(a1 + 105) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    v8 = vdupq_n_s64(0x7FF8000000000000uLL);
    *(a1 + 128) = v8;
    *(a1 + 144) = 0x7FF8000000000000;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = v8;
    *(a1 + 184) = v8;
    *(a1 + 200) = v8;
    *(a1 + 216) = v8;
    *(a1 + 232) = v8;
    *(a1 + 248) = v8;
    *(a1 + 264) = 0x7FF8000000000000;
    *(a1 + 272) = 0x7FF8000000000000;
    *(a1 + 280) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 360) = 0;
    *(a1 + 368) = 0x7FF8000000000000;
    *(a1 + 384) = 0u;
    *(a1 + 400) = 0u;
    *(a1 + 416) = 0u;
  }
}

void sub_1D0BF6C44(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0BF2DF0(v11, a3);
  if (*(v3 + 224) == 1)
  {
    *v16 = *(v3 + 112);
    raven::GnssMeasurementPreprocessor::UpdateCurrentFrameworkTime((v3 + 232), v16);
    if (raven::GnssMeasurementPreprocessor::HandleEvent((v3 + 232), v11))
    {
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      memset(v59, 0, sizeof(v59));
      v60 = 0;
      v50[1] = 0;
      v50[2] = 0;
      v50[0] = &unk_1F4CEF598;
      v51 = 0;
      if (raven::GnssMeasurementPreprocessor::GetPreprocessedGnssMeasurements((v3 + 232), v50))
      {
        sub_1D0C4499C(v3, v50);
      }

      v32[2] = 0;
      v32[0] = &unk_1F4CEE9A8;
      v32[1] = 0;
      v33 = 0;
      v35 = 0;
      v34 = 0;
      v36 = 0;
      v38 = 0;
      v37 = 0;
      v39 = 0;
      v41 = 0;
      v40 = 0;
      v42 = 0x7FF8000000000000;
      v43 = 0;
      v44 = 0u;
      v45 = 0u;
      v46 = 0;
      v49 = 0;
      v47 = 0;
      v48 = 0;
      if (raven::GnssMeasurementPreprocessor::GetGpsUTCParametersEvent((v3 + 232), v32))
      {
        sub_1D0B9B7B4(v3, v32);
      }

      v17 = 0.0;
      v16[0] = &unk_1F4CEE030;
      v16[1] = 0;
      LOBYTE(v18) = 0;
      *&v19 = 0;
      *(&v18 + 1) = 0;
      BYTE8(v19) = 0;
      v20 = 0uLL;
      LOBYTE(v21) = 0;
      v22 = 0;
      *(&v21 + 1) = 0;
      v23 = 0x7FF8000000000000;
      v24 = 0;
      v25 = 0;
      v26 = &unk_1F4CD5A50;
      v27 = 0u;
      v28 = 0u;
      v29 = xmmword_1D0E76640;
      v30 = xmmword_1D0E76650;
      v31 = 0;
      if (raven::GnssMeasurementPreprocessor::GetKlobucharParametersEvent((v3 + 232), v16))
      {
        v5 = *(v3 + 112);
        v4 = *(v3 + 120);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v16[1] = v5;
        v17 = v4;
        v22 = 0;
        v23 = 0x7FF8000000000000;
        v15 = 12;
        v14 = 2;
        sub_1D0B751F4(__p, "KlobucharParametersEvent");
        if (v13 >= 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = __p[0];
        }

        cnprint::CNPrinter::Print(&v15, &v14, "t,%.3lf,RavenGnssPreprocessorActiveObject, Raising event - %s.", v5 + v4, v6);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }

        sub_1D0C47D0C(v3, v16);
      }

      v50[0] = &unk_1F4CEF598;
      v16[0] = &v59[4];
      sub_1D0BBBD80(v16);
    }

    else
    {
      LOWORD(v32[0]) = 12;
      LOBYTE(v50[0]) = 2;
      v7 = (*(v11[0] + 16))(v11);
      v9 = v8 + v7;
      (*(v11[0] + 24))(v16, v11);
      if (v17 >= 0.0)
      {
        v10 = v16;
      }

      else
      {
        v10 = v16[0];
      }

      cnprint::CNPrinter::Print(v32, v50, "t,%.3lf,RavenGnssPreprocessorActiveObject Failed to handle event - %s.", v9, v10);
      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16[0]);
      }
    }
  }
}

void sub_1D0BF6FEC(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x367]) < 0)
  {
    operator delete(STACK[0x350]);
  }

  *(v2 - 184) = v1;
  STACK[0x370] = v2 - 88;
  sub_1D0BBBD80(&STACK[0x370]);
  _Unwind_Resume(a1);
}

uint64_t raven::RavenIntegrityEstimator::HandleEvent(raven::RavenIntegrityEstimator *this, const raven::RavenSolutionEvent *a2, raven::RavenSolutionEvent *a3)
{
  v5 = raven::SolutionChecker::HandleEvent(*(this + 211), a2, a3);
  if (!v5)
  {
    v9 = *(a3 + 208);
    if (*(a3 + 209) == 2)
    {
      if (!sub_1D0B9AF58(this + 4, &v9))
      {
        goto LABEL_6;
      }

      v6 = sub_1D0B9AF58(this + 4, &v9);
      if (!v6)
      {
        sub_1D0C543A8("unordered_map::at: key not found");
      }

      if (sub_1D0B8E6A8(a3 + 146, v6 + 149))
      {
LABEL_6:
        v10 = &v9;
        v7 = sub_1D0BF5758(this + 8, &v9);
        memcpy(v7 + 4, a3 + 8, 0xA51uLL);
      }
    }
  }

  return v5;
}

BOOL raven::SolutionChecker::GetListOfEstimatorsToCheckAgainst(uint64_t a1, _BYTE *a2, void *a3)
{
  if (*a2 != 1)
  {
    v6 = *(a1 + 16);
    v12 = 1;
    if (sub_1D0B9AF58((v6 + 16), &v12))
    {
      v11 = 1;
      sub_1D0BF71E4(a3, &v11);
    }

    if (*a2 == 3)
    {
      v7 = *(a1 + 16);
      v10 = 2;
      if (sub_1D0B9AF58((v7 + 16), &v10))
      {
        v9 = 2;
        sub_1D0BF71E4(a3, &v9);
      }
    }
  }

  return *a3 == a3[1];
}

void sub_1D0BF71E4(uint64_t a1, char *a2)
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
      sub_1D0C5663C();
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

uint64_t raven::SolutionChecker::PerformSpeedCheck(raven::SolutionChecker *this, raven::RavenSolutionEvent *a2, BOOL *a3)
{
  v5 = *(a2 + 208);
  v69[0] = *(a2 + 208);
  if ((*(a2 + 1344) & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      LOWORD(v66) = 12;
      LOBYTE(v63[0]) = 1;
      v12 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v66, v63, "t,%.3lf,SolutionChecker: est, %u. RavenSolution under test has speed marked invalid. Exiting with check passed return value. Continuing with remaining checks.", v13 + v12, v5);
    }

    v10 = 0;
    *a3 = 1;
    return v10;
  }

  v66 = 0;
  v67 = 0;
  v68 = 0;
  v7 = raven::SolutionChecker::GetListOfEstimatorsToCheckAgainst(this, v69, &v66);
  if (v7)
  {
    if (cnprint::CNPrinter::GetLogLevel(v7) <= 1)
    {
      LOWORD(v63[0]) = 12;
      v65 = 1;
      v8 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(v63, &v65, "t,%.3lf,SolutionChecker: Could not find any RavenSolutions to perform the speed check against. Exiting with check passed return value.", v9 + v8);
    }

    v10 = 0;
    *a3 = 0;
    v11 = v66;
    if (v66)
    {
      goto LABEL_66;
    }

    return v10;
  }

  v14 = v67;
  __p = v66;
  if (v66 == v67)
  {
LABEL_57:
    v10 = 0;
    v11 = __p;
    *a3 = 1;
    if (__p)
    {
      goto LABEL_66;
    }

    return v10;
  }

  v15 = v66;
  while (1)
  {
    v65 = *v15;
    v16 = sub_1D0B9AF58((*(this + 2) + 16), &v65);
    v17 = v16;
    if (!v16)
    {
      sub_1D0C543A8("unordered_map::at: key not found");
    }

    v18 = *(v16 + 172);
    if (!*(v16 + 1368) || (*&v18 > -1 ? (v19 = ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) : (v19 = 1), v19 ? (v20 = (*&v18 - 1) >= 0xFFFFFFFFFFFFFLL) : (v20 = 0), v20 ? (v21 = (*&v18 & 0x7FFFFFFFFFFFFFFFLL) == 0) : (v21 = 1), !v21))
    {
      if (cnprint::CNPrinter::GetLogLevel(v16) <= 1)
      {
        LOWORD(v63[0]) = 12;
        v64 = 1;
        v41 = (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(v63, &v64, "t,%.3lf,SolutionChecker: est, %u. solution_to_check_against has an invalid speed,validity,%d,speed,%.2lf. Cannot proceed with speed check. Marking the RavenSolution as unhealthy. Exiting with check passed return value.", v42 + v41, v5, *(v17 + 1368), v18);
      }

LABEL_61:
      v43 = 0;
      v10 = 0;
      *(a2 + 209) = 1;
      goto LABEL_65;
    }

    v22 = *(v16 + 176);
    if ((*&v22 <= -1 || ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v22 - 1) >= 0xFFFFFFFFFFFFFLL)
    {
      LOWORD(v63[0]) = 12;
      v64 = 4;
      v44 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(v63, &v64, "t,%.3lf,SolutionChecker: est, %u. solution_to_check_against has a non-finite or non-positive user speed covariance diagonal term, pss, %.2lf. Marking the RavenSolution as unhealthy. Exiting with check passed return value.", v45 + v44, v5, v22);
      v43 = 0;
      v10 = 0;
      *(a2 + 209) = 1;
      goto LABEL_65;
    }

    v25 = *(a2 + 173);
    if ((*&v25 <= -1 || ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v25 - 1) >= 0xFFFFFFFFFFFFFLL)
    {
      LOWORD(v63[0]) = 12;
      v64 = 4;
      v46 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(v63, &v64, "t,%.3lf,SolutionChecker: est, %u. RavenSolution under test has a non-finite or non-positive user speed covariance diagonal term, pss, %.2lf. Exiting with check failed return value.", v47 + v46, v5, v25);
      goto LABEL_64;
    }

    v28 = *(a2 + 169);
    if ((*&v28 <= -1 || ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v28 - 1) >= 0xFFFFFFFFFFFFFLL && (*&v28 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      LOWORD(v63[0]) = 12;
      v64 = 4;
      v48 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(v63, &v64, "t,%.3lf,SolutionChecker: est, %u. RavenSolution under test has an invalid speed value despite being marked as valid,%.2lf. Exiting with check failed return value.", v49 + v48, v5, v28);
LABEL_64:
      v43 = 0;
      v10 = 0xFFFFFFFFLL;
      goto LABEL_65;
    }

    v32 = (this + 88);
    if (v65 != 1)
    {
      v32 = (this + 80);
      if (v65 != 2)
      {
        LOWORD(v63[0]) = 12;
        v64 = 4;
        v51 = (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(v63, &v64, "t,%.3lf,SolutionChecker: invalid estimator to check against during speed check, exiting with check passed return value and continuing other checks", v52 + v51);
        v10 = 0;
        v43 = 1;
        goto LABEL_65;
      }
    }

    v33 = *v32;
    LogLevel = cnprint::CNPrinter::GetLogLevel(v16);
    v37 = vabdd_f64(v18, v28);
    v38 = v37 / sqrt(v22 + v25);
    if (!LogLevel)
    {
      LOWORD(v63[0]) = 12;
      v64 = 0;
      v39 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(v63, &v64, "t,%.3lf,SolutionChecker: est, %u. speed_difference_from_solution_to_check_against check results, difference, %.2lf, tolerance, %.2lf, consistency, %.2lf, threshold, %.2lf, solution_to_check_against_var, %.2lf, sol_var, %.2lf.", v40 + v39, v5, v37, v33, v38, *(this + 8), v22, v25);
    }

    if (v37 > v33)
    {
      v35.i64[0] = *(this + 8);
      if (v38 > *v35.i64)
      {
        break;
      }
    }

    v15 = (v15 + 1);
    if (v15 == v14)
    {
      goto LABEL_57;
    }
  }

  v53 = *(this + 2);
  if (*(v53 + 1520) == 1)
  {
    LogLevel = CNTimeSpan::operator-(a2 + 1, (v53 + 1528), v35, v36);
    v63[0] = LogLevel;
    *&v63[1] = v54;
    if (LogLevel < 0 || (*v55.i64 = v54, v54 < 0.0))
    {
      LogLevel = CNTimeSpan::operator-(v63, v55, v56);
      v55.i64[0] = v57;
    }

    if (*v55.i64 + LogLevel < 10.0)
    {
      if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
      {
        LOWORD(v63[0]) = 12;
        v64 = 1;
        v58 = (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(v63, &v64, "t,%.3lf,SolutionChecker: est, %u. speed_difference_from_solution_to_check_against check failed after recently exiting tunnel, difference, %.2lf,tolerance, %.2lf, consistency, %.2lf, threshold, %.2lf, solution_to_check_against_user_speed_unc, %.2lf, sol_user_speed_unc, %.2lf. Marking the RavenSolution as unhealthy. Exiting with check passed return value.", v59 + v58, v5, v37, v33, v38, *(this + 8), sqrt(v22), sqrt(v25));
      }

      goto LABEL_61;
    }
  }

  if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
  {
    LOWORD(v63[0]) = 12;
    v64 = 1;
    v60 = (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(v63, &v64, "t,%.3lf,SolutionChecker: est, %u. speed_difference_from_solution_to_check_against check failed, difference, %.2lf, tolerance, %.2lf, consistency, %.2lf, threshold, %.2lf, user_speed_uncertainty_of_solution_to_check_against, %.2lf, sol_user_speed_unc, %.2lf. Exiting with check failed return value.", v61 + v60, v5, v37, v33, v38, *(this + 8), sqrt(v22), sqrt(v25));
  }

  v43 = 0;
  v10 = 0xFFFFFFFFLL;
LABEL_65:
  v11 = __p;
  *a3 = v43;
  if (__p)
  {
LABEL_66:
    operator delete(v11);
  }

  return v10;
}

void sub_1D0BF7A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::SolutionChecker::PerformDirectionOfTravelCheck(raven::SolutionChecker *this, raven::RavenSolutionEvent *a2, BOOL *a3)
{
  v5 = *(a2 + 208);
  v91[0] = *(a2 + 208);
  if ((*(a2 + 1345) & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      LOWORD(v88) = 12;
      LOBYTE(v85[0]) = 1;
      v12 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v88, v85, "t,%.3lf,SolutionChecker: est, %u. RavenSolution under test DOT invalid. Cannot perform direction of travel check.", v13 + v12, v5);
    }

    v10 = 0;
    *a3 = 1;
    return v10;
  }

  v88 = 0;
  v89 = 0;
  v90 = 0;
  v7 = raven::SolutionChecker::GetListOfEstimatorsToCheckAgainst(this, v91, &v88);
  if (v7)
  {
    if (cnprint::CNPrinter::GetLogLevel(v7) <= 1)
    {
      LOWORD(v85[0]) = 12;
      v87 = 1;
      v8 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(v85, &v87, "t,%.3lf,SolutionChecker: Could not find any RavenSolutions to perform the direction of travel check against. Exiting with check passed return value.", v9 + v8);
    }

    v10 = 0;
    *a3 = 0;
    v11 = v88;
    if (!v88)
    {
      return v10;
    }

LABEL_72:
    operator delete(v11);
    return v10;
  }

  v11 = v88;
  v14 = v89;
  if (v88 == v89)
  {
LABEL_71:
    v10 = 0;
    *a3 = 1;
    if (!v11)
    {
      return v10;
    }

    goto LABEL_72;
  }

  v15 = v88;
  while (1)
  {
    v87 = *v15;
    LogLevel = sub_1D0B9AF58((*(this + 2) + 16), &v87);
    if (!LogLevel)
    {
      sub_1D0C543A8("unordered_map::at: key not found");
    }

    if ((*(LogLevel + 1369) & 1) == 0)
    {
      if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
      {
        LOWORD(v85[0]) = 12;
        v86 = 1;
        v55 = (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(v85, &v86, "t,%.3lf,SolutionChecker: est, %u. Solution to check against has DOT invalid. Cannot perform direction of travel check.", v56 + v55, v5);
      }

      goto LABEL_71;
    }

    v17 = *(LogLevel + 173);
    v18 = *(LogLevel + 174);
    v19 = *(LogLevel + 175);
    v20 = (*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (LogLevel[174] & 0x7FFFFFFFFFFFFFFFLL) >= 0x7FF0000000000000;
    if (v20 || (LogLevel[175] & 0x7FFFFFFFFFFFFFFFLL) >= 0x7FF0000000000000)
    {
      LOWORD(v85[0]) = 12;
      v86 = 4;
      v57 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(v85, &v86, "t,%.3lf,SolutionChecker: est, %u. solution_to_check_against direction of travel element is non-finite, %.2lf, %.2lf, %.2lf. Marking the RavenSolution as unhealthy. Exiting with check passed return value.", v58 + v57, v5, v17, v18, v19);
      goto LABEL_63;
    }

    v21 = *(LogLevel + 180);
    v22 = *(LogLevel + 183);
    v23 = *(LogLevel + 185);
    v26 = (v21 < 0.0 || ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&v21 - 1) > 0xFFFFFFFFFFFFELL || (LogLevel[183] & 0x7FFFFFFFFFFFFFFFLL) >= 0x7FF0000000000000;
    if (v26 || (v22 > 0.0 ? (v27 = (LogLevel[185] & 0x7FFFFFFFFFFFFFFFLL) >= 0x7FF0000000000000) : (v27 = 1), v27 || v23 <= 0.0))
    {
      LOWORD(v85[0]) = 12;
      v86 = 4;
      v59 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(v85, &v86, "t,%.3lf,SolutionChecker: est, %u. solution_to_check_against has a non-finite or non-positive user DOT covariance diagonal term, pevxevx, %.2lf, pevyevy, %.2lf, pevzpevz, %.2lf. Marking the RavenSolution as unhealthy. Exiting with check passed return value.", v60 + v59, v5, v21, v22, v23);
      goto LABEL_63;
    }

    v28 = sqrt(v18 * v18 + v17 * v17 + v19 * v19);
    if (fabs(v28) <= 0.000000015)
    {
      LOWORD(v85[0]) = 12;
      v86 = 4;
      v61 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(v85, &v86, "t,%.3lf,SolutionChecker: est, %u. solution_to_check_against direction of travel vector is equal to zero, %.2lf. Marking the RavenSolution as unhealthy. Exiting with check passed return value.", v62 + v61, v5, v28);
LABEL_63:
      v10 = 0;
      *(a2 + 209) = 1;
      *a3 = 0;
      if (v11)
      {
        goto LABEL_72;
      }

      return v10;
    }

    if (fabs(v28 + -1.0) > 0.000000015)
    {
      LogLevel = cnprint::CNPrinter::GetLogLevel(LogLevel);
      if (LogLevel <= 1)
      {
        LOWORD(v85[0]) = 12;
        v86 = 1;
        v29 = (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(v85, &v86, "WARNING: t,%.3lf,SolutionChecker: est, %u. solution_to_check_against direction of travel vector is not of unit length, %.2lf. Will proceed normally, but this is unexpected.", v30 + v29, v5, v28);
      }
    }

    v83 = v22;
    v84 = v28;
    v31 = v19;
    v82 = v23;
    v32 = v18;
    v33 = v21;
    v34 = *(a2 + 170);
    v35 = *(a2 + 171);
    v36 = *(a2 + 172);
    if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a2 + 171) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*(a2 + 172) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      LOWORD(v85[0]) = 12;
      v86 = 4;
      v63 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(v85, &v86, "t,%.3lf,SolutionChecker: est, %u. RavenSolution under test direction of travel element is non-finite, %.2lf, %.2lf, %.2lf. Exiting with check failed return value.", v64 + v63, v5, v34, v35, v36);
LABEL_67:
      *a3 = 0;
      goto LABEL_68;
    }

    v37 = sqrt(v35 * v35 + v34 * v34 + v36 * v36);
    if (fabs(v37) <= 0.000000015)
    {
      LOWORD(v85[0]) = 12;
      v86 = 4;
      v65 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(v85, &v86, "t,%.3lf,SolutionChecker: est, %u. RavenSolution under test direction of travel vector is equal to zero, %.2lf. Exiting with check failed return value.", v66 + v65, v5, v37);
      goto LABEL_67;
    }

    v80 = *(a2 + 180);
    v81 = *(a2 + 177);
    v79 = *(a2 + 182);
    if (fabs(v37 + -1.0) > 0.000000015 && cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
    {
      LOWORD(v85[0]) = 12;
      v86 = 1;
      v38 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(v85, &v86, "t,%.3lf,SolutionChecker: est, %u. RavenSolution under test direction of travel vector is not of unit length, %.2lf. Will proceed normally, but this is unexpected.", v39 + v38, v5, v37);
    }

    v40 = (v32 * v35 + v17 * v34 + v31 * v36) / (v84 * v37);
    v41 = -1.0;
    if (v40 >= -1.0)
    {
      v41 = (v32 * v35 + v17 * v34 + v31 * v36) / (v84 * v37);
    }

    if (v40 <= 1.0)
    {
      v42 = v41;
    }

    else
    {
      v42 = 1.0;
    }

    v43 = acos(v42);
    v45 = cnprint::CNPrinter::GetLogLevel(v44);
    v47 = (v33 + v83 + v82) / (v84 * v84) * 3282.80635;
    *v48.i64 = v37 * v37;
    v49 = (v81 + v80 + v79) / (v37 * v37) * 3282.80635;
    v50 = v43 * 57.2957795;
    v51 = sqrt(v47 + v49);
    if (!v45)
    {
      LOWORD(v85[0]) = 12;
      v86 = 0;
      v52 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(v85, &v86, "t,%.3lf,SolutionChecker: est, %u. direction_of_travel_difference check results, difference, %.2lf, difference uncertainty, %.2lf, consistency, %.2lf, threshold, %.2lf, dot_angle_variance_of_solution_to_check_against, %.2lf,dot_angle_variance_of_solution_under_test, %.2lf. Exiting with check failed return value.", v53 + v52, v5, v50, v51, v50 / v51, *(this + 9), v47, v49);
    }

    v54 = (this + 32);
    if (v87 != 1)
    {
      v54 = (this + 24);
      if (v87 != 2)
      {
        LOWORD(v85[0]) = 12;
        v86 = 4;
        v67 = (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(v85, &v86, "t,%.3lf,SolutionChecker: invalid estimator to check against during direction of travel check, exiting with check passed return value and continuing other checks", v68 + v67);
        goto LABEL_71;
      }
    }

    if (v50 > *v54)
    {
      v46.i64[0] = *(this + 9);
      if (v50 / v51 > *v46.i64)
      {
        break;
      }
    }

    if (++v15 == v14)
    {
      goto LABEL_71;
    }
  }

  v70 = *(this + 2);
  if (*(v70 + 1520) != 1)
  {
    goto LABEL_83;
  }

  v45 = CNTimeSpan::operator-(a2 + 1, (v70 + 1528), v46, v48);
  v85[0] = v45;
  *&v85[1] = v71;
  if (v45 < 0 || (*v72.i64 = v71, v71 < 0.0))
  {
    v45 = CNTimeSpan::operator-(v85, v72, v73);
    v72.i64[0] = v74;
  }

  if (*v72.i64 + v45 >= 10.0)
  {
LABEL_83:
    if (cnprint::CNPrinter::GetLogLevel(v45) <= 1)
    {
      LOWORD(v85[0]) = 12;
      v86 = 1;
      v77 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(v85, &v86, "t,%.3lf,SolutionChecker: est, %u. direction_of_travel_difference check failed, difference, %.2lf, difference uncertainty, %.2lf, consistency, %.2lf, threshold, %.2lf, solution_to_check_against_dot_angle_unc, %.2lf, sol_dot_angle_unc, %.2lf. Exiting with check failed return value.", v78 + v77, v5, v50, v51, v50 / v51, *(this + 9), sqrt(v47), sqrt(v49));
    }

LABEL_68:
    v10 = 0xFFFFFFFFLL;
    if (v11)
    {
      goto LABEL_72;
    }

    return v10;
  }

  if (cnprint::CNPrinter::GetLogLevel(v45) <= 1)
  {
    LOWORD(v85[0]) = 12;
    v86 = 1;
    v75 = (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(v85, &v86, "t,%.3lf,SolutionChecker: est, %u. direction_of_travel_difference check failed after recently exiting tunnel,difference, %.2lf, difference uncertainty, %.2lf, consistency, %.2lf, threshold, %.2lf, solution_to_check_against_dot_angle_unc, %.2lf,sol_dot_angle_unc, %.2lf. Marking the RavenSolution as unhealthy. Exiting with check passed return value.", v76 + v75, v5, v50, v51, v50 / v51, *(this + 9), sqrt(v47), sqrt(v49));
  }

  v10 = 0;
  *(a2 + 209) = 1;
  if (v11)
  {
    goto LABEL_72;
  }

  return v10;
}

void sub_1D0BF84BC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 184);
  if (v3)
  {
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0BF8520(uint64_t a1, raven::RavenDeltaVIOEstimateActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B9FD10(v6, a3);
  raven::RavenDeltaVIOEstimateActiveObject::HandleEvent(v3, v6, v4, v5);
}

void raven::RavenMapVectorActiveObject::HandleEvent(raven::RavenMapVectorActiveObject *this, const raven::RavenSolutionEvent *a2)
{
  if (*(this + 224))
  {
    if (*(a2 + 209) == 2 && *(a2 + 1744) == 1)
    {
      if (*(this + 1272) == 1)
      {
        v3 = this + 1288;
        v4 = a2 + 8;

        memcpy(v3, v4, 0xA51uLL);
      }

      else
      {
        *(this + 160) = &unk_1F4CEF7A8;
        memcpy(this + 1288, a2 + 8, 0xA51uLL);
        *(this + 1272) = 1;
      }
    }
  }

  else
  {
    v6 = 12;
    v5 = 2;
    cnprint::CNPrinter::Print(&v6, &v5, "RavenMapVectorActiveObject: not configured");
  }
}

void *sub_1D0BF8640(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  result = sub_1D0B9FD10(v5, a3);
  if (v6 == 4)
  {
    return memcpy((v3 + 288), v7, 0x360uLL);
  }

  return result;
}

uint64_t sub_1D0BF86BC(uint64_t result, int a2, int a3)
{
  *(result + 24) = 0x100000057;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CE04B8;
  if (a2 < 0)
  {
    v3 = "nr >= 0";
    v4 = 419;
    goto LABEL_6;
  }

  if (a3 < 0)
  {
    v3 = "nc >= 0";
    v4 = 420;
LABEL_6:
    __assert_rtn("CNMatrix", "cnmatrix.h", v4, v3);
  }

  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a3 * a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

void sub_1D0BF8804(uint64_t a1, int a2, int a3)
{
  *(a1 + 24) = 0x800000057;
  *a1 = &unk_1F4CEBC60;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = a3 * a2;
  *(a1 + 20) = a2;
  sub_1D0BF8784(a1);
}

void sub_1D0BF886C(_Unwind_Exception *exception_object)
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

void sub_1D0BF88B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B9FD10(v7, a3);
  if (*(v3 + 224))
  {
    if (*(v3 + 497) == 1 && *(v3 + 496) == 1)
    {
      raven::RavenMovingStateEstimator::HandleEvent(v3 + 280, v7);
    }
  }

  else
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

    cnprint::CNLogFormatter::FormatWarning(v3 + 232, v10, "Failed to handle event - %s.", v5);
    if (*(v3 + 255) >= 0)
    {
      v6 = (v3 + 232);
    }

    else
    {
      v6 = *(v3 + 232);
    }

    cnprint::CNPrinter::Print(&v12, &v11, "%s", v6);
    if (v9 < 0)
    {
      operator delete(v8[0]);
    }
  }
}

void sub_1D0BF89F4(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0BF8A30(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 12);
  if (v7 <= v8)
  {
    v9 = *(a1 + 12);
  }

  else
  {
    v9 = *(a1 + 8);
  }

  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10 && v9 == 6;
  if (v11 && ((v12 = *(a2 + 8), v13 = *(a2 + 12), v12 <= v13) ? (v14 = *(a2 + 12)) : (v14 = *(a2 + 8)), v12 ? (v15 = v13 == 0) : (v15 = 1), !v15 ? (v16 = v14 == 6) : (v16 = 0), v16))
  {
    v22 = *a3;
    v43 = 0x100000006;
    v41 = &unk_1F4CE0BF8;
    v44 = v45;
    v42 = xmmword_1D0E84530;
    memset(v45, 0, sizeof(v45));
    v38 = 0x100000008;
    v37 = xmmword_1D0E84530;
    v36 = &unk_1F4CE4320;
    v39 = &v40;
    v33 = 0x800000008;
    v31 = &unk_1F4CE43B0;
    v32 = xmmword_1D0E7F320;
    v34 = &v35;
    v28 = 0x600000008;
    v26 = &unk_1F4CEBBD0;
    v27 = xmmword_1D0E7F320;
    v29 = &v30;
    v23 = v22 * a7;
    v53 = 0x600000006;
    v51 = &unk_1F4CDF278;
    v54 = &v55;
    v52 = xmmword_1D0E7F320;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v55 = 0x3FF0000000000000;
    *&v59 = 0x3FF0000000000000;
    v63 = 0x3FF0000000000000;
    *&v67 = 0x3FF0000000000000;
    v71 = 0x3FF0000000000000;
    v75 = 0x3FF0000000000000;
    sub_1D0BA5090(&v76, &v51);
    v24 = HIDWORD(v77);
    v25 = v79;
    *&v79[24 * HIDWORD(v77)] = v23;
    *&v25[8 * ((4 * v24) | 1)] = v23;
    *&v25[40 * v24 + 16] = v23;
    v48 = 0x100000008;
    v47 = xmmword_1D0E84520;
    v46 = &unk_1F4CE4320;
    v49 = &v50;
    sub_1D0B89390(&v76, a1, &v46);
    v53 = 0x100000008;
    v52 = xmmword_1D0E84520;
    v51 = &unk_1F4CE4320;
    v54 = &v55;
    sub_1D0B88838(&v46, &v41, &v51);
    sub_1D0B894B0(&v36, &v51);
    sub_1D0B894B0(&v31, &v76);
    v53 = 0x600000006;
    v51 = &unk_1F4CDF278;
    v54 = &v55;
    v52 = xmmword_1D0E7F320;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v55 = 0x3FF0000000000000;
    *&v59 = 0x3FF0000000000000;
    v63 = 0x3FF0000000000000;
    *&v67 = 0x3FF0000000000000;
    v71 = 0x3FF0000000000000;
    v75 = 0x3FF0000000000000;
    sub_1D0B894B0(&v26, &v51);
    sub_1D0B894B0(a4, &v36);
    sub_1D0B894B0(a5, &v31);
    v78 = 0x600000006;
    v76 = &unk_1F4CDF278;
    v79 = v80;
    v77 = xmmword_1D0E7F320;
    memset(v80, 0, 288);
    sub_1D0B894B0(a6, &v76);
    return 0;
  }

  else
  {
    LOWORD(v76) = 12;
    LOBYTE(v31) = 4;
    cnprint::CNPrinter::Print(&v76, &v31, "in_SixStateNearlyConstantVelocity called with inadequate matrices.", a4, a5, a6, a7);
    return 0xFFFFFFFFLL;
  }
}

uint64_t raven::RavenMovingStateEstimator::HandleEvent(uint64_t this, const raven::RavenSolutionEvent *a2)
{
  if (*(a2 + 208) == 1 && *(a2 + 209) == 2 && *(a2 + 1344) != 0)
  {
    v5 = this;
    if (*(this + 4208) == 1)
    {
      v6 = memcpy((this + 1560), a2 + 8, 0xA51uLL);
    }

    else
    {
      *(this + 1552) = &unk_1F4CEF7A8;
      v6 = memcpy((this + 1560), a2 + 8, 0xA51uLL);
      *(v5 + 4208) = 1;
    }

    v7 = sqrt(*(a2 + 173));
    v8 = cnstatistics::NormalCDF(v6, *(a2 + 169), 0.25, 0.05);
    v9 = 1.0 - v8;
    if (*(v5 + 1040))
    {
      v10 = 1.0 - v8;
    }

    else
    {
      v10 = 0.01;
    }

    if (*(v5 + 1040))
    {
      v9 = 0.01;
    }

    v11 = *(a2 + 169);
    v12 = v7 + v7 >= v11 || v11 <= 5.0;
    v13 = 7.9;
    if (v12)
    {
      v13 = 0.0;
    }

    v14 = v13 * v10 + 0.1;
    v15 = v13 * v8 + 0.1;
    v16 = v13 * v9 + 0.1;
    v17 = v16 + v14 + v15;
    v18 = v14 / v17;
    v19 = v15 / v17;
    v20 = v16 / v17;
    this = (*(*a2 + 16))(a2);
    v21 = *(v5 + 208);
    *(v5 + 144) = sub_1D0BBABC4;
    *(v5 + 152) = 0;
    *(v5 + 160) = 0x7FF8000000000000;
    *(v5 + 168) = v18;
    *(v5 + 176) = v20;
    *(v5 + 184) = v19;
    *(v5 + 192) = this;
    *(v5 + 200) = v22;
    if ((v21 & 1) == 0)
    {
      *(v5 + 208) = 1;
    }
  }

  return this;
}

uint64_t sub_1D0BF9010(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 12);
  if (v7 <= v8)
  {
    v9 = *(a1 + 12);
  }

  else
  {
    v9 = *(a1 + 8);
  }

  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10 && v9 == 2;
  if (v11 && ((v12 = *(a2 + 8), v13 = *(a2 + 12), v12 <= v13) ? (v14 = *(a2 + 12)) : (v14 = *(a2 + 8)), v12 ? (v15 = v13 == 0) : (v15 = 1), !v15 ? (v16 = v14 == 2) : (v16 = 0), v16))
  {
    v22 = *a3;
    v41 = 0x100000002;
    v39 = &unk_1F4CE0220;
    v42 = v43;
    v40 = xmmword_1D0E83F60;
    v43[1] = 0;
    v43[0] = 0;
    v36 = 0x100000008;
    v35 = xmmword_1D0E83F60;
    v34 = &unk_1F4CE4320;
    v37 = &v38;
    v31 = 0x800000008;
    v29 = &unk_1F4CE43B0;
    v30 = xmmword_1D0E83F70;
    v32 = &v33;
    v26 = 0x200000008;
    v24 = &unk_1F4CEBC18;
    v25 = xmmword_1D0E83F70;
    v27 = &v28;
    v23 = v22 * a7;
    v51 = 0x200000002;
    v49 = &unk_1F4CE0268;
    v52 = &v53;
    v50 = xmmword_1D0E83F70;
    v54 = 0;
    v53 = 0x3FF0000000000000;
    v55 = 0;
    v56 = 0x3FF0000000000000;
    sub_1D0BA5090(&v57, &v49);
    *&v60[8 * SHIDWORD(v58)] = v23;
    v46 = 0x100000008;
    v45 = xmmword_1D0E84520;
    v44 = &unk_1F4CE4320;
    v47 = &v48;
    sub_1D0B89390(&v57, a1, &v44);
    v51 = 0x100000008;
    v50 = xmmword_1D0E84520;
    v49 = &unk_1F4CE4320;
    v52 = &v53;
    sub_1D0B88838(&v44, &v39, &v49);
    sub_1D0B894B0(&v34, &v49);
    sub_1D0B894B0(&v29, &v57);
    v51 = 0x200000002;
    v49 = &unk_1F4CE0268;
    v52 = &v53;
    v50 = xmmword_1D0E83F70;
    v54 = 0;
    v53 = 0x3FF0000000000000;
    v55 = 0;
    v56 = 0x3FF0000000000000;
    sub_1D0B894B0(&v24, &v49);
    sub_1D0B894B0(a4, &v34);
    sub_1D0B894B0(a5, &v29);
    v59 = 0x200000002;
    v57 = &unk_1F4CE0268;
    v60 = v61;
    v58 = xmmword_1D0E83F70;
    memset(v61, 0, 32);
    sub_1D0B894B0(a6, &v57);
    return 0;
  }

  else
  {
    LOWORD(v57) = 12;
    LOBYTE(v29) = 4;
    cnprint::CNPrinter::Print(&v57, &v29, "in_TwoStateOscillator called with inadequate matrices.", a4, a5, a6, a7);
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1D0BF9390(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v263[11] = *MEMORY[0x1E69E9840];
  if (!*(v1 + 16))
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v12 = v2;
  v13 = v1;
  if (*(v1 + 2568) == 1)
  {
    if (v3 & 1) != 0 || (v4)
    {
      v14 = v1 + 2576;
      if (v4)
      {
        v15 = 1;
        v16 = 1;
      }

      else
      {
        v7 = v247;
        v15 = 1;
        v16 = 0;
      }
    }

    else
    {
      v14 = v1 + 2576;
      v6 = v244;
      v7 = v247;
      v15 = 0;
      v16 = 0;
    }

    result = cnnavigation::LinearizedGravityModel::ComputeLinearizedGravityModel(v14, v2, v15, v16, v5, v6, v7);
    if (!result)
    {
      return result;
    }

    v11 = 1;
    v3 = 1;
  }

  v18 = *v12;
  v19 = v12[1];
  v20 = v12[2];
  v21 = sqrt(v19 * v19 + v18 * v18 + v20 * v20);
  if (v21 <= 0.00000001)
  {
    return 0xFFFFFFFFLL;
  }

  v22 = *(v13 + 2728);
  v23 = v18 / v21;
  v263[0] = 0x3FF0000000000000;
  *&v263[1] = v23;
  v24 = v19 / v21;
  v262[0] = 0;
  *&v262[1] = v24;
  v25 = v11 | v3;
  if (v11 | v3)
  {
    v261[0] = xmmword_1D0E7DCB0;
    v260[0] = 0u;
    v259[0] = 0u;
    v258[0] = xmmword_1D0E7DCB0;
  }

  if (v11)
  {
    v257[1] = 0;
    v257[0] = 0;
    v256[1] = 0;
    v256[0] = 0;
    v255[1] = 0;
    v255[0] = 0;
    v254[1] = 0;
    v254[0] = 0;
    v253[1] = 0;
    v253[0] = 0;
    v252[0] = 0;
    v251 = 0;
  }

  v26 = v20 / v21;
  if (v22 >= 2)
  {
    v27 = 0;
    v28 = -v24;
    v29 = v24;
    v30 = v23;
    do
    {
      v31 = v29 * v28 + v23 * v30;
      *&v263[v27 / 8 + 2] = v31;
      v32 = v24 * v30 + v23 * v29;
      *&v262[v27 / 8 + 2] = v32;
      if (v25)
      {
        v33 = *(v261 + v27 + 8);
        v34 = *(v259 + v27 + 8);
        *(&v261[1] + v27) = v30 + v23 * v33 + v28 * v34;
        v35 = *(v260 + v27 + 8);
        v36 = *(v258 + v27 + 8);
        *(&v260[1] + v27) = v36 * v28 + v23 * v35 - v29;
        *(&v259[1] + v27) = v29 + v23 * v34 + v24 * v33;
        *(&v258[1] + v27) = v30 + v24 * v35 + v23 * v36;
      }

      if (v11)
      {
        v37 = *&v257[v27 / 8 + 1];
        v38 = *(v261 + v27 + 8);
        v39 = *&v254[v27 / 8 + 1];
        *&v257[v27 / 8 + 2] = v38 + v38 + v23 * v37 + v28 * v39;
        v40 = *&v256[v27 / 8 + 1];
        v41 = *(v260 + v27 + 8);
        v42 = *&v253[v27 / 8 + 1];
        v43 = *(v259 + v27 + 8);
        *&v256[v27 / 8 + 2] = v41 + v23 * v40 + v28 * v42 - v43;
        v44 = *&v255[v27 / 8 + 1];
        v45 = *&v252[v27 / 8];
        v46 = *(v258 + v27 + 8);
        *&v255[v27 / 8 + 2] = v45 * v28 + v23 * v44 + v46 * -2.0;
        *&v254[v27 / 8 + 2] = v43 + v43 + v23 * v39 + v24 * v37;
        *&v253[v27 / 8 + 2] = v38 + v46 + v23 * v42 + v24 * v40;
        *&v252[v27 / 8 + 1] = v24 * v44 + v23 * v45 + v41 * 2.0;
      }

      v27 += 8;
      v29 = v32;
      v30 = v31;
    }

    while (8 * v22 - 8 != v27);
  }

  v48 = *(v13 + 24);
  v47 = *(v13 + 32);
  v248[11] = 1.22474487;
  v248[10] = v26 * 1.73205081;
  if (v25)
  {
    v245[5] = xmmword_1D0E84700;
  }

  if (v11)
  {
    v242[12] = 0;
    v242[11] = 0;
  }

  v189 = v10;
  v190 = v12;
  v49 = 1.0 / v21;
  if (v22 >= 2)
  {
    v50 = 0;
    v51 = 0;
    v52 = v243;
    v53 = v246;
    v54 = &v250;
    v55 = 2;
    do
    {
      v56 = (2 * v55);
      v57 = sqrt(1.0 / v56 + 1.0);
      v58 = sqrt(v56);
      v59 = v55 - 1;
      v60 = &v247[88 * v55];
      v61 = &v60[8 * v55 - 8];
      v62 = *(v61 - 11) * v57;
      *&v60[8 * v55] = v62;
      *v61 = v26 * v58 * v62;
      if (v25)
      {
        v63 = v57 * *&v244[88 * v59 + 8 * v59];
        v64 = &v244[88 * v55];
        *&v64[8 * v55] = v63;
        *&v64[8 * v59] = v58 * (v62 + v26 * v63);
      }

      if (v11)
      {
        v65 = v57 * *&v242[11 * v59 + v59];
        v66 = &v242[11 * v55];
        *&v66[v55] = v65;
        *&v66[v59] = v58 * (v26 * v65 + *&v244[88 * v55 + 8 * v55] * 2.0);
      }

      v67 = 0;
      v68 = *&v249[96 * v51 + 8];
      v69 = 2;
      v70 = v54;
      do
      {
        v71 = sqrt(v69 * (v50 + v67 + 3));
        v72 = sqrt((v50 + v67 + 4) * (v69 - 1));
        v73 = *v70;
        v74 = *v70 * ((v26 * v26 + -1.0) * v72 / v71) + (v26 + v26) * (v51 + v67 + 1) / v71 * v68;
        *(v70 - 2) = v74;
        if (v25)
        {
          *&v53[8 * v67] = v68 * v71;
        }

        if (v11)
        {
          *&v52[8 * v67] = v73 * (v72 * v71);
        }

        --v67;
        ++v69;
        --v70;
        v68 = v74;
      }

      while (v51 + v67 + 1 > 0);
      ++v55;
      ++v51;
      v52 += 96;
      v53 += 96;
      v54 += 12;
      v50 += 2;
    }

    while (v51 != v22 - 1);
  }

  v75 = v49 * v48;
  v76 = 1.0;
  v207 = 1.0 / v21;
  v188 = v75;
  if ((v22 & 0x80000000) != 0)
  {
    v193 = 0.0;
    v194 = 0.0;
    v195 = 0.0;
    v196 = 0.0;
    v197 = 0.0;
    v198 = 0.0;
    v199 = 0.0;
    v200 = 0.0;
    v201 = 0.0;
    v202 = 0.0;
    v203 = 0.0;
    v204 = 0.0;
    v205 = 0.0;
    v206 = 0.0;
  }

  else
  {
    v77 = 0;
    __x = v49 * v47;
    v78 = v22 + 1;
    v79 = &v242[1];
    v80 = v245;
    v81 = v248;
    do
    {
      v82 = v81;
      v83 = v80;
      v84 = v79;
      v85 = v22;
      if (v22)
      {
        do
        {
          *v82 = *v82 * 1.41421356;
          if (v25)
          {
            *v83 = *v83 * 1.41421356;
          }

          if (v11)
          {
            *v84 = *v84 * 1.41421356;
          }

          ++v84;
          ++v83;
          ++v82;
          --v85;
        }

        while (v85);
      }

      ++v77;
      v79 += 11;
      v80 = (v80 + 88);
      v81 += 11;
    }

    while (v77 != v78);
    v193 = 0.0;
    v194 = 0.0;
    v195 = 0.0;
    v196 = 0.0;
    v197 = 0.0;
    v198 = 0.0;
    v199 = 0.0;
    v200 = 0.0;
    v201 = 0.0;
    v202 = 0.0;
    v203 = 0.0;
    v204 = 0.0;
    v205 = 0.0;
    v206 = 0.0;
    if (v22 >= 2)
    {
      v86 = v246;
      v87 = v243;
      v88 = v249;
      v76 = 1.0;
      v205 = 0.0;
      v206 = 0.0;
      v89 = 6;
      v203 = 0.0;
      v204 = 0.0;
      v90 = 2;
      v91 = 24;
      v201 = 0.0;
      v202 = 0.0;
      v199 = 0.0;
      v200 = 0.0;
      v197 = 0.0;
      v198 = 0.0;
      v92 = 6;
      v195 = 0.0;
      v196 = 0.0;
      v193 = 0.0;
      v194 = 0.0;
      v191 = v78;
      do
      {
        v211 = v92;
        v214 = v76;
        v93 = 0;
        v94 = 0.0;
        v95 = 0.0;
        v96 = 0.0;
        v213 = v89;
        v97 = 0.0;
        v98 = v13 + 528 + ((4 * v89) & 0x3FFFFFFF8);
        v212 = v90 + 1;
        v99 = 0.0;
        v100 = 0.0;
        v101 = 0.0;
        v102 = 0.0;
        v103 = 0.0;
        v104 = 0.0;
        do
        {
          v105 = *(v98 + v93);
          v106 = *(v98 + v93 + 504);
          v107 = v106 * *&v262[v93 / 8] + v105 * *&v263[v93 / 8];
          v108 = *&v88[v93];
          if (v25)
          {
            v103 = v103 + *&v86[v93] * v107;
            v102 = v102 + v108 * (v106 * *(v259 + v93) + v105 * *(v261 + v93));
            v101 = v101 + v108 * (v106 * *(v258 + v93) + v105 * *(v260 + v93));
          }

          if (v11)
          {
            v100 = v100 + *&v87[v93] * v107;
            v99 = v99 + v108 * (v106 * *&v254[v93 / 8] + v105 * *&v257[v93 / 8]);
            v109 = *&v86[v93];
            v97 = v97 + v108 * (v106 * *&v252[v93 / 8 - 1] + v105 * *&v255[v93 / 8]);
            v96 = v96 + v109 * (v106 * *(v259 + v93) + v105 * *(v261 + v93));
            v95 = v95 + v109 * (v106 * *(v258 + v93) + v105 * *(v260 + v93));
            v94 = v94 + v108 * (v106 * *&v253[v93 / 8] + v105 * *&v256[v93 / 8]);
          }

          v104 = v104 + v108 * v107;
          v93 += 8;
        }

        while (v91 != v93);
        v209 = v95;
        v210 = v94;
        v208 = v90;
        v110 = pow(__x, v90);
        v90 = v212;
        v111 = v212;
        if (v25)
        {
          v193 = v193 + v207 * (v207 * -(v110 * v111)) * v104;
          v194 = v194 + v110 * v103;
          v195 = v195 + v110 * v102;
          v196 = v196 + v110 * v101;
        }

        if (v11)
        {
          v197 = v197 + v207 * (v207 * (v207 * (v110 * ((v208 + 2) * v212)))) * v104;
          v198 = v198 + v110 * v100;
          v199 = v199 + v110 * v99;
          v200 = v200 + v110 * v97;
          v201 = v201 + v110 * v96;
          v202 = v202 + v110 * v209;
          v112 = v207 * (v207 * -(v110 * v111));
          v203 = v203 + v110 * v210;
          v204 = v204 + v112 * v103;
          v205 = v205 + v112 * v102;
          v206 = v206 + v112 * v101;
        }

        v76 = v214 + v110 * v104;
        v91 += 8;
        v86 += 88;
        v87 += 88;
        v88 += 88;
        v89 = (v213 + v211);
        v92 = v211 + 2;
      }

      while (v212 != v191);
    }
  }

  *v189 = -(v188 * v76);
  v113 = 0.0;
  v114 = 0.0;
  v115 = 0.0;
  v116 = 0.0;
  if (v25)
  {
    v116 = v193 * *(v13 + 24) + -v188 * v207;
    v113 = v188 * v194;
    v114 = v188 * v195;
    v115 = v188 * v196;
  }

  v117 = 0.0;
  v118 = 0.0;
  v119 = 0.0;
  v120 = 0.0;
  v121 = 0.0;
  v122 = 0.0;
  v123 = 0.0;
  v124 = 0.0;
  v125 = 0.0;
  v126 = 0.0;
  v127 = 0.0;
  if (v11)
  {
    v128 = *(v13 + 24);
    v118 = v197 * v128 + v207 * (v188 + v188) * v207;
    v119 = v188 * v198;
    v120 = v188 * v199;
    v121 = v188 * v200;
    v122 = v188 * v201;
    v123 = v188 * v202;
    v124 = v188 * v203;
    v125 = v204 * v128;
    v126 = v205 * v128;
    v127 = v206 * v128;
  }

  v240 = 0uLL;
  v241 = 0.0;
  v238 = 0uLL;
  v239 = 0.0;
  v236 = 0.0;
  v235 = 0.0;
  v129 = 0.0;
  v237 = 0.0;
  v130 = 0.0;
  v131 = 0.0;
  v132 = 0.0;
  v233 = 0.0;
  v232 = 0.0;
  _D28 = 0.0;
  v134 = 0.0;
  v234 = 0.0;
  v135 = 0.0;
  v136 = 0.0;
  v137 = 0.0;
  v230 = 0.0;
  v229 = 0.0;
  v138 = 0.0;
  v139.f64[0] = 0.0;
  v231 = 0.0;
  if (v25)
  {
    v140 = v190[1].f64[0];
    v131 = v207 * v140;
    v241 = v207 * v140;
    _Q26 = *v190;
    v139 = vmulq_n_f64(*v190, v207);
    v240 = v139;
    v135 = v139.f64[1];
    v238 = vmulq_n_f64(vmulq_n_f64(vnegq_f64(v139), v207), v207);
    v239 = v207 * -(v207 * v140 * v207);
    v138 = v207 + _Q26.f64[0] * v238.f64[0];
    _D8 = v238.f64[1];
    v134 = vmuld_lane_f64(_Q26.f64[0], v238, 1);
    v235 = v138;
    v236 = v134;
    v130 = v239 * _Q26.f64[0];
    v237 = v239 * _Q26.f64[0];
    v137 = vmuld_lane_f64(v238.f64[0], _Q26, 1);
    __asm { FMLA            D28, D8, V26.D[1] }

    v232 = v137;
    v233 = _D28;
    v129 = vmuld_lane_f64(v239, _Q26, 1);
    v234 = v129;
    v136 = v140 * v238.f64[0];
    v132 = vmuld_lane_f64(v140, v238, 1);
    v229 = v140 * v238.f64[0];
    v230 = v132;
    v117 = v207 + v140 * v239;
    v231 = v117;
  }

  *v9 = v114 * v138 + v116 * v139.f64[0] + v115 * v137 + v113 * v136;
  v9[1] = v114 * v134 + v116 * v135 + v115 * _D28 + v113 * v132;
  v9[2] = v114 * v130 + v116 * v131 + v115 * v129 + v113 * v117;
  v228 = 0;
  memset(v227, 0, sizeof(v227));
  v226 = 0;
  memset(v225, 0, sizeof(v225));
  v224 = 0;
  memset(v223, 0, sizeof(v223));
  v222 = 0;
  memset(v221, 0, sizeof(v221));
  v220 = 0;
  v219 = 0u;
  v217 = 0u;
  memset(v218, 0, sizeof(v218));
  if (v11)
  {
    v147 = 0;
    v148 = v227;
    do
    {
      v149 = 0;
      v150 = v190->f64[v147];
      do
      {
        *(v148 + v149 * 8) = v150 * v238.f64[v149];
        ++v149;
      }

      while (v149 != 3);
      *(v227 + 3 * v147 + v147) = v207 + *(v227 + 3 * v147 + v147);
      ++v147;
      v148 = (v148 + 24);
    }

    while (v147 != 3);
    v151 = 0;
    v152 = v225;
    v153 = v227;
    do
    {
      v154 = 0;
      v155 = v207 * -2.0 * v238.f64[v151];
      do
      {
        *(v152 + v154 * 8) = v207 * -(*(v153 + v154 * 8) * v207) + v155 * v240.f64[v154];
        ++v154;
      }

      while (v154 != 3);
      ++v151;
      v152 = (v152 + 24);
      v153 = (v153 + 24);
    }

    while (v151 != 3);
    v156 = 0;
    v157 = v190->f64[0];
    v158 = v190->f64[1];
    v159 = &v217;
    v160 = v221;
    v161 = v223;
    v162 = v225;
    v163 = v190[1].f64[0];
    do
    {
      for (i = 0; i != 24; i += 8)
      {
        v165 = *(v162 + i);
        *(v161 + i) = v157 * v165;
        *(v160 + i) = v158 * v165;
        *(v159 + i) = v163 * v165;
      }

      ++v156;
      v159 = (v159 + 24);
      v160 = (v160 + 24);
      v161 = (v161 + 24);
      v162 = (v162 + 24);
    }

    while (v156 != 3);
    v166 = 0;
    v167 = &v238;
    do
    {
      v168 = v167->f64[0];
      v167 = (v167 + 8);
      *(v223 + v166) = v168 + *(v223 + v166);
      *(v221 + v166 + 8) = v168 + *(v221 + v166 + 8);
      *(v218 + v166) = v168 + *(v218 + v166);
      v166 += 24;
    }

    while (v166 != 72);
    for (j = 0; j != 24; j += 8)
    {
      v170 = v238.f64[j / 8];
      *(v223 + j) = v170 + *(v223 + j);
      *(&v221[1] + j + 8) = v170 + *(&v221[1] + j + 8);
      *(&v219 + j) = v170 + *(&v219 + j);
    }

    v171 = 0;
    v172 = v215;
    v173 = &v217;
    v174 = v221;
    v175 = v223;
    v176 = v227;
    do
    {
      v177 = 0;
      v178 = v240.f64[v171];
      v179 = *(&v235 + v171);
      v180 = *(&v232 + v171);
      v181 = *(&v229 + v171);
      v182 = v126 * v179 + v118 * v178 + v127 * v180 + v125 * v181;
      v183 = v120 * v179 + v126 * v178 + v124 * v180 + v122 * v181;
      v184 = v124 * v179 + v127 * v178 + v121 * v180 + v123 * v181;
      v185 = v122 * v179 + v125 * v178 + v123 * v180 + v119 * v181;
      do
      {
        *(v172 + v177) = v183 * *(&v235 + v177) + v182 * v240.f64[v177 / 8] + v184 * *(&v232 + v177) + v185 * *(&v229 + v177) + v116 * *(v176 + v177) + v114 * *(v175 + v177) + v115 * *(v174 + v177) + v113 * *(v173 + v177);
        v177 += 8;
      }

      while (v177 != 24);
      ++v171;
      v172 = (v172 + 24);
      v173 = (v173 + 24);
      v174 = (v174 + 24);
      v175 = (v175 + 24);
      v176 = (v176 + 24);
    }

    while (v171 != 3);
    v186 = v215[1];
    *v8 = v215[0];
    *(v8 + 16) = v186;
    v187 = v215[3];
    *(v8 + 32) = v215[2];
    *(v8 + 48) = v187;
    *(v8 + 64) = v216;
  }

  if (*(v13 + 2568) == 1)
  {
    cnnavigation::LinearizedGravityModel::UpdateLinearization(v13 + 2576, v190, v9, v8, *(v13 + 40), *v189);
  }

  return 0;
}

uint64_t sub_1D0BFA2A4(uint64_t a1, uint64_t a2, void *lpsrc, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (lpsrc && (v11 = __dynamic_cast(lpsrc, &unk_1F4CE42A0, &unk_1F4CEB790, 0)) != 0)
  {
    v13 = *(a1 + 8);
    v12 = *(a1 + 12);
    if (v13 <= v12)
    {
      v14 = *(a1 + 12);
    }

    else
    {
      v14 = *(a1 + 8);
    }

    if (v13 && v12 && v14 == 8)
    {
      v16 = *(a2 + 8);
      v15 = *(a2 + 12);
      v17 = v16 <= v15 ? *(a2 + 12) : *(a2 + 8);
      if (v16 && v15 && v17 == 3)
      {
        *(a4 + 8) = xmmword_1D0E7DCC0;
        v18 = *(a1 + 32);
        v19 = *(a2 + 32);
        v20 = *(a4 + 32);
        *v20 = v18[3] + *v19;
        v20[1] = v18[4] + v19[1];
        v20[2] = v18[5] + v19[2];
        v26 = 0x800000003;
        v24 = &unk_1F4CEB950;
        v27 = v28;
        v25 = xmmword_1D0E9CC00;
        memset(v28, 0, sizeof(v28));
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        sub_1D0B894B0(a5, &v24);
        v21 = *(a5 + 20);
        v22 = *(a5 + 32);
        *(v22 + 24 * v21) = 0x3FF0000000000000;
        *(v22 + 8 * ((4 * v21) | 1)) = 0x3FF0000000000000;
        *(v22 + 40 * v21 + 16) = 0x3FF0000000000000;
        v26 = 0x300000003;
        v24 = &unk_1F4CD5DD0;
        v25 = xmmword_1D0E76C10;
        memset(v28 + 8, 0, 24);
        memset(&v28[2] + 8, 0, 24);
        v27 = v28;
        *&v28[0] = 0x3FF0000000000000;
        *&v28[2] = 0x3FF0000000000000;
        *&v29 = 0x3FF0000000000000;
        sub_1D0B894B0(a6, &v24);
        return 0;
      }
    }

    LOWORD(v24) = 12;
    v37 = 4;
    cnprint::CNPrinter::Print(&v24, &v37, "time,%.3lf,h-function failure on line %d: %s() %s", v11[6] + *(v11 + 5), 2104, "h_Velocity_RavenConvergence", "inadequate matrices");
  }

  else
  {
    LOWORD(v24) = 12;
    v37 = 4;
    cnprint::CNPrinter::Print(&v24, &v37, "time,%.3lf,h-function failure on line %d: %s() %s", MEMORY[0x30] + MEMORY[0x28], 2090, "h_Velocity_RavenConvergence", "dynamic_cast failed");
  }

  return 0xFFFFFFFFLL;
}

uint64_t cnnavigation::LinearizedGravityModel::ComputeLinearizedGravityModel(uint64_t a1, double *a2, int a3, int a4, double *a5, double *a6, uint64_t a7)
{
  if (!*(a1 + 144))
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  if (sqrt(v8 * v8 + v7 * v7 + v9 * v9) <= 0.00000001)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v7 - *(a1 + 8);
  v11 = v8 - *(a1 + 16);
  v12 = v9 - *(a1 + 24);
  if (sqrt(v11 * v11 + v10 * v10 + v12 * v12) > *(a1 + 136))
  {
    return 0xFFFFFFFFLL;
  }

  *a5 = *(a1 + 32) - (v11 * *(a1 + 48) + *(a1 + 40) * v10 + *(a1 + 56) * v12) + (v11 * (v10 * *(a1 + 72)) + v10 * *(a1 + 64) * v10 + v10 * *(a1 + 80) * v12 + v11 * *(a1 + 88) * v10 + v11 * *(a1 + 96) * v11 + v11 * *(a1 + 104) * v12 + v12 * *(a1 + 112) * v10 + v12 * *(a1 + 120) * v11 + v12 * *(a1 + 128) * v12) * -0.5;
  if (a3)
  {
    v15 = *(a1 + 56);
    v16 = v11 * *(a1 + 72) + *(a1 + 64) * v10 + *(a1 + 80) * v12;
    v17 = v11 * *(a1 + 96) + *(a1 + 88) * v10 + *(a1 + 104) * v12;
    v18 = v11 * *(a1 + 120) + *(a1 + 112) * v10 + *(a1 + 128) * v12;
    v19 = *(a1 + 48) + v17;
    *a6 = *(a1 + 40) + v16;
    a6[1] = v19;
    a6[2] = v15 + v18;
  }

  v13 = 0;
  if (a4)
  {
    *a7 = *(a1 + 64);
    *(a7 + 16) = *(a1 + 80);
    *(a7 + 32) = *(a1 + 96);
    *(a7 + 48) = *(a1 + 112);
    *(a7 + 64) = *(a1 + 128);
  }

  return v13;
}

void sub_1D0BFA6D8(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = *v1;
  sub_1D0B9FD10(v5, v3);
  if (v2[760])
  {
    raven::RavenSolutionSelector::HandleEvent((v2 + 224), v5);
    sub_1D0BAD0C8(__p);
    if (!raven::RavenSolutionSelector::GetRavenSolution((v2 + 224), __p))
    {
      sub_1D0BAE448(v2, __p);
    }
  }

  else
  {
    v9 = 12;
    v8 = 2;
    (*(*v2 + 16))(__p, v2);
    if (v7 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    cnprint::CNPrinter::Print(&v9, &v8, "Warning: %s Active Object not configured", v4);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1D0BFA7E4(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0xA7F]) < 0)
  {
    operator delete(STACK[0xA68]);
  }

  _Unwind_Resume(a1);
}

void sub_1D0BFA800(uint64_t a1)
{
  v13 = 0x100000003;
  v11 = &unk_1F4CDEB28;
  v12 = xmmword_1D0E7DCC0;
  v14 = &v15;
  v8 = 0x100000134;
  v6 = &unk_1F4CDEC90;
  v7 = xmmword_1D0E7DD20;
  v9 = &v10;
  v3 = 0x100000003;
  v1 = &unk_1F4CDEB28;
  v2 = xmmword_1D0E7DCC0;
  v4 = &v5;
  sub_1D0BFB1AC(a1, &v11, &v6, &v1, "2");
}

uint64_t sub_1D0BFA8EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000003;
  *(a1 + 8) = xmmword_1D0E7DCC0;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE0D40;
  *(a1 + 64) = a2;
  *(a1 + 96) = 0x100000003;
  *(a1 + 72) = &unk_1F4CDEAA0;
  *(a1 + 80) = xmmword_1D0E7DCC0;
  *(a1 + 104) = a1 + 112;
  sub_1D0B9F5D4(a1 + 72, a3);
  v6 = *(a1 + 80);
  v5 = *(a1 + 84);
  *(a1 + 8) = v6;
  *(a1 + 12) = v5;
  v7 = (v5 * v6);
  *(a1 + 16) = v7;
  *(a1 + 20) = v6;
  if (v7 >= 1)
  {
    v8 = *(a1 + 104);
    v9 = *(a2 + 32);
    v10 = *(a1 + 32);
    do
    {
      v11 = *v8++;
      *v10++ = *(v9 + 8 * v11);
      --v7;
    }

    while (v7);
  }

  return a1;
}

uint64_t sub_1D0BFA9C4@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a1 < 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
  }

  if (a2 < 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3099, "nc >= 0");
  }

  *(a3 + 24) = 0x300000003;
  *a3 = &unk_1F4CD5DD0;
  *(a3 + 32) = a3 + 40;
  *(a3 + 8) = a1;
  *(a3 + 12) = a2;
  *(a3 + 16) = a2 * a1;
  *(a3 + 20) = a1;

  return sub_1D0BBBC00(a3, 0.0);
}

void raven::RavenSolutionSelector::HandleEvent(raven::RavenSolutionSelector *this, const raven::RavenSolutionEvent *a2)
{
  if ((*this & 1) == 0)
  {
    LOWORD(v53) = 12;
    LOBYTE(v52[0]) = 2;
    cnprint::CNPrinter::Print(&v53, v52, "Solution Selector: not configured");
    return;
  }

  v4 = a2 + 208;
  v55 = *(a2 + 208);
  v5 = v55;
  if (v55 <= 2u)
  {
    if (v55)
    {
      if (v55 == 1)
      {
        v29 = *(this + 504);
        *(this + 488) = *(a2 + 73);
        if ((v29 & 1) == 0)
        {
          *(this + 504) = 1;
        }

        goto LABEL_51;
      }

      if (v55 != 2)
      {
        goto LABEL_51;
      }

      v6 = 3328;
      goto LABEL_13;
    }

LABEL_11:
    LOWORD(v53) = 12;
    LOBYTE(v52[0]) = 4;
    (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v53, v52, "t,%.3lf,Solution Selector: invalid estimator input type,%d");
    return;
  }

  if (v55 != 3)
  {
    if (v55 == 4)
    {
      return;
    }

    if (v55 != 5)
    {
      goto LABEL_51;
    }

    goto LABEL_11;
  }

  v6 = 3336;
LABEL_13:
  v7 = *(this + 1);
  v8 = *&v7[v6];
  v9 = v7[607];
  v10 = v7[606];
  v11 = v7[3368] == 1 && *(a2 + 2128) == 5;
  if (v11 && (v12 = sub_1D0BFB844(this + 56, v55)) != 0 && *(v12 + 17) == 1)
  {
    if (*(this + 504) != 1)
    {
      goto LABEL_23;
    }

    v53 = (*(*a2 + 16))(a2);
    v54 = v13;
    if ((*(this + 504) & 1) == 0)
    {
      sub_1D0C42F28();
    }

    v16 = CNTimeSpan::operator-(&v53, this + 61, v14, v15);
    if (v17 + v16 <= 10.0)
    {
      v18 = 5;
    }

    else
    {
LABEL_23:
      v18 = 999;
    }

    LOWORD(v53) = 12;
    LOBYTE(v52[0]) = 3;
    cnprint::CNPrinter::Print(&v53, v52, "t,%.3lf,Solution Selector: GNSS data starvation - increasing min required GNSS content,est,%d,min_meas_count,%d", *(a2 + 2) + *(a2 + 1), v5, v18);
  }

  else
  {
    v18 = 1;
  }

  v19 = (a2 + 1168);
  v20 = *(a2 + 85);
  v21 = v20 >= v18 || v9 == 0;
  v22 = v20 > 3 || v9 == 0;
  if (v22)
  {
    v53 = &v55;
    *(sub_1D0C160E0(this + 14, v55, &v53) + 3) = *v19;
  }

  if (v21 && (!v10 || *(a2 + 84) >= v18 || *(a2 + 83) >= v18 || *(a2 + 82) >= v18))
  {
    v23 = v55;
    if (!sub_1D0BFB844(this + 2, v55))
    {
      LOWORD(v53) = 12;
      LOBYTE(v52[0]) = 2;
      v32 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v53, v52, "t,%.3lf,Solution Selector: GNSS data used in estimator,est,%d", v33 + v32, v55);
      v53 = &v55;
      v31 = v55;
      v30 = (this + 16);
      goto LABEL_47;
    }

    if (v22)
    {
LABEL_45:
      v53 = &v55;
      v30 = (this + 16);
      v31 = v23;
LABEL_47:
      *(sub_1D0C160E0(v30, v31, &v53) + 3) = *v19;
      goto LABEL_51;
    }

    v24 = sub_1D0BFB844(this + 7, v23);
    if (v24)
    {
      v27 = CNTimeSpan::operator-(a2 + 146, v24 + 3, v25, v26);
      if (v28 + v27 > v8)
      {
        LOWORD(v53) = 12;
        LOBYTE(v52[0]) = 3;
        (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(&v53, v52, "t,%.3lf,Solution Selector: GNSS data starvation - insufficient measurements over extended period,est,%d,t_curr,%.3lf,t_last_gnss,%.3lf,dt,%.3lf,psr_threshold,%u,time_threshold,%.1lf");
        goto LABEL_51;
      }

      goto LABEL_45;
    }

    v53 = &v55;
    *(sub_1D0C160E0(this + 14, v23, &v53) + 3) = *v19;
    v53 = &v55;
    *(sub_1D0C160E0(this + 4, v55, &v53) + 3) = *v19;
    LOWORD(v53) = 12;
    cnprint::CNPrinter::Print(&v53, v52, "t,%.3lf,Solution Selector: GNSS data starvation - forcing initialization of last time with sufficient pseudoranges,est,%d,time,%.3lf");
  }

LABEL_51:
  v34 = raven::RavenSolutionSelector::SolutionSatisfiesYieldCriteria(this, a2);
  if (v34)
  {
    if (!cnprint::CNPrinter::GetLogLevel(v34))
    {
      LOWORD(v53) = 12;
      LOBYTE(v52[0]) = 0;
      v35 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v53, v52, "t,%.3lf,Solution Selector: saving estimator %d", v36 + v35, *(a2 + 208));
    }

    v53 = v4;
    v37 = sub_1D0BF5758(this + 24, v4);
    memcpy(v37 + 4, a2 + 8, 0xA51uLL);
  }

  *(this + 200) = 0;
  v38 = *(*(this + 1) + 3488) - *(*(this + 1) + 3320);
  v39 = &byte_1D0E7F5EE;
  v40 = 3;
  while (1)
  {
    v41 = sub_1D0B9AF58(this + 12, v39);
    if (v41)
    {
      v42 = *(v41 + 1192);
      v43 = *(v41 + 1200);
      v53 = (*(*a2 + 16))(a2);
      v54 = v44;
      v52[0] = 0;
      v52[1] = 0;
      *v45.i64 = v38;
      *v47.i64 = CNTimeSpan::SetTimeSpan(v52, 0, v45, v46);
      v41 = CNTimeSpan::operator-(&v53, v52, v47, v48);
      if (v42)
      {
        v50 = 1;
      }

      else
      {
        v50 = (*&v43 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
      }

      if (!v50 || !v41 && (*&v49 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v51 = v42 <= v41, v42 == v41))
      {
        v51 = v43 <= v49;
      }

      if (!v51)
      {
        break;
      }
    }

    ++v39;
    if (!--v40)
    {
      goto LABEL_69;
    }
  }

  *(this + 200) = *v39;
LABEL_69:
  if (!cnprint::CNPrinter::GetLogLevel(v41))
  {
    LOWORD(v53) = 12;
    LOBYTE(v52[0]) = 0;
    (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v53, v52, "t,%.3lf,Solution Selector: selected estimator %d");
  }
}

double sub_1D0BFB134(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    __assert_rtn("operator=", "cnsubvector.h", 347, "this->num_elements_ == A.num_elements_");
  }

  if (v2 >= 1)
  {
    v3 = *(a2 + 32);
    v4 = *(a1 + 104);
    v5 = *(*(a1 + 64) + 32);
    v6 = *(a1 + 32);
    do
    {
      v7 = *v3++;
      result = v7;
      v9 = *v4++;
      *(v5 + 8 * v9) = result;
      *v6++ = result;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_1D0BFB1AC(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, char *__s1)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    return;
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 12);
  v10 = *__s1;
  if (v8 == 1 || v9 == 1)
  {
    if (v10 == 50)
    {
      if (!__s1[1])
      {
        v12 = *(a1 + 32);
        v13 = *v12 * *v12;
        if (v5 != 1)
        {
          v14 = v5 - 1;
          v15 = v12 + 1;
          do
          {
            v16 = *v15++;
            v13 = v13 + v16 * v16;
            --v14;
          }

          while (v14);
        }

        return;
      }
    }

    else if (v10 == 49 && !__s1[1])
    {
      v52 = *(a1 + 32);
      v53 = fabs(*v52);
      if (v5 != 1)
      {
        v54 = v5 - 1;
        v55 = v52 + 1;
        do
        {
          v56 = *v55++;
          v53 = v53 + fabs(v56);
          --v54;
        }

        while (v54);
      }

      return;
    }

    if (!strcmp(__s1, "inf"))
    {
      v19 = *(a1 + 32);
      v20 = fabs(*v19);
      if (v5 != 1)
      {
        v21 = v5 - 1;
        v22 = v19 + 1;
        do
        {
          v23 = *v22++;
          v24 = fabs(v23);
          if (v24 > v20)
          {
            v20 = v24;
          }

          --v21;
        }

        while (v21);
      }
    }

    else if (!strcmp(__s1, "-inf"))
    {
      v36 = *(a1 + 32);
      v37 = fabs(*v36);
      if (v5 != 1)
      {
        v38 = v5 - 1;
        v39 = v36 + 1;
        do
        {
          v40 = *v39++;
          v41 = fabs(v40);
          if (v41 < v37)
          {
            v37 = v41;
          }

          --v38;
        }

        while (v38);
      }
    }

    else
    {
      v77 = 0.0;
      if (sscanf(__s1, "%lg", &v77) == 1)
      {
        v18 = v77;
        if (fabs(v77) >= 2.22044605e-16)
        {
          v70 = *(a1 + 32);
          v71 = pow(fabs(*v70), v77);
          if (v5 != 1)
          {
            v72 = v5 - 1;
            v73 = v70 + 1;
            do
            {
              v74 = *v73++;
              v71 = v71 + pow(fabs(v74), v18);
              --v72;
            }

            while (v72);
          }

          pow(v71, 1.0 / v18);
        }
      }

      else
      {
        v76 = 4;
        v75 = 5;
        cnprint::CNPrinter::Print(&v76, &v75, "Error using Norm: invalid %s-norm.");
      }
    }

    return;
  }

  if (v10 == 50)
  {
    if (!__s1[1])
    {
      sub_1D0C1A774(a1, a2, a3, a4);
      return;
    }

    goto LABEL_25;
  }

  if (v10 != 49 || __s1[1])
  {
LABEL_25:
    if (!strcmp(__s1, "inf"))
    {
      if (v8)
      {
        v25 = *(a1 + 32);
        v26 = *(a2 + 32);
        v27 = v8;
        do
        {
          v28 = *v25++;
          *v26++ = fabs(v28);
          --v27;
        }

        while (v27);
      }

      if (v9 <= 1)
      {
        v30 = *(a2 + 32);
      }

      else
      {
        v29 = *(a1 + 32);
        v30 = *(a2 + 32);
        v31 = 1;
        v32 = v8;
        do
        {
          v33 = v32;
          v34 = v30;
          v35 = v8;
          if (v8)
          {
            do
            {
              *v34 = fabs(*(v29 + 8 * v33)) + *v34;
              ++v34;
              ++v33;
              --v35;
            }

            while (v35);
          }

          ++v31;
          v32 += v8;
        }

        while (v31 != v9);
      }

      v47 = *v30;
      if (v8 >= 2)
      {
        v48 = v8 - 1;
        v49 = v30 + 1;
        do
        {
          v50 = *v49++;
          v51 = v50;
          if (v50 > v47)
          {
            v47 = v51;
          }

          --v48;
        }

        while (v48);
      }
    }

    else if (!strcmp(__s1, "fro"))
    {
      v42 = *(a1 + 32);
      v43 = *v42 * *v42;
      if (v5 != 1)
      {
        v44 = v5 - 1;
        v45 = v42 + 1;
        do
        {
          v46 = *v45++;
          v43 = v43 + v46 * v46;
          --v44;
        }

        while (v44);
      }
    }

    else
    {
      v79 = 4;
      v78 = 5;
      cnprint::CNPrinter::Print(&v79, &v78, "Error using Norm: invalid %s-norm.");
    }

    return;
  }

  if (v9)
  {
    v57 = 0;
    v58 = *(a1 + 32);
    v59 = *(a2 + 32);
    v60 = 1;
    do
    {
      v61 = fabs(*(v58 + 8 * (v8 * v57)));
      v59[v57] = v61;
      v62 = v60;
      v63 = v8 - 1;
      if (v8 >= 2)
      {
        do
        {
          v61 = v61 + fabs(*(v58 + 8 * v62));
          v59[v57] = v61;
          ++v62;
          --v63;
        }

        while (v63);
      }

      ++v57;
      v60 += v8;
    }

    while (v57 != v9);
    v65 = *v59;
    v64 = v59 + 1;
    v66 = v65;
    v67 = v9 - 1;
    do
    {
      v68 = *v64++;
      v69 = v68;
      if (v68 > v66)
      {
        v66 = v69;
      }

      --v67;
    }

    while (v67);
  }
}

uint64_t sub_1D0BFB604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 12);
  sub_1D0BFC4C8(v26, *(a2 + 12), 1);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = vdupq_n_s64(v6 - 1);
    v9 = xmmword_1D0E84440;
    v10 = xmmword_1D0E7DD30;
    v11 = (v27 + 8);
    v12 = vdupq_n_s64(4uLL);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v8, v10));
      if (vuzp1_s16(v13, *v8.i8).u8[0])
      {
        *(v11 - 2) = v7;
      }

      if (vuzp1_s16(v13, *&v8).i8[2])
      {
        *(v11 - 1) = v7 + 1;
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v9))).i32[1])
      {
        *v11 = v7 + 2;
        v11[1] = v7 + 3;
      }

      v7 += 4;
      v9 = vaddq_s64(v9, v12);
      v10 = vaddq_s64(v10, v12);
      v11 += 4;
    }

    while (((v6 + 3) & 0xFFFFFFFC) != v7);
  }

  *(a1 + 24) = 0x800000003;
  *(a1 + 8) = xmmword_1D0E9CC00;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CEBCA8;
  *(a1 + 264) = 0x100000003;
  *(a1 + 232) = a2;
  *(a1 + 240) = &unk_1F4CDEAA0;
  *(a1 + 248) = xmmword_1D0E7DCC0;
  *(a1 + 272) = a1 + 280;
  *(a1 + 320) = 0x100000008;
  *(a1 + 296) = &unk_1F4CE43F8;
  *(a1 + 304) = xmmword_1D0E84520;
  *(a1 + 328) = a1 + 336;
  sub_1D0B9F5D4(a1 + 240, a3);
  result = sub_1D0B9F5D4(a1 + 296, v26);
  v15 = *(a1 + 256);
  v16 = *(a1 + 312);
  *(a1 + 8) = v15;
  *(a1 + 12) = v16;
  *(a1 + 16) = v16 * v15;
  *(a1 + 20) = v15;
  if (v16)
  {
    v17 = 0;
    v18 = 0;
    v19 = *(a2 + 20);
    v20 = *(a2 + 32);
    do
    {
      if (v15)
      {
        v21 = *(a1 + 272);
        v22 = *(*(a1 + 328) + 4 * v18) * v19;
        v23 = *(a1 + 32);
        v24 = v17;
        result = v15;
        do
        {
          v25 = *v21++;
          *(v23 + 8 * v24++) = *(v20 + 8 * (v25 + v22));
          --result;
        }

        while (result);
      }

      ++v18;
      v17 += v15;
    }

    while (v18 != v16);
  }

  return result;
}

uint64_t ***sub_1D0BFB844(void *a1, unsigned __int8 a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % a1[1];
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 16) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D0BFB8FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x300000001;
  *a3 = &unk_1F4CDF248;
  *(a3 + 8) = xmmword_1D0E7F310;
  *(a3 + 32) = a3 + 40;
  return sub_1D0B89390(a1, a2, a3);
}

uint64_t sub_1D0BFB980(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(a1 + 24) = 0x100000003;
  *a1 = &unk_1F4CDEB28;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  *(a1 + 32) = a1 + 40;
  return sub_1D0BD2018(a2, a1);
}

uint64_t raven::RavenSolutionSelector::SolutionSatisfiesYieldCriteria(raven::RavenSolutionSelector *this, const raven::RavenSolutionEvent *a2)
{
  v6 = *(a2 + 208);
  v4 = a2 + 208;
  v5 = v6;
  v69 = v6;
  if (v4[1] != 2 || (*(a2 + 1264) & 1) == 0)
  {
    *&v68 = &v69;
    v9 = sub_1D0C00D2C(this + 112, v5, &v68);
    *(v9 + 17) = 1;
    if (cnprint::CNPrinter::GetLogLevel(v9) <= 1)
    {
      LOWORD(v68) = 12;
      LOBYTE(v70) = 1;
      (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v68, &v70, "t,%.3lf,Solution Selector: solution unavailable,est,%d,health,%d,valid,%d");
    }

    return 0;
  }

  v68 = *(a2 + 73);
  v7 = *(&v68 + 1) + v68;
  if (*&v7 >> 52 >= 0x7FFuLL)
  {
    LOWORD(v70) = 12;
    v67 = 4;
    (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v70, &v67, "t,%.3lf,Solution Selector: invalid time,est,%d");
    return 0;
  }

  v8 = sub_1D0B9AF58(this + 12, v4);
  if (v8)
  {
    v8 = sub_1D0B9D420(&v68, v8 + 149);
    if (v8)
    {
      if (cnprint::CNPrinter::GetLogLevel(v8) <= 1)
      {
        LOWORD(v70) = 12;
        v67 = 1;
        (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(&v70, &v67, "t,%.3lf,Solution Selector: solution out of order,est,%d,t_prev,%.3lf,t_evt,%.3lf");
      }

      return 0;
    }

    v5 = v69;
  }

  if (v5 != 1)
  {
    if (*(a2 + 2128) != 6)
    {
      if (v5 <= 5)
      {
        if (((1 << v5) & 0x31) != 0)
        {
          LOWORD(v70) = 12;
          v67 = 4;
          (*(*a2 + 16))(a2);
          cnprint::CNPrinter::Print(&v70, &v67, "t,%.3lf,Solution Selector: invalid estimator type checked for GNSS age,est,%d");
          return 0;
        }

        if (((1 << v5) & 0xC) != 0)
        {
          v11 = sub_1D0BFB844(this + 2, v5);
          if (!v11)
          {
            if (!cnprint::CNPrinter::GetLogLevel(0))
            {
              LOWORD(v70) = 12;
              v67 = 0;
              (*(*a2 + 16))(a2);
              cnprint::CNPrinter::Print(&v70, &v67, "t,%.3lf,Solution Selector: no GNSS data so far,est,%d,t_curr,%.3lf");
            }

            return 0;
          }

          v14 = v11;
          v15 = CNTimeSpan::operator-(&v68, v11 + 3, v12, v13);
          v17 = v16 + v15;
          if (v17 < 0.0)
          {
            LOWORD(v70) = 12;
            v67 = 4;
            (*(*a2 + 16))(a2);
            cnprint::CNPrinter::Print(&v70, &v67, "t,%.3lf,Solution Selector: last GNSS time is ahead of current time,est,%d,t_curr,%.3lf,t_last_gnss,%.3lf");
            return 0;
          }

          v18 = 3336;
          if (v5 == 2)
          {
            v18 = 3328;
          }

          if (v17 > *(*(this + 1) + v18))
          {
            LOWORD(v70) = 12;
            v67 = 2;
            v19 = (*(*a2 + 16))(a2);
            cnprint::CNPrinter::Print(&v70, &v67, "t,%.3lf,Solution Selector: GNSS data starvation,est,%d,t_curr,%.3lf,t_last_gnss,%.3lf,dt,%.3lf", v20 + v19, v69, v7, *(v14 + 4) + v14[3], v17);
            v70 = &v69;
            *(sub_1D0C00D2C(this + 112, v69, &v70) + 17) = 1;
            sub_1D0BFCDC4(this + 17, v69);
            return 0;
          }

          v21 = sub_1D0BFB844(this + 56, v5);
          if (*(this + 208) == 1)
          {
            v24 = v21;
            v25 = *(this + 442);
            if (v25 == 1)
            {
              v26 = CNTimeSpan::operator-(&v68, this + 40, v22, v23);
              if (fabs(v27 + v26) < 600.0)
              {
                v8 = sub_1D0BFB844(this + 17, v5);
                if (!v24 || *(v24 + 17) != 1)
                {
                  goto LABEL_54;
                }

                v30 = v8;
                if (*(this + 504) == 1)
                {
                  v31 = CNTimeSpan::operator-(&v68, this + 61, v28, v29);
                  *v28.i64 = v32 + v31;
                  v29.i64[0] = 2.5;
                  if (*v28.i64 > 2.5)
                  {
                    if (cnprint::CNPrinter::GetLogLevel(v31) <= 1)
                    {
                      LOWORD(v70) = 12;
                      v67 = 1;
                      v33 = (*(*a2 + 16))(a2);
                      if ((*(this + 504) & 1) == 0)
                      {
                        sub_1D0C42F28();
                      }

                      v35.i64[0] = v34;
                      *v36.i64 = v33;
                      CNTimeSpan::operator-(&v68, this + 61, v35, v36);
                      cnprint::CNPrinter::Print(&v70, &v67, "t,%.3lf,Solution Selector: rejected solution due to time_difference_from_passthrough check failed while in tunnel after a recent GNSS starvation or nonhealthy period, time_difference_from_passthrough,%.2lf");
                    }

                    return 0;
                  }
                }

                if (!v30)
                {
                  v70 = &v69;
                  v66 = sub_1D0C160E0(this + 34, v5, &v70);
                  *(v66 + 3) = *(a2 + 73);
                  if (cnprint::CNPrinter::GetLogLevel(v66) <= 1)
                  {
                    LOWORD(v70) = 12;
                    v67 = 1;
                    (*(*a2 + 16))(a2);
                    cnprint::CNPrinter::Print(&v70, &v67, "t,%.3lf,Solution Selector: rejected solution due to still being in tunnel after recent GNSS starvation or nonhealthy period, time_since_last_tunnel_bridge_notification_event,%.2lf");
                  }

                  return 0;
                }

                v44 = CNTimeSpan::operator-(&v68, v30 + 3, v28, v29);
                if (fabs(v45 + v44) < 10.0)
                {
                  if (cnprint::CNPrinter::GetLogLevel(v44) <= 1)
                  {
                    LOWORD(v70) = 12;
                    v67 = 1;
                    v46 = (*(*a2 + 16))(a2);
                    v48.i64[0] = v47;
                    *v49.i64 = v46;
                    CNTimeSpan::operator-(&v68, v30 + 3, v48, v49);
                    cnprint::CNPrinter::Print(&v70, &v67, "t,%.3lf,Solution Selector: rejected solution due to still being in tunnel after recent GNSS starvation or nonhealthy period, time_since_last_tunnel_bridge_notification_event,%.2lf,time_since_first_tunnel_rejection,%.2lf");
                  }

                  return 0;
                }
              }
            }

            else if ((v25 & 1) == 0 && *(this + 512) == 1)
            {
              v37 = CNTimeSpan::operator-(&v68, this + 65, v22, v23);
              v39 = fabs(v38 + v37) >= 5.0 || v24 == 0;
              if (!v39 && *(v24 + 17) == 1)
              {
                if (cnprint::CNPrinter::GetLogLevel(v37) <= 1)
                {
                  LOWORD(v70) = 12;
                  v67 = 1;
                  v40 = (*(*a2 + 16))(a2);
                  if ((*(this + 512) & 1) == 0)
                  {
                    __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
                  }

                  v42.i64[0] = v41;
                  *v43.i64 = v40;
                  CNTimeSpan::operator-(&v68, this + 65, v42, v43);
                  cnprint::CNPrinter::Print(&v70, &v67, "t,%.3lf,Solution Selector: rejected solution post-tunnel exit after recent GNSS starvation period, time since in tunnel,%.2lf");
                }

                return 0;
              }
            }
          }

          raven::RavenSolutionSelector::ResetTunnelInformationForEstimatorType(this, v5);
        }
      }

LABEL_54:
      v50 = *(a2 + 162);
      v52 = (v50 < 0 || ((v50 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (v50 - 1) > 0xFFFFFFFFFFFFELL;
      if (v52 || ((v53 = *(a2 + 165), v53 >= 0) ? (v54 = ((v53 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) : (v54 = 1), v54 ? (v55 = (v53 - 1) > 0xFFFFFFFFFFFFELL) : (v55 = 0), v55 || ((v56 = *(a2 + 167), v56 > -1) ? (v57 = ((v56 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) : (v57 = 1), v57 ? (v58 = (v56 - 1) >= 0xFFFFFFFFFFFFFLL) : (v58 = 0), v58)))
      {
        LOWORD(v70) = 12;
        v67 = 4;
        v63 = (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(&v70, &v67, "t,%.3lf,Solution Selector: invalid covariance,est,%d,pxx,%.3lf,pyy,%.3lf,pzz,%.3lf", v64 + v63, v69, *(a2 + 162), *(a2 + 165), *(a2 + 167));
      }

      else
      {
        v59 = *(a2 + 29) + *(a2 + 28);
        if (*&v59 >> 52 >= 0x7FFuLL)
        {
          LOWORD(v70) = 12;
          v67 = 4;
          v60 = (*(*a2 + 16))(a2);
          cnprint::CNPrinter::Print(&v70, &v67, "t,%.3lf,Solution Selector: invalid age,est,%d,age,%.3lf", v61 + v60, v69, v59);
        }

        v62 = *(a2 + 27);
        if ((*&v62 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v62 < 0.0 || v62 > 1.0)
        {
          if (cnprint::CNPrinter::GetLogLevel(v8) <= 1)
          {
            LOWORD(v70) = 12;
            v67 = 1;
            (*(*a2 + 16))(a2);
            cnprint::CNPrinter::Print(&v70, &v67, "t,%.3lf,Solution Selector: invalid probabilty valid,est,%d,prob,%.3lf");
          }

          return 0;
        }

        v65 = *(this + 1);
        if (sqrt(*(a2 + 162) + *(a2 + 165) + *(a2 + 167)) > v65[418] || *(a2 + 29) + *(a2 + 28) < v65[419] || v62 < v65[420])
        {
          if (cnprint::CNPrinter::GetLogLevel(v8) <= 1)
          {
            LOWORD(v70) = 12;
            v67 = 1;
            (*(*a2 + 16))(a2);
            cnprint::CNPrinter::Print(&v70, &v67, "t,%.3lf,Solution Selector: fail yield criteria,est,%d,pos_unc,%.1lf,age,%.1lf,prob_valid,%.1lf");
          }

          return 0;
        }
      }

      return 1;
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D0BFC4C8(uint64_t result, int a2, int a3)
{
  *(result + 24) = 0x100000008;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CE43F8;
  if (a2 < 0)
  {
    v3 = "nr >= 0";
    v4 = 419;
    goto LABEL_6;
  }

  if (a3 < 0)
  {
    v3 = "nc >= 0";
    v4 = 420;
LABEL_6:
    __assert_rtn("CNMatrix", "cnmatrix.h", v4, v3);
  }

  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a3 * a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

uint64_t sub_1D0BFC58C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 376, "this->num_rows_ == A.num_rows_");
  }

  v3 = *(result + 12);
  if (v3 != *(a2 + 12))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 377, "this->num_cols_ == A.num_cols_");
  }

  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 32);
    do
    {
      if (v2)
      {
        v7 = *(result + 232);
        v8 = *(result + 272);
        v9 = *(v7 + 20) * *(*(result + 328) + 4 * v5);
        v10 = *(v7 + 32);
        v11 = *(result + 32);
        v12 = *(result + 20) * v5;
        v13 = v4;
        v14 = v2;
        do
        {
          v15 = *(v6 + 8 * v13);
          v16 = *v8++;
          *(v10 + 8 * (v16 + v9)) = v15;
          *(v11 + 8 * v12++) = v15;
          ++v13;
          --v14;
        }

        while (v14);
      }

      ++v5;
      v4 += v2;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t sub_1D0BFC678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x100000001;
  *a3 = &unk_1F4CDF418;
  *&v3 = 0x100000001;
  *(&v3 + 1) = 0x100000001;
  *(a3 + 8) = v3;
  *(a3 + 32) = a3 + 40;
  return sub_1D0B89390(a1, a2, a3);
}

void raven::RavenSolutionSelector::ResetTunnelInformationForEstimatorType(void *a1, uint64_t a2)
{
  v2 = a2;
  sub_1D0BFCDC4(a1 + 17, a2);
  v4 = sub_1D0BFB844(a1 + 56, v2);
  if (!v4)
  {
    return;
  }

  v5 = a1[57];
  v6 = *v4;
  v7 = v4[1];
  v8 = vcnt_s8(v5);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    if (v7 >= *&v5)
    {
      v7 %= *&v5;
    }
  }

  else
  {
    v7 &= *&v5 - 1;
  }

  v9 = a1[56];
  v10 = *(v9 + 8 * v7);
  do
  {
    v11 = v10;
    v10 = *v10;
  }

  while (v10 != v4);
  if (v11 == a1 + 58)
  {
    goto LABEL_20;
  }

  v12 = v11[1];
  if (v8.u32[0] > 1uLL)
  {
    if (v12 >= *&v5)
    {
      v12 = (v12 % *&v5);
    }
  }

  else
  {
    v12 = (v12 & (*&v5 - 1));
  }

  if (v12 != v7)
  {
LABEL_20:
    if (v6)
    {
      v13 = v6[1];
      if (v8.u32[0] > 1uLL)
      {
        v14 = v6[1];
        if (v13 >= *&v5)
        {
          v14 = (v13 % *&v5);
        }
      }

      else
      {
        v14 = (v13 & (*&v5 - 1));
      }

      if (v14 == v7)
      {
        goto LABEL_24;
      }
    }

    *(v9 + 8 * v7) = 0;
    v6 = *v4;
  }

  if (v6)
  {
    v13 = v6[1];
LABEL_24:
    if (v8.u32[0] > 1uLL)
    {
      if (v13 >= *&v5)
      {
        v13 = (v13 % *&v5);
      }
    }

    else
    {
      v13 = (v13 & (*&v5 - 1));
    }

    if (v13 != v7)
    {
      *(a1[56] + 8 * v13) = v11;
      v6 = *v4;
    }
  }

  *v11 = v6;
  *v4 = 0;
  --a1[59];

  operator delete(v4);
}

__n128 sub_1D0BFC870(uint64_t a1, uint64_t a2, void *lpsrc, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!lpsrc || (v11 = __dynamic_cast(lpsrc, &unk_1F4CE42A0, &unk_1F4CEB7A8, 0)) == 0)
  {
    LOWORD(v57) = 12;
    LOBYTE(v52) = 4;
LABEL_26:
    cnprint::CNPrinter::Print(&v57, &v52, "time,%.3lf,h-function failure on line %d: %s() %s");
    return result;
  }

  v12 = v11;
  v14 = *(a1 + 8);
  v13 = *(a1 + 12);
  if (v14 <= v13)
  {
    v15 = *(a1 + 12);
  }

  else
  {
    v15 = *(a1 + 8);
  }

  if (!v14 || !v13 || v15 != 8 || ((v17 = *(a2 + 8), v16 = *(a2 + 12), v17 <= v16) ? (v18 = *(a2 + 12)) : (v18 = *(a2 + 8)), !v17 || !v16 || v18 != 1))
  {
    LOWORD(v57) = 12;
    LOBYTE(v52) = 4;
    goto LABEL_26;
  }

  v19 = v11[7];
  if (v19 <= 0.0)
  {
    LOWORD(v57) = 12;
    LOBYTE(v52) = 4;
    goto LABEL_26;
  }

  v20 = 0;
  v72 = -v19;
  v69 = 0x100000006;
  v67 = &unk_1F4CE0BF8;
  v70 = v71;
  v68 = xmmword_1D0E84530;
  memset(v71, 0, sizeof(v71));
  v64 = 0x100000006;
  v63 = xmmword_1D0E84530;
  v62 = &unk_1F4CE0BF8;
  v65 = &v66;
  v59 = 0x600000006;
  v57 = &unk_1F4CDF278;
  v58 = xmmword_1D0E7F320;
  v60 = &v61;
  v54 = 0x600000006;
  v53 = xmmword_1D0E7F320;
  v52 = &unk_1F4CDF278;
  v55 = &v56;
  v21 = xmmword_1D0E7DD30;
  v22 = &v32 + 1;
  v23 = vdupq_n_s64(2uLL);
  v24 = vdupq_n_s64(6uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v24, v21)).u8[0])
    {
      *(v22 - 1) = v20;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v21)).i32[1])
    {
      *v22 = v20 + 1;
    }

    v20 += 2;
    v21 = vaddq_s64(v21, v23);
    v22 += 2;
  }

  while (v20 != 6);
  v48 = 0x100000006;
  v46 = &unk_1F4CE1400;
  v49 = &v50;
  v47 = xmmword_1D0E84530;
  v50 = v32;
  v51 = v33;
  sub_1D0BFD4AC(v45, *(a1 + 32), &v46);
  if (sub_1D0BFCF2C(v45, &v67, &v72, &v62, &v57, &v52))
  {
    v31[0] = 12;
    v29[0] = 4;
    cnprint::CNPrinter::Print(v31, v29, "time,%.3lf,h-function failure on line %d: %s() %s");
  }

  else
  {
    sub_1D0BD2CA4(v43, **(a1 + 32), *(*(a1 + 32) + 8), *(*(a1 + 32) + 16));
    if (v43[8])
    {
      v40 = 0x300000003;
      v38 = &unk_1F4CD5DD0;
      v39 = xmmword_1D0E76C10;
      v41 = &v42;
      sub_1D0B894B0(&v38, &v44);
      sub_1D0BFD5F0(v34);
      sub_1D0BFD7B4(v35, &v38, v34);
      sub_1D0BFD9FC(v29);
      sub_1D0BFE440(v31, v29, &v57);
      sub_1D0BFE560(v37, v35, v31);
      sub_1D0BFE784(v29, v37, v45);
      v26 = *(v30 + 16);
      *&v27 = 0x100000001;
      *(&v27 + 1) = 0x100000001;
      *(a4 + 8) = v27;
      **(a4 + 32) = v26 + **(a2 + 32);
      sub_1D0BFE89C(1, 3, v35);
      *(v36 + 16) = 0x3FF0000000000000;
      sub_1D0BFE810(v31, v35, v37);
      sub_1D0B894B0(a5, v31);
      *(a5 + 8) = xmmword_1D0E9CBE0;
      v28 = *(a5 + 32);
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      result.n128_u64[0] = 0x100000001;
      result.n128_u64[1] = 0x100000001;
      *(a6 + 8) = result;
      **(a6 + 32) = 0x3FF0000000000000;
    }

    else
    {
      sub_1D0D85A30((v12 + 5), "could not compute Jacobian", "h_AltitudeChange_RavenConvergence", 366);
    }
  }

  return result;
}

void sub_1D0BFCDC4(void *a1, unsigned __int8 a2)
{
  v3 = sub_1D0BFB844(a1, a2);
  if (!v3)
  {
    return;
  }

  v4 = a1[1];
  v5 = *v3;
  v6 = v3[1];
  v7 = vcnt_s8(v4);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    if (v6 >= *&v4)
    {
      v6 %= *&v4;
    }
  }

  else
  {
    v6 &= *&v4 - 1;
  }

  v8 = *(*a1 + 8 * v6);
  do
  {
    v9 = v8;
    v8 = *v8;
  }

  while (v8 != v3);
  if (v9 == a1 + 2)
  {
    goto LABEL_20;
  }

  v10 = v9[1];
  if (v7.u32[0] > 1uLL)
  {
    if (v10 >= *&v4)
    {
      v10 = (v10 % *&v4);
    }
  }

  else
  {
    v10 = (v10 & (*&v4 - 1));
  }

  if (v10 != v6)
  {
LABEL_20:
    if (v5)
    {
      v11 = v5[1];
      if (v7.u32[0] > 1uLL)
      {
        v12 = v5[1];
        if (v11 >= *&v4)
        {
          v12 = (v11 % *&v4);
        }
      }

      else
      {
        v12 = (v11 & (*&v4 - 1));
      }

      if (v12 == v6)
      {
        goto LABEL_24;
      }
    }

    *(*a1 + 8 * v6) = 0;
    v5 = *v3;
  }

  if (v5)
  {
    v11 = v5[1];
LABEL_24:
    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v4)
      {
        v11 = (v11 % *&v4);
      }
    }

    else
    {
      v11 = (v11 & (*&v4 - 1));
    }

    if (v11 != v6)
    {
      *(*a1 + 8 * v11) = v9;
      v5 = *v3;
    }
  }

  *v9 = v5;
  *v3 = 0;
  --a1[3];

  operator delete(v3);
}

uint64_t sub_1D0BFCF2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  if (v6 <= v7)
  {
    v8 = *(a1 + 12);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9 && v8 == 6;
  if (v10 && ((v12 = *(a2 + 8), v13 = *(a2 + 12), v12 <= v13) ? (v14 = *(a2 + 12)) : (v14 = *(a2 + 8)), v12 ? (v15 = v13 == 0) : (v15 = 1), !v15 ? (v16 = v14 == 6) : (v16 = 0), v16))
  {
    v21 = *a3;
    v55 = 0x600000006;
    v53 = &unk_1F4CDF278;
    v56 = &v57;
    v54 = xmmword_1D0E7F320;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0;
    v66 = 0u;
    v67 = 0;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0;
    v75 = 0u;
    v76 = 0;
    v78 = 0u;
    v57 = 0x3FF0000000000000;
    *&v61 = 0x3FF0000000000000;
    v65 = 0x3FF0000000000000;
    *&v70 = 0x3FF0000000000000;
    v74 = 0x3FF0000000000000;
    v79 = 0x3FF0000000000000;
    v68 = v21;
    *&v72 = v21;
    v77 = v21;
    v50 = 0x100000006;
    v49 = xmmword_1D0E84530;
    v48 = &unk_1F4CE0BF8;
    v51 = &v52;
    sub_1D0B89390(&v53, a1, &v48);
    v24 = 0x100000006;
    v22 = &unk_1F4CE0BF8;
    v23 = xmmword_1D0E84530;
    v25 = &v26;
    sub_1D0B88838(&v48, a2, &v22);
    sub_1D0B894B0(a4, &v22);
    sub_1D0B894B0(a5, &v53);
    v24 = 0x600000006;
    v22 = &unk_1F4CDF278;
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
    v39 = 0;
    v40 = 0u;
    v41 = 0u;
    v42 = 0;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v25 = &v26;
    v26 = 0x3FF0000000000000;
    v30 = 0x3FF0000000000000uLL;
    v34 = 0x3FF0000000000000;
    v38 = 0x3FF0000000000000;
    v43 = 0x3FF0000000000000;
    v47 = 0x3FF0000000000000;
    sub_1D0B894B0(a6, &v22);
    return 0;
  }

  else
  {
    LOWORD(v53) = 12;
    LOBYTE(v22) = 4;
    cnprint::CNPrinter::Print(&v53, &v22, "f_SixStateNearlyConstantVelocity called with inadequate matrices.", a4, a5, a6);
    return 0xFFFFFFFFLL;
  }
}

uint64_t raven::RavenSolutionSelector::GetRavenSolution(raven::RavenSolutionSelector *this, raven::RavenSolutionEvent *a2)
{
  if (*this)
  {
    v4 = this + 200;
    if (*(this + 200))
    {
      if (sub_1D0B9AF58(this + 12, v4))
      {
        *&v12[0] = v4;
        v5 = sub_1D0BF5758(this + 24, v4);
        v6 = v5;
        v7 = v5 + 3;
        if (*(this + 200) != *(this + 176) || (*&v12[0] = ((*v7)[2])(v5 + 3), v12[1] = v8, !sub_1D0B9D420(v12, this + 23)))
        {
          memcpy(a2 + 8, v6 + 4, 0xA51uLL);
          *(a2 + 208) = 4;
          *(this + 176) = *(this + 200);
          v9 = (v6[3][2])(v7);
          result = 0;
          *(this + 23) = v9;
          *(this + 24) = v11;
          return result;
        }
      }

      else
      {
        LOWORD(v12[0]) = 12;
        v13 = 4;
        (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(v12, &v13, "t,%.3lf,Solution Selector: specified estimator unavailable");
      }
    }

    else
    {
      LOWORD(v12[0]) = 12;
      v13 = 2;
      (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(v12, &v13, "t,%.3lf,Solution Selector: no estimators meet yield criteria");
    }
  }

  else
  {
    LOWORD(v12[0]) = 12;
    v13 = 4;
    (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(v12, &v13, "t,%.3lf,Solution Selector: not configured");
  }

  return 0xFFFFFFFFLL;
}

void sub_1D0BFD46C(uint64_t a1, raven::RavenPositionContextEstimatorActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B9FD10(v4, a3);
  raven::RavenPositionContextEstimatorActiveObject::HandleEvent(v3, v4);
}

double sub_1D0BFD4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *(a3 + 12);
  v5 = (v4 * v3);
  *&result = 0x100000006;
  *(a1 + 24) = 0x100000006;
  *a1 = &unk_1F4CE0BF8;
  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v3;
  v7 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v5)
  {
    v8 = *(a3 + 32);
    do
    {
      v9 = *v8++;
      result = *(a2 + 8 * v9);
      *v7++ = result;
      --v5;
    }

    while (v5);
  }

  return result;
}

void raven::RavenPositionContextEstimatorActiveObject::HandleEvent(raven::RavenPositionContextEstimatorActiveObject *this, const raven::RavenSolutionEvent *a2)
{
  if (*(this + 224))
  {
    *(this + 61) = *(a2 + 169);
    *(this + 496) = *(a2 + 1344);
  }

  else
  {
    v7 = 12;
    v6 = 2;
    v5[0] = (*(*a2 + 16))(a2);
    v5[1] = v3;
    cnprint::CNLogFormatter::FormatGeneral(this + 264, v5, "RavenPositionContextEstimatorActiveObject is not configured.");
    if (*(this + 287) >= 0)
    {
      v4 = this + 264;
    }

    else
    {
      v4 = *(this + 33);
    }

    cnprint::CNPrinter::Print(&v7, &v6, "%s", v4);
  }
}

uint64_t sub_1D0BFD5F0(uint64_t a1)
{
  *(a1 + 24) = 0x600000003;
  *a1 = &unk_1F4CEB7D0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E9CBF0;
  result = sub_1D0BBBC00(a1, 0.0);
  v3 = *(a1 + 20) + 1;
  v4 = *(a1 + 32);
  *v4 = 0x3FF0000000000000;
  v4[v3] = 0x3FF0000000000000;
  v4[2 * v3] = 0x3FF0000000000000;
  return result;
}

void sub_1D0BFD674(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = *v1;
  sub_1D0B9FD10(v5, v3);
  if (v2[1720])
  {
    sub_1D0BAD0C8(__p);
    if (!raven::RavenSolutionPostprocessor::PostprocessRavenSolution((v2 + 224), v5, __p))
    {
      sub_1D0BAE448(v2, __p);
    }
  }

  else
  {
    v9 = 12;
    v8 = 2;
    (*(*v2 + 16))(__p, v2);
    if (v7 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    cnprint::CNPrinter::Print(&v9, &v8, "Warning: %s Active Object not configured", v4);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1D0BFD778(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0xA7F]) < 0)
  {
    operator delete(STACK[0xA68]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0BFD7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x600000003;
  *a1 = &unk_1F4CEB7D0;
  *(a1 + 8) = xmmword_1D0E9CBF0;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

uint64_t raven::RavenSolutionPostprocessor::PostprocessRavenSolution(raven::RavenSolutionPostprocessor *this, const raven::RavenSolutionEvent *a2, raven::RavenSolutionEvent *a3)
{
  memcpy(a3 + 8, a2 + 8, 0xA51uLL);
  ShouldBeClamped = raven::RavenSolutionPostprocessor::ShouldBeClamped(this, a2, v6, v7);
  if (ShouldBeClamped)
  {
    if ((*(this + 1296) & 1) == 0 && cnprint::CNPrinter::GetLogLevel(ShouldBeClamped) <= 1)
    {
      v17 = 12;
      v16 = 1;
      v9 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v17, &v16, "t,%.3lf,RavenSolutionPostprocessor,clamping started", v10 + v9);
    }

    *(this + 1296) = 1;
    *(a3 + 159) = *(this + 67);
    *(a3 + 80) = *(this + 34);
    *(a3 + 92) = *(this + 46);
    *(a3 + 186) = *(this + 94);
    *(a3 + 169) = 0;
    *(a3 + 194) = 0;
    *(a3 + 196) = 0;
    *(a3 + 195) = 0;
    if (*(this + 609) == 1)
    {
      *(a3 + 85) = *(this + 39);
      *(a3 + 172) = *(this + 80);
    }
  }

  else
  {
    if (*(this + 1296) && cnprint::CNPrinter::GetLogLevel(ShouldBeClamped) <= 1)
    {
      v15 = 12;
      v14 = 1;
      v11 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v15, &v14, "t,%.3lf,RavenSolutionPostprocessor,clamping stopped", v12 + v11);
    }

    *(this + 1296) = 0;
  }

  memcpy(this + 432, a3 + 1168, 0x360uLL);
  raven::RavenSolutionPostprocessor::PushToClampingHistory(this, a2);
  raven::RavenSolutionPostprocessor::AdjustRavenSolutionUncertainties(this, a3);
  return 0;
}

uint64_t sub_1D0BFD9FC(uint64_t a1)
{
  *(a1 + 24) = 0x600000006;
  *a1 = &unk_1F4CDF278;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E7F320;
  result = sub_1D0BBBC00(a1, 0.0);
  v3 = 0;
  v4 = *(a1 + 20) + 1;
  v5 = *(a1 + 32);
  v6 = 6;
  do
  {
    *(v5 + 8 * v3) = 0x3FF0000000000000;
    v3 += v4;
    --v6;
  }

  while (v6);
  return result;
}

uint64_t raven::RavenSolutionPostprocessor::ShouldBeClamped(raven::RavenSolutionPostprocessor *this, const raven::RavenSolutionEvent *a2, int8x16_t a3, int8x16_t a4)
{
  v72 = *MEMORY[0x1E69E9840];
  a3.i64[0] = 0x4000A1A34BF0F1F5;
  a4.i64[0] = 1.0;
  if (*(this + 1296))
  {
    v5 = 2.07892474;
  }

  else
  {
    v5 = 1.0;
  }

  if ((*(*(this + 1) + 3822) & 1) == 0)
  {
    if (!cnprint::CNPrinter::GetLogLevel(this))
    {
      LOWORD(v67) = 12;
      LOBYTE(v62) = 0;
      v8 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v67, &v62, "t,%.3lf,RavenSolutionPostprocessor: Not clamping - clamping disabled.", v9 + v8);
    }

    return 0;
  }

  if (*(a2 + 209) != 2)
  {
    if (!cnprint::CNPrinter::GetLogLevel(this))
    {
      LOWORD(v67) = 12;
      LOBYTE(v62) = 0;
      v10 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v67, &v62, "t,%.3lf,RavenSolutionPostprocessor: Not clamping - solution not healthy.", v11 + v10);
    }

    return 0;
  }

  if ((*(a2 + 1264) & 1) == 0)
  {
    if (!cnprint::CNPrinter::GetLogLevel(this))
    {
      LOWORD(v67) = 12;
      LOBYTE(v62) = 0;
      v12 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v67, &v62, "t,%.3lf,RavenSolutionPostprocessor: Not clamping - user position invalid.", v13 + v12);
    }

    return 0;
  }

  if (*(a2 + 2128) == 9)
  {
    if (!cnprint::CNPrinter::GetLogLevel(this))
    {
      LOWORD(v67) = 12;
      LOBYTE(v62) = 0;
      v6 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v67, &v62, "t,%.3lf,RavenSolutionPostprocessor: Not clamping - airborne.", v7 + v6);
    }

    return 0;
  }

  v15 = *(this + 7);
  if (!v15)
  {
    if (!cnprint::CNPrinter::GetLogLevel(this))
    {
      LOWORD(v67) = 12;
      LOBYTE(v62) = 0;
      v20 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v67, &v62, "t,%.3lf,RavenSolutionPostprocessor: Not clamping - no prior solution.", v21 + v20);
    }

    return 0;
  }

  v67 = CNTimeSpan::operator-(a2 + 146, (*(*(this + 3) + (((v15 + *(this + 6) - 1) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 864 * ((v15 + *(this + 12) - 1) & 0xF)), a3, a4);
  v68 = v16;
  v17 = sub_1D0B7CF88(&v67, this + 165);
  if (v17)
  {
    if (!cnprint::CNPrinter::GetLogLevel(v17))
    {
      LOWORD(v67) = 12;
      LOBYTE(v62) = 0;
      v18 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v67, &v62, "t,%.3lf,RavenSolutionPostprocessor: Not clamping - previous solution too old.", v19 + v18);
    }

    return 0;
  }

  v70 = *(a2 + 1272);
  v71 = *(a2 + 161);
  if (cnnavigation::ECEFToLLA(&v70, 1, v69, 0, &v67))
  {
    LOWORD(v67) = 12;
    LOBYTE(v62) = 2;
    v22 = (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v67, &v62, "t,%.3lf,RavenSolutionPostprocessor: Not clamping - ECEF to LLA conversion failed.", v23 + v22);
    return 0;
  }

  sub_1D0BFE48C(&v67, v69[0], v69[1]);
  if ((v68 & 1) == 0)
  {
    LOWORD(v62) = 12;
    LOBYTE(v57) = 2;
    v31 = (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v62, &v57, "t,%.3lf,RavenSolutionPostprocessor: Not clamping - Jenu computation failed.", v32 + v31);
    return 0;
  }

  v64 = 0x300000003;
  v62 = &unk_1F4CD5DD0;
  v63 = xmmword_1D0E76C10;
  v65 = &v66;
  v24 = sub_1D0BFE5EC(a2 + 1168, &v62);
  if ((v25 & 1) == 0)
  {
    LOWORD(v57) = 12;
    LOBYTE(v56) = 2;
    v33 = (*(*a2 + 16))(a2, v24);
    cnprint::CNPrinter::Print(&v57, &v56, "t,%.3lf,RavenSolutionPostprocessor: Not clamping - Get user ECEF position covariance failed.", v34 + v33);
    return 0;
  }

  v59 = 0x300000003;
  v57 = &unk_1F4CD5DD0;
  v58 = xmmword_1D0E76C10;
  v60 = &v61;
  v26 = sub_1D0BFE654(&v67, &v62, &v57);
  if ((v26 & 1) == 0)
  {
    v56 = 12;
    v55 = 2;
    v35 = (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v56, &v55, "t,%.3lf,RavenSolutionPostprocessor: Not clamping - variance rotation failed.", v36 + v35);
    return 0;
  }

  v27 = sqrt(*v60 + v60[SHIDWORD(v58) + 1]);
  if (v27 <= 0.0)
  {
    v56 = 12;
    v55 = 2;
    v37 = (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v56, &v55, "t,%.3lf,RavenSolutionPostprocessor: Not clamping - hunc not positive: %.3f.", v38 + v37, v27);
    return 0;
  }

  v28 = *(this + 6);
  if (*(a2 + 2544) - 1 >= 2)
  {
    v40 = *(this + 3);
    if (*(this + 4) != v40)
    {
      v41 = (v40 + 8 * (v28 >> 4));
      v42 = *v41 + 864 * (*(this + 6) & 0xFLL);
      v43 = *(v40 + (((*(this + 7) + v28) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 864 * ((*(this + 14) + v28) & 0xF);
      if (v42 != v43)
      {
        while (1)
        {
          v26 = raven::RavenSolutionPostprocessor::HorizontalDistanceCheck(v5, v27, v26, a2 + 1168, v42, &v67);
          if ((v26 & 1) == 0)
          {
            break;
          }

          v42 += 864;
          if (v42 - *v41 == 13824)
          {
            v44 = v41[1];
            ++v41;
            v42 = v44;
          }

          if (v42 == v43)
          {
            goto LABEL_43;
          }
        }

        if (!cnprint::CNPrinter::GetLogLevel(v26))
        {
          v56 = 12;
          v55 = 0;
          v53 = (*(*a2 + 16))(a2);
          cnprint::CNPrinter::Print(&v56, &v55, "t,%.3lf,RavenSolutionPostprocessor: Not clamping - non-static distance check.", v54 + v53);
        }

        return 0;
      }
    }
  }

  else
  {
    v26 = raven::RavenSolutionPostprocessor::HorizontalDistanceCheck(v5, v27, v26, a2 + 1168, *(*(this + 3) + (((v28 + *(this + 7) - 1) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 864 * ((v28 + *(this + 14) - 1) & 0xF), &v67);
    if ((v26 & 1) == 0)
    {
      if (!cnprint::CNPrinter::GetLogLevel(v26))
      {
        v56 = 12;
        v55 = 0;
        v29 = (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(&v56, &v55, "t,%.3lf,RavenSolutionPostprocessor: Not clamping - static distance check.", v30 + v29);
      }

      return 0;
    }
  }

LABEL_43:
  if (*(a2 + 1344) == 1)
  {
    v45 = *(a2 + 169);
    if (v45 >= 0.0)
    {
      v46 = *(a2 + 173);
      if (v46 > 0.0 && (v45 > v5 * 3.634812 || fmax(v45 + -2.0, 0.0) / sqrt(v46) > v5 * 0.888064165))
      {
        if (!cnprint::CNPrinter::GetLogLevel(v26))
        {
          v56 = 12;
          v55 = 0;
          v47 = (*(*a2 + 16))(a2);
          cnprint::CNPrinter::Print(&v56, &v55, "t,%.3lf,RavenSolutionPostprocessor: Not clamping - speed check.", v48 + v47);
        }

        return 0;
      }
    }
  }

  if (*this == 1 && *(a2 + 2216) == 5 && *(a2 + 2128) == 6)
  {
    if (!cnprint::CNPrinter::GetLogLevel(v26))
    {
      v56 = 12;
      v55 = 0;
      v49 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v56, &v55, "t,%.3lf,RavenSolutionPostprocessor: Not clamping - swimming.", v50 + v49);
    }

    return 0;
  }

  if (*(a2 + 2544) - 1 >= 2)
  {
    if (!cnprint::CNPrinter::GetLogLevel(v26))
    {
      v56 = 12;
      v55 = 0;
      v51 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v56, &v55, "t,%.3lf,RavenSolutionPostprocessor: Not clamping - moving.", v52 + v51);
    }

    return 0;
  }

  return 1;
}

double sub_1D0BFE440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x600000006;
  *a1 = &unk_1F4CDF278;
  *(a1 + 8) = xmmword_1D0E7F320;
  *(a1 + 32) = a1 + 40;
  *&result = *&sub_1D0BA5A78(a2, a3, a1);
  return result;
}

uint64_t sub_1D0BFE48C(uint64_t a1, double a2, double a3)
{
  *(a1 + 8) = 0;
  *(a1 + 40) = 0x300000003;
  *(a1 + 16) = &unk_1F4CD5DD0;
  *(a1 + 24) = xmmword_1D0E76C10;
  *(a1 + 48) = a1 + 56;
  *a1 = &unk_1F4CD5D50;
  off_1F4CD5D60(a1, a2, a3);
  return a1;
}

void sub_1D0BFE524(_Unwind_Exception *a1)
{
  *v1 = &unk_1F4CD5D18;
  v1[2] = &unk_1F4CD5E28;
  _Unwind_Resume(a1);
}

uint64_t sub_1D0BFE560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x600000003;
  *a1 = &unk_1F4CEB7D0;
  *(a1 + 8) = xmmword_1D0E9CBF0;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

double sub_1D0BFE5EC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 96))
  {
    *(a2 + 8) = xmmword_1D0E76C10;
    v2 = *(a2 + 32);
    *v2 = *(a1 + 128);
    *(v2 + 24) = *(a1 + 136);
    *(v2 + 48) = *(a1 + 144);
    *(v2 + 8) = *(a1 + 136);
    *(v2 + 32) = *(a1 + 152);
    *(v2 + 56) = *(a1 + 160);
    *(v2 + 16) = *(a1 + 144);
    *(v2 + 40) = *(a1 + 160);
    result = *(a1 + 168);
    *(v2 + 64) = result;
  }

  return result;
}

uint64_t sub_1D0BFE654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3 == 1)
  {
    v19 = 0x300000003;
    v17 = &unk_1F4CD5DD0;
    v18 = xmmword_1D0E76C10;
    v20 = &v21;
    sub_1D0B89390(a1 + 16, a2, &v17);
    v7 = *(a1 + 24);
    v6 = *(a1 + 28);
    v14 = 0x300000003;
    v9 = &unk_1F4CD5DD0;
    v10 = v6;
    v11 = v7;
    v12 = v7 * v6;
    v13 = v6;
    v15 = &v16;
    sub_1D0BD2018(a1 + 16, &v9);
    v24 = 0x300000003;
    v22 = &unk_1F4CD5DD0;
    v23 = xmmword_1D0E76C10;
    v25 = &v26;
    sub_1D0B89390(&v17, &v9, &v22);
    sub_1D0B894B0(a3, &v22);
  }

  return v3;
}

uint64_t sub_1D0BFE784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000003;
  *a1 = &unk_1F4CDEB28;
  *(a1 + 8) = xmmword_1D0E7DCC0;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

uint64_t sub_1D0BFE810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x600000001;
  *a1 = &unk_1F4CEB818;
  *(a1 + 8) = xmmword_1D0E84600;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

uint64_t sub_1D0BFE89C@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a1 < 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
  }

  if (a2 < 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3099, "nc >= 0");
  }

  *(a3 + 24) = 0x300000001;
  *a3 = &unk_1F4CDF248;
  *(a3 + 32) = a3 + 40;
  *(a3 + 8) = a1;
  *(a3 + 12) = a2;
  *(a3 + 16) = a2 * a1;
  *(a3 + 20) = a1;

  return sub_1D0BBBC00(a3, 0.0);
}

uint64_t raven::RavenSolutionPostprocessor::HorizontalDistanceCheck(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = vsubq_f64(*(a5 + 104), *(a4 + 104));
  v16 = *(a5 + 120) - *(a4 + 120);
  sub_1D0BED7A0(a6, v15.f64, &v13);
  if ((v8 & 1) == 0)
  {
    v12 = 12;
    v11 = 2;
    cnprint::CNPrinter::Print(&v12, &v11, "Clamping check failed: Position difference rotation.");
    return 0;
  }

  v9 = sqrt(v14 * v14 + v13 * v13);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v12 = 12;
    v11 = 2;
    cnprint::CNPrinter::Print(&v12, &v11, "Clamping check failed: Position difference not a positive number.");
    return 0;
  }

  if (v9 > a1 * 8.86651914)
  {
    if (!cnprint::CNPrinter::GetLogLevel(v8))
    {
      v12 = 12;
      v11 = 0;
      cnprint::CNPrinter::Print(&v12, &v11, "RavenSolutionPostprocessor: Not clamping - distance check.");
    }

    return 0;
  }

  if (fmax(v9 + -4.26495435, 0.0) / a2 > a1 * 0.832554611)
  {
    if (!cnprint::CNPrinter::GetLogLevel(v8))
    {
      v12 = 12;
      v11 = 0;
      cnprint::CNPrinter::Print(&v12, &v11, "RavenSolutionPostprocessor: Not clamping - distance uncertainty check.");
    }

    return 0;
  }

  return 1;
}

uint64_t **raven::RavenSolutionPostprocessor::PushToClampingHistory(uint64_t **this, const raven::RavenSolutionEvent *a2)
{
  if (*(a2 + 209) != 2 || *(a2 + 1264) != 1)
  {
    return this;
  }

  v3 = this;
  v4 = this[4];
  v5 = this[3];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 2 * (v4 - v5) - 1;
  }

  v7 = this[6];
  v8 = this[7] + v7;
  if (v6 == v8)
  {
    if (v7 < 0x10)
    {
      v9 = this[5];
      v10 = this[2];
      if (v4 - v5 < (v9 - v10))
      {
        operator new();
      }

      if (v9 == v10)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v9 - v10) >> 2;
      }

      sub_1D0C4E87C(v11);
    }

    this[6] = (v7 - 16);
    v62 = *v5;
    this[3] = (v5 + 1);
    sub_1D0C149C4(this + 2, &v62);
    v5 = v3[3];
    v8 = v3[6] + v3[7];
  }

  memcpy(&(*(v5 + ((v8 >> 1) & 0x7FFFFFFFFFFFFFF8)))[864 * (v8 & 0xF)], a2 + 1168, 0x360uLL);
  v14 = v3[7];
  v3[7] = (v14 + 1);
  if (v14 + 1 <= 0x1E)
  {
    v16 = v3[3];
    v15 = v3[6];
  }

  else
  {
    v15 = v3[6] + 1;
    v3[6] = v15;
    v3[7] = v14;
    v16 = v3[3];
    if (v15 >= 0x20)
    {
      operator delete(*v16);
      v16 = (v3[3] + 1);
      v3[3] = v16;
      v15 = (v3[6] - 2);
      v3[6] = v15;
    }
  }

  v17 = v15 >> 4;
  v18 = &v16[v15 >> 4];
  v19 = v3[4];
  if (v19 == v16)
  {
    v25 = 0;
    v26 = 0;
    v27 = 8 * v17;
LABEL_32:
    v28 = 1;
    goto LABEL_33;
  }

  v20 = (*v18 + 864 * (v15 & 0xF));
  v21 = *(v16 + (((v3[7] + v15) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 864 * ((*(v3 + 14) + v15) & 0xF);
  if (v20 == v21)
  {
    v25 = 0;
  }

  else
  {
    v22 = 0;
    do
    {
      v62 = CNTimeSpan::operator-(a2 + 146, v20, v12, v13);
      v63 = v23;
      if (!sub_1D0B7CF88(&v62, v3 + 163))
      {
        break;
      }

      v20 += 108;
      if ((v20 - *v18) == 13824)
      {
        v24 = v18[1];
        ++v18;
        v20 = v24;
      }

      ++v22;
    }

    while (v20 != v21);
    v15 = v3[6];
    v16 = v3[3];
    v19 = v3[4];
    v17 = v15 >> 4;
    v25 = v22;
  }

  v27 = 8 * v17;
  v18 = &v16[v17];
  if (v19 == v16)
  {
    v26 = 0;
    goto LABEL_32;
  }

  v28 = 0;
  v26 = (*v18 + 864 * (v15 & 0xF));
LABEL_33:
  v62 = v18;
  v63 = v26;
  sub_1D0BFF4F4(&v62, v25);
  if (v63 == v26)
  {
    v29 = 0;
  }

  else
  {
    v29 = 0x84BDA12F684BDA13 * (&v63[-*v62] >> 5) + 2 * (v62 - v18) + 0x7B425ED097B425EDLL * (&v26[-*v18] >> 5);
  }

  v30 = (v15 >> 1) & 0x7FFFFFFFFFFFFFF8;
  v31 = v16 + v30;
  if (v28)
  {
    v32 = 0;
  }

  else
  {
    v32 = (*v31 + 864 * (v15 & 0xF));
  }

  v61 = v29;
  if (v26 == v32)
  {
    v33 = 0;
  }

  else
  {
    v33 = 0x84BDA12F684BDA13 * (&v26[-*v18] >> 5) + 2 * (v27 - v30) + 0x7B425ED097B425EDLL * (&v32[-*v31] >> 5);
  }

  v62 = v16 + v30;
  v63 = v32;
  sub_1D0BFF4F4(&v62, v33);
  if (v61 >= 1)
  {
    v34 = v62;
    v35 = v63;
    v36 = v3[7];
    v60 = v33;
    if (v33 <= (v36 - v61) >> 1)
    {
      sub_1D0BFF4F4(&v62, v61);
      if (v34 == v31)
      {
        sub_1D0D34760(&v62, v32, v35, v62, v63);
      }

      else
      {
        v53 = *v34;
        v52 = (v34 - 8);
        sub_1D0D34760(&v62, v53, v35, v62, v63);
        v54 = v63;
        for (i = v64; v52 != v31; i = v64)
        {
          v56 = *v52--;
          sub_1D0D34760(&v62, v56, v56 + 13824, v54, i);
          v54 = v63;
        }

        sub_1D0D34760(&v62, v32, *v52 + 13824, v54, i);
      }

      v57 = (v3[7] - v61);
      v15 = v3[6] + v61;
      v3[6] = v15;
      v3[7] = v57;
      v16 = v3[3];
      if (v15 >= 0x20)
      {
        do
        {
          operator delete(*v16);
          v16 = (v3[3] + 1);
          v3[3] = v16;
          v15 = (v3[6] - 2);
          v3[6] = v15;
        }

        while (v15 > 0x1F);
      }
    }

    else
    {
      sub_1D0BFF4F4(&v62, v61);
      v37 = v63;
      v38 = &v16[(v36 + v15) >> 4];
      if (v28)
      {
        v39 = 0;
      }

      else
      {
        v39 = (*v38 + 864 * ((v36 + v15) & 0xF));
      }

      if (v62 != v38)
      {
        v40 = (v62 + 8);
        sub_1D0D34854(&v62, v63, (*v62 + 13824), v34, v35);
        v34 = v63;
        v35 = v64;
        if (v40 != v38)
        {
          v59 = v3;
          v41 = *v63;
          do
          {
            v42 = v38;
            v43 = 0;
            v44 = *v40;
            for (v34 += 8; ; v34 += 8)
            {
              v45 = 0x84BDA12F684BDA13 * ((v41 - v35 + 13824) >> 5);
              if ((0x84BDA12F684BDA13 * ((13824 - v43) >> 5)) < v45)
              {
                v45 = 0x84BDA12F684BDA13 * ((13824 - v43) >> 5);
              }

              v46 = 864 * v45;
              if (v45)
              {
                memmove(v35, (v44 + v43), 864 * v45);
              }

              v43 += v46;
              if (v43 == 13824)
              {
                break;
              }

              v47 = *v34;
              v41 = v47;
              v35 = v47;
            }

            v35 += v46;
            v41 = *(v34 - 1);
            if (v41 + 13824 == v35)
            {
              v41 = *v34;
              v35 = *v34;
            }

            else
            {
              v34 -= 8;
            }

            v38 = v42;
            ++v40;
          }

          while (v40 != v42);
          v3 = v59;
        }

        v37 = *v40;
      }

      sub_1D0D34854(&v62, v37, v39, v34, v35);
      v16 = v3[3];
      v48 = v3[4];
      v49 = 2 * (v48 - v16) - 1;
      if (v48 == v16)
      {
        v49 = 0;
      }

      v15 = v3[6];
      v33 = v60;
      v50 = (v3[7] - v61);
      v3[7] = v50;
      if (v49 - (v50 + v15) >= 0x20)
      {
        do
        {
          operator delete(*(v48 - 8));
          v16 = v3[3];
          v48 = (v3[4] - 1);
          v51 = 2 * (v48 - v16) - 1;
          v3[4] = v48;
          if (v48 == v16)
          {
            v51 = 0;
          }

          v15 = v3[6];
        }

        while (v51 - (v3[7] + v15) > 0x1F);
      }
    }
  }

  if (v3[4] == v16)
  {
    v58 = 0;
  }

  else
  {
    v58 = v16[v15 >> 4] + 864 * (v15 & 0xF);
  }

  v62 = &v16[v15 >> 4];
  v63 = v58;
  return sub_1D0BFF4F4(&v62, v33);
}

void sub_1D0BFF4C8(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t **sub_1D0BFF4F4(uint64_t **result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x7B425ED097B425EDLL * ((result[1] - **result) >> 5);
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

    result[1] = (v5 + 864 * v6);
  }

  return result;
}

void *sub_1D0BFF570(void *a1)
{
  *a1 = &unk_1F4CEBC60;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0BFF5EC(uint64_t a1)
{
  *(a1 + 24) = 0x1000000067;
  *a1 = &unk_1F4CEBCF0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = xmmword_1D0E9CC70;
  sub_1D0BFEA9C(a1);
}

void sub_1D0BFF654(_Unwind_Exception *exception_object)
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

void raven::RavenSolutionPostprocessor::AdjustRavenSolutionUncertainties(raven::RavenSolutionPostprocessor *this, float64x2_t *a2)
{
  v4 = (a2 + 1416);
  v5 = *(this + 1);
  v6 = 3456;
  if (LOBYTE(a2[165].f64[1]) - 3 < 2)
  {
    v6 = 3464;
  }

  v7 = 3472;
  if (LOBYTE(a2[165].f64[1]) - 3 < 2)
  {
    v7 = 3480;
  }

  v8 = 3440;
  if (LOBYTE(a2[165].f64[1]) - 3 < 2)
  {
    v8 = 3448;
  }

  v9 = *(v5 + v8);
  v10 = *(v5 + v7);
  v11 = *(v5 + v6);
  v12 = a2[67].f64[0];
  sub_1D0BD2CA4(v102, a2[79].f64[1], a2[80].f64[0], a2[80].f64[1]);
  v13 = v9 * v9;
  v14 = v13 + v13;
  if ((LOBYTE(a2[91].f64[1]) & 1) == 0)
  {
    v21 = v10 * v10 + v10 * v10;
    goto LABEL_15;
  }

  v15 = 0;
  v94 = 0x300000003;
  v92 = &unk_1F4CD5DD0;
  v93 = xmmword_1D0E76C10;
  v95 = &v96;
  v16 = v4[5];
  v100 = a2[94].f64[1];
  v96 = v16;
  v16.f64[0] = v100;
  v17 = a2[95].f64[0];
  v97 = v16;
  v18 = v4[7];
  v98 = v17;
  v99 = v18.f64[0];
  v101 = v18;
  *v103 = 303108111;
  while (1)
  {
    v19 = v103[v15];
    if (*(a2[33].f64 + v19 + 1) || *(&a2[16].f64[1] + v19 + 1) || *(a2[25].f64 + v19))
    {
      break;
    }

    if (++v15 == 4)
    {
      v20 = 0;
      goto LABEL_19;
    }
  }

  if (LOBYTE(a2[6].f64[1]) == 1)
  {
    *v103 = 12;
    v90.i8[0] = 2;
    cnprint::CNPrinter::Print(v103, &v90, "%.3lf, position uncertainty was floored aggressively", a2[1].f64[0] + *&a2->f64[1]);
  }

  v20 = 1;
LABEL_19:
  if (LOBYTE(a2[6].f64[1]) != 1)
  {
    v26 = 0;
    v27 = LOBYTE(a2[165].f64[1]);
    v28 = 1;
    if (v27 <= 6 && ((1 << v27) & 0x59) != 0)
    {
      if (v27 - 3 > 1)
      {
        v28 = 0;
        v26 = 0;
      }

      else
      {
        v29 = LOBYTE(a2[133].f64[0]);
        v30 = v29 > 9;
        v31 = 0x20u >> v29;
        v28 = 0;
        if (v30)
        {
          v26 = 1;
        }

        else
        {
          v26 = v31;
        }
      }
    }

    v22 = 3;
    if (v12 > 0.0 && ((v28 | v26) & 1) != 0)
    {
      v32 = 8.0;
      if ((v26 & 1) == 0)
      {
        v32 = v9;
      }

      if (v28)
      {
        v32 = 2.0;
      }

      if (v32 <= a2[67].f64[0])
      {
        v32 = a2[67].f64[0];
      }

      v14 = v32 * v32;
    }

    goto LABEL_81;
  }

  v23 = LODWORD(a2[67].f64[1]);
  if (v23 <= *(v5 + 3404))
  {
    v22 = 0;
    v25 = 3408;
    goto LABEL_42;
  }

  v24 = HIDWORD(a2[67].f64[1]);
  if (v23 - v24 <= *(v5 + 3400))
  {
    v22 = 1;
    v25 = 3416;
    goto LABEL_42;
  }

  if (*(v5 + 3384) * v23 < v24)
  {
    v22 = 2;
    v25 = 3424;
LABEL_42:
    v33 = *(v5 + v25);
    goto LABEL_43;
  }

  v33 = 0.0;
  if (a2[68].f64[0] > *(v5 + 3392))
  {
    v22 = 2;
    v25 = 3432;
    goto LABEL_42;
  }

  v22 = 3;
LABEL_43:
  v14 = v14 + v33 * v33;
  if (v12 > 0.0 && v14 <= a2[67].f64[0] * a2[67].f64[0])
  {
    v14 = a2[67].f64[0] * a2[67].f64[0];
  }

  v34 = a2[66].f64[1];
  if (v34 > 7.0)
  {
    v35 = v34 * 10.0 * (v34 * 10.0);
    if (v14 <= v35)
    {
      v14 = v35;
    }
  }

  if (*(this + 424) == 1 && *(this + 344) == 1)
  {
    v36 = *(this + 264);
    if (v36 == 11 || v36 == 4)
    {
      v90 = vdupq_n_s64(0x7FF8000000000000uLL);
      v91 = 0x7FF8000000000000;
    }

    else
    {
      v90 = vdupq_n_s64(0x7FF8000000000000uLL);
      v91 = 0x7FF8000000000000;
      if (v36 != 16)
      {
        goto LABEL_81;
      }
    }

    *v103 = vsubq_f64(a2[92], *(this + 22));
    *&v103[16] = a2[93].f64[0] - *(this + 46);
    *v37.i64 = sub_1D0BED7A0(v102, v103, v90.i64);
    if (v39)
    {
      *v38.i64 = *&v90.i64[1] * *&v90.i64[1];
      *v37.i64 = *v90.i64 * *v90.i64 + *&v90.i64[1] * *&v90.i64[1];
      v40 = sqrt(*v37.i64);
    }

    else
    {
      v40 = NAN;
    }

    v41 = CNTimeSpan::operator-(&a2->f64[1], this + 9, v37, v38);
    if (fabs(v42 + v41) < 10.0 || v40 < 100.0)
    {
      if ((*(this + 424) & 1) == 0)
      {
        sub_1D0C42F28();
      }

      if ((v95->f64[0] + v95->f64[SHIDWORD(v93) + 1] + v95[SHIDWORD(v93) + 1].f64[0]) * 0.666666667 > v13 + v13)
      {
        v104 = 0x300000003;
        *v103 = &unk_1F4CD5DD0;
        *&v103[8] = xmmword_1D0E76C10;
        v105 = v106;
        if (sub_1D0BFE654(v102, &v92, v103))
        {
          v44 = *v105;
          if (v13 > *v105)
          {
            v44 = v9 * v9;
          }

          v45 = &v105[*&v103[20]];
          if (v13 <= v45[1])
          {
            v13 = v45[1];
          }

          goto LABEL_76;
        }

        v89 = 12;
        v88 = 4;
        cnprint::CNPrinter::Print(&v89, &v88, "Solution Postprocessor: Unable to rotate user position covariance from ECEF to ENU frame");
      }

      v44 = v9 * v9;
LABEL_76:
      v46 = *(this + 37) + v44 + *v90.i64 * *v90.i64 + *(this + 40) + v13 + *&v90.i64[1] * *&v90.i64[1];
      if (v14 <= v46)
      {
        if (v40 - sqrt(v14) > 30.0 && v40 * v40 / (v14 + v46) > 0.64)
        {
          v14 = v40 * v40 / 0.64 - v46;
        }
      }

      else
      {
        v14 = v46;
      }
    }
  }

LABEL_81:
  if ((!v20 || raven::RavenSolutionPostprocessor::Update_EHE_Floor_Filter(this, &a2[73], &a2[6].f64[1], v14)) && *(this + 336))
  {
    v14 = *(this + 167) * *(this + 167);
  }

  v104 = 0x300000003;
  *v103 = &unk_1F4CD5DD0;
  *&v103[8] = xmmword_1D0E76C10;
  v105 = v106;
  if ((sub_1D0BFE654(v102, &v92, v103) & 1) == 0)
  {
    v90.i16[0] = 12;
    LOBYTE(v89) = 4;
    cnprint::CNPrinter::Print(&v90, &v89, "Solution Postprocessor: Unable to rotate device velocity covariance from ECEF to ENU frame");
LABEL_97:
    *v103 = 12;
    v90.i8[0] = 4;
    cnprint::CNPrinter::Print(v103, &v90, "t,%.3lf,Solution Postprocessor: Couldn't compute the scale factor for device position covariance", a2[1].f64[0] + *&a2->f64[1]);
    goto LABEL_98;
  }

  v47 = *v105 + v105[*&v103[20] + 1];
  v48 = (COERCE__INT64(fabs(v47)) - 0x10000000000000) >> 53;
  if ((*&v47 <= -1 || v48 >= 0x3FF) && (*&v47 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v90.i16[0] = 12;
    LOBYTE(v89) = 4;
    cnprint::CNPrinter::Print(&v90, &v89, "Solution Postprocessor: Invalid horizontal variance %.3lf", v47);
    goto LABEL_97;
  }

  v51 = v14 / v47;
  if (v51 > 1.0)
  {
    v52 = vmulq_n_f64(v4[6], v51);
    v4[5] = vmulq_n_f64(v4[5], v51);
    v4[6] = v52;
    v4[7] = vmulq_n_f64(v4[7], v51);
  }

LABEL_98:
  v21 = v10 * v10 + v10 * v10;
  if ((v22 - 1) >= 2)
  {
    if (!v22)
    {
      v22 = 0;
      v21 = fmax(v21, 1110.8889);
      goto LABEL_104;
    }

LABEL_15:
    v22 = 3;
    goto LABEL_104;
  }

  v53 = a2[84].f64[1] * 3.0 * (a2[84].f64[1] * 3.0);
  if (v21 > v53)
  {
    v53 = v21;
  }

  v21 = v53;
LABEL_104:
  if (LOBYTE(a2[96].f64[1]) != 1)
  {
    goto LABEL_118;
  }

  v94 = 0x300000003;
  v92 = &unk_1F4CD5DD0;
  v93 = xmmword_1D0E76C10;
  v95 = &v96;
  v55 = a2[99].f64[1];
  v56 = a2[100].f64[0];
  v96 = v4[10];
  v54.f64[1] = v96.f64[1];
  v54.f64[0] = v55;
  v97 = v54;
  v57 = v4[12];
  v98 = v56;
  v99 = v57.f64[0];
  v100 = v55;
  v101 = v57;
  v104 = 0x300000003;
  *v103 = &unk_1F4CD5DD0;
  *&v103[8] = xmmword_1D0E76C10;
  v105 = v106;
  if ((sub_1D0BFE654(v102, &v92, v103) & 1) == 0)
  {
    v90.i16[0] = 12;
    LOBYTE(v89) = 4;
    cnprint::CNPrinter::Print(&v90, &v89, "Solution Postprocessor: Unable to rotate device velocity covariance from ECEF to ENU frame");
LABEL_117:
    *v103 = 12;
    v90.i8[0] = 4;
    cnprint::CNPrinter::Print(v103, &v90, "t,%.3lf,Solution Postprocessor: Couldn't compute the scale factor for device velocity covariance", a2[1].f64[0] + *&a2->f64[1]);
    goto LABEL_118;
  }

  v58 = *v105 + v105[*&v103[20] + 1];
  v59 = (COERCE__INT64(fabs(v58)) - 0x10000000000000) >> 53;
  if ((*&v58 <= -1 || v59 >= 0x3FF) && (*&v58 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v90.i16[0] = 12;
    LOBYTE(v89) = 4;
    cnprint::CNPrinter::Print(&v90, &v89, "Solution Postprocessor: Invalid horizontal variance %.3lf", v58);
    goto LABEL_117;
  }

  v62 = v21 / v58;
  if (v62 > 1.0)
  {
    v63 = vmulq_n_f64(v4[11], v62);
    v4[10] = vmulq_n_f64(v4[10], v62);
    v4[11] = v63;
    v4[12] = vmulq_n_f64(v4[12], v62);
  }

LABEL_118:
  if (LOBYTE(a2[79].f64[0]) != 1)
  {
    goto LABEL_132;
  }

  v94 = 0x300000003;
  v92 = &unk_1F4CD5DD0;
  v93 = xmmword_1D0E76C10;
  v95 = &v96;
  v65 = a2[82].f64[0];
  v66 = a2[82].f64[1];
  v96 = a2[81];
  v64.f64[1] = v96.f64[1];
  v64.f64[0] = v65;
  v97 = v64;
  v67 = a2[83];
  v98 = v66;
  v99 = v67.f64[0];
  v100 = v65;
  v101 = v67;
  v104 = 0x300000003;
  *v103 = &unk_1F4CD5DD0;
  *&v103[8] = xmmword_1D0E76C10;
  v105 = v106;
  if ((sub_1D0BFE654(v102, &v92, v103) & 1) == 0)
  {
    v90.i16[0] = 12;
    LOBYTE(v89) = 4;
    cnprint::CNPrinter::Print(&v90, &v89, "Solution Postprocessor: Unable to rotate device velocity covariance from ECEF to ENU frame");
LABEL_131:
    *v103 = 12;
    v90.i8[0] = 4;
    cnprint::CNPrinter::Print(v103, &v90, "t,%.3lf,Solution Postprocessor: Couldn't compute the scale factor for user position covariance", a2[1].f64[0] + *&a2->f64[1]);
    goto LABEL_132;
  }

  v68 = *v105 + v105[*&v103[20] + 1];
  v69 = (COERCE__INT64(fabs(v68)) - 0x10000000000000) >> 53;
  if ((*&v68 <= -1 || v69 >= 0x3FF) && (*&v68 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v90.i16[0] = 12;
    LOBYTE(v89) = 4;
    cnprint::CNPrinter::Print(&v90, &v89, "Solution Postprocessor: Invalid horizontal variance %.3lf", v68);
    goto LABEL_131;
  }

  v72 = v14 / v68;
  if (v72 > 1.0)
  {
    a2[81] = vmulq_n_f64(a2[81], v72);
    a2[82] = vmulq_n_f64(a2[82], v72);
    a2[83] = vmulq_n_f64(a2[83], v72);
  }

LABEL_132:
  v73 = v11 * 0.0174532925 * (v11 * 0.0174532925);
  if (LOBYTE(a2[84].f64[0]) == 1)
  {
    v74 = a2[86].f64[1];
    if (v74 <= v21)
    {
      v74 = v21;
    }

    a2[86].f64[1] = v74;
    v75 = 39.4784176;
    if (v22 == 3)
    {
      v76 = a2[84].f64[1];
      if (v76 > 0.0)
      {
        v77 = v74 / (v76 * v76);
        if (v73 <= v77)
        {
          v73 = v77;
        }

        v75 = fmin(v73, 39.4784176);
      }
    }
  }

  else
  {
    v75 = v11 * 0.0174532925 * (v11 * 0.0174532925);
  }

  if (BYTE1(a2[84].f64[0]) == 1)
  {
    v94 = 0x300000003;
    v92 = &unk_1F4CD5DD0;
    v93 = xmmword_1D0E76C10;
    v95 = &v96;
    v79 = a2[89].f64[1];
    v80 = a2[90].f64[0];
    v96 = *v4;
    v78.f64[1] = v96.f64[1];
    v78.f64[0] = v79;
    v97 = v78;
    v81 = v4[2];
    v98 = v80;
    v99 = v81.f64[0];
    v100 = v79;
    v101 = v81;
    v104 = 0x300000003;
    *v103 = &unk_1F4CD5DD0;
    *&v103[8] = xmmword_1D0E76C10;
    v105 = v106;
    if (sub_1D0BFE654(v102, &v92, v103))
    {
      v82 = *v105 + v105[*&v103[20] + 1];
      v83 = (COERCE__INT64(fabs(v82)) - 0x10000000000000) >> 53;
      if (*&v82 > -1 && v83 < 0x3FF || (*&v82 - 1) < 0xFFFFFFFFFFFFFLL)
      {
        v86 = (v75 + v75) / v82;
        if (v86 > 1.0)
        {
          v87 = vmulq_n_f64(v4[1], v86);
          *v4 = vmulq_n_f64(*v4, v86);
          v4[1] = v87;
          v4[2] = vmulq_n_f64(v4[2], v86);
        }

        return;
      }

      v90.i16[0] = 12;
      LOBYTE(v89) = 4;
      cnprint::CNPrinter::Print(&v90, &v89, "Solution Postprocessor: Invalid horizontal variance %.3lf", v82);
    }

    else
    {
      v90.i16[0] = 12;
      LOBYTE(v89) = 4;
      cnprint::CNPrinter::Print(&v90, &v89, "Solution Postprocessor: Unable to rotate device velocity covariance from ECEF to ENU frame");
    }

    *v103 = 12;
    v90.i8[0] = 4;
    cnprint::CNPrinter::Print(v103, &v90, "t,%.3lf,Solution Postprocessor: Couldn't compute the scale factor for DOT covariance", a2[1].f64[0] + *&a2->f64[1]);
  }
}

uint64_t raven::RavenPredictor::HandleEvent(raven::RavenPredictor *this, const raven::RavenSolutionEvent *a2)
{
  if ((*this & 1) == 0)
  {
    v7 = 12;
    v6 = 4;
    cnprint::CNPrinter::Print(&v7, &v6, "Error: RavenPredictor::HandleEvent(RavenSolutionEvent) failed. Predictor is not configured.");
    return 0xFFFFFFFFLL;
  }

  v3 = *(a2 + 208) == 4 && *(a2 + 209) == 2;
  if (!v3 || !*(a2 + 1464))
  {
    return 0;
  }

  if (*(this + 1) != 1)
  {
    *(this + 1) = 1;
    goto LABEL_13;
  }

  result = sub_1D0B7CF88(a2 + 146, this + 831);
  if (result)
  {
LABEL_13:
    memcpy(this + 5488, a2 + 8, 0xA51uLL);
    return 0;
  }

  return result;
}

uint64_t sub_1D0C00580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000057;
  *(a1 + 8) = xmmword_1D0E84400;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE2B00;
  *(a1 + 736) = a2;
  *(a1 + 768) = 0x100000057;
  *(a1 + 744) = &unk_1F4CE0470;
  *(a1 + 752) = xmmword_1D0E84400;
  *(a1 + 776) = a1 + 784;
  sub_1D0B9F5D4(a1 + 744, a3);
  v5 = *(a1 + 752);
  v6 = *(a1 + 756);
  *(a1 + 8) = v5;
  *(a1 + 12) = v6;
  v7 = (v6 * v5);
  *(a1 + 16) = v7;
  *(a1 + 20) = v5;
  if (v7 >= 1)
  {
    v8 = *(a1 + 776);
    v9 = *(a2 + 32);
    v10 = *(a1 + 32);
    do
    {
      v11 = *v8++;
      *v10++ = *(v9 + 8 * v11);
      --v7;
    }

    while (v7);
  }

  return a1;
}

void sub_1D0C00680(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0BB2F1C(v11, a3);
  if (*(v3 + 224) == 1)
  {
    *v16 = *(v3 + 112);
    raven::GnssMeasurementPreprocessor::UpdateCurrentFrameworkTime((v3 + 232), v16);
    if (raven::GnssMeasurementPreprocessor::HandleEvent((v3 + 232), v11))
    {
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      memset(v59, 0, sizeof(v59));
      v60 = 0;
      v50[1] = 0;
      v50[2] = 0;
      v50[0] = &unk_1F4CEF598;
      v51 = 0;
      if (raven::GnssMeasurementPreprocessor::GetPreprocessedGnssMeasurements((v3 + 232), v50))
      {
        sub_1D0C4499C(v3, v50);
      }

      v32[1] = 0;
      v32[2] = 0;
      v32[0] = &unk_1F4CEE9A8;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0x7FF8000000000000;
      v43 = 0;
      v44 = 0u;
      v45 = 0u;
      v46 = 0;
      v49 = 0;
      v47 = 0;
      v48 = 0;
      if (raven::GnssMeasurementPreprocessor::GetGpsUTCParametersEvent((v3 + 232), v32))
      {
        sub_1D0B9B7B4(v3, v32);
      }

      v16[1] = 0;
      v17 = 0.0;
      v16[0] = &unk_1F4CEE030;
      LOBYTE(v18) = 0;
      *(&v18 + 1) = 0;
      *&v19 = 0;
      BYTE8(v19) = 0;
      v20 = 0uLL;
      LOBYTE(v21) = 0;
      *(&v21 + 1) = 0;
      v22 = 0;
      v23 = 0x7FF8000000000000;
      v24 = 0;
      v25 = 0;
      v26 = &unk_1F4CD5A50;
      v27 = 0u;
      v28 = 0u;
      v29 = xmmword_1D0E76640;
      v30 = xmmword_1D0E76650;
      v31 = 0;
      if (raven::GnssMeasurementPreprocessor::GetKlobucharParametersEvent((v3 + 232), v16))
      {
        v5 = *(v3 + 112);
        v4 = *(v3 + 120);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v16[1] = v5;
        v17 = v4;
        v22 = 0;
        v23 = 0x7FF8000000000000;
        v15 = 12;
        v14 = 2;
        sub_1D0B751F4(__p, "KlobucharParametersEvent");
        if (v13 >= 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = __p[0];
        }

        cnprint::CNPrinter::Print(&v15, &v14, "t,%.3lf,RavenGnssPreprocessorActiveObject, Raising event - %s.", v5 + v4, v6);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }

        sub_1D0C47D0C(v3, v16);
      }

      v50[0] = &unk_1F4CEF598;
      v16[0] = &v59[4];
      sub_1D0BBBD80(v16);
    }

    else
    {
      LOWORD(v32[0]) = 12;
      LOBYTE(v50[0]) = 2;
      v7 = (*(v11[0] + 16))(v11);
      v9 = v8 + v7;
      (*(v11[0] + 24))(v16, v11);
      if (v17 >= 0.0)
      {
        v10 = v16;
      }

      else
      {
        v10 = v16[0];
      }

      cnprint::CNPrinter::Print(v32, v50, "t,%.3lf,RavenGnssPreprocessorActiveObject Failed to handle event - %s.", v9, v10);
      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16[0]);
      }
    }
  }
}

void sub_1D0C009F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  *(v38 - 184) = v37;
  a32 = (v38 - 88);
  sub_1D0BBBD80(&a32);
  _Unwind_Resume(a1);
}

uint64_t raven::GnssMeasurementPreprocessor::HandleEvent(raven::GnssMeasurementPreprocessor *this, const raven::SignalEnvironmentEvent *a2)
{
  v2 = *this;
  if (v2)
  {
    *(this + 977) = *(a2 + 104);
  }

  else if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v5 = 12;
    v4 = 1;
    cnprint::CNPrinter::Print(&v5, &v4, "#gmp,HandleEvent(SignalEnvironment),not configured");
  }

  return v2;
}

double sub_1D0C00AD0(double a1, long double a2, uint64_t a3, double *a4)
{
  v7 = exp(-a2);
  v8 = 1.0;
  if (a1 <= 1.0 || v7 == 0.0)
  {
    v11 = v7;
    if (!a4)
    {
      return v11;
    }
  }

  else
  {
    v9 = 2;
    v10 = v7;
    v11 = v7;
    do
    {
      v10 = v10 / v8 * a2;
      v11 = v11 + v10;
      v8 = v9++;
    }

    while (v8 < a1);
    if (!a4)
    {
      return v11;
    }
  }

  v12 = v7 * pow(a2, a1);
  v13 = a1 + -1.0;
  if (COERCE__INT64(fabs(a1 + -1.0)) >= 0x7FF0000000000000)
  {
    v18 = a1 + -1.0;
    sub_1D0D2921C("boost::math::trunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v18);
  }

  v14 = floor(v13);
  v15 = ceil(v13);
  if (v13 < 0.0)
  {
    v14 = v15;
  }

  if (v14 > 2147483650.0 || v14 < -2147483650.0)
  {
    v18 = a1 + -1.0;
    sub_1D0D2921C("boost::math::itrunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v18);
  }

  *a4 = v12 / dbl_1D0E7EBC0[v14];
  return v11;
}

uint64_t sub_1D0C00C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000008;
  *a1 = &unk_1F4CE4320;
  *(a1 + 8) = xmmword_1D0E84520;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

void *sub_1D0C00CB0(void *a1)
{
  *a1 = &unk_1F4CEBCF0;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

uint64_t **sub_1D0C00D2C(float *a1, unsigned __int8 a2, _BYTE **a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % *(a1 + 1);
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 16) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void raven::RavenEstimator::AddToAcceptedMeasurementTypeCount(cnprint::CNPrinter *a1, unsigned int **a2)
{
  sub_1D0B751F4(__p, "Accepted");
  raven::RavenEstimator::UpdateMeasurementTypeCount(a1, __p, a2, a1 + 328, a1 + 724);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1D0C011A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void raven::RavenEstimator::UpdateMeasurementTypeCount(cnprint::CNPrinter *a1, uint64_t a2, unsigned int **a3, uint64_t a4, uint64_t a5)
{
  v61[2] = *MEMORY[0x1E69E9840];
  v5 = a3[1];
  v6 = *a3;
  if (*a3 != v5)
  {
    do
    {
      ++*(a4 + 4 * *v6);
      v11 = *v6;
      v6 += 8;
      ++*(a5 + 4 * v11);
    }

    while (v6 != v5);
    LogLevel = cnprint::CNPrinter::GetLogLevel(a1);
    if (!LogLevel)
    {
      v52 = a1;
      if (*(a2 + 23) < 0)
      {
        LogLevel = sub_1D0BC39B4(&__dst, *a2, *(a2 + 8));
      }

      else
      {
        __dst = *a2;
      }

      for (i = 0; i != 33; ++i)
      {
        v14 = *(a4 + 4 * i);
        if (v14)
        {
          v15 = "UnknownMeas";
          if (i <= 0x20)
          {
            v15 = off_1E83D7E48[i];
          }

          sub_1D0B751F4(&__p, v15);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __dst.__r_.__value_.__l.__size_;
          }

          sub_1D0BBB710(&v54, size + 1);
          if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v17 = &v54;
          }

          else
          {
            v17 = v54.__r_.__value_.__r.__words[0];
          }

          if (size)
          {
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = __dst.__r_.__value_.__r.__words[0];
            }

            memmove(v17, p_dst, size);
          }

          *(&v17->__r_.__value_.__l.__data_ + size) = 44;
          if ((v59 & 0x80u) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if ((v59 & 0x80u) == 0)
          {
            v20 = v59;
          }

          else
          {
            v20 = v58;
          }

          v21 = std::string::append(&v54, p_p, v20);
          v22 = *&v21->__r_.__value_.__l.__data_;
          v55.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
          *&v55.__r_.__value_.__l.__data_ = v22;
          v21->__r_.__value_.__l.__size_ = 0;
          v21->__r_.__value_.__r.__words[2] = 0;
          v21->__r_.__value_.__r.__words[0] = 0;
          v23 = std::string::append(&v55, ",", 1uLL);
          v24 = *&v23->__r_.__value_.__l.__data_;
          v56.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
          *&v56.__r_.__value_.__l.__data_ = v24;
          v23->__r_.__value_.__l.__size_ = 0;
          v23->__r_.__value_.__r.__words[2] = 0;
          v23->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v53, v14);
          if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = &v53;
          }

          else
          {
            v25 = v53.__r_.__value_.__r.__words[0];
          }

          if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v26 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v26 = v53.__r_.__value_.__l.__size_;
          }

          LogLevel = std::string::append(&v56, v25, v26);
          v27 = *LogLevel;
          v61[0] = LogLevel[1];
          *(v61 + 7) = *(LogLevel + 15);
          v28 = *(LogLevel + 23);
          LogLevel[1] = 0;
          LogLevel[2] = 0;
          *LogLevel = 0;
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          __dst.__r_.__value_.__r.__words[0] = v27;
          __dst.__r_.__value_.__l.__size_ = v61[0];
          *(&__dst.__r_.__value_.__r.__words[1] + 7) = *(v61 + 7);
          *(&__dst.__r_.__value_.__s + 23) = v28;
          if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v53.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v56.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v55.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v54.__r_.__value_.__l.__data_);
          }

          if (v59 < 0)
          {
            operator delete(__p);
          }
        }
      }

      if (!cnprint::CNPrinter::GetLogLevel(LogLevel))
      {
        LOWORD(__p) = 12;
        v56.__r_.__value_.__s.__data_[0] = 0;
        v29 = &__dst;
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v29 = __dst.__r_.__value_.__r.__words[0];
        }

        v30 = cnprint::CNLogFormatter::FormatGeneral(v52 + 2712, v52 + 80, "count_per_update,%s", v29);
        if (*(v52 + 2735) >= 0)
        {
          v31 = v30;
        }

        else
        {
          v31 = *(v52 + 339);
        }

        cnprint::CNPrinter::Print(&__p, &v56, "%s", v31);
      }

      v32 = std::string::operator=(&__dst, a2);
      for (j = 0; j != 33; ++j)
      {
        v34 = *(a5 + 4 * j);
        if (v34)
        {
          v35 = "UnknownMeas";
          if (j <= 0x20)
          {
            v35 = off_1E83D7E48[j];
          }

          sub_1D0B751F4(&__p, v35);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v36 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v36 = __dst.__r_.__value_.__l.__size_;
          }

          sub_1D0BBB710(&v54, v36 + 1);
          if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v37 = &v54;
          }

          else
          {
            v37 = v54.__r_.__value_.__r.__words[0];
          }

          if (v36)
          {
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v38 = &__dst;
            }

            else
            {
              v38 = __dst.__r_.__value_.__r.__words[0];
            }

            memmove(v37, v38, v36);
          }

          *(&v37->__r_.__value_.__l.__data_ + v36) = 44;
          if ((v59 & 0x80u) == 0)
          {
            v39 = &__p;
          }

          else
          {
            v39 = __p;
          }

          if ((v59 & 0x80u) == 0)
          {
            v40 = v59;
          }

          else
          {
            v40 = v58;
          }

          v41 = std::string::append(&v54, v39, v40);
          v42 = *&v41->__r_.__value_.__l.__data_;
          v55.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
          *&v55.__r_.__value_.__l.__data_ = v42;
          v41->__r_.__value_.__l.__size_ = 0;
          v41->__r_.__value_.__r.__words[2] = 0;
          v41->__r_.__value_.__r.__words[0] = 0;
          v43 = std::string::append(&v55, ",", 1uLL);
          v44 = *&v43->__r_.__value_.__l.__data_;
          v56.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
          *&v56.__r_.__value_.__l.__data_ = v44;
          v43->__r_.__value_.__l.__size_ = 0;
          v43->__r_.__value_.__r.__words[2] = 0;
          v43->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v53, v34);
          if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v45 = &v53;
          }

          else
          {
            v45 = v53.__r_.__value_.__r.__words[0];
          }

          if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v46 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v46 = v53.__r_.__value_.__l.__size_;
          }

          v32 = std::string::append(&v56, v45, v46);
          v47 = v32->__r_.__value_.__r.__words[0];
          v61[0] = v32->__r_.__value_.__l.__size_;
          *(v61 + 7) = *(&v32->__r_.__value_.__r.__words[1] + 7);
          v48 = HIBYTE(v32->__r_.__value_.__r.__words[2]);
          v32->__r_.__value_.__l.__size_ = 0;
          v32->__r_.__value_.__r.__words[2] = 0;
          v32->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          __dst.__r_.__value_.__r.__words[0] = v47;
          __dst.__r_.__value_.__l.__size_ = v61[0];
          *(&__dst.__r_.__value_.__r.__words[1] + 7) = *(v61 + 7);
          *(&__dst.__r_.__value_.__s + 23) = v48;
          if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v53.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v56.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v55.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v54.__r_.__value_.__l.__data_);
          }

          if (v59 < 0)
          {
            operator delete(__p);
          }
        }
      }

      if (!cnprint::CNPrinter::GetLogLevel(v32))
      {
        LOWORD(__p) = 12;
        v56.__r_.__value_.__s.__data_[0] = 0;
        v49 = &__dst;
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v49 = __dst.__r_.__value_.__r.__words[0];
        }

        v50 = cnprint::CNLogFormatter::FormatGeneral(v52 + 2712, v52 + 80, "count_cumulative,%s", v49);
        if (*(v52 + 2735) >= 0)
        {
          v51 = v50;
        }

        else
        {
          v51 = *(v52 + 339);
        }

        cnprint::CNPrinter::Print(&__p, &v56, "%s", v51);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }
  }
}

void raven::RavenEstimator::AddToRejectedMeasurementTypeCount(cnprint::CNPrinter *a1, unsigned int **a2)
{
  sub_1D0B751F4(__p, "Rejected");
  raven::RavenEstimator::UpdateMeasurementTypeCount(a1, __p, a2, a1 + 460, a1 + 856);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1D0C01874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void raven::RavenEstimator::AddToUnusedMeasurementTypeCount(cnprint::CNPrinter *a1, unsigned int **a2)
{
  sub_1D0B751F4(__p, "Unused");
  raven::RavenEstimator::UpdateMeasurementTypeCount(a1, __p, a2, a1 + 592, a1 + 988);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1D0C018F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0C01910(uint64_t a1)
{
  *(a1 + 24) = 0x100000057;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE0500;
  for (i = 40; i != 1432; i += 16)
  {
    v3 = (a1 + i);
    *v3 = 0;
    v3[1] = 0;
  }

  if (!*(a1 + 24))
  {
    v5 = "this->max_num_rows_ > 0";
    v6 = 394;
    goto LABEL_8;
  }

  if (!*(a1 + 28))
  {
    v5 = "this->max_num_cols_ > 0";
    v6 = 395;
LABEL_8:
    __assert_rtn("CNMatrix", "cnmatrix.h", v6, v5);
  }

  *(a1 + 8) = xmmword_1D0E84400;
  (*(*a1 + 16))(a1);
  return a1;
}

uint64_t sub_1D0C01A20(uint64_t result, int a2, int a3)
{
  *(result + 24) = 0x1000000AELL;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CE05D8;
  if (a2 < 0)
  {
    v3 = "nr >= 0";
    v4 = 419;
    goto LABEL_6;
  }

  if (a3 < 0)
  {
    v3 = "nc >= 0";
    v4 = 420;
LABEL_6:
    __assert_rtn("CNMatrix", "cnmatrix.h", v4, v3);
  }

  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a3 * a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

void *sub_1D0C01AE4(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0C4CDF0(a3, a2[1]);
      return 0;
    }

    v7 = a2[1];
    (**v7)(v7, a2, a3, a4, a5);
    operator delete(v7);
    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v9 = a2[1];
    *a3 = sub_1D0C01AE4;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CEB790;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CEB790);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_VelocityArgs_RavenConvergence>::__id;
  }

  if (v6)
  {
    return a2[1];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0C01BD0(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1D0C01C20(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1D0C01C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D0C01D64(a1);
  *v6 = &unk_1F4CE3350;
  v6[353] = a2;
  *(a1 + 2856) = 0x1000000AELL;
  *(a1 + 2832) = &unk_1F4CE05D8;
  *(a1 + 2840) = xmmword_1D0E843F0;
  *(a1 + 2864) = a1 + 2872;
  sub_1D0B9F5D4((v6 + 354), a3);
  v7 = *(a1 + 2840);
  v8 = *(a1 + 2844);
  *(a1 + 8) = v7;
  *(a1 + 12) = v8;
  v9 = v8 * v7;
  *(a1 + 16) = v8 * v7;
  *(a1 + 20) = v7;
  if (v8 * v7 >= 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = 4 * v9;
    do
    {
      *(*(a1 + 32) + v10) = *(*(a2 + 32) + 16 * *(*(a1 + 2864) + v11));
      v11 += 4;
      v10 += 16;
    }

    while (v12 != v11);
  }

  return a1;
}

uint64_t sub_1D0C01D64(uint64_t a1)
{
  *(a1 + 24) = 0x1000000AELL;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE0668;
  for (i = 40; i != 2824; i += 16)
  {
    v3 = (a1 + i);
    *v3 = 0;
    v3[1] = 0;
  }

  if (!*(a1 + 24))
  {
    v5 = "this->max_num_rows_ > 0";
    v6 = 394;
    goto LABEL_8;
  }

  if (!*(a1 + 28))
  {
    v5 = "this->max_num_cols_ > 0";
    v6 = 395;
LABEL_8:
    __assert_rtn("CNMatrix", "cnmatrix.h", v6, v5);
  }

  *(a1 + 8) = xmmword_1D0E843F0;
  (*(*a1 + 16))(a1);
  return a1;
}

uint64_t sub_1D0C01E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x1000000AELL;
  *(a1 + 8) = xmmword_1D0E843F0;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE3398;
  *(a1 + 736) = a2;
  *(a1 + 768) = 0x1000000AELL;
  *(a1 + 744) = &unk_1F4CE05D8;
  *(a1 + 752) = xmmword_1D0E843F0;
  *(a1 + 776) = a1 + 784;
  sub_1D0B9F5D4(a1 + 744, a3);
  v5 = *(a1 + 752);
  v6 = *(a1 + 756);
  *(a1 + 8) = v5;
  *(a1 + 12) = v6;
  v7 = (v6 * v5);
  *(a1 + 16) = v7;
  *(a1 + 20) = v5;
  if (v7 >= 1)
  {
    v8 = *(a1 + 776);
    v9 = *(a2 + 32);
    v10 = *(a1 + 32);
    do
    {
      v11 = *v8++;
      *v10++ = *(v9 + 4 * v11);
      --v7;
    }

    while (v7);
  }

  return a1;
}

uint64_t sub_1D0C01F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x1000000AELL;
  *(a1 + 8) = xmmword_1D0E843F0;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE33E0;
  *(a1 + 1432) = a2;
  *(a1 + 1464) = 0x1000000AELL;
  *(a1 + 1440) = &unk_1F4CE05D8;
  *(a1 + 1448) = xmmword_1D0E843F0;
  *(a1 + 1472) = a1 + 1480;
  sub_1D0B9F5D4(a1 + 1440, a3);
  v5 = *(a1 + 1448);
  v6 = *(a1 + 1452);
  *(a1 + 8) = v5;
  *(a1 + 12) = v6;
  v7 = (v6 * v5);
  *(a1 + 16) = v7;
  *(a1 + 20) = v5;
  if (v7 >= 1)
  {
    v8 = *(a1 + 1472);
    v9 = *(a2 + 32);
    v10 = *(a1 + 32);
    do
    {
      v11 = *v8++;
      *v10++ = *(v9 + 8 * v11);
      --v7;
    }

    while (v7);
  }

  return a1;
}

void sub_1D0C0215C(_Unwind_Exception *a1)
{
  v1[7] = &unk_1F4CDEAF8;
  *v1 = &unk_1F4CE38E8;
  sub_1D0BD9B48(v2);
  *v1 = &unk_1F4CE3830;
  _Unwind_Resume(a1);
}

void sub_1D0C02288(uint64_t a1)
{
  *(a1 + 24) = 0x1000000AELL;
  *a1 = &unk_1F4CE38E8;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 8) = xmmword_1D0E843F0;
  sub_1D0C021C4(a1);
}

void sub_1D0C02300(_Unwind_Exception *a1)
{
  sub_1D0BD9B48(v2);
  *v1 = &unk_1F4CE3830;
  _Unwind_Resume(a1);
}

uint64_t sub_1D0C02334(uint64_t a1, uint64_t a2, void *lpsrc, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!lpsrc || (v11 = __dynamic_cast(lpsrc, &unk_1F4CE42A0, &unk_1F4CEC240, 0)) == 0)
  {
    LOWORD(v38) = 12;
    LOBYTE(v46.f64[0]) = 4;
LABEL_21:
    cnprint::CNPrinter::Print(&v38, &v46, "time,%.3lf,h-function failure on line %d: %s() %s");
    return 0xFFFFFFFFLL;
  }

  v12 = v11;
  v14 = *(a1 + 8);
  v13 = *(a1 + 12);
  if (v14 <= v13)
  {
    v15 = *(a1 + 12);
  }

  else
  {
    v15 = *(a1 + 8);
  }

  if (!v14 || !v13 || v15 != 8 || ((v17 = *(a2 + 8), v16 = *(a2 + 12), v17 <= v16) ? (v18 = *(a2 + 12)) : (v18 = *(a2 + 8)), !v17 || !v16 || v18 != 1))
  {
    LOWORD(v38) = 12;
    LOBYTE(v46.f64[0]) = 4;
    goto LABEL_21;
  }

  if ((v11[128] & 1) == 0)
  {
    LOWORD(v38) = 12;
    LOBYTE(v46.f64[0]) = 4;
    cnprint::CNPrinter::Print(&v38, &v46, "time,%.3lf,h-function failure on line %d: %s() %s", *(v11 + 6) + *(v11 + 5), 1422, "h_GnssPsr_RavenConvergence", "invalid time");
    LOWORD(v38) = 12;
    LOBYTE(v46.f64[0]) = 4;
    sub_1D0BCFAB8((v12 + 56));
    cnprint::CNPrinter::Print(&v38, &v46, "t,%.3lf,%s,TAI time invalid");
    return 0xFFFFFFFFLL;
  }

  v19 = *(a1 + 32);
  v52 = *v19;
  v53 = *(v19 + 2);
  v51 = &unk_1F4CD5F20;
  v49 = 0.0;
  v50 = &unk_1F4CD5BC8;
  v20 = *(v19 + 6) * 0.000001;
  v47 = 0u;
  v48 = 0u;
  v45 = *(v11 + 136);
  v21.i64[1] = *(&v45 + 1);
  v46 = 0u;
  v21.i64[0] = *(v11 + 24);
  LOWORD(v38) = 0;
  v39 = 0u;
  v40 = 0u;
  LODWORD(v41) = 0;
  *(&v41 + 1) = 0;
  *&v42 = 0;
  DWORD2(v42) = 0;
  if (cnnavigation::GNSSPseudorange(&v45, &v38, &v52, (v11 + 296), &v51, &v50, &v49, 1, v21, *&v20, &v46))
  {
    LOWORD(v38) = 12;
    LOBYTE(v45) = 4;
    cnprint::CNPrinter::Print(&v38, &v45, "time,%.3lf,h-function failure on line %d: %s() %s", *(v12 + 6) + *(v12 + 5), 1451, "h_GnssPsr_RavenConvergence", "could not compute expected measurement");
    if (cnprint::CNPrinter::GetLogLevel(v22) <= 1)
    {
      LOWORD(v38) = 12;
      LOBYTE(v45) = 1;
      sub_1D0BCFAB8((v12 + 56));
      cnprint::CNPrinter::Print(&v38, &v45, "t,%.3lf,%s,GNSSPseudorange returned != 0");
    }

    return 0xFFFFFFFFLL;
  }

  *&v24 = 0x100000001;
  *(&v24 + 1) = 0x100000001;
  *(a4 + 8) = v24;
  *&v40 = 0x800000001;
  v38 = &unk_1F4CEC348;
  *(&v40 + 1) = &v41;
  v39 = xmmword_1D0E9CBE0;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  sub_1D0B894B0(a5, &v38);
  v25 = *(v12 + 64);
  v26 = v49;
  if (v25)
  {
    **(a4 + 32) = v49 + *v25 + **(a2 + 32);
    v27 = *(v25 + 40);
    v28 = *(a5 + 32);
    *v28 = *v27;
    v31 = *(v25 + 28);
    v29 = *(a5 + 20);
    v28[v29] = v27[v31];
    v30 = &v27[2 * v31];
    LODWORD(v31) = v29;
  }

  else
  {
    **(a4 + 32) = v49 + **(a2 + 32);
    v28 = *(a5 + 32);
    v32 = *(&v47 + 1);
    *v28 = v47;
    v31 = *(a5 + 20);
    v28[v31] = v32;
    v30 = &v48;
  }

  v28[2 * v31] = *v30;
  *&v28[6 * v31] = *(&v48 + 1) * 0.000001;
  *&v40 = 0x100000001;
  v38 = &unk_1F4CDF418;
  *&v33 = 0x100000001;
  *(&v33 + 1) = 0x100000001;
  v39 = v33;
  *(&v40 + 1) = &v41;
  *&v41 = 0x3FF0000000000000;
  sub_1D0B894B0(a6, &v38);
  if (!cnprint::CNPrinter::GetLogLevel(v34))
  {
    LOWORD(v38) = 12;
    LOBYTE(v45) = 0;
    v36 = *(v12 + 11);
    v35 = *(v12 + 12);
    v37 = sub_1D0BCFAB8((v12 + 56));
    cnprint::CNPrinter::Print(&v38, &v45, "t,%.3lf,%s,using PSR,predicted,%.3lf,diff,%.3lf,clockEstMtrs,%.2lf,std,%.2lf,multipath,%hhu,cno,%.1lf", v35 + v36, v37, v26, *(v12 + 26) - v26, v20 * 299792458.0, *(v12 + 64), v12[277], *(v12 + 50));
  }

  return 0;
}

uint64_t sub_1D0C0286C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = *(a2 + 8);
    v4 = *(a2 + 12);
    *(a1 + 8) = v5;
    *(a1 + 12) = v4;
    v6 = v4 * v5;
    *(a1 + 16) = v6;
    *(a1 + 20) = v5;
    v7 = *(a2 + 16);
    if (v7 > 3)
    {
      v10 = (v7 - 1);
      v11 = *(a1 + 32);
      v12 = *(a2 + 32);
      v13 = v11 + (v10 << 6);
      v14 = v12;
      v15 = v10;
      do
      {
        sub_1D0B894B0(v11, v14);
        v11 += 64;
        v14 += 64;
        --v15;
      }

      while (v15);
      sub_1D0B894B0(v13, v12 + (v10 << 6));
    }

    else if (v6 >= 1)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        sub_1D0B894B0(*(a1 + 32) + v8, *(a2 + 32) + v8);
        ++v9;
        v8 += 64;
      }

      while (v9 < *(a1 + 16));
    }
  }

  return a1;
}

void sub_1D0C02A0C(uint64_t a1)
{
  *(a1 + 24) = 0x1000000AELL;
  *a1 = &unk_1F4CE38A0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 8) = xmmword_1D0E843F0;
  sub_1D0C0294C(a1);
}

void sub_1D0C02A84(_Unwind_Exception *a1)
{
  sub_1D0C02C50(v2);
  *v1 = &unk_1F4CE37A8;
  _Unwind_Resume(a1);
}

void sub_1D0C02BE8(_Unwind_Exception *a1)
{
  v1[7] = &unk_1F4CDEAF8;
  *v1 = &unk_1F4CE38A0;
  sub_1D0C02C50(v2);
  *v1 = &unk_1F4CE37A8;
  _Unwind_Resume(a1);
}

uint64_t *sub_1D0C02C50(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = 112 * v4;
      v6 = v2 - 112;
      do
      {
        *(v6 + v5) = &unk_1F4CD5E28;
        v5 -= 112;
      }

      while (v5);
    }

    MEMORY[0x1D387EC80](v3, 0x1081C80064FE0DDLL);
  }

  return a1;
}

uint64_t *sub_1D0C02CD4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    v5 = v4 - 16;
    v6 = *(v4 - 8);
    if (v6)
    {
      v7 = 112 * v6;
      v8 = v4 - 112;
      do
      {
        *(v8 + v7) = &unk_1F4CD5E28;
        v7 -= 112;
      }

      while (v7);
    }

    MEMORY[0x1D387EC80](v5, 0x1081C80064FE0DDLL);
  }

  return a1;
}

uint64_t sub_1D0C02D60(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = *(a2 + 8);
    v4 = *(a2 + 12);
    *(a1 + 8) = v5;
    *(a1 + 12) = v4;
    v6 = v4 * v5;
    *(a1 + 16) = v6;
    *(a1 + 20) = v5;
    v7 = *(a2 + 16);
    if (v7 > 3)
    {
      v10 = v7 - 1;
      v11 = *(a1 + 32);
      v12 = *(a2 + 32);
      v13 = v11 + 112 * (v7 - 1);
      v14 = v12;
      v15 = (v7 - 1);
      do
      {
        sub_1D0B894B0(v11, v14);
        v11 += 112;
        v14 += 112;
        --v15;
      }

      while (v15);
      sub_1D0B894B0(v13, v12 + 112 * v10);
    }

    else if (v6 >= 1)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        sub_1D0B894B0(*(a1 + 32) + v8, *(a2 + 32) + v8);
        ++v9;
        v8 += 112;
      }

      while (v9 < *(a1 + 16));
    }
  }

  return a1;
}

uint64_t sub_1D0C02E48(uint64_t a1, uint64_t a2, void *lpsrc, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!lpsrc || (v11 = __dynamic_cast(lpsrc, &unk_1F4CE42A0, &unk_1F4CEC300, 0)) == 0)
  {
    LOWORD(v74) = 12;
    LOBYTE(v64) = 4;
LABEL_27:
    cnprint::CNPrinter::Print(&v74, &v64, "time,%.3lf,h-function failure on line %d: %s() %s");
    return 0xFFFFFFFFLL;
  }

  v13 = v11;
  v15 = *(a1 + 8);
  v14 = *(a1 + 12);
  if (v15 <= v14)
  {
    v16 = *(a1 + 12);
  }

  else
  {
    v16 = *(a1 + 8);
  }

  if (!v15 || !v14 || v16 != 8 || ((v18 = *(a2 + 8), v17 = *(a2 + 12), v18 <= v17) ? (v19 = *(a2 + 12)) : (v19 = *(a2 + 8)), !v18 || !v17 || v19 != 1))
  {
    LOWORD(v74) = 12;
    LOBYTE(v64) = 4;
    goto LABEL_27;
  }

  if ((v11[16] & 1) == 0)
  {
    LOWORD(v74) = 12;
    LOBYTE(v64) = 4;
    cnprint::CNPrinter::Print(&v74, &v64, "time,%.3lf,h-function failure on line %d: %s() %s", v11[6] + *(v11 + 5), 716, "h_GnssAverageDoppler_RavenConvergence", "invalid time");
    LOWORD(v74) = 12;
    LOBYTE(v64) = 4;
    sub_1D0BCFAB8((v13 + 7));
    cnprint::CNPrinter::Print(&v74, &v64, "t,%.3lf,%s,%s,TAI time invalid");
    return 0xFFFFFFFFLL;
  }

  v12.i64[0] = v11[35];
  v20 = v11[36] - *v12.i64;
  v21 = (COERCE__INT64(fabs(v20)) - 0x10000000000000) >> 53;
  if ((*&v20 <= -1 || v21 >= 0x3FF) && (*&v20 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    LOWORD(v74) = 12;
    LOBYTE(v64) = 4;
    cnprint::CNPrinter::Print(&v74, &v64, "time,%.3lf,h-function failure on line %d: %s() %s", v11[6] + *(v11 + 5), 724, "h_GnssAverageDoppler_RavenConvergence", "invalid measurement interval");
    LOWORD(v74) = 12;
    LOBYTE(v64) = 4;
    sub_1D0BCFAB8((v13 + 7));
    cnprint::CNPrinter::Print(&v74, &v64, "t,%.3lf,%s,%s,Invalid time interval,%.2lf");
    return 0xFFFFFFFFLL;
  }

  v83[0] = a1;
  v83[1] = v11;
  v82 = 0.0;
  v80 = 0u;
  *v81 = 0u;
  v79 = 0u;
  v76 = 0x800000008;
  v74 = &unk_1F4CE43B0;
  v75 = xmmword_1D0E84510;
  v77 = &v78;
  *&v65 = 0;
  v64 = 0;
  *v24.i64 = CNTimeSpan::SetTimeSpan(&v64, 0, v12, xmmword_1D0E84510);
  v73[0] = CNTimeSpan::operator+(v13 + 11, &v64, v24, v25);
  v73[1] = v26;
  if (sub_1D0C03638(v83, v73, &v82, &v79, &v74, v27, v28))
  {
    LOWORD(v64) = 12;
    LOBYTE(v60[0]) = 4;
    cnprint::CNPrinter::Print(&v64, v60, "time,%.3lf,h-function failure on line %d: %s() %s");
    return 0xFFFFFFFFLL;
  }

  v72 = 0.0;
  v71 = 0u;
  v70 = 0u;
  v69 = 0u;
  v66 = 0x800000008;
  v64 = &unk_1F4CE43B0;
  v31.i64[1] = 0x800000040;
  v65 = xmmword_1D0E84510;
  v67 = &v68;
  v31.i64[0] = v13[36];
  v60[0] = 0;
  v60[1] = 0;
  *v32.i64 = CNTimeSpan::SetTimeSpan(v60, 0, v31, v29);
  v63[0] = CNTimeSpan::operator+(v13 + 11, v60, v32, v33);
  v63[1] = v34;
  if (sub_1D0C03638(v83, v63, &v72, &v69, &v64, v35, v36))
  {
    sub_1D0D85A30((v13 + 5), "could not compute expected carrier phase at end", "h_GnssAverageDoppler_RavenConvergence", 836);
    return 0xFFFFFFFFLL;
  }

  v37 = 1.0 / v20 * (299792458.0 / v13[24]);
  *&v38 = 0x100000001;
  *(&v38 + 1) = 0x100000001;
  *(a4 + 8) = v38;
  v39 = v72;
  v40 = v82;
  v41 = v72 - v82;
  **(a4 + 32) = **(a2 + 32) + (v72 - v82) * v37;
  sub_1D0BD1400(1, 8, v60);
  v42 = *(&v70 + 1);
  v43 = v62;
  *v62 = v37 * *&v70;
  v44 = v61;
  v43[v61] = v37 * v42;
  v45 = *(&v71 + 1);
  v43[2 * v44] = v37 * *&v71;
  v43[6 * v44] = v37 * v45 * 0.000001;
  sub_1D0BD1400(1, 8, v57);
  v46 = *(&v80 + 1);
  v47 = v59;
  *v59 = v37 * *&v80;
  v48 = v58;
  v47[v58] = v37 * v46;
  v49 = v81[1];
  v47[2 * v48] = v37 * v81[0];
  v47[6 * v48] = v37 * v49 * 0.000001;
  sub_1D0BD1400(1, 8, v56);
  sub_1D0B894B0(a5, v56);
  if (fabs(v13[36]) <= 0.001)
  {
    sub_1D0BD1484(v57, &v74, v55);
    sub_1D0BD1508(v60, v55, v56);
  }

  else
  {
    sub_1D0BD1484(v60, &v64, v55);
    sub_1D0BD1484(v57, &v74, v54);
    sub_1D0BD1508(v55, v54, v56);
  }

  sub_1D0B894B0(a5, v56);
  *(*(a5 + 32) + 56 * *(a5 + 20)) = *(*(a5 + 32) + 56 * *(a5 + 20)) + v37 * v41 * 0.000001;
  sub_1D0BBBC94(1u, 1u, v56);
  sub_1D0B894B0(a6, v56);
  if (!cnprint::CNPrinter::GetLogLevel(v50))
  {
    v56[0] = 12;
    v55[0] = 0;
    v52 = *(v13 + 11);
    v51 = v13[12];
    v53 = sub_1D0BCFAB8((v13 + 7));
    cnprint::CNPrinter::Print(v56, v55, "t,%.3lf,%s,using average Doppler,predictedCrnt,%.3lf,predictedPrev,%.3lf,diff,%.3lf,std,%.4lf,multipath,%hhu,cno,%.1lf", v51 + v52, v53, v39, v40, **(a4 + 32), *(v13 + 64), *(v13 + 277), *(v13 + 50));
  }

  return 0;
}

uint64_t sub_1D0C03550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x1000000AELL;
  *(a1 + 8) = xmmword_1D0E843F0;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE3500;
  *(a1 + 1432) = a2;
  *(a1 + 1464) = 0x1000000AELL;
  *(a1 + 1440) = &unk_1F4CE05D8;
  *(a1 + 1448) = xmmword_1D0E843F0;
  *(a1 + 1472) = a1 + 1480;
  sub_1D0B9F5D4(a1 + 1440, a3);
  v5 = *(a1 + 1448);
  v6 = *(a1 + 1452);
  *(a1 + 8) = v5;
  *(a1 + 12) = v6;
  v7 = (v6 * v5);
  *(a1 + 16) = v7;
  *(a1 + 20) = v5;
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      *(*(a1 + 32) + 8 * i) = *(*(a2 + 32) + 8 * *(*(a1 + 1472) + 4 * i));
    }
  }

  return a1;
}

uint64_t sub_1D0C03638(uint64_t *a1, void *a2, double *a3, float64x2_t *a4, uint64_t a5, int8x16_t a6, int8x16_t a7)
{
  v11 = a1[1];
  v12 = CNTimeSpan::operator-(a2, (v11 + 88), a6, a7);
  v14 = *(*a1 + 32);
  v127 = *v14;
  v128 = *(v14 + 2);
  v15 = *(v14 + 6);
  *&v40 = 0x800000008;
  v38 = &unk_1F4CE43B0;
  *(&v40 + 1) = &v41;
  v39 = xmmword_1D0E84510;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
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
  v16 = 40;
  v54 = 0u;
  do
  {
    *(&v38 + v16) = 0x3FF0000000000000;
    v16 += 72;
  }

  while (v16 != 616);
  *&v17 = v13 + v12;
  v18 = sub_1D0B894B0(a5, &v38);
  v19.i64[0] = 0x3F50624DD2F1A9FCLL;
  if (fabs(*&v17) > 0.001)
  {
    v126 = v17;
    *&v41 = 0x700000006;
    v123 = 0x100000008;
    v121 = &unk_1F4CE43F8;
    v122 = xmmword_1D0E83F60;
    v124 = &v125;
    v125 = 0x700000006;
    v118 = 0x100000008;
    v116 = &unk_1F4CE4320;
    v119 = v120;
    v117 = xmmword_1D0E83F60;
    v120[1] = 0;
    v120[0] = 0;
    v113 = 0x100000008;
    v112 = xmmword_1D0E84520;
    v111 = &unk_1F4CE4320;
    v114 = &v115;
    v108 = 0x800000008;
    v106 = &unk_1F4CE43B0;
    v107 = xmmword_1D0E84510;
    v109 = &v110;
    v103 = 0x800000008;
    v101 = &unk_1F4CE43B0;
    v102 = xmmword_1D0E84510;
    v104 = &v105;
    sub_1D0BA4EA4(*a1, &v121, &v38);
    v20 = sub_1D0BA55E4(&v38, &v116, &v126, &v111, &v106, &v101);
    if (v20)
    {
      if (cnprint::CNPrinter::GetLogLevel(v20) <= 1)
      {
        LOWORD(v38) = 12;
        LOBYTE(v79) = 1;
        sub_1D0BCFAB8(a1[1] + 56);
        cnprint::CNPrinter::Print(&v38, &v79, "t,%.3lf,%s,f_TwoStateOscillator failed");
      }

      return 0xFFFFFFFFLL;
    }

    v21 = 0;
    v100 = v17;
    v22 = xmmword_1D0E7DD30;
    v23 = &v41 + 1;
    v24 = vdupq_n_s64(6uLL);
    v25 = vdupq_n_s64(2uLL);
    do
    {
      if (vmovn_s64(vcgtq_u64(v24, v22)).u8[0])
      {
        *(v23 - 1) = v21;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v22)).i32[1])
      {
        *v23 = v21 + 1;
      }

      v21 += 2;
      v22 = vaddq_s64(v22, v25);
      v23 += 2;
    }

    while (v21 != 6);
    v96 = 0x100000008;
    v94 = &unk_1F4CE43F8;
    v97 = &v98;
    v95 = xmmword_1D0E84530;
    v98 = v41;
    v99 = v42;
    v91 = 0x100000008;
    v89 = &unk_1F4CE4320;
    v92 = v93;
    v90 = xmmword_1D0E84530;
    memset(v93, 0, 48);
    v86 = 0x100000008;
    v85 = xmmword_1D0E84520;
    v84 = &unk_1F4CE4320;
    v87 = &v88;
    v81 = 0x800000008;
    v79 = &unk_1F4CE43B0;
    v80 = xmmword_1D0E84510;
    v82 = &v83;
    v76 = 0x800000008;
    v74 = &unk_1F4CE43B0;
    v75 = xmmword_1D0E84510;
    v77 = &v78;
    sub_1D0BA4EA4(*a1, &v94, &v38);
    v26 = sub_1D0BA4C04(&v38, &v89, &v100, &v84, &v79, &v74);
    if (v26)
    {
      if (cnprint::CNPrinter::GetLogLevel(v26) <= 1)
      {
        LOWORD(v38) = 12;
        v73 = 1;
        v27 = *(v11 + 88);
        v28 = *(v11 + 96);
        v29 = sub_1D0BCFAB8(a1[1] + 56);
        cnprint::CNPrinter::Print(&v38, &v73, "t,%.3lf,%s,f_SixStateNearlyConstantVelocity failed", v28 + v27, v29);
      }

      return 0xFFFFFFFFLL;
    }

    v30 = v87[2];
    v127 = *v87;
    v128 = v30;
    v15 = *v114;
    sub_1D0BA16B8(&v38, a5, &v94, &v94);
    sub_1D0B9F65C(&v38, &v79);
    sub_1D0BA16B8(&v38, a5, &v121, &v121);
    sub_1D0B9F65C(&v38, &v106);
  }

  v31 = a1[1];
  v38 = 0;
  *&v39 = 0;
  v18.n128_u64[0] = v17;
  *v32.i64 = CNTimeSpan::SetTimeSpan(&v38, 0, v18, v19);
  v106 = CNTimeSpan::operator+((v31 + 136), &v38, v32, v33);
  *&v107 = v34;
  v35.i64[0] = *(v31 + 192);
  *v36.i64 = v15 * 0.000001;
  v101 = &unk_1F4CD5F20;
  v79 = &unk_1F4CD5BC8;
  LOWORD(v38) = 0;
  v39 = 0u;
  v40 = 0u;
  LODWORD(v41) = 0;
  *(&v41 + 1) = 0;
  *&v42 = 0;
  DWORD2(v42) = 0;
  result = cnnavigation::GNSSCarrierPhase(&v106, &v38, &v127, v31 + 296, &v101, &v79, a3, 1, v35, v36, 0.0, a4);
  if (!result)
  {
    return result;
  }

  if (cnprint::CNPrinter::GetLogLevel(result) <= 1)
  {
    LOWORD(v38) = 12;
    LOBYTE(v101) = 1;
    sub_1D0BCFAB8(a1[1] + 56);
    cnprint::CNPrinter::Print(&v38, &v101, "t,%.3lf,%s,GNSSCarrierPhase,start,returned != 0");
  }

  return 0xFFFFFFFFLL;
}

void sub_1D0C03D10(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0BB2F1C(v8, a3);
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

void sub_1D0C03E18(_Unwind_Exception *exception_object)
{
  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0C03E34(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  *(a1 + 296) = &unk_1F4CDFE98;
  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  *(a1 + 296) = &unk_1F4CD5F70;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  return a1;
}

uint64_t raven::RavenIntegrityEstimator::HandleEvent(raven::RavenIntegrityEstimator *this, const raven::SignalEnvironmentEvent *a2)
{
  if (*(this + 680) != 1)
  {
    goto LABEL_17;
  }

  v4 = this + 688;
  v5 = (*(*(this + 86) + 16))(this + 688);
  v7 = v6;
  v8 = v6;
  v9 = (*(*a2 + 16))(a2);
  v11.n128_f64[0] = v10;
  if (v5)
  {
    v12 = 1;
  }

  else
  {
    v12 = (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  }

  if (!v12 || (!v9 ? (v13 = (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) : (v13 = 1), !v13 || (v14 = v5 <= v9, v5 == v9)))
  {
    v14 = v8 <= v10;
  }

  if (v14)
  {
LABEL_17:
    if (*(this + 680) == 1)
    {
      v20 = *(a2 + 8);
      v21 = *(a2 + 40);
      *(this + 712) = *(a2 + 24);
      *(this + 728) = v21;
      *(this + 696) = v20;
      v22 = *(a2 + 56);
      v23 = *(a2 + 72);
      v24 = *(a2 + 88);
      *(this + 792) = *(a2 + 104);
      *(this + 760) = v23;
      *(this + 776) = v24;
      *(this + 744) = v22;
    }

    else
    {
      *(this + 86) = &unk_1F4CEF5C8;
      v25 = *(a2 + 8);
      v26 = *(a2 + 40);
      *(this + 712) = *(a2 + 24);
      *(this + 728) = v26;
      *(this + 696) = v25;
      v27 = *(a2 + 56);
      v28 = *(a2 + 72);
      v29 = *(a2 + 88);
      *(this + 792) = *(a2 + 104);
      *(this + 760) = v28;
      *(this + 776) = v29;
      *(this + 744) = v27;
      *(this + 680) = 1;
    }
  }

  else
  {
    v32 = 12;
    v31 = 4;
    if ((*(this + 680) & 1) == 0)
    {
      __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
    }

    v15 = (*(*v4 + 16))(this + 688, v11);
    v17 = v16 + v15;
    v18 = (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v32, &v31, "RavenIntegrityEstimator: signal environment data out of order,t_curr,%.3lf,t_new,%.3lf", v17, v19 + v18);
  }

  return 0;
}

void sub_1D0C0417C(uint64_t a1, raven::RavenIonosphereEstimatorActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0BCA910(v4, a3);
  raven::RavenIonosphereEstimatorActiveObject::HandleEvent(v3, v4);
  v4[0] = &unk_1F4CEF598;
  v6 = &v5;
  sub_1D0BBBD80(&v6);
}

void sub_1D0C041EC(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1 + 96;
  sub_1D0BBBD80((v2 - 24));
  _Unwind_Resume(a1);
}

void raven::RavenIonosphereEstimatorActiveObject::HandleEvent(raven::RavenIonosphereEstimatorActiveObject *this, const raven::GnssPreprocessedMeasurementsEvent *a2)
{
  if (*(this + 224))
  {
    if (*(this + 225))
    {
      std::mutex::lock((this + 1968));
      raven::RavenIonosphereEstimator::HandleEvent((this + 2032), a2);

      std::mutex::unlock((this + 1968));
    }
  }

  else
  {
    v7 = 12;
    v6 = 2;
    v4 = cnprint::CNLogFormatter::FormatGeneral(this + 239, "RavenIonosphereEstimatorActiveObject: not configured");
    if (*(this + 1935) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *(this + 239);
    }

    cnprint::CNPrinter::Print(&v7, &v6, "%s", v5);
  }
}

uint64_t raven::RavenIonosphereEstimator::HandleEvent(raven::RavenIonosphereEstimator *this, const raven::GnssPreprocessedMeasurementsEvent *a2)
{
  if ((*(this + 8) & 1) == 0)
  {
    LOWORD(v77) = 12;
    v87.__r_.__value_.__s.__data_[0] = 2;
    v64 = cnprint::CNLogFormatter::FormatWarning((this + 4040), "GnssPreprocessedMeasurementsEvent received, but estimator is not configured");
    if (*(this + 4063) >= 0)
    {
      v65 = v64;
    }

    else
    {
      v65 = *(this + 505);
    }

    cnprint::CNPrinter::Print(&v77, &v87, "%s", v65);
    return 0xFFFFFFFFLL;
  }

  if (*(this + 9) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v158[0] = 0;
  v158[1] = 0;
  v159 = 0;
  v5 = *(a2 + 12);
  v4 = *(a2 + 13);
  if (v5 == v4)
  {
    return 0;
  }

  v69 = (this + 4040);
  v70 = vdupq_n_s64(0x7FF8000000000000uLL);
  do
  {
    v6 = *v5;
    if (!*v5)
    {
      goto LABEL_10;
    }

    v7 = *(v6 + 24);
    v8 = v7 > 6;
    v9 = (1 << v7) & 0x65;
    if (!v8 && v9 != 0)
    {
      goto LABEL_10;
    }

    v12 = *(v6 + 328);
    v11 = *(v6 + 336);
    if (v11 == v12)
    {
      goto LABEL_10;
    }

    v13 = 0;
    v14 = 0;
    v15 = 0uLL;
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    *&v153 = 0;
    *(&v153 + 1) = 0x7FF8000000000000;
    LODWORD(v154) = 0;
    BYTE4(v154) = 0;
    *(&v154 + 1) = 0x7FF8000000000000;
    v16 = v70;
    *&v155[8] = v70;
    *&v155[24] = v70;
    *&v155[40] = v70;
    *v155 = 2143289344;
    *&v155[56] = 2143289344;
    v155[60] = 0;
    LOBYTE(v156) = 0;
    BYTE4(v156) = 0;
    BYTE8(v156) = 0;
    WORD6(v156) = 0;
    BYTE14(v156) = 1;
    v157 = v70;
    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    v138 = 0u;
    *&v143 = 0;
    *(&v143 + 1) = 0x7FF8000000000000;
    LODWORD(v144) = 0;
    BYTE4(v144) = 0;
    *(&v144 + 1) = 0x7FF8000000000000;
    *&v145[8] = v70;
    *&v145[24] = v70;
    *&v145[40] = v70;
    *v145 = 2143289344;
    *&v145[56] = 2143289344;
    v145[60] = 0;
    LOBYTE(v146) = 0;
    BYTE4(v146) = 0;
    BYTE8(v146) = 0;
    WORD6(v146) = 0;
    BYTE14(v146) = 1;
    v147 = v70;
    v148 = 0u;
    while (*(v12 + 96) != 1)
    {
LABEL_23:
      v12 += 208;
      if (v12 == v11)
      {
        goto LABEL_10;
      }
    }

    v17 = *(v12 + 100);
    if (v17 > 8)
    {
      goto LABEL_21;
    }

    v18 = 1 << v17;
    if ((v18 & 0xB2) != 0)
    {
      v14 = 1;
      v19 = &v148;
LABEL_20:
      *v19 = *v12;
      v20 = *(v12 + 16);
      v21 = *(v12 + 32);
      v22 = *(v12 + 64);
      v19[3] = *(v12 + 48);
      v19[4] = v22;
      v19[1] = v20;
      v19[2] = v21;
      v23 = *(v12 + 80);
      v24 = *(v12 + 96);
      v25 = *(v12 + 128);
      v19[7] = *(v12 + 112);
      v19[8] = v25;
      v19[5] = v23;
      v19[6] = v24;
      v15 = *(v12 + 144);
      v16 = *(v12 + 160);
      v26 = *(v12 + 192);
      v19[11] = *(v12 + 176);
      v19[12] = v26;
      v19[9] = v15;
      v19[10] = v16;
      goto LABEL_21;
    }

    if ((v18 & 0x144) != 0)
    {
      v13 = 1;
      v19 = &v138;
      goto LABEL_20;
    }

LABEL_21:
    if ((v13 & 1) == 0 || (v14 & 1) == 0)
    {
      goto LABEL_23;
    }

    v27 = CNTimeSpan::operator-(&v138, &v148, v15, v16);
    v77 = v27;
    v78 = v28;
    if (v27 < 0 || (*v29.i64 = v28, v28 < 0.0))
    {
      v27 = CNTimeSpan::operator-(&v77, v29, v30);
      v29.i64[0] = v31;
    }

    if (fabs(*v29.i64 + v27) < 2.22044605e-16)
    {
      if (*(v6 + 264) < *this * 0.0174532925)
      {
        if (!cnprint::CNPrinter::GetLogLevel(v27))
        {
          LOWORD(v87.__r_.__value_.__l.__data_) = 12;
          LOBYTE(v133) = 0;
          v77 = (*(*a2 + 16))(a2);
          v78 = v32;
          v33 = sub_1D0BCFAB8(v6);
          v34 = cnprint::CNLogFormatter::FormatGeneral(v69, &v77, "%s,GnssPreprocessedMeasurementsEvent: Sat excluded,low elevation,%.2f deg", v33, *(v6 + 264) * 57.2957795);
          if (*(this + 4063) >= 0)
          {
            v35 = v34;
          }

          else
          {
            v35 = *(this + 505);
          }

          goto LABEL_34;
        }

        goto LABEL_10;
      }

      v135 = 0x100000001;
      *&v39 = 0x100000001;
      *(&v39 + 1) = 0x100000001;
      v134 = v39;
      v133 = &unk_1F4CDF418;
      v136 = &v137;
      v130 = 0x100000001;
      v129 = v39;
      v128 = &unk_1F4CDF418;
      v131 = &v132;
      sub_1D0B751F4(&v87, &unk_1D0ED80C5);
      LOBYTE(v88) = 0;
      HIDWORD(v88) = -1;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      *&v94 = 0;
      *(&v94 + 1) = 0x7FF8000000000000;
      LODWORD(v95) = 0;
      BYTE4(v95) = 0;
      *(&v95 + 1) = 0x7FF8000000000000;
      *&v96[8] = v70;
      *&v96[24] = v70;
      *&v96[40] = v70;
      *v96 = 2143289344;
      *&v96[56] = 2143289344;
      v96[60] = 0;
      LOBYTE(v97) = 0;
      BYTE4(v97) = 0;
      BYTE8(v97) = 0;
      WORD6(v97) = 0;
      BYTE14(v97) = 1;
      v98 = v70;
      *&v104 = 0;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v99 = 0u;
      *(&v104 + 1) = 0x7FF8000000000000;
      LODWORD(v105) = 0;
      BYTE4(v105) = 0;
      *(&v105 + 1) = 0x7FF8000000000000;
      LODWORD(v106) = 2143289344;
      v107 = v70;
      v108 = v70;
      *(&v106 + 1) = 0x7FF8000000000000;
      *&v109 = 0x7FF8000000000000;
      DWORD2(v109) = 2143289344;
      BYTE12(v109) = 0;
      LOBYTE(v110) = 0;
      BYTE4(v110) = 0;
      BYTE8(v110) = 0;
      WORD6(v110) = 0;
      BYTE14(v110) = 1;
      v111 = v70;
      v112 = &unk_1F4CDFE98;
      v40 = sub_1D0B751F4(&__p, &unk_1D0ED80C5);
      LOBYTE(v114) = 0;
      HIDWORD(v114) = -1;
      v115 = 0u;
      v116 = 0u;
      v117 = 0u;
      v118 = 0u;
      v119 = 0u;
      v120 = 0u;
      v121 = 0u;
      v122 = 0u;
      v123 = 0u;
      v124 = 0u;
      v125 = 0u;
      v126 = 0u;
      v127 = 0;
      if (v154 == v144)
      {
        if (BYTE4(v154) == BYTE4(v144))
        {
          LOWORD(v77) = 12;
          LOBYTE(v71) = 4;
          cnprint::CNLogFormatter::FormatGeneral(v69, "GetGeometryFreeGNSSObservationArgs, gnss_band_ is identical between the two observables,obs1.gnss_band_,%d,obs2.gnss_band_,%d", BYTE4(v154), BYTE4(v154));
          v41 = v69;
          if (*(this + 4063) < 0)
          {
            v41 = *(this + 505);
          }

          goto LABEL_45;
        }

        v67 = *(this + 127);
        v45 = *(this + 256);
        *&v46 = 0x100000001;
        *(&v46 + 1) = 0x100000001;
        v134 = v46;
        v129 = v46;
        *v136 = *&v145[8] + *&v145[16] - *&v145[24] - (*&v155[8] + *&v155[16] - *&v155[24]);
        *v131 = (*&v145[56] * *&v145[56]) + (*&v155[56] * *&v155[56]);
        if (!cnprint::CNPrinter::GetLogLevel(v40))
        {
          LOWORD(v77) = 12;
          LOBYTE(v71) = 0;
          cnprint::CNPrinter::Print(&v77, &v71, "GetGeometryFreeGNSSObservationArgs,z,%.5lf,R,%.5f", *v136, *v131);
        }

        v108 = *&v145[32];
        v109 = *&v145[48];
        v110 = v146;
        v111 = v147;
        v104 = v143;
        v105 = v144;
        v106 = *v145;
        v107 = *&v145[16];
        v100 = v139;
        v101 = v140;
        v102 = v141;
        v103 = v142;
        *&v96[48] = *&v155[48];
        v97 = v156;
        v98 = v157;
        v99 = v138;
        v95 = v154;
        *v96 = *v155;
        *&v96[16] = *&v155[16];
        *&v96[32] = *&v155[32];
        v91 = v150;
        v92 = v151;
        v93 = v152;
        v94 = v153;
        v89 = v148;
        v90 = v149;
        std::string::operator=(&v87, v6);
        v88 = *(v6 + 24);
        std::string::operator=(&__p, (v6 + 40));
        v114 = *(v6 + 64);
        v47 = *(v6 + 72);
        v48 = *(v6 + 104);
        v116 = *(v6 + 88);
        v117 = v48;
        v115 = v47;
        v49 = *(v6 + 120);
        v50 = *(v6 + 136);
        v51 = *(v6 + 168);
        v120 = *(v6 + 152);
        v121 = v51;
        v118 = v49;
        v119 = v50;
        v52 = *(v6 + 184);
        v53 = *(v6 + 200);
        v54 = *(v6 + 232);
        v124 = *(v6 + 216);
        v125 = v54;
        v122 = v52;
        v123 = v53;
        v126 = v67;
        v127 = v45;
        sub_1D0C04F78(&v77, &v87);
        v81 = v148;
        v68 = LOBYTE(v78);
        v55 = sub_1D0BCFAB8(v6);
        sub_1D0B751F4(v75, v55);
        sub_1D0BA01A8(&v77, v68, v75);
        if (v76 < 0)
        {
          operator delete(v75[0]);
        }

        v56 = sub_1D0C05588(this + 8456, &v148, &v133, &v128, &v77);
        if (v56)
        {
          v74 = 12;
          v73 = 4;
          v71 = (*(*a2 + 16))(a2);
          v72 = v57;
          v58 = sub_1D0BCFAB8(v6);
          cnprint::CNLogFormatter::FormatGeneral(v69, &v71, "Could not add measurement - PSR for %s", v58);
          v59 = v69;
          if (*(this + 4063) < 0)
          {
            v59 = *(this + 505);
          }

          cnprint::CNPrinter::Print(&v74, &v73, "%s", v59);
        }

        else
        {
          if (!cnprint::CNPrinter::GetLogLevel(v56))
          {
            v74 = 12;
            v73 = 0;
            v71 = (*(*a2 + 16))(a2);
            v72 = v60;
            v61 = sub_1D0BCFAB8(v6);
            v62 = "UnknownType";
            if ((v154 - 1) <= 4)
            {
              v62 = off_1E83D8148[(v154 - 1)];
            }

            cnprint::CNLogFormatter::FormatGeneral(v69, &v71, "%s,%s,cno,%.2lf,sigma,%.2lf", v61, v62, *v155, sqrt(*v131));
            v63 = v69;
            if (*(this + 4063) < 0)
            {
              v63 = *(this + 505);
            }

            cnprint::CNPrinter::Print(&v74, &v73, "%s", v63);
          }

          ++*(v158 + v154);
        }

        v77 = &unk_1F4CE4300;
        if (v80 < 0)
        {
          operator delete(v79);
        }

        v84 = &unk_1F4CDFE98;
        if (v86 < 0)
        {
          operator delete(v85);
        }

        v84 = &unk_1F4CD5F70;
        if (v83 < 0)
        {
          operator delete(v82);
        }
      }

      else
      {
        LOWORD(v77) = 12;
        LOBYTE(v71) = 4;
        cnprint::CNLogFormatter::FormatGeneral(v69, "GetGeometryFreeGNSSObservationArgs, measurement types do not match,obs1.meas_type_,%d,obs2.meas_type_,%d", v154, v144);
        v41 = v69;
        if (*(this + 4063) < 0)
        {
          v41 = *(this + 505);
        }

LABEL_45:
        cnprint::CNPrinter::Print(&v77, &v71, "%s", v41);
        LOWORD(v71) = 12;
        LOBYTE(v74) = 4;
        v77 = (*(*a2 + 16))(a2);
        v78 = v42;
        v43 = sub_1D0BCFAB8(v6);
        cnprint::CNLogFormatter::FormatGeneral(v69, &v77, "%s,Type,%d,GetGeometryFreeGNSSObservationArgs() failed", v43, v154);
        v44 = v69;
        if (*(this + 4063) < 0)
        {
          v44 = *(this + 505);
        }

        cnprint::CNPrinter::Print(&v71, &v74, "%s", v44);
      }

      v112 = &unk_1F4CDFE98;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v112 = &unk_1F4CD5F70;
      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      goto LABEL_10;
    }

    LOWORD(v87.__r_.__value_.__l.__data_) = 12;
    LOBYTE(v133) = 4;
    v77 = (*(*a2 + 16))(a2);
    v78 = v36;
    v37 = sub_1D0BCFAB8(v6);
    v38 = cnprint::CNLogFormatter::FormatGeneral(v69, &v77, "%s,Type,%d,GnssPreprocessedMeasurementsEvent,timestamp mismatch, cannot form measurement,t1,%.3lf,t2,%.3lf", v37, v154, *(&v148 + 1) + v148, *(&v138 + 1) + v138);
    if (*(this + 4063) >= 0)
    {
      v35 = v38;
    }

    else
    {
      v35 = *(this + 505);
    }

LABEL_34:
    cnprint::CNPrinter::Print(&v87, &v133, "%s", v35);
LABEL_10:
    v5 += 2;
  }

  while (v5 != v4);
  return 0;
}

void sub_1D0C04EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, char a32)
{
  sub_1D0E1A5A0(&a32);
  sub_1D0E1A454(&STACK[0x3A0]);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0C04F78(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1D0BC39B4((a1 + 56), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 72) = *(a2 + 2);
    *(a1 + 56) = v4;
  }

  *(a1 + 80) = *(a2 + 3);
  memcpy((a1 + 88), a2 + 2, 0x1A0uLL);
  *(a1 + 504) = &unk_1F4CDFE98;
  v5 = (a1 + 512);
  if (*(a2 + 479) < 0)
  {
    sub_1D0BC39B4(v5, *(a2 + 57), *(a2 + 58));
  }

  else
  {
    v6 = *(a2 + 456);
    *(a1 + 528) = *(a2 + 59);
    *v5 = v6;
  }

  *(a1 + 536) = *(a2 + 60);
  v7 = *(a2 + 488);
  v8 = *(a2 + 520);
  *(a1 + 560) = *(a2 + 504);
  *(a1 + 576) = v8;
  *(a1 + 544) = v7;
  v9 = *(a2 + 536);
  v10 = *(a2 + 552);
  v11 = *(a2 + 584);
  *(a1 + 624) = *(a2 + 568);
  *(a1 + 640) = v11;
  *(a1 + 592) = v9;
  *(a1 + 608) = v10;
  v12 = *(a2 + 600);
  v13 = *(a2 + 616);
  v14 = *(a2 + 648);
  *(a1 + 688) = *(a2 + 632);
  *(a1 + 704) = v14;
  *(a1 + 656) = v12;
  *(a1 + 672) = v13;
  v15 = *(a2 + 664);
  *(a1 + 736) = *(a2 + 85);
  *(a1 + 720) = v15;
  sub_1D0BA002C(a1, 32);
  *a1 = &unk_1F4CED130;
  return a1;
}

void sub_1D0C050AC(_Unwind_Exception *exception_object)
{
  *(v1 + 504) = &unk_1F4CD5F70;
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0C050F4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v4 = *(a2 + 24);
  }

  else
  {
    LOWORD(v14.__vftable) = 3;
    LOBYTE(v12) = 5;
    cnprint::CNPrinter::Print(&v14, &v12, "Attempted to access type of uninitialized GenericEvent.");
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
    if (v9 != (off_1F4CEEC88 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v9, (off_1F4CEEC88 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v14.__vftable = 0;
      std::bad_cast::bad_cast(&v14);
      v14.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C(&v14);
    }

    v10 = *(a2 + 16);
    *a1 = &unk_1F4CEF6E8;

    memcpy((a1 + 8), (v10 + 16), 0x160uLL);
  }

  else
  {
    v12 = 3;
    v11 = 5;
    if (*(a2 + 8) == 1)
    {
      v7 = *(a2 + 24);
    }

    else
    {
      LOWORD(v14.__vftable) = 3;
      v13 = 5;
      cnprint::CNPrinter::Print(&v14, &v13, "Attempted to access type of uninitialized GenericEvent.");
      v7 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v12, &v11, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEEC88 & 0x7FFFFFFFFFFFFFFFLL));
    *(a1 + 280) = 0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
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
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 264) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEF6E8;
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
    v8 = vdupq_n_s64(0x7FF8000000000000uLL);
    *(a1 + 208) = v8;
    *(a1 + 224) = v8;
    *(a1 + 240) = v8;
    *(a1 + 256) = v8;
    *(a1 + 272) = 0x7FF8000000000000;
    *(a1 + 288) = v8;
    *(a1 + 304) = v8;
    *(a1 + 320) = v8;
    *(a1 + 336) = v8;
    *(a1 + 352) = 0x7FF8000000000000;
  }
}

void sub_1D0C053A8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0C050F4(v8, a3);
  v4 = raven::RavenPassThroughEstimator::HandleEvent((v3 + 288), v8);
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

void sub_1D0C054D4(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenPassThroughEstimator::HandleEvent(raven::RavenPassThroughEstimator *this, const raven::VelocityEvent *a2)
{
  v3 = *(a2 + 200);
  if (v3 == 1)
  {
    ++*(this + 871);
LABEL_6:
    memcpy(this + 3128, a2 + 8, 0x160uLL);
    *(this + 3504) = raven::RavenPassThroughEstimator::IsPosVelValidAndTimeMatched(this, (this + 2760), (this + 3120));
    return 0;
  }

  if (v3 == 9 && *(this + 871))
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_1D0C05588(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[4] = *MEMORY[0x1E69E9840];
  v5 = *(a4 + 8);
  if ((v5 & 0x80000000) != 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
  }

  v18 = 0x100000001;
  v13 = &unk_1F4CDF418;
  v9 = v20;
  v19 = v20;
  v14 = v5;
  v15 = 1;
  v16 = v5;
  v17 = v5;
  if (v5 > 3)
  {
    v10 = &v20[8 * v5];
    bzero(v20, 16 * ((v5 - 1) >> 1));
    *(v10 - 2) = 0;
    *(v10 - 1) = 0;
  }

  else if (v5)
  {
    bzero(v20, 8 * v5);
  }

  if (*a1)
  {
    if (*(a1 + 3184) == 88)
    {
      LOWORD(v22[0]) = 2;
      v21 = 2;
      cnprint::CNPrinter::Print(v22, &v21, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", a2[1] + *a2);
    }

    else if (*(a1 + 1) == 1)
    {
      if (cnprint::CNPrinter::GetLogLevel(v9) <= 1)
      {
        LOWORD(v22[0]) = 2;
        v21 = 1;
        cnprint::CNPrinter::Print(v22, &v21, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", a2[1] + *a2);
      }
    }

    else
    {
      v11 = sub_1D0B7C8AC(a2, (a1 + 8));
      if (!v11)
      {
        v22[0] = 0;
        v22[1] = 0;
        sub_1D0C05A00(v22, a5);
      }

      if (cnprint::CNPrinter::GetLogLevel(v11) <= 1)
      {
        LOWORD(v22[0]) = 2;
        v21 = 1;
        cnprint::CNPrinter::Print(v22, &v21, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", a2[1] + *a2, *(a1 + 16) + *(a1 + 8));
      }
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(v9) <= 1)
  {
    LOWORD(v22[0]) = 2;
    v21 = 1;
    cnprint::CNPrinter::Print(v22, &v21, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", a2[1] + *a2);
  }

  return 0xFFFFFFFFLL;
}

void sub_1D0C059D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0C05B98(_Unwind_Exception *a1)
{
  sub_1D0E1A454(v1 + 56);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_1D0C05BF4(uint64_t a1)
{
  *(a1 + 8) = &unk_1F4CEF598;
  v1 = (a1 + 104);
  sub_1D0BBBD80(&v1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0C05C90(uint64_t a1, raven::RavenIonosphereEstimatorActiveObject **a2, uint64_t a3)
{
  v4 = *a2;
  if (*(a3 + 8) == 1)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    LOWORD(v18.__vftable) = 3;
    LOBYTE(v31) = 5;
    cnprint::CNPrinter::Print(&v18, &v31, "Attempted to access type of uninitialized GenericEvent.");
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
    if (v9 != (off_1F4CEF0B8 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v9, (off_1F4CEF0B8 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v18.__vftable = 0;
      std::bad_cast::bad_cast(&v18);
      v18.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C(&v18);
    }

    v10 = *(a3 + 16);
    v18.__vftable = &unk_1F4CEE030;
    v11 = *(v10 + 16);
    v12 = *(v10 + 32);
    v21 = *(v10 + 48);
    v20 = v12;
    v19 = v11;
    v13 = *(v10 + 64);
    v14 = *(v10 + 80);
    v15 = *(v10 + 96);
    v25 = *(v10 + 112);
    v24 = v15;
    v23 = v14;
    v22 = v13;
    v26[0] = &unk_1F4CD5A50;
    v16 = *(v10 + 152);
    *&v26[1] = *(v10 + 136);
    v27 = v16;
    v17 = *(v10 + 184);
    v28 = *(v10 + 168);
    *v29 = v17;
    v29[16] = *(v10 + 200);
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
      LOWORD(v18.__vftable) = 3;
      v32 = 5;
      cnprint::CNPrinter::Print(&v18, &v32, "Attempted to access type of uninitialized GenericEvent.");
      v8 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v31, &v30, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v8 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEF0B8 & 0x7FFFFFFFFFFFFFFFLL));
    v20 = 0uLL;
    v23 = 0uLL;
    v25 = 0u;
    *&v29[8] = 0u;
    v19 = 0uLL;
    v18.__vftable = &unk_1F4CEE030;
    v21 = 0uLL;
    v22 = 0uLL;
    *&v24 = 0;
    *(&v24 + 1) = 0x7FF8000000000000;
    v26[0] = &unk_1F4CD5A50;
    *&v26[1] = 0u;
    v27 = 0u;
    v28 = xmmword_1D0E76640;
    *v29 = xmmword_1D0E76650;
  }

  raven::RavenIonosphereEstimatorActiveObject::HandleEvent(v4, &v18);
}

const void **cnprint::CNLogFormatter::FormatGeneral(const void **this, char *__format, ...)
{
  va_start(va, __format);
  v4[1] = 0;
  va_copy(&v4[2], va);
  v4[0] = 0;
  cnprint::CNLogFormatter::FormatCore(this, this + 3, v4, 0, __format, va);
  return this;
}

void raven::RavenIonosphereEstimatorActiveObject::HandleEvent(raven::RavenIonosphereEstimatorActiveObject *this, const raven::KlobucharParametersEvent *a2)
{
  v10 = 12;
  v9 = 2;
  v4 = (this + 1912);
  cnprint::CNLogFormatter::FormatGeneral(this + 239, "RavenIonosphereEstimatorActiveObject: received KlobucharParametersEvent");
  if (*(this + 1935) >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = *(this + 239);
  }

  cnprint::CNPrinter::Print(&v10, &v9, "%s", v5);
  if (*(this + 224))
  {
    if (*(this + 225))
    {
      std::mutex::lock((this + 1968));
      raven::RavenIonosphereEstimator::HandleEvent(this + 254, a2);

      std::mutex::unlock((this + 1968));
    }
  }

  else
  {
    v8 = 12;
    v7 = 2;
    cnprint::CNLogFormatter::FormatGeneral(v4, "RavenIonosphereEstimatorActiveObject: not configured");
    if (*(this + 1935) >= 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = *(this + 239);
    }

    cnprint::CNPrinter::Print(&v8, &v7, "%s", v6);
  }
}

uint64_t raven::RavenIonosphereEstimator::HandleEvent(const void **this, const raven::KlobucharParametersEvent *a2)
{
  if (this[1])
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      v10 = 12;
      v9 = 1;
      v4 = cnprint::CNLogFormatter::FormatGeneral(this + 505, "KlobucharParametersEvent received");
      if (*(this + 4063) >= 0)
      {
        v5 = v4;
      }

      else
      {
        v5 = this[505];
      }

      cnprint::CNPrinter::Print(&v10, &v9, "%s", v5);
    }

    sub_1D0C061F4((this + 31), a2);
    return 0;
  }

  else
  {
    v12 = 12;
    v11 = 2;
    v7 = cnprint::CNLogFormatter::FormatWarning((this + 505), "KlobucharParametersEvent received, but estimator is not configured");
    if (*(this + 4063) >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = this[505];
    }

    cnprint::CNPrinter::Print(&v12, &v11, "%s", v8);
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1D0C061F4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 200) == 1)
  {
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v4;
    *(a1 + 8) = v3;
    v5 = *(a2 + 56);
    v6 = *(a2 + 72);
    v7 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v7;
    *(a1 + 72) = v6;
    *(a1 + 56) = v5;
    cnnavigation::KlobucharModelParameters::operator=(a1 + 120, a2 + 120);
  }

  else
  {
    sub_1D0E1A64C(a1, a2);
    *(a1 + 200) = 1;
  }

  return a1;
}

__n128 cnnavigation::KlobucharModelParameters::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    result = *(a2 + 56);
    *(a1 + 56) = result;
    *(a1 + 72) = *(a2 + 72);
  }

  return result;
}

uint64_t raven::RavenSupervisor::GetRavenSolution(raven::RavenSupervisor *this, raven::RavenSolutionEvent *a2)
{
  std::mutex::lock((this + 180192));
  memcpy(a2 + 8, this + 169232, 0xA51uLL);
  std::mutex::unlock((this + 180192));
  return 0;
}

double CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp::LogEntry_TimeStamp(CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp *this)
{
  *this = &unk_1F4CD9408;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_1F4CD9408;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

double raven::ConvertRavenTimeToProtobuf(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 44);
  *(a2 + 8) = *(a1 + 32) + *(a1 + 24);
  result = *(a1 + 8) + *a1;
  *(a2 + 44) = v2 | 5;
  *(a2 + 24) = result;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::PrivateDataCapture(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture *this)
{
  *this = &unk_1F4CDC738;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 8) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 308) = 0u;
  return result;
}

{
  *this = &unk_1F4CDC738;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 8) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 308) = 0u;
  return result;
}

void *CoreNavigation::CLP::LogEntry::Raven::LogEntry::LogEntry(void *this)
{
  *this = &unk_1F4CD73F8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4CD73F8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

uint64_t raven::ConvertRavenSolutionEventToProtobuf(raven *this, const raven::RavenSolutionEvent *a2, CoreNavigation::CLP::LogEntry::Raven::RavenOutput *a3)
{
  v5 = *(a2 + 15) | 1;
  *(a2 + 15) = v5;
  v6 = *(a2 + 1);
  if (!v6)
  {
    operator new();
  }

  *(a2 + 15) = v5 | 0x20;
  v7 = *(a2 + 6);
  if (!v7)
  {
    operator new();
  }

  v8 = (this + 1096);
  *(v6 + 292) |= 1u;
  v9 = *(v6 + 8);
  if (!v9)
  {
    operator new();
  }

  sub_1D0C075F4(this + 14, v9);
  v10 = 0;
  if (*(this + 208) - 1 >= 5)
  {
    v11 = 1;
  }

  else
  {
    v11 = (*(this + 208) - 1) + 2;
  }

  v12 = *(this + 209);
  if (v12 == 1)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  if (v12 == 2)
  {
    v14 = 3;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v6 + 292);
  *(v6 + 16) = v11;
  *(v6 + 20) = v14;
  *(v6 + 24) = *(this + 27);
  *(v6 + 32) = *(this + 29) + *(this + 28);
  *(v6 + 40) = *(this + 15);
  *(v6 + 184) = *(this + 32);
  *(v6 + 56) = *(this + 132);
  *(v6 + 64) = *v8;
  *(v6 + 80) = *(this + 1112);
  *(v6 + 96) = *(this + 1128);
  *(v6 + 160) = *(this + 1144);
  v16 = *(this + 145);
  *(v6 + 292) = v15 | 0xF3FFE;
  *(v6 + 176) = v16;
  do
  {
    v17 = *(this + v10 + 67);
    if (v17)
    {
      v18 = *(v6 + 124);
      v19 = *(v6 + 120);
      if (v19 >= v18)
      {
        if (v18 == *(v6 + 128))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 112));
          v18 = *(v6 + 124);
        }

        *(v6 + 124) = v18 + 1;
        operator new();
      }

      v20 = *(v6 + 112);
      *(v6 + 120) = v19 + 1;
      v21 = *(v20 + 8 * v19);
      v22 = sub_1D0C07848(v10);
      v23 = *(v21 + 40);
      *(v21 + 32) = v22;
      *(v21 + 40) = v23 | 0xC;
      *(v21 + 24) = v17;
    }

    ++v10;
  }

  while (v10 != 33);
  for (i = 0; i != 33; ++i)
  {
    v25 = *(this + i + 100);
    if (v25)
    {
      v26 = *(v6 + 148);
      v27 = *(v6 + 144);
      if (v27 >= v26)
      {
        if (v26 == *(v6 + 152))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 136));
          v26 = *(v6 + 148);
        }

        *(v6 + 148) = v26 + 1;
        operator new();
      }

      v28 = *(v6 + 136);
      *(v6 + 144) = v27 + 1;
      v29 = *(v28 + 8 * v27);
      v30 = sub_1D0C07848(i);
      v31 = *(v29 + 40);
      *(v29 + 32) = v30;
      *(v29 + 40) = v31 | 0xC;
      *(v29 + 24) = v25;
    }
  }

  for (j = 0; j != 33; ++j)
  {
    v33 = *(this + j + 133);
    if (v33)
    {
      v34 = *(v6 + 204);
      v35 = *(v6 + 200);
      if (v35 >= v34)
      {
        if (v34 == *(v6 + 208))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 192));
          v34 = *(v6 + 204);
        }

        *(v6 + 204) = v34 + 1;
        operator new();
      }

      v36 = *(v6 + 192);
      *(v6 + 200) = v35 + 1;
      v37 = *(v36 + 8 * v35);
      v38 = sub_1D0C07848(j);
      v39 = *(v37 + 40);
      *(v37 + 32) = v38;
      *(v37 + 40) = v39 | 0xC;
      *(v37 + 24) = v33;
    }
  }

  for (k = 0; k != 33; ++k)
  {
    v41 = *(this + k + 166);
    if (v41)
    {
      v42 = *(v6 + 228);
      v43 = *(v6 + 224);
      if (v43 >= v42)
      {
        if (v42 == *(v6 + 232))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 216));
          v42 = *(v6 + 228);
        }

        *(v6 + 228) = v42 + 1;
        operator new();
      }

      v44 = *(v6 + 216);
      *(v6 + 224) = v43 + 1;
      v45 = *(v44 + 8 * v43);
      v46 = sub_1D0C07848(k);
      v47 = *(v45 + 40);
      *(v45 + 32) = v46;
      *(v45 + 40) = v47 | 0xC;
      *(v45 + 24) = v41;
    }
  }

  for (m = 0; m != 33; ++m)
  {
    v49 = *(this + m + 199);
    if (v49)
    {
      v50 = *(v6 + 252);
      v51 = *(v6 + 248);
      if (v51 >= v50)
      {
        if (v50 == *(v6 + 256))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 240));
          v50 = *(v6 + 252);
        }

        *(v6 + 252) = v50 + 1;
        operator new();
      }

      v52 = *(v6 + 240);
      *(v6 + 248) = v51 + 1;
      v53 = *(v52 + 8 * v51);
      v54 = sub_1D0C07848(m);
      v55 = *(v53 + 40);
      *(v53 + 32) = v54;
      *(v53 + 40) = v55 | 0xC;
      *(v53 + 24) = v49;
    }
  }

  for (n = 0; n != 33; ++n)
  {
    v57 = *(this + n + 232);
    if (v57)
    {
      v58 = *(v6 + 272);
      v59 = *(v6 + 276);
      if (v58 >= v59)
      {
        if (v59 == *(v6 + 280))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 264));
          v59 = *(v6 + 276);
        }

        *(v6 + 276) = v59 + 1;
        operator new();
      }

      v60 = *(v6 + 264);
      *(v6 + 272) = v58 + 1;
      v61 = *(v60 + 8 * v58);
      v62 = sub_1D0C07848(n);
      v63 = *(v61 + 40);
      *(v61 + 32) = v62;
      *(v61 + 40) = v63 | 0xC;
      *(v61 + 24) = v57;
    }
  }

  v64 = *(this + 133);
  v65 = *(v7 + 168);
  *(v7 + 168) = v65 | 0x400;
  *(v7 + 136) = v64;
  v66 = *(this + 270);
  *(v7 + 168) = v65 | 0x1400;
  *(v7 + 60) = v66;
  *(v7 + 160) = *(this + 271);
  v67 = *(this + 136);
  *(v7 + 168) = v65 | 0x7400;
  *(v7 + 152) = v67;
  *(a2 + 15) |= 4u;
  v68 = *(a2 + 3);
  if (!v68)
  {
    operator new();
  }

  v69 = (v68 + 92);
  v70 = *(v68 + 8);
  *(v68 + 92) |= 1u;
  if (!v70)
  {
    operator new();
  }

  sub_1D0C075F4(this + 146, v70);
  if (*(this + 1264) == 1)
  {
    *v69 |= 2u;
    v71 = *(v68 + 16);
    if (!v71)
    {
      operator new();
    }

    v72 = *(v71 + 92);
    *(v71 + 16) = *(this + 1272);
    *(v71 + 32) = *(this + 1288);
    *(v71 + 48) = *(this + 1304);
    *(v71 + 64) = *(this + 1320);
    v73 = *(this + 167);
    *(v71 + 92) = v72 | 0x3FE;
    *(v71 + 80) = v73;
  }

  if (*(this + 1344) == 1)
  {
    *v69 |= 4u;
    v74 = *(v68 + 24);
    if (!v74)
    {
      operator new();
    }

    v75 = *(v74 + 132);
    *(v74 + 16) = *(this + 169);
    v76 = *(this + 173);
    *(v74 + 132) = v75 | 0x22;
    *(v74 + 48) = v76;
  }

  if (*(this + 1345) == 1)
  {
    *v69 |= 4u;
    v77 = *(v68 + 24);
    if (!v77)
    {
      operator new();
    }

    v78 = *(v77 + 132);
    *(v77 + 24) = *(this + 85);
    *(v77 + 40) = *(this + 172);
    *(v77 + 80) = *(this + 1416);
    *(v77 + 96) = *(this + 1432);
    *(v77 + 132) = v78 | 0x7E1C;
    *(v77 + 112) = *(this + 1448);
  }

  if (*(this + 1344) == 1 && *(this + 1345) == 1)
  {
    *v69 |= 4u;
    v79 = *(v68 + 24);
    if (!v79)
    {
      operator new();
    }

    v80 = *(v79 + 132);
    *(v79 + 56) = *(this + 87);
    v81 = *(this + 176);
    *(v79 + 132) = v80 | 0x1C0;
    *(v79 + 72) = v81;
  }

  if (*(this + 1464) == 1)
  {
    *v69 |= 8u;
    v82 = *(v68 + 32);
    if (!v82)
    {
      operator new();
    }

    v83 = *(v82 + 92);
    *(v82 + 16) = *(this + 92);
    *(v82 + 32) = *(this + 93);
    *(v82 + 48) = *(this + 94);
    *(v82 + 64) = *(this + 95);
    v84 = *(this + 192);
    *(v82 + 92) = v83 | 0x3FE;
    *(v82 + 80) = v84;
  }

  if (*(this + 1544) == 1)
  {
    *v69 |= 0x10u;
    v85 = *(v68 + 40);
    if (!v85)
    {
      operator new();
    }

    v86 = *(v85 + 92);
    *(v85 + 16) = *(this + 97);
    *(v85 + 32) = *(this + 98);
    *(v85 + 48) = *(this + 99);
    *(v85 + 64) = *(this + 100);
    v87 = *(this + 202);
    *(v85 + 92) = v86 | 0x3FE;
    *(v85 + 80) = v87;
  }

  if (*(this + 1624) == 1)
  {
    *v69 |= 0x20u;
    v88 = *(v68 + 48);
    if (!v88)
    {
      operator new();
    }

    v89 = *(v88 + 132);
    *(v88 + 16) = *(this + 102);
    *(v88 + 32) = *(this + 103);
    *(v88 + 48) = *(this + 104);
    *(v88 + 64) = *(this + 105);
    *(v88 + 80) = *(this + 106);
    *(v88 + 96) = *(this + 107);
    *(v88 + 132) = v89 | 0x7FFE;
    *(v88 + 112) = *(this + 108);
  }

  if (*(this + 1744) == 1)
  {
    *v69 |= 0x40u;
    v90 = *(v68 + 56);
    if (!v90)
    {
      operator new();
    }

    v91 = *(v90 + 92);
    *(v90 + 16) = *(this + 1752);
    *(v90 + 32) = *(this + 1768);
    *(v90 + 48) = *(this + 1784);
    *(v90 + 64) = *(this + 1800);
    v92 = *(this + 227);
    *(v90 + 92) = v91 | 0x3FE;
    *(v90 + 80) = v92;
  }

  if (*(this + 1824) == 1)
  {
    *v69 |= 0x80u;
    v93 = *(v68 + 64);
    if (!v93)
    {
      operator new();
    }

    v94 = *(v93 + 92);
    *(v93 + 16) = *(this + 1832);
    *(v93 + 32) = *(this + 1848);
    *(v93 + 48) = *(this + 1864);
    *(v93 + 64) = *(this + 1880);
    v95 = *(this + 237);
    *(v93 + 92) = v94 | 0x3FE;
    *(v93 + 80) = v95;
  }

  if (*(this + 1904) == 1)
  {
    *v69 |= 0x100u;
    v96 = *(v68 + 72);
    if (!v96)
    {
      operator new();
    }

    v97 = *(v96 + 92);
    *(v96 + 16) = *(this + 1912);
    *(v96 + 32) = *(this + 1928);
    *(v96 + 48) = *(this + 1944);
    *(v96 + 64) = *(this + 1960);
    v98 = *(this + 247);
    *(v96 + 92) = v97 | 0x3FE;
    *(v96 + 80) = v98;
  }

  if (*(this + 1984) == 1)
  {
    *v69 |= 0x200u;
    v99 = *(v68 + 80);
    if (!v99)
    {
      operator new();
    }

    v100 = *(v99 + 60);
    *(v99 + 16) = *(this + 1992);
    *(v99 + 32) = *(this + 2008);
    v101 = *(this + 253);
    *(v99 + 60) = v100 | 0x3E;
    *(v99 + 48) = v101;
  }

  *(a2 + 15) |= 2u;
  v102 = *(a2 + 2);
  if (!v102)
  {
    operator new();
  }

  v103 = (v102 + 228);
  v104 = *(v102 + 8);
  *(v102 + 228) |= 1u;
  if (!v104)
  {
    operator new();
  }

  sub_1D0C075F4(this + 254, v104);
  v105 = raven::ConvertRavenActivityStateEnumToProtobuf(this + 2128);
  v106 = *v103;
  *(v102 + 56) = *(this + 2136);
  *(v102 + 72) = *(this + 2152);
  *(v102 + 88) = *(this + 2168);
  *(v102 + 104) = *(this + 2184);
  *(v102 + 120) = *(this + 2200);
  if (*(this + 2544) - 1 < 3)
  {
    v107 = (*(this + 2544) - 1) + 1;
  }

  else
  {
    v107 = 0;
  }

  *(v102 + 24) = v105;
  *(v102 + 28) = v107;
  *(v102 + 144) = *(this + 2552);
  *(v102 + 160) = *(this + 2568);
  if (*(this + 2584) - 1 < 3)
  {
    v108 = (*(this + 2584) - 1) + 1;
  }

  else
  {
    v108 = 0;
  }

  *(v102 + 52) = v108;
  *(v102 + 176) = *(this + 162);
  *v103 = v106 | 0x7FFFE8A;
  *(v102 + 192) = *(this + 163);
  *(v102 + 48) = raven::ConvertRavenFitnessSessionActivityToProtobuf(this + 2216);
  v109 = *(this + 2624);
  if (v109 == 2)
  {
    v110 = 2;
  }

  else
  {
    v110 = v109 == 1;
  }

  *(v102 + 136) = v110;
  *v103 = v106 | 0x1FFFFFCA;
  *(v102 + 208) = *(this + 2632);
  result = raven::ConvertRavenSignalEnvironmentEnumToProtobuf(this + 2648);
  *v103 = v106 | 0x3FFFFFCA;
  *(v102 + 140) = result;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::RavenOutput::RavenOutput(CoreNavigation::CLP::LogEntry::Raven::RavenOutput *this)
{
  *this = &unk_1F4CD6798;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

{
  *this = &unk_1F4CD6798;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

double sub_1D0C075F4(uint64_t *a1, uint64_t a2)
{
  *(a2 + 52) |= 1u;
  v3 = *(a2 + 8);
  if (!v3)
  {
    operator new();
  }

  v4 = *a1;
  *(v3 + 28) |= 1u;
  *(v3 + 8) = v4;
  *(a2 + 52) |= 1u;
  LOBYTE(v4) = *(a1 + 16);
  result = *(a1 + 1);
  *(v3 + 28) |= 2u;
  *(v3 + 16) = result;
  if (v4)
  {
    *(a2 + 52) |= 2u;
    v6 = *(a2 + 16);
    if (!v6)
    {
      operator new();
    }

    v7 = a1[3];
    *(v6 + 28) |= 1u;
    *(v6 + 8) = v7;
    *(a2 + 52) |= 2u;
    result = *(a1 + 4);
    *(v6 + 28) |= 2u;
    *(v6 + 16) = result;
  }

  if (*(a1 + 40) == 1)
  {
    *(a2 + 52) |= 4u;
    v8 = *(a2 + 24);
    if (!v8)
    {
      operator new();
    }

    v9 = a1[6];
    *(v8 + 28) |= 1u;
    *(v8 + 8) = v9;
    *(a2 + 52) |= 4u;
    result = *(a1 + 7);
    *(v8 + 28) |= 2u;
    *(v8 + 16) = result;
  }

  if (*(a1 + 64) == 1)
  {
    *(a2 + 52) |= 8u;
    v10 = *(a2 + 32);
    if (!v10)
    {
      operator new();
    }

    v11 = a1[9];
    *(v10 + 28) |= 1u;
    *(v10 + 8) = v11;
    *(a2 + 52) |= 8u;
    result = *(a1 + 10);
    *(v10 + 28) |= 2u;
    *(v10 + 16) = result;
  }

  return result;
}

uint64_t sub_1D0C07848(char a1)
{
  switch(a1)
  {
    case 1:
      result = 1;
      break;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    case 4:
      result = 4;
      break;
    case 5:
      result = 29;
      break;
    case 6:
      result = 5;
      break;
    case 7:
      result = 30;
      break;
    case 8:
      result = 6;
      break;
    case 9:
      result = 27;
      break;
    case 10:
      result = 21;
      break;
    case 11:
      result = 24;
      break;
    case 12:
      result = 7;
      break;
    case 13:
      result = 25;
      break;
    case 14:
      result = 9;
      break;
    case 15:
      result = 12;
      break;
    case 16:
      result = 23;
      break;
    case 17:
      result = 11;
      break;
    case 18:
      result = 10;
      break;
    case 19:
      result = 13;
      break;
    case 20:
      result = 35;
      break;
    case 21:
      result = 14;
      break;
    case 22:
      result = 15;
      break;
    case 23:
      result = 16;
      break;
    case 24:
      result = 17;
      break;
    case 25:
      result = 18;
      break;
    case 26:
      result = 22;
      break;
    case 27:
      result = 8;
      break;
    case 28:
      result = 19;
      break;
    case 29:
      result = 20;
      break;
    case 30:
      result = 33;
      break;
    case 31:
      result = 32;
      break;
    case 32:
      result = 31;
      break;
    case 33:
      v6 = v1;
      v7 = v2;
      v5 = 12;
      v4 = 4;
      cnprint::CNPrinter::Print(&v5, &v4, "Invalid measurement type specified: 'RavenMeasurementTypeMax'");
      result = 0;
      break;
    default:
      result = 28;
      break;
  }

  return result;
}