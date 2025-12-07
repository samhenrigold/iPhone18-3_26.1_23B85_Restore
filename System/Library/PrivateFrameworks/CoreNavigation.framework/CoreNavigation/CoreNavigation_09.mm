uint64_t raven::ConvertRavenActivityStateEnumToProtobuf(_BYTE *a1)
{
  if (*a1 - 1 < 9)
  {
    return (*a1 - 1) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t raven::ConvertRavenSignalEnvironmentEnumToProtobuf(_BYTE *a1)
{
  if (*a1 - 1 >= 6)
  {
    return 1;
  }

  else
  {
    return (*a1 - 1) + 2;
  }
}

uint64_t CoreNavigation::CLP::LogEntry::LogEntry::ByteSize(CoreNavigation::CLP::LogEntry::LogEntry *this, unint64_t a2)
{
  if (!*(this + 52))
  {
    v3 = 0;
    goto LABEL_18;
  }

  if ((*(this + 52) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(this + 4);
  if (!v4)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(0);
    v4 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 32);
  }

  v5 = CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp::ByteSize(v4, a2);
  v6 = v5;
  if (v5 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
  }

  else
  {
    v7 = 1;
  }

  v3 = v6 + v7 + 1;
  if ((*(this + 13) & 2) != 0)
  {
LABEL_12:
    v8 = *(this + 5);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(0);
      v8 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v9 = CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::ByteSize(v8, a2);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    }

    else
    {
      v11 = 1;
    }

    v3 += v10 + v11 + 1;
  }

LABEL_18:
  result = wireless_diagnostics::google::protobuf::internal::ExtensionSet::ByteSize((this + 8)) + v3;
  *(this + 12) = result;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  v3 = *(this + 44);
  if (*(this + 44))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 8) != 0)
    {
      v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[4]) + 1;
    }
  }

  else
  {
    v5 = 0;
  }

  *(this + 10) = v5;
  return v5;
}

void raven::RavenPassThroughEstimator::GetRavenSolution(uint64_t *__return_ptr a1@<X8>, raven::RavenPassThroughEstimator *this@<X0>)
{
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  v4 = a1 + 33;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  a1[10] = 0;
  a1[11] = 0x7FF8000000000000;
  *(a1 + 96) = 0;
  v5 = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a1 + 13) = v5;
  *(a1 + 15) = v5;
  *(a1 + 17) = v5;
  *(a1 + 19) = v5;
  a1[21] = 0x7FF8000000000000;
  *(a1 + 88) = 0;
  *(a1 + 23) = v5;
  *(a1 + 25) = v5;
  *(a1 + 27) = v5;
  *(a1 + 29) = v5;
  *(a1 + 31) = v5;
  *(a1 + 33) = v5;
  *(a1 + 35) = v5;
  *(a1 + 296) = 0;
  *(a1 + 19) = v5;
  *(a1 + 20) = v5;
  *(a1 + 21) = v5;
  *(a1 + 22) = v5;
  a1[46] = 0x7FF8000000000000;
  *(a1 + 376) = 0;
  *(a1 + 24) = v5;
  *(a1 + 25) = v5;
  *(a1 + 26) = v5;
  *(a1 + 27) = v5;
  a1[56] = 0x7FF8000000000000;
  *(a1 + 456) = 0;
  *(a1 + 29) = v5;
  *(a1 + 30) = v5;
  *(a1 + 31) = v5;
  *(a1 + 32) = v5;
  *(a1 + 33) = v5;
  *(a1 + 34) = v5;
  *(a1 + 35) = v5;
  *(a1 + 576) = 0;
  a1[73] = 0x7FF8000000000000;
  *(a1 + 37) = v5;
  *(a1 + 38) = v5;
  *(a1 + 39) = v5;
  *(a1 + 40) = v5;
  *(a1 + 656) = 0;
  a1[83] = 0x7FF8000000000000;
  *(a1 + 42) = v5;
  *(a1 + 43) = v5;
  *(a1 + 44) = v5;
  *(a1 + 45) = v5;
  *(a1 + 736) = 0;
  a1[93] = 0x7FF8000000000000;
  *(a1 + 47) = v5;
  *(a1 + 48) = v5;
  *(a1 + 49) = v5;
  *(a1 + 50) = v5;
  *(a1 + 816) = 0;
  a1[103] = 0x7FF8000000000000;
  *(a1 + 52) = v5;
  *(a1 + 53) = v5;
  if (!cnprint::CNPrinter::GetLogLevel(this))
  {
    v75[0] = 12;
    v82[0] = 0;
    *v69 = *(this + 136);
    v6 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v69, "position event time,%.3lf,velocity event time,%.3lf", *(this + 347) + *(this + 346), *(this + 392) + *(this + 391));
    if (*(this + 2735) >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = *(this + 339);
    }

    cnprint::CNPrinter::Print(v75, v82, "%s", v7);
  }

  if (*(this + 3040) != 1)
  {
    *(a1 + 25) = 0;
    *(a1 + 97) = 0;
    *(a1 + 178) = 0;
    *(a1 + 91) = 0;
    *(a1 + 75) = 0;
    *(a1 + 297) = 0;
    *(a1 + 95) = 0;
    *(a1 + 377) = 0;
    *(a1 + 115) = 0;
    *(a1 + 457) = 0;
    *(a1 + 145) = 0;
    *(a1 + 577) = 0;
    *(a1 + 165) = 0;
    *(a1 + 657) = 0;
    *(a1 + 185) = 0;
    *(a1 + 737) = 0;
    *(a1 + 205) = 0;
    *(a1 + 817) = 0;
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
    a1[10] = 0;
    a1[11] = 0x7FF8000000000000;
    *(a1 + 96) = 0;
    v24 = vdupq_n_s64(0x7FF8000000000000uLL);
    *(a1 + 13) = v24;
    *(a1 + 15) = v24;
    *(a1 + 17) = v24;
    *(a1 + 19) = v24;
    a1[21] = 0x7FF8000000000000;
    *(a1 + 88) = 0;
    *(a1 + 23) = v24;
    *(a1 + 25) = v24;
    *(a1 + 27) = v24;
    *(a1 + 29) = v24;
    *(a1 + 31) = v24;
    *v4 = v24;
    *(v4 + 1) = v24;
    *(a1 + 296) = 0;
    *(a1 + 19) = v24;
    *(a1 + 20) = v24;
    *(a1 + 21) = v24;
    *(a1 + 22) = v24;
    a1[46] = 0x7FF8000000000000;
    *(a1 + 376) = 0;
    *(a1 + 24) = v24;
    *(a1 + 25) = v24;
    *(a1 + 26) = v24;
    *(a1 + 27) = v24;
    a1[56] = 0x7FF8000000000000;
    *(a1 + 456) = 0;
    *(a1 + 29) = v24;
    *(a1 + 30) = v24;
    *(a1 + 31) = v24;
    *(a1 + 32) = v24;
    *(a1 + 33) = v24;
    *(a1 + 34) = v24;
    *(a1 + 35) = v24;
    *(a1 + 576) = 0;
    *(v4 + 20) = v24;
    *(v4 + 21) = v24;
    *(v4 + 22) = v24;
    *(v4 + 23) = v24;
    a1[81] = 0x7FF8000000000000;
    *(a1 + 656) = 0;
    *(v4 + 25) = v24;
    *(v4 + 26) = v24;
    *(v4 + 27) = v24;
    *(v4 + 28) = v24;
    a1[91] = 0x7FF8000000000000;
    *(a1 + 736) = 0;
    *(v4 + 30) = v24;
    *(v4 + 31) = v24;
    *(v4 + 32) = v24;
    *(v4 + 33) = v24;
    a1[101] = 0x7FF8000000000000;
    *(a1 + 816) = 0;
    *(v4 + 35) = v24;
    *(v4 + 36) = v24;
    a1[107] = 0x7FF8000000000000;
    v25 = *(this + 152);
    *a1 = *(this + 136);
    *(a1 + 1) = v25;
    v26 = *(this + 216);
    *(a1 + 4) = *(this + 200);
    *(a1 + 5) = v26;
    v27 = *(this + 184);
    *(a1 + 2) = *(this + 168);
    *(a1 + 3) = v27;
    return;
  }

  v8 = *(this + 182);
  *(a1 + 2) = *(this + 181);
  *(a1 + 3) = v8;
  v9 = *(this + 184);
  *(a1 + 4) = *(this + 183);
  *(a1 + 5) = v9;
  v10 = *(this + 179);
  v11 = *(this + 180);
  *a1 = v10;
  *(a1 + 1) = v11;
  *(a1 + 296) = 1;
  v10.i64[0] = *(this + 381);
  v11.i64[0] = *(this + 382);
  a1[38] = v10.i64[0];
  a1[39] = v11.i64[0];
  v12 = *(this + 383);
  v13 = *(this + 384);
  a1[40] = v12;
  a1[41] = v13;
  v14 = *(this + 385);
  v15 = *(this + 386);
  a1[42] = v14;
  a1[43] = v15;
  v16 = *(this + 387);
  v17 = *(this + 388);
  a1[44] = v16;
  a1[45] = v17;
  v18 = *(this + 389);
  a1[46] = v18;
  *(a1 + 96) = 1;
  a1[13] = v10.i64[0];
  a1[14] = v11.i64[0];
  a1[15] = v12;
  a1[16] = v13;
  a1[17] = v14;
  a1[18] = v15;
  a1[19] = v16;
  a1[20] = v17;
  a1[21] = v18;
  if ((*(this + 3321) & 1) == 0)
  {
    goto LABEL_38;
  }

  *(a1 + 176) = 1;
  v19 = *(this + 416);
  *(a1 + 23) = v19;
  if (*(this + 3323) != 1 || *(this + 2961) != 1 || *(this + 2962) != 1)
  {
    goto LABEL_38;
  }

  v20 = __sincos_stret(*(this + 418));
  v110 = v19 * v20.__sinval;
  v111 = v19 * v20.__cosval;
  v21 = 0.0;
  if (*(this + 3322) == 1)
  {
    v21 = *(this + 417);
  }

  v112 = v21;
  v22 = sub_1D0C09230(v107, *(this + 371), *(this + 372));
  if (v108)
  {
    sub_1D0BED7A0(v22, &v110, &v105);
    *(a1 + 376) = 1;
    *(a1 + 24) = v105;
    a1[50] = v106;
    v97 = 0x300000003;
    v95 = &unk_1F4CD5DD0;
    v98 = &v99;
    v96 = xmmword_1D0E76C10;
    v101 = 0u;
    v100 = 0u;
    v102 = 0u;
    v103 = 0;
    v99 = *(this + 419) * 0.5;
    *(&v101 + 1) = v99;
    if (*(this + 3322) == 1)
    {
      v23 = *(this + 422);
    }

    else
    {
      v23 = 0x407577C048D159E1;
    }

    v104 = v23;
    v92 = 0x300000003;
    v91 = xmmword_1D0E76C10;
    v90 = &unk_1F4CD5DD0;
    v93 = &v94;
    v30 = sub_1D0BFE654(v107, &v95, &v90);
    v31 = v93;
    a1[51] = *v93;
    v32 = SHIDWORD(v91);
    v33 = &v31[SHIDWORD(v91)];
    a1[52] = *v33;
    v34 = &v31[2 * v32];
    a1[53] = *v34;
    a1[54] = v33[1];
    a1[55] = v31[((2 * v32) | 1)];
    a1[56] = v34[2];
    v87 = 0x200000002;
    v10 = xmmword_1D0E83F70;
    v86 = xmmword_1D0E83F70;
    v85 = &unk_1F4CE0268;
    v88 = v89;
    if (*(this + 3321) == 1 && *(this + 3323) == 1)
    {
      v35 = *(this + 419);
      v36 = *(this + 421);
      *v89 = v35;
      v89[1] = v36;
      v37 = *(this + 424);
      v89[2] = v36;
      v89[3] = v37;
      if (*(this + 1208) == 1 && *(this + 1320) - 1 <= 6)
      {
        v38 = qword_1D0E9C7D8[(*(this + 1320) - 1)];
      }

      else
      {
        v38 = 928;
      }

      v61 = 0.0;
      v39 = cnstatistics::InverseNormal(v30, 1.0 - *(*(this + 146) + v38), 0.0, sqrt(v35));
      sub_1D0C097BC(v82);
      v40 = *(this + 416);
      if (*(this + 3322) == 1)
      {
        v61 = *(this + 417);
      }

      if (v40 <= v39)
      {
        v10 = vdupq_n_s64(0x7FF8000000000000uLL);
        *(a1 + 12) = v10;
        a1[26] = 0x7FF8000000000000;
        *(a1 + 177) = 0;
        a1[31] = 0x7FF8000000000000;
        a1[34] = 0x7FF8000000000000;
        a1[36] = 0x7FF8000000000000;
        *v11.i64 = *v88 * 1.25;
        a1[27] = v11.i64[0];
        *(a1 + 14) = v10;
        a1[30] = 0x7FF8000000000000;
        *(a1 + 16) = v10;
        a1[35] = 0x7FF8000000000000;
      }

      else
      {
        v41 = v61 * v61 + v40 * v40;
        *&v42 = sqrt(v41);
        *&v43 = v41 * *&v42;
        v44 = v20.__sinval * v40 / *&v42;
        v45 = v61 / *&v42;
        v46 = v84;
        *(v84 + 24) = -(v40 * v61) / *&v43;
        v47 = vnegq_f64(v20);
        v48 = vdupq_lane_s64(*&v47.f64[0], 0);
        v48.f64[0] = v20.__cosval;
        v49 = v40 / *&v42;
        v50 = v83;
        v51 = v46 + 8 * v83;
        v52 = vdivq_f64(vmulq_n_f64(v48, v40), vdupq_lane_s64(v42, 0));
        v110 = v44;
        v111 = v52.f64[0];
        v112 = v45;
        *v46 = v49;
        v53 = vdupq_lane_s64(v43, 0);
        *(v46 + 8) = vdivq_f64(vmulq_n_f64(vmulq_n_f64(v20, v61), v61), v53);
        *v51 = 0;
        *(v51 + 8) = v52;
        *(v51 + 24) = 0;
        v54 = (v46 + 16 * v50);
        *v54 = v45;
        *(v46 + 8 * ((2 * v50) | 1)) = vdivq_f64(vmulq_n_f64(vmulq_n_f64(v47, v61), v40), v53);
        v54[3] = v40 * v40 / *&v43;
        sub_1D0BED7A0(v107, &v110, &v105);
        *(a1 + 12) = v105;
        a1[26] = v106;
        *(a1 + 177) = 1;
        v79 = 0x300000003;
        v77 = &unk_1F4CD5DD0;
        v78 = xmmword_1D0E76C10;
        v80 = &v81;
        if (v108 == 1)
        {
          sub_1D0B894B0(&v77, &v109);
        }

        sub_1D0DC7D2C(4, 4, v75);
        *v76 = 0x3FF0000000000000;
        v70 = 0x300000001;
        *v69 = &unk_1F4CDF0C8;
        v71 = &v72;
        *&v69[8] = xmmword_1D0E7F310;
        v72 = 0x200000001;
        v73 = 3;
        sub_1D0D2CF48(v69, v74);
        sub_1D0BADC74(v69, v75, v74, v74);
        sub_1D0D2CFF0(v69, &v77);
        sub_1D0DAA37C(v75, v82, v68);
        sub_1D0BFA9C4(3, 3, v65);
        v70 = 0x200000001;
        *v69 = &unk_1F4CE2060;
        v71 = &v72;
        *&v69[8] = xmmword_1D0E84500;
        v72 = 0x100000000;
        sub_1D0D751D4(v69, v64);
        sub_1D0D8D39C(v69, v65, v64, v64);
        sub_1D0D8CEA0(v69, &v85);
        if (*(this + 3322) == 1)
        {
          v55 = *(this + 422);
        }

        else
        {
          v55 = 0x407577C048D159E1;
        }

        *(v67 + 16 * v66 + 16) = v55;
        sub_1D0DE23BC(v63, v68, v65);
        sub_1D0D54C04(v68, v62);
        sub_1D0DE2334(v69, v63, v62);
        v56 = v71;
        a1[27] = *v71;
        v57 = *&v69[20];
        v58 = &v56[*&v69[20]];
        a1[28] = *v58;
        v59 = &v56[2 * v57];
        a1[29] = *v59;
        v60 = &v56[3 * v57];
        a1[30] = *v60;
        a1[31] = v58[1];
        a1[32] = v56[((2 * v57) | 1)];
        a1[33] = v60[1];
        a1[34] = v59[2];
        a1[35] = v60[2];
        v10.i64[0] = v60[3];
        a1[36] = v10.i64[0];
      }
    }

LABEL_38:
    raven::PopulateAllTimeFields(a1, this + 136, v10, v11);
    return;
  }

  v75[0] = 12;
  v82[0] = 4;
  *v69 = *(this + 136);
  v28 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v69, "RavenPassThroughEstimator::GetRavenSolution cannot get ENUToECEFJacobian Jenu");
  if (*(this + 2735) >= 0)
  {
    v29 = v28;
  }

  else
  {
    v29 = *(this + 339);
  }

  cnprint::CNPrinter::Print(v75, v82, "%s", v29);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture *this, unint64_t a2)
{
  v3 = *(this + 79);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_61;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 8);
  }

  v6 = CoreNavigation::CLP::LogEntry::PrivateData::Accel::ByteSize(v5);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
  }

  else
  {
    v8 = 1;
  }

  v4 = (v7 + v8 + 1);
  v3 = *(this + 79);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(this + 2);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 16);
    }

    v10 = CoreNavigation::CLP::LogEntry::PrivateData::Gyro::ByteSize(v9);
    v11 = v10;
    if (v10 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 1);
    v3 = *(this + 79);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v13 = *(this + 3);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
      v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 24);
    }

    v14 = CoreNavigation::CLP::LogEntry::PrivateData::Baro::ByteSize(v13);
    v15 = v14;
    if (v14 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
    }

    else
    {
      v16 = 1;
    }

    v4 = (v4 + v15 + v16 + 1);
    v3 = *(this + 79);
    if ((v3 & 8) == 0)
    {
LABEL_20:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_37;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_20;
  }

  v17 = *(this + 4);
  if (!v17)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v17 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 32);
  }

  v18 = CoreNavigation::CLP::LogEntry::PrivateData::Location::ByteSize(v17, a2);
  v19 = v18;
  if (v18 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
  }

  else
  {
    v20 = 1;
  }

  v4 = (v4 + v19 + v20 + 1);
  v3 = *(this + 79);
  if ((v3 & 0x10) == 0)
  {
LABEL_21:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_43;
  }

LABEL_37:
  v21 = *(this + 5);
  if (!v21)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v21 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 40);
  }

  v22 = CoreNavigation::CLP::LogEntry::PrivateData::MotionState::ByteSize(v21, a2);
  v23 = v22;
  if (v22 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
  }

  else
  {
    v24 = 1;
  }

  v4 = (v4 + v23 + v24 + 1);
  v3 = *(this + 79);
  if ((v3 & 0x20) == 0)
  {
LABEL_22:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_43:
  v25 = *(this + 6);
  if (!v25)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v25 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 48);
  }

  v26 = CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::ByteSize(v25, a2);
  v27 = v26;
  if (v26 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
  }

  else
  {
    v28 = 1;
  }

  v4 = (v4 + v27 + v28 + 1);
  v3 = *(this + 79);
  if ((v3 & 0x40) == 0)
  {
LABEL_23:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_55;
  }

LABEL_49:
  v29 = *(this + 7);
  if (!v29)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v29 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 56);
  }

  v30 = CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::ByteSize(v29, a2);
  v31 = v30;
  if (v30 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30);
  }

  else
  {
    v32 = 1;
  }

  v4 = (v4 + v31 + v32 + 1);
  v3 = *(this + 79);
  if ((v3 & 0x80) != 0)
  {
LABEL_55:
    v33 = *(this + 8);
    if (!v33)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
      v33 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 64);
    }

    v34 = CoreNavigation::CLP::LogEntry::PrivateData::Timer::ByteSize(v33);
    v35 = v34;
    if (v34 >= 0x80)
    {
      v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34);
    }

    else
    {
      v36 = 1;
    }

    v4 = (v4 + v35 + v36 + 1);
    v3 = *(this + 79);
  }

LABEL_61:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_119;
  }

  if ((v3 & 0x100) != 0)
  {
    v37 = *(this + 9);
    if (!v37)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
      v37 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 72);
    }

    v38 = CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::ByteSize(v37, a2);
    v39 = v38;
    if (v38 >= 0x80)
    {
      v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38);
    }

    else
    {
      v40 = 1;
    }

    v4 = (v4 + v39 + v40 + 1);
    v3 = *(this + 79);
    if ((v3 & 0x200) == 0)
    {
LABEL_64:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_83;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_64;
  }

  v41 = *(this + 10);
  if (!v41)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v41 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 80);
  }

  v42 = CoreNavigation::CLP::LogEntry::PrivateData::MapVector::ByteSize(v41, a2);
  v43 = v42;
  if (v42 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42);
  }

  else
  {
    v44 = 1;
  }

  v4 = (v4 + v43 + v44 + 1);
  v3 = *(this + 79);
  if ((v3 & 0x400) == 0)
  {
LABEL_65:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_89;
  }

LABEL_83:
  v45 = *(this + 11);
  if (!v45)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v45 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 88);
  }

  v46 = CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::ByteSize(v45, a2);
  v47 = v46;
  if (v46 >= 0x80)
  {
    v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46);
  }

  else
  {
    v48 = 1;
  }

  v4 = (v4 + v47 + v48 + 1);
  v3 = *(this + 79);
  if ((v3 & 0x800) == 0)
  {
LABEL_66:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_95;
  }

LABEL_89:
  v49 = *(this + 12);
  if (!v49)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v49 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 96);
  }

  v50 = CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::ByteSize(v49, a2);
  v51 = v50;
  if (v50 >= 0x80)
  {
    v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50);
  }

  else
  {
    v52 = 1;
  }

  v4 = (v4 + v51 + v52 + 1);
  v3 = *(this + 79);
  if ((v3 & 0x1000) == 0)
  {
LABEL_67:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_101;
  }

LABEL_95:
  v53 = *(this + 13);
  if (!v53)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v53 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 104);
  }

  v54 = CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::ByteSize(v53, a2);
  v55 = v54;
  if (v54 >= 0x80)
  {
    v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54);
  }

  else
  {
    v56 = 1;
  }

  v4 = (v4 + v55 + v56 + 1);
  v3 = *(this + 79);
  if ((v3 & 0x2000) == 0)
  {
LABEL_68:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_107;
  }

LABEL_101:
  v57 = *(this + 14);
  if (!v57)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v57 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 112);
  }

  v58 = CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::ByteSize(v57);
  v59 = v58;
  if (v58 >= 0x80)
  {
    v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58);
  }

  else
  {
    v60 = 1;
  }

  v4 = (v4 + v59 + v60 + 1);
  v3 = *(this + 79);
  if ((v3 & 0x4000) == 0)
  {
LABEL_69:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_113;
  }

LABEL_107:
  v61 = *(this + 15);
  if (!v61)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v61 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 120);
  }

  v62 = CoreNavigation::CLP::LogEntry::PrivateData::Reset::ByteSize(v61);
  v63 = v62;
  if (v62 >= 0x80)
  {
    v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v62);
  }

  else
  {
    v64 = 1;
  }

  v4 = (v4 + v63 + v64 + 1);
  v3 = *(this + 79);
  if ((v3 & 0x8000) != 0)
  {
LABEL_113:
    v65 = *(this + 16);
    if (!v65)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
      v65 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 128);
    }

    v66 = CoreNavigation::CLP::LogEntry::PrivateData::StepCount::ByteSize(v65, a2);
    v67 = v66;
    if (v66 >= 0x80)
    {
      v68 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v66);
    }

    else
    {
      v68 = 1;
    }

    v4 = (v4 + v67 + v68 + 2);
    v3 = *(this + 79);
  }

LABEL_119:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_177;
  }

  if ((v3 & 0x10000) != 0)
  {
    v69 = *(this + 17);
    if (!v69)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
      v69 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 136);
    }

    v70 = CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::ByteSize(v69, a2);
    v71 = v70;
    if (v70 >= 0x80)
    {
      v72 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70);
    }

    else
    {
      v72 = 1;
    }

    v4 = (v4 + v71 + v72 + 2);
    v3 = *(this + 79);
    if ((v3 & 0x20000) == 0)
    {
LABEL_122:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_141;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_122;
  }

  v73 = *(this + 18);
  if (!v73)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v73 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 144);
  }

  v74 = CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::ByteSize(v73, a2);
  v75 = v74;
  if (v74 >= 0x80)
  {
    v76 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v74);
  }

  else
  {
    v76 = 1;
  }

  v4 = (v4 + v75 + v76 + 2);
  v3 = *(this + 79);
  if ((v3 & 0x40000) == 0)
  {
LABEL_123:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_147;
  }

LABEL_141:
  v77 = *(this + 19);
  if (!v77)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v77 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 152);
  }

  v78 = CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::ByteSize(v77, a2);
  v79 = v78;
  if (v78 >= 0x80)
  {
    v80 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v78);
  }

  else
  {
    v80 = 1;
  }

  v4 = (v4 + v79 + v80 + 2);
  v3 = *(this + 79);
  if ((v3 & 0x80000) == 0)
  {
LABEL_124:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_153;
  }

LABEL_147:
  v81 = *(this + 20);
  if (!v81)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v81 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 160);
  }

  v82 = CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::ByteSize(v81, a2);
  v83 = v82;
  if (v82 >= 0x80)
  {
    v84 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v82);
  }

  else
  {
    v84 = 1;
  }

  v4 = (v4 + v83 + v84 + 2);
  v3 = *(this + 79);
  if ((v3 & 0x100000) == 0)
  {
LABEL_125:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_159;
  }

LABEL_153:
  v85 = *(this + 21);
  if (!v85)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v85 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 168);
  }

  v86 = CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::ByteSize(v85, a2);
  v87 = v86;
  if (v86 >= 0x80)
  {
    v88 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v86);
  }

  else
  {
    v88 = 1;
  }

  v4 = (v4 + v87 + v88 + 2);
  v3 = *(this + 79);
  if ((v3 & 0x200000) == 0)
  {
LABEL_126:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_165;
  }

LABEL_159:
  v89 = *(this + 22);
  if (!v89)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v89 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 176);
  }

  v90 = CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::ByteSize(v89, a2);
  v91 = v90;
  if (v90 >= 0x80)
  {
    v92 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v90);
  }

  else
  {
    v92 = 1;
  }

  v4 = (v4 + v91 + v92 + 2);
  v3 = *(this + 79);
  if ((v3 & 0x400000) == 0)
  {
LABEL_127:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_171;
  }

LABEL_165:
  v93 = *(this + 23);
  if (!v93)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v93 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 184);
  }

  v94 = CoreNavigation::CLP::LogEntry::PrivateData::Compass::ByteSize(v93, a2);
  v95 = v94;
  if (v94 >= 0x80)
  {
    v96 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v94);
  }

  else
  {
    v96 = 1;
  }

  v4 = (v4 + v95 + v96 + 2);
  v3 = *(this + 79);
  if ((v3 & 0x800000) != 0)
  {
LABEL_171:
    v97 = *(this + 24);
    if (!v97)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
      v97 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 192);
    }

    v98 = CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion::ByteSize(v97, a2);
    v99 = v98;
    if (v98 >= 0x80)
    {
      v100 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v98);
    }

    else
    {
      v100 = 1;
    }

    v4 = (v4 + v99 + v100 + 2);
    v3 = *(this + 79);
  }

LABEL_177:
  if (!HIBYTE(v3))
  {
    goto LABEL_235;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v101 = *(this + 25);
    if (!v101)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
      v101 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 200);
    }

    v102 = CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::ByteSize(v101, a2);
    v103 = v102;
    if (v102 >= 0x80)
    {
      v104 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v102);
    }

    else
    {
      v104 = 1;
    }

    v4 = (v4 + v103 + v104 + 2);
    v3 = *(this + 79);
    if ((v3 & 0x2000000) == 0)
    {
LABEL_180:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_181;
      }

      goto LABEL_199;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_180;
  }

  v105 = *(this + 26);
  if (!v105)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v105 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 208);
  }

  v106 = CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::ByteSize(v105, a2);
  v107 = v106;
  if (v106 >= 0x80)
  {
    v108 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v106);
  }

  else
  {
    v108 = 1;
  }

  v4 = (v4 + v107 + v108 + 2);
  v3 = *(this + 79);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_181:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_182;
    }

    goto LABEL_205;
  }

LABEL_199:
  v109 = *(this + 27);
  if (!v109)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v109 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 216);
  }

  v110 = CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::ByteSize(v109, a2);
  v111 = v110;
  if (v110 >= 0x80)
  {
    v112 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v110);
  }

  else
  {
    v112 = 1;
  }

  v4 = (v4 + v111 + v112 + 2);
  v3 = *(this + 79);
  if ((v3 & 0x8000000) == 0)
  {
LABEL_182:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_183;
    }

    goto LABEL_211;
  }

LABEL_205:
  v113 = *(this + 28);
  if (!v113)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v113 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 224);
  }

  v114 = CoreNavigation::CLP::LogEntry::PrivateData::WatchState::ByteSize(v113, a2);
  v115 = v114;
  if (v114 >= 0x80)
  {
    v116 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v114);
  }

  else
  {
    v116 = 1;
  }

  v4 = (v4 + v115 + v116 + 2);
  v3 = *(this + 79);
  if ((v3 & 0x10000000) == 0)
  {
LABEL_183:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_184;
    }

    goto LABEL_217;
  }

LABEL_211:
  v117 = *(this + 29);
  if (!v117)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v117 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 232);
  }

  v118 = CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::ByteSize(v117, a2);
  v119 = v118;
  if (v118 >= 0x80)
  {
    v120 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v118);
  }

  else
  {
    v120 = 1;
  }

  v4 = (v4 + v119 + v120 + 2);
  v3 = *(this + 79);
  if ((v3 & 0x20000000) == 0)
  {
LABEL_184:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_185;
    }

    goto LABEL_223;
  }

LABEL_217:
  v121 = *(this + 30);
  if (!v121)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v121 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 240);
  }

  v122 = CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::ByteSize(v121, a2);
  v123 = v122;
  if (v122 >= 0x80)
  {
    v124 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v122);
  }

  else
  {
    v124 = 1;
  }

  v4 = (v4 + v123 + v124 + 2);
  v3 = *(this + 79);
  if ((v3 & 0x40000000) == 0)
  {
LABEL_185:
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_235;
    }

    goto LABEL_229;
  }

LABEL_223:
  v125 = *(this + 31);
  if (!v125)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v125 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 248);
  }

  v126 = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::ByteSize(v125, a2);
  v127 = v126;
  if (v126 >= 0x80)
  {
    v128 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v126);
  }

  else
  {
    v128 = 1;
  }

  v4 = (v4 + v127 + v128 + 2);
  if ((*(this + 79) & 0x80000000) != 0)
  {
LABEL_229:
    v129 = *(this + 32);
    if (!v129)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
      v129 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 256);
    }

    v130 = CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate::ByteSize(v129, a2);
    v131 = v130;
    if (v130 >= 0x80)
    {
      v132 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v130);
    }

    else
    {
      v132 = 1;
    }

    v4 = (v4 + v131 + v132 + 2);
  }

LABEL_235:
  LOBYTE(v133) = *(this + 320);
  if (!v133)
  {
    goto LABEL_279;
  }

  if (*(this + 320))
  {
    v134 = *(this + 33);
    if (!v134)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
      v134 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 264);
    }

    v135 = CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture::ByteSize(v134, a2);
    v136 = v135;
    if (v135 >= 0x80)
    {
      v137 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v135);
    }

    else
    {
      v137 = 1;
    }

    v4 = (v4 + v136 + v137 + 2);
    v133 = *(this + 80);
    if ((v133 & 2) == 0)
    {
LABEL_238:
      if ((v133 & 4) == 0)
      {
        goto LABEL_239;
      }

      goto LABEL_255;
    }
  }

  else if ((*(this + 320) & 2) == 0)
  {
    goto LABEL_238;
  }

  v138 = *(this + 34);
  if (!v138)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v138 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 272);
  }

  v139 = CoreNavigation::CLP::LogEntry::Raven::LogEntry::ByteSize(v138, a2);
  v140 = v139;
  if (v139 >= 0x80)
  {
    v141 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v139);
  }

  else
  {
    v141 = 1;
  }

  v4 = (v4 + v140 + v141 + 2);
  v133 = *(this + 80);
  if ((v133 & 4) == 0)
  {
LABEL_239:
    if ((v133 & 8) == 0)
    {
      goto LABEL_240;
    }

    goto LABEL_261;
  }

LABEL_255:
  v142 = *(this + 35);
  if (!v142)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v142 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 280);
  }

  v143 = CoreNavigation::CLP::LogEntry::Vision::LogEntry::ByteSize(v142, a2);
  v144 = v143;
  if (v143 >= 0x80)
  {
    v145 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v143);
  }

  else
  {
    v145 = 1;
  }

  v4 = (v4 + v144 + v145 + 2);
  v133 = *(this + 80);
  if ((v133 & 8) == 0)
  {
LABEL_240:
    if ((v133 & 0x10) == 0)
    {
      goto LABEL_241;
    }

    goto LABEL_267;
  }

LABEL_261:
  v146 = *(this + 36);
  if (!v146)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v146 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 288);
  }

  v147 = CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::ByteSize(v146, a2);
  v148 = v147;
  if (v147 >= 0x80)
  {
    v149 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v147);
  }

  else
  {
    v149 = 1;
  }

  v4 = (v4 + v148 + v149 + 2);
  v133 = *(this + 80);
  if ((v133 & 0x10) == 0)
  {
LABEL_241:
    if ((v133 & 0x20) == 0)
    {
      goto LABEL_279;
    }

    goto LABEL_273;
  }

LABEL_267:
  v150 = *(this + 37);
  if (!v150)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v150 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 296);
  }

  v151 = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::ByteSize(v150, a2);
  v152 = v151;
  if (v151 >= 0x80)
  {
    v153 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v151);
  }

  else
  {
    v153 = 1;
  }

  v4 = (v4 + v152 + v153 + 2);
  if ((*(this + 80) & 0x20) != 0)
  {
LABEL_273:
    v154 = *(this + 38);
    if (!v154)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
      v154 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 304);
    }

    v155 = CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::ByteSize(v154, a2);
    v156 = v155;
    if (v155 >= 0x80)
    {
      v157 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v155);
    }

    else
    {
      v157 = 1;
    }

    v4 = (v4 + v156 + v157 + 2);
  }

LABEL_279:
  *(this + 78) = v4;
  return v4;
}

uint64_t sub_1D0C09230(uint64_t a1, double a2, double a3)
{
  *(a1 + 8) = 0;
  *(a1 + 40) = 0x300000003;
  *(a1 + 16) = &unk_1F4CD5DD0;
  *(a1 + 24) = xmmword_1D0E76C10;
  *(a1 + 48) = a1 + 56;
  *a1 = &unk_1F4CD5D90;
  off_1F4CD5DA0(a1, a2, a3);
  return a1;
}

void sub_1D0C092C8(_Unwind_Exception *a1)
{
  *v1 = &unk_1F4CD5D18;
  v1[2] = &unk_1F4CD5E28;
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::RavenOutput::ByteSize(CoreNavigation::CLP::LogEntry::Raven::RavenOutput *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 60);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_47;
  }

  if ((*(this + 60) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 60) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
    v5 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 8);
  }

  v6 = CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::ByteSize(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
  }

  else
  {
    v8 = 1;
  }

  v4 = (v7 + v8 + 1);
  v3 = *(this + 15);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(this + 2);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
      v9 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 16);
    }

    v10 = CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::ByteSize(v9, a2);
    v11 = v10;
    if (v10 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 1);
    v3 = *(this + 15);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v13 = *(this + 3);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
      v13 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 24);
    }

    v14 = CoreNavigation::CLP::LogEntry::Raven::EstimatorState::ByteSize(v13, a2);
    v15 = v14;
    if (v14 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
    }

    else
    {
      v16 = 1;
    }

    v4 = (v4 + v15 + v16 + 1);
    v3 = *(this + 15);
    if ((v3 & 8) == 0)
    {
LABEL_20:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_35;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_20;
  }

  v17 = *(this + 4);
  if (!v17)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
    v17 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 32);
  }

  v18 = CoreNavigation::CLP::LogEntry::Raven::NrParameters::ByteSize(v17, a2);
  v19 = v18;
  if (v18 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
  }

  else
  {
    v20 = 1;
  }

  v4 = (v4 + v19 + v20 + 1);
  v3 = *(this + 15);
  if ((v3 & 0x10) == 0)
  {
LABEL_21:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_41;
  }

LABEL_35:
  v21 = *(this + 5);
  if (!v21)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
    v21 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 40);
  }

  v22 = CoreNavigation::CLP::LogEntry::Raven::NrBiases::ByteSize(v21, a2);
  v23 = v22;
  if (v22 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
  }

  else
  {
    v24 = 1;
  }

  v4 = (v4 + v23 + v24 + 1);
  if ((*(this + 15) & 0x20) != 0)
  {
LABEL_41:
    v25 = *(this + 6);
    if (!v25)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
      v25 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 48);
    }

    v26 = CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::ByteSize(v25, a2);
    v27 = v26;
    if (v26 >= 0x80)
    {
      v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
    }

    else
    {
      v28 = 1;
    }

    v4 = (v4 + v27 + v28 + 1);
  }

LABEL_47:
  *(this + 14) = v4;
  return v4;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::LogEntry::ByteSize(CoreNavigation::CLP::LogEntry::Raven::LogEntry *this, unint64_t a2)
{
  if (!*(this + 28))
  {
    v3 = 0;
    goto LABEL_18;
  }

  if ((*(this + 28) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenLogEntry_2eproto(0);
    v4 = *(CoreNavigation::CLP::LogEntry::Raven::LogEntry::default_instance_ + 8);
  }

  v5 = CoreNavigation::CLP::LogEntry::Raven::RavenOutput::ByteSize(v4, a2);
  v6 = v5;
  if (v5 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
  }

  else
  {
    v7 = 1;
  }

  v3 = (v6 + v7 + 1);
  if ((*(this + 7) & 2) != 0)
  {
LABEL_12:
    v8 = *(this + 2);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenLogEntry_2eproto(0);
      v8 = *(CoreNavigation::CLP::LogEntry::Raven::LogEntry::default_instance_ + 16);
    }

    v9 = CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo::ByteSize(v8, a2);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    }

    else
    {
      v11 = 1;
    }

    v3 = (v3 + v10 + v11 + 1);
  }

LABEL_18:
  *(this + 6) = v3;
  return v3;
}

void sub_1D0C095FC(uint64_t a1, char **a2, uint64_t a3)
{
  v3 = *a2;
  v4 = sub_1D0BB2F1C(v11, a3);
  if ((*(*v3 + 88))(v3, v4))
  {
    raven::RavenEstimator::HandleSignalEnvironmentEvent((v3 + 2968), v11);
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

void sub_1D0C097A0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0C097BC(uint64_t a1)
{
  *(a1 + 24) = 0x300000004;
  *a1 = &unk_1F4CDEC00;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E7DCF0;
  return sub_1D0BBBC00(a1, 0.0);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::TimeStamp::ByteSize(CoreNavigation::CLP::LogEntry::Raven::TimeStamp *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 52);
  if (!v3)
  {
    result = 0;
    goto LABEL_36;
  }

  if ((*(this + 52) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v6 = *(this + 1);
  if (!v6)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
    v6 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 8);
  }

  v7 = CoreNavigation::CLP::LogEntry::Raven::TimeStruct::ByteSize(v6, a2);
  v8 = v7;
  if (v7 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
  }

  else
  {
    v9 = 1;
  }

  v4 = v8 + v9 + 1;
  v3 = *(this + 13);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v10 = *(this + 2);
    if (!v10)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
      v10 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 16);
    }

    v11 = CoreNavigation::CLP::LogEntry::Raven::TimeStruct::ByteSize(v10, a2);
    v12 = v11;
    if (v11 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
    }

    else
    {
      v13 = 1;
    }

    v4 += v12 + v13 + 1;
    v3 = *(this + 13);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v14 = *(this + 3);
    if (!v14)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
      v14 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 24);
    }

    v15 = CoreNavigation::CLP::LogEntry::Raven::TimeStruct::ByteSize(v14, a2);
    v16 = v15;
    if (v15 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
    }

    else
    {
      v17 = 1;
    }

    v4 += v16 + v17 + 1;
    v3 = *(this + 13);
    if ((v3 & 8) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  if ((v3 & 8) != 0)
  {
LABEL_27:
    v18 = *(this + 4);
    if (!v18)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
      v18 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 32);
    }

    v19 = CoreNavigation::CLP::LogEntry::Raven::TimeStruct::ByteSize(v18, a2);
    v20 = v19;
    if (v19 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
    }

    else
    {
      v21 = 1;
    }

    v4 += v20 + v21 + 1;
    v3 = *(this + 13);
  }

LABEL_33:
  if ((v3 & 0x10) != 0)
  {
    result = v4 + 9;
  }

  else
  {
    result = v4;
  }

LABEL_36:
  *(this + 12) = result;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::ByteSize(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth *this, unint64_t a2)
{
  v3 = *(this + 73);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_34;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v6 = *(this + 1);
  if (!v6)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
    v6 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::default_instance_ + 8);
  }

  v7 = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::ByteSize(v6, a2);
  v8 = v7;
  if (v7 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
  }

  else
  {
    v9 = 1;
  }

  v4 = v8 + v9 + 1;
  v3 = *(this + 73);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v10 = *(this + 4);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = 11;
    }

    else if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
      v3 = *(this + 73);
    }

    else
    {
      v11 = 2;
    }

    v4 += v11;
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v12 = *(this + 5);
    if ((v12 & 0x80000000) != 0)
    {
      v13 = 11;
    }

    else if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
      v3 = *(this + 73);
    }

    else
    {
      v13 = 2;
    }

    v4 += v13;
  }

  v14 = v4 + 9;
  if ((v3 & 8) == 0)
  {
    v14 = v4;
  }

  if ((v3 & 0x10) != 0)
  {
    v5 = v14 + 9;
  }

  else
  {
    v5 = v14;
  }

  if ((v3 & 0x20) != 0)
  {
    v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
    v3 = *(this + 73);
    if ((v3 & 0x40) == 0)
    {
LABEL_32:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }
  }

  else if ((v3 & 0x40) == 0)
  {
    goto LABEL_32;
  }

  v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 6)) + 1;
  v3 = *(this + 73);
  if ((v3 & 0x80) != 0)
  {
LABEL_33:
    v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 7)) + 1;
    v3 = *(this + 73);
  }

LABEL_34:
  v15 = v5 + 9;
  if ((v3 & 0x100) == 0)
  {
    v15 = v5;
  }

  if ((v3 & 0x200) != 0)
  {
    v15 += 9;
  }

  if ((v3 & 0x400) != 0)
  {
    v15 += 9;
  }

  if ((v3 & 0x800) != 0)
  {
    v15 += 9;
  }

  if ((v3 & 0x1000) != 0)
  {
    v15 += 9;
  }

  if ((v3 & 0x2000) != 0)
  {
    v15 += 9;
  }

  if ((v3 & 0xFF00) != 0)
  {
    v5 = v15;
  }

  if ((v3 & 0xFF0000) != 0)
  {
    v16 = v5 + 10;
    if ((v3 & 0x10000) == 0)
    {
      v16 = v5;
    }

    if ((v3 & 0x20000) != 0)
    {
      v16 += 10;
    }

    if ((v3 & 0x40000) != 0)
    {
      v5 = v16 + 10;
    }

    else
    {
      v5 = v16;
    }

    if ((v3 & 0x80000) != 0)
    {
      v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 23)) + 2;
    }
  }

  v17 = *(this + 30);
  v18 = v17 + v5;
  if (v17 >= 1)
  {
    v19 = 0;
    do
    {
      v20 = CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::ByteSize(*(*(this + 14) + 8 * v19), a2);
      v21 = v20;
      if (v20 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
      }

      else
      {
        v22 = 1;
      }

      v18 += v21 + v22;
      ++v19;
    }

    while (v19 < *(this + 30));
  }

  v23 = *(this + 36);
  v24 = v18 + 2 * v23;
  if (v23 >= 1)
  {
    v25 = 0;
    do
    {
      v26 = CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::ByteSize(*(*(this + 17) + 8 * v25), a2);
      v27 = v26;
      if (v26 >= 0x80)
      {
        v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
      }

      else
      {
        v28 = 1;
      }

      v24 += v27 + v28;
      ++v25;
    }

    while (v25 < *(this + 36));
  }

  v29 = *(this + 50);
  v30 = v24 + 2 * v29;
  if (v29 >= 1)
  {
    v31 = 0;
    do
    {
      v32 = CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::ByteSize(*(*(this + 24) + 8 * v31), a2);
      v33 = v32;
      if (v32 >= 0x80)
      {
        v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32);
      }

      else
      {
        v34 = 1;
      }

      v30 += v33 + v34;
      ++v31;
    }

    while (v31 < *(this + 50));
  }

  v35 = *(this + 56);
  v36 = v30 + 2 * v35;
  if (v35 >= 1)
  {
    v37 = 0;
    do
    {
      v38 = CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::ByteSize(*(*(this + 27) + 8 * v37), a2);
      v39 = v38;
      if (v38 >= 0x80)
      {
        v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38);
      }

      else
      {
        v40 = 1;
      }

      v36 += v39 + v40;
      ++v37;
    }

    while (v37 < *(this + 56));
  }

  v41 = *(this + 62);
  v42 = v36 + 2 * v41;
  if (v41 >= 1)
  {
    v43 = 0;
    do
    {
      v44 = CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::ByteSize(*(*(this + 30) + 8 * v43), a2);
      v45 = v44;
      if (v44 >= 0x80)
      {
        v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44);
      }

      else
      {
        v46 = 1;
      }

      v42 += v45 + v46;
      ++v43;
    }

    while (v43 < *(this + 62));
  }

  v47 = *(this + 68);
  v48 = (v42 + 2 * v47);
  if (v47 >= 1)
  {
    v49 = 0;
    do
    {
      v50 = CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::ByteSize(*(*(this + 33) + 8 * v49), a2);
      v51 = v50;
      if (v50 >= 0x80)
      {
        v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50);
      }

      else
      {
        v52 = 1;
      }

      v48 = (v51 + v48 + v52);
      ++v49;
    }

    while (v49 < *(this + 68));
  }

  *(this + 72) = v48;
  return v48;
}

__n128 raven::RavenEstimator::HandleSignalEnvironmentEvent(raven::RavenEstimator *this, const raven::SignalEnvironmentEvent *a2)
{
  if (*(this + 57))
  {
    if (*(this + 2592) == 1)
    {
      v4 = *(a2 + 8);
      v5 = *(a2 + 24);
      *(this + 165) = *(a2 + 40);
      *(this + 164) = v5;
      *(this + 163) = v4;
      result = *(a2 + 56);
      v7 = *(a2 + 72);
      v8 = *(a2 + 88);
      *(this + 2704) = *(a2 + 104);
      *(this + 168) = v8;
      *(this + 167) = v7;
      *(this + 166) = result;
    }

    else
    {
      *(this + 325) = &unk_1F4CEF5C8;
      v11 = *(a2 + 8);
      v12 = *(a2 + 24);
      *(this + 165) = *(a2 + 40);
      *(this + 164) = v12;
      *(this + 163) = v11;
      result = *(a2 + 56);
      v13 = *(a2 + 72);
      v14 = *(a2 + 88);
      *(this + 2704) = *(a2 + 104);
      *(this + 168) = v14;
      *(this + 167) = v13;
      *(this + 166) = result;
      *(this + 2592) = 1;
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v17 = 12;
    v16 = 1;
    v15[0] = (*(*a2 + 16))(a2);
    v15[1] = v9;
    cnprint::CNLogFormatter::FormatWarning(this + 2712, v15, "Estimator not configured, failed to handle SignalEnvironmentEvent");
    if (*(this + 2735) >= 0)
    {
      v10 = this + 2712;
    }

    else
    {
      v10 = *(this + 339);
    }

    cnprint::CNPrinter::Print(&v17, &v16, "%s", v10);
  }

  return result;
}

uint64_t *raven::RavenPassThroughEstimator::GetRavenStatus@<X0>(uint64_t *__return_ptr a1@<X8>, raven::RavenPassThroughEstimator *this@<X0>)
{
  *(a1 + 9) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 1) = 0u;
  v4 = a1 + 1;
  a1[11] = 0;
  a1[12] = 0x7FF8000000000000;
  *(a1 + 105) = 0;
  *(a1 + 62) = 0u;
  *(a1 + 63) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 65) = 0u;
  a1[132] = 0;
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 60) = vdupq_n_s64(0x7FF8000000000000uLL);
  a1[122] = 0;
  a1[123] = 0x7FF8000000000000;
  bzero(a1 + 164, 0x318uLL);
  *a1 = *(this + 280);
  v5 = *(this + 56);
  *(a1 + 104) = v5;
  sub_1D0BADDDC(a1, v5, 1.0);
  v7 = *(this + 3040) == 0;
  v8 = 136;
  if (*(this + 3040))
  {
    v8 = 2864;
  }

  v6.i64[0] = 0;
  if (*(this + 3040))
  {
    *v6.i64 = 1.0;
  }

  v9 = (this + v8);
  v10 = v9[3];
  *(a1 + 5) = v9[2];
  *(a1 + 7) = v10;
  v11 = v9[5];
  *(a1 + 9) = v9[4];
  *(a1 + 11) = v11;
  v12 = *v9;
  v13 = v9[1];
  *v4 = *v9;
  if (v7)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  *(a1 + 3) = v13;
  *(a1 + 105) = v14;
  a1[14] = v6.i64[0];

  return raven::PopulateAllTimeFields(v4, this + 136, v6, v12);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::TimeStruct::ByteSize(CoreNavigation::CLP::LogEntry::Raven::TimeStruct *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 28);
  if (v3)
  {
    if (*(this + 28))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v3 = *(this + 7);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      result = v4 + 9;
    }

    else
    {
      result = v4;
    }
  }

  else
  {
    result = 0;
  }

  *(this + 6) = result;
  return result;
}

void sub_1D0C0A09C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0BCA910(v8, a3);
  if (raven::RavenPNTEstimator::HandleEvent((v3 + 288), v8))
  {
    v14[0] = 12;
    v13 = 2;
    v12[0] = (*(v8[0] + 16))(v8);
    v12[1] = v4;
    (*(v8[0] + 24))(v10, v8);
    if (v11 >= 0)
    {
      v5 = v10;
    }

    else
    {
      v5 = v10[0];
    }

    v6 = cnprint::CNLogFormatter::FormatWarning(v3 + 240, v12, "Failed to handle event - %s.", v5);
    if (*(v3 + 263) >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(v14, &v13, "%s", v7);
    if (v11 < 0)
    {
      operator delete(v10[0]);
    }
  }

  v8[0] = &unk_1F4CEF598;
  v10[0] = &v9;
  sub_1D0BBBD80(v10);
}

void sub_1D0C0A1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (*(v23 - 65) < 0)
  {
    operator delete(*(v23 - 88));
  }

  *(v23 - 40) = &a23;
  sub_1D0BBBD80((v23 - 40));
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::ByteSize(CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 40);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_11;
  }

  if (*(this + 40))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 10);
    if ((v3 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = 0;
  if ((*(this + 40) & 2) != 0)
  {
LABEL_7:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v3 = *(this + 10);
  }

LABEL_8:
  if ((v3 & 4) != 0)
  {
    v6 = *(this + 8);
    if ((v6 & 0x80000000) != 0)
    {
      v7 = 11;
    }

    else if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v3 = *(this + 10);
    }

    else
    {
      v7 = 2;
    }

    v4 = (v7 + v4);
    if ((v3 & 8) != 0)
    {
      goto LABEL_10;
    }
  }

  else if ((v3 & 8) != 0)
  {
LABEL_10:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  }

LABEL_11:
  *(this + 9) = v4;
  return v4;
}

uint64_t raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::GnssPreprocessedMeasurementsEvent *a2)
{
  MEMORY[0x1EEE9AC00](this);
  v112 = v3;
  v247[69] = *MEMORY[0x1E69E9840];
  if (*(v2 + 57) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = v2;
  if (*(v2 + 58) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = raven::RavenEstimator::HandleGnssPreprocessedMeasurementsEvent(v2, v3);
  if (v5)
  {
    return 0xFFFFFFFFLL;
  }

  v111 = v4;
  if ((*(v112 + 88) & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v5) <= 1)
    {
      LOWORD(__src.__r_.__value_.__l.__data_) = 12;
      LOBYTE(v192[0]) = 1;
      v121 = (*(*v112 + 16))(v112);
      v122 = v6;
      cnprint::CNLogFormatter::FormatGeneral(v4 + 2712, &v121, "Encountered GnssPreprocessedMeasurementsEvent with no oscillator model.");
      if (*(v4 + 2735) >= 0)
      {
        v7 = (v4 + 2712);
      }

      else
      {
        v7 = *(v4 + 2712);
      }

      cnprint::CNPrinter::Print(&__src, v192, "%s", v7);
    }

    raven::RavenPNTEstimator::ResetOscillatorStates(v4);
  }

  v121 = (*(*v112 + 16))(v112);
  v122 = v8;
  if (!raven::RavenPNTEstimator::UpdateClockOffsetEstimateIfNecessary(v4, v112 + 24, &v121))
  {
    return 0xFFFFFFFFLL;
  }

  v176 = 0uLL;
  v177 = 0;
  v179 = 0;
  v178 = 0;
  v180 = 0;
  v182 = 0;
  v181 = 0;
  v183 = 0;
  v185 = 0;
  v184 = 0;
  v186 = 0x7FF8000000000000;
  if (*(*(v4 + 1168) + 3828) == 1)
  {
    v9.i64[0] = 0x3EB0C6F7A0B5ED8DLL;
    if (raven::RavenEstimator::AreGnssMeasurementsAtSameTime(v4, v112, &v176, v9, v10))
    {
      if ((atomic_load_explicit(&qword_1EE053A70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053A70))
      {
        qword_1EE053C18 = 0;
        unk_1EE053C20 = 0x3FC999999999999ALL;
        __cxa_guard_release(&qword_1EE053A70);
      }

      v13 = CNTimeSpan::operator-(&v176, (v4 + 14824), v11, v12);
      v121 = v13;
      v122 = v14;
      if (v13 < 0 || (*v15.i64 = v14, v14 < 0.0))
      {
        v13 = CNTimeSpan::operator-(&v121, v15, v16);
      }

      v174 = v13;
      v175 = v14;
      v17 = sub_1D0B7CF88(&v174, &qword_1EE053C18);
      if (!v17)
      {
        if (v174)
        {
          if ((v174 & 0x8000000000000000) == 0)
          {
            goto LABEL_31;
          }
        }

        else if (v175 >= 0.0)
        {
          goto LABEL_31;
        }
      }

      if (cnprint::CNPrinter::GetLogLevel(v17) <= 1)
      {
        LOWORD(__src.__r_.__value_.__l.__data_) = 12;
        LOBYTE(v192[0]) = 1;
        v121 = (*(*v112 + 16))(v112);
        v122 = v18;
        v19 = cnprint::CNLogFormatter::FormatWarning(v4 + 2712, &v121, "GNSS measurement selection: large prediction interval,dt,%.3lf; MSR performance may be slightly degraded", v175 + v174);
        if (*(v4 + 2735) >= 0)
        {
          v20 = v19;
        }

        else
        {
          v20 = *v19;
        }

        cnprint::CNPrinter::Print(&__src, v192, "%s", v20);
      }

LABEL_31:
      sub_1D0D8BD94(&v121);
      v23 = v4;
      v24 = *(v4 + 19512);
      v170 = *(v4 + 19528);
      v25 = *(v4 + 19560);
      v171 = *(v4 + 19544);
      v172 = v25;
      v173 = *(v4 + 19576);
      v26 = *(v4 + 19496);
      v167 = *(v4 + 19480);
      v168 = v26;
      v169 = v24;
      v161 = v167;
      v162 = v26;
      v164 = v170;
      v165 = v171;
      v163 = v24;
      v166 = *(v4 + 19560);
      v160 = 0;
      if ((atomic_load_explicit(&qword_1EE053A78, memory_order_acquire) & 1) == 0)
      {
        if (__cxa_guard_acquire(&qword_1EE053A78))
        {
          v217 = 0x1C00000001;
          v215 = &unk_1F4CE1208;
          v218 = &v219;
          v216 = xmmword_1D0E7F310;
          v219 = 0x100000000;
          v220 = 2;
          sub_1D0D5D8C8(&v187, &v215);
          *&v206[24] = 0x1C00000001;
          *v206 = &unk_1F4CE1208;
          v207 = &v208;
          *&v206[8] = xmmword_1D0E7F310;
          v208 = 0x400000003;
          v209 = 5;
          sub_1D0D5D8C8(&v210, v206);
          v203 = 0x1C00000001;
          v201 = &unk_1F4CE1208;
          v204 = &v205;
          v202 = xmmword_1D0E84500;
          v205 = 0x1400000013;
          sub_1D0D5D8C8(v247, &v201);
          sub_1D0D5D954(v192, &v210, v247);
          sub_1D0D5D83C(&__src, &v187, v192);
          sub_1D0D8C5B0(&unk_1EC5FB710, &__src);
          __cxa_atexit(sub_1D0D5DA20, &unk_1EC5FB710, &dword_1D0B71000);
          __cxa_guard_release(&qword_1EE053A78);
          v23 = v4;
        }
      }

      sub_1D0D8C698(&__src, v23 + 14840, &unk_1EC5FB710);
      sub_1D0D8C7C8(&v187, &__src);
      sub_1D0D8C8B0(v192, v23 + 15104);
    }
  }

  v27 = v4;
  *(v4 + 8880) = *(v4 + 2928);
  v28 = *(v4 + 2952);
  *(v4 + 8888) = *(v4 + 2936);
  *(v4 + 8904) = v28;
  *(v4 + 8913) = *(v4 + 2961);
  sub_1D0B894B0(v27 + 8936, v27 + 2984);
  sub_1D0B894B0(v27 + 9128, v27 + 3176);
  *(v4 + 9320) = *(v4 + 3368);
  *(v4 + 9328) = *(v4 + 3376);
  *(v4 + 9344) = *(v4 + 3392);
  sub_1D0B894B0(v27 + 9352, v27 + 3400);
  sub_1D0B894B0(v27 + 9544, v27 + 3592);
  sub_1D0B894B0(v27 + 12472, v27 + 6520);
  v29 = (v4 + 14792);
  v30 = *(v4 + 8840);
  v31 = *(v4 + 8848);
  v32 = v31 - v30;
  v33 = *(v4 + 14808);
  v34 = *(v4 + 14792);
  if (v33 - v34 < (v31 - v30))
  {
    v35 = 0xCFF3FCFF3FCFF3FDLL * (v32 >> 4);
    if (v34)
    {
      v36 = *(v111 + 1850);
      if (v36 != v34)
      {
        v37 = v36 - 2320;
        v38 = v36 - 5440;
        do
        {
          *v37 = &unk_1F4CD5E28;
          *(v37 - 366) = &unk_1F4CD5E28;
          *(v37 - 390) = &unk_1F4CD5E28;
          v39 = v37 - 3136;
          v37 -= 5456;
          v38 -= 5456;
        }

        while (v39 != v34);
      }

      *(v111 + 1850) = v34;
      operator delete(v34);
      v33 = 0;
      *v29 = 0;
      *(v111 + 1850) = 0;
      *(v111 + 1851) = 0;
    }

    if (v35 <= 0xC0300C0300C03)
    {
      v40 = 0xCFF3FCFF3FCFF3FDLL * (v33 >> 4);
      v41 = 2 * v40;
      if (2 * v40 <= v35)
      {
        v41 = v35;
      }

      if (v40 >= 0x6018060180601)
      {
        v42 = 0xC0300C0300C03;
      }

      else
      {
        v42 = v41;
      }

      sub_1D0D83F60(v29, v42);
    }

    sub_1D0C5663C();
  }

  v43 = *(v4 + 14800);
  v44 = v43 - v34;
  if (v43 - v34 >= v32)
  {
    if (v30 != v31)
    {
      do
      {
        sub_1D0D84058(v34, v30);
        v30 += 5456;
        v34 += 5456;
      }

      while (v30 != v31);
      v43 = *(v111 + 1850);
    }

    if (v43 != v34)
    {
      v49 = v43 - 2320;
      v50 = v43 - 5440;
      do
      {
        *v49 = &unk_1F4CD5E28;
        *(v49 - 366) = &unk_1F4CD5E28;
        *(v49 - 390) = &unk_1F4CD5E28;
        v51 = v49 - 3136;
        v49 -= 5456;
        v50 -= 5456;
      }

      while (v51 != v34);
    }

    v48 = v111;
    *(v111 + 1850) = v34;
  }

  else
  {
    if (v43 != v34)
    {
      v45 = v43 - v34;
      v46 = *(v111 + 1105);
      do
      {
        sub_1D0D84058(v34, v46);
        v46 += 341;
        v34 += 5456;
        v45 -= 5456;
      }

      while (v45);
      v43 = *(v111 + 1850);
    }

    v47 = sub_1D0D83FB0(v29, &v30[v44], v31, v43);
    v48 = v111;
    *(v111 + 1850) = v47;
  }

  *(v48 + 1852) = *(v48 + 1108);
  v201 = &v201;
  *&v202 = &v201;
  *(&v202 + 1) = 0;
  UnprocessedMSRData = raven::RavenSequentialGNSSMeasurementSelector::GetUnprocessedMSRData(v111 + 17024, v112, &v201);
  if (UnprocessedMSRData)
  {
    v53 = v202;
    if (v202 != &v201)
    {
      v54 = 0;
      v110 = v111 + 61736;
      v114 = v111 + 2712;
      v113 = vdupq_n_s64(0x7FF8000000000000uLL);
      do
      {
        v56 = (v53 + 16);
        v55 = *(v53 + 16);
        v57 = *(v53 + 192);
        if ((v57 - 1) >= 2)
        {
          if (v57 == 3)
          {
            ++v54;
          }

          else
          {
            raven::RavenSequentialGNSSMeasurementSelector::GetFinalGnssObservable(v111 + 17024, v53 + 16, v192);
            if (v199)
            {
              v212 = 0x100000003;
              *&v58 = 0x100000001;
              *(&v58 + 1) = 0x100000001;
              v211 = v58;
              v210 = &unk_1F4CDEB28;
              v213 = &v214;
              v189 = 0x300000003;
              v188 = v58;
              v187 = &unk_1F4CD5DD0;
              v190 = &v191;
              sub_1D0B751F4(&__src, &unk_1D0ED80C5);
              LOBYTE(data) = 0;
              HIDWORD(data) = -1;
              v223 = 0u;
              v224 = 0u;
              v225 = 0u;
              v226 = 0u;
              v227 = 0u;
              *&v228 = 0;
              *(&v228 + 1) = 0x7FF8000000000000;
              LODWORD(v229) = 0;
              BYTE4(v229) = 0;
              *(&v229 + 1) = 0x7FF8000000000000;
              *v230 = 2143289344;
              *&v230[8] = v113;
              *&v230[24] = v113;
              *&v230[40] = v113;
              *&v230[56] = 2143289344;
              v230[60] = 0;
              LOBYTE(v231) = 0;
              BYTE4(v231) = 0;
              BYTE8(v231) = 0;
              WORD6(v231) = 0;
              BYTE14(v231) = 1;
              v232 = v113;
              v233 = &unk_1F4CDFE98;
              sub_1D0B751F4(&v234, &unk_1D0ED80C5);
              LOBYTE(v235) = 0;
              HIDWORD(v235) = -1;
              v236 = 0u;
              v237 = 0u;
              v238 = 0u;
              v239 = 0u;
              v240 = 0u;
              v241 = 0u;
              v242 = 0u;
              v243 = 0u;
              v244 = 0u;
              v245 = 0u;
              v246 = 0u;
              v59 = *v56;
              *&v60 = 0x100000001;
              *(&v60 + 1) = 0x100000001;
              v211 = v60;
              v188 = v60;
              *v213 = *(&v193 + 1);
              *v190 = (*(&v196 + 2) * *(&v196 + 2));
              *&v230[48] = v196;
              v231 = v197;
              v232 = v198;
              v229 = v192[6];
              *v230 = v193;
              *&v230[16] = v194;
              *&v230[32] = v195;
              v225 = v192[2];
              v226 = v192[3];
              v227 = v192[4];
              v228 = v192[5];
              v223 = v192[0];
              v224 = v192[1];
              std::string::operator=(&__src, v55);
              data = v55[1].__r_.__value_.__l.__data_;
              UnprocessedMSRData = std::string::operator=(&v234, (v59 + 40));
              v235 = *(v59 + 64);
              v61 = *(v59 + 72);
              v62 = *(v59 + 104);
              v237 = *(v59 + 88);
              v238 = v62;
              v236 = v61;
              v63 = *(v59 + 120);
              v64 = *(v59 + 136);
              v65 = *(v59 + 168);
              v241 = *(v59 + 152);
              v242 = v65;
              v239 = v63;
              v240 = v64;
              v66 = *(v59 + 184);
              v67 = *(v59 + 200);
              v68 = *(v59 + 232);
              v245 = *(v59 + 216);
              v246 = v68;
              v243 = v66;
              v244 = v67;
              *v206 = v111 + 2920;
              *&v206[8] = v111 + 14824;
              *&v206[16] = v111 + 14840;
              *&v206[24] = v111 + 2760;
              v207 = (v111 + 2800);
              v69 = *(*(v53 + 24) + 96);
              if ((v69 - 3) < 2)
              {
                sub_1D0BA002C(&v121, 16);
                if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
                {
                  sub_1D0BC39B4(&v126, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_);
                }

                else
                {
                  v126 = __src;
                }

                v127 = data;
                v138 = *&v230[48];
                v139 = v231;
                v140 = v232;
                v134 = v229;
                v135 = *v230;
                v136 = *&v230[16];
                v137 = *&v230[32];
                v130 = v225;
                v131 = v226;
                v132 = v227;
                v133 = v228;
                v128 = v223;
                v129 = v224;
                v141 = &unk_1F4CDFE98;
                if (SHIBYTE(v234.__r_.__value_.__r.__words[2]) < 0)
                {
                  sub_1D0BC39B4(&v142, v234.__r_.__value_.__l.__data_, v234.__r_.__value_.__l.__size_);
                }

                else
                {
                  v142 = v234;
                }

                v143 = v235;
                v152 = v244;
                v153 = v245;
                v154 = v246;
                v148 = v240;
                v149 = v241;
                v150 = v242;
                v151 = v243;
                v144 = v236;
                v145 = v237;
                v146 = v238;
                v147 = v239;
                v157 = v207;
                v155 = *v206;
                v156 = *&v206[16];
                v121 = &unk_1F4CE1888;
                v158 = 0;
                v159 = 0;
                v125 = **(v53 + 24);
                v158 = v111 + 17000;
                v159 = (v111 + 8872);
                v83 = LOBYTE(v122);
                v84 = sub_1D0BCFAB8(v55);
                sub_1D0B751F4(v115, v84);
                sub_1D0BA01A8(&v121, v83, v115);
                if (v116 < 0)
                {
                  operator delete(v115[0]);
                }

                v85 = v188;
                if ((v188 & 0x80000000) != 0)
                {
                  __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
                }

                v217 = 0x100000003;
                v215 = &unk_1F4CDEB28;
                v86 = &v219;
                v218 = &v219;
                *&v216 = v188 | 0x100000000;
                DWORD2(v216) = v188;
                HIDWORD(v216) = v188;
                if (v188 > 3)
                {
                  bzero(&v219, 16 * ((v188 - 1) >> 1));
                  v87 = &v217 + v85;
                  *v87 = 0;
                  v87[1] = 0;
                }

                else if (v188)
                {
                  bzero(&v219, 8 * v188);
                }

                if (*v110)
                {
                  if (*(v111 + 16918) == 174)
                  {
                    LOWORD(v247[0]) = 2;
                    LOBYTE(v200) = 2;
                    cnprint::CNPrinter::Print(v247, &v200, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", *(&v125 + 1) + v125);
                  }

                  else if (*(v111 + 61737) == 1)
                  {
                    if (cnprint::CNPrinter::GetLogLevel(v86) <= 1)
                    {
                      LOWORD(v247[0]) = 2;
                      LOBYTE(v200) = 1;
                      cnprint::CNPrinter::Print(v247, &v200, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", *(&v125 + 1) + v125);
                    }
                  }

                  else
                  {
                    v88 = sub_1D0B7C8AC(&v125, v111 + 7718);
                    if (!v88)
                    {
                      v247[1] = 0;
                      v247[0] = 0;
                      sub_1D0D910AC(v247, &v121);
                    }

                    if (cnprint::CNPrinter::GetLogLevel(v88) <= 1)
                    {
                      LOWORD(v247[0]) = 2;
                      LOBYTE(v200) = 1;
                      cnprint::CNPrinter::Print(v247, &v200, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", *(&v125 + 1) + v125, *(v111 + 7719) + *(v111 + 7718));
                    }
                  }
                }

                else if (cnprint::CNPrinter::GetLogLevel(v86) <= 1)
                {
                  LOWORD(v247[0]) = 2;
                  LOBYTE(v200) = 1;
                  cnprint::CNPrinter::Print(v247, &v200, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", *(&v125 + 1) + v125);
                }

                LOWORD(v247[0]) = 12;
                LOBYTE(v200) = 4;
                v215 = (*(*v112 + 16))(v112);
                *&v216 = v89;
                v90 = sub_1D0BCFAB8(v55);
                cnprint::CNLogFormatter::FormatGeneral(v114, &v215, "Could not add measurement - average Doppler for %s", v90);
                v91 = v111 + 2712;
                if (*(v111 + 2735) < 0)
                {
                  v91 = *(v111 + 339);
                }

                cnprint::CNPrinter::Print(v247, &v200, "%s", v91);
                v141 = &unk_1F4CDFE98;
                if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v142.__r_.__value_.__l.__data_);
                }

                v141 = &unk_1F4CD5F70;
                if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v126.__r_.__value_.__l.__data_);
                }

                v121 = &unk_1F4CE4300;
                if (v124 < 0)
                {
                  operator delete(v123);
                }
              }

              else if (v69 == 2)
              {
                sub_1D0D8EAE4(&v121, &__src, v206);
                v125 = **(v53 + 24);
                v78 = LOBYTE(v122);
                v79 = sub_1D0BCFAB8(v55);
                sub_1D0B751F4(v117, v79);
                sub_1D0BA01A8(&v121, v78, v117);
                if (v118 < 0)
                {
                  operator delete(v117[0]);
                }

                if (sub_1D0D5F500(v110, &v125, &v210, &v187, &v121))
                {
                  LOWORD(v247[0]) = 12;
                  LOBYTE(v200) = 4;
                  v215 = (*(*v112 + 16))(v112);
                  *&v216 = v80;
                  v81 = sub_1D0BCFAB8(v55);
                  cnprint::CNLogFormatter::FormatGeneral(v114, &v215, "Could not add measurement - Doppler for %s", v81);
                  v82 = v111 + 2712;
                  if (*(v111 + 2735) < 0)
                  {
                    v82 = *(v111 + 339);
                  }

                  cnprint::CNPrinter::Print(v247, &v200, "%s", v82);
                }

                UnprocessedMSRData = sub_1D0D5F97C(&v121);
              }

              else if (v69 == 1)
              {
                sub_1D0D8E578(&v121, &__src, v206);
                v125 = **(v53 + 24);
                v70 = LOBYTE(v122);
                v71 = sub_1D0BCFAB8(v55);
                sub_1D0B751F4(__p, v71);
                sub_1D0BA01A8(&v121, v70, __p);
                if (v120 < 0)
                {
                  operator delete(__p[0]);
                }

                v73 = *(*v56 + 312);
                v72 = *(*v56 + 320);
                if (v72)
                {
                  atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v158 = v73;
                v74 = v159;
                v159 = v72;
                if (v74)
                {
                  sub_1D0B7CAB8(v74);
                }

                if (sub_1D0D5E914(v110, &v125, &v210, &v187, &v121))
                {
                  LOWORD(v247[0]) = 12;
                  LOBYTE(v200) = 4;
                  v215 = (*(*v112 + 16))(v112);
                  *&v216 = v75;
                  v76 = sub_1D0BCFAB8(v55);
                  cnprint::CNLogFormatter::FormatGeneral(v114, &v215, "Could not add measurement - PSR for %s", v76);
                  v77 = v111 + 2712;
                  if (*(v111 + 2735) < 0)
                  {
                    v77 = *(v111 + 339);
                  }

                  cnprint::CNPrinter::Print(v247, &v200, "%s", v77);
                }

                UnprocessedMSRData = sub_1D0D5ED90(&v121);
              }

              v233 = &unk_1F4CDFE98;
              if (SHIBYTE(v234.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v234.__r_.__value_.__l.__data_);
              }

              v233 = &unk_1F4CD5F70;
              if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__src.__r_.__value_.__l.__data_);
              }
            }
          }
        }

        v53 = *(v53 + 8);
      }

      while (v53 != &v201);
      if (v54)
      {
        v92 = 1;
        v93 = v54 / *(*(v111 + 146) + 1472);
        do
        {
          UnprocessedMSRData = sub_1D0C51528(v111 + 19584);
          if (UnprocessedMSRData)
          {
            break;
          }
        }

        while (v93 > v92++);
      }
    }

    LogLevel = cnprint::CNPrinter::GetLogLevel(UnprocessedMSRData);
    if (LogLevel <= 1)
    {
      LOWORD(v192[0]) = 12;
      LOBYTE(v187) = 1;
      __src.__r_.__value_.__r.__words[0] = (*(*v112 + 16))(v112);
      __src.__r_.__value_.__l.__size_ = v96;
      raven::RavenSequentialGNSSMeasurementSelector::StringOfL1MeasurementCountsByConstellation((v111 + 17024), &v121);
      v97 = SHIBYTE(v123) >= 0 ? &v121 : v121;
      v98 = cnprint::CNLogFormatter::FormatGeneral(v111 + 2712, &__src, "%s", v97);
      v99 = (*(v111 + 2735) >= 0 ? v98 : *(v111 + 339));
      cnprint::CNPrinter::Print(v192, &v187, "%s", v99);
      if (SHIBYTE(v123) < 0)
      {
        operator delete(v121);
      }
    }

    if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
    {
      LOWORD(v192[0]) = 12;
      LOBYTE(v187) = 1;
      __src.__r_.__value_.__r.__words[0] = (*(*v112 + 16))(v112);
      __src.__r_.__value_.__l.__size_ = v100;
      raven::RavenSequentialGNSSMeasurementSelector::StringOfL5MeasurementCountsByConstellation(&v121, (v111 + 17024));
      v101 = SHIBYTE(v123) >= 0 ? &v121 : v121;
      v102 = cnprint::CNLogFormatter::FormatGeneral(v111 + 2712, &__src, "%s", v101);
      v103 = (*(v111 + 2735) >= 0 ? v102 : *(v111 + 339));
      cnprint::CNPrinter::Print(v192, &v187, "%s", v103);
      if (SHIBYTE(v123) < 0)
      {
        operator delete(v121);
      }
    }

    LOWORD(v192[0]) = 12;
    LOBYTE(v187) = 2;
    __src.__r_.__value_.__r.__words[0] = (*(*v112 + 16))(v112);
    __src.__r_.__value_.__l.__size_ = v104;
    raven::RavenSequentialGNSSMeasurementSelector::StringOfOverallMeasurementSelectionCounts(&v121, (v111 + 17024));
    if (SHIBYTE(v123) >= 0)
    {
      v105 = &v121;
    }

    else
    {
      v105 = v121;
    }

    cnprint::CNLogFormatter::FormatGeneral(v111 + 2712, &__src, "%s", v105);
    if (*(v111 + 2735) >= 0)
    {
      v106 = v111 + 2712;
    }

    else
    {
      v106 = *(v111 + 339);
    }

    cnprint::CNPrinter::Print(v192, &v187, "%s", v106);
    if (SHIBYTE(v123) < 0)
    {
      operator delete(v121);
    }

    LOWORD(v192[0]) = 12;
    LOBYTE(v187) = 2;
    __src.__r_.__value_.__r.__words[0] = (*(*v112 + 16))(v112);
    __src.__r_.__value_.__l.__size_ = v107;
    raven::RavenSequentialGNSSMeasurementSelector::StringOfOverallMeasurementSelectionCountsForRayTracedMeasurements(&v121, (v111 + 17024));
    if (SHIBYTE(v123) >= 0)
    {
      v108 = &v121;
    }

    else
    {
      v108 = v121;
    }

    cnprint::CNLogFormatter::FormatGeneral(v111 + 2712, &__src, "%s", v108);
    if (*(v111 + 2735) >= 0)
    {
      v109 = v111 + 2712;
    }

    else
    {
      v109 = *(v111 + 339);
    }

    cnprint::CNPrinter::Print(v192, &v187, "%s", v109);
    if (SHIBYTE(v123) < 0)
    {
      operator delete(v121);
    }

    v21 = 0;
  }

  else
  {
    v21 = 0xFFFFFFFFLL;
  }

  sub_1D0BCC0B4(&v201);
  return v21;
}

void sub_1D0C1019C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_1EE053A78);
  sub_1D0D5E230(&STACK[0x700]);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::ByteSize(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity *this, unint64_t a2)
{
  v3 = *(this + 57);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_46;
  }

  if (v3)
  {
    v6 = *(this + 1);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
      v6 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::default_instance_ + 8);
    }

    v7 = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::ByteSize(v6, a2);
    v8 = v7;
    if (v7 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
    }

    else
    {
      v9 = 1;
    }

    v4 = v8 + v9 + 1;
    v3 = *(this + 57);
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = 0;
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v10 = *(this + 6);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = 11;
    }

    else if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
      v3 = *(this + 57);
    }

    else
    {
      v11 = 2;
    }

    v4 += v11;
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v4 += 9;
  }

  if ((v3 & 8) != 0)
  {
    v12 = *(this + 7);
    if ((v12 & 0x80000000) != 0)
    {
      v13 = 11;
    }

    else if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
      v3 = *(this + 57);
    }

    else
    {
      v13 = 2;
    }

    v4 += v13;
  }

  v14 = v4 + 9;
  if ((v3 & 0x10) == 0)
  {
    v14 = v4;
  }

  if ((v3 & 0x20) != 0)
  {
    v5 = v14 + 9;
  }

  else
  {
    v5 = v14;
  }

  if ((v3 & 0x40) != 0)
  {
    v15 = *(this + 12);
    if ((v15 & 0x80000000) != 0)
    {
      v16 = 11;
    }

    else if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
      v3 = *(this + 57);
    }

    else
    {
      v16 = 2;
    }

    v5 = (v16 + v5);
  }

  if ((v3 & 0x80) != 0)
  {
    v17 = *(this + 13);
    if ((v17 & 0x80000000) != 0)
    {
      v18 = 11;
    }

    else if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v3 = *(this + 57);
    }

    else
    {
      v18 = 2;
    }

    v5 = (v18 + v5);
  }

LABEL_46:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v19 = *(this + 34);
      if ((v19 & 0x80000000) != 0)
      {
        v20 = 11;
      }

      else if (v19 >= 0x80)
      {
        v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
        v3 = *(this + 57);
      }

      else
      {
        v20 = 2;
      }

      LODWORD(v5) = v20 + v5;
    }

    v21 = v5 + 10;
    if ((v3 & 0x200) == 0)
    {
      v21 = v5;
    }

    if ((v3 & 0x400) != 0)
    {
      v21 += 10;
    }

    if ((v3 & 0x800) != 0)
    {
      v21 += 10;
    }

    if ((v3 & 0x1000) != 0)
    {
      v21 += 10;
    }

    if ((v3 & 0x2000) != 0)
    {
      v21 += 10;
    }

    if ((v3 & 0x4000) != 0)
    {
      v21 += 10;
    }

    if ((v3 & 0x8000) != 0)
    {
      v5 = v21 + 10;
    }

    else
    {
      v5 = v21;
    }
  }

  if ((v3 & 0xFF0000) != 0)
  {
    v22 = v5 + 10;
    if ((v3 & 0x10000) == 0)
    {
      v22 = v5;
    }

    if ((v3 & 0x20000) != 0)
    {
      v22 += 10;
    }

    if ((v3 & 0x40000) != 0)
    {
      v22 += 10;
    }

    if ((v3 & 0x80000) != 0)
    {
      v22 += 10;
    }

    if ((v3 & 0x100000) != 0)
    {
      v22 += 10;
    }

    if ((v3 & 0x200000) != 0)
    {
      v22 += 10;
    }

    if ((v3 & 0x400000) != 0)
    {
      v22 += 10;
    }

    if ((v3 & 0x800000) != 0)
    {
      v5 = v22 + 10;
    }

    else
    {
      v5 = v22;
    }
  }

  if (HIBYTE(v3))
  {
    v23 = v5 + 10;
    if ((v3 & 0x1000000) == 0)
    {
      v23 = v5;
    }

    if ((v3 & 0x2000000) != 0)
    {
      v23 += 10;
    }

    if ((v3 & 0x4000000) != 0)
    {
      v23 += 10;
    }

    if ((v3 & 0x8000000) != 0)
    {
      v23 += 10;
    }

    if ((v3 & 0x10000000) != 0)
    {
      v5 = v23 + 10;
    }

    else
    {
      v5 = v23;
    }

    if ((v3 & 0x20000000) != 0)
    {
      v24 = *(this + 35);
      if ((v24 & 0x80000000) != 0)
      {
        v25 = 12;
      }

      else if (v24 >= 0x80)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 2;
      }

      else
      {
        v25 = 3;
      }

      v5 = (v25 + v5);
    }
  }

  *(this + 56) = v5;
  return v5;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::EstimatorState::ByteSize(CoreNavigation::CLP::LogEntry::Raven::EstimatorState *this, unint64_t a2)
{
  v3 = *(this + 23);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_61;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
    v5 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 8);
  }

  v6 = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::ByteSize(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
  }

  else
  {
    v8 = 1;
  }

  v4 = (v7 + v8 + 1);
  v3 = *(this + 23);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(this + 2);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
      v9 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 16);
    }

    v10 = CoreNavigation::CLP::LogEntry::Raven::UserPosition::ByteSize(v9, a2);
    v11 = v10;
    if (v10 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 1);
    v3 = *(this + 23);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v13 = *(this + 3);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
      v13 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 24);
    }

    v14 = CoreNavigation::CLP::LogEntry::Raven::UserVelocity::ByteSize(v13, a2);
    v15 = v14;
    if (v14 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
    }

    else
    {
      v16 = 1;
    }

    v4 = (v4 + v15 + v16 + 1);
    v3 = *(this + 23);
    if ((v3 & 8) == 0)
    {
LABEL_20:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_37;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_20;
  }

  v17 = *(this + 4);
  if (!v17)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
    v17 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 32);
  }

  v18 = CoreNavigation::CLP::LogEntry::Raven::DevicePosition::ByteSize(v17, a2);
  v19 = v18;
  if (v18 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
  }

  else
  {
    v20 = 1;
  }

  v4 = (v4 + v19 + v20 + 1);
  v3 = *(this + 23);
  if ((v3 & 0x10) == 0)
  {
LABEL_21:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_43;
  }

LABEL_37:
  v21 = *(this + 5);
  if (!v21)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
    v21 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 40);
  }

  v22 = CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::ByteSize(v21, a2);
  v23 = v22;
  if (v22 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
  }

  else
  {
    v24 = 1;
  }

  v4 = (v4 + v23 + v24 + 1);
  v3 = *(this + 23);
  if ((v3 & 0x20) == 0)
  {
LABEL_22:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_43:
  v25 = *(this + 6);
  if (!v25)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
    v25 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 48);
  }

  v26 = CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::ByteSize(v25, a2);
  v27 = v26;
  if (v26 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
  }

  else
  {
    v28 = 1;
  }

  v4 = (v4 + v27 + v28 + 1);
  v3 = *(this + 23);
  if ((v3 & 0x40) == 0)
  {
LABEL_23:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_55;
  }

LABEL_49:
  v29 = *(this + 7);
  if (!v29)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
    v29 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 56);
  }

  v30 = CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::ByteSize(v29, a2);
  v31 = v30;
  if (v30 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30);
  }

  else
  {
    v32 = 1;
  }

  v4 = (v4 + v31 + v32 + 1);
  v3 = *(this + 23);
  if ((v3 & 0x80) != 0)
  {
LABEL_55:
    v33 = *(this + 8);
    if (!v33)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
      v33 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 64);
    }

    v34 = CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::ByteSize(v33, a2);
    v35 = v34;
    if (v34 >= 0x80)
    {
      v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34);
    }

    else
    {
      v36 = 1;
    }

    v4 = (v4 + v35 + v36 + 1);
    v3 = *(this + 23);
  }

LABEL_61:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v37 = *(this + 9);
      if (!v37)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
        v37 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 72);
      }

      v38 = CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::ByteSize(v37, a2);
      v39 = v38;
      if (v38 >= 0x80)
      {
        v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38);
      }

      else
      {
        v40 = 1;
      }

      v4 = (v4 + v39 + v40 + 1);
      v3 = *(this + 23);
    }

    if ((v3 & 0x200) != 0)
    {
      v41 = *(this + 10);
      if (!v41)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
        v41 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 80);
      }

      v42 = CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::ByteSize(v41, a2);
      v43 = v42;
      if (v42 >= 0x80)
      {
        v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42);
      }

      else
      {
        v44 = 1;
      }

      v4 = (v4 + v43 + v44 + 1);
    }
  }

  *(this + 22) = v4;
  return v4;
}

void sub_1D0C10B74(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0BB2F1C(v8, a3);
  raven::RavenEstimator::HandleSignalEnvironmentEvent((v3 + 288), v8);
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

void sub_1D0C10CA0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t cnprint::CNLogFormatter::FormatWarning(uint64_t a1, uint64_t a2, char *a3, ...)
{
  va_start(va, a3);
  va_copy(v12, va);
  if (*(a1 + 47) >= 0)
  {
    v6 = *(a1 + 47);
  }

  else
  {
    v6 = *(a1 + 32);
  }

  v7 = __p;
  sub_1D0BBB710(__p, v6 + 10);
  if (v11 < 0)
  {
    v7 = __p[0];
  }

  if (v6)
  {
    if (*(a1 + 47) >= 0)
    {
      v8 = (a1 + 24);
    }

    else
    {
      v8 = *(a1 + 24);
    }

    memmove(v7, v8, v6);
  }

  strcpy(v7 + v6, " WARNING: ");
  cnprint::CNLogFormatter::FormatCore(a1, __p, a2, 1, a3, v12);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1D0C10DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::UserVelocity::ByteSize(CoreNavigation::CLP::LogEntry::Raven::UserVelocity *this, unint64_t a2)
{
  v3 = *(this + 33);
  if (v3)
  {
    if (v3)
    {
      v6 = *(this + 1);
      if (!v6)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
        v6 = *(CoreNavigation::CLP::LogEntry::Raven::UserVelocity::default_instance_ + 8);
      }

      v7 = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::ByteSize(v6, a2);
      v8 = v7;
      if (v7 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
      }

      else
      {
        v9 = 1;
      }

      v4 = v8 + v9 + 1;
      v3 = *(this + 33);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 8) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x20) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x40) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x80) != 0)
    {
      result = v4 + 9;
    }

    else
    {
      result = v4;
    }
  }

  else
  {
    result = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    v10 = result + 9;
    if ((v3 & 0x100) == 0)
    {
      v10 = result;
    }

    if ((v3 & 0x200) != 0)
    {
      v10 += 9;
    }

    if ((v3 & 0x400) != 0)
    {
      v10 += 9;
    }

    if ((v3 & 0x800) != 0)
    {
      v10 += 9;
    }

    if ((v3 & 0x1000) != 0)
    {
      v10 += 9;
    }

    if ((v3 & 0x2000) != 0)
    {
      v10 += 9;
    }

    if ((v3 & 0x4000) != 0)
    {
      result = v10 + 9;
    }

    else
    {
      result = v10;
    }
  }

  *(this + 32) = result;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DevicePosition::ByteSize(CoreNavigation::CLP::LogEntry::Raven::DevicePosition *this, unint64_t a2)
{
  v3 = *(this + 23);
  if (v3)
  {
    if (v3)
    {
      v5 = *(this + 1);
      if (!v5)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
        v5 = *(CoreNavigation::CLP::LogEntry::Raven::DevicePosition::default_instance_ + 8);
      }

      v6 = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::ByteSize(v5, a2);
      v7 = v6;
      if (v6 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
      }

      else
      {
        v8 = 1;
      }

      v4 = v7 + v8 + 1;
      v3 = *(this + 23);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 8) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x20) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x40) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x80) != 0)
    {
      v4 += 9;
    }
  }

  else
  {
    v4 = 0;
  }

  v9 = v4 + 9;
  if ((v3 & 0x100) == 0)
  {
    v9 = v4;
  }

  if ((v3 & 0x200) != 0)
  {
    v9 += 9;
  }

  if ((v3 & 0xFF00) != 0)
  {
    result = v9;
  }

  else
  {
    result = v4;
  }

  *(this + 22) = result;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::ByteSize(CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity *this, unint64_t a2)
{
  v3 = *(this + 23);
  if (v3)
  {
    if (v3)
    {
      v5 = *(this + 1);
      if (!v5)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
        v5 = *(CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::default_instance_ + 8);
      }

      v6 = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::ByteSize(v5, a2);
      v7 = v6;
      if (v6 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
      }

      else
      {
        v8 = 1;
      }

      v4 = v7 + v8 + 1;
      v3 = *(this + 23);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 8) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x20) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x40) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x80) != 0)
    {
      v4 += 9;
    }
  }

  else
  {
    v4 = 0;
  }

  v9 = v4 + 9;
  if ((v3 & 0x100) == 0)
  {
    v9 = v4;
  }

  if ((v3 & 0x200) != 0)
  {
    v9 += 9;
  }

  if ((v3 & 0xFF00) != 0)
  {
    result = v9;
  }

  else
  {
    result = v4;
  }

  *(this + 22) = result;
  return result;
}

void sub_1D0C11124(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0BB2F1C(v9, a3);
  v4 = raven::RavenEstimator::HandleSignalEnvironmentEvent((v3 + 288), v9);
  if (v5)
  {
    v14 = 12;
    v13 = 2;
    v12[0] = (*(v9[0] + 16))(v9, v4);
    v12[1] = v6;
    (*(v9[0] + 24))(v10, v9);
    if (v11 >= 0)
    {
      v7 = v10;
    }

    else
    {
      v7 = v10[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v3 + 240, v12, "Failed to handle event - %s.", v7);
    if (*(v3 + 263) >= 0)
    {
      v8 = (v3 + 240);
    }

    else
    {
      v8 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(&v14, &v13, "%s", v8);
    if (v11 < 0)
    {
      operator delete(v10[0]);
    }
  }
}

void sub_1D0C11244(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::ByteSize(CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 60);
  if (v3)
  {
    if (*(this + 60))
    {
      v6 = *(this + 1);
      if (!v6)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
        v6 = *(CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::default_instance_ + 8);
      }

      v7 = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::ByteSize(v6, a2);
      v8 = v7;
      if (v7 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
      }

      else
      {
        v9 = 1;
      }

      v4 = v8 + v9 + 1;
      v3 = *(this + 15);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 8) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x20) != 0)
    {
      result = v4 + 9;
    }

    else
    {
      result = v4;
    }
  }

  else
  {
    result = 0;
  }

  *(this + 14) = result;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::ByteSize(CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth *this, unint64_t a2)
{
  v3 = *(this + 42);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_27;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v6 = *(this + 1);
  if (!v6)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
    v6 = *(CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::default_instance_ + 8);
  }

  v7 = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::ByteSize(v6, a2);
  v8 = v7;
  if (v7 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
  }

  else
  {
    v9 = 1;
  }

  v4 = v8 + v9 + 1;
  v3 = *(this + 42);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v10 = *(this + 14);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = 11;
    }

    else if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
      v3 = *(this + 42);
    }

    else
    {
      v11 = 2;
    }

    v4 += v11;
  }

LABEL_18:
  v12 = v4 + 9;
  if ((v3 & 4) == 0)
  {
    v12 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v5 = v12 + 9;
  }

  else
  {
    v5 = v12;
  }

  if ((v3 & 0x10) != 0)
  {
    v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
    v3 = *(this + 42);
    if ((v3 & 0x20) == 0)
    {
LABEL_25:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((v3 & 0x20) == 0)
  {
    goto LABEL_25;
  }

  v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
  v3 = *(this + 42);
  if ((v3 & 0x40) != 0)
  {
LABEL_26:
    v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 6)) + 1;
    v3 = *(this + 42);
  }

LABEL_27:
  if ((v3 & 0x3FC00) != 0)
  {
    v13 = v5 + 9;
    if ((v3 & 0x400) == 0)
    {
      v13 = v5;
    }

    if ((v3 & 0x800) != 0)
    {
      v5 = v13 + 9;
    }

    else
    {
      v5 = v13;
    }

    if ((v3 & 0x1000) != 0)
    {
      v14 = *(this + 15);
      if ((v14 & 0x80000000) != 0)
      {
        v15 = 11;
      }

      else if (v14 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
        v3 = *(this + 42);
      }

      else
      {
        v15 = 2;
      }

      v5 += v15;
    }

    if ((v3 & 0x2000) != 0)
    {
      v16 = *(this + 40);
      if ((v16 & 0x80000000) != 0)
      {
        v17 = 11;
      }

      else if (v16 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
        v3 = *(this + 42);
      }

      else
      {
        v17 = 2;
      }

      v5 += v17;
    }

    if ((v3 & 0x4000) != 0)
    {
      v5 += 9;
    }
  }

  v18 = *(this + 18);
  v19 = v18 + v5;
  if (v18 >= 1)
  {
    v20 = 0;
    do
    {
      v21 = CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::ByteSize(*(*(this + 8) + 8 * v20), a2);
      v22 = v21;
      if (v21 >= 0x80)
      {
        v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
      }

      else
      {
        v23 = 1;
      }

      v19 += v22 + v23;
      ++v20;
    }

    while (v20 < *(this + 18));
  }

  v24 = *(this + 24);
  v25 = v24 + v19;
  if (v24 >= 1)
  {
    v26 = 0;
    do
    {
      v27 = CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::ByteSize(*(*(this + 11) + 8 * v26), a2);
      v28 = v27;
      if (v27 >= 0x80)
      {
        v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27);
      }

      else
      {
        v29 = 1;
      }

      v25 += v28 + v29;
      ++v26;
    }

    while (v26 < *(this + 24));
  }

  v30 = *(this + 30);
  v31 = (v30 + v25);
  if (v30 >= 1)
  {
    v32 = 0;
    do
    {
      v33 = CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::ByteSize(*(*(this + 14) + 8 * v32), a2);
      v34 = v33;
      if (v33 >= 0x80)
      {
        v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33);
      }

      else
      {
        v35 = 1;
      }

      v31 = (v34 + v31 + v35);
      ++v32;
    }

    while (v32 < *(this + 30));
  }

  *(this + 41) = v31;
  return v31;
}

CoreNavigation::CLP::LogEntry *CoreNavigation::CLP::LogEntry::LogEntry::SerializeWithCachedSizes(CoreNavigation::CLP::LogEntry::LogEntry *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 52))
  {
    v6 = *(this + 4);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 32);
    }

    wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  result = wireless_diagnostics::google::protobuf::internal::ExtensionSet::SerializeWithCachedSizes((this + 8), 2, 3, a2);
  if ((*(this + 52) & 2) != 0)
  {
    v9 = *(this + 5);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(result);
      v9 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, v8);
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
      if ((*(v5 + 44) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 44);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v7 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(4, v7, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 316);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 316);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_40:
  v9 = *(v5 + 24);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_43:
  v10 = *(v5 + 32);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_49;
  }

LABEL_46:
  v11 = *(v5 + 40);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v11, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_49:
  v12 = *(v5 + 48);
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v12, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_55;
  }

LABEL_52:
  v13 = *(v5 + 56);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v13, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_58;
  }

LABEL_55:
  v14 = *(v5 + 64);
  if (!v14)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v14, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_61;
  }

LABEL_58:
  v15 = *(v5 + 72);
  if (!v15)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 72);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v15, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_64;
  }

LABEL_61:
  v16 = *(v5 + 80);
  if (!v16)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 80);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v16, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_67;
  }

LABEL_64:
  v17 = *(v5 + 88);
  if (!v17)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v17 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 88);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v17, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_70;
  }

LABEL_67:
  v18 = *(v5 + 96);
  if (!v18)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v18 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 96);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, v18, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_73;
  }

LABEL_70:
  v19 = *(v5 + 104);
  if (!v19)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v19 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 104);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xD, v19, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_76;
  }

LABEL_73:
  v20 = *(v5 + 112);
  if (!v20)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v20 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 112);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, v20, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_79;
  }

LABEL_76:
  v21 = *(v5 + 120);
  if (!v21)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v21 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 120);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, v21, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_82;
  }

LABEL_79:
  v22 = *(v5 + 128);
  if (!v22)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v22 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 128);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v22, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_85;
  }

LABEL_82:
  v23 = *(v5 + 136);
  if (!v23)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v23 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 136);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x13, v23, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_88;
  }

LABEL_85:
  v24 = *(v5 + 144);
  if (!v24)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v24 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 144);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x15, v24, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_91;
  }

LABEL_88:
  v25 = *(v5 + 152);
  if (!v25)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v25 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 152);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x16, v25, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_94;
  }

LABEL_91:
  v26 = *(v5 + 160);
  if (!v26)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v26 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 160);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x17, v26, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_97;
  }

LABEL_94:
  v27 = *(v5 + 168);
  if (!v27)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v27 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 168);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x18, v27, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_100;
  }

LABEL_97:
  v28 = *(v5 + 176);
  if (!v28)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v28 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 176);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x19, v28, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_103;
  }

LABEL_100:
  v29 = *(v5 + 184);
  if (!v29)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v29 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 184);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1A, v29, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_106;
  }

LABEL_103:
  v30 = *(v5 + 192);
  if (!v30)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v30 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 192);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1B, v30, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_109;
  }

LABEL_106:
  v31 = *(v5 + 200);
  if (!v31)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v31 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 200);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1C, v31, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_112;
  }

LABEL_109:
  v32 = *(v5 + 208);
  if (!v32)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v32 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 208);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1D, v32, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_115;
  }

LABEL_112:
  v33 = *(v5 + 216);
  if (!v33)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v33 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 216);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1E, v33, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_118;
  }

LABEL_115:
  v34 = *(v5 + 224);
  if (!v34)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v34 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 224);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1F, v34, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_121;
  }

LABEL_118:
  v35 = *(v5 + 232);
  if (!v35)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v35 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 232);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x20, v35, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_124;
  }

LABEL_121:
  v36 = *(v5 + 240);
  if (!v36)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v36 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 240);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x21, v36, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_127;
  }

LABEL_124:
  v37 = *(v5 + 248);
  if (!v37)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v37 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 248);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x22, v37, a2, a4);
  if ((*(v5 + 316) & 0x80000000) != 0)
  {
LABEL_127:
    v38 = *(v5 + 256);
    if (!v38)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v38 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 256);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x23, v38, a2, a4);
  }

LABEL_130:
  v39 = *(v5 + 320);
  if (v39)
  {
    v40 = *(v5 + 264);
    if (!v40)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v40 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 264);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3E8, v40, a2, a4);
    v39 = *(v5 + 320);
    if ((v39 & 2) == 0)
    {
LABEL_132:
      if ((v39 & 4) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_143;
    }
  }

  else if ((v39 & 2) == 0)
  {
    goto LABEL_132;
  }

  v41 = *(v5 + 272);
  if (!v41)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v41 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 272);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3EE, v41, a2, a4);
  v39 = *(v5 + 320);
  if ((v39 & 4) == 0)
  {
LABEL_133:
    if ((v39 & 8) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_146;
  }

LABEL_143:
  v42 = *(v5 + 280);
  if (!v42)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v42 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 280);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3EF, v42, a2, a4);
  v39 = *(v5 + 320);
  if ((v39 & 8) == 0)
  {
LABEL_134:
    if ((v39 & 0x10) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_149;
  }

LABEL_146:
  v43 = *(v5 + 288);
  if (!v43)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v43 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 288);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3F2, v43, a2, a4);
  v39 = *(v5 + 320);
  if ((v39 & 0x10) == 0)
  {
LABEL_135:
    if ((v39 & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_152;
  }

LABEL_149:
  v44 = *(v5 + 296);
  if (!v44)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v44 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 296);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3F6, v44, a2, a4);
  if ((*(v5 + 320) & 0x20) != 0)
  {
LABEL_152:
    v45 = *(v5 + 304);
    if (!v45)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v45 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 304);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3F8, v45, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::LogEntry::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenLogEntry_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::LogEntry::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenLogEntry_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::Raven::LogEntry::default_instance_ + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::RavenOutput::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 60);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 60);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_14:
  v9 = *(v5 + 24);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_17:
  v10 = *(v5 + 32);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_20:
  v11 = *(v5 + 40);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v11 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v11, a2, a4);
  if ((*(v5 + 60) & 0x20) != 0)
  {
LABEL_23:
    v12 = *(v5 + 48);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v12 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 48);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v12, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 292);
  if (v6)
  {
    v14 = *(this + 8);
    if (!v14)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v14 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v14, a2, a4);
    v6 = *(v5 + 292);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 24), a3);
  v6 = *(v5 + 292);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 292);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, *(v5 + 40), a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(7, *(v5 + 48), a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(8, *(v5 + 56), a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 64), a3);
  v6 = *(v5 + 292);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 72), a3);
  v6 = *(v5 + 292);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 80), a3);
  v6 = *(v5 + 292);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 88), a3);
  v6 = *(v5 + 292);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_54:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xD, a2, *(v5 + 96), a3);
  if ((*(v5 + 292) & 0x2000) != 0)
  {
LABEL_15:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xE, a2, *(v5 + 104), a3);
  }

LABEL_16:
  if (*(v5 + 120) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, *(*(v5 + 112) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 120));
  }

  if (*(v5 + 144) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, *(*(v5 + 136) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 144));
  }

  v9 = *(v5 + 292);
  if ((v9 & 0x10000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x11, a2, *(v5 + 160), a3);
    v9 = *(v5 + 292);
    if ((v9 & 0x20000) == 0)
    {
LABEL_24:
      if ((v9 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_58;
    }
  }

  else if ((v9 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x12, a2, *(v5 + 168), a3);
  v9 = *(v5 + 292);
  if ((v9 & 0x40000) == 0)
  {
LABEL_25:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_58:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x13, a2, *(v5 + 176), a3);
  if ((*(v5 + 292) & 0x80000) != 0)
  {
LABEL_26:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x14, *(v5 + 184), a2, a4);
  }

LABEL_27:
  if (*(v5 + 200) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x15, *(*(v5 + 192) + 8 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 200));
  }

  if (*(v5 + 224) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x16, *(*(v5 + 216) + 8 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 224));
  }

  if (*(v5 + 248) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x17, *(*(v5 + 240) + 8 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 248));
  }

  if (*(v5 + 272) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x18, *(*(v5 + 264) + 8 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 272));
  }

  return this;
}

void sub_1D0C1245C(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_1D0C54C1C(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_1D0C12744(a1, &v9);
}

void sub_1D0C125E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::TimeStamp::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 52);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_13:
  v9 = *(v5 + 24);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_16:
  v10 = *(v5 + 32);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  if ((*(v5 + 52) & 0x10) != 0)
  {
LABEL_19:
    v11 = *(v5 + 40);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, v11, a3);
  }

  return this;
}

void sub_1D0C12744(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_1D0C54C1C(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::TimeStruct::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, v7, a3);
  }

  return this;
}

void sub_1D0C128C0(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_1D0C54E78(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_1D0B8BF18(a1, &v9);
}

void sub_1D0C12A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 32), a2, a4);
      if ((*(v5 + 40) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, v7, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 228);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 228);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 228);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 16), a3);
  v6 = *(v5 + 228);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 228);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 40), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(7, *(v5 + 48), a2, a4);
  v6 = *(v5 + 228);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(8, *(v5 + 52), a2, a4);
  v6 = *(v5 + 228);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 136), a2, a4);
  v6 = *(v5 + 228);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x14, a2, *(v5 + 56), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x15, a2, *(v5 + 64), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x16, a2, *(v5 + 72), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x17, a2, *(v5 + 80), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x18, a2, *(v5 + 88), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x19, a2, *(v5 + 96), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1A, a2, *(v5 + 104), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1B, a2, *(v5 + 112), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1C, a2, *(v5 + 120), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1D, a2, *(v5 + 128), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x32, a2, *(v5 + 144), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x33, a2, *(v5 + 152), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x34, a2, *(v5 + 160), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x35, a2, *(v5 + 168), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x3C, a2, *(v5 + 176), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x3D, a2, *(v5 + 184), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x3E, a2, *(v5 + 192), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x3F, a2, *(v5 + 200), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_62:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x47, a2, *(v5 + 216), a3);
    if ((*(v5 + 228) & 0x20000000) == 0)
    {
      return this;
    }

    goto LABEL_63;
  }

LABEL_61:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x46, a2, *(v5 + 208), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x10000000) != 0)
  {
    goto LABEL_62;
  }

LABEL_30:
  if ((v6 & 0x20000000) == 0)
  {
    return this;
  }

LABEL_63:
  v8 = *(v5 + 140);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x50, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::EstimatorState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 92);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 92);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_18:
  v9 = *(v5 + 24);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_21:
  v10 = *(v5 + 32);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_24:
  v11 = *(v5 + 40);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v11 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v11, a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_27:
  v12 = *(v5 + 48);
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v12 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v12, a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_30:
  v13 = *(v5 + 56);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v13 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v13, a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_33:
  v14 = *(v5 + 64);
  if (!v14)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v14 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v14, a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_39;
  }

LABEL_36:
  v15 = *(v5 + 72);
  if (!v15)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v15 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 72);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v15, a2, a4);
  if ((*(v5 + 92) & 0x200) != 0)
  {
LABEL_39:
    v16 = *(v5 + 80);
    if (!v16)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v16 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 80);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v16, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::UserPosition::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 92);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::UserPosition::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 92);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 92);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 92);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
    if ((*(v5 + 92) & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_22;
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    return this;
  }

LABEL_23:
  v8 = *(v5 + 80);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, v8, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::UserVelocity::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 132);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::UserVelocity::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 132);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 132);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 132);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 80), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 88), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 96), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

LABEL_32:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xE, a2, *(v5 + 112), a3);
    if ((*(v5 + 132) & 0x4000) == 0)
    {
      return this;
    }

    goto LABEL_33;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xD, a2, *(v5 + 104), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x2000) != 0)
  {
    goto LABEL_32;
  }

LABEL_15:
  if ((v6 & 0x4000) == 0)
  {
    return this;
  }

LABEL_33:
  v8 = *(v5 + 120);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xF, a2, v8, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DevicePosition::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 92);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::DevicePosition::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 92);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 92);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 92);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
    if ((*(v5 + 92) & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_22;
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    return this;
  }

LABEL_23:
  v8 = *(v5 + 80);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, v8, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 92);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 92);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 92);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 92);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
    if ((*(v5 + 92) & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_22;
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    return this;
  }

LABEL_23:
  v8 = *(v5 + 80);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, v8, a3);
}

void raven::RavenDeviceAttitudeActiveObject::UpdateDeviceVehicleAttitudeWithRotation(raven::RavenDeviceAttitudeActiveObject *this)
{
  MEMORY[0x1EEE9AC00](this);
  v2 = v1;
  if (sub_1D0B9A2A4(v1, (v1 + 6648), 0.0) && sub_1D0BD685C(v2, (v2 + 7568)))
  {
    v241 = 0;
    v242 = 0;
    v243 = 0;
    sub_1D0C4E048(&v241, *(v2 + 6688));
    v3 = *(v2 + 6656);
    if (*(v2 + 6664) == v3 || (v4 = *(v2 + 6680), v5 = (*(v3 + 8 * (v4 / 0x1A)) + 152 * (v4 % 0x1A)), v6 = *(v3 + 8 * ((*(v2 + 6688) + v4) / 0x1A)) + 152 * ((*(v2 + 6688) + v4) % 0x1A), v5 == v6))
    {
      v8 = v242;
    }

    else
    {
      v7 = (v3 + 8 * (v4 / 0x1A));
      v8 = v242;
      do
      {
        v9 = sqrt(v5[14] * v5[14] + v5[13] * v5[13] + v5[15] * v5[15]);
        if (v8 >= v243)
        {
          v10 = v241;
          v11 = v8 - v241;
          v12 = v8 - v241;
          v13 = v12 + 1;
          if ((v12 + 1) >> 61)
          {
            sub_1D0C5663C();
          }

          v14 = v243 - v241;
          if ((v243 - v241) >> 2 > v13)
          {
            v13 = v14 >> 2;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF8)
          {
            v15 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            sub_1D0C3994C(&v241, v15);
          }

          v16 = v8 - v241;
          v17 = (8 * v12);
          v18 = (8 * v12 - 8 * v16);
          *v17 = v9;
          v8 = v17 + 1;
          memcpy(v18, v10, v11);
          v19 = v241;
          v241 = v18;
          v242 = v8;
          v243 = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          *v8++ = v9;
        }

        v242 = v8;
        v5 += 19;
        if ((v5 - *v7) == 3952)
        {
          v20 = v7[1];
          ++v7;
          v5 = v20;
        }
      }

      while (v5 != v6);
    }

    v21 = *(*(v2 + 232) + 1072) * 0.0174532925;
    v22 = v241 + 1;
    v23 = v241 == v8 || v22 == v8;
    v24 = v241;
    if (!v23)
    {
      v25 = *v241;
      v24 = v241;
      v26 = v241 + 1;
      do
      {
        v27 = *v26++;
        v28 = v27;
        if (v25 < v27)
        {
          v25 = v28;
          v24 = v22;
        }

        v22 = v26;
      }

      while (v26 != v8);
    }

    if (*v24 > v21)
    {
      v29 = v24 - v241;
      v30 = *(v2 + 6688);
      v31 = 2 * v30 / 5;
      if (v29 < (3 * v30 / 5) && v29 > v31)
      {
        v238 = 0;
        v239 = 0;
        v240 = 0;
        sub_1D0C4E048(&v238, v30);
        v235 = 0;
        v236 = 0;
        v237 = 0;
        sub_1D0C4E048(&v235, *(v2 + 6688));
        v232 = 0;
        v233 = 0;
        v234 = 0;
        sub_1D0C4E048(&v232, *(v2 + 6688));
        v33 = *(v2 + 6656);
        if (*(v2 + 6664) != v33)
        {
          v34 = *(v2 + 6680);
          v35 = (v33 + 8 * (v34 / 0x1A));
          v36 = (*v35 + 152 * (v34 % 0x1A));
          v37 = *(v33 + 8 * ((*(v2 + 6688) + v34) / 0x1A)) + 152 * ((*(v2 + 6688) + v34) % 0x1A);
          while (v36 != v37)
          {
            sub_1D0C4E0E8(&v238, v36 + 13);
            sub_1D0C4E0E8(&v235, v36 + 14);
            sub_1D0C4E0E8(&v232, v36 + 15);
            v36 += 19;
            if ((v36 - *v35) == 3952)
            {
              v38 = v35[1];
              ++v35;
              v36 = v38;
            }
          }
        }

        if (raven::RavenDeviceAttitudeActiveObject::DualDirSmooth(v2, &v238, *(*(v2 + 232) + 1112)) && raven::RavenDeviceAttitudeActiveObject::DualDirSmooth(v2, &v235, *(*(v2 + 232) + 1112)) && raven::RavenDeviceAttitudeActiveObject::DualDirSmooth(v2, &v232, *(*(v2 + 232) + 1112)))
        {
          v39 = v238;
          v40 = v239;
          if (v238 != v239)
          {
            v41 = v238;
            do
            {
              *v41 = *v41 * *v41;
              ++v41;
            }

            while (v41 != v40);
          }

          v42 = v235;
          v43 = v236;
          if (v235 != v236)
          {
            v44 = v235;
            do
            {
              *v44 = *v44 * *v44;
              ++v44;
            }

            while (v44 != v43);
          }

          v45 = v232;
          v46 = v233;
          while (v45 != v46)
          {
            *v45 = *v45 * *v45;
            ++v45;
          }

          v47 = v241;
          if (v39 != v40)
          {
            memmove(v241, v39, v40 - v39);
            v47 = v241;
            v42 = v235;
          }

          v48 = v242;
          if (v47 != v242)
          {
            v49 = v47;
            do
            {
              v50 = *v42++;
              *v49 = *v49 + v50;
              ++v49;
            }

            while (v49 != v48);
            v51 = v232;
            v52 = v47;
            do
            {
              v53 = *v51++;
              *v52 = *v52 + v53;
              ++v52;
            }

            while (v52 != v48);
            v54 = v47 + 1;
            if (v47 + 1 != v48)
            {
              v55 = *v47;
              v56 = v47 + 1;
              do
              {
                v57 = *v56++;
                v58 = v57;
                if (v55 < v57)
                {
                  v55 = v58;
                  v47 = v54;
                }

                v54 = v56;
              }

              while (v56 != v48);
            }
          }

          v59 = *(v2 + 6656);
          v60 = *(v2 + 6680);
          v61 = (v59 + 8 * (v60 / 0x1A));
          v62 = *(v2 + 6664) == v59 ? 0 : *v61 + 152 * (v60 % 0x1A);
          v63 = *v47;
          v186 = *&v61;
          *v187 = v62;
          sub_1D0E2D52C(&v186, v29);
          v64 = (*(**v187 + 16))(*v187);
          v231[0] = v64;
          *&v231[1] = v65;
          if (sqrt(v63) > v21)
          {
            v66 = *(v2 + 6704) * *(v2 + 6704) + *(v2 + 6696) * *(v2 + 6696);
            v67 = *(v2 + 6712);
            v228[0] = 0;
            v229 = 0u;
            memset(v230, 0, sizeof(v230));
            v225[0] = 0;
            v226 = 0u;
            memset(v227, 0, sizeof(v227));
            v222[0] = 0;
            v223 = 0u;
            memset(v224, 0, sizeof(v224));
            v68 = *(v2 + 6656);
            v69 = *(v2 + 6680);
            v70 = *(v2 + 6664);
            v176 = v64;
            v71 = v70 == v68 ? 0 : *(v68 + 8 * (v69 / 0x1A)) + 152 * (v69 % 0x1A);
            v72 = v21 * 0.25;
            v73 = v65;
            v74 = v66 + v67 * v67;
            *&v186 = v68 + 8 * (v69 / 0x1A);
            *v187 = v71;
            sub_1D0E2D52C(&v186, v29 - v31);
            v75 = v186;
            v76 = *v187;
            while (1)
            {
              v77 = v70 == v68 ? 0 : *(v68 + 8 * (v69 / 0x1A)) + 152 * (v69 % 0x1A);
              *&v186 = v68 + 8 * (v69 / 0x1A);
              *v187 = v77;
              sub_1D0E2D52C(&v186, v31 + v29);
              if (*&v75 >= *&v186 && (*&v75 != *&v186 || v76 >= *v187))
              {
                break;
              }

              v79 = v76[13];
              v80 = sqrt(v76[14] * v76[14] + v79 * v79 + v76[15] * v76[15]);
              if (v80 > v72)
              {
                v186 = v79 / v80;
                sub_1D0B8954C(v228, &v186, v80 * v80 / v74);
                v186 = v76[14] / v80;
                sub_1D0B8954C(v225, &v186, v80 * v80 / v74);
                v186 = v76[15] / v80;
                sub_1D0B8954C(v222, &v186, v80 * v80 / v74);
              }

              v76 += 19;
              if ((v76 - **&v75) == 3952)
              {
                v81 = *(*&v75 + 8);
                *&v75 += 8;
                v76 = v81;
              }

              v68 = *(v2 + 6656);
              v69 = *(v2 + 6680);
              v70 = *(v2 + 6664);
            }

            v219 = 0x100000003;
            v218 = xmmword_1D0E7DCC0;
            v217 = &unk_1F4CDEB28;
            v220 = v221;
            v221[0] = *&v230[1];
            v221[1] = *&v227[1];
            v221[2] = *&v224[1];
            sub_1D0BFA800(&v217);
            if (fabs(*&v82) > 0.000000015)
            {
              v83 = v220;
              *v220 = vdivq_f64(*v220, vdupq_lane_s64(v82, 0));
              v175 = *&v82;
              v83[1].f64[0] = v83[1].f64[0] / *&v82;
              v214 = 0;
              v215 = 0;
              v210[0] = 0;
              __p = 0;
              v211 = 0;
              v212 = 1;
              sub_1D0BC3E34(&__p);
              v216 = 1;
              v207 = 0x100000003;
              v206 = xmmword_1D0E7DCC0;
              v205 = &unk_1F4CDEB28;
              v208 = &v209;
              v84 = *(v2 + 6656);
              v85 = *(v2 + 6680);
              v86 = *(v2 + 6664);
              if (v86 == v84)
              {
                v87 = 0;
              }

              else
              {
                v87 = *(v84 + 8 * (v85 / 0x1A)) + 152 * (v85 % 0x1A);
              }

              *&v186 = v84 + 8 * (v85 / 0x1A);
              *v187 = v87;
              sub_1D0E2D52C(&v186, v29 - v31);
              v88 = v186;
              v89 = *v187;
              while (1)
              {
                v90 = v86 == v84 ? 0 : *(v84 + 8 * (v85 / 0x1A)) + 152 * (v85 % 0x1A);
                *&v186 = v84 + 8 * (v85 / 0x1A);
                *v187 = v90;
                sub_1D0E2D52C(&v186, v31 + v29);
                if (*&v88 >= *&v186 && (*&v88 != *&v186 || v89 >= *v187))
                {
                  break;
                }

                v91.n128_u64[0] = *(v89 + 104);
                v93 = sqrt(*(v89 + 112) * *(v89 + 112) + v91.n128_f64[0] * v91.n128_f64[0] + *(v89 + 120) * *(v89 + 120));
                if (v93 > v72)
                {
                  v94 = v208;
                  *v208 = v91.n128_u64[0];
                  v94[1] = *(v89 + 112);
                  v94[2] = *(v89 + 120);
                  v91.n128_f64[0] = 1.0 / v93;
                  *&v187[16] = 0x100000003;
                  *v187 = xmmword_1D0E7DCC0;
                  v186 = COERCE_DOUBLE(&unk_1F4CDEB28);
                  *&v187[24] = &v187[32];
                  sub_1D0B8930C(&v205, &v186, v91);
                  v95 = *&v187[8];
                  if (*&v187[8] < 1)
                  {
                    v97 = 0.0;
                  }

                  else
                  {
                    v96 = *&v187[24];
                    v97 = 0.0;
                    v98 = v220;
                    do
                    {
                      v99 = *v96++;
                      v100 = v99;
                      v101 = *v98++;
                      v97 = v97 + v100 * v101;
                      --v95;
                    }

                    while (v95);
                  }

                  v184 = v97;
                  sub_1D0BC3F08(v210, &v184, 1.0);
                }

                v89 += 152;
                if (v89 - **&v88 == 3952)
                {
                  v102 = *(*&v88 + 8);
                  *&v88 += 8;
                  v89 = v102;
                }

                v84 = *(v2 + 6656);
                v85 = *(v2 + 6680);
                v86 = *(v2 + 6664);
              }

              v91.n128_u64[0] = 0x4049000000000000;
              sub_1D0BC4124(v210, v91);
              v104 = acos(v103);
              v105 = sub_1D0C51578(3, 1, v203);
              *(v204 + 16) = 0x3FF0000000000000;
              if (cnprint::CNPrinter::GetLogLevel(v105) <= 1)
              {
                LOWORD(v186) = 12;
                LOBYTE(v184) = 1;
                v108 = *(*(v2 + 7576) + ((*(v2 + 7600) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * (*(v2 + 7600) & 0xFLL);
                v109 = (*(*v108 + 16))(v108);
                v111 = v110;
                v112 = *(v2 + 7608) + *(v2 + 7600) - 1;
                v113 = *(*(v2 + 7576) + ((v112 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * (v112 & 0xF);
                v114 = (*(*v113 + 16))(v113);
                cnprint::CNPrinter::Print(&v186, &v184, "DevAtt,Rotation,first solution time,%lf,last solution time,%lf,maxRateTime,%lf,rotVectNorm,%lf", v111 + v109, v115 + v114, v73 + v176, v175);
              }

              v116 = *(*(v2 + 232) + 1120);
              *v187 = 0;
              v186 = 0.0;
              v106.i64[0] = v116;
              *v117.i64 = CNTimeSpan::SetTimeSpan(&v186, 0, v106, v107);
              v119 = CNTimeSpan::operator-(v231, &v186, v117, v118);
              v121 = v120;
              *v187 = 0;
              v186 = 0.0;
              v122.i64[0] = v116;
              *v124.i64 = CNTimeSpan::SetTimeSpan(&v186, 0, v122, v123);
              v178 = CNTimeSpan::operator+(v231, &v186, v124, v125);
              v127 = v126;
              v200 = 0x300000003;
              v199 = xmmword_1D0E76C10;
              v198 = &unk_1F4CD5DD0;
              v201 = &v202;
              v195 = 0x100000003;
              v194 = xmmword_1D0E7DCC0;
              v193 = &unk_1F4CDEB28;
              v196 = &v197;
              v190 = 0x100000003;
              v189 = xmmword_1D0E7DCC0;
              v188 = &unk_1F4CDEB28;
              v191 = &v192;
              sub_1D0BAD0C8(&v186);
              sub_1D0BAD0C8(&v184);
              v129 = *(v2 + 7576);
              if (*(v2 + 7584) != v129)
              {
                v130 = *(v2 + 7600);
                v131 = (v129 + 8 * (v130 >> 4));
                v132 = *v131 + 2656 * (v130 & 0xF);
                v133 = *(v129 + (((*(v2 + 7608) + v130) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * ((*(v2 + 7608) + v130) & 0xF);
                if (v132 != v133)
                {
                  v177 = v104;
                  if (v119)
                  {
                    v134 = 1;
                  }

                  else
                  {
                    v134 = (*&v121 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
                  }

                  v135 = !v134;
                  if (v178)
                  {
                    v136 = 1;
                  }

                  else
                  {
                    v136 = (*&v127 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
                  }

                  v137 = !v136;
                  v179 = v137;
                  v138 = 0.0;
                  while (1)
                  {
                    v139 = (*(*v132 + 16))(v132);
                    if (v135 || (!v139 ? (v141 = (*&v140 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) : (v141 = 1), !v141 || (v142 = v119 <= v139, v119 == v139)))
                    {
                      v142 = v121 <= v140;
                    }

                    if (v142)
                    {
                      v144 = *(v132 + 1552);
                      if (v187[1536])
                      {
                        v145 = v191;
                        *v191 = v144;
                        v145[1] = *(v132 + 1560);
                        v145[2] = *(v132 + 1568);
                        sub_1D0BFA800(&v188);
                        *v128.i64 = fabs(v146.f64[0]);
                        if (*v128.i64 > 0.000000015)
                        {
                          v146.f64[0] = 1.0 / v146.f64[0];
                          sub_1D0C51FB4(&v188, &v182, v146);
                          sub_1D0B894B0(&v188, &v182);
                          sub_1D0D5625C(&v198, &v188, &v182);
                          sub_1D0B894B0(&v188, &v182);
                          sub_1D0D562E0(&v182, &v193, &v188);
                          sub_1D0D562E0(v180, &v193, &v188);
                          sub_1D0BFA800(v180);
                          v148 = DWORD2(v194);
                          if (SDWORD2(v194) < 1)
                          {
                            v150 = 0.0;
                          }

                          else
                          {
                            v149 = v196;
                            v150 = 0.0;
                            v151 = v191;
                            do
                            {
                              v152 = *v149++;
                              v153 = v152;
                              v154 = *v151++;
                              v150 = v150 + v153 * v154;
                              --v148;
                            }

                            while (v148);
                          }

                          v158 = v183[2];
                          v159 = atan2(v147, v150);
                          if (*(v158 + 16) <= 0.0)
                          {
                            v160 = -1.0;
                          }

                          else
                          {
                            v160 = 1.0;
                          }

                          memcpy(v185, (v132 + 8), 0xA51uLL);
                          v161 = sub_1D0B894B0(&v193, &v188);
                          v162 = (*(*v132 + 16))(v132, v161);
                          v138 = v138 + v159 * v160;
                          if (v162)
                          {
                            v164 = 1;
                          }

                          else
                          {
                            v164 = (*&v163 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
                          }

                          if (!v164 || v179 || (v165 = v162 <= v178, v162 == v178))
                          {
                            v165 = v163 <= v127;
                          }

                          if (!v165)
                          {
LABEL_161:
                            v166 = v138 < 0.0;
                            v104 = v177;
                            goto LABEL_163;
                          }
                        }
                      }

                      else
                      {
                        v155 = v196;
                        *v196 = v144;
                        v155[1] = *(v132 + 1560);
                        v155[2] = *(v132 + 1568);
                        sub_1D0BFA800(&v193);
                        *v128.i64 = fabs(v156.f64[0]);
                        if (*v128.i64 > 0.000000015)
                        {
                          v156.f64[0] = 1.0 / v156.f64[0];
                          sub_1D0C51FB4(&v193, &v182, v156);
                          sub_1D0B894B0(&v193, &v182);
                          v157 = sub_1D0BD2CA4(&v182, *(v132 + 1472), *(v132 + 1480), *(v132 + 1488));
                          if ((BYTE8(v182) & 1) == 0)
                          {
                            if (cnprint::CNPrinter::GetLogLevel(v157) <= 1)
                            {
                              LOWORD(v180[0]) = 12;
                              v181 = 1;
                              cnprint::CNPrinter::Print(v180, &v181, "DevAtt,Rotation,cannot derive ecef to enu Jacobian");
                            }

                            goto LABEL_174;
                          }

                          sub_1D0B894B0(&v198, v183);
                          sub_1D0D5625C(&v198, &v193, v180);
                          sub_1D0B894B0(&v193, v180);
                          memcpy(v187, (v132 + 8), sizeof(v187));
                        }
                      }
                    }

                    v132 += 2656;
                    if (v132 - *v131 == 42496)
                    {
                      v143 = v131[1];
                      ++v131;
                      v132 = v143;
                    }

                    if (v132 == v133)
                    {
                      goto LABEL_161;
                    }
                  }
                }
              }

              v166 = 0;
LABEL_163:
              v167 = v185[0];
              v168 = *&v185[1];
              v169 = v185[1];
              v170.i64[1] = *&v187[8];
              v182 = *v187;
              v170.i64[0] = *(*(v2 + 232) + 1128);
              v180[0] = 0;
              v180[1] = 0;
              *v171.i64 = CNTimeSpan::SetTimeSpan(v180, 0, v170, v128);
              v173 = CNTimeSpan::operator+(&v182, v180, v171, v172);
              if ((v167 || (v169 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && (v173 || (*&v174 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v167 != v173)
              {
                if (v167 < v173)
                {
                  goto LABEL_174;
                }
              }

              else if (v168 < v174)
              {
                goto LABEL_174;
              }

              if (v166)
              {
                *(v204 + 16) = 0xBFF0000000000000;
              }

              raven::RavenDeviceAttitudeActiveObject::UpdateDeviceVehicleAttitude(v2, &v217, v203, v231, 2, v104);
              sub_1D0E29F7C((v2 + 6648));
LABEL_174:
              if (__p)
              {
                v214 = __p;
                operator delete(__p);
              }
            }
          }
        }

        if (v232)
        {
          v233 = v232;
          operator delete(v232);
        }

        if (v235)
        {
          v236 = v235;
          operator delete(v235);
        }

        if (v238)
        {
          v239 = v238;
          operator delete(v238);
        }
      }
    }

    if (v241)
    {
      v242 = v241;
      operator delete(v241);
    }
  }
}

void sub_1D0C148C4(_Unwind_Exception *a1)
{
  v3 = STACK[0x1770];
  if (STACK[0x1770])
  {
    STACK[0x1778] = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 256);
  if (v4)
  {
    *(v1 - 248) = v4;
    operator delete(v4);
  }

  v5 = *(v1 - 232);
  if (v5)
  {
    *(v1 - 224) = v5;
    operator delete(v5);
  }

  v6 = *(v1 - 208);
  if (v6)
  {
    *(v1 - 200) = v6;
    operator delete(v6);
  }

  v7 = *(v1 - 184);
  if (v7)
  {
    *(v1 - 176) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

void sub_1D0C149C4(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_1D0C4E87C(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 60);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 60);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 60);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 24), a3);
  v6 = *(v5 + 60);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 40), a3);
    if ((*(v5 + 60) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 32), a3);
  v6 = *(v5 + 60);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return this;
  }

LABEL_15:
  v8 = *(v5 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, v8, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 168);
  if (v6)
  {
    v11 = *(this + 8);
    if (!v11)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v11 = *(CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v11, a2, a4);
    v6 = *(v5 + 168);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 56), a2, a4);
  v6 = *(v5 + 168);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 16), a3);
  v6 = *(v5 + 168);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 24), a3);
  v6 = *(v5 + 168);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 168);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, *(v5 + 40), a2, a4);
  if ((*(v5 + 168) & 0x40) != 0)
  {
LABEL_8:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(7, *(v5 + 48), a2, a4);
  }

LABEL_9:
  if (*(v5 + 72) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, *(*(v5 + 64) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 72));
  }

  if (*(v5 + 96) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, *(*(v5 + 88) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 96));
  }

  if (*(v5 + 120) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, *(*(v5 + 112) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 120));
  }

  v10 = *(v5 + 168);
  if ((v10 & 0x400) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 136), a3);
    v10 = *(v5 + 168);
    if ((v10 & 0x800) == 0)
    {
LABEL_20:
      if ((v10 & 0x1000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_35;
    }
  }

  else if ((v10 & 0x800) == 0)
  {
    goto LABEL_20;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 144), a3);
  v10 = *(v5 + 168);
  if ((v10 & 0x1000) == 0)
  {
LABEL_21:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

LABEL_36:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xE, *(v5 + 160), a2, a4);
    if ((*(v5 + 168) & 0x4000) == 0)
    {
      return this;
    }

    goto LABEL_37;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xD, *(v5 + 60), a2, a4);
  v10 = *(v5 + 168);
  if ((v10 & 0x2000) != 0)
  {
    goto LABEL_36;
  }

LABEL_22:
  if ((v10 & 0x4000) == 0)
  {
    return this;
  }

LABEL_37:
  v12 = *(v5 + 152);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xF, a2, v12, a3);
}

void CoreNavigation::CLP::LogEntry::Raven::LogEntry::SharedDtor(CoreNavigation::CLP::LogEntry::Raven::LogEntry *this)
{
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenLogEntry_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Raven::LogEntry::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

void CoreNavigation::CLP::LogEntry::Raven::LogEntry::~LogEntry(CoreNavigation::CLP::LogEntry::Raven::LogEntry *this)
{
  CoreNavigation::CLP::LogEntry::Raven::LogEntry::~LogEntry(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CD73F8;
  CoreNavigation::CLP::LogEntry::Raven::LogEntry::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenLogEntry_2eproto(CoreNavigation::CLP::LogEntry::Raven *this)
{
  v1 = CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenLogEntry_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = MEMORY[0x1E69E5970] + 16;
    v2[1] = CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenLogEntry_2eproto_impl;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_1D0C14FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Raven::RavenOutput::SharedDtor(CoreNavigation::CLP::LogEntry::Raven::RavenOutput *this)
{
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 3);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(this + 4);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(this + 5);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(this + 6);
    if (v7)
    {
      v8 = *(*v7 + 8);

      v8();
    }
  }
}

void CoreNavigation::CLP::LogEntry::Raven::RavenOutput::~RavenOutput(CoreNavigation::CLP::LogEntry::Raven::RavenOutput *this)
{
  *this = &unk_1F4CD6798;
  CoreNavigation::CLP::LogEntry::Raven::RavenOutput::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Raven::RavenOutput::~RavenOutput(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(CoreNavigation::CLP::LogEntry::Raven *this)
{
  v1 = CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = MEMORY[0x1E69E5970] + 16;
    v2[1] = CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto_impl;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_1D0C15240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::~EstimatorHealth(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth *this)
{
  *this = &unk_1F4CD69F0;
  CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::SharedDtor(this);
  sub_1D0B8CD0C(this + 33);
  sub_1D0B8CD0C(this + 30);
  sub_1D0B8CD0C(this + 27);
  sub_1D0B8CD0C(this + 24);
  sub_1D0B8CD0C(this + 17);
  sub_1D0B8CD0C(this + 14);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::~EstimatorHealth(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::SharedDtor(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth *this)
{
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void CoreNavigation::CLP::LogEntry::Raven::TimeStamp::~TimeStamp(CoreNavigation::CLP::LogEntry::Raven::TimeStamp *this)
{
  CoreNavigation::CLP::LogEntry::Raven::TimeStamp::~TimeStamp(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CD6888;
  CoreNavigation::CLP::LogEntry::Raven::TimeStamp::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::Raven::TimeStamp::SharedDtor(CoreNavigation::CLP::LogEntry::Raven::TimeStamp *this)
{
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 3);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(this + 4);
    if (v5)
    {
      v6 = *(*v5 + 8);

      v6();
    }
  }
}

void CoreNavigation::CLP::LogEntry::Raven::TimeStruct::~TimeStruct(CoreNavigation::CLP::LogEntry::Raven::TimeStruct *this)
{
  CoreNavigation::CLP::LogEntry::Raven::TimeStruct::~TimeStruct(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CD6810;
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::~MeasurementTypeCount(CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount *this)
{
  *this = &unk_1F4CD6900;
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::~MeasurementTypeCount(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::SharedDtor(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity *this)
{
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::~EstimatorActivity(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity *this)
{
  *this = &unk_1F4CD6A68;
  CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::~EstimatorActivity(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::Raven::EstimatorState::~EstimatorState(CoreNavigation::CLP::LogEntry::Raven::EstimatorState *this)
{
  CoreNavigation::CLP::LogEntry::Raven::EstimatorState::~EstimatorState(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CD6BD0;
  CoreNavigation::CLP::LogEntry::Raven::EstimatorState::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::Raven::EstimatorState::SharedDtor(CoreNavigation::CLP::LogEntry::Raven::EstimatorState *this)
{
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 3);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(this + 4);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(this + 5);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(this + 6);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *(this + 7);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = *(this + 8);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = *(this + 9);
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = *(this + 10);
    if (v11)
    {
      v12 = *(*v11 + 8);

      v12();
    }
  }
}

void CoreNavigation::CLP::LogEntry::Raven::UserPosition::SharedDtor(CoreNavigation::CLP::LogEntry::Raven::UserPosition *this)
{
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Raven::UserPosition::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void CoreNavigation::CLP::LogEntry::Raven::UserPosition::~UserPosition(CoreNavigation::CLP::LogEntry::Raven::UserPosition *this)
{
  CoreNavigation::CLP::LogEntry::Raven::UserPosition::~UserPosition(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CD6C48;
  CoreNavigation::CLP::LogEntry::Raven::UserPosition::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::Raven::UserVelocity::~UserVelocity(CoreNavigation::CLP::LogEntry::Raven::UserVelocity *this)
{
  CoreNavigation::CLP::LogEntry::Raven::UserVelocity::~UserVelocity(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CD6CC0;
  CoreNavigation::CLP::LogEntry::Raven::UserVelocity::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::Raven::UserVelocity::SharedDtor(CoreNavigation::CLP::LogEntry::Raven::UserVelocity *this)
{
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Raven::UserVelocity::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void CoreNavigation::CLP::LogEntry::Raven::DevicePosition::SharedDtor(CoreNavigation::CLP::LogEntry::Raven::DevicePosition *this)
{
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Raven::DevicePosition::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::UserPosition::ByteSize(CoreNavigation::CLP::LogEntry::Raven::UserPosition *this, unint64_t a2)
{
  v3 = *(this + 23);
  if (v3)
  {
    if (v3)
    {
      v5 = *(this + 1);
      if (!v5)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
        v5 = *(CoreNavigation::CLP::LogEntry::Raven::UserPosition::default_instance_ + 8);
      }

      v6 = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::ByteSize(v5, a2);
      v7 = v6;
      if (v6 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
      }

      else
      {
        v8 = 1;
      }

      v4 = v7 + v8 + 1;
      v3 = *(this + 23);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 8) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x20) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x40) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x80) != 0)
    {
      v4 += 9;
    }
  }

  else
  {
    v4 = 0;
  }

  v9 = v4 + 9;
  if ((v3 & 0x100) == 0)
  {
    v9 = v4;
  }

  if ((v3 & 0x200) != 0)
  {
    v9 += 9;
  }

  if ((v3 & 0xFF00) != 0)
  {
    result = v9;
  }

  else
  {
    result = v4;
  }

  *(this + 22) = result;
  return result;
}

void sub_1D0C15D70(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_1D0C4E87C(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void CoreNavigation::CLP::LogEntry::Raven::DevicePosition::~DevicePosition(CoreNavigation::CLP::LogEntry::Raven::DevicePosition *this)
{
  *this = &unk_1F4CD6D38;
  CoreNavigation::CLP::LogEntry::Raven::DevicePosition::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Raven::DevicePosition::~DevicePosition(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::~DeviceVelocity(CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity *this)
{
  CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::~DeviceVelocity(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CD6DB0;
  CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::SharedDtor(CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity *this)
{
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::SharedDtor(CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy *this)
{
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::~DeviceReceiverClockDiscrepancy(CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy *this)
{
  *this = &unk_1F4CD7008;
  CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::~DeviceReceiverClockDiscrepancy(this);

  JUMPOUT(0x1D387ECA0);
}