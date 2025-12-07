void raven::ConvertProtobufToRavenSolutionEvent(raven *this, const CoreNavigation::CLP::LogEntry::Raven::RavenOutput *a2, raven::RavenSolutionEvent *a3, double a4, int8x16_t a5)
{
  v7 = *(this + 1);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 8);
  }

  raven::ConvertProtobufToRavenStatus(a2 + 104, v7, a4, a5);
  v11 = *(this + 3);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(v8);
    v11 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 24);
  }

  raven::ConvertProtobufToRavenSolution(a2 + 1168, v11, v9, v10);
  v15 = *(this + 2);
  if (!v15)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(v12);
    v15 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 16);
  }

  raven::ConvertProtobufToRavenActivity(a2 + 2032, v15, v13, v14);
}

void raven::ConvertProtobufToRavenStatus(uint64_t a1, uint64_t a2, double a3, int8x16_t a4)
{
  v42 = &unk_1F4CD9528;
  v6 = 0uLL;
  v43 = 0u;
  v44 = 0u;
  if (*(a2 + 292))
  {
    v7 = *(a2 + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::default_instance_ + 8);
    }

    if ((*(v7 + 52) & 2) != 0)
    {
      v8 = *(a2 + 8);
      if (!v8)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v8 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::default_instance_ + 8);
      }

      v9 = *(v8 + 16);
      if (!v9)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v9 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 16);
      }

      v10 = *(v9 + 8);
      v11 = *(a2 + 8);
      if (!v11)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v11 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::default_instance_ + 8);
      }

      v12 = *(v11 + 16);
      if (!v12)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v12 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 16);
      }

      a4.i64[0] = *(v12 + 16);
      *v6.i64 = *a4.i64 + v10;
      HIDWORD(v44) |= 1u;
      *&v43 = *v6.i64;
    }
  }

  if (*(a2 + 292))
  {
    v13 = *(a2 + 8);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
      v13 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::default_instance_ + 8);
    }

    if (*(v13 + 52))
    {
      v14 = *(a2 + 8);
      if (!v14)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v14 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::default_instance_ + 8);
      }

      v15 = *(v14 + 8);
      if (!v15)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v15 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 8);
      }

      v16 = *(v15 + 8);
      v17 = *(a2 + 8);
      if (!v17)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v17 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::default_instance_ + 8);
      }

      v18 = *(v17 + 8);
      if (!v18)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v18 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 8);
      }

      a4.i64[0] = *(v18 + 16);
      *v6.i64 = *a4.i64 + v16;
      HIDWORD(v44) |= 4u;
      *&v44 = *v6.i64;
    }
  }

  raven::ConvertProtobufToRavenTime(&v42, a1 + 8, 1, v6, a4);
  v21 = *(a2 + 292);
  if ((v21 & 2) != 0)
  {
    v22 = *(a2 + 16);
    if (v22 >= 7)
    {
      v23 = 0;
    }

    else
    {
      v23 = 0x5040302010000uLL >> (8 * v22);
    }

    *(a1 + 104) = v23;
  }

  if ((v21 & 4) != 0)
  {
    v24 = *(a2 + 20);
    if (v24 == 3)
    {
      v25 = 2;
    }

    else
    {
      v25 = v24 == 2;
    }

    *(a1 + 105) = v25;
  }

  *(a1 + 112) = *(a2 + 24);
  v19.i64[0] = *(a2 + 32);
  v39 = 0uLL;
  CNTimeSpan::SetTimeSpan(&v39, 0, v19, v20);
  *(a1 + 120) = v39;
  *(a1 + 136) = *(a2 + 40);
  *(a1 + 152) = *(a2 + 184);
  *(a1 + 160) = *(a2 + 56);
  *(a1 + 992) = *(a2 + 64);
  *(a1 + 1008) = *(a2 + 80);
  *(a1 + 1024) = *(a2 + 96);
  *(a1 + 1040) = *(a2 + 160);
  *(a1 + 1056) = *(a2 + 176);
  if (*(a2 + 120) >= 1)
  {
    v26 = 0;
    while (2)
    {
      CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MeasurementTypeCount(&v39, *(*(a2 + 112) + 8 * v26));
      v27 = 0;
      switch(v41)
      {
        case 0:
        case 26:
        case 34:
          v46 = 12;
          v45 = 4;
          cnprint::CNPrinter::Print(&v46, &v45, "Invalid measurement type specified: 'MeasurementTypeCount_MeasurementType_MT_Unknown'");
          v46 = 12;
          v45 = 4;
          cnprint::CNPrinter::Print(&v46, &v45, "Invalid measurement type specified, %d", 33);
          goto LABEL_74;
        case 1:
          v27 = 1;
          goto LABEL_73;
        case 2:
          v27 = 2;
          goto LABEL_73;
        case 3:
          v27 = 3;
          goto LABEL_73;
        case 4:
          v27 = 4;
          goto LABEL_73;
        case 5:
          v27 = 6;
          goto LABEL_73;
        case 6:
          v27 = 8;
          goto LABEL_73;
        case 7:
          v27 = 12;
          goto LABEL_73;
        case 8:
          v27 = 27;
          goto LABEL_73;
        case 9:
          v27 = 14;
          goto LABEL_73;
        case 10:
          v27 = 18;
          goto LABEL_73;
        case 11:
          v27 = 17;
          goto LABEL_73;
        case 12:
          v27 = 15;
          goto LABEL_73;
        case 13:
          v27 = 19;
          goto LABEL_73;
        case 14:
          v27 = 21;
          goto LABEL_73;
        case 15:
          v27 = 22;
          goto LABEL_73;
        case 16:
          v27 = 23;
          goto LABEL_73;
        case 17:
          v27 = 24;
          goto LABEL_73;
        case 18:
          v27 = 25;
          goto LABEL_73;
        case 19:
          v27 = 28;
          goto LABEL_73;
        case 20:
          v27 = 29;
          goto LABEL_73;
        case 21:
          v27 = 10;
          goto LABEL_73;
        case 22:
          v27 = 26;
          goto LABEL_73;
        case 23:
          v27 = 16;
          goto LABEL_73;
        case 24:
          v27 = 11;
          goto LABEL_73;
        case 25:
          v27 = 13;
          goto LABEL_73;
        case 27:
          v27 = 9;
          goto LABEL_73;
        case 29:
          v27 = 5;
          goto LABEL_73;
        case 30:
          v27 = 7;
          goto LABEL_73;
        case 31:
          v27 = 32;
          goto LABEL_73;
        case 32:
          v27 = 31;
          goto LABEL_73;
        case 33:
          v27 = 30;
          goto LABEL_73;
        case 35:
          v27 = 20;
          goto LABEL_73;
        default:
LABEL_73:
          *(a1 + 164 + 4 * v27) = v40;
LABEL_74:
          CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::~MeasurementTypeCount(&v39);
          if (++v26 >= *(a2 + 120))
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  if (*(a2 + 144) >= 1)
  {
    v28 = 0;
    while (2)
    {
      CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MeasurementTypeCount(&v39, *(*(a2 + 136) + 8 * v28));
      v29 = 0;
      switch(v41)
      {
        case 0:
        case 26:
        case 34:
          v46 = 12;
          v45 = 4;
          cnprint::CNPrinter::Print(&v46, &v45, "Invalid measurement type specified: 'MeasurementTypeCount_MeasurementType_MT_Unknown'");
          v46 = 12;
          v45 = 4;
          cnprint::CNPrinter::Print(&v46, &v45, "Invalid measurement type specified, %d", 33);
          goto LABEL_112;
        case 1:
          v29 = 1;
          goto LABEL_111;
        case 2:
          v29 = 2;
          goto LABEL_111;
        case 3:
          v29 = 3;
          goto LABEL_111;
        case 4:
          v29 = 4;
          goto LABEL_111;
        case 5:
          v29 = 6;
          goto LABEL_111;
        case 6:
          v29 = 8;
          goto LABEL_111;
        case 7:
          v29 = 12;
          goto LABEL_111;
        case 8:
          v29 = 27;
          goto LABEL_111;
        case 9:
          v29 = 14;
          goto LABEL_111;
        case 10:
          v29 = 18;
          goto LABEL_111;
        case 11:
          v29 = 17;
          goto LABEL_111;
        case 12:
          v29 = 15;
          goto LABEL_111;
        case 13:
          v29 = 19;
          goto LABEL_111;
        case 14:
          v29 = 21;
          goto LABEL_111;
        case 15:
          v29 = 22;
          goto LABEL_111;
        case 16:
          v29 = 23;
          goto LABEL_111;
        case 17:
          v29 = 24;
          goto LABEL_111;
        case 18:
          v29 = 25;
          goto LABEL_111;
        case 19:
          v29 = 28;
          goto LABEL_111;
        case 20:
          v29 = 29;
          goto LABEL_111;
        case 21:
          v29 = 10;
          goto LABEL_111;
        case 22:
          v29 = 26;
          goto LABEL_111;
        case 23:
          v29 = 16;
          goto LABEL_111;
        case 24:
          v29 = 11;
          goto LABEL_111;
        case 25:
          v29 = 13;
          goto LABEL_111;
        case 27:
          v29 = 9;
          goto LABEL_111;
        case 29:
          v29 = 5;
          goto LABEL_111;
        case 30:
          v29 = 7;
          goto LABEL_111;
        case 31:
          v29 = 32;
          goto LABEL_111;
        case 32:
          v29 = 31;
          goto LABEL_111;
        case 33:
          v29 = 30;
          goto LABEL_111;
        case 35:
          v29 = 20;
          goto LABEL_111;
        default:
LABEL_111:
          *(a1 + 296 + 4 * v29) = v40;
LABEL_112:
          CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::~MeasurementTypeCount(&v39);
          if (++v28 >= *(a2 + 144))
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  if (*(a2 + 200) >= 1)
  {
    v30 = 0;
    while (2)
    {
      CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MeasurementTypeCount(&v39, *(*(a2 + 192) + 8 * v30));
      v31 = 0;
      switch(v41)
      {
        case 0:
        case 26:
        case 34:
          v46 = 12;
          v45 = 4;
          cnprint::CNPrinter::Print(&v46, &v45, "Invalid measurement type specified: 'MeasurementTypeCount_MeasurementType_MT_Unknown'");
          v46 = 12;
          v45 = 4;
          cnprint::CNPrinter::Print(&v46, &v45, "Invalid measurement type specified, %d", 33);
          goto LABEL_150;
        case 1:
          v31 = 1;
          goto LABEL_149;
        case 2:
          v31 = 2;
          goto LABEL_149;
        case 3:
          v31 = 3;
          goto LABEL_149;
        case 4:
          v31 = 4;
          goto LABEL_149;
        case 5:
          v31 = 6;
          goto LABEL_149;
        case 6:
          v31 = 8;
          goto LABEL_149;
        case 7:
          v31 = 12;
          goto LABEL_149;
        case 8:
          v31 = 27;
          goto LABEL_149;
        case 9:
          v31 = 14;
          goto LABEL_149;
        case 10:
          v31 = 18;
          goto LABEL_149;
        case 11:
          v31 = 17;
          goto LABEL_149;
        case 12:
          v31 = 15;
          goto LABEL_149;
        case 13:
          v31 = 19;
          goto LABEL_149;
        case 14:
          v31 = 21;
          goto LABEL_149;
        case 15:
          v31 = 22;
          goto LABEL_149;
        case 16:
          v31 = 23;
          goto LABEL_149;
        case 17:
          v31 = 24;
          goto LABEL_149;
        case 18:
          v31 = 25;
          goto LABEL_149;
        case 19:
          v31 = 28;
          goto LABEL_149;
        case 20:
          v31 = 29;
          goto LABEL_149;
        case 21:
          v31 = 10;
          goto LABEL_149;
        case 22:
          v31 = 26;
          goto LABEL_149;
        case 23:
          v31 = 16;
          goto LABEL_149;
        case 24:
          v31 = 11;
          goto LABEL_149;
        case 25:
          v31 = 13;
          goto LABEL_149;
        case 27:
          v31 = 9;
          goto LABEL_149;
        case 29:
          v31 = 5;
          goto LABEL_149;
        case 30:
          v31 = 7;
          goto LABEL_149;
        case 31:
          v31 = 32;
          goto LABEL_149;
        case 32:
          v31 = 31;
          goto LABEL_149;
        case 33:
          v31 = 30;
          goto LABEL_149;
        case 35:
          v31 = 20;
          goto LABEL_149;
        default:
LABEL_149:
          *(a1 + 428 + 4 * v31) = v40;
LABEL_150:
          CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::~MeasurementTypeCount(&v39);
          if (++v30 >= *(a2 + 200))
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  if (*(a2 + 224) >= 1)
  {
    v32 = 0;
    while (2)
    {
      CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MeasurementTypeCount(&v39, *(*(a2 + 216) + 8 * v32));
      v33 = 0;
      switch(v41)
      {
        case 0:
        case 26:
        case 34:
          v46 = 12;
          v45 = 4;
          cnprint::CNPrinter::Print(&v46, &v45, "Invalid measurement type specified: 'MeasurementTypeCount_MeasurementType_MT_Unknown'");
          v46 = 12;
          v45 = 4;
          cnprint::CNPrinter::Print(&v46, &v45, "Invalid measurement type specified, %d", 33);
          goto LABEL_188;
        case 1:
          v33 = 1;
          goto LABEL_187;
        case 2:
          v33 = 2;
          goto LABEL_187;
        case 3:
          v33 = 3;
          goto LABEL_187;
        case 4:
          v33 = 4;
          goto LABEL_187;
        case 5:
          v33 = 6;
          goto LABEL_187;
        case 6:
          v33 = 8;
          goto LABEL_187;
        case 7:
          v33 = 12;
          goto LABEL_187;
        case 8:
          v33 = 27;
          goto LABEL_187;
        case 9:
          v33 = 14;
          goto LABEL_187;
        case 10:
          v33 = 18;
          goto LABEL_187;
        case 11:
          v33 = 17;
          goto LABEL_187;
        case 12:
          v33 = 15;
          goto LABEL_187;
        case 13:
          v33 = 19;
          goto LABEL_187;
        case 14:
          v33 = 21;
          goto LABEL_187;
        case 15:
          v33 = 22;
          goto LABEL_187;
        case 16:
          v33 = 23;
          goto LABEL_187;
        case 17:
          v33 = 24;
          goto LABEL_187;
        case 18:
          v33 = 25;
          goto LABEL_187;
        case 19:
          v33 = 28;
          goto LABEL_187;
        case 20:
          v33 = 29;
          goto LABEL_187;
        case 21:
          v33 = 10;
          goto LABEL_187;
        case 22:
          v33 = 26;
          goto LABEL_187;
        case 23:
          v33 = 16;
          goto LABEL_187;
        case 24:
          v33 = 11;
          goto LABEL_187;
        case 25:
          v33 = 13;
          goto LABEL_187;
        case 27:
          v33 = 9;
          goto LABEL_187;
        case 29:
          v33 = 5;
          goto LABEL_187;
        case 30:
          v33 = 7;
          goto LABEL_187;
        case 31:
          v33 = 32;
          goto LABEL_187;
        case 32:
          v33 = 31;
          goto LABEL_187;
        case 33:
          v33 = 30;
          goto LABEL_187;
        case 35:
          v33 = 20;
          goto LABEL_187;
        default:
LABEL_187:
          *(a1 + 560 + 4 * v33) = v40;
LABEL_188:
          CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::~MeasurementTypeCount(&v39);
          if (++v32 >= *(a2 + 224))
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  if (*(a2 + 248) >= 1)
  {
    v34 = 0;
    while (2)
    {
      CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MeasurementTypeCount(&v39, *(*(a2 + 240) + 8 * v34));
      v35 = 0;
      switch(v41)
      {
        case 0:
        case 26:
        case 34:
          v46 = 12;
          v45 = 4;
          cnprint::CNPrinter::Print(&v46, &v45, "Invalid measurement type specified: 'MeasurementTypeCount_MeasurementType_MT_Unknown'");
          v46 = 12;
          v45 = 4;
          cnprint::CNPrinter::Print(&v46, &v45, "Invalid measurement type specified, %d", 33);
          goto LABEL_226;
        case 1:
          v35 = 1;
          goto LABEL_225;
        case 2:
          v35 = 2;
          goto LABEL_225;
        case 3:
          v35 = 3;
          goto LABEL_225;
        case 4:
          v35 = 4;
          goto LABEL_225;
        case 5:
          v35 = 6;
          goto LABEL_225;
        case 6:
          v35 = 8;
          goto LABEL_225;
        case 7:
          v35 = 12;
          goto LABEL_225;
        case 8:
          v35 = 27;
          goto LABEL_225;
        case 9:
          v35 = 14;
          goto LABEL_225;
        case 10:
          v35 = 18;
          goto LABEL_225;
        case 11:
          v35 = 17;
          goto LABEL_225;
        case 12:
          v35 = 15;
          goto LABEL_225;
        case 13:
          v35 = 19;
          goto LABEL_225;
        case 14:
          v35 = 21;
          goto LABEL_225;
        case 15:
          v35 = 22;
          goto LABEL_225;
        case 16:
          v35 = 23;
          goto LABEL_225;
        case 17:
          v35 = 24;
          goto LABEL_225;
        case 18:
          v35 = 25;
          goto LABEL_225;
        case 19:
          v35 = 28;
          goto LABEL_225;
        case 20:
          v35 = 29;
          goto LABEL_225;
        case 21:
          v35 = 10;
          goto LABEL_225;
        case 22:
          v35 = 26;
          goto LABEL_225;
        case 23:
          v35 = 16;
          goto LABEL_225;
        case 24:
          v35 = 11;
          goto LABEL_225;
        case 25:
          v35 = 13;
          goto LABEL_225;
        case 27:
          v35 = 9;
          goto LABEL_225;
        case 29:
          v35 = 5;
          goto LABEL_225;
        case 30:
          v35 = 7;
          goto LABEL_225;
        case 31:
          v35 = 32;
          goto LABEL_225;
        case 32:
          v35 = 31;
          goto LABEL_225;
        case 33:
          v35 = 30;
          goto LABEL_225;
        case 35:
          v35 = 20;
          goto LABEL_225;
        default:
LABEL_225:
          *(a1 + 692 + 4 * v35) = v40;
LABEL_226:
          CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::~MeasurementTypeCount(&v39);
          if (++v34 >= *(a2 + 248))
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  if (*(a2 + 272) >= 1)
  {
    v36 = 0;
    v37 = a1 + 824;
    while (2)
    {
      CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MeasurementTypeCount(&v39, *(*(a2 + 264) + 8 * v36));
      v38 = 0;
      switch(v41)
      {
        case 0:
        case 26:
        case 34:
          v46 = 12;
          v45 = 4;
          cnprint::CNPrinter::Print(&v46, &v45, "Invalid measurement type specified: 'MeasurementTypeCount_MeasurementType_MT_Unknown'");
          v46 = 12;
          v45 = 4;
          cnprint::CNPrinter::Print(&v46, &v45, "Invalid measurement type specified, %d", 33);
          goto LABEL_264;
        case 1:
          v38 = 1;
          goto LABEL_263;
        case 2:
          v38 = 2;
          goto LABEL_263;
        case 3:
          v38 = 3;
          goto LABEL_263;
        case 4:
          v38 = 4;
          goto LABEL_263;
        case 5:
          v38 = 6;
          goto LABEL_263;
        case 6:
          v38 = 8;
          goto LABEL_263;
        case 7:
          v38 = 12;
          goto LABEL_263;
        case 8:
          v38 = 27;
          goto LABEL_263;
        case 9:
          v38 = 14;
          goto LABEL_263;
        case 10:
          v38 = 18;
          goto LABEL_263;
        case 11:
          v38 = 17;
          goto LABEL_263;
        case 12:
          v38 = 15;
          goto LABEL_263;
        case 13:
          v38 = 19;
          goto LABEL_263;
        case 14:
          v38 = 21;
          goto LABEL_263;
        case 15:
          v38 = 22;
          goto LABEL_263;
        case 16:
          v38 = 23;
          goto LABEL_263;
        case 17:
          v38 = 24;
          goto LABEL_263;
        case 18:
          v38 = 25;
          goto LABEL_263;
        case 19:
          v38 = 28;
          goto LABEL_263;
        case 20:
          v38 = 29;
          goto LABEL_263;
        case 21:
          v38 = 10;
          goto LABEL_263;
        case 22:
          v38 = 26;
          goto LABEL_263;
        case 23:
          v38 = 16;
          goto LABEL_263;
        case 24:
          v38 = 11;
          goto LABEL_263;
        case 25:
          v38 = 13;
          goto LABEL_263;
        case 27:
          v38 = 9;
          goto LABEL_263;
        case 29:
          v38 = 5;
          goto LABEL_263;
        case 30:
          v38 = 7;
          goto LABEL_263;
        case 31:
          v38 = 32;
          goto LABEL_263;
        case 32:
          v38 = 31;
          goto LABEL_263;
        case 33:
          v38 = 30;
          goto LABEL_263;
        case 35:
          v38 = 20;
          goto LABEL_263;
        default:
LABEL_263:
          *(v37 + 4 * v38) = v40;
LABEL_264:
          CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::~MeasurementTypeCount(&v39);
          if (++v36 >= *(a2 + 272))
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::~TimeStamp(&v42);
}

void sub_1D0C2381C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::~TimeStamp(va);
  _Unwind_Resume(a1);
}

CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount *CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MeasurementTypeCount(CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount *this, const CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount *a2)
{
  *this = &unk_1F4CD6900;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MergeFrom(CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount *this, const CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (!v4)
  {
    return;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v7 = *(a2 + 2);
    *(this + 10) |= 2u;
    *(this + 2) = v7;
    v4 = *(a2 + 10);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_8;
    }

    goto LABEL_12;
  }

  v6 = *(a2 + 1);
  *(this + 10) |= 1u;
  *(this + 1) = v6;
  v4 = *(a2 + 10);
  if ((v4 & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_12:
  v8 = *(a2 + 8);
  if (v8 >= 0x24)
  {
    __assert_rtn("set_type", "CoreNavigationCLPRavenOutput.pb.h", 4707, "::CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount_MeasurementType_IsValid(value)");
  }

  *(this + 10) |= 4u;
  *(this + 8) = v8;
  if ((*(a2 + 10) & 8) != 0)
  {
LABEL_8:
    v5 = *(a2 + 3);
    *(this + 10) |= 8u;
    *(this + 3) = v5;
  }
}

void sub_1D0C23D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void raven::ConvertProtobufToRavenSolution(uint64_t a1, uint64_t a2, double a3, int8x16_t a4)
{
  v31 = &unk_1F4CD9528;
  v6 = 0uLL;
  v32 = 0u;
  v33 = 0u;
  if (*(a2 + 92))
  {
    v7 = *(a2 + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 8);
    }

    if ((*(v7 + 52) & 2) != 0)
    {
      v8 = *(a2 + 8);
      if (!v8)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v8 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 8);
      }

      v9 = *(v8 + 16);
      if (!v9)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v9 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 16);
      }

      v10 = *(v9 + 8);
      v11 = *(a2 + 8);
      if (!v11)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v11 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 8);
      }

      v12 = *(v11 + 16);
      if (!v12)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v12 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 16);
      }

      a4.i64[0] = *(v12 + 16);
      *v6.i64 = *a4.i64 + v10;
      HIDWORD(v33) |= 1u;
      *&v32 = *v6.i64;
    }
  }

  if (*(a2 + 92))
  {
    v13 = *(a2 + 8);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
      v13 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 8);
    }

    if (*(v13 + 52))
    {
      v14 = *(a2 + 8);
      if (!v14)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v14 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 8);
      }

      v15 = *(v14 + 8);
      if (!v15)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v15 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 8);
      }

      v16 = *(v15 + 8);
      v17 = *(a2 + 8);
      if (!v17)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v17 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 8);
      }

      v18 = *(v17 + 8);
      if (!v18)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v18 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 8);
      }

      a4.i64[0] = *(v18 + 16);
      *v6.i64 = *a4.i64 + v16;
      HIDWORD(v33) |= 4u;
      *&v33 = *v6.i64;
    }
  }

  v19 = raven::ConvertProtobufToRavenTime(&v31, a1, 1, v6, a4);
  v20 = *(a2 + 92);
  if ((v20 & 2) != 0)
  {
    v21 = *(a2 + 16);
    if (!v21)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(v19);
      v21 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 16);
      v20 = *(a2 + 92);
    }

    *(a1 + 104) = *(v21 + 16);
    *(a1 + 120) = *(v21 + 32);
    *(a1 + 136) = *(v21 + 48);
    *(a1 + 152) = *(v21 + 64);
    *(a1 + 168) = *(v21 + 80);
    *(a1 + 96) = 1;
  }

  if ((v20 & 4) != 0)
  {
    v22 = *(a2 + 24);
    if (!v22)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(v19);
      v22 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 24);
      v20 = *(a2 + 92);
    }

    *(a1 + 216) = *(v22 + 48);
    *(a1 + 176) = 257;
    *(a1 + 184) = *(v22 + 16);
    *(a1 + 200) = *(v22 + 32);
    *(a1 + 248) = *(v22 + 80);
    *(a1 + 264) = *(v22 + 96);
    *(a1 + 280) = *(v22 + 112);
    *(a1 + 224) = *(v22 + 56);
    *(a1 + 240) = *(v22 + 72);
  }

  if ((v20 & 8) != 0)
  {
    v23 = *(a2 + 32);
    if (!v23)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(v19);
      v23 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 32);
      v20 = *(a2 + 92);
    }

    *(a1 + 304) = *(v23 + 16);
    *(a1 + 320) = *(v23 + 32);
    *(a1 + 336) = *(v23 + 48);
    *(a1 + 352) = *(v23 + 64);
    *(a1 + 368) = *(v23 + 80);
    *(a1 + 296) = 1;
  }

  if ((v20 & 0x10) != 0)
  {
    v24 = *(a2 + 40);
    if (!v24)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(v19);
      v24 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 40);
      v20 = *(a2 + 92);
    }

    *(a1 + 384) = *(v24 + 16);
    *(a1 + 400) = *(v24 + 32);
    *(a1 + 416) = *(v24 + 48);
    *(a1 + 432) = *(v24 + 64);
    *(a1 + 448) = *(v24 + 80);
    *(a1 + 376) = 1;
  }

  if ((v20 & 0x20) != 0)
  {
    v25 = *(a2 + 48);
    if (!v25)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(v19);
      v25 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 48);
      v20 = *(a2 + 92);
    }

    *(a1 + 464) = *(v25 + 16);
    *(a1 + 480) = *(v25 + 32);
    *(a1 + 496) = *(v25 + 48);
    *(a1 + 512) = *(v25 + 64);
    *(a1 + 528) = *(v25 + 80);
    v26 = *(v25 + 120);
    *(a1 + 544) = v26;
    *(a1 + 552) = *(v25 + 104);
    *(a1 + 568) = v26;
    *(a1 + 456) = 1;
  }

  if ((v20 & 0x40) != 0)
  {
    v27 = *(a2 + 56);
    if (!v27)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(v19);
      v27 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 56);
      v20 = *(a2 + 92);
    }

    *(a1 + 584) = *(v27 + 16);
    *(a1 + 600) = *(v27 + 32);
    *(a1 + 616) = *(v27 + 48);
    *(a1 + 632) = *(v27 + 64);
    *(a1 + 648) = *(v27 + 80);
    *(a1 + 576) = 1;
  }

  if ((v20 & 0x80) != 0)
  {
    v28 = *(a2 + 64);
    if (!v28)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(v19);
      v28 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 64);
      v20 = *(a2 + 92);
    }

    *(a1 + 664) = *(v28 + 16);
    *(a1 + 680) = *(v28 + 32);
    *(a1 + 696) = *(v28 + 48);
    *(a1 + 712) = *(v28 + 64);
    *(a1 + 728) = *(v28 + 80);
    *(a1 + 656) = 1;
  }

  if ((v20 & 0x100) != 0)
  {
    v29 = *(a2 + 72);
    if (!v29)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(v19);
      v29 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 72);
      v20 = *(a2 + 92);
    }

    *(a1 + 744) = *(v29 + 16);
    *(a1 + 760) = *(v29 + 32);
    *(a1 + 776) = *(v29 + 48);
    *(a1 + 792) = *(v29 + 64);
    *(a1 + 808) = *(v29 + 80);
    *(a1 + 736) = 1;
  }

  if ((v20 & 0x200) != 0)
  {
    v30 = *(a2 + 80);
    if (!v30)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(v19);
      v30 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 80);
    }

    *(a1 + 824) = *(v30 + 16);
    *(a1 + 840) = *(v30 + 32);
    *(a1 + 856) = *(v30 + 48);
    *(a1 + 816) = 1;
  }

  CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::~TimeStamp(&v31);
}

void sub_1D0C24270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::~TimeStamp(va);
  _Unwind_Resume(a1);
}

void raven::ConvertProtobufToRavenActivity(uint64_t a1, uint64_t a2, double a3, int8x16_t a4)
{
  v29 = &unk_1F4CD9528;
  v6 = 0uLL;
  v30 = 0u;
  v31 = 0u;
  if (*(a2 + 228))
  {
    v7 = *(a2 + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::default_instance_ + 8);
    }

    if ((*(v7 + 52) & 2) != 0)
    {
      v8 = *(a2 + 8);
      if (!v8)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v8 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::default_instance_ + 8);
      }

      v9 = *(v8 + 16);
      if (!v9)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v9 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 16);
      }

      v10 = *(v9 + 8);
      v11 = *(a2 + 8);
      if (!v11)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v11 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::default_instance_ + 8);
      }

      v12 = *(v11 + 16);
      if (!v12)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v12 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 16);
      }

      a4.i64[0] = *(v12 + 16);
      *v6.i64 = *a4.i64 + v10;
      HIDWORD(v31) |= 1u;
      *&v30 = *v6.i64;
    }
  }

  if (*(a2 + 228))
  {
    v13 = *(a2 + 8);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
      v13 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::default_instance_ + 8);
    }

    if (*(v13 + 52))
    {
      v14 = *(a2 + 8);
      if (!v14)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v14 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::default_instance_ + 8);
      }

      v15 = *(v14 + 8);
      if (!v15)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v15 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 8);
      }

      v16 = *(v15 + 8);
      v17 = *(a2 + 8);
      if (!v17)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v17 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::default_instance_ + 8);
      }

      v18 = *(v17 + 8);
      if (!v18)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v18 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 8);
      }

      a4.i64[0] = *(v18 + 16);
      *v6.i64 = *a4.i64 + v16;
      HIDWORD(v31) |= 4u;
      *&v31 = *v6.i64;
    }
  }

  raven::ConvertProtobufToRavenTime(&v29, a1, 1, v6, a4);
  v19 = *(a2 + 228);
  if ((v19 & 2) != 0)
  {
    v20 = *(a2 + 24);
    if ((v20 - 1) >= 9)
    {
      LOBYTE(v20) = 0;
    }

    *(a1 + 96) = v20;
    *(a1 + 104) = *(a2 + 56);
    *(a1 + 120) = *(a2 + 72);
    *(a1 + 136) = *(a2 + 88);
    *(a1 + 152) = *(a2 + 104);
    *(a1 + 168) = *(a2 + 120);
  }

  if ((v19 & 8) != 0)
  {
    v23 = *(a2 + 28);
    if (v23 >= 4)
    {
      LOBYTE(v23) = 0;
    }

    *(a1 + 512) = v23;
    *(a1 + 520) = *(a2 + 144);
    *(a1 + 536) = *(a2 + 160);
    if ((v19 & 0x80) == 0)
    {
LABEL_33:
      if ((v19 & 0x40) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_47;
    }
  }

  else if ((v19 & 0x80) == 0)
  {
    goto LABEL_33;
  }

  v24 = *(a2 + 52);
  if (v24 >= 4)
  {
    LOBYTE(v24) = 0;
  }

  *(a1 + 552) = v24;
  *(a1 + 560) = *(a2 + 176);
  *(a1 + 576) = *(a2 + 192);
  if ((v19 & 0x40) == 0)
  {
LABEL_34:
    if ((v19 & 0x100) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_51;
  }

LABEL_47:
  v25 = *(a2 + 48) - 1;
  if (v25 > 8)
  {
    v26 = 0;
  }

  else
  {
    v26 = byte_1D0E9C95B[v25];
  }

  *(a1 + 184) = v26;
  if ((v19 & 0x100) == 0)
  {
LABEL_35:
    if ((v19 & 0x20000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

LABEL_51:
  v27 = *(a2 + 136);
  if (v27 == 2)
  {
    v28 = 2;
  }

  else
  {
    v28 = v27 == 1;
  }

  *(a1 + 592) = v28;
  *(a1 + 600) = *(a2 + 208);
  if ((v19 & 0x20000000) != 0)
  {
LABEL_36:
    v21 = *(a2 + 140);
    if (v21 >= 8)
    {
      v22 = 0;
    }

    else
    {
      v22 = 0x605040302010000uLL >> (8 * v21);
    }

    *(a1 + 616) = v22;
  }

LABEL_40:
  CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::~TimeStamp(&v29);
}

void sub_1D0C245B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::~TimeStamp(va);
  _Unwind_Resume(a1);
}

void cnnavigation::ECEFToENUJacobian::~ECEFToENUJacobian(cnnavigation::ECEFToENUJacobian *this)
{
  *this = &unk_1F4CD5D18;
  *(this + 2) = &unk_1F4CD5E28;
}

{
  *this = &unk_1F4CD5D18;
  *(this + 2) = &unk_1F4CD5E28;
}

{
  *this = &unk_1F4CD5D18;
  *(this + 2) = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void raven::ConvertRavenSolutionEventToSerializedProtobufLogEntry(uint64_t a1, uint64_t a2)
{
  CoreNavigation::CLP::LogEntry::LogEntry::LogEntry(v10);
  v13 |= 1u;
  v4 = v11;
  if (!v11)
  {
    operator new();
  }

  v5 = *(v11 + 44);
  *(v11 + 8) = *(a1 + 40) + *(a1 + 32);
  v6 = *(a1 + 16) + *(a1 + 8);
  *(v4 + 44) = v5 | 5;
  *(v4 + 24) = v6;
  v13 |= 2u;
  v7 = v12;
  if (!v12)
  {
    operator new();
  }

  *(v12 + 320) |= 2u;
  v8 = *(v7 + 272);
  if (!v8)
  {
    operator new();
  }

  v9 = *(v8 + 8);
  *(v8 + 28) |= 1u;
  if (!v9)
  {
    operator new();
  }

  raven::ConvertRavenSolutionEventToProtobuf(a1, v9, v3);
  wireless_diagnostics::google::protobuf::MessageLite::SerializeToString();
  CoreNavigation::CLP::LogEntry::LogEntry::~LogEntry(v10);
}

void sub_1D0C24880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CoreNavigation::CLP::LogEntry::LogEntry::~LogEntry(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 4)
        {
          break;
        }

        if (TagFallback >> 3 > 2)
        {
          if (v7 == 3)
          {
            if (v8 != 2)
            {
              goto LABEL_39;
            }

LABEL_66:
            v27 = *(this + 9);
            v28 = *(this + 8);
            if (v28 >= v27)
            {
              if (v27 == *(this + 10))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
                v27 = *(this + 9);
              }

              *(this + 9) = v27 + 1;
              operator new();
            }

            v29 = *(this + 3);
            *(this + 8) = v28 + 1;
            v30 = *(v29 + 8 * v28);
            v79[0] = 0;
            v31 = *(a2 + 1);
            if (v31 >= *(a2 + 2) || *v31 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v79))
              {
                return 0;
              }
            }

            else
            {
              v79[0] = *v31;
              *(a2 + 1) = v31 + 1;
            }

            v32 = *(a2 + 14);
            v33 = *(a2 + 15);
            *(a2 + 14) = v32 + 1;
            if (v32 >= v33)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::MergePartialFromCodedStream(v30, a2, v34) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v35 = *(a2 + 14);
            v16 = __OFSUB__(v35, 1);
            v36 = v35 - 1;
            if (v36 < 0 == v16)
            {
              *(a2 + 14) = v36;
            }

            v26 = *(a2 + 1);
            if (v26 < *(a2 + 2))
            {
              v37 = *v26;
              if (v37 == 26)
              {
                goto LABEL_65;
              }

              if (v37 == 34)
              {
                goto LABEL_83;
              }
            }
          }

          else
          {
            if (v7 != 4 || v8 != 2)
            {
              goto LABEL_39;
            }

            while (2)
            {
              v38 = *(this + 15);
              v39 = *(this + 14);
              if (v39 >= v38)
              {
                if (v38 == *(this + 16))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48));
                  v38 = *(this + 15);
                }

                *(this + 15) = v38 + 1;
                operator new();
              }

              v40 = *(this + 6);
              *(this + 14) = v39 + 1;
              v41 = *(v40 + 8 * v39);
              v79[0] = 0;
              v42 = *(a2 + 1);
              if (v42 >= *(a2 + 2) || *v42 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v79))
                {
                  return 0;
                }
              }

              else
              {
                v79[0] = *v42;
                *(a2 + 1) = v42 + 1;
              }

              v43 = *(a2 + 14);
              v44 = *(a2 + 15);
              *(a2 + 14) = v43 + 1;
              if (v43 >= v44)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections::MergePartialFromCodedStream(v41, a2, v45) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v46 = *(a2 + 14);
              v16 = __OFSUB__(v46, 1);
              v47 = v46 - 1;
              if (v47 < 0 == v16)
              {
                *(a2 + 14) = v47;
              }

              v26 = *(a2 + 1);
              if (v26 < *(a2 + 2))
              {
                v48 = *v26;
                if (v48 == 34)
                {
LABEL_83:
                  *(a2 + 1) = v26 + 1;
                  continue;
                }

                if (v48 == 42)
                {
                  *(a2 + 1) = v26 + 1;
LABEL_102:
                  *(this + 33) |= 0x10u;
                  v49 = *(this + 9);
                  if (!v49)
                  {
                    operator new();
                  }

                  v79[0] = 0;
                  v50 = *(a2 + 1);
                  if (v50 >= *(a2 + 2) || *v50 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v79))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v79[0] = *v50;
                    *(a2 + 1) = v50 + 1;
                  }

                  v51 = *(a2 + 14);
                  v52 = *(a2 + 15);
                  *(a2 + 14) = v51 + 1;
                  if (v51 >= v52)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                  if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::MergePartialFromCodedStream(v49, a2, v53) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                  v54 = *(a2 + 14);
                  v16 = __OFSUB__(v54, 1);
                  v55 = v54 - 1;
                  if (v55 < 0 == v16)
                  {
                    *(a2 + 14) = v55;
                  }

                  v56 = *(a2 + 1);
                  if (v56 < *(a2 + 2) && *v56 == 49)
                  {
                    *(a2 + 1) = v56 + 1;
LABEL_116:
                    *v79 = 0;
                    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v79) & 1) == 0)
                    {
                      return 0;
                    }

                    *(this + 10) = *v79;
                    *(this + 33) |= 0x20u;
                    v57 = *(a2 + 1);
                    if (v57 < *(a2 + 2) && *v57 == 57)
                    {
                      *(a2 + 1) = v57 + 1;
LABEL_120:
                      *v79 = 0;
                      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v79) & 1) == 0)
                      {
                        return 0;
                      }

                      *(this + 11) = *v79;
                      v11 = *(this + 33) | 0x40;
                      *(this + 33) = v11;
                      v58 = *(a2 + 1);
                      if (v58 < *(a2 + 2) && *v58 == 66)
                      {
                        *(a2 + 1) = v58 + 1;
                        goto LABEL_124;
                      }
                    }
                  }
                }
              }

              break;
            }
          }
        }

        else
        {
          if (v7 != 1)
          {
            if (v7 != 2 || v8 != 2)
            {
              goto LABEL_39;
            }

            goto LABEL_52;
          }

          if (v8 != 2)
          {
            goto LABEL_39;
          }

          *(this + 33) |= 1u;
          v9 = *(this + 1);
          if (!v9)
          {
            operator new();
          }

          v79[0] = 0;
          v10 = *(a2 + 1);
          if (v10 >= *(a2 + 2) || *v10 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v79))
            {
              return 0;
            }
          }

          else
          {
            v79[0] = *v10;
            *(a2 + 1) = v10 + 1;
          }

          v12 = *(a2 + 14);
          v13 = *(a2 + 15);
          *(a2 + 14) = v12 + 1;
          if (v12 >= v13)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp::MergePartialFromCodedStream(v9, a2, v14) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v15 = *(a2 + 14);
          v16 = __OFSUB__(v15, 1);
          v17 = v15 - 1;
          if (v17 < 0 == v16)
          {
            *(a2 + 14) = v17;
          }

          v18 = *(a2 + 1);
          if (v18 < *(a2 + 2) && *v18 == 18)
          {
            *(a2 + 1) = v18 + 1;
LABEL_52:
            *(this + 33) |= 2u;
            v19 = *(this + 2);
            if (!v19)
            {
              operator new();
            }

            v79[0] = 0;
            v20 = *(a2 + 1);
            if (v20 >= *(a2 + 2) || *v20 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v79))
              {
                return 0;
              }
            }

            else
            {
              v79[0] = *v20;
              *(a2 + 1) = v20 + 1;
            }

            v21 = *(a2 + 14);
            v22 = *(a2 + 15);
            *(a2 + 14) = v21 + 1;
            if (v21 >= v22)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::MergePartialFromCodedStream(v19, a2, v23) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v24 = *(a2 + 14);
            v16 = __OFSUB__(v24, 1);
            v25 = v24 - 1;
            if (v25 < 0 == v16)
            {
              *(a2 + 14) = v25;
            }

            v26 = *(a2 + 1);
            if (v26 < *(a2 + 2) && *v26 == 26)
            {
LABEL_65:
              *(a2 + 1) = v26 + 1;
              goto LABEL_66;
            }
          }
        }
      }

      if (TagFallback >> 3 <= 6)
      {
        break;
      }

      if (v7 == 7)
      {
        if (v8 != 1)
        {
          goto LABEL_39;
        }

        goto LABEL_120;
      }

      if (v7 == 8)
      {
        if (v8 != 2)
        {
          goto LABEL_39;
        }

        v11 = *(this + 33);
LABEL_124:
        *(this + 33) = v11 | 0x80;
        v59 = *(this + 12);
        if (!v59)
        {
          operator new();
        }

        v79[0] = 0;
        v60 = *(a2 + 1);
        if (v60 >= *(a2 + 2) || *v60 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v79))
          {
            return 0;
          }
        }

        else
        {
          v79[0] = *v60;
          *(a2 + 1) = v60 + 1;
        }

        v61 = *(a2 + 14);
        v62 = *(a2 + 15);
        *(a2 + 14) = v61 + 1;
        if (v61 >= v62)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters::MergePartialFromCodedStream(v59, a2, v63) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v64 = *(a2 + 14);
        v16 = __OFSUB__(v64, 1);
        v65 = v64 - 1;
        if (v65 < 0 == v16)
        {
          *(a2 + 14) = v65;
        }

        v66 = *(a2 + 1);
        if (v66 < *(a2 + 2) && *v66 == 74)
        {
          goto LABEL_137;
        }
      }

      else
      {
        if (v7 != 9 || v8 != 2)
        {
          goto LABEL_39;
        }

        while (1)
        {
          v67 = *(this + 29);
          v68 = *(this + 28);
          if (v68 >= v67)
          {
            if (v67 == *(this + 30))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 104));
              v67 = *(this + 29);
            }

            *(this + 29) = v67 + 1;
            operator new();
          }

          v69 = *(this + 13);
          *(this + 28) = v68 + 1;
          v70 = *(v69 + 8 * v68);
          v79[0] = 0;
          v71 = *(a2 + 1);
          if (v71 >= *(a2 + 2) || *v71 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v79))
            {
              return 0;
            }
          }

          else
          {
            v79[0] = *v71;
            *(a2 + 1) = v71 + 1;
          }

          v72 = *(a2 + 14);
          v73 = *(a2 + 15);
          *(a2 + 14) = v72 + 1;
          if (v72 >= v73)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::MergePartialFromCodedStream(v70, a2, v74) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v75 = *(a2 + 14);
          v16 = __OFSUB__(v75, 1);
          v76 = v75 - 1;
          if (v76 < 0 == v16)
          {
            *(a2 + 14) = v76;
          }

          v66 = *(a2 + 1);
          v77 = *(a2 + 2);
          if (v66 >= v77 || *v66 != 74)
          {
            break;
          }

LABEL_137:
          *(a2 + 1) = v66 + 1;
        }

        if (v66 == v77 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5)
    {
      if (v8 != 2)
      {
        goto LABEL_39;
      }

      goto LABEL_102;
    }

    if (v7 == 6 && v8 == 1)
    {
      goto LABEL_116;
    }

LABEL_39:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v8 != 1)
        {
          goto LABEL_20;
        }

LABEL_23:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v12;
        *(this + 9) |= 4u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 1)
      {
        goto LABEL_20;
      }

      v12 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v12;
      *(this + 9) |= 1u;
      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 17)
      {
        *(a2 + 1) = v9 + 1;
LABEL_15:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v12;
        *(this + 9) |= 2u;
        v10 = *(a2 + 1);
        if (v10 < *(a2 + 2) && *v10 == 25)
        {
          *(a2 + 1) = v10 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v8 == 1)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v7 != 2)
      {
        goto LABEL_15;
      }

      *(this + 11) |= 1u;
      v8 = *(this + 1);
      if (!v8)
      {
        operator new();
      }

      v29 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29))
        {
          return 0;
        }
      }

      else
      {
        v29 = *v9;
        *(a2 + 1) = v9 + 1;
      }

      v10 = *(a2 + 14);
      v11 = *(a2 + 15);
      *(a2 + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::Clock::MergePartialFromCodedStream(v8, a2, v12) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v13 = *(a2 + 14);
      v14 = __OFSUB__(v13, 1);
      v15 = v13 - 1;
      if (v15 < 0 == v14)
      {
        *(a2 + 14) = v15;
      }

      v16 = *(a2 + 1);
      if (v16 < *(a2 + 2) && *v16 == 18)
      {
        do
        {
          *(a2 + 1) = v16 + 1;
LABEL_27:
          v17 = *(this + 7);
          v18 = *(this + 6);
          if (v18 >= v17)
          {
            if (v17 == *(this + 8))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
              v17 = *(this + 7);
            }

            *(this + 7) = v17 + 1;
            operator new();
          }

          v19 = *(this + 2);
          *(this + 6) = v18 + 1;
          v20 = *(v19 + 8 * v18);
          v30 = 0;
          v21 = *(a2 + 1);
          if (v21 >= *(a2 + 2) || *v21 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
            {
              return 0;
            }
          }

          else
          {
            v30 = *v21;
            *(a2 + 1) = v21 + 1;
          }

          v22 = *(a2 + 14);
          v23 = *(a2 + 15);
          *(a2 + 14) = v22 + 1;
          if (v22 >= v23)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::Measurement::MergePartialFromCodedStream(v20, a2, v24) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v25 = *(a2 + 14);
          v14 = __OFSUB__(v25, 1);
          v26 = v25 - 1;
          if (v26 < 0 == v14)
          {
            *(a2 + 14) = v26;
          }

          v16 = *(a2 + 1);
          v27 = *(a2 + 2);
        }

        while (v16 < v27 && *v16 == 18);
        if (v16 == v27 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 2)
    {
      goto LABEL_27;
    }

LABEL_15:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Clock::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::Clock *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = *(a2 + 1);
          if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 > 2)
          {
            break;
          }

          if (v7 == 1)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_20;
            }

            v11 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v11 >= v10 || (v12 = *v11, v12 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
              if (!result)
              {
                return result;
              }

              v13 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 1) = v12;
              v13 = v11 + 1;
              *(a2 + 1) = v13;
            }

            v9 = *(this + 11) | 1;
            *(this + 11) = v9;
            if (v13 < v10 && *v13 == 18)
            {
              *(a2 + 1) = v13 + 1;
              goto LABEL_28;
            }
          }

          else
          {
            if (v7 != 2 || v8 != 2)
            {
              goto LABEL_20;
            }

            v9 = *(this + 11);
LABEL_28:
            *(this + 11) = v9 | 2;
            v15 = *(this + 2);
            if (!v15)
            {
              operator new();
            }

            v39 = 0;
            v16 = *(a2 + 1);
            if (v16 >= *(a2 + 2) || *v16 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39))
              {
                return 0;
              }
            }

            else
            {
              v39 = *v16;
              *(a2 + 1) = v16 + 1;
            }

            v17 = *(a2 + 14);
            v18 = *(a2 + 15);
            *(a2 + 14) = v17 + 1;
            if (v17 >= v18)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel::MergePartialFromCodedStream(v15, a2, v19) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v20 = *(a2 + 14);
            v21 = __OFSUB__(v20, 1);
            v22 = v20 - 1;
            if (v22 < 0 == v21)
            {
              *(a2 + 14) = v22;
            }

            v23 = *(a2 + 1);
            if (v23 < *(a2 + 2) && *v23 == 26)
            {
              *(a2 + 1) = v23 + 1;
              goto LABEL_42;
            }
          }
        }

        if (v7 != 3)
        {
          break;
        }

        if (v8 != 2)
        {
          goto LABEL_20;
        }

LABEL_42:
        *(this + 11) |= 4u;
        v24 = *(this + 3);
        if (!v24)
        {
          operator new();
        }

        v40 = 0;
        v25 = *(a2 + 1);
        if (v25 >= *(a2 + 2) || *v25 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40))
          {
            return 0;
          }
        }

        else
        {
          v40 = *v25;
          *(a2 + 1) = v25 + 1;
        }

        v26 = *(a2 + 14);
        v27 = *(a2 + 15);
        *(a2 + 14) = v26 + 1;
        if (v26 >= v27)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections::MergePartialFromCodedStream(v24, a2, v28) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v29 = *(a2 + 14);
        v21 = __OFSUB__(v29, 1);
        v30 = v29 - 1;
        if (v30 < 0 == v21)
        {
          *(a2 + 14) = v30;
        }

        v31 = *(a2 + 1);
        if (v31 < *(a2 + 2) && *v31 == 34)
        {
          *(a2 + 1) = v31 + 1;
          goto LABEL_56;
        }
      }

      if (v7 != 4 || v8 != 2)
      {
        break;
      }

LABEL_56:
      *(this + 11) |= 8u;
      v32 = *(this + 4);
      if (!v32)
      {
        operator new();
      }

      v41 = 0;
      v33 = *(a2 + 1);
      if (v33 >= *(a2 + 2) || *v33 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v41))
        {
          return 0;
        }
      }

      else
      {
        v41 = *v33;
        *(a2 + 1) = v33 + 1;
      }

      v34 = *(a2 + 14);
      v35 = *(a2 + 15);
      *(a2 + 14) = v34 + 1;
      if (v34 >= v35)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::MergePartialFromCodedStream(v32, a2, v36) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v37 = *(a2 + 14);
      v21 = __OFSUB__(v37, 1);
      v38 = v37 - 1;
      if (v38 < 0 == v21)
      {
        *(a2 + 14) = v38;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }

LABEL_20:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if (v8 != 1)
          {
            goto LABEL_21;
          }

          goto LABEL_32;
        }

        if (v7 == 4)
        {
          if (v8 != 1)
          {
            goto LABEL_21;
          }

LABEL_36:
          v14 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v14) & 1) == 0)
          {
            return 0;
          }

          *(this + 4) = v14;
          *(this + 13) |= 8u;
          v12 = *(a2 + 1);
          if (v12 < *(a2 + 2) && *v12 == 41)
          {
            *(a2 + 1) = v12 + 1;
            goto LABEL_40;
          }
        }

        else
        {
          if (v7 != 5 || v8 != 1)
          {
            goto LABEL_21;
          }

LABEL_40:
          v14 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v14) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v14;
          *(this + 13) |= 0x10u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_21;
      }

      v14 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v14) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v14;
      *(this + 13) |= 1u;
      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 17)
      {
        *(a2 + 1) = v9 + 1;
LABEL_28:
        v14 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v14) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v14;
        *(this + 13) |= 2u;
        v10 = *(a2 + 1);
        if (v10 < *(a2 + 2) && *v10 == 25)
        {
          *(a2 + 1) = v10 + 1;
LABEL_32:
          v14 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v14) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = v14;
          *(this + 13) |= 4u;
          v11 = *(a2 + 1);
          if (v11 < *(a2 + 2) && *v11 == 33)
          {
            *(a2 + 1) = v11 + 1;
            goto LABEL_36;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_28;
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if (v8 != 5)
          {
            goto LABEL_21;
          }

          goto LABEL_36;
        }

        if (v7 == 4)
        {
          if (v8 != 1)
          {
            goto LABEL_21;
          }

LABEL_40:
          *v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v17) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = *v17;
          *(this + 10) |= 8u;
          v16 = *(a2 + 1);
          if (v16 < *(a2 + 2) && *v16 == 45)
          {
            *(a2 + 1) = v16 + 1;
            goto LABEL_44;
          }
        }

        else
        {
          if (v7 != 5 || v8 != 5)
          {
            goto LABEL_21;
          }

LABEL_44:
          v17[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v17) & 1) == 0)
          {
            return 0;
          }

          *(this + 8) = v17[0];
          *(this + 10) |= 0x10u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      *v17 = 0;
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v10 >= v9 || (v11 = *v10, v11 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v17);
        if (!result)
        {
          return result;
        }

        v11 = *v17;
        v12 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        v12 = v10 + 1;
        *(a2 + 1) = v12;
      }

      *(this + 1) = v11;
      *(this + 10) |= 1u;
      if (v12 < v9 && *v12 == 21)
      {
        *(a2 + 1) = v12 + 1;
LABEL_32:
        v17[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v17) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = v17[0];
        *(this + 10) |= 2u;
        v14 = *(a2 + 1);
        if (v14 < *(a2 + 2) && *v14 == 29)
        {
          *(a2 + 1) = v14 + 1;
LABEL_36:
          v17[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v17) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v17[0];
          *(this + 10) |= 4u;
          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 33)
          {
            *(a2 + 1) = v15 + 1;
            goto LABEL_40;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 5)
    {
      goto LABEL_32;
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Measurement::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::Measurement *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    v5 = *(a2 + 1);
    if (v5 < *(a2 + 2))
    {
      TagFallback = *v5;
      if ((TagFallback & 0x80000000) == 0)
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }

        goto LABEL_6;
      }
    }

    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
    *(a2 + 8) = TagFallback;
    if (!TagFallback)
    {
      return 1;
    }

LABEL_6:
    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

        *(this + 28) |= 1u;
        v8 = *(this + 1);
        if (!v8)
        {
          operator new();
        }

        v94 = 0;
        v9 = *(a2 + 1);
        if (v9 >= *(a2 + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v94))
          {
            return 0;
          }
        }

        else
        {
          v94 = *v9;
          *(a2 + 1) = v9 + 1;
        }

        v20 = *(a2 + 14);
        v21 = *(a2 + 15);
        *(a2 + 14) = v20 + 1;
        if (v20 >= v21)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::SvId::MergePartialFromCodedStream(v8, a2, v22) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v23 = *(a2 + 14);
        v24 = __OFSUB__(v23, 1);
        v25 = v23 - 1;
        if (v25 < 0 == v24)
        {
          *(a2 + 14) = v25;
        }

        v26 = *(a2 + 1);
        if (v26 >= *(a2 + 2) || *v26 != 18)
        {
          continue;
        }

        *(a2 + 1) = v26 + 1;
        goto LABEL_50;
      case 2u:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

LABEL_50:
        *(this + 28) |= 2u;
        v27 = *(this + 2);
        if (!v27)
        {
          operator new();
        }

        v94 = 0;
        v28 = *(a2 + 1);
        if (v28 >= *(a2 + 2) || *v28 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v94))
          {
            return 0;
          }
        }

        else
        {
          v94 = *v28;
          *(a2 + 1) = v28 + 1;
        }

        v29 = *(a2 + 14);
        v30 = *(a2 + 15);
        *(a2 + 14) = v29 + 1;
        if (v29 >= v30)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::SyncState::MergePartialFromCodedStream(v27, a2, v31) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v32 = *(a2 + 14);
        v24 = __OFSUB__(v32, 1);
        v33 = v32 - 1;
        if (v33 < 0 == v24)
        {
          *(a2 + 14) = v33;
        }

        v34 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v34 >= v10 || *v34 != 24)
        {
          continue;
        }

        v14 = v34 + 1;
        *(a2 + 1) = v14;
LABEL_64:
        if (v14 >= v10 || (v35 = *v14, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v36 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v35;
          v36 = v14 + 1;
          *(a2 + 1) = v36;
        }

        *(this + 28) |= 4u;
        if (v36 >= v10 || *v36 != 32)
        {
          continue;
        }

        v15 = v36 + 1;
        *(a2 + 1) = v15;
LABEL_72:
        if (v15 >= v10 || (v38 = *v15, v38 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v39 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v38;
          v39 = v15 + 1;
          *(a2 + 1) = v39;
        }

        *(this + 28) |= 8u;
        if (v39 >= v10 || *v39 != 40)
        {
          continue;
        }

        v11 = v39 + 1;
        *(a2 + 1) = v11;
LABEL_80:
        if (v11 >= v10 || (v40 = *v11, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v41 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v40;
          v41 = v11 + 1;
          *(a2 + 1) = v41;
        }

        v16 = *(this + 28) | 0x10;
        *(this + 28) = v16;
        if (v41 >= v10 || *v41 != 50)
        {
          continue;
        }

        *(a2 + 1) = v41 + 1;
LABEL_88:
        *(this + 28) = v16 | 0x20;
        v42 = *(this + 6);
        if (!v42)
        {
          operator new();
        }

        v94 = 0;
        v43 = *(a2 + 1);
        if (v43 >= *(a2 + 2) || *v43 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v94))
          {
            return 0;
          }
        }

        else
        {
          v94 = *v43;
          *(a2 + 1) = v43 + 1;
        }

        v44 = *(a2 + 14);
        v45 = *(a2 + 15);
        *(a2 + 14) = v44 + 1;
        if (v44 >= v45)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::SvTime::MergePartialFromCodedStream(v42, a2, v46) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v47 = *(a2 + 14);
        v24 = __OFSUB__(v47, 1);
        v48 = v47 - 1;
        if (v48 < 0 == v24)
        {
          *(a2 + 14) = v48;
        }

        v49 = *(a2 + 1);
        if (v49 >= *(a2 + 2) || *v49 != 58)
        {
          continue;
        }

        *(a2 + 1) = v49 + 1;
LABEL_102:
        *(this + 28) |= 0x40u;
        v50 = *(this + 7);
        if (!v50)
        {
          operator new();
        }

        v94 = 0;
        v51 = *(a2 + 1);
        if (v51 >= *(a2 + 2) || *v51 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v94))
          {
            return 0;
          }
        }

        else
        {
          v94 = *v51;
          *(a2 + 1) = v51 + 1;
        }

        v52 = *(a2 + 14);
        v53 = *(a2 + 15);
        *(a2 + 14) = v52 + 1;
        if (v52 >= v53)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset::MergePartialFromCodedStream(v50, a2, v54) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v55 = *(a2 + 14);
        v24 = __OFSUB__(v55, 1);
        v56 = v55 - 1;
        if (v56 < 0 == v24)
        {
          *(a2 + 14) = v56;
        }

        v57 = *(a2 + 1);
        if (v57 >= *(a2 + 2) || *v57 != 66)
        {
          continue;
        }

        *(a2 + 1) = v57 + 1;
LABEL_116:
        *(this + 28) |= 0x80u;
        v58 = *(this + 8);
        if (!v58)
        {
          operator new();
        }

        v94 = 0;
        v59 = *(a2 + 1);
        if (v59 >= *(a2 + 2) || *v59 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v94))
          {
            return 0;
          }
        }

        else
        {
          v94 = *v59;
          *(a2 + 1) = v59 + 1;
        }

        v60 = *(a2 + 14);
        v61 = *(a2 + 15);
        *(a2 + 14) = v60 + 1;
        if (v60 >= v61)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking::MergePartialFromCodedStream(v58, a2, v62) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v63 = *(a2 + 14);
        v24 = __OFSUB__(v63, 1);
        v64 = v63 - 1;
        if (v64 < 0 == v24)
        {
          *(a2 + 14) = v64;
        }

        v65 = *(a2 + 1);
        if (v65 >= *(a2 + 2) || *v65 != 74)
        {
          continue;
        }

        *(a2 + 1) = v65 + 1;
LABEL_130:
        *(this + 28) |= 0x100u;
        v66 = *(this + 9);
        if (!v66)
        {
          operator new();
        }

        v94 = 0;
        v67 = *(a2 + 1);
        if (v67 >= *(a2 + 2) || *v67 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v94))
          {
            return 0;
          }
        }

        else
        {
          v94 = *v67;
          *(a2 + 1) = v67 + 1;
        }

        v68 = *(a2 + 14);
        v69 = *(a2 + 15);
        *(a2 + 14) = v68 + 1;
        if (v68 >= v69)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::MergePartialFromCodedStream(v66, a2, v70) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v71 = *(a2 + 14);
        v24 = __OFSUB__(v71, 1);
        v72 = v71 - 1;
        if (v72 < 0 == v24)
        {
          *(a2 + 14) = v72;
        }

        v73 = *(a2 + 1);
        if (v73 >= *(a2 + 2) || *v73 != 85)
        {
          continue;
        }

        *(a2 + 1) = v73 + 1;
LABEL_144:
        v94 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v94) & 1) == 0)
        {
          return 0;
        }

        *(this + 20) = v94;
        *(this + 28) |= 0x200u;
        v74 = *(a2 + 1);
        v18 = *(a2 + 2);
        if (v74 >= v18 || *v74 != 88)
        {
          continue;
        }

        v19 = v74 + 1;
        *(a2 + 1) = v19;
LABEL_148:
        v94 = 0;
        if (v19 >= v18 || (v75 = *v19, (v75 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v94);
          if (!result)
          {
            return result;
          }

          v75 = v94;
        }

        else
        {
          *(a2 + 1) = v19 + 1;
        }

        if (v75 <= 4)
        {
          *(this + 28) |= 0x400u;
          *(this + 21) = v75;
        }

        v76 = *(a2 + 1);
        if (v76 >= *(a2 + 2) || *v76 != 98)
        {
          continue;
        }

        *(a2 + 1) = v76 + 1;
LABEL_158:
        *(this + 28) |= 0x800u;
        v77 = *(this + 11);
        if (!v77)
        {
          operator new();
        }

        v94 = 0;
        v78 = *(a2 + 1);
        if (v78 >= *(a2 + 2) || *v78 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v94))
          {
            return 0;
          }
        }

        else
        {
          v94 = *v78;
          *(a2 + 1) = v78 + 1;
        }

        v79 = *(a2 + 14);
        v80 = *(a2 + 15);
        *(a2 + 14) = v79 + 1;
        if (v79 >= v80)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset::MergePartialFromCodedStream(v77, a2, v81) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v82 = *(a2 + 14);
        v24 = __OFSUB__(v82, 1);
        v83 = v82 - 1;
        if (v83 < 0 == v24)
        {
          *(a2 + 14) = v83;
        }

        v84 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v84 >= v12 || *v84 != 104)
        {
          continue;
        }

        v13 = v84 + 1;
        *(a2 + 1) = v13;
LABEL_172:
        v94 = 0;
        if (v13 >= v12 || (v85 = *v13, (v85 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v94);
          if (!result)
          {
            return result;
          }

          v85 = v94;
          v86 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v86 = v13 + 1;
          *(a2 + 1) = v86;
        }

        *(this + 104) = v85 != 0;
        v17 = *(this + 28) | 0x1000;
        *(this + 28) = v17;
        if (v86 >= v12 || *v86 != 114)
        {
          continue;
        }

        *(a2 + 1) = v86 + 1;
LABEL_180:
        *(this + 28) = v17 | 0x2000;
        v87 = *(this + 12);
        if (!v87)
        {
          operator new();
        }

        v94 = 0;
        v88 = *(a2 + 1);
        if (v88 >= *(a2 + 2) || *v88 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v94))
          {
            return 0;
          }
        }

        else
        {
          v94 = *v88;
          *(a2 + 1) = v88 + 1;
        }

        v89 = *(a2 + 14);
        v90 = *(a2 + 15);
        *(a2 + 14) = v89 + 1;
        if (v89 >= v90)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::MergePartialFromCodedStream(v87, a2, v91) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v92 = *(a2 + 14);
        v24 = __OFSUB__(v92, 1);
        v93 = v92 - 1;
        if (v93 < 0 == v24)
        {
          *(a2 + 14) = v93;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }

        break;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v14 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_64;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v15 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_72;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_80;
      case 6u:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

        v16 = *(this + 28);
        goto LABEL_88;
      case 7u:
        if (v7 == 2)
        {
          goto LABEL_102;
        }

        goto LABEL_38;
      case 8u:
        if (v7 == 2)
        {
          goto LABEL_116;
        }

        goto LABEL_38;
      case 9u:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

        goto LABEL_130;
      case 0xAu:
        if (v7 == 5)
        {
          goto LABEL_144;
        }

        goto LABEL_38;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v19 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_148;
      case 0xCu:
        if (v7 == 2)
        {
          goto LABEL_158;
        }

        goto LABEL_38;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_172;
      case 0xEu:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

        v17 = *(this + 28);
        goto LABEL_180;
      default:
LABEL_38:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvId::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::SvId *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    do
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v7 == 2)
        {
          v12 = *(this + 6);
          goto LABEL_22;
        }

LABEL_13:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      v12 = *(this + 6) | 1;
      *(this + 6) = v12;
    }

    while (v11 >= v8 || *v11 != 18);
    *(a2 + 1) = v11 + 1;
LABEL_22:
    *(this + 6) = v12 | 2;
    v14 = *(this + 1);
    if (!v14)
    {
      operator new();
    }

    v22 = 0;
    v15 = *(a2 + 1);
    if (v15 >= *(a2 + 2) || *v15 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22))
      {
        return 0;
      }
    }

    else
    {
      v22 = *v15;
      *(a2 + 1) = v15 + 1;
    }

    v16 = *(a2 + 14);
    v17 = *(a2 + 15);
    *(a2 + 14) = v16 + 1;
    if (v16 >= v17)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::MergePartialFromCodedStream(v14, a2, v18) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v19 = *(a2 + 14);
    v20 = __OFSUB__(v19, 1);
    v21 = v19 - 1;
    if (v21 < 0 == v20)
    {
      *(a2 + 14) = v21;
    }

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 <= 3)
        {
          break;
        }

        if (TagFallback >> 3 > 5)
        {
          if (v7 == 6)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_77;
            }
          }

          else if (v7 == 7 && (TagFallback & 7) == 0)
          {
            v12 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_85;
          }

          goto LABEL_30;
        }

        if (v7 == 4)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v17 = *(a2 + 1);
          v9 = *(a2 + 2);
LABEL_61:
          if (v17 >= v9 || (v32 = *v17, v32 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
            if (!result)
            {
              return result;
            }

            v33 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 6) = v32;
            v33 = v17 + 1;
            *(a2 + 1) = v33;
          }

          *(this + 11) |= 8u;
          if (v33 < v9 && *v33 == 40)
          {
            v10 = v33 + 1;
            *(a2 + 1) = v10;
LABEL_69:
            if (v10 >= v9 || (v34 = *v10, v34 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
              if (!result)
              {
                return result;
              }

              v35 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 7) = v34;
              v35 = v10 + 1;
              *(a2 + 1) = v35;
            }

            *(this + 11) |= 0x10u;
            if (v35 < v9 && *v35 == 48)
            {
              v18 = v35 + 1;
              *(a2 + 1) = v18;
LABEL_77:
              if (v18 >= v9 || (v36 = *v18, v36 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                if (!result)
                {
                  return result;
                }

                v37 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                *(this + 8) = v36;
                v37 = v18 + 1;
                *(a2 + 1) = v37;
              }

              *(this + 11) |= 0x20u;
              if (v37 < v9 && *v37 == 56)
              {
                v12 = v37 + 1;
                *(a2 + 1) = v12;
LABEL_85:
                if (v12 >= v9 || (v38 = *v12, v38 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
                  if (!result)
                  {
                    return result;
                  }

                  v39 = *(a2 + 1);
                  v9 = *(a2 + 2);
                }

                else
                {
                  *(this + 9) = v38;
                  v39 = v12 + 1;
                  *(a2 + 1) = v39;
                }

                *(this + 11) |= 0x40u;
                if (v39 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                {
                  *(a2 + 8) = 0;
                  result = 1;
                  *(a2 + 36) = 1;
                  return result;
                }
              }
            }
          }
        }

        else
        {
          if (v7 == 5 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_69;
          }

LABEL_30:
          if (v8 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_30;
      }

      v14 = *(a2 + 1);
      v13 = *(a2 + 2);
      if (v14 >= v13 || (v15 = *v14, v15 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v16 = *(a2 + 1);
        v13 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v15;
        v16 = v14 + 1;
        *(a2 + 1) = v16;
      }

      v19 = *(this + 11) | 1;
      *(this + 11) = v19;
      if (v16 < v13 && *v16 == 18)
      {
        *(a2 + 1) = v16 + 1;
        goto LABEL_39;
      }
    }

    if (v7 != 2)
    {
      if (v7 != 3 || (TagFallback & 7) != 0)
      {
        goto LABEL_30;
      }

      v11 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_53;
    }

    if (v8 != 2)
    {
      goto LABEL_30;
    }

    v19 = *(this + 11);
LABEL_39:
    *(this + 11) = v19 | 2;
    v21 = *(this + 1);
    if (!v21)
    {
      operator new();
    }

    v40 = 0;
    v22 = *(a2 + 1);
    if (v22 >= *(a2 + 2) || *v22 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40))
      {
        return 0;
      }
    }

    else
    {
      v40 = *v22;
      *(a2 + 1) = v22 + 1;
    }

    v23 = *(a2 + 14);
    v24 = *(a2 + 15);
    *(a2 + 14) = v23 + 1;
    if (v23 >= v24)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::MergePartialFromCodedStream(v21, a2, v25) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v26 = *(a2 + 14);
    v27 = __OFSUB__(v26, 1);
    v28 = v26 - 1;
    if (v28 < 0 == v27)
    {
      *(a2 + 14) = v28;
    }

    v29 = *(a2 + 1);
    v9 = *(a2 + 2);
    if (v29 < v9 && *v29 == 24)
    {
      v11 = v29 + 1;
      *(a2 + 1) = v11;
LABEL_53:
      if (v11 >= v9 || (v30 = *v11, v30 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
        if (!result)
        {
          return result;
        }

        v31 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 5) = v30;
        v31 = v11 + 1;
        *(a2 + 1) = v31;
      }

      *(this + 11) |= 4u;
      if (v31 < v9 && *v31 == 32)
      {
        v17 = v31 + 1;
        *(a2 + 1) = v17;
        goto LABEL_61;
      }
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SyncState::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::SyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = *(a2 + 1);
          if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 > 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 2)
          {
            if (v7 != 1)
            {
              if (v7 != 2 || v8 != 2)
              {
                goto LABEL_43;
              }

              goto LABEL_53;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_43;
            }

            v93 = 0;
            v9 = *(a2 + 1);
            if (v9 >= *(a2 + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v93);
              if (!result)
              {
                return result;
              }

              v10 = v93;
            }

            else
            {
              *(a2 + 1) = v9 + 1;
            }

            if (v10 <= 0xC)
            {
              *(this + 24) |= 1u;
              *(this + 22) = v10;
            }

            v12 = *(a2 + 1);
            if (v12 < *(a2 + 2) && *v12 == 18)
            {
              *(a2 + 1) = v12 + 1;
LABEL_53:
              *(this + 24) |= 2u;
              v13 = *(this + 1);
              if (!v13)
              {
                operator new();
              }

              v93 = 0;
              v14 = *(a2 + 1);
              if (v14 >= *(a2 + 2) || *v14 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v93))
                {
                  return 0;
                }
              }

              else
              {
                v93 = *v14;
                *(a2 + 1) = v14 + 1;
              }

              v15 = *(a2 + 14);
              v16 = *(a2 + 15);
              *(a2 + 14) = v15 + 1;
              if (v15 >= v16)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState::MergePartialFromCodedStream(v13, a2, v17) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v18 = *(a2 + 14);
              v19 = __OFSUB__(v18, 1);
              v20 = v18 - 1;
              if (v20 < 0 == v19)
              {
                *(a2 + 14) = v20;
              }

              v21 = *(a2 + 1);
              if (v21 < *(a2 + 2) && *v21 == 26)
              {
                *(a2 + 1) = v21 + 1;
LABEL_67:
                *(this + 24) |= 4u;
                v22 = *(this + 2);
                if (!v22)
                {
                  operator new();
                }

                v93 = 0;
                v23 = *(a2 + 1);
                if (v23 >= *(a2 + 2) || *v23 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v93))
                  {
                    return 0;
                  }
                }

                else
                {
                  v93 = *v23;
                  *(a2 + 1) = v23 + 1;
                }

                v24 = *(a2 + 14);
                v25 = *(a2 + 15);
                *(a2 + 14) = v24 + 1;
                if (v24 >= v25)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                if (!CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState::MergePartialFromCodedStream(v22, a2, v26) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                v27 = *(a2 + 14);
                v19 = __OFSUB__(v27, 1);
                v28 = v27 - 1;
                if (v28 < 0 == v19)
                {
                  *(a2 + 14) = v28;
                }

                v29 = *(a2 + 1);
                if (v29 < *(a2 + 2) && *v29 == 34)
                {
                  *(a2 + 1) = v29 + 1;
                  goto LABEL_81;
                }
              }
            }
          }

          else
          {
            if (v7 == 3)
            {
              if (v8 != 2)
              {
                goto LABEL_43;
              }

              goto LABEL_67;
            }

            if (v7 != 4)
            {
              if (v7 != 5 || v8 != 2)
              {
                goto LABEL_43;
              }

              goto LABEL_95;
            }

            if (v8 != 2)
            {
              goto LABEL_43;
            }

LABEL_81:
            *(this + 24) |= 8u;
            v30 = *(this + 3);
            if (!v30)
            {
              operator new();
            }

            v93 = 0;
            v31 = *(a2 + 1);
            if (v31 >= *(a2 + 2) || *v31 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v93))
              {
                return 0;
              }
            }

            else
            {
              v93 = *v31;
              *(a2 + 1) = v31 + 1;
            }

            v32 = *(a2 + 14);
            v33 = *(a2 + 15);
            *(a2 + 14) = v32 + 1;
            if (v32 >= v33)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState::MergePartialFromCodedStream(v30, a2, v34) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v35 = *(a2 + 14);
            v19 = __OFSUB__(v35, 1);
            v36 = v35 - 1;
            if (v36 < 0 == v19)
            {
              *(a2 + 14) = v36;
            }

            v37 = *(a2 + 1);
            if (v37 < *(a2 + 2) && *v37 == 42)
            {
              *(a2 + 1) = v37 + 1;
LABEL_95:
              *(this + 24) |= 0x10u;
              v38 = *(this + 4);
              if (!v38)
              {
                operator new();
              }

              v93 = 0;
              v39 = *(a2 + 1);
              if (v39 >= *(a2 + 2) || *v39 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v93))
                {
                  return 0;
                }
              }

              else
              {
                v93 = *v39;
                *(a2 + 1) = v39 + 1;
              }

              v40 = *(a2 + 14);
              v41 = *(a2 + 15);
              *(a2 + 14) = v40 + 1;
              if (v40 >= v41)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState::MergePartialFromCodedStream(v38, a2, v42) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v43 = *(a2 + 14);
              v19 = __OFSUB__(v43, 1);
              v44 = v43 - 1;
              if (v44 < 0 == v19)
              {
                *(a2 + 14) = v44;
              }

              v45 = *(a2 + 1);
              if (v45 < *(a2 + 2) && *v45 == 50)
              {
                *(a2 + 1) = v45 + 1;
LABEL_109:
                *(this + 24) |= 0x20u;
                v46 = *(this + 5);
                if (!v46)
                {
                  operator new();
                }

                v93 = 0;
                v47 = *(a2 + 1);
                if (v47 >= *(a2 + 2) || *v47 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v93))
                  {
                    return 0;
                  }
                }

                else
                {
                  v93 = *v47;
                  *(a2 + 1) = v47 + 1;
                }

                v48 = *(a2 + 14);
                v49 = *(a2 + 15);
                *(a2 + 14) = v48 + 1;
                if (v48 >= v49)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                if (!CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState::MergePartialFromCodedStream(v46, a2, v50) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                v51 = *(a2 + 14);
                v19 = __OFSUB__(v51, 1);
                v52 = v51 - 1;
                if (v52 < 0 == v19)
                {
                  *(a2 + 14) = v52;
                }

                v53 = *(a2 + 1);
                if (v53 < *(a2 + 2) && *v53 == 58)
                {
                  *(a2 + 1) = v53 + 1;
                  goto LABEL_123;
                }
              }
            }
          }
        }

        if (TagFallback >> 3 <= 8)
        {
          break;
        }

        if (v7 == 9)
        {
          if (v8 != 2)
          {
            goto LABEL_43;
          }

LABEL_151:
          *(this + 24) |= 0x100u;
          v70 = *(this + 8);
          if (!v70)
          {
            operator new();
          }

          v93 = 0;
          v71 = *(a2 + 1);
          if (v71 >= *(a2 + 2) || *v71 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v93))
            {
              return 0;
            }
          }

          else
          {
            v93 = *v71;
            *(a2 + 1) = v71 + 1;
          }

          v72 = *(a2 + 14);
          v73 = *(a2 + 15);
          *(a2 + 14) = v72 + 1;
          if (v72 >= v73)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState::MergePartialFromCodedStream(v70, a2, v74) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v75 = *(a2 + 14);
          v19 = __OFSUB__(v75, 1);
          v76 = v75 - 1;
          if (v76 < 0 == v19)
          {
            *(a2 + 14) = v76;
          }

          v77 = *(a2 + 1);
          if (v77 < *(a2 + 2) && *v77 == 82)
          {
            *(a2 + 1) = v77 + 1;
LABEL_165:
            *(this + 24) |= 0x200u;
            v78 = *(this + 9);
            if (!v78)
            {
              operator new();
            }

            v93 = 0;
            v79 = *(a2 + 1);
            if (v79 >= *(a2 + 2) || *v79 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v93))
              {
                return 0;
              }
            }

            else
            {
              v93 = *v79;
              *(a2 + 1) = v79 + 1;
            }

            v80 = *(a2 + 14);
            v81 = *(a2 + 15);
            *(a2 + 14) = v80 + 1;
            if (v80 >= v81)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState::MergePartialFromCodedStream(v78, a2, v82) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v83 = *(a2 + 14);
            v19 = __OFSUB__(v83, 1);
            v84 = v83 - 1;
            if (v84 < 0 == v19)
            {
              *(a2 + 14) = v84;
            }

            v85 = *(a2 + 1);
            if (v85 < *(a2 + 2) && *v85 == 90)
            {
              *(a2 + 1) = v85 + 1;
              goto LABEL_179;
            }
          }
        }

        else
        {
          if (v7 == 10)
          {
            if (v8 == 2)
            {
              goto LABEL_165;
            }

            goto LABEL_43;
          }

          if (v7 != 11 || v8 != 2)
          {
            goto LABEL_43;
          }

LABEL_179:
          *(this + 24) |= 0x400u;
          v86 = *(this + 10);
          if (!v86)
          {
            operator new();
          }

          v93 = 0;
          v87 = *(a2 + 1);
          if (v87 >= *(a2 + 2) || *v87 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v93))
            {
              return 0;
            }
          }

          else
          {
            v93 = *v87;
            *(a2 + 1) = v87 + 1;
          }

          v88 = *(a2 + 14);
          v89 = *(a2 + 15);
          *(a2 + 14) = v88 + 1;
          if (v88 >= v89)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState::MergePartialFromCodedStream(v86, a2, v90) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v91 = *(a2 + 14);
          v19 = __OFSUB__(v91, 1);
          v92 = v91 - 1;
          if (v92 < 0 == v19)
          {
            *(a2 + 14) = v92;
          }

          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v7 == 6)
      {
        if (v8 != 2)
        {
          goto LABEL_43;
        }

        goto LABEL_109;
      }

      if (v7 != 7)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_43;
      }

LABEL_123:
      *(this + 24) |= 0x40u;
      v54 = *(this + 6);
      if (!v54)
      {
        operator new();
      }

      v93 = 0;
      v55 = *(a2 + 1);
      if (v55 >= *(a2 + 2) || *v55 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v93))
        {
          return 0;
        }
      }

      else
      {
        v93 = *v55;
        *(a2 + 1) = v55 + 1;
      }

      v56 = *(a2 + 14);
      v57 = *(a2 + 15);
      *(a2 + 14) = v56 + 1;
      if (v56 >= v57)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState::MergePartialFromCodedStream(v54, a2, v58) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v59 = *(a2 + 14);
      v19 = __OFSUB__(v59, 1);
      v60 = v59 - 1;
      if (v60 < 0 == v19)
      {
        *(a2 + 14) = v60;
      }

      v61 = *(a2 + 1);
      if (v61 < *(a2 + 2) && *v61 == 66)
      {
        *(a2 + 1) = v61 + 1;
LABEL_137:
        *(this + 24) |= 0x80u;
        v62 = *(this + 7);
        if (!v62)
        {
          operator new();
        }

        v93 = 0;
        v63 = *(a2 + 1);
        if (v63 >= *(a2 + 2) || *v63 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v93))
          {
            return 0;
          }
        }

        else
        {
          v93 = *v63;
          *(a2 + 1) = v63 + 1;
        }

        v64 = *(a2 + 14);
        v65 = *(a2 + 15);
        *(a2 + 14) = v64 + 1;
        if (v64 >= v65)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState::MergePartialFromCodedStream(v62, a2, v66) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v67 = *(a2 + 14);
        v19 = __OFSUB__(v67, 1);
        v68 = v67 - 1;
        if (v68 < 0 == v19)
        {
          *(a2 + 14) = v68;
        }

        v69 = *(a2 + 1);
        if (v69 < *(a2 + 2) && *v69 == 74)
        {
          *(a2 + 1) = v69 + 1;
          goto LABEL_151;
        }
      }
    }

    if (v7 == 8 && v8 == 2)
    {
      goto LABEL_137;
    }

LABEL_43:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_37;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v22 = 0;
      v11 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v11 >= v8 || (v12 = *v11, (v12 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
        if (!result)
        {
          return result;
        }

        v12 = v22;
        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v13 = v11 + 1;
        *(a2 + 1) = v13;
      }

      *(this + 8) = v12 != 0;
      *(this + 4) |= 1u;
      if (v13 < v8 && *v13 == 16)
      {
        v9 = v13 + 1;
        *(a2 + 1) = v9;
LABEL_29:
        v22 = 0;
        if (v9 >= v8 || (v15 = *v9, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
          if (!result)
          {
            return result;
          }

          v15 = v22;
          v16 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v16 = v9 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 9) = v15 != 0;
        *(this + 4) |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(a2 + 1) = v14;
LABEL_37:
          v22 = 0;
          if (v14 >= v8 || (v17 = *v14, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
            if (!result)
            {
              return result;
            }

            v17 = v22;
            v18 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v18 = v14 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 10) = v17 != 0;
          *(this + 4) |= 4u;
          if (v18 < v8 && *v18 == 32)
          {
            v10 = v18 + 1;
            *(a2 + 1) = v10;
LABEL_45:
            v22 = 0;
            if (v10 >= v8 || (v19 = *v10, (v19 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
              if (!result)
              {
                return result;
              }

              v19 = v22;
              v20 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v20 = v10 + 1;
              *(a2 + 1) = v20;
            }

            *(this + 11) = v19 != 0;
            *(this + 4) |= 8u;
            if (v20 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_29;
    }

LABEL_20:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvTime::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::SvTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_20;
        }

        v12 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_24:
        v16[0] = 0;
        if (v12 >= v10 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v16);
          if (!result)
          {
            return result;
          }

          v13 = v16[0];
          v14 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 24) = v13 != 0;
        *(this + 8) |= 4u;
        if (v14 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 1)
      {
        goto LABEL_20;
      }

      *v16 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v16) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = *v16;
      *(this + 8) |= 1u;
      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 17)
      {
        *(a2 + 1) = v9 + 1;
LABEL_15:
        *v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v16) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v16;
        *(this + 8) |= 2u;
        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v11 < v10 && *v11 == 24)
        {
          v12 = v11 + 1;
          *(a2 + 1) = v12;
          goto LABEL_24;
        }
      }
    }

    if (v8 == 1)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_20;
        }

        v12 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_24:
        v16[0] = 0;
        if (v12 >= v10 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v16);
          if (!result)
          {
            return result;
          }

          v13 = v16[0];
          v14 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 24) = v13 != 0;
        *(this + 8) |= 4u;
        if (v14 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 1)
      {
        goto LABEL_20;
      }

      *v16 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v16) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = *v16;
      *(this + 8) |= 1u;
      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 17)
      {
        *(a2 + 1) = v9 + 1;
LABEL_15:
        *v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v16) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v16;
        *(this + 8) |= 2u;
        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v11 < v10 && *v11 == 24)
        {
          v12 = v11 + 1;
          *(a2 + 1) = v12;
          goto LABEL_24;
        }
      }
    }

    if (v8 == 1)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_37;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v22 = 0;
      v11 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v11 >= v8 || (v12 = *v11, (v12 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
        if (!result)
        {
          return result;
        }

        v12 = v22;
        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v13 = v11 + 1;
        *(a2 + 1) = v13;
      }

      *(this + 8) = v12 != 0;
      *(this + 4) |= 1u;
      if (v13 < v8 && *v13 == 16)
      {
        v9 = v13 + 1;
        *(a2 + 1) = v9;
LABEL_29:
        v22 = 0;
        if (v9 >= v8 || (v15 = *v9, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
          if (!result)
          {
            return result;
          }

          v15 = v22;
          v16 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v16 = v9 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 9) = v15 != 0;
        *(this + 4) |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(a2 + 1) = v14;
LABEL_37:
          v22 = 0;
          if (v14 >= v8 || (v17 = *v14, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
            if (!result)
            {
              return result;
            }

            v17 = v22;
            v18 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v18 = v14 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 10) = v17 != 0;
          *(this + 4) |= 4u;
          if (v18 < v8 && *v18 == 32)
          {
            v10 = v18 + 1;
            *(a2 + 1) = v10;
LABEL_45:
            v22 = 0;
            if (v10 >= v8 || (v19 = *v10, (v19 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
              if (!result)
              {
                return result;
              }

              v19 = v22;
              v20 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v20 = v10 + 1;
              *(a2 + 1) = v20;
            }

            *(this + 11) = v19 != 0;
            *(this + 4) |= 8u;
            if (v20 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_29;
    }

LABEL_20:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GlonassId *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    do
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v7 == 2)
        {
          v12 = *(this + 6);
          goto LABEL_22;
        }

LABEL_13:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v22 = 0;
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
        if (!result)
        {
          return result;
        }

        v10 = v22;
        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 4) = v10;
      v12 = *(this + 6) | 1;
      *(this + 6) = v12;
    }

    while (v11 >= v8 || *v11 != 18);
    *(a2 + 1) = v11 + 1;
LABEL_22:
    *(this + 6) = v12 | 2;
    v14 = *(this + 1);
    if (!v14)
    {
      operator new();
    }

    v23 = 0;
    v15 = *(a2 + 1);
    if (v15 >= *(a2 + 2) || *v15 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23))
      {
        return 0;
      }
    }

    else
    {
      v23 = *v15;
      *(a2 + 1) = v15 + 1;
    }

    v16 = *(a2 + 14);
    v17 = *(a2 + 15);
    *(a2 + 14) = v16 + 1;
    if (v16 >= v17)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo::MergePartialFromCodedStream(v14, a2, v18) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v19 = *(a2 + 14);
    v20 = __OFSUB__(v19, 1);
    v21 = v19 - 1;
    if (v21 < 0 == v20)
    {
      *(a2 + 14) = v21;
    }

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 5) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_22:
        v14 = 0;
        if (v11 >= v7 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14);
          if (!result)
          {
            return result;
          }

          v12 = v14;
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v12 <= 4)
        {
          *(this + 5) |= 2u;
          *(this + 3) = v12;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v10 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v25 = 0;
        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v13 >= v8 || (v14 = *v13, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
          if (!result)
          {
            return result;
          }

          v14 = v25;
          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v15 = v13 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 8) = v14 != 0;
        *(this + 5) |= 1u;
        if (v15 < v8 && *v15 == 16)
        {
          v10 = v15 + 1;
          *(a2 + 1) = v10;
LABEL_32:
          v25 = 0;
          if (v10 >= v8 || (v16 = *v10, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
            if (!result)
            {
              return result;
            }

            v16 = v25;
            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v17 = v10 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 9) = v16 != 0;
          *(this + 5) |= 2u;
          if (v17 < v8 && *v17 == 24)
          {
            v11 = v17 + 1;
            *(a2 + 1) = v11;
LABEL_40:
            v25 = 0;
            if (v11 >= v8 || (v18 = *v11, (v18 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
              if (!result)
              {
                return result;
              }

              v18 = v25;
              v19 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v19 = v11 + 1;
              *(a2 + 1) = v19;
            }

            *(this + 10) = v18 != 0;
            *(this + 5) |= 4u;
            if (v19 < v8 && *v19 == 32)
            {
              v12 = v19 + 1;
              *(a2 + 1) = v12;
              goto LABEL_48;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_40;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_48:
      v25 = 0;
      if (v12 >= v8 || (v20 = *v12, (v20 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
        if (!result)
        {
          return result;
        }

        v20 = v25;
        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v21 = v12 + 1;
        *(a2 + 1) = v21;
      }

      *(this + 11) = v20 != 0;
      *(this + 5) |= 8u;
      if (v21 < v8 && *v21 == 40)
      {
        v9 = v21 + 1;
        *(a2 + 1) = v9;
LABEL_56:
        v25 = 0;
        if (v9 >= v8 || (v22 = *v9, (v22 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
          if (!result)
          {
            return result;
          }

          v22 = v25;
          v23 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v23 = v9 + 1;
          *(a2 + 1) = v23;
        }

        *(this + 12) = v22 != 0;
        *(this + 5) |= 0x10u;
        if (v23 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_56;
    }

LABEL_21:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v12 = *(a2 + 1);
          v11 = *(a2 + 2);
          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v13 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v13 >= v11 || (v14 = *v13, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v14;
          v15 = v13 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 12) |= 1u;
        if (v15 < v11 && *v15 == 16)
        {
          v12 = v15 + 1;
          *(a2 + 1) = v12;
LABEL_32:
          if (v12 >= v11 || (v17 = *v12, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v18 = *(a2 + 1);
            v11 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v17;
            v18 = v12 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 12) |= 2u;
          if (v18 < v11 && *v18 == 25)
          {
            *(a2 + 1) = v18 + 1;
LABEL_40:
            *v23 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v23) & 1) == 0)
            {
              return 0;
            }

            *(this + 3) = *v23;
            *(this + 12) |= 4u;
            v19 = *(a2 + 1);
            if (v19 < *(a2 + 2) && *v19 == 33)
            {
              *(a2 + 1) = v19 + 1;
              goto LABEL_44;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 1)
        {
          goto LABEL_21;
        }

        goto LABEL_40;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_21;
      }

LABEL_44:
      *v23 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v23) & 1) == 0)
      {
        return 0;
      }

      *(this + 4) = *v23;
      *(this + 12) |= 8u;
      v20 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v20 < v9 && *v20 == 40)
      {
        v10 = v20 + 1;
        *(a2 + 1) = v10;
LABEL_48:
        v23[0] = 0;
        if (v10 >= v9 || (v21 = *v10, (v21 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v23);
          if (!result)
          {
            return result;
          }

          v21 = v23[0];
          v22 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v22 = v10 + 1;
          *(a2 + 1) = v22;
        }

        *(this + 40) = v21 != 0;
        *(this + 12) |= 0x10u;
        if (v22 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_48;
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_37;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v22 = 0;
      v11 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v11 >= v8 || (v12 = *v11, (v12 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
        if (!result)
        {
          return result;
        }

        v12 = v22;
        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v13 = v11 + 1;
        *(a2 + 1) = v13;
      }

      *(this + 8) = v12 != 0;
      *(this + 4) |= 1u;
      if (v13 < v8 && *v13 == 16)
      {
        v9 = v13 + 1;
        *(a2 + 1) = v9;
LABEL_29:
        v22 = 0;
        if (v9 >= v8 || (v15 = *v9, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
          if (!result)
          {
            return result;
          }

          v15 = v22;
          v16 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v16 = v9 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 9) = v15 != 0;
        *(this + 4) |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(a2 + 1) = v14;
LABEL_37:
          v22 = 0;
          if (v14 >= v8 || (v17 = *v14, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
            if (!result)
            {
              return result;
            }

            v17 = v22;
            v18 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v18 = v14 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 10) = v17 != 0;
          *(this + 4) |= 4u;
          if (v18 < v8 && *v18 == 32)
          {
            v10 = v18 + 1;
            *(a2 + 1) = v10;
LABEL_45:
            v22 = 0;
            if (v10 >= v8 || (v19 = *v10, (v19 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
              if (!result)
              {
                return result;
              }

              v19 = v22;
              v20 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v20 = v10 + 1;
              *(a2 + 1) = v20;
            }

            *(this + 11) = v19 != 0;
            *(this + 4) |= 8u;
            if (v20 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_29;
    }

LABEL_20:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x1E69E5958];
  while (2)
  {
    v6 = *(a2 + 1);
    if (v6 >= *(a2 + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(a2 + 8) = TagFallback;
      *(a2 + 1) = v6 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v8 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v8 != 5)
        {
          goto LABEL_50;
        }

        v83 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v83) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v83;
        *(this + 29) |= 1u;
        v9 = *(a2 + 1);
        if (v9 >= *(a2 + 2) || *v9 != 21)
        {
          continue;
        }

        *(a2 + 1) = v9 + 1;
        goto LABEL_32;
      case 2u:
        if (v8 != 5)
        {
          goto LABEL_50;
        }

LABEL_32:
        v83 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v83) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v83;
        v14 = *(this + 29) | 2;
        *(this + 29) = v14;
        v17 = *(a2 + 1);
        if (v17 >= *(a2 + 2) || *v17 != 26)
        {
          continue;
        }

        *(a2 + 1) = v17 + 1;
LABEL_36:
        *(this + 29) = v14 | 4;
        v18 = *(this + 2);
        if (!v18)
        {
          operator new();
        }

        v83 = 0;
        v19 = *(a2 + 1);
        if (v19 >= *(a2 + 2) || *v19 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v83))
          {
            return 0;
          }
        }

        else
        {
          v83 = *v19;
          *(a2 + 1) = v19 + 1;
        }

        v25 = *(a2 + 14);
        v26 = *(a2 + 15);
        *(a2 + 14) = v25 + 1;
        if (v25 >= v26)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime::MergePartialFromCodedStream(v18, a2, v27) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v28 = *(a2 + 14);
        v29 = __OFSUB__(v28, 1);
        v30 = v28 - 1;
        if (v30 < 0 == v29)
        {
          *(a2 + 14) = v30;
        }

        v31 = *(a2 + 1);
        if (v31 >= *(a2 + 2) || *v31 != 34)
        {
          continue;
        }

        *(a2 + 1) = v31 + 1;
LABEL_63:
        *(this + 29) |= 8u;
        v32 = *(this + 3);
        if (!v32)
        {
          operator new();
        }

        v83 = 0;
        v33 = *(a2 + 1);
        if (v33 >= *(a2 + 2) || *v33 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v83))
          {
            return 0;
          }
        }

        else
        {
          v83 = *v33;
          *(a2 + 1) = v33 + 1;
        }

        v34 = *(a2 + 14);
        v35 = *(a2 + 15);
        *(a2 + 14) = v34 + 1;
        if (v34 >= v35)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage::MergePartialFromCodedStream(v32, a2, v36) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v37 = *(a2 + 14);
        v29 = __OFSUB__(v37, 1);
        v38 = v37 - 1;
        if (v38 < 0 == v29)
        {
          *(a2 + 14) = v38;
        }

        v39 = *(a2 + 1);
        if (v39 >= *(a2 + 2) || *v39 != 42)
        {
          continue;
        }

        *(a2 + 1) = v39 + 1;
LABEL_77:
        *(this + 29) |= 0x10u;
        v40 = *(this + 4);
        if (!v40)
        {
          operator new();
        }

        v83 = 0;
        v41 = *(a2 + 1);
        if (v41 >= *(a2 + 2) || *v41 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v83))
          {
            return 0;
          }
        }

        else
        {
          v83 = *v41;
          *(a2 + 1) = v41 + 1;
        }

        v42 = *(a2 + 14);
        v43 = *(a2 + 15);
        *(a2 + 14) = v42 + 1;
        if (v42 >= v43)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage::MergePartialFromCodedStream(v40, a2, v44) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v45 = *(a2 + 14);
        v29 = __OFSUB__(v45, 1);
        v46 = v45 - 1;
        if (v46 < 0 == v29)
        {
          *(a2 + 14) = v46;
        }

        v47 = *(a2 + 1);
        if (v47 >= *(a2 + 2) || *v47 != 50)
        {
          continue;
        }

        *(a2 + 1) = v47 + 1;
LABEL_91:
        *(this + 29) |= 0x20u;
        v48 = *(this + 5);
        if (!v48)
        {
          operator new();
        }

        v83 = 0;
        v49 = *(a2 + 1);
        if (v49 >= *(a2 + 2) || *v49 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v83))
          {
            return 0;
          }
        }

        else
        {
          v83 = *v49;
          *(a2 + 1) = v49 + 1;
        }

        v50 = *(a2 + 14);
        v51 = *(a2 + 15);
        *(a2 + 14) = v50 + 1;
        if (v50 >= v51)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage::MergePartialFromCodedStream(v48, a2, v52) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v53 = *(a2 + 14);
        v29 = __OFSUB__(v53, 1);
        v54 = v53 - 1;
        if (v54 < 0 == v29)
        {
          *(a2 + 14) = v54;
        }

        v55 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v55 >= v15 || *v55 != 56)
        {
          continue;
        }

        v21 = v55 + 1;
        *(a2 + 1) = v21;
LABEL_105:
        if (v21 >= v15 || (v56 = *v21, v56 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v57 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v56;
          v57 = v21 + 1;
          *(a2 + 1) = v57;
        }

        *(this + 29) |= 0x40u;
        if (v57 >= v15 || *v57 != 64)
        {
          continue;
        }

        v16 = v57 + 1;
        *(a2 + 1) = v16;
LABEL_113:
        if (v16 >= v15 || (v59 = *v16, v59 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v60 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v59;
          v60 = v16 + 1;
          *(a2 + 1) = v60;
        }

        *(this + 29) |= 0x80u;
        if (v60 >= v15 || *v60 != 72)
        {
          continue;
        }

        v24 = v60 + 1;
        *(a2 + 1) = v24;
LABEL_121:
        v83 = 0;
        if (v24 >= v15 || (v61 = *v24, (v61 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v83);
          if (!result)
          {
            return result;
          }

          v61 = v83;
        }

        else
        {
          *(a2 + 1) = v24 + 1;
        }

        if (v61 <= 6)
        {
          *(this + 29) |= 0x100u;
          *(this + 14) = v61;
        }

        v62 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v62 >= v12 || *v62 != 80)
        {
          continue;
        }

        v13 = v62 + 1;
        *(a2 + 1) = v13;
LABEL_131:
        v83 = 0;
        if (v13 >= v12 || (v63 = *v13, (v63 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v83);
          if (!result)
          {
            return result;
          }

          v63 = v83;
        }

        else
        {
          *(a2 + 1) = v13 + 1;
        }

        if (v63 <= 6)
        {
          *(this + 29) |= 0x200u;
          *(this + 15) = v63;
        }

        v64 = *(a2 + 1);
        v22 = *(a2 + 2);
        if (v64 >= v22 || *v64 != 88)
        {
          continue;
        }

        v23 = v64 + 1;
        *(a2 + 1) = v23;
LABEL_141:
        v83 = 0;
        if (v23 >= v22 || (v65 = *v23, (v65 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v83);
          if (!result)
          {
            return result;
          }

          v65 = v83;
          v66 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          v66 = v23 + 1;
          *(a2 + 1) = v66;
        }

        *(this + 16) = v65;
        *(this + 29) |= 0x400u;
        if (v66 >= v22 || *v66 != 101)
        {
          continue;
        }

        *(a2 + 1) = v66 + 1;
LABEL_149:
        v83 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v83) & 1) == 0)
        {
          return 0;
        }

        *(this + 17) = v83;
        *(this + 29) |= 0x800u;
        v67 = *(a2 + 1);
        if (v67 >= *(a2 + 2) || *v67 != 109)
        {
          continue;
        }

        *(a2 + 1) = v67 + 1;
LABEL_153:
        v83 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v83))
        {
          *(this + 18) = v83;
          v20 = *(this + 29) | 0x1000;
          *(this + 29) = v20;
          v68 = *(a2 + 1);
          if (v68 < *(a2 + 2) && *v68 == 114)
          {
            *(a2 + 1) = v68 + 1;
LABEL_157:
            *(this + 29) = v20 | 0x2000;
            if (*(this + 10) == v5)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
            if (!result)
            {
              return result;
            }

            v69 = *(a2 + 1);
            v11 = *(a2 + 2);
            if (v69 < v11 && *v69 == 120)
            {
              v10 = v69 + 1;
              *(a2 + 1) = v10;
LABEL_163:
              if (v10 >= v11 || (v70 = *v10, v70 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
                if (!result)
                {
                  return result;
                }

                v71 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                *(this + 19) = v70;
                v71 = (v10 + 1);
                *(a2 + 1) = v71;
              }

              *(this + 29) |= 0x4000u;
              if (v11 - v71 >= 2 && *v71 == 130 && v71[1] == 1)
              {
                do
                {
                  *(a2 + 1) = v71 + 2;
LABEL_172:
                  v72 = *(this + 25);
                  v73 = *(this + 24);
                  if (v73 >= v72)
                  {
                    if (v72 == *(this + 26))
                    {
                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 88));
                      v72 = *(this + 25);
                    }

                    *(this + 25) = v72 + 1;
                    operator new();
                  }

                  v74 = *(this + 11);
                  *(this + 24) = v73 + 1;
                  v75 = *(v74 + 8 * v73);
                  v83 = 0;
                  v76 = *(a2 + 1);
                  if (v76 >= *(a2 + 2) || *v76 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v83))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v83 = *v76;
                    *(a2 + 1) = v76 + 1;
                  }

                  v77 = *(a2 + 14);
                  v78 = *(a2 + 15);
                  *(a2 + 14) = v77 + 1;
                  if (v77 >= v78)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                  if (!CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::MergePartialFromCodedStream(v75, a2, v79) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                  v80 = *(a2 + 14);
                  v29 = __OFSUB__(v80, 1);
                  v81 = v80 - 1;
                  if (v81 < 0 == v29)
                  {
                    *(a2 + 14) = v81;
                  }

                  v71 = *(a2 + 1);
                  v82 = *(a2 + 2);
                }

                while (v82 - v71 > 1 && *v71 == 130 && v71[1] == 1);
                if (v71 == v82 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                {
                  *(a2 + 8) = 0;
                  result = 1;
                  *(a2 + 36) = 1;
                  return result;
                }
              }
            }
          }

          continue;
        }

        return 0;
      case 3u:
        if (v8 != 2)
        {
          goto LABEL_50;
        }

        v14 = *(this + 29);
        goto LABEL_36;
      case 4u:
        if (v8 == 2)
        {
          goto LABEL_63;
        }

        goto LABEL_50;
      case 5u:
        if (v8 == 2)
        {
          goto LABEL_77;
        }

        goto LABEL_50;
      case 6u:
        if (v8 == 2)
        {
          goto LABEL_91;
        }

        goto LABEL_50;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v21 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_105;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_113;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v24 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_121;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_131;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_141;
      case 0xCu:
        if (v8 == 5)
        {
          goto LABEL_149;
        }

        goto LABEL_50;
      case 0xDu:
        if (v8 == 5)
        {
          goto LABEL_153;
        }

        goto LABEL_50;
      case 0xEu:
        if (v8 != 2)
        {
          goto LABEL_50;
        }

        v20 = *(this + 29);
        goto LABEL_157;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v10 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_163;
      case 0x10u:
        if (v8 == 2)
        {
          goto LABEL_172;
        }

        goto LABEL_50;
      default:
LABEL_50:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v8 != 5)
        {
          goto LABEL_20;
        }

LABEL_23:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = v12;
        *(this + 6) |= 4u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 5)
      {
        goto LABEL_20;
      }

      v14 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v14) & 1) == 0)
      {
        return 0;
      }

      *(this + 2) = v14;
      *(this + 6) |= 1u;
      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 21)
      {
        *(a2 + 1) = v9 + 1;
LABEL_15:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v13) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v13;
        *(this + 6) |= 2u;
        v10 = *(a2 + 1);
        if (v10 < *(a2 + 2) && *v10 == 29)
        {
          *(a2 + 1) = v10 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v8 == 5)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      v8 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        if (v8 == 5)
        {
          goto LABEL_44;
        }

        goto LABEL_18;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 2)
      {
        goto LABEL_18;
      }

      *(this + 8) |= 1u;
      v9 = *(this + 1);
      if (!v9)
      {
        operator new();
      }

      v28 = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28))
        {
          return 0;
        }
      }

      else
      {
        v28 = *v10;
        *(a2 + 1) = v10 + 1;
      }

      v11 = *(a2 + 14);
      v12 = *(a2 + 15);
      *(a2 + 14) = v11 + 1;
      if (v11 >= v12)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::SvTime::MergePartialFromCodedStream(v9, a2, v13) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v14 = *(a2 + 14);
      v15 = __OFSUB__(v14, 1);
      v16 = v14 - 1;
      if (v16 < 0 == v15)
      {
        *(a2 + 14) = v16;
      }

      v17 = *(a2 + 1);
      if (v17 < *(a2 + 2) && *v17 == 18)
      {
        *(a2 + 1) = v17 + 1;
LABEL_30:
        *(this + 8) |= 2u;
        v18 = *(this + 2);
        if (!v18)
        {
          operator new();
        }

        v29 = 0;
        v19 = *(a2 + 1);
        if (v19 >= *(a2 + 2) || *v19 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29))
          {
            return 0;
          }
        }

        else
        {
          v29 = *v19;
          *(a2 + 1) = v19 + 1;
        }

        v20 = *(a2 + 14);
        v21 = *(a2 + 15);
        *(a2 + 14) = v20 + 1;
        if (v20 >= v21)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset::MergePartialFromCodedStream(v18, a2, v22) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v23 = *(a2 + 14);
        v15 = __OFSUB__(v23, 1);
        v24 = v23 - 1;
        if (v24 < 0 == v15)
        {
          *(a2 + 14) = v24;
        }

        v25 = *(a2 + 1);
        if (v25 < *(a2 + 2) && *v25 == 29)
        {
          *(a2 + 1) = v25 + 1;
LABEL_44:
          v27 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v27) & 1) == 0)
          {
            return 0;
          }

          *(this + 6) = v27;
          *(this + 8) |= 4u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_30;
    }

LABEL_18:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_37;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v22 = 0;
      v11 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v11 >= v8 || (v12 = *v11, (v12 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
        if (!result)
        {
          return result;
        }

        v12 = v22;
        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v13 = v11 + 1;
        *(a2 + 1) = v13;
      }

      *(this + 8) = v12 != 0;
      *(this + 4) |= 1u;
      if (v13 < v8 && *v13 == 16)
      {
        v9 = v13 + 1;
        *(a2 + 1) = v9;
LABEL_29:
        v22 = 0;
        if (v9 >= v8 || (v15 = *v9, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
          if (!result)
          {
            return result;
          }

          v15 = v22;
          v16 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v16 = v9 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 9) = v15 != 0;
        *(this + 4) |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(a2 + 1) = v14;
LABEL_37:
          v22 = 0;
          if (v14 >= v8 || (v17 = *v14, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
            if (!result)
            {
              return result;
            }

            v17 = v22;
            v18 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v18 = v14 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 10) = v17 != 0;
          *(this + 4) |= 4u;
          if (v18 < v8 && *v18 == 32)
          {
            v10 = v18 + 1;
            *(a2 + 1) = v10;
LABEL_45:
            v22 = 0;
            if (v10 >= v8 || (v19 = *v10, (v19 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
              if (!result)
              {
                return result;
              }

              v19 = v22;
              v20 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v20 = v10 + 1;
              *(a2 + 1) = v20;
            }

            *(this + 11) = v19 != 0;
            *(this + 4) |= 8u;
            if (v20 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_29;
    }

LABEL_20:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_37;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v22 = 0;
      v11 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v11 >= v8 || (v12 = *v11, (v12 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
        if (!result)
        {
          return result;
        }

        v12 = v22;
        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v13 = v11 + 1;
        *(a2 + 1) = v13;
      }

      *(this + 8) = v12 != 0;
      *(this + 4) |= 1u;
      if (v13 < v8 && *v13 == 16)
      {
        v9 = v13 + 1;
        *(a2 + 1) = v9;
LABEL_29:
        v22 = 0;
        if (v9 >= v8 || (v15 = *v9, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
          if (!result)
          {
            return result;
          }

          v15 = v22;
          v16 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v16 = v9 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 9) = v15 != 0;
        *(this + 4) |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(a2 + 1) = v14;
LABEL_37:
          v22 = 0;
          if (v14 >= v8 || (v17 = *v14, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
            if (!result)
            {
              return result;
            }

            v17 = v22;
            v18 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v18 = v14 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 10) = v17 != 0;
          *(this + 4) |= 4u;
          if (v18 < v8 && *v18 == 32)
          {
            v10 = v18 + 1;
            *(a2 + 1) = v10;
LABEL_45:
            v22 = 0;
            if (v10 >= v8 || (v19 = *v10, (v19 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
              if (!result)
              {
                return result;
              }

              v19 = v22;
              v20 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v20 = v10 + 1;
              *(a2 + 1) = v20;
            }

            *(this + 11) = v19 != 0;
            *(this + 4) |= 8u;
            if (v20 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_29;
    }

LABEL_20:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        if (TagFallback >> 3 > 5)
        {
          if (TagFallback >> 3 <= 7)
          {
            if (v7 == 6)
            {
              if ((TagFallback & 7) == 0)
              {
                v16 = *(a2 + 1);
                v8 = *(a2 + 2);
                goto LABEL_81;
              }
            }

            else if (v7 == 7 && (TagFallback & 7) == 0)
            {
              v12 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_89;
            }
          }

          else if (v7 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_97;
            }
          }

          else if (v7 == 9)
          {
            if ((TagFallback & 7) == 0)
            {
              v20 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_105;
            }
          }

          else if (v7 == 10 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_113;
          }

          goto LABEL_40;
        }

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_40;
          }

          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_49;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v40 = 0;
        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v13 >= v8 || (v14 = *v13, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
          if (!result)
          {
            return result;
          }

          v14 = v40;
          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v15 = v13 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 8) = v14 != 0;
        *(this + 6) |= 1u;
        if (v15 < v8 && *v15 == 16)
        {
          v11 = v15 + 1;
          *(a2 + 1) = v11;
LABEL_49:
          v40 = 0;
          if (v11 >= v8 || (v21 = *v11, (v21 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
            if (!result)
            {
              return result;
            }

            v21 = v40;
            v22 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v22 = v11 + 1;
            *(a2 + 1) = v22;
          }

          *(this + 9) = v21 != 0;
          *(this + 6) |= 2u;
          if (v22 < v8 && *v22 == 24)
          {
            v17 = v22 + 1;
            *(a2 + 1) = v17;
LABEL_57:
            v40 = 0;
            if (v17 >= v8 || (v23 = *v17, (v23 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
              if (!result)
              {
                return result;
              }

              v23 = v40;
              v24 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v24 = v17 + 1;
              *(a2 + 1) = v24;
            }

            *(this + 10) = v23 != 0;
            *(this + 6) |= 4u;
            if (v24 < v8 && *v24 == 32)
            {
              v19 = v24 + 1;
              *(a2 + 1) = v19;
              goto LABEL_65;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v17 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_57;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_40;
      }

      v19 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_65:
      v40 = 0;
      if (v19 >= v8 || (v25 = *v19, (v25 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
        if (!result)
        {
          return result;
        }

        v25 = v40;
        v26 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v26 = v19 + 1;
        *(a2 + 1) = v26;
      }

      *(this + 11) = v25 != 0;
      *(this + 6) |= 8u;
      if (v26 < v8 && *v26 == 40)
      {
        v9 = v26 + 1;
        *(a2 + 1) = v9;
LABEL_73:
        v40 = 0;
        if (v9 >= v8 || (v27 = *v9, (v27 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
          if (!result)
          {
            return result;
          }

          v27 = v40;
          v28 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v28 = v9 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 12) = v27 != 0;
        *(this + 6) |= 0x10u;
        if (v28 < v8 && *v28 == 48)
        {
          v16 = v28 + 1;
          *(a2 + 1) = v16;
LABEL_81:
          v40 = 0;
          if (v16 >= v8 || (v29 = *v16, (v29 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
            if (!result)
            {
              return result;
            }

            v29 = v40;
            v30 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v30 = v16 + 1;
            *(a2 + 1) = v30;
          }

          *(this + 13) = v29 != 0;
          *(this + 6) |= 0x20u;
          if (v30 < v8 && *v30 == 56)
          {
            v12 = v30 + 1;
            *(a2 + 1) = v12;
LABEL_89:
            v40 = 0;
            if (v12 >= v8 || (v31 = *v12, (v31 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
              if (!result)
              {
                return result;
              }

              v31 = v40;
              v32 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v32 = v12 + 1;
              *(a2 + 1) = v32;
            }

            *(this + 14) = v31 != 0;
            *(this + 6) |= 0x40u;
            if (v32 < v8 && *v32 == 64)
            {
              v18 = v32 + 1;
              *(a2 + 1) = v18;
LABEL_97:
              v40 = 0;
              if (v18 >= v8 || (v33 = *v18, (v33 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
                if (!result)
                {
                  return result;
                }

                v33 = v40;
                v34 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                v34 = v18 + 1;
                *(a2 + 1) = v34;
              }

              *(this + 15) = v33 != 0;
              *(this + 6) |= 0x80u;
              if (v34 < v8 && *v34 == 72)
              {
                v20 = v34 + 1;
                *(a2 + 1) = v20;
LABEL_105:
                v40 = 0;
                if (v20 >= v8 || (v35 = *v20, (v35 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
                  if (!result)
                  {
                    return result;
                  }

                  v35 = v40;
                  v36 = *(a2 + 1);
                  v8 = *(a2 + 2);
                }

                else
                {
                  v36 = v20 + 1;
                  *(a2 + 1) = v36;
                }

                *(this + 16) = v35 != 0;
                *(this + 6) |= 0x100u;
                if (v36 < v8 && *v36 == 80)
                {
                  v10 = v36 + 1;
                  *(a2 + 1) = v10;
LABEL_113:
                  v40 = 0;
                  if (v10 >= v8 || (v37 = *v10, (v37 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
                    if (!result)
                    {
                      return result;
                    }

                    v37 = v40;
                    v38 = *(a2 + 1);
                    v8 = *(a2 + 2);
                  }

                  else
                  {
                    v38 = v10 + 1;
                    *(a2 + 1) = v38;
                  }

                  *(this + 17) = v37 != 0;
                  *(this + 6) |= 0x200u;
                  if (v38 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                  {
                    *(a2 + 8) = 0;
                    result = 1;
                    *(a2 + 36) = 1;
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_73;
    }

LABEL_40:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::SvInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
LABEL_1:
  while (2)
  {
    v5 = *(a2 + 1);
    if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(a2 + 8) = TagFallback;
      *(a2 + 1) = v5 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v7 != 2)
        {
          goto LABEL_56;
        }

        *(this + 43) |= 1u;
        v8 = *(this + 1);
        if (!v8)
        {
          operator new();
        }

        v102[0] = 0;
        v9 = *(a2 + 1);
        if (v9 >= *(a2 + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102))
          {
            return 0;
          }
        }

        else
        {
          v102[0] = *v9;
          *(a2 + 1) = v9 + 1;
        }

        v34 = *(a2 + 14);
        v35 = *(a2 + 15);
        *(a2 + 14) = v34 + 1;
        if (v34 >= v35)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::SvId::MergePartialFromCodedStream(v8, a2, v36) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v37 = *(a2 + 14);
        v38 = __OFSUB__(v37, 1);
        v39 = v37 - 1;
        if (v39 < 0 == v38)
        {
          *(a2 + 14) = v39;
        }

        v40 = *(a2 + 1);
        if (v40 >= *(a2 + 2) || *v40 != 17)
        {
          continue;
        }

        *(a2 + 1) = v40 + 1;
        goto LABEL_69;
      case 2u:
        if (v7 != 1)
        {
          goto LABEL_56;
        }

LABEL_69:
        *v102 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v102) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v102;
        *(this + 43) |= 2u;
        v41 = *(a2 + 1);
        v16 = *(a2 + 2);
        if (v41 >= v16 || *v41 != 24)
        {
          continue;
        }

        v17 = v41 + 1;
        *(a2 + 1) = v17;
LABEL_73:
        v102[0] = 0;
        if (v17 >= v16 || (v42 = *v17, (v42 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102);
          if (!result)
          {
            return result;
          }

          v42 = v102[0];
        }

        else
        {
          *(a2 + 1) = v17 + 1;
        }

        if (v42 <= 6)
        {
          *(this + 43) |= 4u;
          *(this + 14) = v42;
        }

        v44 = *(a2 + 1);
        if (v44 >= *(a2 + 2) || *v44 != 34)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v44 + 1;
LABEL_83:
          v45 = *(this + 9);
          v46 = *(this + 8);
          if (v46 >= v45)
          {
            if (v45 == *(this + 10))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
              v45 = *(this + 9);
            }

            *(this + 9) = v45 + 1;
            operator new();
          }

          v47 = *(this + 3);
          *(this + 8) = v46 + 1;
          v48 = *(v47 + 8 * v46);
          v102[0] = 0;
          v49 = *(a2 + 1);
          if (v49 >= *(a2 + 2) || *v49 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102))
            {
              return 0;
            }
          }

          else
          {
            v102[0] = *v49;
            *(a2 + 1) = v49 + 1;
          }

          v50 = *(a2 + 14);
          v51 = *(a2 + 15);
          *(a2 + 14) = v50 + 1;
          if (v50 >= v51)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime::MergePartialFromCodedStream(v48, a2, v52) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v53 = *(a2 + 14);
          v38 = __OFSUB__(v53, 1);
          v54 = v53 - 1;
          if (v54 < 0 == v38)
          {
            *(a2 + 14) = v54;
          }

          v44 = *(a2 + 1);
          if (v44 >= *(a2 + 2))
          {
            goto LABEL_1;
          }

          v55 = *v44;
        }

        while (v55 == 34);
        if (v55 != 41)
        {
          continue;
        }

        *(a2 + 1) = v44 + 1;
LABEL_101:
        *v102 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v102) & 1) == 0)
        {
          return 0;
        }

        *(this + 6) = *v102;
        *(this + 43) |= 0x10u;
        v56 = *(a2 + 1);
        if (v56 >= *(a2 + 2) || *v56 != 49)
        {
          continue;
        }

        *(a2 + 1) = v56 + 1;
LABEL_105:
        *v102 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v102) & 1) == 0)
        {
          return 0;
        }

        *(this + 8) = *v102;
        *(this + 43) |= 0x20u;
        v57 = *(a2 + 1);
        if (v57 >= *(a2 + 2) || *v57 != 57)
        {
          continue;
        }

        *(a2 + 1) = v57 + 1;
LABEL_109:
        *v102 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v102) & 1) == 0)
        {
          return 0;
        }

        *(this + 9) = *v102;
        *(this + 43) |= 0x40u;
        v58 = *(a2 + 1);
        if (v58 >= *(a2 + 2) || *v58 != 69)
        {
          continue;
        }

        *(a2 + 1) = v58 + 1;
LABEL_113:
        v102[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v102) & 1) == 0)
        {
          return 0;
        }

        *(this + 15) = v102[0];
        *(this + 43) |= 0x80u;
        v59 = *(a2 + 1);
        if (v59 >= *(a2 + 2) || *v59 != 77)
        {
          continue;
        }

        *(a2 + 1) = v59 + 1;
LABEL_117:
        v102[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v102) & 1) == 0)
        {
          return 0;
        }

        *(this + 20) = v102[0];
        *(this + 43) |= 0x100u;
        v60 = *(a2 + 1);
        v26 = *(a2 + 2);
        if (v60 >= v26 || *v60 != 80)
        {
          continue;
        }

        v27 = v60 + 1;
        *(a2 + 1) = v27;
LABEL_121:
        v102[0] = 0;
        if (v27 >= v26 || (v61 = *v27, (v61 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102);
          if (!result)
          {
            return result;
          }

          v61 = v102[0];
        }

        else
        {
          *(a2 + 1) = v27 + 1;
        }

        if (v61 <= 4)
        {
          *(this + 43) |= 0x200u;
          *(this + 21) = v61;
        }

        v62 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v62 >= v14 || *v62 != 88)
        {
          continue;
        }

        v15 = v62 + 1;
        *(a2 + 1) = v15;
LABEL_131:
        v102[0] = 0;
        if (v15 >= v14 || (v63 = *v15, (v63 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102);
          if (!result)
          {
            return result;
          }

          v63 = v102[0];
        }

        else
        {
          *(a2 + 1) = v15 + 1;
        }

        if (v63 <= 4)
        {
          *(this + 43) |= 0x400u;
          *(this + 22) = v63;
        }

        v64 = *(a2 + 1);
        v24 = *(a2 + 2);
        if (v64 >= v24 || *v64 != 96)
        {
          continue;
        }

        v25 = v64 + 1;
        *(a2 + 1) = v25;
LABEL_141:
        v102[0] = 0;
        if (v25 >= v24 || (v65 = *v25, (v65 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102);
          if (!result)
          {
            return result;
          }

          v65 = v102[0];
        }

        else
        {
          *(a2 + 1) = v25 + 1;
        }

        if (v65 <= 4)
        {
          *(this + 43) |= 0x800u;
          *(this + 23) = v65;
        }

        v66 = *(a2 + 1);
        v20 = *(a2 + 2);
        if (v66 >= v20 || *v66 != 104)
        {
          continue;
        }

        v21 = v66 + 1;
        *(a2 + 1) = v21;
LABEL_151:
        v102[0] = 0;
        if (v21 >= v20 || (v67 = *v21, (v67 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102);
          if (!result)
          {
            return result;
          }

          v67 = v102[0];
        }

        else
        {
          *(a2 + 1) = v21 + 1;
        }

        if (v67 <= 4)
        {
          *(this + 43) |= 0x1000u;
          *(this + 24) = v67;
        }

        v68 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v68 >= v12 || *v68 != 112)
        {
          continue;
        }

        v13 = v68 + 1;
        *(a2 + 1) = v13;
LABEL_161:
        v102[0] = 0;
        if (v13 >= v12 || (v69 = *v13, (v69 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102);
          if (!result)
          {
            return result;
          }

          v69 = v102[0];
        }

        else
        {
          *(a2 + 1) = v13 + 1;
        }

        if (v69 <= 4)
        {
          *(this + 43) |= 0x2000u;
          *(this + 25) = v69;
        }

        v70 = *(a2 + 1);
        if (v70 >= *(a2 + 2) || *v70 != 122)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v70 + 1;
LABEL_171:
          v71 = *(this + 29);
          v72 = *(this + 28);
          if (v72 >= v71)
          {
            if (v71 == *(this + 30))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 104));
              v71 = *(this + 29);
            }

            *(this + 29) = v71 + 1;
            operator new();
          }

          v73 = *(this + 13);
          *(this + 28) = v72 + 1;
          v74 = *(v73 + 8 * v72);
          v102[0] = 0;
          v75 = *(a2 + 1);
          if (v75 >= *(a2 + 2) || *v75 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102))
            {
              return 0;
            }
          }

          else
          {
            v102[0] = *v75;
            *(a2 + 1) = v75 + 1;
          }

          v76 = *(a2 + 14);
          v77 = *(a2 + 15);
          *(a2 + 14) = v76 + 1;
          if (v76 >= v77)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections::MergePartialFromCodedStream(v74, a2, v78) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v79 = *(a2 + 14);
          v38 = __OFSUB__(v79, 1);
          v80 = v79 - 1;
          if (v80 < 0 == v38)
          {
            *(a2 + 14) = v80;
          }

          v70 = *(a2 + 1);
          v81 = *(a2 + 2);
        }

        while (v70 < v81 && *v70 == 122);
        if (v81 - v70 < 2 || *v70 != 130 || v70[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v70 + 2;
LABEL_191:
        *(this + 43) |= 0x8000u;
        v82 = *(this + 16);
        if (!v82)
        {
          operator new();
        }

        v102[0] = 0;
        v83 = *(a2 + 1);
        if (v83 >= *(a2 + 2) || *v83 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102))
          {
            return 0;
          }
        }

        else
        {
          v102[0] = *v83;
          *(a2 + 1) = v83 + 1;
        }

        v84 = *(a2 + 14);
        v85 = *(a2 + 15);
        *(a2 + 14) = v84 + 1;
        if (v84 >= v85)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit::MergePartialFromCodedStream(v82, a2, v86) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v87 = *(a2 + 14);
        v38 = __OFSUB__(v87, 1);
        v88 = v87 - 1;
        if (v88 < 0 == v38)
        {
          *(a2 + 14) = v88;
        }

        v89 = *(a2 + 1);
        v30 = *(a2 + 2);
        if (v30 - v89 <= 1 || *v89 != 144 || v89[1] != 1)
        {
          continue;
        }

        v31 = (v89 + 2);
        *(a2 + 1) = v31;
LABEL_206:
        v102[0] = 0;
        if (v31 >= v30 || (v90 = *v31, (v90 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102);
          if (!result)
          {
            return result;
          }

          v90 = v102[0];
        }

        else
        {
          *(a2 + 1) = v31 + 1;
        }

        if (v90 <= 4)
        {
          *(this + 43) |= 0x10000u;
          *(this + 34) = v90;
        }

        v91 = *(a2 + 1);
        v28 = *(a2 + 2);
        if (v28 - v91 < 2 || *v91 != 152 || v91[1] != 1)
        {
          continue;
        }

        v29 = (v91 + 2);
        *(a2 + 1) = v29;
LABEL_217:
        v102[0] = 0;
        if (v29 >= v28 || (v92 = *v29, (v92 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102);
          if (!result)
          {
            return result;
          }

          v92 = v102[0];
        }

        else
        {
          *(a2 + 1) = v29 + 1;
        }

        if (v92 <= 4)
        {
          *(this + 43) |= 0x20000u;
          *(this + 35) = v92;
        }

        v93 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v10 - v93 < 2 || *v93 != 160 || v93[1] != 1)
        {
          continue;
        }

        v11 = (v93 + 2);
        *(a2 + 1) = v11;
LABEL_228:
        v102[0] = 0;
        if (v11 >= v10 || (v94 = *v11, (v94 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102);
          if (!result)
          {
            return result;
          }

          v94 = v102[0];
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v94 <= 4)
        {
          *(this + 43) |= 0x40000u;
          *(this + 36) = v94;
        }

        v95 = *(a2 + 1);
        v22 = *(a2 + 2);
        if (v22 - v95 < 2 || *v95 != 168 || v95[1] != 1)
        {
          continue;
        }

        v23 = (v95 + 2);
        *(a2 + 1) = v23;
LABEL_239:
        v102[0] = 0;
        if (v23 >= v22 || (v96 = *v23, (v96 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102);
          if (!result)
          {
            return result;
          }

          v96 = v102[0];
        }

        else
        {
          *(a2 + 1) = v23 + 1;
        }

        if (v96 <= 4)
        {
          *(this + 43) |= 0x80000u;
          *(this + 37) = v96;
        }

        v97 = *(a2 + 1);
        v32 = *(a2 + 2);
        if (v32 - v97 < 2 || *v97 != 176 || v97[1] != 1)
        {
          continue;
        }

        v33 = (v97 + 2);
        *(a2 + 1) = v33;
LABEL_250:
        v102[0] = 0;
        if (v33 >= v32 || (v98 = *v33, (v98 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102);
          if (!result)
          {
            return result;
          }

          v98 = v102[0];
        }

        else
        {
          *(a2 + 1) = v33 + 1;
        }

        if (v98 <= 4)
        {
          *(this + 43) |= 0x100000u;
          *(this + 40) = v98;
        }

        v99 = *(a2 + 1);
        if (*(a2 + 4) - v99 < 2 || *v99 != 185 || v99[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v99 + 2;
LABEL_261:
        *v102 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v102))
        {
          *(this + 19) = *v102;
          *(this + 43) |= 0x200000u;
          v100 = *(a2 + 1);
          v18 = *(a2 + 2);
          if (v18 - v100 >= 2 && *v100 == 192 && v100[1] == 1)
          {
            v19 = (v100 + 2);
            *(a2 + 1) = v19;
LABEL_266:
            v102[0] = 0;
            if (v19 >= v18 || (v101 = *v19, (v101 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v102);
              if (!result)
              {
                return result;
              }

              v101 = v102[0];
            }

            else
            {
              *(a2 + 1) = v19 + 1;
            }

            if (v101 <= 3)
            {
              *(this + 43) |= 0x400000u;
              *(this + 41) = v101;
            }

            if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }

          continue;
        }

        return 0;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_73;
      case 4u:
        if (v7 == 2)
        {
          goto LABEL_83;
        }

        goto LABEL_56;
      case 5u:
        if (v7 == 1)
        {
          goto LABEL_101;
        }

        goto LABEL_56;
      case 6u:
        if (v7 == 1)
        {
          goto LABEL_105;
        }

        goto LABEL_56;
      case 7u:
        if (v7 == 1)
        {
          goto LABEL_109;
        }

        goto LABEL_56;
      case 8u:
        if (v7 == 5)
        {
          goto LABEL_113;
        }

        goto LABEL_56;
      case 9u:
        if (v7 == 5)
        {
          goto LABEL_117;
        }

        goto LABEL_56;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v27 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_121;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_131;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v25 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_141;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v21 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_151;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_161;
      case 0xFu:
        if (v7 == 2)
        {
          goto LABEL_171;
        }

        goto LABEL_56;
      case 0x10u:
        if (v7 == 2)
        {
          goto LABEL_191;
        }

        goto LABEL_56;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v31 = *(a2 + 1);
        v30 = *(a2 + 2);
        goto LABEL_206;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v29 = *(a2 + 1);
        v28 = *(a2 + 2);
        goto LABEL_217;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_228;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_239;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v33 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_250;
      case 0x17u:
        if (v7 == 1)
        {
          goto LABEL_261;
        }

        goto LABEL_56;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v19 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_266;
      default:
LABEL_56:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback & 7;
        if (TagFallback >> 3 == 2)
        {
          break;
        }

        if (TagFallback >> 3 != 1 || v7 != 1)
        {
          goto LABEL_14;
        }

        v19 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v19) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = v19;
        v8 = *(this + 7) | 1;
        *(this + 7) = v8;
        v9 = *(a2 + 1);
        if (v9 < *(a2 + 2) && *v9 == 18)
        {
          *(a2 + 1) = v9 + 1;
          goto LABEL_18;
        }
      }

      if (v7 == 2)
      {
        break;
      }

LABEL_14:
      if (v7 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    v8 = *(this + 7);
LABEL_18:
    *(this + 7) = v8 | 2;
    v10 = *(this + 2);
    if (!v10)
    {
      operator new();
    }

    v20 = 0;
    v11 = *(a2 + 1);
    if (v11 >= *(a2 + 2) || *v11 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v20))
      {
        return 0;
      }
    }

    else
    {
      v20 = *v11;
      *(a2 + 1) = v11 + 1;
    }

    v12 = *(a2 + 14);
    v13 = *(a2 + 15);
    *(a2 + 14) = v12 + 1;
    if (v12 >= v13)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef::MergePartialFromCodedStream(v10, a2, v14) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v15 = *(a2 + 14);
    v16 = __OFSUB__(v15, 1);
    v17 = v15 - 1;
    if (v17 < 0 == v16)
    {
      *(a2 + 14) = v17;
    }

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v8 != 1)
        {
          goto LABEL_20;
        }

LABEL_23:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v12;
        *(this + 9) |= 4u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 1)
      {
        goto LABEL_20;
      }

      v12 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v12;
      *(this + 9) |= 1u;
      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 17)
      {
        *(a2 + 1) = v9 + 1;
LABEL_15:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v12;
        *(this + 9) |= 2u;
        v10 = *(a2 + 1);
        if (v10 < *(a2 + 2) && *v10 == 25)
        {
          *(a2 + 1) = v10 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v8 == 1)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}